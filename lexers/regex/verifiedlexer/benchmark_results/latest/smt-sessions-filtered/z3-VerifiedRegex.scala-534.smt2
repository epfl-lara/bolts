; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14594 () Bool)

(assert start!14594)

(declare-fun b!139085 () Bool)

(declare-fun b_free!4319 () Bool)

(declare-fun b_next!4319 () Bool)

(assert (=> b!139085 (= b_free!4319 (not b_next!4319))))

(declare-fun tp!73027 () Bool)

(declare-fun b_and!6559 () Bool)

(assert (=> b!139085 (= tp!73027 b_and!6559)))

(declare-fun b_free!4321 () Bool)

(declare-fun b_next!4321 () Bool)

(assert (=> b!139085 (= b_free!4321 (not b_next!4321))))

(declare-fun tp!73017 () Bool)

(declare-fun b_and!6561 () Bool)

(assert (=> b!139085 (= tp!73017 b_and!6561)))

(declare-fun b!139093 () Bool)

(declare-fun b_free!4323 () Bool)

(declare-fun b_next!4323 () Bool)

(assert (=> b!139093 (= b_free!4323 (not b_next!4323))))

(declare-fun tp!73016 () Bool)

(declare-fun b_and!6563 () Bool)

(assert (=> b!139093 (= tp!73016 b_and!6563)))

(declare-fun b_free!4325 () Bool)

(declare-fun b_next!4325 () Bool)

(assert (=> b!139093 (= b_free!4325 (not b_next!4325))))

(declare-fun tp!73028 () Bool)

(declare-fun b_and!6565 () Bool)

(assert (=> b!139093 (= tp!73028 b_and!6565)))

(declare-fun b_free!4327 () Bool)

(declare-fun b_next!4327 () Bool)

(assert (=> start!14594 (= b_free!4327 (not b_next!4327))))

(declare-fun tp!73020 () Bool)

(declare-fun b_and!6567 () Bool)

(assert (=> start!14594 (= tp!73020 b_and!6567)))

(declare-fun b!139086 () Bool)

(declare-fun b_free!4329 () Bool)

(declare-fun b_next!4329 () Bool)

(assert (=> b!139086 (= b_free!4329 (not b_next!4329))))

(declare-fun tp!73025 () Bool)

(declare-fun b_and!6569 () Bool)

(assert (=> b!139086 (= tp!73025 b_and!6569)))

(declare-fun b_free!4331 () Bool)

(declare-fun b_next!4331 () Bool)

(assert (=> b!139086 (= b_free!4331 (not b_next!4331))))

(declare-fun tp!73024 () Bool)

(declare-fun b_and!6571 () Bool)

(assert (=> b!139086 (= tp!73024 b_and!6571)))

(declare-fun b!139081 () Bool)

(declare-fun e!81590 () Bool)

(declare-fun e!81595 () Bool)

(declare-fun tp!73026 () Bool)

(assert (=> b!139081 (= e!81590 (and e!81595 tp!73026))))

(declare-fun b!139082 () Bool)

(declare-fun e!81604 () Bool)

(declare-fun e!81603 () Bool)

