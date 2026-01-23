; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131040 () Bool)

(assert start!131040)

(declare-fun b!1421814 () Bool)

(declare-datatypes ((C!7920 0))(
  ( (C!7921 (val!4530 Int)) )
))
(declare-datatypes ((List!14717 0))(
  ( (Nil!14651) (Cons!14651 (h!20052 C!7920) (t!124528 List!14717)) )
))
(declare-fun e!907594 () List!14717)

(declare-datatypes ((IArray!9885 0))(
  ( (IArray!9886 (innerList!5000 List!14717)) )
))
(declare-datatypes ((Conc!4940 0))(
  ( (Node!4940 (left!12521 Conc!4940) (right!12851 Conc!4940) (csize!10110 Int) (cheight!5151 Int)) (Leaf!7420 (xs!7669 IArray!9885) (csize!10111 Int)) (Empty!4940) )
))
(declare-datatypes ((BalanceConc!9820 0))(
  ( (BalanceConc!9821 (c!233750 Conc!4940)) )
))
(declare-datatypes ((List!14718 0))(
  ( (Nil!14652) (Cons!14652 (h!20053 (_ BitVec 16)) (t!124529 List!14718)) )
))
(declare-datatypes ((TokenValue!2647 0))(
  ( (FloatLiteralValue!5294 (text!18974 List!14718)) (TokenValueExt!2646 (__x!9096 Int)) (Broken!13235 (value!82496 List!14718)) (Object!2712) (End!2647) (Def!2647) (Underscore!2647) (Match!2647) (Else!2647) (Error!2647) (Case!2647) (If!2647) (Extends!2647) (Abstract!2647) (Class!2647) (Val!2647) (DelimiterValue!5294 (del!2707 List!14718)) (KeywordValue!2653 (value!82497 List!14718)) (CommentValue!5294 (value!82498 List!14718)) (WhitespaceValue!5294 (value!82499 List!14718)) (IndentationValue!2647 (value!82500 List!14718)) (String!17490) (Int32!2647) (Broken!13236 (value!82501 List!14718)) (Boolean!2648) (Unit!21957) (OperatorValue!2650 (op!2707 List!14718)) (IdentifierValue!5294 (value!82502 List!14718)) (IdentifierValue!5295 (value!82503 List!14718)) (WhitespaceValue!5295 (value!82504 List!14718)) (True!5294) (False!5294) (Broken!13237 (value!82505 List!14718)) (Broken!13238 (value!82506 List!14718)) (True!5295) (RightBrace!2647) (RightBracket!2647) (Colon!2647) (Null!2647) (Comma!2647) (LeftBracket!2647) (False!5295) (LeftBrace!2647) (ImaginaryLiteralValue!2647 (text!18975 List!14718)) (StringLiteralValue!7941 (value!82507 List!14718)) (EOFValue!2647 (value!82508 List!14718)) (IdentValue!2647 (value!82509 List!14718)) (DelimiterValue!5295 (value!82510 List!14718)) (DedentValue!2647 (value!82511 List!14718)) (NewLineValue!2647 (value!82512 List!14718)) (IntegerValue!7941 (value!82513 (_ BitVec 32)) (text!18976 List!14718)) (IntegerValue!7942 (value!82514 Int) (text!18977 List!14718)) (Times!2647) (Or!2647) (Equal!2647) (Minus!2647) (Broken!13239 (value!82515 List!14718)) (And!2647) (Div!2647) (LessEqual!2647) (Mod!2647) (Concat!6518) (Not!2647) (Plus!2647) (SpaceValue!2647 (value!82516 List!14718)) (IntegerValue!7943 (value!82517 Int) (text!18978 List!14718)) (StringLiteralValue!7942 (text!18979 List!14718)) (FloatLiteralValue!5295 (text!18980 List!14718)) (BytesLiteralValue!2647 (value!82518 List!14718)) (CommentValue!5295 (value!82519 List!14718)) (StringLiteralValue!7943 (value!82520 List!14718)) (ErrorTokenValue!2647 (msg!2708 List!14718)) )
))
(declare-datatypes ((Regex!3871 0))(
  ( (ElementMatch!3871 (c!233751 C!7920)) (Concat!6519 (regOne!8254 Regex!3871) (regTwo!8254 Regex!3871)) (EmptyExpr!3871) (Star!3871 (reg!4200 Regex!3871)) (EmptyLang!3871) (Union!3871 (regOne!8255 Regex!3871) (regTwo!8255 Regex!3871)) )
))
(declare-datatypes ((String!17491 0))(
  ( (String!17492 (value!82521 String)) )
))
(declare-datatypes ((TokenValueInjection!4954 0))(
  ( (TokenValueInjection!4955 (toValue!3856 Int) (toChars!3715 Int)) )
))
(declare-datatypes ((Rule!4914 0))(
  ( (Rule!4915 (regex!2557 Regex!3871) (tag!2819 String!17491) (isSeparator!2557 Bool) (transformation!2557 TokenValueInjection!4954)) )
))
(declare-datatypes ((Token!4776 0))(
  ( (Token!4777 (value!82522 TokenValue!2647) (rule!4320 Rule!4914) (size!12072 Int) (originalCharacters!3419 List!14717)) )
))
(declare-datatypes ((List!14719 0))(
  ( (Nil!14653) (Cons!14653 (h!20054 Token!4776) (t!124530 List!14719)) )
))
(declare-fun lt!480729 () List!14719)

(declare-fun ++!3872 (List!14717 List!14717) List!14717)

(declare-fun list!5806 (BalanceConc!9820) List!14717)

(declare-fun charsOf!1490 (Token!4776) BalanceConc!9820)

(declare-datatypes ((LexerInterface!2225 0))(
  ( (LexerInterfaceExt!2222 (__x!9097 Int)) (Lexer!2223) )
))
(declare-fun printList!679 (LexerInterface!2225 List!14719) List!14717)

(assert (=> b!1421814 (= e!907594 (++!3872 (list!5806 (charsOf!1490 (h!20054 lt!480729))) (printList!679 Lexer!2223 (t!124530 lt!480729))))))

(declare-fun b!1421815 () Bool)

(declare-fun e!907590 () Bool)

(declare-fun e!907595 () Bool)

(assert (=> b!1421815 (= e!907590 e!907595)))

(declare-fun res!643740 () Bool)

(assert (=> b!1421815 (=> res!643740 e!907595)))

(declare-datatypes ((IArray!9887 0))(
  ( (IArray!9888 (innerList!5001 List!14719)) )
))
(declare-datatypes ((Conc!4941 0))(
  ( (Node!4941 (left!12522 Conc!4941) (right!12852 Conc!4941) (csize!10112 Int) (cheight!5152 Int)) (Leaf!7421 (xs!7670 IArray!9887) (csize!10113 Int)) (Empty!4941) )
))
(declare-datatypes ((BalanceConc!9822 0))(
  ( (BalanceConc!9823 (c!233752 Conc!4941)) )
))
(declare-datatypes ((List!14720 0))(
  ( (Nil!14654) (Cons!14654 (h!20055 Rule!4914) (t!124531 List!14720)) )
))
(declare-datatypes ((PrintableTokens!896 0))(
  ( (PrintableTokens!897 (rules!11182 List!14720) (tokens!1874 BalanceConc!9822)) )
))
(declare-fun lt!480723 () PrintableTokens!896)

(declare-fun thiss!10022 () PrintableTokens!896)

(assert (=> b!1421815 (= res!643740 (not (= (rules!11182 lt!480723) (rules!11182 thiss!10022))))))

(declare-datatypes ((Option!2814 0))(
  ( (None!2813) (Some!2813 (v!22229 PrintableTokens!896)) )
))
(declare-fun lt!480733 () Option!2814)

(declare-fun get!4505 (Option!2814) PrintableTokens!896)

(assert (=> b!1421815 (= lt!480723 (get!4505 lt!480733))))

(declare-fun b!1421816 () Bool)

(declare-fun isDefined!2275 (Option!2814) Bool)

(assert (=> b!1421816 (= e!907595 (isDefined!2275 lt!480733))))

(declare-fun other!32 () PrintableTokens!896)

(declare-fun tp!403054 () Bool)

(declare-fun b!1421817 () Bool)

(declare-fun e!907597 () Bool)

(declare-fun e!907596 () Bool)

(declare-fun inv!19404 (BalanceConc!9822) Bool)

(assert (=> b!1421817 (= e!907597 (and tp!403054 (inv!19404 (tokens!1874 other!32)) e!907596))))

(declare-fun res!643739 () Bool)

(declare-fun e!907589 () Bool)

(assert (=> start!131040 (=> (not res!643739) (not e!907589))))

(assert (=> start!131040 (= res!643739 (= (rules!11182 thiss!10022) (rules!11182 other!32)))))

(assert (=> start!131040 e!907589))

(declare-fun e!907586 () Bool)

(declare-fun inv!19405 (PrintableTokens!896) Bool)

(assert (=> start!131040 (and (inv!19405 thiss!10022) e!907586)))

(assert (=> start!131040 (and (inv!19405 other!32) e!907597)))

(declare-fun b!1421818 () Bool)

(declare-fun tp!403053 () Bool)

(declare-fun inv!19406 (Conc!4941) Bool)

(assert (=> b!1421818 (= e!907596 (and (inv!19406 (c!233752 (tokens!1874 other!32))) tp!403053))))

(declare-fun b!1421819 () Bool)

(declare-fun e!907587 () Bool)

(assert (=> b!1421819 (= e!907587 e!907590)))

(declare-fun res!643735 () Bool)

(assert (=> b!1421819 (=> res!643735 e!907590)))

(declare-fun isEmpty!9043 (Option!2814) Bool)

(assert (=> b!1421819 (= res!643735 (isEmpty!9043 lt!480733))))

(assert (=> b!1421819 (= lt!480733 (Some!2813 thiss!10022))))

(declare-fun b!1421820 () Bool)

(declare-fun e!907591 () Bool)

(assert (=> b!1421820 (= e!907591 (not e!907587))))

(declare-fun res!643738 () Bool)

(assert (=> b!1421820 (=> res!643738 e!907587)))

(declare-fun lt!480725 () BalanceConc!9820)

(assert (=> b!1421820 (= res!643738 (not (= lt!480725 (BalanceConc!9821 Empty!4940))))))

(declare-fun e!907593 () Bool)

(assert (=> b!1421820 e!907593))

(declare-fun res!643736 () Bool)

(assert (=> b!1421820 (=> (not res!643736) (not e!907593))))

(declare-fun lt!480731 () BalanceConc!9820)

(assert (=> b!1421820 (= res!643736 (= lt!480731 lt!480725))))

(declare-fun print!1009 (LexerInterface!2225 BalanceConc!9822) BalanceConc!9820)

(assert (=> b!1421820 (= lt!480725 (print!1009 Lexer!2223 (tokens!1874 other!32)))))

(declare-fun print!1010 (PrintableTokens!896) BalanceConc!9820)

(assert (=> b!1421820 (= lt!480731 (print!1010 other!32))))

(declare-datatypes ((Unit!21958 0))(
  ( (Unit!21959) )
))
(declare-fun lt!480727 () Unit!21958)

(declare-fun theoremInvertabilityWhenTokenListSeparable!47 (LexerInterface!2225 List!14720 List!14719) Unit!21958)

(assert (=> b!1421820 (= lt!480727 (theoremInvertabilityWhenTokenListSeparable!47 Lexer!2223 (rules!11182 other!32) lt!480729))))

(declare-fun list!5807 (BalanceConc!9822) List!14719)

(assert (=> b!1421820 (= lt!480729 (list!5807 (tokens!1874 other!32)))))

(assert (=> b!1421820 (= (print!1010 thiss!10022) (print!1009 Lexer!2223 (tokens!1874 thiss!10022)))))

(declare-fun lt!480721 () Unit!21958)

(declare-fun lt!480726 () List!14719)

(assert (=> b!1421820 (= lt!480721 (theoremInvertabilityWhenTokenListSeparable!47 Lexer!2223 (rules!11182 thiss!10022) lt!480726))))

(declare-fun e!907588 () Bool)

(assert (=> b!1421820 e!907588))

(declare-fun res!643737 () Bool)

(assert (=> b!1421820 (=> (not res!643737) (not e!907588))))

(declare-fun lt!480732 () List!14719)

(declare-fun lt!480722 () List!14717)

(declare-fun lt!480734 () List!14717)

(assert (=> b!1421820 (= res!643737 (= (printList!679 Lexer!2223 lt!480732) (++!3872 lt!480722 lt!480734)))))

(assert (=> b!1421820 (= lt!480734 (printList!679 Lexer!2223 Nil!14653))))

(assert (=> b!1421820 (= lt!480722 (printList!679 Lexer!2223 lt!480726))))

(declare-fun ++!3873 (List!14719 List!14719) List!14719)

(assert (=> b!1421820 (= lt!480732 (++!3873 lt!480726 Nil!14653))))

(declare-fun lt!480728 () Unit!21958)

(declare-fun lemmaPrintConcatSameAsConcatPrint!44 (LexerInterface!2225 List!14719 List!14719) Unit!21958)

(assert (=> b!1421820 (= lt!480728 (lemmaPrintConcatSameAsConcatPrint!44 Lexer!2223 lt!480726 Nil!14653))))

(assert (=> b!1421820 (= lt!480726 (list!5807 (tokens!1874 thiss!10022)))))

(declare-fun b!1421821 () Bool)

(assert (=> b!1421821 (= e!907589 e!907591)))

(declare-fun res!643741 () Bool)

(assert (=> b!1421821 (=> (not res!643741) (not e!907591))))

(declare-fun isEmpty!9044 (BalanceConc!9822) Bool)

