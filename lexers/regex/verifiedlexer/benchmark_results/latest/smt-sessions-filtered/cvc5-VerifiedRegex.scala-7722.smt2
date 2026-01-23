; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!405864 () Bool)

(assert start!405864)

(declare-fun b!4240852 () Bool)

(declare-fun b_free!125563 () Bool)

(declare-fun b_next!126267 () Bool)

(assert (=> b!4240852 (= b_free!125563 (not b_next!126267))))

(declare-fun tp!1299846 () Bool)

(declare-fun b_and!335501 () Bool)

(assert (=> b!4240852 (= tp!1299846 b_and!335501)))

(declare-fun b_free!125565 () Bool)

(declare-fun b_next!126269 () Bool)

(assert (=> b!4240852 (= b_free!125565 (not b_next!126269))))

(declare-fun tp!1299840 () Bool)

(declare-fun b_and!335503 () Bool)

(assert (=> b!4240852 (= tp!1299840 b_and!335503)))

(declare-fun b!4240850 () Bool)

(declare-fun b_free!125567 () Bool)

(declare-fun b_next!126271 () Bool)

(assert (=> b!4240850 (= b_free!125567 (not b_next!126271))))

(declare-fun tp!1299841 () Bool)

(declare-fun b_and!335505 () Bool)

(assert (=> b!4240850 (= tp!1299841 b_and!335505)))

(declare-fun b_free!125569 () Bool)

(declare-fun b_next!126273 () Bool)

(assert (=> b!4240850 (= b_free!125569 (not b_next!126273))))

(declare-fun tp!1299845 () Bool)

(declare-fun b_and!335507 () Bool)

(assert (=> b!4240850 (= tp!1299845 b_and!335507)))

(declare-fun b!4240861 () Bool)

(declare-fun b_free!125571 () Bool)

(declare-fun b_next!126275 () Bool)

(assert (=> b!4240861 (= b_free!125571 (not b_next!126275))))

(declare-fun tp!1299851 () Bool)

(declare-fun b_and!335509 () Bool)

(assert (=> b!4240861 (= tp!1299851 b_and!335509)))

(declare-fun b_free!125573 () Bool)

(declare-fun b_next!126277 () Bool)

(assert (=> b!4240861 (= b_free!125573 (not b_next!126277))))

(declare-fun tp!1299843 () Bool)

(declare-fun b_and!335511 () Bool)

(assert (=> b!4240861 (= tp!1299843 b_and!335511)))

(declare-fun b!4240841 () Bool)

(declare-fun e!2633542 () Bool)

(declare-fun tp_is_empty!22655 () Bool)

(declare-fun tp!1299837 () Bool)

(assert (=> b!4240841 (= e!2633542 (and tp_is_empty!22655 tp!1299837))))

(declare-fun b!4240842 () Bool)

(declare-fun res!1743789 () Bool)

(declare-fun e!2633546 () Bool)

(assert (=> b!4240842 (=> (not res!1743789) (not e!2633546))))

(declare-datatypes ((List!47012 0))(
  ( (Nil!46888) (Cons!46888 (h!52308 (_ BitVec 16)) (t!350835 List!47012)) )
))
(declare-datatypes ((TokenValue!8157 0))(
  ( (FloatLiteralValue!16314 (text!57544 List!47012)) (TokenValueExt!8156 (__x!28537 Int)) (Broken!40785 (value!246431 List!47012)) (Object!8280) (End!8157) (Def!8157) (Underscore!8157) (Match!8157) (Else!8157) (Error!8157) (Case!8157) (If!8157) (Extends!8157) (Abstract!8157) (Class!8157) (Val!8157) (DelimiterValue!16314 (del!8217 List!47012)) (KeywordValue!8163 (value!246432 List!47012)) (CommentValue!16314 (value!246433 List!47012)) (WhitespaceValue!16314 (value!246434 List!47012)) (IndentationValue!8157 (value!246435 List!47012)) (String!54716) (Int32!8157) (Broken!40786 (value!246436 List!47012)) (Boolean!8158) (Unit!65967) (OperatorValue!8160 (op!8217 List!47012)) (IdentifierValue!16314 (value!246437 List!47012)) (IdentifierValue!16315 (value!246438 List!47012)) (WhitespaceValue!16315 (value!246439 List!47012)) (True!16314) (False!16314) (Broken!40787 (value!246440 List!47012)) (Broken!40788 (value!246441 List!47012)) (True!16315) (RightBrace!8157) (RightBracket!8157) (Colon!8157) (Null!8157) (Comma!8157) (LeftBracket!8157) (False!16315) (LeftBrace!8157) (ImaginaryLiteralValue!8157 (text!57545 List!47012)) (StringLiteralValue!24471 (value!246442 List!47012)) (EOFValue!8157 (value!246443 List!47012)) (IdentValue!8157 (value!246444 List!47012)) (DelimiterValue!16315 (value!246445 List!47012)) (DedentValue!8157 (value!246446 List!47012)) (NewLineValue!8157 (value!246447 List!47012)) (IntegerValue!24471 (value!246448 (_ BitVec 32)) (text!57546 List!47012)) (IntegerValue!24472 (value!246449 Int) (text!57547 List!47012)) (Times!8157) (Or!8157) (Equal!8157) (Minus!8157) (Broken!40789 (value!246450 List!47012)) (And!8157) (Div!8157) (LessEqual!8157) (Mod!8157) (Concat!20989) (Not!8157) (Plus!8157) (SpaceValue!8157 (value!246451 List!47012)) (IntegerValue!24473 (value!246452 Int) (text!57548 List!47012)) (StringLiteralValue!24472 (text!57549 List!47012)) (FloatLiteralValue!16315 (text!57550 List!47012)) (BytesLiteralValue!8157 (value!246453 List!47012)) (CommentValue!16315 (value!246454 List!47012)) (StringLiteralValue!24473 (value!246455 List!47012)) (ErrorTokenValue!8157 (msg!8218 List!47012)) )
))
(declare-datatypes ((C!25862 0))(
  ( (C!25863 (val!15121 Int)) )
))
(declare-datatypes ((Regex!12832 0))(
  ( (ElementMatch!12832 (c!720561 C!25862)) (Concat!20990 (regOne!26176 Regex!12832) (regTwo!26176 Regex!12832)) (EmptyExpr!12832) (Star!12832 (reg!13161 Regex!12832)) (EmptyLang!12832) (Union!12832 (regOne!26177 Regex!12832) (regTwo!26177 Regex!12832)) )
))
(declare-datatypes ((String!54717 0))(
  ( (String!54718 (value!246456 String)) )
))
(declare-datatypes ((List!47013 0))(
  ( (Nil!46889) (Cons!46889 (h!52309 C!25862) (t!350836 List!47013)) )
))
(declare-datatypes ((IArray!28281 0))(
  ( (IArray!28282 (innerList!14198 List!47013)) )
))
(declare-datatypes ((Conc!14138 0))(
  ( (Node!14138 (left!34848 Conc!14138) (right!35178 Conc!14138) (csize!28506 Int) (cheight!14349 Int)) (Leaf!21861 (xs!17444 IArray!28281) (csize!28507 Int)) (Empty!14138) )
))
(declare-datatypes ((BalanceConc!27870 0))(
  ( (BalanceConc!27871 (c!720562 Conc!14138)) )
))
(declare-datatypes ((TokenValueInjection!15742 0))(
  ( (TokenValueInjection!15743 (toValue!10683 Int) (toChars!10542 Int)) )
))
(declare-datatypes ((Rule!15654 0))(
  ( (Rule!15655 (regex!7927 Regex!12832) (tag!8791 String!54717) (isSeparator!7927 Bool) (transformation!7927 TokenValueInjection!15742)) )
))
(declare-datatypes ((List!47014 0))(
  ( (Nil!46890) (Cons!46890 (h!52310 Rule!15654) (t!350837 List!47014)) )
))
(declare-fun rules!2932 () List!47014)

(declare-fun isEmpty!27718 (List!47014) Bool)

(assert (=> b!4240842 (= res!1743789 (not (isEmpty!27718 rules!2932)))))

(declare-fun b!4240843 () Bool)

(declare-fun e!2633544 () Bool)

(declare-fun tp!1299842 () Bool)

(assert (=> b!4240843 (= e!2633544 (and tp_is_empty!22655 tp!1299842))))

(declare-fun tp!1299836 () Bool)

(declare-fun b!4240844 () Bool)

(declare-fun e!2633554 () Bool)

(declare-fun e!2633545 () Bool)

(declare-datatypes ((Token!14480 0))(
  ( (Token!14481 (value!246457 TokenValue!8157) (rule!11055 Rule!15654) (size!34348 Int) (originalCharacters!8271 List!47013)) )
))
(declare-datatypes ((List!47015 0))(
  ( (Nil!46891) (Cons!46891 (h!52311 Token!14480) (t!350838 List!47015)) )
))
(declare-fun tokens!581 () List!47015)

(declare-fun inv!61639 (Token!14480) Bool)

(assert (=> b!4240844 (= e!2633554 (and (inv!61639 (h!52311 tokens!581)) e!2633545 tp!1299836))))

(declare-fun e!2633537 () Bool)

(declare-fun b!4240845 () Bool)

(declare-fun addTokens!17 () List!47015)

(declare-fun e!2633550 () Bool)

(declare-fun tp!1299849 () Bool)

(assert (=> b!4240845 (= e!2633537 (and (inv!61639 (h!52311 addTokens!17)) e!2633550 tp!1299849))))

(declare-fun tp!1299835 () Bool)

(declare-fun e!2633548 () Bool)

(declare-fun e!2633552 () Bool)

