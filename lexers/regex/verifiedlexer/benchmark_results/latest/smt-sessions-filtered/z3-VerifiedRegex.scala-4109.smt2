; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!220176 () Bool)

(assert start!220176)

(declare-fun b!2256060 () Bool)

(declare-fun b_free!66349 () Bool)

(declare-fun b_next!67053 () Bool)

(assert (=> b!2256060 (= b_free!66349 (not b_next!67053))))

(declare-fun tp!713040 () Bool)

(declare-fun b_and!177041 () Bool)

(assert (=> b!2256060 (= tp!713040 b_and!177041)))

(declare-fun b_free!66351 () Bool)

(declare-fun b_next!67055 () Bool)

(assert (=> b!2256060 (= b_free!66351 (not b_next!67055))))

(declare-fun tp!713049 () Bool)

(declare-fun b_and!177043 () Bool)

(assert (=> b!2256060 (= tp!713049 b_and!177043)))

(declare-fun b!2256061 () Bool)

(declare-fun b_free!66353 () Bool)

(declare-fun b_next!67057 () Bool)

(assert (=> b!2256061 (= b_free!66353 (not b_next!67057))))

(declare-fun tp!713039 () Bool)

(declare-fun b_and!177045 () Bool)

(assert (=> b!2256061 (= tp!713039 b_and!177045)))

(declare-fun b_free!66355 () Bool)

(declare-fun b_next!67059 () Bool)

(assert (=> b!2256061 (= b_free!66355 (not b_next!67059))))

(declare-fun tp!713048 () Bool)

(declare-fun b_and!177047 () Bool)

(assert (=> b!2256061 (= tp!713048 b_and!177047)))

(declare-fun b!2256057 () Bool)

(declare-fun b_free!66357 () Bool)

(declare-fun b_next!67061 () Bool)

(assert (=> b!2256057 (= b_free!66357 (not b_next!67061))))

(declare-fun tp!713045 () Bool)

(declare-fun b_and!177049 () Bool)

(assert (=> b!2256057 (= tp!713045 b_and!177049)))

(declare-fun b_free!66359 () Bool)

(declare-fun b_next!67063 () Bool)

(assert (=> b!2256057 (= b_free!66359 (not b_next!67063))))

(declare-fun tp!713041 () Bool)

(declare-fun b_and!177051 () Bool)

(assert (=> b!2256057 (= tp!713041 b_and!177051)))

(declare-fun b!2256087 () Bool)

(declare-fun b_free!66361 () Bool)

(declare-fun b_next!67065 () Bool)

(assert (=> b!2256087 (= b_free!66361 (not b_next!67065))))

(declare-fun tp!713043 () Bool)

(declare-fun b_and!177053 () Bool)

(assert (=> b!2256087 (= tp!713043 b_and!177053)))

(declare-fun b_free!66363 () Bool)

(declare-fun b_next!67067 () Bool)

(assert (=> b!2256087 (= b_free!66363 (not b_next!67067))))

(declare-fun tp!713047 () Bool)

(declare-fun b_and!177055 () Bool)

(assert (=> b!2256087 (= tp!713047 b_and!177055)))

(declare-fun b!2256052 () Bool)

(declare-fun e!1444124 () Bool)

(declare-fun lt!838656 () Int)

