; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!403032 () Bool)

(assert start!403032)

(declare-fun b!4216786 () Bool)

(declare-fun b_free!123699 () Bool)

(declare-fun b_next!124403 () Bool)

(assert (=> b!4216786 (= b_free!123699 (not b_next!124403))))

(declare-fun tp!1289911 () Bool)

(declare-fun b_and!332261 () Bool)

(assert (=> b!4216786 (= tp!1289911 b_and!332261)))

(declare-fun b_free!123701 () Bool)

(declare-fun b_next!124405 () Bool)

(assert (=> b!4216786 (= b_free!123701 (not b_next!124405))))

(declare-fun tp!1289905 () Bool)

(declare-fun b_and!332263 () Bool)

(assert (=> b!4216786 (= tp!1289905 b_and!332263)))

(declare-fun b!4216783 () Bool)

(declare-fun b_free!123703 () Bool)

(declare-fun b_next!124407 () Bool)

(assert (=> b!4216783 (= b_free!123703 (not b_next!124407))))

(declare-fun tp!1289897 () Bool)

(declare-fun b_and!332265 () Bool)

(assert (=> b!4216783 (= tp!1289897 b_and!332265)))

(declare-fun b_free!123705 () Bool)

(declare-fun b_next!124409 () Bool)

(assert (=> b!4216783 (= b_free!123705 (not b_next!124409))))

(declare-fun tp!1289908 () Bool)

(declare-fun b_and!332267 () Bool)

(assert (=> b!4216783 (= tp!1289908 b_and!332267)))

(declare-fun b!4216769 () Bool)

(declare-fun b_free!123707 () Bool)

(declare-fun b_next!124411 () Bool)

(assert (=> b!4216769 (= b_free!123707 (not b_next!124411))))

(declare-fun tp!1289900 () Bool)

(declare-fun b_and!332269 () Bool)

(assert (=> b!4216769 (= tp!1289900 b_and!332269)))

(declare-fun b_free!123709 () Bool)

(declare-fun b_next!124413 () Bool)

(assert (=> b!4216769 (= b_free!123709 (not b_next!124413))))

(declare-fun tp!1289904 () Bool)

(declare-fun b_and!332271 () Bool)

(assert (=> b!4216769 (= tp!1289904 b_and!332271)))

(declare-fun b!4216782 () Bool)

(declare-fun b_free!123711 () Bool)

(declare-fun b_next!124415 () Bool)

(assert (=> b!4216782 (= b_free!123711 (not b_next!124415))))

(declare-fun tp!1289907 () Bool)

(declare-fun b_and!332273 () Bool)

(assert (=> b!4216782 (= tp!1289907 b_and!332273)))

(declare-fun b_free!123713 () Bool)

(declare-fun b_next!124417 () Bool)

(assert (=> b!4216782 (= b_free!123713 (not b_next!124417))))

(declare-fun tp!1289898 () Bool)

(declare-fun b_and!332275 () Bool)

(assert (=> b!4216782 (= tp!1289898 b_and!332275)))

(declare-fun e!2617860 () Bool)

(declare-fun b!4216759 () Bool)

(declare-fun tp!1289910 () Bool)

(declare-fun e!2617853 () Bool)

(declare-datatypes ((List!46508 0))(
  ( (Nil!46384) (Cons!46384 (h!51804 (_ BitVec 16)) (t!348467 List!46508)) )
))
(declare-datatypes ((TokenValue!8003 0))(
  ( (FloatLiteralValue!16006 (text!56466 List!46508)) (TokenValueExt!8002 (__x!28229 Int)) (Broken!40015 (value!242035 List!46508)) (Object!8126) (End!8003) (Def!8003) (Underscore!8003) (Match!8003) (Else!8003) (Error!8003) (Case!8003) (If!8003) (Extends!8003) (Abstract!8003) (Class!8003) (Val!8003) (DelimiterValue!16006 (del!8063 List!46508)) (KeywordValue!8009 (value!242036 List!46508)) (CommentValue!16006 (value!242037 List!46508)) (WhitespaceValue!16006 (value!242038 List!46508)) (IndentationValue!8003 (value!242039 List!46508)) (String!53886) (Int32!8003) (Broken!40016 (value!242040 List!46508)) (Boolean!8004) (Unit!65527) (OperatorValue!8006 (op!8063 List!46508)) (IdentifierValue!16006 (value!242041 List!46508)) (IdentifierValue!16007 (value!242042 List!46508)) (WhitespaceValue!16007 (value!242043 List!46508)) (True!16006) (False!16006) (Broken!40017 (value!242044 List!46508)) (Broken!40018 (value!242045 List!46508)) (True!16007) (RightBrace!8003) (RightBracket!8003) (Colon!8003) (Null!8003) (Comma!8003) (LeftBracket!8003) (False!16007) (LeftBrace!8003) (ImaginaryLiteralValue!8003 (text!56467 List!46508)) (StringLiteralValue!24009 (value!242046 List!46508)) (EOFValue!8003 (value!242047 List!46508)) (IdentValue!8003 (value!242048 List!46508)) (DelimiterValue!16007 (value!242049 List!46508)) (DedentValue!8003 (value!242050 List!46508)) (NewLineValue!8003 (value!242051 List!46508)) (IntegerValue!24009 (value!242052 (_ BitVec 32)) (text!56468 List!46508)) (IntegerValue!24010 (value!242053 Int) (text!56469 List!46508)) (Times!8003) (Or!8003) (Equal!8003) (Minus!8003) (Broken!40019 (value!242054 List!46508)) (And!8003) (Div!8003) (LessEqual!8003) (Mod!8003) (Concat!20681) (Not!8003) (Plus!8003) (SpaceValue!8003 (value!242055 List!46508)) (IntegerValue!24011 (value!242056 Int) (text!56470 List!46508)) (StringLiteralValue!24010 (text!56471 List!46508)) (FloatLiteralValue!16007 (text!56472 List!46508)) (BytesLiteralValue!8003 (value!242057 List!46508)) (CommentValue!16007 (value!242058 List!46508)) (StringLiteralValue!24011 (value!242059 List!46508)) (ErrorTokenValue!8003 (msg!8064 List!46508)) )
))
(declare-datatypes ((C!25550 0))(
  ( (C!25551 (val!14937 Int)) )
))
(declare-datatypes ((List!46509 0))(
  ( (Nil!46385) (Cons!46385 (h!51805 C!25550) (t!348468 List!46509)) )
))
(declare-datatypes ((IArray!27973 0))(
  ( (IArray!27974 (innerList!14044 List!46509)) )
))
(declare-datatypes ((Regex!12678 0))(
  ( (ElementMatch!12678 (c!717820 C!25550)) (Concat!20682 (regOne!25868 Regex!12678) (regTwo!25868 Regex!12678)) (EmptyExpr!12678) (Star!12678 (reg!13007 Regex!12678)) (EmptyLang!12678) (Union!12678 (regOne!25869 Regex!12678) (regTwo!25869 Regex!12678)) )
))
(declare-datatypes ((String!53887 0))(
  ( (String!53888 (value!242060 String)) )
))
(declare-datatypes ((Conc!13984 0))(
  ( (Node!13984 (left!34510 Conc!13984) (right!34840 Conc!13984) (csize!28198 Int) (cheight!14195 Int)) (Leaf!21615 (xs!17290 IArray!27973) (csize!28199 Int)) (Empty!13984) )
))
(declare-datatypes ((BalanceConc!27562 0))(
  ( (BalanceConc!27563 (c!717821 Conc!13984)) )
))
(declare-datatypes ((TokenValueInjection!15434 0))(
  ( (TokenValueInjection!15435 (toValue!10493 Int) (toChars!10352 Int)) )
))
(declare-datatypes ((Rule!15346 0))(
  ( (Rule!15347 (regex!7773 Regex!12678) (tag!8637 String!53887) (isSeparator!7773 Bool) (transformation!7773 TokenValueInjection!15434)) )
))
(declare-datatypes ((Token!14248 0))(
  ( (Token!14249 (value!242061 TokenValue!8003) (rule!10901 Rule!15346) (size!34062 Int) (originalCharacters!8155 List!46509)) )
))
(declare-fun t!8364 () Token!14248)

(declare-fun inv!21 (TokenValue!8003) Bool)

(assert (=> b!4216759 (= e!2617860 (and (inv!21 (value!242061 t!8364)) e!2617853 tp!1289910))))

(declare-datatypes ((List!46510 0))(
  ( (Nil!46386) (Cons!46386 (h!51806 Rule!15346) (t!348469 List!46510)) )
))
(declare-fun rules!3967 () List!46510)

(declare-fun b!4216760 () Bool)

(declare-fun e!2617852 () Bool)

(declare-fun e!2617855 () Bool)

(declare-fun tp!1289912 () Bool)

(declare-fun inv!61026 (String!53887) Bool)

(declare-fun inv!61029 (TokenValueInjection!15434) Bool)

(assert (=> b!4216760 (= e!2617852 (and tp!1289912 (inv!61026 (tag!8637 (h!51806 rules!3967))) (inv!61029 (transformation!7773 (h!51806 rules!3967))) e!2617855))))

(declare-fun b!4216761 () Bool)

(declare-fun e!2617851 () Bool)

(declare-fun tp!1289913 () Bool)

(assert (=> b!4216761 (= e!2617851 (and e!2617852 tp!1289913))))

(declare-fun b!4216762 () Bool)

(declare-fun e!2617845 () Bool)

(declare-fun ListPrimitiveSize!298 (List!46510) Int)

(assert (=> b!4216762 (= e!2617845 (< (ListPrimitiveSize!298 (t!348469 rules!3967)) (ListPrimitiveSize!298 rules!3967)))))

(declare-fun b!4216763 () Bool)

(declare-fun e!2617862 () Bool)

(declare-fun tp_is_empty!22323 () Bool)

(declare-fun tp!1289915 () Bool)

(assert (=> b!4216763 (= e!2617862 (and tp_is_empty!22323 tp!1289915))))

(declare-fun b!4216764 () Bool)

(declare-fun e!2617863 () Bool)

(declare-fun e!2617856 () Bool)

(assert (=> b!4216764 (= e!2617863 e!2617856)))

(declare-fun res!1732939 () Bool)

(assert (=> b!4216764 (=> (not res!1732939) (not e!2617856))))

(declare-datatypes ((LexerInterface!7368 0))(
  ( (LexerInterfaceExt!7365 (__x!28230 Int)) (Lexer!7366) )
))
(declare-fun thiss!26544 () LexerInterface!7368)

(declare-datatypes ((tuple2!44116 0))(
  ( (tuple2!44117 (_1!25192 Token!14248) (_2!25192 List!46509)) )
))
(declare-datatypes ((Option!9961 0))(
  ( (None!9960) (Some!9960 (v!40844 tuple2!44116)) )
))
(declare-fun lt!1500647 () Option!9961)

(declare-fun input!3517 () List!46509)

(declare-fun maxPrefix!4408 (LexerInterface!7368 List!46510 List!46509) Option!9961)

(assert (=> b!4216764 (= res!1732939 (= (maxPrefix!4408 thiss!26544 rules!3967 input!3517) lt!1500647))))

(declare-fun suffix!1557 () List!46509)

(assert (=> b!4216764 (= lt!1500647 (Some!9960 (tuple2!44117 t!8364 suffix!1557)))))

(declare-fun b!4216765 () Bool)

(declare-fun res!1732928 () Bool)

(assert (=> b!4216765 (=> (not res!1732928) (not e!2617863))))

(declare-fun rBis!178 () Rule!15346)

(declare-fun contains!9594 (List!46510 Rule!15346) Bool)

(assert (=> b!4216765 (= res!1732928 (contains!9594 rules!3967 rBis!178))))

(declare-fun b!4216766 () Bool)

(declare-fun e!2617848 () Bool)

(assert (=> b!4216766 (= e!2617848 e!2617845)))

(declare-fun res!1732937 () Bool)

(assert (=> b!4216766 (=> res!1732937 e!2617845)))

(declare-fun lt!1500643 () List!46509)

(assert (=> b!4216766 (= res!1732937 (not (= lt!1500643 input!3517)))))

(declare-fun rulesInvariant!6579 (LexerInterface!7368 List!46510) Bool)

(assert (=> b!4216766 (rulesInvariant!6579 thiss!26544 (t!348469 rules!3967))))

(declare-datatypes ((Unit!65528 0))(
  ( (Unit!65529) )
))
(declare-fun lt!1500648 () Unit!65528)

(declare-fun lemmaInvariantOnRulesThenOnTail!863 (LexerInterface!7368 Rule!15346 List!46510) Unit!65528)

(assert (=> b!4216766 (= lt!1500648 (lemmaInvariantOnRulesThenOnTail!863 thiss!26544 (h!51806 rules!3967) (t!348469 rules!3967)))))

(declare-fun lt!1500644 () List!46509)

(declare-fun isPrefix!4632 (List!46509 List!46509) Bool)

(assert (=> b!4216766 (isPrefix!4632 lt!1500644 lt!1500643)))

(declare-fun lt!1500646 () tuple2!44116)

(declare-fun ++!11847 (List!46509 List!46509) List!46509)

(assert (=> b!4216766 (= lt!1500643 (++!11847 lt!1500644 (_2!25192 lt!1500646)))))

(declare-fun lt!1500642 () Unit!65528)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3087 (List!46509 List!46509) Unit!65528)

(assert (=> b!4216766 (= lt!1500642 (lemmaConcatTwoListThenFirstIsPrefix!3087 lt!1500644 (_2!25192 lt!1500646)))))

(declare-fun list!16780 (BalanceConc!27562) List!46509)

(declare-fun charsOf!5196 (Token!14248) BalanceConc!27562)

(assert (=> b!4216766 (= lt!1500644 (list!16780 (charsOf!5196 (_1!25192 lt!1500646))))))

(declare-fun lt!1500645 () Option!9961)

(declare-fun get!15094 (Option!9961) tuple2!44116)

(assert (=> b!4216766 (= lt!1500646 (get!15094 lt!1500645))))

(declare-fun lt!1500650 () Unit!65528)

(declare-fun e!2617864 () Unit!65528)

(assert (=> b!4216766 (= lt!1500650 e!2617864)))

(declare-fun c!717819 () Bool)

(declare-fun isEmpty!27478 (Option!9961) Bool)

(assert (=> b!4216766 (= c!717819 (isEmpty!27478 lt!1500645))))

(assert (=> b!4216766 (= lt!1500645 (maxPrefix!4408 thiss!26544 (t!348469 rules!3967) input!3517))))

(declare-fun b!4216767 () Bool)

(declare-fun res!1732943 () Bool)

(assert (=> b!4216767 (=> res!1732943 e!2617848)))

(declare-fun pBis!121 () List!46509)

(declare-fun suffixBis!41 () List!46509)

(assert (=> b!4216767 (= res!1732943 (not (= (++!11847 pBis!121 suffixBis!41) input!3517)))))

(declare-fun b!4216768 () Bool)

(declare-fun res!1732942 () Bool)

(assert (=> b!4216768 (=> res!1732942 e!2617845)))

(assert (=> b!4216768 (= res!1732942 (not (= lt!1500645 (Some!9960 (tuple2!44117 (_1!25192 lt!1500646) (_2!25192 lt!1500646))))))))

(declare-fun e!2617843 () Bool)

(assert (=> b!4216769 (= e!2617843 (and tp!1289900 tp!1289904))))

(declare-fun b!4216770 () Bool)

(assert (=> b!4216770 (= e!2617856 (not e!2617848))))

(declare-fun res!1732940 () Bool)

(assert (=> b!4216770 (=> res!1732940 e!2617848)))

(declare-fun tBis!41 () Token!14248)

(declare-fun maxPrefixOneRule!3363 (LexerInterface!7368 Rule!15346 List!46509) Option!9961)

(assert (=> b!4216770 (= res!1732940 (not (= (maxPrefixOneRule!3363 thiss!26544 rBis!178 input!3517) (Some!9960 (tuple2!44117 tBis!41 suffixBis!41)))))))

(assert (=> b!4216770 (isPrefix!4632 input!3517 input!3517)))

(declare-fun lt!1500641 () Unit!65528)

(declare-fun lemmaIsPrefixRefl!3049 (List!46509 List!46509) Unit!65528)

(assert (=> b!4216770 (= lt!1500641 (lemmaIsPrefixRefl!3049 input!3517 input!3517))))

(declare-fun b!4216771 () Bool)

(declare-fun e!2617858 () Bool)

(declare-fun tp!1289906 () Bool)

(assert (=> b!4216771 (= e!2617858 (and tp_is_empty!22323 tp!1289906))))

(declare-fun b!4216772 () Bool)

(declare-fun e!2617849 () Bool)

(declare-fun tp!1289902 () Bool)

(assert (=> b!4216772 (= e!2617849 (and tp_is_empty!22323 tp!1289902))))

(declare-fun b!4216773 () Bool)

(declare-fun res!1732932 () Bool)

(assert (=> b!4216773 (=> (not res!1732932) (not e!2617863))))

(declare-fun p!3001 () List!46509)

(assert (=> b!4216773 (= res!1732932 (= (++!11847 p!3001 suffix!1557) input!3517))))

(declare-fun b!4216774 () Bool)

(declare-fun tp!1289914 () Bool)

(declare-fun e!2617846 () Bool)

(assert (=> b!4216774 (= e!2617846 (and tp!1289914 (inv!61026 (tag!8637 (rule!10901 tBis!41))) (inv!61029 (transformation!7773 (rule!10901 tBis!41))) e!2617843))))

(declare-fun b!4216775 () Bool)

(declare-fun res!1732926 () Bool)

(assert (=> b!4216775 (=> (not res!1732926) (not e!2617863))))

(assert (=> b!4216775 (= res!1732926 (rulesInvariant!6579 thiss!26544 rules!3967))))

(declare-fun b!4216776 () Bool)

(declare-fun res!1732935 () Bool)

(assert (=> b!4216776 (=> res!1732935 e!2617848)))

(assert (=> b!4216776 (= res!1732935 (not (= (list!16780 (charsOf!5196 tBis!41)) pBis!121)))))

(declare-fun res!1732933 () Bool)

(assert (=> start!403032 (=> (not res!1732933) (not e!2617863))))

(assert (=> start!403032 (= res!1732933 (is-Lexer!7366 thiss!26544))))

(assert (=> start!403032 e!2617863))

(declare-fun e!2617865 () Bool)

(declare-fun inv!61030 (Token!14248) Bool)

(assert (=> start!403032 (and (inv!61030 tBis!41) e!2617865)))

(assert (=> start!403032 true))

(declare-fun e!2617857 () Bool)

(assert (=> start!403032 e!2617857))

(declare-fun e!2617854 () Bool)

