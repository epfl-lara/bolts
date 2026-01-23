; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14546 () Bool)

(assert start!14546)

(declare-fun b!138538 () Bool)

(declare-fun b_free!4211 () Bool)

(declare-fun b_next!4211 () Bool)

(assert (=> b!138538 (= b_free!4211 (not b_next!4211))))

(declare-fun tp!72624 () Bool)

(declare-fun b_and!6409 () Bool)

(assert (=> b!138538 (= tp!72624 b_and!6409)))

(declare-fun b_free!4213 () Bool)

(declare-fun b_next!4213 () Bool)

(assert (=> b!138538 (= b_free!4213 (not b_next!4213))))

(declare-fun tp!72622 () Bool)

(declare-fun b_and!6411 () Bool)

(assert (=> b!138538 (= tp!72622 b_and!6411)))

(declare-fun b!138527 () Bool)

(declare-fun b_free!4215 () Bool)

(declare-fun b_next!4215 () Bool)

(assert (=> b!138527 (= b_free!4215 (not b_next!4215))))

(declare-fun tp!72627 () Bool)

(declare-fun b_and!6413 () Bool)

(assert (=> b!138527 (= tp!72627 b_and!6413)))

(declare-fun b_free!4217 () Bool)

(declare-fun b_next!4217 () Bool)

(assert (=> b!138527 (= b_free!4217 (not b_next!4217))))

(declare-fun tp!72616 () Bool)

(declare-fun b_and!6415 () Bool)

(assert (=> b!138527 (= tp!72616 b_and!6415)))

(declare-fun b!138526 () Bool)

(declare-fun b_free!4219 () Bool)

(declare-fun b_next!4219 () Bool)

(assert (=> b!138526 (= b_free!4219 (not b_next!4219))))

(declare-fun tp!72618 () Bool)

(declare-fun b_and!6417 () Bool)

(assert (=> b!138526 (= tp!72618 b_and!6417)))

(declare-fun b_free!4221 () Bool)

(declare-fun b_next!4221 () Bool)

(assert (=> b!138526 (= b_free!4221 (not b_next!4221))))

(declare-fun tp!72628 () Bool)

(declare-fun b_and!6419 () Bool)

(assert (=> b!138526 (= tp!72628 b_and!6419)))

(declare-fun b_free!4223 () Bool)

(declare-fun b_next!4223 () Bool)

(assert (=> start!14546 (= b_free!4223 (not b_next!4223))))

(declare-fun tp!72615 () Bool)

(declare-fun b_and!6421 () Bool)

(assert (=> start!14546 (= tp!72615 b_and!6421)))

(declare-fun res!64649 () Bool)

(declare-fun e!81106 () Bool)

(assert (=> start!14546 (=> (not res!64649) (not e!81106))))

(declare-datatypes ((LexerInterface!273 0))(
  ( (LexerInterfaceExt!270 (__x!2303 Int)) (Lexer!271) )
))
(declare-fun thiss!27322 () LexerInterface!273)

(get-info :version)

(assert (=> start!14546 (= res!64649 ((_ is Lexer!271) thiss!27322))))

(assert (=> start!14546 e!81106))

(assert (=> start!14546 true))

(declare-fun e!81113 () Bool)

(assert (=> start!14546 e!81113))

(assert (=> start!14546 tp!72615))

(declare-fun e!81112 () Bool)

(assert (=> start!14546 e!81112))

(declare-fun e!81104 () Bool)

(assert (=> start!14546 e!81104))

(declare-fun b!138520 () Bool)

(declare-fun res!64655 () Bool)

(assert (=> b!138520 (=> (not res!64655) (not e!81106))))

