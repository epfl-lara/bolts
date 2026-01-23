; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!276428 () Bool)

(assert start!276428)

(declare-fun b!2842038 () Bool)

(declare-fun b_free!82465 () Bool)

(declare-fun b_next!83169 () Bool)

(assert (=> b!2842038 (= b_free!82465 (not b_next!83169))))

(declare-fun tp!910490 () Bool)

(declare-fun b_and!208551 () Bool)

(assert (=> b!2842038 (= tp!910490 b_and!208551)))

(declare-fun b_free!82467 () Bool)

(declare-fun b_next!83171 () Bool)

(assert (=> b!2842038 (= b_free!82467 (not b_next!83171))))

(declare-fun tp!910489 () Bool)

(declare-fun b_and!208553 () Bool)

(assert (=> b!2842038 (= tp!910489 b_and!208553)))

(declare-fun b!2842041 () Bool)

(declare-fun b_free!82469 () Bool)

(declare-fun b_next!83173 () Bool)

(assert (=> b!2842041 (= b_free!82469 (not b_next!83173))))

(declare-fun tp!910485 () Bool)

(declare-fun b_and!208555 () Bool)

(assert (=> b!2842041 (= tp!910485 b_and!208555)))

(declare-fun b_free!82471 () Bool)

(declare-fun b_next!83175 () Bool)

(assert (=> b!2842041 (= b_free!82471 (not b_next!83175))))

(declare-fun tp!910486 () Bool)

(declare-fun b_and!208557 () Bool)

(assert (=> b!2842041 (= tp!910486 b_and!208557)))

(declare-fun b!2842040 () Bool)

(declare-fun b_free!82473 () Bool)

(declare-fun b_next!83177 () Bool)

(assert (=> b!2842040 (= b_free!82473 (not b_next!83177))))

(declare-fun tp!910488 () Bool)

(declare-fun b_and!208559 () Bool)

(assert (=> b!2842040 (= tp!910488 b_and!208559)))

(declare-fun b_free!82475 () Bool)

(declare-fun b_next!83179 () Bool)

(assert (=> b!2842040 (= b_free!82475 (not b_next!83179))))

(declare-fun tp!910493 () Bool)

(declare-fun b_and!208561 () Bool)

(assert (=> b!2842040 (= tp!910493 b_and!208561)))

(declare-fun b!2842032 () Bool)

(declare-fun e!1800595 () Bool)

(declare-fun e!1800591 () Bool)

(declare-fun tp!910492 () Bool)

(assert (=> b!2842032 (= e!1800595 (and e!1800591 tp!910492))))

(declare-fun tp!910494 () Bool)

(declare-fun e!1800594 () Bool)

(declare-fun e!1800600 () Bool)

(declare-datatypes ((List!33798 0))(
  ( (Nil!33674) (Cons!33674 (h!39094 (_ BitVec 16)) (t!232643 List!33798)) )
))
(declare-datatypes ((TokenValue!5294 0))(
  ( (FloatLiteralValue!10588 (text!37503 List!33798)) (TokenValueExt!5293 (__x!22326 Int)) (Broken!26470 (value!162700 List!33798)) (Object!5417) (End!5294) (Def!5294) (Underscore!5294) (Match!5294) (Else!5294) (Error!5294) (Case!5294) (If!5294) (Extends!5294) (Abstract!5294) (Class!5294) (Val!5294) (DelimiterValue!10588 (del!5354 List!33798)) (KeywordValue!5300 (value!162701 List!33798)) (CommentValue!10588 (value!162702 List!33798)) (WhitespaceValue!10588 (value!162703 List!33798)) (IndentationValue!5294 (value!162704 List!33798)) (String!37035) (Int32!5294) (Broken!26471 (value!162705 List!33798)) (Boolean!5295) (Unit!47494) (OperatorValue!5297 (op!5354 List!33798)) (IdentifierValue!10588 (value!162706 List!33798)) (IdentifierValue!10589 (value!162707 List!33798)) (WhitespaceValue!10589 (value!162708 List!33798)) (True!10588) (False!10588) (Broken!26472 (value!162709 List!33798)) (Broken!26473 (value!162710 List!33798)) (True!10589) (RightBrace!5294) (RightBracket!5294) (Colon!5294) (Null!5294) (Comma!5294) (LeftBracket!5294) (False!10589) (LeftBrace!5294) (ImaginaryLiteralValue!5294 (text!37504 List!33798)) (StringLiteralValue!15882 (value!162711 List!33798)) (EOFValue!5294 (value!162712 List!33798)) (IdentValue!5294 (value!162713 List!33798)) (DelimiterValue!10589 (value!162714 List!33798)) (DedentValue!5294 (value!162715 List!33798)) (NewLineValue!5294 (value!162716 List!33798)) (IntegerValue!15882 (value!162717 (_ BitVec 32)) (text!37505 List!33798)) (IntegerValue!15883 (value!162718 Int) (text!37506 List!33798)) (Times!5294) (Or!5294) (Equal!5294) (Minus!5294) (Broken!26474 (value!162719 List!33798)) (And!5294) (Div!5294) (LessEqual!5294) (Mod!5294) (Concat!13749) (Not!5294) (Plus!5294) (SpaceValue!5294 (value!162720 List!33798)) (IntegerValue!15884 (value!162721 Int) (text!37507 List!33798)) (StringLiteralValue!15883 (text!37508 List!33798)) (FloatLiteralValue!10589 (text!37509 List!33798)) (BytesLiteralValue!5294 (value!162722 List!33798)) (CommentValue!10589 (value!162723 List!33798)) (StringLiteralValue!15884 (value!162724 List!33798)) (ErrorTokenValue!5294 (msg!5355 List!33798)) )
))
(declare-datatypes ((C!17092 0))(
  ( (C!17093 (val!10580 Int)) )
))
(declare-datatypes ((List!33799 0))(
  ( (Nil!33675) (Cons!33675 (h!39095 C!17092) (t!232644 List!33799)) )
))
(declare-datatypes ((IArray!20893 0))(
  ( (IArray!20894 (innerList!10504 List!33799)) )
))
(declare-datatypes ((Conc!10444 0))(
  ( (Node!10444 (left!25374 Conc!10444) (right!25704 Conc!10444) (csize!21118 Int) (cheight!10655 Int)) (Leaf!15895 (xs!13556 IArray!20893) (csize!21119 Int)) (Empty!10444) )
))
(declare-datatypes ((BalanceConc!20526 0))(
  ( (BalanceConc!20527 (c!458766 Conc!10444)) )
))
(declare-datatypes ((String!37036 0))(
  ( (String!37037 (value!162725 String)) )
))
(declare-datatypes ((Regex!8455 0))(
  ( (ElementMatch!8455 (c!458767 C!17092)) (Concat!13750 (regOne!17422 Regex!8455) (regTwo!17422 Regex!8455)) (EmptyExpr!8455) (Star!8455 (reg!8784 Regex!8455)) (EmptyLang!8455) (Union!8455 (regOne!17423 Regex!8455) (regTwo!17423 Regex!8455)) )
))
(declare-datatypes ((TokenValueInjection!10016 0))(
  ( (TokenValueInjection!10017 (toValue!7106 Int) (toChars!6965 Int)) )
))
(declare-datatypes ((Rule!9928 0))(
  ( (Rule!9929 (regex!5064 Regex!8455) (tag!5568 String!37036) (isSeparator!5064 Bool) (transformation!5064 TokenValueInjection!10016)) )
))
(declare-datatypes ((Token!9530 0))(
  ( (Token!9531 (value!162726 TokenValue!5294) (rule!7492 Rule!9928) (size!26137 Int) (originalCharacters!5796 List!33799)) )
))
(declare-fun t1!27 () Token!9530)

(declare-fun b!2842033 () Bool)

(declare-fun inv!45660 (String!37036) Bool)

(declare-fun inv!45663 (TokenValueInjection!10016) Bool)

(assert (=> b!2842033 (= e!1800600 (and tp!910494 (inv!45660 (tag!5568 (rule!7492 t1!27))) (inv!45663 (transformation!5064 (rule!7492 t1!27))) e!1800594))))

(declare-fun b!2842034 () Bool)

(declare-fun res!1182361 () Bool)

(declare-fun e!1800598 () Bool)

(assert (=> b!2842034 (=> (not res!1182361) (not e!1800598))))

(declare-fun t2!27 () Token!9530)

(declare-datatypes ((LexerInterface!4654 0))(
  ( (LexerInterfaceExt!4651 (__x!22327 Int)) (Lexer!4652) )
))
(declare-fun thiss!11361 () LexerInterface!4654)

(declare-datatypes ((List!33800 0))(
  ( (Nil!33676) (Cons!33676 (h!39096 Rule!9928) (t!232645 List!33800)) )
))
(declare-fun rules!1139 () List!33800)

(declare-fun rulesProduceIndividualToken!2165 (LexerInterface!4654 List!33800 Token!9530) Bool)

(assert (=> b!2842034 (= res!1182361 (rulesProduceIndividualToken!2165 thiss!11361 rules!1139 t2!27))))

(declare-fun b!2842035 () Bool)

(declare-fun rulesValidInductive!1732 (LexerInterface!4654 List!33800) Bool)

(assert (=> b!2842035 (= e!1800598 (not (rulesValidInductive!1732 thiss!11361 rules!1139)))))

(declare-fun e!1800597 () Bool)

(declare-fun b!2842036 () Bool)

(declare-fun tp!910484 () Bool)

(declare-fun inv!21 (TokenValue!5294) Bool)

(assert (=> b!2842036 (= e!1800597 (and (inv!21 (value!162726 t1!27)) e!1800600 tp!910484))))

(declare-fun b!2842037 () Bool)

(declare-fun res!1182365 () Bool)

(assert (=> b!2842037 (=> (not res!1182365) (not e!1800598))))

(declare-fun isEmpty!18530 (BalanceConc!20526) Bool)

(declare-fun charsOf!3114 (Token!9530) BalanceConc!20526)

(assert (=> b!2842037 (= res!1182365 (not (isEmpty!18530 (charsOf!3114 t2!27))))))

(declare-fun e!1800592 () Bool)

(assert (=> b!2842038 (= e!1800592 (and tp!910490 tp!910489))))

(declare-fun e!1800593 () Bool)

(assert (=> b!2842040 (= e!1800593 (and tp!910488 tp!910493))))

(assert (=> b!2842041 (= e!1800594 (and tp!910485 tp!910486))))

(declare-fun b!2842042 () Bool)

(declare-fun res!1182362 () Bool)

(assert (=> b!2842042 (=> (not res!1182362) (not e!1800598))))

(declare-fun isEmpty!18531 (List!33800) Bool)

(assert (=> b!2842042 (= res!1182362 (not (isEmpty!18531 rules!1139)))))

(declare-fun e!1800599 () Bool)

(declare-fun b!2842043 () Bool)

(declare-fun tp!910483 () Bool)

(assert (=> b!2842043 (= e!1800599 (and tp!910483 (inv!45660 (tag!5568 (rule!7492 t2!27))) (inv!45663 (transformation!5064 (rule!7492 t2!27))) e!1800592))))

(declare-fun b!2842044 () Bool)

(declare-fun res!1182366 () Bool)

(assert (=> b!2842044 (=> (not res!1182366) (not e!1800598))))

(declare-fun rulesInvariant!4070 (LexerInterface!4654 List!33800) Bool)

(assert (=> b!2842044 (= res!1182366 (rulesInvariant!4070 thiss!11361 rules!1139))))

(declare-fun tp!910491 () Bool)

(declare-fun b!2842045 () Bool)

(declare-fun e!1800601 () Bool)

(assert (=> b!2842045 (= e!1800601 (and (inv!21 (value!162726 t2!27)) e!1800599 tp!910491))))

(declare-fun b!2842046 () Bool)

(declare-fun res!1182363 () Bool)

(assert (=> b!2842046 (=> (not res!1182363) (not e!1800598))))

(assert (=> b!2842046 (= res!1182363 (rulesProduceIndividualToken!2165 thiss!11361 rules!1139 t1!27))))

(declare-fun tp!910487 () Bool)

(declare-fun b!2842039 () Bool)

(assert (=> b!2842039 (= e!1800591 (and tp!910487 (inv!45660 (tag!5568 (h!39096 rules!1139))) (inv!45663 (transformation!5064 (h!39096 rules!1139))) e!1800593))))

(declare-fun res!1182364 () Bool)

(assert (=> start!276428 (=> (not res!1182364) (not e!1800598))))

(get-info :version)

(assert (=> start!276428 (= res!1182364 ((_ is Lexer!4652) thiss!11361))))

(assert (=> start!276428 e!1800598))

(assert (=> start!276428 true))

(assert (=> start!276428 e!1800595))

(declare-fun inv!45664 (Token!9530) Bool)

(assert (=> start!276428 (and (inv!45664 t1!27) e!1800597)))

(assert (=> start!276428 (and (inv!45664 t2!27) e!1800601)))

(assert (= (and start!276428 res!1182364) b!2842042))

(assert (= (and b!2842042 res!1182362) b!2842044))

(assert (= (and b!2842044 res!1182366) b!2842046))

(assert (= (and b!2842046 res!1182363) b!2842034))

(assert (= (and b!2842034 res!1182361) b!2842037))

(assert (= (and b!2842037 res!1182365) b!2842035))

(assert (= b!2842039 b!2842040))

(assert (= b!2842032 b!2842039))

(assert (= (and start!276428 ((_ is Cons!33676) rules!1139)) b!2842032))

(assert (= b!2842033 b!2842041))

(assert (= b!2842036 b!2842033))

(assert (= start!276428 b!2842036))

(assert (= b!2842043 b!2842038))

(assert (= b!2842045 b!2842043))

(assert (= start!276428 b!2842045))

(declare-fun m!3269693 () Bool)

(assert (=> b!2842044 m!3269693))

(declare-fun m!3269695 () Bool)

(assert (=> b!2842035 m!3269695))

(declare-fun m!3269697 () Bool)

(assert (=> b!2842034 m!3269697))

(declare-fun m!3269699 () Bool)

(assert (=> start!276428 m!3269699))

(declare-fun m!3269701 () Bool)

(assert (=> start!276428 m!3269701))

(declare-fun m!3269703 () Bool)

(assert (=> b!2842039 m!3269703))

(declare-fun m!3269705 () Bool)

(assert (=> b!2842039 m!3269705))

(declare-fun m!3269707 () Bool)

(assert (=> b!2842043 m!3269707))

(declare-fun m!3269709 () Bool)

(assert (=> b!2842043 m!3269709))

(declare-fun m!3269711 () Bool)

(assert (=> b!2842037 m!3269711))

(assert (=> b!2842037 m!3269711))

(declare-fun m!3269713 () Bool)

(assert (=> b!2842037 m!3269713))

(declare-fun m!3269715 () Bool)

(assert (=> b!2842046 m!3269715))

(declare-fun m!3269717 () Bool)

(assert (=> b!2842042 m!3269717))

(declare-fun m!3269719 () Bool)

(assert (=> b!2842033 m!3269719))

(declare-fun m!3269721 () Bool)

(assert (=> b!2842033 m!3269721))

(declare-fun m!3269723 () Bool)

(assert (=> b!2842045 m!3269723))

(declare-fun m!3269725 () Bool)

(assert (=> b!2842036 m!3269725))

(check-sat (not b_next!83179) (not b!2842043) b_and!208551 (not b_next!83177) (not b!2842039) b_and!208553 (not b_next!83173) (not b!2842036) (not b!2842035) (not b!2842037) (not b!2842034) (not b!2842042) (not b_next!83175) b_and!208557 b_and!208555 (not start!276428) (not b!2842032) b_and!208559 (not b!2842046) (not b_next!83171) (not b!2842045) b_and!208561 (not b!2842033) (not b!2842044) (not b_next!83169))
(check-sat (not b_next!83175) (not b_next!83179) b_and!208551 (not b_next!83177) b_and!208553 (not b_next!83173) b_and!208559 (not b_next!83171) b_and!208561 (not b_next!83169) b_and!208557 b_and!208555)
(get-model)

(declare-fun d!823949 () Bool)

(declare-fun res!1182385 () Bool)

(declare-fun e!1800618 () Bool)

(assert (=> d!823949 (=> (not res!1182385) (not e!1800618))))

(declare-fun isEmpty!18534 (List!33799) Bool)

(assert (=> d!823949 (= res!1182385 (not (isEmpty!18534 (originalCharacters!5796 t1!27))))))

(assert (=> d!823949 (= (inv!45664 t1!27) e!1800618)))

(declare-fun b!2842069 () Bool)

(declare-fun res!1182386 () Bool)

(assert (=> b!2842069 (=> (not res!1182386) (not e!1800618))))

(declare-fun list!12541 (BalanceConc!20526) List!33799)

(declare-fun dynLambda!14162 (Int TokenValue!5294) BalanceConc!20526)

(assert (=> b!2842069 (= res!1182386 (= (originalCharacters!5796 t1!27) (list!12541 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t1!27))) (value!162726 t1!27)))))))

(declare-fun b!2842070 () Bool)

(declare-fun size!26140 (List!33799) Int)

(assert (=> b!2842070 (= e!1800618 (= (size!26137 t1!27) (size!26140 (originalCharacters!5796 t1!27))))))

(assert (= (and d!823949 res!1182385) b!2842069))

(assert (= (and b!2842069 res!1182386) b!2842070))

(declare-fun b_lambda!85423 () Bool)

(assert (=> (not b_lambda!85423) (not b!2842069)))

(declare-fun t!232647 () Bool)

(declare-fun tb!154949 () Bool)

(assert (=> (and b!2842038 (= (toChars!6965 (transformation!5064 (rule!7492 t2!27))) (toChars!6965 (transformation!5064 (rule!7492 t1!27)))) t!232647) tb!154949))

(declare-fun b!2842075 () Bool)

(declare-fun e!1800621 () Bool)

(declare-fun tp!910497 () Bool)

(declare-fun inv!45667 (Conc!10444) Bool)

(assert (=> b!2842075 (= e!1800621 (and (inv!45667 (c!458766 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t1!27))) (value!162726 t1!27)))) tp!910497))))

(declare-fun result!193338 () Bool)

(declare-fun inv!45668 (BalanceConc!20526) Bool)

(assert (=> tb!154949 (= result!193338 (and (inv!45668 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t1!27))) (value!162726 t1!27))) e!1800621))))

(assert (= tb!154949 b!2842075))

(declare-fun m!3269737 () Bool)

(assert (=> b!2842075 m!3269737))

(declare-fun m!3269739 () Bool)

(assert (=> tb!154949 m!3269739))

(assert (=> b!2842069 t!232647))

