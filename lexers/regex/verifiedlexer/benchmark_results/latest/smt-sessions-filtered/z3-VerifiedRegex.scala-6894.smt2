; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!363204 () Bool)

(assert start!363204)

(declare-fun b!3870502 () Bool)

(declare-fun b_free!104485 () Bool)

(declare-fun b_next!105189 () Bool)

(assert (=> b!3870502 (= b_free!104485 (not b_next!105189))))

(declare-fun tp!1173542 () Bool)

(declare-fun b_and!290091 () Bool)

(assert (=> b!3870502 (= tp!1173542 b_and!290091)))

(declare-fun b_free!104487 () Bool)

(declare-fun b_next!105191 () Bool)

(assert (=> b!3870502 (= b_free!104487 (not b_next!105191))))

(declare-fun tp!1173549 () Bool)

(declare-fun b_and!290093 () Bool)

(assert (=> b!3870502 (= tp!1173549 b_and!290093)))

(declare-fun b!3870490 () Bool)

(declare-fun b_free!104489 () Bool)

(declare-fun b_next!105193 () Bool)

(assert (=> b!3870490 (= b_free!104489 (not b_next!105193))))

(declare-fun tp!1173546 () Bool)

(declare-fun b_and!290095 () Bool)

(assert (=> b!3870490 (= tp!1173546 b_and!290095)))

(declare-fun b_free!104491 () Bool)

(declare-fun b_next!105195 () Bool)

(assert (=> b!3870490 (= b_free!104491 (not b_next!105195))))

(declare-fun tp!1173557 () Bool)

(declare-fun b_and!290097 () Bool)

(assert (=> b!3870490 (= tp!1173557 b_and!290097)))

(declare-fun b!3870512 () Bool)

(declare-fun b_free!104493 () Bool)

(declare-fun b_next!105197 () Bool)

(assert (=> b!3870512 (= b_free!104493 (not b_next!105197))))

(declare-fun tp!1173544 () Bool)

(declare-fun b_and!290099 () Bool)

(assert (=> b!3870512 (= tp!1173544 b_and!290099)))

(declare-fun b_free!104495 () Bool)

(declare-fun b_next!105199 () Bool)

(assert (=> b!3870512 (= b_free!104495 (not b_next!105199))))

(declare-fun tp!1173558 () Bool)

(declare-fun b_and!290101 () Bool)

(assert (=> b!3870512 (= tp!1173558 b_and!290101)))

(declare-fun b!3870479 () Bool)

(declare-fun res!1567694 () Bool)

(declare-fun e!2393951 () Bool)

(assert (=> b!3870479 (=> (not res!1567694) (not e!2393951))))

(declare-datatypes ((C!22748 0))(
  ( (C!22749 (val!13468 Int)) )
))
(declare-datatypes ((List!41236 0))(
  ( (Nil!41112) (Cons!41112 (h!46532 C!22748) (t!314399 List!41236)) )
))
(declare-fun prefix!426 () List!41236)

(declare-fun isEmpty!24388 (List!41236) Bool)

(assert (=> b!3870479 (= res!1567694 (not (isEmpty!24388 prefix!426)))))

(declare-fun b!3870480 () Bool)

(declare-fun tp!1173553 () Bool)

(declare-datatypes ((List!41237 0))(
  ( (Nil!41113) (Cons!41113 (h!46533 (_ BitVec 16)) (t!314400 List!41237)) )
))
(declare-datatypes ((TokenValue!6606 0))(
  ( (FloatLiteralValue!13212 (text!46687 List!41237)) (TokenValueExt!6605 (__x!25429 Int)) (Broken!33030 (value!202324 List!41237)) (Object!6729) (End!6606) (Def!6606) (Underscore!6606) (Match!6606) (Else!6606) (Error!6606) (Case!6606) (If!6606) (Extends!6606) (Abstract!6606) (Class!6606) (Val!6606) (DelimiterValue!13212 (del!6666 List!41237)) (KeywordValue!6612 (value!202325 List!41237)) (CommentValue!13212 (value!202326 List!41237)) (WhitespaceValue!13212 (value!202327 List!41237)) (IndentationValue!6606 (value!202328 List!41237)) (String!46747) (Int32!6606) (Broken!33031 (value!202329 List!41237)) (Boolean!6607) (Unit!58932) (OperatorValue!6609 (op!6666 List!41237)) (IdentifierValue!13212 (value!202330 List!41237)) (IdentifierValue!13213 (value!202331 List!41237)) (WhitespaceValue!13213 (value!202332 List!41237)) (True!13212) (False!13212) (Broken!33032 (value!202333 List!41237)) (Broken!33033 (value!202334 List!41237)) (True!13213) (RightBrace!6606) (RightBracket!6606) (Colon!6606) (Null!6606) (Comma!6606) (LeftBracket!6606) (False!13213) (LeftBrace!6606) (ImaginaryLiteralValue!6606 (text!46688 List!41237)) (StringLiteralValue!19818 (value!202335 List!41237)) (EOFValue!6606 (value!202336 List!41237)) (IdentValue!6606 (value!202337 List!41237)) (DelimiterValue!13213 (value!202338 List!41237)) (DedentValue!6606 (value!202339 List!41237)) (NewLineValue!6606 (value!202340 List!41237)) (IntegerValue!19818 (value!202341 (_ BitVec 32)) (text!46689 List!41237)) (IntegerValue!19819 (value!202342 Int) (text!46690 List!41237)) (Times!6606) (Or!6606) (Equal!6606) (Minus!6606) (Broken!33034 (value!202343 List!41237)) (And!6606) (Div!6606) (LessEqual!6606) (Mod!6606) (Concat!17887) (Not!6606) (Plus!6606) (SpaceValue!6606 (value!202344 List!41237)) (IntegerValue!19820 (value!202345 Int) (text!46691 List!41237)) (StringLiteralValue!19819 (text!46692 List!41237)) (FloatLiteralValue!13213 (text!46693 List!41237)) (BytesLiteralValue!6606 (value!202346 List!41237)) (CommentValue!13213 (value!202347 List!41237)) (StringLiteralValue!19820 (value!202348 List!41237)) (ErrorTokenValue!6606 (msg!6667 List!41237)) )
))
(declare-datatypes ((Regex!11281 0))(
  ( (ElementMatch!11281 (c!673542 C!22748)) (Concat!17888 (regOne!23074 Regex!11281) (regTwo!23074 Regex!11281)) (EmptyExpr!11281) (Star!11281 (reg!11610 Regex!11281)) (EmptyLang!11281) (Union!11281 (regOne!23075 Regex!11281) (regTwo!23075 Regex!11281)) )
))
(declare-datatypes ((String!46748 0))(
  ( (String!46749 (value!202349 String)) )
))
(declare-datatypes ((IArray!25179 0))(
  ( (IArray!25180 (innerList!12647 List!41236)) )
))
(declare-datatypes ((Conc!12587 0))(
  ( (Node!12587 (left!31593 Conc!12587) (right!31923 Conc!12587) (csize!25404 Int) (cheight!12798 Int)) (Leaf!19482 (xs!15893 IArray!25179) (csize!25405 Int)) (Empty!12587) )
))
(declare-datatypes ((BalanceConc!24768 0))(
  ( (BalanceConc!24769 (c!673543 Conc!12587)) )
))
(declare-datatypes ((TokenValueInjection!12640 0))(
  ( (TokenValueInjection!12641 (toValue!8804 Int) (toChars!8663 Int)) )
))
(declare-datatypes ((Rule!12552 0))(
  ( (Rule!12553 (regex!6376 Regex!11281) (tag!7236 String!46748) (isSeparator!6376 Bool) (transformation!6376 TokenValueInjection!12640)) )
))
(declare-datatypes ((Token!11890 0))(
  ( (Token!11891 (value!202350 TokenValue!6606) (rule!9262 Rule!12552) (size!30901 Int) (originalCharacters!6976 List!41236)) )
))
(declare-datatypes ((List!41238 0))(
  ( (Nil!41114) (Cons!41114 (h!46534 Token!11890) (t!314401 List!41238)) )
))
(declare-fun suffixTokens!72 () List!41238)

(declare-fun e!2393915 () Bool)

(declare-fun e!2393952 () Bool)

(declare-fun inv!55272 (Token!11890) Bool)

(assert (=> b!3870480 (= e!2393915 (and (inv!55272 (h!46534 suffixTokens!72)) e!2393952 tp!1173553))))

(declare-datatypes ((tuple2!40334 0))(
  ( (tuple2!40335 (_1!23301 Token!11890) (_2!23301 List!41236)) )
))
(declare-fun lt!1347185 () tuple2!40334)

(declare-datatypes ((List!41239 0))(
  ( (Nil!41115) (Cons!41115 (h!46535 Rule!12552) (t!314402 List!41239)) )
))
(declare-fun rules!2768 () List!41239)

(declare-fun bm!282715 () Bool)

(declare-datatypes ((tuple2!40336 0))(
  ( (tuple2!40337 (_1!23302 List!41238) (_2!23302 List!41236)) )
))
(declare-fun call!282720 () tuple2!40336)

(declare-datatypes ((LexerInterface!5965 0))(
  ( (LexerInterfaceExt!5962 (__x!25430 Int)) (Lexer!5963) )
))
(declare-fun thiss!20629 () LexerInterface!5965)

(declare-fun lexList!1733 (LexerInterface!5965 List!41239 List!41236) tuple2!40336)

(assert (=> bm!282715 (= call!282720 (lexList!1733 thiss!20629 rules!2768 (_2!23301 lt!1347185)))))

(declare-fun b!3870481 () Bool)

(declare-fun e!2393947 () Bool)

(declare-fun e!2393941 () Bool)

(assert (=> b!3870481 (= e!2393947 e!2393941)))

(declare-fun res!1567697 () Bool)

(assert (=> b!3870481 (=> res!1567697 e!2393941)))

(declare-fun lt!1347223 () tuple2!40336)

(declare-fun lt!1347220 () List!41238)

(declare-fun lt!1347202 () tuple2!40336)

(declare-fun ++!10509 (List!41238 List!41238) List!41238)

(assert (=> b!3870481 (= res!1567697 (not (= lt!1347223 (tuple2!40337 (++!10509 lt!1347220 (_1!23302 lt!1347202)) (_2!23302 lt!1347202)))))))

(declare-datatypes ((Option!8794 0))(
  ( (None!8793) (Some!8793 (v!39091 tuple2!40334)) )
))
(declare-fun lt!1347208 () Option!8794)

(assert (=> b!3870481 (= lt!1347220 (Cons!41114 (_1!23301 (v!39091 lt!1347208)) Nil!41114))))

(declare-fun b!3870482 () Bool)

(declare-fun res!1567705 () Bool)

(assert (=> b!3870482 (=> (not res!1567705) (not e!2393951))))

(declare-fun rulesInvariant!5308 (LexerInterface!5965 List!41239) Bool)

(assert (=> b!3870482 (= res!1567705 (rulesInvariant!5308 thiss!20629 rules!2768))))

(declare-fun b!3870483 () Bool)

(declare-fun e!2393935 () Bool)

(declare-fun e!2393948 () Bool)

(assert (=> b!3870483 (= e!2393935 e!2393948)))

(declare-fun res!1567695 () Bool)

(assert (=> b!3870483 (=> res!1567695 e!2393948)))

(declare-fun lt!1347205 () List!41236)

(declare-fun lt!1347203 () List!41236)

(declare-fun lt!1347186 () List!41236)

(declare-fun lt!1347189 () List!41236)

(assert (=> b!3870483 (= res!1567695 (or (not (= lt!1347203 lt!1347186)) (not (= lt!1347203 lt!1347205)) (not (= lt!1347189 lt!1347205))))))

(assert (=> b!3870483 (= lt!1347186 lt!1347205)))

(declare-fun lt!1347207 () List!41236)

(declare-fun lt!1347218 () List!41236)

(declare-fun ++!10510 (List!41236 List!41236) List!41236)

(assert (=> b!3870483 (= lt!1347205 (++!10510 lt!1347207 lt!1347218))))

(declare-fun lt!1347209 () List!41236)

(declare-fun suffix!1176 () List!41236)

(assert (=> b!3870483 (= lt!1347218 (++!10510 lt!1347209 suffix!1176))))

(declare-datatypes ((Unit!58933 0))(
  ( (Unit!58934) )
))
(declare-fun lt!1347198 () Unit!58933)

(declare-fun lemmaConcatAssociativity!2223 (List!41236 List!41236 List!41236) Unit!58933)

(assert (=> b!3870483 (= lt!1347198 (lemmaConcatAssociativity!2223 lt!1347207 lt!1347209 suffix!1176))))

(declare-fun tp!1173554 () Bool)

(declare-fun b!3870484 () Bool)

(declare-fun e!2393921 () Bool)

(declare-fun inv!21 (TokenValue!6606) Bool)

(assert (=> b!3870484 (= e!2393952 (and (inv!21 (value!202350 (h!46534 suffixTokens!72))) e!2393921 tp!1173554))))

(declare-fun e!2393932 () Bool)

(declare-fun tp!1173556 () Bool)

(declare-fun b!3870485 () Bool)

(declare-fun e!2393922 () Bool)

(declare-fun inv!55269 (String!46748) Bool)

(declare-fun inv!55273 (TokenValueInjection!12640) Bool)

(assert (=> b!3870485 (= e!2393932 (and tp!1173556 (inv!55269 (tag!7236 (h!46535 rules!2768))) (inv!55273 (transformation!6376 (h!46535 rules!2768))) e!2393922))))

(declare-fun b!3870486 () Bool)

(declare-fun e!2393930 () Unit!58933)

(declare-fun Unit!58935 () Unit!58933)

(assert (=> b!3870486 (= e!2393930 Unit!58935)))

(declare-fun b!3870487 () Bool)

(declare-fun e!2393933 () Bool)

(assert (=> b!3870487 (= e!2393933 false)))

(declare-fun e!2393936 () Bool)

(declare-fun b!3870488 () Bool)

(declare-fun prefixTokens!80 () List!41238)

(declare-fun e!2393920 () Bool)

(declare-fun tp!1173547 () Bool)

(assert (=> b!3870488 (= e!2393936 (and (inv!21 (value!202350 (h!46534 prefixTokens!80))) e!2393920 tp!1173547))))

(declare-fun b!3870489 () Bool)

(declare-fun e!2393939 () Bool)

(assert (=> b!3870489 (= e!2393939 e!2393935)))

(declare-fun res!1567702 () Bool)

(assert (=> b!3870489 (=> res!1567702 e!2393935)))

(assert (=> b!3870489 (= res!1567702 (or (not (= lt!1347186 lt!1347203)) (not (= lt!1347186 lt!1347189))))))

(declare-fun lt!1347225 () List!41236)

(assert (=> b!3870489 (= lt!1347186 (++!10510 lt!1347225 suffix!1176))))

(declare-fun e!2393945 () Bool)

(assert (=> b!3870490 (= e!2393945 (and tp!1173546 tp!1173557))))

(declare-fun b!3870491 () Bool)

(declare-fun e!2393931 () Bool)

(assert (=> b!3870491 (= e!2393931 (not (= prefixTokens!80 Nil!41114)))))

(declare-fun lt!1347222 () List!41238)

(declare-fun lt!1347188 () List!41238)

(assert (=> b!3870491 (= (++!10509 (++!10509 lt!1347220 lt!1347222) suffixTokens!72) (++!10509 lt!1347220 lt!1347188))))

(declare-fun lt!1347210 () Unit!58933)

(declare-fun lemmaConcatAssociativity!2224 (List!41238 List!41238 List!41238) Unit!58933)

(assert (=> b!3870491 (= lt!1347210 (lemmaConcatAssociativity!2224 lt!1347220 lt!1347222 suffixTokens!72))))

(declare-fun lt!1347194 () Unit!58933)

(declare-fun e!2393917 () Unit!58933)

(assert (=> b!3870491 (= lt!1347194 e!2393917)))

(declare-fun c!673539 () Bool)

(declare-fun isEmpty!24389 (List!41238) Bool)

(assert (=> b!3870491 (= c!673539 (isEmpty!24389 lt!1347222))))

(declare-fun b!3870492 () Bool)

(declare-fun Unit!58936 () Unit!58933)

(assert (=> b!3870492 (= e!2393917 Unit!58936)))

(declare-fun b!3870493 () Bool)

(declare-fun e!2393944 () Unit!58933)

(declare-fun Unit!58937 () Unit!58933)

(assert (=> b!3870493 (= e!2393944 Unit!58937)))

(declare-fun b!3870494 () Bool)

(declare-fun res!1567703 () Bool)

(assert (=> b!3870494 (=> (not res!1567703) (not e!2393951))))

(declare-fun isEmpty!24390 (List!41239) Bool)

(assert (=> b!3870494 (= res!1567703 (not (isEmpty!24390 rules!2768)))))

(declare-fun b!3870495 () Bool)

(declare-fun e!2393928 () Bool)

(declare-fun tp_is_empty!19533 () Bool)

(declare-fun tp!1173548 () Bool)

(assert (=> b!3870495 (= e!2393928 (and tp_is_empty!19533 tp!1173548))))

(declare-fun tp!1173555 () Bool)

(declare-fun e!2393937 () Bool)

(declare-fun b!3870496 () Bool)

(assert (=> b!3870496 (= e!2393937 (and (inv!55272 (h!46534 prefixTokens!80)) e!2393936 tp!1173555))))

(declare-fun b!3870497 () Bool)

(declare-fun e!2393934 () Bool)

(declare-fun tp!1173543 () Bool)

(assert (=> b!3870497 (= e!2393934 (and tp_is_empty!19533 tp!1173543))))

(declare-fun b!3870498 () Bool)

(declare-fun e!2393916 () Bool)

(declare-fun e!2393938 () Bool)

(assert (=> b!3870498 (= e!2393916 e!2393938)))

(declare-fun res!1567693 () Bool)

(assert (=> b!3870498 (=> (not res!1567693) (not e!2393938))))

(get-info :version)

(assert (=> b!3870498 (= res!1567693 ((_ is Some!8793) lt!1347208))))

(declare-fun maxPrefix!3269 (LexerInterface!5965 List!41239 List!41236) Option!8794)

(assert (=> b!3870498 (= lt!1347208 (maxPrefix!3269 thiss!20629 rules!2768 lt!1347203))))

(declare-fun tp!1173551 () Bool)

(declare-fun e!2393927 () Bool)

(declare-fun b!3870499 () Bool)

(assert (=> b!3870499 (= e!2393920 (and tp!1173551 (inv!55269 (tag!7236 (rule!9262 (h!46534 prefixTokens!80)))) (inv!55273 (transformation!6376 (rule!9262 (h!46534 prefixTokens!80)))) e!2393927))))

(declare-fun b!3870500 () Bool)

(declare-fun e!2393943 () Unit!58933)

(declare-fun Unit!58938 () Unit!58933)

(assert (=> b!3870500 (= e!2393943 Unit!58938)))

(declare-fun suffixResult!91 () List!41236)

(declare-fun lt!1347204 () Unit!58933)

(declare-fun lt!1347201 () List!41238)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!36 (LexerInterface!5965 List!41239 List!41236 List!41236 List!41238 List!41236 List!41238) Unit!58933)

(assert (=> b!3870500 (= lt!1347204 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!36 thiss!20629 rules!2768 suffix!1176 (_2!23301 lt!1347185) suffixTokens!72 suffixResult!91 lt!1347201))))

(declare-fun res!1567696 () Bool)

(assert (=> b!3870500 (= res!1567696 (not (= call!282720 (tuple2!40337 (++!10509 lt!1347201 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3870500 (=> (not res!1567696) (not e!2393933))))

(assert (=> b!3870500 e!2393933))

(declare-fun b!3870501 () Bool)

(declare-fun e!2393950 () Bool)

(assert (=> b!3870501 (= e!2393950 false)))

(assert (=> b!3870502 (= e!2393927 (and tp!1173542 tp!1173549))))

(declare-fun b!3870503 () Bool)

(declare-fun c!673537 () Bool)

(assert (=> b!3870503 (= c!673537 (isEmpty!24389 lt!1347201))))

(declare-fun tail!5909 (List!41238) List!41238)

(assert (=> b!3870503 (= lt!1347201 (tail!5909 prefixTokens!80))))

(assert (=> b!3870503 (= e!2393930 e!2393943)))

(declare-fun b!3870504 () Bool)

(assert (=> b!3870504 (= e!2393938 (not e!2393947))))

(declare-fun res!1567698 () Bool)

(assert (=> b!3870504 (=> res!1567698 e!2393947)))

(assert (=> b!3870504 (= res!1567698 (not (= lt!1347189 lt!1347203)))))

(assert (=> b!3870504 (= lt!1347202 (lexList!1733 thiss!20629 rules!2768 (_2!23301 (v!39091 lt!1347208))))))

(declare-fun lt!1347200 () Int)

(declare-fun lt!1347191 () TokenValue!6606)

(declare-fun lt!1347197 () List!41236)

(assert (=> b!3870504 (and (= (size!30901 (_1!23301 (v!39091 lt!1347208))) lt!1347200) (= (originalCharacters!6976 (_1!23301 (v!39091 lt!1347208))) lt!1347207) (= (v!39091 lt!1347208) (tuple2!40335 (Token!11891 lt!1347191 (rule!9262 (_1!23301 (v!39091 lt!1347208))) lt!1347200 lt!1347207) lt!1347197)))))

(declare-fun size!30902 (List!41236) Int)

(assert (=> b!3870504 (= lt!1347200 (size!30902 lt!1347207))))

(declare-fun e!2393940 () Bool)

(assert (=> b!3870504 e!2393940))

(declare-fun res!1567687 () Bool)

(assert (=> b!3870504 (=> (not res!1567687) (not e!2393940))))

(assert (=> b!3870504 (= res!1567687 (= (value!202350 (_1!23301 (v!39091 lt!1347208))) lt!1347191))))

(declare-fun apply!9619 (TokenValueInjection!12640 BalanceConc!24768) TokenValue!6606)

(declare-fun seqFromList!4647 (List!41236) BalanceConc!24768)

(assert (=> b!3870504 (= lt!1347191 (apply!9619 (transformation!6376 (rule!9262 (_1!23301 (v!39091 lt!1347208)))) (seqFromList!4647 lt!1347207)))))

(assert (=> b!3870504 (= (_2!23301 (v!39091 lt!1347208)) lt!1347197)))

(declare-fun lt!1347206 () Unit!58933)

(declare-fun lemmaSamePrefixThenSameSuffix!1696 (List!41236 List!41236 List!41236 List!41236 List!41236) Unit!58933)

(assert (=> b!3870504 (= lt!1347206 (lemmaSamePrefixThenSameSuffix!1696 lt!1347207 (_2!23301 (v!39091 lt!1347208)) lt!1347207 lt!1347197 lt!1347203))))

(declare-fun getSuffix!1930 (List!41236 List!41236) List!41236)

(assert (=> b!3870504 (= lt!1347197 (getSuffix!1930 lt!1347203 lt!1347207))))

(declare-fun isPrefix!3475 (List!41236 List!41236) Bool)

(assert (=> b!3870504 (isPrefix!3475 lt!1347207 lt!1347189)))

(assert (=> b!3870504 (= lt!1347189 (++!10510 lt!1347207 (_2!23301 (v!39091 lt!1347208))))))

(declare-fun lt!1347214 () Unit!58933)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2338 (List!41236 List!41236) Unit!58933)

(assert (=> b!3870504 (= lt!1347214 (lemmaConcatTwoListThenFirstIsPrefix!2338 lt!1347207 (_2!23301 (v!39091 lt!1347208))))))

(declare-fun list!15294 (BalanceConc!24768) List!41236)

(declare-fun charsOf!4204 (Token!11890) BalanceConc!24768)

(assert (=> b!3870504 (= lt!1347207 (list!15294 (charsOf!4204 (_1!23301 (v!39091 lt!1347208)))))))

(declare-fun ruleValid!2328 (LexerInterface!5965 Rule!12552) Bool)

(assert (=> b!3870504 (ruleValid!2328 thiss!20629 (rule!9262 (_1!23301 (v!39091 lt!1347208))))))

(declare-fun lt!1347212 () Unit!58933)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1408 (LexerInterface!5965 Rule!12552 List!41239) Unit!58933)

(assert (=> b!3870504 (= lt!1347212 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1408 thiss!20629 (rule!9262 (_1!23301 (v!39091 lt!1347208))) rules!2768))))

(declare-fun lt!1347190 () Unit!58933)

(declare-fun lemmaCharactersSize!1037 (Token!11890) Unit!58933)

(assert (=> b!3870504 (= lt!1347190 (lemmaCharactersSize!1037 (_1!23301 (v!39091 lt!1347208))))))

(declare-fun b!3870505 () Bool)

(declare-fun e!2393926 () Bool)

(assert (=> b!3870505 (= e!2393941 e!2393926)))

(declare-fun res!1567704 () Bool)

(assert (=> b!3870505 (=> res!1567704 e!2393926)))

(declare-fun lt!1347199 () Int)

(declare-fun lt!1347217 () Int)

(assert (=> b!3870505 (= res!1567704 (<= lt!1347199 lt!1347217))))

(declare-fun lt!1347184 () Unit!58933)

(assert (=> b!3870505 (= lt!1347184 e!2393944)))

(declare-fun c!673541 () Bool)

(assert (=> b!3870505 (= c!673541 (= lt!1347199 lt!1347217))))

(declare-fun lt!1347229 () Unit!58933)

(declare-fun e!2393918 () Unit!58933)

(assert (=> b!3870505 (= lt!1347229 e!2393918)))

(declare-fun c!673540 () Bool)

(assert (=> b!3870505 (= c!673540 (< lt!1347199 lt!1347217))))

(assert (=> b!3870505 (= lt!1347217 (size!30902 suffix!1176))))

(assert (=> b!3870505 (= lt!1347199 (size!30902 (_2!23301 (v!39091 lt!1347208))))))

(declare-fun b!3870506 () Bool)

(declare-fun e!2393919 () Bool)

(assert (=> b!3870506 (= e!2393926 e!2393919)))

(declare-fun res!1567701 () Bool)

(assert (=> b!3870506 (=> res!1567701 e!2393919)))

(assert (=> b!3870506 (= res!1567701 (>= lt!1347200 (size!30902 prefix!426)))))

(assert (=> b!3870506 (isPrefix!3475 lt!1347207 prefix!426)))

(declare-fun lt!1347211 () Unit!58933)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!225 (List!41236 List!41236 List!41236) Unit!58933)

(assert (=> b!3870506 (= lt!1347211 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!225 prefix!426 lt!1347207 lt!1347203))))

(assert (=> b!3870506 (isPrefix!3475 prefix!426 lt!1347203)))

(declare-fun lt!1347183 () Unit!58933)

(assert (=> b!3870506 (= lt!1347183 (lemmaConcatTwoListThenFirstIsPrefix!2338 prefix!426 suffix!1176))))

(declare-fun b!3870507 () Bool)

(assert (=> b!3870507 (= e!2393919 e!2393939)))

(declare-fun res!1567707 () Bool)

(assert (=> b!3870507 (=> res!1567707 e!2393939)))

