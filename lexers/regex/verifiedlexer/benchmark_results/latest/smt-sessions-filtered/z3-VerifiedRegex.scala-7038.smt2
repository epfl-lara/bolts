; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!373628 () Bool)

(assert start!373628)

(declare-fun b!3970686 () Bool)

(declare-fun b_free!109985 () Bool)

(declare-fun b_next!110689 () Bool)

(assert (=> b!3970686 (= b_free!109985 (not b_next!110689))))

(declare-fun tp!1210649 () Bool)

(declare-fun b_and!305231 () Bool)

(assert (=> b!3970686 (= tp!1210649 b_and!305231)))

(declare-fun b_free!109987 () Bool)

(declare-fun b_next!110691 () Bool)

(assert (=> b!3970686 (= b_free!109987 (not b_next!110691))))

(declare-fun tp!1210651 () Bool)

(declare-fun b_and!305233 () Bool)

(assert (=> b!3970686 (= tp!1210651 b_and!305233)))

(declare-fun b!3970675 () Bool)

(declare-fun b_free!109989 () Bool)

(declare-fun b_next!110693 () Bool)

(assert (=> b!3970675 (= b_free!109989 (not b_next!110693))))

(declare-fun tp!1210660 () Bool)

(declare-fun b_and!305235 () Bool)

(assert (=> b!3970675 (= tp!1210660 b_and!305235)))

(declare-fun b_free!109991 () Bool)

(declare-fun b_next!110695 () Bool)

(assert (=> b!3970675 (= b_free!109991 (not b_next!110695))))

(declare-fun tp!1210655 () Bool)

(declare-fun b_and!305237 () Bool)

(assert (=> b!3970675 (= tp!1210655 b_and!305237)))

(declare-fun b!3970668 () Bool)

(declare-fun res!1607253 () Bool)

(declare-fun e!2459600 () Bool)

(assert (=> b!3970668 (=> (not res!1607253) (not e!2459600))))

(declare-datatypes ((LexerInterface!6253 0))(
  ( (LexerInterfaceExt!6250 (__x!26005 Int)) (Lexer!6251) )
))
(declare-fun thiss!21717 () LexerInterface!6253)

