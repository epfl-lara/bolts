; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!397018 () Bool)

(assert start!397018)

(declare-fun b!4165772 () Bool)

(declare-fun b_free!120295 () Bool)

(declare-fun b_next!120999 () Bool)

(assert (=> b!4165772 (= b_free!120295 (not b_next!120999))))

(declare-fun tp!1272115 () Bool)

(declare-fun b_and!324909 () Bool)

(assert (=> b!4165772 (= tp!1272115 b_and!324909)))

(declare-fun b_free!120297 () Bool)

(declare-fun b_next!121001 () Bool)

(assert (=> b!4165772 (= b_free!120297 (not b_next!121001))))

(declare-fun tp!1272113 () Bool)

(declare-fun b_and!324911 () Bool)

(assert (=> b!4165772 (= tp!1272113 b_and!324911)))

(declare-fun b!4165762 () Bool)

(declare-fun b_free!120299 () Bool)

(declare-fun b_next!121003 () Bool)

(assert (=> b!4165762 (= b_free!120299 (not b_next!121003))))

(declare-fun tp!1272108 () Bool)

(declare-fun b_and!324913 () Bool)

(assert (=> b!4165762 (= tp!1272108 b_and!324913)))

(declare-fun b_free!120301 () Bool)

(declare-fun b_next!121005 () Bool)

(assert (=> b!4165762 (= b_free!120301 (not b_next!121005))))

(declare-fun tp!1272110 () Bool)

(declare-fun b_and!324915 () Bool)

(assert (=> b!4165762 (= tp!1272110 b_and!324915)))

(declare-fun b!4165774 () Bool)

(declare-fun b_free!120303 () Bool)

(declare-fun b_next!121007 () Bool)

(assert (=> b!4165774 (= b_free!120303 (not b_next!121007))))

(declare-fun tp!1272107 () Bool)

(declare-fun b_and!324917 () Bool)

(assert (=> b!4165774 (= tp!1272107 b_and!324917)))

(declare-fun b_free!120305 () Bool)

(declare-fun b_next!121009 () Bool)

(assert (=> b!4165774 (= b_free!120305 (not b_next!121009))))

(declare-fun tp!1272106 () Bool)

(declare-fun b_and!324919 () Bool)

(assert (=> b!4165774 (= tp!1272106 b_and!324919)))

(declare-fun e!2586127 () Bool)

(assert (=> b!4165762 (= e!2586127 (and tp!1272108 tp!1272110))))

(declare-fun b!4165763 () Bool)

(declare-fun e!2586125 () Bool)

(declare-fun e!2586137 () Bool)

(declare-fun tp!1272114 () Bool)

(assert (=> b!4165763 (= e!2586125 (and e!2586137 tp!1272114))))

(declare-fun e!2586126 () Bool)

(declare-fun b!4165765 () Bool)

(declare-fun tp!1272118 () Bool)

(declare-datatypes ((C!25100 0))(
  ( (C!25101 (val!14712 Int)) )
))
(declare-datatypes ((List!45733 0))(
  ( (Nil!45609) (Cons!45609 (h!51029 C!25100) (t!343980 List!45733)) )
))
(declare-datatypes ((IArray!27527 0))(
  ( (IArray!27528 (innerList!13821 List!45733)) )
))
(declare-datatypes ((Conc!13761 0))(
  ( (Node!13761 (left!34002 Conc!13761) (right!34332 Conc!13761) (csize!27752 Int) (cheight!13972 Int)) (Leaf!21279 (xs!17067 IArray!27527) (csize!27753 Int)) (Empty!13761) )
))
(declare-datatypes ((List!45734 0))(
  ( (Nil!45610) (Cons!45610 (h!51030 (_ BitVec 16)) (t!343981 List!45734)) )
))
(declare-datatypes ((BalanceConc!27116 0))(
  ( (BalanceConc!27117 (c!712364 Conc!13761)) )
))
(declare-datatypes ((TokenValue!7780 0))(
  ( (FloatLiteralValue!15560 (text!54905 List!45734)) (TokenValueExt!7779 (__x!27781 Int)) (Broken!38900 (value!235694 List!45734)) (Object!7903) (End!7780) (Def!7780) (Underscore!7780) (Match!7780) (Else!7780) (Error!7780) (Case!7780) (If!7780) (Extends!7780) (Abstract!7780) (Class!7780) (Val!7780) (DelimiterValue!15560 (del!7840 List!45734)) (KeywordValue!7786 (value!235695 List!45734)) (CommentValue!15560 (value!235696 List!45734)) (WhitespaceValue!15560 (value!235697 List!45734)) (IndentationValue!7780 (value!235698 List!45734)) (String!52765) (Int32!7780) (Broken!38901 (value!235699 List!45734)) (Boolean!7781) (Unit!64692) (OperatorValue!7783 (op!7840 List!45734)) (IdentifierValue!15560 (value!235700 List!45734)) (IdentifierValue!15561 (value!235701 List!45734)) (WhitespaceValue!15561 (value!235702 List!45734)) (True!15560) (False!15560) (Broken!38902 (value!235703 List!45734)) (Broken!38903 (value!235704 List!45734)) (True!15561) (RightBrace!7780) (RightBracket!7780) (Colon!7780) (Null!7780) (Comma!7780) (LeftBracket!7780) (False!15561) (LeftBrace!7780) (ImaginaryLiteralValue!7780 (text!54906 List!45734)) (StringLiteralValue!23340 (value!235705 List!45734)) (EOFValue!7780 (value!235706 List!45734)) (IdentValue!7780 (value!235707 List!45734)) (DelimiterValue!15561 (value!235708 List!45734)) (DedentValue!7780 (value!235709 List!45734)) (NewLineValue!7780 (value!235710 List!45734)) (IntegerValue!23340 (value!235711 (_ BitVec 32)) (text!54907 List!45734)) (IntegerValue!23341 (value!235712 Int) (text!54908 List!45734)) (Times!7780) (Or!7780) (Equal!7780) (Minus!7780) (Broken!38904 (value!235713 List!45734)) (And!7780) (Div!7780) (LessEqual!7780) (Mod!7780) (Concat!20235) (Not!7780) (Plus!7780) (SpaceValue!7780 (value!235714 List!45734)) (IntegerValue!23342 (value!235715 Int) (text!54909 List!45734)) (StringLiteralValue!23341 (text!54910 List!45734)) (FloatLiteralValue!15561 (text!54911 List!45734)) (BytesLiteralValue!7780 (value!235716 List!45734)) (CommentValue!15561 (value!235717 List!45734)) (StringLiteralValue!23342 (value!235718 List!45734)) (ErrorTokenValue!7780 (msg!7841 List!45734)) )
))
(declare-datatypes ((TokenValueInjection!14988 0))(
  ( (TokenValueInjection!14989 (toValue!10218 Int) (toChars!10077 Int)) )
))
(declare-datatypes ((String!52766 0))(
  ( (String!52767 (value!235719 String)) )
))
(declare-datatypes ((Regex!12455 0))(
  ( (ElementMatch!12455 (c!712365 C!25100)) (Concat!20236 (regOne!25422 Regex!12455) (regTwo!25422 Regex!12455)) (EmptyExpr!12455) (Star!12455 (reg!12784 Regex!12455)) (EmptyLang!12455) (Union!12455 (regOne!25423 Regex!12455) (regTwo!25423 Regex!12455)) )
))
(declare-datatypes ((Rule!14900 0))(
  ( (Rule!14901 (regex!7550 Regex!12455) (tag!8414 String!52766) (isSeparator!7550 Bool) (transformation!7550 TokenValueInjection!14988)) )
))
(declare-fun rBis!161 () Rule!14900)

(declare-fun inv!60126 (String!52766) Bool)

(declare-fun inv!60128 (TokenValueInjection!14988) Bool)

(assert (=> b!4165765 (= e!2586126 (and tp!1272118 (inv!60126 (tag!8414 rBis!161)) (inv!60128 (transformation!7550 rBis!161)) e!2586127))))

(declare-fun b!4165766 () Bool)

(declare-fun e!2586128 () Bool)

(declare-fun tp_is_empty!21873 () Bool)

(declare-fun tp!1272112 () Bool)

(assert (=> b!4165766 (= e!2586128 (and tp_is_empty!21873 tp!1272112))))

(declare-fun b!4165767 () Bool)

(declare-fun res!1706728 () Bool)

(declare-fun e!2586136 () Bool)

(assert (=> b!4165767 (=> (not res!1706728) (not e!2586136))))

(declare-datatypes ((LexerInterface!7143 0))(
  ( (LexerInterfaceExt!7140 (__x!27782 Int)) (Lexer!7141) )
))
(declare-fun thiss!25889 () LexerInterface!7143)

(declare-datatypes ((List!45735 0))(
  ( (Nil!45611) (Cons!45611 (h!51031 Rule!14900) (t!343982 List!45735)) )
))
(declare-fun rules!3820 () List!45735)

(declare-fun rulesInvariant!6356 (LexerInterface!7143 List!45735) Bool)

(assert (=> b!4165767 (= res!1706728 (rulesInvariant!6356 thiss!25889 rules!3820))))

(declare-fun b!4165768 () Bool)

(declare-fun res!1706724 () Bool)

(assert (=> b!4165768 (=> (not res!1706724) (not e!2586136))))

(declare-fun r!4097 () Rule!14900)

(declare-fun contains!9345 (List!45735 Rule!14900) Bool)

(assert (=> b!4165768 (= res!1706724 (contains!9345 rules!3820 r!4097))))

(declare-fun tp!1272117 () Bool)

(declare-fun e!2586131 () Bool)

(declare-fun b!4165769 () Bool)

(assert (=> b!4165769 (= e!2586137 (and tp!1272117 (inv!60126 (tag!8414 (h!51031 rules!3820))) (inv!60128 (transformation!7550 (h!51031 rules!3820))) e!2586131))))

(declare-fun b!4165770 () Bool)

(declare-fun res!1706726 () Bool)

(assert (=> b!4165770 (=> (not res!1706726) (not e!2586136))))

(declare-fun pBis!100 () List!45733)

(declare-fun input!3316 () List!45733)

(declare-fun isPrefix!4407 (List!45733 List!45733) Bool)

(assert (=> b!4165770 (= res!1706726 (isPrefix!4407 pBis!100 input!3316))))

(declare-fun b!4165771 () Bool)

(declare-fun res!1706729 () Bool)

(assert (=> b!4165771 (=> (not res!1706729) (not e!2586136))))

(declare-fun isEmpty!26995 (List!45735) Bool)

(assert (=> b!4165771 (= res!1706729 (not (isEmpty!26995 rules!3820)))))

(assert (=> b!4165772 (= e!2586131 (and tp!1272115 tp!1272113))))

(declare-fun res!1706727 () Bool)

(assert (=> start!397018 (=> (not res!1706727) (not e!2586136))))

(get-info :version)

(assert (=> start!397018 (= res!1706727 ((_ is Lexer!7141) thiss!25889))))

(assert (=> start!397018 e!2586136))

(declare-fun e!2586133 () Bool)

(assert (=> start!397018 e!2586133))

(assert (=> start!397018 e!2586125))

(assert (=> start!397018 e!2586128))

(declare-fun e!2586130 () Bool)

(assert (=> start!397018 e!2586130))

(assert (=> start!397018 true))

(assert (=> start!397018 e!2586126))

(declare-fun e!2586135 () Bool)

(assert (=> start!397018 e!2586135))

(declare-fun b!4165764 () Bool)

(declare-fun tp!1272116 () Bool)

(assert (=> b!4165764 (= e!2586130 (and tp_is_empty!21873 tp!1272116))))

(declare-fun b!4165773 () Bool)

(declare-fun res!1706730 () Bool)

(assert (=> b!4165773 (=> (not res!1706730) (not e!2586136))))

(assert (=> b!4165773 (= res!1706730 (contains!9345 rules!3820 rBis!161))))

(declare-fun e!2586129 () Bool)

(assert (=> b!4165774 (= e!2586129 (and tp!1272107 tp!1272106))))

(declare-fun b!4165775 () Bool)

(declare-fun res!1706725 () Bool)

(assert (=> b!4165775 (=> (not res!1706725) (not e!2586136))))

(declare-fun p!2942 () List!45733)

(assert (=> b!4165775 (= res!1706725 (isPrefix!4407 p!2942 input!3316))))

(declare-fun b!4165776 () Bool)

(declare-fun rulesValidInductive!2782 (LexerInterface!7143 List!45735) Bool)

(assert (=> b!4165776 (= e!2586136 (not (rulesValidInductive!2782 thiss!25889 rules!3820)))))

(declare-fun b!4165777 () Bool)

(declare-fun tp!1272109 () Bool)

(assert (=> b!4165777 (= e!2586135 (and tp!1272109 (inv!60126 (tag!8414 r!4097)) (inv!60128 (transformation!7550 r!4097)) e!2586129))))

(declare-fun b!4165778 () Bool)

