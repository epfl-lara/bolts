; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!14672 () Bool)

(assert start!14672)

(declare-fun b!139909 () Bool)

(declare-fun b_free!4465 () Bool)

(declare-fun b_next!4465 () Bool)

(assert (=> b!139909 (= b_free!4465 (not b_next!4465))))

(declare-fun tp!73601 () Bool)

(declare-fun b_and!6789 () Bool)

(assert (=> b!139909 (= tp!73601 b_and!6789)))

(declare-fun b_free!4467 () Bool)

(declare-fun b_next!4467 () Bool)

(assert (=> b!139909 (= b_free!4467 (not b_next!4467))))

(declare-fun tp!73593 () Bool)

(declare-fun b_and!6791 () Bool)

(assert (=> b!139909 (= tp!73593 b_and!6791)))

(declare-fun b_free!4469 () Bool)

(declare-fun b_next!4469 () Bool)

(assert (=> start!14672 (= b_free!4469 (not b_next!4469))))

(declare-fun tp!73595 () Bool)

(declare-fun b_and!6793 () Bool)

(assert (=> start!14672 (= tp!73595 b_and!6793)))

(declare-fun b!139893 () Bool)

(declare-fun b_free!4471 () Bool)

(declare-fun b_next!4471 () Bool)

(assert (=> b!139893 (= b_free!4471 (not b_next!4471))))

(declare-fun tp!73597 () Bool)

(declare-fun b_and!6795 () Bool)

(assert (=> b!139893 (= tp!73597 b_and!6795)))

(declare-fun b_free!4473 () Bool)

(declare-fun b_next!4473 () Bool)

(assert (=> b!139893 (= b_free!4473 (not b_next!4473))))

(declare-fun tp!73598 () Bool)

(declare-fun b_and!6797 () Bool)

(assert (=> b!139893 (= tp!73598 b_and!6797)))

(declare-fun b!139891 () Bool)

(declare-fun b_free!4475 () Bool)

(declare-fun b_next!4475 () Bool)

(assert (=> b!139891 (= b_free!4475 (not b_next!4475))))

(declare-fun tp!73599 () Bool)

(declare-fun b_and!6799 () Bool)

(assert (=> b!139891 (= tp!73599 b_and!6799)))

(declare-fun b_free!4477 () Bool)

(declare-fun b_next!4477 () Bool)

(assert (=> b!139891 (= b_free!4477 (not b_next!4477))))

(declare-fun tp!73590 () Bool)

(declare-fun b_and!6801 () Bool)

(assert (=> b!139891 (= tp!73590 b_and!6801)))

(declare-fun res!65098 () Bool)

(declare-fun e!82293 () Bool)

(assert (=> start!14672 (=> (not res!65098) (not e!82293))))

(declare-datatypes ((LexerInterface!284 0))(
  ( (LexerInterfaceExt!281 (__x!2327 Int)) (Lexer!282) )
))
(declare-fun thiss!27322 () LexerInterface!284)

(assert (=> start!14672 (= res!65098 (is-Lexer!282 thiss!27322))))

(assert (=> start!14672 e!82293))

(assert (=> start!14672 true))

(declare-fun e!82295 () Bool)

(assert (=> start!14672 e!82295))

(assert (=> start!14672 tp!73595))

(declare-fun e!82291 () Bool)

(assert (=> start!14672 e!82291))

(declare-fun e!82288 () Bool)

(assert (=> start!14672 e!82288))

(declare-fun e!82294 () Bool)

(assert (=> b!139891 (= e!82294 (and tp!73599 tp!73590))))

(declare-datatypes ((List!2389 0))(
  ( (Nil!2379) (Cons!2379 (h!7776 (_ BitVec 16)) (t!23247 List!2389)) )
))
(declare-datatypes ((TokenValue!420 0))(
  ( (FloatLiteralValue!840 (text!3385 List!2389)) (TokenValueExt!419 (__x!2328 Int)) (Broken!2100 (value!15634 List!2389)) (Object!429) (End!420) (Def!420) (Underscore!420) (Match!420) (Else!420) (Error!420) (Case!420) (If!420) (Extends!420) (Abstract!420) (Class!420) (Val!420) (DelimiterValue!840 (del!480 List!2389)) (KeywordValue!426 (value!15635 List!2389)) (CommentValue!840 (value!15636 List!2389)) (WhitespaceValue!840 (value!15637 List!2389)) (IndentationValue!420 (value!15638 List!2389)) (String!3181) (Int32!420) (Broken!2101 (value!15639 List!2389)) (Boolean!421) (Unit!1804) (OperatorValue!423 (op!480 List!2389)) (IdentifierValue!840 (value!15640 List!2389)) (IdentifierValue!841 (value!15641 List!2389)) (WhitespaceValue!841 (value!15642 List!2389)) (True!840) (False!840) (Broken!2102 (value!15643 List!2389)) (Broken!2103 (value!15644 List!2389)) (True!841) (RightBrace!420) (RightBracket!420) (Colon!420) (Null!420) (Comma!420) (LeftBracket!420) (False!841) (LeftBrace!420) (ImaginaryLiteralValue!420 (text!3386 List!2389)) (StringLiteralValue!1260 (value!15645 List!2389)) (EOFValue!420 (value!15646 List!2389)) (IdentValue!420 (value!15647 List!2389)) (DelimiterValue!841 (value!15648 List!2389)) (DedentValue!420 (value!15649 List!2389)) (NewLineValue!420 (value!15650 List!2389)) (IntegerValue!1260 (value!15651 (_ BitVec 32)) (text!3387 List!2389)) (IntegerValue!1261 (value!15652 Int) (text!3388 List!2389)) (Times!420) (Or!420) (Equal!420) (Minus!420) (Broken!2104 (value!15653 List!2389)) (And!420) (Div!420) (LessEqual!420) (Mod!420) (Concat!1042) (Not!420) (Plus!420) (SpaceValue!420 (value!15654 List!2389)) (IntegerValue!1262 (value!15655 Int) (text!3389 List!2389)) (StringLiteralValue!1261 (text!3390 List!2389)) (FloatLiteralValue!841 (text!3391 List!2389)) (BytesLiteralValue!420 (value!15656 List!2389)) (CommentValue!841 (value!15657 List!2389)) (StringLiteralValue!1262 (value!15658 List!2389)) (ErrorTokenValue!420 (msg!481 List!2389)) )
))
(declare-datatypes ((C!2166 0))(
  ( (C!2167 (val!969 Int)) )
))
(declare-datatypes ((List!2390 0))(
  ( (Nil!2380) (Cons!2380 (h!7777 C!2166) (t!23248 List!2390)) )
))
(declare-datatypes ((IArray!1257 0))(
  ( (IArray!1258 (innerList!686 List!2390)) )
))
(declare-datatypes ((Conc!628 0))(
  ( (Node!628 (left!1814 Conc!628) (right!2144 Conc!628) (csize!1486 Int) (cheight!839 Int)) (Leaf!1167 (xs!3223 IArray!1257) (csize!1487 Int)) (Empty!628) )
))
(declare-datatypes ((BalanceConc!1264 0))(
  ( (BalanceConc!1265 (c!29198 Conc!628)) )
))
(declare-datatypes ((TokenValueInjection!612 0))(
  ( (TokenValueInjection!613 (toValue!1009 Int) (toChars!868 Int)) )
))
(declare-datatypes ((Regex!622 0))(
  ( (ElementMatch!622 (c!29199 C!2166)) (Concat!1043 (regOne!1756 Regex!622) (regTwo!1756 Regex!622)) (EmptyExpr!622) (Star!622 (reg!951 Regex!622)) (EmptyLang!622) (Union!622 (regOne!1757 Regex!622) (regTwo!1757 Regex!622)) )
))
(declare-datatypes ((String!3182 0))(
  ( (String!3183 (value!15659 String)) )
))
(declare-datatypes ((Rule!596 0))(
  ( (Rule!597 (regex!398 Regex!622) (tag!576 String!3182) (isSeparator!398 Bool) (transformation!398 TokenValueInjection!612)) )
))
(declare-datatypes ((List!2391 0))(
  ( (Nil!2381) (Cons!2381 (h!7778 Rule!596) (t!23249 List!2391)) )
))
(declare-fun rules!4268 () List!2391)

(declare-fun tp!73602 () Bool)

(declare-fun e!82292 () Bool)

(declare-fun e!82283 () Bool)

(declare-fun b!139892 () Bool)

(declare-fun inv!3130 (String!3182) Bool)

(declare-fun inv!3133 (TokenValueInjection!612) Bool)

(assert (=> b!139892 (= e!82283 (and tp!73602 (inv!3130 (tag!576 (h!7778 rules!4268))) (inv!3133 (transformation!398 (h!7778 rules!4268))) e!82292))))

(declare-fun e!82287 () Bool)

(assert (=> b!139893 (= e!82287 (and tp!73597 tp!73598))))

(declare-fun b!139894 () Bool)

(declare-fun tp!73591 () Bool)

(assert (=> b!139894 (= e!82295 (and e!82283 tp!73591))))

(declare-fun b!139895 () Bool)

