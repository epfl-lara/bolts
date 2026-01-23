; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17482 () Bool)

(assert start!17482)

(declare-fun b!162182 () Bool)

(declare-fun b_free!6161 () Bool)

(declare-fun b_next!6161 () Bool)

(assert (=> b!162182 (= b_free!6161 (not b_next!6161))))

(declare-fun tp!82206 () Bool)

(declare-fun b_and!10145 () Bool)

(assert (=> b!162182 (= tp!82206 b_and!10145)))

(declare-fun b_free!6163 () Bool)

(declare-fun b_next!6163 () Bool)

(assert (=> b!162182 (= b_free!6163 (not b_next!6163))))

(declare-fun tp!82205 () Bool)

(declare-fun b_and!10147 () Bool)

(assert (=> b!162182 (= tp!82205 b_and!10147)))

(declare-fun b!162185 () Bool)

(declare-fun b_free!6165 () Bool)

(declare-fun b_next!6165 () Bool)

(assert (=> b!162185 (= b_free!6165 (not b_next!6165))))

(declare-fun tp!82203 () Bool)

(declare-fun b_and!10149 () Bool)

(assert (=> b!162185 (= tp!82203 b_and!10149)))

(declare-fun b_free!6167 () Bool)

(declare-fun b_next!6167 () Bool)

(assert (=> b!162185 (= b_free!6167 (not b_next!6167))))

(declare-fun tp!82208 () Bool)

(declare-fun b_and!10151 () Bool)

(assert (=> b!162185 (= tp!82208 b_and!10151)))

(declare-fun b!162189 () Bool)

(declare-fun b_free!6169 () Bool)

(declare-fun b_next!6169 () Bool)

(assert (=> b!162189 (= b_free!6169 (not b_next!6169))))

(declare-fun tp!82207 () Bool)

(declare-fun b_and!10153 () Bool)

(assert (=> b!162189 (= tp!82207 b_and!10153)))

(declare-fun b_free!6171 () Bool)

(declare-fun b_next!6171 () Bool)

(assert (=> b!162189 (= b_free!6171 (not b_next!6171))))

(declare-fun tp!82209 () Bool)

(declare-fun b_and!10155 () Bool)

(assert (=> b!162189 (= tp!82209 b_and!10155)))

