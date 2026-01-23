; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14598 () Bool)

(assert start!14598)

(declare-fun b!139196 () Bool)

(declare-fun b_free!4347 () Bool)

(declare-fun b_next!4347 () Bool)

(assert (=> b!139196 (= b_free!4347 (not b_next!4347))))

(declare-fun tp!73113 () Bool)

(declare-fun b_and!6589 () Bool)

(assert (=> b!139196 (= tp!73113 b_and!6589)))

(declare-fun b_free!4349 () Bool)

(declare-fun b_next!4349 () Bool)

(assert (=> b!139196 (= b_free!4349 (not b_next!4349))))

(declare-fun tp!73109 () Bool)

(declare-fun b_and!6591 () Bool)

(assert (=> b!139196 (= tp!73109 b_and!6591)))

(declare-fun b!139209 () Bool)

(declare-fun b_free!4351 () Bool)

(declare-fun b_next!4351 () Bool)

(assert (=> b!139209 (= b_free!4351 (not b_next!4351))))

(declare-fun tp!73106 () Bool)

(declare-fun b_and!6593 () Bool)

(assert (=> b!139209 (= tp!73106 b_and!6593)))

(declare-fun b_free!4353 () Bool)

(declare-fun b_next!4353 () Bool)

(assert (=> b!139209 (= b_free!4353 (not b_next!4353))))

(declare-fun tp!73108 () Bool)

(declare-fun b_and!6595 () Bool)

(assert (=> b!139209 (= tp!73108 b_and!6595)))

(declare-fun b_free!4355 () Bool)

(declare-fun b_next!4355 () Bool)

(assert (=> start!14598 (= b_free!4355 (not b_next!4355))))

(declare-fun tp!73105 () Bool)

(declare-fun b_and!6597 () Bool)

(assert (=> start!14598 (= tp!73105 b_and!6597)))

(declare-fun b!139210 () Bool)

(declare-fun b_free!4357 () Bool)

(declare-fun b_next!4357 () Bool)

(assert (=> b!139210 (= b_free!4357 (not b_next!4357))))

(declare-fun tp!73111 () Bool)

(declare-fun b_and!6599 () Bool)

(assert (=> b!139210 (= tp!73111 b_and!6599)))

(declare-fun b_free!4359 () Bool)

(declare-fun b_next!4359 () Bool)

(assert (=> b!139210 (= b_free!4359 (not b_next!4359))))

(declare-fun tp!73110 () Bool)

(declare-fun b_and!6601 () Bool)

(assert (=> b!139210 (= tp!73110 b_and!6601)))

(declare-fun b!139192 () Bool)

(declare-fun res!64878 () Bool)

(declare-fun e!81698 () Bool)

(assert (=> b!139192 (=> (not res!64878) (not e!81698))))

(declare-datatypes ((List!2369 0))(
  ( (Nil!2359) (Cons!2359 (h!7756 (_ BitVec 16)) (t!23095 List!2369)) )
))
(declare-datatypes ((TokenValue!415 0))(
  ( (FloatLiteralValue!830 (text!3350 List!2369)) (TokenValueExt!414 (__x!2319 Int)) (Broken!2075 (value!15490 List!2369)) (Object!424) (End!415) (Def!415) (Underscore!415) (Match!415) (Else!415) (Error!415) (Case!415) (If!415) (Extends!415) (Abstract!415) (Class!415) (Val!415) (DelimiterValue!830 (del!475 List!2369)) (KeywordValue!421 (value!15491 List!2369)) (CommentValue!830 (value!15492 List!2369)) (WhitespaceValue!830 (value!15493 List!2369)) (IndentationValue!415 (value!15494 List!2369)) (String!3154) (Int32!415) (Broken!2076 (value!15495 List!2369)) (Boolean!416) (Unit!1799) (OperatorValue!418 (op!475 List!2369)) (IdentifierValue!830 (value!15496 List!2369)) (IdentifierValue!831 (value!15497 List!2369)) (WhitespaceValue!831 (value!15498 List!2369)) (True!830) (False!830) (Broken!2077 (value!15499 List!2369)) (Broken!2078 (value!15500 List!2369)) (True!831) (RightBrace!415) (RightBracket!415) (Colon!415) (Null!415) (Comma!415) (LeftBracket!415) (False!831) (LeftBrace!415) (ImaginaryLiteralValue!415 (text!3351 List!2369)) (StringLiteralValue!1245 (value!15501 List!2369)) (EOFValue!415 (value!15502 List!2369)) (IdentValue!415 (value!15503 List!2369)) (DelimiterValue!831 (value!15504 List!2369)) (DedentValue!415 (value!15505 List!2369)) (NewLineValue!415 (value!15506 List!2369)) (IntegerValue!1245 (value!15507 (_ BitVec 32)) (text!3352 List!2369)) (IntegerValue!1246 (value!15508 Int) (text!3353 List!2369)) (Times!415) (Or!415) (Equal!415) (Minus!415) (Broken!2079 (value!15509 List!2369)) (And!415) (Div!415) (LessEqual!415) (Mod!415) (Concat!1032) (Not!415) (Plus!415) (SpaceValue!415 (value!15510 List!2369)) (IntegerValue!1247 (value!15511 Int) (text!3354 List!2369)) (StringLiteralValue!1246 (text!3355 List!2369)) (FloatLiteralValue!831 (text!3356 List!2369)) (BytesLiteralValue!415 (value!15512 List!2369)) (CommentValue!831 (value!15513 List!2369)) (StringLiteralValue!1247 (value!15514 List!2369)) (ErrorTokenValue!415 (msg!476 List!2369)) )
))
(declare-datatypes ((C!2156 0))(
  ( (C!2157 (val!964 Int)) )
))
(declare-datatypes ((List!2370 0))(
  ( (Nil!2360) (Cons!2360 (h!7757 C!2156) (t!23096 List!2370)) )
))
(declare-datatypes ((IArray!1247 0))(
  ( (IArray!1248 (innerList!681 List!2370)) )
))
(declare-datatypes ((Conc!623 0))(
  ( (Node!623 (left!1806 Conc!623) (right!2136 Conc!623) (csize!1476 Int) (cheight!834 Int)) (Leaf!1159 (xs!3218 IArray!1247) (csize!1477 Int)) (Empty!623) )
))
(declare-datatypes ((BalanceConc!1254 0))(
  ( (BalanceConc!1255 (c!29142 Conc!623)) )
))
(declare-datatypes ((TokenValueInjection!602 0))(
  ( (TokenValueInjection!603 (toValue!1004 Int) (toChars!863 Int)) )
))
(declare-datatypes ((Regex!617 0))(
  ( (ElementMatch!617 (c!29143 C!2156)) (Concat!1033 (regOne!1746 Regex!617) (regTwo!1746 Regex!617)) (EmptyExpr!617) (Star!617 (reg!946 Regex!617)) (EmptyLang!617) (Union!617 (regOne!1747 Regex!617) (regTwo!1747 Regex!617)) )
))
(declare-datatypes ((String!3155 0))(
  ( (String!3156 (value!15515 String)) )
))
(declare-datatypes ((Rule!586 0))(
  ( (Rule!587 (regex!393 Regex!617) (tag!571 String!3155) (isSeparator!393 Bool) (transformation!393 TokenValueInjection!602)) )
))
(declare-datatypes ((List!2371 0))(
  ( (Nil!2361) (Cons!2361 (h!7758 Rule!586) (t!23097 List!2371)) )
))
(declare-fun rules!4268 () List!2371)

(declare-fun p!3028 () Int)

(declare-datatypes ((Token!530 0))(
  ( (Token!531 (value!15516 TokenValue!415) (rule!900 Rule!586) (size!2083 Int) (originalCharacters!436 List!2370)) )
))
(declare-datatypes ((List!2372 0))(
  ( (Nil!2362) (Cons!2362 (h!7759 Token!530) (t!23098 List!2372)) )
))
(declare-fun l1!3130 () List!2372)

(declare-fun l2!3099 () List!2372)

(declare-fun dynLambda!781 (Int Token!530 Token!530 List!2371) Bool)

(declare-fun last!29 (List!2372) Token!530)

(declare-fun head!554 (List!2372) Token!530)

