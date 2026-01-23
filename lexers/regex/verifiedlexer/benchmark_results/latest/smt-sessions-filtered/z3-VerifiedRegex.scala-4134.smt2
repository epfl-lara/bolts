; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!221752 () Bool)

(assert start!221752)

(declare-fun b!2268960 () Bool)

(declare-fun b_free!67357 () Bool)

(declare-fun b_next!68061 () Bool)

(assert (=> b!2268960 (= b_free!67357 (not b_next!68061))))

(declare-fun tp!718051 () Bool)

(declare-fun b_and!178689 () Bool)

(assert (=> b!2268960 (= tp!718051 b_and!178689)))

(declare-fun b_free!67359 () Bool)

(declare-fun b_next!68063 () Bool)

(assert (=> b!2268960 (= b_free!67359 (not b_next!68063))))

(declare-fun tp!718042 () Bool)

(declare-fun b_and!178691 () Bool)

(assert (=> b!2268960 (= tp!718042 b_and!178691)))

(declare-fun b!2268967 () Bool)

(declare-fun b_free!67361 () Bool)

(declare-fun b_next!68065 () Bool)

(assert (=> b!2268967 (= b_free!67361 (not b_next!68065))))

(declare-fun tp!718058 () Bool)

(declare-fun b_and!178693 () Bool)

(assert (=> b!2268967 (= tp!718058 b_and!178693)))

(declare-fun b_free!67363 () Bool)

(declare-fun b_next!68067 () Bool)

(assert (=> b!2268967 (= b_free!67363 (not b_next!68067))))

(declare-fun tp!718047 () Bool)

(declare-fun b_and!178695 () Bool)

(assert (=> b!2268967 (= tp!718047 b_and!178695)))

(declare-fun b!2268966 () Bool)

(declare-fun b_free!67365 () Bool)

(declare-fun b_next!68069 () Bool)

(assert (=> b!2268966 (= b_free!67365 (not b_next!68069))))

(declare-fun tp!718044 () Bool)

(declare-fun b_and!178697 () Bool)

(assert (=> b!2268966 (= tp!718044 b_and!178697)))

(declare-fun b_free!67367 () Bool)

(declare-fun b_next!68071 () Bool)

(assert (=> b!2268966 (= b_free!67367 (not b_next!68071))))

(declare-fun tp!718045 () Bool)

(declare-fun b_and!178699 () Bool)

(assert (=> b!2268966 (= tp!718045 b_and!178699)))

(declare-fun b!2268961 () Bool)

(declare-fun b_free!67369 () Bool)

(declare-fun b_next!68073 () Bool)

(assert (=> b!2268961 (= b_free!67369 (not b_next!68073))))

(declare-fun tp!718054 () Bool)

(declare-fun b_and!178701 () Bool)

(assert (=> b!2268961 (= tp!718054 b_and!178701)))

(declare-fun b_free!67371 () Bool)

(declare-fun b_next!68075 () Bool)

(assert (=> b!2268961 (= b_free!67371 (not b_next!68075))))

(declare-fun tp!718053 () Bool)

(declare-fun b_and!178703 () Bool)

(assert (=> b!2268961 (= tp!718053 b_and!178703)))

(declare-fun b!2268955 () Bool)

(declare-fun e!1453197 () Bool)

(declare-fun e!1453183 () Bool)

(assert (=> b!2268955 (= e!1453197 e!1453183)))

(declare-fun res!970087 () Bool)

(assert (=> b!2268955 (=> (not res!970087) (not e!1453183))))

