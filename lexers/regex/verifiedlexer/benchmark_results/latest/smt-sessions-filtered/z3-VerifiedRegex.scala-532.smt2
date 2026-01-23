; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14550 () Bool)

(assert start!14550)

(declare-fun b!138653 () Bool)

(declare-fun b_free!4239 () Bool)

(declare-fun b_next!4239 () Bool)

(assert (=> b!138653 (= b_free!4239 (not b_next!4239))))

(declare-fun tp!72705 () Bool)

(declare-fun b_and!6441 () Bool)

(assert (=> b!138653 (= tp!72705 b_and!6441)))

(declare-fun b_free!4241 () Bool)

(declare-fun b_next!4241 () Bool)

(assert (=> b!138653 (= b_free!4241 (not b_next!4241))))

(declare-fun tp!72712 () Bool)

(declare-fun b_and!6443 () Bool)

(assert (=> b!138653 (= tp!72712 b_and!6443)))

(declare-fun b!138659 () Bool)

(declare-fun b_free!4243 () Bool)

(declare-fun b_next!4243 () Bool)

(assert (=> b!138659 (= b_free!4243 (not b_next!4243))))

(declare-fun tp!72711 () Bool)

(declare-fun b_and!6445 () Bool)

(assert (=> b!138659 (= tp!72711 b_and!6445)))

(declare-fun b_free!4245 () Bool)

(declare-fun b_next!4245 () Bool)

(assert (=> b!138659 (= b_free!4245 (not b_next!4245))))

(declare-fun tp!72709 () Bool)

(declare-fun b_and!6447 () Bool)

(assert (=> b!138659 (= tp!72709 b_and!6447)))

(declare-fun b!138660 () Bool)

(declare-fun b_free!4247 () Bool)

(declare-fun b_next!4247 () Bool)

(assert (=> b!138660 (= b_free!4247 (not b_next!4247))))

(declare-fun tp!72716 () Bool)

(declare-fun b_and!6449 () Bool)

(assert (=> b!138660 (= tp!72716 b_and!6449)))

(declare-fun b_free!4249 () Bool)

(declare-fun b_next!4249 () Bool)

(assert (=> b!138660 (= b_free!4249 (not b_next!4249))))

(declare-fun tp!72710 () Bool)

(declare-fun b_and!6451 () Bool)

(assert (=> b!138660 (= tp!72710 b_and!6451)))

(declare-fun b_free!4251 () Bool)

(declare-fun b_next!4251 () Bool)

(assert (=> start!14550 (= b_free!4251 (not b_next!4251))))

(declare-fun tp!72715 () Bool)

(declare-fun b_and!6453 () Bool)

(assert (=> start!14550 (= tp!72715 b_and!6453)))

(declare-fun b!138646 () Bool)

(declare-fun e!81215 () Bool)

(declare-fun tp!72708 () Bool)

(declare-fun e!81221 () Bool)