(declare-datatypes ((List!2337 0))(
  ( (Nil!2327) (Cons!2327 (h!7724 (_ BitVec 16)) (t!22995 List!2337)) )
))
(declare-datatypes ((TokenValue!407 0))(
  ( (FloatLiteralValue!814 (text!3294 List!2337)) (TokenValueExt!406 (__x!2304 Int)) (Broken!2035 (value!15262 List!2337)) (Object!416) (End!407) (Def!407) (Underscore!407) (Match!407) (Else!407) (Error!407) (Case!407) (If!407) (Extends!407) (Abstract!407) (Class!407) (Val!407) (DelimiterValue!814 (del!467 List!2337)) (KeywordValue!413 (value!15263 List!2337)) (CommentValue!814 (value!15264 List!2337)) (WhitespaceValue!814 (value!15265 List!2337)) (IndentationValue!407 (value!15266 List!2337)) (String!3114) (Int32!407) (Broken!2036 (value!15267 List!2337)) (Boolean!408) (Unit!1791) (OperatorValue!410 (op!467 List!2337)) (IdentifierValue!814 (value!15268 List!2337)) (IdentifierValue!815 (value!15269 List!2337)) (WhitespaceValue!815 (value!15270 List!2337)) (True!814) (False!814) (Broken!2037 (value!15271 List!2337)) (Broken!2038 (value!15272 List!2337)) (True!815) (RightBrace!407) (RightBracket!407) (Colon!407) (Null!407) (Comma!407) (LeftBracket!407) (False!815) (LeftBrace!407) (ImaginaryLiteralValue!407 (text!3295 List!2337)) (StringLiteralValue!1221 (value!15273 List!2337)) (EOFValue!407 (value!15274 List!2337)) (IdentValue!407 (value!15275 List!2337)) (DelimiterValue!815 (value!15276 List!2337)) (DedentValue!407 (value!15277 List!2337)) (NewLineValue!407 (value!15278 List!2337)) (IntegerValue!1221 (value!15279 (_ BitVec 32)) (text!3296 List!2337)) (IntegerValue!1222 (value!15280 Int) (text!3297 List!2337)) (Times!407) (Or!407) (Equal!407) (Minus!407) (Broken!2039 (value!15281 List!2337)) (And!407) (Div!407) (LessEqual!407) (Mod!407) (Concat!1016) (Not!407) (Plus!407) (SpaceValue!407 (value!15282 List!2337)) (IntegerValue!1223 (value!15283 Int) (text!3298 List!2337)) (StringLiteralValue!1222 (text!3299 List!2337)) (FloatLiteralValue!815 (text!3300 List!2337)) (BytesLiteralValue!407 (value!15284 List!2337)) (CommentValue!815 (value!15285 List!2337)) (StringLiteralValue!1223 (value!15286 List!2337)) (ErrorTokenValue!407 (msg!468 List!2337)) )
))
(declare-datatypes ((C!2140 0))(
  ( (C!2141 (val!956 Int)) )
))
(declare-datatypes ((List!2338 0))(
  ( (Nil!2328) (Cons!2328 (h!7725 C!2140) (t!22996 List!2338)) )
))
(declare-datatypes ((IArray!1231 0))(
  ( (IArray!1232 (innerList!673 List!2338)) )
))
(declare-datatypes ((Conc!615 0))(
  ( (Node!615 (left!1794 Conc!615) (right!2124 Conc!615) (csize!1460 Int) (cheight!826 Int)) (Leaf!1147 (xs!3210 IArray!1231) (csize!1461 Int)) (Empty!615) )
))
(declare-datatypes ((BalanceConc!1238 0))(
  ( (BalanceConc!1239 (c!29098 Conc!615)) )
))
(declare-datatypes ((TokenValueInjection!586 0))(
  ( (TokenValueInjection!587 (toValue!996 Int) (toChars!855 Int)) )
))
(declare-datatypes ((String!3115 0))(
  ( (String!3116 (value!15287 String)) )
))
(declare-datatypes ((Regex!609 0))(
  ( (ElementMatch!609 (c!29099 C!2140)) (Concat!1017 (regOne!1730 Regex!609) (regTwo!1730 Regex!609)) (EmptyExpr!609) (Star!609 (reg!938 Regex!609)) (EmptyLang!609) (Union!609 (regOne!1731 Regex!609) (regTwo!1731 Regex!609)) )
))
(declare-datatypes ((Rule!570 0))(
  ( (Rule!571 (regex!385 Regex!609) (tag!563 String!3115) (isSeparator!385 Bool) (transformation!385 TokenValueInjection!586)) )
))
(declare-datatypes ((Token!514 0))(
  ( (Token!515 (value!15288 TokenValue!407) (rule!892 Rule!570) (size!2071 Int) (originalCharacters!428 List!2338)) )
))
(declare-datatypes ((List!2339 0))(
  ( (Nil!2329) (Cons!2329 (h!7726 Token!514) (t!22997 List!2339)) )
))
(declare-fun l1!3130 () List!2339)

