; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134746 () Bool)

(assert start!134746)

(declare-fun res!655893 () Bool)

(declare-fun e!924269 () Bool)

(assert (=> start!134746 (=> (not res!655893) (not e!924269))))

(declare-datatypes ((C!8104 0))(
  ( (C!8105 (val!4622 Int)) )
))
(declare-datatypes ((List!15119 0))(
  ( (Nil!15053) (Cons!15053 (h!20454 C!8104) (t!130448 List!15119)) )
))
(declare-datatypes ((IArray!10253 0))(
  ( (IArray!10254 (innerList!5184 List!15119)) )
))
(declare-datatypes ((Conc!5124 0))(
  ( (Node!5124 (left!12811 Conc!5124) (right!13141 Conc!5124) (csize!10478 Int) (cheight!5335 Int)) (Leaf!7650 (xs!7865 IArray!10253) (csize!10479 Int)) (Empty!5124) )
))
(declare-datatypes ((BalanceConc!10188 0))(
  ( (BalanceConc!10189 (c!238628 Conc!5124)) )
))
(declare-datatypes ((List!15120 0))(
  ( (Nil!15054) (Cons!15054 (h!20455 (_ BitVec 16)) (t!130449 List!15120)) )
))
(declare-datatypes ((TokenValue!2739 0))(
  ( (FloatLiteralValue!5478 (text!19618 List!15120)) (TokenValueExt!2738 (__x!9268 Int)) (Broken!13695 (value!85118 List!15120)) (Object!2804) (End!2739) (Def!2739) (Underscore!2739) (Match!2739) (Else!2739) (Error!2739) (Case!2739) (If!2739) (Extends!2739) (Abstract!2739) (Class!2739) (Val!2739) (DelimiterValue!5478 (del!2799 List!15120)) (KeywordValue!2745 (value!85119 List!15120)) (CommentValue!5478 (value!85120 List!15120)) (WhitespaceValue!5478 (value!85121 List!15120)) (IndentationValue!2739 (value!85122 List!15120)) (String!17950) (Int32!2739) (Broken!13696 (value!85123 List!15120)) (Boolean!2740) (Unit!23964) (OperatorValue!2742 (op!2799 List!15120)) (IdentifierValue!5478 (value!85124 List!15120)) (IdentifierValue!5479 (value!85125 List!15120)) (WhitespaceValue!5479 (value!85126 List!15120)) (True!5478) (False!5478) (Broken!13697 (value!85127 List!15120)) (Broken!13698 (value!85128 List!15120)) (True!5479) (RightBrace!2739) (RightBracket!2739) (Colon!2739) (Null!2739) (Comma!2739) (LeftBracket!2739) (False!5479) (LeftBrace!2739) (ImaginaryLiteralValue!2739 (text!19619 List!15120)) (StringLiteralValue!8217 (value!85129 List!15120)) (EOFValue!2739 (value!85130 List!15120)) (IdentValue!2739 (value!85131 List!15120)) (DelimiterValue!5479 (value!85132 List!15120)) (DedentValue!2739 (value!85133 List!15120)) (NewLineValue!2739 (value!85134 List!15120)) (IntegerValue!8217 (value!85135 (_ BitVec 32)) (text!19620 List!15120)) (IntegerValue!8218 (value!85136 Int) (text!19621 List!15120)) (Times!2739) (Or!2739) (Equal!2739) (Minus!2739) (Broken!13699 (value!85137 List!15120)) (And!2739) (Div!2739) (LessEqual!2739) (Mod!2739) (Concat!6702) (Not!2739) (Plus!2739) (SpaceValue!2739 (value!85138 List!15120)) (IntegerValue!8219 (value!85139 Int) (text!19622 List!15120)) (StringLiteralValue!8218 (text!19623 List!15120)) (FloatLiteralValue!5479 (text!19624 List!15120)) (BytesLiteralValue!2739 (value!85140 List!15120)) (CommentValue!5479 (value!85141 List!15120)) (StringLiteralValue!8219 (value!85142 List!15120)) (ErrorTokenValue!2739 (msg!2800 List!15120)) )
))
(declare-datatypes ((Regex!3963 0))(
  ( (ElementMatch!3963 (c!238629 C!8104)) (Concat!6703 (regOne!8438 Regex!3963) (regTwo!8438 Regex!3963)) (EmptyExpr!3963) (Star!3963 (reg!4292 Regex!3963)) (EmptyLang!3963) (Union!3963 (regOne!8439 Regex!3963) (regTwo!8439 Regex!3963)) )
))
(declare-datatypes ((String!17951 0))(
  ( (String!17952 (value!85143 String)) )
))
(declare-datatypes ((TokenValueInjection!5138 0))(
  ( (TokenValueInjection!5139 (toValue!3956 Int) (toChars!3815 Int)) )
))
(declare-datatypes ((Rule!5098 0))(
  ( (Rule!5099 (regex!2649 Regex!3963) (tag!2913 String!17951) (isSeparator!2649 Bool) (transformation!2649 TokenValueInjection!5138)) )
))
(declare-datatypes ((Token!4960 0))(
  ( (Token!4961 (value!85144 TokenValue!2739) (rule!4422 Rule!5098) (size!12325 Int) (originalCharacters!3511 List!15119)) )
))
(declare-datatypes ((List!15121 0))(
  ( (Nil!15055) (Cons!15055 (h!20456 Token!4960) (t!130450 List!15121)) )
))
(declare-datatypes ((IArray!10255 0))(
  ( (IArray!10256 (innerList!5185 List!15121)) )
))
(declare-datatypes ((Conc!5125 0))(
  ( (Node!5125 (left!12812 Conc!5125) (right!13142 Conc!5125) (csize!10480 Int) (cheight!5336 Int)) (Leaf!7651 (xs!7866 IArray!10255) (csize!10481 Int)) (Empty!5125) )
))
(declare-datatypes ((BalanceConc!10190 0))(
  ( (BalanceConc!10191 (c!238630 Conc!5125)) )
))
(declare-datatypes ((List!15122 0))(
  ( (Nil!15056) (Cons!15056 (h!20457 Rule!5098) (t!130451 List!15122)) )
))
(declare-datatypes ((PrintableTokens!1080 0))(
  ( (PrintableTokens!1081 (rules!11540 List!15122) (tokens!2038 BalanceConc!10190)) )
))
(declare-fun thiss!10022 () PrintableTokens!1080)