(declare-datatypes ((List!26851 0))(
  ( (Nil!26757) (Cons!26757 (h!32158 (_ BitVec 16)) (t!201271 List!26851)) )
))
(declare-datatypes ((TokenValue!4411 0))(
  ( (FloatLiteralValue!8822 (text!31322 List!26851)) (TokenValueExt!4410 (__x!17882 Int)) (Broken!22055 (value!134890 List!26851)) (Object!4504) (End!4411) (Def!4411) (Underscore!4411) (Match!4411) (Else!4411) (Error!4411) (Case!4411) (If!4411) (Extends!4411) (Abstract!4411) (Class!4411) (Val!4411) (DelimiterValue!8822 (del!4471 List!26851)) (KeywordValue!4417 (value!134891 List!26851)) (CommentValue!8822 (value!134892 List!26851)) (WhitespaceValue!8822 (value!134893 List!26851)) (IndentationValue!4411 (value!134894 List!26851)) (String!29158) (Int32!4411) (Broken!22056 (value!134895 List!26851)) (Boolean!4412) (Unit!39673) (OperatorValue!4414 (op!4471 List!26851)) (IdentifierValue!8822 (value!134896 List!26851)) (IdentifierValue!8823 (value!134897 List!26851)) (WhitespaceValue!8823 (value!134898 List!26851)) (True!8822) (False!8822) (Broken!22057 (value!134899 List!26851)) (Broken!22058 (value!134900 List!26851)) (True!8823) (RightBrace!4411) (RightBracket!4411) (Colon!4411) (Null!4411) (Comma!4411) (LeftBracket!4411) (False!8823) (LeftBrace!4411) (ImaginaryLiteralValue!4411 (text!31323 List!26851)) (StringLiteralValue!13233 (value!134901 List!26851)) (EOFValue!4411 (value!134902 List!26851)) (IdentValue!4411 (value!134903 List!26851)) (DelimiterValue!8823 (value!134904 List!26851)) (DedentValue!4411 (value!134905 List!26851)) (NewLineValue!4411 (value!134906 List!26851)) (IntegerValue!13233 (value!134907 (_ BitVec 32)) (text!31324 List!26851)) (IntegerValue!13234 (value!134908 Int) (text!31325 List!26851)) (Times!4411) (Or!4411) (Equal!4411) (Minus!4411) (Broken!22059 (value!134909 List!26851)) (And!4411) (Div!4411) (LessEqual!4411) (Mod!4411) (Concat!11008) (Not!4411) (Plus!4411) (SpaceValue!4411 (value!134910 List!26851)) (IntegerValue!13235 (value!134911 Int) (text!31326 List!26851)) (StringLiteralValue!13234 (text!31327 List!26851)) (FloatLiteralValue!8823 (text!31328 List!26851)) (BytesLiteralValue!4411 (value!134912 List!26851)) (CommentValue!8823 (value!134913 List!26851)) (StringLiteralValue!13235 (value!134914 List!26851)) (ErrorTokenValue!4411 (msg!4472 List!26851)) )
))
(declare-datatypes ((C!13340 0))(
  ( (C!13341 (val!7718 Int)) )
))
(declare-datatypes ((List!26852 0))(
  ( (Nil!26758) (Cons!26758 (h!32159 C!13340) (t!201272 List!26852)) )
))
(declare-datatypes ((IArray!17297 0))(
  ( (IArray!17298 (innerList!8706 List!26852)) )
))
(declare-datatypes ((Conc!8646 0))(
  ( (Node!8646 (left!20323 Conc!8646) (right!20653 Conc!8646) (csize!17522 Int) (cheight!8857 Int)) (Leaf!12756 (xs!11588 IArray!17297) (csize!17523 Int)) (Empty!8646) )
))
(declare-datatypes ((BalanceConc!17020 0))(
  ( (BalanceConc!17021 (c!358570 Conc!8646)) )
))
(declare-datatypes ((Regex!6597 0))(
  ( (ElementMatch!6597 (c!358571 C!13340)) (Concat!11009 (regOne!13706 Regex!6597) (regTwo!13706 Regex!6597)) (EmptyExpr!6597) (Star!6597 (reg!6926 Regex!6597)) (EmptyLang!6597) (Union!6597 (regOne!13707 Regex!6597) (regTwo!13707 Regex!6597)) )
))
(declare-datatypes ((String!29159 0))(
  ( (String!29160 (value!134915 String)) )
))
(declare-datatypes ((TokenValueInjection!8362 0))(
  ( (TokenValueInjection!8363 (toValue!5991 Int) (toChars!5850 Int)) )
))
(declare-datatypes ((Rule!8298 0))(
  ( (Rule!8299 (regex!4249 Regex!6597) (tag!4739 String!29159) (isSeparator!4249 Bool) (transformation!4249 TokenValueInjection!8362)) )
))
(declare-datatypes ((Token!7976 0))(
  ( (Token!7977 (value!134916 TokenValue!4411) (rule!6555 Rule!8298) (size!20951 Int) (originalCharacters!5019 List!26852)) )
))
(declare-datatypes ((List!26853 0))(
  ( (Nil!26759) (Cons!26759 (h!32160 Token!7976) (t!201273 List!26853)) )
))
(declare-fun tokens!456 () List!26853)

(declare-fun size!20952 (BalanceConc!17020) Int)

(declare-fun charsOf!2637 (Token!7976) BalanceConc!17020)

(declare-fun head!4822 (List!26853) Token!7976)

(assert (=> b!2256052 (= e!1444124 (<= lt!838656 (size!20952 (charsOf!2637 (head!4822 tokens!456)))))))

(declare-fun b!2256053 () Bool)

(declare-fun e!1444110 () Bool)

(declare-fun e!1444116 () Bool)

(assert (=> b!2256053 (= e!1444110 e!1444116)))

(declare-fun res!964371 () Bool)

(assert (=> b!2256053 (=> res!964371 e!1444116)))

(declare-datatypes ((tuple2!26306 0))(
  ( (tuple2!26307 (_1!15663 Token!7976) (_2!15663 List!26852)) )
))
(declare-fun lt!838652 () tuple2!26306)

(assert (=> b!2256053 (= res!964371 (not (= (h!32160 tokens!456) (_1!15663 lt!838652))))))

(declare-datatypes ((Option!5225 0))(
  ( (None!5224) (Some!5224 (v!30250 tuple2!26306)) )
))
(declare-fun lt!838665 () Option!5225)

(declare-fun get!8081 (Option!5225) tuple2!26306)

(assert (=> b!2256053 (= lt!838652 (get!8081 lt!838665))))

