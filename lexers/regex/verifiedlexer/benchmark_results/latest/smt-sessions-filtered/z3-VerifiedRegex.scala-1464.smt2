; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78082 () Bool)

(assert start!78082)

(declare-fun b!865574 () Bool)

(declare-fun b_free!26441 () Bool)

(declare-fun b_next!26505 () Bool)

(assert (=> b!865574 (= b_free!26441 (not b_next!26505))))

(declare-fun tp!273679 () Bool)

(declare-fun b_and!77573 () Bool)

(assert (=> b!865574 (= tp!273679 b_and!77573)))

(declare-fun b_free!26443 () Bool)

(declare-fun b_next!26507 () Bool)

(assert (=> b!865574 (= b_free!26443 (not b_next!26507))))

(declare-fun tp!273689 () Bool)

(declare-fun b_and!77575 () Bool)

(assert (=> b!865574 (= tp!273689 b_and!77575)))

(declare-fun b!865570 () Bool)

(declare-fun b_free!26445 () Bool)

(declare-fun b_next!26509 () Bool)

(assert (=> b!865570 (= b_free!26445 (not b_next!26509))))

(declare-fun tp!273688 () Bool)

(declare-fun b_and!77577 () Bool)

(assert (=> b!865570 (= tp!273688 b_and!77577)))

(declare-fun b_free!26447 () Bool)

(declare-fun b_next!26511 () Bool)

(assert (=> b!865570 (= b_free!26447 (not b_next!26511))))

(declare-fun tp!273690 () Bool)

(declare-fun b_and!77579 () Bool)

(assert (=> b!865570 (= tp!273690 b_and!77579)))

(declare-fun b!865581 () Bool)

(declare-fun b_free!26449 () Bool)

(declare-fun b_next!26513 () Bool)

(assert (=> b!865581 (= b_free!26449 (not b_next!26513))))

(declare-fun tp!273685 () Bool)

(declare-fun b_and!77581 () Bool)

(assert (=> b!865581 (= tp!273685 b_and!77581)))

(declare-fun b_free!26451 () Bool)

(declare-fun b_next!26515 () Bool)

(assert (=> b!865581 (= b_free!26451 (not b_next!26515))))

(declare-fun tp!273684 () Bool)

(declare-fun b_and!77583 () Bool)

(assert (=> b!865581 (= tp!273684 b_and!77583)))

(declare-fun e!569487 () Bool)

(assert (=> b!865570 (= e!569487 (and tp!273688 tp!273690))))

(declare-fun b!865571 () Bool)

(declare-fun e!569500 () Bool)

(declare-fun tp!273686 () Bool)