(declare-fun e!82285 () Bool)

(assert (=> b!139895 (= e!82293 e!82285)))

(declare-fun res!65095 () Bool)

(assert (=> b!139895 (=> (not res!65095) (not e!82285))))

(declare-fun p!3028 () Int)

(declare-datatypes ((Token!540 0))(
  ( (Token!541 (value!15660 TokenValue!420) (rule!905 Rule!596) (size!2092 Int) (originalCharacters!441 List!2390)) )
))
(declare-fun lt!41109 () Token!540)

(declare-datatypes ((List!2392 0))(
  ( (Nil!2382) (Cons!2382 (h!7779 Token!540) (t!23250 List!2392)) )
))
(declare-fun l1!3130 () List!2392)

(declare-fun dynLambda!788 (Int Token!540 Token!540 List!2391) Bool)

(declare-fun last!32 (List!2392) Token!540)

(assert (=> b!139895 (= res!65095 (dynLambda!788 p!3028 (last!32 l1!3130) lt!41109 rules!4268))))

(declare-fun l2!3099 () List!2392)

(declare-fun head!557 (List!2392) Token!540)

(assert (=> b!139895 (= lt!41109 (head!557 l2!3099))))

(declare-fun b!139896 () Bool)

(declare-fun res!65101 () Bool)

(assert (=> b!139896 (=> (not res!65101) (not e!82293))))

(declare-fun tokensListTwoByTwoPredicateList!23 (LexerInterface!284 List!2392 List!2391 Int) Bool)

(assert (=> b!139896 (= res!65101 (tokensListTwoByTwoPredicateList!23 thiss!27322 l2!3099 rules!4268 p!3028))))

(declare-fun b!139897 () Bool)

(declare-fun res!65097 () Bool)

(assert (=> b!139897 (=> (not res!65097) (not e!82285))))

(assert (=> b!139897 (= res!65097 (is-Cons!2382 l1!3130))))

(declare-fun b!139898 () Bool)

(declare-fun res!65096 () Bool)

(assert (=> b!139898 (=> (not res!65096) (not e!82285))))

(declare-fun isEmpty!909 (List!2392) Bool)

(assert (=> b!139898 (= res!65096 (not (isEmpty!909 (t!23250 l1!3130))))))

(declare-fun b!139899 () Bool)

(declare-fun e!82296 () Bool)

(declare-fun tp!73604 () Bool)

(declare-fun inv!3134 (Token!540) Bool)

(assert (=> b!139899 (= e!82291 (and (inv!3134 (h!7779 l1!3130)) e!82296 tp!73604))))

(declare-fun e!82290 () Bool)

(declare-fun b!139900 () Bool)

(declare-fun tp!73600 () Bool)

(assert (=> b!139900 (= e!82290 (and tp!73600 (inv!3130 (tag!576 (rule!905 (h!7779 l1!3130)))) (inv!3133 (transformation!398 (rule!905 (h!7779 l1!3130)))) e!82294))))

(declare-fun tp!73596 () Bool)

(declare-fun b!139901 () Bool)

(declare-fun e!82297 () Bool)

(assert (=> b!139901 (= e!82297 (and tp!73596 (inv!3130 (tag!576 (rule!905 (h!7779 l2!3099)))) (inv!3133 (transformation!398 (rule!905 (h!7779 l2!3099)))) e!82287))))

(declare-fun b!139902 () Bool)

(declare-fun res!65094 () Bool)

(assert (=> b!139902 (=> (not res!65094) (not e!82293))))

(assert (=> b!139902 (= res!65094 (tokensListTwoByTwoPredicateList!23 thiss!27322 l1!3130 rules!4268 p!3028))))

(declare-fun b!139903 () Bool)

(declare-fun size!2093 (List!2392) Int)

(assert (=> b!139903 (= e!82285 (>= (size!2093 (t!23250 l1!3130)) (size!2093 l1!3130)))))

(declare-fun b!139904 () Bool)

(declare-fun res!65100 () Bool)

(assert (=> b!139904 (=> (not res!65100) (not e!82293))))

(assert (=> b!139904 (= res!65100 (not (isEmpty!909 l2!3099)))))

(declare-fun b!139905 () Bool)

(declare-fun res!65092 () Bool)

(assert (=> b!139905 (=> (not res!65092) (not e!82285))))

(assert (=> b!139905 (= res!65092 (tokensListTwoByTwoPredicateList!23 thiss!27322 (t!23250 l1!3130) rules!4268 p!3028))))

(declare-fun b!139906 () Bool)

(declare-fun res!65099 () Bool)

(assert (=> b!139906 (=> (not res!65099) (not e!82293))))

(assert (=> b!139906 (= res!65099 (not (isEmpty!909 l1!3130)))))

(declare-fun tp!73603 () Bool)

(declare-fun e!82299 () Bool)

(declare-fun b!139907 () Bool)

(assert (=> b!139907 (= e!82288 (and (inv!3134 (h!7779 l2!3099)) e!82299 tp!73603))))

(declare-fun b!139908 () Bool)

(declare-fun tp!73592 () Bool)

(declare-fun inv!21 (TokenValue!420) Bool)

(assert (=> b!139908 (= e!82296 (and (inv!21 (value!15660 (h!7779 l1!3130))) e!82290 tp!73592))))

(assert (=> b!139909 (= e!82292 (and tp!73601 tp!73593))))

(declare-fun b!139910 () Bool)

(declare-fun res!65093 () Bool)

(assert (=> b!139910 (=> (not res!65093) (not e!82285))))

(assert (=> b!139910 (= res!65093 (dynLambda!788 p!3028 (last!32 (t!23250 l1!3130)) lt!41109 rules!4268))))

(declare-fun b!139911 () Bool)

(declare-fun tp!73594 () Bool)

(assert (=> b!139911 (= e!82299 (and (inv!21 (value!15660 (h!7779 l2!3099))) e!82297 tp!73594))))

(assert (= (and start!14672 res!65098) b!139902))

(assert (= (and b!139902 res!65094) b!139896))

(assert (= (and b!139896 res!65101) b!139906))

(assert (= (and b!139906 res!65099) b!139904))

(assert (= (and b!139904 res!65100) b!139895))

(assert (= (and b!139895 res!65095) b!139897))

(assert (= (and b!139897 res!65097) b!139898))

(assert (= (and b!139898 res!65096) b!139905))

(assert (= (and b!139905 res!65092) b!139910))

(assert (= (and b!139910 res!65093) b!139903))

(assert (= b!139892 b!139909))

(assert (= b!139894 b!139892))

(assert (= (and start!14672 (is-Cons!2381 rules!4268)) b!139894))

(assert (= b!139900 b!139891))

(assert (= b!139908 b!139900))

(assert (= b!139899 b!139908))

(assert (= (and start!14672 (is-Cons!2382 l1!3130)) b!139899))

(assert (= b!139901 b!139893))

(assert (= b!139911 b!139901))

(assert (= b!139907 b!139911))

(assert (= (and start!14672 (is-Cons!2382 l2!3099)) b!139907))

(declare-fun b_lambda!1943 () Bool)

(assert (=> (not b_lambda!1943) (not b!139895)))

(declare-fun t!23244 () Bool)

(declare-fun tb!3937 () Bool)

(assert (=> (and start!14672 (= p!3028 p!3028) t!23244) tb!3937))

(declare-fun result!6108 () Bool)

(assert (=> tb!3937 (= result!6108 true)))

(assert (=> b!139895 t!23244))

(declare-fun b_and!6803 () Bool)

(assert (= b_and!6793 (and (=> t!23244 result!6108) b_and!6803)))

(declare-fun b_lambda!1945 () Bool)

(assert (=> (not b_lambda!1945) (not b!139910)))

(declare-fun t!23246 () Bool)

(declare-fun tb!3939 () Bool)

(assert (=> (and start!14672 (= p!3028 p!3028) t!23246) tb!3939))

(declare-fun result!6110 () Bool)

(assert (=> tb!3939 (= result!6110 true)))

(assert (=> b!139910 t!23246))

(declare-fun b_and!6805 () Bool)

(assert (= b_and!6803 (and (=> t!23246 result!6110) b_and!6805)))

(declare-fun m!123263 () Bool)

(assert (=> b!139901 m!123263))

(declare-fun m!123265 () Bool)

(assert (=> b!139901 m!123265))

(declare-fun m!123267 () Bool)

(assert (=> b!139908 m!123267))

(declare-fun m!123269 () Bool)

(assert (=> b!139899 m!123269))

(declare-fun m!123271 () Bool)

(assert (=> b!139907 m!123271))

(declare-fun m!123273 () Bool)

(assert (=> b!139903 m!123273))

(declare-fun m!123275 () Bool)

(assert (=> b!139903 m!123275))

(declare-fun m!123277 () Bool)

(assert (=> b!139904 m!123277))

(declare-fun m!123279 () Bool)

(assert (=> b!139905 m!123279))

(declare-fun m!123281 () Bool)

(assert (=> b!139902 m!123281))

(declare-fun m!123283 () Bool)

(assert (=> b!139906 m!123283))

