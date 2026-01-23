; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3610 () Bool)

(assert start!3610)

(declare-fun b!50010 () Bool)

(declare-fun b_free!1501 () Bool)

(declare-fun b_next!1501 () Bool)

(assert (=> b!50010 (= b_free!1501 (not b_next!1501))))

(declare-fun tp!33260 () Bool)

(declare-fun b_and!1543 () Bool)

(assert (=> b!50010 (= tp!33260 b_and!1543)))

(declare-fun b_free!1503 () Bool)

(declare-fun b_next!1503 () Bool)

(assert (=> b!50010 (= b_free!1503 (not b_next!1503))))

(declare-fun tp!33257 () Bool)

(declare-fun b_and!1545 () Bool)

(assert (=> b!50010 (= tp!33257 b_and!1545)))

(declare-fun e!29280 () Bool)

(assert (=> b!50010 (= e!29280 (and tp!33260 tp!33257))))

(declare-fun b!50011 () Bool)

(declare-fun res!32832 () Bool)

(declare-fun e!29279 () Bool)

(assert (=> b!50011 (=> (not res!32832) (not e!29279))))

(declare-datatypes ((List!934 0))(
  ( (Nil!928) (Cons!928 (h!6325 (_ BitVec 16)) (t!17137 List!934)) )
))
(declare-datatypes ((TokenValue!187 0))(
  ( (FloatLiteralValue!374 (text!1754 List!934)) (TokenValueExt!186 (__x!1469 Int)) (Broken!935 (value!8486 List!934)) (Object!192) (End!187) (Def!187) (Underscore!187) (Match!187) (Else!187) (Error!187) (Case!187) (If!187) (Extends!187) (Abstract!187) (Class!187) (Val!187) (DelimiterValue!374 (del!247 List!934)) (KeywordValue!193 (value!8487 List!934)) (CommentValue!374 (value!8488 List!934)) (WhitespaceValue!374 (value!8489 List!934)) (IndentationValue!187 (value!8490 List!934)) (String!1326) (Int32!187) (Broken!936 (value!8491 List!934)) (Boolean!188) (Unit!511) (OperatorValue!190 (op!247 List!934)) (IdentifierValue!374 (value!8492 List!934)) (IdentifierValue!375 (value!8493 List!934)) (WhitespaceValue!375 (value!8494 List!934)) (True!374) (False!374) (Broken!937 (value!8495 List!934)) (Broken!938 (value!8496 List!934)) (True!375) (RightBrace!187) (RightBracket!187) (Colon!187) (Null!187) (Comma!187) (LeftBracket!187) (False!375) (LeftBrace!187) (ImaginaryLiteralValue!187 (text!1755 List!934)) (StringLiteralValue!561 (value!8497 List!934)) (EOFValue!187 (value!8498 List!934)) (IdentValue!187 (value!8499 List!934)) (DelimiterValue!375 (value!8500 List!934)) (DedentValue!187 (value!8501 List!934)) (NewLineValue!187 (value!8502 List!934)) (IntegerValue!561 (value!8503 (_ BitVec 32)) (text!1756 List!934)) (IntegerValue!562 (value!8504 Int) (text!1757 List!934)) (Times!187) (Or!187) (Equal!187) (Minus!187) (Broken!939 (value!8505 List!934)) (And!187) (Div!187) (LessEqual!187) (Mod!187) (Concat!452) (Not!187) (Plus!187) (SpaceValue!187 (value!8506 List!934)) (IntegerValue!563 (value!8507 Int) (text!1758 List!934)) (StringLiteralValue!562 (text!1759 List!934)) (FloatLiteralValue!375 (text!1760 List!934)) (BytesLiteralValue!187 (value!8508 List!934)) (CommentValue!375 (value!8509 List!934)) (StringLiteralValue!563 (value!8510 List!934)) (ErrorTokenValue!187 (msg!248 List!934)) )
))
(declare-datatypes ((C!1452 0))(
  ( (C!1453 (val!333 Int)) )
))
(declare-datatypes ((List!935 0))(
  ( (Nil!929) (Cons!929 (h!6326 C!1452) (t!17138 List!935)) )
))
(declare-datatypes ((IArray!397 0))(
  ( (IArray!398 (innerList!256 List!935)) )
))
(declare-datatypes ((Conc!198 0))(
  ( (Node!198 (left!709 Conc!198) (right!1039 Conc!198) (csize!626 Int) (cheight!409 Int)) (Leaf!432 (xs!2777 IArray!397) (csize!627 Int)) (Empty!198) )
))
(declare-datatypes ((String!1327 0))(
  ( (String!1328 (value!8511 String)) )
))
(declare-datatypes ((BalanceConc!400 0))(
  ( (BalanceConc!401 (c!16579 Conc!198)) )
))
(declare-datatypes ((Regex!265 0))(
  ( (ElementMatch!265 (c!16580 C!1452)) (Concat!453 (regOne!1042 Regex!265) (regTwo!1042 Regex!265)) (EmptyExpr!265) (Star!265 (reg!594 Regex!265)) (EmptyLang!265) (Union!265 (regOne!1043 Regex!265) (regTwo!1043 Regex!265)) )
))
(declare-datatypes ((TokenValueInjection!198 0))(
  ( (TokenValueInjection!199 (toValue!676 Int) (toChars!535 Int)) )
))
(declare-datatypes ((Rule!194 0))(
  ( (Rule!195 (regex!197 Regex!265) (tag!375 String!1327) (isSeparator!197 Bool) (transformation!197 TokenValueInjection!198)) )
))
(declare-datatypes ((List!936 0))(
  ( (Nil!930) (Cons!930 (h!6327 Rule!194) (t!17139 List!936)) )
))
(declare-fun rules!1069 () List!936)