(declare-fun tp!1272111 () Bool)

(assert (=> b!4165778 (= e!2586133 (and tp_is_empty!21873 tp!1272111))))

(assert (= (and start!397018 res!1706727) b!4165775))

(assert (= (and b!4165775 res!1706725) b!4165770))

(assert (= (and b!4165770 res!1706726) b!4165771))

(assert (= (and b!4165771 res!1706729) b!4165767))

(assert (= (and b!4165767 res!1706728) b!4165768))

(assert (= (and b!4165768 res!1706724) b!4165773))

(assert (= (and b!4165773 res!1706730) b!4165776))

(assert (= (and start!397018 ((_ is Cons!45609) pBis!100)) b!4165778))

(assert (= b!4165769 b!4165772))

(assert (= b!4165763 b!4165769))

(assert (= (and start!397018 ((_ is Cons!45611) rules!3820)) b!4165763))

(assert (= (and start!397018 ((_ is Cons!45609) p!2942)) b!4165766))

(assert (= (and start!397018 ((_ is Cons!45609) input!3316)) b!4165764))

(assert (= b!4165765 b!4165762))

(assert (= start!397018 b!4165765))

(assert (= b!4165777 b!4165774))

(assert (= start!397018 b!4165777))

(declare-fun m!4757649 () Bool)

(assert (=> b!4165775 m!4757649))

(declare-fun m!4757651 () Bool)

(assert (=> b!4165770 m!4757651))

(declare-fun m!4757653 () Bool)

(assert (=> b!4165771 m!4757653))

(declare-fun m!4757655 () Bool)

(assert (=> b!4165767 m!4757655))

(declare-fun m!4757657 () Bool)

(assert (=> b!4165777 m!4757657))

(declare-fun m!4757659 () Bool)

(assert (=> b!4165777 m!4757659))

(declare-fun m!4757661 () Bool)

(assert (=> b!4165765 m!4757661))

(declare-fun m!4757663 () Bool)

(assert (=> b!4165765 m!4757663))

(declare-fun m!4757665 () Bool)

(assert (=> b!4165768 m!4757665))

(declare-fun m!4757667 () Bool)

(assert (=> b!4165773 m!4757667))

(declare-fun m!4757669 () Bool)

(assert (=> b!4165769 m!4757669))

(declare-fun m!4757671 () Bool)

(assert (=> b!4165769 m!4757671))

(declare-fun m!4757673 () Bool)

(assert (=> b!4165776 m!4757673))

(check-sat (not b_next!121009) (not b!4165771) b_and!324913 (not b!4165763) (not b!4165770) (not b!4165767) (not b!4165777) (not b!4165776) (not b!4165769) (not b_next!121005) (not b!4165768) b_and!324915 (not b!4165775) (not b!4165773) (not b!4165764) (not b!4165765) b_and!324917 (not b_next!121001) b_and!324909 tp_is_empty!21873 (not b!4165766) b_and!324919 b_and!324911 (not b_next!120999) (not b_next!121003) (not b_next!121007) (not b!4165778))
(check-sat b_and!324915 (not b_next!121009) b_and!324917 b_and!324913 (not b_next!121005) (not b_next!121007) (not b_next!121001) b_and!324909 b_and!324919 b_and!324911 (not b_next!120999) (not b_next!121003))
(get-model)

(declare-fun d!1231004 () Bool)

(declare-fun lt!1484091 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7090 (List!45735) (InoxSet Rule!14900))

(assert (=> d!1231004 (= lt!1484091 (select (content!7090 rules!3820) rBis!161))))

(declare-fun e!2586148 () Bool)

(assert (=> d!1231004 (= lt!1484091 e!2586148)))

(declare-fun res!1706748 () Bool)

(assert (=> d!1231004 (=> (not res!1706748) (not e!2586148))))

(assert (=> d!1231004 (= res!1706748 ((_ is Cons!45611) rules!3820))))

(assert (=> d!1231004 (= (contains!9345 rules!3820 rBis!161) lt!1484091)))

(declare-fun b!4165787 () Bool)

(declare-fun e!2586147 () Bool)

(assert (=> b!4165787 (= e!2586148 e!2586147)))

(declare-fun res!1706747 () Bool)

(assert (=> b!4165787 (=> res!1706747 e!2586147)))

(assert (=> b!4165787 (= res!1706747 (= (h!51031 rules!3820) rBis!161))))

(declare-fun b!4165788 () Bool)

(assert (=> b!4165788 (= e!2586147 (contains!9345 (t!343982 rules!3820) rBis!161))))

(assert (= (and d!1231004 res!1706748) b!4165787))

(assert (= (and b!4165787 (not res!1706747)) b!4165788))

(declare-fun m!4757675 () Bool)

(assert (=> d!1231004 m!4757675))

(declare-fun m!4757677 () Bool)

(assert (=> d!1231004 m!4757677))

(declare-fun m!4757679 () Bool)

(assert (=> b!4165788 m!4757679))

(assert (=> b!4165773 d!1231004))

(declare-fun d!1231006 () Bool)

(declare-fun lt!1484092 () Bool)

(assert (=> d!1231006 (= lt!1484092 (select (content!7090 rules!3820) r!4097))))

(declare-fun e!2586150 () Bool)

(assert (=> d!1231006 (= lt!1484092 e!2586150)))

(declare-fun res!1706750 () Bool)

(assert (=> d!1231006 (=> (not res!1706750) (not e!2586150))))

(assert (=> d!1231006 (= res!1706750 ((_ is Cons!45611) rules!3820))))

(assert (=> d!1231006 (= (contains!9345 rules!3820 r!4097) lt!1484092)))

(declare-fun b!4165789 () Bool)

(declare-fun e!2586149 () Bool)

(assert (=> b!4165789 (= e!2586150 e!2586149)))

(declare-fun res!1706749 () Bool)

(assert (=> b!4165789 (=> res!1706749 e!2586149)))

(assert (=> b!4165789 (= res!1706749 (= (h!51031 rules!3820) r!4097))))

(declare-fun b!4165790 () Bool)

(assert (=> b!4165790 (= e!2586149 (contains!9345 (t!343982 rules!3820) r!4097))))

(assert (= (and d!1231006 res!1706750) b!4165789))

(assert (= (and b!4165789 (not res!1706749)) b!4165790))

(assert (=> d!1231006 m!4757675))

(declare-fun m!4757681 () Bool)

(assert (=> d!1231006 m!4757681))

(declare-fun m!4757683 () Bool)

(assert (=> b!4165790 m!4757683))

(assert (=> b!4165768 d!1231006))

(declare-fun d!1231008 () Bool)

(assert (=> d!1231008 (= (inv!60126 (tag!8414 (h!51031 rules!3820))) (= (mod (str.len (value!235719 (tag!8414 (h!51031 rules!3820)))) 2) 0))))

(assert (=> b!4165769 d!1231008))

(declare-fun d!1231010 () Bool)

(declare-fun res!1706753 () Bool)

(declare-fun e!2586153 () Bool)

(assert (=> d!1231010 (=> (not res!1706753) (not e!2586153))))

(declare-fun semiInverseModEq!3276 (Int Int) Bool)

(assert (=> d!1231010 (= res!1706753 (semiInverseModEq!3276 (toChars!10077 (transformation!7550 (h!51031 rules!3820))) (toValue!10218 (transformation!7550 (h!51031 rules!3820)))))))

(assert (=> d!1231010 (= (inv!60128 (transformation!7550 (h!51031 rules!3820))) e!2586153)))

(declare-fun b!4165793 () Bool)

(declare-fun equivClasses!3175 (Int Int) Bool)

(assert (=> b!4165793 (= e!2586153 (equivClasses!3175 (toChars!10077 (transformation!7550 (h!51031 rules!3820))) (toValue!10218 (transformation!7550 (h!51031 rules!3820)))))))

(assert (= (and d!1231010 res!1706753) b!4165793))

(declare-fun m!4757685 () Bool)

(assert (=> d!1231010 m!4757685))

(declare-fun m!4757687 () Bool)

(assert (=> b!4165793 m!4757687))

(assert (=> b!4165769 d!1231010))

(declare-fun b!4165804 () Bool)

(declare-fun e!2586162 () Bool)

(declare-fun tail!6691 (List!45733) List!45733)

(assert (=> b!4165804 (= e!2586162 (isPrefix!4407 (tail!6691 p!2942) (tail!6691 input!3316)))))

(declare-fun b!4165802 () Bool)

(declare-fun e!2586161 () Bool)

(assert (=> b!4165802 (= e!2586161 e!2586162)))

(declare-fun res!1706762 () Bool)

(assert (=> b!4165802 (=> (not res!1706762) (not e!2586162))))

(assert (=> b!4165802 (= res!1706762 (not ((_ is Nil!45609) input!3316)))))

(declare-fun d!1231012 () Bool)

(declare-fun e!2586160 () Bool)

(assert (=> d!1231012 e!2586160))

(declare-fun res!1706763 () Bool)

(assert (=> d!1231012 (=> res!1706763 e!2586160)))

(declare-fun lt!1484095 () Bool)

(assert (=> d!1231012 (= res!1706763 (not lt!1484095))))

(assert (=> d!1231012 (= lt!1484095 e!2586161)))

(declare-fun res!1706765 () Bool)

(assert (=> d!1231012 (=> res!1706765 e!2586161)))

(assert (=> d!1231012 (= res!1706765 ((_ is Nil!45609) p!2942))))

(assert (=> d!1231012 (= (isPrefix!4407 p!2942 input!3316) lt!1484095)))

(declare-fun b!4165805 () Bool)

(declare-fun size!33506 (List!45733) Int)

(assert (=> b!4165805 (= e!2586160 (>= (size!33506 input!3316) (size!33506 p!2942)))))

(declare-fun b!4165803 () Bool)

(declare-fun res!1706764 () Bool)

(assert (=> b!4165803 (=> (not res!1706764) (not e!2586162))))

(declare-fun head!8844 (List!45733) C!25100)

(assert (=> b!4165803 (= res!1706764 (= (head!8844 p!2942) (head!8844 input!3316)))))

(assert (= (and d!1231012 (not res!1706765)) b!4165802))

(assert (= (and b!4165802 res!1706762) b!4165803))

(assert (= (and b!4165803 res!1706764) b!4165804))

(assert (= (and d!1231012 (not res!1706763)) b!4165805))

(declare-fun m!4757689 () Bool)

(assert (=> b!4165804 m!4757689))

(declare-fun m!4757691 () Bool)

(assert (=> b!4165804 m!4757691))

(assert (=> b!4165804 m!4757689))

(assert (=> b!4165804 m!4757691))

(declare-fun m!4757693 () Bool)

(assert (=> b!4165804 m!4757693))

(declare-fun m!4757695 () Bool)

(assert (=> b!4165805 m!4757695))

(declare-fun m!4757697 () Bool)

(assert (=> b!4165805 m!4757697))

(declare-fun m!4757699 () Bool)

(assert (=> b!4165803 m!4757699))

(declare-fun m!4757701 () Bool)

(assert (=> b!4165803 m!4757701))

(assert (=> b!4165775 d!1231012))

(declare-fun b!4165808 () Bool)

(declare-fun e!2586165 () Bool)

(assert (=> b!4165808 (= e!2586165 (isPrefix!4407 (tail!6691 pBis!100) (tail!6691 input!3316)))))

(declare-fun b!4165806 () Bool)

(declare-fun e!2586164 () Bool)

(assert (=> b!4165806 (= e!2586164 e!2586165)))

(declare-fun res!1706766 () Bool)

(assert (=> b!4165806 (=> (not res!1706766) (not e!2586165))))

(assert (=> b!4165806 (= res!1706766 (not ((_ is Nil!45609) input!3316)))))

(declare-fun d!1231014 () Bool)

(declare-fun e!2586163 () Bool)

(assert (=> d!1231014 e!2586163))

(declare-fun res!1706767 () Bool)

(assert (=> d!1231014 (=> res!1706767 e!2586163)))

(declare-fun lt!1484096 () Bool)

(assert (=> d!1231014 (= res!1706767 (not lt!1484096))))

(assert (=> d!1231014 (= lt!1484096 e!2586164)))

(declare-fun res!1706769 () Bool)

(assert (=> d!1231014 (=> res!1706769 e!2586164)))

(assert (=> d!1231014 (= res!1706769 ((_ is Nil!45609) pBis!100))))

(assert (=> d!1231014 (= (isPrefix!4407 pBis!100 input!3316) lt!1484096)))

(declare-fun b!4165809 () Bool)

(assert (=> b!4165809 (= e!2586163 (>= (size!33506 input!3316) (size!33506 pBis!100)))))

(declare-fun b!4165807 () Bool)

(declare-fun res!1706768 () Bool)

(assert (=> b!4165807 (=> (not res!1706768) (not e!2586165))))

(assert (=> b!4165807 (= res!1706768 (= (head!8844 pBis!100) (head!8844 input!3316)))))

