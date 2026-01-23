; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!745312 () Bool)

(assert start!745312)

(declare-fun b!7900913 () Bool)

(declare-fun b_free!134687 () Bool)

(declare-fun b_next!135477 () Bool)

(assert (=> b!7900913 (= b_free!134687 (not b_next!135477))))

(declare-fun tp!2353878 () Bool)

(declare-fun b_and!352651 () Bool)

(assert (=> b!7900913 (= tp!2353878 b_and!352651)))

(declare-fun b_free!134689 () Bool)

(declare-fun b_next!135479 () Bool)

(assert (=> b!7900913 (= b_free!134689 (not b_next!135479))))

(declare-fun tp!2353876 () Bool)

(declare-fun b_and!352653 () Bool)

(assert (=> b!7900913 (= tp!2353876 b_and!352653)))

(declare-fun b!7900912 () Bool)

(declare-fun e!4663632 () Bool)

(assert (=> b!7900912 (= e!4663632 true)))

(declare-datatypes ((C!42892 0))(
  ( (C!42893 (val!31910 Int)) )
))
(declare-datatypes ((List!74254 0))(
  ( (Nil!74130) (Cons!74130 (h!80578 C!42892) (t!389161 List!74254)) )
))
(declare-fun lt!2683204 () List!74254)

(declare-datatypes ((List!74255 0))(
  ( (Nil!74131) (Cons!74131 (h!80579 (_ BitVec 16)) (t!389162 List!74255)) )
))
(declare-datatypes ((TokenValue!8894 0))(
  ( (FloatLiteralValue!17788 (text!62703 List!74255)) (TokenValueExt!8893 (__x!35075 Int)) (Broken!44470 (value!286428 List!74255)) (Object!9017) (End!8894) (Def!8894) (Underscore!8894) (Match!8894) (Else!8894) (Error!8894) (Case!8894) (If!8894) (Extends!8894) (Abstract!8894) (Class!8894) (Val!8894) (DelimiterValue!17788 (del!8954 List!74255)) (KeywordValue!8900 (value!286429 List!74255)) (CommentValue!17788 (value!286430 List!74255)) (WhitespaceValue!17788 (value!286431 List!74255)) (IndentationValue!8894 (value!286432 List!74255)) (String!82891) (Int32!8894) (Broken!44471 (value!286433 List!74255)) (Boolean!8895) (Unit!169154) (OperatorValue!8897 (op!8954 List!74255)) (IdentifierValue!17788 (value!286434 List!74255)) (IdentifierValue!17789 (value!286435 List!74255)) (WhitespaceValue!17789 (value!286436 List!74255)) (True!17788) (False!17788) (Broken!44472 (value!286437 List!74255)) (Broken!44473 (value!286438 List!74255)) (True!17789) (RightBrace!8894) (RightBracket!8894) (Colon!8894) (Null!8894) (Comma!8894) (LeftBracket!8894) (False!17789) (LeftBrace!8894) (ImaginaryLiteralValue!8894 (text!62704 List!74255)) (StringLiteralValue!26682 (value!286439 List!74255)) (EOFValue!8894 (value!286440 List!74255)) (IdentValue!8894 (value!286441 List!74255)) (DelimiterValue!17789 (value!286442 List!74255)) (DedentValue!8894 (value!286443 List!74255)) (NewLineValue!8894 (value!286444 List!74255)) (IntegerValue!26682 (value!286445 (_ BitVec 32)) (text!62705 List!74255)) (IntegerValue!26683 (value!286446 Int) (text!62706 List!74255)) (Times!8894) (Or!8894) (Equal!8894) (Minus!8894) (Broken!44474 (value!286447 List!74255)) (And!8894) (Div!8894) (LessEqual!8894) (Mod!8894) (Concat!30175) (Not!8894) (Plus!8894) (SpaceValue!8894 (value!286448 List!74255)) (IntegerValue!26684 (value!286449 Int) (text!62707 List!74255)) (StringLiteralValue!26683 (text!62708 List!74255)) (FloatLiteralValue!17789 (text!62709 List!74255)) (BytesLiteralValue!8894 (value!286450 List!74255)) (CommentValue!17789 (value!286451 List!74255)) (StringLiteralValue!26684 (value!286452 List!74255)) (ErrorTokenValue!8894 (msg!8955 List!74255)) )
))
(declare-datatypes ((IArray!31565 0))(
  ( (IArray!31566 (innerList!15840 List!74254)) )
))
(declare-datatypes ((Conc!15752 0))(
  ( (Node!15752 (left!56560 Conc!15752) (right!56890 Conc!15752) (csize!31734 Int) (cheight!15963 Int)) (Leaf!30009 (xs!19134 IArray!31565) (csize!31735 Int)) (Empty!15752) )
))
(declare-datatypes ((BalanceConc!30622 0))(
  ( (BalanceConc!30623 (c!1449993 Conc!15752)) )
))
(declare-datatypes ((Regex!21281 0))(
  ( (ElementMatch!21281 (c!1449994 C!42892)) (Concat!30176 (regOne!43074 Regex!21281) (regTwo!43074 Regex!21281)) (EmptyExpr!21281) (Star!21281 (reg!21610 Regex!21281)) (EmptyLang!21281) (Union!21281 (regOne!43075 Regex!21281) (regTwo!43075 Regex!21281)) )
))
(declare-datatypes ((String!82892 0))(
  ( (String!82893 (value!286453 String)) )
))
(declare-datatypes ((TokenValueInjection!17096 0))(
  ( (TokenValueInjection!17097 (toValue!11623 Int) (toChars!11482 Int)) )
))
(declare-datatypes ((Rule!16956 0))(
  ( (Rule!16957 (regex!8578 Regex!21281) (tag!9442 String!82892) (isSeparator!8578 Bool) (transformation!8578 TokenValueInjection!17096)) )
))
(declare-datatypes ((Token!15576 0))(
  ( (Token!15577 (value!286454 TokenValue!8894) (rule!11864 Rule!16956) (size!42949 Int) (originalCharacters!8819 List!74254)) )
))
(declare-datatypes ((tuple2!70178 0))(
  ( (tuple2!70179 (_1!38392 Token!15576) (_2!38392 List!74254)) )
))
(declare-datatypes ((Option!17860 0))(
  ( (None!17859) (Some!17859 (v!54998 tuple2!70178)) )
))
(declare-fun lt!2683203 () Option!17860)

