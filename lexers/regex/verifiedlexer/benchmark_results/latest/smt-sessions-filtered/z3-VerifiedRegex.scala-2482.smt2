; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131128 () Bool)

(assert start!131128)

(declare-fun b!1422253 () Bool)

(declare-fun e!907894 () Bool)

(assert (=> b!1422253 (= e!907894 (not true))))

(declare-datatypes ((C!7932 0))(
  ( (C!7933 (val!4536 Int)) )
))
(declare-datatypes ((List!14741 0))(
  ( (Nil!14675) (Cons!14675 (h!20076 C!7932) (t!124560 List!14741)) )
))
(declare-datatypes ((IArray!9909 0))(
  ( (IArray!9910 (innerList!5012 List!14741)) )
))
(declare-datatypes ((Conc!4952 0))(
  ( (Node!4952 (left!12536 Conc!4952) (right!12866 Conc!4952) (csize!10134 Int) (cheight!5163 Int)) (Leaf!7435 (xs!7681 IArray!9909) (csize!10135 Int)) (Empty!4952) )
))
(declare-datatypes ((BalanceConc!9844 0))(
  ( (BalanceConc!9845 (c!233822 Conc!4952)) )
))
(declare-datatypes ((List!14742 0))(
  ( (Nil!14676) (Cons!14676 (h!20077 (_ BitVec 16)) (t!124561 List!14742)) )
))
(declare-datatypes ((TokenValue!2653 0))(
  ( (FloatLiteralValue!5306 (text!19016 List!14742)) (TokenValueExt!2652 (__x!9106 Int)) (Broken!13265 (value!82667 List!14742)) (Object!2718) (End!2653) (Def!2653) (Underscore!2653) (Match!2653) (Else!2653) (Error!2653) (Case!2653) (If!2653) (Extends!2653) (Abstract!2653) (Class!2653) (Val!2653) (DelimiterValue!5306 (del!2713 List!14742)) (KeywordValue!2659 (value!82668 List!14742)) (CommentValue!5306 (value!82669 List!14742)) (WhitespaceValue!5306 (value!82670 List!14742)) (IndentationValue!2653 (value!82671 List!14742)) (String!17520) (Int32!2653) (Broken!13266 (value!82672 List!14742)) (Boolean!2654) (Unit!22035) (OperatorValue!2656 (op!2713 List!14742)) (IdentifierValue!5306 (value!82673 List!14742)) (IdentifierValue!5307 (value!82674 List!14742)) (WhitespaceValue!5307 (value!82675 List!14742)) (True!5306) (False!5306) (Broken!13267 (value!82676 List!14742)) (Broken!13268 (value!82677 List!14742)) (True!5307) (RightBrace!2653) (RightBracket!2653) (Colon!2653) (Null!2653) (Comma!2653) (LeftBracket!2653) (False!5307) (LeftBrace!2653) (ImaginaryLiteralValue!2653 (text!19017 List!14742)) (StringLiteralValue!7959 (value!82678 List!14742)) (EOFValue!2653 (value!82679 List!14742)) (IdentValue!2653 (value!82680 List!14742)) (DelimiterValue!5307 (value!82681 List!14742)) (DedentValue!2653 (value!82682 List!14742)) (NewLineValue!2653 (value!82683 List!14742)) (IntegerValue!7959 (value!82684 (_ BitVec 32)) (text!19018 List!14742)) (IntegerValue!7960 (value!82685 Int) (text!19019 List!14742)) (Times!2653) (Or!2653) (Equal!2653) (Minus!2653) (Broken!13269 (value!82686 List!14742)) (And!2653) (Div!2653) (LessEqual!2653) (Mod!2653) (Concat!6530) (Not!2653) (Plus!2653) (SpaceValue!2653 (value!82687 List!14742)) (IntegerValue!7961 (value!82688 Int) (text!19020 List!14742)) (StringLiteralValue!7960 (text!19021 List!14742)) (FloatLiteralValue!5307 (text!19022 List!14742)) (BytesLiteralValue!2653 (value!82689 List!14742)) (CommentValue!5307 (value!82690 List!14742)) (StringLiteralValue!7961 (value!82691 List!14742)) (ErrorTokenValue!2653 (msg!2714 List!14742)) )
))
(declare-datatypes ((Regex!3877 0))(
  ( (ElementMatch!3877 (c!233823 C!7932)) (Concat!6531 (regOne!8266 Regex!3877) (regTwo!8266 Regex!3877)) (EmptyExpr!3877) (Star!3877 (reg!4206 Regex!3877)) (EmptyLang!3877) (Union!3877 (regOne!8267 Regex!3877) (regTwo!8267 Regex!3877)) )
))
(declare-datatypes ((String!17521 0))(
  ( (String!17522 (value!82692 String)) )
))
(declare-datatypes ((TokenValueInjection!4966 0))(
  ( (TokenValueInjection!4967 (toValue!3862 Int) (toChars!3721 Int)) )
))
(declare-datatypes ((Rule!4926 0))(
  ( (Rule!4927 (regex!2563 Regex!3877) (tag!2825 String!17521) (isSeparator!2563 Bool) (transformation!2563 TokenValueInjection!4966)) )
))
(declare-datatypes ((Token!4788 0))(
  ( (Token!4789 (value!82693 TokenValue!2653) (rule!4326 Rule!4926) (size!12084 Int) (originalCharacters!3425 List!14741)) )
))
(declare-datatypes ((List!14743 0))(
  ( (Nil!14677) (Cons!14677 (h!20078 Token!4788) (t!124562 List!14743)) )
))
(declare-datatypes ((IArray!9911 0))(
  ( (IArray!9912 (innerList!5013 List!14743)) )
))
(declare-datatypes ((Conc!4953 0))(
  ( (Node!4953 (left!12537 Conc!4953) (right!12867 Conc!4953) (csize!10136 Int) (cheight!5164 Int)) (Leaf!7436 (xs!7682 IArray!9911) (csize!10137 Int)) (Empty!4953) )
))
(declare-datatypes ((BalanceConc!9846 0))(
  ( (BalanceConc!9847 (c!233824 Conc!4953)) )
))
(declare-datatypes ((List!14744 0))(
  ( (Nil!14678) (Cons!14678 (h!20079 Rule!4926) (t!124563 List!14744)) )
))
(declare-datatypes ((PrintableTokens!908 0))(
  ( (PrintableTokens!909 (rules!11190 List!14744) (tokens!1882 BalanceConc!9846)) )
))
(declare-fun other!32 () PrintableTokens!908)