(assert (=> b!3870507 (= res!1567707 (not (= lt!1347225 prefix!426)))))

(assert (=> b!3870507 (= lt!1347225 (++!10510 lt!1347207 lt!1347209))))

(assert (=> b!3870507 (= lt!1347209 (getSuffix!1930 prefix!426 lt!1347207))))

(declare-fun b!3870508 () Bool)

(declare-fun e!2393923 () Bool)

(assert (=> b!3870508 (= e!2393948 e!2393923)))

(declare-fun res!1567708 () Bool)

(assert (=> b!3870508 (=> res!1567708 e!2393923)))

(assert (=> b!3870508 (= res!1567708 (not (= lt!1347218 (_2!23301 (v!39091 lt!1347208)))))))

(assert (=> b!3870508 (= (_2!23301 (v!39091 lt!1347208)) lt!1347218)))

(declare-fun lt!1347195 () Unit!58933)

(assert (=> b!3870508 (= lt!1347195 (lemmaSamePrefixThenSameSuffix!1696 lt!1347207 (_2!23301 (v!39091 lt!1347208)) lt!1347207 lt!1347218 lt!1347203))))

(assert (=> b!3870508 (isPrefix!3475 lt!1347207 lt!1347205)))

(declare-fun lt!1347221 () Unit!58933)

(assert (=> b!3870508 (= lt!1347221 (lemmaConcatTwoListThenFirstIsPrefix!2338 lt!1347207 lt!1347218))))

(declare-fun b!3870509 () Bool)

(declare-fun e!2393942 () Bool)

(declare-fun tp!1173545 () Bool)

(assert (=> b!3870509 (= e!2393942 (and tp_is_empty!19533 tp!1173545))))

(declare-fun b!3870510 () Bool)

(assert (=> b!3870510 (= e!2393940 (= (size!30901 (_1!23301 (v!39091 lt!1347208))) (size!30902 (originalCharacters!6976 (_1!23301 (v!39091 lt!1347208))))))))

(declare-fun b!3870511 () Bool)

(declare-fun res!1567699 () Bool)

(assert (=> b!3870511 (=> (not res!1567699) (not e!2393951))))

(assert (=> b!3870511 (= res!1567699 (not (isEmpty!24389 prefixTokens!80)))))

(assert (=> b!3870512 (= e!2393922 (and tp!1173544 tp!1173558))))

(declare-fun b!3870513 () Bool)

(declare-fun Unit!58939 () Unit!58933)

(assert (=> b!3870513 (= e!2393918 Unit!58939)))

(declare-fun b!3870514 () Bool)

(declare-fun e!2393924 () Bool)

(declare-fun tp!1173552 () Bool)

(assert (=> b!3870514 (= e!2393924 (and e!2393932 tp!1173552))))

(declare-fun res!1567706 () Bool)

(assert (=> start!363204 (=> (not res!1567706) (not e!2393951))))

(assert (=> start!363204 (= res!1567706 ((_ is Lexer!5963) thiss!20629))))

(assert (=> start!363204 e!2393951))

(assert (=> start!363204 e!2393942))

(assert (=> start!363204 true))

(assert (=> start!363204 e!2393928))

(assert (=> start!363204 e!2393924))

(assert (=> start!363204 e!2393937))

(assert (=> start!363204 e!2393915))

(assert (=> start!363204 e!2393934))

(declare-fun b!3870515 () Bool)

(declare-fun Unit!58940 () Unit!58933)

(assert (=> b!3870515 (= e!2393943 Unit!58940)))

(declare-fun lt!1347224 () Unit!58933)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!460 (List!41236 List!41236 List!41236 List!41236) Unit!58933)

(assert (=> b!3870515 (= lt!1347224 (lemmaConcatSameAndSameSizesThenSameLists!460 lt!1347207 (_2!23301 (v!39091 lt!1347208)) lt!1347207 (_2!23301 lt!1347185)))))

(assert (=> b!3870515 (= (_2!23301 (v!39091 lt!1347208)) (_2!23301 lt!1347185))))

(declare-fun lt!1347192 () Unit!58933)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!36 (LexerInterface!5965 List!41239 List!41236 List!41236 List!41238 List!41236) Unit!58933)

(assert (=> b!3870515 (= lt!1347192 (lemmaLexWithSmallerInputCannotProduceSameResults!36 thiss!20629 rules!2768 suffix!1176 (_2!23301 lt!1347185) suffixTokens!72 suffixResult!91))))

(declare-fun res!1567690 () Bool)

(declare-fun lt!1347187 () tuple2!40336)

(assert (=> b!3870515 (= res!1567690 (not (= call!282720 lt!1347187)))))

(assert (=> b!3870515 (=> (not res!1567690) (not e!2393950))))

(assert (=> b!3870515 e!2393950))

(declare-fun tp!1173550 () Bool)

(declare-fun b!3870516 () Bool)

(assert (=> b!3870516 (= e!2393921 (and tp!1173550 (inv!55269 (tag!7236 (rule!9262 (h!46534 suffixTokens!72)))) (inv!55273 (transformation!6376 (rule!9262 (h!46534 suffixTokens!72)))) e!2393945))))

(declare-fun b!3870517 () Bool)

(declare-fun res!1567688 () Bool)

(assert (=> b!3870517 (=> res!1567688 e!2393941)))

(assert (=> b!3870517 (= res!1567688 (or (not (= lt!1347202 (tuple2!40337 (_1!23302 lt!1347202) (_2!23302 lt!1347202)))) (= (_2!23301 (v!39091 lt!1347208)) suffix!1176)))))

(declare-fun b!3870518 () Bool)

(assert (=> b!3870518 (= e!2393923 e!2393931)))

(declare-fun res!1567691 () Bool)

(assert (=> b!3870518 (=> res!1567691 e!2393931)))

(assert (=> b!3870518 (= res!1567691 (not (= lt!1347202 (tuple2!40337 lt!1347188 suffixResult!91))))))

(assert (=> b!3870518 (= lt!1347188 (++!10509 lt!1347222 suffixTokens!72))))

(assert (=> b!3870518 (= lt!1347222 (tail!5909 prefixTokens!80))))

(assert (=> b!3870518 (isPrefix!3475 lt!1347209 lt!1347218)))

(declare-fun lt!1347227 () Unit!58933)

(assert (=> b!3870518 (= lt!1347227 (lemmaConcatTwoListThenFirstIsPrefix!2338 lt!1347209 suffix!1176))))

(declare-fun b!3870519 () Bool)

(declare-fun Unit!58941 () Unit!58933)

(assert (=> b!3870519 (= e!2393917 Unit!58941)))

(declare-fun lt!1347216 () Unit!58933)