(declare-datatypes ((LexerInterface!3846 0))(
  ( (LexerInterfaceExt!3843 (__x!17883 Int)) (Lexer!3844) )
))
(declare-fun thiss!16613 () LexerInterface!3846)

(declare-datatypes ((List!26854 0))(
  ( (Nil!26760) (Cons!26760 (h!32161 Rule!8298) (t!201274 List!26854)) )
))
(declare-fun rules!1750 () List!26854)

(declare-fun input!1722 () List!26852)

(declare-fun maxPrefix!2134 (LexerInterface!3846 List!26854 List!26852) Option!5225)

(assert (=> b!2256053 (= lt!838665 (maxPrefix!2134 thiss!16613 rules!1750 input!1722))))

(declare-fun b!2256054 () Bool)

(declare-fun e!1444105 () Bool)

(declare-fun r!2363 () Rule!8298)

(declare-fun matchR!2858 (Regex!6597 List!26852) Bool)

(declare-fun list!10293 (BalanceConc!17020) List!26852)

(assert (=> b!2256054 (= e!1444105 (not (matchR!2858 (regex!4249 r!2363) (list!10293 (charsOf!2637 (head!4822 tokens!456))))))))

(declare-fun b!2256055 () Bool)

(declare-fun res!964370 () Bool)

(declare-fun e!1444126 () Bool)

(assert (=> b!2256055 (=> res!964370 e!1444126)))

(declare-fun lt!838655 () List!26852)

(assert (=> b!2256055 (= res!964370 (not (matchR!2858 (regex!4249 r!2363) lt!838655)))))

(declare-fun b!2256056 () Bool)

(declare-fun e!1444114 () Bool)

(declare-fun otherP!12 () List!26852)

(declare-fun size!20953 (List!26852) Int)

(assert (=> b!2256056 (= e!1444114 (<= (size!20952 (charsOf!2637 (head!4822 tokens!456))) (size!20953 otherP!12)))))

(declare-fun e!1444113 () Bool)

(assert (=> b!2256057 (= e!1444113 (and tp!713045 tp!713041))))

(declare-fun b!2256058 () Bool)

(declare-fun res!964373 () Bool)

(declare-fun e!1444106 () Bool)

(assert (=> b!2256058 (=> (not res!964373) (not e!1444106))))

(declare-fun otherR!12 () Rule!8298)

(assert (=> b!2256058 (= res!964373 (not (= r!2363 otherR!12)))))

(declare-fun b!2256059 () Bool)

(declare-fun e!1444103 () Bool)

(declare-fun e!1444111 () Bool)

(assert (=> b!2256059 (= e!1444103 e!1444111)))

(declare-fun res!964359 () Bool)

(assert (=> b!2256059 (=> (not res!964359) (not e!1444111))))

(declare-datatypes ((IArray!17299 0))(
  ( (IArray!17300 (innerList!8707 List!26853)) )
))
(declare-datatypes ((Conc!8647 0))(
  ( (Node!8647 (left!20324 Conc!8647) (right!20654 Conc!8647) (csize!17524 Int) (cheight!8858 Int)) (Leaf!12757 (xs!11589 IArray!17299) (csize!17525 Int)) (Empty!8647) )
))
(declare-datatypes ((BalanceConc!17022 0))(
  ( (BalanceConc!17023 (c!358572 Conc!8647)) )
))
(declare-datatypes ((tuple2!26308 0))(
  ( (tuple2!26309 (_1!15664 BalanceConc!17022) (_2!15664 BalanceConc!17020)) )
))
(declare-fun lt!838654 () tuple2!26308)

(declare-fun suffix!886 () List!26852)

(declare-datatypes ((tuple2!26310 0))(
  ( (tuple2!26311 (_1!15665 List!26853) (_2!15665 List!26852)) )
))
(declare-fun list!10294 (BalanceConc!17022) List!26853)

(assert (=> b!2256059 (= res!964359 (= (tuple2!26311 (list!10294 (_1!15664 lt!838654)) (list!10293 (_2!15664 lt!838654))) (tuple2!26311 tokens!456 suffix!886)))))

(declare-fun lex!1685 (LexerInterface!3846 List!26854 BalanceConc!17020) tuple2!26308)

(declare-fun seqFromList!2953 (List!26852) BalanceConc!17020)

(assert (=> b!2256059 (= lt!838654 (lex!1685 thiss!16613 rules!1750 (seqFromList!2953 input!1722)))))

(declare-fun e!1444098 () Bool)

(assert (=> b!2256060 (= e!1444098 (and tp!713040 tp!713049))))

(declare-fun e!1444099 () Bool)

(assert (=> b!2256061 (= e!1444099 (and tp!713039 tp!713048))))

(declare-fun b!2256063 () Bool)

(declare-fun e!1444095 () Bool)

(declare-fun tp_is_empty!10415 () Bool)

(declare-fun tp!713032 () Bool)

(assert (=> b!2256063 (= e!1444095 (and tp_is_empty!10415 tp!713032))))