(declare-fun b_and!208563 () Bool)

(assert (= b_and!208553 (and (=> t!232647 result!193338) b_and!208563)))

(declare-fun t!232649 () Bool)

(declare-fun tb!154951 () Bool)

(assert (=> (and b!2842041 (= (toChars!6965 (transformation!5064 (rule!7492 t1!27))) (toChars!6965 (transformation!5064 (rule!7492 t1!27)))) t!232649) tb!154951))

(declare-fun result!193342 () Bool)

(assert (= result!193342 result!193338))

(assert (=> b!2842069 t!232649))

(declare-fun b_and!208565 () Bool)

(assert (= b_and!208557 (and (=> t!232649 result!193342) b_and!208565)))

(declare-fun tb!154953 () Bool)

(declare-fun t!232651 () Bool)

(assert (=> (and b!2842040 (= (toChars!6965 (transformation!5064 (h!39096 rules!1139))) (toChars!6965 (transformation!5064 (rule!7492 t1!27)))) t!232651) tb!154953))

(declare-fun result!193344 () Bool)

(assert (= result!193344 result!193338))

(assert (=> b!2842069 t!232651))

(declare-fun b_and!208567 () Bool)

(assert (= b_and!208561 (and (=> t!232651 result!193344) b_and!208567)))

(declare-fun m!3269741 () Bool)

(assert (=> d!823949 m!3269741))

(declare-fun m!3269743 () Bool)

(assert (=> b!2842069 m!3269743))

(assert (=> b!2842069 m!3269743))

(declare-fun m!3269745 () Bool)

(assert (=> b!2842069 m!3269745))

(declare-fun m!3269747 () Bool)

(assert (=> b!2842070 m!3269747))

(assert (=> start!276428 d!823949))

(declare-fun d!823951 () Bool)

(declare-fun res!1182387 () Bool)

(declare-fun e!1800622 () Bool)

(assert (=> d!823951 (=> (not res!1182387) (not e!1800622))))

(assert (=> d!823951 (= res!1182387 (not (isEmpty!18534 (originalCharacters!5796 t2!27))))))

(assert (=> d!823951 (= (inv!45664 t2!27) e!1800622)))

(declare-fun b!2842076 () Bool)

(declare-fun res!1182388 () Bool)

(assert (=> b!2842076 (=> (not res!1182388) (not e!1800622))))

(assert (=> b!2842076 (= res!1182388 (= (originalCharacters!5796 t2!27) (list!12541 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t2!27))) (value!162726 t2!27)))))))

(declare-fun b!2842077 () Bool)

(assert (=> b!2842077 (= e!1800622 (= (size!26137 t2!27) (size!26140 (originalCharacters!5796 t2!27))))))

(assert (= (and d!823951 res!1182387) b!2842076))

(assert (= (and b!2842076 res!1182388) b!2842077))

(declare-fun b_lambda!85425 () Bool)

(assert (=> (not b_lambda!85425) (not b!2842076)))

(declare-fun t!232653 () Bool)

(declare-fun tb!154955 () Bool)

(assert (=> (and b!2842038 (= (toChars!6965 (transformation!5064 (rule!7492 t2!27))) (toChars!6965 (transformation!5064 (rule!7492 t2!27)))) t!232653) tb!154955))

(declare-fun b!2842078 () Bool)

(declare-fun e!1800623 () Bool)

(declare-fun tp!910498 () Bool)

(assert (=> b!2842078 (= e!1800623 (and (inv!45667 (c!458766 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t2!27))) (value!162726 t2!27)))) tp!910498))))

(declare-fun result!193346 () Bool)

(assert (=> tb!154955 (= result!193346 (and (inv!45668 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t2!27))) (value!162726 t2!27))) e!1800623))))

(assert (= tb!154955 b!2842078))

(declare-fun m!3269749 () Bool)

(assert (=> b!2842078 m!3269749))

(declare-fun m!3269751 () Bool)

(assert (=> tb!154955 m!3269751))

(assert (=> b!2842076 t!232653))

(declare-fun b_and!208569 () Bool)

(assert (= b_and!208563 (and (=> t!232653 result!193346) b_and!208569)))

(declare-fun tb!154957 () Bool)

(declare-fun t!232655 () Bool)

(assert (=> (and b!2842041 (= (toChars!6965 (transformation!5064 (rule!7492 t1!27))) (toChars!6965 (transformation!5064 (rule!7492 t2!27)))) t!232655) tb!154957))

(declare-fun result!193348 () Bool)

(assert (= result!193348 result!193346))

(assert (=> b!2842076 t!232655))

(declare-fun b_and!208571 () Bool)

(assert (= b_and!208565 (and (=> t!232655 result!193348) b_and!208571)))

(declare-fun tb!154959 () Bool)

(declare-fun t!232657 () Bool)

(assert (=> (and b!2842040 (= (toChars!6965 (transformation!5064 (h!39096 rules!1139))) (toChars!6965 (transformation!5064 (rule!7492 t2!27)))) t!232657) tb!154959))

(declare-fun result!193350 () Bool)

(assert (= result!193350 result!193346))

(assert (=> b!2842076 t!232657))

(declare-fun b_and!208573 () Bool)

(assert (= b_and!208567 (and (=> t!232657 result!193350) b_and!208573)))

(declare-fun m!3269753 () Bool)

(assert (=> d!823951 m!3269753))

(declare-fun m!3269755 () Bool)

(assert (=> b!2842076 m!3269755))

(assert (=> b!2842076 m!3269755))

(declare-fun m!3269757 () Bool)

(assert (=> b!2842076 m!3269757))

(declare-fun m!3269759 () Bool)

(assert (=> b!2842077 m!3269759))

(assert (=> start!276428 d!823951))

(declare-fun d!823953 () Bool)

(assert (=> d!823953 (= (isEmpty!18531 rules!1139) ((_ is Nil!33676) rules!1139))))

(assert (=> b!2842042 d!823953))

(declare-fun d!823955 () Bool)

(assert (=> d!823955 (= (inv!45660 (tag!5568 (h!39096 rules!1139))) (= (mod (str.len (value!162725 (tag!5568 (h!39096 rules!1139)))) 2) 0))))

(assert (=> b!2842039 d!823955))

(declare-fun d!823957 () Bool)

(declare-fun res!1182391 () Bool)

(declare-fun e!1800626 () Bool)

(assert (=> d!823957 (=> (not res!1182391) (not e!1800626))))

(declare-fun semiInverseModEq!2111 (Int Int) Bool)

(assert (=> d!823957 (= res!1182391 (semiInverseModEq!2111 (toChars!6965 (transformation!5064 (h!39096 rules!1139))) (toValue!7106 (transformation!5064 (h!39096 rules!1139)))))))

(assert (=> d!823957 (= (inv!45663 (transformation!5064 (h!39096 rules!1139))) e!1800626)))

(declare-fun b!2842081 () Bool)

(declare-fun equivClasses!2010 (Int Int) Bool)

(assert (=> b!2842081 (= e!1800626 (equivClasses!2010 (toChars!6965 (transformation!5064 (h!39096 rules!1139))) (toValue!7106 (transformation!5064 (h!39096 rules!1139)))))))

(assert (= (and d!823957 res!1182391) b!2842081))

(declare-fun m!3269761 () Bool)

(assert (=> d!823957 m!3269761))

(declare-fun m!3269763 () Bool)

(assert (=> b!2842081 m!3269763))

(assert (=> b!2842039 d!823957))

(declare-fun d!823959 () Bool)

(assert (=> d!823959 true))

(declare-fun lt!1011735 () Bool)

(declare-fun lambda!104251 () Int)

(declare-fun forall!6916 (List!33800 Int) Bool)

(assert (=> d!823959 (= lt!1011735 (forall!6916 rules!1139 lambda!104251))))

(declare-fun e!1800682 () Bool)

(assert (=> d!823959 (= lt!1011735 e!1800682)))

(declare-fun res!1182429 () Bool)

(assert (=> d!823959 (=> res!1182429 e!1800682)))

(assert (=> d!823959 (= res!1182429 (not ((_ is Cons!33676) rules!1139)))))

(assert (=> d!823959 (= (rulesValidInductive!1732 thiss!11361 rules!1139) lt!1011735)))

(declare-fun b!2842169 () Bool)

(declare-fun e!1800683 () Bool)

(assert (=> b!2842169 (= e!1800682 e!1800683)))

(declare-fun res!1182428 () Bool)

(assert (=> b!2842169 (=> (not res!1182428) (not e!1800683))))

(declare-fun ruleValid!1605 (LexerInterface!4654 Rule!9928) Bool)

(assert (=> b!2842169 (= res!1182428 (ruleValid!1605 thiss!11361 (h!39096 rules!1139)))))

(declare-fun b!2842170 () Bool)

(assert (=> b!2842170 (= e!1800683 (rulesValidInductive!1732 thiss!11361 (t!232645 rules!1139)))))

(assert (= (and d!823959 (not res!1182429)) b!2842169))

(assert (= (and b!2842169 res!1182428) b!2842170))

(declare-fun m!3269861 () Bool)

(assert (=> d!823959 m!3269861))

(declare-fun m!3269863 () Bool)

(assert (=> b!2842169 m!3269863))

(declare-fun m!3269865 () Bool)

(assert (=> b!2842170 m!3269865))

(assert (=> b!2842035 d!823959))

(declare-fun d!823987 () Bool)

(declare-fun lt!1011741 () Bool)

(declare-fun e!1800689 () Bool)

(assert (=> d!823987 (= lt!1011741 e!1800689)))

(declare-fun res!1182437 () Bool)

(assert (=> d!823987 (=> (not res!1182437) (not e!1800689))))

(declare-datatypes ((List!33803 0))(
  ( (Nil!33679) (Cons!33679 (h!39099 Token!9530) (t!232682 List!33803)) )
))
(declare-datatypes ((IArray!20897 0))(
  ( (IArray!20898 (innerList!10506 List!33803)) )
))
(declare-datatypes ((Conc!10446 0))(
  ( (Node!10446 (left!25380 Conc!10446) (right!25710 Conc!10446) (csize!21122 Int) (cheight!10657 Int)) (Leaf!15897 (xs!13558 IArray!20897) (csize!21123 Int)) (Empty!10446) )
))
(declare-datatypes ((BalanceConc!20530 0))(
  ( (BalanceConc!20531 (c!458785 Conc!10446)) )
))
(declare-fun list!12542 (BalanceConc!20530) List!33803)

(declare-datatypes ((tuple2!33556 0))(
  ( (tuple2!33557 (_1!19890 BalanceConc!20530) (_2!19890 BalanceConc!20526)) )
))
(declare-fun lex!2026 (LexerInterface!4654 List!33800 BalanceConc!20526) tuple2!33556)

(declare-fun print!1745 (LexerInterface!4654 BalanceConc!20530) BalanceConc!20526)

(declare-fun singletonSeq!2179 (Token!9530) BalanceConc!20530)

(assert (=> d!823987 (= res!1182437 (= (list!12542 (_1!19890 (lex!2026 thiss!11361 rules!1139 (print!1745 thiss!11361 (singletonSeq!2179 t1!27))))) (list!12542 (singletonSeq!2179 t1!27))))))

(declare-fun e!1800688 () Bool)

(assert (=> d!823987 (= lt!1011741 e!1800688)))

(declare-fun res!1182436 () Bool)

(assert (=> d!823987 (=> (not res!1182436) (not e!1800688))))

(declare-fun lt!1011740 () tuple2!33556)

(declare-fun size!26141 (BalanceConc!20530) Int)

(assert (=> d!823987 (= res!1182436 (= (size!26141 (_1!19890 lt!1011740)) 1))))

(assert (=> d!823987 (= lt!1011740 (lex!2026 thiss!11361 rules!1139 (print!1745 thiss!11361 (singletonSeq!2179 t1!27))))))

(assert (=> d!823987 (not (isEmpty!18531 rules!1139))))

(assert (=> d!823987 (= (rulesProduceIndividualToken!2165 thiss!11361 rules!1139 t1!27) lt!1011741)))

(declare-fun b!2842179 () Bool)

(declare-fun res!1182438 () Bool)

(assert (=> b!2842179 (=> (not res!1182438) (not e!1800688))))

(declare-fun apply!7829 (BalanceConc!20530 Int) Token!9530)

(assert (=> b!2842179 (= res!1182438 (= (apply!7829 (_1!19890 lt!1011740) 0) t1!27))))

(declare-fun b!2842180 () Bool)

(assert (=> b!2842180 (= e!1800688 (isEmpty!18530 (_2!19890 lt!1011740)))))

(declare-fun b!2842181 () Bool)

(assert (=> b!2842181 (= e!1800689 (isEmpty!18530 (_2!19890 (lex!2026 thiss!11361 rules!1139 (print!1745 thiss!11361 (singletonSeq!2179 t1!27))))))))

(assert (= (and d!823987 res!1182436) b!2842179))

(assert (= (and b!2842179 res!1182438) b!2842180))

(assert (= (and d!823987 res!1182437) b!2842181))

(declare-fun m!3269867 () Bool)

(assert (=> d!823987 m!3269867))

(declare-fun m!3269869 () Bool)

(assert (=> d!823987 m!3269869))

(declare-fun m!3269871 () Bool)

(assert (=> d!823987 m!3269871))

(declare-fun m!3269873 () Bool)

(assert (=> d!823987 m!3269873))

(assert (=> d!823987 m!3269873))

(assert (=> d!823987 m!3269869))

(declare-fun m!3269875 () Bool)

(assert (=> d!823987 m!3269875))

(assert (=> d!823987 m!3269873))

(declare-fun m!3269877 () Bool)

(assert (=> d!823987 m!3269877))

(assert (=> d!823987 m!3269717))

(declare-fun m!3269879 () Bool)

(assert (=> b!2842179 m!3269879))

(declare-fun m!3269881 () Bool)

(assert (=> b!2842180 m!3269881))

(assert (=> b!2842181 m!3269873))

(assert (=> b!2842181 m!3269873))

(assert (=> b!2842181 m!3269869))

(assert (=> b!2842181 m!3269869))

(assert (=> b!2842181 m!3269871))

(declare-fun m!3269883 () Bool)

(assert (=> b!2842181 m!3269883))

(assert (=> b!2842046 d!823987))

(declare-fun b!2842192 () Bool)

(declare-fun e!1800697 () Bool)

(declare-fun inv!16 (TokenValue!5294) Bool)

(assert (=> b!2842192 (= e!1800697 (inv!16 (value!162726 t1!27)))))

(declare-fun d!823989 () Bool)

(declare-fun c!458782 () Bool)

(assert (=> d!823989 (= c!458782 ((_ is IntegerValue!15882) (value!162726 t1!27)))))

(assert (=> d!823989 (= (inv!21 (value!162726 t1!27)) e!1800697)))

(declare-fun b!2842193 () Bool)

(declare-fun res!1182441 () Bool)

(declare-fun e!1800696 () Bool)

(assert (=> b!2842193 (=> res!1182441 e!1800696)))

(assert (=> b!2842193 (= res!1182441 (not ((_ is IntegerValue!15884) (value!162726 t1!27))))))

(declare-fun e!1800698 () Bool)

(assert (=> b!2842193 (= e!1800698 e!1800696)))

(declare-fun b!2842194 () Bool)

(declare-fun inv!17 (TokenValue!5294) Bool)

(assert (=> b!2842194 (= e!1800698 (inv!17 (value!162726 t1!27)))))

(declare-fun b!2842195 () Bool)

(declare-fun inv!15 (TokenValue!5294) Bool)

(assert (=> b!2842195 (= e!1800696 (inv!15 (value!162726 t1!27)))))

(declare-fun b!2842196 () Bool)

(assert (=> b!2842196 (= e!1800697 e!1800698)))

(declare-fun c!458781 () Bool)

(assert (=> b!2842196 (= c!458781 ((_ is IntegerValue!15883) (value!162726 t1!27)))))

(assert (= (and d!823989 c!458782) b!2842192))

(assert (= (and d!823989 (not c!458782)) b!2842196))

(assert (= (and b!2842196 c!458781) b!2842194))

(assert (= (and b!2842196 (not c!458781)) b!2842193))

(assert (= (and b!2842193 (not res!1182441)) b!2842195))

(declare-fun m!3269885 () Bool)

(assert (=> b!2842192 m!3269885))

(declare-fun m!3269887 () Bool)

(assert (=> b!2842194 m!3269887))

(declare-fun m!3269889 () Bool)

(assert (=> b!2842195 m!3269889))

(assert (=> b!2842036 d!823989))

(declare-fun d!823991 () Bool)

(declare-fun lt!1011744 () Bool)

(assert (=> d!823991 (= lt!1011744 (isEmpty!18534 (list!12541 (charsOf!3114 t2!27))))))

(declare-fun isEmpty!18535 (Conc!10444) Bool)

(assert (=> d!823991 (= lt!1011744 (isEmpty!18535 (c!458766 (charsOf!3114 t2!27))))))

(assert (=> d!823991 (= (isEmpty!18530 (charsOf!3114 t2!27)) lt!1011744)))

(declare-fun bs!518909 () Bool)

(assert (= bs!518909 d!823991))

(assert (=> bs!518909 m!3269711))

(declare-fun m!3269891 () Bool)

(assert (=> bs!518909 m!3269891))

(assert (=> bs!518909 m!3269891))

(declare-fun m!3269893 () Bool)

(assert (=> bs!518909 m!3269893))

(declare-fun m!3269895 () Bool)

(assert (=> bs!518909 m!3269895))

(assert (=> b!2842037 d!823991))

(declare-fun d!823993 () Bool)

(declare-fun lt!1011747 () BalanceConc!20526)

(assert (=> d!823993 (= (list!12541 lt!1011747) (originalCharacters!5796 t2!27))))

(assert (=> d!823993 (= lt!1011747 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t2!27))) (value!162726 t2!27)))))

(assert (=> d!823993 (= (charsOf!3114 t2!27) lt!1011747)))

(declare-fun b_lambda!85439 () Bool)

(assert (=> (not b_lambda!85439) (not d!823993)))

(assert (=> d!823993 t!232653))

(declare-fun b_and!208597 () Bool)

(assert (= b_and!208569 (and (=> t!232653 result!193346) b_and!208597)))

(assert (=> d!823993 t!232655))

(declare-fun b_and!208599 () Bool)

(assert (= b_and!208571 (and (=> t!232655 result!193348) b_and!208599)))

(assert (=> d!823993 t!232657))

(declare-fun b_and!208601 () Bool)

(assert (= b_and!208573 (and (=> t!232657 result!193350) b_and!208601)))

(declare-fun m!3269897 () Bool)

