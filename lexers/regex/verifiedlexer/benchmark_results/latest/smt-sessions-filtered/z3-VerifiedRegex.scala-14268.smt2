; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!745680 () Bool)

(assert start!745680)

(declare-fun b!7903788 () Bool)

(declare-fun b_free!134815 () Bool)

(declare-fun b_next!135605 () Bool)

(assert (=> b!7903788 (= b_free!134815 (not b_next!135605))))

(declare-fun tp!2354559 () Bool)

(declare-fun b_and!352907 () Bool)

(assert (=> b!7903788 (= tp!2354559 b_and!352907)))

(declare-fun b_free!134817 () Bool)

(declare-fun b_next!135607 () Bool)

(assert (=> b!7903788 (= b_free!134817 (not b_next!135607))))

(declare-fun tp!2354560 () Bool)

(declare-fun b_and!352909 () Bool)

(assert (=> b!7903788 (= tp!2354560 b_and!352909)))

(declare-fun b!7903784 () Bool)

(declare-fun e!4665343 () Bool)

(declare-fun e!4665347 () Bool)

(declare-fun tp!2354557 () Bool)

(assert (=> b!7903784 (= e!4665343 (and e!4665347 tp!2354557))))

(declare-fun b!7903785 () Bool)

(declare-fun res!3136130 () Bool)

(declare-fun e!4665346 () Bool)

(assert (=> b!7903785 (=> (not res!3136130) (not e!4665346))))

(declare-datatypes ((LexerInterface!8194 0))(
  ( (LexerInterfaceExt!8191 (__x!35123 Int)) (Lexer!8192) )
))
(declare-fun thiss!14377 () LexerInterface!8194)

(declare-datatypes ((List!74326 0))(
  ( (Nil!74202) (Cons!74202 (h!80650 (_ BitVec 16)) (t!389429 List!74326)) )
))
(declare-datatypes ((TokenValue!8918 0))(
  ( (FloatLiteralValue!17836 (text!62871 List!74326)) (TokenValueExt!8917 (__x!35124 Int)) (Broken!44590 (value!287112 List!74326)) (Object!9041) (End!8918) (Def!8918) (Underscore!8918) (Match!8918) (Else!8918) (Error!8918) (Case!8918) (If!8918) (Extends!8918) (Abstract!8918) (Class!8918) (Val!8918) (DelimiterValue!17836 (del!8978 List!74326)) (KeywordValue!8924 (value!287113 List!74326)) (CommentValue!17836 (value!287114 List!74326)) (WhitespaceValue!17836 (value!287115 List!74326)) (IndentationValue!8918 (value!287116 List!74326)) (String!83011) (Int32!8918) (Broken!44591 (value!287117 List!74326)) (Boolean!8919) (Unit!169238) (OperatorValue!8921 (op!8978 List!74326)) (IdentifierValue!17836 (value!287118 List!74326)) (IdentifierValue!17837 (value!287119 List!74326)) (WhitespaceValue!17837 (value!287120 List!74326)) (True!17836) (False!17836) (Broken!44592 (value!287121 List!74326)) (Broken!44593 (value!287122 List!74326)) (True!17837) (RightBrace!8918) (RightBracket!8918) (Colon!8918) (Null!8918) (Comma!8918) (LeftBracket!8918) (False!17837) (LeftBrace!8918) (ImaginaryLiteralValue!8918 (text!62872 List!74326)) (StringLiteralValue!26754 (value!287123 List!74326)) (EOFValue!8918 (value!287124 List!74326)) (IdentValue!8918 (value!287125 List!74326)) (DelimiterValue!17837 (value!287126 List!74326)) (DedentValue!8918 (value!287127 List!74326)) (NewLineValue!8918 (value!287128 List!74326)) (IntegerValue!26754 (value!287129 (_ BitVec 32)) (text!62873 List!74326)) (IntegerValue!26755 (value!287130 Int) (text!62874 List!74326)) (Times!8918) (Or!8918) (Equal!8918) (Minus!8918) (Broken!44594 (value!287131 List!74326)) (And!8918) (Div!8918) (LessEqual!8918) (Mod!8918) (Concat!30223) (Not!8918) (Plus!8918) (SpaceValue!8918 (value!287132 List!74326)) (IntegerValue!26756 (value!287133 Int) (text!62875 List!74326)) (StringLiteralValue!26755 (text!62876 List!74326)) (FloatLiteralValue!17837 (text!62877 List!74326)) (BytesLiteralValue!8918 (value!287134 List!74326)) (CommentValue!17837 (value!287135 List!74326)) (StringLiteralValue!26756 (value!287136 List!74326)) (ErrorTokenValue!8918 (msg!8979 List!74326)) )
))
(declare-datatypes ((C!42940 0))(
  ( (C!42941 (val!31934 Int)) )
))
(declare-datatypes ((List!74327 0))(
  ( (Nil!74203) (Cons!74203 (h!80651 C!42940) (t!389430 List!74327)) )
))
(declare-datatypes ((IArray!31613 0))(
  ( (IArray!31614 (innerList!15864 List!74327)) )
))
(declare-datatypes ((Conc!15776 0))(
  ( (Node!15776 (left!56604 Conc!15776) (right!56934 Conc!15776) (csize!31782 Int) (cheight!15987 Int)) (Leaf!30045 (xs!19158 IArray!31613) (csize!31783 Int)) (Empty!15776) )
))
(declare-datatypes ((BalanceConc!30670 0))(
  ( (BalanceConc!30671 (c!1450429 Conc!15776)) )
))
(declare-datatypes ((Regex!21305 0))(
  ( (ElementMatch!21305 (c!1450430 C!42940)) (Concat!30224 (regOne!43122 Regex!21305) (regTwo!43122 Regex!21305)) (EmptyExpr!21305) (Star!21305 (reg!21634 Regex!21305)) (EmptyLang!21305) (Union!21305 (regOne!43123 Regex!21305) (regTwo!43123 Regex!21305)) )
))
(declare-datatypes ((String!83012 0))(
  ( (String!83013 (value!287137 String)) )
))
(declare-datatypes ((TokenValueInjection!17144 0))(
  ( (TokenValueInjection!17145 (toValue!11655 Int) (toChars!11514 Int)) )
))
(declare-datatypes ((Rule!17004 0))(
  ( (Rule!17005 (regex!8602 Regex!21305) (tag!9466 String!83012) (isSeparator!8602 Bool) (transformation!8602 TokenValueInjection!17144)) )
))
(declare-datatypes ((List!74328 0))(
  ( (Nil!74204) (Cons!74204 (h!80652 Rule!17004) (t!389431 List!74328)) )
))
(declare-fun rulesArg!141 () List!74328)