(assert (=> b!3870519 (= lt!1347216 (lemmaLexWithSmallerInputCannotProduceSameResults!36 thiss!20629 rules!2768 (_2!23301 (v!39091 lt!1347208)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3870519 false))

(declare-fun b!3870520 () Bool)

(declare-fun Unit!58942 () Unit!58933)

(assert (=> b!3870520 (= e!2393944 Unit!58942)))

(declare-fun lt!1347215 () Unit!58933)

(assert (=> b!3870520 (= lt!1347215 (lemmaConcatTwoListThenFirstIsPrefix!2338 prefix!426 suffix!1176))))

(assert (=> b!3870520 (isPrefix!3475 prefix!426 lt!1347203)))

(declare-fun lt!1347193 () Unit!58933)

(declare-fun lemmaIsPrefixSameLengthThenSameList!727 (List!41236 List!41236 List!41236) Unit!58933)

(assert (=> b!3870520 (= lt!1347193 (lemmaIsPrefixSameLengthThenSameList!727 lt!1347207 prefix!426 lt!1347203))))

(assert (=> b!3870520 (= lt!1347207 prefix!426)))

(declare-fun lt!1347226 () Unit!58933)

(assert (=> b!3870520 (= lt!1347226 (lemmaSamePrefixThenSameSuffix!1696 lt!1347207 (_2!23301 (v!39091 lt!1347208)) prefix!426 suffix!1176 lt!1347203))))

(assert (=> b!3870520 false))

(declare-fun b!3870521 () Bool)

(declare-fun Unit!58943 () Unit!58933)

(assert (=> b!3870521 (= e!2393918 Unit!58943)))

(declare-fun lt!1347219 () Int)

(assert (=> b!3870521 (= lt!1347219 (size!30902 lt!1347203))))

(declare-fun lt!1347196 () Unit!58933)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1249 (LexerInterface!5965 List!41239 List!41236 List!41236 List!41236 Rule!12552) Unit!58933)

(assert (=> b!3870521 (= lt!1347196 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1249 thiss!20629 rules!2768 lt!1347207 lt!1347203 (_2!23301 (v!39091 lt!1347208)) (rule!9262 (_1!23301 (v!39091 lt!1347208)))))))

(declare-fun maxPrefixOneRule!2351 (LexerInterface!5965 Rule!12552 List!41236) Option!8794)

(assert (=> b!3870521 (= (maxPrefixOneRule!2351 thiss!20629 (rule!9262 (_1!23301 (v!39091 lt!1347208))) lt!1347203) (Some!8793 (tuple2!40335 (Token!11891 lt!1347191 (rule!9262 (_1!23301 (v!39091 lt!1347208))) lt!1347200 lt!1347207) (_2!23301 (v!39091 lt!1347208)))))))

(declare-fun get!13604 (Option!8794) tuple2!40334)

(assert (=> b!3870521 (= lt!1347185 (get!13604 lt!1347208))))

(declare-fun c!673538 () Bool)

(assert (=> b!3870521 (= c!673538 (< (size!30902 (_2!23301 lt!1347185)) lt!1347217))))

(declare-fun lt!1347213 () Unit!58933)

(assert (=> b!3870521 (= lt!1347213 e!2393930)))

(assert (=> b!3870521 false))

(declare-fun b!3870522 () Bool)

(declare-fun e!2393953 () Bool)

(assert (=> b!3870522 (= e!2393951 e!2393953)))

(declare-fun res!1567689 () Bool)

(assert (=> b!3870522 (=> (not res!1567689) (not e!2393953))))

(declare-fun lt!1347228 () List!41238)

(assert (=> b!3870522 (= res!1567689 (= lt!1347223 (tuple2!40337 lt!1347228 suffixResult!91)))))

(assert (=> b!3870522 (= lt!1347223 (lexList!1733 thiss!20629 rules!2768 lt!1347203))))

(assert (=> b!3870522 (= lt!1347228 (++!10509 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3870522 (= lt!1347203 (++!10510 prefix!426 suffix!1176))))

(declare-fun b!3870523 () Bool)

(declare-fun res!1567692 () Bool)

(assert (=> b!3870523 (=> res!1567692 e!2393926)))

(declare-fun head!8192 (List!41238) Token!11890)

(assert (=> b!3870523 (= res!1567692 (not (= (head!8192 prefixTokens!80) (_1!23301 (v!39091 lt!1347208)))))))

(declare-fun b!3870524 () Bool)

(assert (=> b!3870524 (= e!2393953 e!2393916)))

(declare-fun res!1567700 () Bool)

(assert (=> b!3870524 (=> (not res!1567700) (not e!2393916))))

(assert (=> b!3870524 (= res!1567700 (= (lexList!1733 thiss!20629 rules!2768 suffix!1176) lt!1347187))))

(assert (=> b!3870524 (= lt!1347187 (tuple2!40337 suffixTokens!72 suffixResult!91))))

(assert (= (and start!363204 res!1567706) b!3870494))

(assert (= (and b!3870494 res!1567703) b!3870482))

(assert (= (and b!3870482 res!1567705) b!3870511))

(assert (= (and b!3870511 res!1567699) b!3870479))

(assert (= (and b!3870479 res!1567694) b!3870522))

(assert (= (and b!3870522 res!1567689) b!3870524))

(assert (= (and b!3870524 res!1567700) b!3870498))

(assert (= (and b!3870498 res!1567693) b!3870504))

(assert (= (and b!3870504 res!1567687) b!3870510))

(assert (= (and b!3870504 (not res!1567698)) b!3870481))

(assert (= (and b!3870481 (not res!1567697)) b!3870517))

(assert (= (and b!3870517 (not res!1567688)) b!3870505))

(assert (= (and b!3870505 c!673540) b!3870521))

(assert (= (and b!3870505 (not c!673540)) b!3870513))

(assert (= (and b!3870521 c!673538) b!3870503))

(assert (= (and b!3870521 (not c!673538)) b!3870486))

(assert (= (and b!3870503 c!673537) b!3870515))

(assert (= (and b!3870503 (not c!673537)) b!3870500))

(assert (= (and b!3870515 res!1567690) b!3870501))

(assert (= (and b!3870500 res!1567696) b!3870487))

(assert (= (or b!3870515 b!3870500) bm!282715))

(assert (= (and b!3870505 c!673541) b!3870520))

(assert (= (and b!3870505 (not c!673541)) b!3870493))

(assert (= (and b!3870505 (not res!1567704)) b!3870523))

(assert (= (and b!3870523 (not res!1567692)) b!3870506))

(assert (= (and b!3870506 (not res!1567701)) b!3870507))

(assert (= (and b!3870507 (not res!1567707)) b!3870489))

(assert (= (and b!3870489 (not res!1567702)) b!3870483))

(assert (= (and b!3870483 (not res!1567695)) b!3870508))

(assert (= (and b!3870508 (not res!1567708)) b!3870518))

(assert (= (and b!3870518 (not res!1567691)) b!3870491))

(assert (= (and b!3870491 c!673539) b!3870519))

(assert (= (and b!3870491 (not c!673539)) b!3870492))

(assert (= (and start!363204 ((_ is Cons!41112) suffixResult!91)) b!3870509))

(assert (= (and start!363204 ((_ is Cons!41112) suffix!1176)) b!3870495))

(assert (= b!3870485 b!3870512))

(assert (= b!3870514 b!3870485))

(assert (= (and start!363204 ((_ is Cons!41115) rules!2768)) b!3870514))

(assert (= b!3870499 b!3870502))

(assert (= b!3870488 b!3870499))

(assert (= b!3870496 b!3870488))

(assert (= (and start!363204 ((_ is Cons!41114) prefixTokens!80)) b!3870496))

(assert (= b!3870516 b!3870490))

(assert (= b!3870484 b!3870516))

(assert (= b!3870480 b!3870484))

(assert (= (and start!363204 ((_ is Cons!41114) suffixTokens!72)) b!3870480))

(assert (= (and start!363204 ((_ is Cons!41112) prefix!426)) b!3870497))

(declare-fun m!4426807 () Bool)

(assert (=> b!3870516 m!4426807))

(declare-fun m!4426809 () Bool)

(assert (=> b!3870516 m!4426809))

(declare-fun m!4426811 () Bool)

(assert (=> b!3870481 m!4426811))

(declare-fun m!4426813 () Bool)

(assert (=> b!3870507 m!4426813))

(declare-fun m!4426815 () Bool)

(assert (=> b!3870507 m!4426815))

(declare-fun m!4426817 () Bool)

(assert (=> b!3870523 m!4426817))

(declare-fun m!4426819 () Bool)

(assert (=> b!3870506 m!4426819))

(declare-fun m!4426821 () Bool)

(assert (=> b!3870506 m!4426821))

(declare-fun m!4426823 () Bool)

(assert (=> b!3870506 m!4426823))

(declare-fun m!4426825 () Bool)

(assert (=> b!3870506 m!4426825))

(declare-fun m!4426827 () Bool)

(assert (=> b!3870506 m!4426827))

(declare-fun m!4426829 () Bool)

(assert (=> b!3870519 m!4426829))

(declare-fun m!4426831 () Bool)

(assert (=> b!3870483 m!4426831))

(declare-fun m!4426833 () Bool)

(assert (=> b!3870483 m!4426833))

(declare-fun m!4426835 () Bool)

(assert (=> b!3870483 m!4426835))

(declare-fun m!4426837 () Bool)

(assert (=> b!3870511 m!4426837))

(declare-fun m!4426839 () Bool)

(assert (=> b!3870524 m!4426839))

(declare-fun m!4426841 () Bool)

(assert (=> bm!282715 m!4426841))

(declare-fun m!4426843 () Bool)

(assert (=> b!3870499 m!4426843))

(declare-fun m!4426845 () Bool)

(assert (=> b!3870499 m!4426845))

(declare-fun m!4426847 () Bool)

(assert (=> b!3870480 m!4426847))

(declare-fun m!4426849 () Bool)

(assert (=> b!3870518 m!4426849))

(declare-fun m!4426851 () Bool)

(assert (=> b!3870518 m!4426851))

(declare-fun m!4426853 () Bool)

(assert (=> b!3870518 m!4426853))

(declare-fun m!4426855 () Bool)

(assert (=> b!3870518 m!4426855))

(declare-fun m!4426857 () Bool)

(assert (=> b!3870521 m!4426857))

(declare-fun m!4426859 () Bool)

(assert (=> b!3870521 m!4426859))

(declare-fun m!4426861 () Bool)

(assert (=> b!3870521 m!4426861))

(declare-fun m!4426863 () Bool)

(assert (=> b!3870521 m!4426863))

(declare-fun m!4426865 () Bool)

(assert (=> b!3870521 m!4426865))

(declare-fun m!4426867 () Bool)

(assert (=> b!3870503 m!4426867))

(assert (=> b!3870503 m!4426851))

(declare-fun m!4426869 () Bool)

(assert (=> b!3870515 m!4426869))

(declare-fun m!4426871 () Bool)

(assert (=> b!3870515 m!4426871))

(declare-fun m!4426873 () Bool)

(assert (=> b!3870489 m!4426873))

(declare-fun m!4426875 () Bool)

(assert (=> b!3870484 m!4426875))

(declare-fun m!4426877 () Bool)

(assert (=> b!3870485 m!4426877))

(declare-fun m!4426879 () Bool)

(assert (=> b!3870485 m!4426879))

(declare-fun m!4426881 () Bool)

(assert (=> b!3870504 m!4426881))

(declare-fun m!4426883 () Bool)

(assert (=> b!3870504 m!4426883))

(declare-fun m!4426885 () Bool)

(assert (=> b!3870504 m!4426885))

(declare-fun m!4426887 () Bool)

(assert (=> b!3870504 m!4426887))

(declare-fun m!4426889 () Bool)

(assert (=> b!3870504 m!4426889))

(declare-fun m!4426891 () Bool)

(assert (=> b!3870504 m!4426891))

(declare-fun m!4426893 () Bool)

(assert (=> b!3870504 m!4426893))

(declare-fun m!4426895 () Bool)

(assert (=> b!3870504 m!4426895))

(declare-fun m!4426897 () Bool)

(assert (=> b!3870504 m!4426897))

(declare-fun m!4426899 () Bool)

(assert (=> b!3870504 m!4426899))

(declare-fun m!4426901 () Bool)

(assert (=> b!3870504 m!4426901))

(assert (=> b!3870504 m!4426893))

(assert (=> b!3870504 m!4426899))

(declare-fun m!4426903 () Bool)

(assert (=> b!3870504 m!4426903))

(declare-fun m!4426905 () Bool)

(assert (=> b!3870504 m!4426905))

(declare-fun m!4426907 () Bool)

(assert (=> b!3870504 m!4426907))

(assert (=> b!3870520 m!4426825))

(assert (=> b!3870520 m!4426823))

(declare-fun m!4426909 () Bool)

(assert (=> b!3870520 m!4426909))

(declare-fun m!4426911 () Bool)

(assert (=> b!3870520 m!4426911))

(declare-fun m!4426913 () Bool)

(assert (=> b!3870491 m!4426913))

(declare-fun m!4426915 () Bool)

(assert (=> b!3870491 m!4426915))

(declare-fun m!4426917 () Bool)

(assert (=> b!3870491 m!4426917))

(declare-fun m!4426919 () Bool)

(assert (=> b!3870491 m!4426919))

(assert (=> b!3870491 m!4426919))

(declare-fun m!4426921 () Bool)

(assert (=> b!3870491 m!4426921))

(declare-fun m!4426923 () Bool)

(assert (=> b!3870522 m!4426923))

(declare-fun m!4426925 () Bool)

(assert (=> b!3870522 m!4426925))

(declare-fun m!4426927 () Bool)

(assert (=> b!3870522 m!4426927))

(declare-fun m!4426929 () Bool)

(assert (=> b!3870500 m!4426929))

(declare-fun m!4426931 () Bool)

(assert (=> b!3870500 m!4426931))

(declare-fun m!4426933 () Bool)

(assert (=> b!3870508 m!4426933))

(declare-fun m!4426935 () Bool)

(assert (=> b!3870508 m!4426935))

(declare-fun m!4426937 () Bool)

(assert (=> b!3870508 m!4426937))

(declare-fun m!4426939 () Bool)

(assert (=> b!3870496 m!4426939))

(declare-fun m!4426941 () Bool)

(assert (=> b!3870505 m!4426941))

(declare-fun m!4426943 () Bool)

(assert (=> b!3870505 m!4426943))

(declare-fun m!4426945 () Bool)

(assert (=> b!3870482 m!4426945))

(declare-fun m!4426947 () Bool)

(assert (=> b!3870498 m!4426947))

(declare-fun m!4426949 () Bool)

(assert (=> b!3870488 m!4426949))

(declare-fun m!4426951 () Bool)

(assert (=> b!3870510 m!4426951))

(declare-fun m!4426953 () Bool)

(assert (=> b!3870494 m!4426953))

(declare-fun m!4426955 () Bool)

(assert (=> b!3870479 m!4426955))

(check-sat (not b!3870499) (not b!3870524) (not b_next!105197) (not b!3870498) tp_is_empty!19533 (not b!3870505) (not b!3870503) (not b!3870516) (not b!3870511) b_and!290091 (not b!3870519) (not b!3870497) (not b_next!105191) (not b_next!105199) (not b!3870479) (not b!3870523) (not b!3870522) b_and!290099 (not b!3870518) (not b!3870507) b_and!290101 (not b!3870494) (not b!3870481) (not b_next!105195) b_and!290097 (not b!3870483) (not b!3870509) (not b_next!105193) (not b!3870510) (not b!3870500) (not b!3870506) (not b!3870504) (not b!3870485) (not bm!282715) (not b!3870495) (not b_next!105189) (not b!3870484) (not b!3870496) (not b!3870515) (not b!3870514) (not b!3870521) (not b!3870480) (not b!3870508) (not b!3870489) (not b!3870488) (not b!3870482) (not b!3870491) (not b!3870520) b_and!290095 b_and!290093)
(check-sat b_and!290099 b_and!290101 (not b_next!105193) (not b_next!105197) (not b_next!105189) b_and!290091 (not b_next!105191) (not b_next!105199) (not b_next!105195) b_and!290097 b_and!290095 b_and!290093)
(get-model)

(declare-fun d!1146311 () Bool)

(assert (=> d!1146311 (= (isEmpty!24389 lt!1347222) ((_ is Nil!41114) lt!1347222))))

(assert (=> b!3870491 d!1146311))

(declare-fun b!3870534 () Bool)

(declare-fun e!2393959 () List!41238)

(assert (=> b!3870534 (= e!2393959 (Cons!41114 (h!46534 lt!1347220) (++!10509 (t!314401 lt!1347220) lt!1347188)))))

(declare-fun b!3870535 () Bool)

(declare-fun res!1567719 () Bool)

(declare-fun e!2393960 () Bool)

(assert (=> b!3870535 (=> (not res!1567719) (not e!2393960))))

(declare-fun lt!1347232 () List!41238)

(declare-fun size!30905 (List!41238) Int)

(assert (=> b!3870535 (= res!1567719 (= (size!30905 lt!1347232) (+ (size!30905 lt!1347220) (size!30905 lt!1347188))))))

(declare-fun b!3870536 () Bool)

(assert (=> b!3870536 (= e!2393960 (or (not (= lt!1347188 Nil!41114)) (= lt!1347232 lt!1347220)))))

(declare-fun b!3870533 () Bool)

(assert (=> b!3870533 (= e!2393959 lt!1347188)))

(declare-fun d!1146313 () Bool)

(assert (=> d!1146313 e!2393960))

(declare-fun res!1567718 () Bool)

(assert (=> d!1146313 (=> (not res!1567718) (not e!2393960))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6140 (List!41238) (InoxSet Token!11890))

(assert (=> d!1146313 (= res!1567718 (= (content!6140 lt!1347232) ((_ map or) (content!6140 lt!1347220) (content!6140 lt!1347188))))))

(assert (=> d!1146313 (= lt!1347232 e!2393959)))

(declare-fun c!673546 () Bool)

(assert (=> d!1146313 (= c!673546 ((_ is Nil!41114) lt!1347220))))

(assert (=> d!1146313 (= (++!10509 lt!1347220 lt!1347188) lt!1347232)))

(assert (= (and d!1146313 c!673546) b!3870533))

(assert (= (and d!1146313 (not c!673546)) b!3870534))

(assert (= (and d!1146313 res!1567718) b!3870535))

(assert (= (and b!3870535 res!1567719) b!3870536))

(declare-fun m!4426957 () Bool)

(assert (=> b!3870534 m!4426957))

(declare-fun m!4426959 () Bool)

(assert (=> b!3870535 m!4426959))

(declare-fun m!4426961 () Bool)

(assert (=> b!3870535 m!4426961))

(declare-fun m!4426963 () Bool)

(assert (=> b!3870535 m!4426963))

(declare-fun m!4426965 () Bool)

(assert (=> d!1146313 m!4426965))

(declare-fun m!4426967 () Bool)

(assert (=> d!1146313 m!4426967))

(declare-fun m!4426969 () Bool)

(assert (=> d!1146313 m!4426969))

(assert (=> b!3870491 d!1146313))

(declare-fun e!2393961 () List!41238)

(declare-fun b!3870538 () Bool)

(assert (=> b!3870538 (= e!2393961 (Cons!41114 (h!46534 (++!10509 lt!1347220 lt!1347222)) (++!10509 (t!314401 (++!10509 lt!1347220 lt!1347222)) suffixTokens!72)))))

(declare-fun b!3870539 () Bool)

(declare-fun res!1567723 () Bool)

(declare-fun e!2393962 () Bool)

(assert (=> b!3870539 (=> (not res!1567723) (not e!2393962))))

(declare-fun lt!1347233 () List!41238)

(assert (=> b!3870539 (= res!1567723 (= (size!30905 lt!1347233) (+ (size!30905 (++!10509 lt!1347220 lt!1347222)) (size!30905 suffixTokens!72))))))

(declare-fun b!3870540 () Bool)

(assert (=> b!3870540 (= e!2393962 (or (not (= suffixTokens!72 Nil!41114)) (= lt!1347233 (++!10509 lt!1347220 lt!1347222))))))

(declare-fun b!3870537 () Bool)

(assert (=> b!3870537 (= e!2393961 suffixTokens!72)))

(declare-fun d!1146315 () Bool)

(assert (=> d!1146315 e!2393962))

(declare-fun res!1567722 () Bool)

(assert (=> d!1146315 (=> (not res!1567722) (not e!2393962))))

(assert (=> d!1146315 (= res!1567722 (= (content!6140 lt!1347233) ((_ map or) (content!6140 (++!10509 lt!1347220 lt!1347222)) (content!6140 suffixTokens!72))))))

(assert (=> d!1146315 (= lt!1347233 e!2393961)))

(declare-fun c!673547 () Bool)

(assert (=> d!1146315 (= c!673547 ((_ is Nil!41114) (++!10509 lt!1347220 lt!1347222)))))

(assert (=> d!1146315 (= (++!10509 (++!10509 lt!1347220 lt!1347222) suffixTokens!72) lt!1347233)))

(assert (= (and d!1146315 c!673547) b!3870537))

(assert (= (and d!1146315 (not c!673547)) b!3870538))

(assert (= (and d!1146315 res!1567722) b!3870539))

(assert (= (and b!3870539 res!1567723) b!3870540))

(declare-fun m!4426971 () Bool)

(assert (=> b!3870538 m!4426971))

(declare-fun m!4426973 () Bool)

(assert (=> b!3870539 m!4426973))

(assert (=> b!3870539 m!4426919))

(declare-fun m!4426975 () Bool)

(assert (=> b!3870539 m!4426975))

(declare-fun m!4426977 () Bool)

(assert (=> b!3870539 m!4426977))

(declare-fun m!4426979 () Bool)

(assert (=> d!1146315 m!4426979))

(assert (=> d!1146315 m!4426919))

(declare-fun m!4426981 () Bool)

(assert (=> d!1146315 m!4426981))

(declare-fun m!4426983 () Bool)

(assert (=> d!1146315 m!4426983))

(assert (=> b!3870491 d!1146315))

(declare-fun b!3870542 () Bool)

(declare-fun e!2393963 () List!41238)

(assert (=> b!3870542 (= e!2393963 (Cons!41114 (h!46534 lt!1347220) (++!10509 (t!314401 lt!1347220) lt!1347222)))))

(declare-fun b!3870543 () Bool)

(declare-fun res!1567725 () Bool)

(declare-fun e!2393964 () Bool)

(assert (=> b!3870543 (=> (not res!1567725) (not e!2393964))))

(declare-fun lt!1347234 () List!41238)

(assert (=> b!3870543 (= res!1567725 (= (size!30905 lt!1347234) (+ (size!30905 lt!1347220) (size!30905 lt!1347222))))))

(declare-fun b!3870544 () Bool)

(assert (=> b!3870544 (= e!2393964 (or (not (= lt!1347222 Nil!41114)) (= lt!1347234 lt!1347220)))))

(declare-fun b!3870541 () Bool)

(assert (=> b!3870541 (= e!2393963 lt!1347222)))

(declare-fun d!1146317 () Bool)

(assert (=> d!1146317 e!2393964))

(declare-fun res!1567724 () Bool)

(assert (=> d!1146317 (=> (not res!1567724) (not e!2393964))))

(assert (=> d!1146317 (= res!1567724 (= (content!6140 lt!1347234) ((_ map or) (content!6140 lt!1347220) (content!6140 lt!1347222))))))

(assert (=> d!1146317 (= lt!1347234 e!2393963)))

(declare-fun c!673548 () Bool)

(assert (=> d!1146317 (= c!673548 ((_ is Nil!41114) lt!1347220))))

(assert (=> d!1146317 (= (++!10509 lt!1347220 lt!1347222) lt!1347234)))

(assert (= (and d!1146317 c!673548) b!3870541))

(assert (= (and d!1146317 (not c!673548)) b!3870542))

(assert (= (and d!1146317 res!1567724) b!3870543))

(assert (= (and b!3870543 res!1567725) b!3870544))

(declare-fun m!4426985 () Bool)

(assert (=> b!3870542 m!4426985))

(declare-fun m!4426987 () Bool)

(assert (=> b!3870543 m!4426987))

(assert (=> b!3870543 m!4426961))

(declare-fun m!4426989 () Bool)

(assert (=> b!3870543 m!4426989))

(declare-fun m!4426991 () Bool)

(assert (=> d!1146317 m!4426991))

(assert (=> d!1146317 m!4426967))

(declare-fun m!4426993 () Bool)

(assert (=> d!1146317 m!4426993))

(assert (=> b!3870491 d!1146317))

(declare-fun d!1146319 () Bool)

(assert (=> d!1146319 (= (++!10509 (++!10509 lt!1347220 lt!1347222) suffixTokens!72) (++!10509 lt!1347220 (++!10509 lt!1347222 suffixTokens!72)))))

(declare-fun lt!1347237 () Unit!58933)

(declare-fun choose!22864 (List!41238 List!41238 List!41238) Unit!58933)

(assert (=> d!1146319 (= lt!1347237 (choose!22864 lt!1347220 lt!1347222 suffixTokens!72))))

(assert (=> d!1146319 (= (lemmaConcatAssociativity!2224 lt!1347220 lt!1347222 suffixTokens!72) lt!1347237)))

(declare-fun bs!583437 () Bool)

(assert (= bs!583437 d!1146319))

(assert (=> bs!583437 m!4426849))

(declare-fun m!4426995 () Bool)

(assert (=> bs!583437 m!4426995))

(declare-fun m!4426997 () Bool)

(assert (=> bs!583437 m!4426997))

(assert (=> bs!583437 m!4426919))

(assert (=> bs!583437 m!4426849))

(assert (=> bs!583437 m!4426919))

(assert (=> bs!583437 m!4426921))

(assert (=> b!3870491 d!1146319))

(declare-fun d!1146323 () Bool)

(assert (=> d!1146323 (= (isEmpty!24389 prefixTokens!80) ((_ is Nil!41114) prefixTokens!80))))

(assert (=> b!3870511 d!1146323))

(declare-fun d!1146325 () Bool)

(declare-fun lt!1347240 () Int)

(assert (=> d!1146325 (>= lt!1347240 0)))

(declare-fun e!2393967 () Int)

(assert (=> d!1146325 (= lt!1347240 e!2393967)))

(declare-fun c!673551 () Bool)

(assert (=> d!1146325 (= c!673551 ((_ is Nil!41112) (originalCharacters!6976 (_1!23301 (v!39091 lt!1347208)))))))

(assert (=> d!1146325 (= (size!30902 (originalCharacters!6976 (_1!23301 (v!39091 lt!1347208)))) lt!1347240)))

(declare-fun b!3870549 () Bool)

(assert (=> b!3870549 (= e!2393967 0)))

(declare-fun b!3870550 () Bool)

(assert (=> b!3870550 (= e!2393967 (+ 1 (size!30902 (t!314399 (originalCharacters!6976 (_1!23301 (v!39091 lt!1347208)))))))))

(assert (= (and d!1146325 c!673551) b!3870549))

(assert (= (and d!1146325 (not c!673551)) b!3870550))

(declare-fun m!4426999 () Bool)

(assert (=> b!3870550 m!4426999))

(assert (=> b!3870510 d!1146325))

(declare-fun b!3870559 () Bool)

(declare-fun e!2393972 () List!41236)

(assert (=> b!3870559 (= e!2393972 suffix!1176)))

(declare-fun e!2393973 () Bool)

(declare-fun lt!1347243 () List!41236)

(declare-fun b!3870562 () Bool)

(assert (=> b!3870562 (= e!2393973 (or (not (= suffix!1176 Nil!41112)) (= lt!1347243 lt!1347225)))))

(declare-fun b!3870561 () Bool)

(declare-fun res!1567730 () Bool)

(assert (=> b!3870561 (=> (not res!1567730) (not e!2393973))))

(assert (=> b!3870561 (= res!1567730 (= (size!30902 lt!1347243) (+ (size!30902 lt!1347225) (size!30902 suffix!1176))))))

(declare-fun d!1146327 () Bool)

(assert (=> d!1146327 e!2393973))

(declare-fun res!1567731 () Bool)

(assert (=> d!1146327 (=> (not res!1567731) (not e!2393973))))

(declare-fun content!6141 (List!41236) (InoxSet C!22748))

(assert (=> d!1146327 (= res!1567731 (= (content!6141 lt!1347243) ((_ map or) (content!6141 lt!1347225) (content!6141 suffix!1176))))))

(assert (=> d!1146327 (= lt!1347243 e!2393972)))

(declare-fun c!673554 () Bool)

(assert (=> d!1146327 (= c!673554 ((_ is Nil!41112) lt!1347225))))

(assert (=> d!1146327 (= (++!10510 lt!1347225 suffix!1176) lt!1347243)))

(declare-fun b!3870560 () Bool)

(assert (=> b!3870560 (= e!2393972 (Cons!41112 (h!46532 lt!1347225) (++!10510 (t!314399 lt!1347225) suffix!1176)))))

(assert (= (and d!1146327 c!673554) b!3870559))

(assert (= (and d!1146327 (not c!673554)) b!3870560))

(assert (= (and d!1146327 res!1567731) b!3870561))

(assert (= (and b!3870561 res!1567730) b!3870562))

(declare-fun m!4427001 () Bool)

(assert (=> b!3870561 m!4427001))

(declare-fun m!4427003 () Bool)

(assert (=> b!3870561 m!4427003))

(assert (=> b!3870561 m!4426941))

(declare-fun m!4427005 () Bool)

(assert (=> d!1146327 m!4427005))

(declare-fun m!4427007 () Bool)

(assert (=> d!1146327 m!4427007))

(declare-fun m!4427009 () Bool)

(assert (=> d!1146327 m!4427009))

(declare-fun m!4427011 () Bool)

(assert (=> b!3870560 m!4427011))

(assert (=> b!3870489 d!1146327))

(declare-fun d!1146329 () Bool)

(declare-fun c!673559 () Bool)

(assert (=> d!1146329 (= c!673559 ((_ is IntegerValue!19818) (value!202350 (h!46534 prefixTokens!80))))))

(declare-fun e!2393982 () Bool)

(assert (=> d!1146329 (= (inv!21 (value!202350 (h!46534 prefixTokens!80))) e!2393982)))

(declare-fun b!3870573 () Bool)

(declare-fun inv!16 (TokenValue!6606) Bool)

(assert (=> b!3870573 (= e!2393982 (inv!16 (value!202350 (h!46534 prefixTokens!80))))))

(declare-fun b!3870574 () Bool)

(declare-fun res!1567734 () Bool)

(declare-fun e!2393980 () Bool)

(assert (=> b!3870574 (=> res!1567734 e!2393980)))

(assert (=> b!3870574 (= res!1567734 (not ((_ is IntegerValue!19820) (value!202350 (h!46534 prefixTokens!80)))))))

(declare-fun e!2393981 () Bool)

(assert (=> b!3870574 (= e!2393981 e!2393980)))

(declare-fun b!3870575 () Bool)

(declare-fun inv!15 (TokenValue!6606) Bool)

(assert (=> b!3870575 (= e!2393980 (inv!15 (value!202350 (h!46534 prefixTokens!80))))))

(declare-fun b!3870576 () Bool)

(assert (=> b!3870576 (= e!2393982 e!2393981)))

(declare-fun c!673560 () Bool)

(assert (=> b!3870576 (= c!673560 ((_ is IntegerValue!19819) (value!202350 (h!46534 prefixTokens!80))))))

(declare-fun b!3870577 () Bool)

(declare-fun inv!17 (TokenValue!6606) Bool)

(assert (=> b!3870577 (= e!2393981 (inv!17 (value!202350 (h!46534 prefixTokens!80))))))

(assert (= (and d!1146329 c!673559) b!3870573))

(assert (= (and d!1146329 (not c!673559)) b!3870576))

(assert (= (and b!3870576 c!673560) b!3870577))

(assert (= (and b!3870576 (not c!673560)) b!3870574))

(assert (= (and b!3870574 (not res!1567734)) b!3870575))

(declare-fun m!4427013 () Bool)

(assert (=> b!3870573 m!4427013))

(declare-fun m!4427015 () Bool)

(assert (=> b!3870575 m!4427015))

(declare-fun m!4427017 () Bool)

(assert (=> b!3870577 m!4427017))

(assert (=> b!3870488 d!1146329))

(declare-fun d!1146331 () Bool)

(assert (=> d!1146331 (= (_2!23301 (v!39091 lt!1347208)) lt!1347218)))

(declare-fun lt!1347246 () Unit!58933)

(declare-fun choose!22866 (List!41236 List!41236 List!41236 List!41236 List!41236) Unit!58933)

(assert (=> d!1146331 (= lt!1347246 (choose!22866 lt!1347207 (_2!23301 (v!39091 lt!1347208)) lt!1347207 lt!1347218 lt!1347203))))

(assert (=> d!1146331 (isPrefix!3475 lt!1347207 lt!1347203)))

(assert (=> d!1146331 (= (lemmaSamePrefixThenSameSuffix!1696 lt!1347207 (_2!23301 (v!39091 lt!1347208)) lt!1347207 lt!1347218 lt!1347203) lt!1347246)))

(declare-fun bs!583438 () Bool)

(assert (= bs!583438 d!1146331))

(declare-fun m!4427019 () Bool)

(assert (=> bs!583438 m!4427019))

(declare-fun m!4427021 () Bool)

(assert (=> bs!583438 m!4427021))

(assert (=> b!3870508 d!1146331))

(declare-fun b!3870606 () Bool)

(declare-fun e!2393999 () Bool)

(declare-fun tail!5911 (List!41236) List!41236)

(assert (=> b!3870606 (= e!2393999 (isPrefix!3475 (tail!5911 lt!1347207) (tail!5911 lt!1347205)))))

(declare-fun b!3870605 () Bool)

(declare-fun res!1567759 () Bool)

(assert (=> b!3870605 (=> (not res!1567759) (not e!2393999))))

(declare-fun head!8194 (List!41236) C!22748)

(assert (=> b!3870605 (= res!1567759 (= (head!8194 lt!1347207) (head!8194 lt!1347205)))))

(declare-fun b!3870604 () Bool)

(declare-fun e!2393997 () Bool)

(assert (=> b!3870604 (= e!2393997 e!2393999)))

(declare-fun res!1567757 () Bool)

(assert (=> b!3870604 (=> (not res!1567757) (not e!2393999))))

(assert (=> b!3870604 (= res!1567757 (not ((_ is Nil!41112) lt!1347205)))))

(declare-fun b!3870607 () Bool)

(declare-fun e!2393998 () Bool)

(assert (=> b!3870607 (= e!2393998 (>= (size!30902 lt!1347205) (size!30902 lt!1347207)))))

(declare-fun d!1146333 () Bool)

(assert (=> d!1146333 e!2393998))

(declare-fun res!1567760 () Bool)

(assert (=> d!1146333 (=> res!1567760 e!2393998)))

(declare-fun lt!1347259 () Bool)

(assert (=> d!1146333 (= res!1567760 (not lt!1347259))))

(assert (=> d!1146333 (= lt!1347259 e!2393997)))

(declare-fun res!1567758 () Bool)

(assert (=> d!1146333 (=> res!1567758 e!2393997)))

(assert (=> d!1146333 (= res!1567758 ((_ is Nil!41112) lt!1347207))))

(assert (=> d!1146333 (= (isPrefix!3475 lt!1347207 lt!1347205) lt!1347259)))

(assert (= (and d!1146333 (not res!1567758)) b!3870604))

(assert (= (and b!3870604 res!1567757) b!3870605))

(assert (= (and b!3870605 res!1567759) b!3870606))

(assert (= (and d!1146333 (not res!1567760)) b!3870607))

(declare-fun m!4427023 () Bool)

(assert (=> b!3870606 m!4427023))

(declare-fun m!4427025 () Bool)

(assert (=> b!3870606 m!4427025))

(assert (=> b!3870606 m!4427023))

(assert (=> b!3870606 m!4427025))

(declare-fun m!4427027 () Bool)

(assert (=> b!3870606 m!4427027))

(declare-fun m!4427029 () Bool)

(assert (=> b!3870605 m!4427029))

(declare-fun m!4427031 () Bool)

(assert (=> b!3870605 m!4427031))

(declare-fun m!4427033 () Bool)

(assert (=> b!3870607 m!4427033))

(assert (=> b!3870607 m!4426883))

(assert (=> b!3870508 d!1146333))

(declare-fun d!1146335 () Bool)

(assert (=> d!1146335 (isPrefix!3475 lt!1347207 (++!10510 lt!1347207 lt!1347218))))

(declare-fun lt!1347267 () Unit!58933)

(declare-fun choose!22868 (List!41236 List!41236) Unit!58933)

(assert (=> d!1146335 (= lt!1347267 (choose!22868 lt!1347207 lt!1347218))))

(assert (=> d!1146335 (= (lemmaConcatTwoListThenFirstIsPrefix!2338 lt!1347207 lt!1347218) lt!1347267)))

(declare-fun bs!583439 () Bool)

(assert (= bs!583439 d!1146335))

(assert (=> bs!583439 m!4426831))

(assert (=> bs!583439 m!4426831))

(declare-fun m!4427035 () Bool)

(assert (=> bs!583439 m!4427035))

(declare-fun m!4427037 () Bool)

(assert (=> bs!583439 m!4427037))

(assert (=> b!3870508 d!1146335))

(declare-fun b!3870617 () Bool)

(declare-fun e!2394004 () List!41236)

(assert (=> b!3870617 (= e!2394004 lt!1347209)))

(declare-fun b!3870620 () Bool)

(declare-fun lt!1347268 () List!41236)

(declare-fun e!2394005 () Bool)

(assert (=> b!3870620 (= e!2394005 (or (not (= lt!1347209 Nil!41112)) (= lt!1347268 lt!1347207)))))

(declare-fun b!3870619 () Bool)

(declare-fun res!1567768 () Bool)

(assert (=> b!3870619 (=> (not res!1567768) (not e!2394005))))

(assert (=> b!3870619 (= res!1567768 (= (size!30902 lt!1347268) (+ (size!30902 lt!1347207) (size!30902 lt!1347209))))))

(declare-fun d!1146337 () Bool)

(assert (=> d!1146337 e!2394005))

(declare-fun res!1567769 () Bool)

(assert (=> d!1146337 (=> (not res!1567769) (not e!2394005))))

(assert (=> d!1146337 (= res!1567769 (= (content!6141 lt!1347268) ((_ map or) (content!6141 lt!1347207) (content!6141 lt!1347209))))))

(assert (=> d!1146337 (= lt!1347268 e!2394004)))

(declare-fun c!673564 () Bool)

(assert (=> d!1146337 (= c!673564 ((_ is Nil!41112) lt!1347207))))

(assert (=> d!1146337 (= (++!10510 lt!1347207 lt!1347209) lt!1347268)))

(declare-fun b!3870618 () Bool)

(assert (=> b!3870618 (= e!2394004 (Cons!41112 (h!46532 lt!1347207) (++!10510 (t!314399 lt!1347207) lt!1347209)))))

(assert (= (and d!1146337 c!673564) b!3870617))

(assert (= (and d!1146337 (not c!673564)) b!3870618))

(assert (= (and d!1146337 res!1567769) b!3870619))

(assert (= (and b!3870619 res!1567768) b!3870620))

(declare-fun m!4427039 () Bool)

(assert (=> b!3870619 m!4427039))

(assert (=> b!3870619 m!4426883))

(declare-fun m!4427041 () Bool)

(assert (=> b!3870619 m!4427041))

(declare-fun m!4427043 () Bool)

(assert (=> d!1146337 m!4427043))

(declare-fun m!4427045 () Bool)

(assert (=> d!1146337 m!4427045))

(declare-fun m!4427047 () Bool)

(assert (=> d!1146337 m!4427047))

(declare-fun m!4427049 () Bool)

(assert (=> b!3870618 m!4427049))

(assert (=> b!3870507 d!1146337))

(declare-fun d!1146339 () Bool)

(declare-fun lt!1347275 () List!41236)

(assert (=> d!1146339 (= (++!10510 lt!1347207 lt!1347275) prefix!426)))

(declare-fun e!2394012 () List!41236)

(assert (=> d!1146339 (= lt!1347275 e!2394012)))

(declare-fun c!673571 () Bool)

(assert (=> d!1146339 (= c!673571 ((_ is Cons!41112) lt!1347207))))

(assert (=> d!1146339 (>= (size!30902 prefix!426) (size!30902 lt!1347207))))

(assert (=> d!1146339 (= (getSuffix!1930 prefix!426 lt!1347207) lt!1347275)))

(declare-fun b!3870633 () Bool)

(assert (=> b!3870633 (= e!2394012 (getSuffix!1930 (tail!5911 prefix!426) (t!314399 lt!1347207)))))

(declare-fun b!3870634 () Bool)

(assert (=> b!3870634 (= e!2394012 prefix!426)))

(assert (= (and d!1146339 c!673571) b!3870633))

(assert (= (and d!1146339 (not c!673571)) b!3870634))

(declare-fun m!4427097 () Bool)

(assert (=> d!1146339 m!4427097))

(assert (=> d!1146339 m!4426821))

(assert (=> d!1146339 m!4426883))

(declare-fun m!4427099 () Bool)

(assert (=> b!3870633 m!4427099))

(assert (=> b!3870633 m!4427099))

(declare-fun m!4427101 () Bool)

(assert (=> b!3870633 m!4427101))

(assert (=> b!3870507 d!1146339))

(declare-fun b!3870637 () Bool)

(declare-fun e!2394015 () Bool)

(assert (=> b!3870637 (= e!2394015 (isPrefix!3475 (tail!5911 prefix!426) (tail!5911 lt!1347203)))))

(declare-fun b!3870636 () Bool)

(declare-fun res!1567772 () Bool)

(assert (=> b!3870636 (=> (not res!1567772) (not e!2394015))))

(assert (=> b!3870636 (= res!1567772 (= (head!8194 prefix!426) (head!8194 lt!1347203)))))

(declare-fun b!3870635 () Bool)

(declare-fun e!2394013 () Bool)

(assert (=> b!3870635 (= e!2394013 e!2394015)))

(declare-fun res!1567770 () Bool)

(assert (=> b!3870635 (=> (not res!1567770) (not e!2394015))))

(assert (=> b!3870635 (= res!1567770 (not ((_ is Nil!41112) lt!1347203)))))

(declare-fun b!3870638 () Bool)

(declare-fun e!2394014 () Bool)

(assert (=> b!3870638 (= e!2394014 (>= (size!30902 lt!1347203) (size!30902 prefix!426)))))

(declare-fun d!1146349 () Bool)

(assert (=> d!1146349 e!2394014))

(declare-fun res!1567773 () Bool)

(assert (=> d!1146349 (=> res!1567773 e!2394014)))

(declare-fun lt!1347276 () Bool)

(assert (=> d!1146349 (= res!1567773 (not lt!1347276))))

(assert (=> d!1146349 (= lt!1347276 e!2394013)))

(declare-fun res!1567771 () Bool)

(assert (=> d!1146349 (=> res!1567771 e!2394013)))

(assert (=> d!1146349 (= res!1567771 ((_ is Nil!41112) prefix!426))))

(assert (=> d!1146349 (= (isPrefix!3475 prefix!426 lt!1347203) lt!1347276)))

(assert (= (and d!1146349 (not res!1567771)) b!3870635))

(assert (= (and b!3870635 res!1567770) b!3870636))

(assert (= (and b!3870636 res!1567772) b!3870637))

(assert (= (and d!1146349 (not res!1567773)) b!3870638))

(assert (=> b!3870637 m!4427099))

(declare-fun m!4427103 () Bool)

(assert (=> b!3870637 m!4427103))

(assert (=> b!3870637 m!4427099))

(assert (=> b!3870637 m!4427103))

(declare-fun m!4427105 () Bool)

(assert (=> b!3870637 m!4427105))

(declare-fun m!4427107 () Bool)

(assert (=> b!3870636 m!4427107))

(declare-fun m!4427109 () Bool)

(assert (=> b!3870636 m!4427109))

(assert (=> b!3870638 m!4426861))

(assert (=> b!3870638 m!4426821))

(assert (=> b!3870506 d!1146349))

(declare-fun d!1146351 () Bool)

(assert (=> d!1146351 (isPrefix!3475 prefix!426 (++!10510 prefix!426 suffix!1176))))

(declare-fun lt!1347277 () Unit!58933)

(assert (=> d!1146351 (= lt!1347277 (choose!22868 prefix!426 suffix!1176))))

(assert (=> d!1146351 (= (lemmaConcatTwoListThenFirstIsPrefix!2338 prefix!426 suffix!1176) lt!1347277)))

(declare-fun bs!583440 () Bool)

(assert (= bs!583440 d!1146351))

(assert (=> bs!583440 m!4426927))

(assert (=> bs!583440 m!4426927))

(declare-fun m!4427111 () Bool)

(assert (=> bs!583440 m!4427111))

(declare-fun m!4427113 () Bool)

(assert (=> bs!583440 m!4427113))

(assert (=> b!3870506 d!1146351))

(declare-fun d!1146353 () Bool)

(assert (=> d!1146353 (isPrefix!3475 lt!1347207 prefix!426)))

(declare-fun lt!1347280 () Unit!58933)

(declare-fun choose!22871 (List!41236 List!41236 List!41236) Unit!58933)

(assert (=> d!1146353 (= lt!1347280 (choose!22871 prefix!426 lt!1347207 lt!1347203))))

(assert (=> d!1146353 (isPrefix!3475 prefix!426 lt!1347203)))

(assert (=> d!1146353 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!225 prefix!426 lt!1347207 lt!1347203) lt!1347280)))

(declare-fun bs!583441 () Bool)

(assert (= bs!583441 d!1146353))

(assert (=> bs!583441 m!4426819))

(declare-fun m!4427115 () Bool)

(assert (=> bs!583441 m!4427115))

(assert (=> bs!583441 m!4426823))

(assert (=> b!3870506 d!1146353))

(declare-fun b!3870641 () Bool)

(declare-fun e!2394018 () Bool)

(assert (=> b!3870641 (= e!2394018 (isPrefix!3475 (tail!5911 lt!1347207) (tail!5911 prefix!426)))))

(declare-fun b!3870640 () Bool)

(declare-fun res!1567776 () Bool)

(assert (=> b!3870640 (=> (not res!1567776) (not e!2394018))))

(assert (=> b!3870640 (= res!1567776 (= (head!8194 lt!1347207) (head!8194 prefix!426)))))

(declare-fun b!3870639 () Bool)

(declare-fun e!2394016 () Bool)

(assert (=> b!3870639 (= e!2394016 e!2394018)))

(declare-fun res!1567774 () Bool)

(assert (=> b!3870639 (=> (not res!1567774) (not e!2394018))))

(assert (=> b!3870639 (= res!1567774 (not ((_ is Nil!41112) prefix!426)))))

(declare-fun b!3870642 () Bool)

(declare-fun e!2394017 () Bool)

(assert (=> b!3870642 (= e!2394017 (>= (size!30902 prefix!426) (size!30902 lt!1347207)))))

(declare-fun d!1146355 () Bool)

(assert (=> d!1146355 e!2394017))

(declare-fun res!1567777 () Bool)

(assert (=> d!1146355 (=> res!1567777 e!2394017)))

(declare-fun lt!1347283 () Bool)

(assert (=> d!1146355 (= res!1567777 (not lt!1347283))))

(assert (=> d!1146355 (= lt!1347283 e!2394016)))

(declare-fun res!1567775 () Bool)

(assert (=> d!1146355 (=> res!1567775 e!2394016)))

(assert (=> d!1146355 (= res!1567775 ((_ is Nil!41112) lt!1347207))))

(assert (=> d!1146355 (= (isPrefix!3475 lt!1347207 prefix!426) lt!1347283)))

(assert (= (and d!1146355 (not res!1567775)) b!3870639))

(assert (= (and b!3870639 res!1567774) b!3870640))

(assert (= (and b!3870640 res!1567776) b!3870641))

(assert (= (and d!1146355 (not res!1567777)) b!3870642))

(assert (=> b!3870641 m!4427023))

(assert (=> b!3870641 m!4427099))

(assert (=> b!3870641 m!4427023))

(assert (=> b!3870641 m!4427099))

(declare-fun m!4427117 () Bool)

(assert (=> b!3870641 m!4427117))

(assert (=> b!3870640 m!4427029))

(assert (=> b!3870640 m!4427107))

(assert (=> b!3870642 m!4426821))

(assert (=> b!3870642 m!4426883))

(assert (=> b!3870506 d!1146355))

(declare-fun d!1146357 () Bool)

(declare-fun lt!1347285 () Int)

(assert (=> d!1146357 (>= lt!1347285 0)))

(declare-fun e!2394019 () Int)

(assert (=> d!1146357 (= lt!1347285 e!2394019)))

(declare-fun c!673572 () Bool)

(assert (=> d!1146357 (= c!673572 ((_ is Nil!41112) prefix!426))))

(assert (=> d!1146357 (= (size!30902 prefix!426) lt!1347285)))

(declare-fun b!3870643 () Bool)

(assert (=> b!3870643 (= e!2394019 0)))

(declare-fun b!3870644 () Bool)

(assert (=> b!3870644 (= e!2394019 (+ 1 (size!30902 (t!314399 prefix!426))))))

(assert (= (and d!1146357 c!673572) b!3870643))

(assert (= (and d!1146357 (not c!673572)) b!3870644))

(declare-fun m!4427121 () Bool)

(assert (=> b!3870644 m!4427121))

(assert (=> b!3870506 d!1146357))

(declare-fun d!1146361 () Bool)

(assert (=> d!1146361 (= (inv!55269 (tag!7236 (h!46535 rules!2768))) (= (mod (str.len (value!202349 (tag!7236 (h!46535 rules!2768)))) 2) 0))))

(assert (=> b!3870485 d!1146361))

(declare-fun d!1146363 () Bool)

(declare-fun res!1567780 () Bool)

(declare-fun e!2394022 () Bool)

(assert (=> d!1146363 (=> (not res!1567780) (not e!2394022))))

(declare-fun semiInverseModEq!2735 (Int Int) Bool)

(assert (=> d!1146363 (= res!1567780 (semiInverseModEq!2735 (toChars!8663 (transformation!6376 (h!46535 rules!2768))) (toValue!8804 (transformation!6376 (h!46535 rules!2768)))))))

(assert (=> d!1146363 (= (inv!55273 (transformation!6376 (h!46535 rules!2768))) e!2394022)))

(declare-fun b!3870647 () Bool)

(declare-fun equivClasses!2634 (Int Int) Bool)

(assert (=> b!3870647 (= e!2394022 (equivClasses!2634 (toChars!8663 (transformation!6376 (h!46535 rules!2768))) (toValue!8804 (transformation!6376 (h!46535 rules!2768)))))))

(assert (= (and d!1146363 res!1567780) b!3870647))

(declare-fun m!4427123 () Bool)

(assert (=> d!1146363 m!4427123))

(declare-fun m!4427125 () Bool)

(assert (=> b!3870647 m!4427125))

(assert (=> b!3870485 d!1146363))

(declare-fun d!1146365 () Bool)

(declare-fun c!673573 () Bool)

(assert (=> d!1146365 (= c!673573 ((_ is IntegerValue!19818) (value!202350 (h!46534 suffixTokens!72))))))

(declare-fun e!2394025 () Bool)

(assert (=> d!1146365 (= (inv!21 (value!202350 (h!46534 suffixTokens!72))) e!2394025)))

(declare-fun b!3870648 () Bool)

(assert (=> b!3870648 (= e!2394025 (inv!16 (value!202350 (h!46534 suffixTokens!72))))))

(declare-fun b!3870649 () Bool)

(declare-fun res!1567781 () Bool)

(declare-fun e!2394023 () Bool)

(assert (=> b!3870649 (=> res!1567781 e!2394023)))

(assert (=> b!3870649 (= res!1567781 (not ((_ is IntegerValue!19820) (value!202350 (h!46534 suffixTokens!72)))))))

(declare-fun e!2394024 () Bool)

(assert (=> b!3870649 (= e!2394024 e!2394023)))

(declare-fun b!3870650 () Bool)

(assert (=> b!3870650 (= e!2394023 (inv!15 (value!202350 (h!46534 suffixTokens!72))))))

(declare-fun b!3870651 () Bool)

(assert (=> b!3870651 (= e!2394025 e!2394024)))

(declare-fun c!673574 () Bool)

(assert (=> b!3870651 (= c!673574 ((_ is IntegerValue!19819) (value!202350 (h!46534 suffixTokens!72))))))

(declare-fun b!3870652 () Bool)

(assert (=> b!3870652 (= e!2394024 (inv!17 (value!202350 (h!46534 suffixTokens!72))))))

(assert (= (and d!1146365 c!673573) b!3870648))

(assert (= (and d!1146365 (not c!673573)) b!3870651))

(assert (= (and b!3870651 c!673574) b!3870652))

(assert (= (and b!3870651 (not c!673574)) b!3870649))

(assert (= (and b!3870649 (not res!1567781)) b!3870650))

(declare-fun m!4427127 () Bool)

(assert (=> b!3870648 m!4427127))

(declare-fun m!4427129 () Bool)

(assert (=> b!3870650 m!4427129))

(declare-fun m!4427131 () Bool)

(assert (=> b!3870652 m!4427131))

(assert (=> b!3870484 d!1146365))

(declare-fun d!1146367 () Bool)

(declare-fun lt!1347286 () Int)

(assert (=> d!1146367 (>= lt!1347286 0)))

(declare-fun e!2394026 () Int)

(assert (=> d!1146367 (= lt!1347286 e!2394026)))

(declare-fun c!673575 () Bool)

(assert (=> d!1146367 (= c!673575 ((_ is Nil!41112) suffix!1176))))

(assert (=> d!1146367 (= (size!30902 suffix!1176) lt!1347286)))

(declare-fun b!3870653 () Bool)

(assert (=> b!3870653 (= e!2394026 0)))

(declare-fun b!3870654 () Bool)

(assert (=> b!3870654 (= e!2394026 (+ 1 (size!30902 (t!314399 suffix!1176))))))

(assert (= (and d!1146367 c!673575) b!3870653))

(assert (= (and d!1146367 (not c!673575)) b!3870654))

(declare-fun m!4427133 () Bool)

(assert (=> b!3870654 m!4427133))

(assert (=> b!3870505 d!1146367))

(declare-fun d!1146369 () Bool)

(declare-fun lt!1347287 () Int)

(assert (=> d!1146369 (>= lt!1347287 0)))

(declare-fun e!2394027 () Int)

(assert (=> d!1146369 (= lt!1347287 e!2394027)))

(declare-fun c!673576 () Bool)

(assert (=> d!1146369 (= c!673576 ((_ is Nil!41112) (_2!23301 (v!39091 lt!1347208))))))

(assert (=> d!1146369 (= (size!30902 (_2!23301 (v!39091 lt!1347208))) lt!1347287)))

(declare-fun b!3870655 () Bool)

(assert (=> b!3870655 (= e!2394027 0)))

(declare-fun b!3870656 () Bool)

(assert (=> b!3870656 (= e!2394027 (+ 1 (size!30902 (t!314399 (_2!23301 (v!39091 lt!1347208))))))))

(assert (= (and d!1146369 c!673576) b!3870655))

(assert (= (and d!1146369 (not c!673576)) b!3870656))

(declare-fun m!4427135 () Bool)

(assert (=> b!3870656 m!4427135))

(assert (=> b!3870505 d!1146369))

(declare-fun d!1146371 () Bool)

(assert (=> d!1146371 (isPrefix!3475 lt!1347207 (++!10510 lt!1347207 (_2!23301 (v!39091 lt!1347208))))))

(declare-fun lt!1347288 () Unit!58933)

(assert (=> d!1146371 (= lt!1347288 (choose!22868 lt!1347207 (_2!23301 (v!39091 lt!1347208))))))

(assert (=> d!1146371 (= (lemmaConcatTwoListThenFirstIsPrefix!2338 lt!1347207 (_2!23301 (v!39091 lt!1347208))) lt!1347288)))

(declare-fun bs!583443 () Bool)

(assert (= bs!583443 d!1146371))

(assert (=> bs!583443 m!4426903))

(assert (=> bs!583443 m!4426903))

(declare-fun m!4427137 () Bool)

(assert (=> bs!583443 m!4427137))

(declare-fun m!4427139 () Bool)

(assert (=> bs!583443 m!4427139))

(assert (=> b!3870504 d!1146371))

(declare-fun d!1146373 () Bool)

(assert (=> d!1146373 (= (_2!23301 (v!39091 lt!1347208)) lt!1347197)))

(declare-fun lt!1347289 () Unit!58933)

(assert (=> d!1146373 (= lt!1347289 (choose!22866 lt!1347207 (_2!23301 (v!39091 lt!1347208)) lt!1347207 lt!1347197 lt!1347203))))

(assert (=> d!1146373 (isPrefix!3475 lt!1347207 lt!1347203)))

(assert (=> d!1146373 (= (lemmaSamePrefixThenSameSuffix!1696 lt!1347207 (_2!23301 (v!39091 lt!1347208)) lt!1347207 lt!1347197 lt!1347203) lt!1347289)))

(declare-fun bs!583444 () Bool)

(assert (= bs!583444 d!1146373))

(declare-fun m!4427141 () Bool)

(assert (=> bs!583444 m!4427141))

(assert (=> bs!583444 m!4427021))

(assert (=> b!3870504 d!1146373))

(declare-fun d!1146375 () Bool)

(declare-fun lt!1347290 () List!41236)

(assert (=> d!1146375 (= (++!10510 lt!1347207 lt!1347290) lt!1347203)))

(declare-fun e!2394028 () List!41236)

(assert (=> d!1146375 (= lt!1347290 e!2394028)))

(declare-fun c!673577 () Bool)

(assert (=> d!1146375 (= c!673577 ((_ is Cons!41112) lt!1347207))))

(assert (=> d!1146375 (>= (size!30902 lt!1347203) (size!30902 lt!1347207))))

(assert (=> d!1146375 (= (getSuffix!1930 lt!1347203 lt!1347207) lt!1347290)))

(declare-fun b!3870657 () Bool)

(assert (=> b!3870657 (= e!2394028 (getSuffix!1930 (tail!5911 lt!1347203) (t!314399 lt!1347207)))))

(declare-fun b!3870658 () Bool)

(assert (=> b!3870658 (= e!2394028 lt!1347203)))

(assert (= (and d!1146375 c!673577) b!3870657))

(assert (= (and d!1146375 (not c!673577)) b!3870658))

(declare-fun m!4427143 () Bool)

(assert (=> d!1146375 m!4427143))

(assert (=> d!1146375 m!4426861))

(assert (=> d!1146375 m!4426883))

(assert (=> b!3870657 m!4427103))

(assert (=> b!3870657 m!4427103))

(declare-fun m!4427145 () Bool)

(assert (=> b!3870657 m!4427145))

(assert (=> b!3870504 d!1146375))

(declare-fun d!1146377 () Bool)

(declare-fun dynLambda!17692 (Int BalanceConc!24768) TokenValue!6606)

(assert (=> d!1146377 (= (apply!9619 (transformation!6376 (rule!9262 (_1!23301 (v!39091 lt!1347208)))) (seqFromList!4647 lt!1347207)) (dynLambda!17692 (toValue!8804 (transformation!6376 (rule!9262 (_1!23301 (v!39091 lt!1347208))))) (seqFromList!4647 lt!1347207)))))

(declare-fun b_lambda!113055 () Bool)

(assert (=> (not b_lambda!113055) (not d!1146377)))

(declare-fun t!314404 () Bool)

(declare-fun tb!224465 () Bool)

(assert (=> (and b!3870502 (= (toValue!8804 (transformation!6376 (rule!9262 (h!46534 prefixTokens!80)))) (toValue!8804 (transformation!6376 (rule!9262 (_1!23301 (v!39091 lt!1347208)))))) t!314404) tb!224465))

(declare-fun result!273394 () Bool)

(assert (=> tb!224465 (= result!273394 (inv!21 (dynLambda!17692 (toValue!8804 (transformation!6376 (rule!9262 (_1!23301 (v!39091 lt!1347208))))) (seqFromList!4647 lt!1347207))))))

(declare-fun m!4427147 () Bool)

(assert (=> tb!224465 m!4427147))

(assert (=> d!1146377 t!314404))

(declare-fun b_and!290103 () Bool)

(assert (= b_and!290091 (and (=> t!314404 result!273394) b_and!290103)))

(declare-fun t!314406 () Bool)

(declare-fun tb!224467 () Bool)

(assert (=> (and b!3870490 (= (toValue!8804 (transformation!6376 (rule!9262 (h!46534 suffixTokens!72)))) (toValue!8804 (transformation!6376 (rule!9262 (_1!23301 (v!39091 lt!1347208)))))) t!314406) tb!224467))

(declare-fun result!273398 () Bool)

(assert (= result!273398 result!273394))

(assert (=> d!1146377 t!314406))

(declare-fun b_and!290105 () Bool)

(assert (= b_and!290095 (and (=> t!314406 result!273398) b_and!290105)))

(declare-fun t!314408 () Bool)

(declare-fun tb!224469 () Bool)

(assert (=> (and b!3870512 (= (toValue!8804 (transformation!6376 (h!46535 rules!2768))) (toValue!8804 (transformation!6376 (rule!9262 (_1!23301 (v!39091 lt!1347208)))))) t!314408) tb!224469))

(declare-fun result!273400 () Bool)

(assert (= result!273400 result!273394))

(assert (=> d!1146377 t!314408))

(declare-fun b_and!290107 () Bool)

(assert (= b_and!290099 (and (=> t!314408 result!273400) b_and!290107)))

(assert (=> d!1146377 m!4426899))

(declare-fun m!4427149 () Bool)

(assert (=> d!1146377 m!4427149))

(assert (=> b!3870504 d!1146377))

(declare-fun d!1146379 () Bool)

(declare-fun res!1567789 () Bool)

(declare-fun e!2394043 () Bool)

(assert (=> d!1146379 (=> (not res!1567789) (not e!2394043))))

(declare-fun validRegex!5133 (Regex!11281) Bool)

(assert (=> d!1146379 (= res!1567789 (validRegex!5133 (regex!6376 (rule!9262 (_1!23301 (v!39091 lt!1347208))))))))

(assert (=> d!1146379 (= (ruleValid!2328 thiss!20629 (rule!9262 (_1!23301 (v!39091 lt!1347208)))) e!2394043)))

(declare-fun b!3870680 () Bool)

(declare-fun res!1567790 () Bool)

(assert (=> b!3870680 (=> (not res!1567790) (not e!2394043))))

(declare-fun nullable!3934 (Regex!11281) Bool)

(assert (=> b!3870680 (= res!1567790 (not (nullable!3934 (regex!6376 (rule!9262 (_1!23301 (v!39091 lt!1347208)))))))))

(declare-fun b!3870681 () Bool)

(assert (=> b!3870681 (= e!2394043 (not (= (tag!7236 (rule!9262 (_1!23301 (v!39091 lt!1347208)))) (String!46749 ""))))))

(assert (= (and d!1146379 res!1567789) b!3870680))

(assert (= (and b!3870680 res!1567790) b!3870681))

(declare-fun m!4427159 () Bool)

(assert (=> d!1146379 m!4427159))

(declare-fun m!4427161 () Bool)

(assert (=> b!3870680 m!4427161))

(assert (=> b!3870504 d!1146379))

(declare-fun b!3870682 () Bool)

(declare-fun e!2394044 () List!41236)

(assert (=> b!3870682 (= e!2394044 (_2!23301 (v!39091 lt!1347208)))))

(declare-fun e!2394045 () Bool)

(declare-fun lt!1347300 () List!41236)

(declare-fun b!3870685 () Bool)

(assert (=> b!3870685 (= e!2394045 (or (not (= (_2!23301 (v!39091 lt!1347208)) Nil!41112)) (= lt!1347300 lt!1347207)))))

(declare-fun b!3870684 () Bool)

(declare-fun res!1567791 () Bool)

(assert (=> b!3870684 (=> (not res!1567791) (not e!2394045))))

(assert (=> b!3870684 (= res!1567791 (= (size!30902 lt!1347300) (+ (size!30902 lt!1347207) (size!30902 (_2!23301 (v!39091 lt!1347208))))))))

(declare-fun d!1146383 () Bool)

(assert (=> d!1146383 e!2394045))

(declare-fun res!1567792 () Bool)

(assert (=> d!1146383 (=> (not res!1567792) (not e!2394045))))

(assert (=> d!1146383 (= res!1567792 (= (content!6141 lt!1347300) ((_ map or) (content!6141 lt!1347207) (content!6141 (_2!23301 (v!39091 lt!1347208))))))))

(assert (=> d!1146383 (= lt!1347300 e!2394044)))

(declare-fun c!673584 () Bool)

(assert (=> d!1146383 (= c!673584 ((_ is Nil!41112) lt!1347207))))

(assert (=> d!1146383 (= (++!10510 lt!1347207 (_2!23301 (v!39091 lt!1347208))) lt!1347300)))

(declare-fun b!3870683 () Bool)

(assert (=> b!3870683 (= e!2394044 (Cons!41112 (h!46532 lt!1347207) (++!10510 (t!314399 lt!1347207) (_2!23301 (v!39091 lt!1347208)))))))

(assert (= (and d!1146383 c!673584) b!3870682))

(assert (= (and d!1146383 (not c!673584)) b!3870683))

(assert (= (and d!1146383 res!1567792) b!3870684))

(assert (= (and b!3870684 res!1567791) b!3870685))

(declare-fun m!4427163 () Bool)

(assert (=> b!3870684 m!4427163))

(assert (=> b!3870684 m!4426883))

(assert (=> b!3870684 m!4426943))

(declare-fun m!4427165 () Bool)

(assert (=> d!1146383 m!4427165))

(assert (=> d!1146383 m!4427045))

(declare-fun m!4427167 () Bool)

(assert (=> d!1146383 m!4427167))

(declare-fun m!4427169 () Bool)

(assert (=> b!3870683 m!4427169))

(assert (=> b!3870504 d!1146383))

(declare-fun d!1146385 () Bool)

(assert (=> d!1146385 (= (size!30901 (_1!23301 (v!39091 lt!1347208))) (size!30902 (originalCharacters!6976 (_1!23301 (v!39091 lt!1347208)))))))

(declare-fun Unit!58944 () Unit!58933)

(assert (=> d!1146385 (= (lemmaCharactersSize!1037 (_1!23301 (v!39091 lt!1347208))) Unit!58944)))

(declare-fun bs!583445 () Bool)

(assert (= bs!583445 d!1146385))

(assert (=> bs!583445 m!4426951))

(assert (=> b!3870504 d!1146385))

(declare-fun b!3870768 () Bool)

(declare-fun e!2394093 () Bool)

(declare-fun lt!1347328 () tuple2!40336)

(assert (=> b!3870768 (= e!2394093 (= (_2!23302 lt!1347328) (_2!23301 (v!39091 lt!1347208))))))

(declare-fun d!1146387 () Bool)

(assert (=> d!1146387 e!2394093))

(declare-fun c!673603 () Bool)

(assert (=> d!1146387 (= c!673603 (> (size!30905 (_1!23302 lt!1347328)) 0))))

(declare-fun e!2394094 () tuple2!40336)

(assert (=> d!1146387 (= lt!1347328 e!2394094)))

(declare-fun c!673604 () Bool)

(declare-fun lt!1347329 () Option!8794)

(assert (=> d!1146387 (= c!673604 ((_ is Some!8793) lt!1347329))))

(assert (=> d!1146387 (= lt!1347329 (maxPrefix!3269 thiss!20629 rules!2768 (_2!23301 (v!39091 lt!1347208))))))

(assert (=> d!1146387 (= (lexList!1733 thiss!20629 rules!2768 (_2!23301 (v!39091 lt!1347208))) lt!1347328)))

(declare-fun b!3870769 () Bool)

(declare-fun e!2394095 () Bool)

(assert (=> b!3870769 (= e!2394093 e!2394095)))

(declare-fun res!1567834 () Bool)

(assert (=> b!3870769 (= res!1567834 (< (size!30902 (_2!23302 lt!1347328)) (size!30902 (_2!23301 (v!39091 lt!1347208)))))))

(assert (=> b!3870769 (=> (not res!1567834) (not e!2394095))))

(declare-fun b!3870770 () Bool)

(assert (=> b!3870770 (= e!2394095 (not (isEmpty!24389 (_1!23302 lt!1347328))))))

(declare-fun b!3870771 () Bool)

(declare-fun lt!1347327 () tuple2!40336)

(assert (=> b!3870771 (= e!2394094 (tuple2!40337 (Cons!41114 (_1!23301 (v!39091 lt!1347329)) (_1!23302 lt!1347327)) (_2!23302 lt!1347327)))))

(assert (=> b!3870771 (= lt!1347327 (lexList!1733 thiss!20629 rules!2768 (_2!23301 (v!39091 lt!1347329))))))

(declare-fun b!3870772 () Bool)

(assert (=> b!3870772 (= e!2394094 (tuple2!40337 Nil!41114 (_2!23301 (v!39091 lt!1347208))))))

(assert (= (and d!1146387 c!673604) b!3870771))

(assert (= (and d!1146387 (not c!673604)) b!3870772))

(assert (= (and d!1146387 c!673603) b!3870769))

(assert (= (and d!1146387 (not c!673603)) b!3870768))

(assert (= (and b!3870769 res!1567834) b!3870770))

(declare-fun m!4427273 () Bool)

(assert (=> d!1146387 m!4427273))

(declare-fun m!4427275 () Bool)

(assert (=> d!1146387 m!4427275))

(declare-fun m!4427277 () Bool)

(assert (=> b!3870769 m!4427277))

(assert (=> b!3870769 m!4426943))

(declare-fun m!4427279 () Bool)

(assert (=> b!3870770 m!4427279))

(declare-fun m!4427281 () Bool)

(assert (=> b!3870771 m!4427281))

(assert (=> b!3870504 d!1146387))

(declare-fun d!1146417 () Bool)

(declare-fun fromListB!2144 (List!41236) BalanceConc!24768)

(assert (=> d!1146417 (= (seqFromList!4647 lt!1347207) (fromListB!2144 lt!1347207))))

(declare-fun bs!583447 () Bool)

(assert (= bs!583447 d!1146417))

(declare-fun m!4427283 () Bool)

(assert (=> bs!583447 m!4427283))

(assert (=> b!3870504 d!1146417))

(declare-fun b!3870775 () Bool)

(declare-fun e!2394098 () Bool)

(assert (=> b!3870775 (= e!2394098 (isPrefix!3475 (tail!5911 lt!1347207) (tail!5911 lt!1347189)))))

(declare-fun b!3870774 () Bool)

(declare-fun res!1567837 () Bool)

(assert (=> b!3870774 (=> (not res!1567837) (not e!2394098))))

(assert (=> b!3870774 (= res!1567837 (= (head!8194 lt!1347207) (head!8194 lt!1347189)))))

(declare-fun b!3870773 () Bool)

(declare-fun e!2394096 () Bool)

(assert (=> b!3870773 (= e!2394096 e!2394098)))

(declare-fun res!1567835 () Bool)

(assert (=> b!3870773 (=> (not res!1567835) (not e!2394098))))

(assert (=> b!3870773 (= res!1567835 (not ((_ is Nil!41112) lt!1347189)))))

(declare-fun b!3870776 () Bool)

(declare-fun e!2394097 () Bool)

(assert (=> b!3870776 (= e!2394097 (>= (size!30902 lt!1347189) (size!30902 lt!1347207)))))

(declare-fun d!1146419 () Bool)

(assert (=> d!1146419 e!2394097))

(declare-fun res!1567838 () Bool)

(assert (=> d!1146419 (=> res!1567838 e!2394097)))

(declare-fun lt!1347330 () Bool)

(assert (=> d!1146419 (= res!1567838 (not lt!1347330))))

(assert (=> d!1146419 (= lt!1347330 e!2394096)))

(declare-fun res!1567836 () Bool)

(assert (=> d!1146419 (=> res!1567836 e!2394096)))

(assert (=> d!1146419 (= res!1567836 ((_ is Nil!41112) lt!1347207))))

(assert (=> d!1146419 (= (isPrefix!3475 lt!1347207 lt!1347189) lt!1347330)))

(assert (= (and d!1146419 (not res!1567836)) b!3870773))

(assert (= (and b!3870773 res!1567835) b!3870774))

(assert (= (and b!3870774 res!1567837) b!3870775))

(assert (= (and d!1146419 (not res!1567838)) b!3870776))

(assert (=> b!3870775 m!4427023))

(declare-fun m!4427285 () Bool)

(assert (=> b!3870775 m!4427285))

(assert (=> b!3870775 m!4427023))

(assert (=> b!3870775 m!4427285))

(declare-fun m!4427287 () Bool)

(assert (=> b!3870775 m!4427287))

(assert (=> b!3870774 m!4427029))

(declare-fun m!4427289 () Bool)

(assert (=> b!3870774 m!4427289))

(declare-fun m!4427291 () Bool)

(assert (=> b!3870776 m!4427291))

(assert (=> b!3870776 m!4426883))

(assert (=> b!3870504 d!1146419))

(declare-fun d!1146421 () Bool)

(declare-fun lt!1347331 () Int)

(assert (=> d!1146421 (>= lt!1347331 0)))

(declare-fun e!2394099 () Int)

(assert (=> d!1146421 (= lt!1347331 e!2394099)))

(declare-fun c!673605 () Bool)

(assert (=> d!1146421 (= c!673605 ((_ is Nil!41112) lt!1347207))))

(assert (=> d!1146421 (= (size!30902 lt!1347207) lt!1347331)))

(declare-fun b!3870777 () Bool)

(assert (=> b!3870777 (= e!2394099 0)))

(declare-fun b!3870778 () Bool)

(assert (=> b!3870778 (= e!2394099 (+ 1 (size!30902 (t!314399 lt!1347207))))))

(assert (= (and d!1146421 c!673605) b!3870777))

(assert (= (and d!1146421 (not c!673605)) b!3870778))

(declare-fun m!4427293 () Bool)

(assert (=> b!3870778 m!4427293))

(assert (=> b!3870504 d!1146421))

(declare-fun d!1146423 () Bool)

(declare-fun lt!1347338 () BalanceConc!24768)

(assert (=> d!1146423 (= (list!15294 lt!1347338) (originalCharacters!6976 (_1!23301 (v!39091 lt!1347208))))))

(declare-fun dynLambda!17693 (Int TokenValue!6606) BalanceConc!24768)

(assert (=> d!1146423 (= lt!1347338 (dynLambda!17693 (toChars!8663 (transformation!6376 (rule!9262 (_1!23301 (v!39091 lt!1347208))))) (value!202350 (_1!23301 (v!39091 lt!1347208)))))))

(assert (=> d!1146423 (= (charsOf!4204 (_1!23301 (v!39091 lt!1347208))) lt!1347338)))

(declare-fun b_lambda!113059 () Bool)

(assert (=> (not b_lambda!113059) (not d!1146423)))

(declare-fun tb!224477 () Bool)

(declare-fun t!314416 () Bool)

(assert (=> (and b!3870502 (= (toChars!8663 (transformation!6376 (rule!9262 (h!46534 prefixTokens!80)))) (toChars!8663 (transformation!6376 (rule!9262 (_1!23301 (v!39091 lt!1347208)))))) t!314416) tb!224477))

(declare-fun b!3870788 () Bool)

(declare-fun e!2394105 () Bool)

(declare-fun tp!1173564 () Bool)

(declare-fun inv!55276 (Conc!12587) Bool)

(assert (=> b!3870788 (= e!2394105 (and (inv!55276 (c!673543 (dynLambda!17693 (toChars!8663 (transformation!6376 (rule!9262 (_1!23301 (v!39091 lt!1347208))))) (value!202350 (_1!23301 (v!39091 lt!1347208)))))) tp!1173564))))

(declare-fun result!273410 () Bool)

(declare-fun inv!55277 (BalanceConc!24768) Bool)

(assert (=> tb!224477 (= result!273410 (and (inv!55277 (dynLambda!17693 (toChars!8663 (transformation!6376 (rule!9262 (_1!23301 (v!39091 lt!1347208))))) (value!202350 (_1!23301 (v!39091 lt!1347208))))) e!2394105))))

(assert (= tb!224477 b!3870788))

(declare-fun m!4427315 () Bool)

(assert (=> b!3870788 m!4427315))

(declare-fun m!4427317 () Bool)

(assert (=> tb!224477 m!4427317))

(assert (=> d!1146423 t!314416))

(declare-fun b_and!290115 () Bool)

(assert (= b_and!290093 (and (=> t!314416 result!273410) b_and!290115)))

(declare-fun t!314418 () Bool)

(declare-fun tb!224479 () Bool)

(assert (=> (and b!3870490 (= (toChars!8663 (transformation!6376 (rule!9262 (h!46534 suffixTokens!72)))) (toChars!8663 (transformation!6376 (rule!9262 (_1!23301 (v!39091 lt!1347208)))))) t!314418) tb!224479))

(declare-fun result!273414 () Bool)

(assert (= result!273414 result!273410))

(assert (=> d!1146423 t!314418))

(declare-fun b_and!290117 () Bool)

(assert (= b_and!290097 (and (=> t!314418 result!273414) b_and!290117)))

(declare-fun tb!224481 () Bool)

(declare-fun t!314420 () Bool)

(assert (=> (and b!3870512 (= (toChars!8663 (transformation!6376 (h!46535 rules!2768))) (toChars!8663 (transformation!6376 (rule!9262 (_1!23301 (v!39091 lt!1347208)))))) t!314420) tb!224481))

(declare-fun result!273416 () Bool)

(assert (= result!273416 result!273410))

(assert (=> d!1146423 t!314420))

(declare-fun b_and!290119 () Bool)

(assert (= b_and!290101 (and (=> t!314420 result!273416) b_and!290119)))

(declare-fun m!4427331 () Bool)

(assert (=> d!1146423 m!4427331))

(declare-fun m!4427333 () Bool)

(assert (=> d!1146423 m!4427333))

(assert (=> b!3870504 d!1146423))

(declare-fun d!1146439 () Bool)

(assert (=> d!1146439 (ruleValid!2328 thiss!20629 (rule!9262 (_1!23301 (v!39091 lt!1347208))))))

(declare-fun lt!1347349 () Unit!58933)

(declare-fun choose!22873 (LexerInterface!5965 Rule!12552 List!41239) Unit!58933)

(assert (=> d!1146439 (= lt!1347349 (choose!22873 thiss!20629 (rule!9262 (_1!23301 (v!39091 lt!1347208))) rules!2768))))

(declare-fun contains!8287 (List!41239 Rule!12552) Bool)

(assert (=> d!1146439 (contains!8287 rules!2768 (rule!9262 (_1!23301 (v!39091 lt!1347208))))))

(assert (=> d!1146439 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1408 thiss!20629 (rule!9262 (_1!23301 (v!39091 lt!1347208))) rules!2768) lt!1347349)))