(assert (=> d!823993 m!3269897))

(assert (=> d!823993 m!3269755))

(assert (=> b!2842037 d!823993))

(declare-fun d!823995 () Bool)

(assert (=> d!823995 (= (inv!45660 (tag!5568 (rule!7492 t2!27))) (= (mod (str.len (value!162725 (tag!5568 (rule!7492 t2!27)))) 2) 0))))

(assert (=> b!2842043 d!823995))

(declare-fun d!823997 () Bool)

(declare-fun res!1182442 () Bool)

(declare-fun e!1800699 () Bool)

(assert (=> d!823997 (=> (not res!1182442) (not e!1800699))))

(assert (=> d!823997 (= res!1182442 (semiInverseModEq!2111 (toChars!6965 (transformation!5064 (rule!7492 t2!27))) (toValue!7106 (transformation!5064 (rule!7492 t2!27)))))))

(assert (=> d!823997 (= (inv!45663 (transformation!5064 (rule!7492 t2!27))) e!1800699)))

(declare-fun b!2842197 () Bool)

(assert (=> b!2842197 (= e!1800699 (equivClasses!2010 (toChars!6965 (transformation!5064 (rule!7492 t2!27))) (toValue!7106 (transformation!5064 (rule!7492 t2!27)))))))

(assert (= (and d!823997 res!1182442) b!2842197))

(declare-fun m!3269899 () Bool)

(assert (=> d!823997 m!3269899))

(declare-fun m!3269901 () Bool)

(assert (=> b!2842197 m!3269901))

(assert (=> b!2842043 d!823997))

(declare-fun d!823999 () Bool)

(assert (=> d!823999 (= (inv!45660 (tag!5568 (rule!7492 t1!27))) (= (mod (str.len (value!162725 (tag!5568 (rule!7492 t1!27)))) 2) 0))))

(assert (=> b!2842033 d!823999))

(declare-fun d!824001 () Bool)

(declare-fun res!1182443 () Bool)

(declare-fun e!1800700 () Bool)

(assert (=> d!824001 (=> (not res!1182443) (not e!1800700))))

(assert (=> d!824001 (= res!1182443 (semiInverseModEq!2111 (toChars!6965 (transformation!5064 (rule!7492 t1!27))) (toValue!7106 (transformation!5064 (rule!7492 t1!27)))))))

(assert (=> d!824001 (= (inv!45663 (transformation!5064 (rule!7492 t1!27))) e!1800700)))

(declare-fun b!2842198 () Bool)

(assert (=> b!2842198 (= e!1800700 (equivClasses!2010 (toChars!6965 (transformation!5064 (rule!7492 t1!27))) (toValue!7106 (transformation!5064 (rule!7492 t1!27)))))))

(assert (= (and d!824001 res!1182443) b!2842198))

(declare-fun m!3269903 () Bool)

(assert (=> d!824001 m!3269903))

(declare-fun m!3269905 () Bool)

(assert (=> b!2842198 m!3269905))

(assert (=> b!2842033 d!824001))

(declare-fun d!824003 () Bool)

(declare-fun res!1182446 () Bool)

(declare-fun e!1800703 () Bool)

(assert (=> d!824003 (=> (not res!1182446) (not e!1800703))))

(declare-fun rulesValid!1880 (LexerInterface!4654 List!33800) Bool)

(assert (=> d!824003 (= res!1182446 (rulesValid!1880 thiss!11361 rules!1139))))

(assert (=> d!824003 (= (rulesInvariant!4070 thiss!11361 rules!1139) e!1800703)))

(declare-fun b!2842201 () Bool)

(declare-datatypes ((List!33804 0))(
  ( (Nil!33680) (Cons!33680 (h!39100 String!37036) (t!232683 List!33804)) )
))
(declare-fun noDuplicateTag!1876 (LexerInterface!4654 List!33800 List!33804) Bool)

(assert (=> b!2842201 (= e!1800703 (noDuplicateTag!1876 thiss!11361 rules!1139 Nil!33680))))

(assert (= (and d!824003 res!1182446) b!2842201))

(declare-fun m!3269907 () Bool)

(assert (=> d!824003 m!3269907))

(declare-fun m!3269909 () Bool)

(assert (=> b!2842201 m!3269909))

(assert (=> b!2842044 d!824003))

(declare-fun d!824005 () Bool)

(declare-fun lt!1011749 () Bool)

(declare-fun e!1800705 () Bool)

(assert (=> d!824005 (= lt!1011749 e!1800705)))

(declare-fun res!1182448 () Bool)

(assert (=> d!824005 (=> (not res!1182448) (not e!1800705))))

(assert (=> d!824005 (= res!1182448 (= (list!12542 (_1!19890 (lex!2026 thiss!11361 rules!1139 (print!1745 thiss!11361 (singletonSeq!2179 t2!27))))) (list!12542 (singletonSeq!2179 t2!27))))))

(declare-fun e!1800704 () Bool)

(assert (=> d!824005 (= lt!1011749 e!1800704)))

(declare-fun res!1182447 () Bool)

(assert (=> d!824005 (=> (not res!1182447) (not e!1800704))))

(declare-fun lt!1011748 () tuple2!33556)

(assert (=> d!824005 (= res!1182447 (= (size!26141 (_1!19890 lt!1011748)) 1))))

(assert (=> d!824005 (= lt!1011748 (lex!2026 thiss!11361 rules!1139 (print!1745 thiss!11361 (singletonSeq!2179 t2!27))))))

(assert (=> d!824005 (not (isEmpty!18531 rules!1139))))

(assert (=> d!824005 (= (rulesProduceIndividualToken!2165 thiss!11361 rules!1139 t2!27) lt!1011749)))

(declare-fun b!2842202 () Bool)

(declare-fun res!1182449 () Bool)

(assert (=> b!2842202 (=> (not res!1182449) (not e!1800704))))

(assert (=> b!2842202 (= res!1182449 (= (apply!7829 (_1!19890 lt!1011748) 0) t2!27))))

(declare-fun b!2842203 () Bool)

(assert (=> b!2842203 (= e!1800704 (isEmpty!18530 (_2!19890 lt!1011748)))))

(declare-fun b!2842204 () Bool)

(assert (=> b!2842204 (= e!1800705 (isEmpty!18530 (_2!19890 (lex!2026 thiss!11361 rules!1139 (print!1745 thiss!11361 (singletonSeq!2179 t2!27))))))))

(assert (= (and d!824005 res!1182447) b!2842202))

(assert (= (and b!2842202 res!1182449) b!2842203))

(assert (= (and d!824005 res!1182448) b!2842204))

(declare-fun m!3269911 () Bool)

(assert (=> d!824005 m!3269911))

(declare-fun m!3269913 () Bool)

(assert (=> d!824005 m!3269913))

(declare-fun m!3269915 () Bool)

(assert (=> d!824005 m!3269915))

(declare-fun m!3269917 () Bool)

(assert (=> d!824005 m!3269917))

(assert (=> d!824005 m!3269917))

(assert (=> d!824005 m!3269913))

(declare-fun m!3269919 () Bool)

(assert (=> d!824005 m!3269919))

(assert (=> d!824005 m!3269917))

(declare-fun m!3269921 () Bool)

(assert (=> d!824005 m!3269921))

(assert (=> d!824005 m!3269717))

(declare-fun m!3269923 () Bool)

(assert (=> b!2842202 m!3269923))

(declare-fun m!3269925 () Bool)

(assert (=> b!2842203 m!3269925))

(assert (=> b!2842204 m!3269917))

(assert (=> b!2842204 m!3269917))

(assert (=> b!2842204 m!3269913))

(assert (=> b!2842204 m!3269913))

(assert (=> b!2842204 m!3269915))

(declare-fun m!3269927 () Bool)

(assert (=> b!2842204 m!3269927))

(assert (=> b!2842034 d!824005))

(declare-fun b!2842205 () Bool)

(declare-fun e!1800707 () Bool)

(assert (=> b!2842205 (= e!1800707 (inv!16 (value!162726 t2!27)))))

(declare-fun d!824007 () Bool)

(declare-fun c!458784 () Bool)

(assert (=> d!824007 (= c!458784 ((_ is IntegerValue!15882) (value!162726 t2!27)))))

(assert (=> d!824007 (= (inv!21 (value!162726 t2!27)) e!1800707)))

(declare-fun b!2842206 () Bool)

(declare-fun res!1182450 () Bool)

(declare-fun e!1800706 () Bool)

(assert (=> b!2842206 (=> res!1182450 e!1800706)))

(assert (=> b!2842206 (= res!1182450 (not ((_ is IntegerValue!15884) (value!162726 t2!27))))))

(declare-fun e!1800708 () Bool)

(assert (=> b!2842206 (= e!1800708 e!1800706)))

(declare-fun b!2842207 () Bool)

(assert (=> b!2842207 (= e!1800708 (inv!17 (value!162726 t2!27)))))

(declare-fun b!2842208 () Bool)

(assert (=> b!2842208 (= e!1800706 (inv!15 (value!162726 t2!27)))))

(declare-fun b!2842209 () Bool)

(assert (=> b!2842209 (= e!1800707 e!1800708)))

(declare-fun c!458783 () Bool)

(assert (=> b!2842209 (= c!458783 ((_ is IntegerValue!15883) (value!162726 t2!27)))))

(assert (= (and d!824007 c!458784) b!2842205))

(assert (= (and d!824007 (not c!458784)) b!2842209))

(assert (= (and b!2842209 c!458783) b!2842207))

(assert (= (and b!2842209 (not c!458783)) b!2842206))

(assert (= (and b!2842206 (not res!1182450)) b!2842208))

(declare-fun m!3269929 () Bool)

(assert (=> b!2842205 m!3269929))

(declare-fun m!3269931 () Bool)

(assert (=> b!2842207 m!3269931))

(declare-fun m!3269933 () Bool)

(assert (=> b!2842208 m!3269933))

(assert (=> b!2842045 d!824007))

(declare-fun b!2842214 () Bool)

(declare-fun e!1800711 () Bool)

(declare-fun tp_is_empty!14679 () Bool)

(declare-fun tp!910546 () Bool)

(assert (=> b!2842214 (= e!1800711 (and tp_is_empty!14679 tp!910546))))

(assert (=> b!2842036 (= tp!910484 e!1800711)))

(assert (= (and b!2842036 ((_ is Cons!33675) (originalCharacters!5796 t1!27))) b!2842214))

(declare-fun b!2842225 () Bool)

(declare-fun b_free!82481 () Bool)

(declare-fun b_next!83185 () Bool)

(assert (=> b!2842225 (= b_free!82481 (not b_next!83185))))

(declare-fun tp!910557 () Bool)

(declare-fun b_and!208603 () Bool)

(assert (=> b!2842225 (= tp!910557 b_and!208603)))

(declare-fun b_free!82483 () Bool)

(declare-fun b_next!83187 () Bool)

(assert (=> b!2842225 (= b_free!82483 (not b_next!83187))))

(declare-fun t!232679 () Bool)

(declare-fun tb!154977 () Bool)

(assert (=> (and b!2842225 (= (toChars!6965 (transformation!5064 (h!39096 (t!232645 rules!1139)))) (toChars!6965 (transformation!5064 (rule!7492 t1!27)))) t!232679) tb!154977))

(declare-fun result!193380 () Bool)

(assert (= result!193380 result!193338))

(assert (=> b!2842069 t!232679))

(declare-fun tb!154979 () Bool)

(declare-fun t!232681 () Bool)

(assert (=> (and b!2842225 (= (toChars!6965 (transformation!5064 (h!39096 (t!232645 rules!1139)))) (toChars!6965 (transformation!5064 (rule!7492 t2!27)))) t!232681) tb!154979))

(declare-fun result!193382 () Bool)

(assert (= result!193382 result!193346))

(assert (=> b!2842076 t!232681))

(assert (=> d!823993 t!232681))

(declare-fun b_and!208605 () Bool)

(declare-fun tp!910555 () Bool)

(assert (=> b!2842225 (= tp!910555 (and (=> t!232679 result!193380) (=> t!232681 result!193382) b_and!208605))))

(declare-fun e!1800721 () Bool)

(assert (=> b!2842225 (= e!1800721 (and tp!910557 tp!910555))))

(declare-fun tp!910558 () Bool)

(declare-fun b!2842224 () Bool)

(declare-fun e!1800723 () Bool)

(assert (=> b!2842224 (= e!1800723 (and tp!910558 (inv!45660 (tag!5568 (h!39096 (t!232645 rules!1139)))) (inv!45663 (transformation!5064 (h!39096 (t!232645 rules!1139)))) e!1800721))))

(declare-fun b!2842223 () Bool)

(declare-fun e!1800720 () Bool)

(declare-fun tp!910556 () Bool)

(assert (=> b!2842223 (= e!1800720 (and e!1800723 tp!910556))))

(assert (=> b!2842032 (= tp!910492 e!1800720)))

(assert (= b!2842224 b!2842225))

(assert (= b!2842223 b!2842224))

(assert (= (and b!2842032 ((_ is Cons!33676) (t!232645 rules!1139))) b!2842223))

(declare-fun m!3269935 () Bool)

(assert (=> b!2842224 m!3269935))

(declare-fun m!3269937 () Bool)

(assert (=> b!2842224 m!3269937))

(declare-fun b!2842239 () Bool)

(declare-fun e!1800726 () Bool)

(declare-fun tp!910572 () Bool)

(declare-fun tp!910569 () Bool)

(assert (=> b!2842239 (= e!1800726 (and tp!910572 tp!910569))))

(assert (=> b!2842043 (= tp!910483 e!1800726)))

(declare-fun b!2842236 () Bool)

(assert (=> b!2842236 (= e!1800726 tp_is_empty!14679)))

(declare-fun b!2842237 () Bool)

(declare-fun tp!910571 () Bool)

(declare-fun tp!910570 () Bool)

(assert (=> b!2842237 (= e!1800726 (and tp!910571 tp!910570))))

(declare-fun b!2842238 () Bool)

(declare-fun tp!910573 () Bool)

(assert (=> b!2842238 (= e!1800726 tp!910573)))

(assert (= (and b!2842043 ((_ is ElementMatch!8455) (regex!5064 (rule!7492 t2!27)))) b!2842236))

(assert (= (and b!2842043 ((_ is Concat!13750) (regex!5064 (rule!7492 t2!27)))) b!2842237))

(assert (= (and b!2842043 ((_ is Star!8455) (regex!5064 (rule!7492 t2!27)))) b!2842238))

(assert (= (and b!2842043 ((_ is Union!8455) (regex!5064 (rule!7492 t2!27)))) b!2842239))

(declare-fun b!2842243 () Bool)

(declare-fun e!1800727 () Bool)

(declare-fun tp!910577 () Bool)

(declare-fun tp!910574 () Bool)

(assert (=> b!2842243 (= e!1800727 (and tp!910577 tp!910574))))

(assert (=> b!2842033 (= tp!910494 e!1800727)))

(declare-fun b!2842240 () Bool)

(assert (=> b!2842240 (= e!1800727 tp_is_empty!14679)))

(declare-fun b!2842241 () Bool)

(declare-fun tp!910576 () Bool)

(declare-fun tp!910575 () Bool)

(assert (=> b!2842241 (= e!1800727 (and tp!910576 tp!910575))))

(declare-fun b!2842242 () Bool)

(declare-fun tp!910578 () Bool)

(assert (=> b!2842242 (= e!1800727 tp!910578)))

(assert (= (and b!2842033 ((_ is ElementMatch!8455) (regex!5064 (rule!7492 t1!27)))) b!2842240))

(assert (= (and b!2842033 ((_ is Concat!13750) (regex!5064 (rule!7492 t1!27)))) b!2842241))

(assert (= (and b!2842033 ((_ is Star!8455) (regex!5064 (rule!7492 t1!27)))) b!2842242))

(assert (= (and b!2842033 ((_ is Union!8455) (regex!5064 (rule!7492 t1!27)))) b!2842243))

(declare-fun b!2842247 () Bool)

(declare-fun e!1800728 () Bool)

(declare-fun tp!910582 () Bool)

(declare-fun tp!910579 () Bool)

(assert (=> b!2842247 (= e!1800728 (and tp!910582 tp!910579))))

(assert (=> b!2842039 (= tp!910487 e!1800728)))

(declare-fun b!2842244 () Bool)

(assert (=> b!2842244 (= e!1800728 tp_is_empty!14679)))

(declare-fun b!2842245 () Bool)

(declare-fun tp!910581 () Bool)

(declare-fun tp!910580 () Bool)

(assert (=> b!2842245 (= e!1800728 (and tp!910581 tp!910580))))

(declare-fun b!2842246 () Bool)

(declare-fun tp!910583 () Bool)

(assert (=> b!2842246 (= e!1800728 tp!910583)))

(assert (= (and b!2842039 ((_ is ElementMatch!8455) (regex!5064 (h!39096 rules!1139)))) b!2842244))

(assert (= (and b!2842039 ((_ is Concat!13750) (regex!5064 (h!39096 rules!1139)))) b!2842245))

(assert (= (and b!2842039 ((_ is Star!8455) (regex!5064 (h!39096 rules!1139)))) b!2842246))

(assert (= (and b!2842039 ((_ is Union!8455) (regex!5064 (h!39096 rules!1139)))) b!2842247))

(declare-fun b!2842248 () Bool)

(declare-fun e!1800729 () Bool)

(declare-fun tp!910584 () Bool)

(assert (=> b!2842248 (= e!1800729 (and tp_is_empty!14679 tp!910584))))

(assert (=> b!2842045 (= tp!910491 e!1800729)))

(assert (= (and b!2842045 ((_ is Cons!33675) (originalCharacters!5796 t2!27))) b!2842248))

(declare-fun b_lambda!85441 () Bool)

(assert (= b_lambda!85423 (or (and b!2842038 b_free!82467 (= (toChars!6965 (transformation!5064 (rule!7492 t2!27))) (toChars!6965 (transformation!5064 (rule!7492 t1!27))))) (and b!2842041 b_free!82471) (and b!2842040 b_free!82475 (= (toChars!6965 (transformation!5064 (h!39096 rules!1139))) (toChars!6965 (transformation!5064 (rule!7492 t1!27))))) (and b!2842225 b_free!82483 (= (toChars!6965 (transformation!5064 (h!39096 (t!232645 rules!1139)))) (toChars!6965 (transformation!5064 (rule!7492 t1!27))))) b_lambda!85441)))

(declare-fun b_lambda!85443 () Bool)