(declare-datatypes ((List!27069 0))(
  ( (Nil!26975) (Cons!26975 (h!32376 (_ BitVec 16)) (t!202377 List!27069)) )
))
(declare-datatypes ((TokenValue!4461 0))(
  ( (FloatLiteralValue!8922 (text!31672 List!27069)) (TokenValueExt!4460 (__x!17982 Int)) (Broken!22305 (value!136315 List!27069)) (Object!4554) (End!4461) (Def!4461) (Underscore!4461) (Match!4461) (Else!4461) (Error!4461) (Case!4461) (If!4461) (Extends!4461) (Abstract!4461) (Class!4461) (Val!4461) (DelimiterValue!8922 (del!4521 List!27069)) (KeywordValue!4467 (value!136316 List!27069)) (CommentValue!8922 (value!136317 List!27069)) (WhitespaceValue!8922 (value!136318 List!27069)) (IndentationValue!4461 (value!136319 List!27069)) (String!29408) (Int32!4461) (Broken!22306 (value!136320 List!27069)) (Boolean!4462) (Unit!39929) (OperatorValue!4464 (op!4521 List!27069)) (IdentifierValue!8922 (value!136321 List!27069)) (IdentifierValue!8923 (value!136322 List!27069)) (WhitespaceValue!8923 (value!136323 List!27069)) (True!8922) (False!8922) (Broken!22307 (value!136324 List!27069)) (Broken!22308 (value!136325 List!27069)) (True!8923) (RightBrace!4461) (RightBracket!4461) (Colon!4461) (Null!4461) (Comma!4461) (LeftBracket!4461) (False!8923) (LeftBrace!4461) (ImaginaryLiteralValue!4461 (text!31673 List!27069)) (StringLiteralValue!13383 (value!136326 List!27069)) (EOFValue!4461 (value!136327 List!27069)) (IdentValue!4461 (value!136328 List!27069)) (DelimiterValue!8923 (value!136329 List!27069)) (DedentValue!4461 (value!136330 List!27069)) (NewLineValue!4461 (value!136331 List!27069)) (IntegerValue!13383 (value!136332 (_ BitVec 32)) (text!31674 List!27069)) (IntegerValue!13384 (value!136333 Int) (text!31675 List!27069)) (Times!4461) (Or!4461) (Equal!4461) (Minus!4461) (Broken!22309 (value!136334 List!27069)) (And!4461) (Div!4461) (LessEqual!4461) (Mod!4461) (Concat!11108) (Not!4461) (Plus!4461) (SpaceValue!4461 (value!136335 List!27069)) (IntegerValue!13385 (value!136336 Int) (text!31676 List!27069)) (StringLiteralValue!13384 (text!31677 List!27069)) (FloatLiteralValue!8923 (text!31678 List!27069)) (BytesLiteralValue!4461 (value!136337 List!27069)) (CommentValue!8923 (value!136338 List!27069)) (StringLiteralValue!13385 (value!136339 List!27069)) (ErrorTokenValue!4461 (msg!4522 List!27069)) )
))
(declare-datatypes ((C!13440 0))(
  ( (C!13441 (val!7768 Int)) )
))
(declare-datatypes ((List!27070 0))(
  ( (Nil!26976) (Cons!26976 (h!32377 C!13440) (t!202378 List!27070)) )
))
(declare-datatypes ((IArray!17497 0))(
  ( (IArray!17498 (innerList!8806 List!27070)) )
))
(declare-datatypes ((Conc!8746 0))(
  ( (Node!8746 (left!20468 Conc!8746) (right!20798 Conc!8746) (csize!17722 Int) (cheight!8957 Int)) (Leaf!12881 (xs!11688 IArray!17497) (csize!17723 Int)) (Empty!8746) )
))
(declare-datatypes ((BalanceConc!17220 0))(
  ( (BalanceConc!17221 (c!360288 Conc!8746)) )
))
(declare-datatypes ((Regex!6647 0))(
  ( (ElementMatch!6647 (c!360289 C!13440)) (Concat!11109 (regOne!13806 Regex!6647) (regTwo!13806 Regex!6647)) (EmptyExpr!6647) (Star!6647 (reg!6976 Regex!6647)) (EmptyLang!6647) (Union!6647 (regOne!13807 Regex!6647) (regTwo!13807 Regex!6647)) )
))
(declare-datatypes ((String!29409 0))(
  ( (String!29410 (value!136340 String)) )
))
(declare-datatypes ((TokenValueInjection!8462 0))(
  ( (TokenValueInjection!8463 (toValue!6057 Int) (toChars!5916 Int)) )
))
(declare-datatypes ((Rule!8398 0))(
  ( (Rule!8399 (regex!4299 Regex!6647) (tag!4789 String!29409) (isSeparator!4299 Bool) (transformation!4299 TokenValueInjection!8462)) )
))
(declare-datatypes ((Token!8076 0))(
  ( (Token!8077 (value!136341 TokenValue!4461) (rule!6617 Rule!8398) (size!21166 Int) (originalCharacters!5069 List!27070)) )
))
(declare-datatypes ((List!27071 0))(
  ( (Nil!26977) (Cons!26977 (h!32378 Token!8076) (t!202379 List!27071)) )
))
(declare-datatypes ((IArray!17499 0))(
  ( (IArray!17500 (innerList!8807 List!27071)) )
))
(declare-datatypes ((Conc!8747 0))(
  ( (Node!8747 (left!20469 Conc!8747) (right!20799 Conc!8747) (csize!17724 Int) (cheight!8958 Int)) (Leaf!12882 (xs!11689 IArray!17499) (csize!17725 Int)) (Empty!8747) )
))
(declare-datatypes ((BalanceConc!17222 0))(
  ( (BalanceConc!17223 (c!360290 Conc!8747)) )
))
(declare-datatypes ((tuple2!26636 0))(
  ( (tuple2!26637 (_1!15828 BalanceConc!17222) (_2!15828 BalanceConc!17220)) )
))
(declare-fun lt!843033 () tuple2!26636)