(declare-fun m!123285 () Bool)

(assert (=> b!139900 m!123285))

(declare-fun m!123287 () Bool)

(assert (=> b!139900 m!123287))

(declare-fun m!123289 () Bool)

(assert (=> b!139895 m!123289))

(assert (=> b!139895 m!123289))

(declare-fun m!123291 () Bool)

(assert (=> b!139895 m!123291))

(declare-fun m!123293 () Bool)

(assert (=> b!139895 m!123293))

(declare-fun m!123295 () Bool)

(assert (=> b!139910 m!123295))

(assert (=> b!139910 m!123295))

(declare-fun m!123297 () Bool)

(assert (=> b!139910 m!123297))

(declare-fun m!123299 () Bool)

(assert (=> b!139892 m!123299))

(declare-fun m!123301 () Bool)

(assert (=> b!139892 m!123301))

(declare-fun m!123303 () Bool)

(assert (=> b!139896 m!123303))

(declare-fun m!123305 () Bool)

(assert (=> b!139898 m!123305))

(declare-fun m!123307 () Bool)

(assert (=> b!139911 m!123307))

(push 1)

(assert (not b!139894))

(assert (not b!139892))

(assert b_and!6801)

(assert (not b_next!4475))

(assert b_and!6805)

(assert (not b!139907))

(assert (not b!139904))

(assert (not b!139902))

(assert (not b!139908))

(assert b_and!6791)

(assert (not b_next!4473))

(assert (not b!139906))

(assert (not b!139901))

(assert (not b_lambda!1945))

(assert (not b!139900))

(assert (not b!139910))

(assert b_and!6799)

(assert b_and!6789)

(assert b_and!6797)

(assert (not b!139899))

(assert (not b_next!4465))

(assert (not b!139903))

(assert (not b_lambda!1943))

(assert (not b_next!4469))

(assert (not b!139905))

(assert (not b!139911))

(assert (not b!139898))

(assert b_and!6795)

(assert (not b_next!4471))

(assert (not b!139896))

(assert (not b_next!4467))

(assert (not b_next!4477))

(assert (not b!139895))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4473))

(assert b_and!6801)

(assert (not b_next!4465))

(assert (not b_next!4475))

(assert (not b_next!4469))

(assert b_and!6805)

(assert b_and!6791)

(assert b_and!6799)

(assert b_and!6789)

(assert b_and!6797)

(assert b_and!6795)

(assert (not b_next!4471))

(assert (not b_next!4467))

(assert (not b_next!4477))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!1955 () Bool)

(assert (= b_lambda!1945 (or (and start!14672 b_free!4469) b_lambda!1955)))

(declare-fun b_lambda!1957 () Bool)

(assert (= b_lambda!1943 (or (and start!14672 b_free!4469) b_lambda!1957)))

(push 1)

(assert (not b!139894))

(assert (not b!139892))

(assert b_and!6801)

(assert (not b_next!4475))

(assert b_and!6805)

(assert (not b!139904))

(assert (not b!139902))

(assert (not b!139908))

(assert b_and!6791)

(assert (not b_next!4473))

(assert (not b!139906))

(assert (not b!139901))

(assert (not b!139900))

(assert (not b!139910))

(assert b_and!6799)

(assert b_and!6789)

(assert b_and!6797)

(assert (not b!139899))

(assert (not b_next!4465))

(assert (not b_lambda!1957))

(assert (not b!139903))

(assert (not b_next!4469))

(assert (not b!139905))

(assert (not b!139911))

(assert (not b!139898))

(assert (not b!139907))

(assert (not b_lambda!1955))

(assert b_and!6795)

(assert (not b_next!4471))

(assert (not b!139896))

(assert (not b_next!4467))

(assert (not b_next!4477))

(assert (not b!139895))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4473))

(assert b_and!6801)

(assert (not b_next!4465))

(assert (not b_next!4475))

(assert (not b_next!4469))

(assert b_and!6805)

(assert b_and!6791)

(assert b_and!6799)

(assert b_and!6789)

(assert b_and!6797)

(assert b_and!6795)

(assert (not b_next!4471))

(assert (not b_next!4467))

(assert (not b_next!4477))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!33231 () Bool)

(declare-fun res!65149 () Bool)

(declare-fun e!82365 () Bool)

(assert (=> d!33231 (=> res!65149 e!82365)))

(assert (=> d!33231 (= res!65149 (or (not (is-Cons!2382 l2!3099)) (not (is-Cons!2382 (t!23250 l2!3099)))))))

(assert (=> d!33231 (= (tokensListTwoByTwoPredicateList!23 thiss!27322 l2!3099 rules!4268 p!3028) e!82365)))

(declare-fun b!139990 () Bool)

(declare-fun e!82366 () Bool)

(assert (=> b!139990 (= e!82365 e!82366)))

(declare-fun res!65150 () Bool)

(assert (=> b!139990 (=> (not res!65150) (not e!82366))))

(assert (=> b!139990 (= res!65150 (dynLambda!788 p!3028 (h!7779 l2!3099) (h!7779 (t!23250 l2!3099)) rules!4268))))

(declare-fun b!139991 () Bool)

(assert (=> b!139991 (= e!82366 (tokensListTwoByTwoPredicateList!23 thiss!27322 (Cons!2382 (h!7779 (t!23250 l2!3099)) (t!23250 (t!23250 l2!3099))) rules!4268 p!3028))))

(assert (= (and d!33231 (not res!65149)) b!139990))

(assert (= (and b!139990 res!65150) b!139991))

(declare-fun b_lambda!1959 () Bool)

(assert (=> (not b_lambda!1959) (not b!139990)))

(declare-fun t!23260 () Bool)

(declare-fun tb!3945 () Bool)

(assert (=> (and start!14672 (= p!3028 p!3028) t!23260) tb!3945))

(declare-fun result!6116 () Bool)

(assert (=> tb!3945 (= result!6116 true)))

(assert (=> b!139990 t!23260))

(declare-fun b_and!6825 () Bool)

(assert (= b_and!6805 (and (=> t!23260 result!6116) b_and!6825)))

(declare-fun m!123361 () Bool)

(assert (=> b!139990 m!123361))

(declare-fun m!123363 () Bool)

(assert (=> b!139991 m!123363))

(assert (=> b!139896 d!33231))

(declare-fun d!33241 () Bool)

(declare-fun res!65161 () Bool)

(declare-fun e!82375 () Bool)

(assert (=> d!33241 (=> (not res!65161) (not e!82375))))

(declare-fun isEmpty!911 (List!2390) Bool)

(assert (=> d!33241 (= res!65161 (not (isEmpty!911 (originalCharacters!441 (h!7779 l2!3099)))))))

(assert (=> d!33241 (= (inv!3134 (h!7779 l2!3099)) e!82375)))

(declare-fun b!140007 () Bool)

(declare-fun res!65162 () Bool)

(assert (=> b!140007 (=> (not res!65162) (not e!82375))))

(declare-fun list!834 (BalanceConc!1264) List!2390)

(declare-fun dynLambda!790 (Int TokenValue!420) BalanceConc!1264)

(assert (=> b!140007 (= res!65162 (= (originalCharacters!441 (h!7779 l2!3099)) (list!834 (dynLambda!790 (toChars!868 (transformation!398 (rule!905 (h!7779 l2!3099)))) (value!15660 (h!7779 l2!3099))))))))

(declare-fun b!140008 () Bool)

(declare-fun size!2096 (List!2390) Int)

(assert (=> b!140008 (= e!82375 (= (size!2092 (h!7779 l2!3099)) (size!2096 (originalCharacters!441 (h!7779 l2!3099)))))))

(assert (= (and d!33241 res!65161) b!140007))

(assert (= (and b!140007 res!65162) b!140008))

(declare-fun b_lambda!1963 () Bool)

(assert (=> (not b_lambda!1963) (not b!140007)))

(declare-fun tb!3953 () Bool)

(declare-fun t!23268 () Bool)

(assert (=> (and b!139909 (= (toChars!868 (transformation!398 (h!7778 rules!4268))) (toChars!868 (transformation!398 (rule!905 (h!7779 l2!3099))))) t!23268) tb!3953))

(declare-fun b!140013 () Bool)

(declare-fun e!82378 () Bool)

(declare-fun tp!73655 () Bool)

(declare-fun inv!3137 (Conc!628) Bool)

(assert (=> b!140013 (= e!82378 (and (inv!3137 (c!29198 (dynLambda!790 (toChars!868 (transformation!398 (rule!905 (h!7779 l2!3099)))) (value!15660 (h!7779 l2!3099))))) tp!73655))))

(declare-fun result!6126 () Bool)

(declare-fun inv!3138 (BalanceConc!1264) Bool)

(assert (=> tb!3953 (= result!6126 (and (inv!3138 (dynLambda!790 (toChars!868 (transformation!398 (rule!905 (h!7779 l2!3099)))) (value!15660 (h!7779 l2!3099)))) e!82378))))

(assert (= tb!3953 b!140013))

(declare-fun m!123377 () Bool)

(assert (=> b!140013 m!123377))

(declare-fun m!123379 () Bool)

