; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14506 () Bool)

(assert start!14506)

(declare-fun b!137858 () Bool)

(declare-fun b_free!4075 () Bool)

(declare-fun b_next!4075 () Bool)

(assert (=> b!137858 (= b_free!4075 (not b_next!4075))))

(declare-fun tp!72133 () Bool)

(declare-fun b_and!6227 () Bool)

(assert (=> b!137858 (= tp!72133 b_and!6227)))

(declare-fun b_free!4077 () Bool)

(declare-fun b_next!4077 () Bool)

(assert (=> b!137858 (= b_free!4077 (not b_next!4077))))

(declare-fun tp!72129 () Bool)

(declare-fun b_and!6229 () Bool)

(assert (=> b!137858 (= tp!72129 b_and!6229)))

(declare-fun b_free!4079 () Bool)

(declare-fun b_next!4079 () Bool)

(assert (=> start!14506 (= b_free!4079 (not b_next!4079))))

(declare-fun tp!72137 () Bool)

(declare-fun b_and!6231 () Bool)

(assert (=> start!14506 (= tp!72137 b_and!6231)))

(declare-fun b!137859 () Bool)

(declare-fun b_free!4081 () Bool)

(declare-fun b_next!4081 () Bool)

(assert (=> b!137859 (= b_free!4081 (not b_next!4081))))

(declare-fun tp!72138 () Bool)

(declare-fun b_and!6233 () Bool)

(assert (=> b!137859 (= tp!72138 b_and!6233)))

(declare-fun b_free!4083 () Bool)

(declare-fun b_next!4083 () Bool)

(assert (=> b!137859 (= b_free!4083 (not b_next!4083))))

(declare-fun tp!72128 () Bool)

(declare-fun b_and!6235 () Bool)

(assert (=> b!137859 (= tp!72128 b_and!6235)))

(declare-fun b!137857 () Bool)

(declare-fun b_free!4085 () Bool)

(declare-fun b_next!4085 () Bool)

(assert (=> b!137857 (= b_free!4085 (not b_next!4085))))

(declare-fun tp!72136 () Bool)

(declare-fun b_and!6237 () Bool)

(assert (=> b!137857 (= tp!72136 b_and!6237)))

(declare-fun b_free!4087 () Bool)

(declare-fun b_next!4087 () Bool)

(assert (=> b!137857 (= b_free!4087 (not b_next!4087))))

(declare-fun tp!72139 () Bool)

(declare-fun b_and!6239 () Bool)

(assert (=> b!137857 (= tp!72139 b_and!6239)))

(declare-fun b!137854 () Bool)

(declare-fun e!80539 () Bool)

(declare-fun tp!72127 () Bool)

(declare-fun e!80540 () Bool)