(assert (= (and d!1231014 (not res!1706769)) b!4165806))

(assert (= (and b!4165806 res!1706766) b!4165807))

(assert (= (and b!4165807 res!1706768) b!4165808))

(assert (= (and d!1231014 (not res!1706767)) b!4165809))

(declare-fun m!4757703 () Bool)

(assert (=> b!4165808 m!4757703))

(assert (=> b!4165808 m!4757691))

(assert (=> b!4165808 m!4757703))

(assert (=> b!4165808 m!4757691))

(declare-fun m!4757705 () Bool)

(assert (=> b!4165808 m!4757705))

(assert (=> b!4165809 m!4757695))

(declare-fun m!4757707 () Bool)

(assert (=> b!4165809 m!4757707))

(declare-fun m!4757709 () Bool)

(assert (=> b!4165807 m!4757709))

(assert (=> b!4165807 m!4757701))

(assert (=> b!4165770 d!1231014))

(declare-fun d!1231016 () Bool)

(assert (=> d!1231016 (= (inv!60126 (tag!8414 rBis!161)) (= (mod (str.len (value!235719 (tag!8414 rBis!161))) 2) 0))))

(assert (=> b!4165765 d!1231016))

(declare-fun d!1231018 () Bool)

(declare-fun res!1706770 () Bool)

(declare-fun e!2586166 () Bool)

(assert (=> d!1231018 (=> (not res!1706770) (not e!2586166))))

(assert (=> d!1231018 (= res!1706770 (semiInverseModEq!3276 (toChars!10077 (transformation!7550 rBis!161)) (toValue!10218 (transformation!7550 rBis!161))))))

(assert (=> d!1231018 (= (inv!60128 (transformation!7550 rBis!161)) e!2586166)))

(declare-fun b!4165810 () Bool)

(assert (=> b!4165810 (= e!2586166 (equivClasses!3175 (toChars!10077 (transformation!7550 rBis!161)) (toValue!10218 (transformation!7550 rBis!161))))))

(assert (= (and d!1231018 res!1706770) b!4165810))

(declare-fun m!4757711 () Bool)

(assert (=> d!1231018 m!4757711))

(declare-fun m!4757713 () Bool)

(assert (=> b!4165810 m!4757713))

(assert (=> b!4165765 d!1231018))

(declare-fun d!1231020 () Bool)

(assert (=> d!1231020 true))

(declare-fun lt!1484108 () Bool)

(declare-fun lambda!129111 () Int)

(declare-fun forall!8462 (List!45735 Int) Bool)

(assert (=> d!1231020 (= lt!1484108 (forall!8462 rules!3820 lambda!129111))))

(declare-fun e!2586223 () Bool)

(assert (=> d!1231020 (= lt!1484108 e!2586223)))

(declare-fun res!1706809 () Bool)

(assert (=> d!1231020 (=> res!1706809 e!2586223)))

(assert (=> d!1231020 (= res!1706809 (not ((_ is Cons!45611) rules!3820)))))

(assert (=> d!1231020 (= (rulesValidInductive!2782 thiss!25889 rules!3820) lt!1484108)))

(declare-fun b!4165891 () Bool)

(declare-fun e!2586224 () Bool)

(assert (=> b!4165891 (= e!2586223 e!2586224)))

(declare-fun res!1706810 () Bool)

(assert (=> b!4165891 (=> (not res!1706810) (not e!2586224))))

(declare-fun ruleValid!3272 (LexerInterface!7143 Rule!14900) Bool)

(assert (=> b!4165891 (= res!1706810 (ruleValid!3272 thiss!25889 (h!51031 rules!3820)))))

(declare-fun b!4165892 () Bool)

(assert (=> b!4165892 (= e!2586224 (rulesValidInductive!2782 thiss!25889 (t!343982 rules!3820)))))

(assert (= (and d!1231020 (not res!1706809)) b!4165891))

(assert (= (and b!4165891 res!1706810) b!4165892))

(declare-fun m!4757773 () Bool)

(assert (=> d!1231020 m!4757773))

(declare-fun m!4757775 () Bool)

(assert (=> b!4165891 m!4757775))

(declare-fun m!4757777 () Bool)

(assert (=> b!4165892 m!4757777))

(assert (=> b!4165776 d!1231020))

(declare-fun d!1231046 () Bool)

(assert (=> d!1231046 (= (isEmpty!26995 rules!3820) ((_ is Nil!45611) rules!3820))))

(assert (=> b!4165771 d!1231046))

(declare-fun d!1231048 () Bool)

(assert (=> d!1231048 (= (inv!60126 (tag!8414 r!4097)) (= (mod (str.len (value!235719 (tag!8414 r!4097))) 2) 0))))

(assert (=> b!4165777 d!1231048))

(declare-fun d!1231050 () Bool)

(declare-fun res!1706811 () Bool)

(declare-fun e!2586225 () Bool)

(assert (=> d!1231050 (=> (not res!1706811) (not e!2586225))))

(assert (=> d!1231050 (= res!1706811 (semiInverseModEq!3276 (toChars!10077 (transformation!7550 r!4097)) (toValue!10218 (transformation!7550 r!4097))))))

(assert (=> d!1231050 (= (inv!60128 (transformation!7550 r!4097)) e!2586225)))

(declare-fun b!4165895 () Bool)

(assert (=> b!4165895 (= e!2586225 (equivClasses!3175 (toChars!10077 (transformation!7550 r!4097)) (toValue!10218 (transformation!7550 r!4097))))))

(assert (= (and d!1231050 res!1706811) b!4165895))

(declare-fun m!4757779 () Bool)

(assert (=> d!1231050 m!4757779))

(declare-fun m!4757781 () Bool)

(assert (=> b!4165895 m!4757781))

(assert (=> b!4165777 d!1231050))

(declare-fun d!1231052 () Bool)

(declare-fun res!1706814 () Bool)

(declare-fun e!2586228 () Bool)

(assert (=> d!1231052 (=> (not res!1706814) (not e!2586228))))

(declare-fun rulesValid!2944 (LexerInterface!7143 List!45735) Bool)

(assert (=> d!1231052 (= res!1706814 (rulesValid!2944 thiss!25889 rules!3820))))

(assert (=> d!1231052 (= (rulesInvariant!6356 thiss!25889 rules!3820) e!2586228)))

(declare-fun b!4165898 () Bool)

(declare-datatypes ((List!45737 0))(
  ( (Nil!45613) (Cons!45613 (h!51033 String!52766) (t!343984 List!45737)) )
))
(declare-fun noDuplicateTag!3105 (LexerInterface!7143 List!45735 List!45737) Bool)

(assert (=> b!4165898 (= e!2586228 (noDuplicateTag!3105 thiss!25889 rules!3820 Nil!45613))))

(assert (= (and d!1231052 res!1706814) b!4165898))

(declare-fun m!4757783 () Bool)

(assert (=> d!1231052 m!4757783))

(declare-fun m!4757785 () Bool)

(assert (=> b!4165898 m!4757785))

(assert (=> b!4165767 d!1231052))

(declare-fun b!4165903 () Bool)

(declare-fun e!2586231 () Bool)

(declare-fun tp!1272163 () Bool)

(assert (=> b!4165903 (= e!2586231 (and tp_is_empty!21873 tp!1272163))))

(assert (=> b!4165778 (= tp!1272111 e!2586231)))

(assert (= (and b!4165778 ((_ is Cons!45609) (t!343980 pBis!100))) b!4165903))

(declare-fun b!4165914 () Bool)

(declare-fun b_free!120311 () Bool)

(declare-fun b_next!121015 () Bool)

(assert (=> b!4165914 (= b_free!120311 (not b_next!121015))))

(declare-fun tp!1272173 () Bool)

(declare-fun b_and!324925 () Bool)

(assert (=> b!4165914 (= tp!1272173 b_and!324925)))

(declare-fun b_free!120313 () Bool)

(declare-fun b_next!121017 () Bool)

(assert (=> b!4165914 (= b_free!120313 (not b_next!121017))))

(declare-fun tp!1272172 () Bool)

(declare-fun b_and!324927 () Bool)

(assert (=> b!4165914 (= tp!1272172 b_and!324927)))

(declare-fun e!2586241 () Bool)

(assert (=> b!4165914 (= e!2586241 (and tp!1272173 tp!1272172))))

(declare-fun e!2586240 () Bool)

(declare-fun tp!1272175 () Bool)

(declare-fun b!4165913 () Bool)

(assert (=> b!4165913 (= e!2586240 (and tp!1272175 (inv!60126 (tag!8414 (h!51031 (t!343982 rules!3820)))) (inv!60128 (transformation!7550 (h!51031 (t!343982 rules!3820)))) e!2586241))))

(declare-fun b!4165912 () Bool)

(declare-fun e!2586243 () Bool)

(declare-fun tp!1272174 () Bool)

(assert (=> b!4165912 (= e!2586243 (and e!2586240 tp!1272174))))

(assert (=> b!4165763 (= tp!1272114 e!2586243)))

(assert (= b!4165913 b!4165914))

(assert (= b!4165912 b!4165913))

(assert (= (and b!4165763 ((_ is Cons!45611) (t!343982 rules!3820))) b!4165912))

(declare-fun m!4757787 () Bool)

(assert (=> b!4165913 m!4757787))

(declare-fun m!4757789 () Bool)

(assert (=> b!4165913 m!4757789))

(declare-fun b!4165927 () Bool)

(declare-fun e!2586246 () Bool)

(declare-fun tp!1272190 () Bool)

(assert (=> b!4165927 (= e!2586246 tp!1272190)))

(declare-fun b!4165926 () Bool)

(declare-fun tp!1272186 () Bool)

(declare-fun tp!1272189 () Bool)

(assert (=> b!4165926 (= e!2586246 (and tp!1272186 tp!1272189))))

(declare-fun b!4165928 () Bool)

(declare-fun tp!1272188 () Bool)

(declare-fun tp!1272187 () Bool)

(assert (=> b!4165928 (= e!2586246 (and tp!1272188 tp!1272187))))

(assert (=> b!4165769 (= tp!1272117 e!2586246)))

(declare-fun b!4165925 () Bool)

(assert (=> b!4165925 (= e!2586246 tp_is_empty!21873)))

(assert (= (and b!4165769 ((_ is ElementMatch!12455) (regex!7550 (h!51031 rules!3820)))) b!4165925))

(assert (= (and b!4165769 ((_ is Concat!20236) (regex!7550 (h!51031 rules!3820)))) b!4165926))

(assert (= (and b!4165769 ((_ is Star!12455) (regex!7550 (h!51031 rules!3820)))) b!4165927))

(assert (= (and b!4165769 ((_ is Union!12455) (regex!7550 (h!51031 rules!3820)))) b!4165928))

(declare-fun b!4165929 () Bool)

(declare-fun e!2586247 () Bool)

(declare-fun tp!1272191 () Bool)

(assert (=> b!4165929 (= e!2586247 (and tp_is_empty!21873 tp!1272191))))

(assert (=> b!4165764 (= tp!1272116 e!2586247)))

(assert (= (and b!4165764 ((_ is Cons!45609) (t!343980 input!3316))) b!4165929))

(declare-fun b!4165932 () Bool)

(declare-fun e!2586248 () Bool)

(declare-fun tp!1272196 () Bool)

(assert (=> b!4165932 (= e!2586248 tp!1272196)))

(declare-fun b!4165931 () Bool)

(declare-fun tp!1272192 () Bool)

(declare-fun tp!1272195 () Bool)

(assert (=> b!4165931 (= e!2586248 (and tp!1272192 tp!1272195))))

(declare-fun b!4165933 () Bool)

(declare-fun tp!1272194 () Bool)

(declare-fun tp!1272193 () Bool)

(assert (=> b!4165933 (= e!2586248 (and tp!1272194 tp!1272193))))

(assert (=> b!4165765 (= tp!1272118 e!2586248)))

(declare-fun b!4165930 () Bool)

(assert (=> b!4165930 (= e!2586248 tp_is_empty!21873)))

(assert (= (and b!4165765 ((_ is ElementMatch!12455) (regex!7550 rBis!161))) b!4165930))

(assert (= (and b!4165765 ((_ is Concat!20236) (regex!7550 rBis!161))) b!4165931))

(assert (= (and b!4165765 ((_ is Star!12455) (regex!7550 rBis!161))) b!4165932))

(assert (= (and b!4165765 ((_ is Union!12455) (regex!7550 rBis!161))) b!4165933))

(declare-fun b!4165934 () Bool)

(declare-fun e!2586249 () Bool)

(declare-fun tp!1272197 () Bool)

(assert (=> b!4165934 (= e!2586249 (and tp_is_empty!21873 tp!1272197))))

(assert (=> b!4165766 (= tp!1272112 e!2586249)))

(assert (= (and b!4165766 ((_ is Cons!45609) (t!343980 p!2942))) b!4165934))

(declare-fun b!4165937 () Bool)

(declare-fun e!2586250 () Bool)

