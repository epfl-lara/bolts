; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131124 () Bool)

(assert start!131124)

(declare-fun b!1422195 () Bool)

(declare-fun e!907840 () Bool)

(assert (=> b!1422195 (= e!907840 (not true))))

(declare-datatypes ((C!7928 0))(
  ( (C!7929 (val!4534 Int)) )
))
(declare-datatypes ((List!14733 0))(
  ( (Nil!14667) (Cons!14667 (h!20068 C!7928) (t!124552 List!14733)) )
))
(declare-datatypes ((IArray!9901 0))(
  ( (IArray!9902 (innerList!5008 List!14733)) )
))
(declare-datatypes ((Conc!4948 0))(
  ( (Node!4948 (left!12531 Conc!4948) (right!12861 Conc!4948) (csize!10126 Int) (cheight!5159 Int)) (Leaf!7430 (xs!7677 IArray!9901) (csize!10127 Int)) (Empty!4948) )
))
(declare-datatypes ((BalanceConc!9836 0))(
  ( (BalanceConc!9837 (c!233814 Conc!4948)) )
))
(declare-datatypes ((List!14734 0))(
  ( (Nil!14668) (Cons!14668 (h!20069 (_ BitVec 16)) (t!124553 List!14734)) )
))
(declare-datatypes ((TokenValue!2651 0))(
  ( (FloatLiteralValue!5302 (text!19002 List!14734)) (TokenValueExt!2650 (__x!9102 Int)) (Broken!13255 (value!82610 List!14734)) (Object!2716) (End!2651) (Def!2651) (Underscore!2651) (Match!2651) (Else!2651) (Error!2651) (Case!2651) (If!2651) (Extends!2651) (Abstract!2651) (Class!2651) (Val!2651) (DelimiterValue!5302 (del!2711 List!14734)) (KeywordValue!2657 (value!82611 List!14734)) (CommentValue!5302 (value!82612 List!14734)) (WhitespaceValue!5302 (value!82613 List!14734)) (IndentationValue!2651 (value!82614 List!14734)) (String!17510) (Int32!2651) (Broken!13256 (value!82615 List!14734)) (Boolean!2652) (Unit!22029) (OperatorValue!2654 (op!2711 List!14734)) (IdentifierValue!5302 (value!82616 List!14734)) (IdentifierValue!5303 (value!82617 List!14734)) (WhitespaceValue!5303 (value!82618 List!14734)) (True!5302) (False!5302) (Broken!13257 (value!82619 List!14734)) (Broken!13258 (value!82620 List!14734)) (True!5303) (RightBrace!2651) (RightBracket!2651) (Colon!2651) (Null!2651) (Comma!2651) (LeftBracket!2651) (False!5303) (LeftBrace!2651) (ImaginaryLiteralValue!2651 (text!19003 List!14734)) (StringLiteralValue!7953 (value!82621 List!14734)) (EOFValue!2651 (value!82622 List!14734)) (IdentValue!2651 (value!82623 List!14734)) (DelimiterValue!5303 (value!82624 List!14734)) (DedentValue!2651 (value!82625 List!14734)) (NewLineValue!2651 (value!82626 List!14734)) (IntegerValue!7953 (value!82627 (_ BitVec 32)) (text!19004 List!14734)) (IntegerValue!7954 (value!82628 Int) (text!19005 List!14734)) (Times!2651) (Or!2651) (Equal!2651) (Minus!2651) (Broken!13259 (value!82629 List!14734)) (And!2651) (Div!2651) (LessEqual!2651) (Mod!2651) (Concat!6526) (Not!2651) (Plus!2651) (SpaceValue!2651 (value!82630 List!14734)) (IntegerValue!7955 (value!82631 Int) (text!19006 List!14734)) (StringLiteralValue!7954 (text!19007 List!14734)) (FloatLiteralValue!5303 (text!19008 List!14734)) (BytesLiteralValue!2651 (value!82632 List!14734)) (CommentValue!5303 (value!82633 List!14734)) (StringLiteralValue!7955 (value!82634 List!14734)) (ErrorTokenValue!2651 (msg!2712 List!14734)) )
))
(declare-datatypes ((Regex!3875 0))(
  ( (ElementMatch!3875 (c!233815 C!7928)) (Concat!6527 (regOne!8262 Regex!3875) (regTwo!8262 Regex!3875)) (EmptyExpr!3875) (Star!3875 (reg!4204 Regex!3875)) (EmptyLang!3875) (Union!3875 (regOne!8263 Regex!3875) (regTwo!8263 Regex!3875)) )
))
(declare-datatypes ((String!17511 0))(
  ( (String!17512 (value!82635 String)) )
))
(declare-datatypes ((TokenValueInjection!4962 0))(
  ( (TokenValueInjection!4963 (toValue!3860 Int) (toChars!3719 Int)) )
))
(declare-datatypes ((Rule!4922 0))(
  ( (Rule!4923 (regex!2561 Regex!3875) (tag!2823 String!17511) (isSeparator!2561 Bool) (transformation!2561 TokenValueInjection!4962)) )
))
(declare-datatypes ((Token!4784 0))(
  ( (Token!4785 (value!82636 TokenValue!2651) (rule!4324 Rule!4922) (size!12082 Int) (originalCharacters!3423 List!14733)) )
))
(declare-datatypes ((List!14735 0))(
  ( (Nil!14669) (Cons!14669 (h!20070 Token!4784) (t!124554 List!14735)) )
))
(declare-fun lt!481088 () List!14735)