(declare-datatypes ((List!2805 0))(
  ( (Nil!2795) (Cons!2795 (h!8192 (_ BitVec 16)) (t!26071 List!2805)) )
))
(declare-datatypes ((TokenValue!517 0))(
  ( (FloatLiteralValue!1034 (text!4064 List!2805)) (TokenValueExt!516 (__x!2521 Int)) (Broken!2585 (value!18397 List!2805)) (Object!526) (End!517) (Def!517) (Underscore!517) (Match!517) (Else!517) (Error!517) (Case!517) (If!517) (Extends!517) (Abstract!517) (Class!517) (Val!517) (DelimiterValue!1034 (del!577 List!2805)) (KeywordValue!523 (value!18398 List!2805)) (CommentValue!1034 (value!18399 List!2805)) (WhitespaceValue!1034 (value!18400 List!2805)) (IndentationValue!517 (value!18401 List!2805)) (String!3664) (Int32!517) (Broken!2586 (value!18402 List!2805)) (Boolean!518) (Unit!2303) (OperatorValue!520 (op!577 List!2805)) (IdentifierValue!1034 (value!18403 List!2805)) (IdentifierValue!1035 (value!18404 List!2805)) (WhitespaceValue!1035 (value!18405 List!2805)) (True!1034) (False!1034) (Broken!2587 (value!18406 List!2805)) (Broken!2588 (value!18407 List!2805)) (True!1035) (RightBrace!517) (RightBracket!517) (Colon!517) (Null!517) (Comma!517) (LeftBracket!517) (False!1035) (LeftBrace!517) (ImaginaryLiteralValue!517 (text!4065 List!2805)) (StringLiteralValue!1551 (value!18408 List!2805)) (EOFValue!517 (value!18409 List!2805)) (IdentValue!517 (value!18410 List!2805)) (DelimiterValue!1035 (value!18411 List!2805)) (DedentValue!517 (value!18412 List!2805)) (NewLineValue!517 (value!18413 List!2805)) (IntegerValue!1551 (value!18414 (_ BitVec 32)) (text!4066 List!2805)) (IntegerValue!1552 (value!18415 Int) (text!4067 List!2805)) (Times!517) (Or!517) (Equal!517) (Minus!517) (Broken!2589 (value!18416 List!2805)) (And!517) (Div!517) (LessEqual!517) (Mod!517) (Concat!1236) (Not!517) (Plus!517) (SpaceValue!517 (value!18417 List!2805)) (IntegerValue!1553 (value!18418 Int) (text!4068 List!2805)) (StringLiteralValue!1552 (text!4069 List!2805)) (FloatLiteralValue!1035 (text!4070 List!2805)) (BytesLiteralValue!517 (value!18419 List!2805)) (CommentValue!1035 (value!18420 List!2805)) (StringLiteralValue!1553 (value!18421 List!2805)) (ErrorTokenValue!517 (msg!578 List!2805)) )
))
(declare-datatypes ((C!2360 0))(
  ( (C!2361 (val!1066 Int)) )
))
(declare-datatypes ((List!2806 0))(
  ( (Nil!2796) (Cons!2796 (h!8193 C!2360) (t!26072 List!2806)) )
))
(declare-datatypes ((IArray!1625 0))(
  ( (IArray!1626 (innerList!870 List!2806)) )
))
(declare-datatypes ((Conc!812 0))(
  ( (Node!812 (left!2106 Conc!812) (right!2436 Conc!812) (csize!1854 Int) (cheight!1023 Int)) (Leaf!1399 (xs!3407 IArray!1625) (csize!1855 Int)) (Empty!812) )
))
(declare-datatypes ((BalanceConc!1632 0))(
  ( (BalanceConc!1633 (c!32399 Conc!812)) )
))
(declare-datatypes ((TokenValueInjection!806 0))(
  ( (TokenValueInjection!807 (toValue!1150 Int) (toChars!1009 Int)) )
))
(declare-datatypes ((String!3665 0))(
  ( (String!3666 (value!18422 String)) )
))
(declare-datatypes ((Regex!719 0))(
  ( (ElementMatch!719 (c!32400 C!2360)) (Concat!1237 (regOne!1950 Regex!719) (regTwo!1950 Regex!719)) (EmptyExpr!719) (Star!719 (reg!1048 Regex!719)) (EmptyLang!719) (Union!719 (regOne!1951 Regex!719) (regTwo!1951 Regex!719)) )
))
(declare-datatypes ((Rule!790 0))(
  ( (Rule!791 (regex!495 Regex!719) (tag!673 String!3665) (isSeparator!495 Bool) (transformation!495 TokenValueInjection!806)) )
))
(declare-datatypes ((Token!734 0))(
  ( (Token!735 (value!18423 TokenValue!517) (rule!1002 Rule!790) (size!2341 Int) (originalCharacters!538 List!2806)) )
))
(declare-fun separatorToken!170 () Token!734)

(declare-fun tp!82197 () Bool)

(declare-fun e!97689 () Bool)

(declare-fun e!97695 () Bool)

(declare-fun b!162168 () Bool)

(declare-fun inv!3610 (String!3665) Bool)

(declare-fun inv!3613 (TokenValueInjection!806) Bool)

(assert (=> b!162168 (= e!97689 (and tp!82197 (inv!3610 (tag!673 (rule!1002 separatorToken!170))) (inv!3613 (transformation!495 (rule!1002 separatorToken!170))) e!97695))))

(declare-fun b!162169 () Bool)

(declare-fun res!73568 () Bool)

(declare-fun e!97684 () Bool)

(assert (=> b!162169 (=> (not res!73568) (not e!97684))))

(assert (=> b!162169 (= res!73568 (isSeparator!495 (rule!1002 separatorToken!170)))))

(declare-fun b!162170 () Bool)

(declare-fun res!73564 () Bool)

(assert (=> b!162170 (=> (not res!73564) (not e!97684))))

