; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101414 () Bool)

(assert start!101414)

(declare-fun b!1159068 () Bool)

(declare-fun e!741737 () Bool)

(assert (=> b!1159068 (= e!741737 true)))

(declare-fun b!1159067 () Bool)

(declare-fun e!741736 () Bool)

(assert (=> b!1159067 (= e!741736 e!741737)))

(declare-fun b!1159055 () Bool)

(assert (=> b!1159055 e!741736))

(assert (= b!1159067 b!1159068))

(assert (= b!1159055 b!1159067))

(declare-fun b!1159048 () Bool)

(declare-fun res!522010 () Bool)

(declare-fun e!741724 () Bool)

(assert (=> b!1159048 (=> (not res!522010) (not e!741724))))

(declare-datatypes ((List!11357 0))(
  ( (Nil!11333) (Cons!11333 (h!16734 (_ BitVec 16)) (t!109393 List!11357)) )
))
(declare-datatypes ((TokenValue!2031 0))(
  ( (FloatLiteralValue!4062 (text!14662 List!11357)) (TokenValueExt!2030 (__x!7773 Int)) (Broken!10155 (value!63973 List!11357)) (Object!2054) (End!2031) (Def!2031) (Underscore!2031) (Match!2031) (Else!2031) (Error!2031) (Case!2031) (If!2031) (Extends!2031) (Abstract!2031) (Class!2031) (Val!2031) (DelimiterValue!4062 (del!2091 List!11357)) (KeywordValue!2037 (value!63974 List!11357)) (CommentValue!4062 (value!63975 List!11357)) (WhitespaceValue!4062 (value!63976 List!11357)) (IndentationValue!2031 (value!63977 List!11357)) (String!13742) (Int32!2031) (Broken!10156 (value!63978 List!11357)) (Boolean!2032) (Unit!17342) (OperatorValue!2034 (op!2091 List!11357)) (IdentifierValue!4062 (value!63979 List!11357)) (IdentifierValue!4063 (value!63980 List!11357)) (WhitespaceValue!4063 (value!63981 List!11357)) (True!4062) (False!4062) (Broken!10157 (value!63982 List!11357)) (Broken!10158 (value!63983 List!11357)) (True!4063) (RightBrace!2031) (RightBracket!2031) (Colon!2031) (Null!2031) (Comma!2031) (LeftBracket!2031) (False!4063) (LeftBrace!2031) (ImaginaryLiteralValue!2031 (text!14663 List!11357)) (StringLiteralValue!6093 (value!63984 List!11357)) (EOFValue!2031 (value!63985 List!11357)) (IdentValue!2031 (value!63986 List!11357)) (DelimiterValue!4063 (value!63987 List!11357)) (DedentValue!2031 (value!63988 List!11357)) (NewLineValue!2031 (value!63989 List!11357)) (IntegerValue!6093 (value!63990 (_ BitVec 32)) (text!14664 List!11357)) (IntegerValue!6094 (value!63991 Int) (text!14665 List!11357)) (Times!2031) (Or!2031) (Equal!2031) (Minus!2031) (Broken!10159 (value!63992 List!11357)) (And!2031) (Div!2031) (LessEqual!2031) (Mod!2031) (Concat!5266) (Not!2031) (Plus!2031) (SpaceValue!2031 (value!63993 List!11357)) (IntegerValue!6095 (value!63994 Int) (text!14666 List!11357)) (StringLiteralValue!6094 (text!14667 List!11357)) (FloatLiteralValue!4063 (text!14668 List!11357)) (BytesLiteralValue!2031 (value!63995 List!11357)) (CommentValue!4063 (value!63996 List!11357)) (StringLiteralValue!6095 (value!63997 List!11357)) (ErrorTokenValue!2031 (msg!2092 List!11357)) )
))
(declare-datatypes ((C!6788 0))(
  ( (C!6789 (val!3650 Int)) )
))
(declare-datatypes ((Regex!3235 0))(
  ( (ElementMatch!3235 (c!194158 C!6788)) (Concat!5267 (regOne!6982 Regex!3235) (regTwo!6982 Regex!3235)) (EmptyExpr!3235) (Star!3235 (reg!3564 Regex!3235)) (EmptyLang!3235) (Union!3235 (regOne!6983 Regex!3235) (regTwo!6983 Regex!3235)) )
))
(declare-datatypes ((String!13743 0))(
  ( (String!13744 (value!63998 String)) )
))
(declare-datatypes ((List!11358 0))(
  ( (Nil!11334) (Cons!11334 (h!16735 C!6788) (t!109394 List!11358)) )
))
(declare-datatypes ((IArray!7389 0))(
  ( (IArray!7390 (innerList!3752 List!11358)) )
))
(declare-datatypes ((Conc!3692 0))(
  ( (Node!3692 (left!9888 Conc!3692) (right!10218 Conc!3692) (csize!7614 Int) (cheight!3903 Int)) (Leaf!5685 (xs!6397 IArray!7389) (csize!7615 Int)) (Empty!3692) )
))
(declare-datatypes ((BalanceConc!7406 0))(
  ( (BalanceConc!7407 (c!194159 Conc!3692)) )
))
(declare-datatypes ((TokenValueInjection!3762 0))(
  ( (TokenValueInjection!3763 (toValue!3066 Int) (toChars!2925 Int)) )
))
(declare-datatypes ((Rule!3730 0))(
  ( (Rule!3731 (regex!1965 Regex!3235) (tag!2227 String!13743) (isSeparator!1965 Bool) (transformation!1965 TokenValueInjection!3762)) )
))
(declare-datatypes ((Token!3592 0))(
  ( (Token!3593 (value!63999 TokenValue!2031) (rule!3386 Rule!3730) (size!8912 Int) (originalCharacters!2519 List!11358)) )
))
(declare-datatypes ((List!11359 0))(
  ( (Nil!11335) (Cons!11335 (h!16736 Token!3592) (t!109395 List!11359)) )
))
(declare-datatypes ((List!11360 0))(
  ( (Nil!11336) (Cons!11336 (h!16737 Rule!3730) (t!109396 List!11360)) )
))
(declare-datatypes ((IArray!7391 0))(
  ( (IArray!7392 (innerList!3753 List!11359)) )
))
(declare-datatypes ((Conc!3693 0))(
  ( (Node!3693 (left!9889 Conc!3693) (right!10219 Conc!3693) (csize!7616 Int) (cheight!3904 Int)) (Leaf!5686 (xs!6398 IArray!7391) (csize!7617 Int)) (Empty!3693) )
))
(declare-datatypes ((BalanceConc!7408 0))(
  ( (BalanceConc!7409 (c!194160 Conc!3693)) )
))
(declare-datatypes ((PrintableTokens!616 0))(
  ( (PrintableTokens!617 (rules!9454 List!11360) (tokens!1564 BalanceConc!7408)) )
))
(declare-fun thiss!10527 () PrintableTokens!616)