(assert (= b_lambda!85425 (or (and b!2842038 b_free!82467) (and b!2842041 b_free!82471 (= (toChars!6965 (transformation!5064 (rule!7492 t1!27))) (toChars!6965 (transformation!5064 (rule!7492 t2!27))))) (and b!2842040 b_free!82475 (= (toChars!6965 (transformation!5064 (h!39096 rules!1139))) (toChars!6965 (transformation!5064 (rule!7492 t2!27))))) (and b!2842225 b_free!82483 (= (toChars!6965 (transformation!5064 (h!39096 (t!232645 rules!1139)))) (toChars!6965 (transformation!5064 (rule!7492 t2!27))))) b_lambda!85443)))

(declare-fun b_lambda!85445 () Bool)

(assert (= b_lambda!85439 (or (and b!2842038 b_free!82467) (and b!2842041 b_free!82471 (= (toChars!6965 (transformation!5064 (rule!7492 t1!27))) (toChars!6965 (transformation!5064 (rule!7492 t2!27))))) (and b!2842040 b_free!82475 (= (toChars!6965 (transformation!5064 (h!39096 rules!1139))) (toChars!6965 (transformation!5064 (rule!7492 t2!27))))) (and b!2842225 b_free!82483 (= (toChars!6965 (transformation!5064 (h!39096 (t!232645 rules!1139)))) (toChars!6965 (transformation!5064 (rule!7492 t2!27))))) b_lambda!85445)))

(check-sat b_and!208555 (not b_next!83179) (not d!824003) (not d!824005) (not b_next!83177) b_and!208605 (not b!2842247) (not b!2842223) (not b!2842201) (not b!2842070) (not b!2842203) (not d!823991) (not b_next!83175) (not b!2842246) (not b!2842076) (not b!2842179) (not b!2842170) (not b_next!83187) b_and!208551 tp_is_empty!14679 (not b!2842197) (not b!2842078) (not d!823957) (not b!2842181) (not b!2842202) (not b!2842208) (not b!2842243) (not d!823949) (not b!2842237) (not b!2842204) (not b_lambda!85445) (not b_next!83173) (not d!823993) (not tb!154949) (not b!2842198) (not b!2842192) (not d!823959) (not d!823951) (not b!2842180) (not b!2842239) (not b_lambda!85443) (not d!823997) (not b!2842242) (not b!2842248) (not b!2842207) b_and!208559 b_and!208603 (not d!823987) (not d!824001) (not b_next!83171) (not b!2842081) (not b!2842214) (not b_next!83185) b_and!208601 (not b!2842069) (not b!2842194) (not b!2842195) (not b!2842077) (not b_lambda!85441) (not b!2842169) b_and!208597 (not b_next!83169) b_and!208599 (not b!2842075) (not b!2842241) (not tb!154955) (not b!2842205) (not b!2842224) (not b!2842245) (not b!2842238))
(check-sat (not b_next!83175) b_and!208555 (not b_next!83179) (not b_next!83177) b_and!208605 (not b_next!83173) b_and!208601 b_and!208599 b_and!208551 (not b_next!83187) b_and!208559 b_and!208603 (not b_next!83171) (not b_next!83185) b_and!208597 (not b_next!83169))
(get-model)

(declare-fun d!824033 () Bool)

(assert (=> d!824033 true))

(declare-fun lambda!104260 () Int)

(declare-fun order!18011 () Int)

(declare-fun order!18009 () Int)

(declare-fun dynLambda!14167 (Int Int) Int)

(declare-fun dynLambda!14168 (Int Int) Int)

(assert (=> d!824033 (< (dynLambda!14167 order!18009 (toValue!7106 (transformation!5064 (rule!7492 t1!27)))) (dynLambda!14168 order!18011 lambda!104260))))

(declare-fun Forall2!843 (Int) Bool)

(assert (=> d!824033 (= (equivClasses!2010 (toChars!6965 (transformation!5064 (rule!7492 t1!27))) (toValue!7106 (transformation!5064 (rule!7492 t1!27)))) (Forall2!843 lambda!104260))))

(declare-fun bs!518916 () Bool)

(assert (= bs!518916 d!824033))

(declare-fun m!3269973 () Bool)

(assert (=> bs!518916 m!3269973))

(assert (=> b!2842198 d!824033))

(declare-fun bs!518917 () Bool)

(declare-fun d!824035 () Bool)

(assert (= bs!518917 (and d!824035 d!823959)))

(declare-fun lambda!104261 () Int)

(assert (=> bs!518917 (= lambda!104261 lambda!104251)))

(assert (=> d!824035 true))

(declare-fun lt!1011762 () Bool)

(assert (=> d!824035 (= lt!1011762 (forall!6916 (t!232645 rules!1139) lambda!104261))))

(declare-fun e!1800744 () Bool)

(assert (=> d!824035 (= lt!1011762 e!1800744)))

(declare-fun res!1182468 () Bool)

(assert (=> d!824035 (=> res!1182468 e!1800744)))

(assert (=> d!824035 (= res!1182468 (not ((_ is Cons!33676) (t!232645 rules!1139))))))

(assert (=> d!824035 (= (rulesValidInductive!1732 thiss!11361 (t!232645 rules!1139)) lt!1011762)))

(declare-fun b!2842274 () Bool)

(declare-fun e!1800745 () Bool)

(assert (=> b!2842274 (= e!1800744 e!1800745)))

(declare-fun res!1182467 () Bool)

(assert (=> b!2842274 (=> (not res!1182467) (not e!1800745))))

(assert (=> b!2842274 (= res!1182467 (ruleValid!1605 thiss!11361 (h!39096 (t!232645 rules!1139))))))

(declare-fun b!2842275 () Bool)

(assert (=> b!2842275 (= e!1800745 (rulesValidInductive!1732 thiss!11361 (t!232645 (t!232645 rules!1139))))))

(assert (= (and d!824035 (not res!1182468)) b!2842274))

(assert (= (and b!2842274 res!1182467) b!2842275))

(declare-fun m!3269975 () Bool)

(assert (=> d!824035 m!3269975))

(declare-fun m!3269977 () Bool)

(assert (=> b!2842274 m!3269977))

(declare-fun m!3269979 () Bool)

(assert (=> b!2842275 m!3269979))

(assert (=> b!2842170 d!824035))

(declare-fun d!824037 () Bool)

(declare-fun charsToBigInt!1 (List!33798) Int)

(assert (=> d!824037 (= (inv!17 (value!162726 t2!27)) (= (charsToBigInt!1 (text!37506 (value!162726 t2!27))) (value!162718 (value!162726 t2!27))))))

(declare-fun bs!518918 () Bool)

(assert (= bs!518918 d!824037))

(declare-fun m!3269981 () Bool)

(assert (=> bs!518918 m!3269981))

(assert (=> b!2842207 d!824037))

(declare-fun d!824039 () Bool)

(assert (=> d!824039 (= (isEmpty!18534 (originalCharacters!5796 t2!27)) ((_ is Nil!33675) (originalCharacters!5796 t2!27)))))

(assert (=> d!823951 d!824039))

(declare-fun d!824041 () Bool)

(declare-fun res!1182473 () Bool)

(declare-fun e!1800748 () Bool)

(assert (=> d!824041 (=> (not res!1182473) (not e!1800748))))

(declare-fun validRegex!3350 (Regex!8455) Bool)

(assert (=> d!824041 (= res!1182473 (validRegex!3350 (regex!5064 (h!39096 rules!1139))))))

(assert (=> d!824041 (= (ruleValid!1605 thiss!11361 (h!39096 rules!1139)) e!1800748)))

(declare-fun b!2842280 () Bool)

(declare-fun res!1182474 () Bool)

(assert (=> b!2842280 (=> (not res!1182474) (not e!1800748))))

(declare-fun nullable!2620 (Regex!8455) Bool)

(assert (=> b!2842280 (= res!1182474 (not (nullable!2620 (regex!5064 (h!39096 rules!1139)))))))

(declare-fun b!2842281 () Bool)

(assert (=> b!2842281 (= e!1800748 (not (= (tag!5568 (h!39096 rules!1139)) (String!37037 ""))))))

(assert (= (and d!824041 res!1182473) b!2842280))

(assert (= (and b!2842280 res!1182474) b!2842281))

(declare-fun m!3269983 () Bool)

(assert (=> d!824041 m!3269983))

(declare-fun m!3269985 () Bool)

(assert (=> b!2842280 m!3269985))

(assert (=> b!2842169 d!824041))

(declare-fun d!824043 () Bool)

(assert (=> d!824043 (= (inv!45660 (tag!5568 (h!39096 (t!232645 rules!1139)))) (= (mod (str.len (value!162725 (tag!5568 (h!39096 (t!232645 rules!1139))))) 2) 0))))

(assert (=> b!2842224 d!824043))

(declare-fun d!824045 () Bool)

(declare-fun res!1182475 () Bool)

(declare-fun e!1800749 () Bool)

(assert (=> d!824045 (=> (not res!1182475) (not e!1800749))))

(assert (=> d!824045 (= res!1182475 (semiInverseModEq!2111 (toChars!6965 (transformation!5064 (h!39096 (t!232645 rules!1139)))) (toValue!7106 (transformation!5064 (h!39096 (t!232645 rules!1139))))))))

(assert (=> d!824045 (= (inv!45663 (transformation!5064 (h!39096 (t!232645 rules!1139)))) e!1800749)))

(declare-fun b!2842282 () Bool)

(assert (=> b!2842282 (= e!1800749 (equivClasses!2010 (toChars!6965 (transformation!5064 (h!39096 (t!232645 rules!1139)))) (toValue!7106 (transformation!5064 (h!39096 (t!232645 rules!1139))))))))

(assert (= (and d!824045 res!1182475) b!2842282))

(declare-fun m!3269987 () Bool)

(assert (=> d!824045 m!3269987))

(declare-fun m!3269989 () Bool)

(assert (=> b!2842282 m!3269989))

(assert (=> b!2842224 d!824045))

(declare-fun d!824047 () Bool)

(declare-fun charsToInt!0 (List!33798) (_ BitVec 32))

(assert (=> d!824047 (= (inv!16 (value!162726 t2!27)) (= (charsToInt!0 (text!37505 (value!162726 t2!27))) (value!162717 (value!162726 t2!27))))))

(declare-fun bs!518919 () Bool)

(assert (= bs!518919 d!824047))

(declare-fun m!3269991 () Bool)

(assert (=> bs!518919 m!3269991))

(assert (=> b!2842205 d!824047))

(declare-fun d!824049 () Bool)

(assert (=> d!824049 (= (inv!16 (value!162726 t1!27)) (= (charsToInt!0 (text!37505 (value!162726 t1!27))) (value!162717 (value!162726 t1!27))))))

(declare-fun bs!518920 () Bool)

(assert (= bs!518920 d!824049))

(declare-fun m!3269993 () Bool)

(assert (=> bs!518920 m!3269993))

(assert (=> b!2842192 d!824049))

(declare-fun d!824051 () Bool)

(declare-fun charsToBigInt!0 (List!33798 Int) Int)

(assert (=> d!824051 (= (inv!15 (value!162726 t2!27)) (= (charsToBigInt!0 (text!37507 (value!162726 t2!27)) 0) (value!162721 (value!162726 t2!27))))))

(declare-fun bs!518921 () Bool)

(assert (= bs!518921 d!824051))

(declare-fun m!3269995 () Bool)

(assert (=> bs!518921 m!3269995))

(assert (=> b!2842208 d!824051))

(declare-fun d!824053 () Bool)

(declare-fun list!12545 (Conc!10444) List!33799)

(assert (=> d!824053 (= (list!12541 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t2!27))) (value!162726 t2!27))) (list!12545 (c!458766 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t2!27))) (value!162726 t2!27)))))))

(declare-fun bs!518922 () Bool)

(assert (= bs!518922 d!824053))

(declare-fun m!3269997 () Bool)

(assert (=> bs!518922 m!3269997))

(assert (=> b!2842076 d!824053))

(declare-fun d!824055 () Bool)

(assert (=> d!824055 (= (inv!17 (value!162726 t1!27)) (= (charsToBigInt!1 (text!37506 (value!162726 t1!27))) (value!162718 (value!162726 t1!27))))))

(declare-fun bs!518923 () Bool)

(assert (= bs!518923 d!824055))

(declare-fun m!3269999 () Bool)

(assert (=> bs!518923 m!3269999))

(assert (=> b!2842194 d!824055))

(declare-fun d!824057 () Bool)

(declare-fun lt!1011765 () Int)

(assert (=> d!824057 (>= lt!1011765 0)))

(declare-fun e!1800752 () Int)

(assert (=> d!824057 (= lt!1011765 e!1800752)))

(declare-fun c!458791 () Bool)

(assert (=> d!824057 (= c!458791 ((_ is Nil!33675) (originalCharacters!5796 t2!27)))))

(assert (=> d!824057 (= (size!26140 (originalCharacters!5796 t2!27)) lt!1011765)))

(declare-fun b!2842287 () Bool)

(assert (=> b!2842287 (= e!1800752 0)))

(declare-fun b!2842288 () Bool)

(assert (=> b!2842288 (= e!1800752 (+ 1 (size!26140 (t!232644 (originalCharacters!5796 t2!27)))))))

(assert (= (and d!824057 c!458791) b!2842287))

(assert (= (and d!824057 (not c!458791)) b!2842288))

(declare-fun m!3270001 () Bool)

(assert (=> b!2842288 m!3270001))

(assert (=> b!2842077 d!824057))

(declare-fun bs!518924 () Bool)

(declare-fun d!824059 () Bool)

(assert (= bs!518924 (and d!824059 d!824033)))

(declare-fun lambda!104262 () Int)

(assert (=> bs!518924 (= (= (toValue!7106 (transformation!5064 (h!39096 rules!1139))) (toValue!7106 (transformation!5064 (rule!7492 t1!27)))) (= lambda!104262 lambda!104260))))

(assert (=> d!824059 true))

(assert (=> d!824059 (< (dynLambda!14167 order!18009 (toValue!7106 (transformation!5064 (h!39096 rules!1139)))) (dynLambda!14168 order!18011 lambda!104262))))

(assert (=> d!824059 (= (equivClasses!2010 (toChars!6965 (transformation!5064 (h!39096 rules!1139))) (toValue!7106 (transformation!5064 (h!39096 rules!1139)))) (Forall2!843 lambda!104262))))

(declare-fun bs!518925 () Bool)

(assert (= bs!518925 d!824059))

(declare-fun m!3270003 () Bool)

(assert (=> bs!518925 m!3270003))

(assert (=> b!2842081 d!824059))

(assert (=> d!824005 d!823953))

(declare-fun d!824061 () Bool)

(declare-fun list!12546 (Conc!10446) List!33803)

(assert (=> d!824061 (= (list!12542 (_1!19890 (lex!2026 thiss!11361 rules!1139 (print!1745 thiss!11361 (singletonSeq!2179 t2!27))))) (list!12546 (c!458785 (_1!19890 (lex!2026 thiss!11361 rules!1139 (print!1745 thiss!11361 (singletonSeq!2179 t2!27)))))))))

(declare-fun bs!518926 () Bool)

(assert (= bs!518926 d!824061))

(declare-fun m!3270005 () Bool)

(assert (=> bs!518926 m!3270005))

(assert (=> d!824005 d!824061))

(declare-fun d!824063 () Bool)

(assert (=> d!824063 (= (list!12542 (singletonSeq!2179 t2!27)) (list!12546 (c!458785 (singletonSeq!2179 t2!27))))))

(declare-fun bs!518927 () Bool)

(assert (= bs!518927 d!824063))

(declare-fun m!3270007 () Bool)

(assert (=> bs!518927 m!3270007))

(assert (=> d!824005 d!824063))

(declare-fun b!2842347 () Bool)

(declare-fun e!1800795 () Bool)

(declare-fun lt!1011787 () tuple2!33556)

(declare-datatypes ((tuple2!33560 0))(
  ( (tuple2!33561 (_1!19892 List!33803) (_2!19892 List!33799)) )
))
(declare-fun lexList!1260 (LexerInterface!4654 List!33800 List!33799) tuple2!33560)

(assert (=> b!2842347 (= e!1800795 (= (list!12541 (_2!19890 lt!1011787)) (_2!19892 (lexList!1260 thiss!11361 rules!1139 (list!12541 (print!1745 thiss!11361 (singletonSeq!2179 t2!27)))))))))

(declare-fun b!2842348 () Bool)

(declare-fun e!1800794 () Bool)

(declare-fun e!1800796 () Bool)

(assert (=> b!2842348 (= e!1800794 e!1800796)))

(declare-fun res!1182514 () Bool)

(declare-fun size!26145 (BalanceConc!20526) Int)

(assert (=> b!2842348 (= res!1182514 (< (size!26145 (_2!19890 lt!1011787)) (size!26145 (print!1745 thiss!11361 (singletonSeq!2179 t2!27)))))))

(assert (=> b!2842348 (=> (not res!1182514) (not e!1800796))))

(declare-fun d!824065 () Bool)

(assert (=> d!824065 e!1800795))

(declare-fun res!1182513 () Bool)

(assert (=> d!824065 (=> (not res!1182513) (not e!1800795))))

(assert (=> d!824065 (= res!1182513 e!1800794)))

(declare-fun c!458805 () Bool)

(assert (=> d!824065 (= c!458805 (> (size!26141 (_1!19890 lt!1011787)) 0))))

(declare-fun lexTailRecV2!898 (LexerInterface!4654 List!33800 BalanceConc!20526 BalanceConc!20526 BalanceConc!20526 BalanceConc!20530) tuple2!33556)

(assert (=> d!824065 (= lt!1011787 (lexTailRecV2!898 thiss!11361 rules!1139 (print!1745 thiss!11361 (singletonSeq!2179 t2!27)) (BalanceConc!20527 Empty!10444) (print!1745 thiss!11361 (singletonSeq!2179 t2!27)) (BalanceConc!20531 Empty!10446)))))

(assert (=> d!824065 (= (lex!2026 thiss!11361 rules!1139 (print!1745 thiss!11361 (singletonSeq!2179 t2!27))) lt!1011787)))

(declare-fun b!2842349 () Bool)

(assert (=> b!2842349 (= e!1800794 (= (_2!19890 lt!1011787) (print!1745 thiss!11361 (singletonSeq!2179 t2!27))))))

(declare-fun b!2842350 () Bool)

(declare-fun isEmpty!18537 (BalanceConc!20530) Bool)

(assert (=> b!2842350 (= e!1800796 (not (isEmpty!18537 (_1!19890 lt!1011787))))))

(declare-fun b!2842351 () Bool)

(declare-fun res!1182512 () Bool)

(assert (=> b!2842351 (=> (not res!1182512) (not e!1800795))))