(assert (=> b!1421821 (= res!643741 (isEmpty!9044 (tokens!1874 other!32)))))

(declare-fun lt!480724 () Unit!21958)

(declare-fun lemmaInvariant!253 (PrintableTokens!896) Unit!21958)

(assert (=> b!1421821 (= lt!480724 (lemmaInvariant!253 thiss!10022))))

(declare-fun lt!480730 () Unit!21958)

(assert (=> b!1421821 (= lt!480730 (lemmaInvariant!253 other!32))))

(declare-fun b!1421822 () Bool)

(assert (=> b!1421822 (= e!907588 (= lt!480734 Nil!14651))))

(declare-fun b!1421823 () Bool)

(declare-fun res!643742 () Bool)

(assert (=> b!1421823 (=> res!643742 e!907595)))

(assert (=> b!1421823 (= res!643742 (not (= (list!5807 (tokens!1874 lt!480723)) (++!3873 lt!480726 lt!480729))))))

(declare-fun b!1421824 () Bool)

(assert (=> b!1421824 (= e!907594 Nil!14651)))

(declare-fun b!1421825 () Bool)

(declare-fun e!907592 () Bool)

(declare-fun tp!403052 () Bool)

(assert (=> b!1421825 (= e!907592 (and (inv!19406 (c!233752 (tokens!1874 thiss!10022))) tp!403052))))

(declare-fun tp!403051 () Bool)

(declare-fun b!1421826 () Bool)

(assert (=> b!1421826 (= e!907586 (and tp!403051 (inv!19404 (tokens!1874 thiss!10022)) e!907592))))

(declare-fun b!1421827 () Bool)

(declare-fun res!643734 () Bool)

(assert (=> b!1421827 (=> (not res!643734) (not e!907593))))

(declare-fun printTailRec!657 (LexerInterface!2225 BalanceConc!9822 Int BalanceConc!9820) BalanceConc!9820)

(assert (=> b!1421827 (= res!643734 (= lt!480725 (printTailRec!657 Lexer!2223 (tokens!1874 other!32) 0 (BalanceConc!9821 Empty!4940))))))

(declare-fun b!1421828 () Bool)

(assert (=> b!1421828 (= e!907593 (= (printList!679 Lexer!2223 lt!480729) e!907594))))

(declare-fun c!233749 () Bool)

(get-info :version)

(assert (=> b!1421828 (= c!233749 ((_ is Cons!14653) lt!480729))))

(assert (= (and start!131040 res!643739) b!1421821))

(assert (= (and b!1421821 res!643741) b!1421820))

(assert (= (and b!1421820 res!643737) b!1421822))

(assert (= (and b!1421820 res!643736) b!1421827))

(assert (= (and b!1421827 res!643734) b!1421828))

(assert (= (and b!1421828 c!233749) b!1421814))

(assert (= (and b!1421828 (not c!233749)) b!1421824))

(assert (= (and b!1421820 (not res!643738)) b!1421819))

(assert (= (and b!1421819 (not res!643735)) b!1421815))

(assert (= (and b!1421815 (not res!643740)) b!1421823))

(assert (= (and b!1421823 (not res!643742)) b!1421816))

(assert (= b!1421826 b!1421825))

(assert (= start!131040 b!1421826))

(assert (= b!1421817 b!1421818))

(assert (= start!131040 b!1421817))

(declare-fun m!1612737 () Bool)

(assert (=> b!1421814 m!1612737))

(assert (=> b!1421814 m!1612737))

(declare-fun m!1612739 () Bool)

(assert (=> b!1421814 m!1612739))

(declare-fun m!1612741 () Bool)

(assert (=> b!1421814 m!1612741))

(assert (=> b!1421814 m!1612739))

(assert (=> b!1421814 m!1612741))

(declare-fun m!1612743 () Bool)

(assert (=> b!1421814 m!1612743))

(declare-fun m!1612745 () Bool)

(assert (=> b!1421821 m!1612745))

(declare-fun m!1612747 () Bool)

(assert (=> b!1421821 m!1612747))

(declare-fun m!1612749 () Bool)

(assert (=> b!1421821 m!1612749))

(declare-fun m!1612751 () Bool)

(assert (=> b!1421820 m!1612751))

(declare-fun m!1612753 () Bool)

(assert (=> b!1421820 m!1612753))

(declare-fun m!1612755 () Bool)

(assert (=> b!1421820 m!1612755))

(declare-fun m!1612757 () Bool)

(assert (=> b!1421820 m!1612757))

(declare-fun m!1612759 () Bool)

(assert (=> b!1421820 m!1612759))

(declare-fun m!1612761 () Bool)

(assert (=> b!1421820 m!1612761))

(declare-fun m!1612763 () Bool)

(assert (=> b!1421820 m!1612763))

(declare-fun m!1612765 () Bool)

(assert (=> b!1421820 m!1612765))

(declare-fun m!1612767 () Bool)

(assert (=> b!1421820 m!1612767))

(declare-fun m!1612769 () Bool)

(assert (=> b!1421820 m!1612769))

(declare-fun m!1612771 () Bool)

(assert (=> b!1421820 m!1612771))

(declare-fun m!1612773 () Bool)

(assert (=> b!1421820 m!1612773))

(declare-fun m!1612775 () Bool)

(assert (=> b!1421820 m!1612775))

(declare-fun m!1612777 () Bool)

(assert (=> b!1421820 m!1612777))

(declare-fun m!1612779 () Bool)

(assert (=> b!1421827 m!1612779))

(declare-fun m!1612781 () Bool)

(assert (=> b!1421819 m!1612781))

(declare-fun m!1612783 () Bool)

(assert (=> b!1421825 m!1612783))

(declare-fun m!1612785 () Bool)

(assert (=> b!1421815 m!1612785))

(declare-fun m!1612787 () Bool)

(assert (=> b!1421823 m!1612787))

(declare-fun m!1612789 () Bool)

(assert (=> b!1421823 m!1612789))

(declare-fun m!1612791 () Bool)

(assert (=> start!131040 m!1612791))

(declare-fun m!1612793 () Bool)

(assert (=> start!131040 m!1612793))

(declare-fun m!1612795 () Bool)

(assert (=> b!1421828 m!1612795))

(declare-fun m!1612797 () Bool)

(assert (=> b!1421826 m!1612797))

(declare-fun m!1612799 () Bool)

(assert (=> b!1421818 m!1612799))

(declare-fun m!1612801 () Bool)

(assert (=> b!1421817 m!1612801))

(declare-fun m!1612803 () Bool)

(assert (=> b!1421816 m!1612803))

(check-sat (not b!1421817) (not b!1421828) (not b!1421818) (not start!131040) (not b!1421825) (not b!1421820) (not b!1421826) (not b!1421823) (not b!1421816) (not b!1421815) (not b!1421827) (not b!1421819) (not b!1421814) (not b!1421821))
(check-sat)
(get-model)

(declare-fun d!407274 () Bool)

(declare-fun list!5810 (Conc!4941) List!14719)

(assert (=> d!407274 (= (list!5807 (tokens!1874 lt!480723)) (list!5810 (c!233752 (tokens!1874 lt!480723))))))

(declare-fun bs!339821 () Bool)

(assert (= bs!339821 d!407274))

(declare-fun m!1612805 () Bool)

(assert (=> bs!339821 m!1612805))

(assert (=> b!1421823 d!407274))

(declare-fun e!907602 () Bool)

(declare-fun b!1421840 () Bool)

(declare-fun lt!480737 () List!14719)

(assert (=> b!1421840 (= e!907602 (or (not (= lt!480729 Nil!14653)) (= lt!480737 lt!480726)))))

(declare-fun d!407276 () Bool)

(assert (=> d!407276 e!907602))

(declare-fun res!643747 () Bool)