(declare-fun isEmpty!183 (List!936) Bool)

(assert (=> b!50011 (= res!32832 (not (isEmpty!183 rules!1069)))))

(declare-fun b!50012 () Bool)

(declare-fun e!29281 () Bool)

(assert (=> b!50012 (= e!29279 (not e!29281))))

(declare-fun res!32834 () Bool)

(assert (=> b!50012 (=> res!32834 e!29281)))

(declare-datatypes ((Token!158 0))(
  ( (Token!159 (value!8512 TokenValue!187) (rule!672 Rule!194) (size!893 Int) (originalCharacters!250 List!935)) )
))
(declare-datatypes ((List!937 0))(
  ( (Nil!931) (Cons!931 (h!6328 Token!158) (t!17140 List!937)) )
))
(declare-datatypes ((IArray!399 0))(
  ( (IArray!400 (innerList!257 List!937)) )
))
(declare-datatypes ((Conc!199 0))(
  ( (Node!199 (left!710 Conc!199) (right!1040 Conc!199) (csize!628 Int) (cheight!410 Int)) (Leaf!433 (xs!2778 IArray!399) (csize!629 Int)) (Empty!199) )
))
(declare-datatypes ((BalanceConc!402 0))(
  ( (BalanceConc!403 (c!16581 Conc!199)) )
))
(declare-fun v!6227 () BalanceConc!402)

(declare-fun lt!8091 () Token!158)

(declare-fun contains!60 (BalanceConc!402 Token!158) Bool)

(assert (=> b!50012 (= res!32834 (not (contains!60 v!6227 lt!8091)))))

(declare-fun from!821 () Int)

(declare-fun apply!44 (BalanceConc!402 Int) Token!158)

(assert (=> b!50012 (= lt!8091 (apply!44 v!6227 from!821))))

(declare-fun lt!8093 () List!937)

(declare-fun lt!8092 () List!937)

(declare-fun tail!39 (List!937) List!937)

(declare-fun drop!14 (List!937 Int) List!937)

(assert (=> b!50012 (= (tail!39 lt!8093) (drop!14 lt!8092 (+ 2 from!821)))))

(declare-datatypes ((Unit!512 0))(
  ( (Unit!513) )
))
(declare-fun lt!8088 () Unit!512)

(declare-fun lemmaDropTail!10 (List!937 Int) Unit!512)

(assert (=> b!50012 (= lt!8088 (lemmaDropTail!10 lt!8092 (+ 1 from!821)))))

(declare-fun lt!8090 () List!937)

(assert (=> b!50012 (= (tail!39 lt!8090) lt!8093)))

(declare-fun lt!8089 () Unit!512)

(assert (=> b!50012 (= lt!8089 (lemmaDropTail!10 lt!8092 from!821))))

(declare-fun head!354 (List!937) Token!158)

(declare-fun apply!45 (List!937 Int) Token!158)

