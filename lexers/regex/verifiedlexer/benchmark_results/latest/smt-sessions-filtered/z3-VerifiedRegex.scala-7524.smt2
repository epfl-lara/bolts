; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!397570 () Bool)

(assert start!397570)

(declare-fun b!4169698 () Bool)

(declare-fun b_free!120527 () Bool)

(declare-fun b_next!121231 () Bool)

(assert (=> b!4169698 (= b_free!120527 (not b_next!121231))))

(declare-fun tp!1273683 () Bool)

(declare-fun b_and!325469 () Bool)

(assert (=> b!4169698 (= tp!1273683 b_and!325469)))

(declare-fun b_free!120529 () Bool)

(declare-fun b_next!121233 () Bool)

(assert (=> b!4169698 (= b_free!120529 (not b_next!121233))))

(declare-fun tp!1273675 () Bool)

(declare-fun b_and!325471 () Bool)

(assert (=> b!4169698 (= tp!1273675 b_and!325471)))

(declare-fun b!4169703 () Bool)

(declare-fun b_free!120531 () Bool)

(declare-fun b_next!121235 () Bool)

(assert (=> b!4169703 (= b_free!120531 (not b_next!121235))))

(declare-fun tp!1273682 () Bool)

(declare-fun b_and!325473 () Bool)

(assert (=> b!4169703 (= tp!1273682 b_and!325473)))

(declare-fun b_free!120533 () Bool)

(declare-fun b_next!121237 () Bool)

(assert (=> b!4169703 (= b_free!120533 (not b_next!121237))))

(declare-fun tp!1273681 () Bool)

(declare-fun b_and!325475 () Bool)

(assert (=> b!4169703 (= tp!1273681 b_and!325475)))

(declare-fun b!4169702 () Bool)

(declare-fun b_free!120535 () Bool)

(declare-fun b_next!121239 () Bool)

(assert (=> b!4169702 (= b_free!120535 (not b_next!121239))))

(declare-fun tp!1273674 () Bool)

(declare-fun b_and!325477 () Bool)

(assert (=> b!4169702 (= tp!1273674 b_and!325477)))

(declare-fun b_free!120537 () Bool)

(declare-fun b_next!121241 () Bool)

(assert (=> b!4169702 (= b_free!120537 (not b_next!121241))))

(declare-fun tp!1273686 () Bool)

(declare-fun b_and!325479 () Bool)

(assert (=> b!4169702 (= tp!1273686 b_and!325479)))

(declare-fun b!4169694 () Bool)

(declare-fun res!1708441 () Bool)

(declare-fun e!2588556 () Bool)

(assert (=> b!4169694 (=> (not res!1708441) (not e!2588556))))