(assert (=> start!403032 e!2617854))

(assert (=> start!403032 e!2617851))

(assert (=> start!403032 e!2617858))

(assert (=> start!403032 (and (inv!61030 t!8364) e!2617860)))

(assert (=> start!403032 e!2617862))

(assert (=> start!403032 e!2617849))

(declare-fun e!2617841 () Bool)

(assert (=> start!403032 e!2617841))

(declare-fun b!4216777 () Bool)

(declare-fun res!1732934 () Bool)

(assert (=> b!4216777 (=> (not res!1732934) (not e!2617863))))

(declare-fun isEmpty!27479 (List!46510) Bool)

(assert (=> b!4216777 (= res!1732934 (not (isEmpty!27479 rules!3967)))))

(declare-fun b!4216778 () Bool)

(declare-fun res!1732941 () Bool)

(assert (=> b!4216778 (=> res!1732941 e!2617848)))

(assert (=> b!4216778 (= res!1732941 (not (= (rule!10901 tBis!41) rBis!178)))))

(declare-fun b!4216779 () Bool)

(declare-fun res!1732936 () Bool)

(assert (=> b!4216779 (=> res!1732936 e!2617848)))

(assert (=> b!4216779 (= res!1732936 (or (and (is-Cons!46386 rules!3967) (is-Nil!46386 (t!348469 rules!3967))) (not (is-Cons!46386 rules!3967)) (= (h!51806 rules!3967) rBis!178)))))

(declare-fun b!4216780 () Bool)

(declare-fun tp!1289899 () Bool)

(assert (=> b!4216780 (= e!2617865 (and (inv!21 (value!242061 tBis!41)) e!2617846 tp!1289899))))

(declare-fun b!4216781 () Bool)

(declare-fun tp!1289901 () Bool)

(assert (=> b!4216781 (= e!2617854 (and tp_is_empty!22323 tp!1289901))))

(assert (=> b!4216782 (= e!2617855 (and tp!1289907 tp!1289898))))

(declare-fun e!2617844 () Bool)

(assert (=> b!4216783 (= e!2617844 (and tp!1289897 tp!1289908))))

(declare-fun b!4216784 () Bool)

(declare-fun res!1732930 () Bool)

(assert (=> b!4216784 (=> res!1732930 e!2617845)))

(assert (=> b!4216784 (= res!1732930 (isEmpty!27479 (t!348469 rules!3967)))))

(declare-fun b!4216785 () Bool)

(declare-fun Unit!65530 () Unit!65528)

(assert (=> b!4216785 (= e!2617864 Unit!65530)))

(declare-fun lt!1500649 () Unit!65528)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!631 (LexerInterface!7368 Rule!15346 List!46510 List!46509) Unit!65528)

(assert (=> b!4216785 (= lt!1500649 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!631 thiss!26544 rBis!178 (t!348469 rules!3967) input!3517))))

(assert (=> b!4216785 false))

(declare-fun e!2617842 () Bool)

(assert (=> b!4216786 (= e!2617842 (and tp!1289911 tp!1289905))))

(declare-fun b!4216787 () Bool)

(declare-fun res!1732944 () Bool)

(assert (=> b!4216787 (=> (not res!1732944) (not e!2617863))))

(assert (=> b!4216787 (= res!1732944 (isPrefix!4632 p!3001 input!3517))))

(declare-fun b!4216788 () Bool)

(declare-fun tp!1289916 () Bool)

(assert (=> b!4216788 (= e!2617853 (and tp!1289916 (inv!61026 (tag!8637 (rule!10901 t!8364))) (inv!61029 (transformation!7773 (rule!10901 t!8364))) e!2617842))))

(declare-fun tp!1289909 () Bool)

(declare-fun b!4216789 () Bool)

(assert (=> b!4216789 (= e!2617857 (and tp!1289909 (inv!61026 (tag!8637 rBis!178)) (inv!61029 (transformation!7773 rBis!178)) e!2617844))))

(declare-fun b!4216790 () Bool)

(declare-fun Unit!65531 () Unit!65528)

(assert (=> b!4216790 (= e!2617864 Unit!65531)))

(declare-fun b!4216791 () Bool)

(declare-fun res!1732938 () Bool)

(assert (=> b!4216791 (=> (not res!1732938) (not e!2617856))))

(declare-fun ruleValid!3485 (LexerInterface!7368 Rule!15346) Bool)

(assert (=> b!4216791 (= res!1732938 (ruleValid!3485 thiss!26544 rBis!178))))

(declare-fun b!4216792 () Bool)

(declare-fun res!1732927 () Bool)

(assert (=> b!4216792 (=> res!1732927 e!2617845)))

(assert (=> b!4216792 (= res!1732927 (not (isPrefix!4632 lt!1500644 input!3517)))))

(declare-fun b!4216793 () Bool)

(declare-fun res!1732929 () Bool)

(assert (=> b!4216793 (=> (not res!1732929) (not e!2617863))))

(assert (=> b!4216793 (= res!1732929 (isPrefix!4632 pBis!121 input!3517))))

(declare-fun b!4216794 () Bool)

(declare-fun res!1732945 () Bool)

(assert (=> b!4216794 (=> res!1732945 e!2617848)))

(assert (=> b!4216794 (= res!1732945 (not (= (maxPrefixOneRule!3363 thiss!26544 (h!51806 rules!3967) input!3517) lt!1500647)))))

(declare-fun b!4216795 () Bool)

(declare-fun tp!1289903 () Bool)

(assert (=> b!4216795 (= e!2617841 (and tp_is_empty!22323 tp!1289903))))

(declare-fun b!4216796 () Bool)

(declare-fun res!1732931 () Bool)

(assert (=> b!4216796 (=> res!1732931 e!2617845)))

(assert (=> b!4216796 (= res!1732931 (not (contains!9594 (t!348469 rules!3967) rBis!178)))))

(assert (= (and start!403032 res!1732933) b!4216773))

(assert (= (and b!4216773 res!1732932) b!4216787))

(assert (= (and b!4216787 res!1732944) b!4216793))

(assert (= (and b!4216793 res!1732929) b!4216777))

(assert (= (and b!4216777 res!1732934) b!4216775))

(assert (= (and b!4216775 res!1732926) b!4216765))

(assert (= (and b!4216765 res!1732928) b!4216764))

(assert (= (and b!4216764 res!1732939) b!4216791))

(assert (= (and b!4216791 res!1732938) b!4216770))

(assert (= (and b!4216770 (not res!1732940)) b!4216778))

(assert (= (and b!4216778 (not res!1732941)) b!4216776))

(assert (= (and b!4216776 (not res!1732935)) b!4216767))

(assert (= (and b!4216767 (not res!1732943)) b!4216779))

(assert (= (and b!4216779 (not res!1732936)) b!4216794))

(assert (= (and b!4216794 (not res!1732945)) b!4216766))

(assert (= (and b!4216766 c!717819) b!4216785))

(assert (= (and b!4216766 (not c!717819)) b!4216790))

(assert (= (and b!4216766 (not res!1732937)) b!4216792))

(assert (= (and b!4216792 (not res!1732927)) b!4216784))

(assert (= (and b!4216784 (not res!1732930)) b!4216796))

(assert (= (and b!4216796 (not res!1732931)) b!4216768))

(assert (= (and b!4216768 (not res!1732942)) b!4216762))

(assert (= b!4216774 b!4216769))

(assert (= b!4216780 b!4216774))

(assert (= start!403032 b!4216780))

(assert (= b!4216789 b!4216783))

(assert (= start!403032 b!4216789))

(assert (= (and start!403032 (is-Cons!46385 p!3001)) b!4216781))

(assert (= b!4216760 b!4216782))

(assert (= b!4216761 b!4216760))

(assert (= (and start!403032 (is-Cons!46386 rules!3967)) b!4216761))

(assert (= (and start!403032 (is-Cons!46385 input!3517)) b!4216771))

(assert (= b!4216788 b!4216786))

(assert (= b!4216759 b!4216788))

(assert (= start!403032 b!4216759))

(assert (= (and start!403032 (is-Cons!46385 pBis!121)) b!4216763))

(assert (= (and start!403032 (is-Cons!46385 suffix!1557)) b!4216772))

(assert (= (and start!403032 (is-Cons!46385 suffixBis!41)) b!4216795))

(declare-fun m!4804955 () Bool)

(assert (=> b!4216780 m!4804955))

(declare-fun m!4804957 () Bool)

(assert (=> b!4216784 m!4804957))

(declare-fun m!4804959 () Bool)

(assert (=> b!4216767 m!4804959))

(declare-fun m!4804961 () Bool)

(assert (=> b!4216794 m!4804961))

(declare-fun m!4804963 () Bool)

(assert (=> b!4216787 m!4804963))

(declare-fun m!4804965 () Bool)

(assert (=> b!4216770 m!4804965))

(declare-fun m!4804967 () Bool)

(assert (=> b!4216770 m!4804967))

(declare-fun m!4804969 () Bool)

(assert (=> b!4216770 m!4804969))

(declare-fun m!4804971 () Bool)

(assert (=> b!4216777 m!4804971))

(declare-fun m!4804973 () Bool)

(assert (=> b!4216762 m!4804973))

(declare-fun m!4804975 () Bool)

(assert (=> b!4216762 m!4804975))

(declare-fun m!4804977 () Bool)

(assert (=> b!4216776 m!4804977))

(assert (=> b!4216776 m!4804977))

(declare-fun m!4804979 () Bool)

(assert (=> b!4216776 m!4804979))

(declare-fun m!4804981 () Bool)

(assert (=> b!4216765 m!4804981))

(declare-fun m!4804983 () Bool)

(assert (=> start!403032 m!4804983))

(declare-fun m!4804985 () Bool)

(assert (=> start!403032 m!4804985))

(declare-fun m!4804987 () Bool)

(assert (=> b!4216766 m!4804987))

(declare-fun m!4804989 () Bool)

(assert (=> b!4216766 m!4804989))

(declare-fun m!4804991 () Bool)

(assert (=> b!4216766 m!4804991))

(declare-fun m!4804993 () Bool)

(assert (=> b!4216766 m!4804993))

(assert (=> b!4216766 m!4804987))

(declare-fun m!4804995 () Bool)

(assert (=> b!4216766 m!4804995))

(declare-fun m!4804997 () Bool)

(assert (=> b!4216766 m!4804997))

(declare-fun m!4804999 () Bool)

(assert (=> b!4216766 m!4804999))

(declare-fun m!4805001 () Bool)

(assert (=> b!4216766 m!4805001))

(declare-fun m!4805003 () Bool)

(assert (=> b!4216766 m!4805003))

(declare-fun m!4805005 () Bool)

(assert (=> b!4216766 m!4805005))

(declare-fun m!4805007 () Bool)

(assert (=> b!4216775 m!4805007))

(declare-fun m!4805009 () Bool)

(assert (=> b!4216785 m!4805009))

(declare-fun m!4805011 () Bool)

(assert (=> b!4216774 m!4805011))

(declare-fun m!4805013 () Bool)

(assert (=> b!4216774 m!4805013))

(declare-fun m!4805015 () Bool)

(assert (=> b!4216793 m!4805015))

(declare-fun m!4805017 () Bool)

(assert (=> b!4216773 m!4805017))

(declare-fun m!4805019 () Bool)

(assert (=> b!4216791 m!4805019))

(declare-fun m!4805021 () Bool)

(assert (=> b!4216796 m!4805021))

(declare-fun m!4805023 () Bool)

(assert (=> b!4216764 m!4805023))

(declare-fun m!4805025 () Bool)

(assert (=> b!4216789 m!4805025))

(declare-fun m!4805027 () Bool)

(assert (=> b!4216789 m!4805027))

(declare-fun m!4805029 () Bool)

(assert (=> b!4216759 m!4805029))

(declare-fun m!4805031 () Bool)

(assert (=> b!4216788 m!4805031))

(declare-fun m!4805033 () Bool)

(assert (=> b!4216788 m!4805033))

(declare-fun m!4805035 () Bool)

(assert (=> b!4216792 m!4805035))

(declare-fun m!4805037 () Bool)

(assert (=> b!4216760 m!4805037))

(declare-fun m!4805039 () Bool)

(assert (=> b!4216760 m!4805039))

(push 1)

(assert (not b!4216759))

(assert (not b_next!124417))

(assert (not b!4216794))

(assert (not b!4216763))

(assert (not b!4216764))

(assert (not b!4216774))

(assert (not b!4216777))

(assert (not b_next!124405))

(assert b_and!332261)

(assert (not b!4216791))

(assert (not b!4216784))

(assert (not b!4216760))

(assert (not b_next!124409))

(assert b_and!332265)

(assert b_and!332263)

(assert (not b!4216793))

(assert (not b!4216795))

(assert (not b_next!124403))

(assert (not b!4216766))

(assert (not b!4216788))

(assert (not b_next!124415))

(assert (not b_next!124413))

(assert (not b!4216787))

(assert tp_is_empty!22323)

(assert (not b!4216770))

(assert (not b!4216796))

(assert (not b!4216772))

(assert b_and!332275)

(assert b_and!332271)

(assert (not b!4216780))

(assert (not b_next!124407))

(assert (not b!4216761))

(assert (not b!4216762))

(assert (not b!4216776))

(assert b_and!332273)

(assert (not b!4216765))

(assert b_and!332269)

(assert (not b!4216781))

(assert (not b!4216771))

(assert (not b!4216773))

(assert (not b!4216789))

(assert (not b!4216775))

(assert (not b!4216767))

(assert b_and!332267)

(assert (not b!4216792))

(assert (not start!403032))

(assert (not b_next!124411))

(assert (not b!4216785))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!124417))

(assert b_and!332263)

(assert (not b_next!124403))

(assert (not b_next!124405))

(assert b_and!332273)

(assert b_and!332261)

(assert b_and!332269)

(assert b_and!332267)

(assert (not b_next!124411))

(assert (not b_next!124409))

(assert b_and!332265)

(assert (not b_next!124415))

(assert (not b_next!124413))

(assert b_and!332275)

(assert b_and!332271)

(assert (not b_next!124407))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1242179 () Bool)

(declare-fun lt!1500683 () Int)

(assert (=> d!1242179 (>= lt!1500683 0)))

(declare-fun e!2617949 () Int)

(assert (=> d!1242179 (= lt!1500683 e!2617949)))

(declare-fun c!717830 () Bool)

(assert (=> d!1242179 (= c!717830 (is-Nil!46386 (t!348469 rules!3967)))))

(assert (=> d!1242179 (= (ListPrimitiveSize!298 (t!348469 rules!3967)) lt!1500683)))

(declare-fun b!4216915 () Bool)

(assert (=> b!4216915 (= e!2617949 0)))

(declare-fun b!4216916 () Bool)

(assert (=> b!4216916 (= e!2617949 (+ 1 (ListPrimitiveSize!298 (t!348469 (t!348469 rules!3967)))))))

(assert (= (and d!1242179 c!717830) b!4216915))

(assert (= (and d!1242179 (not c!717830)) b!4216916))

(declare-fun m!4805127 () Bool)

(assert (=> b!4216916 m!4805127))

(assert (=> b!4216762 d!1242179))

(declare-fun d!1242181 () Bool)

(declare-fun lt!1500684 () Int)

(assert (=> d!1242181 (>= lt!1500684 0)))

(declare-fun e!2617950 () Int)

(assert (=> d!1242181 (= lt!1500684 e!2617950)))

(declare-fun c!717831 () Bool)

(assert (=> d!1242181 (= c!717831 (is-Nil!46386 rules!3967))))

(assert (=> d!1242181 (= (ListPrimitiveSize!298 rules!3967) lt!1500684)))

(declare-fun b!4216917 () Bool)

(assert (=> b!4216917 (= e!2617950 0)))

(declare-fun b!4216918 () Bool)

(assert (=> b!4216918 (= e!2617950 (+ 1 (ListPrimitiveSize!298 (t!348469 rules!3967))))))

(assert (= (and d!1242181 c!717831) b!4216917))

(assert (= (and d!1242181 (not c!717831)) b!4216918))

(assert (=> b!4216918 m!4804973))

(assert (=> b!4216762 d!1242181))

(declare-fun d!1242183 () Bool)

(assert (=> d!1242183 (= (isEmpty!27479 (t!348469 rules!3967)) (is-Nil!46386 (t!348469 rules!3967)))))

(assert (=> b!4216784 d!1242183))

(declare-fun b!4216937 () Bool)

(declare-fun e!2617958 () Option!9961)

(declare-fun lt!1500699 () Option!9961)

(declare-fun lt!1500696 () Option!9961)

(assert (=> b!4216937 (= e!2617958 (ite (and (is-None!9960 lt!1500699) (is-None!9960 lt!1500696)) None!9960 (ite (is-None!9960 lt!1500696) lt!1500699 (ite (is-None!9960 lt!1500699) lt!1500696 (ite (>= (size!34062 (_1!25192 (v!40844 lt!1500699))) (size!34062 (_1!25192 (v!40844 lt!1500696)))) lt!1500699 lt!1500696)))))))

(declare-fun call!293025 () Option!9961)

(assert (=> b!4216937 (= lt!1500699 call!293025)))

(assert (=> b!4216937 (= lt!1500696 (maxPrefix!4408 thiss!26544 (t!348469 rules!3967) input!3517))))

(declare-fun b!4216938 () Bool)

(declare-fun res!1733037 () Bool)

(declare-fun e!2617959 () Bool)

(assert (=> b!4216938 (=> (not res!1733037) (not e!2617959))))

(declare-fun lt!1500697 () Option!9961)

(assert (=> b!4216938 (= res!1733037 (= (list!16780 (charsOf!5196 (_1!25192 (get!15094 lt!1500697)))) (originalCharacters!8155 (_1!25192 (get!15094 lt!1500697)))))))

(declare-fun b!4216940 () Bool)

(declare-fun res!1733035 () Bool)

(assert (=> b!4216940 (=> (not res!1733035) (not e!2617959))))

(declare-fun matchR!6377 (Regex!12678 List!46509) Bool)

(assert (=> b!4216940 (= res!1733035 (matchR!6377 (regex!7773 (rule!10901 (_1!25192 (get!15094 lt!1500697)))) (list!16780 (charsOf!5196 (_1!25192 (get!15094 lt!1500697))))))))

(declare-fun b!4216941 () Bool)

(declare-fun res!1733040 () Bool)

(assert (=> b!4216941 (=> (not res!1733040) (not e!2617959))))

(declare-fun size!34064 (List!46509) Int)

(assert (=> b!4216941 (= res!1733040 (< (size!34064 (_2!25192 (get!15094 lt!1500697))) (size!34064 input!3517)))))

(declare-fun b!4216942 () Bool)

