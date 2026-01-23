; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74714 () Bool)

(assert start!74714)

(declare-fun b!841357 () Bool)

(declare-fun b_free!25113 () Bool)

(declare-fun b_next!25177 () Bool)

(assert (=> b!841357 (= b_free!25113 (not b_next!25177))))

(declare-fun tp!264613 () Bool)

(declare-fun b_and!72725 () Bool)

(assert (=> b!841357 (= tp!264613 b_and!72725)))

(declare-fun b_free!25115 () Bool)

(declare-fun b_next!25179 () Bool)

(assert (=> b!841357 (= b_free!25115 (not b_next!25179))))

(declare-fun tp!264609 () Bool)

(declare-fun b_and!72727 () Bool)

(assert (=> b!841357 (= tp!264609 b_and!72727)))

(declare-fun b!841365 () Bool)

(declare-fun b_free!25117 () Bool)

(declare-fun b_next!25181 () Bool)

(assert (=> b!841365 (= b_free!25117 (not b_next!25181))))

(declare-fun tp!264608 () Bool)

(declare-fun b_and!72729 () Bool)

(assert (=> b!841365 (= tp!264608 b_and!72729)))

(declare-fun b_free!25119 () Bool)

(declare-fun b_next!25183 () Bool)

(assert (=> b!841365 (= b_free!25119 (not b_next!25183))))

(declare-fun tp!264618 () Bool)

(declare-fun b_and!72731 () Bool)

(assert (=> b!841365 (= tp!264618 b_and!72731)))

(declare-fun b!841368 () Bool)

(declare-fun b_free!25121 () Bool)

(declare-fun b_next!25185 () Bool)

(assert (=> b!841368 (= b_free!25121 (not b_next!25185))))

(declare-fun tp!264614 () Bool)

(declare-fun b_and!72733 () Bool)

(assert (=> b!841368 (= tp!264614 b_and!72733)))

(declare-fun b_free!25123 () Bool)

(declare-fun b_next!25187 () Bool)

(assert (=> b!841368 (= b_free!25123 (not b_next!25187))))

(declare-fun tp!264616 () Bool)

(declare-fun b_and!72735 () Bool)

(assert (=> b!841368 (= tp!264616 b_and!72735)))

(declare-fun b!841350 () Bool)

(declare-fun res!384583 () Bool)

(declare-fun e!553365 () Bool)

(assert (=> b!841350 (=> (not res!384583) (not e!553365))))