(assert (=> b!50012 (= (head!354 lt!8093) (apply!45 lt!8092 (+ 1 from!821)))))

(assert (=> b!50012 (= lt!8093 (drop!14 lt!8092 (+ 1 from!821)))))

(declare-fun lt!8094 () Unit!512)

(declare-fun lemmaDropApply!14 (List!937 Int) Unit!512)

(assert (=> b!50012 (= lt!8094 (lemmaDropApply!14 lt!8092 (+ 1 from!821)))))

(assert (=> b!50012 (= (head!354 lt!8090) (apply!45 lt!8092 from!821))))

(assert (=> b!50012 (= lt!8090 (drop!14 lt!8092 from!821))))

(declare-fun lt!8095 () Unit!512)

(assert (=> b!50012 (= lt!8095 (lemmaDropApply!14 lt!8092 from!821))))

(declare-fun list!238 (BalanceConc!402) List!937)

(assert (=> b!50012 (= lt!8092 (list!238 v!6227))))

(declare-fun res!32837 () Bool)

(declare-fun e!29278 () Bool)

(assert (=> start!3610 (=> (not res!32837) (not e!29278))))

(declare-datatypes ((LexerInterface!89 0))(
  ( (LexerInterfaceExt!86 (__x!1470 Int)) (Lexer!87) )
))
(declare-fun thiss!11059 () LexerInterface!89)

(get-info :version)

(assert (=> start!3610 (= res!32837 (and ((_ is Lexer!87) thiss!11059) (>= from!821 0)))))

(assert (=> start!3610 e!29278))

(assert (=> start!3610 true))

(declare-fun e!29276 () Bool)

(declare-fun inv!1242 (BalanceConc!402) Bool)

(assert (=> start!3610 (and (inv!1242 v!6227) e!29276)))

(declare-fun e!29277 () Bool)

(assert (=> start!3610 e!29277))

(declare-fun b!50013 () Bool)

(declare-fun tp!33259 () Bool)

(declare-fun inv!1243 (Conc!199) Bool)

(assert (=> b!50013 (= e!29276 (and (inv!1243 (c!16581 v!6227)) tp!33259))))

(declare-fun b!50014 () Bool)

(declare-fun e!29275 () Bool)

(declare-fun tp!33256 () Bool)

(assert (=> b!50014 (= e!29277 (and e!29275 tp!33256))))

(declare-fun b!50015 () Bool)

(declare-fun res!32835 () Bool)

(assert (=> b!50015 (=> (not res!32835) (not e!29279))))

(declare-fun lt!8096 () Int)

(assert (=> b!50015 (= res!32835 (< from!821 (- lt!8096 1)))))

(declare-fun b!50016 () Bool)

(declare-fun res!32838 () Bool)

(assert (=> b!50016 (=> (not res!32838) (not e!29279))))

(declare-fun rulesProduceEachTokenIndividually!27 (LexerInterface!89 List!936 BalanceConc!402) Bool)

(assert (=> b!50016 (= res!32838 (rulesProduceEachTokenIndividually!27 thiss!11059 rules!1069 v!6227))))

(declare-fun b!50017 () Bool)

(assert (=> b!50017 (= e!29278 e!29279)))

(declare-fun res!32833 () Bool)

(assert (=> b!50017 (=> (not res!32833) (not e!29279))))

(assert (=> b!50017 (= res!32833 (<= from!821 lt!8096))))

(declare-fun size!894 (BalanceConc!402) Int)

(assert (=> b!50017 (= lt!8096 (size!894 v!6227))))

(declare-fun b!50018 () Bool)

(declare-fun res!32836 () Bool)

(assert (=> b!50018 (=> (not res!32836) (not e!29279))))

(declare-fun rulesInvariant!83 (LexerInterface!89 List!936) Bool)

(assert (=> b!50018 (= res!32836 (rulesInvariant!83 thiss!11059 rules!1069))))

(declare-fun b!50019 () Bool)

(declare-fun res!32840 () Bool)

(assert (=> b!50019 (=> res!32840 e!29281)))

(assert (=> b!50019 (= res!32840 (not (contains!60 v!6227 (apply!44 v!6227 (+ 1 from!821)))))))

(declare-fun b!50020 () Bool)

(assert (=> b!50020 (= e!29281 (and (<= 0 (+ 1 from!821)) (< (+ 1 from!821) lt!8096)))))