(declare-fun tp!1272202 () Bool)

(assert (=> b!4165937 (= e!2586250 tp!1272202)))

(declare-fun b!4165936 () Bool)

(declare-fun tp!1272198 () Bool)

(declare-fun tp!1272201 () Bool)

(assert (=> b!4165936 (= e!2586250 (and tp!1272198 tp!1272201))))

(declare-fun b!4165938 () Bool)

(declare-fun tp!1272200 () Bool)

(declare-fun tp!1272199 () Bool)

(assert (=> b!4165938 (= e!2586250 (and tp!1272200 tp!1272199))))

(assert (=> b!4165777 (= tp!1272109 e!2586250)))

(declare-fun b!4165935 () Bool)

(assert (=> b!4165935 (= e!2586250 tp_is_empty!21873)))

(assert (= (and b!4165777 ((_ is ElementMatch!12455) (regex!7550 r!4097))) b!4165935))

(assert (= (and b!4165777 ((_ is Concat!20236) (regex!7550 r!4097))) b!4165936))

(assert (= (and b!4165777 ((_ is Star!12455) (regex!7550 r!4097))) b!4165937))

(assert (= (and b!4165777 ((_ is Union!12455) (regex!7550 r!4097))) b!4165938))

(check-sat (not b!4165929) (not b!4165938) (not b!4165898) (not b!4165793) (not b_next!121007) (not b!4165805) (not d!1231052) (not b!4165807) (not d!1231050) (not b!4165788) (not b!4165932) (not b!4165927) (not d!1231004) b_and!324915 (not d!1231010) (not b!4165891) (not b!4165790) b_and!324927 (not b!4165931) (not b!4165926) (not b_next!121009) (not b!4165809) (not d!1231020) (not b!4165810) b_and!324917 (not d!1231006) (not b!4165934) (not b!4165912) (not b!4165937) (not b_next!121001) (not b_next!121017) (not b!4165903) b_and!324909 (not b!4165804) (not b!4165808) b_and!324913 (not b!4165928) (not b!4165933) tp_is_empty!21873 (not b!4165895) (not b!4165892) (not d!1231018) (not b!4165913) (not b_next!121005) b_and!324925 (not b_next!121015) (not b!4165936) (not b!4165803) b_and!324919 b_and!324911 (not b_next!120999) (not b_next!121003))
(check-sat b_and!324915 b_and!324927 (not b_next!121009) b_and!324917 b_and!324913 (not b_next!121015) (not b_next!121007) (not b_next!121001) (not b_next!121017) b_and!324909 (not b_next!121005) b_and!324925 b_and!324919 b_and!324911 (not b_next!120999) (not b_next!121003))
(get-model)

(declare-fun d!1231056 () Bool)

(assert (=> d!1231056 (= (head!8844 pBis!100) (h!51029 pBis!100))))

(assert (=> b!4165807 d!1231056))

(declare-fun d!1231064 () Bool)

(assert (=> d!1231064 (= (head!8844 input!3316) (h!51029 input!3316))))

(assert (=> b!4165807 d!1231064))

(declare-fun d!1231066 () Bool)

(assert (=> d!1231066 (= (inv!60126 (tag!8414 (h!51031 (t!343982 rules!3820)))) (= (mod (str.len (value!235719 (tag!8414 (h!51031 (t!343982 rules!3820))))) 2) 0))))

(assert (=> b!4165913 d!1231066))

(declare-fun d!1231072 () Bool)

(declare-fun res!1706827 () Bool)

(declare-fun e!2586254 () Bool)

(assert (=> d!1231072 (=> (not res!1706827) (not e!2586254))))

(assert (=> d!1231072 (= res!1706827 (semiInverseModEq!3276 (toChars!10077 (transformation!7550 (h!51031 (t!343982 rules!3820)))) (toValue!10218 (transformation!7550 (h!51031 (t!343982 rules!3820))))))))

(assert (=> d!1231072 (= (inv!60128 (transformation!7550 (h!51031 (t!343982 rules!3820)))) e!2586254)))

(declare-fun b!4165943 () Bool)

(assert (=> b!4165943 (= e!2586254 (equivClasses!3175 (toChars!10077 (transformation!7550 (h!51031 (t!343982 rules!3820)))) (toValue!10218 (transformation!7550 (h!51031 (t!343982 rules!3820))))))))

(assert (= (and d!1231072 res!1706827) b!4165943))

(declare-fun m!4757805 () Bool)

(assert (=> d!1231072 m!4757805))

(declare-fun m!4757807 () Bool)

(assert (=> b!4165943 m!4757807))

(assert (=> b!4165913 d!1231072))

(declare-fun d!1231074 () Bool)

(declare-fun lt!1484110 () Bool)

(assert (=> d!1231074 (= lt!1484110 (select (content!7090 (t!343982 rules!3820)) r!4097))))

(declare-fun e!2586256 () Bool)

(assert (=> d!1231074 (= lt!1484110 e!2586256)))

(declare-fun res!1706829 () Bool)

(assert (=> d!1231074 (=> (not res!1706829) (not e!2586256))))

(assert (=> d!1231074 (= res!1706829 ((_ is Cons!45611) (t!343982 rules!3820)))))

(assert (=> d!1231074 (= (contains!9345 (t!343982 rules!3820) r!4097) lt!1484110)))

(declare-fun b!4165944 () Bool)

(declare-fun e!2586255 () Bool)

(assert (=> b!4165944 (= e!2586256 e!2586255)))

(declare-fun res!1706828 () Bool)

(assert (=> b!4165944 (=> res!1706828 e!2586255)))

(assert (=> b!4165944 (= res!1706828 (= (h!51031 (t!343982 rules!3820)) r!4097))))

(declare-fun b!4165945 () Bool)

(assert (=> b!4165945 (= e!2586255 (contains!9345 (t!343982 (t!343982 rules!3820)) r!4097))))

(assert (= (and d!1231074 res!1706829) b!4165944))

(assert (= (and b!4165944 (not res!1706828)) b!4165945))

(declare-fun m!4757809 () Bool)

(assert (=> d!1231074 m!4757809))

(declare-fun m!4757811 () Bool)

(assert (=> d!1231074 m!4757811))

(declare-fun m!4757813 () Bool)

(assert (=> b!4165945 m!4757813))

(assert (=> b!4165790 d!1231074))

(declare-fun b!4165948 () Bool)

(declare-fun e!2586259 () Bool)

(assert (=> b!4165948 (= e!2586259 (isPrefix!4407 (tail!6691 (tail!6691 pBis!100)) (tail!6691 (tail!6691 input!3316))))))

(declare-fun b!4165946 () Bool)

(declare-fun e!2586258 () Bool)

(assert (=> b!4165946 (= e!2586258 e!2586259)))

(declare-fun res!1706830 () Bool)

(assert (=> b!4165946 (=> (not res!1706830) (not e!2586259))))

(assert (=> b!4165946 (= res!1706830 (not ((_ is Nil!45609) (tail!6691 input!3316))))))

(declare-fun d!1231076 () Bool)

(declare-fun e!2586257 () Bool)

(assert (=> d!1231076 e!2586257))

(declare-fun res!1706831 () Bool)

(assert (=> d!1231076 (=> res!1706831 e!2586257)))

(declare-fun lt!1484111 () Bool)

(assert (=> d!1231076 (= res!1706831 (not lt!1484111))))

(assert (=> d!1231076 (= lt!1484111 e!2586258)))

(declare-fun res!1706833 () Bool)

(assert (=> d!1231076 (=> res!1706833 e!2586258)))

(assert (=> d!1231076 (= res!1706833 ((_ is Nil!45609) (tail!6691 pBis!100)))))

(assert (=> d!1231076 (= (isPrefix!4407 (tail!6691 pBis!100) (tail!6691 input!3316)) lt!1484111)))

(declare-fun b!4165949 () Bool)

(assert (=> b!4165949 (= e!2586257 (>= (size!33506 (tail!6691 input!3316)) (size!33506 (tail!6691 pBis!100))))))

(declare-fun b!4165947 () Bool)

(declare-fun res!1706832 () Bool)

(assert (=> b!4165947 (=> (not res!1706832) (not e!2586259))))

(assert (=> b!4165947 (= res!1706832 (= (head!8844 (tail!6691 pBis!100)) (head!8844 (tail!6691 input!3316))))))

(assert (= (and d!1231076 (not res!1706833)) b!4165946))

(assert (= (and b!4165946 res!1706830) b!4165947))

(assert (= (and b!4165947 res!1706832) b!4165948))

(assert (= (and d!1231076 (not res!1706831)) b!4165949))

(assert (=> b!4165948 m!4757703))

(declare-fun m!4757815 () Bool)

(assert (=> b!4165948 m!4757815))

(assert (=> b!4165948 m!4757691))

(declare-fun m!4757817 () Bool)

(assert (=> b!4165948 m!4757817))

(assert (=> b!4165948 m!4757815))

(assert (=> b!4165948 m!4757817))

(declare-fun m!4757819 () Bool)

(assert (=> b!4165948 m!4757819))

(assert (=> b!4165949 m!4757691))

(declare-fun m!4757821 () Bool)

(assert (=> b!4165949 m!4757821))

(assert (=> b!4165949 m!4757703))

(declare-fun m!4757823 () Bool)

(assert (=> b!4165949 m!4757823))

(assert (=> b!4165947 m!4757703))

(declare-fun m!4757825 () Bool)

(assert (=> b!4165947 m!4757825))

(assert (=> b!4165947 m!4757691))

(declare-fun m!4757827 () Bool)

(assert (=> b!4165947 m!4757827))

(assert (=> b!4165808 d!1231076))

(declare-fun d!1231078 () Bool)

(assert (=> d!1231078 (= (tail!6691 pBis!100) (t!343980 pBis!100))))

(assert (=> b!4165808 d!1231078))

(declare-fun d!1231080 () Bool)

(assert (=> d!1231080 (= (tail!6691 input!3316) (t!343980 input!3316))))

(assert (=> b!4165808 d!1231080))

(declare-fun d!1231082 () Bool)

(assert (=> d!1231082 true))

(declare-fun order!24019 () Int)

(declare-fun order!24021 () Int)

(declare-fun lambda!129117 () Int)

(declare-fun dynLambda!19526 (Int Int) Int)

(declare-fun dynLambda!19527 (Int Int) Int)

(assert (=> d!1231082 (< (dynLambda!19526 order!24019 (toChars!10077 (transformation!7550 (h!51031 rules!3820)))) (dynLambda!19527 order!24021 lambda!129117))))

(assert (=> d!1231082 true))

(declare-fun order!24023 () Int)

(declare-fun dynLambda!19528 (Int Int) Int)

(assert (=> d!1231082 (< (dynLambda!19528 order!24023 (toValue!10218 (transformation!7550 (h!51031 rules!3820)))) (dynLambda!19527 order!24021 lambda!129117))))

(declare-fun Forall!1553 (Int) Bool)

(assert (=> d!1231082 (= (semiInverseModEq!3276 (toChars!10077 (transformation!7550 (h!51031 rules!3820))) (toValue!10218 (transformation!7550 (h!51031 rules!3820)))) (Forall!1553 lambda!129117))))

(declare-fun bs!595799 () Bool)

(assert (= bs!595799 d!1231082))

(declare-fun m!4757831 () Bool)

(assert (=> bs!595799 m!4757831))

(assert (=> d!1231010 d!1231082))

(declare-fun d!1231086 () Bool)

(assert (=> d!1231086 true))

(declare-fun order!24025 () Int)

(declare-fun lambda!129120 () Int)

(declare-fun dynLambda!19529 (Int Int) Int)

(assert (=> d!1231086 (< (dynLambda!19528 order!24023 (toValue!10218 (transformation!7550 r!4097))) (dynLambda!19529 order!24025 lambda!129120))))

(declare-fun Forall2!1153 (Int) Bool)

(assert (=> d!1231086 (= (equivClasses!3175 (toChars!10077 (transformation!7550 r!4097)) (toValue!10218 (transformation!7550 r!4097))) (Forall2!1153 lambda!129120))))

(declare-fun bs!595800 () Bool)

(assert (= bs!595800 d!1231086))

(declare-fun m!4757837 () Bool)

(assert (=> bs!595800 m!4757837))

(assert (=> b!4165895 d!1231086))

(declare-fun d!1231090 () Bool)

(declare-fun res!1706859 () Bool)

(declare-fun e!2586282 () Bool)

(assert (=> d!1231090 (=> res!1706859 e!2586282)))

(assert (=> d!1231090 (= res!1706859 ((_ is Nil!45611) rules!3820))))

(assert (=> d!1231090 (= (forall!8462 rules!3820 lambda!129111) e!2586282)))

(declare-fun b!4165983 () Bool)

(declare-fun e!2586283 () Bool)

(assert (=> b!4165983 (= e!2586282 e!2586283)))

(declare-fun res!1706860 () Bool)

