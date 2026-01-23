; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!119880 () Bool)

(assert start!119880)

(declare-fun b!1341883 () Bool)

(declare-fun b_free!32679 () Bool)

(declare-fun b_next!33383 () Bool)

(assert (=> b!1341883 (= b_free!32679 (not b_next!33383))))

(declare-fun tp!388529 () Bool)

(declare-fun b_and!89767 () Bool)

(assert (=> b!1341883 (= tp!388529 b_and!89767)))

(declare-fun b_free!32681 () Bool)

(declare-fun b_next!33385 () Bool)

(assert (=> b!1341883 (= b_free!32681 (not b_next!33385))))

(declare-fun tp!388531 () Bool)

(declare-fun b_and!89769 () Bool)

(assert (=> b!1341883 (= tp!388531 b_and!89769)))

(declare-fun b!1341898 () Bool)

(declare-fun b_free!32683 () Bool)

(declare-fun b_next!33387 () Bool)

(assert (=> b!1341898 (= b_free!32683 (not b_next!33387))))

(declare-fun tp!388537 () Bool)

(declare-fun b_and!89771 () Bool)

(assert (=> b!1341898 (= tp!388537 b_and!89771)))

(declare-fun b_free!32685 () Bool)

(declare-fun b_next!33389 () Bool)

(assert (=> b!1341898 (= b_free!32685 (not b_next!33389))))

(declare-fun tp!388528 () Bool)

(declare-fun b_and!89773 () Bool)

(assert (=> b!1341898 (= tp!388528 b_and!89773)))

(declare-fun b!1341899 () Bool)

(declare-fun b_free!32687 () Bool)

(declare-fun b_next!33391 () Bool)

(assert (=> b!1341899 (= b_free!32687 (not b_next!33391))))

(declare-fun tp!388530 () Bool)

(declare-fun b_and!89775 () Bool)

(assert (=> b!1341899 (= tp!388530 b_and!89775)))

(declare-fun b_free!32689 () Bool)

(declare-fun b_next!33393 () Bool)

(assert (=> b!1341899 (= b_free!32689 (not b_next!33393))))

(declare-fun tp!388534 () Bool)

(declare-fun b_and!89777 () Bool)

(assert (=> b!1341899 (= tp!388534 b_and!89777)))

(declare-fun b!1341893 () Bool)

(assert (=> b!1341893 true))

(assert (=> b!1341893 true))

(declare-fun b!1341876 () Bool)

(declare-fun res!604555 () Bool)

(declare-fun e!859319 () Bool)

(assert (=> b!1341876 (=> (not res!604555) (not e!859319))))

(declare-datatypes ((C!7666 0))(
  ( (C!7667 (val!4393 Int)) )
))
(declare-datatypes ((List!13765 0))(
  ( (Nil!13699) (Cons!13699 (h!19100 C!7666) (t!119530 List!13765)) )
))
(declare-datatypes ((IArray!9033 0))(
  ( (IArray!9034 (innerList!4574 List!13765)) )
))
(declare-datatypes ((List!13766 0))(
  ( (Nil!13700) (Cons!13700 (h!19101 (_ BitVec 16)) (t!119531 List!13766)) )
))
(declare-datatypes ((Conc!4514 0))(
  ( (Node!4514 (left!11749 Conc!4514) (right!12079 Conc!4514) (csize!9258 Int) (cheight!4725 Int)) (Leaf!6898 (xs!7233 IArray!9033) (csize!9259 Int)) (Empty!4514) )
))
(declare-datatypes ((BalanceConc!8968 0))(
  ( (BalanceConc!8969 (c!219843 Conc!4514)) )
))
(declare-datatypes ((TokenValue!2464 0))(
  ( (FloatLiteralValue!4928 (text!17693 List!13766)) (TokenValueExt!2463 (__x!8757 Int)) (Broken!12320 (value!77267 List!13766)) (Object!2529) (End!2464) (Def!2464) (Underscore!2464) (Match!2464) (Else!2464) (Error!2464) (Case!2464) (If!2464) (Extends!2464) (Abstract!2464) (Class!2464) (Val!2464) (DelimiterValue!4928 (del!2524 List!13766)) (KeywordValue!2470 (value!77268 List!13766)) (CommentValue!4928 (value!77269 List!13766)) (WhitespaceValue!4928 (value!77270 List!13766)) (IndentationValue!2464 (value!77271 List!13766)) (String!16557) (Int32!2464) (Broken!12321 (value!77272 List!13766)) (Boolean!2465) (Unit!19821) (OperatorValue!2467 (op!2524 List!13766)) (IdentifierValue!4928 (value!77273 List!13766)) (IdentifierValue!4929 (value!77274 List!13766)) (WhitespaceValue!4929 (value!77275 List!13766)) (True!4928) (False!4928) (Broken!12322 (value!77276 List!13766)) (Broken!12323 (value!77277 List!13766)) (True!4929) (RightBrace!2464) (RightBracket!2464) (Colon!2464) (Null!2464) (Comma!2464) (LeftBracket!2464) (False!4929) (LeftBrace!2464) (ImaginaryLiteralValue!2464 (text!17694 List!13766)) (StringLiteralValue!7392 (value!77278 List!13766)) (EOFValue!2464 (value!77279 List!13766)) (IdentValue!2464 (value!77280 List!13766)) (DelimiterValue!4929 (value!77281 List!13766)) (DedentValue!2464 (value!77282 List!13766)) (NewLineValue!2464 (value!77283 List!13766)) (IntegerValue!7392 (value!77284 (_ BitVec 32)) (text!17695 List!13766)) (IntegerValue!7393 (value!77285 Int) (text!17696 List!13766)) (Times!2464) (Or!2464) (Equal!2464) (Minus!2464) (Broken!12324 (value!77286 List!13766)) (And!2464) (Div!2464) (LessEqual!2464) (Mod!2464) (Concat!6152) (Not!2464) (Plus!2464) (SpaceValue!2464 (value!77287 List!13766)) (IntegerValue!7394 (value!77288 Int) (text!17697 List!13766)) (StringLiteralValue!7393 (text!17698 List!13766)) (FloatLiteralValue!4929 (text!17699 List!13766)) (BytesLiteralValue!2464 (value!77289 List!13766)) (CommentValue!4929 (value!77290 List!13766)) (StringLiteralValue!7394 (value!77291 List!13766)) (ErrorTokenValue!2464 (msg!2525 List!13766)) )
))
(declare-datatypes ((Regex!3688 0))(
  ( (ElementMatch!3688 (c!219844 C!7666)) (Concat!6153 (regOne!7888 Regex!3688) (regTwo!7888 Regex!3688)) (EmptyExpr!3688) (Star!3688 (reg!4017 Regex!3688)) (EmptyLang!3688) (Union!3688 (regOne!7889 Regex!3688) (regTwo!7889 Regex!3688)) )
))
(declare-datatypes ((String!16558 0))(
  ( (String!16559 (value!77292 String)) )
))
(declare-datatypes ((TokenValueInjection!4588 0))(
  ( (TokenValueInjection!4589 (toValue!3617 Int) (toChars!3476 Int)) )
))
(declare-datatypes ((Rule!4548 0))(
  ( (Rule!4549 (regex!2374 Regex!3688) (tag!2636 String!16558) (isSeparator!2374 Bool) (transformation!2374 TokenValueInjection!4588)) )
))
(declare-datatypes ((List!13767 0))(
  ( (Nil!13701) (Cons!13701 (h!19102 Rule!4548) (t!119532 List!13767)) )
))
(declare-fun rules!2550 () List!13767)

(declare-fun sepAndNonSepRulesDisjointChars!747 (List!13767 List!13767) Bool)

(assert (=> b!1341876 (= res!604555 (sepAndNonSepRulesDisjointChars!747 rules!2550 rules!2550))))

(declare-fun tp!388538 () Bool)

(declare-fun e!859304 () Bool)

(declare-fun e!859320 () Bool)

(declare-fun b!1341878 () Bool)

(declare-datatypes ((Token!4410 0))(
  ( (Token!4411 (value!77293 TokenValue!2464) (rule!4119 Rule!4548) (size!11169 Int) (originalCharacters!3236 List!13765)) )
))
(declare-fun t2!34 () Token!4410)

(declare-fun inv!21 (TokenValue!2464) Bool)

(assert (=> b!1341878 (= e!859304 (and (inv!21 (value!77293 t2!34)) e!859320 tp!388538))))

(declare-fun b!1341879 () Bool)

(declare-fun res!604543 () Bool)

(declare-fun e!859315 () Bool)

(assert (=> b!1341879 (=> res!604543 e!859315)))

(declare-fun lt!443956 () List!13765)

(declare-fun lt!443954 () C!7666)

(declare-fun contains!2502 (List!13765 C!7666) Bool)

(assert (=> b!1341879 (= res!604543 (not (contains!2502 lt!443956 lt!443954)))))

(declare-fun b!1341880 () Bool)

(declare-fun lt!443949 () Regex!3688)

(declare-fun matchR!1681 (Regex!3688 List!13765) Bool)

(assert (=> b!1341880 (= e!859315 (matchR!1681 lt!443949 lt!443956))))

(declare-fun b!1341881 () Bool)

(declare-fun res!604554 () Bool)

(assert (=> b!1341881 (=> res!604554 e!859315)))

(declare-fun lt!443957 () C!7666)

(assert (=> b!1341881 (= res!604554 (not (contains!2502 lt!443956 lt!443957)))))

(declare-fun b!1341882 () Bool)

(declare-fun e!859313 () Bool)

(assert (=> b!1341882 (= e!859313 e!859319)))

(declare-fun res!604548 () Bool)

(assert (=> b!1341882 (=> (not res!604548) (not e!859319))))

(declare-fun lt!443950 () BalanceConc!8968)

(declare-fun size!11170 (BalanceConc!8968) Int)

(assert (=> b!1341882 (= res!604548 (> (size!11170 lt!443950) 0))))

(declare-fun charsOf!1346 (Token!4410) BalanceConc!8968)

(assert (=> b!1341882 (= lt!443950 (charsOf!1346 t2!34))))

(declare-fun e!859308 () Bool)

(assert (=> b!1341883 (= e!859308 (and tp!388529 tp!388531))))

(declare-fun b!1341884 () Bool)

(declare-fun e!859322 () Bool)

(assert (=> b!1341884 (= e!859319 e!859322)))

(declare-fun res!604546 () Bool)

(assert (=> b!1341884 (=> (not res!604546) (not e!859322))))

(declare-fun lt!443952 () List!13765)

(declare-fun prefixMatch!197 (Regex!3688 List!13765) Bool)

(assert (=> b!1341884 (= res!604546 (prefixMatch!197 lt!443949 lt!443952))))

(declare-datatypes ((LexerInterface!2069 0))(
  ( (LexerInterfaceExt!2066 (__x!8758 Int)) (Lexer!2067) )
))
(declare-fun thiss!19762 () LexerInterface!2069)

(declare-fun rulesRegex!257 (LexerInterface!2069 List!13767) Regex!3688)

(assert (=> b!1341884 (= lt!443949 (rulesRegex!257 thiss!19762 rules!2550))))

(declare-fun lt!443953 () List!13765)

(declare-fun ++!3509 (List!13765 List!13765) List!13765)

(assert (=> b!1341884 (= lt!443952 (++!3509 lt!443953 (Cons!13699 lt!443954 Nil!13699)))))

(declare-fun apply!3240 (BalanceConc!8968 Int) C!7666)

(assert (=> b!1341884 (= lt!443954 (apply!3240 lt!443950 0))))

(declare-fun lt!443951 () BalanceConc!8968)

(declare-fun list!5220 (BalanceConc!8968) List!13765)

(assert (=> b!1341884 (= lt!443953 (list!5220 lt!443951))))

(declare-fun t1!34 () Token!4410)

(assert (=> b!1341884 (= lt!443951 (charsOf!1346 t1!34))))

(declare-fun e!859316 () Bool)

(declare-fun e!859310 () Bool)

(declare-fun tp!388533 () Bool)

(declare-fun b!1341885 () Bool)

(assert (=> b!1341885 (= e!859310 (and (inv!21 (value!77293 t1!34)) e!859316 tp!388533))))

(declare-fun b!1341886 () Bool)

(declare-fun res!604553 () Bool)

(assert (=> b!1341886 (=> (not res!604553) (not e!859313))))

(declare-fun isEmpty!8180 (List!13767) Bool)

(assert (=> b!1341886 (= res!604553 (not (isEmpty!8180 rules!2550)))))

(declare-fun b!1341887 () Bool)

(declare-fun e!859306 () Bool)

(declare-fun e!859303 () Bool)

(declare-fun tp!388536 () Bool)

(assert (=> b!1341887 (= e!859306 (and e!859303 tp!388536))))

(declare-fun b!1341888 () Bool)