(declare-datatypes ((List!2345 0))(
  ( (Nil!2335) (Cons!2335 (h!7732 (_ BitVec 16)) (t!23007 List!2345)) )
))
(declare-datatypes ((TokenValue!409 0))(
  ( (FloatLiteralValue!818 (text!3308 List!2345)) (TokenValueExt!408 (__x!2307 Int)) (Broken!2045 (value!15319 List!2345)) (Object!418) (End!409) (Def!409) (Underscore!409) (Match!409) (Else!409) (Error!409) (Case!409) (If!409) (Extends!409) (Abstract!409) (Class!409) (Val!409) (DelimiterValue!818 (del!469 List!2345)) (KeywordValue!415 (value!15320 List!2345)) (CommentValue!818 (value!15321 List!2345)) (WhitespaceValue!818 (value!15322 List!2345)) (IndentationValue!409 (value!15323 List!2345)) (String!3124) (Int32!409) (Broken!2046 (value!15324 List!2345)) (Boolean!410) (Unit!1793) (OperatorValue!412 (op!469 List!2345)) (IdentifierValue!818 (value!15325 List!2345)) (IdentifierValue!819 (value!15326 List!2345)) (WhitespaceValue!819 (value!15327 List!2345)) (True!818) (False!818) (Broken!2047 (value!15328 List!2345)) (Broken!2048 (value!15329 List!2345)) (True!819) (RightBrace!409) (RightBracket!409) (Colon!409) (Null!409) (Comma!409) (LeftBracket!409) (False!819) (LeftBrace!409) (ImaginaryLiteralValue!409 (text!3309 List!2345)) (StringLiteralValue!1227 (value!15330 List!2345)) (EOFValue!409 (value!15331 List!2345)) (IdentValue!409 (value!15332 List!2345)) (DelimiterValue!819 (value!15333 List!2345)) (DedentValue!409 (value!15334 List!2345)) (NewLineValue!409 (value!15335 List!2345)) (IntegerValue!1227 (value!15336 (_ BitVec 32)) (text!3310 List!2345)) (IntegerValue!1228 (value!15337 Int) (text!3311 List!2345)) (Times!409) (Or!409) (Equal!409) (Minus!409) (Broken!2049 (value!15338 List!2345)) (And!409) (Div!409) (LessEqual!409) (Mod!409) (Concat!1020) (Not!409) (Plus!409) (SpaceValue!409 (value!15339 List!2345)) (IntegerValue!1229 (value!15340 Int) (text!3312 List!2345)) (StringLiteralValue!1228 (text!3313 List!2345)) (FloatLiteralValue!819 (text!3314 List!2345)) (BytesLiteralValue!409 (value!15341 List!2345)) (CommentValue!819 (value!15342 List!2345)) (StringLiteralValue!1229 (value!15343 List!2345)) (ErrorTokenValue!409 (msg!470 List!2345)) )
))
(declare-datatypes ((C!2144 0))(
  ( (C!2145 (val!958 Int)) )
))
(declare-datatypes ((List!2346 0))(
  ( (Nil!2336) (Cons!2336 (h!7733 C!2144) (t!23008 List!2346)) )
))
(declare-datatypes ((IArray!1235 0))(
  ( (IArray!1236 (innerList!675 List!2346)) )
))
(declare-datatypes ((Conc!617 0))(
  ( (Node!617 (left!1797 Conc!617) (right!2127 Conc!617) (csize!1464 Int) (cheight!828 Int)) (Leaf!1150 (xs!3212 IArray!1235) (csize!1465 Int)) (Empty!617) )
))
(declare-datatypes ((BalanceConc!1242 0))(
  ( (BalanceConc!1243 (c!29102 Conc!617)) )
))
(declare-datatypes ((TokenValueInjection!590 0))(
  ( (TokenValueInjection!591 (toValue!998 Int) (toChars!857 Int)) )
))
(declare-datatypes ((Regex!611 0))(
  ( (ElementMatch!611 (c!29103 C!2144)) (Concat!1021 (regOne!1734 Regex!611) (regTwo!1734 Regex!611)) (EmptyExpr!611) (Star!611 (reg!940 Regex!611)) (EmptyLang!611) (Union!611 (regOne!1735 Regex!611) (regTwo!1735 Regex!611)) )
))
(declare-datatypes ((String!3125 0))(
  ( (String!3126 (value!15344 String)) )
))
(declare-datatypes ((Rule!574 0))(
  ( (Rule!575 (regex!387 Regex!611) (tag!565 String!3125) (isSeparator!387 Bool) (transformation!387 TokenValueInjection!590)) )
))
(declare-datatypes ((Token!518 0))(
  ( (Token!519 (value!15345 TokenValue!409) (rule!894 Rule!574) (size!2073 Int) (originalCharacters!430 List!2346)) )
))
(declare-datatypes ((List!2347 0))(
  ( (Nil!2337) (Cons!2337 (h!7734 Token!518) (t!23009 List!2347)) )
))
(declare-fun l2!3099 () List!2347)