(declare-datatypes ((C!23324 0))(
  ( (C!23325 (val!13756 Int)) )
))
(declare-datatypes ((List!42500 0))(
  ( (Nil!42376) (Cons!42376 (h!47796 C!23324) (t!330867 List!42500)) )
))
(declare-datatypes ((IArray!25755 0))(
  ( (IArray!25756 (innerList!12935 List!42500)) )
))
(declare-datatypes ((Conc!12875 0))(
  ( (Node!12875 (left!32101 Conc!12875) (right!32431 Conc!12875) (csize!25980 Int) (cheight!13086 Int)) (Leaf!19914 (xs!16181 IArray!25755) (csize!25981 Int)) (Empty!12875) )
))
(declare-datatypes ((BalanceConc!25344 0))(
  ( (BalanceConc!25345 (c!688726 Conc!12875)) )
))
(declare-datatypes ((List!42501 0))(
  ( (Nil!42377) (Cons!42377 (h!47797 (_ BitVec 16)) (t!330868 List!42501)) )
))
(declare-datatypes ((TokenValue!6894 0))(
  ( (FloatLiteralValue!13788 (text!48703 List!42501)) (TokenValueExt!6893 (__x!26006 Int)) (Broken!34470 (value!210532 List!42501)) (Object!7017) (End!6894) (Def!6894) (Underscore!6894) (Match!6894) (Else!6894) (Error!6894) (Case!6894) (If!6894) (Extends!6894) (Abstract!6894) (Class!6894) (Val!6894) (DelimiterValue!13788 (del!6954 List!42501)) (KeywordValue!6900 (value!210533 List!42501)) (CommentValue!13788 (value!210534 List!42501)) (WhitespaceValue!13788 (value!210535 List!42501)) (IndentationValue!6894 (value!210536 List!42501)) (String!48187) (Int32!6894) (Broken!34471 (value!210537 List!42501)) (Boolean!6895) (Unit!61027) (OperatorValue!6897 (op!6954 List!42501)) (IdentifierValue!13788 (value!210538 List!42501)) (IdentifierValue!13789 (value!210539 List!42501)) (WhitespaceValue!13789 (value!210540 List!42501)) (True!13788) (False!13788) (Broken!34472 (value!210541 List!42501)) (Broken!34473 (value!210542 List!42501)) (True!13789) (RightBrace!6894) (RightBracket!6894) (Colon!6894) (Null!6894) (Comma!6894) (LeftBracket!6894) (False!13789) (LeftBrace!6894) (ImaginaryLiteralValue!6894 (text!48704 List!42501)) (StringLiteralValue!20682 (value!210543 List!42501)) (EOFValue!6894 (value!210544 List!42501)) (IdentValue!6894 (value!210545 List!42501)) (DelimiterValue!13789 (value!210546 List!42501)) (DedentValue!6894 (value!210547 List!42501)) (NewLineValue!6894 (value!210548 List!42501)) (IntegerValue!20682 (value!210549 (_ BitVec 32)) (text!48705 List!42501)) (IntegerValue!20683 (value!210550 Int) (text!48706 List!42501)) (Times!6894) (Or!6894) (Equal!6894) (Minus!6894) (Broken!34474 (value!210551 List!42501)) (And!6894) (Div!6894) (LessEqual!6894) (Mod!6894) (Concat!18463) (Not!6894) (Plus!6894) (SpaceValue!6894 (value!210552 List!42501)) (IntegerValue!20684 (value!210553 Int) (text!48707 List!42501)) (StringLiteralValue!20683 (text!48708 List!42501)) (FloatLiteralValue!13789 (text!48709 List!42501)) (BytesLiteralValue!6894 (value!210554 List!42501)) (CommentValue!13789 (value!210555 List!42501)) (StringLiteralValue!20684 (value!210556 List!42501)) (ErrorTokenValue!6894 (msg!6955 List!42501)) )
))
(declare-datatypes ((Regex!11569 0))(
  ( (ElementMatch!11569 (c!688727 C!23324)) (Concat!18464 (regOne!23650 Regex!11569) (regTwo!23650 Regex!11569)) (EmptyExpr!11569) (Star!11569 (reg!11898 Regex!11569)) (EmptyLang!11569) (Union!11569 (regOne!23651 Regex!11569) (regTwo!23651 Regex!11569)) )
))
(declare-datatypes ((String!48188 0))(
  ( (String!48189 (value!210557 String)) )
))
(declare-datatypes ((TokenValueInjection!13216 0))(
  ( (TokenValueInjection!13217 (toValue!9152 Int) (toChars!9011 Int)) )
))
(declare-datatypes ((Rule!13128 0))(
  ( (Rule!13129 (regex!6664 Regex!11569) (tag!7524 String!48188) (isSeparator!6664 Bool) (transformation!6664 TokenValueInjection!13216)) )
))
(declare-datatypes ((List!42502 0))(
  ( (Nil!42378) (Cons!42378 (h!47798 Rule!13128) (t!330869 List!42502)) )
))
(declare-fun rules!2999 () List!42502)

(declare-fun rulesInvariant!5596 (LexerInterface!6253 List!42502) Bool)

(assert (=> b!3970668 (= res!1607253 (rulesInvariant!5596 thiss!21717 rules!2999))))

(declare-fun e!2459604 () Bool)

(declare-fun e!2459599 () Bool)

(declare-fun tp!1210658 () Bool)

(declare-fun b!3970669 () Bool)

(declare-fun inv!56624 (String!48188) Bool)

(declare-fun inv!56627 (TokenValueInjection!13216) Bool)

(assert (=> b!3970669 (= e!2459604 (and tp!1210658 (inv!56624 (tag!7524 (h!47798 rules!2999))) (inv!56627 (transformation!6664 (h!47798 rules!2999))) e!2459599))))

(declare-fun b!3970670 () Bool)

(declare-fun e!2459589 () Bool)

(assert (=> b!3970670 (= e!2459589 true)))

(declare-fun lt!1390610 () List!42500)

(declare-fun lt!1390606 () List!42500)

(declare-fun isPrefix!3751 (List!42500 List!42500) Bool)

(assert (=> b!3970670 (isPrefix!3751 lt!1390610 lt!1390606)))

(declare-datatypes ((Unit!61028 0))(
  ( (Unit!61029) )
))
(declare-fun lt!1390611 () Unit!61028)

(declare-fun lt!1390609 () List!42500)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2594 (List!42500 List!42500) Unit!61028)

(assert (=> b!3970670 (= lt!1390611 (lemmaConcatTwoListThenFirstIsPrefix!2594 lt!1390610 lt!1390609))))

