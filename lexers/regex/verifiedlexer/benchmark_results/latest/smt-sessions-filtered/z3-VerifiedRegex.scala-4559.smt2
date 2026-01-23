; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241318 () Bool)

(assert start!241318)

(declare-fun b!2474570 () Bool)

(declare-fun b_free!71733 () Bool)

(declare-fun b_next!72437 () Bool)

(assert (=> b!2474570 (= b_free!71733 (not b_next!72437))))

(declare-fun tp!791233 () Bool)

(declare-fun b_and!187861 () Bool)

(assert (=> b!2474570 (= tp!791233 b_and!187861)))

(declare-fun b_free!71735 () Bool)

(declare-fun b_next!72439 () Bool)

(assert (=> b!2474570 (= b_free!71735 (not b_next!72439))))

(declare-fun tp!791231 () Bool)

(declare-fun b_and!187863 () Bool)

(assert (=> b!2474570 (= tp!791231 b_and!187863)))

(declare-fun b!2474558 () Bool)

(declare-fun b_free!71737 () Bool)

(declare-fun b_next!72441 () Bool)

(assert (=> b!2474558 (= b_free!71737 (not b_next!72441))))

(declare-fun tp!791232 () Bool)

(declare-fun b_and!187865 () Bool)

(assert (=> b!2474558 (= tp!791232 b_and!187865)))

(declare-fun b_free!71739 () Bool)

(declare-fun b_next!72443 () Bool)

(assert (=> b!2474558 (= b_free!71739 (not b_next!72443))))

(declare-fun tp!791229 () Bool)

(declare-fun b_and!187867 () Bool)

(assert (=> b!2474558 (= tp!791229 b_and!187867)))

(declare-fun b!2474553 () Bool)

(declare-fun b_free!71741 () Bool)

(declare-fun b_next!72445 () Bool)

(assert (=> b!2474553 (= b_free!71741 (not b_next!72445))))

(declare-fun tp!791235 () Bool)

(declare-fun b_and!187869 () Bool)

(assert (=> b!2474553 (= tp!791235 b_and!187869)))

(declare-fun b_free!71743 () Bool)

(declare-fun b_next!72447 () Bool)

(assert (=> b!2474553 (= b_free!71743 (not b_next!72447))))

(declare-fun tp!791245 () Bool)

(declare-fun b_and!187871 () Bool)

(assert (=> b!2474553 (= tp!791245 b_and!187871)))

(declare-fun b!2474560 () Bool)

(declare-fun b_free!71745 () Bool)

(declare-fun b_next!72449 () Bool)

(assert (=> b!2474560 (= b_free!71745 (not b_next!72449))))

(declare-fun tp!791230 () Bool)

(declare-fun b_and!187873 () Bool)

(assert (=> b!2474560 (= tp!791230 b_and!187873)))

(declare-fun b_free!71747 () Bool)

(declare-fun b_next!72451 () Bool)

(assert (=> b!2474560 (= b_free!71747 (not b_next!72451))))

(declare-fun tp!791236 () Bool)

(declare-fun b_and!187875 () Bool)

(assert (=> b!2474560 (= tp!791236 b_and!187875)))

(declare-fun b!2474544 () Bool)

(declare-fun res!1047671 () Bool)

(declare-fun e!1569820 () Bool)

(assert (=> b!2474544 (=> (not res!1047671) (not e!1569820))))

(declare-datatypes ((LexerInterface!4102 0))(
  ( (LexerInterfaceExt!4099 (__x!18637 Int)) (Lexer!4100) )
))
(declare-fun thiss!27932 () LexerInterface!4102)

(declare-datatypes ((List!28986 0))(
  ( (Nil!28886) (Cons!28886 (h!34287 (_ BitVec 16)) (t!210457 List!28986)) )
))
(declare-datatypes ((TokenValue!4691 0))(
  ( (FloatLiteralValue!9382 (text!33282 List!28986)) (TokenValueExt!4690 (__x!18638 Int)) (Broken!23455 (value!143772 List!28986)) (Object!4790) (End!4691) (Def!4691) (Underscore!4691) (Match!4691) (Else!4691) (Error!4691) (Case!4691) (If!4691) (Extends!4691) (Abstract!4691) (Class!4691) (Val!4691) (DelimiterValue!9382 (del!4751 List!28986)) (KeywordValue!4697 (value!143773 List!28986)) (CommentValue!9382 (value!143774 List!28986)) (WhitespaceValue!9382 (value!143775 List!28986)) (IndentationValue!4691 (value!143776 List!28986)) (String!31750) (Int32!4691) (Broken!23456 (value!143777 List!28986)) (Boolean!4692) (Unit!42251) (OperatorValue!4694 (op!4751 List!28986)) (IdentifierValue!9382 (value!143778 List!28986)) (IdentifierValue!9383 (value!143779 List!28986)) (WhitespaceValue!9383 (value!143780 List!28986)) (True!9382) (False!9382) (Broken!23457 (value!143781 List!28986)) (Broken!23458 (value!143782 List!28986)) (True!9383) (RightBrace!4691) (RightBracket!4691) (Colon!4691) (Null!4691) (Comma!4691) (LeftBracket!4691) (False!9383) (LeftBrace!4691) (ImaginaryLiteralValue!4691 (text!33283 List!28986)) (StringLiteralValue!14073 (value!143783 List!28986)) (EOFValue!4691 (value!143784 List!28986)) (IdentValue!4691 (value!143785 List!28986)) (DelimiterValue!9383 (value!143786 List!28986)) (DedentValue!4691 (value!143787 List!28986)) (NewLineValue!4691 (value!143788 List!28986)) (IntegerValue!14073 (value!143789 (_ BitVec 32)) (text!33284 List!28986)) (IntegerValue!14074 (value!143790 Int) (text!33285 List!28986)) (Times!4691) (Or!4691) (Equal!4691) (Minus!4691) (Broken!23459 (value!143791 List!28986)) (And!4691) (Div!4691) (LessEqual!4691) (Mod!4691) (Concat!11984) (Not!4691) (Plus!4691) (SpaceValue!4691 (value!143792 List!28986)) (IntegerValue!14075 (value!143793 Int) (text!33286 List!28986)) (StringLiteralValue!14074 (text!33287 List!28986)) (FloatLiteralValue!9383 (text!33288 List!28986)) (BytesLiteralValue!4691 (value!143794 List!28986)) (CommentValue!9383 (value!143795 List!28986)) (StringLiteralValue!14075 (value!143796 List!28986)) (ErrorTokenValue!4691 (msg!4752 List!28986)) )
))
(declare-datatypes ((C!14744 0))(
  ( (C!14745 (val!8632 Int)) )
))
(declare-datatypes ((List!28987 0))(
  ( (Nil!28887) (Cons!28887 (h!34288 C!14744) (t!210458 List!28987)) )
))
(declare-datatypes ((IArray!18451 0))(
  ( (IArray!18452 (innerList!9283 List!28987)) )
))
(declare-datatypes ((Conc!9223 0))(
  ( (Node!9223 (left!22150 Conc!9223) (right!22480 Conc!9223) (csize!18676 Int) (cheight!9434 Int)) (Leaf!13783 (xs!12207 IArray!18451) (csize!18677 Int)) (Empty!9223) )
))
(declare-datatypes ((BalanceConc!18060 0))(
  ( (BalanceConc!18061 (c!393942 Conc!9223)) )
))
(declare-datatypes ((String!31751 0))(
  ( (String!31752 (value!143797 String)) )
))
(declare-datatypes ((Regex!7293 0))(
  ( (ElementMatch!7293 (c!393943 C!14744)) (Concat!11985 (regOne!15098 Regex!7293) (regTwo!15098 Regex!7293)) (EmptyExpr!7293) (Star!7293 (reg!7622 Regex!7293)) (EmptyLang!7293) (Union!7293 (regOne!15099 Regex!7293) (regTwo!15099 Regex!7293)) )
))
(declare-datatypes ((TokenValueInjection!8882 0))(
  ( (TokenValueInjection!8883 (toValue!6369 Int) (toChars!6228 Int)) )
))
(declare-datatypes ((Rule!8810 0))(
  ( (Rule!8811 (regex!4505 Regex!7293) (tag!4995 String!31751) (isSeparator!4505 Bool) (transformation!4505 TokenValueInjection!8882)) )
))
(declare-datatypes ((List!28988 0))(
  ( (Nil!28888) (Cons!28888 (h!34289 Rule!8810) (t!210459 List!28988)) )
))
(declare-fun rules!4472 () List!28988)

(declare-datatypes ((Token!8480 0))(
  ( (Token!8481 (value!143798 TokenValue!4691) (rule!6863 Rule!8810) (size!22477 Int) (originalCharacters!5271 List!28987)) )
))
(declare-datatypes ((List!28989 0))(
  ( (Nil!28889) (Cons!28889 (h!34290 Token!8480) (t!210460 List!28989)) )
))
(declare-fun l!6611 () List!28989)

(declare-fun tokensListTwoByTwoPredicateSeparableList!641 (LexerInterface!4102 List!28989 List!28988) Bool)

(assert (=> b!2474544 (= res!1047671 (tokensListTwoByTwoPredicateSeparableList!641 thiss!27932 l!6611 rules!4472))))

(declare-fun b!2474545 () Bool)

(declare-fun res!1047668 () Bool)

(assert (=> b!2474545 (=> (not res!1047668) (not e!1569820))))

(declare-fun isEmpty!16764 (List!28988) Bool)

(assert (=> b!2474545 (= res!1047668 (not (isEmpty!16764 rules!4472)))))

(declare-fun b!2474546 () Bool)

(declare-fun res!1047666 () Bool)

(assert (=> b!2474546 (=> (not res!1047666) (not e!1569820))))

(declare-fun rulesProduceEachTokenIndividuallyList!1418 (LexerInterface!4102 List!28988 List!28989) Bool)

(assert (=> b!2474546 (= res!1047666 (rulesProduceEachTokenIndividuallyList!1418 thiss!27932 rules!4472 l!6611))))

(declare-fun b!2474547 () Bool)

(declare-fun e!1569827 () Bool)

(declare-fun e!1569819 () Bool)

(assert (=> b!2474547 (= e!1569827 e!1569819)))

(declare-fun res!1047655 () Bool)

(assert (=> b!2474547 (=> (not res!1047655) (not e!1569819))))

(declare-fun lt!883767 () Int)

(declare-fun lt!883768 () List!28989)

(declare-fun size!22478 (List!28989) Int)

(assert (=> b!2474547 (= res!1047655 (< lt!883767 (size!22478 lt!883768)))))

(declare-fun i!1803 () Int)

(assert (=> b!2474547 (= lt!883767 (+ 1 (- i!1803 1)))))

(declare-fun b!2474548 () Bool)

(assert (=> b!2474548 (= e!1569820 e!1569827)))

(declare-fun res!1047656 () Bool)

(assert (=> b!2474548 (=> (not res!1047656) (not e!1569827))))

(assert (=> b!2474548 (= res!1047656 (rulesProduceEachTokenIndividuallyList!1418 thiss!27932 rules!4472 lt!883768))))

(declare-fun tail!3938 (List!28989) List!28989)

(assert (=> b!2474548 (= lt!883768 (tail!3938 l!6611))))

(declare-fun b!2474549 () Bool)

(declare-fun res!1047667 () Bool)

(assert (=> b!2474549 (=> (not res!1047667) (not e!1569820))))

(assert (=> b!2474549 (= res!1047667 (not (= i!1803 0)))))

(declare-fun b!2474550 () Bool)

(declare-fun e!1569818 () Bool)

(declare-fun e!1569823 () Bool)

(declare-fun tp!791239 () Bool)

(assert (=> b!2474550 (= e!1569818 (and e!1569823 tp!791239))))

(declare-fun e!1569816 () Bool)

(declare-fun e!1569821 () Bool)

(declare-fun b!2474551 () Bool)

(declare-fun t2!67 () Token!8480)

(declare-fun tp!791238 () Bool)

(declare-fun inv!38976 (String!31751) Bool)

(declare-fun inv!38979 (TokenValueInjection!8882) Bool)

(assert (=> b!2474551 (= e!1569816 (and tp!791238 (inv!38976 (tag!4995 (rule!6863 t2!67))) (inv!38979 (transformation!4505 (rule!6863 t2!67))) e!1569821))))

(declare-fun b!2474552 () Bool)

(declare-fun res!1047659 () Bool)

(assert (=> b!2474552 (=> (not res!1047659) (not e!1569827))))

(assert (=> b!2474552 (= res!1047659 (>= (- i!1803 1) 0))))

(declare-fun res!1047661 () Bool)

(assert (=> start!241318 (=> (not res!1047661) (not e!1569820))))

(get-info :version)

(assert (=> start!241318 (= res!1047661 ((_ is Lexer!4100) thiss!27932))))

(assert (=> start!241318 e!1569820))

(assert (=> start!241318 true))

(assert (=> start!241318 e!1569818))

(declare-fun e!1569824 () Bool)

(declare-fun inv!38980 (Token!8480) Bool)

(assert (=> start!241318 (and (inv!38980 t2!67) e!1569824)))

(declare-fun e!1569812 () Bool)

(assert (=> start!241318 e!1569812))

(declare-fun t1!67 () Token!8480)

(declare-fun e!1569813 () Bool)

(assert (=> start!241318 (and (inv!38980 t1!67) e!1569813)))

(declare-fun tp!791241 () Bool)

(declare-fun e!1569814 () Bool)

(declare-fun b!2474543 () Bool)

(declare-fun inv!21 (TokenValue!4691) Bool)

(assert (=> b!2474543 (= e!1569813 (and (inv!21 (value!143798 t1!67)) e!1569814 tp!791241))))

(declare-fun e!1569830 () Bool)

(assert (=> b!2474553 (= e!1569830 (and tp!791235 tp!791245))))

(declare-fun b!2474554 () Bool)

(declare-fun tp!791243 () Bool)

(declare-fun e!1569811 () Bool)

(assert (=> b!2474554 (= e!1569823 (and tp!791243 (inv!38976 (tag!4995 (h!34289 rules!4472))) (inv!38979 (transformation!4505 (h!34289 rules!4472))) e!1569811))))

(declare-fun e!1569832 () Bool)

(declare-fun b!2474555 () Bool)

(declare-fun tp!791244 () Bool)

(assert (=> b!2474555 (= e!1569814 (and tp!791244 (inv!38976 (tag!4995 (rule!6863 t1!67))) (inv!38979 (transformation!4505 (rule!6863 t1!67))) e!1569832))))

(declare-fun b!2474556 () Bool)

(declare-fun res!1047660 () Bool)

(assert (=> b!2474556 (=> (not res!1047660) (not e!1569819))))

(declare-fun apply!6814 (List!28989 Int) Token!8480)

(assert (=> b!2474556 (= res!1047660 (= (apply!6814 lt!883768 lt!883767) t2!67))))

(declare-fun b!2474557 () Bool)

(declare-fun res!1047669 () Bool)