(declare-fun lambda!47011 () Int)

(declare-fun lt!393841 () BalanceConc!7408)

(declare-datatypes ((LexerInterface!1660 0))(
  ( (LexerInterfaceExt!1657 (__x!7774 Int)) (Lexer!1658) )
))
(declare-fun rulesProduceEachTokenIndividually!699 (LexerInterface!1660 List!11360 BalanceConc!7408) Bool)

(declare-fun forall!2930 (BalanceConc!7408 Int) Bool)

(assert (=> b!1159048 (= res!522010 (= (rulesProduceEachTokenIndividually!699 Lexer!1658 (rules!9454 thiss!10527) lt!393841) (forall!2930 lt!393841 lambda!47011)))))

(declare-fun b!1159049 () Bool)

(declare-fun e!741730 () Bool)

(declare-fun e!741725 () Bool)

(assert (=> b!1159049 (= e!741730 e!741725)))

(declare-fun res!522005 () Bool)

(assert (=> b!1159049 (=> (not res!522005) (not e!741725))))

(declare-fun rulesInvariant!1534 (LexerInterface!1660 List!11360) Bool)

(assert (=> b!1159049 (= res!522005 (rulesInvariant!1534 Lexer!1658 (rules!9454 thiss!10527)))))

(declare-datatypes ((Unit!17343 0))(
  ( (Unit!17344) )
))
(declare-fun lt!393838 () Unit!17343)

(declare-fun lemmaInvariant!152 (PrintableTokens!616) Unit!17343)

(assert (=> b!1159049 (= lt!393838 (lemmaInvariant!152 thiss!10527))))

(declare-fun b!1159050 () Bool)

(declare-fun e!741721 () Bool)

(declare-fun e!741726 () Bool)

(assert (=> b!1159050 (= e!741721 e!741726)))

(declare-fun res!522007 () Bool)

(assert (=> b!1159050 (=> res!522007 e!741726)))

(declare-fun lt!393843 () List!11359)

(declare-fun forall!2931 (List!11359 Int) Bool)

(assert (=> b!1159050 (= res!522007 (not (forall!2931 lt!393843 lambda!47011)))))

(assert (=> b!1159050 e!741724))

(declare-fun res!522014 () Bool)

(assert (=> b!1159050 (=> (not res!522014) (not e!741724))))

(assert (=> b!1159050 (= res!522014 (forall!2931 lt!393843 lambda!47011))))

(declare-fun lt!393842 () List!11359)

(declare-fun lt!393844 () Unit!17343)

(declare-fun lemmaForallSubseq!113 (List!11359 List!11359 Int) Unit!17343)