(declare-datatypes ((LexerInterface!2227 0))(
  ( (LexerInterfaceExt!2224 (__x!9103 Int)) (Lexer!2225) )
))
(declare-fun printList!681 (LexerInterface!2227 List!14735) List!14733)

(declare-fun ++!3880 (List!14735 List!14735) List!14735)

(declare-fun ++!3881 (List!14733 List!14733) List!14733)

(assert (=> b!1422195 (= (printList!681 Lexer!2225 (++!3880 Nil!14669 lt!481088)) (++!3881 (printList!681 Lexer!2225 Nil!14669) (printList!681 Lexer!2225 lt!481088)))))

(declare-datatypes ((Unit!22030 0))(
  ( (Unit!22031) )
))
(declare-fun lt!481089 () Unit!22030)

(declare-fun lemmaPrintConcatSameAsConcatPrint!46 (LexerInterface!2227 List!14735 List!14735) Unit!22030)

(assert (=> b!1422195 (= lt!481089 (lemmaPrintConcatSameAsConcatPrint!46 Lexer!2225 Nil!14669 lt!481088))))

(declare-fun b!1422196 () Bool)

(declare-fun e!907842 () Bool)

(declare-datatypes ((IArray!9903 0))(
  ( (IArray!9904 (innerList!5009 List!14735)) )
))
(declare-datatypes ((Conc!4949 0))(
  ( (Node!4949 (left!12532 Conc!4949) (right!12862 Conc!4949) (csize!10128 Int) (cheight!5160 Int)) (Leaf!7431 (xs!7678 IArray!9903) (csize!10129 Int)) (Empty!4949) )
))
(declare-datatypes ((BalanceConc!9838 0))(
  ( (BalanceConc!9839 (c!233816 Conc!4949)) )
))
(declare-datatypes ((List!14736 0))(
  ( (Nil!14670) (Cons!14670 (h!20071 Rule!4922) (t!124555 List!14736)) )
))
(declare-datatypes ((PrintableTokens!904 0))(
  ( (PrintableTokens!905 (rules!11188 List!14736) (tokens!1880 BalanceConc!9838)) )
))
(declare-fun thiss!10022 () PrintableTokens!904)

(declare-fun tp!403161 () Bool)

(declare-fun inv!19434 (Conc!4949) Bool)

(assert (=> b!1422196 (= e!907842 (and (inv!19434 (c!233816 (tokens!1880 thiss!10022))) tp!403161))))

(declare-fun b!1422197 () Bool)

(declare-fun e!907839 () Bool)

(declare-fun other!32 () PrintableTokens!904)

(declare-fun tp!403163 () Bool)

(assert (=> b!1422197 (= e!907839 (and (inv!19434 (c!233816 (tokens!1880 other!32))) tp!403163))))

(declare-fun b!1422198 () Bool)

(declare-fun e!907843 () Bool)

(declare-fun e!907841 () Bool)

(assert (=> b!1422198 (= e!907843 e!907841)))

(declare-fun res!643900 () Bool)

(assert (=> b!1422198 (=> (not res!643900) (not e!907841))))

(declare-fun isEmpty!9061 (BalanceConc!9838) Bool)

(assert (=> b!1422198 (= res!643900 (not (isEmpty!9061 (tokens!1880 other!32))))))

(declare-fun lt!481086 () Unit!22030)

(declare-fun lemmaInvariant!257 (PrintableTokens!904) Unit!22030)

(assert (=> b!1422198 (= lt!481086 (lemmaInvariant!257 thiss!10022))))

(declare-fun lt!481090 () Unit!22030)

(assert (=> b!1422198 (= lt!481090 (lemmaInvariant!257 other!32))))

(declare-fun b!1422199 () Bool)

(declare-fun tp!403162 () Bool)

(declare-fun e!907837 () Bool)

(declare-fun inv!19435 (BalanceConc!9838) Bool)

(assert (=> b!1422199 (= e!907837 (and tp!403162 (inv!19435 (tokens!1880 thiss!10022)) e!907842))))

(declare-fun b!1422200 () Bool)

(declare-fun tp!403164 () Bool)

(declare-fun e!907838 () Bool)