(assert (=> b!4165983 (=> (not res!1706860) (not e!2586283))))

(declare-fun dynLambda!19530 (Int Rule!14900) Bool)

(assert (=> b!4165983 (= res!1706860 (dynLambda!19530 lambda!129111 (h!51031 rules!3820)))))

(declare-fun b!4165984 () Bool)

(assert (=> b!4165984 (= e!2586283 (forall!8462 (t!343982 rules!3820) lambda!129111))))

(assert (= (and d!1231090 (not res!1706859)) b!4165983))

(assert (= (and b!4165983 res!1706860) b!4165984))

(declare-fun b_lambda!122303 () Bool)

(assert (=> (not b_lambda!122303) (not b!4165983)))

(declare-fun m!4757859 () Bool)

(assert (=> b!4165983 m!4757859))

(declare-fun m!4757861 () Bool)

(assert (=> b!4165984 m!4757861))

(assert (=> d!1231020 d!1231090))

(declare-fun d!1231102 () Bool)

(declare-fun lt!1484118 () Int)

(assert (=> d!1231102 (>= lt!1484118 0)))

(declare-fun e!2586286 () Int)

(assert (=> d!1231102 (= lt!1484118 e!2586286)))

(declare-fun c!712368 () Bool)

(assert (=> d!1231102 (= c!712368 ((_ is Nil!45609) input!3316))))

(assert (=> d!1231102 (= (size!33506 input!3316) lt!1484118)))

(declare-fun b!4165989 () Bool)

(assert (=> b!4165989 (= e!2586286 0)))

(declare-fun b!4165990 () Bool)

(assert (=> b!4165990 (= e!2586286 (+ 1 (size!33506 (t!343980 input!3316))))))

(assert (= (and d!1231102 c!712368) b!4165989))

(assert (= (and d!1231102 (not c!712368)) b!4165990))

(declare-fun m!4757865 () Bool)

(assert (=> b!4165990 m!4757865))

(assert (=> b!4165809 d!1231102))

(declare-fun d!1231106 () Bool)

(declare-fun lt!1484119 () Int)

(assert (=> d!1231106 (>= lt!1484119 0)))

(declare-fun e!2586287 () Int)

(assert (=> d!1231106 (= lt!1484119 e!2586287)))

(declare-fun c!712369 () Bool)

(assert (=> d!1231106 (= c!712369 ((_ is Nil!45609) pBis!100))))

(assert (=> d!1231106 (= (size!33506 pBis!100) lt!1484119)))

(declare-fun b!4165991 () Bool)

(assert (=> b!4165991 (= e!2586287 0)))

(declare-fun b!4165992 () Bool)

(assert (=> b!4165992 (= e!2586287 (+ 1 (size!33506 (t!343980 pBis!100))))))

(assert (= (and d!1231106 c!712369) b!4165991))

(assert (= (and d!1231106 (not c!712369)) b!4165992))

(declare-fun m!4757867 () Bool)

(assert (=> b!4165992 m!4757867))

(assert (=> b!4165809 d!1231106))

(declare-fun bs!595806 () Bool)

(declare-fun d!1231108 () Bool)

(assert (= bs!595806 (and d!1231108 d!1231086)))

(declare-fun lambda!129126 () Int)

(assert (=> bs!595806 (= (= (toValue!10218 (transformation!7550 (h!51031 rules!3820))) (toValue!10218 (transformation!7550 r!4097))) (= lambda!129126 lambda!129120))))

(assert (=> d!1231108 true))

(assert (=> d!1231108 (< (dynLambda!19528 order!24023 (toValue!10218 (transformation!7550 (h!51031 rules!3820)))) (dynLambda!19529 order!24025 lambda!129126))))

(assert (=> d!1231108 (= (equivClasses!3175 (toChars!10077 (transformation!7550 (h!51031 rules!3820))) (toValue!10218 (transformation!7550 (h!51031 rules!3820)))) (Forall2!1153 lambda!129126))))

(declare-fun bs!595808 () Bool)

(assert (= bs!595808 d!1231108))

(declare-fun m!4757871 () Bool)

(assert (=> bs!595808 m!4757871))

(assert (=> b!4165793 d!1231108))

(declare-fun bs!595809 () Bool)

(declare-fun d!1231112 () Bool)

(assert (= bs!595809 (and d!1231112 d!1231082)))

(declare-fun lambda!129127 () Int)

(assert (=> bs!595809 (= (and (= (toChars!10077 (transformation!7550 rBis!161)) (toChars!10077 (transformation!7550 (h!51031 rules!3820)))) (= (toValue!10218 (transformation!7550 rBis!161)) (toValue!10218 (transformation!7550 (h!51031 rules!3820))))) (= lambda!129127 lambda!129117))))

(assert (=> d!1231112 true))

(assert (=> d!1231112 (< (dynLambda!19526 order!24019 (toChars!10077 (transformation!7550 rBis!161))) (dynLambda!19527 order!24021 lambda!129127))))

(assert (=> d!1231112 true))

(assert (=> d!1231112 (< (dynLambda!19528 order!24023 (toValue!10218 (transformation!7550 rBis!161))) (dynLambda!19527 order!24021 lambda!129127))))

(assert (=> d!1231112 (= (semiInverseModEq!3276 (toChars!10077 (transformation!7550 rBis!161)) (toValue!10218 (transformation!7550 rBis!161))) (Forall!1553 lambda!129127))))

(declare-fun bs!595810 () Bool)

(assert (= bs!595810 d!1231112))

(declare-fun m!4757873 () Bool)

(assert (=> bs!595810 m!4757873))

(assert (=> d!1231018 d!1231112))

(declare-fun d!1231114 () Bool)

(declare-fun res!1706865 () Bool)

(declare-fun e!2586292 () Bool)

(assert (=> d!1231114 (=> res!1706865 e!2586292)))

(assert (=> d!1231114 (= res!1706865 ((_ is Nil!45611) rules!3820))))

(assert (=> d!1231114 (= (noDuplicateTag!3105 thiss!25889 rules!3820 Nil!45613) e!2586292)))

(declare-fun b!4166001 () Bool)

(declare-fun e!2586293 () Bool)

(assert (=> b!4166001 (= e!2586292 e!2586293)))

(declare-fun res!1706866 () Bool)

(assert (=> b!4166001 (=> (not res!1706866) (not e!2586293))))

(declare-fun contains!9347 (List!45737 String!52766) Bool)

(assert (=> b!4166001 (= res!1706866 (not (contains!9347 Nil!45613 (tag!8414 (h!51031 rules!3820)))))))

(declare-fun b!4166002 () Bool)

(assert (=> b!4166002 (= e!2586293 (noDuplicateTag!3105 thiss!25889 (t!343982 rules!3820) (Cons!45613 (tag!8414 (h!51031 rules!3820)) Nil!45613)))))

(assert (= (and d!1231114 (not res!1706865)) b!4166001))

(assert (= (and b!4166001 res!1706866) b!4166002))

(declare-fun m!4757877 () Bool)

(assert (=> b!4166001 m!4757877))

(declare-fun m!4757879 () Bool)

(assert (=> b!4166002 m!4757879))

(assert (=> b!4165898 d!1231114))

(declare-fun d!1231118 () Bool)

(assert (=> d!1231118 (= (head!8844 p!2942) (h!51029 p!2942))))

(assert (=> b!4165803 d!1231118))

(assert (=> b!4165803 d!1231064))

(declare-fun bs!595812 () Bool)

(declare-fun d!1231120 () Bool)

(assert (= bs!595812 (and d!1231120 d!1231082)))

(declare-fun lambda!129131 () Int)

(assert (=> bs!595812 (= (and (= (toChars!10077 (transformation!7550 r!4097)) (toChars!10077 (transformation!7550 (h!51031 rules!3820)))) (= (toValue!10218 (transformation!7550 r!4097)) (toValue!10218 (transformation!7550 (h!51031 rules!3820))))) (= lambda!129131 lambda!129117))))

(declare-fun bs!595813 () Bool)

(assert (= bs!595813 (and d!1231120 d!1231112)))

(assert (=> bs!595813 (= (and (= (toChars!10077 (transformation!7550 r!4097)) (toChars!10077 (transformation!7550 rBis!161))) (= (toValue!10218 (transformation!7550 r!4097)) (toValue!10218 (transformation!7550 rBis!161)))) (= lambda!129131 lambda!129127))))

(assert (=> d!1231120 true))

(assert (=> d!1231120 (< (dynLambda!19526 order!24019 (toChars!10077 (transformation!7550 r!4097))) (dynLambda!19527 order!24021 lambda!129131))))

(assert (=> d!1231120 true))

(assert (=> d!1231120 (< (dynLambda!19528 order!24023 (toValue!10218 (transformation!7550 r!4097))) (dynLambda!19527 order!24021 lambda!129131))))

(assert (=> d!1231120 (= (semiInverseModEq!3276 (toChars!10077 (transformation!7550 r!4097)) (toValue!10218 (transformation!7550 r!4097))) (Forall!1553 lambda!129131))))

(declare-fun bs!595814 () Bool)

(assert (= bs!595814 d!1231120))

(declare-fun m!4757881 () Bool)

(assert (=> bs!595814 m!4757881))

(assert (=> d!1231050 d!1231120))

(declare-fun d!1231122 () Bool)

(declare-fun c!712372 () Bool)

(assert (=> d!1231122 (= c!712372 ((_ is Nil!45611) rules!3820))))

(declare-fun e!2586302 () (InoxSet Rule!14900))

(assert (=> d!1231122 (= (content!7090 rules!3820) e!2586302)))

(declare-fun b!4166013 () Bool)

(assert (=> b!4166013 (= e!2586302 ((as const (Array Rule!14900 Bool)) false))))

(declare-fun b!4166014 () Bool)

(assert (=> b!4166014 (= e!2586302 ((_ map or) (store ((as const (Array Rule!14900 Bool)) false) (h!51031 rules!3820) true) (content!7090 (t!343982 rules!3820))))))

(assert (= (and d!1231122 c!712372) b!4166013))

(assert (= (and d!1231122 (not c!712372)) b!4166014))

(declare-fun m!4757887 () Bool)

(assert (=> b!4166014 m!4757887))

(assert (=> b!4166014 m!4757809))

(assert (=> d!1231006 d!1231122))

(assert (=> d!1231004 d!1231122))

(declare-fun b!4166021 () Bool)

(declare-fun e!2586307 () Bool)

(assert (=> b!4166021 (= e!2586307 (isPrefix!4407 (tail!6691 (tail!6691 p!2942)) (tail!6691 (tail!6691 input!3316))))))

(declare-fun b!4166019 () Bool)

(declare-fun e!2586306 () Bool)

(assert (=> b!4166019 (= e!2586306 e!2586307)))

(declare-fun res!1706873 () Bool)

(assert (=> b!4166019 (=> (not res!1706873) (not e!2586307))))

(assert (=> b!4166019 (= res!1706873 (not ((_ is Nil!45609) (tail!6691 input!3316))))))

(declare-fun d!1231126 () Bool)

(declare-fun e!2586305 () Bool)

(assert (=> d!1231126 e!2586305))

(declare-fun res!1706874 () Bool)

(assert (=> d!1231126 (=> res!1706874 e!2586305)))

(declare-fun lt!1484121 () Bool)

(assert (=> d!1231126 (= res!1706874 (not lt!1484121))))

(assert (=> d!1231126 (= lt!1484121 e!2586306)))

(declare-fun res!1706876 () Bool)

(assert (=> d!1231126 (=> res!1706876 e!2586306)))

(assert (=> d!1231126 (= res!1706876 ((_ is Nil!45609) (tail!6691 p!2942)))))

(assert (=> d!1231126 (= (isPrefix!4407 (tail!6691 p!2942) (tail!6691 input!3316)) lt!1484121)))

(declare-fun b!4166022 () Bool)

(assert (=> b!4166022 (= e!2586305 (>= (size!33506 (tail!6691 input!3316)) (size!33506 (tail!6691 p!2942))))))

(declare-fun b!4166020 () Bool)

(declare-fun res!1706875 () Bool)

(assert (=> b!4166020 (=> (not res!1706875) (not e!2586307))))

(assert (=> b!4166020 (= res!1706875 (= (head!8844 (tail!6691 p!2942)) (head!8844 (tail!6691 input!3316))))))

(assert (= (and d!1231126 (not res!1706876)) b!4166019))

(assert (= (and b!4166019 res!1706873) b!4166020))

(assert (= (and b!4166020 res!1706875) b!4166021))

(assert (= (and d!1231126 (not res!1706874)) b!4166022))

(assert (=> b!4166021 m!4757689))

(declare-fun m!4757889 () Bool)

(assert (=> b!4166021 m!4757889))

(assert (=> b!4166021 m!4757691))

(assert (=> b!4166021 m!4757817))

(assert (=> b!4166021 m!4757889))

(assert (=> b!4166021 m!4757817))

(declare-fun m!4757891 () Bool)