(assert (=> b!1159050 (= lt!393844 (lemmaForallSubseq!113 lt!393843 lt!393842 lambda!47011))))

(declare-fun list!4176 (BalanceConc!7408) List!11359)

(assert (=> b!1159050 (= lt!393843 (list!4176 lt!393841))))

(declare-fun from!787 () Int)

(declare-fun to!267 () Int)

(declare-fun slice!223 (BalanceConc!7408 Int Int) BalanceConc!7408)

(assert (=> b!1159050 (= lt!393841 (slice!223 (tokens!1564 thiss!10527) from!787 to!267))))

(declare-fun subseq!221 (List!11359 List!11359) Bool)

(declare-fun slice!224 (List!11359 Int Int) List!11359)

(assert (=> b!1159050 (subseq!221 (slice!224 lt!393842 from!787 to!267) lt!393842)))

(declare-fun lt!393839 () Unit!17343)

(declare-fun lemmaSliceSubseq!62 (List!11359 Int Int) Unit!17343)

(assert (=> b!1159050 (= lt!393839 (lemmaSliceSubseq!62 lt!393842 from!787 to!267))))

(declare-fun b!1159051 () Bool)

(declare-fun e!741722 () Bool)

(declare-fun tp!333570 () Bool)

(declare-fun inv!14898 (Conc!3693) Bool)

(assert (=> b!1159051 (= e!741722 (and (inv!14898 (c!194160 (tokens!1564 thiss!10527))) tp!333570))))

(declare-fun b!1159052 () Bool)

(declare-fun e!741723 () Bool)

(declare-fun tp!333569 () Bool)

(declare-fun inv!14899 (BalanceConc!7408) Bool)

(assert (=> b!1159052 (= e!741723 (and tp!333569 (inv!14899 (tokens!1564 thiss!10527)) e!741722))))

(declare-fun e!741728 () Bool)

(declare-fun b!1159053 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!528 (LexerInterface!1660 List!11360 List!11359) Bool)

(assert (=> b!1159053 (= e!741724 (= (rulesProduceEachTokenIndividuallyList!528 Lexer!1658 (rules!9454 thiss!10527) lt!393843) e!741728))))

(declare-fun res!522008 () Bool)

(assert (=> b!1159053 (=> res!522008 e!741728)))

(get-info :version)

(assert (=> b!1159053 (= res!522008 (not ((_ is Cons!11335) lt!393843)))))

(declare-fun b!1159054 () Bool)

(declare-fun e!741729 () Bool)

(assert (=> b!1159054 (= e!741728 e!741729)))

(declare-fun res!522012 () Bool)

(assert (=> b!1159054 (=> (not res!522012) (not e!741729))))

(declare-fun rulesProduceIndividualToken!697 (LexerInterface!1660 List!11360 Token!3592) Bool)

(assert (=> b!1159054 (= res!522012 (rulesProduceIndividualToken!697 Lexer!1658 (rules!9454 thiss!10527) (h!16736 lt!393843)))))

(assert (=> b!1159055 (= e!741725 (not e!741721))))

(declare-fun res!522011 () Bool)

(assert (=> b!1159055 (=> res!522011 e!741721)))

(assert (=> b!1159055 (= res!522011 (not (forall!2930 (tokens!1564 thiss!10527) lambda!47011)))))

(declare-fun e!741727 () Bool)

(assert (=> b!1159055 (= (rulesProduceEachTokenIndividuallyList!528 Lexer!1658 (rules!9454 thiss!10527) lt!393842) e!741727)))

(declare-fun res!522009 () Bool)

(assert (=> b!1159055 (=> res!522009 e!741727)))

(assert (=> b!1159055 (= res!522009 (not ((_ is Cons!11335) lt!393842)))))

(assert (=> b!1159055 (= lt!393842 (list!4176 (tokens!1564 thiss!10527)))))

(assert (=> b!1159055 (= (rulesProduceEachTokenIndividually!699 Lexer!1658 (rules!9454 thiss!10527) (tokens!1564 thiss!10527)) (forall!2930 (tokens!1564 thiss!10527) lambda!47011))))

(declare-fun b!1159056 () Bool)

(declare-fun e!741731 () Bool)

(assert (=> b!1159056 (= e!741727 e!741731)))

(declare-fun res!522013 () Bool)

(assert (=> b!1159056 (=> (not res!522013) (not e!741731))))

(assert (=> b!1159056 (= res!522013 (rulesProduceIndividualToken!697 Lexer!1658 (rules!9454 thiss!10527) (h!16736 lt!393842)))))

(declare-fun b!1159057 () Bool)

(assert (=> b!1159057 (= e!741731 (rulesProduceEachTokenIndividuallyList!528 Lexer!1658 (rules!9454 thiss!10527) (t!109395 lt!393842)))))