(declare-fun b!3970671 () Bool)

(declare-fun e!2459592 () Bool)

(declare-fun e!2459584 () Bool)

(assert (=> b!3970671 (= e!2459592 e!2459584)))

(declare-fun res!1607252 () Bool)

(assert (=> b!3970671 (=> res!1607252 e!2459584)))

(declare-fun lt!1390605 () List!42500)

(declare-fun prefix!494 () List!42500)

(assert (=> b!3970671 (= res!1607252 (not (= lt!1390605 prefix!494)))))

(declare-fun lt!1390598 () List!42500)

(declare-fun ++!11066 (List!42500 List!42500) List!42500)

(assert (=> b!3970671 (= lt!1390605 (++!11066 lt!1390610 lt!1390598))))

(declare-fun getSuffix!2182 (List!42500 List!42500) List!42500)

(assert (=> b!3970671 (= lt!1390598 (getSuffix!2182 prefix!494 lt!1390610))))

(assert (=> b!3970671 (isPrefix!3751 lt!1390610 prefix!494)))

(declare-fun lt!1390607 () List!42500)

(declare-fun lt!1390599 () Unit!61028)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!329 (List!42500 List!42500 List!42500) Unit!61028)

(assert (=> b!3970671 (= lt!1390599 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!329 prefix!494 lt!1390610 lt!1390607))))

(declare-datatypes ((Token!12466 0))(
  ( (Token!12467 (value!210558 TokenValue!6894) (rule!9652 Rule!13128) (size!31708 Int) (originalCharacters!7264 List!42500)) )
))
(declare-fun token!484 () Token!12466)

(declare-fun tp!1210652 () Bool)

(declare-fun e!2459591 () Bool)

(declare-fun e!2459587 () Bool)

(declare-fun b!3970672 () Bool)

(assert (=> b!3970672 (= e!2459587 (and tp!1210652 (inv!56624 (tag!7524 (rule!9652 token!484))) (inv!56627 (transformation!6664 (rule!9652 token!484))) e!2459591))))

(declare-fun b!3970673 () Bool)

(declare-fun e!2459603 () Bool)

(declare-fun tp_is_empty!20109 () Bool)

(declare-fun tp!1210657 () Bool)

(assert (=> b!3970673 (= e!2459603 (and tp_is_empty!20109 tp!1210657))))

(declare-fun b!3970674 () Bool)

(declare-fun e!2459585 () Bool)

(declare-fun e!2459590 () Bool)

(assert (=> b!3970674 (= e!2459585 e!2459590)))

(declare-fun res!1607260 () Bool)

(assert (=> b!3970674 (=> (not res!1607260) (not e!2459590))))

(declare-fun suffixResult!105 () List!42500)

(declare-datatypes ((tuple2!41640 0))(
  ( (tuple2!41641 (_1!23954 Token!12466) (_2!23954 List!42500)) )
))
(declare-datatypes ((Option!9078 0))(
  ( (None!9077) (Some!9077 (v!39425 tuple2!41640)) )
))
(declare-fun maxPrefix!3551 (LexerInterface!6253 List!42502 List!42500) Option!9078)

(assert (=> b!3970674 (= res!1607260 (= (maxPrefix!3551 thiss!21717 rules!2999 lt!1390607) (Some!9077 (tuple2!41641 token!484 suffixResult!105))))))

(declare-fun suffix!1299 () List!42500)

(assert (=> b!3970674 (= lt!1390607 (++!11066 prefix!494 suffix!1299))))

(assert (=> b!3970675 (= e!2459599 (and tp!1210660 tp!1210655))))

(declare-fun b!3970677 () Bool)

(declare-fun e!2459597 () Bool)

(assert (=> b!3970677 (= e!2459590 (not e!2459597))))

(declare-fun res!1607258 () Bool)

(assert (=> b!3970677 (=> res!1607258 e!2459597)))

(declare-fun lt!1390600 () List!42500)

(assert (=> b!3970677 (= res!1607258 (not (= lt!1390600 lt!1390607)))))

(assert (=> b!3970677 (= lt!1390600 (++!11066 lt!1390610 suffixResult!105))))

(declare-fun lt!1390597 () Unit!61028)

(declare-fun lemmaInv!879 (TokenValueInjection!13216) Unit!61028)

(assert (=> b!3970677 (= lt!1390597 (lemmaInv!879 (transformation!6664 (rule!9652 token!484))))))