(assert (=> b!4166021 m!4757891))

(assert (=> b!4166022 m!4757691))

(assert (=> b!4166022 m!4757821))

(assert (=> b!4166022 m!4757689))

(declare-fun m!4757893 () Bool)

(assert (=> b!4166022 m!4757893))

(assert (=> b!4166020 m!4757689))

(declare-fun m!4757895 () Bool)

(assert (=> b!4166020 m!4757895))

(assert (=> b!4166020 m!4757691))

(assert (=> b!4166020 m!4757827))

(assert (=> b!4165804 d!1231126))

(declare-fun d!1231128 () Bool)

(assert (=> d!1231128 (= (tail!6691 p!2942) (t!343980 p!2942))))

(assert (=> b!4165804 d!1231128))

(assert (=> b!4165804 d!1231080))

(assert (=> b!4165805 d!1231102))

(declare-fun d!1231130 () Bool)

(declare-fun lt!1484122 () Int)

(assert (=> d!1231130 (>= lt!1484122 0)))

(declare-fun e!2586308 () Int)

(assert (=> d!1231130 (= lt!1484122 e!2586308)))

(declare-fun c!712375 () Bool)

(assert (=> d!1231130 (= c!712375 ((_ is Nil!45609) p!2942))))

(assert (=> d!1231130 (= (size!33506 p!2942) lt!1484122)))

(declare-fun b!4166023 () Bool)

(assert (=> b!4166023 (= e!2586308 0)))

(declare-fun b!4166024 () Bool)

(assert (=> b!4166024 (= e!2586308 (+ 1 (size!33506 (t!343980 p!2942))))))

(assert (= (and d!1231130 c!712375) b!4166023))

(assert (= (and d!1231130 (not c!712375)) b!4166024))

(declare-fun m!4757897 () Bool)

(assert (=> b!4166024 m!4757897))

(assert (=> b!4165805 d!1231130))

(declare-fun bs!595820 () Bool)

(declare-fun d!1231132 () Bool)

(assert (= bs!595820 (and d!1231132 d!1231020)))

(declare-fun lambda!129136 () Int)

(assert (=> bs!595820 (= lambda!129136 lambda!129111)))

(assert (=> d!1231132 true))

(declare-fun lt!1484125 () Bool)

(assert (=> d!1231132 (= lt!1484125 (rulesValidInductive!2782 thiss!25889 rules!3820))))

(assert (=> d!1231132 (= lt!1484125 (forall!8462 rules!3820 lambda!129136))))

(assert (=> d!1231132 (= (rulesValid!2944 thiss!25889 rules!3820) lt!1484125)))

(declare-fun bs!595821 () Bool)

(assert (= bs!595821 d!1231132))

(assert (=> bs!595821 m!4757673))

(declare-fun m!4757905 () Bool)

(assert (=> bs!595821 m!4757905))

(assert (=> d!1231052 d!1231132))

(declare-fun bs!595822 () Bool)

(declare-fun d!1231140 () Bool)

(assert (= bs!595822 (and d!1231140 d!1231086)))

(declare-fun lambda!129137 () Int)

(assert (=> bs!595822 (= (= (toValue!10218 (transformation!7550 rBis!161)) (toValue!10218 (transformation!7550 r!4097))) (= lambda!129137 lambda!129120))))

(declare-fun bs!595823 () Bool)

(assert (= bs!595823 (and d!1231140 d!1231108)))

(assert (=> bs!595823 (= (= (toValue!10218 (transformation!7550 rBis!161)) (toValue!10218 (transformation!7550 (h!51031 rules!3820)))) (= lambda!129137 lambda!129126))))

(assert (=> d!1231140 true))

(assert (=> d!1231140 (< (dynLambda!19528 order!24023 (toValue!10218 (transformation!7550 rBis!161))) (dynLambda!19529 order!24025 lambda!129137))))

(assert (=> d!1231140 (= (equivClasses!3175 (toChars!10077 (transformation!7550 rBis!161)) (toValue!10218 (transformation!7550 rBis!161))) (Forall2!1153 lambda!129137))))

(declare-fun bs!595824 () Bool)

(assert (= bs!595824 d!1231140))

(declare-fun m!4757907 () Bool)

(assert (=> bs!595824 m!4757907))

(assert (=> b!4165810 d!1231140))

(declare-fun d!1231142 () Bool)

(declare-fun lt!1484129 () Bool)

(assert (=> d!1231142 (= lt!1484129 (select (content!7090 (t!343982 rules!3820)) rBis!161))))

(declare-fun e!2586314 () Bool)

(assert (=> d!1231142 (= lt!1484129 e!2586314)))

(declare-fun res!1706878 () Bool)

(assert (=> d!1231142 (=> (not res!1706878) (not e!2586314))))

(assert (=> d!1231142 (= res!1706878 ((_ is Cons!45611) (t!343982 rules!3820)))))

(assert (=> d!1231142 (= (contains!9345 (t!343982 rules!3820) rBis!161) lt!1484129)))

(declare-fun b!4166033 () Bool)

(declare-fun e!2586313 () Bool)

(assert (=> b!4166033 (= e!2586314 e!2586313)))

(declare-fun res!1706877 () Bool)

(assert (=> b!4166033 (=> res!1706877 e!2586313)))

(assert (=> b!4166033 (= res!1706877 (= (h!51031 (t!343982 rules!3820)) rBis!161))))

(declare-fun b!4166034 () Bool)

(assert (=> b!4166034 (= e!2586313 (contains!9345 (t!343982 (t!343982 rules!3820)) rBis!161))))

(assert (= (and d!1231142 res!1706878) b!4166033))

(assert (= (and b!4166033 (not res!1706877)) b!4166034))

(assert (=> d!1231142 m!4757809))

(declare-fun m!4757913 () Bool)

(assert (=> d!1231142 m!4757913))

(declare-fun m!4757915 () Bool)

(assert (=> b!4166034 m!4757915))

(assert (=> b!4165788 d!1231142))

(declare-fun bs!595825 () Bool)

(declare-fun d!1231148 () Bool)

(assert (= bs!595825 (and d!1231148 d!1231020)))

(declare-fun lambda!129138 () Int)

(assert (=> bs!595825 (= lambda!129138 lambda!129111)))

(declare-fun bs!595826 () Bool)

(assert (= bs!595826 (and d!1231148 d!1231132)))

(assert (=> bs!595826 (= lambda!129138 lambda!129136)))

(assert (=> d!1231148 true))

(declare-fun lt!1484131 () Bool)

(assert (=> d!1231148 (= lt!1484131 (forall!8462 (t!343982 rules!3820) lambda!129138))))

(declare-fun e!2586316 () Bool)

(assert (=> d!1231148 (= lt!1484131 e!2586316)))

(declare-fun res!1706879 () Bool)

(assert (=> d!1231148 (=> res!1706879 e!2586316)))

(assert (=> d!1231148 (= res!1706879 (not ((_ is Cons!45611) (t!343982 rules!3820))))))

(assert (=> d!1231148 (= (rulesValidInductive!2782 thiss!25889 (t!343982 rules!3820)) lt!1484131)))

(declare-fun b!4166037 () Bool)

(declare-fun e!2586317 () Bool)

(assert (=> b!4166037 (= e!2586316 e!2586317)))

(declare-fun res!1706880 () Bool)

(assert (=> b!4166037 (=> (not res!1706880) (not e!2586317))))

(assert (=> b!4166037 (= res!1706880 (ruleValid!3272 thiss!25889 (h!51031 (t!343982 rules!3820))))))

(declare-fun b!4166038 () Bool)

(assert (=> b!4166038 (= e!2586317 (rulesValidInductive!2782 thiss!25889 (t!343982 (t!343982 rules!3820))))))

(assert (= (and d!1231148 (not res!1706879)) b!4166037))

(assert (= (and b!4166037 res!1706880) b!4166038))

(declare-fun m!4757917 () Bool)

(assert (=> d!1231148 m!4757917))

(declare-fun m!4757919 () Bool)

(assert (=> b!4166037 m!4757919))

(declare-fun m!4757921 () Bool)

(assert (=> b!4166038 m!4757921))

(assert (=> b!4165892 d!1231148))

(declare-fun d!1231150 () Bool)

(declare-fun res!1706891 () Bool)

(declare-fun e!2586342 () Bool)

(assert (=> d!1231150 (=> (not res!1706891) (not e!2586342))))

(declare-fun validRegex!5577 (Regex!12455) Bool)

(assert (=> d!1231150 (= res!1706891 (validRegex!5577 (regex!7550 (h!51031 rules!3820))))))

(assert (=> d!1231150 (= (ruleValid!3272 thiss!25889 (h!51031 rules!3820)) e!2586342)))

(declare-fun b!4166096 () Bool)

(declare-fun res!1706892 () Bool)

(assert (=> b!4166096 (=> (not res!1706892) (not e!2586342))))

(declare-fun nullable!4367 (Regex!12455) Bool)

(assert (=> b!4166096 (= res!1706892 (not (nullable!4367 (regex!7550 (h!51031 rules!3820)))))))

(declare-fun b!4166097 () Bool)

(assert (=> b!4166097 (= e!2586342 (not (= (tag!8414 (h!51031 rules!3820)) (String!52767 ""))))))

(assert (= (and d!1231150 res!1706891) b!4166096))

(assert (= (and b!4166096 res!1706892) b!4166097))

(declare-fun m!4757943 () Bool)

(assert (=> d!1231150 m!4757943))

(declare-fun m!4757945 () Bool)

(assert (=> b!4166096 m!4757945))

(assert (=> b!4165891 d!1231150))

(declare-fun b!4166108 () Bool)

(declare-fun e!2586345 () Bool)

(declare-fun tp!1272273 () Bool)

(assert (=> b!4166108 (= e!2586345 tp!1272273)))

(declare-fun b!4166107 () Bool)

(declare-fun tp!1272269 () Bool)

(declare-fun tp!1272272 () Bool)

(assert (=> b!4166107 (= e!2586345 (and tp!1272269 tp!1272272))))

(declare-fun b!4166109 () Bool)

(declare-fun tp!1272271 () Bool)

(declare-fun tp!1272270 () Bool)

(assert (=> b!4166109 (= e!2586345 (and tp!1272271 tp!1272270))))

(assert (=> b!4165913 (= tp!1272175 e!2586345)))

(declare-fun b!4166106 () Bool)

(assert (=> b!4166106 (= e!2586345 tp_is_empty!21873)))

(assert (= (and b!4165913 ((_ is ElementMatch!12455) (regex!7550 (h!51031 (t!343982 rules!3820))))) b!4166106))

(assert (= (and b!4165913 ((_ is Concat!20236) (regex!7550 (h!51031 (t!343982 rules!3820))))) b!4166107))

(assert (= (and b!4165913 ((_ is Star!12455) (regex!7550 (h!51031 (t!343982 rules!3820))))) b!4166108))

(assert (= (and b!4165913 ((_ is Union!12455) (regex!7550 (h!51031 (t!343982 rules!3820))))) b!4166109))

(declare-fun b!4166116 () Bool)

(declare-fun e!2586347 () Bool)

(declare-fun tp!1272283 () Bool)

(assert (=> b!4166116 (= e!2586347 tp!1272283)))

(declare-fun b!4166115 () Bool)

(declare-fun tp!1272279 () Bool)

(declare-fun tp!1272282 () Bool)

(assert (=> b!4166115 (= e!2586347 (and tp!1272279 tp!1272282))))

(declare-fun b!4166117 () Bool)

(declare-fun tp!1272281 () Bool)

(declare-fun tp!1272280 () Bool)

(assert (=> b!4166117 (= e!2586347 (and tp!1272281 tp!1272280))))

(assert (=> b!4165931 (= tp!1272192 e!2586347)))

(declare-fun b!4166114 () Bool)

(assert (=> b!4166114 (= e!2586347 tp_is_empty!21873)))

(assert (= (and b!4165931 ((_ is ElementMatch!12455) (regOne!25422 (regex!7550 rBis!161)))) b!4166114))

(assert (= (and b!4165931 ((_ is Concat!20236) (regOne!25422 (regex!7550 rBis!161)))) b!4166115))

(assert (= (and b!4165931 ((_ is Star!12455) (regOne!25422 (regex!7550 rBis!161)))) b!4166116))

(assert (= (and b!4165931 ((_ is Union!12455) (regOne!25422 (regex!7550 rBis!161)))) b!4166117))

(declare-fun b!4166125 () Bool)

(declare-fun e!2586350 () Bool)

(declare-fun tp!1272294 () Bool)

(assert (=> b!4166125 (= e!2586350 tp!1272294)))

(declare-fun b!4166124 () Bool)

(declare-fun tp!1272290 () Bool)

(declare-fun tp!1272293 () Bool)

(assert (=> b!4166124 (= e!2586350 (and tp!1272290 tp!1272293))))

(declare-fun b!4166126 () Bool)

(declare-fun tp!1272292 () Bool)

(declare-fun tp!1272291 () Bool)