(declare-fun rulesValidInductive!3413 (LexerInterface!8194 List!74328) Bool)

(assert (=> b!7903785 (= res!3136130 (rulesValidInductive!3413 thiss!14377 rulesArg!141))))

(declare-fun b!7903786 () Bool)

(declare-fun res!3136127 () Bool)

(declare-fun e!4665349 () Bool)

(assert (=> b!7903786 (=> res!3136127 e!4665349)))

(declare-datatypes ((Token!15624 0))(
  ( (Token!15625 (value!287138 TokenValue!8918) (rule!11892 Rule!17004) (size!43001 Int) (originalCharacters!8843 List!74327)) )
))
(declare-datatypes ((tuple2!70234 0))(
  ( (tuple2!70235 (_1!38420 Token!15624) (_2!38420 List!74327)) )
))
(declare-datatypes ((Option!17884 0))(
  ( (None!17883) (Some!17883 (v!55026 tuple2!70234)) )
))
(declare-fun lt!2684371 () Option!17884)

(declare-fun isEmpty!42574 (Option!17884) Bool)

(assert (=> b!7903786 (= res!3136127 (isEmpty!42574 lt!2684371))))

(declare-fun b!7903787 () Bool)

(declare-fun res!3136128 () Bool)

(assert (=> b!7903787 (=> (not res!3136128) (not e!4665346))))

(declare-fun isEmpty!42575 (List!74328) Bool)

(assert (=> b!7903787 (= res!3136128 (not (isEmpty!42575 rulesArg!141)))))

(declare-fun res!3136124 () Bool)

(assert (=> start!745680 (=> (not res!3136124) (not e!4665346))))

(get-info :version)

(assert (=> start!745680 (= res!3136124 ((_ is Lexer!8192) thiss!14377))))

(assert (=> start!745680 e!4665346))

(assert (=> start!745680 true))

(assert (=> start!745680 e!4665343))

(declare-fun e!4665350 () Bool)

(assert (=> start!745680 e!4665350))

(declare-fun e!4665348 () Bool)

(assert (=> b!7903788 (= e!4665348 (and tp!2354559 tp!2354560))))

(declare-fun b!7903789 () Bool)

(assert (=> b!7903789 (= e!4665349 true)))

(declare-fun lt!2684372 () List!74327)

(declare-fun list!19233 (BalanceConc!30670) List!74327)

(declare-fun charsOf!5546 (Token!15624) BalanceConc!30670)

(declare-fun get!26657 (Option!17884) tuple2!70234)

(assert (=> b!7903789 (= lt!2684372 (list!19233 (charsOf!5546 (_1!38420 (get!26657 lt!2684371)))))))

(declare-fun b!7903790 () Bool)

(declare-fun e!4665344 () Bool)

(assert (=> b!7903790 (= e!4665346 (not e!4665344))))

(declare-fun res!3136125 () Bool)

(assert (=> b!7903790 (=> res!3136125 e!4665344)))

(assert (=> b!7903790 (= res!3136125 (or (and ((_ is Cons!74204) rulesArg!141) ((_ is Nil!74204) (t!389431 rulesArg!141))) (not ((_ is Cons!74204) rulesArg!141))))))

(declare-fun input!1184 () List!74327)

(declare-fun isPrefix!6435 (List!74327 List!74327) Bool)

(assert (=> b!7903790 (isPrefix!6435 input!1184 input!1184)))