(declare-fun res!604550 () Bool)

(assert (=> b!1341888 (=> (not res!604550) (not e!859313))))

(declare-fun rulesProduceIndividualToken!1038 (LexerInterface!2069 List!13767 Token!4410) Bool)

(assert (=> b!1341888 (= res!604550 (rulesProduceIndividualToken!1038 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1341889 () Bool)

(declare-fun e!859321 () Bool)

(assert (=> b!1341889 (= e!859321 e!859315)))

(declare-fun res!604552 () Bool)

(assert (=> b!1341889 (=> res!604552 e!859315)))

(assert (=> b!1341889 (= res!604552 (not (contains!2502 lt!443952 lt!443957)))))

(assert (=> b!1341889 (= lt!443957 (apply!3240 lt!443951 0))))

(declare-fun b!1341890 () Bool)

(declare-fun tp!388535 () Bool)

(declare-fun e!859309 () Bool)

(declare-fun inv!18038 (String!16558) Bool)

(declare-fun inv!18041 (TokenValueInjection!4588) Bool)

(assert (=> b!1341890 (= e!859303 (and tp!388535 (inv!18038 (tag!2636 (h!19102 rules!2550))) (inv!18041 (transformation!2374 (h!19102 rules!2550))) e!859309))))

(declare-fun b!1341877 () Bool)

(declare-fun res!604541 () Bool)

(assert (=> b!1341877 (=> (not res!604541) (not e!859319))))

(declare-fun separableTokensPredicate!352 (LexerInterface!2069 Token!4410 Token!4410 List!13767) Bool)

(assert (=> b!1341877 (= res!604541 (not (separableTokensPredicate!352 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun res!604551 () Bool)

(assert (=> start!119880 (=> (not res!604551) (not e!859313))))

(assert (=> start!119880 (= res!604551 (is-Lexer!2067 thiss!19762))))

(assert (=> start!119880 e!859313))

(assert (=> start!119880 true))

(assert (=> start!119880 e!859306))

(declare-fun inv!18042 (Token!4410) Bool)

(assert (=> start!119880 (and (inv!18042 t1!34) e!859310)))

(assert (=> start!119880 (and (inv!18042 t2!34) e!859304)))

(declare-fun tp!388527 () Bool)

(declare-fun b!1341891 () Bool)

(assert (=> b!1341891 (= e!859316 (and tp!388527 (inv!18038 (tag!2636 (rule!4119 t1!34))) (inv!18041 (transformation!2374 (rule!4119 t1!34))) e!859308))))

(declare-fun b!1341892 () Bool)

(declare-fun res!604549 () Bool)

(assert (=> b!1341892 (=> (not res!604549) (not e!859313))))

(declare-fun rulesInvariant!1939 (LexerInterface!2069 List!13767) Bool)

(assert (=> b!1341892 (= res!604549 (rulesInvariant!1939 thiss!19762 rules!2550))))

(declare-fun e!859318 () Bool)

(assert (=> b!1341893 (= e!859322 (not e!859318))))

(declare-fun res!604545 () Bool)

(assert (=> b!1341893 (=> res!604545 e!859318)))

(declare-fun lambda!56230 () Int)

(declare-fun Exists!840 (Int) Bool)

(assert (=> b!1341893 (= res!604545 (not (Exists!840 lambda!56230)))))

(assert (=> b!1341893 (Exists!840 lambda!56230)))

(declare-datatypes ((Unit!19822 0))(
  ( (Unit!19823) )
))
(declare-fun lt!443955 () Unit!19822)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!158 (Regex!3688 List!13765) Unit!19822)

(assert (=> b!1341893 (= lt!443955 (lemmaPrefixMatchThenExistsStringThatMatches!158 lt!443949 lt!443952))))

(declare-fun tp!388532 () Bool)

(declare-fun b!1341894 () Bool)

(declare-fun e!859317 () Bool)

(assert (=> b!1341894 (= e!859320 (and tp!388532 (inv!18038 (tag!2636 (rule!4119 t2!34))) (inv!18041 (transformation!2374 (rule!4119 t2!34))) e!859317))))

(declare-fun b!1341895 () Bool)

(declare-fun res!604556 () Bool)

(assert (=> b!1341895 (=> res!604556 e!859315)))

(assert (=> b!1341895 (= res!604556 (not (contains!2502 lt!443952 lt!443954)))))

(declare-fun b!1341896 () Bool)

(declare-fun res!604542 () Bool)

(assert (=> b!1341896 (=> (not res!604542) (not e!859313))))

(assert (=> b!1341896 (= res!604542 (not (= (isSeparator!2374 (rule!4119 t1!34)) (isSeparator!2374 (rule!4119 t2!34)))))))

(declare-fun b!1341897 () Bool)

(assert (=> b!1341897 (= e!859318 e!859321)))

(declare-fun res!604544 () Bool)

(assert (=> b!1341897 (=> res!604544 e!859321)))

(declare-fun getSuffix!536 (List!13765 List!13765) List!13765)

(assert (=> b!1341897 (= res!604544 (not (= lt!443956 (++!3509 lt!443952 (getSuffix!536 lt!443956 lt!443952)))))))

(declare-fun pickWitness!143 (Int) List!13765)

(assert (=> b!1341897 (= lt!443956 (pickWitness!143 lambda!56230))))

(assert (=> b!1341898 (= e!859309 (and tp!388537 tp!388528))))

(assert (=> b!1341899 (= e!859317 (and tp!388530 tp!388534))))

(declare-fun b!1341900 () Bool)

(declare-fun res!604547 () Bool)

(assert (=> b!1341900 (=> (not res!604547) (not e!859313))))

(assert (=> b!1341900 (= res!604547 (rulesProduceIndividualToken!1038 thiss!19762 rules!2550 t2!34))))

(assert (= (and start!119880 res!604551) b!1341886))

(assert (= (and b!1341886 res!604553) b!1341892))

(assert (= (and b!1341892 res!604549) b!1341888))

(assert (= (and b!1341888 res!604550) b!1341900))

(assert (= (and b!1341900 res!604547) b!1341896))

(assert (= (and b!1341896 res!604542) b!1341882))

(assert (= (and b!1341882 res!604548) b!1341876))

(assert (= (and b!1341876 res!604555) b!1341877))

(assert (= (and b!1341877 res!604541) b!1341884))

(assert (= (and b!1341884 res!604546) b!1341893))

(assert (= (and b!1341893 (not res!604545)) b!1341897))

(assert (= (and b!1341897 (not res!604544)) b!1341889))

(assert (= (and b!1341889 (not res!604552)) b!1341881))

(assert (= (and b!1341881 (not res!604554)) b!1341895))

(assert (= (and b!1341895 (not res!604556)) b!1341879))

(assert (= (and b!1341879 (not res!604543)) b!1341880))

(assert (= b!1341890 b!1341898))

(assert (= b!1341887 b!1341890))

(assert (= (and start!119880 (is-Cons!13701 rules!2550)) b!1341887))

(assert (= b!1341891 b!1341883))

(assert (= b!1341885 b!1341891))

(assert (= start!119880 b!1341885))

(assert (= b!1341894 b!1341899))

(assert (= b!1341878 b!1341894))

(assert (= start!119880 b!1341878))

(declare-fun m!1500451 () Bool)

(assert (=> b!1341893 m!1500451))

(assert (=> b!1341893 m!1500451))

(declare-fun m!1500453 () Bool)

(assert (=> b!1341893 m!1500453))

(declare-fun m!1500455 () Bool)

(assert (=> b!1341880 m!1500455))

(declare-fun m!1500457 () Bool)

(assert (=> b!1341892 m!1500457))

(declare-fun m!1500459 () Bool)

(assert (=> b!1341900 m!1500459))

(declare-fun m!1500461 () Bool)

(assert (=> b!1341890 m!1500461))

(declare-fun m!1500463 () Bool)

(assert (=> b!1341890 m!1500463))

(declare-fun m!1500465 () Bool)

(assert (=> b!1341884 m!1500465))

(declare-fun m!1500467 () Bool)

(assert (=> b!1341884 m!1500467))

(declare-fun m!1500469 () Bool)

(assert (=> b!1341884 m!1500469))

(declare-fun m!1500471 () Bool)

(assert (=> b!1341884 m!1500471))

(declare-fun m!1500473 () Bool)

(assert (=> b!1341884 m!1500473))

(declare-fun m!1500475 () Bool)

(assert (=> b!1341884 m!1500475))

(declare-fun m!1500477 () Bool)

(assert (=> b!1341876 m!1500477))

(declare-fun m!1500479 () Bool)

(assert (=> start!119880 m!1500479))

(declare-fun m!1500481 () Bool)

(assert (=> start!119880 m!1500481))

(declare-fun m!1500483 () Bool)

(assert (=> b!1341895 m!1500483))

(declare-fun m!1500485 () Bool)

(assert (=> b!1341886 m!1500485))

(declare-fun m!1500487 () Bool)

(assert (=> b!1341878 m!1500487))

(declare-fun m!1500489 () Bool)

(assert (=> b!1341894 m!1500489))

(declare-fun m!1500491 () Bool)

(assert (=> b!1341894 m!1500491))

(declare-fun m!1500493 () Bool)

(assert (=> b!1341889 m!1500493))

(declare-fun m!1500495 () Bool)

(assert (=> b!1341889 m!1500495))

(declare-fun m!1500497 () Bool)

(assert (=> b!1341891 m!1500497))

(declare-fun m!1500499 () Bool)

(assert (=> b!1341891 m!1500499))

(declare-fun m!1500501 () Bool)

(assert (=> b!1341879 m!1500501))

(declare-fun m!1500503 () Bool)

(assert (=> b!1341877 m!1500503))

(declare-fun m!1500505 () Bool)

(assert (=> b!1341882 m!1500505))

(declare-fun m!1500507 () Bool)

(assert (=> b!1341882 m!1500507))

(declare-fun m!1500509 () Bool)

(assert (=> b!1341888 m!1500509))

(declare-fun m!1500511 () Bool)

(assert (=> b!1341881 m!1500511))

(declare-fun m!1500513 () Bool)

(assert (=> b!1341885 m!1500513))

(declare-fun m!1500515 () Bool)

(assert (=> b!1341897 m!1500515))

(assert (=> b!1341897 m!1500515))

(declare-fun m!1500517 () Bool)

(assert (=> b!1341897 m!1500517))

(declare-fun m!1500519 () Bool)

(assert (=> b!1341897 m!1500519))

(push 1)

(assert (not b!1341900))

(assert b_and!89769)

(assert b_and!89775)

(assert (not b!1341880))

(assert (not b!1341876))

(assert (not b!1341888))

(assert (not b!1341877))

(assert (not b!1341887))

(assert (not start!119880))

(assert b_and!89777)

(assert (not b!1341884))

(assert (not b_next!33383))

(assert (not b_next!33389))

(assert (not b!1341889))

(assert (not b!1341890))

(assert (not b!1341894))

(assert (not b!1341885))

(assert (not b!1341892))

(assert (not b!1341893))

(assert (not b_next!33393))

(assert (not b_next!33387))

(assert (not b!1341881))

(assert b_and!89773)

(assert (not b!1341882))

(assert (not b!1341895))

(assert (not b!1341897))

(assert b_and!89767)

(assert (not b!1341891))

(assert b_and!89771)

(assert (not b!1341886))

(assert (not b_next!33391))

(assert (not b!1341878))

(assert (not b!1341879))

(assert (not b_next!33385))

(check-sat)

(pop 1)

(push 1)

(assert b_and!89769)

(assert b_and!89775)

(assert b_and!89773)

(assert b_and!89767)

(assert b_and!89777)

(assert b_and!89771)

(assert (not b_next!33391))

(assert (not b_next!33385))

(assert (not b_next!33383))

(assert (not b_next!33389))

(assert (not b_next!33393))

(assert (not b_next!33387))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1342018 () Bool)

(declare-fun e!859406 () Bool)

(declare-fun derivativeStep!930 (Regex!3688 C!7666) Regex!3688)

(declare-fun head!2382 (List!13765) C!7666)

(declare-fun tail!1931 (List!13765) List!13765)

(assert (=> b!1342018 (= e!859406 (matchR!1681 (derivativeStep!930 lt!443949 (head!2382 lt!443956)) (tail!1931 lt!443956)))))

(declare-fun b!1342019 () Bool)

(declare-fun e!859408 () Bool)

(declare-fun lt!443987 () Bool)

(declare-fun call!90496 () Bool)

(assert (=> b!1342019 (= e!859408 (= lt!443987 call!90496))))

(declare-fun bm!90491 () Bool)

(declare-fun isEmpty!8182 (List!13765) Bool)

(assert (=> bm!90491 (= call!90496 (isEmpty!8182 lt!443956))))

(declare-fun b!1342020 () Bool)

(declare-fun e!859407 () Bool)

(assert (=> b!1342020 (= e!859408 e!859407)))

(declare-fun c!219853 () Bool)

(assert (=> b!1342020 (= c!219853 (is-EmptyLang!3688 lt!443949))))

(declare-fun b!1342021 () Bool)

(assert (=> b!1342021 (= e!859407 (not lt!443987))))

(declare-fun d!378640 () Bool)

(assert (=> d!378640 e!859408))

(declare-fun c!219855 () Bool)

(assert (=> d!378640 (= c!219855 (is-EmptyExpr!3688 lt!443949))))

(assert (=> d!378640 (= lt!443987 e!859406)))

(declare-fun c!219854 () Bool)

(assert (=> d!378640 (= c!219854 (isEmpty!8182 lt!443956))))

(declare-fun validRegex!1592 (Regex!3688) Bool)

(assert (=> d!378640 (validRegex!1592 lt!443949)))

(assert (=> d!378640 (= (matchR!1681 lt!443949 lt!443956) lt!443987)))

(declare-fun b!1342022 () Bool)

(declare-fun res!604640 () Bool)

(declare-fun e!859403 () Bool)

(assert (=> b!1342022 (=> res!604640 e!859403)))

(assert (=> b!1342022 (= res!604640 (not (isEmpty!8182 (tail!1931 lt!443956))))))

(declare-fun b!1342023 () Bool)

(declare-fun e!859405 () Bool)

(assert (=> b!1342023 (= e!859405 (= (head!2382 lt!443956) (c!219844 lt!443949)))))

(declare-fun b!1342024 () Bool)

(declare-fun e!859404 () Bool)

(assert (=> b!1342024 (= e!859404 e!859403)))

(declare-fun res!604638 () Bool)

(assert (=> b!1342024 (=> res!604638 e!859403)))

(assert (=> b!1342024 (= res!604638 call!90496)))

(declare-fun b!1342025 () Bool)

(declare-fun nullable!1172 (Regex!3688) Bool)

(assert (=> b!1342025 (= e!859406 (nullable!1172 lt!443949))))

(declare-fun b!1342026 () Bool)

(declare-fun res!604633 () Bool)

(declare-fun e!859409 () Bool)

(assert (=> b!1342026 (=> res!604633 e!859409)))

(assert (=> b!1342026 (= res!604633 e!859405)))

(declare-fun res!604636 () Bool)

(assert (=> b!1342026 (=> (not res!604636) (not e!859405))))

(assert (=> b!1342026 (= res!604636 lt!443987)))

(declare-fun b!1342027 () Bool)

(assert (=> b!1342027 (= e!859409 e!859404)))

(declare-fun res!604637 () Bool)

(assert (=> b!1342027 (=> (not res!604637) (not e!859404))))

(assert (=> b!1342027 (= res!604637 (not lt!443987))))

(declare-fun b!1342028 () Bool)

(declare-fun res!604635 () Bool)

(assert (=> b!1342028 (=> (not res!604635) (not e!859405))))

(assert (=> b!1342028 (= res!604635 (not call!90496))))

(declare-fun b!1342029 () Bool)

(assert (=> b!1342029 (= e!859403 (not (= (head!2382 lt!443956) (c!219844 lt!443949))))))

(declare-fun b!1342030 () Bool)

(declare-fun res!604639 () Bool)

(assert (=> b!1342030 (=> res!604639 e!859409)))

(assert (=> b!1342030 (= res!604639 (not (is-ElementMatch!3688 lt!443949)))))

(assert (=> b!1342030 (= e!859407 e!859409)))

(declare-fun b!1342031 () Bool)

(declare-fun res!604634 () Bool)

(assert (=> b!1342031 (=> (not res!604634) (not e!859405))))

(assert (=> b!1342031 (= res!604634 (isEmpty!8182 (tail!1931 lt!443956)))))

(assert (= (and d!378640 c!219854) b!1342025))

(assert (= (and d!378640 (not c!219854)) b!1342018))

(assert (= (and d!378640 c!219855) b!1342019))

(assert (= (and d!378640 (not c!219855)) b!1342020))

(assert (= (and b!1342020 c!219853) b!1342021))

(assert (= (and b!1342020 (not c!219853)) b!1342030))

(assert (= (and b!1342030 (not res!604639)) b!1342026))

(assert (= (and b!1342026 res!604636) b!1342028))

(assert (= (and b!1342028 res!604635) b!1342031))

(assert (= (and b!1342031 res!604634) b!1342023))

(assert (= (and b!1342026 (not res!604633)) b!1342027))

(assert (= (and b!1342027 res!604637) b!1342024))

(assert (= (and b!1342024 (not res!604638)) b!1342022))

(assert (= (and b!1342022 (not res!604640)) b!1342029))

(assert (= (or b!1342019 b!1342024 b!1342028) bm!90491))

(declare-fun m!1500591 () Bool)

(assert (=> b!1342023 m!1500591))

(declare-fun m!1500593 () Bool)

(assert (=> b!1342031 m!1500593))

(assert (=> b!1342031 m!1500593))

(declare-fun m!1500595 () Bool)

(assert (=> b!1342031 m!1500595))

(assert (=> b!1342018 m!1500591))

(assert (=> b!1342018 m!1500591))

(declare-fun m!1500597 () Bool)

(assert (=> b!1342018 m!1500597))

(assert (=> b!1342018 m!1500593))

(assert (=> b!1342018 m!1500597))

(assert (=> b!1342018 m!1500593))

(declare-fun m!1500599 () Bool)

(assert (=> b!1342018 m!1500599))

(declare-fun m!1500601 () Bool)

(assert (=> bm!90491 m!1500601))

(assert (=> b!1342022 m!1500593))

(assert (=> b!1342022 m!1500593))

(assert (=> b!1342022 m!1500595))

(declare-fun m!1500603 () Bool)

(assert (=> b!1342025 m!1500603))

(assert (=> b!1342029 m!1500591))

(assert (=> d!378640 m!1500601))

(declare-fun m!1500605 () Bool)

(assert (=> d!378640 m!1500605))

(assert (=> b!1341880 d!378640))

(declare-fun d!378642 () Bool)

(declare-fun res!604647 () Bool)

(declare-fun e!859412 () Bool)

(assert (=> d!378642 (=> (not res!604647) (not e!859412))))

(assert (=> d!378642 (= res!604647 (not (isEmpty!8182 (originalCharacters!3236 t1!34))))))

(assert (=> d!378642 (= (inv!18042 t1!34) e!859412)))

(declare-fun b!1342036 () Bool)

(declare-fun res!604648 () Bool)

(assert (=> b!1342036 (=> (not res!604648) (not e!859412))))

(declare-fun dynLambda!6049 (Int TokenValue!2464) BalanceConc!8968)

(assert (=> b!1342036 (= res!604648 (= (originalCharacters!3236 t1!34) (list!5220 (dynLambda!6049 (toChars!3476 (transformation!2374 (rule!4119 t1!34))) (value!77293 t1!34)))))))

(declare-fun b!1342037 () Bool)

(declare-fun size!11173 (List!13765) Int)

(assert (=> b!1342037 (= e!859412 (= (size!11169 t1!34) (size!11173 (originalCharacters!3236 t1!34))))))

(assert (= (and d!378642 res!604647) b!1342036))

(assert (= (and b!1342036 res!604648) b!1342037))

(declare-fun b_lambda!39679 () Bool)

(assert (=> (not b_lambda!39679) (not b!1342036)))

(declare-fun t!119537 () Bool)

(declare-fun tb!70625 () Bool)

(assert (=> (and b!1341883 (= (toChars!3476 (transformation!2374 (rule!4119 t1!34))) (toChars!3476 (transformation!2374 (rule!4119 t1!34)))) t!119537) tb!70625))

(declare-fun b!1342042 () Bool)

(declare-fun e!859415 () Bool)

(declare-fun tp!388577 () Bool)

(declare-fun inv!18045 (Conc!4514) Bool)

(assert (=> b!1342042 (= e!859415 (and (inv!18045 (c!219843 (dynLambda!6049 (toChars!3476 (transformation!2374 (rule!4119 t1!34))) (value!77293 t1!34)))) tp!388577))))

(declare-fun result!85842 () Bool)

(declare-fun inv!18046 (BalanceConc!8968) Bool)

(assert (=> tb!70625 (= result!85842 (and (inv!18046 (dynLambda!6049 (toChars!3476 (transformation!2374 (rule!4119 t1!34))) (value!77293 t1!34))) e!859415))))

(assert (= tb!70625 b!1342042))

(declare-fun m!1500607 () Bool)

(assert (=> b!1342042 m!1500607))

(declare-fun m!1500609 () Bool)

(assert (=> tb!70625 m!1500609))

(assert (=> b!1342036 t!119537))

(declare-fun b_and!89791 () Bool)

(assert (= b_and!89769 (and (=> t!119537 result!85842) b_and!89791)))

(declare-fun t!119539 () Bool)

(declare-fun tb!70627 () Bool)

(assert (=> (and b!1341898 (= (toChars!3476 (transformation!2374 (h!19102 rules!2550))) (toChars!3476 (transformation!2374 (rule!4119 t1!34)))) t!119539) tb!70627))

(declare-fun result!85846 () Bool)

(assert (= result!85846 result!85842))

(assert (=> b!1342036 t!119539))

(declare-fun b_and!89793 () Bool)

(assert (= b_and!89773 (and (=> t!119539 result!85846) b_and!89793)))

(declare-fun tb!70629 () Bool)

(declare-fun t!119541 () Bool)

(assert (=> (and b!1341899 (= (toChars!3476 (transformation!2374 (rule!4119 t2!34))) (toChars!3476 (transformation!2374 (rule!4119 t1!34)))) t!119541) tb!70629))

(declare-fun result!85848 () Bool)

(assert (= result!85848 result!85842))

(assert (=> b!1342036 t!119541))

(declare-fun b_and!89795 () Bool)

(assert (= b_and!89777 (and (=> t!119541 result!85848) b_and!89795)))

(declare-fun m!1500611 () Bool)

(assert (=> d!378642 m!1500611))

(declare-fun m!1500613 () Bool)

(assert (=> b!1342036 m!1500613))

(assert (=> b!1342036 m!1500613))

(declare-fun m!1500615 () Bool)

(assert (=> b!1342036 m!1500615))

(declare-fun m!1500617 () Bool)

(assert (=> b!1342037 m!1500617))

(assert (=> start!119880 d!378642))

(declare-fun d!378644 () Bool)

(declare-fun res!604649 () Bool)

(declare-fun e!859416 () Bool)

(assert (=> d!378644 (=> (not res!604649) (not e!859416))))

(assert (=> d!378644 (= res!604649 (not (isEmpty!8182 (originalCharacters!3236 t2!34))))))

(assert (=> d!378644 (= (inv!18042 t2!34) e!859416)))

(declare-fun b!1342043 () Bool)

(declare-fun res!604650 () Bool)

(assert (=> b!1342043 (=> (not res!604650) (not e!859416))))

(assert (=> b!1342043 (= res!604650 (= (originalCharacters!3236 t2!34) (list!5220 (dynLambda!6049 (toChars!3476 (transformation!2374 (rule!4119 t2!34))) (value!77293 t2!34)))))))

(declare-fun b!1342044 () Bool)

(assert (=> b!1342044 (= e!859416 (= (size!11169 t2!34) (size!11173 (originalCharacters!3236 t2!34))))))

(assert (= (and d!378644 res!604649) b!1342043))

(assert (= (and b!1342043 res!604650) b!1342044))

(declare-fun b_lambda!39681 () Bool)

(assert (=> (not b_lambda!39681) (not b!1342043)))

(declare-fun t!119543 () Bool)

(declare-fun tb!70631 () Bool)

(assert (=> (and b!1341883 (= (toChars!3476 (transformation!2374 (rule!4119 t1!34))) (toChars!3476 (transformation!2374 (rule!4119 t2!34)))) t!119543) tb!70631))

(declare-fun b!1342045 () Bool)

(declare-fun e!859417 () Bool)

(declare-fun tp!388578 () Bool)

(assert (=> b!1342045 (= e!859417 (and (inv!18045 (c!219843 (dynLambda!6049 (toChars!3476 (transformation!2374 (rule!4119 t2!34))) (value!77293 t2!34)))) tp!388578))))

(declare-fun result!85850 () Bool)

(assert (=> tb!70631 (= result!85850 (and (inv!18046 (dynLambda!6049 (toChars!3476 (transformation!2374 (rule!4119 t2!34))) (value!77293 t2!34))) e!859417))))

(assert (= tb!70631 b!1342045))

(declare-fun m!1500619 () Bool)

(assert (=> b!1342045 m!1500619))

(declare-fun m!1500621 () Bool)

(assert (=> tb!70631 m!1500621))

(assert (=> b!1342043 t!119543))

(declare-fun b_and!89797 () Bool)

(assert (= b_and!89791 (and (=> t!119543 result!85850) b_and!89797)))

(declare-fun tb!70633 () Bool)

(declare-fun t!119545 () Bool)

(assert (=> (and b!1341898 (= (toChars!3476 (transformation!2374 (h!19102 rules!2550))) (toChars!3476 (transformation!2374 (rule!4119 t2!34)))) t!119545) tb!70633))

(declare-fun result!85852 () Bool)

(assert (= result!85852 result!85850))

(assert (=> b!1342043 t!119545))

(declare-fun b_and!89799 () Bool)

(assert (= b_and!89793 (and (=> t!119545 result!85852) b_and!89799)))

(declare-fun t!119547 () Bool)

(declare-fun tb!70635 () Bool)

(assert (=> (and b!1341899 (= (toChars!3476 (transformation!2374 (rule!4119 t2!34))) (toChars!3476 (transformation!2374 (rule!4119 t2!34)))) t!119547) tb!70635))

(declare-fun result!85854 () Bool)

(assert (= result!85854 result!85850))

(assert (=> b!1342043 t!119547))

(declare-fun b_and!89801 () Bool)

(assert (= b_and!89795 (and (=> t!119547 result!85854) b_and!89801)))

(declare-fun m!1500623 () Bool)

(assert (=> d!378644 m!1500623))

(declare-fun m!1500625 () Bool)

(assert (=> b!1342043 m!1500625))

(assert (=> b!1342043 m!1500625))

(declare-fun m!1500627 () Bool)

(assert (=> b!1342043 m!1500627))

(declare-fun m!1500629 () Bool)

(assert (=> b!1342044 m!1500629))

(assert (=> start!119880 d!378644))

(declare-fun d!378646 () Bool)

(assert (=> d!378646 (= (inv!18038 (tag!2636 (rule!4119 t1!34))) (= (mod (str.len (value!77292 (tag!2636 (rule!4119 t1!34)))) 2) 0))))

(assert (=> b!1341891 d!378646))

(declare-fun d!378648 () Bool)

(declare-fun res!604653 () Bool)

(declare-fun e!859420 () Bool)

(assert (=> d!378648 (=> (not res!604653) (not e!859420))))

(declare-fun semiInverseModEq!901 (Int Int) Bool)

(assert (=> d!378648 (= res!604653 (semiInverseModEq!901 (toChars!3476 (transformation!2374 (rule!4119 t1!34))) (toValue!3617 (transformation!2374 (rule!4119 t1!34)))))))

(assert (=> d!378648 (= (inv!18041 (transformation!2374 (rule!4119 t1!34))) e!859420)))

(declare-fun b!1342048 () Bool)

(declare-fun equivClasses!860 (Int Int) Bool)

(assert (=> b!1342048 (= e!859420 (equivClasses!860 (toChars!3476 (transformation!2374 (rule!4119 t1!34))) (toValue!3617 (transformation!2374 (rule!4119 t1!34)))))))

(assert (= (and d!378648 res!604653) b!1342048))

(declare-fun m!1500631 () Bool)

(assert (=> d!378648 m!1500631))

(declare-fun m!1500633 () Bool)

(assert (=> b!1342048 m!1500633))

(assert (=> b!1341891 d!378648))

(declare-fun d!378650 () Bool)

(declare-fun lt!443990 () Bool)

(declare-fun content!1948 (List!13765) (Set C!7666))

(assert (=> d!378650 (= lt!443990 (set.member lt!443957 (content!1948 lt!443956)))))

(declare-fun e!859426 () Bool)

(assert (=> d!378650 (= lt!443990 e!859426)))

(declare-fun res!604659 () Bool)

(assert (=> d!378650 (=> (not res!604659) (not e!859426))))

(assert (=> d!378650 (= res!604659 (is-Cons!13699 lt!443956))))

(assert (=> d!378650 (= (contains!2502 lt!443956 lt!443957) lt!443990)))

(declare-fun b!1342053 () Bool)

(declare-fun e!859425 () Bool)

(assert (=> b!1342053 (= e!859426 e!859425)))

(declare-fun res!604658 () Bool)

(assert (=> b!1342053 (=> res!604658 e!859425)))

(assert (=> b!1342053 (= res!604658 (= (h!19100 lt!443956) lt!443957))))

(declare-fun b!1342054 () Bool)

(assert (=> b!1342054 (= e!859425 (contains!2502 (t!119530 lt!443956) lt!443957))))

(assert (= (and d!378650 res!604659) b!1342053))

(assert (= (and b!1342053 (not res!604658)) b!1342054))

(declare-fun m!1500635 () Bool)

(assert (=> d!378650 m!1500635))

(declare-fun m!1500637 () Bool)

(assert (=> d!378650 m!1500637))

(declare-fun m!1500639 () Bool)

(assert (=> b!1342054 m!1500639))

(assert (=> b!1341881 d!378650))

(declare-fun d!378652 () Bool)

(declare-fun res!604662 () Bool)

(declare-fun e!859429 () Bool)

(assert (=> d!378652 (=> (not res!604662) (not e!859429))))

(declare-fun rulesValid!870 (LexerInterface!2069 List!13767) Bool)

(assert (=> d!378652 (= res!604662 (rulesValid!870 thiss!19762 rules!2550))))

(assert (=> d!378652 (= (rulesInvariant!1939 thiss!19762 rules!2550) e!859429)))

(declare-fun b!1342057 () Bool)

(declare-datatypes ((List!13771 0))(
  ( (Nil!13705) (Cons!13705 (h!19106 String!16558) (t!119554 List!13771)) )
))
(declare-fun noDuplicateTag!870 (LexerInterface!2069 List!13767 List!13771) Bool)

(assert (=> b!1342057 (= e!859429 (noDuplicateTag!870 thiss!19762 rules!2550 Nil!13705))))

(assert (= (and d!378652 res!604662) b!1342057))

(declare-fun m!1500641 () Bool)

(assert (=> d!378652 m!1500641))

(declare-fun m!1500643 () Bool)

(assert (=> b!1342057 m!1500643))

(assert (=> b!1341892 d!378652))

(declare-fun d!378654 () Bool)

(declare-fun lt!443993 () Int)

(assert (=> d!378654 (= lt!443993 (size!11173 (list!5220 lt!443950)))))

(declare-fun size!11174 (Conc!4514) Int)

(assert (=> d!378654 (= lt!443993 (size!11174 (c!219843 lt!443950)))))

(assert (=> d!378654 (= (size!11170 lt!443950) lt!443993)))

(declare-fun bs!332387 () Bool)

(assert (= bs!332387 d!378654))

(declare-fun m!1500645 () Bool)

(assert (=> bs!332387 m!1500645))

(assert (=> bs!332387 m!1500645))

(declare-fun m!1500647 () Bool)

(assert (=> bs!332387 m!1500647))

(declare-fun m!1500649 () Bool)

(assert (=> bs!332387 m!1500649))

(assert (=> b!1341882 d!378654))

(declare-fun d!378656 () Bool)

(declare-fun lt!443996 () BalanceConc!8968)

(assert (=> d!378656 (= (list!5220 lt!443996) (originalCharacters!3236 t2!34))))

(assert (=> d!378656 (= lt!443996 (dynLambda!6049 (toChars!3476 (transformation!2374 (rule!4119 t2!34))) (value!77293 t2!34)))))

(assert (=> d!378656 (= (charsOf!1346 t2!34) lt!443996)))

(declare-fun b_lambda!39683 () Bool)

(assert (=> (not b_lambda!39683) (not d!378656)))

(assert (=> d!378656 t!119543))

(declare-fun b_and!89803 () Bool)

(assert (= b_and!89797 (and (=> t!119543 result!85850) b_and!89803)))

(assert (=> d!378656 t!119545))

(declare-fun b_and!89805 () Bool)

(assert (= b_and!89799 (and (=> t!119545 result!85852) b_and!89805)))

(assert (=> d!378656 t!119547))

(declare-fun b_and!89807 () Bool)

(assert (= b_and!89801 (and (=> t!119547 result!85854) b_and!89807)))

(declare-fun m!1500651 () Bool)

(assert (=> d!378656 m!1500651))

(assert (=> d!378656 m!1500625))

(assert (=> b!1341882 d!378656))

(declare-fun d!378658 () Bool)

(declare-fun choose!8230 (Int) Bool)

(assert (=> d!378658 (= (Exists!840 lambda!56230) (choose!8230 lambda!56230))))

(declare-fun bs!332388 () Bool)

(assert (= bs!332388 d!378658))

(declare-fun m!1500653 () Bool)

(assert (=> bs!332388 m!1500653))

(assert (=> b!1341893 d!378658))

(declare-fun bs!332389 () Bool)

(declare-fun d!378660 () Bool)

(assert (= bs!332389 (and d!378660 b!1341893)))

(declare-fun lambda!56240 () Int)

(assert (=> bs!332389 (= lambda!56240 lambda!56230)))

(assert (=> d!378660 true))

(assert (=> d!378660 true))

(assert (=> d!378660 (Exists!840 lambda!56240)))

(declare-fun lt!443999 () Unit!19822)

(declare-fun choose!8231 (Regex!3688 List!13765) Unit!19822)

(assert (=> d!378660 (= lt!443999 (choose!8231 lt!443949 lt!443952))))

(assert (=> d!378660 (validRegex!1592 lt!443949)))

(assert (=> d!378660 (= (lemmaPrefixMatchThenExistsStringThatMatches!158 lt!443949 lt!443952) lt!443999)))

(declare-fun bs!332390 () Bool)

(assert (= bs!332390 d!378660))

(declare-fun m!1500655 () Bool)

(assert (=> bs!332390 m!1500655))

(declare-fun m!1500657 () Bool)

(assert (=> bs!332390 m!1500657))

(assert (=> bs!332390 m!1500605))

(assert (=> b!1341893 d!378660))

(declare-fun d!378664 () Bool)

(assert (=> d!378664 (= (inv!18038 (tag!2636 (rule!4119 t2!34))) (= (mod (str.len (value!77292 (tag!2636 (rule!4119 t2!34)))) 2) 0))))

(assert (=> b!1341894 d!378664))

(declare-fun d!378666 () Bool)

(declare-fun res!604665 () Bool)

(declare-fun e!859432 () Bool)

(assert (=> d!378666 (=> (not res!604665) (not e!859432))))

(assert (=> d!378666 (= res!604665 (semiInverseModEq!901 (toChars!3476 (transformation!2374 (rule!4119 t2!34))) (toValue!3617 (transformation!2374 (rule!4119 t2!34)))))))

(assert (=> d!378666 (= (inv!18041 (transformation!2374 (rule!4119 t2!34))) e!859432)))

(declare-fun b!1342060 () Bool)

(assert (=> b!1342060 (= e!859432 (equivClasses!860 (toChars!3476 (transformation!2374 (rule!4119 t2!34))) (toValue!3617 (transformation!2374 (rule!4119 t2!34)))))))

(assert (= (and d!378666 res!604665) b!1342060))

(declare-fun m!1500659 () Bool)

(assert (=> d!378666 m!1500659))

(declare-fun m!1500661 () Bool)

(assert (=> b!1342060 m!1500661))

(assert (=> b!1341894 d!378666))

(declare-fun b!1342076 () Bool)

(declare-fun e!859444 () List!13765)

(assert (=> b!1342076 (= e!859444 (Cons!13699 (h!19100 lt!443953) (++!3509 (t!119530 lt!443953) (Cons!13699 lt!443954 Nil!13699))))))

(declare-fun b!1342077 () Bool)

(declare-fun res!604677 () Bool)

(declare-fun e!859443 () Bool)

(assert (=> b!1342077 (=> (not res!604677) (not e!859443))))

(declare-fun lt!444005 () List!13765)

(assert (=> b!1342077 (= res!604677 (= (size!11173 lt!444005) (+ (size!11173 lt!443953) (size!11173 (Cons!13699 lt!443954 Nil!13699)))))))

(declare-fun b!1342075 () Bool)

(assert (=> b!1342075 (= e!859444 (Cons!13699 lt!443954 Nil!13699))))

(declare-fun b!1342078 () Bool)

(assert (=> b!1342078 (= e!859443 (or (not (= (Cons!13699 lt!443954 Nil!13699) Nil!13699)) (= lt!444005 lt!443953)))))

(declare-fun d!378668 () Bool)

(assert (=> d!378668 e!859443))

(declare-fun res!604676 () Bool)

(assert (=> d!378668 (=> (not res!604676) (not e!859443))))

(assert (=> d!378668 (= res!604676 (= (content!1948 lt!444005) (set.union (content!1948 lt!443953) (content!1948 (Cons!13699 lt!443954 Nil!13699)))))))

(assert (=> d!378668 (= lt!444005 e!859444)))

(declare-fun c!219858 () Bool)

(assert (=> d!378668 (= c!219858 (is-Nil!13699 lt!443953))))

(assert (=> d!378668 (= (++!3509 lt!443953 (Cons!13699 lt!443954 Nil!13699)) lt!444005)))

(assert (= (and d!378668 c!219858) b!1342075))

(assert (= (and d!378668 (not c!219858)) b!1342076))

(assert (= (and d!378668 res!604676) b!1342077))

(assert (= (and b!1342077 res!604677) b!1342078))

(declare-fun m!1500663 () Bool)

(assert (=> b!1342076 m!1500663))

(declare-fun m!1500665 () Bool)

(assert (=> b!1342077 m!1500665))

(declare-fun m!1500667 () Bool)

(assert (=> b!1342077 m!1500667))

(declare-fun m!1500669 () Bool)

(assert (=> b!1342077 m!1500669))

(declare-fun m!1500671 () Bool)

(assert (=> d!378668 m!1500671))

(declare-fun m!1500673 () Bool)

(assert (=> d!378668 m!1500673))

(declare-fun m!1500676 () Bool)

(assert (=> d!378668 m!1500676))

(assert (=> b!1341884 d!378668))

(declare-fun d!378670 () Bool)

(declare-fun list!5222 (Conc!4514) List!13765)

(assert (=> d!378670 (= (list!5220 lt!443951) (list!5222 (c!219843 lt!443951)))))

(declare-fun bs!332391 () Bool)

(assert (= bs!332391 d!378670))

(declare-fun m!1500683 () Bool)

(assert (=> bs!332391 m!1500683))

(assert (=> b!1341884 d!378670))

(declare-fun d!378674 () Bool)

(declare-fun lt!444006 () BalanceConc!8968)

(assert (=> d!378674 (= (list!5220 lt!444006) (originalCharacters!3236 t1!34))))

(assert (=> d!378674 (= lt!444006 (dynLambda!6049 (toChars!3476 (transformation!2374 (rule!4119 t1!34))) (value!77293 t1!34)))))

(assert (=> d!378674 (= (charsOf!1346 t1!34) lt!444006)))

(declare-fun b_lambda!39685 () Bool)

(assert (=> (not b_lambda!39685) (not d!378674)))

(assert (=> d!378674 t!119537))

(declare-fun b_and!89809 () Bool)

(assert (= b_and!89803 (and (=> t!119537 result!85842) b_and!89809)))

(assert (=> d!378674 t!119539))

(declare-fun b_and!89811 () Bool)

(assert (= b_and!89805 (and (=> t!119539 result!85846) b_and!89811)))

(assert (=> d!378674 t!119541))

(declare-fun b_and!89813 () Bool)

(assert (= b_and!89807 (and (=> t!119541 result!85848) b_and!89813)))

(declare-fun m!1500685 () Bool)

(assert (=> d!378674 m!1500685))

(assert (=> d!378674 m!1500613))

(assert (=> b!1341884 d!378674))

(declare-fun d!378676 () Bool)

(declare-fun lt!444009 () C!7666)

(declare-fun apply!3242 (List!13765 Int) C!7666)

(assert (=> d!378676 (= lt!444009 (apply!3242 (list!5220 lt!443950) 0))))

(declare-fun apply!3243 (Conc!4514 Int) C!7666)

(assert (=> d!378676 (= lt!444009 (apply!3243 (c!219843 lt!443950) 0))))

(declare-fun e!859447 () Bool)

(assert (=> d!378676 e!859447))

(declare-fun res!604680 () Bool)

(assert (=> d!378676 (=> (not res!604680) (not e!859447))))

(assert (=> d!378676 (= res!604680 (<= 0 0))))

(assert (=> d!378676 (= (apply!3240 lt!443950 0) lt!444009)))

(declare-fun b!1342081 () Bool)

(assert (=> b!1342081 (= e!859447 (< 0 (size!11170 lt!443950)))))

(assert (= (and d!378676 res!604680) b!1342081))

(assert (=> d!378676 m!1500645))

(assert (=> d!378676 m!1500645))

(declare-fun m!1500687 () Bool)

(assert (=> d!378676 m!1500687))

(declare-fun m!1500689 () Bool)

(assert (=> d!378676 m!1500689))

(assert (=> b!1342081 m!1500505))

(assert (=> b!1341884 d!378676))

(declare-fun d!378678 () Bool)

(declare-fun c!219861 () Bool)

(assert (=> d!378678 (= c!219861 (isEmpty!8182 lt!443952))))

(declare-fun e!859450 () Bool)

(assert (=> d!378678 (= (prefixMatch!197 lt!443949 lt!443952) e!859450)))

(declare-fun b!1342086 () Bool)

(declare-fun lostCause!306 (Regex!3688) Bool)

(assert (=> b!1342086 (= e!859450 (not (lostCause!306 lt!443949)))))

(declare-fun b!1342087 () Bool)

(assert (=> b!1342087 (= e!859450 (prefixMatch!197 (derivativeStep!930 lt!443949 (head!2382 lt!443952)) (tail!1931 lt!443952)))))

(assert (= (and d!378678 c!219861) b!1342086))

(assert (= (and d!378678 (not c!219861)) b!1342087))

(declare-fun m!1500691 () Bool)

(assert (=> d!378678 m!1500691))

(declare-fun m!1500693 () Bool)

(assert (=> b!1342086 m!1500693))

(declare-fun m!1500695 () Bool)

(assert (=> b!1342087 m!1500695))

(assert (=> b!1342087 m!1500695))

(declare-fun m!1500697 () Bool)

(assert (=> b!1342087 m!1500697))

(declare-fun m!1500699 () Bool)

(assert (=> b!1342087 m!1500699))

(assert (=> b!1342087 m!1500697))

(assert (=> b!1342087 m!1500699))

(declare-fun m!1500701 () Bool)

(assert (=> b!1342087 m!1500701))

(assert (=> b!1341884 d!378678))

(declare-fun d!378680 () Bool)

(declare-fun lt!444012 () Unit!19822)

(declare-fun lemma!100 (List!13767 LexerInterface!2069 List!13767) Unit!19822)

(assert (=> d!378680 (= lt!444012 (lemma!100 rules!2550 thiss!19762 rules!2550))))

(declare-fun lambda!56243 () Int)

(declare-datatypes ((List!13772 0))(
  ( (Nil!13706) (Cons!13706 (h!19107 Regex!3688) (t!119555 List!13772)) )
))
(declare-fun generalisedUnion!108 (List!13772) Regex!3688)

(declare-fun map!3022 (List!13767 Int) List!13772)

(assert (=> d!378680 (= (rulesRegex!257 thiss!19762 rules!2550) (generalisedUnion!108 (map!3022 rules!2550 lambda!56243)))))

(declare-fun bs!332392 () Bool)

(assert (= bs!332392 d!378680))

(declare-fun m!1500703 () Bool)

(assert (=> bs!332392 m!1500703))

(declare-fun m!1500705 () Bool)

(assert (=> bs!332392 m!1500705))

(assert (=> bs!332392 m!1500705))

(declare-fun m!1500707 () Bool)

(assert (=> bs!332392 m!1500707))

(assert (=> b!1341884 d!378680))

(declare-fun d!378682 () Bool)

(declare-fun lt!444013 () Bool)

(assert (=> d!378682 (= lt!444013 (set.member lt!443954 (content!1948 lt!443952)))))

(declare-fun e!859452 () Bool)

(assert (=> d!378682 (= lt!444013 e!859452)))

(declare-fun res!604682 () Bool)

(assert (=> d!378682 (=> (not res!604682) (not e!859452))))

(assert (=> d!378682 (= res!604682 (is-Cons!13699 lt!443952))))

(assert (=> d!378682 (= (contains!2502 lt!443952 lt!443954) lt!444013)))

(declare-fun b!1342088 () Bool)

(declare-fun e!859451 () Bool)

(assert (=> b!1342088 (= e!859452 e!859451)))

(declare-fun res!604681 () Bool)

(assert (=> b!1342088 (=> res!604681 e!859451)))

(assert (=> b!1342088 (= res!604681 (= (h!19100 lt!443952) lt!443954))))

(declare-fun b!1342089 () Bool)

(assert (=> b!1342089 (= e!859451 (contains!2502 (t!119530 lt!443952) lt!443954))))

(assert (= (and d!378682 res!604682) b!1342088))

(assert (= (and b!1342088 (not res!604681)) b!1342089))

(declare-fun m!1500709 () Bool)

(assert (=> d!378682 m!1500709))

(declare-fun m!1500711 () Bool)

(assert (=> d!378682 m!1500711))

(declare-fun m!1500713 () Bool)

(assert (=> b!1342089 m!1500713))

(assert (=> b!1341895 d!378682))

(declare-fun d!378684 () Bool)

(declare-fun c!219867 () Bool)

(assert (=> d!378684 (= c!219867 (is-IntegerValue!7392 (value!77293 t1!34)))))

(declare-fun e!859459 () Bool)

(assert (=> d!378684 (= (inv!21 (value!77293 t1!34)) e!859459)))

(declare-fun b!1342100 () Bool)

(declare-fun e!859461 () Bool)

(declare-fun inv!15 (TokenValue!2464) Bool)

(assert (=> b!1342100 (= e!859461 (inv!15 (value!77293 t1!34)))))

(declare-fun b!1342101 () Bool)

(declare-fun e!859460 () Bool)

(assert (=> b!1342101 (= e!859459 e!859460)))

(declare-fun c!219866 () Bool)

(assert (=> b!1342101 (= c!219866 (is-IntegerValue!7393 (value!77293 t1!34)))))

(declare-fun b!1342102 () Bool)

(declare-fun inv!16 (TokenValue!2464) Bool)

(assert (=> b!1342102 (= e!859459 (inv!16 (value!77293 t1!34)))))

(declare-fun b!1342103 () Bool)

(declare-fun res!604685 () Bool)

(assert (=> b!1342103 (=> res!604685 e!859461)))

(assert (=> b!1342103 (= res!604685 (not (is-IntegerValue!7394 (value!77293 t1!34))))))

(assert (=> b!1342103 (= e!859460 e!859461)))

(declare-fun b!1342104 () Bool)

(declare-fun inv!17 (TokenValue!2464) Bool)

(assert (=> b!1342104 (= e!859460 (inv!17 (value!77293 t1!34)))))

(assert (= (and d!378684 c!219867) b!1342102))

(assert (= (and d!378684 (not c!219867)) b!1342101))

(assert (= (and b!1342101 c!219866) b!1342104))

(assert (= (and b!1342101 (not c!219866)) b!1342103))

(assert (= (and b!1342103 (not res!604685)) b!1342100))

(declare-fun m!1500715 () Bool)

(assert (=> b!1342100 m!1500715))

(declare-fun m!1500717 () Bool)

(assert (=> b!1342102 m!1500717))

(declare-fun m!1500719 () Bool)

(assert (=> b!1342104 m!1500719))

(assert (=> b!1341885 d!378684))

(declare-fun d!378686 () Bool)

(assert (=> d!378686 (= (isEmpty!8180 rules!2550) (is-Nil!13701 rules!2550))))

(assert (=> b!1341886 d!378686))

(declare-fun b!1342106 () Bool)

(declare-fun e!859463 () List!13765)

(assert (=> b!1342106 (= e!859463 (Cons!13699 (h!19100 lt!443952) (++!3509 (t!119530 lt!443952) (getSuffix!536 lt!443956 lt!443952))))))

(declare-fun b!1342107 () Bool)

(declare-fun res!604687 () Bool)

(declare-fun e!859462 () Bool)

(assert (=> b!1342107 (=> (not res!604687) (not e!859462))))

(declare-fun lt!444014 () List!13765)

(assert (=> b!1342107 (= res!604687 (= (size!11173 lt!444014) (+ (size!11173 lt!443952) (size!11173 (getSuffix!536 lt!443956 lt!443952)))))))

(declare-fun b!1342105 () Bool)

(assert (=> b!1342105 (= e!859463 (getSuffix!536 lt!443956 lt!443952))))

(declare-fun b!1342108 () Bool)

(assert (=> b!1342108 (= e!859462 (or (not (= (getSuffix!536 lt!443956 lt!443952) Nil!13699)) (= lt!444014 lt!443952)))))

(declare-fun d!378688 () Bool)

(assert (=> d!378688 e!859462))

(declare-fun res!604686 () Bool)

(assert (=> d!378688 (=> (not res!604686) (not e!859462))))

(assert (=> d!378688 (= res!604686 (= (content!1948 lt!444014) (set.union (content!1948 lt!443952) (content!1948 (getSuffix!536 lt!443956 lt!443952)))))))

(assert (=> d!378688 (= lt!444014 e!859463)))

(declare-fun c!219868 () Bool)

(assert (=> d!378688 (= c!219868 (is-Nil!13699 lt!443952))))

(assert (=> d!378688 (= (++!3509 lt!443952 (getSuffix!536 lt!443956 lt!443952)) lt!444014)))

(assert (= (and d!378688 c!219868) b!1342105))

(assert (= (and d!378688 (not c!219868)) b!1342106))

(assert (= (and d!378688 res!604686) b!1342107))

(assert (= (and b!1342107 res!604687) b!1342108))

(assert (=> b!1342106 m!1500515))

(declare-fun m!1500721 () Bool)

(assert (=> b!1342106 m!1500721))

(declare-fun m!1500723 () Bool)

(assert (=> b!1342107 m!1500723))

(declare-fun m!1500725 () Bool)

(assert (=> b!1342107 m!1500725))

(assert (=> b!1342107 m!1500515))

(declare-fun m!1500727 () Bool)

(assert (=> b!1342107 m!1500727))

(declare-fun m!1500729 () Bool)

(assert (=> d!378688 m!1500729))

(assert (=> d!378688 m!1500709))

(assert (=> d!378688 m!1500515))

(declare-fun m!1500731 () Bool)

(assert (=> d!378688 m!1500731))

(assert (=> b!1341897 d!378688))

(declare-fun d!378690 () Bool)

(declare-fun lt!444017 () List!13765)

(assert (=> d!378690 (= (++!3509 lt!443952 lt!444017) lt!443956)))

(declare-fun e!859466 () List!13765)

(assert (=> d!378690 (= lt!444017 e!859466)))

(declare-fun c!219871 () Bool)

(assert (=> d!378690 (= c!219871 (is-Cons!13699 lt!443952))))

(assert (=> d!378690 (>= (size!11173 lt!443956) (size!11173 lt!443952))))

(assert (=> d!378690 (= (getSuffix!536 lt!443956 lt!443952) lt!444017)))

(declare-fun b!1342113 () Bool)

(assert (=> b!1342113 (= e!859466 (getSuffix!536 (tail!1931 lt!443956) (t!119530 lt!443952)))))

(declare-fun b!1342114 () Bool)

(assert (=> b!1342114 (= e!859466 lt!443956)))

(assert (= (and d!378690 c!219871) b!1342113))

(assert (= (and d!378690 (not c!219871)) b!1342114))

(declare-fun m!1500733 () Bool)

(assert (=> d!378690 m!1500733))

(declare-fun m!1500735 () Bool)

(assert (=> d!378690 m!1500735))

(assert (=> d!378690 m!1500725))

(assert (=> b!1342113 m!1500593))

(assert (=> b!1342113 m!1500593))

(declare-fun m!1500737 () Bool)

(assert (=> b!1342113 m!1500737))

(assert (=> b!1341897 d!378690))

(declare-fun d!378692 () Bool)

(declare-fun lt!444020 () List!13765)

(declare-fun dynLambda!6050 (Int List!13765) Bool)

(assert (=> d!378692 (dynLambda!6050 lambda!56230 lt!444020)))

(declare-fun choose!8232 (Int) List!13765)

(assert (=> d!378692 (= lt!444020 (choose!8232 lambda!56230))))

(assert (=> d!378692 (Exists!840 lambda!56230)))

(assert (=> d!378692 (= (pickWitness!143 lambda!56230) lt!444020)))

(declare-fun b_lambda!39687 () Bool)

(assert (=> (not b_lambda!39687) (not d!378692)))

(declare-fun bs!332393 () Bool)

(assert (= bs!332393 d!378692))

(declare-fun m!1500739 () Bool)

(assert (=> bs!332393 m!1500739))

(declare-fun m!1500741 () Bool)

(assert (=> bs!332393 m!1500741))

(assert (=> bs!332393 m!1500451))

(assert (=> b!1341897 d!378692))

(declare-fun d!378694 () Bool)

(declare-fun res!604692 () Bool)

(declare-fun e!859471 () Bool)

(assert (=> d!378694 (=> res!604692 e!859471)))

(assert (=> d!378694 (= res!604692 (not (is-Cons!13701 rules!2550)))))

(assert (=> d!378694 (= (sepAndNonSepRulesDisjointChars!747 rules!2550 rules!2550) e!859471)))

(declare-fun b!1342119 () Bool)

(declare-fun e!859472 () Bool)

(assert (=> b!1342119 (= e!859471 e!859472)))

(declare-fun res!604693 () Bool)

(assert (=> b!1342119 (=> (not res!604693) (not e!859472))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!343 (Rule!4548 List!13767) Bool)

(assert (=> b!1342119 (= res!604693 (ruleDisjointCharsFromAllFromOtherType!343 (h!19102 rules!2550) rules!2550))))

(declare-fun b!1342120 () Bool)

(assert (=> b!1342120 (= e!859472 (sepAndNonSepRulesDisjointChars!747 rules!2550 (t!119532 rules!2550)))))

(assert (= (and d!378694 (not res!604692)) b!1342119))

(assert (= (and b!1342119 res!604693) b!1342120))

(declare-fun m!1500743 () Bool)

(assert (=> b!1342119 m!1500743))

(declare-fun m!1500745 () Bool)

(assert (=> b!1342120 m!1500745))

(assert (=> b!1341876 d!378694))

(declare-fun d!378696 () Bool)

(declare-fun prefixMatchZipperSequence!219 (Regex!3688 BalanceConc!8968) Bool)

(declare-fun ++!3511 (BalanceConc!8968 BalanceConc!8968) BalanceConc!8968)

(declare-fun singletonSeq!983 (C!7666) BalanceConc!8968)

(assert (=> d!378696 (= (separableTokensPredicate!352 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!219 (rulesRegex!257 thiss!19762 rules!2550) (++!3511 (charsOf!1346 t1!34) (singletonSeq!983 (apply!3240 (charsOf!1346 t2!34) 0))))))))

(declare-fun bs!332394 () Bool)

(assert (= bs!332394 d!378696))

(assert (=> bs!332394 m!1500465))

(declare-fun m!1500747 () Bool)

(assert (=> bs!332394 m!1500747))

(declare-fun m!1500749 () Bool)

(assert (=> bs!332394 m!1500749))

(assert (=> bs!332394 m!1500507))

(declare-fun m!1500751 () Bool)

(assert (=> bs!332394 m!1500751))

(assert (=> bs!332394 m!1500507))

(assert (=> bs!332394 m!1500473))

(assert (=> bs!332394 m!1500749))

(declare-fun m!1500753 () Bool)

(assert (=> bs!332394 m!1500753))

(assert (=> bs!332394 m!1500473))

(assert (=> bs!332394 m!1500751))

(assert (=> bs!332394 m!1500747))

(assert (=> bs!332394 m!1500465))

(assert (=> b!1341877 d!378696))

(declare-fun d!378698 () Bool)

(declare-fun lt!444026 () Bool)

(declare-fun e!859478 () Bool)

(assert (=> d!378698 (= lt!444026 e!859478)))

(declare-fun res!604700 () Bool)

(assert (=> d!378698 (=> (not res!604700) (not e!859478))))

(declare-datatypes ((List!13773 0))(
  ( (Nil!13707) (Cons!13707 (h!19108 Token!4410) (t!119562 List!13773)) )
))
(declare-datatypes ((IArray!9037 0))(
  ( (IArray!9038 (innerList!4576 List!13773)) )
))
(declare-datatypes ((Conc!4516 0))(
  ( (Node!4516 (left!11753 Conc!4516) (right!12083 Conc!4516) (csize!9262 Int) (cheight!4727 Int)) (Leaf!6900 (xs!7235 IArray!9037) (csize!9263 Int)) (Empty!4516) )
))
(declare-datatypes ((BalanceConc!8972 0))(
  ( (BalanceConc!8973 (c!219890 Conc!4516)) )
))
(declare-fun list!5223 (BalanceConc!8972) List!13773)

(declare-datatypes ((tuple2!13304 0))(
  ( (tuple2!13305 (_1!7538 BalanceConc!8972) (_2!7538 BalanceConc!8968)) )
))
(declare-fun lex!900 (LexerInterface!2069 List!13767 BalanceConc!8968) tuple2!13304)

(declare-fun print!839 (LexerInterface!2069 BalanceConc!8972) BalanceConc!8968)

(declare-fun singletonSeq!984 (Token!4410) BalanceConc!8972)

(assert (=> d!378698 (= res!604700 (= (list!5223 (_1!7538 (lex!900 thiss!19762 rules!2550 (print!839 thiss!19762 (singletonSeq!984 t1!34))))) (list!5223 (singletonSeq!984 t1!34))))))

(declare-fun e!859477 () Bool)

(assert (=> d!378698 (= lt!444026 e!859477)))

(declare-fun res!604701 () Bool)

(assert (=> d!378698 (=> (not res!604701) (not e!859477))))

(declare-fun lt!444025 () tuple2!13304)

(declare-fun size!11175 (BalanceConc!8972) Int)

(assert (=> d!378698 (= res!604701 (= (size!11175 (_1!7538 lt!444025)) 1))))

(assert (=> d!378698 (= lt!444025 (lex!900 thiss!19762 rules!2550 (print!839 thiss!19762 (singletonSeq!984 t1!34))))))

(assert (=> d!378698 (not (isEmpty!8180 rules!2550))))

(assert (=> d!378698 (= (rulesProduceIndividualToken!1038 thiss!19762 rules!2550 t1!34) lt!444026)))

(declare-fun b!1342127 () Bool)

(declare-fun res!604702 () Bool)

(assert (=> b!1342127 (=> (not res!604702) (not e!859477))))

(declare-fun apply!3244 (BalanceConc!8972 Int) Token!4410)

(assert (=> b!1342127 (= res!604702 (= (apply!3244 (_1!7538 lt!444025) 0) t1!34))))

(declare-fun b!1342128 () Bool)

(declare-fun isEmpty!8183 (BalanceConc!8968) Bool)

(assert (=> b!1342128 (= e!859477 (isEmpty!8183 (_2!7538 lt!444025)))))

(declare-fun b!1342129 () Bool)

(assert (=> b!1342129 (= e!859478 (isEmpty!8183 (_2!7538 (lex!900 thiss!19762 rules!2550 (print!839 thiss!19762 (singletonSeq!984 t1!34))))))))

(assert (= (and d!378698 res!604701) b!1342127))

(assert (= (and b!1342127 res!604702) b!1342128))

(assert (= (and d!378698 res!604700) b!1342129))

(declare-fun m!1500755 () Bool)

(assert (=> d!378698 m!1500755))

(assert (=> d!378698 m!1500755))

(declare-fun m!1500757 () Bool)

(assert (=> d!378698 m!1500757))

(assert (=> d!378698 m!1500757))

(declare-fun m!1500759 () Bool)

(assert (=> d!378698 m!1500759))

(assert (=> d!378698 m!1500755))

(declare-fun m!1500761 () Bool)

(assert (=> d!378698 m!1500761))

(declare-fun m!1500763 () Bool)

(assert (=> d!378698 m!1500763))

(declare-fun m!1500765 () Bool)

(assert (=> d!378698 m!1500765))

(assert (=> d!378698 m!1500485))

(declare-fun m!1500767 () Bool)

(assert (=> b!1342127 m!1500767))

(declare-fun m!1500769 () Bool)

(assert (=> b!1342128 m!1500769))

(assert (=> b!1342129 m!1500755))

(assert (=> b!1342129 m!1500755))

(assert (=> b!1342129 m!1500757))

(assert (=> b!1342129 m!1500757))

(assert (=> b!1342129 m!1500759))

(declare-fun m!1500771 () Bool)

(assert (=> b!1342129 m!1500771))

(assert (=> b!1341888 d!378698))

(declare-fun d!378700 () Bool)

(declare-fun c!219873 () Bool)

(assert (=> d!378700 (= c!219873 (is-IntegerValue!7392 (value!77293 t2!34)))))

(declare-fun e!859479 () Bool)

(assert (=> d!378700 (= (inv!21 (value!77293 t2!34)) e!859479)))

(declare-fun b!1342130 () Bool)

(declare-fun e!859481 () Bool)

(assert (=> b!1342130 (= e!859481 (inv!15 (value!77293 t2!34)))))

(declare-fun b!1342131 () Bool)

(declare-fun e!859480 () Bool)

(assert (=> b!1342131 (= e!859479 e!859480)))

(declare-fun c!219872 () Bool)

(assert (=> b!1342131 (= c!219872 (is-IntegerValue!7393 (value!77293 t2!34)))))

(declare-fun b!1342132 () Bool)

(assert (=> b!1342132 (= e!859479 (inv!16 (value!77293 t2!34)))))

(declare-fun b!1342133 () Bool)

(declare-fun res!604703 () Bool)

(assert (=> b!1342133 (=> res!604703 e!859481)))

(assert (=> b!1342133 (= res!604703 (not (is-IntegerValue!7394 (value!77293 t2!34))))))

(assert (=> b!1342133 (= e!859480 e!859481)))

(declare-fun b!1342134 () Bool)

(assert (=> b!1342134 (= e!859480 (inv!17 (value!77293 t2!34)))))

(assert (= (and d!378700 c!219873) b!1342132))

(assert (= (and d!378700 (not c!219873)) b!1342131))

(assert (= (and b!1342131 c!219872) b!1342134))

(assert (= (and b!1342131 (not c!219872)) b!1342133))

(assert (= (and b!1342133 (not res!604703)) b!1342130))

(declare-fun m!1500773 () Bool)

(assert (=> b!1342130 m!1500773))

(declare-fun m!1500775 () Bool)

(assert (=> b!1342132 m!1500775))

(declare-fun m!1500777 () Bool)

(assert (=> b!1342134 m!1500777))

(assert (=> b!1341878 d!378700))

(declare-fun d!378702 () Bool)

(declare-fun lt!444027 () Bool)

(assert (=> d!378702 (= lt!444027 (set.member lt!443957 (content!1948 lt!443952)))))

(declare-fun e!859483 () Bool)

(assert (=> d!378702 (= lt!444027 e!859483)))

(declare-fun res!604705 () Bool)

(assert (=> d!378702 (=> (not res!604705) (not e!859483))))

(assert (=> d!378702 (= res!604705 (is-Cons!13699 lt!443952))))

(assert (=> d!378702 (= (contains!2502 lt!443952 lt!443957) lt!444027)))

(declare-fun b!1342135 () Bool)

(declare-fun e!859482 () Bool)

(assert (=> b!1342135 (= e!859483 e!859482)))

(declare-fun res!604704 () Bool)

(assert (=> b!1342135 (=> res!604704 e!859482)))

(assert (=> b!1342135 (= res!604704 (= (h!19100 lt!443952) lt!443957))))

(declare-fun b!1342136 () Bool)

(assert (=> b!1342136 (= e!859482 (contains!2502 (t!119530 lt!443952) lt!443957))))

(assert (= (and d!378702 res!604705) b!1342135))

(assert (= (and b!1342135 (not res!604704)) b!1342136))

(assert (=> d!378702 m!1500709))

(declare-fun m!1500779 () Bool)

(assert (=> d!378702 m!1500779))

(declare-fun m!1500781 () Bool)

(assert (=> b!1342136 m!1500781))

(assert (=> b!1341889 d!378702))

(declare-fun d!378704 () Bool)

(declare-fun lt!444028 () C!7666)

(assert (=> d!378704 (= lt!444028 (apply!3242 (list!5220 lt!443951) 0))))

(assert (=> d!378704 (= lt!444028 (apply!3243 (c!219843 lt!443951) 0))))

(declare-fun e!859484 () Bool)

(assert (=> d!378704 e!859484))

(declare-fun res!604706 () Bool)

(assert (=> d!378704 (=> (not res!604706) (not e!859484))))

(assert (=> d!378704 (= res!604706 (<= 0 0))))

(assert (=> d!378704 (= (apply!3240 lt!443951 0) lt!444028)))

(declare-fun b!1342137 () Bool)

(assert (=> b!1342137 (= e!859484 (< 0 (size!11170 lt!443951)))))

(assert (= (and d!378704 res!604706) b!1342137))

(assert (=> d!378704 m!1500471))

(assert (=> d!378704 m!1500471))

(declare-fun m!1500783 () Bool)

(assert (=> d!378704 m!1500783))

(declare-fun m!1500785 () Bool)

(assert (=> d!378704 m!1500785))

(declare-fun m!1500787 () Bool)

(assert (=> b!1342137 m!1500787))

(assert (=> b!1341889 d!378704))

(declare-fun d!378706 () Bool)

(declare-fun lt!444030 () Bool)

(declare-fun e!859486 () Bool)

(assert (=> d!378706 (= lt!444030 e!859486)))

(declare-fun res!604707 () Bool)

(assert (=> d!378706 (=> (not res!604707) (not e!859486))))

(assert (=> d!378706 (= res!604707 (= (list!5223 (_1!7538 (lex!900 thiss!19762 rules!2550 (print!839 thiss!19762 (singletonSeq!984 t2!34))))) (list!5223 (singletonSeq!984 t2!34))))))

(declare-fun e!859485 () Bool)

(assert (=> d!378706 (= lt!444030 e!859485)))

(declare-fun res!604708 () Bool)

(assert (=> d!378706 (=> (not res!604708) (not e!859485))))

(declare-fun lt!444029 () tuple2!13304)

(assert (=> d!378706 (= res!604708 (= (size!11175 (_1!7538 lt!444029)) 1))))

(assert (=> d!378706 (= lt!444029 (lex!900 thiss!19762 rules!2550 (print!839 thiss!19762 (singletonSeq!984 t2!34))))))

(assert (=> d!378706 (not (isEmpty!8180 rules!2550))))

(assert (=> d!378706 (= (rulesProduceIndividualToken!1038 thiss!19762 rules!2550 t2!34) lt!444030)))

(declare-fun b!1342138 () Bool)

(declare-fun res!604709 () Bool)

(assert (=> b!1342138 (=> (not res!604709) (not e!859485))))

(assert (=> b!1342138 (= res!604709 (= (apply!3244 (_1!7538 lt!444029) 0) t2!34))))

(declare-fun b!1342139 () Bool)

(assert (=> b!1342139 (= e!859485 (isEmpty!8183 (_2!7538 lt!444029)))))

(declare-fun b!1342140 () Bool)

(assert (=> b!1342140 (= e!859486 (isEmpty!8183 (_2!7538 (lex!900 thiss!19762 rules!2550 (print!839 thiss!19762 (singletonSeq!984 t2!34))))))))

(assert (= (and d!378706 res!604708) b!1342138))

(assert (= (and b!1342138 res!604709) b!1342139))

(assert (= (and d!378706 res!604707) b!1342140))

(declare-fun m!1500789 () Bool)

(assert (=> d!378706 m!1500789))

(assert (=> d!378706 m!1500789))

(declare-fun m!1500791 () Bool)

(assert (=> d!378706 m!1500791))

(assert (=> d!378706 m!1500791))

(declare-fun m!1500793 () Bool)

(assert (=> d!378706 m!1500793))

(assert (=> d!378706 m!1500789))

(declare-fun m!1500795 () Bool)

(assert (=> d!378706 m!1500795))

(declare-fun m!1500797 () Bool)

(assert (=> d!378706 m!1500797))

(declare-fun m!1500799 () Bool)

(assert (=> d!378706 m!1500799))

(assert (=> d!378706 m!1500485))

(declare-fun m!1500801 () Bool)

(assert (=> b!1342138 m!1500801))

(declare-fun m!1500803 () Bool)

(assert (=> b!1342139 m!1500803))

(assert (=> b!1342140 m!1500789))

(assert (=> b!1342140 m!1500789))

(assert (=> b!1342140 m!1500791))

(assert (=> b!1342140 m!1500791))

(assert (=> b!1342140 m!1500793))

(declare-fun m!1500805 () Bool)

(assert (=> b!1342140 m!1500805))

(assert (=> b!1341900 d!378706))

(declare-fun d!378708 () Bool)

(declare-fun lt!444031 () Bool)

(assert (=> d!378708 (= lt!444031 (set.member lt!443954 (content!1948 lt!443956)))))

(declare-fun e!859488 () Bool)

(assert (=> d!378708 (= lt!444031 e!859488)))

(declare-fun res!604711 () Bool)

(assert (=> d!378708 (=> (not res!604711) (not e!859488))))

(assert (=> d!378708 (= res!604711 (is-Cons!13699 lt!443956))))

(assert (=> d!378708 (= (contains!2502 lt!443956 lt!443954) lt!444031)))

(declare-fun b!1342141 () Bool)

(declare-fun e!859487 () Bool)

(assert (=> b!1342141 (= e!859488 e!859487)))

(declare-fun res!604710 () Bool)

(assert (=> b!1342141 (=> res!604710 e!859487)))

(assert (=> b!1342141 (= res!604710 (= (h!19100 lt!443956) lt!443954))))

(declare-fun b!1342142 () Bool)

(assert (=> b!1342142 (= e!859487 (contains!2502 (t!119530 lt!443956) lt!443954))))

(assert (= (and d!378708 res!604711) b!1342141))

(assert (= (and b!1342141 (not res!604710)) b!1342142))

(assert (=> d!378708 m!1500635))

(declare-fun m!1500807 () Bool)

(assert (=> d!378708 m!1500807))

(declare-fun m!1500809 () Bool)

(assert (=> b!1342142 m!1500809))

(assert (=> b!1341879 d!378708))

(declare-fun d!378710 () Bool)

(assert (=> d!378710 (= (inv!18038 (tag!2636 (h!19102 rules!2550))) (= (mod (str.len (value!77292 (tag!2636 (h!19102 rules!2550)))) 2) 0))))

(assert (=> b!1341890 d!378710))

(declare-fun d!378712 () Bool)

(declare-fun res!604712 () Bool)

(declare-fun e!859489 () Bool)

(assert (=> d!378712 (=> (not res!604712) (not e!859489))))

(assert (=> d!378712 (= res!604712 (semiInverseModEq!901 (toChars!3476 (transformation!2374 (h!19102 rules!2550))) (toValue!3617 (transformation!2374 (h!19102 rules!2550)))))))

(assert (=> d!378712 (= (inv!18041 (transformation!2374 (h!19102 rules!2550))) e!859489)))

(declare-fun b!1342143 () Bool)

(assert (=> b!1342143 (= e!859489 (equivClasses!860 (toChars!3476 (transformation!2374 (h!19102 rules!2550))) (toValue!3617 (transformation!2374 (h!19102 rules!2550)))))))

(assert (= (and d!378712 res!604712) b!1342143))

(declare-fun m!1500811 () Bool)

(assert (=> d!378712 m!1500811))

(declare-fun m!1500813 () Bool)

(assert (=> b!1342143 m!1500813))

(assert (=> b!1341890 d!378712))

(declare-fun b!1342148 () Bool)

(declare-fun e!859492 () Bool)

(declare-fun tp_is_empty!6693 () Bool)

(declare-fun tp!388581 () Bool)

(assert (=> b!1342148 (= e!859492 (and tp_is_empty!6693 tp!388581))))

(assert (=> b!1341885 (= tp!388533 e!859492)))

(assert (= (and b!1341885 (is-Cons!13699 (originalCharacters!3236 t1!34))) b!1342148))

(declare-fun b!1342161 () Bool)

(declare-fun e!859495 () Bool)

(declare-fun tp!388596 () Bool)

(assert (=> b!1342161 (= e!859495 tp!388596)))

(declare-fun b!1342162 () Bool)

(declare-fun tp!388592 () Bool)

(declare-fun tp!388593 () Bool)

(assert (=> b!1342162 (= e!859495 (and tp!388592 tp!388593))))

(assert (=> b!1341891 (= tp!388527 e!859495)))

(declare-fun b!1342159 () Bool)

(assert (=> b!1342159 (= e!859495 tp_is_empty!6693)))

(declare-fun b!1342160 () Bool)

(declare-fun tp!388595 () Bool)

(declare-fun tp!388594 () Bool)

(assert (=> b!1342160 (= e!859495 (and tp!388595 tp!388594))))

(assert (= (and b!1341891 (is-ElementMatch!3688 (regex!2374 (rule!4119 t1!34)))) b!1342159))

(assert (= (and b!1341891 (is-Concat!6153 (regex!2374 (rule!4119 t1!34)))) b!1342160))

(assert (= (and b!1341891 (is-Star!3688 (regex!2374 (rule!4119 t1!34)))) b!1342161))

(assert (= (and b!1341891 (is-Union!3688 (regex!2374 (rule!4119 t1!34)))) b!1342162))

(declare-fun b!1342173 () Bool)

(declare-fun b_free!32703 () Bool)

(declare-fun b_next!33407 () Bool)

(assert (=> b!1342173 (= b_free!32703 (not b_next!33407))))

(declare-fun tp!388605 () Bool)

(declare-fun b_and!89815 () Bool)

(assert (=> b!1342173 (= tp!388605 b_and!89815)))

(declare-fun b_free!32705 () Bool)

(declare-fun b_next!33409 () Bool)

(assert (=> b!1342173 (= b_free!32705 (not b_next!33409))))

(declare-fun tb!70637 () Bool)

(declare-fun t!119550 () Bool)

(assert (=> (and b!1342173 (= (toChars!3476 (transformation!2374 (h!19102 (t!119532 rules!2550)))) (toChars!3476 (transformation!2374 (rule!4119 t1!34)))) t!119550) tb!70637))

(declare-fun result!85862 () Bool)

(assert (= result!85862 result!85842))

(assert (=> b!1342036 t!119550))

(declare-fun tb!70639 () Bool)

(declare-fun t!119552 () Bool)

(assert (=> (and b!1342173 (= (toChars!3476 (transformation!2374 (h!19102 (t!119532 rules!2550)))) (toChars!3476 (transformation!2374 (rule!4119 t2!34)))) t!119552) tb!70639))

(declare-fun result!85864 () Bool)

(assert (= result!85864 result!85850))

(assert (=> b!1342043 t!119552))

(assert (=> d!378656 t!119552))

(assert (=> d!378674 t!119550))

(declare-fun b_and!89817 () Bool)

(declare-fun tp!388607 () Bool)

(assert (=> b!1342173 (= tp!388607 (and (=> t!119550 result!85862) (=> t!119552 result!85864) b_and!89817))))

(declare-fun e!859504 () Bool)

(assert (=> b!1342173 (= e!859504 (and tp!388605 tp!388607))))

(declare-fun b!1342172 () Bool)

(declare-fun tp!388608 () Bool)

(declare-fun e!859505 () Bool)

(assert (=> b!1342172 (= e!859505 (and tp!388608 (inv!18038 (tag!2636 (h!19102 (t!119532 rules!2550)))) (inv!18041 (transformation!2374 (h!19102 (t!119532 rules!2550)))) e!859504))))

(declare-fun b!1342171 () Bool)

(declare-fun e!859507 () Bool)

(declare-fun tp!388606 () Bool)

(assert (=> b!1342171 (= e!859507 (and e!859505 tp!388606))))

(assert (=> b!1341887 (= tp!388536 e!859507)))

(assert (= b!1342172 b!1342173))

(assert (= b!1342171 b!1342172))

(assert (= (and b!1341887 (is-Cons!13701 (t!119532 rules!2550))) b!1342171))

(declare-fun m!1500815 () Bool)

(assert (=> b!1342172 m!1500815))

(declare-fun m!1500817 () Bool)

(assert (=> b!1342172 m!1500817))

(declare-fun b!1342176 () Bool)

(declare-fun e!859508 () Bool)

(declare-fun tp!388613 () Bool)

(assert (=> b!1342176 (= e!859508 tp!388613)))

(declare-fun b!1342177 () Bool)

(declare-fun tp!388609 () Bool)

(declare-fun tp!388610 () Bool)

(assert (=> b!1342177 (= e!859508 (and tp!388609 tp!388610))))

(assert (=> b!1341894 (= tp!388532 e!859508)))

(declare-fun b!1342174 () Bool)

(assert (=> b!1342174 (= e!859508 tp_is_empty!6693)))

(declare-fun b!1342175 () Bool)

(declare-fun tp!388612 () Bool)

(declare-fun tp!388611 () Bool)

(assert (=> b!1342175 (= e!859508 (and tp!388612 tp!388611))))

(assert (= (and b!1341894 (is-ElementMatch!3688 (regex!2374 (rule!4119 t2!34)))) b!1342174))

(assert (= (and b!1341894 (is-Concat!6153 (regex!2374 (rule!4119 t2!34)))) b!1342175))

(assert (= (and b!1341894 (is-Star!3688 (regex!2374 (rule!4119 t2!34)))) b!1342176))

(assert (= (and b!1341894 (is-Union!3688 (regex!2374 (rule!4119 t2!34)))) b!1342177))

(declare-fun b!1342178 () Bool)

(declare-fun e!859509 () Bool)

(declare-fun tp!388614 () Bool)

(assert (=> b!1342178 (= e!859509 (and tp_is_empty!6693 tp!388614))))

(assert (=> b!1341878 (= tp!388538 e!859509)))

(assert (= (and b!1341878 (is-Cons!13699 (originalCharacters!3236 t2!34))) b!1342178))

(declare-fun b!1342181 () Bool)

(declare-fun e!859510 () Bool)

(declare-fun tp!388619 () Bool)

(assert (=> b!1342181 (= e!859510 tp!388619)))

(declare-fun b!1342182 () Bool)

(declare-fun tp!388615 () Bool)

(declare-fun tp!388616 () Bool)

(assert (=> b!1342182 (= e!859510 (and tp!388615 tp!388616))))

(assert (=> b!1341890 (= tp!388535 e!859510)))

(declare-fun b!1342179 () Bool)

(assert (=> b!1342179 (= e!859510 tp_is_empty!6693)))

(declare-fun b!1342180 () Bool)

(declare-fun tp!388618 () Bool)

(declare-fun tp!388617 () Bool)

(assert (=> b!1342180 (= e!859510 (and tp!388618 tp!388617))))

(assert (= (and b!1341890 (is-ElementMatch!3688 (regex!2374 (h!19102 rules!2550)))) b!1342179))

(assert (= (and b!1341890 (is-Concat!6153 (regex!2374 (h!19102 rules!2550)))) b!1342180))

(assert (= (and b!1341890 (is-Star!3688 (regex!2374 (h!19102 rules!2550)))) b!1342181))

(assert (= (and b!1341890 (is-Union!3688 (regex!2374 (h!19102 rules!2550)))) b!1342182))

(declare-fun b_lambda!39689 () Bool)

(assert (= b_lambda!39679 (or (and b!1341883 b_free!32681) (and b!1341898 b_free!32685 (= (toChars!3476 (transformation!2374 (h!19102 rules!2550))) (toChars!3476 (transformation!2374 (rule!4119 t1!34))))) (and b!1341899 b_free!32689 (= (toChars!3476 (transformation!2374 (rule!4119 t2!34))) (toChars!3476 (transformation!2374 (rule!4119 t1!34))))) (and b!1342173 b_free!32705 (= (toChars!3476 (transformation!2374 (h!19102 (t!119532 rules!2550)))) (toChars!3476 (transformation!2374 (rule!4119 t1!34))))) b_lambda!39689)))

(declare-fun b_lambda!39691 () Bool)

(assert (= b_lambda!39687 (or b!1341893 b_lambda!39691)))

(declare-fun bs!332395 () Bool)

(declare-fun d!378714 () Bool)

(assert (= bs!332395 (and d!378714 b!1341893)))

(declare-fun res!604713 () Bool)

(declare-fun e!859511 () Bool)

(assert (=> bs!332395 (=> (not res!604713) (not e!859511))))

(assert (=> bs!332395 (= res!604713 (matchR!1681 lt!443949 lt!444020))))

(assert (=> bs!332395 (= (dynLambda!6050 lambda!56230 lt!444020) e!859511)))

(declare-fun b!1342183 () Bool)

(declare-fun isPrefix!1102 (List!13765 List!13765) Bool)

(assert (=> b!1342183 (= e!859511 (isPrefix!1102 lt!443952 lt!444020))))

(assert (= (and bs!332395 res!604713) b!1342183))

(declare-fun m!1500819 () Bool)

(assert (=> bs!332395 m!1500819))

(declare-fun m!1500821 () Bool)

(assert (=> b!1342183 m!1500821))

(assert (=> d!378692 d!378714))

(declare-fun b_lambda!39693 () Bool)

(assert (= b_lambda!39685 (or (and b!1341883 b_free!32681) (and b!1341898 b_free!32685 (= (toChars!3476 (transformation!2374 (h!19102 rules!2550))) (toChars!3476 (transformation!2374 (rule!4119 t1!34))))) (and b!1341899 b_free!32689 (= (toChars!3476 (transformation!2374 (rule!4119 t2!34))) (toChars!3476 (transformation!2374 (rule!4119 t1!34))))) (and b!1342173 b_free!32705 (= (toChars!3476 (transformation!2374 (h!19102 (t!119532 rules!2550)))) (toChars!3476 (transformation!2374 (rule!4119 t1!34))))) b_lambda!39693)))

(declare-fun b_lambda!39695 () Bool)

(assert (= b_lambda!39683 (or (and b!1341883 b_free!32681 (= (toChars!3476 (transformation!2374 (rule!4119 t1!34))) (toChars!3476 (transformation!2374 (rule!4119 t2!34))))) (and b!1341898 b_free!32685 (= (toChars!3476 (transformation!2374 (h!19102 rules!2550))) (toChars!3476 (transformation!2374 (rule!4119 t2!34))))) (and b!1341899 b_free!32689) (and b!1342173 b_free!32705 (= (toChars!3476 (transformation!2374 (h!19102 (t!119532 rules!2550)))) (toChars!3476 (transformation!2374 (rule!4119 t2!34))))) b_lambda!39695)))

(declare-fun b_lambda!39697 () Bool)

(assert (= b_lambda!39681 (or (and b!1341883 b_free!32681 (= (toChars!3476 (transformation!2374 (rule!4119 t1!34))) (toChars!3476 (transformation!2374 (rule!4119 t2!34))))) (and b!1341898 b_free!32685 (= (toChars!3476 (transformation!2374 (h!19102 rules!2550))) (toChars!3476 (transformation!2374 (rule!4119 t2!34))))) (and b!1341899 b_free!32689) (and b!1342173 b_free!32705 (= (toChars!3476 (transformation!2374 (h!19102 (t!119532 rules!2550)))) (toChars!3476 (transformation!2374 (rule!4119 t2!34))))) b_lambda!39697)))

(push 1)

(assert (not d!378670))

(assert (not d!378688))

(assert (not b!1342057))

(assert (not b_next!33383))

(assert (not d!378666))

(assert (not b!1342136))

(assert (not b_next!33389))

(assert (not d!378676))

(assert (not d!378702))

(assert b_and!89813)

(assert (not d!378680))

(assert (not b!1342044))

(assert (not d!378648))

(assert (not b!1342029))

(assert (not b!1342022))

(assert (not b!1342162))

(assert (not b_lambda!39689))

(assert (not d!378696))

(assert (not d!378640))

(assert b_and!89817)

(assert (not b!1342113))

(assert tp_is_empty!6693)

(assert (not b!1342138))

(assert (not b_next!33407))

(assert (not b!1342140))

(assert (not d!378708))

(assert (not bm!90491))

(assert (not b!1342060))

(assert (not b_lambda!39695))

(assert (not b!1342045))

(assert (not d!378660))

(assert (not b!1342183))

(assert (not b!1342160))

(assert (not b!1342100))

(assert (not b!1342139))

(assert (not b!1342042))

(assert (not d!378690))

(assert (not b!1342077))

(assert (not d!378706))

(assert (not b!1342181))

(assert b_and!89775)

(assert (not b!1342148))

(assert (not d!378698))

(assert (not d!378642))

(assert (not d!378650))

(assert (not b!1342102))

(assert (not b!1342120))

(assert (not b!1342129))

(assert (not b!1342036))

(assert (not b!1342031))

(assert (not b_next!33393))

(assert (not b_next!33387))

(assert (not b!1342176))

(assert (not d!378712))

(assert (not b!1342081))

(assert (not tb!70625))

(assert (not b_next!33409))

(assert (not b!1342130))

(assert (not b!1342087))

(assert (not b!1342127))

(assert (not b!1342107))

(assert (not b!1342025))

(assert (not d!378668))

(assert (not b!1342143))

(assert (not b!1342089))

(assert (not b_lambda!39697))

(assert (not b!1342076))

(assert (not b!1342128))

(assert (not b_lambda!39691))

(assert (not d!378674))

(assert (not d!378654))

(assert (not b!1342106))

(assert (not b!1342134))

(assert (not d!378682))

(assert (not d!378656))

(assert (not b!1342018))

(assert (not b!1342104))

(assert (not b!1342172))

(assert (not d!378644))

(assert (not b!1342037))

(assert (not d!378692))

(assert (not b!1342048))

(assert (not b!1342142))

(assert (not b!1342182))

(assert (not b!1342178))

(assert (not b!1342180))

(assert (not b!1342171))

(assert (not b!1342086))

(assert (not b!1342023))

(assert (not b!1342177))

(assert (not tb!70631))

(assert b_and!89767)

(assert (not b!1342119))

(assert (not b!1342137))

(assert (not d!378658))

(assert b_and!89809)

(assert b_and!89811)

(assert (not bs!332395))

(assert (not b!1342161))

(assert b_and!89771)

(assert (not d!378704))

(assert (not b!1342175))

(assert (not b!1342132))

(assert (not b_next!33391))

(assert (not d!378652))

(assert (not d!378678))

(assert (not b!1342043))

(assert (not b_lambda!39693))

(assert b_and!89815)

(assert (not b_next!33385))

(assert (not b!1342054))

(check-sat)

(pop 1)

(push 1)

(assert b_and!89817)

(assert (not b_next!33407))

(assert b_and!89775)

(assert (not b_next!33409))

(assert b_and!89767)

(assert b_and!89771)

(assert (not b_next!33391))

(assert (not b_next!33383))

(assert b_and!89813)

(assert (not b_next!33389))

(assert (not b_next!33393))

(assert (not b_next!33387))

(assert b_and!89809)

(assert b_and!89811)

(assert b_and!89815)

(assert (not b_next!33385))

(check-sat)

(pop 1)

