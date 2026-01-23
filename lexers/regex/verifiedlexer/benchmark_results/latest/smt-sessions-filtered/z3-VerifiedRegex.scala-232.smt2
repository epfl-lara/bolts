; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3606 () Bool)

(assert start!3606)

(declare-fun b!49933 () Bool)

(declare-fun b_free!1493 () Bool)

(declare-fun b_next!1493 () Bool)

(assert (=> b!49933 (= b_free!1493 (not b_next!1493))))

(declare-fun tp!33228 () Bool)

(declare-fun b_and!1535 () Bool)

(assert (=> b!49933 (= tp!33228 b_and!1535)))

(declare-fun b_free!1495 () Bool)

(declare-fun b_next!1495 () Bool)

(assert (=> b!49933 (= b_free!1495 (not b_next!1495))))

(declare-fun tp!33226 () Bool)

(declare-fun b_and!1537 () Bool)

(assert (=> b!49933 (= tp!33226 b_and!1537)))

(declare-fun e!29233 () Bool)

(assert (=> b!49933 (= e!29233 (and tp!33228 tp!33226))))

(declare-fun b!49934 () Bool)

(declare-fun res!32780 () Bool)

(declare-fun e!29230 () Bool)

(assert (=> b!49934 (=> (not res!32780) (not e!29230))))

(declare-fun from!821 () Int)

(declare-fun lt!8038 () Int)

(assert (=> b!49934 (= res!32780 (< from!821 (- lt!8038 1)))))

(declare-fun b!49936 () Bool)

(declare-fun e!29228 () Bool)

(declare-fun e!29232 () Bool)

(declare-fun tp!33229 () Bool)

(assert (=> b!49936 (= e!29228 (and e!29232 tp!33229))))

(declare-fun b!49937 () Bool)

(declare-fun res!32779 () Bool)

(assert (=> b!49937 (=> (not res!32779) (not e!29230))))

