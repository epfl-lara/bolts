; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3598 () Bool)

(assert start!3598)

(declare-fun b!49797 () Bool)

(declare-fun b_free!1477 () Bool)

(declare-fun b_next!1477 () Bool)

(assert (=> b!49797 (= b_free!1477 (not b_next!1477))))

(declare-fun tp!33170 () Bool)

(declare-fun b_and!1519 () Bool)

(assert (=> b!49797 (= tp!33170 b_and!1519)))

(declare-fun b_free!1479 () Bool)

(declare-fun b_next!1479 () Bool)

(assert (=> b!49797 (= b_free!1479 (not b_next!1479))))

(declare-fun tp!33169 () Bool)

(declare-fun b_and!1521 () Bool)

(assert (=> b!49797 (= tp!33169 b_and!1521)))

(declare-fun e!29137 () Bool)

(assert (=> b!49797 (= e!29137 (and tp!33170 tp!33169))))

(declare-fun b!49798 () Bool)

(declare-fun res!32694 () Bool)

(declare-fun e!29132 () Bool)

(assert (=> b!49798 (=> (not res!32694) (not e!29132))))

(declare-fun from!821 () Int)

(declare-fun lt!7936 () Int)

(assert (=> b!49798 (= res!32694 (< from!821 (- lt!7936 1)))))

(declare-fun res!32693 () Bool)

(declare-fun e!29131 () Bool)

(assert (=> start!3598 (=> (not res!32693) (not e!29131))))

(declare-datatypes ((LexerInterface!83 0))(
  ( (LexerInterfaceExt!80 (__x!1457 Int)) (Lexer!81) )
))
(declare-fun thiss!11059 () LexerInterface!83)

(get-info :version)

(assert (=> start!3598 (= res!32693 (and ((_ is Lexer!81) thiss!11059) (>= from!821 0)))))

(assert (=> start!3598 e!29131))

(assert (=> start!3598 true))

(declare-datatypes ((List!910 0))(
  ( (Nil!904) (Cons!904 (h!6301 (_ BitVec 16)) (t!17113 List!910)) )
))
(declare-datatypes ((TokenValue!181 0))(
  ( (FloatLiteralValue!362 (text!1712 List!910)) (TokenValueExt!180 (__x!1458 Int)) (Broken!905 (value!8315 List!910)) (Object!186) (End!181) (Def!181) (Underscore!181) (Match!181) (Else!181) (Error!181) (Case!181) (If!181) (Extends!181) (Abstract!181) (Class!181) (Val!181) (DelimiterValue!362 (del!241 List!910)) (KeywordValue!187 (value!8316 List!910)) (CommentValue!362 (value!8317 List!910)) (WhitespaceValue!362 (value!8318 List!910)) (IndentationValue!181 (value!8319 List!910)) (String!1296) (Int32!181) (Broken!906 (value!8320 List!910)) (Boolean!182) (Unit!493) (OperatorValue!184 (op!241 List!910)) (IdentifierValue!362 (value!8321 List!910)) (IdentifierValue!363 (value!8322 List!910)) (WhitespaceValue!363 (value!8323 List!910)) (True!362) (False!362) (Broken!907 (value!8324 List!910)) (Broken!908 (value!8325 List!910)) (True!363) (RightBrace!181) (RightBracket!181) (Colon!181) (Null!181) (Comma!181) (LeftBracket!181) (False!363) (LeftBrace!181) (ImaginaryLiteralValue!181 (text!1713 List!910)) (StringLiteralValue!543 (value!8326 List!910)) (EOFValue!181 (value!8327 List!910)) (IdentValue!181 (value!8328 List!910)) (DelimiterValue!363 (value!8329 List!910)) (DedentValue!181 (value!8330 List!910)) (NewLineValue!181 (value!8331 List!910)) (IntegerValue!543 (value!8332 (_ BitVec 32)) (text!1714 List!910)) (IntegerValue!544 (value!8333 Int) (text!1715 List!910)) (Times!181) (Or!181) (Equal!181) (Minus!181) (Broken!909 (value!8334 List!910)) (And!181) (Div!181) (LessEqual!181) (Mod!181) (Concat!440) (Not!181) (Plus!181) (SpaceValue!181 (value!8335 List!910)) (IntegerValue!545 (value!8336 Int) (text!1716 List!910)) (StringLiteralValue!544 (text!1717 List!910)) (FloatLiteralValue!363 (text!1718 List!910)) (BytesLiteralValue!181 (value!8337 List!910)) (CommentValue!363 (value!8338 List!910)) (StringLiteralValue!545 (value!8339 List!910)) (ErrorTokenValue!181 (msg!242 List!910)) )
))
(declare-datatypes ((C!1440 0))(
  ( (C!1441 (val!327 Int)) )
))
(declare-datatypes ((List!911 0))(
  ( (Nil!905) (Cons!905 (h!6302 C!1440) (t!17114 List!911)) )
))
(declare-datatypes ((IArray!373 0))(
  ( (IArray!374 (innerList!244 List!911)) )
))
(declare-datatypes ((Conc!186 0))(
  ( (Node!186 (left!694 Conc!186) (right!1024 Conc!186) (csize!602 Int) (cheight!397 Int)) (Leaf!417 (xs!2765 IArray!373) (csize!603 Int)) (Empty!186) )
))
(declare-datatypes ((Regex!259 0))(
  ( (ElementMatch!259 (c!16561 C!1440)) (Concat!441 (regOne!1030 Regex!259) (regTwo!1030 Regex!259)) (EmptyExpr!259) (Star!259 (reg!588 Regex!259)) (EmptyLang!259) (Union!259 (regOne!1031 Regex!259) (regTwo!1031 Regex!259)) )
))
(declare-datatypes ((String!1297 0))(
  ( (String!1298 (value!8340 String)) )
))
(declare-datatypes ((BalanceConc!376 0))(
  ( (BalanceConc!377 (c!16562 Conc!186)) )
))
(declare-datatypes ((TokenValueInjection!186 0))(
  ( (TokenValueInjection!187 (toValue!670 Int) (toChars!529 Int)) )
))
(declare-datatypes ((Rule!182 0))(
  ( (Rule!183 (regex!191 Regex!259) (tag!369 String!1297) (isSeparator!191 Bool) (transformation!191 TokenValueInjection!186)) )
))
(declare-datatypes ((Token!146 0))(
  ( (Token!147 (value!8341 TokenValue!181) (rule!666 Rule!182) (size!881 Int) (originalCharacters!244 List!911)) )
))
(declare-datatypes ((List!912 0))(
  ( (Nil!906) (Cons!906 (h!6303 Token!146) (t!17115 List!912)) )
))
(declare-datatypes ((IArray!375 0))(
  ( (IArray!376 (innerList!245 List!912)) )
))
(declare-datatypes ((Conc!187 0))(
  ( (Node!187 (left!695 Conc!187) (right!1025 Conc!187) (csize!604 Int) (cheight!398 Int)) (Leaf!418 (xs!2766 IArray!375) (csize!605 Int)) (Empty!187) )
))
(declare-datatypes ((BalanceConc!378 0))(
  ( (BalanceConc!379 (c!16563 Conc!187)) )
))
(declare-fun v!6227 () BalanceConc!378)