(declare-fun b!4240846 () Bool)

(declare-fun inv!61636 (String!54717) Bool)

(declare-fun inv!61640 (TokenValueInjection!15742) Bool)

(assert (=> b!4240846 (= e!2633548 (and tp!1299835 (inv!61636 (tag!8791 (rule!11055 (h!52311 addTokens!17)))) (inv!61640 (transformation!7927 (rule!11055 (h!52311 addTokens!17)))) e!2633552))))

(declare-fun b!4240847 () Bool)

(declare-fun res!1743787 () Bool)

(declare-fun e!2633539 () Bool)

(assert (=> b!4240847 (=> (not res!1743787) (not e!2633539))))

(declare-fun isEmpty!27719 (List!47015) Bool)

(assert (=> b!4240847 (= res!1743787 (isEmpty!27719 addTokens!17))))

(declare-fun b!4240848 () Bool)

(declare-datatypes ((tuple2!44466 0))(
  ( (tuple2!44467 (_1!25367 List!47015) (_2!25367 List!47013)) )
))
(declare-fun lt!1506592 () tuple2!44466)

(declare-fun suffix!1262 () List!47013)

(declare-fun ++!11936 (List!47015 List!47015) List!47015)

(assert (=> b!4240848 (= e!2633539 (not (not (= lt!1506592 (tuple2!44467 (++!11936 addTokens!17 tokens!581) suffix!1262)))))))

(declare-fun lt!1506591 () tuple2!44466)

(assert (=> b!4240848 (not (= lt!1506592 lt!1506591))))

(declare-datatypes ((LexerInterface!7522 0))(
  ( (LexerInterfaceExt!7519 (__x!28538 Int)) (Lexer!7520) )
))
(declare-fun thiss!21540 () LexerInterface!7522)

(declare-fun shorterInput!51 () List!47013)

(declare-fun lexList!2028 (LexerInterface!7522 List!47014 List!47013) tuple2!44466)

(assert (=> b!4240848 (= lt!1506592 (lexList!2028 thiss!21540 rules!2932 shorterInput!51))))

(declare-fun longerInput!51 () List!47013)

(declare-datatypes ((Unit!65968 0))(
  ( (Unit!65969) )
))
(declare-fun lt!1506593 () Unit!65968)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!171 (LexerInterface!7522 List!47014 List!47013 List!47013 List!47015 List!47013) Unit!65968)

(assert (=> b!4240848 (= lt!1506593 (lemmaLexWithSmallerInputCannotProduceSameResults!171 thiss!21540 rules!2932 longerInput!51 shorterInput!51 tokens!581 suffix!1262))))

(declare-fun b!4240849 () Bool)

(assert (=> b!4240849 (= e!2633546 e!2633539)))

(declare-fun res!1743785 () Bool)

(assert (=> b!4240849 (=> (not res!1743785) (not e!2633539))))

(assert (=> b!4240849 (= res!1743785 (= (lexList!2028 thiss!21540 rules!2932 longerInput!51) lt!1506591))))

(assert (=> b!4240849 (= lt!1506591 (tuple2!44467 tokens!581 suffix!1262))))

(declare-fun res!1743786 () Bool)

(assert (=> start!405864 (=> (not res!1743786) (not e!2633546))))

(assert (=> start!405864 (= res!1743786 (is-Lexer!7520 thiss!21540))))

(assert (=> start!405864 e!2633546))

(assert (=> start!405864 true))

(declare-fun e!2633556 () Bool)

(assert (=> start!405864 e!2633556))

(assert (=> start!405864 e!2633537))

(assert (=> start!405864 e!2633544))

(assert (=> start!405864 e!2633542))

(assert (=> start!405864 e!2633554))

(declare-fun e!2633557 () Bool)

(assert (=> start!405864 e!2633557))

(declare-fun e!2633553 () Bool)

(assert (=> b!4240850 (= e!2633553 (and tp!1299841 tp!1299845))))

(declare-fun b!4240851 () Bool)

(declare-fun res!1743783 () Bool)

(assert (=> b!4240851 (=> (not res!1743783) (not e!2633546))))

(declare-fun isEmpty!27720 (List!47013) Bool)

(assert (=> b!4240851 (= res!1743783 (not (isEmpty!27720 longerInput!51)))))

(assert (=> b!4240852 (= e!2633552 (and tp!1299846 tp!1299840))))

(declare-fun b!4240853 () Bool)

(declare-fun e!2633543 () Bool)

(declare-fun e!2633551 () Bool)

(declare-fun tp!1299838 () Bool)

(assert (=> b!4240853 (= e!2633551 (and tp!1299838 (inv!61636 (tag!8791 (rule!11055 (h!52311 tokens!581)))) (inv!61640 (transformation!7927 (rule!11055 (h!52311 tokens!581)))) e!2633543))))

(declare-fun b!4240854 () Bool)

(declare-fun e!2633541 () Bool)

(declare-fun tp!1299848 () Bool)

(assert (=> b!4240854 (= e!2633541 (and tp!1299848 (inv!61636 (tag!8791 (h!52310 rules!2932))) (inv!61640 (transformation!7927 (h!52310 rules!2932))) e!2633553))))

(declare-fun tp!1299839 () Bool)

(declare-fun b!4240855 () Bool)

(declare-fun inv!21 (TokenValue!8157) Bool)

(assert (=> b!4240855 (= e!2633550 (and (inv!21 (value!246457 (h!52311 addTokens!17))) e!2633548 tp!1299839))))

(declare-fun b!4240856 () Bool)

(declare-fun res!1743784 () Bool)

(assert (=> b!4240856 (=> (not res!1743784) (not e!2633546))))

(declare-fun rulesInvariant!6633 (LexerInterface!7522 List!47014) Bool)

(assert (=> b!4240856 (= res!1743784 (rulesInvariant!6633 thiss!21540 rules!2932))))

(declare-fun b!4240857 () Bool)

(declare-fun res!1743788 () Bool)

(assert (=> b!4240857 (=> (not res!1743788) (not e!2633546))))

(declare-fun size!34349 (List!47013) Int)

(assert (=> b!4240857 (= res!1743788 (> (size!34349 longerInput!51) (size!34349 shorterInput!51)))))

(declare-fun b!4240858 () Bool)

(declare-fun tp!1299847 () Bool)

(assert (=> b!4240858 (= e!2633557 (and tp_is_empty!22655 tp!1299847))))

(declare-fun b!4240859 () Bool)

(declare-fun tp!1299844 () Bool)

(assert (=> b!4240859 (= e!2633556 (and e!2633541 tp!1299844))))

(declare-fun tp!1299850 () Bool)

(declare-fun b!4240860 () Bool)

(assert (=> b!4240860 (= e!2633545 (and (inv!21 (value!246457 (h!52311 tokens!581))) e!2633551 tp!1299850))))

(assert (=> b!4240861 (= e!2633543 (and tp!1299851 tp!1299843))))

(assert (= (and start!405864 res!1743786) b!4240842))

(assert (= (and b!4240842 res!1743789) b!4240856))

(assert (= (and b!4240856 res!1743784) b!4240851))

(assert (= (and b!4240851 res!1743783) b!4240857))

(assert (= (and b!4240857 res!1743788) b!4240849))

(assert (= (and b!4240849 res!1743785) b!4240847))

(assert (= (and b!4240847 res!1743787) b!4240848))

(assert (= b!4240854 b!4240850))

(assert (= b!4240859 b!4240854))

(assert (= (and start!405864 (is-Cons!46890 rules!2932)) b!4240859))

(assert (= b!4240846 b!4240852))

(assert (= b!4240855 b!4240846))

(assert (= b!4240845 b!4240855))

(assert (= (and start!405864 (is-Cons!46891 addTokens!17)) b!4240845))

(assert (= (and start!405864 (is-Cons!46889 shorterInput!51)) b!4240843))

(assert (= (and start!405864 (is-Cons!46889 suffix!1262)) b!4240841))

(assert (= b!4240853 b!4240861))

(assert (= b!4240860 b!4240853))

(assert (= b!4240844 b!4240860))

(assert (= (and start!405864 (is-Cons!46891 tokens!581)) b!4240844))

(assert (= (and start!405864 (is-Cons!46889 longerInput!51)) b!4240858))

(declare-fun m!4826299 () Bool)

(assert (=> b!4240849 m!4826299))

(declare-fun m!4826301 () Bool)

(assert (=> b!4240848 m!4826301))

(declare-fun m!4826303 () Bool)

(assert (=> b!4240848 m!4826303))

(declare-fun m!4826305 () Bool)

(assert (=> b!4240848 m!4826305))

(declare-fun m!4826307 () Bool)

(assert (=> b!4240847 m!4826307))

(declare-fun m!4826309 () Bool)

(assert (=> b!4240854 m!4826309))

(declare-fun m!4826311 () Bool)

(assert (=> b!4240854 m!4826311))

(declare-fun m!4826313 () Bool)

(assert (=> b!4240853 m!4826313))

(declare-fun m!4826315 () Bool)

(assert (=> b!4240853 m!4826315))

(declare-fun m!4826317 () Bool)

(assert (=> b!4240851 m!4826317))

(declare-fun m!4826319 () Bool)

(assert (=> b!4240856 m!4826319))

(declare-fun m!4826321 () Bool)

(assert (=> b!4240842 m!4826321))

(declare-fun m!4826323 () Bool)

(assert (=> b!4240845 m!4826323))

(declare-fun m!4826325 () Bool)

(assert (=> b!4240846 m!4826325))

(declare-fun m!4826327 () Bool)

(assert (=> b!4240846 m!4826327))

(declare-fun m!4826329 () Bool)

(assert (=> b!4240855 m!4826329))