(declare-fun res!1733036 () Bool)

(assert (=> b!4216942 (=> (not res!1733036) (not e!2617959))))

(declare-fun apply!10698 (TokenValueInjection!15434 BalanceConc!27562) TokenValue!8003)

(declare-fun seqFromList!5758 (List!46509) BalanceConc!27562)

(assert (=> b!4216942 (= res!1733036 (= (value!242061 (_1!25192 (get!15094 lt!1500697))) (apply!10698 (transformation!7773 (rule!10901 (_1!25192 (get!15094 lt!1500697)))) (seqFromList!5758 (originalCharacters!8155 (_1!25192 (get!15094 lt!1500697)))))))))

(declare-fun bm!293020 () Bool)

(assert (=> bm!293020 (= call!293025 (maxPrefixOneRule!3363 thiss!26544 (h!51806 rules!3967) input!3517))))

(declare-fun b!4216943 () Bool)

(declare-fun e!2617957 () Bool)

(assert (=> b!4216943 (= e!2617957 e!2617959)))

(declare-fun res!1733034 () Bool)

(assert (=> b!4216943 (=> (not res!1733034) (not e!2617959))))

(declare-fun isDefined!7399 (Option!9961) Bool)

(assert (=> b!4216943 (= res!1733034 (isDefined!7399 lt!1500697))))

(declare-fun d!1242185 () Bool)

(assert (=> d!1242185 e!2617957))

(declare-fun res!1733039 () Bool)

(assert (=> d!1242185 (=> res!1733039 e!2617957)))

(assert (=> d!1242185 (= res!1733039 (isEmpty!27478 lt!1500697))))

(assert (=> d!1242185 (= lt!1500697 e!2617958)))

(declare-fun c!717834 () Bool)

(assert (=> d!1242185 (= c!717834 (and (is-Cons!46386 rules!3967) (is-Nil!46386 (t!348469 rules!3967))))))

(declare-fun lt!1500695 () Unit!65528)

(declare-fun lt!1500698 () Unit!65528)

(assert (=> d!1242185 (= lt!1500695 lt!1500698)))

(assert (=> d!1242185 (isPrefix!4632 input!3517 input!3517)))

(assert (=> d!1242185 (= lt!1500698 (lemmaIsPrefixRefl!3049 input!3517 input!3517))))

(declare-fun rulesValidInductive!2889 (LexerInterface!7368 List!46510) Bool)

(assert (=> d!1242185 (rulesValidInductive!2889 thiss!26544 rules!3967)))

(assert (=> d!1242185 (= (maxPrefix!4408 thiss!26544 rules!3967 input!3517) lt!1500697)))

(declare-fun b!4216939 () Bool)

(assert (=> b!4216939 (= e!2617958 call!293025)))

(declare-fun b!4216944 () Bool)

(declare-fun res!1733038 () Bool)

(assert (=> b!4216944 (=> (not res!1733038) (not e!2617959))))

(assert (=> b!4216944 (= res!1733038 (= (++!11847 (list!16780 (charsOf!5196 (_1!25192 (get!15094 lt!1500697)))) (_2!25192 (get!15094 lt!1500697))) input!3517))))

(declare-fun b!4216945 () Bool)

(assert (=> b!4216945 (= e!2617959 (contains!9594 rules!3967 (rule!10901 (_1!25192 (get!15094 lt!1500697)))))))

(assert (= (and d!1242185 c!717834) b!4216939))

(assert (= (and d!1242185 (not c!717834)) b!4216937))

(assert (= (or b!4216939 b!4216937) bm!293020))

(assert (= (and d!1242185 (not res!1733039)) b!4216943))

(assert (= (and b!4216943 res!1733034) b!4216938))

(assert (= (and b!4216938 res!1733037) b!4216941))

(assert (= (and b!4216941 res!1733040) b!4216944))

(assert (= (and b!4216944 res!1733038) b!4216942))

(assert (= (and b!4216942 res!1733036) b!4216940))

(assert (= (and b!4216940 res!1733035) b!4216945))

(declare-fun m!4805129 () Bool)

(assert (=> b!4216945 m!4805129))

(declare-fun m!4805131 () Bool)

(assert (=> b!4216945 m!4805131))

(assert (=> b!4216937 m!4804989))

(assert (=> b!4216942 m!4805129))

(declare-fun m!4805133 () Bool)

(assert (=> b!4216942 m!4805133))

(assert (=> b!4216942 m!4805133))

(declare-fun m!4805135 () Bool)

(assert (=> b!4216942 m!4805135))

(declare-fun m!4805137 () Bool)

(assert (=> d!1242185 m!4805137))

(assert (=> d!1242185 m!4804967))

(assert (=> d!1242185 m!4804969))

(declare-fun m!4805139 () Bool)

(assert (=> d!1242185 m!4805139))

(assert (=> b!4216940 m!4805129))

(declare-fun m!4805141 () Bool)

(assert (=> b!4216940 m!4805141))

(assert (=> b!4216940 m!4805141))

(declare-fun m!4805143 () Bool)

(assert (=> b!4216940 m!4805143))

(assert (=> b!4216940 m!4805143))

(declare-fun m!4805145 () Bool)

(assert (=> b!4216940 m!4805145))

(assert (=> b!4216941 m!4805129))

(declare-fun m!4805147 () Bool)

(assert (=> b!4216941 m!4805147))

(declare-fun m!4805149 () Bool)

(assert (=> b!4216941 m!4805149))

(assert (=> b!4216944 m!4805129))

(assert (=> b!4216944 m!4805141))

(assert (=> b!4216944 m!4805141))

(assert (=> b!4216944 m!4805143))

(assert (=> b!4216944 m!4805143))

(declare-fun m!4805151 () Bool)

(assert (=> b!4216944 m!4805151))

(declare-fun m!4805153 () Bool)

(assert (=> b!4216943 m!4805153))

(assert (=> b!4216938 m!4805129))

(assert (=> b!4216938 m!4805141))

(assert (=> b!4216938 m!4805141))

(assert (=> b!4216938 m!4805143))

(assert (=> bm!293020 m!4804961))

(assert (=> b!4216764 d!1242185))

(declare-fun d!1242187 () Bool)

(assert (=> d!1242187 (isEmpty!27478 (maxPrefixOneRule!3363 thiss!26544 rBis!178 input!3517))))

(declare-fun lt!1500702 () Unit!65528)

(declare-fun choose!25838 (LexerInterface!7368 Rule!15346 List!46510 List!46509) Unit!65528)

(assert (=> d!1242187 (= lt!1500702 (choose!25838 thiss!26544 rBis!178 (t!348469 rules!3967) input!3517))))

(assert (=> d!1242187 (not (isEmpty!27479 (t!348469 rules!3967)))))

(assert (=> d!1242187 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!631 thiss!26544 rBis!178 (t!348469 rules!3967) input!3517) lt!1500702)))

(declare-fun bs!597536 () Bool)

(assert (= bs!597536 d!1242187))

(assert (=> bs!597536 m!4804965))

(assert (=> bs!597536 m!4804965))

(declare-fun m!4805155 () Bool)

(assert (=> bs!597536 m!4805155))

(declare-fun m!4805157 () Bool)

(assert (=> bs!597536 m!4805157))

(assert (=> bs!597536 m!4804957))

(assert (=> b!4216785 d!1242187))

(declare-fun d!1242189 () Bool)

(declare-fun res!1733045 () Bool)

(declare-fun e!2617962 () Bool)

(assert (=> d!1242189 (=> (not res!1733045) (not e!2617962))))

(declare-fun isEmpty!27482 (List!46509) Bool)

(assert (=> d!1242189 (= res!1733045 (not (isEmpty!27482 (originalCharacters!8155 tBis!41))))))

(assert (=> d!1242189 (= (inv!61030 tBis!41) e!2617962)))

(declare-fun b!4216950 () Bool)

(declare-fun res!1733046 () Bool)

(assert (=> b!4216950 (=> (not res!1733046) (not e!2617962))))

(declare-fun dynLambda!19983 (Int TokenValue!8003) BalanceConc!27562)

(assert (=> b!4216950 (= res!1733046 (= (originalCharacters!8155 tBis!41) (list!16780 (dynLambda!19983 (toChars!10352 (transformation!7773 (rule!10901 tBis!41))) (value!242061 tBis!41)))))))

(declare-fun b!4216951 () Bool)

(assert (=> b!4216951 (= e!2617962 (= (size!34062 tBis!41) (size!34064 (originalCharacters!8155 tBis!41))))))

(assert (= (and d!1242189 res!1733045) b!4216950))

(assert (= (and b!4216950 res!1733046) b!4216951))

(declare-fun b_lambda!124231 () Bool)

(assert (=> (not b_lambda!124231) (not b!4216950)))

(declare-fun t!348474 () Bool)

(declare-fun tb!253159 () Bool)

(assert (=> (and b!4216786 (= (toChars!10352 (transformation!7773 (rule!10901 t!8364))) (toChars!10352 (transformation!7773 (rule!10901 tBis!41)))) t!348474) tb!253159))

(declare-fun b!4216956 () Bool)

(declare-fun e!2617965 () Bool)

(declare-fun tp!1289979 () Bool)

(declare-fun inv!61033 (Conc!13984) Bool)

(assert (=> b!4216956 (= e!2617965 (and (inv!61033 (c!717821 (dynLambda!19983 (toChars!10352 (transformation!7773 (rule!10901 tBis!41))) (value!242061 tBis!41)))) tp!1289979))))

(declare-fun result!308568 () Bool)

(declare-fun inv!61034 (BalanceConc!27562) Bool)

(assert (=> tb!253159 (= result!308568 (and (inv!61034 (dynLambda!19983 (toChars!10352 (transformation!7773 (rule!10901 tBis!41))) (value!242061 tBis!41))) e!2617965))))

(assert (= tb!253159 b!4216956))

(declare-fun m!4805159 () Bool)

(assert (=> b!4216956 m!4805159))

(declare-fun m!4805161 () Bool)

(assert (=> tb!253159 m!4805161))

(assert (=> b!4216950 t!348474))

(declare-fun b_and!332293 () Bool)

(assert (= b_and!332263 (and (=> t!348474 result!308568) b_and!332293)))

(declare-fun t!348476 () Bool)

(declare-fun tb!253161 () Bool)

(assert (=> (and b!4216783 (= (toChars!10352 (transformation!7773 rBis!178)) (toChars!10352 (transformation!7773 (rule!10901 tBis!41)))) t!348476) tb!253161))

(declare-fun result!308572 () Bool)

(assert (= result!308572 result!308568))

(assert (=> b!4216950 t!348476))

(declare-fun b_and!332295 () Bool)

(assert (= b_and!332267 (and (=> t!348476 result!308572) b_and!332295)))

(declare-fun t!348478 () Bool)

(declare-fun tb!253163 () Bool)

(assert (=> (and b!4216769 (= (toChars!10352 (transformation!7773 (rule!10901 tBis!41))) (toChars!10352 (transformation!7773 (rule!10901 tBis!41)))) t!348478) tb!253163))

(declare-fun result!308574 () Bool)

(assert (= result!308574 result!308568))

(assert (=> b!4216950 t!348478))

(declare-fun b_and!332297 () Bool)

(assert (= b_and!332271 (and (=> t!348478 result!308574) b_and!332297)))

(declare-fun tb!253165 () Bool)

(declare-fun t!348480 () Bool)

(assert (=> (and b!4216782 (= (toChars!10352 (transformation!7773 (h!51806 rules!3967))) (toChars!10352 (transformation!7773 (rule!10901 tBis!41)))) t!348480) tb!253165))

(declare-fun result!308576 () Bool)

(assert (= result!308576 result!308568))

(assert (=> b!4216950 t!348480))

(declare-fun b_and!332299 () Bool)

(assert (= b_and!332275 (and (=> t!348480 result!308576) b_and!332299)))

(declare-fun m!4805163 () Bool)

(assert (=> d!1242189 m!4805163))

(declare-fun m!4805165 () Bool)

(assert (=> b!4216950 m!4805165))

(assert (=> b!4216950 m!4805165))

(declare-fun m!4805167 () Bool)

(assert (=> b!4216950 m!4805167))

(declare-fun m!4805169 () Bool)

(assert (=> b!4216951 m!4805169))

(assert (=> start!403032 d!1242189))

(declare-fun d!1242191 () Bool)

(declare-fun res!1733047 () Bool)

(declare-fun e!2617966 () Bool)

(assert (=> d!1242191 (=> (not res!1733047) (not e!2617966))))

(assert (=> d!1242191 (= res!1733047 (not (isEmpty!27482 (originalCharacters!8155 t!8364))))))

(assert (=> d!1242191 (= (inv!61030 t!8364) e!2617966)))

(declare-fun b!4216957 () Bool)

(declare-fun res!1733048 () Bool)

(assert (=> b!4216957 (=> (not res!1733048) (not e!2617966))))

(assert (=> b!4216957 (= res!1733048 (= (originalCharacters!8155 t!8364) (list!16780 (dynLambda!19983 (toChars!10352 (transformation!7773 (rule!10901 t!8364))) (value!242061 t!8364)))))))

(declare-fun b!4216958 () Bool)

(assert (=> b!4216958 (= e!2617966 (= (size!34062 t!8364) (size!34064 (originalCharacters!8155 t!8364))))))

(assert (= (and d!1242191 res!1733047) b!4216957))

(assert (= (and b!4216957 res!1733048) b!4216958))

(declare-fun b_lambda!124233 () Bool)

(assert (=> (not b_lambda!124233) (not b!4216957)))

(declare-fun t!348482 () Bool)

(declare-fun tb!253167 () Bool)

(assert (=> (and b!4216786 (= (toChars!10352 (transformation!7773 (rule!10901 t!8364))) (toChars!10352 (transformation!7773 (rule!10901 t!8364)))) t!348482) tb!253167))

(declare-fun b!4216959 () Bool)

(declare-fun e!2617967 () Bool)

(declare-fun tp!1289980 () Bool)

(assert (=> b!4216959 (= e!2617967 (and (inv!61033 (c!717821 (dynLambda!19983 (toChars!10352 (transformation!7773 (rule!10901 t!8364))) (value!242061 t!8364)))) tp!1289980))))

(declare-fun result!308578 () Bool)

(assert (=> tb!253167 (= result!308578 (and (inv!61034 (dynLambda!19983 (toChars!10352 (transformation!7773 (rule!10901 t!8364))) (value!242061 t!8364))) e!2617967))))

(assert (= tb!253167 b!4216959))

(declare-fun m!4805171 () Bool)

(assert (=> b!4216959 m!4805171))

(declare-fun m!4805173 () Bool)

(assert (=> tb!253167 m!4805173))

(assert (=> b!4216957 t!348482))

(declare-fun b_and!332301 () Bool)

(assert (= b_and!332293 (and (=> t!348482 result!308578) b_and!332301)))

(declare-fun tb!253169 () Bool)

(declare-fun t!348484 () Bool)

(assert (=> (and b!4216783 (= (toChars!10352 (transformation!7773 rBis!178)) (toChars!10352 (transformation!7773 (rule!10901 t!8364)))) t!348484) tb!253169))

(declare-fun result!308580 () Bool)

(assert (= result!308580 result!308578))

(assert (=> b!4216957 t!348484))

(declare-fun b_and!332303 () Bool)

(assert (= b_and!332295 (and (=> t!348484 result!308580) b_and!332303)))

(declare-fun t!348486 () Bool)

(declare-fun tb!253171 () Bool)

(assert (=> (and b!4216769 (= (toChars!10352 (transformation!7773 (rule!10901 tBis!41))) (toChars!10352 (transformation!7773 (rule!10901 t!8364)))) t!348486) tb!253171))

(declare-fun result!308582 () Bool)

(assert (= result!308582 result!308578))

(assert (=> b!4216957 t!348486))

(declare-fun b_and!332305 () Bool)

(assert (= b_and!332297 (and (=> t!348486 result!308582) b_and!332305)))

(declare-fun t!348488 () Bool)

(declare-fun tb!253173 () Bool)

(assert (=> (and b!4216782 (= (toChars!10352 (transformation!7773 (h!51806 rules!3967))) (toChars!10352 (transformation!7773 (rule!10901 t!8364)))) t!348488) tb!253173))

(declare-fun result!308584 () Bool)

(assert (= result!308584 result!308578))

(assert (=> b!4216957 t!348488))

(declare-fun b_and!332307 () Bool)

(assert (= b_and!332299 (and (=> t!348488 result!308584) b_and!332307)))

(declare-fun m!4805175 () Bool)

(assert (=> d!1242191 m!4805175))

(declare-fun m!4805177 () Bool)

(assert (=> b!4216957 m!4805177))

(assert (=> b!4216957 m!4805177))

(declare-fun m!4805179 () Bool)

(assert (=> b!4216957 m!4805179))

(declare-fun m!4805181 () Bool)

(assert (=> b!4216958 m!4805181))

(assert (=> start!403032 d!1242191))

(declare-fun d!1242193 () Bool)

(declare-fun lt!1500705 () Bool)

(declare-fun content!7274 (List!46510) (Set Rule!15346))

(assert (=> d!1242193 (= lt!1500705 (set.member rBis!178 (content!7274 rules!3967)))))

(declare-fun e!2617973 () Bool)

(assert (=> d!1242193 (= lt!1500705 e!2617973)))

(declare-fun res!1733053 () Bool)

(assert (=> d!1242193 (=> (not res!1733053) (not e!2617973))))

(assert (=> d!1242193 (= res!1733053 (is-Cons!46386 rules!3967))))

(assert (=> d!1242193 (= (contains!9594 rules!3967 rBis!178) lt!1500705)))

(declare-fun b!4216964 () Bool)

(declare-fun e!2617972 () Bool)

(assert (=> b!4216964 (= e!2617973 e!2617972)))

(declare-fun res!1733054 () Bool)

(assert (=> b!4216964 (=> res!1733054 e!2617972)))

(assert (=> b!4216964 (= res!1733054 (= (h!51806 rules!3967) rBis!178))))

(declare-fun b!4216965 () Bool)

(assert (=> b!4216965 (= e!2617972 (contains!9594 (t!348469 rules!3967) rBis!178))))

(assert (= (and d!1242193 res!1733053) b!4216964))

(assert (= (and b!4216964 (not res!1733054)) b!4216965))

(declare-fun m!4805183 () Bool)

(assert (=> d!1242193 m!4805183))

(declare-fun m!4805185 () Bool)

(assert (=> d!1242193 m!4805185))

(assert (=> b!4216965 m!4805021))

(assert (=> b!4216765 d!1242193))

(declare-fun d!1242195 () Bool)

(assert (=> d!1242195 (= (isEmpty!27478 lt!1500645) (not (is-Some!9960 lt!1500645)))))