(declare-fun list!19201 (BalanceConc!30622) List!74254)

(declare-fun charsOf!5522 (Token!15576) BalanceConc!30622)

(declare-fun get!26621 (Option!17860) tuple2!70178)

(assert (=> b!7900912 (= lt!2683204 (list!19201 (charsOf!5522 (_1!38392 (get!26621 lt!2683203)))))))

(declare-fun e!4663638 () Bool)

(assert (=> b!7900913 (= e!4663638 (and tp!2353878 tp!2353876))))

(declare-fun b!7900914 () Bool)

(declare-fun e!4663634 () Bool)

(declare-fun e!4663633 () Bool)

(assert (=> b!7900914 (= e!4663634 (not e!4663633))))

(declare-fun res!3134597 () Bool)

(assert (=> b!7900914 (=> res!3134597 e!4663633)))

(declare-datatypes ((List!74256 0))(
  ( (Nil!74132) (Cons!74132 (h!80580 Rule!16956) (t!389163 List!74256)) )
))
(declare-fun rulesArg!141 () List!74256)

(get-info :version)

(assert (=> b!7900914 (= res!3134597 (or (and ((_ is Cons!74132) rulesArg!141) ((_ is Nil!74132) (t!389163 rulesArg!141))) (not ((_ is Cons!74132) rulesArg!141))))))

(declare-fun input!1184 () List!74254)

(declare-fun isPrefix!6411 (List!74254 List!74254) Bool)

(assert (=> b!7900914 (isPrefix!6411 input!1184 input!1184)))

(declare-datatypes ((Unit!169155 0))(
  ( (Unit!169156) )
))
(declare-fun lt!2683202 () Unit!169155)

(declare-fun lemmaIsPrefixRefl!3922 (List!74254 List!74254) Unit!169155)

(assert (=> b!7900914 (= lt!2683202 (lemmaIsPrefixRefl!3922 input!1184 input!1184))))

(declare-fun b!7900915 () Bool)

(declare-fun res!3134602 () Bool)

(assert (=> b!7900915 (=> res!3134602 e!4663632)))

(declare-fun isEmpty!42522 (Option!17860) Bool)

(assert (=> b!7900915 (= res!3134602 (isEmpty!42522 lt!2683203))))

(declare-fun b!7900916 () Bool)

(declare-fun e!4663637 () Bool)

(declare-fun e!4663631 () Bool)

(declare-fun tp!2353877 () Bool)

(assert (=> b!7900916 (= e!4663637 (and e!4663631 tp!2353877))))

(declare-fun b!7900917 () Bool)

(declare-fun e!4663635 () Bool)

(declare-fun tp_is_empty!52937 () Bool)

(declare-fun tp!2353880 () Bool)

(assert (=> b!7900917 (= e!4663635 (and tp_is_empty!52937 tp!2353880))))

(declare-fun b!7900918 () Bool)

(declare-fun tp!2353879 () Bool)

(declare-fun inv!95117 (String!82892) Bool)

(declare-fun inv!95119 (TokenValueInjection!17096) Bool)

(assert (=> b!7900918 (= e!4663631 (and tp!2353879 (inv!95117 (tag!9442 (h!80580 rulesArg!141))) (inv!95119 (transformation!8578 (h!80580 rulesArg!141))) e!4663638))))

(declare-fun b!7900919 () Bool)

(declare-fun res!3134601 () Bool)

(assert (=> b!7900919 (=> res!3134601 e!4663632)))