(assert (=> b!139192 (= res!64878 (dynLambda!781 p!3028 (last!29 l1!3130) (head!554 l2!3099) rules!4268))))

(declare-fun tp!73118 () Bool)

(declare-fun b!139193 () Bool)

(declare-fun e!81697 () Bool)

(declare-fun e!81693 () Bool)

(declare-fun inv!21 (TokenValue!415) Bool)

(assert (=> b!139193 (= e!81693 (and (inv!21 (value!15516 (h!7759 l2!3099))) e!81697 tp!73118))))

(declare-fun b!139194 () Bool)

(declare-fun res!64875 () Bool)

(assert (=> b!139194 (=> (not res!64875) (not e!81698))))

(declare-datatypes ((LexerInterface!281 0))(
  ( (LexerInterfaceExt!278 (__x!2320 Int)) (Lexer!279) )
))
(declare-fun thiss!27322 () LexerInterface!281)

(declare-fun tokensListTwoByTwoPredicateList!20 (LexerInterface!281 List!2372 List!2371 Int) Bool)

(assert (=> b!139194 (= res!64875 (tokensListTwoByTwoPredicateList!20 thiss!27322 l1!3130 rules!4268 p!3028))))

(declare-fun b!139195 () Bool)

(declare-fun res!64874 () Bool)

(assert (=> b!139195 (=> (not res!64874) (not e!81698))))

(get-info :version)

(assert (=> b!139195 (= res!64874 ((_ is Cons!2362) l1!3130))))

(declare-fun e!81706 () Bool)

(assert (=> b!139196 (= e!81706 (and tp!73113 tp!73109))))

(declare-fun b!139197 () Bool)

(declare-fun e!81696 () Bool)

(declare-fun tp!73112 () Bool)

(declare-fun e!81703 () Bool)

(declare-fun inv!3106 (Token!530) Bool)

(assert (=> b!139197 (= e!81696 (and (inv!3106 (h!7759 l1!3130)) e!81703 tp!73112))))

(declare-fun res!64880 () Bool)

(assert (=> start!14598 (=> (not res!64880) (not e!81698))))

(assert (=> start!14598 (= res!64880 ((_ is Lexer!279) thiss!27322))))

(assert (=> start!14598 e!81698))

(assert (=> start!14598 true))

(declare-fun e!81704 () Bool)

(assert (=> start!14598 e!81704))

(assert (=> start!14598 tp!73105))

(assert (=> start!14598 e!81696))

(declare-fun e!81705 () Bool)

(assert (=> start!14598 e!81705))

(declare-fun b!139198 () Bool)

(declare-fun res!64876 () Bool)

(assert (=> b!139198 (=> (not res!64876) (not e!81698))))

(declare-fun isEmpty!902 (List!2372) Bool)

(assert (=> b!139198 (= res!64876 (not (isEmpty!902 l1!3130)))))

(declare-fun b!139199 () Bool)

(declare-fun res!64881 () Bool)

(assert (=> b!139199 (=> (not res!64881) (not e!81698))))

(assert (=> b!139199 (= res!64881 (not (isEmpty!902 l2!3099)))))

(declare-fun b!139200 () Bool)

(declare-fun res!64879 () Bool)

(assert (=> b!139200 (=> (not res!64879) (not e!81698))))

(assert (=> b!139200 (= res!64879 (tokensListTwoByTwoPredicateList!20 thiss!27322 l2!3099 rules!4268 p!3028))))

(declare-fun b!139201 () Bool)

(declare-fun tp!73116 () Bool)

(declare-fun e!81695 () Bool)

(declare-fun e!81692 () Bool)

(declare-fun inv!3103 (String!3155) Bool)

(declare-fun inv!3107 (TokenValueInjection!602) Bool)

(assert (=> b!139201 (= e!81692 (and tp!73116 (inv!3103 (tag!571 (h!7758 rules!4268))) (inv!3107 (transformation!393 (h!7758 rules!4268))) e!81695))))

(declare-fun tp!73115 () Bool)

(declare-fun b!139202 () Bool)

(assert (=> b!139202 (= e!81697 (and tp!73115 (inv!3103 (tag!571 (rule!900 (h!7759 l2!3099)))) (inv!3107 (transformation!393 (rule!900 (h!7759 l2!3099)))) e!81706))))

(declare-fun b!139203 () Bool)

(declare-fun tp!73107 () Bool)

(assert (=> b!139203 (= e!81705 (and (inv!3106 (h!7759 l2!3099)) e!81693 tp!73107))))

(declare-fun b!139204 () Bool)

(declare-fun res!64877 () Bool)

(assert (=> b!139204 (=> (not res!64877) (not e!81698))))

(assert (=> b!139204 (= res!64877 (not (isEmpty!902 (t!23098 l1!3130))))))

(declare-fun b!139205 () Bool)

(declare-fun e!81700 () Bool)

(declare-fun e!81701 () Bool)

(declare-fun tp!73119 () Bool)

(assert (=> b!139205 (= e!81700 (and tp!73119 (inv!3103 (tag!571 (rule!900 (h!7759 l1!3130)))) (inv!3107 (transformation!393 (rule!900 (h!7759 l1!3130)))) e!81701))))

(declare-fun b!139206 () Bool)

(declare-fun tp!73114 () Bool)

(assert (=> b!139206 (= e!81704 (and e!81692 tp!73114))))

(declare-fun b!139207 () Bool)

(assert (=> b!139207 (= e!81698 (not (tokensListTwoByTwoPredicateList!20 thiss!27322 (t!23098 l1!3130) rules!4268 p!3028)))))

(declare-fun tp!73117 () Bool)

(declare-fun b!139208 () Bool)

(assert (=> b!139208 (= e!81703 (and (inv!21 (value!15516 (h!7759 l1!3130))) e!81700 tp!73117))))

(assert (=> b!139209 (= e!81701 (and tp!73106 tp!73108))))

(assert (=> b!139210 (= e!81695 (and tp!73111 tp!73110))))

(assert (= (and start!14598 res!64880) b!139194))

(assert (= (and b!139194 res!64875) b!139200))

(assert (= (and b!139200 res!64879) b!139198))

(assert (= (and b!139198 res!64876) b!139199))

(assert (= (and b!139199 res!64881) b!139192))

(assert (= (and b!139192 res!64878) b!139195))

(assert (= (and b!139195 res!64874) b!139204))

(assert (= (and b!139204 res!64877) b!139207))

(assert (= b!139201 b!139210))

(assert (= b!139206 b!139201))

(assert (= (and start!14598 ((_ is Cons!2361) rules!4268)) b!139206))

(assert (= b!139205 b!139209))

(assert (= b!139208 b!139205))

(assert (= b!139197 b!139208))

(assert (= (and start!14598 ((_ is Cons!2362) l1!3130)) b!139197))

(assert (= b!139202 b!139196))

(assert (= b!139193 b!139202))

(assert (= b!139203 b!139193))

(assert (= (and start!14598 ((_ is Cons!2362) l2!3099)) b!139203))

(declare-fun b_lambda!1841 () Bool)

(assert (=> (not b_lambda!1841) (not b!139192)))

(declare-fun t!23094 () Bool)

(declare-fun tb!3807 () Bool)

(assert (=> (and start!14598 (= p!3028 p!3028) t!23094) tb!3807))

(declare-fun result!5938 () Bool)

(assert (=> tb!3807 (= result!5938 true)))

(assert (=> b!139192 t!23094))

(declare-fun b_and!6603 () Bool)

(assert (= b_and!6597 (and (=> t!23094 result!5938) b_and!6603)))

(declare-fun m!122761 () Bool)

(assert (=> b!139202 m!122761))

(declare-fun m!122763 () Bool)

(assert (=> b!139202 m!122763))

(declare-fun m!122765 () Bool)

(assert (=> b!139200 m!122765))

(declare-fun m!122767 () Bool)

(assert (=> b!139199 m!122767))

(declare-fun m!122769 () Bool)

(assert (=> b!139198 m!122769))

(declare-fun m!122771 () Bool)

(assert (=> b!139207 m!122771))

(declare-fun m!122773 () Bool)

(assert (=> b!139203 m!122773))

(declare-fun m!122775 () Bool)

