; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!139302 () Bool)

(assert start!139302)

(declare-fun b!1482477 () Bool)

(declare-fun b_free!38343 () Bool)

(declare-fun b_next!39047 () Bool)

(assert (=> b!1482477 (= b_free!38343 (not b_next!39047))))

(declare-fun tp!420630 () Bool)

(declare-fun b_and!103037 () Bool)

(assert (=> b!1482477 (= tp!420630 b_and!103037)))

(declare-fun b_free!38345 () Bool)

(declare-fun b_next!39049 () Bool)

(assert (=> b!1482477 (= b_free!38345 (not b_next!39049))))

(declare-fun tp!420632 () Bool)

(declare-fun b_and!103039 () Bool)

(assert (=> b!1482477 (= tp!420632 b_and!103039)))

(declare-fun b!1482469 () Bool)

(declare-fun b_free!38347 () Bool)

(declare-fun b_next!39051 () Bool)

(assert (=> b!1482469 (= b_free!38347 (not b_next!39051))))

(declare-fun tp!420623 () Bool)

(declare-fun b_and!103041 () Bool)

(assert (=> b!1482469 (= tp!420623 b_and!103041)))

(declare-fun b_free!38349 () Bool)

(declare-fun b_next!39053 () Bool)

(assert (=> b!1482469 (= b_free!38349 (not b_next!39053))))

(declare-fun tp!420628 () Bool)

(declare-fun b_and!103043 () Bool)

(assert (=> b!1482469 (= tp!420628 b_and!103043)))

(declare-fun b!1482480 () Bool)

(declare-fun b_free!38351 () Bool)

(declare-fun b_next!39055 () Bool)

(assert (=> b!1482480 (= b_free!38351 (not b_next!39055))))

(declare-fun tp!420626 () Bool)

(declare-fun b_and!103045 () Bool)

(assert (=> b!1482480 (= tp!420626 b_and!103045)))

(declare-fun b_free!38353 () Bool)

(declare-fun b_next!39057 () Bool)

(assert (=> b!1482480 (= b_free!38353 (not b_next!39057))))

(declare-fun tp!420624 () Bool)

(declare-fun b_and!103047 () Bool)

(assert (=> b!1482480 (= tp!420624 b_and!103047)))

(declare-fun tp!420631 () Bool)

(declare-fun e!947875 () Bool)

(declare-datatypes ((List!15760 0))(
  ( (Nil!15694) (Cons!15694 (h!21095 (_ BitVec 16)) (t!137619 List!15760)) )
))
(declare-datatypes ((TokenValue!2889 0))(
  ( (FloatLiteralValue!5778 (text!20668 List!15760)) (TokenValueExt!2888 (__x!9568 Int)) (Broken!14445 (value!89393 List!15760)) (Object!2954) (End!2889) (Def!2889) (Underscore!2889) (Match!2889) (Else!2889) (Error!2889) (Case!2889) (If!2889) (Extends!2889) (Abstract!2889) (Class!2889) (Val!2889) (DelimiterValue!5778 (del!2949 List!15760)) (KeywordValue!2895 (value!89394 List!15760)) (CommentValue!5778 (value!89395 List!15760)) (WhitespaceValue!5778 (value!89396 List!15760)) (IndentationValue!2889 (value!89397 List!15760)) (String!18700) (Int32!2889) (Broken!14446 (value!89398 List!15760)) (Boolean!2890) (Unit!25579) (OperatorValue!2892 (op!2949 List!15760)) (IdentifierValue!5778 (value!89399 List!15760)) (IdentifierValue!5779 (value!89400 List!15760)) (WhitespaceValue!5779 (value!89401 List!15760)) (True!5778) (False!5778) (Broken!14447 (value!89402 List!15760)) (Broken!14448 (value!89403 List!15760)) (True!5779) (RightBrace!2889) (RightBracket!2889) (Colon!2889) (Null!2889) (Comma!2889) (LeftBracket!2889) (False!5779) (LeftBrace!2889) (ImaginaryLiteralValue!2889 (text!20669 List!15760)) (StringLiteralValue!8667 (value!89404 List!15760)) (EOFValue!2889 (value!89405 List!15760)) (IdentValue!2889 (value!89406 List!15760)) (DelimiterValue!5779 (value!89407 List!15760)) (DedentValue!2889 (value!89408 List!15760)) (NewLineValue!2889 (value!89409 List!15760)) (IntegerValue!8667 (value!89410 (_ BitVec 32)) (text!20670 List!15760)) (IntegerValue!8668 (value!89411 Int) (text!20671 List!15760)) (Times!2889) (Or!2889) (Equal!2889) (Minus!2889) (Broken!14449 (value!89412 List!15760)) (And!2889) (Div!2889) (LessEqual!2889) (Mod!2889) (Concat!7002) (Not!2889) (Plus!2889) (SpaceValue!2889 (value!89413 List!15760)) (IntegerValue!8669 (value!89414 Int) (text!20672 List!15760)) (StringLiteralValue!8668 (text!20673 List!15760)) (FloatLiteralValue!5779 (text!20674 List!15760)) (BytesLiteralValue!2889 (value!89415 List!15760)) (CommentValue!5779 (value!89416 List!15760)) (StringLiteralValue!8669 (value!89417 List!15760)) (ErrorTokenValue!2889 (msg!2950 List!15760)) )
))
(declare-datatypes ((C!8404 0))(
  ( (C!8405 (val!4772 Int)) )
))
(declare-datatypes ((Regex!4113 0))(
  ( (ElementMatch!4113 (c!243040 C!8404)) (Concat!7003 (regOne!8738 Regex!4113) (regTwo!8738 Regex!4113)) (EmptyExpr!4113) (Star!4113 (reg!4442 Regex!4113)) (EmptyLang!4113) (Union!4113 (regOne!8739 Regex!4113) (regTwo!8739 Regex!4113)) )
))
(declare-datatypes ((String!18701 0))(
  ( (String!18702 (value!89418 String)) )
))
(declare-datatypes ((List!15761 0))(
  ( (Nil!15695) (Cons!15695 (h!21096 C!8404) (t!137620 List!15761)) )
))
(declare-datatypes ((IArray!10699 0))(
  ( (IArray!10700 (innerList!5407 List!15761)) )
))
(declare-datatypes ((Conc!5347 0))(
  ( (Node!5347 (left!13233 Conc!5347) (right!13563 Conc!5347) (csize!10924 Int) (cheight!5558 Int)) (Leaf!7948 (xs!8102 IArray!10699) (csize!10925 Int)) (Empty!5347) )
))
(declare-datatypes ((BalanceConc!10634 0))(
  ( (BalanceConc!10635 (c!243041 Conc!5347)) )
))
(declare-datatypes ((TokenValueInjection!5438 0))(
  ( (TokenValueInjection!5439 (toValue!4138 Int) (toChars!3997 Int)) )
))
(declare-datatypes ((Rule!5398 0))(
  ( (Rule!5399 (regex!2799 Regex!4113) (tag!3063 String!18701) (isSeparator!2799 Bool) (transformation!2799 TokenValueInjection!5438)) )
))
(declare-datatypes ((Token!5260 0))(
  ( (Token!5261 (value!89419 TokenValue!2889) (rule!4576 Rule!5398) (size!12711 Int) (originalCharacters!3661 List!15761)) )
))
(declare-datatypes ((List!15762 0))(
  ( (Nil!15696) (Cons!15696 (h!21097 Token!5260) (t!137621 List!15762)) )
))
(declare-fun l2!3105 () List!15762)

(declare-fun e!947878 () Bool)

(declare-fun b!1482463 () Bool)

(declare-fun inv!20914 (String!18701) Bool)

(declare-fun inv!20917 (TokenValueInjection!5438) Bool)

(assert (=> b!1482463 (= e!947878 (and tp!420631 (inv!20914 (tag!3063 (rule!4576 (h!21097 l2!3105)))) (inv!20917 (transformation!2799 (rule!4576 (h!21097 l2!3105)))) e!947875))))

(declare-fun b!1482464 () Bool)

(declare-fun res!669790 () Bool)

(declare-fun e!947877 () Bool)

(assert (=> b!1482464 (=> (not res!669790) (not e!947877))))

(declare-fun l1!3136 () List!15762)

(declare-fun isEmpty!9822 (List!15762) Bool)

(assert (=> b!1482464 (= res!669790 (not (isEmpty!9822 l1!3136)))))

(declare-fun b!1482465 () Bool)

(declare-fun res!669784 () Bool)

(assert (=> b!1482465 (=> (not res!669784) (not e!947877))))

(declare-datatypes ((LexerInterface!2455 0))(
  ( (LexerInterfaceExt!2452 (__x!9569 Int)) (Lexer!2453) )
))
(declare-fun thiss!27374 () LexerInterface!2455)

(declare-datatypes ((List!15763 0))(
  ( (Nil!15697) (Cons!15697 (h!21098 Rule!5398) (t!137622 List!15763)) )
))
(declare-fun rules!4290 () List!15763)

(declare-fun rulesProduceEachTokenIndividuallyList!822 (LexerInterface!2455 List!15763 List!15762) Bool)

(assert (=> b!1482465 (= res!669784 (rulesProduceEachTokenIndividuallyList!822 thiss!27374 rules!4290 l2!3105))))

(declare-fun b!1482466 () Bool)

(declare-fun e!947874 () Bool)

(assert (=> b!1482466 (= e!947877 (not e!947874))))

(declare-fun res!669781 () Bool)

(assert (=> b!1482466 (=> res!669781 e!947874)))

(declare-fun lt!515073 () Token!5260)

(declare-fun lt!515077 () Token!5260)

(declare-fun separableTokensPredicate!594 (LexerInterface!2455 Token!5260 Token!5260 List!15763) Bool)

(assert (=> b!1482466 (= res!669781 (not (separableTokensPredicate!594 thiss!27374 lt!515077 lt!515073 rules!4290)))))

(declare-fun rulesProduceIndividualToken!1312 (LexerInterface!2455 List!15763 Token!5260) Bool)

(assert (=> b!1482466 (rulesProduceIndividualToken!1312 thiss!27374 rules!4290 lt!515073)))

(declare-datatypes ((Unit!25580 0))(
  ( (Unit!25581) )
))
(declare-fun lt!515074 () Unit!25580)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!493 (LexerInterface!2455 List!15763 List!15762 Token!5260) Unit!25580)

(assert (=> b!1482466 (= lt!515074 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!493 thiss!27374 rules!4290 l2!3105 lt!515073))))

(declare-fun head!3087 (List!15762) Token!5260)

(assert (=> b!1482466 (= lt!515073 (head!3087 l2!3105))))

(assert (=> b!1482466 (rulesProduceIndividualToken!1312 thiss!27374 rules!4290 lt!515077)))

(declare-fun lt!515072 () Unit!25580)

(assert (=> b!1482466 (= lt!515072 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!493 thiss!27374 rules!4290 l1!3136 lt!515077))))

(declare-fun last!357 (List!15762) Token!5260)

(assert (=> b!1482466 (= lt!515077 (last!357 l1!3136))))

(declare-fun b!1482467 () Bool)

(declare-fun e!947881 () Bool)

(assert (=> b!1482467 (= e!947881 (not (isEmpty!9822 (t!137621 l1!3136))))))

(declare-fun b!1482468 () Bool)

(declare-fun e!947870 () Bool)

(declare-fun tp!420627 () Bool)

(declare-fun inv!21 (TokenValue!2889) Bool)

(assert (=> b!1482468 (= e!947870 (and (inv!21 (value!89419 (h!21097 l2!3105))) e!947878 tp!420627))))

(assert (=> b!1482469 (= e!947875 (and tp!420623 tp!420628))))

(declare-fun b!1482470 () Bool)

(declare-fun res!669782 () Bool)

(assert (=> b!1482470 (=> (not res!669782) (not e!947877))))

(assert (=> b!1482470 (= res!669782 (rulesProduceEachTokenIndividuallyList!822 thiss!27374 rules!4290 l1!3136))))

(declare-fun b!1482471 () Bool)

(declare-fun res!669793 () Bool)

(assert (=> b!1482471 (=> (not res!669793) (not e!947877))))

(declare-fun rulesInvariant!2244 (LexerInterface!2455 List!15763) Bool)

(assert (=> b!1482471 (= res!669793 (rulesInvariant!2244 thiss!27374 rules!4290))))

(declare-fun e!947879 () Bool)

(declare-fun e!947872 () Bool)

(declare-fun b!1482472 () Bool)

(declare-fun tp!420625 () Bool)

(assert (=> b!1482472 (= e!947879 (and tp!420625 (inv!20914 (tag!3063 (h!21098 rules!4290))) (inv!20917 (transformation!2799 (h!21098 rules!4290))) e!947872))))

