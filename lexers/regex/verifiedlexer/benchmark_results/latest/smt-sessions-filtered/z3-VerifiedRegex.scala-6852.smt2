; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!360180 () Bool)

(assert start!360180)

(declare-fun b!3846278 () Bool)

(declare-fun b_free!102921 () Bool)

(declare-fun b_next!103625 () Bool)

(assert (=> b!3846278 (= b_free!102921 (not b_next!103625))))

(declare-fun tp!1165728 () Bool)

(declare-fun b_and!286919 () Bool)

(assert (=> b!3846278 (= tp!1165728 b_and!286919)))

(declare-fun b_free!102923 () Bool)

(declare-fun b_next!103627 () Bool)

(assert (=> b!3846278 (= b_free!102923 (not b_next!103627))))

(declare-fun tp!1165715 () Bool)

(declare-fun b_and!286921 () Bool)

(assert (=> b!3846278 (= tp!1165715 b_and!286921)))

(declare-fun b!3846308 () Bool)

(declare-fun b_free!102925 () Bool)

(declare-fun b_next!103629 () Bool)

(assert (=> b!3846308 (= b_free!102925 (not b_next!103629))))

(declare-fun tp!1165708 () Bool)

(declare-fun b_and!286923 () Bool)

(assert (=> b!3846308 (= tp!1165708 b_and!286923)))

(declare-fun b_free!102927 () Bool)

(declare-fun b_next!103631 () Bool)

(assert (=> b!3846308 (= b_free!102927 (not b_next!103631))))

(declare-fun tp!1165713 () Bool)

(declare-fun b_and!286925 () Bool)

(assert (=> b!3846308 (= tp!1165713 b_and!286925)))

(declare-fun b!3846305 () Bool)

(declare-fun b_free!102929 () Bool)

(declare-fun b_next!103633 () Bool)

(assert (=> b!3846305 (= b_free!102929 (not b_next!103633))))

(declare-fun tp!1165711 () Bool)

(declare-fun b_and!286927 () Bool)

(assert (=> b!3846305 (= tp!1165711 b_and!286927)))

(declare-fun b_free!102931 () Bool)

(declare-fun b_next!103635 () Bool)

(assert (=> b!3846305 (= b_free!102931 (not b_next!103635))))

(declare-fun tp!1165727 () Bool)

(declare-fun b_and!286929 () Bool)

(assert (=> b!3846305 (= tp!1165727 b_and!286929)))

(declare-fun b!3846293 () Bool)

(declare-fun b_free!102933 () Bool)

(declare-fun b_next!103637 () Bool)

(assert (=> b!3846293 (= b_free!102933 (not b_next!103637))))

(declare-fun tp!1165725 () Bool)

(declare-fun b_and!286931 () Bool)

(assert (=> b!3846293 (= tp!1165725 b_and!286931)))

(declare-fun b_free!102935 () Bool)

(declare-fun b_next!103639 () Bool)

(assert (=> b!3846293 (= b_free!102935 (not b_next!103639))))

(declare-fun tp!1165726 () Bool)

(declare-fun b_and!286933 () Bool)

(assert (=> b!3846293 (= tp!1165726 b_and!286933)))

(declare-fun b!3846270 () Bool)

(declare-fun res!1556955 () Bool)

(declare-fun e!2377057 () Bool)

(assert (=> b!3846270 (=> (not res!1556955) (not e!2377057))))

(declare-datatypes ((C!22580 0))(
  ( (C!22581 (val!13384 Int)) )
))
(declare-datatypes ((List!40860 0))(
  ( (Nil!40736) (Cons!40736 (h!46156 C!22580) (t!311089 List!40860)) )
))
(declare-fun suffixResult!91 () List!40860)

(declare-datatypes ((LexerInterface!5881 0))(
  ( (LexerInterfaceExt!5878 (__x!25261 Int)) (Lexer!5879) )
))
(declare-fun thiss!20629 () LexerInterface!5881)

(declare-fun suffix!1176 () List!40860)

