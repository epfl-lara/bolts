; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3594 () Bool)

(assert start!3594)

(declare-fun b!49744 () Bool)

(declare-fun b_free!1469 () Bool)

(declare-fun b_next!1469 () Bool)

(assert (=> b!49744 (= b_free!1469 (not b_next!1469))))

(declare-fun tp!33139 () Bool)

(declare-fun b_and!1511 () Bool)

(assert (=> b!49744 (= tp!33139 b_and!1511)))

(declare-fun b_free!1471 () Bool)

(declare-fun b_next!1471 () Bool)

(assert (=> b!49744 (= b_free!1471 (not b_next!1471))))

(declare-fun tp!33140 () Bool)

(declare-fun b_and!1513 () Bool)

(assert (=> b!49744 (= tp!33140 b_and!1513)))

(declare-fun b!49736 () Bool)

(declare-fun res!32658 () Bool)

(declare-fun e!29089 () Bool)

(assert (=> b!49736 (=> (not res!32658) (not e!29089))))

(declare-datatypes ((List!902 0))(
  ( (Nil!896) (Cons!896 (h!6293 (_ BitVec 16)) (t!17105 List!902)) )
))
(declare-datatypes ((TokenValue!179 0))(
  ( (FloatLiteralValue!358 (text!1698 List!902)) (TokenValueExt!178 (__x!1453 Int)) (Broken!895 (value!8258 List!902)) (Object!184) (End!179) (Def!179) (Underscore!179) (Match!179) (Else!179) (Error!179) (Case!179) (If!179) (Extends!179) (Abstract!179) (Class!179) (Val!179) (DelimiterValue!358 (del!239 List!902)) (KeywordValue!185 (value!8259 List!902)) (CommentValue!358 (value!8260 List!902)) (WhitespaceValue!358 (value!8261 List!902)) (IndentationValue!179 (value!8262 List!902)) (String!1286) (Int32!179) (Broken!896 (value!8263 List!902)) (Boolean!180) (Unit!487) (OperatorValue!182 (op!239 List!902)) (IdentifierValue!358 (value!8264 List!902)) (IdentifierValue!359 (value!8265 List!902)) (WhitespaceValue!359 (value!8266 List!902)) (True!358) (False!358) (Broken!897 (value!8267 List!902)) (Broken!898 (value!8268 List!902)) (True!359) (RightBrace!179) (RightBracket!179) (Colon!179) (Null!179) (Comma!179) (LeftBracket!179) (False!359) (LeftBrace!179) (ImaginaryLiteralValue!179 (text!1699 List!902)) (StringLiteralValue!537 (value!8269 List!902)) (EOFValue!179 (value!8270 List!902)) (IdentValue!179 (value!8271 List!902)) (DelimiterValue!359 (value!8272 List!902)) (DedentValue!179 (value!8273 List!902)) (NewLineValue!179 (value!8274 List!902)) (IntegerValue!537 (value!8275 (_ BitVec 32)) (text!1700 List!902)) (IntegerValue!538 (value!8276 Int) (text!1701 List!902)) (Times!179) (Or!179) (Equal!179) (Minus!179) (Broken!899 (value!8277 List!902)) (And!179) (Div!179) (LessEqual!179) (Mod!179) (Concat!436) (Not!179) (Plus!179) (SpaceValue!179 (value!8278 List!902)) (IntegerValue!539 (value!8279 Int) (text!1702 List!902)) (StringLiteralValue!538 (text!1703 List!902)) (FloatLiteralValue!359 (text!1704 List!902)) (BytesLiteralValue!179 (value!8280 List!902)) (CommentValue!359 (value!8281 List!902)) (StringLiteralValue!539 (value!8282 List!902)) (ErrorTokenValue!179 (msg!240 List!902)) )
))
(declare-datatypes ((C!1436 0))(
  ( (C!1437 (val!325 Int)) )
))
(declare-datatypes ((List!903 0))(
  ( (Nil!897) (Cons!897 (h!6294 C!1436) (t!17106 List!903)) )
))
(declare-datatypes ((IArray!365 0))(
  ( (IArray!366 (innerList!240 List!903)) )
))
(declare-datatypes ((Conc!182 0))(
  ( (Node!182 (left!689 Conc!182) (right!1019 Conc!182) (csize!594 Int) (cheight!393 Int)) (Leaf!412 (xs!2761 IArray!365) (csize!595 Int)) (Empty!182) )
))
(declare-datatypes ((BalanceConc!368 0))(
  ( (BalanceConc!369 (c!16555 Conc!182)) )
))
(declare-datatypes ((Regex!257 0))(
  ( (ElementMatch!257 (c!16556 C!1436)) (Concat!437 (regOne!1026 Regex!257) (regTwo!1026 Regex!257)) (EmptyExpr!257) (Star!257 (reg!586 Regex!257)) (EmptyLang!257) (Union!257 (regOne!1027 Regex!257) (regTwo!1027 Regex!257)) )
))
(declare-datatypes ((String!1287 0))(
  ( (String!1288 (value!8283 String)) )
))
(declare-datatypes ((TokenValueInjection!182 0))(
  ( (TokenValueInjection!183 (toValue!668 Int) (toChars!527 Int)) )
))
(declare-datatypes ((Rule!178 0))(
  ( (Rule!179 (regex!189 Regex!257) (tag!367 String!1287) (isSeparator!189 Bool) (transformation!189 TokenValueInjection!182)) )
))
(declare-datatypes ((List!904 0))(
  ( (Nil!898) (Cons!898 (h!6295 Rule!178) (t!17107 List!904)) )
))
(declare-fun rules!1069 () List!904)