(assert (=> b!139201 m!122775))

(declare-fun m!122777 () Bool)

(assert (=> b!139201 m!122777))

(declare-fun m!122779 () Bool)

(assert (=> b!139205 m!122779))

(declare-fun m!122781 () Bool)

(assert (=> b!139205 m!122781))

(declare-fun m!122783 () Bool)

(assert (=> b!139197 m!122783))

(declare-fun m!122785 () Bool)

(assert (=> b!139208 m!122785))

(declare-fun m!122787 () Bool)

(assert (=> b!139193 m!122787))

(declare-fun m!122789 () Bool)

(assert (=> b!139204 m!122789))

(declare-fun m!122791 () Bool)

(assert (=> b!139194 m!122791))

(declare-fun m!122793 () Bool)

(assert (=> b!139192 m!122793))

(declare-fun m!122795 () Bool)

(assert (=> b!139192 m!122795))

(assert (=> b!139192 m!122793))

(assert (=> b!139192 m!122795))

(declare-fun m!122797 () Bool)

(assert (=> b!139192 m!122797))

(check-sat b_and!6601 (not b_next!4347) (not b!139194) (not b!139199) b_and!6599 (not b_next!4357) (not b!139200) b_and!6593 b_and!6591 (not b!139208) (not b!139205) b_and!6603 b_and!6595 (not b!139202) (not b!139201) (not b!139197) (not b_next!4353) (not b_next!4351) (not b!139198) (not b!139193) (not b_next!4349) (not b_next!4355) b_and!6589 (not b_next!4359) (not b_lambda!1841) (not b!139206) (not b!139204) (not b!139203) (not b!139207) (not b!139192))
(check-sat b_and!6601 b_and!6591 b_and!6603 b_and!6595 (not b_next!4347) b_and!6599 (not b_next!4357) (not b_next!4359) b_and!6593 (not b_next!4353) (not b_next!4351) (not b_next!4349) (not b_next!4355) b_and!6589)
(get-model)

(declare-fun b_lambda!1845 () Bool)

(assert (= b_lambda!1841 (or (and start!14598 b_free!4355) b_lambda!1845)))

(check-sat b_and!6601 (not b_next!4347) (not b!139194) (not b!139199) b_and!6599 (not b_next!4357) (not b_next!4359) (not b!139200) b_and!6593 b_and!6591 (not b!139208) (not b!139205) b_and!6603 b_and!6595 (not b!139202) (not b!139201) (not b!139197) (not b_next!4353) (not b_next!4351) (not b!139198) (not b!139193) (not b_next!4349) (not b_next!4355) b_and!6589 (not b!139206) (not b!139204) (not b_lambda!1845) (not b!139203) (not b!139207) (not b!139192))
(check-sat b_and!6601 b_and!6591 b_and!6603 b_and!6595 (not b_next!4347) b_and!6599 (not b_next!4357) (not b_next!4359) b_and!6593 (not b_next!4353) (not b_next!4351) (not b_next!4349) (not b_next!4355) b_and!6589)
(get-model)

(declare-fun d!33082 () Bool)

(assert (=> d!33082 (= (isEmpty!902 (t!23098 l1!3130)) ((_ is Nil!2362) (t!23098 l1!3130)))))

(assert (=> b!139204 d!33082))

(declare-fun b!139244 () Bool)

(declare-fun e!81732 () Bool)

(declare-fun inv!16 (TokenValue!415) Bool)

(assert (=> b!139244 (= e!81732 (inv!16 (value!15516 (h!7759 l2!3099))))))

(declare-fun b!139245 () Bool)

(declare-fun e!81733 () Bool)

(assert (=> b!139245 (= e!81732 e!81733)))

(declare-fun c!29154 () Bool)

(assert (=> b!139245 (= c!29154 ((_ is IntegerValue!1246) (value!15516 (h!7759 l2!3099))))))

(declare-fun b!139246 () Bool)

(declare-fun res!64909 () Bool)

(declare-fun e!81731 () Bool)

(assert (=> b!139246 (=> res!64909 e!81731)))

(assert (=> b!139246 (= res!64909 (not ((_ is IntegerValue!1247) (value!15516 (h!7759 l2!3099)))))))

(assert (=> b!139246 (= e!81733 e!81731)))

(declare-fun d!33084 () Bool)

(declare-fun c!29155 () Bool)

(assert (=> d!33084 (= c!29155 ((_ is IntegerValue!1245) (value!15516 (h!7759 l2!3099))))))

(assert (=> d!33084 (= (inv!21 (value!15516 (h!7759 l2!3099))) e!81732)))

(declare-fun b!139247 () Bool)

(declare-fun inv!17 (TokenValue!415) Bool)

(assert (=> b!139247 (= e!81733 (inv!17 (value!15516 (h!7759 l2!3099))))))

(declare-fun b!139248 () Bool)

(declare-fun inv!15 (TokenValue!415) Bool)

(assert (=> b!139248 (= e!81731 (inv!15 (value!15516 (h!7759 l2!3099))))))

(assert (= (and d!33084 c!29155) b!139244))

(assert (= (and d!33084 (not c!29155)) b!139245))

(assert (= (and b!139245 c!29154) b!139247))

(assert (= (and b!139245 (not c!29154)) b!139246))

(assert (= (and b!139246 (not res!64909)) b!139248))

(declare-fun m!122813 () Bool)

(assert (=> b!139244 m!122813))

(declare-fun m!122815 () Bool)

(assert (=> b!139247 m!122815))

(declare-fun m!122817 () Bool)

(assert (=> b!139248 m!122817))

(assert (=> b!139193 d!33084))

(declare-fun d!33090 () Bool)

(declare-fun res!64917 () Bool)

(declare-fun e!81741 () Bool)

(assert (=> d!33090 (=> res!64917 e!81741)))

(assert (=> d!33090 (= res!64917 (or (not ((_ is Cons!2362) l1!3130)) (not ((_ is Cons!2362) (t!23098 l1!3130)))))))

(assert (=> d!33090 (= (tokensListTwoByTwoPredicateList!20 thiss!27322 l1!3130 rules!4268 p!3028) e!81741)))

(declare-fun b!139256 () Bool)

(declare-fun e!81742 () Bool)

(assert (=> b!139256 (= e!81741 e!81742)))

(declare-fun res!64918 () Bool)

(assert (=> b!139256 (=> (not res!64918) (not e!81742))))

(assert (=> b!139256 (= res!64918 (dynLambda!781 p!3028 (h!7759 l1!3130) (h!7759 (t!23098 l1!3130)) rules!4268))))

(declare-fun b!139257 () Bool)

(assert (=> b!139257 (= e!81742 (tokensListTwoByTwoPredicateList!20 thiss!27322 (Cons!2362 (h!7759 (t!23098 l1!3130)) (t!23098 (t!23098 l1!3130))) rules!4268 p!3028))))

(assert (= (and d!33090 (not res!64917)) b!139256))

(assert (= (and b!139256 res!64918) b!139257))

(declare-fun b_lambda!1851 () Bool)

(assert (=> (not b_lambda!1851) (not b!139256)))

(declare-fun t!23104 () Bool)

(declare-fun tb!3813 () Bool)

(assert (=> (and start!14598 (= p!3028 p!3028) t!23104) tb!3813))

(declare-fun result!5944 () Bool)

(assert (=> tb!3813 (= result!5944 true)))

(assert (=> b!139256 t!23104))

(declare-fun b_and!6609 () Bool)

(assert (= b_and!6603 (and (=> t!23104 result!5944) b_and!6609)))

(declare-fun m!122823 () Bool)

(assert (=> b!139256 m!122823))

(declare-fun m!122825 () Bool)

(assert (=> b!139257 m!122825))

(assert (=> b!139194 d!33090))

(declare-fun d!33094 () Bool)

(declare-fun lt!41089 () Token!530)

(declare-fun contains!375 (List!2372 Token!530) Bool)

(assert (=> d!33094 (contains!375 l1!3130 lt!41089)))

(declare-fun e!81752 () Token!530)

(assert (=> d!33094 (= lt!41089 e!81752)))

(declare-fun c!29158 () Bool)