(declare-datatypes ((List!2361 0))(
  ( (Nil!2351) (Cons!2351 (h!7748 (_ BitVec 16)) (t!23083 List!2361)) )
))
(declare-datatypes ((TokenValue!413 0))(
  ( (FloatLiteralValue!826 (text!3336 List!2361)) (TokenValueExt!412 (__x!2315 Int)) (Broken!2065 (value!15433 List!2361)) (Object!422) (End!413) (Def!413) (Underscore!413) (Match!413) (Else!413) (Error!413) (Case!413) (If!413) (Extends!413) (Abstract!413) (Class!413) (Val!413) (DelimiterValue!826 (del!473 List!2361)) (KeywordValue!419 (value!15434 List!2361)) (CommentValue!826 (value!15435 List!2361)) (WhitespaceValue!826 (value!15436 List!2361)) (IndentationValue!413 (value!15437 List!2361)) (String!3144) (Int32!413) (Broken!2066 (value!15438 List!2361)) (Boolean!414) (Unit!1797) (OperatorValue!416 (op!473 List!2361)) (IdentifierValue!826 (value!15439 List!2361)) (IdentifierValue!827 (value!15440 List!2361)) (WhitespaceValue!827 (value!15441 List!2361)) (True!826) (False!826) (Broken!2067 (value!15442 List!2361)) (Broken!2068 (value!15443 List!2361)) (True!827) (RightBrace!413) (RightBracket!413) (Colon!413) (Null!413) (Comma!413) (LeftBracket!413) (False!827) (LeftBrace!413) (ImaginaryLiteralValue!413 (text!3337 List!2361)) (StringLiteralValue!1239 (value!15444 List!2361)) (EOFValue!413 (value!15445 List!2361)) (IdentValue!413 (value!15446 List!2361)) (DelimiterValue!827 (value!15447 List!2361)) (DedentValue!413 (value!15448 List!2361)) (NewLineValue!413 (value!15449 List!2361)) (IntegerValue!1239 (value!15450 (_ BitVec 32)) (text!3338 List!2361)) (IntegerValue!1240 (value!15451 Int) (text!3339 List!2361)) (Times!413) (Or!413) (Equal!413) (Minus!413) (Broken!2069 (value!15452 List!2361)) (And!413) (Div!413) (LessEqual!413) (Mod!413) (Concat!1028) (Not!413) (Plus!413) (SpaceValue!413 (value!15453 List!2361)) (IntegerValue!1241 (value!15454 Int) (text!3340 List!2361)) (StringLiteralValue!1240 (text!3341 List!2361)) (FloatLiteralValue!827 (text!3342 List!2361)) (BytesLiteralValue!413 (value!15455 List!2361)) (CommentValue!827 (value!15456 List!2361)) (StringLiteralValue!1241 (value!15457 List!2361)) (ErrorTokenValue!413 (msg!474 List!2361)) )
))
(declare-datatypes ((C!2152 0))(
  ( (C!2153 (val!962 Int)) )
))
(declare-datatypes ((List!2362 0))(
  ( (Nil!2352) (Cons!2352 (h!7749 C!2152) (t!23084 List!2362)) )
))
(declare-datatypes ((IArray!1243 0))(
  ( (IArray!1244 (innerList!679 List!2362)) )
))
(declare-datatypes ((Conc!621 0))(
  ( (Node!621 (left!1803 Conc!621) (right!2133 Conc!621) (csize!1472 Int) (cheight!832 Int)) (Leaf!1156 (xs!3216 IArray!1243) (csize!1473 Int)) (Empty!621) )
))
(declare-datatypes ((BalanceConc!1250 0))(
  ( (BalanceConc!1251 (c!29138 Conc!621)) )
))
(declare-datatypes ((TokenValueInjection!598 0))(
  ( (TokenValueInjection!599 (toValue!1002 Int) (toChars!861 Int)) )
))
(declare-datatypes ((Regex!615 0))(
  ( (ElementMatch!615 (c!29139 C!2152)) (Concat!1029 (regOne!1742 Regex!615) (regTwo!1742 Regex!615)) (EmptyExpr!615) (Star!615 (reg!944 Regex!615)) (EmptyLang!615) (Union!615 (regOne!1743 Regex!615) (regTwo!1743 Regex!615)) )
))
(declare-datatypes ((String!3145 0))(
  ( (String!3146 (value!15458 String)) )
))
(declare-datatypes ((Rule!582 0))(
  ( (Rule!583 (regex!391 Regex!615) (tag!569 String!3145) (isSeparator!391 Bool) (transformation!391 TokenValueInjection!598)) )
))
(declare-datatypes ((Token!526 0))(
  ( (Token!527 (value!15459 TokenValue!413) (rule!898 Rule!582) (size!2081 Int) (originalCharacters!434 List!2362)) )
))
(declare-datatypes ((List!2363 0))(
  ( (Nil!2353) (Cons!2353 (h!7750 Token!526) (t!23085 List!2363)) )
))
(declare-fun l1!3130 () List!2363)

(declare-fun tp!73018 () Bool)

(declare-fun inv!21 (TokenValue!413) Bool)