(assert (=> b!2474557 (=> (not res!1047669) (not e!1569820))))

(assert (=> b!2474557 (= res!1047669 (= (apply!6814 l!6611 i!1803) t1!67))))

(assert (=> b!2474558 (= e!1569821 (and tp!791232 tp!791229))))

(declare-fun e!1569829 () Bool)

(declare-fun tp!791242 () Bool)

(declare-fun b!2474559 () Bool)

(assert (=> b!2474559 (= e!1569829 (and tp!791242 (inv!38976 (tag!4995 (rule!6863 (h!34290 l!6611)))) (inv!38979 (transformation!4505 (rule!6863 (h!34290 l!6611)))) e!1569830))))

(assert (=> b!2474560 (= e!1569811 (and tp!791230 tp!791236))))

(declare-fun b!2474561 () Bool)

(declare-fun res!1047664 () Bool)

(assert (=> b!2474561 (=> (not res!1047664) (not e!1569819))))

(assert (=> b!2474561 (= res!1047664 (= (apply!6814 lt!883768 (- i!1803 1)) t1!67))))

(declare-fun b!2474562 () Bool)

(declare-fun res!1047670 () Bool)

(assert (=> b!2474562 (=> (not res!1047670) (not e!1569827))))

(assert (=> b!2474562 (= res!1047670 (tokensListTwoByTwoPredicateSeparableList!641 thiss!27932 lt!883768 rules!4472))))

(declare-fun b!2474563 () Bool)

(declare-fun res!1047657 () Bool)

(assert (=> b!2474563 (=> (not res!1047657) (not e!1569820))))

(assert (=> b!2474563 (= res!1047657 (>= i!1803 0))))

(declare-fun b!2474564 () Bool)

(declare-fun res!1047665 () Bool)

(assert (=> b!2474564 (=> (not res!1047665) (not e!1569820))))

(assert (=> b!2474564 (= res!1047665 (= (apply!6814 l!6611 (+ 1 i!1803)) t2!67))))

(declare-fun e!1569815 () Bool)

(declare-fun b!2474565 () Bool)

(declare-fun tp!791240 () Bool)

(assert (=> b!2474565 (= e!1569812 (and (inv!38980 (h!34290 l!6611)) e!1569815 tp!791240))))

(declare-fun tp!791237 () Bool)

(declare-fun b!2474566 () Bool)

(assert (=> b!2474566 (= e!1569824 (and (inv!21 (value!143798 t2!67)) e!1569816 tp!791237))))

(declare-fun b!2474567 () Bool)

(declare-fun res!1047663 () Bool)

(assert (=> b!2474567 (=> (not res!1047663) (not e!1569820))))

(assert (=> b!2474567 (= res!1047663 (< (+ 1 i!1803) (size!22478 l!6611)))))

(declare-fun b!2474568 () Bool)

(declare-fun tp!791234 () Bool)

(assert (=> b!2474568 (= e!1569815 (and (inv!21 (value!143798 (h!34290 l!6611))) e!1569829 tp!791234))))

(declare-fun b!2474569 () Bool)

(declare-fun contains!4931 (List!28989 Token!8480) Bool)

(assert (=> b!2474569 (= e!1569819 (not (contains!4931 l!6611 t1!67)))))

(declare-fun e!1569817 () Bool)

(assert (=> b!2474569 e!1569817))

(declare-fun res!1047662 () Bool)

(assert (=> b!2474569 (=> (not res!1047662) (not e!1569817))))

(declare-fun rulesProduceIndividualToken!1830 (LexerInterface!4102 List!28988 Token!8480) Bool)

(assert (=> b!2474569 (= res!1047662 (rulesProduceIndividualToken!1830 thiss!27932 rules!4472 t2!67))))

(declare-datatypes ((Unit!42252 0))(
  ( (Unit!42253) )
))
(declare-fun lt!883766 () Unit!42252)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!691 (LexerInterface!4102 List!28988 List!28989 Token!8480) Unit!42252)

(assert (=> b!2474569 (= lt!883766 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!691 thiss!27932 rules!4472 lt!883768 t2!67))))

(assert (=> b!2474569 (rulesProduceIndividualToken!1830 thiss!27932 rules!4472 t1!67)))

(declare-fun lt!883765 () Unit!42252)

(assert (=> b!2474569 (= lt!883765 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!691 thiss!27932 rules!4472 lt!883768 t1!67))))

(declare-fun lt!883764 () Unit!42252)

(declare-fun tokensListTwoByTwoPredicateInstantiateSeparableTokens!12 (LexerInterface!4102 List!28989 List!28988 Token!8480 Token!8480 Int) Unit!42252)

(assert (=> b!2474569 (= lt!883764 (tokensListTwoByTwoPredicateInstantiateSeparableTokens!12 thiss!27932 lt!883768 rules!4472 t1!67 t2!67 (- i!1803 1)))))

(assert (=> b!2474570 (= e!1569832 (and tp!791233 tp!791231))))

(declare-fun b!2474571 () Bool)

(declare-fun separableTokensPredicate!877 (LexerInterface!4102 Token!8480 Token!8480 List!28988) Bool)

(assert (=> b!2474571 (= e!1569817 (separableTokensPredicate!877 thiss!27932 t1!67 t2!67 rules!4472))))

(declare-fun b!2474572 () Bool)

(declare-fun res!1047658 () Bool)

(assert (=> b!2474572 (=> (not res!1047658) (not e!1569820))))

(declare-fun rulesInvariant!3602 (LexerInterface!4102 List!28988) Bool)

(assert (=> b!2474572 (= res!1047658 (rulesInvariant!3602 thiss!27932 rules!4472))))

(assert (= (and start!241318 res!1047661) b!2474545))

(assert (= (and b!2474545 res!1047668) b!2474572))

(assert (= (and b!2474572 res!1047658) b!2474546))

(assert (= (and b!2474546 res!1047666) b!2474544))

(assert (= (and b!2474544 res!1047671) b!2474563))

(assert (= (and b!2474563 res!1047657) b!2474567))

(assert (= (and b!2474567 res!1047663) b!2474557))

(assert (= (and b!2474557 res!1047669) b!2474564))

(assert (= (and b!2474564 res!1047665) b!2474549))

(assert (= (and b!2474549 res!1047667) b!2474548))

(assert (= (and b!2474548 res!1047656) b!2474562))

(assert (= (and b!2474562 res!1047670) b!2474552))

(assert (= (and b!2474552 res!1047659) b!2474547))

(assert (= (and b!2474547 res!1047655) b!2474561))

(assert (= (and b!2474561 res!1047664) b!2474556))

(assert (= (and b!2474556 res!1047660) b!2474569))

(assert (= (and b!2474569 res!1047662) b!2474571))

(assert (= b!2474554 b!2474560))

(assert (= b!2474550 b!2474554))

(assert (= (and start!241318 ((_ is Cons!28888) rules!4472)) b!2474550))

(assert (= b!2474551 b!2474558))

(assert (= b!2474566 b!2474551))

(assert (= start!241318 b!2474566))

(assert (= b!2474559 b!2474553))

(assert (= b!2474568 b!2474559))

(assert (= b!2474565 b!2474568))

(assert (= (and start!241318 ((_ is Cons!28889) l!6611)) b!2474565))

(assert (= b!2474555 b!2474570))

(assert (= b!2474543 b!2474555))

(assert (= start!241318 b!2474543))

(declare-fun m!2842771 () Bool)

(assert (=> b!2474545 m!2842771))

(declare-fun m!2842773 () Bool)

(assert (=> b!2474564 m!2842773))

(declare-fun m!2842775 () Bool)

(assert (=> b!2474569 m!2842775))

(declare-fun m!2842777 () Bool)

(assert (=> b!2474569 m!2842777))

(declare-fun m!2842779 () Bool)

(assert (=> b!2474569 m!2842779))

(declare-fun m!2842781 () Bool)

(assert (=> b!2474569 m!2842781))

(declare-fun m!2842783 () Bool)

(assert (=> b!2474569 m!2842783))

(declare-fun m!2842785 () Bool)

(assert (=> b!2474569 m!2842785))

(declare-fun m!2842787 () Bool)

(assert (=> b!2474562 m!2842787))

(declare-fun m!2842789 () Bool)

(assert (=> b!2474572 m!2842789))

(declare-fun m!2842791 () Bool)

(assert (=> b!2474555 m!2842791))

(declare-fun m!2842793 () Bool)

(assert (=> b!2474555 m!2842793))

(declare-fun m!2842795 () Bool)

(assert (=> b!2474554 m!2842795))

(declare-fun m!2842797 () Bool)

(assert (=> b!2474554 m!2842797))

(declare-fun m!2842799 () Bool)

(assert (=> b!2474544 m!2842799))

(declare-fun m!2842801 () Bool)

(assert (=> b!2474566 m!2842801))

(declare-fun m!2842803 () Bool)

(assert (=> b!2474547 m!2842803))

(declare-fun m!2842805 () Bool)

(assert (=> b!2474546 m!2842805))

(declare-fun m!2842807 () Bool)

(assert (=> b!2474561 m!2842807))

(declare-fun m!2842809 () Bool)

(assert (=> b!2474556 m!2842809))

(declare-fun m!2842811 () Bool)

(assert (=> b!2474548 m!2842811))

(declare-fun m!2842813 () Bool)

(assert (=> b!2474548 m!2842813))

(declare-fun m!2842815 () Bool)

(assert (=> b!2474557 m!2842815))

(declare-fun m!2842817 () Bool)

(assert (=> b!2474543 m!2842817))

(declare-fun m!2842819 () Bool)

(assert (=> start!241318 m!2842819))

(declare-fun m!2842821 () Bool)

(assert (=> start!241318 m!2842821))

(declare-fun m!2842823 () Bool)

(assert (=> b!2474551 m!2842823))

(declare-fun m!2842825 () Bool)

(assert (=> b!2474551 m!2842825))

(declare-fun m!2842827 () Bool)

(assert (=> b!2474571 m!2842827))

(declare-fun m!2842829 () Bool)

(assert (=> b!2474559 m!2842829))

(declare-fun m!2842831 () Bool)

(assert (=> b!2474559 m!2842831))

(declare-fun m!2842833 () Bool)

(assert (=> b!2474568 m!2842833))

(declare-fun m!2842835 () Bool)

(assert (=> b!2474565 m!2842835))

(declare-fun m!2842837 () Bool)

(assert (=> b!2474567 m!2842837))

(check-sat (not b!2474545) (not b!2474555) (not b!2474564) b_and!187861 (not b!2474565) (not b_next!72441) b_and!187871 (not b_next!72445) (not b!2474566) (not b_next!72451) (not b!2474562) (not b!2474569) b_and!187873 (not b_next!72437) (not b!2474556) (not b!2474548) (not b!2474557) (not b!2474572) (not b!2474554) (not b!2474568) (not b!2474544) b_and!187869 (not b!2474547) (not b!2474551) (not b_next!72449) (not b!2474559) b_and!187863 (not start!241318) b_and!187865 (not b!2474543) (not b!2474571) (not b!2474546) (not b_next!72439) b_and!187875 (not b!2474550) (not b!2474567) (not b!2474561) (not b_next!72443) b_and!187867 (not b_next!72447))
(check-sat (not b_next!72445) (not b_next!72437) b_and!187861 b_and!187869 (not b_next!72449) b_and!187863 b_and!187865 (not b_next!72441) (not b_next!72439) b_and!187875 (not b_next!72443) b_and!187871 (not b_next!72451) b_and!187873 b_and!187867 (not b_next!72447))
(get-model)

(declare-fun d!711930 () Bool)

(assert (=> d!711930 (= (inv!38976 (tag!4995 (rule!6863 (h!34290 l!6611)))) (= (mod (str.len (value!143797 (tag!4995 (rule!6863 (h!34290 l!6611))))) 2) 0))))

(assert (=> b!2474559 d!711930))

(declare-fun d!711932 () Bool)

(declare-fun res!1047680 () Bool)

(declare-fun e!1569837 () Bool)

(assert (=> d!711932 (=> (not res!1047680) (not e!1569837))))

(declare-fun semiInverseModEq!1857 (Int Int) Bool)

(assert (=> d!711932 (= res!1047680 (semiInverseModEq!1857 (toChars!6228 (transformation!4505 (rule!6863 (h!34290 l!6611)))) (toValue!6369 (transformation!4505 (rule!6863 (h!34290 l!6611))))))))

(assert (=> d!711932 (= (inv!38979 (transformation!4505 (rule!6863 (h!34290 l!6611)))) e!1569837)))

(declare-fun b!2474575 () Bool)

(declare-fun equivClasses!1768 (Int Int) Bool)

(assert (=> b!2474575 (= e!1569837 (equivClasses!1768 (toChars!6228 (transformation!4505 (rule!6863 (h!34290 l!6611)))) (toValue!6369 (transformation!4505 (rule!6863 (h!34290 l!6611))))))))

(assert (= (and d!711932 res!1047680) b!2474575))

(declare-fun m!2842839 () Bool)

(assert (=> d!711932 m!2842839))

(declare-fun m!2842841 () Bool)

(assert (=> b!2474575 m!2842841))

(assert (=> b!2474559 d!711932))

(declare-fun b!2474633 () Bool)

(declare-fun e!1569880 () Bool)

(assert (=> b!2474633 (= e!1569880 true)))

(declare-fun b!2474632 () Bool)

(declare-fun e!1569879 () Bool)

(assert (=> b!2474632 (= e!1569879 e!1569880)))

(declare-fun b!2474631 () Bool)

(declare-fun e!1569878 () Bool)

(assert (=> b!2474631 (= e!1569878 e!1569879)))

(declare-fun d!711934 () Bool)

(assert (=> d!711934 e!1569878))

(assert (= b!2474632 b!2474633))

(assert (= b!2474631 b!2474632))

(assert (= (and d!711934 ((_ is Cons!28888) rules!4472)) b!2474631))

(declare-fun lambda!93374 () Int)

(declare-fun order!15677 () Int)

(declare-fun order!15679 () Int)

(declare-fun dynLambda!12414 (Int Int) Int)

(declare-fun dynLambda!12415 (Int Int) Int)

(assert (=> b!2474633 (< (dynLambda!12414 order!15677 (toValue!6369 (transformation!4505 (h!34289 rules!4472)))) (dynLambda!12415 order!15679 lambda!93374))))

(declare-fun order!15681 () Int)

(declare-fun dynLambda!12416 (Int Int) Int)

(assert (=> b!2474633 (< (dynLambda!12416 order!15681 (toChars!6228 (transformation!4505 (h!34289 rules!4472)))) (dynLambda!12415 order!15679 lambda!93374))))

(assert (=> d!711934 true))

(declare-fun lt!883789 () Bool)

(declare-fun forall!5917 (List!28989 Int) Bool)

(assert (=> d!711934 (= lt!883789 (forall!5917 lt!883768 lambda!93374))))

(declare-fun e!1569870 () Bool)

(assert (=> d!711934 (= lt!883789 e!1569870)))