(declare-fun print!1013 (PrintableTokens!908) BalanceConc!9844)

(declare-datatypes ((LexerInterface!2229 0))(
  ( (LexerInterfaceExt!2226 (__x!9107 Int)) (Lexer!2227) )
))
(declare-fun print!1014 (LexerInterface!2229 BalanceConc!9846) BalanceConc!9844)

(assert (=> b!1422253 (= (print!1013 other!32) (print!1014 Lexer!2227 (tokens!1882 other!32)))))

(declare-datatypes ((Unit!22036 0))(
  ( (Unit!22037) )
))
(declare-fun lt!481143 () Unit!22036)

(declare-fun lt!481141 () List!14743)

(declare-fun theoremInvertabilityWhenTokenListSeparable!49 (LexerInterface!2229 List!14744 List!14743) Unit!22036)

(assert (=> b!1422253 (= lt!481143 (theoremInvertabilityWhenTokenListSeparable!49 Lexer!2227 (rules!11190 other!32) lt!481141))))

(declare-fun thiss!10022 () PrintableTokens!908)

(assert (=> b!1422253 (= (print!1013 thiss!10022) (print!1014 Lexer!2227 (tokens!1882 thiss!10022)))))

(declare-fun lt!481142 () Unit!22036)

(declare-fun lt!481146 () List!14743)

(assert (=> b!1422253 (= lt!481142 (theoremInvertabilityWhenTokenListSeparable!49 Lexer!2227 (rules!11190 thiss!10022) lt!481146))))

(declare-fun e!907897 () Bool)

(assert (=> b!1422253 e!907897))

(declare-fun res!643931 () Bool)

(assert (=> b!1422253 (=> (not res!643931) (not e!907897))))

(declare-fun lt!481148 () List!14741)

(declare-fun lt!481149 () List!14743)

(declare-fun printList!683 (LexerInterface!2229 List!14743) List!14741)

(declare-fun ++!3884 (List!14741 List!14741) List!14741)