(declare-fun ruleValid!2596 (LexerInterface!6253 Rule!13128) Bool)

(assert (=> b!3970677 (ruleValid!2596 thiss!21717 (rule!9652 token!484))))

(declare-fun lt!1390601 () Unit!61028)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1670 (LexerInterface!6253 Rule!13128 List!42502) Unit!61028)

(assert (=> b!3970677 (= lt!1390601 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1670 thiss!21717 (rule!9652 token!484) rules!2999))))

(declare-fun b!3970678 () Bool)

(declare-fun e!2459598 () Bool)

(declare-fun tp!1210648 () Bool)

(assert (=> b!3970678 (= e!2459598 (and tp_is_empty!20109 tp!1210648))))

(declare-fun b!3970679 () Bool)

(declare-fun res!1607262 () Bool)

(assert (=> b!3970679 (=> (not res!1607262) (not e!2459600))))

(declare-fun newSuffix!27 () List!42500)

(declare-fun size!31709 (List!42500) Int)

(assert (=> b!3970679 (= res!1607262 (>= (size!31709 suffix!1299) (size!31709 newSuffix!27)))))

(declare-fun b!3970680 () Bool)

(assert (=> b!3970680 (= e!2459597 e!2459592)))

(declare-fun res!1607257 () Bool)

(assert (=> b!3970680 (=> res!1607257 e!2459592)))

(assert (=> b!3970680 (= res!1607257 (not (isPrefix!3751 lt!1390610 lt!1390607)))))

(assert (=> b!3970680 (isPrefix!3751 prefix!494 lt!1390607)))

(declare-fun lt!1390604 () Unit!61028)

(assert (=> b!3970680 (= lt!1390604 (lemmaConcatTwoListThenFirstIsPrefix!2594 prefix!494 suffix!1299))))

(assert (=> b!3970680 (isPrefix!3751 lt!1390610 lt!1390600)))

(declare-fun lt!1390602 () Unit!61028)

(assert (=> b!3970680 (= lt!1390602 (lemmaConcatTwoListThenFirstIsPrefix!2594 lt!1390610 suffixResult!105))))

(declare-fun b!3970681 () Bool)

(declare-fun e!2459588 () Bool)

(declare-fun tp!1210659 () Bool)

(assert (=> b!3970681 (= e!2459588 (and e!2459604 tp!1210659))))

(declare-fun b!3970682 () Bool)

(declare-fun e!2459602 () Bool)

(declare-fun tp!1210653 () Bool)

(assert (=> b!3970682 (= e!2459602 (and tp_is_empty!20109 tp!1210653))))

(declare-fun b!3970683 () Bool)

(assert (=> b!3970683 (= e!2459584 e!2459589)))

(declare-fun res!1607259 () Bool)

(assert (=> b!3970683 (=> res!1607259 e!2459589)))

(declare-fun lt!1390603 () List!42500)

(assert (=> b!3970683 (= res!1607259 (or (not (= lt!1390607 lt!1390603)) (not (= lt!1390607 lt!1390606))))))

(assert (=> b!3970683 (= lt!1390603 lt!1390606)))

(assert (=> b!3970683 (= lt!1390606 (++!11066 lt!1390610 lt!1390609))))

(assert (=> b!3970683 (= lt!1390603 (++!11066 lt!1390605 suffix!1299))))

(assert (=> b!3970683 (= lt!1390609 (++!11066 lt!1390598 suffix!1299))))

(declare-fun lt!1390608 () Unit!61028)

(declare-fun lemmaConcatAssociativity!2386 (List!42500 List!42500 List!42500) Unit!61028)

(assert (=> b!3970683 (= lt!1390608 (lemmaConcatAssociativity!2386 lt!1390610 lt!1390598 suffix!1299))))

(declare-fun e!2459586 () Bool)

(declare-fun b!3970684 () Bool)

(declare-fun tp!1210654 () Bool)

(declare-fun inv!21 (TokenValue!6894) Bool)

(assert (=> b!3970684 (= e!2459586 (and (inv!21 (value!210558 token!484)) e!2459587 tp!1210654))))

(declare-fun b!3970685 () Bool)

(declare-fun res!1607251 () Bool)

(assert (=> b!3970685 (=> (not res!1607251) (not e!2459600))))

(assert (=> b!3970685 (= res!1607251 (isPrefix!3751 newSuffix!27 suffix!1299))))

