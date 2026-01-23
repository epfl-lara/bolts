; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!360300 () Bool)

(assert start!360300)

(declare-fun b!3847421 () Bool)

(declare-fun b_free!103021 () Bool)

(declare-fun b_next!103725 () Bool)

(assert (=> b!3847421 (= b_free!103021 (not b_next!103725))))

(declare-fun tp!1166171 () Bool)

(declare-fun b_and!287067 () Bool)

(assert (=> b!3847421 (= tp!1166171 b_and!287067)))

(declare-fun b_free!103023 () Bool)

(declare-fun b_next!103727 () Bool)

(assert (=> b!3847421 (= b_free!103023 (not b_next!103727))))

(declare-fun tp!1166163 () Bool)

(declare-fun b_and!287069 () Bool)

(assert (=> b!3847421 (= tp!1166163 b_and!287069)))

(declare-fun b!3847413 () Bool)

(declare-fun b_free!103025 () Bool)

(declare-fun b_next!103729 () Bool)

(assert (=> b!3847413 (= b_free!103025 (not b_next!103729))))

(declare-fun tp!1166169 () Bool)

(declare-fun b_and!287071 () Bool)

(assert (=> b!3847413 (= tp!1166169 b_and!287071)))

(declare-fun b_free!103027 () Bool)

(declare-fun b_next!103731 () Bool)

(assert (=> b!3847413 (= b_free!103027 (not b_next!103731))))

(declare-fun tp!1166168 () Bool)

(declare-fun b_and!287073 () Bool)

(assert (=> b!3847413 (= tp!1166168 b_and!287073)))

(declare-fun b!3847422 () Bool)

(declare-fun b_free!103029 () Bool)

(declare-fun b_next!103733 () Bool)

(assert (=> b!3847422 (= b_free!103029 (not b_next!103733))))

(declare-fun tp!1166164 () Bool)

(declare-fun b_and!287075 () Bool)

(assert (=> b!3847422 (= tp!1166164 b_and!287075)))

(declare-fun b_free!103031 () Bool)

(declare-fun b_next!103735 () Bool)

(assert (=> b!3847422 (= b_free!103031 (not b_next!103735))))

(declare-fun tp!1166172 () Bool)

(declare-fun b_and!287077 () Bool)

(assert (=> b!3847422 (= tp!1166172 b_and!287077)))

(declare-fun b!3847394 () Bool)

(declare-fun e!2377921 () Bool)

(declare-fun e!2377933 () Bool)

(assert (=> b!3847394 (= e!2377921 (not e!2377933))))

(declare-fun res!1557481 () Bool)

(assert (=> b!3847394 (=> res!1557481 e!2377933)))

(declare-datatypes ((C!22592 0))(
  ( (C!22593 (val!13390 Int)) )
))
(declare-datatypes ((List!40886 0))(
  ( (Nil!40762) (Cons!40762 (h!46182 C!22592) (t!311211 List!40886)) )
))
(declare-fun lt!1336069 () List!40886)

(declare-fun lt!1336066 () List!40886)

(assert (=> b!3847394 (= res!1557481 (not (= lt!1336069 lt!1336066)))))

(declare-datatypes ((LexerInterface!5887 0))(
  ( (LexerInterfaceExt!5884 (__x!25273 Int)) (Lexer!5885) )
))
(declare-fun thiss!20629 () LexerInterface!5887)