(assert (=> b!2842351 (= res!1182512 (= (list!12542 (_1!19890 lt!1011787)) (_1!19892 (lexList!1260 thiss!11361 rules!1139 (list!12541 (print!1745 thiss!11361 (singletonSeq!2179 t2!27)))))))))

(assert (= (and d!824065 c!458805) b!2842348))

(assert (= (and d!824065 (not c!458805)) b!2842349))

(assert (= (and b!2842348 res!1182514) b!2842350))

(assert (= (and d!824065 res!1182513) b!2842351))

(assert (= (and b!2842351 res!1182512) b!2842347))

(declare-fun m!3270145 () Bool)

(assert (=> d!824065 m!3270145))

(assert (=> d!824065 m!3269913))

(assert (=> d!824065 m!3269913))

(declare-fun m!3270147 () Bool)

(assert (=> d!824065 m!3270147))

(declare-fun m!3270149 () Bool)

(assert (=> b!2842350 m!3270149))

(declare-fun m!3270151 () Bool)

(assert (=> b!2842347 m!3270151))

(assert (=> b!2842347 m!3269913))

(declare-fun m!3270153 () Bool)

(assert (=> b!2842347 m!3270153))

(assert (=> b!2842347 m!3270153))

(declare-fun m!3270155 () Bool)

(assert (=> b!2842347 m!3270155))

(declare-fun m!3270157 () Bool)

(assert (=> b!2842348 m!3270157))

(assert (=> b!2842348 m!3269913))

(declare-fun m!3270159 () Bool)

(assert (=> b!2842348 m!3270159))

(declare-fun m!3270161 () Bool)

(assert (=> b!2842351 m!3270161))

(assert (=> b!2842351 m!3269913))

(assert (=> b!2842351 m!3270153))

(assert (=> b!2842351 m!3270153))

(assert (=> b!2842351 m!3270155))

(assert (=> d!824005 d!824065))

(declare-fun d!824133 () Bool)

(declare-fun lt!1011791 () Int)

(declare-fun size!26146 (List!33803) Int)

(assert (=> d!824133 (= lt!1011791 (size!26146 (list!12542 (_1!19890 lt!1011748))))))

(declare-fun size!26147 (Conc!10446) Int)

(assert (=> d!824133 (= lt!1011791 (size!26147 (c!458785 (_1!19890 lt!1011748))))))

(assert (=> d!824133 (= (size!26141 (_1!19890 lt!1011748)) lt!1011791)))

(declare-fun bs!518961 () Bool)

(assert (= bs!518961 d!824133))

(declare-fun m!3270169 () Bool)

(assert (=> bs!518961 m!3270169))

(assert (=> bs!518961 m!3270169))

(declare-fun m!3270171 () Bool)

(assert (=> bs!518961 m!3270171))

(declare-fun m!3270173 () Bool)

(assert (=> bs!518961 m!3270173))

(assert (=> d!824005 d!824133))

(declare-fun d!824139 () Bool)

(declare-fun e!1800808 () Bool)

(assert (=> d!824139 e!1800808))

(declare-fun res!1182525 () Bool)

(assert (=> d!824139 (=> (not res!1182525) (not e!1800808))))

(declare-fun lt!1011797 () BalanceConc!20530)

(assert (=> d!824139 (= res!1182525 (= (list!12542 lt!1011797) (Cons!33679 t2!27 Nil!33679)))))

(declare-fun singleton!956 (Token!9530) BalanceConc!20530)

(assert (=> d!824139 (= lt!1011797 (singleton!956 t2!27))))

(assert (=> d!824139 (= (singletonSeq!2179 t2!27) lt!1011797)))

(declare-fun b!2842375 () Bool)

(declare-fun isBalanced!3143 (Conc!10446) Bool)

(assert (=> b!2842375 (= e!1800808 (isBalanced!3143 (c!458785 lt!1011797)))))

(assert (= (and d!824139 res!1182525) b!2842375))

(declare-fun m!3270187 () Bool)

(assert (=> d!824139 m!3270187))

(declare-fun m!3270189 () Bool)

(assert (=> d!824139 m!3270189))

(declare-fun m!3270191 () Bool)

(assert (=> b!2842375 m!3270191))

(assert (=> d!824005 d!824139))

(declare-fun d!824149 () Bool)

(declare-fun lt!1011800 () BalanceConc!20526)

(declare-fun printList!1234 (LexerInterface!4654 List!33803) List!33799)

(assert (=> d!824149 (= (list!12541 lt!1011800) (printList!1234 thiss!11361 (list!12542 (singletonSeq!2179 t2!27))))))

(declare-fun printTailRec!1177 (LexerInterface!4654 BalanceConc!20530 Int BalanceConc!20526) BalanceConc!20526)

(assert (=> d!824149 (= lt!1011800 (printTailRec!1177 thiss!11361 (singletonSeq!2179 t2!27) 0 (BalanceConc!20527 Empty!10444)))))

(assert (=> d!824149 (= (print!1745 thiss!11361 (singletonSeq!2179 t2!27)) lt!1011800)))

(declare-fun bs!518965 () Bool)

(assert (= bs!518965 d!824149))

(declare-fun m!3270209 () Bool)

(assert (=> bs!518965 m!3270209))

(assert (=> bs!518965 m!3269917))

(assert (=> bs!518965 m!3269921))

(assert (=> bs!518965 m!3269921))

(declare-fun m!3270211 () Bool)

(assert (=> bs!518965 m!3270211))

(assert (=> bs!518965 m!3269917))

(declare-fun m!3270213 () Bool)

(assert (=> bs!518965 m!3270213))

(assert (=> d!824005 d!824149))

(declare-fun d!824153 () Bool)

(assert (=> d!824153 true))

(declare-fun lambda!104273 () Int)

(declare-fun order!18015 () Int)

(declare-fun order!18013 () Int)

(declare-fun dynLambda!14170 (Int Int) Int)

(declare-fun dynLambda!14171 (Int Int) Int)

(assert (=> d!824153 (< (dynLambda!14170 order!18013 (toChars!6965 (transformation!5064 (rule!7492 t2!27)))) (dynLambda!14171 order!18015 lambda!104273))))

(assert (=> d!824153 true))

(assert (=> d!824153 (< (dynLambda!14167 order!18009 (toValue!7106 (transformation!5064 (rule!7492 t2!27)))) (dynLambda!14171 order!18015 lambda!104273))))

(declare-fun Forall!1246 (Int) Bool)

(assert (=> d!824153 (= (semiInverseModEq!2111 (toChars!6965 (transformation!5064 (rule!7492 t2!27))) (toValue!7106 (transformation!5064 (rule!7492 t2!27)))) (Forall!1246 lambda!104273))))

(declare-fun bs!518966 () Bool)

(assert (= bs!518966 d!824153))

(declare-fun m!3270215 () Bool)

(assert (=> bs!518966 m!3270215))

(assert (=> d!823997 d!824153))

(declare-fun d!824155 () Bool)

(assert (=> d!824155 (= (inv!15 (value!162726 t1!27)) (= (charsToBigInt!0 (text!37507 (value!162726 t1!27)) 0) (value!162721 (value!162726 t1!27))))))

(declare-fun bs!518967 () Bool)

(assert (= bs!518967 d!824155))

(declare-fun m!3270217 () Bool)

(assert (=> bs!518967 m!3270217))

(assert (=> b!2842195 d!824155))

(declare-fun bs!518968 () Bool)

(declare-fun d!824157 () Bool)

(assert (= bs!518968 (and d!824157 d!823959)))

(declare-fun lambda!104276 () Int)

(assert (=> bs!518968 (= lambda!104276 lambda!104251)))

(declare-fun bs!518969 () Bool)

(assert (= bs!518969 (and d!824157 d!824035)))

(assert (=> bs!518969 (= lambda!104276 lambda!104261)))

(assert (=> d!824157 true))

(declare-fun lt!1011803 () Bool)

(assert (=> d!824157 (= lt!1011803 (rulesValidInductive!1732 thiss!11361 rules!1139))))

(assert (=> d!824157 (= lt!1011803 (forall!6916 rules!1139 lambda!104276))))

(assert (=> d!824157 (= (rulesValid!1880 thiss!11361 rules!1139) lt!1011803)))

(declare-fun bs!518970 () Bool)

(assert (= bs!518970 d!824157))

(assert (=> bs!518970 m!3269695))

(declare-fun m!3270219 () Bool)

(assert (=> bs!518970 m!3270219))

(assert (=> d!824003 d!824157))

(declare-fun bs!518971 () Bool)

(declare-fun d!824159 () Bool)

(assert (= bs!518971 (and d!824159 d!824033)))

(declare-fun lambda!104277 () Int)

(assert (=> bs!518971 (= (= (toValue!7106 (transformation!5064 (rule!7492 t2!27))) (toValue!7106 (transformation!5064 (rule!7492 t1!27)))) (= lambda!104277 lambda!104260))))

(declare-fun bs!518972 () Bool)

(assert (= bs!518972 (and d!824159 d!824059)))

(assert (=> bs!518972 (= (= (toValue!7106 (transformation!5064 (rule!7492 t2!27))) (toValue!7106 (transformation!5064 (h!39096 rules!1139)))) (= lambda!104277 lambda!104262))))

(assert (=> d!824159 true))

(assert (=> d!824159 (< (dynLambda!14167 order!18009 (toValue!7106 (transformation!5064 (rule!7492 t2!27)))) (dynLambda!14168 order!18011 lambda!104277))))

(assert (=> d!824159 (= (equivClasses!2010 (toChars!6965 (transformation!5064 (rule!7492 t2!27))) (toValue!7106 (transformation!5064 (rule!7492 t2!27)))) (Forall2!843 lambda!104277))))

(declare-fun bs!518973 () Bool)

(assert (= bs!518973 d!824159))

(declare-fun m!3270221 () Bool)

(assert (=> bs!518973 m!3270221))

(assert (=> b!2842197 d!824159))

(declare-fun d!824161 () Bool)

(declare-fun c!458808 () Bool)

(assert (=> d!824161 (= c!458808 ((_ is Node!10444) (c!458766 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t1!27))) (value!162726 t1!27)))))))

(declare-fun e!1800839 () Bool)

(assert (=> d!824161 (= (inv!45667 (c!458766 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t1!27))) (value!162726 t1!27)))) e!1800839)))

(declare-fun b!2842456 () Bool)

(declare-fun inv!45671 (Conc!10444) Bool)

(assert (=> b!2842456 (= e!1800839 (inv!45671 (c!458766 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t1!27))) (value!162726 t1!27)))))))

(declare-fun b!2842457 () Bool)

(declare-fun e!1800840 () Bool)

(assert (=> b!2842457 (= e!1800839 e!1800840)))

(declare-fun res!1182528 () Bool)

(assert (=> b!2842457 (= res!1182528 (not ((_ is Leaf!15895) (c!458766 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t1!27))) (value!162726 t1!27))))))))

(assert (=> b!2842457 (=> res!1182528 e!1800840)))

(declare-fun b!2842458 () Bool)

(declare-fun inv!45672 (Conc!10444) Bool)

(assert (=> b!2842458 (= e!1800840 (inv!45672 (c!458766 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t1!27))) (value!162726 t1!27)))))))

(assert (= (and d!824161 c!458808) b!2842456))

(assert (= (and d!824161 (not c!458808)) b!2842457))

(assert (= (and b!2842457 (not res!1182528)) b!2842458))

(declare-fun m!3270223 () Bool)

(assert (=> b!2842456 m!3270223))

(declare-fun m!3270225 () Bool)

(assert (=> b!2842458 m!3270225))

(assert (=> b!2842075 d!824161))

(declare-fun d!824163 () Bool)

(declare-fun isBalanced!3144 (Conc!10444) Bool)

(assert (=> d!824163 (= (inv!45668 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t2!27))) (value!162726 t2!27))) (isBalanced!3144 (c!458766 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t2!27))) (value!162726 t2!27)))))))

(declare-fun bs!518974 () Bool)

(assert (= bs!518974 d!824163))

(declare-fun m!3270227 () Bool)

(assert (=> bs!518974 m!3270227))

(assert (=> tb!154955 d!824163))

(declare-fun d!824165 () Bool)

(assert (=> d!824165 (= (list!12541 lt!1011747) (list!12545 (c!458766 lt!1011747)))))

(declare-fun bs!518975 () Bool)

(assert (= bs!518975 d!824165))

(declare-fun m!3270229 () Bool)

(assert (=> bs!518975 m!3270229))

(assert (=> d!823993 d!824165))

(declare-fun d!824167 () Bool)

(declare-fun lt!1011804 () Bool)

(assert (=> d!824167 (= lt!1011804 (isEmpty!18534 (list!12541 (_2!19890 (lex!2026 thiss!11361 rules!1139 (print!1745 thiss!11361 (singletonSeq!2179 t2!27)))))))))

(assert (=> d!824167 (= lt!1011804 (isEmpty!18535 (c!458766 (_2!19890 (lex!2026 thiss!11361 rules!1139 (print!1745 thiss!11361 (singletonSeq!2179 t2!27)))))))))

(assert (=> d!824167 (= (isEmpty!18530 (_2!19890 (lex!2026 thiss!11361 rules!1139 (print!1745 thiss!11361 (singletonSeq!2179 t2!27))))) lt!1011804)))

(declare-fun bs!518976 () Bool)

(assert (= bs!518976 d!824167))

(declare-fun m!3270231 () Bool)

(assert (=> bs!518976 m!3270231))

(assert (=> bs!518976 m!3270231))

(declare-fun m!3270233 () Bool)

(assert (=> bs!518976 m!3270233))

(declare-fun m!3270235 () Bool)

(assert (=> bs!518976 m!3270235))

(assert (=> b!2842204 d!824167))

(assert (=> b!2842204 d!824065))

(assert (=> b!2842204 d!824149))

(assert (=> b!2842204 d!824139))

(declare-fun d!824169 () Bool)

(declare-fun lt!1011807 () Token!9530)

(declare-fun apply!7832 (List!33803 Int) Token!9530)

(assert (=> d!824169 (= lt!1011807 (apply!7832 (list!12542 (_1!19890 lt!1011740)) 0))))

(declare-fun apply!7833 (Conc!10446 Int) Token!9530)

(assert (=> d!824169 (= lt!1011807 (apply!7833 (c!458785 (_1!19890 lt!1011740)) 0))))

(declare-fun e!1800843 () Bool)

(assert (=> d!824169 e!1800843))

(declare-fun res!1182531 () Bool)

(assert (=> d!824169 (=> (not res!1182531) (not e!1800843))))

(assert (=> d!824169 (= res!1182531 (<= 0 0))))

(assert (=> d!824169 (= (apply!7829 (_1!19890 lt!1011740) 0) lt!1011807)))

(declare-fun b!2842461 () Bool)

(assert (=> b!2842461 (= e!1800843 (< 0 (size!26141 (_1!19890 lt!1011740))))))

(assert (= (and d!824169 res!1182531) b!2842461))

(declare-fun m!3270237 () Bool)

(assert (=> d!824169 m!3270237))

(assert (=> d!824169 m!3270237))

(declare-fun m!3270239 () Bool)

(assert (=> d!824169 m!3270239))

(declare-fun m!3270241 () Bool)

(assert (=> d!824169 m!3270241))

(assert (=> b!2842461 m!3269867))

(assert (=> b!2842179 d!824169))

(declare-fun d!824171 () Bool)

(declare-fun lt!1011808 () Bool)

(assert (=> d!824171 (= lt!1011808 (isEmpty!18534 (list!12541 (_2!19890 lt!1011748))))))

(assert (=> d!824171 (= lt!1011808 (isEmpty!18535 (c!458766 (_2!19890 lt!1011748))))))

(assert (=> d!824171 (= (isEmpty!18530 (_2!19890 lt!1011748)) lt!1011808)))

(declare-fun bs!518977 () Bool)

(assert (= bs!518977 d!824171))

(declare-fun m!3270243 () Bool)

(assert (=> bs!518977 m!3270243))

(assert (=> bs!518977 m!3270243))

(declare-fun m!3270245 () Bool)

(assert (=> bs!518977 m!3270245))

(declare-fun m!3270247 () Bool)

(assert (=> bs!518977 m!3270247))

(assert (=> b!2842203 d!824171))

(declare-fun d!824173 () Bool)

(assert (=> d!824173 (= (list!12541 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t1!27))) (value!162726 t1!27))) (list!12545 (c!458766 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t1!27))) (value!162726 t1!27)))))))

(declare-fun bs!518978 () Bool)

(assert (= bs!518978 d!824173))

(declare-fun m!3270249 () Bool)

(assert (=> bs!518978 m!3270249))

(assert (=> b!2842069 d!824173))

(declare-fun d!824175 () Bool)

(declare-fun lt!1011809 () Token!9530)

(assert (=> d!824175 (= lt!1011809 (apply!7832 (list!12542 (_1!19890 lt!1011748)) 0))))

(assert (=> d!824175 (= lt!1011809 (apply!7833 (c!458785 (_1!19890 lt!1011748)) 0))))

(declare-fun e!1800844 () Bool)

(assert (=> d!824175 e!1800844))

(declare-fun res!1182532 () Bool)

(assert (=> d!824175 (=> (not res!1182532) (not e!1800844))))

(assert (=> d!824175 (= res!1182532 (<= 0 0))))

(assert (=> d!824175 (= (apply!7829 (_1!19890 lt!1011748) 0) lt!1011809)))

(declare-fun b!2842462 () Bool)

(assert (=> b!2842462 (= e!1800844 (< 0 (size!26141 (_1!19890 lt!1011748))))))

(assert (= (and d!824175 res!1182532) b!2842462))

(assert (=> d!824175 m!3270169))

(assert (=> d!824175 m!3270169))

(declare-fun m!3270251 () Bool)

(assert (=> d!824175 m!3270251))

(declare-fun m!3270253 () Bool)

(assert (=> d!824175 m!3270253))

(assert (=> b!2842462 m!3269911))

(assert (=> b!2842202 d!824175))

(declare-fun d!824177 () Bool)

(declare-fun lt!1011810 () Int)

(assert (=> d!824177 (>= lt!1011810 0)))

(declare-fun e!1800845 () Int)

(assert (=> d!824177 (= lt!1011810 e!1800845)))

(declare-fun c!458809 () Bool)

(assert (=> d!824177 (= c!458809 ((_ is Nil!33675) (originalCharacters!5796 t1!27)))))

(assert (=> d!824177 (= (size!26140 (originalCharacters!5796 t1!27)) lt!1011810)))

(declare-fun b!2842463 () Bool)

(assert (=> b!2842463 (= e!1800845 0)))

(declare-fun b!2842464 () Bool)