(declare-fun tokens!456 () List!27071)

(declare-fun suffix!886 () List!27070)

(declare-datatypes ((tuple2!26638 0))(
  ( (tuple2!26639 (_1!15829 List!27071) (_2!15829 List!27070)) )
))
(declare-fun list!10445 (BalanceConc!17222) List!27071)

(declare-fun list!10446 (BalanceConc!17220) List!27070)

(assert (=> b!2268955 (= res!970087 (= (tuple2!26639 (list!10445 (_1!15828 lt!843033)) (list!10446 (_2!15828 lt!843033))) (tuple2!26639 tokens!456 suffix!886)))))

(declare-datatypes ((LexerInterface!3896 0))(
  ( (LexerInterfaceExt!3893 (__x!17983 Int)) (Lexer!3894) )
))
(declare-fun thiss!16613 () LexerInterface!3896)

(declare-fun input!1722 () List!27070)

(declare-datatypes ((List!27072 0))(
  ( (Nil!26978) (Cons!26978 (h!32379 Rule!8398) (t!202380 List!27072)) )
))
(declare-fun rules!1750 () List!27072)

(declare-fun lex!1735 (LexerInterface!3896 List!27072 BalanceConc!17220) tuple2!26636)

(declare-fun seqFromList!3003 (List!27070) BalanceConc!17220)

(assert (=> b!2268955 (= lt!843033 (lex!1735 thiss!16613 rules!1750 (seqFromList!3003 input!1722)))))

(declare-fun e!1453203 () Bool)

(declare-fun e!1453186 () Bool)

(declare-fun tp!718043 () Bool)

(declare-fun b!2268956 () Bool)

(declare-fun inv!36526 (Token!8076) Bool)

(assert (=> b!2268956 (= e!1453186 (and (inv!36526 (h!32378 tokens!456)) e!1453203 tp!718043))))

(declare-fun e!1453184 () Bool)

(declare-fun tp!718052 () Bool)

(declare-fun b!2268957 () Bool)

(declare-fun otherR!12 () Rule!8398)

(declare-fun e!1453185 () Bool)

(declare-fun inv!36523 (String!29409) Bool)

(declare-fun inv!36527 (TokenValueInjection!8462) Bool)

(assert (=> b!2268957 (= e!1453184 (and tp!718052 (inv!36523 (tag!4789 otherR!12)) (inv!36527 (transformation!4299 otherR!12)) e!1453185))))

(declare-fun b!2268958 () Bool)

(declare-fun e!1453182 () Bool)

(declare-fun tp_is_empty!10515 () Bool)