(assert (=> d!407276 (=> (not res!643747) (not e!907602))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2163 (List!14719) (InoxSet Token!4776))

(assert (=> d!407276 (= res!643747 (= (content!2163 lt!480737) ((_ map or) (content!2163 lt!480726) (content!2163 lt!480729))))))

(declare-fun e!907603 () List!14719)

(assert (=> d!407276 (= lt!480737 e!907603)))

(declare-fun c!233755 () Bool)

(assert (=> d!407276 (= c!233755 ((_ is Nil!14653) lt!480726))))

(assert (=> d!407276 (= (++!3873 lt!480726 lt!480729) lt!480737)))

(declare-fun b!1421839 () Bool)

(declare-fun res!643748 () Bool)

(assert (=> b!1421839 (=> (not res!643748) (not e!907602))))

(declare-fun size!12076 (List!14719) Int)

(assert (=> b!1421839 (= res!643748 (= (size!12076 lt!480737) (+ (size!12076 lt!480726) (size!12076 lt!480729))))))

(declare-fun b!1421837 () Bool)

(assert (=> b!1421837 (= e!907603 lt!480729)))

(declare-fun b!1421838 () Bool)

(assert (=> b!1421838 (= e!907603 (Cons!14653 (h!20054 lt!480726) (++!3873 (t!124530 lt!480726) lt!480729)))))

(assert (= (and d!407276 c!233755) b!1421837))

(assert (= (and d!407276 (not c!233755)) b!1421838))

(assert (= (and d!407276 res!643747) b!1421839))

(assert (= (and b!1421839 res!643748) b!1421840))

(declare-fun m!1612807 () Bool)

(assert (=> d!407276 m!1612807))

(declare-fun m!1612809 () Bool)

(assert (=> d!407276 m!1612809))

(declare-fun m!1612811 () Bool)

(assert (=> d!407276 m!1612811))

(declare-fun m!1612813 () Bool)

(assert (=> b!1421839 m!1612813))

(declare-fun m!1612815 () Bool)

(assert (=> b!1421839 m!1612815))

(declare-fun m!1612817 () Bool)

(assert (=> b!1421839 m!1612817))

(declare-fun m!1612819 () Bool)

(assert (=> b!1421838 m!1612819))

(assert (=> b!1421823 d!407276))

(declare-fun d!407278 () Bool)

(declare-fun isBalanced!1472 (Conc!4941) Bool)

(assert (=> d!407278 (= (inv!19404 (tokens!1874 thiss!10022)) (isBalanced!1472 (c!233752 (tokens!1874 thiss!10022))))))

(declare-fun bs!339822 () Bool)

(assert (= bs!339822 d!407278))

(declare-fun m!1612821 () Bool)

(assert (=> bs!339822 m!1612821))

(assert (=> b!1421826 d!407278))

(declare-fun d!407280 () Bool)

(declare-fun res!643779 () Bool)

(declare-fun e!907627 () Bool)

(assert (=> d!407280 (=> (not res!643779) (not e!907627))))

(declare-fun isEmpty!9050 (List!14720) Bool)

(assert (=> d!407280 (= res!643779 (not (isEmpty!9050 (rules!11182 thiss!10022))))))

(assert (=> d!407280 (= (inv!19405 thiss!10022) e!907627)))

(declare-fun b!1421889 () Bool)

(declare-fun res!643780 () Bool)

(assert (=> b!1421889 (=> (not res!643780) (not e!907627))))

(declare-fun rulesInvariant!2087 (LexerInterface!2225 List!14720) Bool)

(assert (=> b!1421889 (= res!643780 (rulesInvariant!2087 Lexer!2223 (rules!11182 thiss!10022)))))

(declare-fun b!1421890 () Bool)

(declare-fun res!643781 () Bool)

(assert (=> b!1421890 (=> (not res!643781) (not e!907627))))

(declare-fun rulesProduceEachTokenIndividually!814 (LexerInterface!2225 List!14720 BalanceConc!9822) Bool)

(assert (=> b!1421890 (= res!643781 (rulesProduceEachTokenIndividually!814 Lexer!2223 (rules!11182 thiss!10022) (tokens!1874 thiss!10022)))))

(declare-fun b!1421891 () Bool)

(declare-fun separableTokens!199 (LexerInterface!2225 BalanceConc!9822 List!14720) Bool)

(assert (=> b!1421891 (= e!907627 (separableTokens!199 Lexer!2223 (tokens!1874 thiss!10022) (rules!11182 thiss!10022)))))

(assert (= (and d!407280 res!643779) b!1421889))

(assert (= (and b!1421889 res!643780) b!1421890))

(assert (= (and b!1421890 res!643781) b!1421891))

(declare-fun m!1612883 () Bool)

(assert (=> d!407280 m!1612883))

(declare-fun m!1612885 () Bool)

(assert (=> b!1421889 m!1612885))

(declare-fun m!1612887 () Bool)

(assert (=> b!1421890 m!1612887))

(declare-fun m!1612889 () Bool)

(assert (=> b!1421891 m!1612889))

(assert (=> start!131040 d!407280))

(declare-fun d!407308 () Bool)

(declare-fun res!643782 () Bool)

(declare-fun e!907628 () Bool)

(assert (=> d!407308 (=> (not res!643782) (not e!907628))))

(assert (=> d!407308 (= res!643782 (not (isEmpty!9050 (rules!11182 other!32))))))

(assert (=> d!407308 (= (inv!19405 other!32) e!907628)))

(declare-fun b!1421892 () Bool)

(declare-fun res!643783 () Bool)

(assert (=> b!1421892 (=> (not res!643783) (not e!907628))))

(assert (=> b!1421892 (= res!643783 (rulesInvariant!2087 Lexer!2223 (rules!11182 other!32)))))

(declare-fun b!1421893 () Bool)

(declare-fun res!643784 () Bool)

(assert (=> b!1421893 (=> (not res!643784) (not e!907628))))

(assert (=> b!1421893 (= res!643784 (rulesProduceEachTokenIndividually!814 Lexer!2223 (rules!11182 other!32) (tokens!1874 other!32)))))

(declare-fun b!1421894 () Bool)

(assert (=> b!1421894 (= e!907628 (separableTokens!199 Lexer!2223 (tokens!1874 other!32) (rules!11182 other!32)))))

(assert (= (and d!407308 res!643782) b!1421892))

(assert (= (and b!1421892 res!643783) b!1421893))

(assert (= (and b!1421893 res!643784) b!1421894))

(declare-fun m!1612891 () Bool)

(assert (=> d!407308 m!1612891))

(declare-fun m!1612893 () Bool)

(assert (=> b!1421892 m!1612893))

(declare-fun m!1612895 () Bool)

(assert (=> b!1421893 m!1612895))

(declare-fun m!1612897 () Bool)

(assert (=> b!1421894 m!1612897))

(assert (=> start!131040 d!407308))

(declare-fun d!407310 () Bool)

(assert (=> d!407310 (= (isDefined!2275 lt!480733) (not (isEmpty!9043 lt!480733)))))

(declare-fun bs!339828 () Bool)

(assert (= bs!339828 d!407310))

(assert (=> bs!339828 m!1612781))

(assert (=> b!1421816 d!407310))

(declare-fun d!407312 () Bool)

(declare-fun lt!480766 () BalanceConc!9820)

(declare-fun printListTailRec!271 (LexerInterface!2225 List!14719 List!14717) List!14717)

(declare-fun dropList!444 (BalanceConc!9822 Int) List!14719)

(assert (=> d!407312 (= (list!5806 lt!480766) (printListTailRec!271 Lexer!2223 (dropList!444 (tokens!1874 other!32) 0) (list!5806 (BalanceConc!9821 Empty!4940))))))

(declare-fun e!907638 () BalanceConc!9820)

(assert (=> d!407312 (= lt!480766 e!907638)))

(declare-fun c!233768 () Bool)

(declare-fun size!12077 (BalanceConc!9822) Int)

(assert (=> d!407312 (= c!233768 (>= 0 (size!12077 (tokens!1874 other!32))))))

(declare-fun e!907637 () Bool)

(assert (=> d!407312 e!907637))

(declare-fun res!643795 () Bool)

(assert (=> d!407312 (=> (not res!643795) (not e!907637))))

(assert (=> d!407312 (= res!643795 (>= 0 0))))

(assert (=> d!407312 (= (printTailRec!657 Lexer!2223 (tokens!1874 other!32) 0 (BalanceConc!9821 Empty!4940)) lt!480766)))

(declare-fun b!1421909 () Bool)

(assert (=> b!1421909 (= e!907637 (<= 0 (size!12077 (tokens!1874 other!32))))))

(declare-fun b!1421910 () Bool)

(assert (=> b!1421910 (= e!907638 (BalanceConc!9821 Empty!4940))))

(declare-fun b!1421911 () Bool)

(declare-fun ++!3875 (BalanceConc!9820 BalanceConc!9820) BalanceConc!9820)

(declare-fun apply!3740 (BalanceConc!9822 Int) Token!4776)

(assert (=> b!1421911 (= e!907638 (printTailRec!657 Lexer!2223 (tokens!1874 other!32) (+ 0 1) (++!3875 (BalanceConc!9821 Empty!4940) (charsOf!1490 (apply!3740 (tokens!1874 other!32) 0)))))))

(declare-fun lt!480762 () List!14719)

(assert (=> b!1421911 (= lt!480762 (list!5807 (tokens!1874 other!32)))))

(declare-fun lt!480767 () Unit!21958)

(declare-fun lemmaDropApply!466 (List!14719 Int) Unit!21958)

(assert (=> b!1421911 (= lt!480767 (lemmaDropApply!466 lt!480762 0))))

(declare-fun head!2797 (List!14719) Token!4776)

(declare-fun drop!712 (List!14719 Int) List!14719)

(declare-fun apply!3741 (List!14719 Int) Token!4776)

(assert (=> b!1421911 (= (head!2797 (drop!712 lt!480762 0)) (apply!3741 lt!480762 0))))

(declare-fun lt!480763 () Unit!21958)

(assert (=> b!1421911 (= lt!480763 lt!480767)))

(declare-fun lt!480765 () List!14719)

(assert (=> b!1421911 (= lt!480765 (list!5807 (tokens!1874 other!32)))))

(declare-fun lt!480764 () Unit!21958)

(declare-fun lemmaDropTail!446 (List!14719 Int) Unit!21958)

(assert (=> b!1421911 (= lt!480764 (lemmaDropTail!446 lt!480765 0))))

(declare-fun tail!2136 (List!14719) List!14719)

(assert (=> b!1421911 (= (tail!2136 (drop!712 lt!480765 0)) (drop!712 lt!480765 (+ 0 1)))))

(declare-fun lt!480761 () Unit!21958)

(assert (=> b!1421911 (= lt!480761 lt!480764)))

(assert (= (and d!407312 res!643795) b!1421909))

(assert (= (and d!407312 c!233768) b!1421910))

(assert (= (and d!407312 (not c!233768)) b!1421911))

(declare-fun m!1612899 () Bool)

(assert (=> d!407312 m!1612899))

(declare-fun m!1612901 () Bool)

(assert (=> d!407312 m!1612901))

(declare-fun m!1612903 () Bool)

(assert (=> d!407312 m!1612903))

(assert (=> d!407312 m!1612901))

(declare-fun m!1612905 () Bool)

(assert (=> d!407312 m!1612905))

(assert (=> d!407312 m!1612899))

(declare-fun m!1612907 () Bool)

(assert (=> d!407312 m!1612907))

(assert (=> b!1421909 m!1612905))

(declare-fun m!1612909 () Bool)

(assert (=> b!1421911 m!1612909))

(declare-fun m!1612911 () Bool)

(assert (=> b!1421911 m!1612911))

(declare-fun m!1612913 () Bool)

(assert (=> b!1421911 m!1612913))

(assert (=> b!1421911 m!1612909))

(declare-fun m!1612915 () Bool)

(assert (=> b!1421911 m!1612915))

(declare-fun m!1612917 () Bool)

(assert (=> b!1421911 m!1612917))

(declare-fun m!1612919 () Bool)

(assert (=> b!1421911 m!1612919))

(assert (=> b!1421911 m!1612915))

(assert (=> b!1421911 m!1612773))

(assert (=> b!1421911 m!1612919))

(declare-fun m!1612921 () Bool)

(assert (=> b!1421911 m!1612921))

(assert (=> b!1421911 m!1612917))

(declare-fun m!1612923 () Bool)

(assert (=> b!1421911 m!1612923))

(declare-fun m!1612925 () Bool)

(assert (=> b!1421911 m!1612925))

(declare-fun m!1612927 () Bool)

(assert (=> b!1421911 m!1612927))

(declare-fun m!1612929 () Bool)

(assert (=> b!1421911 m!1612929))

(declare-fun m!1612931 () Bool)

(assert (=> b!1421911 m!1612931))

(assert (=> b!1421911 m!1612929))

(assert (=> b!1421827 d!407312))

(declare-fun d!407318 () Bool)

(declare-fun e!907643 () Bool)

(assert (=> d!407318 e!907643))

(declare-fun res!643800 () Bool)

(assert (=> d!407318 (=> (not res!643800) (not e!907643))))

(declare-fun lt!480770 () List!14717)

(declare-fun content!2164 (List!14717) (InoxSet C!7920))

(assert (=> d!407318 (= res!643800 (= (content!2164 lt!480770) ((_ map or) (content!2164 (list!5806 (charsOf!1490 (h!20054 lt!480729)))) (content!2164 (printList!679 Lexer!2223 (t!124530 lt!480729))))))))

(declare-fun e!907644 () List!14717)

(assert (=> d!407318 (= lt!480770 e!907644)))

(declare-fun c!233771 () Bool)

(assert (=> d!407318 (= c!233771 ((_ is Nil!14651) (list!5806 (charsOf!1490 (h!20054 lt!480729)))))))

(assert (=> d!407318 (= (++!3872 (list!5806 (charsOf!1490 (h!20054 lt!480729))) (printList!679 Lexer!2223 (t!124530 lt!480729))) lt!480770)))

(declare-fun b!1421923 () Bool)

(assert (=> b!1421923 (= e!907643 (or (not (= (printList!679 Lexer!2223 (t!124530 lt!480729)) Nil!14651)) (= lt!480770 (list!5806 (charsOf!1490 (h!20054 lt!480729))))))))

(declare-fun b!1421921 () Bool)

(assert (=> b!1421921 (= e!907644 (Cons!14651 (h!20052 (list!5806 (charsOf!1490 (h!20054 lt!480729)))) (++!3872 (t!124528 (list!5806 (charsOf!1490 (h!20054 lt!480729)))) (printList!679 Lexer!2223 (t!124530 lt!480729)))))))

(declare-fun b!1421922 () Bool)

(declare-fun res!643801 () Bool)

(assert (=> b!1421922 (=> (not res!643801) (not e!907643))))

(declare-fun size!12078 (List!14717) Int)

(assert (=> b!1421922 (= res!643801 (= (size!12078 lt!480770) (+ (size!12078 (list!5806 (charsOf!1490 (h!20054 lt!480729)))) (size!12078 (printList!679 Lexer!2223 (t!124530 lt!480729))))))))

(declare-fun b!1421920 () Bool)

(assert (=> b!1421920 (= e!907644 (printList!679 Lexer!2223 (t!124530 lt!480729)))))

(assert (= (and d!407318 c!233771) b!1421920))

(assert (= (and d!407318 (not c!233771)) b!1421921))

(assert (= (and d!407318 res!643800) b!1421922))

(assert (= (and b!1421922 res!643801) b!1421923))

(declare-fun m!1612933 () Bool)

(assert (=> d!407318 m!1612933))

(assert (=> d!407318 m!1612739))

(declare-fun m!1612935 () Bool)

(assert (=> d!407318 m!1612935))

(assert (=> d!407318 m!1612741))

(declare-fun m!1612937 () Bool)

(assert (=> d!407318 m!1612937))

(assert (=> b!1421921 m!1612741))

(declare-fun m!1612939 () Bool)

(assert (=> b!1421921 m!1612939))

(declare-fun m!1612941 () Bool)

(assert (=> b!1421922 m!1612941))

(assert (=> b!1421922 m!1612739))

(declare-fun m!1612943 () Bool)

(assert (=> b!1421922 m!1612943))

(assert (=> b!1421922 m!1612741))

(declare-fun m!1612945 () Bool)

(assert (=> b!1421922 m!1612945))

(assert (=> b!1421814 d!407318))

(declare-fun d!407320 () Bool)

(declare-fun list!5811 (Conc!4940) List!14717)

(assert (=> d!407320 (= (list!5806 (charsOf!1490 (h!20054 lt!480729))) (list!5811 (c!233750 (charsOf!1490 (h!20054 lt!480729)))))))

(declare-fun bs!339829 () Bool)

(assert (= bs!339829 d!407320))

(declare-fun m!1612947 () Bool)

(assert (=> bs!339829 m!1612947))

(assert (=> b!1421814 d!407320))

(declare-fun d!407322 () Bool)

(declare-fun lt!480773 () BalanceConc!9820)

(assert (=> d!407322 (= (list!5806 lt!480773) (originalCharacters!3419 (h!20054 lt!480729)))))

(declare-fun dynLambda!6734 (Int TokenValue!2647) BalanceConc!9820)

(assert (=> d!407322 (= lt!480773 (dynLambda!6734 (toChars!3715 (transformation!2557 (rule!4320 (h!20054 lt!480729)))) (value!82522 (h!20054 lt!480729))))))

(assert (=> d!407322 (= (charsOf!1490 (h!20054 lt!480729)) lt!480773)))

(declare-fun b_lambda!44637 () Bool)

(assert (=> (not b_lambda!44637) (not d!407322)))

(declare-fun bs!339830 () Bool)

(assert (= bs!339830 d!407322))

(declare-fun m!1612949 () Bool)

(assert (=> bs!339830 m!1612949))

(declare-fun m!1612951 () Bool)

(assert (=> bs!339830 m!1612951))

(assert (=> b!1421814 d!407322))

(declare-fun d!407324 () Bool)

(declare-fun c!233776 () Bool)

(assert (=> d!407324 (= c!233776 ((_ is Cons!14653) (t!124530 lt!480729)))))

(declare-fun e!907651 () List!14717)

(assert (=> d!407324 (= (printList!679 Lexer!2223 (t!124530 lt!480729)) e!907651)))

(declare-fun b!1421934 () Bool)

(assert (=> b!1421934 (= e!907651 (++!3872 (list!5806 (charsOf!1490 (h!20054 (t!124530 lt!480729)))) (printList!679 Lexer!2223 (t!124530 (t!124530 lt!480729)))))))

(declare-fun b!1421935 () Bool)

(assert (=> b!1421935 (= e!907651 Nil!14651)))

(assert (= (and d!407324 c!233776) b!1421934))

(assert (= (and d!407324 (not c!233776)) b!1421935))

(declare-fun m!1612953 () Bool)

(assert (=> b!1421934 m!1612953))

(assert (=> b!1421934 m!1612953))

(declare-fun m!1612955 () Bool)

(assert (=> b!1421934 m!1612955))

(declare-fun m!1612957 () Bool)

(assert (=> b!1421934 m!1612957))

(assert (=> b!1421934 m!1612955))

(assert (=> b!1421934 m!1612957))

(declare-fun m!1612959 () Bool)

(assert (=> b!1421934 m!1612959))

(assert (=> b!1421814 d!407324))

(declare-fun d!407326 () Bool)

(declare-fun c!233781 () Bool)

(assert (=> d!407326 (= c!233781 ((_ is Node!4941) (c!233752 (tokens!1874 thiss!10022))))))

(declare-fun e!907659 () Bool)

(assert (=> d!407326 (= (inv!19406 (c!233752 (tokens!1874 thiss!10022))) e!907659)))

(declare-fun b!1421947 () Bool)

(declare-fun inv!19409 (Conc!4941) Bool)

(assert (=> b!1421947 (= e!907659 (inv!19409 (c!233752 (tokens!1874 thiss!10022))))))

(declare-fun b!1421948 () Bool)

(declare-fun e!907660 () Bool)

(assert (=> b!1421948 (= e!907659 e!907660)))

(declare-fun res!643807 () Bool)

(assert (=> b!1421948 (= res!643807 (not ((_ is Leaf!7421) (c!233752 (tokens!1874 thiss!10022)))))))

(assert (=> b!1421948 (=> res!643807 e!907660)))

(declare-fun b!1421949 () Bool)

(declare-fun inv!19410 (Conc!4941) Bool)

(assert (=> b!1421949 (= e!907660 (inv!19410 (c!233752 (tokens!1874 thiss!10022))))))

(assert (= (and d!407326 c!233781) b!1421947))

(assert (= (and d!407326 (not c!233781)) b!1421948))

(assert (= (and b!1421948 (not res!643807)) b!1421949))

(declare-fun m!1612995 () Bool)

(assert (=> b!1421947 m!1612995))

(declare-fun m!1612997 () Bool)

(assert (=> b!1421949 m!1612997))

(assert (=> b!1421825 d!407326))

(declare-fun d!407330 () Bool)

(assert (=> d!407330 (= (get!4505 lt!480733) (v!22229 lt!480733))))

(assert (=> b!1421815 d!407330))

(declare-fun d!407334 () Bool)

(declare-fun c!233782 () Bool)

(assert (=> d!407334 (= c!233782 ((_ is Node!4941) (c!233752 (tokens!1874 other!32))))))

(declare-fun e!907661 () Bool)

(assert (=> d!407334 (= (inv!19406 (c!233752 (tokens!1874 other!32))) e!907661)))

(declare-fun b!1421950 () Bool)

(assert (=> b!1421950 (= e!907661 (inv!19409 (c!233752 (tokens!1874 other!32))))))

(declare-fun b!1421951 () Bool)

(declare-fun e!907662 () Bool)

(assert (=> b!1421951 (= e!907661 e!907662)))

(declare-fun res!643808 () Bool)

(assert (=> b!1421951 (= res!643808 (not ((_ is Leaf!7421) (c!233752 (tokens!1874 other!32)))))))

(assert (=> b!1421951 (=> res!643808 e!907662)))

(declare-fun b!1421952 () Bool)

(assert (=> b!1421952 (= e!907662 (inv!19410 (c!233752 (tokens!1874 other!32))))))

(assert (= (and d!407334 c!233782) b!1421950))

(assert (= (and d!407334 (not c!233782)) b!1421951))

(assert (= (and b!1421951 (not res!643808)) b!1421952))

(declare-fun m!1612999 () Bool)

(assert (=> b!1421950 m!1612999))

(declare-fun m!1613001 () Bool)

(assert (=> b!1421952 m!1613001))

(assert (=> b!1421818 d!407334))

(declare-fun d!407336 () Bool)

(assert (=> d!407336 (= (isEmpty!9043 lt!480733) (not ((_ is Some!2813) lt!480733)))))

(assert (=> b!1421819 d!407336))

(declare-fun d!407338 () Bool)

(assert (=> d!407338 (= (inv!19404 (tokens!1874 other!32)) (isBalanced!1472 (c!233752 (tokens!1874 other!32))))))

(declare-fun bs!339832 () Bool)

(assert (= bs!339832 d!407338))

(declare-fun m!1613005 () Bool)

(assert (=> bs!339832 m!1613005))

(assert (=> b!1421817 d!407338))

(declare-fun d!407342 () Bool)

(declare-fun c!233783 () Bool)

(assert (=> d!407342 (= c!233783 ((_ is Cons!14653) lt!480729))))

(declare-fun e!907663 () List!14717)

(assert (=> d!407342 (= (printList!679 Lexer!2223 lt!480729) e!907663)))

(declare-fun b!1421953 () Bool)

(assert (=> b!1421953 (= e!907663 (++!3872 (list!5806 (charsOf!1490 (h!20054 lt!480729))) (printList!679 Lexer!2223 (t!124530 lt!480729))))))

(declare-fun b!1421954 () Bool)

(assert (=> b!1421954 (= e!907663 Nil!14651)))

(assert (= (and d!407342 c!233783) b!1421953))

(assert (= (and d!407342 (not c!233783)) b!1421954))

(assert (=> b!1421953 m!1612737))

(assert (=> b!1421953 m!1612737))

(assert (=> b!1421953 m!1612739))

(assert (=> b!1421953 m!1612741))

(assert (=> b!1421953 m!1612739))

(assert (=> b!1421953 m!1612741))

(assert (=> b!1421953 m!1612743))

(assert (=> b!1421828 d!407342))

(declare-fun d!407344 () Bool)

(declare-fun lt!480799 () Bool)

(declare-fun isEmpty!9051 (List!14719) Bool)

(assert (=> d!407344 (= lt!480799 (isEmpty!9051 (list!5807 (tokens!1874 other!32))))))

(declare-fun isEmpty!9052 (Conc!4941) Bool)

(assert (=> d!407344 (= lt!480799 (isEmpty!9052 (c!233752 (tokens!1874 other!32))))))

(assert (=> d!407344 (= (isEmpty!9044 (tokens!1874 other!32)) lt!480799)))

(declare-fun bs!339833 () Bool)

(assert (= bs!339833 d!407344))

(assert (=> bs!339833 m!1612773))

(assert (=> bs!339833 m!1612773))

(declare-fun m!1613007 () Bool)

(assert (=> bs!339833 m!1613007))

(declare-fun m!1613009 () Bool)

(assert (=> bs!339833 m!1613009))

(assert (=> b!1421821 d!407344))

(declare-fun d!407346 () Bool)

(declare-fun e!907673 () Bool)

(assert (=> d!407346 e!907673))

(declare-fun res!643819 () Bool)

(assert (=> d!407346 (=> (not res!643819) (not e!907673))))

(assert (=> d!407346 (= res!643819 (rulesInvariant!2087 Lexer!2223 (rules!11182 thiss!10022)))))

(declare-fun Unit!21990 () Unit!21958)

(assert (=> d!407346 (= (lemmaInvariant!253 thiss!10022) Unit!21990)))

(declare-fun b!1421973 () Bool)

(declare-fun res!643820 () Bool)

(assert (=> b!1421973 (=> (not res!643820) (not e!907673))))

(assert (=> b!1421973 (= res!643820 (rulesProduceEachTokenIndividually!814 Lexer!2223 (rules!11182 thiss!10022) (tokens!1874 thiss!10022)))))

(declare-fun b!1421974 () Bool)

(assert (=> b!1421974 (= e!907673 (separableTokens!199 Lexer!2223 (tokens!1874 thiss!10022) (rules!11182 thiss!10022)))))

(assert (= (and d!407346 res!643819) b!1421973))

(assert (= (and b!1421973 res!643820) b!1421974))

(assert (=> d!407346 m!1612885))

(assert (=> b!1421973 m!1612887))

(assert (=> b!1421974 m!1612889))

(assert (=> b!1421821 d!407346))

(declare-fun d!407354 () Bool)

(declare-fun e!907674 () Bool)

(assert (=> d!407354 e!907674))

(declare-fun res!643821 () Bool)

(assert (=> d!407354 (=> (not res!643821) (not e!907674))))

(assert (=> d!407354 (= res!643821 (rulesInvariant!2087 Lexer!2223 (rules!11182 other!32)))))

(declare-fun Unit!21991 () Unit!21958)

(assert (=> d!407354 (= (lemmaInvariant!253 other!32) Unit!21991)))

(declare-fun b!1421975 () Bool)

(declare-fun res!643822 () Bool)

(assert (=> b!1421975 (=> (not res!643822) (not e!907674))))

(assert (=> b!1421975 (= res!643822 (rulesProduceEachTokenIndividually!814 Lexer!2223 (rules!11182 other!32) (tokens!1874 other!32)))))

(declare-fun b!1421976 () Bool)

(assert (=> b!1421976 (= e!907674 (separableTokens!199 Lexer!2223 (tokens!1874 other!32) (rules!11182 other!32)))))

(assert (= (and d!407354 res!643821) b!1421975))

(assert (= (and b!1421975 res!643822) b!1421976))

(assert (=> d!407354 m!1612893))

(assert (=> b!1421975 m!1612895))

(assert (=> b!1421976 m!1612897))

(assert (=> b!1421821 d!407354))

(declare-fun d!407356 () Bool)

(declare-fun c!233788 () Bool)

(assert (=> d!407356 (= c!233788 ((_ is Cons!14653) lt!480732))))

(declare-fun e!907675 () List!14717)

(assert (=> d!407356 (= (printList!679 Lexer!2223 lt!480732) e!907675)))

(declare-fun b!1421977 () Bool)

(assert (=> b!1421977 (= e!907675 (++!3872 (list!5806 (charsOf!1490 (h!20054 lt!480732))) (printList!679 Lexer!2223 (t!124530 lt!480732))))))

(declare-fun b!1421978 () Bool)

(assert (=> b!1421978 (= e!907675 Nil!14651)))

(assert (= (and d!407356 c!233788) b!1421977))

(assert (= (and d!407356 (not c!233788)) b!1421978))

(declare-fun m!1613035 () Bool)

(assert (=> b!1421977 m!1613035))

(assert (=> b!1421977 m!1613035))

(declare-fun m!1613037 () Bool)

(assert (=> b!1421977 m!1613037))

(declare-fun m!1613039 () Bool)

(assert (=> b!1421977 m!1613039))

(assert (=> b!1421977 m!1613037))

(assert (=> b!1421977 m!1613039))

(declare-fun m!1613041 () Bool)

(assert (=> b!1421977 m!1613041))

(assert (=> b!1421820 d!407356))

(declare-fun d!407358 () Bool)

(assert (=> d!407358 (= (list!5807 (tokens!1874 other!32)) (list!5810 (c!233752 (tokens!1874 other!32))))))

(declare-fun bs!339835 () Bool)

(assert (= bs!339835 d!407358))

(declare-fun m!1613043 () Bool)

(assert (=> bs!339835 m!1613043))

(assert (=> b!1421820 d!407358))

(declare-fun d!407360 () Bool)

(declare-fun c!233789 () Bool)

(assert (=> d!407360 (= c!233789 ((_ is Cons!14653) Nil!14653))))

(declare-fun e!907676 () List!14717)

(assert (=> d!407360 (= (printList!679 Lexer!2223 Nil!14653) e!907676)))

(declare-fun b!1421979 () Bool)

(assert (=> b!1421979 (= e!907676 (++!3872 (list!5806 (charsOf!1490 (h!20054 Nil!14653))) (printList!679 Lexer!2223 (t!124530 Nil!14653))))))

(declare-fun b!1421980 () Bool)

(assert (=> b!1421980 (= e!907676 Nil!14651)))

(assert (= (and d!407360 c!233789) b!1421979))

(assert (= (and d!407360 (not c!233789)) b!1421980))

(declare-fun m!1613045 () Bool)

(assert (=> b!1421979 m!1613045))

(assert (=> b!1421979 m!1613045))

(declare-fun m!1613047 () Bool)

(assert (=> b!1421979 m!1613047))

(declare-fun m!1613049 () Bool)

(assert (=> b!1421979 m!1613049))

(assert (=> b!1421979 m!1613047))

(assert (=> b!1421979 m!1613049))

(declare-fun m!1613051 () Bool)

(assert (=> b!1421979 m!1613051))

(assert (=> b!1421820 d!407360))

(declare-fun d!407362 () Bool)

(declare-fun e!907677 () Bool)

(assert (=> d!407362 e!907677))

(declare-fun res!643823 () Bool)

(assert (=> d!407362 (=> (not res!643823) (not e!907677))))

(declare-fun lt!480801 () List!14717)

(assert (=> d!407362 (= res!643823 (= (content!2164 lt!480801) ((_ map or) (content!2164 lt!480722) (content!2164 lt!480734))))))

(declare-fun e!907678 () List!14717)

(assert (=> d!407362 (= lt!480801 e!907678)))

(declare-fun c!233790 () Bool)

(assert (=> d!407362 (= c!233790 ((_ is Nil!14651) lt!480722))))

(assert (=> d!407362 (= (++!3872 lt!480722 lt!480734) lt!480801)))

(declare-fun b!1421984 () Bool)

(assert (=> b!1421984 (= e!907677 (or (not (= lt!480734 Nil!14651)) (= lt!480801 lt!480722)))))

(declare-fun b!1421982 () Bool)

(assert (=> b!1421982 (= e!907678 (Cons!14651 (h!20052 lt!480722) (++!3872 (t!124528 lt!480722) lt!480734)))))

(declare-fun b!1421983 () Bool)

(declare-fun res!643824 () Bool)

(assert (=> b!1421983 (=> (not res!643824) (not e!907677))))

(assert (=> b!1421983 (= res!643824 (= (size!12078 lt!480801) (+ (size!12078 lt!480722) (size!12078 lt!480734))))))

(declare-fun b!1421981 () Bool)

(assert (=> b!1421981 (= e!907678 lt!480734)))

(assert (= (and d!407362 c!233790) b!1421981))

(assert (= (and d!407362 (not c!233790)) b!1421982))

(assert (= (and d!407362 res!643823) b!1421983))

(assert (= (and b!1421983 res!643824) b!1421984))

(declare-fun m!1613053 () Bool)

(assert (=> d!407362 m!1613053))

(declare-fun m!1613055 () Bool)

(assert (=> d!407362 m!1613055))

(declare-fun m!1613057 () Bool)

(assert (=> d!407362 m!1613057))

(declare-fun m!1613059 () Bool)

(assert (=> b!1421982 m!1613059))

(declare-fun m!1613061 () Bool)

(assert (=> b!1421983 m!1613061))

(declare-fun m!1613063 () Bool)

(assert (=> b!1421983 m!1613063))

(declare-fun m!1613065 () Bool)

(assert (=> b!1421983 m!1613065))

(assert (=> b!1421820 d!407362))

(declare-fun d!407364 () Bool)

(declare-fun e!907681 () Bool)

(assert (=> d!407364 e!907681))

(declare-fun res!643827 () Bool)

(assert (=> d!407364 (=> (not res!643827) (not e!907681))))

(declare-fun lt!480806 () BalanceConc!9820)

(declare-datatypes ((tuple2!14028 0))(
  ( (tuple2!14029 (_1!7900 BalanceConc!9822) (_2!7900 BalanceConc!9820)) )
))
(declare-fun lex!1019 (LexerInterface!2225 List!14720 BalanceConc!9820) tuple2!14028)

(assert (=> d!407364 (= res!643827 (= (list!5807 (_1!7900 (lex!1019 Lexer!2223 (rules!11182 other!32) lt!480806))) (list!5807 (tokens!1874 other!32))))))

(assert (=> d!407364 (= lt!480806 (print!1009 Lexer!2223 (tokens!1874 other!32)))))

(declare-fun lt!480807 () Unit!21958)

(assert (=> d!407364 (= lt!480807 (theoremInvertabilityWhenTokenListSeparable!47 Lexer!2223 (rules!11182 other!32) (list!5807 (tokens!1874 other!32))))))

(assert (=> d!407364 (= (print!1010 other!32) lt!480806)))

(declare-fun b!1421987 () Bool)

(declare-fun isEmpty!9053 (List!14717) Bool)

(assert (=> b!1421987 (= e!907681 (isEmpty!9053 (list!5806 (_2!7900 (lex!1019 Lexer!2223 (rules!11182 other!32) lt!480806)))))))

(assert (= (and d!407364 res!643827) b!1421987))

(declare-fun m!1613067 () Bool)

(assert (=> d!407364 m!1613067))

(assert (=> d!407364 m!1612773))

(declare-fun m!1613069 () Bool)

(assert (=> d!407364 m!1613069))

(assert (=> d!407364 m!1612771))

(assert (=> d!407364 m!1612773))

(declare-fun m!1613071 () Bool)

(assert (=> d!407364 m!1613071))

(assert (=> b!1421987 m!1613067))

(declare-fun m!1613073 () Bool)

(assert (=> b!1421987 m!1613073))

(assert (=> b!1421987 m!1613073))

(declare-fun m!1613075 () Bool)

(assert (=> b!1421987 m!1613075))

(assert (=> b!1421820 d!407364))

(declare-fun d!407366 () Bool)

(assert (=> d!407366 (= (list!5807 (tokens!1874 thiss!10022)) (list!5810 (c!233752 (tokens!1874 thiss!10022))))))

(declare-fun bs!339836 () Bool)

(assert (= bs!339836 d!407366))

(declare-fun m!1613077 () Bool)

(assert (=> bs!339836 m!1613077))

(assert (=> b!1421820 d!407366))

(declare-fun d!407368 () Bool)

(assert (=> d!407368 (= (printList!679 Lexer!2223 (++!3873 lt!480726 Nil!14653)) (++!3872 (printList!679 Lexer!2223 lt!480726) (printList!679 Lexer!2223 Nil!14653)))))

(declare-fun lt!480810 () Unit!21958)

(declare-fun choose!8755 (LexerInterface!2225 List!14719 List!14719) Unit!21958)

(assert (=> d!407368 (= lt!480810 (choose!8755 Lexer!2223 lt!480726 Nil!14653))))

(assert (=> d!407368 (= (lemmaPrintConcatSameAsConcatPrint!44 Lexer!2223 lt!480726 Nil!14653) lt!480810)))

(declare-fun bs!339837 () Bool)

(assert (= bs!339837 d!407368))

(assert (=> bs!339837 m!1612765))

(assert (=> bs!339837 m!1612751))

(declare-fun m!1613079 () Bool)

(assert (=> bs!339837 m!1613079))

(assert (=> bs!339837 m!1612767))

(declare-fun m!1613081 () Bool)

(assert (=> bs!339837 m!1613081))

(assert (=> bs!339837 m!1612765))

(assert (=> bs!339837 m!1612751))

(declare-fun m!1613083 () Bool)

(assert (=> bs!339837 m!1613083))

(assert (=> bs!339837 m!1612767))

(assert (=> b!1421820 d!407368))

(declare-fun d!407370 () Bool)

(declare-fun c!233791 () Bool)

(assert (=> d!407370 (= c!233791 ((_ is Cons!14653) lt!480726))))

(declare-fun e!907682 () List!14717)

(assert (=> d!407370 (= (printList!679 Lexer!2223 lt!480726) e!907682)))

(declare-fun b!1421988 () Bool)

(assert (=> b!1421988 (= e!907682 (++!3872 (list!5806 (charsOf!1490 (h!20054 lt!480726))) (printList!679 Lexer!2223 (t!124530 lt!480726))))))

(declare-fun b!1421989 () Bool)

(assert (=> b!1421989 (= e!907682 Nil!14651)))

(assert (= (and d!407370 c!233791) b!1421988))

(assert (= (and d!407370 (not c!233791)) b!1421989))

(declare-fun m!1613085 () Bool)

(assert (=> b!1421988 m!1613085))

(assert (=> b!1421988 m!1613085))

(declare-fun m!1613087 () Bool)

(assert (=> b!1421988 m!1613087))

(declare-fun m!1613089 () Bool)

(assert (=> b!1421988 m!1613089))

(assert (=> b!1421988 m!1613087))

(assert (=> b!1421988 m!1613089))

(declare-fun m!1613091 () Bool)

(assert (=> b!1421988 m!1613091))

(assert (=> b!1421820 d!407370))

(declare-fun b!1421993 () Bool)

(declare-fun e!907683 () Bool)

(declare-fun lt!480811 () List!14719)

(assert (=> b!1421993 (= e!907683 (or (not (= Nil!14653 Nil!14653)) (= lt!480811 lt!480726)))))

(declare-fun d!407372 () Bool)

(assert (=> d!407372 e!907683))

(declare-fun res!643828 () Bool)

(assert (=> d!407372 (=> (not res!643828) (not e!907683))))

(assert (=> d!407372 (= res!643828 (= (content!2163 lt!480811) ((_ map or) (content!2163 lt!480726) (content!2163 Nil!14653))))))

(declare-fun e!907684 () List!14719)

(assert (=> d!407372 (= lt!480811 e!907684)))

(declare-fun c!233792 () Bool)

(assert (=> d!407372 (= c!233792 ((_ is Nil!14653) lt!480726))))

(assert (=> d!407372 (= (++!3873 lt!480726 Nil!14653) lt!480811)))

(declare-fun b!1421992 () Bool)

(declare-fun res!643829 () Bool)

(assert (=> b!1421992 (=> (not res!643829) (not e!907683))))

(assert (=> b!1421992 (= res!643829 (= (size!12076 lt!480811) (+ (size!12076 lt!480726) (size!12076 Nil!14653))))))

(declare-fun b!1421990 () Bool)

(assert (=> b!1421990 (= e!907684 Nil!14653)))

(declare-fun b!1421991 () Bool)

(assert (=> b!1421991 (= e!907684 (Cons!14653 (h!20054 lt!480726) (++!3873 (t!124530 lt!480726) Nil!14653)))))

(assert (= (and d!407372 c!233792) b!1421990))

(assert (= (and d!407372 (not c!233792)) b!1421991))

(assert (= (and d!407372 res!643828) b!1421992))

(assert (= (and b!1421992 res!643829) b!1421993))

(declare-fun m!1613093 () Bool)

(assert (=> d!407372 m!1613093))

(assert (=> d!407372 m!1612809))

(declare-fun m!1613095 () Bool)

(assert (=> d!407372 m!1613095))

(declare-fun m!1613097 () Bool)

(assert (=> b!1421992 m!1613097))

(assert (=> b!1421992 m!1612815))

(declare-fun m!1613099 () Bool)

(assert (=> b!1421992 m!1613099))

(declare-fun m!1613101 () Bool)

(assert (=> b!1421991 m!1613101))

(assert (=> b!1421820 d!407372))

(declare-fun d!407374 () Bool)

(declare-fun lt!480838 () BalanceConc!9820)

(assert (=> d!407374 (= (list!5806 lt!480838) (printList!679 Lexer!2223 (list!5807 (tokens!1874 other!32))))))

(assert (=> d!407374 (= lt!480838 (printTailRec!657 Lexer!2223 (tokens!1874 other!32) 0 (BalanceConc!9821 Empty!4940)))))

(assert (=> d!407374 (= (print!1009 Lexer!2223 (tokens!1874 other!32)) lt!480838)))

(declare-fun bs!339838 () Bool)

(assert (= bs!339838 d!407374))

(declare-fun m!1613103 () Bool)

(assert (=> bs!339838 m!1613103))

(assert (=> bs!339838 m!1612773))

(assert (=> bs!339838 m!1612773))

(declare-fun m!1613105 () Bool)

(assert (=> bs!339838 m!1613105))

(assert (=> bs!339838 m!1612779))

(assert (=> b!1421820 d!407374))

(declare-fun d!407376 () Bool)

(declare-fun e!907734 () Bool)

(assert (=> d!407376 e!907734))

(declare-fun res!643844 () Bool)

(assert (=> d!407376 (=> (not res!643844) (not e!907734))))

(declare-fun seqFromList!1681 (List!14719) BalanceConc!9822)

(assert (=> d!407376 (= res!643844 (= (list!5807 (_1!7900 (lex!1019 Lexer!2223 (rules!11182 other!32) (print!1009 Lexer!2223 (seqFromList!1681 lt!480729))))) lt!480729))))

(declare-fun lt!481002 () Unit!21958)

(declare-fun e!907735 () Unit!21958)

(assert (=> d!407376 (= lt!481002 e!907735)))

(declare-fun c!233803 () Bool)

(assert (=> d!407376 (= c!233803 (or ((_ is Nil!14653) lt!480729) ((_ is Nil!14653) (t!124530 lt!480729))))))

(assert (=> d!407376 (not (isEmpty!9050 (rules!11182 other!32)))))

(assert (=> d!407376 (= (theoremInvertabilityWhenTokenListSeparable!47 Lexer!2223 (rules!11182 other!32) lt!480729) lt!481002)))

(declare-fun b!1422061 () Bool)

(declare-fun Unit!21992 () Unit!21958)

(assert (=> b!1422061 (= e!907735 Unit!21992)))

(declare-fun b!1422062 () Bool)

(declare-fun Unit!21993 () Unit!21958)

(assert (=> b!1422062 (= e!907735 Unit!21993)))

(declare-fun lt!480999 () BalanceConc!9820)

(assert (=> b!1422062 (= lt!480999 (print!1009 Lexer!2223 (seqFromList!1681 lt!480729)))))

(declare-fun lt!480988 () BalanceConc!9820)

(assert (=> b!1422062 (= lt!480988 (print!1009 Lexer!2223 (seqFromList!1681 (t!124530 lt!480729))))))

(declare-fun lt!480994 () tuple2!14028)

(assert (=> b!1422062 (= lt!480994 (lex!1019 Lexer!2223 (rules!11182 other!32) lt!480988))))

(declare-fun lt!481006 () List!14717)

(assert (=> b!1422062 (= lt!481006 (list!5806 (charsOf!1490 (h!20054 lt!480729))))))

(declare-fun lt!481011 () List!14717)

(assert (=> b!1422062 (= lt!481011 (list!5806 lt!480988))))

(declare-fun lt!481012 () Unit!21958)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!745 (List!14717 List!14717) Unit!21958)