(declare-datatypes ((List!2807 0))(
  ( (Nil!2797) (Cons!2797 (h!8194 Token!734) (t!26073 List!2807)) )
))
(declare-fun tokens!465 () List!2807)

(declare-fun lambda!4436 () Int)

(declare-fun forall!521 (List!2807 Int) Bool)

(assert (=> b!162170 (= res!73564 (forall!521 tokens!465 lambda!4436))))

(declare-fun b!162171 () Bool)

(declare-fun e!97679 () Bool)

(assert (=> b!162171 (= e!97679 e!97684)))

(declare-fun res!73574 () Bool)

(assert (=> b!162171 (=> (not res!73574) (not e!97684))))

(declare-datatypes ((IArray!1627 0))(
  ( (IArray!1628 (innerList!871 List!2807)) )
))
(declare-datatypes ((Conc!813 0))(
  ( (Node!813 (left!2107 Conc!813) (right!2437 Conc!813) (csize!1856 Int) (cheight!1024 Int)) (Leaf!1400 (xs!3408 IArray!1627) (csize!1857 Int)) (Empty!813) )
))
(declare-datatypes ((BalanceConc!1634 0))(
  ( (BalanceConc!1635 (c!32401 Conc!813)) )
))
(declare-fun lt!49166 () BalanceConc!1634)

(declare-datatypes ((List!2808 0))(
  ( (Nil!2798) (Cons!2798 (h!8195 Rule!790) (t!26074 List!2808)) )
))
(declare-fun rules!1920 () List!2808)

(declare-datatypes ((LexerInterface!381 0))(
  ( (LexerInterfaceExt!378 (__x!2522 Int)) (Lexer!379) )
))
(declare-fun thiss!17480 () LexerInterface!381)

(declare-fun rulesProduceEachTokenIndividually!173 (LexerInterface!381 List!2808 BalanceConc!1634) Bool)

(assert (=> b!162171 (= res!73574 (rulesProduceEachTokenIndividually!173 thiss!17480 rules!1920 lt!49166))))

(declare-fun seqFromList!367 (List!2807) BalanceConc!1634)

(assert (=> b!162171 (= lt!49166 (seqFromList!367 tokens!465))))

(declare-fun b!162172 () Bool)

(declare-fun e!97682 () Bool)

(declare-fun e!97686 () Bool)

(declare-fun tp!82198 () Bool)

(assert (=> b!162172 (= e!97682 (and e!97686 tp!82198))))

(declare-fun b!162173 () Bool)

(declare-fun res!73572 () Bool)

(assert (=> b!162173 (=> (not res!73572) (not e!97684))))

(declare-fun sepAndNonSepRulesDisjointChars!84 (List!2808 List!2808) Bool)

(assert (=> b!162173 (= res!73572 (sepAndNonSepRulesDisjointChars!84 rules!1920 rules!1920))))

(declare-fun e!97696 () Bool)

(declare-fun b!162174 () Bool)

(declare-fun e!97699 () Bool)

(declare-fun tp!82201 () Bool)

(declare-fun inv!3614 (Token!734) Bool)

(assert (=> b!162174 (= e!97699 (and (inv!3614 (h!8194 tokens!465)) e!97696 tp!82201))))

(declare-fun b!162175 () Bool)

(declare-fun e!97685 () Bool)

(declare-fun e!97697 () Bool)

(assert (=> b!162175 (= e!97685 (not e!97697))))

(declare-fun res!73570 () Bool)

(assert (=> b!162175 (=> res!73570 e!97697)))

(declare-fun lt!49164 () List!2806)

(declare-fun list!1005 (BalanceConc!1632) List!2806)

(declare-fun printWithSeparatorTokenWhenNeededRec!64 (LexerInterface!381 List!2808 BalanceConc!1634 Token!734 Int) BalanceConc!1632)