(declare-datatypes ((List!2305 0))(
  ( (Nil!2295) (Cons!2295 (h!7692 (_ BitVec 16)) (t!22891 List!2305)) )
))
(declare-datatypes ((TokenValue!399 0))(
  ( (FloatLiteralValue!798 (text!3238 List!2305)) (TokenValueExt!398 (__x!2288 Int)) (Broken!1995 (value!15034 List!2305)) (Object!408) (End!399) (Def!399) (Underscore!399) (Match!399) (Else!399) (Error!399) (Case!399) (If!399) (Extends!399) (Abstract!399) (Class!399) (Val!399) (DelimiterValue!798 (del!459 List!2305)) (KeywordValue!405 (value!15035 List!2305)) (CommentValue!798 (value!15036 List!2305)) (WhitespaceValue!798 (value!15037 List!2305)) (IndentationValue!399 (value!15038 List!2305)) (String!3074) (Int32!399) (Broken!1996 (value!15039 List!2305)) (Boolean!400) (Unit!1779) (OperatorValue!402 (op!459 List!2305)) (IdentifierValue!798 (value!15040 List!2305)) (IdentifierValue!799 (value!15041 List!2305)) (WhitespaceValue!799 (value!15042 List!2305)) (True!798) (False!798) (Broken!1997 (value!15043 List!2305)) (Broken!1998 (value!15044 List!2305)) (True!799) (RightBrace!399) (RightBracket!399) (Colon!399) (Null!399) (Comma!399) (LeftBracket!399) (False!799) (LeftBrace!399) (ImaginaryLiteralValue!399 (text!3239 List!2305)) (StringLiteralValue!1197 (value!15045 List!2305)) (EOFValue!399 (value!15046 List!2305)) (IdentValue!399 (value!15047 List!2305)) (DelimiterValue!799 (value!15048 List!2305)) (DedentValue!399 (value!15049 List!2305)) (NewLineValue!399 (value!15050 List!2305)) (IntegerValue!1197 (value!15051 (_ BitVec 32)) (text!3240 List!2305)) (IntegerValue!1198 (value!15052 Int) (text!3241 List!2305)) (Times!399) (Or!399) (Equal!399) (Minus!399) (Broken!1999 (value!15053 List!2305)) (And!399) (Div!399) (LessEqual!399) (Mod!399) (Concat!1000) (Not!399) (Plus!399) (SpaceValue!399 (value!15054 List!2305)) (IntegerValue!1199 (value!15055 Int) (text!3242 List!2305)) (StringLiteralValue!1198 (text!3243 List!2305)) (FloatLiteralValue!799 (text!3244 List!2305)) (BytesLiteralValue!399 (value!15056 List!2305)) (CommentValue!799 (value!15057 List!2305)) (StringLiteralValue!1199 (value!15058 List!2305)) (ErrorTokenValue!399 (msg!460 List!2305)) )
))
(declare-datatypes ((C!2124 0))(
  ( (C!2125 (val!948 Int)) )
))
(declare-datatypes ((List!2306 0))(
  ( (Nil!2296) (Cons!2296 (h!7693 C!2124) (t!22892 List!2306)) )
))
(declare-datatypes ((IArray!1215 0))(
  ( (IArray!1216 (innerList!665 List!2306)) )
))
(declare-datatypes ((Conc!607 0))(
  ( (Node!607 (left!1782 Conc!607) (right!2112 Conc!607) (csize!1444 Int) (cheight!818 Int)) (Leaf!1135 (xs!3202 IArray!1215) (csize!1445 Int)) (Empty!607) )
))
(declare-datatypes ((BalanceConc!1222 0))(
  ( (BalanceConc!1223 (c!29066 Conc!607)) )
))
(declare-datatypes ((TokenValueInjection!570 0))(
  ( (TokenValueInjection!571 (toValue!988 Int) (toChars!847 Int)) )
))
(declare-datatypes ((Regex!601 0))(
  ( (ElementMatch!601 (c!29067 C!2124)) (Concat!1001 (regOne!1714 Regex!601) (regTwo!1714 Regex!601)) (EmptyExpr!601) (Star!601 (reg!930 Regex!601)) (EmptyLang!601) (Union!601 (regOne!1715 Regex!601) (regTwo!1715 Regex!601)) )
))
(declare-datatypes ((String!3075 0))(
  ( (String!3076 (value!15059 String)) )
))
(declare-datatypes ((Rule!554 0))(
  ( (Rule!555 (regex!377 Regex!601) (tag!555 String!3075) (isSeparator!377 Bool) (transformation!377 TokenValueInjection!570)) )
))
(declare-datatypes ((Token!498 0))(
  ( (Token!499 (value!15060 TokenValue!399) (rule!884 Rule!554) (size!2061 Int) (originalCharacters!420 List!2306)) )
))
(declare-datatypes ((List!2307 0))(
  ( (Nil!2297) (Cons!2297 (h!7694 Token!498) (t!22893 List!2307)) )
))
(declare-fun l2!3099 () List!2307)

(declare-fun inv!3039 (String!3075) Bool)

(declare-fun inv!3042 (TokenValueInjection!570) Bool)

(assert (=> b!137854 (= e!80540 (and tp!72127 (inv!3039 (tag!555 (rule!884 (h!7694 l2!3099)))) (inv!3042 (transformation!377 (rule!884 (h!7694 l2!3099)))) e!80539))))

(declare-fun b!137855 () Bool)

(declare-fun e!80532 () Bool)

(declare-fun tp!72126 () Bool)

(declare-fun inv!21 (TokenValue!399) Bool)

(assert (=> b!137855 (= e!80532 (and (inv!21 (value!15060 (h!7694 l2!3099))) e!80540 tp!72126))))

(declare-fun tp!72135 () Bool)

(declare-fun b!137856 () Bool)

(declare-fun e!80538 () Bool)

(declare-fun inv!3043 (Token!498) Bool)

(assert (=> b!137856 (= e!80538 (and (inv!3043 (h!7694 l2!3099)) e!80532 tp!72135))))

(assert (=> start!14506 false))

(assert (=> start!14506 true))

(declare-fun e!80536 () Bool)