(declare-fun e!29136 () Bool)

(declare-fun inv!1215 (BalanceConc!378) Bool)

(assert (=> start!3598 (and (inv!1215 v!6227) e!29136)))

(declare-fun e!29134 () Bool)

(assert (=> start!3598 e!29134))

(declare-fun b!49799 () Bool)

(declare-fun tp!33167 () Bool)

(declare-fun e!29135 () Bool)

(declare-datatypes ((List!913 0))(
  ( (Nil!907) (Cons!907 (h!6304 Rule!182) (t!17116 List!913)) )
))
(declare-fun rules!1069 () List!913)

(declare-fun inv!1211 (String!1297) Bool)

(declare-fun inv!1216 (TokenValueInjection!186) Bool)

(assert (=> b!49799 (= e!29135 (and tp!33167 (inv!1211 (tag!369 (h!6304 rules!1069))) (inv!1216 (transformation!191 (h!6304 rules!1069))) e!29137))))

(declare-fun b!49800 () Bool)

(assert (=> b!49800 (= e!29131 e!29132)))

(declare-fun res!32692 () Bool)

(assert (=> b!49800 (=> (not res!32692) (not e!29132))))

(assert (=> b!49800 (= res!32692 (<= from!821 lt!7936))))

(declare-fun size!882 (BalanceConc!378) Int)

(assert (=> b!49800 (= lt!7936 (size!882 v!6227))))

(declare-fun b!49801 () Bool)

(declare-fun tp!33166 () Bool)

(declare-fun inv!1217 (Conc!187) Bool)

(assert (=> b!49801 (= e!29136 (and (inv!1217 (c!16563 v!6227)) tp!33166))))

(declare-fun b!49802 () Bool)

(assert (=> b!49802 (= e!29132 (not (and (<= 0 from!821) (< from!821 lt!7936))))))

(declare-fun lt!7933 () List!912)

(declare-fun lt!7934 () List!912)

(declare-fun tail!33 (List!912) List!912)

(declare-fun drop!8 (List!912 Int) List!912)

(assert (=> b!49802 (= (tail!33 lt!7933) (drop!8 lt!7934 (+ 2 from!821)))))

(declare-datatypes ((Unit!494 0))(
  ( (Unit!495) )
))
(declare-fun lt!7940 () Unit!494)

(declare-fun lemmaDropTail!4 (List!912 Int) Unit!494)

(assert (=> b!49802 (= lt!7940 (lemmaDropTail!4 lt!7934 (+ 1 from!821)))))

(declare-fun lt!7937 () List!912)

(assert (=> b!49802 (= (tail!33 lt!7937) lt!7933)))

(declare-fun lt!7939 () Unit!494)

(assert (=> b!49802 (= lt!7939 (lemmaDropTail!4 lt!7934 from!821))))

(declare-fun head!348 (List!912) Token!146)

(declare-fun apply!33 (List!912 Int) Token!146)