(assert (=> b!162175 (= res!73570 (not (= lt!49164 (list!1005 (printWithSeparatorTokenWhenNeededRec!64 thiss!17480 rules!1920 (seqFromList!367 (t!26073 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!49162 () List!2806)

(declare-fun lt!49165 () List!2806)

(assert (=> b!162175 (= lt!49162 lt!49165)))

(declare-fun lt!49160 () List!2806)

(declare-fun lt!49161 () List!2806)

(declare-fun ++!624 (List!2806 List!2806) List!2806)

(assert (=> b!162175 (= lt!49165 (++!624 lt!49160 lt!49161))))

(declare-fun lt!49157 () List!2806)

(assert (=> b!162175 (= lt!49162 (++!624 (++!624 lt!49160 lt!49157) lt!49164))))

(declare-datatypes ((Unit!2304 0))(
  ( (Unit!2305) )
))
(declare-fun lt!49156 () Unit!2304)

(declare-fun lemmaConcatAssociativity!176 (List!2806 List!2806 List!2806) Unit!2304)

(assert (=> b!162175 (= lt!49156 (lemmaConcatAssociativity!176 lt!49160 lt!49157 lt!49164))))

(declare-fun charsOf!150 (Token!734) BalanceConc!1632)

(assert (=> b!162175 (= lt!49160 (list!1005 (charsOf!150 (h!8194 tokens!465))))))

(assert (=> b!162175 (= lt!49161 (++!624 lt!49157 lt!49164))))

(declare-fun printWithSeparatorTokenWhenNeededList!74 (LexerInterface!381 List!2808 List!2807 Token!734) List!2806)

(assert (=> b!162175 (= lt!49164 (printWithSeparatorTokenWhenNeededList!74 thiss!17480 rules!1920 (t!26073 tokens!465) separatorToken!170))))

(assert (=> b!162175 (= lt!49157 (list!1005 (charsOf!150 separatorToken!170)))))

(declare-fun b!162176 () Bool)

(declare-fun e!97694 () Bool)

(declare-fun tp!82204 () Bool)

(declare-fun inv!21 (TokenValue!517) Bool)

(assert (=> b!162176 (= e!97696 (and (inv!21 (value!18423 (h!8194 tokens!465))) e!97694 tp!82204))))

(declare-fun e!97680 () Bool)

(declare-fun b!162177 () Bool)

(declare-fun tp!82202 () Bool)

(assert (=> b!162177 (= e!97686 (and tp!82202 (inv!3610 (tag!673 (h!8195 rules!1920))) (inv!3613 (transformation!495 (h!8195 rules!1920))) e!97680))))

(declare-fun res!73569 () Bool)

(assert (=> start!17482 (=> (not res!73569) (not e!97679))))

(get-info :version)

(assert (=> start!17482 (= res!73569 ((_ is Lexer!379) thiss!17480))))

(assert (=> start!17482 e!97679))

(assert (=> start!17482 true))

(assert (=> start!17482 e!97682))

(declare-fun e!97698 () Bool)

(assert (=> start!17482 (and (inv!3614 separatorToken!170) e!97698)))

(assert (=> start!17482 e!97699))

(declare-fun b!162178 () Bool)

(declare-fun res!73573 () Bool)

(assert (=> b!162178 (=> (not res!73573) (not e!97679))))

(declare-fun rulesInvariant!347 (LexerInterface!381 List!2808) Bool)

(assert (=> b!162178 (= res!73573 (rulesInvariant!347 thiss!17480 rules!1920))))

(declare-fun b!162179 () Bool)

(declare-fun e!97692 () Bool)

(declare-fun tp!82199 () Bool)

(assert (=> b!162179 (= e!97694 (and tp!82199 (inv!3610 (tag!673 (rule!1002 (h!8194 tokens!465)))) (inv!3613 (transformation!495 (rule!1002 (h!8194 tokens!465)))) e!97692))))

(declare-fun b!162180 () Bool)

(declare-fun res!73571 () Bool)

(assert (=> b!162180 (=> (not res!73571) (not e!97684))))

(assert (=> b!162180 (= res!73571 ((_ is Cons!2797) tokens!465))))

(declare-fun b!162181 () Bool)

(declare-fun e!97691 () Bool)

(assert (=> b!162181 (= e!97697 e!97691)))

(declare-fun res!73561 () Bool)

(assert (=> b!162181 (=> res!73561 e!97691)))

(declare-fun lt!49163 () List!2806)

(declare-fun lt!49155 () List!2806)

(assert (=> b!162181 (= res!73561 (or (not (= lt!49163 lt!49155)) (not (= lt!49155 lt!49160)) (not (= lt!49163 lt!49160))))))

(declare-fun printList!65 (LexerInterface!381 List!2807) List!2806)

(assert (=> b!162181 (= lt!49155 (printList!65 thiss!17480 (Cons!2797 (h!8194 tokens!465) Nil!2797)))))

(declare-fun lt!49167 () BalanceConc!1632)

(assert (=> b!162181 (= lt!49163 (list!1005 lt!49167))))

(declare-fun lt!49168 () BalanceConc!1634)

(declare-fun printTailRec!75 (LexerInterface!381 BalanceConc!1634 Int BalanceConc!1632) BalanceConc!1632)

(assert (=> b!162181 (= lt!49167 (printTailRec!75 thiss!17480 lt!49168 0 (BalanceConc!1633 Empty!812)))))

(declare-fun print!112 (LexerInterface!381 BalanceConc!1634) BalanceConc!1632)

(assert (=> b!162181 (= lt!49167 (print!112 thiss!17480 lt!49168))))

(declare-fun singletonSeq!47 (Token!734) BalanceConc!1634)

(assert (=> b!162181 (= lt!49168 (singletonSeq!47 (h!8194 tokens!465)))))

(assert (=> b!162182 (= e!97695 (and tp!82206 tp!82205))))

(declare-fun b!162183 () Bool)

(declare-fun res!73558 () Bool)

(assert (=> b!162183 (=> (not res!73558) (not e!97685))))

(declare-fun lt!49159 () List!2806)

(declare-fun lt!49158 () List!2806)

(declare-fun seqFromList!368 (List!2806) BalanceConc!1632)

(assert (=> b!162183 (= res!73558 (= (list!1005 (seqFromList!368 lt!49159)) lt!49158))))

(declare-fun b!162184 () Bool)

(assert (=> b!162184 (= e!97691 true)))

(assert (=> b!162184 (= lt!49160 (originalCharacters!538 (h!8194 tokens!465)))))

(assert (=> b!162185 (= e!97680 (and tp!82203 tp!82208))))

(declare-fun b!162186 () Bool)

(declare-fun res!73560 () Bool)

(assert (=> b!162186 (=> res!73560 e!97697)))

(declare-fun e!97688 () Bool)

(assert (=> b!162186 (= res!73560 e!97688)))

(declare-fun res!73566 () Bool)

(assert (=> b!162186 (=> (not res!73566) (not e!97688))))

(assert (=> b!162186 (= res!73566 (not (= lt!49159 lt!49165)))))

(declare-fun b!162187 () Bool)

(declare-fun res!73563 () Bool)

(assert (=> b!162187 (=> res!73563 e!97691)))

(declare-fun rulesProduceIndividualToken!130 (LexerInterface!381 List!2808 Token!734) Bool)

(assert (=> b!162187 (= res!73563 (not (rulesProduceIndividualToken!130 thiss!17480 rules!1920 (h!8194 tokens!465))))))

(declare-fun b!162188 () Bool)

(declare-fun res!73562 () Bool)

(assert (=> b!162188 (=> (not res!73562) (not e!97684))))

(assert (=> b!162188 (= res!73562 (rulesProduceIndividualToken!130 thiss!17480 rules!1920 separatorToken!170))))

(assert (=> b!162189 (= e!97692 (and tp!82207 tp!82209))))

(declare-fun b!162190 () Bool)

(declare-fun res!73565 () Bool)

(assert (=> b!162190 (=> res!73565 e!97691)))

(declare-fun isEmpty!1131 (BalanceConc!1634) Bool)

(declare-datatypes ((tuple2!2666 0))(
  ( (tuple2!2667 (_1!1549 BalanceConc!1634) (_2!1549 BalanceConc!1632)) )
))
(declare-fun lex!181 (LexerInterface!381 List!2808 BalanceConc!1632) tuple2!2666)

(assert (=> b!162190 (= res!73565 (isEmpty!1131 (_1!1549 (lex!181 thiss!17480 rules!1920 (seqFromList!368 lt!49160)))))))

(declare-fun b!162191 () Bool)

(assert (=> b!162191 (= e!97684 e!97685)))

(declare-fun res!73559 () Bool)

(assert (=> b!162191 (=> (not res!73559) (not e!97685))))

(assert (=> b!162191 (= res!73559 (= lt!49159 lt!49158))))

(assert (=> b!162191 (= lt!49158 (list!1005 (printWithSeparatorTokenWhenNeededRec!64 thiss!17480 rules!1920 lt!49166 separatorToken!170 0)))))

(assert (=> b!162191 (= lt!49159 (printWithSeparatorTokenWhenNeededList!74 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!162192 () Bool)

(declare-fun res!73567 () Bool)

(assert (=> b!162192 (=> (not res!73567) (not e!97679))))

(declare-fun isEmpty!1132 (List!2808) Bool)

(assert (=> b!162192 (= res!73567 (not (isEmpty!1132 rules!1920)))))

(declare-fun b!162193 () Bool)

(declare-fun tp!82200 () Bool)

(assert (=> b!162193 (= e!97698 (and (inv!21 (value!18423 separatorToken!170)) e!97689 tp!82200))))

(declare-fun b!162194 () Bool)

(assert (=> b!162194 (= e!97688 (not (= lt!49159 (++!624 lt!49160 lt!49164))))))

(assert (= (and start!17482 res!73569) b!162192))

(assert (= (and b!162192 res!73567) b!162178))

(assert (= (and b!162178 res!73573) b!162171))

(assert (= (and b!162171 res!73574) b!162188))

(assert (= (and b!162188 res!73562) b!162169))

(assert (= (and b!162169 res!73568) b!162170))

(assert (= (and b!162170 res!73564) b!162173))

(assert (= (and b!162173 res!73572) b!162180))

(assert (= (and b!162180 res!73571) b!162191))

(assert (= (and b!162191 res!73559) b!162183))

(assert (= (and b!162183 res!73558) b!162175))

(assert (= (and b!162175 (not res!73570)) b!162186))

(assert (= (and b!162186 res!73566) b!162194))

(assert (= (and b!162186 (not res!73560)) b!162181))

(assert (= (and b!162181 (not res!73561)) b!162187))

(assert (= (and b!162187 (not res!73563)) b!162190))

(assert (= (and b!162190 (not res!73565)) b!162184))

(assert (= b!162177 b!162185))

(assert (= b!162172 b!162177))

(assert (= (and start!17482 ((_ is Cons!2798) rules!1920)) b!162172))

(assert (= b!162168 b!162182))

(assert (= b!162193 b!162168))

(assert (= start!17482 b!162193))

(assert (= b!162179 b!162189))

(assert (= b!162176 b!162179))

(assert (= b!162174 b!162176))

(assert (= (and start!17482 ((_ is Cons!2797) tokens!465)) b!162174))

(declare-fun m!152065 () Bool)

(assert (=> b!162188 m!152065))

(declare-fun m!152067 () Bool)

(assert (=> b!162176 m!152067))

(declare-fun m!152069 () Bool)

(assert (=> start!17482 m!152069))

(declare-fun m!152071 () Bool)

(assert (=> b!162190 m!152071))

(assert (=> b!162190 m!152071))

(declare-fun m!152073 () Bool)

(assert (=> b!162190 m!152073))

(declare-fun m!152075 () Bool)

(assert (=> b!162190 m!152075))

(declare-fun m!152077 () Bool)

(assert (=> b!162170 m!152077))

(declare-fun m!152079 () Bool)

(assert (=> b!162175 m!152079))

(declare-fun m!152081 () Bool)

(assert (=> b!162175 m!152081))

(declare-fun m!152083 () Bool)

(assert (=> b!162175 m!152083))

(assert (=> b!162175 m!152081))

(declare-fun m!152085 () Bool)

(assert (=> b!162175 m!152085))

(declare-fun m!152087 () Bool)

(assert (=> b!162175 m!152087))

(declare-fun m!152089 () Bool)

(assert (=> b!162175 m!152089))

(declare-fun m!152091 () Bool)

(assert (=> b!162175 m!152091))

(assert (=> b!162175 m!152079))

(declare-fun m!152093 () Bool)

(assert (=> b!162175 m!152093))

(declare-fun m!152095 () Bool)

(assert (=> b!162175 m!152095))

(declare-fun m!152097 () Bool)

(assert (=> b!162175 m!152097))

(assert (=> b!162175 m!152087))

(declare-fun m!152099 () Bool)

(assert (=> b!162175 m!152099))

(assert (=> b!162175 m!152095))

(declare-fun m!152101 () Bool)

(assert (=> b!162175 m!152101))

(assert (=> b!162175 m!152093))

(declare-fun m!152103 () Bool)

(assert (=> b!162175 m!152103))

(declare-fun m!152105 () Bool)

(assert (=> b!162193 m!152105))

(declare-fun m!152107 () Bool)

(assert (=> b!162171 m!152107))

(declare-fun m!152109 () Bool)

(assert (=> b!162171 m!152109))

(declare-fun m!152111 () Bool)

(assert (=> b!162183 m!152111))

(assert (=> b!162183 m!152111))

(declare-fun m!152113 () Bool)

(assert (=> b!162183 m!152113))

(declare-fun m!152115 () Bool)

(assert (=> b!162177 m!152115))

(declare-fun m!152117 () Bool)

(assert (=> b!162177 m!152117))

(declare-fun m!152119 () Bool)

(assert (=> b!162173 m!152119))

(declare-fun m!152121 () Bool)

(assert (=> b!162174 m!152121))

(declare-fun m!152123 () Bool)

(assert (=> b!162168 m!152123))

(declare-fun m!152125 () Bool)

(assert (=> b!162168 m!152125))

(declare-fun m!152127 () Bool)

(assert (=> b!162179 m!152127))

(declare-fun m!152129 () Bool)

(assert (=> b!162179 m!152129))

(declare-fun m!152131 () Bool)

(assert (=> b!162181 m!152131))

(declare-fun m!152133 () Bool)

(assert (=> b!162181 m!152133))

(declare-fun m!152135 () Bool)

(assert (=> b!162181 m!152135))

(declare-fun m!152137 () Bool)

(assert (=> b!162181 m!152137))

(declare-fun m!152139 () Bool)

(assert (=> b!162181 m!152139))

(declare-fun m!152141 () Bool)

(assert (=> b!162178 m!152141))

(declare-fun m!152143 () Bool)

(assert (=> b!162192 m!152143))

(declare-fun m!152145 () Bool)

(assert (=> b!162194 m!152145))

(declare-fun m!152147 () Bool)

(assert (=> b!162187 m!152147))

(declare-fun m!152149 () Bool)

(assert (=> b!162191 m!152149))

(assert (=> b!162191 m!152149))

(declare-fun m!152151 () Bool)

(assert (=> b!162191 m!152151))

(declare-fun m!152153 () Bool)

(assert (=> b!162191 m!152153))

(check-sat (not b_next!6167) (not b!162193) (not b!162191) b_and!10149 (not b_next!6169) b_and!10153 b_and!10151 (not b!162192) (not b!162172) (not b!162194) (not b_next!6161) (not b!162176) b_and!10145 (not b!162170) (not b!162187) (not b!162178) (not b!162177) (not b!162171) (not b!162168) (not b_next!6165) b_and!10147 (not b_next!6171) (not b!162179) b_and!10155 (not b!162175) (not b!162190) (not b!162173) (not b!162188) (not b_next!6163) (not b!162174) (not start!17482) (not b!162181) (not b!162183))
(check-sat (not b_next!6167) b_and!10149 b_and!10155 (not b_next!6169) b_and!10153 b_and!10151 (not b_next!6163) (not b_next!6161) b_and!10145 (not b_next!6165) b_and!10147 (not b_next!6171))