(declare-datatypes ((IArray!25023 0))(
  ( (IArray!25024 (innerList!12569 List!40886)) )
))
(declare-datatypes ((Conc!12509 0))(
  ( (Node!12509 (left!31448 Conc!12509) (right!31778 Conc!12509) (csize!25248 Int) (cheight!12720 Int)) (Leaf!19365 (xs!15815 IArray!25023) (csize!25249 Int)) (Empty!12509) )
))
(declare-datatypes ((BalanceConc!24612 0))(
  ( (BalanceConc!24613 (c!670124 Conc!12509)) )
))
(declare-datatypes ((List!40887 0))(
  ( (Nil!40763) (Cons!40763 (h!46183 (_ BitVec 16)) (t!311212 List!40887)) )
))
(declare-datatypes ((TokenValue!6528 0))(
  ( (FloatLiteralValue!13056 (text!46141 List!40887)) (TokenValueExt!6527 (__x!25274 Int)) (Broken!32640 (value!200101 List!40887)) (Object!6651) (End!6528) (Def!6528) (Underscore!6528) (Match!6528) (Else!6528) (Error!6528) (Case!6528) (If!6528) (Extends!6528) (Abstract!6528) (Class!6528) (Val!6528) (DelimiterValue!13056 (del!6588 List!40887)) (KeywordValue!6534 (value!200102 List!40887)) (CommentValue!13056 (value!200103 List!40887)) (WhitespaceValue!13056 (value!200104 List!40887)) (IndentationValue!6528 (value!200105 List!40887)) (String!46357) (Int32!6528) (Broken!32641 (value!200106 List!40887)) (Boolean!6529) (Unit!58439) (OperatorValue!6531 (op!6588 List!40887)) (IdentifierValue!13056 (value!200107 List!40887)) (IdentifierValue!13057 (value!200108 List!40887)) (WhitespaceValue!13057 (value!200109 List!40887)) (True!13056) (False!13056) (Broken!32642 (value!200110 List!40887)) (Broken!32643 (value!200111 List!40887)) (True!13057) (RightBrace!6528) (RightBracket!6528) (Colon!6528) (Null!6528) (Comma!6528) (LeftBracket!6528) (False!13057) (LeftBrace!6528) (ImaginaryLiteralValue!6528 (text!46142 List!40887)) (StringLiteralValue!19584 (value!200112 List!40887)) (EOFValue!6528 (value!200113 List!40887)) (IdentValue!6528 (value!200114 List!40887)) (DelimiterValue!13057 (value!200115 List!40887)) (DedentValue!6528 (value!200116 List!40887)) (NewLineValue!6528 (value!200117 List!40887)) (IntegerValue!19584 (value!200118 (_ BitVec 32)) (text!46143 List!40887)) (IntegerValue!19585 (value!200119 Int) (text!46144 List!40887)) (Times!6528) (Or!6528) (Equal!6528) (Minus!6528) (Broken!32644 (value!200120 List!40887)) (And!6528) (Div!6528) (LessEqual!6528) (Mod!6528) (Concat!17731) (Not!6528) (Plus!6528) (SpaceValue!6528 (value!200121 List!40887)) (IntegerValue!19586 (value!200122 Int) (text!46145 List!40887)) (StringLiteralValue!19585 (text!46146 List!40887)) (FloatLiteralValue!13057 (text!46147 List!40887)) (BytesLiteralValue!6528 (value!200123 List!40887)) (CommentValue!13057 (value!200124 List!40887)) (StringLiteralValue!19586 (value!200125 List!40887)) (ErrorTokenValue!6528 (msg!6589 List!40887)) )
))
(declare-datatypes ((Regex!11203 0))(
  ( (ElementMatch!11203 (c!670125 C!22592)) (Concat!17732 (regOne!22918 Regex!11203) (regTwo!22918 Regex!11203)) (EmptyExpr!11203) (Star!11203 (reg!11532 Regex!11203)) (EmptyLang!11203) (Union!11203 (regOne!22919 Regex!11203) (regTwo!22919 Regex!11203)) )
))
(declare-datatypes ((String!46358 0))(
  ( (String!46359 (value!200126 String)) )
))
(declare-datatypes ((TokenValueInjection!12484 0))(
  ( (TokenValueInjection!12485 (toValue!8714 Int) (toChars!8573 Int)) )
))
(declare-datatypes ((Rule!12396 0))(
  ( (Rule!12397 (regex!6298 Regex!11203) (tag!7158 String!46358) (isSeparator!6298 Bool) (transformation!6298 TokenValueInjection!12484)) )
))
(declare-datatypes ((List!40888 0))(
  ( (Nil!40764) (Cons!40764 (h!46184 Rule!12396) (t!311213 List!40888)) )
))
(declare-fun rules!2768 () List!40888)