(declare-fun res!1047719 () Bool)

(assert (=> d!711934 (=> res!1047719 e!1569870)))

(assert (=> d!711934 (= res!1047719 (not ((_ is Cons!28889) lt!883768)))))

(assert (=> d!711934 (not (isEmpty!16764 rules!4472))))

(assert (=> d!711934 (= (rulesProduceEachTokenIndividuallyList!1418 thiss!27932 rules!4472 lt!883768) lt!883789)))

(declare-fun b!2474621 () Bool)

(declare-fun e!1569871 () Bool)

(assert (=> b!2474621 (= e!1569870 e!1569871)))

(declare-fun res!1047718 () Bool)

(assert (=> b!2474621 (=> (not res!1047718) (not e!1569871))))

(assert (=> b!2474621 (= res!1047718 (rulesProduceIndividualToken!1830 thiss!27932 rules!4472 (h!34290 lt!883768)))))

(declare-fun b!2474622 () Bool)

(assert (=> b!2474622 (= e!1569871 (rulesProduceEachTokenIndividuallyList!1418 thiss!27932 rules!4472 (t!210460 lt!883768)))))

(assert (= (and d!711934 (not res!1047719)) b!2474621))

(assert (= (and b!2474621 res!1047718) b!2474622))

(declare-fun m!2842921 () Bool)

(assert (=> d!711934 m!2842921))

(assert (=> d!711934 m!2842771))

(declare-fun m!2842923 () Bool)

(assert (=> b!2474621 m!2842923))

(declare-fun m!2842925 () Bool)

(assert (=> b!2474622 m!2842925))

(assert (=> b!2474548 d!711934))

(declare-fun d!711954 () Bool)

(assert (=> d!711954 (= (tail!3938 l!6611) (t!210460 l!6611))))

(assert (=> b!2474548 d!711954))

(declare-fun d!711956 () Bool)

(declare-fun lt!883792 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3965 (List!28989) (InoxSet Token!8480))

(assert (=> d!711956 (= lt!883792 (select (content!3965 l!6611) t1!67))))

(declare-fun e!1569886 () Bool)

(assert (=> d!711956 (= lt!883792 e!1569886)))

(declare-fun res!1047724 () Bool)

(assert (=> d!711956 (=> (not res!1047724) (not e!1569886))))

(assert (=> d!711956 (= res!1047724 ((_ is Cons!28889) l!6611))))

(assert (=> d!711956 (= (contains!4931 l!6611 t1!67) lt!883792)))

(declare-fun b!2474640 () Bool)

(declare-fun e!1569885 () Bool)

(assert (=> b!2474640 (= e!1569886 e!1569885)))

(declare-fun res!1047725 () Bool)

(assert (=> b!2474640 (=> res!1047725 e!1569885)))

(assert (=> b!2474640 (= res!1047725 (= (h!34290 l!6611) t1!67))))

(declare-fun b!2474641 () Bool)

(assert (=> b!2474641 (= e!1569885 (contains!4931 (t!210460 l!6611) t1!67))))

(assert (= (and d!711956 res!1047724) b!2474640))

(assert (= (and b!2474640 (not res!1047725)) b!2474641))

(declare-fun m!2842927 () Bool)

(assert (=> d!711956 m!2842927))

(declare-fun m!2842929 () Bool)

(assert (=> d!711956 m!2842929))

(declare-fun m!2842931 () Bool)

(assert (=> b!2474641 m!2842931))

(assert (=> b!2474569 d!711956))

(declare-fun d!711958 () Bool)

(declare-fun lt!883814 () Bool)

(declare-fun e!1569902 () Bool)

(assert (=> d!711958 (= lt!883814 e!1569902)))

(declare-fun res!1047757 () Bool)

(assert (=> d!711958 (=> (not res!1047757) (not e!1569902))))

(declare-datatypes ((IArray!18453 0))(
  ( (IArray!18454 (innerList!9284 List!28989)) )
))
(declare-datatypes ((Conc!9224 0))(
  ( (Node!9224 (left!22155 Conc!9224) (right!22485 Conc!9224) (csize!18678 Int) (cheight!9435 Int)) (Leaf!13784 (xs!12208 IArray!18453) (csize!18679 Int)) (Empty!9224) )
))
(declare-datatypes ((BalanceConc!18062 0))(
  ( (BalanceConc!18063 (c!393983 Conc!9224)) )
))
(declare-fun list!11154 (BalanceConc!18062) List!28989)

(declare-datatypes ((tuple2!28252 0))(
  ( (tuple2!28253 (_1!16667 BalanceConc!18062) (_2!16667 BalanceConc!18060)) )
))
(declare-fun lex!1864 (LexerInterface!4102 List!28988 BalanceConc!18060) tuple2!28252)

(declare-fun print!1586 (LexerInterface!4102 BalanceConc!18062) BalanceConc!18060)

(declare-fun singletonSeq!1999 (Token!8480) BalanceConc!18062)

(assert (=> d!711958 (= res!1047757 (= (list!11154 (_1!16667 (lex!1864 thiss!27932 rules!4472 (print!1586 thiss!27932 (singletonSeq!1999 t2!67))))) (list!11154 (singletonSeq!1999 t2!67))))))

(declare-fun e!1569903 () Bool)

(assert (=> d!711958 (= lt!883814 e!1569903)))

(declare-fun res!1047758 () Bool)

(assert (=> d!711958 (=> (not res!1047758) (not e!1569903))))

(declare-fun lt!883813 () tuple2!28252)

(declare-fun size!22479 (BalanceConc!18062) Int)

(assert (=> d!711958 (= res!1047758 (= (size!22479 (_1!16667 lt!883813)) 1))))

(assert (=> d!711958 (= lt!883813 (lex!1864 thiss!27932 rules!4472 (print!1586 thiss!27932 (singletonSeq!1999 t2!67))))))

(assert (=> d!711958 (not (isEmpty!16764 rules!4472))))

(assert (=> d!711958 (= (rulesProduceIndividualToken!1830 thiss!27932 rules!4472 t2!67) lt!883814)))

(declare-fun b!2474675 () Bool)

(declare-fun res!1047759 () Bool)

(assert (=> b!2474675 (=> (not res!1047759) (not e!1569903))))

(declare-fun apply!6815 (BalanceConc!18062 Int) Token!8480)

(assert (=> b!2474675 (= res!1047759 (= (apply!6815 (_1!16667 lt!883813) 0) t2!67))))

(declare-fun b!2474676 () Bool)

(declare-fun isEmpty!16765 (BalanceConc!18060) Bool)

(assert (=> b!2474676 (= e!1569903 (isEmpty!16765 (_2!16667 lt!883813)))))

(declare-fun b!2474677 () Bool)

(assert (=> b!2474677 (= e!1569902 (isEmpty!16765 (_2!16667 (lex!1864 thiss!27932 rules!4472 (print!1586 thiss!27932 (singletonSeq!1999 t2!67))))))))

(assert (= (and d!711958 res!1047758) b!2474675))

(assert (= (and b!2474675 res!1047759) b!2474676))

(assert (= (and d!711958 res!1047757) b!2474677))

(declare-fun m!2842949 () Bool)

(assert (=> d!711958 m!2842949))

(declare-fun m!2842951 () Bool)

(assert (=> d!711958 m!2842951))

(declare-fun m!2842953 () Bool)

(assert (=> d!711958 m!2842953))

(assert (=> d!711958 m!2842771))

(declare-fun m!2842955 () Bool)

(assert (=> d!711958 m!2842955))

(declare-fun m!2842957 () Bool)

(assert (=> d!711958 m!2842957))

(declare-fun m!2842959 () Bool)

(assert (=> d!711958 m!2842959))

(assert (=> d!711958 m!2842955))

(assert (=> d!711958 m!2842955))

(assert (=> d!711958 m!2842949))

(declare-fun m!2842961 () Bool)

(assert (=> b!2474675 m!2842961))

(declare-fun m!2842963 () Bool)

(assert (=> b!2474676 m!2842963))

(assert (=> b!2474677 m!2842955))

(assert (=> b!2474677 m!2842955))

(assert (=> b!2474677 m!2842949))

(assert (=> b!2474677 m!2842949))

(assert (=> b!2474677 m!2842951))

(declare-fun m!2842965 () Bool)

(assert (=> b!2474677 m!2842965))

(assert (=> b!2474569 d!711958))

(declare-fun d!711968 () Bool)

(assert (=> d!711968 (rulesProduceIndividualToken!1830 thiss!27932 rules!4472 t1!67)))

(declare-fun lt!883819 () Unit!42252)

(declare-fun choose!14596 (LexerInterface!4102 List!28988 List!28989 Token!8480) Unit!42252)

(assert (=> d!711968 (= lt!883819 (choose!14596 thiss!27932 rules!4472 lt!883768 t1!67))))

(assert (=> d!711968 (not (isEmpty!16764 rules!4472))))

(assert (=> d!711968 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!691 thiss!27932 rules!4472 lt!883768 t1!67) lt!883819)))

(declare-fun bs!466988 () Bool)

(assert (= bs!466988 d!711968))

(assert (=> bs!466988 m!2842783))

(declare-fun m!2842967 () Bool)

(assert (=> bs!466988 m!2842967))

(assert (=> bs!466988 m!2842771))

(assert (=> b!2474569 d!711968))

(declare-fun d!711970 () Bool)

(declare-fun lt!883821 () Bool)

(declare-fun e!1569908 () Bool)

(assert (=> d!711970 (= lt!883821 e!1569908)))

(declare-fun res!1047764 () Bool)

(assert (=> d!711970 (=> (not res!1047764) (not e!1569908))))

(assert (=> d!711970 (= res!1047764 (= (list!11154 (_1!16667 (lex!1864 thiss!27932 rules!4472 (print!1586 thiss!27932 (singletonSeq!1999 t1!67))))) (list!11154 (singletonSeq!1999 t1!67))))))

(declare-fun e!1569909 () Bool)

(assert (=> d!711970 (= lt!883821 e!1569909)))

(declare-fun res!1047765 () Bool)

(assert (=> d!711970 (=> (not res!1047765) (not e!1569909))))

(declare-fun lt!883820 () tuple2!28252)

(assert (=> d!711970 (= res!1047765 (= (size!22479 (_1!16667 lt!883820)) 1))))

(assert (=> d!711970 (= lt!883820 (lex!1864 thiss!27932 rules!4472 (print!1586 thiss!27932 (singletonSeq!1999 t1!67))))))

(assert (=> d!711970 (not (isEmpty!16764 rules!4472))))

(assert (=> d!711970 (= (rulesProduceIndividualToken!1830 thiss!27932 rules!4472 t1!67) lt!883821)))

(declare-fun b!2474682 () Bool)

(declare-fun res!1047766 () Bool)

(assert (=> b!2474682 (=> (not res!1047766) (not e!1569909))))

(assert (=> b!2474682 (= res!1047766 (= (apply!6815 (_1!16667 lt!883820) 0) t1!67))))

(declare-fun b!2474683 () Bool)

(assert (=> b!2474683 (= e!1569909 (isEmpty!16765 (_2!16667 lt!883820)))))

(declare-fun b!2474684 () Bool)

(assert (=> b!2474684 (= e!1569908 (isEmpty!16765 (_2!16667 (lex!1864 thiss!27932 rules!4472 (print!1586 thiss!27932 (singletonSeq!1999 t1!67))))))))

(assert (= (and d!711970 res!1047765) b!2474682))

(assert (= (and b!2474682 res!1047766) b!2474683))

(assert (= (and d!711970 res!1047764) b!2474684))

(declare-fun m!2842969 () Bool)

(assert (=> d!711970 m!2842969))

(declare-fun m!2842971 () Bool)

(assert (=> d!711970 m!2842971))

(declare-fun m!2842973 () Bool)

(assert (=> d!711970 m!2842973))

(assert (=> d!711970 m!2842771))

(declare-fun m!2842975 () Bool)

(assert (=> d!711970 m!2842975))

(declare-fun m!2842977 () Bool)

(assert (=> d!711970 m!2842977))

(declare-fun m!2842979 () Bool)

(assert (=> d!711970 m!2842979))

(assert (=> d!711970 m!2842975))

(assert (=> d!711970 m!2842975))

(assert (=> d!711970 m!2842969))

(declare-fun m!2842981 () Bool)

(assert (=> b!2474682 m!2842981))

(declare-fun m!2842983 () Bool)

(assert (=> b!2474683 m!2842983))

(assert (=> b!2474684 m!2842975))

(assert (=> b!2474684 m!2842975))

(assert (=> b!2474684 m!2842969))

(assert (=> b!2474684 m!2842969))

(assert (=> b!2474684 m!2842971))

(declare-fun m!2842985 () Bool)

(assert (=> b!2474684 m!2842985))

(assert (=> b!2474569 d!711970))

(declare-fun b!2474699 () Bool)

(declare-fun res!1047781 () Bool)

(declare-fun e!1569915 () Bool)

(assert (=> b!2474699 (=> (not res!1047781) (not e!1569915))))

(assert (=> b!2474699 (= res!1047781 (contains!4931 lt!883768 t1!67))))

(declare-fun b!2474700 () Bool)

(declare-fun res!1047784 () Bool)

(declare-fun e!1569914 () Bool)

(assert (=> b!2474700 (=> (not res!1047784) (not e!1569914))))

(assert (=> b!2474700 (= res!1047784 (rulesInvariant!3602 thiss!27932 rules!4472))))

(declare-fun b!2474701 () Bool)

(declare-fun res!1047785 () Bool)

(assert (=> b!2474701 (=> (not res!1047785) (not e!1569915))))

(assert (=> b!2474701 (= res!1047785 (rulesProduceEachTokenIndividuallyList!1418 thiss!27932 rules!4472 lt!883768))))

(declare-fun d!711972 () Bool)

(assert (=> d!711972 e!1569915))

(declare-fun res!1047782 () Bool)

(assert (=> d!711972 (=> (not res!1047782) (not e!1569915))))

(assert (=> d!711972 (= res!1047782 ((_ is Lexer!4100) thiss!27932))))

(declare-fun lt!883836 () Unit!42252)

(declare-fun choose!14597 (LexerInterface!4102 List!28989 List!28988 Token!8480 Token!8480 Int) Unit!42252)

(assert (=> d!711972 (= lt!883836 (choose!14597 thiss!27932 lt!883768 rules!4472 t1!67 t2!67 (- i!1803 1)))))

(assert (=> d!711972 (not (isEmpty!16764 rules!4472))))

(assert (=> d!711972 (= (tokensListTwoByTwoPredicateInstantiateSeparableTokens!12 thiss!27932 lt!883768 rules!4472 t1!67 t2!67 (- i!1803 1)) lt!883836)))

(declare-fun b!2474702 () Bool)

(declare-fun res!1047786 () Bool)

(assert (=> b!2474702 (=> (not res!1047786) (not e!1569915))))

(assert (=> b!2474702 (= res!1047786 (rulesInvariant!3602 thiss!27932 rules!4472))))