(declare-fun isEmpty!175 (List!904) Bool)

(assert (=> b!49736 (= res!32658 (not (isEmpty!175 rules!1069)))))

(declare-fun b!49737 () Bool)

(declare-fun e!29091 () Bool)

(assert (=> b!49737 (= e!29089 (not e!29091))))

(declare-fun res!32657 () Bool)

(assert (=> b!49737 (=> res!32657 e!29091)))

(declare-fun from!821 () Int)

(assert (=> b!49737 (= res!32657 (< (+ 1 from!821) 0))))

(declare-datatypes ((Token!142 0))(
  ( (Token!143 (value!8284 TokenValue!179) (rule!664 Rule!178) (size!876 Int) (originalCharacters!242 List!903)) )
))
(declare-datatypes ((List!905 0))(
  ( (Nil!899) (Cons!899 (h!6296 Token!142) (t!17108 List!905)) )
))
(declare-fun lt!7889 () List!905)

(declare-fun lt!7888 () List!905)

(declare-fun tail!31 (List!905) List!905)

(assert (=> b!49737 (= (tail!31 lt!7889) lt!7888)))

(declare-datatypes ((Unit!488 0))(
  ( (Unit!489) )
))
(declare-fun lt!7890 () Unit!488)

(declare-fun lt!7892 () List!905)

(declare-fun lemmaDropTail!2 (List!905 Int) Unit!488)

(assert (=> b!49737 (= lt!7890 (lemmaDropTail!2 lt!7892 from!821))))

(declare-fun head!346 (List!905) Token!142)

(declare-fun apply!31 (List!905 Int) Token!142)

(assert (=> b!49737 (= (head!346 lt!7888) (apply!31 lt!7892 (+ 1 from!821)))))

(declare-fun drop!6 (List!905 Int) List!905)

(assert (=> b!49737 (= lt!7888 (drop!6 lt!7892 (+ 1 from!821)))))

(declare-fun lt!7886 () Unit!488)

(declare-fun lemmaDropApply!6 (List!905 Int) Unit!488)

(assert (=> b!49737 (= lt!7886 (lemmaDropApply!6 lt!7892 (+ 1 from!821)))))

(assert (=> b!49737 (= (head!346 lt!7889) (apply!31 lt!7892 from!821))))

(assert (=> b!49737 (= lt!7889 (drop!6 lt!7892 from!821))))

(declare-fun lt!7885 () Unit!488)

(assert (=> b!49737 (= lt!7885 (lemmaDropApply!6 lt!7892 from!821))))

(declare-datatypes ((IArray!367 0))(
  ( (IArray!368 (innerList!241 List!905)) )
))
(declare-datatypes ((Conc!183 0))(
  ( (Node!183 (left!690 Conc!183) (right!1020 Conc!183) (csize!596 Int) (cheight!394 Int)) (Leaf!413 (xs!2762 IArray!367) (csize!597 Int)) (Empty!183) )
))
(declare-datatypes ((BalanceConc!370 0))(
  ( (BalanceConc!371 (c!16557 Conc!183)) )
))
(declare-fun v!6227 () BalanceConc!370)

(declare-fun list!230 (BalanceConc!370) List!905)

(assert (=> b!49737 (= lt!7892 (list!230 v!6227))))

(declare-fun b!49738 () Bool)

(declare-fun e!29088 () Bool)

(declare-fun tp!33136 () Bool)

(declare-fun inv!1206 (Conc!183) Bool)

(assert (=> b!49738 (= e!29088 (and (inv!1206 (c!16557 v!6227)) tp!33136))))

(declare-fun b!49739 () Bool)

(assert (=> b!49739 (= e!29091 true)))

(declare-fun lt!7891 () Int)

(declare-fun size!877 (List!905) Int)

(assert (=> b!49739 (= lt!7891 (size!877 lt!7892))))

(declare-fun b!49740 () Bool)

(declare-fun res!32654 () Bool)

(assert (=> b!49740 (=> (not res!32654) (not e!29089))))

(declare-datatypes ((LexerInterface!81 0))(
  ( (LexerInterfaceExt!78 (__x!1454 Int)) (Lexer!79) )
))
(declare-fun thiss!11059 () LexerInterface!81)

(declare-fun rulesInvariant!75 (LexerInterface!81 List!904) Bool)

(assert (=> b!49740 (= res!32654 (rulesInvariant!75 thiss!11059 rules!1069))))

(declare-fun b!49742 () Bool)

(declare-fun e!29095 () Bool)

(assert (=> b!49742 (= e!29095 e!29089)))