(declare-fun m!4826331 () Bool)

(assert (=> b!4240860 m!4826331))

(declare-fun m!4826333 () Bool)

(assert (=> b!4240857 m!4826333))

(declare-fun m!4826335 () Bool)

(assert (=> b!4240857 m!4826335))

(declare-fun m!4826337 () Bool)

(assert (=> b!4240844 m!4826337))

(push 1)

(assert (not b!4240856))

(assert (not b!4240845))

(assert (not b!4240857))

(assert (not b!4240843))

(assert (not b_next!126269))

(assert (not b!4240841))

(assert (not b!4240847))

(assert (not b_next!126275))

(assert (not b!4240844))

(assert (not b!4240854))

(assert (not b_next!126267))

(assert b_and!335503)

(assert (not b_next!126273))

(assert tp_is_empty!22655)

(assert (not b_next!126271))

(assert (not b!4240853))

(assert (not b!4240859))

(assert (not b!4240849))

(assert b_and!335509)

(assert (not b!4240851))

(assert b_and!335501)

(assert (not b!4240848))

(assert (not b_next!126277))

(assert b_and!335505)

(assert (not b!4240846))

(assert (not b!4240858))

(assert b_and!335507)

(assert b_and!335511)

(assert (not b!4240855))

(assert (not b!4240860))

(assert (not b!4240842))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!126269))

(assert b_and!335509)

(assert b_and!335501)

(assert (not b_next!126275))

(assert (not b_next!126267))

(assert b_and!335503)

(assert (not b_next!126273))

(assert (not b_next!126271))

(assert (not b_next!126277))

(assert b_and!335505)

(assert b_and!335507)

(assert b_and!335511)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1247703 () Bool)

(declare-fun c!720575 () Bool)

(assert (=> d!1247703 (= c!720575 (is-IntegerValue!24471 (value!246457 (h!52311 tokens!581))))))

(declare-fun e!2633638 () Bool)

(assert (=> d!1247703 (= (inv!21 (value!246457 (h!52311 tokens!581))) e!2633638)))

(declare-fun b!4240954 () Bool)

(declare-fun e!2633639 () Bool)

(declare-fun inv!15 (TokenValue!8157) Bool)

(assert (=> b!4240954 (= e!2633639 (inv!15 (value!246457 (h!52311 tokens!581))))))

(declare-fun b!4240955 () Bool)

(declare-fun inv!16 (TokenValue!8157) Bool)

(assert (=> b!4240955 (= e!2633638 (inv!16 (value!246457 (h!52311 tokens!581))))))

(declare-fun b!4240956 () Bool)

(declare-fun e!2633637 () Bool)

(assert (=> b!4240956 (= e!2633638 e!2633637)))

(declare-fun c!720574 () Bool)

(assert (=> b!4240956 (= c!720574 (is-IntegerValue!24472 (value!246457 (h!52311 tokens!581))))))

(declare-fun b!4240957 () Bool)

(declare-fun inv!17 (TokenValue!8157) Bool)

(assert (=> b!4240957 (= e!2633637 (inv!17 (value!246457 (h!52311 tokens!581))))))

(declare-fun b!4240958 () Bool)

(declare-fun res!1743823 () Bool)

(assert (=> b!4240958 (=> res!1743823 e!2633639)))

(assert (=> b!4240958 (= res!1743823 (not (is-IntegerValue!24473 (value!246457 (h!52311 tokens!581)))))))

(assert (=> b!4240958 (= e!2633637 e!2633639)))

(assert (= (and d!1247703 c!720575) b!4240955))

(assert (= (and d!1247703 (not c!720575)) b!4240956))

(assert (= (and b!4240956 c!720574) b!4240957))

(assert (= (and b!4240956 (not c!720574)) b!4240958))

(assert (= (and b!4240958 (not res!1743823)) b!4240954))

(declare-fun m!4826395 () Bool)

(assert (=> b!4240954 m!4826395))

(declare-fun m!4826397 () Bool)

(assert (=> b!4240955 m!4826397))

(declare-fun m!4826399 () Bool)

(assert (=> b!4240957 m!4826399))

(assert (=> b!4240860 d!1247703))

(declare-fun d!1247709 () Bool)

(assert (=> d!1247709 (= (isEmpty!27720 longerInput!51) (is-Nil!46889 longerInput!51))))

(assert (=> b!4240851 d!1247709))

(declare-fun d!1247711 () Bool)

(assert (=> d!1247711 (= (isEmpty!27719 addTokens!17) (is-Nil!46891 addTokens!17))))

(assert (=> b!4240847 d!1247711))

(declare-fun b!4240981 () Bool)

(declare-fun e!2633653 () Bool)

(declare-fun lt!1506616 () tuple2!44466)

(assert (=> b!4240981 (= e!2633653 (not (isEmpty!27719 (_1!25367 lt!1506616))))))

(declare-fun b!4240982 () Bool)

(declare-fun e!2633654 () tuple2!44466)

(declare-datatypes ((tuple2!44470 0))(
  ( (tuple2!44471 (_1!25369 Token!14480) (_2!25369 List!47013)) )
))
(declare-datatypes ((Option!10063 0))(
  ( (None!10062) (Some!10062 (v!41014 tuple2!44470)) )
))
(declare-fun lt!1506618 () Option!10063)

(declare-fun lt!1506617 () tuple2!44466)

(assert (=> b!4240982 (= e!2633654 (tuple2!44467 (Cons!46891 (_1!25369 (v!41014 lt!1506618)) (_1!25367 lt!1506617)) (_2!25367 lt!1506617)))))

(assert (=> b!4240982 (= lt!1506617 (lexList!2028 thiss!21540 rules!2932 (_2!25369 (v!41014 lt!1506618))))))

(declare-fun d!1247713 () Bool)

(declare-fun e!2633652 () Bool)

(assert (=> d!1247713 e!2633652))

(declare-fun c!720583 () Bool)

(declare-fun size!34352 (List!47015) Int)

(assert (=> d!1247713 (= c!720583 (> (size!34352 (_1!25367 lt!1506616)) 0))))

(assert (=> d!1247713 (= lt!1506616 e!2633654)))

(declare-fun c!720584 () Bool)

(assert (=> d!1247713 (= c!720584 (is-Some!10062 lt!1506618))))

(declare-fun maxPrefix!4480 (LexerInterface!7522 List!47014 List!47013) Option!10063)

(assert (=> d!1247713 (= lt!1506618 (maxPrefix!4480 thiss!21540 rules!2932 longerInput!51))))

(assert (=> d!1247713 (= (lexList!2028 thiss!21540 rules!2932 longerInput!51) lt!1506616)))

(declare-fun b!4240983 () Bool)

(assert (=> b!4240983 (= e!2633654 (tuple2!44467 Nil!46891 longerInput!51))))

(declare-fun b!4240984 () Bool)

(assert (=> b!4240984 (= e!2633652 (= (_2!25367 lt!1506616) longerInput!51))))

(declare-fun b!4240985 () Bool)

(assert (=> b!4240985 (= e!2633652 e!2633653)))

(declare-fun res!1743832 () Bool)

(assert (=> b!4240985 (= res!1743832 (< (size!34349 (_2!25367 lt!1506616)) (size!34349 longerInput!51)))))

(assert (=> b!4240985 (=> (not res!1743832) (not e!2633653))))

(assert (= (and d!1247713 c!720584) b!4240982))

(assert (= (and d!1247713 (not c!720584)) b!4240983))

(assert (= (and d!1247713 c!720583) b!4240985))

(assert (= (and d!1247713 (not c!720583)) b!4240984))

(assert (= (and b!4240985 res!1743832) b!4240981))

(declare-fun m!4826415 () Bool)

(assert (=> b!4240981 m!4826415))

(declare-fun m!4826417 () Bool)

(assert (=> b!4240982 m!4826417))

(declare-fun m!4826419 () Bool)

(assert (=> d!1247713 m!4826419))

(declare-fun m!4826421 () Bool)

(assert (=> d!1247713 m!4826421))

(declare-fun m!4826423 () Bool)

(assert (=> b!4240985 m!4826423))

(assert (=> b!4240985 m!4826333))

(assert (=> b!4240849 d!1247713))

(declare-fun lt!1506621 () List!47015)

(declare-fun e!2633659 () Bool)

(declare-fun b!4240997 () Bool)

(assert (=> b!4240997 (= e!2633659 (or (not (= tokens!581 Nil!46891)) (= lt!1506621 addTokens!17)))))

(declare-fun d!1247717 () Bool)

(assert (=> d!1247717 e!2633659))

(declare-fun res!1743838 () Bool)

(assert (=> d!1247717 (=> (not res!1743838) (not e!2633659))))

(declare-fun content!7372 (List!47015) (Set Token!14480))

(assert (=> d!1247717 (= res!1743838 (= (content!7372 lt!1506621) (set.union (content!7372 addTokens!17) (content!7372 tokens!581))))))

(declare-fun e!2633660 () List!47015)

(assert (=> d!1247717 (= lt!1506621 e!2633660)))

(declare-fun c!720587 () Bool)

(assert (=> d!1247717 (= c!720587 (is-Nil!46891 addTokens!17))))

(assert (=> d!1247717 (= (++!11936 addTokens!17 tokens!581) lt!1506621)))

(declare-fun b!4240996 () Bool)

(declare-fun res!1743837 () Bool)

(assert (=> b!4240996 (=> (not res!1743837) (not e!2633659))))

(assert (=> b!4240996 (= res!1743837 (= (size!34352 lt!1506621) (+ (size!34352 addTokens!17) (size!34352 tokens!581))))))

(declare-fun b!4240995 () Bool)