(declare-fun inv!21 (TokenValue!409) Bool)

(assert (=> b!138646 (= e!81221 (and (inv!21 (value!15345 (h!7734 l2!3099))) e!81215 tp!72708))))

(declare-fun b!138647 () Bool)

(declare-fun res!64717 () Bool)

(declare-fun e!81227 () Bool)

(assert (=> b!138647 (=> (not res!64717) (not e!81227))))

(declare-fun e!81216 () Bool)

(assert (=> b!138647 (= res!64717 e!81216)))

(declare-fun res!64709 () Bool)

(assert (=> b!138647 (=> res!64709 e!81216)))

(declare-fun l1!3130 () List!2347)

(get-info :version)

(assert (=> b!138647 (= res!64709 (not ((_ is Cons!2337) l1!3130)))))

(declare-fun b!138648 () Bool)

(declare-fun res!64710 () Bool)

(assert (=> b!138648 (=> (not res!64710) (not e!81227))))

(declare-datatypes ((LexerInterface!275 0))(
  ( (LexerInterfaceExt!272 (__x!2308 Int)) (Lexer!273) )
))
(declare-fun thiss!27322 () LexerInterface!275)

(declare-datatypes ((List!2348 0))(
  ( (Nil!2338) (Cons!2338 (h!7735 Rule!574) (t!23010 List!2348)) )
))
(declare-fun rules!4268 () List!2348)

(declare-fun p!3028 () Int)

(declare-fun tokensListTwoByTwoPredicateList!14 (LexerInterface!275 List!2347 List!2348 Int) Bool)

(assert (=> b!138648 (= res!64710 (tokensListTwoByTwoPredicateList!14 thiss!27322 l1!3130 rules!4268 p!3028))))

(declare-fun b!138649 () Bool)

(declare-fun res!64712 () Bool)

(assert (=> b!138649 (=> (not res!64712) (not e!81227))))

(declare-fun e!81228 () Bool)

(assert (=> b!138649 (= res!64712 e!81228)))

(declare-fun res!64711 () Bool)

(assert (=> b!138649 (=> res!64711 e!81228)))

(assert (=> b!138649 (= res!64711 (not ((_ is Cons!2337) l1!3130)))))

(declare-fun tp!72718 () Bool)

(declare-fun e!81229 () Bool)

(declare-fun e!81224 () Bool)

(declare-fun b!138650 () Bool)

(declare-fun inv!3078 (String!3125) Bool)

(declare-fun inv!3081 (TokenValueInjection!590) Bool)

(assert (=> b!138650 (= e!81229 (and tp!72718 (inv!3078 (tag!565 (rule!894 (h!7734 l1!3130)))) (inv!3081 (transformation!387 (rule!894 (h!7734 l1!3130)))) e!81224))))

(declare-fun b!138651 () Bool)

(declare-fun isEmpty!894 (List!2347) Bool)

(assert (=> b!138651 (= e!81228 (not (isEmpty!894 (t!23009 l1!3130))))))

(declare-fun b!138652 () Bool)

(declare-fun e!81222 () Bool)

(declare-fun e!81217 () Bool)

(declare-fun tp!72714 () Bool)

(assert (=> b!138652 (= e!81222 (and e!81217 tp!72714))))

(assert (=> b!138653 (= e!81224 (and tp!72705 tp!72712))))

(declare-fun e!81230 () Bool)

(declare-fun b!138654 () Bool)

(declare-fun tp!72717 () Bool)

(declare-fun e!81220 () Bool)

(declare-fun inv!3082 (Token!518) Bool)

(assert (=> b!138654 (= e!81230 (and (inv!3082 (h!7734 l1!3130)) e!81220 tp!72717))))

(declare-fun b!138655 () Bool)

(declare-fun res!64715 () Bool)

(assert (=> b!138655 (=> (not res!64715) (not e!81227))))

(declare-fun dynLambda!775 (Int Token!518 Token!518 List!2348) Bool)