(assert (=> start!14506 e!80536))

(assert (=> start!14506 tp!72137))

(declare-fun e!80541 () Bool)

(assert (=> start!14506 e!80541))

(assert (=> start!14506 e!80538))

(declare-fun e!80533 () Bool)

(assert (=> b!137857 (= e!80533 (and tp!72136 tp!72139))))

(assert (=> b!137858 (= e!80539 (and tp!72133 tp!72129))))

(declare-fun e!80530 () Bool)

(assert (=> b!137859 (= e!80530 (and tp!72138 tp!72128))))

(declare-fun b!137860 () Bool)

(declare-fun e!80531 () Bool)

(declare-fun l1!3130 () List!2307)

(declare-fun tp!72130 () Bool)

(assert (=> b!137860 (= e!80531 (and tp!72130 (inv!3039 (tag!555 (rule!884 (h!7694 l1!3130)))) (inv!3042 (transformation!377 (rule!884 (h!7694 l1!3130)))) e!80530))))

(declare-fun b!137861 () Bool)

(declare-datatypes ((List!2308 0))(
  ( (Nil!2298) (Cons!2298 (h!7695 Rule!554) (t!22894 List!2308)) )
))
(declare-fun rules!4268 () List!2308)

(declare-fun tp!72134 () Bool)

(declare-fun e!80542 () Bool)

(assert (=> b!137861 (= e!80542 (and tp!72134 (inv!3039 (tag!555 (h!7695 rules!4268))) (inv!3042 (transformation!377 (h!7695 rules!4268))) e!80533))))

(declare-fun b!137862 () Bool)

(declare-fun e!80535 () Bool)

(declare-fun tp!72125 () Bool)

(assert (=> b!137862 (= e!80541 (and (inv!3043 (h!7694 l1!3130)) e!80535 tp!72125))))

(declare-fun tp!72131 () Bool)

(declare-fun b!137863 () Bool)

(assert (=> b!137863 (= e!80535 (and (inv!21 (value!15060 (h!7694 l1!3130))) e!80531 tp!72131))))

(declare-fun b!137864 () Bool)

(declare-fun tp!72132 () Bool)

(assert (=> b!137864 (= e!80536 (and e!80542 tp!72132))))

(assert (= b!137861 b!137857))

(assert (= b!137864 b!137861))

(get-info :version)

(assert (= (and start!14506 ((_ is Cons!2298) rules!4268)) b!137864))

(assert (= b!137860 b!137859))

(assert (= b!137863 b!137860))

(assert (= b!137862 b!137863))

(assert (= (and start!14506 ((_ is Cons!2297) l1!3130)) b!137862))

(assert (= b!137854 b!137858))

(assert (= b!137855 b!137854))

(assert (= b!137856 b!137855))

(assert (= (and start!14506 ((_ is Cons!2297) l2!3099)) b!137856))

(declare-fun m!121867 () Bool)

(assert (=> b!137856 m!121867))

(declare-fun m!121869 () Bool)

(assert (=> b!137862 m!121869))

(declare-fun m!121871 () Bool)

(assert (=> b!137863 m!121871))

(declare-fun m!121873 () Bool)

(assert (=> b!137861 m!121873))

(declare-fun m!121875 () Bool)

(assert (=> b!137861 m!121875))

(declare-fun m!121877 () Bool)

(assert (=> b!137854 m!121877))

(declare-fun m!121879 () Bool)

(assert (=> b!137854 m!121879))

(declare-fun m!121881 () Bool)

(assert (=> b!137855 m!121881))

(declare-fun m!121883 () Bool)

(assert (=> b!137860 m!121883))

(declare-fun m!121885 () Bool)

(assert (=> b!137860 m!121885))

(check-sat b_and!6227 b_and!6239 (not b!137860) (not b!137862) b_and!6235 (not b_next!4075) (not b_next!4083) (not b!137855) (not b!137861) (not b!137863) (not b!137856) (not b!137854) (not b_next!4087) b_and!6229 b_and!6237 b_and!6233 (not b_next!4077) (not b_next!4079) (not b_next!4085) (not b!137864) b_and!6231 (not b_next!4081))
(check-sat b_and!6227 b_and!6239 (not b_next!4085) b_and!6235 (not b_next!4075) (not b_next!4083) (not b_next!4087) b_and!6229 b_and!6237 b_and!6233 (not b_next!4077) (not b_next!4079) b_and!6231 (not b_next!4081))
