; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14886 () Bool)

(assert start!14886)

(declare-fun b!141828 () Bool)

(declare-fun b_free!4711 () Bool)

(declare-fun b_next!4711 () Bool)

(assert (=> b!141828 (= b_free!4711 (not b_next!4711))))

(declare-fun tp!74764 () Bool)

(declare-fun b_and!7269 () Bool)

(assert (=> b!141828 (= tp!74764 b_and!7269)))

(declare-fun b_free!4713 () Bool)

(declare-fun b_next!4713 () Bool)

(assert (=> b!141828 (= b_free!4713 (not b_next!4713))))

(declare-fun tp!74769 () Bool)

(declare-fun b_and!7271 () Bool)

(assert (=> b!141828 (= tp!74769 b_and!7271)))

(declare-fun b!141815 () Bool)

(declare-fun b_free!4715 () Bool)

(declare-fun b_next!4715 () Bool)

(assert (=> b!141815 (= b_free!4715 (not b_next!4715))))

(declare-fun tp!74762 () Bool)

(declare-fun b_and!7273 () Bool)

(assert (=> b!141815 (= tp!74762 b_and!7273)))

(declare-fun b_free!4717 () Bool)

(declare-fun b_next!4717 () Bool)

(assert (=> b!141815 (= b_free!4717 (not b_next!4717))))

(declare-fun tp!74759 () Bool)

(declare-fun b_and!7275 () Bool)

(assert (=> b!141815 (= tp!74759 b_and!7275)))

(declare-fun b_free!4719 () Bool)

(declare-fun b_next!4719 () Bool)

(assert (=> start!14886 (= b_free!4719 (not b_next!4719))))

(declare-fun tp!74763 () Bool)

(declare-fun b_and!7277 () Bool)

(assert (=> start!14886 (= tp!74763 b_and!7277)))

(declare-fun b!141819 () Bool)

(declare-fun b_free!4721 () Bool)

(declare-fun b_next!4721 () Bool)

(assert (=> b!141819 (= b_free!4721 (not b_next!4721))))

(declare-fun tp!74766 () Bool)

(declare-fun b_and!7279 () Bool)

(assert (=> b!141819 (= tp!74766 b_and!7279)))

(declare-fun b_free!4723 () Bool)

(declare-fun b_next!4723 () Bool)

(assert (=> b!141819 (= b_free!4723 (not b_next!4723))))

(declare-fun tp!74773 () Bool)

(declare-fun b_and!7281 () Bool)

(assert (=> b!141819 (= tp!74773 b_and!7281)))

(declare-fun e!83695 () Bool)

(declare-fun tp!74767 () Bool)

(declare-fun b!141810 () Bool)

(declare-datatypes ((List!2425 0))(
  ( (Nil!2415) (Cons!2415 (h!7812 (_ BitVec 16)) (t!23659 List!2425)) )
))
(declare-datatypes ((TokenValue!429 0))(
  ( (FloatLiteralValue!858 (text!3448 List!2425)) (TokenValueExt!428 (__x!2345 Int)) (Broken!2145 (value!15889 List!2425)) (Object!438) (End!429) (Def!429) (Underscore!429) (Match!429) (Else!429) (Error!429) (Case!429) (If!429) (Extends!429) (Abstract!429) (Class!429) (Val!429) (DelimiterValue!858 (del!489 List!2425)) (KeywordValue!435 (value!15890 List!2425)) (CommentValue!858 (value!15891 List!2425)) (WhitespaceValue!858 (value!15892 List!2425)) (IndentationValue!429 (value!15893 List!2425)) (String!3224) (Int32!429) (Broken!2146 (value!15894 List!2425)) (Boolean!430) (Unit!1817) (OperatorValue!432 (op!489 List!2425)) (IdentifierValue!858 (value!15895 List!2425)) (IdentifierValue!859 (value!15896 List!2425)) (WhitespaceValue!859 (value!15897 List!2425)) (True!858) (False!858) (Broken!2147 (value!15898 List!2425)) (Broken!2148 (value!15899 List!2425)) (True!859) (RightBrace!429) (RightBracket!429) (Colon!429) (Null!429) (Comma!429) (LeftBracket!429) (False!859) (LeftBrace!429) (ImaginaryLiteralValue!429 (text!3449 List!2425)) (StringLiteralValue!1287 (value!15900 List!2425)) (EOFValue!429 (value!15901 List!2425)) (IdentValue!429 (value!15902 List!2425)) (DelimiterValue!859 (value!15903 List!2425)) (DedentValue!429 (value!15904 List!2425)) (NewLineValue!429 (value!15905 List!2425)) (IntegerValue!1287 (value!15906 (_ BitVec 32)) (text!3450 List!2425)) (IntegerValue!1288 (value!15907 Int) (text!3451 List!2425)) (Times!429) (Or!429) (Equal!429) (Minus!429) (Broken!2149 (value!15908 List!2425)) (And!429) (Div!429) (LessEqual!429) (Mod!429) (Concat!1060) (Not!429) (Plus!429) (SpaceValue!429 (value!15909 List!2425)) (IntegerValue!1289 (value!15910 Int) (text!3452 List!2425)) (StringLiteralValue!1288 (text!3453 List!2425)) (FloatLiteralValue!859 (text!3454 List!2425)) (BytesLiteralValue!429 (value!15911 List!2425)) (CommentValue!859 (value!15912 List!2425)) (StringLiteralValue!1289 (value!15913 List!2425)) (ErrorTokenValue!429 (msg!490 List!2425)) )
))
(declare-datatypes ((C!2184 0))(
  ( (C!2185 (val!978 Int)) )
))
(declare-datatypes ((List!2426 0))(
  ( (Nil!2416) (Cons!2416 (h!7813 C!2184) (t!23660 List!2426)) )
))
(declare-datatypes ((IArray!1275 0))(
  ( (IArray!1276 (innerList!695 List!2426)) )
))
(declare-datatypes ((Conc!637 0))(
  ( (Node!637 (left!1831 Conc!637) (right!2161 Conc!637) (csize!1504 Int) (cheight!848 Int)) (Leaf!1180 (xs!3232 IArray!1275) (csize!1505 Int)) (Empty!637) )
))
(declare-datatypes ((BalanceConc!1282 0))(
  ( (BalanceConc!1283 (c!29378 Conc!637)) )
))
(declare-datatypes ((TokenValueInjection!630 0))(
  ( (TokenValueInjection!631 (toValue!1022 Int) (toChars!881 Int)) )
))
(declare-datatypes ((Regex!631 0))(
  ( (ElementMatch!631 (c!29379 C!2184)) (Concat!1061 (regOne!1774 Regex!631) (regTwo!1774 Regex!631)) (EmptyExpr!631) (Star!631 (reg!960 Regex!631)) (EmptyLang!631) (Union!631 (regOne!1775 Regex!631) (regTwo!1775 Regex!631)) )
))
(declare-datatypes ((String!3225 0))(
  ( (String!3226 (value!15914 String)) )
))
(declare-datatypes ((Rule!614 0))(
  ( (Rule!615 (regex!407 Regex!631) (tag!585 String!3225) (isSeparator!407 Bool) (transformation!407 TokenValueInjection!630)) )
))
(declare-datatypes ((Token!558 0))(
  ( (Token!559 (value!15915 TokenValue!429) (rule!914 Rule!614) (size!2115 Int) (originalCharacters!450 List!2426)) )
))
(declare-datatypes ((List!2427 0))(
  ( (Nil!2417) (Cons!2417 (h!7814 Token!558) (t!23661 List!2427)) )
))
(declare-fun l2!3099 () List!2427)

(declare-fun e!83704 () Bool)

(declare-fun inv!21 (TokenValue!429) Bool)

(assert (=> b!141810 (= e!83704 (and (inv!21 (value!15915 (h!7814 l2!3099))) e!83695 tp!74767))))

(declare-fun res!65711 () Bool)

(declare-fun e!83692 () Bool)

(assert (=> start!14886 (=> (not res!65711) (not e!83692))))

(declare-datatypes ((LexerInterface!293 0))(
  ( (LexerInterfaceExt!290 (__x!2346 Int)) (Lexer!291) )
))
(declare-fun thiss!27322 () LexerInterface!293)

(get-info :version)

(assert (=> start!14886 (= res!65711 ((_ is Lexer!291) thiss!27322))))

(assert (=> start!14886 e!83692))

(assert (=> start!14886 true))

(declare-fun e!83701 () Bool)

(assert (=> start!14886 e!83701))

(assert (=> start!14886 tp!74763))

(declare-fun e!83694 () Bool)

(assert (=> start!14886 e!83694))

(declare-fun e!83696 () Bool)