(assert (=> d!33094 (= c!29158 (and ((_ is Cons!2362) l1!3130) ((_ is Nil!2362) (t!23098 l1!3130))))))

(assert (=> d!33094 (not (isEmpty!902 l1!3130))))

(assert (=> d!33094 (= (last!29 l1!3130) lt!41089)))

(declare-fun b!139274 () Bool)

(assert (=> b!139274 (= e!81752 (h!7759 l1!3130))))

(declare-fun b!139275 () Bool)

(assert (=> b!139275 (= e!81752 (last!29 (t!23098 l1!3130)))))

(assert (= (and d!33094 c!29158) b!139274))

(assert (= (and d!33094 (not c!29158)) b!139275))

(declare-fun m!122843 () Bool)

(assert (=> d!33094 m!122843))

(assert (=> d!33094 m!122769))

(declare-fun m!122845 () Bool)

(assert (=> b!139275 m!122845))

(assert (=> b!139192 d!33094))

(declare-fun d!33102 () Bool)

(assert (=> d!33102 (= (head!554 l2!3099) (h!7759 l2!3099))))

(assert (=> b!139192 d!33102))

(declare-fun d!33104 () Bool)

(declare-fun res!64934 () Bool)

(declare-fun e!81762 () Bool)

(assert (=> d!33104 (=> (not res!64934) (not e!81762))))

(declare-fun isEmpty!904 (List!2370) Bool)

(assert (=> d!33104 (= res!64934 (not (isEmpty!904 (originalCharacters!436 (h!7759 l2!3099)))))))

(assert (=> d!33104 (= (inv!3106 (h!7759 l2!3099)) e!81762)))

(declare-fun b!139291 () Bool)

(declare-fun res!64935 () Bool)

(assert (=> b!139291 (=> (not res!64935) (not e!81762))))

(declare-fun list!831 (BalanceConc!1254) List!2370)

(declare-fun dynLambda!783 (Int TokenValue!415) BalanceConc!1254)

(assert (=> b!139291 (= res!64935 (= (originalCharacters!436 (h!7759 l2!3099)) (list!831 (dynLambda!783 (toChars!863 (transformation!393 (rule!900 (h!7759 l2!3099)))) (value!15516 (h!7759 l2!3099))))))))

(declare-fun b!139292 () Bool)

(declare-fun size!2085 (List!2370) Int)

(assert (=> b!139292 (= e!81762 (= (size!2083 (h!7759 l2!3099)) (size!2085 (originalCharacters!436 (h!7759 l2!3099)))))))

(assert (= (and d!33104 res!64934) b!139291))

(assert (= (and b!139291 res!64935) b!139292))

(declare-fun b_lambda!1859 () Bool)

(assert (=> (not b_lambda!1859) (not b!139291)))

(declare-fun t!23120 () Bool)

(declare-fun tb!3829 () Bool)

(assert (=> (and b!139196 (= (toChars!863 (transformation!393 (rule!900 (h!7759 l2!3099)))) (toChars!863 (transformation!393 (rule!900 (h!7759 l2!3099))))) t!23120) tb!3829))

(declare-fun b!139303 () Bool)

(declare-fun e!81769 () Bool)

(declare-fun tp!73126 () Bool)

(declare-fun inv!3110 (Conc!623) Bool)

(assert (=> b!139303 (= e!81769 (and (inv!3110 (c!29142 (dynLambda!783 (toChars!863 (transformation!393 (rule!900 (h!7759 l2!3099)))) (value!15516 (h!7759 l2!3099))))) tp!73126))))

(declare-fun result!5962 () Bool)

(declare-fun inv!3111 (BalanceConc!1254) Bool)

(assert (=> tb!3829 (= result!5962 (and (inv!3111 (dynLambda!783 (toChars!863 (transformation!393 (rule!900 (h!7759 l2!3099)))) (value!15516 (h!7759 l2!3099)))) e!81769))))

(assert (= tb!3829 b!139303))

(declare-fun m!122877 () Bool)

(assert (=> b!139303 m!122877))

(declare-fun m!122879 () Bool)

(assert (=> tb!3829 m!122879))

(assert (=> b!139291 t!23120))

(declare-fun b_and!6625 () Bool)

(assert (= b_and!6591 (and (=> t!23120 result!5962) b_and!6625)))

(declare-fun t!23122 () Bool)

(declare-fun tb!3831 () Bool)

(assert (=> (and b!139209 (= (toChars!863 (transformation!393 (rule!900 (h!7759 l1!3130)))) (toChars!863 (transformation!393 (rule!900 (h!7759 l2!3099))))) t!23122) tb!3831))

(declare-fun result!5968 () Bool)

(assert (= result!5968 result!5962))

(assert (=> b!139291 t!23122))

(declare-fun b_and!6627 () Bool)

(assert (= b_and!6595 (and (=> t!23122 result!5968) b_and!6627)))

(declare-fun t!23124 () Bool)

(declare-fun tb!3833 () Bool)

(assert (=> (and b!139210 (= (toChars!863 (transformation!393 (h!7758 rules!4268))) (toChars!863 (transformation!393 (rule!900 (h!7759 l2!3099))))) t!23124) tb!3833))

(declare-fun result!5970 () Bool)

(assert (= result!5970 result!5962))

(assert (=> b!139291 t!23124))

(declare-fun b_and!6629 () Bool)

(assert (= b_and!6601 (and (=> t!23124 result!5970) b_and!6629)))

(declare-fun m!122881 () Bool)

(assert (=> d!33104 m!122881))

(declare-fun m!122883 () Bool)

(assert (=> b!139291 m!122883))

(assert (=> b!139291 m!122883))

(declare-fun m!122885 () Bool)

(assert (=> b!139291 m!122885))

(declare-fun m!122887 () Bool)

(assert (=> b!139292 m!122887))

(assert (=> b!139203 d!33104))

(declare-fun d!33124 () Bool)

(assert (=> d!33124 (= (inv!3103 (tag!571 (h!7758 rules!4268))) (= (mod (str.len (value!15515 (tag!571 (h!7758 rules!4268)))) 2) 0))))

(assert (=> b!139201 d!33124))

(declare-fun d!33126 () Bool)

(declare-fun res!64940 () Bool)

(declare-fun e!81796 () Bool)

(assert (=> d!33126 (=> (not res!64940) (not e!81796))))

(declare-fun semiInverseModEq!129 (Int Int) Bool)

(assert (=> d!33126 (= res!64940 (semiInverseModEq!129 (toChars!863 (transformation!393 (h!7758 rules!4268))) (toValue!1004 (transformation!393 (h!7758 rules!4268)))))))

(assert (=> d!33126 (= (inv!3107 (transformation!393 (h!7758 rules!4268))) e!81796)))

(declare-fun b!139336 () Bool)

(declare-fun equivClasses!112 (Int Int) Bool)

(assert (=> b!139336 (= e!81796 (equivClasses!112 (toChars!863 (transformation!393 (h!7758 rules!4268))) (toValue!1004 (transformation!393 (h!7758 rules!4268)))))))

(assert (= (and d!33126 res!64940) b!139336))

(declare-fun m!122897 () Bool)

(assert (=> d!33126 m!122897))

(declare-fun m!122899 () Bool)

(assert (=> b!139336 m!122899))

(assert (=> b!139201 d!33126))

(declare-fun d!33128 () Bool)

(assert (=> d!33128 (= (inv!3103 (tag!571 (rule!900 (h!7759 l2!3099)))) (= (mod (str.len (value!15515 (tag!571 (rule!900 (h!7759 l2!3099))))) 2) 0))))

(assert (=> b!139202 d!33128))

(declare-fun d!33130 () Bool)

(declare-fun res!64941 () Bool)

(declare-fun e!81798 () Bool)

(assert (=> d!33130 (=> (not res!64941) (not e!81798))))

(assert (=> d!33130 (= res!64941 (semiInverseModEq!129 (toChars!863 (transformation!393 (rule!900 (h!7759 l2!3099)))) (toValue!1004 (transformation!393 (rule!900 (h!7759 l2!3099))))))))

(assert (=> d!33130 (= (inv!3107 (transformation!393 (rule!900 (h!7759 l2!3099)))) e!81798)))

(declare-fun b!139341 () Bool)