(assert (=> b!139082 (= e!81604 (and (inv!21 (value!15459 (h!7750 l1!3130))) e!81603 tp!73018))))

(declare-fun e!81605 () Bool)

(declare-fun tp!73019 () Bool)

(declare-fun b!139083 () Bool)

(declare-fun inv!3096 (String!3145) Bool)

(declare-fun inv!3099 (TokenValueInjection!598) Bool)

(assert (=> b!139083 (= e!81603 (and tp!73019 (inv!3096 (tag!569 (rule!898 (h!7750 l1!3130)))) (inv!3099 (transformation!391 (rule!898 (h!7750 l1!3130)))) e!81605))))

(declare-datatypes ((List!2364 0))(
  ( (Nil!2354) (Cons!2354 (h!7751 Rule!582) (t!23086 List!2364)) )
))
(declare-fun rules!4268 () List!2364)

(declare-fun e!81592 () Bool)

(declare-fun tp!73015 () Bool)

(declare-fun b!139084 () Bool)

(assert (=> b!139084 (= e!81595 (and tp!73015 (inv!3096 (tag!569 (h!7751 rules!4268))) (inv!3099 (transformation!391 (h!7751 rules!4268))) e!81592))))

(assert (=> b!139085 (= e!81605 (and tp!73027 tp!73017))))

(assert (=> b!139086 (= e!81592 (and tp!73025 tp!73024))))

(declare-fun res!64833 () Bool)

(declare-fun e!81601 () Bool)

(assert (=> start!14594 (=> (not res!64833) (not e!81601))))

(declare-datatypes ((LexerInterface!279 0))(
  ( (LexerInterfaceExt!276 (__x!2316 Int)) (Lexer!277) )
))
(declare-fun thiss!27322 () LexerInterface!279)

(get-info :version)

(assert (=> start!14594 (= res!64833 ((_ is Lexer!277) thiss!27322))))

(assert (=> start!14594 e!81601))

(assert (=> start!14594 true))

(assert (=> start!14594 e!81590))

(assert (=> start!14594 tp!73020))

(declare-fun e!81599 () Bool)

(assert (=> start!14594 e!81599))

(declare-fun e!81596 () Bool)

(assert (=> start!14594 e!81596))

(declare-fun b!139087 () Bool)

(declare-fun l2!3099 () List!2363)

(declare-fun tp!73022 () Bool)

(declare-fun e!81594 () Bool)

(declare-fun inv!3100 (Token!526) Bool)

(assert (=> b!139087 (= e!81596 (and (inv!3100 (h!7750 l2!3099)) e!81594 tp!73022))))

(declare-fun b!139088 () Bool)

(declare-fun res!64829 () Bool)

(assert (=> b!139088 (=> (not res!64829) (not e!81601))))

(declare-fun p!3028 () Int)

(declare-fun tokensListTwoByTwoPredicateList!18 (LexerInterface!279 List!2363 List!2364 Int) Bool)

(assert (=> b!139088 (= res!64829 (tokensListTwoByTwoPredicateList!18 thiss!27322 l1!3130 rules!4268 p!3028))))

(declare-fun b!139089 () Bool)

(declare-fun res!64831 () Bool)

(assert (=> b!139089 (=> (not res!64831) (not e!81601))))

(declare-fun isEmpty!900 (List!2363) Bool)

(assert (=> b!139089 (= res!64831 (not (isEmpty!900 l2!3099)))))

(declare-fun b!139090 () Bool)

(declare-fun tp!73023 () Bool)

(declare-fun e!81593 () Bool)

(declare-fun e!81597 () Bool)

(assert (=> b!139090 (= e!81593 (and tp!73023 (inv!3096 (tag!569 (rule!898 (h!7750 l2!3099)))) (inv!3099 (transformation!391 (rule!898 (h!7750 l2!3099)))) e!81597))))

(declare-fun b!139091 () Bool)

(declare-fun res!64830 () Bool)

(assert (=> b!139091 (=> (not res!64830) (not e!81601))))

(assert (=> b!139091 (= res!64830 (not (isEmpty!900 l1!3130)))))