(declare-fun b!2474703 () Bool)

(declare-fun res!1047783 () Bool)

(assert (=> b!2474703 (=> (not res!1047783) (not e!1569914))))

(assert (=> b!2474703 (= res!1047783 (contains!4931 lt!883768 t2!67))))

(declare-fun b!2474704 () Bool)

(assert (=> b!2474704 (= e!1569915 (separableTokensPredicate!877 thiss!27932 t1!67 t2!67 rules!4472))))

(declare-fun lt!883834 () Unit!42252)

(declare-fun lt!883832 () Unit!42252)

(assert (=> b!2474704 (= lt!883834 lt!883832)))

(assert (=> b!2474704 (rulesProduceIndividualToken!1830 thiss!27932 rules!4472 t2!67)))

(assert (=> b!2474704 (= lt!883832 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!691 thiss!27932 rules!4472 lt!883768 t2!67))))

(assert (=> b!2474704 e!1569914))

(declare-fun res!1047787 () Bool)

(assert (=> b!2474704 (=> (not res!1047787) (not e!1569914))))

(assert (=> b!2474704 (= res!1047787 ((_ is Lexer!4100) thiss!27932))))

(declare-fun lt!883833 () Unit!42252)

(declare-fun lt!883835 () Unit!42252)

(assert (=> b!2474704 (= lt!883833 lt!883835)))

(assert (=> b!2474704 (rulesProduceIndividualToken!1830 thiss!27932 rules!4472 t1!67)))

(assert (=> b!2474704 (= lt!883835 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!691 thiss!27932 rules!4472 lt!883768 t1!67))))

(declare-fun b!2474705 () Bool)

(assert (=> b!2474705 (= e!1569914 (rulesProduceEachTokenIndividuallyList!1418 thiss!27932 rules!4472 lt!883768))))

(assert (= (and d!711972 res!1047782) b!2474702))

(assert (= (and b!2474702 res!1047786) b!2474699))

(assert (= (and b!2474699 res!1047781) b!2474701))

(assert (= (and b!2474701 res!1047785) b!2474704))

(assert (= (and b!2474704 res!1047787) b!2474700))

(assert (= (and b!2474700 res!1047784) b!2474703))

(assert (= (and b!2474703 res!1047783) b!2474705))

(assert (=> b!2474705 m!2842811))

(assert (=> b!2474700 m!2842789))

(assert (=> b!2474704 m!2842781))

(assert (=> b!2474704 m!2842783))

(assert (=> b!2474704 m!2842827))

(assert (=> b!2474704 m!2842777))

(assert (=> b!2474704 m!2842785))

(declare-fun m!2842987 () Bool)

(assert (=> d!711972 m!2842987))

(assert (=> d!711972 m!2842771))

(assert (=> b!2474701 m!2842811))

(declare-fun m!2842989 () Bool)

(assert (=> b!2474699 m!2842989))

(declare-fun m!2842991 () Bool)

(assert (=> b!2474703 m!2842991))

(assert (=> b!2474702 m!2842789))

(assert (=> b!2474569 d!711972))

(declare-fun d!711974 () Bool)

(assert (=> d!711974 (rulesProduceIndividualToken!1830 thiss!27932 rules!4472 t2!67)))

(declare-fun lt!883837 () Unit!42252)

(assert (=> d!711974 (= lt!883837 (choose!14596 thiss!27932 rules!4472 lt!883768 t2!67))))

(assert (=> d!711974 (not (isEmpty!16764 rules!4472))))

(assert (=> d!711974 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!691 thiss!27932 rules!4472 lt!883768 t2!67) lt!883837)))

(declare-fun bs!466989 () Bool)

(assert (= bs!466989 d!711974))

(assert (=> bs!466989 m!2842781))

(declare-fun m!2842993 () Bool)

(assert (=> bs!466989 m!2842993))

(assert (=> bs!466989 m!2842771))

(assert (=> b!2474569 d!711974))

(declare-fun d!711976 () Bool)

(declare-fun lt!883840 () Int)

(assert (=> d!711976 (>= lt!883840 0)))

(declare-fun e!1569918 () Int)

(assert (=> d!711976 (= lt!883840 e!1569918)))

(declare-fun c!393950 () Bool)

(assert (=> d!711976 (= c!393950 ((_ is Nil!28889) lt!883768))))

(assert (=> d!711976 (= (size!22478 lt!883768) lt!883840)))

(declare-fun b!2474710 () Bool)

(assert (=> b!2474710 (= e!1569918 0)))

(declare-fun b!2474711 () Bool)

(assert (=> b!2474711 (= e!1569918 (+ 1 (size!22478 (t!210460 lt!883768))))))

(assert (= (and d!711976 c!393950) b!2474710))

(assert (= (and d!711976 (not c!393950)) b!2474711))

(declare-fun m!2842995 () Bool)

(assert (=> b!2474711 m!2842995))

(assert (=> b!2474547 d!711976))

(declare-fun b!2474722 () Bool)

(declare-fun res!1047790 () Bool)

(declare-fun e!1569925 () Bool)

(assert (=> b!2474722 (=> res!1047790 e!1569925)))

(assert (=> b!2474722 (= res!1047790 (not ((_ is IntegerValue!14075) (value!143798 (h!34290 l!6611)))))))

(declare-fun e!1569926 () Bool)

(assert (=> b!2474722 (= e!1569926 e!1569925)))

(declare-fun d!711978 () Bool)

(declare-fun c!393956 () Bool)

(assert (=> d!711978 (= c!393956 ((_ is IntegerValue!14073) (value!143798 (h!34290 l!6611))))))

(declare-fun e!1569927 () Bool)

(assert (=> d!711978 (= (inv!21 (value!143798 (h!34290 l!6611))) e!1569927)))

(declare-fun b!2474723 () Bool)

(assert (=> b!2474723 (= e!1569927 e!1569926)))

(declare-fun c!393955 () Bool)

(assert (=> b!2474723 (= c!393955 ((_ is IntegerValue!14074) (value!143798 (h!34290 l!6611))))))

(declare-fun b!2474724 () Bool)

(declare-fun inv!17 (TokenValue!4691) Bool)

(assert (=> b!2474724 (= e!1569926 (inv!17 (value!143798 (h!34290 l!6611))))))

(declare-fun b!2474725 () Bool)

(declare-fun inv!15 (TokenValue!4691) Bool)

(assert (=> b!2474725 (= e!1569925 (inv!15 (value!143798 (h!34290 l!6611))))))

(declare-fun b!2474726 () Bool)

(declare-fun inv!16 (TokenValue!4691) Bool)

(assert (=> b!2474726 (= e!1569927 (inv!16 (value!143798 (h!34290 l!6611))))))

(assert (= (and d!711978 c!393956) b!2474726))

(assert (= (and d!711978 (not c!393956)) b!2474723))

(assert (= (and b!2474723 c!393955) b!2474724))

(assert (= (and b!2474723 (not c!393955)) b!2474722))

(assert (= (and b!2474722 (not res!1047790)) b!2474725))

(declare-fun m!2842997 () Bool)

(assert (=> b!2474724 m!2842997))

(declare-fun m!2842999 () Bool)

(assert (=> b!2474725 m!2842999))

(declare-fun m!2843001 () Bool)

(assert (=> b!2474726 m!2843001))

(assert (=> b!2474568 d!711978))

(declare-fun d!711980 () Bool)

(declare-fun lt!883843 () Token!8480)

(assert (=> d!711980 (contains!4931 l!6611 lt!883843)))

(declare-fun e!1569932 () Token!8480)

(assert (=> d!711980 (= lt!883843 e!1569932)))

(declare-fun c!393959 () Bool)

(assert (=> d!711980 (= c!393959 (= i!1803 0))))

(declare-fun e!1569933 () Bool)

(assert (=> d!711980 e!1569933))

(declare-fun res!1047793 () Bool)

(assert (=> d!711980 (=> (not res!1047793) (not e!1569933))))

(assert (=> d!711980 (= res!1047793 (<= 0 i!1803))))

(assert (=> d!711980 (= (apply!6814 l!6611 i!1803) lt!883843)))

(declare-fun b!2474733 () Bool)

(assert (=> b!2474733 (= e!1569933 (< i!1803 (size!22478 l!6611)))))

(declare-fun b!2474734 () Bool)

(declare-fun head!5653 (List!28989) Token!8480)

(assert (=> b!2474734 (= e!1569932 (head!5653 l!6611))))

(declare-fun b!2474735 () Bool)

(assert (=> b!2474735 (= e!1569932 (apply!6814 (tail!3938 l!6611) (- i!1803 1)))))

(assert (= (and d!711980 res!1047793) b!2474733))

(assert (= (and d!711980 c!393959) b!2474734))

(assert (= (and d!711980 (not c!393959)) b!2474735))

(declare-fun m!2843003 () Bool)

(assert (=> d!711980 m!2843003))

(assert (=> b!2474733 m!2842837))

(declare-fun m!2843005 () Bool)

(assert (=> b!2474734 m!2843005))

(assert (=> b!2474735 m!2842813))

(assert (=> b!2474735 m!2842813))

(declare-fun m!2843007 () Bool)

(assert (=> b!2474735 m!2843007))

(assert (=> b!2474557 d!711980))

(declare-fun d!711982 () Bool)

(declare-fun res!1047804 () Bool)

(declare-fun e!1569960 () Bool)

(assert (=> d!711982 (=> res!1047804 e!1569960)))

(assert (=> d!711982 (= res!1047804 (or (not ((_ is Cons!28889) lt!883768)) (not ((_ is Cons!28889) (t!210460 lt!883768)))))))

(assert (=> d!711982 (= (tokensListTwoByTwoPredicateSeparableList!641 thiss!27932 lt!883768 rules!4472) e!1569960)))

(declare-fun b!2474770 () Bool)

(declare-fun e!1569961 () Bool)

(assert (=> b!2474770 (= e!1569960 e!1569961)))

(declare-fun res!1047805 () Bool)

(assert (=> b!2474770 (=> (not res!1047805) (not e!1569961))))

(assert (=> b!2474770 (= res!1047805 (separableTokensPredicate!877 thiss!27932 (h!34290 lt!883768) (h!34290 (t!210460 lt!883768)) rules!4472))))

(declare-fun lt!883866 () Unit!42252)

(declare-fun Unit!42254 () Unit!42252)

(assert (=> b!2474770 (= lt!883866 Unit!42254)))

(declare-fun size!22481 (BalanceConc!18060) Int)

(declare-fun charsOf!2835 (Token!8480) BalanceConc!18060)

(assert (=> b!2474770 (> (size!22481 (charsOf!2835 (h!34290 (t!210460 lt!883768)))) 0)))

(declare-fun lt!883868 () Unit!42252)

(declare-fun Unit!42255 () Unit!42252)

(assert (=> b!2474770 (= lt!883868 Unit!42255)))

(assert (=> b!2474770 (rulesProduceIndividualToken!1830 thiss!27932 rules!4472 (h!34290 (t!210460 lt!883768)))))

(declare-fun lt!883864 () Unit!42252)

(declare-fun Unit!42256 () Unit!42252)

(assert (=> b!2474770 (= lt!883864 Unit!42256)))

(assert (=> b!2474770 (rulesProduceIndividualToken!1830 thiss!27932 rules!4472 (h!34290 lt!883768))))

(declare-fun lt!883870 () Unit!42252)

(declare-fun lt!883867 () Unit!42252)

(assert (=> b!2474770 (= lt!883870 lt!883867)))

(assert (=> b!2474770 (rulesProduceIndividualToken!1830 thiss!27932 rules!4472 (h!34290 (t!210460 lt!883768)))))

(assert (=> b!2474770 (= lt!883867 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!691 thiss!27932 rules!4472 lt!883768 (h!34290 (t!210460 lt!883768))))))

(declare-fun lt!883865 () Unit!42252)

(declare-fun lt!883869 () Unit!42252)

(assert (=> b!2474770 (= lt!883865 lt!883869)))

(assert (=> b!2474770 (rulesProduceIndividualToken!1830 thiss!27932 rules!4472 (h!34290 lt!883768))))

(assert (=> b!2474770 (= lt!883869 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!691 thiss!27932 rules!4472 lt!883768 (h!34290 lt!883768)))))

(declare-fun b!2474771 () Bool)

(assert (=> b!2474771 (= e!1569961 (tokensListTwoByTwoPredicateSeparableList!641 thiss!27932 (Cons!28889 (h!34290 (t!210460 lt!883768)) (t!210460 (t!210460 lt!883768))) rules!4472))))

(assert (= (and d!711982 (not res!1047804)) b!2474770))

(assert (= (and b!2474770 res!1047805) b!2474771))

(declare-fun m!2843031 () Bool)

(assert (=> b!2474770 m!2843031))

(declare-fun m!2843033 () Bool)

(assert (=> b!2474770 m!2843033))

(declare-fun m!2843035 () Bool)

(assert (=> b!2474770 m!2843035))

(declare-fun m!2843037 () Bool)

(assert (=> b!2474770 m!2843037))

(assert (=> b!2474770 m!2842923))

(declare-fun m!2843039 () Bool)

(assert (=> b!2474770 m!2843039))

(assert (=> b!2474770 m!2843033))

(declare-fun m!2843041 () Bool)

(assert (=> b!2474770 m!2843041))

(declare-fun m!2843043 () Bool)

(assert (=> b!2474771 m!2843043))

(assert (=> b!2474562 d!711982))

(declare-fun d!711998 () Bool)

(assert (=> d!711998 (= (inv!38976 (tag!4995 (rule!6863 t2!67))) (= (mod (str.len (value!143797 (tag!4995 (rule!6863 t2!67)))) 2) 0))))

(assert (=> b!2474551 d!711998))

(declare-fun d!712000 () Bool)

(declare-fun res!1047806 () Bool)

(declare-fun e!1569962 () Bool)

(assert (=> d!712000 (=> (not res!1047806) (not e!1569962))))

(assert (=> d!712000 (= res!1047806 (semiInverseModEq!1857 (toChars!6228 (transformation!4505 (rule!6863 t2!67))) (toValue!6369 (transformation!4505 (rule!6863 t2!67)))))))

(assert (=> d!712000 (= (inv!38979 (transformation!4505 (rule!6863 t2!67))) e!1569962)))

(declare-fun b!2474772 () Bool)

(assert (=> b!2474772 (= e!1569962 (equivClasses!1768 (toChars!6228 (transformation!4505 (rule!6863 t2!67))) (toValue!6369 (transformation!4505 (rule!6863 t2!67)))))))

(assert (= (and d!712000 res!1047806) b!2474772))

(declare-fun m!2843045 () Bool)

(assert (=> d!712000 m!2843045))

(declare-fun m!2843047 () Bool)

(assert (=> b!2474772 m!2843047))

(assert (=> b!2474551 d!712000))

(declare-fun d!712002 () Bool)

(declare-fun res!1047809 () Bool)

(declare-fun e!1569965 () Bool)