(declare-datatypes ((List!9034 0))(
  ( (Nil!9018) (Cons!9018 (h!14419 (_ BitVec 16)) (t!93576 List!9034)) )
))
(declare-datatypes ((TokenValue!1756 0))(
  ( (FloatLiteralValue!3512 (text!12737 List!9034)) (TokenValueExt!1755 (__x!7243 Int)) (Broken!8780 (value!54838 List!9034)) (Object!1771) (End!1756) (Def!1756) (Underscore!1756) (Match!1756) (Else!1756) (Error!1756) (Case!1756) (If!1756) (Extends!1756) (Abstract!1756) (Class!1756) (Val!1756) (DelimiterValue!3512 (del!1816 List!9034)) (KeywordValue!1762 (value!54839 List!9034)) (CommentValue!3512 (value!54840 List!9034)) (WhitespaceValue!3512 (value!54841 List!9034)) (IndentationValue!1756 (value!54842 List!9034)) (String!10677) (Int32!1756) (Broken!8781 (value!54843 List!9034)) (Boolean!1757) (Unit!13460) (OperatorValue!1759 (op!1816 List!9034)) (IdentifierValue!3512 (value!54844 List!9034)) (IdentifierValue!3513 (value!54845 List!9034)) (WhitespaceValue!3513 (value!54846 List!9034)) (True!3512) (False!3512) (Broken!8782 (value!54847 List!9034)) (Broken!8783 (value!54848 List!9034)) (True!3513) (RightBrace!1756) (RightBracket!1756) (Colon!1756) (Null!1756) (Comma!1756) (LeftBracket!1756) (False!3513) (LeftBrace!1756) (ImaginaryLiteralValue!1756 (text!12738 List!9034)) (StringLiteralValue!5268 (value!54849 List!9034)) (EOFValue!1756 (value!54850 List!9034)) (IdentValue!1756 (value!54851 List!9034)) (DelimiterValue!3513 (value!54852 List!9034)) (DedentValue!1756 (value!54853 List!9034)) (NewLineValue!1756 (value!54854 List!9034)) (IntegerValue!5268 (value!54855 (_ BitVec 32)) (text!12739 List!9034)) (IntegerValue!5269 (value!54856 Int) (text!12740 List!9034)) (Times!1756) (Or!1756) (Equal!1756) (Minus!1756) (Broken!8784 (value!54857 List!9034)) (And!1756) (Div!1756) (LessEqual!1756) (Mod!1756) (Concat!3879) (Not!1756) (Plus!1756) (SpaceValue!1756 (value!54858 List!9034)) (IntegerValue!5270 (value!54859 Int) (text!12741 List!9034)) (StringLiteralValue!5269 (text!12742 List!9034)) (FloatLiteralValue!3513 (text!12743 List!9034)) (BytesLiteralValue!1756 (value!54860 List!9034)) (CommentValue!3513 (value!54861 List!9034)) (StringLiteralValue!5270 (value!54862 List!9034)) (ErrorTokenValue!1756 (msg!1817 List!9034)) )
))
(declare-datatypes ((C!4816 0))(
  ( (C!4817 (val!2656 Int)) )
))
(declare-datatypes ((Regex!2123 0))(
  ( (ElementMatch!2123 (c!137149 C!4816)) (Concat!3880 (regOne!4758 Regex!2123) (regTwo!4758 Regex!2123)) (EmptyExpr!2123) (Star!2123 (reg!2452 Regex!2123)) (EmptyLang!2123) (Union!2123 (regOne!4759 Regex!2123) (regTwo!4759 Regex!2123)) )
))
(declare-datatypes ((String!10678 0))(
  ( (String!10679 (value!54863 String)) )
))
(declare-datatypes ((List!9035 0))(
  ( (Nil!9019) (Cons!9019 (h!14420 C!4816) (t!93577 List!9035)) )
))
(declare-datatypes ((IArray!5991 0))(
  ( (IArray!5992 (innerList!3053 List!9035)) )
))
(declare-datatypes ((Conc!2993 0))(
  ( (Node!2993 (left!6695 Conc!2993) (right!7025 Conc!2993) (csize!6216 Int) (cheight!3204 Int)) (Leaf!4426 (xs!5682 IArray!5991) (csize!6217 Int)) (Empty!2993) )
))
(declare-datatypes ((BalanceConc!6000 0))(
  ( (BalanceConc!6001 (c!137150 Conc!2993)) )
))
(declare-datatypes ((TokenValueInjection!3212 0))(
  ( (TokenValueInjection!3213 (toValue!2707 Int) (toChars!2566 Int)) )
))
(declare-datatypes ((Rule!3180 0))(
  ( (Rule!3181 (regex!1690 Regex!2123) (tag!1952 String!10678) (isSeparator!1690 Bool) (transformation!1690 TokenValueInjection!3212)) )
))
(declare-datatypes ((List!9036 0))(
  ( (Nil!9020) (Cons!9020 (h!14421 Rule!3180) (t!93578 List!9036)) )
))
(declare-fun rules!2621 () List!9036)

(declare-fun isEmpty!5317 (List!9036) Bool)

(assert (=> b!841350 (= res!384583 (not (isEmpty!5317 rules!2621)))))

(declare-fun b!841352 () Bool)

(declare-fun e!553374 () Bool)

(assert (=> b!841352 (= e!553365 (not e!553374))))

(declare-fun res!384589 () Bool)

(assert (=> b!841352 (=> res!384589 e!553374)))

(declare-datatypes ((Token!3046 0))(
  ( (Token!3047 (value!54864 TokenValue!1756) (rule!3113 Rule!3180) (size!7539 Int) (originalCharacters!2246 List!9035)) )
))
(declare-datatypes ((List!9037 0))(
  ( (Nil!9021) (Cons!9021 (h!14422 Token!3046) (t!93579 List!9037)) )
))
(declare-fun lt!318673 () List!9037)

(get-info :version)

(assert (=> b!841352 (= res!384589 (or (not ((_ is Cons!9021) lt!318673)) (not ((_ is Cons!9021) (t!93579 lt!318673)))))))

(declare-datatypes ((LexerInterface!1492 0))(
  ( (LexerInterfaceExt!1489 (__x!7244 Int)) (Lexer!1490) )
))
(declare-fun thiss!20117 () LexerInterface!1492)

(declare-fun rulesProduceEachTokenIndividuallyList!380 (LexerInterface!1492 List!9036 List!9037) Bool)

(assert (=> b!841352 (rulesProduceEachTokenIndividuallyList!380 thiss!20117 rules!2621 lt!318673)))