(assert (=> b!4240995 (= e!2633660 (Cons!46891 (h!52311 addTokens!17) (++!11936 (t!350838 addTokens!17) tokens!581)))))

(declare-fun b!4240994 () Bool)

(assert (=> b!4240994 (= e!2633660 tokens!581)))

(assert (= (and d!1247717 c!720587) b!4240994))

(assert (= (and d!1247717 (not c!720587)) b!4240995))

(assert (= (and d!1247717 res!1743838) b!4240996))

(assert (= (and b!4240996 res!1743837) b!4240997))

(declare-fun m!4826425 () Bool)

(assert (=> d!1247717 m!4826425))

(declare-fun m!4826427 () Bool)

(assert (=> d!1247717 m!4826427))

(declare-fun m!4826429 () Bool)

(assert (=> d!1247717 m!4826429))

(declare-fun m!4826431 () Bool)

(assert (=> b!4240996 m!4826431))

(declare-fun m!4826433 () Bool)

(assert (=> b!4240996 m!4826433))

(declare-fun m!4826435 () Bool)

(assert (=> b!4240996 m!4826435))

(declare-fun m!4826437 () Bool)

(assert (=> b!4240995 m!4826437))

(assert (=> b!4240848 d!1247717))

(declare-fun b!4240998 () Bool)

(declare-fun e!2633662 () Bool)

(declare-fun lt!1506622 () tuple2!44466)

(assert (=> b!4240998 (= e!2633662 (not (isEmpty!27719 (_1!25367 lt!1506622))))))

(declare-fun b!4240999 () Bool)

(declare-fun e!2633663 () tuple2!44466)

(declare-fun lt!1506624 () Option!10063)

(declare-fun lt!1506623 () tuple2!44466)

(assert (=> b!4240999 (= e!2633663 (tuple2!44467 (Cons!46891 (_1!25369 (v!41014 lt!1506624)) (_1!25367 lt!1506623)) (_2!25367 lt!1506623)))))

(assert (=> b!4240999 (= lt!1506623 (lexList!2028 thiss!21540 rules!2932 (_2!25369 (v!41014 lt!1506624))))))

(declare-fun d!1247719 () Bool)

(declare-fun e!2633661 () Bool)

(assert (=> d!1247719 e!2633661))

(declare-fun c!720588 () Bool)

(assert (=> d!1247719 (= c!720588 (> (size!34352 (_1!25367 lt!1506622)) 0))))

(assert (=> d!1247719 (= lt!1506622 e!2633663)))

(declare-fun c!720589 () Bool)

(assert (=> d!1247719 (= c!720589 (is-Some!10062 lt!1506624))))

(assert (=> d!1247719 (= lt!1506624 (maxPrefix!4480 thiss!21540 rules!2932 shorterInput!51))))

(assert (=> d!1247719 (= (lexList!2028 thiss!21540 rules!2932 shorterInput!51) lt!1506622)))

(declare-fun b!4241000 () Bool)

(assert (=> b!4241000 (= e!2633663 (tuple2!44467 Nil!46891 shorterInput!51))))

(declare-fun b!4241001 () Bool)

(assert (=> b!4241001 (= e!2633661 (= (_2!25367 lt!1506622) shorterInput!51))))

(declare-fun b!4241002 () Bool)

(assert (=> b!4241002 (= e!2633661 e!2633662)))

(declare-fun res!1743839 () Bool)

(assert (=> b!4241002 (= res!1743839 (< (size!34349 (_2!25367 lt!1506622)) (size!34349 shorterInput!51)))))

(assert (=> b!4241002 (=> (not res!1743839) (not e!2633662))))

(assert (= (and d!1247719 c!720589) b!4240999))

(assert (= (and d!1247719 (not c!720589)) b!4241000))

(assert (= (and d!1247719 c!720588) b!4241002))

(assert (= (and d!1247719 (not c!720588)) b!4241001))

(assert (= (and b!4241002 res!1743839) b!4240998))

(declare-fun m!4826439 () Bool)

(assert (=> b!4240998 m!4826439))

(declare-fun m!4826441 () Bool)

(assert (=> b!4240999 m!4826441))

(declare-fun m!4826443 () Bool)

(assert (=> d!1247719 m!4826443))

(declare-fun m!4826445 () Bool)

(assert (=> d!1247719 m!4826445))

(declare-fun m!4826447 () Bool)

(assert (=> b!4241002 m!4826447))

(assert (=> b!4241002 m!4826335))

(assert (=> b!4240848 d!1247719))

(declare-fun d!1247721 () Bool)

(assert (=> d!1247721 (not (= (lexList!2028 thiss!21540 rules!2932 shorterInput!51) (tuple2!44467 tokens!581 suffix!1262)))))

(declare-fun lt!1506636 () Unit!65968)

(declare-fun choose!25947 (LexerInterface!7522 List!47014 List!47013 List!47013 List!47015 List!47013) Unit!65968)

(assert (=> d!1247721 (= lt!1506636 (choose!25947 thiss!21540 rules!2932 longerInput!51 shorterInput!51 tokens!581 suffix!1262))))

(assert (=> d!1247721 (not (isEmpty!27718 rules!2932))))

(assert (=> d!1247721 (= (lemmaLexWithSmallerInputCannotProduceSameResults!171 thiss!21540 rules!2932 longerInput!51 shorterInput!51 tokens!581 suffix!1262) lt!1506636)))

(declare-fun bs!598366 () Bool)

(assert (= bs!598366 d!1247721))

(assert (=> bs!598366 m!4826303))

(declare-fun m!4826459 () Bool)

(assert (=> bs!598366 m!4826459))

(assert (=> bs!598366 m!4826321))

(assert (=> b!4240848 d!1247721))

(declare-fun d!1247725 () Bool)

(declare-fun res!1743847 () Bool)

(declare-fun e!2633675 () Bool)

(assert (=> d!1247725 (=> (not res!1743847) (not e!2633675))))

(assert (=> d!1247725 (= res!1743847 (not (isEmpty!27720 (originalCharacters!8271 (h!52311 addTokens!17)))))))

(assert (=> d!1247725 (= (inv!61639 (h!52311 addTokens!17)) e!2633675)))

(declare-fun b!4241022 () Bool)

(declare-fun res!1743848 () Bool)

(assert (=> b!4241022 (=> (not res!1743848) (not e!2633675))))

(declare-fun list!16908 (BalanceConc!27870) List!47013)

(declare-fun dynLambda!20111 (Int TokenValue!8157) BalanceConc!27870)

(assert (=> b!4241022 (= res!1743848 (= (originalCharacters!8271 (h!52311 addTokens!17)) (list!16908 (dynLambda!20111 (toChars!10542 (transformation!7927 (rule!11055 (h!52311 addTokens!17)))) (value!246457 (h!52311 addTokens!17))))))))

(declare-fun b!4241023 () Bool)

(assert (=> b!4241023 (= e!2633675 (= (size!34348 (h!52311 addTokens!17)) (size!34349 (originalCharacters!8271 (h!52311 addTokens!17)))))))

(assert (= (and d!1247725 res!1743847) b!4241022))

(assert (= (and b!4241022 res!1743848) b!4241023))

(declare-fun b_lambda!124877 () Bool)

(assert (=> (not b_lambda!124877) (not b!4241022)))

(declare-fun t!350850 () Bool)

(declare-fun tb!255017 () Bool)

(assert (=> (and b!4240852 (= (toChars!10542 (transformation!7927 (rule!11055 (h!52311 addTokens!17)))) (toChars!10542 (transformation!7927 (rule!11055 (h!52311 addTokens!17))))) t!350850) tb!255017))

(declare-fun b!4241028 () Bool)

(declare-fun e!2633678 () Bool)

(declare-fun tp!1299908 () Bool)

(declare-fun inv!61643 (Conc!14138) Bool)

(assert (=> b!4241028 (= e!2633678 (and (inv!61643 (c!720562 (dynLambda!20111 (toChars!10542 (transformation!7927 (rule!11055 (h!52311 addTokens!17)))) (value!246457 (h!52311 addTokens!17))))) tp!1299908))))

(declare-fun result!310992 () Bool)

(declare-fun inv!61644 (BalanceConc!27870) Bool)

(assert (=> tb!255017 (= result!310992 (and (inv!61644 (dynLambda!20111 (toChars!10542 (transformation!7927 (rule!11055 (h!52311 addTokens!17)))) (value!246457 (h!52311 addTokens!17)))) e!2633678))))

(assert (= tb!255017 b!4241028))

(declare-fun m!4826461 () Bool)

(assert (=> b!4241028 m!4826461))

(declare-fun m!4826463 () Bool)

(assert (=> tb!255017 m!4826463))

(assert (=> b!4241022 t!350850))

(declare-fun b_and!335531 () Bool)

(assert (= b_and!335503 (and (=> t!350850 result!310992) b_and!335531)))

(declare-fun tb!255019 () Bool)

(declare-fun t!350852 () Bool)

(assert (=> (and b!4240850 (= (toChars!10542 (transformation!7927 (h!52310 rules!2932))) (toChars!10542 (transformation!7927 (rule!11055 (h!52311 addTokens!17))))) t!350852) tb!255019))

(declare-fun result!310996 () Bool)

(assert (= result!310996 result!310992))

(assert (=> b!4241022 t!350852))

(declare-fun b_and!335533 () Bool)

(assert (= b_and!335507 (and (=> t!350852 result!310996) b_and!335533)))

(declare-fun t!350854 () Bool)

(declare-fun tb!255021 () Bool)

