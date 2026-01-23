; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100466 () Bool)

(assert start!100466)

(declare-fun b!1153818 () Bool)

(declare-fun e!737703 () Bool)

(assert (=> b!1153818 (= e!737703 true)))

(declare-fun b!1153817 () Bool)

(declare-fun e!737702 () Bool)

(assert (=> b!1153817 (= e!737702 e!737703)))

(declare-fun b!1153810 () Bool)

(assert (=> b!1153810 e!737702))

(assert (= b!1153817 b!1153818))

(assert (= b!1153810 b!1153817))

(declare-fun b!1153806 () Bool)

(declare-fun e!737697 () Bool)

(declare-datatypes ((List!11158 0))(
  ( (Nil!11134) (Cons!11134 (h!16535 (_ BitVec 16)) (t!108696 List!11158)) )
))
(declare-datatypes ((TokenValue!1987 0))(
  ( (FloatLiteralValue!3974 (text!14354 List!11158)) (TokenValueExt!1986 (__x!7685 Int)) (Broken!9935 (value!62719 List!11158)) (Object!2010) (End!1987) (Def!1987) (Underscore!1987) (Match!1987) (Else!1987) (Error!1987) (Case!1987) (If!1987) (Extends!1987) (Abstract!1987) (Class!1987) (Val!1987) (DelimiterValue!3974 (del!2047 List!11158)) (KeywordValue!1993 (value!62720 List!11158)) (CommentValue!3974 (value!62721 List!11158)) (WhitespaceValue!3974 (value!62722 List!11158)) (IndentationValue!1987 (value!62723 List!11158)) (String!13522) (Int32!1987) (Broken!9936 (value!62724 List!11158)) (Boolean!1988) (Unit!17187) (OperatorValue!1990 (op!2047 List!11158)) (IdentifierValue!3974 (value!62725 List!11158)) (IdentifierValue!3975 (value!62726 List!11158)) (WhitespaceValue!3975 (value!62727 List!11158)) (True!3974) (False!3974) (Broken!9937 (value!62728 List!11158)) (Broken!9938 (value!62729 List!11158)) (True!3975) (RightBrace!1987) (RightBracket!1987) (Colon!1987) (Null!1987) (Comma!1987) (LeftBracket!1987) (False!3975) (LeftBrace!1987) (ImaginaryLiteralValue!1987 (text!14355 List!11158)) (StringLiteralValue!5961 (value!62730 List!11158)) (EOFValue!1987 (value!62731 List!11158)) (IdentValue!1987 (value!62732 List!11158)) (DelimiterValue!3975 (value!62733 List!11158)) (DedentValue!1987 (value!62734 List!11158)) (NewLineValue!1987 (value!62735 List!11158)) (IntegerValue!5961 (value!62736 (_ BitVec 32)) (text!14356 List!11158)) (IntegerValue!5962 (value!62737 Int) (text!14357 List!11158)) (Times!1987) (Or!1987) (Equal!1987) (Minus!1987) (Broken!9939 (value!62738 List!11158)) (And!1987) (Div!1987) (LessEqual!1987) (Mod!1987) (Concat!5178) (Not!1987) (Plus!1987) (SpaceValue!1987 (value!62739 List!11158)) (IntegerValue!5963 (value!62740 Int) (text!14358 List!11158)) (StringLiteralValue!5962 (text!14359 List!11158)) (FloatLiteralValue!3975 (text!14360 List!11158)) (BytesLiteralValue!1987 (value!62741 List!11158)) (CommentValue!3975 (value!62742 List!11158)) (StringLiteralValue!5963 (value!62743 List!11158)) (ErrorTokenValue!1987 (msg!2048 List!11158)) )
))
(declare-datatypes ((C!6700 0))(
  ( (C!6701 (val!3606 Int)) )
))
(declare-datatypes ((Regex!3191 0))(
  ( (ElementMatch!3191 (c!193928 C!6700)) (Concat!5179 (regOne!6894 Regex!3191) (regTwo!6894 Regex!3191)) (EmptyExpr!3191) (Star!3191 (reg!3520 Regex!3191)) (EmptyLang!3191) (Union!3191 (regOne!6895 Regex!3191) (regTwo!6895 Regex!3191)) )
))
(declare-datatypes ((String!13523 0))(
  ( (String!13524 (value!62744 String)) )
))
(declare-datatypes ((List!11159 0))(
  ( (Nil!11135) (Cons!11135 (h!16536 C!6700) (t!108697 List!11159)) )
))
(declare-datatypes ((IArray!7213 0))(
  ( (IArray!7214 (innerList!3664 List!11159)) )
))
(declare-datatypes ((Conc!3604 0))(
  ( (Node!3604 (left!9690 Conc!3604) (right!10020 Conc!3604) (csize!7438 Int) (cheight!3815 Int)) (Leaf!5575 (xs!6309 IArray!7213) (csize!7439 Int)) (Empty!3604) )
))
(declare-datatypes ((BalanceConc!7230 0))(
  ( (BalanceConc!7231 (c!193929 Conc!3604)) )
))
(declare-datatypes ((TokenValueInjection!3674 0))(
  ( (TokenValueInjection!3675 (toValue!3022 Int) (toChars!2881 Int)) )
))
(declare-datatypes ((Rule!3642 0))(
  ( (Rule!3643 (regex!1921 Regex!3191) (tag!2183 String!13523) (isSeparator!1921 Bool) (transformation!1921 TokenValueInjection!3674)) )
))
(declare-datatypes ((Token!3504 0))(
  ( (Token!3505 (value!62745 TokenValue!1987) (rule!3342 Rule!3642) (size!8776 Int) (originalCharacters!2475 List!11159)) )
))
(declare-datatypes ((List!11160 0))(
  ( (Nil!11136) (Cons!11136 (h!16537 Token!3504) (t!108698 List!11160)) )
))
(declare-datatypes ((IArray!7215 0))(
  ( (IArray!7216 (innerList!3665 List!11160)) )
))
(declare-datatypes ((Conc!3605 0))(
  ( (Node!3605 (left!9691 Conc!3605) (right!10021 Conc!3605) (csize!7440 Int) (cheight!3816 Int)) (Leaf!5576 (xs!6310 IArray!7215) (csize!7441 Int)) (Empty!3605) )
))
(declare-datatypes ((BalanceConc!7232 0))(
  ( (BalanceConc!7233 (c!193930 Conc!3605)) )
))
(declare-datatypes ((List!11161 0))(
  ( (Nil!11137) (Cons!11137 (h!16538 Rule!3642) (t!108699 List!11161)) )
))
(declare-datatypes ((PrintableTokens!528 0))(
  ( (PrintableTokens!529 (rules!9384 List!11161) (tokens!1520 BalanceConc!7232)) )
))
(declare-fun thiss!10527 () PrintableTokens!528)