(assert (=> b!2842464 (= e!1800845 (+ 1 (size!26140 (t!232644 (originalCharacters!5796 t1!27)))))))

(assert (= (and d!824177 c!458809) b!2842463))

(assert (= (and d!824177 (not c!458809)) b!2842464))

(declare-fun m!3270255 () Bool)

(assert (=> b!2842464 m!3270255))

(assert (=> b!2842070 d!824177))

(declare-fun d!824179 () Bool)

(assert (=> d!824179 (= (inv!45668 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t1!27))) (value!162726 t1!27))) (isBalanced!3144 (c!458766 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t1!27))) (value!162726 t1!27)))))))

(declare-fun bs!518979 () Bool)

(assert (= bs!518979 d!824179))

(declare-fun m!3270257 () Bool)

(assert (=> bs!518979 m!3270257))

(assert (=> tb!154949 d!824179))

(declare-fun bs!518980 () Bool)

(declare-fun d!824181 () Bool)

(assert (= bs!518980 (and d!824181 d!824153)))

(declare-fun lambda!104278 () Int)

(assert (=> bs!518980 (= (and (= (toChars!6965 (transformation!5064 (h!39096 rules!1139))) (toChars!6965 (transformation!5064 (rule!7492 t2!27)))) (= (toValue!7106 (transformation!5064 (h!39096 rules!1139))) (toValue!7106 (transformation!5064 (rule!7492 t2!27))))) (= lambda!104278 lambda!104273))))

(assert (=> d!824181 true))

(assert (=> d!824181 (< (dynLambda!14170 order!18013 (toChars!6965 (transformation!5064 (h!39096 rules!1139)))) (dynLambda!14171 order!18015 lambda!104278))))

(assert (=> d!824181 true))

(assert (=> d!824181 (< (dynLambda!14167 order!18009 (toValue!7106 (transformation!5064 (h!39096 rules!1139)))) (dynLambda!14171 order!18015 lambda!104278))))

(assert (=> d!824181 (= (semiInverseModEq!2111 (toChars!6965 (transformation!5064 (h!39096 rules!1139))) (toValue!7106 (transformation!5064 (h!39096 rules!1139)))) (Forall!1246 lambda!104278))))

(declare-fun bs!518981 () Bool)

(assert (= bs!518981 d!824181))

(declare-fun m!3270259 () Bool)

(assert (=> bs!518981 m!3270259))

(assert (=> d!823957 d!824181))

(declare-fun d!824183 () Bool)

(declare-fun c!458810 () Bool)

(assert (=> d!824183 (= c!458810 ((_ is Node!10444) (c!458766 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t2!27))) (value!162726 t2!27)))))))

(declare-fun e!1800846 () Bool)

(assert (=> d!824183 (= (inv!45667 (c!458766 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t2!27))) (value!162726 t2!27)))) e!1800846)))

(declare-fun b!2842465 () Bool)

(assert (=> b!2842465 (= e!1800846 (inv!45671 (c!458766 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t2!27))) (value!162726 t2!27)))))))

(declare-fun b!2842466 () Bool)

(declare-fun e!1800847 () Bool)

(assert (=> b!2842466 (= e!1800846 e!1800847)))

(declare-fun res!1182533 () Bool)

(assert (=> b!2842466 (= res!1182533 (not ((_ is Leaf!15895) (c!458766 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t2!27))) (value!162726 t2!27))))))))

(assert (=> b!2842466 (=> res!1182533 e!1800847)))

(declare-fun b!2842467 () Bool)

(assert (=> b!2842467 (= e!1800847 (inv!45672 (c!458766 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t2!27))) (value!162726 t2!27)))))))

(assert (= (and d!824183 c!458810) b!2842465))

(assert (= (and d!824183 (not c!458810)) b!2842466))

(assert (= (and b!2842466 (not res!1182533)) b!2842467))

(declare-fun m!3270261 () Bool)

(assert (=> b!2842465 m!3270261))

(declare-fun m!3270263 () Bool)

(assert (=> b!2842467 m!3270263))

(assert (=> b!2842078 d!824183))

(declare-fun d!824185 () Bool)

(assert (=> d!824185 (= (isEmpty!18534 (list!12541 (charsOf!3114 t2!27))) ((_ is Nil!33675) (list!12541 (charsOf!3114 t2!27))))))

(assert (=> d!823991 d!824185))

(declare-fun d!824187 () Bool)

(assert (=> d!824187 (= (list!12541 (charsOf!3114 t2!27)) (list!12545 (c!458766 (charsOf!3114 t2!27))))))

(declare-fun bs!518982 () Bool)

(assert (= bs!518982 d!824187))

(declare-fun m!3270265 () Bool)

(assert (=> bs!518982 m!3270265))

(assert (=> d!823991 d!824187))

(declare-fun d!824189 () Bool)

(declare-fun lt!1011813 () Bool)

(assert (=> d!824189 (= lt!1011813 (isEmpty!18534 (list!12545 (c!458766 (charsOf!3114 t2!27)))))))

(declare-fun size!26149 (Conc!10444) Int)

(assert (=> d!824189 (= lt!1011813 (= (size!26149 (c!458766 (charsOf!3114 t2!27))) 0))))

(assert (=> d!824189 (= (isEmpty!18535 (c!458766 (charsOf!3114 t2!27))) lt!1011813)))

(declare-fun bs!518983 () Bool)

(assert (= bs!518983 d!824189))

(assert (=> bs!518983 m!3270265))

(assert (=> bs!518983 m!3270265))

(declare-fun m!3270267 () Bool)

(assert (=> bs!518983 m!3270267))

(declare-fun m!3270269 () Bool)

(assert (=> bs!518983 m!3270269))

(assert (=> d!823991 d!824189))

(declare-fun lt!1011814 () Bool)

(declare-fun d!824191 () Bool)

(assert (=> d!824191 (= lt!1011814 (isEmpty!18534 (list!12541 (_2!19890 (lex!2026 thiss!11361 rules!1139 (print!1745 thiss!11361 (singletonSeq!2179 t1!27)))))))))

(assert (=> d!824191 (= lt!1011814 (isEmpty!18535 (c!458766 (_2!19890 (lex!2026 thiss!11361 rules!1139 (print!1745 thiss!11361 (singletonSeq!2179 t1!27)))))))))

(assert (=> d!824191 (= (isEmpty!18530 (_2!19890 (lex!2026 thiss!11361 rules!1139 (print!1745 thiss!11361 (singletonSeq!2179 t1!27))))) lt!1011814)))

(declare-fun bs!518984 () Bool)

(assert (= bs!518984 d!824191))

(declare-fun m!3270271 () Bool)

(assert (=> bs!518984 m!3270271))

(assert (=> bs!518984 m!3270271))

(declare-fun m!3270273 () Bool)

(assert (=> bs!518984 m!3270273))

(declare-fun m!3270275 () Bool)

(assert (=> bs!518984 m!3270275))

(assert (=> b!2842181 d!824191))

(declare-fun b!2842468 () Bool)

(declare-fun e!1800849 () Bool)

(declare-fun lt!1011815 () tuple2!33556)

(assert (=> b!2842468 (= e!1800849 (= (list!12541 (_2!19890 lt!1011815)) (_2!19892 (lexList!1260 thiss!11361 rules!1139 (list!12541 (print!1745 thiss!11361 (singletonSeq!2179 t1!27)))))))))

(declare-fun b!2842469 () Bool)

(declare-fun e!1800848 () Bool)

(declare-fun e!1800850 () Bool)

(assert (=> b!2842469 (= e!1800848 e!1800850)))

(declare-fun res!1182536 () Bool)

(assert (=> b!2842469 (= res!1182536 (< (size!26145 (_2!19890 lt!1011815)) (size!26145 (print!1745 thiss!11361 (singletonSeq!2179 t1!27)))))))

(assert (=> b!2842469 (=> (not res!1182536) (not e!1800850))))

(declare-fun d!824193 () Bool)

(assert (=> d!824193 e!1800849))

(declare-fun res!1182535 () Bool)

(assert (=> d!824193 (=> (not res!1182535) (not e!1800849))))

(assert (=> d!824193 (= res!1182535 e!1800848)))

(declare-fun c!458811 () Bool)

(assert (=> d!824193 (= c!458811 (> (size!26141 (_1!19890 lt!1011815)) 0))))

(assert (=> d!824193 (= lt!1011815 (lexTailRecV2!898 thiss!11361 rules!1139 (print!1745 thiss!11361 (singletonSeq!2179 t1!27)) (BalanceConc!20527 Empty!10444) (print!1745 thiss!11361 (singletonSeq!2179 t1!27)) (BalanceConc!20531 Empty!10446)))))

(assert (=> d!824193 (= (lex!2026 thiss!11361 rules!1139 (print!1745 thiss!11361 (singletonSeq!2179 t1!27))) lt!1011815)))

(declare-fun b!2842470 () Bool)

(assert (=> b!2842470 (= e!1800848 (= (_2!19890 lt!1011815) (print!1745 thiss!11361 (singletonSeq!2179 t1!27))))))

(declare-fun b!2842471 () Bool)

(assert (=> b!2842471 (= e!1800850 (not (isEmpty!18537 (_1!19890 lt!1011815))))))

(declare-fun b!2842472 () Bool)

(declare-fun res!1182534 () Bool)

(assert (=> b!2842472 (=> (not res!1182534) (not e!1800849))))

(assert (=> b!2842472 (= res!1182534 (= (list!12542 (_1!19890 lt!1011815)) (_1!19892 (lexList!1260 thiss!11361 rules!1139 (list!12541 (print!1745 thiss!11361 (singletonSeq!2179 t1!27)))))))))

(assert (= (and d!824193 c!458811) b!2842469))

(assert (= (and d!824193 (not c!458811)) b!2842470))

(assert (= (and b!2842469 res!1182536) b!2842471))

(assert (= (and d!824193 res!1182535) b!2842472))

(assert (= (and b!2842472 res!1182534) b!2842468))

(declare-fun m!3270277 () Bool)

(assert (=> d!824193 m!3270277))

(assert (=> d!824193 m!3269869))

(assert (=> d!824193 m!3269869))

(declare-fun m!3270279 () Bool)

(assert (=> d!824193 m!3270279))

(declare-fun m!3270281 () Bool)

(assert (=> b!2842471 m!3270281))

(declare-fun m!3270283 () Bool)

(assert (=> b!2842468 m!3270283))

(assert (=> b!2842468 m!3269869))

(declare-fun m!3270285 () Bool)

(assert (=> b!2842468 m!3270285))

(assert (=> b!2842468 m!3270285))

(declare-fun m!3270287 () Bool)

(assert (=> b!2842468 m!3270287))

(declare-fun m!3270289 () Bool)

(assert (=> b!2842469 m!3270289))

(assert (=> b!2842469 m!3269869))

(declare-fun m!3270291 () Bool)

(assert (=> b!2842469 m!3270291))

(declare-fun m!3270293 () Bool)

(assert (=> b!2842472 m!3270293))

(assert (=> b!2842472 m!3269869))

(assert (=> b!2842472 m!3270285))

(assert (=> b!2842472 m!3270285))

(assert (=> b!2842472 m!3270287))

(assert (=> b!2842181 d!824193))

(declare-fun d!824195 () Bool)

(declare-fun lt!1011816 () BalanceConc!20526)

(assert (=> d!824195 (= (list!12541 lt!1011816) (printList!1234 thiss!11361 (list!12542 (singletonSeq!2179 t1!27))))))

(assert (=> d!824195 (= lt!1011816 (printTailRec!1177 thiss!11361 (singletonSeq!2179 t1!27) 0 (BalanceConc!20527 Empty!10444)))))

(assert (=> d!824195 (= (print!1745 thiss!11361 (singletonSeq!2179 t1!27)) lt!1011816)))

(declare-fun bs!518985 () Bool)

(assert (= bs!518985 d!824195))

(declare-fun m!3270295 () Bool)

(assert (=> bs!518985 m!3270295))

(assert (=> bs!518985 m!3269873))

(assert (=> bs!518985 m!3269877))

(assert (=> bs!518985 m!3269877))

(declare-fun m!3270297 () Bool)

(assert (=> bs!518985 m!3270297))

(assert (=> bs!518985 m!3269873))

(declare-fun m!3270299 () Bool)

(assert (=> bs!518985 m!3270299))

(assert (=> b!2842181 d!824195))

(declare-fun d!824197 () Bool)

(declare-fun e!1800851 () Bool)

(assert (=> d!824197 e!1800851))

(declare-fun res!1182537 () Bool)

(assert (=> d!824197 (=> (not res!1182537) (not e!1800851))))

(declare-fun lt!1011817 () BalanceConc!20530)

(assert (=> d!824197 (= res!1182537 (= (list!12542 lt!1011817) (Cons!33679 t1!27 Nil!33679)))))

(assert (=> d!824197 (= lt!1011817 (singleton!956 t1!27))))

(assert (=> d!824197 (= (singletonSeq!2179 t1!27) lt!1011817)))

(declare-fun b!2842473 () Bool)

(assert (=> b!2842473 (= e!1800851 (isBalanced!3143 (c!458785 lt!1011817)))))

(assert (= (and d!824197 res!1182537) b!2842473))

(declare-fun m!3270301 () Bool)

(assert (=> d!824197 m!3270301))

(declare-fun m!3270303 () Bool)

(assert (=> d!824197 m!3270303))

(declare-fun m!3270305 () Bool)

(assert (=> b!2842473 m!3270305))

(assert (=> b!2842181 d!824197))

(declare-fun d!824199 () Bool)

(declare-fun lt!1011818 () Bool)

(assert (=> d!824199 (= lt!1011818 (isEmpty!18534 (list!12541 (_2!19890 lt!1011740))))))

(assert (=> d!824199 (= lt!1011818 (isEmpty!18535 (c!458766 (_2!19890 lt!1011740))))))

(assert (=> d!824199 (= (isEmpty!18530 (_2!19890 lt!1011740)) lt!1011818)))

(declare-fun bs!518986 () Bool)

(assert (= bs!518986 d!824199))

(declare-fun m!3270307 () Bool)

(assert (=> bs!518986 m!3270307))

(assert (=> bs!518986 m!3270307))

(declare-fun m!3270309 () Bool)

(assert (=> bs!518986 m!3270309))

(declare-fun m!3270311 () Bool)

(assert (=> bs!518986 m!3270311))

(assert (=> b!2842180 d!824199))

(declare-fun d!824201 () Bool)

(declare-fun res!1182542 () Bool)

(declare-fun e!1800856 () Bool)

(assert (=> d!824201 (=> res!1182542 e!1800856)))

(assert (=> d!824201 (= res!1182542 ((_ is Nil!33676) rules!1139))))

(assert (=> d!824201 (= (forall!6916 rules!1139 lambda!104251) e!1800856)))

(declare-fun b!2842478 () Bool)

(declare-fun e!1800857 () Bool)

(assert (=> b!2842478 (= e!1800856 e!1800857)))

(declare-fun res!1182543 () Bool)

(assert (=> b!2842478 (=> (not res!1182543) (not e!1800857))))

(declare-fun dynLambda!14172 (Int Rule!9928) Bool)

(assert (=> b!2842478 (= res!1182543 (dynLambda!14172 lambda!104251 (h!39096 rules!1139)))))

(declare-fun b!2842479 () Bool)

(assert (=> b!2842479 (= e!1800857 (forall!6916 (t!232645 rules!1139) lambda!104251))))

(assert (= (and d!824201 (not res!1182542)) b!2842478))

(assert (= (and b!2842478 res!1182543) b!2842479))

(declare-fun b_lambda!85451 () Bool)

(assert (=> (not b_lambda!85451) (not b!2842478)))

(declare-fun m!3270313 () Bool)

(assert (=> b!2842478 m!3270313))

(declare-fun m!3270315 () Bool)

(assert (=> b!2842479 m!3270315))

(assert (=> d!823959 d!824201))

(declare-fun d!824203 () Bool)

(declare-fun res!1182548 () Bool)

(declare-fun e!1800862 () Bool)

(assert (=> d!824203 (=> res!1182548 e!1800862)))

(assert (=> d!824203 (= res!1182548 ((_ is Nil!33676) rules!1139))))

(assert (=> d!824203 (= (noDuplicateTag!1876 thiss!11361 rules!1139 Nil!33680) e!1800862)))

(declare-fun b!2842484 () Bool)

(declare-fun e!1800863 () Bool)

(assert (=> b!2842484 (= e!1800862 e!1800863)))

(declare-fun res!1182549 () Bool)

(assert (=> b!2842484 (=> (not res!1182549) (not e!1800863))))

(declare-fun contains!6112 (List!33804 String!37036) Bool)

(assert (=> b!2842484 (= res!1182549 (not (contains!6112 Nil!33680 (tag!5568 (h!39096 rules!1139)))))))

(declare-fun b!2842485 () Bool)

(assert (=> b!2842485 (= e!1800863 (noDuplicateTag!1876 thiss!11361 (t!232645 rules!1139) (Cons!33680 (tag!5568 (h!39096 rules!1139)) Nil!33680)))))

(assert (= (and d!824203 (not res!1182548)) b!2842484))

(assert (= (and b!2842484 res!1182549) b!2842485))

(declare-fun m!3270317 () Bool)

(assert (=> b!2842484 m!3270317))

(declare-fun m!3270319 () Bool)

(assert (=> b!2842485 m!3270319))

(assert (=> b!2842201 d!824203))

(declare-fun d!824205 () Bool)

(declare-fun lt!1011819 () Int)

(assert (=> d!824205 (= lt!1011819 (size!26146 (list!12542 (_1!19890 lt!1011740))))))

(assert (=> d!824205 (= lt!1011819 (size!26147 (c!458785 (_1!19890 lt!1011740))))))

(assert (=> d!824205 (= (size!26141 (_1!19890 lt!1011740)) lt!1011819)))

(declare-fun bs!518987 () Bool)

(assert (= bs!518987 d!824205))

(assert (=> bs!518987 m!3270237))

(assert (=> bs!518987 m!3270237))

(declare-fun m!3270321 () Bool)

(assert (=> bs!518987 m!3270321))

(declare-fun m!3270323 () Bool)

(assert (=> bs!518987 m!3270323))

(assert (=> d!823987 d!824205))

(assert (=> d!823987 d!823953))

(assert (=> d!823987 d!824193))

(declare-fun d!824207 () Bool)

(assert (=> d!824207 (= (list!12542 (_1!19890 (lex!2026 thiss!11361 rules!1139 (print!1745 thiss!11361 (singletonSeq!2179 t1!27))))) (list!12546 (c!458785 (_1!19890 (lex!2026 thiss!11361 rules!1139 (print!1745 thiss!11361 (singletonSeq!2179 t1!27)))))))))