(declare-datatypes ((IArray!25011 0))(
  ( (IArray!25012 (innerList!12563 List!40860)) )
))
(declare-datatypes ((Conc!12503 0))(
  ( (Node!12503 (left!31439 Conc!12503) (right!31769 Conc!12503) (csize!25236 Int) (cheight!12714 Int)) (Leaf!19356 (xs!15809 IArray!25011) (csize!25237 Int)) (Empty!12503) )
))
(declare-datatypes ((BalanceConc!24600 0))(
  ( (BalanceConc!24601 (c!670008 Conc!12503)) )
))
(declare-datatypes ((List!40861 0))(
  ( (Nil!40737) (Cons!40737 (h!46157 (_ BitVec 16)) (t!311090 List!40861)) )
))
(declare-datatypes ((TokenValue!6522 0))(
  ( (FloatLiteralValue!13044 (text!46099 List!40861)) (TokenValueExt!6521 (__x!25262 Int)) (Broken!32610 (value!199930 List!40861)) (Object!6645) (End!6522) (Def!6522) (Underscore!6522) (Match!6522) (Else!6522) (Error!6522) (Case!6522) (If!6522) (Extends!6522) (Abstract!6522) (Class!6522) (Val!6522) (DelimiterValue!13044 (del!6582 List!40861)) (KeywordValue!6528 (value!199931 List!40861)) (CommentValue!13044 (value!199932 List!40861)) (WhitespaceValue!13044 (value!199933 List!40861)) (IndentationValue!6522 (value!199934 List!40861)) (String!46327) (Int32!6522) (Broken!32611 (value!199935 List!40861)) (Boolean!6523) (Unit!58419) (OperatorValue!6525 (op!6582 List!40861)) (IdentifierValue!13044 (value!199936 List!40861)) (IdentifierValue!13045 (value!199937 List!40861)) (WhitespaceValue!13045 (value!199938 List!40861)) (True!13044) (False!13044) (Broken!32612 (value!199939 List!40861)) (Broken!32613 (value!199940 List!40861)) (True!13045) (RightBrace!6522) (RightBracket!6522) (Colon!6522) (Null!6522) (Comma!6522) (LeftBracket!6522) (False!13045) (LeftBrace!6522) (ImaginaryLiteralValue!6522 (text!46100 List!40861)) (StringLiteralValue!19566 (value!199941 List!40861)) (EOFValue!6522 (value!199942 List!40861)) (IdentValue!6522 (value!199943 List!40861)) (DelimiterValue!13045 (value!199944 List!40861)) (DedentValue!6522 (value!199945 List!40861)) (NewLineValue!6522 (value!199946 List!40861)) (IntegerValue!19566 (value!199947 (_ BitVec 32)) (text!46101 List!40861)) (IntegerValue!19567 (value!199948 Int) (text!46102 List!40861)) (Times!6522) (Or!6522) (Equal!6522) (Minus!6522) (Broken!32614 (value!199949 List!40861)) (And!6522) (Div!6522) (LessEqual!6522) (Mod!6522) (Concat!17719) (Not!6522) (Plus!6522) (SpaceValue!6522 (value!199950 List!40861)) (IntegerValue!19568 (value!199951 Int) (text!46103 List!40861)) (StringLiteralValue!19567 (text!46104 List!40861)) (FloatLiteralValue!13045 (text!46105 List!40861)) (BytesLiteralValue!6522 (value!199952 List!40861)) (CommentValue!13045 (value!199953 List!40861)) (StringLiteralValue!19568 (value!199954 List!40861)) (ErrorTokenValue!6522 (msg!6583 List!40861)) )
))
(declare-datatypes ((Regex!11197 0))(
  ( (ElementMatch!11197 (c!670009 C!22580)) (Concat!17720 (regOne!22906 Regex!11197) (regTwo!22906 Regex!11197)) (EmptyExpr!11197) (Star!11197 (reg!11526 Regex!11197)) (EmptyLang!11197) (Union!11197 (regOne!22907 Regex!11197) (regTwo!22907 Regex!11197)) )
))
(declare-datatypes ((String!46328 0))(
  ( (String!46329 (value!199955 String)) )
))
(declare-datatypes ((TokenValueInjection!12472 0))(
  ( (TokenValueInjection!12473 (toValue!8708 Int) (toChars!8567 Int)) )
))
(declare-datatypes ((Rule!12384 0))(
  ( (Rule!12385 (regex!6292 Regex!11197) (tag!7152 String!46328) (isSeparator!6292 Bool) (transformation!6292 TokenValueInjection!12472)) )
))
(declare-datatypes ((List!40862 0))(
  ( (Nil!40738) (Cons!40738 (h!46158 Rule!12384) (t!311091 List!40862)) )
))
(declare-fun rules!2768 () List!40862)

(declare-datatypes ((Token!11722 0))(
  ( (Token!11723 (value!199956 TokenValue!6522) (rule!9138 Rule!12384) (size!30647 Int) (originalCharacters!6892 List!40860)) )
))
(declare-datatypes ((List!40863 0))(
  ( (Nil!40739) (Cons!40739 (h!46159 Token!11722) (t!311092 List!40863)) )
))
(declare-fun suffixTokens!72 () List!40863)

(declare-datatypes ((tuple2!39918 0))(
  ( (tuple2!39919 (_1!23093 List!40863) (_2!23093 List!40860)) )
))
(declare-fun lexList!1649 (LexerInterface!5881 List!40862 List!40860) tuple2!39918)

(assert (=> b!3846270 (= res!1556955 (= (lexList!1649 thiss!20629 rules!2768 suffix!1176) (tuple2!39919 suffixTokens!72 suffixResult!91)))))

(declare-fun e!2377066 () Bool)

(declare-fun e!2377080 () Bool)

(declare-fun b!3846271 () Bool)

(declare-fun tp!1165714 () Bool)

(declare-fun inv!21 (TokenValue!6522) Bool)

(assert (=> b!3846271 (= e!2377080 (and (inv!21 (value!199956 (h!46159 suffixTokens!72))) e!2377066 tp!1165714))))

(declare-fun b!3846272 () Bool)

(declare-fun e!2377083 () Bool)

(declare-fun e!2377085 () Bool)

(assert (=> b!3846272 (= e!2377083 e!2377085)))

(declare-fun res!1556947 () Bool)

(assert (=> b!3846272 (=> res!1556947 e!2377085)))

(declare-datatypes ((tuple2!39920 0))(
  ( (tuple2!39921 (_1!23094 Token!11722) (_2!23094 List!40860)) )
))
(declare-fun lt!1335548 () tuple2!39920)