(declare-fun b!2256064 () Bool)

(declare-fun res!964360 () Bool)

(assert (=> b!2256064 (=> (not res!964360) (not e!1444103))))

(declare-fun isEmpty!15105 (List!26854) Bool)

(assert (=> b!2256064 (= res!964360 (not (isEmpty!15105 rules!1750)))))

(declare-fun e!1444102 () Bool)

(declare-fun tp!713038 () Bool)

(declare-fun b!2256065 () Bool)

(declare-fun e!1444101 () Bool)

(declare-fun inv!36292 (Token!7976) Bool)

(assert (=> b!2256065 (= e!1444102 (and (inv!36292 (h!32160 tokens!456)) e!1444101 tp!713038))))

(declare-fun b!2256066 () Bool)

(declare-fun e!1444123 () Bool)

(declare-fun tp!713034 () Bool)

(declare-fun e!1444119 () Bool)

(declare-fun inv!36289 (String!29159) Bool)

(declare-fun inv!36293 (TokenValueInjection!8362) Bool)

(assert (=> b!2256066 (= e!1444123 (and tp!713034 (inv!36289 (tag!4739 otherR!12)) (inv!36293 (transformation!4249 otherR!12)) e!1444119))))

(declare-fun b!2256067 () Bool)

(declare-fun e!1444127 () Bool)

(declare-fun tp!713042 () Bool)

(assert (=> b!2256067 (= e!1444127 (and tp_is_empty!10415 tp!713042))))

(declare-fun tp!713035 () Bool)

(declare-fun b!2256068 () Bool)

(declare-fun e!1444121 () Bool)

(assert (=> b!2256068 (= e!1444121 (and tp!713035 (inv!36289 (tag!4739 (h!32161 rules!1750))) (inv!36293 (transformation!4249 (h!32161 rules!1750))) e!1444113))))

(declare-fun tp!713046 () Bool)

(declare-fun b!2256069 () Bool)

(declare-fun e!1444125 () Bool)

(declare-fun inv!21 (TokenValue!4411) Bool)

(assert (=> b!2256069 (= e!1444101 (and (inv!21 (value!134916 (h!32160 tokens!456))) e!1444125 tp!713046))))

(declare-fun b!2256070 () Bool)

(declare-fun res!964356 () Bool)

(assert (=> b!2256070 (=> (not res!964356) (not e!1444106))))

(declare-fun isPrefix!2239 (List!26852 List!26852) Bool)

(assert (=> b!2256070 (= res!964356 (isPrefix!2239 otherP!12 input!1722))))

(declare-fun b!2256071 () Bool)

(declare-fun e!1444097 () Bool)

(assert (=> b!2256071 (= e!1444097 (= (rule!6555 (head!4822 tokens!456)) r!2363))))

(declare-fun b!2256072 () Bool)

(declare-fun e!1444107 () Bool)

(assert (=> b!2256072 (= e!1444106 (not e!1444107))))

(declare-fun res!964369 () Bool)

(assert (=> b!2256072 (=> res!964369 e!1444107)))

(assert (=> b!2256072 (= res!964369 e!1444105)))

(declare-fun res!964354 () Bool)

(assert (=> b!2256072 (=> (not res!964354) (not e!1444105))))

(declare-fun lt!838666 () Bool)

(assert (=> b!2256072 (= res!964354 (not lt!838666))))

(declare-fun ruleValid!1341 (LexerInterface!3846 Rule!8298) Bool)

(assert (=> b!2256072 (ruleValid!1341 thiss!16613 r!2363)))

(declare-datatypes ((Unit!39674 0))(
  ( (Unit!39675) )
))
(declare-fun lt!838659 () Unit!39674)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!748 (LexerInterface!3846 Rule!8298 List!26854) Unit!39674)