(declare-datatypes ((List!926 0))(
  ( (Nil!920) (Cons!920 (h!6317 (_ BitVec 16)) (t!17129 List!926)) )
))
(declare-datatypes ((TokenValue!185 0))(
  ( (FloatLiteralValue!370 (text!1740 List!926)) (TokenValueExt!184 (__x!1465 Int)) (Broken!925 (value!8429 List!926)) (Object!190) (End!185) (Def!185) (Underscore!185) (Match!185) (Else!185) (Error!185) (Case!185) (If!185) (Extends!185) (Abstract!185) (Class!185) (Val!185) (DelimiterValue!370 (del!245 List!926)) (KeywordValue!191 (value!8430 List!926)) (CommentValue!370 (value!8431 List!926)) (WhitespaceValue!370 (value!8432 List!926)) (IndentationValue!185 (value!8433 List!926)) (String!1316) (Int32!185) (Broken!926 (value!8434 List!926)) (Boolean!186) (Unit!505) (OperatorValue!188 (op!245 List!926)) (IdentifierValue!370 (value!8435 List!926)) (IdentifierValue!371 (value!8436 List!926)) (WhitespaceValue!371 (value!8437 List!926)) (True!370) (False!370) (Broken!927 (value!8438 List!926)) (Broken!928 (value!8439 List!926)) (True!371) (RightBrace!185) (RightBracket!185) (Colon!185) (Null!185) (Comma!185) (LeftBracket!185) (False!371) (LeftBrace!185) (ImaginaryLiteralValue!185 (text!1741 List!926)) (StringLiteralValue!555 (value!8440 List!926)) (EOFValue!185 (value!8441 List!926)) (IdentValue!185 (value!8442 List!926)) (DelimiterValue!371 (value!8443 List!926)) (DedentValue!185 (value!8444 List!926)) (NewLineValue!185 (value!8445 List!926)) (IntegerValue!555 (value!8446 (_ BitVec 32)) (text!1742 List!926)) (IntegerValue!556 (value!8447 Int) (text!1743 List!926)) (Times!185) (Or!185) (Equal!185) (Minus!185) (Broken!929 (value!8448 List!926)) (And!185) (Div!185) (LessEqual!185) (Mod!185) (Concat!448) (Not!185) (Plus!185) (SpaceValue!185 (value!8449 List!926)) (IntegerValue!557 (value!8450 Int) (text!1744 List!926)) (StringLiteralValue!556 (text!1745 List!926)) (FloatLiteralValue!371 (text!1746 List!926)) (BytesLiteralValue!185 (value!8451 List!926)) (CommentValue!371 (value!8452 List!926)) (StringLiteralValue!557 (value!8453 List!926)) (ErrorTokenValue!185 (msg!246 List!926)) )
))
(declare-datatypes ((C!1448 0))(
  ( (C!1449 (val!331 Int)) )
))
(declare-datatypes ((List!927 0))(
  ( (Nil!921) (Cons!921 (h!6318 C!1448) (t!17130 List!927)) )
))
(declare-datatypes ((IArray!389 0))(
  ( (IArray!390 (innerList!252 List!927)) )
))
(declare-datatypes ((Conc!194 0))(
  ( (Node!194 (left!704 Conc!194) (right!1034 Conc!194) (csize!618 Int) (cheight!405 Int)) (Leaf!427 (xs!2773 IArray!389) (csize!619 Int)) (Empty!194) )
))
(declare-datatypes ((BalanceConc!392 0))(
  ( (BalanceConc!393 (c!16573 Conc!194)) )
))
(declare-datatypes ((String!1317 0))(
  ( (String!1318 (value!8454 String)) )
))
(declare-datatypes ((Regex!263 0))(
  ( (ElementMatch!263 (c!16574 C!1448)) (Concat!449 (regOne!1038 Regex!263) (regTwo!1038 Regex!263)) (EmptyExpr!263) (Star!263 (reg!592 Regex!263)) (EmptyLang!263) (Union!263 (regOne!1039 Regex!263) (regTwo!1039 Regex!263)) )
))
(declare-datatypes ((TokenValueInjection!194 0))(
  ( (TokenValueInjection!195 (toValue!674 Int) (toChars!533 Int)) )
))
(declare-datatypes ((Rule!190 0))(
  ( (Rule!191 (regex!195 Regex!263) (tag!373 String!1317) (isSeparator!195 Bool) (transformation!195 TokenValueInjection!194)) )
))
(declare-datatypes ((List!928 0))(
  ( (Nil!922) (Cons!922 (h!6319 Rule!190) (t!17131 List!928)) )
))
(declare-fun rules!1069 () List!928)

(declare-fun isEmpty!181 (List!928) Bool)

(assert (=> b!49937 (= res!32779 (not (isEmpty!181 rules!1069)))))

(declare-fun b!49938 () Bool)

(declare-fun res!32782 () Bool)

(declare-fun e!29227 () Bool)

(assert (=> b!49938 (=> res!32782 e!29227)))

(declare-datatypes ((Token!154 0))(
  ( (Token!155 (value!8455 TokenValue!185) (rule!670 Rule!190) (size!889 Int) (originalCharacters!248 List!927)) )
))
(declare-datatypes ((List!929 0))(
  ( (Nil!923) (Cons!923 (h!6320 Token!154) (t!17132 List!929)) )
))
(declare-fun lt!8035 () List!929)

(declare-fun lt!8041 () Token!154)

(declare-fun contains!56 (List!929 Token!154) Bool)

(assert (=> b!49938 (= res!32782 (not (contains!56 lt!8035 lt!8041)))))

(declare-fun b!49939 () Bool)

(declare-fun e!29226 () Bool)

(declare-datatypes ((IArray!391 0))(
  ( (IArray!392 (innerList!253 List!929)) )
))
(declare-datatypes ((Conc!195 0))(
  ( (Node!195 (left!705 Conc!195) (right!1035 Conc!195) (csize!620 Int) (cheight!406 Int)) (Leaf!428 (xs!2774 IArray!391) (csize!621 Int)) (Empty!195) )
))
(declare-datatypes ((BalanceConc!394 0))(
  ( (BalanceConc!395 (c!16575 Conc!195)) )
))
(declare-fun v!6227 () BalanceConc!394)

(declare-fun tp!33227 () Bool)

(declare-fun inv!1233 (Conc!195) Bool)

(assert (=> b!49939 (= e!29226 (and (inv!1233 (c!16575 v!6227)) tp!33227))))