(declare-fun bs!583452 () Bool)

(assert (= bs!583452 d!1146439))

(assert (=> bs!583452 m!4426887))

(declare-fun m!4427341 () Bool)

(assert (=> bs!583452 m!4427341))

(declare-fun m!4427345 () Bool)

(assert (=> bs!583452 m!4427345))

(assert (=> b!3870504 d!1146439))

(declare-fun d!1146443 () Bool)

(declare-fun list!15295 (Conc!12587) List!41236)

(assert (=> d!1146443 (= (list!15294 (charsOf!4204 (_1!23301 (v!39091 lt!1347208)))) (list!15295 (c!673543 (charsOf!4204 (_1!23301 (v!39091 lt!1347208))))))))

(declare-fun bs!583453 () Bool)

(assert (= bs!583453 d!1146443))

(declare-fun m!4427357 () Bool)

(assert (=> bs!583453 m!4427357))

(assert (=> b!3870504 d!1146443))

(declare-fun b!3870801 () Bool)

(declare-fun e!2394113 () List!41236)

(assert (=> b!3870801 (= e!2394113 lt!1347218)))

(declare-fun b!3870804 () Bool)

(declare-fun e!2394114 () Bool)

(declare-fun lt!1347352 () List!41236)

(assert (=> b!3870804 (= e!2394114 (or (not (= lt!1347218 Nil!41112)) (= lt!1347352 lt!1347207)))))