(declare-fun tp!332760 () Bool)

(declare-fun inv!14624 (Conc!3605) Bool)

(assert (=> b!1153806 (= e!737697 (and (inv!14624 (c!193930 (tokens!1520 thiss!10527))) tp!332760))))

(declare-fun b!1153807 () Bool)

(declare-fun res!519037 () Bool)

(declare-fun e!737695 () Bool)

(assert (=> b!1153807 (=> (not res!519037) (not e!737695))))

(declare-fun to!267 () Int)

(declare-fun size!8777 (BalanceConc!7232) Int)

(assert (=> b!1153807 (= res!519037 (<= to!267 (size!8777 (tokens!1520 thiss!10527))))))

(declare-fun b!1153808 () Bool)

(declare-fun e!737696 () Bool)

(assert (=> b!1153808 (= e!737695 e!737696)))

(declare-fun res!519035 () Bool)

(assert (=> b!1153808 (=> (not res!519035) (not e!737696))))

(declare-datatypes ((LexerInterface!1616 0))(
  ( (LexerInterfaceExt!1613 (__x!7686 Int)) (Lexer!1614) )
))
(declare-fun rulesInvariant!1490 (LexerInterface!1616 List!11161) Bool)

(assert (=> b!1153808 (= res!519035 (rulesInvariant!1490 Lexer!1614 (rules!9384 thiss!10527)))))

(declare-datatypes ((Unit!17188 0))(
  ( (Unit!17189) )
))
(declare-fun lt!392486 () Unit!17188)

(declare-fun lemmaInvariant!108 (PrintableTokens!528) Unit!17188)

(assert (=> b!1153808 (= lt!392486 (lemmaInvariant!108 thiss!10527))))

(declare-fun tp!332759 () Bool)

(declare-fun b!1153809 () Bool)

(declare-fun e!737694 () Bool)

(declare-fun inv!14625 (BalanceConc!7232) Bool)

(assert (=> b!1153809 (= e!737694 (and tp!332759 (inv!14625 (tokens!1520 thiss!10527)) e!737697))))

(assert (=> b!1153810 (= e!737696 (not true))))

(declare-fun lt!392485 () List!11160)

(declare-fun list!4111 (BalanceConc!7232) List!11160)

(assert (=> b!1153810 (= lt!392485 (list!4111 (tokens!1520 thiss!10527)))))

(declare-fun lambda!46419 () Int)

(declare-fun rulesProduceEachTokenIndividually!655 (LexerInterface!1616 List!11161 BalanceConc!7232) Bool)

(declare-fun forall!2833 (BalanceConc!7232 Int) Bool)

(assert (=> b!1153810 (= (rulesProduceEachTokenIndividually!655 Lexer!1614 (rules!9384 thiss!10527) (tokens!1520 thiss!10527)) (forall!2833 (tokens!1520 thiss!10527) lambda!46419))))

(declare-fun res!519036 () Bool)

(assert (=> start!100466 (=> (not res!519036) (not e!737695))))

(declare-fun from!787 () Int)

(assert (=> start!100466 (= res!519036 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!100466 e!737695))

(assert (=> start!100466 true))

(declare-fun inv!14626 (PrintableTokens!528) Bool)

(assert (=> start!100466 (and (inv!14626 thiss!10527) e!737694)))

(assert (= (and start!100466 res!519036) b!1153807))

(assert (= (and b!1153807 res!519037) b!1153808))

(assert (= (and b!1153808 res!519035) b!1153810))

(assert (= b!1153809 b!1153806))

(assert (= start!100466 b!1153809))

(declare-fun m!1321137 () Bool)

(assert (=> start!100466 m!1321137))

(declare-fun m!1321139 () Bool)

(assert (=> b!1153809 m!1321139))

(declare-fun m!1321141 () Bool)

(assert (=> b!1153806 m!1321141))

(declare-fun m!1321143 () Bool)

(assert (=> b!1153810 m!1321143))

(declare-fun m!1321145 () Bool)

(assert (=> b!1153810 m!1321145))

(declare-fun m!1321147 () Bool)

(assert (=> b!1153810 m!1321147))

(declare-fun m!1321149 () Bool)

(assert (=> b!1153807 m!1321149))

(declare-fun m!1321151 () Bool)

(assert (=> b!1153808 m!1321151))

(declare-fun m!1321153 () Bool)

(assert (=> b!1153808 m!1321153))

(check-sat (not start!100466) (not b!1153818) (not b!1153817) (not b!1153806) (not b!1153809) (not b!1153808) (not b!1153810) (not b!1153807))
(check-sat)