(assert (=> b!1422253 (= res!643931 (= (printList!683 Lexer!2227 lt!481149) (++!3884 lt!481148 (printList!683 Lexer!2227 lt!481141))))))

(assert (=> b!1422253 (= lt!481148 (printList!683 Lexer!2227 Nil!14677))))

(declare-fun ++!3885 (List!14743 List!14743) List!14743)

(assert (=> b!1422253 (= lt!481149 (++!3885 Nil!14677 lt!481141))))

(declare-fun lt!481145 () Unit!22036)

(declare-fun lemmaPrintConcatSameAsConcatPrint!48 (LexerInterface!2229 List!14743 List!14743) Unit!22036)

(assert (=> b!1422253 (= lt!481145 (lemmaPrintConcatSameAsConcatPrint!48 Lexer!2227 Nil!14677 lt!481141))))

(declare-fun b!1422254 () Bool)

(declare-fun res!643936 () Bool)

(declare-fun e!907892 () Bool)

(assert (=> b!1422254 (=> (not res!643936) (not e!907892))))

(declare-fun isEmpty!9065 (BalanceConc!9846) Bool)

(assert (=> b!1422254 (= res!643936 (isEmpty!9065 (tokens!1882 thiss!10022)))))

(declare-fun b!1422255 () Bool)

(assert (=> b!1422255 (= e!907897 (= lt!481148 Nil!14675))))

(declare-fun e!907895 () Bool)

(declare-fun e!907891 () Bool)

(declare-fun tp!403185 () Bool)

(declare-fun b!1422256 () Bool)

(declare-fun inv!19443 (BalanceConc!9846) Bool)

(assert (=> b!1422256 (= e!907895 (and tp!403185 (inv!19443 (tokens!1882 other!32)) e!907891))))

(declare-fun b!1422257 () Bool)

(declare-fun e!907896 () Bool)

(declare-fun tp!403186 () Bool)

(declare-fun inv!19444 (Conc!4953) Bool)

(assert (=> b!1422257 (= e!907896 (and (inv!19444 (c!233824 (tokens!1882 thiss!10022))) tp!403186))))

(declare-fun b!1422258 () Bool)

(declare-fun e!907889 () Bool)

(assert (=> b!1422258 (= e!907889 e!907892)))

(declare-fun res!643933 () Bool)

(assert (=> b!1422258 (=> (not res!643933) (not e!907892))))

(assert (=> b!1422258 (= res!643933 (not (isEmpty!9065 (tokens!1882 other!32))))))

(declare-fun lt!481147 () Unit!22036)

(declare-fun lemmaInvariant!259 (PrintableTokens!908) Unit!22036)

(assert (=> b!1422258 (= lt!481147 (lemmaInvariant!259 thiss!10022))))

(declare-fun lt!481150 () Unit!22036)

(assert (=> b!1422258 (= lt!481150 (lemmaInvariant!259 other!32))))

(declare-fun b!1422259 () Bool)

(declare-fun e!907890 () Bool)

(assert (=> b!1422259 (= e!907890 e!907894)))

(declare-fun res!643935 () Bool)

(assert (=> b!1422259 (=> (not res!643935) (not e!907894))))

(declare-fun lt!481144 () List!14743)

(assert (=> b!1422259 (= res!643935 (= lt!481141 (++!3885 lt!481144 lt!481141)))))

(declare-fun list!5817 (BalanceConc!9846) List!14743)

(assert (=> b!1422259 (= lt!481141 (list!5817 (tokens!1882 other!32)))))

(assert (=> b!1422259 (= lt!481144 (list!5817 (BalanceConc!9847 Empty!4953)))))

(declare-fun b!1422260 () Bool)

(declare-fun tp!403187 () Bool)

(declare-fun e!907893 () Bool)

(assert (=> b!1422260 (= e!907893 (and tp!403187 (inv!19443 (tokens!1882 thiss!10022)) e!907896))))

(declare-fun b!1422261 () Bool)

(declare-fun tp!403188 () Bool)

(assert (=> b!1422261 (= e!907891 (and (inv!19444 (c!233824 (tokens!1882 other!32))) tp!403188))))

(declare-fun res!643932 () Bool)

(assert (=> start!131128 (=> (not res!643932) (not e!907889))))