(declare-fun b!49940 () Bool)

(declare-fun res!32784 () Bool)

(assert (=> b!49940 (=> (not res!32784) (not e!29230))))

(declare-datatypes ((LexerInterface!87 0))(
  ( (LexerInterfaceExt!84 (__x!1466 Int)) (Lexer!85) )
))
(declare-fun thiss!11059 () LexerInterface!87)

(declare-fun rulesInvariant!81 (LexerInterface!87 List!928) Bool)

(assert (=> b!49940 (= res!32784 (rulesInvariant!81 thiss!11059 rules!1069))))

(declare-fun tp!33230 () Bool)

(declare-fun b!49941 () Bool)

(declare-fun inv!1229 (String!1317) Bool)

(declare-fun inv!1234 (TokenValueInjection!194) Bool)

(assert (=> b!49941 (= e!29232 (and tp!33230 (inv!1229 (tag!373 (h!6319 rules!1069))) (inv!1234 (transformation!195 (h!6319 rules!1069))) e!29233))))

(declare-fun b!49942 () Bool)

(declare-fun e!29231 () Bool)

(assert (=> b!49942 (= e!29231 e!29230)))

(declare-fun res!32781 () Bool)

(assert (=> b!49942 (=> (not res!32781) (not e!29230))))

(assert (=> b!49942 (= res!32781 (<= from!821 lt!8038))))

(declare-fun size!890 (BalanceConc!394) Int)

(assert (=> b!49942 (= lt!8038 (size!890 v!6227))))

(declare-fun b!49943 () Bool)

(assert (=> b!49943 (= e!29227 (and (<= 0 (+ 1 from!821)) (< (+ 1 from!821) lt!8038)))))

(declare-fun b!49944 () Bool)

(declare-fun res!32785 () Bool)

(assert (=> b!49944 (=> (not res!32785) (not e!29230))))

(declare-fun rulesProduceEachTokenIndividually!25 (LexerInterface!87 List!928 BalanceConc!394) Bool)

(assert (=> b!49944 (= res!32785 (rulesProduceEachTokenIndividually!25 thiss!11059 rules!1069 v!6227))))

(declare-fun res!32786 () Bool)

(assert (=> start!3606 (=> (not res!32786) (not e!29231))))

(get-info :version)

(assert (=> start!3606 (= res!32786 (and ((_ is Lexer!85) thiss!11059) (>= from!821 0)))))

(assert (=> start!3606 e!29231))

(assert (=> start!3606 true))

(declare-fun inv!1235 (BalanceConc!394) Bool)

(assert (=> start!3606 (and (inv!1235 v!6227) e!29226)))

(assert (=> start!3606 e!29228))

(declare-fun b!49935 () Bool)

(assert (=> b!49935 (= e!29230 (not e!29227))))

(declare-fun res!32783 () Bool)

(assert (=> b!49935 (=> res!32783 e!29227)))

(declare-fun contains!57 (BalanceConc!394 Token!154) Bool)

(assert (=> b!49935 (= res!32783 (not (contains!57 v!6227 lt!8041)))))

(declare-fun apply!40 (BalanceConc!394 Int) Token!154)

(assert (=> b!49935 (= lt!8041 (apply!40 v!6227 from!821))))

(declare-fun lt!8040 () List!929)

(declare-fun tail!37 (List!929) List!929)

(declare-fun drop!12 (List!929 Int) List!929)

(assert (=> b!49935 (= (tail!37 lt!8040) (drop!12 lt!8035 (+ 2 from!821)))))

(declare-datatypes ((Unit!506 0))(
  ( (Unit!507) )
))
(declare-fun lt!8036 () Unit!506)

(declare-fun lemmaDropTail!8 (List!929 Int) Unit!506)

(assert (=> b!49935 (= lt!8036 (lemmaDropTail!8 lt!8035 (+ 1 from!821)))))

(declare-fun lt!8037 () List!929)

(assert (=> b!49935 (= (tail!37 lt!8037) lt!8040)))

(declare-fun lt!8034 () Unit!506)

(assert (=> b!49935 (= lt!8034 (lemmaDropTail!8 lt!8035 from!821))))

(declare-fun head!352 (List!929) Token!154)

(declare-fun apply!41 (List!929 Int) Token!154)