(declare-datatypes ((Unit!169239 0))(
  ( (Unit!169240) )
))
(declare-fun lt!2684370 () Unit!169239)

(declare-fun lemmaIsPrefixRefl!3946 (List!74327 List!74327) Unit!169239)

(assert (=> b!7903790 (= lt!2684370 (lemmaIsPrefixRefl!3946 input!1184 input!1184))))

(declare-fun b!7903791 () Bool)

(assert (=> b!7903791 (= e!4665344 e!4665349)))

(declare-fun res!3136129 () Bool)

(assert (=> b!7903791 (=> res!3136129 e!4665349)))

(declare-fun lt!2684369 () Option!17884)

(assert (=> b!7903791 (= res!3136129 (or (and ((_ is None!17883) lt!2684369) ((_ is None!17883) lt!2684371)) ((_ is None!17883) lt!2684371) ((_ is None!17883) lt!2684369) (>= (size!43001 (_1!38420 (v!55026 lt!2684369))) (size!43001 (_1!38420 (v!55026 lt!2684371))))))))

(declare-fun maxPrefix!4735 (LexerInterface!8194 List!74328 List!74327) Option!17884)

(assert (=> b!7903791 (= lt!2684371 (maxPrefix!4735 thiss!14377 (t!389431 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3782 (LexerInterface!8194 Rule!17004 List!74327) Option!17884)

(assert (=> b!7903791 (= lt!2684369 (maxPrefixOneRule!3782 thiss!14377 (h!80652 rulesArg!141) input!1184))))

(declare-fun tp!2354558 () Bool)

(declare-fun b!7903792 () Bool)

(declare-fun inv!95197 (String!83012) Bool)

(declare-fun inv!95199 (TokenValueInjection!17144) Bool)

(assert (=> b!7903792 (= e!4665347 (and tp!2354558 (inv!95197 (tag!9466 (h!80652 rulesArg!141))) (inv!95199 (transformation!8602 (h!80652 rulesArg!141))) e!4665348))))

(declare-fun b!7903793 () Bool)

(declare-fun res!3136126 () Bool)

(assert (=> b!7903793 (=> res!3136126 e!4665349)))

(declare-fun isDefined!14460 (Option!17884) Bool)

(assert (=> b!7903793 (= res!3136126 (not (isDefined!14460 lt!2684371)))))

(declare-fun b!7903794 () Bool)

(declare-fun tp_is_empty!52985 () Bool)

(declare-fun tp!2354556 () Bool)

(assert (=> b!7903794 (= e!4665350 (and tp_is_empty!52985 tp!2354556))))

(assert (= (and start!745680 res!3136124) b!7903785))

(assert (= (and b!7903785 res!3136130) b!7903787))

(assert (= (and b!7903787 res!3136128) b!7903790))

(assert (= (and b!7903790 (not res!3136125)) b!7903791))

(assert (= (and b!7903791 (not res!3136129)) b!7903786))

(assert (= (and b!7903786 (not res!3136127)) b!7903793))

(assert (= (and b!7903793 (not res!3136126)) b!7903789))

(assert (= b!7903792 b!7903788))

(assert (= b!7903784 b!7903792))

(assert (= (and start!745680 ((_ is Cons!74204) rulesArg!141)) b!7903784))

(assert (= (and start!745680 ((_ is Cons!74203) input!1184)) b!7903794))

(declare-fun m!8278450 () Bool)

(assert (=> b!7903787 m!8278450))

(declare-fun m!8278452 () Bool)

(assert (=> b!7903791 m!8278452))

(declare-fun m!8278454 () Bool)

(assert (=> b!7903791 m!8278454))

(declare-fun m!8278456 () Bool)

(assert (=> b!7903785 m!8278456))

(declare-fun m!8278458 () Bool)

(assert (=> b!7903786 m!8278458))

(declare-fun m!8278460 () Bool)

(assert (=> b!7903789 m!8278460))

(declare-fun m!8278462 () Bool)

(assert (=> b!7903789 m!8278462))

(assert (=> b!7903789 m!8278462))

(declare-fun m!8278464 () Bool)

(assert (=> b!7903789 m!8278464))

(declare-fun m!8278466 () Bool)

(assert (=> b!7903790 m!8278466))

(declare-fun m!8278468 () Bool)

(assert (=> b!7903790 m!8278468))

(declare-fun m!8278470 () Bool)

(assert (=> b!7903793 m!8278470))

(declare-fun m!8278472 () Bool)

(assert (=> b!7903792 m!8278472))

(declare-fun m!8278474 () Bool)

(assert (=> b!7903792 m!8278474))

(check-sat (not b!7903790) tp_is_empty!52985 (not b!7903791) (not b!7903789) (not b!7903785) (not b_next!135605) (not b!7903794) b_and!352907 (not b!7903793) (not b!7903784) (not b!7903792) (not b!7903787) (not b!7903786) (not b_next!135607) b_and!352909)
(check-sat b_and!352909 b_and!352907 (not b_next!135607) (not b_next!135605))