(declare-fun bs!518988 () Bool)

(assert (= bs!518988 d!824207))

(declare-fun m!3270325 () Bool)

(assert (=> bs!518988 m!3270325))

(assert (=> d!823987 d!824207))

(assert (=> d!823987 d!824195))

(declare-fun d!824209 () Bool)

(assert (=> d!824209 (= (list!12542 (singletonSeq!2179 t1!27)) (list!12546 (c!458785 (singletonSeq!2179 t1!27))))))

(declare-fun bs!518989 () Bool)

(assert (= bs!518989 d!824209))

(declare-fun m!3270327 () Bool)

(assert (=> bs!518989 m!3270327))

(assert (=> d!823987 d!824209))

(assert (=> d!823987 d!824197))

(declare-fun d!824211 () Bool)

(assert (=> d!824211 (= (isEmpty!18534 (originalCharacters!5796 t1!27)) ((_ is Nil!33675) (originalCharacters!5796 t1!27)))))

(assert (=> d!823949 d!824211))

(declare-fun bs!518990 () Bool)

(declare-fun d!824213 () Bool)

(assert (= bs!518990 (and d!824213 d!824153)))

(declare-fun lambda!104279 () Int)

(assert (=> bs!518990 (= (and (= (toChars!6965 (transformation!5064 (rule!7492 t1!27))) (toChars!6965 (transformation!5064 (rule!7492 t2!27)))) (= (toValue!7106 (transformation!5064 (rule!7492 t1!27))) (toValue!7106 (transformation!5064 (rule!7492 t2!27))))) (= lambda!104279 lambda!104273))))

(declare-fun bs!518991 () Bool)

(assert (= bs!518991 (and d!824213 d!824181)))

(assert (=> bs!518991 (= (and (= (toChars!6965 (transformation!5064 (rule!7492 t1!27))) (toChars!6965 (transformation!5064 (h!39096 rules!1139)))) (= (toValue!7106 (transformation!5064 (rule!7492 t1!27))) (toValue!7106 (transformation!5064 (h!39096 rules!1139))))) (= lambda!104279 lambda!104278))))

(assert (=> d!824213 true))

(assert (=> d!824213 (< (dynLambda!14170 order!18013 (toChars!6965 (transformation!5064 (rule!7492 t1!27)))) (dynLambda!14171 order!18015 lambda!104279))))

(assert (=> d!824213 true))

(assert (=> d!824213 (< (dynLambda!14167 order!18009 (toValue!7106 (transformation!5064 (rule!7492 t1!27)))) (dynLambda!14171 order!18015 lambda!104279))))

(assert (=> d!824213 (= (semiInverseModEq!2111 (toChars!6965 (transformation!5064 (rule!7492 t1!27))) (toValue!7106 (transformation!5064 (rule!7492 t1!27)))) (Forall!1246 lambda!104279))))

(declare-fun bs!518992 () Bool)

(assert (= bs!518992 d!824213))

(declare-fun m!3270329 () Bool)

(assert (=> bs!518992 m!3270329))

(assert (=> d!824001 d!824213))

(declare-fun b!2842489 () Bool)

(declare-fun e!1800864 () Bool)

(declare-fun tp!910686 () Bool)

(declare-fun tp!910683 () Bool)

(assert (=> b!2842489 (= e!1800864 (and tp!910686 tp!910683))))

(assert (=> b!2842239 (= tp!910572 e!1800864)))

(declare-fun b!2842486 () Bool)

(assert (=> b!2842486 (= e!1800864 tp_is_empty!14679)))

(declare-fun b!2842487 () Bool)

(declare-fun tp!910685 () Bool)

(declare-fun tp!910684 () Bool)

(assert (=> b!2842487 (= e!1800864 (and tp!910685 tp!910684))))

(declare-fun b!2842488 () Bool)

(declare-fun tp!910687 () Bool)

(assert (=> b!2842488 (= e!1800864 tp!910687)))

(assert (= (and b!2842239 ((_ is ElementMatch!8455) (regOne!17423 (regex!5064 (rule!7492 t2!27))))) b!2842486))

(assert (= (and b!2842239 ((_ is Concat!13750) (regOne!17423 (regex!5064 (rule!7492 t2!27))))) b!2842487))

(assert (= (and b!2842239 ((_ is Star!8455) (regOne!17423 (regex!5064 (rule!7492 t2!27))))) b!2842488))

(assert (= (and b!2842239 ((_ is Union!8455) (regOne!17423 (regex!5064 (rule!7492 t2!27))))) b!2842489))

(declare-fun b!2842493 () Bool)

(declare-fun e!1800865 () Bool)

(declare-fun tp!910691 () Bool)

(declare-fun tp!910688 () Bool)

(assert (=> b!2842493 (= e!1800865 (and tp!910691 tp!910688))))

(assert (=> b!2842239 (= tp!910569 e!1800865)))

(declare-fun b!2842490 () Bool)

(assert (=> b!2842490 (= e!1800865 tp_is_empty!14679)))

(declare-fun b!2842491 () Bool)

(declare-fun tp!910690 () Bool)

(declare-fun tp!910689 () Bool)

(assert (=> b!2842491 (= e!1800865 (and tp!910690 tp!910689))))

(declare-fun b!2842492 () Bool)

(declare-fun tp!910692 () Bool)

(assert (=> b!2842492 (= e!1800865 tp!910692)))

(assert (= (and b!2842239 ((_ is ElementMatch!8455) (regTwo!17423 (regex!5064 (rule!7492 t2!27))))) b!2842490))

(assert (= (and b!2842239 ((_ is Concat!13750) (regTwo!17423 (regex!5064 (rule!7492 t2!27))))) b!2842491))

(assert (= (and b!2842239 ((_ is Star!8455) (regTwo!17423 (regex!5064 (rule!7492 t2!27))))) b!2842492))

(assert (= (and b!2842239 ((_ is Union!8455) (regTwo!17423 (regex!5064 (rule!7492 t2!27))))) b!2842493))

(declare-fun b!2842497 () Bool)

(declare-fun e!1800866 () Bool)

(declare-fun tp!910696 () Bool)

(declare-fun tp!910693 () Bool)

(assert (=> b!2842497 (= e!1800866 (and tp!910696 tp!910693))))

(assert (=> b!2842243 (= tp!910577 e!1800866)))

(declare-fun b!2842494 () Bool)

(assert (=> b!2842494 (= e!1800866 tp_is_empty!14679)))

(declare-fun b!2842495 () Bool)

(declare-fun tp!910695 () Bool)

(declare-fun tp!910694 () Bool)

(assert (=> b!2842495 (= e!1800866 (and tp!910695 tp!910694))))

(declare-fun b!2842496 () Bool)

(declare-fun tp!910697 () Bool)

(assert (=> b!2842496 (= e!1800866 tp!910697)))

(assert (= (and b!2842243 ((_ is ElementMatch!8455) (regOne!17423 (regex!5064 (rule!7492 t1!27))))) b!2842494))

(assert (= (and b!2842243 ((_ is Concat!13750) (regOne!17423 (regex!5064 (rule!7492 t1!27))))) b!2842495))

(assert (= (and b!2842243 ((_ is Star!8455) (regOne!17423 (regex!5064 (rule!7492 t1!27))))) b!2842496))

(assert (= (and b!2842243 ((_ is Union!8455) (regOne!17423 (regex!5064 (rule!7492 t1!27))))) b!2842497))

(declare-fun b!2842501 () Bool)

(declare-fun e!1800867 () Bool)

(declare-fun tp!910701 () Bool)

(declare-fun tp!910698 () Bool)

(assert (=> b!2842501 (= e!1800867 (and tp!910701 tp!910698))))

(assert (=> b!2842243 (= tp!910574 e!1800867)))

(declare-fun b!2842498 () Bool)

(assert (=> b!2842498 (= e!1800867 tp_is_empty!14679)))

(declare-fun b!2842499 () Bool)

(declare-fun tp!910700 () Bool)

(declare-fun tp!910699 () Bool)

(assert (=> b!2842499 (= e!1800867 (and tp!910700 tp!910699))))

(declare-fun b!2842500 () Bool)

(declare-fun tp!910702 () Bool)

(assert (=> b!2842500 (= e!1800867 tp!910702)))

(assert (= (and b!2842243 ((_ is ElementMatch!8455) (regTwo!17423 (regex!5064 (rule!7492 t1!27))))) b!2842498))

(assert (= (and b!2842243 ((_ is Concat!13750) (regTwo!17423 (regex!5064 (rule!7492 t1!27))))) b!2842499))

(assert (= (and b!2842243 ((_ is Star!8455) (regTwo!17423 (regex!5064 (rule!7492 t1!27))))) b!2842500))

(assert (= (and b!2842243 ((_ is Union!8455) (regTwo!17423 (regex!5064 (rule!7492 t1!27))))) b!2842501))

(declare-fun tp!910709 () Bool)

(declare-fun e!1800873 () Bool)

(declare-fun b!2842510 () Bool)

(declare-fun tp!910710 () Bool)

(assert (=> b!2842510 (= e!1800873 (and (inv!45667 (left!25374 (c!458766 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t1!27))) (value!162726 t1!27))))) tp!910709 (inv!45667 (right!25704 (c!458766 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t1!27))) (value!162726 t1!27))))) tp!910710))))

(declare-fun b!2842512 () Bool)

(declare-fun e!1800872 () Bool)

(declare-fun tp!910711 () Bool)

(assert (=> b!2842512 (= e!1800872 tp!910711)))

(declare-fun b!2842511 () Bool)

(declare-fun inv!45674 (IArray!20893) Bool)

(assert (=> b!2842511 (= e!1800873 (and (inv!45674 (xs!13556 (c!458766 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t1!27))) (value!162726 t1!27))))) e!1800872))))

(assert (=> b!2842075 (= tp!910497 (and (inv!45667 (c!458766 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t1!27))) (value!162726 t1!27)))) e!1800873))))

(assert (= (and b!2842075 ((_ is Node!10444) (c!458766 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t1!27))) (value!162726 t1!27))))) b!2842510))

(assert (= b!2842511 b!2842512))

(assert (= (and b!2842075 ((_ is Leaf!15895) (c!458766 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t1!27))) (value!162726 t1!27))))) b!2842511))

(declare-fun m!3270331 () Bool)

(assert (=> b!2842510 m!3270331))

(declare-fun m!3270333 () Bool)

(assert (=> b!2842510 m!3270333))

(declare-fun m!3270335 () Bool)

(assert (=> b!2842511 m!3270335))

(assert (=> b!2842075 m!3269737))

(declare-fun b!2842516 () Bool)

(declare-fun e!1800874 () Bool)

(declare-fun tp!910715 () Bool)

(declare-fun tp!910712 () Bool)

(assert (=> b!2842516 (= e!1800874 (and tp!910715 tp!910712))))

(assert (=> b!2842238 (= tp!910573 e!1800874)))

(declare-fun b!2842513 () Bool)

(assert (=> b!2842513 (= e!1800874 tp_is_empty!14679)))

(declare-fun b!2842514 () Bool)

(declare-fun tp!910714 () Bool)

(declare-fun tp!910713 () Bool)

(assert (=> b!2842514 (= e!1800874 (and tp!910714 tp!910713))))

(declare-fun b!2842515 () Bool)

(declare-fun tp!910716 () Bool)

(assert (=> b!2842515 (= e!1800874 tp!910716)))

(assert (= (and b!2842238 ((_ is ElementMatch!8455) (reg!8784 (regex!5064 (rule!7492 t2!27))))) b!2842513))

(assert (= (and b!2842238 ((_ is Concat!13750) (reg!8784 (regex!5064 (rule!7492 t2!27))))) b!2842514))

(assert (= (and b!2842238 ((_ is Star!8455) (reg!8784 (regex!5064 (rule!7492 t2!27))))) b!2842515))

(assert (= (and b!2842238 ((_ is Union!8455) (reg!8784 (regex!5064 (rule!7492 t2!27))))) b!2842516))

(declare-fun b!2842520 () Bool)

(declare-fun e!1800875 () Bool)

(declare-fun tp!910720 () Bool)

(declare-fun tp!910717 () Bool)

(assert (=> b!2842520 (= e!1800875 (and tp!910720 tp!910717))))

(assert (=> b!2842224 (= tp!910558 e!1800875)))

(declare-fun b!2842517 () Bool)

(assert (=> b!2842517 (= e!1800875 tp_is_empty!14679)))

(declare-fun b!2842518 () Bool)

(declare-fun tp!910719 () Bool)

(declare-fun tp!910718 () Bool)

(assert (=> b!2842518 (= e!1800875 (and tp!910719 tp!910718))))

(declare-fun b!2842519 () Bool)

(declare-fun tp!910721 () Bool)

(assert (=> b!2842519 (= e!1800875 tp!910721)))

(assert (= (and b!2842224 ((_ is ElementMatch!8455) (regex!5064 (h!39096 (t!232645 rules!1139))))) b!2842517))

(assert (= (and b!2842224 ((_ is Concat!13750) (regex!5064 (h!39096 (t!232645 rules!1139))))) b!2842518))

(assert (= (and b!2842224 ((_ is Star!8455) (regex!5064 (h!39096 (t!232645 rules!1139))))) b!2842519))

(assert (= (and b!2842224 ((_ is Union!8455) (regex!5064 (h!39096 (t!232645 rules!1139))))) b!2842520))

(declare-fun b!2842524 () Bool)

(declare-fun e!1800876 () Bool)

(declare-fun tp!910725 () Bool)

(declare-fun tp!910722 () Bool)

(assert (=> b!2842524 (= e!1800876 (and tp!910725 tp!910722))))

(assert (=> b!2842247 (= tp!910582 e!1800876)))

(declare-fun b!2842521 () Bool)

(assert (=> b!2842521 (= e!1800876 tp_is_empty!14679)))

(declare-fun b!2842522 () Bool)

(declare-fun tp!910724 () Bool)

(declare-fun tp!910723 () Bool)

(assert (=> b!2842522 (= e!1800876 (and tp!910724 tp!910723))))

(declare-fun b!2842523 () Bool)

(declare-fun tp!910726 () Bool)

(assert (=> b!2842523 (= e!1800876 tp!910726)))

(assert (= (and b!2842247 ((_ is ElementMatch!8455) (regOne!17423 (regex!5064 (h!39096 rules!1139))))) b!2842521))

(assert (= (and b!2842247 ((_ is Concat!13750) (regOne!17423 (regex!5064 (h!39096 rules!1139))))) b!2842522))

(assert (= (and b!2842247 ((_ is Star!8455) (regOne!17423 (regex!5064 (h!39096 rules!1139))))) b!2842523))

(assert (= (and b!2842247 ((_ is Union!8455) (regOne!17423 (regex!5064 (h!39096 rules!1139))))) b!2842524))

(declare-fun b!2842528 () Bool)

(declare-fun e!1800877 () Bool)

(declare-fun tp!910730 () Bool)

(declare-fun tp!910727 () Bool)

(assert (=> b!2842528 (= e!1800877 (and tp!910730 tp!910727))))

(assert (=> b!2842247 (= tp!910579 e!1800877)))

(declare-fun b!2842525 () Bool)

(assert (=> b!2842525 (= e!1800877 tp_is_empty!14679)))

(declare-fun b!2842526 () Bool)

(declare-fun tp!910729 () Bool)

(declare-fun tp!910728 () Bool)

(assert (=> b!2842526 (= e!1800877 (and tp!910729 tp!910728))))

(declare-fun b!2842527 () Bool)

(declare-fun tp!910731 () Bool)

(assert (=> b!2842527 (= e!1800877 tp!910731)))

(assert (= (and b!2842247 ((_ is ElementMatch!8455) (regTwo!17423 (regex!5064 (h!39096 rules!1139))))) b!2842525))

(assert (= (and b!2842247 ((_ is Concat!13750) (regTwo!17423 (regex!5064 (h!39096 rules!1139))))) b!2842526))

(assert (= (and b!2842247 ((_ is Star!8455) (regTwo!17423 (regex!5064 (h!39096 rules!1139))))) b!2842527))

(assert (= (and b!2842247 ((_ is Union!8455) (regTwo!17423 (regex!5064 (h!39096 rules!1139))))) b!2842528))

(declare-fun b!2842532 () Bool)

(declare-fun e!1800878 () Bool)

(declare-fun tp!910735 () Bool)

(declare-fun tp!910732 () Bool)

(assert (=> b!2842532 (= e!1800878 (and tp!910735 tp!910732))))

(assert (=> b!2842242 (= tp!910578 e!1800878)))

(declare-fun b!2842529 () Bool)

(assert (=> b!2842529 (= e!1800878 tp_is_empty!14679)))

(declare-fun b!2842530 () Bool)

(declare-fun tp!910734 () Bool)

(declare-fun tp!910733 () Bool)

(assert (=> b!2842530 (= e!1800878 (and tp!910734 tp!910733))))

(declare-fun b!2842531 () Bool)

(declare-fun tp!910736 () Bool)

(assert (=> b!2842531 (= e!1800878 tp!910736)))

(assert (= (and b!2842242 ((_ is ElementMatch!8455) (reg!8784 (regex!5064 (rule!7492 t1!27))))) b!2842529))

(assert (= (and b!2842242 ((_ is Concat!13750) (reg!8784 (regex!5064 (rule!7492 t1!27))))) b!2842530))

(assert (= (and b!2842242 ((_ is Star!8455) (reg!8784 (regex!5064 (rule!7492 t1!27))))) b!2842531))

(assert (= (and b!2842242 ((_ is Union!8455) (reg!8784 (regex!5064 (rule!7492 t1!27))))) b!2842532))

(declare-fun b!2842536 () Bool)

(declare-fun e!1800879 () Bool)

(declare-fun tp!910740 () Bool)

(declare-fun tp!910737 () Bool)

(assert (=> b!2842536 (= e!1800879 (and tp!910740 tp!910737))))

(assert (=> b!2842237 (= tp!910571 e!1800879)))

(declare-fun b!2842533 () Bool)

(assert (=> b!2842533 (= e!1800879 tp_is_empty!14679)))

(declare-fun b!2842534 () Bool)

(declare-fun tp!910739 () Bool)

(declare-fun tp!910738 () Bool)

(assert (=> b!2842534 (= e!1800879 (and tp!910739 tp!910738))))

(declare-fun b!2842535 () Bool)

(declare-fun tp!910741 () Bool)

(assert (=> b!2842535 (= e!1800879 tp!910741)))