(assert (=> b!4216766 d!1242195))

(declare-fun b!4216966 () Bool)

(declare-fun e!2617975 () Option!9961)

(declare-fun lt!1500710 () Option!9961)

(declare-fun lt!1500707 () Option!9961)

(assert (=> b!4216966 (= e!2617975 (ite (and (is-None!9960 lt!1500710) (is-None!9960 lt!1500707)) None!9960 (ite (is-None!9960 lt!1500707) lt!1500710 (ite (is-None!9960 lt!1500710) lt!1500707 (ite (>= (size!34062 (_1!25192 (v!40844 lt!1500710))) (size!34062 (_1!25192 (v!40844 lt!1500707)))) lt!1500710 lt!1500707)))))))

(declare-fun call!293026 () Option!9961)

(assert (=> b!4216966 (= lt!1500710 call!293026)))

(assert (=> b!4216966 (= lt!1500707 (maxPrefix!4408 thiss!26544 (t!348469 (t!348469 rules!3967)) input!3517))))

(declare-fun b!4216967 () Bool)

(declare-fun res!1733058 () Bool)

(declare-fun e!2617976 () Bool)

(assert (=> b!4216967 (=> (not res!1733058) (not e!2617976))))

(declare-fun lt!1500708 () Option!9961)

(assert (=> b!4216967 (= res!1733058 (= (list!16780 (charsOf!5196 (_1!25192 (get!15094 lt!1500708)))) (originalCharacters!8155 (_1!25192 (get!15094 lt!1500708)))))))

(declare-fun b!4216969 () Bool)

(declare-fun res!1733056 () Bool)

(assert (=> b!4216969 (=> (not res!1733056) (not e!2617976))))

(assert (=> b!4216969 (= res!1733056 (matchR!6377 (regex!7773 (rule!10901 (_1!25192 (get!15094 lt!1500708)))) (list!16780 (charsOf!5196 (_1!25192 (get!15094 lt!1500708))))))))

(declare-fun b!4216970 () Bool)

(declare-fun res!1733061 () Bool)

(assert (=> b!4216970 (=> (not res!1733061) (not e!2617976))))

(assert (=> b!4216970 (= res!1733061 (< (size!34064 (_2!25192 (get!15094 lt!1500708))) (size!34064 input!3517)))))

(declare-fun b!4216971 () Bool)

(declare-fun res!1733057 () Bool)

(assert (=> b!4216971 (=> (not res!1733057) (not e!2617976))))

(assert (=> b!4216971 (= res!1733057 (= (value!242061 (_1!25192 (get!15094 lt!1500708))) (apply!10698 (transformation!7773 (rule!10901 (_1!25192 (get!15094 lt!1500708)))) (seqFromList!5758 (originalCharacters!8155 (_1!25192 (get!15094 lt!1500708)))))))))

(declare-fun bm!293021 () Bool)

(assert (=> bm!293021 (= call!293026 (maxPrefixOneRule!3363 thiss!26544 (h!51806 (t!348469 rules!3967)) input!3517))))

(declare-fun b!4216972 () Bool)

(declare-fun e!2617974 () Bool)

(assert (=> b!4216972 (= e!2617974 e!2617976)))

(declare-fun res!1733055 () Bool)

(assert (=> b!4216972 (=> (not res!1733055) (not e!2617976))))

(assert (=> b!4216972 (= res!1733055 (isDefined!7399 lt!1500708))))

(declare-fun d!1242197 () Bool)

(assert (=> d!1242197 e!2617974))

(declare-fun res!1733060 () Bool)

(assert (=> d!1242197 (=> res!1733060 e!2617974)))

(assert (=> d!1242197 (= res!1733060 (isEmpty!27478 lt!1500708))))

(assert (=> d!1242197 (= lt!1500708 e!2617975)))

(declare-fun c!717835 () Bool)

(assert (=> d!1242197 (= c!717835 (and (is-Cons!46386 (t!348469 rules!3967)) (is-Nil!46386 (t!348469 (t!348469 rules!3967)))))))

(declare-fun lt!1500706 () Unit!65528)

(declare-fun lt!1500709 () Unit!65528)

(assert (=> d!1242197 (= lt!1500706 lt!1500709)))

(assert (=> d!1242197 (isPrefix!4632 input!3517 input!3517)))

(assert (=> d!1242197 (= lt!1500709 (lemmaIsPrefixRefl!3049 input!3517 input!3517))))

(assert (=> d!1242197 (rulesValidInductive!2889 thiss!26544 (t!348469 rules!3967))))

(assert (=> d!1242197 (= (maxPrefix!4408 thiss!26544 (t!348469 rules!3967) input!3517) lt!1500708)))

(declare-fun b!4216968 () Bool)

(assert (=> b!4216968 (= e!2617975 call!293026)))

(declare-fun b!4216973 () Bool)

(declare-fun res!1733059 () Bool)

(assert (=> b!4216973 (=> (not res!1733059) (not e!2617976))))

(assert (=> b!4216973 (= res!1733059 (= (++!11847 (list!16780 (charsOf!5196 (_1!25192 (get!15094 lt!1500708)))) (_2!25192 (get!15094 lt!1500708))) input!3517))))

(declare-fun b!4216974 () Bool)

(assert (=> b!4216974 (= e!2617976 (contains!9594 (t!348469 rules!3967) (rule!10901 (_1!25192 (get!15094 lt!1500708)))))))

(assert (= (and d!1242197 c!717835) b!4216968))

(assert (= (and d!1242197 (not c!717835)) b!4216966))

(assert (= (or b!4216968 b!4216966) bm!293021))

(assert (= (and d!1242197 (not res!1733060)) b!4216972))

(assert (= (and b!4216972 res!1733055) b!4216967))

(assert (= (and b!4216967 res!1733058) b!4216970))

(assert (= (and b!4216970 res!1733061) b!4216973))

(assert (= (and b!4216973 res!1733059) b!4216971))

(assert (= (and b!4216971 res!1733057) b!4216969))

(assert (= (and b!4216969 res!1733056) b!4216974))

(declare-fun m!4805187 () Bool)

(assert (=> b!4216974 m!4805187))

(declare-fun m!4805189 () Bool)

(assert (=> b!4216974 m!4805189))

(declare-fun m!4805191 () Bool)

(assert (=> b!4216966 m!4805191))

(assert (=> b!4216971 m!4805187))

(declare-fun m!4805193 () Bool)

(assert (=> b!4216971 m!4805193))

(assert (=> b!4216971 m!4805193))

(declare-fun m!4805195 () Bool)

(assert (=> b!4216971 m!4805195))

(declare-fun m!4805197 () Bool)

(assert (=> d!1242197 m!4805197))

(assert (=> d!1242197 m!4804967))

(assert (=> d!1242197 m!4804969))

(declare-fun m!4805199 () Bool)

(assert (=> d!1242197 m!4805199))

(assert (=> b!4216969 m!4805187))

(declare-fun m!4805201 () Bool)

(assert (=> b!4216969 m!4805201))

(assert (=> b!4216969 m!4805201))

(declare-fun m!4805203 () Bool)

(assert (=> b!4216969 m!4805203))

(assert (=> b!4216969 m!4805203))

(declare-fun m!4805205 () Bool)

(assert (=> b!4216969 m!4805205))

(assert (=> b!4216970 m!4805187))

(declare-fun m!4805207 () Bool)

(assert (=> b!4216970 m!4805207))

(assert (=> b!4216970 m!4805149))

(assert (=> b!4216973 m!4805187))

(assert (=> b!4216973 m!4805201))

(assert (=> b!4216973 m!4805201))

(assert (=> b!4216973 m!4805203))

(assert (=> b!4216973 m!4805203))

(declare-fun m!4805209 () Bool)

(assert (=> b!4216973 m!4805209))

(declare-fun m!4805211 () Bool)

(assert (=> b!4216972 m!4805211))

(assert (=> b!4216967 m!4805187))

(assert (=> b!4216967 m!4805201))

(assert (=> b!4216967 m!4805201))

(assert (=> b!4216967 m!4805203))

(declare-fun m!4805213 () Bool)

(assert (=> bm!293021 m!4805213))

(assert (=> b!4216766 d!1242197))

(declare-fun d!1242199 () Bool)

(assert (=> d!1242199 (rulesInvariant!6579 thiss!26544 (t!348469 rules!3967))))

(declare-fun lt!1500713 () Unit!65528)

(declare-fun choose!25839 (LexerInterface!7368 Rule!15346 List!46510) Unit!65528)

(assert (=> d!1242199 (= lt!1500713 (choose!25839 thiss!26544 (h!51806 rules!3967) (t!348469 rules!3967)))))

(assert (=> d!1242199 (rulesInvariant!6579 thiss!26544 (Cons!46386 (h!51806 rules!3967) (t!348469 rules!3967)))))

(assert (=> d!1242199 (= (lemmaInvariantOnRulesThenOnTail!863 thiss!26544 (h!51806 rules!3967) (t!348469 rules!3967)) lt!1500713)))

(declare-fun bs!597537 () Bool)

(assert (= bs!597537 d!1242199))

(assert (=> bs!597537 m!4805003))

(declare-fun m!4805215 () Bool)

(assert (=> bs!597537 m!4805215))

(declare-fun m!4805217 () Bool)

(assert (=> bs!597537 m!4805217))

(assert (=> b!4216766 d!1242199))

(declare-fun d!1242203 () Bool)

(declare-fun list!16782 (Conc!13984) List!46509)

(assert (=> d!1242203 (= (list!16780 (charsOf!5196 (_1!25192 lt!1500646))) (list!16782 (c!717821 (charsOf!5196 (_1!25192 lt!1500646)))))))

(declare-fun bs!597538 () Bool)

(assert (= bs!597538 d!1242203))

(declare-fun m!4805219 () Bool)

(assert (=> bs!597538 m!4805219))

(assert (=> b!4216766 d!1242203))

(declare-fun d!1242205 () Bool)

(declare-fun e!2617985 () Bool)

(assert (=> d!1242205 e!2617985))

(declare-fun res!1733070 () Bool)

(assert (=> d!1242205 (=> res!1733070 e!2617985)))

(declare-fun lt!1500716 () Bool)

(assert (=> d!1242205 (= res!1733070 (not lt!1500716))))

(declare-fun e!2617983 () Bool)

(assert (=> d!1242205 (= lt!1500716 e!2617983)))

(declare-fun res!1733072 () Bool)

(assert (=> d!1242205 (=> res!1733072 e!2617983)))

(assert (=> d!1242205 (= res!1733072 (is-Nil!46385 lt!1500644))))

(assert (=> d!1242205 (= (isPrefix!4632 lt!1500644 lt!1500643) lt!1500716)))

(declare-fun b!4216985 () Bool)

(declare-fun e!2617984 () Bool)

(declare-fun tail!6794 (List!46509) List!46509)

(assert (=> b!4216985 (= e!2617984 (isPrefix!4632 (tail!6794 lt!1500644) (tail!6794 lt!1500643)))))

(declare-fun b!4216983 () Bool)

(assert (=> b!4216983 (= e!2617983 e!2617984)))

(declare-fun res!1733073 () Bool)

(assert (=> b!4216983 (=> (not res!1733073) (not e!2617984))))

(assert (=> b!4216983 (= res!1733073 (not (is-Nil!46385 lt!1500643)))))

(declare-fun b!4216986 () Bool)

(assert (=> b!4216986 (= e!2617985 (>= (size!34064 lt!1500643) (size!34064 lt!1500644)))))

(declare-fun b!4216984 () Bool)

(declare-fun res!1733071 () Bool)

(assert (=> b!4216984 (=> (not res!1733071) (not e!2617984))))

(declare-fun head!8947 (List!46509) C!25550)

(assert (=> b!4216984 (= res!1733071 (= (head!8947 lt!1500644) (head!8947 lt!1500643)))))

(assert (= (and d!1242205 (not res!1733072)) b!4216983))

(assert (= (and b!4216983 res!1733073) b!4216984))

(assert (= (and b!4216984 res!1733071) b!4216985))

(assert (= (and d!1242205 (not res!1733070)) b!4216986))

(declare-fun m!4805221 () Bool)

(assert (=> b!4216985 m!4805221))

(declare-fun m!4805223 () Bool)

(assert (=> b!4216985 m!4805223))

(assert (=> b!4216985 m!4805221))

(assert (=> b!4216985 m!4805223))

(declare-fun m!4805225 () Bool)

(assert (=> b!4216985 m!4805225))

(declare-fun m!4805227 () Bool)

(assert (=> b!4216986 m!4805227))

(declare-fun m!4805229 () Bool)

(assert (=> b!4216986 m!4805229))

(declare-fun m!4805231 () Bool)

(assert (=> b!4216984 m!4805231))

(declare-fun m!4805233 () Bool)

(assert (=> b!4216984 m!4805233))

(assert (=> b!4216766 d!1242205))

(declare-fun d!1242211 () Bool)

(assert (=> d!1242211 (isPrefix!4632 lt!1500644 (++!11847 lt!1500644 (_2!25192 lt!1500646)))))

(declare-fun lt!1500719 () Unit!65528)

(declare-fun choose!25840 (List!46509 List!46509) Unit!65528)

(assert (=> d!1242211 (= lt!1500719 (choose!25840 lt!1500644 (_2!25192 lt!1500646)))))

(assert (=> d!1242211 (= (lemmaConcatTwoListThenFirstIsPrefix!3087 lt!1500644 (_2!25192 lt!1500646)) lt!1500719)))

(declare-fun bs!597539 () Bool)

(assert (= bs!597539 d!1242211))

(assert (=> bs!597539 m!4804991))

(assert (=> bs!597539 m!4804991))

(declare-fun m!4805235 () Bool)

(assert (=> bs!597539 m!4805235))

(declare-fun m!4805237 () Bool)

(assert (=> bs!597539 m!4805237))

(assert (=> b!4216766 d!1242211))

(declare-fun d!1242213 () Bool)

(declare-fun lt!1500722 () BalanceConc!27562)

(assert (=> d!1242213 (= (list!16780 lt!1500722) (originalCharacters!8155 (_1!25192 lt!1500646)))))

(assert (=> d!1242213 (= lt!1500722 (dynLambda!19983 (toChars!10352 (transformation!7773 (rule!10901 (_1!25192 lt!1500646)))) (value!242061 (_1!25192 lt!1500646))))))

(assert (=> d!1242213 (= (charsOf!5196 (_1!25192 lt!1500646)) lt!1500722)))

(declare-fun b_lambda!124235 () Bool)

(assert (=> (not b_lambda!124235) (not d!1242213)))

(declare-fun tb!253175 () Bool)

(declare-fun t!348490 () Bool)

(assert (=> (and b!4216786 (= (toChars!10352 (transformation!7773 (rule!10901 t!8364))) (toChars!10352 (transformation!7773 (rule!10901 (_1!25192 lt!1500646))))) t!348490) tb!253175))

(declare-fun b!4216989 () Bool)

(declare-fun e!2617988 () Bool)

(declare-fun tp!1289981 () Bool)

(assert (=> b!4216989 (= e!2617988 (and (inv!61033 (c!717821 (dynLambda!19983 (toChars!10352 (transformation!7773 (rule!10901 (_1!25192 lt!1500646)))) (value!242061 (_1!25192 lt!1500646))))) tp!1289981))))

(declare-fun result!308586 () Bool)

(assert (=> tb!253175 (= result!308586 (and (inv!61034 (dynLambda!19983 (toChars!10352 (transformation!7773 (rule!10901 (_1!25192 lt!1500646)))) (value!242061 (_1!25192 lt!1500646)))) e!2617988))))

(assert (= tb!253175 b!4216989))

(declare-fun m!4805239 () Bool)

(assert (=> b!4216989 m!4805239))

(declare-fun m!4805241 () Bool)

(assert (=> tb!253175 m!4805241))

(assert (=> d!1242213 t!348490))

(declare-fun b_and!332309 () Bool)

(assert (= b_and!332301 (and (=> t!348490 result!308586) b_and!332309)))

(declare-fun t!348492 () Bool)

(declare-fun tb!253177 () Bool)

(assert (=> (and b!4216783 (= (toChars!10352 (transformation!7773 rBis!178)) (toChars!10352 (transformation!7773 (rule!10901 (_1!25192 lt!1500646))))) t!348492) tb!253177))

(declare-fun result!308588 () Bool)

(assert (= result!308588 result!308586))

(assert (=> d!1242213 t!348492))

(declare-fun b_and!332311 () Bool)

(assert (= b_and!332303 (and (=> t!348492 result!308588) b_and!332311)))

(declare-fun t!348494 () Bool)

(declare-fun tb!253179 () Bool)

(assert (=> (and b!4216769 (= (toChars!10352 (transformation!7773 (rule!10901 tBis!41))) (toChars!10352 (transformation!7773 (rule!10901 (_1!25192 lt!1500646))))) t!348494) tb!253179))

(declare-fun result!308590 () Bool)

(assert (= result!308590 result!308586))

(assert (=> d!1242213 t!348494))

(declare-fun b_and!332313 () Bool)

(assert (= b_and!332305 (and (=> t!348494 result!308590) b_and!332313)))

(declare-fun t!348496 () Bool)

(declare-fun tb!253181 () Bool)

(assert (=> (and b!4216782 (= (toChars!10352 (transformation!7773 (h!51806 rules!3967))) (toChars!10352 (transformation!7773 (rule!10901 (_1!25192 lt!1500646))))) t!348496) tb!253181))

(declare-fun result!308592 () Bool)

(assert (= result!308592 result!308586))

(assert (=> d!1242213 t!348496))

(declare-fun b_and!332315 () Bool)

(assert (= b_and!332307 (and (=> t!348496 result!308592) b_and!332315)))

(declare-fun m!4805243 () Bool)

(assert (=> d!1242213 m!4805243))

(declare-fun m!4805245 () Bool)

(assert (=> d!1242213 m!4805245))

(assert (=> b!4216766 d!1242213))

(declare-fun d!1242215 () Bool)

(declare-fun res!1733079 () Bool)

(declare-fun e!2617992 () Bool)

(assert (=> d!1242215 (=> (not res!1733079) (not e!2617992))))

(declare-fun rulesValid!3047 (LexerInterface!7368 List!46510) Bool)

(assert (=> d!1242215 (= res!1733079 (rulesValid!3047 thiss!26544 (t!348469 rules!3967)))))

(assert (=> d!1242215 (= (rulesInvariant!6579 thiss!26544 (t!348469 rules!3967)) e!2617992)))

(declare-fun b!4216993 () Bool)

(declare-datatypes ((List!46514 0))(
  ( (Nil!46390) (Cons!46390 (h!51810 String!53887) (t!348503 List!46514)) )
))
(declare-fun noDuplicateTag!3208 (LexerInterface!7368 List!46510 List!46514) Bool)