(declare-datatypes ((Token!11734 0))(
  ( (Token!11735 (value!200127 TokenValue!6528) (rule!9146 Rule!12396) (size!30663 Int) (originalCharacters!6898 List!40886)) )
))
(declare-datatypes ((List!40889 0))(
  ( (Nil!40765) (Cons!40765 (h!46185 Token!11734) (t!311214 List!40889)) )
))
(declare-datatypes ((tuple2!39946 0))(
  ( (tuple2!39947 (_1!23107 List!40889) (_2!23107 List!40886)) )
))
(declare-fun lt!1336065 () tuple2!39946)

(declare-datatypes ((tuple2!39948 0))(
  ( (tuple2!39949 (_1!23108 Token!11734) (_2!23108 List!40886)) )
))
(declare-datatypes ((Option!8716 0))(
  ( (None!8715) (Some!8715 (v!39007 tuple2!39948)) )
))
(declare-fun lt!1336071 () Option!8716)

(declare-fun lexList!1655 (LexerInterface!5887 List!40888 List!40886) tuple2!39946)

(assert (=> b!3847394 (= lt!1336065 (lexList!1655 thiss!20629 rules!2768 (_2!23108 (v!39007 lt!1336071))))))

(declare-fun lt!1336081 () TokenValue!6528)

(declare-fun lt!1336075 () Int)

(declare-fun lt!1336073 () List!40886)

(declare-fun lt!1336078 () List!40886)

(assert (=> b!3847394 (and (= (size!30663 (_1!23108 (v!39007 lt!1336071))) lt!1336075) (= (originalCharacters!6898 (_1!23108 (v!39007 lt!1336071))) lt!1336073) (= (v!39007 lt!1336071) (tuple2!39949 (Token!11735 lt!1336081 (rule!9146 (_1!23108 (v!39007 lt!1336071))) lt!1336075 lt!1336073) lt!1336078)))))

(declare-fun size!30664 (List!40886) Int)

(assert (=> b!3847394 (= lt!1336075 (size!30664 lt!1336073))))

(declare-fun e!2377913 () Bool)

(assert (=> b!3847394 e!2377913))

(declare-fun res!1557483 () Bool)

(assert (=> b!3847394 (=> (not res!1557483) (not e!2377913))))

(assert (=> b!3847394 (= res!1557483 (= (value!200127 (_1!23108 (v!39007 lt!1336071))) lt!1336081))))

(declare-fun apply!9541 (TokenValueInjection!12484 BalanceConc!24612) TokenValue!6528)

(declare-fun seqFromList!4569 (List!40886) BalanceConc!24612)

(assert (=> b!3847394 (= lt!1336081 (apply!9541 (transformation!6298 (rule!9146 (_1!23108 (v!39007 lt!1336071)))) (seqFromList!4569 lt!1336073)))))

(assert (=> b!3847394 (= (_2!23108 (v!39007 lt!1336071)) lt!1336078)))

(declare-datatypes ((Unit!58440 0))(
  ( (Unit!58441) )
))
(declare-fun lt!1336072 () Unit!58440)

(declare-fun lemmaSamePrefixThenSameSuffix!1618 (List!40886 List!40886 List!40886 List!40886 List!40886) Unit!58440)

(assert (=> b!3847394 (= lt!1336072 (lemmaSamePrefixThenSameSuffix!1618 lt!1336073 (_2!23108 (v!39007 lt!1336071)) lt!1336073 lt!1336078 lt!1336066))))

(declare-fun getSuffix!1852 (List!40886 List!40886) List!40886)

(assert (=> b!3847394 (= lt!1336078 (getSuffix!1852 lt!1336066 lt!1336073))))

(declare-fun isPrefix!3397 (List!40886 List!40886) Bool)

(assert (=> b!3847394 (isPrefix!3397 lt!1336073 lt!1336069)))

(declare-fun ++!10353 (List!40886 List!40886) List!40886)

(assert (=> b!3847394 (= lt!1336069 (++!10353 lt!1336073 (_2!23108 (v!39007 lt!1336071))))))

(declare-fun lt!1336067 () Unit!58440)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2260 (List!40886 List!40886) Unit!58440)

(assert (=> b!3847394 (= lt!1336067 (lemmaConcatTwoListThenFirstIsPrefix!2260 lt!1336073 (_2!23108 (v!39007 lt!1336071))))))