(declare-fun isEmpty!892 (List!2339) Bool)

(assert (=> b!138520 (= res!64655 (isEmpty!892 (t!22997 l1!3130)))))

(declare-fun tp!72623 () Bool)

(declare-fun e!81105 () Bool)

(declare-fun b!138521 () Bool)

(declare-fun inv!3074 (Token!514) Bool)

(assert (=> b!138521 (= e!81112 (and (inv!3074 (h!7726 l1!3130)) e!81105 tp!72623))))

(declare-fun b!138522 () Bool)

(declare-fun res!64650 () Bool)

(assert (=> b!138522 (=> (not res!64650) (not e!81106))))

(declare-fun e!81115 () Bool)

(assert (=> b!138522 (= res!64650 e!81115)))

(declare-fun res!64657 () Bool)

(assert (=> b!138522 (=> res!64657 e!81115)))

(assert (=> b!138522 (= res!64657 (not ((_ is Cons!2329) l1!3130)))))

(declare-fun e!81114 () Bool)

(declare-fun b!138523 () Bool)

(declare-fun tp!72621 () Bool)

(declare-fun e!81118 () Bool)

(declare-fun l2!3099 () List!2339)

(declare-fun inv!3071 (String!3115) Bool)

(declare-fun inv!3075 (TokenValueInjection!586) Bool)

(assert (=> b!138523 (= e!81118 (and tp!72621 (inv!3071 (tag!563 (rule!892 (h!7726 l2!3099)))) (inv!3075 (transformation!385 (rule!892 (h!7726 l2!3099)))) e!81114))))

(declare-fun b!138524 () Bool)

(declare-fun res!64651 () Bool)

(assert (=> b!138524 (=> (not res!64651) (not e!81106))))

(declare-datatypes ((List!2340 0))(
  ( (Nil!2330) (Cons!2330 (h!7727 Rule!570) (t!22998 List!2340)) )
))
(declare-fun rules!4268 () List!2340)

(declare-fun p!3028 () Int)

(declare-fun tokensListTwoByTwoPredicateList!12 (LexerInterface!273 List!2339 List!2340 Int) Bool)

(assert (=> b!138524 (= res!64651 (tokensListTwoByTwoPredicateList!12 thiss!27322 l2!3099 rules!4268 p!3028))))

(declare-fun b!138525 () Bool)

(declare-fun res!64656 () Bool)

(assert (=> b!138525 (=> (not res!64656) (not e!81106))))

(assert (=> b!138525 (= res!64656 (not (isEmpty!892 l1!3130)))))

(declare-fun e!81109 () Bool)

(assert (=> b!138526 (= e!81109 (and tp!72618 tp!72628))))

(declare-fun e!81108 () Bool)

(assert (=> b!138527 (= e!81108 (and tp!72627 tp!72616))))

(declare-fun tp!72629 () Bool)

(declare-fun e!81111 () Bool)

(declare-fun b!138528 () Bool)

(declare-fun inv!21 (TokenValue!407) Bool)