(assert (=> start!14886 e!83696))

(declare-fun b!141811 () Bool)

(declare-fun res!65713 () Bool)

(assert (=> b!141811 (=> (not res!65713) (not e!83692))))

(declare-datatypes ((List!2428 0))(
  ( (Nil!2418) (Cons!2418 (h!7815 Rule!614) (t!23662 List!2428)) )
))
(declare-fun rules!4268 () List!2428)

(declare-fun p!3028 () Int)

(declare-fun l1!3130 () List!2427)

(declare-fun tokensListTwoByTwoPredicateList!32 (LexerInterface!293 List!2427 List!2428 Int) Bool)

(assert (=> b!141811 (= res!65713 (tokensListTwoByTwoPredicateList!32 thiss!27322 l1!3130 rules!4268 p!3028))))

(declare-fun e!83690 () Bool)

(declare-fun e!83706 () Bool)

(declare-fun b!141812 () Bool)

(declare-fun tp!74772 () Bool)

(assert (=> b!141812 (= e!83706 (and (inv!21 (value!15915 (h!7814 l1!3130))) e!83690 tp!74772))))

(declare-fun b!141813 () Bool)

(declare-fun ++!528 (List!2427 List!2427) List!2427)

(assert (=> b!141813 (= e!83692 (not (tokensListTwoByTwoPredicateList!32 thiss!27322 (++!528 l1!3130 l2!3099) rules!4268 p!3028)))))

(declare-fun b!141814 () Bool)

(declare-fun res!65714 () Bool)

(assert (=> b!141814 (=> (not res!65714) (not e!83692))))

(declare-fun e!83707 () Bool)

(assert (=> b!141814 (= res!65714 e!83707)))

(declare-fun res!65719 () Bool)

(assert (=> b!141814 (=> res!65719 e!83707)))

(assert (=> b!141814 (= res!65719 (not ((_ is Cons!2417) l1!3130)))))

(declare-fun e!83689 () Bool)

(assert (=> b!141815 (= e!83689 (and tp!74762 tp!74759))))

(declare-fun b!141816 () Bool)

(declare-fun e!83699 () Bool)

(declare-fun tp!74760 () Bool)

(declare-fun inv!3182 (String!3225) Bool)

(declare-fun inv!3185 (TokenValueInjection!630) Bool)

(assert (=> b!141816 (= e!83690 (and tp!74760 (inv!3182 (tag!585 (rule!914 (h!7814 l1!3130)))) (inv!3185 (transformation!407 (rule!914 (h!7814 l1!3130)))) e!83699))))

(declare-fun e!83702 () Bool)

(declare-fun b!141817 () Bool)

(declare-fun e!83691 () Bool)

(declare-fun tp!74761 () Bool)

(assert (=> b!141817 (= e!83691 (and tp!74761 (inv!3182 (tag!585 (h!7815 rules!4268))) (inv!3185 (transformation!407 (h!7815 rules!4268))) e!83702))))

(declare-fun b!141818 () Bool)

(declare-fun e!83697 () Bool)

(declare-fun isEmpty!926 (List!2427) Bool)

(assert (=> b!141818 (= e!83697 (isEmpty!926 (t!23661 l1!3130)))))

(assert (=> b!141819 (= e!83702 (and tp!74766 tp!74773))))

(declare-fun b!141820 () Bool)

(declare-fun res!65712 () Bool)

(assert (=> b!141820 (=> (not res!65712) (not e!83692))))

(assert (=> b!141820 (= res!65712 (not (isEmpty!926 l2!3099)))))

(declare-fun b!141821 () Bool)

(declare-fun tp!74771 () Bool)

(declare-fun inv!3186 (Token!558) Bool)

(assert (=> b!141821 (= e!83696 (and (inv!3186 (h!7814 l2!3099)) e!83704 tp!74771))))

(declare-fun b!141822 () Bool)

(declare-fun res!65718 () Bool)

(assert (=> b!141822 (=> (not res!65718) (not e!83692))))

(assert (=> b!141822 (= res!65718 (tokensListTwoByTwoPredicateList!32 thiss!27322 l2!3099 rules!4268 p!3028))))

(declare-fun tp!74765 () Bool)

(declare-fun b!141823 () Bool)

(assert (=> b!141823 (= e!83695 (and tp!74765 (inv!3182 (tag!585 (rule!914 (h!7814 l2!3099)))) (inv!3185 (transformation!407 (rule!914 (h!7814 l2!3099)))) e!83689))))

(declare-fun b!141824 () Bool)

(declare-fun tp!74768 () Bool)

(assert (=> b!141824 (= e!83694 (and (inv!3186 (h!7814 l1!3130)) e!83706 tp!74768))))

(declare-fun b!141825 () Bool)

(declare-fun res!65715 () Bool)

(assert (=> b!141825 (=> (not res!65715) (not e!83692))))

(declare-fun dynLambda!813 (Int Token!558 Token!558 List!2428) Bool)

(declare-fun last!41 (List!2427) Token!558)

(declare-fun head!566 (List!2427) Token!558)

(assert (=> b!141825 (= res!65715 (dynLambda!813 p!3028 (last!41 l1!3130) (head!566 l2!3099) rules!4268))))

(declare-fun b!141826 () Bool)

(declare-fun res!65710 () Bool)

(assert (=> b!141826 (=> (not res!65710) (not e!83692))))

(assert (=> b!141826 (= res!65710 e!83697)))

(declare-fun res!65716 () Bool)

(assert (=> b!141826 (=> res!65716 e!83697)))

(assert (=> b!141826 (= res!65716 (not ((_ is Cons!2417) l1!3130)))))

(declare-fun b!141827 () Bool)

(declare-fun res!65717 () Bool)

(assert (=> b!141827 (=> (not res!65717) (not e!83692))))

(assert (=> b!141827 (= res!65717 (not (isEmpty!926 l1!3130)))))

(assert (=> b!141828 (= e!83699 (and tp!74764 tp!74769))))

(declare-fun b!141829 () Bool)

(assert (=> b!141829 (= e!83707 (not (isEmpty!926 (t!23661 l1!3130))))))

(declare-fun b!141830 () Bool)

(declare-fun tp!74770 () Bool)

(assert (=> b!141830 (= e!83701 (and e!83691 tp!74770))))

(assert (= (and start!14886 res!65711) b!141811))

(assert (= (and b!141811 res!65713) b!141822))

(assert (= (and b!141822 res!65718) b!141827))

(assert (= (and b!141827 res!65717) b!141820))

(assert (= (and b!141820 res!65712) b!141825))

(assert (= (and b!141825 res!65715) b!141826))

(assert (= (and b!141826 (not res!65716)) b!141818))

(assert (= (and b!141826 res!65710) b!141814))

(assert (= (and b!141814 (not res!65719)) b!141829))

(assert (= (and b!141814 res!65714) b!141813))

(assert (= b!141817 b!141819))

(assert (= b!141830 b!141817))

(assert (= (and start!14886 ((_ is Cons!2418) rules!4268)) b!141830))

(assert (= b!141816 b!141828))

(assert (= b!141812 b!141816))

(assert (= b!141824 b!141812))

(assert (= (and start!14886 ((_ is Cons!2417) l1!3130)) b!141824))

(assert (= b!141823 b!141815))

(assert (= b!141810 b!141823))

(assert (= b!141821 b!141810))

(assert (= (and start!14886 ((_ is Cons!2417) l2!3099)) b!141821))

(declare-fun b_lambda!2201 () Bool)

(assert (=> (not b_lambda!2201) (not b!141825)))

(declare-fun t!23658 () Bool)

(declare-fun tb!4315 () Bool)

(assert (=> (and start!14886 (= p!3028 p!3028) t!23658) tb!4315))

(declare-fun result!6570 () Bool)

(assert (=> tb!4315 (= result!6570 true)))

(assert (=> b!141825 t!23658))

(declare-fun b_and!7283 () Bool)

(assert (= b_and!7277 (and (=> t!23658 result!6570) b_and!7283)))

(declare-fun m!124755 () Bool)

(assert (=> b!141825 m!124755))

(declare-fun m!124757 () Bool)

(assert (=> b!141825 m!124757))

(assert (=> b!141825 m!124755))

(assert (=> b!141825 m!124757))

(declare-fun m!124759 () Bool)

(assert (=> b!141825 m!124759))

(declare-fun m!124761 () Bool)

(assert (=> b!141816 m!124761))

(declare-fun m!124763 () Bool)

(assert (=> b!141816 m!124763))

(declare-fun m!124765 () Bool)

(assert (=> b!141822 m!124765))

(declare-fun m!124767 () Bool)

(assert (=> b!141820 m!124767))