(declare-fun list!15172 (BalanceConc!24612) List!40886)

(declare-fun charsOf!4126 (Token!11734) BalanceConc!24612)

(assert (=> b!3847394 (= lt!1336073 (list!15172 (charsOf!4126 (_1!23108 (v!39007 lt!1336071)))))))

(declare-fun ruleValid!2250 (LexerInterface!5887 Rule!12396) Bool)

(assert (=> b!3847394 (ruleValid!2250 thiss!20629 (rule!9146 (_1!23108 (v!39007 lt!1336071))))))

(declare-fun lt!1336074 () Unit!58440)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1330 (LexerInterface!5887 Rule!12396 List!40888) Unit!58440)

(assert (=> b!3847394 (= lt!1336074 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1330 thiss!20629 (rule!9146 (_1!23108 (v!39007 lt!1336071))) rules!2768))))

(declare-fun lt!1336077 () Unit!58440)

(declare-fun lemmaCharactersSize!959 (Token!11734) Unit!58440)

(assert (=> b!3847394 (= lt!1336077 (lemmaCharactersSize!959 (_1!23108 (v!39007 lt!1336071))))))

(declare-fun b!3847395 () Bool)

(declare-fun res!1557484 () Bool)

(assert (=> b!3847395 (=> res!1557484 e!2377933)))

(declare-fun lt!1336070 () tuple2!39946)

(declare-fun ++!10354 (List!40889 List!40889) List!40889)

(assert (=> b!3847395 (= res!1557484 (not (= lt!1336070 (tuple2!39947 (++!10354 (Cons!40765 (_1!23108 (v!39007 lt!1336071)) Nil!40765) (_1!23107 lt!1336065)) (_2!23107 lt!1336065)))))))

(declare-fun b!3847396 () Bool)

(declare-fun e!2377932 () Bool)

(assert (=> b!3847396 (= e!2377933 e!2377932)))

(declare-fun res!1557485 () Bool)

(assert (=> b!3847396 (=> res!1557485 e!2377932)))

(declare-fun lt!1336068 () Int)

(declare-fun lt!1336080 () Int)

(assert (=> b!3847396 (= res!1557485 (>= lt!1336068 lt!1336080))))

(declare-fun suffix!1176 () List!40886)

(assert (=> b!3847396 (= lt!1336080 (size!30664 suffix!1176))))

(assert (=> b!3847396 (= lt!1336068 (size!30664 (_2!23108 (v!39007 lt!1336071))))))

(declare-fun b!3847397 () Bool)

(declare-fun e!2377919 () Bool)

(declare-fun e!2377926 () Bool)

(declare-fun tp!1166162 () Bool)

(assert (=> b!3847397 (= e!2377919 (and e!2377926 tp!1166162))))

(declare-fun b!3847398 () Bool)

(declare-fun e!2377910 () Bool)

(assert (=> b!3847398 (= e!2377932 e!2377910)))

(declare-fun res!1557489 () Bool)

(assert (=> b!3847398 (=> res!1557489 e!2377910)))

(declare-fun lt!1336083 () Int)

(assert (=> b!3847398 (= res!1557489 (not (= (+ lt!1336075 lt!1336068) lt!1336083)))))

(assert (=> b!3847398 (= lt!1336083 (size!30664 lt!1336066))))

(declare-fun b!3847399 () Bool)

(assert (=> b!3847399 (= e!2377913 (= (size!30663 (_1!23108 (v!39007 lt!1336071))) (size!30664 (originalCharacters!6898 (_1!23108 (v!39007 lt!1336071))))))))

(declare-fun b!3847400 () Bool)

(declare-fun e!2377918 () Bool)

(declare-fun tp_is_empty!19377 () Bool)

(declare-fun tp!1166157 () Bool)

(assert (=> b!3847400 (= e!2377918 (and tp_is_empty!19377 tp!1166157))))

(declare-fun e!2377923 () Bool)

(declare-fun e!2377929 () Bool)

(declare-fun b!3847401 () Bool)

(declare-fun suffixTokens!72 () List!40889)

(declare-fun tp!1166170 () Bool)

(declare-fun inv!54903 (String!46358) Bool)