(declare-fun tp!718055 () Bool)

(assert (=> b!2268958 (= e!1453182 (and tp_is_empty!10515 tp!718055))))

(declare-fun b!2268959 () Bool)

(declare-fun res!970084 () Bool)

(assert (=> b!2268959 (=> (not res!970084) (not e!1453197))))

(declare-fun r!2363 () Rule!8398)

(declare-fun contains!4659 (List!27072 Rule!8398) Bool)

(assert (=> b!2268959 (= res!970084 (contains!4659 rules!1750 r!2363))))

(declare-fun e!1453180 () Bool)

(assert (=> b!2268961 (= e!1453180 (and tp!718054 tp!718053))))

(declare-fun b!2268962 () Bool)

(declare-fun e!1453200 () Bool)

(declare-fun tp!718056 () Bool)

(assert (=> b!2268962 (= e!1453200 (and tp_is_empty!10515 tp!718056))))

(declare-fun b!2268963 () Bool)

(declare-fun e!1453194 () Bool)

(assert (=> b!2268963 (= e!1453194 false)))

(declare-fun lt!843032 () Bool)

(declare-fun otherP!12 () List!27070)

(declare-fun isPrefix!2289 (List!27070 List!27070) Bool)

(assert (=> b!2268963 (= lt!843032 (isPrefix!2289 otherP!12 input!1722))))

(declare-fun b!2268964 () Bool)

(declare-fun res!970091 () Bool)

(assert (=> b!2268964 (=> (not res!970091) (not e!1453197))))

(assert (=> b!2268964 (= res!970091 (contains!4659 rules!1750 otherR!12))))

(declare-fun e!1453187 () Bool)

(declare-fun b!2268965 () Bool)

(declare-fun tp!718057 () Bool)

(declare-fun e!1453181 () Bool)

(assert (=> b!2268965 (= e!1453181 (and tp!718057 (inv!36523 (tag!4789 (rule!6617 (h!32378 tokens!456)))) (inv!36527 (transformation!4299 (rule!6617 (h!32378 tokens!456)))) e!1453187))))

(declare-fun e!1453196 () Bool)

(assert (=> b!2268966 (= e!1453196 (and tp!718044 tp!718045))))

(assert (=> b!2268967 (= e!1453187 (and tp!718058 tp!718047))))

(declare-fun b!2268968 () Bool)

(declare-fun e!1453202 () Bool)

(declare-fun head!4890 (List!27071) Token!8076)

(assert (=> b!2268968 (= e!1453202 (= (rule!6617 (head!4890 tokens!456)) r!2363))))

(declare-fun b!2268969 () Bool)

(declare-fun tp!718050 () Bool)

(declare-fun inv!21 (TokenValue!4461) Bool)

(assert (=> b!2268969 (= e!1453203 (and (inv!21 (value!136341 (h!32378 tokens!456))) e!1453181 tp!718050))))

(declare-fun b!2268970 () Bool)

(declare-fun e!1453191 () Bool)

(declare-fun size!21167 (BalanceConc!17220) Int)

(declare-fun charsOf!2687 (Token!8076) BalanceConc!17220)

(declare-fun size!21168 (List!27070) Int)

(assert (=> b!2268970 (= e!1453191 (<= (size!21167 (charsOf!2687 (head!4890 tokens!456))) (size!21168 otherP!12)))))

(declare-fun b!2268971 () Bool)

(declare-fun res!970088 () Bool)

(assert (=> b!2268971 (=> (not res!970088) (not e!1453197))))

(declare-fun rulesInvariant!3398 (LexerInterface!3896 List!27072) Bool)

(assert (=> b!2268971 (= res!970088 (rulesInvariant!3398 thiss!16613 rules!1750))))

(declare-fun b!2268972 () Bool)

(assert (=> b!2268972 (= e!1453183 e!1453194)))

(declare-fun res!970085 () Bool)

(assert (=> b!2268972 (=> (not res!970085) (not e!1453194))))

(assert (=> b!2268972 (= res!970085 e!1453191)))