(assert (=> b!4216993 (= e!2617992 (noDuplicateTag!3208 thiss!26544 (t!348469 rules!3967) Nil!46390))))

(assert (= (and d!1242215 res!1733079) b!4216993))

(declare-fun m!4805251 () Bool)

(assert (=> d!1242215 m!4805251))

(declare-fun m!4805253 () Bool)

(assert (=> b!4216993 m!4805253))

(assert (=> b!4216766 d!1242215))

(declare-fun b!4217002 () Bool)

(declare-fun e!2617997 () List!46509)

(assert (=> b!4217002 (= e!2617997 (_2!25192 lt!1500646))))

(declare-fun b!4217004 () Bool)

(declare-fun res!1733085 () Bool)

(declare-fun e!2617998 () Bool)

(assert (=> b!4217004 (=> (not res!1733085) (not e!2617998))))

(declare-fun lt!1500725 () List!46509)

(assert (=> b!4217004 (= res!1733085 (= (size!34064 lt!1500725) (+ (size!34064 lt!1500644) (size!34064 (_2!25192 lt!1500646)))))))

(declare-fun d!1242219 () Bool)

(assert (=> d!1242219 e!2617998))

(declare-fun res!1733084 () Bool)

(assert (=> d!1242219 (=> (not res!1733084) (not e!2617998))))

(declare-fun content!7275 (List!46509) (Set C!25550))

(assert (=> d!1242219 (= res!1733084 (= (content!7275 lt!1500725) (set.union (content!7275 lt!1500644) (content!7275 (_2!25192 lt!1500646)))))))

(assert (=> d!1242219 (= lt!1500725 e!2617997)))

(declare-fun c!717838 () Bool)

(assert (=> d!1242219 (= c!717838 (is-Nil!46385 lt!1500644))))

(assert (=> d!1242219 (= (++!11847 lt!1500644 (_2!25192 lt!1500646)) lt!1500725)))

(declare-fun b!4217005 () Bool)

(assert (=> b!4217005 (= e!2617998 (or (not (= (_2!25192 lt!1500646) Nil!46385)) (= lt!1500725 lt!1500644)))))

(declare-fun b!4217003 () Bool)

(assert (=> b!4217003 (= e!2617997 (Cons!46385 (h!51805 lt!1500644) (++!11847 (t!348468 lt!1500644) (_2!25192 lt!1500646))))))

(assert (= (and d!1242219 c!717838) b!4217002))

(assert (= (and d!1242219 (not c!717838)) b!4217003))

(assert (= (and d!1242219 res!1733084) b!4217004))

(assert (= (and b!4217004 res!1733085) b!4217005))

(declare-fun m!4805255 () Bool)

(assert (=> b!4217004 m!4805255))

(assert (=> b!4217004 m!4805229))

(declare-fun m!4805257 () Bool)

(assert (=> b!4217004 m!4805257))

(declare-fun m!4805259 () Bool)

(assert (=> d!1242219 m!4805259))

(declare-fun m!4805261 () Bool)

(assert (=> d!1242219 m!4805261))

(declare-fun m!4805263 () Bool)

(assert (=> d!1242219 m!4805263))

(declare-fun m!4805265 () Bool)

(assert (=> b!4217003 m!4805265))

(assert (=> b!4216766 d!1242219))

(declare-fun d!1242221 () Bool)

(assert (=> d!1242221 (= (get!15094 lt!1500645) (v!40844 lt!1500645))))

(assert (=> b!4216766 d!1242221))

(declare-fun d!1242223 () Bool)

(declare-fun e!2618001 () Bool)

(assert (=> d!1242223 e!2618001))

(declare-fun res!1733086 () Bool)

(assert (=> d!1242223 (=> res!1733086 e!2618001)))

(declare-fun lt!1500726 () Bool)

(assert (=> d!1242223 (= res!1733086 (not lt!1500726))))

(declare-fun e!2617999 () Bool)

(assert (=> d!1242223 (= lt!1500726 e!2617999)))

(declare-fun res!1733088 () Bool)

(assert (=> d!1242223 (=> res!1733088 e!2617999)))

(assert (=> d!1242223 (= res!1733088 (is-Nil!46385 p!3001))))

(assert (=> d!1242223 (= (isPrefix!4632 p!3001 input!3517) lt!1500726)))

(declare-fun b!4217008 () Bool)

(declare-fun e!2618000 () Bool)

(assert (=> b!4217008 (= e!2618000 (isPrefix!4632 (tail!6794 p!3001) (tail!6794 input!3517)))))

(declare-fun b!4217006 () Bool)

(assert (=> b!4217006 (= e!2617999 e!2618000)))

(declare-fun res!1733089 () Bool)

(assert (=> b!4217006 (=> (not res!1733089) (not e!2618000))))

(assert (=> b!4217006 (= res!1733089 (not (is-Nil!46385 input!3517)))))

(declare-fun b!4217009 () Bool)

(assert (=> b!4217009 (= e!2618001 (>= (size!34064 input!3517) (size!34064 p!3001)))))

(declare-fun b!4217007 () Bool)

(declare-fun res!1733087 () Bool)

(assert (=> b!4217007 (=> (not res!1733087) (not e!2618000))))

(assert (=> b!4217007 (= res!1733087 (= (head!8947 p!3001) (head!8947 input!3517)))))

(assert (= (and d!1242223 (not res!1733088)) b!4217006))

(assert (= (and b!4217006 res!1733089) b!4217007))

(assert (= (and b!4217007 res!1733087) b!4217008))

(assert (= (and d!1242223 (not res!1733086)) b!4217009))

(declare-fun m!4805267 () Bool)

(assert (=> b!4217008 m!4805267))

(declare-fun m!4805269 () Bool)

(assert (=> b!4217008 m!4805269))

(assert (=> b!4217008 m!4805267))

(assert (=> b!4217008 m!4805269))

(declare-fun m!4805271 () Bool)

(assert (=> b!4217008 m!4805271))

(assert (=> b!4217009 m!4805149))

(declare-fun m!4805273 () Bool)

(assert (=> b!4217009 m!4805273))

(declare-fun m!4805275 () Bool)

(assert (=> b!4217007 m!4805275))

(declare-fun m!4805277 () Bool)

(assert (=> b!4217007 m!4805277))

(assert (=> b!4216787 d!1242223))

(declare-fun d!1242225 () Bool)

(assert (=> d!1242225 (= (inv!61026 (tag!8637 (rule!10901 t!8364))) (= (mod (str.len (value!242060 (tag!8637 (rule!10901 t!8364)))) 2) 0))))

(assert (=> b!4216788 d!1242225))

(declare-fun d!1242227 () Bool)

(declare-fun res!1733092 () Bool)

(declare-fun e!2618004 () Bool)

(assert (=> d!1242227 (=> (not res!1733092) (not e!2618004))))

(declare-fun semiInverseModEq!3378 (Int Int) Bool)

(assert (=> d!1242227 (= res!1733092 (semiInverseModEq!3378 (toChars!10352 (transformation!7773 (rule!10901 t!8364))) (toValue!10493 (transformation!7773 (rule!10901 t!8364)))))))

(assert (=> d!1242227 (= (inv!61029 (transformation!7773 (rule!10901 t!8364))) e!2618004)))

(declare-fun b!4217012 () Bool)

(declare-fun equivClasses!3277 (Int Int) Bool)

(assert (=> b!4217012 (= e!2618004 (equivClasses!3277 (toChars!10352 (transformation!7773 (rule!10901 t!8364))) (toValue!10493 (transformation!7773 (rule!10901 t!8364)))))))

(assert (= (and d!1242227 res!1733092) b!4217012))

(declare-fun m!4805279 () Bool)

(assert (=> d!1242227 m!4805279))

(declare-fun m!4805281 () Bool)

(assert (=> b!4217012 m!4805281))

(assert (=> b!4216788 d!1242227))

(declare-fun b!4217013 () Bool)

(declare-fun e!2618005 () List!46509)

(assert (=> b!4217013 (= e!2618005 suffixBis!41)))

(declare-fun b!4217015 () Bool)

(declare-fun res!1733094 () Bool)

(declare-fun e!2618006 () Bool)

(assert (=> b!4217015 (=> (not res!1733094) (not e!2618006))))

(declare-fun lt!1500727 () List!46509)

(assert (=> b!4217015 (= res!1733094 (= (size!34064 lt!1500727) (+ (size!34064 pBis!121) (size!34064 suffixBis!41))))))

(declare-fun d!1242229 () Bool)

(assert (=> d!1242229 e!2618006))

(declare-fun res!1733093 () Bool)

(assert (=> d!1242229 (=> (not res!1733093) (not e!2618006))))

(assert (=> d!1242229 (= res!1733093 (= (content!7275 lt!1500727) (set.union (content!7275 pBis!121) (content!7275 suffixBis!41))))))

(assert (=> d!1242229 (= lt!1500727 e!2618005)))

(declare-fun c!717839 () Bool)

(assert (=> d!1242229 (= c!717839 (is-Nil!46385 pBis!121))))

(assert (=> d!1242229 (= (++!11847 pBis!121 suffixBis!41) lt!1500727)))

(declare-fun b!4217016 () Bool)

(assert (=> b!4217016 (= e!2618006 (or (not (= suffixBis!41 Nil!46385)) (= lt!1500727 pBis!121)))))

(declare-fun b!4217014 () Bool)

(assert (=> b!4217014 (= e!2618005 (Cons!46385 (h!51805 pBis!121) (++!11847 (t!348468 pBis!121) suffixBis!41)))))

(assert (= (and d!1242229 c!717839) b!4217013))

(assert (= (and d!1242229 (not c!717839)) b!4217014))

(assert (= (and d!1242229 res!1733093) b!4217015))

(assert (= (and b!4217015 res!1733094) b!4217016))

(declare-fun m!4805283 () Bool)

(assert (=> b!4217015 m!4805283))

(declare-fun m!4805285 () Bool)

(assert (=> b!4217015 m!4805285))

(declare-fun m!4805287 () Bool)

(assert (=> b!4217015 m!4805287))

(declare-fun m!4805289 () Bool)

(assert (=> d!1242229 m!4805289))

(declare-fun m!4805291 () Bool)

(assert (=> d!1242229 m!4805291))

(declare-fun m!4805293 () Bool)

(assert (=> d!1242229 m!4805293))

(declare-fun m!4805295 () Bool)

(assert (=> b!4217014 m!4805295))

(assert (=> b!4216767 d!1242229))

(declare-fun d!1242231 () Bool)

(assert (=> d!1242231 (= (inv!61026 (tag!8637 rBis!178)) (= (mod (str.len (value!242060 (tag!8637 rBis!178))) 2) 0))))

(assert (=> b!4216789 d!1242231))

(declare-fun d!1242233 () Bool)

(declare-fun res!1733095 () Bool)

(declare-fun e!2618007 () Bool)

(assert (=> d!1242233 (=> (not res!1733095) (not e!2618007))))

(assert (=> d!1242233 (= res!1733095 (semiInverseModEq!3378 (toChars!10352 (transformation!7773 rBis!178)) (toValue!10493 (transformation!7773 rBis!178))))))

(assert (=> d!1242233 (= (inv!61029 (transformation!7773 rBis!178)) e!2618007)))

(declare-fun b!4217017 () Bool)

(assert (=> b!4217017 (= e!2618007 (equivClasses!3277 (toChars!10352 (transformation!7773 rBis!178)) (toValue!10493 (transformation!7773 rBis!178))))))

(assert (= (and d!1242233 res!1733095) b!4217017))

(declare-fun m!4805297 () Bool)

(assert (=> d!1242233 m!4805297))

(declare-fun m!4805299 () Bool)

(assert (=> b!4217017 m!4805299))

(assert (=> b!4216789 d!1242233))

(declare-fun b!4217036 () Bool)

(declare-fun e!2618016 () Bool)

(declare-fun e!2618017 () Bool)

(assert (=> b!4217036 (= e!2618016 e!2618017)))

(declare-fun res!1733110 () Bool)

(assert (=> b!4217036 (=> (not res!1733110) (not e!2618017))))

(declare-fun lt!1500739 () Option!9961)

(assert (=> b!4217036 (= res!1733110 (matchR!6377 (regex!7773 rBis!178) (list!16780 (charsOf!5196 (_1!25192 (get!15094 lt!1500739))))))))

(declare-fun b!4217037 () Bool)

(declare-fun res!1733112 () Bool)

(assert (=> b!4217037 (=> (not res!1733112) (not e!2618017))))

(assert (=> b!4217037 (= res!1733112 (= (value!242061 (_1!25192 (get!15094 lt!1500739))) (apply!10698 (transformation!7773 (rule!10901 (_1!25192 (get!15094 lt!1500739)))) (seqFromList!5758 (originalCharacters!8155 (_1!25192 (get!15094 lt!1500739)))))))))

(declare-fun b!4217038 () Bool)

(declare-fun e!2618018 () Option!9961)

(declare-datatypes ((tuple2!44120 0))(
  ( (tuple2!44121 (_1!25194 List!46509) (_2!25194 List!46509)) )
))
(declare-fun lt!1500742 () tuple2!44120)

(declare-fun size!34065 (BalanceConc!27562) Int)

(assert (=> b!4217038 (= e!2618018 (Some!9960 (tuple2!44117 (Token!14249 (apply!10698 (transformation!7773 rBis!178) (seqFromList!5758 (_1!25194 lt!1500742))) rBis!178 (size!34065 (seqFromList!5758 (_1!25194 lt!1500742))) (_1!25194 lt!1500742)) (_2!25194 lt!1500742))))))

(declare-fun lt!1500740 () Unit!65528)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1631 (Regex!12678 List!46509) Unit!65528)

(assert (=> b!4217038 (= lt!1500740 (longestMatchIsAcceptedByMatchOrIsEmpty!1631 (regex!7773 rBis!178) input!3517))))

(declare-fun res!1733113 () Bool)

(declare-fun findLongestMatchInner!1658 (Regex!12678 List!46509 Int List!46509 List!46509 Int) tuple2!44120)

(assert (=> b!4217038 (= res!1733113 (isEmpty!27482 (_1!25194 (findLongestMatchInner!1658 (regex!7773 rBis!178) Nil!46385 (size!34064 Nil!46385) input!3517 input!3517 (size!34064 input!3517)))))))

(declare-fun e!2618019 () Bool)

(assert (=> b!4217038 (=> res!1733113 e!2618019)))

(assert (=> b!4217038 e!2618019))

(declare-fun lt!1500741 () Unit!65528)

(assert (=> b!4217038 (= lt!1500741 lt!1500740)))

(declare-fun lt!1500738 () Unit!65528)

(declare-fun lemmaSemiInverse!2499 (TokenValueInjection!15434 BalanceConc!27562) Unit!65528)

(assert (=> b!4217038 (= lt!1500738 (lemmaSemiInverse!2499 (transformation!7773 rBis!178) (seqFromList!5758 (_1!25194 lt!1500742))))))

(declare-fun b!4217039 () Bool)

(assert (=> b!4217039 (= e!2618018 None!9960)))

(declare-fun b!4217040 () Bool)

(declare-fun res!1733114 () Bool)

(assert (=> b!4217040 (=> (not res!1733114) (not e!2618017))))

(assert (=> b!4217040 (= res!1733114 (= (++!11847 (list!16780 (charsOf!5196 (_1!25192 (get!15094 lt!1500739)))) (_2!25192 (get!15094 lt!1500739))) input!3517))))

(declare-fun b!4217041 () Bool)

(declare-fun res!1733115 () Bool)

(assert (=> b!4217041 (=> (not res!1733115) (not e!2618017))))

(assert (=> b!4217041 (= res!1733115 (= (rule!10901 (_1!25192 (get!15094 lt!1500739))) rBis!178))))

(declare-fun b!4217042 () Bool)

(assert (=> b!4217042 (= e!2618019 (matchR!6377 (regex!7773 rBis!178) (_1!25194 (findLongestMatchInner!1658 (regex!7773 rBis!178) Nil!46385 (size!34064 Nil!46385) input!3517 input!3517 (size!34064 input!3517)))))))

(declare-fun d!1242235 () Bool)

(assert (=> d!1242235 e!2618016))

(declare-fun res!1733116 () Bool)

(assert (=> d!1242235 (=> res!1733116 e!2618016)))

(assert (=> d!1242235 (= res!1733116 (isEmpty!27478 lt!1500739))))

(assert (=> d!1242235 (= lt!1500739 e!2618018)))

(declare-fun c!717842 () Bool)

(assert (=> d!1242235 (= c!717842 (isEmpty!27482 (_1!25194 lt!1500742)))))

(declare-fun findLongestMatch!1571 (Regex!12678 List!46509) tuple2!44120)

(assert (=> d!1242235 (= lt!1500742 (findLongestMatch!1571 (regex!7773 rBis!178) input!3517))))

(assert (=> d!1242235 (ruleValid!3485 thiss!26544 rBis!178)))

(assert (=> d!1242235 (= (maxPrefixOneRule!3363 thiss!26544 rBis!178 input!3517) lt!1500739)))

(declare-fun b!4217043 () Bool)

(assert (=> b!4217043 (= e!2618017 (= (size!34062 (_1!25192 (get!15094 lt!1500739))) (size!34064 (originalCharacters!8155 (_1!25192 (get!15094 lt!1500739))))))))

(declare-fun b!4217044 () Bool)

(declare-fun res!1733111 () Bool)

(assert (=> b!4217044 (=> (not res!1733111) (not e!2618017))))

(assert (=> b!4217044 (= res!1733111 (< (size!34064 (_2!25192 (get!15094 lt!1500739))) (size!34064 input!3517)))))

(assert (= (and d!1242235 c!717842) b!4217039))

(assert (= (and d!1242235 (not c!717842)) b!4217038))

(assert (= (and b!4217038 (not res!1733113)) b!4217042))

(assert (= (and d!1242235 (not res!1733116)) b!4217036))

(assert (= (and b!4217036 res!1733110) b!4217040))

(assert (= (and b!4217040 res!1733114) b!4217044))

(assert (= (and b!4217044 res!1733111) b!4217041))

(assert (= (and b!4217041 res!1733115) b!4217037))

(assert (= (and b!4217037 res!1733112) b!4217043))

(declare-fun m!4805301 () Bool)

(assert (=> b!4217042 m!4805301))

(assert (=> b!4217042 m!4805149))

(assert (=> b!4217042 m!4805301))

(assert (=> b!4217042 m!4805149))

(declare-fun m!4805303 () Bool)

(assert (=> b!4217042 m!4805303))

(declare-fun m!4805305 () Bool)

(assert (=> b!4217042 m!4805305))