(declare-fun m!124769 () Bool)

(assert (=> b!141829 m!124769))

(assert (=> b!141818 m!124769))

(declare-fun m!124771 () Bool)

(assert (=> b!141827 m!124771))

(declare-fun m!124773 () Bool)

(assert (=> b!141823 m!124773))

(declare-fun m!124775 () Bool)

(assert (=> b!141823 m!124775))

(declare-fun m!124777 () Bool)

(assert (=> b!141810 m!124777))

(declare-fun m!124779 () Bool)

(assert (=> b!141812 m!124779))

(declare-fun m!124781 () Bool)

(assert (=> b!141813 m!124781))

(assert (=> b!141813 m!124781))

(declare-fun m!124783 () Bool)

(assert (=> b!141813 m!124783))

(declare-fun m!124785 () Bool)

(assert (=> b!141824 m!124785))

(declare-fun m!124787 () Bool)

(assert (=> b!141817 m!124787))

(declare-fun m!124789 () Bool)

(assert (=> b!141817 m!124789))

(declare-fun m!124791 () Bool)

(assert (=> b!141811 m!124791))

(declare-fun m!124793 () Bool)

(assert (=> b!141821 m!124793))

(check-sat b_and!7283 (not b!141812) (not b_next!4717) (not b!141827) (not b!141817) (not b!141810) (not b!141821) (not b!141822) (not b!141820) b_and!7279 (not b_next!4715) (not b_next!4713) b_and!7271 (not b!141830) b_and!7269 (not b!141824) b_and!7275 b_and!7273 (not b_next!4721) (not b!141818) (not b_next!4723) (not b!141813) (not b!141829) (not b_next!4719) (not b_next!4711) (not b!141811) (not b!141816) (not b!141825) (not b!141823) b_and!7281 (not b_lambda!2201))
(check-sat b_and!7283 (not b_next!4717) b_and!7275 (not b_next!4723) (not b_next!4719) (not b_next!4711) b_and!7279 (not b_next!4715) (not b_next!4713) b_and!7281 b_and!7271 b_and!7269 b_and!7273 (not b_next!4721))
(get-model)

(declare-fun b_lambda!2203 () Bool)

(assert (= b_lambda!2201 (or (and start!14886 b_free!4719) b_lambda!2203)))

(check-sat b_and!7283 (not b!141812) (not b!141827) (not b!141817) (not b!141810) (not b!141821) (not b!141822) (not b!141820) b_and!7279 (not b_next!4715) (not b_next!4713) (not b_lambda!2203) (not b_next!4717) b_and!7271 (not b!141830) b_and!7269 (not b!141824) b_and!7275 b_and!7273 (not b_next!4721) (not b!141818) (not b_next!4723) (not b!141813) (not b!141829) (not b_next!4719) (not b_next!4711) (not b!141811) (not b!141816) (not b!141825) (not b!141823) b_and!7281)
(check-sat b_and!7283 (not b_next!4717) b_and!7275 (not b_next!4723) (not b_next!4719) (not b_next!4711) b_and!7279 (not b_next!4715) (not b_next!4713) b_and!7281 b_and!7271 b_and!7269 b_and!7273 (not b_next!4721))
(get-model)

(declare-fun d!33731 () Bool)

(assert (=> d!33731 (= (isEmpty!926 l2!3099) ((_ is Nil!2417) l2!3099))))

(assert (=> b!141820 d!33731))

(declare-fun b!141841 () Bool)

(declare-fun e!83716 () Bool)

(declare-fun inv!17 (TokenValue!429) Bool)

(assert (=> b!141841 (= e!83716 (inv!17 (value!15915 (h!7814 l2!3099))))))

(declare-fun b!141842 () Bool)

(declare-fun e!83714 () Bool)

(assert (=> b!141842 (= e!83714 e!83716)))

(declare-fun c!29384 () Bool)

(assert (=> b!141842 (= c!29384 ((_ is IntegerValue!1288) (value!15915 (h!7814 l2!3099))))))

(declare-fun b!141843 () Bool)

(declare-fun inv!16 (TokenValue!429) Bool)

(assert (=> b!141843 (= e!83714 (inv!16 (value!15915 (h!7814 l2!3099))))))

(declare-fun b!141844 () Bool)

(declare-fun res!65722 () Bool)

(declare-fun e!83715 () Bool)

(assert (=> b!141844 (=> res!65722 e!83715)))

(assert (=> b!141844 (= res!65722 (not ((_ is IntegerValue!1289) (value!15915 (h!7814 l2!3099)))))))

(assert (=> b!141844 (= e!83716 e!83715)))

(declare-fun b!141845 () Bool)

(declare-fun inv!15 (TokenValue!429) Bool)

(assert (=> b!141845 (= e!83715 (inv!15 (value!15915 (h!7814 l2!3099))))))

(declare-fun d!33733 () Bool)

(declare-fun c!29385 () Bool)

(assert (=> d!33733 (= c!29385 ((_ is IntegerValue!1287) (value!15915 (h!7814 l2!3099))))))

(assert (=> d!33733 (= (inv!21 (value!15915 (h!7814 l2!3099))) e!83714)))

(assert (= (and d!33733 c!29385) b!141843))

(assert (= (and d!33733 (not c!29385)) b!141842))

(assert (= (and b!141842 c!29384) b!141841))

(assert (= (and b!141842 (not c!29384)) b!141844))

(assert (= (and b!141844 (not res!65722)) b!141845))

(declare-fun m!124795 () Bool)

(assert (=> b!141841 m!124795))

(declare-fun m!124797 () Bool)

(assert (=> b!141843 m!124797))

(declare-fun m!124799 () Bool)

(assert (=> b!141845 m!124799))

(assert (=> b!141810 d!33733))

(declare-fun d!33735 () Bool)

(declare-fun res!65727 () Bool)

(declare-fun e!83719 () Bool)

(assert (=> d!33735 (=> (not res!65727) (not e!83719))))

(declare-fun isEmpty!927 (List!2426) Bool)

(assert (=> d!33735 (= res!65727 (not (isEmpty!927 (originalCharacters!450 (h!7814 l2!3099)))))))

(assert (=> d!33735 (= (inv!3186 (h!7814 l2!3099)) e!83719)))

(declare-fun b!141850 () Bool)

(declare-fun res!65728 () Bool)

(assert (=> b!141850 (=> (not res!65728) (not e!83719))))

(declare-fun list!844 (BalanceConc!1282) List!2426)

(declare-fun dynLambda!814 (Int TokenValue!429) BalanceConc!1282)

(assert (=> b!141850 (= res!65728 (= (originalCharacters!450 (h!7814 l2!3099)) (list!844 (dynLambda!814 (toChars!881 (transformation!407 (rule!914 (h!7814 l2!3099)))) (value!15915 (h!7814 l2!3099))))))))

(declare-fun b!141851 () Bool)

(declare-fun size!2116 (List!2426) Int)

(assert (=> b!141851 (= e!83719 (= (size!2115 (h!7814 l2!3099)) (size!2116 (originalCharacters!450 (h!7814 l2!3099)))))))

(assert (= (and d!33735 res!65727) b!141850))

(assert (= (and b!141850 res!65728) b!141851))

(declare-fun b_lambda!2207 () Bool)

(assert (=> (not b_lambda!2207) (not b!141850)))

(declare-fun tb!4317 () Bool)

(declare-fun t!23664 () Bool)

(assert (=> (and b!141828 (= (toChars!881 (transformation!407 (rule!914 (h!7814 l1!3130)))) (toChars!881 (transformation!407 (rule!914 (h!7814 l2!3099))))) t!23664) tb!4317))

(declare-fun b!141856 () Bool)

(declare-fun e!83722 () Bool)

(declare-fun tp!74776 () Bool)

(declare-fun inv!3187 (Conc!637) Bool)

(assert (=> b!141856 (= e!83722 (and (inv!3187 (c!29378 (dynLambda!814 (toChars!881 (transformation!407 (rule!914 (h!7814 l2!3099)))) (value!15915 (h!7814 l2!3099))))) tp!74776))))

(declare-fun result!6572 () Bool)

(declare-fun inv!3188 (BalanceConc!1282) Bool)

(assert (=> tb!4317 (= result!6572 (and (inv!3188 (dynLambda!814 (toChars!881 (transformation!407 (rule!914 (h!7814 l2!3099)))) (value!15915 (h!7814 l2!3099)))) e!83722))))

(assert (= tb!4317 b!141856))

(declare-fun m!124801 () Bool)

(assert (=> b!141856 m!124801))

(declare-fun m!124803 () Bool)

(assert (=> tb!4317 m!124803))

(assert (=> b!141850 t!23664))

(declare-fun b_and!7285 () Bool)

