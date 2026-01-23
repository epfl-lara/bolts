; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!146084 () Bool)

(assert start!146084)

(declare-datatypes ((C!8804 0))(
  ( (C!8805 (val!4998 Int)) )
))
(declare-datatypes ((List!17120 0))(
  ( (Nil!17050) (Cons!17050 (h!22451 C!8804) (t!142417 List!17120)) )
))
(declare-datatypes ((IArray!11249 0))(
  ( (IArray!11250 (innerList!5682 List!17120)) )
))
(declare-datatypes ((Conc!5622 0))(
  ( (Node!5622 (left!13817 Conc!5622) (right!14147 Conc!5622) (csize!11474 Int) (cheight!5833 Int)) (Leaf!8336 (xs!8426 IArray!11249) (csize!11475 Int)) (Empty!5622) )
))
(declare-datatypes ((BalanceConc!11188 0))(
  ( (BalanceConc!11189 (c!254192 Conc!5622)) )
))
(declare-fun lt!543259 () BalanceConc!11188)

(declare-datatypes ((List!17121 0))(
  ( (Nil!17051) (Cons!17051 (h!22452 (_ BitVec 16)) (t!142418 List!17121)) )
))
(declare-datatypes ((TokenValue!3077 0))(
  ( (FloatLiteralValue!6154 (text!21984 List!17121)) (TokenValueExt!3076 (__x!11456 Int)) (Broken!15385 (value!94776 List!17121)) (Object!3146) (End!3077) (Def!3077) (Underscore!3077) (Match!3077) (Else!3077) (Error!3077) (Case!3077) (If!3077) (Extends!3077) (Abstract!3077) (Class!3077) (Val!3077) (DelimiterValue!6154 (del!3137 List!17121)) (KeywordValue!3083 (value!94777 List!17121)) (CommentValue!6154 (value!94778 List!17121)) (WhitespaceValue!6154 (value!94779 List!17121)) (IndentationValue!3077 (value!94780 List!17121)) (String!19716) (Int32!3077) (Broken!15386 (value!94781 List!17121)) (Boolean!3078) (Unit!26260) (OperatorValue!3080 (op!3137 List!17121)) (IdentifierValue!6154 (value!94782 List!17121)) (IdentifierValue!6155 (value!94783 List!17121)) (WhitespaceValue!6155 (value!94784 List!17121)) (True!6154) (False!6154) (Broken!15387 (value!94785 List!17121)) (Broken!15388 (value!94786 List!17121)) (True!6155) (RightBrace!3077) (RightBracket!3077) (Colon!3077) (Null!3077) (Comma!3077) (LeftBracket!3077) (False!6155) (LeftBrace!3077) (ImaginaryLiteralValue!3077 (text!21985 List!17121)) (StringLiteralValue!9231 (value!94787 List!17121)) (EOFValue!3077 (value!94788 List!17121)) (IdentValue!3077 (value!94789 List!17121)) (DelimiterValue!6155 (value!94790 List!17121)) (DedentValue!3077 (value!94791 List!17121)) (NewLineValue!3077 (value!94792 List!17121)) (IntegerValue!9231 (value!94793 (_ BitVec 32)) (text!21986 List!17121)) (IntegerValue!9232 (value!94794 Int) (text!21987 List!17121)) (Times!3077) (Or!3077) (Equal!3077) (Minus!3077) (Broken!15389 (value!94795 List!17121)) (And!3077) (Div!3077) (LessEqual!3077) (Mod!3077) (Concat!7392) (Not!3077) (Plus!3077) (SpaceValue!3077 (value!94796 List!17121)) (IntegerValue!9233 (value!94797 Int) (text!21988 List!17121)) (StringLiteralValue!9232 (text!21989 List!17121)) (FloatLiteralValue!6155 (text!21990 List!17121)) (BytesLiteralValue!3077 (value!94798 List!17121)) (CommentValue!6155 (value!94799 List!17121)) (StringLiteralValue!9233 (value!94800 List!17121)) (ErrorTokenValue!3077 (msg!3138 List!17121)) )
))
(declare-datatypes ((Regex!4315 0))(
  ( (ElementMatch!4315 (c!254193 C!8804)) (Concat!7393 (regOne!9142 Regex!4315) (regTwo!9142 Regex!4315)) (EmptyExpr!4315) (Star!4315 (reg!4644 Regex!4315)) (EmptyLang!4315) (Union!4315 (regOne!9143 Regex!4315) (regTwo!9143 Regex!4315)) )
))
(declare-datatypes ((String!19717 0))(
  ( (String!19718 (value!94801 String)) )
))
(declare-datatypes ((TokenValueInjection!5814 0))(
  ( (TokenValueInjection!5815 (toValue!4378 Int) (toChars!4237 Int)) )
))
(declare-datatypes ((Rule!5774 0))(
  ( (Rule!5775 (regex!2987 Regex!4315) (tag!3251 String!19717) (isSeparator!2987 Bool) (transformation!2987 TokenValueInjection!5814)) )
))
(declare-datatypes ((Token!5540 0))(
  ( (Token!5541 (value!94802 TokenValue!3077) (rule!4773 Rule!5774) (size!13822 Int) (originalCharacters!3801 List!17120)) )
))
(declare-datatypes ((List!17122 0))(
  ( (Nil!17052) (Cons!17052 (h!22453 Token!5540) (t!142419 List!17122)) )
))
(declare-datatypes ((IArray!11251 0))(
  ( (IArray!11252 (innerList!5683 List!17122)) )
))
(declare-datatypes ((Conc!5623 0))(
  ( (Node!5623 (left!13818 Conc!5623) (right!14148 Conc!5623) (csize!11476 Int) (cheight!5834 Int)) (Leaf!8337 (xs!8427 IArray!11251) (csize!11477 Int)) (Empty!5623) )
))
(declare-datatypes ((BalanceConc!11190 0))(
  ( (BalanceConc!11191 (c!254194 Conc!5623)) )
))
(declare-datatypes ((List!17123 0))(
  ( (Nil!17053) (Cons!17053 (h!22454 Rule!5774) (t!142420 List!17123)) )
))
(declare-datatypes ((PrintableTokens!1192 0))(
  ( (PrintableTokens!1193 (rules!12116 List!17123) (tokens!2210 BalanceConc!11190)) )
))
(declare-fun thiss!10002 () PrintableTokens!1192)