(assert (=> (and b!4240861 (= (toChars!10542 (transformation!7927 (rule!11055 (h!52311 tokens!581)))) (toChars!10542 (transformation!7927 (rule!11055 (h!52311 addTokens!17))))) t!350854) tb!255021))

(declare-fun result!310998 () Bool)

(assert (= result!310998 result!310992))

(assert (=> b!4241022 t!350854))

(declare-fun b_and!335535 () Bool)

(assert (= b_and!335511 (and (=> t!350854 result!310998) b_and!335535)))

(declare-fun m!4826465 () Bool)

(assert (=> d!1247725 m!4826465))

(declare-fun m!4826467 () Bool)

(assert (=> b!4241022 m!4826467))

(assert (=> b!4241022 m!4826467))

(declare-fun m!4826469 () Bool)

(assert (=> b!4241022 m!4826469))

(declare-fun m!4826471 () Bool)

(assert (=> b!4241023 m!4826471))

(assert (=> b!4240845 d!1247725))

(declare-fun d!1247727 () Bool)

(declare-fun c!720597 () Bool)

(assert (=> d!1247727 (= c!720597 (is-IntegerValue!24471 (value!246457 (h!52311 addTokens!17))))))

(declare-fun e!2633680 () Bool)

(assert (=> d!1247727 (= (inv!21 (value!246457 (h!52311 addTokens!17))) e!2633680)))

(declare-fun b!4241029 () Bool)

(declare-fun e!2633681 () Bool)

(assert (=> b!4241029 (= e!2633681 (inv!15 (value!246457 (h!52311 addTokens!17))))))

(declare-fun b!4241030 () Bool)

(assert (=> b!4241030 (= e!2633680 (inv!16 (value!246457 (h!52311 addTokens!17))))))

(declare-fun b!4241031 () Bool)

(declare-fun e!2633679 () Bool)

(assert (=> b!4241031 (= e!2633680 e!2633679)))

(declare-fun c!720596 () Bool)

(assert (=> b!4241031 (= c!720596 (is-IntegerValue!24472 (value!246457 (h!52311 addTokens!17))))))

(declare-fun b!4241032 () Bool)

(assert (=> b!4241032 (= e!2633679 (inv!17 (value!246457 (h!52311 addTokens!17))))))

(declare-fun b!4241033 () Bool)

(declare-fun res!1743849 () Bool)

(assert (=> b!4241033 (=> res!1743849 e!2633681)))

(assert (=> b!4241033 (= res!1743849 (not (is-IntegerValue!24473 (value!246457 (h!52311 addTokens!17)))))))

(assert (=> b!4241033 (= e!2633679 e!2633681)))

(assert (= (and d!1247727 c!720597) b!4241030))

(assert (= (and d!1247727 (not c!720597)) b!4241031))

(assert (= (and b!4241031 c!720596) b!4241032))

(assert (= (and b!4241031 (not c!720596)) b!4241033))

(assert (= (and b!4241033 (not res!1743849)) b!4241029))

(declare-fun m!4826473 () Bool)

(assert (=> b!4241029 m!4826473))

(declare-fun m!4826475 () Bool)

(assert (=> b!4241030 m!4826475))

(declare-fun m!4826477 () Bool)

(assert (=> b!4241032 m!4826477))

(assert (=> b!4240855 d!1247727))

(declare-fun d!1247729 () Bool)

(declare-fun res!1743850 () Bool)

(declare-fun e!2633682 () Bool)

(assert (=> d!1247729 (=> (not res!1743850) (not e!2633682))))

(assert (=> d!1247729 (= res!1743850 (not (isEmpty!27720 (originalCharacters!8271 (h!52311 tokens!581)))))))

(assert (=> d!1247729 (= (inv!61639 (h!52311 tokens!581)) e!2633682)))

(declare-fun b!4241034 () Bool)

(declare-fun res!1743851 () Bool)

(assert (=> b!4241034 (=> (not res!1743851) (not e!2633682))))

(assert (=> b!4241034 (= res!1743851 (= (originalCharacters!8271 (h!52311 tokens!581)) (list!16908 (dynLambda!20111 (toChars!10542 (transformation!7927 (rule!11055 (h!52311 tokens!581)))) (value!246457 (h!52311 tokens!581))))))))

(declare-fun b!4241035 () Bool)

(assert (=> b!4241035 (= e!2633682 (= (size!34348 (h!52311 tokens!581)) (size!34349 (originalCharacters!8271 (h!52311 tokens!581)))))))

(assert (= (and d!1247729 res!1743850) b!4241034))

(assert (= (and b!4241034 res!1743851) b!4241035))

(declare-fun b_lambda!124879 () Bool)

(assert (=> (not b_lambda!124879) (not b!4241034)))

(declare-fun t!350856 () Bool)

(declare-fun tb!255023 () Bool)

(assert (=> (and b!4240852 (= (toChars!10542 (transformation!7927 (rule!11055 (h!52311 addTokens!17)))) (toChars!10542 (transformation!7927 (rule!11055 (h!52311 tokens!581))))) t!350856) tb!255023))

(declare-fun b!4241036 () Bool)

(declare-fun e!2633683 () Bool)

(declare-fun tp!1299909 () Bool)

(assert (=> b!4241036 (= e!2633683 (and (inv!61643 (c!720562 (dynLambda!20111 (toChars!10542 (transformation!7927 (rule!11055 (h!52311 tokens!581)))) (value!246457 (h!52311 tokens!581))))) tp!1299909))))

(declare-fun result!311000 () Bool)

(assert (=> tb!255023 (= result!311000 (and (inv!61644 (dynLambda!20111 (toChars!10542 (transformation!7927 (rule!11055 (h!52311 tokens!581)))) (value!246457 (h!52311 tokens!581)))) e!2633683))))

(assert (= tb!255023 b!4241036))

(declare-fun m!4826479 () Bool)

(assert (=> b!4241036 m!4826479))

(declare-fun m!4826481 () Bool)

(assert (=> tb!255023 m!4826481))

(assert (=> b!4241034 t!350856))

(declare-fun b_and!335537 () Bool)

(assert (= b_and!335531 (and (=> t!350856 result!311000) b_and!335537)))

(declare-fun t!350858 () Bool)

(declare-fun tb!255025 () Bool)

(assert (=> (and b!4240850 (= (toChars!10542 (transformation!7927 (h!52310 rules!2932))) (toChars!10542 (transformation!7927 (rule!11055 (h!52311 tokens!581))))) t!350858) tb!255025))

(declare-fun result!311002 () Bool)

(assert (= result!311002 result!311000))

(assert (=> b!4241034 t!350858))

(declare-fun b_and!335539 () Bool)

(assert (= b_and!335533 (and (=> t!350858 result!311002) b_and!335539)))

(declare-fun t!350860 () Bool)

(declare-fun tb!255027 () Bool)

(assert (=> (and b!4240861 (= (toChars!10542 (transformation!7927 (rule!11055 (h!52311 tokens!581)))) (toChars!10542 (transformation!7927 (rule!11055 (h!52311 tokens!581))))) t!350860) tb!255027))

(declare-fun result!311004 () Bool)

(assert (= result!311004 result!311000))

(assert (=> b!4241034 t!350860))

(declare-fun b_and!335541 () Bool)

(assert (= b_and!335535 (and (=> t!350860 result!311004) b_and!335541)))

(declare-fun m!4826483 () Bool)

(assert (=> d!1247729 m!4826483))

(declare-fun m!4826485 () Bool)

(assert (=> b!4241034 m!4826485))

(assert (=> b!4241034 m!4826485))

(declare-fun m!4826487 () Bool)

(assert (=> b!4241034 m!4826487))

(declare-fun m!4826489 () Bool)

(assert (=> b!4241035 m!4826489))

(assert (=> b!4240844 d!1247729))

(declare-fun d!1247731 () Bool)

(declare-fun lt!1506639 () Int)

(assert (=> d!1247731 (>= lt!1506639 0)))

(declare-fun e!2633686 () Int)

(assert (=> d!1247731 (= lt!1506639 e!2633686)))

(declare-fun c!720600 () Bool)

(assert (=> d!1247731 (= c!720600 (is-Nil!46889 longerInput!51))))

(assert (=> d!1247731 (= (size!34349 longerInput!51) lt!1506639)))

(declare-fun b!4241041 () Bool)

(assert (=> b!4241041 (= e!2633686 0)))

(declare-fun b!4241042 () Bool)

(assert (=> b!4241042 (= e!2633686 (+ 1 (size!34349 (t!350836 longerInput!51))))))

(assert (= (and d!1247731 c!720600) b!4241041))

(assert (= (and d!1247731 (not c!720600)) b!4241042))

(declare-fun m!4826491 () Bool)

(assert (=> b!4241042 m!4826491))

(assert (=> b!4240857 d!1247731))

(declare-fun d!1247733 () Bool)

(declare-fun lt!1506640 () Int)

(assert (=> d!1247733 (>= lt!1506640 0)))

(declare-fun e!2633687 () Int)

(assert (=> d!1247733 (= lt!1506640 e!2633687)))

(declare-fun c!720601 () Bool)

(assert (=> d!1247733 (= c!720601 (is-Nil!46889 shorterInput!51))))

(assert (=> d!1247733 (= (size!34349 shorterInput!51) lt!1506640)))

(declare-fun b!4241043 () Bool)

(assert (=> b!4241043 (= e!2633687 0)))

(declare-fun b!4241044 () Bool)

(assert (=> b!4241044 (= e!2633687 (+ 1 (size!34349 (t!350836 shorterInput!51))))))

(assert (= (and d!1247733 c!720601) b!4241043))

(assert (= (and d!1247733 (not c!720601)) b!4241044))

(declare-fun m!4826493 () Bool)

(assert (=> b!4241044 m!4826493))