(assert (= b_and!7271 (and (=> t!23664 result!6572) b_and!7285)))

(declare-fun t!23666 () Bool)

(declare-fun tb!4319 () Bool)

(assert (=> (and b!141815 (= (toChars!881 (transformation!407 (rule!914 (h!7814 l2!3099)))) (toChars!881 (transformation!407 (rule!914 (h!7814 l2!3099))))) t!23666) tb!4319))

(declare-fun result!6576 () Bool)

(assert (= result!6576 result!6572))

(assert (=> b!141850 t!23666))

(declare-fun b_and!7287 () Bool)

(assert (= b_and!7275 (and (=> t!23666 result!6576) b_and!7287)))

(declare-fun t!23668 () Bool)

(declare-fun tb!4321 () Bool)

(assert (=> (and b!141819 (= (toChars!881 (transformation!407 (h!7815 rules!4268))) (toChars!881 (transformation!407 (rule!914 (h!7814 l2!3099))))) t!23668) tb!4321))

(declare-fun result!6578 () Bool)

(assert (= result!6578 result!6572))

(assert (=> b!141850 t!23668))

(declare-fun b_and!7289 () Bool)

(assert (= b_and!7281 (and (=> t!23668 result!6578) b_and!7289)))

(declare-fun m!124805 () Bool)

(assert (=> d!33735 m!124805))

(declare-fun m!124807 () Bool)

(assert (=> b!141850 m!124807))

(assert (=> b!141850 m!124807))

(declare-fun m!124809 () Bool)

(assert (=> b!141850 m!124809))

(declare-fun m!124811 () Bool)

(assert (=> b!141851 m!124811))

(assert (=> b!141821 d!33735))

(declare-fun d!33737 () Bool)

(assert (=> d!33737 (= (isEmpty!926 (t!23661 l1!3130)) ((_ is Nil!2417) (t!23661 l1!3130)))))

(assert (=> b!141818 d!33737))

(assert (=> b!141829 d!33737))

(declare-fun d!33739 () Bool)

(assert (=> d!33739 (= (inv!3182 (tag!585 (rule!914 (h!7814 l1!3130)))) (= (mod (str.len (value!15914 (tag!585 (rule!914 (h!7814 l1!3130))))) 2) 0))))

(assert (=> b!141816 d!33739))

(declare-fun d!33741 () Bool)

(declare-fun res!65731 () Bool)

(declare-fun e!83725 () Bool)

(assert (=> d!33741 (=> (not res!65731) (not e!83725))))

(declare-fun semiInverseModEq!140 (Int Int) Bool)

(assert (=> d!33741 (= res!65731 (semiInverseModEq!140 (toChars!881 (transformation!407 (rule!914 (h!7814 l1!3130)))) (toValue!1022 (transformation!407 (rule!914 (h!7814 l1!3130))))))))

(assert (=> d!33741 (= (inv!3185 (transformation!407 (rule!914 (h!7814 l1!3130)))) e!83725)))

(declare-fun b!141859 () Bool)

(declare-fun equivClasses!123 (Int Int) Bool)

(assert (=> b!141859 (= e!83725 (equivClasses!123 (toChars!881 (transformation!407 (rule!914 (h!7814 l1!3130)))) (toValue!1022 (transformation!407 (rule!914 (h!7814 l1!3130))))))))

(assert (= (and d!33741 res!65731) b!141859))

(declare-fun m!124813 () Bool)

(assert (=> d!33741 m!124813))

(declare-fun m!124815 () Bool)

(assert (=> b!141859 m!124815))

(assert (=> b!141816 d!33741))

(declare-fun d!33743 () Bool)

(assert (=> d!33743 (= (isEmpty!926 l1!3130) ((_ is Nil!2417) l1!3130))))

(assert (=> b!141827 d!33743))

(declare-fun d!33745 () Bool)

(assert (=> d!33745 (= (inv!3182 (tag!585 (h!7815 rules!4268))) (= (mod (str.len (value!15914 (tag!585 (h!7815 rules!4268)))) 2) 0))))

(assert (=> b!141817 d!33745))

(declare-fun d!33747 () Bool)

(declare-fun res!65732 () Bool)

(declare-fun e!83726 () Bool)

(assert (=> d!33747 (=> (not res!65732) (not e!83726))))

(assert (=> d!33747 (= res!65732 (semiInverseModEq!140 (toChars!881 (transformation!407 (h!7815 rules!4268))) (toValue!1022 (transformation!407 (h!7815 rules!4268)))))))

(assert (=> d!33747 (= (inv!3185 (transformation!407 (h!7815 rules!4268))) e!83726)))

(declare-fun b!141860 () Bool)

(assert (=> b!141860 (= e!83726 (equivClasses!123 (toChars!881 (transformation!407 (h!7815 rules!4268))) (toValue!1022 (transformation!407 (h!7815 rules!4268)))))))

(assert (= (and d!33747 res!65732) b!141860))

(declare-fun m!124817 () Bool)

(assert (=> d!33747 m!124817))

(declare-fun m!124819 () Bool)

(assert (=> b!141860 m!124819))

(assert (=> b!141817 d!33747))

(declare-fun d!33749 () Bool)

(declare-fun res!65733 () Bool)

(declare-fun e!83727 () Bool)

(assert (=> d!33749 (=> (not res!65733) (not e!83727))))

(assert (=> d!33749 (= res!65733 (not (isEmpty!927 (originalCharacters!450 (h!7814 l1!3130)))))))

(assert (=> d!33749 (= (inv!3186 (h!7814 l1!3130)) e!83727)))

(declare-fun b!141861 () Bool)

(declare-fun res!65734 () Bool)

(assert (=> b!141861 (=> (not res!65734) (not e!83727))))

(assert (=> b!141861 (= res!65734 (= (originalCharacters!450 (h!7814 l1!3130)) (list!844 (dynLambda!814 (toChars!881 (transformation!407 (rule!914 (h!7814 l1!3130)))) (value!15915 (h!7814 l1!3130))))))))

(declare-fun b!141862 () Bool)

(assert (=> b!141862 (= e!83727 (= (size!2115 (h!7814 l1!3130)) (size!2116 (originalCharacters!450 (h!7814 l1!3130)))))))

(assert (= (and d!33749 res!65733) b!141861))

(assert (= (and b!141861 res!65734) b!141862))

(declare-fun b_lambda!2209 () Bool)

(assert (=> (not b_lambda!2209) (not b!141861)))

(declare-fun t!23670 () Bool)

(declare-fun tb!4323 () Bool)

(assert (=> (and b!141828 (= (toChars!881 (transformation!407 (rule!914 (h!7814 l1!3130)))) (toChars!881 (transformation!407 (rule!914 (h!7814 l1!3130))))) t!23670) tb!4323))

(declare-fun b!141863 () Bool)

(declare-fun e!83728 () Bool)

(declare-fun tp!74777 () Bool)

(assert (=> b!141863 (= e!83728 (and (inv!3187 (c!29378 (dynLambda!814 (toChars!881 (transformation!407 (rule!914 (h!7814 l1!3130)))) (value!15915 (h!7814 l1!3130))))) tp!74777))))

(declare-fun result!6580 () Bool)

(assert (=> tb!4323 (= result!6580 (and (inv!3188 (dynLambda!814 (toChars!881 (transformation!407 (rule!914 (h!7814 l1!3130)))) (value!15915 (h!7814 l1!3130)))) e!83728))))

(assert (= tb!4323 b!141863))

(declare-fun m!124821 () Bool)

(assert (=> b!141863 m!124821))

(declare-fun m!124823 () Bool)

(assert (=> tb!4323 m!124823))

(assert (=> b!141861 t!23670))

(declare-fun b_and!7291 () Bool)

(assert (= b_and!7285 (and (=> t!23670 result!6580) b_and!7291)))

(declare-fun t!23672 () Bool)

(declare-fun tb!4325 () Bool)

(assert (=> (and b!141815 (= (toChars!881 (transformation!407 (rule!914 (h!7814 l2!3099)))) (toChars!881 (transformation!407 (rule!914 (h!7814 l1!3130))))) t!23672) tb!4325))

(declare-fun result!6582 () Bool)

(assert (= result!6582 result!6580))

(assert (=> b!141861 t!23672))

(declare-fun b_and!7293 () Bool)

(assert (= b_and!7287 (and (=> t!23672 result!6582) b_and!7293)))

(declare-fun t!23674 () Bool)

(declare-fun tb!4327 () Bool)

(assert (=> (and b!141819 (= (toChars!881 (transformation!407 (h!7815 rules!4268))) (toChars!881 (transformation!407 (rule!914 (h!7814 l1!3130))))) t!23674) tb!4327))