(declare-fun e!947869 () Bool)

(declare-fun b!1482473 () Bool)

(declare-fun e!947866 () Bool)

(declare-fun tp!420629 () Bool)

(declare-fun inv!20918 (Token!5260) Bool)

(assert (=> b!1482473 (= e!947866 (and (inv!20918 (h!21097 l1!3136)) e!947869 tp!420629))))

(declare-fun tp!420635 () Bool)

(declare-fun b!1482475 () Bool)

(declare-fun e!947871 () Bool)

(assert (=> b!1482475 (= e!947871 (and (inv!20918 (h!21097 l2!3105)) e!947870 tp!420635))))

(declare-fun b!1482476 () Bool)

(declare-fun lt!515076 () List!15762)

(declare-fun tokensListTwoByTwoPredicateSeparableList!315 (LexerInterface!2455 List!15762 List!15763) Bool)

(assert (=> b!1482476 (= e!947874 (tokensListTwoByTwoPredicateSeparableList!315 thiss!27374 lt!515076 rules!4290))))

(assert (=> b!1482476 (rulesProduceEachTokenIndividuallyList!822 thiss!27374 rules!4290 lt!515076)))

(declare-fun ++!4234 (List!15762 List!15762) List!15762)

(assert (=> b!1482476 (= lt!515076 (++!4234 l1!3136 l2!3105))))

(declare-fun lt!515075 () Unit!25580)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!78 (LexerInterface!2455 List!15763 List!15762 List!15762) Unit!25580)

(assert (=> b!1482476 (= lt!515075 (lemmaRulesProduceEachTokenIndividuallyConcat!78 thiss!27374 rules!4290 l1!3136 l2!3105))))

(declare-fun e!947863 () Bool)

(assert (=> b!1482477 (= e!947863 (and tp!420630 tp!420632))))

(declare-fun b!1482478 () Bool)

(declare-fun res!669788 () Bool)

(assert (=> b!1482478 (=> res!669788 e!947874)))

(declare-fun e!947882 () Bool)

(assert (=> b!1482478 (= res!669788 e!947882)))

(declare-fun res!669792 () Bool)

(assert (=> b!1482478 (=> (not res!669792) (not e!947882))))

(get-info :version)

(assert (=> b!1482478 (= res!669792 ((_ is Cons!15696) l1!3136))))

(declare-fun tp!420633 () Bool)

(declare-fun b!1482479 () Bool)

(declare-fun e!947873 () Bool)

(assert (=> b!1482479 (= e!947869 (and (inv!21 (value!89419 (h!21097 l1!3136))) e!947873 tp!420633))))

(assert (=> b!1482480 (= e!947872 (and tp!420626 tp!420624))))

(declare-fun b!1482481 () Bool)

(assert (=> b!1482481 (= e!947882 (isEmpty!9822 (t!137621 l1!3136)))))

(declare-fun b!1482482 () Bool)

(declare-fun res!669785 () Bool)

(assert (=> b!1482482 (=> (not res!669785) (not e!947877))))

(declare-fun isEmpty!9823 (List!15763) Bool)

(assert (=> b!1482482 (= res!669785 (not (isEmpty!9823 rules!4290)))))

(declare-fun b!1482483 () Bool)

(declare-fun res!669789 () Bool)

(assert (=> b!1482483 (=> (not res!669789) (not e!947877))))

(assert (=> b!1482483 (= res!669789 (not (isEmpty!9822 l2!3105)))))

(declare-fun b!1482484 () Bool)

(declare-fun res!669783 () Bool)

(assert (=> b!1482484 (=> res!669783 e!947874)))

(assert (=> b!1482484 (= res!669783 e!947881)))

(declare-fun res!669791 () Bool)

(assert (=> b!1482484 (=> (not res!669791) (not e!947881))))

(assert (=> b!1482484 (= res!669791 ((_ is Cons!15696) l1!3136))))

(declare-fun b!1482485 () Bool)

(declare-fun e!947864 () Bool)

(declare-fun tp!420636 () Bool)

(assert (=> b!1482485 (= e!947864 (and e!947879 tp!420636))))

(declare-fun res!669787 () Bool)

(assert (=> start!139302 (=> (not res!669787) (not e!947877))))

(assert (=> start!139302 (= res!669787 ((_ is Lexer!2453) thiss!27374))))

(assert (=> start!139302 e!947877))

(assert (=> start!139302 true))

(assert (=> start!139302 e!947864))

(assert (=> start!139302 e!947866))

(assert (=> start!139302 e!947871))

(declare-fun b!1482474 () Bool)

(declare-fun res!669780 () Bool)

(assert (=> b!1482474 (=> (not res!669780) (not e!947877))))

(assert (=> b!1482474 (= res!669780 (tokensListTwoByTwoPredicateSeparableList!315 thiss!27374 l2!3105 rules!4290))))

(declare-fun b!1482486 () Bool)

(declare-fun res!669786 () Bool)

(assert (=> b!1482486 (=> (not res!669786) (not e!947877))))

(assert (=> b!1482486 (= res!669786 (tokensListTwoByTwoPredicateSeparableList!315 thiss!27374 l1!3136 rules!4290))))

(declare-fun tp!420634 () Bool)

(declare-fun b!1482487 () Bool)

(assert (=> b!1482487 (= e!947873 (and tp!420634 (inv!20914 (tag!3063 (rule!4576 (h!21097 l1!3136)))) (inv!20917 (transformation!2799 (rule!4576 (h!21097 l1!3136)))) e!947863))))

(assert (= (and start!139302 res!669787) b!1482482))

(assert (= (and b!1482482 res!669785) b!1482471))

(assert (= (and b!1482471 res!669793) b!1482470))

(assert (= (and b!1482470 res!669782) b!1482465))

(assert (= (and b!1482465 res!669784) b!1482486))

(assert (= (and b!1482486 res!669786) b!1482474))

(assert (= (and b!1482474 res!669780) b!1482464))

(assert (= (and b!1482464 res!669790) b!1482483))

(assert (= (and b!1482483 res!669789) b!1482466))

(assert (= (and b!1482466 (not res!669781)) b!1482484))

(assert (= (and b!1482484 res!669791) b!1482467))

(assert (= (and b!1482484 (not res!669783)) b!1482478))

(assert (= (and b!1482478 res!669792) b!1482481))

(assert (= (and b!1482478 (not res!669788)) b!1482476))

(assert (= b!1482472 b!1482480))

(assert (= b!1482485 b!1482472))

(assert (= (and start!139302 ((_ is Cons!15697) rules!4290)) b!1482485))

(assert (= b!1482487 b!1482477))

(assert (= b!1482479 b!1482487))

(assert (= b!1482473 b!1482479))

(assert (= (and start!139302 ((_ is Cons!15696) l1!3136)) b!1482473))

(assert (= b!1482463 b!1482469))

(assert (= b!1482468 b!1482463))

(assert (= b!1482475 b!1482468))

(assert (= (and start!139302 ((_ is Cons!15696) l2!3105)) b!1482475))

(declare-fun m!1728949 () Bool)

(assert (=> b!1482479 m!1728949))

(declare-fun m!1728951 () Bool)

(assert (=> b!1482481 m!1728951))

(declare-fun m!1728953 () Bool)

(assert (=> b!1482464 m!1728953))

(declare-fun m!1728955 () Bool)

(assert (=> b!1482472 m!1728955))

(declare-fun m!1728957 () Bool)

(assert (=> b!1482472 m!1728957))

(declare-fun m!1728959 () Bool)

(assert (=> b!1482476 m!1728959))

(declare-fun m!1728961 () Bool)

(assert (=> b!1482476 m!1728961))

(declare-fun m!1728963 () Bool)

(assert (=> b!1482476 m!1728963))

(declare-fun m!1728965 () Bool)

(assert (=> b!1482476 m!1728965))

(declare-fun m!1728967 () Bool)

(assert (=> b!1482486 m!1728967))

(declare-fun m!1728969 () Bool)

(assert (=> b!1482463 m!1728969))

(declare-fun m!1728971 () Bool)

(assert (=> b!1482463 m!1728971))

(declare-fun m!1728973 () Bool)

(assert (=> b!1482466 m!1728973))

(declare-fun m!1728975 () Bool)

(assert (=> b!1482466 m!1728975))

(declare-fun m!1728977 () Bool)

(assert (=> b!1482466 m!1728977))

(declare-fun m!1728979 () Bool)

(assert (=> b!1482466 m!1728979))

(declare-fun m!1728981 () Bool)

(assert (=> b!1482466 m!1728981))

(declare-fun m!1728983 () Bool)

(assert (=> b!1482466 m!1728983))

(declare-fun m!1728985 () Bool)

(assert (=> b!1482466 m!1728985))

(declare-fun m!1728987 () Bool)

(assert (=> b!1482465 m!1728987))

(declare-fun m!1728989 () Bool)

(assert (=> b!1482483 m!1728989))

(declare-fun m!1728991 () Bool)

(assert (=> b!1482470 m!1728991))

(declare-fun m!1728993 () Bool)

(assert (=> b!1482474 m!1728993))

(declare-fun m!1728995 () Bool)

(assert (=> b!1482482 m!1728995))

(declare-fun m!1728997 () Bool)

(assert (=> b!1482487 m!1728997))

(declare-fun m!1728999 () Bool)

(assert (=> b!1482487 m!1728999))

(assert (=> b!1482467 m!1728951))

(declare-fun m!1729001 () Bool)

(assert (=> b!1482471 m!1729001))

(declare-fun m!1729003 () Bool)

(assert (=> b!1482475 m!1729003))

(declare-fun m!1729005 () Bool)

(assert (=> b!1482473 m!1729005))

(declare-fun m!1729007 () Bool)

(assert (=> b!1482468 m!1729007))

(check-sat (not b!1482476) (not b!1482463) (not b!1482471) (not b_next!39047) (not b_next!39057) (not b!1482470) (not b!1482467) (not b!1482482) (not b_next!39049) (not b!1482474) (not b!1482466) (not b_next!39055) (not b_next!39053) b_and!103043 b_and!103037 b_and!103045 (not b!1482485) b_and!103041 (not b!1482487) (not b!1482473) (not b!1482464) (not b!1482481) (not b!1482465) (not b!1482486) (not b!1482479) (not b!1482475) (not b_next!39051) (not b!1482472) (not b!1482468) (not b!1482483) b_and!103047 b_and!103039)
(check-sat (not b_next!39047) b_and!103041 (not b_next!39057) (not b_next!39049) (not b_next!39051) (not b_next!39055) (not b_next!39053) b_and!103043 b_and!103037 b_and!103045 b_and!103047 b_and!103039)
(get-model)

(declare-fun d!434833 () Bool)

(assert (=> d!434833 (= (isEmpty!9822 (t!137621 l1!3136)) ((_ is Nil!15696) (t!137621 l1!3136)))))

(assert (=> b!1482467 d!434833))

(declare-fun b!1482565 () Bool)

(declare-fun e!947942 () Bool)

(assert (=> b!1482565 (= e!947942 true)))

(declare-fun b!1482564 () Bool)

(declare-fun e!947941 () Bool)

(assert (=> b!1482564 (= e!947941 e!947942)))

(declare-fun b!1482563 () Bool)

(declare-fun e!947940 () Bool)

(assert (=> b!1482563 (= e!947940 e!947941)))

(declare-fun d!434837 () Bool)

(assert (=> d!434837 e!947940))

(assert (= b!1482564 b!1482565))

(assert (= b!1482563 b!1482564))

(assert (= (and d!434837 ((_ is Cons!15697) rules!4290)) b!1482563))

(declare-fun order!9493 () Int)

(declare-fun lambda!63833 () Int)

(declare-fun order!9495 () Int)

(declare-fun dynLambda!7157 (Int Int) Int)

(declare-fun dynLambda!7158 (Int Int) Int)

(assert (=> b!1482565 (< (dynLambda!7157 order!9493 (toValue!4138 (transformation!2799 (h!21098 rules!4290)))) (dynLambda!7158 order!9495 lambda!63833))))

(declare-fun order!9497 () Int)

(declare-fun dynLambda!7159 (Int Int) Int)

(assert (=> b!1482565 (< (dynLambda!7159 order!9497 (toChars!3997 (transformation!2799 (h!21098 rules!4290)))) (dynLambda!7158 order!9495 lambda!63833))))

(assert (=> d!434837 true))

(declare-fun lt!515111 () Bool)

(declare-fun forall!3818 (List!15762 Int) Bool)

(assert (=> d!434837 (= lt!515111 (forall!3818 l2!3105 lambda!63833))))

(declare-fun e!947933 () Bool)