(assert (=> tb!3953 m!123379))

(assert (=> b!140007 t!23268))

(declare-fun b_and!6833 () Bool)

(assert (= b_and!6791 (and (=> t!23268 result!6126) b_and!6833)))

(declare-fun t!23270 () Bool)

(declare-fun tb!3955 () Bool)

(assert (=> (and b!139893 (= (toChars!868 (transformation!398 (rule!905 (h!7779 l2!3099)))) (toChars!868 (transformation!398 (rule!905 (h!7779 l2!3099))))) t!23270) tb!3955))

(declare-fun result!6130 () Bool)

(assert (= result!6130 result!6126))

(assert (=> b!140007 t!23270))

(declare-fun b_and!6835 () Bool)

(assert (= b_and!6797 (and (=> t!23270 result!6130) b_and!6835)))

(declare-fun t!23272 () Bool)

(declare-fun tb!3957 () Bool)

(assert (=> (and b!139891 (= (toChars!868 (transformation!398 (rule!905 (h!7779 l1!3130)))) (toChars!868 (transformation!398 (rule!905 (h!7779 l2!3099))))) t!23272) tb!3957))

(declare-fun result!6132 () Bool)

(assert (= result!6132 result!6126))

(assert (=> b!140007 t!23272))

(declare-fun b_and!6837 () Bool)

(assert (= b_and!6801 (and (=> t!23272 result!6132) b_and!6837)))

(declare-fun m!123381 () Bool)

(assert (=> d!33241 m!123381))

(declare-fun m!123383 () Bool)

(assert (=> b!140007 m!123383))

(assert (=> b!140007 m!123383))

(declare-fun m!123385 () Bool)

(assert (=> b!140007 m!123385))

(declare-fun m!123387 () Bool)

(assert (=> b!140008 m!123387))

(assert (=> b!139907 d!33241))

(declare-fun d!33245 () Bool)

(declare-fun c!29213 () Bool)

(assert (=> d!33245 (= c!29213 (is-IntegerValue!1260 (value!15660 (h!7779 l1!3130))))))

(declare-fun e!82390 () Bool)

(assert (=> d!33245 (= (inv!21 (value!15660 (h!7779 l1!3130))) e!82390)))

(declare-fun b!140030 () Bool)

(declare-fun e!82388 () Bool)

(declare-fun inv!15 (TokenValue!420) Bool)

(assert (=> b!140030 (= e!82388 (inv!15 (value!15660 (h!7779 l1!3130))))))

(declare-fun b!140031 () Bool)

(declare-fun inv!16 (TokenValue!420) Bool)

(assert (=> b!140031 (= e!82390 (inv!16 (value!15660 (h!7779 l1!3130))))))

(declare-fun b!140032 () Bool)

(declare-fun res!65165 () Bool)

(assert (=> b!140032 (=> res!65165 e!82388)))

(assert (=> b!140032 (= res!65165 (not (is-IntegerValue!1262 (value!15660 (h!7779 l1!3130)))))))

(declare-fun e!82389 () Bool)

(assert (=> b!140032 (= e!82389 e!82388)))

(declare-fun b!140033 () Bool)

(assert (=> b!140033 (= e!82390 e!82389)))

(declare-fun c!29214 () Bool)

(assert (=> b!140033 (= c!29214 (is-IntegerValue!1261 (value!15660 (h!7779 l1!3130))))))

(declare-fun b!140034 () Bool)

(declare-fun inv!17 (TokenValue!420) Bool)

(assert (=> b!140034 (= e!82389 (inv!17 (value!15660 (h!7779 l1!3130))))))

(assert (= (and d!33245 c!29213) b!140031))

(assert (= (and d!33245 (not c!29213)) b!140033))

(assert (= (and b!140033 c!29214) b!140034))

(assert (= (and b!140033 (not c!29214)) b!140032))

(assert (= (and b!140032 (not res!65165)) b!140030))

(declare-fun m!123393 () Bool)

(assert (=> b!140030 m!123393))

(declare-fun m!123395 () Bool)

(assert (=> b!140031 m!123395))

(declare-fun m!123397 () Bool)

(assert (=> b!140034 m!123397))

(assert (=> b!139908 d!33245))

(declare-fun d!33249 () Bool)

(assert (=> d!33249 (= (isEmpty!909 (t!23250 l1!3130)) (is-Nil!2382 (t!23250 l1!3130)))))

(assert (=> b!139898 d!33249))

(declare-fun d!33251 () Bool)

(assert (=> d!33251 (= (isEmpty!909 l2!3099) (is-Nil!2382 l2!3099))))

(assert (=> b!139904 d!33251))

(declare-fun d!33253 () Bool)

(declare-fun res!65170 () Bool)

(declare-fun e!82395 () Bool)

(assert (=> d!33253 (=> res!65170 e!82395)))

(assert (=> d!33253 (= res!65170 (or (not (is-Cons!2382 (t!23250 l1!3130))) (not (is-Cons!2382 (t!23250 (t!23250 l1!3130))))))))

(assert (=> d!33253 (= (tokensListTwoByTwoPredicateList!23 thiss!27322 (t!23250 l1!3130) rules!4268 p!3028) e!82395)))

(declare-fun b!140039 () Bool)

(declare-fun e!82396 () Bool)

(assert (=> b!140039 (= e!82395 e!82396)))

(declare-fun res!65171 () Bool)

(assert (=> b!140039 (=> (not res!65171) (not e!82396))))

(assert (=> b!140039 (= res!65171 (dynLambda!788 p!3028 (h!7779 (t!23250 l1!3130)) (h!7779 (t!23250 (t!23250 l1!3130))) rules!4268))))

(declare-fun b!140040 () Bool)

(assert (=> b!140040 (= e!82396 (tokensListTwoByTwoPredicateList!23 thiss!27322 (Cons!2382 (h!7779 (t!23250 (t!23250 l1!3130))) (t!23250 (t!23250 (t!23250 l1!3130)))) rules!4268 p!3028))))

(assert (= (and d!33253 (not res!65170)) b!140039))

(assert (= (and b!140039 res!65171) b!140040))

(declare-fun b_lambda!1965 () Bool)

(assert (=> (not b_lambda!1965) (not b!140039)))

(declare-fun t!23274 () Bool)

(declare-fun tb!3959 () Bool)

(assert (=> (and start!14672 (= p!3028 p!3028) t!23274) tb!3959))

(declare-fun result!6134 () Bool)

(assert (=> tb!3959 (= result!6134 true)))

(assert (=> b!140039 t!23274))

(declare-fun b_and!6839 () Bool)

(assert (= b_and!6825 (and (=> t!23274 result!6134) b_and!6839)))

(declare-fun m!123399 () Bool)

(assert (=> b!140039 m!123399))

(declare-fun m!123401 () Bool)

(assert (=> b!140040 m!123401))

(assert (=> b!139905 d!33253))

(declare-fun d!33255 () Bool)

(declare-fun lt!41122 () Token!540)

(declare-fun contains!380 (List!2392 Token!540) Bool)

(assert (=> d!33255 (contains!380 l1!3130 lt!41122)))

(declare-fun e!82407 () Token!540)

(assert (=> d!33255 (= lt!41122 e!82407)))

(declare-fun c!29221 () Bool)

(assert (=> d!33255 (= c!29221 (and (is-Cons!2382 l1!3130) (is-Nil!2382 (t!23250 l1!3130))))))

(assert (=> d!33255 (not (isEmpty!909 l1!3130))))

(assert (=> d!33255 (= (last!32 l1!3130) lt!41122)))

(declare-fun b!140057 () Bool)

(assert (=> b!140057 (= e!82407 (h!7779 l1!3130))))

(declare-fun b!140058 () Bool)

(assert (=> b!140058 (= e!82407 (last!32 (t!23250 l1!3130)))))

(assert (= (and d!33255 c!29221) b!140057))

(assert (= (and d!33255 (not c!29221)) b!140058))

(declare-fun m!123407 () Bool)

(assert (=> d!33255 m!123407))

(assert (=> d!33255 m!123283))

(assert (=> b!140058 m!123295))

(assert (=> b!139895 d!33255))

(declare-fun d!33259 () Bool)

(assert (=> d!33259 (= (head!557 l2!3099) (h!7779 l2!3099))))

(assert (=> b!139895 d!33259))

(declare-fun d!33261 () Bool)

(assert (=> d!33261 (= (isEmpty!909 l1!3130) (is-Nil!2382 l1!3130))))

(assert (=> b!139906 d!33261))

(declare-fun d!33263 () Bool)

(declare-fun res!65177 () Bool)

(declare-fun e!82411 () Bool)

(assert (=> d!33263 (=> res!65177 e!82411)))

(assert (=> d!33263 (= res!65177 (or (not (is-Cons!2382 l1!3130)) (not (is-Cons!2382 (t!23250 l1!3130)))))))

(assert (=> d!33263 (= (tokensListTwoByTwoPredicateList!23 thiss!27322 l1!3130 rules!4268 p!3028) e!82411)))

(declare-fun b!140064 () Bool)

(declare-fun e!82412 () Bool)