(assert (=> d!712002 (=> (not res!1047809) (not e!1569965))))

(declare-fun rulesValid!1680 (LexerInterface!4102 List!28988) Bool)

(assert (=> d!712002 (= res!1047809 (rulesValid!1680 thiss!27932 rules!4472))))

(assert (=> d!712002 (= (rulesInvariant!3602 thiss!27932 rules!4472) e!1569965)))

(declare-fun b!2474775 () Bool)

(declare-datatypes ((List!28990 0))(
  ( (Nil!28890) (Cons!28890 (h!34291 String!31751) (t!210543 List!28990)) )
))
(declare-fun noDuplicateTag!1678 (LexerInterface!4102 List!28988 List!28990) Bool)

(assert (=> b!2474775 (= e!1569965 (noDuplicateTag!1678 thiss!27932 rules!4472 Nil!28890))))

(assert (= (and d!712002 res!1047809) b!2474775))

(declare-fun m!2843049 () Bool)

(assert (=> d!712002 m!2843049))

(declare-fun m!2843051 () Bool)

(assert (=> b!2474775 m!2843051))

(assert (=> b!2474572 d!712002))

(declare-fun d!712004 () Bool)

(declare-fun lt!883871 () Token!8480)

(assert (=> d!712004 (contains!4931 lt!883768 lt!883871)))

(declare-fun e!1569966 () Token!8480)

(assert (=> d!712004 (= lt!883871 e!1569966)))

(declare-fun c!393964 () Bool)

(assert (=> d!712004 (= c!393964 (= (- i!1803 1) 0))))

(declare-fun e!1569967 () Bool)

(assert (=> d!712004 e!1569967))

(declare-fun res!1047810 () Bool)

(assert (=> d!712004 (=> (not res!1047810) (not e!1569967))))

(assert (=> d!712004 (= res!1047810 (<= 0 (- i!1803 1)))))

(assert (=> d!712004 (= (apply!6814 lt!883768 (- i!1803 1)) lt!883871)))

(declare-fun b!2474776 () Bool)

(assert (=> b!2474776 (= e!1569967 (< (- i!1803 1) (size!22478 lt!883768)))))

(declare-fun b!2474777 () Bool)

(assert (=> b!2474777 (= e!1569966 (head!5653 lt!883768))))

(declare-fun b!2474778 () Bool)

(assert (=> b!2474778 (= e!1569966 (apply!6814 (tail!3938 lt!883768) (- (- i!1803 1) 1)))))

(assert (= (and d!712004 res!1047810) b!2474776))

(assert (= (and d!712004 c!393964) b!2474777))

(assert (= (and d!712004 (not c!393964)) b!2474778))

(declare-fun m!2843053 () Bool)

(assert (=> d!712004 m!2843053))

(assert (=> b!2474776 m!2842803))

(declare-fun m!2843055 () Bool)

(assert (=> b!2474777 m!2843055))

(declare-fun m!2843057 () Bool)

(assert (=> b!2474778 m!2843057))

(assert (=> b!2474778 m!2843057))

(declare-fun m!2843059 () Bool)

(assert (=> b!2474778 m!2843059))

(assert (=> b!2474561 d!712004))

(declare-fun d!712006 () Bool)

(declare-fun prefixMatchZipperSequence!728 (Regex!7293 BalanceConc!18060) Bool)

(declare-fun rulesRegex!984 (LexerInterface!4102 List!28988) Regex!7293)

(declare-fun ++!7148 (BalanceConc!18060 BalanceConc!18060) BalanceConc!18060)

(declare-fun singletonSeq!2001 (C!14744) BalanceConc!18060)

(declare-fun apply!6817 (BalanceConc!18060 Int) C!14744)

(assert (=> d!712006 (= (separableTokensPredicate!877 thiss!27932 t1!67 t2!67 rules!4472) (not (prefixMatchZipperSequence!728 (rulesRegex!984 thiss!27932 rules!4472) (++!7148 (charsOf!2835 t1!67) (singletonSeq!2001 (apply!6817 (charsOf!2835 t2!67) 0))))))))

(declare-fun bs!466991 () Bool)

(assert (= bs!466991 d!712006))

(declare-fun m!2843061 () Bool)

(assert (=> bs!466991 m!2843061))

(declare-fun m!2843063 () Bool)

(assert (=> bs!466991 m!2843063))

(declare-fun m!2843065 () Bool)

(assert (=> bs!466991 m!2843065))

(assert (=> bs!466991 m!2843061))

(declare-fun m!2843067 () Bool)

(assert (=> bs!466991 m!2843067))

(declare-fun m!2843069 () Bool)

(assert (=> bs!466991 m!2843069))

(declare-fun m!2843071 () Bool)

(assert (=> bs!466991 m!2843071))

(assert (=> bs!466991 m!2843063))

(assert (=> bs!466991 m!2843069))

(assert (=> bs!466991 m!2843065))

(declare-fun m!2843073 () Bool)

(assert (=> bs!466991 m!2843073))

(assert (=> bs!466991 m!2843067))

(assert (=> bs!466991 m!2843071))

(assert (=> b!2474571 d!712006))

(declare-fun d!712008 () Bool)

(declare-fun res!1047815 () Bool)

(declare-fun e!1569970 () Bool)

(assert (=> d!712008 (=> (not res!1047815) (not e!1569970))))

(declare-fun isEmpty!16768 (List!28987) Bool)

(assert (=> d!712008 (= res!1047815 (not (isEmpty!16768 (originalCharacters!5271 t2!67))))))

(assert (=> d!712008 (= (inv!38980 t2!67) e!1569970)))

(declare-fun b!2474783 () Bool)

(declare-fun res!1047816 () Bool)

(assert (=> b!2474783 (=> (not res!1047816) (not e!1569970))))

(declare-fun list!11157 (BalanceConc!18060) List!28987)

(declare-fun dynLambda!12418 (Int TokenValue!4691) BalanceConc!18060)

(assert (=> b!2474783 (= res!1047816 (= (originalCharacters!5271 t2!67) (list!11157 (dynLambda!12418 (toChars!6228 (transformation!4505 (rule!6863 t2!67))) (value!143798 t2!67)))))))

(declare-fun b!2474784 () Bool)

(declare-fun size!22483 (List!28987) Int)

(assert (=> b!2474784 (= e!1569970 (= (size!22477 t2!67) (size!22483 (originalCharacters!5271 t2!67))))))

(assert (= (and d!712008 res!1047815) b!2474783))

(assert (= (and b!2474783 res!1047816) b!2474784))

(declare-fun b_lambda!75939 () Bool)

(assert (=> (not b_lambda!75939) (not b!2474783)))

(declare-fun t!210488 () Bool)

(declare-fun tb!140225 () Bool)

(assert (=> (and b!2474570 (= (toChars!6228 (transformation!4505 (rule!6863 t1!67))) (toChars!6228 (transformation!4505 (rule!6863 t2!67)))) t!210488) tb!140225))

(declare-fun b!2474789 () Bool)

(declare-fun e!1569973 () Bool)

(declare-fun tp!791252 () Bool)

(declare-fun inv!38983 (Conc!9223) Bool)

(assert (=> b!2474789 (= e!1569973 (and (inv!38983 (c!393942 (dynLambda!12418 (toChars!6228 (transformation!4505 (rule!6863 t2!67))) (value!143798 t2!67)))) tp!791252))))

(declare-fun result!173058 () Bool)

(declare-fun inv!38984 (BalanceConc!18060) Bool)

(assert (=> tb!140225 (= result!173058 (and (inv!38984 (dynLambda!12418 (toChars!6228 (transformation!4505 (rule!6863 t2!67))) (value!143798 t2!67))) e!1569973))))

(assert (= tb!140225 b!2474789))

(declare-fun m!2843075 () Bool)

(assert (=> b!2474789 m!2843075))

(declare-fun m!2843077 () Bool)

(assert (=> tb!140225 m!2843077))

(assert (=> b!2474783 t!210488))

(declare-fun b_and!187893 () Bool)

(assert (= b_and!187863 (and (=> t!210488 result!173058) b_and!187893)))

(declare-fun t!210490 () Bool)

(declare-fun tb!140227 () Bool)

(assert (=> (and b!2474558 (= (toChars!6228 (transformation!4505 (rule!6863 t2!67))) (toChars!6228 (transformation!4505 (rule!6863 t2!67)))) t!210490) tb!140227))

(declare-fun result!173062 () Bool)

(assert (= result!173062 result!173058))

(assert (=> b!2474783 t!210490))

(declare-fun b_and!187895 () Bool)

(assert (= b_and!187867 (and (=> t!210490 result!173062) b_and!187895)))

(declare-fun tb!140229 () Bool)

(declare-fun t!210492 () Bool)

(assert (=> (and b!2474553 (= (toChars!6228 (transformation!4505 (rule!6863 (h!34290 l!6611)))) (toChars!6228 (transformation!4505 (rule!6863 t2!67)))) t!210492) tb!140229))

(declare-fun result!173064 () Bool)

(assert (= result!173064 result!173058))

(assert (=> b!2474783 t!210492))

(declare-fun b_and!187897 () Bool)

(assert (= b_and!187871 (and (=> t!210492 result!173064) b_and!187897)))

(declare-fun tb!140231 () Bool)

(declare-fun t!210494 () Bool)

(assert (=> (and b!2474560 (= (toChars!6228 (transformation!4505 (h!34289 rules!4472))) (toChars!6228 (transformation!4505 (rule!6863 t2!67)))) t!210494) tb!140231))

(declare-fun result!173066 () Bool)

(assert (= result!173066 result!173058))

(assert (=> b!2474783 t!210494))

(declare-fun b_and!187899 () Bool)

(assert (= b_and!187875 (and (=> t!210494 result!173066) b_and!187899)))

(declare-fun m!2843079 () Bool)

(assert (=> d!712008 m!2843079))

(declare-fun m!2843081 () Bool)

(assert (=> b!2474783 m!2843081))

(assert (=> b!2474783 m!2843081))

(declare-fun m!2843083 () Bool)

(assert (=> b!2474783 m!2843083))

(declare-fun m!2843085 () Bool)

(assert (=> b!2474784 m!2843085))

(assert (=> start!241318 d!712008))

(declare-fun d!712010 () Bool)

(declare-fun res!1047817 () Bool)

(declare-fun e!1569974 () Bool)

(assert (=> d!712010 (=> (not res!1047817) (not e!1569974))))

(assert (=> d!712010 (= res!1047817 (not (isEmpty!16768 (originalCharacters!5271 t1!67))))))

(assert (=> d!712010 (= (inv!38980 t1!67) e!1569974)))

(declare-fun b!2474790 () Bool)

(declare-fun res!1047818 () Bool)

(assert (=> b!2474790 (=> (not res!1047818) (not e!1569974))))

(assert (=> b!2474790 (= res!1047818 (= (originalCharacters!5271 t1!67) (list!11157 (dynLambda!12418 (toChars!6228 (transformation!4505 (rule!6863 t1!67))) (value!143798 t1!67)))))))

(declare-fun b!2474791 () Bool)

(assert (=> b!2474791 (= e!1569974 (= (size!22477 t1!67) (size!22483 (originalCharacters!5271 t1!67))))))

(assert (= (and d!712010 res!1047817) b!2474790))

(assert (= (and b!2474790 res!1047818) b!2474791))

(declare-fun b_lambda!75941 () Bool)

(assert (=> (not b_lambda!75941) (not b!2474790)))

(declare-fun t!210496 () Bool)

(declare-fun tb!140233 () Bool)

(assert (=> (and b!2474570 (= (toChars!6228 (transformation!4505 (rule!6863 t1!67))) (toChars!6228 (transformation!4505 (rule!6863 t1!67)))) t!210496) tb!140233))

(declare-fun b!2474792 () Bool)

(declare-fun e!1569975 () Bool)

(declare-fun tp!791253 () Bool)

(assert (=> b!2474792 (= e!1569975 (and (inv!38983 (c!393942 (dynLambda!12418 (toChars!6228 (transformation!4505 (rule!6863 t1!67))) (value!143798 t1!67)))) tp!791253))))

(declare-fun result!173068 () Bool)

(assert (=> tb!140233 (= result!173068 (and (inv!38984 (dynLambda!12418 (toChars!6228 (transformation!4505 (rule!6863 t1!67))) (value!143798 t1!67))) e!1569975))))

(assert (= tb!140233 b!2474792))

(declare-fun m!2843087 () Bool)

(assert (=> b!2474792 m!2843087))

(declare-fun m!2843089 () Bool)

(assert (=> tb!140233 m!2843089))

(assert (=> b!2474790 t!210496))

(declare-fun b_and!187901 () Bool)

(assert (= b_and!187893 (and (=> t!210496 result!173068) b_and!187901)))

(declare-fun tb!140235 () Bool)

(declare-fun t!210498 () Bool)

(assert (=> (and b!2474558 (= (toChars!6228 (transformation!4505 (rule!6863 t2!67))) (toChars!6228 (transformation!4505 (rule!6863 t1!67)))) t!210498) tb!140235))

(declare-fun result!173070 () Bool)

(assert (= result!173070 result!173068))

(assert (=> b!2474790 t!210498))

(declare-fun b_and!187903 () Bool)

(assert (= b_and!187895 (and (=> t!210498 result!173070) b_and!187903)))

(declare-fun tb!140237 () Bool)

(declare-fun t!210500 () Bool)

(assert (=> (and b!2474553 (= (toChars!6228 (transformation!4505 (rule!6863 (h!34290 l!6611)))) (toChars!6228 (transformation!4505 (rule!6863 t1!67)))) t!210500) tb!140237))

(declare-fun result!173072 () Bool)

(assert (= result!173072 result!173068))

(assert (=> b!2474790 t!210500))

(declare-fun b_and!187905 () Bool)

(assert (= b_and!187897 (and (=> t!210500 result!173072) b_and!187905)))

(declare-fun tb!140239 () Bool)

(declare-fun t!210502 () Bool)

(assert (=> (and b!2474560 (= (toChars!6228 (transformation!4505 (h!34289 rules!4472))) (toChars!6228 (transformation!4505 (rule!6863 t1!67)))) t!210502) tb!140239))

(declare-fun result!173074 () Bool)

(assert (= result!173074 result!173068))

(assert (=> b!2474790 t!210502))

(declare-fun b_and!187907 () Bool)

(assert (= b_and!187899 (and (=> t!210502 result!173074) b_and!187907)))

(declare-fun m!2843091 () Bool)

(assert (=> d!712010 m!2843091))

(declare-fun m!2843093 () Bool)

(assert (=> b!2474790 m!2843093))

(assert (=> b!2474790 m!2843093))

(declare-fun m!2843095 () Bool)

(assert (=> b!2474790 m!2843095))

(declare-fun m!2843097 () Bool)

(assert (=> b!2474791 m!2843097))

(assert (=> start!241318 d!712010))

(declare-fun d!712012 () Bool)