(declare-fun isDefined!14436 (Option!17860) Bool)

(assert (=> b!7900919 (= res!3134601 (not (isDefined!14436 lt!2683203)))))

(declare-fun b!7900920 () Bool)

(declare-fun res!3134598 () Bool)

(assert (=> b!7900920 (=> (not res!3134598) (not e!4663634))))

(declare-fun isEmpty!42523 (List!74256) Bool)

(assert (=> b!7900920 (= res!3134598 (not (isEmpty!42523 rulesArg!141)))))

(declare-fun b!7900921 () Bool)

(declare-fun res!3134596 () Bool)

(assert (=> b!7900921 (=> (not res!3134596) (not e!4663634))))

(declare-datatypes ((LexerInterface!8170 0))(
  ( (LexerInterfaceExt!8167 (__x!35076 Int)) (Lexer!8168) )
))
(declare-fun thiss!14377 () LexerInterface!8170)

(declare-fun rulesValidInductive!3389 (LexerInterface!8170 List!74256) Bool)

(assert (=> b!7900921 (= res!3134596 (rulesValidInductive!3389 thiss!14377 rulesArg!141))))

(declare-fun b!7900922 () Bool)

(assert (=> b!7900922 (= e!4663633 e!4663632)))

(declare-fun res!3134599 () Bool)

(assert (=> b!7900922 (=> res!3134599 e!4663632)))

(declare-fun lt!2683201 () Option!17860)

(assert (=> b!7900922 (= res!3134599 (or (and ((_ is None!17859) lt!2683201) ((_ is None!17859) lt!2683203)) ((_ is None!17859) lt!2683203) (not ((_ is None!17859) lt!2683201))))))

(declare-fun maxPrefix!4711 (LexerInterface!8170 List!74256 List!74254) Option!17860)

(assert (=> b!7900922 (= lt!2683203 (maxPrefix!4711 thiss!14377 (t!389163 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3758 (LexerInterface!8170 Rule!16956 List!74254) Option!17860)

(assert (=> b!7900922 (= lt!2683201 (maxPrefixOneRule!3758 thiss!14377 (h!80580 rulesArg!141) input!1184))))

(declare-fun res!3134600 () Bool)

(assert (=> start!745312 (=> (not res!3134600) (not e!4663634))))

(assert (=> start!745312 (= res!3134600 ((_ is Lexer!8168) thiss!14377))))

(assert (=> start!745312 e!4663634))

(assert (=> start!745312 true))

(assert (=> start!745312 e!4663637))

(assert (=> start!745312 e!4663635))

(assert (= (and start!745312 res!3134600) b!7900921))

(assert (= (and b!7900921 res!3134596) b!7900920))

(assert (= (and b!7900920 res!3134598) b!7900914))

(assert (= (and b!7900914 (not res!3134597)) b!7900922))

(assert (= (and b!7900922 (not res!3134599)) b!7900915))

(assert (= (and b!7900915 (not res!3134602)) b!7900919))

(assert (= (and b!7900919 (not res!3134601)) b!7900912))

(assert (= b!7900918 b!7900913))

(assert (= b!7900916 b!7900918))

(assert (= (and start!745312 ((_ is Cons!74132) rulesArg!141)) b!7900916))

(assert (= (and start!745312 ((_ is Cons!74130) input!1184)) b!7900917))

(declare-fun m!8275674 () Bool)

(assert (=> b!7900919 m!8275674))

(declare-fun m!8275676 () Bool)

(assert (=> b!7900918 m!8275676))

(declare-fun m!8275678 () Bool)

(assert (=> b!7900918 m!8275678))

(declare-fun m!8275680 () Bool)

(assert (=> b!7900922 m!8275680))

(declare-fun m!8275682 () Bool)

(assert (=> b!7900922 m!8275682))

(declare-fun m!8275684 () Bool)

(assert (=> b!7900920 m!8275684))

(declare-fun m!8275686 () Bool)

(assert (=> b!7900915 m!8275686))

(declare-fun m!8275688 () Bool)

(assert (=> b!7900912 m!8275688))

(declare-fun m!8275690 () Bool)

(assert (=> b!7900912 m!8275690))

(assert (=> b!7900912 m!8275690))

(declare-fun m!8275692 () Bool)

(assert (=> b!7900912 m!8275692))

(declare-fun m!8275694 () Bool)

(assert (=> b!7900921 m!8275694))

(declare-fun m!8275696 () Bool)

(assert (=> b!7900914 m!8275696))

(declare-fun m!8275698 () Bool)

(assert (=> b!7900914 m!8275698))

(check-sat (not b_next!135479) (not b!7900917) (not b!7900918) (not b!7900921) (not b!7900916) (not b!7900922) (not b!7900919) (not b!7900914) (not b!7900915) (not b_next!135477) b_and!352653 (not b!7900912) (not b!7900920) tp_is_empty!52937 b_and!352651)
(check-sat b_and!352653 b_and!352651 (not b_next!135479) (not b_next!135477))