(declare-fun inv!54906 (TokenValueInjection!12484) Bool)

(assert (=> b!3847401 (= e!2377929 (and tp!1166170 (inv!54903 (tag!7158 (rule!9146 (h!46185 suffixTokens!72)))) (inv!54906 (transformation!6298 (rule!9146 (h!46185 suffixTokens!72)))) e!2377923))))

(declare-fun b!3847402 () Bool)

(declare-fun res!1557488 () Bool)

(declare-fun e!2377917 () Bool)

(assert (=> b!3847402 (=> (not res!1557488) (not e!2377917))))

(declare-fun isEmpty!24116 (List!40888) Bool)

(assert (=> b!3847402 (= res!1557488 (not (isEmpty!24116 rules!2768)))))

(declare-fun e!2377908 () Bool)

(declare-fun e!2377912 () Bool)

(declare-fun prefixTokens!80 () List!40889)

(declare-fun b!3847403 () Bool)

(declare-fun tp!1166161 () Bool)

(declare-fun inv!54907 (Token!11734) Bool)

(assert (=> b!3847403 (= e!2377908 (and (inv!54907 (h!46185 prefixTokens!80)) e!2377912 tp!1166161))))

(declare-fun e!2377934 () Bool)

(declare-fun tp!1166165 () Bool)

(declare-fun e!2377930 () Bool)

(declare-fun b!3847404 () Bool)

(assert (=> b!3847404 (= e!2377930 (and (inv!54907 (h!46185 suffixTokens!72)) e!2377934 tp!1166165))))

(declare-fun b!3847405 () Bool)

(declare-fun res!1557493 () Bool)

(assert (=> b!3847405 (=> (not res!1557493) (not e!2377917))))

(declare-fun isEmpty!24117 (List!40889) Bool)

(assert (=> b!3847405 (= res!1557493 (not (isEmpty!24117 prefixTokens!80)))))

(declare-fun b!3847406 () Bool)

(declare-fun e!2377920 () Bool)

(declare-fun tp!1166156 () Bool)

(assert (=> b!3847406 (= e!2377926 (and tp!1166156 (inv!54903 (tag!7158 (h!46184 rules!2768))) (inv!54906 (transformation!6298 (h!46184 rules!2768))) e!2377920))))

(declare-fun b!3847407 () Bool)

(declare-fun e!2377915 () Bool)

(assert (=> b!3847407 (= e!2377915 e!2377921)))

(declare-fun res!1557482 () Bool)

(assert (=> b!3847407 (=> (not res!1557482) (not e!2377921))))

(get-info :version)

(assert (=> b!3847407 (= res!1557482 ((_ is Some!8715) lt!1336071))))

(declare-fun maxPrefix!3191 (LexerInterface!5887 List!40888 List!40886) Option!8716)

(assert (=> b!3847407 (= lt!1336071 (maxPrefix!3191 thiss!20629 rules!2768 lt!1336066))))

(declare-fun b!3847408 () Bool)

(declare-fun e!2377931 () Bool)

(declare-fun tp!1166160 () Bool)

(assert (=> b!3847408 (= e!2377931 (and tp_is_empty!19377 tp!1166160))))

(declare-fun b!3847409 () Bool)

(declare-fun e!2377928 () Bool)

(assert (=> b!3847409 (= e!2377910 e!2377928)))

(declare-fun res!1557491 () Bool)

(assert (=> b!3847409 (=> res!1557491 e!2377928)))

(declare-fun lt!1336082 () Int)

(assert (=> b!3847409 (= res!1557491 (or (not (= (+ lt!1336082 lt!1336080) lt!1336083)) (<= lt!1336075 lt!1336082)))))

(declare-fun prefix!426 () List!40886)

(assert (=> b!3847409 (= lt!1336082 (size!30664 prefix!426))))

(declare-fun tp!1166159 () Bool)

(declare-fun b!3847410 () Bool)

(declare-fun e!2377916 () Bool)

(declare-fun inv!21 (TokenValue!6528) Bool)

(assert (=> b!3847410 (= e!2377912 (and (inv!21 (value!200127 (h!46185 prefixTokens!80))) e!2377916 tp!1166159))))