(assert (=> d!712012 (= (inv!38976 (tag!4995 (h!34289 rules!4472))) (= (mod (str.len (value!143797 (tag!4995 (h!34289 rules!4472)))) 2) 0))))

(assert (=> b!2474554 d!712012))

(declare-fun d!712014 () Bool)

(declare-fun res!1047819 () Bool)

(declare-fun e!1569976 () Bool)

(assert (=> d!712014 (=> (not res!1047819) (not e!1569976))))

(assert (=> d!712014 (= res!1047819 (semiInverseModEq!1857 (toChars!6228 (transformation!4505 (h!34289 rules!4472))) (toValue!6369 (transformation!4505 (h!34289 rules!4472)))))))

(assert (=> d!712014 (= (inv!38979 (transformation!4505 (h!34289 rules!4472))) e!1569976)))

(declare-fun b!2474793 () Bool)

(assert (=> b!2474793 (= e!1569976 (equivClasses!1768 (toChars!6228 (transformation!4505 (h!34289 rules!4472))) (toValue!6369 (transformation!4505 (h!34289 rules!4472)))))))

(assert (= (and d!712014 res!1047819) b!2474793))

(declare-fun m!2843099 () Bool)

(assert (=> d!712014 m!2843099))

(declare-fun m!2843101 () Bool)

(assert (=> b!2474793 m!2843101))

(assert (=> b!2474554 d!712014))

(declare-fun b!2474794 () Bool)

(declare-fun res!1047822 () Bool)

(declare-fun e!1569979 () Bool)

(assert (=> b!2474794 (=> res!1047822 e!1569979)))

(assert (=> b!2474794 (= res!1047822 (not ((_ is IntegerValue!14075) (value!143798 t1!67))))))

(declare-fun e!1569980 () Bool)

(assert (=> b!2474794 (= e!1569980 e!1569979)))

(declare-fun d!712016 () Bool)

(declare-fun c!393966 () Bool)

(assert (=> d!712016 (= c!393966 ((_ is IntegerValue!14073) (value!143798 t1!67)))))

(declare-fun e!1569981 () Bool)

(assert (=> d!712016 (= (inv!21 (value!143798 t1!67)) e!1569981)))

(declare-fun b!2474795 () Bool)

(assert (=> b!2474795 (= e!1569981 e!1569980)))

(declare-fun c!393965 () Bool)

(assert (=> b!2474795 (= c!393965 ((_ is IntegerValue!14074) (value!143798 t1!67)))))

(declare-fun b!2474796 () Bool)

(assert (=> b!2474796 (= e!1569980 (inv!17 (value!143798 t1!67)))))

(declare-fun b!2474797 () Bool)

(assert (=> b!2474797 (= e!1569979 (inv!15 (value!143798 t1!67)))))

(declare-fun b!2474798 () Bool)

(assert (=> b!2474798 (= e!1569981 (inv!16 (value!143798 t1!67)))))

(assert (= (and d!712016 c!393966) b!2474798))

(assert (= (and d!712016 (not c!393966)) b!2474795))

(assert (= (and b!2474795 c!393965) b!2474796))

(assert (= (and b!2474795 (not c!393965)) b!2474794))

(assert (= (and b!2474794 (not res!1047822)) b!2474797))

(declare-fun m!2843103 () Bool)

(assert (=> b!2474796 m!2843103))

(declare-fun m!2843105 () Bool)

(assert (=> b!2474797 m!2843105))

(declare-fun m!2843107 () Bool)

(assert (=> b!2474798 m!2843107))

(assert (=> b!2474543 d!712016))

(declare-fun d!712018 () Bool)

(declare-fun lt!883884 () Token!8480)

(assert (=> d!712018 (contains!4931 l!6611 lt!883884)))

(declare-fun e!1569982 () Token!8480)

(assert (=> d!712018 (= lt!883884 e!1569982)))

(declare-fun c!393967 () Bool)

(assert (=> d!712018 (= c!393967 (= (+ 1 i!1803) 0))))

(declare-fun e!1569983 () Bool)

(assert (=> d!712018 e!1569983))

(declare-fun res!1047823 () Bool)

(assert (=> d!712018 (=> (not res!1047823) (not e!1569983))))

(assert (=> d!712018 (= res!1047823 (<= 0 (+ 1 i!1803)))))

(assert (=> d!712018 (= (apply!6814 l!6611 (+ 1 i!1803)) lt!883884)))

(declare-fun b!2474801 () Bool)

(assert (=> b!2474801 (= e!1569983 (< (+ 1 i!1803) (size!22478 l!6611)))))

(declare-fun b!2474802 () Bool)

(assert (=> b!2474802 (= e!1569982 (head!5653 l!6611))))

(declare-fun b!2474803 () Bool)

(assert (=> b!2474803 (= e!1569982 (apply!6814 (tail!3938 l!6611) (- (+ 1 i!1803) 1)))))

(assert (= (and d!712018 res!1047823) b!2474801))

(assert (= (and d!712018 c!393967) b!2474802))

(assert (= (and d!712018 (not c!393967)) b!2474803))

(declare-fun m!2843109 () Bool)

(assert (=> d!712018 m!2843109))

(assert (=> b!2474801 m!2842837))

(assert (=> b!2474802 m!2843005))

(assert (=> b!2474803 m!2842813))

(assert (=> b!2474803 m!2842813))

(declare-fun m!2843111 () Bool)

(assert (=> b!2474803 m!2843111))

(assert (=> b!2474564 d!712018))

(declare-fun bs!466992 () Bool)

(declare-fun d!712020 () Bool)

(assert (= bs!466992 (and d!712020 d!711934)))

(declare-fun lambda!93379 () Int)

(assert (=> bs!466992 (= lambda!93379 lambda!93374)))

(declare-fun b!2474810 () Bool)

(declare-fun e!1569990 () Bool)

(assert (=> b!2474810 (= e!1569990 true)))

(declare-fun b!2474809 () Bool)

(declare-fun e!1569989 () Bool)

(assert (=> b!2474809 (= e!1569989 e!1569990)))

(declare-fun b!2474808 () Bool)

(declare-fun e!1569988 () Bool)

(assert (=> b!2474808 (= e!1569988 e!1569989)))

(assert (=> d!712020 e!1569988))

(assert (= b!2474809 b!2474810))

(assert (= b!2474808 b!2474809))

(assert (= (and d!712020 ((_ is Cons!28888) rules!4472)) b!2474808))

(assert (=> b!2474810 (< (dynLambda!12414 order!15677 (toValue!6369 (transformation!4505 (h!34289 rules!4472)))) (dynLambda!12415 order!15679 lambda!93379))))

(assert (=> b!2474810 (< (dynLambda!12416 order!15681 (toChars!6228 (transformation!4505 (h!34289 rules!4472)))) (dynLambda!12415 order!15679 lambda!93379))))

(assert (=> d!712020 true))

(declare-fun lt!883887 () Bool)

(assert (=> d!712020 (= lt!883887 (forall!5917 l!6611 lambda!93379))))

(declare-fun e!1569986 () Bool)

(assert (=> d!712020 (= lt!883887 e!1569986)))

(declare-fun res!1047827 () Bool)

(assert (=> d!712020 (=> res!1047827 e!1569986)))

(assert (=> d!712020 (= res!1047827 (not ((_ is Cons!28889) l!6611)))))

(assert (=> d!712020 (not (isEmpty!16764 rules!4472))))

(assert (=> d!712020 (= (rulesProduceEachTokenIndividuallyList!1418 thiss!27932 rules!4472 l!6611) lt!883887)))

(declare-fun b!2474806 () Bool)

(declare-fun e!1569987 () Bool)

(assert (=> b!2474806 (= e!1569986 e!1569987)))

(declare-fun res!1047826 () Bool)

(assert (=> b!2474806 (=> (not res!1047826) (not e!1569987))))

(assert (=> b!2474806 (= res!1047826 (rulesProduceIndividualToken!1830 thiss!27932 rules!4472 (h!34290 l!6611)))))

(declare-fun b!2474807 () Bool)

(assert (=> b!2474807 (= e!1569987 (rulesProduceEachTokenIndividuallyList!1418 thiss!27932 rules!4472 (t!210460 l!6611)))))

(assert (= (and d!712020 (not res!1047827)) b!2474806))

(assert (= (and b!2474806 res!1047826) b!2474807))

(declare-fun m!2843113 () Bool)

(assert (=> d!712020 m!2843113))

(assert (=> d!712020 m!2842771))

(declare-fun m!2843115 () Bool)

(assert (=> b!2474806 m!2843115))

(declare-fun m!2843117 () Bool)

(assert (=> b!2474807 m!2843117))

(assert (=> b!2474546 d!712020))

(declare-fun d!712022 () Bool)

(declare-fun lt!883888 () Int)

(assert (=> d!712022 (>= lt!883888 0)))

(declare-fun e!1569991 () Int)

(assert (=> d!712022 (= lt!883888 e!1569991)))

(declare-fun c!393968 () Bool)

(assert (=> d!712022 (= c!393968 ((_ is Nil!28889) l!6611))))

(assert (=> d!712022 (= (size!22478 l!6611) lt!883888)))

(declare-fun b!2474811 () Bool)

(assert (=> b!2474811 (= e!1569991 0)))

(declare-fun b!2474812 () Bool)

(assert (=> b!2474812 (= e!1569991 (+ 1 (size!22478 (t!210460 l!6611))))))

(assert (= (and d!712022 c!393968) b!2474811))

(assert (= (and d!712022 (not c!393968)) b!2474812))

(declare-fun m!2843119 () Bool)

(assert (=> b!2474812 m!2843119))

(assert (=> b!2474567 d!712022))

(declare-fun d!712024 () Bool)

(declare-fun lt!883889 () Token!8480)

(assert (=> d!712024 (contains!4931 lt!883768 lt!883889)))

(declare-fun e!1569992 () Token!8480)

(assert (=> d!712024 (= lt!883889 e!1569992)))

(declare-fun c!393969 () Bool)

(assert (=> d!712024 (= c!393969 (= lt!883767 0))))

(declare-fun e!1569993 () Bool)

(assert (=> d!712024 e!1569993))

(declare-fun res!1047828 () Bool)

(assert (=> d!712024 (=> (not res!1047828) (not e!1569993))))

(assert (=> d!712024 (= res!1047828 (<= 0 lt!883767))))

(assert (=> d!712024 (= (apply!6814 lt!883768 lt!883767) lt!883889)))

(declare-fun b!2474813 () Bool)

(assert (=> b!2474813 (= e!1569993 (< lt!883767 (size!22478 lt!883768)))))

(declare-fun b!2474814 () Bool)

(assert (=> b!2474814 (= e!1569992 (head!5653 lt!883768))))

(declare-fun b!2474815 () Bool)

(assert (=> b!2474815 (= e!1569992 (apply!6814 (tail!3938 lt!883768) (- lt!883767 1)))))

(assert (= (and d!712024 res!1047828) b!2474813))

(assert (= (and d!712024 c!393969) b!2474814))

(assert (= (and d!712024 (not c!393969)) b!2474815))

(declare-fun m!2843121 () Bool)

(assert (=> d!712024 m!2843121))

(assert (=> b!2474813 m!2842803))

(assert (=> b!2474814 m!2843055))

(assert (=> b!2474815 m!2843057))

(assert (=> b!2474815 m!2843057))

(declare-fun m!2843123 () Bool)

(assert (=> b!2474815 m!2843123))

(assert (=> b!2474556 d!712024))

(declare-fun d!712026 () Bool)

(assert (=> d!712026 (= (isEmpty!16764 rules!4472) ((_ is Nil!28888) rules!4472))))

(assert (=> b!2474545 d!712026))

(declare-fun b!2474818 () Bool)

(declare-fun res!1047831 () Bool)

(declare-fun e!1569996 () Bool)

(assert (=> b!2474818 (=> res!1047831 e!1569996)))

(assert (=> b!2474818 (= res!1047831 (not ((_ is IntegerValue!14075) (value!143798 t2!67))))))

(declare-fun e!1569997 () Bool)

(assert (=> b!2474818 (= e!1569997 e!1569996)))

(declare-fun d!712028 () Bool)

(declare-fun c!393971 () Bool)

(assert (=> d!712028 (= c!393971 ((_ is IntegerValue!14073) (value!143798 t2!67)))))

(declare-fun e!1569998 () Bool)

(assert (=> d!712028 (= (inv!21 (value!143798 t2!67)) e!1569998)))

(declare-fun b!2474819 () Bool)

(assert (=> b!2474819 (= e!1569998 e!1569997)))

(declare-fun c!393970 () Bool)

(assert (=> b!2474819 (= c!393970 ((_ is IntegerValue!14074) (value!143798 t2!67)))))

(declare-fun b!2474820 () Bool)

(assert (=> b!2474820 (= e!1569997 (inv!17 (value!143798 t2!67)))))

(declare-fun b!2474821 () Bool)

(assert (=> b!2474821 (= e!1569996 (inv!15 (value!143798 t2!67)))))

(declare-fun b!2474822 () Bool)

(assert (=> b!2474822 (= e!1569998 (inv!16 (value!143798 t2!67)))))

(assert (= (and d!712028 c!393971) b!2474822))

(assert (= (and d!712028 (not c!393971)) b!2474819))

(assert (= (and b!2474819 c!393970) b!2474820))

(assert (= (and b!2474819 (not c!393970)) b!2474818))

(assert (= (and b!2474818 (not res!1047831)) b!2474821))

(declare-fun m!2843125 () Bool)

(assert (=> b!2474820 m!2843125))

(declare-fun m!2843127 () Bool)

(assert (=> b!2474821 m!2843127))

(declare-fun m!2843129 () Bool)

(assert (=> b!2474822 m!2843129))

(assert (=> b!2474566 d!712028))

(declare-fun d!712030 () Bool)

(assert (=> d!712030 (= (inv!38976 (tag!4995 (rule!6863 t1!67))) (= (mod (str.len (value!143797 (tag!4995 (rule!6863 t1!67)))) 2) 0))))

(assert (=> b!2474555 d!712030))

(declare-fun d!712032 () Bool)

(declare-fun res!1047832 () Bool)

(declare-fun e!1569999 () Bool)

(assert (=> d!712032 (=> (not res!1047832) (not e!1569999))))

(assert (=> d!712032 (= res!1047832 (semiInverseModEq!1857 (toChars!6228 (transformation!4505 (rule!6863 t1!67))) (toValue!6369 (transformation!4505 (rule!6863 t1!67)))))))

(assert (=> d!712032 (= (inv!38979 (transformation!4505 (rule!6863 t1!67))) e!1569999)))

(declare-fun b!2474823 () Bool)

(assert (=> b!2474823 (= e!1569999 (equivClasses!1768 (toChars!6228 (transformation!4505 (rule!6863 t1!67))) (toValue!6369 (transformation!4505 (rule!6863 t1!67)))))))

(assert (= (and d!712032 res!1047832) b!2474823))

(declare-fun m!2843135 () Bool)

(assert (=> d!712032 m!2843135))

(declare-fun m!2843137 () Bool)