(declare-fun result!6584 () Bool)

(assert (= result!6584 result!6580))

(assert (=> b!141861 t!23674))

(declare-fun b_and!7295 () Bool)

(assert (= b_and!7289 (and (=> t!23674 result!6584) b_and!7295)))

(declare-fun m!124825 () Bool)

(assert (=> d!33749 m!124825))

(declare-fun m!124827 () Bool)

(assert (=> b!141861 m!124827))

(assert (=> b!141861 m!124827))

(declare-fun m!124829 () Bool)

(assert (=> b!141861 m!124829))

(declare-fun m!124831 () Bool)

(assert (=> b!141862 m!124831))

(assert (=> b!141824 d!33749))

(declare-fun d!33751 () Bool)

(declare-fun lt!41211 () Token!558)

(declare-fun contains!387 (List!2427 Token!558) Bool)

(assert (=> d!33751 (contains!387 l1!3130 lt!41211)))

(declare-fun e!83731 () Token!558)

(assert (=> d!33751 (= lt!41211 e!83731)))

(declare-fun c!29388 () Bool)

(assert (=> d!33751 (= c!29388 (and ((_ is Cons!2417) l1!3130) ((_ is Nil!2417) (t!23661 l1!3130))))))

(assert (=> d!33751 (not (isEmpty!926 l1!3130))))

(assert (=> d!33751 (= (last!41 l1!3130) lt!41211)))

(declare-fun b!141868 () Bool)

(assert (=> b!141868 (= e!83731 (h!7814 l1!3130))))

(declare-fun b!141869 () Bool)

(assert (=> b!141869 (= e!83731 (last!41 (t!23661 l1!3130)))))

(assert (= (and d!33751 c!29388) b!141868))

(assert (= (and d!33751 (not c!29388)) b!141869))

(declare-fun m!124833 () Bool)

(assert (=> d!33751 m!124833))

(assert (=> d!33751 m!124771))

(declare-fun m!124835 () Bool)

(assert (=> b!141869 m!124835))

(assert (=> b!141825 d!33751))

(declare-fun d!33755 () Bool)

(assert (=> d!33755 (= (head!566 l2!3099) (h!7814 l2!3099))))

(assert (=> b!141825 d!33755))

(declare-fun b!141880 () Bool)

(declare-fun e!83740 () Bool)

(assert (=> b!141880 (= e!83740 (inv!17 (value!15915 (h!7814 l1!3130))))))

(declare-fun b!141881 () Bool)

(declare-fun e!83738 () Bool)

(assert (=> b!141881 (= e!83738 e!83740)))

(declare-fun c!29393 () Bool)

(assert (=> b!141881 (= c!29393 ((_ is IntegerValue!1288) (value!15915 (h!7814 l1!3130))))))

(declare-fun b!141882 () Bool)

(assert (=> b!141882 (= e!83738 (inv!16 (value!15915 (h!7814 l1!3130))))))

(declare-fun b!141883 () Bool)

(declare-fun res!65737 () Bool)

(declare-fun e!83739 () Bool)

(assert (=> b!141883 (=> res!65737 e!83739)))

(assert (=> b!141883 (= res!65737 (not ((_ is IntegerValue!1289) (value!15915 (h!7814 l1!3130)))))))

(assert (=> b!141883 (= e!83740 e!83739)))

(declare-fun b!141884 () Bool)

(assert (=> b!141884 (= e!83739 (inv!15 (value!15915 (h!7814 l1!3130))))))

(declare-fun d!33757 () Bool)

(declare-fun c!29394 () Bool)

(assert (=> d!33757 (= c!29394 ((_ is IntegerValue!1287) (value!15915 (h!7814 l1!3130))))))

(assert (=> d!33757 (= (inv!21 (value!15915 (h!7814 l1!3130))) e!83738)))

(assert (= (and d!33757 c!29394) b!141882))

(assert (= (and d!33757 (not c!29394)) b!141881))

(assert (= (and b!141881 c!29393) b!141880))

(assert (= (and b!141881 (not c!29393)) b!141883))

(assert (= (and b!141883 (not res!65737)) b!141884))

(declare-fun m!124837 () Bool)

(assert (=> b!141880 m!124837))

(declare-fun m!124839 () Bool)

(assert (=> b!141882 m!124839))

(declare-fun m!124841 () Bool)

(assert (=> b!141884 m!124841))

(assert (=> b!141812 d!33757))

(declare-fun d!33759 () Bool)

(assert (=> d!33759 (= (inv!3182 (tag!585 (rule!914 (h!7814 l2!3099)))) (= (mod (str.len (value!15914 (tag!585 (rule!914 (h!7814 l2!3099))))) 2) 0))))

(assert (=> b!141823 d!33759))

(declare-fun d!33761 () Bool)

(declare-fun res!65738 () Bool)

(declare-fun e!83741 () Bool)

(assert (=> d!33761 (=> (not res!65738) (not e!83741))))

(assert (=> d!33761 (= res!65738 (semiInverseModEq!140 (toChars!881 (transformation!407 (rule!914 (h!7814 l2!3099)))) (toValue!1022 (transformation!407 (rule!914 (h!7814 l2!3099))))))))

(assert (=> d!33761 (= (inv!3185 (transformation!407 (rule!914 (h!7814 l2!3099)))) e!83741)))

(declare-fun b!141885 () Bool)

(assert (=> b!141885 (= e!83741 (equivClasses!123 (toChars!881 (transformation!407 (rule!914 (h!7814 l2!3099)))) (toValue!1022 (transformation!407 (rule!914 (h!7814 l2!3099))))))))

(assert (= (and d!33761 res!65738) b!141885))

(declare-fun m!124843 () Bool)

(assert (=> d!33761 m!124843))

(declare-fun m!124845 () Bool)

(assert (=> b!141885 m!124845))

(assert (=> b!141823 d!33761))

(declare-fun d!33763 () Bool)

(declare-fun res!65748 () Bool)

(declare-fun e!83751 () Bool)

(assert (=> d!33763 (=> res!65748 e!83751)))

(assert (=> d!33763 (= res!65748 (or (not ((_ is Cons!2417) (++!528 l1!3130 l2!3099))) (not ((_ is Cons!2417) (t!23661 (++!528 l1!3130 l2!3099))))))))

(assert (=> d!33763 (= (tokensListTwoByTwoPredicateList!32 thiss!27322 (++!528 l1!3130 l2!3099) rules!4268 p!3028) e!83751)))

(declare-fun b!141897 () Bool)

(declare-fun e!83752 () Bool)

(assert (=> b!141897 (= e!83751 e!83752)))

(declare-fun res!65749 () Bool)

(assert (=> b!141897 (=> (not res!65749) (not e!83752))))

(assert (=> b!141897 (= res!65749 (dynLambda!813 p!3028 (h!7814 (++!528 l1!3130 l2!3099)) (h!7814 (t!23661 (++!528 l1!3130 l2!3099))) rules!4268))))

(declare-fun b!141898 () Bool)

(assert (=> b!141898 (= e!83752 (tokensListTwoByTwoPredicateList!32 thiss!27322 (Cons!2417 (h!7814 (t!23661 (++!528 l1!3130 l2!3099))) (t!23661 (t!23661 (++!528 l1!3130 l2!3099)))) rules!4268 p!3028))))

(assert (= (and d!33763 (not res!65748)) b!141897))

(assert (= (and b!141897 res!65749) b!141898))

(declare-fun b_lambda!2211 () Bool)

(assert (=> (not b_lambda!2211) (not b!141897)))

(declare-fun t!23676 () Bool)

(declare-fun tb!4329 () Bool)

(assert (=> (and start!14886 (= p!3028 p!3028) t!23676) tb!4329))

(declare-fun result!6586 () Bool)

(assert (=> tb!4329 (= result!6586 true)))

(assert (=> b!141897 t!23676))

(declare-fun b_and!7297 () Bool)

(assert (= b_and!7283 (and (=> t!23676 result!6586) b_and!7297)))

(declare-fun m!124853 () Bool)

(assert (=> b!141897 m!124853))

(declare-fun m!124855 () Bool)

(assert (=> b!141898 m!124855))

(assert (=> b!141813 d!33763))

(declare-fun b!141923 () Bool)

(declare-fun res!65758 () Bool)

(declare-fun e!83764 () Bool)

(assert (=> b!141923 (=> (not res!65758) (not e!83764))))

(declare-fun lt!41214 () List!2427)

(declare-fun size!2118 (List!2427) Int)

(assert (=> b!141923 (= res!65758 (= (size!2118 lt!41214) (+ (size!2118 l1!3130) (size!2118 l2!3099))))))