(assert (=> b!140064 (= e!82411 e!82412)))

(declare-fun res!65178 () Bool)

(assert (=> b!140064 (=> (not res!65178) (not e!82412))))

(assert (=> b!140064 (= res!65178 (dynLambda!788 p!3028 (h!7779 l1!3130) (h!7779 (t!23250 l1!3130)) rules!4268))))

(declare-fun b!140065 () Bool)

(assert (=> b!140065 (= e!82412 (tokensListTwoByTwoPredicateList!23 thiss!27322 (Cons!2382 (h!7779 (t!23250 l1!3130)) (t!23250 (t!23250 l1!3130))) rules!4268 p!3028))))

(assert (= (and d!33263 (not res!65177)) b!140064))

(assert (= (and b!140064 res!65178) b!140065))

(declare-fun b_lambda!1969 () Bool)

(assert (=> (not b_lambda!1969) (not b!140064)))

(declare-fun t!23278 () Bool)

(declare-fun tb!3963 () Bool)

(assert (=> (and start!14672 (= p!3028 p!3028) t!23278) tb!3963))

(declare-fun result!6138 () Bool)

(assert (=> tb!3963 (= result!6138 true)))

(assert (=> b!140064 t!23278))

(declare-fun b_and!6843 () Bool)

(assert (= b_and!6839 (and (=> t!23278 result!6138) b_and!6843)))

(declare-fun m!123415 () Bool)

(assert (=> b!140064 m!123415))

(declare-fun m!123417 () Bool)

(assert (=> b!140065 m!123417))

(assert (=> b!139902 d!33263))

(declare-fun d!33267 () Bool)

(assert (=> d!33267 (= (inv!3130 (tag!576 (h!7778 rules!4268))) (= (mod (str.len (value!15659 (tag!576 (h!7778 rules!4268)))) 2) 0))))

(assert (=> b!139892 d!33267))

(declare-fun d!33275 () Bool)

(declare-fun res!65188 () Bool)

(declare-fun e!82425 () Bool)

(assert (=> d!33275 (=> (not res!65188) (not e!82425))))

(declare-fun semiInverseModEq!133 (Int Int) Bool)

(assert (=> d!33275 (= res!65188 (semiInverseModEq!133 (toChars!868 (transformation!398 (h!7778 rules!4268))) (toValue!1009 (transformation!398 (h!7778 rules!4268)))))))

(assert (=> d!33275 (= (inv!3133 (transformation!398 (h!7778 rules!4268))) e!82425)))

(declare-fun b!140081 () Bool)

(declare-fun equivClasses!116 (Int Int) Bool)

(assert (=> b!140081 (= e!82425 (equivClasses!116 (toChars!868 (transformation!398 (h!7778 rules!4268))) (toValue!1009 (transformation!398 (h!7778 rules!4268)))))))

(assert (= (and d!33275 res!65188) b!140081))

(declare-fun m!123443 () Bool)

(assert (=> d!33275 m!123443))

(declare-fun m!123445 () Bool)

(assert (=> b!140081 m!123445))

(assert (=> b!139892 d!33275))

(declare-fun d!33291 () Bool)

(declare-fun lt!41126 () Int)

(assert (=> d!33291 (>= lt!41126 0)))

(declare-fun e!82432 () Int)

(assert (=> d!33291 (= lt!41126 e!82432)))

(declare-fun c!29229 () Bool)

(assert (=> d!33291 (= c!29229 (is-Nil!2382 (t!23250 l1!3130)))))

(assert (=> d!33291 (= (size!2093 (t!23250 l1!3130)) lt!41126)))

(declare-fun b!140097 () Bool)

(assert (=> b!140097 (= e!82432 0)))

(declare-fun b!140098 () Bool)

(assert (=> b!140098 (= e!82432 (+ 1 (size!2093 (t!23250 (t!23250 l1!3130)))))))

(assert (= (and d!33291 c!29229) b!140097))

(assert (= (and d!33291 (not c!29229)) b!140098))

(declare-fun m!123459 () Bool)

(assert (=> b!140098 m!123459))

(assert (=> b!139903 d!33291))

(declare-fun d!33295 () Bool)

(declare-fun lt!41127 () Int)

(assert (=> d!33295 (>= lt!41127 0)))

(declare-fun e!82433 () Int)

(assert (=> d!33295 (= lt!41127 e!82433)))

(declare-fun c!29230 () Bool)

(assert (=> d!33295 (= c!29230 (is-Nil!2382 l1!3130))))

(assert (=> d!33295 (= (size!2093 l1!3130) lt!41127)))

(declare-fun b!140101 () Bool)

(assert (=> b!140101 (= e!82433 0)))

(declare-fun b!140102 () Bool)

(assert (=> b!140102 (= e!82433 (+ 1 (size!2093 (t!23250 l1!3130))))))

(assert (= (and d!33295 c!29230) b!140101))

(assert (= (and d!33295 (not c!29230)) b!140102))

(assert (=> b!140102 m!123273))

(assert (=> b!139903 d!33295))

(declare-fun d!33297 () Bool)

(declare-fun res!65191 () Bool)

(declare-fun e!82434 () Bool)

(assert (=> d!33297 (=> (not res!65191) (not e!82434))))

(assert (=> d!33297 (= res!65191 (not (isEmpty!911 (originalCharacters!441 (h!7779 l1!3130)))))))

(assert (=> d!33297 (= (inv!3134 (h!7779 l1!3130)) e!82434)))

(declare-fun b!140103 () Bool)

(declare-fun res!65192 () Bool)

(assert (=> b!140103 (=> (not res!65192) (not e!82434))))

(assert (=> b!140103 (= res!65192 (= (originalCharacters!441 (h!7779 l1!3130)) (list!834 (dynLambda!790 (toChars!868 (transformation!398 (rule!905 (h!7779 l1!3130)))) (value!15660 (h!7779 l1!3130))))))))

(declare-fun b!140104 () Bool)

(assert (=> b!140104 (= e!82434 (= (size!2092 (h!7779 l1!3130)) (size!2096 (originalCharacters!441 (h!7779 l1!3130)))))))

(assert (= (and d!33297 res!65191) b!140103))

(assert (= (and b!140103 res!65192) b!140104))

(declare-fun b_lambda!1977 () Bool)

(assert (=> (not b_lambda!1977) (not b!140103)))

(declare-fun tb!3975 () Bool)

(declare-fun t!23290 () Bool)

(assert (=> (and b!139909 (= (toChars!868 (transformation!398 (h!7778 rules!4268))) (toChars!868 (transformation!398 (rule!905 (h!7779 l1!3130))))) t!23290) tb!3975))

(declare-fun b!140109 () Bool)

(declare-fun e!82436 () Bool)

(declare-fun tp!73672 () Bool)

(assert (=> b!140109 (= e!82436 (and (inv!3137 (c!29198 (dynLambda!790 (toChars!868 (transformation!398 (rule!905 (h!7779 l1!3130)))) (value!15660 (h!7779 l1!3130))))) tp!73672))))

(declare-fun result!6152 () Bool)

(assert (=> tb!3975 (= result!6152 (and (inv!3138 (dynLambda!790 (toChars!868 (transformation!398 (rule!905 (h!7779 l1!3130)))) (value!15660 (h!7779 l1!3130)))) e!82436))))

(assert (= tb!3975 b!140109))

(declare-fun m!123461 () Bool)

(assert (=> b!140109 m!123461))

(declare-fun m!123463 () Bool)

(assert (=> tb!3975 m!123463))

(assert (=> b!140103 t!23290))

(declare-fun b_and!6855 () Bool)

(assert (= b_and!6833 (and (=> t!23290 result!6152) b_and!6855)))

(declare-fun tb!3977 () Bool)

(declare-fun t!23292 () Bool)

(assert (=> (and b!139893 (= (toChars!868 (transformation!398 (rule!905 (h!7779 l2!3099)))) (toChars!868 (transformation!398 (rule!905 (h!7779 l1!3130))))) t!23292) tb!3977))

(declare-fun result!6156 () Bool)

(assert (= result!6156 result!6152))

(assert (=> b!140103 t!23292))

(declare-fun b_and!6857 () Bool)

(assert (= b_and!6835 (and (=> t!23292 result!6156) b_and!6857)))

(declare-fun t!23294 () Bool)

(declare-fun tb!3979 () Bool)

(assert (=> (and b!139891 (= (toChars!868 (transformation!398 (rule!905 (h!7779 l1!3130)))) (toChars!868 (transformation!398 (rule!905 (h!7779 l1!3130))))) t!23294) tb!3979))

(declare-fun result!6158 () Bool)

(assert (= result!6158 result!6152))

(assert (=> b!140103 t!23294))

(declare-fun b_and!6859 () Bool)

(assert (= b_and!6837 (and (=> t!23294 result!6158) b_and!6859)))

(declare-fun m!123465 () Bool)

(assert (=> d!33297 m!123465))

(declare-fun m!123467 () Bool)

(assert (=> b!140103 m!123467))

(assert (=> b!140103 m!123467))

(declare-fun m!123469 () Bool)