(assert (=> b!49935 (= (head!352 lt!8040) (apply!41 lt!8035 (+ 1 from!821)))))

(assert (=> b!49935 (= lt!8040 (drop!12 lt!8035 (+ 1 from!821)))))

(declare-fun lt!8042 () Unit!506)

(declare-fun lemmaDropApply!12 (List!929 Int) Unit!506)

(assert (=> b!49935 (= lt!8042 (lemmaDropApply!12 lt!8035 (+ 1 from!821)))))

(assert (=> b!49935 (= (head!352 lt!8037) (apply!41 lt!8035 from!821))))

(assert (=> b!49935 (= lt!8037 (drop!12 lt!8035 from!821))))

(declare-fun lt!8039 () Unit!506)

(assert (=> b!49935 (= lt!8039 (lemmaDropApply!12 lt!8035 from!821))))

(declare-fun list!236 (BalanceConc!394) List!929)

(assert (=> b!49935 (= lt!8035 (list!236 v!6227))))

(assert (= (and start!3606 res!32786) b!49942))

(assert (= (and b!49942 res!32781) b!49937))

(assert (= (and b!49937 res!32779) b!49940))

(assert (= (and b!49940 res!32784) b!49944))

(assert (= (and b!49944 res!32785) b!49934))

(assert (= (and b!49934 res!32780) b!49935))

(assert (= (and b!49935 (not res!32783)) b!49938))

(assert (= (and b!49938 (not res!32782)) b!49943))

(assert (= start!3606 b!49939))

(assert (= b!49941 b!49933))

(assert (= b!49936 b!49941))

(assert (= (and start!3606 ((_ is Cons!922) rules!1069)) b!49936))

(declare-fun m!23820 () Bool)

(assert (=> b!49939 m!23820))

(declare-fun m!23822 () Bool)

(assert (=> b!49942 m!23822))

(declare-fun m!23824 () Bool)

(assert (=> b!49935 m!23824))

(declare-fun m!23826 () Bool)

(assert (=> b!49935 m!23826))

(declare-fun m!23828 () Bool)

(assert (=> b!49935 m!23828))

(declare-fun m!23830 () Bool)

(assert (=> b!49935 m!23830))

(declare-fun m!23832 () Bool)

(assert (=> b!49935 m!23832))

(declare-fun m!23834 () Bool)

(assert (=> b!49935 m!23834))

(declare-fun m!23836 () Bool)

(assert (=> b!49935 m!23836))

(declare-fun m!23838 () Bool)

(assert (=> b!49935 m!23838))

(declare-fun m!23840 () Bool)

(assert (=> b!49935 m!23840))

(declare-fun m!23842 () Bool)

(assert (=> b!49935 m!23842))

(declare-fun m!23844 () Bool)

(assert (=> b!49935 m!23844))

(declare-fun m!23846 () Bool)

(assert (=> b!49935 m!23846))

(declare-fun m!23848 () Bool)

(assert (=> b!49935 m!23848))

(declare-fun m!23850 () Bool)

(assert (=> b!49935 m!23850))

(declare-fun m!23852 () Bool)

(assert (=> b!49935 m!23852))

(declare-fun m!23854 () Bool)

(assert (=> b!49935 m!23854))

(declare-fun m!23856 () Bool)

(assert (=> start!3606 m!23856))

(declare-fun m!23858 () Bool)

(assert (=> b!49944 m!23858))

(declare-fun m!23860 () Bool)

(assert (=> b!49937 m!23860))

(declare-fun m!23862 () Bool)

(assert (=> b!49941 m!23862))

(declare-fun m!23864 () Bool)

(assert (=> b!49941 m!23864))

(declare-fun m!23866 () Bool)

(assert (=> b!49940 m!23866))

(declare-fun m!23868 () Bool)

(assert (=> b!49938 m!23868))

(check-sat (not b!49938) (not b!49939) (not b!49936) (not start!3606) b_and!1535 b_and!1537 (not b_next!1495) (not b!49941) (not b!49942) (not b!49937) (not b!49944) (not b_next!1493) (not b!49935) (not b!49940))
(check-sat b_and!1537 b_and!1535 (not b_next!1493) (not b_next!1495))