(declare-fun res!32656 () Bool)

(assert (=> b!49742 (=> (not res!32656) (not e!29089))))

(declare-fun lt!7887 () Int)

(assert (=> b!49742 (= res!32656 (<= from!821 lt!7887))))

(declare-fun size!878 (BalanceConc!370) Int)

(assert (=> b!49742 (= lt!7887 (size!878 v!6227))))

(declare-fun b!49743 () Bool)

(declare-fun res!32659 () Bool)

(assert (=> b!49743 (=> (not res!32659) (not e!29089))))

(assert (=> b!49743 (= res!32659 (< from!821 (- lt!7887 1)))))

(declare-fun e!29092 () Bool)

(assert (=> b!49744 (= e!29092 (and tp!33139 tp!33140))))

(declare-fun b!49741 () Bool)

(declare-fun e!29094 () Bool)

(declare-fun e!29093 () Bool)

(declare-fun tp!33137 () Bool)

(assert (=> b!49741 (= e!29094 (and e!29093 tp!33137))))

(declare-fun res!32655 () Bool)

(assert (=> start!3594 (=> (not res!32655) (not e!29095))))

(get-info :version)

(assert (=> start!3594 (= res!32655 (and ((_ is Lexer!79) thiss!11059) (>= from!821 0)))))

(assert (=> start!3594 e!29095))

(assert (=> start!3594 true))

(declare-fun inv!1207 (BalanceConc!370) Bool)

(assert (=> start!3594 (and (inv!1207 v!6227) e!29088)))

(assert (=> start!3594 e!29094))

(declare-fun b!49745 () Bool)

(declare-fun tp!33138 () Bool)

(declare-fun inv!1202 (String!1287) Bool)

(declare-fun inv!1208 (TokenValueInjection!182) Bool)

(assert (=> b!49745 (= e!29093 (and tp!33138 (inv!1202 (tag!367 (h!6295 rules!1069))) (inv!1208 (transformation!189 (h!6295 rules!1069))) e!29092))))

(declare-fun b!49746 () Bool)

(declare-fun res!32660 () Bool)

(assert (=> b!49746 (=> (not res!32660) (not e!29089))))

(declare-fun rulesProduceEachTokenIndividually!19 (LexerInterface!81 List!904 BalanceConc!370) Bool)

(assert (=> b!49746 (= res!32660 (rulesProduceEachTokenIndividually!19 thiss!11059 rules!1069 v!6227))))

(assert (= (and start!3594 res!32655) b!49742))

(assert (= (and b!49742 res!32656) b!49736))

(assert (= (and b!49736 res!32658) b!49740))

(assert (= (and b!49740 res!32654) b!49746))

(assert (= (and b!49746 res!32660) b!49743))

(assert (= (and b!49743 res!32659) b!49737))

(assert (= (and b!49737 (not res!32657)) b!49739))

(assert (= start!3594 b!49738))

(assert (= b!49745 b!49744))

(assert (= b!49741 b!49745))

(assert (= (and start!3594 ((_ is Cons!898) rules!1069)) b!49741))

(declare-fun m!23546 () Bool)

(assert (=> b!49737 m!23546))

(declare-fun m!23548 () Bool)

(assert (=> b!49737 m!23548))

(declare-fun m!23550 () Bool)

(assert (=> b!49737 m!23550))

(declare-fun m!23552 () Bool)

(assert (=> b!49737 m!23552))

(declare-fun m!23554 () Bool)

(assert (=> b!49737 m!23554))

(declare-fun m!23556 () Bool)

(assert (=> b!49737 m!23556))

(declare-fun m!23558 () Bool)

(assert (=> b!49737 m!23558))

(declare-fun m!23560 () Bool)

(assert (=> b!49737 m!23560))

(declare-fun m!23562 () Bool)

(assert (=> b!49737 m!23562))

(declare-fun m!23564 () Bool)

(assert (=> b!49737 m!23564))

(declare-fun m!23566 () Bool)

(assert (=> b!49737 m!23566))

(declare-fun m!23568 () Bool)

(assert (=> b!49746 m!23568))

(declare-fun m!23570 () Bool)

(assert (=> b!49742 m!23570))

(declare-fun m!23572 () Bool)

(assert (=> b!49739 m!23572))

(declare-fun m!23574 () Bool)

(assert (=> b!49740 m!23574))

(declare-fun m!23576 () Bool)

(assert (=> b!49736 m!23576))

(declare-fun m!23578 () Bool)

(assert (=> b!49738 m!23578))

(declare-fun m!23580 () Bool)

(assert (=> start!3594 m!23580))

(declare-fun m!23582 () Bool)

(assert (=> b!49745 m!23582))

(declare-fun m!23584 () Bool)

(assert (=> b!49745 m!23584))

(check-sat (not b!49746) b_and!1511 (not b_next!1469) (not b!49737) (not b!49739) (not start!3594) (not b!49736) b_and!1513 (not b_next!1471) (not b!49741) (not b!49742) (not b!49745) (not b!49738) (not b!49740))
(check-sat b_and!1513 b_and!1511 (not b_next!1469) (not b_next!1471))