(assert (=> b!139341 (= e!81798 (equivClasses!112 (toChars!863 (transformation!393 (rule!900 (h!7759 l2!3099)))) (toValue!1004 (transformation!393 (rule!900 (h!7759 l2!3099))))))))

(assert (= (and d!33130 res!64941) b!139341))

(declare-fun m!122901 () Bool)

(assert (=> d!33130 m!122901))

(declare-fun m!122903 () Bool)

(assert (=> b!139341 m!122903))

(assert (=> b!139202 d!33130))

(declare-fun d!33132 () Bool)

(declare-fun res!64942 () Bool)

(declare-fun e!81805 () Bool)

(assert (=> d!33132 (=> res!64942 e!81805)))

(assert (=> d!33132 (= res!64942 (or (not ((_ is Cons!2362) l2!3099)) (not ((_ is Cons!2362) (t!23098 l2!3099)))))))

(assert (=> d!33132 (= (tokensListTwoByTwoPredicateList!20 thiss!27322 l2!3099 rules!4268 p!3028) e!81805)))

(declare-fun b!139346 () Bool)

(declare-fun e!81806 () Bool)

(assert (=> b!139346 (= e!81805 e!81806)))

(declare-fun res!64943 () Bool)

(assert (=> b!139346 (=> (not res!64943) (not e!81806))))

(assert (=> b!139346 (= res!64943 (dynLambda!781 p!3028 (h!7759 l2!3099) (h!7759 (t!23098 l2!3099)) rules!4268))))

(declare-fun b!139347 () Bool)

(assert (=> b!139347 (= e!81806 (tokensListTwoByTwoPredicateList!20 thiss!27322 (Cons!2362 (h!7759 (t!23098 l2!3099)) (t!23098 (t!23098 l2!3099))) rules!4268 p!3028))))

(assert (= (and d!33132 (not res!64942)) b!139346))

(assert (= (and b!139346 res!64943) b!139347))

(declare-fun b_lambda!1861 () Bool)

(assert (=> (not b_lambda!1861) (not b!139346)))

(declare-fun t!23134 () Bool)

(declare-fun tb!3843 () Bool)

(assert (=> (and start!14598 (= p!3028 p!3028) t!23134) tb!3843))

(declare-fun result!5984 () Bool)

(assert (=> tb!3843 (= result!5984 true)))

(assert (=> b!139346 t!23134))

(declare-fun b_and!6639 () Bool)

(assert (= b_and!6609 (and (=> t!23134 result!5984) b_and!6639)))

(declare-fun m!122913 () Bool)

(assert (=> b!139346 m!122913))

(declare-fun m!122915 () Bool)

(assert (=> b!139347 m!122915))

(assert (=> b!139200 d!33132))

(declare-fun d!33134 () Bool)

(assert (=> d!33134 (= (isEmpty!902 l2!3099) ((_ is Nil!2362) l2!3099))))

(assert (=> b!139199 d!33134))

(declare-fun b!139356 () Bool)

(declare-fun e!81811 () Bool)

(assert (=> b!139356 (= e!81811 (inv!16 (value!15516 (h!7759 l1!3130))))))

(declare-fun b!139357 () Bool)

(declare-fun e!81812 () Bool)

(assert (=> b!139357 (= e!81811 e!81812)))

(declare-fun c!29164 () Bool)

(assert (=> b!139357 (= c!29164 ((_ is IntegerValue!1246) (value!15516 (h!7759 l1!3130))))))

(declare-fun b!139358 () Bool)

(declare-fun res!64944 () Bool)

(declare-fun e!81810 () Bool)

(assert (=> b!139358 (=> res!64944 e!81810)))

(assert (=> b!139358 (= res!64944 (not ((_ is IntegerValue!1247) (value!15516 (h!7759 l1!3130)))))))

(assert (=> b!139358 (= e!81812 e!81810)))

(declare-fun d!33136 () Bool)

(declare-fun c!29165 () Bool)

(assert (=> d!33136 (= c!29165 ((_ is IntegerValue!1245) (value!15516 (h!7759 l1!3130))))))

(assert (=> d!33136 (= (inv!21 (value!15516 (h!7759 l1!3130))) e!81811)))

(declare-fun b!139359 () Bool)

(assert (=> b!139359 (= e!81812 (inv!17 (value!15516 (h!7759 l1!3130))))))

(declare-fun b!139360 () Bool)

(assert (=> b!139360 (= e!81810 (inv!15 (value!15516 (h!7759 l1!3130))))))

(assert (= (and d!33136 c!29165) b!139356))

(assert (= (and d!33136 (not c!29165)) b!139357))

(assert (= (and b!139357 c!29164) b!139359))

(assert (= (and b!139357 (not c!29164)) b!139358))

(assert (= (and b!139358 (not res!64944)) b!139360))

(declare-fun m!122917 () Bool)

(assert (=> b!139356 m!122917))

(declare-fun m!122919 () Bool)

(assert (=> b!139359 m!122919))

(declare-fun m!122921 () Bool)

(assert (=> b!139360 m!122921))

(assert (=> b!139208 d!33136))

(declare-fun d!33138 () Bool)

(declare-fun res!64945 () Bool)

(declare-fun e!81817 () Bool)

(assert (=> d!33138 (=> (not res!64945) (not e!81817))))

(assert (=> d!33138 (= res!64945 (not (isEmpty!904 (originalCharacters!436 (h!7759 l1!3130)))))))

(assert (=> d!33138 (= (inv!3106 (h!7759 l1!3130)) e!81817)))

(declare-fun b!139363 () Bool)

(declare-fun res!64946 () Bool)

(assert (=> b!139363 (=> (not res!64946) (not e!81817))))

(assert (=> b!139363 (= res!64946 (= (originalCharacters!436 (h!7759 l1!3130)) (list!831 (dynLambda!783 (toChars!863 (transformation!393 (rule!900 (h!7759 l1!3130)))) (value!15516 (h!7759 l1!3130))))))))

(declare-fun b!139364 () Bool)

(assert (=> b!139364 (= e!81817 (= (size!2083 (h!7759 l1!3130)) (size!2085 (originalCharacters!436 (h!7759 l1!3130)))))))

(assert (= (and d!33138 res!64945) b!139363))

(assert (= (and b!139363 res!64946) b!139364))

(declare-fun b_lambda!1863 () Bool)

(assert (=> (not b_lambda!1863) (not b!139363)))

(declare-fun tb!3845 () Bool)

(declare-fun t!23136 () Bool)

(assert (=> (and b!139196 (= (toChars!863 (transformation!393 (rule!900 (h!7759 l2!3099)))) (toChars!863 (transformation!393 (rule!900 (h!7759 l1!3130))))) t!23136) tb!3845))

(declare-fun b!139367 () Bool)

(declare-fun e!81820 () Bool)

(declare-fun tp!73179 () Bool)

(assert (=> b!139367 (= e!81820 (and (inv!3110 (c!29142 (dynLambda!783 (toChars!863 (transformation!393 (rule!900 (h!7759 l1!3130)))) (value!15516 (h!7759 l1!3130))))) tp!73179))))

(declare-fun result!5988 () Bool)

(assert (=> tb!3845 (= result!5988 (and (inv!3111 (dynLambda!783 (toChars!863 (transformation!393 (rule!900 (h!7759 l1!3130)))) (value!15516 (h!7759 l1!3130)))) e!81820))))

(assert (= tb!3845 b!139367))

(declare-fun m!122923 () Bool)

(assert (=> b!139367 m!122923))

(declare-fun m!122925 () Bool)

(assert (=> tb!3845 m!122925))

(assert (=> b!139363 t!23136))

(declare-fun b_and!6641 () Bool)

(assert (= b_and!6625 (and (=> t!23136 result!5988) b_and!6641)))

(declare-fun t!23138 () Bool)

(declare-fun tb!3847 () Bool)

(assert (=> (and b!139209 (= (toChars!863 (transformation!393 (rule!900 (h!7759 l1!3130)))) (toChars!863 (transformation!393 (rule!900 (h!7759 l1!3130))))) t!23138) tb!3847))

(declare-fun result!5990 () Bool)

(assert (= result!5990 result!5988))

(assert (=> b!139363 t!23138))

(declare-fun b_and!6643 () Bool)