(assert (=> b!138528 (= e!81111 (and (inv!21 (value!15288 (h!7726 l2!3099))) e!81118 tp!72629))))

(declare-fun b!138529 () Bool)

(assert (=> b!138529 (= e!81115 (isEmpty!892 (t!22997 l1!3130)))))

(declare-fun b!138530 () Bool)

(declare-fun res!64648 () Bool)

(assert (=> b!138530 (=> (not res!64648) (not e!81106))))

(assert (=> b!138530 (= res!64648 ((_ is Cons!2329) l1!3130))))

(declare-fun tp!72620 () Bool)

(declare-fun e!81117 () Bool)

(declare-fun b!138531 () Bool)

(assert (=> b!138531 (= e!81117 (and tp!72620 (inv!3071 (tag!563 (h!7727 rules!4268))) (inv!3075 (transformation!385 (h!7727 rules!4268))) e!81108))))

(declare-fun b!138532 () Bool)

(declare-fun res!64652 () Bool)

(assert (=> b!138532 (=> (not res!64652) (not e!81106))))

(assert (=> b!138532 (= res!64652 (tokensListTwoByTwoPredicateList!12 thiss!27322 l1!3130 rules!4268 p!3028))))

(declare-fun b!138533 () Bool)

(declare-fun tp!72617 () Bool)

(declare-fun e!81107 () Bool)

(assert (=> b!138533 (= e!81105 (and (inv!21 (value!15288 (h!7726 l1!3130))) e!81107 tp!72617))))

(declare-fun b!138534 () Bool)

(declare-fun tp!72619 () Bool)

(assert (=> b!138534 (= e!81107 (and tp!72619 (inv!3071 (tag!563 (rule!892 (h!7726 l1!3130)))) (inv!3075 (transformation!385 (rule!892 (h!7726 l1!3130)))) e!81109))))

(declare-fun b!138535 () Bool)

(declare-fun res!64654 () Bool)

(assert (=> b!138535 (=> (not res!64654) (not e!81106))))

(declare-fun dynLambda!773 (Int Token!514 Token!514 List!2340) Bool)

(declare-fun last!21 (List!2339) Token!514)

(declare-fun head!548 (List!2339) Token!514)

(assert (=> b!138535 (= res!64654 (dynLambda!773 p!3028 (last!21 l1!3130) (head!548 l2!3099) rules!4268))))

(declare-fun b!138536 () Bool)

(declare-fun res!64653 () Bool)

(assert (=> b!138536 (=> (not res!64653) (not e!81106))))

(assert (=> b!138536 (= res!64653 (not (isEmpty!892 l2!3099)))))

(declare-fun tp!72626 () Bool)

(declare-fun b!138537 () Bool)

(assert (=> b!138537 (= e!81104 (and (inv!3074 (h!7726 l2!3099)) e!81111 tp!72626))))

(assert (=> b!138538 (= e!81114 (and tp!72624 tp!72622))))

(declare-fun b!138539 () Bool)

(assert (=> b!138539 (= e!81106 false)))

(declare-fun lt!41062 () List!2339)

(declare-fun ++!520 (List!2339 List!2339) List!2339)

(assert (=> b!138539 (= lt!41062 (++!520 l1!3130 l2!3099))))

(declare-fun b!138540 () Bool)

(declare-fun tp!72625 () Bool)

(assert (=> b!138540 (= e!81113 (and e!81117 tp!72625))))

(assert (= (and start!14546 res!64649) b!138532))

(assert (= (and b!138532 res!64652) b!138524))

(assert (= (and b!138524 res!64651) b!138525))

(assert (= (and b!138525 res!64656) b!138536))

(assert (= (and b!138536 res!64653) b!138535))

(assert (= (and b!138535 res!64654) b!138522))

(assert (= (and b!138522 (not res!64657)) b!138529))

(assert (= (and b!138522 res!64650) b!138530))

(assert (= (and b!138530 res!64648) b!138520))