(declare-datatypes ((List!45785 0))(
  ( (Nil!45661) (Cons!45661 (h!51081 (_ BitVec 16)) (t!344296 List!45785)) )
))
(declare-datatypes ((TokenValue!7794 0))(
  ( (FloatLiteralValue!15588 (text!55003 List!45785)) (TokenValueExt!7793 (__x!27809 Int)) (Broken!38970 (value!236091 List!45785)) (Object!7917) (End!7794) (Def!7794) (Underscore!7794) (Match!7794) (Else!7794) (Error!7794) (Case!7794) (If!7794) (Extends!7794) (Abstract!7794) (Class!7794) (Val!7794) (DelimiterValue!15588 (del!7854 List!45785)) (KeywordValue!7800 (value!236092 List!45785)) (CommentValue!15588 (value!236093 List!45785)) (WhitespaceValue!15588 (value!236094 List!45785)) (IndentationValue!7794 (value!236095 List!45785)) (String!52835) (Int32!7794) (Broken!38971 (value!236096 List!45785)) (Boolean!7795) (Unit!64736) (OperatorValue!7797 (op!7854 List!45785)) (IdentifierValue!15588 (value!236097 List!45785)) (IdentifierValue!15589 (value!236098 List!45785)) (WhitespaceValue!15589 (value!236099 List!45785)) (True!15588) (False!15588) (Broken!38972 (value!236100 List!45785)) (Broken!38973 (value!236101 List!45785)) (True!15589) (RightBrace!7794) (RightBracket!7794) (Colon!7794) (Null!7794) (Comma!7794) (LeftBracket!7794) (False!15589) (LeftBrace!7794) (ImaginaryLiteralValue!7794 (text!55004 List!45785)) (StringLiteralValue!23382 (value!236102 List!45785)) (EOFValue!7794 (value!236103 List!45785)) (IdentValue!7794 (value!236104 List!45785)) (DelimiterValue!15589 (value!236105 List!45785)) (DedentValue!7794 (value!236106 List!45785)) (NewLineValue!7794 (value!236107 List!45785)) (IntegerValue!23382 (value!236108 (_ BitVec 32)) (text!55005 List!45785)) (IntegerValue!23383 (value!236109 Int) (text!55006 List!45785)) (Times!7794) (Or!7794) (Equal!7794) (Minus!7794) (Broken!38974 (value!236110 List!45785)) (And!7794) (Div!7794) (LessEqual!7794) (Mod!7794) (Concat!20263) (Not!7794) (Plus!7794) (SpaceValue!7794 (value!236111 List!45785)) (IntegerValue!23384 (value!236112 Int) (text!55007 List!45785)) (StringLiteralValue!23383 (text!55008 List!45785)) (FloatLiteralValue!15589 (text!55009 List!45785)) (BytesLiteralValue!7794 (value!236113 List!45785)) (CommentValue!15589 (value!236114 List!45785)) (StringLiteralValue!23384 (value!236115 List!45785)) (ErrorTokenValue!7794 (msg!7855 List!45785)) )
))
(declare-datatypes ((String!52836 0))(
  ( (String!52837 (value!236116 String)) )
))
(declare-datatypes ((C!25128 0))(
  ( (C!25129 (val!14726 Int)) )
))
(declare-datatypes ((List!45786 0))(
  ( (Nil!45662) (Cons!45662 (h!51082 C!25128) (t!344297 List!45786)) )
))
(declare-datatypes ((IArray!27555 0))(
  ( (IArray!27556 (innerList!13835 List!45786)) )
))
(declare-datatypes ((Conc!13775 0))(
  ( (Node!13775 (left!34043 Conc!13775) (right!34373 Conc!13775) (csize!27780 Int) (cheight!13986 Int)) (Leaf!21300 (xs!17081 IArray!27555) (csize!27781 Int)) (Empty!13775) )
))
(declare-datatypes ((BalanceConc!27144 0))(
  ( (BalanceConc!27145 (c!712822 Conc!13775)) )
))
(declare-datatypes ((Regex!12469 0))(
  ( (ElementMatch!12469 (c!712823 C!25128)) (Concat!20264 (regOne!25450 Regex!12469) (regTwo!25450 Regex!12469)) (EmptyExpr!12469) (Star!12469 (reg!12798 Regex!12469)) (EmptyLang!12469) (Union!12469 (regOne!25451 Regex!12469) (regTwo!25451 Regex!12469)) )
))
(declare-datatypes ((TokenValueInjection!15016 0))(
  ( (TokenValueInjection!15017 (toValue!10244 Int) (toChars!10103 Int)) )
))
(declare-datatypes ((Rule!14928 0))(
  ( (Rule!14929 (regex!7564 Regex!12469) (tag!8428 String!52836) (isSeparator!7564 Bool) (transformation!7564 TokenValueInjection!15016)) )
))
(declare-datatypes ((List!45787 0))(
  ( (Nil!45663) (Cons!45663 (h!51083 Rule!14928) (t!344298 List!45787)) )
))
(declare-fun rules!3843 () List!45787)

(declare-fun rBis!167 () Rule!14928)

(declare-fun contains!9365 (List!45787 Rule!14928) Bool)

(assert (=> b!4169694 (= res!1708441 (contains!9365 rules!3843 rBis!167))))

(declare-fun e!2588547 () Bool)

(declare-fun b!4169696 () Bool)

(declare-fun tp!1273676 () Bool)

(declare-fun e!2588550 () Bool)

(declare-fun inv!60193 (String!52836) Bool)