(assert (=> d!434837 (= lt!515111 e!947933)))

(declare-fun res!669833 () Bool)

(assert (=> d!434837 (=> res!669833 e!947933)))

(assert (=> d!434837 (= res!669833 (not ((_ is Cons!15696) l2!3105)))))

(assert (=> d!434837 (not (isEmpty!9823 rules!4290))))

(assert (=> d!434837 (= (rulesProduceEachTokenIndividuallyList!822 thiss!27374 rules!4290 l2!3105) lt!515111)))

(declare-fun b!1482553 () Bool)

(declare-fun e!947932 () Bool)

(assert (=> b!1482553 (= e!947933 e!947932)))

(declare-fun res!669832 () Bool)

(assert (=> b!1482553 (=> (not res!669832) (not e!947932))))

(assert (=> b!1482553 (= res!669832 (rulesProduceIndividualToken!1312 thiss!27374 rules!4290 (h!21097 l2!3105)))))

(declare-fun b!1482554 () Bool)

(assert (=> b!1482554 (= e!947932 (rulesProduceEachTokenIndividuallyList!822 thiss!27374 rules!4290 (t!137621 l2!3105)))))

(assert (= (and d!434837 (not res!669833)) b!1482553))

(assert (= (and b!1482553 res!669832) b!1482554))

(declare-fun m!1729087 () Bool)

(assert (=> d!434837 m!1729087))

(assert (=> d!434837 m!1728995))

(declare-fun m!1729089 () Bool)

(assert (=> b!1482553 m!1729089))

(declare-fun m!1729091 () Bool)

(assert (=> b!1482554 m!1729091))

(assert (=> b!1482465 d!434837))

(declare-fun d!434867 () Bool)

(declare-fun res!669839 () Bool)

(declare-fun e!947951 () Bool)

(assert (=> d!434867 (=> res!669839 e!947951)))

(assert (=> d!434867 (= res!669839 (or (not ((_ is Cons!15696) lt!515076)) (not ((_ is Cons!15696) (t!137621 lt!515076)))))))

(assert (=> d!434867 (= (tokensListTwoByTwoPredicateSeparableList!315 thiss!27374 lt!515076 rules!4290) e!947951)))

(declare-fun b!1482578 () Bool)

(declare-fun e!947950 () Bool)

(assert (=> b!1482578 (= e!947951 e!947950)))

(declare-fun res!669838 () Bool)

(assert (=> b!1482578 (=> (not res!669838) (not e!947950))))

(assert (=> b!1482578 (= res!669838 (separableTokensPredicate!594 thiss!27374 (h!21097 lt!515076) (h!21097 (t!137621 lt!515076)) rules!4290))))

(declare-fun lt!515136 () Unit!25580)

(declare-fun Unit!25591 () Unit!25580)

(assert (=> b!1482578 (= lt!515136 Unit!25591)))

(declare-fun size!12715 (BalanceConc!10634) Int)

(declare-fun charsOf!1607 (Token!5260) BalanceConc!10634)

(assert (=> b!1482578 (> (size!12715 (charsOf!1607 (h!21097 (t!137621 lt!515076)))) 0)))

(declare-fun lt!515137 () Unit!25580)

(declare-fun Unit!25592 () Unit!25580)

(assert (=> b!1482578 (= lt!515137 Unit!25592)))

(assert (=> b!1482578 (rulesProduceIndividualToken!1312 thiss!27374 rules!4290 (h!21097 (t!137621 lt!515076)))))

(declare-fun lt!515132 () Unit!25580)

(declare-fun Unit!25593 () Unit!25580)

(assert (=> b!1482578 (= lt!515132 Unit!25593)))

(assert (=> b!1482578 (rulesProduceIndividualToken!1312 thiss!27374 rules!4290 (h!21097 lt!515076))))

(declare-fun lt!515133 () Unit!25580)

(declare-fun lt!515135 () Unit!25580)

(assert (=> b!1482578 (= lt!515133 lt!515135)))

(assert (=> b!1482578 (rulesProduceIndividualToken!1312 thiss!27374 rules!4290 (h!21097 (t!137621 lt!515076)))))

(assert (=> b!1482578 (= lt!515135 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!493 thiss!27374 rules!4290 lt!515076 (h!21097 (t!137621 lt!515076))))))

(declare-fun lt!515138 () Unit!25580)

(declare-fun lt!515134 () Unit!25580)

(assert (=> b!1482578 (= lt!515138 lt!515134)))

(assert (=> b!1482578 (rulesProduceIndividualToken!1312 thiss!27374 rules!4290 (h!21097 lt!515076))))

(assert (=> b!1482578 (= lt!515134 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!493 thiss!27374 rules!4290 lt!515076 (h!21097 lt!515076)))))

(declare-fun b!1482579 () Bool)

(assert (=> b!1482579 (= e!947950 (tokensListTwoByTwoPredicateSeparableList!315 thiss!27374 (Cons!15696 (h!21097 (t!137621 lt!515076)) (t!137621 (t!137621 lt!515076))) rules!4290))))

(assert (= (and d!434867 (not res!669839)) b!1482578))

(assert (= (and b!1482578 res!669838) b!1482579))

(declare-fun m!1729113 () Bool)

(assert (=> b!1482578 m!1729113))

(declare-fun m!1729115 () Bool)

(assert (=> b!1482578 m!1729115))

(declare-fun m!1729117 () Bool)

(assert (=> b!1482578 m!1729117))

(declare-fun m!1729119 () Bool)

(assert (=> b!1482578 m!1729119))

(declare-fun m!1729121 () Bool)

(assert (=> b!1482578 m!1729121))

(declare-fun m!1729123 () Bool)

(assert (=> b!1482578 m!1729123))

(declare-fun m!1729125 () Bool)

(assert (=> b!1482578 m!1729125))

(assert (=> b!1482578 m!1729123))

(declare-fun m!1729127 () Bool)

(assert (=> b!1482579 m!1729127))

(assert (=> b!1482476 d!434867))

(declare-fun bs!346027 () Bool)

(declare-fun d!434877 () Bool)

(assert (= bs!346027 (and d!434877 d!434837)))

(declare-fun lambda!63834 () Int)

(assert (=> bs!346027 (= lambda!63834 lambda!63833)))

(declare-fun b!1482584 () Bool)

(declare-fun e!947956 () Bool)

(assert (=> b!1482584 (= e!947956 true)))

(declare-fun b!1482583 () Bool)

(declare-fun e!947955 () Bool)

(assert (=> b!1482583 (= e!947955 e!947956)))

(declare-fun b!1482582 () Bool)

(declare-fun e!947954 () Bool)

(assert (=> b!1482582 (= e!947954 e!947955)))

(assert (=> d!434877 e!947954))

(assert (= b!1482583 b!1482584))

(assert (= b!1482582 b!1482583))

(assert (= (and d!434877 ((_ is Cons!15697) rules!4290)) b!1482582))

(assert (=> b!1482584 (< (dynLambda!7157 order!9493 (toValue!4138 (transformation!2799 (h!21098 rules!4290)))) (dynLambda!7158 order!9495 lambda!63834))))

(assert (=> b!1482584 (< (dynLambda!7159 order!9497 (toChars!3997 (transformation!2799 (h!21098 rules!4290)))) (dynLambda!7158 order!9495 lambda!63834))))

(assert (=> d!434877 true))

(declare-fun lt!515139 () Bool)

(assert (=> d!434877 (= lt!515139 (forall!3818 lt!515076 lambda!63834))))

(declare-fun e!947953 () Bool)

(assert (=> d!434877 (= lt!515139 e!947953)))

(declare-fun res!669841 () Bool)

(assert (=> d!434877 (=> res!669841 e!947953)))

(assert (=> d!434877 (= res!669841 (not ((_ is Cons!15696) lt!515076)))))

(assert (=> d!434877 (not (isEmpty!9823 rules!4290))))

(assert (=> d!434877 (= (rulesProduceEachTokenIndividuallyList!822 thiss!27374 rules!4290 lt!515076) lt!515139)))

(declare-fun b!1482580 () Bool)

(declare-fun e!947952 () Bool)

(assert (=> b!1482580 (= e!947953 e!947952)))

(declare-fun res!669840 () Bool)

(assert (=> b!1482580 (=> (not res!669840) (not e!947952))))

(assert (=> b!1482580 (= res!669840 (rulesProduceIndividualToken!1312 thiss!27374 rules!4290 (h!21097 lt!515076)))))

(declare-fun b!1482581 () Bool)

(assert (=> b!1482581 (= e!947952 (rulesProduceEachTokenIndividuallyList!822 thiss!27374 rules!4290 (t!137621 lt!515076)))))

(assert (= (and d!434877 (not res!669841)) b!1482580))

(assert (= (and b!1482580 res!669840) b!1482581))

(declare-fun m!1729129 () Bool)

(assert (=> d!434877 m!1729129))

(assert (=> d!434877 m!1728995))

(assert (=> b!1482580 m!1729115))

(declare-fun m!1729131 () Bool)

(assert (=> b!1482581 m!1729131))

(assert (=> b!1482476 d!434877))

(declare-fun d!434879 () Bool)

(declare-fun e!947962 () Bool)

(assert (=> d!434879 e!947962))

(declare-fun res!669846 () Bool)

(assert (=> d!434879 (=> (not res!669846) (not e!947962))))

(declare-fun lt!515142 () List!15762)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2281 (List!15762) (InoxSet Token!5260))

(assert (=> d!434879 (= res!669846 (= (content!2281 lt!515142) ((_ map or) (content!2281 l1!3136) (content!2281 l2!3105))))))

(declare-fun e!947961 () List!15762)

(assert (=> d!434879 (= lt!515142 e!947961)))

(declare-fun c!243053 () Bool)

(assert (=> d!434879 (= c!243053 ((_ is Nil!15696) l1!3136))))

(assert (=> d!434879 (= (++!4234 l1!3136 l2!3105) lt!515142)))

(declare-fun b!1482595 () Bool)

(declare-fun res!669847 () Bool)

(assert (=> b!1482595 (=> (not res!669847) (not e!947962))))

(declare-fun size!12717 (List!15762) Int)

(assert (=> b!1482595 (= res!669847 (= (size!12717 lt!515142) (+ (size!12717 l1!3136) (size!12717 l2!3105))))))

(declare-fun b!1482594 () Bool)

(assert (=> b!1482594 (= e!947961 (Cons!15696 (h!21097 l1!3136) (++!4234 (t!137621 l1!3136) l2!3105)))))

(declare-fun b!1482593 () Bool)

(assert (=> b!1482593 (= e!947961 l2!3105)))

(declare-fun b!1482596 () Bool)

(assert (=> b!1482596 (= e!947962 (or (not (= l2!3105 Nil!15696)) (= lt!515142 l1!3136)))))

(assert (= (and d!434879 c!243053) b!1482593))

(assert (= (and d!434879 (not c!243053)) b!1482594))

(assert (= (and d!434879 res!669846) b!1482595))

(assert (= (and b!1482595 res!669847) b!1482596))

(declare-fun m!1729133 () Bool)

(assert (=> d!434879 m!1729133))

(declare-fun m!1729135 () Bool)

(assert (=> d!434879 m!1729135))

(declare-fun m!1729137 () Bool)

(assert (=> d!434879 m!1729137))

(declare-fun m!1729139 () Bool)

(assert (=> b!1482595 m!1729139))

(declare-fun m!1729141 () Bool)

(assert (=> b!1482595 m!1729141))

(declare-fun m!1729143 () Bool)

(assert (=> b!1482595 m!1729143))

(declare-fun m!1729145 () Bool)

(assert (=> b!1482594 m!1729145))

(assert (=> b!1482476 d!434879))

(declare-fun d!434881 () Bool)

(assert (=> d!434881 (rulesProduceEachTokenIndividuallyList!822 thiss!27374 rules!4290 (++!4234 l1!3136 l2!3105))))

(declare-fun lt!515162 () Unit!25580)

(declare-fun choose!9073 (LexerInterface!2455 List!15763 List!15762 List!15762) Unit!25580)

(assert (=> d!434881 (= lt!515162 (choose!9073 thiss!27374 rules!4290 l1!3136 l2!3105))))

(assert (=> d!434881 (not (isEmpty!9823 rules!4290))))

(assert (=> d!434881 (= (lemmaRulesProduceEachTokenIndividuallyConcat!78 thiss!27374 rules!4290 l1!3136 l2!3105) lt!515162)))

(declare-fun bs!346030 () Bool)

(assert (= bs!346030 d!434881))

(assert (=> bs!346030 m!1728963))

(assert (=> bs!346030 m!1728963))

(declare-fun m!1729209 () Bool)

(assert (=> bs!346030 m!1729209))