(declare-fun b!3870803 () Bool)

(declare-fun res!1567850 () Bool)

(assert (=> b!3870803 (=> (not res!1567850) (not e!2394114))))

(assert (=> b!3870803 (= res!1567850 (= (size!30902 lt!1347352) (+ (size!30902 lt!1347207) (size!30902 lt!1347218))))))

(declare-fun d!1146449 () Bool)

(assert (=> d!1146449 e!2394114))

(declare-fun res!1567851 () Bool)

(assert (=> d!1146449 (=> (not res!1567851) (not e!2394114))))

(assert (=> d!1146449 (= res!1567851 (= (content!6141 lt!1347352) ((_ map or) (content!6141 lt!1347207) (content!6141 lt!1347218))))))

(assert (=> d!1146449 (= lt!1347352 e!2394113)))

(declare-fun c!673609 () Bool)

(assert (=> d!1146449 (= c!673609 ((_ is Nil!41112) lt!1347207))))

(assert (=> d!1146449 (= (++!10510 lt!1347207 lt!1347218) lt!1347352)))

(declare-fun b!3870802 () Bool)

(assert (=> b!3870802 (= e!2394113 (Cons!41112 (h!46532 lt!1347207) (++!10510 (t!314399 lt!1347207) lt!1347218)))))

(assert (= (and d!1146449 c!673609) b!3870801))

(assert (= (and d!1146449 (not c!673609)) b!3870802))

(assert (= (and d!1146449 res!1567851) b!3870803))

(assert (= (and b!3870803 res!1567850) b!3870804))

(declare-fun m!4427369 () Bool)

(assert (=> b!3870803 m!4427369))

(assert (=> b!3870803 m!4426883))

(declare-fun m!4427371 () Bool)

(assert (=> b!3870803 m!4427371))

(declare-fun m!4427373 () Bool)

(assert (=> d!1146449 m!4427373))

(assert (=> d!1146449 m!4427045))

(declare-fun m!4427375 () Bool)

(assert (=> d!1146449 m!4427375))

(declare-fun m!4427377 () Bool)

(assert (=> b!3870802 m!4427377))

(assert (=> b!3870483 d!1146449))

(declare-fun b!3870805 () Bool)

(declare-fun e!2394115 () List!41236)

(assert (=> b!3870805 (= e!2394115 suffix!1176)))

(declare-fun b!3870808 () Bool)

(declare-fun e!2394116 () Bool)

(declare-fun lt!1347353 () List!41236)

(assert (=> b!3870808 (= e!2394116 (or (not (= suffix!1176 Nil!41112)) (= lt!1347353 lt!1347209)))))

(declare-fun b!3870807 () Bool)

(declare-fun res!1567852 () Bool)

(assert (=> b!3870807 (=> (not res!1567852) (not e!2394116))))

(assert (=> b!3870807 (= res!1567852 (= (size!30902 lt!1347353) (+ (size!30902 lt!1347209) (size!30902 suffix!1176))))))

(declare-fun d!1146453 () Bool)

(assert (=> d!1146453 e!2394116))

(declare-fun res!1567853 () Bool)

(assert (=> d!1146453 (=> (not res!1567853) (not e!2394116))))

(assert (=> d!1146453 (= res!1567853 (= (content!6141 lt!1347353) ((_ map or) (content!6141 lt!1347209) (content!6141 suffix!1176))))))

(assert (=> d!1146453 (= lt!1347353 e!2394115)))

(declare-fun c!673610 () Bool)

(assert (=> d!1146453 (= c!673610 ((_ is Nil!41112) lt!1347209))))

(assert (=> d!1146453 (= (++!10510 lt!1347209 suffix!1176) lt!1347353)))

(declare-fun b!3870806 () Bool)

(assert (=> b!3870806 (= e!2394115 (Cons!41112 (h!46532 lt!1347209) (++!10510 (t!314399 lt!1347209) suffix!1176)))))

(assert (= (and d!1146453 c!673610) b!3870805))

(assert (= (and d!1146453 (not c!673610)) b!3870806))

(assert (= (and d!1146453 res!1567853) b!3870807))

(assert (= (and b!3870807 res!1567852) b!3870808))

(declare-fun m!4427379 () Bool)

(assert (=> b!3870807 m!4427379))

(assert (=> b!3870807 m!4427041))

(assert (=> b!3870807 m!4426941))

(declare-fun m!4427381 () Bool)

(assert (=> d!1146453 m!4427381))

(assert (=> d!1146453 m!4427047))

(assert (=> d!1146453 m!4427009))

(declare-fun m!4427383 () Bool)

(assert (=> b!3870806 m!4427383))

(assert (=> b!3870483 d!1146453))

(declare-fun d!1146457 () Bool)

(assert (=> d!1146457 (= (++!10510 (++!10510 lt!1347207 lt!1347209) suffix!1176) (++!10510 lt!1347207 (++!10510 lt!1347209 suffix!1176)))))

(declare-fun lt!1347357 () Unit!58933)

(declare-fun choose!22875 (List!41236 List!41236 List!41236) Unit!58933)

(assert (=> d!1146457 (= lt!1347357 (choose!22875 lt!1347207 lt!1347209 suffix!1176))))

(assert (=> d!1146457 (= (lemmaConcatAssociativity!2223 lt!1347207 lt!1347209 suffix!1176) lt!1347357)))

(declare-fun bs!583454 () Bool)

(assert (= bs!583454 d!1146457))

(declare-fun m!4427391 () Bool)

(assert (=> bs!583454 m!4427391))

(assert (=> bs!583454 m!4426833))

(declare-fun m!4427393 () Bool)

(assert (=> bs!583454 m!4427393))

(assert (=> bs!583454 m!4426813))

(declare-fun m!4427395 () Bool)

(assert (=> bs!583454 m!4427395))

(assert (=> bs!583454 m!4426833))

(assert (=> bs!583454 m!4426813))

(assert (=> b!3870483 d!1146457))

(declare-fun d!1146461 () Bool)

(declare-fun res!1567858 () Bool)

(declare-fun e!2394121 () Bool)

(assert (=> d!1146461 (=> (not res!1567858) (not e!2394121))))

(declare-fun rulesValid!2469 (LexerInterface!5965 List!41239) Bool)

(assert (=> d!1146461 (= res!1567858 (rulesValid!2469 thiss!20629 rules!2768))))

(assert (=> d!1146461 (= (rulesInvariant!5308 thiss!20629 rules!2768) e!2394121)))

(declare-fun b!3870815 () Bool)

(declare-datatypes ((List!41240 0))(
  ( (Nil!41116) (Cons!41116 (h!46536 String!46748) (t!314499 List!41240)) )
))
(declare-fun noDuplicateTag!2470 (LexerInterface!5965 List!41239 List!41240) Bool)

(assert (=> b!3870815 (= e!2394121 (noDuplicateTag!2470 thiss!20629 rules!2768 Nil!41116))))

(assert (= (and d!1146461 res!1567858) b!3870815))

(declare-fun m!4427397 () Bool)

(assert (=> d!1146461 m!4427397))

(declare-fun m!4427399 () Bool)

(assert (=> b!3870815 m!4427399))

(assert (=> b!3870482 d!1146461))

(declare-fun b!3870816 () Bool)

(declare-fun e!2394122 () Bool)

(declare-fun lt!1347359 () tuple2!40336)

(assert (=> b!3870816 (= e!2394122 (= (_2!23302 lt!1347359) suffix!1176))))

(declare-fun d!1146463 () Bool)

(assert (=> d!1146463 e!2394122))

(declare-fun c!673612 () Bool)

(assert (=> d!1146463 (= c!673612 (> (size!30905 (_1!23302 lt!1347359)) 0))))

(declare-fun e!2394123 () tuple2!40336)

(assert (=> d!1146463 (= lt!1347359 e!2394123)))

(declare-fun c!673613 () Bool)

(declare-fun lt!1347360 () Option!8794)

(assert (=> d!1146463 (= c!673613 ((_ is Some!8793) lt!1347360))))