(assert (=> start!131128 (= res!643932 (= (rules!11190 thiss!10022) (rules!11190 other!32)))))

(assert (=> start!131128 e!907889))

(declare-fun inv!19445 (PrintableTokens!908) Bool)

(assert (=> start!131128 (and (inv!19445 thiss!10022) e!907893)))

(assert (=> start!131128 (and (inv!19445 other!32) e!907895)))

(declare-fun b!1422262 () Bool)

(assert (=> b!1422262 (= e!907892 e!907890)))

(declare-fun res!643934 () Bool)

(assert (=> b!1422262 (=> (not res!643934) (not e!907890))))

(declare-fun isEmpty!9066 (List!14743) Bool)

(assert (=> b!1422262 (= res!643934 (isEmpty!9066 lt!481146))))

(assert (=> b!1422262 (= lt!481146 (list!5817 (tokens!1882 thiss!10022)))))

(assert (= (and start!131128 res!643932) b!1422258))

(assert (= (and b!1422258 res!643933) b!1422254))

(assert (= (and b!1422254 res!643936) b!1422262))

(assert (= (and b!1422262 res!643934) b!1422259))

(assert (= (and b!1422259 res!643935) b!1422253))

(assert (= (and b!1422253 res!643931) b!1422255))

(assert (= b!1422260 b!1422257))

(assert (= start!131128 b!1422260))

(assert (= b!1422256 b!1422261))

(assert (= start!131128 b!1422256))

(declare-fun m!1613755 () Bool)

(assert (=> b!1422254 m!1613755))

(declare-fun m!1613757 () Bool)

(assert (=> b!1422262 m!1613757))

(declare-fun m!1613759 () Bool)

(assert (=> b!1422262 m!1613759))

(declare-fun m!1613761 () Bool)

(assert (=> start!131128 m!1613761))

(declare-fun m!1613763 () Bool)

(assert (=> start!131128 m!1613763))

(declare-fun m!1613765 () Bool)

(assert (=> b!1422261 m!1613765))

(declare-fun m!1613767 () Bool)

(assert (=> b!1422253 m!1613767))

(declare-fun m!1613769 () Bool)

(assert (=> b!1422253 m!1613769))

(declare-fun m!1613771 () Bool)

(assert (=> b!1422253 m!1613771))

(declare-fun m!1613773 () Bool)

(assert (=> b!1422253 m!1613773))

(declare-fun m!1613775 () Bool)

(assert (=> b!1422253 m!1613775))

(declare-fun m!1613777 () Bool)

(assert (=> b!1422253 m!1613777))

(declare-fun m!1613779 () Bool)

(assert (=> b!1422253 m!1613779))

(declare-fun m!1613781 () Bool)

(assert (=> b!1422253 m!1613781))

(declare-fun m!1613783 () Bool)

(assert (=> b!1422253 m!1613783))

(declare-fun m!1613785 () Bool)

(assert (=> b!1422253 m!1613785))

(assert (=> b!1422253 m!1613777))

(declare-fun m!1613787 () Bool)

(assert (=> b!1422253 m!1613787))

(declare-fun m!1613789 () Bool)

(assert (=> b!1422253 m!1613789))

(declare-fun m!1613791 () Bool)

(assert (=> b!1422259 m!1613791))

(declare-fun m!1613793 () Bool)

(assert (=> b!1422259 m!1613793))

(declare-fun m!1613795 () Bool)

(assert (=> b!1422259 m!1613795))

(declare-fun m!1613797 () Bool)

(assert (=> b!1422256 m!1613797))

(declare-fun m!1613799 () Bool)

(assert (=> b!1422257 m!1613799))

(declare-fun m!1613801 () Bool)

(assert (=> b!1422260 m!1613801))

(declare-fun m!1613803 () Bool)

(assert (=> b!1422258 m!1613803))

(declare-fun m!1613805 () Bool)

(assert (=> b!1422258 m!1613805))

(declare-fun m!1613807 () Bool)

(assert (=> b!1422258 m!1613807))

(check-sat (not b!1422257) (not start!131128) (not b!1422262) (not b!1422260) (not b!1422261) (not b!1422256) (not b!1422259) (not b!1422253) (not b!1422258) (not b!1422254))
(check-sat)