(assert (=> b!1422062 (= lt!481012 (lemmaConcatTwoListThenFirstIsPrefix!745 lt!481006 lt!481011))))

(declare-fun isPrefix!1178 (List!14717 List!14717) Bool)

(assert (=> b!1422062 (isPrefix!1178 lt!481006 (++!3872 lt!481006 lt!481011))))

(declare-fun lt!480996 () Unit!21958)

(assert (=> b!1422062 (= lt!480996 lt!481012)))

(declare-fun lt!480992 () Unit!21958)

(assert (=> b!1422062 (= lt!480992 (theoremInvertabilityWhenTokenListSeparable!47 Lexer!2223 (rules!11182 other!32) (t!124530 lt!480729)))))

(declare-fun lt!480991 () Unit!21958)

(declare-fun seqFromListBHdTlConstructive!74 (Token!4776 List!14719 BalanceConc!9822) Unit!21958)

(assert (=> b!1422062 (= lt!480991 (seqFromListBHdTlConstructive!74 (h!20054 (t!124530 lt!480729)) (t!124530 (t!124530 lt!480729)) (_1!7900 lt!480994)))))

(declare-fun prepend!390 (BalanceConc!9822 Token!4776) BalanceConc!9822)

(assert (=> b!1422062 (= (list!5807 (_1!7900 lt!480994)) (list!5807 (prepend!390 (seqFromList!1681 (t!124530 (t!124530 lt!480729))) (h!20054 (t!124530 lt!480729)))))))