(declare-datatypes ((Option!8710 0))(
  ( (None!8709) (Some!8709 (v!39001 tuple2!39920)) )
))
(declare-fun lt!1335551 () Option!8710)

(assert (=> b!3846272 (= res!1556947 (not (= (_1!23094 lt!1335548) (_1!23094 (v!39001 lt!1335551)))))))

(declare-fun lt!1335555 () Option!8710)

(declare-fun get!13484 (Option!8710) tuple2!39920)

(assert (=> b!3846272 (= lt!1335548 (get!13484 lt!1335555))))

(declare-fun tp!1165719 () Bool)

(declare-fun e!2377082 () Bool)

(declare-fun e!2377081 () Bool)

(declare-fun err!4321 () Option!8710)

(declare-fun b!3846273 () Bool)

(declare-fun inv!54878 (String!46328) Bool)

(declare-fun inv!54881 (TokenValueInjection!12472) Bool)

(assert (=> b!3846273 (= e!2377081 (and tp!1165719 (inv!54878 (tag!7152 (rule!9138 (_1!23094 (v!39001 err!4321))))) (inv!54881 (transformation!6292 (rule!9138 (_1!23094 (v!39001 err!4321))))) e!2377082))))

(declare-fun b!3846274 () Bool)

(declare-fun e!2377060 () Option!8710)

(declare-fun e!2377062 () Option!8710)

(assert (=> b!3846274 (= e!2377060 e!2377062)))

(declare-fun c!670007 () Bool)

(get-info :version)

(assert (=> b!3846274 (= c!670007 ((_ is Cons!40738) rules!2768))))

(declare-fun b!3846275 () Bool)

(declare-fun e!2377056 () Bool)

(declare-fun e!2377089 () Bool)

(declare-fun tp!1165722 () Bool)

(assert (=> b!3846275 (= e!2377056 (and e!2377089 tp!1165722))))

(declare-fun b!3846276 () Bool)

(declare-fun res!1556956 () Bool)

(declare-fun e!2377053 () Bool)

(assert (=> b!3846276 (=> (not res!1556956) (not e!2377053))))

(declare-fun prefixTokens!80 () List!40863)

(declare-fun isEmpty!24096 (List!40863) Bool)

(assert (=> b!3846276 (= res!1556956 (not (isEmpty!24096 prefixTokens!80)))))

(declare-fun b!3846277 () Bool)

(assert (=> b!3846277 true))

(declare-fun e!2377079 () Bool)

(assert (=> b!3846277 e!2377079))

(assert (=> b!3846277 (= e!2377062 err!4321)))

(declare-fun e!2377073 () Bool)

(assert (=> b!3846278 (= e!2377073 (and tp!1165728 tp!1165715))))

(declare-fun b!3846279 () Bool)

(declare-fun e!2377074 () Bool)

(assert (=> b!3846279 (= e!2377074 (= lt!1335551 e!2377060))))

(declare-fun c!670006 () Bool)

(assert (=> b!3846279 (= c!670006 (and ((_ is Cons!40738) rules!2768) ((_ is Nil!40738) (t!311091 rules!2768))))))

(declare-fun b!3846280 () Bool)

(declare-fun res!1556958 () Bool)

(assert (=> b!3846280 (=> (not res!1556958) (not e!2377053))))

(declare-fun rulesInvariant!5224 (LexerInterface!5881 List!40862) Bool)

(assert (=> b!3846280 (= res!1556958 (rulesInvariant!5224 thiss!20629 rules!2768))))

(declare-fun b!3846281 () Bool)

(declare-fun lt!1335539 () Option!8710)

(declare-fun lt!1335538 () List!40860)

(declare-fun maxPrefix!3185 (LexerInterface!5881 List!40862 List!40860) Option!8710)

(assert (=> b!3846281 (= lt!1335539 (maxPrefix!3185 thiss!20629 (t!311091 rules!2768) lt!1335538))))

(declare-fun lt!1335547 () Option!8710)

(declare-fun call!282072 () Option!8710)

(assert (=> b!3846281 (= lt!1335547 call!282072)))

(assert (=> b!3846281 (= e!2377062 (ite (and ((_ is None!8709) lt!1335547) ((_ is None!8709) lt!1335539)) None!8709 (ite ((_ is None!8709) lt!1335539) lt!1335547 (ite ((_ is None!8709) lt!1335547) lt!1335539 (ite (>= (size!30647 (_1!23094 (v!39001 lt!1335547))) (size!30647 (_1!23094 (v!39001 lt!1335539)))) (Some!8709 (v!39001 lt!1335547)) lt!1335539)))))))

(declare-fun b!3846282 () Bool)

(declare-fun e!2377069 () Bool)

(declare-fun e!2377063 () Bool)

(assert (=> b!3846282 (= e!2377069 (not e!2377063))))

(declare-fun res!1556951 () Bool)

(assert (=> b!3846282 (=> res!1556951 e!2377063)))

(declare-fun lt!1335536 () List!40860)

(assert (=> b!3846282 (= res!1556951 (not (= lt!1335536 lt!1335538)))))

(declare-fun lt!1335544 () tuple2!39918)

(assert (=> b!3846282 (= lt!1335544 (lexList!1649 thiss!20629 rules!2768 (_2!23094 (v!39001 lt!1335551))))))

(declare-fun lt!1335558 () Int)