(declare-fun b!139092 () Bool)

(declare-fun res!64832 () Bool)

(assert (=> b!139092 (=> (not res!64832) (not e!81601))))

(assert (=> b!139092 (= res!64832 (tokensListTwoByTwoPredicateList!18 thiss!27322 l2!3099 rules!4268 p!3028))))

(assert (=> b!139093 (= e!81597 (and tp!73016 tp!73028))))

(declare-fun b!139094 () Bool)

(declare-fun tp!73029 () Bool)

(assert (=> b!139094 (= e!81599 (and (inv!3100 (h!7750 l1!3130)) e!81604 tp!73029))))

(declare-fun b!139095 () Bool)

(assert (=> b!139095 (= e!81601 false)))

(declare-fun lt!41086 () Token!526)

(declare-fun last!27 (List!2363) Token!526)

(assert (=> b!139095 (= lt!41086 (last!27 l1!3130))))

(declare-fun tp!73021 () Bool)

(declare-fun b!139096 () Bool)

(assert (=> b!139096 (= e!81594 (and (inv!21 (value!15459 (h!7750 l2!3099))) e!81593 tp!73021))))

(assert (= (and start!14594 res!64833) b!139088))

(assert (= (and b!139088 res!64829) b!139092))

(assert (= (and b!139092 res!64832) b!139091))

(assert (= (and b!139091 res!64830) b!139089))

(assert (= (and b!139089 res!64831) b!139095))

(assert (= b!139084 b!139086))

(assert (= b!139081 b!139084))

(assert (= (and start!14594 ((_ is Cons!2354) rules!4268)) b!139081))

(assert (= b!139083 b!139085))

(assert (= b!139082 b!139083))

(assert (= b!139094 b!139082))

(assert (= (and start!14594 ((_ is Cons!2353) l1!3130)) b!139094))

(assert (= b!139090 b!139093))

(assert (= b!139096 b!139090))

(assert (= b!139087 b!139096))

(assert (= (and start!14594 ((_ is Cons!2353) l2!3099)) b!139087))

(declare-fun m!122693 () Bool)

(assert (=> b!139090 m!122693))

(declare-fun m!122695 () Bool)

(assert (=> b!139090 m!122695))

(declare-fun m!122697 () Bool)

(assert (=> b!139087 m!122697))

(declare-fun m!122699 () Bool)

(assert (=> b!139088 m!122699))

(declare-fun m!122701 () Bool)

(assert (=> b!139084 m!122701))

(declare-fun m!122703 () Bool)

(assert (=> b!139084 m!122703))

(declare-fun m!122705 () Bool)

(assert (=> b!139083 m!122705))

(declare-fun m!122707 () Bool)

(assert (=> b!139083 m!122707))

(declare-fun m!122709 () Bool)

(assert (=> b!139095 m!122709))

(declare-fun m!122711 () Bool)

(assert (=> b!139089 m!122711))

(declare-fun m!122713 () Bool)

(assert (=> b!139096 m!122713))

(declare-fun m!122715 () Bool)

(assert (=> b!139092 m!122715))

(declare-fun m!122717 () Bool)

(assert (=> b!139082 m!122717))

(declare-fun m!122719 () Bool)

(assert (=> b!139091 m!122719))

(declare-fun m!122721 () Bool)

(assert (=> b!139094 m!122721))

(check-sat (not b_next!4331) (not b_next!4329) (not b!139095) b_and!6569 b_and!6559 (not b!139089) b_and!6561 (not b!139087) (not b!139092) (not b!139091) (not b_next!4319) (not b!139088) b_and!6565 b_and!6571 (not b_next!4327) b_and!6563 (not b!139096) (not b_next!4325) b_and!6567 (not b!139094) (not b_next!4321) (not b!139084) (not b!139081) (not b_next!4323) (not b!139083) (not b!139090) (not b!139082))
(check-sat (not b_next!4331) (not b_next!4329) b_and!6563 b_and!6569 b_and!6559 b_and!6561 (not b_next!4321) (not b_next!4323) (not b_next!4319) b_and!6565 b_and!6571 (not b_next!4327) (not b_next!4325) b_and!6567)