(declare-fun res!1607256 () Bool)

(assert (=> start!373628 (=> (not res!1607256) (not e!2459600))))

(get-info :version)

(assert (=> start!373628 (= res!1607256 ((_ is Lexer!6251) thiss!21717))))

(assert (=> start!373628 e!2459600))

(declare-fun e!2459593 () Bool)

(assert (=> start!373628 e!2459593))

(declare-fun inv!56628 (Token!12466) Bool)

(assert (=> start!373628 (and (inv!56628 token!484) e!2459586)))

(declare-fun e!2459595 () Bool)

(assert (=> start!373628 e!2459595))

(assert (=> start!373628 e!2459603))

(assert (=> start!373628 e!2459598))

(assert (=> start!373628 true))

(assert (=> start!373628 e!2459588))

(assert (=> start!373628 e!2459602))

(declare-fun b!3970676 () Bool)

(declare-fun res!1607254 () Bool)

(assert (=> b!3970676 (=> (not res!1607254) (not e!2459585))))

(declare-fun newSuffixResult!27 () List!42500)

(assert (=> b!3970676 (= res!1607254 (= (++!11066 lt!1390610 newSuffixResult!27) (++!11066 prefix!494 newSuffix!27)))))

(assert (=> b!3970686 (= e!2459591 (and tp!1210649 tp!1210651))))

(declare-fun b!3970687 () Bool)

(declare-fun tp!1210656 () Bool)

(assert (=> b!3970687 (= e!2459593 (and tp_is_empty!20109 tp!1210656))))

(declare-fun b!3970688 () Bool)

(declare-fun tp!1210650 () Bool)

(assert (=> b!3970688 (= e!2459595 (and tp_is_empty!20109 tp!1210650))))

(declare-fun b!3970689 () Bool)

(declare-fun res!1607261 () Bool)

(assert (=> b!3970689 (=> (not res!1607261) (not e!2459600))))

(declare-fun isEmpty!25352 (List!42502) Bool)

(assert (=> b!3970689 (= res!1607261 (not (isEmpty!25352 rules!2999)))))

(declare-fun b!3970690 () Bool)

(assert (=> b!3970690 (= e!2459600 e!2459585)))

(declare-fun res!1607255 () Bool)

(assert (=> b!3970690 (=> (not res!1607255) (not e!2459585))))

(assert (=> b!3970690 (= res!1607255 (>= (size!31709 prefix!494) (size!31709 lt!1390610)))))

(declare-fun list!15724 (BalanceConc!25344) List!42500)

(declare-fun charsOf!4480 (Token!12466) BalanceConc!25344)

(assert (=> b!3970690 (= lt!1390610 (list!15724 (charsOf!4480 token!484)))))

(assert (= (and start!373628 res!1607256) b!3970689))

(assert (= (and b!3970689 res!1607261) b!3970668))

(assert (= (and b!3970668 res!1607253) b!3970679))

(assert (= (and b!3970679 res!1607262) b!3970685))

(assert (= (and b!3970685 res!1607251) b!3970690))

(assert (= (and b!3970690 res!1607255) b!3970676))

(assert (= (and b!3970676 res!1607254) b!3970674))

(assert (= (and b!3970674 res!1607260) b!3970677))

(assert (= (and b!3970677 (not res!1607258)) b!3970680))

(assert (= (and b!3970680 (not res!1607257)) b!3970671))

(assert (= (and b!3970671 (not res!1607252)) b!3970683))

(assert (= (and b!3970683 (not res!1607259)) b!3970670))

(assert (= (and start!373628 ((_ is Cons!42376) prefix!494)) b!3970687))

(assert (= b!3970672 b!3970686))

(assert (= b!3970684 b!3970672))

(assert (= start!373628 b!3970684))

(assert (= (and start!373628 ((_ is Cons!42376) suffixResult!105)) b!3970688))

(assert (= (and start!373628 ((_ is Cons!42376) suffix!1299)) b!3970673))

(assert (= (and start!373628 ((_ is Cons!42376) newSuffix!27)) b!3970678))

(assert (= b!3970669 b!3970675))

(assert (= b!3970681 b!3970669))

(assert (= (and start!373628 ((_ is Cons!42378) rules!2999)) b!3970681))

(assert (= (and start!373628 ((_ is Cons!42376) newSuffixResult!27)) b!3970682))