(declare-fun m!4805307 () Bool)

(assert (=> d!1242235 m!4805307))

(declare-fun m!4805309 () Bool)

(assert (=> d!1242235 m!4805309))

(declare-fun m!4805311 () Bool)

(assert (=> d!1242235 m!4805311))

(assert (=> d!1242235 m!4805019))

(assert (=> b!4217038 m!4805301))

(assert (=> b!4217038 m!4805149))

(assert (=> b!4217038 m!4805303))

(assert (=> b!4217038 m!4805149))

(declare-fun m!4805313 () Bool)

(assert (=> b!4217038 m!4805313))

(declare-fun m!4805315 () Bool)

(assert (=> b!4217038 m!4805315))

(declare-fun m!4805317 () Bool)

(assert (=> b!4217038 m!4805317))

(declare-fun m!4805319 () Bool)

(assert (=> b!4217038 m!4805319))

(assert (=> b!4217038 m!4805313))

(declare-fun m!4805321 () Bool)

(assert (=> b!4217038 m!4805321))

(assert (=> b!4217038 m!4805301))

(assert (=> b!4217038 m!4805313))

(assert (=> b!4217038 m!4805313))

(declare-fun m!4805323 () Bool)

(assert (=> b!4217038 m!4805323))

(declare-fun m!4805325 () Bool)

(assert (=> b!4217044 m!4805325))

(declare-fun m!4805327 () Bool)

(assert (=> b!4217044 m!4805327))

(assert (=> b!4217044 m!4805149))

(assert (=> b!4217037 m!4805325))

(declare-fun m!4805329 () Bool)

(assert (=> b!4217037 m!4805329))

(assert (=> b!4217037 m!4805329))

(declare-fun m!4805331 () Bool)

(assert (=> b!4217037 m!4805331))

(assert (=> b!4217041 m!4805325))

(assert (=> b!4217036 m!4805325))

(declare-fun m!4805333 () Bool)

(assert (=> b!4217036 m!4805333))

(assert (=> b!4217036 m!4805333))

(declare-fun m!4805335 () Bool)

(assert (=> b!4217036 m!4805335))

(assert (=> b!4217036 m!4805335))

(declare-fun m!4805337 () Bool)

(assert (=> b!4217036 m!4805337))

(assert (=> b!4217043 m!4805325))

(declare-fun m!4805339 () Bool)

(assert (=> b!4217043 m!4805339))

(assert (=> b!4217040 m!4805325))

(assert (=> b!4217040 m!4805333))

(assert (=> b!4217040 m!4805333))

(assert (=> b!4217040 m!4805335))

(assert (=> b!4217040 m!4805335))

(declare-fun m!4805341 () Bool)

(assert (=> b!4217040 m!4805341))

(assert (=> b!4216770 d!1242235))

(declare-fun d!1242237 () Bool)

(declare-fun e!2618022 () Bool)

(assert (=> d!1242237 e!2618022))

(declare-fun res!1733117 () Bool)

(assert (=> d!1242237 (=> res!1733117 e!2618022)))

(declare-fun lt!1500743 () Bool)

(assert (=> d!1242237 (= res!1733117 (not lt!1500743))))

(declare-fun e!2618020 () Bool)

(assert (=> d!1242237 (= lt!1500743 e!2618020)))

(declare-fun res!1733119 () Bool)

(assert (=> d!1242237 (=> res!1733119 e!2618020)))

(assert (=> d!1242237 (= res!1733119 (is-Nil!46385 input!3517))))

(assert (=> d!1242237 (= (isPrefix!4632 input!3517 input!3517) lt!1500743)))

(declare-fun b!4217047 () Bool)

(declare-fun e!2618021 () Bool)

(assert (=> b!4217047 (= e!2618021 (isPrefix!4632 (tail!6794 input!3517) (tail!6794 input!3517)))))

(declare-fun b!4217045 () Bool)

(assert (=> b!4217045 (= e!2618020 e!2618021)))

(declare-fun res!1733120 () Bool)

(assert (=> b!4217045 (=> (not res!1733120) (not e!2618021))))

(assert (=> b!4217045 (= res!1733120 (not (is-Nil!46385 input!3517)))))

(declare-fun b!4217048 () Bool)

(assert (=> b!4217048 (= e!2618022 (>= (size!34064 input!3517) (size!34064 input!3517)))))

(declare-fun b!4217046 () Bool)

(declare-fun res!1733118 () Bool)

(assert (=> b!4217046 (=> (not res!1733118) (not e!2618021))))

(assert (=> b!4217046 (= res!1733118 (= (head!8947 input!3517) (head!8947 input!3517)))))

(assert (= (and d!1242237 (not res!1733119)) b!4217045))

(assert (= (and b!4217045 res!1733120) b!4217046))

(assert (= (and b!4217046 res!1733118) b!4217047))

(assert (= (and d!1242237 (not res!1733117)) b!4217048))

(assert (=> b!4217047 m!4805269))

(assert (=> b!4217047 m!4805269))

(assert (=> b!4217047 m!4805269))

(assert (=> b!4217047 m!4805269))

(declare-fun m!4805343 () Bool)

(assert (=> b!4217047 m!4805343))

(assert (=> b!4217048 m!4805149))

(assert (=> b!4217048 m!4805149))

(assert (=> b!4217046 m!4805277))

(assert (=> b!4217046 m!4805277))

(assert (=> b!4216770 d!1242237))

(declare-fun d!1242239 () Bool)

(assert (=> d!1242239 (isPrefix!4632 input!3517 input!3517)))

(declare-fun lt!1500746 () Unit!65528)

(declare-fun choose!25841 (List!46509 List!46509) Unit!65528)

(assert (=> d!1242239 (= lt!1500746 (choose!25841 input!3517 input!3517))))

(assert (=> d!1242239 (= (lemmaIsPrefixRefl!3049 input!3517 input!3517) lt!1500746)))

(declare-fun bs!597540 () Bool)

(assert (= bs!597540 d!1242239))

(assert (=> bs!597540 m!4804967))

(declare-fun m!4805345 () Bool)

(assert (=> bs!597540 m!4805345))

(assert (=> b!4216770 d!1242239))

(declare-fun d!1242241 () Bool)

(declare-fun res!1733125 () Bool)

(declare-fun e!2618025 () Bool)

(assert (=> d!1242241 (=> (not res!1733125) (not e!2618025))))

(declare-fun validRegex!5755 (Regex!12678) Bool)

(assert (=> d!1242241 (= res!1733125 (validRegex!5755 (regex!7773 rBis!178)))))

(assert (=> d!1242241 (= (ruleValid!3485 thiss!26544 rBis!178) e!2618025)))

(declare-fun b!4217053 () Bool)

(declare-fun res!1733126 () Bool)

(assert (=> b!4217053 (=> (not res!1733126) (not e!2618025))))

(declare-fun nullable!4468 (Regex!12678) Bool)

(assert (=> b!4217053 (= res!1733126 (not (nullable!4468 (regex!7773 rBis!178))))))

(declare-fun b!4217054 () Bool)

(assert (=> b!4217054 (= e!2618025 (not (= (tag!8637 rBis!178) (String!53888 ""))))))

(assert (= (and d!1242241 res!1733125) b!4217053))

(assert (= (and b!4217053 res!1733126) b!4217054))

(declare-fun m!4805347 () Bool)

(assert (=> d!1242241 m!4805347))

(declare-fun m!4805349 () Bool)

(assert (=> b!4217053 m!4805349))

(assert (=> b!4216791 d!1242241))

(declare-fun d!1242243 () Bool)

(declare-fun e!2618028 () Bool)

(assert (=> d!1242243 e!2618028))

(declare-fun res!1733127 () Bool)

(assert (=> d!1242243 (=> res!1733127 e!2618028)))

(declare-fun lt!1500747 () Bool)

(assert (=> d!1242243 (= res!1733127 (not lt!1500747))))

(declare-fun e!2618026 () Bool)

(assert (=> d!1242243 (= lt!1500747 e!2618026)))

(declare-fun res!1733129 () Bool)

(assert (=> d!1242243 (=> res!1733129 e!2618026)))

(assert (=> d!1242243 (= res!1733129 (is-Nil!46385 lt!1500644))))

(assert (=> d!1242243 (= (isPrefix!4632 lt!1500644 input!3517) lt!1500747)))

(declare-fun b!4217057 () Bool)

(declare-fun e!2618027 () Bool)

(assert (=> b!4217057 (= e!2618027 (isPrefix!4632 (tail!6794 lt!1500644) (tail!6794 input!3517)))))

(declare-fun b!4217055 () Bool)

(assert (=> b!4217055 (= e!2618026 e!2618027)))

(declare-fun res!1733130 () Bool)

(assert (=> b!4217055 (=> (not res!1733130) (not e!2618027))))

(assert (=> b!4217055 (= res!1733130 (not (is-Nil!46385 input!3517)))))

(declare-fun b!4217058 () Bool)

(assert (=> b!4217058 (= e!2618028 (>= (size!34064 input!3517) (size!34064 lt!1500644)))))

(declare-fun b!4217056 () Bool)

(declare-fun res!1733128 () Bool)

(assert (=> b!4217056 (=> (not res!1733128) (not e!2618027))))

(assert (=> b!4217056 (= res!1733128 (= (head!8947 lt!1500644) (head!8947 input!3517)))))

(assert (= (and d!1242243 (not res!1733129)) b!4217055))

(assert (= (and b!4217055 res!1733130) b!4217056))

(assert (= (and b!4217056 res!1733128) b!4217057))

(assert (= (and d!1242243 (not res!1733127)) b!4217058))

(assert (=> b!4217057 m!4805221))

(assert (=> b!4217057 m!4805269))

(assert (=> b!4217057 m!4805221))

(assert (=> b!4217057 m!4805269))

(declare-fun m!4805351 () Bool)

(assert (=> b!4217057 m!4805351))

(assert (=> b!4217058 m!4805149))

(assert (=> b!4217058 m!4805229))

(assert (=> b!4217056 m!4805231))

(assert (=> b!4217056 m!4805277))

(assert (=> b!4216792 d!1242243))

(declare-fun d!1242245 () Bool)

(declare-fun e!2618031 () Bool)

(assert (=> d!1242245 e!2618031))

(declare-fun res!1733131 () Bool)

(assert (=> d!1242245 (=> res!1733131 e!2618031)))

(declare-fun lt!1500748 () Bool)

(assert (=> d!1242245 (= res!1733131 (not lt!1500748))))

(declare-fun e!2618029 () Bool)

(assert (=> d!1242245 (= lt!1500748 e!2618029)))

(declare-fun res!1733133 () Bool)

(assert (=> d!1242245 (=> res!1733133 e!2618029)))

(assert (=> d!1242245 (= res!1733133 (is-Nil!46385 pBis!121))))

(assert (=> d!1242245 (= (isPrefix!4632 pBis!121 input!3517) lt!1500748)))

(declare-fun b!4217061 () Bool)

(declare-fun e!2618030 () Bool)

(assert (=> b!4217061 (= e!2618030 (isPrefix!4632 (tail!6794 pBis!121) (tail!6794 input!3517)))))

(declare-fun b!4217059 () Bool)

(assert (=> b!4217059 (= e!2618029 e!2618030)))

(declare-fun res!1733134 () Bool)

(assert (=> b!4217059 (=> (not res!1733134) (not e!2618030))))

(assert (=> b!4217059 (= res!1733134 (not (is-Nil!46385 input!3517)))))

(declare-fun b!4217062 () Bool)

(assert (=> b!4217062 (= e!2618031 (>= (size!34064 input!3517) (size!34064 pBis!121)))))

(declare-fun b!4217060 () Bool)

(declare-fun res!1733132 () Bool)

(assert (=> b!4217060 (=> (not res!1733132) (not e!2618030))))

(assert (=> b!4217060 (= res!1733132 (= (head!8947 pBis!121) (head!8947 input!3517)))))

(assert (= (and d!1242245 (not res!1733133)) b!4217059))

(assert (= (and b!4217059 res!1733134) b!4217060))

(assert (= (and b!4217060 res!1733132) b!4217061))

(assert (= (and d!1242245 (not res!1733131)) b!4217062))

(declare-fun m!4805353 () Bool)

(assert (=> b!4217061 m!4805353))

(assert (=> b!4217061 m!4805269))

(assert (=> b!4217061 m!4805353))

(assert (=> b!4217061 m!4805269))

(declare-fun m!4805355 () Bool)

(assert (=> b!4217061 m!4805355))

(assert (=> b!4217062 m!4805149))

(assert (=> b!4217062 m!4805285))

(declare-fun m!4805357 () Bool)

(assert (=> b!4217060 m!4805357))

(assert (=> b!4217060 m!4805277))

(assert (=> b!4216793 d!1242245))

(declare-fun b!4217063 () Bool)

(declare-fun e!2618032 () Bool)

(declare-fun e!2618033 () Bool)

(assert (=> b!4217063 (= e!2618032 e!2618033)))

(declare-fun res!1733135 () Bool)

(assert (=> b!4217063 (=> (not res!1733135) (not e!2618033))))

(declare-fun lt!1500750 () Option!9961)

(assert (=> b!4217063 (= res!1733135 (matchR!6377 (regex!7773 (h!51806 rules!3967)) (list!16780 (charsOf!5196 (_1!25192 (get!15094 lt!1500750))))))))

(declare-fun b!4217064 () Bool)

(declare-fun res!1733137 () Bool)

(assert (=> b!4217064 (=> (not res!1733137) (not e!2618033))))

(assert (=> b!4217064 (= res!1733137 (= (value!242061 (_1!25192 (get!15094 lt!1500750))) (apply!10698 (transformation!7773 (rule!10901 (_1!25192 (get!15094 lt!1500750)))) (seqFromList!5758 (originalCharacters!8155 (_1!25192 (get!15094 lt!1500750)))))))))

(declare-fun b!4217065 () Bool)

(declare-fun e!2618034 () Option!9961)

(declare-fun lt!1500753 () tuple2!44120)

(assert (=> b!4217065 (= e!2618034 (Some!9960 (tuple2!44117 (Token!14249 (apply!10698 (transformation!7773 (h!51806 rules!3967)) (seqFromList!5758 (_1!25194 lt!1500753))) (h!51806 rules!3967) (size!34065 (seqFromList!5758 (_1!25194 lt!1500753))) (_1!25194 lt!1500753)) (_2!25194 lt!1500753))))))

(declare-fun lt!1500751 () Unit!65528)

(assert (=> b!4217065 (= lt!1500751 (longestMatchIsAcceptedByMatchOrIsEmpty!1631 (regex!7773 (h!51806 rules!3967)) input!3517))))

(declare-fun res!1733138 () Bool)

(assert (=> b!4217065 (= res!1733138 (isEmpty!27482 (_1!25194 (findLongestMatchInner!1658 (regex!7773 (h!51806 rules!3967)) Nil!46385 (size!34064 Nil!46385) input!3517 input!3517 (size!34064 input!3517)))))))

(declare-fun e!2618035 () Bool)

(assert (=> b!4217065 (=> res!1733138 e!2618035)))

(assert (=> b!4217065 e!2618035))

(declare-fun lt!1500752 () Unit!65528)

(assert (=> b!4217065 (= lt!1500752 lt!1500751)))

(declare-fun lt!1500749 () Unit!65528)

(assert (=> b!4217065 (= lt!1500749 (lemmaSemiInverse!2499 (transformation!7773 (h!51806 rules!3967)) (seqFromList!5758 (_1!25194 lt!1500753))))))

(declare-fun b!4217066 () Bool)

(assert (=> b!4217066 (= e!2618034 None!9960)))

(declare-fun b!4217067 () Bool)

(declare-fun res!1733139 () Bool)

(assert (=> b!4217067 (=> (not res!1733139) (not e!2618033))))

(assert (=> b!4217067 (= res!1733139 (= (++!11847 (list!16780 (charsOf!5196 (_1!25192 (get!15094 lt!1500750)))) (_2!25192 (get!15094 lt!1500750))) input!3517))))

(declare-fun b!4217068 () Bool)

(declare-fun res!1733140 () Bool)

(assert (=> b!4217068 (=> (not res!1733140) (not e!2618033))))

(assert (=> b!4217068 (= res!1733140 (= (rule!10901 (_1!25192 (get!15094 lt!1500750))) (h!51806 rules!3967)))))

(declare-fun b!4217069 () Bool)

(assert (=> b!4217069 (= e!2618035 (matchR!6377 (regex!7773 (h!51806 rules!3967)) (_1!25194 (findLongestMatchInner!1658 (regex!7773 (h!51806 rules!3967)) Nil!46385 (size!34064 Nil!46385) input!3517 input!3517 (size!34064 input!3517)))))))

(declare-fun d!1242247 () Bool)

(assert (=> d!1242247 e!2618032))

(declare-fun res!1733141 () Bool)

(assert (=> d!1242247 (=> res!1733141 e!2618032)))

(assert (=> d!1242247 (= res!1733141 (isEmpty!27478 lt!1500750))))

(assert (=> d!1242247 (= lt!1500750 e!2618034)))

(declare-fun c!717843 () Bool)

(assert (=> d!1242247 (= c!717843 (isEmpty!27482 (_1!25194 lt!1500753)))))

(assert (=> d!1242247 (= lt!1500753 (findLongestMatch!1571 (regex!7773 (h!51806 rules!3967)) input!3517))))

(assert (=> d!1242247 (ruleValid!3485 thiss!26544 (h!51806 rules!3967))))

(assert (=> d!1242247 (= (maxPrefixOneRule!3363 thiss!26544 (h!51806 rules!3967) input!3517) lt!1500750)))

(declare-fun b!4217070 () Bool)

(assert (=> b!4217070 (= e!2618033 (= (size!34062 (_1!25192 (get!15094 lt!1500750))) (size!34064 (originalCharacters!8155 (_1!25192 (get!15094 lt!1500750))))))))

(declare-fun b!4217071 () Bool)

(declare-fun res!1733136 () Bool)

(assert (=> b!4217071 (=> (not res!1733136) (not e!2618033))))

(assert (=> b!4217071 (= res!1733136 (< (size!34064 (_2!25192 (get!15094 lt!1500750))) (size!34064 input!3517)))))

(assert (= (and d!1242247 c!717843) b!4217066))

(assert (= (and d!1242247 (not c!717843)) b!4217065))

(assert (= (and b!4217065 (not res!1733138)) b!4217069))

(assert (= (and d!1242247 (not res!1733141)) b!4217063))

(assert (= (and b!4217063 res!1733135) b!4217067))

(assert (= (and b!4217067 res!1733139) b!4217071))

(assert (= (and b!4217071 res!1733136) b!4217068))

(assert (= (and b!4217068 res!1733140) b!4217064))