(declare-fun lt!1335535 () TokenValue!6522)

(declare-fun lt!1335549 () List!40860)

(declare-fun lt!1335554 () List!40860)

(assert (=> b!3846282 (and (= (size!30647 (_1!23094 (v!39001 lt!1335551))) lt!1335558) (= (originalCharacters!6892 (_1!23094 (v!39001 lt!1335551))) lt!1335549) (= (tuple2!39921 (_1!23094 (v!39001 lt!1335551)) (_2!23094 (v!39001 lt!1335551))) (tuple2!39921 (Token!11723 lt!1335535 (rule!9138 (_1!23094 (v!39001 lt!1335551))) lt!1335558 lt!1335549) lt!1335554)))))

(declare-fun size!30648 (List!40860) Int)

(assert (=> b!3846282 (= lt!1335558 (size!30648 lt!1335549))))

(declare-fun e!2377055 () Bool)

(assert (=> b!3846282 e!2377055))

(declare-fun res!1556948 () Bool)

(assert (=> b!3846282 (=> (not res!1556948) (not e!2377055))))

(assert (=> b!3846282 (= res!1556948 (= (value!199956 (_1!23094 (v!39001 lt!1335551))) lt!1335535))))

(declare-fun apply!9535 (TokenValueInjection!12472 BalanceConc!24600) TokenValue!6522)

(declare-fun seqFromList!4563 (List!40860) BalanceConc!24600)

(assert (=> b!3846282 (= lt!1335535 (apply!9535 (transformation!6292 (rule!9138 (_1!23094 (v!39001 lt!1335551)))) (seqFromList!4563 lt!1335549)))))

(assert (=> b!3846282 (= (_2!23094 (v!39001 lt!1335551)) lt!1335554)))

(declare-datatypes ((Unit!58420 0))(
  ( (Unit!58421) )
))
(declare-fun lt!1335546 () Unit!58420)

(declare-fun lemmaSamePrefixThenSameSuffix!1612 (List!40860 List!40860 List!40860 List!40860 List!40860) Unit!58420)

(assert (=> b!3846282 (= lt!1335546 (lemmaSamePrefixThenSameSuffix!1612 lt!1335549 (_2!23094 (v!39001 lt!1335551)) lt!1335549 lt!1335554 lt!1335538))))

(declare-fun getSuffix!1846 (List!40860 List!40860) List!40860)

(assert (=> b!3846282 (= lt!1335554 (getSuffix!1846 lt!1335538 lt!1335549))))

(declare-fun isPrefix!3391 (List!40860 List!40860) Bool)

(assert (=> b!3846282 (isPrefix!3391 lt!1335549 lt!1335536)))

(declare-fun ++!10341 (List!40860 List!40860) List!40860)

(assert (=> b!3846282 (= lt!1335536 (++!10341 lt!1335549 (_2!23094 (v!39001 lt!1335551))))))

(declare-fun lt!1335542 () Unit!58420)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2254 (List!40860 List!40860) Unit!58420)

(assert (=> b!3846282 (= lt!1335542 (lemmaConcatTwoListThenFirstIsPrefix!2254 lt!1335549 (_2!23094 (v!39001 lt!1335551))))))

(declare-fun list!15164 (BalanceConc!24600) List!40860)

(declare-fun charsOf!4120 (Token!11722) BalanceConc!24600)

(assert (=> b!3846282 (= lt!1335549 (list!15164 (charsOf!4120 (_1!23094 (v!39001 lt!1335551)))))))

(declare-fun ruleValid!2244 (LexerInterface!5881 Rule!12384) Bool)

(assert (=> b!3846282 (ruleValid!2244 thiss!20629 (rule!9138 (_1!23094 (v!39001 lt!1335551))))))

(declare-fun lt!1335559 () Unit!58420)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1324 (LexerInterface!5881 Rule!12384 List!40862) Unit!58420)

(assert (=> b!3846282 (= lt!1335559 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1324 thiss!20629 (rule!9138 (_1!23094 (v!39001 lt!1335551))) rules!2768))))

(declare-fun lt!1335552 () Unit!58420)

(declare-fun lemmaCharactersSize!953 (Token!11722) Unit!58420)

(assert (=> b!3846282 (= lt!1335552 (lemmaCharactersSize!953 (_1!23094 (v!39001 lt!1335551))))))

(declare-fun e!2377087 () Bool)

(declare-fun tp!1165717 () Bool)

(declare-fun b!3846283 () Bool)

(assert (=> b!3846283 (= e!2377089 (and tp!1165717 (inv!54878 (tag!7152 (h!46158 rules!2768))) (inv!54881 (transformation!6292 (h!46158 rules!2768))) e!2377087))))

(declare-fun b!3846284 () Bool)

(declare-fun e!2377075 () Bool)

(declare-fun tp_is_empty!19365 () Bool)

(declare-fun tp!1165716 () Bool)

(assert (=> b!3846284 (= e!2377075 (and tp_is_empty!19365 tp!1165716))))

(declare-fun b!3846285 () Bool)

(assert (=> b!3846285 (= e!2377060 call!282072)))

(declare-fun b!3846286 () Bool)

(declare-fun res!1556949 () Bool)

(assert (=> b!3846286 (=> res!1556949 e!2377085)))

(declare-fun isEmpty!24097 (List!40860) Bool)