(declare-fun inv!60195 (TokenValueInjection!15016) Bool)

(assert (=> b!4169696 (= e!2588547 (and tp!1273676 (inv!60193 (tag!8428 rBis!167)) (inv!60195 (transformation!7564 rBis!167)) e!2588550))))

(declare-fun b!4169697 () Bool)

(declare-fun res!1708438 () Bool)

(assert (=> b!4169697 (=> (not res!1708438) (not e!2588556))))

(declare-fun p!2959 () List!45786)

(declare-fun input!3342 () List!45786)

(declare-fun isPrefix!4421 (List!45786 List!45786) Bool)

(assert (=> b!4169697 (= res!1708438 (isPrefix!4421 p!2959 input!3342))))

(assert (=> b!4169698 (= e!2588550 (and tp!1273683 tp!1273675))))

(declare-fun b!4169699 () Bool)

(declare-fun res!1708444 () Bool)

(assert (=> b!4169699 (=> (not res!1708444) (not e!2588556))))

(declare-fun isEmpty!27023 (List!45787) Bool)

(assert (=> b!4169699 (= res!1708444 (not (isEmpty!27023 rules!3843)))))

(declare-fun b!4169700 () Bool)

(declare-fun e!2588554 () Bool)

(declare-fun tp_is_empty!21901 () Bool)

(declare-fun tp!1273680 () Bool)

(assert (=> b!4169700 (= e!2588554 (and tp_is_empty!21901 tp!1273680))))

(declare-fun b!4169701 () Bool)

(assert (=> b!4169701 (= e!2588556 false)))

(declare-fun e!2588552 () Bool)

(assert (=> b!4169702 (= e!2588552 (and tp!1273674 tp!1273686))))

(declare-fun e!2588545 () Bool)

(assert (=> b!4169703 (= e!2588545 (and tp!1273682 tp!1273681))))

(declare-fun e!2588543 () Bool)

(declare-fun tp!1273679 () Bool)

(declare-fun b!4169704 () Bool)

(declare-fun r!4142 () Rule!14928)

(assert (=> b!4169704 (= e!2588543 (and tp!1273679 (inv!60193 (tag!8428 r!4142)) (inv!60195 (transformation!7564 r!4142)) e!2588552))))

(declare-fun b!4169705 () Bool)

(declare-fun e!2588548 () Bool)

(declare-fun tp!1273684 () Bool)

(assert (=> b!4169705 (= e!2588548 (and tp_is_empty!21901 tp!1273684))))

(declare-fun b!4169706 () Bool)

(declare-fun e!2588546 () Bool)

(declare-fun tp!1273677 () Bool)

(assert (=> b!4169706 (= e!2588546 (and tp_is_empty!21901 tp!1273677))))

(declare-fun b!4169695 () Bool)

(declare-fun res!1708443 () Bool)

(assert (=> b!4169695 (=> (not res!1708443) (not e!2588556))))

(declare-fun pBis!107 () List!45786)

(assert (=> b!4169695 (= res!1708443 (isPrefix!4421 pBis!107 input!3342))))

(declare-fun res!1708440 () Bool)

(assert (=> start!397570 (=> (not res!1708440) (not e!2588556))))

(declare-datatypes ((LexerInterface!7157 0))(
  ( (LexerInterfaceExt!7154 (__x!27810 Int)) (Lexer!7155) )
))
(declare-fun thiss!25986 () LexerInterface!7157)

(get-info :version)

(assert (=> start!397570 (= res!1708440 ((_ is Lexer!7155) thiss!25986))))

(assert (=> start!397570 e!2588556))

(assert (=> start!397570 true))

(assert (=> start!397570 e!2588547))

(assert (=> start!397570 e!2588543))

(declare-fun e!2588549 () Bool)

(assert (=> start!397570 e!2588549))

(assert (=> start!397570 e!2588548))

(assert (=> start!397570 e!2588554))

(assert (=> start!397570 e!2588546))

(declare-fun b!4169707 () Bool)

(declare-fun e!2588555 () Bool)

(declare-fun tp!1273678 () Bool)