(declare-fun tp!33258 () Bool)

(declare-fun b!50021 () Bool)

(declare-fun inv!1238 (String!1327) Bool)

(declare-fun inv!1244 (TokenValueInjection!198) Bool)

(assert (=> b!50021 (= e!29275 (and tp!33258 (inv!1238 (tag!375 (h!6327 rules!1069))) (inv!1244 (transformation!197 (h!6327 rules!1069))) e!29280))))

(declare-fun b!50022 () Bool)

(declare-fun res!32839 () Bool)

(assert (=> b!50022 (=> res!32839 e!29281)))

(declare-fun contains!61 (List!937 Token!158) Bool)

(assert (=> b!50022 (= res!32839 (not (contains!61 lt!8092 lt!8091)))))

(assert (= (and start!3610 res!32837) b!50017))

(assert (= (and b!50017 res!32833) b!50011))

(assert (= (and b!50011 res!32832) b!50018))

(assert (= (and b!50018 res!32836) b!50016))

(assert (= (and b!50016 res!32838) b!50015))

(assert (= (and b!50015 res!32835) b!50012))

(assert (= (and b!50012 (not res!32834)) b!50022))

(assert (= (and b!50022 (not res!32839)) b!50019))

(assert (= (and b!50019 (not res!32840)) b!50020))

(assert (= start!3610 b!50013))

(assert (= b!50021 b!50010))

(assert (= b!50014 b!50021))

(assert (= (and start!3610 ((_ is Cons!930) rules!1069)) b!50014))

(declare-fun m!23924 () Bool)

(assert (=> b!50022 m!23924))

(declare-fun m!23926 () Bool)

(assert (=> b!50012 m!23926))

(declare-fun m!23928 () Bool)

(assert (=> b!50012 m!23928))

(declare-fun m!23930 () Bool)

(assert (=> b!50012 m!23930))

(declare-fun m!23932 () Bool)

(assert (=> b!50012 m!23932))

(declare-fun m!23934 () Bool)

(assert (=> b!50012 m!23934))

(declare-fun m!23936 () Bool)

(assert (=> b!50012 m!23936))

(declare-fun m!23938 () Bool)

(assert (=> b!50012 m!23938))

(declare-fun m!23940 () Bool)

(assert (=> b!50012 m!23940))

(declare-fun m!23942 () Bool)

(assert (=> b!50012 m!23942))

(declare-fun m!23944 () Bool)

(assert (=> b!50012 m!23944))

(declare-fun m!23946 () Bool)

(assert (=> b!50012 m!23946))

(declare-fun m!23948 () Bool)

(assert (=> b!50012 m!23948))

(declare-fun m!23950 () Bool)

(assert (=> b!50012 m!23950))

(declare-fun m!23952 () Bool)

(assert (=> b!50012 m!23952))

(declare-fun m!23954 () Bool)

(assert (=> b!50012 m!23954))

(declare-fun m!23956 () Bool)

(assert (=> b!50012 m!23956))

(declare-fun m!23958 () Bool)

(assert (=> b!50011 m!23958))

(declare-fun m!23960 () Bool)

(assert (=> b!50017 m!23960))

(declare-fun m!23962 () Bool)

(assert (=> b!50021 m!23962))

(declare-fun m!23964 () Bool)

(assert (=> b!50021 m!23964))

(declare-fun m!23966 () Bool)

(assert (=> b!50019 m!23966))

(assert (=> b!50019 m!23966))

(declare-fun m!23968 () Bool)

(assert (=> b!50019 m!23968))

(declare-fun m!23970 () Bool)

(assert (=> b!50016 m!23970))

(declare-fun m!23972 () Bool)

(assert (=> start!3610 m!23972))

(declare-fun m!23974 () Bool)

(assert (=> b!50013 m!23974))

(declare-fun m!23976 () Bool)

(assert (=> b!50018 m!23976))

(check-sat (not b!50012) (not b!50011) b_and!1545 (not b!50022) (not b_next!1503) (not b!50014) (not b!50017) (not b!50016) (not b!50018) (not b!50021) (not b_next!1501) (not b!50013) (not b!50019) b_and!1543 (not start!3610))
(check-sat b_and!1545 b_and!1543 (not b_next!1501) (not b_next!1503))