(declare-fun lt!480995 () Unit!21958)

(assert (=> b!1422062 (= lt!480995 lt!480991)))

(declare-datatypes ((tuple2!14030 0))(
  ( (tuple2!14031 (_1!7901 Token!4776) (_2!7901 List!14717)) )
))
(declare-datatypes ((Option!2816 0))(
  ( (None!2815) (Some!2815 (v!22239 tuple2!14030)) )
))
(declare-fun lt!481005 () Option!2816)

(declare-fun maxPrefix!1168 (LexerInterface!2225 List!14720 List!14717) Option!2816)

(assert (=> b!1422062 (= lt!481005 (maxPrefix!1168 Lexer!2223 (rules!11182 other!32) (list!5806 lt!480999)))))

(declare-fun singletonSeq!1181 (Token!4776) BalanceConc!9822)

(assert (=> b!1422062 (= (print!1009 Lexer!2223 (singletonSeq!1181 (h!20054 lt!480729))) (printTailRec!657 Lexer!2223 (singletonSeq!1181 (h!20054 lt!480729)) 0 (BalanceConc!9821 Empty!4940)))))

(declare-fun lt!480998 () Unit!21958)

(declare-fun Unit!21994 () Unit!21958)

(assert (=> b!1422062 (= lt!480998 Unit!21994)))