(declare-fun m!1729211 () Bool)

(assert (=> bs!346030 m!1729211))

(assert (=> bs!346030 m!1728995))

(assert (=> b!1482476 d!434881))

(declare-fun d!434895 () Bool)

(assert (=> d!434895 (rulesProduceIndividualToken!1312 thiss!27374 rules!4290 lt!515073)))

(declare-fun lt!515168 () Unit!25580)

(declare-fun choose!9074 (LexerInterface!2455 List!15763 List!15762 Token!5260) Unit!25580)

(assert (=> d!434895 (= lt!515168 (choose!9074 thiss!27374 rules!4290 l2!3105 lt!515073))))

(assert (=> d!434895 (not (isEmpty!9823 rules!4290))))

(assert (=> d!434895 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!493 thiss!27374 rules!4290 l2!3105 lt!515073) lt!515168)))

(declare-fun bs!346031 () Bool)

(assert (= bs!346031 d!434895))

(assert (=> bs!346031 m!1728979))

(declare-fun m!1729227 () Bool)

(assert (=> bs!346031 m!1729227))

(assert (=> bs!346031 m!1728995))

(assert (=> b!1482466 d!434895))

(declare-fun d!434899 () Bool)

(declare-fun lt!515178 () Bool)

(declare-fun e!948044 () Bool)

(assert (=> d!434899 (= lt!515178 e!948044)))

(declare-fun res!669883 () Bool)

(assert (=> d!434899 (=> (not res!669883) (not e!948044))))

(declare-datatypes ((IArray!10703 0))(
  ( (IArray!10704 (innerList!5409 List!15762)) )
))
(declare-datatypes ((Conc!5349 0))(
  ( (Node!5349 (left!13239 Conc!5349) (right!13569 Conc!5349) (csize!10928 Int) (cheight!5560 Int)) (Leaf!7950 (xs!8104 IArray!10703) (csize!10929 Int)) (Empty!5349) )
))
(declare-datatypes ((BalanceConc!10638 0))(
  ( (BalanceConc!10639 (c!243071 Conc!5349)) )
))
(declare-fun list!6241 (BalanceConc!10638) List!15762)

(declare-datatypes ((tuple2!14350 0))(
  ( (tuple2!14351 (_1!8061 BalanceConc!10638) (_2!8061 BalanceConc!10634)) )
))
(declare-fun lex!1112 (LexerInterface!2455 List!15763 BalanceConc!10634) tuple2!14350)

(declare-fun print!1147 (LexerInterface!2455 BalanceConc!10638) BalanceConc!10634)

(declare-fun singletonSeq!1344 (Token!5260) BalanceConc!10638)

(assert (=> d!434899 (= res!669883 (= (list!6241 (_1!8061 (lex!1112 thiss!27374 rules!4290 (print!1147 thiss!27374 (singletonSeq!1344 lt!515077))))) (list!6241 (singletonSeq!1344 lt!515077))))))

(declare-fun e!948045 () Bool)

(assert (=> d!434899 (= lt!515178 e!948045)))

(declare-fun res!669882 () Bool)

(assert (=> d!434899 (=> (not res!669882) (not e!948045))))

(declare-fun lt!515177 () tuple2!14350)

(declare-fun size!12718 (BalanceConc!10638) Int)

(assert (=> d!434899 (= res!669882 (= (size!12718 (_1!8061 lt!515177)) 1))))

(assert (=> d!434899 (= lt!515177 (lex!1112 thiss!27374 rules!4290 (print!1147 thiss!27374 (singletonSeq!1344 lt!515077))))))

(assert (=> d!434899 (not (isEmpty!9823 rules!4290))))

(assert (=> d!434899 (= (rulesProduceIndividualToken!1312 thiss!27374 rules!4290 lt!515077) lt!515178)))

(declare-fun b!1482704 () Bool)

(declare-fun res!669884 () Bool)

(assert (=> b!1482704 (=> (not res!669884) (not e!948045))))

(declare-fun apply!4067 (BalanceConc!10638 Int) Token!5260)

(assert (=> b!1482704 (= res!669884 (= (apply!4067 (_1!8061 lt!515177) 0) lt!515077))))

(declare-fun b!1482705 () Bool)

(declare-fun isEmpty!9826 (BalanceConc!10634) Bool)

(assert (=> b!1482705 (= e!948045 (isEmpty!9826 (_2!8061 lt!515177)))))

(declare-fun b!1482706 () Bool)

(assert (=> b!1482706 (= e!948044 (isEmpty!9826 (_2!8061 (lex!1112 thiss!27374 rules!4290 (print!1147 thiss!27374 (singletonSeq!1344 lt!515077))))))))

(assert (= (and d!434899 res!669882) b!1482704))

(assert (= (and b!1482704 res!669884) b!1482705))

(assert (= (and d!434899 res!669883) b!1482706))

(declare-fun m!1729263 () Bool)

(assert (=> d!434899 m!1729263))

(declare-fun m!1729265 () Bool)

(assert (=> d!434899 m!1729265))

(declare-fun m!1729267 () Bool)

(assert (=> d!434899 m!1729267))

(assert (=> d!434899 m!1729263))

(assert (=> d!434899 m!1729267))

(assert (=> d!434899 m!1728995))

(declare-fun m!1729269 () Bool)

(assert (=> d!434899 m!1729269))

(declare-fun m!1729271 () Bool)

(assert (=> d!434899 m!1729271))

(assert (=> d!434899 m!1729267))

(declare-fun m!1729273 () Bool)

(assert (=> d!434899 m!1729273))

(declare-fun m!1729275 () Bool)

(assert (=> b!1482704 m!1729275))

(declare-fun m!1729277 () Bool)

(assert (=> b!1482705 m!1729277))

(assert (=> b!1482706 m!1729267))

(assert (=> b!1482706 m!1729267))

(assert (=> b!1482706 m!1729263))

(assert (=> b!1482706 m!1729263))

(assert (=> b!1482706 m!1729265))

(declare-fun m!1729279 () Bool)

(assert (=> b!1482706 m!1729279))

(assert (=> b!1482466 d!434899))

(declare-fun d!434905 () Bool)

(assert (=> d!434905 (= (head!3087 l2!3105) (h!21097 l2!3105))))

(assert (=> b!1482466 d!434905))

(declare-fun d!434907 () Bool)

(declare-fun lt!515181 () Token!5260)

(declare-fun contains!2959 (List!15762 Token!5260) Bool)

(assert (=> d!434907 (contains!2959 l1!3136 lt!515181)))

(declare-fun e!948048 () Token!5260)

(assert (=> d!434907 (= lt!515181 e!948048)))

(declare-fun c!243061 () Bool)

(assert (=> d!434907 (= c!243061 (and ((_ is Cons!15696) l1!3136) ((_ is Nil!15696) (t!137621 l1!3136))))))

(assert (=> d!434907 (not (isEmpty!9822 l1!3136))))

(assert (=> d!434907 (= (last!357 l1!3136) lt!515181)))

(declare-fun b!1482711 () Bool)

(assert (=> b!1482711 (= e!948048 (h!21097 l1!3136))))

(declare-fun b!1482712 () Bool)

(assert (=> b!1482712 (= e!948048 (last!357 (t!137621 l1!3136)))))

(assert (= (and d!434907 c!243061) b!1482711))

(assert (= (and d!434907 (not c!243061)) b!1482712))

(declare-fun m!1729281 () Bool)

(assert (=> d!434907 m!1729281))

(assert (=> d!434907 m!1728953))

(declare-fun m!1729283 () Bool)

(assert (=> b!1482712 m!1729283))

(assert (=> b!1482466 d!434907))

(declare-fun d!434909 () Bool)

(assert (=> d!434909 (rulesProduceIndividualToken!1312 thiss!27374 rules!4290 lt!515077)))

(declare-fun lt!515182 () Unit!25580)

(assert (=> d!434909 (= lt!515182 (choose!9074 thiss!27374 rules!4290 l1!3136 lt!515077))))

(assert (=> d!434909 (not (isEmpty!9823 rules!4290))))

(assert (=> d!434909 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!493 thiss!27374 rules!4290 l1!3136 lt!515077) lt!515182)))

(declare-fun bs!346035 () Bool)

(assert (= bs!346035 d!434909))

(assert (=> bs!346035 m!1728981))

(declare-fun m!1729285 () Bool)

(assert (=> bs!346035 m!1729285))

(assert (=> bs!346035 m!1728995))

(assert (=> b!1482466 d!434909))

(declare-fun d!434911 () Bool)

(declare-fun prefixMatchZipperSequence!391 (Regex!4113 BalanceConc!10634) Bool)

(declare-fun rulesRegex!439 (LexerInterface!2455 List!15763) Regex!4113)

(declare-fun ++!4236 (BalanceConc!10634 BalanceConc!10634) BalanceConc!10634)

(declare-fun singletonSeq!1345 (C!8404) BalanceConc!10634)

(declare-fun apply!4068 (BalanceConc!10634 Int) C!8404)

(assert (=> d!434911 (= (separableTokensPredicate!594 thiss!27374 lt!515077 lt!515073 rules!4290) (not (prefixMatchZipperSequence!391 (rulesRegex!439 thiss!27374 rules!4290) (++!4236 (charsOf!1607 lt!515077) (singletonSeq!1345 (apply!4068 (charsOf!1607 lt!515073) 0))))))))

(declare-fun bs!346036 () Bool)

(assert (= bs!346036 d!434911))

(declare-fun m!1729287 () Bool)

(assert (=> bs!346036 m!1729287))

(declare-fun m!1729289 () Bool)

(assert (=> bs!346036 m!1729289))

(declare-fun m!1729291 () Bool)

(assert (=> bs!346036 m!1729291))

(declare-fun m!1729293 () Bool)

(assert (=> bs!346036 m!1729293))

(assert (=> bs!346036 m!1729287))

(declare-fun m!1729295 () Bool)

(assert (=> bs!346036 m!1729295))

(declare-fun m!1729297 () Bool)

(assert (=> bs!346036 m!1729297))

(assert (=> bs!346036 m!1729289))

(assert (=> bs!346036 m!1729295))

(assert (=> bs!346036 m!1729291))

(declare-fun m!1729299 () Bool)

(assert (=> bs!346036 m!1729299))

(assert (=> bs!346036 m!1729293))

(assert (=> bs!346036 m!1729297))

(assert (=> b!1482466 d!434911))

(declare-fun d!434913 () Bool)

(declare-fun lt!515184 () Bool)

(declare-fun e!948049 () Bool)

(assert (=> d!434913 (= lt!515184 e!948049)))

(declare-fun res!669886 () Bool)

(assert (=> d!434913 (=> (not res!669886) (not e!948049))))

(assert (=> d!434913 (= res!669886 (= (list!6241 (_1!8061 (lex!1112 thiss!27374 rules!4290 (print!1147 thiss!27374 (singletonSeq!1344 lt!515073))))) (list!6241 (singletonSeq!1344 lt!515073))))))

(declare-fun e!948050 () Bool)

(assert (=> d!434913 (= lt!515184 e!948050)))

(declare-fun res!669885 () Bool)

(assert (=> d!434913 (=> (not res!669885) (not e!948050))))

(declare-fun lt!515183 () tuple2!14350)

(assert (=> d!434913 (= res!669885 (= (size!12718 (_1!8061 lt!515183)) 1))))

(assert (=> d!434913 (= lt!515183 (lex!1112 thiss!27374 rules!4290 (print!1147 thiss!27374 (singletonSeq!1344 lt!515073))))))

(assert (=> d!434913 (not (isEmpty!9823 rules!4290))))

(assert (=> d!434913 (= (rulesProduceIndividualToken!1312 thiss!27374 rules!4290 lt!515073) lt!515184)))

(declare-fun b!1482713 () Bool)

(declare-fun res!669887 () Bool)

(assert (=> b!1482713 (=> (not res!669887) (not e!948050))))

(assert (=> b!1482713 (= res!669887 (= (apply!4067 (_1!8061 lt!515183) 0) lt!515073))))

(declare-fun b!1482714 () Bool)

(assert (=> b!1482714 (= e!948050 (isEmpty!9826 (_2!8061 lt!515183)))))

(declare-fun b!1482715 () Bool)

(assert (=> b!1482715 (= e!948049 (isEmpty!9826 (_2!8061 (lex!1112 thiss!27374 rules!4290 (print!1147 thiss!27374 (singletonSeq!1344 lt!515073))))))))

(assert (= (and d!434913 res!669885) b!1482713))

(assert (= (and b!1482713 res!669887) b!1482714))

(assert (= (and d!434913 res!669886) b!1482715))

(declare-fun m!1729301 () Bool)

(assert (=> d!434913 m!1729301))