(assert (=> b!4169707 (= e!2588549 (and e!2588555 tp!1273678))))

(declare-fun b!4169708 () Bool)

(declare-fun res!1708439 () Bool)

(assert (=> b!4169708 (=> (not res!1708439) (not e!2588556))))

(declare-fun rulesInvariant!6370 (LexerInterface!7157 List!45787) Bool)

(assert (=> b!4169708 (= res!1708439 (rulesInvariant!6370 thiss!25986 rules!3843))))

(declare-fun b!4169709 () Bool)

(declare-fun res!1708442 () Bool)

(assert (=> b!4169709 (=> (not res!1708442) (not e!2588556))))

(assert (=> b!4169709 (= res!1708442 (contains!9365 rules!3843 r!4142))))

(declare-fun tp!1273685 () Bool)

(declare-fun b!4169710 () Bool)

(assert (=> b!4169710 (= e!2588555 (and tp!1273685 (inv!60193 (tag!8428 (h!51083 rules!3843))) (inv!60195 (transformation!7564 (h!51083 rules!3843))) e!2588545))))

(assert (= (and start!397570 res!1708440) b!4169697))

(assert (= (and b!4169697 res!1708438) b!4169695))

(assert (= (and b!4169695 res!1708443) b!4169699))

(assert (= (and b!4169699 res!1708444) b!4169708))

(assert (= (and b!4169708 res!1708439) b!4169709))

(assert (= (and b!4169709 res!1708442) b!4169694))

(assert (= (and b!4169694 res!1708441) b!4169701))

(assert (= b!4169696 b!4169698))

(assert (= start!397570 b!4169696))

(assert (= b!4169704 b!4169702))

(assert (= start!397570 b!4169704))

(assert (= b!4169710 b!4169703))

(assert (= b!4169707 b!4169710))

(assert (= (and start!397570 ((_ is Cons!45663) rules!3843)) b!4169707))

(assert (= (and start!397570 ((_ is Cons!45662) input!3342)) b!4169705))

(assert (= (and start!397570 ((_ is Cons!45662) pBis!107)) b!4169700))

(assert (= (and start!397570 ((_ is Cons!45662) p!2959)) b!4169706))

(declare-fun m!4760663 () Bool)

(assert (=> b!4169710 m!4760663))

(declare-fun m!4760665 () Bool)

(assert (=> b!4169710 m!4760665))

(declare-fun m!4760667 () Bool)

(assert (=> b!4169695 m!4760667))

(declare-fun m!4760669 () Bool)

(assert (=> b!4169709 m!4760669))

(declare-fun m!4760671 () Bool)

(assert (=> b!4169704 m!4760671))

(declare-fun m!4760673 () Bool)

(assert (=> b!4169704 m!4760673))

(declare-fun m!4760675 () Bool)

(assert (=> b!4169696 m!4760675))

(declare-fun m!4760677 () Bool)

(assert (=> b!4169696 m!4760677))

(declare-fun m!4760679 () Bool)

(assert (=> b!4169697 m!4760679))

(declare-fun m!4760681 () Bool)

(assert (=> b!4169708 m!4760681))

(declare-fun m!4760683 () Bool)

(assert (=> b!4169699 m!4760683))

(declare-fun m!4760685 () Bool)

(assert (=> b!4169694 m!4760685))

(check-sat b_and!325469 (not b!4169705) (not b_next!121231) (not b!4169706) tp_is_empty!21901 b_and!325475 (not b!4169695) (not b_next!121239) b_and!325473 (not b!4169699) b_and!325471 (not b!4169696) (not b_next!121241) (not b_next!121235) (not b!4169697) (not b!4169707) (not b!4169708) (not b_next!121233) (not b_next!121237) (not b!4169694) (not b!4169710) (not b!4169700) b_and!325479 (not b!4169704) (not b!4169709) b_and!325477)
(check-sat b_and!325469 b_and!325471 (not b_next!121241) (not b_next!121235) (not b_next!121231) (not b_next!121233) (not b_next!121237) b_and!325475 b_and!325479 b_and!325477 (not b_next!121239) b_and!325473)