(declare-fun tp!1166158 () Bool)

(declare-fun b!3847411 () Bool)

(assert (=> b!3847411 (= e!2377934 (and (inv!21 (value!200127 (h!46185 suffixTokens!72))) e!2377929 tp!1166158))))

(declare-fun tp!1166166 () Bool)

(declare-fun e!2377909 () Bool)

(declare-fun b!3847412 () Bool)

(assert (=> b!3847412 (= e!2377916 (and tp!1166166 (inv!54903 (tag!7158 (rule!9146 (h!46185 prefixTokens!80)))) (inv!54906 (transformation!6298 (rule!9146 (h!46185 prefixTokens!80)))) e!2377909))))

(assert (=> b!3847413 (= e!2377923 (and tp!1166169 tp!1166168))))

(declare-fun b!3847414 () Bool)

(declare-fun res!1557479 () Bool)

(assert (=> b!3847414 (=> (not res!1557479) (not e!2377917))))

(declare-fun isEmpty!24118 (List!40886) Bool)

(assert (=> b!3847414 (= res!1557479 (not (isEmpty!24118 prefix!426)))))

(declare-fun b!3847415 () Bool)

(declare-fun e!2377924 () Bool)

(declare-fun tp!1166167 () Bool)

(assert (=> b!3847415 (= e!2377924 (and tp_is_empty!19377 tp!1166167))))

(declare-fun b!3847416 () Bool)

(declare-fun res!1557480 () Bool)

(assert (=> b!3847416 (=> (not res!1557480) (not e!2377917))))

(declare-fun rulesInvariant!5230 (LexerInterface!5887 List!40888) Bool)

(assert (=> b!3847416 (= res!1557480 (rulesInvariant!5230 thiss!20629 rules!2768))))

(declare-fun b!3847417 () Bool)

(assert (=> b!3847417 (= e!2377917 e!2377915)))

(declare-fun res!1557487 () Bool)

(assert (=> b!3847417 (=> (not res!1557487) (not e!2377915))))

(declare-fun suffixResult!91 () List!40886)

(declare-fun lt!1336079 () List!40889)

(assert (=> b!3847417 (= res!1557487 (= lt!1336070 (tuple2!39947 lt!1336079 suffixResult!91)))))

(assert (=> b!3847417 (= lt!1336070 (lexList!1655 thiss!20629 rules!2768 lt!1336066))))