(declare-fun m!1729303 () Bool)

(assert (=> d!434913 m!1729303))

(declare-fun m!1729305 () Bool)

(assert (=> d!434913 m!1729305))

(assert (=> d!434913 m!1729301))

(assert (=> d!434913 m!1729305))

(assert (=> d!434913 m!1728995))

(declare-fun m!1729307 () Bool)

(assert (=> d!434913 m!1729307))

(declare-fun m!1729309 () Bool)

(assert (=> d!434913 m!1729309))

(assert (=> d!434913 m!1729305))

(declare-fun m!1729311 () Bool)

(assert (=> d!434913 m!1729311))

(declare-fun m!1729313 () Bool)

(assert (=> b!1482713 m!1729313))

(declare-fun m!1729315 () Bool)

(assert (=> b!1482714 m!1729315))

(assert (=> b!1482715 m!1729305))

(assert (=> b!1482715 m!1729305))

(assert (=> b!1482715 m!1729301))

(assert (=> b!1482715 m!1729301))

(assert (=> b!1482715 m!1729303))

(declare-fun m!1729317 () Bool)

(assert (=> b!1482715 m!1729317))

(assert (=> b!1482466 d!434913))

(declare-fun d!434915 () Bool)

(assert (=> d!434915 (= (inv!20914 (tag!3063 (rule!4576 (h!21097 l1!3136)))) (= (mod (str.len (value!89418 (tag!3063 (rule!4576 (h!21097 l1!3136))))) 2) 0))))

(assert (=> b!1482487 d!434915))

(declare-fun d!434917 () Bool)

(declare-fun res!669890 () Bool)

(declare-fun e!948053 () Bool)

(assert (=> d!434917 (=> (not res!669890) (not e!948053))))

(declare-fun semiInverseModEq!1059 (Int Int) Bool)

(assert (=> d!434917 (= res!669890 (semiInverseModEq!1059 (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l1!3136)))) (toValue!4138 (transformation!2799 (rule!4576 (h!21097 l1!3136))))))))

(assert (=> d!434917 (= (inv!20917 (transformation!2799 (rule!4576 (h!21097 l1!3136)))) e!948053)))

(declare-fun b!1482718 () Bool)

(declare-fun equivClasses!1018 (Int Int) Bool)

(assert (=> b!1482718 (= e!948053 (equivClasses!1018 (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l1!3136)))) (toValue!4138 (transformation!2799 (rule!4576 (h!21097 l1!3136))))))))

(assert (= (and d!434917 res!669890) b!1482718))

(declare-fun m!1729319 () Bool)

(assert (=> d!434917 m!1729319))

(declare-fun m!1729321 () Bool)

(assert (=> b!1482718 m!1729321))

(assert (=> b!1482487 d!434917))

(declare-fun bs!346037 () Bool)

(declare-fun d!434919 () Bool)

(assert (= bs!346037 (and d!434919 d!434837)))

(declare-fun lambda!63837 () Int)

(assert (=> bs!346037 (= lambda!63837 lambda!63833)))

(declare-fun bs!346038 () Bool)

(assert (= bs!346038 (and d!434919 d!434877)))

(assert (=> bs!346038 (= lambda!63837 lambda!63834)))

(declare-fun b!1482723 () Bool)

(declare-fun e!948058 () Bool)

(assert (=> b!1482723 (= e!948058 true)))

(declare-fun b!1482722 () Bool)

(declare-fun e!948057 () Bool)

(assert (=> b!1482722 (= e!948057 e!948058)))

(declare-fun b!1482721 () Bool)

(declare-fun e!948056 () Bool)

(assert (=> b!1482721 (= e!948056 e!948057)))

(assert (=> d!434919 e!948056))

(assert (= b!1482722 b!1482723))

(assert (= b!1482721 b!1482722))

(assert (= (and d!434919 ((_ is Cons!15697) rules!4290)) b!1482721))

(assert (=> b!1482723 (< (dynLambda!7157 order!9493 (toValue!4138 (transformation!2799 (h!21098 rules!4290)))) (dynLambda!7158 order!9495 lambda!63837))))

(assert (=> b!1482723 (< (dynLambda!7159 order!9497 (toChars!3997 (transformation!2799 (h!21098 rules!4290)))) (dynLambda!7158 order!9495 lambda!63837))))

(assert (=> d!434919 true))

(declare-fun lt!515185 () Bool)

(assert (=> d!434919 (= lt!515185 (forall!3818 l1!3136 lambda!63837))))

(declare-fun e!948055 () Bool)

(assert (=> d!434919 (= lt!515185 e!948055)))

(declare-fun res!669892 () Bool)

(assert (=> d!434919 (=> res!669892 e!948055)))

(assert (=> d!434919 (= res!669892 (not ((_ is Cons!15696) l1!3136)))))

(assert (=> d!434919 (not (isEmpty!9823 rules!4290))))

(assert (=> d!434919 (= (rulesProduceEachTokenIndividuallyList!822 thiss!27374 rules!4290 l1!3136) lt!515185)))

(declare-fun b!1482719 () Bool)

(declare-fun e!948054 () Bool)

(assert (=> b!1482719 (= e!948055 e!948054)))

(declare-fun res!669891 () Bool)

(assert (=> b!1482719 (=> (not res!669891) (not e!948054))))

(assert (=> b!1482719 (= res!669891 (rulesProduceIndividualToken!1312 thiss!27374 rules!4290 (h!21097 l1!3136)))))

(declare-fun b!1482720 () Bool)

(assert (=> b!1482720 (= e!948054 (rulesProduceEachTokenIndividuallyList!822 thiss!27374 rules!4290 (t!137621 l1!3136)))))

(assert (= (and d!434919 (not res!669892)) b!1482719))

(assert (= (and b!1482719 res!669891) b!1482720))

(declare-fun m!1729323 () Bool)

(assert (=> d!434919 m!1729323))

(assert (=> d!434919 m!1728995))

(declare-fun m!1729325 () Bool)

(assert (=> b!1482719 m!1729325))

(declare-fun m!1729327 () Bool)

(assert (=> b!1482720 m!1729327))

(assert (=> b!1482470 d!434919))

(declare-fun b!1482734 () Bool)

(declare-fun res!669895 () Bool)

(declare-fun e!948065 () Bool)

(assert (=> b!1482734 (=> res!669895 e!948065)))

(assert (=> b!1482734 (= res!669895 (not ((_ is IntegerValue!8669) (value!89419 (h!21097 l2!3105)))))))

(declare-fun e!948067 () Bool)

(assert (=> b!1482734 (= e!948067 e!948065)))

(declare-fun d!434921 () Bool)

(declare-fun c!243068 () Bool)

(assert (=> d!434921 (= c!243068 ((_ is IntegerValue!8667) (value!89419 (h!21097 l2!3105))))))

(declare-fun e!948066 () Bool)

(assert (=> d!434921 (= (inv!21 (value!89419 (h!21097 l2!3105))) e!948066)))

(declare-fun b!1482735 () Bool)

(declare-fun inv!17 (TokenValue!2889) Bool)

(assert (=> b!1482735 (= e!948067 (inv!17 (value!89419 (h!21097 l2!3105))))))

(declare-fun b!1482736 () Bool)

(declare-fun inv!16 (TokenValue!2889) Bool)

(assert (=> b!1482736 (= e!948066 (inv!16 (value!89419 (h!21097 l2!3105))))))

(declare-fun b!1482737 () Bool)

(assert (=> b!1482737 (= e!948066 e!948067)))

(declare-fun c!243067 () Bool)

(assert (=> b!1482737 (= c!243067 ((_ is IntegerValue!8668) (value!89419 (h!21097 l2!3105))))))

(declare-fun b!1482738 () Bool)

(declare-fun inv!15 (TokenValue!2889) Bool)

(assert (=> b!1482738 (= e!948065 (inv!15 (value!89419 (h!21097 l2!3105))))))

(assert (= (and d!434921 c!243068) b!1482736))

(assert (= (and d!434921 (not c!243068)) b!1482737))

(assert (= (and b!1482737 c!243067) b!1482735))

(assert (= (and b!1482737 (not c!243067)) b!1482734))

(assert (= (and b!1482734 (not res!669895)) b!1482738))

(declare-fun m!1729329 () Bool)

(assert (=> b!1482735 m!1729329))

(declare-fun m!1729331 () Bool)

(assert (=> b!1482736 m!1729331))

(declare-fun m!1729333 () Bool)

(assert (=> b!1482738 m!1729333))

(assert (=> b!1482468 d!434921))

(declare-fun b!1482739 () Bool)

(declare-fun res!669896 () Bool)

(declare-fun e!948068 () Bool)

(assert (=> b!1482739 (=> res!669896 e!948068)))

(assert (=> b!1482739 (= res!669896 (not ((_ is IntegerValue!8669) (value!89419 (h!21097 l1!3136)))))))

(declare-fun e!948070 () Bool)

(assert (=> b!1482739 (= e!948070 e!948068)))

(declare-fun d!434923 () Bool)

(declare-fun c!243070 () Bool)

(assert (=> d!434923 (= c!243070 ((_ is IntegerValue!8667) (value!89419 (h!21097 l1!3136))))))

(declare-fun e!948069 () Bool)

(assert (=> d!434923 (= (inv!21 (value!89419 (h!21097 l1!3136))) e!948069)))

(declare-fun b!1482740 () Bool)

(assert (=> b!1482740 (= e!948070 (inv!17 (value!89419 (h!21097 l1!3136))))))

(declare-fun b!1482741 () Bool)

(assert (=> b!1482741 (= e!948069 (inv!16 (value!89419 (h!21097 l1!3136))))))

(declare-fun b!1482742 () Bool)

(assert (=> b!1482742 (= e!948069 e!948070)))

(declare-fun c!243069 () Bool)

(assert (=> b!1482742 (= c!243069 ((_ is IntegerValue!8668) (value!89419 (h!21097 l1!3136))))))

(declare-fun b!1482743 () Bool)

(assert (=> b!1482743 (= e!948068 (inv!15 (value!89419 (h!21097 l1!3136))))))

(assert (= (and d!434923 c!243070) b!1482741))

(assert (= (and d!434923 (not c!243070)) b!1482742))

(assert (= (and b!1482742 c!243069) b!1482740))

(assert (= (and b!1482742 (not c!243069)) b!1482739))

(assert (= (and b!1482739 (not res!669896)) b!1482743))

(declare-fun m!1729335 () Bool)

(assert (=> b!1482740 m!1729335))

(declare-fun m!1729337 () Bool)

(assert (=> b!1482741 m!1729337))

(declare-fun m!1729339 () Bool)

(assert (=> b!1482743 m!1729339))

(assert (=> b!1482479 d!434923))

(declare-fun d!434925 () Bool)

(assert (=> d!434925 (= (inv!20914 (tag!3063 (h!21098 rules!4290))) (= (mod (str.len (value!89418 (tag!3063 (h!21098 rules!4290)))) 2) 0))))

(assert (=> b!1482472 d!434925))

(declare-fun d!434927 () Bool)

(declare-fun res!669897 () Bool)

(declare-fun e!948071 () Bool)

(assert (=> d!434927 (=> (not res!669897) (not e!948071))))

(assert (=> d!434927 (= res!669897 (semiInverseModEq!1059 (toChars!3997 (transformation!2799 (h!21098 rules!4290))) (toValue!4138 (transformation!2799 (h!21098 rules!4290)))))))

(assert (=> d!434927 (= (inv!20917 (transformation!2799 (h!21098 rules!4290))) e!948071)))

(declare-fun b!1482744 () Bool)

(assert (=> b!1482744 (= e!948071 (equivClasses!1018 (toChars!3997 (transformation!2799 (h!21098 rules!4290))) (toValue!4138 (transformation!2799 (h!21098 rules!4290)))))))

(assert (= (and d!434927 res!669897) b!1482744))

(declare-fun m!1729341 () Bool)

(assert (=> d!434927 m!1729341))

(declare-fun m!1729343 () Bool)

(assert (=> b!1482744 m!1729343))

(assert (=> b!1482472 d!434927))

(declare-fun d!434929 () Bool)

(assert (=> d!434929 (= (isEmpty!9822 l2!3105) ((_ is Nil!15696) l2!3105))))

(assert (=> b!1482483 d!434929))

(assert (=> b!1482481 d!434833))

(declare-fun d!434931 () Bool)

(declare-fun res!669900 () Bool)

(declare-fun e!948074 () Bool)

(assert (=> d!434931 (=> (not res!669900) (not e!948074))))

(declare-fun rulesValid!1030 (LexerInterface!2455 List!15763) Bool)

(assert (=> d!434931 (= res!669900 (rulesValid!1030 thiss!27374 rules!4290))))