(declare-fun m!4540801 () Bool)

(assert (=> start!373628 m!4540801))

(declare-fun m!4540803 () Bool)

(assert (=> b!3970683 m!4540803))

(declare-fun m!4540805 () Bool)

(assert (=> b!3970683 m!4540805))

(declare-fun m!4540807 () Bool)

(assert (=> b!3970683 m!4540807))

(declare-fun m!4540809 () Bool)

(assert (=> b!3970683 m!4540809))

(declare-fun m!4540811 () Bool)

(assert (=> b!3970684 m!4540811))

(declare-fun m!4540813 () Bool)

(assert (=> b!3970690 m!4540813))

(declare-fun m!4540815 () Bool)

(assert (=> b!3970690 m!4540815))

(declare-fun m!4540817 () Bool)

(assert (=> b!3970690 m!4540817))

(assert (=> b!3970690 m!4540817))

(declare-fun m!4540819 () Bool)

(assert (=> b!3970690 m!4540819))

(declare-fun m!4540821 () Bool)

(assert (=> b!3970689 m!4540821))

(declare-fun m!4540823 () Bool)

(assert (=> b!3970674 m!4540823))

(declare-fun m!4540825 () Bool)

(assert (=> b!3970674 m!4540825))

(declare-fun m!4540827 () Bool)

(assert (=> b!3970671 m!4540827))

(declare-fun m!4540829 () Bool)

(assert (=> b!3970671 m!4540829))

(declare-fun m!4540831 () Bool)

(assert (=> b!3970671 m!4540831))

(declare-fun m!4540833 () Bool)

(assert (=> b!3970671 m!4540833))

(declare-fun m!4540835 () Bool)

(assert (=> b!3970677 m!4540835))

(declare-fun m!4540837 () Bool)

(assert (=> b!3970677 m!4540837))

(declare-fun m!4540839 () Bool)

(assert (=> b!3970677 m!4540839))

(declare-fun m!4540841 () Bool)

(assert (=> b!3970677 m!4540841))

(declare-fun m!4540843 () Bool)

(assert (=> b!3970668 m!4540843))

(declare-fun m!4540845 () Bool)

(assert (=> b!3970679 m!4540845))

(declare-fun m!4540847 () Bool)

(assert (=> b!3970679 m!4540847))

(declare-fun m!4540849 () Bool)

(assert (=> b!3970669 m!4540849))

(declare-fun m!4540851 () Bool)

(assert (=> b!3970669 m!4540851))

(declare-fun m!4540853 () Bool)

(assert (=> b!3970685 m!4540853))

(declare-fun m!4540855 () Bool)

(assert (=> b!3970672 m!4540855))

(declare-fun m!4540857 () Bool)

(assert (=> b!3970672 m!4540857))

(declare-fun m!4540859 () Bool)

(assert (=> b!3970680 m!4540859))

(declare-fun m!4540861 () Bool)

(assert (=> b!3970680 m!4540861))

(declare-fun m!4540863 () Bool)

(assert (=> b!3970680 m!4540863))

(declare-fun m!4540865 () Bool)

(assert (=> b!3970680 m!4540865))

(declare-fun m!4540867 () Bool)

(assert (=> b!3970680 m!4540867))

(declare-fun m!4540869 () Bool)

(assert (=> b!3970670 m!4540869))

(declare-fun m!4540871 () Bool)

(assert (=> b!3970670 m!4540871))

(declare-fun m!4540873 () Bool)

(assert (=> b!3970676 m!4540873))

(declare-fun m!4540875 () Bool)

(assert (=> b!3970676 m!4540875))

(check-sat (not b!3970670) (not b_next!110695) (not b!3970674) b_and!305237 (not b!3970679) (not b!3970678) (not b!3970682) (not b!3970685) (not b!3970676) (not b_next!110691) (not b!3970677) (not b!3970684) (not b!3970672) (not b!3970690) (not start!373628) (not b!3970669) (not b!3970673) (not b!3970671) (not b!3970689) (not b!3970687) (not b!3970683) b_and!305233 (not b!3970681) (not b!3970668) (not b_next!110693) b_and!305235 (not b_next!110689) b_and!305231 (not b!3970680) tp_is_empty!20109 (not b!3970688))
(check-sat (not b_next!110695) b_and!305237 (not b_next!110691) b_and!305233 (not b_next!110693) b_and!305235 (not b_next!110689) b_and!305231)