(assert (=> b!4240857 d!1247733))

(declare-fun d!1247735 () Bool)

(assert (=> d!1247735 (= (inv!61636 (tag!8791 (rule!11055 (h!52311 addTokens!17)))) (= (mod (str.len (value!246456 (tag!8791 (rule!11055 (h!52311 addTokens!17))))) 2) 0))))

(assert (=> b!4240846 d!1247735))

(declare-fun d!1247737 () Bool)

(declare-fun res!1743854 () Bool)

(declare-fun e!2633690 () Bool)

(assert (=> d!1247737 (=> (not res!1743854) (not e!2633690))))

(declare-fun semiInverseModEq!3450 (Int Int) Bool)

(assert (=> d!1247737 (= res!1743854 (semiInverseModEq!3450 (toChars!10542 (transformation!7927 (rule!11055 (h!52311 addTokens!17)))) (toValue!10683 (transformation!7927 (rule!11055 (h!52311 addTokens!17))))))))

(assert (=> d!1247737 (= (inv!61640 (transformation!7927 (rule!11055 (h!52311 addTokens!17)))) e!2633690)))

(declare-fun b!4241047 () Bool)

(declare-fun equivClasses!3349 (Int Int) Bool)

(assert (=> b!4241047 (= e!2633690 (equivClasses!3349 (toChars!10542 (transformation!7927 (rule!11055 (h!52311 addTokens!17)))) (toValue!10683 (transformation!7927 (rule!11055 (h!52311 addTokens!17))))))))

(assert (= (and d!1247737 res!1743854) b!4241047))

(declare-fun m!4826495 () Bool)

(assert (=> d!1247737 m!4826495))

(declare-fun m!4826497 () Bool)

(assert (=> b!4241047 m!4826497))

(assert (=> b!4240846 d!1247737))

(declare-fun d!1247739 () Bool)

(declare-fun res!1743857 () Bool)

(declare-fun e!2633693 () Bool)

(assert (=> d!1247739 (=> (not res!1743857) (not e!2633693))))

(declare-fun rulesValid!3073 (LexerInterface!7522 List!47014) Bool)

(assert (=> d!1247739 (= res!1743857 (rulesValid!3073 thiss!21540 rules!2932))))

(assert (=> d!1247739 (= (rulesInvariant!6633 thiss!21540 rules!2932) e!2633693)))

(declare-fun b!4241050 () Bool)

(declare-datatypes ((List!47020 0))(
  ( (Nil!46896) (Cons!46896 (h!52316 String!54717) (t!350891 List!47020)) )
))
(declare-fun noDuplicateTag!3234 (LexerInterface!7522 List!47014 List!47020) Bool)

(assert (=> b!4241050 (= e!2633693 (noDuplicateTag!3234 thiss!21540 rules!2932 Nil!46896))))

(assert (= (and d!1247739 res!1743857) b!4241050))

(declare-fun m!4826499 () Bool)

(assert (=> d!1247739 m!4826499))

(declare-fun m!4826501 () Bool)

(assert (=> b!4241050 m!4826501))

(assert (=> b!4240856 d!1247739))

(declare-fun d!1247741 () Bool)

(assert (=> d!1247741 (= (inv!61636 (tag!8791 (rule!11055 (h!52311 tokens!581)))) (= (mod (str.len (value!246456 (tag!8791 (rule!11055 (h!52311 tokens!581))))) 2) 0))))

(assert (=> b!4240853 d!1247741))

(declare-fun d!1247743 () Bool)

(declare-fun res!1743858 () Bool)

(declare-fun e!2633694 () Bool)

(assert (=> d!1247743 (=> (not res!1743858) (not e!2633694))))

(assert (=> d!1247743 (= res!1743858 (semiInverseModEq!3450 (toChars!10542 (transformation!7927 (rule!11055 (h!52311 tokens!581)))) (toValue!10683 (transformation!7927 (rule!11055 (h!52311 tokens!581))))))))

(assert (=> d!1247743 (= (inv!61640 (transformation!7927 (rule!11055 (h!52311 tokens!581)))) e!2633694)))

(declare-fun b!4241051 () Bool)

(assert (=> b!4241051 (= e!2633694 (equivClasses!3349 (toChars!10542 (transformation!7927 (rule!11055 (h!52311 tokens!581)))) (toValue!10683 (transformation!7927 (rule!11055 (h!52311 tokens!581))))))))

(assert (= (and d!1247743 res!1743858) b!4241051))

(declare-fun m!4826503 () Bool)

(assert (=> d!1247743 m!4826503))

(declare-fun m!4826505 () Bool)

(assert (=> b!4241051 m!4826505))

(assert (=> b!4240853 d!1247743))

(declare-fun d!1247745 () Bool)

(assert (=> d!1247745 (= (isEmpty!27718 rules!2932) (is-Nil!46890 rules!2932))))

(assert (=> b!4240842 d!1247745))

(declare-fun d!1247747 () Bool)

(assert (=> d!1247747 (= (inv!61636 (tag!8791 (h!52310 rules!2932))) (= (mod (str.len (value!246456 (tag!8791 (h!52310 rules!2932)))) 2) 0))))

(assert (=> b!4240854 d!1247747))

(declare-fun d!1247749 () Bool)

(declare-fun res!1743859 () Bool)

(declare-fun e!2633695 () Bool)

(assert (=> d!1247749 (=> (not res!1743859) (not e!2633695))))

(assert (=> d!1247749 (= res!1743859 (semiInverseModEq!3450 (toChars!10542 (transformation!7927 (h!52310 rules!2932))) (toValue!10683 (transformation!7927 (h!52310 rules!2932)))))))

(assert (=> d!1247749 (= (inv!61640 (transformation!7927 (h!52310 rules!2932))) e!2633695)))

(declare-fun b!4241052 () Bool)

(assert (=> b!4241052 (= e!2633695 (equivClasses!3349 (toChars!10542 (transformation!7927 (h!52310 rules!2932))) (toValue!10683 (transformation!7927 (h!52310 rules!2932)))))))

(assert (= (and d!1247749 res!1743859) b!4241052))

(declare-fun m!4826507 () Bool)

(assert (=> d!1247749 m!4826507))

(declare-fun m!4826509 () Bool)

(assert (=> b!4241052 m!4826509))

(assert (=> b!4240854 d!1247749))

(declare-fun b!4241057 () Bool)

(declare-fun e!2633698 () Bool)

(declare-fun tp!1299912 () Bool)

(assert (=> b!4241057 (= e!2633698 (and tp_is_empty!22655 tp!1299912))))

(assert (=> b!4240860 (= tp!1299850 e!2633698)))

(assert (= (and b!4240860 (is-Cons!46889 (originalCharacters!8271 (h!52311 tokens!581)))) b!4241057))

(declare-fun b!4241058 () Bool)

(declare-fun e!2633699 () Bool)

(declare-fun tp!1299913 () Bool)

(assert (=> b!4241058 (= e!2633699 (and tp_is_empty!22655 tp!1299913))))

(assert (=> b!4240841 (= tp!1299837 e!2633699)))

(assert (= (and b!4240841 (is-Cons!46889 (t!350836 suffix!1262))) b!4241058))

(declare-fun b!4241059 () Bool)

(declare-fun e!2633700 () Bool)

(declare-fun tp!1299914 () Bool)

(assert (=> b!4241059 (= e!2633700 (and tp_is_empty!22655 tp!1299914))))

(assert (=> b!4240858 (= tp!1299847 e!2633700)))

(assert (= (and b!4240858 (is-Cons!46889 (t!350836 longerInput!51))) b!4241059))

(declare-fun b!4241070 () Bool)

(declare-fun b_free!125587 () Bool)

(declare-fun b_next!126291 () Bool)

(assert (=> b!4241070 (= b_free!125587 (not b_next!126291))))

(declare-fun tp!1299925 () Bool)

(declare-fun b_and!335543 () Bool)

(assert (=> b!4241070 (= tp!1299925 b_and!335543)))

(declare-fun b_free!125589 () Bool)

(declare-fun b_next!126293 () Bool)

(assert (=> b!4241070 (= b_free!125589 (not b_next!126293))))

(declare-fun tb!255029 () Bool)

(declare-fun t!350862 () Bool)

(assert (=> (and b!4241070 (= (toChars!10542 (transformation!7927 (h!52310 (t!350837 rules!2932)))) (toChars!10542 (transformation!7927 (rule!11055 (h!52311 addTokens!17))))) t!350862) tb!255029))

(declare-fun result!311010 () Bool)

(assert (= result!311010 result!310992))

(assert (=> b!4241022 t!350862))

(declare-fun t!350864 () Bool)

(declare-fun tb!255031 () Bool)

(assert (=> (and b!4241070 (= (toChars!10542 (transformation!7927 (h!52310 (t!350837 rules!2932)))) (toChars!10542 (transformation!7927 (rule!11055 (h!52311 tokens!581))))) t!350864) tb!255031))

(declare-fun result!311012 () Bool)

(assert (= result!311012 result!311000))

(assert (=> b!4241034 t!350864))

(declare-fun b_and!335545 () Bool)

(declare-fun tp!1299926 () Bool)

(assert (=> b!4241070 (= tp!1299926 (and (=> t!350862 result!311010) (=> t!350864 result!311012) b_and!335545))))

(declare-fun e!2633712 () Bool)

(assert (=> b!4241070 (= e!2633712 (and tp!1299925 tp!1299926))))

(declare-fun b!4241069 () Bool)

(declare-fun e!2633711 () Bool)

(declare-fun tp!1299924 () Bool)