(assert (= b_and!6627 (and (=> t!23138 result!5990) b_and!6643)))

(declare-fun t!23140 () Bool)

(declare-fun tb!3849 () Bool)

(assert (=> (and b!139210 (= (toChars!863 (transformation!393 (h!7758 rules!4268))) (toChars!863 (transformation!393 (rule!900 (h!7759 l1!3130))))) t!23140) tb!3849))

(declare-fun result!5992 () Bool)

(assert (= result!5992 result!5988))

(assert (=> b!139363 t!23140))

(declare-fun b_and!6645 () Bool)

(assert (= b_and!6629 (and (=> t!23140 result!5992) b_and!6645)))

(declare-fun m!122927 () Bool)

(assert (=> d!33138 m!122927))

(declare-fun m!122929 () Bool)

(assert (=> b!139363 m!122929))

(assert (=> b!139363 m!122929))

(declare-fun m!122931 () Bool)

(assert (=> b!139363 m!122931))

(declare-fun m!122933 () Bool)

(assert (=> b!139364 m!122933))

(assert (=> b!139197 d!33138))

(declare-fun d!33140 () Bool)

(assert (=> d!33140 (= (isEmpty!902 l1!3130) ((_ is Nil!2362) l1!3130))))

(assert (=> b!139198 d!33140))

(declare-fun d!33142 () Bool)

(declare-fun res!64947 () Bool)

(declare-fun e!81825 () Bool)

(assert (=> d!33142 (=> res!64947 e!81825)))

(assert (=> d!33142 (= res!64947 (or (not ((_ is Cons!2362) (t!23098 l1!3130))) (not ((_ is Cons!2362) (t!23098 (t!23098 l1!3130))))))))

(assert (=> d!33142 (= (tokensListTwoByTwoPredicateList!20 thiss!27322 (t!23098 l1!3130) rules!4268 p!3028) e!81825)))

(declare-fun b!139371 () Bool)

(declare-fun e!81826 () Bool)

(assert (=> b!139371 (= e!81825 e!81826)))

(declare-fun res!64948 () Bool)

(assert (=> b!139371 (=> (not res!64948) (not e!81826))))

(assert (=> b!139371 (= res!64948 (dynLambda!781 p!3028 (h!7759 (t!23098 l1!3130)) (h!7759 (t!23098 (t!23098 l1!3130))) rules!4268))))

(declare-fun b!139372 () Bool)

(assert (=> b!139372 (= e!81826 (tokensListTwoByTwoPredicateList!20 thiss!27322 (Cons!2362 (h!7759 (t!23098 (t!23098 l1!3130))) (t!23098 (t!23098 (t!23098 l1!3130)))) rules!4268 p!3028))))

(assert (= (and d!33142 (not res!64947)) b!139371))

(assert (= (and b!139371 res!64948) b!139372))

(declare-fun b_lambda!1865 () Bool)

(assert (=> (not b_lambda!1865) (not b!139371)))

(declare-fun t!23146 () Bool)

(declare-fun tb!3855 () Bool)

(assert (=> (and start!14598 (= p!3028 p!3028) t!23146) tb!3855))

(declare-fun result!5998 () Bool)

(assert (=> tb!3855 (= result!5998 true)))

(assert (=> b!139371 t!23146))

(declare-fun b_and!6651 () Bool)

(assert (= b_and!6639 (and (=> t!23146 result!5998) b_and!6651)))

(declare-fun m!122939 () Bool)

(assert (=> b!139371 m!122939))

(declare-fun m!122941 () Bool)

(assert (=> b!139372 m!122941))

(assert (=> b!139207 d!33142))

(declare-fun d!33144 () Bool)

(assert (=> d!33144 (= (inv!3103 (tag!571 (rule!900 (h!7759 l1!3130)))) (= (mod (str.len (value!15515 (tag!571 (rule!900 (h!7759 l1!3130))))) 2) 0))))

(assert (=> b!139205 d!33144))

(declare-fun d!33146 () Bool)

(declare-fun res!64949 () Bool)

(declare-fun e!81828 () Bool)

(assert (=> d!33146 (=> (not res!64949) (not e!81828))))

(assert (=> d!33146 (= res!64949 (semiInverseModEq!129 (toChars!863 (transformation!393 (rule!900 (h!7759 l1!3130)))) (toValue!1004 (transformation!393 (rule!900 (h!7759 l1!3130))))))))

(assert (=> d!33146 (= (inv!3107 (transformation!393 (rule!900 (h!7759 l1!3130)))) e!81828)))

(declare-fun b!139377 () Bool)

(assert (=> b!139377 (= e!81828 (equivClasses!112 (toChars!863 (transformation!393 (rule!900 (h!7759 l1!3130)))) (toValue!1004 (transformation!393 (rule!900 (h!7759 l1!3130))))))))

(assert (= (and d!33146 res!64949) b!139377))

(declare-fun m!122943 () Bool)

(assert (=> d!33146 m!122943))

(declare-fun m!122945 () Bool)

(assert (=> b!139377 m!122945))

(assert (=> b!139205 d!33146))

(declare-fun b!139382 () Bool)

(declare-fun e!81831 () Bool)

(declare-fun tp_is_empty!1555 () Bool)

(declare-fun tp!73191 () Bool)

(assert (=> b!139382 (= e!81831 (and tp_is_empty!1555 tp!73191))))

(assert (=> b!139193 (= tp!73118 e!81831)))

(assert (= (and b!139193 ((_ is Cons!2360) (originalCharacters!436 (h!7759 l2!3099)))) b!139382))

(declare-fun b!139383 () Bool)

(declare-fun e!81832 () Bool)

(declare-fun tp!73192 () Bool)

(assert (=> b!139383 (= e!81832 (and tp_is_empty!1555 tp!73192))))

(assert (=> b!139208 (= tp!73117 e!81832)))

(assert (= (and b!139208 ((_ is Cons!2360) (originalCharacters!436 (h!7759 l1!3130)))) b!139383))

(declare-fun b!139397 () Bool)

(declare-fun b_free!4373 () Bool)

(declare-fun b_next!4373 () Bool)

(assert (=> b!139397 (= b_free!4373 (not b_next!4373))))

(declare-fun tp!73205 () Bool)

(declare-fun b_and!6653 () Bool)

(assert (=> b!139397 (= tp!73205 b_and!6653)))

(declare-fun b_free!4375 () Bool)

(declare-fun b_next!4375 () Bool)

(assert (=> b!139397 (= b_free!4375 (not b_next!4375))))

(declare-fun tb!3857 () Bool)

(declare-fun t!23148 () Bool)

(assert (=> (and b!139397 (= (toChars!863 (transformation!393 (rule!900 (h!7759 (t!23098 l1!3130))))) (toChars!863 (transformation!393 (rule!900 (h!7759 l2!3099))))) t!23148) tb!3857))

(declare-fun result!6004 () Bool)

(assert (= result!6004 result!5962))

(assert (=> b!139291 t!23148))

(declare-fun t!23150 () Bool)

(declare-fun tb!3859 () Bool)

(assert (=> (and b!139397 (= (toChars!863 (transformation!393 (rule!900 (h!7759 (t!23098 l1!3130))))) (toChars!863 (transformation!393 (rule!900 (h!7759 l1!3130))))) t!23150) tb!3859))

(declare-fun result!6006 () Bool)

(assert (= result!6006 result!5988))

(assert (=> b!139363 t!23150))

(declare-fun b_and!6655 () Bool)

(declare-fun tp!73204 () Bool)

(assert (=> b!139397 (= tp!73204 (and (=> t!23148 result!6004) (=> t!23150 result!6006) b_and!6655))))

(declare-fun e!81847 () Bool)

(declare-fun e!81849 () Bool)

(declare-fun b!139394 () Bool)

(declare-fun tp!73207 () Bool)

(assert (=> b!139394 (= e!81849 (and (inv!3106 (h!7759 (t!23098 l1!3130))) e!81847 tp!73207))))

(declare-fun e!81850 () Bool)

(assert (=> b!139397 (= e!81850 (and tp!73205 tp!73204))))

(assert (=> b!139197 (= tp!73112 e!81849)))

(declare-fun b!139396 () Bool)