(declare-datatypes ((List!9360 0))(
  ( (Nil!9344) (Cons!9344 (h!14745 (_ BitVec 16)) (t!98718 List!9360)) )
))
(declare-datatypes ((TokenValue!1820 0))(
  ( (FloatLiteralValue!3640 (text!13185 List!9360)) (TokenValueExt!1819 (__x!7371 Int)) (Broken!9100 (value!56662 List!9360)) (Object!1835) (End!1820) (Def!1820) (Underscore!1820) (Match!1820) (Else!1820) (Error!1820) (Case!1820) (If!1820) (Extends!1820) (Abstract!1820) (Class!1820) (Val!1820) (DelimiterValue!3640 (del!1880 List!9360)) (KeywordValue!1826 (value!56663 List!9360)) (CommentValue!3640 (value!56664 List!9360)) (WhitespaceValue!3640 (value!56665 List!9360)) (IndentationValue!1820 (value!56666 List!9360)) (String!10997) (Int32!1820) (Broken!9101 (value!56667 List!9360)) (Boolean!1821) (Unit!13870) (OperatorValue!1823 (op!1880 List!9360)) (IdentifierValue!3640 (value!56668 List!9360)) (IdentifierValue!3641 (value!56669 List!9360)) (WhitespaceValue!3641 (value!56670 List!9360)) (True!3640) (False!3640) (Broken!9102 (value!56671 List!9360)) (Broken!9103 (value!56672 List!9360)) (True!3641) (RightBrace!1820) (RightBracket!1820) (Colon!1820) (Null!1820) (Comma!1820) (LeftBracket!1820) (False!3641) (LeftBrace!1820) (ImaginaryLiteralValue!1820 (text!13186 List!9360)) (StringLiteralValue!5460 (value!56673 List!9360)) (EOFValue!1820 (value!56674 List!9360)) (IdentValue!1820 (value!56675 List!9360)) (DelimiterValue!3641 (value!56676 List!9360)) (DedentValue!1820 (value!56677 List!9360)) (NewLineValue!1820 (value!56678 List!9360)) (IntegerValue!5460 (value!56679 (_ BitVec 32)) (text!13187 List!9360)) (IntegerValue!5461 (value!56680 Int) (text!13188 List!9360)) (Times!1820) (Or!1820) (Equal!1820) (Minus!1820) (Broken!9104 (value!56681 List!9360)) (And!1820) (Div!1820) (LessEqual!1820) (Mod!1820) (Concat!4007) (Not!1820) (Plus!1820) (SpaceValue!1820 (value!56682 List!9360)) (IntegerValue!5462 (value!56683 Int) (text!13189 List!9360)) (StringLiteralValue!5461 (text!13190 List!9360)) (FloatLiteralValue!3641 (text!13191 List!9360)) (BytesLiteralValue!1820 (value!56684 List!9360)) (CommentValue!3641 (value!56685 List!9360)) (StringLiteralValue!5462 (value!56686 List!9360)) (ErrorTokenValue!1820 (msg!1881 List!9360)) )
))
(declare-datatypes ((C!4944 0))(
  ( (C!4945 (val!2720 Int)) )
))
(declare-datatypes ((Regex!2187 0))(
  ( (ElementMatch!2187 (c!140085 C!4944)) (Concat!4008 (regOne!4886 Regex!2187) (regTwo!4886 Regex!2187)) (EmptyExpr!2187) (Star!2187 (reg!2516 Regex!2187)) (EmptyLang!2187) (Union!2187 (regOne!4887 Regex!2187) (regTwo!4887 Regex!2187)) )
))
(declare-datatypes ((String!10998 0))(
  ( (String!10999 (value!56687 String)) )
))
(declare-datatypes ((List!9361 0))(
  ( (Nil!9345) (Cons!9345 (h!14746 C!4944) (t!98719 List!9361)) )
))
(declare-datatypes ((IArray!6203 0))(
  ( (IArray!6204 (innerList!3159 List!9361)) )
))
(declare-datatypes ((Conc!3099 0))(
  ( (Node!3099 (left!6917 Conc!3099) (right!7247 Conc!3099) (csize!6428 Int) (cheight!3310 Int)) (Leaf!4564 (xs!5788 IArray!6203) (csize!6429 Int)) (Empty!3099) )
))
(declare-datatypes ((BalanceConc!6212 0))(
  ( (BalanceConc!6213 (c!140086 Conc!3099)) )
))
(declare-datatypes ((TokenValueInjection!3340 0))(
  ( (TokenValueInjection!3341 (toValue!2823 Int) (toChars!2682 Int)) )
))
(declare-datatypes ((Rule!3308 0))(
  ( (Rule!3309 (regex!1754 Regex!2187) (tag!2016 String!10998) (isSeparator!1754 Bool) (transformation!1754 TokenValueInjection!3340)) )
))
(declare-datatypes ((Token!3174 0))(
  ( (Token!3175 (value!56688 TokenValue!1820) (rule!3177 Rule!3308) (size!7793 Int) (originalCharacters!2310 List!9361)) )
))
(declare-datatypes ((List!9362 0))(
  ( (Nil!9346) (Cons!9346 (h!14747 Token!3174) (t!98720 List!9362)) )
))
(declare-fun l!5107 () List!9362)

(declare-fun e!569497 () Bool)

(declare-fun inv!21 (TokenValue!1820) Bool)

(assert (=> b!865571 (= e!569497 (and (inv!21 (value!56688 (h!14747 l!5107))) e!569500 tp!273686))))

(declare-fun b!865572 () Bool)

(declare-fun res!394203 () Bool)

(declare-fun e!569493 () Bool)

(assert (=> b!865572 (=> (not res!394203) (not e!569493))))

(declare-datatypes ((List!9363 0))(
  ( (Nil!9347) (Cons!9347 (h!14748 Rule!3308) (t!98721 List!9363)) )
))
(declare-fun rules!2621 () List!9363)

(declare-datatypes ((LexerInterface!1556 0))(
  ( (LexerInterfaceExt!1553 (__x!7372 Int)) (Lexer!1554) )
))
(declare-fun thiss!20117 () LexerInterface!1556)