(assert (=> d!434931 (= (rulesInvariant!2244 thiss!27374 rules!4290) e!948074)))

(declare-fun b!1482747 () Bool)

(declare-datatypes ((List!15765 0))(
  ( (Nil!15699) (Cons!15699 (h!21100 String!18701) (t!137680 List!15765)) )
))
(declare-fun noDuplicateTag!1030 (LexerInterface!2455 List!15763 List!15765) Bool)

(assert (=> b!1482747 (= e!948074 (noDuplicateTag!1030 thiss!27374 rules!4290 Nil!15699))))

(assert (= (and d!434931 res!669900) b!1482747))

(declare-fun m!1729345 () Bool)

(assert (=> d!434931 m!1729345))

(declare-fun m!1729347 () Bool)

(assert (=> b!1482747 m!1729347))

(assert (=> b!1482471 d!434931))

(declare-fun d!434933 () Bool)

(assert (=> d!434933 (= (isEmpty!9823 rules!4290) ((_ is Nil!15697) rules!4290))))

(assert (=> b!1482482 d!434933))

(declare-fun d!434935 () Bool)

(assert (=> d!434935 (= (isEmpty!9822 l1!3136) ((_ is Nil!15696) l1!3136))))

(assert (=> b!1482464 d!434935))

(declare-fun d!434937 () Bool)

(declare-fun res!669905 () Bool)

(declare-fun e!948077 () Bool)

(assert (=> d!434937 (=> (not res!669905) (not e!948077))))

(declare-fun isEmpty!9827 (List!15761) Bool)

(assert (=> d!434937 (= res!669905 (not (isEmpty!9827 (originalCharacters!3661 (h!21097 l2!3105)))))))

(assert (=> d!434937 (= (inv!20918 (h!21097 l2!3105)) e!948077)))

(declare-fun b!1482752 () Bool)

(declare-fun res!669906 () Bool)

(assert (=> b!1482752 (=> (not res!669906) (not e!948077))))

(declare-fun list!6242 (BalanceConc!10634) List!15761)

(declare-fun dynLambda!7160 (Int TokenValue!2889) BalanceConc!10634)

(assert (=> b!1482752 (= res!669906 (= (originalCharacters!3661 (h!21097 l2!3105)) (list!6242 (dynLambda!7160 (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l2!3105)))) (value!89419 (h!21097 l2!3105))))))))

(declare-fun b!1482753 () Bool)

(declare-fun size!12719 (List!15761) Int)

(assert (=> b!1482753 (= e!948077 (= (size!12711 (h!21097 l2!3105)) (size!12719 (originalCharacters!3661 (h!21097 l2!3105)))))))

(assert (= (and d!434937 res!669905) b!1482752))

(assert (= (and b!1482752 res!669906) b!1482753))

(declare-fun b_lambda!46463 () Bool)

(assert (=> (not b_lambda!46463) (not b!1482752)))

(declare-fun t!137656 () Bool)

(declare-fun tb!84881 () Bool)

(assert (=> (and b!1482477 (= (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l1!3136)))) (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l2!3105))))) t!137656) tb!84881))

(declare-fun b!1482758 () Bool)

(declare-fun e!948080 () Bool)

(declare-fun tp!420704 () Bool)

(declare-fun inv!20921 (Conc!5347) Bool)

(assert (=> b!1482758 (= e!948080 (and (inv!20921 (c!243041 (dynLambda!7160 (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l2!3105)))) (value!89419 (h!21097 l2!3105))))) tp!420704))))

(declare-fun result!102068 () Bool)

(declare-fun inv!20922 (BalanceConc!10634) Bool)

(assert (=> tb!84881 (= result!102068 (and (inv!20922 (dynLambda!7160 (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l2!3105)))) (value!89419 (h!21097 l2!3105)))) e!948080))))

(assert (= tb!84881 b!1482758))

(declare-fun m!1729349 () Bool)

(assert (=> b!1482758 m!1729349))

(declare-fun m!1729351 () Bool)

(assert (=> tb!84881 m!1729351))

(assert (=> b!1482752 t!137656))

(declare-fun b_and!103073 () Bool)

(assert (= b_and!103039 (and (=> t!137656 result!102068) b_and!103073)))

(declare-fun t!137658 () Bool)

(declare-fun tb!84883 () Bool)

(assert (=> (and b!1482469 (= (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l2!3105)))) (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l2!3105))))) t!137658) tb!84883))

(declare-fun result!102072 () Bool)

(assert (= result!102072 result!102068))

(assert (=> b!1482752 t!137658))

(declare-fun b_and!103075 () Bool)

(assert (= b_and!103043 (and (=> t!137658 result!102072) b_and!103075)))

(declare-fun tb!84885 () Bool)

(declare-fun t!137660 () Bool)

(assert (=> (and b!1482480 (= (toChars!3997 (transformation!2799 (h!21098 rules!4290))) (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l2!3105))))) t!137660) tb!84885))

(declare-fun result!102074 () Bool)

(assert (= result!102074 result!102068))

(assert (=> b!1482752 t!137660))

(declare-fun b_and!103077 () Bool)

(assert (= b_and!103047 (and (=> t!137660 result!102074) b_and!103077)))

(declare-fun m!1729353 () Bool)

(assert (=> d!434937 m!1729353))

(declare-fun m!1729355 () Bool)

(assert (=> b!1482752 m!1729355))

(assert (=> b!1482752 m!1729355))

(declare-fun m!1729357 () Bool)

(assert (=> b!1482752 m!1729357))

(declare-fun m!1729359 () Bool)

(assert (=> b!1482753 m!1729359))

(assert (=> b!1482475 d!434937))

(declare-fun d!434939 () Bool)

(declare-fun res!669908 () Bool)

(declare-fun e!948082 () Bool)

(assert (=> d!434939 (=> res!669908 e!948082)))

(assert (=> d!434939 (= res!669908 (or (not ((_ is Cons!15696) l1!3136)) (not ((_ is Cons!15696) (t!137621 l1!3136)))))))

(assert (=> d!434939 (= (tokensListTwoByTwoPredicateSeparableList!315 thiss!27374 l1!3136 rules!4290) e!948082)))

(declare-fun b!1482759 () Bool)

(declare-fun e!948081 () Bool)

(assert (=> b!1482759 (= e!948082 e!948081)))

(declare-fun res!669907 () Bool)

(assert (=> b!1482759 (=> (not res!669907) (not e!948081))))

(assert (=> b!1482759 (= res!669907 (separableTokensPredicate!594 thiss!27374 (h!21097 l1!3136) (h!21097 (t!137621 l1!3136)) rules!4290))))

(declare-fun lt!515190 () Unit!25580)

(declare-fun Unit!25594 () Unit!25580)

(assert (=> b!1482759 (= lt!515190 Unit!25594)))

(assert (=> b!1482759 (> (size!12715 (charsOf!1607 (h!21097 (t!137621 l1!3136)))) 0)))

(declare-fun lt!515191 () Unit!25580)

(declare-fun Unit!25595 () Unit!25580)

(assert (=> b!1482759 (= lt!515191 Unit!25595)))

(assert (=> b!1482759 (rulesProduceIndividualToken!1312 thiss!27374 rules!4290 (h!21097 (t!137621 l1!3136)))))

(declare-fun lt!515186 () Unit!25580)

(declare-fun Unit!25596 () Unit!25580)

(assert (=> b!1482759 (= lt!515186 Unit!25596)))

(assert (=> b!1482759 (rulesProduceIndividualToken!1312 thiss!27374 rules!4290 (h!21097 l1!3136))))

(declare-fun lt!515187 () Unit!25580)

(declare-fun lt!515189 () Unit!25580)

(assert (=> b!1482759 (= lt!515187 lt!515189)))

(assert (=> b!1482759 (rulesProduceIndividualToken!1312 thiss!27374 rules!4290 (h!21097 (t!137621 l1!3136)))))

(assert (=> b!1482759 (= lt!515189 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!493 thiss!27374 rules!4290 l1!3136 (h!21097 (t!137621 l1!3136))))))

(declare-fun lt!515192 () Unit!25580)

(declare-fun lt!515188 () Unit!25580)

(assert (=> b!1482759 (= lt!515192 lt!515188)))

(assert (=> b!1482759 (rulesProduceIndividualToken!1312 thiss!27374 rules!4290 (h!21097 l1!3136))))

(assert (=> b!1482759 (= lt!515188 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!493 thiss!27374 rules!4290 l1!3136 (h!21097 l1!3136)))))

(declare-fun b!1482760 () Bool)

(assert (=> b!1482760 (= e!948081 (tokensListTwoByTwoPredicateSeparableList!315 thiss!27374 (Cons!15696 (h!21097 (t!137621 l1!3136)) (t!137621 (t!137621 l1!3136))) rules!4290))))

(assert (= (and d!434939 (not res!669908)) b!1482759))

(assert (= (and b!1482759 res!669907) b!1482760))

(declare-fun m!1729361 () Bool)

(assert (=> b!1482759 m!1729361))

(assert (=> b!1482759 m!1729325))

(declare-fun m!1729363 () Bool)

(assert (=> b!1482759 m!1729363))

(declare-fun m!1729365 () Bool)

(assert (=> b!1482759 m!1729365))

(declare-fun m!1729367 () Bool)

(assert (=> b!1482759 m!1729367))

(declare-fun m!1729369 () Bool)

(assert (=> b!1482759 m!1729369))

(declare-fun m!1729371 () Bool)

(assert (=> b!1482759 m!1729371))

(assert (=> b!1482759 m!1729369))

(declare-fun m!1729373 () Bool)

(assert (=> b!1482760 m!1729373))

(assert (=> b!1482486 d!434939))

(declare-fun d!434941 () Bool)

(declare-fun res!669909 () Bool)

(declare-fun e!948083 () Bool)

(assert (=> d!434941 (=> (not res!669909) (not e!948083))))

(assert (=> d!434941 (= res!669909 (not (isEmpty!9827 (originalCharacters!3661 (h!21097 l1!3136)))))))

(assert (=> d!434941 (= (inv!20918 (h!21097 l1!3136)) e!948083)))

(declare-fun b!1482761 () Bool)

(declare-fun res!669910 () Bool)

(assert (=> b!1482761 (=> (not res!669910) (not e!948083))))

(assert (=> b!1482761 (= res!669910 (= (originalCharacters!3661 (h!21097 l1!3136)) (list!6242 (dynLambda!7160 (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l1!3136)))) (value!89419 (h!21097 l1!3136))))))))

(declare-fun b!1482762 () Bool)

(assert (=> b!1482762 (= e!948083 (= (size!12711 (h!21097 l1!3136)) (size!12719 (originalCharacters!3661 (h!21097 l1!3136)))))))

(assert (= (and d!434941 res!669909) b!1482761))

(assert (= (and b!1482761 res!669910) b!1482762))

(declare-fun b_lambda!46465 () Bool)

(assert (=> (not b_lambda!46465) (not b!1482761)))

(declare-fun t!137662 () Bool)

(declare-fun tb!84887 () Bool)

(assert (=> (and b!1482477 (= (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l1!3136)))) (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l1!3136))))) t!137662) tb!84887))

(declare-fun b!1482763 () Bool)

(declare-fun e!948084 () Bool)

(declare-fun tp!420705 () Bool)

(assert (=> b!1482763 (= e!948084 (and (inv!20921 (c!243041 (dynLambda!7160 (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l1!3136)))) (value!89419 (h!21097 l1!3136))))) tp!420705))))

(declare-fun result!102076 () Bool)

(assert (=> tb!84887 (= result!102076 (and (inv!20922 (dynLambda!7160 (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l1!3136)))) (value!89419 (h!21097 l1!3136)))) e!948084))))

(assert (= tb!84887 b!1482763))

(declare-fun m!1729375 () Bool)

(assert (=> b!1482763 m!1729375))

(declare-fun m!1729377 () Bool)

(assert (=> tb!84887 m!1729377))

(assert (=> b!1482761 t!137662))

(declare-fun b_and!103079 () Bool)

(assert (= b_and!103073 (and (=> t!137662 result!102076) b_and!103079)))

(declare-fun tb!84889 () Bool)

(declare-fun t!137664 () Bool)

(assert (=> (and b!1482469 (= (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l2!3105)))) (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l1!3136))))) t!137664) tb!84889))

(declare-fun result!102078 () Bool)

(assert (= result!102078 result!102076))

(assert (=> b!1482761 t!137664))

(declare-fun b_and!103081 () Bool)

(assert (= b_and!103075 (and (=> t!137664 result!102078) b_and!103081)))

(declare-fun tb!84891 () Bool)

(declare-fun t!137666 () Bool)