(declare-fun tp!73203 () Bool)

(declare-fun e!81846 () Bool)

(assert (=> b!139396 (= e!81846 (and tp!73203 (inv!3103 (tag!571 (rule!900 (h!7759 (t!23098 l1!3130))))) (inv!3107 (transformation!393 (rule!900 (h!7759 (t!23098 l1!3130))))) e!81850))))

(declare-fun b!139395 () Bool)

(declare-fun tp!73206 () Bool)

(assert (=> b!139395 (= e!81847 (and (inv!21 (value!15516 (h!7759 (t!23098 l1!3130)))) e!81846 tp!73206))))

(assert (= b!139396 b!139397))

(assert (= b!139395 b!139396))

(assert (= b!139394 b!139395))

(assert (= (and b!139197 ((_ is Cons!2362) (t!23098 l1!3130))) b!139394))

(declare-fun m!122947 () Bool)

(assert (=> b!139394 m!122947))

(declare-fun m!122949 () Bool)

(assert (=> b!139396 m!122949))

(declare-fun m!122951 () Bool)

(assert (=> b!139396 m!122951))

(declare-fun m!122953 () Bool)

(assert (=> b!139395 m!122953))

(declare-fun b!139401 () Bool)

(declare-fun b_free!4377 () Bool)

(declare-fun b_next!4377 () Bool)

(assert (=> b!139401 (= b_free!4377 (not b_next!4377))))

(declare-fun tp!73210 () Bool)

(declare-fun b_and!6657 () Bool)

(assert (=> b!139401 (= tp!73210 b_and!6657)))

(declare-fun b_free!4379 () Bool)

(declare-fun b_next!4379 () Bool)

(assert (=> b!139401 (= b_free!4379 (not b_next!4379))))

(declare-fun t!23152 () Bool)

(declare-fun tb!3861 () Bool)

(assert (=> (and b!139401 (= (toChars!863 (transformation!393 (rule!900 (h!7759 (t!23098 l2!3099))))) (toChars!863 (transformation!393 (rule!900 (h!7759 l2!3099))))) t!23152) tb!3861))

(declare-fun result!6008 () Bool)

(assert (= result!6008 result!5962))

(assert (=> b!139291 t!23152))

(declare-fun t!23154 () Bool)

(declare-fun tb!3863 () Bool)

(assert (=> (and b!139401 (= (toChars!863 (transformation!393 (rule!900 (h!7759 (t!23098 l2!3099))))) (toChars!863 (transformation!393 (rule!900 (h!7759 l1!3130))))) t!23154) tb!3863))

(declare-fun result!6010 () Bool)

(assert (= result!6010 result!5988))

(assert (=> b!139363 t!23154))

(declare-fun tp!73209 () Bool)

(declare-fun b_and!6659 () Bool)

(assert (=> b!139401 (= tp!73209 (and (=> t!23152 result!6008) (=> t!23154 result!6010) b_and!6659))))

(declare-fun e!81855 () Bool)

(declare-fun e!81853 () Bool)

(declare-fun tp!73212 () Bool)

(declare-fun b!139398 () Bool)

(assert (=> b!139398 (= e!81855 (and (inv!3106 (h!7759 (t!23098 l2!3099))) e!81853 tp!73212))))

(declare-fun e!81856 () Bool)

(assert (=> b!139401 (= e!81856 (and tp!73210 tp!73209))))

(assert (=> b!139203 (= tp!73107 e!81855)))

(declare-fun e!81852 () Bool)

(declare-fun b!139400 () Bool)

(declare-fun tp!73208 () Bool)

(assert (=> b!139400 (= e!81852 (and tp!73208 (inv!3103 (tag!571 (rule!900 (h!7759 (t!23098 l2!3099))))) (inv!3107 (transformation!393 (rule!900 (h!7759 (t!23098 l2!3099))))) e!81856))))

(declare-fun b!139399 () Bool)

(declare-fun tp!73211 () Bool)

(assert (=> b!139399 (= e!81853 (and (inv!21 (value!15516 (h!7759 (t!23098 l2!3099)))) e!81852 tp!73211))))

(assert (= b!139400 b!139401))

(assert (= b!139399 b!139400))

(assert (= b!139398 b!139399))

(assert (= (and b!139203 ((_ is Cons!2362) (t!23098 l2!3099))) b!139398))

(declare-fun m!122955 () Bool)

(assert (=> b!139398 m!122955))

(declare-fun m!122957 () Bool)

(assert (=> b!139400 m!122957))

(declare-fun m!122959 () Bool)

(assert (=> b!139400 m!122959))

(declare-fun m!122961 () Bool)

(assert (=> b!139399 m!122961))

(declare-fun b!139413 () Bool)

(declare-fun e!81859 () Bool)

(declare-fun tp!73227 () Bool)

(declare-fun tp!73226 () Bool)

(assert (=> b!139413 (= e!81859 (and tp!73227 tp!73226))))

(assert (=> b!139201 (= tp!73116 e!81859)))

(declare-fun b!139415 () Bool)

(declare-fun tp!73224 () Bool)

(declare-fun tp!73225 () Bool)

(assert (=> b!139415 (= e!81859 (and tp!73224 tp!73225))))

(declare-fun b!139412 () Bool)

(assert (=> b!139412 (= e!81859 tp_is_empty!1555)))

(declare-fun b!139414 () Bool)

(declare-fun tp!73223 () Bool)

(assert (=> b!139414 (= e!81859 tp!73223)))

(assert (= (and b!139201 ((_ is ElementMatch!617) (regex!393 (h!7758 rules!4268)))) b!139412))

(assert (= (and b!139201 ((_ is Concat!1033) (regex!393 (h!7758 rules!4268)))) b!139413))

(assert (= (and b!139201 ((_ is Star!617) (regex!393 (h!7758 rules!4268)))) b!139414))

(assert (= (and b!139201 ((_ is Union!617) (regex!393 (h!7758 rules!4268)))) b!139415))

(declare-fun b!139417 () Bool)

(declare-fun e!81860 () Bool)

(declare-fun tp!73232 () Bool)

(declare-fun tp!73231 () Bool)

(assert (=> b!139417 (= e!81860 (and tp!73232 tp!73231))))

(assert (=> b!139202 (= tp!73115 e!81860)))

(declare-fun b!139419 () Bool)

(declare-fun tp!73229 () Bool)

(declare-fun tp!73230 () Bool)

(assert (=> b!139419 (= e!81860 (and tp!73229 tp!73230))))

(declare-fun b!139416 () Bool)

(assert (=> b!139416 (= e!81860 tp_is_empty!1555)))

(declare-fun b!139418 () Bool)

(declare-fun tp!73228 () Bool)

(assert (=> b!139418 (= e!81860 tp!73228)))

(assert (= (and b!139202 ((_ is ElementMatch!617) (regex!393 (rule!900 (h!7759 l2!3099))))) b!139416))

(assert (= (and b!139202 ((_ is Concat!1033) (regex!393 (rule!900 (h!7759 l2!3099))))) b!139417))

(assert (= (and b!139202 ((_ is Star!617) (regex!393 (rule!900 (h!7759 l2!3099))))) b!139418))

(assert (= (and b!139202 ((_ is Union!617) (regex!393 (rule!900 (h!7759 l2!3099))))) b!139419))

(declare-fun b!139421 () Bool)

(declare-fun e!81861 () Bool)

(declare-fun tp!73237 () Bool)

(declare-fun tp!73236 () Bool)

(assert (=> b!139421 (= e!81861 (and tp!73237 tp!73236))))

(assert (=> b!139205 (= tp!73119 e!81861)))

(declare-fun b!139423 () Bool)

(declare-fun tp!73234 () Bool)

(declare-fun tp!73235 () Bool)

(assert (=> b!139423 (= e!81861 (and tp!73234 tp!73235))))

(declare-fun b!139420 () Bool)

(assert (=> b!139420 (= e!81861 tp_is_empty!1555)))

(declare-fun b!139422 () Bool)

(declare-fun tp!73233 () Bool)

(assert (=> b!139422 (= e!81861 tp!73233)))

(assert (= (and b!139205 ((_ is ElementMatch!617) (regex!393 (rule!900 (h!7759 l1!3130))))) b!139420))