(declare-fun lt!480989 () Unit!21958)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!218 (LexerInterface!2225 List!14720 List!14717 List!14717) Unit!21958)

(assert (=> b!1422062 (= lt!480989 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!218 Lexer!2223 (rules!11182 other!32) (list!5806 (charsOf!1490 (h!20054 lt!480729))) (list!5806 lt!480988)))))

(assert (=> b!1422062 (= (list!5806 (charsOf!1490 (h!20054 lt!480729))) (originalCharacters!3419 (h!20054 lt!480729)))))

(declare-fun lt!481001 () Unit!21958)

(declare-fun Unit!21995 () Unit!21958)

(assert (=> b!1422062 (= lt!481001 Unit!21995)))

(declare-fun singletonSeq!1182 (C!7920) BalanceConc!9820)

(declare-fun apply!3742 (BalanceConc!9820 Int) C!7920)

(declare-fun head!2798 (List!14717) C!7920)

(assert (=> b!1422062 (= (list!5806 (singletonSeq!1182 (apply!3742 (charsOf!1490 (h!20054 (t!124530 lt!480729))) 0))) (Cons!14651 (head!2798 (originalCharacters!3419 (h!20054 (t!124530 lt!480729)))) Nil!14651))))

(declare-fun lt!480997 () Unit!21958)

(declare-fun Unit!21996 () Unit!21958)

(assert (=> b!1422062 (= lt!480997 Unit!21996)))

(assert (=> b!1422062 (= (list!5806 (singletonSeq!1182 (apply!3742 (charsOf!1490 (h!20054 (t!124530 lt!480729))) 0))) (Cons!14651 (head!2798 (list!5806 lt!480988)) Nil!14651))))

(declare-fun lt!481004 () Unit!21958)

(declare-fun Unit!21997 () Unit!21958)

(assert (=> b!1422062 (= lt!481004 Unit!21997)))

(declare-fun head!2799 (BalanceConc!9820) C!7920)

(assert (=> b!1422062 (= (list!5806 (singletonSeq!1182 (apply!3742 (charsOf!1490 (h!20054 (t!124530 lt!480729))) 0))) (Cons!14651 (head!2799 lt!480988) Nil!14651))))

(declare-fun lt!481003 () Unit!21958)

(declare-fun Unit!21998 () Unit!21958)

(assert (=> b!1422062 (= lt!481003 Unit!21998)))

(declare-fun isDefined!2277 (Option!2816) Bool)

(assert (=> b!1422062 (isDefined!2277 (maxPrefix!1168 Lexer!2223 (rules!11182 other!32) (originalCharacters!3419 (h!20054 lt!480729))))))

(declare-fun lt!481007 () Unit!21958)

(declare-fun Unit!21999 () Unit!21958)

(assert (=> b!1422062 (= lt!481007 Unit!21999)))

(assert (=> b!1422062 (isDefined!2277 (maxPrefix!1168 Lexer!2223 (rules!11182 other!32) (list!5806 (charsOf!1490 (h!20054 lt!480729)))))))

(declare-fun lt!481000 () Unit!21958)

(declare-fun Unit!22000 () Unit!21958)

(assert (=> b!1422062 (= lt!481000 Unit!22000)))

(declare-fun lt!480993 () Unit!21958)

(declare-fun Unit!22001 () Unit!21958)

(assert (=> b!1422062 (= lt!480993 Unit!22001)))

(declare-fun get!4507 (Option!2816) tuple2!14030)

(assert (=> b!1422062 (= (_1!7901 (get!4507 (maxPrefix!1168 Lexer!2223 (rules!11182 other!32) (list!5806 (charsOf!1490 (h!20054 lt!480729)))))) (h!20054 lt!480729))))

(declare-fun lt!481008 () Unit!21958)

(declare-fun Unit!22002 () Unit!21958)

(assert (=> b!1422062 (= lt!481008 Unit!22002)))

(assert (=> b!1422062 (isEmpty!9053 (_2!7901 (get!4507 (maxPrefix!1168 Lexer!2223 (rules!11182 other!32) (list!5806 (charsOf!1490 (h!20054 lt!480729)))))))))

(declare-fun lt!481013 () Unit!21958)

(declare-fun Unit!22003 () Unit!21958)

(assert (=> b!1422062 (= lt!481013 Unit!22003)))

(declare-fun matchR!1804 (Regex!3871 List!14717) Bool)

(assert (=> b!1422062 (matchR!1804 (regex!2557 (rule!4320 (h!20054 lt!480729))) (list!5806 (charsOf!1490 (h!20054 lt!480729))))))

(declare-fun lt!481010 () Unit!21958)

(declare-fun Unit!22004 () Unit!21958)

(assert (=> b!1422062 (= lt!481010 Unit!22004)))

(assert (=> b!1422062 (= (rule!4320 (h!20054 lt!480729)) (rule!4320 (h!20054 lt!480729)))))

(declare-fun lt!481009 () Unit!21958)

(declare-fun Unit!22005 () Unit!21958)

(assert (=> b!1422062 (= lt!481009 Unit!22005)))

(declare-fun lt!480990 () Unit!21958)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!16 (LexerInterface!2225 List!14720 Token!4776 Rule!4914 List!14717) Unit!21958)

(assert (=> b!1422062 (= lt!480990 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!16 Lexer!2223 (rules!11182 other!32) (h!20054 lt!480729) (rule!4320 (h!20054 lt!480729)) (list!5806 lt!480988)))))

(declare-fun b!1422063 () Bool)

(declare-fun isEmpty!9054 (BalanceConc!9820) Bool)

(assert (=> b!1422063 (= e!907734 (isEmpty!9054 (_2!7900 (lex!1019 Lexer!2223 (rules!11182 other!32) (print!1009 Lexer!2223 (seqFromList!1681 lt!480729))))))))

(assert (= (and d!407376 c!233803) b!1422061))

(assert (= (and d!407376 (not c!233803)) b!1422062))

(assert (= (and d!407376 res!643844) b!1422063))

(declare-fun m!1613363 () Bool)

(assert (=> d!407376 m!1613363))

(assert (=> d!407376 m!1612891))

(declare-fun m!1613365 () Bool)

(assert (=> d!407376 m!1613365))

(declare-fun m!1613367 () Bool)

(assert (=> d!407376 m!1613367))

(assert (=> d!407376 m!1613363))

(assert (=> d!407376 m!1613365))

(declare-fun m!1613369 () Bool)

(assert (=> d!407376 m!1613369))

(declare-fun m!1613371 () Bool)

(assert (=> b!1422062 m!1613371))

(declare-fun m!1613373 () Bool)

(assert (=> b!1422062 m!1613373))

(declare-fun m!1613375 () Bool)

(assert (=> b!1422062 m!1613375))

(declare-fun m!1613377 () Bool)

(assert (=> b!1422062 m!1613377))

(declare-fun m!1613379 () Bool)

(assert (=> b!1422062 m!1613379))

(declare-fun m!1613381 () Bool)

(assert (=> b!1422062 m!1613381))

(assert (=> b!1422062 m!1613375))

(declare-fun m!1613383 () Bool)

(assert (=> b!1422062 m!1613383))

(declare-fun m!1613385 () Bool)

(assert (=> b!1422062 m!1613385))

(declare-fun m!1613387 () Bool)

(assert (=> b!1422062 m!1613387))

(declare-fun m!1613389 () Bool)

(assert (=> b!1422062 m!1613389))

(declare-fun m!1613391 () Bool)

(assert (=> b!1422062 m!1613391))

(declare-fun m!1613393 () Bool)

(assert (=> b!1422062 m!1613393))

(declare-fun m!1613395 () Bool)

(assert (=> b!1422062 m!1613395))

(assert (=> b!1422062 m!1612953))

(declare-fun m!1613397 () Bool)

(assert (=> b!1422062 m!1613397))

(assert (=> b!1422062 m!1613393))

(declare-fun m!1613399 () Bool)

(assert (=> b!1422062 m!1613399))

(declare-fun m!1613401 () Bool)

(assert (=> b!1422062 m!1613401))

(declare-fun m!1613403 () Bool)

(assert (=> b!1422062 m!1613403))

(declare-fun m!1613405 () Bool)

(assert (=> b!1422062 m!1613405))

(assert (=> b!1422062 m!1613387))

(assert (=> b!1422062 m!1612739))

(assert (=> b!1422062 m!1613371))

(assert (=> b!1422062 m!1612737))

(declare-fun m!1613407 () Bool)

(assert (=> b!1422062 m!1613407))

(declare-fun m!1613409 () Bool)

(assert (=> b!1422062 m!1613409))

(assert (=> b!1422062 m!1613407))

(assert (=> b!1422062 m!1613387))

(declare-fun m!1613411 () Bool)

(assert (=> b!1422062 m!1613411))

(assert (=> b!1422062 m!1612737))

(assert (=> b!1422062 m!1612739))

(assert (=> b!1422062 m!1613397))

(assert (=> b!1422062 m!1613403))

(assert (=> b!1422062 m!1613363))

(assert (=> b!1422062 m!1612739))

(declare-fun m!1613413 () Bool)

(assert (=> b!1422062 m!1613413))

(assert (=> b!1422062 m!1613383))

(declare-fun m!1613415 () Bool)

(assert (=> b!1422062 m!1613415))

(declare-fun m!1613417 () Bool)

(assert (=> b!1422062 m!1613417))

(assert (=> b!1422062 m!1613363))

(assert (=> b!1422062 m!1613365))

(declare-fun m!1613419 () Bool)

(assert (=> b!1422062 m!1613419))

(assert (=> b!1422062 m!1613407))

(declare-fun m!1613421 () Bool)

(assert (=> b!1422062 m!1613421))

(declare-fun m!1613423 () Bool)

(assert (=> b!1422062 m!1613423))

(declare-fun m!1613425 () Bool)

(assert (=> b!1422062 m!1613425))

(declare-fun m!1613427 () Bool)

(assert (=> b!1422062 m!1613427))

(assert (=> b!1422062 m!1613395))

(declare-fun m!1613429 () Bool)

(assert (=> b!1422062 m!1613429))

(declare-fun m!1613431 () Bool)

(assert (=> b!1422062 m!1613431))

(assert (=> b!1422062 m!1613379))

(assert (=> b!1422062 m!1612953))

(assert (=> b!1422062 m!1612739))

(assert (=> b!1422062 m!1613387))

(declare-fun m!1613433 () Bool)

(assert (=> b!1422062 m!1613433))

(assert (=> b!1422062 m!1613371))

(declare-fun m!1613435 () Bool)

(assert (=> b!1422062 m!1613435))

(assert (=> b!1422062 m!1613423))

(assert (=> b!1422063 m!1613363))

(assert (=> b!1422063 m!1613363))

(assert (=> b!1422063 m!1613365))

(assert (=> b!1422063 m!1613365))

(assert (=> b!1422063 m!1613367))

(declare-fun m!1613437 () Bool)

(assert (=> b!1422063 m!1613437))

(assert (=> b!1421820 d!407376))

(declare-fun d!407404 () Bool)

(declare-fun e!907736 () Bool)

(assert (=> d!407404 e!907736))

(declare-fun res!643845 () Bool)

(assert (=> d!407404 (=> (not res!643845) (not e!907736))))

(assert (=> d!407404 (= res!643845 (= (list!5807 (_1!7900 (lex!1019 Lexer!2223 (rules!11182 thiss!10022) (print!1009 Lexer!2223 (seqFromList!1681 lt!480726))))) lt!480726))))

(declare-fun lt!481028 () Unit!21958)

(declare-fun e!907737 () Unit!21958)

(assert (=> d!407404 (= lt!481028 e!907737)))

(declare-fun c!233804 () Bool)

(assert (=> d!407404 (= c!233804 (or ((_ is Nil!14653) lt!480726) ((_ is Nil!14653) (t!124530 lt!480726))))))

(assert (=> d!407404 (not (isEmpty!9050 (rules!11182 thiss!10022)))))

(assert (=> d!407404 (= (theoremInvertabilityWhenTokenListSeparable!47 Lexer!2223 (rules!11182 thiss!10022) lt!480726) lt!481028)))

(declare-fun b!1422064 () Bool)

(declare-fun Unit!22006 () Unit!21958)

(assert (=> b!1422064 (= e!907737 Unit!22006)))

(declare-fun b!1422065 () Bool)