(assert (= (and b!4217064 res!1733137) b!4217070))

(assert (=> b!4217069 m!4805301))

(assert (=> b!4217069 m!4805149))

(assert (=> b!4217069 m!4805301))

(assert (=> b!4217069 m!4805149))

(declare-fun m!4805359 () Bool)

(assert (=> b!4217069 m!4805359))

(declare-fun m!4805361 () Bool)

(assert (=> b!4217069 m!4805361))

(declare-fun m!4805363 () Bool)

(assert (=> d!1242247 m!4805363))

(declare-fun m!4805365 () Bool)

(assert (=> d!1242247 m!4805365))

(declare-fun m!4805367 () Bool)

(assert (=> d!1242247 m!4805367))

(declare-fun m!4805369 () Bool)

(assert (=> d!1242247 m!4805369))

(assert (=> b!4217065 m!4805301))

(assert (=> b!4217065 m!4805149))

(assert (=> b!4217065 m!4805359))

(assert (=> b!4217065 m!4805149))

(declare-fun m!4805371 () Bool)

(assert (=> b!4217065 m!4805371))

(declare-fun m!4805373 () Bool)

(assert (=> b!4217065 m!4805373))

(declare-fun m!4805375 () Bool)

(assert (=> b!4217065 m!4805375))

(declare-fun m!4805377 () Bool)

(assert (=> b!4217065 m!4805377))

(assert (=> b!4217065 m!4805371))

(declare-fun m!4805379 () Bool)

(assert (=> b!4217065 m!4805379))

(assert (=> b!4217065 m!4805301))

(assert (=> b!4217065 m!4805371))

(assert (=> b!4217065 m!4805371))

(declare-fun m!4805381 () Bool)

(assert (=> b!4217065 m!4805381))

(declare-fun m!4805383 () Bool)

(assert (=> b!4217071 m!4805383))

(declare-fun m!4805385 () Bool)

(assert (=> b!4217071 m!4805385))

(assert (=> b!4217071 m!4805149))

(assert (=> b!4217064 m!4805383))

(declare-fun m!4805387 () Bool)

(assert (=> b!4217064 m!4805387))

(assert (=> b!4217064 m!4805387))

(declare-fun m!4805389 () Bool)

(assert (=> b!4217064 m!4805389))

(assert (=> b!4217068 m!4805383))

(assert (=> b!4217063 m!4805383))

(declare-fun m!4805391 () Bool)

(assert (=> b!4217063 m!4805391))

(assert (=> b!4217063 m!4805391))

(declare-fun m!4805393 () Bool)

(assert (=> b!4217063 m!4805393))

(assert (=> b!4217063 m!4805393))

(declare-fun m!4805395 () Bool)

(assert (=> b!4217063 m!4805395))

(assert (=> b!4217070 m!4805383))

(declare-fun m!4805397 () Bool)

(assert (=> b!4217070 m!4805397))

(assert (=> b!4217067 m!4805383))

(assert (=> b!4217067 m!4805391))

(assert (=> b!4217067 m!4805391))

(assert (=> b!4217067 m!4805393))

(assert (=> b!4217067 m!4805393))

(declare-fun m!4805399 () Bool)

(assert (=> b!4217067 m!4805399))

(assert (=> b!4216794 d!1242247))

(declare-fun b!4217072 () Bool)

(declare-fun e!2618036 () List!46509)

(assert (=> b!4217072 (= e!2618036 suffix!1557)))

(declare-fun b!4217074 () Bool)

(declare-fun res!1733143 () Bool)

(declare-fun e!2618037 () Bool)

(assert (=> b!4217074 (=> (not res!1733143) (not e!2618037))))

(declare-fun lt!1500754 () List!46509)

(assert (=> b!4217074 (= res!1733143 (= (size!34064 lt!1500754) (+ (size!34064 p!3001) (size!34064 suffix!1557))))))

(declare-fun d!1242249 () Bool)

(assert (=> d!1242249 e!2618037))

(declare-fun res!1733142 () Bool)

(assert (=> d!1242249 (=> (not res!1733142) (not e!2618037))))

(assert (=> d!1242249 (= res!1733142 (= (content!7275 lt!1500754) (set.union (content!7275 p!3001) (content!7275 suffix!1557))))))

(assert (=> d!1242249 (= lt!1500754 e!2618036)))

(declare-fun c!717844 () Bool)

(assert (=> d!1242249 (= c!717844 (is-Nil!46385 p!3001))))

(assert (=> d!1242249 (= (++!11847 p!3001 suffix!1557) lt!1500754)))

(declare-fun b!4217075 () Bool)

(assert (=> b!4217075 (= e!2618037 (or (not (= suffix!1557 Nil!46385)) (= lt!1500754 p!3001)))))

(declare-fun b!4217073 () Bool)

(assert (=> b!4217073 (= e!2618036 (Cons!46385 (h!51805 p!3001) (++!11847 (t!348468 p!3001) suffix!1557)))))

(assert (= (and d!1242249 c!717844) b!4217072))

(assert (= (and d!1242249 (not c!717844)) b!4217073))

(assert (= (and d!1242249 res!1733142) b!4217074))

(assert (= (and b!4217074 res!1733143) b!4217075))

(declare-fun m!4805401 () Bool)

(assert (=> b!4217074 m!4805401))

(assert (=> b!4217074 m!4805273))

(declare-fun m!4805403 () Bool)

(assert (=> b!4217074 m!4805403))

(declare-fun m!4805405 () Bool)

(assert (=> d!1242249 m!4805405))

(declare-fun m!4805407 () Bool)

(assert (=> d!1242249 m!4805407))

(declare-fun m!4805409 () Bool)

(assert (=> d!1242249 m!4805409))

(declare-fun m!4805411 () Bool)

(assert (=> b!4217073 m!4805411))

(assert (=> b!4216773 d!1242249))

(declare-fun d!1242251 () Bool)

(assert (=> d!1242251 (= (inv!61026 (tag!8637 (rule!10901 tBis!41))) (= (mod (str.len (value!242060 (tag!8637 (rule!10901 tBis!41)))) 2) 0))))

(assert (=> b!4216774 d!1242251))

(declare-fun d!1242253 () Bool)

(declare-fun res!1733144 () Bool)

(declare-fun e!2618038 () Bool)

(assert (=> d!1242253 (=> (not res!1733144) (not e!2618038))))

(assert (=> d!1242253 (= res!1733144 (semiInverseModEq!3378 (toChars!10352 (transformation!7773 (rule!10901 tBis!41))) (toValue!10493 (transformation!7773 (rule!10901 tBis!41)))))))

(assert (=> d!1242253 (= (inv!61029 (transformation!7773 (rule!10901 tBis!41))) e!2618038)))

(declare-fun b!4217076 () Bool)

(assert (=> b!4217076 (= e!2618038 (equivClasses!3277 (toChars!10352 (transformation!7773 (rule!10901 tBis!41))) (toValue!10493 (transformation!7773 (rule!10901 tBis!41)))))))

(assert (= (and d!1242253 res!1733144) b!4217076))

(declare-fun m!4805413 () Bool)

(assert (=> d!1242253 m!4805413))

(declare-fun m!4805415 () Bool)

(assert (=> b!4217076 m!4805415))

(assert (=> b!4216774 d!1242253))

(declare-fun d!1242255 () Bool)

(declare-fun lt!1500755 () Bool)

(assert (=> d!1242255 (= lt!1500755 (set.member rBis!178 (content!7274 (t!348469 rules!3967))))))

(declare-fun e!2618040 () Bool)

(assert (=> d!1242255 (= lt!1500755 e!2618040)))

(declare-fun res!1733145 () Bool)

(assert (=> d!1242255 (=> (not res!1733145) (not e!2618040))))

(assert (=> d!1242255 (= res!1733145 (is-Cons!46386 (t!348469 rules!3967)))))

(assert (=> d!1242255 (= (contains!9594 (t!348469 rules!3967) rBis!178) lt!1500755)))

(declare-fun b!4217077 () Bool)

(declare-fun e!2618039 () Bool)

(assert (=> b!4217077 (= e!2618040 e!2618039)))

(declare-fun res!1733146 () Bool)

(assert (=> b!4217077 (=> res!1733146 e!2618039)))

(assert (=> b!4217077 (= res!1733146 (= (h!51806 (t!348469 rules!3967)) rBis!178))))

(declare-fun b!4217078 () Bool)

(assert (=> b!4217078 (= e!2618039 (contains!9594 (t!348469 (t!348469 rules!3967)) rBis!178))))

(assert (= (and d!1242255 res!1733145) b!4217077))

(assert (= (and b!4217077 (not res!1733146)) b!4217078))

(declare-fun m!4805417 () Bool)

(assert (=> d!1242255 m!4805417))

(declare-fun m!4805419 () Bool)

(assert (=> d!1242255 m!4805419))

(declare-fun m!4805421 () Bool)

(assert (=> b!4217078 m!4805421))

(assert (=> b!4216796 d!1242255))

(declare-fun d!1242257 () Bool)

(declare-fun res!1733147 () Bool)

(declare-fun e!2618041 () Bool)

(assert (=> d!1242257 (=> (not res!1733147) (not e!2618041))))

(assert (=> d!1242257 (= res!1733147 (rulesValid!3047 thiss!26544 rules!3967))))

(assert (=> d!1242257 (= (rulesInvariant!6579 thiss!26544 rules!3967) e!2618041)))

(declare-fun b!4217079 () Bool)

(assert (=> b!4217079 (= e!2618041 (noDuplicateTag!3208 thiss!26544 rules!3967 Nil!46390))))

(assert (= (and d!1242257 res!1733147) b!4217079))

(declare-fun m!4805423 () Bool)

(assert (=> d!1242257 m!4805423))

(declare-fun m!4805425 () Bool)

(assert (=> b!4217079 m!4805425))

(assert (=> b!4216775 d!1242257))

(declare-fun d!1242259 () Bool)

(assert (=> d!1242259 (= (list!16780 (charsOf!5196 tBis!41)) (list!16782 (c!717821 (charsOf!5196 tBis!41))))))

(declare-fun bs!597541 () Bool)

(assert (= bs!597541 d!1242259))

(declare-fun m!4805427 () Bool)

(assert (=> bs!597541 m!4805427))

(assert (=> b!4216776 d!1242259))

(declare-fun d!1242261 () Bool)

(declare-fun lt!1500756 () BalanceConc!27562)

(assert (=> d!1242261 (= (list!16780 lt!1500756) (originalCharacters!8155 tBis!41))))

(assert (=> d!1242261 (= lt!1500756 (dynLambda!19983 (toChars!10352 (transformation!7773 (rule!10901 tBis!41))) (value!242061 tBis!41)))))

(assert (=> d!1242261 (= (charsOf!5196 tBis!41) lt!1500756)))

(declare-fun b_lambda!124237 () Bool)

(assert (=> (not b_lambda!124237) (not d!1242261)))

(assert (=> d!1242261 t!348474))

(declare-fun b_and!332317 () Bool)

(assert (= b_and!332309 (and (=> t!348474 result!308568) b_and!332317)))

(assert (=> d!1242261 t!348476))

(declare-fun b_and!332319 () Bool)

(assert (= b_and!332311 (and (=> t!348476 result!308572) b_and!332319)))

(assert (=> d!1242261 t!348478))

(declare-fun b_and!332321 () Bool)

(assert (= b_and!332313 (and (=> t!348478 result!308574) b_and!332321)))

(assert (=> d!1242261 t!348480))

(declare-fun b_and!332323 () Bool)

(assert (= b_and!332315 (and (=> t!348480 result!308576) b_and!332323)))

(declare-fun m!4805429 () Bool)

(assert (=> d!1242261 m!4805429))

(assert (=> d!1242261 m!4805165))

(assert (=> b!4216776 d!1242261))

(declare-fun d!1242263 () Bool)

(assert (=> d!1242263 (= (isEmpty!27479 rules!3967) (is-Nil!46386 rules!3967))))

(assert (=> b!4216777 d!1242263))

(declare-fun b!4217090 () Bool)

(declare-fun res!1733150 () Bool)

(declare-fun e!2618050 () Bool)

(assert (=> b!4217090 (=> res!1733150 e!2618050)))

(assert (=> b!4217090 (= res!1733150 (not (is-IntegerValue!24011 (value!242061 tBis!41))))))

(declare-fun e!2618049 () Bool)

(assert (=> b!4217090 (= e!2618049 e!2618050)))

(declare-fun b!4217091 () Bool)

(declare-fun e!2618048 () Bool)

(assert (=> b!4217091 (= e!2618048 e!2618049)))

(declare-fun c!717849 () Bool)

(assert (=> b!4217091 (= c!717849 (is-IntegerValue!24010 (value!242061 tBis!41)))))

(declare-fun b!4217092 () Bool)

(declare-fun inv!17 (TokenValue!8003) Bool)

(assert (=> b!4217092 (= e!2618049 (inv!17 (value!242061 tBis!41)))))

(declare-fun d!1242265 () Bool)

(declare-fun c!717850 () Bool)

(assert (=> d!1242265 (= c!717850 (is-IntegerValue!24009 (value!242061 tBis!41)))))

(assert (=> d!1242265 (= (inv!21 (value!242061 tBis!41)) e!2618048)))

(declare-fun b!4217093 () Bool)

(declare-fun inv!16 (TokenValue!8003) Bool)

(assert (=> b!4217093 (= e!2618048 (inv!16 (value!242061 tBis!41)))))

(declare-fun b!4217094 () Bool)

(declare-fun inv!15 (TokenValue!8003) Bool)

(assert (=> b!4217094 (= e!2618050 (inv!15 (value!242061 tBis!41)))))

(assert (= (and d!1242265 c!717850) b!4217093))

(assert (= (and d!1242265 (not c!717850)) b!4217091))

(assert (= (and b!4217091 c!717849) b!4217092))

(assert (= (and b!4217091 (not c!717849)) b!4217090))

(assert (= (and b!4217090 (not res!1733150)) b!4217094))

(declare-fun m!4805431 () Bool)

(assert (=> b!4217092 m!4805431))

(declare-fun m!4805433 () Bool)

(assert (=> b!4217093 m!4805433))

(declare-fun m!4805435 () Bool)

(assert (=> b!4217094 m!4805435))

(assert (=> b!4216780 d!1242265))

(declare-fun b!4217095 () Bool)

(declare-fun res!1733151 () Bool)

(declare-fun e!2618053 () Bool)

(assert (=> b!4217095 (=> res!1733151 e!2618053)))

(assert (=> b!4217095 (= res!1733151 (not (is-IntegerValue!24011 (value!242061 t!8364))))))

(declare-fun e!2618052 () Bool)

(assert (=> b!4217095 (= e!2618052 e!2618053)))

(declare-fun b!4217096 () Bool)

(declare-fun e!2618051 () Bool)

(assert (=> b!4217096 (= e!2618051 e!2618052)))

(declare-fun c!717851 () Bool)

(assert (=> b!4217096 (= c!717851 (is-IntegerValue!24010 (value!242061 t!8364)))))

(declare-fun b!4217097 () Bool)

(assert (=> b!4217097 (= e!2618052 (inv!17 (value!242061 t!8364)))))

(declare-fun d!1242267 () Bool)

(declare-fun c!717852 () Bool)

(assert (=> d!1242267 (= c!717852 (is-IntegerValue!24009 (value!242061 t!8364)))))

(assert (=> d!1242267 (= (inv!21 (value!242061 t!8364)) e!2618051)))

(declare-fun b!4217098 () Bool)

(assert (=> b!4217098 (= e!2618051 (inv!16 (value!242061 t!8364)))))

(declare-fun b!4217099 () Bool)

(assert (=> b!4217099 (= e!2618053 (inv!15 (value!242061 t!8364)))))

(assert (= (and d!1242267 c!717852) b!4217098))

(assert (= (and d!1242267 (not c!717852)) b!4217096))

(assert (= (and b!4217096 c!717851) b!4217097))

(assert (= (and b!4217096 (not c!717851)) b!4217095))

(assert (= (and b!4217095 (not res!1733151)) b!4217099))

(declare-fun m!4805437 () Bool)

(assert (=> b!4217097 m!4805437))

(declare-fun m!4805439 () Bool)

(assert (=> b!4217098 m!4805439))

(declare-fun m!4805441 () Bool)

(assert (=> b!4217099 m!4805441))

(assert (=> b!4216759 d!1242267))

(declare-fun d!1242269 () Bool)

(assert (=> d!1242269 (= (inv!61026 (tag!8637 (h!51806 rules!3967))) (= (mod (str.len (value!242060 (tag!8637 (h!51806 rules!3967)))) 2) 0))))

(assert (=> b!4216760 d!1242269))

(declare-fun d!1242271 () Bool)

(declare-fun res!1733152 () Bool)

(declare-fun e!2618054 () Bool)

(assert (=> d!1242271 (=> (not res!1733152) (not e!2618054))))

(assert (=> d!1242271 (= res!1733152 (semiInverseModEq!3378 (toChars!10352 (transformation!7773 (h!51806 rules!3967))) (toValue!10493 (transformation!7773 (h!51806 rules!3967)))))))

(assert (=> d!1242271 (= (inv!61029 (transformation!7773 (h!51806 rules!3967))) e!2618054)))

(declare-fun b!4217100 () Bool)

(assert (=> b!4217100 (= e!2618054 (equivClasses!3277 (toChars!10352 (transformation!7773 (h!51806 rules!3967))) (toValue!10493 (transformation!7773 (h!51806 rules!3967)))))))

(assert (= (and d!1242271 res!1733152) b!4217100))

(declare-fun m!4805443 () Bool)

(assert (=> d!1242271 m!4805443))

(declare-fun m!4805445 () Bool)

(assert (=> b!4217100 m!4805445))

(assert (=> b!4216760 d!1242271))

(declare-fun b!4217105 () Bool)

(declare-fun e!2618057 () Bool)

(declare-fun tp!1289984 () Bool)

(assert (=> b!4217105 (= e!2618057 (and tp_is_empty!22323 tp!1289984))))

(assert (=> b!4216771 (= tp!1289906 e!2618057)))

(assert (= (and b!4216771 (is-Cons!46385 (t!348468 input!3517))) b!4217105))

(declare-fun b!4217106 () Bool)

(declare-fun e!2618058 () Bool)

(declare-fun tp!1289985 () Bool)

(assert (=> b!4217106 (= e!2618058 (and tp_is_empty!22323 tp!1289985))))

(assert (=> b!4216772 (= tp!1289902 e!2618058)))

(assert (= (and b!4216772 (is-Cons!46385 (t!348468 suffix!1557))) b!4217106))

(declare-fun b!4217117 () Bool)

(declare-fun b_free!123731 () Bool)