(declare-fun b!1159059 () Bool)

(assert (=> b!1159059 (= e!741729 (rulesProduceEachTokenIndividuallyList!528 Lexer!1658 (rules!9454 thiss!10527) (t!109395 lt!393843)))))

(declare-fun b!1159060 () Bool)

(declare-fun res!522006 () Bool)

(assert (=> b!1159060 (=> (not res!522006) (not e!741730))))

(declare-fun size!8913 (BalanceConc!7408) Int)

(assert (=> b!1159060 (= res!522006 (<= to!267 (size!8913 (tokens!1564 thiss!10527))))))

(declare-fun res!522015 () Bool)

(assert (=> start!101414 (=> (not res!522015) (not e!741730))))

(assert (=> start!101414 (= res!522015 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!101414 e!741730))

(assert (=> start!101414 true))

(declare-fun inv!14900 (PrintableTokens!616) Bool)

(assert (=> start!101414 (and (inv!14900 thiss!10527) e!741723)))

(declare-fun b!1159058 () Bool)

(assert (=> b!1159058 (= e!741726 true)))

(declare-fun lt!393840 () Bool)

(assert (=> b!1159058 (= lt!393840 (forall!2930 lt!393841 lambda!47011))))

(assert (= (and start!101414 res!522015) b!1159060))

(assert (= (and b!1159060 res!522006) b!1159049))

(assert (= (and b!1159049 res!522005) b!1159055))

(assert (= (and b!1159055 (not res!522009)) b!1159056))

(assert (= (and b!1159056 res!522013) b!1159057))

(assert (= (and b!1159055 (not res!522011)) b!1159050))

(assert (= (and b!1159050 res!522014) b!1159048))

(assert (= (and b!1159048 res!522010) b!1159053))

(assert (= (and b!1159053 (not res!522008)) b!1159054))

(assert (= (and b!1159054 res!522012) b!1159059))

(assert (= (and b!1159050 (not res!522007)) b!1159058))

(assert (= b!1159052 b!1159051))

(assert (= start!101414 b!1159052))

(declare-fun m!1325631 () Bool)

(assert (=> b!1159055 m!1325631))

(assert (=> b!1159055 m!1325631))

(declare-fun m!1325633 () Bool)

(assert (=> b!1159055 m!1325633))

(declare-fun m!1325635 () Bool)

(assert (=> b!1159055 m!1325635))

(declare-fun m!1325637 () Bool)

(assert (=> b!1159055 m!1325637))

(declare-fun m!1325639 () Bool)

(assert (=> start!101414 m!1325639))

(declare-fun m!1325641 () Bool)

(assert (=> b!1159049 m!1325641))

(declare-fun m!1325643 () Bool)

(assert (=> b!1159049 m!1325643))

(declare-fun m!1325645 () Bool)

(assert (=> b!1159048 m!1325645))

(declare-fun m!1325647 () Bool)

(assert (=> b!1159048 m!1325647))

(declare-fun m!1325649 () Bool)

(assert (=> b!1159060 m!1325649))

(declare-fun m!1325651 () Bool)

(assert (=> b!1159056 m!1325651))

(declare-fun m!1325653 () Bool)

(assert (=> b!1159050 m!1325653))

(declare-fun m!1325655 () Bool)

(assert (=> b!1159050 m!1325655))

(declare-fun m!1325657 () Bool)

(assert (=> b!1159050 m!1325657))

(assert (=> b!1159050 m!1325655))

(declare-fun m!1325659 () Bool)

(assert (=> b!1159050 m!1325659))

(declare-fun m!1325661 () Bool)

(assert (=> b!1159050 m!1325661))

(assert (=> b!1159050 m!1325661))

(declare-fun m!1325663 () Bool)

(assert (=> b!1159050 m!1325663))

(declare-fun m!1325665 () Bool)

(assert (=> b!1159050 m!1325665))

(declare-fun m!1325667 () Bool)

(assert (=> b!1159059 m!1325667))

(assert (=> b!1159058 m!1325647))

(declare-fun m!1325669 () Bool)

(assert (=> b!1159054 m!1325669))

(declare-fun m!1325671 () Bool)

(assert (=> b!1159053 m!1325671))

(declare-fun m!1325673 () Bool)

(assert (=> b!1159051 m!1325673))

(declare-fun m!1325675 () Bool)

(assert (=> b!1159057 m!1325675))

(declare-fun m!1325677 () Bool)

(assert (=> b!1159052 m!1325677))

(check-sat (not b!1159067) (not b!1159056) (not b!1159055) (not b!1159060) (not b!1159059) (not start!101414) (not b!1159049) (not b!1159051) (not b!1159058) (not b!1159048) (not b!1159068) (not b!1159052) (not b!1159054) (not b!1159057) (not b!1159050) (not b!1159053))
(check-sat)