(assert (=> b!49802 (= (head!348 lt!7933) (apply!33 lt!7934 (+ 1 from!821)))))

(assert (=> b!49802 (= lt!7933 (drop!8 lt!7934 (+ 1 from!821)))))

(declare-fun lt!7938 () Unit!494)

(declare-fun lemmaDropApply!8 (List!912 Int) Unit!494)

(assert (=> b!49802 (= lt!7938 (lemmaDropApply!8 lt!7934 (+ 1 from!821)))))

(assert (=> b!49802 (= (head!348 lt!7937) (apply!33 lt!7934 from!821))))

(assert (=> b!49802 (= lt!7937 (drop!8 lt!7934 from!821))))

(declare-fun lt!7935 () Unit!494)

(assert (=> b!49802 (= lt!7935 (lemmaDropApply!8 lt!7934 from!821))))

(declare-fun list!232 (BalanceConc!378) List!912)

(assert (=> b!49802 (= lt!7934 (list!232 v!6227))))

(declare-fun b!49803 () Bool)

(declare-fun tp!33168 () Bool)

(assert (=> b!49803 (= e!29134 (and e!29135 tp!33168))))

(declare-fun b!49804 () Bool)

(declare-fun res!32691 () Bool)

(assert (=> b!49804 (=> (not res!32691) (not e!29132))))

(declare-fun rulesProduceEachTokenIndividually!21 (LexerInterface!83 List!913 BalanceConc!378) Bool)

(assert (=> b!49804 (= res!32691 (rulesProduceEachTokenIndividually!21 thiss!11059 rules!1069 v!6227))))

(declare-fun b!49805 () Bool)

(declare-fun res!32695 () Bool)

(assert (=> b!49805 (=> (not res!32695) (not e!29132))))

(declare-fun rulesInvariant!77 (LexerInterface!83 List!913) Bool)

(assert (=> b!49805 (= res!32695 (rulesInvariant!77 thiss!11059 rules!1069))))

(declare-fun b!49806 () Bool)

(declare-fun res!32696 () Bool)

(assert (=> b!49806 (=> (not res!32696) (not e!29132))))

(declare-fun isEmpty!177 (List!913) Bool)

(assert (=> b!49806 (= res!32696 (not (isEmpty!177 rules!1069)))))

(assert (= (and start!3598 res!32693) b!49800))

(assert (= (and b!49800 res!32692) b!49806))

(assert (= (and b!49806 res!32696) b!49805))

(assert (= (and b!49805 res!32695) b!49804))

(assert (= (and b!49804 res!32691) b!49798))

(assert (= (and b!49798 res!32694) b!49802))

(assert (= start!3598 b!49801))

(assert (= b!49799 b!49797))

(assert (= b!49803 b!49799))

(assert (= (and start!3598 ((_ is Cons!907) rules!1069)) b!49803))

(declare-fun m!23630 () Bool)

(assert (=> b!49805 m!23630))

(declare-fun m!23632 () Bool)

(assert (=> b!49799 m!23632))

(declare-fun m!23634 () Bool)

(assert (=> b!49799 m!23634))

(declare-fun m!23636 () Bool)

(assert (=> b!49804 m!23636))

(declare-fun m!23638 () Bool)

(assert (=> b!49800 m!23638))

(declare-fun m!23640 () Bool)

(assert (=> b!49802 m!23640))

(declare-fun m!23642 () Bool)

(assert (=> b!49802 m!23642))

(declare-fun m!23644 () Bool)

(assert (=> b!49802 m!23644))

(declare-fun m!23646 () Bool)

(assert (=> b!49802 m!23646))

(declare-fun m!23648 () Bool)

(assert (=> b!49802 m!23648))

(declare-fun m!23650 () Bool)

(assert (=> b!49802 m!23650))

(declare-fun m!23652 () Bool)

(assert (=> b!49802 m!23652))

(declare-fun m!23654 () Bool)

(assert (=> b!49802 m!23654))

(declare-fun m!23656 () Bool)

(assert (=> b!49802 m!23656))

(declare-fun m!23658 () Bool)

(assert (=> b!49802 m!23658))

(declare-fun m!23660 () Bool)

(assert (=> b!49802 m!23660))

(declare-fun m!23662 () Bool)

(assert (=> b!49802 m!23662))

(declare-fun m!23664 () Bool)

(assert (=> b!49802 m!23664))

(declare-fun m!23666 () Bool)

(assert (=> b!49802 m!23666))

(declare-fun m!23668 () Bool)

(assert (=> start!3598 m!23668))

(declare-fun m!23670 () Bool)

(assert (=> b!49806 m!23670))

(declare-fun m!23672 () Bool)

(assert (=> b!49801 m!23672))

(check-sat (not b!49801) (not b!49806) (not b!49804) (not b!49805) (not b!49803) (not b_next!1479) (not start!3598) (not b_next!1477) b_and!1519 (not b!49800) b_and!1521 (not b!49799) (not b!49802))
(check-sat b_and!1521 b_and!1519 (not b_next!1477) (not b_next!1479))