(assert (=> b!2256072 (= lt!838659 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!748 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2256073 () Bool)

(declare-fun res!964364 () Bool)

(assert (=> b!2256073 (=> (not res!964364) (not e!1444103))))

(declare-fun contains!4601 (List!26854 Rule!8298) Bool)

(assert (=> b!2256073 (= res!964364 (contains!4601 rules!1750 r!2363))))

(declare-fun b!2256074 () Bool)

(declare-fun e!1444109 () Bool)

(assert (=> b!2256074 (= e!1444116 e!1444109)))

(declare-fun res!964372 () Bool)

(assert (=> b!2256074 (=> res!964372 e!1444109)))

(declare-fun lt!838660 () Int)

(assert (=> b!2256074 (= res!964372 (= lt!838656 lt!838660))))

(assert (=> b!2256074 (= lt!838660 (size!20953 lt!838655))))

(assert (=> b!2256074 (= lt!838656 (size!20953 otherP!12))))

(declare-fun lt!838658 () List!26852)

(assert (=> b!2256074 (= (_2!15663 lt!838652) lt!838658)))

(declare-fun lt!838671 () Unit!39674)

(declare-fun lemmaSamePrefixThenSameSuffix!994 (List!26852 List!26852 List!26852 List!26852 List!26852) Unit!39674)

(assert (=> b!2256074 (= lt!838671 (lemmaSamePrefixThenSameSuffix!994 lt!838655 (_2!15663 lt!838652) lt!838655 lt!838658 input!1722))))

(declare-fun getSuffix!1074 (List!26852 List!26852) List!26852)

(assert (=> b!2256074 (= lt!838658 (getSuffix!1074 input!1722 lt!838655))))

(declare-fun ++!6521 (List!26852 List!26852) List!26852)

(assert (=> b!2256074 (isPrefix!2239 lt!838655 (++!6521 lt!838655 (_2!15663 lt!838652)))))

(declare-fun lt!838669 () Unit!39674)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1484 (List!26852 List!26852) Unit!39674)

(assert (=> b!2256074 (= lt!838669 (lemmaConcatTwoListThenFirstIsPrefix!1484 lt!838655 (_2!15663 lt!838652)))))

(assert (=> b!2256074 (= lt!838655 (list!10293 (charsOf!2637 (h!32160 tokens!456))))))

(declare-fun b!2256062 () Bool)

(declare-fun tp!713036 () Bool)

(assert (=> b!2256062 (= e!1444125 (and tp!713036 (inv!36289 (tag!4739 (rule!6555 (h!32160 tokens!456)))) (inv!36293 (transformation!4249 (rule!6555 (h!32160 tokens!456)))) e!1444099))))

(declare-fun res!964353 () Bool)

(assert (=> start!220176 (=> (not res!964353) (not e!1444103))))

(get-info :version)

(assert (=> start!220176 (= res!964353 ((_ is Lexer!3844) thiss!16613))))

(assert (=> start!220176 e!1444103))

(assert (=> start!220176 true))

(assert (=> start!220176 e!1444127))

(assert (=> start!220176 e!1444123))

(declare-fun e!1444120 () Bool)

(assert (=> start!220176 e!1444120))

(assert (=> start!220176 e!1444095))

(declare-fun e!1444096 () Bool)

(assert (=> start!220176 e!1444096))

(declare-fun e!1444100 () Bool)

(assert (=> start!220176 e!1444100))

(assert (=> start!220176 e!1444102))

(declare-fun b!2256075 () Bool)

(declare-fun tp!713033 () Bool)

(assert (=> b!2256075 (= e!1444100 (and tp!713033 (inv!36289 (tag!4739 r!2363)) (inv!36293 (transformation!4249 r!2363)) e!1444098))))

(declare-fun b!2256076 () Bool)

(declare-fun res!964374 () Bool)

(assert (=> b!2256076 (=> (not res!964374) (not e!1444103))))

(assert (=> b!2256076 (= res!964374 (contains!4601 rules!1750 otherR!12))))

(declare-fun b!2256077 () Bool)

(assert (=> b!2256077 (= e!1444109 e!1444126)))

(declare-fun res!964361 () Bool)

(assert (=> b!2256077 (=> res!964361 e!1444126)))

(assert (=> b!2256077 (= res!964361 (not (isPrefix!2239 lt!838655 input!1722)))))

(declare-fun lt!838657 () Option!5225)

(declare-fun lt!838662 () Token!7976)

(assert (=> b!2256077 (= lt!838657 (Some!5224 (tuple2!26307 lt!838662 (_2!15663 lt!838652))))))

(declare-fun maxPrefixOneRule!1326 (LexerInterface!3846 Rule!8298 List!26852) Option!5225)

(assert (=> b!2256077 (= lt!838657 (maxPrefixOneRule!1326 thiss!16613 r!2363 input!1722))))

(declare-fun lt!838661 () BalanceConc!17020)

(declare-fun apply!6569 (TokenValueInjection!8362 BalanceConc!17020) TokenValue!4411)

(assert (=> b!2256077 (= lt!838662 (Token!7977 (apply!6569 (transformation!4249 r!2363) lt!838661) r!2363 lt!838660 lt!838655))))

(assert (=> b!2256077 (= lt!838661 (seqFromList!2953 lt!838655))))

(declare-fun lt!838668 () Unit!39674)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!567 (LexerInterface!3846 List!26854 List!26852 List!26852 List!26852 Rule!8298) Unit!39674)

(assert (=> b!2256077 (= lt!838668 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!567 thiss!16613 rules!1750 lt!838655 input!1722 (_2!15663 lt!838652) r!2363))))

(declare-fun b!2256078 () Bool)

(declare-fun e!1444117 () Bool)

(assert (=> b!2256078 (= e!1444126 e!1444117)))

(declare-fun res!964365 () Bool)

(assert (=> b!2256078 (=> res!964365 e!1444117)))

(declare-fun lt!838651 () Option!5225)

(assert (=> b!2256078 (= res!964365 (or (not (= lt!838657 lt!838651)) (<= lt!838656 lt!838660) (not (= lt!838665 lt!838651))))))