(assert (=> b!3847417 (= lt!1336079 (++!10354 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3847417 (= lt!1336066 (++!10353 prefix!426 suffix!1176))))

(declare-fun b!3847418 () Bool)

(declare-fun res!1557490 () Bool)

(assert (=> b!3847418 (=> (not res!1557490) (not e!2377915))))

(assert (=> b!3847418 (= res!1557490 (= (lexList!1655 thiss!20629 rules!2768 suffix!1176) (tuple2!39947 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3847419 () Bool)

(assert (=> b!3847419 (= e!2377928 true)))

(declare-fun lt!1336076 () Bool)

(declare-fun matchR!5350 (Regex!11203 List!40886) Bool)

(assert (=> b!3847419 (= lt!1336076 (matchR!5350 (regex!6298 (rule!9146 (_1!23108 (v!39007 lt!1336071)))) lt!1336073))))

(declare-fun maxPrefixOneRule!2273 (LexerInterface!5887 Rule!12396 List!40886) Option!8716)

(assert (=> b!3847419 (= (maxPrefixOneRule!2273 thiss!20629 (rule!9146 (_1!23108 (v!39007 lt!1336071))) lt!1336066) (Some!8715 (tuple2!39949 (Token!11735 lt!1336081 (rule!9146 (_1!23108 (v!39007 lt!1336071))) lt!1336075 lt!1336073) (_2!23108 (v!39007 lt!1336071)))))))

(declare-fun lt!1336064 () Unit!58440)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1171 (LexerInterface!5887 List!40888 List!40886 List!40886 List!40886 Rule!12396) Unit!58440)

(assert (=> b!3847419 (= lt!1336064 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1171 thiss!20629 rules!2768 lt!1336073 lt!1336066 (_2!23108 (v!39007 lt!1336071)) (rule!9146 (_1!23108 (v!39007 lt!1336071)))))))

(declare-fun b!3847420 () Bool)

(declare-fun res!1557486 () Bool)

(assert (=> b!3847420 (=> res!1557486 e!2377933)))

(assert (=> b!3847420 (= res!1557486 (or (not (= lt!1336065 (tuple2!39947 (_1!23107 lt!1336065) (_2!23107 lt!1336065)))) (= (_2!23108 (v!39007 lt!1336071)) suffix!1176)))))

(declare-fun res!1557492 () Bool)

(assert (=> start!360300 (=> (not res!1557492) (not e!2377917))))

(assert (=> start!360300 (= res!1557492 ((_ is Lexer!5885) thiss!20629))))

(assert (=> start!360300 e!2377917))

(assert (=> start!360300 e!2377931))

(assert (=> start!360300 true))

(assert (=> start!360300 e!2377918))

(assert (=> start!360300 e!2377919))

(assert (=> start!360300 e!2377908))

(assert (=> start!360300 e!2377930))

(assert (=> start!360300 e!2377924))

(assert (=> b!3847421 (= e!2377909 (and tp!1166171 tp!1166163))))

(assert (=> b!3847422 (= e!2377920 (and tp!1166164 tp!1166172))))

(assert (= (and start!360300 res!1557492) b!3847402))

(assert (= (and b!3847402 res!1557488) b!3847416))

(assert (= (and b!3847416 res!1557480) b!3847405))

(assert (= (and b!3847405 res!1557493) b!3847414))

(assert (= (and b!3847414 res!1557479) b!3847417))

(assert (= (and b!3847417 res!1557487) b!3847418))

(assert (= (and b!3847418 res!1557490) b!3847407))

(assert (= (and b!3847407 res!1557482) b!3847394))

(assert (= (and b!3847394 res!1557483) b!3847399))

(assert (= (and b!3847394 (not res!1557481)) b!3847395))

(assert (= (and b!3847395 (not res!1557484)) b!3847420))

(assert (= (and b!3847420 (not res!1557486)) b!3847396))

(assert (= (and b!3847396 (not res!1557485)) b!3847398))

(assert (= (and b!3847398 (not res!1557489)) b!3847409))

(assert (= (and b!3847409 (not res!1557491)) b!3847419))

(assert (= (and start!360300 ((_ is Cons!40762) suffixResult!91)) b!3847408))

(assert (= (and start!360300 ((_ is Cons!40762) suffix!1176)) b!3847400))

(assert (= b!3847406 b!3847422))

(assert (= b!3847397 b!3847406))

(assert (= (and start!360300 ((_ is Cons!40764) rules!2768)) b!3847397))

(assert (= b!3847412 b!3847421))

(assert (= b!3847410 b!3847412))

(assert (= b!3847403 b!3847410))

(assert (= (and start!360300 ((_ is Cons!40765) prefixTokens!80)) b!3847403))

(assert (= b!3847401 b!3847413))

(assert (= b!3847411 b!3847401))

(assert (= b!3847404 b!3847411))

(assert (= (and start!360300 ((_ is Cons!40765) suffixTokens!72)) b!3847404))

(assert (= (and start!360300 ((_ is Cons!40762) prefix!426)) b!3847415))

(declare-fun m!4402109 () Bool)

(assert (=> b!3847395 m!4402109))

(declare-fun m!4402111 () Bool)

(assert (=> b!3847396 m!4402111))

(declare-fun m!4402113 () Bool)

(assert (=> b!3847396 m!4402113))

(declare-fun m!4402115 () Bool)

(assert (=> b!3847405 m!4402115))

(declare-fun m!4402117 () Bool)

(assert (=> b!3847398 m!4402117))

(declare-fun m!4402119 () Bool)

(assert (=> b!3847401 m!4402119))

(declare-fun m!4402121 () Bool)

(assert (=> b!3847401 m!4402121))

(declare-fun m!4402123 () Bool)

(assert (=> b!3847409 m!4402123))

(declare-fun m!4402125 () Bool)

(assert (=> b!3847406 m!4402125))

(declare-fun m!4402127 () Bool)

(assert (=> b!3847406 m!4402127))

(declare-fun m!4402129 () Bool)

(assert (=> b!3847407 m!4402129))

(declare-fun m!4402131 () Bool)

(assert (=> b!3847403 m!4402131))

(declare-fun m!4402133 () Bool)

(assert (=> b!3847411 m!4402133))

(declare-fun m!4402135 () Bool)

(assert (=> b!3847394 m!4402135))

(declare-fun m!4402137 () Bool)

(assert (=> b!3847394 m!4402137))

(declare-fun m!4402139 () Bool)

(assert (=> b!3847394 m!4402139))

(declare-fun m!4402141 () Bool)

(assert (=> b!3847394 m!4402141))

(declare-fun m!4402143 () Bool)

(assert (=> b!3847394 m!4402143))

(declare-fun m!4402145 () Bool)

(assert (=> b!3847394 m!4402145))

(declare-fun m!4402147 () Bool)

(assert (=> b!3847394 m!4402147))

(declare-fun m!4402149 () Bool)

(assert (=> b!3847394 m!4402149))

(assert (=> b!3847394 m!4402149))

(declare-fun m!4402151 () Bool)

(assert (=> b!3847394 m!4402151))

(declare-fun m!4402153 () Bool)

(assert (=> b!3847394 m!4402153))

(assert (=> b!3847394 m!4402143))

(declare-fun m!4402155 () Bool)

(assert (=> b!3847394 m!4402155))

(declare-fun m!4402157 () Bool)

(assert (=> b!3847394 m!4402157))

(declare-fun m!4402159 () Bool)

(assert (=> b!3847394 m!4402159))

(declare-fun m!4402161 () Bool)

(assert (=> b!3847394 m!4402161))

(declare-fun m!4402163 () Bool)

(assert (=> b!3847417 m!4402163))

(declare-fun m!4402165 () Bool)

(assert (=> b!3847417 m!4402165))

(declare-fun m!4402167 () Bool)

(assert (=> b!3847417 m!4402167))

(declare-fun m!4402169 () Bool)

(assert (=> b!3847399 m!4402169))

(declare-fun m!4402171 () Bool)

(assert (=> b!3847410 m!4402171))

(declare-fun m!4402173 () Bool)

(assert (=> b!3847416 m!4402173))

(declare-fun m!4402175 () Bool)

(assert (=> b!3847418 m!4402175))

(declare-fun m!4402177 () Bool)

(assert (=> b!3847412 m!4402177))

(declare-fun m!4402179 () Bool)

(assert (=> b!3847412 m!4402179))

(declare-fun m!4402181 () Bool)

(assert (=> b!3847402 m!4402181))

(declare-fun m!4402183 () Bool)

(assert (=> b!3847419 m!4402183))

(declare-fun m!4402185 () Bool)

(assert (=> b!3847419 m!4402185))

(declare-fun m!4402187 () Bool)

(assert (=> b!3847419 m!4402187))

(declare-fun m!4402189 () Bool)

(assert (=> b!3847414 m!4402189))

(declare-fun m!4402191 () Bool)

(assert (=> b!3847404 m!4402191))

(check-sat b_and!287071 (not b_next!103729) (not b!3847409) (not b!3847405) (not b!3847402) (not b!3847416) b_and!287073 (not b!3847404) (not b_next!103727) (not b!3847401) (not b!3847417) (not b!3847394) b_and!287069 (not b!3847395) (not b_next!103735) (not b!3847400) (not b_next!103733) (not b!3847408) (not b!3847407) (not b!3847399) (not b!3847397) (not b!3847419) (not b!3847415) (not b_next!103731) b_and!287077 (not b!3847398) b_and!287067 (not b!3847396) (not b!3847412) (not b!3847406) (not b!3847410) (not b_next!103725) b_and!287075 (not b!3847403) (not b!3847411) (not b!3847414) (not b!3847418) tp_is_empty!19377)
(check-sat b_and!287069 b_and!287071 (not b_next!103729) (not b_next!103731) b_and!287077 b_and!287067 b_and!287073 (not b_next!103727) (not b_next!103735) (not b_next!103733) (not b_next!103725) b_and!287075)