(declare-fun res!970089 () Bool)

(assert (=> b!2268972 (=> res!970089 e!1453191)))

(declare-fun lt!843034 () Bool)

(assert (=> b!2268972 (= res!970089 lt!843034)))

(declare-fun isEmpty!15273 (List!27071) Bool)

(assert (=> b!2268972 (= lt!843034 (isEmpty!15273 tokens!456))))

(declare-fun b!2268973 () Bool)

(declare-fun res!970083 () Bool)

(assert (=> b!2268973 (=> (not res!970083) (not e!1453197))))

(declare-fun isEmpty!15274 (List!27072) Bool)

(assert (=> b!2268973 (= res!970083 (not (isEmpty!15274 rules!1750)))))

(declare-fun e!1453193 () Bool)

(declare-fun b!2268974 () Bool)

(declare-fun tp!718048 () Bool)

(assert (=> b!2268974 (= e!1453193 (and tp!718048 (inv!36523 (tag!4789 (h!32379 rules!1750))) (inv!36527 (transformation!4299 (h!32379 rules!1750))) e!1453196))))

(declare-fun tp!718046 () Bool)

(declare-fun b!2268975 () Bool)

(declare-fun e!1453188 () Bool)

(assert (=> b!2268975 (= e!1453188 (and tp!718046 (inv!36523 (tag!4789 r!2363)) (inv!36527 (transformation!4299 r!2363)) e!1453180))))

(declare-fun b!2268976 () Bool)

(declare-fun e!1453189 () Bool)

(declare-fun tp!718059 () Bool)

(assert (=> b!2268976 (= e!1453189 (and e!1453193 tp!718059))))

(assert (=> b!2268960 (= e!1453185 (and tp!718051 tp!718042))))

(declare-fun res!970086 () Bool)

(assert (=> start!221752 (=> (not res!970086) (not e!1453197))))

(get-info :version)

(assert (=> start!221752 (= res!970086 ((_ is Lexer!3894) thiss!16613))))

(assert (=> start!221752 e!1453197))

(assert (=> start!221752 true))

(assert (=> start!221752 e!1453200))

(assert (=> start!221752 e!1453184))

(assert (=> start!221752 e!1453182))

(declare-fun e!1453201 () Bool)

(assert (=> start!221752 e!1453201))

(assert (=> start!221752 e!1453189))

(assert (=> start!221752 e!1453188))

(assert (=> start!221752 e!1453186))

(declare-fun b!2268977 () Bool)

(declare-fun res!970092 () Bool)

(assert (=> b!2268977 (=> (not res!970092) (not e!1453194))))

(assert (=> b!2268977 (= res!970092 e!1453202)))

(declare-fun res!970090 () Bool)

(assert (=> b!2268977 (=> res!970090 e!1453202)))

(assert (=> b!2268977 (= res!970090 lt!843034)))

(declare-fun b!2268978 () Bool)

(declare-fun tp!718049 () Bool)

(assert (=> b!2268978 (= e!1453201 (and tp_is_empty!10515 tp!718049))))

(assert (= (and start!221752 res!970086) b!2268973))

(assert (= (and b!2268973 res!970083) b!2268971))

(assert (= (and b!2268971 res!970088) b!2268959))

(assert (= (and b!2268959 res!970084) b!2268964))

(assert (= (and b!2268964 res!970091) b!2268955))

(assert (= (and b!2268955 res!970087) b!2268972))

(assert (= (and b!2268972 (not res!970089)) b!2268970))

(assert (= (and b!2268972 res!970085) b!2268977))

(assert (= (and b!2268977 (not res!970090)) b!2268968))

(assert (= (and b!2268977 res!970092) b!2268963))

(assert (= (and start!221752 ((_ is Cons!26976) input!1722)) b!2268962))

(assert (= b!2268957 b!2268960))

(assert (= start!221752 b!2268957))

(assert (= (and start!221752 ((_ is Cons!26976) suffix!886)) b!2268958))

(assert (= (and start!221752 ((_ is Cons!26976) otherP!12)) b!2268978))