(assert (=> b!3846286 (= res!1556949 (not (isEmpty!24097 (_2!23094 lt!1335548))))))

(declare-fun b!3846287 () Bool)

(declare-fun res!1556954 () Bool)

(assert (=> b!3846287 (=> res!1556954 e!2377085)))

(declare-fun lt!1335543 () Option!8710)

(assert (=> b!3846287 (= res!1556954 (not (= lt!1335555 lt!1335543)))))

(declare-fun b!3846288 () Bool)

(declare-fun e!2377076 () Bool)

(declare-fun tp!1165723 () Bool)

(assert (=> b!3846288 (= e!2377076 (and tp_is_empty!19365 tp!1165723))))

(declare-fun b!3846289 () Bool)

(declare-fun e!2377070 () Bool)

(declare-fun tp!1165724 () Bool)

(assert (=> b!3846289 (= e!2377070 (and tp_is_empty!19365 tp!1165724))))

(declare-fun b!3846290 () Bool)

(assert (=> b!3846290 (= e!2377085 true)))

(declare-fun lt!1335550 () tuple2!39918)

(declare-fun prefix!426 () List!40860)

(assert (=> b!3846290 (= lt!1335550 (lexList!1649 thiss!20629 rules!2768 prefix!426))))

(declare-fun b!3846291 () Bool)

(assert (=> b!3846291 (= e!2377053 e!2377057)))

(declare-fun res!1556952 () Bool)

(assert (=> b!3846291 (=> (not res!1556952) (not e!2377057))))

(declare-fun lt!1335537 () List!40863)

(declare-fun lt!1335541 () tuple2!39918)

(assert (=> b!3846291 (= res!1556952 (= lt!1335541 (tuple2!39919 lt!1335537 suffixResult!91)))))

(assert (=> b!3846291 (= lt!1335541 (lexList!1649 thiss!20629 rules!2768 lt!1335538))))

(declare-fun ++!10342 (List!40863 List!40863) List!40863)