(assert (=> b!4241069 (= e!2633711 (and tp!1299924 (inv!61636 (tag!8791 (h!52310 (t!350837 rules!2932)))) (inv!61640 (transformation!7927 (h!52310 (t!350837 rules!2932)))) e!2633712))))

(declare-fun b!4241068 () Bool)

(declare-fun e!2633709 () Bool)

(declare-fun tp!1299923 () Bool)

(assert (=> b!4241068 (= e!2633709 (and e!2633711 tp!1299923))))

(assert (=> b!4240859 (= tp!1299844 e!2633709)))

(assert (= b!4241069 b!4241070))

(assert (= b!4241068 b!4241069))

(assert (= (and b!4240859 (is-Cons!46890 (t!350837 rules!2932))) b!4241068))

(declare-fun m!4826511 () Bool)

(assert (=> b!4241069 m!4826511))

(declare-fun m!4826513 () Bool)

(assert (=> b!4241069 m!4826513))

(declare-fun b!4241084 () Bool)

(declare-fun b_free!125591 () Bool)

(declare-fun b_next!126295 () Bool)

(assert (=> b!4241084 (= b_free!125591 (not b_next!126295))))

(declare-fun tp!1299941 () Bool)

(declare-fun b_and!335547 () Bool)

(assert (=> b!4241084 (= tp!1299941 b_and!335547)))

(declare-fun b_free!125593 () Bool)

(declare-fun b_next!126297 () Bool)

(assert (=> b!4241084 (= b_free!125593 (not b_next!126297))))

(declare-fun t!350866 () Bool)

(declare-fun tb!255033 () Bool)

(assert (=> (and b!4241084 (= (toChars!10542 (transformation!7927 (rule!11055 (h!52311 (t!350838 addTokens!17))))) (toChars!10542 (transformation!7927 (rule!11055 (h!52311 addTokens!17))))) t!350866) tb!255033))

(declare-fun result!311016 () Bool)

(assert (= result!311016 result!310992))

(assert (=> b!4241022 t!350866))

(declare-fun tb!255035 () Bool)

(declare-fun t!350868 () Bool)

(assert (=> (and b!4241084 (= (toChars!10542 (transformation!7927 (rule!11055 (h!52311 (t!350838 addTokens!17))))) (toChars!10542 (transformation!7927 (rule!11055 (h!52311 tokens!581))))) t!350868) tb!255035))

(declare-fun result!311018 () Bool)

(assert (= result!311018 result!311000))

(assert (=> b!4241034 t!350868))

(declare-fun tp!1299937 () Bool)

(declare-fun b_and!335549 () Bool)

(assert (=> b!4241084 (= tp!1299937 (and (=> t!350866 result!311016) (=> t!350868 result!311018) b_and!335549))))

(declare-fun tp!1299939 () Bool)

(declare-fun b!4241083 () Bool)

(declare-fun e!2633725 () Bool)

(declare-fun e!2633729 () Bool)

(assert (=> b!4241083 (= e!2633729 (and tp!1299939 (inv!61636 (tag!8791 (rule!11055 (h!52311 (t!350838 addTokens!17))))) (inv!61640 (transformation!7927 (rule!11055 (h!52311 (t!350838 addTokens!17))))) e!2633725))))

(declare-fun b!4241082 () Bool)

(declare-fun tp!1299938 () Bool)

(declare-fun e!2633728 () Bool)

(assert (=> b!4241082 (= e!2633728 (and (inv!21 (value!246457 (h!52311 (t!350838 addTokens!17)))) e!2633729 tp!1299938))))

(declare-fun e!2633730 () Bool)

(assert (=> b!4240845 (= tp!1299849 e!2633730)))

(assert (=> b!4241084 (= e!2633725 (and tp!1299941 tp!1299937))))

(declare-fun b!4241081 () Bool)

(declare-fun tp!1299940 () Bool)

(assert (=> b!4241081 (= e!2633730 (and (inv!61639 (h!52311 (t!350838 addTokens!17))) e!2633728 tp!1299940))))

(assert (= b!4241083 b!4241084))

(assert (= b!4241082 b!4241083))

(assert (= b!4241081 b!4241082))

(assert (= (and b!4240845 (is-Cons!46891 (t!350838 addTokens!17))) b!4241081))

(declare-fun m!4826517 () Bool)

(assert (=> b!4241083 m!4826517))

(declare-fun m!4826519 () Bool)

(assert (=> b!4241083 m!4826519))

(declare-fun m!4826521 () Bool)

(assert (=> b!4241082 m!4826521))

(declare-fun m!4826523 () Bool)

(assert (=> b!4241081 m!4826523))

(declare-fun b!4241085 () Bool)

(declare-fun e!2633731 () Bool)

(declare-fun tp!1299942 () Bool)

(assert (=> b!4241085 (= e!2633731 (and tp_is_empty!22655 tp!1299942))))

(assert (=> b!4240855 (= tp!1299839 e!2633731)))

(assert (= (and b!4240855 (is-Cons!46889 (originalCharacters!8271 (h!52311 addTokens!17)))) b!4241085))

(declare-fun b!4241089 () Bool)

(declare-fun b_free!125595 () Bool)

(declare-fun b_next!126299 () Bool)

(assert (=> b!4241089 (= b_free!125595 (not b_next!126299))))

(declare-fun tp!1299947 () Bool)

(declare-fun b_and!335551 () Bool)

(assert (=> b!4241089 (= tp!1299947 b_and!335551)))

(declare-fun b_free!125597 () Bool)

(declare-fun b_next!126301 () Bool)

(assert (=> b!4241089 (= b_free!125597 (not b_next!126301))))

(declare-fun tb!255037 () Bool)

(declare-fun t!350870 () Bool)

(assert (=> (and b!4241089 (= (toChars!10542 (transformation!7927 (rule!11055 (h!52311 (t!350838 tokens!581))))) (toChars!10542 (transformation!7927 (rule!11055 (h!52311 addTokens!17))))) t!350870) tb!255037))

(declare-fun result!311020 () Bool)

(assert (= result!311020 result!310992))

(assert (=> b!4241022 t!350870))

(declare-fun t!350872 () Bool)

(declare-fun tb!255039 () Bool)

(assert (=> (and b!4241089 (= (toChars!10542 (transformation!7927 (rule!11055 (h!52311 (t!350838 tokens!581))))) (toChars!10542 (transformation!7927 (rule!11055 (h!52311 tokens!581))))) t!350872) tb!255039))

(declare-fun result!311022 () Bool)

(assert (= result!311022 result!311000))

(assert (=> b!4241034 t!350872))

(declare-fun b_and!335553 () Bool)

(declare-fun tp!1299943 () Bool)

(assert (=> b!4241089 (= tp!1299943 (and (=> t!350870 result!311020) (=> t!350872 result!311022) b_and!335553))))

(declare-fun b!4241088 () Bool)

(declare-fun e!2633732 () Bool)

(declare-fun e!2633736 () Bool)

(declare-fun tp!1299945 () Bool)

(assert (=> b!4241088 (= e!2633736 (and tp!1299945 (inv!61636 (tag!8791 (rule!11055 (h!52311 (t!350838 tokens!581))))) (inv!61640 (transformation!7927 (rule!11055 (h!52311 (t!350838 tokens!581))))) e!2633732))))

(declare-fun b!4241087 () Bool)

(declare-fun e!2633735 () Bool)

(declare-fun tp!1299944 () Bool)

(assert (=> b!4241087 (= e!2633735 (and (inv!21 (value!246457 (h!52311 (t!350838 tokens!581)))) e!2633736 tp!1299944))))

(declare-fun e!2633737 () Bool)

(assert (=> b!4240844 (= tp!1299836 e!2633737)))

(assert (=> b!4241089 (= e!2633732 (and tp!1299947 tp!1299943))))

(declare-fun tp!1299946 () Bool)

(declare-fun b!4241086 () Bool)

(assert (=> b!4241086 (= e!2633737 (and (inv!61639 (h!52311 (t!350838 tokens!581))) e!2633735 tp!1299946))))

(assert (= b!4241088 b!4241089))

(assert (= b!4241087 b!4241088))

(assert (= b!4241086 b!4241087))

(assert (= (and b!4240844 (is-Cons!46891 (t!350838 tokens!581))) b!4241086))

(declare-fun m!4826525 () Bool)

(assert (=> b!4241088 m!4826525))

(declare-fun m!4826527 () Bool)

(assert (=> b!4241088 m!4826527))

(declare-fun m!4826529 () Bool)

(assert (=> b!4241087 m!4826529))

(declare-fun m!4826531 () Bool)

(assert (=> b!4241086 m!4826531))

(declare-fun b!4241102 () Bool)

(declare-fun e!2633740 () Bool)

(declare-fun tp!1299961 () Bool)

(assert (=> b!4241102 (= e!2633740 tp!1299961)))

(declare-fun b!4241100 () Bool)

(assert (=> b!4241100 (= e!2633740 tp_is_empty!22655)))

(assert (=> b!4240846 (= tp!1299835 e!2633740)))

(declare-fun b!4241101 () Bool)

(declare-fun tp!1299960 () Bool)

(declare-fun tp!1299958 () Bool)

(assert (=> b!4241101 (= e!2633740 (and tp!1299960 tp!1299958))))

(declare-fun b!4241103 () Bool)

(declare-fun tp!1299962 () Bool)

(declare-fun tp!1299959 () Bool)

(assert (=> b!4241103 (= e!2633740 (and tp!1299962 tp!1299959))))

(assert (= (and b!4240846 (is-ElementMatch!12832 (regex!7927 (rule!11055 (h!52311 addTokens!17))))) b!4241100))

(assert (= (and b!4240846 (is-Concat!20990 (regex!7927 (rule!11055 (h!52311 addTokens!17))))) b!4241101))