(declare-fun last!23 (List!2347) Token!518)

(declare-fun head!550 (List!2347) Token!518)

(assert (=> b!138655 (= res!64715 (dynLambda!775 p!3028 (last!23 l1!3130) (head!550 l2!3099) rules!4268))))

(declare-fun b!138656 () Bool)

(declare-fun res!64716 () Bool)

(assert (=> b!138656 (=> (not res!64716) (not e!81227))))

(assert (=> b!138656 (= res!64716 (not (isEmpty!894 l2!3099)))))

(declare-fun b!138657 () Bool)

(declare-fun tp!72719 () Bool)

(declare-fun e!81231 () Bool)

(assert (=> b!138657 (= e!81231 (and (inv!3082 (h!7734 l2!3099)) e!81221 tp!72719))))

(declare-fun b!138658 () Bool)

(declare-fun res!64713 () Bool)

(assert (=> b!138658 (=> (not res!64713) (not e!81227))))

(assert (=> b!138658 (= res!64713 (tokensListTwoByTwoPredicateList!14 thiss!27322 l2!3099 rules!4268 p!3028))))

(declare-fun res!64714 () Bool)

(assert (=> start!14550 (=> (not res!64714) (not e!81227))))

(assert (=> start!14550 (= res!64714 ((_ is Lexer!273) thiss!27322))))

(assert (=> start!14550 e!81227))

(assert (=> start!14550 true))

(assert (=> start!14550 e!81222))

(assert (=> start!14550 tp!72715))

(assert (=> start!14550 e!81230))

(assert (=> start!14550 e!81231))

(declare-fun e!81226 () Bool)

(assert (=> b!138659 (= e!81226 (and tp!72711 tp!72709))))

(declare-fun e!81223 () Bool)

(assert (=> b!138660 (= e!81223 (and tp!72716 tp!72710))))

(declare-fun b!138661 () Bool)

(assert (=> b!138661 (= e!81227 false)))

(declare-fun lt!41068 () List!2347)

(declare-fun ++!522 (List!2347 List!2347) List!2347)

(assert (=> b!138661 (= lt!41068 (++!522 l1!3130 l2!3099))))

(declare-fun b!138662 () Bool)

(declare-fun tp!72707 () Bool)

(assert (=> b!138662 (= e!81220 (and (inv!21 (value!15345 (h!7734 l1!3130))) e!81229 tp!72707))))

(declare-fun b!138663 () Bool)

(declare-fun tp!72706 () Bool)

(assert (=> b!138663 (= e!81217 (and tp!72706 (inv!3078 (tag!565 (h!7735 rules!4268))) (inv!3081 (transformation!387 (h!7735 rules!4268))) e!81226))))

(declare-fun b!138664 () Bool)

(declare-fun tp!72713 () Bool)

(assert (=> b!138664 (= e!81215 (and tp!72713 (inv!3078 (tag!565 (rule!894 (h!7734 l2!3099)))) (inv!3081 (transformation!387 (rule!894 (h!7734 l2!3099)))) e!81223))))

(declare-fun b!138665 () Bool)

(declare-fun res!64708 () Bool)

(assert (=> b!138665 (=> (not res!64708) (not e!81227))))

(assert (=> b!138665 (= res!64708 (not (isEmpty!894 l1!3130)))))

(declare-fun b!138666 () Bool)

(assert (=> b!138666 (= e!81216 (isEmpty!894 (t!23009 l1!3130)))))

(assert (= (and start!14550 res!64714) b!138648))

(assert (= (and b!138648 res!64710) b!138658))

(assert (= (and b!138658 res!64713) b!138665))

(assert (= (and b!138665 res!64708) b!138656))

(assert (= (and b!138656 res!64716) b!138655))

(assert (= (and b!138655 res!64715) b!138647))

(assert (= (and b!138647 (not res!64709)) b!138666))

(assert (= (and b!138647 res!64717) b!138649))