(assert (=> b!4166126 (= e!2586350 (and tp!1272292 tp!1272291))))

(assert (=> b!4165931 (= tp!1272195 e!2586350)))

(declare-fun b!4166123 () Bool)

(assert (=> b!4166123 (= e!2586350 tp_is_empty!21873)))

(assert (= (and b!4165931 ((_ is ElementMatch!12455) (regTwo!25422 (regex!7550 rBis!161)))) b!4166123))

(assert (= (and b!4165931 ((_ is Concat!20236) (regTwo!25422 (regex!7550 rBis!161)))) b!4166124))

(assert (= (and b!4165931 ((_ is Star!12455) (regTwo!25422 (regex!7550 rBis!161)))) b!4166125))

(assert (= (and b!4165931 ((_ is Union!12455) (regTwo!25422 (regex!7550 rBis!161)))) b!4166126))

(declare-fun b!4166133 () Bool)

(declare-fun e!2586352 () Bool)

(declare-fun tp!1272304 () Bool)

(assert (=> b!4166133 (= e!2586352 tp!1272304)))

(declare-fun b!4166132 () Bool)

(declare-fun tp!1272300 () Bool)

(declare-fun tp!1272303 () Bool)

(assert (=> b!4166132 (= e!2586352 (and tp!1272300 tp!1272303))))

(declare-fun b!4166134 () Bool)

(declare-fun tp!1272302 () Bool)

(declare-fun tp!1272301 () Bool)

(assert (=> b!4166134 (= e!2586352 (and tp!1272302 tp!1272301))))

(assert (=> b!4165928 (= tp!1272188 e!2586352)))

(declare-fun b!4166131 () Bool)

(assert (=> b!4166131 (= e!2586352 tp_is_empty!21873)))

(assert (= (and b!4165928 ((_ is ElementMatch!12455) (regOne!25423 (regex!7550 (h!51031 rules!3820))))) b!4166131))

(assert (= (and b!4165928 ((_ is Concat!20236) (regOne!25423 (regex!7550 (h!51031 rules!3820))))) b!4166132))

(assert (= (and b!4165928 ((_ is Star!12455) (regOne!25423 (regex!7550 (h!51031 rules!3820))))) b!4166133))

(assert (= (and b!4165928 ((_ is Union!12455) (regOne!25423 (regex!7550 (h!51031 rules!3820))))) b!4166134))

(declare-fun b!4166141 () Bool)

(declare-fun e!2586354 () Bool)

(declare-fun tp!1272314 () Bool)

(assert (=> b!4166141 (= e!2586354 tp!1272314)))

(declare-fun b!4166140 () Bool)

(declare-fun tp!1272310 () Bool)

(declare-fun tp!1272313 () Bool)

(assert (=> b!4166140 (= e!2586354 (and tp!1272310 tp!1272313))))

(declare-fun b!4166142 () Bool)

(declare-fun tp!1272312 () Bool)

(declare-fun tp!1272311 () Bool)

(assert (=> b!4166142 (= e!2586354 (and tp!1272312 tp!1272311))))

(assert (=> b!4165928 (= tp!1272187 e!2586354)))

(declare-fun b!4166139 () Bool)

(assert (=> b!4166139 (= e!2586354 tp_is_empty!21873)))

(assert (= (and b!4165928 ((_ is ElementMatch!12455) (regTwo!25423 (regex!7550 (h!51031 rules!3820))))) b!4166139))

(assert (= (and b!4165928 ((_ is Concat!20236) (regTwo!25423 (regex!7550 (h!51031 rules!3820))))) b!4166140))

(assert (= (and b!4165928 ((_ is Star!12455) (regTwo!25423 (regex!7550 (h!51031 rules!3820))))) b!4166141))

(assert (= (and b!4165928 ((_ is Union!12455) (regTwo!25423 (regex!7550 (h!51031 rules!3820))))) b!4166142))

(declare-fun b!4166145 () Bool)

(declare-fun b_free!120319 () Bool)

(declare-fun b_next!121023 () Bool)

(assert (=> b!4166145 (= b_free!120319 (not b_next!121023))))

(declare-fun tp!1272316 () Bool)

(declare-fun b_and!324933 () Bool)

(assert (=> b!4166145 (= tp!1272316 b_and!324933)))

(declare-fun b_free!120321 () Bool)

(declare-fun b_next!121025 () Bool)

(assert (=> b!4166145 (= b_free!120321 (not b_next!121025))))

(declare-fun tp!1272315 () Bool)

(declare-fun b_and!324935 () Bool)

(assert (=> b!4166145 (= tp!1272315 b_and!324935)))

(declare-fun e!2586356 () Bool)

(assert (=> b!4166145 (= e!2586356 (and tp!1272316 tp!1272315))))

(declare-fun e!2586355 () Bool)

(declare-fun b!4166144 () Bool)

(declare-fun tp!1272318 () Bool)

(assert (=> b!4166144 (= e!2586355 (and tp!1272318 (inv!60126 (tag!8414 (h!51031 (t!343982 (t!343982 rules!3820))))) (inv!60128 (transformation!7550 (h!51031 (t!343982 (t!343982 rules!3820))))) e!2586356))))

(declare-fun b!4166143 () Bool)

(declare-fun e!2586358 () Bool)

(declare-fun tp!1272317 () Bool)

(assert (=> b!4166143 (= e!2586358 (and e!2586355 tp!1272317))))

(assert (=> b!4165912 (= tp!1272174 e!2586358)))

(assert (= b!4166144 b!4166145))

(assert (= b!4166143 b!4166144))

(assert (= (and b!4165912 ((_ is Cons!45611) (t!343982 (t!343982 rules!3820)))) b!4166143))

(declare-fun m!4757947 () Bool)

(assert (=> b!4166144 m!4757947))

(declare-fun m!4757949 () Bool)

(assert (=> b!4166144 m!4757949))

(declare-fun b!4166148 () Bool)

(declare-fun e!2586359 () Bool)

(declare-fun tp!1272323 () Bool)

(assert (=> b!4166148 (= e!2586359 tp!1272323)))

(declare-fun b!4166147 () Bool)

(declare-fun tp!1272319 () Bool)

(declare-fun tp!1272322 () Bool)

(assert (=> b!4166147 (= e!2586359 (and tp!1272319 tp!1272322))))

(declare-fun b!4166149 () Bool)

(declare-fun tp!1272321 () Bool)

(declare-fun tp!1272320 () Bool)

(assert (=> b!4166149 (= e!2586359 (and tp!1272321 tp!1272320))))

(assert (=> b!4165927 (= tp!1272190 e!2586359)))

(declare-fun b!4166146 () Bool)

(assert (=> b!4166146 (= e!2586359 tp_is_empty!21873)))

(assert (= (and b!4165927 ((_ is ElementMatch!12455) (reg!12784 (regex!7550 (h!51031 rules!3820))))) b!4166146))

(assert (= (and b!4165927 ((_ is Concat!20236) (reg!12784 (regex!7550 (h!51031 rules!3820))))) b!4166147))

(assert (= (and b!4165927 ((_ is Star!12455) (reg!12784 (regex!7550 (h!51031 rules!3820))))) b!4166148))

(assert (= (and b!4165927 ((_ is Union!12455) (reg!12784 (regex!7550 (h!51031 rules!3820))))) b!4166149))

(declare-fun b!4166152 () Bool)

(declare-fun e!2586360 () Bool)

(declare-fun tp!1272328 () Bool)

(assert (=> b!4166152 (= e!2586360 tp!1272328)))

(declare-fun b!4166151 () Bool)

(declare-fun tp!1272324 () Bool)

(declare-fun tp!1272327 () Bool)

(assert (=> b!4166151 (= e!2586360 (and tp!1272324 tp!1272327))))

(declare-fun b!4166153 () Bool)

(declare-fun tp!1272326 () Bool)

(declare-fun tp!1272325 () Bool)

(assert (=> b!4166153 (= e!2586360 (and tp!1272326 tp!1272325))))

(assert (=> b!4165926 (= tp!1272186 e!2586360)))

(declare-fun b!4166150 () Bool)

(assert (=> b!4166150 (= e!2586360 tp_is_empty!21873)))

(assert (= (and b!4165926 ((_ is ElementMatch!12455) (regOne!25422 (regex!7550 (h!51031 rules!3820))))) b!4166150))

(assert (= (and b!4165926 ((_ is Concat!20236) (regOne!25422 (regex!7550 (h!51031 rules!3820))))) b!4166151))

(assert (= (and b!4165926 ((_ is Star!12455) (regOne!25422 (regex!7550 (h!51031 rules!3820))))) b!4166152))

(assert (= (and b!4165926 ((_ is Union!12455) (regOne!25422 (regex!7550 (h!51031 rules!3820))))) b!4166153))

(declare-fun b!4166156 () Bool)

(declare-fun e!2586361 () Bool)

(declare-fun tp!1272333 () Bool)

(assert (=> b!4166156 (= e!2586361 tp!1272333)))

(declare-fun b!4166155 () Bool)

(declare-fun tp!1272329 () Bool)

(declare-fun tp!1272332 () Bool)

(assert (=> b!4166155 (= e!2586361 (and tp!1272329 tp!1272332))))

(declare-fun b!4166157 () Bool)

(declare-fun tp!1272331 () Bool)

(declare-fun tp!1272330 () Bool)

(assert (=> b!4166157 (= e!2586361 (and tp!1272331 tp!1272330))))

(assert (=> b!4165926 (= tp!1272189 e!2586361)))

(declare-fun b!4166154 () Bool)

(assert (=> b!4166154 (= e!2586361 tp_is_empty!21873)))

(assert (= (and b!4165926 ((_ is ElementMatch!12455) (regTwo!25422 (regex!7550 (h!51031 rules!3820))))) b!4166154))

(assert (= (and b!4165926 ((_ is Concat!20236) (regTwo!25422 (regex!7550 (h!51031 rules!3820))))) b!4166155))

(assert (= (and b!4165926 ((_ is Star!12455) (regTwo!25422 (regex!7550 (h!51031 rules!3820))))) b!4166156))

(assert (= (and b!4165926 ((_ is Union!12455) (regTwo!25422 (regex!7550 (h!51031 rules!3820))))) b!4166157))

(declare-fun b!4166158 () Bool)

(declare-fun e!2586362 () Bool)

(declare-fun tp!1272334 () Bool)

(assert (=> b!4166158 (= e!2586362 (and tp_is_empty!21873 tp!1272334))))

(assert (=> b!4165934 (= tp!1272197 e!2586362)))

(assert (= (and b!4165934 ((_ is Cons!45609) (t!343980 (t!343980 p!2942)))) b!4166158))

(declare-fun b!4166159 () Bool)

(declare-fun e!2586363 () Bool)

(declare-fun tp!1272335 () Bool)

(assert (=> b!4166159 (= e!2586363 (and tp_is_empty!21873 tp!1272335))))

(assert (=> b!4165903 (= tp!1272163 e!2586363)))

(assert (= (and b!4165903 ((_ is Cons!45609) (t!343980 (t!343980 pBis!100)))) b!4166159))

(declare-fun b!4166162 () Bool)

(declare-fun e!2586364 () Bool)

(declare-fun tp!1272340 () Bool)

(assert (=> b!4166162 (= e!2586364 tp!1272340)))

(declare-fun b!4166161 () Bool)

(declare-fun tp!1272336 () Bool)

(declare-fun tp!1272339 () Bool)

(assert (=> b!4166161 (= e!2586364 (and tp!1272336 tp!1272339))))

(declare-fun b!4166163 () Bool)

(declare-fun tp!1272338 () Bool)

(declare-fun tp!1272337 () Bool)

(assert (=> b!4166163 (= e!2586364 (and tp!1272338 tp!1272337))))

(assert (=> b!4165938 (= tp!1272200 e!2586364)))

(declare-fun b!4166160 () Bool)

(assert (=> b!4166160 (= e!2586364 tp_is_empty!21873)))

(assert (= (and b!4165938 ((_ is ElementMatch!12455) (regOne!25423 (regex!7550 r!4097)))) b!4166160))

(assert (= (and b!4165938 ((_ is Concat!20236) (regOne!25423 (regex!7550 r!4097)))) b!4166161))

(assert (= (and b!4165938 ((_ is Star!12455) (regOne!25423 (regex!7550 r!4097)))) b!4166162))

(assert (= (and b!4165938 ((_ is Union!12455) (regOne!25423 (regex!7550 r!4097)))) b!4166163))

(declare-fun b!4166166 () Bool)

(declare-fun e!2586365 () Bool)

(declare-fun tp!1272345 () Bool)

(assert (=> b!4166166 (= e!2586365 tp!1272345)))

(declare-fun b!4166165 () Bool)

(declare-fun tp!1272341 () Bool)

(declare-fun tp!1272344 () Bool)

(assert (=> b!4166165 (= e!2586365 (and tp!1272341 tp!1272344))))