(assert (= (and b!2842237 ((_ is ElementMatch!8455) (regOne!17422 (regex!5064 (rule!7492 t2!27))))) b!2842533))

(assert (= (and b!2842237 ((_ is Concat!13750) (regOne!17422 (regex!5064 (rule!7492 t2!27))))) b!2842534))

(assert (= (and b!2842237 ((_ is Star!8455) (regOne!17422 (regex!5064 (rule!7492 t2!27))))) b!2842535))

(assert (= (and b!2842237 ((_ is Union!8455) (regOne!17422 (regex!5064 (rule!7492 t2!27))))) b!2842536))

(declare-fun b!2842540 () Bool)

(declare-fun e!1800880 () Bool)

(declare-fun tp!910745 () Bool)

(declare-fun tp!910742 () Bool)

(assert (=> b!2842540 (= e!1800880 (and tp!910745 tp!910742))))

(assert (=> b!2842237 (= tp!910570 e!1800880)))

(declare-fun b!2842537 () Bool)

(assert (=> b!2842537 (= e!1800880 tp_is_empty!14679)))

(declare-fun b!2842538 () Bool)

(declare-fun tp!910744 () Bool)

(declare-fun tp!910743 () Bool)

(assert (=> b!2842538 (= e!1800880 (and tp!910744 tp!910743))))

(declare-fun b!2842539 () Bool)

(declare-fun tp!910746 () Bool)

(assert (=> b!2842539 (= e!1800880 tp!910746)))

(assert (= (and b!2842237 ((_ is ElementMatch!8455) (regTwo!17422 (regex!5064 (rule!7492 t2!27))))) b!2842537))

(assert (= (and b!2842237 ((_ is Concat!13750) (regTwo!17422 (regex!5064 (rule!7492 t2!27))))) b!2842538))

(assert (= (and b!2842237 ((_ is Star!8455) (regTwo!17422 (regex!5064 (rule!7492 t2!27))))) b!2842539))

(assert (= (and b!2842237 ((_ is Union!8455) (regTwo!17422 (regex!5064 (rule!7492 t2!27))))) b!2842540))

(declare-fun b!2842543 () Bool)

(declare-fun b_free!82489 () Bool)

(declare-fun b_next!83193 () Bool)

(assert (=> b!2842543 (= b_free!82489 (not b_next!83193))))

(declare-fun tp!910749 () Bool)

(declare-fun b_and!208611 () Bool)

(assert (=> b!2842543 (= tp!910749 b_and!208611)))

(declare-fun b_free!82491 () Bool)

(declare-fun b_next!83195 () Bool)

(assert (=> b!2842543 (= b_free!82491 (not b_next!83195))))

(declare-fun t!232693 () Bool)

(declare-fun tb!154985 () Bool)

(assert (=> (and b!2842543 (= (toChars!6965 (transformation!5064 (h!39096 (t!232645 (t!232645 rules!1139))))) (toChars!6965 (transformation!5064 (rule!7492 t1!27)))) t!232693) tb!154985))

(declare-fun result!193394 () Bool)

(assert (= result!193394 result!193338))

(assert (=> b!2842069 t!232693))

(declare-fun tb!154987 () Bool)

(declare-fun t!232695 () Bool)

(assert (=> (and b!2842543 (= (toChars!6965 (transformation!5064 (h!39096 (t!232645 (t!232645 rules!1139))))) (toChars!6965 (transformation!5064 (rule!7492 t2!27)))) t!232695) tb!154987))

(declare-fun result!193396 () Bool)

(assert (= result!193396 result!193346))

(assert (=> b!2842076 t!232695))

(assert (=> d!823993 t!232695))

(declare-fun tp!910747 () Bool)

(declare-fun b_and!208613 () Bool)

(assert (=> b!2842543 (= tp!910747 (and (=> t!232693 result!193394) (=> t!232695 result!193396) b_and!208613))))

(declare-fun e!1800882 () Bool)

(assert (=> b!2842543 (= e!1800882 (and tp!910749 tp!910747))))

(declare-fun tp!910750 () Bool)

(declare-fun b!2842542 () Bool)

(declare-fun e!1800884 () Bool)

(assert (=> b!2842542 (= e!1800884 (and tp!910750 (inv!45660 (tag!5568 (h!39096 (t!232645 (t!232645 rules!1139))))) (inv!45663 (transformation!5064 (h!39096 (t!232645 (t!232645 rules!1139))))) e!1800882))))

(declare-fun b!2842541 () Bool)

(declare-fun e!1800881 () Bool)

(declare-fun tp!910748 () Bool)

(assert (=> b!2842541 (= e!1800881 (and e!1800884 tp!910748))))

(assert (=> b!2842223 (= tp!910556 e!1800881)))

(assert (= b!2842542 b!2842543))

(assert (= b!2842541 b!2842542))

(assert (= (and b!2842223 ((_ is Cons!33676) (t!232645 (t!232645 rules!1139)))) b!2842541))

(declare-fun m!3270337 () Bool)

(assert (=> b!2842542 m!3270337))

(declare-fun m!3270339 () Bool)

(assert (=> b!2842542 m!3270339))

(declare-fun b!2842544 () Bool)

(declare-fun e!1800885 () Bool)

(declare-fun tp!910751 () Bool)

(assert (=> b!2842544 (= e!1800885 (and tp_is_empty!14679 tp!910751))))

(assert (=> b!2842248 (= tp!910584 e!1800885)))

(assert (= (and b!2842248 ((_ is Cons!33675) (t!232644 (originalCharacters!5796 t2!27)))) b!2842544))

(declare-fun tp!910752 () Bool)

(declare-fun e!1800887 () Bool)

(declare-fun tp!910753 () Bool)

(declare-fun b!2842545 () Bool)

(assert (=> b!2842545 (= e!1800887 (and (inv!45667 (left!25374 (c!458766 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t2!27))) (value!162726 t2!27))))) tp!910752 (inv!45667 (right!25704 (c!458766 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t2!27))) (value!162726 t2!27))))) tp!910753))))

(declare-fun b!2842547 () Bool)

(declare-fun e!1800886 () Bool)

(declare-fun tp!910754 () Bool)

(assert (=> b!2842547 (= e!1800886 tp!910754)))

(declare-fun b!2842546 () Bool)

(assert (=> b!2842546 (= e!1800887 (and (inv!45674 (xs!13556 (c!458766 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t2!27))) (value!162726 t2!27))))) e!1800886))))

(assert (=> b!2842078 (= tp!910498 (and (inv!45667 (c!458766 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t2!27))) (value!162726 t2!27)))) e!1800887))))

(assert (= (and b!2842078 ((_ is Node!10444) (c!458766 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t2!27))) (value!162726 t2!27))))) b!2842545))

(assert (= b!2842546 b!2842547))

(assert (= (and b!2842078 ((_ is Leaf!15895) (c!458766 (dynLambda!14162 (toChars!6965 (transformation!5064 (rule!7492 t2!27))) (value!162726 t2!27))))) b!2842546))

(declare-fun m!3270341 () Bool)

(assert (=> b!2842545 m!3270341))

(declare-fun m!3270343 () Bool)

(assert (=> b!2842545 m!3270343))

(declare-fun m!3270345 () Bool)

(assert (=> b!2842546 m!3270345))

(assert (=> b!2842078 m!3269749))

(declare-fun b!2842548 () Bool)

(declare-fun e!1800888 () Bool)

(declare-fun tp!910755 () Bool)

(assert (=> b!2842548 (= e!1800888 (and tp_is_empty!14679 tp!910755))))

(assert (=> b!2842214 (= tp!910546 e!1800888)))

(assert (= (and b!2842214 ((_ is Cons!33675) (t!232644 (originalCharacters!5796 t1!27)))) b!2842548))

(declare-fun b!2842552 () Bool)

(declare-fun e!1800889 () Bool)

(declare-fun tp!910759 () Bool)

(declare-fun tp!910756 () Bool)

(assert (=> b!2842552 (= e!1800889 (and tp!910759 tp!910756))))

(assert (=> b!2842246 (= tp!910583 e!1800889)))

(declare-fun b!2842549 () Bool)

(assert (=> b!2842549 (= e!1800889 tp_is_empty!14679)))

(declare-fun b!2842550 () Bool)

(declare-fun tp!910758 () Bool)

(declare-fun tp!910757 () Bool)

(assert (=> b!2842550 (= e!1800889 (and tp!910758 tp!910757))))

(declare-fun b!2842551 () Bool)

(declare-fun tp!910760 () Bool)

(assert (=> b!2842551 (= e!1800889 tp!910760)))

(assert (= (and b!2842246 ((_ is ElementMatch!8455) (reg!8784 (regex!5064 (h!39096 rules!1139))))) b!2842549))

(assert (= (and b!2842246 ((_ is Concat!13750) (reg!8784 (regex!5064 (h!39096 rules!1139))))) b!2842550))

(assert (= (and b!2842246 ((_ is Star!8455) (reg!8784 (regex!5064 (h!39096 rules!1139))))) b!2842551))

(assert (= (and b!2842246 ((_ is Union!8455) (reg!8784 (regex!5064 (h!39096 rules!1139))))) b!2842552))

(declare-fun b!2842556 () Bool)

(declare-fun e!1800890 () Bool)

(declare-fun tp!910764 () Bool)

(declare-fun tp!910761 () Bool)

(assert (=> b!2842556 (= e!1800890 (and tp!910764 tp!910761))))

(assert (=> b!2842241 (= tp!910576 e!1800890)))

(declare-fun b!2842553 () Bool)

(assert (=> b!2842553 (= e!1800890 tp_is_empty!14679)))

(declare-fun b!2842554 () Bool)

(declare-fun tp!910763 () Bool)

(declare-fun tp!910762 () Bool)

(assert (=> b!2842554 (= e!1800890 (and tp!910763 tp!910762))))

(declare-fun b!2842555 () Bool)

(declare-fun tp!910765 () Bool)

(assert (=> b!2842555 (= e!1800890 tp!910765)))

(assert (= (and b!2842241 ((_ is ElementMatch!8455) (regOne!17422 (regex!5064 (rule!7492 t1!27))))) b!2842553))

(assert (= (and b!2842241 ((_ is Concat!13750) (regOne!17422 (regex!5064 (rule!7492 t1!27))))) b!2842554))

(assert (= (and b!2842241 ((_ is Star!8455) (regOne!17422 (regex!5064 (rule!7492 t1!27))))) b!2842555))

(assert (= (and b!2842241 ((_ is Union!8455) (regOne!17422 (regex!5064 (rule!7492 t1!27))))) b!2842556))

(declare-fun b!2842560 () Bool)

(declare-fun e!1800891 () Bool)

(declare-fun tp!910769 () Bool)

(declare-fun tp!910766 () Bool)

(assert (=> b!2842560 (= e!1800891 (and tp!910769 tp!910766))))

(assert (=> b!2842241 (= tp!910575 e!1800891)))

(declare-fun b!2842557 () Bool)

(assert (=> b!2842557 (= e!1800891 tp_is_empty!14679)))

(declare-fun b!2842558 () Bool)

(declare-fun tp!910768 () Bool)

(declare-fun tp!910767 () Bool)

(assert (=> b!2842558 (= e!1800891 (and tp!910768 tp!910767))))

(declare-fun b!2842559 () Bool)

(declare-fun tp!910770 () Bool)

(assert (=> b!2842559 (= e!1800891 tp!910770)))

(assert (= (and b!2842241 ((_ is ElementMatch!8455) (regTwo!17422 (regex!5064 (rule!7492 t1!27))))) b!2842557))

(assert (= (and b!2842241 ((_ is Concat!13750) (regTwo!17422 (regex!5064 (rule!7492 t1!27))))) b!2842558))

(assert (= (and b!2842241 ((_ is Star!8455) (regTwo!17422 (regex!5064 (rule!7492 t1!27))))) b!2842559))

(assert (= (and b!2842241 ((_ is Union!8455) (regTwo!17422 (regex!5064 (rule!7492 t1!27))))) b!2842560))

(declare-fun b!2842564 () Bool)

(declare-fun e!1800892 () Bool)

(declare-fun tp!910774 () Bool)

(declare-fun tp!910771 () Bool)

(assert (=> b!2842564 (= e!1800892 (and tp!910774 tp!910771))))

(assert (=> b!2842245 (= tp!910581 e!1800892)))

(declare-fun b!2842561 () Bool)

(assert (=> b!2842561 (= e!1800892 tp_is_empty!14679)))

(declare-fun b!2842562 () Bool)

(declare-fun tp!910773 () Bool)

(declare-fun tp!910772 () Bool)

(assert (=> b!2842562 (= e!1800892 (and tp!910773 tp!910772))))

(declare-fun b!2842563 () Bool)

(declare-fun tp!910775 () Bool)

(assert (=> b!2842563 (= e!1800892 tp!910775)))

(assert (= (and b!2842245 ((_ is ElementMatch!8455) (regOne!17422 (regex!5064 (h!39096 rules!1139))))) b!2842561))

(assert (= (and b!2842245 ((_ is Concat!13750) (regOne!17422 (regex!5064 (h!39096 rules!1139))))) b!2842562))

(assert (= (and b!2842245 ((_ is Star!8455) (regOne!17422 (regex!5064 (h!39096 rules!1139))))) b!2842563))

(assert (= (and b!2842245 ((_ is Union!8455) (regOne!17422 (regex!5064 (h!39096 rules!1139))))) b!2842564))

(declare-fun b!2842568 () Bool)

(declare-fun e!1800893 () Bool)

(declare-fun tp!910779 () Bool)

(declare-fun tp!910776 () Bool)

(assert (=> b!2842568 (= e!1800893 (and tp!910779 tp!910776))))

(assert (=> b!2842245 (= tp!910580 e!1800893)))

(declare-fun b!2842565 () Bool)

(assert (=> b!2842565 (= e!1800893 tp_is_empty!14679)))

(declare-fun b!2842566 () Bool)

(declare-fun tp!910778 () Bool)

(declare-fun tp!910777 () Bool)

(assert (=> b!2842566 (= e!1800893 (and tp!910778 tp!910777))))

(declare-fun b!2842567 () Bool)

(declare-fun tp!910780 () Bool)

(assert (=> b!2842567 (= e!1800893 tp!910780)))

(assert (= (and b!2842245 ((_ is ElementMatch!8455) (regTwo!17422 (regex!5064 (h!39096 rules!1139))))) b!2842565))

(assert (= (and b!2842245 ((_ is Concat!13750) (regTwo!17422 (regex!5064 (h!39096 rules!1139))))) b!2842566))

(assert (= (and b!2842245 ((_ is Star!8455) (regTwo!17422 (regex!5064 (h!39096 rules!1139))))) b!2842567))

(assert (= (and b!2842245 ((_ is Union!8455) (regTwo!17422 (regex!5064 (h!39096 rules!1139))))) b!2842568))

(declare-fun b_lambda!85453 () Bool)

(assert (= b_lambda!85451 (or d!823959 b_lambda!85453)))

(declare-fun bs!518993 () Bool)

(declare-fun d!824215 () Bool)

(assert (= bs!518993 (and d!824215 d!823959)))

(assert (=> bs!518993 (= (dynLambda!14172 lambda!104251 (h!39096 rules!1139)) (ruleValid!1605 thiss!11361 (h!39096 rules!1139)))))

(assert (=> bs!518993 m!3269863))

(assert (=> b!2842478 d!824215))

(check-sat (not b!2842546) (not b!2842465) (not d!824149) (not b!2842467) (not d!824045) (not b!2842563) (not d!824193) (not b!2842542) (not d!824191) (not d!824159) (not b!2842462) (not b_next!83175) (not b!2842562) b_and!208555 (not b!2842551) (not b!2842351) (not b_next!83179) (not b!2842485) (not b!2842489) (not b!2842568) (not b!2842491) (not d!824155) (not d!824175) (not b!2842518) (not b!2842532) (not d!824033) (not d!824181) (not b!2842520) (not b!2842567) (not d!824163) (not d!824049) (not b!2842473) (not d!824179) (not d!824195) (not b!2842493) (not b_next!83187) b_and!208551 tp_is_empty!14679 (not b!2842523) (not b!2842501) (not b_next!83177) (not b!2842500) (not b!2842078) (not d!824169) (not d!824061) (not b!2842288) (not d!824059) (not d!824197) (not d!824187) (not b!2842514) (not b!2842499) (not b!2842510) (not d!824133) (not b!2842472) (not b!2842547) b_and!208605 (not b!2842555) (not b_next!83195) (not b!2842560) (not b!2842495) (not b!2842487) (not d!824063) (not b!2842559) (not b!2842511) (not b!2842541) (not d!824207) (not b!2842535) (not b!2842479) (not bs!518993) (not b!2842522) (not d!824065) (not b!2842497) (not b_lambda!85445) (not d!824041) (not b_next!83173) (not b!2842519) (not b!2842375) (not b!2842531) (not b!2842347) (not b!2842527) (not b!2842461) (not b!2842464) (not b_lambda!85443) (not b!2842515) (not b!2842544) (not b!2842468) (not b!2842282) (not b!2842552) b_and!208559 (not b!2842469) b_and!208603 (not b!2842471) (not d!824055) (not b!2842528) (not d!824209) (not d!824205) (not d!824165) (not b!2842348) (not b_next!83171) (not b!2842488) (not d!824171) (not d!824139) (not b!2842538) (not b!2842516) (not b_next!83185) (not b!2842566) (not b!2842558) b_and!208601 (not d!824199) (not b!2842512) (not b!2842556) (not d!824167) b_and!208611 (not b!2842275) (not b!2842274) (not d!824047) (not d!824213) (not d!824051) (not b!2842350) (not d!824157) (not b_next!83193) (not b_lambda!85441) (not d!824035) (not b!2842458) (not b!2842536) b_and!208597 (not b_next!83169) (not b!2842484) (not b!2842280) (not b!2842524) (not b!2842554) (not b_lambda!85453) (not b!2842530) b_and!208613 (not b!2842496) (not b!2842545) (not b!2842564) b_and!208599 (not b!2842075) (not d!824173) (not d!824053) (not b!2842539) (not b!2842540) (not b!2842548) (not b!2842534) (not b!2842492) (not d!824153) (not d!824037) (not b!2842526) (not b!2842550) (not b!2842456) (not d!824189))
(check-sat (not b_next!83175) b_and!208555 (not b_next!83179) (not b_next!83177) b_and!208605 (not b_next!83195) (not b_next!83173) b_and!208601 b_and!208611 (not b_next!83193) b_and!208613 b_and!208599 b_and!208551 (not b_next!83187) b_and!208559 b_and!208603 (not b_next!83171) (not b_next!83185) b_and!208597 (not b_next!83169))