(declare-fun rulesProduceEachTokenIndividuallyList!444 (LexerInterface!1556 List!9363 List!9362) Bool)

(assert (=> b!865572 (= res!394203 (rulesProduceEachTokenIndividuallyList!444 thiss!20117 rules!2621 l!5107))))

(declare-fun b!865573 () Bool)

(declare-fun e!569484 () Bool)

(declare-fun e!569496 () Bool)

(assert (=> b!865573 (= e!569484 e!569496)))

(declare-fun res!394204 () Bool)

(assert (=> b!865573 (=> res!394204 e!569496)))

(declare-fun separatorToken!297 () Token!3174)

(declare-fun lt!326638 () List!9362)

(declare-fun lt!326636 () List!9362)

(declare-fun withSeparatorTokenList!84 (LexerInterface!1556 List!9362 Token!3174) List!9362)

(assert (=> b!865573 (= res!394204 (not (= (t!98720 (t!98720 lt!326638)) (withSeparatorTokenList!84 thiss!20117 lt!326636 separatorToken!297))))))

(declare-fun tail!1062 (List!9362) List!9362)

(assert (=> b!865573 (= lt!326636 (tail!1062 l!5107))))

(declare-fun e!569501 () Bool)

(assert (=> b!865574 (= e!569501 (and tp!273679 tp!273689))))

(declare-fun b!865575 () Bool)

(assert (=> b!865575 (= e!569496 true)))

(declare-fun lt!326639 () Bool)

(assert (=> b!865575 (= lt!326639 (rulesProduceEachTokenIndividuallyList!444 thiss!20117 rules!2621 lt!326636))))

(declare-fun separableTokensPredicate!74 (LexerInterface!1556 Token!3174 Token!3174 List!9363) Bool)

(assert (=> b!865575 (separableTokensPredicate!74 thiss!20117 (h!14747 lt!326638) (h!14747 (t!98720 lt!326638)) rules!2621)))

(declare-datatypes ((Unit!13871 0))(
  ( (Unit!13872) )
))
(declare-fun lt!326637 () Unit!13871)

(declare-fun lemmaTokensOfDifferentKindsAreSeparable!52 (LexerInterface!1556 Token!3174 Token!3174 List!9363) Unit!13871)

(assert (=> b!865575 (= lt!326637 (lemmaTokensOfDifferentKindsAreSeparable!52 thiss!20117 (h!14747 lt!326638) (h!14747 (t!98720 lt!326638)) rules!2621))))

(declare-fun b!865576 () Bool)

(declare-fun res!394197 () Bool)

(assert (=> b!865576 (=> (not res!394197) (not e!569493))))

(declare-fun rulesInvariant!1432 (LexerInterface!1556 List!9363) Bool)

(assert (=> b!865576 (= res!394197 (rulesInvariant!1432 thiss!20117 rules!2621))))

(declare-fun b!865577 () Bool)

(declare-fun res!394200 () Bool)

(assert (=> b!865577 (=> (not res!394200) (not e!569493))))

(declare-fun isEmpty!5551 (List!9363) Bool)

(assert (=> b!865577 (= res!394200 (not (isEmpty!5551 rules!2621)))))

(declare-fun b!865578 () Bool)

(assert (=> b!865578 (= e!569493 (not e!569484))))

(declare-fun res!394196 () Bool)

(assert (=> b!865578 (=> res!394196 e!569484)))

(get-info :version)

(assert (=> b!865578 (= res!394196 (or (not ((_ is Cons!9346) lt!326638)) (not ((_ is Cons!9346) (t!98720 lt!326638)))))))

(assert (=> b!865578 (rulesProduceEachTokenIndividuallyList!444 thiss!20117 rules!2621 lt!326638)))