(declare-fun other!32 () PrintableTokens!1080)

(assert (=> start!134746 (= res!655893 (= (rules!11540 thiss!10022) (rules!11540 other!32)))))

(assert (=> start!134746 e!924269))

(declare-fun e!924274 () Bool)

(declare-fun inv!20073 (PrintableTokens!1080) Bool)

(assert (=> start!134746 (and (inv!20073 thiss!10022) e!924274)))

(declare-fun e!924270 () Bool)

(assert (=> start!134746 (and (inv!20073 other!32) e!924270)))

(declare-fun b!1448700 () Bool)

(declare-fun e!924271 () Bool)

(assert (=> b!1448700 (= e!924271 (not true))))

(declare-fun lt!499419 () Token!4960)

(declare-fun head!2941 (BalanceConc!10190) Token!4960)

(assert (=> b!1448700 (= lt!499419 (head!2941 (tokens!2038 other!32)))))

(declare-fun lt!499413 () List!15121)

(declare-fun list!6011 (BalanceConc!10190) List!15121)

(assert (=> b!1448700 (= lt!499413 (list!6011 (tokens!2038 other!32)))))

(declare-fun lt!499417 () Token!4960)

(declare-datatypes ((LexerInterface!2305 0))(
  ( (LexerInterfaceExt!2302 (__x!9269 Int)) (Lexer!2303) )
))
(declare-fun rulesProduceIndividualToken!1224 (LexerInterface!2305 List!15122 Token!4960) Bool)

(assert (=> b!1448700 (rulesProduceIndividualToken!1224 Lexer!2303 (rules!11540 thiss!10022) lt!499417)))

(declare-datatypes ((Unit!23965 0))(
  ( (Unit!23966) )
))
(declare-fun lt!499418 () Unit!23965)

(declare-fun lt!499414 () List!15121)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!407 (LexerInterface!2305 List!15122 List!15121 Token!4960) Unit!23965)

(assert (=> b!1448700 (= lt!499418 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!407 Lexer!2303 (rules!11540 thiss!10022) lt!499414 lt!499417))))

(declare-fun last!209 (BalanceConc!10190) Token!4960)

(assert (=> b!1448700 (= lt!499417 (last!209 (tokens!2038 thiss!10022)))))