(declare-fun Unit!22007 () Unit!21958)

(assert (=> b!1422065 (= e!907737 Unit!22007)))

(declare-fun lt!481025 () BalanceConc!9820)

(assert (=> b!1422065 (= lt!481025 (print!1009 Lexer!2223 (seqFromList!1681 lt!480726)))))

(declare-fun lt!481014 () BalanceConc!9820)

(assert (=> b!1422065 (= lt!481014 (print!1009 Lexer!2223 (seqFromList!1681 (t!124530 lt!480726))))))

(declare-fun lt!481020 () tuple2!14028)

(assert (=> b!1422065 (= lt!481020 (lex!1019 Lexer!2223 (rules!11182 thiss!10022) lt!481014))))

(declare-fun lt!481032 () List!14717)

(assert (=> b!1422065 (= lt!481032 (list!5806 (charsOf!1490 (h!20054 lt!480726))))))

(declare-fun lt!481037 () List!14717)

(assert (=> b!1422065 (= lt!481037 (list!5806 lt!481014))))

(declare-fun lt!481038 () Unit!21958)

(assert (=> b!1422065 (= lt!481038 (lemmaConcatTwoListThenFirstIsPrefix!745 lt!481032 lt!481037))))

(assert (=> b!1422065 (isPrefix!1178 lt!481032 (++!3872 lt!481032 lt!481037))))

(declare-fun lt!481022 () Unit!21958)

(assert (=> b!1422065 (= lt!481022 lt!481038)))

(declare-fun lt!481018 () Unit!21958)

(assert (=> b!1422065 (= lt!481018 (theoremInvertabilityWhenTokenListSeparable!47 Lexer!2223 (rules!11182 thiss!10022) (t!124530 lt!480726)))))

(declare-fun lt!481017 () Unit!21958)

(assert (=> b!1422065 (= lt!481017 (seqFromListBHdTlConstructive!74 (h!20054 (t!124530 lt!480726)) (t!124530 (t!124530 lt!480726)) (_1!7900 lt!481020)))))

(assert (=> b!1422065 (= (list!5807 (_1!7900 lt!481020)) (list!5807 (prepend!390 (seqFromList!1681 (t!124530 (t!124530 lt!480726))) (h!20054 (t!124530 lt!480726)))))))

(declare-fun lt!481021 () Unit!21958)

(assert (=> b!1422065 (= lt!481021 lt!481017)))

(declare-fun lt!481031 () Option!2816)

(assert (=> b!1422065 (= lt!481031 (maxPrefix!1168 Lexer!2223 (rules!11182 thiss!10022) (list!5806 lt!481025)))))

(assert (=> b!1422065 (= (print!1009 Lexer!2223 (singletonSeq!1181 (h!20054 lt!480726))) (printTailRec!657 Lexer!2223 (singletonSeq!1181 (h!20054 lt!480726)) 0 (BalanceConc!9821 Empty!4940)))))

(declare-fun lt!481024 () Unit!21958)

(declare-fun Unit!22008 () Unit!21958)

(assert (=> b!1422065 (= lt!481024 Unit!22008)))

(declare-fun lt!481015 () Unit!21958)

(assert (=> b!1422065 (= lt!481015 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!218 Lexer!2223 (rules!11182 thiss!10022) (list!5806 (charsOf!1490 (h!20054 lt!480726))) (list!5806 lt!481014)))))

(assert (=> b!1422065 (= (list!5806 (charsOf!1490 (h!20054 lt!480726))) (originalCharacters!3419 (h!20054 lt!480726)))))

(declare-fun lt!481027 () Unit!21958)

(declare-fun Unit!22009 () Unit!21958)

(assert (=> b!1422065 (= lt!481027 Unit!22009)))

(assert (=> b!1422065 (= (list!5806 (singletonSeq!1182 (apply!3742 (charsOf!1490 (h!20054 (t!124530 lt!480726))) 0))) (Cons!14651 (head!2798 (originalCharacters!3419 (h!20054 (t!124530 lt!480726)))) Nil!14651))))

(declare-fun lt!481023 () Unit!21958)

(declare-fun Unit!22010 () Unit!21958)

(assert (=> b!1422065 (= lt!481023 Unit!22010)))

(assert (=> b!1422065 (= (list!5806 (singletonSeq!1182 (apply!3742 (charsOf!1490 (h!20054 (t!124530 lt!480726))) 0))) (Cons!14651 (head!2798 (list!5806 lt!481014)) Nil!14651))))

(declare-fun lt!481030 () Unit!21958)

(declare-fun Unit!22011 () Unit!21958)

(assert (=> b!1422065 (= lt!481030 Unit!22011)))

(assert (=> b!1422065 (= (list!5806 (singletonSeq!1182 (apply!3742 (charsOf!1490 (h!20054 (t!124530 lt!480726))) 0))) (Cons!14651 (head!2799 lt!481014) Nil!14651))))

(declare-fun lt!481029 () Unit!21958)

(declare-fun Unit!22012 () Unit!21958)

(assert (=> b!1422065 (= lt!481029 Unit!22012)))

(assert (=> b!1422065 (isDefined!2277 (maxPrefix!1168 Lexer!2223 (rules!11182 thiss!10022) (originalCharacters!3419 (h!20054 lt!480726))))))

(declare-fun lt!481033 () Unit!21958)

(declare-fun Unit!22013 () Unit!21958)

(assert (=> b!1422065 (= lt!481033 Unit!22013)))

(assert (=> b!1422065 (isDefined!2277 (maxPrefix!1168 Lexer!2223 (rules!11182 thiss!10022) (list!5806 (charsOf!1490 (h!20054 lt!480726)))))))

(declare-fun lt!481026 () Unit!21958)

(declare-fun Unit!22014 () Unit!21958)

(assert (=> b!1422065 (= lt!481026 Unit!22014)))

(declare-fun lt!481019 () Unit!21958)

(declare-fun Unit!22015 () Unit!21958)

(assert (=> b!1422065 (= lt!481019 Unit!22015)))

(assert (=> b!1422065 (= (_1!7901 (get!4507 (maxPrefix!1168 Lexer!2223 (rules!11182 thiss!10022) (list!5806 (charsOf!1490 (h!20054 lt!480726)))))) (h!20054 lt!480726))))

(declare-fun lt!481034 () Unit!21958)

(declare-fun Unit!22016 () Unit!21958)

(assert (=> b!1422065 (= lt!481034 Unit!22016)))

(assert (=> b!1422065 (isEmpty!9053 (_2!7901 (get!4507 (maxPrefix!1168 Lexer!2223 (rules!11182 thiss!10022) (list!5806 (charsOf!1490 (h!20054 lt!480726)))))))))

(declare-fun lt!481039 () Unit!21958)

(declare-fun Unit!22017 () Unit!21958)

(assert (=> b!1422065 (= lt!481039 Unit!22017)))

(assert (=> b!1422065 (matchR!1804 (regex!2557 (rule!4320 (h!20054 lt!480726))) (list!5806 (charsOf!1490 (h!20054 lt!480726))))))

(declare-fun lt!481036 () Unit!21958)

(declare-fun Unit!22018 () Unit!21958)

(assert (=> b!1422065 (= lt!481036 Unit!22018)))

(assert (=> b!1422065 (= (rule!4320 (h!20054 lt!480726)) (rule!4320 (h!20054 lt!480726)))))

(declare-fun lt!481035 () Unit!21958)

(declare-fun Unit!22019 () Unit!21958)

(assert (=> b!1422065 (= lt!481035 Unit!22019)))

(declare-fun lt!481016 () Unit!21958)

(assert (=> b!1422065 (= lt!481016 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!16 Lexer!2223 (rules!11182 thiss!10022) (h!20054 lt!480726) (rule!4320 (h!20054 lt!480726)) (list!5806 lt!481014)))))

(declare-fun b!1422066 () Bool)

(assert (=> b!1422066 (= e!907736 (isEmpty!9054 (_2!7900 (lex!1019 Lexer!2223 (rules!11182 thiss!10022) (print!1009 Lexer!2223 (seqFromList!1681 lt!480726))))))))

(assert (= (and d!407404 c!233804) b!1422064))

(assert (= (and d!407404 (not c!233804)) b!1422065))

(assert (= (and d!407404 res!643845) b!1422066))

(declare-fun m!1613439 () Bool)

(assert (=> d!407404 m!1613439))

(assert (=> d!407404 m!1612883))

(declare-fun m!1613441 () Bool)

(assert (=> d!407404 m!1613441))

(declare-fun m!1613443 () Bool)

(assert (=> d!407404 m!1613443))

(assert (=> d!407404 m!1613439))

(assert (=> d!407404 m!1613441))

(declare-fun m!1613445 () Bool)

(assert (=> d!407404 m!1613445))

(declare-fun m!1613447 () Bool)

(assert (=> b!1422065 m!1613447))

(declare-fun m!1613449 () Bool)

(assert (=> b!1422065 m!1613449))

(declare-fun m!1613451 () Bool)

(assert (=> b!1422065 m!1613451))

(declare-fun m!1613453 () Bool)

(assert (=> b!1422065 m!1613453))

(declare-fun m!1613455 () Bool)

(assert (=> b!1422065 m!1613455))

(declare-fun m!1613457 () Bool)

(assert (=> b!1422065 m!1613457))

(assert (=> b!1422065 m!1613451))

(declare-fun m!1613459 () Bool)

(assert (=> b!1422065 m!1613459))

(declare-fun m!1613461 () Bool)

(assert (=> b!1422065 m!1613461))

(declare-fun m!1613463 () Bool)

(assert (=> b!1422065 m!1613463))

(declare-fun m!1613465 () Bool)

(assert (=> b!1422065 m!1613465))

(declare-fun m!1613467 () Bool)

(assert (=> b!1422065 m!1613467))

(declare-fun m!1613469 () Bool)

(assert (=> b!1422065 m!1613469))

(declare-fun m!1613471 () Bool)

(assert (=> b!1422065 m!1613471))

(declare-fun m!1613473 () Bool)

(assert (=> b!1422065 m!1613473))

(declare-fun m!1613475 () Bool)

(assert (=> b!1422065 m!1613475))

(assert (=> b!1422065 m!1613469))

(declare-fun m!1613477 () Bool)

(assert (=> b!1422065 m!1613477))

(declare-fun m!1613479 () Bool)

(assert (=> b!1422065 m!1613479))

(declare-fun m!1613481 () Bool)

(assert (=> b!1422065 m!1613481))

(declare-fun m!1613483 () Bool)

(assert (=> b!1422065 m!1613483))

(assert (=> b!1422065 m!1613463))

(assert (=> b!1422065 m!1613087))

(assert (=> b!1422065 m!1613447))

(assert (=> b!1422065 m!1613085))

(declare-fun m!1613485 () Bool)

(assert (=> b!1422065 m!1613485))

(declare-fun m!1613487 () Bool)

(assert (=> b!1422065 m!1613487))

(assert (=> b!1422065 m!1613485))

(assert (=> b!1422065 m!1613463))

(declare-fun m!1613489 () Bool)

(assert (=> b!1422065 m!1613489))

(assert (=> b!1422065 m!1613085))

(assert (=> b!1422065 m!1613087))

(assert (=> b!1422065 m!1613475))

(assert (=> b!1422065 m!1613481))

(assert (=> b!1422065 m!1613439))

(assert (=> b!1422065 m!1613087))

(declare-fun m!1613491 () Bool)

(assert (=> b!1422065 m!1613491))

(assert (=> b!1422065 m!1613459))

(declare-fun m!1613493 () Bool)

(assert (=> b!1422065 m!1613493))

(declare-fun m!1613495 () Bool)

(assert (=> b!1422065 m!1613495))

(assert (=> b!1422065 m!1613439))

(assert (=> b!1422065 m!1613441))

(declare-fun m!1613497 () Bool)

(assert (=> b!1422065 m!1613497))

(assert (=> b!1422065 m!1613485))

(declare-fun m!1613499 () Bool)

(assert (=> b!1422065 m!1613499))

(declare-fun m!1613501 () Bool)

(assert (=> b!1422065 m!1613501))

(declare-fun m!1613503 () Bool)

(assert (=> b!1422065 m!1613503))

(declare-fun m!1613505 () Bool)

(assert (=> b!1422065 m!1613505))

(assert (=> b!1422065 m!1613471))

(declare-fun m!1613507 () Bool)

(assert (=> b!1422065 m!1613507))

(declare-fun m!1613509 () Bool)

(assert (=> b!1422065 m!1613509))

(assert (=> b!1422065 m!1613455))

(assert (=> b!1422065 m!1613473))

(assert (=> b!1422065 m!1613087))

(assert (=> b!1422065 m!1613463))

(declare-fun m!1613511 () Bool)

(assert (=> b!1422065 m!1613511))

(assert (=> b!1422065 m!1613447))

(declare-fun m!1613513 () Bool)

(assert (=> b!1422065 m!1613513))

(assert (=> b!1422065 m!1613501))

(assert (=> b!1422066 m!1613439))

(assert (=> b!1422066 m!1613439))

(assert (=> b!1422066 m!1613441))

(assert (=> b!1422066 m!1613441))

(assert (=> b!1422066 m!1613443))

(declare-fun m!1613515 () Bool)

(assert (=> b!1422066 m!1613515))

(assert (=> b!1421820 d!407404))

(declare-fun d!407406 () Bool)

(declare-fun lt!481040 () BalanceConc!9820)

(assert (=> d!407406 (= (list!5806 lt!481040) (printList!679 Lexer!2223 (list!5807 (tokens!1874 thiss!10022))))))