(assert (= b!2268974 b!2268966))

(assert (= b!2268976 b!2268974))

(assert (= (and start!221752 ((_ is Cons!26978) rules!1750)) b!2268976))

(assert (= b!2268975 b!2268961))

(assert (= start!221752 b!2268975))

(assert (= b!2268965 b!2268967))

(assert (= b!2268969 b!2268965))

(assert (= b!2268956 b!2268969))

(assert (= (and start!221752 ((_ is Cons!26977) tokens!456)) b!2268956))

(declare-fun m!2697919 () Bool)

(assert (=> b!2268970 m!2697919))

(assert (=> b!2268970 m!2697919))

(declare-fun m!2697921 () Bool)

(assert (=> b!2268970 m!2697921))

(assert (=> b!2268970 m!2697921))

(declare-fun m!2697923 () Bool)

(assert (=> b!2268970 m!2697923))

(declare-fun m!2697925 () Bool)

(assert (=> b!2268970 m!2697925))

(declare-fun m!2697927 () Bool)

(assert (=> b!2268969 m!2697927))

(declare-fun m!2697929 () Bool)

(assert (=> b!2268955 m!2697929))

(declare-fun m!2697931 () Bool)

(assert (=> b!2268955 m!2697931))

(declare-fun m!2697933 () Bool)

(assert (=> b!2268955 m!2697933))

(assert (=> b!2268955 m!2697933))

(declare-fun m!2697935 () Bool)

(assert (=> b!2268955 m!2697935))

(assert (=> b!2268968 m!2697919))

(declare-fun m!2697937 () Bool)

(assert (=> b!2268959 m!2697937))

(declare-fun m!2697939 () Bool)

(assert (=> b!2268974 m!2697939))

(declare-fun m!2697941 () Bool)

(assert (=> b!2268974 m!2697941))

(declare-fun m!2697943 () Bool)

(assert (=> b!2268965 m!2697943))

(declare-fun m!2697945 () Bool)

(assert (=> b!2268965 m!2697945))

(declare-fun m!2697947 () Bool)

(assert (=> b!2268971 m!2697947))

(declare-fun m!2697949 () Bool)

(assert (=> b!2268963 m!2697949))

(declare-fun m!2697951 () Bool)

(assert (=> b!2268956 m!2697951))

(declare-fun m!2697953 () Bool)

(assert (=> b!2268973 m!2697953))

(declare-fun m!2697955 () Bool)

(assert (=> b!2268964 m!2697955))

(declare-fun m!2697957 () Bool)

(assert (=> b!2268957 m!2697957))

(declare-fun m!2697959 () Bool)

(assert (=> b!2268957 m!2697959))

(declare-fun m!2697961 () Bool)

(assert (=> b!2268972 m!2697961))

(declare-fun m!2697963 () Bool)

(assert (=> b!2268975 m!2697963))

(declare-fun m!2697965 () Bool)

(assert (=> b!2268975 m!2697965))

(check-sat (not b_next!68069) (not b!2268956) (not b!2268970) (not b!2268963) (not b!2268978) (not b_next!68067) (not b!2268972) b_and!178699 (not b_next!68065) (not b!2268958) (not b!2268962) b_and!178693 (not b!2268965) b_and!178689 (not b!2268974) (not b!2268968) (not b!2268975) (not b!2268969) b_and!178701 tp_is_empty!10515 (not b!2268971) (not b_next!68073) b_and!178703 b_and!178695 (not b!2268976) (not b_next!68071) (not b!2268955) b_and!178691 (not b!2268957) (not b_next!68061) (not b_next!68075) b_and!178697 (not b!2268959) (not b_next!68063) (not b!2268964) (not b!2268973))
(check-sat b_and!178689 (not b_next!68069) b_and!178701 (not b_next!68067) b_and!178699 (not b_next!68065) (not b_next!68071) b_and!178691 b_and!178693 b_and!178697 (not b_next!68063) (not b_next!68073) b_and!178703 b_and!178695 (not b_next!68061) (not b_next!68075))