(assert (=> b!140103 m!123469))

(declare-fun m!123471 () Bool)

(assert (=> b!140104 m!123471))

(assert (=> b!139899 d!33297))

(declare-fun d!33299 () Bool)

(declare-fun lt!41128 () Token!540)

(assert (=> d!33299 (contains!380 (t!23250 l1!3130) lt!41128)))

(declare-fun e!82440 () Token!540)

(assert (=> d!33299 (= lt!41128 e!82440)))

(declare-fun c!29231 () Bool)

(assert (=> d!33299 (= c!29231 (and (is-Cons!2382 (t!23250 l1!3130)) (is-Nil!2382 (t!23250 (t!23250 l1!3130)))))))

(assert (=> d!33299 (not (isEmpty!909 (t!23250 l1!3130)))))

(assert (=> d!33299 (= (last!32 (t!23250 l1!3130)) lt!41128)))

(declare-fun b!140115 () Bool)

(assert (=> b!140115 (= e!82440 (h!7779 (t!23250 l1!3130)))))

(declare-fun b!140116 () Bool)

(assert (=> b!140116 (= e!82440 (last!32 (t!23250 (t!23250 l1!3130))))))

(assert (= (and d!33299 c!29231) b!140115))

(assert (= (and d!33299 (not c!29231)) b!140116))

(declare-fun m!123473 () Bool)

(assert (=> d!33299 m!123473))

(assert (=> d!33299 m!123305))

(declare-fun m!123475 () Bool)

(assert (=> b!140116 m!123475))

(assert (=> b!139910 d!33299))

(declare-fun d!33301 () Bool)

(assert (=> d!33301 (= (inv!3130 (tag!576 (rule!905 (h!7779 l1!3130)))) (= (mod (str.len (value!15659 (tag!576 (rule!905 (h!7779 l1!3130))))) 2) 0))))

(assert (=> b!139900 d!33301))

(declare-fun d!33303 () Bool)

(declare-fun res!65193 () Bool)

(declare-fun e!82442 () Bool)

(assert (=> d!33303 (=> (not res!65193) (not e!82442))))

(assert (=> d!33303 (= res!65193 (semiInverseModEq!133 (toChars!868 (transformation!398 (rule!905 (h!7779 l1!3130)))) (toValue!1009 (transformation!398 (rule!905 (h!7779 l1!3130))))))))

(assert (=> d!33303 (= (inv!3133 (transformation!398 (rule!905 (h!7779 l1!3130)))) e!82442)))

(declare-fun b!140123 () Bool)

(assert (=> b!140123 (= e!82442 (equivClasses!116 (toChars!868 (transformation!398 (rule!905 (h!7779 l1!3130)))) (toValue!1009 (transformation!398 (rule!905 (h!7779 l1!3130))))))))

(assert (= (and d!33303 res!65193) b!140123))

(declare-fun m!123477 () Bool)

(assert (=> d!33303 m!123477))

(declare-fun m!123479 () Bool)

(assert (=> b!140123 m!123479))

(assert (=> b!139900 d!33303))

(declare-fun d!33305 () Bool)

(declare-fun c!29232 () Bool)

(assert (=> d!33305 (= c!29232 (is-IntegerValue!1260 (value!15660 (h!7779 l2!3099))))))

(declare-fun e!82447 () Bool)

(assert (=> d!33305 (= (inv!21 (value!15660 (h!7779 l2!3099))) e!82447)))

(declare-fun b!140126 () Bool)

(declare-fun e!82445 () Bool)

(assert (=> b!140126 (= e!82445 (inv!15 (value!15660 (h!7779 l2!3099))))))

(declare-fun b!140127 () Bool)

(assert (=> b!140127 (= e!82447 (inv!16 (value!15660 (h!7779 l2!3099))))))

(declare-fun b!140128 () Bool)

(declare-fun res!65194 () Bool)

(assert (=> b!140128 (=> res!65194 e!82445)))

(assert (=> b!140128 (= res!65194 (not (is-IntegerValue!1262 (value!15660 (h!7779 l2!3099)))))))

(declare-fun e!82446 () Bool)

(assert (=> b!140128 (= e!82446 e!82445)))

(declare-fun b!140129 () Bool)

(assert (=> b!140129 (= e!82447 e!82446)))

(declare-fun c!29233 () Bool)

(assert (=> b!140129 (= c!29233 (is-IntegerValue!1261 (value!15660 (h!7779 l2!3099))))))

(declare-fun b!140130 () Bool)

(assert (=> b!140130 (= e!82446 (inv!17 (value!15660 (h!7779 l2!3099))))))

(assert (= (and d!33305 c!29232) b!140127))

(assert (= (and d!33305 (not c!29232)) b!140129))

(assert (= (and b!140129 c!29233) b!140130))

(assert (= (and b!140129 (not c!29233)) b!140128))

(assert (= (and b!140128 (not res!65194)) b!140126))

(declare-fun m!123481 () Bool)

(assert (=> b!140126 m!123481))

(declare-fun m!123483 () Bool)

(assert (=> b!140127 m!123483))

(declare-fun m!123485 () Bool)

(assert (=> b!140130 m!123485))

(assert (=> b!139911 d!33305))

(declare-fun d!33307 () Bool)

(assert (=> d!33307 (= (inv!3130 (tag!576 (rule!905 (h!7779 l2!3099)))) (= (mod (str.len (value!15659 (tag!576 (rule!905 (h!7779 l2!3099))))) 2) 0))))

(assert (=> b!139901 d!33307))

(declare-fun d!33309 () Bool)

(declare-fun res!65195 () Bool)

(declare-fun e!82452 () Bool)

(assert (=> d!33309 (=> (not res!65195) (not e!82452))))

(assert (=> d!33309 (= res!65195 (semiInverseModEq!133 (toChars!868 (transformation!398 (rule!905 (h!7779 l2!3099)))) (toValue!1009 (transformation!398 (rule!905 (h!7779 l2!3099))))))))

(assert (=> d!33309 (= (inv!3133 (transformation!398 (rule!905 (h!7779 l2!3099)))) e!82452)))

(declare-fun b!140133 () Bool)

(assert (=> b!140133 (= e!82452 (equivClasses!116 (toChars!868 (transformation!398 (rule!905 (h!7779 l2!3099)))) (toValue!1009 (transformation!398 (rule!905 (h!7779 l2!3099))))))))

(assert (= (and d!33309 res!65195) b!140133))

(declare-fun m!123487 () Bool)

(assert (=> d!33309 m!123487))

(declare-fun m!123489 () Bool)

(assert (=> b!140133 m!123489))

(assert (=> b!139901 d!33309))

(declare-fun b!140160 () Bool)

(declare-fun b_free!4497 () Bool)

(declare-fun b_next!4497 () Bool)

(assert (=> b!140160 (= b_free!4497 (not b_next!4497))))

(declare-fun tp!73710 () Bool)

(declare-fun b_and!6865 () Bool)

(assert (=> b!140160 (= tp!73710 b_and!6865)))

(declare-fun b_free!4499 () Bool)

(declare-fun b_next!4499 () Bool)

(assert (=> b!140160 (= b_free!4499 (not b_next!4499))))

(declare-fun t!23300 () Bool)

(declare-fun tb!3985 () Bool)

(assert (=> (and b!140160 (= (toChars!868 (transformation!398 (rule!905 (h!7779 (t!23250 l2!3099))))) (toChars!868 (transformation!398 (rule!905 (h!7779 l2!3099))))) t!23300) tb!3985))

(declare-fun result!6170 () Bool)

(assert (= result!6170 result!6126))

(assert (=> b!140007 t!23300))

(declare-fun tb!3987 () Bool)

(declare-fun t!23302 () Bool)

(assert (=> (and b!140160 (= (toChars!868 (transformation!398 (rule!905 (h!7779 (t!23250 l2!3099))))) (toChars!868 (transformation!398 (rule!905 (h!7779 l1!3130))))) t!23302) tb!3987))

(declare-fun result!6172 () Bool)

(assert (= result!6172 result!6152))

(assert (=> b!140103 t!23302))

(declare-fun b_and!6867 () Bool)

(declare-fun tp!73708 () Bool)

(assert (=> b!140160 (= tp!73708 (and (=> t!23300 result!6170) (=> t!23302 result!6172) b_and!6867))))

(declare-fun b!140159 () Bool)

(declare-fun e!82475 () Bool)

(declare-fun tp!73712 () Bool)

(declare-fun e!82479 () Bool)

(assert (=> b!140159 (= e!82475 (and tp!73712 (inv!3130 (tag!576 (rule!905 (h!7779 (t!23250 l2!3099))))) (inv!3133 (transformation!398 (rule!905 (h!7779 (t!23250 l2!3099))))) e!82479))))

(declare-fun e!82478 () Bool)

(declare-fun e!82474 () Bool)

(declare-fun tp!73709 () Bool)

(declare-fun b!140157 () Bool)

(assert (=> b!140157 (= e!82474 (and (inv!3134 (h!7779 (t!23250 l2!3099))) e!82478 tp!73709))))

(assert (=> b!139907 (= tp!73603 e!82474)))