(assert (= (and b!138520 res!64655) b!138539))

(assert (= b!138531 b!138527))

(assert (= b!138540 b!138531))

(assert (= (and start!14546 ((_ is Cons!2330) rules!4268)) b!138540))

(assert (= b!138534 b!138526))

(assert (= b!138533 b!138534))

(assert (= b!138521 b!138533))

(assert (= (and start!14546 ((_ is Cons!2329) l1!3130)) b!138521))

(assert (= b!138523 b!138538))

(assert (= b!138528 b!138523))

(assert (= b!138537 b!138528))

(assert (= (and start!14546 ((_ is Cons!2329) l2!3099)) b!138537))

(declare-fun b_lambda!1793 () Bool)

(assert (=> (not b_lambda!1793) (not b!138535)))

(declare-fun t!22994 () Bool)

(declare-fun tb!3739 () Bool)

(assert (=> (and start!14546 (= p!3028 p!3028) t!22994) tb!3739))

(declare-fun result!5850 () Bool)

(assert (=> tb!3739 (= result!5850 true)))

(assert (=> b!138535 t!22994))

(declare-fun b_and!6423 () Bool)

(assert (= b_and!6421 (and (=> t!22994 result!5850) b_and!6423)))

(declare-fun m!122313 () Bool)

(assert (=> b!138529 m!122313))

(declare-fun m!122315 () Bool)

(assert (=> b!138532 m!122315))

(declare-fun m!122317 () Bool)

(assert (=> b!138531 m!122317))

(declare-fun m!122319 () Bool)

(assert (=> b!138531 m!122319))

(declare-fun m!122321 () Bool)

(assert (=> b!138539 m!122321))

(declare-fun m!122323 () Bool)

(assert (=> b!138523 m!122323))

(declare-fun m!122325 () Bool)

(assert (=> b!138523 m!122325))

(declare-fun m!122327 () Bool)

(assert (=> b!138537 m!122327))

(declare-fun m!122329 () Bool)

(assert (=> b!138528 m!122329))

(declare-fun m!122331 () Bool)

(assert (=> b!138524 m!122331))

(declare-fun m!122333 () Bool)

(assert (=> b!138535 m!122333))

(declare-fun m!122335 () Bool)

(assert (=> b!138535 m!122335))

(assert (=> b!138535 m!122333))

(assert (=> b!138535 m!122335))

(declare-fun m!122337 () Bool)

(assert (=> b!138535 m!122337))

(assert (=> b!138520 m!122313))

(declare-fun m!122339 () Bool)

(assert (=> b!138521 m!122339))

(declare-fun m!122341 () Bool)

(assert (=> b!138533 m!122341))

(declare-fun m!122343 () Bool)

(assert (=> b!138525 m!122343))

(declare-fun m!122345 () Bool)

(assert (=> b!138536 m!122345))

(declare-fun m!122347 () Bool)

(assert (=> b!138534 m!122347))

(declare-fun m!122349 () Bool)

(assert (=> b!138534 m!122349))

(check-sat b_and!6417 (not b!138536) (not b_next!4211) (not b!138532) (not b!138529) (not b!138523) (not b!138525) (not b!138520) (not b!138535) b_and!6411 b_and!6413 (not b!138524) (not b!138540) (not b_next!4215) (not b_next!4221) b_and!6409 b_and!6415 (not b!138539) (not b_next!4219) (not b_next!4217) b_and!6423 (not b!138537) (not b!138534) (not b_lambda!1793) (not b!138533) (not b!138521) (not b_next!4223) (not b!138528) (not b_next!4213) (not b!138531) b_and!6419)
(check-sat b_and!6417 (not b_next!4211) (not b_next!4219) b_and!6411 (not b_next!4223) b_and!6413 (not b_next!4213) b_and!6419 (not b_next!4215) (not b_next!4221) b_and!6409 b_and!6415 (not b_next!4217) b_and!6423)