(assert (=> (and b!1482480 (= (toChars!3997 (transformation!2799 (h!21098 rules!4290))) (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l1!3136))))) t!137666) tb!84891))

(declare-fun result!102080 () Bool)

(assert (= result!102080 result!102076))

(assert (=> b!1482761 t!137666))

(declare-fun b_and!103083 () Bool)

(assert (= b_and!103077 (and (=> t!137666 result!102080) b_and!103083)))

(declare-fun m!1729379 () Bool)

(assert (=> d!434941 m!1729379))

(declare-fun m!1729381 () Bool)

(assert (=> b!1482761 m!1729381))

(assert (=> b!1482761 m!1729381))

(declare-fun m!1729383 () Bool)

(assert (=> b!1482761 m!1729383))

(declare-fun m!1729385 () Bool)

(assert (=> b!1482762 m!1729385))

(assert (=> b!1482473 d!434941))

(declare-fun d!434943 () Bool)

(declare-fun res!669912 () Bool)

(declare-fun e!948086 () Bool)

(assert (=> d!434943 (=> res!669912 e!948086)))

(assert (=> d!434943 (= res!669912 (or (not ((_ is Cons!15696) l2!3105)) (not ((_ is Cons!15696) (t!137621 l2!3105)))))))

(assert (=> d!434943 (= (tokensListTwoByTwoPredicateSeparableList!315 thiss!27374 l2!3105 rules!4290) e!948086)))

(declare-fun b!1482764 () Bool)

(declare-fun e!948085 () Bool)

(assert (=> b!1482764 (= e!948086 e!948085)))

(declare-fun res!669911 () Bool)

(assert (=> b!1482764 (=> (not res!669911) (not e!948085))))

(assert (=> b!1482764 (= res!669911 (separableTokensPredicate!594 thiss!27374 (h!21097 l2!3105) (h!21097 (t!137621 l2!3105)) rules!4290))))

(declare-fun lt!515197 () Unit!25580)

(declare-fun Unit!25597 () Unit!25580)

(assert (=> b!1482764 (= lt!515197 Unit!25597)))

(assert (=> b!1482764 (> (size!12715 (charsOf!1607 (h!21097 (t!137621 l2!3105)))) 0)))

(declare-fun lt!515198 () Unit!25580)

(declare-fun Unit!25598 () Unit!25580)

(assert (=> b!1482764 (= lt!515198 Unit!25598)))

(assert (=> b!1482764 (rulesProduceIndividualToken!1312 thiss!27374 rules!4290 (h!21097 (t!137621 l2!3105)))))

(declare-fun lt!515193 () Unit!25580)

(declare-fun Unit!25599 () Unit!25580)

(assert (=> b!1482764 (= lt!515193 Unit!25599)))

(assert (=> b!1482764 (rulesProduceIndividualToken!1312 thiss!27374 rules!4290 (h!21097 l2!3105))))

(declare-fun lt!515194 () Unit!25580)

(declare-fun lt!515196 () Unit!25580)

(assert (=> b!1482764 (= lt!515194 lt!515196)))

(assert (=> b!1482764 (rulesProduceIndividualToken!1312 thiss!27374 rules!4290 (h!21097 (t!137621 l2!3105)))))

(assert (=> b!1482764 (= lt!515196 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!493 thiss!27374 rules!4290 l2!3105 (h!21097 (t!137621 l2!3105))))))

(declare-fun lt!515199 () Unit!25580)

(declare-fun lt!515195 () Unit!25580)

(assert (=> b!1482764 (= lt!515199 lt!515195)))

(assert (=> b!1482764 (rulesProduceIndividualToken!1312 thiss!27374 rules!4290 (h!21097 l2!3105))))

(assert (=> b!1482764 (= lt!515195 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!493 thiss!27374 rules!4290 l2!3105 (h!21097 l2!3105)))))

(declare-fun b!1482765 () Bool)

(assert (=> b!1482765 (= e!948085 (tokensListTwoByTwoPredicateSeparableList!315 thiss!27374 (Cons!15696 (h!21097 (t!137621 l2!3105)) (t!137621 (t!137621 l2!3105))) rules!4290))))

(assert (= (and d!434943 (not res!669912)) b!1482764))

(assert (= (and b!1482764 res!669911) b!1482765))

(declare-fun m!1729387 () Bool)

(assert (=> b!1482764 m!1729387))

(assert (=> b!1482764 m!1729089))

(declare-fun m!1729389 () Bool)

(assert (=> b!1482764 m!1729389))

(declare-fun m!1729391 () Bool)

(assert (=> b!1482764 m!1729391))

(declare-fun m!1729393 () Bool)

(assert (=> b!1482764 m!1729393))

(declare-fun m!1729395 () Bool)

(assert (=> b!1482764 m!1729395))

(declare-fun m!1729397 () Bool)

(assert (=> b!1482764 m!1729397))

(assert (=> b!1482764 m!1729395))

(declare-fun m!1729399 () Bool)

(assert (=> b!1482765 m!1729399))

(assert (=> b!1482474 d!434943))

(declare-fun d!434945 () Bool)

(assert (=> d!434945 (= (inv!20914 (tag!3063 (rule!4576 (h!21097 l2!3105)))) (= (mod (str.len (value!89418 (tag!3063 (rule!4576 (h!21097 l2!3105))))) 2) 0))))

(assert (=> b!1482463 d!434945))

(declare-fun d!434947 () Bool)

(declare-fun res!669913 () Bool)

(declare-fun e!948087 () Bool)

(assert (=> d!434947 (=> (not res!669913) (not e!948087))))

(assert (=> d!434947 (= res!669913 (semiInverseModEq!1059 (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l2!3105)))) (toValue!4138 (transformation!2799 (rule!4576 (h!21097 l2!3105))))))))

(assert (=> d!434947 (= (inv!20917 (transformation!2799 (rule!4576 (h!21097 l2!3105)))) e!948087)))

(declare-fun b!1482766 () Bool)

(assert (=> b!1482766 (= e!948087 (equivClasses!1018 (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l2!3105)))) (toValue!4138 (transformation!2799 (rule!4576 (h!21097 l2!3105))))))))

(assert (= (and d!434947 res!669913) b!1482766))

(declare-fun m!1729401 () Bool)

(assert (=> d!434947 m!1729401))

(declare-fun m!1729403 () Bool)

(assert (=> b!1482766 m!1729403))

(assert (=> b!1482463 d!434947))

(declare-fun b!1482778 () Bool)

(declare-fun e!948090 () Bool)

(declare-fun tp!420719 () Bool)

(declare-fun tp!420718 () Bool)

(assert (=> b!1482778 (= e!948090 (and tp!420719 tp!420718))))

(declare-fun b!1482777 () Bool)

(declare-fun tp_is_empty!6987 () Bool)

(assert (=> b!1482777 (= e!948090 tp_is_empty!6987)))

(assert (=> b!1482487 (= tp!420634 e!948090)))

(declare-fun b!1482780 () Bool)

(declare-fun tp!420716 () Bool)

(declare-fun tp!420720 () Bool)

(assert (=> b!1482780 (= e!948090 (and tp!420716 tp!420720))))

(declare-fun b!1482779 () Bool)

(declare-fun tp!420717 () Bool)

(assert (=> b!1482779 (= e!948090 tp!420717)))

(assert (= (and b!1482487 ((_ is ElementMatch!4113) (regex!2799 (rule!4576 (h!21097 l1!3136))))) b!1482777))

(assert (= (and b!1482487 ((_ is Concat!7003) (regex!2799 (rule!4576 (h!21097 l1!3136))))) b!1482778))

(assert (= (and b!1482487 ((_ is Star!4113) (regex!2799 (rule!4576 (h!21097 l1!3136))))) b!1482779))

(assert (= (and b!1482487 ((_ is Union!4113) (regex!2799 (rule!4576 (h!21097 l1!3136))))) b!1482780))

(declare-fun b!1482785 () Bool)

(declare-fun e!948093 () Bool)

(declare-fun tp!420723 () Bool)

(assert (=> b!1482785 (= e!948093 (and tp_is_empty!6987 tp!420723))))

(assert (=> b!1482468 (= tp!420627 e!948093)))

(assert (= (and b!1482468 ((_ is Cons!15695) (originalCharacters!3661 (h!21097 l2!3105)))) b!1482785))

(declare-fun b!1482786 () Bool)

(declare-fun e!948094 () Bool)

(declare-fun tp!420724 () Bool)

(assert (=> b!1482786 (= e!948094 (and tp_is_empty!6987 tp!420724))))

(assert (=> b!1482479 (= tp!420633 e!948094)))

(assert (= (and b!1482479 ((_ is Cons!15695) (originalCharacters!3661 (h!21097 l1!3136)))) b!1482786))

(declare-fun b!1482788 () Bool)

(declare-fun e!948095 () Bool)

(declare-fun tp!420728 () Bool)

(declare-fun tp!420727 () Bool)

(assert (=> b!1482788 (= e!948095 (and tp!420728 tp!420727))))

(declare-fun b!1482787 () Bool)

(assert (=> b!1482787 (= e!948095 tp_is_empty!6987)))

(assert (=> b!1482472 (= tp!420625 e!948095)))

(declare-fun b!1482790 () Bool)

(declare-fun tp!420725 () Bool)

(declare-fun tp!420729 () Bool)

(assert (=> b!1482790 (= e!948095 (and tp!420725 tp!420729))))

(declare-fun b!1482789 () Bool)

(declare-fun tp!420726 () Bool)

(assert (=> b!1482789 (= e!948095 tp!420726)))

(assert (= (and b!1482472 ((_ is ElementMatch!4113) (regex!2799 (h!21098 rules!4290)))) b!1482787))

(assert (= (and b!1482472 ((_ is Concat!7003) (regex!2799 (h!21098 rules!4290)))) b!1482788))

(assert (= (and b!1482472 ((_ is Star!4113) (regex!2799 (h!21098 rules!4290)))) b!1482789))

(assert (= (and b!1482472 ((_ is Union!4113) (regex!2799 (h!21098 rules!4290)))) b!1482790))

(declare-fun b!1482801 () Bool)

(declare-fun b_free!38367 () Bool)

(declare-fun b_next!39071 () Bool)

(assert (=> b!1482801 (= b_free!38367 (not b_next!39071))))

(declare-fun tp!420739 () Bool)

(declare-fun b_and!103085 () Bool)

(assert (=> b!1482801 (= tp!420739 b_and!103085)))

(declare-fun b_free!38369 () Bool)

(declare-fun b_next!39073 () Bool)

(assert (=> b!1482801 (= b_free!38369 (not b_next!39073))))

(declare-fun t!137668 () Bool)

(declare-fun tb!84893 () Bool)

(assert (=> (and b!1482801 (= (toChars!3997 (transformation!2799 (h!21098 (t!137622 rules!4290)))) (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l2!3105))))) t!137668) tb!84893))

(declare-fun result!102088 () Bool)

(assert (= result!102088 result!102068))

(assert (=> b!1482752 t!137668))

(declare-fun t!137670 () Bool)

(declare-fun tb!84895 () Bool)

(assert (=> (and b!1482801 (= (toChars!3997 (transformation!2799 (h!21098 (t!137622 rules!4290)))) (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l1!3136))))) t!137670) tb!84895))

(declare-fun result!102090 () Bool)

(assert (= result!102090 result!102076))

(assert (=> b!1482761 t!137670))

(declare-fun b_and!103087 () Bool)

(declare-fun tp!420741 () Bool)

(assert (=> b!1482801 (= tp!420741 (and (=> t!137668 result!102088) (=> t!137670 result!102090) b_and!103087))))

(declare-fun e!948106 () Bool)

(assert (=> b!1482801 (= e!948106 (and tp!420739 tp!420741))))

(declare-fun tp!420740 () Bool)

(declare-fun e!948105 () Bool)

(declare-fun b!1482800 () Bool)

(assert (=> b!1482800 (= e!948105 (and tp!420740 (inv!20914 (tag!3063 (h!21098 (t!137622 rules!4290)))) (inv!20917 (transformation!2799 (h!21098 (t!137622 rules!4290)))) e!948106))))

(declare-fun b!1482799 () Bool)

(declare-fun e!948107 () Bool)

(declare-fun tp!420738 () Bool)

(assert (=> b!1482799 (= e!948107 (and e!948105 tp!420738))))

(assert (=> b!1482485 (= tp!420636 e!948107)))

(assert (= b!1482800 b!1482801))

(assert (= b!1482799 b!1482800))

(assert (= (and b!1482485 ((_ is Cons!15697) (t!137622 rules!4290))) b!1482799))

(declare-fun m!1729405 () Bool)

(assert (=> b!1482800 m!1729405))

(declare-fun m!1729407 () Bool)