(assert (=> b!140160 (= e!82479 (and tp!73710 tp!73708))))

(declare-fun b!140158 () Bool)

(declare-fun tp!73711 () Bool)

(assert (=> b!140158 (= e!82478 (and (inv!21 (value!15660 (h!7779 (t!23250 l2!3099)))) e!82475 tp!73711))))

(assert (= b!140159 b!140160))

(assert (= b!140158 b!140159))

(assert (= b!140157 b!140158))

(assert (= (and b!139907 (is-Cons!2382 (t!23250 l2!3099))) b!140157))

(declare-fun m!123495 () Bool)

(assert (=> b!140159 m!123495))

(declare-fun m!123497 () Bool)

(assert (=> b!140159 m!123497))

(declare-fun m!123499 () Bool)

(assert (=> b!140157 m!123499))

(declare-fun m!123501 () Bool)

(assert (=> b!140158 m!123501))

(declare-fun b!140171 () Bool)

(declare-fun e!82492 () Bool)

(declare-fun tp_is_empty!1563 () Bool)

(declare-fun tp!73723 () Bool)

(assert (=> b!140171 (= e!82492 (and tp_is_empty!1563 tp!73723))))

(assert (=> b!139908 (= tp!73592 e!82492)))

(assert (= (and b!139908 (is-Cons!2380 (originalCharacters!441 (h!7779 l1!3130)))) b!140171))

(declare-fun b!140182 () Bool)

(declare-fun e!82495 () Bool)

(assert (=> b!140182 (= e!82495 tp_is_empty!1563)))

(declare-fun b!140184 () Bool)

(declare-fun tp!73736 () Bool)

(assert (=> b!140184 (= e!82495 tp!73736)))

(assert (=> b!139892 (= tp!73602 e!82495)))

(declare-fun b!140183 () Bool)

(declare-fun tp!73740 () Bool)

(declare-fun tp!73739 () Bool)

(assert (=> b!140183 (= e!82495 (and tp!73740 tp!73739))))

(declare-fun b!140185 () Bool)

(declare-fun tp!73738 () Bool)

(declare-fun tp!73737 () Bool)

(assert (=> b!140185 (= e!82495 (and tp!73738 tp!73737))))

(assert (= (and b!139892 (is-ElementMatch!622 (regex!398 (h!7778 rules!4268)))) b!140182))

(assert (= (and b!139892 (is-Concat!1043 (regex!398 (h!7778 rules!4268)))) b!140183))

(assert (= (and b!139892 (is-Star!622 (regex!398 (h!7778 rules!4268)))) b!140184))

(assert (= (and b!139892 (is-Union!622 (regex!398 (h!7778 rules!4268)))) b!140185))

(declare-fun b!140189 () Bool)

(declare-fun b_free!4501 () Bool)

(declare-fun b_next!4501 () Bool)

(assert (=> b!140189 (= b_free!4501 (not b_next!4501))))

(declare-fun tp!73743 () Bool)

(declare-fun b_and!6869 () Bool)

(assert (=> b!140189 (= tp!73743 b_and!6869)))

(declare-fun b_free!4503 () Bool)

(declare-fun b_next!4503 () Bool)

(assert (=> b!140189 (= b_free!4503 (not b_next!4503))))

(declare-fun tb!3989 () Bool)

(declare-fun t!23304 () Bool)

(assert (=> (and b!140189 (= (toChars!868 (transformation!398 (rule!905 (h!7779 (t!23250 l1!3130))))) (toChars!868 (transformation!398 (rule!905 (h!7779 l2!3099))))) t!23304) tb!3989))

(declare-fun result!6178 () Bool)

(assert (= result!6178 result!6126))

(assert (=> b!140007 t!23304))

(declare-fun t!23306 () Bool)

(declare-fun tb!3991 () Bool)

(assert (=> (and b!140189 (= (toChars!868 (transformation!398 (rule!905 (h!7779 (t!23250 l1!3130))))) (toChars!868 (transformation!398 (rule!905 (h!7779 l1!3130))))) t!23306) tb!3991))

(declare-fun result!6180 () Bool)

(assert (= result!6180 result!6152))

(assert (=> b!140103 t!23306))

(declare-fun b_and!6871 () Bool)

(declare-fun tp!73741 () Bool)

(assert (=> b!140189 (= tp!73741 (and (=> t!23304 result!6178) (=> t!23306 result!6180) b_and!6871))))

(declare-fun e!82497 () Bool)

(declare-fun b!140188 () Bool)

(declare-fun e!82501 () Bool)

(declare-fun tp!73745 () Bool)

(assert (=> b!140188 (= e!82497 (and tp!73745 (inv!3130 (tag!576 (rule!905 (h!7779 (t!23250 l1!3130))))) (inv!3133 (transformation!398 (rule!905 (h!7779 (t!23250 l1!3130))))) e!82501))))

(declare-fun tp!73742 () Bool)

(declare-fun b!140186 () Bool)

(declare-fun e!82496 () Bool)

(declare-fun e!82500 () Bool)

(assert (=> b!140186 (= e!82496 (and (inv!3134 (h!7779 (t!23250 l1!3130))) e!82500 tp!73742))))

(assert (=> b!139899 (= tp!73604 e!82496)))

(assert (=> b!140189 (= e!82501 (and tp!73743 tp!73741))))

(declare-fun b!140187 () Bool)

(declare-fun tp!73744 () Bool)

(assert (=> b!140187 (= e!82500 (and (inv!21 (value!15660 (h!7779 (t!23250 l1!3130)))) e!82497 tp!73744))))

(assert (= b!140188 b!140189))

(assert (= b!140187 b!140188))

(assert (= b!140186 b!140187))

(assert (= (and b!139899 (is-Cons!2382 (t!23250 l1!3130))) b!140186))

(declare-fun m!123503 () Bool)

(assert (=> b!140188 m!123503))

(declare-fun m!123505 () Bool)

(assert (=> b!140188 m!123505))

(declare-fun m!123507 () Bool)

(assert (=> b!140186 m!123507))

(declare-fun m!123509 () Bool)

(assert (=> b!140187 m!123509))

(declare-fun b!140209 () Bool)

(declare-fun b_free!4513 () Bool)

(declare-fun b_next!4513 () Bool)

(assert (=> b!140209 (= b_free!4513 (not b_next!4513))))

(declare-fun tp!73766 () Bool)

(declare-fun b_and!6881 () Bool)

(assert (=> b!140209 (= tp!73766 b_and!6881)))

(declare-fun b_free!4515 () Bool)

(declare-fun b_next!4515 () Bool)

(assert (=> b!140209 (= b_free!4515 (not b_next!4515))))

(declare-fun tb!4001 () Bool)

(declare-fun t!23316 () Bool)

(assert (=> (and b!140209 (= (toChars!868 (transformation!398 (h!7778 (t!23249 rules!4268)))) (toChars!868 (transformation!398 (rule!905 (h!7779 l2!3099))))) t!23316) tb!4001))

(declare-fun result!6192 () Bool)

(assert (= result!6192 result!6126))

(assert (=> b!140007 t!23316))

(declare-fun t!23318 () Bool)

(declare-fun tb!4003 () Bool)

(assert (=> (and b!140209 (= (toChars!868 (transformation!398 (h!7778 (t!23249 rules!4268)))) (toChars!868 (transformation!398 (rule!905 (h!7779 l1!3130))))) t!23318) tb!4003))

(declare-fun result!6194 () Bool)

(assert (= result!6194 result!6152))

(assert (=> b!140103 t!23318))

(declare-fun b_and!6883 () Bool)

(declare-fun tp!73767 () Bool)

(assert (=> b!140209 (= tp!73767 (and (=> t!23316 result!6192) (=> t!23318 result!6194) b_and!6883))))

(declare-fun e!82526 () Bool)

(assert (=> b!140209 (= e!82526 (and tp!73766 tp!73767))))

(declare-fun tp!73765 () Bool)

(declare-fun b!140208 () Bool)

(declare-fun e!82524 () Bool)

(assert (=> b!140208 (= e!82524 (and tp!73765 (inv!3130 (tag!576 (h!7778 (t!23249 rules!4268)))) (inv!3133 (transformation!398 (h!7778 (t!23249 rules!4268)))) e!82526))))

(declare-fun b!140207 () Bool)

(declare-fun e!82525 () Bool)

(declare-fun tp!73768 () Bool)

(assert (=> b!140207 (= e!82525 (and e!82524 tp!73768))))

(assert (=> b!139894 (= tp!73591 e!82525)))

(assert (= b!140208 b!140209))

(assert (= b!140207 b!140208))

(assert (= (and b!139894 (is-Cons!2381 (t!23249 rules!4268))) b!140207))

(declare-fun m!123527 () Bool)

(assert (=> b!140208 m!123527))

(declare-fun m!123529 () Bool)

(assert (=> b!140208 m!123529))

(declare-fun b!140210 () Bool)

(declare-fun e!82527 () Bool)

(assert (=> b!140210 (= e!82527 tp_is_empty!1563)))

(declare-fun b!140212 () Bool)