(declare-datatypes ((LexerInterface!2616 0))(
  ( (LexerInterfaceExt!2613 (__x!11457 Int)) (Lexer!2614) )
))
(declare-fun print!1153 (LexerInterface!2616 BalanceConc!11190) BalanceConc!11188)

(assert (=> start!146084 (= lt!543259 (print!1153 Lexer!2614 (tokens!2210 thiss!10002)))))

(declare-datatypes ((Unit!26261 0))(
  ( (Unit!26262) )
))
(declare-fun lt!543260 () Unit!26261)

(declare-fun theoremInvertabilityWhenTokenListSeparable!85 (LexerInterface!2616 List!17123 List!17122) Unit!26261)

(declare-fun list!6563 (BalanceConc!11190) List!17122)

(assert (=> start!146084 (= lt!543260 (theoremInvertabilityWhenTokenListSeparable!85 Lexer!2614 (rules!12116 thiss!10002) (list!6563 (tokens!2210 thiss!10002))))))

(assert (=> start!146084 false))

(declare-fun e!1007379 () Bool)

(declare-fun inv!22432 (PrintableTokens!1192) Bool)

(assert (=> start!146084 (and (inv!22432 thiss!10002) e!1007379)))

(declare-fun b!1568585 () Bool)

(declare-fun e!1007380 () Bool)

(declare-fun tp!461927 () Bool)

(declare-fun inv!22433 (Conc!5623) Bool)

(assert (=> b!1568585 (= e!1007380 (and (inv!22433 (c!254194 (tokens!2210 thiss!10002))) tp!461927))))

(declare-fun tp!461928 () Bool)

(declare-fun b!1568584 () Bool)

(declare-fun inv!22434 (BalanceConc!11190) Bool)

(assert (=> b!1568584 (= e!1007379 (and tp!461928 (inv!22434 (tokens!2210 thiss!10002)) e!1007380))))

(assert (= b!1568584 b!1568585))

(assert (= start!146084 b!1568584))

(declare-fun m!1842311 () Bool)

(assert (=> start!146084 m!1842311))

(declare-fun m!1842313 () Bool)

(assert (=> start!146084 m!1842313))

(assert (=> start!146084 m!1842313))

(declare-fun m!1842315 () Bool)

(assert (=> start!146084 m!1842315))

(declare-fun m!1842317 () Bool)

(assert (=> start!146084 m!1842317))

(declare-fun m!1842319 () Bool)

(assert (=> b!1568585 m!1842319))

(declare-fun m!1842321 () Bool)

(assert (=> b!1568584 m!1842321))

(check-sat (not b!1568584) (not b!1568585) (not start!146084))
(check-sat)