(assert (=> b!1482800 m!1729407))

(declare-fun b!1482815 () Bool)

(declare-fun b_free!38371 () Bool)

(declare-fun b_next!39075 () Bool)

(assert (=> b!1482815 (= b_free!38371 (not b_next!39075))))

(declare-fun tp!420756 () Bool)

(declare-fun b_and!103089 () Bool)

(assert (=> b!1482815 (= tp!420756 b_and!103089)))

(declare-fun b_free!38373 () Bool)

(declare-fun b_next!39077 () Bool)

(assert (=> b!1482815 (= b_free!38373 (not b_next!39077))))

(declare-fun t!137673 () Bool)

(declare-fun tb!84897 () Bool)

(assert (=> (and b!1482815 (= (toChars!3997 (transformation!2799 (rule!4576 (h!21097 (t!137621 l2!3105))))) (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l2!3105))))) t!137673) tb!84897))

(declare-fun result!102094 () Bool)

(assert (= result!102094 result!102068))

(assert (=> b!1482752 t!137673))

(declare-fun tb!84899 () Bool)

(declare-fun t!137675 () Bool)

(assert (=> (and b!1482815 (= (toChars!3997 (transformation!2799 (rule!4576 (h!21097 (t!137621 l2!3105))))) (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l1!3136))))) t!137675) tb!84899))

(declare-fun result!102096 () Bool)

(assert (= result!102096 result!102076))

(assert (=> b!1482761 t!137675))

(declare-fun tp!420755 () Bool)

(declare-fun b_and!103091 () Bool)

(assert (=> b!1482815 (= tp!420755 (and (=> t!137673 result!102094) (=> t!137675 result!102096) b_and!103091))))

(declare-fun e!948125 () Bool)

(declare-fun b!1482813 () Bool)

(declare-fun tp!420753 () Bool)

(declare-fun e!948123 () Bool)

(assert (=> b!1482813 (= e!948123 (and (inv!21 (value!89419 (h!21097 (t!137621 l2!3105)))) e!948125 tp!420753))))

(declare-fun e!948120 () Bool)

(assert (=> b!1482475 (= tp!420635 e!948120)))

(declare-fun b!1482812 () Bool)

(declare-fun tp!420752 () Bool)

(assert (=> b!1482812 (= e!948120 (and (inv!20918 (h!21097 (t!137621 l2!3105))) e!948123 tp!420752))))

(declare-fun e!948122 () Bool)

(declare-fun tp!420754 () Bool)

(declare-fun b!1482814 () Bool)

(assert (=> b!1482814 (= e!948125 (and tp!420754 (inv!20914 (tag!3063 (rule!4576 (h!21097 (t!137621 l2!3105))))) (inv!20917 (transformation!2799 (rule!4576 (h!21097 (t!137621 l2!3105))))) e!948122))))

(assert (=> b!1482815 (= e!948122 (and tp!420756 tp!420755))))

(assert (= b!1482814 b!1482815))

(assert (= b!1482813 b!1482814))

(assert (= b!1482812 b!1482813))

(assert (= (and b!1482475 ((_ is Cons!15696) (t!137621 l2!3105))) b!1482812))

(declare-fun m!1729409 () Bool)

(assert (=> b!1482813 m!1729409))

(declare-fun m!1729411 () Bool)

(assert (=> b!1482812 m!1729411))

(declare-fun m!1729413 () Bool)

(assert (=> b!1482814 m!1729413))

(declare-fun m!1729415 () Bool)

(assert (=> b!1482814 m!1729415))

(declare-fun b!1482819 () Bool)

(declare-fun b_free!38375 () Bool)

(declare-fun b_next!39079 () Bool)

(assert (=> b!1482819 (= b_free!38375 (not b_next!39079))))

(declare-fun tp!420761 () Bool)

(declare-fun b_and!103093 () Bool)

(assert (=> b!1482819 (= tp!420761 b_and!103093)))

(declare-fun b_free!38377 () Bool)

(declare-fun b_next!39081 () Bool)

(assert (=> b!1482819 (= b_free!38377 (not b_next!39081))))

(declare-fun t!137677 () Bool)

(declare-fun tb!84901 () Bool)

(assert (=> (and b!1482819 (= (toChars!3997 (transformation!2799 (rule!4576 (h!21097 (t!137621 l1!3136))))) (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l2!3105))))) t!137677) tb!84901))

(declare-fun result!102098 () Bool)

(assert (= result!102098 result!102068))

(assert (=> b!1482752 t!137677))

(declare-fun t!137679 () Bool)

(declare-fun tb!84903 () Bool)

(assert (=> (and b!1482819 (= (toChars!3997 (transformation!2799 (rule!4576 (h!21097 (t!137621 l1!3136))))) (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l1!3136))))) t!137679) tb!84903))

(declare-fun result!102100 () Bool)

(assert (= result!102100 result!102076))

(assert (=> b!1482761 t!137679))

(declare-fun b_and!103095 () Bool)

(declare-fun tp!420760 () Bool)

(assert (=> b!1482819 (= tp!420760 (and (=> t!137677 result!102098) (=> t!137679 result!102100) b_and!103095))))

(declare-fun b!1482817 () Bool)

(declare-fun e!948131 () Bool)

(declare-fun tp!420758 () Bool)

(declare-fun e!948129 () Bool)

(assert (=> b!1482817 (= e!948129 (and (inv!21 (value!89419 (h!21097 (t!137621 l1!3136)))) e!948131 tp!420758))))

(declare-fun e!948126 () Bool)

(assert (=> b!1482473 (= tp!420629 e!948126)))

(declare-fun tp!420757 () Bool)

(declare-fun b!1482816 () Bool)

(assert (=> b!1482816 (= e!948126 (and (inv!20918 (h!21097 (t!137621 l1!3136))) e!948129 tp!420757))))

(declare-fun b!1482818 () Bool)

(declare-fun e!948128 () Bool)

(declare-fun tp!420759 () Bool)

(assert (=> b!1482818 (= e!948131 (and tp!420759 (inv!20914 (tag!3063 (rule!4576 (h!21097 (t!137621 l1!3136))))) (inv!20917 (transformation!2799 (rule!4576 (h!21097 (t!137621 l1!3136))))) e!948128))))

(assert (=> b!1482819 (= e!948128 (and tp!420761 tp!420760))))

(assert (= b!1482818 b!1482819))

(assert (= b!1482817 b!1482818))

(assert (= b!1482816 b!1482817))

(assert (= (and b!1482473 ((_ is Cons!15696) (t!137621 l1!3136))) b!1482816))

(declare-fun m!1729417 () Bool)

(assert (=> b!1482817 m!1729417))

(declare-fun m!1729419 () Bool)

(assert (=> b!1482816 m!1729419))

(declare-fun m!1729421 () Bool)

(assert (=> b!1482818 m!1729421))

(declare-fun m!1729423 () Bool)

(assert (=> b!1482818 m!1729423))

(declare-fun b!1482821 () Bool)

(declare-fun e!948132 () Bool)

(declare-fun tp!420765 () Bool)

(declare-fun tp!420764 () Bool)

(assert (=> b!1482821 (= e!948132 (and tp!420765 tp!420764))))

(declare-fun b!1482820 () Bool)

(assert (=> b!1482820 (= e!948132 tp_is_empty!6987)))

(assert (=> b!1482463 (= tp!420631 e!948132)))

(declare-fun b!1482823 () Bool)

(declare-fun tp!420762 () Bool)

(declare-fun tp!420766 () Bool)

(assert (=> b!1482823 (= e!948132 (and tp!420762 tp!420766))))

(declare-fun b!1482822 () Bool)

(declare-fun tp!420763 () Bool)

(assert (=> b!1482822 (= e!948132 tp!420763)))

(assert (= (and b!1482463 ((_ is ElementMatch!4113) (regex!2799 (rule!4576 (h!21097 l2!3105))))) b!1482820))

(assert (= (and b!1482463 ((_ is Concat!7003) (regex!2799 (rule!4576 (h!21097 l2!3105))))) b!1482821))

(assert (= (and b!1482463 ((_ is Star!4113) (regex!2799 (rule!4576 (h!21097 l2!3105))))) b!1482822))

(assert (= (and b!1482463 ((_ is Union!4113) (regex!2799 (rule!4576 (h!21097 l2!3105))))) b!1482823))

(declare-fun b_lambda!46467 () Bool)

(assert (= b_lambda!46465 (or (and b!1482477 b_free!38345) (and b!1482815 b_free!38373 (= (toChars!3997 (transformation!2799 (rule!4576 (h!21097 (t!137621 l2!3105))))) (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l1!3136)))))) (and b!1482469 b_free!38349 (= (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l2!3105)))) (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l1!3136)))))) (and b!1482819 b_free!38377 (= (toChars!3997 (transformation!2799 (rule!4576 (h!21097 (t!137621 l1!3136))))) (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l1!3136)))))) (and b!1482480 b_free!38353 (= (toChars!3997 (transformation!2799 (h!21098 rules!4290))) (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l1!3136)))))) (and b!1482801 b_free!38369 (= (toChars!3997 (transformation!2799 (h!21098 (t!137622 rules!4290)))) (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l1!3136)))))) b_lambda!46467)))

(declare-fun b_lambda!46469 () Bool)

(assert (= b_lambda!46463 (or (and b!1482477 b_free!38345 (= (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l1!3136)))) (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l2!3105)))))) (and b!1482819 b_free!38377 (= (toChars!3997 (transformation!2799 (rule!4576 (h!21097 (t!137621 l1!3136))))) (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l2!3105)))))) (and b!1482815 b_free!38373 (= (toChars!3997 (transformation!2799 (rule!4576 (h!21097 (t!137621 l2!3105))))) (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l2!3105)))))) (and b!1482469 b_free!38349) (and b!1482480 b_free!38353 (= (toChars!3997 (transformation!2799 (h!21098 rules!4290))) (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l2!3105)))))) (and b!1482801 b_free!38369 (= (toChars!3997 (transformation!2799 (h!21098 (t!137622 rules!4290)))) (toChars!3997 (transformation!2799 (rule!4576 (h!21097 l2!3105)))))) b_lambda!46469)))

(check-sat (not b!1482822) (not b_next!39075) (not b!1482594) (not b_next!39079) (not b!1482579) b_and!103093 (not d!434895) (not b!1482752) (not b!1482712) (not b!1482713) b_and!103095 (not b!1482718) b_and!103085 (not d!434937) (not b!1482736) tp_is_empty!6987 (not b!1482704) (not b!1482582) (not b!1482747) (not b!1482721) (not b!1482553) (not b!1482780) (not b!1482765) (not b_next!39077) b_and!103083 (not b_next!39047) (not b!1482799) b_and!103037 (not b!1482554) b_and!103045 b_and!103081 (not b!1482595) (not d!434881) (not b!1482764) b_and!103041 (not b!1482766) (not b_next!39057) (not d!434907) (not b!1482778) (not b!1482814) (not b!1482759) (not b!1482760) (not b!1482758) (not d!434947) (not b!1482563) (not b!1482706) (not b_lambda!46469) (not b!1482715) (not b!1482812) (not b!1482821) (not b!1482581) (not b!1482816) (not b!1482789) (not d!434899) (not d!434913) b_and!103087 (not b!1482785) (not b_next!39071) (not tb!84881) b_and!103079 (not b!1482823) (not b_next!39049) (not b!1482790) (not b!1482763) (not d!434931) (not b!1482738) (not d!434917) (not b!1482580) (not b!1482744) (not b!1482714) (not b_next!39081) (not b!1482740) (not b!1482786) (not b!1482818) (not b_next!39051) (not b!1482719) (not b!1482813) (not b_lambda!46467) (not b!1482817) (not b!1482779) (not b!1482735) (not b_next!39073) (not d!434877) (not d!434837) (not b!1482762) (not d!434919) (not b!1482761) (not b_next!39055) (not b!1482720) (not d!434941) (not b!1482578) (not b_next!39053) (not d!434911) (not d!434927) (not b!1482705) (not d!434879) (not b!1482741) (not tb!84887) (not b!1482800) b_and!103091 (not d!434909) (not b!1482753) b_and!103089 (not b!1482743) (not b!1482788))
(check-sat (not b_next!39079) b_and!103093 (not b_next!39057) (not b_next!39049) (not b_next!39075) (not b_next!39081) (not b_next!39051) (not b_next!39073) (not b_next!39055) (not b_next!39053) b_and!103091 b_and!103089 b_and!103095 b_and!103085 (not b_next!39077) b_and!103083 (not b_next!39047) b_and!103037 b_and!103045 b_and!103081 b_and!103041 b_and!103087 (not b_next!39071) b_and!103079)