(assert (=> b!2256078 (= lt!838651 (Some!5224 (tuple2!26307 lt!838662 lt!838658)))))

(assert (=> b!2256078 (isPrefix!2239 input!1722 input!1722)))

(declare-fun lt!838653 () Unit!39674)

(declare-fun lemmaIsPrefixRefl!1445 (List!26852 List!26852) Unit!39674)

(assert (=> b!2256078 (= lt!838653 (lemmaIsPrefixRefl!1445 input!1722 input!1722))))

(declare-fun lt!838663 () Unit!39674)

(declare-fun lemmaSemiInverse!1014 (TokenValueInjection!8362 BalanceConc!17020) Unit!39674)

(assert (=> b!2256078 (= lt!838663 (lemmaSemiInverse!1014 (transformation!4249 r!2363) lt!838661))))

(declare-fun b!2256079 () Bool)

(declare-fun e!1444115 () Bool)

(declare-fun validRegex!2466 (Regex!6597) Bool)

(assert (=> b!2256079 (= e!1444115 (validRegex!2466 (regex!4249 otherR!12)))))

(declare-fun b!2256080 () Bool)

(declare-fun tp!713044 () Bool)

(assert (=> b!2256080 (= e!1444096 (and e!1444121 tp!713044))))

(declare-fun b!2256081 () Bool)

(declare-fun res!964355 () Bool)

(assert (=> b!2256081 (=> res!964355 e!1444115)))

(assert (=> b!2256081 (= res!964355 e!1444124)))

(declare-fun res!964352 () Bool)

(assert (=> b!2256081 (=> (not res!964352) (not e!1444124))))

(declare-fun size!20954 (List!26853) Int)

(assert (=> b!2256081 (= res!964352 (> (size!20954 tokens!456) 0))))

(declare-fun b!2256082 () Bool)

(declare-fun tp!713037 () Bool)

(assert (=> b!2256082 (= e!1444120 (and tp_is_empty!10415 tp!713037))))

(declare-fun b!2256083 () Bool)

(assert (=> b!2256083 (= e!1444107 e!1444110)))

(declare-fun res!964366 () Bool)

(assert (=> b!2256083 (=> res!964366 e!1444110)))

(declare-fun lt!838667 () Int)

(declare-fun lt!838672 () Int)

(assert (=> b!2256083 (= res!964366 (or (<= lt!838667 lt!838672) ((_ is Nil!26759) tokens!456)))))

(declare-fun getIndex!270 (List!26854 Rule!8298) Int)

(assert (=> b!2256083 (= lt!838672 (getIndex!270 rules!1750 otherR!12))))

(assert (=> b!2256083 (= lt!838667 (getIndex!270 rules!1750 r!2363))))

(assert (=> b!2256083 (ruleValid!1341 thiss!16613 otherR!12)))

(declare-fun lt!838670 () Unit!39674)