(assert (=> b!1422200 (= e!907838 (and tp!403164 (inv!19435 (tokens!1880 other!32)) e!907839))))

(declare-fun b!1422201 () Bool)

(declare-fun res!643897 () Bool)

(assert (=> b!1422201 (=> (not res!643897) (not e!907841))))

(declare-fun isEmpty!9062 (List!14735) Bool)

(declare-fun list!5815 (BalanceConc!9838) List!14735)

(assert (=> b!1422201 (= res!643897 (isEmpty!9062 (list!5815 (tokens!1880 thiss!10022))))))

(declare-fun b!1422202 () Bool)

(assert (=> b!1422202 (= e!907841 e!907840)))

(declare-fun res!643898 () Bool)

(assert (=> b!1422202 (=> (not res!643898) (not e!907840))))

(declare-fun lt!481087 () List!14735)

(assert (=> b!1422202 (= res!643898 (= lt!481088 (++!3880 lt!481087 lt!481088)))))

(assert (=> b!1422202 (= lt!481088 (list!5815 (tokens!1880 other!32)))))

(assert (=> b!1422202 (= lt!481087 (list!5815 (BalanceConc!9839 Empty!4949)))))

(declare-fun res!643896 () Bool)

(assert (=> start!131124 (=> (not res!643896) (not e!907843))))

(assert (=> start!131124 (= res!643896 (= (rules!11188 thiss!10022) (rules!11188 other!32)))))

(assert (=> start!131124 e!907843))

(declare-fun inv!19436 (PrintableTokens!904) Bool)

(assert (=> start!131124 (and (inv!19436 thiss!10022) e!907837)))

(assert (=> start!131124 (and (inv!19436 other!32) e!907838)))

(declare-fun b!1422194 () Bool)

(declare-fun res!643899 () Bool)

(assert (=> b!1422194 (=> (not res!643899) (not e!907841))))

(assert (=> b!1422194 (= res!643899 (isEmpty!9061 (tokens!1880 thiss!10022)))))

(assert (= (and start!131124 res!643896) b!1422198))

(assert (= (and b!1422198 res!643900) b!1422194))

(assert (= (and b!1422194 res!643899) b!1422201))

(assert (= (and b!1422201 res!643897) b!1422202))

(assert (= (and b!1422202 res!643898) b!1422195))

(assert (= b!1422199 b!1422196))

(assert (= start!131124 b!1422199))

(assert (= b!1422200 b!1422197))

(assert (= start!131124 b!1422200))

(declare-fun m!1613659 () Bool)

(assert (=> start!131124 m!1613659))

(declare-fun m!1613661 () Bool)

(assert (=> start!131124 m!1613661))

(declare-fun m!1613663 () Bool)

(assert (=> b!1422194 m!1613663))

(declare-fun m!1613665 () Bool)

(assert (=> b!1422199 m!1613665))

(declare-fun m!1613667 () Bool)

(assert (=> b!1422196 m!1613667))

(declare-fun m!1613669 () Bool)

(assert (=> b!1422202 m!1613669))

(declare-fun m!1613671 () Bool)

(assert (=> b!1422202 m!1613671))

(declare-fun m!1613673 () Bool)

(assert (=> b!1422202 m!1613673))

(declare-fun m!1613675 () Bool)

(assert (=> b!1422195 m!1613675))

(declare-fun m!1613677 () Bool)

(assert (=> b!1422195 m!1613677))

(declare-fun m!1613679 () Bool)

(assert (=> b!1422195 m!1613679))

(assert (=> b!1422195 m!1613679))

(declare-fun m!1613681 () Bool)

(assert (=> b!1422195 m!1613681))

(declare-fun m!1613683 () Bool)

(assert (=> b!1422195 m!1613683))

(assert (=> b!1422195 m!1613675))

(assert (=> b!1422195 m!1613677))

(declare-fun m!1613685 () Bool)

(assert (=> b!1422195 m!1613685))

(declare-fun m!1613687 () Bool)

(assert (=> b!1422201 m!1613687))

(assert (=> b!1422201 m!1613687))

(declare-fun m!1613689 () Bool)

(assert (=> b!1422201 m!1613689))

(declare-fun m!1613691 () Bool)

(assert (=> b!1422200 m!1613691))

(declare-fun m!1613693 () Bool)

(assert (=> b!1422197 m!1613693))

(declare-fun m!1613695 () Bool)

(assert (=> b!1422198 m!1613695))

(declare-fun m!1613697 () Bool)

(assert (=> b!1422198 m!1613697))

(declare-fun m!1613699 () Bool)

(assert (=> b!1422198 m!1613699))

(check-sat (not b!1422199) (not b!1422201) (not b!1422195) (not start!131124) (not b!1422196) (not b!1422198) (not b!1422197) (not b!1422202) (not b!1422194) (not b!1422200))
(check-sat)