(declare-fun b!141922 () Bool)

(declare-fun e!83765 () List!2427)

(assert (=> b!141922 (= e!83765 (Cons!2417 (h!7814 l1!3130) (++!528 (t!23661 l1!3130) l2!3099)))))

(declare-fun d!33767 () Bool)

(assert (=> d!33767 e!83764))

(declare-fun res!65757 () Bool)

(assert (=> d!33767 (=> (not res!65757) (not e!83764))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!348 (List!2427) (InoxSet Token!558))

(assert (=> d!33767 (= res!65757 (= (content!348 lt!41214) ((_ map or) (content!348 l1!3130) (content!348 l2!3099))))))

(assert (=> d!33767 (= lt!41214 e!83765)))

(declare-fun c!29401 () Bool)

(assert (=> d!33767 (= c!29401 ((_ is Nil!2417) l1!3130))))

(assert (=> d!33767 (= (++!528 l1!3130 l2!3099) lt!41214)))

(declare-fun b!141924 () Bool)

(assert (=> b!141924 (= e!83764 (or (not (= l2!3099 Nil!2417)) (= lt!41214 l1!3130)))))

(declare-fun b!141921 () Bool)

(assert (=> b!141921 (= e!83765 l2!3099)))

(assert (= (and d!33767 c!29401) b!141921))

(assert (= (and d!33767 (not c!29401)) b!141922))

(assert (= (and d!33767 res!65757) b!141923))

(assert (= (and b!141923 res!65758) b!141924))

(declare-fun m!124875 () Bool)

(assert (=> b!141923 m!124875))

(declare-fun m!124877 () Bool)

(assert (=> b!141923 m!124877))

(declare-fun m!124879 () Bool)

(assert (=> b!141923 m!124879))

(declare-fun m!124881 () Bool)

(assert (=> b!141922 m!124881))

(declare-fun m!124883 () Bool)

(assert (=> d!33767 m!124883))

(declare-fun m!124885 () Bool)

(assert (=> d!33767 m!124885))

(declare-fun m!124887 () Bool)

(assert (=> d!33767 m!124887))

(assert (=> b!141813 d!33767))

(declare-fun d!33775 () Bool)

(declare-fun res!65763 () Bool)

(declare-fun e!83770 () Bool)

(assert (=> d!33775 (=> res!65763 e!83770)))

(assert (=> d!33775 (= res!65763 (or (not ((_ is Cons!2417) l1!3130)) (not ((_ is Cons!2417) (t!23661 l1!3130)))))))

(assert (=> d!33775 (= (tokensListTwoByTwoPredicateList!32 thiss!27322 l1!3130 rules!4268 p!3028) e!83770)))

(declare-fun b!141929 () Bool)

(declare-fun e!83771 () Bool)

(assert (=> b!141929 (= e!83770 e!83771)))

(declare-fun res!65764 () Bool)

(assert (=> b!141929 (=> (not res!65764) (not e!83771))))

(assert (=> b!141929 (= res!65764 (dynLambda!813 p!3028 (h!7814 l1!3130) (h!7814 (t!23661 l1!3130)) rules!4268))))

(declare-fun b!141930 () Bool)

(assert (=> b!141930 (= e!83771 (tokensListTwoByTwoPredicateList!32 thiss!27322 (Cons!2417 (h!7814 (t!23661 l1!3130)) (t!23661 (t!23661 l1!3130))) rules!4268 p!3028))))

(assert (= (and d!33775 (not res!65763)) b!141929))

(assert (= (and b!141929 res!65764) b!141930))

(declare-fun b_lambda!2215 () Bool)

(assert (=> (not b_lambda!2215) (not b!141929)))

(declare-fun t!23684 () Bool)

(declare-fun tb!4337 () Bool)

(assert (=> (and start!14886 (= p!3028 p!3028) t!23684) tb!4337))

(declare-fun result!6596 () Bool)

(assert (=> tb!4337 (= result!6596 true)))

(assert (=> b!141929 t!23684))

(declare-fun b_and!7305 () Bool)

(assert (= b_and!7297 (and (=> t!23684 result!6596) b_and!7305)))

(declare-fun m!124889 () Bool)

(assert (=> b!141929 m!124889))

(declare-fun m!124891 () Bool)

(assert (=> b!141930 m!124891))

(assert (=> b!141811 d!33775))

(declare-fun d!33777 () Bool)

(declare-fun res!65765 () Bool)

(declare-fun e!83772 () Bool)

(assert (=> d!33777 (=> res!65765 e!83772)))

(assert (=> d!33777 (= res!65765 (or (not ((_ is Cons!2417) l2!3099)) (not ((_ is Cons!2417) (t!23661 l2!3099)))))))

(assert (=> d!33777 (= (tokensListTwoByTwoPredicateList!32 thiss!27322 l2!3099 rules!4268 p!3028) e!83772)))

(declare-fun b!141931 () Bool)

(declare-fun e!83773 () Bool)

(assert (=> b!141931 (= e!83772 e!83773)))

(declare-fun res!65766 () Bool)

(assert (=> b!141931 (=> (not res!65766) (not e!83773))))

(assert (=> b!141931 (= res!65766 (dynLambda!813 p!3028 (h!7814 l2!3099) (h!7814 (t!23661 l2!3099)) rules!4268))))

(declare-fun b!141932 () Bool)

(assert (=> b!141932 (= e!83773 (tokensListTwoByTwoPredicateList!32 thiss!27322 (Cons!2417 (h!7814 (t!23661 l2!3099)) (t!23661 (t!23661 l2!3099))) rules!4268 p!3028))))

(assert (= (and d!33777 (not res!65765)) b!141931))

(assert (= (and b!141931 res!65766) b!141932))

(declare-fun b_lambda!2217 () Bool)

(assert (=> (not b_lambda!2217) (not b!141931)))

(declare-fun t!23686 () Bool)

(declare-fun tb!4339 () Bool)

(assert (=> (and start!14886 (= p!3028 p!3028) t!23686) tb!4339))

(declare-fun result!6598 () Bool)

(assert (=> tb!4339 (= result!6598 true)))

(assert (=> b!141931 t!23686))

(declare-fun b_and!7307 () Bool)

(assert (= b_and!7305 (and (=> t!23686 result!6598) b_and!7307)))

(declare-fun m!124893 () Bool)

(assert (=> b!141931 m!124893))

(declare-fun m!124895 () Bool)

(assert (=> b!141932 m!124895))

(assert (=> b!141822 d!33777))

(declare-fun b!141939 () Bool)

(declare-fun e!83778 () Bool)

(declare-fun tp_is_empty!1577 () Bool)

(declare-fun tp!74783 () Bool)

(assert (=> b!141939 (= e!83778 (and tp_is_empty!1577 tp!74783))))

(assert (=> b!141810 (= tp!74767 e!83778)))

(assert (= (and b!141810 ((_ is Cons!2416) (originalCharacters!450 (h!7814 l2!3099)))) b!141939))

(declare-fun b!141961 () Bool)

(declare-fun b_free!4725 () Bool)

(declare-fun b_next!4725 () Bool)

(assert (=> b!141961 (= b_free!4725 (not b_next!4725))))

(declare-fun tp!74796 () Bool)

(declare-fun b_and!7311 () Bool)

(assert (=> b!141961 (= tp!74796 b_and!7311)))

(declare-fun b_free!4727 () Bool)

(declare-fun b_next!4727 () Bool)

(assert (=> b!141961 (= b_free!4727 (not b_next!4727))))

(declare-fun t!23690 () Bool)

(declare-fun tb!4343 () Bool)

(assert (=> (and b!141961 (= (toChars!881 (transformation!407 (rule!914 (h!7814 (t!23661 l2!3099))))) (toChars!881 (transformation!407 (rule!914 (h!7814 l2!3099))))) t!23690) tb!4343))

(declare-fun result!6606 () Bool)

(assert (= result!6606 result!6572))

(assert (=> b!141850 t!23690))

(declare-fun tb!4345 () Bool)

(declare-fun t!23692 () Bool)

(assert (=> (and b!141961 (= (toChars!881 (transformation!407 (rule!914 (h!7814 (t!23661 l2!3099))))) (toChars!881 (transformation!407 (rule!914 (h!7814 l1!3130))))) t!23692) tb!4345))

(declare-fun result!6608 () Bool)

(assert (= result!6608 result!6580))

(assert (=> b!141861 t!23692))

(declare-fun b_and!7313 () Bool)

(declare-fun tp!74797 () Bool)

(assert (=> b!141961 (= tp!74797 (and (=> t!23690 result!6606) (=> t!23692 result!6608) b_and!7313))))

(declare-fun tp!74798 () Bool)

(declare-fun b!141959 () Bool)

(declare-fun e!83798 () Bool)

(declare-fun e!83797 () Bool)

(assert (=> b!141959 (= e!83798 (and (inv!21 (value!15915 (h!7814 (t!23661 l2!3099)))) e!83797 tp!74798))))

(declare-fun e!83799 () Bool)

(assert (=> b!141961 (= e!83799 (and tp!74796 tp!74797))))

(declare-fun e!83800 () Bool)

(declare-fun b!141958 () Bool)

(declare-fun tp!74795 () Bool)

(assert (=> b!141958 (= e!83800 (and (inv!3186 (h!7814 (t!23661 l2!3099))) e!83798 tp!74795))))

(declare-fun tp!74794 () Bool)

(declare-fun b!141960 () Bool)

(assert (=> b!141960 (= e!83797 (and tp!74794 (inv!3182 (tag!585 (rule!914 (h!7814 (t!23661 l2!3099))))) (inv!3185 (transformation!407 (rule!914 (h!7814 (t!23661 l2!3099))))) e!83799))))

(assert (=> b!141821 (= tp!74771 e!83800)))

(assert (= b!141960 b!141961))

(assert (= b!141959 b!141960))

(assert (= b!141958 b!141959))

(assert (= (and b!141821 ((_ is Cons!2417) (t!23661 l2!3099))) b!141958))

(declare-fun m!124901 () Bool)

(assert (=> b!141959 m!124901))

(declare-fun m!124903 () Bool)

(assert (=> b!141958 m!124903))

(declare-fun m!124905 () Bool)

(assert (=> b!141960 m!124905))

(declare-fun m!124907 () Bool)

(assert (=> b!141960 m!124907))

(declare-fun b!141965 () Bool)

(declare-fun b_free!4729 () Bool)

(declare-fun b_next!4729 () Bool)

(assert (=> b!141965 (= b_free!4729 (not b_next!4729))))

(declare-fun tp!74801 () Bool)

(declare-fun b_and!7315 () Bool)

(assert (=> b!141965 (= tp!74801 b_and!7315)))

(declare-fun b_free!4731 () Bool)

(declare-fun b_next!4731 () Bool)

(assert (=> b!141965 (= b_free!4731 (not b_next!4731))))

(declare-fun t!23694 () Bool)

(declare-fun tb!4347 () Bool)

(assert (=> (and b!141965 (= (toChars!881 (transformation!407 (rule!914 (h!7814 (t!23661 l1!3130))))) (toChars!881 (transformation!407 (rule!914 (h!7814 l2!3099))))) t!23694) tb!4347))

(declare-fun result!6610 () Bool)

(assert (= result!6610 result!6572))

(assert (=> b!141850 t!23694))

(declare-fun t!23696 () Bool)

(declare-fun tb!4349 () Bool)

(assert (=> (and b!141965 (= (toChars!881 (transformation!407 (rule!914 (h!7814 (t!23661 l1!3130))))) (toChars!881 (transformation!407 (rule!914 (h!7814 l1!3130))))) t!23696) tb!4349))

(declare-fun result!6612 () Bool)

(assert (= result!6612 result!6580))

(assert (=> b!141861 t!23696))

(declare-fun b_and!7317 () Bool)

(declare-fun tp!74802 () Bool)

(assert (=> b!141965 (= tp!74802 (and (=> t!23694 result!6610) (=> t!23696 result!6612) b_and!7317))))

(declare-fun b!141963 () Bool)

(declare-fun e!83804 () Bool)

(declare-fun e!83803 () Bool)

(declare-fun tp!74803 () Bool)

(assert (=> b!141963 (= e!83804 (and (inv!21 (value!15915 (h!7814 (t!23661 l1!3130)))) e!83803 tp!74803))))

(declare-fun e!83805 () Bool)

(assert (=> b!141965 (= e!83805 (and tp!74801 tp!74802))))

(declare-fun tp!74800 () Bool)

(declare-fun e!83806 () Bool)

(declare-fun b!141962 () Bool)

(assert (=> b!141962 (= e!83806 (and (inv!3186 (h!7814 (t!23661 l1!3130))) e!83804 tp!74800))))

(declare-fun b!141964 () Bool)

(declare-fun tp!74799 () Bool)

(assert (=> b!141964 (= e!83803 (and tp!74799 (inv!3182 (tag!585 (rule!914 (h!7814 (t!23661 l1!3130))))) (inv!3185 (transformation!407 (rule!914 (h!7814 (t!23661 l1!3130))))) e!83805))))

(assert (=> b!141824 (= tp!74768 e!83806)))

(assert (= b!141964 b!141965))

(assert (= b!141963 b!141964))

(assert (= b!141962 b!141963))

(assert (= (and b!141824 ((_ is Cons!2417) (t!23661 l1!3130))) b!141962))

(declare-fun m!124909 () Bool)

(assert (=> b!141963 m!124909))

(declare-fun m!124911 () Bool)

(assert (=> b!141962 m!124911))

(declare-fun m!124913 () Bool)

(assert (=> b!141964 m!124913))

(declare-fun m!124915 () Bool)

(assert (=> b!141964 m!124915))

(declare-fun b!141980 () Bool)

(declare-fun b_free!4733 () Bool)

(declare-fun b_next!4733 () Bool)

(assert (=> b!141980 (= b_free!4733 (not b_next!4733))))

(declare-fun tp!74812 () Bool)

(declare-fun b_and!7319 () Bool)

(assert (=> b!141980 (= tp!74812 b_and!7319)))

(declare-fun b_free!4735 () Bool)

(declare-fun b_next!4735 () Bool)

(assert (=> b!141980 (= b_free!4735 (not b_next!4735))))

(declare-fun t!23698 () Bool)

(declare-fun tb!4351 () Bool)

(assert (=> (and b!141980 (= (toChars!881 (transformation!407 (h!7815 (t!23662 rules!4268)))) (toChars!881 (transformation!407 (rule!914 (h!7814 l2!3099))))) t!23698) tb!4351))

(declare-fun result!6616 () Bool)

(assert (= result!6616 result!6572))

(assert (=> b!141850 t!23698))

(declare-fun tb!4353 () Bool)

(declare-fun t!23700 () Bool)

(assert (=> (and b!141980 (= (toChars!881 (transformation!407 (h!7815 (t!23662 rules!4268)))) (toChars!881 (transformation!407 (rule!914 (h!7814 l1!3130))))) t!23700) tb!4353))

(declare-fun result!6618 () Bool)

(assert (= result!6618 result!6580))

(assert (=> b!141861 t!23700))

(declare-fun tp!74813 () Bool)

(declare-fun b_and!7321 () Bool)

(assert (=> b!141980 (= tp!74813 (and (=> t!23698 result!6616) (=> t!23700 result!6618) b_and!7321))))

(declare-fun e!83820 () Bool)

(assert (=> b!141980 (= e!83820 (and tp!74812 tp!74813))))

(declare-fun e!83818 () Bool)

(declare-fun tp!74815 () Bool)

(declare-fun b!141979 () Bool)

(assert (=> b!141979 (= e!83818 (and tp!74815 (inv!3182 (tag!585 (h!7815 (t!23662 rules!4268)))) (inv!3185 (transformation!407 (h!7815 (t!23662 rules!4268)))) e!83820))))

(declare-fun b!141978 () Bool)

(declare-fun e!83819 () Bool)

(declare-fun tp!74814 () Bool)

(assert (=> b!141978 (= e!83819 (and e!83818 tp!74814))))

(assert (=> b!141830 (= tp!74770 e!83819)))

(assert (= b!141979 b!141980))

(assert (= b!141978 b!141979))

(assert (= (and b!141830 ((_ is Cons!2418) (t!23662 rules!4268))) b!141978))

(declare-fun m!124931 () Bool)

(assert (=> b!141979 m!124931))

(declare-fun m!124933 () Bool)

(assert (=> b!141979 m!124933))

(declare-fun b!141981 () Bool)

(declare-fun e!83821 () Bool)

(declare-fun tp!74816 () Bool)

(assert (=> b!141981 (= e!83821 (and tp_is_empty!1577 tp!74816))))

(assert (=> b!141812 (= tp!74772 e!83821)))

(assert (= (and b!141812 ((_ is Cons!2416) (originalCharacters!450 (h!7814 l1!3130)))) b!141981))

(declare-fun b!141997 () Bool)

(declare-fun e!83827 () Bool)

(declare-fun tp!74827 () Bool)

(assert (=> b!141997 (= e!83827 tp!74827)))

(assert (=> b!141823 (= tp!74765 e!83827)))

(declare-fun b!141998 () Bool)

(declare-fun tp!74828 () Bool)

(declare-fun tp!74829 () Bool)

(assert (=> b!141998 (= e!83827 (and tp!74828 tp!74829))))

(declare-fun b!141995 () Bool)

(assert (=> b!141995 (= e!83827 tp_is_empty!1577)))

(declare-fun b!141996 () Bool)

(declare-fun tp!74831 () Bool)

(declare-fun tp!74830 () Bool)

(assert (=> b!141996 (= e!83827 (and tp!74831 tp!74830))))

(assert (= (and b!141823 ((_ is ElementMatch!631) (regex!407 (rule!914 (h!7814 l2!3099))))) b!141995))

(assert (= (and b!141823 ((_ is Concat!1061) (regex!407 (rule!914 (h!7814 l2!3099))))) b!141996))

(assert (= (and b!141823 ((_ is Star!631) (regex!407 (rule!914 (h!7814 l2!3099))))) b!141997))

(assert (= (and b!141823 ((_ is Union!631) (regex!407 (rule!914 (h!7814 l2!3099))))) b!141998))

(declare-fun b!142003 () Bool)

(declare-fun e!83830 () Bool)

(declare-fun tp!74832 () Bool)

(assert (=> b!142003 (= e!83830 tp!74832)))

(assert (=> b!141816 (= tp!74760 e!83830)))

(declare-fun b!142004 () Bool)

(declare-fun tp!74833 () Bool)

(declare-fun tp!74834 () Bool)

(assert (=> b!142004 (= e!83830 (and tp!74833 tp!74834))))

(declare-fun b!142001 () Bool)

(assert (=> b!142001 (= e!83830 tp_is_empty!1577)))

(declare-fun b!142002 () Bool)

(declare-fun tp!74836 () Bool)

(declare-fun tp!74835 () Bool)

(assert (=> b!142002 (= e!83830 (and tp!74836 tp!74835))))

(assert (= (and b!141816 ((_ is ElementMatch!631) (regex!407 (rule!914 (h!7814 l1!3130))))) b!142001))

(assert (= (and b!141816 ((_ is Concat!1061) (regex!407 (rule!914 (h!7814 l1!3130))))) b!142002))

(assert (= (and b!141816 ((_ is Star!631) (regex!407 (rule!914 (h!7814 l1!3130))))) b!142003))

(assert (= (and b!141816 ((_ is Union!631) (regex!407 (rule!914 (h!7814 l1!3130))))) b!142004))

(declare-fun b!142007 () Bool)

(declare-fun e!83831 () Bool)

(declare-fun tp!74837 () Bool)

(assert (=> b!142007 (= e!83831 tp!74837)))

(assert (=> b!141817 (= tp!74761 e!83831)))

(declare-fun b!142008 () Bool)

(declare-fun tp!74838 () Bool)

(declare-fun tp!74839 () Bool)

(assert (=> b!142008 (= e!83831 (and tp!74838 tp!74839))))

(declare-fun b!142005 () Bool)

(assert (=> b!142005 (= e!83831 tp_is_empty!1577)))

(declare-fun b!142006 () Bool)

(declare-fun tp!74841 () Bool)

(declare-fun tp!74840 () Bool)

(assert (=> b!142006 (= e!83831 (and tp!74841 tp!74840))))

(assert (= (and b!141817 ((_ is ElementMatch!631) (regex!407 (h!7815 rules!4268)))) b!142005))

(assert (= (and b!141817 ((_ is Concat!1061) (regex!407 (h!7815 rules!4268)))) b!142006))

(assert (= (and b!141817 ((_ is Star!631) (regex!407 (h!7815 rules!4268)))) b!142007))

(assert (= (and b!141817 ((_ is Union!631) (regex!407 (h!7815 rules!4268)))) b!142008))

(declare-fun b_lambda!2223 () Bool)

(assert (= b_lambda!2207 (or (and b!141961 b_free!4727 (= (toChars!881 (transformation!407 (rule!914 (h!7814 (t!23661 l2!3099))))) (toChars!881 (transformation!407 (rule!914 (h!7814 l2!3099)))))) (and b!141815 b_free!4717) (and b!141965 b_free!4731 (= (toChars!881 (transformation!407 (rule!914 (h!7814 (t!23661 l1!3130))))) (toChars!881 (transformation!407 (rule!914 (h!7814 l2!3099)))))) (and b!141980 b_free!4735 (= (toChars!881 (transformation!407 (h!7815 (t!23662 rules!4268)))) (toChars!881 (transformation!407 (rule!914 (h!7814 l2!3099)))))) (and b!141819 b_free!4723 (= (toChars!881 (transformation!407 (h!7815 rules!4268))) (toChars!881 (transformation!407 (rule!914 (h!7814 l2!3099)))))) (and b!141828 b_free!4713 (= (toChars!881 (transformation!407 (rule!914 (h!7814 l1!3130)))) (toChars!881 (transformation!407 (rule!914 (h!7814 l2!3099)))))) b_lambda!2223)))

(declare-fun b_lambda!2225 () Bool)

(assert (= b_lambda!2217 (or (and start!14886 b_free!4719) b_lambda!2225)))

(declare-fun b_lambda!2227 () Bool)

(assert (= b_lambda!2215 (or (and start!14886 b_free!4719) b_lambda!2227)))

(declare-fun b_lambda!2229 () Bool)

(assert (= b_lambda!2211 (or (and start!14886 b_free!4719) b_lambda!2229)))

(declare-fun b_lambda!2231 () Bool)

(assert (= b_lambda!2209 (or (and b!141819 b_free!4723 (= (toChars!881 (transformation!407 (h!7815 rules!4268))) (toChars!881 (transformation!407 (rule!914 (h!7814 l1!3130)))))) (and b!141961 b_free!4727 (= (toChars!881 (transformation!407 (rule!914 (h!7814 (t!23661 l2!3099))))) (toChars!881 (transformation!407 (rule!914 (h!7814 l1!3130)))))) (and b!141965 b_free!4731 (= (toChars!881 (transformation!407 (rule!914 (h!7814 (t!23661 l1!3130))))) (toChars!881 (transformation!407 (rule!914 (h!7814 l1!3130)))))) (and b!141815 b_free!4717 (= (toChars!881 (transformation!407 (rule!914 (h!7814 l2!3099)))) (toChars!881 (transformation!407 (rule!914 (h!7814 l1!3130)))))) (and b!141828 b_free!4713) (and b!141980 b_free!4735 (= (toChars!881 (transformation!407 (h!7815 (t!23662 rules!4268)))) (toChars!881 (transformation!407 (rule!914 (h!7814 l1!3130)))))) b_lambda!2231)))

(check-sat (not b!141932) (not b!141964) (not b!141880) b_and!7293 (not b!141851) tp_is_empty!1577 (not d!33747) b_and!7315 (not b!141960) (not b_lambda!2203) (not b_next!4717) (not tb!4317) b_and!7317 (not b!141962) (not b!141841) (not b!141884) (not b!141959) (not b!142008) b_and!7269 (not b!142003) (not b!141863) (not b!141862) b_and!7273 (not b_next!4721) (not b!141898) b_and!7319 (not b!141882) b_and!7313 (not b!141860) (not b_next!4727) (not b!141859) (not b_next!4735) (not b!141996) (not b!141998) (not tb!4323) (not b_lambda!2231) (not b!141939) (not b!142002) (not b!141885) (not b_next!4731) (not b!141850) b_and!7311 (not b_next!4723) (not b!141845) (not d!33767) (not b!141843) (not b!141930) (not b_next!4719) (not b_next!4711) (not b_next!4733) (not d!33749) (not d!33741) b_and!7279 (not b_lambda!2229) (not b!141981) (not b!142007) (not b_lambda!2227) (not d!33761) (not b_next!4715) (not b!141997) b_and!7291 (not b_lambda!2223) (not d!33751) (not b!141979) (not b!141923) (not b!141856) b_and!7321 (not b!142006) (not b!142004) (not b_lambda!2225) b_and!7295 (not b!141869) (not b_next!4729) (not b_next!4713) (not b!141963) (not b!141978) (not b!141958) (not d!33735) b_and!7307 (not b!141922) (not b_next!4725) (not b!141861))
(check-sat b_and!7293 b_and!7315 b_and!7269 (not b_next!4735) (not b_next!4731) (not b_next!4719) b_and!7279 b_and!7321 b_and!7307 (not b_next!4725) (not b_next!4717) b_and!7317 b_and!7273 (not b_next!4721) b_and!7319 b_and!7313 (not b_next!4727) b_and!7311 (not b_next!4723) (not b_next!4711) (not b_next!4733) (not b_next!4715) b_and!7291 b_and!7295 (not b_next!4729) (not b_next!4713))
