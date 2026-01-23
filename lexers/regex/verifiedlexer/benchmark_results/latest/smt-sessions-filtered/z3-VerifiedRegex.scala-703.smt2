; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28858 () Bool)

(assert start!28858)

(declare-fun b!268967 () Bool)

(declare-fun b_free!9993 () Bool)

(declare-fun b_next!9993 () Bool)

(assert (=> b!268967 (= b_free!9993 (not b_next!9993))))

(declare-fun tp!102279 () Bool)

(declare-fun b_and!21349 () Bool)

(assert (=> b!268967 (= tp!102279 b_and!21349)))

(declare-fun b_free!9995 () Bool)

(declare-fun b_next!9995 () Bool)

(assert (=> b!268967 (= b_free!9995 (not b_next!9995))))

(declare-fun tp!102285 () Bool)

(declare-fun b_and!21351 () Bool)

(assert (=> b!268967 (= tp!102285 b_and!21351)))

(declare-fun b!268971 () Bool)

(declare-fun b_free!9997 () Bool)

(declare-fun b_next!9997 () Bool)

(assert (=> b!268971 (= b_free!9997 (not b_next!9997))))

(declare-fun tp!102287 () Bool)

(declare-fun b_and!21353 () Bool)

(assert (=> b!268971 (= tp!102287 b_and!21353)))

(declare-fun b_free!9999 () Bool)

(declare-fun b_next!9999 () Bool)

(assert (=> b!268971 (= b_free!9999 (not b_next!9999))))

(declare-fun tp!102278 () Bool)

(declare-fun b_and!21355 () Bool)

(assert (=> b!268971 (= tp!102278 b_and!21355)))

(declare-fun b!268959 () Bool)

(declare-fun b_free!10001 () Bool)

(declare-fun b_next!10001 () Bool)

(assert (=> b!268959 (= b_free!10001 (not b_next!10001))))

(declare-fun tp!102286 () Bool)

(declare-fun b_and!21357 () Bool)

(assert (=> b!268959 (= tp!102286 b_and!21357)))

(declare-fun b_free!10003 () Bool)

(declare-fun b_next!10003 () Bool)

(assert (=> b!268959 (= b_free!10003 (not b_next!10003))))

(declare-fun tp!102284 () Bool)

(declare-fun b_and!21359 () Bool)

(assert (=> b!268959 (= tp!102284 b_and!21359)))

(declare-datatypes ((C!2828 0))(
  ( (C!2829 (val!1300 Int)) )
))
(declare-datatypes ((List!3827 0))(
  ( (Nil!3817) (Cons!3817 (h!9214 C!2828) (t!38153 List!3827)) )
))
(declare-fun lt!110396 () List!3827)

(declare-fun b!268951 () Bool)

(declare-fun e!167096 () Bool)

(declare-fun lt!110403 () List!3827)

(declare-fun lt!110402 () List!3827)

(declare-fun ++!994 (List!3827 List!3827) List!3827)

(assert (=> b!268951 (= e!167096 (not (= lt!110402 (++!994 lt!110396 lt!110403))))))

(declare-datatypes ((List!3828 0))(
  ( (Nil!3818) (Cons!3818 (h!9215 (_ BitVec 16)) (t!38154 List!3828)) )
))
(declare-datatypes ((TokenValue!751 0))(
  ( (FloatLiteralValue!1502 (text!5702 List!3828)) (TokenValueExt!750 (__x!2989 Int)) (Broken!3755 (value!25066 List!3828)) (Object!760) (End!751) (Def!751) (Underscore!751) (Match!751) (Else!751) (Error!751) (Case!751) (If!751) (Extends!751) (Abstract!751) (Class!751) (Val!751) (DelimiterValue!1502 (del!811 List!3828)) (KeywordValue!757 (value!25067 List!3828)) (CommentValue!1502 (value!25068 List!3828)) (WhitespaceValue!1502 (value!25069 List!3828)) (IndentationValue!751 (value!25070 List!3828)) (String!4834) (Int32!751) (Broken!3756 (value!25071 List!3828)) (Boolean!752) (Unit!4873) (OperatorValue!754 (op!811 List!3828)) (IdentifierValue!1502 (value!25072 List!3828)) (IdentifierValue!1503 (value!25073 List!3828)) (WhitespaceValue!1503 (value!25074 List!3828)) (True!1502) (False!1502) (Broken!3757 (value!25075 List!3828)) (Broken!3758 (value!25076 List!3828)) (True!1503) (RightBrace!751) (RightBracket!751) (Colon!751) (Null!751) (Comma!751) (LeftBracket!751) (False!1503) (LeftBrace!751) (ImaginaryLiteralValue!751 (text!5703 List!3828)) (StringLiteralValue!2253 (value!25077 List!3828)) (EOFValue!751 (value!25078 List!3828)) (IdentValue!751 (value!25079 List!3828)) (DelimiterValue!1503 (value!25080 List!3828)) (DedentValue!751 (value!25081 List!3828)) (NewLineValue!751 (value!25082 List!3828)) (IntegerValue!2253 (value!25083 (_ BitVec 32)) (text!5704 List!3828)) (IntegerValue!2254 (value!25084 Int) (text!5705 List!3828)) (Times!751) (Or!751) (Equal!751) (Minus!751) (Broken!3759 (value!25085 List!3828)) (And!751) (Div!751) (LessEqual!751) (Mod!751) (Concat!1704) (Not!751) (Plus!751) (SpaceValue!751 (value!25086 List!3828)) (IntegerValue!2255 (value!25087 Int) (text!5706 List!3828)) (StringLiteralValue!2254 (text!5707 List!3828)) (FloatLiteralValue!1503 (text!5708 List!3828)) (BytesLiteralValue!751 (value!25088 List!3828)) (CommentValue!1503 (value!25089 List!3828)) (StringLiteralValue!2255 (value!25090 List!3828)) (ErrorTokenValue!751 (msg!812 List!3828)) )
))
(declare-datatypes ((IArray!2561 0))(
  ( (IArray!2562 (innerList!1338 List!3827)) )
))
(declare-datatypes ((Conc!1280 0))(
  ( (Node!1280 (left!3139 Conc!1280) (right!3469 Conc!1280) (csize!2790 Int) (cheight!1491 Int)) (Leaf!1984 (xs!3879 IArray!2561) (csize!2791 Int)) (Empty!1280) )
))
(declare-datatypes ((BalanceConc!2568 0))(
  ( (BalanceConc!2569 (c!50914 Conc!1280)) )
))
(declare-datatypes ((Regex!953 0))(
  ( (ElementMatch!953 (c!50915 C!2828)) (Concat!1705 (regOne!2418 Regex!953) (regTwo!2418 Regex!953)) (EmptyExpr!953) (Star!953 (reg!1282 Regex!953)) (EmptyLang!953) (Union!953 (regOne!2419 Regex!953) (regTwo!2419 Regex!953)) )
))
(declare-datatypes ((String!4835 0))(
  ( (String!4836 (value!25091 String)) )
))
(declare-datatypes ((TokenValueInjection!1274 0))(
  ( (TokenValueInjection!1275 (toValue!1464 Int) (toChars!1323 Int)) )
))
(declare-datatypes ((Rule!1258 0))(
  ( (Rule!1259 (regex!729 Regex!953) (tag!939 String!4835) (isSeparator!729 Bool) (transformation!729 TokenValueInjection!1274)) )
))
(declare-datatypes ((Token!1202 0))(
  ( (Token!1203 (value!25092 TokenValue!751) (rule!1314 Rule!1258) (size!3037 Int) (originalCharacters!772 List!3827)) )
))
(declare-datatypes ((List!3829 0))(
  ( (Nil!3819) (Cons!3819 (h!9216 Token!1202) (t!38155 List!3829)) )
))
(declare-fun tokens!465 () List!3829)

(declare-fun b!268952 () Bool)

(declare-fun e!167097 () Bool)

(declare-fun tp!102280 () Bool)

(declare-fun e!167101 () Bool)

(declare-fun inv!4721 (Token!1202) Bool)

(assert (=> b!268952 (= e!167097 (and (inv!4721 (h!9216 tokens!465)) e!167101 tp!102280))))

(declare-fun tp!102281 () Bool)

(declare-fun e!167088 () Bool)

(declare-fun separatorToken!170 () Token!1202)

(declare-fun e!167093 () Bool)

(declare-fun b!268953 () Bool)

(declare-fun inv!4718 (String!4835) Bool)

(declare-fun inv!4722 (TokenValueInjection!1274) Bool)

(assert (=> b!268953 (= e!167093 (and tp!102281 (inv!4718 (tag!939 (rule!1314 separatorToken!170))) (inv!4722 (transformation!729 (rule!1314 separatorToken!170))) e!167088))))

(declare-fun b!268954 () Bool)

(declare-fun res!123050 () Bool)

(declare-fun e!167103 () Bool)

(assert (=> b!268954 (=> (not res!123050) (not e!167103))))

(declare-fun lambda!9080 () Int)

(declare-fun forall!956 (List!3829 Int) Bool)

(assert (=> b!268954 (= res!123050 (forall!956 tokens!465 lambda!9080))))

(declare-fun e!167106 () Bool)

(declare-fun tp!102275 () Bool)

(declare-fun b!268955 () Bool)

(declare-fun e!167099 () Bool)

(assert (=> b!268955 (= e!167106 (and tp!102275 (inv!4718 (tag!939 (rule!1314 (h!9216 tokens!465)))) (inv!4722 (transformation!729 (rule!1314 (h!9216 tokens!465)))) e!167099))))

(declare-fun b!268956 () Bool)

(declare-fun res!123044 () Bool)

(assert (=> b!268956 (=> (not res!123044) (not e!167103))))

(assert (=> b!268956 (= res!123044 (isSeparator!729 (rule!1314 separatorToken!170)))))

(declare-fun b!268957 () Bool)

(declare-fun res!123054 () Bool)

(declare-fun e!167108 () Bool)

(assert (=> b!268957 (=> (not res!123054) (not e!167108))))

(declare-datatypes ((List!3830 0))(
  ( (Nil!3820) (Cons!3820 (h!9217 Rule!1258) (t!38156 List!3830)) )
))
(declare-fun rules!1920 () List!3830)

(declare-fun isEmpty!2413 (List!3830) Bool)

(assert (=> b!268957 (= res!123054 (not (isEmpty!2413 rules!1920)))))

(declare-fun b!268958 () Bool)

(declare-fun res!123039 () Bool)

(declare-fun e!167105 () Bool)

(assert (=> b!268958 (=> res!123039 e!167105)))

(declare-datatypes ((LexerInterface!615 0))(
  ( (LexerInterfaceExt!612 (__x!2990 Int)) (Lexer!613) )
))
(declare-fun thiss!17480 () LexerInterface!615)

(declare-fun rulesProduceIndividualToken!364 (LexerInterface!615 List!3830 Token!1202) Bool)

(assert (=> b!268958 (= res!123039 (not (rulesProduceIndividualToken!364 thiss!17480 rules!1920 (h!9216 tokens!465))))))

(assert (=> b!268959 (= e!167088 (and tp!102286 tp!102284))))

(declare-fun b!268960 () Bool)

(declare-datatypes ((IArray!2563 0))(
  ( (IArray!2564 (innerList!1339 List!3829)) )
))
(declare-datatypes ((Conc!1281 0))(
  ( (Node!1281 (left!3140 Conc!1281) (right!3470 Conc!1281) (csize!2792 Int) (cheight!1492 Int)) (Leaf!1985 (xs!3880 IArray!2563) (csize!2793 Int)) (Empty!1281) )
))
(declare-datatypes ((BalanceConc!2570 0))(
  ( (BalanceConc!2571 (c!50916 Conc!1281)) )
))
(declare-fun isEmpty!2414 (BalanceConc!2570) Bool)

(declare-datatypes ((tuple2!4274 0))(
  ( (tuple2!4275 (_1!2353 BalanceConc!2570) (_2!2353 BalanceConc!2568)) )
))
(declare-fun lex!407 (LexerInterface!615 List!3830 BalanceConc!2568) tuple2!4274)

(declare-fun seqFromList!825 (List!3827) BalanceConc!2568)

(assert (=> b!268960 (= e!167105 (not (isEmpty!2414 (_1!2353 (lex!407 thiss!17480 rules!1920 (seqFromList!825 lt!110396))))))))

(declare-fun res!123053 () Bool)

(assert (=> start!28858 (=> (not res!123053) (not e!167108))))

(get-info :version)

(assert (=> start!28858 (= res!123053 ((_ is Lexer!613) thiss!17480))))

(assert (=> start!28858 e!167108))

(assert (=> start!28858 true))

(declare-fun e!167095 () Bool)

(assert (=> start!28858 e!167095))

(declare-fun e!167104 () Bool)

(assert (=> start!28858 (and (inv!4721 separatorToken!170) e!167104)))

(assert (=> start!28858 e!167097))

(declare-fun b!268961 () Bool)

(declare-fun res!123048 () Bool)

(assert (=> b!268961 (=> (not res!123048) (not e!167103))))

(declare-fun sepAndNonSepRulesDisjointChars!318 (List!3830 List!3830) Bool)

(assert (=> b!268961 (= res!123048 (sepAndNonSepRulesDisjointChars!318 rules!1920 rules!1920))))

(declare-fun b!268962 () Bool)

(declare-fun e!167091 () Bool)

(assert (=> b!268962 (= e!167091 e!167105)))

(declare-fun res!123043 () Bool)

(assert (=> b!268962 (=> res!123043 e!167105)))

(declare-fun lt!110391 () List!3827)

(declare-fun lt!110404 () List!3827)

(assert (=> b!268962 (= res!123043 (or (not (= lt!110391 lt!110404)) (not (= lt!110404 lt!110396)) (not (= lt!110391 lt!110396))))))

(declare-fun printList!291 (LexerInterface!615 List!3829) List!3827)

(assert (=> b!268962 (= lt!110404 (printList!291 thiss!17480 (Cons!3819 (h!9216 tokens!465) Nil!3819)))))

(declare-fun lt!110392 () BalanceConc!2568)

(declare-fun list!1557 (BalanceConc!2568) List!3827)

(assert (=> b!268962 (= lt!110391 (list!1557 lt!110392))))

(declare-fun lt!110399 () BalanceConc!2570)

(declare-fun printTailRec!303 (LexerInterface!615 BalanceConc!2570 Int BalanceConc!2568) BalanceConc!2568)

(assert (=> b!268962 (= lt!110392 (printTailRec!303 thiss!17480 lt!110399 0 (BalanceConc!2569 Empty!1280)))))

(declare-fun print!340 (LexerInterface!615 BalanceConc!2570) BalanceConc!2568)

(assert (=> b!268962 (= lt!110392 (print!340 thiss!17480 lt!110399))))

(declare-fun singletonSeq!275 (Token!1202) BalanceConc!2570)

(assert (=> b!268962 (= lt!110399 (singletonSeq!275 (h!9216 tokens!465)))))

(declare-fun b!268963 () Bool)

(assert (=> b!268963 (= e!167108 e!167103)))

(declare-fun res!123046 () Bool)

(assert (=> b!268963 (=> (not res!123046) (not e!167103))))

(declare-fun lt!110395 () BalanceConc!2570)

(declare-fun rulesProduceEachTokenIndividually!407 (LexerInterface!615 List!3830 BalanceConc!2570) Bool)

(assert (=> b!268963 (= res!123046 (rulesProduceEachTokenIndividually!407 thiss!17480 rules!1920 lt!110395))))

(declare-fun seqFromList!826 (List!3829) BalanceConc!2570)

(assert (=> b!268963 (= lt!110395 (seqFromList!826 tokens!465))))

(declare-fun b!268964 () Bool)

(declare-fun res!123045 () Bool)

(assert (=> b!268964 (=> (not res!123045) (not e!167103))))

(assert (=> b!268964 (= res!123045 ((_ is Cons!3819) tokens!465))))

(declare-fun b!268965 () Bool)

(declare-fun res!123040 () Bool)

(declare-fun e!167100 () Bool)

(assert (=> b!268965 (=> (not res!123040) (not e!167100))))

(declare-fun lt!110400 () List!3827)

(assert (=> b!268965 (= res!123040 (= (list!1557 (seqFromList!825 lt!110402)) lt!110400))))

(declare-fun tp!102283 () Bool)

(declare-fun b!268966 () Bool)

(declare-fun inv!21 (TokenValue!751) Bool)

(assert (=> b!268966 (= e!167104 (and (inv!21 (value!25092 separatorToken!170)) e!167093 tp!102283))))

(assert (=> b!268967 (= e!167099 (and tp!102279 tp!102285))))

(declare-fun tp!102282 () Bool)

(declare-fun b!268968 () Bool)

(assert (=> b!268968 (= e!167101 (and (inv!21 (value!25092 (h!9216 tokens!465))) e!167106 tp!102282))))

(declare-fun b!268969 () Bool)

(assert (=> b!268969 (= e!167100 (not e!167091))))

(declare-fun res!123042 () Bool)

(assert (=> b!268969 (=> res!123042 e!167091)))

(declare-fun printWithSeparatorTokenWhenNeededRec!290 (LexerInterface!615 List!3830 BalanceConc!2570 Token!1202 Int) BalanceConc!2568)

(assert (=> b!268969 (= res!123042 (not (= lt!110403 (list!1557 (printWithSeparatorTokenWhenNeededRec!290 thiss!17480 rules!1920 (seqFromList!826 (t!38155 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!110397 () List!3827)

(declare-fun lt!110393 () List!3827)

(assert (=> b!268969 (= lt!110397 lt!110393)))

(declare-fun lt!110398 () List!3827)

(assert (=> b!268969 (= lt!110393 (++!994 lt!110396 lt!110398))))

(declare-fun lt!110394 () List!3827)

(assert (=> b!268969 (= lt!110397 (++!994 (++!994 lt!110396 lt!110394) lt!110403))))

(declare-datatypes ((Unit!4874 0))(
  ( (Unit!4875) )
))
(declare-fun lt!110401 () Unit!4874)

(declare-fun lemmaConcatAssociativity!426 (List!3827 List!3827 List!3827) Unit!4874)

(assert (=> b!268969 (= lt!110401 (lemmaConcatAssociativity!426 lt!110396 lt!110394 lt!110403))))

(declare-fun charsOf!374 (Token!1202) BalanceConc!2568)

(assert (=> b!268969 (= lt!110396 (list!1557 (charsOf!374 (h!9216 tokens!465))))))

(assert (=> b!268969 (= lt!110398 (++!994 lt!110394 lt!110403))))

(declare-fun printWithSeparatorTokenWhenNeededList!298 (LexerInterface!615 List!3830 List!3829 Token!1202) List!3827)

(assert (=> b!268969 (= lt!110403 (printWithSeparatorTokenWhenNeededList!298 thiss!17480 rules!1920 (t!38155 tokens!465) separatorToken!170))))

(assert (=> b!268969 (= lt!110394 (list!1557 (charsOf!374 separatorToken!170)))))

(declare-fun b!268970 () Bool)

(declare-fun e!167098 () Bool)

(declare-fun e!167089 () Bool)

(declare-fun tp!102276 () Bool)

(assert (=> b!268970 (= e!167089 (and tp!102276 (inv!4718 (tag!939 (h!9217 rules!1920))) (inv!4722 (transformation!729 (h!9217 rules!1920))) e!167098))))

(assert (=> b!268971 (= e!167098 (and tp!102287 tp!102278))))

(declare-fun b!268972 () Bool)

(assert (=> b!268972 (= e!167103 e!167100)))

(declare-fun res!123041 () Bool)

(assert (=> b!268972 (=> (not res!123041) (not e!167100))))

(assert (=> b!268972 (= res!123041 (= lt!110402 lt!110400))))

(assert (=> b!268972 (= lt!110400 (list!1557 (printWithSeparatorTokenWhenNeededRec!290 thiss!17480 rules!1920 lt!110395 separatorToken!170 0)))))

(assert (=> b!268972 (= lt!110402 (printWithSeparatorTokenWhenNeededList!298 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!268973 () Bool)

(declare-fun res!123051 () Bool)

(assert (=> b!268973 (=> res!123051 e!167091)))

(assert (=> b!268973 (= res!123051 e!167096)))

(declare-fun res!123049 () Bool)

(assert (=> b!268973 (=> (not res!123049) (not e!167096))))

(assert (=> b!268973 (= res!123049 (not (= lt!110402 lt!110393)))))

(declare-fun b!268974 () Bool)

(declare-fun tp!102277 () Bool)

(assert (=> b!268974 (= e!167095 (and e!167089 tp!102277))))

(declare-fun b!268975 () Bool)

(declare-fun res!123047 () Bool)

(assert (=> b!268975 (=> (not res!123047) (not e!167108))))

(declare-fun rulesInvariant!581 (LexerInterface!615 List!3830) Bool)

(assert (=> b!268975 (= res!123047 (rulesInvariant!581 thiss!17480 rules!1920))))

(declare-fun b!268976 () Bool)

(declare-fun res!123052 () Bool)

(assert (=> b!268976 (=> (not res!123052) (not e!167103))))

(assert (=> b!268976 (= res!123052 (rulesProduceIndividualToken!364 thiss!17480 rules!1920 separatorToken!170))))

(assert (= (and start!28858 res!123053) b!268957))

(assert (= (and b!268957 res!123054) b!268975))

(assert (= (and b!268975 res!123047) b!268963))

(assert (= (and b!268963 res!123046) b!268976))

(assert (= (and b!268976 res!123052) b!268956))

(assert (= (and b!268956 res!123044) b!268954))

(assert (= (and b!268954 res!123050) b!268961))

(assert (= (and b!268961 res!123048) b!268964))

(assert (= (and b!268964 res!123045) b!268972))

(assert (= (and b!268972 res!123041) b!268965))

(assert (= (and b!268965 res!123040) b!268969))

(assert (= (and b!268969 (not res!123042)) b!268973))

(assert (= (and b!268973 res!123049) b!268951))

(assert (= (and b!268973 (not res!123051)) b!268962))

(assert (= (and b!268962 (not res!123043)) b!268958))

(assert (= (and b!268958 (not res!123039)) b!268960))

(assert (= b!268970 b!268971))

(assert (= b!268974 b!268970))

(assert (= (and start!28858 ((_ is Cons!3820) rules!1920)) b!268974))

(assert (= b!268953 b!268959))

(assert (= b!268966 b!268953))

(assert (= start!28858 b!268966))

(assert (= b!268955 b!268967))

(assert (= b!268968 b!268955))

(assert (= b!268952 b!268968))

(assert (= (and start!28858 ((_ is Cons!3819) tokens!465)) b!268952))

(declare-fun m!338933 () Bool)

(assert (=> start!28858 m!338933))

(declare-fun m!338935 () Bool)

(assert (=> b!268969 m!338935))

(declare-fun m!338937 () Bool)

(assert (=> b!268969 m!338937))

(declare-fun m!338939 () Bool)

(assert (=> b!268969 m!338939))

(declare-fun m!338941 () Bool)

(assert (=> b!268969 m!338941))

(assert (=> b!268969 m!338937))

(declare-fun m!338943 () Bool)

(assert (=> b!268969 m!338943))

(declare-fun m!338945 () Bool)

(assert (=> b!268969 m!338945))

(declare-fun m!338947 () Bool)

(assert (=> b!268969 m!338947))

(declare-fun m!338949 () Bool)

(assert (=> b!268969 m!338949))

(declare-fun m!338951 () Bool)

(assert (=> b!268969 m!338951))

(assert (=> b!268969 m!338945))

(assert (=> b!268969 m!338943))

(declare-fun m!338953 () Bool)

(assert (=> b!268969 m!338953))

(declare-fun m!338955 () Bool)

(assert (=> b!268969 m!338955))

(declare-fun m!338957 () Bool)

(assert (=> b!268969 m!338957))

(declare-fun m!338959 () Bool)

(assert (=> b!268969 m!338959))

(assert (=> b!268969 m!338949))

(assert (=> b!268969 m!338955))

(declare-fun m!338961 () Bool)

(assert (=> b!268952 m!338961))

(declare-fun m!338963 () Bool)

(assert (=> b!268958 m!338963))

(declare-fun m!338965 () Bool)

(assert (=> b!268957 m!338965))

(declare-fun m!338967 () Bool)

(assert (=> b!268962 m!338967))

(declare-fun m!338969 () Bool)

(assert (=> b!268962 m!338969))

(declare-fun m!338971 () Bool)

(assert (=> b!268962 m!338971))

(declare-fun m!338973 () Bool)

(assert (=> b!268962 m!338973))

(declare-fun m!338975 () Bool)

(assert (=> b!268962 m!338975))

(declare-fun m!338977 () Bool)

(assert (=> b!268968 m!338977))

(declare-fun m!338979 () Bool)

(assert (=> b!268970 m!338979))

(declare-fun m!338981 () Bool)

(assert (=> b!268970 m!338981))

(declare-fun m!338983 () Bool)

(assert (=> b!268955 m!338983))

(declare-fun m!338985 () Bool)

(assert (=> b!268955 m!338985))

(declare-fun m!338987 () Bool)

(assert (=> b!268963 m!338987))

(declare-fun m!338989 () Bool)

(assert (=> b!268963 m!338989))

(declare-fun m!338991 () Bool)

(assert (=> b!268965 m!338991))

(assert (=> b!268965 m!338991))

(declare-fun m!338993 () Bool)

(assert (=> b!268965 m!338993))

(declare-fun m!338995 () Bool)

(assert (=> b!268951 m!338995))

(declare-fun m!338997 () Bool)

(assert (=> b!268954 m!338997))

(declare-fun m!338999 () Bool)

(assert (=> b!268966 m!338999))

(declare-fun m!339001 () Bool)

(assert (=> b!268960 m!339001))

(assert (=> b!268960 m!339001))

(declare-fun m!339003 () Bool)

(assert (=> b!268960 m!339003))

(declare-fun m!339005 () Bool)

(assert (=> b!268960 m!339005))

(declare-fun m!339007 () Bool)

(assert (=> b!268972 m!339007))

(assert (=> b!268972 m!339007))

(declare-fun m!339009 () Bool)

(assert (=> b!268972 m!339009))

(declare-fun m!339011 () Bool)

(assert (=> b!268972 m!339011))

(declare-fun m!339013 () Bool)

(assert (=> b!268961 m!339013))

(declare-fun m!339015 () Bool)

(assert (=> b!268953 m!339015))

(declare-fun m!339017 () Bool)

(assert (=> b!268953 m!339017))

(declare-fun m!339019 () Bool)

(assert (=> b!268976 m!339019))

(declare-fun m!339021 () Bool)

(assert (=> b!268975 m!339021))

(check-sat (not b_next!9995) (not b!268955) (not b!268972) b_and!21359 (not b_next!9999) b_and!21355 (not b!268953) (not b_next!10001) (not b!268962) (not b!268976) b_and!21351 (not start!28858) (not b!268968) (not b!268965) (not b!268954) (not b_next!9993) (not b!268970) (not b!268974) (not b!268975) (not b!268960) (not b!268952) (not b!268951) (not b!268966) (not b!268958) (not b_next!10003) (not b!268969) (not b_next!9997) b_and!21349 b_and!21353 (not b!268957) (not b!268963) b_and!21357 (not b!268961))
(check-sat (not b_next!9995) (not b_next!9993) b_and!21359 (not b_next!9999) b_and!21355 (not b_next!10001) (not b_next!10003) b_and!21351 b_and!21357 (not b_next!9997) b_and!21349 b_and!21353)
(get-model)

(declare-fun d!77972 () Bool)

(declare-fun lt!110410 () Bool)

(declare-fun isEmpty!2417 (List!3829) Bool)

(declare-fun list!1560 (BalanceConc!2570) List!3829)

(assert (=> d!77972 (= lt!110410 (isEmpty!2417 (list!1560 (_1!2353 (lex!407 thiss!17480 rules!1920 (seqFromList!825 lt!110396))))))))

(declare-fun isEmpty!2418 (Conc!1281) Bool)

(assert (=> d!77972 (= lt!110410 (isEmpty!2418 (c!50916 (_1!2353 (lex!407 thiss!17480 rules!1920 (seqFromList!825 lt!110396))))))))

(assert (=> d!77972 (= (isEmpty!2414 (_1!2353 (lex!407 thiss!17480 rules!1920 (seqFromList!825 lt!110396)))) lt!110410)))

(declare-fun bs!29774 () Bool)

(assert (= bs!29774 d!77972))

(declare-fun m!339037 () Bool)

(assert (=> bs!29774 m!339037))

(assert (=> bs!29774 m!339037))

(declare-fun m!339039 () Bool)

(assert (=> bs!29774 m!339039))

(declare-fun m!339041 () Bool)

(assert (=> bs!29774 m!339041))

(assert (=> b!268960 d!77972))

(declare-fun b!269024 () Bool)

(declare-fun e!167142 () Bool)

(declare-fun e!167140 () Bool)

(assert (=> b!269024 (= e!167142 e!167140)))

(declare-fun res!123088 () Bool)

(declare-fun lt!110416 () tuple2!4274)

(declare-fun size!3040 (BalanceConc!2568) Int)

(assert (=> b!269024 (= res!123088 (< (size!3040 (_2!2353 lt!110416)) (size!3040 (seqFromList!825 lt!110396))))))

(assert (=> b!269024 (=> (not res!123088) (not e!167140))))

(declare-fun b!269025 () Bool)

(declare-fun e!167141 () Bool)

(declare-datatypes ((tuple2!4282 0))(
  ( (tuple2!4283 (_1!2357 List!3829) (_2!2357 List!3827)) )
))
(declare-fun lexList!207 (LexerInterface!615 List!3830 List!3827) tuple2!4282)

(assert (=> b!269025 (= e!167141 (= (list!1557 (_2!2353 lt!110416)) (_2!2357 (lexList!207 thiss!17480 rules!1920 (list!1557 (seqFromList!825 lt!110396))))))))

(declare-fun b!269026 () Bool)

(assert (=> b!269026 (= e!167142 (= (_2!2353 lt!110416) (seqFromList!825 lt!110396)))))

(declare-fun d!77976 () Bool)

(assert (=> d!77976 e!167141))

(declare-fun res!123089 () Bool)

(assert (=> d!77976 (=> (not res!123089) (not e!167141))))

(assert (=> d!77976 (= res!123089 e!167142)))

(declare-fun c!50928 () Bool)

(declare-fun size!3041 (BalanceConc!2570) Int)

(assert (=> d!77976 (= c!50928 (> (size!3041 (_1!2353 lt!110416)) 0))))

(declare-fun lexTailRecV2!174 (LexerInterface!615 List!3830 BalanceConc!2568 BalanceConc!2568 BalanceConc!2568 BalanceConc!2570) tuple2!4274)

(assert (=> d!77976 (= lt!110416 (lexTailRecV2!174 thiss!17480 rules!1920 (seqFromList!825 lt!110396) (BalanceConc!2569 Empty!1280) (seqFromList!825 lt!110396) (BalanceConc!2571 Empty!1281)))))

(assert (=> d!77976 (= (lex!407 thiss!17480 rules!1920 (seqFromList!825 lt!110396)) lt!110416)))

(declare-fun b!269027 () Bool)

(declare-fun res!123090 () Bool)

(assert (=> b!269027 (=> (not res!123090) (not e!167141))))

(assert (=> b!269027 (= res!123090 (= (list!1560 (_1!2353 lt!110416)) (_1!2357 (lexList!207 thiss!17480 rules!1920 (list!1557 (seqFromList!825 lt!110396))))))))

(declare-fun b!269028 () Bool)

(assert (=> b!269028 (= e!167140 (not (isEmpty!2414 (_1!2353 lt!110416))))))

(assert (= (and d!77976 c!50928) b!269024))

(assert (= (and d!77976 (not c!50928)) b!269026))

(assert (= (and b!269024 res!123088) b!269028))

(assert (= (and d!77976 res!123089) b!269027))

(assert (= (and b!269027 res!123090) b!269025))

(declare-fun m!339075 () Bool)

(assert (=> b!269025 m!339075))

(assert (=> b!269025 m!339001))

(declare-fun m!339077 () Bool)

(assert (=> b!269025 m!339077))

(assert (=> b!269025 m!339077))

(declare-fun m!339079 () Bool)

(assert (=> b!269025 m!339079))

(declare-fun m!339081 () Bool)

(assert (=> d!77976 m!339081))

(assert (=> d!77976 m!339001))

(assert (=> d!77976 m!339001))

(declare-fun m!339083 () Bool)

(assert (=> d!77976 m!339083))

(declare-fun m!339085 () Bool)

(assert (=> b!269024 m!339085))

(assert (=> b!269024 m!339001))

(declare-fun m!339087 () Bool)

(assert (=> b!269024 m!339087))

(declare-fun m!339089 () Bool)

(assert (=> b!269028 m!339089))

(declare-fun m!339091 () Bool)

(assert (=> b!269027 m!339091))

(assert (=> b!269027 m!339001))

(assert (=> b!269027 m!339077))

(assert (=> b!269027 m!339077))

(assert (=> b!269027 m!339079))

(assert (=> b!268960 d!77976))

(declare-fun d!77988 () Bool)

(declare-fun fromListB!315 (List!3827) BalanceConc!2568)

(assert (=> d!77988 (= (seqFromList!825 lt!110396) (fromListB!315 lt!110396))))

(declare-fun bs!29777 () Bool)

(assert (= bs!29777 d!77988))

(declare-fun m!339093 () Bool)

(assert (=> bs!29777 m!339093))

(assert (=> b!268960 d!77988))

(declare-fun d!77990 () Bool)

(assert (=> d!77990 (= (inv!4718 (tag!939 (h!9217 rules!1920))) (= (mod (str.len (value!25091 (tag!939 (h!9217 rules!1920)))) 2) 0))))

(assert (=> b!268970 d!77990))

(declare-fun d!77992 () Bool)

(declare-fun res!123093 () Bool)

(declare-fun e!167145 () Bool)

(assert (=> d!77992 (=> (not res!123093) (not e!167145))))

(declare-fun semiInverseModEq!257 (Int Int) Bool)

(assert (=> d!77992 (= res!123093 (semiInverseModEq!257 (toChars!1323 (transformation!729 (h!9217 rules!1920))) (toValue!1464 (transformation!729 (h!9217 rules!1920)))))))

(assert (=> d!77992 (= (inv!4722 (transformation!729 (h!9217 rules!1920))) e!167145)))

(declare-fun b!269031 () Bool)

(declare-fun equivClasses!240 (Int Int) Bool)

(assert (=> b!269031 (= e!167145 (equivClasses!240 (toChars!1323 (transformation!729 (h!9217 rules!1920))) (toValue!1464 (transformation!729 (h!9217 rules!1920)))))))

(assert (= (and d!77992 res!123093) b!269031))

(declare-fun m!339095 () Bool)

(assert (=> d!77992 m!339095))

(declare-fun m!339097 () Bool)

(assert (=> b!269031 m!339097))

(assert (=> b!268970 d!77992))

(declare-fun d!77994 () Bool)

(declare-fun lt!110439 () Bool)

(declare-fun e!167155 () Bool)

(assert (=> d!77994 (= lt!110439 e!167155)))

(declare-fun res!123102 () Bool)

(assert (=> d!77994 (=> (not res!123102) (not e!167155))))

(assert (=> d!77994 (= res!123102 (= (list!1560 (_1!2353 (lex!407 thiss!17480 rules!1920 (print!340 thiss!17480 (singletonSeq!275 (h!9216 tokens!465)))))) (list!1560 (singletonSeq!275 (h!9216 tokens!465)))))))

(declare-fun e!167154 () Bool)

(assert (=> d!77994 (= lt!110439 e!167154)))

(declare-fun res!123103 () Bool)

(assert (=> d!77994 (=> (not res!123103) (not e!167154))))

(declare-fun lt!110440 () tuple2!4274)

(assert (=> d!77994 (= res!123103 (= (size!3041 (_1!2353 lt!110440)) 1))))

(assert (=> d!77994 (= lt!110440 (lex!407 thiss!17480 rules!1920 (print!340 thiss!17480 (singletonSeq!275 (h!9216 tokens!465)))))))

(assert (=> d!77994 (not (isEmpty!2413 rules!1920))))

(assert (=> d!77994 (= (rulesProduceIndividualToken!364 thiss!17480 rules!1920 (h!9216 tokens!465)) lt!110439)))

(declare-fun b!269044 () Bool)

(declare-fun res!123104 () Bool)

(assert (=> b!269044 (=> (not res!123104) (not e!167154))))

(declare-fun apply!765 (BalanceConc!2570 Int) Token!1202)

(assert (=> b!269044 (= res!123104 (= (apply!765 (_1!2353 lt!110440) 0) (h!9216 tokens!465)))))

(declare-fun b!269045 () Bool)

(declare-fun isEmpty!2419 (BalanceConc!2568) Bool)

(assert (=> b!269045 (= e!167154 (isEmpty!2419 (_2!2353 lt!110440)))))

(declare-fun b!269046 () Bool)

(assert (=> b!269046 (= e!167155 (isEmpty!2419 (_2!2353 (lex!407 thiss!17480 rules!1920 (print!340 thiss!17480 (singletonSeq!275 (h!9216 tokens!465)))))))))

(assert (= (and d!77994 res!123103) b!269044))

(assert (= (and b!269044 res!123104) b!269045))

(assert (= (and d!77994 res!123102) b!269046))

(assert (=> d!77994 m!338975))

(assert (=> d!77994 m!338965))

(assert (=> d!77994 m!338975))

(declare-fun m!339099 () Bool)

(assert (=> d!77994 m!339099))

(declare-fun m!339101 () Bool)

(assert (=> d!77994 m!339101))

(assert (=> d!77994 m!338975))

(declare-fun m!339103 () Bool)

(assert (=> d!77994 m!339103))

(declare-fun m!339105 () Bool)

(assert (=> d!77994 m!339105))

(assert (=> d!77994 m!339099))

(declare-fun m!339107 () Bool)

(assert (=> d!77994 m!339107))

(declare-fun m!339109 () Bool)

(assert (=> b!269044 m!339109))

(declare-fun m!339111 () Bool)

(assert (=> b!269045 m!339111))

(assert (=> b!269046 m!338975))

(assert (=> b!269046 m!338975))

(assert (=> b!269046 m!339099))

(assert (=> b!269046 m!339099))

(assert (=> b!269046 m!339107))

(declare-fun m!339113 () Bool)

(assert (=> b!269046 m!339113))

(assert (=> b!268958 d!77994))

(declare-fun d!77996 () Bool)

(declare-fun fromListB!317 (List!3829) BalanceConc!2570)

(assert (=> d!77996 (= (seqFromList!826 (t!38155 tokens!465)) (fromListB!317 (t!38155 tokens!465)))))

(declare-fun bs!29778 () Bool)

(assert (= bs!29778 d!77996))

(declare-fun m!339115 () Bool)

(assert (=> bs!29778 m!339115))

(assert (=> b!268969 d!77996))

(declare-fun d!77998 () Bool)

(declare-fun list!1561 (Conc!1280) List!3827)

(assert (=> d!77998 (= (list!1557 (charsOf!374 separatorToken!170)) (list!1561 (c!50914 (charsOf!374 separatorToken!170))))))

(declare-fun bs!29779 () Bool)

(assert (= bs!29779 d!77998))

(declare-fun m!339117 () Bool)

(assert (=> bs!29779 m!339117))

(assert (=> b!268969 d!77998))

(declare-fun d!78000 () Bool)

(assert (=> d!78000 (= (list!1557 (printWithSeparatorTokenWhenNeededRec!290 thiss!17480 rules!1920 (seqFromList!826 (t!38155 tokens!465)) separatorToken!170 0)) (list!1561 (c!50914 (printWithSeparatorTokenWhenNeededRec!290 thiss!17480 rules!1920 (seqFromList!826 (t!38155 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!29780 () Bool)

(assert (= bs!29780 d!78000))

(declare-fun m!339119 () Bool)

(assert (=> bs!29780 m!339119))

(assert (=> b!268969 d!78000))

(declare-fun bs!29799 () Bool)

(declare-fun b!269171 () Bool)

(assert (= bs!29799 (and b!269171 b!268954)))

(declare-fun lambda!9094 () Int)

(assert (=> bs!29799 (not (= lambda!9094 lambda!9080))))

(declare-fun b!269187 () Bool)

(declare-fun e!167240 () Bool)

(assert (=> b!269187 (= e!167240 true)))

(declare-fun b!269186 () Bool)

(declare-fun e!167239 () Bool)

(assert (=> b!269186 (= e!167239 e!167240)))

(declare-fun b!269185 () Bool)

(declare-fun e!167238 () Bool)

(assert (=> b!269185 (= e!167238 e!167239)))

(assert (=> b!269171 e!167238))

(assert (= b!269186 b!269187))

(assert (= b!269185 b!269186))

(assert (= (and b!269171 ((_ is Cons!3820) rules!1920)) b!269185))

(declare-fun order!2935 () Int)

(declare-fun order!2933 () Int)

(declare-fun dynLambda!1953 (Int Int) Int)

(declare-fun dynLambda!1954 (Int Int) Int)

(assert (=> b!269187 (< (dynLambda!1953 order!2933 (toValue!1464 (transformation!729 (h!9217 rules!1920)))) (dynLambda!1954 order!2935 lambda!9094))))

(declare-fun order!2937 () Int)

(declare-fun dynLambda!1955 (Int Int) Int)

(assert (=> b!269187 (< (dynLambda!1955 order!2937 (toChars!1323 (transformation!729 (h!9217 rules!1920)))) (dynLambda!1954 order!2935 lambda!9094))))

(assert (=> b!269171 true))

(declare-fun b!269167 () Bool)

(declare-fun e!167227 () List!3827)

(declare-fun call!14679 () List!3827)

(declare-fun lt!110517 () List!3827)

(assert (=> b!269167 (= e!167227 (++!994 call!14679 lt!110517))))

(declare-fun bm!14673 () Bool)

(declare-fun call!14680 () List!3827)

(declare-fun call!14678 () List!3827)

(assert (=> bm!14673 (= call!14680 call!14678)))

(declare-fun c!50973 () Bool)

(declare-fun c!50972 () Bool)

(assert (=> bm!14673 (= c!50973 c!50972)))

(declare-fun b!269168 () Bool)

(declare-fun e!167230 () List!3827)

(assert (=> b!269168 (= e!167230 Nil!3817)))

(declare-fun bm!14674 () Bool)

(declare-fun call!14682 () BalanceConc!2568)

(assert (=> bm!14674 (= call!14682 (charsOf!374 (h!9216 (t!38155 tokens!465))))))

(declare-fun b!269169 () Bool)

(declare-fun e!167229 () BalanceConc!2568)

(declare-fun call!14681 () BalanceConc!2568)

(assert (=> b!269169 (= e!167229 call!14681)))

(declare-fun b!269170 () Bool)

(declare-datatypes ((tuple2!4284 0))(
  ( (tuple2!4285 (_1!2358 Token!1202) (_2!2358 List!3827)) )
))
(declare-datatypes ((Option!808 0))(
  ( (None!807) (Some!807 (v!14676 tuple2!4284)) )
))
(declare-fun lt!110513 () Option!808)

(assert (=> b!269170 (= c!50972 (and ((_ is Some!807) lt!110513) (not (= (_1!2358 (v!14676 lt!110513)) (h!9216 (t!38155 tokens!465))))))))

(declare-fun e!167231 () List!3827)

(assert (=> b!269170 (= e!167231 e!167227)))

(assert (=> b!269171 (= e!167230 e!167231)))

(declare-fun lt!110514 () Unit!4874)

(declare-fun forallContained!284 (List!3829 Int Token!1202) Unit!4874)

(assert (=> b!269171 (= lt!110514 (forallContained!284 (t!38155 tokens!465) lambda!9094 (h!9216 (t!38155 tokens!465))))))

(assert (=> b!269171 (= lt!110517 (printWithSeparatorTokenWhenNeededList!298 thiss!17480 rules!1920 (t!38155 (t!38155 tokens!465)) separatorToken!170))))

(declare-fun maxPrefix!333 (LexerInterface!615 List!3830 List!3827) Option!808)

(assert (=> b!269171 (= lt!110513 (maxPrefix!333 thiss!17480 rules!1920 (++!994 (list!1557 (charsOf!374 (h!9216 (t!38155 tokens!465)))) lt!110517)))))

(declare-fun c!50975 () Bool)

(assert (=> b!269171 (= c!50975 (and ((_ is Some!807) lt!110513) (= (_1!2358 (v!14676 lt!110513)) (h!9216 (t!38155 tokens!465)))))))

(declare-fun bm!14675 () Bool)

(assert (=> bm!14675 (= call!14678 (list!1557 (ite c!50975 call!14682 e!167229)))))

(declare-fun bm!14676 () Bool)

(declare-fun c!50974 () Bool)

(assert (=> bm!14676 (= c!50974 c!50975)))

(declare-fun e!167228 () List!3827)

(assert (=> bm!14676 (= call!14679 (++!994 e!167228 (ite c!50975 lt!110517 call!14680)))))

(declare-fun b!269172 () Bool)

(assert (=> b!269172 (= e!167227 Nil!3817)))

(assert (=> b!269172 (= (print!340 thiss!17480 (singletonSeq!275 (h!9216 (t!38155 tokens!465)))) (printTailRec!303 thiss!17480 (singletonSeq!275 (h!9216 (t!38155 tokens!465))) 0 (BalanceConc!2569 Empty!1280)))))

(declare-fun lt!110515 () Unit!4874)

(declare-fun Unit!4880 () Unit!4874)

(assert (=> b!269172 (= lt!110515 Unit!4880)))

(declare-fun lt!110516 () Unit!4874)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!110 (LexerInterface!615 List!3830 List!3827 List!3827) Unit!4874)

(assert (=> b!269172 (= lt!110516 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!110 thiss!17480 rules!1920 call!14680 lt!110517))))

(assert (=> b!269172 false))

(declare-fun lt!110518 () Unit!4874)

(declare-fun Unit!4881 () Unit!4874)

(assert (=> b!269172 (= lt!110518 Unit!4881)))

(declare-fun d!78002 () Bool)

(declare-fun c!50976 () Bool)

(assert (=> d!78002 (= c!50976 ((_ is Cons!3819) (t!38155 tokens!465)))))

(assert (=> d!78002 (= (printWithSeparatorTokenWhenNeededList!298 thiss!17480 rules!1920 (t!38155 tokens!465) separatorToken!170) e!167230)))

(declare-fun b!269173 () Bool)

(assert (=> b!269173 (= e!167228 (list!1557 call!14681))))

(declare-fun bm!14677 () Bool)

(assert (=> bm!14677 (= call!14681 call!14682)))

(declare-fun b!269174 () Bool)

(assert (=> b!269174 (= e!167228 call!14678)))

(declare-fun b!269175 () Bool)

(assert (=> b!269175 (= e!167231 call!14679)))

(declare-fun b!269176 () Bool)

(assert (=> b!269176 (= e!167229 (charsOf!374 separatorToken!170))))

(assert (= (and d!78002 c!50976) b!269171))

(assert (= (and d!78002 (not c!50976)) b!269168))

(assert (= (and b!269171 c!50975) b!269175))

(assert (= (and b!269171 (not c!50975)) b!269170))

(assert (= (and b!269170 c!50972) b!269167))

(assert (= (and b!269170 (not c!50972)) b!269172))

(assert (= (or b!269167 b!269172) bm!14677))

(assert (= (or b!269167 b!269172) bm!14673))

(assert (= (and bm!14673 c!50973) b!269176))

(assert (= (and bm!14673 (not c!50973)) b!269169))

(assert (= (or b!269175 bm!14677) bm!14674))

(assert (= (or b!269175 bm!14673) bm!14675))

(assert (= (or b!269175 b!269167) bm!14676))

(assert (= (and bm!14676 c!50974) b!269174))

(assert (= (and bm!14676 (not c!50974)) b!269173))

(assert (=> b!269176 m!338937))

(declare-fun m!339297 () Bool)

(assert (=> b!269171 m!339297))

(declare-fun m!339299 () Bool)

(assert (=> b!269171 m!339299))

(declare-fun m!339301 () Bool)

(assert (=> b!269171 m!339301))

(declare-fun m!339303 () Bool)

(assert (=> b!269171 m!339303))

(declare-fun m!339305 () Bool)

(assert (=> b!269171 m!339305))

(declare-fun m!339307 () Bool)

(assert (=> b!269171 m!339307))

(assert (=> b!269171 m!339305))

(assert (=> b!269171 m!339299))

(assert (=> b!269171 m!339303))

(declare-fun m!339309 () Bool)

(assert (=> bm!14675 m!339309))

(declare-fun m!339311 () Bool)

(assert (=> bm!14676 m!339311))

(declare-fun m!339313 () Bool)

(assert (=> b!269172 m!339313))

(assert (=> b!269172 m!339313))

(declare-fun m!339315 () Bool)

(assert (=> b!269172 m!339315))

(assert (=> b!269172 m!339313))

(declare-fun m!339317 () Bool)

(assert (=> b!269172 m!339317))

(declare-fun m!339319 () Bool)

(assert (=> b!269172 m!339319))

(declare-fun m!339321 () Bool)

(assert (=> b!269167 m!339321))

(declare-fun m!339323 () Bool)

(assert (=> b!269173 m!339323))

(assert (=> bm!14674 m!339303))

(assert (=> b!268969 d!78002))

(declare-fun lt!110530 () List!3827)

(declare-fun b!269219 () Bool)

(declare-fun e!167256 () Bool)

(assert (=> b!269219 (= e!167256 (or (not (= lt!110398 Nil!3817)) (= lt!110530 lt!110396)))))

(declare-fun b!269217 () Bool)

(declare-fun e!167255 () List!3827)

(assert (=> b!269217 (= e!167255 (Cons!3817 (h!9214 lt!110396) (++!994 (t!38153 lt!110396) lt!110398)))))

(declare-fun d!78022 () Bool)

(assert (=> d!78022 e!167256))

(declare-fun res!123135 () Bool)

(assert (=> d!78022 (=> (not res!123135) (not e!167256))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!547 (List!3827) (InoxSet C!2828))

(assert (=> d!78022 (= res!123135 (= (content!547 lt!110530) ((_ map or) (content!547 lt!110396) (content!547 lt!110398))))))

(assert (=> d!78022 (= lt!110530 e!167255)))

(declare-fun c!50982 () Bool)

(assert (=> d!78022 (= c!50982 ((_ is Nil!3817) lt!110396))))

(assert (=> d!78022 (= (++!994 lt!110396 lt!110398) lt!110530)))

(declare-fun b!269216 () Bool)

(assert (=> b!269216 (= e!167255 lt!110398)))

(declare-fun b!269218 () Bool)

(declare-fun res!123134 () Bool)

(assert (=> b!269218 (=> (not res!123134) (not e!167256))))

(declare-fun size!3043 (List!3827) Int)

(assert (=> b!269218 (= res!123134 (= (size!3043 lt!110530) (+ (size!3043 lt!110396) (size!3043 lt!110398))))))

(assert (= (and d!78022 c!50982) b!269216))

(assert (= (and d!78022 (not c!50982)) b!269217))

(assert (= (and d!78022 res!123135) b!269218))

(assert (= (and b!269218 res!123134) b!269219))

(declare-fun m!339373 () Bool)

(assert (=> b!269217 m!339373))

(declare-fun m!339375 () Bool)

(assert (=> d!78022 m!339375))

(declare-fun m!339377 () Bool)

(assert (=> d!78022 m!339377))

(declare-fun m!339379 () Bool)

(assert (=> d!78022 m!339379))

(declare-fun m!339381 () Bool)

(assert (=> b!269218 m!339381))

(declare-fun m!339383 () Bool)

(assert (=> b!269218 m!339383))

(declare-fun m!339385 () Bool)

(assert (=> b!269218 m!339385))

(assert (=> b!268969 d!78022))

(declare-fun bs!29812 () Bool)

(declare-fun d!78038 () Bool)

(assert (= bs!29812 (and d!78038 b!268954)))

(declare-fun lambda!9100 () Int)

(assert (=> bs!29812 (= lambda!9100 lambda!9080)))

(declare-fun bs!29813 () Bool)

(assert (= bs!29813 (and d!78038 b!269171)))

(assert (=> bs!29813 (not (= lambda!9100 lambda!9094))))

(declare-fun bs!29814 () Bool)

(declare-fun b!269296 () Bool)

(assert (= bs!29814 (and b!269296 b!268954)))

(declare-fun lambda!9101 () Int)

(assert (=> bs!29814 (not (= lambda!9101 lambda!9080))))

(declare-fun bs!29815 () Bool)

(assert (= bs!29815 (and b!269296 b!269171)))

(assert (=> bs!29815 (= lambda!9101 lambda!9094)))

(declare-fun bs!29816 () Bool)

(assert (= bs!29816 (and b!269296 d!78038)))

(assert (=> bs!29816 (not (= lambda!9101 lambda!9100))))

(declare-fun b!269300 () Bool)

(declare-fun e!167313 () Bool)

(assert (=> b!269300 (= e!167313 true)))

(declare-fun b!269299 () Bool)

(declare-fun e!167312 () Bool)

(assert (=> b!269299 (= e!167312 e!167313)))

(declare-fun b!269298 () Bool)

(declare-fun e!167311 () Bool)

(assert (=> b!269298 (= e!167311 e!167312)))

(assert (=> b!269296 e!167311))

(assert (= b!269299 b!269300))

(assert (= b!269298 b!269299))

(assert (= (and b!269296 ((_ is Cons!3820) rules!1920)) b!269298))

(assert (=> b!269300 (< (dynLambda!1953 order!2933 (toValue!1464 (transformation!729 (h!9217 rules!1920)))) (dynLambda!1954 order!2935 lambda!9101))))

(assert (=> b!269300 (< (dynLambda!1955 order!2937 (toChars!1323 (transformation!729 (h!9217 rules!1920)))) (dynLambda!1954 order!2935 lambda!9101))))

(assert (=> b!269296 true))

(declare-fun b!269289 () Bool)

(declare-fun e!167310 () BalanceConc!2568)

(declare-fun call!14699 () BalanceConc!2568)

(assert (=> b!269289 (= e!167310 call!14699)))

(declare-fun b!269290 () Bool)

(declare-fun e!167309 () BalanceConc!2568)

(assert (=> b!269290 (= e!167309 (BalanceConc!2569 Empty!1280))))

(declare-fun c!50998 () Bool)

(declare-fun call!14701 () Token!1202)

(declare-fun call!14698 () BalanceConc!2568)

(declare-fun call!14700 () Token!1202)

(declare-fun bm!14693 () Bool)

(assert (=> bm!14693 (= call!14698 (charsOf!374 (ite c!50998 call!14700 call!14701)))))

(declare-fun b!269291 () Bool)

(declare-fun e!167306 () Bool)

(assert (=> b!269291 (= e!167306 (<= 0 (size!3041 (seqFromList!826 (t!38155 tokens!465)))))))

(declare-fun b!269292 () Bool)

(declare-fun e!167307 () Bool)

(declare-datatypes ((tuple2!4286 0))(
  ( (tuple2!4287 (_1!2359 Token!1202) (_2!2359 BalanceConc!2568)) )
))
(declare-datatypes ((Option!809 0))(
  ( (None!808) (Some!808 (v!14677 tuple2!4286)) )
))
(declare-fun lt!110605 () Option!809)

(assert (=> b!269292 (= e!167307 (= (_1!2359 (v!14677 lt!110605)) (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0)))))

(declare-fun b!269293 () Bool)

(declare-fun e!167308 () BalanceConc!2568)

(declare-fun lt!110609 () BalanceConc!2568)

(declare-fun ++!996 (BalanceConc!2568 BalanceConc!2568) BalanceConc!2568)

(assert (=> b!269293 (= e!167308 (++!996 call!14699 lt!110609))))

(declare-fun b!269294 () Bool)

(declare-fun c!50999 () Bool)

(declare-fun e!167305 () Bool)

(assert (=> b!269294 (= c!50999 e!167305)))

(declare-fun res!123176 () Bool)

(assert (=> b!269294 (=> (not res!123176) (not e!167305))))

(assert (=> b!269294 (= res!123176 ((_ is Some!808) lt!110605))))

(assert (=> b!269294 (= e!167310 e!167308)))

(declare-fun bm!14694 () Bool)

(assert (=> bm!14694 (= call!14700 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0))))

(declare-fun lt!110603 () BalanceConc!2568)

(declare-fun dropList!162 (BalanceConc!2570 Int) List!3829)

(assert (=> d!78038 (= (list!1557 lt!110603) (printWithSeparatorTokenWhenNeededList!298 thiss!17480 rules!1920 (dropList!162 (seqFromList!826 (t!38155 tokens!465)) 0) separatorToken!170))))

(assert (=> d!78038 (= lt!110603 e!167309)))

(declare-fun c!50997 () Bool)

(assert (=> d!78038 (= c!50997 (>= 0 (size!3041 (seqFromList!826 (t!38155 tokens!465)))))))

(declare-fun lt!110602 () Unit!4874)

(declare-fun lemmaContentSubsetPreservesForall!106 (List!3829 List!3829 Int) Unit!4874)

(assert (=> d!78038 (= lt!110602 (lemmaContentSubsetPreservesForall!106 (list!1560 (seqFromList!826 (t!38155 tokens!465))) (dropList!162 (seqFromList!826 (t!38155 tokens!465)) 0) lambda!9100))))

(assert (=> d!78038 e!167306))

(declare-fun res!123174 () Bool)

(assert (=> d!78038 (=> (not res!123174) (not e!167306))))

(assert (=> d!78038 (= res!123174 (>= 0 0))))

(assert (=> d!78038 (= (printWithSeparatorTokenWhenNeededRec!290 thiss!17480 rules!1920 (seqFromList!826 (t!38155 tokens!465)) separatorToken!170 0) lt!110603)))

(declare-fun b!269295 () Bool)

(assert (=> b!269295 (= e!167305 (not (= (_1!2359 (v!14677 lt!110605)) call!14700)))))

(assert (=> b!269296 (= e!167309 e!167310)))

(declare-fun lt!110608 () List!3829)

(assert (=> b!269296 (= lt!110608 (list!1560 (seqFromList!826 (t!38155 tokens!465))))))

(declare-fun lt!110601 () Unit!4874)

(declare-fun lemmaDropApply!202 (List!3829 Int) Unit!4874)

(assert (=> b!269296 (= lt!110601 (lemmaDropApply!202 lt!110608 0))))

(declare-fun head!886 (List!3829) Token!1202)

(declare-fun drop!215 (List!3829 Int) List!3829)

(declare-fun apply!766 (List!3829 Int) Token!1202)

(assert (=> b!269296 (= (head!886 (drop!215 lt!110608 0)) (apply!766 lt!110608 0))))

(declare-fun lt!110604 () Unit!4874)

(assert (=> b!269296 (= lt!110604 lt!110601)))

(declare-fun lt!110607 () List!3829)

(assert (=> b!269296 (= lt!110607 (list!1560 (seqFromList!826 (t!38155 tokens!465))))))

(declare-fun lt!110600 () Unit!4874)

(declare-fun lemmaDropTail!194 (List!3829 Int) Unit!4874)

(assert (=> b!269296 (= lt!110600 (lemmaDropTail!194 lt!110607 0))))

(declare-fun tail!476 (List!3829) List!3829)

(assert (=> b!269296 (= (tail!476 (drop!215 lt!110607 0)) (drop!215 lt!110607 (+ 0 1)))))

(declare-fun lt!110599 () Unit!4874)

(assert (=> b!269296 (= lt!110599 lt!110600)))

(declare-fun lt!110597 () Unit!4874)

(assert (=> b!269296 (= lt!110597 (forallContained!284 (list!1560 (seqFromList!826 (t!38155 tokens!465))) lambda!9101 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0)))))

(assert (=> b!269296 (= lt!110609 (printWithSeparatorTokenWhenNeededRec!290 thiss!17480 rules!1920 (seqFromList!826 (t!38155 tokens!465)) separatorToken!170 (+ 0 1)))))

(declare-fun maxPrefixZipperSequence!296 (LexerInterface!615 List!3830 BalanceConc!2568) Option!809)

(assert (=> b!269296 (= lt!110605 (maxPrefixZipperSequence!296 thiss!17480 rules!1920 (++!996 (charsOf!374 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0)) lt!110609)))))

(declare-fun res!123175 () Bool)

(assert (=> b!269296 (= res!123175 ((_ is Some!808) lt!110605))))

(assert (=> b!269296 (=> (not res!123175) (not e!167307))))

(assert (=> b!269296 (= c!50998 e!167307)))

(declare-fun call!14702 () BalanceConc!2568)

(declare-fun bm!14695 () Bool)

(assert (=> bm!14695 (= call!14702 (charsOf!374 (ite c!50999 separatorToken!170 call!14701)))))

(declare-fun bm!14696 () Bool)

(assert (=> bm!14696 (= call!14701 call!14700)))

(declare-fun bm!14697 () Bool)

(assert (=> bm!14697 (= call!14699 (++!996 call!14698 (ite c!50998 lt!110609 call!14702)))))

(declare-fun b!269297 () Bool)

(assert (=> b!269297 (= e!167308 (BalanceConc!2569 Empty!1280))))

(assert (=> b!269297 (= (print!340 thiss!17480 (singletonSeq!275 call!14701)) (printTailRec!303 thiss!17480 (singletonSeq!275 call!14701) 0 (BalanceConc!2569 Empty!1280)))))

(declare-fun lt!110606 () Unit!4874)

(declare-fun Unit!4884 () Unit!4874)

(assert (=> b!269297 (= lt!110606 Unit!4884)))

(declare-fun lt!110596 () Unit!4874)

(assert (=> b!269297 (= lt!110596 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!110 thiss!17480 rules!1920 (list!1557 call!14702) (list!1557 lt!110609)))))

(assert (=> b!269297 false))

(declare-fun lt!110598 () Unit!4874)

(declare-fun Unit!4885 () Unit!4874)

(assert (=> b!269297 (= lt!110598 Unit!4885)))

(assert (= (and d!78038 res!123174) b!269291))

(assert (= (and d!78038 c!50997) b!269290))

(assert (= (and d!78038 (not c!50997)) b!269296))

(assert (= (and b!269296 res!123175) b!269292))

(assert (= (and b!269296 c!50998) b!269289))

(assert (= (and b!269296 (not c!50998)) b!269294))

(assert (= (and b!269294 res!123176) b!269295))

(assert (= (and b!269294 c!50999) b!269293))

(assert (= (and b!269294 (not c!50999)) b!269297))

(assert (= (or b!269293 b!269297) bm!14696))

(assert (= (or b!269293 b!269297) bm!14695))

(assert (= (or b!269289 b!269295 bm!14696) bm!14694))

(assert (= (or b!269289 b!269293) bm!14693))

(assert (= (or b!269289 b!269293) bm!14697))

(declare-fun m!339495 () Bool)

(assert (=> bm!14697 m!339495))

(declare-fun m!339501 () Bool)

(assert (=> b!269296 m!339501))

(declare-fun m!339505 () Bool)

(assert (=> b!269296 m!339505))

(declare-fun m!339507 () Bool)

(assert (=> b!269296 m!339507))

(declare-fun m!339509 () Bool)

(assert (=> b!269296 m!339509))

(declare-fun m!339511 () Bool)

(assert (=> b!269296 m!339511))

(declare-fun m!339513 () Bool)

(assert (=> b!269296 m!339513))

(declare-fun m!339515 () Bool)

(assert (=> b!269296 m!339515))

(declare-fun m!339517 () Bool)

(assert (=> b!269296 m!339517))

(declare-fun m!339519 () Bool)

(assert (=> b!269296 m!339519))

(assert (=> b!269296 m!338949))

(assert (=> b!269296 m!339513))

(assert (=> b!269296 m!339507))

(declare-fun m!339521 () Bool)

(assert (=> b!269296 m!339521))

(declare-fun m!339523 () Bool)

(assert (=> b!269296 m!339523))

(assert (=> b!269296 m!338949))

(assert (=> b!269296 m!339511))

(declare-fun m!339525 () Bool)

(assert (=> b!269296 m!339525))

(declare-fun m!339527 () Bool)

(assert (=> b!269296 m!339527))

(assert (=> b!269296 m!339513))

(declare-fun m!339529 () Bool)

(assert (=> b!269296 m!339529))

(assert (=> b!269296 m!339521))

(assert (=> b!269296 m!339529))

(assert (=> b!269296 m!339525))

(assert (=> b!269296 m!338949))

(declare-fun m!339531 () Bool)

(assert (=> b!269296 m!339531))

(declare-fun m!339533 () Bool)

(assert (=> b!269297 m!339533))

(declare-fun m!339535 () Bool)

(assert (=> b!269297 m!339535))

(declare-fun m!339537 () Bool)

(assert (=> b!269297 m!339537))

(assert (=> b!269297 m!339533))

(declare-fun m!339539 () Bool)

(assert (=> b!269297 m!339539))

(declare-fun m!339541 () Bool)

(assert (=> b!269297 m!339541))

(assert (=> b!269297 m!339535))

(declare-fun m!339543 () Bool)

(assert (=> b!269297 m!339543))

(assert (=> b!269297 m!339535))

(assert (=> b!269297 m!339539))

(declare-fun m!339545 () Bool)

(assert (=> d!78038 m!339545))

(declare-fun m!339547 () Bool)

(assert (=> d!78038 m!339547))

(assert (=> d!78038 m!339511))

(assert (=> d!78038 m!339545))

(declare-fun m!339549 () Bool)

(assert (=> d!78038 m!339549))

(assert (=> d!78038 m!338949))

(assert (=> d!78038 m!339511))

(declare-fun m!339551 () Bool)

(assert (=> d!78038 m!339551))

(assert (=> d!78038 m!338949))

(declare-fun m!339553 () Bool)

(assert (=> d!78038 m!339553))

(assert (=> d!78038 m!338949))

(assert (=> d!78038 m!339545))

(assert (=> b!269292 m!338949))

(assert (=> b!269292 m!339513))

(assert (=> bm!14694 m!338949))

(assert (=> bm!14694 m!339513))

(assert (=> b!269291 m!338949))

(assert (=> b!269291 m!339553))

(declare-fun m!339555 () Bool)

(assert (=> b!269293 m!339555))

(declare-fun m!339557 () Bool)

(assert (=> bm!14695 m!339557))

(declare-fun m!339559 () Bool)

(assert (=> bm!14693 m!339559))

(assert (=> b!268969 d!78038))

(declare-fun d!78064 () Bool)

(declare-fun lt!110617 () BalanceConc!2568)

(assert (=> d!78064 (= (list!1557 lt!110617) (originalCharacters!772 separatorToken!170))))

(declare-fun dynLambda!1957 (Int TokenValue!751) BalanceConc!2568)

(assert (=> d!78064 (= lt!110617 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (value!25092 separatorToken!170)))))

(assert (=> d!78064 (= (charsOf!374 separatorToken!170) lt!110617)))

(declare-fun b_lambda!8505 () Bool)

(assert (=> (not b_lambda!8505) (not d!78064)))

(declare-fun tb!15097 () Bool)

(declare-fun t!38185 () Bool)

(assert (=> (and b!268967 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (toChars!1323 (transformation!729 (rule!1314 separatorToken!170)))) t!38185) tb!15097))

(declare-fun b!269318 () Bool)

(declare-fun e!167325 () Bool)

(declare-fun tp!102294 () Bool)

(declare-fun inv!4725 (Conc!1280) Bool)

(assert (=> b!269318 (= e!167325 (and (inv!4725 (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (value!25092 separatorToken!170)))) tp!102294))))

(declare-fun result!18682 () Bool)

(declare-fun inv!4726 (BalanceConc!2568) Bool)

(assert (=> tb!15097 (= result!18682 (and (inv!4726 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (value!25092 separatorToken!170))) e!167325))))

(assert (= tb!15097 b!269318))

(declare-fun m!339591 () Bool)

(assert (=> b!269318 m!339591))

(declare-fun m!339593 () Bool)

(assert (=> tb!15097 m!339593))

(assert (=> d!78064 t!38185))

(declare-fun b_and!21385 () Bool)

(assert (= b_and!21351 (and (=> t!38185 result!18682) b_and!21385)))

(declare-fun tb!15099 () Bool)

(declare-fun t!38187 () Bool)

(assert (=> (and b!268971 (= (toChars!1323 (transformation!729 (h!9217 rules!1920))) (toChars!1323 (transformation!729 (rule!1314 separatorToken!170)))) t!38187) tb!15099))

(declare-fun result!18686 () Bool)

(assert (= result!18686 result!18682))

(assert (=> d!78064 t!38187))

(declare-fun b_and!21387 () Bool)

(assert (= b_and!21355 (and (=> t!38187 result!18686) b_and!21387)))

(declare-fun t!38189 () Bool)

(declare-fun tb!15101 () Bool)

(assert (=> (and b!268959 (= (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (toChars!1323 (transformation!729 (rule!1314 separatorToken!170)))) t!38189) tb!15101))

(declare-fun result!18688 () Bool)

(assert (= result!18688 result!18682))

(assert (=> d!78064 t!38189))

(declare-fun b_and!21389 () Bool)

(assert (= b_and!21359 (and (=> t!38189 result!18688) b_and!21389)))

(declare-fun m!339595 () Bool)

(assert (=> d!78064 m!339595))

(declare-fun m!339597 () Bool)

(assert (=> d!78064 m!339597))

(assert (=> b!268969 d!78064))

(declare-fun b!269322 () Bool)

(declare-fun lt!110618 () List!3827)

(declare-fun e!167327 () Bool)

(assert (=> b!269322 (= e!167327 (or (not (= lt!110403 Nil!3817)) (= lt!110618 (++!994 lt!110396 lt!110394))))))

(declare-fun e!167326 () List!3827)

(declare-fun b!269320 () Bool)

(assert (=> b!269320 (= e!167326 (Cons!3817 (h!9214 (++!994 lt!110396 lt!110394)) (++!994 (t!38153 (++!994 lt!110396 lt!110394)) lt!110403)))))

(declare-fun d!78074 () Bool)

(assert (=> d!78074 e!167327))

(declare-fun res!123185 () Bool)

(assert (=> d!78074 (=> (not res!123185) (not e!167327))))

(assert (=> d!78074 (= res!123185 (= (content!547 lt!110618) ((_ map or) (content!547 (++!994 lt!110396 lt!110394)) (content!547 lt!110403))))))

(assert (=> d!78074 (= lt!110618 e!167326)))

(declare-fun c!51003 () Bool)

(assert (=> d!78074 (= c!51003 ((_ is Nil!3817) (++!994 lt!110396 lt!110394)))))

(assert (=> d!78074 (= (++!994 (++!994 lt!110396 lt!110394) lt!110403) lt!110618)))

(declare-fun b!269319 () Bool)

(assert (=> b!269319 (= e!167326 lt!110403)))

(declare-fun b!269321 () Bool)

(declare-fun res!123184 () Bool)

(assert (=> b!269321 (=> (not res!123184) (not e!167327))))

(assert (=> b!269321 (= res!123184 (= (size!3043 lt!110618) (+ (size!3043 (++!994 lt!110396 lt!110394)) (size!3043 lt!110403))))))

(assert (= (and d!78074 c!51003) b!269319))

(assert (= (and d!78074 (not c!51003)) b!269320))

(assert (= (and d!78074 res!123185) b!269321))

(assert (= (and b!269321 res!123184) b!269322))

(declare-fun m!339599 () Bool)

(assert (=> b!269320 m!339599))

(declare-fun m!339601 () Bool)

(assert (=> d!78074 m!339601))

(assert (=> d!78074 m!338945))

(declare-fun m!339603 () Bool)

(assert (=> d!78074 m!339603))

(declare-fun m!339605 () Bool)

(assert (=> d!78074 m!339605))

(declare-fun m!339607 () Bool)

(assert (=> b!269321 m!339607))

(assert (=> b!269321 m!338945))

(declare-fun m!339609 () Bool)

(assert (=> b!269321 m!339609))

(declare-fun m!339611 () Bool)

(assert (=> b!269321 m!339611))

(assert (=> b!268969 d!78074))

(declare-fun b!269326 () Bool)

(declare-fun e!167329 () Bool)

(declare-fun lt!110619 () List!3827)

(assert (=> b!269326 (= e!167329 (or (not (= lt!110394 Nil!3817)) (= lt!110619 lt!110396)))))

(declare-fun b!269324 () Bool)

(declare-fun e!167328 () List!3827)

(assert (=> b!269324 (= e!167328 (Cons!3817 (h!9214 lt!110396) (++!994 (t!38153 lt!110396) lt!110394)))))

(declare-fun d!78076 () Bool)

(assert (=> d!78076 e!167329))

(declare-fun res!123187 () Bool)

(assert (=> d!78076 (=> (not res!123187) (not e!167329))))

(assert (=> d!78076 (= res!123187 (= (content!547 lt!110619) ((_ map or) (content!547 lt!110396) (content!547 lt!110394))))))

(assert (=> d!78076 (= lt!110619 e!167328)))

(declare-fun c!51004 () Bool)

(assert (=> d!78076 (= c!51004 ((_ is Nil!3817) lt!110396))))

(assert (=> d!78076 (= (++!994 lt!110396 lt!110394) lt!110619)))

(declare-fun b!269323 () Bool)

(assert (=> b!269323 (= e!167328 lt!110394)))

(declare-fun b!269325 () Bool)

(declare-fun res!123186 () Bool)

(assert (=> b!269325 (=> (not res!123186) (not e!167329))))

(assert (=> b!269325 (= res!123186 (= (size!3043 lt!110619) (+ (size!3043 lt!110396) (size!3043 lt!110394))))))

(assert (= (and d!78076 c!51004) b!269323))

(assert (= (and d!78076 (not c!51004)) b!269324))

(assert (= (and d!78076 res!123187) b!269325))

(assert (= (and b!269325 res!123186) b!269326))

(declare-fun m!339613 () Bool)

(assert (=> b!269324 m!339613))

(declare-fun m!339615 () Bool)

(assert (=> d!78076 m!339615))

(assert (=> d!78076 m!339377))

(declare-fun m!339617 () Bool)

(assert (=> d!78076 m!339617))

(declare-fun m!339619 () Bool)

(assert (=> b!269325 m!339619))

(assert (=> b!269325 m!339383))

(declare-fun m!339621 () Bool)

(assert (=> b!269325 m!339621))

(assert (=> b!268969 d!78076))

(declare-fun d!78078 () Bool)

(assert (=> d!78078 (= (list!1557 (charsOf!374 (h!9216 tokens!465))) (list!1561 (c!50914 (charsOf!374 (h!9216 tokens!465)))))))

(declare-fun bs!29817 () Bool)

(assert (= bs!29817 d!78078))

(declare-fun m!339623 () Bool)

(assert (=> bs!29817 m!339623))

(assert (=> b!268969 d!78078))

(declare-fun d!78080 () Bool)

(declare-fun lt!110620 () BalanceConc!2568)

(assert (=> d!78080 (= (list!1557 lt!110620) (originalCharacters!772 (h!9216 tokens!465)))))

(assert (=> d!78080 (= lt!110620 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (value!25092 (h!9216 tokens!465))))))

(assert (=> d!78080 (= (charsOf!374 (h!9216 tokens!465)) lt!110620)))

(declare-fun b_lambda!8507 () Bool)

(assert (=> (not b_lambda!8507) (not d!78080)))

(declare-fun t!38191 () Bool)

(declare-fun tb!15103 () Bool)

(assert (=> (and b!268967 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465))))) t!38191) tb!15103))

(declare-fun b!269327 () Bool)

(declare-fun e!167330 () Bool)

(declare-fun tp!102295 () Bool)

(assert (=> b!269327 (= e!167330 (and (inv!4725 (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (value!25092 (h!9216 tokens!465))))) tp!102295))))

(declare-fun result!18690 () Bool)

(assert (=> tb!15103 (= result!18690 (and (inv!4726 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (value!25092 (h!9216 tokens!465)))) e!167330))))

(assert (= tb!15103 b!269327))

(declare-fun m!339625 () Bool)

(assert (=> b!269327 m!339625))

(declare-fun m!339627 () Bool)

(assert (=> tb!15103 m!339627))

(assert (=> d!78080 t!38191))

(declare-fun b_and!21391 () Bool)

(assert (= b_and!21385 (and (=> t!38191 result!18690) b_and!21391)))

(declare-fun tb!15105 () Bool)

(declare-fun t!38193 () Bool)

(assert (=> (and b!268971 (= (toChars!1323 (transformation!729 (h!9217 rules!1920))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465))))) t!38193) tb!15105))

(declare-fun result!18692 () Bool)

(assert (= result!18692 result!18690))

(assert (=> d!78080 t!38193))

(declare-fun b_and!21393 () Bool)

(assert (= b_and!21387 (and (=> t!38193 result!18692) b_and!21393)))

(declare-fun t!38195 () Bool)

(declare-fun tb!15107 () Bool)

(assert (=> (and b!268959 (= (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465))))) t!38195) tb!15107))

(declare-fun result!18694 () Bool)

(assert (= result!18694 result!18690))

(assert (=> d!78080 t!38195))

(declare-fun b_and!21395 () Bool)

(assert (= b_and!21389 (and (=> t!38195 result!18694) b_and!21395)))

(declare-fun m!339629 () Bool)

(assert (=> d!78080 m!339629))

(declare-fun m!339631 () Bool)

(assert (=> d!78080 m!339631))

(assert (=> b!268969 d!78080))

(declare-fun d!78082 () Bool)

(assert (=> d!78082 (= (++!994 (++!994 lt!110396 lt!110394) lt!110403) (++!994 lt!110396 (++!994 lt!110394 lt!110403)))))

(declare-fun lt!110623 () Unit!4874)

(declare-fun choose!2447 (List!3827 List!3827 List!3827) Unit!4874)

(assert (=> d!78082 (= lt!110623 (choose!2447 lt!110396 lt!110394 lt!110403))))

(assert (=> d!78082 (= (lemmaConcatAssociativity!426 lt!110396 lt!110394 lt!110403) lt!110623)))

(declare-fun bs!29818 () Bool)

(assert (= bs!29818 d!78082))

(assert (=> bs!29818 m!338959))

(assert (=> bs!29818 m!338945))

(assert (=> bs!29818 m!338947))

(assert (=> bs!29818 m!338945))

(assert (=> bs!29818 m!338959))

(declare-fun m!339633 () Bool)

(assert (=> bs!29818 m!339633))

(declare-fun m!339635 () Bool)

(assert (=> bs!29818 m!339635))

(assert (=> b!268969 d!78082))

(declare-fun e!167332 () Bool)

(declare-fun b!269331 () Bool)

(declare-fun lt!110624 () List!3827)

(assert (=> b!269331 (= e!167332 (or (not (= lt!110403 Nil!3817)) (= lt!110624 lt!110394)))))

(declare-fun b!269329 () Bool)

(declare-fun e!167331 () List!3827)

(assert (=> b!269329 (= e!167331 (Cons!3817 (h!9214 lt!110394) (++!994 (t!38153 lt!110394) lt!110403)))))

(declare-fun d!78084 () Bool)

(assert (=> d!78084 e!167332))

(declare-fun res!123189 () Bool)

(assert (=> d!78084 (=> (not res!123189) (not e!167332))))

(assert (=> d!78084 (= res!123189 (= (content!547 lt!110624) ((_ map or) (content!547 lt!110394) (content!547 lt!110403))))))

(assert (=> d!78084 (= lt!110624 e!167331)))

(declare-fun c!51005 () Bool)

(assert (=> d!78084 (= c!51005 ((_ is Nil!3817) lt!110394))))

(assert (=> d!78084 (= (++!994 lt!110394 lt!110403) lt!110624)))

(declare-fun b!269328 () Bool)

(assert (=> b!269328 (= e!167331 lt!110403)))

(declare-fun b!269330 () Bool)

(declare-fun res!123188 () Bool)

(assert (=> b!269330 (=> (not res!123188) (not e!167332))))

(assert (=> b!269330 (= res!123188 (= (size!3043 lt!110624) (+ (size!3043 lt!110394) (size!3043 lt!110403))))))

(assert (= (and d!78084 c!51005) b!269328))

(assert (= (and d!78084 (not c!51005)) b!269329))

(assert (= (and d!78084 res!123189) b!269330))

(assert (= (and b!269330 res!123188) b!269331))

(declare-fun m!339637 () Bool)

(assert (=> b!269329 m!339637))

(declare-fun m!339639 () Bool)

(assert (=> d!78084 m!339639))

(assert (=> d!78084 m!339617))

(assert (=> d!78084 m!339605))

(declare-fun m!339641 () Bool)

(assert (=> b!269330 m!339641))

(assert (=> b!269330 m!339621))

(assert (=> b!269330 m!339611))

(assert (=> b!268969 d!78084))

(declare-fun d!78086 () Bool)

(declare-fun res!123194 () Bool)

(declare-fun e!167335 () Bool)

(assert (=> d!78086 (=> (not res!123194) (not e!167335))))

(declare-fun isEmpty!2420 (List!3827) Bool)

(assert (=> d!78086 (= res!123194 (not (isEmpty!2420 (originalCharacters!772 (h!9216 tokens!465)))))))

(assert (=> d!78086 (= (inv!4721 (h!9216 tokens!465)) e!167335)))

(declare-fun b!269336 () Bool)

(declare-fun res!123195 () Bool)

(assert (=> b!269336 (=> (not res!123195) (not e!167335))))

(assert (=> b!269336 (= res!123195 (= (originalCharacters!772 (h!9216 tokens!465)) (list!1557 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (value!25092 (h!9216 tokens!465))))))))

(declare-fun b!269337 () Bool)

(assert (=> b!269337 (= e!167335 (= (size!3037 (h!9216 tokens!465)) (size!3043 (originalCharacters!772 (h!9216 tokens!465)))))))

(assert (= (and d!78086 res!123194) b!269336))

(assert (= (and b!269336 res!123195) b!269337))

(declare-fun b_lambda!8509 () Bool)

(assert (=> (not b_lambda!8509) (not b!269336)))

(assert (=> b!269336 t!38191))

(declare-fun b_and!21397 () Bool)

(assert (= b_and!21391 (and (=> t!38191 result!18690) b_and!21397)))

(assert (=> b!269336 t!38193))

(declare-fun b_and!21399 () Bool)

(assert (= b_and!21393 (and (=> t!38193 result!18692) b_and!21399)))

(assert (=> b!269336 t!38195))

(declare-fun b_and!21401 () Bool)

(assert (= b_and!21395 (and (=> t!38195 result!18694) b_and!21401)))

(declare-fun m!339643 () Bool)

(assert (=> d!78086 m!339643))

(assert (=> b!269336 m!339631))

(assert (=> b!269336 m!339631))

(declare-fun m!339645 () Bool)

(assert (=> b!269336 m!339645))

(declare-fun m!339647 () Bool)

(assert (=> b!269337 m!339647))

(assert (=> b!268952 d!78086))

(declare-fun bs!29827 () Bool)

(declare-fun d!78088 () Bool)

(assert (= bs!29827 (and d!78088 b!268954)))

(declare-fun lambda!9111 () Int)

(assert (=> bs!29827 (not (= lambda!9111 lambda!9080))))

(declare-fun bs!29828 () Bool)

(assert (= bs!29828 (and d!78088 b!269171)))

(assert (=> bs!29828 (= lambda!9111 lambda!9094)))

(declare-fun bs!29829 () Bool)

(assert (= bs!29829 (and d!78088 d!78038)))

(assert (=> bs!29829 (not (= lambda!9111 lambda!9100))))

(declare-fun bs!29830 () Bool)

(assert (= bs!29830 (and d!78088 b!269296)))

(assert (=> bs!29830 (= lambda!9111 lambda!9101)))

(declare-fun b!269394 () Bool)

(declare-fun e!167379 () Bool)

(assert (=> b!269394 (= e!167379 true)))

(declare-fun b!269393 () Bool)

(declare-fun e!167378 () Bool)

(assert (=> b!269393 (= e!167378 e!167379)))

(declare-fun b!269392 () Bool)

(declare-fun e!167377 () Bool)

(assert (=> b!269392 (= e!167377 e!167378)))

(assert (=> d!78088 e!167377))

(assert (= b!269393 b!269394))

(assert (= b!269392 b!269393))

(assert (= (and d!78088 ((_ is Cons!3820) rules!1920)) b!269392))

(assert (=> b!269394 (< (dynLambda!1953 order!2933 (toValue!1464 (transformation!729 (h!9217 rules!1920)))) (dynLambda!1954 order!2935 lambda!9111))))

(assert (=> b!269394 (< (dynLambda!1955 order!2937 (toChars!1323 (transformation!729 (h!9217 rules!1920)))) (dynLambda!1954 order!2935 lambda!9111))))

(assert (=> d!78088 true))

(declare-fun e!167374 () Bool)

(assert (=> d!78088 e!167374))

(declare-fun res!123201 () Bool)

(assert (=> d!78088 (=> (not res!123201) (not e!167374))))

(declare-fun lt!110630 () Bool)

(assert (=> d!78088 (= res!123201 (= lt!110630 (forall!956 (list!1560 lt!110395) lambda!9111)))))

(declare-fun forall!957 (BalanceConc!2570 Int) Bool)

(assert (=> d!78088 (= lt!110630 (forall!957 lt!110395 lambda!9111))))

(assert (=> d!78088 (not (isEmpty!2413 rules!1920))))

(assert (=> d!78088 (= (rulesProduceEachTokenIndividually!407 thiss!17480 rules!1920 lt!110395) lt!110630)))

(declare-fun b!269389 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!226 (LexerInterface!615 List!3830 List!3829) Bool)

(assert (=> b!269389 (= e!167374 (= lt!110630 (rulesProduceEachTokenIndividuallyList!226 thiss!17480 rules!1920 (list!1560 lt!110395))))))

(assert (= (and d!78088 res!123201) b!269389))

(declare-fun m!339661 () Bool)

(assert (=> d!78088 m!339661))

(assert (=> d!78088 m!339661))

(declare-fun m!339663 () Bool)

(assert (=> d!78088 m!339663))

(declare-fun m!339665 () Bool)

(assert (=> d!78088 m!339665))

(assert (=> d!78088 m!338965))

(assert (=> b!269389 m!339661))

(assert (=> b!269389 m!339661))

(declare-fun m!339667 () Bool)

(assert (=> b!269389 m!339667))

(assert (=> b!268963 d!78088))

(declare-fun d!78092 () Bool)

(assert (=> d!78092 (= (seqFromList!826 tokens!465) (fromListB!317 tokens!465))))

(declare-fun bs!29831 () Bool)

(assert (= bs!29831 d!78092))

(declare-fun m!339669 () Bool)

(assert (=> bs!29831 m!339669))

(assert (=> b!268963 d!78092))

(declare-fun d!78094 () Bool)

(assert (=> d!78094 (= (list!1557 lt!110392) (list!1561 (c!50914 lt!110392)))))

(declare-fun bs!29832 () Bool)

(assert (= bs!29832 d!78094))

(declare-fun m!339671 () Bool)

(assert (=> bs!29832 m!339671))

(assert (=> b!268962 d!78094))

(declare-fun d!78096 () Bool)

(declare-fun e!167389 () Bool)

(assert (=> d!78096 e!167389))

(declare-fun res!123204 () Bool)

(assert (=> d!78096 (=> (not res!123204) (not e!167389))))

(declare-fun lt!110633 () BalanceConc!2570)

(assert (=> d!78096 (= res!123204 (= (list!1560 lt!110633) (Cons!3819 (h!9216 tokens!465) Nil!3819)))))

(declare-fun singleton!111 (Token!1202) BalanceConc!2570)

(assert (=> d!78096 (= lt!110633 (singleton!111 (h!9216 tokens!465)))))

(assert (=> d!78096 (= (singletonSeq!275 (h!9216 tokens!465)) lt!110633)))

(declare-fun b!269405 () Bool)

(declare-fun isBalanced!348 (Conc!1281) Bool)

(assert (=> b!269405 (= e!167389 (isBalanced!348 (c!50916 lt!110633)))))

(assert (= (and d!78096 res!123204) b!269405))

(declare-fun m!339681 () Bool)

(assert (=> d!78096 m!339681))

(declare-fun m!339683 () Bool)

(assert (=> d!78096 m!339683))

(declare-fun m!339685 () Bool)

(assert (=> b!269405 m!339685))

(assert (=> b!268962 d!78096))

(declare-fun d!78100 () Bool)

(declare-fun c!51008 () Bool)

(assert (=> d!78100 (= c!51008 ((_ is Cons!3819) (Cons!3819 (h!9216 tokens!465) Nil!3819)))))

(declare-fun e!167392 () List!3827)

(assert (=> d!78100 (= (printList!291 thiss!17480 (Cons!3819 (h!9216 tokens!465) Nil!3819)) e!167392)))

(declare-fun b!269410 () Bool)

(assert (=> b!269410 (= e!167392 (++!994 (list!1557 (charsOf!374 (h!9216 (Cons!3819 (h!9216 tokens!465) Nil!3819)))) (printList!291 thiss!17480 (t!38155 (Cons!3819 (h!9216 tokens!465) Nil!3819)))))))

(declare-fun b!269411 () Bool)

(assert (=> b!269411 (= e!167392 Nil!3817)))

(assert (= (and d!78100 c!51008) b!269410))

(assert (= (and d!78100 (not c!51008)) b!269411))

(declare-fun m!339687 () Bool)

(assert (=> b!269410 m!339687))

(assert (=> b!269410 m!339687))

(declare-fun m!339689 () Bool)

(assert (=> b!269410 m!339689))

(declare-fun m!339691 () Bool)

(assert (=> b!269410 m!339691))

(assert (=> b!269410 m!339689))

(assert (=> b!269410 m!339691))

(declare-fun m!339693 () Bool)

(assert (=> b!269410 m!339693))

(assert (=> b!268962 d!78100))

(declare-fun d!78102 () Bool)

(declare-fun lt!110636 () BalanceConc!2568)

(assert (=> d!78102 (= (list!1557 lt!110636) (printList!291 thiss!17480 (list!1560 lt!110399)))))

(assert (=> d!78102 (= lt!110636 (printTailRec!303 thiss!17480 lt!110399 0 (BalanceConc!2569 Empty!1280)))))

(assert (=> d!78102 (= (print!340 thiss!17480 lt!110399) lt!110636)))

(declare-fun bs!29834 () Bool)

(assert (= bs!29834 d!78102))

(declare-fun m!339695 () Bool)

(assert (=> bs!29834 m!339695))

(declare-fun m!339697 () Bool)

(assert (=> bs!29834 m!339697))

(assert (=> bs!29834 m!339697))

(declare-fun m!339699 () Bool)

(assert (=> bs!29834 m!339699))

(assert (=> bs!29834 m!338969))

(assert (=> b!268962 d!78102))

(declare-fun d!78104 () Bool)

(declare-fun lt!110654 () BalanceConc!2568)

(declare-fun printListTailRec!127 (LexerInterface!615 List!3829 List!3827) List!3827)

(assert (=> d!78104 (= (list!1557 lt!110654) (printListTailRec!127 thiss!17480 (dropList!162 lt!110399 0) (list!1557 (BalanceConc!2569 Empty!1280))))))

(declare-fun e!167398 () BalanceConc!2568)

(assert (=> d!78104 (= lt!110654 e!167398)))

(declare-fun c!51011 () Bool)

(assert (=> d!78104 (= c!51011 (>= 0 (size!3041 lt!110399)))))

(declare-fun e!167397 () Bool)

(assert (=> d!78104 e!167397))

(declare-fun res!123207 () Bool)

(assert (=> d!78104 (=> (not res!123207) (not e!167397))))

(assert (=> d!78104 (= res!123207 (>= 0 0))))

(assert (=> d!78104 (= (printTailRec!303 thiss!17480 lt!110399 0 (BalanceConc!2569 Empty!1280)) lt!110654)))

(declare-fun b!269418 () Bool)

(assert (=> b!269418 (= e!167397 (<= 0 (size!3041 lt!110399)))))

(declare-fun b!269419 () Bool)

(assert (=> b!269419 (= e!167398 (BalanceConc!2569 Empty!1280))))

(declare-fun b!269420 () Bool)

(assert (=> b!269420 (= e!167398 (printTailRec!303 thiss!17480 lt!110399 (+ 0 1) (++!996 (BalanceConc!2569 Empty!1280) (charsOf!374 (apply!765 lt!110399 0)))))))

(declare-fun lt!110656 () List!3829)

(assert (=> b!269420 (= lt!110656 (list!1560 lt!110399))))

(declare-fun lt!110652 () Unit!4874)

(assert (=> b!269420 (= lt!110652 (lemmaDropApply!202 lt!110656 0))))

(assert (=> b!269420 (= (head!886 (drop!215 lt!110656 0)) (apply!766 lt!110656 0))))

(declare-fun lt!110655 () Unit!4874)

(assert (=> b!269420 (= lt!110655 lt!110652)))

(declare-fun lt!110657 () List!3829)

(assert (=> b!269420 (= lt!110657 (list!1560 lt!110399))))

(declare-fun lt!110651 () Unit!4874)

(assert (=> b!269420 (= lt!110651 (lemmaDropTail!194 lt!110657 0))))

(assert (=> b!269420 (= (tail!476 (drop!215 lt!110657 0)) (drop!215 lt!110657 (+ 0 1)))))

(declare-fun lt!110653 () Unit!4874)

(assert (=> b!269420 (= lt!110653 lt!110651)))

(assert (= (and d!78104 res!123207) b!269418))

(assert (= (and d!78104 c!51011) b!269419))

(assert (= (and d!78104 (not c!51011)) b!269420))

(declare-fun m!339701 () Bool)

(assert (=> d!78104 m!339701))

(declare-fun m!339703 () Bool)

(assert (=> d!78104 m!339703))

(declare-fun m!339705 () Bool)

(assert (=> d!78104 m!339705))

(declare-fun m!339707 () Bool)

(assert (=> d!78104 m!339707))

(assert (=> d!78104 m!339703))

(declare-fun m!339709 () Bool)

(assert (=> d!78104 m!339709))

(assert (=> d!78104 m!339707))

(assert (=> b!269418 m!339705))

(declare-fun m!339711 () Bool)

(assert (=> b!269420 m!339711))

(declare-fun m!339713 () Bool)

(assert (=> b!269420 m!339713))

(declare-fun m!339715 () Bool)

(assert (=> b!269420 m!339715))

(declare-fun m!339717 () Bool)

(assert (=> b!269420 m!339717))

(declare-fun m!339719 () Bool)

(assert (=> b!269420 m!339719))

(declare-fun m!339721 () Bool)

(assert (=> b!269420 m!339721))

(declare-fun m!339723 () Bool)

(assert (=> b!269420 m!339723))

(declare-fun m!339725 () Bool)

(assert (=> b!269420 m!339725))

(assert (=> b!269420 m!339715))

(declare-fun m!339727 () Bool)

(assert (=> b!269420 m!339727))

(assert (=> b!269420 m!339723))

(declare-fun m!339729 () Bool)

(assert (=> b!269420 m!339729))

(assert (=> b!269420 m!339697))

(declare-fun m!339731 () Bool)

(assert (=> b!269420 m!339731))

(declare-fun m!339733 () Bool)

(assert (=> b!269420 m!339733))

(assert (=> b!269420 m!339725))

(assert (=> b!269420 m!339721))

(assert (=> b!269420 m!339717))

(assert (=> b!268962 d!78104))

(declare-fun d!78106 () Bool)

(declare-fun res!123208 () Bool)

(declare-fun e!167399 () Bool)

(assert (=> d!78106 (=> (not res!123208) (not e!167399))))

(assert (=> d!78106 (= res!123208 (not (isEmpty!2420 (originalCharacters!772 separatorToken!170))))))

(assert (=> d!78106 (= (inv!4721 separatorToken!170) e!167399)))

(declare-fun b!269421 () Bool)

(declare-fun res!123209 () Bool)

(assert (=> b!269421 (=> (not res!123209) (not e!167399))))

(assert (=> b!269421 (= res!123209 (= (originalCharacters!772 separatorToken!170) (list!1557 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (value!25092 separatorToken!170)))))))

(declare-fun b!269422 () Bool)

(assert (=> b!269422 (= e!167399 (= (size!3037 separatorToken!170) (size!3043 (originalCharacters!772 separatorToken!170))))))

(assert (= (and d!78106 res!123208) b!269421))

(assert (= (and b!269421 res!123209) b!269422))

(declare-fun b_lambda!8521 () Bool)

(assert (=> (not b_lambda!8521) (not b!269421)))

(assert (=> b!269421 t!38185))

(declare-fun b_and!21411 () Bool)

(assert (= b_and!21397 (and (=> t!38185 result!18682) b_and!21411)))

(assert (=> b!269421 t!38187))

(declare-fun b_and!21413 () Bool)

(assert (= b_and!21399 (and (=> t!38187 result!18686) b_and!21413)))

(assert (=> b!269421 t!38189))

(declare-fun b_and!21415 () Bool)

(assert (= b_and!21401 (and (=> t!38189 result!18688) b_and!21415)))

(declare-fun m!339735 () Bool)

(assert (=> d!78106 m!339735))

(assert (=> b!269421 m!339597))

(assert (=> b!269421 m!339597))

(declare-fun m!339737 () Bool)

(assert (=> b!269421 m!339737))

(declare-fun m!339739 () Bool)

(assert (=> b!269422 m!339739))

(assert (=> start!28858 d!78106))

(declare-fun d!78108 () Bool)

(assert (=> d!78108 (= (list!1557 (printWithSeparatorTokenWhenNeededRec!290 thiss!17480 rules!1920 lt!110395 separatorToken!170 0)) (list!1561 (c!50914 (printWithSeparatorTokenWhenNeededRec!290 thiss!17480 rules!1920 lt!110395 separatorToken!170 0))))))

(declare-fun bs!29835 () Bool)

(assert (= bs!29835 d!78108))

(declare-fun m!339741 () Bool)

(assert (=> bs!29835 m!339741))

(assert (=> b!268972 d!78108))

(declare-fun bs!29836 () Bool)

(declare-fun d!78110 () Bool)

(assert (= bs!29836 (and d!78110 d!78038)))

(declare-fun lambda!9112 () Int)

(assert (=> bs!29836 (= lambda!9112 lambda!9100)))

(declare-fun bs!29837 () Bool)

(assert (= bs!29837 (and d!78110 b!269171)))

(assert (=> bs!29837 (not (= lambda!9112 lambda!9094))))

(declare-fun bs!29838 () Bool)

(assert (= bs!29838 (and d!78110 d!78088)))

(assert (=> bs!29838 (not (= lambda!9112 lambda!9111))))

(declare-fun bs!29839 () Bool)

(assert (= bs!29839 (and d!78110 b!269296)))

(assert (=> bs!29839 (not (= lambda!9112 lambda!9101))))

(declare-fun bs!29840 () Bool)

(assert (= bs!29840 (and d!78110 b!268954)))

(assert (=> bs!29840 (= lambda!9112 lambda!9080)))

(declare-fun bs!29841 () Bool)

(declare-fun b!269430 () Bool)

(assert (= bs!29841 (and b!269430 d!78038)))

(declare-fun lambda!9113 () Int)

(assert (=> bs!29841 (not (= lambda!9113 lambda!9100))))

(declare-fun bs!29842 () Bool)

(assert (= bs!29842 (and b!269430 b!269171)))

(assert (=> bs!29842 (= lambda!9113 lambda!9094)))

(declare-fun bs!29843 () Bool)

(assert (= bs!29843 (and b!269430 d!78088)))

(assert (=> bs!29843 (= lambda!9113 lambda!9111)))

(declare-fun bs!29844 () Bool)

(assert (= bs!29844 (and b!269430 b!269296)))

(assert (=> bs!29844 (= lambda!9113 lambda!9101)))

(declare-fun bs!29845 () Bool)

(assert (= bs!29845 (and b!269430 d!78110)))

(assert (=> bs!29845 (not (= lambda!9113 lambda!9112))))

(declare-fun bs!29846 () Bool)

(assert (= bs!29846 (and b!269430 b!268954)))

(assert (=> bs!29846 (not (= lambda!9113 lambda!9080))))

(declare-fun b!269434 () Bool)

(declare-fun e!167408 () Bool)

(assert (=> b!269434 (= e!167408 true)))

(declare-fun b!269433 () Bool)

(declare-fun e!167407 () Bool)

(assert (=> b!269433 (= e!167407 e!167408)))

(declare-fun b!269432 () Bool)

(declare-fun e!167406 () Bool)

(assert (=> b!269432 (= e!167406 e!167407)))

(assert (=> b!269430 e!167406))

(assert (= b!269433 b!269434))

(assert (= b!269432 b!269433))

(assert (= (and b!269430 ((_ is Cons!3820) rules!1920)) b!269432))

(assert (=> b!269434 (< (dynLambda!1953 order!2933 (toValue!1464 (transformation!729 (h!9217 rules!1920)))) (dynLambda!1954 order!2935 lambda!9113))))

(assert (=> b!269434 (< (dynLambda!1955 order!2937 (toChars!1323 (transformation!729 (h!9217 rules!1920)))) (dynLambda!1954 order!2935 lambda!9113))))

(assert (=> b!269430 true))

(declare-fun b!269423 () Bool)

(declare-fun e!167405 () BalanceConc!2568)

(declare-fun call!14704 () BalanceConc!2568)

(assert (=> b!269423 (= e!167405 call!14704)))

(declare-fun b!269424 () Bool)

(declare-fun e!167404 () BalanceConc!2568)

(assert (=> b!269424 (= e!167404 (BalanceConc!2569 Empty!1280))))

(declare-fun c!51013 () Bool)

(declare-fun bm!14698 () Bool)

(declare-fun call!14706 () Token!1202)

(declare-fun call!14703 () BalanceConc!2568)

(declare-fun call!14705 () Token!1202)

(assert (=> bm!14698 (= call!14703 (charsOf!374 (ite c!51013 call!14705 call!14706)))))

(declare-fun b!269425 () Bool)

(declare-fun e!167401 () Bool)

(assert (=> b!269425 (= e!167401 (<= 0 (size!3041 lt!110395)))))

(declare-fun b!269426 () Bool)

(declare-fun e!167402 () Bool)

(declare-fun lt!110667 () Option!809)

(assert (=> b!269426 (= e!167402 (= (_1!2359 (v!14677 lt!110667)) (apply!765 lt!110395 0)))))

(declare-fun b!269427 () Bool)

(declare-fun e!167403 () BalanceConc!2568)

(declare-fun lt!110671 () BalanceConc!2568)

(assert (=> b!269427 (= e!167403 (++!996 call!14704 lt!110671))))

(declare-fun b!269428 () Bool)

(declare-fun c!51014 () Bool)

(declare-fun e!167400 () Bool)

(assert (=> b!269428 (= c!51014 e!167400)))

(declare-fun res!123212 () Bool)

(assert (=> b!269428 (=> (not res!123212) (not e!167400))))

(assert (=> b!269428 (= res!123212 ((_ is Some!808) lt!110667))))

(assert (=> b!269428 (= e!167405 e!167403)))

(declare-fun bm!14699 () Bool)

(assert (=> bm!14699 (= call!14705 (apply!765 lt!110395 0))))

(declare-fun lt!110665 () BalanceConc!2568)

(assert (=> d!78110 (= (list!1557 lt!110665) (printWithSeparatorTokenWhenNeededList!298 thiss!17480 rules!1920 (dropList!162 lt!110395 0) separatorToken!170))))

(assert (=> d!78110 (= lt!110665 e!167404)))

(declare-fun c!51012 () Bool)

(assert (=> d!78110 (= c!51012 (>= 0 (size!3041 lt!110395)))))

(declare-fun lt!110664 () Unit!4874)

(assert (=> d!78110 (= lt!110664 (lemmaContentSubsetPreservesForall!106 (list!1560 lt!110395) (dropList!162 lt!110395 0) lambda!9112))))

(assert (=> d!78110 e!167401))

(declare-fun res!123210 () Bool)

(assert (=> d!78110 (=> (not res!123210) (not e!167401))))

(assert (=> d!78110 (= res!123210 (>= 0 0))))

(assert (=> d!78110 (= (printWithSeparatorTokenWhenNeededRec!290 thiss!17480 rules!1920 lt!110395 separatorToken!170 0) lt!110665)))

(declare-fun b!269429 () Bool)

(assert (=> b!269429 (= e!167400 (not (= (_1!2359 (v!14677 lt!110667)) call!14705)))))

(assert (=> b!269430 (= e!167404 e!167405)))

(declare-fun lt!110670 () List!3829)

(assert (=> b!269430 (= lt!110670 (list!1560 lt!110395))))

(declare-fun lt!110663 () Unit!4874)

(assert (=> b!269430 (= lt!110663 (lemmaDropApply!202 lt!110670 0))))

(assert (=> b!269430 (= (head!886 (drop!215 lt!110670 0)) (apply!766 lt!110670 0))))

(declare-fun lt!110666 () Unit!4874)

(assert (=> b!269430 (= lt!110666 lt!110663)))

(declare-fun lt!110669 () List!3829)

(assert (=> b!269430 (= lt!110669 (list!1560 lt!110395))))

(declare-fun lt!110662 () Unit!4874)

(assert (=> b!269430 (= lt!110662 (lemmaDropTail!194 lt!110669 0))))

(assert (=> b!269430 (= (tail!476 (drop!215 lt!110669 0)) (drop!215 lt!110669 (+ 0 1)))))

(declare-fun lt!110661 () Unit!4874)

(assert (=> b!269430 (= lt!110661 lt!110662)))

(declare-fun lt!110659 () Unit!4874)

(assert (=> b!269430 (= lt!110659 (forallContained!284 (list!1560 lt!110395) lambda!9113 (apply!765 lt!110395 0)))))

(assert (=> b!269430 (= lt!110671 (printWithSeparatorTokenWhenNeededRec!290 thiss!17480 rules!1920 lt!110395 separatorToken!170 (+ 0 1)))))

(assert (=> b!269430 (= lt!110667 (maxPrefixZipperSequence!296 thiss!17480 rules!1920 (++!996 (charsOf!374 (apply!765 lt!110395 0)) lt!110671)))))

(declare-fun res!123211 () Bool)

(assert (=> b!269430 (= res!123211 ((_ is Some!808) lt!110667))))

(assert (=> b!269430 (=> (not res!123211) (not e!167402))))

(assert (=> b!269430 (= c!51013 e!167402)))

(declare-fun call!14707 () BalanceConc!2568)

(declare-fun bm!14700 () Bool)

(assert (=> bm!14700 (= call!14707 (charsOf!374 (ite c!51014 separatorToken!170 call!14706)))))

(declare-fun bm!14701 () Bool)

(assert (=> bm!14701 (= call!14706 call!14705)))

(declare-fun bm!14702 () Bool)

(assert (=> bm!14702 (= call!14704 (++!996 call!14703 (ite c!51013 lt!110671 call!14707)))))

(declare-fun b!269431 () Bool)

(assert (=> b!269431 (= e!167403 (BalanceConc!2569 Empty!1280))))

(assert (=> b!269431 (= (print!340 thiss!17480 (singletonSeq!275 call!14706)) (printTailRec!303 thiss!17480 (singletonSeq!275 call!14706) 0 (BalanceConc!2569 Empty!1280)))))

(declare-fun lt!110668 () Unit!4874)

(declare-fun Unit!4888 () Unit!4874)

(assert (=> b!269431 (= lt!110668 Unit!4888)))

(declare-fun lt!110658 () Unit!4874)

(assert (=> b!269431 (= lt!110658 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!110 thiss!17480 rules!1920 (list!1557 call!14707) (list!1557 lt!110671)))))

(assert (=> b!269431 false))

(declare-fun lt!110660 () Unit!4874)

(declare-fun Unit!4889 () Unit!4874)

(assert (=> b!269431 (= lt!110660 Unit!4889)))

(assert (= (and d!78110 res!123210) b!269425))

(assert (= (and d!78110 c!51012) b!269424))

(assert (= (and d!78110 (not c!51012)) b!269430))

(assert (= (and b!269430 res!123211) b!269426))

(assert (= (and b!269430 c!51013) b!269423))

(assert (= (and b!269430 (not c!51013)) b!269428))

(assert (= (and b!269428 res!123212) b!269429))

(assert (= (and b!269428 c!51014) b!269427))

(assert (= (and b!269428 (not c!51014)) b!269431))

(assert (= (or b!269427 b!269431) bm!14701))

(assert (= (or b!269427 b!269431) bm!14700))

(assert (= (or b!269423 b!269429 bm!14701) bm!14699))

(assert (= (or b!269423 b!269427) bm!14698))

(assert (= (or b!269423 b!269427) bm!14702))

(declare-fun m!339743 () Bool)

(assert (=> bm!14702 m!339743))

(declare-fun m!339745 () Bool)

(assert (=> b!269430 m!339745))

(declare-fun m!339747 () Bool)

(assert (=> b!269430 m!339747))

(declare-fun m!339749 () Bool)

(assert (=> b!269430 m!339749))

(declare-fun m!339751 () Bool)

(assert (=> b!269430 m!339751))

(assert (=> b!269430 m!339661))

(declare-fun m!339753 () Bool)

(assert (=> b!269430 m!339753))

(declare-fun m!339755 () Bool)

(assert (=> b!269430 m!339755))

(declare-fun m!339757 () Bool)

(assert (=> b!269430 m!339757))

(declare-fun m!339759 () Bool)

(assert (=> b!269430 m!339759))

(assert (=> b!269430 m!339753))

(assert (=> b!269430 m!339749))

(declare-fun m!339761 () Bool)

(assert (=> b!269430 m!339761))

(declare-fun m!339763 () Bool)

(assert (=> b!269430 m!339763))

(assert (=> b!269430 m!339661))

(declare-fun m!339765 () Bool)

(assert (=> b!269430 m!339765))

(declare-fun m!339767 () Bool)

(assert (=> b!269430 m!339767))

(assert (=> b!269430 m!339753))

(declare-fun m!339769 () Bool)

(assert (=> b!269430 m!339769))

(assert (=> b!269430 m!339761))

(assert (=> b!269430 m!339769))

(assert (=> b!269430 m!339765))

(declare-fun m!339771 () Bool)

(assert (=> b!269430 m!339771))

(declare-fun m!339773 () Bool)

(assert (=> b!269431 m!339773))

(declare-fun m!339775 () Bool)

(assert (=> b!269431 m!339775))

(declare-fun m!339777 () Bool)

(assert (=> b!269431 m!339777))

(assert (=> b!269431 m!339773))

(declare-fun m!339779 () Bool)

(assert (=> b!269431 m!339779))

(declare-fun m!339781 () Bool)

(assert (=> b!269431 m!339781))

(assert (=> b!269431 m!339775))

(declare-fun m!339783 () Bool)

(assert (=> b!269431 m!339783))

(assert (=> b!269431 m!339775))

(assert (=> b!269431 m!339779))

(declare-fun m!339785 () Bool)

(assert (=> d!78110 m!339785))

(declare-fun m!339787 () Bool)

(assert (=> d!78110 m!339787))

(assert (=> d!78110 m!339661))

(assert (=> d!78110 m!339785))

(declare-fun m!339789 () Bool)

(assert (=> d!78110 m!339789))

(assert (=> d!78110 m!339661))

(declare-fun m!339791 () Bool)

(assert (=> d!78110 m!339791))

(declare-fun m!339793 () Bool)

(assert (=> d!78110 m!339793))

(assert (=> d!78110 m!339785))

(assert (=> b!269426 m!339753))

(assert (=> bm!14699 m!339753))

(assert (=> b!269425 m!339793))

(declare-fun m!339795 () Bool)

(assert (=> b!269427 m!339795))

(declare-fun m!339797 () Bool)

(assert (=> bm!14700 m!339797))

(declare-fun m!339799 () Bool)

(assert (=> bm!14698 m!339799))

(assert (=> b!268972 d!78110))

(declare-fun bs!29847 () Bool)

(declare-fun b!269439 () Bool)

(assert (= bs!29847 (and b!269439 d!78038)))

(declare-fun lambda!9114 () Int)

(assert (=> bs!29847 (not (= lambda!9114 lambda!9100))))

(declare-fun bs!29848 () Bool)

(assert (= bs!29848 (and b!269439 b!269430)))

(assert (=> bs!29848 (= lambda!9114 lambda!9113)))

(declare-fun bs!29849 () Bool)

(assert (= bs!29849 (and b!269439 b!269171)))

(assert (=> bs!29849 (= lambda!9114 lambda!9094)))

(declare-fun bs!29850 () Bool)

(assert (= bs!29850 (and b!269439 d!78088)))

(assert (=> bs!29850 (= lambda!9114 lambda!9111)))

(declare-fun bs!29851 () Bool)

(assert (= bs!29851 (and b!269439 b!269296)))

(assert (=> bs!29851 (= lambda!9114 lambda!9101)))

(declare-fun bs!29852 () Bool)

(assert (= bs!29852 (and b!269439 d!78110)))

(assert (=> bs!29852 (not (= lambda!9114 lambda!9112))))

(declare-fun bs!29853 () Bool)

(assert (= bs!29853 (and b!269439 b!268954)))

(assert (=> bs!29853 (not (= lambda!9114 lambda!9080))))

(declare-fun b!269447 () Bool)

(declare-fun e!167416 () Bool)

(assert (=> b!269447 (= e!167416 true)))

(declare-fun b!269446 () Bool)

(declare-fun e!167415 () Bool)

(assert (=> b!269446 (= e!167415 e!167416)))

(declare-fun b!269445 () Bool)

(declare-fun e!167414 () Bool)

(assert (=> b!269445 (= e!167414 e!167415)))

(assert (=> b!269439 e!167414))

(assert (= b!269446 b!269447))

(assert (= b!269445 b!269446))

(assert (= (and b!269439 ((_ is Cons!3820) rules!1920)) b!269445))

(assert (=> b!269447 (< (dynLambda!1953 order!2933 (toValue!1464 (transformation!729 (h!9217 rules!1920)))) (dynLambda!1954 order!2935 lambda!9114))))

(assert (=> b!269447 (< (dynLambda!1955 order!2937 (toChars!1323 (transformation!729 (h!9217 rules!1920)))) (dynLambda!1954 order!2935 lambda!9114))))

(assert (=> b!269439 true))

(declare-fun b!269435 () Bool)

(declare-fun e!167409 () List!3827)

(declare-fun call!14709 () List!3827)

(declare-fun lt!110676 () List!3827)

(assert (=> b!269435 (= e!167409 (++!994 call!14709 lt!110676))))

(declare-fun bm!14703 () Bool)

(declare-fun call!14710 () List!3827)

(declare-fun call!14708 () List!3827)

(assert (=> bm!14703 (= call!14710 call!14708)))

(declare-fun c!51016 () Bool)

(declare-fun c!51015 () Bool)

(assert (=> bm!14703 (= c!51016 c!51015)))

(declare-fun b!269436 () Bool)

(declare-fun e!167412 () List!3827)

(assert (=> b!269436 (= e!167412 Nil!3817)))

(declare-fun bm!14704 () Bool)

(declare-fun call!14712 () BalanceConc!2568)

(assert (=> bm!14704 (= call!14712 (charsOf!374 (h!9216 tokens!465)))))

(declare-fun b!269437 () Bool)

(declare-fun e!167411 () BalanceConc!2568)

(declare-fun call!14711 () BalanceConc!2568)

(assert (=> b!269437 (= e!167411 call!14711)))

(declare-fun b!269438 () Bool)

(declare-fun lt!110672 () Option!808)

(assert (=> b!269438 (= c!51015 (and ((_ is Some!807) lt!110672) (not (= (_1!2358 (v!14676 lt!110672)) (h!9216 tokens!465)))))))

(declare-fun e!167413 () List!3827)

(assert (=> b!269438 (= e!167413 e!167409)))

(assert (=> b!269439 (= e!167412 e!167413)))

(declare-fun lt!110673 () Unit!4874)

(assert (=> b!269439 (= lt!110673 (forallContained!284 tokens!465 lambda!9114 (h!9216 tokens!465)))))

(assert (=> b!269439 (= lt!110676 (printWithSeparatorTokenWhenNeededList!298 thiss!17480 rules!1920 (t!38155 tokens!465) separatorToken!170))))

(assert (=> b!269439 (= lt!110672 (maxPrefix!333 thiss!17480 rules!1920 (++!994 (list!1557 (charsOf!374 (h!9216 tokens!465))) lt!110676)))))

(declare-fun c!51018 () Bool)

(assert (=> b!269439 (= c!51018 (and ((_ is Some!807) lt!110672) (= (_1!2358 (v!14676 lt!110672)) (h!9216 tokens!465))))))

(declare-fun bm!14705 () Bool)

(assert (=> bm!14705 (= call!14708 (list!1557 (ite c!51018 call!14712 e!167411)))))

(declare-fun bm!14706 () Bool)

(declare-fun c!51017 () Bool)

(assert (=> bm!14706 (= c!51017 c!51018)))

(declare-fun e!167410 () List!3827)

(assert (=> bm!14706 (= call!14709 (++!994 e!167410 (ite c!51018 lt!110676 call!14710)))))

(declare-fun b!269440 () Bool)

(assert (=> b!269440 (= e!167409 Nil!3817)))

(assert (=> b!269440 (= (print!340 thiss!17480 (singletonSeq!275 (h!9216 tokens!465))) (printTailRec!303 thiss!17480 (singletonSeq!275 (h!9216 tokens!465)) 0 (BalanceConc!2569 Empty!1280)))))

(declare-fun lt!110674 () Unit!4874)

(declare-fun Unit!4890 () Unit!4874)

(assert (=> b!269440 (= lt!110674 Unit!4890)))

(declare-fun lt!110675 () Unit!4874)

(assert (=> b!269440 (= lt!110675 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!110 thiss!17480 rules!1920 call!14710 lt!110676))))

(assert (=> b!269440 false))

(declare-fun lt!110677 () Unit!4874)

(declare-fun Unit!4891 () Unit!4874)

(assert (=> b!269440 (= lt!110677 Unit!4891)))

(declare-fun d!78112 () Bool)

(declare-fun c!51019 () Bool)

(assert (=> d!78112 (= c!51019 ((_ is Cons!3819) tokens!465))))

(assert (=> d!78112 (= (printWithSeparatorTokenWhenNeededList!298 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!167412)))

(declare-fun b!269441 () Bool)

(assert (=> b!269441 (= e!167410 (list!1557 call!14711))))

(declare-fun bm!14707 () Bool)

(assert (=> bm!14707 (= call!14711 call!14712)))

(declare-fun b!269442 () Bool)

(assert (=> b!269442 (= e!167410 call!14708)))

(declare-fun b!269443 () Bool)

(assert (=> b!269443 (= e!167413 call!14709)))

(declare-fun b!269444 () Bool)

(assert (=> b!269444 (= e!167411 (charsOf!374 separatorToken!170))))

(assert (= (and d!78112 c!51019) b!269439))

(assert (= (and d!78112 (not c!51019)) b!269436))

(assert (= (and b!269439 c!51018) b!269443))

(assert (= (and b!269439 (not c!51018)) b!269438))

(assert (= (and b!269438 c!51015) b!269435))

(assert (= (and b!269438 (not c!51015)) b!269440))

(assert (= (or b!269435 b!269440) bm!14707))

(assert (= (or b!269435 b!269440) bm!14703))

(assert (= (and bm!14703 c!51016) b!269444))

(assert (= (and bm!14703 (not c!51016)) b!269437))

(assert (= (or b!269443 bm!14707) bm!14704))

(assert (= (or b!269443 bm!14703) bm!14705))

(assert (= (or b!269443 b!269435) bm!14706))

(assert (= (and bm!14706 c!51017) b!269442))

(assert (= (and bm!14706 (not c!51017)) b!269441))

(assert (=> b!269444 m!338937))

(declare-fun m!339801 () Bool)

(assert (=> b!269439 m!339801))

(declare-fun m!339803 () Bool)

(assert (=> b!269439 m!339803))

(declare-fun m!339805 () Bool)

(assert (=> b!269439 m!339805))

(assert (=> b!269439 m!338943))

(assert (=> b!269439 m!338953))

(assert (=> b!269439 m!338935))

(assert (=> b!269439 m!338953))

(assert (=> b!269439 m!339803))

(assert (=> b!269439 m!338943))

(declare-fun m!339807 () Bool)

(assert (=> bm!14705 m!339807))

(declare-fun m!339809 () Bool)

(assert (=> bm!14706 m!339809))

(assert (=> b!269440 m!338975))

(assert (=> b!269440 m!338975))

(assert (=> b!269440 m!339099))

(assert (=> b!269440 m!338975))

(declare-fun m!339811 () Bool)

(assert (=> b!269440 m!339811))

(declare-fun m!339813 () Bool)

(assert (=> b!269440 m!339813))

(declare-fun m!339815 () Bool)

(assert (=> b!269435 m!339815))

(declare-fun m!339817 () Bool)

(assert (=> b!269441 m!339817))

(assert (=> bm!14704 m!338943))

(assert (=> b!268972 d!78112))

(declare-fun lt!110678 () List!3827)

(declare-fun b!269451 () Bool)

(declare-fun e!167418 () Bool)

(assert (=> b!269451 (= e!167418 (or (not (= lt!110403 Nil!3817)) (= lt!110678 lt!110396)))))

(declare-fun b!269449 () Bool)

(declare-fun e!167417 () List!3827)

(assert (=> b!269449 (= e!167417 (Cons!3817 (h!9214 lt!110396) (++!994 (t!38153 lt!110396) lt!110403)))))

(declare-fun d!78114 () Bool)

(assert (=> d!78114 e!167418))

(declare-fun res!123214 () Bool)

(assert (=> d!78114 (=> (not res!123214) (not e!167418))))

(assert (=> d!78114 (= res!123214 (= (content!547 lt!110678) ((_ map or) (content!547 lt!110396) (content!547 lt!110403))))))

(assert (=> d!78114 (= lt!110678 e!167417)))

(declare-fun c!51020 () Bool)

(assert (=> d!78114 (= c!51020 ((_ is Nil!3817) lt!110396))))

(assert (=> d!78114 (= (++!994 lt!110396 lt!110403) lt!110678)))

(declare-fun b!269448 () Bool)

(assert (=> b!269448 (= e!167417 lt!110403)))

(declare-fun b!269450 () Bool)

(declare-fun res!123213 () Bool)

(assert (=> b!269450 (=> (not res!123213) (not e!167418))))

(assert (=> b!269450 (= res!123213 (= (size!3043 lt!110678) (+ (size!3043 lt!110396) (size!3043 lt!110403))))))

(assert (= (and d!78114 c!51020) b!269448))

(assert (= (and d!78114 (not c!51020)) b!269449))

(assert (= (and d!78114 res!123214) b!269450))

(assert (= (and b!269450 res!123213) b!269451))

(declare-fun m!339819 () Bool)

(assert (=> b!269449 m!339819))

(declare-fun m!339821 () Bool)

(assert (=> d!78114 m!339821))

(assert (=> d!78114 m!339377))

(assert (=> d!78114 m!339605))

(declare-fun m!339823 () Bool)

(assert (=> b!269450 m!339823))

(assert (=> b!269450 m!339383))

(assert (=> b!269450 m!339611))

(assert (=> b!268951 d!78114))

(declare-fun d!78116 () Bool)

(declare-fun res!123219 () Bool)

(declare-fun e!167423 () Bool)

(assert (=> d!78116 (=> res!123219 e!167423)))

(assert (=> d!78116 (= res!123219 (not ((_ is Cons!3820) rules!1920)))))

(assert (=> d!78116 (= (sepAndNonSepRulesDisjointChars!318 rules!1920 rules!1920) e!167423)))

(declare-fun b!269456 () Bool)

(declare-fun e!167424 () Bool)

(assert (=> b!269456 (= e!167423 e!167424)))

(declare-fun res!123220 () Bool)

(assert (=> b!269456 (=> (not res!123220) (not e!167424))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!116 (Rule!1258 List!3830) Bool)

(assert (=> b!269456 (= res!123220 (ruleDisjointCharsFromAllFromOtherType!116 (h!9217 rules!1920) rules!1920))))

(declare-fun b!269457 () Bool)

(assert (=> b!269457 (= e!167424 (sepAndNonSepRulesDisjointChars!318 rules!1920 (t!38156 rules!1920)))))

(assert (= (and d!78116 (not res!123219)) b!269456))

(assert (= (and b!269456 res!123220) b!269457))

(declare-fun m!339825 () Bool)

(assert (=> b!269456 m!339825))

(declare-fun m!339827 () Bool)

(assert (=> b!269457 m!339827))

(assert (=> b!268961 d!78116))

(declare-fun d!78118 () Bool)

(declare-fun lt!110679 () Bool)

(declare-fun e!167426 () Bool)

(assert (=> d!78118 (= lt!110679 e!167426)))

(declare-fun res!123221 () Bool)

(assert (=> d!78118 (=> (not res!123221) (not e!167426))))

(assert (=> d!78118 (= res!123221 (= (list!1560 (_1!2353 (lex!407 thiss!17480 rules!1920 (print!340 thiss!17480 (singletonSeq!275 separatorToken!170))))) (list!1560 (singletonSeq!275 separatorToken!170))))))

(declare-fun e!167425 () Bool)

(assert (=> d!78118 (= lt!110679 e!167425)))

(declare-fun res!123222 () Bool)

(assert (=> d!78118 (=> (not res!123222) (not e!167425))))

(declare-fun lt!110680 () tuple2!4274)

(assert (=> d!78118 (= res!123222 (= (size!3041 (_1!2353 lt!110680)) 1))))

(assert (=> d!78118 (= lt!110680 (lex!407 thiss!17480 rules!1920 (print!340 thiss!17480 (singletonSeq!275 separatorToken!170))))))

(assert (=> d!78118 (not (isEmpty!2413 rules!1920))))

(assert (=> d!78118 (= (rulesProduceIndividualToken!364 thiss!17480 rules!1920 separatorToken!170) lt!110679)))

(declare-fun b!269458 () Bool)

(declare-fun res!123223 () Bool)

(assert (=> b!269458 (=> (not res!123223) (not e!167425))))

(assert (=> b!269458 (= res!123223 (= (apply!765 (_1!2353 lt!110680) 0) separatorToken!170))))

(declare-fun b!269459 () Bool)

(assert (=> b!269459 (= e!167425 (isEmpty!2419 (_2!2353 lt!110680)))))

(declare-fun b!269460 () Bool)

(assert (=> b!269460 (= e!167426 (isEmpty!2419 (_2!2353 (lex!407 thiss!17480 rules!1920 (print!340 thiss!17480 (singletonSeq!275 separatorToken!170))))))))

(assert (= (and d!78118 res!123222) b!269458))

(assert (= (and b!269458 res!123223) b!269459))

(assert (= (and d!78118 res!123221) b!269460))

(declare-fun m!339829 () Bool)

(assert (=> d!78118 m!339829))

(assert (=> d!78118 m!338965))

(assert (=> d!78118 m!339829))

(declare-fun m!339831 () Bool)

(assert (=> d!78118 m!339831))

(declare-fun m!339833 () Bool)

(assert (=> d!78118 m!339833))

(assert (=> d!78118 m!339829))

(declare-fun m!339835 () Bool)

(assert (=> d!78118 m!339835))

(declare-fun m!339837 () Bool)

(assert (=> d!78118 m!339837))

(assert (=> d!78118 m!339831))

(declare-fun m!339839 () Bool)

(assert (=> d!78118 m!339839))

(declare-fun m!339841 () Bool)

(assert (=> b!269458 m!339841))

(declare-fun m!339843 () Bool)

(assert (=> b!269459 m!339843))

(assert (=> b!269460 m!339829))

(assert (=> b!269460 m!339829))

(assert (=> b!269460 m!339831))

(assert (=> b!269460 m!339831))

(assert (=> b!269460 m!339839))

(declare-fun m!339845 () Bool)

(assert (=> b!269460 m!339845))

(assert (=> b!268976 d!78118))

(declare-fun d!78120 () Bool)

(assert (=> d!78120 (= (inv!4718 (tag!939 (rule!1314 (h!9216 tokens!465)))) (= (mod (str.len (value!25091 (tag!939 (rule!1314 (h!9216 tokens!465))))) 2) 0))))

(assert (=> b!268955 d!78120))

(declare-fun d!78122 () Bool)

(declare-fun res!123224 () Bool)

(declare-fun e!167427 () Bool)

(assert (=> d!78122 (=> (not res!123224) (not e!167427))))

(assert (=> d!78122 (= res!123224 (semiInverseModEq!257 (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (toValue!1464 (transformation!729 (rule!1314 (h!9216 tokens!465))))))))

(assert (=> d!78122 (= (inv!4722 (transformation!729 (rule!1314 (h!9216 tokens!465)))) e!167427)))

(declare-fun b!269461 () Bool)

(assert (=> b!269461 (= e!167427 (equivClasses!240 (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (toValue!1464 (transformation!729 (rule!1314 (h!9216 tokens!465))))))))

(assert (= (and d!78122 res!123224) b!269461))

(declare-fun m!339847 () Bool)

(assert (=> d!78122 m!339847))

(declare-fun m!339849 () Bool)

(assert (=> b!269461 m!339849))

(assert (=> b!268955 d!78122))

(declare-fun d!78124 () Bool)

(declare-fun res!123229 () Bool)

(declare-fun e!167432 () Bool)

(assert (=> d!78124 (=> res!123229 e!167432)))

(assert (=> d!78124 (= res!123229 ((_ is Nil!3819) tokens!465))))

(assert (=> d!78124 (= (forall!956 tokens!465 lambda!9080) e!167432)))

(declare-fun b!269466 () Bool)

(declare-fun e!167433 () Bool)

(assert (=> b!269466 (= e!167432 e!167433)))

(declare-fun res!123230 () Bool)

(assert (=> b!269466 (=> (not res!123230) (not e!167433))))

(declare-fun dynLambda!1959 (Int Token!1202) Bool)

(assert (=> b!269466 (= res!123230 (dynLambda!1959 lambda!9080 (h!9216 tokens!465)))))

(declare-fun b!269467 () Bool)

(assert (=> b!269467 (= e!167433 (forall!956 (t!38155 tokens!465) lambda!9080))))

(assert (= (and d!78124 (not res!123229)) b!269466))

(assert (= (and b!269466 res!123230) b!269467))

(declare-fun b_lambda!8523 () Bool)

(assert (=> (not b_lambda!8523) (not b!269466)))

(declare-fun m!339851 () Bool)

(assert (=> b!269466 m!339851))

(declare-fun m!339853 () Bool)

(assert (=> b!269467 m!339853))

(assert (=> b!268954 d!78124))

(declare-fun d!78126 () Bool)

(assert (=> d!78126 (= (list!1557 (seqFromList!825 lt!110402)) (list!1561 (c!50914 (seqFromList!825 lt!110402))))))

(declare-fun bs!29854 () Bool)

(assert (= bs!29854 d!78126))

(declare-fun m!339855 () Bool)

(assert (=> bs!29854 m!339855))

(assert (=> b!268965 d!78126))

(declare-fun d!78128 () Bool)

(assert (=> d!78128 (= (seqFromList!825 lt!110402) (fromListB!315 lt!110402))))

(declare-fun bs!29855 () Bool)

(assert (= bs!29855 d!78128))

(declare-fun m!339857 () Bool)

(assert (=> bs!29855 m!339857))

(assert (=> b!268965 d!78128))

(declare-fun d!78130 () Bool)

(declare-fun res!123233 () Bool)

(declare-fun e!167436 () Bool)

(assert (=> d!78130 (=> (not res!123233) (not e!167436))))

(declare-fun rulesValid!223 (LexerInterface!615 List!3830) Bool)

(assert (=> d!78130 (= res!123233 (rulesValid!223 thiss!17480 rules!1920))))

(assert (=> d!78130 (= (rulesInvariant!581 thiss!17480 rules!1920) e!167436)))

(declare-fun b!269470 () Bool)

(declare-datatypes ((List!3832 0))(
  ( (Nil!3822) (Cons!3822 (h!9219 String!4835) (t!38222 List!3832)) )
))
(declare-fun noDuplicateTag!223 (LexerInterface!615 List!3830 List!3832) Bool)

(assert (=> b!269470 (= e!167436 (noDuplicateTag!223 thiss!17480 rules!1920 Nil!3822))))

(assert (= (and d!78130 res!123233) b!269470))

(declare-fun m!339859 () Bool)

(assert (=> d!78130 m!339859))

(declare-fun m!339861 () Bool)

(assert (=> b!269470 m!339861))

(assert (=> b!268975 d!78130))

(declare-fun d!78132 () Bool)

(assert (=> d!78132 (= (inv!4718 (tag!939 (rule!1314 separatorToken!170))) (= (mod (str.len (value!25091 (tag!939 (rule!1314 separatorToken!170)))) 2) 0))))

(assert (=> b!268953 d!78132))

(declare-fun d!78134 () Bool)

(declare-fun res!123234 () Bool)

(declare-fun e!167437 () Bool)

(assert (=> d!78134 (=> (not res!123234) (not e!167437))))

(assert (=> d!78134 (= res!123234 (semiInverseModEq!257 (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (toValue!1464 (transformation!729 (rule!1314 separatorToken!170)))))))

(assert (=> d!78134 (= (inv!4722 (transformation!729 (rule!1314 separatorToken!170))) e!167437)))

(declare-fun b!269471 () Bool)

(assert (=> b!269471 (= e!167437 (equivClasses!240 (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (toValue!1464 (transformation!729 (rule!1314 separatorToken!170)))))))

(assert (= (and d!78134 res!123234) b!269471))

(declare-fun m!339863 () Bool)

(assert (=> d!78134 m!339863))

(declare-fun m!339865 () Bool)

(assert (=> b!269471 m!339865))

(assert (=> b!268953 d!78134))

(declare-fun b!269482 () Bool)

(declare-fun e!167445 () Bool)

(declare-fun inv!17 (TokenValue!751) Bool)

(assert (=> b!269482 (= e!167445 (inv!17 (value!25092 (h!9216 tokens!465))))))

(declare-fun b!269483 () Bool)

(declare-fun e!167446 () Bool)

(declare-fun inv!15 (TokenValue!751) Bool)

(assert (=> b!269483 (= e!167446 (inv!15 (value!25092 (h!9216 tokens!465))))))

(declare-fun b!269484 () Bool)

(declare-fun e!167444 () Bool)

(assert (=> b!269484 (= e!167444 e!167445)))

(declare-fun c!51025 () Bool)

(assert (=> b!269484 (= c!51025 ((_ is IntegerValue!2254) (value!25092 (h!9216 tokens!465))))))

(declare-fun d!78136 () Bool)

(declare-fun c!51026 () Bool)

(assert (=> d!78136 (= c!51026 ((_ is IntegerValue!2253) (value!25092 (h!9216 tokens!465))))))

(assert (=> d!78136 (= (inv!21 (value!25092 (h!9216 tokens!465))) e!167444)))

(declare-fun b!269485 () Bool)

(declare-fun inv!16 (TokenValue!751) Bool)

(assert (=> b!269485 (= e!167444 (inv!16 (value!25092 (h!9216 tokens!465))))))

(declare-fun b!269486 () Bool)

(declare-fun res!123237 () Bool)

(assert (=> b!269486 (=> res!123237 e!167446)))

(assert (=> b!269486 (= res!123237 (not ((_ is IntegerValue!2255) (value!25092 (h!9216 tokens!465)))))))

(assert (=> b!269486 (= e!167445 e!167446)))

(assert (= (and d!78136 c!51026) b!269485))

(assert (= (and d!78136 (not c!51026)) b!269484))

(assert (= (and b!269484 c!51025) b!269482))

(assert (= (and b!269484 (not c!51025)) b!269486))

(assert (= (and b!269486 (not res!123237)) b!269483))

(declare-fun m!339867 () Bool)

(assert (=> b!269482 m!339867))

(declare-fun m!339869 () Bool)

(assert (=> b!269483 m!339869))

(declare-fun m!339871 () Bool)

(assert (=> b!269485 m!339871))

(assert (=> b!268968 d!78136))

(declare-fun d!78138 () Bool)

(assert (=> d!78138 (= (isEmpty!2413 rules!1920) ((_ is Nil!3820) rules!1920))))

(assert (=> b!268957 d!78138))

(declare-fun b!269487 () Bool)

(declare-fun e!167448 () Bool)

(assert (=> b!269487 (= e!167448 (inv!17 (value!25092 separatorToken!170)))))

(declare-fun b!269488 () Bool)

(declare-fun e!167449 () Bool)

(assert (=> b!269488 (= e!167449 (inv!15 (value!25092 separatorToken!170)))))

(declare-fun b!269489 () Bool)

(declare-fun e!167447 () Bool)

(assert (=> b!269489 (= e!167447 e!167448)))

(declare-fun c!51027 () Bool)

(assert (=> b!269489 (= c!51027 ((_ is IntegerValue!2254) (value!25092 separatorToken!170)))))

(declare-fun d!78140 () Bool)

(declare-fun c!51028 () Bool)

(assert (=> d!78140 (= c!51028 ((_ is IntegerValue!2253) (value!25092 separatorToken!170)))))

(assert (=> d!78140 (= (inv!21 (value!25092 separatorToken!170)) e!167447)))

(declare-fun b!269490 () Bool)

(assert (=> b!269490 (= e!167447 (inv!16 (value!25092 separatorToken!170)))))

(declare-fun b!269491 () Bool)

(declare-fun res!123238 () Bool)

(assert (=> b!269491 (=> res!123238 e!167449)))

(assert (=> b!269491 (= res!123238 (not ((_ is IntegerValue!2255) (value!25092 separatorToken!170))))))

(assert (=> b!269491 (= e!167448 e!167449)))

(assert (= (and d!78140 c!51028) b!269490))

(assert (= (and d!78140 (not c!51028)) b!269489))

(assert (= (and b!269489 c!51027) b!269487))

(assert (= (and b!269489 (not c!51027)) b!269491))

(assert (= (and b!269491 (not res!123238)) b!269488))

(declare-fun m!339873 () Bool)

(assert (=> b!269487 m!339873))

(declare-fun m!339875 () Bool)

(assert (=> b!269488 m!339875))

(declare-fun m!339877 () Bool)

(assert (=> b!269490 m!339877))

(assert (=> b!268966 d!78140))

(declare-fun e!167452 () Bool)

(assert (=> b!268970 (= tp!102276 e!167452)))

(declare-fun b!269504 () Bool)

(declare-fun tp!102365 () Bool)

(assert (=> b!269504 (= e!167452 tp!102365)))

(declare-fun b!269503 () Bool)

(declare-fun tp!102362 () Bool)

(declare-fun tp!102366 () Bool)

(assert (=> b!269503 (= e!167452 (and tp!102362 tp!102366))))

(declare-fun b!269505 () Bool)

(declare-fun tp!102364 () Bool)

(declare-fun tp!102363 () Bool)

(assert (=> b!269505 (= e!167452 (and tp!102364 tp!102363))))

(declare-fun b!269502 () Bool)

(declare-fun tp_is_empty!1811 () Bool)

(assert (=> b!269502 (= e!167452 tp_is_empty!1811)))

(assert (= (and b!268970 ((_ is ElementMatch!953) (regex!729 (h!9217 rules!1920)))) b!269502))

(assert (= (and b!268970 ((_ is Concat!1705) (regex!729 (h!9217 rules!1920)))) b!269503))

(assert (= (and b!268970 ((_ is Star!953) (regex!729 (h!9217 rules!1920)))) b!269504))

(assert (= (and b!268970 ((_ is Union!953) (regex!729 (h!9217 rules!1920)))) b!269505))

(declare-fun b!269519 () Bool)

(declare-fun b_free!10013 () Bool)

(declare-fun b_next!10013 () Bool)

(assert (=> b!269519 (= b_free!10013 (not b_next!10013))))

(declare-fun tp!102381 () Bool)

(declare-fun b_and!21417 () Bool)

(assert (=> b!269519 (= tp!102381 b_and!21417)))

(declare-fun b_free!10015 () Bool)

(declare-fun b_next!10015 () Bool)

(assert (=> b!269519 (= b_free!10015 (not b_next!10015))))

(declare-fun tb!15117 () Bool)

(declare-fun t!38215 () Bool)

(assert (=> (and b!269519 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))) (toChars!1323 (transformation!729 (rule!1314 separatorToken!170)))) t!38215) tb!15117))

(declare-fun result!18716 () Bool)

(assert (= result!18716 result!18682))

(assert (=> d!78064 t!38215))

(declare-fun t!38217 () Bool)

(declare-fun tb!15119 () Bool)

(assert (=> (and b!269519 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465))))) t!38217) tb!15119))

(declare-fun result!18718 () Bool)

(assert (= result!18718 result!18690))

(assert (=> d!78080 t!38217))

(assert (=> b!269336 t!38217))

(assert (=> b!269421 t!38215))

(declare-fun tp!102379 () Bool)

(declare-fun b_and!21419 () Bool)

(assert (=> b!269519 (= tp!102379 (and (=> t!38215 result!18716) (=> t!38217 result!18718) b_and!21419))))

(declare-fun e!167470 () Bool)

(assert (=> b!269519 (= e!167470 (and tp!102381 tp!102379))))

(declare-fun tp!102377 () Bool)

(declare-fun e!167466 () Bool)

(declare-fun e!167465 () Bool)

(declare-fun b!269517 () Bool)

(assert (=> b!269517 (= e!167465 (and (inv!21 (value!25092 (h!9216 (t!38155 tokens!465)))) e!167466 tp!102377))))

(declare-fun e!167467 () Bool)

(assert (=> b!268952 (= tp!102280 e!167467)))

(declare-fun tp!102380 () Bool)

(declare-fun b!269516 () Bool)

(assert (=> b!269516 (= e!167467 (and (inv!4721 (h!9216 (t!38155 tokens!465))) e!167465 tp!102380))))

(declare-fun tp!102378 () Bool)

(declare-fun b!269518 () Bool)

(assert (=> b!269518 (= e!167466 (and tp!102378 (inv!4718 (tag!939 (rule!1314 (h!9216 (t!38155 tokens!465))))) (inv!4722 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))) e!167470))))

(assert (= b!269518 b!269519))

(assert (= b!269517 b!269518))

(assert (= b!269516 b!269517))

(assert (= (and b!268952 ((_ is Cons!3819) (t!38155 tokens!465))) b!269516))

(declare-fun m!339879 () Bool)

(assert (=> b!269517 m!339879))

(declare-fun m!339881 () Bool)

(assert (=> b!269516 m!339881))

(declare-fun m!339883 () Bool)

(assert (=> b!269518 m!339883))

(declare-fun m!339885 () Bool)

(assert (=> b!269518 m!339885))

(declare-fun e!167471 () Bool)

(assert (=> b!268955 (= tp!102275 e!167471)))

(declare-fun b!269522 () Bool)

(declare-fun tp!102385 () Bool)

(assert (=> b!269522 (= e!167471 tp!102385)))

(declare-fun b!269521 () Bool)

(declare-fun tp!102382 () Bool)

(declare-fun tp!102386 () Bool)

(assert (=> b!269521 (= e!167471 (and tp!102382 tp!102386))))

(declare-fun b!269523 () Bool)

(declare-fun tp!102384 () Bool)

(declare-fun tp!102383 () Bool)

(assert (=> b!269523 (= e!167471 (and tp!102384 tp!102383))))

(declare-fun b!269520 () Bool)

(assert (=> b!269520 (= e!167471 tp_is_empty!1811)))

(assert (= (and b!268955 ((_ is ElementMatch!953) (regex!729 (rule!1314 (h!9216 tokens!465))))) b!269520))

(assert (= (and b!268955 ((_ is Concat!1705) (regex!729 (rule!1314 (h!9216 tokens!465))))) b!269521))

(assert (= (and b!268955 ((_ is Star!953) (regex!729 (rule!1314 (h!9216 tokens!465))))) b!269522))

(assert (= (and b!268955 ((_ is Union!953) (regex!729 (rule!1314 (h!9216 tokens!465))))) b!269523))

(declare-fun b!269534 () Bool)

(declare-fun b_free!10017 () Bool)

(declare-fun b_next!10017 () Bool)

(assert (=> b!269534 (= b_free!10017 (not b_next!10017))))

(declare-fun tp!102396 () Bool)

(declare-fun b_and!21421 () Bool)

(assert (=> b!269534 (= tp!102396 b_and!21421)))

(declare-fun b_free!10019 () Bool)

(declare-fun b_next!10019 () Bool)

(assert (=> b!269534 (= b_free!10019 (not b_next!10019))))

(declare-fun tb!15121 () Bool)

(declare-fun t!38219 () Bool)

(assert (=> (and b!269534 (= (toChars!1323 (transformation!729 (h!9217 (t!38156 rules!1920)))) (toChars!1323 (transformation!729 (rule!1314 separatorToken!170)))) t!38219) tb!15121))

(declare-fun result!18722 () Bool)

(assert (= result!18722 result!18682))

(assert (=> d!78064 t!38219))

(declare-fun tb!15123 () Bool)

(declare-fun t!38221 () Bool)

(assert (=> (and b!269534 (= (toChars!1323 (transformation!729 (h!9217 (t!38156 rules!1920)))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465))))) t!38221) tb!15123))

(declare-fun result!18724 () Bool)

(assert (= result!18724 result!18690))

(assert (=> d!78080 t!38221))

(assert (=> b!269336 t!38221))

(assert (=> b!269421 t!38219))

(declare-fun tp!102398 () Bool)

(declare-fun b_and!21423 () Bool)

(assert (=> b!269534 (= tp!102398 (and (=> t!38219 result!18722) (=> t!38221 result!18724) b_and!21423))))

(declare-fun e!167481 () Bool)

(assert (=> b!269534 (= e!167481 (and tp!102396 tp!102398))))

(declare-fun b!269533 () Bool)

(declare-fun tp!102395 () Bool)

(declare-fun e!167482 () Bool)

(assert (=> b!269533 (= e!167482 (and tp!102395 (inv!4718 (tag!939 (h!9217 (t!38156 rules!1920)))) (inv!4722 (transformation!729 (h!9217 (t!38156 rules!1920)))) e!167481))))

(declare-fun b!269532 () Bool)

(declare-fun e!167483 () Bool)

(declare-fun tp!102397 () Bool)

(assert (=> b!269532 (= e!167483 (and e!167482 tp!102397))))

(assert (=> b!268974 (= tp!102277 e!167483)))

(assert (= b!269533 b!269534))

(assert (= b!269532 b!269533))

(assert (= (and b!268974 ((_ is Cons!3820) (t!38156 rules!1920))) b!269532))

(declare-fun m!339887 () Bool)

(assert (=> b!269533 m!339887))

(declare-fun m!339889 () Bool)

(assert (=> b!269533 m!339889))

(declare-fun e!167484 () Bool)

(assert (=> b!268953 (= tp!102281 e!167484)))

(declare-fun b!269537 () Bool)

(declare-fun tp!102402 () Bool)

(assert (=> b!269537 (= e!167484 tp!102402)))

(declare-fun b!269536 () Bool)

(declare-fun tp!102399 () Bool)

(declare-fun tp!102403 () Bool)

(assert (=> b!269536 (= e!167484 (and tp!102399 tp!102403))))

(declare-fun b!269538 () Bool)

(declare-fun tp!102401 () Bool)

(declare-fun tp!102400 () Bool)

(assert (=> b!269538 (= e!167484 (and tp!102401 tp!102400))))

(declare-fun b!269535 () Bool)

(assert (=> b!269535 (= e!167484 tp_is_empty!1811)))

(assert (= (and b!268953 ((_ is ElementMatch!953) (regex!729 (rule!1314 separatorToken!170)))) b!269535))

(assert (= (and b!268953 ((_ is Concat!1705) (regex!729 (rule!1314 separatorToken!170)))) b!269536))

(assert (= (and b!268953 ((_ is Star!953) (regex!729 (rule!1314 separatorToken!170)))) b!269537))

(assert (= (and b!268953 ((_ is Union!953) (regex!729 (rule!1314 separatorToken!170)))) b!269538))

(declare-fun b!269543 () Bool)

(declare-fun e!167487 () Bool)

(declare-fun tp!102406 () Bool)

(assert (=> b!269543 (= e!167487 (and tp_is_empty!1811 tp!102406))))

(assert (=> b!268968 (= tp!102282 e!167487)))

(assert (= (and b!268968 ((_ is Cons!3817) (originalCharacters!772 (h!9216 tokens!465)))) b!269543))

(declare-fun b!269544 () Bool)

(declare-fun e!167488 () Bool)

(declare-fun tp!102407 () Bool)

(assert (=> b!269544 (= e!167488 (and tp_is_empty!1811 tp!102407))))

(assert (=> b!268966 (= tp!102283 e!167488)))

(assert (= (and b!268966 ((_ is Cons!3817) (originalCharacters!772 separatorToken!170))) b!269544))

(declare-fun b_lambda!8525 () Bool)

(assert (= b_lambda!8505 (or (and b!269534 b_free!10019 (= (toChars!1323 (transformation!729 (h!9217 (t!38156 rules!1920)))) (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))))) (and b!268967 b_free!9995 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))))) (and b!268971 b_free!9999 (= (toChars!1323 (transformation!729 (h!9217 rules!1920))) (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))))) (and b!269519 b_free!10015 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))) (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))))) (and b!268959 b_free!10003) b_lambda!8525)))

(declare-fun b_lambda!8527 () Bool)

(assert (= b_lambda!8509 (or (and b!269534 b_free!10019 (= (toChars!1323 (transformation!729 (h!9217 (t!38156 rules!1920)))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))))) (and b!268971 b_free!9999 (= (toChars!1323 (transformation!729 (h!9217 rules!1920))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))))) (and b!269519 b_free!10015 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))))) (and b!268967 b_free!9995) (and b!268959 b_free!10003 (= (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))))) b_lambda!8527)))

(declare-fun b_lambda!8529 () Bool)

(assert (= b_lambda!8523 (or b!268954 b_lambda!8529)))

(declare-fun bs!29856 () Bool)

(declare-fun d!78142 () Bool)

(assert (= bs!29856 (and d!78142 b!268954)))

(assert (=> bs!29856 (= (dynLambda!1959 lambda!9080 (h!9216 tokens!465)) (not (isSeparator!729 (rule!1314 (h!9216 tokens!465)))))))

(assert (=> b!269466 d!78142))

(declare-fun b_lambda!8531 () Bool)

(assert (= b_lambda!8507 (or (and b!269534 b_free!10019 (= (toChars!1323 (transformation!729 (h!9217 (t!38156 rules!1920)))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))))) (and b!268971 b_free!9999 (= (toChars!1323 (transformation!729 (h!9217 rules!1920))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))))) (and b!269519 b_free!10015 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))))) (and b!268967 b_free!9995) (and b!268959 b_free!10003 (= (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))))) b_lambda!8531)))

(declare-fun b_lambda!8533 () Bool)

(assert (= b_lambda!8521 (or (and b!269534 b_free!10019 (= (toChars!1323 (transformation!729 (h!9217 (t!38156 rules!1920)))) (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))))) (and b!268967 b_free!9995 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))))) (and b!268971 b_free!9999 (= (toChars!1323 (transformation!729 (h!9217 rules!1920))) (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))))) (and b!269519 b_free!10015 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))) (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))))) (and b!268959 b_free!10003) b_lambda!8533)))

(check-sat (not d!77988) (not bm!14694) (not b!269028) (not b!269171) (not b!269485) (not d!78088) (not bm!14702) (not bm!14706) (not d!78076) (not b!269296) (not d!78114) (not b!269532) (not b!269440) (not d!78106) (not b!269435) (not d!78118) (not b!269503) (not b_next!9995) (not b!269167) (not b!269543) (not b!269467) (not b!269293) (not b!269521) (not b!269430) (not bm!14674) (not b_next!10015) (not b!269421) (not d!78000) (not b!269459) (not d!77994) (not bm!14693) (not b!269420) (not b_next!9993) (not d!78126) (not b!269441) (not b_lambda!8531) (not b!269217) b_and!21415 (not b!269516) (not bm!14705) (not b!269432) (not b!269504) (not b!269292) (not b_lambda!8527) (not b!269518) tp_is_empty!1811 (not b!269439) (not d!78086) (not b!269337) (not d!78096) (not d!78122) (not b!269389) (not b!269456) (not b!269320) (not b!269327) (not bm!14675) (not d!78102) (not b!269536) (not d!78080) (not b_next!9999) (not b!269533) (not b!269490) (not b!269046) (not d!78110) (not b!269325) (not b!269185) (not b!269538) (not d!78092) (not bm!14704) b_and!21413 (not b!269457) (not b_next!10013) (not b!269173) (not b!269517) (not b_next!10019) (not d!78130) (not b!269031) (not d!77972) (not d!78128) (not b!269458) (not d!78064) (not b!269544) (not b_next!10001) (not b!269172) (not b!269321) (not b!269505) (not b!269427) b_and!21421 (not b_lambda!8529) (not b!269522) (not b!269324) b_and!21423 b_and!21417 (not b!269218) (not bm!14700) (not b!269449) (not bm!14676) (not b!269330) (not d!78108) (not b!269025) (not b!269461) (not b!269176) (not b_next!10003) (not d!78038) (not bm!14699) (not tb!15097) (not b!269298) (not b!269045) (not b!269487) (not b!269537) (not bm!14697) (not d!78074) (not b!269470) (not b!269431) (not d!78022) b_and!21419 (not d!78082) (not b!269291) (not b!269444) (not b!269488) (not b!269471) (not b!269297) (not tb!15103) (not b_next!9997) (not b!269460) b_and!21349 b_and!21353 (not b!269024) (not d!78094) (not b!269410) (not b!269329) (not b!269336) (not d!78134) (not bm!14698) (not d!77992) (not b!269392) (not d!78078) (not d!77996) (not d!78084) (not b!269422) (not b!269445) (not b_lambda!8525) (not d!77976) b_and!21411 (not b!269450) (not b!269027) (not d!77998) b_and!21357 (not b!269425) (not b_lambda!8533) (not bm!14695) (not b!269318) (not b!269418) (not b_next!10017) (not d!78104) (not b!269483) (not b!269523) (not b!269426) (not b!269482) (not b!269405) (not b!269044))
(check-sat (not b_next!9995) (not b_next!10015) (not b_next!9993) b_and!21415 (not b_next!9999) (not b_next!10001) (not b_next!10003) b_and!21419 b_and!21411 b_and!21413 (not b_next!10013) (not b_next!10019) b_and!21421 b_and!21423 b_and!21417 (not b_next!9997) b_and!21349 b_and!21353 b_and!21357 (not b_next!10017))
(get-model)

(declare-fun d!78158 () Bool)

(declare-fun isBalanced!350 (Conc!1280) Bool)

(assert (=> d!78158 (= (inv!4726 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (value!25092 (h!9216 tokens!465)))) (isBalanced!350 (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (value!25092 (h!9216 tokens!465))))))))

(declare-fun bs!29860 () Bool)

(assert (= bs!29860 d!78158))

(declare-fun m!339945 () Bool)

(assert (=> bs!29860 m!339945))

(assert (=> tb!15103 d!78158))

(declare-fun d!78160 () Bool)

(assert (=> d!78160 true))

(declare-fun lambda!9120 () Int)

(declare-fun order!2941 () Int)

(declare-fun dynLambda!1962 (Int Int) Int)

(assert (=> d!78160 (< (dynLambda!1955 order!2937 (toChars!1323 (transformation!729 (h!9217 rules!1920)))) (dynLambda!1962 order!2941 lambda!9120))))

(assert (=> d!78160 true))

(assert (=> d!78160 (< (dynLambda!1953 order!2933 (toValue!1464 (transformation!729 (h!9217 rules!1920)))) (dynLambda!1962 order!2941 lambda!9120))))

(declare-fun Forall!172 (Int) Bool)

(assert (=> d!78160 (= (semiInverseModEq!257 (toChars!1323 (transformation!729 (h!9217 rules!1920))) (toValue!1464 (transformation!729 (h!9217 rules!1920)))) (Forall!172 lambda!9120))))

(declare-fun bs!29861 () Bool)

(assert (= bs!29861 d!78160))

(declare-fun m!339947 () Bool)

(assert (=> bs!29861 m!339947))

(assert (=> d!77992 d!78160))

(assert (=> b!269176 d!78064))

(declare-fun d!78162 () Bool)

(assert (=> d!78162 (= (isEmpty!2417 (list!1560 (_1!2353 (lex!407 thiss!17480 rules!1920 (seqFromList!825 lt!110396))))) ((_ is Nil!3819) (list!1560 (_1!2353 (lex!407 thiss!17480 rules!1920 (seqFromList!825 lt!110396))))))))

(assert (=> d!77972 d!78162))

(declare-fun d!78164 () Bool)

(declare-fun list!1563 (Conc!1281) List!3829)

(assert (=> d!78164 (= (list!1560 (_1!2353 (lex!407 thiss!17480 rules!1920 (seqFromList!825 lt!110396)))) (list!1563 (c!50916 (_1!2353 (lex!407 thiss!17480 rules!1920 (seqFromList!825 lt!110396))))))))

(declare-fun bs!29862 () Bool)

(assert (= bs!29862 d!78164))

(declare-fun m!339949 () Bool)

(assert (=> bs!29862 m!339949))

(assert (=> d!77972 d!78164))

(declare-fun lt!110694 () Bool)

(declare-fun d!78166 () Bool)

(assert (=> d!78166 (= lt!110694 (isEmpty!2417 (list!1563 (c!50916 (_1!2353 (lex!407 thiss!17480 rules!1920 (seqFromList!825 lt!110396)))))))))

(declare-fun size!3044 (Conc!1281) Int)

(assert (=> d!78166 (= lt!110694 (= (size!3044 (c!50916 (_1!2353 (lex!407 thiss!17480 rules!1920 (seqFromList!825 lt!110396))))) 0))))

(assert (=> d!78166 (= (isEmpty!2418 (c!50916 (_1!2353 (lex!407 thiss!17480 rules!1920 (seqFromList!825 lt!110396))))) lt!110694)))

(declare-fun bs!29863 () Bool)

(assert (= bs!29863 d!78166))

(assert (=> bs!29863 m!339949))

(assert (=> bs!29863 m!339949))

(declare-fun m!339951 () Bool)

(assert (=> bs!29863 m!339951))

(declare-fun m!339953 () Bool)

(assert (=> bs!29863 m!339953))

(assert (=> d!77972 d!78166))

(declare-fun d!78168 () Bool)

(declare-fun lt!110699 () BalanceConc!2568)

(assert (=> d!78168 (= (list!1557 lt!110699) (originalCharacters!772 (ite c!51013 call!14705 call!14706)))))

(assert (=> d!78168 (= lt!110699 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (ite c!51013 call!14705 call!14706)))) (value!25092 (ite c!51013 call!14705 call!14706))))))

(assert (=> d!78168 (= (charsOf!374 (ite c!51013 call!14705 call!14706)) lt!110699)))

(declare-fun b_lambda!8535 () Bool)

(assert (=> (not b_lambda!8535) (not d!78168)))

(declare-fun t!38226 () Bool)

(declare-fun tb!15125 () Bool)

(assert (=> (and b!268959 (= (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (toChars!1323 (transformation!729 (rule!1314 (ite c!51013 call!14705 call!14706))))) t!38226) tb!15125))

(declare-fun b!269571 () Bool)

(declare-fun e!167501 () Bool)

(declare-fun tp!102408 () Bool)

(assert (=> b!269571 (= e!167501 (and (inv!4725 (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (ite c!51013 call!14705 call!14706)))) (value!25092 (ite c!51013 call!14705 call!14706))))) tp!102408))))

(declare-fun result!18728 () Bool)

(assert (=> tb!15125 (= result!18728 (and (inv!4726 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (ite c!51013 call!14705 call!14706)))) (value!25092 (ite c!51013 call!14705 call!14706)))) e!167501))))

(assert (= tb!15125 b!269571))

(declare-fun m!339955 () Bool)

(assert (=> b!269571 m!339955))

(declare-fun m!339957 () Bool)

(assert (=> tb!15125 m!339957))

(assert (=> d!78168 t!38226))

(declare-fun b_and!21425 () Bool)

(assert (= b_and!21415 (and (=> t!38226 result!18728) b_and!21425)))

(declare-fun tb!15127 () Bool)

(declare-fun t!38228 () Bool)

(assert (=> (and b!268971 (= (toChars!1323 (transformation!729 (h!9217 rules!1920))) (toChars!1323 (transformation!729 (rule!1314 (ite c!51013 call!14705 call!14706))))) t!38228) tb!15127))

(declare-fun result!18730 () Bool)

(assert (= result!18730 result!18728))

(assert (=> d!78168 t!38228))

(declare-fun b_and!21427 () Bool)

(assert (= b_and!21413 (and (=> t!38228 result!18730) b_and!21427)))

(declare-fun tb!15129 () Bool)

(declare-fun t!38230 () Bool)

(assert (=> (and b!269519 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))) (toChars!1323 (transformation!729 (rule!1314 (ite c!51013 call!14705 call!14706))))) t!38230) tb!15129))

(declare-fun result!18732 () Bool)

(assert (= result!18732 result!18728))

(assert (=> d!78168 t!38230))

(declare-fun b_and!21429 () Bool)

(assert (= b_and!21419 (and (=> t!38230 result!18732) b_and!21429)))

(declare-fun tb!15131 () Bool)

(declare-fun t!38232 () Bool)

(assert (=> (and b!268967 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (toChars!1323 (transformation!729 (rule!1314 (ite c!51013 call!14705 call!14706))))) t!38232) tb!15131))

(declare-fun result!18734 () Bool)

(assert (= result!18734 result!18728))

(assert (=> d!78168 t!38232))

(declare-fun b_and!21431 () Bool)

(assert (= b_and!21411 (and (=> t!38232 result!18734) b_and!21431)))

(declare-fun tb!15133 () Bool)

(declare-fun t!38234 () Bool)

(assert (=> (and b!269534 (= (toChars!1323 (transformation!729 (h!9217 (t!38156 rules!1920)))) (toChars!1323 (transformation!729 (rule!1314 (ite c!51013 call!14705 call!14706))))) t!38234) tb!15133))

(declare-fun result!18736 () Bool)

(assert (= result!18736 result!18728))

(assert (=> d!78168 t!38234))

(declare-fun b_and!21433 () Bool)

(assert (= b_and!21423 (and (=> t!38234 result!18736) b_and!21433)))

(declare-fun m!339959 () Bool)

(assert (=> d!78168 m!339959))

(declare-fun m!339961 () Bool)

(assert (=> d!78168 m!339961))

(assert (=> bm!14698 d!78168))

(declare-fun d!78170 () Bool)

(declare-fun lt!110732 () Int)

(assert (=> d!78170 (>= lt!110732 0)))

(declare-fun e!167507 () Int)

(assert (=> d!78170 (= lt!110732 e!167507)))

(declare-fun c!51041 () Bool)

(assert (=> d!78170 (= c!51041 ((_ is Nil!3817) lt!110530))))

(assert (=> d!78170 (= (size!3043 lt!110530) lt!110732)))

(declare-fun b!269584 () Bool)

(assert (=> b!269584 (= e!167507 0)))

(declare-fun b!269585 () Bool)

(assert (=> b!269585 (= e!167507 (+ 1 (size!3043 (t!38153 lt!110530))))))

(assert (= (and d!78170 c!51041) b!269584))

(assert (= (and d!78170 (not c!51041)) b!269585))

(declare-fun m!339963 () Bool)

(assert (=> b!269585 m!339963))

(assert (=> b!269218 d!78170))

(declare-fun d!78172 () Bool)

(declare-fun lt!110733 () Int)

(assert (=> d!78172 (>= lt!110733 0)))

(declare-fun e!167508 () Int)

(assert (=> d!78172 (= lt!110733 e!167508)))

(declare-fun c!51042 () Bool)

(assert (=> d!78172 (= c!51042 ((_ is Nil!3817) lt!110396))))

(assert (=> d!78172 (= (size!3043 lt!110396) lt!110733)))

(declare-fun b!269586 () Bool)

(assert (=> b!269586 (= e!167508 0)))

(declare-fun b!269587 () Bool)

(assert (=> b!269587 (= e!167508 (+ 1 (size!3043 (t!38153 lt!110396))))))

(assert (= (and d!78172 c!51042) b!269586))

(assert (= (and d!78172 (not c!51042)) b!269587))

(declare-fun m!339965 () Bool)

(assert (=> b!269587 m!339965))

(assert (=> b!269218 d!78172))

(declare-fun d!78174 () Bool)

(declare-fun lt!110734 () Int)

(assert (=> d!78174 (>= lt!110734 0)))

(declare-fun e!167509 () Int)

(assert (=> d!78174 (= lt!110734 e!167509)))

(declare-fun c!51043 () Bool)

(assert (=> d!78174 (= c!51043 ((_ is Nil!3817) lt!110398))))

(assert (=> d!78174 (= (size!3043 lt!110398) lt!110734)))

(declare-fun b!269588 () Bool)

(assert (=> b!269588 (= e!167509 0)))

(declare-fun b!269589 () Bool)

(assert (=> b!269589 (= e!167509 (+ 1 (size!3043 (t!38153 lt!110398))))))

(assert (= (and d!78174 c!51043) b!269588))

(assert (= (and d!78174 (not c!51043)) b!269589))

(declare-fun m!339967 () Bool)

(assert (=> b!269589 m!339967))

(assert (=> b!269218 d!78174))

(declare-fun b!269601 () Bool)

(declare-fun e!167515 () List!3827)

(assert (=> b!269601 (= e!167515 (++!994 (list!1561 (left!3139 (c!50914 (charsOf!374 separatorToken!170)))) (list!1561 (right!3469 (c!50914 (charsOf!374 separatorToken!170))))))))

(declare-fun d!78176 () Bool)

(declare-fun c!51048 () Bool)

(assert (=> d!78176 (= c!51048 ((_ is Empty!1280) (c!50914 (charsOf!374 separatorToken!170))))))

(declare-fun e!167514 () List!3827)

(assert (=> d!78176 (= (list!1561 (c!50914 (charsOf!374 separatorToken!170))) e!167514)))

(declare-fun b!269598 () Bool)

(assert (=> b!269598 (= e!167514 Nil!3817)))

(declare-fun b!269600 () Bool)

(declare-fun list!1564 (IArray!2561) List!3827)

(assert (=> b!269600 (= e!167515 (list!1564 (xs!3879 (c!50914 (charsOf!374 separatorToken!170)))))))

(declare-fun b!269599 () Bool)

(assert (=> b!269599 (= e!167514 e!167515)))

(declare-fun c!51049 () Bool)

(assert (=> b!269599 (= c!51049 ((_ is Leaf!1984) (c!50914 (charsOf!374 separatorToken!170))))))

(assert (= (and d!78176 c!51048) b!269598))

(assert (= (and d!78176 (not c!51048)) b!269599))

(assert (= (and b!269599 c!51049) b!269600))

(assert (= (and b!269599 (not c!51049)) b!269601))

(declare-fun m!339969 () Bool)

(assert (=> b!269601 m!339969))

(declare-fun m!339971 () Bool)

(assert (=> b!269601 m!339971))

(assert (=> b!269601 m!339969))

(assert (=> b!269601 m!339971))

(declare-fun m!339973 () Bool)

(assert (=> b!269601 m!339973))

(declare-fun m!339975 () Bool)

(assert (=> b!269600 m!339975))

(assert (=> d!77998 d!78176))

(declare-fun d!78178 () Bool)

(declare-fun c!51053 () Bool)

(assert (=> d!78178 (= c!51053 ((_ is Nil!3817) lt!110619))))

(declare-fun e!167520 () (InoxSet C!2828))

(assert (=> d!78178 (= (content!547 lt!110619) e!167520)))

(declare-fun b!269610 () Bool)

(assert (=> b!269610 (= e!167520 ((as const (Array C!2828 Bool)) false))))

(declare-fun b!269611 () Bool)

(assert (=> b!269611 (= e!167520 ((_ map or) (store ((as const (Array C!2828 Bool)) false) (h!9214 lt!110619) true) (content!547 (t!38153 lt!110619))))))

(assert (= (and d!78178 c!51053) b!269610))

(assert (= (and d!78178 (not c!51053)) b!269611))

(declare-fun m!339985 () Bool)

(assert (=> b!269611 m!339985))

(declare-fun m!339989 () Bool)

(assert (=> b!269611 m!339989))

(assert (=> d!78076 d!78178))

(declare-fun d!78180 () Bool)

(declare-fun c!51054 () Bool)

(assert (=> d!78180 (= c!51054 ((_ is Nil!3817) lt!110396))))

(declare-fun e!167521 () (InoxSet C!2828))

(assert (=> d!78180 (= (content!547 lt!110396) e!167521)))

(declare-fun b!269612 () Bool)

(assert (=> b!269612 (= e!167521 ((as const (Array C!2828 Bool)) false))))

(declare-fun b!269613 () Bool)

(assert (=> b!269613 (= e!167521 ((_ map or) (store ((as const (Array C!2828 Bool)) false) (h!9214 lt!110396) true) (content!547 (t!38153 lt!110396))))))

(assert (= (and d!78180 c!51054) b!269612))

(assert (= (and d!78180 (not c!51054)) b!269613))

(declare-fun m!339999 () Bool)

(assert (=> b!269613 m!339999))

(declare-fun m!340003 () Bool)

(assert (=> b!269613 m!340003))

(assert (=> d!78076 d!78180))

(declare-fun d!78182 () Bool)

(declare-fun c!51055 () Bool)

(assert (=> d!78182 (= c!51055 ((_ is Nil!3817) lt!110394))))

(declare-fun e!167522 () (InoxSet C!2828))

(assert (=> d!78182 (= (content!547 lt!110394) e!167522)))

(declare-fun b!269614 () Bool)

(assert (=> b!269614 (= e!167522 ((as const (Array C!2828 Bool)) false))))

(declare-fun b!269615 () Bool)

(assert (=> b!269615 (= e!167522 ((_ map or) (store ((as const (Array C!2828 Bool)) false) (h!9214 lt!110394) true) (content!547 (t!38153 lt!110394))))))

(assert (= (and d!78182 c!51055) b!269614))

(assert (= (and d!78182 (not c!51055)) b!269615))

(declare-fun m!340013 () Bool)

(assert (=> b!269615 m!340013))

(declare-fun m!340017 () Bool)

(assert (=> b!269615 m!340017))

(assert (=> d!78076 d!78182))

(declare-fun d!78184 () Bool)

(declare-fun e!167533 () Bool)

(assert (=> d!78184 e!167533))

(declare-fun res!123277 () Bool)

(assert (=> d!78184 (=> (not res!123277) (not e!167533))))

(declare-fun appendAssocInst!62 (Conc!1280 Conc!1280) Bool)

(assert (=> d!78184 (= res!123277 (appendAssocInst!62 (c!50914 call!14699) (c!50914 lt!110609)))))

(declare-fun lt!110760 () BalanceConc!2568)

(declare-fun ++!997 (Conc!1280 Conc!1280) Conc!1280)

(assert (=> d!78184 (= lt!110760 (BalanceConc!2569 (++!997 (c!50914 call!14699) (c!50914 lt!110609))))))

(assert (=> d!78184 (= (++!996 call!14699 lt!110609) lt!110760)))

(declare-fun b!269635 () Bool)

(declare-fun res!123278 () Bool)

(assert (=> b!269635 (=> (not res!123278) (not e!167533))))

(declare-fun height!153 (Conc!1280) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!269635 (= res!123278 (<= (height!153 (++!997 (c!50914 call!14699) (c!50914 lt!110609))) (+ (max!0 (height!153 (c!50914 call!14699)) (height!153 (c!50914 lt!110609))) 1)))))

(declare-fun b!269637 () Bool)

(assert (=> b!269637 (= e!167533 (= (list!1557 lt!110760) (++!994 (list!1557 call!14699) (list!1557 lt!110609))))))

(declare-fun b!269634 () Bool)

(declare-fun res!123275 () Bool)

(assert (=> b!269634 (=> (not res!123275) (not e!167533))))

(assert (=> b!269634 (= res!123275 (isBalanced!350 (++!997 (c!50914 call!14699) (c!50914 lt!110609))))))

(declare-fun b!269636 () Bool)

(declare-fun res!123276 () Bool)

(assert (=> b!269636 (=> (not res!123276) (not e!167533))))

(assert (=> b!269636 (= res!123276 (>= (height!153 (++!997 (c!50914 call!14699) (c!50914 lt!110609))) (max!0 (height!153 (c!50914 call!14699)) (height!153 (c!50914 lt!110609)))))))

(assert (= (and d!78184 res!123277) b!269634))

(assert (= (and b!269634 res!123275) b!269635))

(assert (= (and b!269635 res!123278) b!269636))

(assert (= (and b!269636 res!123276) b!269637))

(declare-fun m!340083 () Bool)

(assert (=> b!269635 m!340083))

(declare-fun m!340085 () Bool)

(assert (=> b!269635 m!340085))

(assert (=> b!269635 m!340083))

(declare-fun m!340087 () Bool)

(assert (=> b!269635 m!340087))

(declare-fun m!340089 () Bool)

(assert (=> b!269635 m!340089))

(declare-fun m!340091 () Bool)

(assert (=> b!269635 m!340091))

(assert (=> b!269635 m!340087))

(assert (=> b!269635 m!340089))

(assert (=> b!269634 m!340083))

(assert (=> b!269634 m!340083))

(declare-fun m!340095 () Bool)

(assert (=> b!269634 m!340095))

(declare-fun m!340097 () Bool)

(assert (=> b!269637 m!340097))

(declare-fun m!340099 () Bool)

(assert (=> b!269637 m!340099))

(assert (=> b!269637 m!339539))

(assert (=> b!269637 m!340099))

(assert (=> b!269637 m!339539))

(declare-fun m!340101 () Bool)

(assert (=> b!269637 m!340101))

(assert (=> b!269636 m!340083))

(assert (=> b!269636 m!340085))

(assert (=> b!269636 m!340083))

(assert (=> b!269636 m!340087))

(assert (=> b!269636 m!340089))

(assert (=> b!269636 m!340091))

(assert (=> b!269636 m!340087))

(assert (=> b!269636 m!340089))

(declare-fun m!340103 () Bool)

(assert (=> d!78184 m!340103))

(assert (=> d!78184 m!340083))

(assert (=> b!269293 d!78184))

(declare-fun d!78200 () Bool)

(declare-fun lt!110761 () Bool)

(assert (=> d!78200 (= lt!110761 (isEmpty!2417 (list!1560 (_1!2353 lt!110416))))))

(assert (=> d!78200 (= lt!110761 (isEmpty!2418 (c!50916 (_1!2353 lt!110416))))))

(assert (=> d!78200 (= (isEmpty!2414 (_1!2353 lt!110416)) lt!110761)))

(declare-fun bs!29867 () Bool)

(assert (= bs!29867 d!78200))

(assert (=> bs!29867 m!339091))

(assert (=> bs!29867 m!339091))

(declare-fun m!340105 () Bool)

(assert (=> bs!29867 m!340105))

(declare-fun m!340107 () Bool)

(assert (=> bs!29867 m!340107))

(assert (=> b!269028 d!78200))

(declare-fun d!78202 () Bool)

(declare-fun lt!110767 () Token!1202)

(assert (=> d!78202 (= lt!110767 (apply!766 (list!1560 (_1!2353 lt!110680)) 0))))

(declare-fun apply!768 (Conc!1281 Int) Token!1202)

(assert (=> d!78202 (= lt!110767 (apply!768 (c!50916 (_1!2353 lt!110680)) 0))))

(declare-fun e!167544 () Bool)

(assert (=> d!78202 e!167544))

(declare-fun res!123284 () Bool)

(assert (=> d!78202 (=> (not res!123284) (not e!167544))))

(assert (=> d!78202 (= res!123284 (<= 0 0))))

(assert (=> d!78202 (= (apply!765 (_1!2353 lt!110680) 0) lt!110767)))

(declare-fun b!269655 () Bool)

(assert (=> b!269655 (= e!167544 (< 0 (size!3041 (_1!2353 lt!110680))))))

(assert (= (and d!78202 res!123284) b!269655))

(declare-fun m!340129 () Bool)

(assert (=> d!78202 m!340129))

(assert (=> d!78202 m!340129))

(declare-fun m!340131 () Bool)

(assert (=> d!78202 m!340131))

(declare-fun m!340133 () Bool)

(assert (=> d!78202 m!340133))

(assert (=> b!269655 m!339833))

(assert (=> b!269458 d!78202))

(declare-fun d!78212 () Bool)

(assert (=> d!78212 (= (list!1557 lt!110636) (list!1561 (c!50914 lt!110636)))))

(declare-fun bs!29868 () Bool)

(assert (= bs!29868 d!78212))

(declare-fun m!340135 () Bool)

(assert (=> bs!29868 m!340135))

(assert (=> d!78102 d!78212))

(declare-fun d!78214 () Bool)

(declare-fun c!51065 () Bool)

(assert (=> d!78214 (= c!51065 ((_ is Cons!3819) (list!1560 lt!110399)))))

(declare-fun e!167545 () List!3827)

(assert (=> d!78214 (= (printList!291 thiss!17480 (list!1560 lt!110399)) e!167545)))

(declare-fun b!269656 () Bool)

(assert (=> b!269656 (= e!167545 (++!994 (list!1557 (charsOf!374 (h!9216 (list!1560 lt!110399)))) (printList!291 thiss!17480 (t!38155 (list!1560 lt!110399)))))))

(declare-fun b!269657 () Bool)

(assert (=> b!269657 (= e!167545 Nil!3817)))

(assert (= (and d!78214 c!51065) b!269656))

(assert (= (and d!78214 (not c!51065)) b!269657))

(declare-fun m!340137 () Bool)

(assert (=> b!269656 m!340137))

(assert (=> b!269656 m!340137))

(declare-fun m!340139 () Bool)

(assert (=> b!269656 m!340139))

(declare-fun m!340141 () Bool)

(assert (=> b!269656 m!340141))

(assert (=> b!269656 m!340139))

(assert (=> b!269656 m!340141))

(declare-fun m!340143 () Bool)

(assert (=> b!269656 m!340143))

(assert (=> d!78102 d!78214))

(declare-fun d!78216 () Bool)

(assert (=> d!78216 (= (list!1560 lt!110399) (list!1563 (c!50916 lt!110399)))))

(declare-fun bs!29869 () Bool)

(assert (= bs!29869 d!78216))

(declare-fun m!340145 () Bool)

(assert (=> bs!29869 m!340145))

(assert (=> d!78102 d!78216))

(assert (=> d!78102 d!78104))

(declare-fun lt!110768 () BalanceConc!2568)

(declare-fun d!78218 () Bool)

(assert (=> d!78218 (= (list!1557 lt!110768) (originalCharacters!772 (ite c!50999 separatorToken!170 call!14701)))))

(assert (=> d!78218 (= lt!110768 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (ite c!50999 separatorToken!170 call!14701)))) (value!25092 (ite c!50999 separatorToken!170 call!14701))))))

(assert (=> d!78218 (= (charsOf!374 (ite c!50999 separatorToken!170 call!14701)) lt!110768)))

(declare-fun b_lambda!8541 () Bool)

(assert (=> (not b_lambda!8541) (not d!78218)))

(declare-fun t!38237 () Bool)

(declare-fun tb!15135 () Bool)

(assert (=> (and b!269534 (= (toChars!1323 (transformation!729 (h!9217 (t!38156 rules!1920)))) (toChars!1323 (transformation!729 (rule!1314 (ite c!50999 separatorToken!170 call!14701))))) t!38237) tb!15135))

(declare-fun b!269658 () Bool)

(declare-fun e!167546 () Bool)

(declare-fun tp!102409 () Bool)

(assert (=> b!269658 (= e!167546 (and (inv!4725 (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (ite c!50999 separatorToken!170 call!14701)))) (value!25092 (ite c!50999 separatorToken!170 call!14701))))) tp!102409))))

(declare-fun result!18738 () Bool)

(assert (=> tb!15135 (= result!18738 (and (inv!4726 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (ite c!50999 separatorToken!170 call!14701)))) (value!25092 (ite c!50999 separatorToken!170 call!14701)))) e!167546))))

(assert (= tb!15135 b!269658))

(declare-fun m!340147 () Bool)

(assert (=> b!269658 m!340147))

(declare-fun m!340149 () Bool)

(assert (=> tb!15135 m!340149))

(assert (=> d!78218 t!38237))

(declare-fun b_and!21435 () Bool)

(assert (= b_and!21433 (and (=> t!38237 result!18738) b_and!21435)))

(declare-fun tb!15137 () Bool)

(declare-fun t!38239 () Bool)

(assert (=> (and b!269519 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))) (toChars!1323 (transformation!729 (rule!1314 (ite c!50999 separatorToken!170 call!14701))))) t!38239) tb!15137))

(declare-fun result!18740 () Bool)

(assert (= result!18740 result!18738))

(assert (=> d!78218 t!38239))

(declare-fun b_and!21437 () Bool)

(assert (= b_and!21429 (and (=> t!38239 result!18740) b_and!21437)))

(declare-fun t!38241 () Bool)

(declare-fun tb!15139 () Bool)

(assert (=> (and b!268971 (= (toChars!1323 (transformation!729 (h!9217 rules!1920))) (toChars!1323 (transformation!729 (rule!1314 (ite c!50999 separatorToken!170 call!14701))))) t!38241) tb!15139))

(declare-fun result!18742 () Bool)

(assert (= result!18742 result!18738))

(assert (=> d!78218 t!38241))

(declare-fun b_and!21439 () Bool)

(assert (= b_and!21427 (and (=> t!38241 result!18742) b_and!21439)))

(declare-fun t!38243 () Bool)

(declare-fun tb!15141 () Bool)

(assert (=> (and b!268967 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (toChars!1323 (transformation!729 (rule!1314 (ite c!50999 separatorToken!170 call!14701))))) t!38243) tb!15141))

(declare-fun result!18744 () Bool)

(assert (= result!18744 result!18738))

(assert (=> d!78218 t!38243))

(declare-fun b_and!21441 () Bool)

(assert (= b_and!21431 (and (=> t!38243 result!18744) b_and!21441)))

(declare-fun tb!15143 () Bool)

(declare-fun t!38245 () Bool)

(assert (=> (and b!268959 (= (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (toChars!1323 (transformation!729 (rule!1314 (ite c!50999 separatorToken!170 call!14701))))) t!38245) tb!15143))

(declare-fun result!18746 () Bool)

(assert (= result!18746 result!18738))

(assert (=> d!78218 t!38245))

(declare-fun b_and!21443 () Bool)

(assert (= b_and!21425 (and (=> t!38245 result!18746) b_and!21443)))

(declare-fun m!340151 () Bool)

(assert (=> d!78218 m!340151))

(declare-fun m!340153 () Bool)

(assert (=> d!78218 m!340153))

(assert (=> bm!14695 d!78218))

(assert (=> bm!14704 d!78080))

(declare-fun d!78220 () Bool)

(declare-fun lt!110769 () Int)

(assert (=> d!78220 (>= lt!110769 0)))

(declare-fun e!167547 () Int)

(assert (=> d!78220 (= lt!110769 e!167547)))

(declare-fun c!51066 () Bool)

(assert (=> d!78220 (= c!51066 ((_ is Nil!3817) lt!110619))))

(assert (=> d!78220 (= (size!3043 lt!110619) lt!110769)))

(declare-fun b!269659 () Bool)

(assert (=> b!269659 (= e!167547 0)))

(declare-fun b!269660 () Bool)

(assert (=> b!269660 (= e!167547 (+ 1 (size!3043 (t!38153 lt!110619))))))

(assert (= (and d!78220 c!51066) b!269659))

(assert (= (and d!78220 (not c!51066)) b!269660))

(declare-fun m!340155 () Bool)

(assert (=> b!269660 m!340155))

(assert (=> b!269325 d!78220))

(assert (=> b!269325 d!78172))

(declare-fun d!78222 () Bool)

(declare-fun lt!110770 () Int)

(assert (=> d!78222 (>= lt!110770 0)))

(declare-fun e!167548 () Int)

(assert (=> d!78222 (= lt!110770 e!167548)))

(declare-fun c!51067 () Bool)

(assert (=> d!78222 (= c!51067 ((_ is Nil!3817) lt!110394))))

(assert (=> d!78222 (= (size!3043 lt!110394) lt!110770)))

(declare-fun b!269661 () Bool)

(assert (=> b!269661 (= e!167548 0)))

(declare-fun b!269662 () Bool)

(assert (=> b!269662 (= e!167548 (+ 1 (size!3043 (t!38153 lt!110394))))))

(assert (= (and d!78222 c!51067) b!269661))

(assert (= (and d!78222 (not c!51067)) b!269662))

(declare-fun m!340157 () Bool)

(assert (=> b!269662 m!340157))

(assert (=> b!269325 d!78222))

(declare-fun d!78224 () Bool)

(assert (=> d!78224 (= (head!886 (drop!215 lt!110656 0)) (h!9216 (drop!215 lt!110656 0)))))

(assert (=> b!269420 d!78224))

(declare-fun d!78226 () Bool)

(declare-fun lt!110774 () BalanceConc!2568)

(assert (=> d!78226 (= (list!1557 lt!110774) (printListTailRec!127 thiss!17480 (dropList!162 lt!110399 (+ 0 1)) (list!1557 (++!996 (BalanceConc!2569 Empty!1280) (charsOf!374 (apply!765 lt!110399 0))))))))

(declare-fun e!167550 () BalanceConc!2568)

(assert (=> d!78226 (= lt!110774 e!167550)))

(declare-fun c!51068 () Bool)

(assert (=> d!78226 (= c!51068 (>= (+ 0 1) (size!3041 lt!110399)))))

(declare-fun e!167549 () Bool)

(assert (=> d!78226 e!167549))

(declare-fun res!123285 () Bool)

(assert (=> d!78226 (=> (not res!123285) (not e!167549))))

(assert (=> d!78226 (= res!123285 (>= (+ 0 1) 0))))

(assert (=> d!78226 (= (printTailRec!303 thiss!17480 lt!110399 (+ 0 1) (++!996 (BalanceConc!2569 Empty!1280) (charsOf!374 (apply!765 lt!110399 0)))) lt!110774)))

(declare-fun b!269663 () Bool)

(assert (=> b!269663 (= e!167549 (<= (+ 0 1) (size!3041 lt!110399)))))

(declare-fun b!269664 () Bool)

(assert (=> b!269664 (= e!167550 (++!996 (BalanceConc!2569 Empty!1280) (charsOf!374 (apply!765 lt!110399 0))))))

(declare-fun b!269665 () Bool)

(assert (=> b!269665 (= e!167550 (printTailRec!303 thiss!17480 lt!110399 (+ 0 1 1) (++!996 (++!996 (BalanceConc!2569 Empty!1280) (charsOf!374 (apply!765 lt!110399 0))) (charsOf!374 (apply!765 lt!110399 (+ 0 1))))))))

(declare-fun lt!110776 () List!3829)

(assert (=> b!269665 (= lt!110776 (list!1560 lt!110399))))

(declare-fun lt!110772 () Unit!4874)

(assert (=> b!269665 (= lt!110772 (lemmaDropApply!202 lt!110776 (+ 0 1)))))

(assert (=> b!269665 (= (head!886 (drop!215 lt!110776 (+ 0 1))) (apply!766 lt!110776 (+ 0 1)))))

(declare-fun lt!110775 () Unit!4874)

(assert (=> b!269665 (= lt!110775 lt!110772)))

(declare-fun lt!110777 () List!3829)

(assert (=> b!269665 (= lt!110777 (list!1560 lt!110399))))

(declare-fun lt!110771 () Unit!4874)

(assert (=> b!269665 (= lt!110771 (lemmaDropTail!194 lt!110777 (+ 0 1)))))

(assert (=> b!269665 (= (tail!476 (drop!215 lt!110777 (+ 0 1))) (drop!215 lt!110777 (+ 0 1 1)))))

(declare-fun lt!110773 () Unit!4874)

(assert (=> b!269665 (= lt!110773 lt!110771)))

(assert (= (and d!78226 res!123285) b!269663))

(assert (= (and d!78226 c!51068) b!269664))

(assert (= (and d!78226 (not c!51068)) b!269665))

(declare-fun m!340159 () Bool)

(assert (=> d!78226 m!340159))

(assert (=> d!78226 m!339723))

(declare-fun m!340161 () Bool)

(assert (=> d!78226 m!340161))

(assert (=> d!78226 m!339705))

(declare-fun m!340163 () Bool)

(assert (=> d!78226 m!340163))

(assert (=> d!78226 m!340161))

(declare-fun m!340165 () Bool)

(assert (=> d!78226 m!340165))

(assert (=> d!78226 m!340163))

(assert (=> b!269663 m!339705))

(declare-fun m!340167 () Bool)

(assert (=> b!269665 m!340167))

(declare-fun m!340169 () Bool)

(assert (=> b!269665 m!340169))

(declare-fun m!340171 () Bool)

(assert (=> b!269665 m!340171))

(declare-fun m!340173 () Bool)

(assert (=> b!269665 m!340173))

(declare-fun m!340175 () Bool)

(assert (=> b!269665 m!340175))

(assert (=> b!269665 m!339723))

(declare-fun m!340177 () Bool)

(assert (=> b!269665 m!340177))

(declare-fun m!340179 () Bool)

(assert (=> b!269665 m!340179))

(declare-fun m!340181 () Bool)

(assert (=> b!269665 m!340181))

(assert (=> b!269665 m!340171))

(declare-fun m!340183 () Bool)

(assert (=> b!269665 m!340183))

(assert (=> b!269665 m!340179))

(declare-fun m!340185 () Bool)

(assert (=> b!269665 m!340185))

(assert (=> b!269665 m!339697))

(declare-fun m!340187 () Bool)

(assert (=> b!269665 m!340187))

(declare-fun m!340189 () Bool)

(assert (=> b!269665 m!340189))

(assert (=> b!269665 m!340181))

(assert (=> b!269665 m!340177))

(assert (=> b!269665 m!340173))

(assert (=> b!269420 d!78226))

(declare-fun b!269684 () Bool)

(declare-fun e!167561 () Int)

(declare-fun e!167563 () Int)

(assert (=> b!269684 (= e!167561 e!167563)))

(declare-fun c!51080 () Bool)

(declare-fun call!14715 () Int)

(assert (=> b!269684 (= c!51080 (>= 0 call!14715))))

(declare-fun b!269685 () Bool)

(declare-fun e!167562 () List!3829)

(assert (=> b!269685 (= e!167562 Nil!3819)))

(declare-fun b!269686 () Bool)

(declare-fun e!167564 () List!3829)

(assert (=> b!269686 (= e!167562 e!167564)))

(declare-fun c!51077 () Bool)

(assert (=> b!269686 (= c!51077 (<= 0 0))))

(declare-fun b!269687 () Bool)

(assert (=> b!269687 (= e!167563 0)))

(declare-fun b!269688 () Bool)

(declare-fun e!167565 () Bool)

(declare-fun lt!110780 () List!3829)

(declare-fun size!3046 (List!3829) Int)

(assert (=> b!269688 (= e!167565 (= (size!3046 lt!110780) e!167561))))

(declare-fun c!51079 () Bool)

(assert (=> b!269688 (= c!51079 (<= 0 0))))

(declare-fun b!269689 () Bool)

(assert (=> b!269689 (= e!167561 call!14715)))

(declare-fun b!269690 () Bool)

(assert (=> b!269690 (= e!167564 (drop!215 (t!38155 lt!110656) (- 0 1)))))

(declare-fun d!78228 () Bool)

(assert (=> d!78228 e!167565))

(declare-fun res!123288 () Bool)

(assert (=> d!78228 (=> (not res!123288) (not e!167565))))

(declare-fun content!548 (List!3829) (InoxSet Token!1202))

(assert (=> d!78228 (= res!123288 (= ((_ map implies) (content!548 lt!110780) (content!548 lt!110656)) ((as const (InoxSet Token!1202)) true)))))

(assert (=> d!78228 (= lt!110780 e!167562)))

(declare-fun c!51078 () Bool)

(assert (=> d!78228 (= c!51078 ((_ is Nil!3819) lt!110656))))

(assert (=> d!78228 (= (drop!215 lt!110656 0) lt!110780)))

(declare-fun b!269691 () Bool)

(assert (=> b!269691 (= e!167563 (- call!14715 0))))

(declare-fun b!269692 () Bool)

(assert (=> b!269692 (= e!167564 lt!110656)))

(declare-fun bm!14710 () Bool)

(assert (=> bm!14710 (= call!14715 (size!3046 lt!110656))))

(assert (= (and d!78228 c!51078) b!269685))

(assert (= (and d!78228 (not c!51078)) b!269686))

(assert (= (and b!269686 c!51077) b!269692))

(assert (= (and b!269686 (not c!51077)) b!269690))

(assert (= (and d!78228 res!123288) b!269688))

(assert (= (and b!269688 c!51079) b!269689))

(assert (= (and b!269688 (not c!51079)) b!269684))

(assert (= (and b!269684 c!51080) b!269687))

(assert (= (and b!269684 (not c!51080)) b!269691))

(assert (= (or b!269689 b!269684 b!269691) bm!14710))

(declare-fun m!340191 () Bool)

(assert (=> b!269688 m!340191))

(declare-fun m!340193 () Bool)

(assert (=> b!269690 m!340193))

(declare-fun m!340195 () Bool)

(assert (=> d!78228 m!340195))

(declare-fun m!340197 () Bool)

(assert (=> d!78228 m!340197))

(declare-fun m!340199 () Bool)

(assert (=> bm!14710 m!340199))

(assert (=> b!269420 d!78228))

(declare-fun d!78230 () Bool)

(declare-fun lt!110783 () Token!1202)

(declare-fun contains!718 (List!3829 Token!1202) Bool)

(assert (=> d!78230 (contains!718 lt!110656 lt!110783)))

(declare-fun e!167571 () Token!1202)

(assert (=> d!78230 (= lt!110783 e!167571)))

(declare-fun c!51083 () Bool)

(assert (=> d!78230 (= c!51083 (= 0 0))))

(declare-fun e!167570 () Bool)

(assert (=> d!78230 e!167570))

(declare-fun res!123291 () Bool)

(assert (=> d!78230 (=> (not res!123291) (not e!167570))))

(assert (=> d!78230 (= res!123291 (<= 0 0))))

(assert (=> d!78230 (= (apply!766 lt!110656 0) lt!110783)))

(declare-fun b!269699 () Bool)

(assert (=> b!269699 (= e!167570 (< 0 (size!3046 lt!110656)))))

(declare-fun b!269700 () Bool)

(assert (=> b!269700 (= e!167571 (head!886 lt!110656))))

(declare-fun b!269701 () Bool)

(assert (=> b!269701 (= e!167571 (apply!766 (tail!476 lt!110656) (- 0 1)))))

(assert (= (and d!78230 res!123291) b!269699))

(assert (= (and d!78230 c!51083) b!269700))

(assert (= (and d!78230 (not c!51083)) b!269701))

(declare-fun m!340201 () Bool)

(assert (=> d!78230 m!340201))

(assert (=> b!269699 m!340199))

(declare-fun m!340203 () Bool)

(assert (=> b!269700 m!340203))

(declare-fun m!340205 () Bool)

(assert (=> b!269701 m!340205))

(assert (=> b!269701 m!340205))

(declare-fun m!340207 () Bool)

(assert (=> b!269701 m!340207))

(assert (=> b!269420 d!78230))

(declare-fun d!78232 () Bool)

(declare-fun e!167572 () Bool)

(assert (=> d!78232 e!167572))

(declare-fun res!123294 () Bool)

(assert (=> d!78232 (=> (not res!123294) (not e!167572))))

(assert (=> d!78232 (= res!123294 (appendAssocInst!62 (c!50914 (BalanceConc!2569 Empty!1280)) (c!50914 (charsOf!374 (apply!765 lt!110399 0)))))))

(declare-fun lt!110784 () BalanceConc!2568)

(assert (=> d!78232 (= lt!110784 (BalanceConc!2569 (++!997 (c!50914 (BalanceConc!2569 Empty!1280)) (c!50914 (charsOf!374 (apply!765 lt!110399 0))))))))

(assert (=> d!78232 (= (++!996 (BalanceConc!2569 Empty!1280) (charsOf!374 (apply!765 lt!110399 0))) lt!110784)))

(declare-fun b!269703 () Bool)

(declare-fun res!123295 () Bool)

(assert (=> b!269703 (=> (not res!123295) (not e!167572))))

(assert (=> b!269703 (= res!123295 (<= (height!153 (++!997 (c!50914 (BalanceConc!2569 Empty!1280)) (c!50914 (charsOf!374 (apply!765 lt!110399 0))))) (+ (max!0 (height!153 (c!50914 (BalanceConc!2569 Empty!1280))) (height!153 (c!50914 (charsOf!374 (apply!765 lt!110399 0))))) 1)))))

(declare-fun b!269705 () Bool)

(assert (=> b!269705 (= e!167572 (= (list!1557 lt!110784) (++!994 (list!1557 (BalanceConc!2569 Empty!1280)) (list!1557 (charsOf!374 (apply!765 lt!110399 0))))))))

(declare-fun b!269702 () Bool)

(declare-fun res!123292 () Bool)

(assert (=> b!269702 (=> (not res!123292) (not e!167572))))

(assert (=> b!269702 (= res!123292 (isBalanced!350 (++!997 (c!50914 (BalanceConc!2569 Empty!1280)) (c!50914 (charsOf!374 (apply!765 lt!110399 0))))))))

(declare-fun b!269704 () Bool)

(declare-fun res!123293 () Bool)

(assert (=> b!269704 (=> (not res!123293) (not e!167572))))

(assert (=> b!269704 (= res!123293 (>= (height!153 (++!997 (c!50914 (BalanceConc!2569 Empty!1280)) (c!50914 (charsOf!374 (apply!765 lt!110399 0))))) (max!0 (height!153 (c!50914 (BalanceConc!2569 Empty!1280))) (height!153 (c!50914 (charsOf!374 (apply!765 lt!110399 0)))))))))

(assert (= (and d!78232 res!123294) b!269702))

(assert (= (and b!269702 res!123292) b!269703))

(assert (= (and b!269703 res!123295) b!269704))

(assert (= (and b!269704 res!123293) b!269705))

(declare-fun m!340209 () Bool)

(assert (=> b!269703 m!340209))

(declare-fun m!340211 () Bool)

(assert (=> b!269703 m!340211))

(assert (=> b!269703 m!340209))

(declare-fun m!340213 () Bool)

(assert (=> b!269703 m!340213))

(declare-fun m!340215 () Bool)

(assert (=> b!269703 m!340215))

(declare-fun m!340217 () Bool)

(assert (=> b!269703 m!340217))

(assert (=> b!269703 m!340213))

(assert (=> b!269703 m!340215))

(assert (=> b!269702 m!340209))

(assert (=> b!269702 m!340209))

(declare-fun m!340219 () Bool)

(assert (=> b!269702 m!340219))

(declare-fun m!340221 () Bool)

(assert (=> b!269705 m!340221))

(assert (=> b!269705 m!339703))

(assert (=> b!269705 m!339721))

(declare-fun m!340223 () Bool)

(assert (=> b!269705 m!340223))

(assert (=> b!269705 m!339703))

(assert (=> b!269705 m!340223))

(declare-fun m!340225 () Bool)

(assert (=> b!269705 m!340225))

(assert (=> b!269704 m!340209))

(assert (=> b!269704 m!340211))

(assert (=> b!269704 m!340209))

(assert (=> b!269704 m!340213))

(assert (=> b!269704 m!340215))

(assert (=> b!269704 m!340217))

(assert (=> b!269704 m!340213))

(assert (=> b!269704 m!340215))

(declare-fun m!340227 () Bool)

(assert (=> d!78232 m!340227))

(assert (=> d!78232 m!340209))

(assert (=> b!269420 d!78232))

(declare-fun d!78234 () Bool)

(declare-fun lt!110785 () BalanceConc!2568)

(assert (=> d!78234 (= (list!1557 lt!110785) (originalCharacters!772 (apply!765 lt!110399 0)))))

(assert (=> d!78234 (= lt!110785 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (apply!765 lt!110399 0)))) (value!25092 (apply!765 lt!110399 0))))))

(assert (=> d!78234 (= (charsOf!374 (apply!765 lt!110399 0)) lt!110785)))

(declare-fun b_lambda!8543 () Bool)

(assert (=> (not b_lambda!8543) (not d!78234)))

(declare-fun tb!15145 () Bool)

(declare-fun t!38247 () Bool)

(assert (=> (and b!269519 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))) (toChars!1323 (transformation!729 (rule!1314 (apply!765 lt!110399 0))))) t!38247) tb!15145))

(declare-fun b!269706 () Bool)

(declare-fun e!167573 () Bool)

(declare-fun tp!102410 () Bool)

(assert (=> b!269706 (= e!167573 (and (inv!4725 (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (apply!765 lt!110399 0)))) (value!25092 (apply!765 lt!110399 0))))) tp!102410))))

(declare-fun result!18748 () Bool)

(assert (=> tb!15145 (= result!18748 (and (inv!4726 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (apply!765 lt!110399 0)))) (value!25092 (apply!765 lt!110399 0)))) e!167573))))

(assert (= tb!15145 b!269706))

(declare-fun m!340229 () Bool)

(assert (=> b!269706 m!340229))

(declare-fun m!340231 () Bool)

(assert (=> tb!15145 m!340231))

(assert (=> d!78234 t!38247))

(declare-fun b_and!21445 () Bool)

(assert (= b_and!21437 (and (=> t!38247 result!18748) b_and!21445)))

(declare-fun tb!15147 () Bool)

(declare-fun t!38249 () Bool)

(assert (=> (and b!268967 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (toChars!1323 (transformation!729 (rule!1314 (apply!765 lt!110399 0))))) t!38249) tb!15147))

(declare-fun result!18750 () Bool)

(assert (= result!18750 result!18748))

(assert (=> d!78234 t!38249))

(declare-fun b_and!21447 () Bool)

(assert (= b_and!21441 (and (=> t!38249 result!18750) b_and!21447)))

(declare-fun tb!15149 () Bool)

(declare-fun t!38251 () Bool)

(assert (=> (and b!268971 (= (toChars!1323 (transformation!729 (h!9217 rules!1920))) (toChars!1323 (transformation!729 (rule!1314 (apply!765 lt!110399 0))))) t!38251) tb!15149))

(declare-fun result!18752 () Bool)

(assert (= result!18752 result!18748))

(assert (=> d!78234 t!38251))

(declare-fun b_and!21449 () Bool)

(assert (= b_and!21439 (and (=> t!38251 result!18752) b_and!21449)))

(declare-fun t!38253 () Bool)

(declare-fun tb!15151 () Bool)

(assert (=> (and b!268959 (= (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (toChars!1323 (transformation!729 (rule!1314 (apply!765 lt!110399 0))))) t!38253) tb!15151))

(declare-fun result!18754 () Bool)

(assert (= result!18754 result!18748))

(assert (=> d!78234 t!38253))

(declare-fun b_and!21451 () Bool)

(assert (= b_and!21443 (and (=> t!38253 result!18754) b_and!21451)))

(declare-fun tb!15153 () Bool)

(declare-fun t!38255 () Bool)

(assert (=> (and b!269534 (= (toChars!1323 (transformation!729 (h!9217 (t!38156 rules!1920)))) (toChars!1323 (transformation!729 (rule!1314 (apply!765 lt!110399 0))))) t!38255) tb!15153))

(declare-fun result!18756 () Bool)

(assert (= result!18756 result!18748))

(assert (=> d!78234 t!38255))

(declare-fun b_and!21453 () Bool)

(assert (= b_and!21435 (and (=> t!38255 result!18756) b_and!21453)))

(declare-fun m!340233 () Bool)

(assert (=> d!78234 m!340233))

(declare-fun m!340235 () Bool)

(assert (=> d!78234 m!340235))

(assert (=> b!269420 d!78234))

(declare-fun b!269707 () Bool)

(declare-fun e!167574 () Int)

(declare-fun e!167576 () Int)

(assert (=> b!269707 (= e!167574 e!167576)))

(declare-fun c!51087 () Bool)

(declare-fun call!14716 () Int)

(assert (=> b!269707 (= c!51087 (>= 0 call!14716))))

(declare-fun b!269708 () Bool)

(declare-fun e!167575 () List!3829)

(assert (=> b!269708 (= e!167575 Nil!3819)))

(declare-fun b!269709 () Bool)

(declare-fun e!167577 () List!3829)

(assert (=> b!269709 (= e!167575 e!167577)))

(declare-fun c!51084 () Bool)

(assert (=> b!269709 (= c!51084 (<= 0 0))))

(declare-fun b!269710 () Bool)

(assert (=> b!269710 (= e!167576 0)))

(declare-fun b!269711 () Bool)

(declare-fun e!167578 () Bool)

(declare-fun lt!110786 () List!3829)

(assert (=> b!269711 (= e!167578 (= (size!3046 lt!110786) e!167574))))

(declare-fun c!51086 () Bool)

(assert (=> b!269711 (= c!51086 (<= 0 0))))

(declare-fun b!269712 () Bool)

(assert (=> b!269712 (= e!167574 call!14716)))

(declare-fun b!269713 () Bool)

(assert (=> b!269713 (= e!167577 (drop!215 (t!38155 lt!110657) (- 0 1)))))

(declare-fun d!78236 () Bool)

(assert (=> d!78236 e!167578))

(declare-fun res!123296 () Bool)

(assert (=> d!78236 (=> (not res!123296) (not e!167578))))

(assert (=> d!78236 (= res!123296 (= ((_ map implies) (content!548 lt!110786) (content!548 lt!110657)) ((as const (InoxSet Token!1202)) true)))))

(assert (=> d!78236 (= lt!110786 e!167575)))

(declare-fun c!51085 () Bool)

(assert (=> d!78236 (= c!51085 ((_ is Nil!3819) lt!110657))))

(assert (=> d!78236 (= (drop!215 lt!110657 0) lt!110786)))

(declare-fun b!269714 () Bool)

(assert (=> b!269714 (= e!167576 (- call!14716 0))))

(declare-fun b!269715 () Bool)

(assert (=> b!269715 (= e!167577 lt!110657)))

(declare-fun bm!14711 () Bool)

(assert (=> bm!14711 (= call!14716 (size!3046 lt!110657))))

(assert (= (and d!78236 c!51085) b!269708))

(assert (= (and d!78236 (not c!51085)) b!269709))

(assert (= (and b!269709 c!51084) b!269715))

(assert (= (and b!269709 (not c!51084)) b!269713))

(assert (= (and d!78236 res!123296) b!269711))

(assert (= (and b!269711 c!51086) b!269712))

(assert (= (and b!269711 (not c!51086)) b!269707))

(assert (= (and b!269707 c!51087) b!269710))

(assert (= (and b!269707 (not c!51087)) b!269714))

(assert (= (or b!269712 b!269707 b!269714) bm!14711))

(declare-fun m!340237 () Bool)

(assert (=> b!269711 m!340237))

(declare-fun m!340239 () Bool)

(assert (=> b!269713 m!340239))

(declare-fun m!340241 () Bool)

(assert (=> d!78236 m!340241))

(declare-fun m!340243 () Bool)

(assert (=> d!78236 m!340243))

(declare-fun m!340245 () Bool)

(assert (=> bm!14711 m!340245))

(assert (=> b!269420 d!78236))

(declare-fun d!78238 () Bool)

(declare-fun lt!110787 () Token!1202)

(assert (=> d!78238 (= lt!110787 (apply!766 (list!1560 lt!110399) 0))))

(assert (=> d!78238 (= lt!110787 (apply!768 (c!50916 lt!110399) 0))))

(declare-fun e!167579 () Bool)

(assert (=> d!78238 e!167579))

(declare-fun res!123297 () Bool)

(assert (=> d!78238 (=> (not res!123297) (not e!167579))))

(assert (=> d!78238 (= res!123297 (<= 0 0))))

(assert (=> d!78238 (= (apply!765 lt!110399 0) lt!110787)))

(declare-fun b!269716 () Bool)

(assert (=> b!269716 (= e!167579 (< 0 (size!3041 lt!110399)))))

(assert (= (and d!78238 res!123297) b!269716))

(assert (=> d!78238 m!339697))

(assert (=> d!78238 m!339697))

(declare-fun m!340247 () Bool)

(assert (=> d!78238 m!340247))

(declare-fun m!340249 () Bool)

(assert (=> d!78238 m!340249))

(assert (=> b!269716 m!339705))

(assert (=> b!269420 d!78238))

(declare-fun d!78240 () Bool)

(assert (=> d!78240 (= (tail!476 (drop!215 lt!110657 0)) (t!38155 (drop!215 lt!110657 0)))))

(assert (=> b!269420 d!78240))

(declare-fun d!78242 () Bool)

(assert (=> d!78242 (= (tail!476 (drop!215 lt!110657 0)) (drop!215 lt!110657 (+ 0 1)))))

(declare-fun lt!110800 () Unit!4874)

(declare-fun choose!2450 (List!3829 Int) Unit!4874)

(assert (=> d!78242 (= lt!110800 (choose!2450 lt!110657 0))))

(declare-fun e!167588 () Bool)

(assert (=> d!78242 e!167588))

(declare-fun res!123314 () Bool)

(assert (=> d!78242 (=> (not res!123314) (not e!167588))))

(assert (=> d!78242 (= res!123314 (>= 0 0))))

(assert (=> d!78242 (= (lemmaDropTail!194 lt!110657 0) lt!110800)))

(declare-fun b!269737 () Bool)

(assert (=> b!269737 (= e!167588 (< 0 (size!3046 lt!110657)))))

(assert (= (and d!78242 res!123314) b!269737))

(assert (=> d!78242 m!339717))

(assert (=> d!78242 m!339717))

(assert (=> d!78242 m!339719))

(assert (=> d!78242 m!339731))

(declare-fun m!340251 () Bool)

(assert (=> d!78242 m!340251))

(assert (=> b!269737 m!340245))

(assert (=> b!269420 d!78242))

(declare-fun d!78244 () Bool)

(assert (=> d!78244 (= (head!886 (drop!215 lt!110656 0)) (apply!766 lt!110656 0))))

(declare-fun lt!110803 () Unit!4874)

(declare-fun choose!2451 (List!3829 Int) Unit!4874)

(assert (=> d!78244 (= lt!110803 (choose!2451 lt!110656 0))))

(declare-fun e!167591 () Bool)

(assert (=> d!78244 e!167591))

(declare-fun res!123317 () Bool)

(assert (=> d!78244 (=> (not res!123317) (not e!167591))))

(assert (=> d!78244 (= res!123317 (>= 0 0))))

(assert (=> d!78244 (= (lemmaDropApply!202 lt!110656 0) lt!110803)))

(declare-fun b!269740 () Bool)

(assert (=> b!269740 (= e!167591 (< 0 (size!3046 lt!110656)))))

(assert (= (and d!78244 res!123317) b!269740))

(assert (=> d!78244 m!339715))

(assert (=> d!78244 m!339715))

(assert (=> d!78244 m!339727))

(assert (=> d!78244 m!339713))

(declare-fun m!340253 () Bool)

(assert (=> d!78244 m!340253))

(assert (=> b!269740 m!340199))

(assert (=> b!269420 d!78244))

(declare-fun b!269741 () Bool)

(declare-fun e!167592 () Int)

(declare-fun e!167594 () Int)

(assert (=> b!269741 (= e!167592 e!167594)))

(declare-fun c!51093 () Bool)

(declare-fun call!14719 () Int)

(assert (=> b!269741 (= c!51093 (>= (+ 0 1) call!14719))))

(declare-fun b!269742 () Bool)

(declare-fun e!167593 () List!3829)

(assert (=> b!269742 (= e!167593 Nil!3819)))

(declare-fun b!269743 () Bool)

(declare-fun e!167595 () List!3829)

(assert (=> b!269743 (= e!167593 e!167595)))

(declare-fun c!51090 () Bool)

(assert (=> b!269743 (= c!51090 (<= (+ 0 1) 0))))

(declare-fun b!269744 () Bool)

(assert (=> b!269744 (= e!167594 0)))

(declare-fun b!269745 () Bool)

(declare-fun e!167596 () Bool)

(declare-fun lt!110804 () List!3829)

(assert (=> b!269745 (= e!167596 (= (size!3046 lt!110804) e!167592))))

(declare-fun c!51092 () Bool)

(assert (=> b!269745 (= c!51092 (<= (+ 0 1) 0))))

(declare-fun b!269746 () Bool)

(assert (=> b!269746 (= e!167592 call!14719)))

(declare-fun b!269747 () Bool)

(assert (=> b!269747 (= e!167595 (drop!215 (t!38155 lt!110657) (- (+ 0 1) 1)))))

(declare-fun d!78246 () Bool)

(assert (=> d!78246 e!167596))

(declare-fun res!123318 () Bool)

(assert (=> d!78246 (=> (not res!123318) (not e!167596))))

(assert (=> d!78246 (= res!123318 (= ((_ map implies) (content!548 lt!110804) (content!548 lt!110657)) ((as const (InoxSet Token!1202)) true)))))

(assert (=> d!78246 (= lt!110804 e!167593)))

(declare-fun c!51091 () Bool)

(assert (=> d!78246 (= c!51091 ((_ is Nil!3819) lt!110657))))

(assert (=> d!78246 (= (drop!215 lt!110657 (+ 0 1)) lt!110804)))

(declare-fun b!269748 () Bool)

(assert (=> b!269748 (= e!167594 (- call!14719 (+ 0 1)))))

(declare-fun b!269749 () Bool)

(assert (=> b!269749 (= e!167595 lt!110657)))

(declare-fun bm!14714 () Bool)

(assert (=> bm!14714 (= call!14719 (size!3046 lt!110657))))

(assert (= (and d!78246 c!51091) b!269742))

(assert (= (and d!78246 (not c!51091)) b!269743))

(assert (= (and b!269743 c!51090) b!269749))

(assert (= (and b!269743 (not c!51090)) b!269747))

(assert (= (and d!78246 res!123318) b!269745))

(assert (= (and b!269745 c!51092) b!269746))

(assert (= (and b!269745 (not c!51092)) b!269741))

(assert (= (and b!269741 c!51093) b!269744))

(assert (= (and b!269741 (not c!51093)) b!269748))

(assert (= (or b!269746 b!269741 b!269748) bm!14714))

(declare-fun m!340255 () Bool)

(assert (=> b!269745 m!340255))

(declare-fun m!340257 () Bool)

(assert (=> b!269747 m!340257))

(declare-fun m!340259 () Bool)

(assert (=> d!78246 m!340259))

(assert (=> d!78246 m!340243))

(assert (=> bm!14714 m!340245))

(assert (=> b!269420 d!78246))

(assert (=> b!269420 d!78216))

(declare-fun b!269805 () Bool)

(declare-fun e!167625 () Option!808)

(declare-fun call!14723 () Option!808)

(assert (=> b!269805 (= e!167625 call!14723)))

(declare-fun b!269806 () Bool)

(declare-fun res!123360 () Bool)

(declare-fun e!167624 () Bool)

(assert (=> b!269806 (=> (not res!123360) (not e!167624))))

(declare-fun lt!110855 () Option!808)

(declare-fun matchR!275 (Regex!953 List!3827) Bool)

(declare-fun get!1263 (Option!808) tuple2!4284)

(assert (=> b!269806 (= res!123360 (matchR!275 (regex!729 (rule!1314 (_1!2358 (get!1263 lt!110855)))) (list!1557 (charsOf!374 (_1!2358 (get!1263 lt!110855))))))))

(declare-fun b!269807 () Bool)

(declare-fun res!123356 () Bool)

(assert (=> b!269807 (=> (not res!123356) (not e!167624))))

(assert (=> b!269807 (= res!123356 (= (++!994 (list!1557 (charsOf!374 (_1!2358 (get!1263 lt!110855)))) (_2!2358 (get!1263 lt!110855))) (++!994 (list!1557 (charsOf!374 (h!9216 (t!38155 tokens!465)))) lt!110517)))))

(declare-fun b!269808 () Bool)

(declare-fun res!123358 () Bool)

(assert (=> b!269808 (=> (not res!123358) (not e!167624))))

(declare-fun apply!769 (TokenValueInjection!1274 BalanceConc!2568) TokenValue!751)

(assert (=> b!269808 (= res!123358 (= (value!25092 (_1!2358 (get!1263 lt!110855))) (apply!769 (transformation!729 (rule!1314 (_1!2358 (get!1263 lt!110855)))) (seqFromList!825 (originalCharacters!772 (_1!2358 (get!1263 lt!110855)))))))))

(declare-fun d!78248 () Bool)

(declare-fun e!167626 () Bool)

(assert (=> d!78248 e!167626))

(declare-fun res!123354 () Bool)

(assert (=> d!78248 (=> res!123354 e!167626)))

(declare-fun isEmpty!2425 (Option!808) Bool)

(assert (=> d!78248 (= res!123354 (isEmpty!2425 lt!110855))))

(assert (=> d!78248 (= lt!110855 e!167625)))

(declare-fun c!51105 () Bool)

(assert (=> d!78248 (= c!51105 (and ((_ is Cons!3820) rules!1920) ((_ is Nil!3820) (t!38156 rules!1920))))))

(declare-fun lt!110854 () Unit!4874)

(declare-fun lt!110852 () Unit!4874)

(assert (=> d!78248 (= lt!110854 lt!110852)))

(declare-fun isPrefix!397 (List!3827 List!3827) Bool)

(assert (=> d!78248 (isPrefix!397 (++!994 (list!1557 (charsOf!374 (h!9216 (t!38155 tokens!465)))) lt!110517) (++!994 (list!1557 (charsOf!374 (h!9216 (t!38155 tokens!465)))) lt!110517))))

(declare-fun lemmaIsPrefixRefl!207 (List!3827 List!3827) Unit!4874)

(assert (=> d!78248 (= lt!110852 (lemmaIsPrefixRefl!207 (++!994 (list!1557 (charsOf!374 (h!9216 (t!38155 tokens!465)))) lt!110517) (++!994 (list!1557 (charsOf!374 (h!9216 (t!38155 tokens!465)))) lt!110517)))))

(declare-fun rulesValidInductive!202 (LexerInterface!615 List!3830) Bool)

(assert (=> d!78248 (rulesValidInductive!202 thiss!17480 rules!1920)))

(assert (=> d!78248 (= (maxPrefix!333 thiss!17480 rules!1920 (++!994 (list!1557 (charsOf!374 (h!9216 (t!38155 tokens!465)))) lt!110517)) lt!110855)))

(declare-fun b!269809 () Bool)

(assert (=> b!269809 (= e!167626 e!167624)))

(declare-fun res!123359 () Bool)

(assert (=> b!269809 (=> (not res!123359) (not e!167624))))

(declare-fun isDefined!651 (Option!808) Bool)

(assert (=> b!269809 (= res!123359 (isDefined!651 lt!110855))))

(declare-fun bm!14718 () Bool)

(declare-fun maxPrefixOneRule!141 (LexerInterface!615 Rule!1258 List!3827) Option!808)

(assert (=> bm!14718 (= call!14723 (maxPrefixOneRule!141 thiss!17480 (h!9217 rules!1920) (++!994 (list!1557 (charsOf!374 (h!9216 (t!38155 tokens!465)))) lt!110517)))))

(declare-fun b!269810 () Bool)

(declare-fun res!123355 () Bool)

(assert (=> b!269810 (=> (not res!123355) (not e!167624))))

(assert (=> b!269810 (= res!123355 (= (list!1557 (charsOf!374 (_1!2358 (get!1263 lt!110855)))) (originalCharacters!772 (_1!2358 (get!1263 lt!110855)))))))

(declare-fun b!269811 () Bool)

(declare-fun contains!719 (List!3830 Rule!1258) Bool)

(assert (=> b!269811 (= e!167624 (contains!719 rules!1920 (rule!1314 (_1!2358 (get!1263 lt!110855)))))))

(declare-fun b!269812 () Bool)

(declare-fun res!123357 () Bool)

(assert (=> b!269812 (=> (not res!123357) (not e!167624))))

(assert (=> b!269812 (= res!123357 (< (size!3043 (_2!2358 (get!1263 lt!110855))) (size!3043 (++!994 (list!1557 (charsOf!374 (h!9216 (t!38155 tokens!465)))) lt!110517))))))

(declare-fun b!269813 () Bool)

(declare-fun lt!110853 () Option!808)

(declare-fun lt!110856 () Option!808)

(assert (=> b!269813 (= e!167625 (ite (and ((_ is None!807) lt!110853) ((_ is None!807) lt!110856)) None!807 (ite ((_ is None!807) lt!110856) lt!110853 (ite ((_ is None!807) lt!110853) lt!110856 (ite (>= (size!3037 (_1!2358 (v!14676 lt!110853))) (size!3037 (_1!2358 (v!14676 lt!110856)))) lt!110853 lt!110856)))))))

(assert (=> b!269813 (= lt!110853 call!14723)))

(assert (=> b!269813 (= lt!110856 (maxPrefix!333 thiss!17480 (t!38156 rules!1920) (++!994 (list!1557 (charsOf!374 (h!9216 (t!38155 tokens!465)))) lt!110517)))))

(assert (= (and d!78248 c!51105) b!269805))

(assert (= (and d!78248 (not c!51105)) b!269813))

(assert (= (or b!269805 b!269813) bm!14718))

(assert (= (and d!78248 (not res!123354)) b!269809))

(assert (= (and b!269809 res!123359) b!269810))

(assert (= (and b!269810 res!123355) b!269812))

(assert (= (and b!269812 res!123357) b!269807))

(assert (= (and b!269807 res!123356) b!269808))

(assert (= (and b!269808 res!123358) b!269806))

(assert (= (and b!269806 res!123360) b!269811))

(declare-fun m!340471 () Bool)

(assert (=> b!269810 m!340471))

(declare-fun m!340473 () Bool)

(assert (=> b!269810 m!340473))

(assert (=> b!269810 m!340473))

(declare-fun m!340475 () Bool)

(assert (=> b!269810 m!340475))

(assert (=> b!269807 m!340471))

(assert (=> b!269807 m!340473))

(assert (=> b!269807 m!340473))

(assert (=> b!269807 m!340475))

(assert (=> b!269807 m!340475))

(declare-fun m!340477 () Bool)

(assert (=> b!269807 m!340477))

(declare-fun m!340479 () Bool)

(assert (=> d!78248 m!340479))

(assert (=> d!78248 m!339299))

(assert (=> d!78248 m!339299))

(declare-fun m!340481 () Bool)

(assert (=> d!78248 m!340481))

(assert (=> d!78248 m!339299))

(assert (=> d!78248 m!339299))

(declare-fun m!340483 () Bool)

(assert (=> d!78248 m!340483))

(declare-fun m!340485 () Bool)

(assert (=> d!78248 m!340485))

(assert (=> b!269811 m!340471))

(declare-fun m!340487 () Bool)

(assert (=> b!269811 m!340487))

(declare-fun m!340489 () Bool)

(assert (=> b!269809 m!340489))

(assert (=> b!269808 m!340471))

(declare-fun m!340491 () Bool)

(assert (=> b!269808 m!340491))

(assert (=> b!269808 m!340491))

(declare-fun m!340493 () Bool)

(assert (=> b!269808 m!340493))

(assert (=> b!269813 m!339299))

(declare-fun m!340495 () Bool)

(assert (=> b!269813 m!340495))

(assert (=> b!269806 m!340471))

(assert (=> b!269806 m!340473))

(assert (=> b!269806 m!340473))

(assert (=> b!269806 m!340475))

(assert (=> b!269806 m!340475))

(declare-fun m!340497 () Bool)

(assert (=> b!269806 m!340497))

(assert (=> bm!14718 m!339299))

(declare-fun m!340499 () Bool)

(assert (=> bm!14718 m!340499))

(assert (=> b!269812 m!340471))

(declare-fun m!340501 () Bool)

(assert (=> b!269812 m!340501))

(assert (=> b!269812 m!339299))

(declare-fun m!340503 () Bool)

(assert (=> b!269812 m!340503))

(assert (=> b!269171 d!78248))

(declare-fun b!269817 () Bool)

(declare-fun lt!110861 () List!3827)

(declare-fun e!167628 () Bool)

(assert (=> b!269817 (= e!167628 (or (not (= lt!110517 Nil!3817)) (= lt!110861 (list!1557 (charsOf!374 (h!9216 (t!38155 tokens!465)))))))))

(declare-fun b!269815 () Bool)

(declare-fun e!167627 () List!3827)

(assert (=> b!269815 (= e!167627 (Cons!3817 (h!9214 (list!1557 (charsOf!374 (h!9216 (t!38155 tokens!465))))) (++!994 (t!38153 (list!1557 (charsOf!374 (h!9216 (t!38155 tokens!465))))) lt!110517)))))

(declare-fun d!78288 () Bool)

(assert (=> d!78288 e!167628))

(declare-fun res!123362 () Bool)

(assert (=> d!78288 (=> (not res!123362) (not e!167628))))

(assert (=> d!78288 (= res!123362 (= (content!547 lt!110861) ((_ map or) (content!547 (list!1557 (charsOf!374 (h!9216 (t!38155 tokens!465))))) (content!547 lt!110517))))))

(assert (=> d!78288 (= lt!110861 e!167627)))

(declare-fun c!51106 () Bool)

(assert (=> d!78288 (= c!51106 ((_ is Nil!3817) (list!1557 (charsOf!374 (h!9216 (t!38155 tokens!465))))))))

(assert (=> d!78288 (= (++!994 (list!1557 (charsOf!374 (h!9216 (t!38155 tokens!465)))) lt!110517) lt!110861)))

(declare-fun b!269814 () Bool)

(assert (=> b!269814 (= e!167627 lt!110517)))

(declare-fun b!269816 () Bool)

(declare-fun res!123361 () Bool)

(assert (=> b!269816 (=> (not res!123361) (not e!167628))))

(assert (=> b!269816 (= res!123361 (= (size!3043 lt!110861) (+ (size!3043 (list!1557 (charsOf!374 (h!9216 (t!38155 tokens!465))))) (size!3043 lt!110517))))))

(assert (= (and d!78288 c!51106) b!269814))

(assert (= (and d!78288 (not c!51106)) b!269815))

(assert (= (and d!78288 res!123362) b!269816))

(assert (= (and b!269816 res!123361) b!269817))

(declare-fun m!340505 () Bool)

(assert (=> b!269815 m!340505))

(declare-fun m!340507 () Bool)

(assert (=> d!78288 m!340507))

(assert (=> d!78288 m!339305))

(declare-fun m!340509 () Bool)

(assert (=> d!78288 m!340509))

(declare-fun m!340511 () Bool)

(assert (=> d!78288 m!340511))

(declare-fun m!340513 () Bool)

(assert (=> b!269816 m!340513))

(assert (=> b!269816 m!339305))

(declare-fun m!340515 () Bool)

(assert (=> b!269816 m!340515))

(declare-fun m!340517 () Bool)

(assert (=> b!269816 m!340517))

(assert (=> b!269171 d!78288))

(declare-fun d!78290 () Bool)

(assert (=> d!78290 (= (list!1557 (charsOf!374 (h!9216 (t!38155 tokens!465)))) (list!1561 (c!50914 (charsOf!374 (h!9216 (t!38155 tokens!465))))))))

(declare-fun bs!29880 () Bool)

(assert (= bs!29880 d!78290))

(declare-fun m!340519 () Bool)

(assert (=> bs!29880 m!340519))

(assert (=> b!269171 d!78290))

(declare-fun d!78292 () Bool)

(declare-fun lt!110864 () BalanceConc!2568)

(assert (=> d!78292 (= (list!1557 lt!110864) (originalCharacters!772 (h!9216 (t!38155 tokens!465))))))

(assert (=> d!78292 (= lt!110864 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))) (value!25092 (h!9216 (t!38155 tokens!465)))))))

(assert (=> d!78292 (= (charsOf!374 (h!9216 (t!38155 tokens!465))) lt!110864)))

(declare-fun b_lambda!8545 () Bool)

(assert (=> (not b_lambda!8545) (not d!78292)))

(declare-fun tb!15155 () Bool)

(declare-fun t!38257 () Bool)

(assert (=> (and b!268959 (= (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465)))))) t!38257) tb!15155))

(declare-fun b!269828 () Bool)

(declare-fun e!167635 () Bool)

(declare-fun tp!102411 () Bool)

(assert (=> b!269828 (= e!167635 (and (inv!4725 (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))) (value!25092 (h!9216 (t!38155 tokens!465)))))) tp!102411))))

(declare-fun result!18758 () Bool)

(assert (=> tb!15155 (= result!18758 (and (inv!4726 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))) (value!25092 (h!9216 (t!38155 tokens!465))))) e!167635))))

(assert (= tb!15155 b!269828))

(declare-fun m!340521 () Bool)

(assert (=> b!269828 m!340521))

(declare-fun m!340523 () Bool)

(assert (=> tb!15155 m!340523))

(assert (=> d!78292 t!38257))

(declare-fun b_and!21455 () Bool)

(assert (= b_and!21451 (and (=> t!38257 result!18758) b_and!21455)))

(declare-fun t!38259 () Bool)

(declare-fun tb!15157 () Bool)

(assert (=> (and b!269519 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465)))))) t!38259) tb!15157))

(declare-fun result!18760 () Bool)

(assert (= result!18760 result!18758))

(assert (=> d!78292 t!38259))

(declare-fun b_and!21457 () Bool)

(assert (= b_and!21445 (and (=> t!38259 result!18760) b_and!21457)))

(declare-fun t!38261 () Bool)

(declare-fun tb!15159 () Bool)

(assert (=> (and b!269534 (= (toChars!1323 (transformation!729 (h!9217 (t!38156 rules!1920)))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465)))))) t!38261) tb!15159))

(declare-fun result!18762 () Bool)

(assert (= result!18762 result!18758))

(assert (=> d!78292 t!38261))

(declare-fun b_and!21459 () Bool)

(assert (= b_and!21453 (and (=> t!38261 result!18762) b_and!21459)))

(declare-fun t!38263 () Bool)

(declare-fun tb!15161 () Bool)

(assert (=> (and b!268971 (= (toChars!1323 (transformation!729 (h!9217 rules!1920))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465)))))) t!38263) tb!15161))

(declare-fun result!18764 () Bool)

(assert (= result!18764 result!18758))

(assert (=> d!78292 t!38263))

(declare-fun b_and!21461 () Bool)

(assert (= b_and!21449 (and (=> t!38263 result!18764) b_and!21461)))

(declare-fun t!38265 () Bool)

(declare-fun tb!15163 () Bool)

(assert (=> (and b!268967 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465)))))) t!38265) tb!15163))

(declare-fun result!18766 () Bool)

(assert (= result!18766 result!18758))

(assert (=> d!78292 t!38265))

(declare-fun b_and!21463 () Bool)

(assert (= b_and!21447 (and (=> t!38265 result!18766) b_and!21463)))

(declare-fun m!340525 () Bool)

(assert (=> d!78292 m!340525))

(declare-fun m!340527 () Bool)

(assert (=> d!78292 m!340527))

(assert (=> b!269171 d!78292))

(declare-fun d!78294 () Bool)

(assert (=> d!78294 (dynLambda!1959 lambda!9094 (h!9216 (t!38155 tokens!465)))))

(declare-fun lt!110870 () Unit!4874)

(declare-fun choose!2452 (List!3829 Int Token!1202) Unit!4874)

(assert (=> d!78294 (= lt!110870 (choose!2452 (t!38155 tokens!465) lambda!9094 (h!9216 (t!38155 tokens!465))))))

(declare-fun e!167641 () Bool)

(assert (=> d!78294 e!167641))

(declare-fun res!123368 () Bool)

(assert (=> d!78294 (=> (not res!123368) (not e!167641))))

(assert (=> d!78294 (= res!123368 (forall!956 (t!38155 tokens!465) lambda!9094))))

(assert (=> d!78294 (= (forallContained!284 (t!38155 tokens!465) lambda!9094 (h!9216 (t!38155 tokens!465))) lt!110870)))

(declare-fun b!269836 () Bool)

(assert (=> b!269836 (= e!167641 (contains!718 (t!38155 tokens!465) (h!9216 (t!38155 tokens!465))))))

(assert (= (and d!78294 res!123368) b!269836))

(declare-fun b_lambda!8547 () Bool)

(assert (=> (not b_lambda!8547) (not d!78294)))

(declare-fun m!340545 () Bool)

(assert (=> d!78294 m!340545))

(declare-fun m!340547 () Bool)

(assert (=> d!78294 m!340547))

(declare-fun m!340553 () Bool)

(assert (=> d!78294 m!340553))

(declare-fun m!340555 () Bool)

(assert (=> b!269836 m!340555))

(assert (=> b!269171 d!78294))

(declare-fun bs!29884 () Bool)

(declare-fun b!269845 () Bool)

(assert (= bs!29884 (and b!269845 d!78038)))

(declare-fun lambda!9125 () Int)

(assert (=> bs!29884 (not (= lambda!9125 lambda!9100))))

(declare-fun bs!29885 () Bool)

(assert (= bs!29885 (and b!269845 b!269430)))

(assert (=> bs!29885 (= lambda!9125 lambda!9113)))

(declare-fun bs!29886 () Bool)

(assert (= bs!29886 (and b!269845 b!269171)))

(assert (=> bs!29886 (= lambda!9125 lambda!9094)))

(declare-fun bs!29887 () Bool)

(assert (= bs!29887 (and b!269845 d!78088)))

(assert (=> bs!29887 (= lambda!9125 lambda!9111)))

(declare-fun bs!29888 () Bool)

(assert (= bs!29888 (and b!269845 b!269296)))

(assert (=> bs!29888 (= lambda!9125 lambda!9101)))

(declare-fun bs!29889 () Bool)

(assert (= bs!29889 (and b!269845 d!78110)))

(assert (=> bs!29889 (not (= lambda!9125 lambda!9112))))

(declare-fun bs!29890 () Bool)

(assert (= bs!29890 (and b!269845 b!269439)))

(assert (=> bs!29890 (= lambda!9125 lambda!9114)))

(declare-fun bs!29891 () Bool)

(assert (= bs!29891 (and b!269845 b!268954)))

(assert (=> bs!29891 (not (= lambda!9125 lambda!9080))))

(declare-fun b!269853 () Bool)

(declare-fun e!167651 () Bool)

(assert (=> b!269853 (= e!167651 true)))

(declare-fun b!269852 () Bool)

(declare-fun e!167650 () Bool)

(assert (=> b!269852 (= e!167650 e!167651)))

(declare-fun b!269851 () Bool)

(declare-fun e!167649 () Bool)

(assert (=> b!269851 (= e!167649 e!167650)))

(assert (=> b!269845 e!167649))

(assert (= b!269852 b!269853))

(assert (= b!269851 b!269852))

(assert (= (and b!269845 ((_ is Cons!3820) rules!1920)) b!269851))

(assert (=> b!269853 (< (dynLambda!1953 order!2933 (toValue!1464 (transformation!729 (h!9217 rules!1920)))) (dynLambda!1954 order!2935 lambda!9125))))

(assert (=> b!269853 (< (dynLambda!1955 order!2937 (toChars!1323 (transformation!729 (h!9217 rules!1920)))) (dynLambda!1954 order!2935 lambda!9125))))

(assert (=> b!269845 true))

(declare-fun b!269841 () Bool)

(declare-fun e!167644 () List!3827)

(declare-fun call!14725 () List!3827)

(declare-fun lt!110875 () List!3827)

(assert (=> b!269841 (= e!167644 (++!994 call!14725 lt!110875))))

(declare-fun bm!14719 () Bool)

(declare-fun call!14726 () List!3827)

(declare-fun call!14724 () List!3827)

(assert (=> bm!14719 (= call!14726 call!14724)))

(declare-fun c!51116 () Bool)

(declare-fun c!51115 () Bool)

(assert (=> bm!14719 (= c!51116 c!51115)))

(declare-fun b!269842 () Bool)

(declare-fun e!167647 () List!3827)

(assert (=> b!269842 (= e!167647 Nil!3817)))

(declare-fun bm!14720 () Bool)

(declare-fun call!14728 () BalanceConc!2568)

(assert (=> bm!14720 (= call!14728 (charsOf!374 (h!9216 (t!38155 (t!38155 tokens!465)))))))

(declare-fun b!269843 () Bool)

(declare-fun e!167646 () BalanceConc!2568)

(declare-fun call!14727 () BalanceConc!2568)

(assert (=> b!269843 (= e!167646 call!14727)))

(declare-fun b!269844 () Bool)

(declare-fun lt!110871 () Option!808)

(assert (=> b!269844 (= c!51115 (and ((_ is Some!807) lt!110871) (not (= (_1!2358 (v!14676 lt!110871)) (h!9216 (t!38155 (t!38155 tokens!465)))))))))

(declare-fun e!167648 () List!3827)

(assert (=> b!269844 (= e!167648 e!167644)))

(assert (=> b!269845 (= e!167647 e!167648)))

(declare-fun lt!110872 () Unit!4874)

(assert (=> b!269845 (= lt!110872 (forallContained!284 (t!38155 (t!38155 tokens!465)) lambda!9125 (h!9216 (t!38155 (t!38155 tokens!465)))))))

(assert (=> b!269845 (= lt!110875 (printWithSeparatorTokenWhenNeededList!298 thiss!17480 rules!1920 (t!38155 (t!38155 (t!38155 tokens!465))) separatorToken!170))))

(assert (=> b!269845 (= lt!110871 (maxPrefix!333 thiss!17480 rules!1920 (++!994 (list!1557 (charsOf!374 (h!9216 (t!38155 (t!38155 tokens!465))))) lt!110875)))))

(declare-fun c!51118 () Bool)

(assert (=> b!269845 (= c!51118 (and ((_ is Some!807) lt!110871) (= (_1!2358 (v!14676 lt!110871)) (h!9216 (t!38155 (t!38155 tokens!465))))))))

(declare-fun bm!14721 () Bool)

(assert (=> bm!14721 (= call!14724 (list!1557 (ite c!51118 call!14728 e!167646)))))

(declare-fun bm!14722 () Bool)

(declare-fun c!51117 () Bool)

(assert (=> bm!14722 (= c!51117 c!51118)))

(declare-fun e!167645 () List!3827)

(assert (=> bm!14722 (= call!14725 (++!994 e!167645 (ite c!51118 lt!110875 call!14726)))))

(declare-fun b!269846 () Bool)

(assert (=> b!269846 (= e!167644 Nil!3817)))

(assert (=> b!269846 (= (print!340 thiss!17480 (singletonSeq!275 (h!9216 (t!38155 (t!38155 tokens!465))))) (printTailRec!303 thiss!17480 (singletonSeq!275 (h!9216 (t!38155 (t!38155 tokens!465)))) 0 (BalanceConc!2569 Empty!1280)))))

(declare-fun lt!110873 () Unit!4874)

(declare-fun Unit!4900 () Unit!4874)

(assert (=> b!269846 (= lt!110873 Unit!4900)))

(declare-fun lt!110874 () Unit!4874)

(assert (=> b!269846 (= lt!110874 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!110 thiss!17480 rules!1920 call!14726 lt!110875))))

(assert (=> b!269846 false))

(declare-fun lt!110876 () Unit!4874)

(declare-fun Unit!4901 () Unit!4874)

(assert (=> b!269846 (= lt!110876 Unit!4901)))

(declare-fun d!78304 () Bool)

(declare-fun c!51119 () Bool)

(assert (=> d!78304 (= c!51119 ((_ is Cons!3819) (t!38155 (t!38155 tokens!465))))))

(assert (=> d!78304 (= (printWithSeparatorTokenWhenNeededList!298 thiss!17480 rules!1920 (t!38155 (t!38155 tokens!465)) separatorToken!170) e!167647)))

(declare-fun b!269847 () Bool)

(assert (=> b!269847 (= e!167645 (list!1557 call!14727))))

(declare-fun bm!14723 () Bool)

(assert (=> bm!14723 (= call!14727 call!14728)))

(declare-fun b!269848 () Bool)

(assert (=> b!269848 (= e!167645 call!14724)))

(declare-fun b!269849 () Bool)

(assert (=> b!269849 (= e!167648 call!14725)))

(declare-fun b!269850 () Bool)

(assert (=> b!269850 (= e!167646 (charsOf!374 separatorToken!170))))

(assert (= (and d!78304 c!51119) b!269845))

(assert (= (and d!78304 (not c!51119)) b!269842))

(assert (= (and b!269845 c!51118) b!269849))

(assert (= (and b!269845 (not c!51118)) b!269844))

(assert (= (and b!269844 c!51115) b!269841))

(assert (= (and b!269844 (not c!51115)) b!269846))

(assert (= (or b!269841 b!269846) bm!14723))

(assert (= (or b!269841 b!269846) bm!14719))

(assert (= (and bm!14719 c!51116) b!269850))

(assert (= (and bm!14719 (not c!51116)) b!269843))

(assert (= (or b!269849 bm!14723) bm!14720))

(assert (= (or b!269849 bm!14719) bm!14721))

(assert (= (or b!269849 b!269841) bm!14722))

(assert (= (and bm!14722 c!51117) b!269848))

(assert (= (and bm!14722 (not c!51117)) b!269847))

(assert (=> b!269850 m!338937))

(declare-fun m!340563 () Bool)

(assert (=> b!269845 m!340563))

(declare-fun m!340565 () Bool)

(assert (=> b!269845 m!340565))

(declare-fun m!340567 () Bool)

(assert (=> b!269845 m!340567))

(declare-fun m!340569 () Bool)

(assert (=> b!269845 m!340569))

(declare-fun m!340571 () Bool)

(assert (=> b!269845 m!340571))

(declare-fun m!340573 () Bool)

(assert (=> b!269845 m!340573))

(assert (=> b!269845 m!340571))

(assert (=> b!269845 m!340565))

(assert (=> b!269845 m!340569))

(declare-fun m!340575 () Bool)

(assert (=> bm!14721 m!340575))

(declare-fun m!340577 () Bool)

(assert (=> bm!14722 m!340577))

(declare-fun m!340579 () Bool)

(assert (=> b!269846 m!340579))

(assert (=> b!269846 m!340579))

(declare-fun m!340581 () Bool)

(assert (=> b!269846 m!340581))

(assert (=> b!269846 m!340579))

(declare-fun m!340583 () Bool)

(assert (=> b!269846 m!340583))

(declare-fun m!340585 () Bool)

(assert (=> b!269846 m!340585))

(declare-fun m!340587 () Bool)

(assert (=> b!269841 m!340587))

(declare-fun m!340589 () Bool)

(assert (=> b!269847 m!340589))

(assert (=> bm!14720 m!340569))

(assert (=> b!269171 d!78304))

(declare-fun d!78310 () Bool)

(assert (=> d!78310 (= (list!1557 lt!110654) (list!1561 (c!50914 lt!110654)))))

(declare-fun bs!29892 () Bool)

(assert (= bs!29892 d!78310))

(declare-fun m!340591 () Bool)

(assert (=> bs!29892 m!340591))

(assert (=> d!78104 d!78310))

(declare-fun d!78312 () Bool)

(declare-fun lt!110885 () Int)

(assert (=> d!78312 (= lt!110885 (size!3046 (list!1560 lt!110399)))))

(assert (=> d!78312 (= lt!110885 (size!3044 (c!50916 lt!110399)))))

(assert (=> d!78312 (= (size!3041 lt!110399) lt!110885)))

(declare-fun bs!29894 () Bool)

(assert (= bs!29894 d!78312))

(assert (=> bs!29894 m!339697))

(assert (=> bs!29894 m!339697))

(declare-fun m!340621 () Bool)

(assert (=> bs!29894 m!340621))

(declare-fun m!340623 () Bool)

(assert (=> bs!29894 m!340623))

(assert (=> d!78104 d!78312))

(declare-fun d!78326 () Bool)

(declare-fun lt!110925 () List!3827)

(assert (=> d!78326 (= lt!110925 (++!994 (list!1557 (BalanceConc!2569 Empty!1280)) (printList!291 thiss!17480 (dropList!162 lt!110399 0))))))

(declare-fun e!167665 () List!3827)

(assert (=> d!78326 (= lt!110925 e!167665)))

(declare-fun c!51125 () Bool)

(assert (=> d!78326 (= c!51125 ((_ is Cons!3819) (dropList!162 lt!110399 0)))))

(assert (=> d!78326 (= (printListTailRec!127 thiss!17480 (dropList!162 lt!110399 0) (list!1557 (BalanceConc!2569 Empty!1280))) lt!110925)))

(declare-fun b!269874 () Bool)

(assert (=> b!269874 (= e!167665 (printListTailRec!127 thiss!17480 (t!38155 (dropList!162 lt!110399 0)) (++!994 (list!1557 (BalanceConc!2569 Empty!1280)) (list!1557 (charsOf!374 (h!9216 (dropList!162 lt!110399 0)))))))))

(declare-fun lt!110927 () List!3827)

(assert (=> b!269874 (= lt!110927 (list!1557 (charsOf!374 (h!9216 (dropList!162 lt!110399 0)))))))

(declare-fun lt!110924 () List!3827)

(assert (=> b!269874 (= lt!110924 (printList!291 thiss!17480 (t!38155 (dropList!162 lt!110399 0))))))

(declare-fun lt!110928 () Unit!4874)

(assert (=> b!269874 (= lt!110928 (lemmaConcatAssociativity!426 (list!1557 (BalanceConc!2569 Empty!1280)) lt!110927 lt!110924))))

(assert (=> b!269874 (= (++!994 (++!994 (list!1557 (BalanceConc!2569 Empty!1280)) lt!110927) lt!110924) (++!994 (list!1557 (BalanceConc!2569 Empty!1280)) (++!994 lt!110927 lt!110924)))))

(declare-fun lt!110926 () Unit!4874)

(assert (=> b!269874 (= lt!110926 lt!110928)))

(declare-fun b!269875 () Bool)

(assert (=> b!269875 (= e!167665 (list!1557 (BalanceConc!2569 Empty!1280)))))

(assert (= (and d!78326 c!51125) b!269874))

(assert (= (and d!78326 (not c!51125)) b!269875))

(assert (=> d!78326 m!339707))

(declare-fun m!340725 () Bool)

(assert (=> d!78326 m!340725))

(assert (=> d!78326 m!339703))

(assert (=> d!78326 m!340725))

(declare-fun m!340727 () Bool)

(assert (=> d!78326 m!340727))

(declare-fun m!340729 () Bool)

(assert (=> b!269874 m!340729))

(assert (=> b!269874 m!339703))

(declare-fun m!340731 () Bool)

(assert (=> b!269874 m!340731))

(declare-fun m!340733 () Bool)

(assert (=> b!269874 m!340733))

(declare-fun m!340735 () Bool)

(assert (=> b!269874 m!340735))

(assert (=> b!269874 m!339703))

(declare-fun m!340737 () Bool)

(assert (=> b!269874 m!340737))

(declare-fun m!340739 () Bool)

(assert (=> b!269874 m!340739))

(assert (=> b!269874 m!340737))

(declare-fun m!340741 () Bool)

(assert (=> b!269874 m!340741))

(assert (=> b!269874 m!340739))

(declare-fun m!340743 () Bool)

(assert (=> b!269874 m!340743))

(declare-fun m!340745 () Bool)

(assert (=> b!269874 m!340745))

(assert (=> b!269874 m!339703))

(assert (=> b!269874 m!340745))

(declare-fun m!340747 () Bool)

(assert (=> b!269874 m!340747))

(assert (=> b!269874 m!339703))

(assert (=> b!269874 m!340743))

(assert (=> b!269874 m!340733))

(assert (=> d!78104 d!78326))

(declare-fun d!78340 () Bool)

(assert (=> d!78340 (= (dropList!162 lt!110399 0) (drop!215 (list!1563 (c!50916 lt!110399)) 0))))

(declare-fun bs!29899 () Bool)

(assert (= bs!29899 d!78340))

(assert (=> bs!29899 m!340145))

(assert (=> bs!29899 m!340145))

(declare-fun m!340749 () Bool)

(assert (=> bs!29899 m!340749))

(assert (=> d!78104 d!78340))

(declare-fun d!78342 () Bool)

(assert (=> d!78342 (= (list!1557 (BalanceConc!2569 Empty!1280)) (list!1561 (c!50914 (BalanceConc!2569 Empty!1280))))))

(declare-fun bs!29900 () Bool)

(assert (= bs!29900 d!78342))

(declare-fun m!340751 () Bool)

(assert (=> bs!29900 m!340751))

(assert (=> d!78104 d!78342))

(declare-fun d!78344 () Bool)

(assert (=> d!78344 (= (list!1557 call!14681) (list!1561 (c!50914 call!14681)))))

(declare-fun bs!29901 () Bool)

(assert (= bs!29901 d!78344))

(declare-fun m!340753 () Bool)

(assert (=> bs!29901 m!340753))

(assert (=> b!269173 d!78344))

(declare-fun bs!29902 () Bool)

(declare-fun d!78346 () Bool)

(assert (= bs!29902 (and d!78346 d!78038)))

(declare-fun lambda!9128 () Int)

(assert (=> bs!29902 (not (= lambda!9128 lambda!9100))))

(declare-fun bs!29903 () Bool)

(assert (= bs!29903 (and d!78346 b!269845)))

(assert (=> bs!29903 (= lambda!9128 lambda!9125)))

(declare-fun bs!29904 () Bool)

(assert (= bs!29904 (and d!78346 b!269430)))

(assert (=> bs!29904 (= lambda!9128 lambda!9113)))

(declare-fun bs!29905 () Bool)

(assert (= bs!29905 (and d!78346 b!269171)))

(assert (=> bs!29905 (= lambda!9128 lambda!9094)))

(declare-fun bs!29906 () Bool)

(assert (= bs!29906 (and d!78346 d!78088)))

(assert (=> bs!29906 (= lambda!9128 lambda!9111)))

(declare-fun bs!29907 () Bool)

(assert (= bs!29907 (and d!78346 b!269296)))

(assert (=> bs!29907 (= lambda!9128 lambda!9101)))

(declare-fun bs!29908 () Bool)

(assert (= bs!29908 (and d!78346 d!78110)))

(assert (=> bs!29908 (not (= lambda!9128 lambda!9112))))

(declare-fun bs!29909 () Bool)

(assert (= bs!29909 (and d!78346 b!269439)))

(assert (=> bs!29909 (= lambda!9128 lambda!9114)))

(declare-fun bs!29910 () Bool)

(assert (= bs!29910 (and d!78346 b!268954)))

(assert (=> bs!29910 (not (= lambda!9128 lambda!9080))))

(declare-fun b!269884 () Bool)

(declare-fun e!167674 () Bool)

(assert (=> b!269884 (= e!167674 true)))

(declare-fun b!269883 () Bool)

(declare-fun e!167673 () Bool)

(assert (=> b!269883 (= e!167673 e!167674)))

(declare-fun b!269882 () Bool)

(declare-fun e!167672 () Bool)

(assert (=> b!269882 (= e!167672 e!167673)))

(assert (=> d!78346 e!167672))

(assert (= b!269883 b!269884))

(assert (= b!269882 b!269883))

(assert (= (and d!78346 ((_ is Cons!3820) rules!1920)) b!269882))

(assert (=> b!269884 (< (dynLambda!1953 order!2933 (toValue!1464 (transformation!729 (h!9217 rules!1920)))) (dynLambda!1954 order!2935 lambda!9128))))

(assert (=> b!269884 (< (dynLambda!1955 order!2937 (toChars!1323 (transformation!729 (h!9217 rules!1920)))) (dynLambda!1954 order!2935 lambda!9128))))

(assert (=> d!78346 true))

(declare-fun lt!110931 () Bool)

(assert (=> d!78346 (= lt!110931 (forall!956 (list!1560 lt!110395) lambda!9128))))

(declare-fun e!167670 () Bool)

(assert (=> d!78346 (= lt!110931 e!167670)))

(declare-fun res!123384 () Bool)

(assert (=> d!78346 (=> res!123384 e!167670)))

(assert (=> d!78346 (= res!123384 (not ((_ is Cons!3819) (list!1560 lt!110395))))))

(assert (=> d!78346 (not (isEmpty!2413 rules!1920))))

(assert (=> d!78346 (= (rulesProduceEachTokenIndividuallyList!226 thiss!17480 rules!1920 (list!1560 lt!110395)) lt!110931)))

(declare-fun b!269880 () Bool)

(declare-fun e!167671 () Bool)

(assert (=> b!269880 (= e!167670 e!167671)))

(declare-fun res!123383 () Bool)

(assert (=> b!269880 (=> (not res!123383) (not e!167671))))

(assert (=> b!269880 (= res!123383 (rulesProduceIndividualToken!364 thiss!17480 rules!1920 (h!9216 (list!1560 lt!110395))))))

(declare-fun b!269881 () Bool)

(assert (=> b!269881 (= e!167671 (rulesProduceEachTokenIndividuallyList!226 thiss!17480 rules!1920 (t!38155 (list!1560 lt!110395))))))

(assert (= (and d!78346 (not res!123384)) b!269880))

(assert (= (and b!269880 res!123383) b!269881))

(assert (=> d!78346 m!339661))

(declare-fun m!340755 () Bool)

(assert (=> d!78346 m!340755))

(assert (=> d!78346 m!338965))

(declare-fun m!340757 () Bool)

(assert (=> b!269880 m!340757))

(declare-fun m!340759 () Bool)

(assert (=> b!269881 m!340759))

(assert (=> b!269389 d!78346))

(declare-fun d!78348 () Bool)

(assert (=> d!78348 (= (list!1560 lt!110395) (list!1563 (c!50916 lt!110395)))))

(declare-fun bs!29911 () Bool)

(assert (= bs!29911 d!78348))

(declare-fun m!340761 () Bool)

(assert (=> bs!29911 m!340761))

(assert (=> b!269389 d!78348))

(declare-fun d!78350 () Bool)

(declare-fun lt!110932 () Int)

(assert (=> d!78350 (>= lt!110932 0)))

(declare-fun e!167675 () Int)

(assert (=> d!78350 (= lt!110932 e!167675)))

(declare-fun c!51126 () Bool)

(assert (=> d!78350 (= c!51126 ((_ is Nil!3817) (originalCharacters!772 (h!9216 tokens!465))))))

(assert (=> d!78350 (= (size!3043 (originalCharacters!772 (h!9216 tokens!465))) lt!110932)))

(declare-fun b!269885 () Bool)

(assert (=> b!269885 (= e!167675 0)))

(declare-fun b!269886 () Bool)

(assert (=> b!269886 (= e!167675 (+ 1 (size!3043 (t!38153 (originalCharacters!772 (h!9216 tokens!465))))))))

(assert (= (and d!78350 c!51126) b!269885))

(assert (= (and d!78350 (not c!51126)) b!269886))

(declare-fun m!340763 () Bool)

(assert (=> b!269886 m!340763))

(assert (=> b!269337 d!78350))

(declare-fun d!78352 () Bool)

(assert (=> d!78352 (= (list!1557 lt!110617) (list!1561 (c!50914 lt!110617)))))

(declare-fun bs!29912 () Bool)

(assert (= bs!29912 d!78352))

(declare-fun m!340765 () Bool)

(assert (=> bs!29912 m!340765))

(assert (=> d!78064 d!78352))

(declare-fun d!78354 () Bool)

(declare-fun charsToInt!0 (List!3828) (_ BitVec 32))

(assert (=> d!78354 (= (inv!16 (value!25092 (h!9216 tokens!465))) (= (charsToInt!0 (text!5704 (value!25092 (h!9216 tokens!465)))) (value!25083 (value!25092 (h!9216 tokens!465)))))))

(declare-fun bs!29913 () Bool)

(assert (= bs!29913 d!78354))

(declare-fun m!340767 () Bool)

(assert (=> bs!29913 m!340767))

(assert (=> b!269485 d!78354))

(declare-fun d!78356 () Bool)

(declare-fun c!51129 () Bool)

(assert (=> d!78356 (= c!51129 ((_ is Node!1280) (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (value!25092 separatorToken!170)))))))

(declare-fun e!167680 () Bool)

(assert (=> d!78356 (= (inv!4725 (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (value!25092 separatorToken!170)))) e!167680)))

(declare-fun b!269893 () Bool)

(declare-fun inv!4727 (Conc!1280) Bool)

(assert (=> b!269893 (= e!167680 (inv!4727 (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (value!25092 separatorToken!170)))))))

(declare-fun b!269894 () Bool)

(declare-fun e!167681 () Bool)

(assert (=> b!269894 (= e!167680 e!167681)))

(declare-fun res!123387 () Bool)

(assert (=> b!269894 (= res!123387 (not ((_ is Leaf!1984) (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (value!25092 separatorToken!170))))))))

(assert (=> b!269894 (=> res!123387 e!167681)))

(declare-fun b!269895 () Bool)

(declare-fun inv!4728 (Conc!1280) Bool)

(assert (=> b!269895 (= e!167681 (inv!4728 (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (value!25092 separatorToken!170)))))))

(assert (= (and d!78356 c!51129) b!269893))

(assert (= (and d!78356 (not c!51129)) b!269894))

(assert (= (and b!269894 (not res!123387)) b!269895))

(declare-fun m!340769 () Bool)

(assert (=> b!269893 m!340769))

(declare-fun m!340771 () Bool)

(assert (=> b!269895 m!340771))

(assert (=> b!269318 d!78356))

(declare-fun d!78358 () Bool)

(declare-fun charsToBigInt!1 (List!3828) Int)

(assert (=> d!78358 (= (inv!17 (value!25092 separatorToken!170)) (= (charsToBigInt!1 (text!5705 (value!25092 separatorToken!170))) (value!25084 (value!25092 separatorToken!170))))))

(declare-fun bs!29914 () Bool)

(assert (= bs!29914 d!78358))

(declare-fun m!340773 () Bool)

(assert (=> bs!29914 m!340773))

(assert (=> b!269487 d!78358))

(declare-fun d!78360 () Bool)

(assert (=> d!78360 (= (list!1557 (ite c!51018 call!14712 e!167411)) (list!1561 (c!50914 (ite c!51018 call!14712 e!167411))))))

(declare-fun bs!29915 () Bool)

(assert (= bs!29915 d!78360))

(declare-fun m!340775 () Bool)

(assert (=> bs!29915 m!340775))

(assert (=> bm!14705 d!78360))

(declare-fun d!78362 () Bool)

(declare-fun e!167684 () Bool)

(assert (=> d!78362 e!167684))

(declare-fun res!123390 () Bool)

(assert (=> d!78362 (=> (not res!123390) (not e!167684))))

(declare-fun lt!110935 () BalanceConc!2570)

(assert (=> d!78362 (= res!123390 (= (list!1560 lt!110935) (t!38155 tokens!465)))))

(declare-fun fromList!176 (List!3829) Conc!1281)

(assert (=> d!78362 (= lt!110935 (BalanceConc!2571 (fromList!176 (t!38155 tokens!465))))))

(assert (=> d!78362 (= (fromListB!317 (t!38155 tokens!465)) lt!110935)))

(declare-fun b!269898 () Bool)

(assert (=> b!269898 (= e!167684 (isBalanced!348 (fromList!176 (t!38155 tokens!465))))))

(assert (= (and d!78362 res!123390) b!269898))

(declare-fun m!340777 () Bool)

(assert (=> d!78362 m!340777))

(declare-fun m!340779 () Bool)

(assert (=> d!78362 m!340779))

(assert (=> b!269898 m!340779))

(assert (=> b!269898 m!340779))

(declare-fun m!340781 () Bool)

(assert (=> b!269898 m!340781))

(assert (=> d!77996 d!78362))

(declare-fun d!78364 () Bool)

(declare-fun charsToBigInt!0 (List!3828 Int) Int)

(assert (=> d!78364 (= (inv!15 (value!25092 separatorToken!170)) (= (charsToBigInt!0 (text!5706 (value!25092 separatorToken!170)) 0) (value!25087 (value!25092 separatorToken!170))))))

(declare-fun bs!29916 () Bool)

(assert (= bs!29916 d!78364))

(declare-fun m!340783 () Bool)

(assert (=> bs!29916 m!340783))

(assert (=> b!269488 d!78364))

(declare-fun lt!110936 () List!3827)

(declare-fun e!167686 () Bool)

(declare-fun b!269902 () Bool)

(assert (=> b!269902 (= e!167686 (or (not (= (ite c!51018 lt!110676 call!14710) Nil!3817)) (= lt!110936 e!167410)))))

(declare-fun e!167685 () List!3827)

(declare-fun b!269900 () Bool)

(assert (=> b!269900 (= e!167685 (Cons!3817 (h!9214 e!167410) (++!994 (t!38153 e!167410) (ite c!51018 lt!110676 call!14710))))))

(declare-fun d!78366 () Bool)

(assert (=> d!78366 e!167686))

(declare-fun res!123392 () Bool)

(assert (=> d!78366 (=> (not res!123392) (not e!167686))))

(assert (=> d!78366 (= res!123392 (= (content!547 lt!110936) ((_ map or) (content!547 e!167410) (content!547 (ite c!51018 lt!110676 call!14710)))))))

(assert (=> d!78366 (= lt!110936 e!167685)))

(declare-fun c!51131 () Bool)

(assert (=> d!78366 (= c!51131 ((_ is Nil!3817) e!167410))))

(assert (=> d!78366 (= (++!994 e!167410 (ite c!51018 lt!110676 call!14710)) lt!110936)))

(declare-fun b!269899 () Bool)

(assert (=> b!269899 (= e!167685 (ite c!51018 lt!110676 call!14710))))

(declare-fun b!269901 () Bool)

(declare-fun res!123391 () Bool)

(assert (=> b!269901 (=> (not res!123391) (not e!167686))))

(assert (=> b!269901 (= res!123391 (= (size!3043 lt!110936) (+ (size!3043 e!167410) (size!3043 (ite c!51018 lt!110676 call!14710)))))))

(assert (= (and d!78366 c!51131) b!269899))

(assert (= (and d!78366 (not c!51131)) b!269900))

(assert (= (and d!78366 res!123392) b!269901))

(assert (= (and b!269901 res!123391) b!269902))

(declare-fun m!340785 () Bool)

(assert (=> b!269900 m!340785))

(declare-fun m!340787 () Bool)

(assert (=> d!78366 m!340787))

(declare-fun m!340789 () Bool)

(assert (=> d!78366 m!340789))

(declare-fun m!340791 () Bool)

(assert (=> d!78366 m!340791))

(declare-fun m!340793 () Bool)

(assert (=> b!269901 m!340793))

(declare-fun m!340795 () Bool)

(assert (=> b!269901 m!340795))

(declare-fun m!340797 () Bool)

(assert (=> b!269901 m!340797))

(assert (=> bm!14706 d!78366))

(declare-fun d!78368 () Bool)

(declare-fun res!123393 () Bool)

(declare-fun e!167687 () Bool)

(assert (=> d!78368 (=> res!123393 e!167687)))

(assert (=> d!78368 (= res!123393 ((_ is Nil!3819) (t!38155 tokens!465)))))

(assert (=> d!78368 (= (forall!956 (t!38155 tokens!465) lambda!9080) e!167687)))

(declare-fun b!269903 () Bool)

(declare-fun e!167688 () Bool)

(assert (=> b!269903 (= e!167687 e!167688)))

(declare-fun res!123394 () Bool)

(assert (=> b!269903 (=> (not res!123394) (not e!167688))))

(assert (=> b!269903 (= res!123394 (dynLambda!1959 lambda!9080 (h!9216 (t!38155 tokens!465))))))

(declare-fun b!269904 () Bool)

(assert (=> b!269904 (= e!167688 (forall!956 (t!38155 (t!38155 tokens!465)) lambda!9080))))

(assert (= (and d!78368 (not res!123393)) b!269903))

(assert (= (and b!269903 res!123394) b!269904))

(declare-fun b_lambda!8549 () Bool)

(assert (=> (not b_lambda!8549) (not b!269903)))

(declare-fun m!340799 () Bool)

(assert (=> b!269903 m!340799))

(declare-fun m!340801 () Bool)

(assert (=> b!269904 m!340801))

(assert (=> b!269467 d!78368))

(assert (=> d!77994 d!78096))

(declare-fun d!78370 () Bool)

(assert (=> d!78370 (= (list!1560 (singletonSeq!275 (h!9216 tokens!465))) (list!1563 (c!50916 (singletonSeq!275 (h!9216 tokens!465)))))))

(declare-fun bs!29917 () Bool)

(assert (= bs!29917 d!78370))

(declare-fun m!340803 () Bool)

(assert (=> bs!29917 m!340803))

(assert (=> d!77994 d!78370))

(declare-fun b!269905 () Bool)

(declare-fun e!167691 () Bool)

(declare-fun e!167689 () Bool)

(assert (=> b!269905 (= e!167691 e!167689)))

(declare-fun lt!110937 () tuple2!4274)

(declare-fun res!123395 () Bool)

(assert (=> b!269905 (= res!123395 (< (size!3040 (_2!2353 lt!110937)) (size!3040 (print!340 thiss!17480 (singletonSeq!275 (h!9216 tokens!465))))))))

(assert (=> b!269905 (=> (not res!123395) (not e!167689))))

(declare-fun e!167690 () Bool)

(declare-fun b!269906 () Bool)

(assert (=> b!269906 (= e!167690 (= (list!1557 (_2!2353 lt!110937)) (_2!2357 (lexList!207 thiss!17480 rules!1920 (list!1557 (print!340 thiss!17480 (singletonSeq!275 (h!9216 tokens!465))))))))))

(declare-fun b!269907 () Bool)

(assert (=> b!269907 (= e!167691 (= (_2!2353 lt!110937) (print!340 thiss!17480 (singletonSeq!275 (h!9216 tokens!465)))))))

(declare-fun d!78372 () Bool)

(assert (=> d!78372 e!167690))

(declare-fun res!123396 () Bool)

(assert (=> d!78372 (=> (not res!123396) (not e!167690))))

(assert (=> d!78372 (= res!123396 e!167691)))

(declare-fun c!51132 () Bool)

(assert (=> d!78372 (= c!51132 (> (size!3041 (_1!2353 lt!110937)) 0))))

(assert (=> d!78372 (= lt!110937 (lexTailRecV2!174 thiss!17480 rules!1920 (print!340 thiss!17480 (singletonSeq!275 (h!9216 tokens!465))) (BalanceConc!2569 Empty!1280) (print!340 thiss!17480 (singletonSeq!275 (h!9216 tokens!465))) (BalanceConc!2571 Empty!1281)))))

(assert (=> d!78372 (= (lex!407 thiss!17480 rules!1920 (print!340 thiss!17480 (singletonSeq!275 (h!9216 tokens!465)))) lt!110937)))

(declare-fun b!269908 () Bool)

(declare-fun res!123397 () Bool)

(assert (=> b!269908 (=> (not res!123397) (not e!167690))))

(assert (=> b!269908 (= res!123397 (= (list!1560 (_1!2353 lt!110937)) (_1!2357 (lexList!207 thiss!17480 rules!1920 (list!1557 (print!340 thiss!17480 (singletonSeq!275 (h!9216 tokens!465))))))))))

(declare-fun b!269909 () Bool)

(assert (=> b!269909 (= e!167689 (not (isEmpty!2414 (_1!2353 lt!110937))))))

(assert (= (and d!78372 c!51132) b!269905))

(assert (= (and d!78372 (not c!51132)) b!269907))

(assert (= (and b!269905 res!123395) b!269909))

(assert (= (and d!78372 res!123396) b!269908))

(assert (= (and b!269908 res!123397) b!269906))

(declare-fun m!340805 () Bool)

(assert (=> b!269906 m!340805))

(assert (=> b!269906 m!339099))

(declare-fun m!340807 () Bool)

(assert (=> b!269906 m!340807))

(assert (=> b!269906 m!340807))

(declare-fun m!340809 () Bool)

(assert (=> b!269906 m!340809))

(declare-fun m!340811 () Bool)

(assert (=> d!78372 m!340811))

(assert (=> d!78372 m!339099))

(assert (=> d!78372 m!339099))

(declare-fun m!340813 () Bool)

(assert (=> d!78372 m!340813))

(declare-fun m!340815 () Bool)

(assert (=> b!269905 m!340815))

(assert (=> b!269905 m!339099))

(declare-fun m!340817 () Bool)

(assert (=> b!269905 m!340817))

(declare-fun m!340819 () Bool)

(assert (=> b!269909 m!340819))

(declare-fun m!340821 () Bool)

(assert (=> b!269908 m!340821))

(assert (=> b!269908 m!339099))

(assert (=> b!269908 m!340807))

(assert (=> b!269908 m!340807))

(assert (=> b!269908 m!340809))

(assert (=> d!77994 d!78372))

(declare-fun d!78374 () Bool)

(assert (=> d!78374 (= (list!1560 (_1!2353 (lex!407 thiss!17480 rules!1920 (print!340 thiss!17480 (singletonSeq!275 (h!9216 tokens!465)))))) (list!1563 (c!50916 (_1!2353 (lex!407 thiss!17480 rules!1920 (print!340 thiss!17480 (singletonSeq!275 (h!9216 tokens!465))))))))))

(declare-fun bs!29918 () Bool)

(assert (= bs!29918 d!78374))

(declare-fun m!340823 () Bool)

(assert (=> bs!29918 m!340823))

(assert (=> d!77994 d!78374))

(declare-fun d!78376 () Bool)

(declare-fun lt!110938 () Int)

(assert (=> d!78376 (= lt!110938 (size!3046 (list!1560 (_1!2353 lt!110440))))))

(assert (=> d!78376 (= lt!110938 (size!3044 (c!50916 (_1!2353 lt!110440))))))

(assert (=> d!78376 (= (size!3041 (_1!2353 lt!110440)) lt!110938)))

(declare-fun bs!29919 () Bool)

(assert (= bs!29919 d!78376))

(declare-fun m!340825 () Bool)

(assert (=> bs!29919 m!340825))

(assert (=> bs!29919 m!340825))

(declare-fun m!340827 () Bool)

(assert (=> bs!29919 m!340827))

(declare-fun m!340829 () Bool)

(assert (=> bs!29919 m!340829))

(assert (=> d!77994 d!78376))

(assert (=> d!77994 d!78138))

(declare-fun d!78378 () Bool)

(declare-fun lt!110939 () BalanceConc!2568)

(assert (=> d!78378 (= (list!1557 lt!110939) (printList!291 thiss!17480 (list!1560 (singletonSeq!275 (h!9216 tokens!465)))))))

(assert (=> d!78378 (= lt!110939 (printTailRec!303 thiss!17480 (singletonSeq!275 (h!9216 tokens!465)) 0 (BalanceConc!2569 Empty!1280)))))

(assert (=> d!78378 (= (print!340 thiss!17480 (singletonSeq!275 (h!9216 tokens!465))) lt!110939)))

(declare-fun bs!29920 () Bool)

(assert (= bs!29920 d!78378))

(declare-fun m!340831 () Bool)

(assert (=> bs!29920 m!340831))

(assert (=> bs!29920 m!338975))

(assert (=> bs!29920 m!339103))

(assert (=> bs!29920 m!339103))

(declare-fun m!340833 () Bool)

(assert (=> bs!29920 m!340833))

(assert (=> bs!29920 m!338975))

(assert (=> bs!29920 m!339811))

(assert (=> d!77994 d!78378))

(declare-fun b!269913 () Bool)

(declare-fun e!167693 () Bool)

(declare-fun lt!110940 () List!3827)

(assert (=> b!269913 (= e!167693 (or (not (= (printList!291 thiss!17480 (t!38155 (Cons!3819 (h!9216 tokens!465) Nil!3819))) Nil!3817)) (= lt!110940 (list!1557 (charsOf!374 (h!9216 (Cons!3819 (h!9216 tokens!465) Nil!3819)))))))))

(declare-fun b!269911 () Bool)

(declare-fun e!167692 () List!3827)

(assert (=> b!269911 (= e!167692 (Cons!3817 (h!9214 (list!1557 (charsOf!374 (h!9216 (Cons!3819 (h!9216 tokens!465) Nil!3819))))) (++!994 (t!38153 (list!1557 (charsOf!374 (h!9216 (Cons!3819 (h!9216 tokens!465) Nil!3819))))) (printList!291 thiss!17480 (t!38155 (Cons!3819 (h!9216 tokens!465) Nil!3819))))))))

(declare-fun d!78380 () Bool)

(assert (=> d!78380 e!167693))

(declare-fun res!123399 () Bool)

(assert (=> d!78380 (=> (not res!123399) (not e!167693))))

(assert (=> d!78380 (= res!123399 (= (content!547 lt!110940) ((_ map or) (content!547 (list!1557 (charsOf!374 (h!9216 (Cons!3819 (h!9216 tokens!465) Nil!3819))))) (content!547 (printList!291 thiss!17480 (t!38155 (Cons!3819 (h!9216 tokens!465) Nil!3819)))))))))

(assert (=> d!78380 (= lt!110940 e!167692)))

(declare-fun c!51133 () Bool)

(assert (=> d!78380 (= c!51133 ((_ is Nil!3817) (list!1557 (charsOf!374 (h!9216 (Cons!3819 (h!9216 tokens!465) Nil!3819))))))))

(assert (=> d!78380 (= (++!994 (list!1557 (charsOf!374 (h!9216 (Cons!3819 (h!9216 tokens!465) Nil!3819)))) (printList!291 thiss!17480 (t!38155 (Cons!3819 (h!9216 tokens!465) Nil!3819)))) lt!110940)))

(declare-fun b!269910 () Bool)

(assert (=> b!269910 (= e!167692 (printList!291 thiss!17480 (t!38155 (Cons!3819 (h!9216 tokens!465) Nil!3819))))))

(declare-fun b!269912 () Bool)

(declare-fun res!123398 () Bool)

(assert (=> b!269912 (=> (not res!123398) (not e!167693))))

(assert (=> b!269912 (= res!123398 (= (size!3043 lt!110940) (+ (size!3043 (list!1557 (charsOf!374 (h!9216 (Cons!3819 (h!9216 tokens!465) Nil!3819))))) (size!3043 (printList!291 thiss!17480 (t!38155 (Cons!3819 (h!9216 tokens!465) Nil!3819)))))))))

(assert (= (and d!78380 c!51133) b!269910))

(assert (= (and d!78380 (not c!51133)) b!269911))

(assert (= (and d!78380 res!123399) b!269912))

(assert (= (and b!269912 res!123398) b!269913))

(assert (=> b!269911 m!339691))

(declare-fun m!340835 () Bool)

(assert (=> b!269911 m!340835))

(declare-fun m!340837 () Bool)

(assert (=> d!78380 m!340837))

(assert (=> d!78380 m!339689))

(declare-fun m!340839 () Bool)

(assert (=> d!78380 m!340839))

(assert (=> d!78380 m!339691))

(declare-fun m!340841 () Bool)

(assert (=> d!78380 m!340841))

(declare-fun m!340843 () Bool)

(assert (=> b!269912 m!340843))

(assert (=> b!269912 m!339689))

(declare-fun m!340845 () Bool)

(assert (=> b!269912 m!340845))

(assert (=> b!269912 m!339691))

(declare-fun m!340847 () Bool)

(assert (=> b!269912 m!340847))

(assert (=> b!269410 d!78380))

(declare-fun d!78382 () Bool)

(assert (=> d!78382 (= (list!1557 (charsOf!374 (h!9216 (Cons!3819 (h!9216 tokens!465) Nil!3819)))) (list!1561 (c!50914 (charsOf!374 (h!9216 (Cons!3819 (h!9216 tokens!465) Nil!3819))))))))

(declare-fun bs!29921 () Bool)

(assert (= bs!29921 d!78382))

(declare-fun m!340849 () Bool)

(assert (=> bs!29921 m!340849))

(assert (=> b!269410 d!78382))

(declare-fun d!78384 () Bool)

(declare-fun lt!110941 () BalanceConc!2568)

(assert (=> d!78384 (= (list!1557 lt!110941) (originalCharacters!772 (h!9216 (Cons!3819 (h!9216 tokens!465) Nil!3819))))))

(assert (=> d!78384 (= lt!110941 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (h!9216 (Cons!3819 (h!9216 tokens!465) Nil!3819))))) (value!25092 (h!9216 (Cons!3819 (h!9216 tokens!465) Nil!3819)))))))

(assert (=> d!78384 (= (charsOf!374 (h!9216 (Cons!3819 (h!9216 tokens!465) Nil!3819))) lt!110941)))

(declare-fun b_lambda!8551 () Bool)

(assert (=> (not b_lambda!8551) (not d!78384)))

(declare-fun t!38270 () Bool)

(declare-fun tb!15165 () Bool)

(assert (=> (and b!268959 (= (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 (Cons!3819 (h!9216 tokens!465) Nil!3819)))))) t!38270) tb!15165))

(declare-fun b!269914 () Bool)

(declare-fun e!167694 () Bool)

(declare-fun tp!102412 () Bool)

(assert (=> b!269914 (= e!167694 (and (inv!4725 (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (h!9216 (Cons!3819 (h!9216 tokens!465) Nil!3819))))) (value!25092 (h!9216 (Cons!3819 (h!9216 tokens!465) Nil!3819)))))) tp!102412))))

(declare-fun result!18768 () Bool)

(assert (=> tb!15165 (= result!18768 (and (inv!4726 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (h!9216 (Cons!3819 (h!9216 tokens!465) Nil!3819))))) (value!25092 (h!9216 (Cons!3819 (h!9216 tokens!465) Nil!3819))))) e!167694))))

(assert (= tb!15165 b!269914))

(declare-fun m!340851 () Bool)

(assert (=> b!269914 m!340851))

(declare-fun m!340853 () Bool)

(assert (=> tb!15165 m!340853))

(assert (=> d!78384 t!38270))

(declare-fun b_and!21465 () Bool)

(assert (= b_and!21455 (and (=> t!38270 result!18768) b_and!21465)))

(declare-fun t!38272 () Bool)

(declare-fun tb!15167 () Bool)

(assert (=> (and b!268967 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 (Cons!3819 (h!9216 tokens!465) Nil!3819)))))) t!38272) tb!15167))

(declare-fun result!18770 () Bool)

(assert (= result!18770 result!18768))

(assert (=> d!78384 t!38272))

(declare-fun b_and!21467 () Bool)

(assert (= b_and!21463 (and (=> t!38272 result!18770) b_and!21467)))

(declare-fun t!38274 () Bool)

(declare-fun tb!15169 () Bool)

(assert (=> (and b!268971 (= (toChars!1323 (transformation!729 (h!9217 rules!1920))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 (Cons!3819 (h!9216 tokens!465) Nil!3819)))))) t!38274) tb!15169))

(declare-fun result!18772 () Bool)

(assert (= result!18772 result!18768))

(assert (=> d!78384 t!38274))

(declare-fun b_and!21469 () Bool)

(assert (= b_and!21461 (and (=> t!38274 result!18772) b_and!21469)))

(declare-fun t!38276 () Bool)

(declare-fun tb!15171 () Bool)

(assert (=> (and b!269519 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 (Cons!3819 (h!9216 tokens!465) Nil!3819)))))) t!38276) tb!15171))

(declare-fun result!18774 () Bool)

(assert (= result!18774 result!18768))

(assert (=> d!78384 t!38276))

(declare-fun b_and!21471 () Bool)

(assert (= b_and!21457 (and (=> t!38276 result!18774) b_and!21471)))

(declare-fun t!38278 () Bool)

(declare-fun tb!15173 () Bool)

(assert (=> (and b!269534 (= (toChars!1323 (transformation!729 (h!9217 (t!38156 rules!1920)))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 (Cons!3819 (h!9216 tokens!465) Nil!3819)))))) t!38278) tb!15173))

(declare-fun result!18776 () Bool)

(assert (= result!18776 result!18768))

(assert (=> d!78384 t!38278))

(declare-fun b_and!21473 () Bool)

(assert (= b_and!21459 (and (=> t!38278 result!18776) b_and!21473)))

(declare-fun m!340855 () Bool)

(assert (=> d!78384 m!340855))

(declare-fun m!340857 () Bool)

(assert (=> d!78384 m!340857))

(assert (=> b!269410 d!78384))

(declare-fun d!78386 () Bool)

(declare-fun c!51134 () Bool)

(assert (=> d!78386 (= c!51134 ((_ is Cons!3819) (t!38155 (Cons!3819 (h!9216 tokens!465) Nil!3819))))))

(declare-fun e!167695 () List!3827)

(assert (=> d!78386 (= (printList!291 thiss!17480 (t!38155 (Cons!3819 (h!9216 tokens!465) Nil!3819))) e!167695)))

(declare-fun b!269915 () Bool)

(assert (=> b!269915 (= e!167695 (++!994 (list!1557 (charsOf!374 (h!9216 (t!38155 (Cons!3819 (h!9216 tokens!465) Nil!3819))))) (printList!291 thiss!17480 (t!38155 (t!38155 (Cons!3819 (h!9216 tokens!465) Nil!3819))))))))

(declare-fun b!269916 () Bool)

(assert (=> b!269916 (= e!167695 Nil!3817)))

(assert (= (and d!78386 c!51134) b!269915))

(assert (= (and d!78386 (not c!51134)) b!269916))

(declare-fun m!340859 () Bool)

(assert (=> b!269915 m!340859))

(assert (=> b!269915 m!340859))

(declare-fun m!340861 () Bool)

(assert (=> b!269915 m!340861))

(declare-fun m!340863 () Bool)

(assert (=> b!269915 m!340863))

(assert (=> b!269915 m!340861))

(assert (=> b!269915 m!340863))

(declare-fun m!340865 () Bool)

(assert (=> b!269915 m!340865))

(assert (=> b!269410 d!78386))

(declare-fun d!78388 () Bool)

(assert (=> d!78388 true))

(declare-fun lambda!9131 () Int)

(declare-fun order!2945 () Int)

(declare-fun dynLambda!1963 (Int Int) Int)

(assert (=> d!78388 (< (dynLambda!1953 order!2933 (toValue!1464 (transformation!729 (rule!1314 separatorToken!170)))) (dynLambda!1963 order!2945 lambda!9131))))

(declare-fun Forall2!148 (Int) Bool)

(assert (=> d!78388 (= (equivClasses!240 (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (toValue!1464 (transformation!729 (rule!1314 separatorToken!170)))) (Forall2!148 lambda!9131))))

(declare-fun bs!29922 () Bool)

(assert (= bs!29922 d!78388))

(declare-fun m!340867 () Bool)

(assert (=> bs!29922 m!340867))

(assert (=> b!269471 d!78388))

(declare-fun d!78390 () Bool)

(declare-fun e!167698 () Bool)

(assert (=> d!78390 e!167698))

(declare-fun res!123402 () Bool)

(assert (=> d!78390 (=> (not res!123402) (not e!167698))))

(declare-fun lt!110942 () BalanceConc!2570)

(assert (=> d!78390 (= res!123402 (= (list!1560 lt!110942) (Cons!3819 separatorToken!170 Nil!3819)))))

(assert (=> d!78390 (= lt!110942 (singleton!111 separatorToken!170))))

(assert (=> d!78390 (= (singletonSeq!275 separatorToken!170) lt!110942)))

(declare-fun b!269921 () Bool)

(assert (=> b!269921 (= e!167698 (isBalanced!348 (c!50916 lt!110942)))))

(assert (= (and d!78390 res!123402) b!269921))

(declare-fun m!340869 () Bool)

(assert (=> d!78390 m!340869))

(declare-fun m!340871 () Bool)

(assert (=> d!78390 m!340871))

(declare-fun m!340873 () Bool)

(assert (=> b!269921 m!340873))

(assert (=> d!78118 d!78390))

(declare-fun d!78392 () Bool)

(assert (=> d!78392 (= (list!1560 (_1!2353 (lex!407 thiss!17480 rules!1920 (print!340 thiss!17480 (singletonSeq!275 separatorToken!170))))) (list!1563 (c!50916 (_1!2353 (lex!407 thiss!17480 rules!1920 (print!340 thiss!17480 (singletonSeq!275 separatorToken!170)))))))))

(declare-fun bs!29923 () Bool)

(assert (= bs!29923 d!78392))

(declare-fun m!340875 () Bool)

(assert (=> bs!29923 m!340875))

(assert (=> d!78118 d!78392))

(declare-fun b!269922 () Bool)

(declare-fun e!167701 () Bool)

(declare-fun e!167699 () Bool)

(assert (=> b!269922 (= e!167701 e!167699)))

(declare-fun res!123403 () Bool)

(declare-fun lt!110943 () tuple2!4274)

(assert (=> b!269922 (= res!123403 (< (size!3040 (_2!2353 lt!110943)) (size!3040 (print!340 thiss!17480 (singletonSeq!275 separatorToken!170)))))))

(assert (=> b!269922 (=> (not res!123403) (not e!167699))))

(declare-fun e!167700 () Bool)

(declare-fun b!269923 () Bool)

(assert (=> b!269923 (= e!167700 (= (list!1557 (_2!2353 lt!110943)) (_2!2357 (lexList!207 thiss!17480 rules!1920 (list!1557 (print!340 thiss!17480 (singletonSeq!275 separatorToken!170)))))))))

(declare-fun b!269924 () Bool)

(assert (=> b!269924 (= e!167701 (= (_2!2353 lt!110943) (print!340 thiss!17480 (singletonSeq!275 separatorToken!170))))))

(declare-fun d!78394 () Bool)

(assert (=> d!78394 e!167700))

(declare-fun res!123404 () Bool)

(assert (=> d!78394 (=> (not res!123404) (not e!167700))))

(assert (=> d!78394 (= res!123404 e!167701)))

(declare-fun c!51135 () Bool)

(assert (=> d!78394 (= c!51135 (> (size!3041 (_1!2353 lt!110943)) 0))))

(assert (=> d!78394 (= lt!110943 (lexTailRecV2!174 thiss!17480 rules!1920 (print!340 thiss!17480 (singletonSeq!275 separatorToken!170)) (BalanceConc!2569 Empty!1280) (print!340 thiss!17480 (singletonSeq!275 separatorToken!170)) (BalanceConc!2571 Empty!1281)))))

(assert (=> d!78394 (= (lex!407 thiss!17480 rules!1920 (print!340 thiss!17480 (singletonSeq!275 separatorToken!170))) lt!110943)))

(declare-fun b!269925 () Bool)

(declare-fun res!123405 () Bool)

(assert (=> b!269925 (=> (not res!123405) (not e!167700))))

(assert (=> b!269925 (= res!123405 (= (list!1560 (_1!2353 lt!110943)) (_1!2357 (lexList!207 thiss!17480 rules!1920 (list!1557 (print!340 thiss!17480 (singletonSeq!275 separatorToken!170)))))))))

(declare-fun b!269926 () Bool)

(assert (=> b!269926 (= e!167699 (not (isEmpty!2414 (_1!2353 lt!110943))))))

(assert (= (and d!78394 c!51135) b!269922))

(assert (= (and d!78394 (not c!51135)) b!269924))

(assert (= (and b!269922 res!123403) b!269926))

(assert (= (and d!78394 res!123404) b!269925))

(assert (= (and b!269925 res!123405) b!269923))

(declare-fun m!340877 () Bool)

(assert (=> b!269923 m!340877))

(assert (=> b!269923 m!339831))

(declare-fun m!340879 () Bool)

(assert (=> b!269923 m!340879))

(assert (=> b!269923 m!340879))

(declare-fun m!340881 () Bool)

(assert (=> b!269923 m!340881))

(declare-fun m!340883 () Bool)

(assert (=> d!78394 m!340883))

(assert (=> d!78394 m!339831))

(assert (=> d!78394 m!339831))

(declare-fun m!340885 () Bool)

(assert (=> d!78394 m!340885))

(declare-fun m!340887 () Bool)

(assert (=> b!269922 m!340887))

(assert (=> b!269922 m!339831))

(declare-fun m!340889 () Bool)

(assert (=> b!269922 m!340889))

(declare-fun m!340891 () Bool)

(assert (=> b!269926 m!340891))

(declare-fun m!340893 () Bool)

(assert (=> b!269925 m!340893))

(assert (=> b!269925 m!339831))

(assert (=> b!269925 m!340879))

(assert (=> b!269925 m!340879))

(assert (=> b!269925 m!340881))

(assert (=> d!78118 d!78394))

(declare-fun d!78396 () Bool)

(assert (=> d!78396 (= (list!1560 (singletonSeq!275 separatorToken!170)) (list!1563 (c!50916 (singletonSeq!275 separatorToken!170))))))

(declare-fun bs!29924 () Bool)

(assert (= bs!29924 d!78396))

(declare-fun m!340895 () Bool)

(assert (=> bs!29924 m!340895))

(assert (=> d!78118 d!78396))

(declare-fun d!78398 () Bool)

(declare-fun lt!110944 () Int)

(assert (=> d!78398 (= lt!110944 (size!3046 (list!1560 (_1!2353 lt!110680))))))

(assert (=> d!78398 (= lt!110944 (size!3044 (c!50916 (_1!2353 lt!110680))))))

(assert (=> d!78398 (= (size!3041 (_1!2353 lt!110680)) lt!110944)))

(declare-fun bs!29925 () Bool)

(assert (= bs!29925 d!78398))

(assert (=> bs!29925 m!340129))

(assert (=> bs!29925 m!340129))

(declare-fun m!340897 () Bool)

(assert (=> bs!29925 m!340897))

(declare-fun m!340899 () Bool)

(assert (=> bs!29925 m!340899))

(assert (=> d!78118 d!78398))

(declare-fun d!78400 () Bool)

(declare-fun lt!110945 () BalanceConc!2568)

(assert (=> d!78400 (= (list!1557 lt!110945) (printList!291 thiss!17480 (list!1560 (singletonSeq!275 separatorToken!170))))))

(assert (=> d!78400 (= lt!110945 (printTailRec!303 thiss!17480 (singletonSeq!275 separatorToken!170) 0 (BalanceConc!2569 Empty!1280)))))

(assert (=> d!78400 (= (print!340 thiss!17480 (singletonSeq!275 separatorToken!170)) lt!110945)))

(declare-fun bs!29926 () Bool)

(assert (= bs!29926 d!78400))

(declare-fun m!340901 () Bool)

(assert (=> bs!29926 m!340901))

(assert (=> bs!29926 m!339829))

(assert (=> bs!29926 m!339835))

(assert (=> bs!29926 m!339835))

(declare-fun m!340903 () Bool)

(assert (=> bs!29926 m!340903))

(assert (=> bs!29926 m!339829))

(declare-fun m!340905 () Bool)

(assert (=> bs!29926 m!340905))

(assert (=> d!78118 d!78400))

(assert (=> d!78118 d!78138))

(declare-fun d!78402 () Bool)

(declare-fun lt!110946 () Int)

(assert (=> d!78402 (= lt!110946 (size!3046 (list!1560 lt!110395)))))

(assert (=> d!78402 (= lt!110946 (size!3044 (c!50916 lt!110395)))))

(assert (=> d!78402 (= (size!3041 lt!110395) lt!110946)))

(declare-fun bs!29927 () Bool)

(assert (= bs!29927 d!78402))

(assert (=> bs!29927 m!339661))

(assert (=> bs!29927 m!339661))

(declare-fun m!340907 () Bool)

(assert (=> bs!29927 m!340907))

(declare-fun m!340909 () Bool)

(assert (=> bs!29927 m!340909))

(assert (=> b!269425 d!78402))

(declare-fun d!78404 () Bool)

(declare-fun c!51136 () Bool)

(assert (=> d!78404 (= c!51136 ((_ is Node!1280) (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (value!25092 (h!9216 tokens!465))))))))

(declare-fun e!167702 () Bool)

(assert (=> d!78404 (= (inv!4725 (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (value!25092 (h!9216 tokens!465))))) e!167702)))

(declare-fun b!269927 () Bool)

(assert (=> b!269927 (= e!167702 (inv!4727 (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (value!25092 (h!9216 tokens!465))))))))

(declare-fun b!269928 () Bool)

(declare-fun e!167703 () Bool)

(assert (=> b!269928 (= e!167702 e!167703)))

(declare-fun res!123406 () Bool)

(assert (=> b!269928 (= res!123406 (not ((_ is Leaf!1984) (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (value!25092 (h!9216 tokens!465)))))))))

(assert (=> b!269928 (=> res!123406 e!167703)))

(declare-fun b!269929 () Bool)

(assert (=> b!269929 (= e!167703 (inv!4728 (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (value!25092 (h!9216 tokens!465))))))))

(assert (= (and d!78404 c!51136) b!269927))

(assert (= (and d!78404 (not c!51136)) b!269928))

(assert (= (and b!269928 (not res!123406)) b!269929))

(declare-fun m!340911 () Bool)

(assert (=> b!269927 m!340911))

(declare-fun m!340913 () Bool)

(assert (=> b!269929 m!340913))

(assert (=> b!269327 d!78404))

(declare-fun lt!110947 () List!3827)

(declare-fun e!167705 () Bool)

(declare-fun b!269933 () Bool)

(assert (=> b!269933 (= e!167705 (or (not (= lt!110403 Nil!3817)) (= lt!110947 (t!38153 lt!110396))))))

(declare-fun b!269931 () Bool)

(declare-fun e!167704 () List!3827)

(assert (=> b!269931 (= e!167704 (Cons!3817 (h!9214 (t!38153 lt!110396)) (++!994 (t!38153 (t!38153 lt!110396)) lt!110403)))))

(declare-fun d!78406 () Bool)

(assert (=> d!78406 e!167705))

(declare-fun res!123408 () Bool)

(assert (=> d!78406 (=> (not res!123408) (not e!167705))))

(assert (=> d!78406 (= res!123408 (= (content!547 lt!110947) ((_ map or) (content!547 (t!38153 lt!110396)) (content!547 lt!110403))))))

(assert (=> d!78406 (= lt!110947 e!167704)))

(declare-fun c!51137 () Bool)

(assert (=> d!78406 (= c!51137 ((_ is Nil!3817) (t!38153 lt!110396)))))

(assert (=> d!78406 (= (++!994 (t!38153 lt!110396) lt!110403) lt!110947)))

(declare-fun b!269930 () Bool)

(assert (=> b!269930 (= e!167704 lt!110403)))

(declare-fun b!269932 () Bool)

(declare-fun res!123407 () Bool)

(assert (=> b!269932 (=> (not res!123407) (not e!167705))))

(assert (=> b!269932 (= res!123407 (= (size!3043 lt!110947) (+ (size!3043 (t!38153 lt!110396)) (size!3043 lt!110403))))))

(assert (= (and d!78406 c!51137) b!269930))

(assert (= (and d!78406 (not c!51137)) b!269931))

(assert (= (and d!78406 res!123408) b!269932))

(assert (= (and b!269932 res!123407) b!269933))

(declare-fun m!340915 () Bool)

(assert (=> b!269931 m!340915))

(declare-fun m!340917 () Bool)

(assert (=> d!78406 m!340917))

(assert (=> d!78406 m!340003))

(assert (=> d!78406 m!339605))

(declare-fun m!340919 () Bool)

(assert (=> b!269932 m!340919))

(assert (=> b!269932 m!339965))

(assert (=> b!269932 m!339611))

(assert (=> b!269449 d!78406))

(declare-fun d!78408 () Bool)

(declare-fun lt!110948 () BalanceConc!2568)

(assert (=> d!78408 (= (list!1557 lt!110948) (originalCharacters!772 (ite c!50998 call!14700 call!14701)))))

(assert (=> d!78408 (= lt!110948 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (ite c!50998 call!14700 call!14701)))) (value!25092 (ite c!50998 call!14700 call!14701))))))

(assert (=> d!78408 (= (charsOf!374 (ite c!50998 call!14700 call!14701)) lt!110948)))

(declare-fun b_lambda!8553 () Bool)

(assert (=> (not b_lambda!8553) (not d!78408)))

(declare-fun t!38280 () Bool)

(declare-fun tb!15175 () Bool)

(assert (=> (and b!268959 (= (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (toChars!1323 (transformation!729 (rule!1314 (ite c!50998 call!14700 call!14701))))) t!38280) tb!15175))

(declare-fun e!167706 () Bool)

(declare-fun tp!102413 () Bool)

(declare-fun b!269934 () Bool)

(assert (=> b!269934 (= e!167706 (and (inv!4725 (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (ite c!50998 call!14700 call!14701)))) (value!25092 (ite c!50998 call!14700 call!14701))))) tp!102413))))

(declare-fun result!18778 () Bool)

(assert (=> tb!15175 (= result!18778 (and (inv!4726 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (ite c!50998 call!14700 call!14701)))) (value!25092 (ite c!50998 call!14700 call!14701)))) e!167706))))

(assert (= tb!15175 b!269934))

(declare-fun m!340921 () Bool)

(assert (=> b!269934 m!340921))

(declare-fun m!340923 () Bool)

(assert (=> tb!15175 m!340923))

(assert (=> d!78408 t!38280))

(declare-fun b_and!21475 () Bool)

(assert (= b_and!21465 (and (=> t!38280 result!18778) b_and!21475)))

(declare-fun tb!15177 () Bool)

(declare-fun t!38282 () Bool)

(assert (=> (and b!268967 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (toChars!1323 (transformation!729 (rule!1314 (ite c!50998 call!14700 call!14701))))) t!38282) tb!15177))

(declare-fun result!18780 () Bool)

(assert (= result!18780 result!18778))

(assert (=> d!78408 t!38282))

(declare-fun b_and!21477 () Bool)

(assert (= b_and!21467 (and (=> t!38282 result!18780) b_and!21477)))

(declare-fun t!38284 () Bool)

(declare-fun tb!15179 () Bool)

(assert (=> (and b!269519 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))) (toChars!1323 (transformation!729 (rule!1314 (ite c!50998 call!14700 call!14701))))) t!38284) tb!15179))

(declare-fun result!18782 () Bool)

(assert (= result!18782 result!18778))

(assert (=> d!78408 t!38284))

(declare-fun b_and!21479 () Bool)

(assert (= b_and!21471 (and (=> t!38284 result!18782) b_and!21479)))

(declare-fun t!38286 () Bool)

(declare-fun tb!15181 () Bool)

(assert (=> (and b!269534 (= (toChars!1323 (transformation!729 (h!9217 (t!38156 rules!1920)))) (toChars!1323 (transformation!729 (rule!1314 (ite c!50998 call!14700 call!14701))))) t!38286) tb!15181))

(declare-fun result!18784 () Bool)

(assert (= result!18784 result!18778))

(assert (=> d!78408 t!38286))

(declare-fun b_and!21481 () Bool)

(assert (= b_and!21473 (and (=> t!38286 result!18784) b_and!21481)))

(declare-fun t!38288 () Bool)

(declare-fun tb!15183 () Bool)

(assert (=> (and b!268971 (= (toChars!1323 (transformation!729 (h!9217 rules!1920))) (toChars!1323 (transformation!729 (rule!1314 (ite c!50998 call!14700 call!14701))))) t!38288) tb!15183))

(declare-fun result!18786 () Bool)

(assert (= result!18786 result!18778))

(assert (=> d!78408 t!38288))

(declare-fun b_and!21483 () Bool)

(assert (= b_and!21469 (and (=> t!38288 result!18786) b_and!21483)))

(declare-fun m!340925 () Bool)

(assert (=> d!78408 m!340925))

(declare-fun m!340927 () Bool)

(assert (=> d!78408 m!340927))

(assert (=> bm!14693 d!78408))

(declare-fun b!269938 () Bool)

(declare-fun e!167708 () List!3827)

(assert (=> b!269938 (= e!167708 (++!994 (list!1561 (left!3139 (c!50914 (charsOf!374 (h!9216 tokens!465))))) (list!1561 (right!3469 (c!50914 (charsOf!374 (h!9216 tokens!465)))))))))

(declare-fun d!78410 () Bool)

(declare-fun c!51138 () Bool)

(assert (=> d!78410 (= c!51138 ((_ is Empty!1280) (c!50914 (charsOf!374 (h!9216 tokens!465)))))))

(declare-fun e!167707 () List!3827)

(assert (=> d!78410 (= (list!1561 (c!50914 (charsOf!374 (h!9216 tokens!465)))) e!167707)))

(declare-fun b!269935 () Bool)

(assert (=> b!269935 (= e!167707 Nil!3817)))

(declare-fun b!269937 () Bool)

(assert (=> b!269937 (= e!167708 (list!1564 (xs!3879 (c!50914 (charsOf!374 (h!9216 tokens!465))))))))

(declare-fun b!269936 () Bool)

(assert (=> b!269936 (= e!167707 e!167708)))

(declare-fun c!51139 () Bool)

(assert (=> b!269936 (= c!51139 ((_ is Leaf!1984) (c!50914 (charsOf!374 (h!9216 tokens!465)))))))

(assert (= (and d!78410 c!51138) b!269935))

(assert (= (and d!78410 (not c!51138)) b!269936))

(assert (= (and b!269936 c!51139) b!269937))

(assert (= (and b!269936 (not c!51139)) b!269938))

(declare-fun m!340929 () Bool)

(assert (=> b!269938 m!340929))

(declare-fun m!340931 () Bool)

(assert (=> b!269938 m!340931))

(assert (=> b!269938 m!340929))

(assert (=> b!269938 m!340931))

(declare-fun m!340933 () Bool)

(assert (=> b!269938 m!340933))

(declare-fun m!340935 () Bool)

(assert (=> b!269937 m!340935))

(assert (=> d!78078 d!78410))

(declare-fun d!78412 () Bool)

(declare-fun lt!110949 () Token!1202)

(assert (=> d!78412 (= lt!110949 (apply!766 (list!1560 lt!110395) 0))))

(assert (=> d!78412 (= lt!110949 (apply!768 (c!50916 lt!110395) 0))))

(declare-fun e!167709 () Bool)

(assert (=> d!78412 e!167709))

(declare-fun res!123409 () Bool)

(assert (=> d!78412 (=> (not res!123409) (not e!167709))))

(assert (=> d!78412 (= res!123409 (<= 0 0))))

(assert (=> d!78412 (= (apply!765 lt!110395 0) lt!110949)))

(declare-fun b!269939 () Bool)

(assert (=> b!269939 (= e!167709 (< 0 (size!3041 lt!110395)))))

(assert (= (and d!78412 res!123409) b!269939))

(assert (=> d!78412 m!339661))

(assert (=> d!78412 m!339661))

(declare-fun m!340937 () Bool)

(assert (=> d!78412 m!340937))

(declare-fun m!340939 () Bool)

(assert (=> d!78412 m!340939))

(assert (=> b!269939 m!339793))

(assert (=> bm!14699 d!78412))

(declare-fun d!78414 () Bool)

(declare-fun lt!110952 () Int)

(assert (=> d!78414 (= lt!110952 (size!3043 (list!1557 (_2!2353 lt!110416))))))

(declare-fun size!3048 (Conc!1280) Int)

(assert (=> d!78414 (= lt!110952 (size!3048 (c!50914 (_2!2353 lt!110416))))))

(assert (=> d!78414 (= (size!3040 (_2!2353 lt!110416)) lt!110952)))

(declare-fun bs!29928 () Bool)

(assert (= bs!29928 d!78414))

(assert (=> bs!29928 m!339075))

(assert (=> bs!29928 m!339075))

(declare-fun m!340941 () Bool)

(assert (=> bs!29928 m!340941))

(declare-fun m!340943 () Bool)

(assert (=> bs!29928 m!340943))

(assert (=> b!269024 d!78414))

(declare-fun d!78416 () Bool)

(declare-fun lt!110953 () Int)

(assert (=> d!78416 (= lt!110953 (size!3043 (list!1557 (seqFromList!825 lt!110396))))))

(assert (=> d!78416 (= lt!110953 (size!3048 (c!50914 (seqFromList!825 lt!110396))))))

(assert (=> d!78416 (= (size!3040 (seqFromList!825 lt!110396)) lt!110953)))

(declare-fun bs!29929 () Bool)

(assert (= bs!29929 d!78416))

(assert (=> bs!29929 m!339001))

(assert (=> bs!29929 m!339077))

(assert (=> bs!29929 m!339077))

(declare-fun m!340945 () Bool)

(assert (=> bs!29929 m!340945))

(declare-fun m!340947 () Bool)

(assert (=> bs!29929 m!340947))

(assert (=> b!269024 d!78416))

(declare-fun b!269943 () Bool)

(declare-fun e!167711 () List!3827)

(assert (=> b!269943 (= e!167711 (++!994 (list!1561 (left!3139 (c!50914 (seqFromList!825 lt!110402)))) (list!1561 (right!3469 (c!50914 (seqFromList!825 lt!110402))))))))

(declare-fun d!78418 () Bool)

(declare-fun c!51140 () Bool)

(assert (=> d!78418 (= c!51140 ((_ is Empty!1280) (c!50914 (seqFromList!825 lt!110402))))))

(declare-fun e!167710 () List!3827)

(assert (=> d!78418 (= (list!1561 (c!50914 (seqFromList!825 lt!110402))) e!167710)))

(declare-fun b!269940 () Bool)

(assert (=> b!269940 (= e!167710 Nil!3817)))

(declare-fun b!269942 () Bool)

(assert (=> b!269942 (= e!167711 (list!1564 (xs!3879 (c!50914 (seqFromList!825 lt!110402)))))))

(declare-fun b!269941 () Bool)

(assert (=> b!269941 (= e!167710 e!167711)))

(declare-fun c!51141 () Bool)

(assert (=> b!269941 (= c!51141 ((_ is Leaf!1984) (c!50914 (seqFromList!825 lt!110402))))))

(assert (= (and d!78418 c!51140) b!269940))

(assert (= (and d!78418 (not c!51140)) b!269941))

(assert (= (and b!269941 c!51141) b!269942))

(assert (= (and b!269941 (not c!51141)) b!269943))

(declare-fun m!340949 () Bool)

(assert (=> b!269943 m!340949))

(declare-fun m!340951 () Bool)

(assert (=> b!269943 m!340951))

(assert (=> b!269943 m!340949))

(assert (=> b!269943 m!340951))

(declare-fun m!340953 () Bool)

(assert (=> b!269943 m!340953))

(declare-fun m!340955 () Bool)

(assert (=> b!269942 m!340955))

(assert (=> d!78126 d!78418))

(assert (=> bm!14674 d!78292))

(declare-fun d!78420 () Bool)

(declare-fun lt!110954 () Token!1202)

(assert (=> d!78420 (= lt!110954 (apply!766 (list!1560 (seqFromList!826 (t!38155 tokens!465))) 0))))

(assert (=> d!78420 (= lt!110954 (apply!768 (c!50916 (seqFromList!826 (t!38155 tokens!465))) 0))))

(declare-fun e!167712 () Bool)

(assert (=> d!78420 e!167712))

(declare-fun res!123410 () Bool)

(assert (=> d!78420 (=> (not res!123410) (not e!167712))))

(assert (=> d!78420 (= res!123410 (<= 0 0))))

(assert (=> d!78420 (= (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0) lt!110954)))

(declare-fun b!269944 () Bool)

(assert (=> b!269944 (= e!167712 (< 0 (size!3041 (seqFromList!826 (t!38155 tokens!465)))))))

(assert (= (and d!78420 res!123410) b!269944))

(assert (=> d!78420 m!338949))

(assert (=> d!78420 m!339511))

(assert (=> d!78420 m!339511))

(declare-fun m!340957 () Bool)

(assert (=> d!78420 m!340957))

(declare-fun m!340959 () Bool)

(assert (=> d!78420 m!340959))

(assert (=> b!269944 m!338949))

(assert (=> b!269944 m!339553))

(assert (=> bm!14694 d!78420))

(declare-fun d!78422 () Bool)

(declare-fun lt!110957 () Bool)

(assert (=> d!78422 (= lt!110957 (isEmpty!2420 (list!1557 (_2!2353 lt!110680))))))

(declare-fun isEmpty!2426 (Conc!1280) Bool)

(assert (=> d!78422 (= lt!110957 (isEmpty!2426 (c!50914 (_2!2353 lt!110680))))))

(assert (=> d!78422 (= (isEmpty!2419 (_2!2353 lt!110680)) lt!110957)))

(declare-fun bs!29930 () Bool)

(assert (= bs!29930 d!78422))

(declare-fun m!340961 () Bool)

(assert (=> bs!29930 m!340961))

(assert (=> bs!29930 m!340961))

(declare-fun m!340963 () Bool)

(assert (=> bs!29930 m!340963))

(declare-fun m!340965 () Bool)

(assert (=> bs!29930 m!340965))

(assert (=> b!269459 d!78422))

(declare-fun d!78424 () Bool)

(assert (=> d!78424 (= (list!1557 lt!110620) (list!1561 (c!50914 lt!110620)))))

(declare-fun bs!29931 () Bool)

(assert (= bs!29931 d!78424))

(declare-fun m!340967 () Bool)

(assert (=> bs!29931 m!340967))

(assert (=> d!78080 d!78424))

(declare-fun lt!110958 () List!3827)

(declare-fun b!269948 () Bool)

(declare-fun e!167714 () Bool)

(assert (=> b!269948 (= e!167714 (or (not (= lt!110676 Nil!3817)) (= lt!110958 call!14709)))))

(declare-fun b!269946 () Bool)

(declare-fun e!167713 () List!3827)

(assert (=> b!269946 (= e!167713 (Cons!3817 (h!9214 call!14709) (++!994 (t!38153 call!14709) lt!110676)))))

(declare-fun d!78426 () Bool)

(assert (=> d!78426 e!167714))

(declare-fun res!123412 () Bool)

(assert (=> d!78426 (=> (not res!123412) (not e!167714))))

(assert (=> d!78426 (= res!123412 (= (content!547 lt!110958) ((_ map or) (content!547 call!14709) (content!547 lt!110676))))))

(assert (=> d!78426 (= lt!110958 e!167713)))

(declare-fun c!51142 () Bool)

(assert (=> d!78426 (= c!51142 ((_ is Nil!3817) call!14709))))

(assert (=> d!78426 (= (++!994 call!14709 lt!110676) lt!110958)))

(declare-fun b!269945 () Bool)

(assert (=> b!269945 (= e!167713 lt!110676)))

(declare-fun b!269947 () Bool)

(declare-fun res!123411 () Bool)

(assert (=> b!269947 (=> (not res!123411) (not e!167714))))

(assert (=> b!269947 (= res!123411 (= (size!3043 lt!110958) (+ (size!3043 call!14709) (size!3043 lt!110676))))))

(assert (= (and d!78426 c!51142) b!269945))

(assert (= (and d!78426 (not c!51142)) b!269946))

(assert (= (and d!78426 res!123412) b!269947))

(assert (= (and b!269947 res!123411) b!269948))

(declare-fun m!340969 () Bool)

(assert (=> b!269946 m!340969))

(declare-fun m!340971 () Bool)

(assert (=> d!78426 m!340971))

(declare-fun m!340973 () Bool)

(assert (=> d!78426 m!340973))

(declare-fun m!340975 () Bool)

(assert (=> d!78426 m!340975))

(declare-fun m!340977 () Bool)

(assert (=> b!269947 m!340977))

(declare-fun m!340979 () Bool)

(assert (=> b!269947 m!340979))

(declare-fun m!340981 () Bool)

(assert (=> b!269947 m!340981))

(assert (=> b!269435 d!78426))

(declare-fun lt!110959 () List!3827)

(declare-fun b!269952 () Bool)

(declare-fun e!167716 () Bool)

(assert (=> b!269952 (= e!167716 (or (not (= lt!110403 Nil!3817)) (= lt!110959 (t!38153 lt!110394))))))

(declare-fun b!269950 () Bool)

(declare-fun e!167715 () List!3827)

(assert (=> b!269950 (= e!167715 (Cons!3817 (h!9214 (t!38153 lt!110394)) (++!994 (t!38153 (t!38153 lt!110394)) lt!110403)))))

(declare-fun d!78428 () Bool)

(assert (=> d!78428 e!167716))

(declare-fun res!123414 () Bool)

(assert (=> d!78428 (=> (not res!123414) (not e!167716))))

(assert (=> d!78428 (= res!123414 (= (content!547 lt!110959) ((_ map or) (content!547 (t!38153 lt!110394)) (content!547 lt!110403))))))

(assert (=> d!78428 (= lt!110959 e!167715)))

(declare-fun c!51143 () Bool)

(assert (=> d!78428 (= c!51143 ((_ is Nil!3817) (t!38153 lt!110394)))))

(assert (=> d!78428 (= (++!994 (t!38153 lt!110394) lt!110403) lt!110959)))

(declare-fun b!269949 () Bool)

(assert (=> b!269949 (= e!167715 lt!110403)))

(declare-fun b!269951 () Bool)

(declare-fun res!123413 () Bool)

(assert (=> b!269951 (=> (not res!123413) (not e!167716))))

(assert (=> b!269951 (= res!123413 (= (size!3043 lt!110959) (+ (size!3043 (t!38153 lt!110394)) (size!3043 lt!110403))))))

(assert (= (and d!78428 c!51143) b!269949))

(assert (= (and d!78428 (not c!51143)) b!269950))

(assert (= (and d!78428 res!123414) b!269951))

(assert (= (and b!269951 res!123413) b!269952))

(declare-fun m!340983 () Bool)

(assert (=> b!269950 m!340983))

(declare-fun m!340985 () Bool)

(assert (=> d!78428 m!340985))

(assert (=> d!78428 m!340017))

(assert (=> d!78428 m!339605))

(declare-fun m!340987 () Bool)

(assert (=> b!269951 m!340987))

(assert (=> b!269951 m!340157))

(assert (=> b!269951 m!339611))

(assert (=> b!269329 d!78428))

(declare-fun d!78430 () Bool)

(declare-fun e!167717 () Bool)

(assert (=> d!78430 e!167717))

(declare-fun res!123417 () Bool)

(assert (=> d!78430 (=> (not res!123417) (not e!167717))))

(assert (=> d!78430 (= res!123417 (appendAssocInst!62 (c!50914 call!14703) (c!50914 (ite c!51013 lt!110671 call!14707))))))

(declare-fun lt!110970 () BalanceConc!2568)

(assert (=> d!78430 (= lt!110970 (BalanceConc!2569 (++!997 (c!50914 call!14703) (c!50914 (ite c!51013 lt!110671 call!14707)))))))

(assert (=> d!78430 (= (++!996 call!14703 (ite c!51013 lt!110671 call!14707)) lt!110970)))

(declare-fun b!269954 () Bool)

(declare-fun res!123418 () Bool)

(assert (=> b!269954 (=> (not res!123418) (not e!167717))))

(assert (=> b!269954 (= res!123418 (<= (height!153 (++!997 (c!50914 call!14703) (c!50914 (ite c!51013 lt!110671 call!14707)))) (+ (max!0 (height!153 (c!50914 call!14703)) (height!153 (c!50914 (ite c!51013 lt!110671 call!14707)))) 1)))))

(declare-fun b!269956 () Bool)

(assert (=> b!269956 (= e!167717 (= (list!1557 lt!110970) (++!994 (list!1557 call!14703) (list!1557 (ite c!51013 lt!110671 call!14707)))))))

(declare-fun b!269953 () Bool)

(declare-fun res!123415 () Bool)

(assert (=> b!269953 (=> (not res!123415) (not e!167717))))

(assert (=> b!269953 (= res!123415 (isBalanced!350 (++!997 (c!50914 call!14703) (c!50914 (ite c!51013 lt!110671 call!14707)))))))

(declare-fun b!269955 () Bool)

(declare-fun res!123416 () Bool)

(assert (=> b!269955 (=> (not res!123416) (not e!167717))))

(assert (=> b!269955 (= res!123416 (>= (height!153 (++!997 (c!50914 call!14703) (c!50914 (ite c!51013 lt!110671 call!14707)))) (max!0 (height!153 (c!50914 call!14703)) (height!153 (c!50914 (ite c!51013 lt!110671 call!14707))))))))

(assert (= (and d!78430 res!123417) b!269953))

(assert (= (and b!269953 res!123415) b!269954))

(assert (= (and b!269954 res!123418) b!269955))

(assert (= (and b!269955 res!123416) b!269956))

(declare-fun m!340989 () Bool)

(assert (=> b!269954 m!340989))

(declare-fun m!340991 () Bool)

(assert (=> b!269954 m!340991))

(assert (=> b!269954 m!340989))

(declare-fun m!340993 () Bool)

(assert (=> b!269954 m!340993))

(declare-fun m!340995 () Bool)

(assert (=> b!269954 m!340995))

(declare-fun m!340997 () Bool)

(assert (=> b!269954 m!340997))

(assert (=> b!269954 m!340993))

(assert (=> b!269954 m!340995))

(assert (=> b!269953 m!340989))

(assert (=> b!269953 m!340989))

(declare-fun m!340999 () Bool)

(assert (=> b!269953 m!340999))

(declare-fun m!341001 () Bool)

(assert (=> b!269956 m!341001))

(declare-fun m!341003 () Bool)

(assert (=> b!269956 m!341003))

(declare-fun m!341005 () Bool)

(assert (=> b!269956 m!341005))

(assert (=> b!269956 m!341003))

(assert (=> b!269956 m!341005))

(declare-fun m!341007 () Bool)

(assert (=> b!269956 m!341007))

(assert (=> b!269955 m!340989))

(assert (=> b!269955 m!340991))

(assert (=> b!269955 m!340989))

(assert (=> b!269955 m!340993))

(assert (=> b!269955 m!340995))

(assert (=> b!269955 m!340997))

(assert (=> b!269955 m!340993))

(assert (=> b!269955 m!340995))

(declare-fun m!341009 () Bool)

(assert (=> d!78430 m!341009))

(assert (=> d!78430 m!340989))

(assert (=> bm!14702 d!78430))

(declare-fun d!78432 () Bool)

(declare-fun e!167726 () Bool)

(assert (=> d!78432 e!167726))

(declare-fun res!123421 () Bool)

(assert (=> d!78432 (=> (not res!123421) (not e!167726))))

(declare-fun lt!111027 () BalanceConc!2568)

(assert (=> d!78432 (= res!123421 (= (list!1557 lt!111027) lt!110402))))

(declare-fun fromList!177 (List!3827) Conc!1280)

(assert (=> d!78432 (= lt!111027 (BalanceConc!2569 (fromList!177 lt!110402)))))

(assert (=> d!78432 (= (fromListB!315 lt!110402) lt!111027)))

(declare-fun b!269971 () Bool)

(assert (=> b!269971 (= e!167726 (isBalanced!350 (fromList!177 lt!110402)))))

(assert (= (and d!78432 res!123421) b!269971))

(declare-fun m!341011 () Bool)

(assert (=> d!78432 m!341011))

(declare-fun m!341013 () Bool)

(assert (=> d!78432 m!341013))

(assert (=> b!269971 m!341013))

(assert (=> b!269971 m!341013))

(declare-fun m!341015 () Bool)

(assert (=> b!269971 m!341015))

(assert (=> d!78128 d!78432))

(declare-fun d!78434 () Bool)

(declare-fun res!123422 () Bool)

(declare-fun e!167727 () Bool)

(assert (=> d!78434 (=> (not res!123422) (not e!167727))))

(assert (=> d!78434 (= res!123422 (not (isEmpty!2420 (originalCharacters!772 (h!9216 (t!38155 tokens!465))))))))

(assert (=> d!78434 (= (inv!4721 (h!9216 (t!38155 tokens!465))) e!167727)))

(declare-fun b!269972 () Bool)

(declare-fun res!123423 () Bool)

(assert (=> b!269972 (=> (not res!123423) (not e!167727))))

(assert (=> b!269972 (= res!123423 (= (originalCharacters!772 (h!9216 (t!38155 tokens!465))) (list!1557 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))) (value!25092 (h!9216 (t!38155 tokens!465)))))))))

(declare-fun b!269973 () Bool)

(assert (=> b!269973 (= e!167727 (= (size!3037 (h!9216 (t!38155 tokens!465))) (size!3043 (originalCharacters!772 (h!9216 (t!38155 tokens!465))))))))

(assert (= (and d!78434 res!123422) b!269972))

(assert (= (and b!269972 res!123423) b!269973))

(declare-fun b_lambda!8555 () Bool)

(assert (=> (not b_lambda!8555) (not b!269972)))

(assert (=> b!269972 t!38259))

(declare-fun b_and!21485 () Bool)

(assert (= b_and!21479 (and (=> t!38259 result!18760) b_and!21485)))

(assert (=> b!269972 t!38257))

(declare-fun b_and!21487 () Bool)

(assert (= b_and!21475 (and (=> t!38257 result!18758) b_and!21487)))

(assert (=> b!269972 t!38263))

(declare-fun b_and!21489 () Bool)

(assert (= b_and!21483 (and (=> t!38263 result!18764) b_and!21489)))

(assert (=> b!269972 t!38265))

(declare-fun b_and!21491 () Bool)

(assert (= b_and!21477 (and (=> t!38265 result!18766) b_and!21491)))

(assert (=> b!269972 t!38261))

(declare-fun b_and!21493 () Bool)

(assert (= b_and!21481 (and (=> t!38261 result!18762) b_and!21493)))

(declare-fun m!341017 () Bool)

(assert (=> d!78434 m!341017))

(assert (=> b!269972 m!340527))

(assert (=> b!269972 m!340527))

(declare-fun m!341019 () Bool)

(assert (=> b!269972 m!341019))

(declare-fun m!341021 () Bool)

(assert (=> b!269973 m!341021))

(assert (=> b!269516 d!78434))

(declare-fun d!78436 () Bool)

(assert (=> d!78436 (= (inv!17 (value!25092 (h!9216 tokens!465))) (= (charsToBigInt!1 (text!5705 (value!25092 (h!9216 tokens!465)))) (value!25084 (value!25092 (h!9216 tokens!465)))))))

(declare-fun bs!29932 () Bool)

(assert (= bs!29932 d!78436))

(declare-fun m!341023 () Bool)

(assert (=> bs!29932 m!341023))

(assert (=> b!269482 d!78436))

(declare-fun d!78438 () Bool)

(assert (=> d!78438 (= (list!1557 (ite c!50975 call!14682 e!167229)) (list!1561 (c!50914 (ite c!50975 call!14682 e!167229))))))

(declare-fun bs!29933 () Bool)

(assert (= bs!29933 d!78438))

(declare-fun m!341025 () Bool)

(assert (=> bs!29933 m!341025))

(assert (=> bm!14675 d!78438))

(declare-fun d!78440 () Bool)

(declare-fun lt!111032 () Token!1202)

(assert (=> d!78440 (= lt!111032 (apply!766 (list!1560 (_1!2353 lt!110440)) 0))))

(assert (=> d!78440 (= lt!111032 (apply!768 (c!50916 (_1!2353 lt!110440)) 0))))

(declare-fun e!167728 () Bool)

(assert (=> d!78440 e!167728))

(declare-fun res!123424 () Bool)

(assert (=> d!78440 (=> (not res!123424) (not e!167728))))

(assert (=> d!78440 (= res!123424 (<= 0 0))))

(assert (=> d!78440 (= (apply!765 (_1!2353 lt!110440) 0) lt!111032)))

(declare-fun b!269974 () Bool)

(assert (=> b!269974 (= e!167728 (< 0 (size!3041 (_1!2353 lt!110440))))))

(assert (= (and d!78440 res!123424) b!269974))

(assert (=> d!78440 m!340825))

(assert (=> d!78440 m!340825))

(declare-fun m!341027 () Bool)

(assert (=> d!78440 m!341027))

(declare-fun m!341029 () Bool)

(assert (=> d!78440 m!341029))

(assert (=> b!269974 m!339101))

(assert (=> b!269044 d!78440))

(declare-fun d!78442 () Bool)

(assert (=> d!78442 (= (inv!4718 (tag!939 (h!9217 (t!38156 rules!1920)))) (= (mod (str.len (value!25091 (tag!939 (h!9217 (t!38156 rules!1920))))) 2) 0))))

(assert (=> b!269533 d!78442))

(declare-fun d!78444 () Bool)

(declare-fun res!123427 () Bool)

(declare-fun e!167731 () Bool)

(assert (=> d!78444 (=> (not res!123427) (not e!167731))))

(assert (=> d!78444 (= res!123427 (semiInverseModEq!257 (toChars!1323 (transformation!729 (h!9217 (t!38156 rules!1920)))) (toValue!1464 (transformation!729 (h!9217 (t!38156 rules!1920))))))))

(assert (=> d!78444 (= (inv!4722 (transformation!729 (h!9217 (t!38156 rules!1920)))) e!167731)))

(declare-fun b!269977 () Bool)

(assert (=> b!269977 (= e!167731 (equivClasses!240 (toChars!1323 (transformation!729 (h!9217 (t!38156 rules!1920)))) (toValue!1464 (transformation!729 (h!9217 (t!38156 rules!1920))))))))

(assert (= (and d!78444 res!123427) b!269977))

(declare-fun m!341031 () Bool)

(assert (=> d!78444 m!341031))

(declare-fun m!341033 () Bool)

(assert (=> b!269977 m!341033))

(assert (=> b!269533 d!78444))

(declare-fun d!78446 () Bool)

(declare-fun c!51151 () Bool)

(assert (=> d!78446 (= c!51151 ((_ is Nil!3817) lt!110678))))

(declare-fun e!167732 () (InoxSet C!2828))

(assert (=> d!78446 (= (content!547 lt!110678) e!167732)))

(declare-fun b!269978 () Bool)

(assert (=> b!269978 (= e!167732 ((as const (Array C!2828 Bool)) false))))

(declare-fun b!269979 () Bool)

(assert (=> b!269979 (= e!167732 ((_ map or) (store ((as const (Array C!2828 Bool)) false) (h!9214 lt!110678) true) (content!547 (t!38153 lt!110678))))))

(assert (= (and d!78446 c!51151) b!269978))

(assert (= (and d!78446 (not c!51151)) b!269979))

(declare-fun m!341035 () Bool)

(assert (=> b!269979 m!341035))

(declare-fun m!341037 () Bool)

(assert (=> b!269979 m!341037))

(assert (=> d!78114 d!78446))

(assert (=> d!78114 d!78180))

(declare-fun d!78448 () Bool)

(declare-fun c!51152 () Bool)

(assert (=> d!78448 (= c!51152 ((_ is Nil!3817) lt!110403))))

(declare-fun e!167733 () (InoxSet C!2828))

(assert (=> d!78448 (= (content!547 lt!110403) e!167733)))

(declare-fun b!269980 () Bool)

(assert (=> b!269980 (= e!167733 ((as const (Array C!2828 Bool)) false))))

(declare-fun b!269981 () Bool)

(assert (=> b!269981 (= e!167733 ((_ map or) (store ((as const (Array C!2828 Bool)) false) (h!9214 lt!110403) true) (content!547 (t!38153 lt!110403))))))

(assert (= (and d!78448 c!51152) b!269980))

(assert (= (and d!78448 (not c!51152)) b!269981))

(declare-fun m!341039 () Bool)

(assert (=> b!269981 m!341039))

(declare-fun m!341041 () Bool)

(assert (=> b!269981 m!341041))

(assert (=> d!78114 d!78448))

(declare-fun d!78450 () Bool)

(assert (=> d!78450 (forall!956 (dropList!162 (seqFromList!826 (t!38155 tokens!465)) 0) lambda!9100)))

(declare-fun lt!111035 () Unit!4874)

(declare-fun choose!2455 (List!3829 List!3829 Int) Unit!4874)

(assert (=> d!78450 (= lt!111035 (choose!2455 (list!1560 (seqFromList!826 (t!38155 tokens!465))) (dropList!162 (seqFromList!826 (t!38155 tokens!465)) 0) lambda!9100))))

(assert (=> d!78450 (forall!956 (list!1560 (seqFromList!826 (t!38155 tokens!465))) lambda!9100)))

(assert (=> d!78450 (= (lemmaContentSubsetPreservesForall!106 (list!1560 (seqFromList!826 (t!38155 tokens!465))) (dropList!162 (seqFromList!826 (t!38155 tokens!465)) 0) lambda!9100) lt!111035)))

(declare-fun bs!29934 () Bool)

(assert (= bs!29934 d!78450))

(assert (=> bs!29934 m!339545))

(declare-fun m!341043 () Bool)

(assert (=> bs!29934 m!341043))

(assert (=> bs!29934 m!339511))

(assert (=> bs!29934 m!339545))

(declare-fun m!341045 () Bool)

(assert (=> bs!29934 m!341045))

(assert (=> bs!29934 m!339511))

(declare-fun m!341047 () Bool)

(assert (=> bs!29934 m!341047))

(assert (=> d!78038 d!78450))

(declare-fun bs!29935 () Bool)

(declare-fun b!269986 () Bool)

(assert (= bs!29935 (and b!269986 d!78038)))

(declare-fun lambda!9132 () Int)

(assert (=> bs!29935 (not (= lambda!9132 lambda!9100))))

(declare-fun bs!29936 () Bool)

(assert (= bs!29936 (and b!269986 b!269845)))

(assert (=> bs!29936 (= lambda!9132 lambda!9125)))

(declare-fun bs!29937 () Bool)

(assert (= bs!29937 (and b!269986 b!269430)))

(assert (=> bs!29937 (= lambda!9132 lambda!9113)))

(declare-fun bs!29938 () Bool)

(assert (= bs!29938 (and b!269986 b!269171)))

(assert (=> bs!29938 (= lambda!9132 lambda!9094)))

(declare-fun bs!29939 () Bool)

(assert (= bs!29939 (and b!269986 d!78088)))

(assert (=> bs!29939 (= lambda!9132 lambda!9111)))

(declare-fun bs!29940 () Bool)

(assert (= bs!29940 (and b!269986 b!269296)))

(assert (=> bs!29940 (= lambda!9132 lambda!9101)))

(declare-fun bs!29941 () Bool)

(assert (= bs!29941 (and b!269986 d!78110)))

(assert (=> bs!29941 (not (= lambda!9132 lambda!9112))))

(declare-fun bs!29942 () Bool)

(assert (= bs!29942 (and b!269986 b!269439)))

(assert (=> bs!29942 (= lambda!9132 lambda!9114)))

(declare-fun bs!29943 () Bool)

(assert (= bs!29943 (and b!269986 b!268954)))

(assert (=> bs!29943 (not (= lambda!9132 lambda!9080))))

(declare-fun bs!29944 () Bool)

(assert (= bs!29944 (and b!269986 d!78346)))

(assert (=> bs!29944 (= lambda!9132 lambda!9128)))

(declare-fun b!269994 () Bool)

(declare-fun e!167741 () Bool)

(assert (=> b!269994 (= e!167741 true)))

(declare-fun b!269993 () Bool)

(declare-fun e!167740 () Bool)

(assert (=> b!269993 (= e!167740 e!167741)))

(declare-fun b!269992 () Bool)

(declare-fun e!167739 () Bool)

(assert (=> b!269992 (= e!167739 e!167740)))

(assert (=> b!269986 e!167739))

(assert (= b!269993 b!269994))

(assert (= b!269992 b!269993))

(assert (= (and b!269986 ((_ is Cons!3820) rules!1920)) b!269992))

(assert (=> b!269994 (< (dynLambda!1953 order!2933 (toValue!1464 (transformation!729 (h!9217 rules!1920)))) (dynLambda!1954 order!2935 lambda!9132))))

(assert (=> b!269994 (< (dynLambda!1955 order!2937 (toChars!1323 (transformation!729 (h!9217 rules!1920)))) (dynLambda!1954 order!2935 lambda!9132))))

(assert (=> b!269986 true))

(declare-fun b!269982 () Bool)

(declare-fun e!167734 () List!3827)

(declare-fun call!14730 () List!3827)

(declare-fun lt!111040 () List!3827)

(assert (=> b!269982 (= e!167734 (++!994 call!14730 lt!111040))))

(declare-fun bm!14724 () Bool)

(declare-fun call!14731 () List!3827)

(declare-fun call!14729 () List!3827)

(assert (=> bm!14724 (= call!14731 call!14729)))

(declare-fun c!51154 () Bool)

(declare-fun c!51153 () Bool)

(assert (=> bm!14724 (= c!51154 c!51153)))

(declare-fun b!269983 () Bool)

(declare-fun e!167737 () List!3827)

(assert (=> b!269983 (= e!167737 Nil!3817)))

(declare-fun bm!14725 () Bool)

(declare-fun call!14733 () BalanceConc!2568)

(assert (=> bm!14725 (= call!14733 (charsOf!374 (h!9216 (dropList!162 (seqFromList!826 (t!38155 tokens!465)) 0))))))

(declare-fun b!269984 () Bool)

(declare-fun e!167736 () BalanceConc!2568)

(declare-fun call!14732 () BalanceConc!2568)

(assert (=> b!269984 (= e!167736 call!14732)))

(declare-fun b!269985 () Bool)

(declare-fun lt!111036 () Option!808)

(assert (=> b!269985 (= c!51153 (and ((_ is Some!807) lt!111036) (not (= (_1!2358 (v!14676 lt!111036)) (h!9216 (dropList!162 (seqFromList!826 (t!38155 tokens!465)) 0))))))))

(declare-fun e!167738 () List!3827)

(assert (=> b!269985 (= e!167738 e!167734)))

(assert (=> b!269986 (= e!167737 e!167738)))

(declare-fun lt!111037 () Unit!4874)

(assert (=> b!269986 (= lt!111037 (forallContained!284 (dropList!162 (seqFromList!826 (t!38155 tokens!465)) 0) lambda!9132 (h!9216 (dropList!162 (seqFromList!826 (t!38155 tokens!465)) 0))))))

(assert (=> b!269986 (= lt!111040 (printWithSeparatorTokenWhenNeededList!298 thiss!17480 rules!1920 (t!38155 (dropList!162 (seqFromList!826 (t!38155 tokens!465)) 0)) separatorToken!170))))

(assert (=> b!269986 (= lt!111036 (maxPrefix!333 thiss!17480 rules!1920 (++!994 (list!1557 (charsOf!374 (h!9216 (dropList!162 (seqFromList!826 (t!38155 tokens!465)) 0)))) lt!111040)))))

(declare-fun c!51156 () Bool)

(assert (=> b!269986 (= c!51156 (and ((_ is Some!807) lt!111036) (= (_1!2358 (v!14676 lt!111036)) (h!9216 (dropList!162 (seqFromList!826 (t!38155 tokens!465)) 0)))))))

(declare-fun bm!14726 () Bool)

(assert (=> bm!14726 (= call!14729 (list!1557 (ite c!51156 call!14733 e!167736)))))

(declare-fun bm!14727 () Bool)

(declare-fun c!51155 () Bool)

(assert (=> bm!14727 (= c!51155 c!51156)))

(declare-fun e!167735 () List!3827)

(assert (=> bm!14727 (= call!14730 (++!994 e!167735 (ite c!51156 lt!111040 call!14731)))))

(declare-fun b!269987 () Bool)

(assert (=> b!269987 (= e!167734 Nil!3817)))

(assert (=> b!269987 (= (print!340 thiss!17480 (singletonSeq!275 (h!9216 (dropList!162 (seqFromList!826 (t!38155 tokens!465)) 0)))) (printTailRec!303 thiss!17480 (singletonSeq!275 (h!9216 (dropList!162 (seqFromList!826 (t!38155 tokens!465)) 0))) 0 (BalanceConc!2569 Empty!1280)))))

(declare-fun lt!111038 () Unit!4874)

(declare-fun Unit!4904 () Unit!4874)

(assert (=> b!269987 (= lt!111038 Unit!4904)))

(declare-fun lt!111039 () Unit!4874)

(assert (=> b!269987 (= lt!111039 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!110 thiss!17480 rules!1920 call!14731 lt!111040))))

(assert (=> b!269987 false))

(declare-fun lt!111041 () Unit!4874)

(declare-fun Unit!4905 () Unit!4874)

(assert (=> b!269987 (= lt!111041 Unit!4905)))

(declare-fun d!78452 () Bool)

(declare-fun c!51157 () Bool)

(assert (=> d!78452 (= c!51157 ((_ is Cons!3819) (dropList!162 (seqFromList!826 (t!38155 tokens!465)) 0)))))

(assert (=> d!78452 (= (printWithSeparatorTokenWhenNeededList!298 thiss!17480 rules!1920 (dropList!162 (seqFromList!826 (t!38155 tokens!465)) 0) separatorToken!170) e!167737)))

(declare-fun b!269988 () Bool)

(assert (=> b!269988 (= e!167735 (list!1557 call!14732))))

(declare-fun bm!14728 () Bool)

(assert (=> bm!14728 (= call!14732 call!14733)))

(declare-fun b!269989 () Bool)

(assert (=> b!269989 (= e!167735 call!14729)))

(declare-fun b!269990 () Bool)

(assert (=> b!269990 (= e!167738 call!14730)))

(declare-fun b!269991 () Bool)

(assert (=> b!269991 (= e!167736 (charsOf!374 separatorToken!170))))

(assert (= (and d!78452 c!51157) b!269986))

(assert (= (and d!78452 (not c!51157)) b!269983))

(assert (= (and b!269986 c!51156) b!269990))

(assert (= (and b!269986 (not c!51156)) b!269985))

(assert (= (and b!269985 c!51153) b!269982))

(assert (= (and b!269985 (not c!51153)) b!269987))

(assert (= (or b!269982 b!269987) bm!14728))

(assert (= (or b!269982 b!269987) bm!14724))

(assert (= (and bm!14724 c!51154) b!269991))

(assert (= (and bm!14724 (not c!51154)) b!269984))

(assert (= (or b!269990 bm!14728) bm!14725))

(assert (= (or b!269990 bm!14724) bm!14726))

(assert (= (or b!269990 b!269982) bm!14727))

(assert (= (and bm!14727 c!51155) b!269989))

(assert (= (and bm!14727 (not c!51155)) b!269988))

(assert (=> b!269991 m!338937))

(assert (=> b!269986 m!339545))

(declare-fun m!341049 () Bool)

(assert (=> b!269986 m!341049))

(declare-fun m!341051 () Bool)

(assert (=> b!269986 m!341051))

(declare-fun m!341053 () Bool)

(assert (=> b!269986 m!341053))

(declare-fun m!341055 () Bool)

(assert (=> b!269986 m!341055))

(declare-fun m!341057 () Bool)

(assert (=> b!269986 m!341057))

(declare-fun m!341059 () Bool)

(assert (=> b!269986 m!341059))

(assert (=> b!269986 m!341057))

(assert (=> b!269986 m!341051))

(assert (=> b!269986 m!341055))

(declare-fun m!341061 () Bool)

(assert (=> bm!14726 m!341061))

(declare-fun m!341063 () Bool)

(assert (=> bm!14727 m!341063))

(declare-fun m!341065 () Bool)

(assert (=> b!269987 m!341065))

(assert (=> b!269987 m!341065))

(declare-fun m!341067 () Bool)

(assert (=> b!269987 m!341067))

(assert (=> b!269987 m!341065))

(declare-fun m!341069 () Bool)

(assert (=> b!269987 m!341069))

(declare-fun m!341071 () Bool)

(assert (=> b!269987 m!341071))

(declare-fun m!341073 () Bool)

(assert (=> b!269982 m!341073))

(declare-fun m!341075 () Bool)

(assert (=> b!269988 m!341075))

(assert (=> bm!14725 m!341055))

(assert (=> d!78038 d!78452))

(declare-fun d!78454 () Bool)

(assert (=> d!78454 (= (list!1557 lt!110603) (list!1561 (c!50914 lt!110603)))))

(declare-fun bs!29945 () Bool)

(assert (= bs!29945 d!78454))

(declare-fun m!341077 () Bool)

(assert (=> bs!29945 m!341077))

(assert (=> d!78038 d!78454))

(declare-fun d!78456 () Bool)

(assert (=> d!78456 (= (dropList!162 (seqFromList!826 (t!38155 tokens!465)) 0) (drop!215 (list!1563 (c!50916 (seqFromList!826 (t!38155 tokens!465)))) 0))))

(declare-fun bs!29946 () Bool)

(assert (= bs!29946 d!78456))

(declare-fun m!341079 () Bool)

(assert (=> bs!29946 m!341079))

(assert (=> bs!29946 m!341079))

(declare-fun m!341081 () Bool)

(assert (=> bs!29946 m!341081))

(assert (=> d!78038 d!78456))

(declare-fun d!78458 () Bool)

(declare-fun lt!111042 () Int)

(assert (=> d!78458 (= lt!111042 (size!3046 (list!1560 (seqFromList!826 (t!38155 tokens!465)))))))

(assert (=> d!78458 (= lt!111042 (size!3044 (c!50916 (seqFromList!826 (t!38155 tokens!465)))))))

(assert (=> d!78458 (= (size!3041 (seqFromList!826 (t!38155 tokens!465))) lt!111042)))

(declare-fun bs!29947 () Bool)

(assert (= bs!29947 d!78458))

(assert (=> bs!29947 m!338949))

(assert (=> bs!29947 m!339511))

(assert (=> bs!29947 m!339511))

(declare-fun m!341083 () Bool)

(assert (=> bs!29947 m!341083))

(declare-fun m!341085 () Bool)

(assert (=> bs!29947 m!341085))

(assert (=> d!78038 d!78458))

(declare-fun d!78460 () Bool)

(assert (=> d!78460 (= (list!1560 (seqFromList!826 (t!38155 tokens!465))) (list!1563 (c!50916 (seqFromList!826 (t!38155 tokens!465)))))))

(declare-fun bs!29948 () Bool)

(assert (= bs!29948 d!78460))

(assert (=> bs!29948 m!341079))

(assert (=> d!78038 d!78460))

(assert (=> b!269440 d!78378))

(assert (=> b!269440 d!78096))

(declare-fun d!78462 () Bool)

(declare-fun lt!111046 () BalanceConc!2568)

(assert (=> d!78462 (= (list!1557 lt!111046) (printListTailRec!127 thiss!17480 (dropList!162 (singletonSeq!275 (h!9216 tokens!465)) 0) (list!1557 (BalanceConc!2569 Empty!1280))))))

(declare-fun e!167743 () BalanceConc!2568)

(assert (=> d!78462 (= lt!111046 e!167743)))

(declare-fun c!51158 () Bool)

(assert (=> d!78462 (= c!51158 (>= 0 (size!3041 (singletonSeq!275 (h!9216 tokens!465)))))))

(declare-fun e!167742 () Bool)

(assert (=> d!78462 e!167742))

(declare-fun res!123428 () Bool)

(assert (=> d!78462 (=> (not res!123428) (not e!167742))))

(assert (=> d!78462 (= res!123428 (>= 0 0))))

(assert (=> d!78462 (= (printTailRec!303 thiss!17480 (singletonSeq!275 (h!9216 tokens!465)) 0 (BalanceConc!2569 Empty!1280)) lt!111046)))

(declare-fun b!269995 () Bool)

(assert (=> b!269995 (= e!167742 (<= 0 (size!3041 (singletonSeq!275 (h!9216 tokens!465)))))))

(declare-fun b!269996 () Bool)

(assert (=> b!269996 (= e!167743 (BalanceConc!2569 Empty!1280))))

(declare-fun b!269997 () Bool)

(assert (=> b!269997 (= e!167743 (printTailRec!303 thiss!17480 (singletonSeq!275 (h!9216 tokens!465)) (+ 0 1) (++!996 (BalanceConc!2569 Empty!1280) (charsOf!374 (apply!765 (singletonSeq!275 (h!9216 tokens!465)) 0)))))))

(declare-fun lt!111048 () List!3829)

(assert (=> b!269997 (= lt!111048 (list!1560 (singletonSeq!275 (h!9216 tokens!465))))))

(declare-fun lt!111044 () Unit!4874)

(assert (=> b!269997 (= lt!111044 (lemmaDropApply!202 lt!111048 0))))

(assert (=> b!269997 (= (head!886 (drop!215 lt!111048 0)) (apply!766 lt!111048 0))))

(declare-fun lt!111047 () Unit!4874)

(assert (=> b!269997 (= lt!111047 lt!111044)))

(declare-fun lt!111049 () List!3829)

(assert (=> b!269997 (= lt!111049 (list!1560 (singletonSeq!275 (h!9216 tokens!465))))))

(declare-fun lt!111043 () Unit!4874)

(assert (=> b!269997 (= lt!111043 (lemmaDropTail!194 lt!111049 0))))

(assert (=> b!269997 (= (tail!476 (drop!215 lt!111049 0)) (drop!215 lt!111049 (+ 0 1)))))

(declare-fun lt!111045 () Unit!4874)

(assert (=> b!269997 (= lt!111045 lt!111043)))

(assert (= (and d!78462 res!123428) b!269995))

(assert (= (and d!78462 c!51158) b!269996))

(assert (= (and d!78462 (not c!51158)) b!269997))

(declare-fun m!341087 () Bool)

(assert (=> d!78462 m!341087))

(assert (=> d!78462 m!339703))

(assert (=> d!78462 m!338975))

(declare-fun m!341089 () Bool)

(assert (=> d!78462 m!341089))

(declare-fun m!341091 () Bool)

(assert (=> d!78462 m!341091))

(assert (=> d!78462 m!339703))

(declare-fun m!341093 () Bool)

(assert (=> d!78462 m!341093))

(assert (=> d!78462 m!338975))

(assert (=> d!78462 m!341091))

(assert (=> b!269995 m!338975))

(assert (=> b!269995 m!341089))

(declare-fun m!341095 () Bool)

(assert (=> b!269997 m!341095))

(declare-fun m!341097 () Bool)

(assert (=> b!269997 m!341097))

(declare-fun m!341099 () Bool)

(assert (=> b!269997 m!341099))

(declare-fun m!341101 () Bool)

(assert (=> b!269997 m!341101))

(declare-fun m!341103 () Bool)

(assert (=> b!269997 m!341103))

(declare-fun m!341105 () Bool)

(assert (=> b!269997 m!341105))

(declare-fun m!341107 () Bool)

(assert (=> b!269997 m!341107))

(assert (=> b!269997 m!338975))

(declare-fun m!341109 () Bool)

(assert (=> b!269997 m!341109))

(assert (=> b!269997 m!341099))

(declare-fun m!341111 () Bool)

(assert (=> b!269997 m!341111))

(assert (=> b!269997 m!338975))

(assert (=> b!269997 m!341107))

(declare-fun m!341113 () Bool)

(assert (=> b!269997 m!341113))

(assert (=> b!269997 m!338975))

(assert (=> b!269997 m!339103))

(declare-fun m!341115 () Bool)

(assert (=> b!269997 m!341115))

(declare-fun m!341117 () Bool)

(assert (=> b!269997 m!341117))

(assert (=> b!269997 m!341109))

(assert (=> b!269997 m!341105))

(assert (=> b!269997 m!341101))

(assert (=> b!269440 d!78462))

(declare-fun e!167818 () Bool)

(declare-fun b!270131 () Bool)

(declare-fun lt!111170 () Token!1202)

(declare-datatypes ((Option!811 0))(
  ( (None!810) (Some!810 (v!14679 Rule!1258)) )
))
(declare-fun get!1265 (Option!811) Rule!1258)

(declare-fun getRuleFromTag!124 (LexerInterface!615 List!3830 String!4835) Option!811)

(assert (=> b!270131 (= e!167818 (= (rule!1314 lt!111170) (get!1265 (getRuleFromTag!124 thiss!17480 rules!1920 (tag!939 (rule!1314 lt!111170))))))))

(declare-fun b!270133 () Bool)

(declare-fun e!167819 () Unit!4874)

(declare-fun Unit!4906 () Unit!4874)

(assert (=> b!270133 (= e!167819 Unit!4906)))

(declare-fun d!78464 () Bool)

(assert (=> d!78464 (isDefined!651 (maxPrefix!333 thiss!17480 rules!1920 (++!994 call!14710 lt!110676)))))

(declare-fun lt!111166 () Unit!4874)

(assert (=> d!78464 (= lt!111166 e!167819)))

(declare-fun c!51205 () Bool)

(assert (=> d!78464 (= c!51205 (isEmpty!2425 (maxPrefix!333 thiss!17480 rules!1920 (++!994 call!14710 lt!110676))))))

(declare-fun lt!111169 () Unit!4874)

(declare-fun lt!111164 () Unit!4874)

(assert (=> d!78464 (= lt!111169 lt!111164)))

(assert (=> d!78464 e!167818))

(declare-fun res!123472 () Bool)

(assert (=> d!78464 (=> (not res!123472) (not e!167818))))

(declare-fun isDefined!653 (Option!811) Bool)

(assert (=> d!78464 (= res!123472 (isDefined!653 (getRuleFromTag!124 thiss!17480 rules!1920 (tag!939 (rule!1314 lt!111170)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!124 (LexerInterface!615 List!3830 List!3827 Token!1202) Unit!4874)

(assert (=> d!78464 (= lt!111164 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!124 thiss!17480 rules!1920 call!14710 lt!111170))))

(declare-fun lt!111160 () Unit!4874)

(declare-fun lt!111173 () Unit!4874)

(assert (=> d!78464 (= lt!111160 lt!111173)))

(declare-fun lt!111171 () List!3827)

(assert (=> d!78464 (isPrefix!397 lt!111171 (++!994 call!14710 lt!110676))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!56 (List!3827 List!3827 List!3827) Unit!4874)

(assert (=> d!78464 (= lt!111173 (lemmaPrefixStaysPrefixWhenAddingToSuffix!56 lt!111171 call!14710 lt!110676))))

(assert (=> d!78464 (= lt!111171 (list!1557 (charsOf!374 lt!111170)))))

(declare-fun lt!111172 () Unit!4874)

(declare-fun lt!111175 () Unit!4874)

(assert (=> d!78464 (= lt!111172 lt!111175)))

(declare-fun lt!111165 () List!3827)

(declare-fun lt!111176 () List!3827)

(assert (=> d!78464 (isPrefix!397 lt!111165 (++!994 lt!111165 lt!111176))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!292 (List!3827 List!3827) Unit!4874)

(assert (=> d!78464 (= lt!111175 (lemmaConcatTwoListThenFirstIsPrefix!292 lt!111165 lt!111176))))

(assert (=> d!78464 (= lt!111176 (_2!2358 (get!1263 (maxPrefix!333 thiss!17480 rules!1920 call!14710))))))

(assert (=> d!78464 (= lt!111165 (list!1557 (charsOf!374 lt!111170)))))

(assert (=> d!78464 (= lt!111170 (head!886 (list!1560 (_1!2353 (lex!407 thiss!17480 rules!1920 (seqFromList!825 call!14710))))))))

(assert (=> d!78464 (not (isEmpty!2413 rules!1920))))

(assert (=> d!78464 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!110 thiss!17480 rules!1920 call!14710 lt!110676) lt!111166)))

(declare-fun b!270132 () Bool)

(declare-fun Unit!4907 () Unit!4874)

(assert (=> b!270132 (= e!167819 Unit!4907)))

(declare-fun lt!111161 () List!3827)

(assert (=> b!270132 (= lt!111161 (++!994 call!14710 lt!110676))))

(declare-fun lt!111163 () Unit!4874)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!56 (LexerInterface!615 Rule!1258 List!3830 List!3827) Unit!4874)

(assert (=> b!270132 (= lt!111163 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!56 thiss!17480 (rule!1314 lt!111170) rules!1920 lt!111161))))

(assert (=> b!270132 (isEmpty!2425 (maxPrefixOneRule!141 thiss!17480 (rule!1314 lt!111170) lt!111161))))

(declare-fun lt!111174 () Unit!4874)

(assert (=> b!270132 (= lt!111174 lt!111163)))

(declare-fun lt!111162 () List!3827)

(assert (=> b!270132 (= lt!111162 (list!1557 (charsOf!374 lt!111170)))))

(declare-fun lt!111168 () Unit!4874)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!56 (LexerInterface!615 Rule!1258 List!3827 List!3827) Unit!4874)

(assert (=> b!270132 (= lt!111168 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!56 thiss!17480 (rule!1314 lt!111170) lt!111162 (++!994 call!14710 lt!110676)))))

(assert (=> b!270132 (not (matchR!275 (regex!729 (rule!1314 lt!111170)) lt!111162))))

(declare-fun lt!111167 () Unit!4874)

(assert (=> b!270132 (= lt!111167 lt!111168)))

(assert (=> b!270132 false))

(declare-fun b!270130 () Bool)

(declare-fun res!123473 () Bool)

(assert (=> b!270130 (=> (not res!123473) (not e!167818))))

(assert (=> b!270130 (= res!123473 (matchR!275 (regex!729 (get!1265 (getRuleFromTag!124 thiss!17480 rules!1920 (tag!939 (rule!1314 lt!111170))))) (list!1557 (charsOf!374 lt!111170))))))

(assert (= (and d!78464 res!123472) b!270130))

(assert (= (and b!270130 res!123473) b!270131))

(assert (= (and d!78464 c!51205) b!270132))

(assert (= (and d!78464 (not c!51205)) b!270133))

(declare-fun m!341357 () Bool)

(assert (=> b!270131 m!341357))

(assert (=> b!270131 m!341357))

(declare-fun m!341359 () Bool)

(assert (=> b!270131 m!341359))

(declare-fun m!341361 () Bool)

(assert (=> d!78464 m!341361))

(declare-fun m!341363 () Bool)

(assert (=> d!78464 m!341363))

(assert (=> d!78464 m!341357))

(declare-fun m!341365 () Bool)

(assert (=> d!78464 m!341365))

(declare-fun m!341367 () Bool)

(assert (=> d!78464 m!341367))

(assert (=> d!78464 m!341365))

(declare-fun m!341369 () Bool)

(assert (=> d!78464 m!341369))

(declare-fun m!341371 () Bool)

(assert (=> d!78464 m!341371))

(declare-fun m!341373 () Bool)

(assert (=> d!78464 m!341373))

(assert (=> d!78464 m!338965))

(assert (=> d!78464 m!341363))

(declare-fun m!341375 () Bool)

(assert (=> d!78464 m!341375))

(declare-fun m!341377 () Bool)

(assert (=> d!78464 m!341377))

(declare-fun m!341379 () Bool)

(assert (=> d!78464 m!341379))

(declare-fun m!341381 () Bool)

(assert (=> d!78464 m!341381))

(declare-fun m!341383 () Bool)

(assert (=> d!78464 m!341383))

(assert (=> d!78464 m!341361))

(declare-fun m!341385 () Bool)

(assert (=> d!78464 m!341385))

(declare-fun m!341387 () Bool)

(assert (=> d!78464 m!341387))

(declare-fun m!341389 () Bool)

(assert (=> d!78464 m!341389))

(assert (=> d!78464 m!341371))

(assert (=> d!78464 m!341387))

(assert (=> d!78464 m!341371))

(assert (=> d!78464 m!341381))

(assert (=> d!78464 m!341377))

(assert (=> d!78464 m!341381))

(declare-fun m!341391 () Bool)

(assert (=> d!78464 m!341391))

(declare-fun m!341393 () Bool)

(assert (=> d!78464 m!341393))

(declare-fun m!341395 () Bool)

(assert (=> d!78464 m!341395))

(assert (=> d!78464 m!341357))

(declare-fun m!341397 () Bool)

(assert (=> d!78464 m!341397))

(assert (=> b!270132 m!341371))

(assert (=> b!270132 m!341377))

(declare-fun m!341399 () Bool)

(assert (=> b!270132 m!341399))

(declare-fun m!341401 () Bool)

(assert (=> b!270132 m!341401))

(declare-fun m!341403 () Bool)

(assert (=> b!270132 m!341403))

(assert (=> b!270132 m!341371))

(declare-fun m!341405 () Bool)

(assert (=> b!270132 m!341405))

(assert (=> b!270132 m!341377))

(assert (=> b!270132 m!341379))

(assert (=> b!270132 m!341403))

(declare-fun m!341407 () Bool)

(assert (=> b!270132 m!341407))

(assert (=> b!270130 m!341357))

(assert (=> b!270130 m!341357))

(assert (=> b!270130 m!341359))

(assert (=> b!270130 m!341377))

(assert (=> b!270130 m!341379))

(assert (=> b!270130 m!341379))

(declare-fun m!341409 () Bool)

(assert (=> b!270130 m!341409))

(assert (=> b!270130 m!341377))

(assert (=> b!269440 d!78464))

(declare-fun d!78518 () Bool)

(assert (=> d!78518 (= (inv!4726 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (value!25092 separatorToken!170))) (isBalanced!350 (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (value!25092 separatorToken!170)))))))

(declare-fun bs!29953 () Bool)

(assert (= bs!29953 d!78518))

(declare-fun m!341411 () Bool)

(assert (=> bs!29953 m!341411))

(assert (=> tb!15097 d!78518))

(declare-fun b!270137 () Bool)

(declare-fun e!167821 () List!3827)

(assert (=> b!270137 (= e!167821 (++!994 (list!1561 (left!3139 (c!50914 lt!110392))) (list!1561 (right!3469 (c!50914 lt!110392)))))))

(declare-fun d!78520 () Bool)

(declare-fun c!51206 () Bool)

(assert (=> d!78520 (= c!51206 ((_ is Empty!1280) (c!50914 lt!110392)))))

(declare-fun e!167820 () List!3827)

(assert (=> d!78520 (= (list!1561 (c!50914 lt!110392)) e!167820)))

(declare-fun b!270134 () Bool)

(assert (=> b!270134 (= e!167820 Nil!3817)))

(declare-fun b!270136 () Bool)

(assert (=> b!270136 (= e!167821 (list!1564 (xs!3879 (c!50914 lt!110392))))))

(declare-fun b!270135 () Bool)

(assert (=> b!270135 (= e!167820 e!167821)))

(declare-fun c!51207 () Bool)

(assert (=> b!270135 (= c!51207 ((_ is Leaf!1984) (c!50914 lt!110392)))))

(assert (= (and d!78520 c!51206) b!270134))

(assert (= (and d!78520 (not c!51206)) b!270135))

(assert (= (and b!270135 c!51207) b!270136))

(assert (= (and b!270135 (not c!51207)) b!270137))

(declare-fun m!341413 () Bool)

(assert (=> b!270137 m!341413))

(declare-fun m!341415 () Bool)

(assert (=> b!270137 m!341415))

(assert (=> b!270137 m!341413))

(assert (=> b!270137 m!341415))

(declare-fun m!341417 () Bool)

(assert (=> b!270137 m!341417))

(declare-fun m!341419 () Bool)

(assert (=> b!270136 m!341419))

(assert (=> d!78094 d!78520))

(assert (=> b!269291 d!78458))

(declare-fun d!78522 () Bool)

(declare-fun c!51208 () Bool)

(assert (=> d!78522 (= c!51208 ((_ is Nil!3817) lt!110624))))

(declare-fun e!167822 () (InoxSet C!2828))

(assert (=> d!78522 (= (content!547 lt!110624) e!167822)))

(declare-fun b!270138 () Bool)

(assert (=> b!270138 (= e!167822 ((as const (Array C!2828 Bool)) false))))

(declare-fun b!270139 () Bool)

(assert (=> b!270139 (= e!167822 ((_ map or) (store ((as const (Array C!2828 Bool)) false) (h!9214 lt!110624) true) (content!547 (t!38153 lt!110624))))))

(assert (= (and d!78522 c!51208) b!270138))

(assert (= (and d!78522 (not c!51208)) b!270139))

(declare-fun m!341421 () Bool)

(assert (=> b!270139 m!341421))

(declare-fun m!341423 () Bool)

(assert (=> b!270139 m!341423))

(assert (=> d!78084 d!78522))

(assert (=> d!78084 d!78182))

(assert (=> d!78084 d!78448))

(assert (=> b!269426 d!78412))

(declare-fun d!78524 () Bool)

(assert (=> d!78524 (= (list!1557 (_2!2353 lt!110416)) (list!1561 (c!50914 (_2!2353 lt!110416))))))

(declare-fun bs!29954 () Bool)

(assert (= bs!29954 d!78524))

(declare-fun m!341425 () Bool)

(assert (=> bs!29954 m!341425))

(assert (=> b!269025 d!78524))

(declare-fun d!78526 () Bool)

(declare-fun e!167848 () Bool)

(assert (=> d!78526 e!167848))

(declare-fun c!51216 () Bool)

(declare-fun lt!111204 () tuple2!4282)

(assert (=> d!78526 (= c!51216 (> (size!3046 (_1!2357 lt!111204)) 0))))

(declare-fun e!167849 () tuple2!4282)

(assert (=> d!78526 (= lt!111204 e!167849)))

(declare-fun c!51217 () Bool)

(declare-fun lt!111205 () Option!808)

(assert (=> d!78526 (= c!51217 ((_ is Some!807) lt!111205))))

(assert (=> d!78526 (= lt!111205 (maxPrefix!333 thiss!17480 rules!1920 (list!1557 (seqFromList!825 lt!110396))))))

(assert (=> d!78526 (= (lexList!207 thiss!17480 rules!1920 (list!1557 (seqFromList!825 lt!110396))) lt!111204)))

(declare-fun b!270174 () Bool)

(assert (=> b!270174 (= e!167848 (= (_2!2357 lt!111204) (list!1557 (seqFromList!825 lt!110396))))))

(declare-fun b!270175 () Bool)

(declare-fun e!167847 () Bool)

(assert (=> b!270175 (= e!167847 (not (isEmpty!2417 (_1!2357 lt!111204))))))

(declare-fun b!270176 () Bool)

(assert (=> b!270176 (= e!167848 e!167847)))

(declare-fun res!123494 () Bool)

(assert (=> b!270176 (= res!123494 (< (size!3043 (_2!2357 lt!111204)) (size!3043 (list!1557 (seqFromList!825 lt!110396)))))))

(assert (=> b!270176 (=> (not res!123494) (not e!167847))))

(declare-fun b!270177 () Bool)

(assert (=> b!270177 (= e!167849 (tuple2!4283 Nil!3819 (list!1557 (seqFromList!825 lt!110396))))))

(declare-fun b!270178 () Bool)

(declare-fun lt!111206 () tuple2!4282)

(assert (=> b!270178 (= e!167849 (tuple2!4283 (Cons!3819 (_1!2358 (v!14676 lt!111205)) (_1!2357 lt!111206)) (_2!2357 lt!111206)))))

(assert (=> b!270178 (= lt!111206 (lexList!207 thiss!17480 rules!1920 (_2!2358 (v!14676 lt!111205))))))

(assert (= (and d!78526 c!51217) b!270178))

(assert (= (and d!78526 (not c!51217)) b!270177))

(assert (= (and d!78526 c!51216) b!270176))

(assert (= (and d!78526 (not c!51216)) b!270174))

(assert (= (and b!270176 res!123494) b!270175))

(declare-fun m!341455 () Bool)

(assert (=> d!78526 m!341455))

(assert (=> d!78526 m!339077))

(declare-fun m!341457 () Bool)

(assert (=> d!78526 m!341457))

(declare-fun m!341459 () Bool)

(assert (=> b!270175 m!341459))

(declare-fun m!341461 () Bool)

(assert (=> b!270176 m!341461))

(assert (=> b!270176 m!339077))

(assert (=> b!270176 m!340945))

(declare-fun m!341467 () Bool)

(assert (=> b!270178 m!341467))

(assert (=> b!269025 d!78526))

(declare-fun d!78534 () Bool)

(assert (=> d!78534 (= (list!1557 (seqFromList!825 lt!110396)) (list!1561 (c!50914 (seqFromList!825 lt!110396))))))

(declare-fun bs!29956 () Bool)

(assert (= bs!29956 d!78534))

(declare-fun m!341475 () Bool)

(assert (=> bs!29956 m!341475))

(assert (=> b!269025 d!78534))

(declare-fun d!78538 () Bool)

(declare-fun lt!111209 () Int)

(assert (=> d!78538 (>= lt!111209 0)))

(declare-fun e!167856 () Int)

(assert (=> d!78538 (= lt!111209 e!167856)))

(declare-fun c!51222 () Bool)

(assert (=> d!78538 (= c!51222 ((_ is Nil!3817) lt!110678))))

(assert (=> d!78538 (= (size!3043 lt!110678) lt!111209)))

(declare-fun b!270189 () Bool)

(assert (=> b!270189 (= e!167856 0)))

(declare-fun b!270190 () Bool)

(assert (=> b!270190 (= e!167856 (+ 1 (size!3043 (t!38153 lt!110678))))))

(assert (= (and d!78538 c!51222) b!270189))

(assert (= (and d!78538 (not c!51222)) b!270190))

(declare-fun m!341477 () Bool)

(assert (=> b!270190 m!341477))

(assert (=> b!269450 d!78538))

(assert (=> b!269450 d!78172))

(declare-fun d!78540 () Bool)

(declare-fun lt!111210 () Int)

(assert (=> d!78540 (>= lt!111210 0)))

(declare-fun e!167857 () Int)

(assert (=> d!78540 (= lt!111210 e!167857)))

(declare-fun c!51223 () Bool)

(assert (=> d!78540 (= c!51223 ((_ is Nil!3817) lt!110403))))

(assert (=> d!78540 (= (size!3043 lt!110403) lt!111210)))

(declare-fun b!270191 () Bool)

(assert (=> b!270191 (= e!167857 0)))

(declare-fun b!270192 () Bool)

(assert (=> b!270192 (= e!167857 (+ 1 (size!3043 (t!38153 lt!110403))))))

(assert (= (and d!78540 c!51223) b!270191))

(assert (= (and d!78540 (not c!51223)) b!270192))

(declare-fun m!341481 () Bool)

(assert (=> b!270192 m!341481))

(assert (=> b!269450 d!78540))

(declare-fun d!78544 () Bool)

(declare-fun e!167859 () Bool)

(assert (=> d!78544 e!167859))

(declare-fun res!123498 () Bool)

(assert (=> d!78544 (=> (not res!123498) (not e!167859))))

(declare-fun lt!111212 () BalanceConc!2570)

(assert (=> d!78544 (= res!123498 (= (list!1560 lt!111212) tokens!465))))

(assert (=> d!78544 (= lt!111212 (BalanceConc!2571 (fromList!176 tokens!465)))))

(assert (=> d!78544 (= (fromListB!317 tokens!465) lt!111212)))

(declare-fun b!270194 () Bool)

(assert (=> b!270194 (= e!167859 (isBalanced!348 (fromList!176 tokens!465)))))

(assert (= (and d!78544 res!123498) b!270194))

(declare-fun m!341485 () Bool)

(assert (=> d!78544 m!341485))

(declare-fun m!341487 () Bool)

(assert (=> d!78544 m!341487))

(assert (=> b!270194 m!341487))

(assert (=> b!270194 m!341487))

(declare-fun m!341489 () Bool)

(assert (=> b!270194 m!341489))

(assert (=> d!78092 d!78544))

(declare-fun d!78548 () Bool)

(declare-fun res!123509 () Bool)

(declare-fun e!167868 () Bool)

(assert (=> d!78548 (=> res!123509 e!167868)))

(assert (=> d!78548 (= res!123509 ((_ is Nil!3820) rules!1920))))

(assert (=> d!78548 (= (noDuplicateTag!223 thiss!17480 rules!1920 Nil!3822) e!167868)))

(declare-fun b!270207 () Bool)

(declare-fun e!167869 () Bool)

(assert (=> b!270207 (= e!167868 e!167869)))

(declare-fun res!123510 () Bool)

(assert (=> b!270207 (=> (not res!123510) (not e!167869))))

(declare-fun contains!720 (List!3832 String!4835) Bool)

(assert (=> b!270207 (= res!123510 (not (contains!720 Nil!3822 (tag!939 (h!9217 rules!1920)))))))

(declare-fun b!270208 () Bool)

(assert (=> b!270208 (= e!167869 (noDuplicateTag!223 thiss!17480 (t!38156 rules!1920) (Cons!3822 (tag!939 (h!9217 rules!1920)) Nil!3822)))))

(assert (= (and d!78548 (not res!123509)) b!270207))

(assert (= (and b!270207 res!123510) b!270208))

(declare-fun m!341527 () Bool)

(assert (=> b!270207 m!341527))

(declare-fun m!341529 () Bool)

(assert (=> b!270208 m!341529))

(assert (=> b!269470 d!78548))

(declare-fun e!167877 () Bool)

(declare-fun lt!111230 () List!3827)

(declare-fun b!270221 () Bool)

(assert (=> b!270221 (= e!167877 (or (not (= lt!110403 Nil!3817)) (= lt!111230 (t!38153 (++!994 lt!110396 lt!110394)))))))

(declare-fun e!167876 () List!3827)

(declare-fun b!270219 () Bool)

(assert (=> b!270219 (= e!167876 (Cons!3817 (h!9214 (t!38153 (++!994 lt!110396 lt!110394))) (++!994 (t!38153 (t!38153 (++!994 lt!110396 lt!110394))) lt!110403)))))

(declare-fun d!78556 () Bool)

(assert (=> d!78556 e!167877))

(declare-fun res!123515 () Bool)

(assert (=> d!78556 (=> (not res!123515) (not e!167877))))

(assert (=> d!78556 (= res!123515 (= (content!547 lt!111230) ((_ map or) (content!547 (t!38153 (++!994 lt!110396 lt!110394))) (content!547 lt!110403))))))

(assert (=> d!78556 (= lt!111230 e!167876)))

(declare-fun c!51228 () Bool)

(assert (=> d!78556 (= c!51228 ((_ is Nil!3817) (t!38153 (++!994 lt!110396 lt!110394))))))

(assert (=> d!78556 (= (++!994 (t!38153 (++!994 lt!110396 lt!110394)) lt!110403) lt!111230)))

(declare-fun b!270218 () Bool)

(assert (=> b!270218 (= e!167876 lt!110403)))

(declare-fun b!270220 () Bool)

(declare-fun res!123514 () Bool)

(assert (=> b!270220 (=> (not res!123514) (not e!167877))))

(assert (=> b!270220 (= res!123514 (= (size!3043 lt!111230) (+ (size!3043 (t!38153 (++!994 lt!110396 lt!110394))) (size!3043 lt!110403))))))

(assert (= (and d!78556 c!51228) b!270218))

(assert (= (and d!78556 (not c!51228)) b!270219))

(assert (= (and d!78556 res!123515) b!270220))

(assert (= (and b!270220 res!123514) b!270221))

(declare-fun m!341531 () Bool)

(assert (=> b!270219 m!341531))

(declare-fun m!341533 () Bool)

(assert (=> d!78556 m!341533))

(declare-fun m!341535 () Bool)

(assert (=> d!78556 m!341535))

(assert (=> d!78556 m!339605))

(declare-fun m!341537 () Bool)

(assert (=> b!270220 m!341537))

(declare-fun m!341539 () Bool)

(assert (=> b!270220 m!341539))

(assert (=> b!270220 m!339611))

(assert (=> b!269320 d!78556))

(declare-fun d!78558 () Bool)

(declare-fun lt!111231 () Bool)

(assert (=> d!78558 (= lt!111231 (isEmpty!2420 (list!1557 (_2!2353 (lex!407 thiss!17480 rules!1920 (print!340 thiss!17480 (singletonSeq!275 separatorToken!170)))))))))

(assert (=> d!78558 (= lt!111231 (isEmpty!2426 (c!50914 (_2!2353 (lex!407 thiss!17480 rules!1920 (print!340 thiss!17480 (singletonSeq!275 separatorToken!170)))))))))

(assert (=> d!78558 (= (isEmpty!2419 (_2!2353 (lex!407 thiss!17480 rules!1920 (print!340 thiss!17480 (singletonSeq!275 separatorToken!170))))) lt!111231)))

(declare-fun bs!29960 () Bool)

(assert (= bs!29960 d!78558))

(declare-fun m!341541 () Bool)

(assert (=> bs!29960 m!341541))

(assert (=> bs!29960 m!341541))

(declare-fun m!341543 () Bool)

(assert (=> bs!29960 m!341543))

(declare-fun m!341545 () Bool)

(assert (=> bs!29960 m!341545))

(assert (=> b!269460 d!78558))

(assert (=> b!269460 d!78394))

(assert (=> b!269460 d!78400))

(assert (=> b!269460 d!78390))

(declare-fun d!78560 () Bool)

(assert (=> d!78560 (= (head!886 (drop!215 lt!110670 0)) (apply!766 lt!110670 0))))

(declare-fun lt!111232 () Unit!4874)

(assert (=> d!78560 (= lt!111232 (choose!2451 lt!110670 0))))

(declare-fun e!167878 () Bool)

(assert (=> d!78560 e!167878))

(declare-fun res!123516 () Bool)

(assert (=> d!78560 (=> (not res!123516) (not e!167878))))

(assert (=> d!78560 (= res!123516 (>= 0 0))))

(assert (=> d!78560 (= (lemmaDropApply!202 lt!110670 0) lt!111232)))

(declare-fun b!270222 () Bool)

(assert (=> b!270222 (= e!167878 (< 0 (size!3046 lt!110670)))))

(assert (= (and d!78560 res!123516) b!270222))

(assert (=> d!78560 m!339761))

(assert (=> d!78560 m!339761))

(assert (=> d!78560 m!339763))

(assert (=> d!78560 m!339747))

(declare-fun m!341547 () Bool)

(assert (=> d!78560 m!341547))

(declare-fun m!341549 () Bool)

(assert (=> b!270222 m!341549))

(assert (=> b!269430 d!78560))

(declare-fun d!78562 () Bool)

(assert (=> d!78562 (= (head!886 (drop!215 lt!110670 0)) (h!9216 (drop!215 lt!110670 0)))))

(assert (=> b!269430 d!78562))

(assert (=> b!269430 d!78348))

(declare-fun d!78564 () Bool)

(assert (=> d!78564 (= (tail!476 (drop!215 lt!110669 0)) (t!38155 (drop!215 lt!110669 0)))))

(assert (=> b!269430 d!78564))

(declare-fun d!78566 () Bool)

(assert (=> d!78566 (dynLambda!1959 lambda!9113 (apply!765 lt!110395 0))))

(declare-fun lt!111233 () Unit!4874)

(assert (=> d!78566 (= lt!111233 (choose!2452 (list!1560 lt!110395) lambda!9113 (apply!765 lt!110395 0)))))

(declare-fun e!167882 () Bool)

(assert (=> d!78566 e!167882))

(declare-fun res!123517 () Bool)

(assert (=> d!78566 (=> (not res!123517) (not e!167882))))

(assert (=> d!78566 (= res!123517 (forall!956 (list!1560 lt!110395) lambda!9113))))

(assert (=> d!78566 (= (forallContained!284 (list!1560 lt!110395) lambda!9113 (apply!765 lt!110395 0)) lt!111233)))

(declare-fun b!270226 () Bool)

(assert (=> b!270226 (= e!167882 (contains!718 (list!1560 lt!110395) (apply!765 lt!110395 0)))))

(assert (= (and d!78566 res!123517) b!270226))

(declare-fun b_lambda!8561 () Bool)

(assert (=> (not b_lambda!8561) (not d!78566)))

(assert (=> d!78566 m!339753))

(declare-fun m!341551 () Bool)

(assert (=> d!78566 m!341551))

(assert (=> d!78566 m!339661))

(assert (=> d!78566 m!339753))

(declare-fun m!341553 () Bool)

(assert (=> d!78566 m!341553))

(assert (=> d!78566 m!339661))

(declare-fun m!341555 () Bool)

(assert (=> d!78566 m!341555))

(assert (=> b!270226 m!339661))

(assert (=> b!270226 m!339753))

(declare-fun m!341557 () Bool)

(assert (=> b!270226 m!341557))

(assert (=> b!269430 d!78566))

(declare-fun d!78568 () Bool)

(declare-fun lt!111234 () Token!1202)

(assert (=> d!78568 (contains!718 lt!110670 lt!111234)))

(declare-fun e!167884 () Token!1202)

(assert (=> d!78568 (= lt!111234 e!167884)))

(declare-fun c!51229 () Bool)

(assert (=> d!78568 (= c!51229 (= 0 0))))

(declare-fun e!167883 () Bool)

(assert (=> d!78568 e!167883))

(declare-fun res!123518 () Bool)

(assert (=> d!78568 (=> (not res!123518) (not e!167883))))

(assert (=> d!78568 (= res!123518 (<= 0 0))))

(assert (=> d!78568 (= (apply!766 lt!110670 0) lt!111234)))

(declare-fun b!270227 () Bool)

(assert (=> b!270227 (= e!167883 (< 0 (size!3046 lt!110670)))))

(declare-fun b!270228 () Bool)

(assert (=> b!270228 (= e!167884 (head!886 lt!110670))))

(declare-fun b!270229 () Bool)

(assert (=> b!270229 (= e!167884 (apply!766 (tail!476 lt!110670) (- 0 1)))))

(assert (= (and d!78568 res!123518) b!270227))

(assert (= (and d!78568 c!51229) b!270228))

(assert (= (and d!78568 (not c!51229)) b!270229))

(declare-fun m!341559 () Bool)

(assert (=> d!78568 m!341559))

(assert (=> b!270227 m!341549))

(declare-fun m!341561 () Bool)

(assert (=> b!270228 m!341561))

(declare-fun m!341563 () Bool)

(assert (=> b!270229 m!341563))

(assert (=> b!270229 m!341563))

(declare-fun m!341565 () Bool)

(assert (=> b!270229 m!341565))

(assert (=> b!269430 d!78568))

(declare-fun b!270230 () Bool)

(declare-fun e!167885 () Int)

(declare-fun e!167887 () Int)

(assert (=> b!270230 (= e!167885 e!167887)))

(declare-fun c!51233 () Bool)

(declare-fun call!14749 () Int)

(assert (=> b!270230 (= c!51233 (>= 0 call!14749))))

(declare-fun b!270231 () Bool)

(declare-fun e!167886 () List!3829)

(assert (=> b!270231 (= e!167886 Nil!3819)))

(declare-fun b!270232 () Bool)

(declare-fun e!167888 () List!3829)

(assert (=> b!270232 (= e!167886 e!167888)))

(declare-fun c!51230 () Bool)

(assert (=> b!270232 (= c!51230 (<= 0 0))))

(declare-fun b!270233 () Bool)

(assert (=> b!270233 (= e!167887 0)))

(declare-fun b!270234 () Bool)

(declare-fun e!167889 () Bool)

(declare-fun lt!111235 () List!3829)

(assert (=> b!270234 (= e!167889 (= (size!3046 lt!111235) e!167885))))

(declare-fun c!51232 () Bool)

(assert (=> b!270234 (= c!51232 (<= 0 0))))

(declare-fun b!270235 () Bool)

(assert (=> b!270235 (= e!167885 call!14749)))

(declare-fun b!270236 () Bool)

(assert (=> b!270236 (= e!167888 (drop!215 (t!38155 lt!110669) (- 0 1)))))

(declare-fun d!78570 () Bool)

(assert (=> d!78570 e!167889))

(declare-fun res!123519 () Bool)

(assert (=> d!78570 (=> (not res!123519) (not e!167889))))

(assert (=> d!78570 (= res!123519 (= ((_ map implies) (content!548 lt!111235) (content!548 lt!110669)) ((as const (InoxSet Token!1202)) true)))))

(assert (=> d!78570 (= lt!111235 e!167886)))

(declare-fun c!51231 () Bool)

(assert (=> d!78570 (= c!51231 ((_ is Nil!3819) lt!110669))))

(assert (=> d!78570 (= (drop!215 lt!110669 0) lt!111235)))

(declare-fun b!270237 () Bool)

(assert (=> b!270237 (= e!167887 (- call!14749 0))))

(declare-fun b!270238 () Bool)

(assert (=> b!270238 (= e!167888 lt!110669)))

(declare-fun bm!14744 () Bool)

(assert (=> bm!14744 (= call!14749 (size!3046 lt!110669))))

(assert (= (and d!78570 c!51231) b!270231))

(assert (= (and d!78570 (not c!51231)) b!270232))

(assert (= (and b!270232 c!51230) b!270238))

(assert (= (and b!270232 (not c!51230)) b!270236))

(assert (= (and d!78570 res!123519) b!270234))

(assert (= (and b!270234 c!51232) b!270235))

(assert (= (and b!270234 (not c!51232)) b!270230))

(assert (= (and b!270230 c!51233) b!270233))

(assert (= (and b!270230 (not c!51233)) b!270237))

(assert (= (or b!270235 b!270230 b!270237) bm!14744))

(declare-fun m!341567 () Bool)

(assert (=> b!270234 m!341567))

(declare-fun m!341569 () Bool)

(assert (=> b!270236 m!341569))

(declare-fun m!341571 () Bool)

(assert (=> d!78570 m!341571))

(declare-fun m!341573 () Bool)

(assert (=> d!78570 m!341573))

(declare-fun m!341575 () Bool)

(assert (=> bm!14744 m!341575))

(assert (=> b!269430 d!78570))

(declare-fun b!270239 () Bool)

(declare-fun e!167890 () Int)

(declare-fun e!167892 () Int)

(assert (=> b!270239 (= e!167890 e!167892)))

(declare-fun c!51237 () Bool)

(declare-fun call!14750 () Int)

(assert (=> b!270239 (= c!51237 (>= 0 call!14750))))

(declare-fun b!270240 () Bool)

(declare-fun e!167891 () List!3829)

(assert (=> b!270240 (= e!167891 Nil!3819)))

(declare-fun b!270241 () Bool)

(declare-fun e!167893 () List!3829)

(assert (=> b!270241 (= e!167891 e!167893)))

(declare-fun c!51234 () Bool)

(assert (=> b!270241 (= c!51234 (<= 0 0))))

(declare-fun b!270242 () Bool)

(assert (=> b!270242 (= e!167892 0)))

(declare-fun b!270243 () Bool)

(declare-fun e!167894 () Bool)

(declare-fun lt!111236 () List!3829)

(assert (=> b!270243 (= e!167894 (= (size!3046 lt!111236) e!167890))))

(declare-fun c!51236 () Bool)

(assert (=> b!270243 (= c!51236 (<= 0 0))))

(declare-fun b!270244 () Bool)

(assert (=> b!270244 (= e!167890 call!14750)))

(declare-fun b!270245 () Bool)

(assert (=> b!270245 (= e!167893 (drop!215 (t!38155 lt!110670) (- 0 1)))))

(declare-fun d!78572 () Bool)

(assert (=> d!78572 e!167894))

(declare-fun res!123520 () Bool)

(assert (=> d!78572 (=> (not res!123520) (not e!167894))))

(assert (=> d!78572 (= res!123520 (= ((_ map implies) (content!548 lt!111236) (content!548 lt!110670)) ((as const (InoxSet Token!1202)) true)))))

(assert (=> d!78572 (= lt!111236 e!167891)))

(declare-fun c!51235 () Bool)

(assert (=> d!78572 (= c!51235 ((_ is Nil!3819) lt!110670))))

(assert (=> d!78572 (= (drop!215 lt!110670 0) lt!111236)))

(declare-fun b!270246 () Bool)

(assert (=> b!270246 (= e!167892 (- call!14750 0))))

(declare-fun b!270247 () Bool)

(assert (=> b!270247 (= e!167893 lt!110670)))

(declare-fun bm!14745 () Bool)

(assert (=> bm!14745 (= call!14750 (size!3046 lt!110670))))

(assert (= (and d!78572 c!51235) b!270240))

(assert (= (and d!78572 (not c!51235)) b!270241))

(assert (= (and b!270241 c!51234) b!270247))

(assert (= (and b!270241 (not c!51234)) b!270245))

(assert (= (and d!78572 res!123520) b!270243))

(assert (= (and b!270243 c!51236) b!270244))

(assert (= (and b!270243 (not c!51236)) b!270239))

(assert (= (and b!270239 c!51237) b!270242))

(assert (= (and b!270239 (not c!51237)) b!270246))

(assert (= (or b!270244 b!270239 b!270246) bm!14745))

(declare-fun m!341577 () Bool)

(assert (=> b!270243 m!341577))

(declare-fun m!341579 () Bool)

(assert (=> b!270245 m!341579))

(declare-fun m!341581 () Bool)

(assert (=> d!78572 m!341581))

(declare-fun m!341583 () Bool)

(assert (=> d!78572 m!341583))

(assert (=> bm!14745 m!341549))

(assert (=> b!269430 d!78572))

(declare-fun d!78574 () Bool)

(declare-fun e!167895 () Bool)

(assert (=> d!78574 e!167895))

(declare-fun res!123523 () Bool)

(assert (=> d!78574 (=> (not res!123523) (not e!167895))))

(assert (=> d!78574 (= res!123523 (appendAssocInst!62 (c!50914 (charsOf!374 (apply!765 lt!110395 0))) (c!50914 lt!110671)))))

(declare-fun lt!111237 () BalanceConc!2568)

(assert (=> d!78574 (= lt!111237 (BalanceConc!2569 (++!997 (c!50914 (charsOf!374 (apply!765 lt!110395 0))) (c!50914 lt!110671))))))

(assert (=> d!78574 (= (++!996 (charsOf!374 (apply!765 lt!110395 0)) lt!110671) lt!111237)))

(declare-fun b!270249 () Bool)

(declare-fun res!123524 () Bool)

(assert (=> b!270249 (=> (not res!123524) (not e!167895))))

(assert (=> b!270249 (= res!123524 (<= (height!153 (++!997 (c!50914 (charsOf!374 (apply!765 lt!110395 0))) (c!50914 lt!110671))) (+ (max!0 (height!153 (c!50914 (charsOf!374 (apply!765 lt!110395 0)))) (height!153 (c!50914 lt!110671))) 1)))))

(declare-fun b!270251 () Bool)

(assert (=> b!270251 (= e!167895 (= (list!1557 lt!111237) (++!994 (list!1557 (charsOf!374 (apply!765 lt!110395 0))) (list!1557 lt!110671))))))

(declare-fun b!270248 () Bool)

(declare-fun res!123521 () Bool)

(assert (=> b!270248 (=> (not res!123521) (not e!167895))))

(assert (=> b!270248 (= res!123521 (isBalanced!350 (++!997 (c!50914 (charsOf!374 (apply!765 lt!110395 0))) (c!50914 lt!110671))))))

(declare-fun b!270250 () Bool)

(declare-fun res!123522 () Bool)

(assert (=> b!270250 (=> (not res!123522) (not e!167895))))

(assert (=> b!270250 (= res!123522 (>= (height!153 (++!997 (c!50914 (charsOf!374 (apply!765 lt!110395 0))) (c!50914 lt!110671))) (max!0 (height!153 (c!50914 (charsOf!374 (apply!765 lt!110395 0)))) (height!153 (c!50914 lt!110671)))))))

(assert (= (and d!78574 res!123523) b!270248))

(assert (= (and b!270248 res!123521) b!270249))

(assert (= (and b!270249 res!123524) b!270250))

(assert (= (and b!270250 res!123522) b!270251))

(declare-fun m!341619 () Bool)

(assert (=> b!270249 m!341619))

(declare-fun m!341623 () Bool)

(assert (=> b!270249 m!341623))

(assert (=> b!270249 m!341619))

(declare-fun m!341625 () Bool)

(assert (=> b!270249 m!341625))

(declare-fun m!341627 () Bool)

(assert (=> b!270249 m!341627))

(declare-fun m!341631 () Bool)

(assert (=> b!270249 m!341631))

(assert (=> b!270249 m!341625))

(assert (=> b!270249 m!341627))

(assert (=> b!270248 m!341619))

(assert (=> b!270248 m!341619))

(declare-fun m!341637 () Bool)

(assert (=> b!270248 m!341637))

(declare-fun m!341639 () Bool)

(assert (=> b!270251 m!341639))

(assert (=> b!270251 m!339769))

(declare-fun m!341643 () Bool)

(assert (=> b!270251 m!341643))

(assert (=> b!270251 m!339779))

(assert (=> b!270251 m!341643))

(assert (=> b!270251 m!339779))

(declare-fun m!341649 () Bool)

(assert (=> b!270251 m!341649))

(assert (=> b!270250 m!341619))

(assert (=> b!270250 m!341623))

(assert (=> b!270250 m!341619))

(assert (=> b!270250 m!341625))

(assert (=> b!270250 m!341627))

(assert (=> b!270250 m!341631))

(assert (=> b!270250 m!341625))

(assert (=> b!270250 m!341627))

(declare-fun m!341659 () Bool)

(assert (=> d!78574 m!341659))

(assert (=> d!78574 m!341619))

(assert (=> b!269430 d!78574))

(declare-fun b!270253 () Bool)

(declare-fun e!167897 () Int)

(declare-fun e!167899 () Int)

(assert (=> b!270253 (= e!167897 e!167899)))

(declare-fun c!51241 () Bool)

(declare-fun call!14751 () Int)

(assert (=> b!270253 (= c!51241 (>= (+ 0 1) call!14751))))

(declare-fun b!270254 () Bool)

(declare-fun e!167898 () List!3829)

(assert (=> b!270254 (= e!167898 Nil!3819)))

(declare-fun b!270255 () Bool)

(declare-fun e!167900 () List!3829)

(assert (=> b!270255 (= e!167898 e!167900)))

(declare-fun c!51238 () Bool)

(assert (=> b!270255 (= c!51238 (<= (+ 0 1) 0))))

(declare-fun b!270256 () Bool)

(assert (=> b!270256 (= e!167899 0)))

(declare-fun b!270257 () Bool)

(declare-fun e!167901 () Bool)

(declare-fun lt!111239 () List!3829)

(assert (=> b!270257 (= e!167901 (= (size!3046 lt!111239) e!167897))))

(declare-fun c!51240 () Bool)

(assert (=> b!270257 (= c!51240 (<= (+ 0 1) 0))))

(declare-fun b!270258 () Bool)

(assert (=> b!270258 (= e!167897 call!14751)))

(declare-fun b!270259 () Bool)

(assert (=> b!270259 (= e!167900 (drop!215 (t!38155 lt!110669) (- (+ 0 1) 1)))))

(declare-fun d!78578 () Bool)

(assert (=> d!78578 e!167901))

(declare-fun res!123526 () Bool)

(assert (=> d!78578 (=> (not res!123526) (not e!167901))))

(assert (=> d!78578 (= res!123526 (= ((_ map implies) (content!548 lt!111239) (content!548 lt!110669)) ((as const (InoxSet Token!1202)) true)))))

(assert (=> d!78578 (= lt!111239 e!167898)))

(declare-fun c!51239 () Bool)

(assert (=> d!78578 (= c!51239 ((_ is Nil!3819) lt!110669))))

(assert (=> d!78578 (= (drop!215 lt!110669 (+ 0 1)) lt!111239)))

(declare-fun b!270260 () Bool)

(assert (=> b!270260 (= e!167899 (- call!14751 (+ 0 1)))))

(declare-fun b!270261 () Bool)

(assert (=> b!270261 (= e!167900 lt!110669)))

(declare-fun bm!14746 () Bool)

(assert (=> bm!14746 (= call!14751 (size!3046 lt!110669))))

(assert (= (and d!78578 c!51239) b!270254))

(assert (= (and d!78578 (not c!51239)) b!270255))

(assert (= (and b!270255 c!51238) b!270261))

(assert (= (and b!270255 (not c!51238)) b!270259))

(assert (= (and d!78578 res!123526) b!270257))

(assert (= (and b!270257 c!51240) b!270258))

(assert (= (and b!270257 (not c!51240)) b!270253))

(assert (= (and b!270253 c!51241) b!270256))

(assert (= (and b!270253 (not c!51241)) b!270260))

(assert (= (or b!270258 b!270253 b!270260) bm!14746))

(declare-fun m!341665 () Bool)

(assert (=> b!270257 m!341665))

(declare-fun m!341667 () Bool)

(assert (=> b!270259 m!341667))

(declare-fun m!341669 () Bool)

(assert (=> d!78578 m!341669))

(assert (=> d!78578 m!341573))

(assert (=> bm!14746 m!341575))

(assert (=> b!269430 d!78578))

(declare-fun bs!29975 () Bool)

(declare-fun d!78582 () Bool)

(assert (= bs!29975 (and d!78582 d!78038)))

(declare-fun lambda!9138 () Int)

(assert (=> bs!29975 (= lambda!9138 lambda!9100)))

(declare-fun bs!29976 () Bool)

(assert (= bs!29976 (and d!78582 b!269845)))

(assert (=> bs!29976 (not (= lambda!9138 lambda!9125))))

(declare-fun bs!29977 () Bool)

(assert (= bs!29977 (and d!78582 b!269430)))

(assert (=> bs!29977 (not (= lambda!9138 lambda!9113))))

(declare-fun bs!29978 () Bool)

(assert (= bs!29978 (and d!78582 b!269171)))

(assert (=> bs!29978 (not (= lambda!9138 lambda!9094))))

(declare-fun bs!29979 () Bool)

(assert (= bs!29979 (and d!78582 d!78088)))

(assert (=> bs!29979 (not (= lambda!9138 lambda!9111))))

(declare-fun bs!29980 () Bool)

(assert (= bs!29980 (and d!78582 b!269296)))

(assert (=> bs!29980 (not (= lambda!9138 lambda!9101))))

(declare-fun bs!29981 () Bool)

(assert (= bs!29981 (and d!78582 d!78110)))

(assert (=> bs!29981 (= lambda!9138 lambda!9112)))

(declare-fun bs!29982 () Bool)

(assert (= bs!29982 (and d!78582 b!269439)))

(assert (=> bs!29982 (not (= lambda!9138 lambda!9114))))

(declare-fun bs!29983 () Bool)

(assert (= bs!29983 (and d!78582 b!268954)))

(assert (=> bs!29983 (= lambda!9138 lambda!9080)))

(declare-fun bs!29984 () Bool)

(assert (= bs!29984 (and d!78582 d!78346)))

(assert (=> bs!29984 (not (= lambda!9138 lambda!9128))))

(declare-fun bs!29985 () Bool)

(assert (= bs!29985 (and d!78582 b!269986)))

(assert (=> bs!29985 (not (= lambda!9138 lambda!9132))))

(declare-fun bs!29986 () Bool)

(declare-fun b!270278 () Bool)

(assert (= bs!29986 (and b!270278 d!78038)))

(declare-fun lambda!9139 () Int)

(assert (=> bs!29986 (not (= lambda!9139 lambda!9100))))

(declare-fun bs!29987 () Bool)

(assert (= bs!29987 (and b!270278 b!269845)))

(assert (=> bs!29987 (= lambda!9139 lambda!9125)))

(declare-fun bs!29988 () Bool)

(assert (= bs!29988 (and b!270278 d!78582)))

(assert (=> bs!29988 (not (= lambda!9139 lambda!9138))))

(declare-fun bs!29990 () Bool)

(assert (= bs!29990 (and b!270278 b!269430)))

(assert (=> bs!29990 (= lambda!9139 lambda!9113)))

(declare-fun bs!29991 () Bool)

(assert (= bs!29991 (and b!270278 b!269171)))

(assert (=> bs!29991 (= lambda!9139 lambda!9094)))

(declare-fun bs!29992 () Bool)

(assert (= bs!29992 (and b!270278 d!78088)))

(assert (=> bs!29992 (= lambda!9139 lambda!9111)))

(declare-fun bs!29993 () Bool)

(assert (= bs!29993 (and b!270278 b!269296)))

(assert (=> bs!29993 (= lambda!9139 lambda!9101)))

(declare-fun bs!29995 () Bool)

(assert (= bs!29995 (and b!270278 d!78110)))

(assert (=> bs!29995 (not (= lambda!9139 lambda!9112))))

(declare-fun bs!29996 () Bool)

(assert (= bs!29996 (and b!270278 b!269439)))

(assert (=> bs!29996 (= lambda!9139 lambda!9114)))

(declare-fun bs!29997 () Bool)

(assert (= bs!29997 (and b!270278 b!268954)))

(assert (=> bs!29997 (not (= lambda!9139 lambda!9080))))

(declare-fun bs!29998 () Bool)

(assert (= bs!29998 (and b!270278 d!78346)))

(assert (=> bs!29998 (= lambda!9139 lambda!9128)))

(declare-fun bs!29999 () Bool)

(assert (= bs!29999 (and b!270278 b!269986)))

(assert (=> bs!29999 (= lambda!9139 lambda!9132)))

(declare-fun b!270283 () Bool)

(declare-fun e!167916 () Bool)

(assert (=> b!270283 (= e!167916 true)))

(declare-fun b!270282 () Bool)

(declare-fun e!167915 () Bool)

(assert (=> b!270282 (= e!167915 e!167916)))

(declare-fun b!270281 () Bool)

(declare-fun e!167914 () Bool)

(assert (=> b!270281 (= e!167914 e!167915)))

(assert (=> b!270278 e!167914))

(assert (= b!270282 b!270283))

(assert (= b!270281 b!270282))

(assert (= (and b!270278 ((_ is Cons!3820) rules!1920)) b!270281))

(assert (=> b!270283 (< (dynLambda!1953 order!2933 (toValue!1464 (transformation!729 (h!9217 rules!1920)))) (dynLambda!1954 order!2935 lambda!9139))))

(assert (=> b!270283 (< (dynLambda!1955 order!2937 (toChars!1323 (transformation!729 (h!9217 rules!1920)))) (dynLambda!1954 order!2935 lambda!9139))))

(assert (=> b!270278 true))

(declare-fun b!270271 () Bool)

(declare-fun e!167912 () BalanceConc!2568)

(declare-fun call!14754 () BalanceConc!2568)

(assert (=> b!270271 (= e!167912 call!14754)))

(declare-fun b!270272 () Bool)

(declare-fun e!167911 () BalanceConc!2568)

(assert (=> b!270272 (= e!167911 (BalanceConc!2569 Empty!1280))))

(declare-fun call!14755 () Token!1202)

(declare-fun call!14753 () BalanceConc!2568)

(declare-fun bm!14748 () Bool)

(declare-fun call!14756 () Token!1202)

(declare-fun c!51247 () Bool)

(assert (=> bm!14748 (= call!14753 (charsOf!374 (ite c!51247 call!14755 call!14756)))))

(declare-fun b!270273 () Bool)

(declare-fun e!167908 () Bool)

(assert (=> b!270273 (= e!167908 (<= (+ 0 1) (size!3041 lt!110395)))))

(declare-fun b!270274 () Bool)

(declare-fun e!167909 () Bool)

(declare-fun lt!111250 () Option!809)

(assert (=> b!270274 (= e!167909 (= (_1!2359 (v!14677 lt!111250)) (apply!765 lt!110395 (+ 0 1))))))

(declare-fun b!270275 () Bool)

(declare-fun e!167910 () BalanceConc!2568)

(declare-fun lt!111254 () BalanceConc!2568)

(assert (=> b!270275 (= e!167910 (++!996 call!14754 lt!111254))))

(declare-fun b!270276 () Bool)

(declare-fun c!51248 () Bool)

(declare-fun e!167907 () Bool)

(assert (=> b!270276 (= c!51248 e!167907)))

(declare-fun res!123530 () Bool)

(assert (=> b!270276 (=> (not res!123530) (not e!167907))))

(assert (=> b!270276 (= res!123530 ((_ is Some!808) lt!111250))))

(assert (=> b!270276 (= e!167912 e!167910)))

(declare-fun bm!14749 () Bool)

(assert (=> bm!14749 (= call!14755 (apply!765 lt!110395 (+ 0 1)))))

(declare-fun lt!111248 () BalanceConc!2568)

(assert (=> d!78582 (= (list!1557 lt!111248) (printWithSeparatorTokenWhenNeededList!298 thiss!17480 rules!1920 (dropList!162 lt!110395 (+ 0 1)) separatorToken!170))))

(assert (=> d!78582 (= lt!111248 e!167911)))

(declare-fun c!51246 () Bool)

(assert (=> d!78582 (= c!51246 (>= (+ 0 1) (size!3041 lt!110395)))))

(declare-fun lt!111247 () Unit!4874)

(assert (=> d!78582 (= lt!111247 (lemmaContentSubsetPreservesForall!106 (list!1560 lt!110395) (dropList!162 lt!110395 (+ 0 1)) lambda!9138))))

(assert (=> d!78582 e!167908))

(declare-fun res!123528 () Bool)

(assert (=> d!78582 (=> (not res!123528) (not e!167908))))

(assert (=> d!78582 (= res!123528 (>= (+ 0 1) 0))))

(assert (=> d!78582 (= (printWithSeparatorTokenWhenNeededRec!290 thiss!17480 rules!1920 lt!110395 separatorToken!170 (+ 0 1)) lt!111248)))

(declare-fun b!270277 () Bool)

(assert (=> b!270277 (= e!167907 (not (= (_1!2359 (v!14677 lt!111250)) call!14755)))))

(assert (=> b!270278 (= e!167911 e!167912)))

(declare-fun lt!111253 () List!3829)

(assert (=> b!270278 (= lt!111253 (list!1560 lt!110395))))

(declare-fun lt!111246 () Unit!4874)

(assert (=> b!270278 (= lt!111246 (lemmaDropApply!202 lt!111253 (+ 0 1)))))

(assert (=> b!270278 (= (head!886 (drop!215 lt!111253 (+ 0 1))) (apply!766 lt!111253 (+ 0 1)))))

(declare-fun lt!111249 () Unit!4874)

(assert (=> b!270278 (= lt!111249 lt!111246)))

(declare-fun lt!111252 () List!3829)

(assert (=> b!270278 (= lt!111252 (list!1560 lt!110395))))

(declare-fun lt!111245 () Unit!4874)

(assert (=> b!270278 (= lt!111245 (lemmaDropTail!194 lt!111252 (+ 0 1)))))

(assert (=> b!270278 (= (tail!476 (drop!215 lt!111252 (+ 0 1))) (drop!215 lt!111252 (+ 0 1 1)))))

(declare-fun lt!111244 () Unit!4874)

(assert (=> b!270278 (= lt!111244 lt!111245)))

(declare-fun lt!111242 () Unit!4874)

(assert (=> b!270278 (= lt!111242 (forallContained!284 (list!1560 lt!110395) lambda!9139 (apply!765 lt!110395 (+ 0 1))))))

(assert (=> b!270278 (= lt!111254 (printWithSeparatorTokenWhenNeededRec!290 thiss!17480 rules!1920 lt!110395 separatorToken!170 (+ 0 1 1)))))

(assert (=> b!270278 (= lt!111250 (maxPrefixZipperSequence!296 thiss!17480 rules!1920 (++!996 (charsOf!374 (apply!765 lt!110395 (+ 0 1))) lt!111254)))))

(declare-fun res!123529 () Bool)

(assert (=> b!270278 (= res!123529 ((_ is Some!808) lt!111250))))

(assert (=> b!270278 (=> (not res!123529) (not e!167909))))

(assert (=> b!270278 (= c!51247 e!167909)))

(declare-fun bm!14750 () Bool)

(declare-fun call!14757 () BalanceConc!2568)

(assert (=> bm!14750 (= call!14757 (charsOf!374 (ite c!51248 separatorToken!170 call!14756)))))

(declare-fun bm!14751 () Bool)

(assert (=> bm!14751 (= call!14756 call!14755)))

(declare-fun bm!14752 () Bool)

(assert (=> bm!14752 (= call!14754 (++!996 call!14753 (ite c!51247 lt!111254 call!14757)))))

(declare-fun b!270279 () Bool)

(assert (=> b!270279 (= e!167910 (BalanceConc!2569 Empty!1280))))

(assert (=> b!270279 (= (print!340 thiss!17480 (singletonSeq!275 call!14756)) (printTailRec!303 thiss!17480 (singletonSeq!275 call!14756) 0 (BalanceConc!2569 Empty!1280)))))

(declare-fun lt!111251 () Unit!4874)

(declare-fun Unit!4912 () Unit!4874)

(assert (=> b!270279 (= lt!111251 Unit!4912)))

(declare-fun lt!111241 () Unit!4874)

(assert (=> b!270279 (= lt!111241 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!110 thiss!17480 rules!1920 (list!1557 call!14757) (list!1557 lt!111254)))))

(assert (=> b!270279 false))

(declare-fun lt!111243 () Unit!4874)

(declare-fun Unit!4913 () Unit!4874)

(assert (=> b!270279 (= lt!111243 Unit!4913)))

(assert (= (and d!78582 res!123528) b!270273))

(assert (= (and d!78582 c!51246) b!270272))

(assert (= (and d!78582 (not c!51246)) b!270278))

(assert (= (and b!270278 res!123529) b!270274))

(assert (= (and b!270278 c!51247) b!270271))

(assert (= (and b!270278 (not c!51247)) b!270276))

(assert (= (and b!270276 res!123530) b!270277))

(assert (= (and b!270276 c!51248) b!270275))

(assert (= (and b!270276 (not c!51248)) b!270279))

(assert (= (or b!270275 b!270279) bm!14751))

(assert (= (or b!270275 b!270279) bm!14750))

(assert (= (or b!270271 b!270277 bm!14751) bm!14749))

(assert (= (or b!270271 b!270275) bm!14748))

(assert (= (or b!270271 b!270275) bm!14752))

(declare-fun m!341695 () Bool)

(assert (=> bm!14752 m!341695))

(declare-fun m!341697 () Bool)

(assert (=> b!270278 m!341697))

(declare-fun m!341699 () Bool)

(assert (=> b!270278 m!341699))

(declare-fun m!341701 () Bool)

(assert (=> b!270278 m!341701))

(declare-fun m!341705 () Bool)

(assert (=> b!270278 m!341705))

(assert (=> b!270278 m!339661))

(declare-fun m!341711 () Bool)

(assert (=> b!270278 m!341711))

(declare-fun m!341715 () Bool)

(assert (=> b!270278 m!341715))

(declare-fun m!341719 () Bool)

(assert (=> b!270278 m!341719))

(declare-fun m!341721 () Bool)

(assert (=> b!270278 m!341721))

(assert (=> b!270278 m!341711))

(assert (=> b!270278 m!341701))

(declare-fun m!341723 () Bool)

(assert (=> b!270278 m!341723))

(declare-fun m!341725 () Bool)

(assert (=> b!270278 m!341725))

(assert (=> b!270278 m!339661))

(declare-fun m!341727 () Bool)

(assert (=> b!270278 m!341727))

(declare-fun m!341729 () Bool)

(assert (=> b!270278 m!341729))

(assert (=> b!270278 m!341711))

(declare-fun m!341731 () Bool)

(assert (=> b!270278 m!341731))

(assert (=> b!270278 m!341723))

(assert (=> b!270278 m!341731))

(assert (=> b!270278 m!341727))

(declare-fun m!341733 () Bool)

(assert (=> b!270278 m!341733))

(declare-fun m!341735 () Bool)

(assert (=> b!270279 m!341735))

(declare-fun m!341737 () Bool)

(assert (=> b!270279 m!341737))

(declare-fun m!341739 () Bool)

(assert (=> b!270279 m!341739))

(assert (=> b!270279 m!341735))

(declare-fun m!341741 () Bool)

(assert (=> b!270279 m!341741))

(declare-fun m!341743 () Bool)

(assert (=> b!270279 m!341743))

(assert (=> b!270279 m!341737))

(declare-fun m!341747 () Bool)

(assert (=> b!270279 m!341747))

(assert (=> b!270279 m!341737))

(assert (=> b!270279 m!341741))

(declare-fun m!341755 () Bool)

(assert (=> d!78582 m!341755))

(declare-fun m!341759 () Bool)

(assert (=> d!78582 m!341759))

(assert (=> d!78582 m!339661))

(assert (=> d!78582 m!341755))

(declare-fun m!341761 () Bool)

(assert (=> d!78582 m!341761))

(assert (=> d!78582 m!339661))

(declare-fun m!341763 () Bool)

(assert (=> d!78582 m!341763))

(assert (=> d!78582 m!339793))

(assert (=> d!78582 m!341755))

(assert (=> b!270274 m!341711))

(assert (=> bm!14749 m!341711))

(assert (=> b!270273 m!339793))

(declare-fun m!341765 () Bool)

(assert (=> b!270275 m!341765))

(declare-fun m!341767 () Bool)

(assert (=> bm!14750 m!341767))

(declare-fun m!341769 () Bool)

(assert (=> bm!14748 m!341769))

(assert (=> b!269430 d!78582))

(assert (=> b!269430 d!78412))

(declare-fun d!78596 () Bool)

(assert (=> d!78596 (= (tail!476 (drop!215 lt!110669 0)) (drop!215 lt!110669 (+ 0 1)))))

(declare-fun lt!111260 () Unit!4874)

(assert (=> d!78596 (= lt!111260 (choose!2450 lt!110669 0))))

(declare-fun e!167929 () Bool)

(assert (=> d!78596 e!167929))

(declare-fun res!123534 () Bool)

(assert (=> d!78596 (=> (not res!123534) (not e!167929))))

(assert (=> d!78596 (= res!123534 (>= 0 0))))

(assert (=> d!78596 (= (lemmaDropTail!194 lt!110669 0) lt!111260)))

(declare-fun b!270304 () Bool)

(assert (=> b!270304 (= e!167929 (< 0 (size!3046 lt!110669)))))

(assert (= (and d!78596 res!123534) b!270304))

(assert (=> d!78596 m!339749))

(assert (=> d!78596 m!339749))

(assert (=> d!78596 m!339751))

(assert (=> d!78596 m!339757))

(declare-fun m!341773 () Bool)

(assert (=> d!78596 m!341773))

(assert (=> b!270304 m!341575))

(assert (=> b!269430 d!78596))

(declare-fun b!270450 () Bool)

(declare-fun e!168018 () Bool)

(declare-fun e!168020 () Bool)

(assert (=> b!270450 (= e!168018 e!168020)))

(declare-fun res!123614 () Bool)

(assert (=> b!270450 (=> (not res!123614) (not e!168020))))

(declare-fun lt!111366 () Option!809)

(declare-fun get!1266 (Option!809) tuple2!4286)

(declare-fun maxPrefixZipper!111 (LexerInterface!615 List!3830 List!3827) Option!808)

(assert (=> b!270450 (= res!123614 (= (_1!2359 (get!1266 lt!111366)) (_1!2358 (get!1263 (maxPrefixZipper!111 thiss!17480 rules!1920 (list!1557 (++!996 (charsOf!374 (apply!765 lt!110395 0)) lt!110671)))))))))

(declare-fun b!270451 () Bool)

(declare-fun e!168015 () Option!809)

(declare-fun lt!111362 () Option!809)

(declare-fun lt!111365 () Option!809)

(assert (=> b!270451 (= e!168015 (ite (and ((_ is None!808) lt!111362) ((_ is None!808) lt!111365)) None!808 (ite ((_ is None!808) lt!111365) lt!111362 (ite ((_ is None!808) lt!111362) lt!111365 (ite (>= (size!3037 (_1!2359 (v!14677 lt!111362))) (size!3037 (_1!2359 (v!14677 lt!111365)))) lt!111362 lt!111365)))))))

(declare-fun call!14769 () Option!809)

(assert (=> b!270451 (= lt!111362 call!14769)))

(assert (=> b!270451 (= lt!111365 (maxPrefixZipperSequence!296 thiss!17480 (t!38156 rules!1920) (++!996 (charsOf!374 (apply!765 lt!110395 0)) lt!110671)))))

(declare-fun b!270452 () Bool)

(declare-fun e!168017 () Bool)

(assert (=> b!270452 (= e!168017 (= (list!1557 (_2!2359 (get!1266 lt!111366))) (_2!2358 (get!1263 (maxPrefix!333 thiss!17480 rules!1920 (list!1557 (++!996 (charsOf!374 (apply!765 lt!110395 0)) lt!110671)))))))))

(declare-fun b!270453 () Bool)

(assert (=> b!270453 (= e!168015 call!14769)))

(declare-fun b!270454 () Bool)

(assert (=> b!270454 (= e!168020 (= (list!1557 (_2!2359 (get!1266 lt!111366))) (_2!2358 (get!1263 (maxPrefixZipper!111 thiss!17480 rules!1920 (list!1557 (++!996 (charsOf!374 (apply!765 lt!110395 0)) lt!110671)))))))))

(declare-fun b!270455 () Bool)

(declare-fun e!168019 () Bool)

(declare-fun e!168016 () Bool)

(assert (=> b!270455 (= e!168019 e!168016)))

(declare-fun res!123617 () Bool)

(assert (=> b!270455 (=> res!123617 e!168016)))

(declare-fun isDefined!654 (Option!809) Bool)

(assert (=> b!270455 (= res!123617 (not (isDefined!654 lt!111366)))))

(declare-fun b!270456 () Bool)

(assert (=> b!270456 (= e!168016 e!168017)))

(declare-fun res!123612 () Bool)

(assert (=> b!270456 (=> (not res!123612) (not e!168017))))

(assert (=> b!270456 (= res!123612 (= (_1!2359 (get!1266 lt!111366)) (_1!2358 (get!1263 (maxPrefix!333 thiss!17480 rules!1920 (list!1557 (++!996 (charsOf!374 (apply!765 lt!110395 0)) lt!110671)))))))))

(declare-fun b!270457 () Bool)

(declare-fun res!123615 () Bool)

(assert (=> b!270457 (=> (not res!123615) (not e!168019))))

(assert (=> b!270457 (= res!123615 e!168018)))

(declare-fun res!123613 () Bool)

(assert (=> b!270457 (=> res!123613 e!168018)))

(assert (=> b!270457 (= res!123613 (not (isDefined!654 lt!111366)))))

(declare-fun d!78602 () Bool)

(assert (=> d!78602 e!168019))

(declare-fun res!123616 () Bool)

(assert (=> d!78602 (=> (not res!123616) (not e!168019))))

(assert (=> d!78602 (= res!123616 (= (isDefined!654 lt!111366) (isDefined!651 (maxPrefixZipper!111 thiss!17480 rules!1920 (list!1557 (++!996 (charsOf!374 (apply!765 lt!110395 0)) lt!110671))))))))

(assert (=> d!78602 (= lt!111366 e!168015)))

(declare-fun c!51289 () Bool)

(assert (=> d!78602 (= c!51289 (and ((_ is Cons!3820) rules!1920) ((_ is Nil!3820) (t!38156 rules!1920))))))

(declare-fun lt!111367 () Unit!4874)

(declare-fun lt!111363 () Unit!4874)

(assert (=> d!78602 (= lt!111367 lt!111363)))

(declare-fun lt!111364 () List!3827)

(declare-fun lt!111361 () List!3827)

(assert (=> d!78602 (isPrefix!397 lt!111364 lt!111361)))

(assert (=> d!78602 (= lt!111363 (lemmaIsPrefixRefl!207 lt!111364 lt!111361))))

(assert (=> d!78602 (= lt!111361 (list!1557 (++!996 (charsOf!374 (apply!765 lt!110395 0)) lt!110671)))))

(assert (=> d!78602 (= lt!111364 (list!1557 (++!996 (charsOf!374 (apply!765 lt!110395 0)) lt!110671)))))

(assert (=> d!78602 (rulesValidInductive!202 thiss!17480 rules!1920)))

(assert (=> d!78602 (= (maxPrefixZipperSequence!296 thiss!17480 rules!1920 (++!996 (charsOf!374 (apply!765 lt!110395 0)) lt!110671)) lt!111366)))

(declare-fun bm!14764 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!112 (LexerInterface!615 Rule!1258 BalanceConc!2568) Option!809)

(assert (=> bm!14764 (= call!14769 (maxPrefixOneRuleZipperSequence!112 thiss!17480 (h!9217 rules!1920) (++!996 (charsOf!374 (apply!765 lt!110395 0)) lt!110671)))))

(assert (= (and d!78602 c!51289) b!270453))

(assert (= (and d!78602 (not c!51289)) b!270451))

(assert (= (or b!270453 b!270451) bm!14764))

(assert (= (and d!78602 res!123616) b!270457))

(assert (= (and b!270457 (not res!123613)) b!270450))

(assert (= (and b!270450 res!123614) b!270454))

(assert (= (and b!270457 res!123615) b!270455))

(assert (= (and b!270455 (not res!123617)) b!270456))

(assert (= (and b!270456 res!123612) b!270452))

(assert (=> bm!14764 m!339765))

(declare-fun m!342197 () Bool)

(assert (=> bm!14764 m!342197))

(declare-fun m!342199 () Bool)

(assert (=> b!270450 m!342199))

(assert (=> b!270450 m!339765))

(declare-fun m!342201 () Bool)

(assert (=> b!270450 m!342201))

(assert (=> b!270450 m!342201))

(declare-fun m!342203 () Bool)

(assert (=> b!270450 m!342203))

(assert (=> b!270450 m!342203))

(declare-fun m!342205 () Bool)

(assert (=> b!270450 m!342205))

(declare-fun m!342207 () Bool)

(assert (=> b!270457 m!342207))

(assert (=> b!270456 m!342199))

(assert (=> b!270456 m!339765))

(assert (=> b!270456 m!342201))

(assert (=> b!270456 m!342201))

(declare-fun m!342209 () Bool)

(assert (=> b!270456 m!342209))

(assert (=> b!270456 m!342209))

(declare-fun m!342211 () Bool)

(assert (=> b!270456 m!342211))

(assert (=> b!270455 m!342207))

(assert (=> d!78602 m!342201))

(assert (=> d!78602 m!342203))

(assert (=> d!78602 m!342203))

(declare-fun m!342221 () Bool)

(assert (=> d!78602 m!342221))

(declare-fun m!342225 () Bool)

(assert (=> d!78602 m!342225))

(assert (=> d!78602 m!342207))

(assert (=> d!78602 m!340485))

(declare-fun m!342229 () Bool)

(assert (=> d!78602 m!342229))

(assert (=> d!78602 m!339765))

(assert (=> d!78602 m!342201))

(assert (=> b!270452 m!342201))

(assert (=> b!270452 m!342209))

(assert (=> b!270452 m!342199))

(assert (=> b!270452 m!342209))

(assert (=> b!270452 m!342211))

(declare-fun m!342241 () Bool)

(assert (=> b!270452 m!342241))

(assert (=> b!270452 m!339765))

(assert (=> b!270452 m!342201))

(assert (=> b!270451 m!339765))

(declare-fun m!342243 () Bool)

(assert (=> b!270451 m!342243))

(assert (=> b!270454 m!342199))

(assert (=> b!270454 m!342203))

(assert (=> b!270454 m!342205))

(assert (=> b!270454 m!342201))

(assert (=> b!270454 m!342203))

(assert (=> b!270454 m!342241))

(assert (=> b!270454 m!339765))

(assert (=> b!270454 m!342201))

(assert (=> b!269430 d!78602))

(declare-fun d!78714 () Bool)

(declare-fun lt!111370 () BalanceConc!2568)

(assert (=> d!78714 (= (list!1557 lt!111370) (originalCharacters!772 (apply!765 lt!110395 0)))))

(assert (=> d!78714 (= lt!111370 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (apply!765 lt!110395 0)))) (value!25092 (apply!765 lt!110395 0))))))

(assert (=> d!78714 (= (charsOf!374 (apply!765 lt!110395 0)) lt!111370)))

(declare-fun b_lambda!8573 () Bool)

(assert (=> (not b_lambda!8573) (not d!78714)))

(declare-fun t!38332 () Bool)

(declare-fun tb!15225 () Bool)

(assert (=> (and b!269519 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))) (toChars!1323 (transformation!729 (rule!1314 (apply!765 lt!110395 0))))) t!38332) tb!15225))

(declare-fun b!270466 () Bool)

(declare-fun e!168023 () Bool)

(declare-fun tp!102418 () Bool)

(assert (=> b!270466 (= e!168023 (and (inv!4725 (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (apply!765 lt!110395 0)))) (value!25092 (apply!765 lt!110395 0))))) tp!102418))))

(declare-fun result!18828 () Bool)

(assert (=> tb!15225 (= result!18828 (and (inv!4726 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (apply!765 lt!110395 0)))) (value!25092 (apply!765 lt!110395 0)))) e!168023))))

(assert (= tb!15225 b!270466))

(declare-fun m!342251 () Bool)

(assert (=> b!270466 m!342251))

(declare-fun m!342255 () Bool)

(assert (=> tb!15225 m!342255))

(assert (=> d!78714 t!38332))

(declare-fun b_and!21535 () Bool)

(assert (= b_and!21485 (and (=> t!38332 result!18828) b_and!21535)))

(declare-fun t!38334 () Bool)

(declare-fun tb!15227 () Bool)

(assert (=> (and b!269534 (= (toChars!1323 (transformation!729 (h!9217 (t!38156 rules!1920)))) (toChars!1323 (transformation!729 (rule!1314 (apply!765 lt!110395 0))))) t!38334) tb!15227))

(declare-fun result!18830 () Bool)

(assert (= result!18830 result!18828))

(assert (=> d!78714 t!38334))

(declare-fun b_and!21537 () Bool)

(assert (= b_and!21493 (and (=> t!38334 result!18830) b_and!21537)))

(declare-fun t!38336 () Bool)

(declare-fun tb!15229 () Bool)

(assert (=> (and b!268967 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (toChars!1323 (transformation!729 (rule!1314 (apply!765 lt!110395 0))))) t!38336) tb!15229))

(declare-fun result!18832 () Bool)

(assert (= result!18832 result!18828))

(assert (=> d!78714 t!38336))

(declare-fun b_and!21539 () Bool)

(assert (= b_and!21491 (and (=> t!38336 result!18832) b_and!21539)))

(declare-fun t!38338 () Bool)

(declare-fun tb!15231 () Bool)

(assert (=> (and b!268959 (= (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (toChars!1323 (transformation!729 (rule!1314 (apply!765 lt!110395 0))))) t!38338) tb!15231))

(declare-fun result!18834 () Bool)

(assert (= result!18834 result!18828))

(assert (=> d!78714 t!38338))

(declare-fun b_and!21541 () Bool)

(assert (= b_and!21487 (and (=> t!38338 result!18834) b_and!21541)))

(declare-fun t!38340 () Bool)

(declare-fun tb!15233 () Bool)

(assert (=> (and b!268971 (= (toChars!1323 (transformation!729 (h!9217 rules!1920))) (toChars!1323 (transformation!729 (rule!1314 (apply!765 lt!110395 0))))) t!38340) tb!15233))

(declare-fun result!18836 () Bool)

(assert (= result!18836 result!18828))

(assert (=> d!78714 t!38340))

(declare-fun b_and!21543 () Bool)

(assert (= b_and!21489 (and (=> t!38340 result!18836) b_and!21543)))

(declare-fun m!342277 () Bool)

(assert (=> d!78714 m!342277))

(declare-fun m!342279 () Bool)

(assert (=> d!78714 m!342279))

(assert (=> b!269430 d!78714))

(declare-fun d!78718 () Bool)

(declare-fun lt!111372 () Int)

(assert (=> d!78718 (>= lt!111372 0)))

(declare-fun e!168024 () Int)

(assert (=> d!78718 (= lt!111372 e!168024)))

(declare-fun c!51290 () Bool)

(assert (=> d!78718 (= c!51290 ((_ is Nil!3817) lt!110624))))

(assert (=> d!78718 (= (size!3043 lt!110624) lt!111372)))

(declare-fun b!270467 () Bool)

(assert (=> b!270467 (= e!168024 0)))

(declare-fun b!270468 () Bool)

(assert (=> b!270468 (= e!168024 (+ 1 (size!3043 (t!38153 lt!110624))))))

(assert (= (and d!78718 c!51290) b!270467))

(assert (= (and d!78718 (not c!51290)) b!270468))

(declare-fun m!342281 () Bool)

(assert (=> b!270468 m!342281))

(assert (=> b!269330 d!78718))

(assert (=> b!269330 d!78222))

(assert (=> b!269330 d!78540))

(assert (=> b!269418 d!78312))

(declare-fun d!78722 () Bool)

(assert (=> d!78722 (= (list!1557 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (value!25092 separatorToken!170))) (list!1561 (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (value!25092 separatorToken!170)))))))

(declare-fun bs!30042 () Bool)

(assert (= bs!30042 d!78722))

(declare-fun m!342285 () Bool)

(assert (=> bs!30042 m!342285))

(assert (=> b!269421 d!78722))

(declare-fun b!270470 () Bool)

(declare-fun e!168027 () Bool)

(assert (=> b!270470 (= e!168027 (inv!17 (value!25092 (h!9216 (t!38155 tokens!465)))))))

(declare-fun b!270471 () Bool)

(declare-fun e!168028 () Bool)

(assert (=> b!270471 (= e!168028 (inv!15 (value!25092 (h!9216 (t!38155 tokens!465)))))))

(declare-fun b!270472 () Bool)

(declare-fun e!168026 () Bool)

(assert (=> b!270472 (= e!168026 e!168027)))

(declare-fun c!51291 () Bool)

(assert (=> b!270472 (= c!51291 ((_ is IntegerValue!2254) (value!25092 (h!9216 (t!38155 tokens!465)))))))

(declare-fun d!78724 () Bool)

(declare-fun c!51292 () Bool)

(assert (=> d!78724 (= c!51292 ((_ is IntegerValue!2253) (value!25092 (h!9216 (t!38155 tokens!465)))))))

(assert (=> d!78724 (= (inv!21 (value!25092 (h!9216 (t!38155 tokens!465)))) e!168026)))

(declare-fun b!270473 () Bool)

(assert (=> b!270473 (= e!168026 (inv!16 (value!25092 (h!9216 (t!38155 tokens!465)))))))

(declare-fun b!270474 () Bool)

(declare-fun res!123627 () Bool)

(assert (=> b!270474 (=> res!123627 e!168028)))

(assert (=> b!270474 (= res!123627 (not ((_ is IntegerValue!2255) (value!25092 (h!9216 (t!38155 tokens!465))))))))

(assert (=> b!270474 (= e!168027 e!168028)))

(assert (= (and d!78724 c!51292) b!270473))

(assert (= (and d!78724 (not c!51292)) b!270472))

(assert (= (and b!270472 c!51291) b!270470))

(assert (= (and b!270472 (not c!51291)) b!270474))

(assert (= (and b!270474 (not res!123627)) b!270471))

(declare-fun m!342291 () Bool)

(assert (=> b!270470 m!342291))

(declare-fun m!342293 () Bool)

(assert (=> b!270471 m!342293))

(declare-fun m!342297 () Bool)

(assert (=> b!270473 m!342297))

(assert (=> b!269517 d!78724))

(declare-fun d!78728 () Bool)

(assert (=> d!78728 (= (list!1560 lt!110633) (list!1563 (c!50916 lt!110633)))))

(declare-fun bs!30043 () Bool)

(assert (= bs!30043 d!78728))

(declare-fun m!342303 () Bool)

(assert (=> bs!30043 m!342303))

(assert (=> d!78096 d!78728))

(declare-fun d!78732 () Bool)

(declare-fun e!168045 () Bool)

(assert (=> d!78732 e!168045))

(declare-fun res!123633 () Bool)

(assert (=> d!78732 (=> (not res!123633) (not e!168045))))

(declare-fun lt!111385 () BalanceConc!2570)

(assert (=> d!78732 (= res!123633 (= (list!1560 lt!111385) (Cons!3819 (h!9216 tokens!465) Nil!3819)))))

(declare-fun choose!2456 (Token!1202) BalanceConc!2570)

(assert (=> d!78732 (= lt!111385 (choose!2456 (h!9216 tokens!465)))))

(assert (=> d!78732 (= (singleton!111 (h!9216 tokens!465)) lt!111385)))

(declare-fun b!270500 () Bool)

(assert (=> b!270500 (= e!168045 (isBalanced!348 (c!50916 lt!111385)))))

(assert (= (and d!78732 res!123633) b!270500))

(declare-fun m!342339 () Bool)

(assert (=> d!78732 m!342339))

(declare-fun m!342341 () Bool)

(assert (=> d!78732 m!342341))

(declare-fun m!342343 () Bool)

(assert (=> b!270500 m!342343))

(assert (=> d!78096 d!78732))

(declare-fun bs!30057 () Bool)

(declare-fun d!78742 () Bool)

(assert (= bs!30057 (and d!78742 d!78388)))

(declare-fun lambda!9146 () Int)

(assert (=> bs!30057 (= (= (toValue!1464 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (toValue!1464 (transformation!729 (rule!1314 separatorToken!170)))) (= lambda!9146 lambda!9131))))

(assert (=> d!78742 true))

(assert (=> d!78742 (< (dynLambda!1953 order!2933 (toValue!1464 (transformation!729 (rule!1314 (h!9216 tokens!465))))) (dynLambda!1963 order!2945 lambda!9146))))

(assert (=> d!78742 (= (equivClasses!240 (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (toValue!1464 (transformation!729 (rule!1314 (h!9216 tokens!465))))) (Forall2!148 lambda!9146))))

(declare-fun bs!30058 () Bool)

(assert (= bs!30058 d!78742))

(declare-fun m!342345 () Bool)

(assert (=> bs!30058 m!342345))

(assert (=> b!269461 d!78742))

(declare-fun d!78744 () Bool)

(declare-fun e!168046 () Bool)

(assert (=> d!78744 e!168046))

(declare-fun res!123634 () Bool)

(assert (=> d!78744 (=> (not res!123634) (not e!168046))))

(declare-fun lt!111386 () BalanceConc!2570)

(assert (=> d!78744 (= res!123634 (= (list!1560 lt!111386) (Cons!3819 call!14706 Nil!3819)))))

(assert (=> d!78744 (= lt!111386 (singleton!111 call!14706))))

(assert (=> d!78744 (= (singletonSeq!275 call!14706) lt!111386)))

(declare-fun b!270501 () Bool)

(assert (=> b!270501 (= e!168046 (isBalanced!348 (c!50916 lt!111386)))))

(assert (= (and d!78744 res!123634) b!270501))

(declare-fun m!342347 () Bool)

(assert (=> d!78744 m!342347))

(declare-fun m!342349 () Bool)

(assert (=> d!78744 m!342349))

(declare-fun m!342351 () Bool)

(assert (=> b!270501 m!342351))

(assert (=> b!269431 d!78744))

(declare-fun e!168047 () Bool)

(declare-fun lt!111397 () Token!1202)

(declare-fun b!270503 () Bool)

(assert (=> b!270503 (= e!168047 (= (rule!1314 lt!111397) (get!1265 (getRuleFromTag!124 thiss!17480 rules!1920 (tag!939 (rule!1314 lt!111397))))))))

(declare-fun b!270505 () Bool)

(declare-fun e!168048 () Unit!4874)

(declare-fun Unit!4914 () Unit!4874)

(assert (=> b!270505 (= e!168048 Unit!4914)))

(declare-fun d!78746 () Bool)

(assert (=> d!78746 (isDefined!651 (maxPrefix!333 thiss!17480 rules!1920 (++!994 (list!1557 call!14707) (list!1557 lt!110671))))))

(declare-fun lt!111393 () Unit!4874)

(assert (=> d!78746 (= lt!111393 e!168048)))

(declare-fun c!51301 () Bool)

(assert (=> d!78746 (= c!51301 (isEmpty!2425 (maxPrefix!333 thiss!17480 rules!1920 (++!994 (list!1557 call!14707) (list!1557 lt!110671)))))))

(declare-fun lt!111396 () Unit!4874)

(declare-fun lt!111391 () Unit!4874)

(assert (=> d!78746 (= lt!111396 lt!111391)))

(assert (=> d!78746 e!168047))

(declare-fun res!123635 () Bool)

(assert (=> d!78746 (=> (not res!123635) (not e!168047))))

(assert (=> d!78746 (= res!123635 (isDefined!653 (getRuleFromTag!124 thiss!17480 rules!1920 (tag!939 (rule!1314 lt!111397)))))))

(assert (=> d!78746 (= lt!111391 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!124 thiss!17480 rules!1920 (list!1557 call!14707) lt!111397))))

(declare-fun lt!111387 () Unit!4874)

(declare-fun lt!111400 () Unit!4874)

(assert (=> d!78746 (= lt!111387 lt!111400)))

(declare-fun lt!111398 () List!3827)

(assert (=> d!78746 (isPrefix!397 lt!111398 (++!994 (list!1557 call!14707) (list!1557 lt!110671)))))

(assert (=> d!78746 (= lt!111400 (lemmaPrefixStaysPrefixWhenAddingToSuffix!56 lt!111398 (list!1557 call!14707) (list!1557 lt!110671)))))

(assert (=> d!78746 (= lt!111398 (list!1557 (charsOf!374 lt!111397)))))

(declare-fun lt!111399 () Unit!4874)

(declare-fun lt!111402 () Unit!4874)

(assert (=> d!78746 (= lt!111399 lt!111402)))

(declare-fun lt!111392 () List!3827)

(declare-fun lt!111403 () List!3827)

(assert (=> d!78746 (isPrefix!397 lt!111392 (++!994 lt!111392 lt!111403))))

(assert (=> d!78746 (= lt!111402 (lemmaConcatTwoListThenFirstIsPrefix!292 lt!111392 lt!111403))))

(assert (=> d!78746 (= lt!111403 (_2!2358 (get!1263 (maxPrefix!333 thiss!17480 rules!1920 (list!1557 call!14707)))))))

(assert (=> d!78746 (= lt!111392 (list!1557 (charsOf!374 lt!111397)))))

(assert (=> d!78746 (= lt!111397 (head!886 (list!1560 (_1!2353 (lex!407 thiss!17480 rules!1920 (seqFromList!825 (list!1557 call!14707)))))))))

(assert (=> d!78746 (not (isEmpty!2413 rules!1920))))

(assert (=> d!78746 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!110 thiss!17480 rules!1920 (list!1557 call!14707) (list!1557 lt!110671)) lt!111393)))

(declare-fun b!270504 () Bool)

(declare-fun Unit!4915 () Unit!4874)

(assert (=> b!270504 (= e!168048 Unit!4915)))

(declare-fun lt!111388 () List!3827)

(assert (=> b!270504 (= lt!111388 (++!994 (list!1557 call!14707) (list!1557 lt!110671)))))

(declare-fun lt!111390 () Unit!4874)

(assert (=> b!270504 (= lt!111390 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!56 thiss!17480 (rule!1314 lt!111397) rules!1920 lt!111388))))

(assert (=> b!270504 (isEmpty!2425 (maxPrefixOneRule!141 thiss!17480 (rule!1314 lt!111397) lt!111388))))

(declare-fun lt!111401 () Unit!4874)

(assert (=> b!270504 (= lt!111401 lt!111390)))

(declare-fun lt!111389 () List!3827)

(assert (=> b!270504 (= lt!111389 (list!1557 (charsOf!374 lt!111397)))))

(declare-fun lt!111395 () Unit!4874)

(assert (=> b!270504 (= lt!111395 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!56 thiss!17480 (rule!1314 lt!111397) lt!111389 (++!994 (list!1557 call!14707) (list!1557 lt!110671))))))

(assert (=> b!270504 (not (matchR!275 (regex!729 (rule!1314 lt!111397)) lt!111389))))

(declare-fun lt!111394 () Unit!4874)

(assert (=> b!270504 (= lt!111394 lt!111395)))

(assert (=> b!270504 false))

(declare-fun b!270502 () Bool)

(declare-fun res!123636 () Bool)

(assert (=> b!270502 (=> (not res!123636) (not e!168047))))

(assert (=> b!270502 (= res!123636 (matchR!275 (regex!729 (get!1265 (getRuleFromTag!124 thiss!17480 rules!1920 (tag!939 (rule!1314 lt!111397))))) (list!1557 (charsOf!374 lt!111397))))))

(assert (= (and d!78746 res!123635) b!270502))

(assert (= (and b!270502 res!123636) b!270503))

(assert (= (and d!78746 c!51301) b!270504))

(assert (= (and d!78746 (not c!51301)) b!270505))

(declare-fun m!342381 () Bool)

(assert (=> b!270503 m!342381))

(assert (=> b!270503 m!342381))

(declare-fun m!342383 () Bool)

(assert (=> b!270503 m!342383))

(assert (=> d!78746 m!339773))

(declare-fun m!342385 () Bool)

(assert (=> d!78746 m!342385))

(declare-fun m!342387 () Bool)

(assert (=> d!78746 m!342387))

(assert (=> d!78746 m!342381))

(declare-fun m!342389 () Bool)

(assert (=> d!78746 m!342389))

(declare-fun m!342391 () Bool)

(assert (=> d!78746 m!342391))

(assert (=> d!78746 m!339773))

(assert (=> d!78746 m!342389))

(assert (=> d!78746 m!339773))

(declare-fun m!342393 () Bool)

(assert (=> d!78746 m!342393))

(declare-fun m!342395 () Bool)

(assert (=> d!78746 m!342395))

(declare-fun m!342397 () Bool)

(assert (=> d!78746 m!342397))

(assert (=> d!78746 m!338965))

(assert (=> d!78746 m!342387))

(declare-fun m!342399 () Bool)

(assert (=> d!78746 m!342399))

(declare-fun m!342401 () Bool)

(assert (=> d!78746 m!342401))

(declare-fun m!342403 () Bool)

(assert (=> d!78746 m!342403))

(declare-fun m!342405 () Bool)

(assert (=> d!78746 m!342405))

(declare-fun m!342407 () Bool)

(assert (=> d!78746 m!342407))

(assert (=> d!78746 m!342385))

(declare-fun m!342409 () Bool)

(assert (=> d!78746 m!342409))

(declare-fun m!342411 () Bool)

(assert (=> d!78746 m!342411))

(declare-fun m!342413 () Bool)

(assert (=> d!78746 m!342413))

(assert (=> d!78746 m!339773))

(assert (=> d!78746 m!339779))

(assert (=> d!78746 m!342395))

(assert (=> d!78746 m!342411))

(assert (=> d!78746 m!342395))

(assert (=> d!78746 m!342405))

(assert (=> d!78746 m!342401))

(assert (=> d!78746 m!342405))

(declare-fun m!342415 () Bool)

(assert (=> d!78746 m!342415))

(assert (=> d!78746 m!339773))

(assert (=> d!78746 m!339779))

(declare-fun m!342417 () Bool)

(assert (=> d!78746 m!342417))

(declare-fun m!342419 () Bool)

(assert (=> d!78746 m!342419))

(assert (=> d!78746 m!342381))

(declare-fun m!342421 () Bool)

(assert (=> d!78746 m!342421))

(assert (=> b!270504 m!339773))

(assert (=> b!270504 m!339779))

(assert (=> b!270504 m!342395))

(assert (=> b!270504 m!342401))

(declare-fun m!342423 () Bool)

(assert (=> b!270504 m!342423))

(declare-fun m!342425 () Bool)

(assert (=> b!270504 m!342425))

(declare-fun m!342427 () Bool)

(assert (=> b!270504 m!342427))

(assert (=> b!270504 m!342395))

(declare-fun m!342429 () Bool)

(assert (=> b!270504 m!342429))

(assert (=> b!270504 m!342401))

(assert (=> b!270504 m!342403))

(assert (=> b!270504 m!342427))

(declare-fun m!342431 () Bool)

(assert (=> b!270504 m!342431))

(assert (=> b!270502 m!342381))

(assert (=> b!270502 m!342381))

(assert (=> b!270502 m!342383))

(assert (=> b!270502 m!342401))

(assert (=> b!270502 m!342403))

(assert (=> b!270502 m!342403))

(declare-fun m!342439 () Bool)

(assert (=> b!270502 m!342439))

(assert (=> b!270502 m!342401))

(assert (=> b!269431 d!78746))

(declare-fun d!78750 () Bool)

(assert (=> d!78750 (= (list!1557 call!14707) (list!1561 (c!50914 call!14707)))))

(declare-fun bs!30059 () Bool)

(assert (= bs!30059 d!78750))

(declare-fun m!342445 () Bool)

(assert (=> bs!30059 m!342445))

(assert (=> b!269431 d!78750))

(declare-fun d!78752 () Bool)

(assert (=> d!78752 (= (list!1557 lt!110671) (list!1561 (c!50914 lt!110671)))))

(declare-fun bs!30060 () Bool)

(assert (= bs!30060 d!78752))

(declare-fun m!342447 () Bool)

(assert (=> bs!30060 m!342447))

(assert (=> b!269431 d!78752))

(declare-fun d!78754 () Bool)

(declare-fun lt!111412 () BalanceConc!2568)

(assert (=> d!78754 (= (list!1557 lt!111412) (printListTailRec!127 thiss!17480 (dropList!162 (singletonSeq!275 call!14706) 0) (list!1557 (BalanceConc!2569 Empty!1280))))))

(declare-fun e!168053 () BalanceConc!2568)

(assert (=> d!78754 (= lt!111412 e!168053)))

(declare-fun c!51303 () Bool)

(assert (=> d!78754 (= c!51303 (>= 0 (size!3041 (singletonSeq!275 call!14706))))))

(declare-fun e!168052 () Bool)

(assert (=> d!78754 e!168052))

(declare-fun res!123644 () Bool)

(assert (=> d!78754 (=> (not res!123644) (not e!168052))))

(assert (=> d!78754 (= res!123644 (>= 0 0))))

(assert (=> d!78754 (= (printTailRec!303 thiss!17480 (singletonSeq!275 call!14706) 0 (BalanceConc!2569 Empty!1280)) lt!111412)))

(declare-fun b!270515 () Bool)

(assert (=> b!270515 (= e!168052 (<= 0 (size!3041 (singletonSeq!275 call!14706))))))

(declare-fun b!270516 () Bool)

(assert (=> b!270516 (= e!168053 (BalanceConc!2569 Empty!1280))))

(declare-fun b!270517 () Bool)

(assert (=> b!270517 (= e!168053 (printTailRec!303 thiss!17480 (singletonSeq!275 call!14706) (+ 0 1) (++!996 (BalanceConc!2569 Empty!1280) (charsOf!374 (apply!765 (singletonSeq!275 call!14706) 0)))))))

(declare-fun lt!111414 () List!3829)

(assert (=> b!270517 (= lt!111414 (list!1560 (singletonSeq!275 call!14706)))))

(declare-fun lt!111410 () Unit!4874)

(assert (=> b!270517 (= lt!111410 (lemmaDropApply!202 lt!111414 0))))

(assert (=> b!270517 (= (head!886 (drop!215 lt!111414 0)) (apply!766 lt!111414 0))))

(declare-fun lt!111413 () Unit!4874)

(assert (=> b!270517 (= lt!111413 lt!111410)))

(declare-fun lt!111415 () List!3829)

(assert (=> b!270517 (= lt!111415 (list!1560 (singletonSeq!275 call!14706)))))

(declare-fun lt!111409 () Unit!4874)

(assert (=> b!270517 (= lt!111409 (lemmaDropTail!194 lt!111415 0))))

(assert (=> b!270517 (= (tail!476 (drop!215 lt!111415 0)) (drop!215 lt!111415 (+ 0 1)))))

(declare-fun lt!111411 () Unit!4874)

(assert (=> b!270517 (= lt!111411 lt!111409)))

(assert (= (and d!78754 res!123644) b!270515))

(assert (= (and d!78754 c!51303) b!270516))

(assert (= (and d!78754 (not c!51303)) b!270517))

(declare-fun m!342473 () Bool)

(assert (=> d!78754 m!342473))

(assert (=> d!78754 m!339703))

(assert (=> d!78754 m!339775))

(declare-fun m!342477 () Bool)

(assert (=> d!78754 m!342477))

(declare-fun m!342479 () Bool)

(assert (=> d!78754 m!342479))

(assert (=> d!78754 m!339703))

(declare-fun m!342481 () Bool)

(assert (=> d!78754 m!342481))

(assert (=> d!78754 m!339775))

(assert (=> d!78754 m!342479))

(assert (=> b!270515 m!339775))

(assert (=> b!270515 m!342477))

(declare-fun m!342483 () Bool)

(assert (=> b!270517 m!342483))

(declare-fun m!342485 () Bool)

(assert (=> b!270517 m!342485))

(declare-fun m!342487 () Bool)

(assert (=> b!270517 m!342487))

(declare-fun m!342489 () Bool)

(assert (=> b!270517 m!342489))

(declare-fun m!342491 () Bool)

(assert (=> b!270517 m!342491))

(declare-fun m!342493 () Bool)

(assert (=> b!270517 m!342493))

(declare-fun m!342495 () Bool)

(assert (=> b!270517 m!342495))

(assert (=> b!270517 m!339775))

(declare-fun m!342497 () Bool)

(assert (=> b!270517 m!342497))

(assert (=> b!270517 m!342487))

(declare-fun m!342499 () Bool)

(assert (=> b!270517 m!342499))

(assert (=> b!270517 m!339775))

(assert (=> b!270517 m!342495))

(declare-fun m!342501 () Bool)

(assert (=> b!270517 m!342501))

(assert (=> b!270517 m!339775))

(declare-fun m!342503 () Bool)

(assert (=> b!270517 m!342503))

(declare-fun m!342505 () Bool)

(assert (=> b!270517 m!342505))

(declare-fun m!342507 () Bool)

(assert (=> b!270517 m!342507))

(assert (=> b!270517 m!342497))

(assert (=> b!270517 m!342493))

(assert (=> b!270517 m!342489))

(assert (=> b!269431 d!78754))

(declare-fun d!78762 () Bool)

(declare-fun lt!111422 () BalanceConc!2568)

(assert (=> d!78762 (= (list!1557 lt!111422) (printList!291 thiss!17480 (list!1560 (singletonSeq!275 call!14706))))))

(assert (=> d!78762 (= lt!111422 (printTailRec!303 thiss!17480 (singletonSeq!275 call!14706) 0 (BalanceConc!2569 Empty!1280)))))

(assert (=> d!78762 (= (print!340 thiss!17480 (singletonSeq!275 call!14706)) lt!111422)))

(declare-fun bs!30063 () Bool)

(assert (= bs!30063 d!78762))

(declare-fun m!342509 () Bool)

(assert (=> bs!30063 m!342509))

(assert (=> bs!30063 m!339775))

(assert (=> bs!30063 m!342503))

(assert (=> bs!30063 m!342503))

(declare-fun m!342511 () Bool)

(assert (=> bs!30063 m!342511))

(assert (=> bs!30063 m!339775))

(assert (=> bs!30063 m!339777))

(assert (=> b!269431 d!78762))

(declare-fun lt!111423 () List!3827)

(declare-fun e!168063 () Bool)

(declare-fun b!270534 () Bool)

(assert (=> b!270534 (= e!168063 (or (not (= (ite c!50975 lt!110517 call!14680) Nil!3817)) (= lt!111423 e!167228)))))

(declare-fun b!270532 () Bool)

(declare-fun e!168062 () List!3827)

(assert (=> b!270532 (= e!168062 (Cons!3817 (h!9214 e!167228) (++!994 (t!38153 e!167228) (ite c!50975 lt!110517 call!14680))))))

(declare-fun d!78764 () Bool)

(assert (=> d!78764 e!168063))

(declare-fun res!123646 () Bool)

(assert (=> d!78764 (=> (not res!123646) (not e!168063))))

(assert (=> d!78764 (= res!123646 (= (content!547 lt!111423) ((_ map or) (content!547 e!167228) (content!547 (ite c!50975 lt!110517 call!14680)))))))

(assert (=> d!78764 (= lt!111423 e!168062)))

(declare-fun c!51309 () Bool)

(assert (=> d!78764 (= c!51309 ((_ is Nil!3817) e!167228))))

(assert (=> d!78764 (= (++!994 e!167228 (ite c!50975 lt!110517 call!14680)) lt!111423)))

(declare-fun b!270531 () Bool)

(assert (=> b!270531 (= e!168062 (ite c!50975 lt!110517 call!14680))))

(declare-fun b!270533 () Bool)

(declare-fun res!123645 () Bool)

(assert (=> b!270533 (=> (not res!123645) (not e!168063))))

(assert (=> b!270533 (= res!123645 (= (size!3043 lt!111423) (+ (size!3043 e!167228) (size!3043 (ite c!50975 lt!110517 call!14680)))))))

(assert (= (and d!78764 c!51309) b!270531))

(assert (= (and d!78764 (not c!51309)) b!270532))

(assert (= (and d!78764 res!123646) b!270533))

(assert (= (and b!270533 res!123645) b!270534))

(declare-fun m!342513 () Bool)

(assert (=> b!270532 m!342513))

(declare-fun m!342515 () Bool)

(assert (=> d!78764 m!342515))

(declare-fun m!342517 () Bool)

(assert (=> d!78764 m!342517))

(declare-fun m!342519 () Bool)

(assert (=> d!78764 m!342519))

(declare-fun m!342521 () Bool)

(assert (=> b!270533 m!342521))

(declare-fun m!342523 () Bool)

(assert (=> b!270533 m!342523))

(declare-fun m!342525 () Bool)

(assert (=> b!270533 m!342525))

(assert (=> bm!14676 d!78764))

(declare-fun d!78766 () Bool)

(declare-fun e!168064 () Bool)

(assert (=> d!78766 e!168064))

(declare-fun res!123649 () Bool)

(assert (=> d!78766 (=> (not res!123649) (not e!168064))))

(assert (=> d!78766 (= res!123649 (appendAssocInst!62 (c!50914 call!14698) (c!50914 (ite c!50998 lt!110609 call!14702))))))

(declare-fun lt!111424 () BalanceConc!2568)

(assert (=> d!78766 (= lt!111424 (BalanceConc!2569 (++!997 (c!50914 call!14698) (c!50914 (ite c!50998 lt!110609 call!14702)))))))

(assert (=> d!78766 (= (++!996 call!14698 (ite c!50998 lt!110609 call!14702)) lt!111424)))

(declare-fun b!270536 () Bool)

(declare-fun res!123650 () Bool)

(assert (=> b!270536 (=> (not res!123650) (not e!168064))))

(assert (=> b!270536 (= res!123650 (<= (height!153 (++!997 (c!50914 call!14698) (c!50914 (ite c!50998 lt!110609 call!14702)))) (+ (max!0 (height!153 (c!50914 call!14698)) (height!153 (c!50914 (ite c!50998 lt!110609 call!14702)))) 1)))))

(declare-fun b!270538 () Bool)

(assert (=> b!270538 (= e!168064 (= (list!1557 lt!111424) (++!994 (list!1557 call!14698) (list!1557 (ite c!50998 lt!110609 call!14702)))))))

(declare-fun b!270535 () Bool)

(declare-fun res!123647 () Bool)

(assert (=> b!270535 (=> (not res!123647) (not e!168064))))

(assert (=> b!270535 (= res!123647 (isBalanced!350 (++!997 (c!50914 call!14698) (c!50914 (ite c!50998 lt!110609 call!14702)))))))

(declare-fun b!270537 () Bool)

(declare-fun res!123648 () Bool)

(assert (=> b!270537 (=> (not res!123648) (not e!168064))))

(assert (=> b!270537 (= res!123648 (>= (height!153 (++!997 (c!50914 call!14698) (c!50914 (ite c!50998 lt!110609 call!14702)))) (max!0 (height!153 (c!50914 call!14698)) (height!153 (c!50914 (ite c!50998 lt!110609 call!14702))))))))

(assert (= (and d!78766 res!123649) b!270535))

(assert (= (and b!270535 res!123647) b!270536))

(assert (= (and b!270536 res!123650) b!270537))

(assert (= (and b!270537 res!123648) b!270538))

(declare-fun m!342527 () Bool)

(assert (=> b!270536 m!342527))

(declare-fun m!342529 () Bool)

(assert (=> b!270536 m!342529))

(assert (=> b!270536 m!342527))

(declare-fun m!342531 () Bool)

(assert (=> b!270536 m!342531))

(declare-fun m!342533 () Bool)

(assert (=> b!270536 m!342533))

(declare-fun m!342535 () Bool)

(assert (=> b!270536 m!342535))

(assert (=> b!270536 m!342531))

(assert (=> b!270536 m!342533))

(assert (=> b!270535 m!342527))

(assert (=> b!270535 m!342527))

(declare-fun m!342537 () Bool)

(assert (=> b!270535 m!342537))

(declare-fun m!342539 () Bool)

(assert (=> b!270538 m!342539))

(declare-fun m!342541 () Bool)

(assert (=> b!270538 m!342541))

(declare-fun m!342543 () Bool)

(assert (=> b!270538 m!342543))

(assert (=> b!270538 m!342541))

(assert (=> b!270538 m!342543))

(declare-fun m!342545 () Bool)

(assert (=> b!270538 m!342545))

(assert (=> b!270537 m!342527))

(assert (=> b!270537 m!342529))

(assert (=> b!270537 m!342527))

(assert (=> b!270537 m!342531))

(assert (=> b!270537 m!342533))

(assert (=> b!270537 m!342535))

(assert (=> b!270537 m!342531))

(assert (=> b!270537 m!342533))

(declare-fun m!342547 () Bool)

(assert (=> d!78766 m!342547))

(assert (=> d!78766 m!342527))

(assert (=> bm!14697 d!78766))

(declare-fun b!270547 () Bool)

(declare-fun e!168071 () Bool)

(declare-fun e!168073 () Bool)

(assert (=> b!270547 (= e!168071 e!168073)))

(declare-fun res!123655 () Bool)

(declare-fun rulesUseDisjointChars!61 (Rule!1258 Rule!1258) Bool)

(assert (=> b!270547 (= res!123655 (rulesUseDisjointChars!61 (h!9217 rules!1920) (h!9217 rules!1920)))))

(assert (=> b!270547 (=> (not res!123655) (not e!168073))))

(declare-fun b!270548 () Bool)

(declare-fun call!14783 () Bool)

(assert (=> b!270548 (= e!168073 call!14783)))

(declare-fun bm!14778 () Bool)

(assert (=> bm!14778 (= call!14783 (ruleDisjointCharsFromAllFromOtherType!116 (h!9217 rules!1920) (t!38156 rules!1920)))))

(declare-fun d!78768 () Bool)

(declare-fun c!51312 () Bool)

(assert (=> d!78768 (= c!51312 (and ((_ is Cons!3820) rules!1920) (not (= (isSeparator!729 (h!9217 rules!1920)) (isSeparator!729 (h!9217 rules!1920))))))))

(assert (=> d!78768 (= (ruleDisjointCharsFromAllFromOtherType!116 (h!9217 rules!1920) rules!1920) e!168071)))

(declare-fun b!270549 () Bool)

(declare-fun e!168072 () Bool)

(assert (=> b!270549 (= e!168071 e!168072)))

(declare-fun res!123656 () Bool)

(assert (=> b!270549 (= res!123656 (not ((_ is Cons!3820) rules!1920)))))

(assert (=> b!270549 (=> res!123656 e!168072)))

(declare-fun b!270550 () Bool)

(assert (=> b!270550 (= e!168072 call!14783)))

(assert (= (and d!78768 c!51312) b!270547))

(assert (= (and d!78768 (not c!51312)) b!270549))

(assert (= (and b!270547 res!123655) b!270548))

(assert (= (and b!270549 (not res!123656)) b!270550))

(assert (= (or b!270548 b!270550) bm!14778))

(declare-fun m!342585 () Bool)

(assert (=> b!270547 m!342585))

(declare-fun m!342587 () Bool)

(assert (=> bm!14778 m!342587))

(assert (=> b!269456 d!78768))

(declare-fun bs!30081 () Bool)

(declare-fun d!78776 () Bool)

(assert (= bs!30081 (and d!78776 d!78160)))

(declare-fun lambda!9148 () Int)

(assert (=> bs!30081 (= (and (= (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (toChars!1323 (transformation!729 (h!9217 rules!1920)))) (= (toValue!1464 (transformation!729 (rule!1314 separatorToken!170))) (toValue!1464 (transformation!729 (h!9217 rules!1920))))) (= lambda!9148 lambda!9120))))

(assert (=> d!78776 true))

(assert (=> d!78776 (< (dynLambda!1955 order!2937 (toChars!1323 (transformation!729 (rule!1314 separatorToken!170)))) (dynLambda!1962 order!2941 lambda!9148))))

(assert (=> d!78776 true))

(assert (=> d!78776 (< (dynLambda!1953 order!2933 (toValue!1464 (transformation!729 (rule!1314 separatorToken!170)))) (dynLambda!1962 order!2941 lambda!9148))))

(assert (=> d!78776 (= (semiInverseModEq!257 (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (toValue!1464 (transformation!729 (rule!1314 separatorToken!170)))) (Forall!172 lambda!9148))))

(declare-fun bs!30082 () Bool)

(assert (= bs!30082 d!78776))

(declare-fun m!342595 () Bool)

(assert (=> bs!30082 m!342595))

(assert (=> d!78134 d!78776))

(declare-fun d!78782 () Bool)

(declare-fun lt!111433 () Bool)

(assert (=> d!78782 (= lt!111433 (isEmpty!2420 (list!1557 (_2!2353 lt!110440))))))

(assert (=> d!78782 (= lt!111433 (isEmpty!2426 (c!50914 (_2!2353 lt!110440))))))

(assert (=> d!78782 (= (isEmpty!2419 (_2!2353 lt!110440)) lt!111433)))

(declare-fun bs!30083 () Bool)

(assert (= bs!30083 d!78782))

(declare-fun m!342597 () Bool)

(assert (=> bs!30083 m!342597))

(assert (=> bs!30083 m!342597))

(declare-fun m!342599 () Bool)

(assert (=> bs!30083 m!342599))

(declare-fun m!342601 () Bool)

(assert (=> bs!30083 m!342601))

(assert (=> b!269045 d!78782))

(declare-fun d!78784 () Bool)

(assert (=> d!78784 (= (inv!15 (value!25092 (h!9216 tokens!465))) (= (charsToBigInt!0 (text!5706 (value!25092 (h!9216 tokens!465))) 0) (value!25087 (value!25092 (h!9216 tokens!465)))))))

(declare-fun bs!30084 () Bool)

(assert (= bs!30084 d!78784))

(declare-fun m!342603 () Bool)

(assert (=> bs!30084 m!342603))

(assert (=> b!269483 d!78784))

(declare-fun b!270577 () Bool)

(declare-fun e!168086 () Bool)

(assert (=> b!270577 (= e!168086 (not (isEmpty!2418 (right!3470 (c!50916 lt!110633)))))))

(declare-fun b!270579 () Bool)

(declare-fun res!123671 () Bool)

(assert (=> b!270579 (=> (not res!123671) (not e!168086))))

(assert (=> b!270579 (= res!123671 (isBalanced!348 (left!3140 (c!50916 lt!110633))))))

(declare-fun b!270580 () Bool)

(declare-fun res!123674 () Bool)

(assert (=> b!270580 (=> (not res!123674) (not e!168086))))

(declare-fun height!156 (Conc!1281) Int)

(assert (=> b!270580 (= res!123674 (<= (- (height!156 (left!3140 (c!50916 lt!110633))) (height!156 (right!3470 (c!50916 lt!110633)))) 1))))

(declare-fun b!270581 () Bool)

(declare-fun e!168087 () Bool)

(assert (=> b!270581 (= e!168087 e!168086)))

(declare-fun res!123673 () Bool)

(assert (=> b!270581 (=> (not res!123673) (not e!168086))))

(assert (=> b!270581 (= res!123673 (<= (- 1) (- (height!156 (left!3140 (c!50916 lt!110633))) (height!156 (right!3470 (c!50916 lt!110633))))))))

(declare-fun b!270582 () Bool)

(declare-fun res!123670 () Bool)

(assert (=> b!270582 (=> (not res!123670) (not e!168086))))

(assert (=> b!270582 (= res!123670 (not (isEmpty!2418 (left!3140 (c!50916 lt!110633)))))))

(declare-fun b!270578 () Bool)

(declare-fun res!123672 () Bool)

(assert (=> b!270578 (=> (not res!123672) (not e!168086))))

(assert (=> b!270578 (= res!123672 (isBalanced!348 (right!3470 (c!50916 lt!110633))))))

(declare-fun d!78786 () Bool)

(declare-fun res!123675 () Bool)

(assert (=> d!78786 (=> res!123675 e!168087)))

(assert (=> d!78786 (= res!123675 (not ((_ is Node!1281) (c!50916 lt!110633))))))

(assert (=> d!78786 (= (isBalanced!348 (c!50916 lt!110633)) e!168087)))

(assert (= (and d!78786 (not res!123675)) b!270581))

(assert (= (and b!270581 res!123673) b!270580))

(assert (= (and b!270580 res!123674) b!270579))

(assert (= (and b!270579 res!123671) b!270578))

(assert (= (and b!270578 res!123672) b!270582))

(assert (= (and b!270582 res!123670) b!270577))

(declare-fun m!342645 () Bool)

(assert (=> b!270580 m!342645))

(declare-fun m!342647 () Bool)

(assert (=> b!270580 m!342647))

(assert (=> b!270581 m!342645))

(assert (=> b!270581 m!342647))

(declare-fun m!342649 () Bool)

(assert (=> b!270582 m!342649))

(declare-fun m!342651 () Bool)

(assert (=> b!270579 m!342651))

(declare-fun m!342653 () Bool)

(assert (=> b!270577 m!342653))

(declare-fun m!342655 () Bool)

(assert (=> b!270578 m!342655))

(assert (=> b!269405 d!78786))

(declare-fun d!78814 () Bool)

(declare-fun c!51319 () Bool)

(assert (=> d!78814 (= c!51319 ((_ is Nil!3817) lt!110530))))

(declare-fun e!168088 () (InoxSet C!2828))

(assert (=> d!78814 (= (content!547 lt!110530) e!168088)))

(declare-fun b!270583 () Bool)

(assert (=> b!270583 (= e!168088 ((as const (Array C!2828 Bool)) false))))

(declare-fun b!270584 () Bool)

(assert (=> b!270584 (= e!168088 ((_ map or) (store ((as const (Array C!2828 Bool)) false) (h!9214 lt!110530) true) (content!547 (t!38153 lt!110530))))))

(assert (= (and d!78814 c!51319) b!270583))

(assert (= (and d!78814 (not c!51319)) b!270584))

(declare-fun m!342657 () Bool)

(assert (=> b!270584 m!342657))

(declare-fun m!342659 () Bool)

(assert (=> b!270584 m!342659))

(assert (=> d!78022 d!78814))

(assert (=> d!78022 d!78180))

(declare-fun d!78816 () Bool)

(declare-fun c!51320 () Bool)

(assert (=> d!78816 (= c!51320 ((_ is Nil!3817) lt!110398))))

(declare-fun e!168089 () (InoxSet C!2828))

(assert (=> d!78816 (= (content!547 lt!110398) e!168089)))

(declare-fun b!270585 () Bool)

(assert (=> b!270585 (= e!168089 ((as const (Array C!2828 Bool)) false))))

(declare-fun b!270586 () Bool)

(assert (=> b!270586 (= e!168089 ((_ map or) (store ((as const (Array C!2828 Bool)) false) (h!9214 lt!110398) true) (content!547 (t!38153 lt!110398))))))

(assert (= (and d!78816 c!51320) b!270585))

(assert (= (and d!78816 (not c!51320)) b!270586))

(declare-fun m!342661 () Bool)

(assert (=> b!270586 m!342661))

(declare-fun m!342663 () Bool)

(assert (=> b!270586 m!342663))

(assert (=> d!78022 d!78816))

(declare-fun d!78818 () Bool)

(assert (=> d!78818 true))

(declare-fun lt!111441 () Bool)

(assert (=> d!78818 (= lt!111441 (rulesValidInductive!202 thiss!17480 rules!1920))))

(declare-fun lambda!9151 () Int)

(declare-fun forall!961 (List!3830 Int) Bool)

(assert (=> d!78818 (= lt!111441 (forall!961 rules!1920 lambda!9151))))

(assert (=> d!78818 (= (rulesValid!223 thiss!17480 rules!1920) lt!111441)))

(declare-fun bs!30092 () Bool)

(assert (= bs!30092 d!78818))

(assert (=> bs!30092 m!340485))

(declare-fun m!342665 () Bool)

(assert (=> bs!30092 m!342665))

(assert (=> d!78130 d!78818))

(declare-fun d!78820 () Bool)

(assert (=> d!78820 (= (isEmpty!2420 (originalCharacters!772 (h!9216 tokens!465))) ((_ is Nil!3817) (originalCharacters!772 (h!9216 tokens!465))))))

(assert (=> d!78086 d!78820))

(declare-fun lt!111442 () Bool)

(declare-fun d!78822 () Bool)

(assert (=> d!78822 (= lt!111442 (isEmpty!2420 (list!1557 (_2!2353 (lex!407 thiss!17480 rules!1920 (print!340 thiss!17480 (singletonSeq!275 (h!9216 tokens!465))))))))))

(assert (=> d!78822 (= lt!111442 (isEmpty!2426 (c!50914 (_2!2353 (lex!407 thiss!17480 rules!1920 (print!340 thiss!17480 (singletonSeq!275 (h!9216 tokens!465))))))))))

(assert (=> d!78822 (= (isEmpty!2419 (_2!2353 (lex!407 thiss!17480 rules!1920 (print!340 thiss!17480 (singletonSeq!275 (h!9216 tokens!465)))))) lt!111442)))

(declare-fun bs!30093 () Bool)

(assert (= bs!30093 d!78822))

(declare-fun m!342667 () Bool)

(assert (=> bs!30093 m!342667))

(assert (=> bs!30093 m!342667))

(declare-fun m!342669 () Bool)

(assert (=> bs!30093 m!342669))

(declare-fun m!342671 () Bool)

(assert (=> bs!30093 m!342671))

(assert (=> b!269046 d!78822))

(assert (=> b!269046 d!78372))

(assert (=> b!269046 d!78378))

(assert (=> b!269046 d!78096))

(declare-fun d!78824 () Bool)

(assert (=> d!78824 (= (inv!16 (value!25092 separatorToken!170)) (= (charsToInt!0 (text!5704 (value!25092 separatorToken!170))) (value!25083 (value!25092 separatorToken!170))))))

(declare-fun bs!30094 () Bool)

(assert (= bs!30094 d!78824))

(declare-fun m!342673 () Bool)

(assert (=> bs!30094 m!342673))

(assert (=> b!269490 d!78824))

(declare-fun d!78826 () Bool)

(assert (=> d!78826 (= (list!1557 call!14711) (list!1561 (c!50914 call!14711)))))

(declare-fun bs!30095 () Bool)

(assert (= bs!30095 d!78826))

(declare-fun m!342675 () Bool)

(assert (=> bs!30095 m!342675))

(assert (=> b!269441 d!78826))

(declare-fun lt!111443 () List!3827)

(declare-fun b!270592 () Bool)

(declare-fun e!168091 () Bool)

(assert (=> b!270592 (= e!168091 (or (not (= lt!110398 Nil!3817)) (= lt!111443 (t!38153 lt!110396))))))

(declare-fun b!270590 () Bool)

(declare-fun e!168090 () List!3827)

(assert (=> b!270590 (= e!168090 (Cons!3817 (h!9214 (t!38153 lt!110396)) (++!994 (t!38153 (t!38153 lt!110396)) lt!110398)))))

(declare-fun d!78828 () Bool)

(assert (=> d!78828 e!168091))

(declare-fun res!123677 () Bool)

(assert (=> d!78828 (=> (not res!123677) (not e!168091))))

(assert (=> d!78828 (= res!123677 (= (content!547 lt!111443) ((_ map or) (content!547 (t!38153 lt!110396)) (content!547 lt!110398))))))

(assert (=> d!78828 (= lt!111443 e!168090)))

(declare-fun c!51321 () Bool)

(assert (=> d!78828 (= c!51321 ((_ is Nil!3817) (t!38153 lt!110396)))))

(assert (=> d!78828 (= (++!994 (t!38153 lt!110396) lt!110398) lt!111443)))

(declare-fun b!270589 () Bool)

(assert (=> b!270589 (= e!168090 lt!110398)))

(declare-fun b!270591 () Bool)

(declare-fun res!123676 () Bool)

(assert (=> b!270591 (=> (not res!123676) (not e!168091))))

(assert (=> b!270591 (= res!123676 (= (size!3043 lt!111443) (+ (size!3043 (t!38153 lt!110396)) (size!3043 lt!110398))))))

(assert (= (and d!78828 c!51321) b!270589))

(assert (= (and d!78828 (not c!51321)) b!270590))

(assert (= (and d!78828 res!123677) b!270591))

(assert (= (and b!270591 res!123676) b!270592))

(declare-fun m!342677 () Bool)

(assert (=> b!270590 m!342677))

(declare-fun m!342679 () Bool)

(assert (=> d!78828 m!342679))

(assert (=> d!78828 m!340003))

(assert (=> d!78828 m!339379))

(declare-fun m!342681 () Bool)

(assert (=> b!270591 m!342681))

(assert (=> b!270591 m!339965))

(assert (=> b!270591 m!339385))

(assert (=> b!269217 d!78828))

(declare-fun d!78830 () Bool)

(declare-fun c!51322 () Bool)

(assert (=> d!78830 (= c!51322 ((_ is Nil!3817) lt!110618))))

(declare-fun e!168092 () (InoxSet C!2828))

(assert (=> d!78830 (= (content!547 lt!110618) e!168092)))

(declare-fun b!270593 () Bool)

(assert (=> b!270593 (= e!168092 ((as const (Array C!2828 Bool)) false))))

(declare-fun b!270594 () Bool)

(assert (=> b!270594 (= e!168092 ((_ map or) (store ((as const (Array C!2828 Bool)) false) (h!9214 lt!110618) true) (content!547 (t!38153 lt!110618))))))

(assert (= (and d!78830 c!51322) b!270593))

(assert (= (and d!78830 (not c!51322)) b!270594))

(declare-fun m!342683 () Bool)

(assert (=> b!270594 m!342683))

(declare-fun m!342685 () Bool)

(assert (=> b!270594 m!342685))

(assert (=> d!78074 d!78830))

(declare-fun d!78832 () Bool)

(declare-fun c!51323 () Bool)

(assert (=> d!78832 (= c!51323 ((_ is Nil!3817) (++!994 lt!110396 lt!110394)))))

(declare-fun e!168093 () (InoxSet C!2828))

(assert (=> d!78832 (= (content!547 (++!994 lt!110396 lt!110394)) e!168093)))

(declare-fun b!270595 () Bool)

(assert (=> b!270595 (= e!168093 ((as const (Array C!2828 Bool)) false))))

(declare-fun b!270596 () Bool)

(assert (=> b!270596 (= e!168093 ((_ map or) (store ((as const (Array C!2828 Bool)) false) (h!9214 (++!994 lt!110396 lt!110394)) true) (content!547 (t!38153 (++!994 lt!110396 lt!110394)))))))

(assert (= (and d!78832 c!51323) b!270595))

(assert (= (and d!78832 (not c!51323)) b!270596))

(declare-fun m!342687 () Bool)

(assert (=> b!270596 m!342687))

(assert (=> b!270596 m!341535))

(assert (=> d!78074 d!78832))

(assert (=> d!78074 d!78448))

(assert (=> b!269444 d!78064))

(declare-fun d!78834 () Bool)

(declare-fun lt!111444 () Int)

(assert (=> d!78834 (= lt!111444 (size!3046 (list!1560 (_1!2353 lt!110416))))))

(assert (=> d!78834 (= lt!111444 (size!3044 (c!50916 (_1!2353 lt!110416))))))

(assert (=> d!78834 (= (size!3041 (_1!2353 lt!110416)) lt!111444)))

(declare-fun bs!30096 () Bool)

(assert (= bs!30096 d!78834))

(assert (=> bs!30096 m!339091))

(assert (=> bs!30096 m!339091))

(declare-fun m!342689 () Bool)

(assert (=> bs!30096 m!342689))

(declare-fun m!342691 () Bool)

(assert (=> bs!30096 m!342691))

(assert (=> d!77976 d!78834))

(declare-fun b!270789 () Bool)

(declare-fun e!168202 () tuple2!4274)

(declare-fun lt!111555 () BalanceConc!2568)

(declare-fun lt!111535 () Option!809)

(declare-fun append!95 (BalanceConc!2570 Token!1202) BalanceConc!2570)

(assert (=> b!270789 (= e!168202 (lexTailRecV2!174 thiss!17480 rules!1920 (seqFromList!825 lt!110396) lt!111555 (_2!2359 (v!14677 lt!111535)) (append!95 (BalanceConc!2571 Empty!1281) (_1!2359 (v!14677 lt!111535)))))))

(declare-fun lt!111556 () tuple2!4274)

(declare-fun lexRec!90 (LexerInterface!615 List!3830 BalanceConc!2568) tuple2!4274)

(assert (=> b!270789 (= lt!111556 (lexRec!90 thiss!17480 rules!1920 (_2!2359 (v!14677 lt!111535))))))

(declare-fun lt!111566 () List!3827)

(assert (=> b!270789 (= lt!111566 (list!1557 (BalanceConc!2569 Empty!1280)))))

(declare-fun lt!111562 () List!3827)

(assert (=> b!270789 (= lt!111562 (list!1557 (charsOf!374 (_1!2359 (v!14677 lt!111535)))))))

(declare-fun lt!111546 () List!3827)

(assert (=> b!270789 (= lt!111546 (list!1557 (_2!2359 (v!14677 lt!111535))))))

(declare-fun lt!111550 () Unit!4874)

(assert (=> b!270789 (= lt!111550 (lemmaConcatAssociativity!426 lt!111566 lt!111562 lt!111546))))

(assert (=> b!270789 (= (++!994 (++!994 lt!111566 lt!111562) lt!111546) (++!994 lt!111566 (++!994 lt!111562 lt!111546)))))

(declare-fun lt!111540 () Unit!4874)

(assert (=> b!270789 (= lt!111540 lt!111550)))

(declare-fun lt!111568 () Option!809)

(assert (=> b!270789 (= lt!111568 (maxPrefixZipperSequence!296 thiss!17480 rules!1920 (seqFromList!825 lt!110396)))))

(declare-fun c!51350 () Bool)

(assert (=> b!270789 (= c!51350 ((_ is Some!808) lt!111568))))

(declare-fun e!168204 () tuple2!4274)

(assert (=> b!270789 (= (lexRec!90 thiss!17480 rules!1920 (seqFromList!825 lt!110396)) e!168204)))

(declare-fun lt!111564 () Unit!4874)

(declare-fun Unit!4916 () Unit!4874)

(assert (=> b!270789 (= lt!111564 Unit!4916)))

(declare-fun lt!111543 () List!3829)

(assert (=> b!270789 (= lt!111543 (list!1560 (BalanceConc!2571 Empty!1281)))))

(declare-fun lt!111557 () List!3829)

(assert (=> b!270789 (= lt!111557 (Cons!3819 (_1!2359 (v!14677 lt!111535)) Nil!3819))))

(declare-fun lt!111549 () List!3829)

(assert (=> b!270789 (= lt!111549 (list!1560 (_1!2353 lt!111556)))))

(declare-fun lt!111551 () Unit!4874)

(declare-fun lemmaConcatAssociativity!428 (List!3829 List!3829 List!3829) Unit!4874)

(assert (=> b!270789 (= lt!111551 (lemmaConcatAssociativity!428 lt!111543 lt!111557 lt!111549))))

(declare-fun ++!1000 (List!3829 List!3829) List!3829)

(assert (=> b!270789 (= (++!1000 (++!1000 lt!111543 lt!111557) lt!111549) (++!1000 lt!111543 (++!1000 lt!111557 lt!111549)))))

(declare-fun lt!111538 () Unit!4874)

(assert (=> b!270789 (= lt!111538 lt!111551)))

(declare-fun lt!111553 () List!3827)

(assert (=> b!270789 (= lt!111553 (++!994 (list!1557 (BalanceConc!2569 Empty!1280)) (list!1557 (charsOf!374 (_1!2359 (v!14677 lt!111535))))))))

(declare-fun lt!111567 () List!3827)

(assert (=> b!270789 (= lt!111567 (list!1557 (_2!2359 (v!14677 lt!111535))))))

(declare-fun lt!111542 () List!3829)

(assert (=> b!270789 (= lt!111542 (list!1560 (append!95 (BalanceConc!2571 Empty!1281) (_1!2359 (v!14677 lt!111535)))))))

(declare-fun lt!111536 () Unit!4874)

(declare-fun lemmaLexThenLexPrefix!77 (LexerInterface!615 List!3830 List!3827 List!3827 List!3829 List!3829 List!3827) Unit!4874)

(assert (=> b!270789 (= lt!111536 (lemmaLexThenLexPrefix!77 thiss!17480 rules!1920 lt!111553 lt!111567 lt!111542 (list!1560 (_1!2353 lt!111556)) (list!1557 (_2!2353 lt!111556))))))

(assert (=> b!270789 (= (lexList!207 thiss!17480 rules!1920 lt!111553) (tuple2!4283 lt!111542 Nil!3817))))

(declare-fun lt!111563 () Unit!4874)

(assert (=> b!270789 (= lt!111563 lt!111536)))

(declare-fun lt!111561 () BalanceConc!2568)

(assert (=> b!270789 (= lt!111561 (++!996 (BalanceConc!2569 Empty!1280) (charsOf!374 (_1!2359 (v!14677 lt!111535)))))))

(declare-fun lt!111539 () Option!809)

(assert (=> b!270789 (= lt!111539 (maxPrefixZipperSequence!296 thiss!17480 rules!1920 lt!111561))))

(declare-fun c!51348 () Bool)

(assert (=> b!270789 (= c!51348 ((_ is Some!808) lt!111539))))

(declare-fun e!168203 () tuple2!4274)

(assert (=> b!270789 (= (lexRec!90 thiss!17480 rules!1920 (++!996 (BalanceConc!2569 Empty!1280) (charsOf!374 (_1!2359 (v!14677 lt!111535))))) e!168203)))

(declare-fun lt!111560 () Unit!4874)

(declare-fun Unit!4917 () Unit!4874)

(assert (=> b!270789 (= lt!111560 Unit!4917)))

(assert (=> b!270789 (= lt!111555 (++!996 (BalanceConc!2569 Empty!1280) (charsOf!374 (_1!2359 (v!14677 lt!111535)))))))

(declare-fun lt!111558 () List!3827)

(assert (=> b!270789 (= lt!111558 (list!1557 lt!111555))))

(declare-fun lt!111537 () List!3827)

(assert (=> b!270789 (= lt!111537 (list!1557 (_2!2359 (v!14677 lt!111535))))))

(declare-fun lt!111552 () Unit!4874)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!75 (List!3827 List!3827) Unit!4874)

(assert (=> b!270789 (= lt!111552 (lemmaConcatTwoListThenFSndIsSuffix!75 lt!111558 lt!111537))))

(declare-fun isSuffix!75 (List!3827 List!3827) Bool)

(assert (=> b!270789 (isSuffix!75 lt!111537 (++!994 lt!111558 lt!111537))))

(declare-fun lt!111544 () Unit!4874)

(assert (=> b!270789 (= lt!111544 lt!111552)))

(declare-fun e!168205 () Bool)

(declare-fun lt!111547 () tuple2!4274)

(declare-fun b!270790 () Bool)

(assert (=> b!270790 (= e!168205 (= (list!1557 (_2!2353 lt!111547)) (list!1557 (_2!2353 (lexRec!90 thiss!17480 rules!1920 (seqFromList!825 lt!110396))))))))

(declare-fun d!78836 () Bool)

(assert (=> d!78836 e!168205))

(declare-fun res!123706 () Bool)

(assert (=> d!78836 (=> (not res!123706) (not e!168205))))

(assert (=> d!78836 (= res!123706 (= (list!1560 (_1!2353 lt!111547)) (list!1560 (_1!2353 (lexRec!90 thiss!17480 rules!1920 (seqFromList!825 lt!110396))))))))

(assert (=> d!78836 (= lt!111547 e!168202)))

(declare-fun c!51349 () Bool)

(assert (=> d!78836 (= c!51349 ((_ is Some!808) lt!111535))))

(declare-fun maxPrefixZipperSequenceV2!75 (LexerInterface!615 List!3830 BalanceConc!2568 BalanceConc!2568) Option!809)

(assert (=> d!78836 (= lt!111535 (maxPrefixZipperSequenceV2!75 thiss!17480 rules!1920 (seqFromList!825 lt!110396) (seqFromList!825 lt!110396)))))

(declare-fun lt!111548 () Unit!4874)

(declare-fun lt!111541 () Unit!4874)

(assert (=> d!78836 (= lt!111548 lt!111541)))

(declare-fun lt!111559 () List!3827)

(declare-fun lt!111545 () List!3827)

(assert (=> d!78836 (isSuffix!75 lt!111559 (++!994 lt!111545 lt!111559))))

(assert (=> d!78836 (= lt!111541 (lemmaConcatTwoListThenFSndIsSuffix!75 lt!111545 lt!111559))))

(assert (=> d!78836 (= lt!111559 (list!1557 (seqFromList!825 lt!110396)))))

(assert (=> d!78836 (= lt!111545 (list!1557 (BalanceConc!2569 Empty!1280)))))

(assert (=> d!78836 (= (lexTailRecV2!174 thiss!17480 rules!1920 (seqFromList!825 lt!110396) (BalanceConc!2569 Empty!1280) (seqFromList!825 lt!110396) (BalanceConc!2571 Empty!1281)) lt!111547)))

(declare-fun lt!111554 () tuple2!4274)

(declare-fun b!270791 () Bool)

(assert (=> b!270791 (= lt!111554 (lexRec!90 thiss!17480 rules!1920 (_2!2359 (v!14677 lt!111539))))))

(declare-fun prepend!173 (BalanceConc!2570 Token!1202) BalanceConc!2570)

(assert (=> b!270791 (= e!168203 (tuple2!4275 (prepend!173 (_1!2353 lt!111554) (_1!2359 (v!14677 lt!111539))) (_2!2353 lt!111554)))))

(declare-fun b!270792 () Bool)

(declare-fun lt!111565 () tuple2!4274)

(assert (=> b!270792 (= lt!111565 (lexRec!90 thiss!17480 rules!1920 (_2!2359 (v!14677 lt!111568))))))

(assert (=> b!270792 (= e!168204 (tuple2!4275 (prepend!173 (_1!2353 lt!111565) (_1!2359 (v!14677 lt!111568))) (_2!2353 lt!111565)))))

(declare-fun b!270793 () Bool)

(assert (=> b!270793 (= e!168203 (tuple2!4275 (BalanceConc!2571 Empty!1281) lt!111561))))

(declare-fun b!270794 () Bool)

(assert (=> b!270794 (= e!168204 (tuple2!4275 (BalanceConc!2571 Empty!1281) (seqFromList!825 lt!110396)))))

(declare-fun b!270795 () Bool)

(assert (=> b!270795 (= e!168202 (tuple2!4275 (BalanceConc!2571 Empty!1281) (seqFromList!825 lt!110396)))))

(assert (= (and d!78836 c!51349) b!270789))

(assert (= (and d!78836 (not c!51349)) b!270795))

(assert (= (and b!270789 c!51350) b!270792))

(assert (= (and b!270789 (not c!51350)) b!270794))

(assert (= (and b!270789 c!51348) b!270791))

(assert (= (and b!270789 (not c!51348)) b!270793))

(assert (= (and d!78836 res!123706) b!270790))

(declare-fun m!342915 () Bool)

(assert (=> b!270791 m!342915))

(declare-fun m!342917 () Bool)

(assert (=> b!270791 m!342917))

(declare-fun m!342919 () Bool)

(assert (=> b!270789 m!342919))

(assert (=> b!270789 m!339001))

(declare-fun m!342921 () Bool)

(assert (=> b!270789 m!342921))

(declare-fun m!342923 () Bool)

(assert (=> b!270789 m!342923))

(declare-fun m!342925 () Bool)

(assert (=> b!270789 m!342925))

(declare-fun m!342927 () Bool)

(assert (=> b!270789 m!342927))

(declare-fun m!342929 () Bool)

(assert (=> b!270789 m!342929))

(assert (=> b!270789 m!342929))

(declare-fun m!342931 () Bool)

(assert (=> b!270789 m!342931))

(declare-fun m!342933 () Bool)

(assert (=> b!270789 m!342933))

(declare-fun m!342935 () Bool)

(assert (=> b!270789 m!342935))

(declare-fun m!342937 () Bool)

(assert (=> b!270789 m!342937))

(declare-fun m!342939 () Bool)

(assert (=> b!270789 m!342939))

(assert (=> b!270789 m!342919))

(declare-fun m!342941 () Bool)

(assert (=> b!270789 m!342941))

(declare-fun m!342943 () Bool)

(assert (=> b!270789 m!342943))

(assert (=> b!270789 m!339703))

(declare-fun m!342945 () Bool)

(assert (=> b!270789 m!342945))

(declare-fun m!342947 () Bool)

(assert (=> b!270789 m!342947))

(assert (=> b!270789 m!339001))

(assert (=> b!270789 m!342939))

(declare-fun m!342949 () Bool)

(assert (=> b!270789 m!342949))

(assert (=> b!270789 m!342933))

(declare-fun m!342951 () Bool)

(assert (=> b!270789 m!342951))

(assert (=> b!270789 m!339001))

(declare-fun m!342953 () Bool)

(assert (=> b!270789 m!342953))

(declare-fun m!342955 () Bool)

(assert (=> b!270789 m!342955))

(declare-fun m!342957 () Bool)

(assert (=> b!270789 m!342957))

(declare-fun m!342959 () Bool)

(assert (=> b!270789 m!342959))

(declare-fun m!342961 () Bool)

(assert (=> b!270789 m!342961))

(declare-fun m!342963 () Bool)

(assert (=> b!270789 m!342963))

(declare-fun m!342965 () Bool)

(assert (=> b!270789 m!342965))

(declare-fun m!342967 () Bool)

(assert (=> b!270789 m!342967))

(assert (=> b!270789 m!342939))

(declare-fun m!342969 () Bool)

(assert (=> b!270789 m!342969))

(declare-fun m!342971 () Bool)

(assert (=> b!270789 m!342971))

(assert (=> b!270789 m!342971))

(declare-fun m!342973 () Bool)

(assert (=> b!270789 m!342973))

(assert (=> b!270789 m!342941))

(declare-fun m!342975 () Bool)

(assert (=> b!270789 m!342975))

(declare-fun m!342977 () Bool)

(assert (=> b!270789 m!342977))

(assert (=> b!270789 m!342975))

(assert (=> b!270789 m!342963))

(declare-fun m!342979 () Bool)

(assert (=> b!270789 m!342979))

(assert (=> b!270789 m!342925))

(assert (=> b!270789 m!342961))

(assert (=> b!270789 m!342945))

(assert (=> b!270789 m!339703))

(assert (=> b!270789 m!342961))

(declare-fun m!342981 () Bool)

(assert (=> b!270789 m!342981))

(declare-fun m!342983 () Bool)

(assert (=> b!270792 m!342983))

(declare-fun m!342985 () Bool)

(assert (=> b!270792 m!342985))

(declare-fun m!342987 () Bool)

(assert (=> d!78836 m!342987))

(assert (=> d!78836 m!339001))

(assert (=> d!78836 m!339001))

(declare-fun m!342989 () Bool)

(assert (=> d!78836 m!342989))

(assert (=> d!78836 m!339001))

(assert (=> d!78836 m!342921))

(assert (=> d!78836 m!339001))

(assert (=> d!78836 m!339077))

(declare-fun m!342991 () Bool)

(assert (=> d!78836 m!342991))

(declare-fun m!342993 () Bool)

(assert (=> d!78836 m!342993))

(declare-fun m!342995 () Bool)

(assert (=> d!78836 m!342995))

(assert (=> d!78836 m!342993))

(assert (=> d!78836 m!339703))

(declare-fun m!342997 () Bool)

(assert (=> d!78836 m!342997))

(declare-fun m!342999 () Bool)

(assert (=> b!270790 m!342999))

(assert (=> b!270790 m!339001))

(assert (=> b!270790 m!342921))

(declare-fun m!343001 () Bool)

(assert (=> b!270790 m!343001))

(assert (=> d!77976 d!78836))

(declare-fun e!168207 () List!3827)

(declare-fun b!270799 () Bool)

(assert (=> b!270799 (= e!168207 (++!994 (list!1561 (left!3139 (c!50914 (printWithSeparatorTokenWhenNeededRec!290 thiss!17480 rules!1920 lt!110395 separatorToken!170 0)))) (list!1561 (right!3469 (c!50914 (printWithSeparatorTokenWhenNeededRec!290 thiss!17480 rules!1920 lt!110395 separatorToken!170 0))))))))

(declare-fun c!51351 () Bool)

(declare-fun d!78908 () Bool)

(assert (=> d!78908 (= c!51351 ((_ is Empty!1280) (c!50914 (printWithSeparatorTokenWhenNeededRec!290 thiss!17480 rules!1920 lt!110395 separatorToken!170 0))))))

(declare-fun e!168206 () List!3827)

(assert (=> d!78908 (= (list!1561 (c!50914 (printWithSeparatorTokenWhenNeededRec!290 thiss!17480 rules!1920 lt!110395 separatorToken!170 0))) e!168206)))

(declare-fun b!270796 () Bool)

(assert (=> b!270796 (= e!168206 Nil!3817)))

(declare-fun b!270798 () Bool)

(assert (=> b!270798 (= e!168207 (list!1564 (xs!3879 (c!50914 (printWithSeparatorTokenWhenNeededRec!290 thiss!17480 rules!1920 lt!110395 separatorToken!170 0)))))))

(declare-fun b!270797 () Bool)

(assert (=> b!270797 (= e!168206 e!168207)))

(declare-fun c!51352 () Bool)

(assert (=> b!270797 (= c!51352 ((_ is Leaf!1984) (c!50914 (printWithSeparatorTokenWhenNeededRec!290 thiss!17480 rules!1920 lt!110395 separatorToken!170 0))))))

(assert (= (and d!78908 c!51351) b!270796))

(assert (= (and d!78908 (not c!51351)) b!270797))

(assert (= (and b!270797 c!51352) b!270798))

(assert (= (and b!270797 (not c!51352)) b!270799))

(declare-fun m!343003 () Bool)

(assert (=> b!270799 m!343003))

(declare-fun m!343005 () Bool)

(assert (=> b!270799 m!343005))

(assert (=> b!270799 m!343003))

(assert (=> b!270799 m!343005))

(declare-fun m!343007 () Bool)

(assert (=> b!270799 m!343007))

(declare-fun m!343009 () Bool)

(assert (=> b!270798 m!343009))

(assert (=> d!78108 d!78908))

(declare-fun d!78910 () Bool)

(declare-fun e!168208 () Bool)

(assert (=> d!78910 e!168208))

(declare-fun res!123709 () Bool)

(assert (=> d!78910 (=> (not res!123709) (not e!168208))))

(assert (=> d!78910 (= res!123709 (appendAssocInst!62 (c!50914 call!14704) (c!50914 lt!110671)))))

(declare-fun lt!111569 () BalanceConc!2568)

(assert (=> d!78910 (= lt!111569 (BalanceConc!2569 (++!997 (c!50914 call!14704) (c!50914 lt!110671))))))

(assert (=> d!78910 (= (++!996 call!14704 lt!110671) lt!111569)))

(declare-fun b!270801 () Bool)

(declare-fun res!123710 () Bool)

(assert (=> b!270801 (=> (not res!123710) (not e!168208))))

(assert (=> b!270801 (= res!123710 (<= (height!153 (++!997 (c!50914 call!14704) (c!50914 lt!110671))) (+ (max!0 (height!153 (c!50914 call!14704)) (height!153 (c!50914 lt!110671))) 1)))))

(declare-fun b!270803 () Bool)

(assert (=> b!270803 (= e!168208 (= (list!1557 lt!111569) (++!994 (list!1557 call!14704) (list!1557 lt!110671))))))

(declare-fun b!270800 () Bool)

(declare-fun res!123707 () Bool)

(assert (=> b!270800 (=> (not res!123707) (not e!168208))))

(assert (=> b!270800 (= res!123707 (isBalanced!350 (++!997 (c!50914 call!14704) (c!50914 lt!110671))))))

(declare-fun b!270802 () Bool)

(declare-fun res!123708 () Bool)

(assert (=> b!270802 (=> (not res!123708) (not e!168208))))

(assert (=> b!270802 (= res!123708 (>= (height!153 (++!997 (c!50914 call!14704) (c!50914 lt!110671))) (max!0 (height!153 (c!50914 call!14704)) (height!153 (c!50914 lt!110671)))))))

(assert (= (and d!78910 res!123709) b!270800))

(assert (= (and b!270800 res!123707) b!270801))

(assert (= (and b!270801 res!123710) b!270802))

(assert (= (and b!270802 res!123708) b!270803))

(declare-fun m!343011 () Bool)

(assert (=> b!270801 m!343011))

(declare-fun m!343013 () Bool)

(assert (=> b!270801 m!343013))

(assert (=> b!270801 m!343011))

(declare-fun m!343015 () Bool)

(assert (=> b!270801 m!343015))

(assert (=> b!270801 m!341627))

(declare-fun m!343017 () Bool)

(assert (=> b!270801 m!343017))

(assert (=> b!270801 m!343015))

(assert (=> b!270801 m!341627))

(assert (=> b!270800 m!343011))

(assert (=> b!270800 m!343011))

(declare-fun m!343019 () Bool)

(assert (=> b!270800 m!343019))

(declare-fun m!343021 () Bool)

(assert (=> b!270803 m!343021))

(declare-fun m!343023 () Bool)

(assert (=> b!270803 m!343023))

(assert (=> b!270803 m!339779))

(assert (=> b!270803 m!343023))

(assert (=> b!270803 m!339779))

(declare-fun m!343025 () Bool)

(assert (=> b!270803 m!343025))

(assert (=> b!270802 m!343011))

(assert (=> b!270802 m!343013))

(assert (=> b!270802 m!343011))

(assert (=> b!270802 m!343015))

(assert (=> b!270802 m!341627))

(assert (=> b!270802 m!343017))

(assert (=> b!270802 m!343015))

(assert (=> b!270802 m!341627))

(declare-fun m!343027 () Bool)

(assert (=> d!78910 m!343027))

(assert (=> d!78910 m!343011))

(assert (=> b!269427 d!78910))

(declare-fun e!168210 () Bool)

(declare-fun b!270807 () Bool)

(declare-fun lt!111570 () List!3827)

(assert (=> b!270807 (= e!168210 (or (not (= lt!110517 Nil!3817)) (= lt!111570 call!14679)))))

(declare-fun b!270805 () Bool)

(declare-fun e!168209 () List!3827)

(assert (=> b!270805 (= e!168209 (Cons!3817 (h!9214 call!14679) (++!994 (t!38153 call!14679) lt!110517)))))

(declare-fun d!78912 () Bool)

(assert (=> d!78912 e!168210))

(declare-fun res!123712 () Bool)

(assert (=> d!78912 (=> (not res!123712) (not e!168210))))

(assert (=> d!78912 (= res!123712 (= (content!547 lt!111570) ((_ map or) (content!547 call!14679) (content!547 lt!110517))))))

(assert (=> d!78912 (= lt!111570 e!168209)))

(declare-fun c!51353 () Bool)

(assert (=> d!78912 (= c!51353 ((_ is Nil!3817) call!14679))))

(assert (=> d!78912 (= (++!994 call!14679 lt!110517) lt!111570)))

(declare-fun b!270804 () Bool)

(assert (=> b!270804 (= e!168209 lt!110517)))

(declare-fun b!270806 () Bool)

(declare-fun res!123711 () Bool)

(assert (=> b!270806 (=> (not res!123711) (not e!168210))))

(assert (=> b!270806 (= res!123711 (= (size!3043 lt!111570) (+ (size!3043 call!14679) (size!3043 lt!110517))))))

(assert (= (and d!78912 c!51353) b!270804))

(assert (= (and d!78912 (not c!51353)) b!270805))

(assert (= (and d!78912 res!123712) b!270806))

(assert (= (and b!270806 res!123711) b!270807))

(declare-fun m!343029 () Bool)

(assert (=> b!270805 m!343029))

(declare-fun m!343031 () Bool)

(assert (=> d!78912 m!343031))

(declare-fun m!343033 () Bool)

(assert (=> d!78912 m!343033))

(assert (=> d!78912 m!340511))

(declare-fun m!343035 () Bool)

(assert (=> b!270806 m!343035))

(declare-fun m!343037 () Bool)

(assert (=> b!270806 m!343037))

(assert (=> b!270806 m!340517))

(assert (=> b!269167 d!78912))

(assert (=> b!269292 d!78420))

(declare-fun d!78914 () Bool)

(assert (=> d!78914 (= (isEmpty!2420 (originalCharacters!772 separatorToken!170)) ((_ is Nil!3817) (originalCharacters!772 separatorToken!170)))))

(assert (=> d!78106 d!78914))

(declare-fun b!270811 () Bool)

(declare-fun e!168212 () Bool)

(declare-fun lt!111571 () List!3827)

(assert (=> b!270811 (= e!168212 (or (not (= (++!994 lt!110394 lt!110403) Nil!3817)) (= lt!111571 lt!110396)))))

(declare-fun e!168211 () List!3827)

(declare-fun b!270809 () Bool)

(assert (=> b!270809 (= e!168211 (Cons!3817 (h!9214 lt!110396) (++!994 (t!38153 lt!110396) (++!994 lt!110394 lt!110403))))))

(declare-fun d!78916 () Bool)

(assert (=> d!78916 e!168212))

(declare-fun res!123714 () Bool)

(assert (=> d!78916 (=> (not res!123714) (not e!168212))))

(assert (=> d!78916 (= res!123714 (= (content!547 lt!111571) ((_ map or) (content!547 lt!110396) (content!547 (++!994 lt!110394 lt!110403)))))))

(assert (=> d!78916 (= lt!111571 e!168211)))

(declare-fun c!51354 () Bool)

(assert (=> d!78916 (= c!51354 ((_ is Nil!3817) lt!110396))))

(assert (=> d!78916 (= (++!994 lt!110396 (++!994 lt!110394 lt!110403)) lt!111571)))

(declare-fun b!270808 () Bool)

(assert (=> b!270808 (= e!168211 (++!994 lt!110394 lt!110403))))

(declare-fun b!270810 () Bool)

(declare-fun res!123713 () Bool)

(assert (=> b!270810 (=> (not res!123713) (not e!168212))))

(assert (=> b!270810 (= res!123713 (= (size!3043 lt!111571) (+ (size!3043 lt!110396) (size!3043 (++!994 lt!110394 lt!110403)))))))

(assert (= (and d!78916 c!51354) b!270808))

(assert (= (and d!78916 (not c!51354)) b!270809))

(assert (= (and d!78916 res!123714) b!270810))

(assert (= (and b!270810 res!123713) b!270811))

(assert (=> b!270809 m!338959))

(declare-fun m!343039 () Bool)

(assert (=> b!270809 m!343039))

(declare-fun m!343041 () Bool)

(assert (=> d!78916 m!343041))

(assert (=> d!78916 m!339377))

(assert (=> d!78916 m!338959))

(declare-fun m!343043 () Bool)

(assert (=> d!78916 m!343043))

(declare-fun m!343045 () Bool)

(assert (=> b!270810 m!343045))

(assert (=> b!270810 m!339383))

(assert (=> b!270810 m!338959))

(declare-fun m!343047 () Bool)

(assert (=> b!270810 m!343047))

(assert (=> d!78082 d!78916))

(assert (=> d!78082 d!78084))

(declare-fun d!78918 () Bool)

(assert (=> d!78918 (= (++!994 (++!994 lt!110396 lt!110394) lt!110403) (++!994 lt!110396 (++!994 lt!110394 lt!110403)))))

(assert (=> d!78918 true))

(declare-fun _$52!746 () Unit!4874)

(assert (=> d!78918 (= (choose!2447 lt!110396 lt!110394 lt!110403) _$52!746)))

(declare-fun bs!30144 () Bool)

(assert (= bs!30144 d!78918))

(assert (=> bs!30144 m!338945))

(assert (=> bs!30144 m!338945))

(assert (=> bs!30144 m!338947))

(assert (=> bs!30144 m!338959))

(assert (=> bs!30144 m!338959))

(assert (=> bs!30144 m!339633))

(assert (=> d!78082 d!78918))

(assert (=> d!78082 d!78074))

(assert (=> d!78082 d!78076))

(declare-fun d!78920 () Bool)

(assert (=> d!78920 (= (list!1560 (_1!2353 lt!110416)) (list!1563 (c!50916 (_1!2353 lt!110416))))))

(declare-fun bs!30145 () Bool)

(assert (= bs!30145 d!78920))

(declare-fun m!343049 () Bool)

(assert (=> bs!30145 m!343049))

(assert (=> b!269027 d!78920))

(assert (=> b!269027 d!78526))

(assert (=> b!269027 d!78534))

(declare-fun d!78922 () Bool)

(declare-fun e!168213 () Bool)

(assert (=> d!78922 e!168213))

(declare-fun res!123717 () Bool)

(assert (=> d!78922 (=> (not res!123717) (not e!168213))))

(assert (=> d!78922 (= res!123717 (appendAssocInst!62 (c!50914 (charsOf!374 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0))) (c!50914 lt!110609)))))

(declare-fun lt!111572 () BalanceConc!2568)

(assert (=> d!78922 (= lt!111572 (BalanceConc!2569 (++!997 (c!50914 (charsOf!374 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0))) (c!50914 lt!110609))))))

(assert (=> d!78922 (= (++!996 (charsOf!374 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0)) lt!110609) lt!111572)))

(declare-fun b!270813 () Bool)

(declare-fun res!123718 () Bool)

(assert (=> b!270813 (=> (not res!123718) (not e!168213))))

(assert (=> b!270813 (= res!123718 (<= (height!153 (++!997 (c!50914 (charsOf!374 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0))) (c!50914 lt!110609))) (+ (max!0 (height!153 (c!50914 (charsOf!374 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0)))) (height!153 (c!50914 lt!110609))) 1)))))

(declare-fun b!270815 () Bool)

(assert (=> b!270815 (= e!168213 (= (list!1557 lt!111572) (++!994 (list!1557 (charsOf!374 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0))) (list!1557 lt!110609))))))

(declare-fun b!270812 () Bool)

(declare-fun res!123715 () Bool)

(assert (=> b!270812 (=> (not res!123715) (not e!168213))))

(assert (=> b!270812 (= res!123715 (isBalanced!350 (++!997 (c!50914 (charsOf!374 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0))) (c!50914 lt!110609))))))

(declare-fun b!270814 () Bool)

(declare-fun res!123716 () Bool)

(assert (=> b!270814 (=> (not res!123716) (not e!168213))))

(assert (=> b!270814 (= res!123716 (>= (height!153 (++!997 (c!50914 (charsOf!374 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0))) (c!50914 lt!110609))) (max!0 (height!153 (c!50914 (charsOf!374 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0)))) (height!153 (c!50914 lt!110609)))))))

(assert (= (and d!78922 res!123717) b!270812))

(assert (= (and b!270812 res!123715) b!270813))

(assert (= (and b!270813 res!123718) b!270814))

(assert (= (and b!270814 res!123716) b!270815))

(declare-fun m!343051 () Bool)

(assert (=> b!270813 m!343051))

(declare-fun m!343053 () Bool)

(assert (=> b!270813 m!343053))

(assert (=> b!270813 m!343051))

(declare-fun m!343055 () Bool)

(assert (=> b!270813 m!343055))

(assert (=> b!270813 m!340089))

(declare-fun m!343057 () Bool)

(assert (=> b!270813 m!343057))

(assert (=> b!270813 m!343055))

(assert (=> b!270813 m!340089))

(assert (=> b!270812 m!343051))

(assert (=> b!270812 m!343051))

(declare-fun m!343059 () Bool)

(assert (=> b!270812 m!343059))

(declare-fun m!343061 () Bool)

(assert (=> b!270815 m!343061))

(assert (=> b!270815 m!339529))

(declare-fun m!343063 () Bool)

(assert (=> b!270815 m!343063))

(assert (=> b!270815 m!339539))

(assert (=> b!270815 m!343063))

(assert (=> b!270815 m!339539))

(declare-fun m!343065 () Bool)

(assert (=> b!270815 m!343065))

(assert (=> b!270814 m!343051))

(assert (=> b!270814 m!343053))

(assert (=> b!270814 m!343051))

(assert (=> b!270814 m!343055))

(assert (=> b!270814 m!340089))

(assert (=> b!270814 m!343057))

(assert (=> b!270814 m!343055))

(assert (=> b!270814 m!340089))

(declare-fun m!343067 () Bool)

(assert (=> d!78922 m!343067))

(assert (=> d!78922 m!343051))

(assert (=> b!269296 d!78922))

(declare-fun b!270816 () Bool)

(declare-fun e!168217 () Bool)

(declare-fun e!168219 () Bool)

(assert (=> b!270816 (= e!168217 e!168219)))

(declare-fun res!123721 () Bool)

(assert (=> b!270816 (=> (not res!123721) (not e!168219))))

(declare-fun lt!111578 () Option!809)

(assert (=> b!270816 (= res!123721 (= (_1!2359 (get!1266 lt!111578)) (_1!2358 (get!1263 (maxPrefixZipper!111 thiss!17480 rules!1920 (list!1557 (++!996 (charsOf!374 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0)) lt!110609)))))))))

(declare-fun b!270817 () Bool)

(declare-fun e!168214 () Option!809)

(declare-fun lt!111574 () Option!809)

(declare-fun lt!111577 () Option!809)

(assert (=> b!270817 (= e!168214 (ite (and ((_ is None!808) lt!111574) ((_ is None!808) lt!111577)) None!808 (ite ((_ is None!808) lt!111577) lt!111574 (ite ((_ is None!808) lt!111574) lt!111577 (ite (>= (size!3037 (_1!2359 (v!14677 lt!111574))) (size!3037 (_1!2359 (v!14677 lt!111577)))) lt!111574 lt!111577)))))))

(declare-fun call!14792 () Option!809)

(assert (=> b!270817 (= lt!111574 call!14792)))

(assert (=> b!270817 (= lt!111577 (maxPrefixZipperSequence!296 thiss!17480 (t!38156 rules!1920) (++!996 (charsOf!374 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0)) lt!110609)))))

(declare-fun e!168216 () Bool)

(declare-fun b!270818 () Bool)

(assert (=> b!270818 (= e!168216 (= (list!1557 (_2!2359 (get!1266 lt!111578))) (_2!2358 (get!1263 (maxPrefix!333 thiss!17480 rules!1920 (list!1557 (++!996 (charsOf!374 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0)) lt!110609)))))))))

(declare-fun b!270819 () Bool)

(assert (=> b!270819 (= e!168214 call!14792)))

(declare-fun b!270820 () Bool)

(assert (=> b!270820 (= e!168219 (= (list!1557 (_2!2359 (get!1266 lt!111578))) (_2!2358 (get!1263 (maxPrefixZipper!111 thiss!17480 rules!1920 (list!1557 (++!996 (charsOf!374 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0)) lt!110609)))))))))

(declare-fun b!270821 () Bool)

(declare-fun e!168218 () Bool)

(declare-fun e!168215 () Bool)

(assert (=> b!270821 (= e!168218 e!168215)))

(declare-fun res!123724 () Bool)

(assert (=> b!270821 (=> res!123724 e!168215)))

(assert (=> b!270821 (= res!123724 (not (isDefined!654 lt!111578)))))

(declare-fun b!270822 () Bool)

(assert (=> b!270822 (= e!168215 e!168216)))

(declare-fun res!123719 () Bool)

(assert (=> b!270822 (=> (not res!123719) (not e!168216))))

(assert (=> b!270822 (= res!123719 (= (_1!2359 (get!1266 lt!111578)) (_1!2358 (get!1263 (maxPrefix!333 thiss!17480 rules!1920 (list!1557 (++!996 (charsOf!374 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0)) lt!110609)))))))))

(declare-fun b!270823 () Bool)

(declare-fun res!123722 () Bool)

(assert (=> b!270823 (=> (not res!123722) (not e!168218))))

(assert (=> b!270823 (= res!123722 e!168217)))

(declare-fun res!123720 () Bool)

(assert (=> b!270823 (=> res!123720 e!168217)))

(assert (=> b!270823 (= res!123720 (not (isDefined!654 lt!111578)))))

(declare-fun d!78924 () Bool)

(assert (=> d!78924 e!168218))

(declare-fun res!123723 () Bool)

(assert (=> d!78924 (=> (not res!123723) (not e!168218))))

(assert (=> d!78924 (= res!123723 (= (isDefined!654 lt!111578) (isDefined!651 (maxPrefixZipper!111 thiss!17480 rules!1920 (list!1557 (++!996 (charsOf!374 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0)) lt!110609))))))))

(assert (=> d!78924 (= lt!111578 e!168214)))

(declare-fun c!51355 () Bool)

(assert (=> d!78924 (= c!51355 (and ((_ is Cons!3820) rules!1920) ((_ is Nil!3820) (t!38156 rules!1920))))))

(declare-fun lt!111579 () Unit!4874)

(declare-fun lt!111575 () Unit!4874)

(assert (=> d!78924 (= lt!111579 lt!111575)))

(declare-fun lt!111576 () List!3827)

(declare-fun lt!111573 () List!3827)

(assert (=> d!78924 (isPrefix!397 lt!111576 lt!111573)))

(assert (=> d!78924 (= lt!111575 (lemmaIsPrefixRefl!207 lt!111576 lt!111573))))

(assert (=> d!78924 (= lt!111573 (list!1557 (++!996 (charsOf!374 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0)) lt!110609)))))

(assert (=> d!78924 (= lt!111576 (list!1557 (++!996 (charsOf!374 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0)) lt!110609)))))

(assert (=> d!78924 (rulesValidInductive!202 thiss!17480 rules!1920)))

(assert (=> d!78924 (= (maxPrefixZipperSequence!296 thiss!17480 rules!1920 (++!996 (charsOf!374 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0)) lt!110609)) lt!111578)))

(declare-fun bm!14787 () Bool)

(assert (=> bm!14787 (= call!14792 (maxPrefixOneRuleZipperSequence!112 thiss!17480 (h!9217 rules!1920) (++!996 (charsOf!374 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0)) lt!110609)))))

(assert (= (and d!78924 c!51355) b!270819))

(assert (= (and d!78924 (not c!51355)) b!270817))

(assert (= (or b!270819 b!270817) bm!14787))

(assert (= (and d!78924 res!123723) b!270823))

(assert (= (and b!270823 (not res!123720)) b!270816))

(assert (= (and b!270816 res!123721) b!270820))

(assert (= (and b!270823 res!123722) b!270821))

(assert (= (and b!270821 (not res!123724)) b!270822))

(assert (= (and b!270822 res!123719) b!270818))

(assert (=> bm!14787 m!339525))

(declare-fun m!343069 () Bool)

(assert (=> bm!14787 m!343069))

(declare-fun m!343071 () Bool)

(assert (=> b!270816 m!343071))

(assert (=> b!270816 m!339525))

(declare-fun m!343073 () Bool)

(assert (=> b!270816 m!343073))

(assert (=> b!270816 m!343073))

(declare-fun m!343075 () Bool)

(assert (=> b!270816 m!343075))

(assert (=> b!270816 m!343075))

(declare-fun m!343077 () Bool)

(assert (=> b!270816 m!343077))

(declare-fun m!343079 () Bool)

(assert (=> b!270823 m!343079))

(assert (=> b!270822 m!343071))

(assert (=> b!270822 m!339525))

(assert (=> b!270822 m!343073))

(assert (=> b!270822 m!343073))

(declare-fun m!343081 () Bool)

(assert (=> b!270822 m!343081))

(assert (=> b!270822 m!343081))

(declare-fun m!343083 () Bool)

(assert (=> b!270822 m!343083))

(assert (=> b!270821 m!343079))

(assert (=> d!78924 m!343073))

(assert (=> d!78924 m!343075))

(assert (=> d!78924 m!343075))

(declare-fun m!343085 () Bool)

(assert (=> d!78924 m!343085))

(declare-fun m!343087 () Bool)

(assert (=> d!78924 m!343087))

(assert (=> d!78924 m!343079))

(assert (=> d!78924 m!340485))

(declare-fun m!343089 () Bool)

(assert (=> d!78924 m!343089))

(assert (=> d!78924 m!339525))

(assert (=> d!78924 m!343073))

(assert (=> b!270818 m!343073))

(assert (=> b!270818 m!343081))

(assert (=> b!270818 m!343071))

(assert (=> b!270818 m!343081))

(assert (=> b!270818 m!343083))

(declare-fun m!343091 () Bool)

(assert (=> b!270818 m!343091))

(assert (=> b!270818 m!339525))

(assert (=> b!270818 m!343073))

(assert (=> b!270817 m!339525))

(declare-fun m!343093 () Bool)

(assert (=> b!270817 m!343093))

(assert (=> b!270820 m!343071))

(assert (=> b!270820 m!343075))

(assert (=> b!270820 m!343077))

(assert (=> b!270820 m!343073))

(assert (=> b!270820 m!343075))

(assert (=> b!270820 m!343091))

(assert (=> b!270820 m!339525))

(assert (=> b!270820 m!343073))

(assert (=> b!269296 d!78924))

(declare-fun d!78926 () Bool)

(assert (=> d!78926 (= (head!886 (drop!215 lt!110608 0)) (apply!766 lt!110608 0))))

(declare-fun lt!111580 () Unit!4874)

(assert (=> d!78926 (= lt!111580 (choose!2451 lt!110608 0))))

(declare-fun e!168220 () Bool)

(assert (=> d!78926 e!168220))

(declare-fun res!123725 () Bool)

(assert (=> d!78926 (=> (not res!123725) (not e!168220))))

(assert (=> d!78926 (= res!123725 (>= 0 0))))

(assert (=> d!78926 (= (lemmaDropApply!202 lt!110608 0) lt!111580)))

(declare-fun b!270824 () Bool)

(assert (=> b!270824 (= e!168220 (< 0 (size!3046 lt!110608)))))

(assert (= (and d!78926 res!123725) b!270824))

(assert (=> d!78926 m!339521))

(assert (=> d!78926 m!339521))

(assert (=> d!78926 m!339523))

(assert (=> d!78926 m!339505))

(declare-fun m!343095 () Bool)

(assert (=> d!78926 m!343095))

(declare-fun m!343097 () Bool)

(assert (=> b!270824 m!343097))

(assert (=> b!269296 d!78926))

(declare-fun b!270825 () Bool)

(declare-fun e!168221 () Int)

(declare-fun e!168223 () Int)

(assert (=> b!270825 (= e!168221 e!168223)))

(declare-fun c!51359 () Bool)

(declare-fun call!14793 () Int)

(assert (=> b!270825 (= c!51359 (>= 0 call!14793))))

(declare-fun b!270826 () Bool)

(declare-fun e!168222 () List!3829)

(assert (=> b!270826 (= e!168222 Nil!3819)))

(declare-fun b!270827 () Bool)

(declare-fun e!168224 () List!3829)

(assert (=> b!270827 (= e!168222 e!168224)))

(declare-fun c!51356 () Bool)

(assert (=> b!270827 (= c!51356 (<= 0 0))))

(declare-fun b!270828 () Bool)

(assert (=> b!270828 (= e!168223 0)))

(declare-fun b!270829 () Bool)

(declare-fun e!168225 () Bool)

(declare-fun lt!111581 () List!3829)

(assert (=> b!270829 (= e!168225 (= (size!3046 lt!111581) e!168221))))

(declare-fun c!51358 () Bool)

(assert (=> b!270829 (= c!51358 (<= 0 0))))

(declare-fun b!270830 () Bool)

(assert (=> b!270830 (= e!168221 call!14793)))

(declare-fun b!270831 () Bool)

(assert (=> b!270831 (= e!168224 (drop!215 (t!38155 lt!110607) (- 0 1)))))

(declare-fun d!78928 () Bool)

(assert (=> d!78928 e!168225))

(declare-fun res!123726 () Bool)

(assert (=> d!78928 (=> (not res!123726) (not e!168225))))

(assert (=> d!78928 (= res!123726 (= ((_ map implies) (content!548 lt!111581) (content!548 lt!110607)) ((as const (InoxSet Token!1202)) true)))))

(assert (=> d!78928 (= lt!111581 e!168222)))

(declare-fun c!51357 () Bool)

(assert (=> d!78928 (= c!51357 ((_ is Nil!3819) lt!110607))))

(assert (=> d!78928 (= (drop!215 lt!110607 0) lt!111581)))

(declare-fun b!270832 () Bool)

(assert (=> b!270832 (= e!168223 (- call!14793 0))))

(declare-fun b!270833 () Bool)

(assert (=> b!270833 (= e!168224 lt!110607)))

(declare-fun bm!14788 () Bool)

(assert (=> bm!14788 (= call!14793 (size!3046 lt!110607))))

(assert (= (and d!78928 c!51357) b!270826))

(assert (= (and d!78928 (not c!51357)) b!270827))

(assert (= (and b!270827 c!51356) b!270833))

(assert (= (and b!270827 (not c!51356)) b!270831))

(assert (= (and d!78928 res!123726) b!270829))

(assert (= (and b!270829 c!51358) b!270830))

(assert (= (and b!270829 (not c!51358)) b!270825))

(assert (= (and b!270825 c!51359) b!270828))

(assert (= (and b!270825 (not c!51359)) b!270832))

(assert (= (or b!270830 b!270825 b!270832) bm!14788))

(declare-fun m!343099 () Bool)

(assert (=> b!270829 m!343099))

(declare-fun m!343101 () Bool)

(assert (=> b!270831 m!343101))

(declare-fun m!343103 () Bool)

(assert (=> d!78928 m!343103))

(declare-fun m!343105 () Bool)

(assert (=> d!78928 m!343105))

(declare-fun m!343107 () Bool)

(assert (=> bm!14788 m!343107))

(assert (=> b!269296 d!78928))

(declare-fun bs!30146 () Bool)

(declare-fun d!78930 () Bool)

(assert (= bs!30146 (and d!78930 d!78038)))

(declare-fun lambda!9156 () Int)

(assert (=> bs!30146 (= lambda!9156 lambda!9100)))

(declare-fun bs!30147 () Bool)

(assert (= bs!30147 (and d!78930 b!269845)))

(assert (=> bs!30147 (not (= lambda!9156 lambda!9125))))

(declare-fun bs!30148 () Bool)

(assert (= bs!30148 (and d!78930 d!78582)))

(assert (=> bs!30148 (= lambda!9156 lambda!9138)))

(declare-fun bs!30149 () Bool)

(assert (= bs!30149 (and d!78930 b!269430)))

(assert (=> bs!30149 (not (= lambda!9156 lambda!9113))))

(declare-fun bs!30150 () Bool)

(assert (= bs!30150 (and d!78930 b!269171)))

(assert (=> bs!30150 (not (= lambda!9156 lambda!9094))))

(declare-fun bs!30151 () Bool)

(assert (= bs!30151 (and d!78930 d!78088)))

(assert (=> bs!30151 (not (= lambda!9156 lambda!9111))))

(declare-fun bs!30152 () Bool)

(assert (= bs!30152 (and d!78930 b!269296)))

(assert (=> bs!30152 (not (= lambda!9156 lambda!9101))))

(declare-fun bs!30153 () Bool)

(assert (= bs!30153 (and d!78930 d!78110)))

(assert (=> bs!30153 (= lambda!9156 lambda!9112)))

(declare-fun bs!30154 () Bool)

(assert (= bs!30154 (and d!78930 b!268954)))

(assert (=> bs!30154 (= lambda!9156 lambda!9080)))

(declare-fun bs!30155 () Bool)

(assert (= bs!30155 (and d!78930 d!78346)))

(assert (=> bs!30155 (not (= lambda!9156 lambda!9128))))

(declare-fun bs!30156 () Bool)

(assert (= bs!30156 (and d!78930 b!269986)))

(assert (=> bs!30156 (not (= lambda!9156 lambda!9132))))

(declare-fun bs!30157 () Bool)

(assert (= bs!30157 (and d!78930 b!270278)))

(assert (=> bs!30157 (not (= lambda!9156 lambda!9139))))

(declare-fun bs!30158 () Bool)

(assert (= bs!30158 (and d!78930 b!269439)))

(assert (=> bs!30158 (not (= lambda!9156 lambda!9114))))

(declare-fun bs!30159 () Bool)

(declare-fun b!270841 () Bool)

(assert (= bs!30159 (and b!270841 d!78038)))

(declare-fun lambda!9157 () Int)

(assert (=> bs!30159 (not (= lambda!9157 lambda!9100))))

(declare-fun bs!30160 () Bool)

(assert (= bs!30160 (and b!270841 b!269845)))

(assert (=> bs!30160 (= lambda!9157 lambda!9125)))

(declare-fun bs!30161 () Bool)

(assert (= bs!30161 (and b!270841 d!78582)))

(assert (=> bs!30161 (not (= lambda!9157 lambda!9138))))

(declare-fun bs!30162 () Bool)

(assert (= bs!30162 (and b!270841 b!269430)))

(assert (=> bs!30162 (= lambda!9157 lambda!9113)))

(declare-fun bs!30163 () Bool)

(assert (= bs!30163 (and b!270841 b!269171)))

(assert (=> bs!30163 (= lambda!9157 lambda!9094)))

(declare-fun bs!30164 () Bool)

(assert (= bs!30164 (and b!270841 d!78088)))

(assert (=> bs!30164 (= lambda!9157 lambda!9111)))

(declare-fun bs!30165 () Bool)

(assert (= bs!30165 (and b!270841 b!269296)))

(assert (=> bs!30165 (= lambda!9157 lambda!9101)))

(declare-fun bs!30166 () Bool)

(assert (= bs!30166 (and b!270841 d!78930)))

(assert (=> bs!30166 (not (= lambda!9157 lambda!9156))))

(declare-fun bs!30167 () Bool)

(assert (= bs!30167 (and b!270841 d!78110)))

(assert (=> bs!30167 (not (= lambda!9157 lambda!9112))))

(declare-fun bs!30168 () Bool)

(assert (= bs!30168 (and b!270841 b!268954)))

(assert (=> bs!30168 (not (= lambda!9157 lambda!9080))))

(declare-fun bs!30169 () Bool)

(assert (= bs!30169 (and b!270841 d!78346)))

(assert (=> bs!30169 (= lambda!9157 lambda!9128)))

(declare-fun bs!30170 () Bool)

(assert (= bs!30170 (and b!270841 b!269986)))

(assert (=> bs!30170 (= lambda!9157 lambda!9132)))

(declare-fun bs!30171 () Bool)

(assert (= bs!30171 (and b!270841 b!270278)))

(assert (=> bs!30171 (= lambda!9157 lambda!9139)))

(declare-fun bs!30172 () Bool)

(assert (= bs!30172 (and b!270841 b!269439)))

(assert (=> bs!30172 (= lambda!9157 lambda!9114)))

(declare-fun b!270845 () Bool)

(declare-fun e!168234 () Bool)

(assert (=> b!270845 (= e!168234 true)))

(declare-fun b!270844 () Bool)

(declare-fun e!168233 () Bool)

(assert (=> b!270844 (= e!168233 e!168234)))

(declare-fun b!270843 () Bool)

(declare-fun e!168232 () Bool)

(assert (=> b!270843 (= e!168232 e!168233)))

(assert (=> b!270841 e!168232))

(assert (= b!270844 b!270845))

(assert (= b!270843 b!270844))

(assert (= (and b!270841 ((_ is Cons!3820) rules!1920)) b!270843))

(assert (=> b!270845 (< (dynLambda!1953 order!2933 (toValue!1464 (transformation!729 (h!9217 rules!1920)))) (dynLambda!1954 order!2935 lambda!9157))))

(assert (=> b!270845 (< (dynLambda!1955 order!2937 (toChars!1323 (transformation!729 (h!9217 rules!1920)))) (dynLambda!1954 order!2935 lambda!9157))))

(assert (=> b!270841 true))

(declare-fun b!270834 () Bool)

(declare-fun e!168231 () BalanceConc!2568)

(declare-fun call!14795 () BalanceConc!2568)

(assert (=> b!270834 (= e!168231 call!14795)))

(declare-fun b!270835 () Bool)

(declare-fun e!168230 () BalanceConc!2568)

(assert (=> b!270835 (= e!168230 (BalanceConc!2569 Empty!1280))))

(declare-fun bm!14789 () Bool)

(declare-fun c!51361 () Bool)

(declare-fun call!14794 () BalanceConc!2568)

(declare-fun call!14796 () Token!1202)

(declare-fun call!14797 () Token!1202)

(assert (=> bm!14789 (= call!14794 (charsOf!374 (ite c!51361 call!14796 call!14797)))))

(declare-fun b!270836 () Bool)

(declare-fun e!168227 () Bool)

(assert (=> b!270836 (= e!168227 (<= (+ 0 1) (size!3041 (seqFromList!826 (t!38155 tokens!465)))))))

(declare-fun b!270837 () Bool)

(declare-fun e!168228 () Bool)

(declare-fun lt!111591 () Option!809)

(assert (=> b!270837 (= e!168228 (= (_1!2359 (v!14677 lt!111591)) (apply!765 (seqFromList!826 (t!38155 tokens!465)) (+ 0 1))))))

(declare-fun b!270838 () Bool)

(declare-fun e!168229 () BalanceConc!2568)

(declare-fun lt!111595 () BalanceConc!2568)

(assert (=> b!270838 (= e!168229 (++!996 call!14795 lt!111595))))

(declare-fun b!270839 () Bool)

(declare-fun c!51362 () Bool)

(declare-fun e!168226 () Bool)

(assert (=> b!270839 (= c!51362 e!168226)))

(declare-fun res!123729 () Bool)

(assert (=> b!270839 (=> (not res!123729) (not e!168226))))

(assert (=> b!270839 (= res!123729 ((_ is Some!808) lt!111591))))

(assert (=> b!270839 (= e!168231 e!168229)))

(declare-fun bm!14790 () Bool)

(assert (=> bm!14790 (= call!14796 (apply!765 (seqFromList!826 (t!38155 tokens!465)) (+ 0 1)))))

(declare-fun lt!111589 () BalanceConc!2568)

(assert (=> d!78930 (= (list!1557 lt!111589) (printWithSeparatorTokenWhenNeededList!298 thiss!17480 rules!1920 (dropList!162 (seqFromList!826 (t!38155 tokens!465)) (+ 0 1)) separatorToken!170))))

(assert (=> d!78930 (= lt!111589 e!168230)))

(declare-fun c!51360 () Bool)

(assert (=> d!78930 (= c!51360 (>= (+ 0 1) (size!3041 (seqFromList!826 (t!38155 tokens!465)))))))

(declare-fun lt!111588 () Unit!4874)

(assert (=> d!78930 (= lt!111588 (lemmaContentSubsetPreservesForall!106 (list!1560 (seqFromList!826 (t!38155 tokens!465))) (dropList!162 (seqFromList!826 (t!38155 tokens!465)) (+ 0 1)) lambda!9156))))

(assert (=> d!78930 e!168227))

(declare-fun res!123727 () Bool)

(assert (=> d!78930 (=> (not res!123727) (not e!168227))))

(assert (=> d!78930 (= res!123727 (>= (+ 0 1) 0))))

(assert (=> d!78930 (= (printWithSeparatorTokenWhenNeededRec!290 thiss!17480 rules!1920 (seqFromList!826 (t!38155 tokens!465)) separatorToken!170 (+ 0 1)) lt!111589)))

(declare-fun b!270840 () Bool)

(assert (=> b!270840 (= e!168226 (not (= (_1!2359 (v!14677 lt!111591)) call!14796)))))

(assert (=> b!270841 (= e!168230 e!168231)))

(declare-fun lt!111594 () List!3829)

(assert (=> b!270841 (= lt!111594 (list!1560 (seqFromList!826 (t!38155 tokens!465))))))

(declare-fun lt!111587 () Unit!4874)

(assert (=> b!270841 (= lt!111587 (lemmaDropApply!202 lt!111594 (+ 0 1)))))

(assert (=> b!270841 (= (head!886 (drop!215 lt!111594 (+ 0 1))) (apply!766 lt!111594 (+ 0 1)))))

(declare-fun lt!111590 () Unit!4874)

(assert (=> b!270841 (= lt!111590 lt!111587)))

(declare-fun lt!111593 () List!3829)

(assert (=> b!270841 (= lt!111593 (list!1560 (seqFromList!826 (t!38155 tokens!465))))))

(declare-fun lt!111586 () Unit!4874)

(assert (=> b!270841 (= lt!111586 (lemmaDropTail!194 lt!111593 (+ 0 1)))))

(assert (=> b!270841 (= (tail!476 (drop!215 lt!111593 (+ 0 1))) (drop!215 lt!111593 (+ 0 1 1)))))

(declare-fun lt!111585 () Unit!4874)

(assert (=> b!270841 (= lt!111585 lt!111586)))

(declare-fun lt!111583 () Unit!4874)

(assert (=> b!270841 (= lt!111583 (forallContained!284 (list!1560 (seqFromList!826 (t!38155 tokens!465))) lambda!9157 (apply!765 (seqFromList!826 (t!38155 tokens!465)) (+ 0 1))))))

(assert (=> b!270841 (= lt!111595 (printWithSeparatorTokenWhenNeededRec!290 thiss!17480 rules!1920 (seqFromList!826 (t!38155 tokens!465)) separatorToken!170 (+ 0 1 1)))))

(assert (=> b!270841 (= lt!111591 (maxPrefixZipperSequence!296 thiss!17480 rules!1920 (++!996 (charsOf!374 (apply!765 (seqFromList!826 (t!38155 tokens!465)) (+ 0 1))) lt!111595)))))

(declare-fun res!123728 () Bool)

(assert (=> b!270841 (= res!123728 ((_ is Some!808) lt!111591))))

(assert (=> b!270841 (=> (not res!123728) (not e!168228))))

(assert (=> b!270841 (= c!51361 e!168228)))

(declare-fun bm!14791 () Bool)

(declare-fun call!14798 () BalanceConc!2568)

(assert (=> bm!14791 (= call!14798 (charsOf!374 (ite c!51362 separatorToken!170 call!14797)))))

(declare-fun bm!14792 () Bool)

(assert (=> bm!14792 (= call!14797 call!14796)))

(declare-fun bm!14793 () Bool)

(assert (=> bm!14793 (= call!14795 (++!996 call!14794 (ite c!51361 lt!111595 call!14798)))))

(declare-fun b!270842 () Bool)

(assert (=> b!270842 (= e!168229 (BalanceConc!2569 Empty!1280))))

(assert (=> b!270842 (= (print!340 thiss!17480 (singletonSeq!275 call!14797)) (printTailRec!303 thiss!17480 (singletonSeq!275 call!14797) 0 (BalanceConc!2569 Empty!1280)))))

(declare-fun lt!111592 () Unit!4874)

(declare-fun Unit!4922 () Unit!4874)

(assert (=> b!270842 (= lt!111592 Unit!4922)))

(declare-fun lt!111582 () Unit!4874)

(assert (=> b!270842 (= lt!111582 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!110 thiss!17480 rules!1920 (list!1557 call!14798) (list!1557 lt!111595)))))

(assert (=> b!270842 false))

(declare-fun lt!111584 () Unit!4874)

(declare-fun Unit!4923 () Unit!4874)

(assert (=> b!270842 (= lt!111584 Unit!4923)))

(assert (= (and d!78930 res!123727) b!270836))

(assert (= (and d!78930 c!51360) b!270835))

(assert (= (and d!78930 (not c!51360)) b!270841))

(assert (= (and b!270841 res!123728) b!270837))

(assert (= (and b!270841 c!51361) b!270834))

(assert (= (and b!270841 (not c!51361)) b!270839))

(assert (= (and b!270839 res!123729) b!270840))

(assert (= (and b!270839 c!51362) b!270838))

(assert (= (and b!270839 (not c!51362)) b!270842))

(assert (= (or b!270838 b!270842) bm!14792))

(assert (= (or b!270838 b!270842) bm!14791))

(assert (= (or b!270834 b!270840 bm!14792) bm!14790))

(assert (= (or b!270834 b!270838) bm!14789))

(assert (= (or b!270834 b!270838) bm!14793))

(declare-fun m!343109 () Bool)

(assert (=> bm!14793 m!343109))

(declare-fun m!343111 () Bool)

(assert (=> b!270841 m!343111))

(declare-fun m!343113 () Bool)

(assert (=> b!270841 m!343113))

(declare-fun m!343115 () Bool)

(assert (=> b!270841 m!343115))

(declare-fun m!343117 () Bool)

(assert (=> b!270841 m!343117))

(assert (=> b!270841 m!339511))

(declare-fun m!343119 () Bool)

(assert (=> b!270841 m!343119))

(declare-fun m!343121 () Bool)

(assert (=> b!270841 m!343121))

(declare-fun m!343123 () Bool)

(assert (=> b!270841 m!343123))

(declare-fun m!343125 () Bool)

(assert (=> b!270841 m!343125))

(assert (=> b!270841 m!338949))

(assert (=> b!270841 m!343119))

(assert (=> b!270841 m!343115))

(declare-fun m!343127 () Bool)

(assert (=> b!270841 m!343127))

(declare-fun m!343129 () Bool)

(assert (=> b!270841 m!343129))

(assert (=> b!270841 m!338949))

(assert (=> b!270841 m!339511))

(declare-fun m!343131 () Bool)

(assert (=> b!270841 m!343131))

(declare-fun m!343133 () Bool)

(assert (=> b!270841 m!343133))

(assert (=> b!270841 m!343119))

(declare-fun m!343135 () Bool)

(assert (=> b!270841 m!343135))

(assert (=> b!270841 m!343127))

(assert (=> b!270841 m!343135))

(assert (=> b!270841 m!343131))

(assert (=> b!270841 m!338949))

(declare-fun m!343137 () Bool)

(assert (=> b!270841 m!343137))

(declare-fun m!343139 () Bool)

(assert (=> b!270842 m!343139))

(declare-fun m!343141 () Bool)

(assert (=> b!270842 m!343141))

(declare-fun m!343143 () Bool)

(assert (=> b!270842 m!343143))

(assert (=> b!270842 m!343139))

(declare-fun m!343145 () Bool)

(assert (=> b!270842 m!343145))

(declare-fun m!343147 () Bool)

(assert (=> b!270842 m!343147))

(assert (=> b!270842 m!343141))

(declare-fun m!343149 () Bool)

(assert (=> b!270842 m!343149))

(assert (=> b!270842 m!343141))

(assert (=> b!270842 m!343145))

(declare-fun m!343151 () Bool)

(assert (=> d!78930 m!343151))

(declare-fun m!343153 () Bool)

(assert (=> d!78930 m!343153))

(assert (=> d!78930 m!339511))

(assert (=> d!78930 m!343151))

(declare-fun m!343155 () Bool)

(assert (=> d!78930 m!343155))

(assert (=> d!78930 m!338949))

(assert (=> d!78930 m!339511))

(declare-fun m!343157 () Bool)

(assert (=> d!78930 m!343157))

(assert (=> d!78930 m!338949))

(assert (=> d!78930 m!339553))

(assert (=> d!78930 m!338949))

(assert (=> d!78930 m!343151))

(assert (=> b!270837 m!338949))

(assert (=> b!270837 m!343119))

(assert (=> bm!14790 m!338949))

(assert (=> bm!14790 m!343119))

(assert (=> b!270836 m!338949))

(assert (=> b!270836 m!339553))

(declare-fun m!343159 () Bool)

(assert (=> b!270838 m!343159))

(declare-fun m!343161 () Bool)

(assert (=> bm!14791 m!343161))

(declare-fun m!343163 () Bool)

(assert (=> bm!14789 m!343163))

(assert (=> b!269296 d!78930))

(declare-fun b!270846 () Bool)

(declare-fun e!168235 () Int)

(declare-fun e!168237 () Int)

(assert (=> b!270846 (= e!168235 e!168237)))

(declare-fun c!51366 () Bool)

(declare-fun call!14799 () Int)

(assert (=> b!270846 (= c!51366 (>= (+ 0 1) call!14799))))

(declare-fun b!270847 () Bool)

(declare-fun e!168236 () List!3829)

(assert (=> b!270847 (= e!168236 Nil!3819)))

(declare-fun b!270848 () Bool)

(declare-fun e!168238 () List!3829)

(assert (=> b!270848 (= e!168236 e!168238)))

(declare-fun c!51363 () Bool)

(assert (=> b!270848 (= c!51363 (<= (+ 0 1) 0))))

(declare-fun b!270849 () Bool)

(assert (=> b!270849 (= e!168237 0)))

(declare-fun b!270850 () Bool)

(declare-fun e!168239 () Bool)

(declare-fun lt!111596 () List!3829)

(assert (=> b!270850 (= e!168239 (= (size!3046 lt!111596) e!168235))))

(declare-fun c!51365 () Bool)

(assert (=> b!270850 (= c!51365 (<= (+ 0 1) 0))))

(declare-fun b!270851 () Bool)

(assert (=> b!270851 (= e!168235 call!14799)))

(declare-fun b!270852 () Bool)

(assert (=> b!270852 (= e!168238 (drop!215 (t!38155 lt!110607) (- (+ 0 1) 1)))))

(declare-fun d!78932 () Bool)

(assert (=> d!78932 e!168239))

(declare-fun res!123730 () Bool)

(assert (=> d!78932 (=> (not res!123730) (not e!168239))))

(assert (=> d!78932 (= res!123730 (= ((_ map implies) (content!548 lt!111596) (content!548 lt!110607)) ((as const (InoxSet Token!1202)) true)))))

(assert (=> d!78932 (= lt!111596 e!168236)))

(declare-fun c!51364 () Bool)

(assert (=> d!78932 (= c!51364 ((_ is Nil!3819) lt!110607))))

(assert (=> d!78932 (= (drop!215 lt!110607 (+ 0 1)) lt!111596)))

(declare-fun b!270853 () Bool)

(assert (=> b!270853 (= e!168237 (- call!14799 (+ 0 1)))))

(declare-fun b!270854 () Bool)

(assert (=> b!270854 (= e!168238 lt!110607)))

(declare-fun bm!14794 () Bool)

(assert (=> bm!14794 (= call!14799 (size!3046 lt!110607))))

(assert (= (and d!78932 c!51364) b!270847))

(assert (= (and d!78932 (not c!51364)) b!270848))

(assert (= (and b!270848 c!51363) b!270854))

(assert (= (and b!270848 (not c!51363)) b!270852))

(assert (= (and d!78932 res!123730) b!270850))

(assert (= (and b!270850 c!51365) b!270851))

(assert (= (and b!270850 (not c!51365)) b!270846))

(assert (= (and b!270846 c!51366) b!270849))

(assert (= (and b!270846 (not c!51366)) b!270853))

(assert (= (or b!270851 b!270846 b!270853) bm!14794))

(declare-fun m!343165 () Bool)

(assert (=> b!270850 m!343165))

(declare-fun m!343167 () Bool)

(assert (=> b!270852 m!343167))

(declare-fun m!343169 () Bool)

(assert (=> d!78932 m!343169))

(assert (=> d!78932 m!343105))

(assert (=> bm!14794 m!343107))

(assert (=> b!269296 d!78932))

(declare-fun d!78934 () Bool)

(assert (=> d!78934 (= (tail!476 (drop!215 lt!110607 0)) (drop!215 lt!110607 (+ 0 1)))))

(declare-fun lt!111597 () Unit!4874)

(assert (=> d!78934 (= lt!111597 (choose!2450 lt!110607 0))))

(declare-fun e!168240 () Bool)

(assert (=> d!78934 e!168240))

(declare-fun res!123731 () Bool)

(assert (=> d!78934 (=> (not res!123731) (not e!168240))))

(assert (=> d!78934 (= res!123731 (>= 0 0))))

(assert (=> d!78934 (= (lemmaDropTail!194 lt!110607 0) lt!111597)))

(declare-fun b!270855 () Bool)

(assert (=> b!270855 (= e!168240 (< 0 (size!3046 lt!110607)))))

(assert (= (and d!78934 res!123731) b!270855))

(assert (=> d!78934 m!339507))

(assert (=> d!78934 m!339507))

(assert (=> d!78934 m!339509))

(assert (=> d!78934 m!339517))

(declare-fun m!343171 () Bool)

(assert (=> d!78934 m!343171))

(assert (=> b!270855 m!343107))

(assert (=> b!269296 d!78934))

(declare-fun d!78936 () Bool)

(declare-fun lt!111598 () Token!1202)

(assert (=> d!78936 (contains!718 lt!110608 lt!111598)))

(declare-fun e!168242 () Token!1202)

(assert (=> d!78936 (= lt!111598 e!168242)))

(declare-fun c!51367 () Bool)

(assert (=> d!78936 (= c!51367 (= 0 0))))

(declare-fun e!168241 () Bool)

(assert (=> d!78936 e!168241))

(declare-fun res!123732 () Bool)

(assert (=> d!78936 (=> (not res!123732) (not e!168241))))

(assert (=> d!78936 (= res!123732 (<= 0 0))))

(assert (=> d!78936 (= (apply!766 lt!110608 0) lt!111598)))

(declare-fun b!270856 () Bool)

(assert (=> b!270856 (= e!168241 (< 0 (size!3046 lt!110608)))))

(declare-fun b!270857 () Bool)

(assert (=> b!270857 (= e!168242 (head!886 lt!110608))))

(declare-fun b!270858 () Bool)

(assert (=> b!270858 (= e!168242 (apply!766 (tail!476 lt!110608) (- 0 1)))))

(assert (= (and d!78936 res!123732) b!270856))

(assert (= (and d!78936 c!51367) b!270857))

(assert (= (and d!78936 (not c!51367)) b!270858))

(declare-fun m!343173 () Bool)

(assert (=> d!78936 m!343173))

(assert (=> b!270856 m!343097))

(declare-fun m!343175 () Bool)

(assert (=> b!270857 m!343175))

(declare-fun m!343177 () Bool)

(assert (=> b!270858 m!343177))

(assert (=> b!270858 m!343177))

(declare-fun m!343179 () Bool)

(assert (=> b!270858 m!343179))

(assert (=> b!269296 d!78936))

(declare-fun b!270859 () Bool)

(declare-fun e!168243 () Int)

(declare-fun e!168245 () Int)

(assert (=> b!270859 (= e!168243 e!168245)))

(declare-fun c!51371 () Bool)

(declare-fun call!14800 () Int)

(assert (=> b!270859 (= c!51371 (>= 0 call!14800))))

(declare-fun b!270860 () Bool)

(declare-fun e!168244 () List!3829)

(assert (=> b!270860 (= e!168244 Nil!3819)))

(declare-fun b!270861 () Bool)

(declare-fun e!168246 () List!3829)

(assert (=> b!270861 (= e!168244 e!168246)))

(declare-fun c!51368 () Bool)

(assert (=> b!270861 (= c!51368 (<= 0 0))))

(declare-fun b!270862 () Bool)

(assert (=> b!270862 (= e!168245 0)))

(declare-fun b!270863 () Bool)

(declare-fun e!168247 () Bool)

(declare-fun lt!111599 () List!3829)

(assert (=> b!270863 (= e!168247 (= (size!3046 lt!111599) e!168243))))

(declare-fun c!51370 () Bool)

(assert (=> b!270863 (= c!51370 (<= 0 0))))

(declare-fun b!270864 () Bool)

(assert (=> b!270864 (= e!168243 call!14800)))

(declare-fun b!270865 () Bool)

(assert (=> b!270865 (= e!168246 (drop!215 (t!38155 lt!110608) (- 0 1)))))

(declare-fun d!78938 () Bool)

(assert (=> d!78938 e!168247))

(declare-fun res!123733 () Bool)

(assert (=> d!78938 (=> (not res!123733) (not e!168247))))

(assert (=> d!78938 (= res!123733 (= ((_ map implies) (content!548 lt!111599) (content!548 lt!110608)) ((as const (InoxSet Token!1202)) true)))))

(assert (=> d!78938 (= lt!111599 e!168244)))

(declare-fun c!51369 () Bool)

(assert (=> d!78938 (= c!51369 ((_ is Nil!3819) lt!110608))))

(assert (=> d!78938 (= (drop!215 lt!110608 0) lt!111599)))

(declare-fun b!270866 () Bool)

(assert (=> b!270866 (= e!168245 (- call!14800 0))))

(declare-fun b!270867 () Bool)

(assert (=> b!270867 (= e!168246 lt!110608)))

(declare-fun bm!14795 () Bool)

(assert (=> bm!14795 (= call!14800 (size!3046 lt!110608))))

(assert (= (and d!78938 c!51369) b!270860))

(assert (= (and d!78938 (not c!51369)) b!270861))

(assert (= (and b!270861 c!51368) b!270867))

(assert (= (and b!270861 (not c!51368)) b!270865))

(assert (= (and d!78938 res!123733) b!270863))

(assert (= (and b!270863 c!51370) b!270864))

(assert (= (and b!270863 (not c!51370)) b!270859))

(assert (= (and b!270859 c!51371) b!270862))

(assert (= (and b!270859 (not c!51371)) b!270866))

(assert (= (or b!270864 b!270859 b!270866) bm!14795))

(declare-fun m!343181 () Bool)

(assert (=> b!270863 m!343181))

(declare-fun m!343183 () Bool)

(assert (=> b!270865 m!343183))

(declare-fun m!343185 () Bool)

(assert (=> d!78938 m!343185))

(declare-fun m!343187 () Bool)

(assert (=> d!78938 m!343187))

(assert (=> bm!14795 m!343097))

(assert (=> b!269296 d!78938))

(declare-fun d!78940 () Bool)

(assert (=> d!78940 (dynLambda!1959 lambda!9101 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0))))

(declare-fun lt!111600 () Unit!4874)

(assert (=> d!78940 (= lt!111600 (choose!2452 (list!1560 (seqFromList!826 (t!38155 tokens!465))) lambda!9101 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0)))))

(declare-fun e!168248 () Bool)

(assert (=> d!78940 e!168248))

(declare-fun res!123734 () Bool)

(assert (=> d!78940 (=> (not res!123734) (not e!168248))))

(assert (=> d!78940 (= res!123734 (forall!956 (list!1560 (seqFromList!826 (t!38155 tokens!465))) lambda!9101))))

(assert (=> d!78940 (= (forallContained!284 (list!1560 (seqFromList!826 (t!38155 tokens!465))) lambda!9101 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0)) lt!111600)))

(declare-fun b!270868 () Bool)

(assert (=> b!270868 (= e!168248 (contains!718 (list!1560 (seqFromList!826 (t!38155 tokens!465))) (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0)))))

(assert (= (and d!78940 res!123734) b!270868))

(declare-fun b_lambda!8605 () Bool)

(assert (=> (not b_lambda!8605) (not d!78940)))

(assert (=> d!78940 m!339513))

(declare-fun m!343189 () Bool)

(assert (=> d!78940 m!343189))

(assert (=> d!78940 m!339511))

(assert (=> d!78940 m!339513))

(declare-fun m!343191 () Bool)

(assert (=> d!78940 m!343191))

(assert (=> d!78940 m!339511))

(declare-fun m!343193 () Bool)

(assert (=> d!78940 m!343193))

(assert (=> b!270868 m!339511))

(assert (=> b!270868 m!339513))

(declare-fun m!343195 () Bool)

(assert (=> b!270868 m!343195))

(assert (=> b!269296 d!78940))

(declare-fun d!78942 () Bool)

(assert (=> d!78942 (= (head!886 (drop!215 lt!110608 0)) (h!9216 (drop!215 lt!110608 0)))))

(assert (=> b!269296 d!78942))

(declare-fun d!78944 () Bool)

(assert (=> d!78944 (= (tail!476 (drop!215 lt!110607 0)) (t!38155 (drop!215 lt!110607 0)))))

(assert (=> b!269296 d!78944))

(assert (=> b!269296 d!78460))

(assert (=> b!269296 d!78420))

(declare-fun d!78946 () Bool)

(declare-fun lt!111601 () BalanceConc!2568)

(assert (=> d!78946 (= (list!1557 lt!111601) (originalCharacters!772 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0)))))

(assert (=> d!78946 (= lt!111601 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0)))) (value!25092 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0))))))

(assert (=> d!78946 (= (charsOf!374 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0)) lt!111601)))

(declare-fun b_lambda!8607 () Bool)

(assert (=> (not b_lambda!8607) (not d!78946)))

(declare-fun t!38440 () Bool)

(declare-fun tb!15329 () Bool)

(assert (=> (and b!269534 (= (toChars!1323 (transformation!729 (h!9217 (t!38156 rules!1920)))) (toChars!1323 (transformation!729 (rule!1314 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0))))) t!38440) tb!15329))

(declare-fun b!270869 () Bool)

(declare-fun e!168249 () Bool)

(declare-fun tp!102533 () Bool)

(assert (=> b!270869 (= e!168249 (and (inv!4725 (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0)))) (value!25092 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0))))) tp!102533))))

(declare-fun result!18934 () Bool)

(assert (=> tb!15329 (= result!18934 (and (inv!4726 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0)))) (value!25092 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0)))) e!168249))))

(assert (= tb!15329 b!270869))

(declare-fun m!343197 () Bool)

(assert (=> b!270869 m!343197))

(declare-fun m!343199 () Bool)

(assert (=> tb!15329 m!343199))

(assert (=> d!78946 t!38440))

(declare-fun b_and!21613 () Bool)

(assert (= b_and!21537 (and (=> t!38440 result!18934) b_and!21613)))

(declare-fun t!38442 () Bool)

(declare-fun tb!15331 () Bool)

(assert (=> (and b!269519 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))) (toChars!1323 (transformation!729 (rule!1314 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0))))) t!38442) tb!15331))

(declare-fun result!18936 () Bool)

(assert (= result!18936 result!18934))

(assert (=> d!78946 t!38442))

(declare-fun b_and!21615 () Bool)

(assert (= b_and!21535 (and (=> t!38442 result!18936) b_and!21615)))

(declare-fun t!38444 () Bool)

(declare-fun tb!15333 () Bool)

(assert (=> (and b!268971 (= (toChars!1323 (transformation!729 (h!9217 rules!1920))) (toChars!1323 (transformation!729 (rule!1314 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0))))) t!38444) tb!15333))

(declare-fun result!18938 () Bool)

(assert (= result!18938 result!18934))

(assert (=> d!78946 t!38444))

(declare-fun b_and!21617 () Bool)

(assert (= b_and!21543 (and (=> t!38444 result!18938) b_and!21617)))

(declare-fun t!38446 () Bool)

(declare-fun tb!15335 () Bool)

(assert (=> (and b!268959 (= (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (toChars!1323 (transformation!729 (rule!1314 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0))))) t!38446) tb!15335))

(declare-fun result!18940 () Bool)

(assert (= result!18940 result!18934))

(assert (=> d!78946 t!38446))

(declare-fun b_and!21619 () Bool)

(assert (= b_and!21541 (and (=> t!38446 result!18940) b_and!21619)))

(declare-fun t!38448 () Bool)

(declare-fun tb!15337 () Bool)

(assert (=> (and b!268967 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (toChars!1323 (transformation!729 (rule!1314 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0))))) t!38448) tb!15337))

(declare-fun result!18942 () Bool)

(assert (= result!18942 result!18934))

(assert (=> d!78946 t!38448))

(declare-fun b_and!21621 () Bool)

(assert (= b_and!21539 (and (=> t!38448 result!18942) b_and!21621)))

(declare-fun m!343201 () Bool)

(assert (=> d!78946 m!343201))

(declare-fun m!343203 () Bool)

(assert (=> d!78946 m!343203))

(assert (=> b!269296 d!78946))

(declare-fun d!78948 () Bool)

(declare-fun e!168250 () Bool)

(assert (=> d!78948 e!168250))

(declare-fun res!123735 () Bool)

(assert (=> d!78948 (=> (not res!123735) (not e!168250))))

(declare-fun lt!111602 () BalanceConc!2568)

(assert (=> d!78948 (= res!123735 (= (list!1557 lt!111602) lt!110396))))

(assert (=> d!78948 (= lt!111602 (BalanceConc!2569 (fromList!177 lt!110396)))))

(assert (=> d!78948 (= (fromListB!315 lt!110396) lt!111602)))

(declare-fun b!270870 () Bool)

(assert (=> b!270870 (= e!168250 (isBalanced!350 (fromList!177 lt!110396)))))

(assert (= (and d!78948 res!123735) b!270870))

(declare-fun m!343205 () Bool)

(assert (=> d!78948 m!343205))

(declare-fun m!343207 () Bool)

(assert (=> d!78948 m!343207))

(assert (=> b!270870 m!343207))

(assert (=> b!270870 m!343207))

(declare-fun m!343209 () Bool)

(assert (=> b!270870 m!343209))

(assert (=> d!77988 d!78948))

(declare-fun bs!30173 () Bool)

(declare-fun d!78950 () Bool)

(assert (= bs!30173 (and d!78950 d!78388)))

(declare-fun lambda!9158 () Int)

(assert (=> bs!30173 (= (= (toValue!1464 (transformation!729 (h!9217 rules!1920))) (toValue!1464 (transformation!729 (rule!1314 separatorToken!170)))) (= lambda!9158 lambda!9131))))

(declare-fun bs!30174 () Bool)

(assert (= bs!30174 (and d!78950 d!78742)))

(assert (=> bs!30174 (= (= (toValue!1464 (transformation!729 (h!9217 rules!1920))) (toValue!1464 (transformation!729 (rule!1314 (h!9216 tokens!465))))) (= lambda!9158 lambda!9146))))

(assert (=> d!78950 true))

(assert (=> d!78950 (< (dynLambda!1953 order!2933 (toValue!1464 (transformation!729 (h!9217 rules!1920)))) (dynLambda!1963 order!2945 lambda!9158))))

(assert (=> d!78950 (= (equivClasses!240 (toChars!1323 (transformation!729 (h!9217 rules!1920))) (toValue!1464 (transformation!729 (h!9217 rules!1920)))) (Forall2!148 lambda!9158))))

(declare-fun bs!30175 () Bool)

(assert (= bs!30175 d!78950))

(declare-fun m!343211 () Bool)

(assert (=> bs!30175 m!343211))

(assert (=> b!269031 d!78950))

(declare-fun d!78952 () Bool)

(declare-fun lt!111603 () Int)

(assert (=> d!78952 (>= lt!111603 0)))

(declare-fun e!168251 () Int)

(assert (=> d!78952 (= lt!111603 e!168251)))

(declare-fun c!51372 () Bool)

(assert (=> d!78952 (= c!51372 ((_ is Nil!3817) (originalCharacters!772 separatorToken!170)))))

(assert (=> d!78952 (= (size!3043 (originalCharacters!772 separatorToken!170)) lt!111603)))

(declare-fun b!270871 () Bool)

(assert (=> b!270871 (= e!168251 0)))

(declare-fun b!270872 () Bool)

(assert (=> b!270872 (= e!168251 (+ 1 (size!3043 (t!38153 (originalCharacters!772 separatorToken!170)))))))

(assert (= (and d!78952 c!51372) b!270871))

(assert (= (and d!78952 (not c!51372)) b!270872))

(declare-fun m!343213 () Bool)

(assert (=> b!270872 m!343213))

(assert (=> b!269422 d!78952))

(declare-fun d!78954 () Bool)

(declare-fun res!123736 () Bool)

(declare-fun e!168252 () Bool)

(assert (=> d!78954 (=> res!123736 e!168252)))

(assert (=> d!78954 (= res!123736 ((_ is Nil!3819) (list!1560 lt!110395)))))

(assert (=> d!78954 (= (forall!956 (list!1560 lt!110395) lambda!9111) e!168252)))

(declare-fun b!270873 () Bool)

(declare-fun e!168253 () Bool)

(assert (=> b!270873 (= e!168252 e!168253)))

(declare-fun res!123737 () Bool)

(assert (=> b!270873 (=> (not res!123737) (not e!168253))))

(assert (=> b!270873 (= res!123737 (dynLambda!1959 lambda!9111 (h!9216 (list!1560 lt!110395))))))

(declare-fun b!270874 () Bool)

(assert (=> b!270874 (= e!168253 (forall!956 (t!38155 (list!1560 lt!110395)) lambda!9111))))

(assert (= (and d!78954 (not res!123736)) b!270873))

(assert (= (and b!270873 res!123737) b!270874))

(declare-fun b_lambda!8609 () Bool)

(assert (=> (not b_lambda!8609) (not b!270873)))

(declare-fun m!343215 () Bool)

(assert (=> b!270873 m!343215))

(declare-fun m!343217 () Bool)

(assert (=> b!270874 m!343217))

(assert (=> d!78088 d!78954))

(assert (=> d!78088 d!78348))

(declare-fun d!78956 () Bool)

(declare-fun lt!111606 () Bool)

(assert (=> d!78956 (= lt!111606 (forall!956 (list!1560 lt!110395) lambda!9111))))

(declare-fun forall!962 (Conc!1281 Int) Bool)

(assert (=> d!78956 (= lt!111606 (forall!962 (c!50916 lt!110395) lambda!9111))))

(assert (=> d!78956 (= (forall!957 lt!110395 lambda!9111) lt!111606)))

(declare-fun bs!30176 () Bool)

(assert (= bs!30176 d!78956))

(assert (=> bs!30176 m!339661))

(assert (=> bs!30176 m!339661))

(assert (=> bs!30176 m!339663))

(declare-fun m!343219 () Bool)

(assert (=> bs!30176 m!343219))

(assert (=> d!78088 d!78956))

(assert (=> d!78088 d!78138))

(declare-fun d!78958 () Bool)

(assert (=> d!78958 (forall!956 (dropList!162 lt!110395 0) lambda!9112)))

(declare-fun lt!111607 () Unit!4874)

(assert (=> d!78958 (= lt!111607 (choose!2455 (list!1560 lt!110395) (dropList!162 lt!110395 0) lambda!9112))))

(assert (=> d!78958 (forall!956 (list!1560 lt!110395) lambda!9112)))

(assert (=> d!78958 (= (lemmaContentSubsetPreservesForall!106 (list!1560 lt!110395) (dropList!162 lt!110395 0) lambda!9112) lt!111607)))

(declare-fun bs!30177 () Bool)

(assert (= bs!30177 d!78958))

(assert (=> bs!30177 m!339785))

(declare-fun m!343221 () Bool)

(assert (=> bs!30177 m!343221))

(assert (=> bs!30177 m!339661))

(assert (=> bs!30177 m!339785))

(declare-fun m!343223 () Bool)

(assert (=> bs!30177 m!343223))

(assert (=> bs!30177 m!339661))

(declare-fun m!343225 () Bool)

(assert (=> bs!30177 m!343225))

(assert (=> d!78110 d!78958))

(assert (=> d!78110 d!78348))

(assert (=> d!78110 d!78402))

(declare-fun d!78960 () Bool)

(assert (=> d!78960 (= (dropList!162 lt!110395 0) (drop!215 (list!1563 (c!50916 lt!110395)) 0))))

(declare-fun bs!30178 () Bool)

(assert (= bs!30178 d!78960))

(assert (=> bs!30178 m!340761))

(assert (=> bs!30178 m!340761))

(declare-fun m!343227 () Bool)

(assert (=> bs!30178 m!343227))

(assert (=> d!78110 d!78960))

(declare-fun d!78962 () Bool)

(assert (=> d!78962 (= (list!1557 lt!110665) (list!1561 (c!50914 lt!110665)))))

(declare-fun bs!30179 () Bool)

(assert (= bs!30179 d!78962))

(declare-fun m!343229 () Bool)

(assert (=> bs!30179 m!343229))

(assert (=> d!78110 d!78962))

(declare-fun bs!30180 () Bool)

(declare-fun b!270879 () Bool)

(assert (= bs!30180 (and b!270879 d!78038)))

(declare-fun lambda!9159 () Int)

(assert (=> bs!30180 (not (= lambda!9159 lambda!9100))))

(declare-fun bs!30181 () Bool)

(assert (= bs!30181 (and b!270879 b!269845)))

(assert (=> bs!30181 (= lambda!9159 lambda!9125)))

(declare-fun bs!30182 () Bool)

(assert (= bs!30182 (and b!270879 d!78582)))

(assert (=> bs!30182 (not (= lambda!9159 lambda!9138))))

(declare-fun bs!30183 () Bool)

(assert (= bs!30183 (and b!270879 b!269430)))

(assert (=> bs!30183 (= lambda!9159 lambda!9113)))

(declare-fun bs!30184 () Bool)

(assert (= bs!30184 (and b!270879 b!269171)))

(assert (=> bs!30184 (= lambda!9159 lambda!9094)))

(declare-fun bs!30185 () Bool)

(assert (= bs!30185 (and b!270879 d!78088)))

(assert (=> bs!30185 (= lambda!9159 lambda!9111)))

(declare-fun bs!30186 () Bool)

(assert (= bs!30186 (and b!270879 b!269296)))

(assert (=> bs!30186 (= lambda!9159 lambda!9101)))

(declare-fun bs!30187 () Bool)

(assert (= bs!30187 (and b!270879 d!78930)))

(assert (=> bs!30187 (not (= lambda!9159 lambda!9156))))

(declare-fun bs!30188 () Bool)

(assert (= bs!30188 (and b!270879 b!270841)))

(assert (=> bs!30188 (= lambda!9159 lambda!9157)))

(declare-fun bs!30189 () Bool)

(assert (= bs!30189 (and b!270879 d!78110)))

(assert (=> bs!30189 (not (= lambda!9159 lambda!9112))))

(declare-fun bs!30190 () Bool)

(assert (= bs!30190 (and b!270879 b!268954)))

(assert (=> bs!30190 (not (= lambda!9159 lambda!9080))))

(declare-fun bs!30191 () Bool)

(assert (= bs!30191 (and b!270879 d!78346)))

(assert (=> bs!30191 (= lambda!9159 lambda!9128)))

(declare-fun bs!30192 () Bool)

(assert (= bs!30192 (and b!270879 b!269986)))

(assert (=> bs!30192 (= lambda!9159 lambda!9132)))

(declare-fun bs!30193 () Bool)

(assert (= bs!30193 (and b!270879 b!270278)))

(assert (=> bs!30193 (= lambda!9159 lambda!9139)))

(declare-fun bs!30194 () Bool)

(assert (= bs!30194 (and b!270879 b!269439)))

(assert (=> bs!30194 (= lambda!9159 lambda!9114)))

(declare-fun b!270887 () Bool)

(declare-fun e!168261 () Bool)

(assert (=> b!270887 (= e!168261 true)))

(declare-fun b!270886 () Bool)

(declare-fun e!168260 () Bool)

(assert (=> b!270886 (= e!168260 e!168261)))

(declare-fun b!270885 () Bool)

(declare-fun e!168259 () Bool)

(assert (=> b!270885 (= e!168259 e!168260)))

(assert (=> b!270879 e!168259))

(assert (= b!270886 b!270887))

(assert (= b!270885 b!270886))

(assert (= (and b!270879 ((_ is Cons!3820) rules!1920)) b!270885))

(assert (=> b!270887 (< (dynLambda!1953 order!2933 (toValue!1464 (transformation!729 (h!9217 rules!1920)))) (dynLambda!1954 order!2935 lambda!9159))))

(assert (=> b!270887 (< (dynLambda!1955 order!2937 (toChars!1323 (transformation!729 (h!9217 rules!1920)))) (dynLambda!1954 order!2935 lambda!9159))))

(assert (=> b!270879 true))

(declare-fun b!270875 () Bool)

(declare-fun e!168254 () List!3827)

(declare-fun call!14802 () List!3827)

(declare-fun lt!111612 () List!3827)

(assert (=> b!270875 (= e!168254 (++!994 call!14802 lt!111612))))

(declare-fun bm!14796 () Bool)

(declare-fun call!14803 () List!3827)

(declare-fun call!14801 () List!3827)

(assert (=> bm!14796 (= call!14803 call!14801)))

(declare-fun c!51374 () Bool)

(declare-fun c!51373 () Bool)

(assert (=> bm!14796 (= c!51374 c!51373)))

(declare-fun b!270876 () Bool)

(declare-fun e!168257 () List!3827)

(assert (=> b!270876 (= e!168257 Nil!3817)))

(declare-fun bm!14797 () Bool)

(declare-fun call!14805 () BalanceConc!2568)

(assert (=> bm!14797 (= call!14805 (charsOf!374 (h!9216 (dropList!162 lt!110395 0))))))

(declare-fun b!270877 () Bool)

(declare-fun e!168256 () BalanceConc!2568)

(declare-fun call!14804 () BalanceConc!2568)

(assert (=> b!270877 (= e!168256 call!14804)))

(declare-fun b!270878 () Bool)

(declare-fun lt!111608 () Option!808)

(assert (=> b!270878 (= c!51373 (and ((_ is Some!807) lt!111608) (not (= (_1!2358 (v!14676 lt!111608)) (h!9216 (dropList!162 lt!110395 0))))))))

(declare-fun e!168258 () List!3827)

(assert (=> b!270878 (= e!168258 e!168254)))

(assert (=> b!270879 (= e!168257 e!168258)))

(declare-fun lt!111609 () Unit!4874)

(assert (=> b!270879 (= lt!111609 (forallContained!284 (dropList!162 lt!110395 0) lambda!9159 (h!9216 (dropList!162 lt!110395 0))))))

(assert (=> b!270879 (= lt!111612 (printWithSeparatorTokenWhenNeededList!298 thiss!17480 rules!1920 (t!38155 (dropList!162 lt!110395 0)) separatorToken!170))))

(assert (=> b!270879 (= lt!111608 (maxPrefix!333 thiss!17480 rules!1920 (++!994 (list!1557 (charsOf!374 (h!9216 (dropList!162 lt!110395 0)))) lt!111612)))))

(declare-fun c!51376 () Bool)

(assert (=> b!270879 (= c!51376 (and ((_ is Some!807) lt!111608) (= (_1!2358 (v!14676 lt!111608)) (h!9216 (dropList!162 lt!110395 0)))))))

(declare-fun bm!14798 () Bool)

(assert (=> bm!14798 (= call!14801 (list!1557 (ite c!51376 call!14805 e!168256)))))

(declare-fun bm!14799 () Bool)

(declare-fun c!51375 () Bool)

(assert (=> bm!14799 (= c!51375 c!51376)))

(declare-fun e!168255 () List!3827)

(assert (=> bm!14799 (= call!14802 (++!994 e!168255 (ite c!51376 lt!111612 call!14803)))))

(declare-fun b!270880 () Bool)

(assert (=> b!270880 (= e!168254 Nil!3817)))

(assert (=> b!270880 (= (print!340 thiss!17480 (singletonSeq!275 (h!9216 (dropList!162 lt!110395 0)))) (printTailRec!303 thiss!17480 (singletonSeq!275 (h!9216 (dropList!162 lt!110395 0))) 0 (BalanceConc!2569 Empty!1280)))))

(declare-fun lt!111610 () Unit!4874)

(declare-fun Unit!4926 () Unit!4874)

(assert (=> b!270880 (= lt!111610 Unit!4926)))

(declare-fun lt!111611 () Unit!4874)

(assert (=> b!270880 (= lt!111611 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!110 thiss!17480 rules!1920 call!14803 lt!111612))))

(assert (=> b!270880 false))

(declare-fun lt!111613 () Unit!4874)

(declare-fun Unit!4927 () Unit!4874)

(assert (=> b!270880 (= lt!111613 Unit!4927)))

(declare-fun d!78964 () Bool)

(declare-fun c!51377 () Bool)

(assert (=> d!78964 (= c!51377 ((_ is Cons!3819) (dropList!162 lt!110395 0)))))

(assert (=> d!78964 (= (printWithSeparatorTokenWhenNeededList!298 thiss!17480 rules!1920 (dropList!162 lt!110395 0) separatorToken!170) e!168257)))

(declare-fun b!270881 () Bool)

(assert (=> b!270881 (= e!168255 (list!1557 call!14804))))

(declare-fun bm!14800 () Bool)

(assert (=> bm!14800 (= call!14804 call!14805)))

(declare-fun b!270882 () Bool)

(assert (=> b!270882 (= e!168255 call!14801)))

(declare-fun b!270883 () Bool)

(assert (=> b!270883 (= e!168258 call!14802)))

(declare-fun b!270884 () Bool)

(assert (=> b!270884 (= e!168256 (charsOf!374 separatorToken!170))))

(assert (= (and d!78964 c!51377) b!270879))

(assert (= (and d!78964 (not c!51377)) b!270876))

(assert (= (and b!270879 c!51376) b!270883))

(assert (= (and b!270879 (not c!51376)) b!270878))

(assert (= (and b!270878 c!51373) b!270875))

(assert (= (and b!270878 (not c!51373)) b!270880))

(assert (= (or b!270875 b!270880) bm!14800))

(assert (= (or b!270875 b!270880) bm!14796))

(assert (= (and bm!14796 c!51374) b!270884))

(assert (= (and bm!14796 (not c!51374)) b!270877))

(assert (= (or b!270883 bm!14800) bm!14797))

(assert (= (or b!270883 bm!14796) bm!14798))

(assert (= (or b!270883 b!270875) bm!14799))

(assert (= (and bm!14799 c!51375) b!270882))

(assert (= (and bm!14799 (not c!51375)) b!270881))

(assert (=> b!270884 m!338937))

(assert (=> b!270879 m!339785))

(declare-fun m!343231 () Bool)

(assert (=> b!270879 m!343231))

(declare-fun m!343233 () Bool)

(assert (=> b!270879 m!343233))

(declare-fun m!343235 () Bool)

(assert (=> b!270879 m!343235))

(declare-fun m!343237 () Bool)

(assert (=> b!270879 m!343237))

(declare-fun m!343239 () Bool)

(assert (=> b!270879 m!343239))

(declare-fun m!343241 () Bool)

(assert (=> b!270879 m!343241))

(assert (=> b!270879 m!343239))

(assert (=> b!270879 m!343233))

(assert (=> b!270879 m!343237))

(declare-fun m!343243 () Bool)

(assert (=> bm!14798 m!343243))

(declare-fun m!343245 () Bool)

(assert (=> bm!14799 m!343245))

(declare-fun m!343247 () Bool)

(assert (=> b!270880 m!343247))

(assert (=> b!270880 m!343247))

(declare-fun m!343249 () Bool)

(assert (=> b!270880 m!343249))

(assert (=> b!270880 m!343247))

(declare-fun m!343251 () Bool)

(assert (=> b!270880 m!343251))

(declare-fun m!343253 () Bool)

(assert (=> b!270880 m!343253))

(declare-fun m!343255 () Bool)

(assert (=> b!270875 m!343255))

(declare-fun m!343257 () Bool)

(assert (=> b!270881 m!343257))

(assert (=> bm!14797 m!343237))

(assert (=> d!78110 d!78964))

(declare-fun bs!30195 () Bool)

(declare-fun d!78966 () Bool)

(assert (= bs!30195 (and d!78966 d!78160)))

(declare-fun lambda!9160 () Int)

(assert (=> bs!30195 (= (and (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (toChars!1323 (transformation!729 (h!9217 rules!1920)))) (= (toValue!1464 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (toValue!1464 (transformation!729 (h!9217 rules!1920))))) (= lambda!9160 lambda!9120))))

(declare-fun bs!30196 () Bool)

(assert (= bs!30196 (and d!78966 d!78776)))

(assert (=> bs!30196 (= (and (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (toChars!1323 (transformation!729 (rule!1314 separatorToken!170)))) (= (toValue!1464 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (toValue!1464 (transformation!729 (rule!1314 separatorToken!170))))) (= lambda!9160 lambda!9148))))

(assert (=> d!78966 true))

(assert (=> d!78966 (< (dynLambda!1955 order!2937 (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465))))) (dynLambda!1962 order!2941 lambda!9160))))

(assert (=> d!78966 true))

(assert (=> d!78966 (< (dynLambda!1953 order!2933 (toValue!1464 (transformation!729 (rule!1314 (h!9216 tokens!465))))) (dynLambda!1962 order!2941 lambda!9160))))

(assert (=> d!78966 (= (semiInverseModEq!257 (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (toValue!1464 (transformation!729 (rule!1314 (h!9216 tokens!465))))) (Forall!172 lambda!9160))))

(declare-fun bs!30197 () Bool)

(assert (= bs!30197 d!78966))

(declare-fun m!343259 () Bool)

(assert (=> bs!30197 m!343259))

(assert (=> d!78122 d!78966))

(declare-fun d!78968 () Bool)

(declare-fun lt!111614 () BalanceConc!2568)

(assert (=> d!78968 (= (list!1557 lt!111614) (originalCharacters!772 (ite c!51014 separatorToken!170 call!14706)))))

(assert (=> d!78968 (= lt!111614 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (ite c!51014 separatorToken!170 call!14706)))) (value!25092 (ite c!51014 separatorToken!170 call!14706))))))

(assert (=> d!78968 (= (charsOf!374 (ite c!51014 separatorToken!170 call!14706)) lt!111614)))

(declare-fun b_lambda!8611 () Bool)

(assert (=> (not b_lambda!8611) (not d!78968)))

(declare-fun t!38450 () Bool)

(declare-fun tb!15339 () Bool)

(assert (=> (and b!268959 (= (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (toChars!1323 (transformation!729 (rule!1314 (ite c!51014 separatorToken!170 call!14706))))) t!38450) tb!15339))

(declare-fun b!270888 () Bool)

(declare-fun tp!102534 () Bool)

(declare-fun e!168262 () Bool)

(assert (=> b!270888 (= e!168262 (and (inv!4725 (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (ite c!51014 separatorToken!170 call!14706)))) (value!25092 (ite c!51014 separatorToken!170 call!14706))))) tp!102534))))

(declare-fun result!18944 () Bool)

(assert (=> tb!15339 (= result!18944 (and (inv!4726 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (ite c!51014 separatorToken!170 call!14706)))) (value!25092 (ite c!51014 separatorToken!170 call!14706)))) e!168262))))

(assert (= tb!15339 b!270888))

(declare-fun m!343261 () Bool)

(assert (=> b!270888 m!343261))

(declare-fun m!343263 () Bool)

(assert (=> tb!15339 m!343263))

(assert (=> d!78968 t!38450))

(declare-fun b_and!21623 () Bool)

(assert (= b_and!21619 (and (=> t!38450 result!18944) b_and!21623)))

(declare-fun tb!15341 () Bool)

(declare-fun t!38452 () Bool)

(assert (=> (and b!269519 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))) (toChars!1323 (transformation!729 (rule!1314 (ite c!51014 separatorToken!170 call!14706))))) t!38452) tb!15341))

(declare-fun result!18946 () Bool)

(assert (= result!18946 result!18944))

(assert (=> d!78968 t!38452))

(declare-fun b_and!21625 () Bool)

(assert (= b_and!21615 (and (=> t!38452 result!18946) b_and!21625)))

(declare-fun t!38454 () Bool)

(declare-fun tb!15343 () Bool)

(assert (=> (and b!268971 (= (toChars!1323 (transformation!729 (h!9217 rules!1920))) (toChars!1323 (transformation!729 (rule!1314 (ite c!51014 separatorToken!170 call!14706))))) t!38454) tb!15343))

(declare-fun result!18948 () Bool)

(assert (= result!18948 result!18944))

(assert (=> d!78968 t!38454))

(declare-fun b_and!21627 () Bool)

(assert (= b_and!21617 (and (=> t!38454 result!18948) b_and!21627)))

(declare-fun t!38456 () Bool)

(declare-fun tb!15345 () Bool)

(assert (=> (and b!269534 (= (toChars!1323 (transformation!729 (h!9217 (t!38156 rules!1920)))) (toChars!1323 (transformation!729 (rule!1314 (ite c!51014 separatorToken!170 call!14706))))) t!38456) tb!15345))

(declare-fun result!18950 () Bool)

(assert (= result!18950 result!18944))

(assert (=> d!78968 t!38456))

(declare-fun b_and!21629 () Bool)

(assert (= b_and!21613 (and (=> t!38456 result!18950) b_and!21629)))

(declare-fun tb!15347 () Bool)

(declare-fun t!38458 () Bool)

(assert (=> (and b!268967 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (toChars!1323 (transformation!729 (rule!1314 (ite c!51014 separatorToken!170 call!14706))))) t!38458) tb!15347))

(declare-fun result!18952 () Bool)

(assert (= result!18952 result!18944))

(assert (=> d!78968 t!38458))

(declare-fun b_and!21631 () Bool)

(assert (= b_and!21621 (and (=> t!38458 result!18952) b_and!21631)))

(declare-fun m!343265 () Bool)

(assert (=> d!78968 m!343265))

(declare-fun m!343267 () Bool)

(assert (=> d!78968 m!343267))

(assert (=> bm!14700 d!78968))

(declare-fun d!78970 () Bool)

(declare-fun lt!111615 () Int)

(assert (=> d!78970 (>= lt!111615 0)))

(declare-fun e!168263 () Int)

(assert (=> d!78970 (= lt!111615 e!168263)))

(declare-fun c!51378 () Bool)

(assert (=> d!78970 (= c!51378 ((_ is Nil!3817) lt!110618))))

(assert (=> d!78970 (= (size!3043 lt!110618) lt!111615)))

(declare-fun b!270889 () Bool)

(assert (=> b!270889 (= e!168263 0)))

(declare-fun b!270890 () Bool)

(assert (=> b!270890 (= e!168263 (+ 1 (size!3043 (t!38153 lt!110618))))))

(assert (= (and d!78970 c!51378) b!270889))

(assert (= (and d!78970 (not c!51378)) b!270890))

(declare-fun m!343269 () Bool)

(assert (=> b!270890 m!343269))

(assert (=> b!269321 d!78970))

(declare-fun d!78972 () Bool)

(declare-fun lt!111616 () Int)

(assert (=> d!78972 (>= lt!111616 0)))

(declare-fun e!168264 () Int)

(assert (=> d!78972 (= lt!111616 e!168264)))

(declare-fun c!51379 () Bool)

(assert (=> d!78972 (= c!51379 ((_ is Nil!3817) (++!994 lt!110396 lt!110394)))))

(assert (=> d!78972 (= (size!3043 (++!994 lt!110396 lt!110394)) lt!111616)))

(declare-fun b!270891 () Bool)

(assert (=> b!270891 (= e!168264 0)))

(declare-fun b!270892 () Bool)

(assert (=> b!270892 (= e!168264 (+ 1 (size!3043 (t!38153 (++!994 lt!110396 lt!110394)))))))

(assert (= (and d!78972 c!51379) b!270891))

(assert (= (and d!78972 (not c!51379)) b!270892))

(assert (=> b!270892 m!341539))

(assert (=> b!269321 d!78972))

(assert (=> b!269321 d!78540))

(declare-fun e!168266 () List!3827)

(declare-fun b!270896 () Bool)

(assert (=> b!270896 (= e!168266 (++!994 (list!1561 (left!3139 (c!50914 (printWithSeparatorTokenWhenNeededRec!290 thiss!17480 rules!1920 (seqFromList!826 (t!38155 tokens!465)) separatorToken!170 0)))) (list!1561 (right!3469 (c!50914 (printWithSeparatorTokenWhenNeededRec!290 thiss!17480 rules!1920 (seqFromList!826 (t!38155 tokens!465)) separatorToken!170 0))))))))

(declare-fun c!51380 () Bool)

(declare-fun d!78974 () Bool)

(assert (=> d!78974 (= c!51380 ((_ is Empty!1280) (c!50914 (printWithSeparatorTokenWhenNeededRec!290 thiss!17480 rules!1920 (seqFromList!826 (t!38155 tokens!465)) separatorToken!170 0))))))

(declare-fun e!168265 () List!3827)

(assert (=> d!78974 (= (list!1561 (c!50914 (printWithSeparatorTokenWhenNeededRec!290 thiss!17480 rules!1920 (seqFromList!826 (t!38155 tokens!465)) separatorToken!170 0))) e!168265)))

(declare-fun b!270893 () Bool)

(assert (=> b!270893 (= e!168265 Nil!3817)))

(declare-fun b!270895 () Bool)

(assert (=> b!270895 (= e!168266 (list!1564 (xs!3879 (c!50914 (printWithSeparatorTokenWhenNeededRec!290 thiss!17480 rules!1920 (seqFromList!826 (t!38155 tokens!465)) separatorToken!170 0)))))))

(declare-fun b!270894 () Bool)

(assert (=> b!270894 (= e!168265 e!168266)))

(declare-fun c!51381 () Bool)

(assert (=> b!270894 (= c!51381 ((_ is Leaf!1984) (c!50914 (printWithSeparatorTokenWhenNeededRec!290 thiss!17480 rules!1920 (seqFromList!826 (t!38155 tokens!465)) separatorToken!170 0))))))

(assert (= (and d!78974 c!51380) b!270893))

(assert (= (and d!78974 (not c!51380)) b!270894))

(assert (= (and b!270894 c!51381) b!270895))

(assert (= (and b!270894 (not c!51381)) b!270896))

(declare-fun m!343271 () Bool)

(assert (=> b!270896 m!343271))

(declare-fun m!343273 () Bool)

(assert (=> b!270896 m!343273))

(assert (=> b!270896 m!343271))

(assert (=> b!270896 m!343273))

(declare-fun m!343275 () Bool)

(assert (=> b!270896 m!343275))

(declare-fun m!343277 () Bool)

(assert (=> b!270895 m!343277))

(assert (=> d!78000 d!78974))

(declare-fun d!78976 () Bool)

(declare-fun res!123738 () Bool)

(declare-fun e!168267 () Bool)

(assert (=> d!78976 (=> res!123738 e!168267)))

(assert (=> d!78976 (= res!123738 (not ((_ is Cons!3820) (t!38156 rules!1920))))))

(assert (=> d!78976 (= (sepAndNonSepRulesDisjointChars!318 rules!1920 (t!38156 rules!1920)) e!168267)))

(declare-fun b!270897 () Bool)

(declare-fun e!168268 () Bool)

(assert (=> b!270897 (= e!168267 e!168268)))

(declare-fun res!123739 () Bool)

(assert (=> b!270897 (=> (not res!123739) (not e!168268))))

(assert (=> b!270897 (= res!123739 (ruleDisjointCharsFromAllFromOtherType!116 (h!9217 (t!38156 rules!1920)) rules!1920))))

(declare-fun b!270898 () Bool)

(assert (=> b!270898 (= e!168268 (sepAndNonSepRulesDisjointChars!318 rules!1920 (t!38156 (t!38156 rules!1920))))))

(assert (= (and d!78976 (not res!123738)) b!270897))

(assert (= (and b!270897 res!123739) b!270898))

(declare-fun m!343279 () Bool)

(assert (=> b!270897 m!343279))

(declare-fun m!343281 () Bool)

(assert (=> b!270898 m!343281))

(assert (=> b!269457 d!78976))

(declare-fun d!78978 () Bool)

(assert (=> d!78978 (= (inv!4718 (tag!939 (rule!1314 (h!9216 (t!38155 tokens!465))))) (= (mod (str.len (value!25091 (tag!939 (rule!1314 (h!9216 (t!38155 tokens!465)))))) 2) 0))))

(assert (=> b!269518 d!78978))

(declare-fun d!78980 () Bool)

(declare-fun res!123740 () Bool)

(declare-fun e!168269 () Bool)

(assert (=> d!78980 (=> (not res!123740) (not e!168269))))

(assert (=> d!78980 (= res!123740 (semiInverseModEq!257 (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))) (toValue!1464 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465)))))))))

(assert (=> d!78980 (= (inv!4722 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))) e!168269)))

(declare-fun b!270899 () Bool)

(assert (=> b!270899 (= e!168269 (equivClasses!240 (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))) (toValue!1464 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465)))))))))

(assert (= (and d!78980 res!123740) b!270899))

(declare-fun m!343283 () Bool)

(assert (=> d!78980 m!343283))

(declare-fun m!343285 () Bool)

(assert (=> b!270899 m!343285))

(assert (=> b!269518 d!78980))

(declare-fun lt!111617 () List!3827)

(declare-fun e!168271 () Bool)

(declare-fun b!270903 () Bool)

(assert (=> b!270903 (= e!168271 (or (not (= lt!110394 Nil!3817)) (= lt!111617 (t!38153 lt!110396))))))

(declare-fun b!270901 () Bool)

(declare-fun e!168270 () List!3827)

(assert (=> b!270901 (= e!168270 (Cons!3817 (h!9214 (t!38153 lt!110396)) (++!994 (t!38153 (t!38153 lt!110396)) lt!110394)))))

(declare-fun d!78982 () Bool)

(assert (=> d!78982 e!168271))

(declare-fun res!123742 () Bool)

(assert (=> d!78982 (=> (not res!123742) (not e!168271))))

(assert (=> d!78982 (= res!123742 (= (content!547 lt!111617) ((_ map or) (content!547 (t!38153 lt!110396)) (content!547 lt!110394))))))

(assert (=> d!78982 (= lt!111617 e!168270)))

(declare-fun c!51382 () Bool)

(assert (=> d!78982 (= c!51382 ((_ is Nil!3817) (t!38153 lt!110396)))))

(assert (=> d!78982 (= (++!994 (t!38153 lt!110396) lt!110394) lt!111617)))

(declare-fun b!270900 () Bool)

(assert (=> b!270900 (= e!168270 lt!110394)))

(declare-fun b!270902 () Bool)

(declare-fun res!123741 () Bool)

(assert (=> b!270902 (=> (not res!123741) (not e!168271))))

(assert (=> b!270902 (= res!123741 (= (size!3043 lt!111617) (+ (size!3043 (t!38153 lt!110396)) (size!3043 lt!110394))))))

(assert (= (and d!78982 c!51382) b!270900))

(assert (= (and d!78982 (not c!51382)) b!270901))

(assert (= (and d!78982 res!123742) b!270902))

(assert (= (and b!270902 res!123741) b!270903))

(declare-fun m!343287 () Bool)

(assert (=> b!270901 m!343287))

(declare-fun m!343289 () Bool)

(assert (=> d!78982 m!343289))

(assert (=> d!78982 m!340003))

(assert (=> d!78982 m!339617))

(declare-fun m!343291 () Bool)

(assert (=> b!270902 m!343291))

(assert (=> b!270902 m!339965))

(assert (=> b!270902 m!339621))

(assert (=> b!269324 d!78982))

(declare-fun d!78984 () Bool)

(declare-fun lt!111621 () BalanceConc!2568)

(assert (=> d!78984 (= (list!1557 lt!111621) (printListTailRec!127 thiss!17480 (dropList!162 (singletonSeq!275 call!14701) 0) (list!1557 (BalanceConc!2569 Empty!1280))))))

(declare-fun e!168273 () BalanceConc!2568)

(assert (=> d!78984 (= lt!111621 e!168273)))

(declare-fun c!51383 () Bool)

(assert (=> d!78984 (= c!51383 (>= 0 (size!3041 (singletonSeq!275 call!14701))))))

(declare-fun e!168272 () Bool)

(assert (=> d!78984 e!168272))

(declare-fun res!123743 () Bool)

(assert (=> d!78984 (=> (not res!123743) (not e!168272))))

(assert (=> d!78984 (= res!123743 (>= 0 0))))

(assert (=> d!78984 (= (printTailRec!303 thiss!17480 (singletonSeq!275 call!14701) 0 (BalanceConc!2569 Empty!1280)) lt!111621)))

(declare-fun b!270904 () Bool)

(assert (=> b!270904 (= e!168272 (<= 0 (size!3041 (singletonSeq!275 call!14701))))))

(declare-fun b!270905 () Bool)

(assert (=> b!270905 (= e!168273 (BalanceConc!2569 Empty!1280))))

(declare-fun b!270906 () Bool)

(assert (=> b!270906 (= e!168273 (printTailRec!303 thiss!17480 (singletonSeq!275 call!14701) (+ 0 1) (++!996 (BalanceConc!2569 Empty!1280) (charsOf!374 (apply!765 (singletonSeq!275 call!14701) 0)))))))

(declare-fun lt!111623 () List!3829)

(assert (=> b!270906 (= lt!111623 (list!1560 (singletonSeq!275 call!14701)))))

(declare-fun lt!111619 () Unit!4874)

(assert (=> b!270906 (= lt!111619 (lemmaDropApply!202 lt!111623 0))))

(assert (=> b!270906 (= (head!886 (drop!215 lt!111623 0)) (apply!766 lt!111623 0))))

(declare-fun lt!111622 () Unit!4874)

(assert (=> b!270906 (= lt!111622 lt!111619)))

(declare-fun lt!111624 () List!3829)

(assert (=> b!270906 (= lt!111624 (list!1560 (singletonSeq!275 call!14701)))))

(declare-fun lt!111618 () Unit!4874)

(assert (=> b!270906 (= lt!111618 (lemmaDropTail!194 lt!111624 0))))

(assert (=> b!270906 (= (tail!476 (drop!215 lt!111624 0)) (drop!215 lt!111624 (+ 0 1)))))

(declare-fun lt!111620 () Unit!4874)

(assert (=> b!270906 (= lt!111620 lt!111618)))

(assert (= (and d!78984 res!123743) b!270904))

(assert (= (and d!78984 c!51383) b!270905))

(assert (= (and d!78984 (not c!51383)) b!270906))

(declare-fun m!343293 () Bool)

(assert (=> d!78984 m!343293))

(assert (=> d!78984 m!339703))

(assert (=> d!78984 m!339535))

(declare-fun m!343295 () Bool)

(assert (=> d!78984 m!343295))

(declare-fun m!343297 () Bool)

(assert (=> d!78984 m!343297))

(assert (=> d!78984 m!339703))

(declare-fun m!343299 () Bool)

(assert (=> d!78984 m!343299))

(assert (=> d!78984 m!339535))

(assert (=> d!78984 m!343297))

(assert (=> b!270904 m!339535))

(assert (=> b!270904 m!343295))

(declare-fun m!343301 () Bool)

(assert (=> b!270906 m!343301))

(declare-fun m!343303 () Bool)

(assert (=> b!270906 m!343303))

(declare-fun m!343305 () Bool)

(assert (=> b!270906 m!343305))

(declare-fun m!343307 () Bool)

(assert (=> b!270906 m!343307))

(declare-fun m!343309 () Bool)

(assert (=> b!270906 m!343309))

(declare-fun m!343311 () Bool)

(assert (=> b!270906 m!343311))

(declare-fun m!343313 () Bool)

(assert (=> b!270906 m!343313))

(assert (=> b!270906 m!339535))

(declare-fun m!343315 () Bool)

(assert (=> b!270906 m!343315))

(assert (=> b!270906 m!343305))

(declare-fun m!343317 () Bool)

(assert (=> b!270906 m!343317))

(assert (=> b!270906 m!339535))

(assert (=> b!270906 m!343313))

(declare-fun m!343319 () Bool)

(assert (=> b!270906 m!343319))

(assert (=> b!270906 m!339535))

(declare-fun m!343321 () Bool)

(assert (=> b!270906 m!343321))

(declare-fun m!343323 () Bool)

(assert (=> b!270906 m!343323))

(declare-fun m!343325 () Bool)

(assert (=> b!270906 m!343325))

(assert (=> b!270906 m!343315))

(assert (=> b!270906 m!343311))

(assert (=> b!270906 m!343307))

(assert (=> b!269297 d!78984))

(declare-fun lt!111635 () Token!1202)

(declare-fun b!270908 () Bool)

(declare-fun e!168274 () Bool)

(assert (=> b!270908 (= e!168274 (= (rule!1314 lt!111635) (get!1265 (getRuleFromTag!124 thiss!17480 rules!1920 (tag!939 (rule!1314 lt!111635))))))))

(declare-fun b!270910 () Bool)

(declare-fun e!168275 () Unit!4874)

(declare-fun Unit!4928 () Unit!4874)

(assert (=> b!270910 (= e!168275 Unit!4928)))

(declare-fun d!78986 () Bool)

(assert (=> d!78986 (isDefined!651 (maxPrefix!333 thiss!17480 rules!1920 (++!994 (list!1557 call!14702) (list!1557 lt!110609))))))

(declare-fun lt!111631 () Unit!4874)

(assert (=> d!78986 (= lt!111631 e!168275)))

(declare-fun c!51384 () Bool)

(assert (=> d!78986 (= c!51384 (isEmpty!2425 (maxPrefix!333 thiss!17480 rules!1920 (++!994 (list!1557 call!14702) (list!1557 lt!110609)))))))

(declare-fun lt!111634 () Unit!4874)

(declare-fun lt!111629 () Unit!4874)

(assert (=> d!78986 (= lt!111634 lt!111629)))

(assert (=> d!78986 e!168274))

(declare-fun res!123744 () Bool)

(assert (=> d!78986 (=> (not res!123744) (not e!168274))))

(assert (=> d!78986 (= res!123744 (isDefined!653 (getRuleFromTag!124 thiss!17480 rules!1920 (tag!939 (rule!1314 lt!111635)))))))

(assert (=> d!78986 (= lt!111629 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!124 thiss!17480 rules!1920 (list!1557 call!14702) lt!111635))))

(declare-fun lt!111625 () Unit!4874)

(declare-fun lt!111638 () Unit!4874)

(assert (=> d!78986 (= lt!111625 lt!111638)))

(declare-fun lt!111636 () List!3827)

(assert (=> d!78986 (isPrefix!397 lt!111636 (++!994 (list!1557 call!14702) (list!1557 lt!110609)))))

(assert (=> d!78986 (= lt!111638 (lemmaPrefixStaysPrefixWhenAddingToSuffix!56 lt!111636 (list!1557 call!14702) (list!1557 lt!110609)))))

(assert (=> d!78986 (= lt!111636 (list!1557 (charsOf!374 lt!111635)))))

(declare-fun lt!111637 () Unit!4874)

(declare-fun lt!111640 () Unit!4874)

(assert (=> d!78986 (= lt!111637 lt!111640)))

(declare-fun lt!111630 () List!3827)

(declare-fun lt!111641 () List!3827)

(assert (=> d!78986 (isPrefix!397 lt!111630 (++!994 lt!111630 lt!111641))))

(assert (=> d!78986 (= lt!111640 (lemmaConcatTwoListThenFirstIsPrefix!292 lt!111630 lt!111641))))

(assert (=> d!78986 (= lt!111641 (_2!2358 (get!1263 (maxPrefix!333 thiss!17480 rules!1920 (list!1557 call!14702)))))))

(assert (=> d!78986 (= lt!111630 (list!1557 (charsOf!374 lt!111635)))))

(assert (=> d!78986 (= lt!111635 (head!886 (list!1560 (_1!2353 (lex!407 thiss!17480 rules!1920 (seqFromList!825 (list!1557 call!14702)))))))))

(assert (=> d!78986 (not (isEmpty!2413 rules!1920))))

(assert (=> d!78986 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!110 thiss!17480 rules!1920 (list!1557 call!14702) (list!1557 lt!110609)) lt!111631)))

(declare-fun b!270909 () Bool)

(declare-fun Unit!4929 () Unit!4874)

(assert (=> b!270909 (= e!168275 Unit!4929)))

(declare-fun lt!111626 () List!3827)

(assert (=> b!270909 (= lt!111626 (++!994 (list!1557 call!14702) (list!1557 lt!110609)))))

(declare-fun lt!111628 () Unit!4874)

(assert (=> b!270909 (= lt!111628 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!56 thiss!17480 (rule!1314 lt!111635) rules!1920 lt!111626))))

(assert (=> b!270909 (isEmpty!2425 (maxPrefixOneRule!141 thiss!17480 (rule!1314 lt!111635) lt!111626))))

(declare-fun lt!111639 () Unit!4874)

(assert (=> b!270909 (= lt!111639 lt!111628)))

(declare-fun lt!111627 () List!3827)

(assert (=> b!270909 (= lt!111627 (list!1557 (charsOf!374 lt!111635)))))

(declare-fun lt!111633 () Unit!4874)

(assert (=> b!270909 (= lt!111633 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!56 thiss!17480 (rule!1314 lt!111635) lt!111627 (++!994 (list!1557 call!14702) (list!1557 lt!110609))))))

(assert (=> b!270909 (not (matchR!275 (regex!729 (rule!1314 lt!111635)) lt!111627))))

(declare-fun lt!111632 () Unit!4874)

(assert (=> b!270909 (= lt!111632 lt!111633)))

(assert (=> b!270909 false))

(declare-fun b!270907 () Bool)

(declare-fun res!123745 () Bool)

(assert (=> b!270907 (=> (not res!123745) (not e!168274))))

(assert (=> b!270907 (= res!123745 (matchR!275 (regex!729 (get!1265 (getRuleFromTag!124 thiss!17480 rules!1920 (tag!939 (rule!1314 lt!111635))))) (list!1557 (charsOf!374 lt!111635))))))

(assert (= (and d!78986 res!123744) b!270907))

(assert (= (and b!270907 res!123745) b!270908))

(assert (= (and d!78986 c!51384) b!270909))

(assert (= (and d!78986 (not c!51384)) b!270910))

(declare-fun m!343327 () Bool)

(assert (=> b!270908 m!343327))

(assert (=> b!270908 m!343327))

(declare-fun m!343329 () Bool)

(assert (=> b!270908 m!343329))

(assert (=> d!78986 m!339533))

(declare-fun m!343331 () Bool)

(assert (=> d!78986 m!343331))

(declare-fun m!343333 () Bool)

(assert (=> d!78986 m!343333))

(assert (=> d!78986 m!343327))

(declare-fun m!343335 () Bool)

(assert (=> d!78986 m!343335))

(declare-fun m!343337 () Bool)

(assert (=> d!78986 m!343337))

(assert (=> d!78986 m!339533))

(assert (=> d!78986 m!343335))

(assert (=> d!78986 m!339533))

(declare-fun m!343339 () Bool)

(assert (=> d!78986 m!343339))

(declare-fun m!343341 () Bool)

(assert (=> d!78986 m!343341))

(declare-fun m!343343 () Bool)

(assert (=> d!78986 m!343343))

(assert (=> d!78986 m!338965))

(assert (=> d!78986 m!343333))

(declare-fun m!343345 () Bool)

(assert (=> d!78986 m!343345))

(declare-fun m!343347 () Bool)

(assert (=> d!78986 m!343347))

(declare-fun m!343349 () Bool)

(assert (=> d!78986 m!343349))

(declare-fun m!343351 () Bool)

(assert (=> d!78986 m!343351))

(declare-fun m!343353 () Bool)

(assert (=> d!78986 m!343353))

(assert (=> d!78986 m!343331))

(declare-fun m!343355 () Bool)

(assert (=> d!78986 m!343355))

(declare-fun m!343357 () Bool)

(assert (=> d!78986 m!343357))

(declare-fun m!343359 () Bool)

(assert (=> d!78986 m!343359))

(assert (=> d!78986 m!339533))

(assert (=> d!78986 m!339539))

(assert (=> d!78986 m!343341))

(assert (=> d!78986 m!343357))

(assert (=> d!78986 m!343341))

(assert (=> d!78986 m!343351))

(assert (=> d!78986 m!343347))

(assert (=> d!78986 m!343351))

(declare-fun m!343361 () Bool)

(assert (=> d!78986 m!343361))

(assert (=> d!78986 m!339533))

(assert (=> d!78986 m!339539))

(declare-fun m!343363 () Bool)

(assert (=> d!78986 m!343363))

(declare-fun m!343365 () Bool)

(assert (=> d!78986 m!343365))

(assert (=> d!78986 m!343327))

(declare-fun m!343367 () Bool)

(assert (=> d!78986 m!343367))

(assert (=> b!270909 m!339533))

(assert (=> b!270909 m!339539))

(assert (=> b!270909 m!343341))

(assert (=> b!270909 m!343347))

(declare-fun m!343369 () Bool)

(assert (=> b!270909 m!343369))

(declare-fun m!343371 () Bool)

(assert (=> b!270909 m!343371))

(declare-fun m!343373 () Bool)

(assert (=> b!270909 m!343373))

(assert (=> b!270909 m!343341))

(declare-fun m!343375 () Bool)

(assert (=> b!270909 m!343375))

(assert (=> b!270909 m!343347))

(assert (=> b!270909 m!343349))

(assert (=> b!270909 m!343373))

(declare-fun m!343377 () Bool)

(assert (=> b!270909 m!343377))

(assert (=> b!270907 m!343327))

(assert (=> b!270907 m!343327))

(assert (=> b!270907 m!343329))

(assert (=> b!270907 m!343347))

(assert (=> b!270907 m!343349))

(assert (=> b!270907 m!343349))

(declare-fun m!343379 () Bool)

(assert (=> b!270907 m!343379))

(assert (=> b!270907 m!343347))

(assert (=> b!269297 d!78986))

(declare-fun d!78988 () Bool)

(assert (=> d!78988 (= (list!1557 lt!110609) (list!1561 (c!50914 lt!110609)))))

(declare-fun bs!30198 () Bool)

(assert (= bs!30198 d!78988))

(declare-fun m!343381 () Bool)

(assert (=> bs!30198 m!343381))

(assert (=> b!269297 d!78988))

(declare-fun d!78990 () Bool)

(declare-fun e!168276 () Bool)

(assert (=> d!78990 e!168276))

(declare-fun res!123746 () Bool)

(assert (=> d!78990 (=> (not res!123746) (not e!168276))))

(declare-fun lt!111642 () BalanceConc!2570)

(assert (=> d!78990 (= res!123746 (= (list!1560 lt!111642) (Cons!3819 call!14701 Nil!3819)))))

(assert (=> d!78990 (= lt!111642 (singleton!111 call!14701))))

(assert (=> d!78990 (= (singletonSeq!275 call!14701) lt!111642)))

(declare-fun b!270911 () Bool)

(assert (=> b!270911 (= e!168276 (isBalanced!348 (c!50916 lt!111642)))))

(assert (= (and d!78990 res!123746) b!270911))

(declare-fun m!343383 () Bool)

(assert (=> d!78990 m!343383))

(declare-fun m!343385 () Bool)

(assert (=> d!78990 m!343385))

(declare-fun m!343387 () Bool)

(assert (=> b!270911 m!343387))

(assert (=> b!269297 d!78990))

(declare-fun d!78992 () Bool)

(assert (=> d!78992 (= (list!1557 call!14702) (list!1561 (c!50914 call!14702)))))

(declare-fun bs!30199 () Bool)

(assert (= bs!30199 d!78992))

(declare-fun m!343389 () Bool)

(assert (=> bs!30199 m!343389))

(assert (=> b!269297 d!78992))

(declare-fun d!78994 () Bool)

(declare-fun lt!111643 () BalanceConc!2568)

(assert (=> d!78994 (= (list!1557 lt!111643) (printList!291 thiss!17480 (list!1560 (singletonSeq!275 call!14701))))))

(assert (=> d!78994 (= lt!111643 (printTailRec!303 thiss!17480 (singletonSeq!275 call!14701) 0 (BalanceConc!2569 Empty!1280)))))

(assert (=> d!78994 (= (print!340 thiss!17480 (singletonSeq!275 call!14701)) lt!111643)))

(declare-fun bs!30200 () Bool)

(assert (= bs!30200 d!78994))

(declare-fun m!343391 () Bool)

(assert (=> bs!30200 m!343391))

(assert (=> bs!30200 m!339535))

(assert (=> bs!30200 m!343321))

(assert (=> bs!30200 m!343321))

(declare-fun m!343393 () Bool)

(assert (=> bs!30200 m!343393))

(assert (=> bs!30200 m!339535))

(assert (=> bs!30200 m!339537))

(assert (=> b!269297 d!78994))

(declare-fun lt!111644 () List!3827)

(declare-fun e!168278 () Bool)

(declare-fun b!270915 () Bool)

(assert (=> b!270915 (= e!168278 (or (not (= lt!110676 Nil!3817)) (= lt!111644 (list!1557 (charsOf!374 (h!9216 tokens!465))))))))

(declare-fun b!270913 () Bool)

(declare-fun e!168277 () List!3827)

(assert (=> b!270913 (= e!168277 (Cons!3817 (h!9214 (list!1557 (charsOf!374 (h!9216 tokens!465)))) (++!994 (t!38153 (list!1557 (charsOf!374 (h!9216 tokens!465)))) lt!110676)))))

(declare-fun d!78996 () Bool)

(assert (=> d!78996 e!168278))

(declare-fun res!123748 () Bool)

(assert (=> d!78996 (=> (not res!123748) (not e!168278))))

(assert (=> d!78996 (= res!123748 (= (content!547 lt!111644) ((_ map or) (content!547 (list!1557 (charsOf!374 (h!9216 tokens!465)))) (content!547 lt!110676))))))

(assert (=> d!78996 (= lt!111644 e!168277)))

(declare-fun c!51385 () Bool)

(assert (=> d!78996 (= c!51385 ((_ is Nil!3817) (list!1557 (charsOf!374 (h!9216 tokens!465)))))))

(assert (=> d!78996 (= (++!994 (list!1557 (charsOf!374 (h!9216 tokens!465))) lt!110676) lt!111644)))

(declare-fun b!270912 () Bool)

(assert (=> b!270912 (= e!168277 lt!110676)))

(declare-fun b!270914 () Bool)

(declare-fun res!123747 () Bool)

(assert (=> b!270914 (=> (not res!123747) (not e!168278))))

(assert (=> b!270914 (= res!123747 (= (size!3043 lt!111644) (+ (size!3043 (list!1557 (charsOf!374 (h!9216 tokens!465)))) (size!3043 lt!110676))))))

(assert (= (and d!78996 c!51385) b!270912))

(assert (= (and d!78996 (not c!51385)) b!270913))

(assert (= (and d!78996 res!123748) b!270914))

(assert (= (and b!270914 res!123747) b!270915))

(declare-fun m!343395 () Bool)

(assert (=> b!270913 m!343395))

(declare-fun m!343397 () Bool)

(assert (=> d!78996 m!343397))

(assert (=> d!78996 m!338953))

(declare-fun m!343399 () Bool)

(assert (=> d!78996 m!343399))

(assert (=> d!78996 m!340975))

(declare-fun m!343401 () Bool)

(assert (=> b!270914 m!343401))

(assert (=> b!270914 m!338953))

(declare-fun m!343403 () Bool)

(assert (=> b!270914 m!343403))

(assert (=> b!270914 m!340981))

(assert (=> b!269439 d!78996))

(declare-fun b!270916 () Bool)

(declare-fun e!168280 () Option!808)

(declare-fun call!14806 () Option!808)

(assert (=> b!270916 (= e!168280 call!14806)))

(declare-fun b!270917 () Bool)

(declare-fun res!123755 () Bool)

(declare-fun e!168279 () Bool)

(assert (=> b!270917 (=> (not res!123755) (not e!168279))))

(declare-fun lt!111648 () Option!808)

(assert (=> b!270917 (= res!123755 (matchR!275 (regex!729 (rule!1314 (_1!2358 (get!1263 lt!111648)))) (list!1557 (charsOf!374 (_1!2358 (get!1263 lt!111648))))))))

(declare-fun b!270918 () Bool)

(declare-fun res!123751 () Bool)

(assert (=> b!270918 (=> (not res!123751) (not e!168279))))

(assert (=> b!270918 (= res!123751 (= (++!994 (list!1557 (charsOf!374 (_1!2358 (get!1263 lt!111648)))) (_2!2358 (get!1263 lt!111648))) (++!994 (list!1557 (charsOf!374 (h!9216 tokens!465))) lt!110676)))))

(declare-fun b!270919 () Bool)

(declare-fun res!123753 () Bool)

(assert (=> b!270919 (=> (not res!123753) (not e!168279))))

(assert (=> b!270919 (= res!123753 (= (value!25092 (_1!2358 (get!1263 lt!111648))) (apply!769 (transformation!729 (rule!1314 (_1!2358 (get!1263 lt!111648)))) (seqFromList!825 (originalCharacters!772 (_1!2358 (get!1263 lt!111648)))))))))

(declare-fun d!78998 () Bool)

(declare-fun e!168281 () Bool)

(assert (=> d!78998 e!168281))

(declare-fun res!123749 () Bool)

(assert (=> d!78998 (=> res!123749 e!168281)))

(assert (=> d!78998 (= res!123749 (isEmpty!2425 lt!111648))))

(assert (=> d!78998 (= lt!111648 e!168280)))

(declare-fun c!51386 () Bool)

(assert (=> d!78998 (= c!51386 (and ((_ is Cons!3820) rules!1920) ((_ is Nil!3820) (t!38156 rules!1920))))))

(declare-fun lt!111647 () Unit!4874)

(declare-fun lt!111645 () Unit!4874)

(assert (=> d!78998 (= lt!111647 lt!111645)))

(assert (=> d!78998 (isPrefix!397 (++!994 (list!1557 (charsOf!374 (h!9216 tokens!465))) lt!110676) (++!994 (list!1557 (charsOf!374 (h!9216 tokens!465))) lt!110676))))

(assert (=> d!78998 (= lt!111645 (lemmaIsPrefixRefl!207 (++!994 (list!1557 (charsOf!374 (h!9216 tokens!465))) lt!110676) (++!994 (list!1557 (charsOf!374 (h!9216 tokens!465))) lt!110676)))))

(assert (=> d!78998 (rulesValidInductive!202 thiss!17480 rules!1920)))

(assert (=> d!78998 (= (maxPrefix!333 thiss!17480 rules!1920 (++!994 (list!1557 (charsOf!374 (h!9216 tokens!465))) lt!110676)) lt!111648)))

(declare-fun b!270920 () Bool)

(assert (=> b!270920 (= e!168281 e!168279)))

(declare-fun res!123754 () Bool)

(assert (=> b!270920 (=> (not res!123754) (not e!168279))))

(assert (=> b!270920 (= res!123754 (isDefined!651 lt!111648))))

(declare-fun bm!14801 () Bool)

(assert (=> bm!14801 (= call!14806 (maxPrefixOneRule!141 thiss!17480 (h!9217 rules!1920) (++!994 (list!1557 (charsOf!374 (h!9216 tokens!465))) lt!110676)))))

(declare-fun b!270921 () Bool)

(declare-fun res!123750 () Bool)

(assert (=> b!270921 (=> (not res!123750) (not e!168279))))

(assert (=> b!270921 (= res!123750 (= (list!1557 (charsOf!374 (_1!2358 (get!1263 lt!111648)))) (originalCharacters!772 (_1!2358 (get!1263 lt!111648)))))))

(declare-fun b!270922 () Bool)

(assert (=> b!270922 (= e!168279 (contains!719 rules!1920 (rule!1314 (_1!2358 (get!1263 lt!111648)))))))

(declare-fun b!270923 () Bool)

(declare-fun res!123752 () Bool)

(assert (=> b!270923 (=> (not res!123752) (not e!168279))))

(assert (=> b!270923 (= res!123752 (< (size!3043 (_2!2358 (get!1263 lt!111648))) (size!3043 (++!994 (list!1557 (charsOf!374 (h!9216 tokens!465))) lt!110676))))))

(declare-fun b!270924 () Bool)

(declare-fun lt!111646 () Option!808)

(declare-fun lt!111649 () Option!808)

(assert (=> b!270924 (= e!168280 (ite (and ((_ is None!807) lt!111646) ((_ is None!807) lt!111649)) None!807 (ite ((_ is None!807) lt!111649) lt!111646 (ite ((_ is None!807) lt!111646) lt!111649 (ite (>= (size!3037 (_1!2358 (v!14676 lt!111646))) (size!3037 (_1!2358 (v!14676 lt!111649)))) lt!111646 lt!111649)))))))

(assert (=> b!270924 (= lt!111646 call!14806)))

(assert (=> b!270924 (= lt!111649 (maxPrefix!333 thiss!17480 (t!38156 rules!1920) (++!994 (list!1557 (charsOf!374 (h!9216 tokens!465))) lt!110676)))))

(assert (= (and d!78998 c!51386) b!270916))

(assert (= (and d!78998 (not c!51386)) b!270924))

(assert (= (or b!270916 b!270924) bm!14801))

(assert (= (and d!78998 (not res!123749)) b!270920))

(assert (= (and b!270920 res!123754) b!270921))

(assert (= (and b!270921 res!123750) b!270923))

(assert (= (and b!270923 res!123752) b!270918))

(assert (= (and b!270918 res!123751) b!270919))

(assert (= (and b!270919 res!123753) b!270917))

(assert (= (and b!270917 res!123755) b!270922))

(declare-fun m!343405 () Bool)

(assert (=> b!270921 m!343405))

(declare-fun m!343407 () Bool)

(assert (=> b!270921 m!343407))

(assert (=> b!270921 m!343407))

(declare-fun m!343409 () Bool)

(assert (=> b!270921 m!343409))

(assert (=> b!270918 m!343405))

(assert (=> b!270918 m!343407))

(assert (=> b!270918 m!343407))

(assert (=> b!270918 m!343409))

(assert (=> b!270918 m!343409))

(declare-fun m!343411 () Bool)

(assert (=> b!270918 m!343411))

(declare-fun m!343413 () Bool)

(assert (=> d!78998 m!343413))

(assert (=> d!78998 m!339803))

(assert (=> d!78998 m!339803))

(declare-fun m!343415 () Bool)

(assert (=> d!78998 m!343415))

(assert (=> d!78998 m!339803))

(assert (=> d!78998 m!339803))

(declare-fun m!343417 () Bool)

(assert (=> d!78998 m!343417))

(assert (=> d!78998 m!340485))

(assert (=> b!270922 m!343405))

(declare-fun m!343419 () Bool)

(assert (=> b!270922 m!343419))

(declare-fun m!343421 () Bool)

(assert (=> b!270920 m!343421))

(assert (=> b!270919 m!343405))

(declare-fun m!343423 () Bool)

(assert (=> b!270919 m!343423))

(assert (=> b!270919 m!343423))

(declare-fun m!343425 () Bool)

(assert (=> b!270919 m!343425))

(assert (=> b!270924 m!339803))

(declare-fun m!343427 () Bool)

(assert (=> b!270924 m!343427))

(assert (=> b!270917 m!343405))

(assert (=> b!270917 m!343407))

(assert (=> b!270917 m!343407))

(assert (=> b!270917 m!343409))

(assert (=> b!270917 m!343409))

(declare-fun m!343429 () Bool)

(assert (=> b!270917 m!343429))

(assert (=> bm!14801 m!339803))

(declare-fun m!343431 () Bool)

(assert (=> bm!14801 m!343431))

(assert (=> b!270923 m!343405))

(declare-fun m!343433 () Bool)

(assert (=> b!270923 m!343433))

(assert (=> b!270923 m!339803))

(declare-fun m!343435 () Bool)

(assert (=> b!270923 m!343435))

(assert (=> b!269439 d!78998))

(assert (=> b!269439 d!78002))

(declare-fun d!79000 () Bool)

(assert (=> d!79000 (dynLambda!1959 lambda!9114 (h!9216 tokens!465))))

(declare-fun lt!111650 () Unit!4874)

(assert (=> d!79000 (= lt!111650 (choose!2452 tokens!465 lambda!9114 (h!9216 tokens!465)))))

(declare-fun e!168282 () Bool)

(assert (=> d!79000 e!168282))

(declare-fun res!123756 () Bool)

(assert (=> d!79000 (=> (not res!123756) (not e!168282))))

(assert (=> d!79000 (= res!123756 (forall!956 tokens!465 lambda!9114))))

(assert (=> d!79000 (= (forallContained!284 tokens!465 lambda!9114 (h!9216 tokens!465)) lt!111650)))

(declare-fun b!270925 () Bool)

(assert (=> b!270925 (= e!168282 (contains!718 tokens!465 (h!9216 tokens!465)))))

(assert (= (and d!79000 res!123756) b!270925))

(declare-fun b_lambda!8613 () Bool)

(assert (=> (not b_lambda!8613) (not d!79000)))

(declare-fun m!343437 () Bool)

(assert (=> d!79000 m!343437))

(declare-fun m!343439 () Bool)

(assert (=> d!79000 m!343439))

(declare-fun m!343441 () Bool)

(assert (=> d!79000 m!343441))

(declare-fun m!343443 () Bool)

(assert (=> b!270925 m!343443))

(assert (=> b!269439 d!79000))

(assert (=> b!269439 d!78078))

(assert (=> b!269439 d!78080))

(declare-fun d!79002 () Bool)

(declare-fun lt!111651 () BalanceConc!2568)

(assert (=> d!79002 (= (list!1557 lt!111651) (printList!291 thiss!17480 (list!1560 (singletonSeq!275 (h!9216 (t!38155 tokens!465))))))))

(assert (=> d!79002 (= lt!111651 (printTailRec!303 thiss!17480 (singletonSeq!275 (h!9216 (t!38155 tokens!465))) 0 (BalanceConc!2569 Empty!1280)))))

(assert (=> d!79002 (= (print!340 thiss!17480 (singletonSeq!275 (h!9216 (t!38155 tokens!465)))) lt!111651)))

(declare-fun bs!30201 () Bool)

(assert (= bs!30201 d!79002))

(declare-fun m!343445 () Bool)

(assert (=> bs!30201 m!343445))

(assert (=> bs!30201 m!339313))

(declare-fun m!343447 () Bool)

(assert (=> bs!30201 m!343447))

(assert (=> bs!30201 m!343447))

(declare-fun m!343449 () Bool)

(assert (=> bs!30201 m!343449))

(assert (=> bs!30201 m!339313))

(assert (=> bs!30201 m!339317))

(assert (=> b!269172 d!79002))

(declare-fun d!79004 () Bool)

(declare-fun e!168283 () Bool)

(assert (=> d!79004 e!168283))

(declare-fun res!123757 () Bool)

(assert (=> d!79004 (=> (not res!123757) (not e!168283))))

(declare-fun lt!111652 () BalanceConc!2570)

(assert (=> d!79004 (= res!123757 (= (list!1560 lt!111652) (Cons!3819 (h!9216 (t!38155 tokens!465)) Nil!3819)))))

(assert (=> d!79004 (= lt!111652 (singleton!111 (h!9216 (t!38155 tokens!465))))))

(assert (=> d!79004 (= (singletonSeq!275 (h!9216 (t!38155 tokens!465))) lt!111652)))

(declare-fun b!270926 () Bool)

(assert (=> b!270926 (= e!168283 (isBalanced!348 (c!50916 lt!111652)))))

(assert (= (and d!79004 res!123757) b!270926))

(declare-fun m!343451 () Bool)

(assert (=> d!79004 m!343451))

(declare-fun m!343453 () Bool)

(assert (=> d!79004 m!343453))

(declare-fun m!343455 () Bool)

(assert (=> b!270926 m!343455))

(assert (=> b!269172 d!79004))

(declare-fun d!79006 () Bool)

(declare-fun lt!111656 () BalanceConc!2568)

(assert (=> d!79006 (= (list!1557 lt!111656) (printListTailRec!127 thiss!17480 (dropList!162 (singletonSeq!275 (h!9216 (t!38155 tokens!465))) 0) (list!1557 (BalanceConc!2569 Empty!1280))))))

(declare-fun e!168285 () BalanceConc!2568)

(assert (=> d!79006 (= lt!111656 e!168285)))

(declare-fun c!51387 () Bool)

(assert (=> d!79006 (= c!51387 (>= 0 (size!3041 (singletonSeq!275 (h!9216 (t!38155 tokens!465))))))))

(declare-fun e!168284 () Bool)

(assert (=> d!79006 e!168284))

(declare-fun res!123758 () Bool)

(assert (=> d!79006 (=> (not res!123758) (not e!168284))))

(assert (=> d!79006 (= res!123758 (>= 0 0))))

(assert (=> d!79006 (= (printTailRec!303 thiss!17480 (singletonSeq!275 (h!9216 (t!38155 tokens!465))) 0 (BalanceConc!2569 Empty!1280)) lt!111656)))

(declare-fun b!270927 () Bool)

(assert (=> b!270927 (= e!168284 (<= 0 (size!3041 (singletonSeq!275 (h!9216 (t!38155 tokens!465))))))))

(declare-fun b!270928 () Bool)

(assert (=> b!270928 (= e!168285 (BalanceConc!2569 Empty!1280))))

(declare-fun b!270929 () Bool)

(assert (=> b!270929 (= e!168285 (printTailRec!303 thiss!17480 (singletonSeq!275 (h!9216 (t!38155 tokens!465))) (+ 0 1) (++!996 (BalanceConc!2569 Empty!1280) (charsOf!374 (apply!765 (singletonSeq!275 (h!9216 (t!38155 tokens!465))) 0)))))))

(declare-fun lt!111658 () List!3829)

(assert (=> b!270929 (= lt!111658 (list!1560 (singletonSeq!275 (h!9216 (t!38155 tokens!465)))))))

(declare-fun lt!111654 () Unit!4874)

(assert (=> b!270929 (= lt!111654 (lemmaDropApply!202 lt!111658 0))))

(assert (=> b!270929 (= (head!886 (drop!215 lt!111658 0)) (apply!766 lt!111658 0))))

(declare-fun lt!111657 () Unit!4874)

(assert (=> b!270929 (= lt!111657 lt!111654)))

(declare-fun lt!111659 () List!3829)

(assert (=> b!270929 (= lt!111659 (list!1560 (singletonSeq!275 (h!9216 (t!38155 tokens!465)))))))

(declare-fun lt!111653 () Unit!4874)

(assert (=> b!270929 (= lt!111653 (lemmaDropTail!194 lt!111659 0))))

(assert (=> b!270929 (= (tail!476 (drop!215 lt!111659 0)) (drop!215 lt!111659 (+ 0 1)))))

(declare-fun lt!111655 () Unit!4874)

(assert (=> b!270929 (= lt!111655 lt!111653)))

(assert (= (and d!79006 res!123758) b!270927))

(assert (= (and d!79006 c!51387) b!270928))

(assert (= (and d!79006 (not c!51387)) b!270929))

(declare-fun m!343457 () Bool)

(assert (=> d!79006 m!343457))

(assert (=> d!79006 m!339703))

(assert (=> d!79006 m!339313))

(declare-fun m!343459 () Bool)

(assert (=> d!79006 m!343459))

(declare-fun m!343461 () Bool)

(assert (=> d!79006 m!343461))

(assert (=> d!79006 m!339703))

(declare-fun m!343463 () Bool)

(assert (=> d!79006 m!343463))

(assert (=> d!79006 m!339313))

(assert (=> d!79006 m!343461))

(assert (=> b!270927 m!339313))

(assert (=> b!270927 m!343459))

(declare-fun m!343465 () Bool)

(assert (=> b!270929 m!343465))

(declare-fun m!343467 () Bool)

(assert (=> b!270929 m!343467))

(declare-fun m!343469 () Bool)

(assert (=> b!270929 m!343469))

(declare-fun m!343471 () Bool)

(assert (=> b!270929 m!343471))

(declare-fun m!343473 () Bool)

(assert (=> b!270929 m!343473))

(declare-fun m!343475 () Bool)

(assert (=> b!270929 m!343475))

(declare-fun m!343477 () Bool)

(assert (=> b!270929 m!343477))

(assert (=> b!270929 m!339313))

(declare-fun m!343479 () Bool)

(assert (=> b!270929 m!343479))

(assert (=> b!270929 m!343469))

(declare-fun m!343481 () Bool)

(assert (=> b!270929 m!343481))

(assert (=> b!270929 m!339313))

(assert (=> b!270929 m!343477))

(declare-fun m!343483 () Bool)

(assert (=> b!270929 m!343483))

(assert (=> b!270929 m!339313))

(assert (=> b!270929 m!343447))

(declare-fun m!343485 () Bool)

(assert (=> b!270929 m!343485))

(declare-fun m!343487 () Bool)

(assert (=> b!270929 m!343487))

(assert (=> b!270929 m!343479))

(assert (=> b!270929 m!343475))

(assert (=> b!270929 m!343471))

(assert (=> b!269172 d!79006))

(declare-fun e!168286 () Bool)

(declare-fun lt!111670 () Token!1202)

(declare-fun b!270931 () Bool)

(assert (=> b!270931 (= e!168286 (= (rule!1314 lt!111670) (get!1265 (getRuleFromTag!124 thiss!17480 rules!1920 (tag!939 (rule!1314 lt!111670))))))))

(declare-fun b!270933 () Bool)

(declare-fun e!168287 () Unit!4874)

(declare-fun Unit!4930 () Unit!4874)

(assert (=> b!270933 (= e!168287 Unit!4930)))

(declare-fun d!79008 () Bool)

(assert (=> d!79008 (isDefined!651 (maxPrefix!333 thiss!17480 rules!1920 (++!994 call!14680 lt!110517)))))

(declare-fun lt!111666 () Unit!4874)

(assert (=> d!79008 (= lt!111666 e!168287)))

(declare-fun c!51388 () Bool)

(assert (=> d!79008 (= c!51388 (isEmpty!2425 (maxPrefix!333 thiss!17480 rules!1920 (++!994 call!14680 lt!110517))))))

(declare-fun lt!111669 () Unit!4874)

(declare-fun lt!111664 () Unit!4874)

(assert (=> d!79008 (= lt!111669 lt!111664)))

(assert (=> d!79008 e!168286))

(declare-fun res!123759 () Bool)

(assert (=> d!79008 (=> (not res!123759) (not e!168286))))

(assert (=> d!79008 (= res!123759 (isDefined!653 (getRuleFromTag!124 thiss!17480 rules!1920 (tag!939 (rule!1314 lt!111670)))))))

(assert (=> d!79008 (= lt!111664 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!124 thiss!17480 rules!1920 call!14680 lt!111670))))

(declare-fun lt!111660 () Unit!4874)

(declare-fun lt!111673 () Unit!4874)

(assert (=> d!79008 (= lt!111660 lt!111673)))

(declare-fun lt!111671 () List!3827)

(assert (=> d!79008 (isPrefix!397 lt!111671 (++!994 call!14680 lt!110517))))

(assert (=> d!79008 (= lt!111673 (lemmaPrefixStaysPrefixWhenAddingToSuffix!56 lt!111671 call!14680 lt!110517))))

(assert (=> d!79008 (= lt!111671 (list!1557 (charsOf!374 lt!111670)))))

(declare-fun lt!111672 () Unit!4874)

(declare-fun lt!111675 () Unit!4874)

(assert (=> d!79008 (= lt!111672 lt!111675)))

(declare-fun lt!111665 () List!3827)

(declare-fun lt!111676 () List!3827)

(assert (=> d!79008 (isPrefix!397 lt!111665 (++!994 lt!111665 lt!111676))))

(assert (=> d!79008 (= lt!111675 (lemmaConcatTwoListThenFirstIsPrefix!292 lt!111665 lt!111676))))

(assert (=> d!79008 (= lt!111676 (_2!2358 (get!1263 (maxPrefix!333 thiss!17480 rules!1920 call!14680))))))

(assert (=> d!79008 (= lt!111665 (list!1557 (charsOf!374 lt!111670)))))

(assert (=> d!79008 (= lt!111670 (head!886 (list!1560 (_1!2353 (lex!407 thiss!17480 rules!1920 (seqFromList!825 call!14680))))))))

(assert (=> d!79008 (not (isEmpty!2413 rules!1920))))

(assert (=> d!79008 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!110 thiss!17480 rules!1920 call!14680 lt!110517) lt!111666)))

(declare-fun b!270932 () Bool)

(declare-fun Unit!4931 () Unit!4874)

(assert (=> b!270932 (= e!168287 Unit!4931)))

(declare-fun lt!111661 () List!3827)

(assert (=> b!270932 (= lt!111661 (++!994 call!14680 lt!110517))))

(declare-fun lt!111663 () Unit!4874)

(assert (=> b!270932 (= lt!111663 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!56 thiss!17480 (rule!1314 lt!111670) rules!1920 lt!111661))))

(assert (=> b!270932 (isEmpty!2425 (maxPrefixOneRule!141 thiss!17480 (rule!1314 lt!111670) lt!111661))))

(declare-fun lt!111674 () Unit!4874)

(assert (=> b!270932 (= lt!111674 lt!111663)))

(declare-fun lt!111662 () List!3827)

(assert (=> b!270932 (= lt!111662 (list!1557 (charsOf!374 lt!111670)))))

(declare-fun lt!111668 () Unit!4874)

(assert (=> b!270932 (= lt!111668 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!56 thiss!17480 (rule!1314 lt!111670) lt!111662 (++!994 call!14680 lt!110517)))))

(assert (=> b!270932 (not (matchR!275 (regex!729 (rule!1314 lt!111670)) lt!111662))))

(declare-fun lt!111667 () Unit!4874)

(assert (=> b!270932 (= lt!111667 lt!111668)))

(assert (=> b!270932 false))

(declare-fun b!270930 () Bool)

(declare-fun res!123760 () Bool)

(assert (=> b!270930 (=> (not res!123760) (not e!168286))))

(assert (=> b!270930 (= res!123760 (matchR!275 (regex!729 (get!1265 (getRuleFromTag!124 thiss!17480 rules!1920 (tag!939 (rule!1314 lt!111670))))) (list!1557 (charsOf!374 lt!111670))))))

(assert (= (and d!79008 res!123759) b!270930))

(assert (= (and b!270930 res!123760) b!270931))

(assert (= (and d!79008 c!51388) b!270932))

(assert (= (and d!79008 (not c!51388)) b!270933))

(declare-fun m!343489 () Bool)

(assert (=> b!270931 m!343489))

(assert (=> b!270931 m!343489))

(declare-fun m!343491 () Bool)

(assert (=> b!270931 m!343491))

(declare-fun m!343493 () Bool)

(assert (=> d!79008 m!343493))

(declare-fun m!343495 () Bool)

(assert (=> d!79008 m!343495))

(assert (=> d!79008 m!343489))

(declare-fun m!343497 () Bool)

(assert (=> d!79008 m!343497))

(declare-fun m!343499 () Bool)

(assert (=> d!79008 m!343499))

(assert (=> d!79008 m!343497))

(declare-fun m!343501 () Bool)

(assert (=> d!79008 m!343501))

(declare-fun m!343503 () Bool)

(assert (=> d!79008 m!343503))

(declare-fun m!343505 () Bool)

(assert (=> d!79008 m!343505))

(assert (=> d!79008 m!338965))

(assert (=> d!79008 m!343495))

(declare-fun m!343507 () Bool)

(assert (=> d!79008 m!343507))

(declare-fun m!343509 () Bool)

(assert (=> d!79008 m!343509))

(declare-fun m!343511 () Bool)

(assert (=> d!79008 m!343511))

(declare-fun m!343513 () Bool)

(assert (=> d!79008 m!343513))

(declare-fun m!343515 () Bool)

(assert (=> d!79008 m!343515))

(assert (=> d!79008 m!343493))

(declare-fun m!343517 () Bool)

(assert (=> d!79008 m!343517))

(declare-fun m!343519 () Bool)

(assert (=> d!79008 m!343519))

(declare-fun m!343521 () Bool)

(assert (=> d!79008 m!343521))

(assert (=> d!79008 m!343503))

(assert (=> d!79008 m!343519))

(assert (=> d!79008 m!343503))

(assert (=> d!79008 m!343513))

(assert (=> d!79008 m!343509))

(assert (=> d!79008 m!343513))

(declare-fun m!343523 () Bool)

(assert (=> d!79008 m!343523))

(declare-fun m!343525 () Bool)

(assert (=> d!79008 m!343525))

(declare-fun m!343527 () Bool)

(assert (=> d!79008 m!343527))

(assert (=> d!79008 m!343489))

(declare-fun m!343529 () Bool)

(assert (=> d!79008 m!343529))

(assert (=> b!270932 m!343503))

(assert (=> b!270932 m!343509))

(declare-fun m!343531 () Bool)

(assert (=> b!270932 m!343531))

(declare-fun m!343533 () Bool)

(assert (=> b!270932 m!343533))

(declare-fun m!343535 () Bool)

(assert (=> b!270932 m!343535))

(assert (=> b!270932 m!343503))

(declare-fun m!343537 () Bool)

(assert (=> b!270932 m!343537))

(assert (=> b!270932 m!343509))

(assert (=> b!270932 m!343511))

(assert (=> b!270932 m!343535))

(declare-fun m!343539 () Bool)

(assert (=> b!270932 m!343539))

(assert (=> b!270930 m!343489))

(assert (=> b!270930 m!343489))

(assert (=> b!270930 m!343491))

(assert (=> b!270930 m!343509))

(assert (=> b!270930 m!343511))

(assert (=> b!270930 m!343511))

(declare-fun m!343541 () Bool)

(assert (=> b!270930 m!343541))

(assert (=> b!270930 m!343509))

(assert (=> b!269172 d!79008))

(declare-fun d!79010 () Bool)

(assert (=> d!79010 (= (list!1557 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (value!25092 (h!9216 tokens!465)))) (list!1561 (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (value!25092 (h!9216 tokens!465))))))))

(declare-fun bs!30202 () Bool)

(assert (= bs!30202 d!79010))

(declare-fun m!343543 () Bool)

(assert (=> bs!30202 m!343543))

(assert (=> b!269336 d!79010))

(declare-fun e!168288 () Bool)

(assert (=> b!269522 (= tp!102385 e!168288)))

(declare-fun b!270936 () Bool)

(declare-fun tp!102538 () Bool)

(assert (=> b!270936 (= e!168288 tp!102538)))

(declare-fun b!270935 () Bool)

(declare-fun tp!102535 () Bool)

(declare-fun tp!102539 () Bool)

(assert (=> b!270935 (= e!168288 (and tp!102535 tp!102539))))

(declare-fun b!270937 () Bool)

(declare-fun tp!102537 () Bool)

(declare-fun tp!102536 () Bool)

(assert (=> b!270937 (= e!168288 (and tp!102537 tp!102536))))

(declare-fun b!270934 () Bool)

(assert (=> b!270934 (= e!168288 tp_is_empty!1811)))

(assert (= (and b!269522 ((_ is ElementMatch!953) (reg!1282 (regex!729 (rule!1314 (h!9216 tokens!465)))))) b!270934))

(assert (= (and b!269522 ((_ is Concat!1705) (reg!1282 (regex!729 (rule!1314 (h!9216 tokens!465)))))) b!270935))

(assert (= (and b!269522 ((_ is Star!953) (reg!1282 (regex!729 (rule!1314 (h!9216 tokens!465)))))) b!270936))

(assert (= (and b!269522 ((_ is Union!953) (reg!1282 (regex!729 (rule!1314 (h!9216 tokens!465)))))) b!270937))

(declare-fun e!168289 () Bool)

(assert (=> b!269521 (= tp!102382 e!168289)))

(declare-fun b!270940 () Bool)

(declare-fun tp!102543 () Bool)

(assert (=> b!270940 (= e!168289 tp!102543)))

(declare-fun b!270939 () Bool)

(declare-fun tp!102540 () Bool)

(declare-fun tp!102544 () Bool)

(assert (=> b!270939 (= e!168289 (and tp!102540 tp!102544))))

(declare-fun b!270941 () Bool)

(declare-fun tp!102542 () Bool)

(declare-fun tp!102541 () Bool)

(assert (=> b!270941 (= e!168289 (and tp!102542 tp!102541))))

(declare-fun b!270938 () Bool)

(assert (=> b!270938 (= e!168289 tp_is_empty!1811)))

(assert (= (and b!269521 ((_ is ElementMatch!953) (regOne!2418 (regex!729 (rule!1314 (h!9216 tokens!465)))))) b!270938))

(assert (= (and b!269521 ((_ is Concat!1705) (regOne!2418 (regex!729 (rule!1314 (h!9216 tokens!465)))))) b!270939))

(assert (= (and b!269521 ((_ is Star!953) (regOne!2418 (regex!729 (rule!1314 (h!9216 tokens!465)))))) b!270940))

(assert (= (and b!269521 ((_ is Union!953) (regOne!2418 (regex!729 (rule!1314 (h!9216 tokens!465)))))) b!270941))

(declare-fun e!168290 () Bool)

(assert (=> b!269521 (= tp!102386 e!168290)))

(declare-fun b!270944 () Bool)

(declare-fun tp!102548 () Bool)

(assert (=> b!270944 (= e!168290 tp!102548)))

(declare-fun b!270943 () Bool)

(declare-fun tp!102545 () Bool)

(declare-fun tp!102549 () Bool)

(assert (=> b!270943 (= e!168290 (and tp!102545 tp!102549))))

(declare-fun b!270945 () Bool)

(declare-fun tp!102547 () Bool)

(declare-fun tp!102546 () Bool)

(assert (=> b!270945 (= e!168290 (and tp!102547 tp!102546))))

(declare-fun b!270942 () Bool)

(assert (=> b!270942 (= e!168290 tp_is_empty!1811)))

(assert (= (and b!269521 ((_ is ElementMatch!953) (regTwo!2418 (regex!729 (rule!1314 (h!9216 tokens!465)))))) b!270942))

(assert (= (and b!269521 ((_ is Concat!1705) (regTwo!2418 (regex!729 (rule!1314 (h!9216 tokens!465)))))) b!270943))

(assert (= (and b!269521 ((_ is Star!953) (regTwo!2418 (regex!729 (rule!1314 (h!9216 tokens!465)))))) b!270944))

(assert (= (and b!269521 ((_ is Union!953) (regTwo!2418 (regex!729 (rule!1314 (h!9216 tokens!465)))))) b!270945))

(declare-fun e!168291 () Bool)

(assert (=> b!269523 (= tp!102384 e!168291)))

(declare-fun b!270948 () Bool)

(declare-fun tp!102553 () Bool)

(assert (=> b!270948 (= e!168291 tp!102553)))

(declare-fun b!270947 () Bool)

(declare-fun tp!102550 () Bool)

(declare-fun tp!102554 () Bool)

(assert (=> b!270947 (= e!168291 (and tp!102550 tp!102554))))

(declare-fun b!270949 () Bool)

(declare-fun tp!102552 () Bool)

(declare-fun tp!102551 () Bool)

(assert (=> b!270949 (= e!168291 (and tp!102552 tp!102551))))

(declare-fun b!270946 () Bool)

(assert (=> b!270946 (= e!168291 tp_is_empty!1811)))

(assert (= (and b!269523 ((_ is ElementMatch!953) (regOne!2419 (regex!729 (rule!1314 (h!9216 tokens!465)))))) b!270946))

(assert (= (and b!269523 ((_ is Concat!1705) (regOne!2419 (regex!729 (rule!1314 (h!9216 tokens!465)))))) b!270947))

(assert (= (and b!269523 ((_ is Star!953) (regOne!2419 (regex!729 (rule!1314 (h!9216 tokens!465)))))) b!270948))

(assert (= (and b!269523 ((_ is Union!953) (regOne!2419 (regex!729 (rule!1314 (h!9216 tokens!465)))))) b!270949))

(declare-fun e!168292 () Bool)

(assert (=> b!269523 (= tp!102383 e!168292)))

(declare-fun b!270952 () Bool)

(declare-fun tp!102558 () Bool)

(assert (=> b!270952 (= e!168292 tp!102558)))

(declare-fun b!270951 () Bool)

(declare-fun tp!102555 () Bool)

(declare-fun tp!102559 () Bool)

(assert (=> b!270951 (= e!168292 (and tp!102555 tp!102559))))

(declare-fun b!270953 () Bool)

(declare-fun tp!102557 () Bool)

(declare-fun tp!102556 () Bool)

(assert (=> b!270953 (= e!168292 (and tp!102557 tp!102556))))

(declare-fun b!270950 () Bool)

(assert (=> b!270950 (= e!168292 tp_is_empty!1811)))

(assert (= (and b!269523 ((_ is ElementMatch!953) (regTwo!2419 (regex!729 (rule!1314 (h!9216 tokens!465)))))) b!270950))

(assert (= (and b!269523 ((_ is Concat!1705) (regTwo!2419 (regex!729 (rule!1314 (h!9216 tokens!465)))))) b!270951))

(assert (= (and b!269523 ((_ is Star!953) (regTwo!2419 (regex!729 (rule!1314 (h!9216 tokens!465)))))) b!270952))

(assert (= (and b!269523 ((_ is Union!953) (regTwo!2419 (regex!729 (rule!1314 (h!9216 tokens!465)))))) b!270953))

(declare-fun e!168293 () Bool)

(assert (=> b!269503 (= tp!102362 e!168293)))

(declare-fun b!270956 () Bool)

(declare-fun tp!102563 () Bool)

(assert (=> b!270956 (= e!168293 tp!102563)))

(declare-fun b!270955 () Bool)

(declare-fun tp!102560 () Bool)

(declare-fun tp!102564 () Bool)

(assert (=> b!270955 (= e!168293 (and tp!102560 tp!102564))))

(declare-fun b!270957 () Bool)

(declare-fun tp!102562 () Bool)

(declare-fun tp!102561 () Bool)

(assert (=> b!270957 (= e!168293 (and tp!102562 tp!102561))))

(declare-fun b!270954 () Bool)

(assert (=> b!270954 (= e!168293 tp_is_empty!1811)))

(assert (= (and b!269503 ((_ is ElementMatch!953) (regOne!2418 (regex!729 (h!9217 rules!1920))))) b!270954))

(assert (= (and b!269503 ((_ is Concat!1705) (regOne!2418 (regex!729 (h!9217 rules!1920))))) b!270955))

(assert (= (and b!269503 ((_ is Star!953) (regOne!2418 (regex!729 (h!9217 rules!1920))))) b!270956))

(assert (= (and b!269503 ((_ is Union!953) (regOne!2418 (regex!729 (h!9217 rules!1920))))) b!270957))

(declare-fun e!168294 () Bool)

(assert (=> b!269503 (= tp!102366 e!168294)))

(declare-fun b!270960 () Bool)

(declare-fun tp!102568 () Bool)

(assert (=> b!270960 (= e!168294 tp!102568)))

(declare-fun b!270959 () Bool)

(declare-fun tp!102565 () Bool)

(declare-fun tp!102569 () Bool)

(assert (=> b!270959 (= e!168294 (and tp!102565 tp!102569))))

(declare-fun b!270961 () Bool)

(declare-fun tp!102567 () Bool)

(declare-fun tp!102566 () Bool)

(assert (=> b!270961 (= e!168294 (and tp!102567 tp!102566))))

(declare-fun b!270958 () Bool)

(assert (=> b!270958 (= e!168294 tp_is_empty!1811)))

(assert (= (and b!269503 ((_ is ElementMatch!953) (regTwo!2418 (regex!729 (h!9217 rules!1920))))) b!270958))

(assert (= (and b!269503 ((_ is Concat!1705) (regTwo!2418 (regex!729 (h!9217 rules!1920))))) b!270959))

(assert (= (and b!269503 ((_ is Star!953) (regTwo!2418 (regex!729 (h!9217 rules!1920))))) b!270960))

(assert (= (and b!269503 ((_ is Union!953) (regTwo!2418 (regex!729 (h!9217 rules!1920))))) b!270961))

(declare-fun b!270964 () Bool)

(declare-fun e!168297 () Bool)

(assert (=> b!270964 (= e!168297 true)))

(declare-fun b!270963 () Bool)

(declare-fun e!168296 () Bool)

(assert (=> b!270963 (= e!168296 e!168297)))

(declare-fun b!270962 () Bool)

(declare-fun e!168295 () Bool)

(assert (=> b!270962 (= e!168295 e!168296)))

(assert (=> b!269298 e!168295))

(assert (= b!270963 b!270964))

(assert (= b!270962 b!270963))

(assert (= (and b!269298 ((_ is Cons!3820) (t!38156 rules!1920))) b!270962))

(assert (=> b!270964 (< (dynLambda!1953 order!2933 (toValue!1464 (transformation!729 (h!9217 (t!38156 rules!1920))))) (dynLambda!1954 order!2935 lambda!9101))))

(assert (=> b!270964 (< (dynLambda!1955 order!2937 (toChars!1323 (transformation!729 (h!9217 (t!38156 rules!1920))))) (dynLambda!1954 order!2935 lambda!9101))))

(declare-fun b!270967 () Bool)

(declare-fun e!168300 () Bool)

(assert (=> b!270967 (= e!168300 true)))

(declare-fun b!270966 () Bool)

(declare-fun e!168299 () Bool)

(assert (=> b!270966 (= e!168299 e!168300)))

(declare-fun b!270965 () Bool)

(declare-fun e!168298 () Bool)

(assert (=> b!270965 (= e!168298 e!168299)))

(assert (=> b!269432 e!168298))

(assert (= b!270966 b!270967))

(assert (= b!270965 b!270966))

(assert (= (and b!269432 ((_ is Cons!3820) (t!38156 rules!1920))) b!270965))

(assert (=> b!270967 (< (dynLambda!1953 order!2933 (toValue!1464 (transformation!729 (h!9217 (t!38156 rules!1920))))) (dynLambda!1954 order!2935 lambda!9113))))

(assert (=> b!270967 (< (dynLambda!1955 order!2937 (toChars!1323 (transformation!729 (h!9217 (t!38156 rules!1920))))) (dynLambda!1954 order!2935 lambda!9113))))

(declare-fun e!168301 () Bool)

(assert (=> b!269504 (= tp!102365 e!168301)))

(declare-fun b!270970 () Bool)

(declare-fun tp!102573 () Bool)

(assert (=> b!270970 (= e!168301 tp!102573)))

(declare-fun b!270969 () Bool)

(declare-fun tp!102570 () Bool)

(declare-fun tp!102574 () Bool)

(assert (=> b!270969 (= e!168301 (and tp!102570 tp!102574))))

(declare-fun b!270971 () Bool)

(declare-fun tp!102572 () Bool)

(declare-fun tp!102571 () Bool)

(assert (=> b!270971 (= e!168301 (and tp!102572 tp!102571))))

(declare-fun b!270968 () Bool)

(assert (=> b!270968 (= e!168301 tp_is_empty!1811)))

(assert (= (and b!269504 ((_ is ElementMatch!953) (reg!1282 (regex!729 (h!9217 rules!1920))))) b!270968))

(assert (= (and b!269504 ((_ is Concat!1705) (reg!1282 (regex!729 (h!9217 rules!1920))))) b!270969))

(assert (= (and b!269504 ((_ is Star!953) (reg!1282 (regex!729 (h!9217 rules!1920))))) b!270970))

(assert (= (and b!269504 ((_ is Union!953) (reg!1282 (regex!729 (h!9217 rules!1920))))) b!270971))

(declare-fun e!168307 () Bool)

(declare-fun tp!102583 () Bool)

(declare-fun b!270980 () Bool)

(declare-fun tp!102581 () Bool)

(assert (=> b!270980 (= e!168307 (and (inv!4725 (left!3139 (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (value!25092 (h!9216 tokens!465)))))) tp!102581 (inv!4725 (right!3469 (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (value!25092 (h!9216 tokens!465)))))) tp!102583))))

(declare-fun b!270982 () Bool)

(declare-fun e!168306 () Bool)

(declare-fun tp!102582 () Bool)

(assert (=> b!270982 (= e!168306 tp!102582)))

(declare-fun b!270981 () Bool)

(declare-fun inv!4732 (IArray!2561) Bool)

(assert (=> b!270981 (= e!168307 (and (inv!4732 (xs!3879 (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (value!25092 (h!9216 tokens!465)))))) e!168306))))

(assert (=> b!269327 (= tp!102295 (and (inv!4725 (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (value!25092 (h!9216 tokens!465))))) e!168307))))

(assert (= (and b!269327 ((_ is Node!1280) (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (value!25092 (h!9216 tokens!465)))))) b!270980))

(assert (= b!270981 b!270982))

(assert (= (and b!269327 ((_ is Leaf!1984) (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (value!25092 (h!9216 tokens!465)))))) b!270981))

(declare-fun m!343545 () Bool)

(assert (=> b!270980 m!343545))

(declare-fun m!343547 () Bool)

(assert (=> b!270980 m!343547))

(declare-fun m!343549 () Bool)

(assert (=> b!270981 m!343549))

(assert (=> b!269327 m!339625))

(declare-fun e!168308 () Bool)

(assert (=> b!269505 (= tp!102364 e!168308)))

(declare-fun b!270985 () Bool)

(declare-fun tp!102587 () Bool)

(assert (=> b!270985 (= e!168308 tp!102587)))

(declare-fun b!270984 () Bool)

(declare-fun tp!102584 () Bool)

(declare-fun tp!102588 () Bool)

(assert (=> b!270984 (= e!168308 (and tp!102584 tp!102588))))

(declare-fun b!270986 () Bool)

(declare-fun tp!102586 () Bool)

(declare-fun tp!102585 () Bool)

(assert (=> b!270986 (= e!168308 (and tp!102586 tp!102585))))

(declare-fun b!270983 () Bool)

(assert (=> b!270983 (= e!168308 tp_is_empty!1811)))

(assert (= (and b!269505 ((_ is ElementMatch!953) (regOne!2419 (regex!729 (h!9217 rules!1920))))) b!270983))

(assert (= (and b!269505 ((_ is Concat!1705) (regOne!2419 (regex!729 (h!9217 rules!1920))))) b!270984))

(assert (= (and b!269505 ((_ is Star!953) (regOne!2419 (regex!729 (h!9217 rules!1920))))) b!270985))

(assert (= (and b!269505 ((_ is Union!953) (regOne!2419 (regex!729 (h!9217 rules!1920))))) b!270986))

(declare-fun e!168309 () Bool)

(assert (=> b!269505 (= tp!102363 e!168309)))

(declare-fun b!270989 () Bool)

(declare-fun tp!102592 () Bool)

(assert (=> b!270989 (= e!168309 tp!102592)))

(declare-fun b!270988 () Bool)

(declare-fun tp!102589 () Bool)

(declare-fun tp!102593 () Bool)

(assert (=> b!270988 (= e!168309 (and tp!102589 tp!102593))))

(declare-fun b!270990 () Bool)

(declare-fun tp!102591 () Bool)

(declare-fun tp!102590 () Bool)

(assert (=> b!270990 (= e!168309 (and tp!102591 tp!102590))))

(declare-fun b!270987 () Bool)

(assert (=> b!270987 (= e!168309 tp_is_empty!1811)))

(assert (= (and b!269505 ((_ is ElementMatch!953) (regTwo!2419 (regex!729 (h!9217 rules!1920))))) b!270987))

(assert (= (and b!269505 ((_ is Concat!1705) (regTwo!2419 (regex!729 (h!9217 rules!1920))))) b!270988))

(assert (= (and b!269505 ((_ is Star!953) (regTwo!2419 (regex!729 (h!9217 rules!1920))))) b!270989))

(assert (= (and b!269505 ((_ is Union!953) (regTwo!2419 (regex!729 (h!9217 rules!1920))))) b!270990))

(declare-fun b!270991 () Bool)

(declare-fun e!168310 () Bool)

(declare-fun tp!102594 () Bool)

(assert (=> b!270991 (= e!168310 (and tp_is_empty!1811 tp!102594))))

(assert (=> b!269543 (= tp!102406 e!168310)))

(assert (= (and b!269543 ((_ is Cons!3817) (t!38153 (originalCharacters!772 (h!9216 tokens!465))))) b!270991))

(declare-fun b!270994 () Bool)

(declare-fun e!168313 () Bool)

(assert (=> b!270994 (= e!168313 true)))

(declare-fun b!270993 () Bool)

(declare-fun e!168312 () Bool)

(assert (=> b!270993 (= e!168312 e!168313)))

(declare-fun b!270992 () Bool)

(declare-fun e!168311 () Bool)

(assert (=> b!270992 (= e!168311 e!168312)))

(assert (=> b!269392 e!168311))

(assert (= b!270993 b!270994))

(assert (= b!270992 b!270993))

(assert (= (and b!269392 ((_ is Cons!3820) (t!38156 rules!1920))) b!270992))

(assert (=> b!270994 (< (dynLambda!1953 order!2933 (toValue!1464 (transformation!729 (h!9217 (t!38156 rules!1920))))) (dynLambda!1954 order!2935 lambda!9111))))

(assert (=> b!270994 (< (dynLambda!1955 order!2937 (toChars!1323 (transformation!729 (h!9217 (t!38156 rules!1920))))) (dynLambda!1954 order!2935 lambda!9111))))

(declare-fun b!270995 () Bool)

(declare-fun e!168314 () Bool)

(declare-fun tp!102595 () Bool)

(assert (=> b!270995 (= e!168314 (and tp_is_empty!1811 tp!102595))))

(assert (=> b!269544 (= tp!102407 e!168314)))

(assert (= (and b!269544 ((_ is Cons!3817) (t!38153 (originalCharacters!772 separatorToken!170)))) b!270995))

(declare-fun e!168315 () Bool)

(assert (=> b!269536 (= tp!102399 e!168315)))

(declare-fun b!270998 () Bool)

(declare-fun tp!102599 () Bool)

(assert (=> b!270998 (= e!168315 tp!102599)))

(declare-fun b!270997 () Bool)

(declare-fun tp!102596 () Bool)

(declare-fun tp!102600 () Bool)

(assert (=> b!270997 (= e!168315 (and tp!102596 tp!102600))))

(declare-fun b!270999 () Bool)

(declare-fun tp!102598 () Bool)

(declare-fun tp!102597 () Bool)

(assert (=> b!270999 (= e!168315 (and tp!102598 tp!102597))))

(declare-fun b!270996 () Bool)

(assert (=> b!270996 (= e!168315 tp_is_empty!1811)))

(assert (= (and b!269536 ((_ is ElementMatch!953) (regOne!2418 (regex!729 (rule!1314 separatorToken!170))))) b!270996))

(assert (= (and b!269536 ((_ is Concat!1705) (regOne!2418 (regex!729 (rule!1314 separatorToken!170))))) b!270997))

(assert (= (and b!269536 ((_ is Star!953) (regOne!2418 (regex!729 (rule!1314 separatorToken!170))))) b!270998))

(assert (= (and b!269536 ((_ is Union!953) (regOne!2418 (regex!729 (rule!1314 separatorToken!170))))) b!270999))

(declare-fun e!168316 () Bool)

(assert (=> b!269536 (= tp!102403 e!168316)))

(declare-fun b!271002 () Bool)

(declare-fun tp!102604 () Bool)

(assert (=> b!271002 (= e!168316 tp!102604)))

(declare-fun b!271001 () Bool)

(declare-fun tp!102601 () Bool)

(declare-fun tp!102605 () Bool)

(assert (=> b!271001 (= e!168316 (and tp!102601 tp!102605))))

(declare-fun b!271003 () Bool)

(declare-fun tp!102603 () Bool)

(declare-fun tp!102602 () Bool)

(assert (=> b!271003 (= e!168316 (and tp!102603 tp!102602))))

(declare-fun b!271000 () Bool)

(assert (=> b!271000 (= e!168316 tp_is_empty!1811)))

(assert (= (and b!269536 ((_ is ElementMatch!953) (regTwo!2418 (regex!729 (rule!1314 separatorToken!170))))) b!271000))

(assert (= (and b!269536 ((_ is Concat!1705) (regTwo!2418 (regex!729 (rule!1314 separatorToken!170))))) b!271001))

(assert (= (and b!269536 ((_ is Star!953) (regTwo!2418 (regex!729 (rule!1314 separatorToken!170))))) b!271002))

(assert (= (and b!269536 ((_ is Union!953) (regTwo!2418 (regex!729 (rule!1314 separatorToken!170))))) b!271003))

(declare-fun b!271006 () Bool)

(declare-fun e!168319 () Bool)

(assert (=> b!271006 (= e!168319 true)))

(declare-fun b!271005 () Bool)

(declare-fun e!168318 () Bool)

(assert (=> b!271005 (= e!168318 e!168319)))

(declare-fun b!271004 () Bool)

(declare-fun e!168317 () Bool)

(assert (=> b!271004 (= e!168317 e!168318)))

(assert (=> b!269445 e!168317))

(assert (= b!271005 b!271006))

(assert (= b!271004 b!271005))

(assert (= (and b!269445 ((_ is Cons!3820) (t!38156 rules!1920))) b!271004))

(assert (=> b!271006 (< (dynLambda!1953 order!2933 (toValue!1464 (transformation!729 (h!9217 (t!38156 rules!1920))))) (dynLambda!1954 order!2935 lambda!9114))))

(assert (=> b!271006 (< (dynLambda!1955 order!2937 (toChars!1323 (transformation!729 (h!9217 (t!38156 rules!1920))))) (dynLambda!1954 order!2935 lambda!9114))))

(declare-fun e!168320 () Bool)

(assert (=> b!269537 (= tp!102402 e!168320)))

(declare-fun b!271009 () Bool)

(declare-fun tp!102609 () Bool)

(assert (=> b!271009 (= e!168320 tp!102609)))

(declare-fun b!271008 () Bool)

(declare-fun tp!102606 () Bool)

(declare-fun tp!102610 () Bool)

(assert (=> b!271008 (= e!168320 (and tp!102606 tp!102610))))

(declare-fun b!271010 () Bool)

(declare-fun tp!102608 () Bool)

(declare-fun tp!102607 () Bool)

(assert (=> b!271010 (= e!168320 (and tp!102608 tp!102607))))

(declare-fun b!271007 () Bool)

(assert (=> b!271007 (= e!168320 tp_is_empty!1811)))

(assert (= (and b!269537 ((_ is ElementMatch!953) (reg!1282 (regex!729 (rule!1314 separatorToken!170))))) b!271007))

(assert (= (and b!269537 ((_ is Concat!1705) (reg!1282 (regex!729 (rule!1314 separatorToken!170))))) b!271008))

(assert (= (and b!269537 ((_ is Star!953) (reg!1282 (regex!729 (rule!1314 separatorToken!170))))) b!271009))

(assert (= (and b!269537 ((_ is Union!953) (reg!1282 (regex!729 (rule!1314 separatorToken!170))))) b!271010))

(declare-fun e!168321 () Bool)

(assert (=> b!269538 (= tp!102401 e!168321)))

(declare-fun b!271013 () Bool)

(declare-fun tp!102614 () Bool)

(assert (=> b!271013 (= e!168321 tp!102614)))

(declare-fun b!271012 () Bool)

(declare-fun tp!102611 () Bool)

(declare-fun tp!102615 () Bool)

(assert (=> b!271012 (= e!168321 (and tp!102611 tp!102615))))

(declare-fun b!271014 () Bool)

(declare-fun tp!102613 () Bool)

(declare-fun tp!102612 () Bool)

(assert (=> b!271014 (= e!168321 (and tp!102613 tp!102612))))

(declare-fun b!271011 () Bool)

(assert (=> b!271011 (= e!168321 tp_is_empty!1811)))

(assert (= (and b!269538 ((_ is ElementMatch!953) (regOne!2419 (regex!729 (rule!1314 separatorToken!170))))) b!271011))

(assert (= (and b!269538 ((_ is Concat!1705) (regOne!2419 (regex!729 (rule!1314 separatorToken!170))))) b!271012))

(assert (= (and b!269538 ((_ is Star!953) (regOne!2419 (regex!729 (rule!1314 separatorToken!170))))) b!271013))

(assert (= (and b!269538 ((_ is Union!953) (regOne!2419 (regex!729 (rule!1314 separatorToken!170))))) b!271014))

(declare-fun e!168322 () Bool)

(assert (=> b!269538 (= tp!102400 e!168322)))

(declare-fun b!271017 () Bool)

(declare-fun tp!102619 () Bool)

(assert (=> b!271017 (= e!168322 tp!102619)))

(declare-fun b!271016 () Bool)

(declare-fun tp!102616 () Bool)

(declare-fun tp!102620 () Bool)

(assert (=> b!271016 (= e!168322 (and tp!102616 tp!102620))))

(declare-fun b!271018 () Bool)

(declare-fun tp!102618 () Bool)

(declare-fun tp!102617 () Bool)

(assert (=> b!271018 (= e!168322 (and tp!102618 tp!102617))))

(declare-fun b!271015 () Bool)

(assert (=> b!271015 (= e!168322 tp_is_empty!1811)))

(assert (= (and b!269538 ((_ is ElementMatch!953) (regTwo!2419 (regex!729 (rule!1314 separatorToken!170))))) b!271015))

(assert (= (and b!269538 ((_ is Concat!1705) (regTwo!2419 (regex!729 (rule!1314 separatorToken!170))))) b!271016))

(assert (= (and b!269538 ((_ is Star!953) (regTwo!2419 (regex!729 (rule!1314 separatorToken!170))))) b!271017))

(assert (= (and b!269538 ((_ is Union!953) (regTwo!2419 (regex!729 (rule!1314 separatorToken!170))))) b!271018))

(declare-fun b!271019 () Bool)

(declare-fun e!168323 () Bool)

(declare-fun tp!102621 () Bool)

(assert (=> b!271019 (= e!168323 (and tp_is_empty!1811 tp!102621))))

(assert (=> b!269517 (= tp!102377 e!168323)))

(assert (= (and b!269517 ((_ is Cons!3817) (originalCharacters!772 (h!9216 (t!38155 tokens!465))))) b!271019))

(declare-fun b!271022 () Bool)

(declare-fun e!168326 () Bool)

(assert (=> b!271022 (= e!168326 true)))

(declare-fun b!271021 () Bool)

(declare-fun e!168325 () Bool)

(assert (=> b!271021 (= e!168325 e!168326)))

(declare-fun b!271020 () Bool)

(declare-fun e!168324 () Bool)

(assert (=> b!271020 (= e!168324 e!168325)))

(assert (=> b!269185 e!168324))

(assert (= b!271021 b!271022))

(assert (= b!271020 b!271021))

(assert (= (and b!269185 ((_ is Cons!3820) (t!38156 rules!1920))) b!271020))

(assert (=> b!271022 (< (dynLambda!1953 order!2933 (toValue!1464 (transformation!729 (h!9217 (t!38156 rules!1920))))) (dynLambda!1954 order!2935 lambda!9094))))

(assert (=> b!271022 (< (dynLambda!1955 order!2937 (toChars!1323 (transformation!729 (h!9217 (t!38156 rules!1920))))) (dynLambda!1954 order!2935 lambda!9094))))

(declare-fun b!271026 () Bool)

(declare-fun b_free!10029 () Bool)

(declare-fun b_next!10029 () Bool)

(assert (=> b!271026 (= b_free!10029 (not b_next!10029))))

(declare-fun tp!102626 () Bool)

(declare-fun b_and!21633 () Bool)

(assert (=> b!271026 (= tp!102626 b_and!21633)))

(declare-fun b_free!10031 () Bool)

(declare-fun b_next!10031 () Bool)

(assert (=> b!271026 (= b_free!10031 (not b_next!10031))))

(declare-fun t!38460 () Bool)

(declare-fun tb!15349 () Bool)

(assert (=> (and b!271026 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 (t!38155 tokens!465)))))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465))))) t!38460) tb!15349))

(declare-fun result!18956 () Bool)

(assert (= result!18956 result!18690))

(assert (=> b!269336 t!38460))

(declare-fun t!38462 () Bool)

(declare-fun tb!15351 () Bool)

(assert (=> (and b!271026 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 (t!38155 tokens!465)))))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465)))))) t!38462) tb!15351))

(declare-fun result!18958 () Bool)

(assert (= result!18958 result!18758))

(assert (=> b!269972 t!38462))

(assert (=> d!78080 t!38460))

(declare-fun t!38464 () Bool)

(declare-fun tb!15353 () Bool)

(assert (=> (and b!271026 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 (t!38155 tokens!465)))))) (toChars!1323 (transformation!729 (rule!1314 (ite c!50998 call!14700 call!14701))))) t!38464) tb!15353))

(declare-fun result!18960 () Bool)

(assert (= result!18960 result!18778))

(assert (=> d!78408 t!38464))

(declare-fun t!38466 () Bool)

(declare-fun tb!15355 () Bool)

(assert (=> (and b!271026 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 (t!38155 tokens!465)))))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 (Cons!3819 (h!9216 tokens!465) Nil!3819)))))) t!38466) tb!15355))

(declare-fun result!18962 () Bool)

(assert (= result!18962 result!18768))

(assert (=> d!78384 t!38466))

(declare-fun tb!15357 () Bool)

(declare-fun t!38468 () Bool)

(assert (=> (and b!271026 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 (t!38155 tokens!465)))))) (toChars!1323 (transformation!729 (rule!1314 (apply!765 lt!110399 0))))) t!38468) tb!15357))

(declare-fun result!18964 () Bool)

(assert (= result!18964 result!18748))

(assert (=> d!78234 t!38468))

(declare-fun tb!15359 () Bool)

(declare-fun t!38470 () Bool)

(assert (=> (and b!271026 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 (t!38155 tokens!465)))))) (toChars!1323 (transformation!729 (rule!1314 (ite c!51013 call!14705 call!14706))))) t!38470) tb!15359))

(declare-fun result!18966 () Bool)

(assert (= result!18966 result!18728))

(assert (=> d!78168 t!38470))

(assert (=> d!78292 t!38462))

(declare-fun t!38472 () Bool)

(declare-fun tb!15361 () Bool)

(assert (=> (and b!271026 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 (t!38155 tokens!465)))))) (toChars!1323 (transformation!729 (rule!1314 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0))))) t!38472) tb!15361))

(declare-fun result!18968 () Bool)

(assert (= result!18968 result!18934))

(assert (=> d!78946 t!38472))

(declare-fun tb!15363 () Bool)

(declare-fun t!38474 () Bool)

(assert (=> (and b!271026 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 (t!38155 tokens!465)))))) (toChars!1323 (transformation!729 (rule!1314 separatorToken!170)))) t!38474) tb!15363))

(declare-fun result!18970 () Bool)

(assert (= result!18970 result!18682))

(assert (=> d!78064 t!38474))

(assert (=> b!269421 t!38474))

(declare-fun tb!15365 () Bool)

(declare-fun t!38476 () Bool)

(assert (=> (and b!271026 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 (t!38155 tokens!465)))))) (toChars!1323 (transformation!729 (rule!1314 (ite c!50999 separatorToken!170 call!14701))))) t!38476) tb!15365))

(declare-fun result!18972 () Bool)

(assert (= result!18972 result!18738))

(assert (=> d!78218 t!38476))

(declare-fun tb!15367 () Bool)

(declare-fun t!38478 () Bool)

(assert (=> (and b!271026 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 (t!38155 tokens!465)))))) (toChars!1323 (transformation!729 (rule!1314 (ite c!51014 separatorToken!170 call!14706))))) t!38478) tb!15367))

(declare-fun result!18974 () Bool)

(assert (= result!18974 result!18944))

(assert (=> d!78968 t!38478))

(declare-fun tb!15369 () Bool)

(declare-fun t!38480 () Bool)

(assert (=> (and b!271026 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 (t!38155 tokens!465)))))) (toChars!1323 (transformation!729 (rule!1314 (apply!765 lt!110395 0))))) t!38480) tb!15369))

(declare-fun result!18976 () Bool)

(assert (= result!18976 result!18828))

(assert (=> d!78714 t!38480))

(declare-fun tp!102624 () Bool)

(declare-fun b_and!21635 () Bool)

(assert (=> b!271026 (= tp!102624 (and (=> t!38480 result!18976) (=> t!38468 result!18964) (=> t!38462 result!18958) (=> t!38476 result!18972) (=> t!38478 result!18974) (=> t!38460 result!18956) (=> t!38474 result!18970) (=> t!38472 result!18968) (=> t!38470 result!18966) (=> t!38464 result!18960) (=> t!38466 result!18962) b_and!21635))))

(declare-fun e!168332 () Bool)

(assert (=> b!271026 (= e!168332 (and tp!102626 tp!102624))))

(declare-fun e!168328 () Bool)

(declare-fun tp!102622 () Bool)

(declare-fun e!168327 () Bool)

(declare-fun b!271024 () Bool)

(assert (=> b!271024 (= e!168327 (and (inv!21 (value!25092 (h!9216 (t!38155 (t!38155 tokens!465))))) e!168328 tp!102622))))

(declare-fun e!168329 () Bool)

(assert (=> b!269516 (= tp!102380 e!168329)))

(declare-fun tp!102625 () Bool)

(declare-fun b!271023 () Bool)

(assert (=> b!271023 (= e!168329 (and (inv!4721 (h!9216 (t!38155 (t!38155 tokens!465)))) e!168327 tp!102625))))

(declare-fun b!271025 () Bool)

(declare-fun tp!102623 () Bool)

(assert (=> b!271025 (= e!168328 (and tp!102623 (inv!4718 (tag!939 (rule!1314 (h!9216 (t!38155 (t!38155 tokens!465)))))) (inv!4722 (transformation!729 (rule!1314 (h!9216 (t!38155 (t!38155 tokens!465)))))) e!168332))))

(assert (= b!271025 b!271026))

(assert (= b!271024 b!271025))

(assert (= b!271023 b!271024))

(assert (= (and b!269516 ((_ is Cons!3819) (t!38155 (t!38155 tokens!465)))) b!271023))

(declare-fun m!343551 () Bool)

(assert (=> b!271024 m!343551))

(declare-fun m!343553 () Bool)

(assert (=> b!271023 m!343553))

(declare-fun m!343555 () Bool)

(assert (=> b!271025 m!343555))

(declare-fun m!343557 () Bool)

(assert (=> b!271025 m!343557))

(declare-fun e!168333 () Bool)

(assert (=> b!269518 (= tp!102378 e!168333)))

(declare-fun b!271029 () Bool)

(declare-fun tp!102630 () Bool)

(assert (=> b!271029 (= e!168333 tp!102630)))

(declare-fun b!271028 () Bool)

(declare-fun tp!102627 () Bool)

(declare-fun tp!102631 () Bool)

(assert (=> b!271028 (= e!168333 (and tp!102627 tp!102631))))

(declare-fun b!271030 () Bool)

(declare-fun tp!102629 () Bool)

(declare-fun tp!102628 () Bool)

(assert (=> b!271030 (= e!168333 (and tp!102629 tp!102628))))

(declare-fun b!271027 () Bool)

(assert (=> b!271027 (= e!168333 tp_is_empty!1811)))

(assert (= (and b!269518 ((_ is ElementMatch!953) (regex!729 (rule!1314 (h!9216 (t!38155 tokens!465)))))) b!271027))

(assert (= (and b!269518 ((_ is Concat!1705) (regex!729 (rule!1314 (h!9216 (t!38155 tokens!465)))))) b!271028))

(assert (= (and b!269518 ((_ is Star!953) (regex!729 (rule!1314 (h!9216 (t!38155 tokens!465)))))) b!271029))

(assert (= (and b!269518 ((_ is Union!953) (regex!729 (rule!1314 (h!9216 (t!38155 tokens!465)))))) b!271030))

(declare-fun b!271033 () Bool)

(declare-fun b_free!10033 () Bool)

(declare-fun b_next!10033 () Bool)

(assert (=> b!271033 (= b_free!10033 (not b_next!10033))))

(declare-fun tp!102633 () Bool)

(declare-fun b_and!21637 () Bool)

(assert (=> b!271033 (= tp!102633 b_and!21637)))

(declare-fun b_free!10035 () Bool)

(declare-fun b_next!10035 () Bool)

(assert (=> b!271033 (= b_free!10035 (not b_next!10035))))

(declare-fun tb!15371 () Bool)

(declare-fun t!38482 () Bool)

(assert (=> (and b!271033 (= (toChars!1323 (transformation!729 (h!9217 (t!38156 (t!38156 rules!1920))))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465))))) t!38482) tb!15371))

(declare-fun result!18978 () Bool)

(assert (= result!18978 result!18690))

(assert (=> b!269336 t!38482))

(declare-fun tb!15373 () Bool)

(declare-fun t!38484 () Bool)

(assert (=> (and b!271033 (= (toChars!1323 (transformation!729 (h!9217 (t!38156 (t!38156 rules!1920))))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465)))))) t!38484) tb!15373))

(declare-fun result!18980 () Bool)

(assert (= result!18980 result!18758))

(assert (=> b!269972 t!38484))

(assert (=> d!78080 t!38482))

(declare-fun t!38486 () Bool)

(declare-fun tb!15375 () Bool)

(assert (=> (and b!271033 (= (toChars!1323 (transformation!729 (h!9217 (t!38156 (t!38156 rules!1920))))) (toChars!1323 (transformation!729 (rule!1314 (ite c!50998 call!14700 call!14701))))) t!38486) tb!15375))

(declare-fun result!18982 () Bool)

(assert (= result!18982 result!18778))

(assert (=> d!78408 t!38486))

(declare-fun tb!15377 () Bool)

(declare-fun t!38488 () Bool)

(assert (=> (and b!271033 (= (toChars!1323 (transformation!729 (h!9217 (t!38156 (t!38156 rules!1920))))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 (Cons!3819 (h!9216 tokens!465) Nil!3819)))))) t!38488) tb!15377))

(declare-fun result!18984 () Bool)

(assert (= result!18984 result!18768))

(assert (=> d!78384 t!38488))

(declare-fun tb!15379 () Bool)

(declare-fun t!38490 () Bool)

(assert (=> (and b!271033 (= (toChars!1323 (transformation!729 (h!9217 (t!38156 (t!38156 rules!1920))))) (toChars!1323 (transformation!729 (rule!1314 (apply!765 lt!110399 0))))) t!38490) tb!15379))

(declare-fun result!18986 () Bool)

(assert (= result!18986 result!18748))

(assert (=> d!78234 t!38490))

(declare-fun tb!15381 () Bool)

(declare-fun t!38492 () Bool)

(assert (=> (and b!271033 (= (toChars!1323 (transformation!729 (h!9217 (t!38156 (t!38156 rules!1920))))) (toChars!1323 (transformation!729 (rule!1314 (ite c!51013 call!14705 call!14706))))) t!38492) tb!15381))

(declare-fun result!18988 () Bool)

(assert (= result!18988 result!18728))

(assert (=> d!78168 t!38492))

(assert (=> d!78292 t!38484))

(declare-fun t!38494 () Bool)

(declare-fun tb!15383 () Bool)

(assert (=> (and b!271033 (= (toChars!1323 (transformation!729 (h!9217 (t!38156 (t!38156 rules!1920))))) (toChars!1323 (transformation!729 (rule!1314 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0))))) t!38494) tb!15383))

(declare-fun result!18990 () Bool)

(assert (= result!18990 result!18934))

(assert (=> d!78946 t!38494))

(declare-fun tb!15385 () Bool)

(declare-fun t!38496 () Bool)

(assert (=> (and b!271033 (= (toChars!1323 (transformation!729 (h!9217 (t!38156 (t!38156 rules!1920))))) (toChars!1323 (transformation!729 (rule!1314 separatorToken!170)))) t!38496) tb!15385))

(declare-fun result!18992 () Bool)

(assert (= result!18992 result!18682))

(assert (=> d!78064 t!38496))

(assert (=> b!269421 t!38496))

(declare-fun t!38498 () Bool)

(declare-fun tb!15387 () Bool)

(assert (=> (and b!271033 (= (toChars!1323 (transformation!729 (h!9217 (t!38156 (t!38156 rules!1920))))) (toChars!1323 (transformation!729 (rule!1314 (ite c!50999 separatorToken!170 call!14701))))) t!38498) tb!15387))

(declare-fun result!18994 () Bool)

(assert (= result!18994 result!18738))

(assert (=> d!78218 t!38498))

(declare-fun t!38500 () Bool)

(declare-fun tb!15389 () Bool)

(assert (=> (and b!271033 (= (toChars!1323 (transformation!729 (h!9217 (t!38156 (t!38156 rules!1920))))) (toChars!1323 (transformation!729 (rule!1314 (ite c!51014 separatorToken!170 call!14706))))) t!38500) tb!15389))

(declare-fun result!18996 () Bool)

(assert (= result!18996 result!18944))

(assert (=> d!78968 t!38500))

(declare-fun t!38502 () Bool)

(declare-fun tb!15391 () Bool)

(assert (=> (and b!271033 (= (toChars!1323 (transformation!729 (h!9217 (t!38156 (t!38156 rules!1920))))) (toChars!1323 (transformation!729 (rule!1314 (apply!765 lt!110395 0))))) t!38502) tb!15391))

(declare-fun result!18998 () Bool)

(assert (= result!18998 result!18828))

(assert (=> d!78714 t!38502))

(declare-fun b_and!21639 () Bool)

(declare-fun tp!102635 () Bool)

(assert (=> b!271033 (= tp!102635 (and (=> t!38498 result!18994) (=> t!38488 result!18984) (=> t!38496 result!18992) (=> t!38502 result!18998) (=> t!38494 result!18990) (=> t!38492 result!18988) (=> t!38484 result!18980) (=> t!38486 result!18982) (=> t!38500 result!18996) (=> t!38482 result!18978) (=> t!38490 result!18986) b_and!21639))))

(declare-fun e!168335 () Bool)

(assert (=> b!271033 (= e!168335 (and tp!102633 tp!102635))))

(declare-fun b!271032 () Bool)

(declare-fun tp!102632 () Bool)

(declare-fun e!168336 () Bool)

(assert (=> b!271032 (= e!168336 (and tp!102632 (inv!4718 (tag!939 (h!9217 (t!38156 (t!38156 rules!1920))))) (inv!4722 (transformation!729 (h!9217 (t!38156 (t!38156 rules!1920))))) e!168335))))

(declare-fun b!271031 () Bool)

(declare-fun e!168337 () Bool)

(declare-fun tp!102634 () Bool)

(assert (=> b!271031 (= e!168337 (and e!168336 tp!102634))))

(assert (=> b!269532 (= tp!102397 e!168337)))

(assert (= b!271032 b!271033))

(assert (= b!271031 b!271032))

(assert (= (and b!269532 ((_ is Cons!3820) (t!38156 (t!38156 rules!1920)))) b!271031))

(declare-fun m!343559 () Bool)

(assert (=> b!271032 m!343559))

(declare-fun m!343561 () Bool)

(assert (=> b!271032 m!343561))

(declare-fun e!168338 () Bool)

(assert (=> b!269533 (= tp!102395 e!168338)))

(declare-fun b!271036 () Bool)

(declare-fun tp!102639 () Bool)

(assert (=> b!271036 (= e!168338 tp!102639)))

(declare-fun b!271035 () Bool)

(declare-fun tp!102636 () Bool)

(declare-fun tp!102640 () Bool)

(assert (=> b!271035 (= e!168338 (and tp!102636 tp!102640))))

(declare-fun b!271037 () Bool)

(declare-fun tp!102638 () Bool)

(declare-fun tp!102637 () Bool)

(assert (=> b!271037 (= e!168338 (and tp!102638 tp!102637))))

(declare-fun b!271034 () Bool)

(assert (=> b!271034 (= e!168338 tp_is_empty!1811)))

(assert (= (and b!269533 ((_ is ElementMatch!953) (regex!729 (h!9217 (t!38156 rules!1920))))) b!271034))

(assert (= (and b!269533 ((_ is Concat!1705) (regex!729 (h!9217 (t!38156 rules!1920))))) b!271035))

(assert (= (and b!269533 ((_ is Star!953) (regex!729 (h!9217 (t!38156 rules!1920))))) b!271036))

(assert (= (and b!269533 ((_ is Union!953) (regex!729 (h!9217 (t!38156 rules!1920))))) b!271037))

(declare-fun tp!102643 () Bool)

(declare-fun b!271038 () Bool)

(declare-fun e!168340 () Bool)

(declare-fun tp!102641 () Bool)

(assert (=> b!271038 (= e!168340 (and (inv!4725 (left!3139 (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (value!25092 separatorToken!170))))) tp!102641 (inv!4725 (right!3469 (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (value!25092 separatorToken!170))))) tp!102643))))

(declare-fun b!271040 () Bool)

(declare-fun e!168339 () Bool)

(declare-fun tp!102642 () Bool)

(assert (=> b!271040 (= e!168339 tp!102642)))

(declare-fun b!271039 () Bool)

(assert (=> b!271039 (= e!168340 (and (inv!4732 (xs!3879 (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (value!25092 separatorToken!170))))) e!168339))))

(assert (=> b!269318 (= tp!102294 (and (inv!4725 (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (value!25092 separatorToken!170)))) e!168340))))

(assert (= (and b!269318 ((_ is Node!1280) (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (value!25092 separatorToken!170))))) b!271038))

(assert (= b!271039 b!271040))

(assert (= (and b!269318 ((_ is Leaf!1984) (c!50914 (dynLambda!1957 (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (value!25092 separatorToken!170))))) b!271039))

(declare-fun m!343563 () Bool)

(assert (=> b!271038 m!343563))

(declare-fun m!343565 () Bool)

(assert (=> b!271038 m!343565))

(declare-fun m!343567 () Bool)

(assert (=> b!271039 m!343567))

(assert (=> b!269318 m!339591))

(declare-fun b_lambda!8615 () Bool)

(assert (= b_lambda!8549 (or b!268954 b_lambda!8615)))

(declare-fun bs!30203 () Bool)

(declare-fun d!79012 () Bool)

(assert (= bs!30203 (and d!79012 b!268954)))

(assert (=> bs!30203 (= (dynLambda!1959 lambda!9080 (h!9216 (t!38155 tokens!465))) (not (isSeparator!729 (rule!1314 (h!9216 (t!38155 tokens!465))))))))

(assert (=> b!269903 d!79012))

(declare-fun b_lambda!8617 () Bool)

(assert (= b_lambda!8545 (or (and b!268959 b_free!10003 (= (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))))) (and b!269519 b_free!10015) (and b!269534 b_free!10019 (= (toChars!1323 (transformation!729 (h!9217 (t!38156 rules!1920)))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))))) (and b!268967 b_free!9995 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))))) (and b!268971 b_free!9999 (= (toChars!1323 (transformation!729 (h!9217 rules!1920))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))))) (and b!271033 b_free!10035 (= (toChars!1323 (transformation!729 (h!9217 (t!38156 (t!38156 rules!1920))))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))))) (and b!271026 b_free!10031 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 (t!38155 tokens!465)))))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))))) b_lambda!8617)))

(declare-fun b_lambda!8619 () Bool)

(assert (= b_lambda!8547 (or b!269171 b_lambda!8619)))

(declare-fun bs!30204 () Bool)

(declare-fun d!79014 () Bool)

(assert (= bs!30204 (and d!79014 b!269171)))

(assert (=> bs!30204 (= (dynLambda!1959 lambda!9094 (h!9216 (t!38155 tokens!465))) (rulesProduceIndividualToken!364 thiss!17480 rules!1920 (h!9216 (t!38155 tokens!465))))))

(declare-fun m!343569 () Bool)

(assert (=> bs!30204 m!343569))

(assert (=> d!78294 d!79014))

(declare-fun b_lambda!8621 () Bool)

(assert (= b_lambda!8561 (or b!269430 b_lambda!8621)))

(declare-fun bs!30205 () Bool)

(declare-fun d!79016 () Bool)

(assert (= bs!30205 (and d!79016 b!269430)))

(assert (=> bs!30205 (= (dynLambda!1959 lambda!9113 (apply!765 lt!110395 0)) (rulesProduceIndividualToken!364 thiss!17480 rules!1920 (apply!765 lt!110395 0)))))

(assert (=> bs!30205 m!339753))

(declare-fun m!343571 () Bool)

(assert (=> bs!30205 m!343571))

(assert (=> d!78566 d!79016))

(declare-fun b_lambda!8623 () Bool)

(assert (= b_lambda!8555 (or (and b!268959 b_free!10003 (= (toChars!1323 (transformation!729 (rule!1314 separatorToken!170))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))))) (and b!269519 b_free!10015) (and b!269534 b_free!10019 (= (toChars!1323 (transformation!729 (h!9217 (t!38156 rules!1920)))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))))) (and b!268967 b_free!9995 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 tokens!465)))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))))) (and b!268971 b_free!9999 (= (toChars!1323 (transformation!729 (h!9217 rules!1920))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))))) (and b!271033 b_free!10035 (= (toChars!1323 (transformation!729 (h!9217 (t!38156 (t!38156 rules!1920))))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))))) (and b!271026 b_free!10031 (= (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 (t!38155 tokens!465)))))) (toChars!1323 (transformation!729 (rule!1314 (h!9216 (t!38155 tokens!465))))))) b_lambda!8623)))

(declare-fun b_lambda!8625 () Bool)

(assert (= b_lambda!8613 (or b!269439 b_lambda!8625)))

(declare-fun bs!30206 () Bool)

(declare-fun d!79018 () Bool)

(assert (= bs!30206 (and d!79018 b!269439)))

(assert (=> bs!30206 (= (dynLambda!1959 lambda!9114 (h!9216 tokens!465)) (rulesProduceIndividualToken!364 thiss!17480 rules!1920 (h!9216 tokens!465)))))

(assert (=> bs!30206 m!338963))

(assert (=> d!79000 d!79018))

(declare-fun b_lambda!8627 () Bool)

(assert (= b_lambda!8605 (or b!269296 b_lambda!8627)))

(declare-fun bs!30207 () Bool)

(declare-fun d!79020 () Bool)

(assert (= bs!30207 (and d!79020 b!269296)))

(assert (=> bs!30207 (= (dynLambda!1959 lambda!9101 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0)) (rulesProduceIndividualToken!364 thiss!17480 rules!1920 (apply!765 (seqFromList!826 (t!38155 tokens!465)) 0)))))

(assert (=> bs!30207 m!339513))

(declare-fun m!343573 () Bool)

(assert (=> bs!30207 m!343573))

(assert (=> d!78940 d!79020))

(declare-fun b_lambda!8629 () Bool)

(assert (= b_lambda!8609 (or d!78088 b_lambda!8629)))

(declare-fun bs!30208 () Bool)

(declare-fun d!79022 () Bool)

(assert (= bs!30208 (and d!79022 d!78088)))

(assert (=> bs!30208 (= (dynLambda!1959 lambda!9111 (h!9216 (list!1560 lt!110395))) (rulesProduceIndividualToken!364 thiss!17480 rules!1920 (h!9216 (list!1560 lt!110395))))))

(assert (=> bs!30208 m!340757))

(assert (=> b!270873 d!79022))

(check-sat (not b!269971) (not b!270995) (not b!270955) (not b_lambda!8541) (not b!270948) (not d!78426) (not d!78968) (not d!78596) (not b!269706) (not b!269740) (not d!78566) (not b!270895) (not b!269906) (not bs!30204) (not b!270923) (not b!270999) (not d!78582) (not b!269923) (not tb!15175) (not b!270450) (not b!269926) (not bm!14764) (not b!269705) (not b!269991) (not b!271004) (not b!270852) (not b!270208) (not b!269688) (not d!78822) (not d!78346) (not b!270502) (not b!270799) (not d!78420) (not b_lambda!8615) (not b!269634) (not d!78934) (not d!78950) (not b!270190) (not b!270907) (not b!270279) (not b!270857) (not b!269973) (not b!270988) (not d!78558) (not d!78438) (not bm!14788) (not b!269915) (not d!78364) (not b!271014) (not b!270219) (not b_next!9995) (not b!271030) (not d!78388) (not bs!30205) (not d!78984) (not tb!15145) (not b!270924) (not d!78568) (not b!269601) (not b!269635) (not d!78422) (not b!270855) (not b!270579) (not d!78434) (not b!269850) (not b!270822) (not b!270892) (not d!78374) (not b!269911) (not b!269807) (not b!270500) (not b!270801) (not d!78362) (not b!270941) (not b!270944) (not b!269909) (not b_lambda!8573) (not d!78414) (not b!270578) (not b!270586) (not b_next!10015) (not b!269737) (not b!270843) (not b!270192) (not b!270980) (not b!271010) (not b!269845) (not b!270245) (not b!270922) (not d!78746) (not b!270837) (not b!270992) (not d!78572) (not b_lambda!8621) (not b!270790) (not b!269982) (not b!269942) (not bm!14748) (not b!270957) (not b!270278) (not bm!14726) (not b!269880) (not b!270879) (not bm!14791) (not b_lambda!8553) (not b!270792) (not b!271009) (not b!270868) (not b!270273) (not b!269660) (not tb!15155) (not b!270920) (not d!78234) (not b!270226) (not b!270515) (not b_lambda!8619) (not d!78398) (not b!270473) (not b_next!9993) (not b!269813) (not d!78714) (not d!78390) (not d!78440) (not d!78244) (not bm!14795) (not d!78456) (not b!271024) (not b!270806) (not d!78384) (not b!270917) (not b!269815) (not b!269747) (not b!270207) (not d!78834) (not b!269950) (not b!270533) (not b_lambda!8531) (not b!269955) (not b!270850) (not b!270991) (not b!269988) (not b!270249) (not d!78292) (not b!269979) (not tb!15125) (not b_lambda!8543) (not bm!14798) (not b_lambda!8627) (not b!270997) (not b!271017) tp_is_empty!1811 (not b!270952) (not b!270945) (not b_lambda!8527) (not d!78344) (not b!270913) (not b!270936) (not d!78392) (not d!78826) (not b!269908) (not b!270590) (not b!269956) (not b_lambda!8623) (not d!78246) (not b!269585) (not b!270890) (not b!271003) (not b!270813) (not d!78166) (not d!78454) (not b!270863) (not d!78444) b_and!21629 (not b!269900) (not b!270858) (not b!270956) (not b!269327) (not b!270929) (not b!269847) (not b!270998) (not d!78560) (not b!270904) (not b!270990) (not b!270236) (not b!270234) (not b!270229) (not d!78544) (not b!269816) (not b!269937) (not d!78938) (not d!78534) (not b!270281) (not d!78382) (not d!78402) (not b!269600) (not d!78762) (not b_lambda!8535) (not b!270888) (not b!270884) (not bm!14720) (not b_next!10031) (not b!270139) (not b!270547) (not b_next!9999) (not b!269716) (not bm!14797) (not b!269611) (not b!270803) (not d!78570) (not b!271008) (not d!78458) (not b!270937) (not b!270818) (not b!269589) (not d!78732) (not b!270970) (not d!78460) (not b!270870) (not d!79008) (not b!270926) (not b!271023) (not b!270243) (not d!78930) (not d!78184) (not d!78742) (not tb!15135) (not d!78924) (not b_lambda!8625) (not d!78932) b_and!21639 (not b!269663) (not d!78226) (not b!270304) (not b!270257) (not d!78288) (not d!78982) (not b!270896) (not b!270984) (not b!269921) (not d!78766) (not d!78750) (not d!78918) (not b!269931) (not b!270856) (not b_next!10013) (not d!78936) (not d!78990) (not b!271002) (not b!270580) (not bm!14790) (not b!270454) (not b!270969) (not b!270820) (not d!78556) (not b!269953) (not bm!14799) (not b!270137) (not d!78986) (not b_next!10019) (not b!270457) (not b!270831) b_and!21631 (not b!269846) (not d!78784) (not b!270471) (not b!269745) (not b!269810) (not b!270809) (not bm!14750) (not b!269981) (not b!269977) (not d!78408) (not b!269893) (not b_lambda!8611) (not b_lambda!8617) (not b!269905) (not b!270810) (not d!78450) (not d!78948) (not b!270881) (not d!78294) (not b!270130) (not d!79004) (not b!269901) (not b!269939) (not b_next!10001) (not b!270935) (not b!270824) (not d!78992) (not b!269925) (not b!270906) (not d!78922) (not b!270451) (not b!270897) (not b!269912) (not b!269972) (not bm!14721) (not tb!15165) (not b!270275) (not b!270908) (not b!270869) (not b!271039) (not b!270921) (not d!78574) (not tb!15339) b_and!21417 (not d!78994) b_and!21421 (not b_lambda!8529) (not b!270918) (not d!78464) (not d!78928) (not b!269711) (not b!270456) (not d!78366) (not b!269947) (not d!78782) (not bm!14749) (not b!269898) (not b!270981) (not tb!15225) (not b!270885) (not d!78164) (not d!78966) (not b!270960) (not b!269954) (not b!270865) (not b!270537) (not b!270468) (not b!270911) (not b!270131) (not b!269808) (not b!269946) (not tb!15329) (not b!269636) (not b!269836) (not b_next!10003) (not b!270939) (not b!270501) (not b!270842) (not b!271031) (not d!78436) (not d!78428) (not b!270176) (not d!78342) (not d!78956) (not b!270838) (not b!270925) (not b!270535) (not b!269922) (not b_next!10035) (not d!78824) (not b!269828) (not d!78412) (not d!78290) (not b!270814) (not bs!30208) (not b!269656) (not bm!14711) (not d!78212) (not bm!14793) (not d!78340) (not b!270951) (not bs!30206) (not b!269951) (not b!270259) (not b!270800) (not b!271036) (not b!270132) (not b!270898) (not b!269615) (not b!270875) (not b!270538) (not b!271012) (not b!269702) (not d!78380) (not b!269655) (not b!269974) (not b!270227) b_and!21623 (not bm!14718) (not d!78360) (not b!271020) (not b!270517) (not b_lambda!8607) (not b!269886) (not b!269943) (not b_lambda!8551) (not b!270251) (not b!270274) (not b!269934) (not d!78202) (not d!78764) (not b!270962) (not d!78348) (not b!270914) (not b!269914) (not b!270178) (not b!270986) (not d!78358) (not d!78352) (not b!270452) (not b!270791) b_and!21625 (not d!78958) (not b!269874) (not b_next!10029) (not b!269904) (not bm!14727) (not d!78744) (not d!78376) (not d!78238) (not d!78526) (not d!78158) (not b!271025) (not d!78326) (not d!78310) (not d!78230) (not b!270927) (not d!78232) (not b!270919) (not b!269841) (not b!270789) (not d!78462) (not b!271019) (not b!270821) (not b!270823) (not b!269812) (not b!270931) (not d!78752) (not d!78200) (not b!269997) (not b!270880) (not b!270961) b_and!21349 (not b!270817) (not b!269637) (not d!78920) (not b!270932) (not b!270194) (not bm!14722) (not b!269929) (not b!269987) (not b!269809) (not b!269690) (not b_next!9997) (not b!269704) (not b!270503) (not d!78242) b_and!21353 (not b!269703) (not bm!14794) b_and!21637 (not b!269701) (not b!271013) (not b!269944) (not d!78416) (not b!270536) (not b!270220) (not b!269713) (not d!78754) (not b!270982) (not b!270582) (not b!270222) (not d!78236) (not bm!14752) b_and!21633 (not b!270815) (not d!78396) (not d!78828) (not bm!14710) (not d!78776) (not b!269811) (not b!270953) (not d!78354) (not d!78602) (not d!78916) (not b!270989) (not b!270874) (not b!271001) (not b!269882) (not b!270250) (not d!79006) (not d!78728) (not b!270829) (not b!270985) (not b!270930) (not b!270596) (not bm!14714) (not b!269662) (not d!78424) (not d!78722) (not b!270901) (not d!78228) (not b!270594) (not b!270947) (not d!78962) (not d!78216) (not b!271040) (not d!78818) (not b!270959) (not b!269806) (not b!271028) (not b_lambda!8525) (not b!270965) (not b!269881) (not b_next!10033) (not b!270943) (not b!270577) (not b!269938) (not d!78996) (not b!270532) (not b!269665) (not b!269571) (not b!269995) (not b!269851) (not d!78946) (not d!78432) (not b!270504) (not b!269932) (not d!78578) (not b!269895) (not b!270816) (not bm!14778) (not b!269700) (not bm!14745) (not d!78998) b_and!21357 (not b!269587) (not d!78168) (not d!78524) (not b!269318) (not b_lambda!8629) (not b!270902) (not b!270584) (not b!270805) (not d!78218) (not b_next!10017) (not d!78248) (not b!270841) (not b!269927) (not b!270909) (not b!271018) (not b!270466) (not d!79000) (not bs!30207) (not bm!14744) (not b!270175) (not b_lambda!8533) (not d!78406) (not d!78836) (not bm!14725) (not b!269992) (not b!271038) (not b!271016) (not bm!14746) (not b!269658) (not d!78960) (not d!78312) (not b!270470) (not d!78430) b_and!21635 (not b!270581) (not d!78160) (not d!78400) (not b!270591) (not b!270136) (not b!270940) (not d!78912) (not b!270798) (not d!79010) b_and!21627 (not d!78372) (not d!78518) (not b!269613) (not bm!14787) (not b!270949) (not b!269699) (not b!269986) (not bm!14789) (not d!78926) (not d!78988) (not d!79002) (not d!78394) (not d!78940) (not b!270248) (not b!271032) (not d!78910) (not b!271035) (not bm!14801) (not b!270899) (not b!270802) (not b!270836) (not b!270455) (not b!270812) (not b!270872) (not d!78980) (not d!78370) (not b!271037) (not d!78378) (not b!270228) (not b!270971) (not b!271029))
(check-sat (not b_next!9995) (not b_next!10015) (not b_next!9993) b_and!21629 b_and!21639 b_and!21631 (not b_next!10001) b_and!21623 b_and!21637 b_and!21633 (not b_next!10033) b_and!21635 b_and!21627 (not b_next!10031) (not b_next!9999) (not b_next!10013) (not b_next!10019) b_and!21421 b_and!21417 (not b_next!10003) (not b_next!10035) b_and!21625 (not b_next!10029) (not b_next!9997) b_and!21349 b_and!21353 b_and!21357 (not b_next!10017))