(assert (=> b!2474823 m!2843137))

(assert (=> b!2474555 d!712032))

(declare-fun d!712034 () Bool)

(declare-fun res!1047833 () Bool)

(declare-fun e!1570000 () Bool)

(assert (=> d!712034 (=> res!1047833 e!1570000)))

(assert (=> d!712034 (= res!1047833 (or (not ((_ is Cons!28889) l!6611)) (not ((_ is Cons!28889) (t!210460 l!6611)))))))

(assert (=> d!712034 (= (tokensListTwoByTwoPredicateSeparableList!641 thiss!27932 l!6611 rules!4472) e!1570000)))

(declare-fun b!2474824 () Bool)

(declare-fun e!1570001 () Bool)

(assert (=> b!2474824 (= e!1570000 e!1570001)))

(declare-fun res!1047834 () Bool)

(assert (=> b!2474824 (=> (not res!1047834) (not e!1570001))))

(assert (=> b!2474824 (= res!1047834 (separableTokensPredicate!877 thiss!27932 (h!34290 l!6611) (h!34290 (t!210460 l!6611)) rules!4472))))

(declare-fun lt!883899 () Unit!42252)

(declare-fun Unit!42260 () Unit!42252)

(assert (=> b!2474824 (= lt!883899 Unit!42260)))

(assert (=> b!2474824 (> (size!22481 (charsOf!2835 (h!34290 (t!210460 l!6611)))) 0)))

(declare-fun lt!883901 () Unit!42252)

(declare-fun Unit!42261 () Unit!42252)

(assert (=> b!2474824 (= lt!883901 Unit!42261)))

(assert (=> b!2474824 (rulesProduceIndividualToken!1830 thiss!27932 rules!4472 (h!34290 (t!210460 l!6611)))))

(declare-fun lt!883897 () Unit!42252)

(declare-fun Unit!42262 () Unit!42252)

(assert (=> b!2474824 (= lt!883897 Unit!42262)))

(assert (=> b!2474824 (rulesProduceIndividualToken!1830 thiss!27932 rules!4472 (h!34290 l!6611))))

(declare-fun lt!883903 () Unit!42252)

(declare-fun lt!883900 () Unit!42252)

(assert (=> b!2474824 (= lt!883903 lt!883900)))

(assert (=> b!2474824 (rulesProduceIndividualToken!1830 thiss!27932 rules!4472 (h!34290 (t!210460 l!6611)))))

(assert (=> b!2474824 (= lt!883900 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!691 thiss!27932 rules!4472 l!6611 (h!34290 (t!210460 l!6611))))))

(declare-fun lt!883898 () Unit!42252)

(declare-fun lt!883902 () Unit!42252)

(assert (=> b!2474824 (= lt!883898 lt!883902)))

(assert (=> b!2474824 (rulesProduceIndividualToken!1830 thiss!27932 rules!4472 (h!34290 l!6611))))

(assert (=> b!2474824 (= lt!883902 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!691 thiss!27932 rules!4472 l!6611 (h!34290 l!6611)))))

(declare-fun b!2474825 () Bool)

(assert (=> b!2474825 (= e!1570001 (tokensListTwoByTwoPredicateSeparableList!641 thiss!27932 (Cons!28889 (h!34290 (t!210460 l!6611)) (t!210460 (t!210460 l!6611))) rules!4472))))

(assert (= (and d!712034 (not res!1047833)) b!2474824))

(assert (= (and b!2474824 res!1047834) b!2474825))

(declare-fun m!2843149 () Bool)

(assert (=> b!2474824 m!2843149))

(declare-fun m!2843151 () Bool)

(assert (=> b!2474824 m!2843151))

(declare-fun m!2843153 () Bool)

(assert (=> b!2474824 m!2843153))

(declare-fun m!2843155 () Bool)

(assert (=> b!2474824 m!2843155))

(assert (=> b!2474824 m!2843115))

(declare-fun m!2843157 () Bool)

(assert (=> b!2474824 m!2843157))

(assert (=> b!2474824 m!2843151))

(declare-fun m!2843159 () Bool)

(assert (=> b!2474824 m!2843159))

(declare-fun m!2843161 () Bool)

(assert (=> b!2474825 m!2843161))

(assert (=> b!2474544 d!712034))

(declare-fun d!712038 () Bool)

(declare-fun res!1047835 () Bool)

(declare-fun e!1570002 () Bool)

(assert (=> d!712038 (=> (not res!1047835) (not e!1570002))))

(assert (=> d!712038 (= res!1047835 (not (isEmpty!16768 (originalCharacters!5271 (h!34290 l!6611)))))))

(assert (=> d!712038 (= (inv!38980 (h!34290 l!6611)) e!1570002)))

(declare-fun b!2474826 () Bool)

(declare-fun res!1047836 () Bool)

(assert (=> b!2474826 (=> (not res!1047836) (not e!1570002))))

(assert (=> b!2474826 (= res!1047836 (= (originalCharacters!5271 (h!34290 l!6611)) (list!11157 (dynLambda!12418 (toChars!6228 (transformation!4505 (rule!6863 (h!34290 l!6611)))) (value!143798 (h!34290 l!6611))))))))

(declare-fun b!2474827 () Bool)

(assert (=> b!2474827 (= e!1570002 (= (size!22477 (h!34290 l!6611)) (size!22483 (originalCharacters!5271 (h!34290 l!6611)))))))

(assert (= (and d!712038 res!1047835) b!2474826))

(assert (= (and b!2474826 res!1047836) b!2474827))

(declare-fun b_lambda!75943 () Bool)

(assert (=> (not b_lambda!75943) (not b!2474826)))

(declare-fun t!210504 () Bool)

(declare-fun tb!140241 () Bool)

(assert (=> (and b!2474570 (= (toChars!6228 (transformation!4505 (rule!6863 t1!67))) (toChars!6228 (transformation!4505 (rule!6863 (h!34290 l!6611))))) t!210504) tb!140241))

(declare-fun b!2474828 () Bool)

(declare-fun e!1570003 () Bool)

(declare-fun tp!791254 () Bool)

(assert (=> b!2474828 (= e!1570003 (and (inv!38983 (c!393942 (dynLambda!12418 (toChars!6228 (transformation!4505 (rule!6863 (h!34290 l!6611)))) (value!143798 (h!34290 l!6611))))) tp!791254))))

(declare-fun result!173076 () Bool)

(assert (=> tb!140241 (= result!173076 (and (inv!38984 (dynLambda!12418 (toChars!6228 (transformation!4505 (rule!6863 (h!34290 l!6611)))) (value!143798 (h!34290 l!6611)))) e!1570003))))

(assert (= tb!140241 b!2474828))

(declare-fun m!2843163 () Bool)

(assert (=> b!2474828 m!2843163))

(declare-fun m!2843165 () Bool)

(assert (=> tb!140241 m!2843165))

(assert (=> b!2474826 t!210504))

(declare-fun b_and!187909 () Bool)

(assert (= b_and!187901 (and (=> t!210504 result!173076) b_and!187909)))

(declare-fun t!210506 () Bool)

(declare-fun tb!140243 () Bool)

(assert (=> (and b!2474558 (= (toChars!6228 (transformation!4505 (rule!6863 t2!67))) (toChars!6228 (transformation!4505 (rule!6863 (h!34290 l!6611))))) t!210506) tb!140243))

(declare-fun result!173078 () Bool)

(assert (= result!173078 result!173076))

(assert (=> b!2474826 t!210506))

(declare-fun b_and!187911 () Bool)

(assert (= b_and!187903 (and (=> t!210506 result!173078) b_and!187911)))

(declare-fun t!210508 () Bool)

(declare-fun tb!140245 () Bool)

(assert (=> (and b!2474553 (= (toChars!6228 (transformation!4505 (rule!6863 (h!34290 l!6611)))) (toChars!6228 (transformation!4505 (rule!6863 (h!34290 l!6611))))) t!210508) tb!140245))

(declare-fun result!173080 () Bool)

(assert (= result!173080 result!173076))

(assert (=> b!2474826 t!210508))

(declare-fun b_and!187913 () Bool)

(assert (= b_and!187905 (and (=> t!210508 result!173080) b_and!187913)))

(declare-fun tb!140247 () Bool)

(declare-fun t!210510 () Bool)

(assert (=> (and b!2474560 (= (toChars!6228 (transformation!4505 (h!34289 rules!4472))) (toChars!6228 (transformation!4505 (rule!6863 (h!34290 l!6611))))) t!210510) tb!140247))

(declare-fun result!173082 () Bool)

(assert (= result!173082 result!173076))

(assert (=> b!2474826 t!210510))

(declare-fun b_and!187915 () Bool)

(assert (= b_and!187907 (and (=> t!210510 result!173082) b_and!187915)))

(declare-fun m!2843167 () Bool)

(assert (=> d!712038 m!2843167))

(declare-fun m!2843169 () Bool)

(assert (=> b!2474826 m!2843169))

(assert (=> b!2474826 m!2843169))

(declare-fun m!2843171 () Bool)

(assert (=> b!2474826 m!2843171))

(declare-fun m!2843173 () Bool)

(assert (=> b!2474827 m!2843173))

(assert (=> b!2474565 d!712038))

(declare-fun b!2474845 () Bool)

(declare-fun e!1570009 () Bool)

(declare-fun tp!791267 () Bool)

(declare-fun tp!791268 () Bool)

(assert (=> b!2474845 (= e!1570009 (and tp!791267 tp!791268))))

(declare-fun b!2474844 () Bool)

(declare-fun tp!791269 () Bool)

(assert (=> b!2474844 (= e!1570009 tp!791269)))

(assert (=> b!2474559 (= tp!791242 e!1570009)))

(declare-fun b!2474842 () Bool)

(declare-fun tp_is_empty!11977 () Bool)

(assert (=> b!2474842 (= e!1570009 tp_is_empty!11977)))

(declare-fun b!2474843 () Bool)

(declare-fun tp!791265 () Bool)

(declare-fun tp!791266 () Bool)

(assert (=> b!2474843 (= e!1570009 (and tp!791265 tp!791266))))

(assert (= (and b!2474559 ((_ is ElementMatch!7293) (regex!4505 (rule!6863 (h!34290 l!6611))))) b!2474842))

(assert (= (and b!2474559 ((_ is Concat!11985) (regex!4505 (rule!6863 (h!34290 l!6611))))) b!2474843))

(assert (= (and b!2474559 ((_ is Star!7293) (regex!4505 (rule!6863 (h!34290 l!6611))))) b!2474844))

(assert (= (and b!2474559 ((_ is Union!7293) (regex!4505 (rule!6863 (h!34290 l!6611))))) b!2474845))

(declare-fun b!2474850 () Bool)

(declare-fun e!1570012 () Bool)

(declare-fun tp!791272 () Bool)

(assert (=> b!2474850 (= e!1570012 (and tp_is_empty!11977 tp!791272))))

(assert (=> b!2474568 (= tp!791234 e!1570012)))

(assert (= (and b!2474568 ((_ is Cons!28887) (originalCharacters!5271 (h!34290 l!6611)))) b!2474850))

(declare-fun b!2474854 () Bool)

(declare-fun e!1570013 () Bool)

(declare-fun tp!791275 () Bool)

(declare-fun tp!791276 () Bool)

(assert (=> b!2474854 (= e!1570013 (and tp!791275 tp!791276))))

(declare-fun b!2474853 () Bool)

(declare-fun tp!791277 () Bool)

(assert (=> b!2474853 (= e!1570013 tp!791277)))

(assert (=> b!2474551 (= tp!791238 e!1570013)))

(declare-fun b!2474851 () Bool)

(assert (=> b!2474851 (= e!1570013 tp_is_empty!11977)))

(declare-fun b!2474852 () Bool)

(declare-fun tp!791273 () Bool)

(declare-fun tp!791274 () Bool)

(assert (=> b!2474852 (= e!1570013 (and tp!791273 tp!791274))))

(assert (= (and b!2474551 ((_ is ElementMatch!7293) (regex!4505 (rule!6863 t2!67)))) b!2474851))

(assert (= (and b!2474551 ((_ is Concat!11985) (regex!4505 (rule!6863 t2!67)))) b!2474852))

(assert (= (and b!2474551 ((_ is Star!7293) (regex!4505 (rule!6863 t2!67)))) b!2474853))

(assert (= (and b!2474551 ((_ is Union!7293) (regex!4505 (rule!6863 t2!67)))) b!2474854))

(declare-fun b!2474875 () Bool)

(declare-fun b_free!71749 () Bool)

(declare-fun b_next!72453 () Bool)

(assert (=> b!2474875 (= b_free!71749 (not b_next!72453))))

(declare-fun tp!791287 () Bool)

(declare-fun b_and!187917 () Bool)

(assert (=> b!2474875 (= tp!791287 b_and!187917)))

(declare-fun b_free!71751 () Bool)

(declare-fun b_next!72455 () Bool)

(assert (=> b!2474875 (= b_free!71751 (not b_next!72455))))

(declare-fun tb!140249 () Bool)

(declare-fun t!210512 () Bool)

(assert (=> (and b!2474875 (= (toChars!6228 (transformation!4505 (h!34289 (t!210459 rules!4472)))) (toChars!6228 (transformation!4505 (rule!6863 t2!67)))) t!210512) tb!140249))

(declare-fun result!173090 () Bool)

(assert (= result!173090 result!173058))

(assert (=> b!2474783 t!210512))

(declare-fun t!210514 () Bool)

(declare-fun tb!140251 () Bool)

(assert (=> (and b!2474875 (= (toChars!6228 (transformation!4505 (h!34289 (t!210459 rules!4472)))) (toChars!6228 (transformation!4505 (rule!6863 t1!67)))) t!210514) tb!140251))

(declare-fun result!173092 () Bool)

(assert (= result!173092 result!173068))

(assert (=> b!2474790 t!210514))

(declare-fun tb!140253 () Bool)

(declare-fun t!210516 () Bool)

(assert (=> (and b!2474875 (= (toChars!6228 (transformation!4505 (h!34289 (t!210459 rules!4472)))) (toChars!6228 (transformation!4505 (rule!6863 (h!34290 l!6611))))) t!210516) tb!140253))

(declare-fun result!173094 () Bool)

(assert (= result!173094 result!173076))

(assert (=> b!2474826 t!210516))

(declare-fun tp!791289 () Bool)

(declare-fun b_and!187919 () Bool)

(assert (=> b!2474875 (= tp!791289 (and (=> t!210512 result!173090) (=> t!210514 result!173092) (=> t!210516 result!173094) b_and!187919))))

(declare-fun e!1570031 () Bool)

(assert (=> b!2474875 (= e!1570031 (and tp!791287 tp!791289))))

(declare-fun e!1570029 () Bool)

(declare-fun tp!791286 () Bool)

(declare-fun b!2474874 () Bool)

(assert (=> b!2474874 (= e!1570029 (and tp!791286 (inv!38976 (tag!4995 (h!34289 (t!210459 rules!4472)))) (inv!38979 (transformation!4505 (h!34289 (t!210459 rules!4472)))) e!1570031))))