(assert (=> d!407406 (= lt!481040 (printTailRec!657 Lexer!2223 (tokens!1874 thiss!10022) 0 (BalanceConc!9821 Empty!4940)))))

(assert (=> d!407406 (= (print!1009 Lexer!2223 (tokens!1874 thiss!10022)) lt!481040)))

(declare-fun bs!339844 () Bool)

(assert (= bs!339844 d!407406))

(declare-fun m!1613517 () Bool)

(assert (=> bs!339844 m!1613517))

(assert (=> bs!339844 m!1612763))

(assert (=> bs!339844 m!1612763))

(declare-fun m!1613519 () Bool)

(assert (=> bs!339844 m!1613519))

(declare-fun m!1613521 () Bool)

(assert (=> bs!339844 m!1613521))

(assert (=> b!1421820 d!407406))

(declare-fun d!407408 () Bool)

(declare-fun e!907738 () Bool)

(assert (=> d!407408 e!907738))

(declare-fun res!643846 () Bool)

(assert (=> d!407408 (=> (not res!643846) (not e!907738))))

(declare-fun lt!481041 () BalanceConc!9820)

(assert (=> d!407408 (= res!643846 (= (list!5807 (_1!7900 (lex!1019 Lexer!2223 (rules!11182 thiss!10022) lt!481041))) (list!5807 (tokens!1874 thiss!10022))))))

(assert (=> d!407408 (= lt!481041 (print!1009 Lexer!2223 (tokens!1874 thiss!10022)))))

(declare-fun lt!481042 () Unit!21958)

(assert (=> d!407408 (= lt!481042 (theoremInvertabilityWhenTokenListSeparable!47 Lexer!2223 (rules!11182 thiss!10022) (list!5807 (tokens!1874 thiss!10022))))))

(assert (=> d!407408 (= (print!1010 thiss!10022) lt!481041)))

(declare-fun b!1422067 () Bool)

(assert (=> b!1422067 (= e!907738 (isEmpty!9053 (list!5806 (_2!7900 (lex!1019 Lexer!2223 (rules!11182 thiss!10022) lt!481041)))))))

(assert (= (and d!407408 res!643846) b!1422067))

(declare-fun m!1613523 () Bool)

(assert (=> d!407408 m!1613523))

(assert (=> d!407408 m!1612763))

(declare-fun m!1613525 () Bool)

(assert (=> d!407408 m!1613525))

(assert (=> d!407408 m!1612759))

(assert (=> d!407408 m!1612763))

(declare-fun m!1613527 () Bool)

(assert (=> d!407408 m!1613527))

(assert (=> b!1422067 m!1613523))

(declare-fun m!1613529 () Bool)

(assert (=> b!1422067 m!1613529))

(assert (=> b!1422067 m!1613529))

(declare-fun m!1613531 () Bool)

(assert (=> b!1422067 m!1613531))

(assert (=> b!1421820 d!407408))

(declare-fun e!907743 () Bool)

(declare-fun b!1422076 () Bool)

(declare-fun tp!403093 () Bool)

(declare-fun tp!403092 () Bool)

(assert (=> b!1422076 (= e!907743 (and (inv!19406 (left!12522 (c!233752 (tokens!1874 other!32)))) tp!403092 (inv!19406 (right!12852 (c!233752 (tokens!1874 other!32)))) tp!403093))))

(declare-fun b!1422078 () Bool)

(declare-fun e!907744 () Bool)

(declare-fun tp!403094 () Bool)

(assert (=> b!1422078 (= e!907744 tp!403094)))

(declare-fun b!1422077 () Bool)

(declare-fun inv!19415 (IArray!9887) Bool)

(assert (=> b!1422077 (= e!907743 (and (inv!19415 (xs!7670 (c!233752 (tokens!1874 other!32)))) e!907744))))

(assert (=> b!1421818 (= tp!403053 (and (inv!19406 (c!233752 (tokens!1874 other!32))) e!907743))))

(assert (= (and b!1421818 ((_ is Node!4941) (c!233752 (tokens!1874 other!32)))) b!1422076))

(assert (= b!1422077 b!1422078))

(assert (= (and b!1421818 ((_ is Leaf!7421) (c!233752 (tokens!1874 other!32)))) b!1422077))

(declare-fun m!1613533 () Bool)

(assert (=> b!1422076 m!1613533))

(declare-fun m!1613535 () Bool)

(assert (=> b!1422076 m!1613535))

(declare-fun m!1613537 () Bool)

(assert (=> b!1422077 m!1613537))

(assert (=> b!1421818 m!1612799))

(declare-fun b!1422089 () Bool)

(declare-fun b_free!35055 () Bool)

(declare-fun b_next!35759 () Bool)

(assert (=> b!1422089 (= b_free!35055 (not b_next!35759))))

(declare-fun tp!403105 () Bool)

(declare-fun b_and!95071 () Bool)

(assert (=> b!1422089 (= tp!403105 b_and!95071)))

(declare-fun b_free!35057 () Bool)

(declare-fun b_next!35761 () Bool)

(assert (=> b!1422089 (= b_free!35057 (not b_next!35761))))

(declare-fun t!124537 () Bool)

(declare-fun tb!73613 () Bool)

(assert (=> (and b!1422089 (= (toChars!3715 (transformation!2557 (h!20055 (rules!11182 other!32)))) (toChars!3715 (transformation!2557 (rule!4320 (h!20054 lt!480729))))) t!124537) tb!73613))

(declare-fun b!1422094 () Bool)

(declare-fun e!907759 () Bool)

(declare-fun tp!403109 () Bool)

(declare-fun inv!19416 (Conc!4940) Bool)

(assert (=> b!1422094 (= e!907759 (and (inv!19416 (c!233750 (dynLambda!6734 (toChars!3715 (transformation!2557 (rule!4320 (h!20054 lt!480729)))) (value!82522 (h!20054 lt!480729))))) tp!403109))))

(declare-fun result!89772 () Bool)

(declare-fun inv!19417 (BalanceConc!9820) Bool)

(assert (=> tb!73613 (= result!89772 (and (inv!19417 (dynLambda!6734 (toChars!3715 (transformation!2557 (rule!4320 (h!20054 lt!480729)))) (value!82522 (h!20054 lt!480729)))) e!907759))))

(assert (= tb!73613 b!1422094))

(declare-fun m!1613539 () Bool)

(assert (=> b!1422094 m!1613539))

(declare-fun m!1613541 () Bool)

(assert (=> tb!73613 m!1613541))

(assert (=> d!407322 t!124537))

(declare-fun b_and!95073 () Bool)

(declare-fun tp!403104 () Bool)

(assert (=> b!1422089 (= tp!403104 (and (=> t!124537 result!89772) b_and!95073))))

(declare-fun e!907753 () Bool)

(assert (=> b!1422089 (= e!907753 (and tp!403105 tp!403104))))

(declare-fun e!907754 () Bool)

(declare-fun b!1422088 () Bool)

(declare-fun tp!403106 () Bool)

(declare-fun inv!19400 (String!17491) Bool)

(declare-fun inv!19418 (TokenValueInjection!4954) Bool)

(assert (=> b!1422088 (= e!907754 (and tp!403106 (inv!19400 (tag!2819 (h!20055 (rules!11182 other!32)))) (inv!19418 (transformation!2557 (h!20055 (rules!11182 other!32)))) e!907753))))

(declare-fun b!1422087 () Bool)

(declare-fun e!907756 () Bool)

(declare-fun tp!403103 () Bool)

(assert (=> b!1422087 (= e!907756 (and e!907754 tp!403103))))

(assert (=> b!1421817 (= tp!403054 e!907756)))

(assert (= b!1422088 b!1422089))

(assert (= b!1422087 b!1422088))

(assert (= (and b!1421817 ((_ is Cons!14654) (rules!11182 other!32))) b!1422087))

(declare-fun m!1613543 () Bool)

(assert (=> b!1422088 m!1613543))

(declare-fun m!1613545 () Bool)

(assert (=> b!1422088 m!1613545))

(declare-fun b!1422097 () Bool)

(declare-fun b_free!35059 () Bool)

(declare-fun b_next!35763 () Bool)

(assert (=> b!1422097 (= b_free!35059 (not b_next!35763))))

(declare-fun tp!403112 () Bool)

(declare-fun b_and!95075 () Bool)

(assert (=> b!1422097 (= tp!403112 b_and!95075)))

(declare-fun b_free!35061 () Bool)

(declare-fun b_next!35765 () Bool)

(assert (=> b!1422097 (= b_free!35061 (not b_next!35765))))

(declare-fun tb!73615 () Bool)

(declare-fun t!124539 () Bool)

(assert (=> (and b!1422097 (= (toChars!3715 (transformation!2557 (h!20055 (rules!11182 thiss!10022)))) (toChars!3715 (transformation!2557 (rule!4320 (h!20054 lt!480729))))) t!124539) tb!73615))

(declare-fun result!89776 () Bool)

(assert (= result!89776 result!89772))

(assert (=> d!407322 t!124539))

(declare-fun tp!403111 () Bool)

(declare-fun b_and!95077 () Bool)

(assert (=> b!1422097 (= tp!403111 (and (=> t!124539 result!89776) b_and!95077))))

(declare-fun e!907760 () Bool)

(assert (=> b!1422097 (= e!907760 (and tp!403112 tp!403111))))

(declare-fun tp!403113 () Bool)

(declare-fun e!907761 () Bool)

(declare-fun b!1422096 () Bool)

(assert (=> b!1422096 (= e!907761 (and tp!403113 (inv!19400 (tag!2819 (h!20055 (rules!11182 thiss!10022)))) (inv!19418 (transformation!2557 (h!20055 (rules!11182 thiss!10022)))) e!907760))))

(declare-fun b!1422095 () Bool)

(declare-fun e!907763 () Bool)

(declare-fun tp!403110 () Bool)

(assert (=> b!1422095 (= e!907763 (and e!907761 tp!403110))))

(assert (=> b!1421826 (= tp!403051 e!907763)))

(assert (= b!1422096 b!1422097))

(assert (= b!1422095 b!1422096))

(assert (= (and b!1421826 ((_ is Cons!14654) (rules!11182 thiss!10022))) b!1422095))

(declare-fun m!1613547 () Bool)

(assert (=> b!1422096 m!1613547))

(declare-fun m!1613549 () Bool)

(assert (=> b!1422096 m!1613549))

(declare-fun tp!403115 () Bool)

(declare-fun b!1422098 () Bool)

(declare-fun tp!403114 () Bool)

(declare-fun e!907764 () Bool)

(assert (=> b!1422098 (= e!907764 (and (inv!19406 (left!12522 (c!233752 (tokens!1874 thiss!10022)))) tp!403114 (inv!19406 (right!12852 (c!233752 (tokens!1874 thiss!10022)))) tp!403115))))

(declare-fun b!1422100 () Bool)

(declare-fun e!907765 () Bool)

(declare-fun tp!403116 () Bool)

(assert (=> b!1422100 (= e!907765 tp!403116)))

(declare-fun b!1422099 () Bool)

(assert (=> b!1422099 (= e!907764 (and (inv!19415 (xs!7670 (c!233752 (tokens!1874 thiss!10022)))) e!907765))))

(assert (=> b!1421825 (= tp!403052 (and (inv!19406 (c!233752 (tokens!1874 thiss!10022))) e!907764))))

(assert (= (and b!1421825 ((_ is Node!4941) (c!233752 (tokens!1874 thiss!10022)))) b!1422098))

(assert (= b!1422099 b!1422100))

(assert (= (and b!1421825 ((_ is Leaf!7421) (c!233752 (tokens!1874 thiss!10022)))) b!1422099))

(declare-fun m!1613551 () Bool)

(assert (=> b!1422098 m!1613551))

(declare-fun m!1613553 () Bool)

(assert (=> b!1422098 m!1613553))

(declare-fun m!1613555 () Bool)

(assert (=> b!1422099 m!1613555))

(assert (=> b!1421825 m!1612783))

(check-sat (not b!1422067) (not b!1421953) (not d!407404) (not b!1421934) (not d!407374) (not b!1421891) (not b!1421947) (not d!407364) b_and!95071 (not b!1422088) (not d!407312) (not d!407308) (not tb!73613) (not b!1421818) (not d!407358) (not d!407408) (not b!1422094) (not b!1422063) (not b!1421909) b_and!95073 (not d!407368) (not b!1421893) (not b!1421974) (not b!1422096) (not b!1421982) (not b!1421952) (not b_next!35761) (not b!1421977) (not b!1422076) (not b!1422065) (not d!407274) (not b!1421988) (not b!1421838) (not b!1421973) (not b!1421922) (not b!1421825) (not b!1421892) (not d!407318) (not b!1421890) (not b!1422100) (not b!1421894) (not b!1421991) (not b!1422099) (not b!1421911) (not b!1421839) (not b_lambda!44637) (not d!407310) (not d!407406) (not d!407322) (not b_next!35763) (not b!1422066) (not b!1422078) (not d!407320) (not b_next!35759) (not b!1422077) b_and!95077 (not d!407276) (not d!407280) (not b_next!35765) (not b!1421979) (not b!1421975) (not b!1421983) (not d!407366) (not b!1422095) (not d!407338) (not b!1421950) (not d!407346) (not b!1421889) (not d!407376) (not b!1421921) (not b!1422098) (not b!1422062) (not b!1421949) (not b!1421992) (not b!1421976) (not d!407372) b_and!95075 (not b!1422087) (not d!407362) (not d!407278) (not d!407344) (not b!1421987) (not d!407354))
(check-sat b_and!95071 b_and!95073 (not b_next!35761) (not b_next!35763) (not b_next!35759) b_and!95077 (not b_next!35765) b_and!95075)