(declare-fun b_next!124435 () Bool)

(assert (=> b!4217117 (= b_free!123731 (not b_next!124435))))

(declare-fun tp!1289997 () Bool)

(declare-fun b_and!332325 () Bool)

(assert (=> b!4217117 (= tp!1289997 b_and!332325)))

(declare-fun b_free!123733 () Bool)

(declare-fun b_next!124437 () Bool)

(assert (=> b!4217117 (= b_free!123733 (not b_next!124437))))

(declare-fun t!348498 () Bool)

(declare-fun tb!253183 () Bool)

(assert (=> (and b!4217117 (= (toChars!10352 (transformation!7773 (h!51806 (t!348469 rules!3967)))) (toChars!10352 (transformation!7773 (rule!10901 tBis!41)))) t!348498) tb!253183))

(declare-fun result!308598 () Bool)

(assert (= result!308598 result!308568))

(assert (=> b!4216950 t!348498))

(declare-fun t!348500 () Bool)

(declare-fun tb!253185 () Bool)

(assert (=> (and b!4217117 (= (toChars!10352 (transformation!7773 (h!51806 (t!348469 rules!3967)))) (toChars!10352 (transformation!7773 (rule!10901 t!8364)))) t!348500) tb!253185))

(declare-fun result!308600 () Bool)

(assert (= result!308600 result!308578))

(assert (=> b!4216957 t!348500))

(declare-fun tb!253187 () Bool)

(declare-fun t!348502 () Bool)

(assert (=> (and b!4217117 (= (toChars!10352 (transformation!7773 (h!51806 (t!348469 rules!3967)))) (toChars!10352 (transformation!7773 (rule!10901 (_1!25192 lt!1500646))))) t!348502) tb!253187))

(declare-fun result!308602 () Bool)

(assert (= result!308602 result!308586))

(assert (=> d!1242213 t!348502))

(assert (=> d!1242261 t!348498))

(declare-fun tp!1289994 () Bool)

(declare-fun b_and!332327 () Bool)

(assert (=> b!4217117 (= tp!1289994 (and (=> t!348498 result!308598) (=> t!348500 result!308600) (=> t!348502 result!308602) b_and!332327))))

(declare-fun e!2618070 () Bool)

(assert (=> b!4217117 (= e!2618070 (and tp!1289997 tp!1289994))))

(declare-fun b!4217116 () Bool)

(declare-fun e!2618068 () Bool)

(declare-fun tp!1289996 () Bool)

(assert (=> b!4217116 (= e!2618068 (and tp!1289996 (inv!61026 (tag!8637 (h!51806 (t!348469 rules!3967)))) (inv!61029 (transformation!7773 (h!51806 (t!348469 rules!3967)))) e!2618070))))

(declare-fun b!4217115 () Bool)

(declare-fun e!2618069 () Bool)

(declare-fun tp!1289995 () Bool)

(assert (=> b!4217115 (= e!2618069 (and e!2618068 tp!1289995))))

(assert (=> b!4216761 (= tp!1289913 e!2618069)))

(assert (= b!4217116 b!4217117))

(assert (= b!4217115 b!4217116))

(assert (= (and b!4216761 (is-Cons!46386 (t!348469 rules!3967))) b!4217115))

(declare-fun m!4805447 () Bool)

(assert (=> b!4217116 m!4805447))

(declare-fun m!4805449 () Bool)

(assert (=> b!4217116 m!4805449))

(declare-fun e!2618073 () Bool)

(assert (=> b!4216774 (= tp!1289914 e!2618073)))

(declare-fun b!4217128 () Bool)

(assert (=> b!4217128 (= e!2618073 tp_is_empty!22323)))

(declare-fun b!4217130 () Bool)

(declare-fun tp!1290010 () Bool)

(assert (=> b!4217130 (= e!2618073 tp!1290010)))

(declare-fun b!4217131 () Bool)

(declare-fun tp!1290009 () Bool)

(declare-fun tp!1290011 () Bool)

(assert (=> b!4217131 (= e!2618073 (and tp!1290009 tp!1290011))))

(declare-fun b!4217129 () Bool)

(declare-fun tp!1290012 () Bool)

(declare-fun tp!1290008 () Bool)

(assert (=> b!4217129 (= e!2618073 (and tp!1290012 tp!1290008))))

(assert (= (and b!4216774 (is-ElementMatch!12678 (regex!7773 (rule!10901 tBis!41)))) b!4217128))

(assert (= (and b!4216774 (is-Concat!20682 (regex!7773 (rule!10901 tBis!41)))) b!4217129))

(assert (= (and b!4216774 (is-Star!12678 (regex!7773 (rule!10901 tBis!41)))) b!4217130))

(assert (= (and b!4216774 (is-Union!12678 (regex!7773 (rule!10901 tBis!41)))) b!4217131))

(declare-fun b!4217132 () Bool)

(declare-fun e!2618074 () Bool)

(declare-fun tp!1290013 () Bool)

(assert (=> b!4217132 (= e!2618074 (and tp_is_empty!22323 tp!1290013))))

(assert (=> b!4216763 (= tp!1289915 e!2618074)))

(assert (= (and b!4216763 (is-Cons!46385 (t!348468 pBis!121))) b!4217132))

(declare-fun b!4217133 () Bool)

(declare-fun e!2618075 () Bool)

(declare-fun tp!1290014 () Bool)

(assert (=> b!4217133 (= e!2618075 (and tp_is_empty!22323 tp!1290014))))

(assert (=> b!4216795 (= tp!1289903 e!2618075)))

(assert (= (and b!4216795 (is-Cons!46385 (t!348468 suffixBis!41))) b!4217133))

(declare-fun e!2618076 () Bool)

(assert (=> b!4216788 (= tp!1289916 e!2618076)))

(declare-fun b!4217134 () Bool)

(assert (=> b!4217134 (= e!2618076 tp_is_empty!22323)))

(declare-fun b!4217136 () Bool)

(declare-fun tp!1290017 () Bool)

(assert (=> b!4217136 (= e!2618076 tp!1290017)))

(declare-fun b!4217137 () Bool)

(declare-fun tp!1290016 () Bool)

(declare-fun tp!1290018 () Bool)

(assert (=> b!4217137 (= e!2618076 (and tp!1290016 tp!1290018))))

(declare-fun b!4217135 () Bool)

(declare-fun tp!1290019 () Bool)

(declare-fun tp!1290015 () Bool)

(assert (=> b!4217135 (= e!2618076 (and tp!1290019 tp!1290015))))

(assert (= (and b!4216788 (is-ElementMatch!12678 (regex!7773 (rule!10901 t!8364)))) b!4217134))

(assert (= (and b!4216788 (is-Concat!20682 (regex!7773 (rule!10901 t!8364)))) b!4217135))

(assert (= (and b!4216788 (is-Star!12678 (regex!7773 (rule!10901 t!8364)))) b!4217136))

(assert (= (and b!4216788 (is-Union!12678 (regex!7773 (rule!10901 t!8364)))) b!4217137))

(declare-fun e!2618077 () Bool)

(assert (=> b!4216789 (= tp!1289909 e!2618077)))

(declare-fun b!4217138 () Bool)

(assert (=> b!4217138 (= e!2618077 tp_is_empty!22323)))

(declare-fun b!4217140 () Bool)

(declare-fun tp!1290022 () Bool)

(assert (=> b!4217140 (= e!2618077 tp!1290022)))

(declare-fun b!4217141 () Bool)

(declare-fun tp!1290021 () Bool)

(declare-fun tp!1290023 () Bool)

(assert (=> b!4217141 (= e!2618077 (and tp!1290021 tp!1290023))))

(declare-fun b!4217139 () Bool)

(declare-fun tp!1290024 () Bool)

(declare-fun tp!1290020 () Bool)

(assert (=> b!4217139 (= e!2618077 (and tp!1290024 tp!1290020))))

(assert (= (and b!4216789 (is-ElementMatch!12678 (regex!7773 rBis!178))) b!4217138))

(assert (= (and b!4216789 (is-Concat!20682 (regex!7773 rBis!178))) b!4217139))

(assert (= (and b!4216789 (is-Star!12678 (regex!7773 rBis!178))) b!4217140))

(assert (= (and b!4216789 (is-Union!12678 (regex!7773 rBis!178))) b!4217141))

(declare-fun b!4217142 () Bool)

(declare-fun e!2618078 () Bool)

(declare-fun tp!1290025 () Bool)

(assert (=> b!4217142 (= e!2618078 (and tp_is_empty!22323 tp!1290025))))

(assert (=> b!4216780 (= tp!1289899 e!2618078)))

(assert (= (and b!4216780 (is-Cons!46385 (originalCharacters!8155 tBis!41))) b!4217142))

(declare-fun b!4217143 () Bool)

(declare-fun e!2618079 () Bool)

(declare-fun tp!1290026 () Bool)

(assert (=> b!4217143 (= e!2618079 (and tp_is_empty!22323 tp!1290026))))

(assert (=> b!4216759 (= tp!1289910 e!2618079)))

(assert (= (and b!4216759 (is-Cons!46385 (originalCharacters!8155 t!8364))) b!4217143))

(declare-fun e!2618080 () Bool)

(assert (=> b!4216760 (= tp!1289912 e!2618080)))

(declare-fun b!4217144 () Bool)

(assert (=> b!4217144 (= e!2618080 tp_is_empty!22323)))

(declare-fun b!4217146 () Bool)

(declare-fun tp!1290029 () Bool)

(assert (=> b!4217146 (= e!2618080 tp!1290029)))

(declare-fun b!4217147 () Bool)

(declare-fun tp!1290028 () Bool)

(declare-fun tp!1290030 () Bool)

(assert (=> b!4217147 (= e!2618080 (and tp!1290028 tp!1290030))))

(declare-fun b!4217145 () Bool)

(declare-fun tp!1290031 () Bool)

(declare-fun tp!1290027 () Bool)

(assert (=> b!4217145 (= e!2618080 (and tp!1290031 tp!1290027))))

(assert (= (and b!4216760 (is-ElementMatch!12678 (regex!7773 (h!51806 rules!3967)))) b!4217144))

(assert (= (and b!4216760 (is-Concat!20682 (regex!7773 (h!51806 rules!3967)))) b!4217145))

(assert (= (and b!4216760 (is-Star!12678 (regex!7773 (h!51806 rules!3967)))) b!4217146))

(assert (= (and b!4216760 (is-Union!12678 (regex!7773 (h!51806 rules!3967)))) b!4217147))

(declare-fun b!4217148 () Bool)

(declare-fun e!2618081 () Bool)

(declare-fun tp!1290032 () Bool)

(assert (=> b!4217148 (= e!2618081 (and tp_is_empty!22323 tp!1290032))))

(assert (=> b!4216781 (= tp!1289901 e!2618081)))

(assert (= (and b!4216781 (is-Cons!46385 (t!348468 p!3001))) b!4217148))

(declare-fun b_lambda!124239 () Bool)

(assert (= b_lambda!124237 (or (and b!4216782 b_free!123713 (= (toChars!10352 (transformation!7773 (h!51806 rules!3967))) (toChars!10352 (transformation!7773 (rule!10901 tBis!41))))) (and b!4216786 b_free!123701 (= (toChars!10352 (transformation!7773 (rule!10901 t!8364))) (toChars!10352 (transformation!7773 (rule!10901 tBis!41))))) (and b!4216783 b_free!123705 (= (toChars!10352 (transformation!7773 rBis!178)) (toChars!10352 (transformation!7773 (rule!10901 tBis!41))))) (and b!4216769 b_free!123709) (and b!4217117 b_free!123733 (= (toChars!10352 (transformation!7773 (h!51806 (t!348469 rules!3967)))) (toChars!10352 (transformation!7773 (rule!10901 tBis!41))))) b_lambda!124239)))

(declare-fun b_lambda!124241 () Bool)

(assert (= b_lambda!124233 (or (and b!4216783 b_free!123705 (= (toChars!10352 (transformation!7773 rBis!178)) (toChars!10352 (transformation!7773 (rule!10901 t!8364))))) (and b!4216769 b_free!123709 (= (toChars!10352 (transformation!7773 (rule!10901 tBis!41))) (toChars!10352 (transformation!7773 (rule!10901 t!8364))))) (and b!4217117 b_free!123733 (= (toChars!10352 (transformation!7773 (h!51806 (t!348469 rules!3967)))) (toChars!10352 (transformation!7773 (rule!10901 t!8364))))) (and b!4216782 b_free!123713 (= (toChars!10352 (transformation!7773 (h!51806 rules!3967))) (toChars!10352 (transformation!7773 (rule!10901 t!8364))))) (and b!4216786 b_free!123701) b_lambda!124241)))

(declare-fun b_lambda!124243 () Bool)

(assert (= b_lambda!124231 (or (and b!4216782 b_free!123713 (= (toChars!10352 (transformation!7773 (h!51806 rules!3967))) (toChars!10352 (transformation!7773 (rule!10901 tBis!41))))) (and b!4216786 b_free!123701 (= (toChars!10352 (transformation!7773 (rule!10901 t!8364))) (toChars!10352 (transformation!7773 (rule!10901 tBis!41))))) (and b!4216783 b_free!123705 (= (toChars!10352 (transformation!7773 rBis!178)) (toChars!10352 (transformation!7773 (rule!10901 tBis!41))))) (and b!4216769 b_free!123709) (and b!4217117 b_free!123733 (= (toChars!10352 (transformation!7773 (h!51806 (t!348469 rules!3967)))) (toChars!10352 (transformation!7773 (rule!10901 tBis!41))))) b_lambda!124243)))

(push 1)

(assert (not b!4217099))

(assert (not b!4217148))

(assert (not b!4216959))

(assert (not b!4217037))

(assert (not d!1242241))

(assert (not d!1242219))

(assert (not d!1242199))

(assert (not b!4217061))

(assert (not b!4217064))

(assert (not b!4216969))

(assert (not b!4217067))

(assert (not b!4216984))

(assert (not b!4216944))

(assert (not b_next!124409))

(assert (not b!4217036))

(assert (not b!4216950))

(assert b_and!332265)

(assert (not d!1242249))

(assert (not b!4216940))

(assert (not b!4217063))

(assert (not b!4217137))

(assert (not b!4217142))

(assert (not d!1242229))

(assert (not b_next!124417))

(assert (not b!4216938))

(assert (not d!1242203))

(assert (not b!4217065))

(assert (not b!4217094))

(assert (not b!4216966))

(assert (not d!1242211))

(assert (not b!4216972))

(assert (not b!4216937))

(assert (not b_next!124437))

(assert (not b!4217015))

(assert (not b!4217106))

(assert (not b!4217007))

(assert (not tb!253175))

(assert (not b!4216970))

(assert (not b!4217092))

(assert (not b!4216958))

(assert (not d!1242197))

(assert (not d!1242191))

(assert (not b!4217040))

(assert (not b!4217074))

(assert (not d!1242189))

(assert b_and!332317)

(assert (not b_next!124403))

(assert (not b!4217146))

(assert (not b_lambda!124235))

(assert (not b!4217046))

(assert (not d!1242257))

(assert (not d!1242235))

(assert b_and!332319)

(assert (not b_lambda!124239))

(assert (not b_next!124415))

(assert (not b_next!124413))

(assert (not b!4217047))

(assert (not tb!253159))

(assert (not b!4216973))

(assert b_and!332323)

(assert (not d!1242215))

(assert (not b!4216945))

(assert (not b!4217048))

(assert (not d!1242227))

(assert (not b!4217098))

(assert (not b!4217038))

(assert b_and!332325)

(assert (not b!4217070))

(assert (not d!1242261))

(assert (not b!4217143))

(assert (not b!4216974))

(assert tp_is_empty!22323)

(assert (not b!4217132))

(assert (not b!4217140))

(assert (not b!4217062))

(assert (not d!1242271))

(assert (not b!4216918))

(assert (not b!4217145))

(assert (not b!4217093))

(assert (not b!4217004))

(assert (not bm!293021))

(assert (not b!4217105))

(assert (not b!4217069))

(assert (not b!4216965))

(assert (not b!4217014))

(assert (not b!4217071))

(assert (not d!1242255))

(assert (not b_next!124407))

(assert (not b!4217068))

(assert (not b!4217060))

(assert (not b!4217079))

(assert (not b!4217041))

(assert (not b!4217133))

(assert (not b!4216941))

(assert (not b_next!124435))

(assert (not b!4216916))

(assert (not b!4216986))

(assert b_and!332327)

(assert (not b!4217043))

(assert (not b_next!124405))

(assert (not b!4217073))

(assert (not d!1242253))

(assert (not b!4217009))

(assert (not d!1242193))

(assert (not b_lambda!124243))

(assert b_and!332273)

(assert (not b!4216967))

(assert (not b!4217131))

(assert (not b!4216993))

(assert b_and!332261)

(assert (not b!4217008))

(assert (not b!4216971))

(assert (not b!4216957))

(assert b_and!332269)

(assert (not b!4217056))

(assert (not b!4217135))

(assert (not b!4217141))

(assert (not b!4217078))

(assert (not d!1242259))

(assert (not b!4216956))

(assert (not b!4217012))

(assert (not tb!253167))

(assert (not d!1242185))

(assert (not d!1242213))

(assert (not b!4217139))

(assert (not b!4217053))

(assert (not b!4217044))

(assert (not b!4217003))

(assert (not b!4217042))

(assert (not b!4216951))

(assert (not b!4217017))

(assert (not d!1242247))

(assert (not b!4216943))

(assert (not bm!293020))

(assert (not b!4217147))

(assert (not b!4217115))

(assert (not b!4216942))

(assert (not b!4217097))

(assert (not b!4217129))

(assert (not b!4217136))

(assert (not b!4216985))

(assert (not b!4217116))

(assert (not b!4216989))

(assert (not d!1242187))

(assert (not b!4217076))

(assert b_and!332321)

(assert (not b!4217100))

(assert (not d!1242233))

(assert (not d!1242239))

(assert (not b!4217057))

(assert (not b_next!124411))

(assert (not b!4217058))

(assert (not b_lambda!124241))

(assert (not b!4217130))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!124417))

(assert (not b_next!124437))

(assert b_and!332323)

(assert b_and!332325)

(assert (not b_next!124407))

(assert (not b_next!124435))

(assert b_and!332273)

(assert b_and!332261)

(assert b_and!332269)

(assert b_and!332321)

(assert (not b_next!124411))

(assert (not b_next!124409))

(assert b_and!332265)

(assert b_and!332317)

(assert (not b_next!124403))

(assert b_and!332319)

(assert (not b_next!124415))

(assert (not b_next!124413))

(assert b_and!332327)

(assert (not b_next!124405))

(check-sat)

(pop 1)