(assert (=> b!865578 (= lt!326638 (withSeparatorTokenList!84 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!326635 () Unit!13871)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!84 (LexerInterface!1556 List!9363 List!9362 Token!3174) Unit!13871)

(assert (=> b!865578 (= lt!326635 (withSeparatorTokenListPreservesRulesProduceTokens!84 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun e!569489 () Bool)

(declare-fun b!865579 () Bool)

(declare-fun tp!273680 () Bool)

(declare-fun inv!11879 (Token!3174) Bool)

(assert (=> b!865579 (= e!569489 (and (inv!11879 (h!14747 l!5107)) e!569497 tp!273680))))

(declare-fun b!865580 () Bool)

(declare-fun res!394199 () Bool)

(assert (=> b!865580 (=> (not res!394199) (not e!569493))))

(declare-fun lambda!25968 () Int)

(declare-fun forall!2221 (List!9362 Int) Bool)

(assert (=> b!865580 (= res!394199 (forall!2221 l!5107 lambda!25968))))

(declare-fun e!569488 () Bool)

(assert (=> b!865581 (= e!569488 (and tp!273685 tp!273684))))

(declare-fun e!569492 () Bool)

(declare-fun tp!273682 () Bool)

(declare-fun b!865582 () Bool)

(declare-fun inv!11876 (String!10998) Bool)

(declare-fun inv!11880 (TokenValueInjection!3340) Bool)

(assert (=> b!865582 (= e!569492 (and tp!273682 (inv!11876 (tag!2016 (h!14748 rules!2621))) (inv!11880 (transformation!1754 (h!14748 rules!2621))) e!569501))))

(declare-fun res!394195 () Bool)

(assert (=> start!78082 (=> (not res!394195) (not e!569493))))

(assert (=> start!78082 (= res!394195 ((_ is Lexer!1554) thiss!20117))))

(assert (=> start!78082 e!569493))

(assert (=> start!78082 true))

(declare-fun e!569491 () Bool)

(assert (=> start!78082 e!569491))

(assert (=> start!78082 e!569489))

(declare-fun e!569485 () Bool)

(assert (=> start!78082 (and (inv!11879 separatorToken!297) e!569485)))

(declare-fun tp!273681 () Bool)

(declare-fun b!865583 () Bool)

(declare-fun e!569498 () Bool)

(assert (=> b!865583 (= e!569485 (and (inv!21 (value!56688 separatorToken!297)) e!569498 tp!273681))))

(declare-fun b!865584 () Bool)

(declare-fun res!394206 () Bool)

(assert (=> b!865584 (=> (not res!394206) (not e!569493))))

(declare-fun sepAndNonSepRulesDisjointChars!554 (List!9363 List!9363) Bool)

(assert (=> b!865584 (= res!394206 (sepAndNonSepRulesDisjointChars!554 rules!2621 rules!2621))))

(declare-fun b!865585 () Bool)

(declare-fun res!394201 () Bool)

(assert (=> b!865585 (=> (not res!394201) (not e!569493))))

(declare-fun rulesProduceIndividualToken!620 (LexerInterface!1556 List!9363 Token!3174) Bool)

(assert (=> b!865585 (= res!394201 (rulesProduceIndividualToken!620 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!865586 () Bool)

(declare-fun tp!273678 () Bool)

(assert (=> b!865586 (= e!569500 (and tp!273678 (inv!11876 (tag!2016 (rule!3177 (h!14747 l!5107)))) (inv!11880 (transformation!1754 (rule!3177 (h!14747 l!5107)))) e!569487))))

(declare-fun b!865587 () Bool)

(declare-fun res!394205 () Bool)

(assert (=> b!865587 (=> res!394205 e!569496)))

(assert (=> b!865587 (= res!394205 (not (= (h!14747 (t!98720 lt!326638)) separatorToken!297)))))

(declare-fun b!865588 () Bool)

(declare-fun res!394202 () Bool)

(assert (=> b!865588 (=> res!394202 e!569496)))

(declare-fun head!1500 (List!9362) Token!3174)

(assert (=> b!865588 (= res!394202 (not (= (head!1500 l!5107) (h!14747 lt!326638))))))

(declare-fun b!865589 () Bool)

(declare-fun tp!273683 () Bool)

(assert (=> b!865589 (= e!569491 (and e!569492 tp!273683))))

(declare-fun b!865590 () Bool)

(declare-fun res!394198 () Bool)

(assert (=> b!865590 (=> (not res!394198) (not e!569493))))

(assert (=> b!865590 (= res!394198 (isSeparator!1754 (rule!3177 separatorToken!297)))))

(declare-fun tp!273687 () Bool)

(declare-fun b!865591 () Bool)

(assert (=> b!865591 (= e!569498 (and tp!273687 (inv!11876 (tag!2016 (rule!3177 separatorToken!297))) (inv!11880 (transformation!1754 (rule!3177 separatorToken!297))) e!569488))))

(assert (= (and start!78082 res!394195) b!865577))

(assert (= (and b!865577 res!394200) b!865576))

(assert (= (and b!865576 res!394197) b!865572))

(assert (= (and b!865572 res!394203) b!865585))

(assert (= (and b!865585 res!394201) b!865590))

(assert (= (and b!865590 res!394198) b!865580))

(assert (= (and b!865580 res!394199) b!865584))

(assert (= (and b!865584 res!394206) b!865578))

(assert (= (and b!865578 (not res!394196)) b!865573))

(assert (= (and b!865573 (not res!394204)) b!865588))

(assert (= (and b!865588 (not res!394202)) b!865587))

(assert (= (and b!865587 (not res!394205)) b!865575))

(assert (= b!865582 b!865574))

(assert (= b!865589 b!865582))

(assert (= (and start!78082 ((_ is Cons!9347) rules!2621)) b!865589))

(assert (= b!865586 b!865570))

(assert (= b!865571 b!865586))

(assert (= b!865579 b!865571))

(assert (= (and start!78082 ((_ is Cons!9346) l!5107)) b!865579))

(assert (= b!865591 b!865581))

(assert (= b!865583 b!865591))

(assert (= start!78082 b!865583))

(declare-fun m!1112415 () Bool)

(assert (=> b!865576 m!1112415))

(declare-fun m!1112417 () Bool)

(assert (=> b!865571 m!1112417))

(declare-fun m!1112419 () Bool)

(assert (=> b!865591 m!1112419))

(declare-fun m!1112421 () Bool)

(assert (=> b!865591 m!1112421))

(declare-fun m!1112423 () Bool)

(assert (=> b!865577 m!1112423))

(declare-fun m!1112425 () Bool)

(assert (=> b!865585 m!1112425))

(declare-fun m!1112427 () Bool)

(assert (=> b!865586 m!1112427))

(declare-fun m!1112429 () Bool)

(assert (=> b!865586 m!1112429))

(declare-fun m!1112431 () Bool)

(assert (=> start!78082 m!1112431))

(declare-fun m!1112433 () Bool)

(assert (=> b!865588 m!1112433))

(declare-fun m!1112435 () Bool)

(assert (=> b!865573 m!1112435))

(declare-fun m!1112437 () Bool)

(assert (=> b!865573 m!1112437))

(declare-fun m!1112439 () Bool)

(assert (=> b!865575 m!1112439))

(declare-fun m!1112441 () Bool)

(assert (=> b!865575 m!1112441))

(declare-fun m!1112443 () Bool)

(assert (=> b!865575 m!1112443))

(declare-fun m!1112445 () Bool)

(assert (=> b!865582 m!1112445))

(declare-fun m!1112447 () Bool)

(assert (=> b!865582 m!1112447))

(declare-fun m!1112449 () Bool)

(assert (=> b!865580 m!1112449))

(declare-fun m!1112451 () Bool)

(assert (=> b!865578 m!1112451))

(declare-fun m!1112453 () Bool)

(assert (=> b!865578 m!1112453))

(declare-fun m!1112455 () Bool)

(assert (=> b!865578 m!1112455))

(declare-fun m!1112457 () Bool)

(assert (=> b!865583 m!1112457))

(declare-fun m!1112459 () Bool)

(assert (=> b!865579 m!1112459))

(declare-fun m!1112461 () Bool)

(assert (=> b!865584 m!1112461))

(declare-fun m!1112463 () Bool)

(assert (=> b!865572 m!1112463))

(check-sat (not b!865576) b_and!77579 (not b!865578) (not b!865582) (not b!865588) (not b!865589) (not b!865579) b_and!77573 (not b_next!26511) (not b!865575) (not b!865573) (not b!865585) (not b!865591) (not b!865586) b_and!77577 (not b_next!26515) (not start!78082) (not b!865580) (not b_next!26507) (not b_next!26513) (not b!865584) (not b!865577) (not b!865572) b_and!77581 (not b!865583) b_and!77583 (not b_next!26509) b_and!77575 (not b_next!26505) (not b!865571))
(check-sat b_and!77579 (not b_next!26507) (not b_next!26513) b_and!77581 b_and!77573 (not b_next!26511) b_and!77577 (not b_next!26515) b_and!77583 (not b_next!26509) b_and!77575 (not b_next!26505))