(declare-fun tp!73769 () Bool)

(assert (=> b!140212 (= e!82527 tp!73769)))

(assert (=> b!139900 (= tp!73600 e!82527)))

(declare-fun b!140211 () Bool)

(declare-fun tp!73773 () Bool)

(declare-fun tp!73772 () Bool)

(assert (=> b!140211 (= e!82527 (and tp!73773 tp!73772))))

(declare-fun b!140213 () Bool)

(declare-fun tp!73771 () Bool)

(declare-fun tp!73770 () Bool)

(assert (=> b!140213 (= e!82527 (and tp!73771 tp!73770))))

(assert (= (and b!139900 (is-ElementMatch!622 (regex!398 (rule!905 (h!7779 l1!3130))))) b!140210))

(assert (= (and b!139900 (is-Concat!1043 (regex!398 (rule!905 (h!7779 l1!3130))))) b!140211))

(assert (= (and b!139900 (is-Star!622 (regex!398 (rule!905 (h!7779 l1!3130))))) b!140212))

(assert (= (and b!139900 (is-Union!622 (regex!398 (rule!905 (h!7779 l1!3130))))) b!140213))

(declare-fun b!140214 () Bool)

(declare-fun e!82528 () Bool)

(declare-fun tp!73774 () Bool)

(assert (=> b!140214 (= e!82528 (and tp_is_empty!1563 tp!73774))))

(assert (=> b!139911 (= tp!73594 e!82528)))

(assert (= (and b!139911 (is-Cons!2380 (originalCharacters!441 (h!7779 l2!3099)))) b!140214))

(declare-fun b!140215 () Bool)

(declare-fun e!82529 () Bool)

(assert (=> b!140215 (= e!82529 tp_is_empty!1563)))

(declare-fun b!140217 () Bool)

(declare-fun tp!73775 () Bool)

(assert (=> b!140217 (= e!82529 tp!73775)))

(assert (=> b!139901 (= tp!73596 e!82529)))

(declare-fun b!140216 () Bool)

(declare-fun tp!73779 () Bool)

(declare-fun tp!73778 () Bool)

(assert (=> b!140216 (= e!82529 (and tp!73779 tp!73778))))

(declare-fun b!140218 () Bool)

(declare-fun tp!73777 () Bool)

(declare-fun tp!73776 () Bool)

(assert (=> b!140218 (= e!82529 (and tp!73777 tp!73776))))

(assert (= (and b!139901 (is-ElementMatch!622 (regex!398 (rule!905 (h!7779 l2!3099))))) b!140215))

(assert (= (and b!139901 (is-Concat!1043 (regex!398 (rule!905 (h!7779 l2!3099))))) b!140216))

(assert (= (and b!139901 (is-Star!622 (regex!398 (rule!905 (h!7779 l2!3099))))) b!140217))

(assert (= (and b!139901 (is-Union!622 (regex!398 (rule!905 (h!7779 l2!3099))))) b!140218))

(declare-fun b_lambda!1989 () Bool)

(assert (= b_lambda!1959 (or (and start!14672 b_free!4469) b_lambda!1989)))

(declare-fun b_lambda!1991 () Bool)

(assert (= b_lambda!1969 (or (and start!14672 b_free!4469) b_lambda!1991)))

(declare-fun b_lambda!1993 () Bool)

(assert (= b_lambda!1977 (or (and b!140209 b_free!4515 (= (toChars!868 (transformation!398 (h!7778 (t!23249 rules!4268)))) (toChars!868 (transformation!398 (rule!905 (h!7779 l1!3130)))))) (and b!139893 b_free!4473 (= (toChars!868 (transformation!398 (rule!905 (h!7779 l2!3099)))) (toChars!868 (transformation!398 (rule!905 (h!7779 l1!3130)))))) (and b!139891 b_free!4477) (and b!140189 b_free!4503 (= (toChars!868 (transformation!398 (rule!905 (h!7779 (t!23250 l1!3130))))) (toChars!868 (transformation!398 (rule!905 (h!7779 l1!3130)))))) (and b!140160 b_free!4499 (= (toChars!868 (transformation!398 (rule!905 (h!7779 (t!23250 l2!3099))))) (toChars!868 (transformation!398 (rule!905 (h!7779 l1!3130)))))) (and b!139909 b_free!4467 (= (toChars!868 (transformation!398 (h!7778 rules!4268))) (toChars!868 (transformation!398 (rule!905 (h!7779 l1!3130)))))) b_lambda!1993)))

(declare-fun b_lambda!1995 () Bool)

(assert (= b_lambda!1963 (or (and b!140189 b_free!4503 (= (toChars!868 (transformation!398 (rule!905 (h!7779 (t!23250 l1!3130))))) (toChars!868 (transformation!398 (rule!905 (h!7779 l2!3099)))))) (and b!139909 b_free!4467 (= (toChars!868 (transformation!398 (h!7778 rules!4268))) (toChars!868 (transformation!398 (rule!905 (h!7779 l2!3099)))))) (and b!140209 b_free!4515 (= (toChars!868 (transformation!398 (h!7778 (t!23249 rules!4268)))) (toChars!868 (transformation!398 (rule!905 (h!7779 l2!3099)))))) (and b!139891 b_free!4477 (= (toChars!868 (transformation!398 (rule!905 (h!7779 l1!3130)))) (toChars!868 (transformation!398 (rule!905 (h!7779 l2!3099)))))) (and b!139893 b_free!4473) (and b!140160 b_free!4499 (= (toChars!868 (transformation!398 (rule!905 (h!7779 (t!23250 l2!3099))))) (toChars!868 (transformation!398 (rule!905 (h!7779 l2!3099)))))) b_lambda!1995)))

(declare-fun b_lambda!1997 () Bool)

(assert (= b_lambda!1965 (or (and start!14672 b_free!4469) b_lambda!1997)))

(push 1)

(assert (not d!33309))

(assert (not b!140104))

(assert b_and!6869)

(assert (not b!140116))

(assert b_and!6859)

(assert (not b_next!4473))

(assert (not b!140207))

(assert (not b!139991))

(assert (not b!140188))

(assert (not b!140013))

(assert (not b!140007))

(assert b_and!6865)

(assert (not d!33299))

(assert (not b!140186))

(assert (not b_next!4497))

(assert b_and!6855)

(assert b_and!6799)

(assert b_and!6789)

(assert (not b!140213))

(assert (not tb!3975))

(assert (not d!33303))

(assert b_and!6881)

(assert (not b!140058))

(assert (not b_lambda!1997))

(assert (not b!140208))

(assert (not b_next!4501))

(assert (not b!140187))

(assert (not b!140109))

(assert (not b!140081))

(assert (not b_next!4465))

(assert (not b!140040))

(assert (not b_next!4475))

(assert (not b_lambda!1957))

(assert b_and!6883)

(assert (not b!140157))

(assert b_and!6867)

(assert (not b_next!4469))

(assert (not b!140171))

(assert (not b_next!4503))

(assert b_and!6871)

(assert (not b_next!4499))

(assert (not b!140031))

(assert (not tb!3953))

(assert b_and!6843)

(assert (not b!140123))

(assert (not b!140183))

(assert (not b!140102))

(assert (not d!33255))

(assert (not b!140217))

(assert (not d!33297))

(assert (not d!33275))

(assert (not b!140126))

(assert (not b!140098))

(assert tp_is_empty!1563)

(assert (not b_lambda!1989))

(assert (not b!140065))

(assert (not b!140218))

(assert (not b_lambda!1995))

(assert (not b!140185))

(assert (not b!140127))

(assert (not b_next!4513))

(assert (not b_lambda!1955))

(assert (not b!140159))

(assert (not b!140216))

(assert (not b_lambda!1993))

(assert (not b!140212))

(assert (not b!140008))

(assert b_and!6795)

(assert (not b_next!4471))

(assert (not d!33241))

(assert (not b!140130))

(assert (not b!140103))

(assert (not b!140034))

(assert (not b!140184))

(assert b_and!6857)

(assert (not b_lambda!1991))

(assert (not b_next!4515))

(assert (not b!140158))

(assert (not b!140030))

(assert (not b!140214))

(assert (not b!140133))

(assert (not b_next!4467))

(assert (not b_next!4477))

(assert (not b!140211))

(check-sat)

(pop 1)

(push 1)

(assert b_and!6865)

(assert b_and!6869)

(assert b_and!6881)

(assert (not b_next!4501))

(assert (not b_next!4465))

(assert (not b_next!4475))

(assert b_and!6883)

(assert (not b_next!4513))

(assert b_and!6857)

(assert (not b_next!4515))

(assert b_and!6859)

(assert (not b_next!4473))

(assert (not b_next!4497))

(assert b_and!6855)

(assert b_and!6799)

(assert b_and!6789)

(assert b_and!6867)

(assert (not b_next!4469))

(assert (not b_next!4503))

(assert b_and!6843)

(assert b_and!6871)

(assert (not b_next!4499))

(assert b_and!6795)

(assert (not b_next!4471))

(assert (not b_next!4467))

(assert (not b_next!4477))

(check-sat)

(pop 1)