(assert (= (and b!139205 ((_ is Concat!1033) (regex!393 (rule!900 (h!7759 l1!3130))))) b!139421))

(assert (= (and b!139205 ((_ is Star!617) (regex!393 (rule!900 (h!7759 l1!3130))))) b!139422))

(assert (= (and b!139205 ((_ is Union!617) (regex!393 (rule!900 (h!7759 l1!3130))))) b!139423))

(declare-fun b!139434 () Bool)

(declare-fun b_free!4381 () Bool)

(declare-fun b_next!4381 () Bool)

(assert (=> b!139434 (= b_free!4381 (not b_next!4381))))

(declare-fun tp!73247 () Bool)

(declare-fun b_and!6661 () Bool)

(assert (=> b!139434 (= tp!73247 b_and!6661)))

(declare-fun b_free!4383 () Bool)

(declare-fun b_next!4383 () Bool)

(assert (=> b!139434 (= b_free!4383 (not b_next!4383))))

(declare-fun t!23156 () Bool)

(declare-fun tb!3865 () Bool)

(assert (=> (and b!139434 (= (toChars!863 (transformation!393 (h!7758 (t!23097 rules!4268)))) (toChars!863 (transformation!393 (rule!900 (h!7759 l2!3099))))) t!23156) tb!3865))

(declare-fun result!6016 () Bool)

(assert (= result!6016 result!5962))

(assert (=> b!139291 t!23156))

(declare-fun t!23158 () Bool)

(declare-fun tb!3867 () Bool)

(assert (=> (and b!139434 (= (toChars!863 (transformation!393 (h!7758 (t!23097 rules!4268)))) (toChars!863 (transformation!393 (rule!900 (h!7759 l1!3130))))) t!23158) tb!3867))

(declare-fun result!6018 () Bool)

(assert (= result!6018 result!5988))

(assert (=> b!139363 t!23158))

(declare-fun tp!73248 () Bool)

(declare-fun b_and!6663 () Bool)

(assert (=> b!139434 (= tp!73248 (and (=> t!23156 result!6016) (=> t!23158 result!6018) b_and!6663))))

(declare-fun e!81870 () Bool)

(assert (=> b!139434 (= e!81870 (and tp!73247 tp!73248))))

(declare-fun e!81871 () Bool)

(declare-fun b!139433 () Bool)

(declare-fun tp!73246 () Bool)

(assert (=> b!139433 (= e!81871 (and tp!73246 (inv!3103 (tag!571 (h!7758 (t!23097 rules!4268)))) (inv!3107 (transformation!393 (h!7758 (t!23097 rules!4268)))) e!81870))))

(declare-fun b!139432 () Bool)

(declare-fun e!81873 () Bool)

(declare-fun tp!73249 () Bool)

(assert (=> b!139432 (= e!81873 (and e!81871 tp!73249))))

(assert (=> b!139206 (= tp!73114 e!81873)))

(assert (= b!139433 b!139434))

(assert (= b!139432 b!139433))

(assert (= (and b!139206 ((_ is Cons!2361) (t!23097 rules!4268))) b!139432))

(declare-fun m!122963 () Bool)

(assert (=> b!139433 m!122963))

(declare-fun m!122965 () Bool)

(assert (=> b!139433 m!122965))

(declare-fun b_lambda!1877 () Bool)

(assert (= b_lambda!1863 (or (and b!139434 b_free!4383 (= (toChars!863 (transformation!393 (h!7758 (t!23097 rules!4268)))) (toChars!863 (transformation!393 (rule!900 (h!7759 l1!3130)))))) (and b!139210 b_free!4359 (= (toChars!863 (transformation!393 (h!7758 rules!4268))) (toChars!863 (transformation!393 (rule!900 (h!7759 l1!3130)))))) (and b!139196 b_free!4349 (= (toChars!863 (transformation!393 (rule!900 (h!7759 l2!3099)))) (toChars!863 (transformation!393 (rule!900 (h!7759 l1!3130)))))) (and b!139401 b_free!4379 (= (toChars!863 (transformation!393 (rule!900 (h!7759 (t!23098 l2!3099))))) (toChars!863 (transformation!393 (rule!900 (h!7759 l1!3130)))))) (and b!139397 b_free!4375 (= (toChars!863 (transformation!393 (rule!900 (h!7759 (t!23098 l1!3130))))) (toChars!863 (transformation!393 (rule!900 (h!7759 l1!3130)))))) (and b!139209 b_free!4353) b_lambda!1877)))

(declare-fun b_lambda!1879 () Bool)

(assert (= b_lambda!1865 (or (and start!14598 b_free!4355) b_lambda!1879)))

(declare-fun b_lambda!1881 () Bool)

(assert (= b_lambda!1861 (or (and start!14598 b_free!4355) b_lambda!1881)))

(declare-fun b_lambda!1883 () Bool)

(assert (= b_lambda!1859 (or (and b!139397 b_free!4375 (= (toChars!863 (transformation!393 (rule!900 (h!7759 (t!23098 l1!3130))))) (toChars!863 (transformation!393 (rule!900 (h!7759 l2!3099)))))) (and b!139210 b_free!4359 (= (toChars!863 (transformation!393 (h!7758 rules!4268))) (toChars!863 (transformation!393 (rule!900 (h!7759 l2!3099)))))) (and b!139434 b_free!4383 (= (toChars!863 (transformation!393 (h!7758 (t!23097 rules!4268)))) (toChars!863 (transformation!393 (rule!900 (h!7759 l2!3099)))))) (and b!139209 b_free!4353 (= (toChars!863 (transformation!393 (rule!900 (h!7759 l1!3130)))) (toChars!863 (transformation!393 (rule!900 (h!7759 l2!3099)))))) (and b!139401 b_free!4379 (= (toChars!863 (transformation!393 (rule!900 (h!7759 (t!23098 l2!3099))))) (toChars!863 (transformation!393 (rule!900 (h!7759 l2!3099)))))) (and b!139196 b_free!4349) b_lambda!1883)))

(declare-fun b_lambda!1885 () Bool)

(assert (= b_lambda!1851 (or (and start!14598 b_free!4355) b_lambda!1885)))

(check-sat (not b!139341) (not b_next!4347) (not b!139417) b_and!6651 b_and!6653 (not b_lambda!1883) b_and!6643 (not b!139359) (not b_next!4381) (not b!139395) (not tb!3829) b_and!6661 (not b!139360) b_and!6657 (not b!139336) (not b!139433) (not b!139394) (not b_next!4377) (not d!33146) (not b!139423) (not b!139363) (not b!139292) (not b!139414) (not d!33104) (not b_lambda!1881) (not d!33138) (not b!139398) (not b_next!4353) (not b_lambda!1879) (not b!139356) (not b_next!4351) (not b!139257) (not b!139275) (not tb!3845) (not b!139364) (not d!33094) b_and!6599 (not d!33126) (not b_next!4349) (not b_next!4355) (not d!33130) (not b!139419) (not b!139383) b_and!6589 (not b!139415) (not b!139421) (not b!139248) (not b_next!4373) (not b!139347) (not b_next!4357) (not b_next!4359) b_and!6641 (not b!139400) (not b!139247) (not b_lambda!1845) b_and!6663 (not b_lambda!1877) b_and!6645 (not b!139367) (not b!139396) (not b!139413) (not b!139422) (not b!139372) (not b!139303) tp_is_empty!1555 b_and!6659 b_and!6655 (not b!139382) (not b!139418) (not b_next!4375) (not b!139244) b_and!6593 (not b!139291) (not b!139399) (not b_lambda!1885) (not b!139432) (not b!139377) (not b_next!4379) (not b_next!4383))
(check-sat (not b_next!4381) b_and!6661 b_and!6657 (not b_next!4377) (not b_next!4347) b_and!6599 b_and!6651 b_and!6653 b_and!6663 b_and!6645 b_and!6643 (not b_next!4353) (not b_next!4351) (not b_next!4349) (not b_next!4355) b_and!6589 (not b_next!4373) (not b_next!4357) (not b_next!4359) b_and!6641 b_and!6659 b_and!6655 (not b_next!4375) b_and!6593 (not b_next!4379) (not b_next!4383))