(assert (= (and b!4240846 (is-Star!12832 (regex!7927 (rule!11055 (h!52311 addTokens!17))))) b!4241102))

(assert (= (and b!4240846 (is-Union!12832 (regex!7927 (rule!11055 (h!52311 addTokens!17))))) b!4241103))

(declare-fun b!4241106 () Bool)

(declare-fun e!2633741 () Bool)

(declare-fun tp!1299966 () Bool)

(assert (=> b!4241106 (= e!2633741 tp!1299966)))

(declare-fun b!4241104 () Bool)

(assert (=> b!4241104 (= e!2633741 tp_is_empty!22655)))

(assert (=> b!4240853 (= tp!1299838 e!2633741)))

(declare-fun b!4241105 () Bool)

(declare-fun tp!1299965 () Bool)

(declare-fun tp!1299963 () Bool)

(assert (=> b!4241105 (= e!2633741 (and tp!1299965 tp!1299963))))

(declare-fun b!4241107 () Bool)

(declare-fun tp!1299967 () Bool)

(declare-fun tp!1299964 () Bool)

(assert (=> b!4241107 (= e!2633741 (and tp!1299967 tp!1299964))))

(assert (= (and b!4240853 (is-ElementMatch!12832 (regex!7927 (rule!11055 (h!52311 tokens!581))))) b!4241104))

(assert (= (and b!4240853 (is-Concat!20990 (regex!7927 (rule!11055 (h!52311 tokens!581))))) b!4241105))

(assert (= (and b!4240853 (is-Star!12832 (regex!7927 (rule!11055 (h!52311 tokens!581))))) b!4241106))

(assert (= (and b!4240853 (is-Union!12832 (regex!7927 (rule!11055 (h!52311 tokens!581))))) b!4241107))

(declare-fun b!4241110 () Bool)

(declare-fun e!2633742 () Bool)

(declare-fun tp!1299971 () Bool)

(assert (=> b!4241110 (= e!2633742 tp!1299971)))

(declare-fun b!4241108 () Bool)

(assert (=> b!4241108 (= e!2633742 tp_is_empty!22655)))

(assert (=> b!4240854 (= tp!1299848 e!2633742)))

(declare-fun b!4241109 () Bool)

(declare-fun tp!1299970 () Bool)

(declare-fun tp!1299968 () Bool)

(assert (=> b!4241109 (= e!2633742 (and tp!1299970 tp!1299968))))

(declare-fun b!4241111 () Bool)

(declare-fun tp!1299972 () Bool)

(declare-fun tp!1299969 () Bool)

(assert (=> b!4241111 (= e!2633742 (and tp!1299972 tp!1299969))))

(assert (= (and b!4240854 (is-ElementMatch!12832 (regex!7927 (h!52310 rules!2932)))) b!4241108))

(assert (= (and b!4240854 (is-Concat!20990 (regex!7927 (h!52310 rules!2932)))) b!4241109))

(assert (= (and b!4240854 (is-Star!12832 (regex!7927 (h!52310 rules!2932)))) b!4241110))

(assert (= (and b!4240854 (is-Union!12832 (regex!7927 (h!52310 rules!2932)))) b!4241111))

(declare-fun b!4241112 () Bool)

(declare-fun e!2633743 () Bool)

(declare-fun tp!1299973 () Bool)

(assert (=> b!4241112 (= e!2633743 (and tp_is_empty!22655 tp!1299973))))

(assert (=> b!4240843 (= tp!1299842 e!2633743)))

(assert (= (and b!4240843 (is-Cons!46889 (t!350836 shorterInput!51))) b!4241112))

(declare-fun b_lambda!124881 () Bool)

(assert (= b_lambda!124877 (or (and b!4241084 b_free!125593 (= (toChars!10542 (transformation!7927 (rule!11055 (h!52311 (t!350838 addTokens!17))))) (toChars!10542 (transformation!7927 (rule!11055 (h!52311 addTokens!17)))))) (and b!4240861 b_free!125573 (= (toChars!10542 (transformation!7927 (rule!11055 (h!52311 tokens!581)))) (toChars!10542 (transformation!7927 (rule!11055 (h!52311 addTokens!17)))))) (and b!4241089 b_free!125597 (= (toChars!10542 (transformation!7927 (rule!11055 (h!52311 (t!350838 tokens!581))))) (toChars!10542 (transformation!7927 (rule!11055 (h!52311 addTokens!17)))))) (and b!4240852 b_free!125565) (and b!4241070 b_free!125589 (= (toChars!10542 (transformation!7927 (h!52310 (t!350837 rules!2932)))) (toChars!10542 (transformation!7927 (rule!11055 (h!52311 addTokens!17)))))) (and b!4240850 b_free!125569 (= (toChars!10542 (transformation!7927 (h!52310 rules!2932))) (toChars!10542 (transformation!7927 (rule!11055 (h!52311 addTokens!17)))))) b_lambda!124881)))

(declare-fun b_lambda!124883 () Bool)

(assert (= b_lambda!124879 (or (and b!4240861 b_free!125573) (and b!4240852 b_free!125565 (= (toChars!10542 (transformation!7927 (rule!11055 (h!52311 addTokens!17)))) (toChars!10542 (transformation!7927 (rule!11055 (h!52311 tokens!581)))))) (and b!4241070 b_free!125589 (= (toChars!10542 (transformation!7927 (h!52310 (t!350837 rules!2932)))) (toChars!10542 (transformation!7927 (rule!11055 (h!52311 tokens!581)))))) (and b!4241089 b_free!125597 (= (toChars!10542 (transformation!7927 (rule!11055 (h!52311 (t!350838 tokens!581))))) (toChars!10542 (transformation!7927 (rule!11055 (h!52311 tokens!581)))))) (and b!4241084 b_free!125593 (= (toChars!10542 (transformation!7927 (rule!11055 (h!52311 (t!350838 addTokens!17))))) (toChars!10542 (transformation!7927 (rule!11055 (h!52311 tokens!581)))))) (and b!4240850 b_free!125569 (= (toChars!10542 (transformation!7927 (h!52310 rules!2932))) (toChars!10542 (transformation!7927 (rule!11055 (h!52311 tokens!581)))))) b_lambda!124883)))

(push 1)

(assert (not d!1247737))

(assert (not b!4241044))

(assert b_and!335549)

(assert b_and!335509)

(assert (not b!4240981))

(assert (not b_lambda!124883))

(assert (not b_next!126301))

(assert (not tb!255023))

(assert (not b_next!126273))

(assert (not b!4241068))

(assert tp_is_empty!22655)

(assert (not b_next!126271))

(assert (not b!4241086))

(assert (not b!4241059))

(assert (not d!1247719))

(assert (not b_lambda!124881))

(assert (not d!1247739))

(assert b_and!335547)

(assert (not b!4240985))

(assert (not b_next!126291))

(assert (not b!4241058))

(assert (not d!1247729))

(assert (not b!4241085))

(assert (not b!4241032))

(assert (not d!1247713))

(assert (not b!4241088))

(assert (not b!4241051))

(assert (not b!4241087))

(assert (not b!4241029))

(assert (not b!4241109))

(assert (not d!1247743))

(assert (not b!4241052))

(assert b_and!335545)

(assert (not b!4241034))

(assert b_and!335543)

(assert (not b!4241057))

(assert (not b!4241112))

(assert (not d!1247725))

(assert (not b!4241082))

(assert (not b!4241105))

(assert (not b_next!126269))

(assert (not b!4241047))

(assert (not b!4240982))

(assert (not b!4241102))

(assert (not b!4240999))

(assert (not b!4241106))

(assert (not b!4241042))

(assert (not d!1247721))

(assert b_and!335539)

(assert (not b!4241036))

(assert (not b!4241081))

(assert (not b!4241028))

(assert b_and!335501)

(assert (not b!4241083))

(assert b_and!335541)

(assert (not b_next!126295))

(assert (not b!4241107))

(assert (not b_next!126299))

(assert (not b!4241103))

(assert (not d!1247749))

(assert (not b_next!126275))

(assert (not b!4241035))

(assert b_and!335537)

(assert (not b_next!126297))

(assert (not b!4240998))

(assert (not b!4241023))

(assert (not b!4240955))

(assert (not b!4241022))

(assert (not b!4240957))

(assert (not b!4241002))

(assert (not b!4241069))

(assert (not b!4240995))

(assert (not d!1247717))

(assert (not b!4241111))

(assert (not b!4240954))

(assert (not b_next!126277))

(assert b_and!335553)

(assert (not b!4241110))

(assert b_and!335505)

(assert b_and!335551)

(assert (not b!4241050))

(assert (not b!4241030))

(assert (not tb!255017))

(assert (not b_next!126267))

(assert (not b_next!126293))

(assert (not b!4240996))

(assert (not b!4241101))

(check-sat)

(pop 1)

(push 1)

(assert b_and!335545)

(assert b_and!335549)

(assert b_and!335543)

(assert (not b_next!126269))

(assert b_and!335539)

(assert b_and!335509)

(assert b_and!335501)

(assert (not b_next!126299))

(assert (not b_next!126297))

(assert b_and!335551)

(assert (not b_next!126301))

(assert (not b_next!126273))

(assert (not b_next!126271))

(assert b_and!335547)

(assert (not b_next!126291))

(assert b_and!335541)

(assert (not b_next!126295))

(assert (not b_next!126275))

(assert b_and!335537)

(assert (not b_next!126277))

(assert b_and!335553)

(assert b_and!335505)

(assert (not b_next!126267))

(assert (not b_next!126293))

(check-sat)

(pop 1)