(declare-fun b!2474873 () Bool)

(declare-fun e!1570028 () Bool)

(declare-fun tp!791288 () Bool)

(assert (=> b!2474873 (= e!1570028 (and e!1570029 tp!791288))))

(assert (=> b!2474550 (= tp!791239 e!1570028)))

(assert (= b!2474874 b!2474875))

(assert (= b!2474873 b!2474874))

(assert (= (and b!2474550 ((_ is Cons!28888) (t!210459 rules!4472))) b!2474873))

(declare-fun m!2843185 () Bool)

(assert (=> b!2474874 m!2843185))

(declare-fun m!2843187 () Bool)

(assert (=> b!2474874 m!2843187))

(declare-fun b!2474889 () Bool)

(declare-fun e!1570038 () Bool)

(declare-fun tp!791292 () Bool)

(declare-fun tp!791293 () Bool)

(assert (=> b!2474889 (= e!1570038 (and tp!791292 tp!791293))))

(declare-fun b!2474888 () Bool)

(declare-fun tp!791294 () Bool)

(assert (=> b!2474888 (= e!1570038 tp!791294)))

(assert (=> b!2474554 (= tp!791243 e!1570038)))

(declare-fun b!2474886 () Bool)

(assert (=> b!2474886 (= e!1570038 tp_is_empty!11977)))

(declare-fun b!2474887 () Bool)

(declare-fun tp!791290 () Bool)

(declare-fun tp!791291 () Bool)

(assert (=> b!2474887 (= e!1570038 (and tp!791290 tp!791291))))

(assert (= (and b!2474554 ((_ is ElementMatch!7293) (regex!4505 (h!34289 rules!4472)))) b!2474886))

(assert (= (and b!2474554 ((_ is Concat!11985) (regex!4505 (h!34289 rules!4472)))) b!2474887))

(assert (= (and b!2474554 ((_ is Star!7293) (regex!4505 (h!34289 rules!4472)))) b!2474888))

(assert (= (and b!2474554 ((_ is Union!7293) (regex!4505 (h!34289 rules!4472)))) b!2474889))

(declare-fun b!2474890 () Bool)

(declare-fun e!1570039 () Bool)

(declare-fun tp!791295 () Bool)

(assert (=> b!2474890 (= e!1570039 (and tp_is_empty!11977 tp!791295))))

(assert (=> b!2474543 (= tp!791241 e!1570039)))

(assert (= (and b!2474543 ((_ is Cons!28887) (originalCharacters!5271 t1!67))) b!2474890))

(declare-fun b!2474893 () Bool)

(declare-fun e!1570041 () Bool)

(declare-fun tp!791296 () Bool)

(assert (=> b!2474893 (= e!1570041 (and tp_is_empty!11977 tp!791296))))

(assert (=> b!2474566 (= tp!791237 e!1570041)))

(assert (= (and b!2474566 ((_ is Cons!28887) (originalCharacters!5271 t2!67))) b!2474893))

(declare-fun b!2474897 () Bool)

(declare-fun e!1570042 () Bool)

(declare-fun tp!791299 () Bool)

(declare-fun tp!791300 () Bool)

(assert (=> b!2474897 (= e!1570042 (and tp!791299 tp!791300))))

(declare-fun b!2474896 () Bool)

(declare-fun tp!791301 () Bool)

(assert (=> b!2474896 (= e!1570042 tp!791301)))

(assert (=> b!2474555 (= tp!791244 e!1570042)))

(declare-fun b!2474894 () Bool)

(assert (=> b!2474894 (= e!1570042 tp_is_empty!11977)))

(declare-fun b!2474895 () Bool)

(declare-fun tp!791297 () Bool)

(declare-fun tp!791298 () Bool)

(assert (=> b!2474895 (= e!1570042 (and tp!791297 tp!791298))))

(assert (= (and b!2474555 ((_ is ElementMatch!7293) (regex!4505 (rule!6863 t1!67)))) b!2474894))

(assert (= (and b!2474555 ((_ is Concat!11985) (regex!4505 (rule!6863 t1!67)))) b!2474895))

(assert (= (and b!2474555 ((_ is Star!7293) (regex!4505 (rule!6863 t1!67)))) b!2474896))

(assert (= (and b!2474555 ((_ is Union!7293) (regex!4505 (rule!6863 t1!67)))) b!2474897))

(declare-fun b!2474919 () Bool)

(declare-fun b_free!71753 () Bool)

(declare-fun b_next!72457 () Bool)

(assert (=> b!2474919 (= b_free!71753 (not b_next!72457))))

(declare-fun tp!791314 () Bool)

(declare-fun b_and!187929 () Bool)

(assert (=> b!2474919 (= tp!791314 b_and!187929)))

(declare-fun b_free!71755 () Bool)

(declare-fun b_next!72459 () Bool)

(assert (=> b!2474919 (= b_free!71755 (not b_next!72459))))

(declare-fun t!210526 () Bool)

(declare-fun tb!140263 () Bool)

(assert (=> (and b!2474919 (= (toChars!6228 (transformation!4505 (rule!6863 (h!34290 (t!210460 l!6611))))) (toChars!6228 (transformation!4505 (rule!6863 t2!67)))) t!210526) tb!140263))

(declare-fun result!173106 () Bool)

(assert (= result!173106 result!173058))

(assert (=> b!2474783 t!210526))

(declare-fun t!210528 () Bool)

(declare-fun tb!140265 () Bool)

(assert (=> (and b!2474919 (= (toChars!6228 (transformation!4505 (rule!6863 (h!34290 (t!210460 l!6611))))) (toChars!6228 (transformation!4505 (rule!6863 t1!67)))) t!210528) tb!140265))

(declare-fun result!173108 () Bool)

(assert (= result!173108 result!173068))

(assert (=> b!2474790 t!210528))

(declare-fun t!210530 () Bool)

(declare-fun tb!140267 () Bool)

(assert (=> (and b!2474919 (= (toChars!6228 (transformation!4505 (rule!6863 (h!34290 (t!210460 l!6611))))) (toChars!6228 (transformation!4505 (rule!6863 (h!34290 l!6611))))) t!210530) tb!140267))

(declare-fun result!173110 () Bool)

(assert (= result!173110 result!173076))

(assert (=> b!2474826 t!210530))

(declare-fun b_and!187931 () Bool)

(declare-fun tp!791317 () Bool)

(assert (=> b!2474919 (= tp!791317 (and (=> t!210526 result!173106) (=> t!210528 result!173108) (=> t!210530 result!173110) b_and!187931))))

(declare-fun e!1570061 () Bool)

(assert (=> b!2474565 (= tp!791240 e!1570061)))

(declare-fun e!1570065 () Bool)

(assert (=> b!2474919 (= e!1570065 (and tp!791314 tp!791317))))

(declare-fun tp!791316 () Bool)

(declare-fun e!1570063 () Bool)

(declare-fun b!2474916 () Bool)

(assert (=> b!2474916 (= e!1570061 (and (inv!38980 (h!34290 (t!210460 l!6611))) e!1570063 tp!791316))))

(declare-fun e!1570066 () Bool)

(declare-fun b!2474917 () Bool)

(declare-fun tp!791315 () Bool)

(assert (=> b!2474917 (= e!1570063 (and (inv!21 (value!143798 (h!34290 (t!210460 l!6611)))) e!1570066 tp!791315))))

(declare-fun tp!791313 () Bool)

(declare-fun b!2474918 () Bool)

(assert (=> b!2474918 (= e!1570066 (and tp!791313 (inv!38976 (tag!4995 (rule!6863 (h!34290 (t!210460 l!6611))))) (inv!38979 (transformation!4505 (rule!6863 (h!34290 (t!210460 l!6611))))) e!1570065))))

(assert (= b!2474918 b!2474919))

(assert (= b!2474917 b!2474918))

(assert (= b!2474916 b!2474917))

(assert (= (and b!2474565 ((_ is Cons!28889) (t!210460 l!6611))) b!2474916))

(declare-fun m!2843227 () Bool)

(assert (=> b!2474916 m!2843227))

(declare-fun m!2843229 () Bool)

(assert (=> b!2474917 m!2843229))

(declare-fun m!2843231 () Bool)

(assert (=> b!2474918 m!2843231))

(declare-fun m!2843233 () Bool)

(assert (=> b!2474918 m!2843233))

(declare-fun b_lambda!75947 () Bool)

(assert (= b_lambda!75941 (or (and b!2474553 b_free!71743 (= (toChars!6228 (transformation!4505 (rule!6863 (h!34290 l!6611)))) (toChars!6228 (transformation!4505 (rule!6863 t1!67))))) (and b!2474558 b_free!71739 (= (toChars!6228 (transformation!4505 (rule!6863 t2!67))) (toChars!6228 (transformation!4505 (rule!6863 t1!67))))) (and b!2474570 b_free!71735) (and b!2474919 b_free!71755 (= (toChars!6228 (transformation!4505 (rule!6863 (h!34290 (t!210460 l!6611))))) (toChars!6228 (transformation!4505 (rule!6863 t1!67))))) (and b!2474560 b_free!71747 (= (toChars!6228 (transformation!4505 (h!34289 rules!4472))) (toChars!6228 (transformation!4505 (rule!6863 t1!67))))) (and b!2474875 b_free!71751 (= (toChars!6228 (transformation!4505 (h!34289 (t!210459 rules!4472)))) (toChars!6228 (transformation!4505 (rule!6863 t1!67))))) b_lambda!75947)))

(declare-fun b_lambda!75949 () Bool)

(assert (= b_lambda!75943 (or (and b!2474875 b_free!71751 (= (toChars!6228 (transformation!4505 (h!34289 (t!210459 rules!4472)))) (toChars!6228 (transformation!4505 (rule!6863 (h!34290 l!6611)))))) (and b!2474560 b_free!71747 (= (toChars!6228 (transformation!4505 (h!34289 rules!4472))) (toChars!6228 (transformation!4505 (rule!6863 (h!34290 l!6611)))))) (and b!2474570 b_free!71735 (= (toChars!6228 (transformation!4505 (rule!6863 t1!67))) (toChars!6228 (transformation!4505 (rule!6863 (h!34290 l!6611)))))) (and b!2474919 b_free!71755 (= (toChars!6228 (transformation!4505 (rule!6863 (h!34290 (t!210460 l!6611))))) (toChars!6228 (transformation!4505 (rule!6863 (h!34290 l!6611)))))) (and b!2474553 b_free!71743) (and b!2474558 b_free!71739 (= (toChars!6228 (transformation!4505 (rule!6863 t2!67))) (toChars!6228 (transformation!4505 (rule!6863 (h!34290 l!6611)))))) b_lambda!75949)))

(declare-fun b_lambda!75951 () Bool)

(assert (= b_lambda!75939 (or (and b!2474553 b_free!71743 (= (toChars!6228 (transformation!4505 (rule!6863 (h!34290 l!6611)))) (toChars!6228 (transformation!4505 (rule!6863 t2!67))))) (and b!2474558 b_free!71739) (and b!2474560 b_free!71747 (= (toChars!6228 (transformation!4505 (h!34289 rules!4472))) (toChars!6228 (transformation!4505 (rule!6863 t2!67))))) (and b!2474875 b_free!71751 (= (toChars!6228 (transformation!4505 (h!34289 (t!210459 rules!4472)))) (toChars!6228 (transformation!4505 (rule!6863 t2!67))))) (and b!2474919 b_free!71755 (= (toChars!6228 (transformation!4505 (rule!6863 (h!34290 (t!210460 l!6611))))) (toChars!6228 (transformation!4505 (rule!6863 t2!67))))) (and b!2474570 b_free!71735 (= (toChars!6228 (transformation!4505 (rule!6863 t1!67))) (toChars!6228 (transformation!4505 (rule!6863 t2!67))))) b_lambda!75951)))

(check-sat (not b!2474806) (not b!2474823) (not b!2474813) (not d!712004) (not b!2474631) (not b_next!72445) (not b!2474896) b_and!187909 b_and!187915 (not b!2474575) (not b_next!72451) (not b!2474700) b_and!187873 (not b!2474771) (not d!712020) (not b!2474797) (not b!2474824) b_and!187913 (not b!2474641) (not b_next!72453) (not b!2474852) (not d!712038) (not b!2474735) (not b_lambda!75951) (not b!2474725) (not d!711932) (not b_next!72437) (not d!711958) (not d!711974) b_and!187931 (not b!2474677) (not b!2474887) (not d!712024) (not b!2474918) (not b!2474828) (not b!2474873) (not b!2474796) (not b!2474845) b_and!187861 (not d!711934) (not b!2474705) (not b!2474789) b_and!187911 (not d!711970) (not b!2474675) (not b!2474703) (not b!2474684) (not b!2474821) (not b!2474775) (not d!711968) (not b!2474801) (not b!2474621) (not b!2474843) (not d!712002) (not d!712010) (not b!2474683) (not tb!140225) (not b!2474701) (not b!2474791) b_and!187869 (not b!2474778) b_and!187919 (not d!712032) (not b_next!72449) (not b!2474770) (not b!2474874) (not b!2474889) (not b!2474853) (not d!711972) (not b!2474890) b_and!187917 (not b!2474790) (not b!2474825) (not b!2474793) (not b!2474622) (not d!711980) (not b!2474704) (not b!2474854) (not b!2474815) b_and!187865 (not b!2474822) (not b_lambda!75949) (not b_next!72457) (not b!2474826) (not b!2474734) (not d!712018) (not b_next!72441) (not b!2474733) (not b!2474676) (not b_next!72439) (not b_lambda!75947) (not b!2474803) (not b_next!72459) (not b!2474798) (not b!2474726) (not b!2474711) (not b!2474808) (not b!2474897) (not b!2474682) (not d!711956) (not b!2474888) b_and!187929 (not b!2474895) (not b_next!72455) tp_is_empty!11977 (not b!2474776) (not tb!140241) (not b!2474702) (not d!712000) (not b!2474812) (not b_next!72443) (not d!712014) (not b!2474827) (not b!2474777) (not b!2474802) (not b!2474724) (not d!712006) (not d!712008) (not b!2474893) (not b!2474844) (not b!2474792) (not tb!140233) (not b!2474850) (not b!2474916) (not b!2474784) (not b!2474814) (not b!2474820) (not b!2474699) (not b!2474783) (not b_next!72447) (not b!2474917) (not b!2474807) (not b!2474772))
(check-sat (not b_next!72437) b_and!187931 b_and!187861 b_and!187911 b_and!187869 b_and!187919 (not b_next!72449) b_and!187917 (not b_next!72441) (not b_next!72443) (not b_next!72447) (not b_next!72445) b_and!187909 b_and!187915 (not b_next!72451) b_and!187873 b_and!187913 (not b_next!72453) (not b_next!72457) b_and!187865 (not b_next!72439) (not b_next!72459) b_and!187929 (not b_next!72455))