(assert (= (and b!138649 (not res!64711)) b!138651))

(assert (= (and b!138649 res!64712) b!138661))

(assert (= b!138663 b!138659))

(assert (= b!138652 b!138663))

(assert (= (and start!14550 ((_ is Cons!2338) rules!4268)) b!138652))

(assert (= b!138650 b!138653))

(assert (= b!138662 b!138650))

(assert (= b!138654 b!138662))

(assert (= (and start!14550 ((_ is Cons!2337) l1!3130)) b!138654))

(assert (= b!138664 b!138660))

(assert (= b!138646 b!138664))

(assert (= b!138657 b!138646))

(assert (= (and start!14550 ((_ is Cons!2337) l2!3099)) b!138657))

(declare-fun b_lambda!1797 () Bool)

(assert (=> (not b_lambda!1797) (not b!138655)))

(declare-fun t!23006 () Bool)

(declare-fun tb!3743 () Bool)

(assert (=> (and start!14550 (= p!3028 p!3028) t!23006) tb!3743))

(declare-fun result!5854 () Bool)

(assert (=> tb!3743 (= result!5854 true)))

(assert (=> b!138655 t!23006))

(declare-fun b_and!6455 () Bool)

(assert (= b_and!6453 (and (=> t!23006 result!5854) b_and!6455)))

(declare-fun m!122389 () Bool)

(assert (=> b!138664 m!122389))

(declare-fun m!122391 () Bool)

(assert (=> b!138664 m!122391))

(declare-fun m!122393 () Bool)

(assert (=> b!138651 m!122393))

(declare-fun m!122395 () Bool)

(assert (=> b!138650 m!122395))

(declare-fun m!122397 () Bool)

(assert (=> b!138650 m!122397))

(declare-fun m!122399 () Bool)

(assert (=> b!138654 m!122399))

(declare-fun m!122401 () Bool)

(assert (=> b!138656 m!122401))

(declare-fun m!122403 () Bool)

(assert (=> b!138655 m!122403))

(declare-fun m!122405 () Bool)

(assert (=> b!138655 m!122405))

(assert (=> b!138655 m!122403))

(assert (=> b!138655 m!122405))

(declare-fun m!122407 () Bool)

(assert (=> b!138655 m!122407))

(declare-fun m!122409 () Bool)

(assert (=> b!138646 m!122409))

(declare-fun m!122411 () Bool)

(assert (=> b!138658 m!122411))

(declare-fun m!122413 () Bool)

(assert (=> b!138648 m!122413))

(declare-fun m!122415 () Bool)

(assert (=> b!138662 m!122415))

(declare-fun m!122417 () Bool)

(assert (=> b!138665 m!122417))

(assert (=> b!138666 m!122393))

(declare-fun m!122419 () Bool)

(assert (=> b!138663 m!122419))

(declare-fun m!122421 () Bool)

(assert (=> b!138663 m!122421))

(declare-fun m!122423 () Bool)

(assert (=> b!138661 m!122423))

(declare-fun m!122425 () Bool)

(assert (=> b!138657 m!122425))

(check-sat (not b_next!4239) (not b!138662) b_and!6449 (not b!138652) b_and!6441 (not b_lambda!1797) (not b!138665) (not b!138655) b_and!6445 (not b!138654) (not b_next!4243) (not b!138650) (not b_next!4251) (not b!138651) b_and!6447 (not b!138664) (not b!138656) (not b!138661) b_and!6451 (not b_next!4241) (not b!138646) (not b!138666) (not b!138663) b_and!6455 (not b!138658) (not b_next!4247) (not b_next!4249) (not b!138648) (not b!138657) b_and!6443 (not b_next!4245))
(check-sat (not b_next!4239) (not b_next!4251) b_and!6447 b_and!6451 (not b_next!4241) b_and!6449 b_and!6441 b_and!6445 b_and!6455 (not b_next!4247) (not b_next!4249) (not b_next!4243) b_and!6443 (not b_next!4245))