(declare-fun b!4166167 () Bool)

(declare-fun tp!1272343 () Bool)

(declare-fun tp!1272342 () Bool)

(assert (=> b!4166167 (= e!2586365 (and tp!1272343 tp!1272342))))

(assert (=> b!4165938 (= tp!1272199 e!2586365)))

(declare-fun b!4166164 () Bool)

(assert (=> b!4166164 (= e!2586365 tp_is_empty!21873)))

(assert (= (and b!4165938 ((_ is ElementMatch!12455) (regTwo!25423 (regex!7550 r!4097)))) b!4166164))

(assert (= (and b!4165938 ((_ is Concat!20236) (regTwo!25423 (regex!7550 r!4097)))) b!4166165))

(assert (= (and b!4165938 ((_ is Star!12455) (regTwo!25423 (regex!7550 r!4097)))) b!4166166))

(assert (= (and b!4165938 ((_ is Union!12455) (regTwo!25423 (regex!7550 r!4097)))) b!4166167))

(declare-fun b!4166170 () Bool)

(declare-fun e!2586366 () Bool)

(declare-fun tp!1272350 () Bool)

(assert (=> b!4166170 (= e!2586366 tp!1272350)))

(declare-fun b!4166169 () Bool)

(declare-fun tp!1272346 () Bool)

(declare-fun tp!1272349 () Bool)

(assert (=> b!4166169 (= e!2586366 (and tp!1272346 tp!1272349))))

(declare-fun b!4166171 () Bool)

(declare-fun tp!1272348 () Bool)

(declare-fun tp!1272347 () Bool)

(assert (=> b!4166171 (= e!2586366 (and tp!1272348 tp!1272347))))

(assert (=> b!4165937 (= tp!1272202 e!2586366)))

(declare-fun b!4166168 () Bool)

(assert (=> b!4166168 (= e!2586366 tp_is_empty!21873)))

(assert (= (and b!4165937 ((_ is ElementMatch!12455) (reg!12784 (regex!7550 r!4097)))) b!4166168))

(assert (= (and b!4165937 ((_ is Concat!20236) (reg!12784 (regex!7550 r!4097)))) b!4166169))

(assert (= (and b!4165937 ((_ is Star!12455) (reg!12784 (regex!7550 r!4097)))) b!4166170))

(assert (= (and b!4165937 ((_ is Union!12455) (reg!12784 (regex!7550 r!4097)))) b!4166171))

(declare-fun b!4166172 () Bool)

(declare-fun e!2586367 () Bool)

(declare-fun tp!1272351 () Bool)

(assert (=> b!4166172 (= e!2586367 (and tp_is_empty!21873 tp!1272351))))

(assert (=> b!4165929 (= tp!1272191 e!2586367)))

(assert (= (and b!4165929 ((_ is Cons!45609) (t!343980 (t!343980 input!3316)))) b!4166172))

(declare-fun b!4166175 () Bool)

(declare-fun e!2586368 () Bool)

(declare-fun tp!1272356 () Bool)

(assert (=> b!4166175 (= e!2586368 tp!1272356)))

(declare-fun b!4166174 () Bool)

(declare-fun tp!1272352 () Bool)

(declare-fun tp!1272355 () Bool)

(assert (=> b!4166174 (= e!2586368 (and tp!1272352 tp!1272355))))

(declare-fun b!4166176 () Bool)

(declare-fun tp!1272354 () Bool)

(declare-fun tp!1272353 () Bool)

(assert (=> b!4166176 (= e!2586368 (and tp!1272354 tp!1272353))))

(assert (=> b!4165936 (= tp!1272198 e!2586368)))

(declare-fun b!4166173 () Bool)

(assert (=> b!4166173 (= e!2586368 tp_is_empty!21873)))

(assert (= (and b!4165936 ((_ is ElementMatch!12455) (regOne!25422 (regex!7550 r!4097)))) b!4166173))

(assert (= (and b!4165936 ((_ is Concat!20236) (regOne!25422 (regex!7550 r!4097)))) b!4166174))

(assert (= (and b!4165936 ((_ is Star!12455) (regOne!25422 (regex!7550 r!4097)))) b!4166175))

(assert (= (and b!4165936 ((_ is Union!12455) (regOne!25422 (regex!7550 r!4097)))) b!4166176))

(declare-fun b!4166179 () Bool)

(declare-fun e!2586369 () Bool)

(declare-fun tp!1272361 () Bool)

(assert (=> b!4166179 (= e!2586369 tp!1272361)))

(declare-fun b!4166178 () Bool)

(declare-fun tp!1272357 () Bool)

(declare-fun tp!1272360 () Bool)

(assert (=> b!4166178 (= e!2586369 (and tp!1272357 tp!1272360))))

(declare-fun b!4166180 () Bool)

(declare-fun tp!1272359 () Bool)

(declare-fun tp!1272358 () Bool)

(assert (=> b!4166180 (= e!2586369 (and tp!1272359 tp!1272358))))

(assert (=> b!4165936 (= tp!1272201 e!2586369)))

(declare-fun b!4166177 () Bool)

(assert (=> b!4166177 (= e!2586369 tp_is_empty!21873)))

(assert (= (and b!4165936 ((_ is ElementMatch!12455) (regTwo!25422 (regex!7550 r!4097)))) b!4166177))

(assert (= (and b!4165936 ((_ is Concat!20236) (regTwo!25422 (regex!7550 r!4097)))) b!4166178))

(assert (= (and b!4165936 ((_ is Star!12455) (regTwo!25422 (regex!7550 r!4097)))) b!4166179))

(assert (= (and b!4165936 ((_ is Union!12455) (regTwo!25422 (regex!7550 r!4097)))) b!4166180))

(declare-fun b!4166183 () Bool)

(declare-fun e!2586370 () Bool)

(declare-fun tp!1272366 () Bool)

(assert (=> b!4166183 (= e!2586370 tp!1272366)))

(declare-fun b!4166182 () Bool)

(declare-fun tp!1272362 () Bool)

(declare-fun tp!1272365 () Bool)

(assert (=> b!4166182 (= e!2586370 (and tp!1272362 tp!1272365))))

(declare-fun b!4166184 () Bool)

(declare-fun tp!1272364 () Bool)

(declare-fun tp!1272363 () Bool)

(assert (=> b!4166184 (= e!2586370 (and tp!1272364 tp!1272363))))

(assert (=> b!4165933 (= tp!1272194 e!2586370)))

(declare-fun b!4166181 () Bool)

(assert (=> b!4166181 (= e!2586370 tp_is_empty!21873)))

(assert (= (and b!4165933 ((_ is ElementMatch!12455) (regOne!25423 (regex!7550 rBis!161)))) b!4166181))

(assert (= (and b!4165933 ((_ is Concat!20236) (regOne!25423 (regex!7550 rBis!161)))) b!4166182))

(assert (= (and b!4165933 ((_ is Star!12455) (regOne!25423 (regex!7550 rBis!161)))) b!4166183))

(assert (= (and b!4165933 ((_ is Union!12455) (regOne!25423 (regex!7550 rBis!161)))) b!4166184))

(declare-fun b!4166187 () Bool)

(declare-fun e!2586371 () Bool)

(declare-fun tp!1272371 () Bool)

(assert (=> b!4166187 (= e!2586371 tp!1272371)))

(declare-fun b!4166186 () Bool)

(declare-fun tp!1272367 () Bool)

(declare-fun tp!1272370 () Bool)

(assert (=> b!4166186 (= e!2586371 (and tp!1272367 tp!1272370))))

(declare-fun b!4166188 () Bool)

(declare-fun tp!1272369 () Bool)

(declare-fun tp!1272368 () Bool)

(assert (=> b!4166188 (= e!2586371 (and tp!1272369 tp!1272368))))

(assert (=> b!4165933 (= tp!1272193 e!2586371)))

(declare-fun b!4166185 () Bool)

(assert (=> b!4166185 (= e!2586371 tp_is_empty!21873)))

(assert (= (and b!4165933 ((_ is ElementMatch!12455) (regTwo!25423 (regex!7550 rBis!161)))) b!4166185))

(assert (= (and b!4165933 ((_ is Concat!20236) (regTwo!25423 (regex!7550 rBis!161)))) b!4166186))

(assert (= (and b!4165933 ((_ is Star!12455) (regTwo!25423 (regex!7550 rBis!161)))) b!4166187))

(assert (= (and b!4165933 ((_ is Union!12455) (regTwo!25423 (regex!7550 rBis!161)))) b!4166188))

(declare-fun b!4166191 () Bool)

(declare-fun e!2586372 () Bool)

(declare-fun tp!1272376 () Bool)

(assert (=> b!4166191 (= e!2586372 tp!1272376)))

(declare-fun b!4166190 () Bool)

(declare-fun tp!1272372 () Bool)

(declare-fun tp!1272375 () Bool)

(assert (=> b!4166190 (= e!2586372 (and tp!1272372 tp!1272375))))

(declare-fun b!4166192 () Bool)

(declare-fun tp!1272374 () Bool)

(declare-fun tp!1272373 () Bool)

(assert (=> b!4166192 (= e!2586372 (and tp!1272374 tp!1272373))))

(assert (=> b!4165932 (= tp!1272196 e!2586372)))

(declare-fun b!4166189 () Bool)

(assert (=> b!4166189 (= e!2586372 tp_is_empty!21873)))

(assert (= (and b!4165932 ((_ is ElementMatch!12455) (reg!12784 (regex!7550 rBis!161)))) b!4166189))

(assert (= (and b!4165932 ((_ is Concat!20236) (reg!12784 (regex!7550 rBis!161)))) b!4166190))

(assert (= (and b!4165932 ((_ is Star!12455) (reg!12784 (regex!7550 rBis!161)))) b!4166191))

(assert (= (and b!4165932 ((_ is Union!12455) (reg!12784 (regex!7550 rBis!161)))) b!4166192))

(declare-fun b_lambda!122309 () Bool)

(assert (= b_lambda!122303 (or d!1231020 b_lambda!122309)))

(declare-fun bs!595831 () Bool)

(declare-fun d!1231164 () Bool)

(assert (= bs!595831 (and d!1231164 d!1231020)))

(assert (=> bs!595831 (= (dynLambda!19530 lambda!129111 (h!51031 rules!3820)) (ruleValid!3272 thiss!25889 (h!51031 rules!3820)))))

(assert (=> bs!595831 m!4757775))

(assert (=> b!4165983 d!1231164))

(check-sat b_and!324933 (not d!1231142) (not b!4166125) (not b!4166161) (not b!4166159) (not b!4166186) (not b!4166141) (not b!4166174) (not d!1231140) (not b!4166134) (not b!4166157) b_and!324915 (not d!1231120) (not b!4166020) (not b!4166021) b_and!324927 (not b!4166116) (not d!1231072) (not b!4166165) (not b_next!121009) (not b!4166014) (not b!4166002) (not d!1231086) (not b!4165984) (not b!4166175) b_and!324917 (not b!4166142) (not b!4166162) (not b!4166183) (not d!1231108) (not b!4166176) (not b!4166170) (not b!4166115) (not b!4166117) (not b!4166163) (not d!1231150) (not b_next!121001) b_and!324909 (not b_next!121017) (not b!4166153) (not b!4166149) (not b!4166147) (not b!4166184) (not bs!595831) b_and!324913 (not b!4166151) (not b_next!121025) (not b!4165947) (not b!4165949) (not b!4166167) (not b!4165992) (not b!4166001) (not b!4166124) (not b!4166158) (not b!4166166) tp_is_empty!21873 (not b!4166108) (not b!4166038) (not b!4165990) (not b!4166109) (not b!4166169) (not b!4166034) (not b!4165945) (not b!4166132) (not b!4166140) (not b!4166155) (not b!4166171) (not b!4166191) (not b!4166107) (not b!4166178) (not d!1231074) (not b!4166172) (not b!4166192) (not b!4166187) (not b!4166022) (not b!4166156) (not b!4166144) (not b_next!121005) (not b!4166133) (not b!4166126) (not b!4166024) (not d!1231132) b_and!324925 (not b!4166190) (not b_next!121015) (not d!1231112) (not d!1231148) (not b!4165943) (not b!4166180) (not b!4166188) b_and!324919 (not b!4166179) b_and!324911 (not b_next!120999) (not b_next!121003) (not b_next!121007) (not b!4166182) (not d!1231082) (not b!4166096) b_and!324935 (not b!4166152) (not b_lambda!122309) (not b!4165948) (not b!4166148) (not b!4166037) (not b_next!121023) (not b!4166143))
(check-sat b_and!324933 b_and!324915 b_and!324927 (not b_next!121009) b_and!324917 b_and!324913 (not b_next!121025) (not b_next!121015) (not b_next!121023) (not b_next!121001) (not b_next!121017) b_and!324909 (not b_next!121005) b_and!324925 b_and!324919 b_and!324911 (not b_next!120999) (not b_next!121003) (not b_next!121007) b_and!324935)