(declare-fun separatorToken!297 () Token!3046)

(declare-fun l!5107 () List!9037)

(declare-fun withSeparatorTokenList!22 (LexerInterface!1492 List!9037 Token!3046) List!9037)

(assert (=> b!841352 (= lt!318673 (withSeparatorTokenList!22 thiss!20117 l!5107 separatorToken!297))))

(declare-datatypes ((Unit!13461 0))(
  ( (Unit!13462) )
))
(declare-fun lt!318672 () Unit!13461)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!22 (LexerInterface!1492 List!9036 List!9037 Token!3046) Unit!13461)

(assert (=> b!841352 (= lt!318672 (withSeparatorTokenListPreservesRulesProduceTokens!22 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun b!841353 () Bool)

(declare-fun res!384591 () Bool)

(assert (=> b!841353 (=> (not res!384591) (not e!553365))))

(assert (=> b!841353 (= res!384591 (isSeparator!1690 (rule!3113 separatorToken!297)))))

(declare-fun e!553375 () Bool)

(declare-fun tp!264611 () Bool)

(declare-fun b!841354 () Bool)

(declare-fun e!553371 () Bool)

(declare-fun inv!11491 (String!10678) Bool)

(declare-fun inv!11494 (TokenValueInjection!3212) Bool)

(assert (=> b!841354 (= e!553371 (and tp!264611 (inv!11491 (tag!1952 (h!14421 rules!2621))) (inv!11494 (transformation!1690 (h!14421 rules!2621))) e!553375))))

(declare-fun e!553364 () Bool)

(declare-fun tp!264612 () Bool)

(declare-fun b!841355 () Bool)

(declare-fun e!553358 () Bool)

(declare-fun inv!21 (TokenValue!1756) Bool)

(assert (=> b!841355 (= e!553364 (and (inv!21 (value!54864 separatorToken!297)) e!553358 tp!264612))))

(declare-fun b!841356 () Bool)

(declare-fun e!553372 () Bool)

(declare-fun lt!318674 () List!9037)

(declare-fun lambda!24986 () Int)

(declare-fun forall!2105 (List!9037 Int) Bool)

(assert (=> b!841356 (= e!553372 (forall!2105 lt!318674 lambda!24986))))

(declare-fun e!553370 () Bool)

(assert (=> b!841357 (= e!553370 (and tp!264613 tp!264609))))

(declare-fun b!841358 () Bool)

(declare-fun res!384588 () Bool)

(assert (=> b!841358 (=> (not res!384588) (not e!553365))))

(declare-fun rulesInvariant!1368 (LexerInterface!1492 List!9036) Bool)

(assert (=> b!841358 (= res!384588 (rulesInvariant!1368 thiss!20117 rules!2621))))

(declare-fun b!841359 () Bool)

(declare-fun res!384596 () Bool)

(assert (=> b!841359 (=> (not res!384596) (not e!553365))))

(assert (=> b!841359 (= res!384596 (forall!2105 l!5107 lambda!24986))))

(declare-fun b!841360 () Bool)

(declare-fun res!384584 () Bool)

(assert (=> b!841360 (=> (not res!384584) (not e!553365))))

(declare-fun rulesProduceIndividualToken!556 (LexerInterface!1492 List!9036 Token!3046) Bool)

(assert (=> b!841360 (= res!384584 (rulesProduceIndividualToken!556 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!841361 () Bool)

(declare-fun res!384592 () Bool)

(declare-fun e!553360 () Bool)

(assert (=> b!841361 (=> res!384592 e!553360)))

(assert (=> b!841361 (= res!384592 (not (= (h!14422 (t!93579 lt!318673)) separatorToken!297)))))

(declare-fun tp!264620 () Bool)

(declare-fun b!841362 () Bool)

(assert (=> b!841362 (= e!553358 (and tp!264620 (inv!11491 (tag!1952 (rule!3113 separatorToken!297))) (inv!11494 (transformation!1690 (rule!3113 separatorToken!297))) e!553370))))

(declare-fun tp!264619 () Bool)

(declare-fun e!553363 () Bool)

(declare-fun e!553368 () Bool)

(declare-fun b!841363 () Bool)

(declare-fun inv!11495 (Token!3046) Bool)

(assert (=> b!841363 (= e!553368 (and (inv!11495 (h!14422 l!5107)) e!553363 tp!264619))))

(declare-fun b!841351 () Bool)

(assert (=> b!841351 (= e!553374 e!553360)))

(declare-fun res!384587 () Bool)

(assert (=> b!841351 (=> res!384587 e!553360)))

(assert (=> b!841351 (= res!384587 (not (= (t!93579 (t!93579 lt!318673)) (withSeparatorTokenList!22 thiss!20117 lt!318674 separatorToken!297))))))

(declare-fun tail!1008 (List!9037) List!9037)

(assert (=> b!841351 (= lt!318674 (tail!1008 l!5107))))

(declare-fun res!384593 () Bool)

(assert (=> start!74714 (=> (not res!384593) (not e!553365))))

(assert (=> start!74714 (= res!384593 ((_ is Lexer!1490) thiss!20117))))

(assert (=> start!74714 e!553365))

(assert (=> start!74714 true))

(declare-fun e!553357 () Bool)

(assert (=> start!74714 e!553357))

(assert (=> start!74714 e!553368))

(assert (=> start!74714 (and (inv!11495 separatorToken!297) e!553364)))

(declare-fun b!841364 () Bool)

(declare-fun res!384594 () Bool)

(assert (=> b!841364 (=> res!384594 e!553372)))

(assert (=> b!841364 (= res!384594 (not (forall!2105 lt!318674 lambda!24986)))))

(assert (=> b!841365 (= e!553375 (and tp!264608 tp!264618))))

(declare-fun b!841366 () Bool)

(assert (=> b!841366 (= e!553360 e!553372)))

(declare-fun res!384590 () Bool)

(assert (=> b!841366 (=> res!384590 e!553372)))

(assert (=> b!841366 (= res!384590 (not (rulesProduceEachTokenIndividuallyList!380 thiss!20117 rules!2621 lt!318674)))))

(declare-fun separableTokensPredicate!32 (LexerInterface!1492 Token!3046 Token!3046 List!9036) Bool)

(assert (=> b!841366 (separableTokensPredicate!32 thiss!20117 (h!14422 lt!318673) (h!14422 (t!93579 lt!318673)) rules!2621)))

(declare-fun lt!318675 () Unit!13461)

(declare-fun lemmaTokensOfDifferentKindsAreSeparable!14 (LexerInterface!1492 Token!3046 Token!3046 List!9036) Unit!13461)

(assert (=> b!841366 (= lt!318675 (lemmaTokensOfDifferentKindsAreSeparable!14 thiss!20117 (h!14422 lt!318673) (h!14422 (t!93579 lt!318673)) rules!2621))))

(declare-fun b!841367 () Bool)

(declare-fun res!384586 () Bool)

(assert (=> b!841367 (=> res!384586 e!553360)))

(declare-fun head!1450 (List!9037) Token!3046)

(assert (=> b!841367 (= res!384586 (not (= (head!1450 l!5107) (h!14422 lt!318673))))))

(declare-fun e!553369 () Bool)

(assert (=> b!841368 (= e!553369 (and tp!264614 tp!264616))))

(declare-fun b!841369 () Bool)

(declare-fun res!384585 () Bool)

(assert (=> b!841369 (=> (not res!384585) (not e!553365))))

(assert (=> b!841369 (= res!384585 (rulesProduceEachTokenIndividuallyList!380 thiss!20117 rules!2621 l!5107))))

(declare-fun b!841370 () Bool)

(declare-fun tp!264610 () Bool)

(assert (=> b!841370 (= e!553357 (and e!553371 tp!264610))))

(declare-fun b!841371 () Bool)

(declare-fun res!384595 () Bool)

(assert (=> b!841371 (=> (not res!384595) (not e!553365))))

(declare-fun sepAndNonSepRulesDisjointChars!490 (List!9036 List!9036) Bool)

(assert (=> b!841371 (= res!384595 (sepAndNonSepRulesDisjointChars!490 rules!2621 rules!2621))))

(declare-fun e!553367 () Bool)

(declare-fun b!841372 () Bool)

(declare-fun tp!264615 () Bool)

(assert (=> b!841372 (= e!553367 (and tp!264615 (inv!11491 (tag!1952 (rule!3113 (h!14422 l!5107)))) (inv!11494 (transformation!1690 (rule!3113 (h!14422 l!5107)))) e!553369))))

(declare-fun b!841373 () Bool)

(declare-fun tp!264617 () Bool)

(assert (=> b!841373 (= e!553363 (and (inv!21 (value!54864 (h!14422 l!5107))) e!553367 tp!264617))))

(assert (= (and start!74714 res!384593) b!841350))

(assert (= (and b!841350 res!384583) b!841358))

(assert (= (and b!841358 res!384588) b!841369))

(assert (= (and b!841369 res!384585) b!841360))

(assert (= (and b!841360 res!384584) b!841353))

(assert (= (and b!841353 res!384591) b!841359))

(assert (= (and b!841359 res!384596) b!841371))

(assert (= (and b!841371 res!384595) b!841352))

(assert (= (and b!841352 (not res!384589)) b!841351))

(assert (= (and b!841351 (not res!384587)) b!841367))

(assert (= (and b!841367 (not res!384586)) b!841361))

(assert (= (and b!841361 (not res!384592)) b!841366))

(assert (= (and b!841366 (not res!384590)) b!841364))

(assert (= (and b!841364 (not res!384594)) b!841356))

(assert (= b!841354 b!841365))

(assert (= b!841370 b!841354))

(assert (= (and start!74714 ((_ is Cons!9020) rules!2621)) b!841370))

(assert (= b!841372 b!841368))

(assert (= b!841373 b!841372))

(assert (= b!841363 b!841373))

(assert (= (and start!74714 ((_ is Cons!9021) l!5107)) b!841363))

(assert (= b!841362 b!841357))

(assert (= b!841355 b!841362))

(assert (= start!74714 b!841355))

(declare-fun m!1074389 () Bool)

(assert (=> b!841369 m!1074389))

(declare-fun m!1074391 () Bool)

(assert (=> b!841351 m!1074391))

(declare-fun m!1074393 () Bool)

(assert (=> b!841351 m!1074393))

(declare-fun m!1074395 () Bool)

(assert (=> b!841356 m!1074395))

(declare-fun m!1074397 () Bool)

(assert (=> b!841366 m!1074397))

(declare-fun m!1074399 () Bool)

(assert (=> b!841366 m!1074399))

(declare-fun m!1074401 () Bool)

(assert (=> b!841366 m!1074401))

(declare-fun m!1074403 () Bool)

(assert (=> b!841359 m!1074403))

(declare-fun m!1074405 () Bool)

(assert (=> b!841372 m!1074405))

(declare-fun m!1074407 () Bool)

(assert (=> b!841372 m!1074407))

(declare-fun m!1074409 () Bool)

(assert (=> b!841358 m!1074409))

(declare-fun m!1074411 () Bool)

(assert (=> b!841355 m!1074411))

(declare-fun m!1074413 () Bool)

(assert (=> b!841373 m!1074413))

(declare-fun m!1074415 () Bool)

(assert (=> start!74714 m!1074415))

(declare-fun m!1074417 () Bool)

(assert (=> b!841362 m!1074417))

(declare-fun m!1074419 () Bool)

(assert (=> b!841362 m!1074419))

(declare-fun m!1074421 () Bool)

(assert (=> b!841350 m!1074421))

(declare-fun m!1074423 () Bool)

(assert (=> b!841363 m!1074423))

(declare-fun m!1074425 () Bool)

(assert (=> b!841360 m!1074425))

(declare-fun m!1074427 () Bool)

(assert (=> b!841352 m!1074427))

(declare-fun m!1074429 () Bool)

(assert (=> b!841352 m!1074429))

(declare-fun m!1074431 () Bool)

(assert (=> b!841352 m!1074431))

(declare-fun m!1074433 () Bool)

(assert (=> b!841354 m!1074433))

(declare-fun m!1074435 () Bool)

(assert (=> b!841354 m!1074435))

(declare-fun m!1074437 () Bool)

(assert (=> b!841367 m!1074437))

(assert (=> b!841364 m!1074395))

(declare-fun m!1074439 () Bool)

(assert (=> b!841371 m!1074439))

(check-sat (not b_next!25185) (not start!74714) (not b_next!25183) (not b!841371) (not b!841360) (not b!841351) (not b!841366) (not b_next!25179) (not b!841373) (not b!841355) (not b_next!25187) (not b_next!25181) (not b!841364) (not b!841358) (not b!841372) b_and!72725 (not b!841350) (not b!841352) (not b!841356) (not b!841369) b_and!72735 (not b_next!25177) (not b!841354) (not b!841370) (not b!841362) b_and!72731 (not b!841363) b_and!72729 (not b!841359) b_and!72733 b_and!72727 (not b!841367))
(check-sat (not b_next!25185) b_and!72725 b_and!72735 (not b_next!25183) (not b_next!25177) b_and!72731 (not b_next!25179) b_and!72729 (not b_next!25187) (not b_next!25181) b_and!72733 b_and!72727)