(assert (=> b!1448700 (= lt!499414 (list!6011 (tokens!2038 thiss!10022)))))

(declare-fun b!1448701 () Bool)

(declare-fun e!924272 () Bool)

(declare-fun tp!408650 () Bool)

(declare-fun inv!20074 (Conc!5125) Bool)

(assert (=> b!1448701 (= e!924272 (and (inv!20074 (c!238630 (tokens!2038 thiss!10022))) tp!408650))))

(declare-fun b!1448702 () Bool)

(declare-fun tp!408649 () Bool)

(declare-fun inv!20075 (BalanceConc!10190) Bool)

(assert (=> b!1448702 (= e!924274 (and tp!408649 (inv!20075 (tokens!2038 thiss!10022)) e!924272))))

(declare-fun tp!408647 () Bool)

(declare-fun e!924273 () Bool)

(declare-fun b!1448703 () Bool)

(assert (=> b!1448703 (= e!924270 (and tp!408647 (inv!20075 (tokens!2038 other!32)) e!924273))))

(declare-fun b!1448704 () Bool)

(assert (=> b!1448704 (= e!924269 e!924271)))

(declare-fun res!655894 () Bool)

(assert (=> b!1448704 (=> (not res!655894) (not e!924271))))

(declare-fun isEmpty!9397 (BalanceConc!10190) Bool)

(assert (=> b!1448704 (= res!655894 (not (isEmpty!9397 (tokens!2038 other!32))))))

(declare-fun lt!499415 () Unit!23965)

(declare-fun lemmaInvariant!345 (PrintableTokens!1080) Unit!23965)

(assert (=> b!1448704 (= lt!499415 (lemmaInvariant!345 thiss!10022))))

(declare-fun lt!499416 () Unit!23965)

(assert (=> b!1448704 (= lt!499416 (lemmaInvariant!345 other!32))))

(declare-fun b!1448705 () Bool)

(declare-fun tp!408648 () Bool)

(assert (=> b!1448705 (= e!924273 (and (inv!20074 (c!238630 (tokens!2038 other!32))) tp!408648))))

(declare-fun b!1448706 () Bool)

(declare-fun res!655892 () Bool)

(assert (=> b!1448706 (=> (not res!655892) (not e!924271))))

(assert (=> b!1448706 (= res!655892 (not (isEmpty!9397 (tokens!2038 thiss!10022))))))

(assert (= (and start!134746 res!655893) b!1448704))

(assert (= (and b!1448704 res!655894) b!1448706))

(assert (= (and b!1448706 res!655892) b!1448700))

(assert (= b!1448702 b!1448701))

(assert (= start!134746 b!1448702))

(assert (= b!1448703 b!1448705))

(assert (= start!134746 b!1448703))

(declare-fun m!1671585 () Bool)

(assert (=> b!1448700 m!1671585))

(declare-fun m!1671587 () Bool)

(assert (=> b!1448700 m!1671587))

(declare-fun m!1671589 () Bool)

(assert (=> b!1448700 m!1671589))

(declare-fun m!1671591 () Bool)

(assert (=> b!1448700 m!1671591))

(declare-fun m!1671593 () Bool)

(assert (=> b!1448700 m!1671593))

(declare-fun m!1671595 () Bool)

(assert (=> b!1448700 m!1671595))

(declare-fun m!1671597 () Bool)

(assert (=> b!1448701 m!1671597))

(declare-fun m!1671599 () Bool)

(assert (=> b!1448703 m!1671599))

(declare-fun m!1671601 () Bool)

(assert (=> b!1448705 m!1671601))

(declare-fun m!1671603 () Bool)

(assert (=> start!134746 m!1671603))

(declare-fun m!1671605 () Bool)

(assert (=> start!134746 m!1671605))

(declare-fun m!1671607 () Bool)

(assert (=> b!1448702 m!1671607))

(declare-fun m!1671609 () Bool)

(assert (=> b!1448706 m!1671609))

(declare-fun m!1671611 () Bool)

(assert (=> b!1448704 m!1671611))

(declare-fun m!1671613 () Bool)

(assert (=> b!1448704 m!1671613))

(declare-fun m!1671615 () Bool)

(assert (=> b!1448704 m!1671615))

(check-sat (not b!1448700) (not b!1448703) (not b!1448705) (not start!134746) (not b!1448702) (not b!1448704) (not b!1448706) (not b!1448701))
(check-sat)