(assert (=> b!2256083 (= lt!838670 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!748 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2256084 () Bool)

(assert (=> b!2256084 (= e!1444111 e!1444106)))

(declare-fun res!964367 () Bool)

(assert (=> b!2256084 (=> (not res!964367) (not e!1444106))))

(assert (=> b!2256084 (= res!964367 e!1444114)))

(declare-fun res!964358 () Bool)

(assert (=> b!2256084 (=> res!964358 e!1444114)))

(assert (=> b!2256084 (= res!964358 lt!838666)))

(declare-fun isEmpty!15106 (List!26853) Bool)

(assert (=> b!2256084 (= lt!838666 (isEmpty!15106 tokens!456))))

(declare-fun b!2256085 () Bool)

(declare-fun res!964357 () Bool)

(assert (=> b!2256085 (=> (not res!964357) (not e!1444103))))

(declare-fun rulesInvariant!3348 (LexerInterface!3846 List!26854) Bool)

(assert (=> b!2256085 (= res!964357 (rulesInvariant!3348 thiss!16613 rules!1750))))

(declare-fun b!2256086 () Bool)

(assert (=> b!2256086 (= e!1444117 e!1444115)))

(declare-fun res!964368 () Bool)

(assert (=> b!2256086 (=> res!964368 e!1444115)))

(assert (=> b!2256086 (= res!964368 (< lt!838672 lt!838667))))

(assert (=> b!2256086 (not (matchR!2858 (regex!4249 otherR!12) otherP!12))))

(declare-fun lt!838664 () Unit!39674)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!276 (LexerInterface!3846 List!26854 Rule!8298 List!26852 List!26852 List!26852 Rule!8298) Unit!39674)

(assert (=> b!2256086 (= lt!838664 (lemmaMaxPrefixOutputsMaxPrefix!276 thiss!16613 rules!1750 r!2363 lt!838655 input!1722 otherP!12 otherR!12))))

(assert (=> b!2256087 (= e!1444119 (and tp!713043 tp!713047))))

(declare-fun b!2256088 () Bool)

(declare-fun res!964363 () Bool)

(assert (=> b!2256088 (=> (not res!964363) (not e!1444106))))

(assert (=> b!2256088 (= res!964363 e!1444097)))

(declare-fun res!964362 () Bool)

(assert (=> b!2256088 (=> res!964362 e!1444097)))

(assert (=> b!2256088 (= res!964362 lt!838666)))

(assert (= (and start!220176 res!964353) b!2256064))

(assert (= (and b!2256064 res!964360) b!2256085))

(assert (= (and b!2256085 res!964357) b!2256073))

(assert (= (and b!2256073 res!964364) b!2256076))

(assert (= (and b!2256076 res!964374) b!2256059))

(assert (= (and b!2256059 res!964359) b!2256084))

(assert (= (and b!2256084 (not res!964358)) b!2256056))

(assert (= (and b!2256084 res!964367) b!2256088))

(assert (= (and b!2256088 (not res!964362)) b!2256071))

(assert (= (and b!2256088 res!964363) b!2256070))

(assert (= (and b!2256070 res!964356) b!2256058))

(assert (= (and b!2256058 res!964373) b!2256072))

(assert (= (and b!2256072 res!964354) b!2256054))

(assert (= (and b!2256072 (not res!964369)) b!2256083))

(assert (= (and b!2256083 (not res!964366)) b!2256053))

(assert (= (and b!2256053 (not res!964371)) b!2256074))

(assert (= (and b!2256074 (not res!964372)) b!2256077))

(assert (= (and b!2256077 (not res!964361)) b!2256055))

(assert (= (and b!2256055 (not res!964370)) b!2256078))

(assert (= (and b!2256078 (not res!964365)) b!2256086))

(assert (= (and b!2256086 (not res!964368)) b!2256081))

(assert (= (and b!2256081 res!964352) b!2256052))

(assert (= (and b!2256081 (not res!964355)) b!2256079))

(assert (= (and start!220176 ((_ is Cons!26758) input!1722)) b!2256067))

(assert (= b!2256066 b!2256087))

(assert (= start!220176 b!2256066))

(assert (= (and start!220176 ((_ is Cons!26758) suffix!886)) b!2256082))

(assert (= (and start!220176 ((_ is Cons!26758) otherP!12)) b!2256063))

(assert (= b!2256068 b!2256057))

(assert (= b!2256080 b!2256068))

(assert (= (and start!220176 ((_ is Cons!26760) rules!1750)) b!2256080))

(assert (= b!2256075 b!2256060))

(assert (= start!220176 b!2256075))

(assert (= b!2256062 b!2256061))

(assert (= b!2256069 b!2256062))

(assert (= b!2256065 b!2256069))

(assert (= (and start!220176 ((_ is Cons!26759) tokens!456)) b!2256065))

(declare-fun m!2686513 () Bool)

(assert (=> b!2256081 m!2686513))

(declare-fun m!2686515 () Bool)

(assert (=> b!2256066 m!2686515))

(declare-fun m!2686517 () Bool)

(assert (=> b!2256066 m!2686517))

(declare-fun m!2686519 () Bool)

(assert (=> b!2256079 m!2686519))

(declare-fun m!2686521 () Bool)

(assert (=> b!2256056 m!2686521))

(assert (=> b!2256056 m!2686521))

(declare-fun m!2686523 () Bool)

(assert (=> b!2256056 m!2686523))

(assert (=> b!2256056 m!2686523))

(declare-fun m!2686525 () Bool)

(assert (=> b!2256056 m!2686525))

(declare-fun m!2686527 () Bool)

(assert (=> b!2256056 m!2686527))

(declare-fun m!2686529 () Bool)

(assert (=> b!2256086 m!2686529))

(declare-fun m!2686531 () Bool)

(assert (=> b!2256086 m!2686531))

(assert (=> b!2256052 m!2686521))

(assert (=> b!2256052 m!2686521))

(assert (=> b!2256052 m!2686523))

(assert (=> b!2256052 m!2686523))

(assert (=> b!2256052 m!2686525))

(declare-fun m!2686533 () Bool)

(assert (=> b!2256065 m!2686533))

(declare-fun m!2686535 () Bool)

(assert (=> b!2256077 m!2686535))

(declare-fun m!2686537 () Bool)

(assert (=> b!2256077 m!2686537))

(declare-fun m!2686539 () Bool)

(assert (=> b!2256077 m!2686539))

(declare-fun m!2686541 () Bool)

(assert (=> b!2256077 m!2686541))

(declare-fun m!2686543 () Bool)

(assert (=> b!2256077 m!2686543))

(declare-fun m!2686545 () Bool)

(assert (=> b!2256073 m!2686545))

(declare-fun m!2686547 () Bool)

(assert (=> b!2256074 m!2686547))

(declare-fun m!2686549 () Bool)

(assert (=> b!2256074 m!2686549))

(assert (=> b!2256074 m!2686527))

(declare-fun m!2686551 () Bool)

(assert (=> b!2256074 m!2686551))

(assert (=> b!2256074 m!2686549))

(declare-fun m!2686553 () Bool)

(assert (=> b!2256074 m!2686553))

(declare-fun m!2686555 () Bool)

(assert (=> b!2256074 m!2686555))

(declare-fun m!2686557 () Bool)

(assert (=> b!2256074 m!2686557))

(declare-fun m!2686559 () Bool)

(assert (=> b!2256074 m!2686559))

(assert (=> b!2256074 m!2686557))

(declare-fun m!2686561 () Bool)

(assert (=> b!2256074 m!2686561))

(declare-fun m!2686563 () Bool)

(assert (=> b!2256083 m!2686563))

(declare-fun m!2686565 () Bool)

(assert (=> b!2256083 m!2686565))

(declare-fun m!2686567 () Bool)

(assert (=> b!2256083 m!2686567))

(declare-fun m!2686569 () Bool)

(assert (=> b!2256083 m!2686569))

(assert (=> b!2256071 m!2686521))

(declare-fun m!2686571 () Bool)

(assert (=> b!2256068 m!2686571))

(declare-fun m!2686573 () Bool)

(assert (=> b!2256068 m!2686573))

(declare-fun m!2686575 () Bool)

(assert (=> b!2256069 m!2686575))

(declare-fun m!2686577 () Bool)

(assert (=> b!2256059 m!2686577))

(declare-fun m!2686579 () Bool)

(assert (=> b!2256059 m!2686579))

(declare-fun m!2686581 () Bool)

(assert (=> b!2256059 m!2686581))

(assert (=> b!2256059 m!2686581))

(declare-fun m!2686583 () Bool)

(assert (=> b!2256059 m!2686583))

(declare-fun m!2686585 () Bool)

(assert (=> b!2256085 m!2686585))

(declare-fun m!2686587 () Bool)

(assert (=> b!2256062 m!2686587))

(declare-fun m!2686589 () Bool)

(assert (=> b!2256062 m!2686589))

(declare-fun m!2686591 () Bool)

(assert (=> b!2256070 m!2686591))

(declare-fun m!2686593 () Bool)

(assert (=> b!2256084 m!2686593))

(assert (=> b!2256054 m!2686521))

(assert (=> b!2256054 m!2686521))

(assert (=> b!2256054 m!2686523))

(assert (=> b!2256054 m!2686523))

(declare-fun m!2686595 () Bool)

(assert (=> b!2256054 m!2686595))

(assert (=> b!2256054 m!2686595))

(declare-fun m!2686597 () Bool)

(assert (=> b!2256054 m!2686597))

(declare-fun m!2686599 () Bool)

(assert (=> b!2256055 m!2686599))

(declare-fun m!2686601 () Bool)

(assert (=> b!2256064 m!2686601))

(declare-fun m!2686603 () Bool)

(assert (=> b!2256076 m!2686603))

(declare-fun m!2686605 () Bool)

(assert (=> b!2256053 m!2686605))

(declare-fun m!2686607 () Bool)

(assert (=> b!2256053 m!2686607))

(declare-fun m!2686609 () Bool)

(assert (=> b!2256078 m!2686609))

(declare-fun m!2686611 () Bool)

(assert (=> b!2256078 m!2686611))

(declare-fun m!2686613 () Bool)

(assert (=> b!2256078 m!2686613))

(declare-fun m!2686615 () Bool)

(assert (=> b!2256072 m!2686615))

(declare-fun m!2686617 () Bool)

(assert (=> b!2256072 m!2686617))

(declare-fun m!2686619 () Bool)

(assert (=> b!2256075 m!2686619))

(declare-fun m!2686621 () Bool)

(assert (=> b!2256075 m!2686621))

(check-sat (not b_next!67055) (not b!2256066) (not b!2256073) tp_is_empty!10415 (not b!2256064) (not b!2256063) (not b!2256065) (not b!2256062) (not b_next!67065) (not b!2256070) b_and!177047 (not b!2256077) (not b!2256054) (not b!2256080) (not b_next!67059) (not b_next!67067) (not b!2256078) (not b_next!67061) b_and!177055 (not b!2256083) (not b!2256075) (not b!2256053) (not b!2256084) (not b_next!67053) (not b!2256085) (not b!2256074) (not b!2256052) (not b!2256079) (not b!2256082) (not b!2256086) (not b!2256076) (not b!2256081) b_and!177051 b_and!177041 (not b_next!67057) (not b!2256059) (not b!2256072) (not b!2256067) (not b!2256069) b_and!177045 (not b!2256071) b_and!177053 (not b!2256055) (not b!2256056) b_and!177049 (not b_next!67063) (not b!2256068) b_and!177043)
(check-sat (not b_next!67055) (not b_next!67053) (not b_next!67065) b_and!177047 b_and!177045 b_and!177053 b_and!177049 (not b_next!67059) (not b_next!67067) (not b_next!67061) b_and!177055 b_and!177051 b_and!177041 (not b_next!67057) (not b_next!67063) b_and!177043)