(assert (=> d!1146463 (= lt!1347360 (maxPrefix!3269 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1146463 (= (lexList!1733 thiss!20629 rules!2768 suffix!1176) lt!1347359)))

(declare-fun b!3870817 () Bool)

(declare-fun e!2394124 () Bool)

(assert (=> b!3870817 (= e!2394122 e!2394124)))

(declare-fun res!1567859 () Bool)

(assert (=> b!3870817 (= res!1567859 (< (size!30902 (_2!23302 lt!1347359)) (size!30902 suffix!1176)))))

(assert (=> b!3870817 (=> (not res!1567859) (not e!2394124))))

(declare-fun b!3870818 () Bool)

(assert (=> b!3870818 (= e!2394124 (not (isEmpty!24389 (_1!23302 lt!1347359))))))

(declare-fun b!3870819 () Bool)

(declare-fun lt!1347358 () tuple2!40336)

(assert (=> b!3870819 (= e!2394123 (tuple2!40337 (Cons!41114 (_1!23301 (v!39091 lt!1347360)) (_1!23302 lt!1347358)) (_2!23302 lt!1347358)))))

(assert (=> b!3870819 (= lt!1347358 (lexList!1733 thiss!20629 rules!2768 (_2!23301 (v!39091 lt!1347360))))))

(declare-fun b!3870820 () Bool)

(assert (=> b!3870820 (= e!2394123 (tuple2!40337 Nil!41114 suffix!1176))))

(assert (= (and d!1146463 c!673613) b!3870819))

(assert (= (and d!1146463 (not c!673613)) b!3870820))

(assert (= (and d!1146463 c!673612) b!3870817))

(assert (= (and d!1146463 (not c!673612)) b!3870816))

(assert (= (and b!3870817 res!1567859) b!3870818))

(declare-fun m!4427401 () Bool)

(assert (=> d!1146463 m!4427401))

(declare-fun m!4427403 () Bool)

(assert (=> d!1146463 m!4427403))

(declare-fun m!4427405 () Bool)

(assert (=> b!3870817 m!4427405))

(assert (=> b!3870817 m!4426941))

(declare-fun m!4427407 () Bool)

(assert (=> b!3870818 m!4427407))

(declare-fun m!4427409 () Bool)

(assert (=> b!3870819 m!4427409))

(assert (=> b!3870524 d!1146463))

(declare-fun d!1146465 () Bool)

(assert (=> d!1146465 (= (isEmpty!24389 lt!1347201) ((_ is Nil!41114) lt!1347201))))

(assert (=> b!3870503 d!1146465))

(declare-fun d!1146467 () Bool)

(assert (=> d!1146467 (= (tail!5909 prefixTokens!80) (t!314401 prefixTokens!80))))

(assert (=> b!3870503 d!1146467))

(declare-fun b!3870822 () Bool)

(declare-fun e!2394125 () List!41238)

(assert (=> b!3870822 (= e!2394125 (Cons!41114 (h!46534 lt!1347220) (++!10509 (t!314401 lt!1347220) (_1!23302 lt!1347202))))))

(declare-fun b!3870823 () Bool)

(declare-fun res!1567861 () Bool)

(declare-fun e!2394126 () Bool)

(assert (=> b!3870823 (=> (not res!1567861) (not e!2394126))))

(declare-fun lt!1347361 () List!41238)

(assert (=> b!3870823 (= res!1567861 (= (size!30905 lt!1347361) (+ (size!30905 lt!1347220) (size!30905 (_1!23302 lt!1347202)))))))

(declare-fun b!3870824 () Bool)

(assert (=> b!3870824 (= e!2394126 (or (not (= (_1!23302 lt!1347202) Nil!41114)) (= lt!1347361 lt!1347220)))))

(declare-fun b!3870821 () Bool)

(assert (=> b!3870821 (= e!2394125 (_1!23302 lt!1347202))))

(declare-fun d!1146469 () Bool)

(assert (=> d!1146469 e!2394126))

(declare-fun res!1567860 () Bool)

(assert (=> d!1146469 (=> (not res!1567860) (not e!2394126))))

(assert (=> d!1146469 (= res!1567860 (= (content!6140 lt!1347361) ((_ map or) (content!6140 lt!1347220) (content!6140 (_1!23302 lt!1347202)))))))

(assert (=> d!1146469 (= lt!1347361 e!2394125)))

(declare-fun c!673614 () Bool)

(assert (=> d!1146469 (= c!673614 ((_ is Nil!41114) lt!1347220))))

(assert (=> d!1146469 (= (++!10509 lt!1347220 (_1!23302 lt!1347202)) lt!1347361)))

(assert (= (and d!1146469 c!673614) b!3870821))

(assert (= (and d!1146469 (not c!673614)) b!3870822))

(assert (= (and d!1146469 res!1567860) b!3870823))

(assert (= (and b!3870823 res!1567861) b!3870824))

(declare-fun m!4427411 () Bool)

(assert (=> b!3870822 m!4427411))

(declare-fun m!4427413 () Bool)

(assert (=> b!3870823 m!4427413))

(assert (=> b!3870823 m!4426961))

(declare-fun m!4427415 () Bool)

(assert (=> b!3870823 m!4427415))

(declare-fun m!4427417 () Bool)

(assert (=> d!1146469 m!4427417))

(assert (=> d!1146469 m!4426967))

(declare-fun m!4427419 () Bool)

(assert (=> d!1146469 m!4427419))

(assert (=> b!3870481 d!1146469))

(declare-fun b!3870825 () Bool)

(declare-fun e!2394127 () Bool)

(declare-fun lt!1347363 () tuple2!40336)

(assert (=> b!3870825 (= e!2394127 (= (_2!23302 lt!1347363) (_2!23301 lt!1347185)))))

(declare-fun d!1146471 () Bool)

(assert (=> d!1146471 e!2394127))

(declare-fun c!673615 () Bool)

(assert (=> d!1146471 (= c!673615 (> (size!30905 (_1!23302 lt!1347363)) 0))))

(declare-fun e!2394128 () tuple2!40336)

(assert (=> d!1146471 (= lt!1347363 e!2394128)))

(declare-fun c!673616 () Bool)

(declare-fun lt!1347364 () Option!8794)

(assert (=> d!1146471 (= c!673616 ((_ is Some!8793) lt!1347364))))

(assert (=> d!1146471 (= lt!1347364 (maxPrefix!3269 thiss!20629 rules!2768 (_2!23301 lt!1347185)))))

(assert (=> d!1146471 (= (lexList!1733 thiss!20629 rules!2768 (_2!23301 lt!1347185)) lt!1347363)))

(declare-fun b!3870826 () Bool)

(declare-fun e!2394129 () Bool)

(assert (=> b!3870826 (= e!2394127 e!2394129)))

(declare-fun res!1567862 () Bool)

(assert (=> b!3870826 (= res!1567862 (< (size!30902 (_2!23302 lt!1347363)) (size!30902 (_2!23301 lt!1347185))))))

(assert (=> b!3870826 (=> (not res!1567862) (not e!2394129))))

(declare-fun b!3870827 () Bool)

(assert (=> b!3870827 (= e!2394129 (not (isEmpty!24389 (_1!23302 lt!1347363))))))

(declare-fun b!3870828 () Bool)

(declare-fun lt!1347362 () tuple2!40336)

(assert (=> b!3870828 (= e!2394128 (tuple2!40337 (Cons!41114 (_1!23301 (v!39091 lt!1347364)) (_1!23302 lt!1347362)) (_2!23302 lt!1347362)))))

(assert (=> b!3870828 (= lt!1347362 (lexList!1733 thiss!20629 rules!2768 (_2!23301 (v!39091 lt!1347364))))))

(declare-fun b!3870829 () Bool)

(assert (=> b!3870829 (= e!2394128 (tuple2!40337 Nil!41114 (_2!23301 lt!1347185)))))

(assert (= (and d!1146471 c!673616) b!3870828))

(assert (= (and d!1146471 (not c!673616)) b!3870829))

(assert (= (and d!1146471 c!673615) b!3870826))

(assert (= (and d!1146471 (not c!673615)) b!3870825))

(assert (= (and b!3870826 res!1567862) b!3870827))

(declare-fun m!4427421 () Bool)

(assert (=> d!1146471 m!4427421))

(declare-fun m!4427423 () Bool)

(assert (=> d!1146471 m!4427423))

(declare-fun m!4427425 () Bool)

(assert (=> b!3870826 m!4427425))

(assert (=> b!3870826 m!4426863))

(declare-fun m!4427427 () Bool)

(assert (=> b!3870827 m!4427427))

(declare-fun m!4427429 () Bool)

(assert (=> b!3870828 m!4427429))

(assert (=> bm!282715 d!1146471))

(declare-fun d!1146473 () Bool)

(assert (=> d!1146473 (= (head!8192 prefixTokens!80) (h!46534 prefixTokens!80))))

(assert (=> b!3870523 d!1146473))

(declare-fun b!3870830 () Bool)

(declare-fun e!2394130 () Bool)

(declare-fun lt!1347366 () tuple2!40336)

(assert (=> b!3870830 (= e!2394130 (= (_2!23302 lt!1347366) lt!1347203))))

(declare-fun d!1146475 () Bool)

(assert (=> d!1146475 e!2394130))

(declare-fun c!673617 () Bool)

(assert (=> d!1146475 (= c!673617 (> (size!30905 (_1!23302 lt!1347366)) 0))))

(declare-fun e!2394131 () tuple2!40336)

(assert (=> d!1146475 (= lt!1347366 e!2394131)))

(declare-fun c!673618 () Bool)

(declare-fun lt!1347367 () Option!8794)

(assert (=> d!1146475 (= c!673618 ((_ is Some!8793) lt!1347367))))

(assert (=> d!1146475 (= lt!1347367 (maxPrefix!3269 thiss!20629 rules!2768 lt!1347203))))

(assert (=> d!1146475 (= (lexList!1733 thiss!20629 rules!2768 lt!1347203) lt!1347366)))

(declare-fun b!3870831 () Bool)

(declare-fun e!2394132 () Bool)

(assert (=> b!3870831 (= e!2394130 e!2394132)))

(declare-fun res!1567863 () Bool)

(assert (=> b!3870831 (= res!1567863 (< (size!30902 (_2!23302 lt!1347366)) (size!30902 lt!1347203)))))

(assert (=> b!3870831 (=> (not res!1567863) (not e!2394132))))

(declare-fun b!3870832 () Bool)

(assert (=> b!3870832 (= e!2394132 (not (isEmpty!24389 (_1!23302 lt!1347366))))))

(declare-fun b!3870833 () Bool)

(declare-fun lt!1347365 () tuple2!40336)

(assert (=> b!3870833 (= e!2394131 (tuple2!40337 (Cons!41114 (_1!23301 (v!39091 lt!1347367)) (_1!23302 lt!1347365)) (_2!23302 lt!1347365)))))

(assert (=> b!3870833 (= lt!1347365 (lexList!1733 thiss!20629 rules!2768 (_2!23301 (v!39091 lt!1347367))))))

(declare-fun b!3870834 () Bool)

(assert (=> b!3870834 (= e!2394131 (tuple2!40337 Nil!41114 lt!1347203))))

(assert (= (and d!1146475 c!673618) b!3870833))

(assert (= (and d!1146475 (not c!673618)) b!3870834))

(assert (= (and d!1146475 c!673617) b!3870831))

(assert (= (and d!1146475 (not c!673617)) b!3870830))

(assert (= (and b!3870831 res!1567863) b!3870832))

(declare-fun m!4427431 () Bool)

(assert (=> d!1146475 m!4427431))

(assert (=> d!1146475 m!4426947))

(declare-fun m!4427433 () Bool)

(assert (=> b!3870831 m!4427433))

(assert (=> b!3870831 m!4426861))

(declare-fun m!4427435 () Bool)

(assert (=> b!3870832 m!4427435))

(declare-fun m!4427437 () Bool)

(assert (=> b!3870833 m!4427437))

(assert (=> b!3870522 d!1146475))

(declare-fun b!3870836 () Bool)

(declare-fun e!2394133 () List!41238)

(assert (=> b!3870836 (= e!2394133 (Cons!41114 (h!46534 prefixTokens!80) (++!10509 (t!314401 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3870837 () Bool)

(declare-fun res!1567865 () Bool)

(declare-fun e!2394134 () Bool)

(assert (=> b!3870837 (=> (not res!1567865) (not e!2394134))))

(declare-fun lt!1347368 () List!41238)

(assert (=> b!3870837 (= res!1567865 (= (size!30905 lt!1347368) (+ (size!30905 prefixTokens!80) (size!30905 suffixTokens!72))))))

(declare-fun b!3870838 () Bool)

(assert (=> b!3870838 (= e!2394134 (or (not (= suffixTokens!72 Nil!41114)) (= lt!1347368 prefixTokens!80)))))

(declare-fun b!3870835 () Bool)

(assert (=> b!3870835 (= e!2394133 suffixTokens!72)))

(declare-fun d!1146477 () Bool)

(assert (=> d!1146477 e!2394134))

(declare-fun res!1567864 () Bool)

(assert (=> d!1146477 (=> (not res!1567864) (not e!2394134))))

(assert (=> d!1146477 (= res!1567864 (= (content!6140 lt!1347368) ((_ map or) (content!6140 prefixTokens!80) (content!6140 suffixTokens!72))))))

(assert (=> d!1146477 (= lt!1347368 e!2394133)))

(declare-fun c!673619 () Bool)

(assert (=> d!1146477 (= c!673619 ((_ is Nil!41114) prefixTokens!80))))

(assert (=> d!1146477 (= (++!10509 prefixTokens!80 suffixTokens!72) lt!1347368)))

(assert (= (and d!1146477 c!673619) b!3870835))

(assert (= (and d!1146477 (not c!673619)) b!3870836))

(assert (= (and d!1146477 res!1567864) b!3870837))

(assert (= (and b!3870837 res!1567865) b!3870838))

(declare-fun m!4427439 () Bool)

(assert (=> b!3870836 m!4427439))

(declare-fun m!4427441 () Bool)

(assert (=> b!3870837 m!4427441))

(declare-fun m!4427443 () Bool)

(assert (=> b!3870837 m!4427443))

(assert (=> b!3870837 m!4426977))

(declare-fun m!4427445 () Bool)

(assert (=> d!1146477 m!4427445))

(declare-fun m!4427447 () Bool)

(assert (=> d!1146477 m!4427447))

(assert (=> d!1146477 m!4426983))

(assert (=> b!3870522 d!1146477))

(declare-fun b!3870839 () Bool)

(declare-fun e!2394135 () List!41236)

(assert (=> b!3870839 (= e!2394135 suffix!1176)))

(declare-fun lt!1347369 () List!41236)

(declare-fun b!3870842 () Bool)

(declare-fun e!2394136 () Bool)

(assert (=> b!3870842 (= e!2394136 (or (not (= suffix!1176 Nil!41112)) (= lt!1347369 prefix!426)))))

(declare-fun b!3870841 () Bool)

(declare-fun res!1567866 () Bool)

(assert (=> b!3870841 (=> (not res!1567866) (not e!2394136))))

(assert (=> b!3870841 (= res!1567866 (= (size!30902 lt!1347369) (+ (size!30902 prefix!426) (size!30902 suffix!1176))))))

(declare-fun d!1146479 () Bool)

(assert (=> d!1146479 e!2394136))

(declare-fun res!1567867 () Bool)

(assert (=> d!1146479 (=> (not res!1567867) (not e!2394136))))

(assert (=> d!1146479 (= res!1567867 (= (content!6141 lt!1347369) ((_ map or) (content!6141 prefix!426) (content!6141 suffix!1176))))))

(assert (=> d!1146479 (= lt!1347369 e!2394135)))

(declare-fun c!673620 () Bool)

(assert (=> d!1146479 (= c!673620 ((_ is Nil!41112) prefix!426))))

(assert (=> d!1146479 (= (++!10510 prefix!426 suffix!1176) lt!1347369)))

(declare-fun b!3870840 () Bool)

(assert (=> b!3870840 (= e!2394135 (Cons!41112 (h!46532 prefix!426) (++!10510 (t!314399 prefix!426) suffix!1176)))))

(assert (= (and d!1146479 c!673620) b!3870839))

(assert (= (and d!1146479 (not c!673620)) b!3870840))

(assert (= (and d!1146479 res!1567867) b!3870841))

(assert (= (and b!3870841 res!1567866) b!3870842))

(declare-fun m!4427449 () Bool)

(assert (=> b!3870841 m!4427449))

(assert (=> b!3870841 m!4426821))

(assert (=> b!3870841 m!4426941))

(declare-fun m!4427451 () Bool)

(assert (=> d!1146479 m!4427451))

(declare-fun m!4427453 () Bool)

(assert (=> d!1146479 m!4427453))

(assert (=> d!1146479 m!4427009))

(declare-fun m!4427455 () Bool)

(assert (=> b!3870840 m!4427455))

(assert (=> b!3870522 d!1146479))

(declare-fun d!1146481 () Bool)

(assert (=> d!1146481 (not (= (lexList!1733 thiss!20629 rules!2768 (_2!23301 lt!1347185)) (tuple2!40337 (++!10509 lt!1347201 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1347382 () Unit!58933)

(declare-fun choose!22878 (LexerInterface!5965 List!41239 List!41236 List!41236 List!41238 List!41236 List!41238) Unit!58933)

(assert (=> d!1146481 (= lt!1347382 (choose!22878 thiss!20629 rules!2768 suffix!1176 (_2!23301 lt!1347185) suffixTokens!72 suffixResult!91 lt!1347201))))

(assert (=> d!1146481 (not (isEmpty!24390 rules!2768))))

(assert (=> d!1146481 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!36 thiss!20629 rules!2768 suffix!1176 (_2!23301 lt!1347185) suffixTokens!72 suffixResult!91 lt!1347201) lt!1347382)))

(declare-fun bs!583455 () Bool)

(assert (= bs!583455 d!1146481))

(assert (=> bs!583455 m!4426841))

(assert (=> bs!583455 m!4426931))

(declare-fun m!4427457 () Bool)

(assert (=> bs!583455 m!4427457))

(assert (=> bs!583455 m!4426953))

(assert (=> b!3870500 d!1146481))

(declare-fun b!3870862 () Bool)

(declare-fun e!2394143 () List!41238)

(assert (=> b!3870862 (= e!2394143 (Cons!41114 (h!46534 lt!1347201) (++!10509 (t!314401 lt!1347201) suffixTokens!72)))))

(declare-fun b!3870863 () Bool)

(declare-fun res!1567883 () Bool)

(declare-fun e!2394144 () Bool)

(assert (=> b!3870863 (=> (not res!1567883) (not e!2394144))))

(declare-fun lt!1347383 () List!41238)

(assert (=> b!3870863 (= res!1567883 (= (size!30905 lt!1347383) (+ (size!30905 lt!1347201) (size!30905 suffixTokens!72))))))

(declare-fun b!3870864 () Bool)

(assert (=> b!3870864 (= e!2394144 (or (not (= suffixTokens!72 Nil!41114)) (= lt!1347383 lt!1347201)))))

(declare-fun b!3870861 () Bool)

(assert (=> b!3870861 (= e!2394143 suffixTokens!72)))

(declare-fun d!1146483 () Bool)

(assert (=> d!1146483 e!2394144))

(declare-fun res!1567882 () Bool)

(assert (=> d!1146483 (=> (not res!1567882) (not e!2394144))))

(assert (=> d!1146483 (= res!1567882 (= (content!6140 lt!1347383) ((_ map or) (content!6140 lt!1347201) (content!6140 suffixTokens!72))))))

(assert (=> d!1146483 (= lt!1347383 e!2394143)))

(declare-fun c!673623 () Bool)

(assert (=> d!1146483 (= c!673623 ((_ is Nil!41114) lt!1347201))))

(assert (=> d!1146483 (= (++!10509 lt!1347201 suffixTokens!72) lt!1347383)))

(assert (= (and d!1146483 c!673623) b!3870861))

(assert (= (and d!1146483 (not c!673623)) b!3870862))

(assert (= (and d!1146483 res!1567882) b!3870863))

(assert (= (and b!3870863 res!1567883) b!3870864))

(declare-fun m!4427459 () Bool)

(assert (=> b!3870862 m!4427459))

(declare-fun m!4427461 () Bool)

(assert (=> b!3870863 m!4427461))

(declare-fun m!4427463 () Bool)

(assert (=> b!3870863 m!4427463))

(assert (=> b!3870863 m!4426977))

(declare-fun m!4427465 () Bool)

(assert (=> d!1146483 m!4427465))

(declare-fun m!4427467 () Bool)

(assert (=> d!1146483 m!4427467))

(assert (=> d!1146483 m!4426983))

(assert (=> b!3870500 d!1146483))

(declare-fun d!1146485 () Bool)

(declare-fun res!1567888 () Bool)

(declare-fun e!2394147 () Bool)

(assert (=> d!1146485 (=> (not res!1567888) (not e!2394147))))

(assert (=> d!1146485 (= res!1567888 (not (isEmpty!24388 (originalCharacters!6976 (h!46534 suffixTokens!72)))))))

(assert (=> d!1146485 (= (inv!55272 (h!46534 suffixTokens!72)) e!2394147)))

(declare-fun b!3870869 () Bool)

(declare-fun res!1567889 () Bool)

(assert (=> b!3870869 (=> (not res!1567889) (not e!2394147))))

(assert (=> b!3870869 (= res!1567889 (= (originalCharacters!6976 (h!46534 suffixTokens!72)) (list!15294 (dynLambda!17693 (toChars!8663 (transformation!6376 (rule!9262 (h!46534 suffixTokens!72)))) (value!202350 (h!46534 suffixTokens!72))))))))

(declare-fun b!3870870 () Bool)

(assert (=> b!3870870 (= e!2394147 (= (size!30901 (h!46534 suffixTokens!72)) (size!30902 (originalCharacters!6976 (h!46534 suffixTokens!72)))))))

(assert (= (and d!1146485 res!1567888) b!3870869))

(assert (= (and b!3870869 res!1567889) b!3870870))

(declare-fun b_lambda!113061 () Bool)

(assert (=> (not b_lambda!113061) (not b!3870869)))

(declare-fun tb!224483 () Bool)

(declare-fun t!314422 () Bool)

(assert (=> (and b!3870502 (= (toChars!8663 (transformation!6376 (rule!9262 (h!46534 prefixTokens!80)))) (toChars!8663 (transformation!6376 (rule!9262 (h!46534 suffixTokens!72))))) t!314422) tb!224483))

(declare-fun b!3870871 () Bool)

(declare-fun e!2394148 () Bool)

(declare-fun tp!1173565 () Bool)

(assert (=> b!3870871 (= e!2394148 (and (inv!55276 (c!673543 (dynLambda!17693 (toChars!8663 (transformation!6376 (rule!9262 (h!46534 suffixTokens!72)))) (value!202350 (h!46534 suffixTokens!72))))) tp!1173565))))

(declare-fun result!273418 () Bool)

(assert (=> tb!224483 (= result!273418 (and (inv!55277 (dynLambda!17693 (toChars!8663 (transformation!6376 (rule!9262 (h!46534 suffixTokens!72)))) (value!202350 (h!46534 suffixTokens!72)))) e!2394148))))

(assert (= tb!224483 b!3870871))

(declare-fun m!4427469 () Bool)

(assert (=> b!3870871 m!4427469))

(declare-fun m!4427471 () Bool)

(assert (=> tb!224483 m!4427471))

(assert (=> b!3870869 t!314422))

(declare-fun b_and!290121 () Bool)

(assert (= b_and!290115 (and (=> t!314422 result!273418) b_and!290121)))

(declare-fun t!314424 () Bool)

(declare-fun tb!224485 () Bool)

(assert (=> (and b!3870490 (= (toChars!8663 (transformation!6376 (rule!9262 (h!46534 suffixTokens!72)))) (toChars!8663 (transformation!6376 (rule!9262 (h!46534 suffixTokens!72))))) t!314424) tb!224485))

(declare-fun result!273420 () Bool)

(assert (= result!273420 result!273418))

(assert (=> b!3870869 t!314424))

(declare-fun b_and!290123 () Bool)

(assert (= b_and!290117 (and (=> t!314424 result!273420) b_and!290123)))

(declare-fun t!314426 () Bool)

(declare-fun tb!224487 () Bool)

(assert (=> (and b!3870512 (= (toChars!8663 (transformation!6376 (h!46535 rules!2768))) (toChars!8663 (transformation!6376 (rule!9262 (h!46534 suffixTokens!72))))) t!314426) tb!224487))

(declare-fun result!273422 () Bool)

(assert (= result!273422 result!273418))

(assert (=> b!3870869 t!314426))

(declare-fun b_and!290125 () Bool)

(assert (= b_and!290119 (and (=> t!314426 result!273422) b_and!290125)))

(declare-fun m!4427473 () Bool)

(assert (=> d!1146485 m!4427473))

(declare-fun m!4427475 () Bool)

(assert (=> b!3870869 m!4427475))

(assert (=> b!3870869 m!4427475))

(declare-fun m!4427477 () Bool)

(assert (=> b!3870869 m!4427477))

(declare-fun m!4427479 () Bool)

(assert (=> b!3870870 m!4427479))

(assert (=> b!3870480 d!1146485))

(declare-fun d!1146487 () Bool)

(assert (=> d!1146487 (= (isEmpty!24388 prefix!426) ((_ is Nil!41112) prefix!426))))

(assert (=> b!3870479 d!1146487))

(declare-fun d!1146489 () Bool)

(assert (=> d!1146489 (= (get!13604 lt!1347208) (v!39091 lt!1347208))))

(assert (=> b!3870521 d!1146489))

(declare-fun d!1146491 () Bool)

(assert (=> d!1146491 (= (maxPrefixOneRule!2351 thiss!20629 (rule!9262 (_1!23301 (v!39091 lt!1347208))) lt!1347203) (Some!8793 (tuple2!40335 (Token!11891 (apply!9619 (transformation!6376 (rule!9262 (_1!23301 (v!39091 lt!1347208)))) (seqFromList!4647 lt!1347207)) (rule!9262 (_1!23301 (v!39091 lt!1347208))) (size!30902 lt!1347207) lt!1347207) (_2!23301 (v!39091 lt!1347208)))))))

(declare-fun lt!1347401 () Unit!58933)

(declare-fun choose!22880 (LexerInterface!5965 List!41239 List!41236 List!41236 List!41236 Rule!12552) Unit!58933)

(assert (=> d!1146491 (= lt!1347401 (choose!22880 thiss!20629 rules!2768 lt!1347207 lt!1347203 (_2!23301 (v!39091 lt!1347208)) (rule!9262 (_1!23301 (v!39091 lt!1347208)))))))

(assert (=> d!1146491 (not (isEmpty!24390 rules!2768))))

(assert (=> d!1146491 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1249 thiss!20629 rules!2768 lt!1347207 lt!1347203 (_2!23301 (v!39091 lt!1347208)) (rule!9262 (_1!23301 (v!39091 lt!1347208)))) lt!1347401)))

(declare-fun bs!583458 () Bool)

(assert (= bs!583458 d!1146491))

(assert (=> bs!583458 m!4426899))

(assert (=> bs!583458 m!4426899))

(assert (=> bs!583458 m!4426901))

(declare-fun m!4427557 () Bool)

(assert (=> bs!583458 m!4427557))

(assert (=> bs!583458 m!4426953))

(assert (=> bs!583458 m!4426883))

(assert (=> bs!583458 m!4426865))

(assert (=> b!3870521 d!1146491))

(declare-fun b!3871010 () Bool)

(declare-fun e!2394235 () Option!8794)

(assert (=> b!3871010 (= e!2394235 None!8793)))

(declare-fun b!3871011 () Bool)

(declare-fun e!2394237 () Bool)

(declare-fun lt!1347448 () Option!8794)

(assert (=> b!3871011 (= e!2394237 (= (size!30901 (_1!23301 (get!13604 lt!1347448))) (size!30902 (originalCharacters!6976 (_1!23301 (get!13604 lt!1347448))))))))

(declare-fun d!1146511 () Bool)

(declare-fun e!2394238 () Bool)

(assert (=> d!1146511 e!2394238))

(declare-fun res!1567951 () Bool)

(assert (=> d!1146511 (=> res!1567951 e!2394238)))

(declare-fun isEmpty!24392 (Option!8794) Bool)

(assert (=> d!1146511 (= res!1567951 (isEmpty!24392 lt!1347448))))

(assert (=> d!1146511 (= lt!1347448 e!2394235)))

(declare-fun c!673649 () Bool)

(declare-datatypes ((tuple2!40340 0))(
  ( (tuple2!40341 (_1!23304 List!41236) (_2!23304 List!41236)) )
))
(declare-fun lt!1347450 () tuple2!40340)

(assert (=> d!1146511 (= c!673649 (isEmpty!24388 (_1!23304 lt!1347450)))))

(declare-fun findLongestMatch!1115 (Regex!11281 List!41236) tuple2!40340)

(assert (=> d!1146511 (= lt!1347450 (findLongestMatch!1115 (regex!6376 (rule!9262 (_1!23301 (v!39091 lt!1347208)))) lt!1347203))))

(assert (=> d!1146511 (ruleValid!2328 thiss!20629 (rule!9262 (_1!23301 (v!39091 lt!1347208))))))

(assert (=> d!1146511 (= (maxPrefixOneRule!2351 thiss!20629 (rule!9262 (_1!23301 (v!39091 lt!1347208))) lt!1347203) lt!1347448)))

(declare-fun b!3871012 () Bool)

(assert (=> b!3871012 (= e!2394238 e!2394237)))

(declare-fun res!1567953 () Bool)

(assert (=> b!3871012 (=> (not res!1567953) (not e!2394237))))

(declare-fun matchR!5412 (Regex!11281 List!41236) Bool)

(assert (=> b!3871012 (= res!1567953 (matchR!5412 (regex!6376 (rule!9262 (_1!23301 (v!39091 lt!1347208)))) (list!15294 (charsOf!4204 (_1!23301 (get!13604 lt!1347448))))))))

(declare-fun b!3871013 () Bool)

(declare-fun res!1567956 () Bool)

(assert (=> b!3871013 (=> (not res!1567956) (not e!2394237))))

(assert (=> b!3871013 (= res!1567956 (= (++!10510 (list!15294 (charsOf!4204 (_1!23301 (get!13604 lt!1347448)))) (_2!23301 (get!13604 lt!1347448))) lt!1347203))))

(declare-fun b!3871014 () Bool)

(declare-fun res!1567950 () Bool)

(assert (=> b!3871014 (=> (not res!1567950) (not e!2394237))))

(assert (=> b!3871014 (= res!1567950 (< (size!30902 (_2!23301 (get!13604 lt!1347448))) (size!30902 lt!1347203)))))

(declare-fun b!3871015 () Bool)

(declare-fun res!1567954 () Bool)

(assert (=> b!3871015 (=> (not res!1567954) (not e!2394237))))

(assert (=> b!3871015 (= res!1567954 (= (rule!9262 (_1!23301 (get!13604 lt!1347448))) (rule!9262 (_1!23301 (v!39091 lt!1347208)))))))

(declare-fun b!3871016 () Bool)

(declare-fun size!30906 (BalanceConc!24768) Int)

(assert (=> b!3871016 (= e!2394235 (Some!8793 (tuple2!40335 (Token!11891 (apply!9619 (transformation!6376 (rule!9262 (_1!23301 (v!39091 lt!1347208)))) (seqFromList!4647 (_1!23304 lt!1347450))) (rule!9262 (_1!23301 (v!39091 lt!1347208))) (size!30906 (seqFromList!4647 (_1!23304 lt!1347450))) (_1!23304 lt!1347450)) (_2!23304 lt!1347450))))))

(declare-fun lt!1347452 () Unit!58933)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1175 (Regex!11281 List!41236) Unit!58933)

(assert (=> b!3871016 (= lt!1347452 (longestMatchIsAcceptedByMatchOrIsEmpty!1175 (regex!6376 (rule!9262 (_1!23301 (v!39091 lt!1347208)))) lt!1347203))))

(declare-fun res!1567952 () Bool)

(declare-fun findLongestMatchInner!1202 (Regex!11281 List!41236 Int List!41236 List!41236 Int) tuple2!40340)

(assert (=> b!3871016 (= res!1567952 (isEmpty!24388 (_1!23304 (findLongestMatchInner!1202 (regex!6376 (rule!9262 (_1!23301 (v!39091 lt!1347208)))) Nil!41112 (size!30902 Nil!41112) lt!1347203 lt!1347203 (size!30902 lt!1347203)))))))

(declare-fun e!2394236 () Bool)

(assert (=> b!3871016 (=> res!1567952 e!2394236)))

(assert (=> b!3871016 e!2394236))

(declare-fun lt!1347451 () Unit!58933)

(assert (=> b!3871016 (= lt!1347451 lt!1347452)))

(declare-fun lt!1347449 () Unit!58933)

(declare-fun lemmaSemiInverse!1708 (TokenValueInjection!12640 BalanceConc!24768) Unit!58933)

(assert (=> b!3871016 (= lt!1347449 (lemmaSemiInverse!1708 (transformation!6376 (rule!9262 (_1!23301 (v!39091 lt!1347208)))) (seqFromList!4647 (_1!23304 lt!1347450))))))

(declare-fun b!3871017 () Bool)

(assert (=> b!3871017 (= e!2394236 (matchR!5412 (regex!6376 (rule!9262 (_1!23301 (v!39091 lt!1347208)))) (_1!23304 (findLongestMatchInner!1202 (regex!6376 (rule!9262 (_1!23301 (v!39091 lt!1347208)))) Nil!41112 (size!30902 Nil!41112) lt!1347203 lt!1347203 (size!30902 lt!1347203)))))))

(declare-fun b!3871018 () Bool)

(declare-fun res!1567955 () Bool)

(assert (=> b!3871018 (=> (not res!1567955) (not e!2394237))))

(assert (=> b!3871018 (= res!1567955 (= (value!202350 (_1!23301 (get!13604 lt!1347448))) (apply!9619 (transformation!6376 (rule!9262 (_1!23301 (get!13604 lt!1347448)))) (seqFromList!4647 (originalCharacters!6976 (_1!23301 (get!13604 lt!1347448)))))))))

(assert (= (and d!1146511 c!673649) b!3871010))

(assert (= (and d!1146511 (not c!673649)) b!3871016))

(assert (= (and b!3871016 (not res!1567952)) b!3871017))

(assert (= (and d!1146511 (not res!1567951)) b!3871012))

(assert (= (and b!3871012 res!1567953) b!3871013))

(assert (= (and b!3871013 res!1567956) b!3871014))

(assert (= (and b!3871014 res!1567950) b!3871015))

(assert (= (and b!3871015 res!1567954) b!3871018))

(assert (= (and b!3871018 res!1567955) b!3871011))

(declare-fun m!4427699 () Bool)

(assert (=> b!3871014 m!4427699))

(declare-fun m!4427701 () Bool)

(assert (=> b!3871014 m!4427701))

(assert (=> b!3871014 m!4426861))

(assert (=> b!3871018 m!4427699))

(declare-fun m!4427703 () Bool)

(assert (=> b!3871018 m!4427703))

(assert (=> b!3871018 m!4427703))

(declare-fun m!4427705 () Bool)

(assert (=> b!3871018 m!4427705))

(assert (=> b!3871012 m!4427699))

(declare-fun m!4427707 () Bool)

(assert (=> b!3871012 m!4427707))

(assert (=> b!3871012 m!4427707))

(declare-fun m!4427709 () Bool)

(assert (=> b!3871012 m!4427709))

(assert (=> b!3871012 m!4427709))

(declare-fun m!4427711 () Bool)

(assert (=> b!3871012 m!4427711))

(declare-fun m!4427713 () Bool)

(assert (=> b!3871016 m!4427713))

(declare-fun m!4427715 () Bool)

(assert (=> b!3871016 m!4427715))

(assert (=> b!3871016 m!4427713))

(assert (=> b!3871016 m!4426861))

(declare-fun m!4427717 () Bool)

(assert (=> b!3871016 m!4427717))

(assert (=> b!3871016 m!4426861))

(declare-fun m!4427719 () Bool)

(assert (=> b!3871016 m!4427719))

(assert (=> b!3871016 m!4427713))

(declare-fun m!4427721 () Bool)

(assert (=> b!3871016 m!4427721))

(assert (=> b!3871016 m!4427713))

(declare-fun m!4427723 () Bool)

(assert (=> b!3871016 m!4427723))

(declare-fun m!4427725 () Bool)

(assert (=> b!3871016 m!4427725))

(assert (=> b!3871016 m!4427717))

(declare-fun m!4427727 () Bool)

(assert (=> b!3871016 m!4427727))

(assert (=> b!3871013 m!4427699))

(assert (=> b!3871013 m!4427707))

(assert (=> b!3871013 m!4427707))

(assert (=> b!3871013 m!4427709))

(assert (=> b!3871013 m!4427709))

(declare-fun m!4427733 () Bool)

(assert (=> b!3871013 m!4427733))

(assert (=> b!3871015 m!4427699))

(declare-fun m!4427735 () Bool)

(assert (=> d!1146511 m!4427735))

(declare-fun m!4427737 () Bool)

(assert (=> d!1146511 m!4427737))

(declare-fun m!4427739 () Bool)

(assert (=> d!1146511 m!4427739))

(assert (=> d!1146511 m!4426887))

(assert (=> b!3871011 m!4427699))

(declare-fun m!4427741 () Bool)

(assert (=> b!3871011 m!4427741))

(assert (=> b!3871017 m!4427717))

(assert (=> b!3871017 m!4426861))

(assert (=> b!3871017 m!4427717))

(assert (=> b!3871017 m!4426861))

(assert (=> b!3871017 m!4427719))

(declare-fun m!4427743 () Bool)

(assert (=> b!3871017 m!4427743))

(assert (=> b!3870521 d!1146511))

(declare-fun d!1146577 () Bool)

(declare-fun lt!1347453 () Int)

(assert (=> d!1146577 (>= lt!1347453 0)))

(declare-fun e!2394255 () Int)

(assert (=> d!1146577 (= lt!1347453 e!2394255)))

(declare-fun c!673650 () Bool)

(assert (=> d!1146577 (= c!673650 ((_ is Nil!41112) lt!1347203))))

(assert (=> d!1146577 (= (size!30902 lt!1347203) lt!1347453)))

(declare-fun b!3871042 () Bool)

(assert (=> b!3871042 (= e!2394255 0)))

(declare-fun b!3871043 () Bool)

(assert (=> b!3871043 (= e!2394255 (+ 1 (size!30902 (t!314399 lt!1347203))))))

(assert (= (and d!1146577 c!673650) b!3871042))

(assert (= (and d!1146577 (not c!673650)) b!3871043))

(declare-fun m!4427745 () Bool)

(assert (=> b!3871043 m!4427745))

(assert (=> b!3870521 d!1146577))

(declare-fun d!1146579 () Bool)

(declare-fun lt!1347454 () Int)

(assert (=> d!1146579 (>= lt!1347454 0)))

(declare-fun e!2394258 () Int)

(assert (=> d!1146579 (= lt!1347454 e!2394258)))

(declare-fun c!673651 () Bool)

(assert (=> d!1146579 (= c!673651 ((_ is Nil!41112) (_2!23301 lt!1347185)))))

(assert (=> d!1146579 (= (size!30902 (_2!23301 lt!1347185)) lt!1347454)))

(declare-fun b!3871046 () Bool)

(assert (=> b!3871046 (= e!2394258 0)))

(declare-fun b!3871047 () Bool)

(assert (=> b!3871047 (= e!2394258 (+ 1 (size!30902 (t!314399 (_2!23301 lt!1347185)))))))

(assert (= (and d!1146579 c!673651) b!3871046))

(assert (= (and d!1146579 (not c!673651)) b!3871047))

(declare-fun m!4427747 () Bool)

(assert (=> b!3871047 m!4427747))

(assert (=> b!3870521 d!1146579))

(assert (=> b!3870520 d!1146351))

(assert (=> b!3870520 d!1146349))

(declare-fun d!1146581 () Bool)

(assert (=> d!1146581 (= lt!1347207 prefix!426)))

(declare-fun lt!1347457 () Unit!58933)

(declare-fun choose!22882 (List!41236 List!41236 List!41236) Unit!58933)

(assert (=> d!1146581 (= lt!1347457 (choose!22882 lt!1347207 prefix!426 lt!1347203))))

(assert (=> d!1146581 (isPrefix!3475 lt!1347207 lt!1347203)))

(assert (=> d!1146581 (= (lemmaIsPrefixSameLengthThenSameList!727 lt!1347207 prefix!426 lt!1347203) lt!1347457)))

(declare-fun bs!583471 () Bool)

(assert (= bs!583471 d!1146581))

(declare-fun m!4427757 () Bool)

(assert (=> bs!583471 m!4427757))

(assert (=> bs!583471 m!4427021))

(assert (=> b!3870520 d!1146581))

(declare-fun d!1146583 () Bool)

(assert (=> d!1146583 (= (_2!23301 (v!39091 lt!1347208)) suffix!1176)))

(declare-fun lt!1347458 () Unit!58933)

(assert (=> d!1146583 (= lt!1347458 (choose!22866 lt!1347207 (_2!23301 (v!39091 lt!1347208)) prefix!426 suffix!1176 lt!1347203))))

(assert (=> d!1146583 (isPrefix!3475 lt!1347207 lt!1347203)))

(assert (=> d!1146583 (= (lemmaSamePrefixThenSameSuffix!1696 lt!1347207 (_2!23301 (v!39091 lt!1347208)) prefix!426 suffix!1176 lt!1347203) lt!1347458)))

(declare-fun bs!583472 () Bool)

(assert (= bs!583472 d!1146583))

(declare-fun m!4427759 () Bool)

(assert (=> bs!583472 m!4427759))

(assert (=> bs!583472 m!4427021))

(assert (=> b!3870520 d!1146583))

(declare-fun d!1146585 () Bool)

(assert (=> d!1146585 (= (inv!55269 (tag!7236 (rule!9262 (h!46534 prefixTokens!80)))) (= (mod (str.len (value!202349 (tag!7236 (rule!9262 (h!46534 prefixTokens!80))))) 2) 0))))

(assert (=> b!3870499 d!1146585))

(declare-fun d!1146587 () Bool)

(declare-fun res!1567957 () Bool)

(declare-fun e!2394269 () Bool)

(assert (=> d!1146587 (=> (not res!1567957) (not e!2394269))))

(assert (=> d!1146587 (= res!1567957 (semiInverseModEq!2735 (toChars!8663 (transformation!6376 (rule!9262 (h!46534 prefixTokens!80)))) (toValue!8804 (transformation!6376 (rule!9262 (h!46534 prefixTokens!80))))))))

(assert (=> d!1146587 (= (inv!55273 (transformation!6376 (rule!9262 (h!46534 prefixTokens!80)))) e!2394269)))

(declare-fun b!3871059 () Bool)

(assert (=> b!3871059 (= e!2394269 (equivClasses!2634 (toChars!8663 (transformation!6376 (rule!9262 (h!46534 prefixTokens!80)))) (toValue!8804 (transformation!6376 (rule!9262 (h!46534 prefixTokens!80))))))))

(assert (= (and d!1146587 res!1567957) b!3871059))

(declare-fun m!4427761 () Bool)

(assert (=> d!1146587 m!4427761))

(declare-fun m!4427763 () Bool)

(assert (=> b!3871059 m!4427763))

(assert (=> b!3870499 d!1146587))

(declare-fun b!3871078 () Bool)

(declare-fun e!2394277 () Bool)

(declare-fun e!2394276 () Bool)

(assert (=> b!3871078 (= e!2394277 e!2394276)))

(declare-fun res!1567972 () Bool)

(assert (=> b!3871078 (=> (not res!1567972) (not e!2394276))))

(declare-fun lt!1347471 () Option!8794)

(declare-fun isDefined!6883 (Option!8794) Bool)

(assert (=> b!3871078 (= res!1567972 (isDefined!6883 lt!1347471))))

(declare-fun b!3871079 () Bool)

(declare-fun e!2394278 () Option!8794)

(declare-fun lt!1347470 () Option!8794)

(declare-fun lt!1347473 () Option!8794)

(assert (=> b!3871079 (= e!2394278 (ite (and ((_ is None!8793) lt!1347470) ((_ is None!8793) lt!1347473)) None!8793 (ite ((_ is None!8793) lt!1347473) lt!1347470 (ite ((_ is None!8793) lt!1347470) lt!1347473 (ite (>= (size!30901 (_1!23301 (v!39091 lt!1347470))) (size!30901 (_1!23301 (v!39091 lt!1347473)))) lt!1347470 lt!1347473)))))))

(declare-fun call!282726 () Option!8794)

(assert (=> b!3871079 (= lt!1347470 call!282726)))

(assert (=> b!3871079 (= lt!1347473 (maxPrefix!3269 thiss!20629 (t!314402 rules!2768) lt!1347203))))

(declare-fun b!3871080 () Bool)

(declare-fun res!1567976 () Bool)

(assert (=> b!3871080 (=> (not res!1567976) (not e!2394276))))

(assert (=> b!3871080 (= res!1567976 (matchR!5412 (regex!6376 (rule!9262 (_1!23301 (get!13604 lt!1347471)))) (list!15294 (charsOf!4204 (_1!23301 (get!13604 lt!1347471))))))))

(declare-fun b!3871081 () Bool)

(assert (=> b!3871081 (= e!2394276 (contains!8287 rules!2768 (rule!9262 (_1!23301 (get!13604 lt!1347471)))))))

(declare-fun b!3871082 () Bool)

(declare-fun res!1567975 () Bool)

(assert (=> b!3871082 (=> (not res!1567975) (not e!2394276))))

(assert (=> b!3871082 (= res!1567975 (= (list!15294 (charsOf!4204 (_1!23301 (get!13604 lt!1347471)))) (originalCharacters!6976 (_1!23301 (get!13604 lt!1347471)))))))

(declare-fun b!3871083 () Bool)

(declare-fun res!1567973 () Bool)

(assert (=> b!3871083 (=> (not res!1567973) (not e!2394276))))

(assert (=> b!3871083 (= res!1567973 (= (++!10510 (list!15294 (charsOf!4204 (_1!23301 (get!13604 lt!1347471)))) (_2!23301 (get!13604 lt!1347471))) lt!1347203))))

(declare-fun d!1146589 () Bool)

(assert (=> d!1146589 e!2394277))

(declare-fun res!1567977 () Bool)

(assert (=> d!1146589 (=> res!1567977 e!2394277)))

(assert (=> d!1146589 (= res!1567977 (isEmpty!24392 lt!1347471))))

(assert (=> d!1146589 (= lt!1347471 e!2394278)))

(declare-fun c!673654 () Bool)

(assert (=> d!1146589 (= c!673654 (and ((_ is Cons!41115) rules!2768) ((_ is Nil!41115) (t!314402 rules!2768))))))

(declare-fun lt!1347472 () Unit!58933)

(declare-fun lt!1347469 () Unit!58933)

(assert (=> d!1146589 (= lt!1347472 lt!1347469)))

(assert (=> d!1146589 (isPrefix!3475 lt!1347203 lt!1347203)))

(declare-fun lemmaIsPrefixRefl!2206 (List!41236 List!41236) Unit!58933)

(assert (=> d!1146589 (= lt!1347469 (lemmaIsPrefixRefl!2206 lt!1347203 lt!1347203))))

(declare-fun rulesValidInductive!2280 (LexerInterface!5965 List!41239) Bool)

(assert (=> d!1146589 (rulesValidInductive!2280 thiss!20629 rules!2768)))

(assert (=> d!1146589 (= (maxPrefix!3269 thiss!20629 rules!2768 lt!1347203) lt!1347471)))

(declare-fun b!3871084 () Bool)

(declare-fun res!1567974 () Bool)

(assert (=> b!3871084 (=> (not res!1567974) (not e!2394276))))

(assert (=> b!3871084 (= res!1567974 (= (value!202350 (_1!23301 (get!13604 lt!1347471))) (apply!9619 (transformation!6376 (rule!9262 (_1!23301 (get!13604 lt!1347471)))) (seqFromList!4647 (originalCharacters!6976 (_1!23301 (get!13604 lt!1347471)))))))))

(declare-fun bm!282721 () Bool)

(assert (=> bm!282721 (= call!282726 (maxPrefixOneRule!2351 thiss!20629 (h!46535 rules!2768) lt!1347203))))

(declare-fun b!3871085 () Bool)

(assert (=> b!3871085 (= e!2394278 call!282726)))

(declare-fun b!3871086 () Bool)

(declare-fun res!1567978 () Bool)

(assert (=> b!3871086 (=> (not res!1567978) (not e!2394276))))

(assert (=> b!3871086 (= res!1567978 (< (size!30902 (_2!23301 (get!13604 lt!1347471))) (size!30902 lt!1347203)))))

(assert (= (and d!1146589 c!673654) b!3871085))

(assert (= (and d!1146589 (not c!673654)) b!3871079))

(assert (= (or b!3871085 b!3871079) bm!282721))

(assert (= (and d!1146589 (not res!1567977)) b!3871078))

(assert (= (and b!3871078 res!1567972) b!3871082))

(assert (= (and b!3871082 res!1567975) b!3871086))

(assert (= (and b!3871086 res!1567978) b!3871083))

(assert (= (and b!3871083 res!1567973) b!3871084))

(assert (= (and b!3871084 res!1567974) b!3871080))

(assert (= (and b!3871080 res!1567976) b!3871081))

(declare-fun m!4427765 () Bool)

(assert (=> b!3871086 m!4427765))

(declare-fun m!4427767 () Bool)

(assert (=> b!3871086 m!4427767))

(assert (=> b!3871086 m!4426861))

(declare-fun m!4427769 () Bool)

(assert (=> bm!282721 m!4427769))

(assert (=> b!3871081 m!4427765))

(declare-fun m!4427771 () Bool)

(assert (=> b!3871081 m!4427771))

(declare-fun m!4427773 () Bool)

(assert (=> b!3871078 m!4427773))

(declare-fun m!4427775 () Bool)

(assert (=> b!3871079 m!4427775))

(assert (=> b!3871082 m!4427765))

(declare-fun m!4427777 () Bool)

(assert (=> b!3871082 m!4427777))

(assert (=> b!3871082 m!4427777))

(declare-fun m!4427779 () Bool)

(assert (=> b!3871082 m!4427779))

(assert (=> b!3871083 m!4427765))

(assert (=> b!3871083 m!4427777))

(assert (=> b!3871083 m!4427777))

(assert (=> b!3871083 m!4427779))

(assert (=> b!3871083 m!4427779))

(declare-fun m!4427781 () Bool)

(assert (=> b!3871083 m!4427781))

(assert (=> b!3871080 m!4427765))

(assert (=> b!3871080 m!4427777))

(assert (=> b!3871080 m!4427777))

(assert (=> b!3871080 m!4427779))

(assert (=> b!3871080 m!4427779))

(declare-fun m!4427783 () Bool)

(assert (=> b!3871080 m!4427783))

(declare-fun m!4427785 () Bool)

(assert (=> d!1146589 m!4427785))

(declare-fun m!4427787 () Bool)

(assert (=> d!1146589 m!4427787))

(declare-fun m!4427789 () Bool)

(assert (=> d!1146589 m!4427789))

(declare-fun m!4427791 () Bool)

(assert (=> d!1146589 m!4427791))

(assert (=> b!3871084 m!4427765))

(declare-fun m!4427793 () Bool)

(assert (=> b!3871084 m!4427793))

(assert (=> b!3871084 m!4427793))

(declare-fun m!4427795 () Bool)

(assert (=> b!3871084 m!4427795))

(assert (=> b!3870498 d!1146589))

(declare-fun d!1146591 () Bool)

(assert (=> d!1146591 (not (= (lexList!1733 thiss!20629 rules!2768 suffix!1176) (tuple2!40337 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1347476 () Unit!58933)

(declare-fun choose!22883 (LexerInterface!5965 List!41239 List!41236 List!41236 List!41238 List!41236) Unit!58933)

(assert (=> d!1146591 (= lt!1347476 (choose!22883 thiss!20629 rules!2768 (_2!23301 (v!39091 lt!1347208)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> d!1146591 (not (isEmpty!24390 rules!2768))))

(assert (=> d!1146591 (= (lemmaLexWithSmallerInputCannotProduceSameResults!36 thiss!20629 rules!2768 (_2!23301 (v!39091 lt!1347208)) suffix!1176 suffixTokens!72 suffixResult!91) lt!1347476)))

(declare-fun bs!583473 () Bool)

(assert (= bs!583473 d!1146591))

(assert (=> bs!583473 m!4426839))

(declare-fun m!4427797 () Bool)

(assert (=> bs!583473 m!4427797))

(assert (=> bs!583473 m!4426953))

(assert (=> b!3870519 d!1146591))

(declare-fun b!3871088 () Bool)

(declare-fun e!2394279 () List!41238)

(assert (=> b!3871088 (= e!2394279 (Cons!41114 (h!46534 lt!1347222) (++!10509 (t!314401 lt!1347222) suffixTokens!72)))))

(declare-fun b!3871089 () Bool)

(declare-fun res!1567980 () Bool)

(declare-fun e!2394280 () Bool)

(assert (=> b!3871089 (=> (not res!1567980) (not e!2394280))))

(declare-fun lt!1347477 () List!41238)

(assert (=> b!3871089 (= res!1567980 (= (size!30905 lt!1347477) (+ (size!30905 lt!1347222) (size!30905 suffixTokens!72))))))

(declare-fun b!3871090 () Bool)

(assert (=> b!3871090 (= e!2394280 (or (not (= suffixTokens!72 Nil!41114)) (= lt!1347477 lt!1347222)))))

(declare-fun b!3871087 () Bool)

(assert (=> b!3871087 (= e!2394279 suffixTokens!72)))

(declare-fun d!1146593 () Bool)

(assert (=> d!1146593 e!2394280))

(declare-fun res!1567979 () Bool)

(assert (=> d!1146593 (=> (not res!1567979) (not e!2394280))))

(assert (=> d!1146593 (= res!1567979 (= (content!6140 lt!1347477) ((_ map or) (content!6140 lt!1347222) (content!6140 suffixTokens!72))))))

(assert (=> d!1146593 (= lt!1347477 e!2394279)))

(declare-fun c!673655 () Bool)

(assert (=> d!1146593 (= c!673655 ((_ is Nil!41114) lt!1347222))))

(assert (=> d!1146593 (= (++!10509 lt!1347222 suffixTokens!72) lt!1347477)))

(assert (= (and d!1146593 c!673655) b!3871087))

(assert (= (and d!1146593 (not c!673655)) b!3871088))

(assert (= (and d!1146593 res!1567979) b!3871089))

(assert (= (and b!3871089 res!1567980) b!3871090))

(declare-fun m!4427799 () Bool)

(assert (=> b!3871088 m!4427799))

(declare-fun m!4427801 () Bool)

(assert (=> b!3871089 m!4427801))

(assert (=> b!3871089 m!4426989))

(assert (=> b!3871089 m!4426977))

(declare-fun m!4427803 () Bool)

(assert (=> d!1146593 m!4427803))

(assert (=> d!1146593 m!4426993))

(assert (=> d!1146593 m!4426983))

(assert (=> b!3870518 d!1146593))

(assert (=> b!3870518 d!1146467))

(declare-fun b!3871093 () Bool)

(declare-fun e!2394283 () Bool)

(assert (=> b!3871093 (= e!2394283 (isPrefix!3475 (tail!5911 lt!1347209) (tail!5911 lt!1347218)))))

(declare-fun b!3871092 () Bool)

(declare-fun res!1567983 () Bool)

(assert (=> b!3871092 (=> (not res!1567983) (not e!2394283))))

(assert (=> b!3871092 (= res!1567983 (= (head!8194 lt!1347209) (head!8194 lt!1347218)))))

(declare-fun b!3871091 () Bool)

(declare-fun e!2394281 () Bool)

(assert (=> b!3871091 (= e!2394281 e!2394283)))

(declare-fun res!1567981 () Bool)

(assert (=> b!3871091 (=> (not res!1567981) (not e!2394283))))

(assert (=> b!3871091 (= res!1567981 (not ((_ is Nil!41112) lt!1347218)))))

(declare-fun b!3871094 () Bool)

(declare-fun e!2394282 () Bool)

(assert (=> b!3871094 (= e!2394282 (>= (size!30902 lt!1347218) (size!30902 lt!1347209)))))

(declare-fun d!1146595 () Bool)

(assert (=> d!1146595 e!2394282))

(declare-fun res!1567984 () Bool)

(assert (=> d!1146595 (=> res!1567984 e!2394282)))

(declare-fun lt!1347478 () Bool)

(assert (=> d!1146595 (= res!1567984 (not lt!1347478))))

(assert (=> d!1146595 (= lt!1347478 e!2394281)))

(declare-fun res!1567982 () Bool)

(assert (=> d!1146595 (=> res!1567982 e!2394281)))

(assert (=> d!1146595 (= res!1567982 ((_ is Nil!41112) lt!1347209))))

(assert (=> d!1146595 (= (isPrefix!3475 lt!1347209 lt!1347218) lt!1347478)))

(assert (= (and d!1146595 (not res!1567982)) b!3871091))

(assert (= (and b!3871091 res!1567981) b!3871092))

(assert (= (and b!3871092 res!1567983) b!3871093))

(assert (= (and d!1146595 (not res!1567984)) b!3871094))

(declare-fun m!4427805 () Bool)

(assert (=> b!3871093 m!4427805))

(declare-fun m!4427807 () Bool)

(assert (=> b!3871093 m!4427807))

(assert (=> b!3871093 m!4427805))

(assert (=> b!3871093 m!4427807))

(declare-fun m!4427809 () Bool)

(assert (=> b!3871093 m!4427809))

(declare-fun m!4427811 () Bool)

(assert (=> b!3871092 m!4427811))

(declare-fun m!4427813 () Bool)

(assert (=> b!3871092 m!4427813))

(assert (=> b!3871094 m!4427371))

(assert (=> b!3871094 m!4427041))

(assert (=> b!3870518 d!1146595))

(declare-fun d!1146597 () Bool)

(assert (=> d!1146597 (isPrefix!3475 lt!1347209 (++!10510 lt!1347209 suffix!1176))))

(declare-fun lt!1347479 () Unit!58933)

(assert (=> d!1146597 (= lt!1347479 (choose!22868 lt!1347209 suffix!1176))))

(assert (=> d!1146597 (= (lemmaConcatTwoListThenFirstIsPrefix!2338 lt!1347209 suffix!1176) lt!1347479)))

(declare-fun bs!583474 () Bool)

(assert (= bs!583474 d!1146597))

(assert (=> bs!583474 m!4426833))

(assert (=> bs!583474 m!4426833))

(declare-fun m!4427815 () Bool)

(assert (=> bs!583474 m!4427815))

(declare-fun m!4427817 () Bool)

(assert (=> bs!583474 m!4427817))

(assert (=> b!3870518 d!1146597))

(declare-fun d!1146599 () Bool)

(declare-fun res!1567985 () Bool)

(declare-fun e!2394284 () Bool)

(assert (=> d!1146599 (=> (not res!1567985) (not e!2394284))))

(assert (=> d!1146599 (= res!1567985 (not (isEmpty!24388 (originalCharacters!6976 (h!46534 prefixTokens!80)))))))

(assert (=> d!1146599 (= (inv!55272 (h!46534 prefixTokens!80)) e!2394284)))

(declare-fun b!3871095 () Bool)

(declare-fun res!1567986 () Bool)

(assert (=> b!3871095 (=> (not res!1567986) (not e!2394284))))

(assert (=> b!3871095 (= res!1567986 (= (originalCharacters!6976 (h!46534 prefixTokens!80)) (list!15294 (dynLambda!17693 (toChars!8663 (transformation!6376 (rule!9262 (h!46534 prefixTokens!80)))) (value!202350 (h!46534 prefixTokens!80))))))))

(declare-fun b!3871096 () Bool)

(assert (=> b!3871096 (= e!2394284 (= (size!30901 (h!46534 prefixTokens!80)) (size!30902 (originalCharacters!6976 (h!46534 prefixTokens!80)))))))

(assert (= (and d!1146599 res!1567985) b!3871095))

(assert (= (and b!3871095 res!1567986) b!3871096))

(declare-fun b_lambda!113073 () Bool)

(assert (=> (not b_lambda!113073) (not b!3871095)))

(declare-fun t!314470 () Bool)

(declare-fun tb!224531 () Bool)

(assert (=> (and b!3870502 (= (toChars!8663 (transformation!6376 (rule!9262 (h!46534 prefixTokens!80)))) (toChars!8663 (transformation!6376 (rule!9262 (h!46534 prefixTokens!80))))) t!314470) tb!224531))

(declare-fun b!3871097 () Bool)

(declare-fun e!2394285 () Bool)

(declare-fun tp!1173632 () Bool)

(assert (=> b!3871097 (= e!2394285 (and (inv!55276 (c!673543 (dynLambda!17693 (toChars!8663 (transformation!6376 (rule!9262 (h!46534 prefixTokens!80)))) (value!202350 (h!46534 prefixTokens!80))))) tp!1173632))))

(declare-fun result!273476 () Bool)

(assert (=> tb!224531 (= result!273476 (and (inv!55277 (dynLambda!17693 (toChars!8663 (transformation!6376 (rule!9262 (h!46534 prefixTokens!80)))) (value!202350 (h!46534 prefixTokens!80)))) e!2394285))))

(assert (= tb!224531 b!3871097))

(declare-fun m!4427819 () Bool)

(assert (=> b!3871097 m!4427819))

(declare-fun m!4427821 () Bool)

(assert (=> tb!224531 m!4427821))

(assert (=> b!3871095 t!314470))

(declare-fun b_and!290157 () Bool)

(assert (= b_and!290121 (and (=> t!314470 result!273476) b_and!290157)))

(declare-fun tb!224533 () Bool)

(declare-fun t!314472 () Bool)

(assert (=> (and b!3870490 (= (toChars!8663 (transformation!6376 (rule!9262 (h!46534 suffixTokens!72)))) (toChars!8663 (transformation!6376 (rule!9262 (h!46534 prefixTokens!80))))) t!314472) tb!224533))

(declare-fun result!273478 () Bool)

(assert (= result!273478 result!273476))

(assert (=> b!3871095 t!314472))

(declare-fun b_and!290159 () Bool)

(assert (= b_and!290123 (and (=> t!314472 result!273478) b_and!290159)))

(declare-fun t!314474 () Bool)

(declare-fun tb!224535 () Bool)

(assert (=> (and b!3870512 (= (toChars!8663 (transformation!6376 (h!46535 rules!2768))) (toChars!8663 (transformation!6376 (rule!9262 (h!46534 prefixTokens!80))))) t!314474) tb!224535))

(declare-fun result!273480 () Bool)

(assert (= result!273480 result!273476))

(assert (=> b!3871095 t!314474))

(declare-fun b_and!290161 () Bool)

(assert (= b_and!290125 (and (=> t!314474 result!273480) b_and!290161)))

(declare-fun m!4427823 () Bool)

(assert (=> d!1146599 m!4427823))

(declare-fun m!4427825 () Bool)

(assert (=> b!3871095 m!4427825))

(assert (=> b!3871095 m!4427825))

(declare-fun m!4427827 () Bool)

(assert (=> b!3871095 m!4427827))

(declare-fun m!4427829 () Bool)

(assert (=> b!3871096 m!4427829))

(assert (=> b!3870496 d!1146599))

(declare-fun d!1146601 () Bool)

(assert (=> d!1146601 (= (inv!55269 (tag!7236 (rule!9262 (h!46534 suffixTokens!72)))) (= (mod (str.len (value!202349 (tag!7236 (rule!9262 (h!46534 suffixTokens!72))))) 2) 0))))

(assert (=> b!3870516 d!1146601))

(declare-fun d!1146603 () Bool)

(declare-fun res!1567987 () Bool)

(declare-fun e!2394286 () Bool)

(assert (=> d!1146603 (=> (not res!1567987) (not e!2394286))))

(assert (=> d!1146603 (= res!1567987 (semiInverseModEq!2735 (toChars!8663 (transformation!6376 (rule!9262 (h!46534 suffixTokens!72)))) (toValue!8804 (transformation!6376 (rule!9262 (h!46534 suffixTokens!72))))))))

(assert (=> d!1146603 (= (inv!55273 (transformation!6376 (rule!9262 (h!46534 suffixTokens!72)))) e!2394286)))

(declare-fun b!3871098 () Bool)

(assert (=> b!3871098 (= e!2394286 (equivClasses!2634 (toChars!8663 (transformation!6376 (rule!9262 (h!46534 suffixTokens!72)))) (toValue!8804 (transformation!6376 (rule!9262 (h!46534 suffixTokens!72))))))))

(assert (= (and d!1146603 res!1567987) b!3871098))

(declare-fun m!4427831 () Bool)

(assert (=> d!1146603 m!4427831))

(declare-fun m!4427833 () Bool)

(assert (=> b!3871098 m!4427833))

(assert (=> b!3870516 d!1146603))

(declare-fun d!1146605 () Bool)

(assert (=> d!1146605 (= (isEmpty!24390 rules!2768) ((_ is Nil!41115) rules!2768))))

(assert (=> b!3870494 d!1146605))

(declare-fun d!1146607 () Bool)

(assert (=> d!1146607 (and (= lt!1347207 lt!1347207) (= (_2!23301 (v!39091 lt!1347208)) (_2!23301 lt!1347185)))))

(declare-fun lt!1347482 () Unit!58933)

(declare-fun choose!22884 (List!41236 List!41236 List!41236 List!41236) Unit!58933)

(assert (=> d!1146607 (= lt!1347482 (choose!22884 lt!1347207 (_2!23301 (v!39091 lt!1347208)) lt!1347207 (_2!23301 lt!1347185)))))

(assert (=> d!1146607 (= (++!10510 lt!1347207 (_2!23301 (v!39091 lt!1347208))) (++!10510 lt!1347207 (_2!23301 lt!1347185)))))

(assert (=> d!1146607 (= (lemmaConcatSameAndSameSizesThenSameLists!460 lt!1347207 (_2!23301 (v!39091 lt!1347208)) lt!1347207 (_2!23301 lt!1347185)) lt!1347482)))

(declare-fun bs!583475 () Bool)

(assert (= bs!583475 d!1146607))

(declare-fun m!4427835 () Bool)

(assert (=> bs!583475 m!4427835))

(assert (=> bs!583475 m!4426903))

(declare-fun m!4427837 () Bool)

(assert (=> bs!583475 m!4427837))

(assert (=> b!3870515 d!1146607))

(declare-fun d!1146609 () Bool)

(assert (=> d!1146609 (not (= (lexList!1733 thiss!20629 rules!2768 (_2!23301 lt!1347185)) (tuple2!40337 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1347483 () Unit!58933)

(assert (=> d!1146609 (= lt!1347483 (choose!22883 thiss!20629 rules!2768 suffix!1176 (_2!23301 lt!1347185) suffixTokens!72 suffixResult!91))))

(assert (=> d!1146609 (not (isEmpty!24390 rules!2768))))

(assert (=> d!1146609 (= (lemmaLexWithSmallerInputCannotProduceSameResults!36 thiss!20629 rules!2768 suffix!1176 (_2!23301 lt!1347185) suffixTokens!72 suffixResult!91) lt!1347483)))

(declare-fun bs!583476 () Bool)

(assert (= bs!583476 d!1146609))

(assert (=> bs!583476 m!4426841))

(declare-fun m!4427839 () Bool)

(assert (=> bs!583476 m!4427839))

(assert (=> bs!583476 m!4426953))

(assert (=> b!3870515 d!1146609))

(declare-fun b!3871112 () Bool)

(declare-fun b_free!104509 () Bool)

(declare-fun b_next!105213 () Bool)

(assert (=> b!3871112 (= b_free!104509 (not b_next!105213))))

(declare-fun t!314476 () Bool)

(declare-fun tb!224537 () Bool)

(assert (=> (and b!3871112 (= (toValue!8804 (transformation!6376 (rule!9262 (h!46534 (t!314401 suffixTokens!72))))) (toValue!8804 (transformation!6376 (rule!9262 (_1!23301 (v!39091 lt!1347208)))))) t!314476) tb!224537))

(declare-fun result!273484 () Bool)

(assert (= result!273484 result!273394))

(assert (=> d!1146377 t!314476))

(declare-fun b_and!290163 () Bool)

(declare-fun tp!1173646 () Bool)

(assert (=> b!3871112 (= tp!1173646 (and (=> t!314476 result!273484) b_and!290163))))

(declare-fun b_free!104511 () Bool)

(declare-fun b_next!105215 () Bool)

(assert (=> b!3871112 (= b_free!104511 (not b_next!105215))))

(declare-fun tb!224539 () Bool)

(declare-fun t!314478 () Bool)

(assert (=> (and b!3871112 (= (toChars!8663 (transformation!6376 (rule!9262 (h!46534 (t!314401 suffixTokens!72))))) (toChars!8663 (transformation!6376 (rule!9262 (_1!23301 (v!39091 lt!1347208)))))) t!314478) tb!224539))

(declare-fun result!273486 () Bool)

(assert (= result!273486 result!273410))

(assert (=> d!1146423 t!314478))

(declare-fun t!314480 () Bool)

(declare-fun tb!224541 () Bool)

(assert (=> (and b!3871112 (= (toChars!8663 (transformation!6376 (rule!9262 (h!46534 (t!314401 suffixTokens!72))))) (toChars!8663 (transformation!6376 (rule!9262 (h!46534 suffixTokens!72))))) t!314480) tb!224541))

(declare-fun result!273488 () Bool)

(assert (= result!273488 result!273418))

(assert (=> b!3870869 t!314480))

(declare-fun t!314482 () Bool)

(declare-fun tb!224543 () Bool)

(assert (=> (and b!3871112 (= (toChars!8663 (transformation!6376 (rule!9262 (h!46534 (t!314401 suffixTokens!72))))) (toChars!8663 (transformation!6376 (rule!9262 (h!46534 prefixTokens!80))))) t!314482) tb!224543))

(declare-fun result!273490 () Bool)

(assert (= result!273490 result!273476))

(assert (=> b!3871095 t!314482))

(declare-fun tp!1173644 () Bool)

(declare-fun b_and!290165 () Bool)

(assert (=> b!3871112 (= tp!1173644 (and (=> t!314478 result!273486) (=> t!314480 result!273488) (=> t!314482 result!273490) b_and!290165))))

(declare-fun tp!1173645 () Bool)

(declare-fun b!3871109 () Bool)

(declare-fun e!2394302 () Bool)

(declare-fun e!2394300 () Bool)

(assert (=> b!3871109 (= e!2394302 (and (inv!55272 (h!46534 (t!314401 suffixTokens!72))) e!2394300 tp!1173645))))

(assert (=> b!3870480 (= tp!1173553 e!2394302)))

(declare-fun e!2394299 () Bool)

(assert (=> b!3871112 (= e!2394299 (and tp!1173646 tp!1173644))))

(declare-fun e!2394304 () Bool)

(declare-fun tp!1173647 () Bool)

(declare-fun b!3871111 () Bool)

(assert (=> b!3871111 (= e!2394304 (and tp!1173647 (inv!55269 (tag!7236 (rule!9262 (h!46534 (t!314401 suffixTokens!72))))) (inv!55273 (transformation!6376 (rule!9262 (h!46534 (t!314401 suffixTokens!72))))) e!2394299))))

(declare-fun tp!1173643 () Bool)

(declare-fun b!3871110 () Bool)

(assert (=> b!3871110 (= e!2394300 (and (inv!21 (value!202350 (h!46534 (t!314401 suffixTokens!72)))) e!2394304 tp!1173643))))

(assert (= b!3871111 b!3871112))

(assert (= b!3871110 b!3871111))

(assert (= b!3871109 b!3871110))

(assert (= (and b!3870480 ((_ is Cons!41114) (t!314401 suffixTokens!72))) b!3871109))

(declare-fun m!4427841 () Bool)

(assert (=> b!3871109 m!4427841))

(declare-fun m!4427843 () Bool)

(assert (=> b!3871111 m!4427843))

(declare-fun m!4427845 () Bool)

(assert (=> b!3871111 m!4427845))

(declare-fun m!4427847 () Bool)

(assert (=> b!3871110 m!4427847))

(declare-fun b!3871117 () Bool)

(declare-fun e!2394307 () Bool)

(declare-fun tp!1173650 () Bool)

(assert (=> b!3871117 (= e!2394307 (and tp_is_empty!19533 tp!1173650))))

(assert (=> b!3870488 (= tp!1173547 e!2394307)))

(assert (= (and b!3870488 ((_ is Cons!41112) (originalCharacters!6976 (h!46534 prefixTokens!80)))) b!3871117))

(declare-fun b!3871131 () Bool)

(declare-fun e!2394310 () Bool)

(declare-fun tp!1173661 () Bool)

(declare-fun tp!1173663 () Bool)

(assert (=> b!3871131 (= e!2394310 (and tp!1173661 tp!1173663))))

(declare-fun b!3871130 () Bool)

(declare-fun tp!1173664 () Bool)

(assert (=> b!3871130 (= e!2394310 tp!1173664)))

(declare-fun b!3871129 () Bool)

(declare-fun tp!1173665 () Bool)

(declare-fun tp!1173662 () Bool)

(assert (=> b!3871129 (= e!2394310 (and tp!1173665 tp!1173662))))

(assert (=> b!3870499 (= tp!1173551 e!2394310)))

(declare-fun b!3871128 () Bool)

(assert (=> b!3871128 (= e!2394310 tp_is_empty!19533)))

(assert (= (and b!3870499 ((_ is ElementMatch!11281) (regex!6376 (rule!9262 (h!46534 prefixTokens!80))))) b!3871128))

(assert (= (and b!3870499 ((_ is Concat!17888) (regex!6376 (rule!9262 (h!46534 prefixTokens!80))))) b!3871129))

(assert (= (and b!3870499 ((_ is Star!11281) (regex!6376 (rule!9262 (h!46534 prefixTokens!80))))) b!3871130))

(assert (= (and b!3870499 ((_ is Union!11281) (regex!6376 (rule!9262 (h!46534 prefixTokens!80))))) b!3871131))

(declare-fun b!3871132 () Bool)

(declare-fun e!2394311 () Bool)

(declare-fun tp!1173666 () Bool)

(assert (=> b!3871132 (= e!2394311 (and tp_is_empty!19533 tp!1173666))))

(assert (=> b!3870509 (= tp!1173545 e!2394311)))

(assert (= (and b!3870509 ((_ is Cons!41112) (t!314399 suffixResult!91))) b!3871132))

(declare-fun b!3871133 () Bool)

(declare-fun e!2394312 () Bool)

(declare-fun tp!1173667 () Bool)

(assert (=> b!3871133 (= e!2394312 (and tp_is_empty!19533 tp!1173667))))

(assert (=> b!3870497 (= tp!1173543 e!2394312)))

(assert (= (and b!3870497 ((_ is Cons!41112) (t!314399 prefix!426))) b!3871133))

(declare-fun b!3871137 () Bool)

(declare-fun b_free!104513 () Bool)

(declare-fun b_next!105217 () Bool)

(assert (=> b!3871137 (= b_free!104513 (not b_next!105217))))

(declare-fun tb!224545 () Bool)

(declare-fun t!314484 () Bool)

(assert (=> (and b!3871137 (= (toValue!8804 (transformation!6376 (rule!9262 (h!46534 (t!314401 prefixTokens!80))))) (toValue!8804 (transformation!6376 (rule!9262 (_1!23301 (v!39091 lt!1347208)))))) t!314484) tb!224545))

(declare-fun result!273496 () Bool)

(assert (= result!273496 result!273394))

(assert (=> d!1146377 t!314484))

(declare-fun b_and!290167 () Bool)

(declare-fun tp!1173671 () Bool)

(assert (=> b!3871137 (= tp!1173671 (and (=> t!314484 result!273496) b_and!290167))))

(declare-fun b_free!104515 () Bool)

(declare-fun b_next!105219 () Bool)

(assert (=> b!3871137 (= b_free!104515 (not b_next!105219))))

(declare-fun t!314486 () Bool)

(declare-fun tb!224547 () Bool)

(assert (=> (and b!3871137 (= (toChars!8663 (transformation!6376 (rule!9262 (h!46534 (t!314401 prefixTokens!80))))) (toChars!8663 (transformation!6376 (rule!9262 (_1!23301 (v!39091 lt!1347208)))))) t!314486) tb!224547))

(declare-fun result!273498 () Bool)

(assert (= result!273498 result!273410))

(assert (=> d!1146423 t!314486))

(declare-fun tb!224549 () Bool)

(declare-fun t!314488 () Bool)

(assert (=> (and b!3871137 (= (toChars!8663 (transformation!6376 (rule!9262 (h!46534 (t!314401 prefixTokens!80))))) (toChars!8663 (transformation!6376 (rule!9262 (h!46534 suffixTokens!72))))) t!314488) tb!224549))

(declare-fun result!273500 () Bool)

(assert (= result!273500 result!273418))

(assert (=> b!3870869 t!314488))

(declare-fun t!314490 () Bool)

(declare-fun tb!224551 () Bool)

(assert (=> (and b!3871137 (= (toChars!8663 (transformation!6376 (rule!9262 (h!46534 (t!314401 prefixTokens!80))))) (toChars!8663 (transformation!6376 (rule!9262 (h!46534 prefixTokens!80))))) t!314490) tb!224551))

(declare-fun result!273502 () Bool)

(assert (= result!273502 result!273476))

(assert (=> b!3871095 t!314490))

(declare-fun b_and!290169 () Bool)

(declare-fun tp!1173669 () Bool)

(assert (=> b!3871137 (= tp!1173669 (and (=> t!314486 result!273498) (=> t!314488 result!273500) (=> t!314490 result!273502) b_and!290169))))

(declare-fun e!2394314 () Bool)

(declare-fun e!2394316 () Bool)

(declare-fun tp!1173670 () Bool)

(declare-fun b!3871134 () Bool)

(assert (=> b!3871134 (= e!2394316 (and (inv!55272 (h!46534 (t!314401 prefixTokens!80))) e!2394314 tp!1173670))))

(assert (=> b!3870496 (= tp!1173555 e!2394316)))

(declare-fun e!2394313 () Bool)

(assert (=> b!3871137 (= e!2394313 (and tp!1173671 tp!1173669))))

(declare-fun b!3871136 () Bool)

(declare-fun e!2394318 () Bool)

(declare-fun tp!1173672 () Bool)

(assert (=> b!3871136 (= e!2394318 (and tp!1173672 (inv!55269 (tag!7236 (rule!9262 (h!46534 (t!314401 prefixTokens!80))))) (inv!55273 (transformation!6376 (rule!9262 (h!46534 (t!314401 prefixTokens!80))))) e!2394313))))

(declare-fun b!3871135 () Bool)

(declare-fun tp!1173668 () Bool)

(assert (=> b!3871135 (= e!2394314 (and (inv!21 (value!202350 (h!46534 (t!314401 prefixTokens!80)))) e!2394318 tp!1173668))))

(assert (= b!3871136 b!3871137))

(assert (= b!3871135 b!3871136))

(assert (= b!3871134 b!3871135))

(assert (= (and b!3870496 ((_ is Cons!41114) (t!314401 prefixTokens!80))) b!3871134))

(declare-fun m!4427849 () Bool)

(assert (=> b!3871134 m!4427849))

(declare-fun m!4427851 () Bool)

(assert (=> b!3871136 m!4427851))

(declare-fun m!4427853 () Bool)

(assert (=> b!3871136 m!4427853))

(declare-fun m!4427855 () Bool)

(assert (=> b!3871135 m!4427855))

(declare-fun b!3871141 () Bool)

(declare-fun e!2394319 () Bool)

(declare-fun tp!1173673 () Bool)

(declare-fun tp!1173675 () Bool)

(assert (=> b!3871141 (= e!2394319 (and tp!1173673 tp!1173675))))

(declare-fun b!3871140 () Bool)

(declare-fun tp!1173676 () Bool)

(assert (=> b!3871140 (= e!2394319 tp!1173676)))

(declare-fun b!3871139 () Bool)

(declare-fun tp!1173677 () Bool)

(declare-fun tp!1173674 () Bool)

(assert (=> b!3871139 (= e!2394319 (and tp!1173677 tp!1173674))))

(assert (=> b!3870485 (= tp!1173556 e!2394319)))

(declare-fun b!3871138 () Bool)

(assert (=> b!3871138 (= e!2394319 tp_is_empty!19533)))

(assert (= (and b!3870485 ((_ is ElementMatch!11281) (regex!6376 (h!46535 rules!2768)))) b!3871138))

(assert (= (and b!3870485 ((_ is Concat!17888) (regex!6376 (h!46535 rules!2768)))) b!3871139))

(assert (= (and b!3870485 ((_ is Star!11281) (regex!6376 (h!46535 rules!2768)))) b!3871140))

(assert (= (and b!3870485 ((_ is Union!11281) (regex!6376 (h!46535 rules!2768)))) b!3871141))

(declare-fun b!3871142 () Bool)

(declare-fun e!2394320 () Bool)

(declare-fun tp!1173678 () Bool)

(assert (=> b!3871142 (= e!2394320 (and tp_is_empty!19533 tp!1173678))))

(assert (=> b!3870484 (= tp!1173554 e!2394320)))

(assert (= (and b!3870484 ((_ is Cons!41112) (originalCharacters!6976 (h!46534 suffixTokens!72)))) b!3871142))

(declare-fun b!3871146 () Bool)

(declare-fun e!2394321 () Bool)

(declare-fun tp!1173679 () Bool)

(declare-fun tp!1173681 () Bool)

(assert (=> b!3871146 (= e!2394321 (and tp!1173679 tp!1173681))))

(declare-fun b!3871145 () Bool)

(declare-fun tp!1173682 () Bool)

(assert (=> b!3871145 (= e!2394321 tp!1173682)))

(declare-fun b!3871144 () Bool)

(declare-fun tp!1173683 () Bool)

(declare-fun tp!1173680 () Bool)

(assert (=> b!3871144 (= e!2394321 (and tp!1173683 tp!1173680))))

(assert (=> b!3870516 (= tp!1173550 e!2394321)))

(declare-fun b!3871143 () Bool)

(assert (=> b!3871143 (= e!2394321 tp_is_empty!19533)))

(assert (= (and b!3870516 ((_ is ElementMatch!11281) (regex!6376 (rule!9262 (h!46534 suffixTokens!72))))) b!3871143))

(assert (= (and b!3870516 ((_ is Concat!17888) (regex!6376 (rule!9262 (h!46534 suffixTokens!72))))) b!3871144))

(assert (= (and b!3870516 ((_ is Star!11281) (regex!6376 (rule!9262 (h!46534 suffixTokens!72))))) b!3871145))

(assert (= (and b!3870516 ((_ is Union!11281) (regex!6376 (rule!9262 (h!46534 suffixTokens!72))))) b!3871146))

(declare-fun b!3871147 () Bool)

(declare-fun e!2394322 () Bool)

(declare-fun tp!1173684 () Bool)

(assert (=> b!3871147 (= e!2394322 (and tp_is_empty!19533 tp!1173684))))

(assert (=> b!3870495 (= tp!1173548 e!2394322)))

(assert (= (and b!3870495 ((_ is Cons!41112) (t!314399 suffix!1176))) b!3871147))

(declare-fun b!3871158 () Bool)

(declare-fun b_free!104517 () Bool)

(declare-fun b_next!105221 () Bool)

(assert (=> b!3871158 (= b_free!104517 (not b_next!105221))))

(declare-fun tb!224553 () Bool)

(declare-fun t!314492 () Bool)

(assert (=> (and b!3871158 (= (toValue!8804 (transformation!6376 (h!46535 (t!314402 rules!2768)))) (toValue!8804 (transformation!6376 (rule!9262 (_1!23301 (v!39091 lt!1347208)))))) t!314492) tb!224553))

(declare-fun result!273506 () Bool)

(assert (= result!273506 result!273394))

(assert (=> d!1146377 t!314492))

(declare-fun b_and!290171 () Bool)

(declare-fun tp!1173694 () Bool)

(assert (=> b!3871158 (= tp!1173694 (and (=> t!314492 result!273506) b_and!290171))))

(declare-fun b_free!104519 () Bool)

(declare-fun b_next!105223 () Bool)

(assert (=> b!3871158 (= b_free!104519 (not b_next!105223))))

(declare-fun t!314494 () Bool)

(declare-fun tb!224555 () Bool)

(assert (=> (and b!3871158 (= (toChars!8663 (transformation!6376 (h!46535 (t!314402 rules!2768)))) (toChars!8663 (transformation!6376 (rule!9262 (_1!23301 (v!39091 lt!1347208)))))) t!314494) tb!224555))

(declare-fun result!273508 () Bool)

(assert (= result!273508 result!273410))

(assert (=> d!1146423 t!314494))

(declare-fun tb!224557 () Bool)

(declare-fun t!314496 () Bool)

(assert (=> (and b!3871158 (= (toChars!8663 (transformation!6376 (h!46535 (t!314402 rules!2768)))) (toChars!8663 (transformation!6376 (rule!9262 (h!46534 suffixTokens!72))))) t!314496) tb!224557))

(declare-fun result!273510 () Bool)

(assert (= result!273510 result!273418))

(assert (=> b!3870869 t!314496))

(declare-fun t!314498 () Bool)

(declare-fun tb!224559 () Bool)

(assert (=> (and b!3871158 (= (toChars!8663 (transformation!6376 (h!46535 (t!314402 rules!2768)))) (toChars!8663 (transformation!6376 (rule!9262 (h!46534 prefixTokens!80))))) t!314498) tb!224559))

(declare-fun result!273512 () Bool)

(assert (= result!273512 result!273476))

(assert (=> b!3871095 t!314498))

(declare-fun tp!1173696 () Bool)

(declare-fun b_and!290173 () Bool)

(assert (=> b!3871158 (= tp!1173696 (and (=> t!314494 result!273508) (=> t!314496 result!273510) (=> t!314498 result!273512) b_and!290173))))

(declare-fun e!2394333 () Bool)

(assert (=> b!3871158 (= e!2394333 (and tp!1173694 tp!1173696))))

(declare-fun e!2394334 () Bool)

(declare-fun tp!1173695 () Bool)

(declare-fun b!3871157 () Bool)

(assert (=> b!3871157 (= e!2394334 (and tp!1173695 (inv!55269 (tag!7236 (h!46535 (t!314402 rules!2768)))) (inv!55273 (transformation!6376 (h!46535 (t!314402 rules!2768)))) e!2394333))))

(declare-fun b!3871156 () Bool)

(declare-fun e!2394332 () Bool)

(declare-fun tp!1173693 () Bool)

(assert (=> b!3871156 (= e!2394332 (and e!2394334 tp!1173693))))

(assert (=> b!3870514 (= tp!1173552 e!2394332)))

(assert (= b!3871157 b!3871158))

(assert (= b!3871156 b!3871157))

(assert (= (and b!3870514 ((_ is Cons!41115) (t!314402 rules!2768))) b!3871156))

(declare-fun m!4427857 () Bool)

(assert (=> b!3871157 m!4427857))

(declare-fun m!4427859 () Bool)

(assert (=> b!3871157 m!4427859))

(declare-fun b_lambda!113075 () Bool)

(assert (= b_lambda!113061 (or (and b!3870512 b_free!104495 (= (toChars!8663 (transformation!6376 (h!46535 rules!2768))) (toChars!8663 (transformation!6376 (rule!9262 (h!46534 suffixTokens!72)))))) (and b!3871137 b_free!104515 (= (toChars!8663 (transformation!6376 (rule!9262 (h!46534 (t!314401 prefixTokens!80))))) (toChars!8663 (transformation!6376 (rule!9262 (h!46534 suffixTokens!72)))))) (and b!3870490 b_free!104491) (and b!3871112 b_free!104511 (= (toChars!8663 (transformation!6376 (rule!9262 (h!46534 (t!314401 suffixTokens!72))))) (toChars!8663 (transformation!6376 (rule!9262 (h!46534 suffixTokens!72)))))) (and b!3871158 b_free!104519 (= (toChars!8663 (transformation!6376 (h!46535 (t!314402 rules!2768)))) (toChars!8663 (transformation!6376 (rule!9262 (h!46534 suffixTokens!72)))))) (and b!3870502 b_free!104487 (= (toChars!8663 (transformation!6376 (rule!9262 (h!46534 prefixTokens!80)))) (toChars!8663 (transformation!6376 (rule!9262 (h!46534 suffixTokens!72)))))) b_lambda!113075)))

(declare-fun b_lambda!113077 () Bool)

(assert (= b_lambda!113073 (or (and b!3870512 b_free!104495 (= (toChars!8663 (transformation!6376 (h!46535 rules!2768))) (toChars!8663 (transformation!6376 (rule!9262 (h!46534 prefixTokens!80)))))) (and b!3870490 b_free!104491 (= (toChars!8663 (transformation!6376 (rule!9262 (h!46534 suffixTokens!72)))) (toChars!8663 (transformation!6376 (rule!9262 (h!46534 prefixTokens!80)))))) (and b!3871112 b_free!104511 (= (toChars!8663 (transformation!6376 (rule!9262 (h!46534 (t!314401 suffixTokens!72))))) (toChars!8663 (transformation!6376 (rule!9262 (h!46534 prefixTokens!80)))))) (and b!3871137 b_free!104515 (= (toChars!8663 (transformation!6376 (rule!9262 (h!46534 (t!314401 prefixTokens!80))))) (toChars!8663 (transformation!6376 (rule!9262 (h!46534 prefixTokens!80)))))) (and b!3871158 b_free!104519 (= (toChars!8663 (transformation!6376 (h!46535 (t!314402 rules!2768)))) (toChars!8663 (transformation!6376 (rule!9262 (h!46534 prefixTokens!80)))))) (and b!3870502 b_free!104487) b_lambda!113077)))

(check-sat (not b!3871095) (not b!3870807) (not b!3870535) (not d!1146449) (not b_next!105191) (not b!3871144) (not b!3871017) (not b_next!105199) (not b!3870607) (not b!3870769) (not b!3870841) (not b!3871018) (not b!3870862) (not d!1146475) (not d!1146471) (not b!3871140) (not b!3871129) (not b!3870680) (not b!3870642) (not d!1146469) (not d!1146339) (not d!1146609) (not d!1146379) (not b!3871016) (not d!1146353) (not b!3870644) (not d!1146373) (not d!1146481) (not b!3870828) (not b!3870656) (not b!3870788) b_and!290171 (not d!1146511) (not b!3870636) (not b!3871078) (not b!3870778) (not b!3871145) (not b!3870802) b_and!290105 (not b!3871081) (not b!3871014) (not b!3870826) (not b!3870870) (not b!3871134) (not b!3870869) (not b_next!105217) (not b!3871111) (not b!3870817) (not b!3870534) (not b!3871110) (not b!3870633) (not d!1146599) (not b!3871059) (not d!1146351) (not b!3871082) (not d!1146581) (not b!3871015) (not b_lambda!113055) (not d!1146461) (not b!3871083) (not d!1146589) (not tb!224477) (not b_next!105215) (not b!3870577) (not b!3871092) b_and!290161 (not b!3871141) (not b!3870619) (not b!3871098) (not b!3870803) (not b!3870647) (not b!3871117) (not b_next!105195) (not b!3870832) (not d!1146603) b_and!290159 b_and!290173 b_and!290169 (not d!1146453) (not b!3871086) (not b!3870774) (not b!3871157) (not b_next!105219) (not b_next!105193) (not d!1146587) (not b!3870618) (not d!1146491) (not d!1146443) (not d!1146319) (not b_next!105197) (not d!1146385) (not d!1146439) (not d!1146335) (not b!3871047) (not b_lambda!113077) (not d!1146591) (not b!3871109) (not b!3871094) (not b!3870657) b_and!290103 tp_is_empty!19533 (not b!3871132) b_and!290167 (not b!3870806) (not b!3871131) (not b!3871043) (not b!3871130) (not b_lambda!113075) (not b!3871139) (not d!1146331) b_and!290163 (not b!3871133) (not b!3870550) (not b!3870648) (not d!1146583) (not b!3871084) (not b!3871089) (not b!3870542) (not tb!224483) (not b!3870539) (not b_next!105223) (not d!1146479) (not b!3871012) (not b!3870543) (not b!3871136) (not d!1146387) (not b!3870863) (not b!3870538) (not d!1146383) (not b!3871142) (not d!1146463) (not b_next!105189) (not d!1146313) (not b!3870654) (not b!3870833) (not b!3870822) (not d!1146457) (not b!3870641) (not b!3871146) (not b!3870637) (not b!3870840) (not b!3871093) (not b!3870683) (not d!1146417) (not d!1146363) (not d!1146597) b_and!290157 (not d!1146327) (not b!3870776) (not b!3871011) (not b!3870836) (not b!3871147) (not b!3871080) (not b!3870652) (not b!3870837) (not b!3870775) (not b!3871088) (not b!3871156) (not d!1146337) (not b!3870819) (not b!3870575) (not b!3870638) (not b!3870640) (not b_lambda!113059) (not d!1146317) (not b!3871096) (not b!3870815) b_and!290107 (not d!1146607) (not b!3870770) (not d!1146477) (not b!3870831) (not d!1146375) (not b!3871135) (not b!3870650) (not b_next!105221) (not b!3870605) (not b!3870871) (not b!3870771) (not b!3870818) (not b!3870560) (not tb!224465) (not tb!224531) (not d!1146371) (not b_next!105213) (not b!3870606) (not b!3870561) (not b!3871079) (not b!3871013) b_and!290165 (not b!3870823) (not d!1146593) (not b!3871097) (not bm!282721) (not b!3870573) (not d!1146483) (not b!3870827) (not b!3870684) (not d!1146485) (not d!1146315) (not d!1146423))
(check-sat b_and!290171 b_and!290105 (not b_next!105217) (not b_next!105215) b_and!290161 (not b_next!105197) b_and!290103 b_and!290167 b_and!290163 (not b_next!105223) (not b_next!105189) b_and!290157 b_and!290107 (not b_next!105221) (not b_next!105213) b_and!290165 (not b_next!105191) (not b_next!105199) (not b_next!105195) b_and!290159 b_and!290173 b_and!290169 (not b_next!105219) (not b_next!105193))