(assert (=> b!3846291 (= lt!1335537 (++!10342 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3846291 (= lt!1335538 (++!10341 prefix!426 suffix!1176))))

(declare-fun b!3846292 () Bool)

(assert (=> b!3846292 (= e!2377055 (= (size!30647 (_1!23094 (v!39001 lt!1335551))) (size!30648 (originalCharacters!6892 (_1!23094 (v!39001 lt!1335551))))))))

(assert (=> b!3846293 (= e!2377087 (and tp!1165725 tp!1165726))))

(declare-fun b!3846294 () Bool)

(declare-fun res!1556959 () Bool)

(declare-fun e!2377084 () Bool)

(assert (=> b!3846294 (=> res!1556959 e!2377084)))

(assert (=> b!3846294 (= res!1556959 (not (isPrefix!3391 Nil!40736 suffix!1176)))))

(declare-fun bm!282067 () Bool)

(declare-fun maxPrefixOneRule!2269 (LexerInterface!5881 Rule!12384 List!40860) Option!8710)

(assert (=> bm!282067 (= call!282072 (maxPrefixOneRule!2269 thiss!20629 (h!46158 rules!2768) lt!1335538))))

(declare-fun b!3846295 () Bool)

(declare-fun e!2377054 () Bool)

(declare-fun e!2377058 () Bool)

(assert (=> b!3846295 (= e!2377054 e!2377058)))

(declare-fun res!1556953 () Bool)

(assert (=> b!3846295 (=> res!1556953 e!2377058)))

(assert (=> b!3846295 (= res!1556953 (not (= lt!1335551 (Some!8709 (tuple2!39921 (_1!23094 (v!39001 lt!1335551)) (_2!23094 (v!39001 lt!1335551)))))))))

(assert (=> b!3846295 e!2377074))

(declare-fun res!1556961 () Bool)

(assert (=> b!3846295 (=> (not res!1556961) (not e!2377074))))

(assert (=> b!3846295 (= res!1556961 (isPrefix!3391 lt!1335538 lt!1335538))))

(declare-fun lt!1335540 () Unit!58420)

(declare-fun lemmaIsPrefixRefl!2164 (List!40860 List!40860) Unit!58420)

(assert (=> b!3846295 (= lt!1335540 (lemmaIsPrefixRefl!2164 lt!1335538 lt!1335538))))

(assert (=> b!3846295 (= lt!1335541 (tuple2!39919 (Cons!40739 (_1!23094 (v!39001 lt!1335551)) (_1!23093 lt!1335544)) (_2!23093 lt!1335544)))))

(declare-fun tp!1165710 () Bool)

(declare-fun e!2377071 () Bool)

(declare-fun b!3846296 () Bool)

(declare-fun inv!54882 (Token!11722) Bool)

(assert (=> b!3846296 (= e!2377071 (and (inv!54882 (h!46159 suffixTokens!72)) e!2377080 tp!1165710))))

(declare-fun b!3846297 () Bool)

(declare-fun res!1556962 () Bool)

(assert (=> b!3846297 (=> (not res!1556962) (not e!2377053))))

(assert (=> b!3846297 (= res!1556962 (not (isEmpty!24097 prefix!426)))))

(declare-fun b!3846298 () Bool)

(declare-fun e!2377078 () Bool)

(declare-fun tp!1165718 () Bool)

(assert (=> b!3846298 (= e!2377078 (and tp!1165718 (inv!54878 (tag!7152 (rule!9138 (h!46159 prefixTokens!80)))) (inv!54881 (transformation!6292 (rule!9138 (h!46159 prefixTokens!80)))) e!2377073))))

(declare-fun b!3846299 () Bool)

(assert (=> b!3846299 (= e!2377063 e!2377054)))

(declare-fun res!1556946 () Bool)

(assert (=> b!3846299 (=> res!1556946 e!2377054)))

(declare-fun lt!1335545 () List!40863)

(assert (=> b!3846299 (= res!1556946 (or (not (= lt!1335541 (tuple2!39919 lt!1335545 (_2!23093 lt!1335544)))) (not (= lt!1335544 (tuple2!39919 (_1!23093 lt!1335544) (_2!23093 lt!1335544)))) (not (= (_2!23094 (v!39001 lt!1335551)) suffix!1176))))))

(declare-fun lt!1335556 () List!40863)

(assert (=> b!3846299 (= lt!1335545 (++!10342 lt!1335556 (_1!23093 lt!1335544)))))

(assert (=> b!3846299 (= lt!1335556 (Cons!40739 (_1!23094 (v!39001 lt!1335551)) Nil!40739))))

(declare-fun b!3846300 () Bool)

(assert (=> b!3846300 (= e!2377058 e!2377084)))

(declare-fun res!1556957 () Bool)

(assert (=> b!3846300 (=> res!1556957 e!2377084)))

(assert (=> b!3846300 (= res!1556957 (or (not (= lt!1335537 (_1!23093 lt!1335541))) (not (= lt!1335537 lt!1335545)) (not (= prefixTokens!80 lt!1335556)) (not (= prefix!426 lt!1335549))))))

(assert (=> b!3846300 (= lt!1335549 prefix!426)))

(declare-fun lt!1335557 () Unit!58420)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!420 (List!40860 List!40860 List!40860 List!40860) Unit!58420)

(assert (=> b!3846300 (= lt!1335557 (lemmaConcatSameAndSameSizesThenSameLists!420 lt!1335549 (_2!23094 (v!39001 lt!1335551)) prefix!426 suffix!1176))))

(declare-fun b!3846301 () Bool)

(assert (=> b!3846301 (= e!2377057 e!2377069)))

(declare-fun res!1556945 () Bool)

(assert (=> b!3846301 (=> (not res!1556945) (not e!2377069))))

(assert (=> b!3846301 (= res!1556945 ((_ is Some!8709) lt!1335551))))

(assert (=> b!3846301 (= lt!1335551 (maxPrefix!3185 thiss!20629 rules!2768 lt!1335538))))

(declare-fun b!3846302 () Bool)

(declare-fun res!1556960 () Bool)

(assert (=> b!3846302 (=> (not res!1556960) (not e!2377053))))

(declare-fun isEmpty!24098 (List!40862) Bool)

(assert (=> b!3846302 (= res!1556960 (not (isEmpty!24098 rules!2768)))))

(declare-fun e!2377077 () Bool)

(declare-fun tp!1165720 () Bool)

(declare-fun b!3846303 () Bool)

(declare-fun e!2377067 () Bool)

(assert (=> b!3846303 (= e!2377067 (and (inv!54882 (h!46159 prefixTokens!80)) e!2377077 tp!1165720))))

(declare-fun b!3846304 () Bool)

(declare-fun tp!1165709 () Bool)

(assert (=> b!3846304 (= e!2377077 (and (inv!21 (value!199956 (h!46159 prefixTokens!80))) e!2377078 tp!1165709))))

(declare-fun e!2377068 () Bool)

(assert (=> b!3846305 (= e!2377068 (and tp!1165711 tp!1165727))))

(declare-fun e!2377090 () Bool)

(declare-fun tp!1165721 () Bool)

(declare-fun b!3846306 () Bool)

(assert (=> b!3846306 (= e!2377090 (and (inv!21 (value!199956 (_1!23094 (v!39001 err!4321)))) e!2377081 tp!1165721))))

(declare-fun res!1556944 () Bool)

(assert (=> start!360180 (=> (not res!1556944) (not e!2377053))))

(assert (=> start!360180 (= res!1556944 ((_ is Lexer!5879) thiss!20629))))

(assert (=> start!360180 e!2377053))

(assert (=> start!360180 e!2377075))

(assert (=> start!360180 true))

(assert (=> start!360180 e!2377076))

(assert (=> start!360180 e!2377056))

(assert (=> start!360180 e!2377067))

(assert (=> start!360180 e!2377071))

(assert (=> start!360180 e!2377070))

(declare-fun b!3846307 () Bool)

(declare-fun tp!1165712 () Bool)

(assert (=> b!3846307 (= e!2377079 (and (inv!54882 (_1!23094 (v!39001 err!4321))) e!2377090 tp!1165712))))

(assert (=> b!3846308 (= e!2377082 (and tp!1165708 tp!1165713))))

(declare-fun tp!1165707 () Bool)

(declare-fun b!3846309 () Bool)

(assert (=> b!3846309 (= e!2377066 (and tp!1165707 (inv!54878 (tag!7152 (rule!9138 (h!46159 suffixTokens!72)))) (inv!54881 (transformation!6292 (rule!9138 (h!46159 suffixTokens!72)))) e!2377068))))

(declare-fun b!3846310 () Bool)

(assert (=> b!3846310 (= e!2377084 e!2377083)))

(declare-fun res!1556950 () Bool)

(assert (=> b!3846310 (=> res!1556950 e!2377083)))

(declare-fun isDefined!6841 (Option!8710) Bool)

(assert (=> b!3846310 (= res!1556950 (not (isDefined!6841 lt!1335555)))))

(assert (=> b!3846310 (= lt!1335555 (maxPrefix!3185 thiss!20629 rules!2768 prefix!426))))

(assert (=> b!3846310 (= (maxPrefix!3185 thiss!20629 rules!2768 (++!10341 prefix!426 Nil!40736)) lt!1335543)))

(assert (=> b!3846310 (= lt!1335543 (Some!8709 (tuple2!39921 (_1!23094 (v!39001 lt!1335551)) Nil!40736)))))

(declare-fun lt!1335553 () Unit!58420)

(declare-fun lemmaMaxPrefixThenWithShorterSuffix!22 (LexerInterface!5881 List!40862 List!40860 List!40860 List!40860 Token!11722 List!40860 List!40860) Unit!58420)

(assert (=> b!3846310 (= lt!1335553 (lemmaMaxPrefixThenWithShorterSuffix!22 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!40736 (_1!23094 (v!39001 lt!1335551)) suffix!1176 Nil!40736))))

(assert (= (and start!360180 res!1556944) b!3846302))

(assert (= (and b!3846302 res!1556960) b!3846280))

(assert (= (and b!3846280 res!1556958) b!3846276))

(assert (= (and b!3846276 res!1556956) b!3846297))

(assert (= (and b!3846297 res!1556962) b!3846291))

(assert (= (and b!3846291 res!1556952) b!3846270))

(assert (= (and b!3846270 res!1556955) b!3846301))

(assert (= (and b!3846301 res!1556945) b!3846282))

(assert (= (and b!3846282 res!1556948) b!3846292))

(assert (= (and b!3846282 (not res!1556951)) b!3846299))

(assert (= (and b!3846299 (not res!1556946)) b!3846295))

(assert (= (and b!3846295 res!1556961) b!3846279))

(assert (= (and b!3846279 c!670006) b!3846285))

(assert (= (and b!3846279 (not c!670006)) b!3846274))

(assert (= (and b!3846274 c!670007) b!3846281))

(assert (= (and b!3846274 (not c!670007)) b!3846277))

(assert (= b!3846273 b!3846308))

(assert (= b!3846306 b!3846273))

(assert (= b!3846307 b!3846306))

(assert (= (and b!3846277 ((_ is Some!8709) err!4321)) b!3846307))

(assert (= (or b!3846285 b!3846281) bm!282067))

(assert (= (and b!3846295 (not res!1556953)) b!3846300))

(assert (= (and b!3846300 (not res!1556957)) b!3846294))

(assert (= (and b!3846294 (not res!1556959)) b!3846310))

(assert (= (and b!3846310 (not res!1556950)) b!3846272))

(assert (= (and b!3846272 (not res!1556947)) b!3846286))

(assert (= (and b!3846286 (not res!1556949)) b!3846287))

(assert (= (and b!3846287 (not res!1556954)) b!3846290))

(assert (= (and start!360180 ((_ is Cons!40736) suffixResult!91)) b!3846284))

(assert (= (and start!360180 ((_ is Cons!40736) suffix!1176)) b!3846288))

(assert (= b!3846283 b!3846293))

(assert (= b!3846275 b!3846283))

(assert (= (and start!360180 ((_ is Cons!40738) rules!2768)) b!3846275))

(assert (= b!3846298 b!3846278))

(assert (= b!3846304 b!3846298))

(assert (= b!3846303 b!3846304))

(assert (= (and start!360180 ((_ is Cons!40739) prefixTokens!80)) b!3846303))

(assert (= b!3846309 b!3846305))

(assert (= b!3846271 b!3846309))

(assert (= b!3846296 b!3846271))

(assert (= (and start!360180 ((_ is Cons!40739) suffixTokens!72)) b!3846296))

(assert (= (and start!360180 ((_ is Cons!40736) prefix!426)) b!3846289))

(declare-fun m!4400999 () Bool)

(assert (=> b!3846270 m!4400999))

(declare-fun m!4401001 () Bool)

(assert (=> b!3846301 m!4401001))

(declare-fun m!4401003 () Bool)

(assert (=> b!3846310 m!4401003))

(declare-fun m!4401005 () Bool)

(assert (=> b!3846310 m!4401005))

(declare-fun m!4401007 () Bool)

(assert (=> b!3846310 m!4401007))

(declare-fun m!4401009 () Bool)

(assert (=> b!3846310 m!4401009))

(declare-fun m!4401011 () Bool)

(assert (=> b!3846310 m!4401011))

(assert (=> b!3846310 m!4401003))

(declare-fun m!4401013 () Bool)

(assert (=> b!3846299 m!4401013))

(declare-fun m!4401015 () Bool)

(assert (=> b!3846296 m!4401015))

(declare-fun m!4401017 () Bool)

(assert (=> b!3846298 m!4401017))

(declare-fun m!4401019 () Bool)

(assert (=> b!3846298 m!4401019))

(declare-fun m!4401021 () Bool)

(assert (=> b!3846286 m!4401021))

(declare-fun m!4401023 () Bool)

(assert (=> b!3846280 m!4401023))

(declare-fun m!4401025 () Bool)

(assert (=> b!3846282 m!4401025))

(declare-fun m!4401027 () Bool)

(assert (=> b!3846282 m!4401027))

(declare-fun m!4401029 () Bool)

(assert (=> b!3846282 m!4401029))

(assert (=> b!3846282 m!4401027))

(declare-fun m!4401031 () Bool)

(assert (=> b!3846282 m!4401031))

(declare-fun m!4401033 () Bool)

(assert (=> b!3846282 m!4401033))

(assert (=> b!3846282 m!4401031))

(declare-fun m!4401035 () Bool)

(assert (=> b!3846282 m!4401035))

(declare-fun m!4401037 () Bool)

(assert (=> b!3846282 m!4401037))

(declare-fun m!4401039 () Bool)

(assert (=> b!3846282 m!4401039))

(declare-fun m!4401041 () Bool)

(assert (=> b!3846282 m!4401041))

(declare-fun m!4401043 () Bool)

(assert (=> b!3846282 m!4401043))

(declare-fun m!4401045 () Bool)

(assert (=> b!3846282 m!4401045))

(declare-fun m!4401047 () Bool)

(assert (=> b!3846282 m!4401047))

(declare-fun m!4401049 () Bool)

(assert (=> b!3846282 m!4401049))

(declare-fun m!4401051 () Bool)

(assert (=> b!3846282 m!4401051))

(declare-fun m!4401053 () Bool)

(assert (=> b!3846295 m!4401053))

(declare-fun m!4401055 () Bool)

(assert (=> b!3846295 m!4401055))

(declare-fun m!4401057 () Bool)

(assert (=> b!3846297 m!4401057))

(declare-fun m!4401059 () Bool)

(assert (=> b!3846307 m!4401059))

(declare-fun m!4401061 () Bool)

(assert (=> b!3846291 m!4401061))

(declare-fun m!4401063 () Bool)

(assert (=> b!3846291 m!4401063))

(declare-fun m!4401065 () Bool)

(assert (=> b!3846291 m!4401065))

(declare-fun m!4401067 () Bool)

(assert (=> b!3846273 m!4401067))

(declare-fun m!4401069 () Bool)

(assert (=> b!3846273 m!4401069))

(declare-fun m!4401071 () Bool)

(assert (=> b!3846283 m!4401071))

(declare-fun m!4401073 () Bool)

(assert (=> b!3846283 m!4401073))

(declare-fun m!4401075 () Bool)

(assert (=> b!3846272 m!4401075))

(declare-fun m!4401077 () Bool)

(assert (=> b!3846304 m!4401077))

(declare-fun m!4401079 () Bool)

(assert (=> b!3846303 m!4401079))

(declare-fun m!4401081 () Bool)

(assert (=> b!3846306 m!4401081))

(declare-fun m!4401083 () Bool)

(assert (=> b!3846290 m!4401083))

(declare-fun m!4401085 () Bool)

(assert (=> b!3846281 m!4401085))

(declare-fun m!4401087 () Bool)

(assert (=> bm!282067 m!4401087))

(declare-fun m!4401089 () Bool)

(assert (=> b!3846294 m!4401089))

(declare-fun m!4401091 () Bool)

(assert (=> b!3846292 m!4401091))

(declare-fun m!4401093 () Bool)

(assert (=> b!3846302 m!4401093))

(declare-fun m!4401095 () Bool)

(assert (=> b!3846271 m!4401095))

(declare-fun m!4401097 () Bool)

(assert (=> b!3846300 m!4401097))

(declare-fun m!4401099 () Bool)

(assert (=> b!3846276 m!4401099))

(declare-fun m!4401101 () Bool)

(assert (=> b!3846309 m!4401101))

(declare-fun m!4401103 () Bool)

(assert (=> b!3846309 m!4401103))

(check-sat (not b!3846275) (not b_next!103631) tp_is_empty!19365 (not b!3846294) b_and!286925 (not b!3846291) (not b_next!103629) (not b!3846284) (not b!3846286) (not b!3846304) (not b!3846288) (not b_next!103633) (not b!3846276) (not b!3846281) b_and!286927 (not b!3846280) (not b!3846282) (not b_next!103637) b_and!286921 (not b!3846271) (not b!3846300) (not b!3846297) (not b!3846299) (not b!3846292) (not b!3846283) b_and!286933 (not b!3846301) (not b_next!103625) (not b!3846289) b_and!286919 (not b!3846307) b_and!286929 (not b!3846270) (not b_next!103639) (not b!3846306) (not b!3846290) b_and!286923 (not b!3846272) b_and!286931 (not b!3846302) (not b!3846303) (not b!3846298) (not b_next!103635) (not b!3846310) (not b!3846273) (not b!3846296) (not b!3846309) (not bm!282067) (not b!3846295) (not b_next!103627))
(check-sat (not b_next!103629) (not b_next!103633) b_and!286927 b_and!286919 (not b_next!103631) b_and!286925 b_and!286929 (not b_next!103639) b_and!286923 b_and!286931 (not b_next!103635) (not b_next!103627) (not b_next!103637) b_and!286921 b_and!286933 (not b_next!103625))
