; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!512092 () Bool)

(assert start!512092)

(declare-fun b!4890709 () Bool)

(declare-fun b_free!131539 () Bool)

(declare-fun b_next!132329 () Bool)

(assert (=> b!4890709 (= b_free!131539 (not b_next!132329))))

(declare-fun tp!1376644 () Bool)

(declare-fun b_and!344475 () Bool)

(assert (=> b!4890709 (= tp!1376644 b_and!344475)))

(declare-fun b_free!131541 () Bool)

(declare-fun b_next!132331 () Bool)

(assert (=> b!4890709 (= b_free!131541 (not b_next!132331))))

(declare-fun tp!1376641 () Bool)

(declare-fun b_and!344477 () Bool)

(assert (=> b!4890709 (= tp!1376641 b_and!344477)))

(declare-fun b!4890705 () Bool)

(declare-fun e!3057574 () Bool)

(declare-fun e!3057573 () Bool)

(assert (=> b!4890705 (= e!3057574 e!3057573)))

(declare-fun res!2088763 () Bool)

(assert (=> b!4890705 (=> res!2088763 e!3057573)))

(declare-datatypes ((C!26696 0))(
  ( (C!26697 (val!22682 Int)) )
))
(declare-datatypes ((List!56527 0))(
  ( (Nil!56403) (Cons!56403 (h!62851 C!26696) (t!365273 List!56527)) )
))
(declare-datatypes ((IArray!29545 0))(
  ( (IArray!29546 (innerList!14830 List!56527)) )
))
(declare-datatypes ((Conc!14742 0))(
  ( (Node!14742 (left!40975 Conc!14742) (right!41305 Conc!14742) (csize!29714 Int) (cheight!14953 Int)) (Leaf!24546 (xs!18058 IArray!29545) (csize!29715 Int)) (Empty!14742) )
))
(declare-datatypes ((BalanceConc!28914 0))(
  ( (BalanceConc!28915 (c!831175 Conc!14742)) )
))
(declare-datatypes ((List!56528 0))(
  ( (Nil!56404) (Cons!56404 (h!62852 (_ BitVec 16)) (t!365274 List!56528)) )
))
(declare-datatypes ((TokenValue!8484 0))(
  ( (FloatLiteralValue!16968 (text!59833 List!56528)) (TokenValueExt!8483 (__x!34261 Int)) (Broken!42420 (value!262083 List!56528)) (Object!8607) (End!8484) (Def!8484) (Underscore!8484) (Match!8484) (Else!8484) (Error!8484) (Case!8484) (If!8484) (Extends!8484) (Abstract!8484) (Class!8484) (Val!8484) (DelimiterValue!16968 (del!8544 List!56528)) (KeywordValue!8490 (value!262084 List!56528)) (CommentValue!16968 (value!262085 List!56528)) (WhitespaceValue!16968 (value!262086 List!56528)) (IndentationValue!8484 (value!262087 List!56528)) (String!63861) (Int32!8484) (Broken!42421 (value!262088 List!56528)) (Boolean!8485) (Unit!146397) (OperatorValue!8487 (op!8544 List!56528)) (IdentifierValue!16968 (value!262089 List!56528)) (IdentifierValue!16969 (value!262090 List!56528)) (WhitespaceValue!16969 (value!262091 List!56528)) (True!16968) (False!16968) (Broken!42422 (value!262092 List!56528)) (Broken!42423 (value!262093 List!56528)) (True!16969) (RightBrace!8484) (RightBracket!8484) (Colon!8484) (Null!8484) (Comma!8484) (LeftBracket!8484) (False!16969) (LeftBrace!8484) (ImaginaryLiteralValue!8484 (text!59834 List!56528)) (StringLiteralValue!25452 (value!262094 List!56528)) (EOFValue!8484 (value!262095 List!56528)) (IdentValue!8484 (value!262096 List!56528)) (DelimiterValue!16969 (value!262097 List!56528)) (DedentValue!8484 (value!262098 List!56528)) (NewLineValue!8484 (value!262099 List!56528)) (IntegerValue!25452 (value!262100 (_ BitVec 32)) (text!59835 List!56528)) (IntegerValue!25453 (value!262101 Int) (text!59836 List!56528)) (Times!8484) (Or!8484) (Equal!8484) (Minus!8484) (Broken!42424 (value!262102 List!56528)) (And!8484) (Div!8484) (LessEqual!8484) (Mod!8484) (Concat!21733) (Not!8484) (Plus!8484) (SpaceValue!8484 (value!262103 List!56528)) (IntegerValue!25454 (value!262104 Int) (text!59837 List!56528)) (StringLiteralValue!25453 (text!59838 List!56528)) (FloatLiteralValue!16969 (text!59839 List!56528)) (BytesLiteralValue!8484 (value!262105 List!56528)) (CommentValue!16969 (value!262106 List!56528)) (StringLiteralValue!25454 (value!262107 List!56528)) (ErrorTokenValue!8484 (msg!8545 List!56528)) )
))
(declare-datatypes ((Regex!13249 0))(
  ( (ElementMatch!13249 (c!831176 C!26696)) (Concat!21734 (regOne!27010 Regex!13249) (regTwo!27010 Regex!13249)) (EmptyExpr!13249) (Star!13249 (reg!13578 Regex!13249)) (EmptyLang!13249) (Union!13249 (regOne!27011 Regex!13249) (regTwo!27011 Regex!13249)) )
))
(declare-datatypes ((String!63862 0))(
  ( (String!63863 (value!262108 String)) )
))
(declare-datatypes ((TokenValueInjection!16276 0))(
  ( (TokenValueInjection!16277 (toValue!11065 Int) (toChars!10924 Int)) )
))
(declare-datatypes ((Rule!16148 0))(
  ( (Rule!16149 (regex!8174 Regex!13249) (tag!9038 String!63862) (isSeparator!8174 Bool) (transformation!8174 TokenValueInjection!16276)) )
))
(declare-datatypes ((Token!14912 0))(
  ( (Token!14913 (value!262109 TokenValue!8484) (rule!11358 Rule!16148) (size!37136 Int) (originalCharacters!8487 List!56527)) )
))
(declare-datatypes ((tuple2!60444 0))(
  ( (tuple2!60445 (_1!33525 Token!14912) (_2!33525 BalanceConc!28914)) )
))
(declare-datatypes ((Option!14025 0))(
  ( (None!14024) (Some!14024 (v!49976 tuple2!60444)) )
))
(declare-fun lt!2004537 () Option!14025)

(declare-fun lt!2004532 () Option!14025)

(get-info :version)

(assert (=> b!4890705 (= res!2088763 (or (not ((_ is None!14024) lt!2004537)) (not ((_ is None!14024) lt!2004532))))))

(declare-datatypes ((LexerInterface!7766 0))(
  ( (LexerInterfaceExt!7763 (__x!34262 Int)) (Lexer!7764) )
))
(declare-fun thiss!14805 () LexerInterface!7766)

(declare-fun input!1236 () BalanceConc!28914)

(declare-datatypes ((List!56529 0))(
  ( (Nil!56405) (Cons!56405 (h!62853 Rule!16148) (t!365275 List!56529)) )
))
(declare-fun rulesArg!165 () List!56529)

(declare-fun maxPrefixZipperSequence!1315 (LexerInterface!7766 List!56529 BalanceConc!28914) Option!14025)

(assert (=> b!4890705 (= lt!2004532 (maxPrefixZipperSequence!1315 thiss!14805 (t!365275 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!684 (LexerInterface!7766 Rule!16148 BalanceConc!28914) Option!14025)

(assert (=> b!4890705 (= lt!2004537 (maxPrefixOneRuleZipperSequence!684 thiss!14805 (h!62853 rulesArg!165) input!1236))))

(declare-fun b!4890706 () Bool)

(declare-fun e!3057582 () Bool)

(declare-fun e!3057581 () Bool)

(assert (=> b!4890706 (= e!3057582 e!3057581)))

(declare-fun res!2088771 () Bool)

(assert (=> b!4890706 (=> (not res!2088771) (not e!3057581))))

(declare-fun e!3057580 () Bool)

(assert (=> b!4890706 (= res!2088771 e!3057580)))

(declare-fun res!2088767 () Bool)

(assert (=> b!4890706 (=> res!2088767 e!3057580)))

(declare-fun lt!2004539 () Bool)

(assert (=> b!4890706 (= res!2088767 lt!2004539)))

(declare-fun lt!2004535 () Bool)

(assert (=> b!4890706 (= lt!2004539 (not lt!2004535))))

(declare-fun b!4890707 () Bool)

(declare-fun e!3057579 () Bool)

(assert (=> b!4890707 (= e!3057581 e!3057579)))

(declare-fun res!2088773 () Bool)

(assert (=> b!4890707 (=> res!2088773 e!3057579)))

(assert (=> b!4890707 (= res!2088773 lt!2004539)))

(declare-fun b!4890708 () Bool)

(assert (=> b!4890708 (= e!3057573 e!3057582)))

(declare-fun res!2088769 () Bool)

(assert (=> b!4890708 (=> (not res!2088769) (not e!3057582))))

(declare-datatypes ((tuple2!60446 0))(
  ( (tuple2!60447 (_1!33526 Token!14912) (_2!33526 List!56527)) )
))
(declare-datatypes ((Option!14026 0))(
  ( (None!14025) (Some!14025 (v!49977 tuple2!60446)) )
))
(declare-fun lt!2004533 () Option!14026)

(declare-fun isDefined!11037 (Option!14026) Bool)

(assert (=> b!4890708 (= res!2088769 (= lt!2004535 (isDefined!11037 lt!2004533)))))

(assert (=> b!4890708 (= lt!2004535 false)))

(declare-fun lt!2004534 () List!56527)

(declare-fun maxPrefixZipper!673 (LexerInterface!7766 List!56529 List!56527) Option!14026)

(assert (=> b!4890708 (= lt!2004533 (maxPrefixZipper!673 thiss!14805 rulesArg!165 lt!2004534))))

(declare-fun e!3057578 () Bool)

(assert (=> b!4890709 (= e!3057578 (and tp!1376644 tp!1376641))))

(declare-fun b!4890710 () Bool)

(declare-fun e!3057577 () Bool)

(declare-fun tp!1376643 () Bool)

(declare-fun inv!72677 (Conc!14742) Bool)

(assert (=> b!4890710 (= e!3057577 (and (inv!72677 (c!831175 input!1236)) tp!1376643))))

(declare-fun b!4890711 () Bool)

(declare-fun res!2088772 () Bool)

(declare-fun e!3057571 () Bool)

(assert (=> b!4890711 (=> (not res!2088772) (not e!3057571))))

(declare-fun rulesValidInductive!3153 (LexerInterface!7766 List!56529) Bool)

(assert (=> b!4890711 (= res!2088772 (rulesValidInductive!3153 thiss!14805 rulesArg!165))))

(declare-fun b!4890712 () Bool)

(declare-fun e!3057572 () Bool)

(declare-fun lt!2004536 () tuple2!60444)

(declare-fun lt!2004531 () tuple2!60446)

(declare-fun list!17722 (BalanceConc!28914) List!56527)

(assert (=> b!4890712 (= e!3057572 (= (list!17722 (_2!33525 lt!2004536)) (_2!33526 lt!2004531)))))

(declare-fun b!4890714 () Bool)

(declare-fun e!3057575 () Bool)

(declare-fun e!3057569 () Bool)

(declare-fun tp!1376645 () Bool)

(assert (=> b!4890714 (= e!3057575 (and e!3057569 tp!1376645))))

(declare-fun b!4890715 () Bool)

(assert (=> b!4890715 (= e!3057579 e!3057572)))

(declare-fun res!2088768 () Bool)

(assert (=> b!4890715 (=> (not res!2088768) (not e!3057572))))

(assert (=> b!4890715 (= res!2088768 (= (_1!33525 lt!2004536) (_1!33526 lt!2004531)))))

(declare-fun get!19478 (Option!14026) tuple2!60446)

(declare-fun maxPrefix!4603 (LexerInterface!7766 List!56529 List!56527) Option!14026)

(assert (=> b!4890715 (= lt!2004531 (get!19478 (maxPrefix!4603 thiss!14805 rulesArg!165 lt!2004534)))))

(declare-fun get!19479 (Option!14025) tuple2!60444)

(assert (=> b!4890715 (= lt!2004536 (get!19479 None!14024))))

(declare-fun b!4890716 () Bool)

(declare-fun e!3057576 () Bool)

(assert (=> b!4890716 (= e!3057580 e!3057576)))

(declare-fun res!2088764 () Bool)

(assert (=> b!4890716 (=> (not res!2088764) (not e!3057576))))

(declare-fun lt!2004530 () tuple2!60444)

(declare-fun lt!2004529 () tuple2!60446)

(assert (=> b!4890716 (= res!2088764 (= (_1!33525 lt!2004530) (_1!33526 lt!2004529)))))

(assert (=> b!4890716 (= lt!2004529 (get!19478 lt!2004533))))

(assert (=> b!4890716 (= lt!2004530 (get!19479 None!14024))))

(declare-fun b!4890717 () Bool)

(assert (=> b!4890717 (= e!3057576 (= (list!17722 (_2!33525 lt!2004530)) (_2!33526 lt!2004529)))))

(declare-fun b!4890718 () Bool)

(declare-fun tp!1376642 () Bool)

(declare-fun inv!72673 (String!63862) Bool)

(declare-fun inv!72678 (TokenValueInjection!16276) Bool)

(assert (=> b!4890718 (= e!3057569 (and tp!1376642 (inv!72673 (tag!9038 (h!62853 rulesArg!165))) (inv!72678 (transformation!8174 (h!62853 rulesArg!165))) e!3057578))))

(declare-fun b!4890719 () Bool)

(assert (=> b!4890719 (= e!3057571 (not e!3057574))))

(declare-fun res!2088766 () Bool)

(assert (=> b!4890719 (=> res!2088766 e!3057574)))

(assert (=> b!4890719 (= res!2088766 (or (and ((_ is Cons!56405) rulesArg!165) ((_ is Nil!56405) (t!365275 rulesArg!165))) (not ((_ is Cons!56405) rulesArg!165))))))

(declare-fun isPrefix!4894 (List!56527 List!56527) Bool)

(assert (=> b!4890719 (isPrefix!4894 lt!2004534 lt!2004534)))

(declare-datatypes ((Unit!146398 0))(
  ( (Unit!146399) )
))
(declare-fun lt!2004538 () Unit!146398)

(declare-fun lemmaIsPrefixRefl!3291 (List!56527 List!56527) Unit!146398)

(assert (=> b!4890719 (= lt!2004538 (lemmaIsPrefixRefl!3291 lt!2004534 lt!2004534))))

(assert (=> b!4890719 (= lt!2004534 (list!17722 input!1236))))

(declare-fun res!2088770 () Bool)

(assert (=> start!512092 (=> (not res!2088770) (not e!3057571))))

(assert (=> start!512092 (= res!2088770 ((_ is Lexer!7764) thiss!14805))))

(assert (=> start!512092 e!3057571))

(assert (=> start!512092 true))

(assert (=> start!512092 e!3057575))

(declare-fun inv!72679 (BalanceConc!28914) Bool)

(assert (=> start!512092 (and (inv!72679 input!1236) e!3057577)))

(declare-fun b!4890713 () Bool)

(declare-fun res!2088765 () Bool)

(assert (=> b!4890713 (=> (not res!2088765) (not e!3057571))))

(declare-fun isEmpty!30254 (List!56529) Bool)

(assert (=> b!4890713 (= res!2088765 (not (isEmpty!30254 rulesArg!165)))))

(assert (= (and start!512092 res!2088770) b!4890711))

(assert (= (and b!4890711 res!2088772) b!4890713))

(assert (= (and b!4890713 res!2088765) b!4890719))

(assert (= (and b!4890719 (not res!2088766)) b!4890705))

(assert (= (and b!4890705 (not res!2088763)) b!4890708))

(assert (= (and b!4890708 res!2088769) b!4890706))

(assert (= (and b!4890706 (not res!2088767)) b!4890716))

(assert (= (and b!4890716 res!2088764) b!4890717))

(assert (= (and b!4890706 res!2088771) b!4890707))

(assert (= (and b!4890707 (not res!2088773)) b!4890715))

(assert (= (and b!4890715 res!2088768) b!4890712))

(assert (= b!4890718 b!4890709))

(assert (= b!4890714 b!4890718))

(assert (= (and start!512092 ((_ is Cons!56405) rulesArg!165)) b!4890714))

(assert (= start!512092 b!4890710))

(declare-fun m!5894168 () Bool)

(assert (=> b!4890708 m!5894168))

(declare-fun m!5894170 () Bool)

(assert (=> b!4890708 m!5894170))

(declare-fun m!5894172 () Bool)

(assert (=> b!4890719 m!5894172))

(declare-fun m!5894174 () Bool)

(assert (=> b!4890719 m!5894174))

(declare-fun m!5894176 () Bool)

(assert (=> b!4890719 m!5894176))

(declare-fun m!5894178 () Bool)

(assert (=> b!4890712 m!5894178))

(declare-fun m!5894180 () Bool)

(assert (=> b!4890717 m!5894180))

(declare-fun m!5894182 () Bool)

(assert (=> b!4890715 m!5894182))

(assert (=> b!4890715 m!5894182))

(declare-fun m!5894184 () Bool)

(assert (=> b!4890715 m!5894184))

(declare-fun m!5894186 () Bool)

(assert (=> b!4890715 m!5894186))

(declare-fun m!5894188 () Bool)

(assert (=> b!4890710 m!5894188))

(declare-fun m!5894190 () Bool)

(assert (=> b!4890713 m!5894190))

(declare-fun m!5894192 () Bool)

(assert (=> b!4890716 m!5894192))

(assert (=> b!4890716 m!5894186))

(declare-fun m!5894194 () Bool)

(assert (=> b!4890705 m!5894194))

(declare-fun m!5894196 () Bool)

(assert (=> b!4890705 m!5894196))

(declare-fun m!5894198 () Bool)

(assert (=> b!4890718 m!5894198))

(declare-fun m!5894200 () Bool)

(assert (=> b!4890718 m!5894200))

(declare-fun m!5894202 () Bool)

(assert (=> start!512092 m!5894202))

(declare-fun m!5894204 () Bool)

(assert (=> b!4890711 m!5894204))

(check-sat (not b!4890708) b_and!344475 (not b!4890711) (not b!4890716) (not b!4890710) (not b!4890705) (not b!4890712) (not b!4890713) (not b!4890718) (not b_next!132329) (not b!4890715) (not b_next!132331) (not b!4890717) (not start!512092) (not b!4890719) b_and!344477 (not b!4890714))
(check-sat b_and!344477 b_and!344475 (not b_next!132329) (not b_next!132331))
(get-model)

(declare-fun d!1570442 () Bool)

(assert (=> d!1570442 (= (isEmpty!30254 rulesArg!165) ((_ is Nil!56405) rulesArg!165))))

(assert (=> b!4890713 d!1570442))

(declare-fun d!1570444 () Bool)

(assert (=> d!1570444 (= (get!19478 lt!2004533) (v!49977 lt!2004533))))

(assert (=> b!4890716 d!1570444))

(declare-fun d!1570446 () Bool)

(assert (not d!1570446))

(assert (=> b!4890716 d!1570446))

(declare-fun b!4890757 () Bool)

(declare-fun e!3057611 () Option!14025)

(declare-fun lt!2004580 () Option!14025)

(declare-fun lt!2004577 () Option!14025)

(assert (=> b!4890757 (= e!3057611 (ite (and ((_ is None!14024) lt!2004580) ((_ is None!14024) lt!2004577)) None!14024 (ite ((_ is None!14024) lt!2004577) lt!2004580 (ite ((_ is None!14024) lt!2004580) lt!2004577 (ite (>= (size!37136 (_1!33525 (v!49976 lt!2004580))) (size!37136 (_1!33525 (v!49976 lt!2004577)))) lt!2004580 lt!2004577)))))))

(declare-fun call!339164 () Option!14025)

(assert (=> b!4890757 (= lt!2004580 call!339164)))

(assert (=> b!4890757 (= lt!2004577 (maxPrefixZipperSequence!1315 thiss!14805 (t!365275 (t!365275 rulesArg!165)) input!1236))))

(declare-fun lt!2004579 () Option!14025)

(declare-fun b!4890758 () Bool)

(declare-fun e!3057613 () Bool)

(assert (=> b!4890758 (= e!3057613 (= (list!17722 (_2!33525 (get!19479 lt!2004579))) (_2!33526 (get!19478 (maxPrefixZipper!673 thiss!14805 (t!365275 rulesArg!165) (list!17722 input!1236))))))))

(declare-fun d!1570448 () Bool)

(declare-fun e!3057612 () Bool)

(assert (=> d!1570448 e!3057612))

(declare-fun res!2088815 () Bool)

(assert (=> d!1570448 (=> (not res!2088815) (not e!3057612))))

(declare-fun isDefined!11038 (Option!14025) Bool)

(assert (=> d!1570448 (= res!2088815 (= (isDefined!11038 lt!2004579) (isDefined!11037 (maxPrefixZipper!673 thiss!14805 (t!365275 rulesArg!165) (list!17722 input!1236)))))))

(assert (=> d!1570448 (= lt!2004579 e!3057611)))

(declare-fun c!831182 () Bool)

(assert (=> d!1570448 (= c!831182 (and ((_ is Cons!56405) (t!365275 rulesArg!165)) ((_ is Nil!56405) (t!365275 (t!365275 rulesArg!165)))))))

(declare-fun lt!2004576 () Unit!146398)

(declare-fun lt!2004575 () Unit!146398)

(assert (=> d!1570448 (= lt!2004576 lt!2004575)))

(declare-fun lt!2004578 () List!56527)

(declare-fun lt!2004581 () List!56527)

(assert (=> d!1570448 (isPrefix!4894 lt!2004578 lt!2004581)))

(assert (=> d!1570448 (= lt!2004575 (lemmaIsPrefixRefl!3291 lt!2004578 lt!2004581))))

(assert (=> d!1570448 (= lt!2004581 (list!17722 input!1236))))

(assert (=> d!1570448 (= lt!2004578 (list!17722 input!1236))))

(assert (=> d!1570448 (rulesValidInductive!3153 thiss!14805 (t!365275 rulesArg!165))))

(assert (=> d!1570448 (= (maxPrefixZipperSequence!1315 thiss!14805 (t!365275 rulesArg!165) input!1236) lt!2004579)))

(declare-fun b!4890759 () Bool)

(assert (=> b!4890759 (= e!3057611 call!339164)))

(declare-fun b!4890760 () Bool)

(declare-fun e!3057614 () Bool)

(assert (=> b!4890760 (= e!3057612 e!3057614)))

(declare-fun res!2088819 () Bool)

(assert (=> b!4890760 (=> res!2088819 e!3057614)))

(assert (=> b!4890760 (= res!2088819 (not (isDefined!11038 lt!2004579)))))

(declare-fun b!4890761 () Bool)

(declare-fun res!2088817 () Bool)

(assert (=> b!4890761 (=> (not res!2088817) (not e!3057612))))

(declare-fun e!3057610 () Bool)

(assert (=> b!4890761 (= res!2088817 e!3057610)))

(declare-fun res!2088816 () Bool)

(assert (=> b!4890761 (=> res!2088816 e!3057610)))

(assert (=> b!4890761 (= res!2088816 (not (isDefined!11038 lt!2004579)))))

(declare-fun e!3057615 () Bool)

(declare-fun b!4890762 () Bool)

(assert (=> b!4890762 (= e!3057615 (= (list!17722 (_2!33525 (get!19479 lt!2004579))) (_2!33526 (get!19478 (maxPrefix!4603 thiss!14805 (t!365275 rulesArg!165) (list!17722 input!1236))))))))

(declare-fun b!4890763 () Bool)

(assert (=> b!4890763 (= e!3057614 e!3057615)))

(declare-fun res!2088820 () Bool)

(assert (=> b!4890763 (=> (not res!2088820) (not e!3057615))))

(assert (=> b!4890763 (= res!2088820 (= (_1!33525 (get!19479 lt!2004579)) (_1!33526 (get!19478 (maxPrefix!4603 thiss!14805 (t!365275 rulesArg!165) (list!17722 input!1236))))))))

(declare-fun b!4890764 () Bool)

(assert (=> b!4890764 (= e!3057610 e!3057613)))

(declare-fun res!2088818 () Bool)

(assert (=> b!4890764 (=> (not res!2088818) (not e!3057613))))

(assert (=> b!4890764 (= res!2088818 (= (_1!33525 (get!19479 lt!2004579)) (_1!33526 (get!19478 (maxPrefixZipper!673 thiss!14805 (t!365275 rulesArg!165) (list!17722 input!1236))))))))

(declare-fun bm!339159 () Bool)

(assert (=> bm!339159 (= call!339164 (maxPrefixOneRuleZipperSequence!684 thiss!14805 (h!62853 (t!365275 rulesArg!165)) input!1236))))

(assert (= (and d!1570448 c!831182) b!4890759))

(assert (= (and d!1570448 (not c!831182)) b!4890757))

(assert (= (or b!4890759 b!4890757) bm!339159))

(assert (= (and d!1570448 res!2088815) b!4890761))

(assert (= (and b!4890761 (not res!2088816)) b!4890764))

(assert (= (and b!4890764 res!2088818) b!4890758))

(assert (= (and b!4890761 res!2088817) b!4890760))

(assert (= (and b!4890760 (not res!2088819)) b!4890763))

(assert (= (and b!4890763 res!2088820) b!4890762))

(declare-fun m!5894234 () Bool)

(assert (=> bm!339159 m!5894234))

(declare-fun m!5894236 () Bool)

(assert (=> d!1570448 m!5894236))

(assert (=> d!1570448 m!5894176))

(declare-fun m!5894238 () Bool)

(assert (=> d!1570448 m!5894238))

(assert (=> d!1570448 m!5894176))

(assert (=> d!1570448 m!5894238))

(declare-fun m!5894240 () Bool)

(assert (=> d!1570448 m!5894240))

(declare-fun m!5894242 () Bool)

(assert (=> d!1570448 m!5894242))

(declare-fun m!5894244 () Bool)

(assert (=> d!1570448 m!5894244))

(declare-fun m!5894246 () Bool)

(assert (=> d!1570448 m!5894246))

(declare-fun m!5894248 () Bool)

(assert (=> b!4890763 m!5894248))

(assert (=> b!4890763 m!5894176))

(assert (=> b!4890763 m!5894176))

(declare-fun m!5894250 () Bool)

(assert (=> b!4890763 m!5894250))

(assert (=> b!4890763 m!5894250))

(declare-fun m!5894252 () Bool)

(assert (=> b!4890763 m!5894252))

(assert (=> b!4890761 m!5894244))

(assert (=> b!4890762 m!5894176))

(assert (=> b!4890762 m!5894250))

(assert (=> b!4890762 m!5894252))

(assert (=> b!4890762 m!5894248))

(declare-fun m!5894254 () Bool)

(assert (=> b!4890762 m!5894254))

(assert (=> b!4890762 m!5894176))

(assert (=> b!4890762 m!5894250))

(assert (=> b!4890760 m!5894244))

(assert (=> b!4890758 m!5894176))

(assert (=> b!4890758 m!5894238))

(assert (=> b!4890758 m!5894176))

(assert (=> b!4890758 m!5894248))

(assert (=> b!4890758 m!5894254))

(assert (=> b!4890758 m!5894238))

(declare-fun m!5894256 () Bool)

(assert (=> b!4890758 m!5894256))

(declare-fun m!5894258 () Bool)

(assert (=> b!4890757 m!5894258))

(assert (=> b!4890764 m!5894248))

(assert (=> b!4890764 m!5894176))

(assert (=> b!4890764 m!5894176))

(assert (=> b!4890764 m!5894238))

(assert (=> b!4890764 m!5894238))

(assert (=> b!4890764 m!5894256))

(assert (=> b!4890705 d!1570448))

(declare-fun b!4890856 () Bool)

(declare-fun e!3057673 () Bool)

(assert (=> b!4890856 (= e!3057673 true)))

(declare-fun b!4890855 () Bool)

(declare-fun e!3057672 () Bool)

(assert (=> b!4890855 (= e!3057672 e!3057673)))

(declare-fun b!4890845 () Bool)

(assert (=> b!4890845 e!3057672))

(assert (= b!4890855 b!4890856))

(assert (= b!4890845 b!4890855))

(declare-fun lambda!243967 () Int)

(declare-fun order!25465 () Int)

(declare-fun order!25463 () Int)

(declare-fun dynLambda!22617 (Int Int) Int)

(declare-fun dynLambda!22618 (Int Int) Int)

(assert (=> b!4890856 (< (dynLambda!22617 order!25463 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) (dynLambda!22618 order!25465 lambda!243967))))

(declare-fun order!25467 () Int)

(declare-fun dynLambda!22619 (Int Int) Int)

(assert (=> b!4890856 (< (dynLambda!22619 order!25467 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) (dynLambda!22618 order!25465 lambda!243967))))

(declare-fun d!1570470 () Bool)

(declare-fun e!3057666 () Bool)

(assert (=> d!1570470 e!3057666))

(declare-fun res!2088875 () Bool)

(assert (=> d!1570470 (=> (not res!2088875) (not e!3057666))))

(declare-fun lt!2004654 () Option!14025)

(declare-fun maxPrefixOneRule!3529 (LexerInterface!7766 Rule!16148 List!56527) Option!14026)

(assert (=> d!1570470 (= res!2088875 (= (isDefined!11038 lt!2004654) (isDefined!11037 (maxPrefixOneRule!3529 thiss!14805 (h!62853 rulesArg!165) (list!17722 input!1236)))))))

(declare-fun e!3057665 () Option!14025)

(assert (=> d!1570470 (= lt!2004654 e!3057665)))

(declare-fun c!831196 () Bool)

(declare-datatypes ((tuple2!60448 0))(
  ( (tuple2!60449 (_1!33527 BalanceConc!28914) (_2!33527 BalanceConc!28914)) )
))
(declare-fun lt!2004658 () tuple2!60448)

(declare-fun isEmpty!30256 (BalanceConc!28914) Bool)

(assert (=> d!1570470 (= c!831196 (isEmpty!30256 (_1!33527 lt!2004658)))))

(declare-fun findLongestMatchWithZipperSequence!267 (Regex!13249 BalanceConc!28914) tuple2!60448)

(assert (=> d!1570470 (= lt!2004658 (findLongestMatchWithZipperSequence!267 (regex!8174 (h!62853 rulesArg!165)) input!1236))))

(declare-fun ruleValid!3671 (LexerInterface!7766 Rule!16148) Bool)

(assert (=> d!1570470 (ruleValid!3671 thiss!14805 (h!62853 rulesArg!165))))

(assert (=> d!1570470 (= (maxPrefixOneRuleZipperSequence!684 thiss!14805 (h!62853 rulesArg!165) input!1236) lt!2004654)))

(declare-fun b!4890843 () Bool)

(declare-fun e!3057667 () Bool)

(assert (=> b!4890843 (= e!3057666 e!3057667)))

(declare-fun res!2088873 () Bool)

(assert (=> b!4890843 (=> res!2088873 e!3057667)))

(assert (=> b!4890843 (= res!2088873 (not (isDefined!11038 lt!2004654)))))

(declare-fun b!4890844 () Bool)

(declare-fun e!3057663 () Bool)

(declare-fun lt!2004660 () List!56527)

(declare-fun matchR!6530 (Regex!13249 List!56527) Bool)

(declare-datatypes ((tuple2!60450 0))(
  ( (tuple2!60451 (_1!33528 List!56527) (_2!33528 List!56527)) )
))
(declare-fun findLongestMatchInner!1752 (Regex!13249 List!56527 Int List!56527 List!56527 Int) tuple2!60450)

(declare-fun size!37138 (List!56527) Int)

(assert (=> b!4890844 (= e!3057663 (matchR!6530 (regex!8174 (h!62853 rulesArg!165)) (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660)))))))

(declare-fun apply!13540 (TokenValueInjection!16276 BalanceConc!28914) TokenValue!8484)

(declare-fun size!37139 (BalanceConc!28914) Int)

(assert (=> b!4890845 (= e!3057665 (Some!14024 (tuple2!60445 (Token!14913 (apply!13540 (transformation!8174 (h!62853 rulesArg!165)) (_1!33527 lt!2004658)) (h!62853 rulesArg!165) (size!37139 (_1!33527 lt!2004658)) (list!17722 (_1!33527 lt!2004658))) (_2!33527 lt!2004658))))))

(assert (=> b!4890845 (= lt!2004660 (list!17722 input!1236))))

(declare-fun lt!2004659 () Unit!146398)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1715 (Regex!13249 List!56527) Unit!146398)

(assert (=> b!4890845 (= lt!2004659 (longestMatchIsAcceptedByMatchOrIsEmpty!1715 (regex!8174 (h!62853 rulesArg!165)) lt!2004660))))

(declare-fun res!2088876 () Bool)

(declare-fun isEmpty!30257 (List!56527) Bool)

(assert (=> b!4890845 (= res!2088876 (isEmpty!30257 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660)))))))

(assert (=> b!4890845 (=> res!2088876 e!3057663)))

(assert (=> b!4890845 e!3057663))

(declare-fun lt!2004661 () Unit!146398)

(assert (=> b!4890845 (= lt!2004661 lt!2004659)))

(declare-fun lt!2004653 () Unit!146398)

(declare-fun lemmaInv!1235 (TokenValueInjection!16276) Unit!146398)

(assert (=> b!4890845 (= lt!2004653 (lemmaInv!1235 (transformation!8174 (h!62853 rulesArg!165))))))

(declare-fun lt!2004657 () Unit!146398)

(declare-fun ForallOf!1132 (Int BalanceConc!28914) Unit!146398)

(assert (=> b!4890845 (= lt!2004657 (ForallOf!1132 lambda!243967 (_1!33527 lt!2004658)))))

(declare-fun lt!2004652 () Unit!146398)

(declare-fun seqFromList!5936 (List!56527) BalanceConc!28914)

(assert (=> b!4890845 (= lt!2004652 (ForallOf!1132 lambda!243967 (seqFromList!5936 (list!17722 (_1!33527 lt!2004658)))))))

(declare-fun lt!2004656 () Option!14025)

(assert (=> b!4890845 (= lt!2004656 (Some!14024 (tuple2!60445 (Token!14913 (apply!13540 (transformation!8174 (h!62853 rulesArg!165)) (_1!33527 lt!2004658)) (h!62853 rulesArg!165) (size!37139 (_1!33527 lt!2004658)) (list!17722 (_1!33527 lt!2004658))) (_2!33527 lt!2004658))))))

(declare-fun lt!2004655 () Unit!146398)

(declare-fun lemmaEqSameImage!1089 (TokenValueInjection!16276 BalanceConc!28914 BalanceConc!28914) Unit!146398)

(assert (=> b!4890845 (= lt!2004655 (lemmaEqSameImage!1089 (transformation!8174 (h!62853 rulesArg!165)) (_1!33527 lt!2004658) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658)))))))

(declare-fun b!4890846 () Bool)

(declare-fun e!3057664 () Bool)

(assert (=> b!4890846 (= e!3057667 e!3057664)))

(declare-fun res!2088874 () Bool)

(assert (=> b!4890846 (=> (not res!2088874) (not e!3057664))))

(assert (=> b!4890846 (= res!2088874 (= (_1!33525 (get!19479 lt!2004654)) (_1!33526 (get!19478 (maxPrefixOneRule!3529 thiss!14805 (h!62853 rulesArg!165) (list!17722 input!1236))))))))

(declare-fun b!4890847 () Bool)

(assert (=> b!4890847 (= e!3057665 None!14024)))

(declare-fun b!4890848 () Bool)

(assert (=> b!4890848 (= e!3057664 (= (list!17722 (_2!33525 (get!19479 lt!2004654))) (_2!33526 (get!19478 (maxPrefixOneRule!3529 thiss!14805 (h!62853 rulesArg!165) (list!17722 input!1236))))))))

(assert (= (and d!1570470 c!831196) b!4890847))

(assert (= (and d!1570470 (not c!831196)) b!4890845))

(assert (= (and b!4890845 (not res!2088876)) b!4890844))

(assert (= (and d!1570470 res!2088875) b!4890843))

(assert (= (and b!4890843 (not res!2088873)) b!4890846))

(assert (= (and b!4890846 res!2088874) b!4890848))

(declare-fun m!5894316 () Bool)

(assert (=> b!4890844 m!5894316))

(declare-fun m!5894318 () Bool)

(assert (=> b!4890844 m!5894318))

(assert (=> b!4890844 m!5894316))

(assert (=> b!4890844 m!5894318))

(declare-fun m!5894320 () Bool)

(assert (=> b!4890844 m!5894320))

(declare-fun m!5894322 () Bool)

(assert (=> b!4890844 m!5894322))

(declare-fun m!5894324 () Bool)

(assert (=> b!4890843 m!5894324))

(declare-fun m!5894326 () Bool)

(assert (=> b!4890846 m!5894326))

(assert (=> b!4890846 m!5894176))

(assert (=> b!4890846 m!5894176))

(declare-fun m!5894328 () Bool)

(assert (=> b!4890846 m!5894328))

(assert (=> b!4890846 m!5894328))

(declare-fun m!5894330 () Bool)

(assert (=> b!4890846 m!5894330))

(assert (=> b!4890848 m!5894326))

(assert (=> b!4890848 m!5894328))

(assert (=> b!4890848 m!5894330))

(declare-fun m!5894332 () Bool)

(assert (=> b!4890848 m!5894332))

(assert (=> b!4890848 m!5894176))

(assert (=> b!4890848 m!5894328))

(assert (=> b!4890848 m!5894176))

(declare-fun m!5894334 () Bool)

(assert (=> d!1570470 m!5894334))

(declare-fun m!5894336 () Bool)

(assert (=> d!1570470 m!5894336))

(assert (=> d!1570470 m!5894324))

(assert (=> d!1570470 m!5894328))

(declare-fun m!5894338 () Bool)

(assert (=> d!1570470 m!5894338))

(declare-fun m!5894340 () Bool)

(assert (=> d!1570470 m!5894340))

(assert (=> d!1570470 m!5894176))

(assert (=> d!1570470 m!5894328))

(assert (=> d!1570470 m!5894176))

(assert (=> b!4890845 m!5894316))

(declare-fun m!5894342 () Bool)

(assert (=> b!4890845 m!5894342))

(assert (=> b!4890845 m!5894176))

(declare-fun m!5894344 () Bool)

(assert (=> b!4890845 m!5894344))

(declare-fun m!5894346 () Bool)

(assert (=> b!4890845 m!5894346))

(declare-fun m!5894348 () Bool)

(assert (=> b!4890845 m!5894348))

(declare-fun m!5894350 () Bool)

(assert (=> b!4890845 m!5894350))

(declare-fun m!5894352 () Bool)

(assert (=> b!4890845 m!5894352))

(declare-fun m!5894354 () Bool)

(assert (=> b!4890845 m!5894354))

(assert (=> b!4890845 m!5894348))

(declare-fun m!5894356 () Bool)

(assert (=> b!4890845 m!5894356))

(assert (=> b!4890845 m!5894318))

(declare-fun m!5894358 () Bool)

(assert (=> b!4890845 m!5894358))

(declare-fun m!5894360 () Bool)

(assert (=> b!4890845 m!5894360))

(assert (=> b!4890845 m!5894316))

(assert (=> b!4890845 m!5894318))

(assert (=> b!4890845 m!5894320))

(assert (=> b!4890845 m!5894342))

(assert (=> b!4890845 m!5894348))

(assert (=> b!4890705 d!1570470))

(declare-fun d!1570480 () Bool)

(assert (=> d!1570480 (= (get!19478 (maxPrefix!4603 thiss!14805 rulesArg!165 lt!2004534)) (v!49977 (maxPrefix!4603 thiss!14805 rulesArg!165 lt!2004534)))))

(assert (=> b!4890715 d!1570480))

(declare-fun b!4890875 () Bool)

(declare-fun e!3057681 () Bool)

(declare-fun e!3057682 () Bool)

(assert (=> b!4890875 (= e!3057681 e!3057682)))

(declare-fun res!2088892 () Bool)

(assert (=> b!4890875 (=> (not res!2088892) (not e!3057682))))

(declare-fun lt!2004672 () Option!14026)

(assert (=> b!4890875 (= res!2088892 (isDefined!11037 lt!2004672))))

(declare-fun b!4890876 () Bool)

(declare-fun contains!19437 (List!56529 Rule!16148) Bool)

(assert (=> b!4890876 (= e!3057682 (contains!19437 rulesArg!165 (rule!11358 (_1!33526 (get!19478 lt!2004672)))))))

(declare-fun d!1570482 () Bool)

(assert (=> d!1570482 e!3057681))

(declare-fun res!2088893 () Bool)

(assert (=> d!1570482 (=> res!2088893 e!3057681)))

(declare-fun isEmpty!30258 (Option!14026) Bool)

(assert (=> d!1570482 (= res!2088893 (isEmpty!30258 lt!2004672))))

(declare-fun e!3057680 () Option!14026)

(assert (=> d!1570482 (= lt!2004672 e!3057680)))

(declare-fun c!831199 () Bool)

(assert (=> d!1570482 (= c!831199 (and ((_ is Cons!56405) rulesArg!165) ((_ is Nil!56405) (t!365275 rulesArg!165))))))

(declare-fun lt!2004673 () Unit!146398)

(declare-fun lt!2004676 () Unit!146398)

(assert (=> d!1570482 (= lt!2004673 lt!2004676)))

(assert (=> d!1570482 (isPrefix!4894 lt!2004534 lt!2004534)))

(assert (=> d!1570482 (= lt!2004676 (lemmaIsPrefixRefl!3291 lt!2004534 lt!2004534))))

(assert (=> d!1570482 (rulesValidInductive!3153 thiss!14805 rulesArg!165)))

(assert (=> d!1570482 (= (maxPrefix!4603 thiss!14805 rulesArg!165 lt!2004534) lt!2004672)))

(declare-fun bm!339168 () Bool)

(declare-fun call!339173 () Option!14026)

(assert (=> bm!339168 (= call!339173 (maxPrefixOneRule!3529 thiss!14805 (h!62853 rulesArg!165) lt!2004534))))

(declare-fun b!4890877 () Bool)

(assert (=> b!4890877 (= e!3057680 call!339173)))

(declare-fun b!4890878 () Bool)

(declare-fun res!2088894 () Bool)

(assert (=> b!4890878 (=> (not res!2088894) (not e!3057682))))

(declare-fun charsOf!5374 (Token!14912) BalanceConc!28914)

(assert (=> b!4890878 (= res!2088894 (matchR!6530 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))) (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))))))

(declare-fun b!4890879 () Bool)

(declare-fun res!2088897 () Bool)

(assert (=> b!4890879 (=> (not res!2088897) (not e!3057682))))

(assert (=> b!4890879 (= res!2088897 (= (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672)))) (originalCharacters!8487 (_1!33526 (get!19478 lt!2004672)))))))

(declare-fun b!4890880 () Bool)

(declare-fun res!2088895 () Bool)

(assert (=> b!4890880 (=> (not res!2088895) (not e!3057682))))

(declare-fun ++!12243 (List!56527 List!56527) List!56527)

(assert (=> b!4890880 (= res!2088895 (= (++!12243 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672)))) (_2!33526 (get!19478 lt!2004672))) lt!2004534))))

(declare-fun b!4890881 () Bool)

(declare-fun res!2088891 () Bool)

(assert (=> b!4890881 (=> (not res!2088891) (not e!3057682))))

(assert (=> b!4890881 (= res!2088891 (< (size!37138 (_2!33526 (get!19478 lt!2004672))) (size!37138 lt!2004534)))))

(declare-fun b!4890882 () Bool)

(declare-fun res!2088896 () Bool)

(assert (=> b!4890882 (=> (not res!2088896) (not e!3057682))))

(assert (=> b!4890882 (= res!2088896 (= (value!262109 (_1!33526 (get!19478 lt!2004672))) (apply!13540 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))) (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004672)))))))))

(declare-fun b!4890883 () Bool)

(declare-fun lt!2004674 () Option!14026)

(declare-fun lt!2004675 () Option!14026)

(assert (=> b!4890883 (= e!3057680 (ite (and ((_ is None!14025) lt!2004674) ((_ is None!14025) lt!2004675)) None!14025 (ite ((_ is None!14025) lt!2004675) lt!2004674 (ite ((_ is None!14025) lt!2004674) lt!2004675 (ite (>= (size!37136 (_1!33526 (v!49977 lt!2004674))) (size!37136 (_1!33526 (v!49977 lt!2004675)))) lt!2004674 lt!2004675)))))))

(assert (=> b!4890883 (= lt!2004674 call!339173)))

(assert (=> b!4890883 (= lt!2004675 (maxPrefix!4603 thiss!14805 (t!365275 rulesArg!165) lt!2004534))))

(assert (= (and d!1570482 c!831199) b!4890877))

(assert (= (and d!1570482 (not c!831199)) b!4890883))

(assert (= (or b!4890877 b!4890883) bm!339168))

(assert (= (and d!1570482 (not res!2088893)) b!4890875))

(assert (= (and b!4890875 res!2088892) b!4890879))

(assert (= (and b!4890879 res!2088897) b!4890881))

(assert (= (and b!4890881 res!2088891) b!4890880))

(assert (= (and b!4890880 res!2088895) b!4890882))

(assert (= (and b!4890882 res!2088896) b!4890878))

(assert (= (and b!4890878 res!2088894) b!4890876))

(declare-fun m!5894362 () Bool)

(assert (=> b!4890882 m!5894362))

(declare-fun m!5894364 () Bool)

(assert (=> b!4890882 m!5894364))

(assert (=> b!4890882 m!5894364))

(declare-fun m!5894366 () Bool)

(assert (=> b!4890882 m!5894366))

(assert (=> b!4890880 m!5894362))

(declare-fun m!5894368 () Bool)

(assert (=> b!4890880 m!5894368))

(assert (=> b!4890880 m!5894368))

(declare-fun m!5894370 () Bool)

(assert (=> b!4890880 m!5894370))

(assert (=> b!4890880 m!5894370))

(declare-fun m!5894372 () Bool)

(assert (=> b!4890880 m!5894372))

(declare-fun m!5894374 () Bool)

(assert (=> bm!339168 m!5894374))

(assert (=> b!4890879 m!5894362))

(assert (=> b!4890879 m!5894368))

(assert (=> b!4890879 m!5894368))

(assert (=> b!4890879 m!5894370))

(assert (=> b!4890878 m!5894362))

(assert (=> b!4890878 m!5894368))

(assert (=> b!4890878 m!5894368))

(assert (=> b!4890878 m!5894370))

(assert (=> b!4890878 m!5894370))

(declare-fun m!5894376 () Bool)

(assert (=> b!4890878 m!5894376))

(declare-fun m!5894378 () Bool)

(assert (=> d!1570482 m!5894378))

(assert (=> d!1570482 m!5894172))

(assert (=> d!1570482 m!5894174))

(assert (=> d!1570482 m!5894204))

(assert (=> b!4890881 m!5894362))

(declare-fun m!5894380 () Bool)

(assert (=> b!4890881 m!5894380))

(declare-fun m!5894382 () Bool)

(assert (=> b!4890881 m!5894382))

(assert (=> b!4890876 m!5894362))

(declare-fun m!5894384 () Bool)

(assert (=> b!4890876 m!5894384))

(declare-fun m!5894386 () Bool)

(assert (=> b!4890883 m!5894386))

(declare-fun m!5894388 () Bool)

(assert (=> b!4890875 m!5894388))

(assert (=> b!4890715 d!1570482))

(assert (=> b!4890715 d!1570446))

(declare-fun d!1570484 () Bool)

(declare-fun list!17724 (Conc!14742) List!56527)

(assert (=> d!1570484 (= (list!17722 (_2!33525 lt!2004530)) (list!17724 (c!831175 (_2!33525 lt!2004530))))))

(declare-fun bs!1175795 () Bool)

(assert (= bs!1175795 d!1570484))

(declare-fun m!5894390 () Bool)

(assert (=> bs!1175795 m!5894390))

(assert (=> b!4890717 d!1570484))

(declare-fun d!1570486 () Bool)

(assert (=> d!1570486 (= (isDefined!11037 lt!2004533) (not (isEmpty!30258 lt!2004533)))))

(declare-fun bs!1175796 () Bool)

(assert (= bs!1175796 d!1570486))

(declare-fun m!5894392 () Bool)

(assert (=> bs!1175796 m!5894392))

(assert (=> b!4890708 d!1570486))

(declare-fun lt!2004707 () Option!14026)

(declare-fun d!1570488 () Bool)

(assert (=> d!1570488 (= lt!2004707 (maxPrefix!4603 thiss!14805 rulesArg!165 lt!2004534))))

(declare-fun e!3057729 () Option!14026)

(assert (=> d!1570488 (= lt!2004707 e!3057729)))

(declare-fun c!831203 () Bool)

(assert (=> d!1570488 (= c!831203 (and ((_ is Cons!56405) rulesArg!165) ((_ is Nil!56405) (t!365275 rulesArg!165))))))

(declare-fun lt!2004708 () Unit!146398)

(declare-fun lt!2004706 () Unit!146398)

(assert (=> d!1570488 (= lt!2004708 lt!2004706)))

(assert (=> d!1570488 (isPrefix!4894 lt!2004534 lt!2004534)))

(assert (=> d!1570488 (= lt!2004706 (lemmaIsPrefixRefl!3291 lt!2004534 lt!2004534))))

(assert (=> d!1570488 (rulesValidInductive!3153 thiss!14805 rulesArg!165)))

(assert (=> d!1570488 (= (maxPrefixZipper!673 thiss!14805 rulesArg!165 lt!2004534) lt!2004707)))

(declare-fun bm!339171 () Bool)

(declare-fun call!339176 () Option!14026)

(declare-fun maxPrefixOneRuleZipper!258 (LexerInterface!7766 Rule!16148 List!56527) Option!14026)

(assert (=> bm!339171 (= call!339176 (maxPrefixOneRuleZipper!258 thiss!14805 (h!62853 rulesArg!165) lt!2004534))))

(declare-fun b!4890952 () Bool)

(assert (=> b!4890952 (= e!3057729 call!339176)))

(declare-fun b!4890953 () Bool)

(declare-fun lt!2004710 () Option!14026)

(declare-fun lt!2004709 () Option!14026)

(assert (=> b!4890953 (= e!3057729 (ite (and ((_ is None!14025) lt!2004710) ((_ is None!14025) lt!2004709)) None!14025 (ite ((_ is None!14025) lt!2004709) lt!2004710 (ite ((_ is None!14025) lt!2004710) lt!2004709 (ite (>= (size!37136 (_1!33526 (v!49977 lt!2004710))) (size!37136 (_1!33526 (v!49977 lt!2004709)))) lt!2004710 lt!2004709)))))))

(assert (=> b!4890953 (= lt!2004710 call!339176)))

(assert (=> b!4890953 (= lt!2004709 (maxPrefixZipper!673 thiss!14805 (t!365275 rulesArg!165) lt!2004534))))

(assert (= (and d!1570488 c!831203) b!4890952))

(assert (= (and d!1570488 (not c!831203)) b!4890953))

(assert (= (or b!4890952 b!4890953) bm!339171))

(assert (=> d!1570488 m!5894182))

(assert (=> d!1570488 m!5894172))

(assert (=> d!1570488 m!5894174))

(assert (=> d!1570488 m!5894204))

(declare-fun m!5894452 () Bool)

(assert (=> bm!339171 m!5894452))

(declare-fun m!5894454 () Bool)

(assert (=> b!4890953 m!5894454))

(assert (=> b!4890708 d!1570488))

(declare-fun d!1570494 () Bool)

(assert (=> d!1570494 (= (inv!72673 (tag!9038 (h!62853 rulesArg!165))) (= (mod (str.len (value!262108 (tag!9038 (h!62853 rulesArg!165)))) 2) 0))))

(assert (=> b!4890718 d!1570494))

(declare-fun d!1570496 () Bool)

(declare-fun res!2088916 () Bool)

(declare-fun e!3057732 () Bool)

(assert (=> d!1570496 (=> (not res!2088916) (not e!3057732))))

(declare-fun semiInverseModEq!3586 (Int Int) Bool)

(assert (=> d!1570496 (= res!2088916 (semiInverseModEq!3586 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))))))

(assert (=> d!1570496 (= (inv!72678 (transformation!8174 (h!62853 rulesArg!165))) e!3057732)))

(declare-fun b!4890956 () Bool)

(declare-fun equivClasses!3465 (Int Int) Bool)

(assert (=> b!4890956 (= e!3057732 (equivClasses!3465 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))))))

(assert (= (and d!1570496 res!2088916) b!4890956))

(declare-fun m!5894456 () Bool)

(assert (=> d!1570496 m!5894456))

(declare-fun m!5894458 () Bool)

(assert (=> b!4890956 m!5894458))

(assert (=> b!4890718 d!1570496))

(declare-fun b!4890966 () Bool)

(declare-fun res!2088927 () Bool)

(declare-fun e!3057739 () Bool)

(assert (=> b!4890966 (=> (not res!2088927) (not e!3057739))))

(declare-fun head!10455 (List!56527) C!26696)

(assert (=> b!4890966 (= res!2088927 (= (head!10455 lt!2004534) (head!10455 lt!2004534)))))

(declare-fun d!1570498 () Bool)

(declare-fun e!3057740 () Bool)

(assert (=> d!1570498 e!3057740))

(declare-fun res!2088926 () Bool)

(assert (=> d!1570498 (=> res!2088926 e!3057740)))

(declare-fun lt!2004713 () Bool)

(assert (=> d!1570498 (= res!2088926 (not lt!2004713))))

(declare-fun e!3057741 () Bool)

(assert (=> d!1570498 (= lt!2004713 e!3057741)))

(declare-fun res!2088928 () Bool)

(assert (=> d!1570498 (=> res!2088928 e!3057741)))

(assert (=> d!1570498 (= res!2088928 ((_ is Nil!56403) lt!2004534))))

(assert (=> d!1570498 (= (isPrefix!4894 lt!2004534 lt!2004534) lt!2004713)))

(declare-fun b!4890965 () Bool)

(assert (=> b!4890965 (= e!3057741 e!3057739)))

(declare-fun res!2088925 () Bool)

(assert (=> b!4890965 (=> (not res!2088925) (not e!3057739))))

(assert (=> b!4890965 (= res!2088925 (not ((_ is Nil!56403) lt!2004534)))))

(declare-fun b!4890967 () Bool)

(declare-fun tail!9601 (List!56527) List!56527)

(assert (=> b!4890967 (= e!3057739 (isPrefix!4894 (tail!9601 lt!2004534) (tail!9601 lt!2004534)))))

(declare-fun b!4890968 () Bool)

(assert (=> b!4890968 (= e!3057740 (>= (size!37138 lt!2004534) (size!37138 lt!2004534)))))

(assert (= (and d!1570498 (not res!2088928)) b!4890965))

(assert (= (and b!4890965 res!2088925) b!4890966))

(assert (= (and b!4890966 res!2088927) b!4890967))

(assert (= (and d!1570498 (not res!2088926)) b!4890968))

(declare-fun m!5894460 () Bool)

(assert (=> b!4890966 m!5894460))

(assert (=> b!4890966 m!5894460))

(declare-fun m!5894462 () Bool)

(assert (=> b!4890967 m!5894462))

(assert (=> b!4890967 m!5894462))

(assert (=> b!4890967 m!5894462))

(assert (=> b!4890967 m!5894462))

(declare-fun m!5894464 () Bool)

(assert (=> b!4890967 m!5894464))

(assert (=> b!4890968 m!5894382))

(assert (=> b!4890968 m!5894382))

(assert (=> b!4890719 d!1570498))

(declare-fun d!1570500 () Bool)

(assert (=> d!1570500 (isPrefix!4894 lt!2004534 lt!2004534)))

(declare-fun lt!2004716 () Unit!146398)

(declare-fun choose!35699 (List!56527 List!56527) Unit!146398)

(assert (=> d!1570500 (= lt!2004716 (choose!35699 lt!2004534 lt!2004534))))

(assert (=> d!1570500 (= (lemmaIsPrefixRefl!3291 lt!2004534 lt!2004534) lt!2004716)))

(declare-fun bs!1175797 () Bool)

(assert (= bs!1175797 d!1570500))

(assert (=> bs!1175797 m!5894172))

(declare-fun m!5894466 () Bool)

(assert (=> bs!1175797 m!5894466))

(assert (=> b!4890719 d!1570500))

(declare-fun d!1570502 () Bool)

(assert (=> d!1570502 (= (list!17722 input!1236) (list!17724 (c!831175 input!1236)))))

(declare-fun bs!1175798 () Bool)

(assert (= bs!1175798 d!1570502))

(declare-fun m!5894468 () Bool)

(assert (=> bs!1175798 m!5894468))

(assert (=> b!4890719 d!1570502))

(declare-fun d!1570504 () Bool)

(declare-fun isBalanced!4012 (Conc!14742) Bool)

(assert (=> d!1570504 (= (inv!72679 input!1236) (isBalanced!4012 (c!831175 input!1236)))))

(declare-fun bs!1175799 () Bool)

(assert (= bs!1175799 d!1570504))

(declare-fun m!5894470 () Bool)

(assert (=> bs!1175799 m!5894470))

(assert (=> start!512092 d!1570504))

(declare-fun d!1570506 () Bool)

(declare-fun c!831206 () Bool)

(assert (=> d!1570506 (= c!831206 ((_ is Node!14742) (c!831175 input!1236)))))

(declare-fun e!3057746 () Bool)

(assert (=> d!1570506 (= (inv!72677 (c!831175 input!1236)) e!3057746)))

(declare-fun b!4890975 () Bool)

(declare-fun inv!72682 (Conc!14742) Bool)

(assert (=> b!4890975 (= e!3057746 (inv!72682 (c!831175 input!1236)))))

(declare-fun b!4890976 () Bool)

(declare-fun e!3057747 () Bool)

(assert (=> b!4890976 (= e!3057746 e!3057747)))

(declare-fun res!2088931 () Bool)

(assert (=> b!4890976 (= res!2088931 (not ((_ is Leaf!24546) (c!831175 input!1236))))))

(assert (=> b!4890976 (=> res!2088931 e!3057747)))

(declare-fun b!4890977 () Bool)

(declare-fun inv!72683 (Conc!14742) Bool)

(assert (=> b!4890977 (= e!3057747 (inv!72683 (c!831175 input!1236)))))

(assert (= (and d!1570506 c!831206) b!4890975))

(assert (= (and d!1570506 (not c!831206)) b!4890976))

(assert (= (and b!4890976 (not res!2088931)) b!4890977))

(declare-fun m!5894472 () Bool)

(assert (=> b!4890975 m!5894472))

(declare-fun m!5894474 () Bool)

(assert (=> b!4890977 m!5894474))

(assert (=> b!4890710 d!1570506))

(declare-fun d!1570508 () Bool)

(assert (=> d!1570508 (= (list!17722 (_2!33525 lt!2004536)) (list!17724 (c!831175 (_2!33525 lt!2004536))))))

(declare-fun bs!1175800 () Bool)

(assert (= bs!1175800 d!1570508))

(declare-fun m!5894476 () Bool)

(assert (=> bs!1175800 m!5894476))

(assert (=> b!4890712 d!1570508))

(declare-fun d!1570510 () Bool)

(assert (=> d!1570510 true))

(declare-fun lt!2004719 () Bool)

(declare-fun lambda!243978 () Int)

(declare-fun forall!13090 (List!56529 Int) Bool)

(assert (=> d!1570510 (= lt!2004719 (forall!13090 rulesArg!165 lambda!243978))))

(declare-fun e!3057752 () Bool)

(assert (=> d!1570510 (= lt!2004719 e!3057752)))

(declare-fun res!2088936 () Bool)

(assert (=> d!1570510 (=> res!2088936 e!3057752)))

(assert (=> d!1570510 (= res!2088936 (not ((_ is Cons!56405) rulesArg!165)))))

(assert (=> d!1570510 (= (rulesValidInductive!3153 thiss!14805 rulesArg!165) lt!2004719)))

(declare-fun b!4890982 () Bool)

(declare-fun e!3057753 () Bool)

(assert (=> b!4890982 (= e!3057752 e!3057753)))

(declare-fun res!2088937 () Bool)

(assert (=> b!4890982 (=> (not res!2088937) (not e!3057753))))

(assert (=> b!4890982 (= res!2088937 (ruleValid!3671 thiss!14805 (h!62853 rulesArg!165)))))

(declare-fun b!4890983 () Bool)

(assert (=> b!4890983 (= e!3057753 (rulesValidInductive!3153 thiss!14805 (t!365275 rulesArg!165)))))

(assert (= (and d!1570510 (not res!2088936)) b!4890982))

(assert (= (and b!4890982 res!2088937) b!4890983))

(declare-fun m!5894478 () Bool)

(assert (=> d!1570510 m!5894478))

(assert (=> b!4890982 m!5894336))

(assert (=> b!4890983 m!5894236))

(assert (=> b!4890711 d!1570510))

(declare-fun b!4890998 () Bool)

(declare-fun e!3057756 () Bool)

(declare-fun tp!1376695 () Bool)

(assert (=> b!4890998 (= e!3057756 tp!1376695)))

(declare-fun b!4890999 () Bool)

(declare-fun tp!1376694 () Bool)

(declare-fun tp!1376692 () Bool)

(assert (=> b!4890999 (= e!3057756 (and tp!1376694 tp!1376692))))

(declare-fun b!4890997 () Bool)

(declare-fun tp!1376693 () Bool)

(declare-fun tp!1376696 () Bool)

(assert (=> b!4890997 (= e!3057756 (and tp!1376693 tp!1376696))))

(assert (=> b!4890718 (= tp!1376642 e!3057756)))

(declare-fun b!4890996 () Bool)

(declare-fun tp_is_empty!35779 () Bool)

(assert (=> b!4890996 (= e!3057756 tp_is_empty!35779)))

(assert (= (and b!4890718 ((_ is ElementMatch!13249) (regex!8174 (h!62853 rulesArg!165)))) b!4890996))

(assert (= (and b!4890718 ((_ is Concat!21734) (regex!8174 (h!62853 rulesArg!165)))) b!4890997))

(assert (= (and b!4890718 ((_ is Star!13249) (regex!8174 (h!62853 rulesArg!165)))) b!4890998))

(assert (= (and b!4890718 ((_ is Union!13249) (regex!8174 (h!62853 rulesArg!165)))) b!4890999))

(declare-fun b!4891010 () Bool)

(declare-fun b_free!131547 () Bool)

(declare-fun b_next!132337 () Bool)

(assert (=> b!4891010 (= b_free!131547 (not b_next!132337))))

(declare-fun tp!1376706 () Bool)

(declare-fun b_and!344483 () Bool)

(assert (=> b!4891010 (= tp!1376706 b_and!344483)))

(declare-fun b_free!131549 () Bool)

(declare-fun b_next!132339 () Bool)

(assert (=> b!4891010 (= b_free!131549 (not b_next!132339))))

(declare-fun tp!1376707 () Bool)

(declare-fun b_and!344485 () Bool)

(assert (=> b!4891010 (= tp!1376707 b_and!344485)))

(declare-fun e!3057768 () Bool)

(assert (=> b!4891010 (= e!3057768 (and tp!1376706 tp!1376707))))

(declare-fun e!3057766 () Bool)

(declare-fun b!4891009 () Bool)

(declare-fun tp!1376705 () Bool)

(assert (=> b!4891009 (= e!3057766 (and tp!1376705 (inv!72673 (tag!9038 (h!62853 (t!365275 rulesArg!165)))) (inv!72678 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) e!3057768))))

(declare-fun b!4891008 () Bool)

(declare-fun e!3057767 () Bool)

(declare-fun tp!1376708 () Bool)

(assert (=> b!4891008 (= e!3057767 (and e!3057766 tp!1376708))))

(assert (=> b!4890714 (= tp!1376645 e!3057767)))

(assert (= b!4891009 b!4891010))

(assert (= b!4891008 b!4891009))

(assert (= (and b!4890714 ((_ is Cons!56405) (t!365275 rulesArg!165))) b!4891008))

(declare-fun m!5894480 () Bool)

(assert (=> b!4891009 m!5894480))

(declare-fun m!5894482 () Bool)

(assert (=> b!4891009 m!5894482))

(declare-fun tp!1376717 () Bool)

(declare-fun b!4891019 () Bool)

(declare-fun tp!1376715 () Bool)

(declare-fun e!3057773 () Bool)

(assert (=> b!4891019 (= e!3057773 (and (inv!72677 (left!40975 (c!831175 input!1236))) tp!1376717 (inv!72677 (right!41305 (c!831175 input!1236))) tp!1376715))))

(declare-fun b!4891021 () Bool)

(declare-fun e!3057774 () Bool)

(declare-fun tp!1376716 () Bool)

(assert (=> b!4891021 (= e!3057774 tp!1376716)))

(declare-fun b!4891020 () Bool)

(declare-fun inv!72685 (IArray!29545) Bool)

(assert (=> b!4891020 (= e!3057773 (and (inv!72685 (xs!18058 (c!831175 input!1236))) e!3057774))))

(assert (=> b!4890710 (= tp!1376643 (and (inv!72677 (c!831175 input!1236)) e!3057773))))

(assert (= (and b!4890710 ((_ is Node!14742) (c!831175 input!1236))) b!4891019))

(assert (= b!4891020 b!4891021))

(assert (= (and b!4890710 ((_ is Leaf!24546) (c!831175 input!1236))) b!4891020))

(declare-fun m!5894484 () Bool)

(assert (=> b!4891019 m!5894484))

(declare-fun m!5894486 () Bool)

(assert (=> b!4891019 m!5894486))

(declare-fun m!5894488 () Bool)

(assert (=> b!4891020 m!5894488))

(assert (=> b!4890710 m!5894188))

(check-sat (not bm!339171) (not b!4890844) (not d!1570504) (not b!4890758) (not b!4891008) (not b!4890760) (not d!1570510) (not b!4890875) b_and!344485 (not bm!339168) (not b!4890848) (not b!4890845) (not b!4890763) (not b!4890879) (not b!4890880) (not b!4890761) (not b!4891019) (not b!4890983) (not b_next!132331) b_and!344475 (not d!1570482) tp_is_empty!35779 (not b!4890762) (not b!4890881) b_and!344483 (not b!4890967) (not d!1570500) (not b_next!132337) (not b!4890710) (not b!4890878) (not d!1570470) (not d!1570486) (not d!1570496) (not d!1570488) (not d!1570484) (not b_next!132339) (not b!4890968) (not b!4891021) (not b!4890843) (not b!4890999) (not bm!339159) (not b!4890883) (not b!4890757) b_and!344477 (not b!4890764) (not b!4890975) (not b!4890846) (not b!4890956) (not b!4890998) (not d!1570448) (not b!4890876) (not d!1570508) (not b!4890953) (not b!4890997) (not b_next!132329) (not b!4890966) (not b!4891020) (not b!4890882) (not b!4890982) (not b!4890977) (not d!1570502) (not b!4891009))
(check-sat (not b_next!132331) b_and!344475 b_and!344483 (not b_next!132337) (not b_next!132339) b_and!344477 b_and!344485 (not b_next!132329))
(get-model)

(declare-fun b!4891070 () Bool)

(declare-fun e!3057802 () List!56527)

(declare-fun e!3057803 () List!56527)

(assert (=> b!4891070 (= e!3057802 e!3057803)))

(declare-fun c!831226 () Bool)

(assert (=> b!4891070 (= c!831226 ((_ is Leaf!24546) (c!831175 input!1236)))))

(declare-fun d!1570540 () Bool)

(declare-fun c!831225 () Bool)

(assert (=> d!1570540 (= c!831225 ((_ is Empty!14742) (c!831175 input!1236)))))

(assert (=> d!1570540 (= (list!17724 (c!831175 input!1236)) e!3057802)))

(declare-fun b!4891071 () Bool)

(declare-fun list!17726 (IArray!29545) List!56527)

(assert (=> b!4891071 (= e!3057803 (list!17726 (xs!18058 (c!831175 input!1236))))))

(declare-fun b!4891069 () Bool)

(assert (=> b!4891069 (= e!3057802 Nil!56403)))

(declare-fun b!4891072 () Bool)

(assert (=> b!4891072 (= e!3057803 (++!12243 (list!17724 (left!40975 (c!831175 input!1236))) (list!17724 (right!41305 (c!831175 input!1236)))))))

(assert (= (and d!1570540 c!831225) b!4891069))

(assert (= (and d!1570540 (not c!831225)) b!4891070))

(assert (= (and b!4891070 c!831226) b!4891071))

(assert (= (and b!4891070 (not c!831226)) b!4891072))

(declare-fun m!5894536 () Bool)

(assert (=> b!4891071 m!5894536))

(declare-fun m!5894538 () Bool)

(assert (=> b!4891072 m!5894538))

(declare-fun m!5894540 () Bool)

(assert (=> b!4891072 m!5894540))

(assert (=> b!4891072 m!5894538))

(assert (=> b!4891072 m!5894540))

(declare-fun m!5894542 () Bool)

(assert (=> b!4891072 m!5894542))

(assert (=> d!1570502 d!1570540))

(declare-fun bs!1175802 () Bool)

(declare-fun d!1570550 () Bool)

(assert (= bs!1175802 (and d!1570550 d!1570510)))

(declare-fun lambda!243979 () Int)

(assert (=> bs!1175802 (= lambda!243979 lambda!243978)))

(assert (=> d!1570550 true))

(declare-fun lt!2004734 () Bool)

(assert (=> d!1570550 (= lt!2004734 (forall!13090 (t!365275 rulesArg!165) lambda!243979))))

(declare-fun e!3057804 () Bool)

(assert (=> d!1570550 (= lt!2004734 e!3057804)))

(declare-fun res!2088975 () Bool)

(assert (=> d!1570550 (=> res!2088975 e!3057804)))

(assert (=> d!1570550 (= res!2088975 (not ((_ is Cons!56405) (t!365275 rulesArg!165))))))

(assert (=> d!1570550 (= (rulesValidInductive!3153 thiss!14805 (t!365275 rulesArg!165)) lt!2004734)))

(declare-fun b!4891073 () Bool)

(declare-fun e!3057805 () Bool)

(assert (=> b!4891073 (= e!3057804 e!3057805)))

(declare-fun res!2088976 () Bool)

(assert (=> b!4891073 (=> (not res!2088976) (not e!3057805))))

(assert (=> b!4891073 (= res!2088976 (ruleValid!3671 thiss!14805 (h!62853 (t!365275 rulesArg!165))))))

(declare-fun b!4891074 () Bool)

(assert (=> b!4891074 (= e!3057805 (rulesValidInductive!3153 thiss!14805 (t!365275 (t!365275 rulesArg!165))))))

(assert (= (and d!1570550 (not res!2088975)) b!4891073))

(assert (= (and b!4891073 res!2088976) b!4891074))

(declare-fun m!5894548 () Bool)

(assert (=> d!1570550 m!5894548))

(declare-fun m!5894550 () Bool)

(assert (=> b!4891073 m!5894550))

(declare-fun m!5894552 () Bool)

(assert (=> b!4891074 m!5894552))

(assert (=> b!4890983 d!1570550))

(declare-fun b!4891076 () Bool)

(declare-fun res!2088979 () Bool)

(declare-fun e!3057806 () Bool)

(assert (=> b!4891076 (=> (not res!2088979) (not e!3057806))))

(assert (=> b!4891076 (= res!2088979 (= (head!10455 (tail!9601 lt!2004534)) (head!10455 (tail!9601 lt!2004534))))))

(declare-fun d!1570556 () Bool)

(declare-fun e!3057807 () Bool)

(assert (=> d!1570556 e!3057807))

(declare-fun res!2088978 () Bool)

(assert (=> d!1570556 (=> res!2088978 e!3057807)))

(declare-fun lt!2004735 () Bool)

(assert (=> d!1570556 (= res!2088978 (not lt!2004735))))

(declare-fun e!3057808 () Bool)

(assert (=> d!1570556 (= lt!2004735 e!3057808)))

(declare-fun res!2088980 () Bool)

(assert (=> d!1570556 (=> res!2088980 e!3057808)))

(assert (=> d!1570556 (= res!2088980 ((_ is Nil!56403) (tail!9601 lt!2004534)))))

(assert (=> d!1570556 (= (isPrefix!4894 (tail!9601 lt!2004534) (tail!9601 lt!2004534)) lt!2004735)))

(declare-fun b!4891075 () Bool)

(assert (=> b!4891075 (= e!3057808 e!3057806)))

(declare-fun res!2088977 () Bool)

(assert (=> b!4891075 (=> (not res!2088977) (not e!3057806))))

(assert (=> b!4891075 (= res!2088977 (not ((_ is Nil!56403) (tail!9601 lt!2004534))))))

(declare-fun b!4891077 () Bool)

(assert (=> b!4891077 (= e!3057806 (isPrefix!4894 (tail!9601 (tail!9601 lt!2004534)) (tail!9601 (tail!9601 lt!2004534))))))

(declare-fun b!4891078 () Bool)

(assert (=> b!4891078 (= e!3057807 (>= (size!37138 (tail!9601 lt!2004534)) (size!37138 (tail!9601 lt!2004534))))))

(assert (= (and d!1570556 (not res!2088980)) b!4891075))

(assert (= (and b!4891075 res!2088977) b!4891076))

(assert (= (and b!4891076 res!2088979) b!4891077))

(assert (= (and d!1570556 (not res!2088978)) b!4891078))

(assert (=> b!4891076 m!5894462))

(declare-fun m!5894554 () Bool)

(assert (=> b!4891076 m!5894554))

(assert (=> b!4891076 m!5894462))

(assert (=> b!4891076 m!5894554))

(assert (=> b!4891077 m!5894462))

(declare-fun m!5894556 () Bool)

(assert (=> b!4891077 m!5894556))

(assert (=> b!4891077 m!5894462))

(assert (=> b!4891077 m!5894556))

(assert (=> b!4891077 m!5894556))

(assert (=> b!4891077 m!5894556))

(declare-fun m!5894558 () Bool)

(assert (=> b!4891077 m!5894558))

(assert (=> b!4891078 m!5894462))

(declare-fun m!5894560 () Bool)

(assert (=> b!4891078 m!5894560))

(assert (=> b!4891078 m!5894462))

(assert (=> b!4891078 m!5894560))

(assert (=> b!4890967 d!1570556))

(declare-fun d!1570558 () Bool)

(assert (=> d!1570558 (= (tail!9601 lt!2004534) (t!365273 lt!2004534))))

(assert (=> b!4890967 d!1570558))

(declare-fun b!4891080 () Bool)

(declare-fun e!3057809 () List!56527)

(declare-fun e!3057810 () List!56527)

(assert (=> b!4891080 (= e!3057809 e!3057810)))

(declare-fun c!831228 () Bool)

(assert (=> b!4891080 (= c!831228 ((_ is Leaf!24546) (c!831175 (_2!33525 lt!2004536))))))

(declare-fun d!1570560 () Bool)

(declare-fun c!831227 () Bool)

(assert (=> d!1570560 (= c!831227 ((_ is Empty!14742) (c!831175 (_2!33525 lt!2004536))))))

(assert (=> d!1570560 (= (list!17724 (c!831175 (_2!33525 lt!2004536))) e!3057809)))

(declare-fun b!4891081 () Bool)

(assert (=> b!4891081 (= e!3057810 (list!17726 (xs!18058 (c!831175 (_2!33525 lt!2004536)))))))

(declare-fun b!4891079 () Bool)

(assert (=> b!4891079 (= e!3057809 Nil!56403)))

(declare-fun b!4891082 () Bool)

(assert (=> b!4891082 (= e!3057810 (++!12243 (list!17724 (left!40975 (c!831175 (_2!33525 lt!2004536)))) (list!17724 (right!41305 (c!831175 (_2!33525 lt!2004536))))))))

(assert (= (and d!1570560 c!831227) b!4891079))

(assert (= (and d!1570560 (not c!831227)) b!4891080))

(assert (= (and b!4891080 c!831228) b!4891081))

(assert (= (and b!4891080 (not c!831228)) b!4891082))

(declare-fun m!5894562 () Bool)

(assert (=> b!4891081 m!5894562))

(declare-fun m!5894564 () Bool)

(assert (=> b!4891082 m!5894564))

(declare-fun m!5894566 () Bool)

(assert (=> b!4891082 m!5894566))

(assert (=> b!4891082 m!5894564))

(assert (=> b!4891082 m!5894566))

(declare-fun m!5894568 () Bool)

(assert (=> b!4891082 m!5894568))

(assert (=> d!1570508 d!1570560))

(declare-fun d!1570562 () Bool)

(assert (=> d!1570562 (= (inv!72673 (tag!9038 (h!62853 (t!365275 rulesArg!165)))) (= (mod (str.len (value!262108 (tag!9038 (h!62853 (t!365275 rulesArg!165))))) 2) 0))))

(assert (=> b!4891009 d!1570562))

(declare-fun d!1570564 () Bool)

(declare-fun res!2088981 () Bool)

(declare-fun e!3057811 () Bool)

(assert (=> d!1570564 (=> (not res!2088981) (not e!3057811))))

(assert (=> d!1570564 (= res!2088981 (semiInverseModEq!3586 (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))))))

(assert (=> d!1570564 (= (inv!72678 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) e!3057811)))

(declare-fun b!4891083 () Bool)

(assert (=> b!4891083 (= e!3057811 (equivClasses!3465 (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))))))

(assert (= (and d!1570564 res!2088981) b!4891083))

(declare-fun m!5894570 () Bool)

(assert (=> d!1570564 m!5894570))

(declare-fun m!5894572 () Bool)

(assert (=> b!4891083 m!5894572))

(assert (=> b!4891009 d!1570564))

(declare-fun d!1570566 () Bool)

(assert (=> d!1570566 (= (list!17722 (_2!33525 (get!19479 lt!2004579))) (list!17724 (c!831175 (_2!33525 (get!19479 lt!2004579)))))))

(declare-fun bs!1175805 () Bool)

(assert (= bs!1175805 d!1570566))

(declare-fun m!5894574 () Bool)

(assert (=> bs!1175805 m!5894574))

(assert (=> b!4890758 d!1570566))

(declare-fun d!1570568 () Bool)

(assert (=> d!1570568 (= (get!19478 (maxPrefixZipper!673 thiss!14805 (t!365275 rulesArg!165) (list!17722 input!1236))) (v!49977 (maxPrefixZipper!673 thiss!14805 (t!365275 rulesArg!165) (list!17722 input!1236))))))

(assert (=> b!4890758 d!1570568))

(assert (=> b!4890758 d!1570502))

(declare-fun lt!2004737 () Option!14026)

(declare-fun d!1570570 () Bool)

(assert (=> d!1570570 (= lt!2004737 (maxPrefix!4603 thiss!14805 (t!365275 rulesArg!165) (list!17722 input!1236)))))

(declare-fun e!3057812 () Option!14026)

(assert (=> d!1570570 (= lt!2004737 e!3057812)))

(declare-fun c!831229 () Bool)

(assert (=> d!1570570 (= c!831229 (and ((_ is Cons!56405) (t!365275 rulesArg!165)) ((_ is Nil!56405) (t!365275 (t!365275 rulesArg!165)))))))

(declare-fun lt!2004738 () Unit!146398)

(declare-fun lt!2004736 () Unit!146398)

(assert (=> d!1570570 (= lt!2004738 lt!2004736)))

(assert (=> d!1570570 (isPrefix!4894 (list!17722 input!1236) (list!17722 input!1236))))

(assert (=> d!1570570 (= lt!2004736 (lemmaIsPrefixRefl!3291 (list!17722 input!1236) (list!17722 input!1236)))))

(assert (=> d!1570570 (rulesValidInductive!3153 thiss!14805 (t!365275 rulesArg!165))))

(assert (=> d!1570570 (= (maxPrefixZipper!673 thiss!14805 (t!365275 rulesArg!165) (list!17722 input!1236)) lt!2004737)))

(declare-fun bm!339174 () Bool)

(declare-fun call!339179 () Option!14026)

(assert (=> bm!339174 (= call!339179 (maxPrefixOneRuleZipper!258 thiss!14805 (h!62853 (t!365275 rulesArg!165)) (list!17722 input!1236)))))

(declare-fun b!4891084 () Bool)

(assert (=> b!4891084 (= e!3057812 call!339179)))

(declare-fun b!4891085 () Bool)

(declare-fun lt!2004740 () Option!14026)

(declare-fun lt!2004739 () Option!14026)

(assert (=> b!4891085 (= e!3057812 (ite (and ((_ is None!14025) lt!2004740) ((_ is None!14025) lt!2004739)) None!14025 (ite ((_ is None!14025) lt!2004739) lt!2004740 (ite ((_ is None!14025) lt!2004740) lt!2004739 (ite (>= (size!37136 (_1!33526 (v!49977 lt!2004740))) (size!37136 (_1!33526 (v!49977 lt!2004739)))) lt!2004740 lt!2004739)))))))

(assert (=> b!4891085 (= lt!2004740 call!339179)))

(assert (=> b!4891085 (= lt!2004739 (maxPrefixZipper!673 thiss!14805 (t!365275 (t!365275 rulesArg!165)) (list!17722 input!1236)))))

(assert (= (and d!1570570 c!831229) b!4891084))

(assert (= (and d!1570570 (not c!831229)) b!4891085))

(assert (= (or b!4891084 b!4891085) bm!339174))

(assert (=> d!1570570 m!5894176))

(assert (=> d!1570570 m!5894250))

(assert (=> d!1570570 m!5894176))

(assert (=> d!1570570 m!5894176))

(declare-fun m!5894576 () Bool)

(assert (=> d!1570570 m!5894576))

(assert (=> d!1570570 m!5894176))

(assert (=> d!1570570 m!5894176))

(declare-fun m!5894578 () Bool)

(assert (=> d!1570570 m!5894578))

(assert (=> d!1570570 m!5894236))

(assert (=> bm!339174 m!5894176))

(declare-fun m!5894580 () Bool)

(assert (=> bm!339174 m!5894580))

(assert (=> b!4891085 m!5894176))

(declare-fun m!5894582 () Bool)

(assert (=> b!4891085 m!5894582))

(assert (=> b!4890758 d!1570570))

(declare-fun d!1570572 () Bool)

(assert (=> d!1570572 (= (get!19479 lt!2004579) (v!49976 lt!2004579))))

(assert (=> b!4890758 d!1570572))

(declare-fun d!1570574 () Bool)

(declare-fun lt!2004744 () Option!14026)

(assert (=> d!1570574 (= lt!2004744 (maxPrefix!4603 thiss!14805 (t!365275 rulesArg!165) lt!2004534))))

(declare-fun e!3057813 () Option!14026)

(assert (=> d!1570574 (= lt!2004744 e!3057813)))

(declare-fun c!831230 () Bool)

(assert (=> d!1570574 (= c!831230 (and ((_ is Cons!56405) (t!365275 rulesArg!165)) ((_ is Nil!56405) (t!365275 (t!365275 rulesArg!165)))))))

(declare-fun lt!2004745 () Unit!146398)

(declare-fun lt!2004743 () Unit!146398)

(assert (=> d!1570574 (= lt!2004745 lt!2004743)))

(assert (=> d!1570574 (isPrefix!4894 lt!2004534 lt!2004534)))

(assert (=> d!1570574 (= lt!2004743 (lemmaIsPrefixRefl!3291 lt!2004534 lt!2004534))))

(assert (=> d!1570574 (rulesValidInductive!3153 thiss!14805 (t!365275 rulesArg!165))))

(assert (=> d!1570574 (= (maxPrefixZipper!673 thiss!14805 (t!365275 rulesArg!165) lt!2004534) lt!2004744)))

(declare-fun bm!339175 () Bool)

(declare-fun call!339180 () Option!14026)

(assert (=> bm!339175 (= call!339180 (maxPrefixOneRuleZipper!258 thiss!14805 (h!62853 (t!365275 rulesArg!165)) lt!2004534))))

(declare-fun b!4891086 () Bool)

(assert (=> b!4891086 (= e!3057813 call!339180)))

(declare-fun b!4891087 () Bool)

(declare-fun lt!2004747 () Option!14026)

(declare-fun lt!2004746 () Option!14026)

(assert (=> b!4891087 (= e!3057813 (ite (and ((_ is None!14025) lt!2004747) ((_ is None!14025) lt!2004746)) None!14025 (ite ((_ is None!14025) lt!2004746) lt!2004747 (ite ((_ is None!14025) lt!2004747) lt!2004746 (ite (>= (size!37136 (_1!33526 (v!49977 lt!2004747))) (size!37136 (_1!33526 (v!49977 lt!2004746)))) lt!2004747 lt!2004746)))))))

(assert (=> b!4891087 (= lt!2004747 call!339180)))

(assert (=> b!4891087 (= lt!2004746 (maxPrefixZipper!673 thiss!14805 (t!365275 (t!365275 rulesArg!165)) lt!2004534))))

(assert (= (and d!1570574 c!831230) b!4891086))

(assert (= (and d!1570574 (not c!831230)) b!4891087))

(assert (= (or b!4891086 b!4891087) bm!339175))

(assert (=> d!1570574 m!5894386))

(assert (=> d!1570574 m!5894172))

(assert (=> d!1570574 m!5894174))

(assert (=> d!1570574 m!5894236))

(declare-fun m!5894584 () Bool)

(assert (=> bm!339175 m!5894584))

(declare-fun m!5894586 () Bool)

(assert (=> b!4891087 m!5894586))

(assert (=> b!4890953 d!1570574))

(declare-fun d!1570576 () Bool)

(declare-fun isEmpty!30262 (Option!14025) Bool)

(assert (=> d!1570576 (= (isDefined!11038 lt!2004579) (not (isEmpty!30262 lt!2004579)))))

(declare-fun bs!1175806 () Bool)

(assert (= bs!1175806 d!1570576))

(declare-fun m!5894588 () Bool)

(assert (=> bs!1175806 m!5894588))

(assert (=> b!4890760 d!1570576))

(declare-fun bs!1175807 () Bool)

(declare-fun d!1570578 () Bool)

(assert (= bs!1175807 (and d!1570578 b!4890845)))

(declare-fun lambda!243985 () Int)

(assert (=> bs!1175807 (= lambda!243985 lambda!243967)))

(assert (=> d!1570578 true))

(assert (=> d!1570578 (< (dynLambda!22619 order!25467 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) (dynLambda!22618 order!25465 lambda!243985))))

(assert (=> d!1570578 true))

(assert (=> d!1570578 (< (dynLambda!22617 order!25463 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) (dynLambda!22618 order!25465 lambda!243985))))

(declare-fun Forall!1686 (Int) Bool)

(assert (=> d!1570578 (= (semiInverseModEq!3586 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) (Forall!1686 lambda!243985))))

(declare-fun bs!1175808 () Bool)

(assert (= bs!1175808 d!1570578))

(declare-fun m!5894594 () Bool)

(assert (=> bs!1175808 m!5894594))

(assert (=> d!1570496 d!1570578))

(assert (=> b!4890710 d!1570506))

(declare-fun d!1570580 () Bool)

(assert (=> d!1570580 (= (inv!72685 (xs!18058 (c!831175 input!1236))) (<= (size!37138 (innerList!14830 (xs!18058 (c!831175 input!1236)))) 2147483647))))

(declare-fun bs!1175809 () Bool)

(assert (= bs!1175809 d!1570580))

(declare-fun m!5894604 () Bool)

(assert (=> bs!1175809 m!5894604))

(assert (=> b!4891020 d!1570580))

(declare-fun d!1570586 () Bool)

(assert (=> d!1570586 (= (isDefined!11037 lt!2004672) (not (isEmpty!30258 lt!2004672)))))

(declare-fun bs!1175810 () Bool)

(assert (= bs!1175810 d!1570586))

(assert (=> bs!1175810 m!5894378))

(assert (=> b!4890875 d!1570586))

(declare-fun b!4891117 () Bool)

(declare-fun e!3057829 () Bool)

(assert (=> b!4891117 (= e!3057829 (matchR!6530 (regex!8174 (h!62853 rulesArg!165)) (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004534 lt!2004534 (size!37138 lt!2004534)))))))

(declare-fun b!4891118 () Bool)

(declare-fun e!3057831 () Bool)

(declare-fun e!3057830 () Bool)

(assert (=> b!4891118 (= e!3057831 e!3057830)))

(declare-fun res!2089002 () Bool)

(assert (=> b!4891118 (=> (not res!2089002) (not e!3057830))))

(declare-fun lt!2004762 () Option!14026)

(assert (=> b!4891118 (= res!2089002 (matchR!6530 (regex!8174 (h!62853 rulesArg!165)) (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004762))))))))

(declare-fun d!1570588 () Bool)

(assert (=> d!1570588 e!3057831))

(declare-fun res!2089003 () Bool)

(assert (=> d!1570588 (=> res!2089003 e!3057831)))

(assert (=> d!1570588 (= res!2089003 (isEmpty!30258 lt!2004762))))

(declare-fun e!3057832 () Option!14026)

(assert (=> d!1570588 (= lt!2004762 e!3057832)))

(declare-fun c!831233 () Bool)

(declare-fun lt!2004759 () tuple2!60450)

(assert (=> d!1570588 (= c!831233 (isEmpty!30257 (_1!33528 lt!2004759)))))

(declare-fun findLongestMatch!1646 (Regex!13249 List!56527) tuple2!60450)

(assert (=> d!1570588 (= lt!2004759 (findLongestMatch!1646 (regex!8174 (h!62853 rulesArg!165)) lt!2004534))))

(assert (=> d!1570588 (ruleValid!3671 thiss!14805 (h!62853 rulesArg!165))))

(assert (=> d!1570588 (= (maxPrefixOneRule!3529 thiss!14805 (h!62853 rulesArg!165) lt!2004534) lt!2004762)))

(declare-fun b!4891119 () Bool)

(declare-fun res!2089004 () Bool)

(assert (=> b!4891119 (=> (not res!2089004) (not e!3057830))))

(assert (=> b!4891119 (= res!2089004 (= (rule!11358 (_1!33526 (get!19478 lt!2004762))) (h!62853 rulesArg!165)))))

(declare-fun b!4891120 () Bool)

(assert (=> b!4891120 (= e!3057830 (= (size!37136 (_1!33526 (get!19478 lt!2004762))) (size!37138 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004762))))))))

(declare-fun b!4891121 () Bool)

(assert (=> b!4891121 (= e!3057832 (Some!14025 (tuple2!60447 (Token!14913 (apply!13540 (transformation!8174 (h!62853 rulesArg!165)) (seqFromList!5936 (_1!33528 lt!2004759))) (h!62853 rulesArg!165) (size!37139 (seqFromList!5936 (_1!33528 lt!2004759))) (_1!33528 lt!2004759)) (_2!33528 lt!2004759))))))

(declare-fun lt!2004763 () Unit!146398)

(assert (=> b!4891121 (= lt!2004763 (longestMatchIsAcceptedByMatchOrIsEmpty!1715 (regex!8174 (h!62853 rulesArg!165)) lt!2004534))))

(declare-fun res!2089001 () Bool)

(assert (=> b!4891121 (= res!2089001 (isEmpty!30257 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004534 lt!2004534 (size!37138 lt!2004534)))))))

(assert (=> b!4891121 (=> res!2089001 e!3057829)))

(assert (=> b!4891121 e!3057829))

(declare-fun lt!2004760 () Unit!146398)

(assert (=> b!4891121 (= lt!2004760 lt!2004763)))

(declare-fun lt!2004761 () Unit!146398)

(declare-fun lemmaSemiInverse!2563 (TokenValueInjection!16276 BalanceConc!28914) Unit!146398)

(assert (=> b!4891121 (= lt!2004761 (lemmaSemiInverse!2563 (transformation!8174 (h!62853 rulesArg!165)) (seqFromList!5936 (_1!33528 lt!2004759))))))

(declare-fun b!4891122 () Bool)

(assert (=> b!4891122 (= e!3057832 None!14025)))

(declare-fun b!4891123 () Bool)

(declare-fun res!2088998 () Bool)

(assert (=> b!4891123 (=> (not res!2088998) (not e!3057830))))

(assert (=> b!4891123 (= res!2088998 (< (size!37138 (_2!33526 (get!19478 lt!2004762))) (size!37138 lt!2004534)))))

(declare-fun b!4891124 () Bool)

(declare-fun res!2088999 () Bool)

(assert (=> b!4891124 (=> (not res!2088999) (not e!3057830))))

(assert (=> b!4891124 (= res!2088999 (= (value!262109 (_1!33526 (get!19478 lt!2004762))) (apply!13540 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004762)))) (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004762)))))))))

(declare-fun b!4891125 () Bool)

(declare-fun res!2089000 () Bool)

(assert (=> b!4891125 (=> (not res!2089000) (not e!3057830))))

(assert (=> b!4891125 (= res!2089000 (= (++!12243 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004762)))) (_2!33526 (get!19478 lt!2004762))) lt!2004534))))

(assert (= (and d!1570588 c!831233) b!4891122))

(assert (= (and d!1570588 (not c!831233)) b!4891121))

(assert (= (and b!4891121 (not res!2089001)) b!4891117))

(assert (= (and d!1570588 (not res!2089003)) b!4891118))

(assert (= (and b!4891118 res!2089002) b!4891125))

(assert (= (and b!4891125 res!2089000) b!4891123))

(assert (= (and b!4891123 res!2088998) b!4891119))

(assert (= (and b!4891119 res!2089004) b!4891124))

(assert (= (and b!4891124 res!2088999) b!4891120))

(declare-fun m!5894606 () Bool)

(assert (=> b!4891124 m!5894606))

(declare-fun m!5894608 () Bool)

(assert (=> b!4891124 m!5894608))

(assert (=> b!4891124 m!5894608))

(declare-fun m!5894610 () Bool)

(assert (=> b!4891124 m!5894610))

(assert (=> b!4891120 m!5894606))

(declare-fun m!5894612 () Bool)

(assert (=> b!4891120 m!5894612))

(assert (=> b!4891123 m!5894606))

(declare-fun m!5894614 () Bool)

(assert (=> b!4891123 m!5894614))

(assert (=> b!4891123 m!5894382))

(assert (=> b!4891117 m!5894316))

(assert (=> b!4891117 m!5894382))

(assert (=> b!4891117 m!5894316))

(assert (=> b!4891117 m!5894382))

(declare-fun m!5894616 () Bool)

(assert (=> b!4891117 m!5894616))

(declare-fun m!5894618 () Bool)

(assert (=> b!4891117 m!5894618))

(assert (=> b!4891119 m!5894606))

(declare-fun m!5894620 () Bool)

(assert (=> d!1570588 m!5894620))

(declare-fun m!5894622 () Bool)

(assert (=> d!1570588 m!5894622))

(declare-fun m!5894624 () Bool)

(assert (=> d!1570588 m!5894624))

(assert (=> d!1570588 m!5894336))

(assert (=> b!4891118 m!5894606))

(declare-fun m!5894626 () Bool)

(assert (=> b!4891118 m!5894626))

(assert (=> b!4891118 m!5894626))

(declare-fun m!5894628 () Bool)

(assert (=> b!4891118 m!5894628))

(assert (=> b!4891118 m!5894628))

(declare-fun m!5894630 () Bool)

(assert (=> b!4891118 m!5894630))

(assert (=> b!4891121 m!5894316))

(assert (=> b!4891121 m!5894316))

(assert (=> b!4891121 m!5894382))

(assert (=> b!4891121 m!5894616))

(declare-fun m!5894632 () Bool)

(assert (=> b!4891121 m!5894632))

(declare-fun m!5894634 () Bool)

(assert (=> b!4891121 m!5894634))

(declare-fun m!5894636 () Bool)

(assert (=> b!4891121 m!5894636))

(assert (=> b!4891121 m!5894636))

(declare-fun m!5894638 () Bool)

(assert (=> b!4891121 m!5894638))

(assert (=> b!4891121 m!5894636))

(declare-fun m!5894640 () Bool)

(assert (=> b!4891121 m!5894640))

(assert (=> b!4891121 m!5894636))

(declare-fun m!5894642 () Bool)

(assert (=> b!4891121 m!5894642))

(assert (=> b!4891121 m!5894382))

(assert (=> b!4891125 m!5894606))

(assert (=> b!4891125 m!5894626))

(assert (=> b!4891125 m!5894626))

(assert (=> b!4891125 m!5894628))

(assert (=> b!4891125 m!5894628))

(declare-fun m!5894644 () Bool)

(assert (=> b!4891125 m!5894644))

(assert (=> bm!339168 d!1570588))

(assert (=> b!4890762 d!1570566))

(declare-fun d!1570590 () Bool)

(assert (=> d!1570590 (= (get!19478 (maxPrefix!4603 thiss!14805 (t!365275 rulesArg!165) (list!17722 input!1236))) (v!49977 (maxPrefix!4603 thiss!14805 (t!365275 rulesArg!165) (list!17722 input!1236))))))

(assert (=> b!4890762 d!1570590))

(assert (=> b!4890762 d!1570502))

(declare-fun b!4891126 () Bool)

(declare-fun e!3057834 () Bool)

(declare-fun e!3057835 () Bool)

(assert (=> b!4891126 (= e!3057834 e!3057835)))

(declare-fun res!2089006 () Bool)

(assert (=> b!4891126 (=> (not res!2089006) (not e!3057835))))

(declare-fun lt!2004764 () Option!14026)

(assert (=> b!4891126 (= res!2089006 (isDefined!11037 lt!2004764))))

(declare-fun b!4891127 () Bool)

(assert (=> b!4891127 (= e!3057835 (contains!19437 (t!365275 rulesArg!165) (rule!11358 (_1!33526 (get!19478 lt!2004764)))))))

(declare-fun d!1570592 () Bool)

(assert (=> d!1570592 e!3057834))

(declare-fun res!2089007 () Bool)

(assert (=> d!1570592 (=> res!2089007 e!3057834)))

(assert (=> d!1570592 (= res!2089007 (isEmpty!30258 lt!2004764))))

(declare-fun e!3057833 () Option!14026)

(assert (=> d!1570592 (= lt!2004764 e!3057833)))

(declare-fun c!831234 () Bool)

(assert (=> d!1570592 (= c!831234 (and ((_ is Cons!56405) (t!365275 rulesArg!165)) ((_ is Nil!56405) (t!365275 (t!365275 rulesArg!165)))))))

(declare-fun lt!2004765 () Unit!146398)

(declare-fun lt!2004768 () Unit!146398)

(assert (=> d!1570592 (= lt!2004765 lt!2004768)))

(assert (=> d!1570592 (isPrefix!4894 (list!17722 input!1236) (list!17722 input!1236))))

(assert (=> d!1570592 (= lt!2004768 (lemmaIsPrefixRefl!3291 (list!17722 input!1236) (list!17722 input!1236)))))

(assert (=> d!1570592 (rulesValidInductive!3153 thiss!14805 (t!365275 rulesArg!165))))

(assert (=> d!1570592 (= (maxPrefix!4603 thiss!14805 (t!365275 rulesArg!165) (list!17722 input!1236)) lt!2004764)))

(declare-fun bm!339176 () Bool)

(declare-fun call!339181 () Option!14026)

(assert (=> bm!339176 (= call!339181 (maxPrefixOneRule!3529 thiss!14805 (h!62853 (t!365275 rulesArg!165)) (list!17722 input!1236)))))

(declare-fun b!4891128 () Bool)

(assert (=> b!4891128 (= e!3057833 call!339181)))

(declare-fun b!4891129 () Bool)

(declare-fun res!2089008 () Bool)

(assert (=> b!4891129 (=> (not res!2089008) (not e!3057835))))

(assert (=> b!4891129 (= res!2089008 (matchR!6530 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004764)))) (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004764))))))))

(declare-fun b!4891130 () Bool)

(declare-fun res!2089011 () Bool)

(assert (=> b!4891130 (=> (not res!2089011) (not e!3057835))))

(assert (=> b!4891130 (= res!2089011 (= (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004764)))) (originalCharacters!8487 (_1!33526 (get!19478 lt!2004764)))))))

(declare-fun b!4891131 () Bool)

(declare-fun res!2089009 () Bool)

(assert (=> b!4891131 (=> (not res!2089009) (not e!3057835))))

(assert (=> b!4891131 (= res!2089009 (= (++!12243 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004764)))) (_2!33526 (get!19478 lt!2004764))) (list!17722 input!1236)))))

(declare-fun b!4891132 () Bool)

(declare-fun res!2089005 () Bool)

(assert (=> b!4891132 (=> (not res!2089005) (not e!3057835))))

(assert (=> b!4891132 (= res!2089005 (< (size!37138 (_2!33526 (get!19478 lt!2004764))) (size!37138 (list!17722 input!1236))))))

(declare-fun b!4891133 () Bool)

(declare-fun res!2089010 () Bool)

(assert (=> b!4891133 (=> (not res!2089010) (not e!3057835))))

(assert (=> b!4891133 (= res!2089010 (= (value!262109 (_1!33526 (get!19478 lt!2004764))) (apply!13540 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004764)))) (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004764)))))))))

(declare-fun b!4891134 () Bool)

(declare-fun lt!2004766 () Option!14026)

(declare-fun lt!2004767 () Option!14026)

(assert (=> b!4891134 (= e!3057833 (ite (and ((_ is None!14025) lt!2004766) ((_ is None!14025) lt!2004767)) None!14025 (ite ((_ is None!14025) lt!2004767) lt!2004766 (ite ((_ is None!14025) lt!2004766) lt!2004767 (ite (>= (size!37136 (_1!33526 (v!49977 lt!2004766))) (size!37136 (_1!33526 (v!49977 lt!2004767)))) lt!2004766 lt!2004767)))))))

(assert (=> b!4891134 (= lt!2004766 call!339181)))

(assert (=> b!4891134 (= lt!2004767 (maxPrefix!4603 thiss!14805 (t!365275 (t!365275 rulesArg!165)) (list!17722 input!1236)))))

(assert (= (and d!1570592 c!831234) b!4891128))

(assert (= (and d!1570592 (not c!831234)) b!4891134))

(assert (= (or b!4891128 b!4891134) bm!339176))

(assert (= (and d!1570592 (not res!2089007)) b!4891126))

(assert (= (and b!4891126 res!2089006) b!4891130))

(assert (= (and b!4891130 res!2089011) b!4891132))

(assert (= (and b!4891132 res!2089005) b!4891131))

(assert (= (and b!4891131 res!2089009) b!4891133))

(assert (= (and b!4891133 res!2089010) b!4891129))

(assert (= (and b!4891129 res!2089008) b!4891127))

(declare-fun m!5894646 () Bool)

(assert (=> b!4891133 m!5894646))

(declare-fun m!5894648 () Bool)

(assert (=> b!4891133 m!5894648))

(assert (=> b!4891133 m!5894648))

(declare-fun m!5894650 () Bool)

(assert (=> b!4891133 m!5894650))

(assert (=> b!4891131 m!5894646))

(declare-fun m!5894652 () Bool)

(assert (=> b!4891131 m!5894652))

(assert (=> b!4891131 m!5894652))

(declare-fun m!5894654 () Bool)

(assert (=> b!4891131 m!5894654))

(assert (=> b!4891131 m!5894654))

(declare-fun m!5894656 () Bool)

(assert (=> b!4891131 m!5894656))

(assert (=> bm!339176 m!5894176))

(declare-fun m!5894658 () Bool)

(assert (=> bm!339176 m!5894658))

(assert (=> b!4891130 m!5894646))

(assert (=> b!4891130 m!5894652))

(assert (=> b!4891130 m!5894652))

(assert (=> b!4891130 m!5894654))

(assert (=> b!4891129 m!5894646))

(assert (=> b!4891129 m!5894652))

(assert (=> b!4891129 m!5894652))

(assert (=> b!4891129 m!5894654))

(assert (=> b!4891129 m!5894654))

(declare-fun m!5894660 () Bool)

(assert (=> b!4891129 m!5894660))

(declare-fun m!5894662 () Bool)

(assert (=> d!1570592 m!5894662))

(assert (=> d!1570592 m!5894176))

(assert (=> d!1570592 m!5894176))

(assert (=> d!1570592 m!5894576))

(assert (=> d!1570592 m!5894176))

(assert (=> d!1570592 m!5894176))

(assert (=> d!1570592 m!5894578))

(assert (=> d!1570592 m!5894236))

(assert (=> b!4891132 m!5894646))

(declare-fun m!5894664 () Bool)

(assert (=> b!4891132 m!5894664))

(assert (=> b!4891132 m!5894176))

(declare-fun m!5894666 () Bool)

(assert (=> b!4891132 m!5894666))

(assert (=> b!4891127 m!5894646))

(declare-fun m!5894668 () Bool)

(assert (=> b!4891127 m!5894668))

(assert (=> b!4891134 m!5894176))

(declare-fun m!5894670 () Bool)

(assert (=> b!4891134 m!5894670))

(declare-fun m!5894672 () Bool)

(assert (=> b!4891126 m!5894672))

(assert (=> b!4890762 d!1570592))

(assert (=> b!4890762 d!1570572))

(assert (=> b!4890764 d!1570572))

(assert (=> b!4890764 d!1570568))

(assert (=> b!4890764 d!1570570))

(assert (=> b!4890764 d!1570502))

(declare-fun b!4891163 () Bool)

(declare-fun e!3057855 () Bool)

(assert (=> b!4891163 (= e!3057855 (= (head!10455 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660)))) (c!831176 (regex!8174 (h!62853 rulesArg!165)))))))

(declare-fun b!4891164 () Bool)

(declare-fun e!3057856 () Bool)

(declare-fun lt!2004771 () Bool)

(assert (=> b!4891164 (= e!3057856 (not lt!2004771))))

(declare-fun b!4891165 () Bool)

(declare-fun res!2089035 () Bool)

(declare-fun e!3057850 () Bool)

(assert (=> b!4891165 (=> res!2089035 e!3057850)))

(assert (=> b!4891165 (= res!2089035 (not (isEmpty!30257 (tail!9601 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660)))))))))

(declare-fun b!4891166 () Bool)

(declare-fun e!3057851 () Bool)

(assert (=> b!4891166 (= e!3057851 e!3057850)))

(declare-fun res!2089032 () Bool)

(assert (=> b!4891166 (=> res!2089032 e!3057850)))

(declare-fun call!339184 () Bool)

(assert (=> b!4891166 (= res!2089032 call!339184)))

(declare-fun b!4891167 () Bool)

(declare-fun res!2089028 () Bool)

(declare-fun e!3057854 () Bool)

(assert (=> b!4891167 (=> res!2089028 e!3057854)))

(assert (=> b!4891167 (= res!2089028 (not ((_ is ElementMatch!13249) (regex!8174 (h!62853 rulesArg!165)))))))

(assert (=> b!4891167 (= e!3057856 e!3057854)))

(declare-fun b!4891168 () Bool)

(assert (=> b!4891168 (= e!3057854 e!3057851)))

(declare-fun res!2089034 () Bool)

(assert (=> b!4891168 (=> (not res!2089034) (not e!3057851))))

(assert (=> b!4891168 (= res!2089034 (not lt!2004771))))

(declare-fun b!4891169 () Bool)

(declare-fun e!3057853 () Bool)

(declare-fun derivativeStep!3876 (Regex!13249 C!26696) Regex!13249)

(assert (=> b!4891169 (= e!3057853 (matchR!6530 (derivativeStep!3876 (regex!8174 (h!62853 rulesArg!165)) (head!10455 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660))))) (tail!9601 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660))))))))

(declare-fun b!4891171 () Bool)

(declare-fun e!3057852 () Bool)

(assert (=> b!4891171 (= e!3057852 e!3057856)))

(declare-fun c!831241 () Bool)

(assert (=> b!4891171 (= c!831241 ((_ is EmptyLang!13249) (regex!8174 (h!62853 rulesArg!165))))))

(declare-fun b!4891172 () Bool)

(declare-fun res!2089031 () Bool)

(assert (=> b!4891172 (=> res!2089031 e!3057854)))

(assert (=> b!4891172 (= res!2089031 e!3057855)))

(declare-fun res!2089030 () Bool)

(assert (=> b!4891172 (=> (not res!2089030) (not e!3057855))))

(assert (=> b!4891172 (= res!2089030 lt!2004771)))

(declare-fun b!4891173 () Bool)

(assert (=> b!4891173 (= e!3057852 (= lt!2004771 call!339184))))

(declare-fun b!4891174 () Bool)

(assert (=> b!4891174 (= e!3057850 (not (= (head!10455 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660)))) (c!831176 (regex!8174 (h!62853 rulesArg!165))))))))

(declare-fun b!4891175 () Bool)

(declare-fun res!2089033 () Bool)

(assert (=> b!4891175 (=> (not res!2089033) (not e!3057855))))

(assert (=> b!4891175 (= res!2089033 (not call!339184))))

(declare-fun d!1570594 () Bool)

(assert (=> d!1570594 e!3057852))

(declare-fun c!831243 () Bool)

(assert (=> d!1570594 (= c!831243 ((_ is EmptyExpr!13249) (regex!8174 (h!62853 rulesArg!165))))))

(assert (=> d!1570594 (= lt!2004771 e!3057853)))

(declare-fun c!831242 () Bool)

(assert (=> d!1570594 (= c!831242 (isEmpty!30257 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660)))))))

(declare-fun validRegex!5882 (Regex!13249) Bool)

(assert (=> d!1570594 (validRegex!5882 (regex!8174 (h!62853 rulesArg!165)))))

(assert (=> d!1570594 (= (matchR!6530 (regex!8174 (h!62853 rulesArg!165)) (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660)))) lt!2004771)))

(declare-fun b!4891170 () Bool)

(declare-fun nullable!4555 (Regex!13249) Bool)

(assert (=> b!4891170 (= e!3057853 (nullable!4555 (regex!8174 (h!62853 rulesArg!165))))))

(declare-fun b!4891176 () Bool)

(declare-fun res!2089029 () Bool)

(assert (=> b!4891176 (=> (not res!2089029) (not e!3057855))))

(assert (=> b!4891176 (= res!2089029 (isEmpty!30257 (tail!9601 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660))))))))

(declare-fun bm!339179 () Bool)

(assert (=> bm!339179 (= call!339184 (isEmpty!30257 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660)))))))

(assert (= (and d!1570594 c!831242) b!4891170))

(assert (= (and d!1570594 (not c!831242)) b!4891169))

(assert (= (and d!1570594 c!831243) b!4891173))

(assert (= (and d!1570594 (not c!831243)) b!4891171))

(assert (= (and b!4891171 c!831241) b!4891164))

(assert (= (and b!4891171 (not c!831241)) b!4891167))

(assert (= (and b!4891167 (not res!2089028)) b!4891172))

(assert (= (and b!4891172 res!2089030) b!4891175))

(assert (= (and b!4891175 res!2089033) b!4891176))

(assert (= (and b!4891176 res!2089029) b!4891163))

(assert (= (and b!4891172 (not res!2089031)) b!4891168))

(assert (= (and b!4891168 res!2089034) b!4891166))

(assert (= (and b!4891166 (not res!2089032)) b!4891165))

(assert (= (and b!4891165 (not res!2089035)) b!4891174))

(assert (= (or b!4891173 b!4891166 b!4891175) bm!339179))

(declare-fun m!5894674 () Bool)

(assert (=> b!4891163 m!5894674))

(assert (=> b!4891174 m!5894674))

(assert (=> b!4891169 m!5894674))

(assert (=> b!4891169 m!5894674))

(declare-fun m!5894676 () Bool)

(assert (=> b!4891169 m!5894676))

(declare-fun m!5894678 () Bool)

(assert (=> b!4891169 m!5894678))

(assert (=> b!4891169 m!5894676))

(assert (=> b!4891169 m!5894678))

(declare-fun m!5894680 () Bool)

(assert (=> b!4891169 m!5894680))

(assert (=> b!4891176 m!5894678))

(assert (=> b!4891176 m!5894678))

(declare-fun m!5894682 () Bool)

(assert (=> b!4891176 m!5894682))

(assert (=> b!4891165 m!5894678))

(assert (=> b!4891165 m!5894678))

(assert (=> b!4891165 m!5894682))

(assert (=> bm!339179 m!5894360))

(assert (=> d!1570594 m!5894360))

(declare-fun m!5894684 () Bool)

(assert (=> d!1570594 m!5894684))

(declare-fun m!5894686 () Bool)

(assert (=> b!4891170 m!5894686))

(assert (=> b!4890844 d!1570594))

(declare-fun bm!339223 () Bool)

(declare-fun call!339233 () List!56527)

(assert (=> bm!339223 (= call!339233 (tail!9601 lt!2004660))))

(declare-fun bm!339224 () Bool)

(declare-fun call!339234 () C!26696)

(assert (=> bm!339224 (= call!339234 (head!10455 lt!2004660))))

(declare-fun bm!339225 () Bool)

(declare-fun call!339231 () Bool)

(assert (=> bm!339225 (= call!339231 (isPrefix!4894 lt!2004660 lt!2004660))))

(declare-fun b!4891308 () Bool)

(declare-fun e!3057932 () Unit!146398)

(declare-fun Unit!146403 () Unit!146398)

(assert (=> b!4891308 (= e!3057932 Unit!146403)))

(declare-fun bm!339226 () Bool)

(declare-fun call!339235 () Bool)

(assert (=> bm!339226 (= call!339235 (nullable!4555 (regex!8174 (h!62853 rulesArg!165))))))

(declare-fun b!4891309 () Bool)

(declare-fun e!3057930 () tuple2!60450)

(assert (=> b!4891309 (= e!3057930 (tuple2!60451 Nil!56403 Nil!56403))))

(declare-fun b!4891310 () Bool)

(declare-fun e!3057933 () Bool)

(declare-fun e!3057936 () Bool)

(assert (=> b!4891310 (= e!3057933 e!3057936)))

(declare-fun res!2089077 () Bool)

(assert (=> b!4891310 (=> res!2089077 e!3057936)))

(declare-fun lt!2004942 () tuple2!60450)

(assert (=> b!4891310 (= res!2089077 (isEmpty!30257 (_1!33528 lt!2004942)))))

(declare-fun b!4891311 () Bool)

(assert (=> b!4891311 (= e!3057930 (tuple2!60451 Nil!56403 lt!2004660))))

(declare-fun bm!339227 () Bool)

(declare-fun call!339230 () Unit!146398)

(assert (=> bm!339227 (= call!339230 (lemmaIsPrefixRefl!3291 lt!2004660 lt!2004660))))

(declare-fun b!4891313 () Bool)

(declare-fun c!831288 () Bool)

(assert (=> b!4891313 (= c!831288 call!339235)))

(declare-fun lt!2004940 () Unit!146398)

(declare-fun lt!2004930 () Unit!146398)

(assert (=> b!4891313 (= lt!2004940 lt!2004930)))

(assert (=> b!4891313 (= lt!2004660 Nil!56403)))

(declare-fun call!339229 () Unit!146398)

(assert (=> b!4891313 (= lt!2004930 call!339229)))

(declare-fun lt!2004947 () Unit!146398)

(declare-fun lt!2004949 () Unit!146398)

(assert (=> b!4891313 (= lt!2004947 lt!2004949)))

(assert (=> b!4891313 call!339231))

(assert (=> b!4891313 (= lt!2004949 call!339230)))

(declare-fun e!3057934 () tuple2!60450)

(assert (=> b!4891313 (= e!3057934 e!3057930)))

(declare-fun call!339228 () Regex!13249)

(declare-fun bm!339228 () Bool)

(declare-fun lt!2004939 () List!56527)

(declare-fun call!339232 () tuple2!60450)

(assert (=> bm!339228 (= call!339232 (findLongestMatchInner!1752 call!339228 lt!2004939 (+ (size!37138 Nil!56403) 1) call!339233 lt!2004660 (size!37138 lt!2004660)))))

(declare-fun bm!339229 () Bool)

(assert (=> bm!339229 (= call!339228 (derivativeStep!3876 (regex!8174 (h!62853 rulesArg!165)) call!339234))))

(declare-fun b!4891314 () Bool)

(declare-fun Unit!146404 () Unit!146398)

(assert (=> b!4891314 (= e!3057932 Unit!146404)))

(declare-fun lt!2004938 () Unit!146398)

(assert (=> b!4891314 (= lt!2004938 call!339230)))

(assert (=> b!4891314 call!339231))

(declare-fun lt!2004957 () Unit!146398)

(assert (=> b!4891314 (= lt!2004957 lt!2004938)))

(declare-fun lt!2004955 () Unit!146398)

(assert (=> b!4891314 (= lt!2004955 call!339229)))

(assert (=> b!4891314 (= lt!2004660 Nil!56403)))

(declare-fun lt!2004946 () Unit!146398)

(assert (=> b!4891314 (= lt!2004946 lt!2004955)))

(assert (=> b!4891314 false))

(declare-fun bm!339230 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1057 (List!56527 List!56527 List!56527) Unit!146398)

(assert (=> bm!339230 (= call!339229 (lemmaIsPrefixSameLengthThenSameList!1057 lt!2004660 Nil!56403 lt!2004660))))

(declare-fun b!4891315 () Bool)

(declare-fun e!3057929 () tuple2!60450)

(assert (=> b!4891315 (= e!3057929 call!339232)))

(declare-fun b!4891316 () Bool)

(assert (=> b!4891316 (= e!3057936 (>= (size!37138 (_1!33528 lt!2004942)) (size!37138 Nil!56403)))))

(declare-fun b!4891317 () Bool)

(declare-fun e!3057935 () tuple2!60450)

(assert (=> b!4891317 (= e!3057935 e!3057934)))

(declare-fun c!831287 () Bool)

(assert (=> b!4891317 (= c!831287 (= (size!37138 Nil!56403) (size!37138 lt!2004660)))))

(declare-fun b!4891318 () Bool)

(assert (=> b!4891318 (= e!3057935 (tuple2!60451 Nil!56403 lt!2004660))))

(declare-fun b!4891319 () Bool)

(declare-fun e!3057931 () tuple2!60450)

(assert (=> b!4891319 (= e!3057929 e!3057931)))

(declare-fun lt!2004936 () tuple2!60450)

(assert (=> b!4891319 (= lt!2004936 call!339232)))

(declare-fun c!831289 () Bool)

(assert (=> b!4891319 (= c!831289 (isEmpty!30257 (_1!33528 lt!2004936)))))

(declare-fun b!4891320 () Bool)

(assert (=> b!4891320 (= e!3057931 (tuple2!60451 Nil!56403 lt!2004660))))

(declare-fun b!4891321 () Bool)

(assert (=> b!4891321 (= e!3057931 lt!2004936)))

(declare-fun b!4891312 () Bool)

(declare-fun c!831285 () Bool)

(assert (=> b!4891312 (= c!831285 call!339235)))

(declare-fun lt!2004932 () Unit!146398)

(declare-fun lt!2004954 () Unit!146398)

(assert (=> b!4891312 (= lt!2004932 lt!2004954)))

(declare-fun lt!2004953 () C!26696)

(declare-fun lt!2004948 () List!56527)

(assert (=> b!4891312 (= (++!12243 (++!12243 Nil!56403 (Cons!56403 lt!2004953 Nil!56403)) lt!2004948) lt!2004660)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1329 (List!56527 C!26696 List!56527 List!56527) Unit!146398)

(assert (=> b!4891312 (= lt!2004954 (lemmaMoveElementToOtherListKeepsConcatEq!1329 Nil!56403 lt!2004953 lt!2004948 lt!2004660))))

(assert (=> b!4891312 (= lt!2004948 (tail!9601 lt!2004660))))

(assert (=> b!4891312 (= lt!2004953 (head!10455 lt!2004660))))

(declare-fun lt!2004937 () Unit!146398)

(declare-fun lt!2004934 () Unit!146398)

(assert (=> b!4891312 (= lt!2004937 lt!2004934)))

(declare-fun getSuffix!2886 (List!56527 List!56527) List!56527)

(assert (=> b!4891312 (isPrefix!4894 (++!12243 Nil!56403 (Cons!56403 (head!10455 (getSuffix!2886 lt!2004660 Nil!56403)) Nil!56403)) lt!2004660)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!711 (List!56527 List!56527) Unit!146398)

(assert (=> b!4891312 (= lt!2004934 (lemmaAddHeadSuffixToPrefixStillPrefix!711 Nil!56403 lt!2004660))))

(declare-fun lt!2004944 () Unit!146398)

(declare-fun lt!2004943 () Unit!146398)

(assert (=> b!4891312 (= lt!2004944 lt!2004943)))

(assert (=> b!4891312 (= lt!2004943 (lemmaAddHeadSuffixToPrefixStillPrefix!711 Nil!56403 lt!2004660))))

(assert (=> b!4891312 (= lt!2004939 (++!12243 Nil!56403 (Cons!56403 (head!10455 lt!2004660) Nil!56403)))))

(declare-fun lt!2004935 () Unit!146398)

(assert (=> b!4891312 (= lt!2004935 e!3057932)))

(declare-fun c!831286 () Bool)

(assert (=> b!4891312 (= c!831286 (= (size!37138 Nil!56403) (size!37138 lt!2004660)))))

(declare-fun lt!2004931 () Unit!146398)

(declare-fun lt!2004941 () Unit!146398)

(assert (=> b!4891312 (= lt!2004931 lt!2004941)))

(assert (=> b!4891312 (<= (size!37138 Nil!56403) (size!37138 lt!2004660))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!623 (List!56527 List!56527) Unit!146398)

(assert (=> b!4891312 (= lt!2004941 (lemmaIsPrefixThenSmallerEqSize!623 Nil!56403 lt!2004660))))

(assert (=> b!4891312 (= e!3057934 e!3057929)))

(declare-fun d!1570596 () Bool)

(assert (=> d!1570596 e!3057933))

(declare-fun res!2089076 () Bool)

(assert (=> d!1570596 (=> (not res!2089076) (not e!3057933))))

(assert (=> d!1570596 (= res!2089076 (= (++!12243 (_1!33528 lt!2004942) (_2!33528 lt!2004942)) lt!2004660))))

(assert (=> d!1570596 (= lt!2004942 e!3057935)))

(declare-fun c!831290 () Bool)

(declare-fun lostCause!1085 (Regex!13249) Bool)

(assert (=> d!1570596 (= c!831290 (lostCause!1085 (regex!8174 (h!62853 rulesArg!165))))))

(declare-fun lt!2004951 () Unit!146398)

(declare-fun Unit!146406 () Unit!146398)

(assert (=> d!1570596 (= lt!2004951 Unit!146406)))

(assert (=> d!1570596 (= (getSuffix!2886 lt!2004660 Nil!56403) lt!2004660)))

(declare-fun lt!2004952 () Unit!146398)

(declare-fun lt!2004933 () Unit!146398)

(assert (=> d!1570596 (= lt!2004952 lt!2004933)))

(declare-fun lt!2004950 () List!56527)

(assert (=> d!1570596 (= lt!2004660 lt!2004950)))

(declare-fun lemmaSamePrefixThenSameSuffix!2302 (List!56527 List!56527 List!56527 List!56527 List!56527) Unit!146398)

(assert (=> d!1570596 (= lt!2004933 (lemmaSamePrefixThenSameSuffix!2302 Nil!56403 lt!2004660 Nil!56403 lt!2004950 lt!2004660))))

(assert (=> d!1570596 (= lt!2004950 (getSuffix!2886 lt!2004660 Nil!56403))))

(declare-fun lt!2004956 () Unit!146398)

(declare-fun lt!2004945 () Unit!146398)

(assert (=> d!1570596 (= lt!2004956 lt!2004945)))

(assert (=> d!1570596 (isPrefix!4894 Nil!56403 (++!12243 Nil!56403 lt!2004660))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3122 (List!56527 List!56527) Unit!146398)

(assert (=> d!1570596 (= lt!2004945 (lemmaConcatTwoListThenFirstIsPrefix!3122 Nil!56403 lt!2004660))))

(assert (=> d!1570596 (validRegex!5882 (regex!8174 (h!62853 rulesArg!165)))))

(assert (=> d!1570596 (= (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660)) lt!2004942)))

(assert (= (and d!1570596 c!831290) b!4891318))

(assert (= (and d!1570596 (not c!831290)) b!4891317))

(assert (= (and b!4891317 c!831287) b!4891313))

(assert (= (and b!4891317 (not c!831287)) b!4891312))

(assert (= (and b!4891313 c!831288) b!4891309))

(assert (= (and b!4891313 (not c!831288)) b!4891311))

(assert (= (and b!4891312 c!831286) b!4891314))

(assert (= (and b!4891312 (not c!831286)) b!4891308))

(assert (= (and b!4891312 c!831285) b!4891319))

(assert (= (and b!4891312 (not c!831285)) b!4891315))

(assert (= (and b!4891319 c!831289) b!4891320))

(assert (= (and b!4891319 (not c!831289)) b!4891321))

(assert (= (or b!4891319 b!4891315) bm!339223))

(assert (= (or b!4891319 b!4891315) bm!339224))

(assert (= (or b!4891319 b!4891315) bm!339229))

(assert (= (or b!4891319 b!4891315) bm!339228))

(assert (= (or b!4891313 b!4891312) bm!339226))

(assert (= (or b!4891313 b!4891314) bm!339227))

(assert (= (or b!4891313 b!4891314) bm!339230))

(assert (= (or b!4891313 b!4891314) bm!339225))

(assert (= (and d!1570596 res!2089076) b!4891310))

(assert (= (and b!4891310 (not res!2089077)) b!4891316))

(assert (=> bm!339228 m!5894318))

(declare-fun m!5894792 () Bool)

(assert (=> bm!339228 m!5894792))

(declare-fun m!5894794 () Bool)

(assert (=> d!1570596 m!5894794))

(declare-fun m!5894796 () Bool)

(assert (=> d!1570596 m!5894796))

(declare-fun m!5894798 () Bool)

(assert (=> d!1570596 m!5894798))

(assert (=> d!1570596 m!5894684))

(declare-fun m!5894800 () Bool)

(assert (=> d!1570596 m!5894800))

(declare-fun m!5894802 () Bool)

(assert (=> d!1570596 m!5894802))

(declare-fun m!5894804 () Bool)

(assert (=> d!1570596 m!5894804))

(assert (=> d!1570596 m!5894796))

(declare-fun m!5894806 () Bool)

(assert (=> d!1570596 m!5894806))

(declare-fun m!5894808 () Bool)

(assert (=> b!4891319 m!5894808))

(declare-fun m!5894810 () Bool)

(assert (=> bm!339229 m!5894810))

(declare-fun m!5894812 () Bool)

(assert (=> bm!339227 m!5894812))

(declare-fun m!5894814 () Bool)

(assert (=> bm!339225 m!5894814))

(declare-fun m!5894816 () Bool)

(assert (=> b!4891316 m!5894816))

(assert (=> b!4891316 m!5894316))

(declare-fun m!5894818 () Bool)

(assert (=> bm!339223 m!5894818))

(declare-fun m!5894820 () Bool)

(assert (=> b!4891310 m!5894820))

(declare-fun m!5894822 () Bool)

(assert (=> bm!339224 m!5894822))

(assert (=> b!4891312 m!5894316))

(declare-fun m!5894824 () Bool)

(assert (=> b!4891312 m!5894824))

(assert (=> b!4891312 m!5894800))

(declare-fun m!5894826 () Bool)

(assert (=> b!4891312 m!5894826))

(declare-fun m!5894828 () Bool)

(assert (=> b!4891312 m!5894828))

(declare-fun m!5894830 () Bool)

(assert (=> b!4891312 m!5894830))

(declare-fun m!5894832 () Bool)

(assert (=> b!4891312 m!5894832))

(assert (=> b!4891312 m!5894832))

(declare-fun m!5894834 () Bool)

(assert (=> b!4891312 m!5894834))

(assert (=> b!4891312 m!5894818))

(assert (=> b!4891312 m!5894822))

(assert (=> b!4891312 m!5894830))

(declare-fun m!5894836 () Bool)

(assert (=> b!4891312 m!5894836))

(assert (=> b!4891312 m!5894800))

(assert (=> b!4891312 m!5894318))

(declare-fun m!5894838 () Bool)

(assert (=> b!4891312 m!5894838))

(declare-fun m!5894840 () Bool)

(assert (=> b!4891312 m!5894840))

(assert (=> bm!339226 m!5894686))

(declare-fun m!5894842 () Bool)

(assert (=> bm!339230 m!5894842))

(assert (=> b!4890844 d!1570596))

(declare-fun d!1570634 () Bool)

(declare-fun lt!2004960 () Int)

(assert (=> d!1570634 (>= lt!2004960 0)))

(declare-fun e!3057939 () Int)

(assert (=> d!1570634 (= lt!2004960 e!3057939)))

(declare-fun c!831293 () Bool)

(assert (=> d!1570634 (= c!831293 ((_ is Nil!56403) Nil!56403))))

(assert (=> d!1570634 (= (size!37138 Nil!56403) lt!2004960)))

(declare-fun b!4891326 () Bool)

(assert (=> b!4891326 (= e!3057939 0)))

(declare-fun b!4891327 () Bool)

(assert (=> b!4891327 (= e!3057939 (+ 1 (size!37138 (t!365273 Nil!56403))))))

(assert (= (and d!1570634 c!831293) b!4891326))

(assert (= (and d!1570634 (not c!831293)) b!4891327))

(declare-fun m!5894844 () Bool)

(assert (=> b!4891327 m!5894844))

(assert (=> b!4890844 d!1570634))

(declare-fun d!1570636 () Bool)

(declare-fun lt!2004961 () Int)

(assert (=> d!1570636 (>= lt!2004961 0)))

(declare-fun e!3057940 () Int)

(assert (=> d!1570636 (= lt!2004961 e!3057940)))

(declare-fun c!831294 () Bool)

(assert (=> d!1570636 (= c!831294 ((_ is Nil!56403) lt!2004660))))

(assert (=> d!1570636 (= (size!37138 lt!2004660) lt!2004961)))

(declare-fun b!4891328 () Bool)

(assert (=> b!4891328 (= e!3057940 0)))

(declare-fun b!4891329 () Bool)

(assert (=> b!4891329 (= e!3057940 (+ 1 (size!37138 (t!365273 lt!2004660))))))

(assert (= (and d!1570636 c!831294) b!4891328))

(assert (= (and d!1570636 (not c!831294)) b!4891329))

(declare-fun m!5894846 () Bool)

(assert (=> b!4891329 m!5894846))

(assert (=> b!4890844 d!1570636))

(declare-fun b!4891330 () Bool)

(declare-fun e!3057946 () Bool)

(assert (=> b!4891330 (= e!3057946 (= (head!10455 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))) (c!831176 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))))))))

(declare-fun b!4891331 () Bool)

(declare-fun e!3057947 () Bool)

(declare-fun lt!2004962 () Bool)

(assert (=> b!4891331 (= e!3057947 (not lt!2004962))))

(declare-fun b!4891332 () Bool)

(declare-fun res!2089085 () Bool)

(declare-fun e!3057941 () Bool)

(assert (=> b!4891332 (=> res!2089085 e!3057941)))

(assert (=> b!4891332 (= res!2089085 (not (isEmpty!30257 (tail!9601 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))))))))

(declare-fun b!4891333 () Bool)

(declare-fun e!3057942 () Bool)

(assert (=> b!4891333 (= e!3057942 e!3057941)))

(declare-fun res!2089082 () Bool)

(assert (=> b!4891333 (=> res!2089082 e!3057941)))

(declare-fun call!339236 () Bool)

(assert (=> b!4891333 (= res!2089082 call!339236)))

(declare-fun b!4891334 () Bool)

(declare-fun res!2089078 () Bool)

(declare-fun e!3057945 () Bool)

(assert (=> b!4891334 (=> res!2089078 e!3057945)))

(assert (=> b!4891334 (= res!2089078 (not ((_ is ElementMatch!13249) (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))))))))

(assert (=> b!4891334 (= e!3057947 e!3057945)))

(declare-fun b!4891335 () Bool)

(assert (=> b!4891335 (= e!3057945 e!3057942)))

(declare-fun res!2089084 () Bool)

(assert (=> b!4891335 (=> (not res!2089084) (not e!3057942))))

(assert (=> b!4891335 (= res!2089084 (not lt!2004962))))

(declare-fun b!4891336 () Bool)

(declare-fun e!3057944 () Bool)

(assert (=> b!4891336 (= e!3057944 (matchR!6530 (derivativeStep!3876 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))) (head!10455 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672)))))) (tail!9601 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672)))))))))

(declare-fun b!4891338 () Bool)

(declare-fun e!3057943 () Bool)

(assert (=> b!4891338 (= e!3057943 e!3057947)))

(declare-fun c!831295 () Bool)

(assert (=> b!4891338 (= c!831295 ((_ is EmptyLang!13249) (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))))))

(declare-fun b!4891339 () Bool)

(declare-fun res!2089081 () Bool)

(assert (=> b!4891339 (=> res!2089081 e!3057945)))

(assert (=> b!4891339 (= res!2089081 e!3057946)))

(declare-fun res!2089080 () Bool)

(assert (=> b!4891339 (=> (not res!2089080) (not e!3057946))))

(assert (=> b!4891339 (= res!2089080 lt!2004962)))

(declare-fun b!4891340 () Bool)

(assert (=> b!4891340 (= e!3057943 (= lt!2004962 call!339236))))

(declare-fun b!4891341 () Bool)

(assert (=> b!4891341 (= e!3057941 (not (= (head!10455 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))) (c!831176 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))))))))

(declare-fun b!4891342 () Bool)

(declare-fun res!2089083 () Bool)

(assert (=> b!4891342 (=> (not res!2089083) (not e!3057946))))

(assert (=> b!4891342 (= res!2089083 (not call!339236))))

(declare-fun d!1570638 () Bool)

(assert (=> d!1570638 e!3057943))

(declare-fun c!831297 () Bool)

(assert (=> d!1570638 (= c!831297 ((_ is EmptyExpr!13249) (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))))))

(assert (=> d!1570638 (= lt!2004962 e!3057944)))

(declare-fun c!831296 () Bool)

(assert (=> d!1570638 (= c!831296 (isEmpty!30257 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))))))

(assert (=> d!1570638 (validRegex!5882 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))))))

(assert (=> d!1570638 (= (matchR!6530 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))) (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))) lt!2004962)))

(declare-fun b!4891337 () Bool)

(assert (=> b!4891337 (= e!3057944 (nullable!4555 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))))))

(declare-fun b!4891343 () Bool)

(declare-fun res!2089079 () Bool)

(assert (=> b!4891343 (=> (not res!2089079) (not e!3057946))))

(assert (=> b!4891343 (= res!2089079 (isEmpty!30257 (tail!9601 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672)))))))))

(declare-fun bm!339231 () Bool)

(assert (=> bm!339231 (= call!339236 (isEmpty!30257 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))))))

(assert (= (and d!1570638 c!831296) b!4891337))

(assert (= (and d!1570638 (not c!831296)) b!4891336))

(assert (= (and d!1570638 c!831297) b!4891340))

(assert (= (and d!1570638 (not c!831297)) b!4891338))

(assert (= (and b!4891338 c!831295) b!4891331))

(assert (= (and b!4891338 (not c!831295)) b!4891334))

(assert (= (and b!4891334 (not res!2089078)) b!4891339))

(assert (= (and b!4891339 res!2089080) b!4891342))

(assert (= (and b!4891342 res!2089083) b!4891343))

(assert (= (and b!4891343 res!2089079) b!4891330))

(assert (= (and b!4891339 (not res!2089081)) b!4891335))

(assert (= (and b!4891335 res!2089084) b!4891333))

(assert (= (and b!4891333 (not res!2089082)) b!4891332))

(assert (= (and b!4891332 (not res!2089085)) b!4891341))

(assert (= (or b!4891340 b!4891333 b!4891342) bm!339231))

(assert (=> b!4891330 m!5894370))

(declare-fun m!5894848 () Bool)

(assert (=> b!4891330 m!5894848))

(assert (=> b!4891341 m!5894370))

(assert (=> b!4891341 m!5894848))

(assert (=> b!4891336 m!5894370))

(assert (=> b!4891336 m!5894848))

(assert (=> b!4891336 m!5894848))

(declare-fun m!5894850 () Bool)

(assert (=> b!4891336 m!5894850))

(assert (=> b!4891336 m!5894370))

(declare-fun m!5894852 () Bool)

(assert (=> b!4891336 m!5894852))

(assert (=> b!4891336 m!5894850))

(assert (=> b!4891336 m!5894852))

(declare-fun m!5894854 () Bool)

(assert (=> b!4891336 m!5894854))

(assert (=> b!4891343 m!5894370))

(assert (=> b!4891343 m!5894852))

(assert (=> b!4891343 m!5894852))

(declare-fun m!5894856 () Bool)

(assert (=> b!4891343 m!5894856))

(assert (=> b!4891332 m!5894370))

(assert (=> b!4891332 m!5894852))

(assert (=> b!4891332 m!5894852))

(assert (=> b!4891332 m!5894856))

(assert (=> bm!339231 m!5894370))

(declare-fun m!5894858 () Bool)

(assert (=> bm!339231 m!5894858))

(assert (=> d!1570638 m!5894370))

(assert (=> d!1570638 m!5894858))

(declare-fun m!5894860 () Bool)

(assert (=> d!1570638 m!5894860))

(declare-fun m!5894862 () Bool)

(assert (=> b!4891337 m!5894862))

(assert (=> b!4890878 d!1570638))

(declare-fun d!1570640 () Bool)

(assert (=> d!1570640 (= (get!19478 lt!2004672) (v!49977 lt!2004672))))

(assert (=> b!4890878 d!1570640))

(declare-fun d!1570642 () Bool)

(assert (=> d!1570642 (= (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672)))) (list!17724 (c!831175 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))))))

(declare-fun bs!1175819 () Bool)

(assert (= bs!1175819 d!1570642))

(declare-fun m!5894864 () Bool)

(assert (=> bs!1175819 m!5894864))

(assert (=> b!4890878 d!1570642))

(declare-fun d!1570644 () Bool)

(declare-fun lt!2004965 () BalanceConc!28914)

(assert (=> d!1570644 (= (list!17722 lt!2004965) (originalCharacters!8487 (_1!33526 (get!19478 lt!2004672))))))

(declare-fun dynLambda!22627 (Int TokenValue!8484) BalanceConc!28914)

(assert (=> d!1570644 (= lt!2004965 (dynLambda!22627 (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) (value!262109 (_1!33526 (get!19478 lt!2004672)))))))

(assert (=> d!1570644 (= (charsOf!5374 (_1!33526 (get!19478 lt!2004672))) lt!2004965)))

(declare-fun b_lambda!194127 () Bool)

(assert (=> (not b_lambda!194127) (not d!1570644)))

(declare-fun t!365295 () Bool)

(declare-fun tb!258555 () Bool)

(assert (=> (and b!4890709 (= (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))))) t!365295) tb!258555))

(declare-fun b!4891348 () Bool)

(declare-fun e!3057950 () Bool)

(declare-fun tp!1376723 () Bool)

(assert (=> b!4891348 (= e!3057950 (and (inv!72677 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) (value!262109 (_1!33526 (get!19478 lt!2004672)))))) tp!1376723))))

(declare-fun result!322110 () Bool)

(assert (=> tb!258555 (= result!322110 (and (inv!72679 (dynLambda!22627 (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) (value!262109 (_1!33526 (get!19478 lt!2004672))))) e!3057950))))

(assert (= tb!258555 b!4891348))

(declare-fun m!5894866 () Bool)

(assert (=> b!4891348 m!5894866))

(declare-fun m!5894868 () Bool)

(assert (=> tb!258555 m!5894868))

(assert (=> d!1570644 t!365295))

(declare-fun b_and!344507 () Bool)

(assert (= b_and!344477 (and (=> t!365295 result!322110) b_and!344507)))

(declare-fun t!365297 () Bool)

(declare-fun tb!258557 () Bool)

(assert (=> (and b!4891010 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))))) t!365297) tb!258557))

(declare-fun result!322114 () Bool)

(assert (= result!322114 result!322110))

(assert (=> d!1570644 t!365297))

(declare-fun b_and!344509 () Bool)

(assert (= b_and!344485 (and (=> t!365297 result!322114) b_and!344509)))

(declare-fun m!5894870 () Bool)

(assert (=> d!1570644 m!5894870))

(declare-fun m!5894872 () Bool)

(assert (=> d!1570644 m!5894872))

(assert (=> b!4890878 d!1570644))

(declare-fun b!4891377 () Bool)

(declare-fun res!2089105 () Bool)

(declare-fun e!3057964 () Bool)

(assert (=> b!4891377 (=> (not res!2089105) (not e!3057964))))

(declare-fun lt!2004978 () List!56527)

(assert (=> b!4891377 (= res!2089105 (= (size!37138 lt!2004978) (+ (size!37138 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))) (size!37138 (_2!33526 (get!19478 lt!2004672))))))))

(declare-fun b!4891378 () Bool)

(assert (=> b!4891378 (= e!3057964 (or (not (= (_2!33526 (get!19478 lt!2004672)) Nil!56403)) (= lt!2004978 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672)))))))))

(declare-fun b!4891375 () Bool)

(declare-fun e!3057963 () List!56527)

(assert (=> b!4891375 (= e!3057963 (_2!33526 (get!19478 lt!2004672)))))

(declare-fun d!1570646 () Bool)

(assert (=> d!1570646 e!3057964))

(declare-fun res!2089104 () Bool)

(assert (=> d!1570646 (=> (not res!2089104) (not e!3057964))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10015 (List!56527) (InoxSet C!26696))

(assert (=> d!1570646 (= res!2089104 (= (content!10015 lt!2004978) ((_ map or) (content!10015 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))) (content!10015 (_2!33526 (get!19478 lt!2004672))))))))

(assert (=> d!1570646 (= lt!2004978 e!3057963)))

(declare-fun c!831302 () Bool)

(assert (=> d!1570646 (= c!831302 ((_ is Nil!56403) (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))))))

(assert (=> d!1570646 (= (++!12243 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672)))) (_2!33526 (get!19478 lt!2004672))) lt!2004978)))

(declare-fun b!4891376 () Bool)

(assert (=> b!4891376 (= e!3057963 (Cons!56403 (h!62851 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))) (++!12243 (t!365273 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))) (_2!33526 (get!19478 lt!2004672)))))))

(assert (= (and d!1570646 c!831302) b!4891375))

(assert (= (and d!1570646 (not c!831302)) b!4891376))

(assert (= (and d!1570646 res!2089104) b!4891377))

(assert (= (and b!4891377 res!2089105) b!4891378))

(declare-fun m!5894874 () Bool)

(assert (=> b!4891377 m!5894874))

(assert (=> b!4891377 m!5894370))

(declare-fun m!5894876 () Bool)

(assert (=> b!4891377 m!5894876))

(assert (=> b!4891377 m!5894380))

(declare-fun m!5894878 () Bool)

(assert (=> d!1570646 m!5894878))

(assert (=> d!1570646 m!5894370))

(declare-fun m!5894880 () Bool)

(assert (=> d!1570646 m!5894880))

(declare-fun m!5894882 () Bool)

(assert (=> d!1570646 m!5894882))

(declare-fun m!5894884 () Bool)

(assert (=> b!4891376 m!5894884))

(assert (=> b!4890880 d!1570646))

(assert (=> b!4890880 d!1570642))

(assert (=> b!4890880 d!1570644))

(assert (=> b!4890880 d!1570640))

(declare-fun d!1570648 () Bool)

(assert (=> d!1570648 (= (get!19479 lt!2004654) (v!49976 lt!2004654))))

(assert (=> b!4890846 d!1570648))

(declare-fun d!1570650 () Bool)

(assert (=> d!1570650 (= (get!19478 (maxPrefixOneRule!3529 thiss!14805 (h!62853 rulesArg!165) (list!17722 input!1236))) (v!49977 (maxPrefixOneRule!3529 thiss!14805 (h!62853 rulesArg!165) (list!17722 input!1236))))))

(assert (=> b!4890846 d!1570650))

(declare-fun b!4891379 () Bool)

(declare-fun e!3057965 () Bool)

(assert (=> b!4891379 (= e!3057965 (matchR!6530 (regex!8174 (h!62853 rulesArg!165)) (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) (list!17722 input!1236) (list!17722 input!1236) (size!37138 (list!17722 input!1236))))))))

(declare-fun b!4891380 () Bool)

(declare-fun e!3057967 () Bool)

(declare-fun e!3057966 () Bool)

(assert (=> b!4891380 (= e!3057967 e!3057966)))

(declare-fun res!2089110 () Bool)

(assert (=> b!4891380 (=> (not res!2089110) (not e!3057966))))

(declare-fun lt!2004982 () Option!14026)

(assert (=> b!4891380 (= res!2089110 (matchR!6530 (regex!8174 (h!62853 rulesArg!165)) (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004982))))))))

(declare-fun d!1570652 () Bool)

(assert (=> d!1570652 e!3057967))

(declare-fun res!2089111 () Bool)

(assert (=> d!1570652 (=> res!2089111 e!3057967)))

(assert (=> d!1570652 (= res!2089111 (isEmpty!30258 lt!2004982))))

(declare-fun e!3057968 () Option!14026)

(assert (=> d!1570652 (= lt!2004982 e!3057968)))

(declare-fun c!831303 () Bool)

(declare-fun lt!2004979 () tuple2!60450)

(assert (=> d!1570652 (= c!831303 (isEmpty!30257 (_1!33528 lt!2004979)))))

(assert (=> d!1570652 (= lt!2004979 (findLongestMatch!1646 (regex!8174 (h!62853 rulesArg!165)) (list!17722 input!1236)))))

(assert (=> d!1570652 (ruleValid!3671 thiss!14805 (h!62853 rulesArg!165))))

(assert (=> d!1570652 (= (maxPrefixOneRule!3529 thiss!14805 (h!62853 rulesArg!165) (list!17722 input!1236)) lt!2004982)))

(declare-fun b!4891381 () Bool)

(declare-fun res!2089112 () Bool)

(assert (=> b!4891381 (=> (not res!2089112) (not e!3057966))))

(assert (=> b!4891381 (= res!2089112 (= (rule!11358 (_1!33526 (get!19478 lt!2004982))) (h!62853 rulesArg!165)))))

(declare-fun b!4891382 () Bool)

(assert (=> b!4891382 (= e!3057966 (= (size!37136 (_1!33526 (get!19478 lt!2004982))) (size!37138 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004982))))))))

(declare-fun b!4891383 () Bool)

(assert (=> b!4891383 (= e!3057968 (Some!14025 (tuple2!60447 (Token!14913 (apply!13540 (transformation!8174 (h!62853 rulesArg!165)) (seqFromList!5936 (_1!33528 lt!2004979))) (h!62853 rulesArg!165) (size!37139 (seqFromList!5936 (_1!33528 lt!2004979))) (_1!33528 lt!2004979)) (_2!33528 lt!2004979))))))

(declare-fun lt!2004983 () Unit!146398)

(assert (=> b!4891383 (= lt!2004983 (longestMatchIsAcceptedByMatchOrIsEmpty!1715 (regex!8174 (h!62853 rulesArg!165)) (list!17722 input!1236)))))

(declare-fun res!2089109 () Bool)

(assert (=> b!4891383 (= res!2089109 (isEmpty!30257 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) (list!17722 input!1236) (list!17722 input!1236) (size!37138 (list!17722 input!1236))))))))

(assert (=> b!4891383 (=> res!2089109 e!3057965)))

(assert (=> b!4891383 e!3057965))

(declare-fun lt!2004980 () Unit!146398)

(assert (=> b!4891383 (= lt!2004980 lt!2004983)))

(declare-fun lt!2004981 () Unit!146398)

(assert (=> b!4891383 (= lt!2004981 (lemmaSemiInverse!2563 (transformation!8174 (h!62853 rulesArg!165)) (seqFromList!5936 (_1!33528 lt!2004979))))))

(declare-fun b!4891384 () Bool)

(assert (=> b!4891384 (= e!3057968 None!14025)))

(declare-fun b!4891385 () Bool)

(declare-fun res!2089106 () Bool)

(assert (=> b!4891385 (=> (not res!2089106) (not e!3057966))))

(assert (=> b!4891385 (= res!2089106 (< (size!37138 (_2!33526 (get!19478 lt!2004982))) (size!37138 (list!17722 input!1236))))))

(declare-fun b!4891386 () Bool)

(declare-fun res!2089107 () Bool)

(assert (=> b!4891386 (=> (not res!2089107) (not e!3057966))))

(assert (=> b!4891386 (= res!2089107 (= (value!262109 (_1!33526 (get!19478 lt!2004982))) (apply!13540 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004982)))) (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004982)))))))))

(declare-fun b!4891387 () Bool)

(declare-fun res!2089108 () Bool)

(assert (=> b!4891387 (=> (not res!2089108) (not e!3057966))))

(assert (=> b!4891387 (= res!2089108 (= (++!12243 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004982)))) (_2!33526 (get!19478 lt!2004982))) (list!17722 input!1236)))))

(assert (= (and d!1570652 c!831303) b!4891384))

(assert (= (and d!1570652 (not c!831303)) b!4891383))

(assert (= (and b!4891383 (not res!2089109)) b!4891379))

(assert (= (and d!1570652 (not res!2089111)) b!4891380))

(assert (= (and b!4891380 res!2089110) b!4891387))

(assert (= (and b!4891387 res!2089108) b!4891385))

(assert (= (and b!4891385 res!2089106) b!4891381))

(assert (= (and b!4891381 res!2089112) b!4891386))

(assert (= (and b!4891386 res!2089107) b!4891382))

(declare-fun m!5894886 () Bool)

(assert (=> b!4891386 m!5894886))

(declare-fun m!5894888 () Bool)

(assert (=> b!4891386 m!5894888))

(assert (=> b!4891386 m!5894888))

(declare-fun m!5894890 () Bool)

(assert (=> b!4891386 m!5894890))

(assert (=> b!4891382 m!5894886))

(declare-fun m!5894892 () Bool)

(assert (=> b!4891382 m!5894892))

(assert (=> b!4891385 m!5894886))

(declare-fun m!5894894 () Bool)

(assert (=> b!4891385 m!5894894))

(assert (=> b!4891385 m!5894176))

(assert (=> b!4891385 m!5894666))

(assert (=> b!4891379 m!5894316))

(assert (=> b!4891379 m!5894176))

(assert (=> b!4891379 m!5894666))

(assert (=> b!4891379 m!5894316))

(assert (=> b!4891379 m!5894176))

(assert (=> b!4891379 m!5894176))

(assert (=> b!4891379 m!5894666))

(declare-fun m!5894896 () Bool)

(assert (=> b!4891379 m!5894896))

(declare-fun m!5894898 () Bool)

(assert (=> b!4891379 m!5894898))

(assert (=> b!4891381 m!5894886))

(declare-fun m!5894900 () Bool)

(assert (=> d!1570652 m!5894900))

(declare-fun m!5894902 () Bool)

(assert (=> d!1570652 m!5894902))

(assert (=> d!1570652 m!5894176))

(declare-fun m!5894904 () Bool)

(assert (=> d!1570652 m!5894904))

(assert (=> d!1570652 m!5894336))

(assert (=> b!4891380 m!5894886))

(declare-fun m!5894906 () Bool)

(assert (=> b!4891380 m!5894906))

(assert (=> b!4891380 m!5894906))

(declare-fun m!5894908 () Bool)

(assert (=> b!4891380 m!5894908))

(assert (=> b!4891380 m!5894908))

(declare-fun m!5894910 () Bool)

(assert (=> b!4891380 m!5894910))

(assert (=> b!4891383 m!5894316))

(assert (=> b!4891383 m!5894316))

(assert (=> b!4891383 m!5894176))

(assert (=> b!4891383 m!5894176))

(assert (=> b!4891383 m!5894666))

(assert (=> b!4891383 m!5894896))

(declare-fun m!5894912 () Bool)

(assert (=> b!4891383 m!5894912))

(assert (=> b!4891383 m!5894176))

(declare-fun m!5894914 () Bool)

(assert (=> b!4891383 m!5894914))

(declare-fun m!5894916 () Bool)

(assert (=> b!4891383 m!5894916))

(assert (=> b!4891383 m!5894916))

(declare-fun m!5894918 () Bool)

(assert (=> b!4891383 m!5894918))

(assert (=> b!4891383 m!5894916))

(declare-fun m!5894920 () Bool)

(assert (=> b!4891383 m!5894920))

(assert (=> b!4891383 m!5894916))

(declare-fun m!5894922 () Bool)

(assert (=> b!4891383 m!5894922))

(assert (=> b!4891383 m!5894176))

(assert (=> b!4891383 m!5894666))

(assert (=> b!4891387 m!5894886))

(assert (=> b!4891387 m!5894906))

(assert (=> b!4891387 m!5894906))

(assert (=> b!4891387 m!5894908))

(assert (=> b!4891387 m!5894908))

(declare-fun m!5894924 () Bool)

(assert (=> b!4891387 m!5894924))

(assert (=> b!4890846 d!1570652))

(assert (=> b!4890846 d!1570502))

(assert (=> b!4890848 d!1570648))

(assert (=> b!4890848 d!1570650))

(assert (=> b!4890848 d!1570652))

(assert (=> b!4890848 d!1570502))

(declare-fun d!1570654 () Bool)

(assert (=> d!1570654 (= (list!17722 (_2!33525 (get!19479 lt!2004654))) (list!17724 (c!831175 (_2!33525 (get!19479 lt!2004654)))))))

(declare-fun bs!1175820 () Bool)

(assert (= bs!1175820 d!1570654))

(declare-fun m!5894926 () Bool)

(assert (=> bs!1175820 m!5894926))

(assert (=> b!4890848 d!1570654))

(assert (=> b!4890882 d!1570640))

(declare-fun d!1570656 () Bool)

(declare-fun dynLambda!22628 (Int BalanceConc!28914) TokenValue!8484)

(assert (=> d!1570656 (= (apply!13540 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))) (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004672))))) (dynLambda!22628 (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004672))))))))

(declare-fun b_lambda!194129 () Bool)

(assert (=> (not b_lambda!194129) (not d!1570656)))

(declare-fun t!365299 () Bool)

(declare-fun tb!258559 () Bool)

(assert (=> (and b!4890709 (= (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))))) t!365299) tb!258559))

(declare-fun result!322116 () Bool)

(declare-fun inv!21 (TokenValue!8484) Bool)

(assert (=> tb!258559 (= result!322116 (inv!21 (dynLambda!22628 (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004672)))))))))

(declare-fun m!5894952 () Bool)

(assert (=> tb!258559 m!5894952))

(assert (=> d!1570656 t!365299))

(declare-fun b_and!344511 () Bool)

(assert (= b_and!344475 (and (=> t!365299 result!322116) b_and!344511)))

(declare-fun t!365301 () Bool)

(declare-fun tb!258561 () Bool)

(assert (=> (and b!4891010 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))))) t!365301) tb!258561))

(declare-fun result!322120 () Bool)

(assert (= result!322120 result!322116))

(assert (=> d!1570656 t!365301))

(declare-fun b_and!344513 () Bool)

(assert (= b_and!344483 (and (=> t!365301 result!322120) b_and!344513)))

(assert (=> d!1570656 m!5894364))

(declare-fun m!5894962 () Bool)

(assert (=> d!1570656 m!5894962))

(assert (=> b!4890882 d!1570656))

(declare-fun d!1570658 () Bool)

(declare-fun fromListB!2691 (List!56527) BalanceConc!28914)

(assert (=> d!1570658 (= (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004672)))) (fromListB!2691 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004672)))))))

(declare-fun bs!1175823 () Bool)

(assert (= bs!1175823 d!1570658))

(declare-fun m!5894976 () Bool)

(assert (=> bs!1175823 m!5894976))

(assert (=> b!4890882 d!1570658))

(declare-fun d!1570666 () Bool)

(assert (=> d!1570666 (= (isDefined!11038 lt!2004654) (not (isEmpty!30262 lt!2004654)))))

(declare-fun bs!1175824 () Bool)

(assert (= bs!1175824 d!1570666))

(declare-fun m!5894978 () Bool)

(assert (=> bs!1175824 m!5894978))

(assert (=> d!1570470 d!1570666))

(declare-fun d!1570668 () Bool)

(declare-fun res!2089124 () Bool)

(declare-fun e!3057978 () Bool)

(assert (=> d!1570668 (=> (not res!2089124) (not e!3057978))))

(assert (=> d!1570668 (= res!2089124 (validRegex!5882 (regex!8174 (h!62853 rulesArg!165))))))

(assert (=> d!1570668 (= (ruleValid!3671 thiss!14805 (h!62853 rulesArg!165)) e!3057978)))

(declare-fun b!4891403 () Bool)

(declare-fun res!2089125 () Bool)

(assert (=> b!4891403 (=> (not res!2089125) (not e!3057978))))

(assert (=> b!4891403 (= res!2089125 (not (nullable!4555 (regex!8174 (h!62853 rulesArg!165)))))))

(declare-fun b!4891404 () Bool)

(assert (=> b!4891404 (= e!3057978 (not (= (tag!9038 (h!62853 rulesArg!165)) (String!63863 ""))))))

(assert (= (and d!1570668 res!2089124) b!4891403))

(assert (= (and b!4891403 res!2089125) b!4891404))

(assert (=> d!1570668 m!5894684))

(assert (=> b!4891403 m!5894686))

(assert (=> d!1570470 d!1570668))

(declare-fun d!1570674 () Bool)

(assert (=> d!1570674 (= (isDefined!11037 (maxPrefixOneRule!3529 thiss!14805 (h!62853 rulesArg!165) (list!17722 input!1236))) (not (isEmpty!30258 (maxPrefixOneRule!3529 thiss!14805 (h!62853 rulesArg!165) (list!17722 input!1236)))))))

(declare-fun bs!1175827 () Bool)

(assert (= bs!1175827 d!1570674))

(assert (=> bs!1175827 m!5894328))

(declare-fun m!5894986 () Bool)

(assert (=> bs!1175827 m!5894986))

(assert (=> d!1570470 d!1570674))

(assert (=> d!1570470 d!1570652))

(declare-fun d!1570676 () Bool)

(declare-fun lt!2004994 () Bool)

(assert (=> d!1570676 (= lt!2004994 (isEmpty!30257 (list!17722 (_1!33527 lt!2004658))))))

(declare-fun isEmpty!30263 (Conc!14742) Bool)

(assert (=> d!1570676 (= lt!2004994 (isEmpty!30263 (c!831175 (_1!33527 lt!2004658))))))

(assert (=> d!1570676 (= (isEmpty!30256 (_1!33527 lt!2004658)) lt!2004994)))

(declare-fun bs!1175828 () Bool)

(assert (= bs!1175828 d!1570676))

(assert (=> bs!1175828 m!5894342))

(assert (=> bs!1175828 m!5894342))

(declare-fun m!5894988 () Bool)

(assert (=> bs!1175828 m!5894988))

(declare-fun m!5894990 () Bool)

(assert (=> bs!1175828 m!5894990))

(assert (=> d!1570470 d!1570676))

(assert (=> d!1570470 d!1570502))

(declare-fun d!1570678 () Bool)

(declare-fun lt!2005000 () tuple2!60448)

(assert (=> d!1570678 (= (tuple2!60451 (list!17722 (_1!33527 lt!2005000)) (list!17722 (_2!33527 lt!2005000))) (findLongestMatch!1646 (regex!8174 (h!62853 rulesArg!165)) (list!17722 input!1236)))))

(declare-fun choose!35702 (Regex!13249 BalanceConc!28914) tuple2!60448)

(assert (=> d!1570678 (= lt!2005000 (choose!35702 (regex!8174 (h!62853 rulesArg!165)) input!1236))))

(assert (=> d!1570678 (validRegex!5882 (regex!8174 (h!62853 rulesArg!165)))))

(assert (=> d!1570678 (= (findLongestMatchWithZipperSequence!267 (regex!8174 (h!62853 rulesArg!165)) input!1236) lt!2005000)))

(declare-fun bs!1175830 () Bool)

(assert (= bs!1175830 d!1570678))

(assert (=> bs!1175830 m!5894684))

(assert (=> bs!1175830 m!5894176))

(assert (=> bs!1175830 m!5894904))

(declare-fun m!5894998 () Bool)

(assert (=> bs!1175830 m!5894998))

(assert (=> bs!1175830 m!5894176))

(declare-fun m!5895000 () Bool)

(assert (=> bs!1175830 m!5895000))

(declare-fun m!5895002 () Bool)

(assert (=> bs!1175830 m!5895002))

(assert (=> d!1570470 d!1570678))

(declare-fun d!1570682 () Bool)

(assert (=> d!1570682 (= (head!10455 lt!2004534) (h!62851 lt!2004534))))

(assert (=> b!4890966 d!1570682))

(assert (=> b!4890982 d!1570668))

(declare-fun d!1570684 () Bool)

(declare-fun lt!2005001 () Int)

(assert (=> d!1570684 (>= lt!2005001 0)))

(declare-fun e!3057983 () Int)

(assert (=> d!1570684 (= lt!2005001 e!3057983)))

(declare-fun c!831305 () Bool)

(assert (=> d!1570684 (= c!831305 ((_ is Nil!56403) lt!2004534))))

(assert (=> d!1570684 (= (size!37138 lt!2004534) lt!2005001)))

(declare-fun b!4891417 () Bool)

(assert (=> b!4891417 (= e!3057983 0)))

(declare-fun b!4891418 () Bool)

(assert (=> b!4891418 (= e!3057983 (+ 1 (size!37138 (t!365273 lt!2004534))))))

(assert (= (and d!1570684 c!831305) b!4891417))

(assert (= (and d!1570684 (not c!831305)) b!4891418))

(declare-fun m!5895004 () Bool)

(assert (=> b!4891418 m!5895004))

(assert (=> b!4890968 d!1570684))

(declare-fun b!4891419 () Bool)

(declare-fun e!3057985 () Option!14025)

(declare-fun lt!2005007 () Option!14025)

(declare-fun lt!2005004 () Option!14025)

(assert (=> b!4891419 (= e!3057985 (ite (and ((_ is None!14024) lt!2005007) ((_ is None!14024) lt!2005004)) None!14024 (ite ((_ is None!14024) lt!2005004) lt!2005007 (ite ((_ is None!14024) lt!2005007) lt!2005004 (ite (>= (size!37136 (_1!33525 (v!49976 lt!2005007))) (size!37136 (_1!33525 (v!49976 lt!2005004)))) lt!2005007 lt!2005004)))))))

(declare-fun call!339237 () Option!14025)

(assert (=> b!4891419 (= lt!2005007 call!339237)))

(assert (=> b!4891419 (= lt!2005004 (maxPrefixZipperSequence!1315 thiss!14805 (t!365275 (t!365275 (t!365275 rulesArg!165))) input!1236))))

(declare-fun b!4891420 () Bool)

(declare-fun lt!2005006 () Option!14025)

(declare-fun e!3057987 () Bool)

(assert (=> b!4891420 (= e!3057987 (= (list!17722 (_2!33525 (get!19479 lt!2005006))) (_2!33526 (get!19478 (maxPrefixZipper!673 thiss!14805 (t!365275 (t!365275 rulesArg!165)) (list!17722 input!1236))))))))

(declare-fun d!1570686 () Bool)

(declare-fun e!3057986 () Bool)

(assert (=> d!1570686 e!3057986))

(declare-fun res!2089138 () Bool)

(assert (=> d!1570686 (=> (not res!2089138) (not e!3057986))))

(assert (=> d!1570686 (= res!2089138 (= (isDefined!11038 lt!2005006) (isDefined!11037 (maxPrefixZipper!673 thiss!14805 (t!365275 (t!365275 rulesArg!165)) (list!17722 input!1236)))))))

(assert (=> d!1570686 (= lt!2005006 e!3057985)))

(declare-fun c!831306 () Bool)

(assert (=> d!1570686 (= c!831306 (and ((_ is Cons!56405) (t!365275 (t!365275 rulesArg!165))) ((_ is Nil!56405) (t!365275 (t!365275 (t!365275 rulesArg!165))))))))

(declare-fun lt!2005003 () Unit!146398)

(declare-fun lt!2005002 () Unit!146398)

(assert (=> d!1570686 (= lt!2005003 lt!2005002)))

(declare-fun lt!2005005 () List!56527)

(declare-fun lt!2005008 () List!56527)

(assert (=> d!1570686 (isPrefix!4894 lt!2005005 lt!2005008)))

(assert (=> d!1570686 (= lt!2005002 (lemmaIsPrefixRefl!3291 lt!2005005 lt!2005008))))

(assert (=> d!1570686 (= lt!2005008 (list!17722 input!1236))))

(assert (=> d!1570686 (= lt!2005005 (list!17722 input!1236))))

(assert (=> d!1570686 (rulesValidInductive!3153 thiss!14805 (t!365275 (t!365275 rulesArg!165)))))

(assert (=> d!1570686 (= (maxPrefixZipperSequence!1315 thiss!14805 (t!365275 (t!365275 rulesArg!165)) input!1236) lt!2005006)))

(declare-fun b!4891421 () Bool)

(assert (=> b!4891421 (= e!3057985 call!339237)))

(declare-fun b!4891422 () Bool)

(declare-fun e!3057988 () Bool)

(assert (=> b!4891422 (= e!3057986 e!3057988)))

(declare-fun res!2089142 () Bool)

(assert (=> b!4891422 (=> res!2089142 e!3057988)))

(assert (=> b!4891422 (= res!2089142 (not (isDefined!11038 lt!2005006)))))

(declare-fun b!4891423 () Bool)

(declare-fun res!2089140 () Bool)

(assert (=> b!4891423 (=> (not res!2089140) (not e!3057986))))

(declare-fun e!3057984 () Bool)

(assert (=> b!4891423 (= res!2089140 e!3057984)))

(declare-fun res!2089139 () Bool)

(assert (=> b!4891423 (=> res!2089139 e!3057984)))

(assert (=> b!4891423 (= res!2089139 (not (isDefined!11038 lt!2005006)))))

(declare-fun b!4891424 () Bool)

(declare-fun e!3057989 () Bool)

(assert (=> b!4891424 (= e!3057989 (= (list!17722 (_2!33525 (get!19479 lt!2005006))) (_2!33526 (get!19478 (maxPrefix!4603 thiss!14805 (t!365275 (t!365275 rulesArg!165)) (list!17722 input!1236))))))))

(declare-fun b!4891425 () Bool)

(assert (=> b!4891425 (= e!3057988 e!3057989)))

(declare-fun res!2089143 () Bool)

(assert (=> b!4891425 (=> (not res!2089143) (not e!3057989))))

(assert (=> b!4891425 (= res!2089143 (= (_1!33525 (get!19479 lt!2005006)) (_1!33526 (get!19478 (maxPrefix!4603 thiss!14805 (t!365275 (t!365275 rulesArg!165)) (list!17722 input!1236))))))))

(declare-fun b!4891426 () Bool)

(assert (=> b!4891426 (= e!3057984 e!3057987)))

(declare-fun res!2089141 () Bool)

(assert (=> b!4891426 (=> (not res!2089141) (not e!3057987))))

(assert (=> b!4891426 (= res!2089141 (= (_1!33525 (get!19479 lt!2005006)) (_1!33526 (get!19478 (maxPrefixZipper!673 thiss!14805 (t!365275 (t!365275 rulesArg!165)) (list!17722 input!1236))))))))

(declare-fun bm!339232 () Bool)

(assert (=> bm!339232 (= call!339237 (maxPrefixOneRuleZipperSequence!684 thiss!14805 (h!62853 (t!365275 (t!365275 rulesArg!165))) input!1236))))

(assert (= (and d!1570686 c!831306) b!4891421))

(assert (= (and d!1570686 (not c!831306)) b!4891419))

(assert (= (or b!4891421 b!4891419) bm!339232))

(assert (= (and d!1570686 res!2089138) b!4891423))

(assert (= (and b!4891423 (not res!2089139)) b!4891426))

(assert (= (and b!4891426 res!2089141) b!4891420))

(assert (= (and b!4891423 res!2089140) b!4891422))

(assert (= (and b!4891422 (not res!2089142)) b!4891425))

(assert (= (and b!4891425 res!2089143) b!4891424))

(declare-fun m!5895006 () Bool)

(assert (=> bm!339232 m!5895006))

(assert (=> d!1570686 m!5894552))

(assert (=> d!1570686 m!5894176))

(assert (=> d!1570686 m!5894582))

(assert (=> d!1570686 m!5894176))

(assert (=> d!1570686 m!5894582))

(declare-fun m!5895008 () Bool)

(assert (=> d!1570686 m!5895008))

(declare-fun m!5895010 () Bool)

(assert (=> d!1570686 m!5895010))

(declare-fun m!5895012 () Bool)

(assert (=> d!1570686 m!5895012))

(declare-fun m!5895016 () Bool)

(assert (=> d!1570686 m!5895016))

(declare-fun m!5895020 () Bool)

(assert (=> b!4891425 m!5895020))

(assert (=> b!4891425 m!5894176))

(assert (=> b!4891425 m!5894176))

(assert (=> b!4891425 m!5894670))

(assert (=> b!4891425 m!5894670))

(declare-fun m!5895028 () Bool)

(assert (=> b!4891425 m!5895028))

(assert (=> b!4891423 m!5895012))

(assert (=> b!4891424 m!5894176))

(assert (=> b!4891424 m!5894670))

(assert (=> b!4891424 m!5895028))

(assert (=> b!4891424 m!5895020))

(declare-fun m!5895032 () Bool)

(assert (=> b!4891424 m!5895032))

(assert (=> b!4891424 m!5894176))

(assert (=> b!4891424 m!5894670))

(assert (=> b!4891422 m!5895012))

(assert (=> b!4891420 m!5894176))

(assert (=> b!4891420 m!5894582))

(assert (=> b!4891420 m!5894176))

(assert (=> b!4891420 m!5895020))

(assert (=> b!4891420 m!5895032))

(assert (=> b!4891420 m!5894582))

(declare-fun m!5895034 () Bool)

(assert (=> b!4891420 m!5895034))

(declare-fun m!5895036 () Bool)

(assert (=> b!4891419 m!5895036))

(assert (=> b!4891426 m!5895020))

(assert (=> b!4891426 m!5894176))

(assert (=> b!4891426 m!5894176))

(assert (=> b!4891426 m!5894582))

(assert (=> b!4891426 m!5894582))

(assert (=> b!4891426 m!5895034))

(assert (=> b!4890757 d!1570686))

(declare-fun b!4891434 () Bool)

(declare-fun e!3057992 () List!56527)

(declare-fun e!3057993 () List!56527)

(assert (=> b!4891434 (= e!3057992 e!3057993)))

(declare-fun c!831308 () Bool)

(assert (=> b!4891434 (= c!831308 ((_ is Leaf!24546) (c!831175 (_2!33525 lt!2004530))))))

(declare-fun d!1570690 () Bool)

(declare-fun c!831307 () Bool)

(assert (=> d!1570690 (= c!831307 ((_ is Empty!14742) (c!831175 (_2!33525 lt!2004530))))))

(assert (=> d!1570690 (= (list!17724 (c!831175 (_2!33525 lt!2004530))) e!3057992)))

(declare-fun b!4891435 () Bool)

(assert (=> b!4891435 (= e!3057993 (list!17726 (xs!18058 (c!831175 (_2!33525 lt!2004530)))))))

(declare-fun b!4891433 () Bool)

(assert (=> b!4891433 (= e!3057992 Nil!56403)))

(declare-fun b!4891436 () Bool)

(assert (=> b!4891436 (= e!3057993 (++!12243 (list!17724 (left!40975 (c!831175 (_2!33525 lt!2004530)))) (list!17724 (right!41305 (c!831175 (_2!33525 lt!2004530))))))))

(assert (= (and d!1570690 c!831307) b!4891433))

(assert (= (and d!1570690 (not c!831307)) b!4891434))

(assert (= (and b!4891434 c!831308) b!4891435))

(assert (= (and b!4891434 (not c!831308)) b!4891436))

(declare-fun m!5895040 () Bool)

(assert (=> b!4891435 m!5895040))

(declare-fun m!5895042 () Bool)

(assert (=> b!4891436 m!5895042))

(declare-fun m!5895044 () Bool)

(assert (=> b!4891436 m!5895044))

(assert (=> b!4891436 m!5895042))

(assert (=> b!4891436 m!5895044))

(declare-fun m!5895046 () Bool)

(assert (=> b!4891436 m!5895046))

(assert (=> d!1570484 d!1570690))

(declare-fun d!1570694 () Bool)

(declare-fun lt!2005032 () Option!14026)

(assert (=> d!1570694 (= lt!2005032 (maxPrefixOneRule!3529 thiss!14805 (h!62853 rulesArg!165) lt!2004534))))

(declare-fun e!3058016 () Option!14026)

(assert (=> d!1570694 (= lt!2005032 e!3058016)))

(declare-fun c!831313 () Bool)

(declare-fun lt!2005035 () tuple2!60450)

(assert (=> d!1570694 (= c!831313 (isEmpty!30257 (_1!33528 lt!2005035)))))

(declare-fun findLongestMatchWithZipper!81 (Regex!13249 List!56527) tuple2!60450)

(assert (=> d!1570694 (= lt!2005035 (findLongestMatchWithZipper!81 (regex!8174 (h!62853 rulesArg!165)) lt!2004534))))

(assert (=> d!1570694 (ruleValid!3671 thiss!14805 (h!62853 rulesArg!165))))

(assert (=> d!1570694 (= (maxPrefixOneRuleZipper!258 thiss!14805 (h!62853 rulesArg!165) lt!2004534) lt!2005032)))

(declare-fun b!4891482 () Bool)

(assert (=> b!4891482 (= e!3058016 None!14025)))

(declare-fun b!4891483 () Bool)

(assert (=> b!4891483 (= e!3058016 (Some!14025 (tuple2!60447 (Token!14913 (apply!13540 (transformation!8174 (h!62853 rulesArg!165)) (seqFromList!5936 (_1!33528 lt!2005035))) (h!62853 rulesArg!165) (size!37138 (_1!33528 lt!2005035)) (_1!33528 lt!2005035)) (_2!33528 lt!2005035))))))

(declare-fun lt!2005034 () Unit!146398)

(assert (=> b!4891483 (= lt!2005034 (longestMatchIsAcceptedByMatchOrIsEmpty!1715 (regex!8174 (h!62853 rulesArg!165)) lt!2004534))))

(declare-fun res!2089185 () Bool)

(assert (=> b!4891483 (= res!2089185 (isEmpty!30257 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004534 lt!2004534 (size!37138 lt!2004534)))))))

(declare-fun e!3058015 () Bool)

(assert (=> b!4891483 (=> res!2089185 e!3058015)))

(assert (=> b!4891483 e!3058015))

(declare-fun lt!2005037 () Unit!146398)

(assert (=> b!4891483 (= lt!2005037 lt!2005034)))

(declare-fun lt!2005036 () Unit!146398)

(assert (=> b!4891483 (= lt!2005036 (lemmaInv!1235 (transformation!8174 (h!62853 rulesArg!165))))))

(declare-fun lt!2005033 () Unit!146398)

(assert (=> b!4891483 (= lt!2005033 (lemmaSemiInverse!2563 (transformation!8174 (h!62853 rulesArg!165)) (seqFromList!5936 (_1!33528 lt!2005035))))))

(declare-fun b!4891484 () Bool)

(assert (=> b!4891484 (= e!3058015 (matchR!6530 (regex!8174 (h!62853 rulesArg!165)) (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004534 lt!2004534 (size!37138 lt!2004534)))))))

(assert (= (and d!1570694 c!831313) b!4891482))

(assert (= (and d!1570694 (not c!831313)) b!4891483))

(assert (= (and b!4891483 (not res!2089185)) b!4891484))

(assert (=> d!1570694 m!5894374))

(declare-fun m!5895132 () Bool)

(assert (=> d!1570694 m!5895132))

(declare-fun m!5895134 () Bool)

(assert (=> d!1570694 m!5895134))

(assert (=> d!1570694 m!5894336))

(assert (=> b!4891483 m!5894316))

(declare-fun m!5895136 () Bool)

(assert (=> b!4891483 m!5895136))

(assert (=> b!4891483 m!5894634))

(declare-fun m!5895138 () Bool)

(assert (=> b!4891483 m!5895138))

(assert (=> b!4891483 m!5895138))

(declare-fun m!5895140 () Bool)

(assert (=> b!4891483 m!5895140))

(assert (=> b!4891483 m!5895138))

(declare-fun m!5895142 () Bool)

(assert (=> b!4891483 m!5895142))

(assert (=> b!4891483 m!5894632))

(assert (=> b!4891483 m!5894382))

(assert (=> b!4891483 m!5894316))

(assert (=> b!4891483 m!5894382))

(assert (=> b!4891483 m!5894616))

(assert (=> b!4891483 m!5894354))

(assert (=> b!4891484 m!5894316))

(assert (=> b!4891484 m!5894382))

(assert (=> b!4891484 m!5894316))

(assert (=> b!4891484 m!5894382))

(assert (=> b!4891484 m!5894616))

(assert (=> b!4891484 m!5894618))

(assert (=> bm!339171 d!1570694))

(declare-fun b!4891497 () Bool)

(declare-fun e!3058022 () Bool)

(declare-fun e!3058021 () Bool)

(assert (=> b!4891497 (= e!3058022 e!3058021)))

(declare-fun res!2089203 () Bool)

(assert (=> b!4891497 (=> (not res!2089203) (not e!3058021))))

(declare-fun height!1955 (Conc!14742) Int)

(assert (=> b!4891497 (= res!2089203 (<= (- 1) (- (height!1955 (left!40975 (c!831175 input!1236))) (height!1955 (right!41305 (c!831175 input!1236))))))))

(declare-fun b!4891498 () Bool)

(declare-fun res!2089202 () Bool)

(assert (=> b!4891498 (=> (not res!2089202) (not e!3058021))))

(assert (=> b!4891498 (= res!2089202 (not (isEmpty!30263 (left!40975 (c!831175 input!1236)))))))

(declare-fun b!4891500 () Bool)

(declare-fun res!2089198 () Bool)

(assert (=> b!4891500 (=> (not res!2089198) (not e!3058021))))

(assert (=> b!4891500 (= res!2089198 (isBalanced!4012 (left!40975 (c!831175 input!1236))))))

(declare-fun b!4891501 () Bool)

(assert (=> b!4891501 (= e!3058021 (not (isEmpty!30263 (right!41305 (c!831175 input!1236)))))))

(declare-fun b!4891502 () Bool)

(declare-fun res!2089199 () Bool)

(assert (=> b!4891502 (=> (not res!2089199) (not e!3058021))))

(assert (=> b!4891502 (= res!2089199 (isBalanced!4012 (right!41305 (c!831175 input!1236))))))

(declare-fun b!4891499 () Bool)

(declare-fun res!2089200 () Bool)

(assert (=> b!4891499 (=> (not res!2089200) (not e!3058021))))

(assert (=> b!4891499 (= res!2089200 (<= (- (height!1955 (left!40975 (c!831175 input!1236))) (height!1955 (right!41305 (c!831175 input!1236)))) 1))))

(declare-fun d!1570710 () Bool)

(declare-fun res!2089201 () Bool)

(assert (=> d!1570710 (=> res!2089201 e!3058022)))

(assert (=> d!1570710 (= res!2089201 (not ((_ is Node!14742) (c!831175 input!1236))))))

(assert (=> d!1570710 (= (isBalanced!4012 (c!831175 input!1236)) e!3058022)))

(assert (= (and d!1570710 (not res!2089201)) b!4891497))

(assert (= (and b!4891497 res!2089203) b!4891499))

(assert (= (and b!4891499 res!2089200) b!4891500))

(assert (= (and b!4891500 res!2089198) b!4891502))

(assert (= (and b!4891502 res!2089199) b!4891498))

(assert (= (and b!4891498 res!2089202) b!4891501))

(declare-fun m!5895144 () Bool)

(assert (=> b!4891501 m!5895144))

(declare-fun m!5895146 () Bool)

(assert (=> b!4891497 m!5895146))

(declare-fun m!5895148 () Bool)

(assert (=> b!4891497 m!5895148))

(declare-fun m!5895150 () Bool)

(assert (=> b!4891498 m!5895150))

(assert (=> b!4891499 m!5895146))

(assert (=> b!4891499 m!5895148))

(declare-fun m!5895152 () Bool)

(assert (=> b!4891502 m!5895152))

(declare-fun m!5895154 () Bool)

(assert (=> b!4891500 m!5895154))

(assert (=> d!1570504 d!1570710))

(assert (=> b!4890761 d!1570576))

(declare-fun d!1570712 () Bool)

(declare-fun c!831314 () Bool)

(assert (=> d!1570712 (= c!831314 ((_ is Node!14742) (left!40975 (c!831175 input!1236))))))

(declare-fun e!3058023 () Bool)

(assert (=> d!1570712 (= (inv!72677 (left!40975 (c!831175 input!1236))) e!3058023)))

(declare-fun b!4891503 () Bool)

(assert (=> b!4891503 (= e!3058023 (inv!72682 (left!40975 (c!831175 input!1236))))))

(declare-fun b!4891504 () Bool)

(declare-fun e!3058024 () Bool)

(assert (=> b!4891504 (= e!3058023 e!3058024)))

(declare-fun res!2089204 () Bool)

(assert (=> b!4891504 (= res!2089204 (not ((_ is Leaf!24546) (left!40975 (c!831175 input!1236)))))))

(assert (=> b!4891504 (=> res!2089204 e!3058024)))

(declare-fun b!4891505 () Bool)

(assert (=> b!4891505 (= e!3058024 (inv!72683 (left!40975 (c!831175 input!1236))))))

(assert (= (and d!1570712 c!831314) b!4891503))

(assert (= (and d!1570712 (not c!831314)) b!4891504))

(assert (= (and b!4891504 (not res!2089204)) b!4891505))

(declare-fun m!5895156 () Bool)

(assert (=> b!4891503 m!5895156))

(declare-fun m!5895158 () Bool)

(assert (=> b!4891505 m!5895158))

(assert (=> b!4891019 d!1570712))

(declare-fun d!1570714 () Bool)

(declare-fun c!831315 () Bool)

(assert (=> d!1570714 (= c!831315 ((_ is Node!14742) (right!41305 (c!831175 input!1236))))))

(declare-fun e!3058025 () Bool)

(assert (=> d!1570714 (= (inv!72677 (right!41305 (c!831175 input!1236))) e!3058025)))

(declare-fun b!4891506 () Bool)

(assert (=> b!4891506 (= e!3058025 (inv!72682 (right!41305 (c!831175 input!1236))))))

(declare-fun b!4891507 () Bool)

(declare-fun e!3058026 () Bool)

(assert (=> b!4891507 (= e!3058025 e!3058026)))

(declare-fun res!2089205 () Bool)

(assert (=> b!4891507 (= res!2089205 (not ((_ is Leaf!24546) (right!41305 (c!831175 input!1236)))))))

(assert (=> b!4891507 (=> res!2089205 e!3058026)))

(declare-fun b!4891508 () Bool)

(assert (=> b!4891508 (= e!3058026 (inv!72683 (right!41305 (c!831175 input!1236))))))

(assert (= (and d!1570714 c!831315) b!4891506))

(assert (= (and d!1570714 (not c!831315)) b!4891507))

(assert (= (and b!4891507 (not res!2089205)) b!4891508))

(declare-fun m!5895160 () Bool)

(assert (=> b!4891506 m!5895160))

(declare-fun m!5895162 () Bool)

(assert (=> b!4891508 m!5895162))

(assert (=> b!4891019 d!1570714))

(declare-fun d!1570716 () Bool)

(declare-fun lt!2005040 () Bool)

(declare-fun content!10016 (List!56529) (InoxSet Rule!16148))

(assert (=> d!1570716 (= lt!2005040 (select (content!10016 rulesArg!165) (rule!11358 (_1!33526 (get!19478 lt!2004672)))))))

(declare-fun e!3058032 () Bool)

(assert (=> d!1570716 (= lt!2005040 e!3058032)))

(declare-fun res!2089210 () Bool)

(assert (=> d!1570716 (=> (not res!2089210) (not e!3058032))))

(assert (=> d!1570716 (= res!2089210 ((_ is Cons!56405) rulesArg!165))))

(assert (=> d!1570716 (= (contains!19437 rulesArg!165 (rule!11358 (_1!33526 (get!19478 lt!2004672)))) lt!2005040)))

(declare-fun b!4891513 () Bool)

(declare-fun e!3058031 () Bool)

(assert (=> b!4891513 (= e!3058032 e!3058031)))

(declare-fun res!2089211 () Bool)

(assert (=> b!4891513 (=> res!2089211 e!3058031)))

(assert (=> b!4891513 (= res!2089211 (= (h!62853 rulesArg!165) (rule!11358 (_1!33526 (get!19478 lt!2004672)))))))

(declare-fun b!4891514 () Bool)

(assert (=> b!4891514 (= e!3058031 (contains!19437 (t!365275 rulesArg!165) (rule!11358 (_1!33526 (get!19478 lt!2004672)))))))

(assert (= (and d!1570716 res!2089210) b!4891513))

(assert (= (and b!4891513 (not res!2089211)) b!4891514))

(declare-fun m!5895164 () Bool)

(assert (=> d!1570716 m!5895164))

(declare-fun m!5895166 () Bool)

(assert (=> d!1570716 m!5895166))

(declare-fun m!5895168 () Bool)

(assert (=> b!4891514 m!5895168))

(assert (=> b!4890876 d!1570716))

(assert (=> b!4890876 d!1570640))

(declare-fun d!1570718 () Bool)

(declare-fun res!2089216 () Bool)

(declare-fun e!3058037 () Bool)

(assert (=> d!1570718 (=> res!2089216 e!3058037)))

(assert (=> d!1570718 (= res!2089216 ((_ is Nil!56405) rulesArg!165))))

(assert (=> d!1570718 (= (forall!13090 rulesArg!165 lambda!243978) e!3058037)))

(declare-fun b!4891519 () Bool)

(declare-fun e!3058038 () Bool)

(assert (=> b!4891519 (= e!3058037 e!3058038)))

(declare-fun res!2089217 () Bool)

(assert (=> b!4891519 (=> (not res!2089217) (not e!3058038))))

(declare-fun dynLambda!22629 (Int Rule!16148) Bool)

(assert (=> b!4891519 (= res!2089217 (dynLambda!22629 lambda!243978 (h!62853 rulesArg!165)))))

(declare-fun b!4891520 () Bool)

(assert (=> b!4891520 (= e!3058038 (forall!13090 (t!365275 rulesArg!165) lambda!243978))))

(assert (= (and d!1570718 (not res!2089216)) b!4891519))

(assert (= (and b!4891519 res!2089217) b!4891520))

(declare-fun b_lambda!194131 () Bool)

(assert (=> (not b_lambda!194131) (not b!4891519)))

(declare-fun m!5895170 () Bool)

(assert (=> b!4891519 m!5895170))

(declare-fun m!5895172 () Bool)

(assert (=> b!4891520 m!5895172))

(assert (=> d!1570510 d!1570718))

(assert (=> b!4890763 d!1570572))

(assert (=> b!4890763 d!1570590))

(assert (=> b!4890763 d!1570592))

(assert (=> b!4890763 d!1570502))

(assert (=> d!1570500 d!1570498))

(declare-fun d!1570720 () Bool)

(assert (=> d!1570720 (isPrefix!4894 lt!2004534 lt!2004534)))

(assert (=> d!1570720 true))

(declare-fun _$45!2165 () Unit!146398)

(assert (=> d!1570720 (= (choose!35699 lt!2004534 lt!2004534) _$45!2165)))

(declare-fun bs!1175836 () Bool)

(assert (= bs!1175836 d!1570720))

(assert (=> bs!1175836 m!5894172))

(assert (=> d!1570500 d!1570720))

(declare-fun bs!1175837 () Bool)

(declare-fun b!4891527 () Bool)

(assert (= bs!1175837 (and b!4891527 b!4890845)))

(declare-fun lambda!243993 () Int)

(assert (=> bs!1175837 (= (and (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) (= lambda!243993 lambda!243967))))

(declare-fun bs!1175838 () Bool)

(assert (= bs!1175838 (and b!4891527 d!1570578)))

(assert (=> bs!1175838 (= (and (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) (= lambda!243993 lambda!243985))))

(declare-fun b!4891534 () Bool)

(declare-fun e!3058049 () Bool)

(assert (=> b!4891534 (= e!3058049 true)))

(declare-fun b!4891533 () Bool)

(declare-fun e!3058048 () Bool)

(assert (=> b!4891533 (= e!3058048 e!3058049)))

(assert (=> b!4891527 e!3058048))

(assert (= b!4891533 b!4891534))

(assert (= b!4891527 b!4891533))

(assert (=> b!4891534 (< (dynLambda!22617 order!25463 (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) (dynLambda!22618 order!25465 lambda!243993))))

(assert (=> b!4891534 (< (dynLambda!22619 order!25467 (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) (dynLambda!22618 order!25465 lambda!243993))))

(declare-fun d!1570722 () Bool)

(declare-fun e!3058044 () Bool)

(assert (=> d!1570722 e!3058044))

(declare-fun res!2089220 () Bool)

(assert (=> d!1570722 (=> (not res!2089220) (not e!3058044))))

(declare-fun lt!2005047 () Option!14025)

(assert (=> d!1570722 (= res!2089220 (= (isDefined!11038 lt!2005047) (isDefined!11037 (maxPrefixOneRule!3529 thiss!14805 (h!62853 (t!365275 rulesArg!165)) (list!17722 input!1236)))))))

(declare-fun e!3058041 () Option!14025)

(assert (=> d!1570722 (= lt!2005047 e!3058041)))

(declare-fun c!831316 () Bool)

(declare-fun lt!2005051 () tuple2!60448)

(assert (=> d!1570722 (= c!831316 (isEmpty!30256 (_1!33527 lt!2005051)))))

(assert (=> d!1570722 (= lt!2005051 (findLongestMatchWithZipperSequence!267 (regex!8174 (h!62853 (t!365275 rulesArg!165))) input!1236))))

(assert (=> d!1570722 (ruleValid!3671 thiss!14805 (h!62853 (t!365275 rulesArg!165)))))

(assert (=> d!1570722 (= (maxPrefixOneRuleZipperSequence!684 thiss!14805 (h!62853 (t!365275 rulesArg!165)) input!1236) lt!2005047)))

(declare-fun b!4891525 () Bool)

(declare-fun e!3058045 () Bool)

(assert (=> b!4891525 (= e!3058044 e!3058045)))

(declare-fun res!2089218 () Bool)

(assert (=> b!4891525 (=> res!2089218 e!3058045)))

(assert (=> b!4891525 (= res!2089218 (not (isDefined!11038 lt!2005047)))))

(declare-fun b!4891526 () Bool)

(declare-fun e!3058039 () Bool)

(declare-fun lt!2005053 () List!56527)

(assert (=> b!4891526 (= e!3058039 (matchR!6530 (regex!8174 (h!62853 (t!365275 rulesArg!165))) (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 (t!365275 rulesArg!165))) Nil!56403 (size!37138 Nil!56403) lt!2005053 lt!2005053 (size!37138 lt!2005053)))))))

(assert (=> b!4891527 (= e!3058041 (Some!14024 (tuple2!60445 (Token!14913 (apply!13540 (transformation!8174 (h!62853 (t!365275 rulesArg!165))) (_1!33527 lt!2005051)) (h!62853 (t!365275 rulesArg!165)) (size!37139 (_1!33527 lt!2005051)) (list!17722 (_1!33527 lt!2005051))) (_2!33527 lt!2005051))))))

(assert (=> b!4891527 (= lt!2005053 (list!17722 input!1236))))

(declare-fun lt!2005052 () Unit!146398)

(assert (=> b!4891527 (= lt!2005052 (longestMatchIsAcceptedByMatchOrIsEmpty!1715 (regex!8174 (h!62853 (t!365275 rulesArg!165))) lt!2005053))))

(declare-fun res!2089221 () Bool)

(assert (=> b!4891527 (= res!2089221 (isEmpty!30257 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 (t!365275 rulesArg!165))) Nil!56403 (size!37138 Nil!56403) lt!2005053 lt!2005053 (size!37138 lt!2005053)))))))

(assert (=> b!4891527 (=> res!2089221 e!3058039)))

(assert (=> b!4891527 e!3058039))

(declare-fun lt!2005054 () Unit!146398)

(assert (=> b!4891527 (= lt!2005054 lt!2005052)))

(declare-fun lt!2005046 () Unit!146398)

(assert (=> b!4891527 (= lt!2005046 (lemmaInv!1235 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))))))

(declare-fun lt!2005050 () Unit!146398)

(assert (=> b!4891527 (= lt!2005050 (ForallOf!1132 lambda!243993 (_1!33527 lt!2005051)))))

(declare-fun lt!2005045 () Unit!146398)

(assert (=> b!4891527 (= lt!2005045 (ForallOf!1132 lambda!243993 (seqFromList!5936 (list!17722 (_1!33527 lt!2005051)))))))

(declare-fun lt!2005049 () Option!14025)

(assert (=> b!4891527 (= lt!2005049 (Some!14024 (tuple2!60445 (Token!14913 (apply!13540 (transformation!8174 (h!62853 (t!365275 rulesArg!165))) (_1!33527 lt!2005051)) (h!62853 (t!365275 rulesArg!165)) (size!37139 (_1!33527 lt!2005051)) (list!17722 (_1!33527 lt!2005051))) (_2!33527 lt!2005051))))))

(declare-fun lt!2005048 () Unit!146398)

(assert (=> b!4891527 (= lt!2005048 (lemmaEqSameImage!1089 (transformation!8174 (h!62853 (t!365275 rulesArg!165))) (_1!33527 lt!2005051) (seqFromList!5936 (list!17722 (_1!33527 lt!2005051)))))))

(declare-fun b!4891528 () Bool)

(declare-fun e!3058040 () Bool)

(assert (=> b!4891528 (= e!3058045 e!3058040)))

(declare-fun res!2089219 () Bool)

(assert (=> b!4891528 (=> (not res!2089219) (not e!3058040))))

(assert (=> b!4891528 (= res!2089219 (= (_1!33525 (get!19479 lt!2005047)) (_1!33526 (get!19478 (maxPrefixOneRule!3529 thiss!14805 (h!62853 (t!365275 rulesArg!165)) (list!17722 input!1236))))))))

(declare-fun b!4891529 () Bool)

(assert (=> b!4891529 (= e!3058041 None!14024)))

(declare-fun b!4891530 () Bool)

(assert (=> b!4891530 (= e!3058040 (= (list!17722 (_2!33525 (get!19479 lt!2005047))) (_2!33526 (get!19478 (maxPrefixOneRule!3529 thiss!14805 (h!62853 (t!365275 rulesArg!165)) (list!17722 input!1236))))))))

(assert (= (and d!1570722 c!831316) b!4891529))

(assert (= (and d!1570722 (not c!831316)) b!4891527))

(assert (= (and b!4891527 (not res!2089221)) b!4891526))

(assert (= (and d!1570722 res!2089220) b!4891525))

(assert (= (and b!4891525 (not res!2089218)) b!4891528))

(assert (= (and b!4891528 res!2089219) b!4891530))

(assert (=> b!4891526 m!5894316))

(declare-fun m!5895174 () Bool)

(assert (=> b!4891526 m!5895174))

(assert (=> b!4891526 m!5894316))

(assert (=> b!4891526 m!5895174))

(declare-fun m!5895176 () Bool)

(assert (=> b!4891526 m!5895176))

(declare-fun m!5895178 () Bool)

(assert (=> b!4891526 m!5895178))

(declare-fun m!5895180 () Bool)

(assert (=> b!4891525 m!5895180))

(declare-fun m!5895182 () Bool)

(assert (=> b!4891528 m!5895182))

(assert (=> b!4891528 m!5894176))

(assert (=> b!4891528 m!5894176))

(assert (=> b!4891528 m!5894658))

(assert (=> b!4891528 m!5894658))

(declare-fun m!5895184 () Bool)

(assert (=> b!4891528 m!5895184))

(assert (=> b!4891530 m!5895182))

(assert (=> b!4891530 m!5894658))

(assert (=> b!4891530 m!5895184))

(declare-fun m!5895186 () Bool)

(assert (=> b!4891530 m!5895186))

(assert (=> b!4891530 m!5894176))

(assert (=> b!4891530 m!5894658))

(assert (=> b!4891530 m!5894176))

(declare-fun m!5895188 () Bool)

(assert (=> d!1570722 m!5895188))

(assert (=> d!1570722 m!5894550))

(assert (=> d!1570722 m!5895180))

(assert (=> d!1570722 m!5894658))

(declare-fun m!5895190 () Bool)

(assert (=> d!1570722 m!5895190))

(declare-fun m!5895192 () Bool)

(assert (=> d!1570722 m!5895192))

(assert (=> d!1570722 m!5894176))

(assert (=> d!1570722 m!5894658))

(assert (=> d!1570722 m!5894176))

(assert (=> b!4891527 m!5894316))

(declare-fun m!5895194 () Bool)

(assert (=> b!4891527 m!5895194))

(assert (=> b!4891527 m!5894176))

(declare-fun m!5895196 () Bool)

(assert (=> b!4891527 m!5895196))

(declare-fun m!5895198 () Bool)

(assert (=> b!4891527 m!5895198))

(declare-fun m!5895200 () Bool)

(assert (=> b!4891527 m!5895200))

(declare-fun m!5895202 () Bool)

(assert (=> b!4891527 m!5895202))

(declare-fun m!5895204 () Bool)

(assert (=> b!4891527 m!5895204))

(declare-fun m!5895206 () Bool)

(assert (=> b!4891527 m!5895206))

(assert (=> b!4891527 m!5895200))

(declare-fun m!5895208 () Bool)

(assert (=> b!4891527 m!5895208))

(assert (=> b!4891527 m!5895174))

(declare-fun m!5895210 () Bool)

(assert (=> b!4891527 m!5895210))

(declare-fun m!5895212 () Bool)

(assert (=> b!4891527 m!5895212))

(assert (=> b!4891527 m!5894316))

(assert (=> b!4891527 m!5895174))

(assert (=> b!4891527 m!5895176))

(assert (=> b!4891527 m!5895194))

(assert (=> b!4891527 m!5895200))

(assert (=> bm!339159 d!1570722))

(declare-fun d!1570724 () Bool)

(assert (=> d!1570724 (= (isEmpty!30258 lt!2004533) (not ((_ is Some!14025) lt!2004533)))))

(assert (=> d!1570486 d!1570724))

(assert (=> b!4890843 d!1570666))

(declare-fun d!1570726 () Bool)

(declare-fun dynLambda!22630 (Int BalanceConc!28914) Bool)

(assert (=> d!1570726 (dynLambda!22630 lambda!243967 (_1!33527 lt!2004658))))

(declare-fun lt!2005076 () Unit!146398)

(declare-fun choose!35704 (Int BalanceConc!28914) Unit!146398)

(assert (=> d!1570726 (= lt!2005076 (choose!35704 lambda!243967 (_1!33527 lt!2004658)))))

(assert (=> d!1570726 (Forall!1686 lambda!243967)))

(assert (=> d!1570726 (= (ForallOf!1132 lambda!243967 (_1!33527 lt!2004658)) lt!2005076)))

(declare-fun b_lambda!194133 () Bool)

(assert (=> (not b_lambda!194133) (not d!1570726)))

(declare-fun bs!1175839 () Bool)

(assert (= bs!1175839 d!1570726))

(declare-fun m!5895226 () Bool)

(assert (=> bs!1175839 m!5895226))

(declare-fun m!5895228 () Bool)

(assert (=> bs!1175839 m!5895228))

(declare-fun m!5895230 () Bool)

(assert (=> bs!1175839 m!5895230))

(assert (=> b!4890845 d!1570726))

(declare-fun d!1570732 () Bool)

(assert (=> d!1570732 (dynLambda!22630 lambda!243967 (seqFromList!5936 (list!17722 (_1!33527 lt!2004658))))))

(declare-fun lt!2005077 () Unit!146398)

(assert (=> d!1570732 (= lt!2005077 (choose!35704 lambda!243967 (seqFromList!5936 (list!17722 (_1!33527 lt!2004658)))))))

(assert (=> d!1570732 (Forall!1686 lambda!243967)))

(assert (=> d!1570732 (= (ForallOf!1132 lambda!243967 (seqFromList!5936 (list!17722 (_1!33527 lt!2004658)))) lt!2005077)))

(declare-fun b_lambda!194135 () Bool)

(assert (=> (not b_lambda!194135) (not d!1570732)))

(declare-fun bs!1175840 () Bool)

(assert (= bs!1175840 d!1570732))

(assert (=> bs!1175840 m!5894348))

(declare-fun m!5895232 () Bool)

(assert (=> bs!1175840 m!5895232))

(assert (=> bs!1175840 m!5894348))

(declare-fun m!5895234 () Bool)

(assert (=> bs!1175840 m!5895234))

(assert (=> bs!1175840 m!5895230))

(assert (=> b!4890845 d!1570732))

(declare-fun b!4891561 () Bool)

(declare-fun e!3058066 () Bool)

(assert (=> b!4891561 (= e!3058066 true)))

(declare-fun d!1570734 () Bool)

(assert (=> d!1570734 e!3058066))

(assert (= d!1570734 b!4891561))

(declare-fun order!25477 () Int)

(declare-fun lambda!243997 () Int)

(declare-fun dynLambda!22631 (Int Int) Int)

(assert (=> b!4891561 (< (dynLambda!22617 order!25463 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) (dynLambda!22631 order!25477 lambda!243997))))

(assert (=> b!4891561 (< (dynLambda!22619 order!25467 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) (dynLambda!22631 order!25477 lambda!243997))))

(assert (=> d!1570734 (= (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (_1!33527 lt!2004658)) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658)))))))

(declare-fun lt!2005090 () Unit!146398)

(declare-fun Forall2of!446 (Int BalanceConc!28914 BalanceConc!28914) Unit!146398)

(assert (=> d!1570734 (= lt!2005090 (Forall2of!446 lambda!243997 (_1!33527 lt!2004658) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658)))))))

(assert (=> d!1570734 (= (list!17722 (_1!33527 lt!2004658)) (list!17722 (seqFromList!5936 (list!17722 (_1!33527 lt!2004658)))))))

(assert (=> d!1570734 (= (lemmaEqSameImage!1089 (transformation!8174 (h!62853 rulesArg!165)) (_1!33527 lt!2004658) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658)))) lt!2005090)))

(declare-fun b_lambda!194137 () Bool)

(assert (=> (not b_lambda!194137) (not d!1570734)))

(declare-fun t!365305 () Bool)

(declare-fun tb!258563 () Bool)

(assert (=> (and b!4890709 (= (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) t!365305) tb!258563))

(declare-fun result!322122 () Bool)

(assert (=> tb!258563 (= result!322122 (inv!21 (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (_1!33527 lt!2004658))))))

(declare-fun m!5895302 () Bool)

(assert (=> tb!258563 m!5895302))

(assert (=> d!1570734 t!365305))

(declare-fun b_and!344515 () Bool)

(assert (= b_and!344511 (and (=> t!365305 result!322122) b_and!344515)))

(declare-fun t!365307 () Bool)

(declare-fun tb!258565 () Bool)

(assert (=> (and b!4891010 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) t!365307) tb!258565))

(declare-fun result!322124 () Bool)

(assert (= result!322124 result!322122))

(assert (=> d!1570734 t!365307))

(declare-fun b_and!344517 () Bool)

(assert (= b_and!344513 (and (=> t!365307 result!322124) b_and!344517)))

(declare-fun b_lambda!194139 () Bool)

(assert (=> (not b_lambda!194139) (not d!1570734)))

(declare-fun t!365309 () Bool)

(declare-fun tb!258567 () Bool)

(assert (=> (and b!4890709 (= (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) t!365309) tb!258567))

(declare-fun result!322126 () Bool)

(assert (=> tb!258567 (= result!322126 (inv!21 (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658))))))))

(declare-fun m!5895304 () Bool)

(assert (=> tb!258567 m!5895304))

(assert (=> d!1570734 t!365309))

(declare-fun b_and!344519 () Bool)

(assert (= b_and!344515 (and (=> t!365309 result!322126) b_and!344519)))

(declare-fun t!365311 () Bool)

(declare-fun tb!258569 () Bool)

(assert (=> (and b!4891010 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) t!365311) tb!258569))

(declare-fun result!322128 () Bool)

(assert (= result!322128 result!322126))

(assert (=> d!1570734 t!365311))

(declare-fun b_and!344521 () Bool)

(assert (= b_and!344517 (and (=> t!365311 result!322128) b_and!344521)))

(assert (=> d!1570734 m!5894342))

(assert (=> d!1570734 m!5894348))

(declare-fun m!5895306 () Bool)

(assert (=> d!1570734 m!5895306))

(assert (=> d!1570734 m!5894348))

(declare-fun m!5895308 () Bool)

(assert (=> d!1570734 m!5895308))

(declare-fun m!5895310 () Bool)

(assert (=> d!1570734 m!5895310))

(assert (=> d!1570734 m!5894348))

(declare-fun m!5895312 () Bool)

(assert (=> d!1570734 m!5895312))

(assert (=> b!4890845 d!1570734))

(declare-fun d!1570740 () Bool)

(assert (=> d!1570740 (= (isEmpty!30257 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660)))) ((_ is Nil!56403) (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660)))))))

(assert (=> b!4890845 d!1570740))

(assert (=> b!4890845 d!1570636))

(declare-fun d!1570744 () Bool)

(assert (=> d!1570744 (= (seqFromList!5936 (list!17722 (_1!33527 lt!2004658))) (fromListB!2691 (list!17722 (_1!33527 lt!2004658))))))

(declare-fun bs!1175843 () Bool)

(assert (= bs!1175843 d!1570744))

(assert (=> bs!1175843 m!5894342))

(declare-fun m!5895320 () Bool)

(assert (=> bs!1175843 m!5895320))

(assert (=> b!4890845 d!1570744))

(declare-fun d!1570746 () Bool)

(declare-fun e!3058092 () Bool)

(assert (=> d!1570746 e!3058092))

(declare-fun res!2089262 () Bool)

(assert (=> d!1570746 (=> res!2089262 e!3058092)))

(assert (=> d!1570746 (= res!2089262 (isEmpty!30257 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660)))))))

(declare-fun lt!2005108 () Unit!146398)

(declare-fun choose!35705 (Regex!13249 List!56527) Unit!146398)

(assert (=> d!1570746 (= lt!2005108 (choose!35705 (regex!8174 (h!62853 rulesArg!165)) lt!2004660))))

(assert (=> d!1570746 (validRegex!5882 (regex!8174 (h!62853 rulesArg!165)))))

(assert (=> d!1570746 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1715 (regex!8174 (h!62853 rulesArg!165)) lt!2004660) lt!2005108)))

(declare-fun b!4891594 () Bool)

(assert (=> b!4891594 (= e!3058092 (matchR!6530 (regex!8174 (h!62853 rulesArg!165)) (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660)))))))

(assert (= (and d!1570746 (not res!2089262)) b!4891594))

(assert (=> d!1570746 m!5894316))

(assert (=> d!1570746 m!5894360))

(declare-fun m!5895372 () Bool)

(assert (=> d!1570746 m!5895372))

(assert (=> d!1570746 m!5894318))

(assert (=> d!1570746 m!5894684))

(assert (=> d!1570746 m!5894316))

(assert (=> d!1570746 m!5894318))

(assert (=> d!1570746 m!5894320))

(assert (=> b!4891594 m!5894316))

(assert (=> b!4891594 m!5894318))

(assert (=> b!4891594 m!5894316))

(assert (=> b!4891594 m!5894318))

(assert (=> b!4891594 m!5894320))

(assert (=> b!4891594 m!5894322))

(assert (=> b!4890845 d!1570746))

(assert (=> b!4890845 d!1570502))

(declare-fun d!1570760 () Bool)

(declare-fun lt!2005113 () Int)

(assert (=> d!1570760 (= lt!2005113 (size!37138 (list!17722 (_1!33527 lt!2004658))))))

(declare-fun size!37142 (Conc!14742) Int)

(assert (=> d!1570760 (= lt!2005113 (size!37142 (c!831175 (_1!33527 lt!2004658))))))

(assert (=> d!1570760 (= (size!37139 (_1!33527 lt!2004658)) lt!2005113)))

(declare-fun bs!1175847 () Bool)

(assert (= bs!1175847 d!1570760))

(assert (=> bs!1175847 m!5894342))

(assert (=> bs!1175847 m!5894342))

(declare-fun m!5895392 () Bool)

(assert (=> bs!1175847 m!5895392))

(declare-fun m!5895394 () Bool)

(assert (=> bs!1175847 m!5895394))

(assert (=> b!4890845 d!1570760))

(declare-fun d!1570768 () Bool)

(assert (=> d!1570768 (= (list!17722 (_1!33527 lt!2004658)) (list!17724 (c!831175 (_1!33527 lt!2004658))))))

(declare-fun bs!1175848 () Bool)

(assert (= bs!1175848 d!1570768))

(declare-fun m!5895396 () Bool)

(assert (=> bs!1175848 m!5895396))

(assert (=> b!4890845 d!1570768))

(declare-fun d!1570770 () Bool)

(declare-fun e!3058111 () Bool)

(assert (=> d!1570770 e!3058111))

(declare-fun res!2089281 () Bool)

(assert (=> d!1570770 (=> (not res!2089281) (not e!3058111))))

(assert (=> d!1570770 (= res!2089281 (semiInverseModEq!3586 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))))))

(declare-fun Unit!146407 () Unit!146398)

(assert (=> d!1570770 (= (lemmaInv!1235 (transformation!8174 (h!62853 rulesArg!165))) Unit!146407)))

(declare-fun b!4891623 () Bool)

(assert (=> b!4891623 (= e!3058111 (equivClasses!3465 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))))))

(assert (= (and d!1570770 res!2089281) b!4891623))

(assert (=> d!1570770 m!5894456))

(assert (=> b!4891623 m!5894458))

(assert (=> b!4890845 d!1570770))

(assert (=> b!4890845 d!1570634))

(declare-fun d!1570774 () Bool)

(assert (=> d!1570774 (= (apply!13540 (transformation!8174 (h!62853 rulesArg!165)) (_1!33527 lt!2004658)) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (_1!33527 lt!2004658)))))

(declare-fun b_lambda!194141 () Bool)

(assert (=> (not b_lambda!194141) (not d!1570774)))

(assert (=> d!1570774 t!365305))

(declare-fun b_and!344523 () Bool)

(assert (= b_and!344519 (and (=> t!365305 result!322122) b_and!344523)))

(assert (=> d!1570774 t!365307))

(declare-fun b_and!344525 () Bool)

(assert (= b_and!344521 (and (=> t!365307 result!322124) b_and!344525)))

(assert (=> d!1570774 m!5895310))

(assert (=> b!4890845 d!1570774))

(assert (=> b!4890845 d!1570596))

(assert (=> b!4890879 d!1570642))

(assert (=> b!4890879 d!1570644))

(assert (=> b!4890879 d!1570640))

(declare-fun d!1570776 () Bool)

(declare-fun lt!2005114 () Int)

(assert (=> d!1570776 (>= lt!2005114 0)))

(declare-fun e!3058114 () Int)

(assert (=> d!1570776 (= lt!2005114 e!3058114)))

(declare-fun c!831331 () Bool)

(assert (=> d!1570776 (= c!831331 ((_ is Nil!56403) (_2!33526 (get!19478 lt!2004672))))))

(assert (=> d!1570776 (= (size!37138 (_2!33526 (get!19478 lt!2004672))) lt!2005114)))

(declare-fun b!4891626 () Bool)

(assert (=> b!4891626 (= e!3058114 0)))

(declare-fun b!4891627 () Bool)

(assert (=> b!4891627 (= e!3058114 (+ 1 (size!37138 (t!365273 (_2!33526 (get!19478 lt!2004672))))))))

(assert (= (and d!1570776 c!831331) b!4891626))

(assert (= (and d!1570776 (not c!831331)) b!4891627))

(declare-fun m!5895412 () Bool)

(assert (=> b!4891627 m!5895412))

(assert (=> b!4890881 d!1570776))

(assert (=> b!4890881 d!1570640))

(assert (=> b!4890881 d!1570684))

(assert (=> d!1570448 d!1570550))

(declare-fun d!1570780 () Bool)

(assert (=> d!1570780 (isPrefix!4894 lt!2004578 lt!2004581)))

(declare-fun lt!2005115 () Unit!146398)

(assert (=> d!1570780 (= lt!2005115 (choose!35699 lt!2004578 lt!2004581))))

(assert (=> d!1570780 (= (lemmaIsPrefixRefl!3291 lt!2004578 lt!2004581) lt!2005115)))

(declare-fun bs!1175849 () Bool)

(assert (= bs!1175849 d!1570780))

(assert (=> bs!1175849 m!5894246))

(declare-fun m!5895420 () Bool)

(assert (=> bs!1175849 m!5895420))

(assert (=> d!1570448 d!1570780))

(declare-fun b!4891633 () Bool)

(declare-fun res!2089286 () Bool)

(declare-fun e!3058117 () Bool)

(assert (=> b!4891633 (=> (not res!2089286) (not e!3058117))))

(assert (=> b!4891633 (= res!2089286 (= (head!10455 lt!2004578) (head!10455 lt!2004581)))))

(declare-fun d!1570782 () Bool)

(declare-fun e!3058118 () Bool)

(assert (=> d!1570782 e!3058118))

(declare-fun res!2089285 () Bool)

(assert (=> d!1570782 (=> res!2089285 e!3058118)))

(declare-fun lt!2005116 () Bool)

(assert (=> d!1570782 (= res!2089285 (not lt!2005116))))

(declare-fun e!3058119 () Bool)

(assert (=> d!1570782 (= lt!2005116 e!3058119)))

(declare-fun res!2089287 () Bool)

(assert (=> d!1570782 (=> res!2089287 e!3058119)))

(assert (=> d!1570782 (= res!2089287 ((_ is Nil!56403) lt!2004578))))

(assert (=> d!1570782 (= (isPrefix!4894 lt!2004578 lt!2004581) lt!2005116)))

(declare-fun b!4891632 () Bool)

(assert (=> b!4891632 (= e!3058119 e!3058117)))

(declare-fun res!2089284 () Bool)

(assert (=> b!4891632 (=> (not res!2089284) (not e!3058117))))

(assert (=> b!4891632 (= res!2089284 (not ((_ is Nil!56403) lt!2004581)))))

(declare-fun b!4891634 () Bool)

(assert (=> b!4891634 (= e!3058117 (isPrefix!4894 (tail!9601 lt!2004578) (tail!9601 lt!2004581)))))

(declare-fun b!4891635 () Bool)

(assert (=> b!4891635 (= e!3058118 (>= (size!37138 lt!2004581) (size!37138 lt!2004578)))))

(assert (= (and d!1570782 (not res!2089287)) b!4891632))

(assert (= (and b!4891632 res!2089284) b!4891633))

(assert (= (and b!4891633 res!2089286) b!4891634))

(assert (= (and d!1570782 (not res!2089285)) b!4891635))

(declare-fun m!5895422 () Bool)

(assert (=> b!4891633 m!5895422))

(declare-fun m!5895424 () Bool)

(assert (=> b!4891633 m!5895424))

(declare-fun m!5895426 () Bool)

(assert (=> b!4891634 m!5895426))

(declare-fun m!5895428 () Bool)

(assert (=> b!4891634 m!5895428))

(assert (=> b!4891634 m!5895426))

(assert (=> b!4891634 m!5895428))

(declare-fun m!5895430 () Bool)

(assert (=> b!4891634 m!5895430))

(declare-fun m!5895432 () Bool)

(assert (=> b!4891635 m!5895432))

(declare-fun m!5895434 () Bool)

(assert (=> b!4891635 m!5895434))

(assert (=> d!1570448 d!1570782))

(declare-fun d!1570784 () Bool)

(assert (=> d!1570784 (= (isDefined!11037 (maxPrefixZipper!673 thiss!14805 (t!365275 rulesArg!165) (list!17722 input!1236))) (not (isEmpty!30258 (maxPrefixZipper!673 thiss!14805 (t!365275 rulesArg!165) (list!17722 input!1236)))))))

(declare-fun bs!1175850 () Bool)

(assert (= bs!1175850 d!1570784))

(assert (=> bs!1175850 m!5894238))

(declare-fun m!5895436 () Bool)

(assert (=> bs!1175850 m!5895436))

(assert (=> d!1570448 d!1570784))

(assert (=> d!1570448 d!1570502))

(assert (=> d!1570448 d!1570570))

(assert (=> d!1570448 d!1570576))

(declare-fun d!1570786 () Bool)

(assert (=> d!1570786 (= (isEmpty!30258 lt!2004672) (not ((_ is Some!14025) lt!2004672)))))

(assert (=> d!1570482 d!1570786))

(assert (=> d!1570482 d!1570498))

(assert (=> d!1570482 d!1570500))

(assert (=> d!1570482 d!1570510))

(declare-fun b!4891647 () Bool)

(declare-fun e!3058125 () Bool)

(declare-fun e!3058126 () Bool)

(assert (=> b!4891647 (= e!3058125 e!3058126)))

(declare-fun res!2089289 () Bool)

(assert (=> b!4891647 (=> (not res!2089289) (not e!3058126))))

(declare-fun lt!2005117 () Option!14026)

(assert (=> b!4891647 (= res!2089289 (isDefined!11037 lt!2005117))))

(declare-fun b!4891648 () Bool)

(assert (=> b!4891648 (= e!3058126 (contains!19437 (t!365275 rulesArg!165) (rule!11358 (_1!33526 (get!19478 lt!2005117)))))))

(declare-fun d!1570788 () Bool)

(assert (=> d!1570788 e!3058125))

(declare-fun res!2089290 () Bool)

(assert (=> d!1570788 (=> res!2089290 e!3058125)))

(assert (=> d!1570788 (= res!2089290 (isEmpty!30258 lt!2005117))))

(declare-fun e!3058124 () Option!14026)

(assert (=> d!1570788 (= lt!2005117 e!3058124)))

(declare-fun c!831334 () Bool)

(assert (=> d!1570788 (= c!831334 (and ((_ is Cons!56405) (t!365275 rulesArg!165)) ((_ is Nil!56405) (t!365275 (t!365275 rulesArg!165)))))))

(declare-fun lt!2005118 () Unit!146398)

(declare-fun lt!2005121 () Unit!146398)

(assert (=> d!1570788 (= lt!2005118 lt!2005121)))

(assert (=> d!1570788 (isPrefix!4894 lt!2004534 lt!2004534)))

(assert (=> d!1570788 (= lt!2005121 (lemmaIsPrefixRefl!3291 lt!2004534 lt!2004534))))

(assert (=> d!1570788 (rulesValidInductive!3153 thiss!14805 (t!365275 rulesArg!165))))

(assert (=> d!1570788 (= (maxPrefix!4603 thiss!14805 (t!365275 rulesArg!165) lt!2004534) lt!2005117)))

(declare-fun call!339242 () Option!14026)

(declare-fun bm!339237 () Bool)

(assert (=> bm!339237 (= call!339242 (maxPrefixOneRule!3529 thiss!14805 (h!62853 (t!365275 rulesArg!165)) lt!2004534))))

(declare-fun b!4891649 () Bool)

(assert (=> b!4891649 (= e!3058124 call!339242)))

(declare-fun b!4891650 () Bool)

(declare-fun res!2089291 () Bool)

(assert (=> b!4891650 (=> (not res!2089291) (not e!3058126))))

(assert (=> b!4891650 (= res!2089291 (matchR!6530 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2005117)))) (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2005117))))))))

(declare-fun b!4891651 () Bool)

(declare-fun res!2089294 () Bool)

(assert (=> b!4891651 (=> (not res!2089294) (not e!3058126))))

(assert (=> b!4891651 (= res!2089294 (= (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2005117)))) (originalCharacters!8487 (_1!33526 (get!19478 lt!2005117)))))))

(declare-fun b!4891652 () Bool)

(declare-fun res!2089292 () Bool)

(assert (=> b!4891652 (=> (not res!2089292) (not e!3058126))))

(assert (=> b!4891652 (= res!2089292 (= (++!12243 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2005117)))) (_2!33526 (get!19478 lt!2005117))) lt!2004534))))

(declare-fun b!4891653 () Bool)

(declare-fun res!2089288 () Bool)

(assert (=> b!4891653 (=> (not res!2089288) (not e!3058126))))

(assert (=> b!4891653 (= res!2089288 (< (size!37138 (_2!33526 (get!19478 lt!2005117))) (size!37138 lt!2004534)))))

(declare-fun b!4891654 () Bool)

(declare-fun res!2089293 () Bool)

(assert (=> b!4891654 (=> (not res!2089293) (not e!3058126))))

(assert (=> b!4891654 (= res!2089293 (= (value!262109 (_1!33526 (get!19478 lt!2005117))) (apply!13540 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2005117)))) (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2005117)))))))))

(declare-fun b!4891655 () Bool)

(declare-fun lt!2005119 () Option!14026)

(declare-fun lt!2005120 () Option!14026)

(assert (=> b!4891655 (= e!3058124 (ite (and ((_ is None!14025) lt!2005119) ((_ is None!14025) lt!2005120)) None!14025 (ite ((_ is None!14025) lt!2005120) lt!2005119 (ite ((_ is None!14025) lt!2005119) lt!2005120 (ite (>= (size!37136 (_1!33526 (v!49977 lt!2005119))) (size!37136 (_1!33526 (v!49977 lt!2005120)))) lt!2005119 lt!2005120)))))))

(assert (=> b!4891655 (= lt!2005119 call!339242)))

(assert (=> b!4891655 (= lt!2005120 (maxPrefix!4603 thiss!14805 (t!365275 (t!365275 rulesArg!165)) lt!2004534))))

(assert (= (and d!1570788 c!831334) b!4891649))

(assert (= (and d!1570788 (not c!831334)) b!4891655))

(assert (= (or b!4891649 b!4891655) bm!339237))

(assert (= (and d!1570788 (not res!2089290)) b!4891647))

(assert (= (and b!4891647 res!2089289) b!4891651))

(assert (= (and b!4891651 res!2089294) b!4891653))

(assert (= (and b!4891653 res!2089288) b!4891652))

(assert (= (and b!4891652 res!2089292) b!4891654))

(assert (= (and b!4891654 res!2089293) b!4891650))

(assert (= (and b!4891650 res!2089291) b!4891648))

(declare-fun m!5895450 () Bool)

(assert (=> b!4891654 m!5895450))

(declare-fun m!5895452 () Bool)

(assert (=> b!4891654 m!5895452))

(assert (=> b!4891654 m!5895452))

(declare-fun m!5895454 () Bool)

(assert (=> b!4891654 m!5895454))

(assert (=> b!4891652 m!5895450))

(declare-fun m!5895456 () Bool)

(assert (=> b!4891652 m!5895456))

(assert (=> b!4891652 m!5895456))

(declare-fun m!5895458 () Bool)

(assert (=> b!4891652 m!5895458))

(assert (=> b!4891652 m!5895458))

(declare-fun m!5895460 () Bool)

(assert (=> b!4891652 m!5895460))

(declare-fun m!5895462 () Bool)

(assert (=> bm!339237 m!5895462))

(assert (=> b!4891651 m!5895450))

(assert (=> b!4891651 m!5895456))

(assert (=> b!4891651 m!5895456))

(assert (=> b!4891651 m!5895458))

(assert (=> b!4891650 m!5895450))

(assert (=> b!4891650 m!5895456))

(assert (=> b!4891650 m!5895456))

(assert (=> b!4891650 m!5895458))

(assert (=> b!4891650 m!5895458))

(declare-fun m!5895466 () Bool)

(assert (=> b!4891650 m!5895466))

(declare-fun m!5895470 () Bool)

(assert (=> d!1570788 m!5895470))

(assert (=> d!1570788 m!5894172))

(assert (=> d!1570788 m!5894174))

(assert (=> d!1570788 m!5894236))

(assert (=> b!4891653 m!5895450))

(declare-fun m!5895472 () Bool)

(assert (=> b!4891653 m!5895472))

(assert (=> b!4891653 m!5894382))

(assert (=> b!4891648 m!5895450))

(declare-fun m!5895474 () Bool)

(assert (=> b!4891648 m!5895474))

(declare-fun m!5895476 () Bool)

(assert (=> b!4891655 m!5895476))

(declare-fun m!5895478 () Bool)

(assert (=> b!4891647 m!5895478))

(assert (=> b!4890883 d!1570788))

(declare-fun d!1570790 () Bool)

(declare-fun res!2089301 () Bool)

(declare-fun e!3058144 () Bool)

(assert (=> d!1570790 (=> (not res!2089301) (not e!3058144))))

(assert (=> d!1570790 (= res!2089301 (= (csize!29714 (c!831175 input!1236)) (+ (size!37142 (left!40975 (c!831175 input!1236))) (size!37142 (right!41305 (c!831175 input!1236))))))))

(assert (=> d!1570790 (= (inv!72682 (c!831175 input!1236)) e!3058144)))

(declare-fun b!4891691 () Bool)

(declare-fun res!2089302 () Bool)

(assert (=> b!4891691 (=> (not res!2089302) (not e!3058144))))

(assert (=> b!4891691 (= res!2089302 (and (not (= (left!40975 (c!831175 input!1236)) Empty!14742)) (not (= (right!41305 (c!831175 input!1236)) Empty!14742))))))

(declare-fun b!4891692 () Bool)

(declare-fun res!2089303 () Bool)

(assert (=> b!4891692 (=> (not res!2089303) (not e!3058144))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4891692 (= res!2089303 (= (cheight!14953 (c!831175 input!1236)) (+ (max!0 (height!1955 (left!40975 (c!831175 input!1236))) (height!1955 (right!41305 (c!831175 input!1236)))) 1)))))

(declare-fun b!4891693 () Bool)

(assert (=> b!4891693 (= e!3058144 (<= 0 (cheight!14953 (c!831175 input!1236))))))

(assert (= (and d!1570790 res!2089301) b!4891691))

(assert (= (and b!4891691 res!2089302) b!4891692))

(assert (= (and b!4891692 res!2089303) b!4891693))

(declare-fun m!5895496 () Bool)

(assert (=> d!1570790 m!5895496))

(declare-fun m!5895498 () Bool)

(assert (=> d!1570790 m!5895498))

(assert (=> b!4891692 m!5895146))

(assert (=> b!4891692 m!5895148))

(assert (=> b!4891692 m!5895146))

(assert (=> b!4891692 m!5895148))

(declare-fun m!5895500 () Bool)

(assert (=> b!4891692 m!5895500))

(assert (=> b!4890975 d!1570790))

(assert (=> d!1570488 d!1570482))

(assert (=> d!1570488 d!1570498))

(assert (=> d!1570488 d!1570500))

(assert (=> d!1570488 d!1570510))

(declare-fun d!1570798 () Bool)

(declare-fun res!2089308 () Bool)

(declare-fun e!3058147 () Bool)

(assert (=> d!1570798 (=> (not res!2089308) (not e!3058147))))

(assert (=> d!1570798 (= res!2089308 (<= (size!37138 (list!17726 (xs!18058 (c!831175 input!1236)))) 512))))

(assert (=> d!1570798 (= (inv!72683 (c!831175 input!1236)) e!3058147)))

(declare-fun b!4891698 () Bool)

(declare-fun res!2089309 () Bool)

(assert (=> b!4891698 (=> (not res!2089309) (not e!3058147))))

(assert (=> b!4891698 (= res!2089309 (= (csize!29715 (c!831175 input!1236)) (size!37138 (list!17726 (xs!18058 (c!831175 input!1236))))))))

(declare-fun b!4891699 () Bool)

(assert (=> b!4891699 (= e!3058147 (and (> (csize!29715 (c!831175 input!1236)) 0) (<= (csize!29715 (c!831175 input!1236)) 512)))))

(assert (= (and d!1570798 res!2089308) b!4891698))

(assert (= (and b!4891698 res!2089309) b!4891699))

(assert (=> d!1570798 m!5894536))

(assert (=> d!1570798 m!5894536))

(declare-fun m!5895502 () Bool)

(assert (=> d!1570798 m!5895502))

(assert (=> b!4891698 m!5894536))

(assert (=> b!4891698 m!5894536))

(assert (=> b!4891698 m!5895502))

(assert (=> b!4890977 d!1570798))

(declare-fun bs!1175854 () Bool)

(declare-fun d!1570800 () Bool)

(assert (= bs!1175854 (and d!1570800 d!1570734)))

(declare-fun lambda!244000 () Int)

(assert (=> bs!1175854 (= lambda!244000 lambda!243997)))

(assert (=> d!1570800 true))

(assert (=> d!1570800 (< (dynLambda!22617 order!25463 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) (dynLambda!22631 order!25477 lambda!244000))))

(declare-fun Forall2!1267 (Int) Bool)

(assert (=> d!1570800 (= (equivClasses!3465 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) (Forall2!1267 lambda!244000))))

(declare-fun bs!1175855 () Bool)

(assert (= bs!1175855 d!1570800))

(declare-fun m!5895504 () Bool)

(assert (=> bs!1175855 m!5895504))

(assert (=> b!4890956 d!1570800))

(declare-fun b!4891706 () Bool)

(declare-fun e!3058150 () Bool)

(declare-fun tp!1376772 () Bool)

(assert (=> b!4891706 (= e!3058150 tp!1376772)))

(declare-fun b!4891707 () Bool)

(declare-fun tp!1376771 () Bool)

(declare-fun tp!1376769 () Bool)

(assert (=> b!4891707 (= e!3058150 (and tp!1376771 tp!1376769))))

(declare-fun b!4891705 () Bool)

(declare-fun tp!1376770 () Bool)

(declare-fun tp!1376773 () Bool)

(assert (=> b!4891705 (= e!3058150 (and tp!1376770 tp!1376773))))

(assert (=> b!4891009 (= tp!1376705 e!3058150)))

(declare-fun b!4891704 () Bool)

(assert (=> b!4891704 (= e!3058150 tp_is_empty!35779)))

(assert (= (and b!4891009 ((_ is ElementMatch!13249) (regex!8174 (h!62853 (t!365275 rulesArg!165))))) b!4891704))

(assert (= (and b!4891009 ((_ is Concat!21734) (regex!8174 (h!62853 (t!365275 rulesArg!165))))) b!4891705))

(assert (= (and b!4891009 ((_ is Star!13249) (regex!8174 (h!62853 (t!365275 rulesArg!165))))) b!4891706))

(assert (= (and b!4891009 ((_ is Union!13249) (regex!8174 (h!62853 (t!365275 rulesArg!165))))) b!4891707))

(declare-fun b!4891710 () Bool)

(declare-fun e!3058151 () Bool)

(declare-fun tp!1376777 () Bool)

(assert (=> b!4891710 (= e!3058151 tp!1376777)))

(declare-fun b!4891711 () Bool)

(declare-fun tp!1376776 () Bool)

(declare-fun tp!1376774 () Bool)

(assert (=> b!4891711 (= e!3058151 (and tp!1376776 tp!1376774))))

(declare-fun b!4891709 () Bool)

(declare-fun tp!1376775 () Bool)

(declare-fun tp!1376778 () Bool)

(assert (=> b!4891709 (= e!3058151 (and tp!1376775 tp!1376778))))

(assert (=> b!4890997 (= tp!1376693 e!3058151)))

(declare-fun b!4891708 () Bool)

(assert (=> b!4891708 (= e!3058151 tp_is_empty!35779)))

(assert (= (and b!4890997 ((_ is ElementMatch!13249) (regOne!27010 (regex!8174 (h!62853 rulesArg!165))))) b!4891708))

(assert (= (and b!4890997 ((_ is Concat!21734) (regOne!27010 (regex!8174 (h!62853 rulesArg!165))))) b!4891709))

(assert (= (and b!4890997 ((_ is Star!13249) (regOne!27010 (regex!8174 (h!62853 rulesArg!165))))) b!4891710))

(assert (= (and b!4890997 ((_ is Union!13249) (regOne!27010 (regex!8174 (h!62853 rulesArg!165))))) b!4891711))

(declare-fun b!4891714 () Bool)

(declare-fun e!3058152 () Bool)

(declare-fun tp!1376782 () Bool)

(assert (=> b!4891714 (= e!3058152 tp!1376782)))

(declare-fun b!4891715 () Bool)

(declare-fun tp!1376781 () Bool)

(declare-fun tp!1376779 () Bool)

(assert (=> b!4891715 (= e!3058152 (and tp!1376781 tp!1376779))))

(declare-fun b!4891713 () Bool)

(declare-fun tp!1376780 () Bool)

(declare-fun tp!1376783 () Bool)

(assert (=> b!4891713 (= e!3058152 (and tp!1376780 tp!1376783))))

(assert (=> b!4890997 (= tp!1376696 e!3058152)))

(declare-fun b!4891712 () Bool)

(assert (=> b!4891712 (= e!3058152 tp_is_empty!35779)))

(assert (= (and b!4890997 ((_ is ElementMatch!13249) (regTwo!27010 (regex!8174 (h!62853 rulesArg!165))))) b!4891712))

(assert (= (and b!4890997 ((_ is Concat!21734) (regTwo!27010 (regex!8174 (h!62853 rulesArg!165))))) b!4891713))

(assert (= (and b!4890997 ((_ is Star!13249) (regTwo!27010 (regex!8174 (h!62853 rulesArg!165))))) b!4891714))

(assert (= (and b!4890997 ((_ is Union!13249) (regTwo!27010 (regex!8174 (h!62853 rulesArg!165))))) b!4891715))

(declare-fun b!4891718 () Bool)

(declare-fun e!3058153 () Bool)

(declare-fun tp!1376787 () Bool)

(assert (=> b!4891718 (= e!3058153 tp!1376787)))

(declare-fun b!4891719 () Bool)

(declare-fun tp!1376786 () Bool)

(declare-fun tp!1376784 () Bool)

(assert (=> b!4891719 (= e!3058153 (and tp!1376786 tp!1376784))))

(declare-fun b!4891717 () Bool)

(declare-fun tp!1376785 () Bool)

(declare-fun tp!1376788 () Bool)

(assert (=> b!4891717 (= e!3058153 (and tp!1376785 tp!1376788))))

(assert (=> b!4890998 (= tp!1376695 e!3058153)))

(declare-fun b!4891716 () Bool)

(assert (=> b!4891716 (= e!3058153 tp_is_empty!35779)))

(assert (= (and b!4890998 ((_ is ElementMatch!13249) (reg!13578 (regex!8174 (h!62853 rulesArg!165))))) b!4891716))

(assert (= (and b!4890998 ((_ is Concat!21734) (reg!13578 (regex!8174 (h!62853 rulesArg!165))))) b!4891717))

(assert (= (and b!4890998 ((_ is Star!13249) (reg!13578 (regex!8174 (h!62853 rulesArg!165))))) b!4891718))

(assert (= (and b!4890998 ((_ is Union!13249) (reg!13578 (regex!8174 (h!62853 rulesArg!165))))) b!4891719))

(declare-fun b!4891722 () Bool)

(declare-fun e!3058154 () Bool)

(declare-fun tp!1376792 () Bool)

(assert (=> b!4891722 (= e!3058154 tp!1376792)))

(declare-fun b!4891723 () Bool)

(declare-fun tp!1376791 () Bool)

(declare-fun tp!1376789 () Bool)

(assert (=> b!4891723 (= e!3058154 (and tp!1376791 tp!1376789))))

(declare-fun b!4891721 () Bool)

(declare-fun tp!1376790 () Bool)

(declare-fun tp!1376793 () Bool)

(assert (=> b!4891721 (= e!3058154 (and tp!1376790 tp!1376793))))

(assert (=> b!4890999 (= tp!1376694 e!3058154)))

(declare-fun b!4891720 () Bool)

(assert (=> b!4891720 (= e!3058154 tp_is_empty!35779)))

(assert (= (and b!4890999 ((_ is ElementMatch!13249) (regOne!27011 (regex!8174 (h!62853 rulesArg!165))))) b!4891720))

(assert (= (and b!4890999 ((_ is Concat!21734) (regOne!27011 (regex!8174 (h!62853 rulesArg!165))))) b!4891721))

(assert (= (and b!4890999 ((_ is Star!13249) (regOne!27011 (regex!8174 (h!62853 rulesArg!165))))) b!4891722))

(assert (= (and b!4890999 ((_ is Union!13249) (regOne!27011 (regex!8174 (h!62853 rulesArg!165))))) b!4891723))

(declare-fun b!4891726 () Bool)

(declare-fun e!3058155 () Bool)

(declare-fun tp!1376797 () Bool)

(assert (=> b!4891726 (= e!3058155 tp!1376797)))

(declare-fun b!4891727 () Bool)

(declare-fun tp!1376796 () Bool)

(declare-fun tp!1376794 () Bool)

(assert (=> b!4891727 (= e!3058155 (and tp!1376796 tp!1376794))))

(declare-fun b!4891725 () Bool)

(declare-fun tp!1376795 () Bool)

(declare-fun tp!1376798 () Bool)

(assert (=> b!4891725 (= e!3058155 (and tp!1376795 tp!1376798))))

(assert (=> b!4890999 (= tp!1376692 e!3058155)))

(declare-fun b!4891724 () Bool)

(assert (=> b!4891724 (= e!3058155 tp_is_empty!35779)))

(assert (= (and b!4890999 ((_ is ElementMatch!13249) (regTwo!27011 (regex!8174 (h!62853 rulesArg!165))))) b!4891724))

(assert (= (and b!4890999 ((_ is Concat!21734) (regTwo!27011 (regex!8174 (h!62853 rulesArg!165))))) b!4891725))

(assert (= (and b!4890999 ((_ is Star!13249) (regTwo!27011 (regex!8174 (h!62853 rulesArg!165))))) b!4891726))

(assert (= (and b!4890999 ((_ is Union!13249) (regTwo!27011 (regex!8174 (h!62853 rulesArg!165))))) b!4891727))

(declare-fun tp!1376801 () Bool)

(declare-fun b!4891728 () Bool)

(declare-fun e!3058156 () Bool)

(declare-fun tp!1376799 () Bool)

(assert (=> b!4891728 (= e!3058156 (and (inv!72677 (left!40975 (left!40975 (c!831175 input!1236)))) tp!1376801 (inv!72677 (right!41305 (left!40975 (c!831175 input!1236)))) tp!1376799))))

(declare-fun b!4891730 () Bool)

(declare-fun e!3058157 () Bool)

(declare-fun tp!1376800 () Bool)

(assert (=> b!4891730 (= e!3058157 tp!1376800)))

(declare-fun b!4891729 () Bool)

(assert (=> b!4891729 (= e!3058156 (and (inv!72685 (xs!18058 (left!40975 (c!831175 input!1236)))) e!3058157))))

(assert (=> b!4891019 (= tp!1376717 (and (inv!72677 (left!40975 (c!831175 input!1236))) e!3058156))))

(assert (= (and b!4891019 ((_ is Node!14742) (left!40975 (c!831175 input!1236)))) b!4891728))

(assert (= b!4891729 b!4891730))

(assert (= (and b!4891019 ((_ is Leaf!24546) (left!40975 (c!831175 input!1236)))) b!4891729))

(declare-fun m!5895506 () Bool)

(assert (=> b!4891728 m!5895506))

(declare-fun m!5895508 () Bool)

(assert (=> b!4891728 m!5895508))

(declare-fun m!5895510 () Bool)

(assert (=> b!4891729 m!5895510))

(assert (=> b!4891019 m!5894484))

(declare-fun e!3058158 () Bool)

(declare-fun tp!1376804 () Bool)

(declare-fun b!4891731 () Bool)

(declare-fun tp!1376802 () Bool)

(assert (=> b!4891731 (= e!3058158 (and (inv!72677 (left!40975 (right!41305 (c!831175 input!1236)))) tp!1376804 (inv!72677 (right!41305 (right!41305 (c!831175 input!1236)))) tp!1376802))))

(declare-fun b!4891733 () Bool)

(declare-fun e!3058159 () Bool)

(declare-fun tp!1376803 () Bool)

(assert (=> b!4891733 (= e!3058159 tp!1376803)))

(declare-fun b!4891732 () Bool)

(assert (=> b!4891732 (= e!3058158 (and (inv!72685 (xs!18058 (right!41305 (c!831175 input!1236)))) e!3058159))))

(assert (=> b!4891019 (= tp!1376715 (and (inv!72677 (right!41305 (c!831175 input!1236))) e!3058158))))

(assert (= (and b!4891019 ((_ is Node!14742) (right!41305 (c!831175 input!1236)))) b!4891731))

(assert (= b!4891732 b!4891733))

(assert (= (and b!4891019 ((_ is Leaf!24546) (right!41305 (c!831175 input!1236)))) b!4891732))

(declare-fun m!5895512 () Bool)

(assert (=> b!4891731 m!5895512))

(declare-fun m!5895514 () Bool)

(assert (=> b!4891731 m!5895514))

(declare-fun m!5895516 () Bool)

(assert (=> b!4891732 m!5895516))

(assert (=> b!4891019 m!5894486))

(declare-fun b!4891738 () Bool)

(declare-fun e!3058162 () Bool)

(declare-fun tp!1376807 () Bool)

(assert (=> b!4891738 (= e!3058162 (and tp_is_empty!35779 tp!1376807))))

(assert (=> b!4891021 (= tp!1376716 e!3058162)))

(assert (= (and b!4891021 ((_ is Cons!56403) (innerList!14830 (xs!18058 (c!831175 input!1236))))) b!4891738))

(declare-fun b!4891741 () Bool)

(declare-fun b_free!131555 () Bool)

(declare-fun b_next!132345 () Bool)

(assert (=> b!4891741 (= b_free!131555 (not b_next!132345))))

(declare-fun tb!258591 () Bool)

(declare-fun t!365333 () Bool)

(assert (=> (and b!4891741 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))))) t!365333) tb!258591))

(declare-fun result!322154 () Bool)

(assert (= result!322154 result!322116))

(assert (=> d!1570656 t!365333))

(declare-fun t!365335 () Bool)

(declare-fun tb!258593 () Bool)

(assert (=> (and b!4891741 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) t!365335) tb!258593))

(declare-fun result!322156 () Bool)

(assert (= result!322156 result!322122))

(assert (=> d!1570734 t!365335))

(declare-fun t!365337 () Bool)

(declare-fun tb!258595 () Bool)

(assert (=> (and b!4891741 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) t!365337) tb!258595))

(declare-fun result!322158 () Bool)

(assert (= result!322158 result!322126))

(assert (=> d!1570734 t!365337))

(assert (=> d!1570774 t!365335))

(declare-fun b_and!344555 () Bool)

(declare-fun tp!1376809 () Bool)

(assert (=> b!4891741 (= tp!1376809 (and (=> t!365333 result!322154) (=> t!365335 result!322156) (=> t!365337 result!322158) b_and!344555))))

(declare-fun b_free!131557 () Bool)

(declare-fun b_next!132347 () Bool)

(assert (=> b!4891741 (= b_free!131557 (not b_next!132347))))

(declare-fun t!365339 () Bool)

(declare-fun tb!258597 () Bool)

(assert (=> (and b!4891741 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))))) t!365339) tb!258597))

(declare-fun result!322160 () Bool)

(assert (= result!322160 result!322110))

(assert (=> d!1570644 t!365339))

(declare-fun b_and!344557 () Bool)

(declare-fun tp!1376810 () Bool)

(assert (=> b!4891741 (= tp!1376810 (and (=> t!365339 result!322160) b_and!344557))))

(declare-fun e!3058166 () Bool)

(assert (=> b!4891741 (= e!3058166 (and tp!1376809 tp!1376810))))

(declare-fun b!4891740 () Bool)

(declare-fun tp!1376808 () Bool)

(declare-fun e!3058164 () Bool)

(assert (=> b!4891740 (= e!3058164 (and tp!1376808 (inv!72673 (tag!9038 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (inv!72678 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) e!3058166))))

(declare-fun b!4891739 () Bool)

(declare-fun e!3058165 () Bool)

(declare-fun tp!1376811 () Bool)

(assert (=> b!4891739 (= e!3058165 (and e!3058164 tp!1376811))))

(assert (=> b!4891008 (= tp!1376708 e!3058165)))

(assert (= b!4891740 b!4891741))

(assert (= b!4891739 b!4891740))

(assert (= (and b!4891008 ((_ is Cons!56405) (t!365275 (t!365275 rulesArg!165)))) b!4891739))

(declare-fun m!5895518 () Bool)

(assert (=> b!4891740 m!5895518))

(declare-fun m!5895520 () Bool)

(assert (=> b!4891740 m!5895520))

(declare-fun b_lambda!194165 () Bool)

(assert (= b_lambda!194135 (or b!4890845 b_lambda!194165)))

(declare-fun bs!1175856 () Bool)

(declare-fun d!1570802 () Bool)

(assert (= bs!1175856 (and d!1570802 b!4890845)))

(assert (=> bs!1175856 (= (dynLambda!22630 lambda!243967 (seqFromList!5936 (list!17722 (_1!33527 lt!2004658)))) (= (list!17722 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658)))))) (list!17722 (seqFromList!5936 (list!17722 (_1!33527 lt!2004658))))))))

(declare-fun b_lambda!194177 () Bool)

(assert (=> (not b_lambda!194177) (not bs!1175856)))

(declare-fun t!365341 () Bool)

(declare-fun tb!258599 () Bool)

(assert (=> (and b!4890709 (= (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) t!365341) tb!258599))

(declare-fun tp!1376812 () Bool)

(declare-fun b!4891742 () Bool)

(declare-fun e!3058167 () Bool)

(assert (=> b!4891742 (= e!3058167 (and (inv!72677 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658))))))) tp!1376812))))

(declare-fun result!322162 () Bool)

(assert (=> tb!258599 (= result!322162 (and (inv!72679 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658)))))) e!3058167))))

(assert (= tb!258599 b!4891742))

(declare-fun m!5895522 () Bool)

(assert (=> b!4891742 m!5895522))

(declare-fun m!5895524 () Bool)

(assert (=> tb!258599 m!5895524))

(assert (=> bs!1175856 t!365341))

(declare-fun b_and!344559 () Bool)

(assert (= b_and!344507 (and (=> t!365341 result!322162) b_and!344559)))

(declare-fun t!365343 () Bool)

(declare-fun tb!258601 () Bool)

(assert (=> (and b!4891010 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) t!365343) tb!258601))

(declare-fun result!322164 () Bool)

(assert (= result!322164 result!322162))

(assert (=> bs!1175856 t!365343))

(declare-fun b_and!344561 () Bool)

(assert (= b_and!344509 (and (=> t!365343 result!322164) b_and!344561)))

(declare-fun t!365345 () Bool)

(declare-fun tb!258603 () Bool)

(assert (=> (and b!4891741 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) t!365345) tb!258603))

(declare-fun result!322166 () Bool)

(assert (= result!322166 result!322162))

(assert (=> bs!1175856 t!365345))

(declare-fun b_and!344563 () Bool)

(assert (= b_and!344557 (and (=> t!365345 result!322166) b_and!344563)))

(declare-fun b_lambda!194179 () Bool)

(assert (=> (not b_lambda!194179) (not bs!1175856)))

(assert (=> bs!1175856 t!365309))

(declare-fun b_and!344565 () Bool)

(assert (= b_and!344523 (and (=> t!365309 result!322126) b_and!344565)))

(assert (=> bs!1175856 t!365311))

(declare-fun b_and!344567 () Bool)

(assert (= b_and!344525 (and (=> t!365311 result!322128) b_and!344567)))

(assert (=> bs!1175856 t!365337))

(declare-fun b_and!344569 () Bool)

(assert (= b_and!344555 (and (=> t!365337 result!322158) b_and!344569)))

(declare-fun m!5895526 () Bool)

(assert (=> bs!1175856 m!5895526))

(declare-fun m!5895528 () Bool)

(assert (=> bs!1175856 m!5895528))

(assert (=> bs!1175856 m!5895308))

(assert (=> bs!1175856 m!5895526))

(assert (=> bs!1175856 m!5894348))

(assert (=> bs!1175856 m!5895312))

(assert (=> bs!1175856 m!5894348))

(assert (=> bs!1175856 m!5895308))

(assert (=> d!1570732 d!1570802))

(declare-fun b_lambda!194167 () Bool)

(assert (= b_lambda!194141 (or (and b!4890709 b_free!131539) (and b!4891010 b_free!131547 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) (and b!4891741 b_free!131555 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) b_lambda!194167)))

(declare-fun b_lambda!194169 () Bool)

(assert (= b_lambda!194131 (or d!1570510 b_lambda!194169)))

(declare-fun bs!1175857 () Bool)

(declare-fun d!1570804 () Bool)

(assert (= bs!1175857 (and d!1570804 d!1570510)))

(assert (=> bs!1175857 (= (dynLambda!22629 lambda!243978 (h!62853 rulesArg!165)) (ruleValid!3671 thiss!14805 (h!62853 rulesArg!165)))))

(assert (=> bs!1175857 m!5894336))

(assert (=> b!4891519 d!1570804))

(declare-fun b_lambda!194171 () Bool)

(assert (= b_lambda!194137 (or (and b!4890709 b_free!131539) (and b!4891010 b_free!131547 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) (and b!4891741 b_free!131555 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) b_lambda!194171)))

(declare-fun b_lambda!194173 () Bool)

(assert (= b_lambda!194133 (or b!4890845 b_lambda!194173)))

(declare-fun bs!1175858 () Bool)

(declare-fun d!1570806 () Bool)

(assert (= bs!1175858 (and d!1570806 b!4890845)))

(assert (=> bs!1175858 (= (dynLambda!22630 lambda!243967 (_1!33527 lt!2004658)) (= (list!17722 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (_1!33527 lt!2004658)))) (list!17722 (_1!33527 lt!2004658))))))

(declare-fun b_lambda!194181 () Bool)

(assert (=> (not b_lambda!194181) (not bs!1175858)))

(declare-fun t!365347 () Bool)

(declare-fun tb!258605 () Bool)

(assert (=> (and b!4890709 (= (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) t!365347) tb!258605))

(declare-fun b!4891743 () Bool)

(declare-fun e!3058168 () Bool)

(declare-fun tp!1376813 () Bool)

(assert (=> b!4891743 (= e!3058168 (and (inv!72677 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (_1!33527 lt!2004658))))) tp!1376813))))

(declare-fun result!322168 () Bool)

(assert (=> tb!258605 (= result!322168 (and (inv!72679 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (_1!33527 lt!2004658)))) e!3058168))))

(assert (= tb!258605 b!4891743))

(declare-fun m!5895530 () Bool)

(assert (=> b!4891743 m!5895530))

(declare-fun m!5895532 () Bool)

(assert (=> tb!258605 m!5895532))

(assert (=> bs!1175858 t!365347))

(declare-fun b_and!344571 () Bool)

(assert (= b_and!344559 (and (=> t!365347 result!322168) b_and!344571)))

(declare-fun t!365349 () Bool)

(declare-fun tb!258607 () Bool)

(assert (=> (and b!4891010 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) t!365349) tb!258607))

(declare-fun result!322170 () Bool)

(assert (= result!322170 result!322168))

(assert (=> bs!1175858 t!365349))

(declare-fun b_and!344573 () Bool)

(assert (= b_and!344561 (and (=> t!365349 result!322170) b_and!344573)))

(declare-fun t!365351 () Bool)

(declare-fun tb!258609 () Bool)

(assert (=> (and b!4891741 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) t!365351) tb!258609))

(declare-fun result!322172 () Bool)

(assert (= result!322172 result!322168))

(assert (=> bs!1175858 t!365351))

(declare-fun b_and!344575 () Bool)

(assert (= b_and!344563 (and (=> t!365351 result!322172) b_and!344575)))

(declare-fun b_lambda!194183 () Bool)

(assert (=> (not b_lambda!194183) (not bs!1175858)))

(assert (=> bs!1175858 t!365305))

(declare-fun b_and!344577 () Bool)

(assert (= b_and!344565 (and (=> t!365305 result!322122) b_and!344577)))

(assert (=> bs!1175858 t!365307))

(declare-fun b_and!344579 () Bool)

(assert (= b_and!344567 (and (=> t!365307 result!322124) b_and!344579)))

(assert (=> bs!1175858 t!365335))

(declare-fun b_and!344581 () Bool)

(assert (= b_and!344569 (and (=> t!365335 result!322156) b_and!344581)))

(declare-fun m!5895534 () Bool)

(assert (=> bs!1175858 m!5895534))

(declare-fun m!5895536 () Bool)

(assert (=> bs!1175858 m!5895536))

(assert (=> bs!1175858 m!5895310))

(assert (=> bs!1175858 m!5895534))

(assert (=> bs!1175858 m!5894342))

(assert (=> bs!1175858 m!5895310))

(assert (=> d!1570726 d!1570806))

(declare-fun b_lambda!194175 () Bool)

(assert (= b_lambda!194139 (or (and b!4890709 b_free!131539) (and b!4891010 b_free!131547 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) (and b!4891741 b_free!131555 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) b_lambda!194175)))

(check-sat (not b!4891169) (not b!4891087) (not bm!339226) (not b!4891506) (not b!4891528) (not b!4891525) (not b!4891717) (not d!1570770) (not b!4891502) (not b!4891019) (not tb!258605) (not tb!258567) (not d!1570674) (not d!1570726) (not b_next!132331) (not d!1570594) (not b!4891501) b_and!344575 (not bm!339176) (not b!4891718) (not d!1570652) (not b_lambda!194175) b_and!344577 (not b!4891739) (not b!4891647) (not b!4891508) (not b!4891435) (not bs!1175857) (not d!1570768) (not b!4891376) (not b!4891497) (not b!4891077) (not b!4891125) (not d!1570798) (not d!1570570) (not b!4891403) (not d!1570716) (not b!4891484) tp_is_empty!35779 (not b!4891343) (not bm!339175) (not b!4891520) (not b!4891730) (not b!4891635) (not b_lambda!194169) (not bm!339227) (not b!4891710) (not b_next!132345) (not b!4891514) b_and!344573 (not d!1570678) (not b!4891387) (not d!1570686) (not b!4891719) (not d!1570592) (not b!4891732) (not b!4891124) (not d!1570596) (not b_lambda!194177) (not b!4891692) (not d!1570638) (not b!4891121) (not d!1570578) (not b_lambda!194171) (not b!4891074) (not bm!339229) (not b!4891329) (not b!4891650) (not bm!339237) (not b!4891742) (not b_next!132337) (not b!4891120) (not b!4891336) (not b!4891623) (not b!4891165) (not b!4891503) (not d!1570790) (not b!4891422) (not d!1570658) b_and!344571 (not b!4891633) (not b!4891654) (not d!1570788) (not d!1570666) (not bs!1175856) (not b!4891319) (not b!4891709) (not d!1570676) (not b_next!132347) (not b_lambda!194183) (not b!4891383) (not b!4891698) (not b!4891483) (not d!1570564) (not b!4891126) (not b!4891083) (not b!4891500) (not b!4891731) (not b!4891706) (not bm!339232) (not b_lambda!194129) (not bm!339230) (not d!1570668) (not b!4891174) (not b!4891721) (not b!4891316) (not b!4891726) (not tb!258555) (not d!1570734) (not d!1570574) (not d!1570646) (not b!4891652) (not b!4891134) (not b!4891117) (not d!1570588) (not b!4891072) (not d!1570586) (not d!1570784) (not b!4891714) (not b!4891082) (not b!4891127) (not d!1570550) b_and!344581 (not b_lambda!194165) (not b!4891348) (not b_next!132339) (not b!4891425) (not tb!258559) (not d!1570580) (not b!4891499) (not b!4891426) (not b!4891423) (not b!4891418) (not d!1570746) (not bm!339225) (not b!4891436) (not b_lambda!194127) (not b!4891073) (not b!4891419) (not d!1570720) (not d!1570654) (not b!4891707) (not b!4891722) (not tb!258563) (not b!4891382) (not b!4891648) (not b!4891330) (not d!1570566) (not b!4891078) (not b!4891085) (not b!4891119) (not d!1570800) (not b!4891527) (not tb!258599) (not b!4891713) (not d!1570722) (not b!4891129) (not b!4891132) (not d!1570732) (not b!4891594) (not d!1570760) (not d!1570744) (not b!4891385) (not b_lambda!194179) (not b!4891332) (not b!4891530) (not d!1570642) (not bm!339174) (not b!4891627) (not b!4891130) (not b!4891705) (not b!4891733) (not b!4891729) (not b!4891312) (not b!4891341) (not b!4891118) (not b!4891651) (not b!4891176) (not b!4891386) (not b!4891727) (not b!4891424) (not b!4891728) (not b!4891327) (not b!4891310) (not b!4891131) (not b_lambda!194181) (not bm!339231) (not bm!339224) (not b!4891723) (not bm!339179) (not b!4891133) (not b!4891163) (not b_lambda!194167) (not d!1570576) (not b!4891505) (not b!4891655) (not b!4891725) (not b!4891653) (not b_next!132329) (not b!4891740) (not b!4891377) (not b!4891743) (not b!4891081) (not bm!339228) (not b!4891420) (not b!4891170) (not b!4891715) (not b!4891738) (not b!4891498) (not d!1570644) (not b!4891526) (not b!4891123) (not b!4891381) (not bs!1175858) (not b!4891337) (not b!4891071) (not b!4891711) (not b!4891076) (not b!4891634) (not d!1570694) (not b_lambda!194173) (not bm!339223) (not b!4891380) (not b!4891379) b_and!344579 (not d!1570780))
(check-sat b_and!344577 (not b_next!132337) b_and!344571 (not b_next!132347) (not b_next!132329) b_and!344579 (not b_next!132331) b_and!344575 (not b_next!132345) b_and!344573 b_and!344581 (not b_next!132339))
(get-model)

(declare-fun b_lambda!194193 () Bool)

(assert (= b_lambda!194179 (or (and b!4890709 b_free!131539) (and b!4891010 b_free!131547 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) (and b!4891741 b_free!131555 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) b_lambda!194193)))

(declare-fun b_lambda!194195 () Bool)

(assert (= b_lambda!194177 (or (and b!4890709 b_free!131541) (and b!4891010 b_free!131549 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))))) (and b!4891741 b_free!131557 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))))) b_lambda!194195)))

(declare-fun b_lambda!194197 () Bool)

(assert (= b_lambda!194181 (or (and b!4890709 b_free!131541) (and b!4891010 b_free!131549 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))))) (and b!4891741 b_free!131557 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))))) b_lambda!194197)))

(declare-fun b_lambda!194199 () Bool)

(assert (= b_lambda!194183 (or (and b!4890709 b_free!131539) (and b!4891010 b_free!131547 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) (and b!4891741 b_free!131555 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) b_lambda!194199)))

(check-sat (not b!4891169) (not b!4891087) (not bm!339226) (not b!4891506) (not b!4891528) (not b!4891525) (not b!4891717) (not d!1570770) (not b!4891502) (not b!4891019) (not tb!258605) (not tb!258567) (not d!1570674) (not d!1570726) (not b_next!132331) (not d!1570594) (not b!4891501) b_and!344575 (not bm!339176) (not b!4891718) (not d!1570652) (not b_lambda!194175) b_and!344577 (not b!4891739) (not b!4891647) (not b!4891508) (not bs!1175857) (not d!1570768) (not b!4891376) (not b!4891497) (not b!4891077) (not b!4891125) (not d!1570798) (not b!4891435) (not b_lambda!194199) (not d!1570570) (not b!4891403) (not d!1570716) (not b!4891484) tp_is_empty!35779 (not b!4891343) (not bm!339175) (not b!4891520) (not b!4891730) (not b!4891635) (not b_lambda!194169) (not bm!339227) (not b!4891710) (not b_next!132345) (not b!4891514) b_and!344573 (not d!1570678) (not b!4891387) (not d!1570686) (not b!4891719) (not d!1570592) (not b!4891732) (not b!4891124) (not d!1570596) (not b!4891692) (not d!1570638) (not b!4891121) (not d!1570578) (not b_lambda!194171) (not b!4891074) (not bm!339229) (not b!4891329) (not b!4891650) (not bm!339237) (not b!4891742) (not b_next!132337) (not b!4891120) (not b!4891336) (not b!4891623) (not b!4891165) (not b!4891503) (not d!1570790) (not b!4891422) (not d!1570658) b_and!344571 (not b!4891633) (not b!4891654) (not d!1570788) (not d!1570666) (not bs!1175856) (not b!4891319) (not b!4891709) (not d!1570676) (not b_next!132347) (not b!4891383) (not b!4891698) (not b!4891483) (not d!1570564) (not b!4891126) (not b!4891083) (not b!4891500) (not b!4891731) (not b!4891706) (not bm!339232) (not b_lambda!194129) (not bm!339230) (not d!1570668) (not b!4891174) (not b!4891721) (not b!4891316) (not b!4891726) (not tb!258555) (not d!1570734) (not d!1570574) (not d!1570646) (not b!4891652) (not b!4891134) (not b!4891117) (not d!1570588) (not b!4891072) (not b_lambda!194195) (not d!1570586) (not d!1570784) (not b!4891714) (not b!4891082) (not b!4891127) (not d!1570550) b_and!344581 (not b_lambda!194165) (not b!4891348) (not b_next!132339) (not b!4891425) (not tb!258559) (not d!1570580) (not b!4891499) (not b!4891426) (not b!4891423) (not b!4891418) (not d!1570746) (not bm!339225) (not b!4891436) (not b_lambda!194127) (not b!4891073) (not b!4891419) (not d!1570720) (not d!1570654) (not b!4891707) (not b!4891722) (not tb!258563) (not b!4891382) (not b!4891648) (not b!4891330) (not d!1570566) (not b!4891078) (not b!4891085) (not b!4891119) (not d!1570800) (not b!4891527) (not tb!258599) (not b!4891713) (not d!1570722) (not b!4891129) (not b!4891132) (not d!1570732) (not b!4891385) (not b!4891594) (not d!1570760) (not d!1570744) (not b!4891332) (not b!4891530) (not d!1570642) (not bm!339174) (not b!4891627) (not b!4891130) (not b!4891705) (not b!4891733) (not b!4891729) (not b!4891312) (not b!4891341) (not b!4891118) (not b!4891651) (not b!4891176) (not b!4891386) (not b!4891727) (not b!4891424) (not b!4891728) (not bm!339231) (not b!4891327) (not b!4891310) (not b!4891131) (not bm!339224) (not b!4891723) (not bm!339179) (not b!4891133) (not b!4891163) (not b_lambda!194167) (not d!1570576) (not b!4891505) (not b!4891655) (not b!4891725) (not b!4891653) (not b_next!132329) (not b!4891740) (not b!4891377) (not b!4891743) (not b!4891081) (not bm!339228) (not b!4891420) (not b!4891170) (not b!4891715) (not b!4891738) (not b!4891498) (not d!1570644) (not b!4891526) (not b!4891123) (not b!4891381) (not bs!1175858) (not b!4891337) (not b!4891071) (not b!4891711) (not b_lambda!194197) (not b!4891076) (not b!4891634) (not b_lambda!194173) (not bm!339223) (not b!4891380) (not b!4891379) b_and!344579 (not d!1570780) (not b_lambda!194193) (not d!1570694))
(check-sat b_and!344577 (not b_next!132337) b_and!344571 (not b_next!132347) (not b_next!132329) b_and!344579 (not b_next!132331) b_and!344575 (not b_next!132345) b_and!344573 b_and!344581 (not b_next!132339))
(get-model)

(declare-fun b!4892533 () Bool)

(declare-fun res!2089574 () Bool)

(declare-fun e!3058596 () Bool)

(assert (=> b!4892533 (=> (not res!2089574) (not e!3058596))))

(assert (=> b!4892533 (= res!2089574 (= (head!10455 lt!2004660) (head!10455 lt!2004660)))))

(declare-fun d!1571322 () Bool)

(declare-fun e!3058597 () Bool)

(assert (=> d!1571322 e!3058597))

(declare-fun res!2089573 () Bool)

(assert (=> d!1571322 (=> res!2089573 e!3058597)))

(declare-fun lt!2005467 () Bool)

(assert (=> d!1571322 (= res!2089573 (not lt!2005467))))

(declare-fun e!3058598 () Bool)

(assert (=> d!1571322 (= lt!2005467 e!3058598)))

(declare-fun res!2089575 () Bool)

(assert (=> d!1571322 (=> res!2089575 e!3058598)))

(assert (=> d!1571322 (= res!2089575 ((_ is Nil!56403) lt!2004660))))

(assert (=> d!1571322 (= (isPrefix!4894 lt!2004660 lt!2004660) lt!2005467)))

(declare-fun b!4892532 () Bool)

(assert (=> b!4892532 (= e!3058598 e!3058596)))

(declare-fun res!2089572 () Bool)

(assert (=> b!4892532 (=> (not res!2089572) (not e!3058596))))

(assert (=> b!4892532 (= res!2089572 (not ((_ is Nil!56403) lt!2004660)))))

(declare-fun b!4892534 () Bool)

(assert (=> b!4892534 (= e!3058596 (isPrefix!4894 (tail!9601 lt!2004660) (tail!9601 lt!2004660)))))

(declare-fun b!4892535 () Bool)

(assert (=> b!4892535 (= e!3058597 (>= (size!37138 lt!2004660) (size!37138 lt!2004660)))))

(assert (= (and d!1571322 (not res!2089575)) b!4892532))

(assert (= (and b!4892532 res!2089572) b!4892533))

(assert (= (and b!4892533 res!2089574) b!4892534))

(assert (= (and d!1571322 (not res!2089573)) b!4892535))

(assert (=> b!4892533 m!5894822))

(assert (=> b!4892533 m!5894822))

(assert (=> b!4892534 m!5894818))

(assert (=> b!4892534 m!5894818))

(assert (=> b!4892534 m!5894818))

(assert (=> b!4892534 m!5894818))

(declare-fun m!5896974 () Bool)

(assert (=> b!4892534 m!5896974))

(assert (=> b!4892535 m!5894318))

(assert (=> b!4892535 m!5894318))

(assert (=> bm!339225 d!1571322))

(declare-fun d!1571324 () Bool)

(assert (=> d!1571324 (= (list!17726 (xs!18058 (c!831175 (_2!33525 lt!2004530)))) (innerList!14830 (xs!18058 (c!831175 (_2!33525 lt!2004530)))))))

(assert (=> b!4891435 d!1571324))

(declare-fun d!1571326 () Bool)

(assert (=> d!1571326 (= (get!19479 lt!2005047) (v!49976 lt!2005047))))

(assert (=> b!4891530 d!1571326))

(declare-fun b!4892536 () Bool)

(declare-fun e!3058599 () Bool)

(assert (=> b!4892536 (= e!3058599 (matchR!6530 (regex!8174 (h!62853 (t!365275 rulesArg!165))) (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 (t!365275 rulesArg!165))) Nil!56403 (size!37138 Nil!56403) (list!17722 input!1236) (list!17722 input!1236) (size!37138 (list!17722 input!1236))))))))

(declare-fun b!4892537 () Bool)

(declare-fun e!3058601 () Bool)

(declare-fun e!3058600 () Bool)

(assert (=> b!4892537 (= e!3058601 e!3058600)))

(declare-fun res!2089580 () Bool)

(assert (=> b!4892537 (=> (not res!2089580) (not e!3058600))))

(declare-fun lt!2005471 () Option!14026)

(assert (=> b!4892537 (= res!2089580 (matchR!6530 (regex!8174 (h!62853 (t!365275 rulesArg!165))) (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2005471))))))))

(declare-fun d!1571328 () Bool)

(assert (=> d!1571328 e!3058601))

(declare-fun res!2089581 () Bool)

(assert (=> d!1571328 (=> res!2089581 e!3058601)))

(assert (=> d!1571328 (= res!2089581 (isEmpty!30258 lt!2005471))))

(declare-fun e!3058602 () Option!14026)

(assert (=> d!1571328 (= lt!2005471 e!3058602)))

(declare-fun c!831514 () Bool)

(declare-fun lt!2005468 () tuple2!60450)

(assert (=> d!1571328 (= c!831514 (isEmpty!30257 (_1!33528 lt!2005468)))))

(assert (=> d!1571328 (= lt!2005468 (findLongestMatch!1646 (regex!8174 (h!62853 (t!365275 rulesArg!165))) (list!17722 input!1236)))))

(assert (=> d!1571328 (ruleValid!3671 thiss!14805 (h!62853 (t!365275 rulesArg!165)))))

(assert (=> d!1571328 (= (maxPrefixOneRule!3529 thiss!14805 (h!62853 (t!365275 rulesArg!165)) (list!17722 input!1236)) lt!2005471)))

(declare-fun b!4892538 () Bool)

(declare-fun res!2089582 () Bool)

(assert (=> b!4892538 (=> (not res!2089582) (not e!3058600))))

(assert (=> b!4892538 (= res!2089582 (= (rule!11358 (_1!33526 (get!19478 lt!2005471))) (h!62853 (t!365275 rulesArg!165))))))

(declare-fun b!4892539 () Bool)

(assert (=> b!4892539 (= e!3058600 (= (size!37136 (_1!33526 (get!19478 lt!2005471))) (size!37138 (originalCharacters!8487 (_1!33526 (get!19478 lt!2005471))))))))

(declare-fun b!4892540 () Bool)

(assert (=> b!4892540 (= e!3058602 (Some!14025 (tuple2!60447 (Token!14913 (apply!13540 (transformation!8174 (h!62853 (t!365275 rulesArg!165))) (seqFromList!5936 (_1!33528 lt!2005468))) (h!62853 (t!365275 rulesArg!165)) (size!37139 (seqFromList!5936 (_1!33528 lt!2005468))) (_1!33528 lt!2005468)) (_2!33528 lt!2005468))))))

(declare-fun lt!2005472 () Unit!146398)

(assert (=> b!4892540 (= lt!2005472 (longestMatchIsAcceptedByMatchOrIsEmpty!1715 (regex!8174 (h!62853 (t!365275 rulesArg!165))) (list!17722 input!1236)))))

(declare-fun res!2089579 () Bool)

(assert (=> b!4892540 (= res!2089579 (isEmpty!30257 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 (t!365275 rulesArg!165))) Nil!56403 (size!37138 Nil!56403) (list!17722 input!1236) (list!17722 input!1236) (size!37138 (list!17722 input!1236))))))))

(assert (=> b!4892540 (=> res!2089579 e!3058599)))

(assert (=> b!4892540 e!3058599))

(declare-fun lt!2005469 () Unit!146398)

(assert (=> b!4892540 (= lt!2005469 lt!2005472)))

(declare-fun lt!2005470 () Unit!146398)

(assert (=> b!4892540 (= lt!2005470 (lemmaSemiInverse!2563 (transformation!8174 (h!62853 (t!365275 rulesArg!165))) (seqFromList!5936 (_1!33528 lt!2005468))))))

(declare-fun b!4892541 () Bool)

(assert (=> b!4892541 (= e!3058602 None!14025)))

(declare-fun b!4892542 () Bool)

(declare-fun res!2089576 () Bool)

(assert (=> b!4892542 (=> (not res!2089576) (not e!3058600))))

(assert (=> b!4892542 (= res!2089576 (< (size!37138 (_2!33526 (get!19478 lt!2005471))) (size!37138 (list!17722 input!1236))))))

(declare-fun b!4892543 () Bool)

(declare-fun res!2089577 () Bool)

(assert (=> b!4892543 (=> (not res!2089577) (not e!3058600))))

(assert (=> b!4892543 (= res!2089577 (= (value!262109 (_1!33526 (get!19478 lt!2005471))) (apply!13540 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2005471)))) (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2005471)))))))))

(declare-fun b!4892544 () Bool)

(declare-fun res!2089578 () Bool)

(assert (=> b!4892544 (=> (not res!2089578) (not e!3058600))))

(assert (=> b!4892544 (= res!2089578 (= (++!12243 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2005471)))) (_2!33526 (get!19478 lt!2005471))) (list!17722 input!1236)))))

(assert (= (and d!1571328 c!831514) b!4892541))

(assert (= (and d!1571328 (not c!831514)) b!4892540))

(assert (= (and b!4892540 (not res!2089579)) b!4892536))

(assert (= (and d!1571328 (not res!2089581)) b!4892537))

(assert (= (and b!4892537 res!2089580) b!4892544))

(assert (= (and b!4892544 res!2089578) b!4892542))

(assert (= (and b!4892542 res!2089576) b!4892538))

(assert (= (and b!4892538 res!2089582) b!4892543))

(assert (= (and b!4892543 res!2089577) b!4892539))

(declare-fun m!5896976 () Bool)

(assert (=> b!4892543 m!5896976))

(declare-fun m!5896978 () Bool)

(assert (=> b!4892543 m!5896978))

(assert (=> b!4892543 m!5896978))

(declare-fun m!5896980 () Bool)

(assert (=> b!4892543 m!5896980))

(assert (=> b!4892539 m!5896976))

(declare-fun m!5896982 () Bool)

(assert (=> b!4892539 m!5896982))

(assert (=> b!4892542 m!5896976))

(declare-fun m!5896984 () Bool)

(assert (=> b!4892542 m!5896984))

(assert (=> b!4892542 m!5894176))

(assert (=> b!4892542 m!5894666))

(assert (=> b!4892536 m!5894316))

(assert (=> b!4892536 m!5894176))

(assert (=> b!4892536 m!5894666))

(assert (=> b!4892536 m!5894316))

(assert (=> b!4892536 m!5894176))

(assert (=> b!4892536 m!5894176))

(assert (=> b!4892536 m!5894666))

(declare-fun m!5896986 () Bool)

(assert (=> b!4892536 m!5896986))

(declare-fun m!5896988 () Bool)

(assert (=> b!4892536 m!5896988))

(assert (=> b!4892538 m!5896976))

(declare-fun m!5896990 () Bool)

(assert (=> d!1571328 m!5896990))

(declare-fun m!5896992 () Bool)

(assert (=> d!1571328 m!5896992))

(assert (=> d!1571328 m!5894176))

(declare-fun m!5896994 () Bool)

(assert (=> d!1571328 m!5896994))

(assert (=> d!1571328 m!5894550))

(assert (=> b!4892537 m!5896976))

(declare-fun m!5896996 () Bool)

(assert (=> b!4892537 m!5896996))

(assert (=> b!4892537 m!5896996))

(declare-fun m!5896998 () Bool)

(assert (=> b!4892537 m!5896998))

(assert (=> b!4892537 m!5896998))

(declare-fun m!5897000 () Bool)

(assert (=> b!4892537 m!5897000))

(assert (=> b!4892540 m!5894316))

(assert (=> b!4892540 m!5894316))

(assert (=> b!4892540 m!5894176))

(assert (=> b!4892540 m!5894176))

(assert (=> b!4892540 m!5894666))

(assert (=> b!4892540 m!5896986))

(declare-fun m!5897002 () Bool)

(assert (=> b!4892540 m!5897002))

(assert (=> b!4892540 m!5894176))

(declare-fun m!5897004 () Bool)

(assert (=> b!4892540 m!5897004))

(declare-fun m!5897006 () Bool)

(assert (=> b!4892540 m!5897006))

(assert (=> b!4892540 m!5897006))

(declare-fun m!5897008 () Bool)

(assert (=> b!4892540 m!5897008))

(assert (=> b!4892540 m!5897006))

(declare-fun m!5897010 () Bool)

(assert (=> b!4892540 m!5897010))

(assert (=> b!4892540 m!5897006))

(declare-fun m!5897012 () Bool)

(assert (=> b!4892540 m!5897012))

(assert (=> b!4892540 m!5894176))

(assert (=> b!4892540 m!5894666))

(assert (=> b!4892544 m!5896976))

(assert (=> b!4892544 m!5896996))

(assert (=> b!4892544 m!5896996))

(assert (=> b!4892544 m!5896998))

(assert (=> b!4892544 m!5896998))

(declare-fun m!5897014 () Bool)

(assert (=> b!4892544 m!5897014))

(assert (=> b!4891530 d!1571328))

(assert (=> b!4891530 d!1570502))

(declare-fun d!1571330 () Bool)

(assert (=> d!1571330 (= (list!17722 (_2!33525 (get!19479 lt!2005047))) (list!17724 (c!831175 (_2!33525 (get!19479 lt!2005047)))))))

(declare-fun bs!1175965 () Bool)

(assert (= bs!1175965 d!1571330))

(declare-fun m!5897016 () Bool)

(assert (=> bs!1175965 m!5897016))

(assert (=> b!4891530 d!1571330))

(declare-fun d!1571332 () Bool)

(assert (=> d!1571332 (= (get!19478 (maxPrefixOneRule!3529 thiss!14805 (h!62853 (t!365275 rulesArg!165)) (list!17722 input!1236))) (v!49977 (maxPrefixOneRule!3529 thiss!14805 (h!62853 (t!365275 rulesArg!165)) (list!17722 input!1236))))))

(assert (=> b!4891530 d!1571332))

(declare-fun d!1571334 () Bool)

(assert (=> d!1571334 (= (head!10455 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660)))) (h!62851 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660)))))))

(assert (=> b!4891163 d!1571334))

(declare-fun b!4892545 () Bool)

(declare-fun e!3058608 () Bool)

(assert (=> b!4892545 (= e!3058608 (= (head!10455 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) (list!17722 input!1236) (list!17722 input!1236) (size!37138 (list!17722 input!1236))))) (c!831176 (regex!8174 (h!62853 rulesArg!165)))))))

(declare-fun b!4892546 () Bool)

(declare-fun e!3058609 () Bool)

(declare-fun lt!2005473 () Bool)

(assert (=> b!4892546 (= e!3058609 (not lt!2005473))))

(declare-fun b!4892547 () Bool)

(declare-fun res!2089590 () Bool)

(declare-fun e!3058603 () Bool)

(assert (=> b!4892547 (=> res!2089590 e!3058603)))

(assert (=> b!4892547 (= res!2089590 (not (isEmpty!30257 (tail!9601 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) (list!17722 input!1236) (list!17722 input!1236) (size!37138 (list!17722 input!1236))))))))))

(declare-fun b!4892548 () Bool)

(declare-fun e!3058604 () Bool)

(assert (=> b!4892548 (= e!3058604 e!3058603)))

(declare-fun res!2089587 () Bool)

(assert (=> b!4892548 (=> res!2089587 e!3058603)))

(declare-fun call!339321 () Bool)

(assert (=> b!4892548 (= res!2089587 call!339321)))

(declare-fun b!4892549 () Bool)

(declare-fun res!2089583 () Bool)

(declare-fun e!3058607 () Bool)

(assert (=> b!4892549 (=> res!2089583 e!3058607)))

(assert (=> b!4892549 (= res!2089583 (not ((_ is ElementMatch!13249) (regex!8174 (h!62853 rulesArg!165)))))))

(assert (=> b!4892549 (= e!3058609 e!3058607)))

(declare-fun b!4892550 () Bool)

(assert (=> b!4892550 (= e!3058607 e!3058604)))

(declare-fun res!2089589 () Bool)

(assert (=> b!4892550 (=> (not res!2089589) (not e!3058604))))

(assert (=> b!4892550 (= res!2089589 (not lt!2005473))))

(declare-fun b!4892551 () Bool)

(declare-fun e!3058606 () Bool)

(assert (=> b!4892551 (= e!3058606 (matchR!6530 (derivativeStep!3876 (regex!8174 (h!62853 rulesArg!165)) (head!10455 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) (list!17722 input!1236) (list!17722 input!1236) (size!37138 (list!17722 input!1236)))))) (tail!9601 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) (list!17722 input!1236) (list!17722 input!1236) (size!37138 (list!17722 input!1236)))))))))

(declare-fun b!4892553 () Bool)

(declare-fun e!3058605 () Bool)

(assert (=> b!4892553 (= e!3058605 e!3058609)))

(declare-fun c!831515 () Bool)

(assert (=> b!4892553 (= c!831515 ((_ is EmptyLang!13249) (regex!8174 (h!62853 rulesArg!165))))))

(declare-fun b!4892554 () Bool)

(declare-fun res!2089586 () Bool)

(assert (=> b!4892554 (=> res!2089586 e!3058607)))

(assert (=> b!4892554 (= res!2089586 e!3058608)))

(declare-fun res!2089585 () Bool)

(assert (=> b!4892554 (=> (not res!2089585) (not e!3058608))))

(assert (=> b!4892554 (= res!2089585 lt!2005473)))

(declare-fun b!4892555 () Bool)

(assert (=> b!4892555 (= e!3058605 (= lt!2005473 call!339321))))

(declare-fun b!4892556 () Bool)

(assert (=> b!4892556 (= e!3058603 (not (= (head!10455 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) (list!17722 input!1236) (list!17722 input!1236) (size!37138 (list!17722 input!1236))))) (c!831176 (regex!8174 (h!62853 rulesArg!165))))))))

(declare-fun b!4892557 () Bool)

(declare-fun res!2089588 () Bool)

(assert (=> b!4892557 (=> (not res!2089588) (not e!3058608))))

(assert (=> b!4892557 (= res!2089588 (not call!339321))))

(declare-fun d!1571336 () Bool)

(assert (=> d!1571336 e!3058605))

(declare-fun c!831517 () Bool)

(assert (=> d!1571336 (= c!831517 ((_ is EmptyExpr!13249) (regex!8174 (h!62853 rulesArg!165))))))

(assert (=> d!1571336 (= lt!2005473 e!3058606)))

(declare-fun c!831516 () Bool)

(assert (=> d!1571336 (= c!831516 (isEmpty!30257 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) (list!17722 input!1236) (list!17722 input!1236) (size!37138 (list!17722 input!1236))))))))

(assert (=> d!1571336 (validRegex!5882 (regex!8174 (h!62853 rulesArg!165)))))

(assert (=> d!1571336 (= (matchR!6530 (regex!8174 (h!62853 rulesArg!165)) (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) (list!17722 input!1236) (list!17722 input!1236) (size!37138 (list!17722 input!1236))))) lt!2005473)))

(declare-fun b!4892552 () Bool)

(assert (=> b!4892552 (= e!3058606 (nullable!4555 (regex!8174 (h!62853 rulesArg!165))))))

(declare-fun b!4892558 () Bool)

(declare-fun res!2089584 () Bool)

(assert (=> b!4892558 (=> (not res!2089584) (not e!3058608))))

(assert (=> b!4892558 (= res!2089584 (isEmpty!30257 (tail!9601 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) (list!17722 input!1236) (list!17722 input!1236) (size!37138 (list!17722 input!1236)))))))))

(declare-fun bm!339316 () Bool)

(assert (=> bm!339316 (= call!339321 (isEmpty!30257 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) (list!17722 input!1236) (list!17722 input!1236) (size!37138 (list!17722 input!1236))))))))

(assert (= (and d!1571336 c!831516) b!4892552))

(assert (= (and d!1571336 (not c!831516)) b!4892551))

(assert (= (and d!1571336 c!831517) b!4892555))

(assert (= (and d!1571336 (not c!831517)) b!4892553))

(assert (= (and b!4892553 c!831515) b!4892546))

(assert (= (and b!4892553 (not c!831515)) b!4892549))

(assert (= (and b!4892549 (not res!2089583)) b!4892554))

(assert (= (and b!4892554 res!2089585) b!4892557))

(assert (= (and b!4892557 res!2089588) b!4892558))

(assert (= (and b!4892558 res!2089584) b!4892545))

(assert (= (and b!4892554 (not res!2089586)) b!4892550))

(assert (= (and b!4892550 res!2089589) b!4892548))

(assert (= (and b!4892548 (not res!2089587)) b!4892547))

(assert (= (and b!4892547 (not res!2089590)) b!4892556))

(assert (= (or b!4892555 b!4892548 b!4892557) bm!339316))

(declare-fun m!5897018 () Bool)

(assert (=> b!4892545 m!5897018))

(assert (=> b!4892556 m!5897018))

(assert (=> b!4892551 m!5897018))

(assert (=> b!4892551 m!5897018))

(declare-fun m!5897020 () Bool)

(assert (=> b!4892551 m!5897020))

(declare-fun m!5897022 () Bool)

(assert (=> b!4892551 m!5897022))

(assert (=> b!4892551 m!5897020))

(assert (=> b!4892551 m!5897022))

(declare-fun m!5897024 () Bool)

(assert (=> b!4892551 m!5897024))

(assert (=> b!4892558 m!5897022))

(assert (=> b!4892558 m!5897022))

(declare-fun m!5897026 () Bool)

(assert (=> b!4892558 m!5897026))

(assert (=> b!4892547 m!5897022))

(assert (=> b!4892547 m!5897022))

(assert (=> b!4892547 m!5897026))

(assert (=> bm!339316 m!5894912))

(assert (=> d!1571336 m!5894912))

(assert (=> d!1571336 m!5894684))

(assert (=> b!4892552 m!5894686))

(assert (=> b!4891379 d!1571336))

(declare-fun bm!339317 () Bool)

(declare-fun call!339327 () List!56527)

(assert (=> bm!339317 (= call!339327 (tail!9601 (list!17722 input!1236)))))

(declare-fun bm!339318 () Bool)

(declare-fun call!339328 () C!26696)

(assert (=> bm!339318 (= call!339328 (head!10455 (list!17722 input!1236)))))

(declare-fun bm!339319 () Bool)

(declare-fun call!339325 () Bool)

(assert (=> bm!339319 (= call!339325 (isPrefix!4894 (list!17722 input!1236) (list!17722 input!1236)))))

(declare-fun b!4892559 () Bool)

(declare-fun e!3058613 () Unit!146398)

(declare-fun Unit!146418 () Unit!146398)

(assert (=> b!4892559 (= e!3058613 Unit!146418)))

(declare-fun bm!339320 () Bool)

(declare-fun call!339329 () Bool)

(assert (=> bm!339320 (= call!339329 (nullable!4555 (regex!8174 (h!62853 rulesArg!165))))))

(declare-fun b!4892560 () Bool)

(declare-fun e!3058611 () tuple2!60450)

(assert (=> b!4892560 (= e!3058611 (tuple2!60451 Nil!56403 Nil!56403))))

(declare-fun b!4892561 () Bool)

(declare-fun e!3058614 () Bool)

(declare-fun e!3058617 () Bool)

(assert (=> b!4892561 (= e!3058614 e!3058617)))

(declare-fun res!2089592 () Bool)

(assert (=> b!4892561 (=> res!2089592 e!3058617)))

(declare-fun lt!2005486 () tuple2!60450)

(assert (=> b!4892561 (= res!2089592 (isEmpty!30257 (_1!33528 lt!2005486)))))

(declare-fun b!4892562 () Bool)

(assert (=> b!4892562 (= e!3058611 (tuple2!60451 Nil!56403 (list!17722 input!1236)))))

(declare-fun bm!339321 () Bool)

(declare-fun call!339324 () Unit!146398)

(assert (=> bm!339321 (= call!339324 (lemmaIsPrefixRefl!3291 (list!17722 input!1236) (list!17722 input!1236)))))

(declare-fun b!4892564 () Bool)

(declare-fun c!831521 () Bool)

(assert (=> b!4892564 (= c!831521 call!339329)))

(declare-fun lt!2005484 () Unit!146398)

(declare-fun lt!2005474 () Unit!146398)

(assert (=> b!4892564 (= lt!2005484 lt!2005474)))

(assert (=> b!4892564 (= (list!17722 input!1236) Nil!56403)))

(declare-fun call!339323 () Unit!146398)

(assert (=> b!4892564 (= lt!2005474 call!339323)))

(declare-fun lt!2005491 () Unit!146398)

(declare-fun lt!2005493 () Unit!146398)

(assert (=> b!4892564 (= lt!2005491 lt!2005493)))

(assert (=> b!4892564 call!339325))

(assert (=> b!4892564 (= lt!2005493 call!339324)))

(declare-fun e!3058615 () tuple2!60450)

(assert (=> b!4892564 (= e!3058615 e!3058611)))

(declare-fun lt!2005483 () List!56527)

(declare-fun call!339322 () Regex!13249)

(declare-fun call!339326 () tuple2!60450)

(declare-fun bm!339322 () Bool)

(assert (=> bm!339322 (= call!339326 (findLongestMatchInner!1752 call!339322 lt!2005483 (+ (size!37138 Nil!56403) 1) call!339327 (list!17722 input!1236) (size!37138 (list!17722 input!1236))))))

(declare-fun bm!339323 () Bool)

(assert (=> bm!339323 (= call!339322 (derivativeStep!3876 (regex!8174 (h!62853 rulesArg!165)) call!339328))))

(declare-fun b!4892565 () Bool)

(declare-fun Unit!146419 () Unit!146398)

(assert (=> b!4892565 (= e!3058613 Unit!146419)))

(declare-fun lt!2005482 () Unit!146398)

(assert (=> b!4892565 (= lt!2005482 call!339324)))

(assert (=> b!4892565 call!339325))

(declare-fun lt!2005501 () Unit!146398)

(assert (=> b!4892565 (= lt!2005501 lt!2005482)))

(declare-fun lt!2005499 () Unit!146398)

(assert (=> b!4892565 (= lt!2005499 call!339323)))

(assert (=> b!4892565 (= (list!17722 input!1236) Nil!56403)))

(declare-fun lt!2005490 () Unit!146398)

(assert (=> b!4892565 (= lt!2005490 lt!2005499)))

(assert (=> b!4892565 false))

(declare-fun bm!339324 () Bool)

(assert (=> bm!339324 (= call!339323 (lemmaIsPrefixSameLengthThenSameList!1057 (list!17722 input!1236) Nil!56403 (list!17722 input!1236)))))

(declare-fun b!4892566 () Bool)

(declare-fun e!3058610 () tuple2!60450)

(assert (=> b!4892566 (= e!3058610 call!339326)))

(declare-fun b!4892567 () Bool)

(assert (=> b!4892567 (= e!3058617 (>= (size!37138 (_1!33528 lt!2005486)) (size!37138 Nil!56403)))))

(declare-fun b!4892568 () Bool)

(declare-fun e!3058616 () tuple2!60450)

(assert (=> b!4892568 (= e!3058616 e!3058615)))

(declare-fun c!831520 () Bool)

(assert (=> b!4892568 (= c!831520 (= (size!37138 Nil!56403) (size!37138 (list!17722 input!1236))))))

(declare-fun b!4892569 () Bool)

(assert (=> b!4892569 (= e!3058616 (tuple2!60451 Nil!56403 (list!17722 input!1236)))))

(declare-fun b!4892570 () Bool)

(declare-fun e!3058612 () tuple2!60450)

(assert (=> b!4892570 (= e!3058610 e!3058612)))

(declare-fun lt!2005480 () tuple2!60450)

(assert (=> b!4892570 (= lt!2005480 call!339326)))

(declare-fun c!831522 () Bool)

(assert (=> b!4892570 (= c!831522 (isEmpty!30257 (_1!33528 lt!2005480)))))

(declare-fun b!4892571 () Bool)

(assert (=> b!4892571 (= e!3058612 (tuple2!60451 Nil!56403 (list!17722 input!1236)))))

(declare-fun b!4892572 () Bool)

(assert (=> b!4892572 (= e!3058612 lt!2005480)))

(declare-fun b!4892563 () Bool)

(declare-fun c!831518 () Bool)

(assert (=> b!4892563 (= c!831518 call!339329)))

(declare-fun lt!2005476 () Unit!146398)

(declare-fun lt!2005498 () Unit!146398)

(assert (=> b!4892563 (= lt!2005476 lt!2005498)))

(declare-fun lt!2005497 () C!26696)

(declare-fun lt!2005492 () List!56527)

(assert (=> b!4892563 (= (++!12243 (++!12243 Nil!56403 (Cons!56403 lt!2005497 Nil!56403)) lt!2005492) (list!17722 input!1236))))

(assert (=> b!4892563 (= lt!2005498 (lemmaMoveElementToOtherListKeepsConcatEq!1329 Nil!56403 lt!2005497 lt!2005492 (list!17722 input!1236)))))

(assert (=> b!4892563 (= lt!2005492 (tail!9601 (list!17722 input!1236)))))

(assert (=> b!4892563 (= lt!2005497 (head!10455 (list!17722 input!1236)))))

(declare-fun lt!2005481 () Unit!146398)

(declare-fun lt!2005478 () Unit!146398)

(assert (=> b!4892563 (= lt!2005481 lt!2005478)))

(assert (=> b!4892563 (isPrefix!4894 (++!12243 Nil!56403 (Cons!56403 (head!10455 (getSuffix!2886 (list!17722 input!1236) Nil!56403)) Nil!56403)) (list!17722 input!1236))))

(assert (=> b!4892563 (= lt!2005478 (lemmaAddHeadSuffixToPrefixStillPrefix!711 Nil!56403 (list!17722 input!1236)))))

(declare-fun lt!2005488 () Unit!146398)

(declare-fun lt!2005487 () Unit!146398)

(assert (=> b!4892563 (= lt!2005488 lt!2005487)))

(assert (=> b!4892563 (= lt!2005487 (lemmaAddHeadSuffixToPrefixStillPrefix!711 Nil!56403 (list!17722 input!1236)))))

(assert (=> b!4892563 (= lt!2005483 (++!12243 Nil!56403 (Cons!56403 (head!10455 (list!17722 input!1236)) Nil!56403)))))

(declare-fun lt!2005479 () Unit!146398)

(assert (=> b!4892563 (= lt!2005479 e!3058613)))

(declare-fun c!831519 () Bool)

(assert (=> b!4892563 (= c!831519 (= (size!37138 Nil!56403) (size!37138 (list!17722 input!1236))))))

(declare-fun lt!2005475 () Unit!146398)

(declare-fun lt!2005485 () Unit!146398)

(assert (=> b!4892563 (= lt!2005475 lt!2005485)))

(assert (=> b!4892563 (<= (size!37138 Nil!56403) (size!37138 (list!17722 input!1236)))))

(assert (=> b!4892563 (= lt!2005485 (lemmaIsPrefixThenSmallerEqSize!623 Nil!56403 (list!17722 input!1236)))))

(assert (=> b!4892563 (= e!3058615 e!3058610)))

(declare-fun d!1571338 () Bool)

(assert (=> d!1571338 e!3058614))

(declare-fun res!2089591 () Bool)

(assert (=> d!1571338 (=> (not res!2089591) (not e!3058614))))

(assert (=> d!1571338 (= res!2089591 (= (++!12243 (_1!33528 lt!2005486) (_2!33528 lt!2005486)) (list!17722 input!1236)))))

(assert (=> d!1571338 (= lt!2005486 e!3058616)))

(declare-fun c!831523 () Bool)

(assert (=> d!1571338 (= c!831523 (lostCause!1085 (regex!8174 (h!62853 rulesArg!165))))))

(declare-fun lt!2005495 () Unit!146398)

(declare-fun Unit!146420 () Unit!146398)

(assert (=> d!1571338 (= lt!2005495 Unit!146420)))

(assert (=> d!1571338 (= (getSuffix!2886 (list!17722 input!1236) Nil!56403) (list!17722 input!1236))))

(declare-fun lt!2005496 () Unit!146398)

(declare-fun lt!2005477 () Unit!146398)

(assert (=> d!1571338 (= lt!2005496 lt!2005477)))

(declare-fun lt!2005494 () List!56527)

(assert (=> d!1571338 (= (list!17722 input!1236) lt!2005494)))

(assert (=> d!1571338 (= lt!2005477 (lemmaSamePrefixThenSameSuffix!2302 Nil!56403 (list!17722 input!1236) Nil!56403 lt!2005494 (list!17722 input!1236)))))

(assert (=> d!1571338 (= lt!2005494 (getSuffix!2886 (list!17722 input!1236) Nil!56403))))

(declare-fun lt!2005500 () Unit!146398)

(declare-fun lt!2005489 () Unit!146398)

(assert (=> d!1571338 (= lt!2005500 lt!2005489)))

(assert (=> d!1571338 (isPrefix!4894 Nil!56403 (++!12243 Nil!56403 (list!17722 input!1236)))))

(assert (=> d!1571338 (= lt!2005489 (lemmaConcatTwoListThenFirstIsPrefix!3122 Nil!56403 (list!17722 input!1236)))))

(assert (=> d!1571338 (validRegex!5882 (regex!8174 (h!62853 rulesArg!165)))))

(assert (=> d!1571338 (= (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) (list!17722 input!1236) (list!17722 input!1236) (size!37138 (list!17722 input!1236))) lt!2005486)))

(assert (= (and d!1571338 c!831523) b!4892569))

(assert (= (and d!1571338 (not c!831523)) b!4892568))

(assert (= (and b!4892568 c!831520) b!4892564))

(assert (= (and b!4892568 (not c!831520)) b!4892563))

(assert (= (and b!4892564 c!831521) b!4892560))

(assert (= (and b!4892564 (not c!831521)) b!4892562))

(assert (= (and b!4892563 c!831519) b!4892565))

(assert (= (and b!4892563 (not c!831519)) b!4892559))

(assert (= (and b!4892563 c!831518) b!4892570))

(assert (= (and b!4892563 (not c!831518)) b!4892566))

(assert (= (and b!4892570 c!831522) b!4892571))

(assert (= (and b!4892570 (not c!831522)) b!4892572))

(assert (= (or b!4892570 b!4892566) bm!339317))

(assert (= (or b!4892570 b!4892566) bm!339318))

(assert (= (or b!4892570 b!4892566) bm!339323))

(assert (= (or b!4892570 b!4892566) bm!339322))

(assert (= (or b!4892564 b!4892563) bm!339320))

(assert (= (or b!4892564 b!4892565) bm!339321))

(assert (= (or b!4892564 b!4892565) bm!339324))

(assert (= (or b!4892564 b!4892565) bm!339319))

(assert (= (and d!1571338 res!2089591) b!4892561))

(assert (= (and b!4892561 (not res!2089592)) b!4892567))

(assert (=> bm!339322 m!5894176))

(assert (=> bm!339322 m!5894666))

(declare-fun m!5897028 () Bool)

(assert (=> bm!339322 m!5897028))

(assert (=> d!1571338 m!5894176))

(declare-fun m!5897030 () Bool)

(assert (=> d!1571338 m!5897030))

(assert (=> d!1571338 m!5894176))

(declare-fun m!5897032 () Bool)

(assert (=> d!1571338 m!5897032))

(declare-fun m!5897034 () Bool)

(assert (=> d!1571338 m!5897034))

(assert (=> d!1571338 m!5894684))

(assert (=> d!1571338 m!5894176))

(declare-fun m!5897036 () Bool)

(assert (=> d!1571338 m!5897036))

(assert (=> d!1571338 m!5894176))

(assert (=> d!1571338 m!5894176))

(declare-fun m!5897038 () Bool)

(assert (=> d!1571338 m!5897038))

(assert (=> d!1571338 m!5894804))

(assert (=> d!1571338 m!5897032))

(declare-fun m!5897040 () Bool)

(assert (=> d!1571338 m!5897040))

(declare-fun m!5897042 () Bool)

(assert (=> b!4892570 m!5897042))

(declare-fun m!5897044 () Bool)

(assert (=> bm!339323 m!5897044))

(assert (=> bm!339321 m!5894176))

(assert (=> bm!339321 m!5894176))

(assert (=> bm!339321 m!5894578))

(assert (=> bm!339319 m!5894176))

(assert (=> bm!339319 m!5894176))

(assert (=> bm!339319 m!5894576))

(declare-fun m!5897046 () Bool)

(assert (=> b!4892567 m!5897046))

(assert (=> b!4892567 m!5894316))

(assert (=> bm!339317 m!5894176))

(declare-fun m!5897048 () Bool)

(assert (=> bm!339317 m!5897048))

(declare-fun m!5897050 () Bool)

(assert (=> b!4892561 m!5897050))

(assert (=> bm!339318 m!5894176))

(declare-fun m!5897052 () Bool)

(assert (=> bm!339318 m!5897052))

(assert (=> b!4892563 m!5894316))

(assert (=> b!4892563 m!5894176))

(declare-fun m!5897054 () Bool)

(assert (=> b!4892563 m!5897054))

(assert (=> b!4892563 m!5897036))

(declare-fun m!5897056 () Bool)

(assert (=> b!4892563 m!5897056))

(declare-fun m!5897058 () Bool)

(assert (=> b!4892563 m!5897058))

(declare-fun m!5897060 () Bool)

(assert (=> b!4892563 m!5897060))

(declare-fun m!5897062 () Bool)

(assert (=> b!4892563 m!5897062))

(assert (=> b!4892563 m!5897062))

(assert (=> b!4892563 m!5894176))

(declare-fun m!5897064 () Bool)

(assert (=> b!4892563 m!5897064))

(assert (=> b!4892563 m!5894176))

(assert (=> b!4892563 m!5897048))

(assert (=> b!4892563 m!5894176))

(assert (=> b!4892563 m!5897052))

(assert (=> b!4892563 m!5897060))

(declare-fun m!5897066 () Bool)

(assert (=> b!4892563 m!5897066))

(assert (=> b!4892563 m!5894176))

(assert (=> b!4892563 m!5897036))

(assert (=> b!4892563 m!5894176))

(assert (=> b!4892563 m!5894666))

(assert (=> b!4892563 m!5894176))

(declare-fun m!5897068 () Bool)

(assert (=> b!4892563 m!5897068))

(assert (=> b!4892563 m!5894176))

(declare-fun m!5897070 () Bool)

(assert (=> b!4892563 m!5897070))

(assert (=> bm!339320 m!5894686))

(assert (=> bm!339324 m!5894176))

(assert (=> bm!339324 m!5894176))

(declare-fun m!5897072 () Bool)

(assert (=> bm!339324 m!5897072))

(assert (=> b!4891379 d!1571338))

(assert (=> b!4891379 d!1570634))

(declare-fun d!1571340 () Bool)

(declare-fun lt!2005502 () Int)

(assert (=> d!1571340 (>= lt!2005502 0)))

(declare-fun e!3058618 () Int)

(assert (=> d!1571340 (= lt!2005502 e!3058618)))

(declare-fun c!831524 () Bool)

(assert (=> d!1571340 (= c!831524 ((_ is Nil!56403) (list!17722 input!1236)))))

(assert (=> d!1571340 (= (size!37138 (list!17722 input!1236)) lt!2005502)))

(declare-fun b!4892573 () Bool)

(assert (=> b!4892573 (= e!3058618 0)))

(declare-fun b!4892574 () Bool)

(assert (=> b!4892574 (= e!3058618 (+ 1 (size!37138 (t!365273 (list!17722 input!1236)))))))

(assert (= (and d!1571340 c!831524) b!4892573))

(assert (= (and d!1571340 (not c!831524)) b!4892574))

(declare-fun m!5897074 () Bool)

(assert (=> b!4892574 m!5897074))

(assert (=> b!4891379 d!1571340))

(assert (=> d!1570770 d!1570578))

(declare-fun d!1571342 () Bool)

(assert (=> d!1571342 (= (get!19478 lt!2004764) (v!49977 lt!2004764))))

(assert (=> b!4891133 d!1571342))

(declare-fun d!1571344 () Bool)

(assert (=> d!1571344 (= (apply!13540 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004764)))) (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004764))))) (dynLambda!22628 (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004764))))) (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004764))))))))

(declare-fun b_lambda!194309 () Bool)

(assert (=> (not b_lambda!194309) (not d!1571344)))

(declare-fun t!365512 () Bool)

(declare-fun tb!258767 () Bool)

(assert (=> (and b!4890709 (= (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004764)))))) t!365512) tb!258767))

(declare-fun result!322330 () Bool)

(assert (=> tb!258767 (= result!322330 (inv!21 (dynLambda!22628 (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004764))))) (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004764)))))))))

(declare-fun m!5897076 () Bool)

(assert (=> tb!258767 m!5897076))

(assert (=> d!1571344 t!365512))

(declare-fun b_and!344755 () Bool)

(assert (= b_and!344577 (and (=> t!365512 result!322330) b_and!344755)))

(declare-fun t!365514 () Bool)

(declare-fun tb!258769 () Bool)

(assert (=> (and b!4891010 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004764)))))) t!365514) tb!258769))

(declare-fun result!322332 () Bool)

(assert (= result!322332 result!322330))

(assert (=> d!1571344 t!365514))

(declare-fun b_and!344757 () Bool)

(assert (= b_and!344579 (and (=> t!365514 result!322332) b_and!344757)))

(declare-fun tb!258771 () Bool)

(declare-fun t!365516 () Bool)

(assert (=> (and b!4891741 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004764)))))) t!365516) tb!258771))

(declare-fun result!322334 () Bool)

(assert (= result!322334 result!322330))

(assert (=> d!1571344 t!365516))

(declare-fun b_and!344759 () Bool)

(assert (= b_and!344581 (and (=> t!365516 result!322334) b_and!344759)))

(assert (=> d!1571344 m!5894648))

(declare-fun m!5897078 () Bool)

(assert (=> d!1571344 m!5897078))

(assert (=> b!4891133 d!1571344))

(declare-fun d!1571346 () Bool)

(assert (=> d!1571346 (= (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004764)))) (fromListB!2691 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004764)))))))

(declare-fun bs!1175966 () Bool)

(assert (= bs!1175966 d!1571346))

(declare-fun m!5897080 () Bool)

(assert (=> bs!1175966 m!5897080))

(assert (=> b!4891133 d!1571346))

(declare-fun d!1571348 () Bool)

(assert (=> d!1571348 (= (list!17722 (_2!33525 (get!19479 lt!2005006))) (list!17724 (c!831175 (_2!33525 (get!19479 lt!2005006)))))))

(declare-fun bs!1175967 () Bool)

(assert (= bs!1175967 d!1571348))

(declare-fun m!5897082 () Bool)

(assert (=> bs!1175967 m!5897082))

(assert (=> b!4891420 d!1571348))

(assert (=> b!4891420 d!1570502))

(declare-fun d!1571350 () Bool)

(assert (=> d!1571350 (= (get!19479 lt!2005006) (v!49976 lt!2005006))))

(assert (=> b!4891420 d!1571350))

(declare-fun d!1571352 () Bool)

(declare-fun lt!2005504 () Option!14026)

(assert (=> d!1571352 (= lt!2005504 (maxPrefix!4603 thiss!14805 (t!365275 (t!365275 rulesArg!165)) (list!17722 input!1236)))))

(declare-fun e!3058620 () Option!14026)

(assert (=> d!1571352 (= lt!2005504 e!3058620)))

(declare-fun c!831525 () Bool)

(assert (=> d!1571352 (= c!831525 (and ((_ is Cons!56405) (t!365275 (t!365275 rulesArg!165))) ((_ is Nil!56405) (t!365275 (t!365275 (t!365275 rulesArg!165))))))))

(declare-fun lt!2005505 () Unit!146398)

(declare-fun lt!2005503 () Unit!146398)

(assert (=> d!1571352 (= lt!2005505 lt!2005503)))

(assert (=> d!1571352 (isPrefix!4894 (list!17722 input!1236) (list!17722 input!1236))))

(assert (=> d!1571352 (= lt!2005503 (lemmaIsPrefixRefl!3291 (list!17722 input!1236) (list!17722 input!1236)))))

(assert (=> d!1571352 (rulesValidInductive!3153 thiss!14805 (t!365275 (t!365275 rulesArg!165)))))

(assert (=> d!1571352 (= (maxPrefixZipper!673 thiss!14805 (t!365275 (t!365275 rulesArg!165)) (list!17722 input!1236)) lt!2005504)))

(declare-fun bm!339325 () Bool)

(declare-fun call!339330 () Option!14026)

(assert (=> bm!339325 (= call!339330 (maxPrefixOneRuleZipper!258 thiss!14805 (h!62853 (t!365275 (t!365275 rulesArg!165))) (list!17722 input!1236)))))

(declare-fun b!4892575 () Bool)

(assert (=> b!4892575 (= e!3058620 call!339330)))

(declare-fun b!4892576 () Bool)

(declare-fun lt!2005507 () Option!14026)

(declare-fun lt!2005506 () Option!14026)

(assert (=> b!4892576 (= e!3058620 (ite (and ((_ is None!14025) lt!2005507) ((_ is None!14025) lt!2005506)) None!14025 (ite ((_ is None!14025) lt!2005506) lt!2005507 (ite ((_ is None!14025) lt!2005507) lt!2005506 (ite (>= (size!37136 (_1!33526 (v!49977 lt!2005507))) (size!37136 (_1!33526 (v!49977 lt!2005506)))) lt!2005507 lt!2005506)))))))

(assert (=> b!4892576 (= lt!2005507 call!339330)))

(assert (=> b!4892576 (= lt!2005506 (maxPrefixZipper!673 thiss!14805 (t!365275 (t!365275 (t!365275 rulesArg!165))) (list!17722 input!1236)))))

(assert (= (and d!1571352 c!831525) b!4892575))

(assert (= (and d!1571352 (not c!831525)) b!4892576))

(assert (= (or b!4892575 b!4892576) bm!339325))

(assert (=> d!1571352 m!5894176))

(assert (=> d!1571352 m!5894670))

(assert (=> d!1571352 m!5894176))

(assert (=> d!1571352 m!5894176))

(assert (=> d!1571352 m!5894576))

(assert (=> d!1571352 m!5894176))

(assert (=> d!1571352 m!5894176))

(assert (=> d!1571352 m!5894578))

(assert (=> d!1571352 m!5894552))

(assert (=> bm!339325 m!5894176))

(declare-fun m!5897084 () Bool)

(assert (=> bm!339325 m!5897084))

(assert (=> b!4892576 m!5894176))

(declare-fun m!5897086 () Bool)

(assert (=> b!4892576 m!5897086))

(assert (=> b!4891420 d!1571352))

(declare-fun d!1571354 () Bool)

(assert (=> d!1571354 (= (get!19478 (maxPrefixZipper!673 thiss!14805 (t!365275 (t!365275 rulesArg!165)) (list!17722 input!1236))) (v!49977 (maxPrefixZipper!673 thiss!14805 (t!365275 (t!365275 rulesArg!165)) (list!17722 input!1236))))))

(assert (=> b!4891420 d!1571354))

(declare-fun d!1571356 () Bool)

(declare-fun lt!2005508 () Option!14026)

(assert (=> d!1571356 (= lt!2005508 (maxPrefixOneRule!3529 thiss!14805 (h!62853 (t!365275 rulesArg!165)) (list!17722 input!1236)))))

(declare-fun e!3058622 () Option!14026)

(assert (=> d!1571356 (= lt!2005508 e!3058622)))

(declare-fun c!831526 () Bool)

(declare-fun lt!2005511 () tuple2!60450)

(assert (=> d!1571356 (= c!831526 (isEmpty!30257 (_1!33528 lt!2005511)))))

(assert (=> d!1571356 (= lt!2005511 (findLongestMatchWithZipper!81 (regex!8174 (h!62853 (t!365275 rulesArg!165))) (list!17722 input!1236)))))

(assert (=> d!1571356 (ruleValid!3671 thiss!14805 (h!62853 (t!365275 rulesArg!165)))))

(assert (=> d!1571356 (= (maxPrefixOneRuleZipper!258 thiss!14805 (h!62853 (t!365275 rulesArg!165)) (list!17722 input!1236)) lt!2005508)))

(declare-fun b!4892577 () Bool)

(assert (=> b!4892577 (= e!3058622 None!14025)))

(declare-fun b!4892578 () Bool)

(assert (=> b!4892578 (= e!3058622 (Some!14025 (tuple2!60447 (Token!14913 (apply!13540 (transformation!8174 (h!62853 (t!365275 rulesArg!165))) (seqFromList!5936 (_1!33528 lt!2005511))) (h!62853 (t!365275 rulesArg!165)) (size!37138 (_1!33528 lt!2005511)) (_1!33528 lt!2005511)) (_2!33528 lt!2005511))))))

(declare-fun lt!2005510 () Unit!146398)

(assert (=> b!4892578 (= lt!2005510 (longestMatchIsAcceptedByMatchOrIsEmpty!1715 (regex!8174 (h!62853 (t!365275 rulesArg!165))) (list!17722 input!1236)))))

(declare-fun res!2089593 () Bool)

(assert (=> b!4892578 (= res!2089593 (isEmpty!30257 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 (t!365275 rulesArg!165))) Nil!56403 (size!37138 Nil!56403) (list!17722 input!1236) (list!17722 input!1236) (size!37138 (list!17722 input!1236))))))))

(declare-fun e!3058621 () Bool)

(assert (=> b!4892578 (=> res!2089593 e!3058621)))

(assert (=> b!4892578 e!3058621))

(declare-fun lt!2005513 () Unit!146398)

(assert (=> b!4892578 (= lt!2005513 lt!2005510)))

(declare-fun lt!2005512 () Unit!146398)

(assert (=> b!4892578 (= lt!2005512 (lemmaInv!1235 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))))))

(declare-fun lt!2005509 () Unit!146398)

(assert (=> b!4892578 (= lt!2005509 (lemmaSemiInverse!2563 (transformation!8174 (h!62853 (t!365275 rulesArg!165))) (seqFromList!5936 (_1!33528 lt!2005511))))))

(declare-fun b!4892579 () Bool)

(assert (=> b!4892579 (= e!3058621 (matchR!6530 (regex!8174 (h!62853 (t!365275 rulesArg!165))) (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 (t!365275 rulesArg!165))) Nil!56403 (size!37138 Nil!56403) (list!17722 input!1236) (list!17722 input!1236) (size!37138 (list!17722 input!1236))))))))

(assert (= (and d!1571356 c!831526) b!4892577))

(assert (= (and d!1571356 (not c!831526)) b!4892578))

(assert (= (and b!4892578 (not res!2089593)) b!4892579))

(assert (=> d!1571356 m!5894176))

(assert (=> d!1571356 m!5894658))

(declare-fun m!5897088 () Bool)

(assert (=> d!1571356 m!5897088))

(assert (=> d!1571356 m!5894176))

(declare-fun m!5897090 () Bool)

(assert (=> d!1571356 m!5897090))

(assert (=> d!1571356 m!5894550))

(assert (=> b!4892578 m!5894316))

(declare-fun m!5897092 () Bool)

(assert (=> b!4892578 m!5897092))

(assert (=> b!4892578 m!5894176))

(assert (=> b!4892578 m!5897004))

(declare-fun m!5897094 () Bool)

(assert (=> b!4892578 m!5897094))

(assert (=> b!4892578 m!5897094))

(declare-fun m!5897096 () Bool)

(assert (=> b!4892578 m!5897096))

(assert (=> b!4892578 m!5897094))

(declare-fun m!5897098 () Bool)

(assert (=> b!4892578 m!5897098))

(assert (=> b!4892578 m!5897002))

(assert (=> b!4892578 m!5894176))

(assert (=> b!4892578 m!5894666))

(assert (=> b!4892578 m!5894316))

(assert (=> b!4892578 m!5894176))

(assert (=> b!4892578 m!5894176))

(assert (=> b!4892578 m!5894666))

(assert (=> b!4892578 m!5896986))

(assert (=> b!4892578 m!5895206))

(assert (=> b!4892579 m!5894316))

(assert (=> b!4892579 m!5894176))

(assert (=> b!4892579 m!5894666))

(assert (=> b!4892579 m!5894316))

(assert (=> b!4892579 m!5894176))

(assert (=> b!4892579 m!5894176))

(assert (=> b!4892579 m!5894666))

(assert (=> b!4892579 m!5896986))

(assert (=> b!4892579 m!5896988))

(assert (=> bm!339174 d!1571356))

(declare-fun b!4892580 () Bool)

(declare-fun e!3058628 () Bool)

(assert (=> b!4892580 (= e!3058628 (= (head!10455 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 (t!365275 rulesArg!165))) Nil!56403 (size!37138 Nil!56403) lt!2005053 lt!2005053 (size!37138 lt!2005053)))) (c!831176 (regex!8174 (h!62853 (t!365275 rulesArg!165))))))))

(declare-fun b!4892581 () Bool)

(declare-fun e!3058629 () Bool)

(declare-fun lt!2005514 () Bool)

(assert (=> b!4892581 (= e!3058629 (not lt!2005514))))

(declare-fun b!4892582 () Bool)

(declare-fun res!2089601 () Bool)

(declare-fun e!3058623 () Bool)

(assert (=> b!4892582 (=> res!2089601 e!3058623)))

(assert (=> b!4892582 (= res!2089601 (not (isEmpty!30257 (tail!9601 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 (t!365275 rulesArg!165))) Nil!56403 (size!37138 Nil!56403) lt!2005053 lt!2005053 (size!37138 lt!2005053)))))))))

(declare-fun b!4892583 () Bool)

(declare-fun e!3058624 () Bool)

(assert (=> b!4892583 (= e!3058624 e!3058623)))

(declare-fun res!2089598 () Bool)

(assert (=> b!4892583 (=> res!2089598 e!3058623)))

(declare-fun call!339331 () Bool)

(assert (=> b!4892583 (= res!2089598 call!339331)))

(declare-fun b!4892584 () Bool)

(declare-fun res!2089594 () Bool)

(declare-fun e!3058627 () Bool)

(assert (=> b!4892584 (=> res!2089594 e!3058627)))

(assert (=> b!4892584 (= res!2089594 (not ((_ is ElementMatch!13249) (regex!8174 (h!62853 (t!365275 rulesArg!165))))))))

(assert (=> b!4892584 (= e!3058629 e!3058627)))

(declare-fun b!4892585 () Bool)

(assert (=> b!4892585 (= e!3058627 e!3058624)))

(declare-fun res!2089600 () Bool)

(assert (=> b!4892585 (=> (not res!2089600) (not e!3058624))))

(assert (=> b!4892585 (= res!2089600 (not lt!2005514))))

(declare-fun b!4892586 () Bool)

(declare-fun e!3058626 () Bool)

(assert (=> b!4892586 (= e!3058626 (matchR!6530 (derivativeStep!3876 (regex!8174 (h!62853 (t!365275 rulesArg!165))) (head!10455 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 (t!365275 rulesArg!165))) Nil!56403 (size!37138 Nil!56403) lt!2005053 lt!2005053 (size!37138 lt!2005053))))) (tail!9601 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 (t!365275 rulesArg!165))) Nil!56403 (size!37138 Nil!56403) lt!2005053 lt!2005053 (size!37138 lt!2005053))))))))

(declare-fun b!4892588 () Bool)

(declare-fun e!3058625 () Bool)

(assert (=> b!4892588 (= e!3058625 e!3058629)))

(declare-fun c!831527 () Bool)

(assert (=> b!4892588 (= c!831527 ((_ is EmptyLang!13249) (regex!8174 (h!62853 (t!365275 rulesArg!165)))))))

(declare-fun b!4892589 () Bool)

(declare-fun res!2089597 () Bool)

(assert (=> b!4892589 (=> res!2089597 e!3058627)))

(assert (=> b!4892589 (= res!2089597 e!3058628)))

(declare-fun res!2089596 () Bool)

(assert (=> b!4892589 (=> (not res!2089596) (not e!3058628))))

(assert (=> b!4892589 (= res!2089596 lt!2005514)))

(declare-fun b!4892590 () Bool)

(assert (=> b!4892590 (= e!3058625 (= lt!2005514 call!339331))))

(declare-fun b!4892591 () Bool)

(assert (=> b!4892591 (= e!3058623 (not (= (head!10455 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 (t!365275 rulesArg!165))) Nil!56403 (size!37138 Nil!56403) lt!2005053 lt!2005053 (size!37138 lt!2005053)))) (c!831176 (regex!8174 (h!62853 (t!365275 rulesArg!165)))))))))

(declare-fun b!4892592 () Bool)

(declare-fun res!2089599 () Bool)

(assert (=> b!4892592 (=> (not res!2089599) (not e!3058628))))

(assert (=> b!4892592 (= res!2089599 (not call!339331))))

(declare-fun d!1571358 () Bool)

(assert (=> d!1571358 e!3058625))

(declare-fun c!831529 () Bool)

(assert (=> d!1571358 (= c!831529 ((_ is EmptyExpr!13249) (regex!8174 (h!62853 (t!365275 rulesArg!165)))))))

(assert (=> d!1571358 (= lt!2005514 e!3058626)))

(declare-fun c!831528 () Bool)

(assert (=> d!1571358 (= c!831528 (isEmpty!30257 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 (t!365275 rulesArg!165))) Nil!56403 (size!37138 Nil!56403) lt!2005053 lt!2005053 (size!37138 lt!2005053)))))))

(assert (=> d!1571358 (validRegex!5882 (regex!8174 (h!62853 (t!365275 rulesArg!165))))))

(assert (=> d!1571358 (= (matchR!6530 (regex!8174 (h!62853 (t!365275 rulesArg!165))) (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 (t!365275 rulesArg!165))) Nil!56403 (size!37138 Nil!56403) lt!2005053 lt!2005053 (size!37138 lt!2005053)))) lt!2005514)))

(declare-fun b!4892587 () Bool)

(assert (=> b!4892587 (= e!3058626 (nullable!4555 (regex!8174 (h!62853 (t!365275 rulesArg!165)))))))

(declare-fun b!4892593 () Bool)

(declare-fun res!2089595 () Bool)

(assert (=> b!4892593 (=> (not res!2089595) (not e!3058628))))

(assert (=> b!4892593 (= res!2089595 (isEmpty!30257 (tail!9601 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 (t!365275 rulesArg!165))) Nil!56403 (size!37138 Nil!56403) lt!2005053 lt!2005053 (size!37138 lt!2005053))))))))

(declare-fun bm!339326 () Bool)

(assert (=> bm!339326 (= call!339331 (isEmpty!30257 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 (t!365275 rulesArg!165))) Nil!56403 (size!37138 Nil!56403) lt!2005053 lt!2005053 (size!37138 lt!2005053)))))))

(assert (= (and d!1571358 c!831528) b!4892587))

(assert (= (and d!1571358 (not c!831528)) b!4892586))

(assert (= (and d!1571358 c!831529) b!4892590))

(assert (= (and d!1571358 (not c!831529)) b!4892588))

(assert (= (and b!4892588 c!831527) b!4892581))

(assert (= (and b!4892588 (not c!831527)) b!4892584))

(assert (= (and b!4892584 (not res!2089594)) b!4892589))

(assert (= (and b!4892589 res!2089596) b!4892592))

(assert (= (and b!4892592 res!2089599) b!4892593))

(assert (= (and b!4892593 res!2089595) b!4892580))

(assert (= (and b!4892589 (not res!2089597)) b!4892585))

(assert (= (and b!4892585 res!2089600) b!4892583))

(assert (= (and b!4892583 (not res!2089598)) b!4892582))

(assert (= (and b!4892582 (not res!2089601)) b!4892591))

(assert (= (or b!4892590 b!4892583 b!4892592) bm!339326))

(declare-fun m!5897100 () Bool)

(assert (=> b!4892580 m!5897100))

(assert (=> b!4892591 m!5897100))

(assert (=> b!4892586 m!5897100))

(assert (=> b!4892586 m!5897100))

(declare-fun m!5897102 () Bool)

(assert (=> b!4892586 m!5897102))

(declare-fun m!5897104 () Bool)

(assert (=> b!4892586 m!5897104))

(assert (=> b!4892586 m!5897102))

(assert (=> b!4892586 m!5897104))

(declare-fun m!5897106 () Bool)

(assert (=> b!4892586 m!5897106))

(assert (=> b!4892593 m!5897104))

(assert (=> b!4892593 m!5897104))

(declare-fun m!5897108 () Bool)

(assert (=> b!4892593 m!5897108))

(assert (=> b!4892582 m!5897104))

(assert (=> b!4892582 m!5897104))

(assert (=> b!4892582 m!5897108))

(assert (=> bm!339326 m!5895212))

(assert (=> d!1571358 m!5895212))

(declare-fun m!5897110 () Bool)

(assert (=> d!1571358 m!5897110))

(declare-fun m!5897112 () Bool)

(assert (=> b!4892587 m!5897112))

(assert (=> b!4891526 d!1571358))

(declare-fun bm!339327 () Bool)

(declare-fun call!339337 () List!56527)

(assert (=> bm!339327 (= call!339337 (tail!9601 lt!2005053))))

(declare-fun bm!339328 () Bool)

(declare-fun call!339338 () C!26696)

(assert (=> bm!339328 (= call!339338 (head!10455 lt!2005053))))

(declare-fun bm!339329 () Bool)

(declare-fun call!339335 () Bool)

(assert (=> bm!339329 (= call!339335 (isPrefix!4894 lt!2005053 lt!2005053))))

(declare-fun b!4892594 () Bool)

(declare-fun e!3058633 () Unit!146398)

(declare-fun Unit!146421 () Unit!146398)

(assert (=> b!4892594 (= e!3058633 Unit!146421)))

(declare-fun bm!339330 () Bool)

(declare-fun call!339339 () Bool)

(assert (=> bm!339330 (= call!339339 (nullable!4555 (regex!8174 (h!62853 (t!365275 rulesArg!165)))))))

(declare-fun b!4892595 () Bool)

(declare-fun e!3058631 () tuple2!60450)

(assert (=> b!4892595 (= e!3058631 (tuple2!60451 Nil!56403 Nil!56403))))

(declare-fun b!4892596 () Bool)

(declare-fun e!3058634 () Bool)

(declare-fun e!3058637 () Bool)

(assert (=> b!4892596 (= e!3058634 e!3058637)))

(declare-fun res!2089603 () Bool)

(assert (=> b!4892596 (=> res!2089603 e!3058637)))

(declare-fun lt!2005527 () tuple2!60450)

(assert (=> b!4892596 (= res!2089603 (isEmpty!30257 (_1!33528 lt!2005527)))))

(declare-fun b!4892597 () Bool)

(assert (=> b!4892597 (= e!3058631 (tuple2!60451 Nil!56403 lt!2005053))))

(declare-fun bm!339331 () Bool)

(declare-fun call!339334 () Unit!146398)

(assert (=> bm!339331 (= call!339334 (lemmaIsPrefixRefl!3291 lt!2005053 lt!2005053))))

(declare-fun b!4892599 () Bool)

(declare-fun c!831533 () Bool)

(assert (=> b!4892599 (= c!831533 call!339339)))

(declare-fun lt!2005525 () Unit!146398)

(declare-fun lt!2005515 () Unit!146398)

(assert (=> b!4892599 (= lt!2005525 lt!2005515)))

(assert (=> b!4892599 (= lt!2005053 Nil!56403)))

(declare-fun call!339333 () Unit!146398)

(assert (=> b!4892599 (= lt!2005515 call!339333)))

(declare-fun lt!2005532 () Unit!146398)

(declare-fun lt!2005534 () Unit!146398)

(assert (=> b!4892599 (= lt!2005532 lt!2005534)))

(assert (=> b!4892599 call!339335))

(assert (=> b!4892599 (= lt!2005534 call!339334)))

(declare-fun e!3058635 () tuple2!60450)

(assert (=> b!4892599 (= e!3058635 e!3058631)))

(declare-fun call!339332 () Regex!13249)

(declare-fun call!339336 () tuple2!60450)

(declare-fun lt!2005524 () List!56527)

(declare-fun bm!339332 () Bool)

(assert (=> bm!339332 (= call!339336 (findLongestMatchInner!1752 call!339332 lt!2005524 (+ (size!37138 Nil!56403) 1) call!339337 lt!2005053 (size!37138 lt!2005053)))))

(declare-fun bm!339333 () Bool)

(assert (=> bm!339333 (= call!339332 (derivativeStep!3876 (regex!8174 (h!62853 (t!365275 rulesArg!165))) call!339338))))

(declare-fun b!4892600 () Bool)

(declare-fun Unit!146422 () Unit!146398)

(assert (=> b!4892600 (= e!3058633 Unit!146422)))

(declare-fun lt!2005523 () Unit!146398)

(assert (=> b!4892600 (= lt!2005523 call!339334)))

(assert (=> b!4892600 call!339335))

(declare-fun lt!2005542 () Unit!146398)

(assert (=> b!4892600 (= lt!2005542 lt!2005523)))

(declare-fun lt!2005540 () Unit!146398)

(assert (=> b!4892600 (= lt!2005540 call!339333)))

(assert (=> b!4892600 (= lt!2005053 Nil!56403)))

(declare-fun lt!2005531 () Unit!146398)

(assert (=> b!4892600 (= lt!2005531 lt!2005540)))

(assert (=> b!4892600 false))

(declare-fun bm!339334 () Bool)

(assert (=> bm!339334 (= call!339333 (lemmaIsPrefixSameLengthThenSameList!1057 lt!2005053 Nil!56403 lt!2005053))))

(declare-fun b!4892601 () Bool)

(declare-fun e!3058630 () tuple2!60450)

(assert (=> b!4892601 (= e!3058630 call!339336)))

(declare-fun b!4892602 () Bool)

(assert (=> b!4892602 (= e!3058637 (>= (size!37138 (_1!33528 lt!2005527)) (size!37138 Nil!56403)))))

(declare-fun b!4892603 () Bool)

(declare-fun e!3058636 () tuple2!60450)

(assert (=> b!4892603 (= e!3058636 e!3058635)))

(declare-fun c!831532 () Bool)

(assert (=> b!4892603 (= c!831532 (= (size!37138 Nil!56403) (size!37138 lt!2005053)))))

(declare-fun b!4892604 () Bool)

(assert (=> b!4892604 (= e!3058636 (tuple2!60451 Nil!56403 lt!2005053))))

(declare-fun b!4892605 () Bool)

(declare-fun e!3058632 () tuple2!60450)

(assert (=> b!4892605 (= e!3058630 e!3058632)))

(declare-fun lt!2005521 () tuple2!60450)

(assert (=> b!4892605 (= lt!2005521 call!339336)))

(declare-fun c!831534 () Bool)

(assert (=> b!4892605 (= c!831534 (isEmpty!30257 (_1!33528 lt!2005521)))))

(declare-fun b!4892606 () Bool)

(assert (=> b!4892606 (= e!3058632 (tuple2!60451 Nil!56403 lt!2005053))))

(declare-fun b!4892607 () Bool)

(assert (=> b!4892607 (= e!3058632 lt!2005521)))

(declare-fun b!4892598 () Bool)

(declare-fun c!831530 () Bool)

(assert (=> b!4892598 (= c!831530 call!339339)))

(declare-fun lt!2005517 () Unit!146398)

(declare-fun lt!2005539 () Unit!146398)

(assert (=> b!4892598 (= lt!2005517 lt!2005539)))

(declare-fun lt!2005538 () C!26696)

(declare-fun lt!2005533 () List!56527)

(assert (=> b!4892598 (= (++!12243 (++!12243 Nil!56403 (Cons!56403 lt!2005538 Nil!56403)) lt!2005533) lt!2005053)))

(assert (=> b!4892598 (= lt!2005539 (lemmaMoveElementToOtherListKeepsConcatEq!1329 Nil!56403 lt!2005538 lt!2005533 lt!2005053))))

(assert (=> b!4892598 (= lt!2005533 (tail!9601 lt!2005053))))

(assert (=> b!4892598 (= lt!2005538 (head!10455 lt!2005053))))

(declare-fun lt!2005522 () Unit!146398)

(declare-fun lt!2005519 () Unit!146398)

(assert (=> b!4892598 (= lt!2005522 lt!2005519)))

(assert (=> b!4892598 (isPrefix!4894 (++!12243 Nil!56403 (Cons!56403 (head!10455 (getSuffix!2886 lt!2005053 Nil!56403)) Nil!56403)) lt!2005053)))

(assert (=> b!4892598 (= lt!2005519 (lemmaAddHeadSuffixToPrefixStillPrefix!711 Nil!56403 lt!2005053))))

(declare-fun lt!2005529 () Unit!146398)

(declare-fun lt!2005528 () Unit!146398)

(assert (=> b!4892598 (= lt!2005529 lt!2005528)))

(assert (=> b!4892598 (= lt!2005528 (lemmaAddHeadSuffixToPrefixStillPrefix!711 Nil!56403 lt!2005053))))

(assert (=> b!4892598 (= lt!2005524 (++!12243 Nil!56403 (Cons!56403 (head!10455 lt!2005053) Nil!56403)))))

(declare-fun lt!2005520 () Unit!146398)

(assert (=> b!4892598 (= lt!2005520 e!3058633)))

(declare-fun c!831531 () Bool)

(assert (=> b!4892598 (= c!831531 (= (size!37138 Nil!56403) (size!37138 lt!2005053)))))

(declare-fun lt!2005516 () Unit!146398)

(declare-fun lt!2005526 () Unit!146398)

(assert (=> b!4892598 (= lt!2005516 lt!2005526)))

(assert (=> b!4892598 (<= (size!37138 Nil!56403) (size!37138 lt!2005053))))

(assert (=> b!4892598 (= lt!2005526 (lemmaIsPrefixThenSmallerEqSize!623 Nil!56403 lt!2005053))))

(assert (=> b!4892598 (= e!3058635 e!3058630)))

(declare-fun d!1571360 () Bool)

(assert (=> d!1571360 e!3058634))

(declare-fun res!2089602 () Bool)

(assert (=> d!1571360 (=> (not res!2089602) (not e!3058634))))

(assert (=> d!1571360 (= res!2089602 (= (++!12243 (_1!33528 lt!2005527) (_2!33528 lt!2005527)) lt!2005053))))

(assert (=> d!1571360 (= lt!2005527 e!3058636)))

(declare-fun c!831535 () Bool)

(assert (=> d!1571360 (= c!831535 (lostCause!1085 (regex!8174 (h!62853 (t!365275 rulesArg!165)))))))

(declare-fun lt!2005536 () Unit!146398)

(declare-fun Unit!146423 () Unit!146398)

(assert (=> d!1571360 (= lt!2005536 Unit!146423)))

(assert (=> d!1571360 (= (getSuffix!2886 lt!2005053 Nil!56403) lt!2005053)))

(declare-fun lt!2005537 () Unit!146398)

(declare-fun lt!2005518 () Unit!146398)

(assert (=> d!1571360 (= lt!2005537 lt!2005518)))

(declare-fun lt!2005535 () List!56527)

(assert (=> d!1571360 (= lt!2005053 lt!2005535)))

(assert (=> d!1571360 (= lt!2005518 (lemmaSamePrefixThenSameSuffix!2302 Nil!56403 lt!2005053 Nil!56403 lt!2005535 lt!2005053))))

(assert (=> d!1571360 (= lt!2005535 (getSuffix!2886 lt!2005053 Nil!56403))))

(declare-fun lt!2005541 () Unit!146398)

(declare-fun lt!2005530 () Unit!146398)

(assert (=> d!1571360 (= lt!2005541 lt!2005530)))

(assert (=> d!1571360 (isPrefix!4894 Nil!56403 (++!12243 Nil!56403 lt!2005053))))

(assert (=> d!1571360 (= lt!2005530 (lemmaConcatTwoListThenFirstIsPrefix!3122 Nil!56403 lt!2005053))))

(assert (=> d!1571360 (validRegex!5882 (regex!8174 (h!62853 (t!365275 rulesArg!165))))))

(assert (=> d!1571360 (= (findLongestMatchInner!1752 (regex!8174 (h!62853 (t!365275 rulesArg!165))) Nil!56403 (size!37138 Nil!56403) lt!2005053 lt!2005053 (size!37138 lt!2005053)) lt!2005527)))

(assert (= (and d!1571360 c!831535) b!4892604))

(assert (= (and d!1571360 (not c!831535)) b!4892603))

(assert (= (and b!4892603 c!831532) b!4892599))

(assert (= (and b!4892603 (not c!831532)) b!4892598))

(assert (= (and b!4892599 c!831533) b!4892595))

(assert (= (and b!4892599 (not c!831533)) b!4892597))

(assert (= (and b!4892598 c!831531) b!4892600))

(assert (= (and b!4892598 (not c!831531)) b!4892594))

(assert (= (and b!4892598 c!831530) b!4892605))

(assert (= (and b!4892598 (not c!831530)) b!4892601))

(assert (= (and b!4892605 c!831534) b!4892606))

(assert (= (and b!4892605 (not c!831534)) b!4892607))

(assert (= (or b!4892605 b!4892601) bm!339327))

(assert (= (or b!4892605 b!4892601) bm!339328))

(assert (= (or b!4892605 b!4892601) bm!339333))

(assert (= (or b!4892605 b!4892601) bm!339332))

(assert (= (or b!4892599 b!4892598) bm!339330))

(assert (= (or b!4892599 b!4892600) bm!339331))

(assert (= (or b!4892599 b!4892600) bm!339334))

(assert (= (or b!4892599 b!4892600) bm!339329))

(assert (= (and d!1571360 res!2089602) b!4892596))

(assert (= (and b!4892596 (not res!2089603)) b!4892602))

(assert (=> bm!339332 m!5895174))

(declare-fun m!5897114 () Bool)

(assert (=> bm!339332 m!5897114))

(declare-fun m!5897116 () Bool)

(assert (=> d!1571360 m!5897116))

(declare-fun m!5897118 () Bool)

(assert (=> d!1571360 m!5897118))

(declare-fun m!5897120 () Bool)

(assert (=> d!1571360 m!5897120))

(assert (=> d!1571360 m!5897110))

(declare-fun m!5897122 () Bool)

(assert (=> d!1571360 m!5897122))

(declare-fun m!5897124 () Bool)

(assert (=> d!1571360 m!5897124))

(declare-fun m!5897126 () Bool)

(assert (=> d!1571360 m!5897126))

(assert (=> d!1571360 m!5897118))

(declare-fun m!5897128 () Bool)

(assert (=> d!1571360 m!5897128))

(declare-fun m!5897130 () Bool)

(assert (=> b!4892605 m!5897130))

(declare-fun m!5897132 () Bool)

(assert (=> bm!339333 m!5897132))

(declare-fun m!5897134 () Bool)

(assert (=> bm!339331 m!5897134))

(declare-fun m!5897136 () Bool)

(assert (=> bm!339329 m!5897136))

(declare-fun m!5897138 () Bool)

(assert (=> b!4892602 m!5897138))

(assert (=> b!4892602 m!5894316))

(declare-fun m!5897140 () Bool)

(assert (=> bm!339327 m!5897140))

(declare-fun m!5897142 () Bool)

(assert (=> b!4892596 m!5897142))

(declare-fun m!5897144 () Bool)

(assert (=> bm!339328 m!5897144))

(assert (=> b!4892598 m!5894316))

(declare-fun m!5897146 () Bool)

(assert (=> b!4892598 m!5897146))

(assert (=> b!4892598 m!5897122))

(declare-fun m!5897148 () Bool)

(assert (=> b!4892598 m!5897148))

(declare-fun m!5897150 () Bool)

(assert (=> b!4892598 m!5897150))

(declare-fun m!5897152 () Bool)

(assert (=> b!4892598 m!5897152))

(declare-fun m!5897154 () Bool)

(assert (=> b!4892598 m!5897154))

(assert (=> b!4892598 m!5897154))

(declare-fun m!5897156 () Bool)

(assert (=> b!4892598 m!5897156))

(assert (=> b!4892598 m!5897140))

(assert (=> b!4892598 m!5897144))

(assert (=> b!4892598 m!5897152))

(declare-fun m!5897158 () Bool)

(assert (=> b!4892598 m!5897158))

(assert (=> b!4892598 m!5897122))

(assert (=> b!4892598 m!5895174))

(declare-fun m!5897160 () Bool)

(assert (=> b!4892598 m!5897160))

(declare-fun m!5897162 () Bool)

(assert (=> b!4892598 m!5897162))

(assert (=> bm!339330 m!5897112))

(declare-fun m!5897164 () Bool)

(assert (=> bm!339334 m!5897164))

(assert (=> b!4891526 d!1571360))

(assert (=> b!4891526 d!1570634))

(declare-fun d!1571362 () Bool)

(declare-fun lt!2005543 () Int)

(assert (=> d!1571362 (>= lt!2005543 0)))

(declare-fun e!3058638 () Int)

(assert (=> d!1571362 (= lt!2005543 e!3058638)))

(declare-fun c!831536 () Bool)

(assert (=> d!1571362 (= c!831536 ((_ is Nil!56403) lt!2005053))))

(assert (=> d!1571362 (= (size!37138 lt!2005053) lt!2005543)))

(declare-fun b!4892608 () Bool)

(assert (=> b!4892608 (= e!3058638 0)))

(declare-fun b!4892609 () Bool)

(assert (=> b!4892609 (= e!3058638 (+ 1 (size!37138 (t!365273 lt!2005053))))))

(assert (= (and d!1571362 c!831536) b!4892608))

(assert (= (and d!1571362 (not c!831536)) b!4892609))

(declare-fun m!5897166 () Bool)

(assert (=> b!4892609 m!5897166))

(assert (=> b!4891526 d!1571362))

(declare-fun d!1571364 () Bool)

(assert (=> d!1571364 (= (isEmpty!30257 (_1!33528 lt!2004936)) ((_ is Nil!56403) (_1!33528 lt!2004936)))))

(assert (=> b!4891319 d!1571364))

(declare-fun d!1571366 () Bool)

(declare-fun lt!2005544 () Int)

(assert (=> d!1571366 (>= lt!2005544 0)))

(declare-fun e!3058639 () Int)

(assert (=> d!1571366 (= lt!2005544 e!3058639)))

(declare-fun c!831537 () Bool)

(assert (=> d!1571366 (= c!831537 ((_ is Nil!56403) lt!2004581))))

(assert (=> d!1571366 (= (size!37138 lt!2004581) lt!2005544)))

(declare-fun b!4892610 () Bool)

(assert (=> b!4892610 (= e!3058639 0)))

(declare-fun b!4892611 () Bool)

(assert (=> b!4892611 (= e!3058639 (+ 1 (size!37138 (t!365273 lt!2004581))))))

(assert (= (and d!1571366 c!831537) b!4892610))

(assert (= (and d!1571366 (not c!831537)) b!4892611))

(declare-fun m!5897168 () Bool)

(assert (=> b!4892611 m!5897168))

(assert (=> b!4891635 d!1571366))

(declare-fun d!1571368 () Bool)

(declare-fun lt!2005545 () Int)

(assert (=> d!1571368 (>= lt!2005545 0)))

(declare-fun e!3058640 () Int)

(assert (=> d!1571368 (= lt!2005545 e!3058640)))

(declare-fun c!831538 () Bool)

(assert (=> d!1571368 (= c!831538 ((_ is Nil!56403) lt!2004578))))

(assert (=> d!1571368 (= (size!37138 lt!2004578) lt!2005545)))

(declare-fun b!4892612 () Bool)

(assert (=> b!4892612 (= e!3058640 0)))

(declare-fun b!4892613 () Bool)

(assert (=> b!4892613 (= e!3058640 (+ 1 (size!37138 (t!365273 lt!2004578))))))

(assert (= (and d!1571368 c!831538) b!4892612))

(assert (= (and d!1571368 (not c!831538)) b!4892613))

(declare-fun m!5897170 () Bool)

(assert (=> b!4892613 m!5897170))

(assert (=> b!4891635 d!1571368))

(declare-fun b!4892615 () Bool)

(declare-fun res!2089606 () Bool)

(declare-fun e!3058641 () Bool)

(assert (=> b!4892615 (=> (not res!2089606) (not e!3058641))))

(assert (=> b!4892615 (= res!2089606 (= (head!10455 (tail!9601 (tail!9601 lt!2004534))) (head!10455 (tail!9601 (tail!9601 lt!2004534)))))))

(declare-fun d!1571370 () Bool)

(declare-fun e!3058642 () Bool)

(assert (=> d!1571370 e!3058642))

(declare-fun res!2089605 () Bool)

(assert (=> d!1571370 (=> res!2089605 e!3058642)))

(declare-fun lt!2005546 () Bool)

(assert (=> d!1571370 (= res!2089605 (not lt!2005546))))

(declare-fun e!3058643 () Bool)

(assert (=> d!1571370 (= lt!2005546 e!3058643)))

(declare-fun res!2089607 () Bool)

(assert (=> d!1571370 (=> res!2089607 e!3058643)))

(assert (=> d!1571370 (= res!2089607 ((_ is Nil!56403) (tail!9601 (tail!9601 lt!2004534))))))

(assert (=> d!1571370 (= (isPrefix!4894 (tail!9601 (tail!9601 lt!2004534)) (tail!9601 (tail!9601 lt!2004534))) lt!2005546)))

(declare-fun b!4892614 () Bool)

(assert (=> b!4892614 (= e!3058643 e!3058641)))

(declare-fun res!2089604 () Bool)

(assert (=> b!4892614 (=> (not res!2089604) (not e!3058641))))

(assert (=> b!4892614 (= res!2089604 (not ((_ is Nil!56403) (tail!9601 (tail!9601 lt!2004534)))))))

(declare-fun b!4892616 () Bool)

(assert (=> b!4892616 (= e!3058641 (isPrefix!4894 (tail!9601 (tail!9601 (tail!9601 lt!2004534))) (tail!9601 (tail!9601 (tail!9601 lt!2004534)))))))

(declare-fun b!4892617 () Bool)

(assert (=> b!4892617 (= e!3058642 (>= (size!37138 (tail!9601 (tail!9601 lt!2004534))) (size!37138 (tail!9601 (tail!9601 lt!2004534)))))))

(assert (= (and d!1571370 (not res!2089607)) b!4892614))

(assert (= (and b!4892614 res!2089604) b!4892615))

(assert (= (and b!4892615 res!2089606) b!4892616))

(assert (= (and d!1571370 (not res!2089605)) b!4892617))

(assert (=> b!4892615 m!5894556))

(declare-fun m!5897172 () Bool)

(assert (=> b!4892615 m!5897172))

(assert (=> b!4892615 m!5894556))

(assert (=> b!4892615 m!5897172))

(assert (=> b!4892616 m!5894556))

(declare-fun m!5897174 () Bool)

(assert (=> b!4892616 m!5897174))

(assert (=> b!4892616 m!5894556))

(assert (=> b!4892616 m!5897174))

(assert (=> b!4892616 m!5897174))

(assert (=> b!4892616 m!5897174))

(declare-fun m!5897176 () Bool)

(assert (=> b!4892616 m!5897176))

(assert (=> b!4892617 m!5894556))

(declare-fun m!5897178 () Bool)

(assert (=> b!4892617 m!5897178))

(assert (=> b!4892617 m!5894556))

(assert (=> b!4892617 m!5897178))

(assert (=> b!4891077 d!1571370))

(declare-fun d!1571372 () Bool)

(assert (=> d!1571372 (= (tail!9601 (tail!9601 lt!2004534)) (t!365273 (tail!9601 lt!2004534)))))

(assert (=> b!4891077 d!1571372))

(declare-fun d!1571374 () Bool)

(assert (=> d!1571374 (= (list!17722 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658)))))) (list!17724 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658))))))))))

(declare-fun bs!1175968 () Bool)

(assert (= bs!1175968 d!1571374))

(declare-fun m!5897180 () Bool)

(assert (=> bs!1175968 m!5897180))

(assert (=> bs!1175856 d!1571374))

(declare-fun d!1571376 () Bool)

(assert (=> d!1571376 (= (list!17722 (seqFromList!5936 (list!17722 (_1!33527 lt!2004658)))) (list!17724 (c!831175 (seqFromList!5936 (list!17722 (_1!33527 lt!2004658))))))))

(declare-fun bs!1175969 () Bool)

(assert (= bs!1175969 d!1571376))

(declare-fun m!5897182 () Bool)

(assert (=> bs!1175969 m!5897182))

(assert (=> bs!1175856 d!1571376))

(declare-fun b!4892618 () Bool)

(declare-fun e!3058645 () Bool)

(declare-fun e!3058646 () Bool)

(assert (=> b!4892618 (= e!3058645 e!3058646)))

(declare-fun res!2089609 () Bool)

(assert (=> b!4892618 (=> (not res!2089609) (not e!3058646))))

(declare-fun lt!2005547 () Option!14026)

(assert (=> b!4892618 (= res!2089609 (isDefined!11037 lt!2005547))))

(declare-fun b!4892619 () Bool)

(assert (=> b!4892619 (= e!3058646 (contains!19437 (t!365275 (t!365275 rulesArg!165)) (rule!11358 (_1!33526 (get!19478 lt!2005547)))))))

(declare-fun d!1571378 () Bool)

(assert (=> d!1571378 e!3058645))

(declare-fun res!2089610 () Bool)

(assert (=> d!1571378 (=> res!2089610 e!3058645)))

(assert (=> d!1571378 (= res!2089610 (isEmpty!30258 lt!2005547))))

(declare-fun e!3058644 () Option!14026)

(assert (=> d!1571378 (= lt!2005547 e!3058644)))

(declare-fun c!831539 () Bool)

(assert (=> d!1571378 (= c!831539 (and ((_ is Cons!56405) (t!365275 (t!365275 rulesArg!165))) ((_ is Nil!56405) (t!365275 (t!365275 (t!365275 rulesArg!165))))))))

(declare-fun lt!2005548 () Unit!146398)

(declare-fun lt!2005551 () Unit!146398)

(assert (=> d!1571378 (= lt!2005548 lt!2005551)))

(assert (=> d!1571378 (isPrefix!4894 lt!2004534 lt!2004534)))

(assert (=> d!1571378 (= lt!2005551 (lemmaIsPrefixRefl!3291 lt!2004534 lt!2004534))))

(assert (=> d!1571378 (rulesValidInductive!3153 thiss!14805 (t!365275 (t!365275 rulesArg!165)))))

(assert (=> d!1571378 (= (maxPrefix!4603 thiss!14805 (t!365275 (t!365275 rulesArg!165)) lt!2004534) lt!2005547)))

(declare-fun bm!339335 () Bool)

(declare-fun call!339340 () Option!14026)

(assert (=> bm!339335 (= call!339340 (maxPrefixOneRule!3529 thiss!14805 (h!62853 (t!365275 (t!365275 rulesArg!165))) lt!2004534))))

(declare-fun b!4892620 () Bool)

(assert (=> b!4892620 (= e!3058644 call!339340)))

(declare-fun b!4892621 () Bool)

(declare-fun res!2089611 () Bool)

(assert (=> b!4892621 (=> (not res!2089611) (not e!3058646))))

(assert (=> b!4892621 (= res!2089611 (matchR!6530 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2005547)))) (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2005547))))))))

(declare-fun b!4892622 () Bool)

(declare-fun res!2089614 () Bool)

(assert (=> b!4892622 (=> (not res!2089614) (not e!3058646))))

(assert (=> b!4892622 (= res!2089614 (= (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2005547)))) (originalCharacters!8487 (_1!33526 (get!19478 lt!2005547)))))))

(declare-fun b!4892623 () Bool)

(declare-fun res!2089612 () Bool)

(assert (=> b!4892623 (=> (not res!2089612) (not e!3058646))))

(assert (=> b!4892623 (= res!2089612 (= (++!12243 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2005547)))) (_2!33526 (get!19478 lt!2005547))) lt!2004534))))

(declare-fun b!4892624 () Bool)

(declare-fun res!2089608 () Bool)

(assert (=> b!4892624 (=> (not res!2089608) (not e!3058646))))

(assert (=> b!4892624 (= res!2089608 (< (size!37138 (_2!33526 (get!19478 lt!2005547))) (size!37138 lt!2004534)))))

(declare-fun b!4892625 () Bool)

(declare-fun res!2089613 () Bool)

(assert (=> b!4892625 (=> (not res!2089613) (not e!3058646))))

(assert (=> b!4892625 (= res!2089613 (= (value!262109 (_1!33526 (get!19478 lt!2005547))) (apply!13540 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2005547)))) (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2005547)))))))))

(declare-fun b!4892626 () Bool)

(declare-fun lt!2005549 () Option!14026)

(declare-fun lt!2005550 () Option!14026)

(assert (=> b!4892626 (= e!3058644 (ite (and ((_ is None!14025) lt!2005549) ((_ is None!14025) lt!2005550)) None!14025 (ite ((_ is None!14025) lt!2005550) lt!2005549 (ite ((_ is None!14025) lt!2005549) lt!2005550 (ite (>= (size!37136 (_1!33526 (v!49977 lt!2005549))) (size!37136 (_1!33526 (v!49977 lt!2005550)))) lt!2005549 lt!2005550)))))))

(assert (=> b!4892626 (= lt!2005549 call!339340)))

(assert (=> b!4892626 (= lt!2005550 (maxPrefix!4603 thiss!14805 (t!365275 (t!365275 (t!365275 rulesArg!165))) lt!2004534))))

(assert (= (and d!1571378 c!831539) b!4892620))

(assert (= (and d!1571378 (not c!831539)) b!4892626))

(assert (= (or b!4892620 b!4892626) bm!339335))

(assert (= (and d!1571378 (not res!2089610)) b!4892618))

(assert (= (and b!4892618 res!2089609) b!4892622))

(assert (= (and b!4892622 res!2089614) b!4892624))

(assert (= (and b!4892624 res!2089608) b!4892623))

(assert (= (and b!4892623 res!2089612) b!4892625))

(assert (= (and b!4892625 res!2089613) b!4892621))

(assert (= (and b!4892621 res!2089611) b!4892619))

(declare-fun m!5897184 () Bool)

(assert (=> b!4892625 m!5897184))

(declare-fun m!5897186 () Bool)

(assert (=> b!4892625 m!5897186))

(assert (=> b!4892625 m!5897186))

(declare-fun m!5897188 () Bool)

(assert (=> b!4892625 m!5897188))

(assert (=> b!4892623 m!5897184))

(declare-fun m!5897190 () Bool)

(assert (=> b!4892623 m!5897190))

(assert (=> b!4892623 m!5897190))

(declare-fun m!5897192 () Bool)

(assert (=> b!4892623 m!5897192))

(assert (=> b!4892623 m!5897192))

(declare-fun m!5897194 () Bool)

(assert (=> b!4892623 m!5897194))

(declare-fun m!5897196 () Bool)

(assert (=> bm!339335 m!5897196))

(assert (=> b!4892622 m!5897184))

(assert (=> b!4892622 m!5897190))

(assert (=> b!4892622 m!5897190))

(assert (=> b!4892622 m!5897192))

(assert (=> b!4892621 m!5897184))

(assert (=> b!4892621 m!5897190))

(assert (=> b!4892621 m!5897190))

(assert (=> b!4892621 m!5897192))

(assert (=> b!4892621 m!5897192))

(declare-fun m!5897198 () Bool)

(assert (=> b!4892621 m!5897198))

(declare-fun m!5897200 () Bool)

(assert (=> d!1571378 m!5897200))

(assert (=> d!1571378 m!5894172))

(assert (=> d!1571378 m!5894174))

(assert (=> d!1571378 m!5894552))

(assert (=> b!4892624 m!5897184))

(declare-fun m!5897202 () Bool)

(assert (=> b!4892624 m!5897202))

(assert (=> b!4892624 m!5894382))

(assert (=> b!4892619 m!5897184))

(declare-fun m!5897204 () Bool)

(assert (=> b!4892619 m!5897204))

(declare-fun m!5897206 () Bool)

(assert (=> b!4892626 m!5897206))

(declare-fun m!5897208 () Bool)

(assert (=> b!4892618 m!5897208))

(assert (=> b!4891655 d!1571378))

(declare-fun d!1571380 () Bool)

(assert (=> d!1571380 (= (list!17722 lt!2004965) (list!17724 (c!831175 lt!2004965)))))

(declare-fun bs!1175970 () Bool)

(assert (= bs!1175970 d!1571380))

(declare-fun m!5897210 () Bool)

(assert (=> bs!1175970 m!5897210))

(assert (=> d!1570644 d!1571380))

(assert (=> b!4891594 d!1570594))

(assert (=> b!4891594 d!1570596))

(assert (=> b!4891594 d!1570634))

(assert (=> b!4891594 d!1570636))

(declare-fun d!1571382 () Bool)

(assert (=> d!1571382 (= (inv!72685 (xs!18058 (right!41305 (c!831175 input!1236)))) (<= (size!37138 (innerList!14830 (xs!18058 (right!41305 (c!831175 input!1236))))) 2147483647))))

(declare-fun bs!1175971 () Bool)

(assert (= bs!1175971 d!1571382))

(declare-fun m!5897212 () Bool)

(assert (=> bs!1175971 m!5897212))

(assert (=> b!4891732 d!1571382))

(declare-fun d!1571384 () Bool)

(assert (=> d!1571384 (= (height!1955 (left!40975 (c!831175 input!1236))) (ite ((_ is Empty!14742) (left!40975 (c!831175 input!1236))) 0 (ite ((_ is Leaf!24546) (left!40975 (c!831175 input!1236))) 1 (cheight!14953 (left!40975 (c!831175 input!1236))))))))

(assert (=> b!4891499 d!1571384))

(declare-fun d!1571386 () Bool)

(assert (=> d!1571386 (= (height!1955 (right!41305 (c!831175 input!1236))) (ite ((_ is Empty!14742) (right!41305 (c!831175 input!1236))) 0 (ite ((_ is Leaf!24546) (right!41305 (c!831175 input!1236))) 1 (cheight!14953 (right!41305 (c!831175 input!1236))))))))

(assert (=> b!4891499 d!1571386))

(declare-fun d!1571388 () Bool)

(assert (=> d!1571388 (= (isEmpty!30257 (list!17722 (_1!33527 lt!2004658))) ((_ is Nil!56403) (list!17722 (_1!33527 lt!2004658))))))

(assert (=> d!1570676 d!1571388))

(assert (=> d!1570676 d!1570768))

(declare-fun d!1571390 () Bool)

(declare-fun lt!2005554 () Bool)

(assert (=> d!1571390 (= lt!2005554 (isEmpty!30257 (list!17724 (c!831175 (_1!33527 lt!2004658)))))))

(assert (=> d!1571390 (= lt!2005554 (= (size!37142 (c!831175 (_1!33527 lt!2004658))) 0))))

(assert (=> d!1571390 (= (isEmpty!30263 (c!831175 (_1!33527 lt!2004658))) lt!2005554)))

(declare-fun bs!1175972 () Bool)

(assert (= bs!1175972 d!1571390))

(assert (=> bs!1175972 m!5895396))

(assert (=> bs!1175972 m!5895396))

(declare-fun m!5897214 () Bool)

(assert (=> bs!1175972 m!5897214))

(assert (=> bs!1175972 m!5895394))

(assert (=> d!1570676 d!1571390))

(declare-fun d!1571392 () Bool)

(assert (=> d!1571392 (= (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2005117)))) (list!17724 (c!831175 (charsOf!5374 (_1!33526 (get!19478 lt!2005117))))))))

(declare-fun bs!1175973 () Bool)

(assert (= bs!1175973 d!1571392))

(declare-fun m!5897216 () Bool)

(assert (=> bs!1175973 m!5897216))

(assert (=> b!4891651 d!1571392))

(declare-fun d!1571394 () Bool)

(declare-fun lt!2005555 () BalanceConc!28914)

(assert (=> d!1571394 (= (list!17722 lt!2005555) (originalCharacters!8487 (_1!33526 (get!19478 lt!2005117))))))

(assert (=> d!1571394 (= lt!2005555 (dynLambda!22627 (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2005117))))) (value!262109 (_1!33526 (get!19478 lt!2005117)))))))

(assert (=> d!1571394 (= (charsOf!5374 (_1!33526 (get!19478 lt!2005117))) lt!2005555)))

(declare-fun b_lambda!194311 () Bool)

(assert (=> (not b_lambda!194311) (not d!1571394)))

(declare-fun tb!258773 () Bool)

(declare-fun t!365520 () Bool)

(assert (=> (and b!4890709 (= (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2005117)))))) t!365520) tb!258773))

(declare-fun b!4892627 () Bool)

(declare-fun e!3058647 () Bool)

(declare-fun tp!1377012 () Bool)

(assert (=> b!4892627 (= e!3058647 (and (inv!72677 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2005117))))) (value!262109 (_1!33526 (get!19478 lt!2005117)))))) tp!1377012))))

(declare-fun result!322336 () Bool)

(assert (=> tb!258773 (= result!322336 (and (inv!72679 (dynLambda!22627 (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2005117))))) (value!262109 (_1!33526 (get!19478 lt!2005117))))) e!3058647))))

(assert (= tb!258773 b!4892627))

(declare-fun m!5897218 () Bool)

(assert (=> b!4892627 m!5897218))

(declare-fun m!5897220 () Bool)

(assert (=> tb!258773 m!5897220))

(assert (=> d!1571394 t!365520))

(declare-fun b_and!344761 () Bool)

(assert (= b_and!344571 (and (=> t!365520 result!322336) b_and!344761)))

(declare-fun tb!258775 () Bool)

(declare-fun t!365522 () Bool)

(assert (=> (and b!4891010 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2005117)))))) t!365522) tb!258775))

(declare-fun result!322338 () Bool)

(assert (= result!322338 result!322336))

(assert (=> d!1571394 t!365522))

(declare-fun b_and!344763 () Bool)

(assert (= b_and!344573 (and (=> t!365522 result!322338) b_and!344763)))

(declare-fun tb!258777 () Bool)

(declare-fun t!365524 () Bool)

(assert (=> (and b!4891741 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2005117)))))) t!365524) tb!258777))

(declare-fun result!322340 () Bool)

(assert (= result!322340 result!322336))

(assert (=> d!1571394 t!365524))

(declare-fun b_and!344765 () Bool)

(assert (= b_and!344575 (and (=> t!365524 result!322340) b_and!344765)))

(declare-fun m!5897222 () Bool)

(assert (=> d!1571394 m!5897222))

(declare-fun m!5897224 () Bool)

(assert (=> d!1571394 m!5897224))

(assert (=> b!4891651 d!1571394))

(declare-fun d!1571396 () Bool)

(assert (=> d!1571396 (= (get!19478 lt!2005117) (v!49977 lt!2005117))))

(assert (=> b!4891651 d!1571396))

(declare-fun d!1571398 () Bool)

(assert (=> d!1571398 (= (isEmpty!30257 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))) ((_ is Nil!56403) (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))))))

(assert (=> bm!339231 d!1571398))

(declare-fun b!4892629 () Bool)

(declare-fun e!3058648 () List!56527)

(declare-fun e!3058649 () List!56527)

(assert (=> b!4892629 (= e!3058648 e!3058649)))

(declare-fun c!831541 () Bool)

(assert (=> b!4892629 (= c!831541 ((_ is Leaf!24546) (c!831175 (_2!33525 (get!19479 lt!2004654)))))))

(declare-fun d!1571400 () Bool)

(declare-fun c!831540 () Bool)

(assert (=> d!1571400 (= c!831540 ((_ is Empty!14742) (c!831175 (_2!33525 (get!19479 lt!2004654)))))))

(assert (=> d!1571400 (= (list!17724 (c!831175 (_2!33525 (get!19479 lt!2004654)))) e!3058648)))

(declare-fun b!4892630 () Bool)

(assert (=> b!4892630 (= e!3058649 (list!17726 (xs!18058 (c!831175 (_2!33525 (get!19479 lt!2004654))))))))

(declare-fun b!4892628 () Bool)

(assert (=> b!4892628 (= e!3058648 Nil!56403)))

(declare-fun b!4892631 () Bool)

(assert (=> b!4892631 (= e!3058649 (++!12243 (list!17724 (left!40975 (c!831175 (_2!33525 (get!19479 lt!2004654))))) (list!17724 (right!41305 (c!831175 (_2!33525 (get!19479 lt!2004654)))))))))

(assert (= (and d!1571400 c!831540) b!4892628))

(assert (= (and d!1571400 (not c!831540)) b!4892629))

(assert (= (and b!4892629 c!831541) b!4892630))

(assert (= (and b!4892629 (not c!831541)) b!4892631))

(declare-fun m!5897226 () Bool)

(assert (=> b!4892630 m!5897226))

(declare-fun m!5897228 () Bool)

(assert (=> b!4892631 m!5897228))

(declare-fun m!5897230 () Bool)

(assert (=> b!4892631 m!5897230))

(assert (=> b!4892631 m!5897228))

(assert (=> b!4892631 m!5897230))

(declare-fun m!5897232 () Bool)

(assert (=> b!4892631 m!5897232))

(assert (=> d!1570654 d!1571400))

(declare-fun d!1571402 () Bool)

(declare-fun c!831546 () Bool)

(assert (=> d!1571402 (= c!831546 ((_ is IntegerValue!25452) (dynLambda!22628 (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004672)))))))))

(declare-fun e!3058658 () Bool)

(assert (=> d!1571402 (= (inv!21 (dynLambda!22628 (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004672)))))) e!3058658)))

(declare-fun b!4892642 () Bool)

(declare-fun e!3058657 () Bool)

(declare-fun inv!17 (TokenValue!8484) Bool)

(assert (=> b!4892642 (= e!3058657 (inv!17 (dynLambda!22628 (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004672)))))))))

(declare-fun b!4892643 () Bool)

(declare-fun e!3058656 () Bool)

(declare-fun inv!15 (TokenValue!8484) Bool)

(assert (=> b!4892643 (= e!3058656 (inv!15 (dynLambda!22628 (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004672)))))))))

(declare-fun b!4892644 () Bool)

(assert (=> b!4892644 (= e!3058658 e!3058657)))

(declare-fun c!831547 () Bool)

(assert (=> b!4892644 (= c!831547 ((_ is IntegerValue!25453) (dynLambda!22628 (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004672)))))))))

(declare-fun b!4892645 () Bool)

(declare-fun inv!16 (TokenValue!8484) Bool)

(assert (=> b!4892645 (= e!3058658 (inv!16 (dynLambda!22628 (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004672)))))))))

(declare-fun b!4892646 () Bool)

(declare-fun res!2089617 () Bool)

(assert (=> b!4892646 (=> res!2089617 e!3058656)))

(assert (=> b!4892646 (= res!2089617 (not ((_ is IntegerValue!25454) (dynLambda!22628 (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004672))))))))))

(assert (=> b!4892646 (= e!3058657 e!3058656)))

(assert (= (and d!1571402 c!831546) b!4892645))

(assert (= (and d!1571402 (not c!831546)) b!4892644))

(assert (= (and b!4892644 c!831547) b!4892642))

(assert (= (and b!4892644 (not c!831547)) b!4892646))

(assert (= (and b!4892646 (not res!2089617)) b!4892643))

(declare-fun m!5897234 () Bool)

(assert (=> b!4892642 m!5897234))

(declare-fun m!5897236 () Bool)

(assert (=> b!4892643 m!5897236))

(declare-fun m!5897238 () Bool)

(assert (=> b!4892645 m!5897238))

(assert (=> tb!258559 d!1571402))

(declare-fun d!1571404 () Bool)

(assert (=> d!1571404 (= (get!19478 lt!2004762) (v!49977 lt!2004762))))

(assert (=> b!4891119 d!1571404))

(declare-fun bm!339336 () Bool)

(declare-fun call!339346 () List!56527)

(assert (=> bm!339336 (= call!339346 (tail!9601 call!339233))))

(declare-fun bm!339337 () Bool)

(declare-fun call!339347 () C!26696)

(assert (=> bm!339337 (= call!339347 (head!10455 call!339233))))

(declare-fun bm!339338 () Bool)

(declare-fun call!339344 () Bool)

(assert (=> bm!339338 (= call!339344 (isPrefix!4894 lt!2004660 lt!2004660))))

(declare-fun b!4892647 () Bool)

(declare-fun e!3058662 () Unit!146398)

(declare-fun Unit!146427 () Unit!146398)

(assert (=> b!4892647 (= e!3058662 Unit!146427)))

(declare-fun bm!339339 () Bool)

(declare-fun call!339348 () Bool)

(assert (=> bm!339339 (= call!339348 (nullable!4555 call!339228))))

(declare-fun b!4892648 () Bool)

(declare-fun e!3058660 () tuple2!60450)

(assert (=> b!4892648 (= e!3058660 (tuple2!60451 lt!2004939 Nil!56403))))

(declare-fun b!4892649 () Bool)

(declare-fun e!3058663 () Bool)

(declare-fun e!3058666 () Bool)

(assert (=> b!4892649 (= e!3058663 e!3058666)))

(declare-fun res!2089619 () Bool)

(assert (=> b!4892649 (=> res!2089619 e!3058666)))

(declare-fun lt!2005568 () tuple2!60450)

(assert (=> b!4892649 (= res!2089619 (isEmpty!30257 (_1!33528 lt!2005568)))))

(declare-fun b!4892650 () Bool)

(assert (=> b!4892650 (= e!3058660 (tuple2!60451 Nil!56403 lt!2004660))))

(declare-fun bm!339340 () Bool)

(declare-fun call!339343 () Unit!146398)

(assert (=> bm!339340 (= call!339343 (lemmaIsPrefixRefl!3291 lt!2004660 lt!2004660))))

(declare-fun b!4892652 () Bool)

(declare-fun c!831551 () Bool)

(assert (=> b!4892652 (= c!831551 call!339348)))

(declare-fun lt!2005566 () Unit!146398)

(declare-fun lt!2005556 () Unit!146398)

(assert (=> b!4892652 (= lt!2005566 lt!2005556)))

(assert (=> b!4892652 (= lt!2004660 lt!2004939)))

(declare-fun call!339342 () Unit!146398)

(assert (=> b!4892652 (= lt!2005556 call!339342)))

(declare-fun lt!2005573 () Unit!146398)

(declare-fun lt!2005575 () Unit!146398)

(assert (=> b!4892652 (= lt!2005573 lt!2005575)))

(assert (=> b!4892652 call!339344))

(assert (=> b!4892652 (= lt!2005575 call!339343)))

(declare-fun e!3058664 () tuple2!60450)

(assert (=> b!4892652 (= e!3058664 e!3058660)))

(declare-fun lt!2005565 () List!56527)

(declare-fun bm!339341 () Bool)

(declare-fun call!339341 () Regex!13249)

(declare-fun call!339345 () tuple2!60450)

(assert (=> bm!339341 (= call!339345 (findLongestMatchInner!1752 call!339341 lt!2005565 (+ (size!37138 Nil!56403) 1 1) call!339346 lt!2004660 (size!37138 lt!2004660)))))

(declare-fun bm!339342 () Bool)

(assert (=> bm!339342 (= call!339341 (derivativeStep!3876 call!339228 call!339347))))

(declare-fun b!4892653 () Bool)

(declare-fun Unit!146428 () Unit!146398)

(assert (=> b!4892653 (= e!3058662 Unit!146428)))

(declare-fun lt!2005564 () Unit!146398)

(assert (=> b!4892653 (= lt!2005564 call!339343)))

(assert (=> b!4892653 call!339344))

(declare-fun lt!2005583 () Unit!146398)

(assert (=> b!4892653 (= lt!2005583 lt!2005564)))

(declare-fun lt!2005581 () Unit!146398)

(assert (=> b!4892653 (= lt!2005581 call!339342)))

(assert (=> b!4892653 (= lt!2004660 lt!2004939)))

(declare-fun lt!2005572 () Unit!146398)

(assert (=> b!4892653 (= lt!2005572 lt!2005581)))

(assert (=> b!4892653 false))

(declare-fun bm!339343 () Bool)

(assert (=> bm!339343 (= call!339342 (lemmaIsPrefixSameLengthThenSameList!1057 lt!2004660 lt!2004939 lt!2004660))))

(declare-fun b!4892654 () Bool)

(declare-fun e!3058659 () tuple2!60450)

(assert (=> b!4892654 (= e!3058659 call!339345)))

(declare-fun b!4892655 () Bool)

(assert (=> b!4892655 (= e!3058666 (>= (size!37138 (_1!33528 lt!2005568)) (size!37138 lt!2004939)))))

(declare-fun b!4892656 () Bool)

(declare-fun e!3058665 () tuple2!60450)

(assert (=> b!4892656 (= e!3058665 e!3058664)))

(declare-fun c!831550 () Bool)

(assert (=> b!4892656 (= c!831550 (= (+ (size!37138 Nil!56403) 1) (size!37138 lt!2004660)))))

(declare-fun b!4892657 () Bool)

(assert (=> b!4892657 (= e!3058665 (tuple2!60451 Nil!56403 lt!2004660))))

(declare-fun b!4892658 () Bool)

(declare-fun e!3058661 () tuple2!60450)

(assert (=> b!4892658 (= e!3058659 e!3058661)))

(declare-fun lt!2005562 () tuple2!60450)

(assert (=> b!4892658 (= lt!2005562 call!339345)))

(declare-fun c!831552 () Bool)

(assert (=> b!4892658 (= c!831552 (isEmpty!30257 (_1!33528 lt!2005562)))))

(declare-fun b!4892659 () Bool)

(assert (=> b!4892659 (= e!3058661 (tuple2!60451 lt!2004939 call!339233))))

(declare-fun b!4892660 () Bool)

(assert (=> b!4892660 (= e!3058661 lt!2005562)))

(declare-fun b!4892651 () Bool)

(declare-fun c!831548 () Bool)

(assert (=> b!4892651 (= c!831548 call!339348)))

(declare-fun lt!2005558 () Unit!146398)

(declare-fun lt!2005580 () Unit!146398)

(assert (=> b!4892651 (= lt!2005558 lt!2005580)))

(declare-fun lt!2005579 () C!26696)

(declare-fun lt!2005574 () List!56527)

(assert (=> b!4892651 (= (++!12243 (++!12243 lt!2004939 (Cons!56403 lt!2005579 Nil!56403)) lt!2005574) lt!2004660)))

(assert (=> b!4892651 (= lt!2005580 (lemmaMoveElementToOtherListKeepsConcatEq!1329 lt!2004939 lt!2005579 lt!2005574 lt!2004660))))

(assert (=> b!4892651 (= lt!2005574 (tail!9601 call!339233))))

(assert (=> b!4892651 (= lt!2005579 (head!10455 call!339233))))

(declare-fun lt!2005563 () Unit!146398)

(declare-fun lt!2005560 () Unit!146398)

(assert (=> b!4892651 (= lt!2005563 lt!2005560)))

(assert (=> b!4892651 (isPrefix!4894 (++!12243 lt!2004939 (Cons!56403 (head!10455 (getSuffix!2886 lt!2004660 lt!2004939)) Nil!56403)) lt!2004660)))

(assert (=> b!4892651 (= lt!2005560 (lemmaAddHeadSuffixToPrefixStillPrefix!711 lt!2004939 lt!2004660))))

(declare-fun lt!2005570 () Unit!146398)

(declare-fun lt!2005569 () Unit!146398)

(assert (=> b!4892651 (= lt!2005570 lt!2005569)))

(assert (=> b!4892651 (= lt!2005569 (lemmaAddHeadSuffixToPrefixStillPrefix!711 lt!2004939 lt!2004660))))

(assert (=> b!4892651 (= lt!2005565 (++!12243 lt!2004939 (Cons!56403 (head!10455 call!339233) Nil!56403)))))

(declare-fun lt!2005561 () Unit!146398)

(assert (=> b!4892651 (= lt!2005561 e!3058662)))

(declare-fun c!831549 () Bool)

(assert (=> b!4892651 (= c!831549 (= (size!37138 lt!2004939) (size!37138 lt!2004660)))))

(declare-fun lt!2005557 () Unit!146398)

(declare-fun lt!2005567 () Unit!146398)

(assert (=> b!4892651 (= lt!2005557 lt!2005567)))

(assert (=> b!4892651 (<= (size!37138 lt!2004939) (size!37138 lt!2004660))))

(assert (=> b!4892651 (= lt!2005567 (lemmaIsPrefixThenSmallerEqSize!623 lt!2004939 lt!2004660))))

(assert (=> b!4892651 (= e!3058664 e!3058659)))

(declare-fun d!1571406 () Bool)

(assert (=> d!1571406 e!3058663))

(declare-fun res!2089618 () Bool)

(assert (=> d!1571406 (=> (not res!2089618) (not e!3058663))))

(assert (=> d!1571406 (= res!2089618 (= (++!12243 (_1!33528 lt!2005568) (_2!33528 lt!2005568)) lt!2004660))))

(assert (=> d!1571406 (= lt!2005568 e!3058665)))

(declare-fun c!831553 () Bool)

(assert (=> d!1571406 (= c!831553 (lostCause!1085 call!339228))))

(declare-fun lt!2005577 () Unit!146398)

(declare-fun Unit!146429 () Unit!146398)

(assert (=> d!1571406 (= lt!2005577 Unit!146429)))

(assert (=> d!1571406 (= (getSuffix!2886 lt!2004660 lt!2004939) call!339233)))

(declare-fun lt!2005578 () Unit!146398)

(declare-fun lt!2005559 () Unit!146398)

(assert (=> d!1571406 (= lt!2005578 lt!2005559)))

(declare-fun lt!2005576 () List!56527)

(assert (=> d!1571406 (= call!339233 lt!2005576)))

(assert (=> d!1571406 (= lt!2005559 (lemmaSamePrefixThenSameSuffix!2302 lt!2004939 call!339233 lt!2004939 lt!2005576 lt!2004660))))

(assert (=> d!1571406 (= lt!2005576 (getSuffix!2886 lt!2004660 lt!2004939))))

(declare-fun lt!2005582 () Unit!146398)

(declare-fun lt!2005571 () Unit!146398)

(assert (=> d!1571406 (= lt!2005582 lt!2005571)))

(assert (=> d!1571406 (isPrefix!4894 lt!2004939 (++!12243 lt!2004939 call!339233))))

(assert (=> d!1571406 (= lt!2005571 (lemmaConcatTwoListThenFirstIsPrefix!3122 lt!2004939 call!339233))))

(assert (=> d!1571406 (validRegex!5882 call!339228)))

(assert (=> d!1571406 (= (findLongestMatchInner!1752 call!339228 lt!2004939 (+ (size!37138 Nil!56403) 1) call!339233 lt!2004660 (size!37138 lt!2004660)) lt!2005568)))

(assert (= (and d!1571406 c!831553) b!4892657))

(assert (= (and d!1571406 (not c!831553)) b!4892656))

(assert (= (and b!4892656 c!831550) b!4892652))

(assert (= (and b!4892656 (not c!831550)) b!4892651))

(assert (= (and b!4892652 c!831551) b!4892648))

(assert (= (and b!4892652 (not c!831551)) b!4892650))

(assert (= (and b!4892651 c!831549) b!4892653))

(assert (= (and b!4892651 (not c!831549)) b!4892647))

(assert (= (and b!4892651 c!831548) b!4892658))

(assert (= (and b!4892651 (not c!831548)) b!4892654))

(assert (= (and b!4892658 c!831552) b!4892659))

(assert (= (and b!4892658 (not c!831552)) b!4892660))

(assert (= (or b!4892658 b!4892654) bm!339336))

(assert (= (or b!4892658 b!4892654) bm!339337))

(assert (= (or b!4892658 b!4892654) bm!339342))

(assert (= (or b!4892658 b!4892654) bm!339341))

(assert (= (or b!4892652 b!4892651) bm!339339))

(assert (= (or b!4892652 b!4892653) bm!339340))

(assert (= (or b!4892652 b!4892653) bm!339343))

(assert (= (or b!4892652 b!4892653) bm!339338))

(assert (= (and d!1571406 res!2089618) b!4892649))

(assert (= (and b!4892649 (not res!2089619)) b!4892655))

(assert (=> bm!339341 m!5894318))

(declare-fun m!5897240 () Bool)

(assert (=> bm!339341 m!5897240))

(declare-fun m!5897242 () Bool)

(assert (=> d!1571406 m!5897242))

(declare-fun m!5897244 () Bool)

(assert (=> d!1571406 m!5897244))

(declare-fun m!5897246 () Bool)

(assert (=> d!1571406 m!5897246))

(declare-fun m!5897248 () Bool)

(assert (=> d!1571406 m!5897248))

(declare-fun m!5897250 () Bool)

(assert (=> d!1571406 m!5897250))

(declare-fun m!5897252 () Bool)

(assert (=> d!1571406 m!5897252))

(declare-fun m!5897254 () Bool)

(assert (=> d!1571406 m!5897254))

(assert (=> d!1571406 m!5897244))

(declare-fun m!5897256 () Bool)

(assert (=> d!1571406 m!5897256))

(declare-fun m!5897258 () Bool)

(assert (=> b!4892658 m!5897258))

(declare-fun m!5897260 () Bool)

(assert (=> bm!339342 m!5897260))

(assert (=> bm!339340 m!5894812))

(assert (=> bm!339338 m!5894814))

(declare-fun m!5897262 () Bool)

(assert (=> b!4892655 m!5897262))

(declare-fun m!5897264 () Bool)

(assert (=> b!4892655 m!5897264))

(declare-fun m!5897266 () Bool)

(assert (=> bm!339336 m!5897266))

(declare-fun m!5897268 () Bool)

(assert (=> b!4892649 m!5897268))

(declare-fun m!5897270 () Bool)

(assert (=> bm!339337 m!5897270))

(assert (=> b!4892651 m!5897264))

(declare-fun m!5897272 () Bool)

(assert (=> b!4892651 m!5897272))

(assert (=> b!4892651 m!5897250))

(declare-fun m!5897274 () Bool)

(assert (=> b!4892651 m!5897274))

(declare-fun m!5897276 () Bool)

(assert (=> b!4892651 m!5897276))

(declare-fun m!5897278 () Bool)

(assert (=> b!4892651 m!5897278))

(declare-fun m!5897280 () Bool)

(assert (=> b!4892651 m!5897280))

(assert (=> b!4892651 m!5897280))

(declare-fun m!5897282 () Bool)

(assert (=> b!4892651 m!5897282))

(assert (=> b!4892651 m!5897266))

(assert (=> b!4892651 m!5897270))

(assert (=> b!4892651 m!5897278))

(declare-fun m!5897284 () Bool)

(assert (=> b!4892651 m!5897284))

(assert (=> b!4892651 m!5897250))

(assert (=> b!4892651 m!5894318))

(declare-fun m!5897286 () Bool)

(assert (=> b!4892651 m!5897286))

(declare-fun m!5897288 () Bool)

(assert (=> b!4892651 m!5897288))

(declare-fun m!5897290 () Bool)

(assert (=> bm!339339 m!5897290))

(declare-fun m!5897292 () Bool)

(assert (=> bm!339343 m!5897292))

(assert (=> bm!339228 d!1571406))

(declare-fun bs!1175974 () Bool)

(declare-fun d!1571408 () Bool)

(assert (= bs!1175974 (and d!1571408 d!1570510)))

(declare-fun lambda!244011 () Int)

(assert (=> bs!1175974 (= lambda!244011 lambda!243978)))

(declare-fun bs!1175975 () Bool)

(assert (= bs!1175975 (and d!1571408 d!1570550)))

(assert (=> bs!1175975 (= lambda!244011 lambda!243979)))

(assert (=> d!1571408 true))

(declare-fun lt!2005584 () Bool)

(assert (=> d!1571408 (= lt!2005584 (forall!13090 (t!365275 (t!365275 rulesArg!165)) lambda!244011))))

(declare-fun e!3058667 () Bool)

(assert (=> d!1571408 (= lt!2005584 e!3058667)))

(declare-fun res!2089620 () Bool)

(assert (=> d!1571408 (=> res!2089620 e!3058667)))

(assert (=> d!1571408 (= res!2089620 (not ((_ is Cons!56405) (t!365275 (t!365275 rulesArg!165)))))))

(assert (=> d!1571408 (= (rulesValidInductive!3153 thiss!14805 (t!365275 (t!365275 rulesArg!165))) lt!2005584)))

(declare-fun b!4892661 () Bool)

(declare-fun e!3058668 () Bool)

(assert (=> b!4892661 (= e!3058667 e!3058668)))

(declare-fun res!2089621 () Bool)

(assert (=> b!4892661 (=> (not res!2089621) (not e!3058668))))

(assert (=> b!4892661 (= res!2089621 (ruleValid!3671 thiss!14805 (h!62853 (t!365275 (t!365275 rulesArg!165)))))))

(declare-fun b!4892662 () Bool)

(assert (=> b!4892662 (= e!3058668 (rulesValidInductive!3153 thiss!14805 (t!365275 (t!365275 (t!365275 rulesArg!165)))))))

(assert (= (and d!1571408 (not res!2089620)) b!4892661))

(assert (= (and b!4892661 res!2089621) b!4892662))

(declare-fun m!5897294 () Bool)

(assert (=> d!1571408 m!5897294))

(declare-fun m!5897296 () Bool)

(assert (=> b!4892661 m!5897296))

(declare-fun m!5897298 () Bool)

(assert (=> b!4892662 m!5897298))

(assert (=> b!4891074 d!1571408))

(declare-fun d!1571410 () Bool)

(declare-fun lt!2005585 () Bool)

(assert (=> d!1571410 (= lt!2005585 (select (content!10016 (t!365275 rulesArg!165)) (rule!11358 (_1!33526 (get!19478 lt!2005117)))))))

(declare-fun e!3058670 () Bool)

(assert (=> d!1571410 (= lt!2005585 e!3058670)))

(declare-fun res!2089622 () Bool)

(assert (=> d!1571410 (=> (not res!2089622) (not e!3058670))))

(assert (=> d!1571410 (= res!2089622 ((_ is Cons!56405) (t!365275 rulesArg!165)))))

(assert (=> d!1571410 (= (contains!19437 (t!365275 rulesArg!165) (rule!11358 (_1!33526 (get!19478 lt!2005117)))) lt!2005585)))

(declare-fun b!4892663 () Bool)

(declare-fun e!3058669 () Bool)

(assert (=> b!4892663 (= e!3058670 e!3058669)))

(declare-fun res!2089623 () Bool)

(assert (=> b!4892663 (=> res!2089623 e!3058669)))

(assert (=> b!4892663 (= res!2089623 (= (h!62853 (t!365275 rulesArg!165)) (rule!11358 (_1!33526 (get!19478 lt!2005117)))))))

(declare-fun b!4892664 () Bool)

(assert (=> b!4892664 (= e!3058669 (contains!19437 (t!365275 (t!365275 rulesArg!165)) (rule!11358 (_1!33526 (get!19478 lt!2005117)))))))

(assert (= (and d!1571410 res!2089622) b!4892663))

(assert (= (and b!4892663 (not res!2089623)) b!4892664))

(declare-fun m!5897300 () Bool)

(assert (=> d!1571410 m!5897300))

(declare-fun m!5897302 () Bool)

(assert (=> d!1571410 m!5897302))

(declare-fun m!5897304 () Bool)

(assert (=> b!4892664 m!5897304))

(assert (=> b!4891648 d!1571410))

(assert (=> b!4891648 d!1571396))

(declare-fun d!1571412 () Bool)

(declare-fun lt!2005586 () Int)

(assert (=> d!1571412 (>= lt!2005586 0)))

(declare-fun e!3058671 () Int)

(assert (=> d!1571412 (= lt!2005586 e!3058671)))

(declare-fun c!831554 () Bool)

(assert (=> d!1571412 (= c!831554 ((_ is Nil!56403) (_2!33526 (get!19478 lt!2004762))))))

(assert (=> d!1571412 (= (size!37138 (_2!33526 (get!19478 lt!2004762))) lt!2005586)))

(declare-fun b!4892665 () Bool)

(assert (=> b!4892665 (= e!3058671 0)))

(declare-fun b!4892666 () Bool)

(assert (=> b!4892666 (= e!3058671 (+ 1 (size!37138 (t!365273 (_2!33526 (get!19478 lt!2004762))))))))

(assert (= (and d!1571412 c!831554) b!4892665))

(assert (= (and d!1571412 (not c!831554)) b!4892666))

(declare-fun m!5897306 () Bool)

(assert (=> b!4892666 m!5897306))

(assert (=> b!4891123 d!1571412))

(assert (=> b!4891123 d!1571404))

(assert (=> b!4891123 d!1570684))

(declare-fun d!1571414 () Bool)

(assert (=> d!1571414 (= (isEmpty!30258 lt!2005117) (not ((_ is Some!14025) lt!2005117)))))

(assert (=> d!1570788 d!1571414))

(assert (=> d!1570788 d!1570498))

(assert (=> d!1570788 d!1570500))

(assert (=> d!1570788 d!1570550))

(assert (=> d!1570586 d!1570786))

(declare-fun d!1571416 () Bool)

(declare-fun lt!2005587 () Int)

(assert (=> d!1571416 (>= lt!2005587 0)))

(declare-fun e!3058672 () Int)

(assert (=> d!1571416 (= lt!2005587 e!3058672)))

(declare-fun c!831555 () Bool)

(assert (=> d!1571416 (= c!831555 ((_ is Nil!56403) lt!2004978))))

(assert (=> d!1571416 (= (size!37138 lt!2004978) lt!2005587)))

(declare-fun b!4892667 () Bool)

(assert (=> b!4892667 (= e!3058672 0)))

(declare-fun b!4892668 () Bool)

(assert (=> b!4892668 (= e!3058672 (+ 1 (size!37138 (t!365273 lt!2004978))))))

(assert (= (and d!1571416 c!831555) b!4892667))

(assert (= (and d!1571416 (not c!831555)) b!4892668))

(declare-fun m!5897308 () Bool)

(assert (=> b!4892668 m!5897308))

(assert (=> b!4891377 d!1571416))

(declare-fun d!1571418 () Bool)

(declare-fun lt!2005588 () Int)

(assert (=> d!1571418 (>= lt!2005588 0)))

(declare-fun e!3058673 () Int)

(assert (=> d!1571418 (= lt!2005588 e!3058673)))

(declare-fun c!831556 () Bool)

(assert (=> d!1571418 (= c!831556 ((_ is Nil!56403) (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))))))

(assert (=> d!1571418 (= (size!37138 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))) lt!2005588)))

(declare-fun b!4892669 () Bool)

(assert (=> b!4892669 (= e!3058673 0)))

(declare-fun b!4892670 () Bool)

(assert (=> b!4892670 (= e!3058673 (+ 1 (size!37138 (t!365273 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))))))))

(assert (= (and d!1571418 c!831556) b!4892669))

(assert (= (and d!1571418 (not c!831556)) b!4892670))

(declare-fun m!5897310 () Bool)

(assert (=> b!4892670 m!5897310))

(assert (=> b!4891377 d!1571418))

(assert (=> b!4891377 d!1570776))

(declare-fun d!1571420 () Bool)

(assert (=> d!1571420 (= (list!17722 (_1!33527 lt!2005000)) (list!17724 (c!831175 (_1!33527 lt!2005000))))))

(declare-fun bs!1175976 () Bool)

(assert (= bs!1175976 d!1571420))

(declare-fun m!5897312 () Bool)

(assert (=> bs!1175976 m!5897312))

(assert (=> d!1570678 d!1571420))

(declare-fun d!1571422 () Bool)

(declare-fun res!2089626 () tuple2!60448)

(assert (=> d!1571422 (= (tuple2!60451 (list!17722 (_1!33527 res!2089626)) (list!17722 (_2!33527 res!2089626))) (findLongestMatch!1646 (regex!8174 (h!62853 rulesArg!165)) (list!17722 input!1236)))))

(declare-fun e!3058679 () Bool)

(declare-fun e!3058678 () Bool)

(assert (=> d!1571422 (and (inv!72679 (_1!33527 res!2089626)) e!3058679 (inv!72679 (_2!33527 res!2089626)) e!3058678)))

(assert (=> d!1571422 (= (choose!35702 (regex!8174 (h!62853 rulesArg!165)) input!1236) res!2089626)))

(declare-fun b!4892675 () Bool)

(declare-fun tp!1377018 () Bool)

(assert (=> b!4892675 (= e!3058679 (and (inv!72677 (c!831175 (_1!33527 res!2089626))) tp!1377018))))

(declare-fun b!4892676 () Bool)

(declare-fun tp!1377017 () Bool)

(assert (=> b!4892676 (= e!3058678 (and (inv!72677 (c!831175 (_2!33527 res!2089626))) tp!1377017))))

(assert (= d!1571422 b!4892675))

(assert (= d!1571422 b!4892676))

(declare-fun m!5897314 () Bool)

(assert (=> d!1571422 m!5897314))

(assert (=> d!1571422 m!5894176))

(declare-fun m!5897316 () Bool)

(assert (=> d!1571422 m!5897316))

(assert (=> d!1571422 m!5894176))

(assert (=> d!1571422 m!5894904))

(declare-fun m!5897318 () Bool)

(assert (=> d!1571422 m!5897318))

(declare-fun m!5897320 () Bool)

(assert (=> d!1571422 m!5897320))

(declare-fun m!5897322 () Bool)

(assert (=> b!4892675 m!5897322))

(declare-fun m!5897324 () Bool)

(assert (=> b!4892676 m!5897324))

(assert (=> d!1570678 d!1571422))

(declare-fun d!1571424 () Bool)

(declare-fun lt!2005606 () tuple2!60450)

(assert (=> d!1571424 (= (++!12243 (_1!33528 lt!2005606) (_2!33528 lt!2005606)) (list!17722 input!1236))))

(declare-fun sizeTr!340 (List!56527 Int) Int)

(assert (=> d!1571424 (= lt!2005606 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 0 (list!17722 input!1236) (list!17722 input!1236) (sizeTr!340 (list!17722 input!1236) 0)))))

(declare-fun lt!2005609 () Unit!146398)

(declare-fun lt!2005607 () Unit!146398)

(assert (=> d!1571424 (= lt!2005609 lt!2005607)))

(declare-fun lt!2005608 () List!56527)

(declare-fun lt!2005605 () Int)

(assert (=> d!1571424 (= (sizeTr!340 lt!2005608 lt!2005605) (+ (size!37138 lt!2005608) lt!2005605))))

(declare-fun lemmaSizeTrEqualsSize!339 (List!56527 Int) Unit!146398)

(assert (=> d!1571424 (= lt!2005607 (lemmaSizeTrEqualsSize!339 lt!2005608 lt!2005605))))

(assert (=> d!1571424 (= lt!2005605 0)))

(assert (=> d!1571424 (= lt!2005608 Nil!56403)))

(declare-fun lt!2005612 () Unit!146398)

(declare-fun lt!2005611 () Unit!146398)

(assert (=> d!1571424 (= lt!2005612 lt!2005611)))

(declare-fun lt!2005610 () Int)

(assert (=> d!1571424 (= (sizeTr!340 (list!17722 input!1236) lt!2005610) (+ (size!37138 (list!17722 input!1236)) lt!2005610))))

(assert (=> d!1571424 (= lt!2005611 (lemmaSizeTrEqualsSize!339 (list!17722 input!1236) lt!2005610))))

(assert (=> d!1571424 (= lt!2005610 0)))

(assert (=> d!1571424 (validRegex!5882 (regex!8174 (h!62853 rulesArg!165)))))

(assert (=> d!1571424 (= (findLongestMatch!1646 (regex!8174 (h!62853 rulesArg!165)) (list!17722 input!1236)) lt!2005606)))

(declare-fun bs!1175977 () Bool)

(assert (= bs!1175977 d!1571424))

(assert (=> bs!1175977 m!5894176))

(assert (=> bs!1175977 m!5894176))

(declare-fun m!5897326 () Bool)

(assert (=> bs!1175977 m!5897326))

(declare-fun m!5897328 () Bool)

(assert (=> bs!1175977 m!5897328))

(declare-fun m!5897330 () Bool)

(assert (=> bs!1175977 m!5897330))

(declare-fun m!5897332 () Bool)

(assert (=> bs!1175977 m!5897332))

(assert (=> bs!1175977 m!5894176))

(declare-fun m!5897334 () Bool)

(assert (=> bs!1175977 m!5897334))

(assert (=> bs!1175977 m!5894684))

(assert (=> bs!1175977 m!5894176))

(assert (=> bs!1175977 m!5897326))

(declare-fun m!5897336 () Bool)

(assert (=> bs!1175977 m!5897336))

(declare-fun m!5897338 () Bool)

(assert (=> bs!1175977 m!5897338))

(assert (=> bs!1175977 m!5894176))

(assert (=> bs!1175977 m!5894666))

(assert (=> bs!1175977 m!5894176))

(declare-fun m!5897340 () Bool)

(assert (=> bs!1175977 m!5897340))

(assert (=> d!1570678 d!1571424))

(declare-fun d!1571426 () Bool)

(assert (=> d!1571426 (= (list!17722 (_2!33527 lt!2005000)) (list!17724 (c!831175 (_2!33527 lt!2005000))))))

(declare-fun bs!1175978 () Bool)

(assert (= bs!1175978 d!1571426))

(declare-fun m!5897342 () Bool)

(assert (=> bs!1175978 m!5897342))

(assert (=> d!1570678 d!1571426))

(declare-fun b!4892695 () Bool)

(declare-fun res!2089639 () Bool)

(declare-fun e!3058697 () Bool)

(assert (=> b!4892695 (=> (not res!2089639) (not e!3058697))))

(declare-fun call!339355 () Bool)

(assert (=> b!4892695 (= res!2089639 call!339355)))

(declare-fun e!3058698 () Bool)

(assert (=> b!4892695 (= e!3058698 e!3058697)))

(declare-fun b!4892696 () Bool)

(declare-fun e!3058694 () Bool)

(declare-fun call!339357 () Bool)

(assert (=> b!4892696 (= e!3058694 call!339357)))

(declare-fun b!4892697 () Bool)

(declare-fun res!2089638 () Bool)

(declare-fun e!3058700 () Bool)

(assert (=> b!4892697 (=> res!2089638 e!3058700)))

(assert (=> b!4892697 (= res!2089638 (not ((_ is Concat!21734) (regex!8174 (h!62853 rulesArg!165)))))))

(assert (=> b!4892697 (= e!3058698 e!3058700)))

(declare-fun bm!339350 () Bool)

(declare-fun c!831561 () Bool)

(declare-fun c!831562 () Bool)

(assert (=> bm!339350 (= call!339357 (validRegex!5882 (ite c!831562 (reg!13578 (regex!8174 (h!62853 rulesArg!165))) (ite c!831561 (regTwo!27011 (regex!8174 (h!62853 rulesArg!165))) (regOne!27010 (regex!8174 (h!62853 rulesArg!165)))))))))

(declare-fun bm!339351 () Bool)

(declare-fun call!339356 () Bool)

(assert (=> bm!339351 (= call!339356 call!339357)))

(declare-fun b!4892699 () Bool)

(declare-fun e!3058695 () Bool)

(assert (=> b!4892699 (= e!3058695 e!3058694)))

(declare-fun res!2089640 () Bool)

(assert (=> b!4892699 (= res!2089640 (not (nullable!4555 (reg!13578 (regex!8174 (h!62853 rulesArg!165))))))))

(assert (=> b!4892699 (=> (not res!2089640) (not e!3058694))))

(declare-fun bm!339352 () Bool)

(assert (=> bm!339352 (= call!339355 (validRegex!5882 (ite c!831561 (regOne!27011 (regex!8174 (h!62853 rulesArg!165))) (regTwo!27010 (regex!8174 (h!62853 rulesArg!165))))))))

(declare-fun b!4892700 () Bool)

(declare-fun e!3058699 () Bool)

(assert (=> b!4892700 (= e!3058699 e!3058695)))

(assert (=> b!4892700 (= c!831562 ((_ is Star!13249) (regex!8174 (h!62853 rulesArg!165))))))

(declare-fun b!4892701 () Bool)

(assert (=> b!4892701 (= e!3058695 e!3058698)))

(assert (=> b!4892701 (= c!831561 ((_ is Union!13249) (regex!8174 (h!62853 rulesArg!165))))))

(declare-fun b!4892698 () Bool)

(assert (=> b!4892698 (= e!3058697 call!339356)))

(declare-fun d!1571428 () Bool)

(declare-fun res!2089641 () Bool)

(assert (=> d!1571428 (=> res!2089641 e!3058699)))

(assert (=> d!1571428 (= res!2089641 ((_ is ElementMatch!13249) (regex!8174 (h!62853 rulesArg!165))))))

(assert (=> d!1571428 (= (validRegex!5882 (regex!8174 (h!62853 rulesArg!165))) e!3058699)))

(declare-fun b!4892702 () Bool)

(declare-fun e!3058696 () Bool)

(assert (=> b!4892702 (= e!3058700 e!3058696)))

(declare-fun res!2089637 () Bool)

(assert (=> b!4892702 (=> (not res!2089637) (not e!3058696))))

(assert (=> b!4892702 (= res!2089637 call!339356)))

(declare-fun b!4892703 () Bool)

(assert (=> b!4892703 (= e!3058696 call!339355)))

(assert (= (and d!1571428 (not res!2089641)) b!4892700))

(assert (= (and b!4892700 c!831562) b!4892699))

(assert (= (and b!4892700 (not c!831562)) b!4892701))

(assert (= (and b!4892699 res!2089640) b!4892696))

(assert (= (and b!4892701 c!831561) b!4892695))

(assert (= (and b!4892701 (not c!831561)) b!4892697))

(assert (= (and b!4892695 res!2089639) b!4892698))

(assert (= (and b!4892697 (not res!2089638)) b!4892702))

(assert (= (and b!4892702 res!2089637) b!4892703))

(assert (= (or b!4892698 b!4892702) bm!339351))

(assert (= (or b!4892695 b!4892703) bm!339352))

(assert (= (or b!4892696 bm!339351) bm!339350))

(declare-fun m!5897344 () Bool)

(assert (=> bm!339350 m!5897344))

(declare-fun m!5897346 () Bool)

(assert (=> b!4892699 m!5897346))

(declare-fun m!5897348 () Bool)

(assert (=> bm!339352 m!5897348))

(assert (=> d!1570678 d!1571428))

(assert (=> d!1570678 d!1570502))

(declare-fun d!1571430 () Bool)

(assert (=> d!1571430 (= (list!17722 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (_1!33527 lt!2004658)))) (list!17724 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (_1!33527 lt!2004658))))))))

(declare-fun bs!1175979 () Bool)

(assert (= bs!1175979 d!1571430))

(declare-fun m!5897350 () Bool)

(assert (=> bs!1175979 m!5897350))

(assert (=> bs!1175858 d!1571430))

(assert (=> bs!1175858 d!1570768))

(declare-fun d!1571432 () Bool)

(declare-fun nullableFct!1238 (Regex!13249) Bool)

(assert (=> d!1571432 (= (nullable!4555 (regex!8174 (h!62853 rulesArg!165))) (nullableFct!1238 (regex!8174 (h!62853 rulesArg!165))))))

(declare-fun bs!1175980 () Bool)

(assert (= bs!1175980 d!1571432))

(declare-fun m!5897352 () Bool)

(assert (=> bs!1175980 m!5897352))

(assert (=> b!4891403 d!1571432))

(declare-fun b!4892706 () Bool)

(declare-fun res!2089643 () Bool)

(declare-fun e!3058702 () Bool)

(assert (=> b!4892706 (=> (not res!2089643) (not e!3058702))))

(declare-fun lt!2005613 () List!56527)

(assert (=> b!4892706 (= res!2089643 (= (size!37138 lt!2005613) (+ (size!37138 (list!17724 (left!40975 (c!831175 input!1236)))) (size!37138 (list!17724 (right!41305 (c!831175 input!1236)))))))))

(declare-fun b!4892707 () Bool)

(assert (=> b!4892707 (= e!3058702 (or (not (= (list!17724 (right!41305 (c!831175 input!1236))) Nil!56403)) (= lt!2005613 (list!17724 (left!40975 (c!831175 input!1236))))))))

(declare-fun b!4892704 () Bool)

(declare-fun e!3058701 () List!56527)

(assert (=> b!4892704 (= e!3058701 (list!17724 (right!41305 (c!831175 input!1236))))))

(declare-fun d!1571434 () Bool)

(assert (=> d!1571434 e!3058702))

(declare-fun res!2089642 () Bool)

(assert (=> d!1571434 (=> (not res!2089642) (not e!3058702))))

(assert (=> d!1571434 (= res!2089642 (= (content!10015 lt!2005613) ((_ map or) (content!10015 (list!17724 (left!40975 (c!831175 input!1236)))) (content!10015 (list!17724 (right!41305 (c!831175 input!1236)))))))))

(assert (=> d!1571434 (= lt!2005613 e!3058701)))

(declare-fun c!831563 () Bool)

(assert (=> d!1571434 (= c!831563 ((_ is Nil!56403) (list!17724 (left!40975 (c!831175 input!1236)))))))

(assert (=> d!1571434 (= (++!12243 (list!17724 (left!40975 (c!831175 input!1236))) (list!17724 (right!41305 (c!831175 input!1236)))) lt!2005613)))

(declare-fun b!4892705 () Bool)

(assert (=> b!4892705 (= e!3058701 (Cons!56403 (h!62851 (list!17724 (left!40975 (c!831175 input!1236)))) (++!12243 (t!365273 (list!17724 (left!40975 (c!831175 input!1236)))) (list!17724 (right!41305 (c!831175 input!1236))))))))

(assert (= (and d!1571434 c!831563) b!4892704))

(assert (= (and d!1571434 (not c!831563)) b!4892705))

(assert (= (and d!1571434 res!2089642) b!4892706))

(assert (= (and b!4892706 res!2089643) b!4892707))

(declare-fun m!5897354 () Bool)

(assert (=> b!4892706 m!5897354))

(assert (=> b!4892706 m!5894538))

(declare-fun m!5897356 () Bool)

(assert (=> b!4892706 m!5897356))

(assert (=> b!4892706 m!5894540))

(declare-fun m!5897358 () Bool)

(assert (=> b!4892706 m!5897358))

(declare-fun m!5897360 () Bool)

(assert (=> d!1571434 m!5897360))

(assert (=> d!1571434 m!5894538))

(declare-fun m!5897362 () Bool)

(assert (=> d!1571434 m!5897362))

(assert (=> d!1571434 m!5894540))

(declare-fun m!5897364 () Bool)

(assert (=> d!1571434 m!5897364))

(assert (=> b!4892705 m!5894540))

(declare-fun m!5897366 () Bool)

(assert (=> b!4892705 m!5897366))

(assert (=> b!4891072 d!1571434))

(declare-fun b!4892709 () Bool)

(declare-fun e!3058703 () List!56527)

(declare-fun e!3058704 () List!56527)

(assert (=> b!4892709 (= e!3058703 e!3058704)))

(declare-fun c!831565 () Bool)

(assert (=> b!4892709 (= c!831565 ((_ is Leaf!24546) (left!40975 (c!831175 input!1236))))))

(declare-fun d!1571436 () Bool)

(declare-fun c!831564 () Bool)

(assert (=> d!1571436 (= c!831564 ((_ is Empty!14742) (left!40975 (c!831175 input!1236))))))

(assert (=> d!1571436 (= (list!17724 (left!40975 (c!831175 input!1236))) e!3058703)))

(declare-fun b!4892710 () Bool)

(assert (=> b!4892710 (= e!3058704 (list!17726 (xs!18058 (left!40975 (c!831175 input!1236)))))))

(declare-fun b!4892708 () Bool)

(assert (=> b!4892708 (= e!3058703 Nil!56403)))

(declare-fun b!4892711 () Bool)

(assert (=> b!4892711 (= e!3058704 (++!12243 (list!17724 (left!40975 (left!40975 (c!831175 input!1236)))) (list!17724 (right!41305 (left!40975 (c!831175 input!1236))))))))

(assert (= (and d!1571436 c!831564) b!4892708))

(assert (= (and d!1571436 (not c!831564)) b!4892709))

(assert (= (and b!4892709 c!831565) b!4892710))

(assert (= (and b!4892709 (not c!831565)) b!4892711))

(declare-fun m!5897368 () Bool)

(assert (=> b!4892710 m!5897368))

(declare-fun m!5897370 () Bool)

(assert (=> b!4892711 m!5897370))

(declare-fun m!5897372 () Bool)

(assert (=> b!4892711 m!5897372))

(assert (=> b!4892711 m!5897370))

(assert (=> b!4892711 m!5897372))

(declare-fun m!5897374 () Bool)

(assert (=> b!4892711 m!5897374))

(assert (=> b!4891072 d!1571436))

(declare-fun b!4892713 () Bool)

(declare-fun e!3058705 () List!56527)

(declare-fun e!3058706 () List!56527)

(assert (=> b!4892713 (= e!3058705 e!3058706)))

(declare-fun c!831567 () Bool)

(assert (=> b!4892713 (= c!831567 ((_ is Leaf!24546) (right!41305 (c!831175 input!1236))))))

(declare-fun d!1571438 () Bool)

(declare-fun c!831566 () Bool)

(assert (=> d!1571438 (= c!831566 ((_ is Empty!14742) (right!41305 (c!831175 input!1236))))))

(assert (=> d!1571438 (= (list!17724 (right!41305 (c!831175 input!1236))) e!3058705)))

(declare-fun b!4892714 () Bool)

(assert (=> b!4892714 (= e!3058706 (list!17726 (xs!18058 (right!41305 (c!831175 input!1236)))))))

(declare-fun b!4892712 () Bool)

(assert (=> b!4892712 (= e!3058705 Nil!56403)))

(declare-fun b!4892715 () Bool)

(assert (=> b!4892715 (= e!3058706 (++!12243 (list!17724 (left!40975 (right!41305 (c!831175 input!1236)))) (list!17724 (right!41305 (right!41305 (c!831175 input!1236))))))))

(assert (= (and d!1571438 c!831566) b!4892712))

(assert (= (and d!1571438 (not c!831566)) b!4892713))

(assert (= (and b!4892713 c!831567) b!4892714))

(assert (= (and b!4892713 (not c!831567)) b!4892715))

(declare-fun m!5897376 () Bool)

(assert (=> b!4892714 m!5897376))

(declare-fun m!5897378 () Bool)

(assert (=> b!4892715 m!5897378))

(declare-fun m!5897380 () Bool)

(assert (=> b!4892715 m!5897380))

(assert (=> b!4892715 m!5897378))

(assert (=> b!4892715 m!5897380))

(declare-fun m!5897382 () Bool)

(assert (=> b!4892715 m!5897382))

(assert (=> b!4891072 d!1571438))

(declare-fun b!4892716 () Bool)

(declare-fun e!3058712 () Bool)

(assert (=> b!4892716 (= e!3058712 (= (head!10455 (tail!9601 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672)))))) (c!831176 (derivativeStep!3876 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))) (head!10455 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672)))))))))))

(declare-fun b!4892717 () Bool)

(declare-fun e!3058713 () Bool)

(declare-fun lt!2005614 () Bool)

(assert (=> b!4892717 (= e!3058713 (not lt!2005614))))

(declare-fun b!4892718 () Bool)

(declare-fun res!2089651 () Bool)

(declare-fun e!3058707 () Bool)

(assert (=> b!4892718 (=> res!2089651 e!3058707)))

(assert (=> b!4892718 (= res!2089651 (not (isEmpty!30257 (tail!9601 (tail!9601 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672)))))))))))

(declare-fun b!4892719 () Bool)

(declare-fun e!3058708 () Bool)

(assert (=> b!4892719 (= e!3058708 e!3058707)))

(declare-fun res!2089648 () Bool)

(assert (=> b!4892719 (=> res!2089648 e!3058707)))

(declare-fun call!339358 () Bool)

(assert (=> b!4892719 (= res!2089648 call!339358)))

(declare-fun b!4892720 () Bool)

(declare-fun res!2089644 () Bool)

(declare-fun e!3058711 () Bool)

(assert (=> b!4892720 (=> res!2089644 e!3058711)))

(assert (=> b!4892720 (= res!2089644 (not ((_ is ElementMatch!13249) (derivativeStep!3876 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))) (head!10455 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672)))))))))))

(assert (=> b!4892720 (= e!3058713 e!3058711)))

(declare-fun b!4892721 () Bool)

(assert (=> b!4892721 (= e!3058711 e!3058708)))

(declare-fun res!2089650 () Bool)

(assert (=> b!4892721 (=> (not res!2089650) (not e!3058708))))

(assert (=> b!4892721 (= res!2089650 (not lt!2005614))))

(declare-fun b!4892722 () Bool)

(declare-fun e!3058710 () Bool)

(assert (=> b!4892722 (= e!3058710 (matchR!6530 (derivativeStep!3876 (derivativeStep!3876 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))) (head!10455 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672)))))) (head!10455 (tail!9601 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))))) (tail!9601 (tail!9601 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))))))))

(declare-fun b!4892724 () Bool)

(declare-fun e!3058709 () Bool)

(assert (=> b!4892724 (= e!3058709 e!3058713)))

(declare-fun c!831568 () Bool)

(assert (=> b!4892724 (= c!831568 ((_ is EmptyLang!13249) (derivativeStep!3876 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))) (head!10455 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))))))))

(declare-fun b!4892725 () Bool)

(declare-fun res!2089647 () Bool)

(assert (=> b!4892725 (=> res!2089647 e!3058711)))

(assert (=> b!4892725 (= res!2089647 e!3058712)))

(declare-fun res!2089646 () Bool)

(assert (=> b!4892725 (=> (not res!2089646) (not e!3058712))))

(assert (=> b!4892725 (= res!2089646 lt!2005614)))

(declare-fun b!4892726 () Bool)

(assert (=> b!4892726 (= e!3058709 (= lt!2005614 call!339358))))

(declare-fun b!4892727 () Bool)

(assert (=> b!4892727 (= e!3058707 (not (= (head!10455 (tail!9601 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672)))))) (c!831176 (derivativeStep!3876 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))) (head!10455 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))))))))))

(declare-fun b!4892728 () Bool)

(declare-fun res!2089649 () Bool)

(assert (=> b!4892728 (=> (not res!2089649) (not e!3058712))))

(assert (=> b!4892728 (= res!2089649 (not call!339358))))

(declare-fun d!1571440 () Bool)

(assert (=> d!1571440 e!3058709))

(declare-fun c!831570 () Bool)

(assert (=> d!1571440 (= c!831570 ((_ is EmptyExpr!13249) (derivativeStep!3876 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))) (head!10455 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))))))))

(assert (=> d!1571440 (= lt!2005614 e!3058710)))

(declare-fun c!831569 () Bool)

(assert (=> d!1571440 (= c!831569 (isEmpty!30257 (tail!9601 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672)))))))))

(assert (=> d!1571440 (validRegex!5882 (derivativeStep!3876 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))) (head!10455 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672)))))))))

(assert (=> d!1571440 (= (matchR!6530 (derivativeStep!3876 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))) (head!10455 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672)))))) (tail!9601 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672)))))) lt!2005614)))

(declare-fun b!4892723 () Bool)

(assert (=> b!4892723 (= e!3058710 (nullable!4555 (derivativeStep!3876 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))) (head!10455 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))))))))

(declare-fun b!4892729 () Bool)

(declare-fun res!2089645 () Bool)

(assert (=> b!4892729 (=> (not res!2089645) (not e!3058712))))

(assert (=> b!4892729 (= res!2089645 (isEmpty!30257 (tail!9601 (tail!9601 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))))))))

(declare-fun bm!339353 () Bool)

(assert (=> bm!339353 (= call!339358 (isEmpty!30257 (tail!9601 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672)))))))))

(assert (= (and d!1571440 c!831569) b!4892723))

(assert (= (and d!1571440 (not c!831569)) b!4892722))

(assert (= (and d!1571440 c!831570) b!4892726))

(assert (= (and d!1571440 (not c!831570)) b!4892724))

(assert (= (and b!4892724 c!831568) b!4892717))

(assert (= (and b!4892724 (not c!831568)) b!4892720))

(assert (= (and b!4892720 (not res!2089644)) b!4892725))

(assert (= (and b!4892725 res!2089646) b!4892728))

(assert (= (and b!4892728 res!2089649) b!4892729))

(assert (= (and b!4892729 res!2089645) b!4892716))

(assert (= (and b!4892725 (not res!2089647)) b!4892721))

(assert (= (and b!4892721 res!2089650) b!4892719))

(assert (= (and b!4892719 (not res!2089648)) b!4892718))

(assert (= (and b!4892718 (not res!2089651)) b!4892727))

(assert (= (or b!4892726 b!4892719 b!4892728) bm!339353))

(assert (=> b!4892716 m!5894852))

(declare-fun m!5897384 () Bool)

(assert (=> b!4892716 m!5897384))

(assert (=> b!4892727 m!5894852))

(assert (=> b!4892727 m!5897384))

(assert (=> b!4892722 m!5894852))

(assert (=> b!4892722 m!5897384))

(assert (=> b!4892722 m!5894850))

(assert (=> b!4892722 m!5897384))

(declare-fun m!5897386 () Bool)

(assert (=> b!4892722 m!5897386))

(assert (=> b!4892722 m!5894852))

(declare-fun m!5897388 () Bool)

(assert (=> b!4892722 m!5897388))

(assert (=> b!4892722 m!5897386))

(assert (=> b!4892722 m!5897388))

(declare-fun m!5897390 () Bool)

(assert (=> b!4892722 m!5897390))

(assert (=> b!4892729 m!5894852))

(assert (=> b!4892729 m!5897388))

(assert (=> b!4892729 m!5897388))

(declare-fun m!5897392 () Bool)

(assert (=> b!4892729 m!5897392))

(assert (=> b!4892718 m!5894852))

(assert (=> b!4892718 m!5897388))

(assert (=> b!4892718 m!5897388))

(assert (=> b!4892718 m!5897392))

(assert (=> bm!339353 m!5894852))

(assert (=> bm!339353 m!5894856))

(assert (=> d!1571440 m!5894852))

(assert (=> d!1571440 m!5894856))

(assert (=> d!1571440 m!5894850))

(declare-fun m!5897394 () Bool)

(assert (=> d!1571440 m!5897394))

(assert (=> b!4892723 m!5894850))

(declare-fun m!5897396 () Bool)

(assert (=> b!4892723 m!5897396))

(assert (=> b!4891336 d!1571440))

(declare-fun b!4892750 () Bool)

(declare-fun e!3058726 () Regex!13249)

(declare-fun e!3058728 () Regex!13249)

(assert (=> b!4892750 (= e!3058726 e!3058728)))

(declare-fun c!831583 () Bool)

(assert (=> b!4892750 (= c!831583 ((_ is Star!13249) (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))))))

(declare-fun c!831584 () Bool)

(declare-fun call!339370 () Regex!13249)

(declare-fun bm!339362 () Bool)

(assert (=> bm!339362 (= call!339370 (derivativeStep!3876 (ite c!831584 (regOne!27011 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) (ite c!831583 (reg!13578 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) (regOne!27010 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))))) (head!10455 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672)))))))))

(declare-fun b!4892751 () Bool)

(declare-fun e!3058725 () Regex!13249)

(declare-fun call!339368 () Regex!13249)

(assert (=> b!4892751 (= e!3058725 (Union!13249 (Concat!21734 call!339368 (regTwo!27010 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))))) EmptyLang!13249))))

(declare-fun b!4892752 () Bool)

(declare-fun call!339367 () Regex!13249)

(assert (=> b!4892752 (= e!3058728 (Concat!21734 call!339367 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))))))

(declare-fun d!1571442 () Bool)

(declare-fun lt!2005617 () Regex!13249)

(assert (=> d!1571442 (validRegex!5882 lt!2005617)))

(declare-fun e!3058724 () Regex!13249)

(assert (=> d!1571442 (= lt!2005617 e!3058724)))

(declare-fun c!831585 () Bool)

(assert (=> d!1571442 (= c!831585 (or ((_ is EmptyExpr!13249) (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) ((_ is EmptyLang!13249) (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))))))))

(assert (=> d!1571442 (validRegex!5882 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))))))

(assert (=> d!1571442 (= (derivativeStep!3876 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))) (head!10455 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672)))))) lt!2005617)))

(declare-fun bm!339363 () Bool)

(assert (=> bm!339363 (= call!339368 call!339367)))

(declare-fun b!4892753 () Bool)

(assert (=> b!4892753 (= e!3058724 EmptyLang!13249)))

(declare-fun bm!339364 () Bool)

(declare-fun call!339369 () Regex!13249)

(assert (=> bm!339364 (= call!339369 (derivativeStep!3876 (ite c!831584 (regTwo!27011 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) (regTwo!27010 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))))) (head!10455 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672)))))))))

(declare-fun b!4892754 () Bool)

(assert (=> b!4892754 (= c!831584 ((_ is Union!13249) (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))))))

(declare-fun e!3058727 () Regex!13249)

(assert (=> b!4892754 (= e!3058727 e!3058726)))

(declare-fun b!4892755 () Bool)

(assert (=> b!4892755 (= e!3058727 (ite (= (head!10455 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))) (c!831176 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))))) EmptyExpr!13249 EmptyLang!13249))))

(declare-fun b!4892756 () Bool)

(assert (=> b!4892756 (= e!3058726 (Union!13249 call!339370 call!339369))))

(declare-fun b!4892757 () Bool)

(assert (=> b!4892757 (= e!3058724 e!3058727)))

(declare-fun c!831582 () Bool)

(assert (=> b!4892757 (= c!831582 ((_ is ElementMatch!13249) (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))))))

(declare-fun b!4892758 () Bool)

(declare-fun c!831581 () Bool)

(assert (=> b!4892758 (= c!831581 (nullable!4555 (regOne!27010 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))))))))

(assert (=> b!4892758 (= e!3058728 e!3058725)))

(declare-fun b!4892759 () Bool)

(assert (=> b!4892759 (= e!3058725 (Union!13249 (Concat!21734 call!339368 (regTwo!27010 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))))) call!339369))))

(declare-fun bm!339365 () Bool)

(assert (=> bm!339365 (= call!339367 call!339370)))

(assert (= (and d!1571442 c!831585) b!4892753))

(assert (= (and d!1571442 (not c!831585)) b!4892757))

(assert (= (and b!4892757 c!831582) b!4892755))

(assert (= (and b!4892757 (not c!831582)) b!4892754))

(assert (= (and b!4892754 c!831584) b!4892756))

(assert (= (and b!4892754 (not c!831584)) b!4892750))

(assert (= (and b!4892750 c!831583) b!4892752))

(assert (= (and b!4892750 (not c!831583)) b!4892758))

(assert (= (and b!4892758 c!831581) b!4892759))

(assert (= (and b!4892758 (not c!831581)) b!4892751))

(assert (= (or b!4892759 b!4892751) bm!339363))

(assert (= (or b!4892752 bm!339363) bm!339365))

(assert (= (or b!4892756 bm!339365) bm!339362))

(assert (= (or b!4892756 b!4892759) bm!339364))

(assert (=> bm!339362 m!5894848))

(declare-fun m!5897398 () Bool)

(assert (=> bm!339362 m!5897398))

(declare-fun m!5897400 () Bool)

(assert (=> d!1571442 m!5897400))

(assert (=> d!1571442 m!5894860))

(assert (=> bm!339364 m!5894848))

(declare-fun m!5897402 () Bool)

(assert (=> bm!339364 m!5897402))

(declare-fun m!5897404 () Bool)

(assert (=> b!4892758 m!5897404))

(assert (=> b!4891336 d!1571442))

(declare-fun d!1571444 () Bool)

(assert (=> d!1571444 (= (head!10455 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))) (h!62851 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))))))

(assert (=> b!4891336 d!1571444))

(declare-fun d!1571446 () Bool)

(assert (=> d!1571446 (= (tail!9601 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))) (t!365273 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))))))

(assert (=> b!4891336 d!1571446))

(declare-fun d!1571448 () Bool)

(declare-fun dynLambda!22634 (Int BalanceConc!28914 BalanceConc!28914) Bool)

(assert (=> d!1571448 (dynLambda!22634 lambda!243997 (_1!33527 lt!2004658) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658))))))

(declare-fun lt!2005620 () Unit!146398)

(declare-fun choose!35710 (Int BalanceConc!28914 BalanceConc!28914) Unit!146398)

(assert (=> d!1571448 (= lt!2005620 (choose!35710 lambda!243997 (_1!33527 lt!2004658) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658)))))))

(assert (=> d!1571448 (Forall2!1267 lambda!243997)))

(assert (=> d!1571448 (= (Forall2of!446 lambda!243997 (_1!33527 lt!2004658) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658)))) lt!2005620)))

(declare-fun b_lambda!194313 () Bool)

(assert (=> (not b_lambda!194313) (not d!1571448)))

(declare-fun bs!1175981 () Bool)

(assert (= bs!1175981 d!1571448))

(assert (=> bs!1175981 m!5894348))

(declare-fun m!5897406 () Bool)

(assert (=> bs!1175981 m!5897406))

(assert (=> bs!1175981 m!5894348))

(declare-fun m!5897408 () Bool)

(assert (=> bs!1175981 m!5897408))

(declare-fun m!5897410 () Bool)

(assert (=> bs!1175981 m!5897410))

(assert (=> d!1570734 d!1571448))

(assert (=> d!1570734 d!1570768))

(assert (=> d!1570734 d!1571376))

(declare-fun d!1571450 () Bool)

(assert (=> d!1571450 (= (isEmpty!30258 lt!2004764) (not ((_ is Some!14025) lt!2004764)))))

(assert (=> d!1570592 d!1571450))

(declare-fun b!4892762 () Bool)

(declare-fun res!2089654 () Bool)

(declare-fun e!3058729 () Bool)

(assert (=> b!4892762 (=> (not res!2089654) (not e!3058729))))

(assert (=> b!4892762 (= res!2089654 (= (head!10455 (list!17722 input!1236)) (head!10455 (list!17722 input!1236))))))

(declare-fun d!1571452 () Bool)

(declare-fun e!3058730 () Bool)

(assert (=> d!1571452 e!3058730))

(declare-fun res!2089653 () Bool)

(assert (=> d!1571452 (=> res!2089653 e!3058730)))

(declare-fun lt!2005621 () Bool)

(assert (=> d!1571452 (= res!2089653 (not lt!2005621))))

(declare-fun e!3058731 () Bool)

(assert (=> d!1571452 (= lt!2005621 e!3058731)))

(declare-fun res!2089655 () Bool)

(assert (=> d!1571452 (=> res!2089655 e!3058731)))

(assert (=> d!1571452 (= res!2089655 ((_ is Nil!56403) (list!17722 input!1236)))))

(assert (=> d!1571452 (= (isPrefix!4894 (list!17722 input!1236) (list!17722 input!1236)) lt!2005621)))

(declare-fun b!4892761 () Bool)

(assert (=> b!4892761 (= e!3058731 e!3058729)))

(declare-fun res!2089652 () Bool)

(assert (=> b!4892761 (=> (not res!2089652) (not e!3058729))))

(assert (=> b!4892761 (= res!2089652 (not ((_ is Nil!56403) (list!17722 input!1236))))))

(declare-fun b!4892763 () Bool)

(assert (=> b!4892763 (= e!3058729 (isPrefix!4894 (tail!9601 (list!17722 input!1236)) (tail!9601 (list!17722 input!1236))))))

(declare-fun b!4892764 () Bool)

(assert (=> b!4892764 (= e!3058730 (>= (size!37138 (list!17722 input!1236)) (size!37138 (list!17722 input!1236))))))

(assert (= (and d!1571452 (not res!2089655)) b!4892761))

(assert (= (and b!4892761 res!2089652) b!4892762))

(assert (= (and b!4892762 res!2089654) b!4892763))

(assert (= (and d!1571452 (not res!2089653)) b!4892764))

(assert (=> b!4892762 m!5894176))

(assert (=> b!4892762 m!5897052))

(assert (=> b!4892762 m!5894176))

(assert (=> b!4892762 m!5897052))

(assert (=> b!4892763 m!5894176))

(assert (=> b!4892763 m!5897048))

(assert (=> b!4892763 m!5894176))

(assert (=> b!4892763 m!5897048))

(assert (=> b!4892763 m!5897048))

(assert (=> b!4892763 m!5897048))

(declare-fun m!5897412 () Bool)

(assert (=> b!4892763 m!5897412))

(assert (=> b!4892764 m!5894176))

(assert (=> b!4892764 m!5894666))

(assert (=> b!4892764 m!5894176))

(assert (=> b!4892764 m!5894666))

(assert (=> d!1570592 d!1571452))

(declare-fun d!1571454 () Bool)

(assert (=> d!1571454 (isPrefix!4894 (list!17722 input!1236) (list!17722 input!1236))))

(declare-fun lt!2005622 () Unit!146398)

(assert (=> d!1571454 (= lt!2005622 (choose!35699 (list!17722 input!1236) (list!17722 input!1236)))))

(assert (=> d!1571454 (= (lemmaIsPrefixRefl!3291 (list!17722 input!1236) (list!17722 input!1236)) lt!2005622)))

(declare-fun bs!1175982 () Bool)

(assert (= bs!1175982 d!1571454))

(assert (=> bs!1175982 m!5894176))

(assert (=> bs!1175982 m!5894176))

(assert (=> bs!1175982 m!5894576))

(assert (=> bs!1175982 m!5894176))

(assert (=> bs!1175982 m!5894176))

(declare-fun m!5897414 () Bool)

(assert (=> bs!1175982 m!5897414))

(assert (=> d!1570592 d!1571454))

(assert (=> d!1570592 d!1570550))

(declare-fun lt!2005623 () Option!14026)

(declare-fun d!1571456 () Bool)

(assert (=> d!1571456 (= lt!2005623 (maxPrefixOneRule!3529 thiss!14805 (h!62853 (t!365275 rulesArg!165)) lt!2004534))))

(declare-fun e!3058733 () Option!14026)

(assert (=> d!1571456 (= lt!2005623 e!3058733)))

(declare-fun c!831586 () Bool)

(declare-fun lt!2005626 () tuple2!60450)

(assert (=> d!1571456 (= c!831586 (isEmpty!30257 (_1!33528 lt!2005626)))))

(assert (=> d!1571456 (= lt!2005626 (findLongestMatchWithZipper!81 (regex!8174 (h!62853 (t!365275 rulesArg!165))) lt!2004534))))

(assert (=> d!1571456 (ruleValid!3671 thiss!14805 (h!62853 (t!365275 rulesArg!165)))))

(assert (=> d!1571456 (= (maxPrefixOneRuleZipper!258 thiss!14805 (h!62853 (t!365275 rulesArg!165)) lt!2004534) lt!2005623)))

(declare-fun b!4892765 () Bool)

(assert (=> b!4892765 (= e!3058733 None!14025)))

(declare-fun b!4892766 () Bool)

(assert (=> b!4892766 (= e!3058733 (Some!14025 (tuple2!60447 (Token!14913 (apply!13540 (transformation!8174 (h!62853 (t!365275 rulesArg!165))) (seqFromList!5936 (_1!33528 lt!2005626))) (h!62853 (t!365275 rulesArg!165)) (size!37138 (_1!33528 lt!2005626)) (_1!33528 lt!2005626)) (_2!33528 lt!2005626))))))

(declare-fun lt!2005625 () Unit!146398)

(assert (=> b!4892766 (= lt!2005625 (longestMatchIsAcceptedByMatchOrIsEmpty!1715 (regex!8174 (h!62853 (t!365275 rulesArg!165))) lt!2004534))))

(declare-fun res!2089656 () Bool)

(assert (=> b!4892766 (= res!2089656 (isEmpty!30257 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 (t!365275 rulesArg!165))) Nil!56403 (size!37138 Nil!56403) lt!2004534 lt!2004534 (size!37138 lt!2004534)))))))

(declare-fun e!3058732 () Bool)

(assert (=> b!4892766 (=> res!2089656 e!3058732)))

(assert (=> b!4892766 e!3058732))

(declare-fun lt!2005628 () Unit!146398)

(assert (=> b!4892766 (= lt!2005628 lt!2005625)))

(declare-fun lt!2005627 () Unit!146398)

(assert (=> b!4892766 (= lt!2005627 (lemmaInv!1235 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))))))

(declare-fun lt!2005624 () Unit!146398)

(assert (=> b!4892766 (= lt!2005624 (lemmaSemiInverse!2563 (transformation!8174 (h!62853 (t!365275 rulesArg!165))) (seqFromList!5936 (_1!33528 lt!2005626))))))

(declare-fun b!4892767 () Bool)

(assert (=> b!4892767 (= e!3058732 (matchR!6530 (regex!8174 (h!62853 (t!365275 rulesArg!165))) (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 (t!365275 rulesArg!165))) Nil!56403 (size!37138 Nil!56403) lt!2004534 lt!2004534 (size!37138 lt!2004534)))))))

(assert (= (and d!1571456 c!831586) b!4892765))

(assert (= (and d!1571456 (not c!831586)) b!4892766))

(assert (= (and b!4892766 (not res!2089656)) b!4892767))

(assert (=> d!1571456 m!5895462))

(declare-fun m!5897416 () Bool)

(assert (=> d!1571456 m!5897416))

(declare-fun m!5897418 () Bool)

(assert (=> d!1571456 m!5897418))

(assert (=> d!1571456 m!5894550))

(assert (=> b!4892766 m!5894316))

(declare-fun m!5897420 () Bool)

(assert (=> b!4892766 m!5897420))

(declare-fun m!5897422 () Bool)

(assert (=> b!4892766 m!5897422))

(declare-fun m!5897424 () Bool)

(assert (=> b!4892766 m!5897424))

(assert (=> b!4892766 m!5897424))

(declare-fun m!5897426 () Bool)

(assert (=> b!4892766 m!5897426))

(assert (=> b!4892766 m!5897424))

(declare-fun m!5897428 () Bool)

(assert (=> b!4892766 m!5897428))

(declare-fun m!5897430 () Bool)

(assert (=> b!4892766 m!5897430))

(assert (=> b!4892766 m!5894382))

(assert (=> b!4892766 m!5894316))

(assert (=> b!4892766 m!5894382))

(declare-fun m!5897432 () Bool)

(assert (=> b!4892766 m!5897432))

(assert (=> b!4892766 m!5895206))

(assert (=> b!4892767 m!5894316))

(assert (=> b!4892767 m!5894382))

(assert (=> b!4892767 m!5894316))

(assert (=> b!4892767 m!5894382))

(assert (=> b!4892767 m!5897432))

(declare-fun m!5897434 () Bool)

(assert (=> b!4892767 m!5897434))

(assert (=> bm!339175 d!1571456))

(assert (=> b!4891425 d!1571350))

(declare-fun d!1571458 () Bool)

(assert (=> d!1571458 (= (get!19478 (maxPrefix!4603 thiss!14805 (t!365275 (t!365275 rulesArg!165)) (list!17722 input!1236))) (v!49977 (maxPrefix!4603 thiss!14805 (t!365275 (t!365275 rulesArg!165)) (list!17722 input!1236))))))

(assert (=> b!4891425 d!1571458))

(declare-fun b!4892768 () Bool)

(declare-fun e!3058735 () Bool)

(declare-fun e!3058736 () Bool)

(assert (=> b!4892768 (= e!3058735 e!3058736)))

(declare-fun res!2089658 () Bool)

(assert (=> b!4892768 (=> (not res!2089658) (not e!3058736))))

(declare-fun lt!2005629 () Option!14026)

(assert (=> b!4892768 (= res!2089658 (isDefined!11037 lt!2005629))))

(declare-fun b!4892769 () Bool)

(assert (=> b!4892769 (= e!3058736 (contains!19437 (t!365275 (t!365275 rulesArg!165)) (rule!11358 (_1!33526 (get!19478 lt!2005629)))))))

(declare-fun d!1571460 () Bool)

(assert (=> d!1571460 e!3058735))

(declare-fun res!2089659 () Bool)

(assert (=> d!1571460 (=> res!2089659 e!3058735)))

(assert (=> d!1571460 (= res!2089659 (isEmpty!30258 lt!2005629))))

(declare-fun e!3058734 () Option!14026)

(assert (=> d!1571460 (= lt!2005629 e!3058734)))

(declare-fun c!831587 () Bool)

(assert (=> d!1571460 (= c!831587 (and ((_ is Cons!56405) (t!365275 (t!365275 rulesArg!165))) ((_ is Nil!56405) (t!365275 (t!365275 (t!365275 rulesArg!165))))))))

(declare-fun lt!2005630 () Unit!146398)

(declare-fun lt!2005633 () Unit!146398)

(assert (=> d!1571460 (= lt!2005630 lt!2005633)))

(assert (=> d!1571460 (isPrefix!4894 (list!17722 input!1236) (list!17722 input!1236))))

(assert (=> d!1571460 (= lt!2005633 (lemmaIsPrefixRefl!3291 (list!17722 input!1236) (list!17722 input!1236)))))

(assert (=> d!1571460 (rulesValidInductive!3153 thiss!14805 (t!365275 (t!365275 rulesArg!165)))))

(assert (=> d!1571460 (= (maxPrefix!4603 thiss!14805 (t!365275 (t!365275 rulesArg!165)) (list!17722 input!1236)) lt!2005629)))

(declare-fun bm!339366 () Bool)

(declare-fun call!339371 () Option!14026)

(assert (=> bm!339366 (= call!339371 (maxPrefixOneRule!3529 thiss!14805 (h!62853 (t!365275 (t!365275 rulesArg!165))) (list!17722 input!1236)))))

(declare-fun b!4892770 () Bool)

(assert (=> b!4892770 (= e!3058734 call!339371)))

(declare-fun b!4892771 () Bool)

(declare-fun res!2089660 () Bool)

(assert (=> b!4892771 (=> (not res!2089660) (not e!3058736))))

(assert (=> b!4892771 (= res!2089660 (matchR!6530 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2005629)))) (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2005629))))))))

(declare-fun b!4892772 () Bool)

(declare-fun res!2089663 () Bool)

(assert (=> b!4892772 (=> (not res!2089663) (not e!3058736))))

(assert (=> b!4892772 (= res!2089663 (= (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2005629)))) (originalCharacters!8487 (_1!33526 (get!19478 lt!2005629)))))))

(declare-fun b!4892773 () Bool)

(declare-fun res!2089661 () Bool)

(assert (=> b!4892773 (=> (not res!2089661) (not e!3058736))))

(assert (=> b!4892773 (= res!2089661 (= (++!12243 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2005629)))) (_2!33526 (get!19478 lt!2005629))) (list!17722 input!1236)))))

(declare-fun b!4892774 () Bool)

(declare-fun res!2089657 () Bool)

(assert (=> b!4892774 (=> (not res!2089657) (not e!3058736))))

(assert (=> b!4892774 (= res!2089657 (< (size!37138 (_2!33526 (get!19478 lt!2005629))) (size!37138 (list!17722 input!1236))))))

(declare-fun b!4892775 () Bool)

(declare-fun res!2089662 () Bool)

(assert (=> b!4892775 (=> (not res!2089662) (not e!3058736))))

(assert (=> b!4892775 (= res!2089662 (= (value!262109 (_1!33526 (get!19478 lt!2005629))) (apply!13540 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2005629)))) (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2005629)))))))))

(declare-fun b!4892776 () Bool)

(declare-fun lt!2005631 () Option!14026)

(declare-fun lt!2005632 () Option!14026)

(assert (=> b!4892776 (= e!3058734 (ite (and ((_ is None!14025) lt!2005631) ((_ is None!14025) lt!2005632)) None!14025 (ite ((_ is None!14025) lt!2005632) lt!2005631 (ite ((_ is None!14025) lt!2005631) lt!2005632 (ite (>= (size!37136 (_1!33526 (v!49977 lt!2005631))) (size!37136 (_1!33526 (v!49977 lt!2005632)))) lt!2005631 lt!2005632)))))))

(assert (=> b!4892776 (= lt!2005631 call!339371)))

(assert (=> b!4892776 (= lt!2005632 (maxPrefix!4603 thiss!14805 (t!365275 (t!365275 (t!365275 rulesArg!165))) (list!17722 input!1236)))))

(assert (= (and d!1571460 c!831587) b!4892770))

(assert (= (and d!1571460 (not c!831587)) b!4892776))

(assert (= (or b!4892770 b!4892776) bm!339366))

(assert (= (and d!1571460 (not res!2089659)) b!4892768))

(assert (= (and b!4892768 res!2089658) b!4892772))

(assert (= (and b!4892772 res!2089663) b!4892774))

(assert (= (and b!4892774 res!2089657) b!4892773))

(assert (= (and b!4892773 res!2089661) b!4892775))

(assert (= (and b!4892775 res!2089662) b!4892771))

(assert (= (and b!4892771 res!2089660) b!4892769))

(declare-fun m!5897436 () Bool)

(assert (=> b!4892775 m!5897436))

(declare-fun m!5897438 () Bool)

(assert (=> b!4892775 m!5897438))

(assert (=> b!4892775 m!5897438))

(declare-fun m!5897440 () Bool)

(assert (=> b!4892775 m!5897440))

(assert (=> b!4892773 m!5897436))

(declare-fun m!5897442 () Bool)

(assert (=> b!4892773 m!5897442))

(assert (=> b!4892773 m!5897442))

(declare-fun m!5897444 () Bool)

(assert (=> b!4892773 m!5897444))

(assert (=> b!4892773 m!5897444))

(declare-fun m!5897446 () Bool)

(assert (=> b!4892773 m!5897446))

(assert (=> bm!339366 m!5894176))

(declare-fun m!5897448 () Bool)

(assert (=> bm!339366 m!5897448))

(assert (=> b!4892772 m!5897436))

(assert (=> b!4892772 m!5897442))

(assert (=> b!4892772 m!5897442))

(assert (=> b!4892772 m!5897444))

(assert (=> b!4892771 m!5897436))

(assert (=> b!4892771 m!5897442))

(assert (=> b!4892771 m!5897442))

(assert (=> b!4892771 m!5897444))

(assert (=> b!4892771 m!5897444))

(declare-fun m!5897450 () Bool)

(assert (=> b!4892771 m!5897450))

(declare-fun m!5897452 () Bool)

(assert (=> d!1571460 m!5897452))

(assert (=> d!1571460 m!5894176))

(assert (=> d!1571460 m!5894176))

(assert (=> d!1571460 m!5894576))

(assert (=> d!1571460 m!5894176))

(assert (=> d!1571460 m!5894176))

(assert (=> d!1571460 m!5894578))

(assert (=> d!1571460 m!5894552))

(assert (=> b!4892774 m!5897436))

(declare-fun m!5897454 () Bool)

(assert (=> b!4892774 m!5897454))

(assert (=> b!4892774 m!5894176))

(assert (=> b!4892774 m!5894666))

(assert (=> b!4892769 m!5897436))

(declare-fun m!5897456 () Bool)

(assert (=> b!4892769 m!5897456))

(assert (=> b!4892776 m!5894176))

(declare-fun m!5897458 () Bool)

(assert (=> b!4892776 m!5897458))

(declare-fun m!5897460 () Bool)

(assert (=> b!4892768 m!5897460))

(assert (=> b!4891425 d!1571460))

(assert (=> b!4891425 d!1570502))

(declare-fun b!4892779 () Bool)

(declare-fun res!2089665 () Bool)

(declare-fun e!3058738 () Bool)

(assert (=> b!4892779 (=> (not res!2089665) (not e!3058738))))

(declare-fun lt!2005634 () List!56527)

(assert (=> b!4892779 (= res!2089665 (= (size!37138 lt!2005634) (+ (size!37138 (list!17724 (left!40975 (c!831175 (_2!33525 lt!2004530))))) (size!37138 (list!17724 (right!41305 (c!831175 (_2!33525 lt!2004530))))))))))

(declare-fun b!4892780 () Bool)

(assert (=> b!4892780 (= e!3058738 (or (not (= (list!17724 (right!41305 (c!831175 (_2!33525 lt!2004530)))) Nil!56403)) (= lt!2005634 (list!17724 (left!40975 (c!831175 (_2!33525 lt!2004530)))))))))

(declare-fun b!4892777 () Bool)

(declare-fun e!3058737 () List!56527)

(assert (=> b!4892777 (= e!3058737 (list!17724 (right!41305 (c!831175 (_2!33525 lt!2004530)))))))

(declare-fun d!1571462 () Bool)

(assert (=> d!1571462 e!3058738))

(declare-fun res!2089664 () Bool)

(assert (=> d!1571462 (=> (not res!2089664) (not e!3058738))))

(assert (=> d!1571462 (= res!2089664 (= (content!10015 lt!2005634) ((_ map or) (content!10015 (list!17724 (left!40975 (c!831175 (_2!33525 lt!2004530))))) (content!10015 (list!17724 (right!41305 (c!831175 (_2!33525 lt!2004530))))))))))

(assert (=> d!1571462 (= lt!2005634 e!3058737)))

(declare-fun c!831588 () Bool)

(assert (=> d!1571462 (= c!831588 ((_ is Nil!56403) (list!17724 (left!40975 (c!831175 (_2!33525 lt!2004530))))))))

(assert (=> d!1571462 (= (++!12243 (list!17724 (left!40975 (c!831175 (_2!33525 lt!2004530)))) (list!17724 (right!41305 (c!831175 (_2!33525 lt!2004530))))) lt!2005634)))

(declare-fun b!4892778 () Bool)

(assert (=> b!4892778 (= e!3058737 (Cons!56403 (h!62851 (list!17724 (left!40975 (c!831175 (_2!33525 lt!2004530))))) (++!12243 (t!365273 (list!17724 (left!40975 (c!831175 (_2!33525 lt!2004530))))) (list!17724 (right!41305 (c!831175 (_2!33525 lt!2004530)))))))))

(assert (= (and d!1571462 c!831588) b!4892777))

(assert (= (and d!1571462 (not c!831588)) b!4892778))

(assert (= (and d!1571462 res!2089664) b!4892779))

(assert (= (and b!4892779 res!2089665) b!4892780))

(declare-fun m!5897462 () Bool)

(assert (=> b!4892779 m!5897462))

(assert (=> b!4892779 m!5895042))

(declare-fun m!5897464 () Bool)

(assert (=> b!4892779 m!5897464))

(assert (=> b!4892779 m!5895044))

(declare-fun m!5897466 () Bool)

(assert (=> b!4892779 m!5897466))

(declare-fun m!5897468 () Bool)

(assert (=> d!1571462 m!5897468))

(assert (=> d!1571462 m!5895042))

(declare-fun m!5897470 () Bool)

(assert (=> d!1571462 m!5897470))

(assert (=> d!1571462 m!5895044))

(declare-fun m!5897472 () Bool)

(assert (=> d!1571462 m!5897472))

(assert (=> b!4892778 m!5895044))

(declare-fun m!5897474 () Bool)

(assert (=> b!4892778 m!5897474))

(assert (=> b!4891436 d!1571462))

(declare-fun b!4892782 () Bool)

(declare-fun e!3058739 () List!56527)

(declare-fun e!3058740 () List!56527)

(assert (=> b!4892782 (= e!3058739 e!3058740)))

(declare-fun c!831590 () Bool)

(assert (=> b!4892782 (= c!831590 ((_ is Leaf!24546) (left!40975 (c!831175 (_2!33525 lt!2004530)))))))

(declare-fun d!1571464 () Bool)

(declare-fun c!831589 () Bool)

(assert (=> d!1571464 (= c!831589 ((_ is Empty!14742) (left!40975 (c!831175 (_2!33525 lt!2004530)))))))

(assert (=> d!1571464 (= (list!17724 (left!40975 (c!831175 (_2!33525 lt!2004530)))) e!3058739)))

(declare-fun b!4892783 () Bool)

(assert (=> b!4892783 (= e!3058740 (list!17726 (xs!18058 (left!40975 (c!831175 (_2!33525 lt!2004530))))))))

(declare-fun b!4892781 () Bool)

(assert (=> b!4892781 (= e!3058739 Nil!56403)))

(declare-fun b!4892784 () Bool)

(assert (=> b!4892784 (= e!3058740 (++!12243 (list!17724 (left!40975 (left!40975 (c!831175 (_2!33525 lt!2004530))))) (list!17724 (right!41305 (left!40975 (c!831175 (_2!33525 lt!2004530)))))))))

(assert (= (and d!1571464 c!831589) b!4892781))

(assert (= (and d!1571464 (not c!831589)) b!4892782))

(assert (= (and b!4892782 c!831590) b!4892783))

(assert (= (and b!4892782 (not c!831590)) b!4892784))

(declare-fun m!5897476 () Bool)

(assert (=> b!4892783 m!5897476))

(declare-fun m!5897478 () Bool)

(assert (=> b!4892784 m!5897478))

(declare-fun m!5897480 () Bool)

(assert (=> b!4892784 m!5897480))

(assert (=> b!4892784 m!5897478))

(assert (=> b!4892784 m!5897480))

(declare-fun m!5897482 () Bool)

(assert (=> b!4892784 m!5897482))

(assert (=> b!4891436 d!1571464))

(declare-fun b!4892786 () Bool)

(declare-fun e!3058741 () List!56527)

(declare-fun e!3058742 () List!56527)

(assert (=> b!4892786 (= e!3058741 e!3058742)))

(declare-fun c!831592 () Bool)

(assert (=> b!4892786 (= c!831592 ((_ is Leaf!24546) (right!41305 (c!831175 (_2!33525 lt!2004530)))))))

(declare-fun d!1571466 () Bool)

(declare-fun c!831591 () Bool)

(assert (=> d!1571466 (= c!831591 ((_ is Empty!14742) (right!41305 (c!831175 (_2!33525 lt!2004530)))))))

(assert (=> d!1571466 (= (list!17724 (right!41305 (c!831175 (_2!33525 lt!2004530)))) e!3058741)))

(declare-fun b!4892787 () Bool)

(assert (=> b!4892787 (= e!3058742 (list!17726 (xs!18058 (right!41305 (c!831175 (_2!33525 lt!2004530))))))))

(declare-fun b!4892785 () Bool)

(assert (=> b!4892785 (= e!3058741 Nil!56403)))

(declare-fun b!4892788 () Bool)

(assert (=> b!4892788 (= e!3058742 (++!12243 (list!17724 (left!40975 (right!41305 (c!831175 (_2!33525 lt!2004530))))) (list!17724 (right!41305 (right!41305 (c!831175 (_2!33525 lt!2004530)))))))))

(assert (= (and d!1571466 c!831591) b!4892785))

(assert (= (and d!1571466 (not c!831591)) b!4892786))

(assert (= (and b!4892786 c!831592) b!4892787))

(assert (= (and b!4892786 (not c!831592)) b!4892788))

(declare-fun m!5897484 () Bool)

(assert (=> b!4892787 m!5897484))

(declare-fun m!5897486 () Bool)

(assert (=> b!4892788 m!5897486))

(declare-fun m!5897488 () Bool)

(assert (=> b!4892788 m!5897488))

(assert (=> b!4892788 m!5897486))

(assert (=> b!4892788 m!5897488))

(declare-fun m!5897490 () Bool)

(assert (=> b!4892788 m!5897490))

(assert (=> b!4891436 d!1571466))

(declare-fun d!1571468 () Bool)

(assert (=> d!1571468 (dynLambda!22630 lambda!243967 (_1!33527 lt!2004658))))

(assert (=> d!1571468 true))

(declare-fun _$1!11185 () Unit!146398)

(assert (=> d!1571468 (= (choose!35704 lambda!243967 (_1!33527 lt!2004658)) _$1!11185)))

(declare-fun b_lambda!194315 () Bool)

(assert (=> (not b_lambda!194315) (not d!1571468)))

(declare-fun bs!1175983 () Bool)

(assert (= bs!1175983 d!1571468))

(assert (=> bs!1175983 m!5895226))

(assert (=> d!1570726 d!1571468))

(declare-fun d!1571470 () Bool)

(declare-fun choose!35712 (Int) Bool)

(assert (=> d!1571470 (= (Forall!1686 lambda!243967) (choose!35712 lambda!243967))))

(declare-fun bs!1175984 () Bool)

(assert (= bs!1175984 d!1571470))

(declare-fun m!5897492 () Bool)

(assert (=> bs!1175984 m!5897492))

(assert (=> d!1570726 d!1571470))

(declare-fun d!1571472 () Bool)

(assert (=> d!1571472 (= (max!0 (height!1955 (left!40975 (c!831175 input!1236))) (height!1955 (right!41305 (c!831175 input!1236)))) (ite (< (height!1955 (left!40975 (c!831175 input!1236))) (height!1955 (right!41305 (c!831175 input!1236)))) (height!1955 (right!41305 (c!831175 input!1236))) (height!1955 (left!40975 (c!831175 input!1236)))))))

(assert (=> b!4891692 d!1571472))

(assert (=> b!4891692 d!1571384))

(assert (=> b!4891692 d!1571386))

(declare-fun b!4892789 () Bool)

(declare-fun e!3058748 () Bool)

(assert (=> b!4892789 (= e!3058748 (= (head!10455 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004982))))) (c!831176 (regex!8174 (h!62853 rulesArg!165)))))))

(declare-fun b!4892790 () Bool)

(declare-fun e!3058749 () Bool)

(declare-fun lt!2005635 () Bool)

(assert (=> b!4892790 (= e!3058749 (not lt!2005635))))

(declare-fun b!4892791 () Bool)

(declare-fun res!2089673 () Bool)

(declare-fun e!3058743 () Bool)

(assert (=> b!4892791 (=> res!2089673 e!3058743)))

(assert (=> b!4892791 (= res!2089673 (not (isEmpty!30257 (tail!9601 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004982))))))))))

(declare-fun b!4892792 () Bool)

(declare-fun e!3058744 () Bool)

(assert (=> b!4892792 (= e!3058744 e!3058743)))

(declare-fun res!2089670 () Bool)

(assert (=> b!4892792 (=> res!2089670 e!3058743)))

(declare-fun call!339372 () Bool)

(assert (=> b!4892792 (= res!2089670 call!339372)))

(declare-fun b!4892793 () Bool)

(declare-fun res!2089666 () Bool)

(declare-fun e!3058747 () Bool)

(assert (=> b!4892793 (=> res!2089666 e!3058747)))

(assert (=> b!4892793 (= res!2089666 (not ((_ is ElementMatch!13249) (regex!8174 (h!62853 rulesArg!165)))))))

(assert (=> b!4892793 (= e!3058749 e!3058747)))

(declare-fun b!4892794 () Bool)

(assert (=> b!4892794 (= e!3058747 e!3058744)))

(declare-fun res!2089672 () Bool)

(assert (=> b!4892794 (=> (not res!2089672) (not e!3058744))))

(assert (=> b!4892794 (= res!2089672 (not lt!2005635))))

(declare-fun b!4892795 () Bool)

(declare-fun e!3058746 () Bool)

(assert (=> b!4892795 (= e!3058746 (matchR!6530 (derivativeStep!3876 (regex!8174 (h!62853 rulesArg!165)) (head!10455 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004982)))))) (tail!9601 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004982)))))))))

(declare-fun b!4892797 () Bool)

(declare-fun e!3058745 () Bool)

(assert (=> b!4892797 (= e!3058745 e!3058749)))

(declare-fun c!831593 () Bool)

(assert (=> b!4892797 (= c!831593 ((_ is EmptyLang!13249) (regex!8174 (h!62853 rulesArg!165))))))

(declare-fun b!4892798 () Bool)

(declare-fun res!2089669 () Bool)

(assert (=> b!4892798 (=> res!2089669 e!3058747)))

(assert (=> b!4892798 (= res!2089669 e!3058748)))

(declare-fun res!2089668 () Bool)

(assert (=> b!4892798 (=> (not res!2089668) (not e!3058748))))

(assert (=> b!4892798 (= res!2089668 lt!2005635)))

(declare-fun b!4892799 () Bool)

(assert (=> b!4892799 (= e!3058745 (= lt!2005635 call!339372))))

(declare-fun b!4892800 () Bool)

(assert (=> b!4892800 (= e!3058743 (not (= (head!10455 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004982))))) (c!831176 (regex!8174 (h!62853 rulesArg!165))))))))

(declare-fun b!4892801 () Bool)

(declare-fun res!2089671 () Bool)

(assert (=> b!4892801 (=> (not res!2089671) (not e!3058748))))

(assert (=> b!4892801 (= res!2089671 (not call!339372))))

(declare-fun d!1571474 () Bool)

(assert (=> d!1571474 e!3058745))

(declare-fun c!831595 () Bool)

(assert (=> d!1571474 (= c!831595 ((_ is EmptyExpr!13249) (regex!8174 (h!62853 rulesArg!165))))))

(assert (=> d!1571474 (= lt!2005635 e!3058746)))

(declare-fun c!831594 () Bool)

(assert (=> d!1571474 (= c!831594 (isEmpty!30257 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004982))))))))

(assert (=> d!1571474 (validRegex!5882 (regex!8174 (h!62853 rulesArg!165)))))

(assert (=> d!1571474 (= (matchR!6530 (regex!8174 (h!62853 rulesArg!165)) (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004982))))) lt!2005635)))

(declare-fun b!4892796 () Bool)

(assert (=> b!4892796 (= e!3058746 (nullable!4555 (regex!8174 (h!62853 rulesArg!165))))))

(declare-fun b!4892802 () Bool)

(declare-fun res!2089667 () Bool)

(assert (=> b!4892802 (=> (not res!2089667) (not e!3058748))))

(assert (=> b!4892802 (= res!2089667 (isEmpty!30257 (tail!9601 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004982)))))))))

(declare-fun bm!339367 () Bool)

(assert (=> bm!339367 (= call!339372 (isEmpty!30257 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004982))))))))

(assert (= (and d!1571474 c!831594) b!4892796))

(assert (= (and d!1571474 (not c!831594)) b!4892795))

(assert (= (and d!1571474 c!831595) b!4892799))

(assert (= (and d!1571474 (not c!831595)) b!4892797))

(assert (= (and b!4892797 c!831593) b!4892790))

(assert (= (and b!4892797 (not c!831593)) b!4892793))

(assert (= (and b!4892793 (not res!2089666)) b!4892798))

(assert (= (and b!4892798 res!2089668) b!4892801))

(assert (= (and b!4892801 res!2089671) b!4892802))

(assert (= (and b!4892802 res!2089667) b!4892789))

(assert (= (and b!4892798 (not res!2089669)) b!4892794))

(assert (= (and b!4892794 res!2089672) b!4892792))

(assert (= (and b!4892792 (not res!2089670)) b!4892791))

(assert (= (and b!4892791 (not res!2089673)) b!4892800))

(assert (= (or b!4892799 b!4892792 b!4892801) bm!339367))

(assert (=> b!4892789 m!5894908))

(declare-fun m!5897494 () Bool)

(assert (=> b!4892789 m!5897494))

(assert (=> b!4892800 m!5894908))

(assert (=> b!4892800 m!5897494))

(assert (=> b!4892795 m!5894908))

(assert (=> b!4892795 m!5897494))

(assert (=> b!4892795 m!5897494))

(declare-fun m!5897496 () Bool)

(assert (=> b!4892795 m!5897496))

(assert (=> b!4892795 m!5894908))

(declare-fun m!5897498 () Bool)

(assert (=> b!4892795 m!5897498))

(assert (=> b!4892795 m!5897496))

(assert (=> b!4892795 m!5897498))

(declare-fun m!5897500 () Bool)

(assert (=> b!4892795 m!5897500))

(assert (=> b!4892802 m!5894908))

(assert (=> b!4892802 m!5897498))

(assert (=> b!4892802 m!5897498))

(declare-fun m!5897502 () Bool)

(assert (=> b!4892802 m!5897502))

(assert (=> b!4892791 m!5894908))

(assert (=> b!4892791 m!5897498))

(assert (=> b!4892791 m!5897498))

(assert (=> b!4892791 m!5897502))

(assert (=> bm!339367 m!5894908))

(declare-fun m!5897504 () Bool)

(assert (=> bm!339367 m!5897504))

(assert (=> d!1571474 m!5894908))

(assert (=> d!1571474 m!5897504))

(assert (=> d!1571474 m!5894684))

(assert (=> b!4892796 m!5894686))

(assert (=> b!4891380 d!1571474))

(declare-fun d!1571476 () Bool)

(assert (=> d!1571476 (= (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004982)))) (list!17724 (c!831175 (charsOf!5374 (_1!33526 (get!19478 lt!2004982))))))))

(declare-fun bs!1175985 () Bool)

(assert (= bs!1175985 d!1571476))

(declare-fun m!5897506 () Bool)

(assert (=> bs!1175985 m!5897506))

(assert (=> b!4891380 d!1571476))

(declare-fun d!1571478 () Bool)

(declare-fun lt!2005636 () BalanceConc!28914)

(assert (=> d!1571478 (= (list!17722 lt!2005636) (originalCharacters!8487 (_1!33526 (get!19478 lt!2004982))))))

(assert (=> d!1571478 (= lt!2005636 (dynLambda!22627 (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004982))))) (value!262109 (_1!33526 (get!19478 lt!2004982)))))))

(assert (=> d!1571478 (= (charsOf!5374 (_1!33526 (get!19478 lt!2004982))) lt!2005636)))

(declare-fun b_lambda!194317 () Bool)

(assert (=> (not b_lambda!194317) (not d!1571478)))

(declare-fun tb!258779 () Bool)

(declare-fun t!365526 () Bool)

(assert (=> (and b!4890709 (= (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004982)))))) t!365526) tb!258779))

(declare-fun b!4892803 () Bool)

(declare-fun e!3058750 () Bool)

(declare-fun tp!1377019 () Bool)

(assert (=> b!4892803 (= e!3058750 (and (inv!72677 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004982))))) (value!262109 (_1!33526 (get!19478 lt!2004982)))))) tp!1377019))))

(declare-fun result!322342 () Bool)

(assert (=> tb!258779 (= result!322342 (and (inv!72679 (dynLambda!22627 (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004982))))) (value!262109 (_1!33526 (get!19478 lt!2004982))))) e!3058750))))

(assert (= tb!258779 b!4892803))

(declare-fun m!5897508 () Bool)

(assert (=> b!4892803 m!5897508))

(declare-fun m!5897510 () Bool)

(assert (=> tb!258779 m!5897510))

(assert (=> d!1571478 t!365526))

(declare-fun b_and!344767 () Bool)

(assert (= b_and!344761 (and (=> t!365526 result!322342) b_and!344767)))

(declare-fun tb!258781 () Bool)

(declare-fun t!365528 () Bool)

(assert (=> (and b!4891010 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004982)))))) t!365528) tb!258781))

(declare-fun result!322344 () Bool)

(assert (= result!322344 result!322342))

(assert (=> d!1571478 t!365528))

(declare-fun b_and!344769 () Bool)

(assert (= b_and!344763 (and (=> t!365528 result!322344) b_and!344769)))

(declare-fun tb!258783 () Bool)

(declare-fun t!365530 () Bool)

(assert (=> (and b!4891741 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004982)))))) t!365530) tb!258783))

(declare-fun result!322346 () Bool)

(assert (= result!322346 result!322342))

(assert (=> d!1571478 t!365530))

(declare-fun b_and!344771 () Bool)

(assert (= b_and!344765 (and (=> t!365530 result!322346) b_and!344771)))

(declare-fun m!5897512 () Bool)

(assert (=> d!1571478 m!5897512))

(declare-fun m!5897514 () Bool)

(assert (=> d!1571478 m!5897514))

(assert (=> b!4891380 d!1571478))

(declare-fun d!1571480 () Bool)

(assert (=> d!1571480 (= (get!19478 lt!2004982) (v!49977 lt!2004982))))

(assert (=> b!4891380 d!1571480))

(declare-fun d!1571482 () Bool)

(assert (=> d!1571482 (= (isEmpty!30257 (tail!9601 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672)))))) ((_ is Nil!56403) (tail!9601 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672)))))))))

(assert (=> b!4891332 d!1571482))

(assert (=> b!4891332 d!1571446))

(declare-fun d!1571484 () Bool)

(declare-fun lt!2005637 () Int)

(assert (=> d!1571484 (>= lt!2005637 0)))

(declare-fun e!3058751 () Int)

(assert (=> d!1571484 (= lt!2005637 e!3058751)))

(declare-fun c!831596 () Bool)

(assert (=> d!1571484 (= c!831596 ((_ is Nil!56403) (_2!33526 (get!19478 lt!2004764))))))

(assert (=> d!1571484 (= (size!37138 (_2!33526 (get!19478 lt!2004764))) lt!2005637)))

(declare-fun b!4892804 () Bool)

(assert (=> b!4892804 (= e!3058751 0)))

(declare-fun b!4892805 () Bool)

(assert (=> b!4892805 (= e!3058751 (+ 1 (size!37138 (t!365273 (_2!33526 (get!19478 lt!2004764))))))))

(assert (= (and d!1571484 c!831596) b!4892804))

(assert (= (and d!1571484 (not c!831596)) b!4892805))

(declare-fun m!5897516 () Bool)

(assert (=> b!4892805 m!5897516))

(assert (=> b!4891132 d!1571484))

(assert (=> b!4891132 d!1571342))

(assert (=> b!4891132 d!1571340))

(declare-fun d!1571486 () Bool)

(assert (=> d!1571486 (= (seqFromList!5936 (list!17722 (_1!33527 lt!2005051))) (fromListB!2691 (list!17722 (_1!33527 lt!2005051))))))

(declare-fun bs!1175986 () Bool)

(assert (= bs!1175986 d!1571486))

(assert (=> bs!1175986 m!5895194))

(declare-fun m!5897518 () Bool)

(assert (=> bs!1175986 m!5897518))

(assert (=> b!4891527 d!1571486))

(assert (=> b!4891527 d!1571360))

(declare-fun d!1571488 () Bool)

(declare-fun lt!2005638 () Int)

(assert (=> d!1571488 (= lt!2005638 (size!37138 (list!17722 (_1!33527 lt!2005051))))))

(assert (=> d!1571488 (= lt!2005638 (size!37142 (c!831175 (_1!33527 lt!2005051))))))

(assert (=> d!1571488 (= (size!37139 (_1!33527 lt!2005051)) lt!2005638)))

(declare-fun bs!1175987 () Bool)

(assert (= bs!1175987 d!1571488))

(assert (=> bs!1175987 m!5895194))

(assert (=> bs!1175987 m!5895194))

(declare-fun m!5897520 () Bool)

(assert (=> bs!1175987 m!5897520))

(declare-fun m!5897522 () Bool)

(assert (=> bs!1175987 m!5897522))

(assert (=> b!4891527 d!1571488))

(declare-fun d!1571490 () Bool)

(declare-fun e!3058752 () Bool)

(assert (=> d!1571490 e!3058752))

(declare-fun res!2089674 () Bool)

(assert (=> d!1571490 (=> (not res!2089674) (not e!3058752))))

(assert (=> d!1571490 (= res!2089674 (semiInverseModEq!3586 (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))))))

(declare-fun Unit!146430 () Unit!146398)

(assert (=> d!1571490 (= (lemmaInv!1235 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) Unit!146430)))

(declare-fun b!4892806 () Bool)

(assert (=> b!4892806 (= e!3058752 (equivClasses!3465 (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))))))

(assert (= (and d!1571490 res!2089674) b!4892806))

(assert (=> d!1571490 m!5894570))

(assert (=> b!4892806 m!5894572))

(assert (=> b!4891527 d!1571490))

(assert (=> b!4891527 d!1570502))

(declare-fun d!1571492 () Bool)

(declare-fun e!3058753 () Bool)

(assert (=> d!1571492 e!3058753))

(declare-fun res!2089675 () Bool)

(assert (=> d!1571492 (=> res!2089675 e!3058753)))

(assert (=> d!1571492 (= res!2089675 (isEmpty!30257 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 (t!365275 rulesArg!165))) Nil!56403 (size!37138 Nil!56403) lt!2005053 lt!2005053 (size!37138 lt!2005053)))))))

(declare-fun lt!2005639 () Unit!146398)

(assert (=> d!1571492 (= lt!2005639 (choose!35705 (regex!8174 (h!62853 (t!365275 rulesArg!165))) lt!2005053))))

(assert (=> d!1571492 (validRegex!5882 (regex!8174 (h!62853 (t!365275 rulesArg!165))))))

(assert (=> d!1571492 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1715 (regex!8174 (h!62853 (t!365275 rulesArg!165))) lt!2005053) lt!2005639)))

(declare-fun b!4892807 () Bool)

(assert (=> b!4892807 (= e!3058753 (matchR!6530 (regex!8174 (h!62853 (t!365275 rulesArg!165))) (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 (t!365275 rulesArg!165))) Nil!56403 (size!37138 Nil!56403) lt!2005053 lt!2005053 (size!37138 lt!2005053)))))))

(assert (= (and d!1571492 (not res!2089675)) b!4892807))

(assert (=> d!1571492 m!5894316))

(assert (=> d!1571492 m!5895212))

(declare-fun m!5897524 () Bool)

(assert (=> d!1571492 m!5897524))

(assert (=> d!1571492 m!5895174))

(assert (=> d!1571492 m!5897110))

(assert (=> d!1571492 m!5894316))

(assert (=> d!1571492 m!5895174))

(assert (=> d!1571492 m!5895176))

(assert (=> b!4892807 m!5894316))

(assert (=> b!4892807 m!5895174))

(assert (=> b!4892807 m!5894316))

(assert (=> b!4892807 m!5895174))

(assert (=> b!4892807 m!5895176))

(assert (=> b!4892807 m!5895178))

(assert (=> b!4891527 d!1571492))

(declare-fun bs!1175988 () Bool)

(declare-fun d!1571494 () Bool)

(assert (= bs!1175988 (and d!1571494 d!1570734)))

(declare-fun lambda!244012 () Int)

(assert (=> bs!1175988 (= (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) (= lambda!244012 lambda!243997))))

(declare-fun bs!1175989 () Bool)

(assert (= bs!1175989 (and d!1571494 d!1570800)))

(assert (=> bs!1175989 (= (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) (= lambda!244012 lambda!244000))))

(declare-fun b!4892808 () Bool)

(declare-fun e!3058754 () Bool)

(assert (=> b!4892808 (= e!3058754 true)))

(assert (=> d!1571494 e!3058754))

(assert (= d!1571494 b!4892808))

(assert (=> b!4892808 (< (dynLambda!22617 order!25463 (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) (dynLambda!22631 order!25477 lambda!244012))))

(assert (=> b!4892808 (< (dynLambda!22619 order!25467 (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) (dynLambda!22631 order!25477 lambda!244012))))

(assert (=> d!1571494 (= (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (_1!33527 lt!2005051)) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (seqFromList!5936 (list!17722 (_1!33527 lt!2005051)))))))

(declare-fun lt!2005640 () Unit!146398)

(assert (=> d!1571494 (= lt!2005640 (Forall2of!446 lambda!244012 (_1!33527 lt!2005051) (seqFromList!5936 (list!17722 (_1!33527 lt!2005051)))))))

(assert (=> d!1571494 (= (list!17722 (_1!33527 lt!2005051)) (list!17722 (seqFromList!5936 (list!17722 (_1!33527 lt!2005051)))))))

(assert (=> d!1571494 (= (lemmaEqSameImage!1089 (transformation!8174 (h!62853 (t!365275 rulesArg!165))) (_1!33527 lt!2005051) (seqFromList!5936 (list!17722 (_1!33527 lt!2005051)))) lt!2005640)))

(declare-fun b_lambda!194319 () Bool)

(assert (=> (not b_lambda!194319) (not d!1571494)))

(declare-fun t!365532 () Bool)

(declare-fun tb!258785 () Bool)

(assert (=> (and b!4890709 (= (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) t!365532) tb!258785))

(declare-fun result!322348 () Bool)

(assert (=> tb!258785 (= result!322348 (inv!21 (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (_1!33527 lt!2005051))))))

(declare-fun m!5897526 () Bool)

(assert (=> tb!258785 m!5897526))

(assert (=> d!1571494 t!365532))

(declare-fun b_and!344773 () Bool)

(assert (= b_and!344755 (and (=> t!365532 result!322348) b_and!344773)))

(declare-fun t!365534 () Bool)

(declare-fun tb!258787 () Bool)

(assert (=> (and b!4891010 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) t!365534) tb!258787))

(declare-fun result!322350 () Bool)

(assert (= result!322350 result!322348))

(assert (=> d!1571494 t!365534))

(declare-fun b_and!344775 () Bool)

(assert (= b_and!344757 (and (=> t!365534 result!322350) b_and!344775)))

(declare-fun t!365536 () Bool)

(declare-fun tb!258789 () Bool)

(assert (=> (and b!4891741 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) t!365536) tb!258789))

(declare-fun result!322352 () Bool)

(assert (= result!322352 result!322348))

(assert (=> d!1571494 t!365536))

(declare-fun b_and!344777 () Bool)

(assert (= b_and!344759 (and (=> t!365536 result!322352) b_and!344777)))

(declare-fun b_lambda!194321 () Bool)

(assert (=> (not b_lambda!194321) (not d!1571494)))

(declare-fun t!365538 () Bool)

(declare-fun tb!258791 () Bool)

(assert (=> (and b!4890709 (= (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) t!365538) tb!258791))

(declare-fun result!322354 () Bool)

(assert (=> tb!258791 (= result!322354 (inv!21 (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (seqFromList!5936 (list!17722 (_1!33527 lt!2005051))))))))

(declare-fun m!5897528 () Bool)

(assert (=> tb!258791 m!5897528))

(assert (=> d!1571494 t!365538))

(declare-fun b_and!344779 () Bool)

(assert (= b_and!344773 (and (=> t!365538 result!322354) b_and!344779)))

(declare-fun t!365540 () Bool)

(declare-fun tb!258793 () Bool)

(assert (=> (and b!4891010 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) t!365540) tb!258793))

(declare-fun result!322356 () Bool)

(assert (= result!322356 result!322354))

(assert (=> d!1571494 t!365540))

(declare-fun b_and!344781 () Bool)

(assert (= b_and!344775 (and (=> t!365540 result!322356) b_and!344781)))

(declare-fun t!365542 () Bool)

(declare-fun tb!258795 () Bool)

(assert (=> (and b!4891741 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) t!365542) tb!258795))

(declare-fun result!322358 () Bool)

(assert (= result!322358 result!322354))

(assert (=> d!1571494 t!365542))

(declare-fun b_and!344783 () Bool)

(assert (= b_and!344777 (and (=> t!365542 result!322358) b_and!344783)))

(assert (=> d!1571494 m!5895194))

(assert (=> d!1571494 m!5895200))

(declare-fun m!5897530 () Bool)

(assert (=> d!1571494 m!5897530))

(assert (=> d!1571494 m!5895200))

(declare-fun m!5897532 () Bool)

(assert (=> d!1571494 m!5897532))

(declare-fun m!5897534 () Bool)

(assert (=> d!1571494 m!5897534))

(assert (=> d!1571494 m!5895200))

(declare-fun m!5897536 () Bool)

(assert (=> d!1571494 m!5897536))

(assert (=> b!4891527 d!1571494))

(declare-fun d!1571496 () Bool)

(assert (=> d!1571496 (dynLambda!22630 lambda!243993 (_1!33527 lt!2005051))))

(declare-fun lt!2005641 () Unit!146398)

(assert (=> d!1571496 (= lt!2005641 (choose!35704 lambda!243993 (_1!33527 lt!2005051)))))

(assert (=> d!1571496 (Forall!1686 lambda!243993)))

(assert (=> d!1571496 (= (ForallOf!1132 lambda!243993 (_1!33527 lt!2005051)) lt!2005641)))

(declare-fun b_lambda!194323 () Bool)

(assert (=> (not b_lambda!194323) (not d!1571496)))

(declare-fun bs!1175990 () Bool)

(assert (= bs!1175990 d!1571496))

(declare-fun m!5897538 () Bool)

(assert (=> bs!1175990 m!5897538))

(declare-fun m!5897540 () Bool)

(assert (=> bs!1175990 m!5897540))

(declare-fun m!5897542 () Bool)

(assert (=> bs!1175990 m!5897542))

(assert (=> b!4891527 d!1571496))

(declare-fun d!1571498 () Bool)

(assert (=> d!1571498 (= (isEmpty!30257 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 (t!365275 rulesArg!165))) Nil!56403 (size!37138 Nil!56403) lt!2005053 lt!2005053 (size!37138 lt!2005053)))) ((_ is Nil!56403) (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 (t!365275 rulesArg!165))) Nil!56403 (size!37138 Nil!56403) lt!2005053 lt!2005053 (size!37138 lt!2005053)))))))

(assert (=> b!4891527 d!1571498))

(declare-fun d!1571500 () Bool)

(assert (=> d!1571500 (= (list!17722 (_1!33527 lt!2005051)) (list!17724 (c!831175 (_1!33527 lt!2005051))))))

(declare-fun bs!1175991 () Bool)

(assert (= bs!1175991 d!1571500))

(declare-fun m!5897544 () Bool)

(assert (=> bs!1175991 m!5897544))

(assert (=> b!4891527 d!1571500))

(declare-fun d!1571502 () Bool)

(assert (=> d!1571502 (dynLambda!22630 lambda!243993 (seqFromList!5936 (list!17722 (_1!33527 lt!2005051))))))

(declare-fun lt!2005642 () Unit!146398)

(assert (=> d!1571502 (= lt!2005642 (choose!35704 lambda!243993 (seqFromList!5936 (list!17722 (_1!33527 lt!2005051)))))))

(assert (=> d!1571502 (Forall!1686 lambda!243993)))

(assert (=> d!1571502 (= (ForallOf!1132 lambda!243993 (seqFromList!5936 (list!17722 (_1!33527 lt!2005051)))) lt!2005642)))

(declare-fun b_lambda!194325 () Bool)

(assert (=> (not b_lambda!194325) (not d!1571502)))

(declare-fun bs!1175992 () Bool)

(assert (= bs!1175992 d!1571502))

(assert (=> bs!1175992 m!5895200))

(declare-fun m!5897546 () Bool)

(assert (=> bs!1175992 m!5897546))

(assert (=> bs!1175992 m!5895200))

(declare-fun m!5897548 () Bool)

(assert (=> bs!1175992 m!5897548))

(assert (=> bs!1175992 m!5897542))

(assert (=> b!4891527 d!1571502))

(declare-fun d!1571504 () Bool)

(assert (=> d!1571504 (= (apply!13540 (transformation!8174 (h!62853 (t!365275 rulesArg!165))) (_1!33527 lt!2005051)) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (_1!33527 lt!2005051)))))

(declare-fun b_lambda!194327 () Bool)

(assert (=> (not b_lambda!194327) (not d!1571504)))

(assert (=> d!1571504 t!365532))

(declare-fun b_and!344785 () Bool)

(assert (= b_and!344779 (and (=> t!365532 result!322348) b_and!344785)))

(assert (=> d!1571504 t!365534))

(declare-fun b_and!344787 () Bool)

(assert (= b_and!344781 (and (=> t!365534 result!322350) b_and!344787)))

(assert (=> d!1571504 t!365536))

(declare-fun b_and!344789 () Bool)

(assert (= b_and!344783 (and (=> t!365536 result!322352) b_and!344789)))

(assert (=> d!1571504 m!5897534))

(assert (=> b!4891527 d!1571504))

(assert (=> b!4891527 d!1571362))

(assert (=> b!4891527 d!1570634))

(assert (=> b!4891085 d!1571352))

(declare-fun d!1571506 () Bool)

(assert (=> d!1571506 (= (head!10455 (tail!9601 lt!2004534)) (h!62851 (tail!9601 lt!2004534)))))

(assert (=> b!4891076 d!1571506))

(declare-fun d!1571508 () Bool)

(declare-fun lt!2005643 () Bool)

(assert (=> d!1571508 (= lt!2005643 (select (content!10016 (t!365275 rulesArg!165)) (rule!11358 (_1!33526 (get!19478 lt!2004672)))))))

(declare-fun e!3058758 () Bool)

(assert (=> d!1571508 (= lt!2005643 e!3058758)))

(declare-fun res!2089676 () Bool)

(assert (=> d!1571508 (=> (not res!2089676) (not e!3058758))))

(assert (=> d!1571508 (= res!2089676 ((_ is Cons!56405) (t!365275 rulesArg!165)))))

(assert (=> d!1571508 (= (contains!19437 (t!365275 rulesArg!165) (rule!11358 (_1!33526 (get!19478 lt!2004672)))) lt!2005643)))

(declare-fun b!4892809 () Bool)

(declare-fun e!3058757 () Bool)

(assert (=> b!4892809 (= e!3058758 e!3058757)))

(declare-fun res!2089677 () Bool)

(assert (=> b!4892809 (=> res!2089677 e!3058757)))

(assert (=> b!4892809 (= res!2089677 (= (h!62853 (t!365275 rulesArg!165)) (rule!11358 (_1!33526 (get!19478 lt!2004672)))))))

(declare-fun b!4892810 () Bool)

(assert (=> b!4892810 (= e!3058757 (contains!19437 (t!365275 (t!365275 rulesArg!165)) (rule!11358 (_1!33526 (get!19478 lt!2004672)))))))

(assert (= (and d!1571508 res!2089676) b!4892809))

(assert (= (and b!4892809 (not res!2089677)) b!4892810))

(assert (=> d!1571508 m!5897300))

(declare-fun m!5897550 () Bool)

(assert (=> d!1571508 m!5897550))

(declare-fun m!5897552 () Bool)

(assert (=> b!4892810 m!5897552))

(assert (=> b!4891514 d!1571508))

(declare-fun b!4892812 () Bool)

(declare-fun e!3058759 () List!56527)

(declare-fun e!3058760 () List!56527)

(assert (=> b!4892812 (= e!3058759 e!3058760)))

(declare-fun c!831598 () Bool)

(assert (=> b!4892812 (= c!831598 ((_ is Leaf!24546) (c!831175 (_2!33525 (get!19479 lt!2004579)))))))

(declare-fun d!1571510 () Bool)

(declare-fun c!831597 () Bool)

(assert (=> d!1571510 (= c!831597 ((_ is Empty!14742) (c!831175 (_2!33525 (get!19479 lt!2004579)))))))

(assert (=> d!1571510 (= (list!17724 (c!831175 (_2!33525 (get!19479 lt!2004579)))) e!3058759)))

(declare-fun b!4892813 () Bool)

(assert (=> b!4892813 (= e!3058760 (list!17726 (xs!18058 (c!831175 (_2!33525 (get!19479 lt!2004579))))))))

(declare-fun b!4892811 () Bool)

(assert (=> b!4892811 (= e!3058759 Nil!56403)))

(declare-fun b!4892814 () Bool)

(assert (=> b!4892814 (= e!3058760 (++!12243 (list!17724 (left!40975 (c!831175 (_2!33525 (get!19479 lt!2004579))))) (list!17724 (right!41305 (c!831175 (_2!33525 (get!19479 lt!2004579)))))))))

(assert (= (and d!1571510 c!831597) b!4892811))

(assert (= (and d!1571510 (not c!831597)) b!4892812))

(assert (= (and b!4892812 c!831598) b!4892813))

(assert (= (and b!4892812 (not c!831598)) b!4892814))

(declare-fun m!5897554 () Bool)

(assert (=> b!4892813 m!5897554))

(declare-fun m!5897556 () Bool)

(assert (=> b!4892814 m!5897556))

(declare-fun m!5897558 () Bool)

(assert (=> b!4892814 m!5897558))

(assert (=> b!4892814 m!5897556))

(assert (=> b!4892814 m!5897558))

(declare-fun m!5897560 () Bool)

(assert (=> b!4892814 m!5897560))

(assert (=> d!1570566 d!1571510))

(assert (=> d!1570780 d!1570782))

(declare-fun d!1571512 () Bool)

(assert (=> d!1571512 (isPrefix!4894 lt!2004578 lt!2004581)))

(assert (=> d!1571512 true))

(declare-fun _$45!2167 () Unit!146398)

(assert (=> d!1571512 (= (choose!35699 lt!2004578 lt!2004581) _$45!2167)))

(declare-fun bs!1175993 () Bool)

(assert (= bs!1175993 d!1571512))

(assert (=> bs!1175993 m!5894246))

(assert (=> d!1570780 d!1571512))

(declare-fun d!1571514 () Bool)

(declare-fun lt!2005646 () Int)

(assert (=> d!1571514 (= lt!2005646 (size!37138 (list!17724 (left!40975 (c!831175 input!1236)))))))

(assert (=> d!1571514 (= lt!2005646 (ite ((_ is Empty!14742) (left!40975 (c!831175 input!1236))) 0 (ite ((_ is Leaf!24546) (left!40975 (c!831175 input!1236))) (csize!29715 (left!40975 (c!831175 input!1236))) (csize!29714 (left!40975 (c!831175 input!1236))))))))

(assert (=> d!1571514 (= (size!37142 (left!40975 (c!831175 input!1236))) lt!2005646)))

(declare-fun bs!1175994 () Bool)

(assert (= bs!1175994 d!1571514))

(assert (=> bs!1175994 m!5894538))

(assert (=> bs!1175994 m!5894538))

(assert (=> bs!1175994 m!5897356))

(assert (=> d!1570790 d!1571514))

(declare-fun d!1571516 () Bool)

(declare-fun lt!2005647 () Int)

(assert (=> d!1571516 (= lt!2005647 (size!37138 (list!17724 (right!41305 (c!831175 input!1236)))))))

(assert (=> d!1571516 (= lt!2005647 (ite ((_ is Empty!14742) (right!41305 (c!831175 input!1236))) 0 (ite ((_ is Leaf!24546) (right!41305 (c!831175 input!1236))) (csize!29715 (right!41305 (c!831175 input!1236))) (csize!29714 (right!41305 (c!831175 input!1236))))))))

(assert (=> d!1571516 (= (size!37142 (right!41305 (c!831175 input!1236))) lt!2005647)))

(declare-fun bs!1175995 () Bool)

(assert (= bs!1175995 d!1571516))

(assert (=> bs!1175995 m!5894540))

(assert (=> bs!1175995 m!5894540))

(assert (=> bs!1175995 m!5897358))

(assert (=> d!1570790 d!1571516))

(declare-fun b!4892817 () Bool)

(declare-fun res!2089679 () Bool)

(declare-fun e!3058762 () Bool)

(assert (=> b!4892817 (=> (not res!2089679) (not e!3058762))))

(declare-fun lt!2005648 () List!56527)

(assert (=> b!4892817 (= res!2089679 (= (size!37138 lt!2005648) (+ (size!37138 (list!17724 (left!40975 (c!831175 (_2!33525 lt!2004536))))) (size!37138 (list!17724 (right!41305 (c!831175 (_2!33525 lt!2004536))))))))))

(declare-fun b!4892818 () Bool)

(assert (=> b!4892818 (= e!3058762 (or (not (= (list!17724 (right!41305 (c!831175 (_2!33525 lt!2004536)))) Nil!56403)) (= lt!2005648 (list!17724 (left!40975 (c!831175 (_2!33525 lt!2004536)))))))))

(declare-fun b!4892815 () Bool)

(declare-fun e!3058761 () List!56527)

(assert (=> b!4892815 (= e!3058761 (list!17724 (right!41305 (c!831175 (_2!33525 lt!2004536)))))))

(declare-fun d!1571518 () Bool)

(assert (=> d!1571518 e!3058762))

(declare-fun res!2089678 () Bool)

(assert (=> d!1571518 (=> (not res!2089678) (not e!3058762))))

(assert (=> d!1571518 (= res!2089678 (= (content!10015 lt!2005648) ((_ map or) (content!10015 (list!17724 (left!40975 (c!831175 (_2!33525 lt!2004536))))) (content!10015 (list!17724 (right!41305 (c!831175 (_2!33525 lt!2004536))))))))))

(assert (=> d!1571518 (= lt!2005648 e!3058761)))

(declare-fun c!831599 () Bool)

(assert (=> d!1571518 (= c!831599 ((_ is Nil!56403) (list!17724 (left!40975 (c!831175 (_2!33525 lt!2004536))))))))

(assert (=> d!1571518 (= (++!12243 (list!17724 (left!40975 (c!831175 (_2!33525 lt!2004536)))) (list!17724 (right!41305 (c!831175 (_2!33525 lt!2004536))))) lt!2005648)))

(declare-fun b!4892816 () Bool)

(assert (=> b!4892816 (= e!3058761 (Cons!56403 (h!62851 (list!17724 (left!40975 (c!831175 (_2!33525 lt!2004536))))) (++!12243 (t!365273 (list!17724 (left!40975 (c!831175 (_2!33525 lt!2004536))))) (list!17724 (right!41305 (c!831175 (_2!33525 lt!2004536)))))))))

(assert (= (and d!1571518 c!831599) b!4892815))

(assert (= (and d!1571518 (not c!831599)) b!4892816))

(assert (= (and d!1571518 res!2089678) b!4892817))

(assert (= (and b!4892817 res!2089679) b!4892818))

(declare-fun m!5897562 () Bool)

(assert (=> b!4892817 m!5897562))

(assert (=> b!4892817 m!5894564))

(declare-fun m!5897564 () Bool)

(assert (=> b!4892817 m!5897564))

(assert (=> b!4892817 m!5894566))

(declare-fun m!5897566 () Bool)

(assert (=> b!4892817 m!5897566))

(declare-fun m!5897568 () Bool)

(assert (=> d!1571518 m!5897568))

(assert (=> d!1571518 m!5894564))

(declare-fun m!5897570 () Bool)

(assert (=> d!1571518 m!5897570))

(assert (=> d!1571518 m!5894566))

(declare-fun m!5897572 () Bool)

(assert (=> d!1571518 m!5897572))

(assert (=> b!4892816 m!5894566))

(declare-fun m!5897574 () Bool)

(assert (=> b!4892816 m!5897574))

(assert (=> b!4891082 d!1571518))

(declare-fun b!4892820 () Bool)

(declare-fun e!3058763 () List!56527)

(declare-fun e!3058764 () List!56527)

(assert (=> b!4892820 (= e!3058763 e!3058764)))

(declare-fun c!831601 () Bool)

(assert (=> b!4892820 (= c!831601 ((_ is Leaf!24546) (left!40975 (c!831175 (_2!33525 lt!2004536)))))))

(declare-fun d!1571520 () Bool)

(declare-fun c!831600 () Bool)

(assert (=> d!1571520 (= c!831600 ((_ is Empty!14742) (left!40975 (c!831175 (_2!33525 lt!2004536)))))))

(assert (=> d!1571520 (= (list!17724 (left!40975 (c!831175 (_2!33525 lt!2004536)))) e!3058763)))

(declare-fun b!4892821 () Bool)

(assert (=> b!4892821 (= e!3058764 (list!17726 (xs!18058 (left!40975 (c!831175 (_2!33525 lt!2004536))))))))

(declare-fun b!4892819 () Bool)

(assert (=> b!4892819 (= e!3058763 Nil!56403)))

(declare-fun b!4892822 () Bool)

(assert (=> b!4892822 (= e!3058764 (++!12243 (list!17724 (left!40975 (left!40975 (c!831175 (_2!33525 lt!2004536))))) (list!17724 (right!41305 (left!40975 (c!831175 (_2!33525 lt!2004536)))))))))

(assert (= (and d!1571520 c!831600) b!4892819))

(assert (= (and d!1571520 (not c!831600)) b!4892820))

(assert (= (and b!4892820 c!831601) b!4892821))

(assert (= (and b!4892820 (not c!831601)) b!4892822))

(declare-fun m!5897576 () Bool)

(assert (=> b!4892821 m!5897576))

(declare-fun m!5897578 () Bool)

(assert (=> b!4892822 m!5897578))

(declare-fun m!5897580 () Bool)

(assert (=> b!4892822 m!5897580))

(assert (=> b!4892822 m!5897578))

(assert (=> b!4892822 m!5897580))

(declare-fun m!5897582 () Bool)

(assert (=> b!4892822 m!5897582))

(assert (=> b!4891082 d!1571520))

(declare-fun b!4892824 () Bool)

(declare-fun e!3058765 () List!56527)

(declare-fun e!3058766 () List!56527)

(assert (=> b!4892824 (= e!3058765 e!3058766)))

(declare-fun c!831603 () Bool)

(assert (=> b!4892824 (= c!831603 ((_ is Leaf!24546) (right!41305 (c!831175 (_2!33525 lt!2004536)))))))

(declare-fun d!1571522 () Bool)

(declare-fun c!831602 () Bool)

(assert (=> d!1571522 (= c!831602 ((_ is Empty!14742) (right!41305 (c!831175 (_2!33525 lt!2004536)))))))

(assert (=> d!1571522 (= (list!17724 (right!41305 (c!831175 (_2!33525 lt!2004536)))) e!3058765)))

(declare-fun b!4892825 () Bool)

(assert (=> b!4892825 (= e!3058766 (list!17726 (xs!18058 (right!41305 (c!831175 (_2!33525 lt!2004536))))))))

(declare-fun b!4892823 () Bool)

(assert (=> b!4892823 (= e!3058765 Nil!56403)))

(declare-fun b!4892826 () Bool)

(assert (=> b!4892826 (= e!3058766 (++!12243 (list!17724 (left!40975 (right!41305 (c!831175 (_2!33525 lt!2004536))))) (list!17724 (right!41305 (right!41305 (c!831175 (_2!33525 lt!2004536)))))))))

(assert (= (and d!1571522 c!831602) b!4892823))

(assert (= (and d!1571522 (not c!831602)) b!4892824))

(assert (= (and b!4892824 c!831603) b!4892825))

(assert (= (and b!4892824 (not c!831603)) b!4892826))

(declare-fun m!5897584 () Bool)

(assert (=> b!4892825 m!5897584))

(declare-fun m!5897586 () Bool)

(assert (=> b!4892826 m!5897586))

(declare-fun m!5897588 () Bool)

(assert (=> b!4892826 m!5897588))

(assert (=> b!4892826 m!5897586))

(assert (=> b!4892826 m!5897588))

(declare-fun m!5897590 () Bool)

(assert (=> b!4892826 m!5897590))

(assert (=> b!4891082 d!1571522))

(assert (=> b!4891170 d!1571432))

(declare-fun d!1571524 () Bool)

(declare-fun lt!2005649 () Int)

(assert (=> d!1571524 (>= lt!2005649 0)))

(declare-fun e!3058767 () Int)

(assert (=> d!1571524 (= lt!2005649 e!3058767)))

(declare-fun c!831604 () Bool)

(assert (=> d!1571524 (= c!831604 ((_ is Nil!56403) (_1!33528 lt!2004942)))))

(assert (=> d!1571524 (= (size!37138 (_1!33528 lt!2004942)) lt!2005649)))

(declare-fun b!4892827 () Bool)

(assert (=> b!4892827 (= e!3058767 0)))

(declare-fun b!4892828 () Bool)

(assert (=> b!4892828 (= e!3058767 (+ 1 (size!37138 (t!365273 (_1!33528 lt!2004942)))))))

(assert (= (and d!1571524 c!831604) b!4892827))

(assert (= (and d!1571524 (not c!831604)) b!4892828))

(declare-fun m!5897592 () Bool)

(assert (=> b!4892828 m!5897592))

(assert (=> b!4891316 d!1571524))

(assert (=> b!4891316 d!1570634))

(assert (=> b!4891019 d!1570712))

(assert (=> b!4891019 d!1570714))

(declare-fun d!1571526 () Bool)

(declare-fun res!2089680 () Bool)

(declare-fun e!3058768 () Bool)

(assert (=> d!1571526 (=> (not res!2089680) (not e!3058768))))

(assert (=> d!1571526 (= res!2089680 (= (csize!29714 (left!40975 (c!831175 input!1236))) (+ (size!37142 (left!40975 (left!40975 (c!831175 input!1236)))) (size!37142 (right!41305 (left!40975 (c!831175 input!1236)))))))))

(assert (=> d!1571526 (= (inv!72682 (left!40975 (c!831175 input!1236))) e!3058768)))

(declare-fun b!4892829 () Bool)

(declare-fun res!2089681 () Bool)

(assert (=> b!4892829 (=> (not res!2089681) (not e!3058768))))

(assert (=> b!4892829 (= res!2089681 (and (not (= (left!40975 (left!40975 (c!831175 input!1236))) Empty!14742)) (not (= (right!41305 (left!40975 (c!831175 input!1236))) Empty!14742))))))

(declare-fun b!4892830 () Bool)

(declare-fun res!2089682 () Bool)

(assert (=> b!4892830 (=> (not res!2089682) (not e!3058768))))

(assert (=> b!4892830 (= res!2089682 (= (cheight!14953 (left!40975 (c!831175 input!1236))) (+ (max!0 (height!1955 (left!40975 (left!40975 (c!831175 input!1236)))) (height!1955 (right!41305 (left!40975 (c!831175 input!1236))))) 1)))))

(declare-fun b!4892831 () Bool)

(assert (=> b!4892831 (= e!3058768 (<= 0 (cheight!14953 (left!40975 (c!831175 input!1236)))))))

(assert (= (and d!1571526 res!2089680) b!4892829))

(assert (= (and b!4892829 res!2089681) b!4892830))

(assert (= (and b!4892830 res!2089682) b!4892831))

(declare-fun m!5897594 () Bool)

(assert (=> d!1571526 m!5897594))

(declare-fun m!5897596 () Bool)

(assert (=> d!1571526 m!5897596))

(declare-fun m!5897598 () Bool)

(assert (=> b!4892830 m!5897598))

(declare-fun m!5897600 () Bool)

(assert (=> b!4892830 m!5897600))

(assert (=> b!4892830 m!5897598))

(assert (=> b!4892830 m!5897600))

(declare-fun m!5897602 () Bool)

(assert (=> b!4892830 m!5897602))

(assert (=> b!4891503 d!1571526))

(declare-fun b!4892832 () Bool)

(declare-fun e!3058770 () Bool)

(declare-fun e!3058769 () Bool)

(assert (=> b!4892832 (= e!3058770 e!3058769)))

(declare-fun res!2089688 () Bool)

(assert (=> b!4892832 (=> (not res!2089688) (not e!3058769))))

(assert (=> b!4892832 (= res!2089688 (<= (- 1) (- (height!1955 (left!40975 (left!40975 (c!831175 input!1236)))) (height!1955 (right!41305 (left!40975 (c!831175 input!1236)))))))))

(declare-fun b!4892833 () Bool)

(declare-fun res!2089687 () Bool)

(assert (=> b!4892833 (=> (not res!2089687) (not e!3058769))))

(assert (=> b!4892833 (= res!2089687 (not (isEmpty!30263 (left!40975 (left!40975 (c!831175 input!1236))))))))

(declare-fun b!4892835 () Bool)

(declare-fun res!2089683 () Bool)

(assert (=> b!4892835 (=> (not res!2089683) (not e!3058769))))

(assert (=> b!4892835 (= res!2089683 (isBalanced!4012 (left!40975 (left!40975 (c!831175 input!1236)))))))

(declare-fun b!4892836 () Bool)

(assert (=> b!4892836 (= e!3058769 (not (isEmpty!30263 (right!41305 (left!40975 (c!831175 input!1236))))))))

(declare-fun b!4892837 () Bool)

(declare-fun res!2089684 () Bool)

(assert (=> b!4892837 (=> (not res!2089684) (not e!3058769))))

(assert (=> b!4892837 (= res!2089684 (isBalanced!4012 (right!41305 (left!40975 (c!831175 input!1236)))))))

(declare-fun b!4892834 () Bool)

(declare-fun res!2089685 () Bool)

(assert (=> b!4892834 (=> (not res!2089685) (not e!3058769))))

(assert (=> b!4892834 (= res!2089685 (<= (- (height!1955 (left!40975 (left!40975 (c!831175 input!1236)))) (height!1955 (right!41305 (left!40975 (c!831175 input!1236))))) 1))))

(declare-fun d!1571528 () Bool)

(declare-fun res!2089686 () Bool)

(assert (=> d!1571528 (=> res!2089686 e!3058770)))

(assert (=> d!1571528 (= res!2089686 (not ((_ is Node!14742) (left!40975 (c!831175 input!1236)))))))

(assert (=> d!1571528 (= (isBalanced!4012 (left!40975 (c!831175 input!1236))) e!3058770)))

(assert (= (and d!1571528 (not res!2089686)) b!4892832))

(assert (= (and b!4892832 res!2089688) b!4892834))

(assert (= (and b!4892834 res!2089685) b!4892835))

(assert (= (and b!4892835 res!2089683) b!4892837))

(assert (= (and b!4892837 res!2089684) b!4892833))

(assert (= (and b!4892833 res!2089687) b!4892836))

(declare-fun m!5897604 () Bool)

(assert (=> b!4892836 m!5897604))

(assert (=> b!4892832 m!5897598))

(assert (=> b!4892832 m!5897600))

(declare-fun m!5897606 () Bool)

(assert (=> b!4892833 m!5897606))

(assert (=> b!4892834 m!5897598))

(assert (=> b!4892834 m!5897600))

(declare-fun m!5897608 () Bool)

(assert (=> b!4892837 m!5897608))

(declare-fun m!5897610 () Bool)

(assert (=> b!4892835 m!5897610))

(assert (=> b!4891500 d!1571528))

(declare-fun b!4892840 () Bool)

(declare-fun res!2089690 () Bool)

(declare-fun e!3058772 () Bool)

(assert (=> b!4892840 (=> (not res!2089690) (not e!3058772))))

(declare-fun lt!2005650 () List!56527)

(assert (=> b!4892840 (= res!2089690 (= (size!37138 lt!2005650) (+ (size!37138 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2005117))))) (size!37138 (_2!33526 (get!19478 lt!2005117))))))))

(declare-fun b!4892841 () Bool)

(assert (=> b!4892841 (= e!3058772 (or (not (= (_2!33526 (get!19478 lt!2005117)) Nil!56403)) (= lt!2005650 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2005117)))))))))

(declare-fun b!4892838 () Bool)

(declare-fun e!3058771 () List!56527)

(assert (=> b!4892838 (= e!3058771 (_2!33526 (get!19478 lt!2005117)))))

(declare-fun d!1571530 () Bool)

(assert (=> d!1571530 e!3058772))

(declare-fun res!2089689 () Bool)

(assert (=> d!1571530 (=> (not res!2089689) (not e!3058772))))

(assert (=> d!1571530 (= res!2089689 (= (content!10015 lt!2005650) ((_ map or) (content!10015 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2005117))))) (content!10015 (_2!33526 (get!19478 lt!2005117))))))))

(assert (=> d!1571530 (= lt!2005650 e!3058771)))

(declare-fun c!831605 () Bool)

(assert (=> d!1571530 (= c!831605 ((_ is Nil!56403) (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2005117))))))))

(assert (=> d!1571530 (= (++!12243 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2005117)))) (_2!33526 (get!19478 lt!2005117))) lt!2005650)))

(declare-fun b!4892839 () Bool)

(assert (=> b!4892839 (= e!3058771 (Cons!56403 (h!62851 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2005117))))) (++!12243 (t!365273 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2005117))))) (_2!33526 (get!19478 lt!2005117)))))))

(assert (= (and d!1571530 c!831605) b!4892838))

(assert (= (and d!1571530 (not c!831605)) b!4892839))

(assert (= (and d!1571530 res!2089689) b!4892840))

(assert (= (and b!4892840 res!2089690) b!4892841))

(declare-fun m!5897612 () Bool)

(assert (=> b!4892840 m!5897612))

(assert (=> b!4892840 m!5895458))

(declare-fun m!5897614 () Bool)

(assert (=> b!4892840 m!5897614))

(assert (=> b!4892840 m!5895472))

(declare-fun m!5897616 () Bool)

(assert (=> d!1571530 m!5897616))

(assert (=> d!1571530 m!5895458))

(declare-fun m!5897618 () Bool)

(assert (=> d!1571530 m!5897618))

(declare-fun m!5897620 () Bool)

(assert (=> d!1571530 m!5897620))

(declare-fun m!5897622 () Bool)

(assert (=> b!4892839 m!5897622))

(assert (=> b!4891652 d!1571530))

(assert (=> b!4891652 d!1571392))

(assert (=> b!4891652 d!1571394))

(assert (=> b!4891652 d!1571396))

(declare-fun d!1571532 () Bool)

(declare-fun c!831608 () Bool)

(assert (=> d!1571532 (= c!831608 ((_ is Nil!56405) rulesArg!165))))

(declare-fun e!3058775 () (InoxSet Rule!16148))

(assert (=> d!1571532 (= (content!10016 rulesArg!165) e!3058775)))

(declare-fun b!4892846 () Bool)

(assert (=> b!4892846 (= e!3058775 ((as const (Array Rule!16148 Bool)) false))))

(declare-fun b!4892847 () Bool)

(assert (=> b!4892847 (= e!3058775 ((_ map or) (store ((as const (Array Rule!16148 Bool)) false) (h!62853 rulesArg!165) true) (content!10016 (t!365275 rulesArg!165))))))

(assert (= (and d!1571532 c!831608) b!4892846))

(assert (= (and d!1571532 (not c!831608)) b!4892847))

(declare-fun m!5897624 () Bool)

(assert (=> b!4892847 m!5897624))

(assert (=> b!4892847 m!5897300))

(assert (=> d!1570716 d!1571532))

(assert (=> d!1570720 d!1570498))

(declare-fun b!4892848 () Bool)

(declare-fun e!3058781 () Bool)

(assert (=> b!4892848 (= e!3058781 (= (head!10455 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004762))))) (c!831176 (regex!8174 (h!62853 rulesArg!165)))))))

(declare-fun b!4892849 () Bool)

(declare-fun e!3058782 () Bool)

(declare-fun lt!2005651 () Bool)

(assert (=> b!4892849 (= e!3058782 (not lt!2005651))))

(declare-fun b!4892850 () Bool)

(declare-fun res!2089698 () Bool)

(declare-fun e!3058776 () Bool)

(assert (=> b!4892850 (=> res!2089698 e!3058776)))

(assert (=> b!4892850 (= res!2089698 (not (isEmpty!30257 (tail!9601 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004762))))))))))

(declare-fun b!4892851 () Bool)

(declare-fun e!3058777 () Bool)

(assert (=> b!4892851 (= e!3058777 e!3058776)))

(declare-fun res!2089695 () Bool)

(assert (=> b!4892851 (=> res!2089695 e!3058776)))

(declare-fun call!339373 () Bool)

(assert (=> b!4892851 (= res!2089695 call!339373)))

(declare-fun b!4892852 () Bool)

(declare-fun res!2089691 () Bool)

(declare-fun e!3058780 () Bool)

(assert (=> b!4892852 (=> res!2089691 e!3058780)))

(assert (=> b!4892852 (= res!2089691 (not ((_ is ElementMatch!13249) (regex!8174 (h!62853 rulesArg!165)))))))

(assert (=> b!4892852 (= e!3058782 e!3058780)))

(declare-fun b!4892853 () Bool)

(assert (=> b!4892853 (= e!3058780 e!3058777)))

(declare-fun res!2089697 () Bool)

(assert (=> b!4892853 (=> (not res!2089697) (not e!3058777))))

(assert (=> b!4892853 (= res!2089697 (not lt!2005651))))

(declare-fun b!4892854 () Bool)

(declare-fun e!3058779 () Bool)

(assert (=> b!4892854 (= e!3058779 (matchR!6530 (derivativeStep!3876 (regex!8174 (h!62853 rulesArg!165)) (head!10455 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004762)))))) (tail!9601 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004762)))))))))

(declare-fun b!4892856 () Bool)

(declare-fun e!3058778 () Bool)

(assert (=> b!4892856 (= e!3058778 e!3058782)))

(declare-fun c!831609 () Bool)

(assert (=> b!4892856 (= c!831609 ((_ is EmptyLang!13249) (regex!8174 (h!62853 rulesArg!165))))))

(declare-fun b!4892857 () Bool)

(declare-fun res!2089694 () Bool)

(assert (=> b!4892857 (=> res!2089694 e!3058780)))

(assert (=> b!4892857 (= res!2089694 e!3058781)))

(declare-fun res!2089693 () Bool)

(assert (=> b!4892857 (=> (not res!2089693) (not e!3058781))))

(assert (=> b!4892857 (= res!2089693 lt!2005651)))

(declare-fun b!4892858 () Bool)

(assert (=> b!4892858 (= e!3058778 (= lt!2005651 call!339373))))

(declare-fun b!4892859 () Bool)

(assert (=> b!4892859 (= e!3058776 (not (= (head!10455 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004762))))) (c!831176 (regex!8174 (h!62853 rulesArg!165))))))))

(declare-fun b!4892860 () Bool)

(declare-fun res!2089696 () Bool)

(assert (=> b!4892860 (=> (not res!2089696) (not e!3058781))))

(assert (=> b!4892860 (= res!2089696 (not call!339373))))

(declare-fun d!1571534 () Bool)

(assert (=> d!1571534 e!3058778))

(declare-fun c!831611 () Bool)

(assert (=> d!1571534 (= c!831611 ((_ is EmptyExpr!13249) (regex!8174 (h!62853 rulesArg!165))))))

(assert (=> d!1571534 (= lt!2005651 e!3058779)))

(declare-fun c!831610 () Bool)

(assert (=> d!1571534 (= c!831610 (isEmpty!30257 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004762))))))))

(assert (=> d!1571534 (validRegex!5882 (regex!8174 (h!62853 rulesArg!165)))))

(assert (=> d!1571534 (= (matchR!6530 (regex!8174 (h!62853 rulesArg!165)) (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004762))))) lt!2005651)))

(declare-fun b!4892855 () Bool)

(assert (=> b!4892855 (= e!3058779 (nullable!4555 (regex!8174 (h!62853 rulesArg!165))))))

(declare-fun b!4892861 () Bool)

(declare-fun res!2089692 () Bool)

(assert (=> b!4892861 (=> (not res!2089692) (not e!3058781))))

(assert (=> b!4892861 (= res!2089692 (isEmpty!30257 (tail!9601 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004762)))))))))

(declare-fun bm!339368 () Bool)

(assert (=> bm!339368 (= call!339373 (isEmpty!30257 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004762))))))))

(assert (= (and d!1571534 c!831610) b!4892855))

(assert (= (and d!1571534 (not c!831610)) b!4892854))

(assert (= (and d!1571534 c!831611) b!4892858))

(assert (= (and d!1571534 (not c!831611)) b!4892856))

(assert (= (and b!4892856 c!831609) b!4892849))

(assert (= (and b!4892856 (not c!831609)) b!4892852))

(assert (= (and b!4892852 (not res!2089691)) b!4892857))

(assert (= (and b!4892857 res!2089693) b!4892860))

(assert (= (and b!4892860 res!2089696) b!4892861))

(assert (= (and b!4892861 res!2089692) b!4892848))

(assert (= (and b!4892857 (not res!2089694)) b!4892853))

(assert (= (and b!4892853 res!2089697) b!4892851))

(assert (= (and b!4892851 (not res!2089695)) b!4892850))

(assert (= (and b!4892850 (not res!2089698)) b!4892859))

(assert (= (or b!4892858 b!4892851 b!4892860) bm!339368))

(assert (=> b!4892848 m!5894628))

(declare-fun m!5897626 () Bool)

(assert (=> b!4892848 m!5897626))

(assert (=> b!4892859 m!5894628))

(assert (=> b!4892859 m!5897626))

(assert (=> b!4892854 m!5894628))

(assert (=> b!4892854 m!5897626))

(assert (=> b!4892854 m!5897626))

(declare-fun m!5897628 () Bool)

(assert (=> b!4892854 m!5897628))

(assert (=> b!4892854 m!5894628))

(declare-fun m!5897630 () Bool)

(assert (=> b!4892854 m!5897630))

(assert (=> b!4892854 m!5897628))

(assert (=> b!4892854 m!5897630))

(declare-fun m!5897632 () Bool)

(assert (=> b!4892854 m!5897632))

(assert (=> b!4892861 m!5894628))

(assert (=> b!4892861 m!5897630))

(assert (=> b!4892861 m!5897630))

(declare-fun m!5897634 () Bool)

(assert (=> b!4892861 m!5897634))

(assert (=> b!4892850 m!5894628))

(assert (=> b!4892850 m!5897630))

(assert (=> b!4892850 m!5897630))

(assert (=> b!4892850 m!5897634))

(assert (=> bm!339368 m!5894628))

(declare-fun m!5897636 () Bool)

(assert (=> bm!339368 m!5897636))

(assert (=> d!1571534 m!5894628))

(assert (=> d!1571534 m!5897636))

(assert (=> d!1571534 m!5894684))

(assert (=> b!4892855 m!5894686))

(assert (=> b!4891118 d!1571534))

(declare-fun d!1571536 () Bool)

(assert (=> d!1571536 (= (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004762)))) (list!17724 (c!831175 (charsOf!5374 (_1!33526 (get!19478 lt!2004762))))))))

(declare-fun bs!1175996 () Bool)

(assert (= bs!1175996 d!1571536))

(declare-fun m!5897638 () Bool)

(assert (=> bs!1175996 m!5897638))

(assert (=> b!4891118 d!1571536))

(declare-fun d!1571538 () Bool)

(declare-fun lt!2005652 () BalanceConc!28914)

(assert (=> d!1571538 (= (list!17722 lt!2005652) (originalCharacters!8487 (_1!33526 (get!19478 lt!2004762))))))

(assert (=> d!1571538 (= lt!2005652 (dynLambda!22627 (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004762))))) (value!262109 (_1!33526 (get!19478 lt!2004762)))))))

(assert (=> d!1571538 (= (charsOf!5374 (_1!33526 (get!19478 lt!2004762))) lt!2005652)))

(declare-fun b_lambda!194329 () Bool)

(assert (=> (not b_lambda!194329) (not d!1571538)))

(declare-fun t!365545 () Bool)

(declare-fun tb!258797 () Bool)

(assert (=> (and b!4890709 (= (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004762)))))) t!365545) tb!258797))

(declare-fun b!4892862 () Bool)

(declare-fun e!3058783 () Bool)

(declare-fun tp!1377020 () Bool)

(assert (=> b!4892862 (= e!3058783 (and (inv!72677 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004762))))) (value!262109 (_1!33526 (get!19478 lt!2004762)))))) tp!1377020))))

(declare-fun result!322360 () Bool)

(assert (=> tb!258797 (= result!322360 (and (inv!72679 (dynLambda!22627 (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004762))))) (value!262109 (_1!33526 (get!19478 lt!2004762))))) e!3058783))))

(assert (= tb!258797 b!4892862))

(declare-fun m!5897640 () Bool)

(assert (=> b!4892862 m!5897640))

(declare-fun m!5897642 () Bool)

(assert (=> tb!258797 m!5897642))

(assert (=> d!1571538 t!365545))

(declare-fun b_and!344791 () Bool)

(assert (= b_and!344767 (and (=> t!365545 result!322360) b_and!344791)))

(declare-fun tb!258799 () Bool)

(declare-fun t!365547 () Bool)

(assert (=> (and b!4891010 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004762)))))) t!365547) tb!258799))

(declare-fun result!322362 () Bool)

(assert (= result!322362 result!322360))

(assert (=> d!1571538 t!365547))

(declare-fun b_and!344793 () Bool)

(assert (= b_and!344769 (and (=> t!365547 result!322362) b_and!344793)))

(declare-fun tb!258801 () Bool)

(declare-fun t!365549 () Bool)

(assert (=> (and b!4891741 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004762)))))) t!365549) tb!258801))

(declare-fun result!322364 () Bool)

(assert (= result!322364 result!322360))

(assert (=> d!1571538 t!365549))

(declare-fun b_and!344795 () Bool)

(assert (= b_and!344771 (and (=> t!365549 result!322364) b_and!344795)))

(declare-fun m!5897644 () Bool)

(assert (=> d!1571538 m!5897644))

(declare-fun m!5897646 () Bool)

(assert (=> d!1571538 m!5897646))

(assert (=> b!4891118 d!1571538))

(assert (=> b!4891118 d!1571404))

(declare-fun d!1571540 () Bool)

(declare-fun res!2089699 () Bool)

(declare-fun e!3058784 () Bool)

(assert (=> d!1571540 (=> (not res!2089699) (not e!3058784))))

(assert (=> d!1571540 (= res!2089699 (validRegex!5882 (regex!8174 (h!62853 (t!365275 rulesArg!165)))))))

(assert (=> d!1571540 (= (ruleValid!3671 thiss!14805 (h!62853 (t!365275 rulesArg!165))) e!3058784)))

(declare-fun b!4892863 () Bool)

(declare-fun res!2089700 () Bool)

(assert (=> b!4892863 (=> (not res!2089700) (not e!3058784))))

(assert (=> b!4892863 (= res!2089700 (not (nullable!4555 (regex!8174 (h!62853 (t!365275 rulesArg!165))))))))

(declare-fun b!4892864 () Bool)

(assert (=> b!4892864 (= e!3058784 (not (= (tag!9038 (h!62853 (t!365275 rulesArg!165))) (String!63863 ""))))))

(assert (= (and d!1571540 res!2089699) b!4892863))

(assert (= (and b!4892863 res!2089700) b!4892864))

(assert (=> d!1571540 m!5897110))

(assert (=> b!4892863 m!5897112))

(assert (=> d!1570722 d!1571540))

(declare-fun d!1571542 () Bool)

(assert (=> d!1571542 (= (isDefined!11038 lt!2005047) (not (isEmpty!30262 lt!2005047)))))

(declare-fun bs!1175997 () Bool)

(assert (= bs!1175997 d!1571542))

(declare-fun m!5897648 () Bool)

(assert (=> bs!1175997 m!5897648))

(assert (=> d!1570722 d!1571542))

(assert (=> d!1570722 d!1571328))

(declare-fun d!1571544 () Bool)

(declare-fun lt!2005653 () Bool)

(assert (=> d!1571544 (= lt!2005653 (isEmpty!30257 (list!17722 (_1!33527 lt!2005051))))))

(assert (=> d!1571544 (= lt!2005653 (isEmpty!30263 (c!831175 (_1!33527 lt!2005051))))))

(assert (=> d!1571544 (= (isEmpty!30256 (_1!33527 lt!2005051)) lt!2005653)))

(declare-fun bs!1175998 () Bool)

(assert (= bs!1175998 d!1571544))

(assert (=> bs!1175998 m!5895194))

(assert (=> bs!1175998 m!5895194))

(declare-fun m!5897650 () Bool)

(assert (=> bs!1175998 m!5897650))

(declare-fun m!5897652 () Bool)

(assert (=> bs!1175998 m!5897652))

(assert (=> d!1570722 d!1571544))

(assert (=> d!1570722 d!1570502))

(declare-fun d!1571546 () Bool)

(declare-fun lt!2005654 () tuple2!60448)

(assert (=> d!1571546 (= (tuple2!60451 (list!17722 (_1!33527 lt!2005654)) (list!17722 (_2!33527 lt!2005654))) (findLongestMatch!1646 (regex!8174 (h!62853 (t!365275 rulesArg!165))) (list!17722 input!1236)))))

(assert (=> d!1571546 (= lt!2005654 (choose!35702 (regex!8174 (h!62853 (t!365275 rulesArg!165))) input!1236))))

(assert (=> d!1571546 (validRegex!5882 (regex!8174 (h!62853 (t!365275 rulesArg!165))))))

(assert (=> d!1571546 (= (findLongestMatchWithZipperSequence!267 (regex!8174 (h!62853 (t!365275 rulesArg!165))) input!1236) lt!2005654)))

(declare-fun bs!1175999 () Bool)

(assert (= bs!1175999 d!1571546))

(assert (=> bs!1175999 m!5897110))

(assert (=> bs!1175999 m!5894176))

(assert (=> bs!1175999 m!5896994))

(declare-fun m!5897654 () Bool)

(assert (=> bs!1175999 m!5897654))

(assert (=> bs!1175999 m!5894176))

(declare-fun m!5897656 () Bool)

(assert (=> bs!1175999 m!5897656))

(declare-fun m!5897658 () Bool)

(assert (=> bs!1175999 m!5897658))

(assert (=> d!1570722 d!1571546))

(declare-fun d!1571548 () Bool)

(assert (=> d!1571548 (= (isDefined!11037 (maxPrefixOneRule!3529 thiss!14805 (h!62853 (t!365275 rulesArg!165)) (list!17722 input!1236))) (not (isEmpty!30258 (maxPrefixOneRule!3529 thiss!14805 (h!62853 (t!365275 rulesArg!165)) (list!17722 input!1236)))))))

(declare-fun bs!1176000 () Bool)

(assert (= bs!1176000 d!1571548))

(assert (=> bs!1176000 m!5894658))

(declare-fun m!5897660 () Bool)

(assert (=> bs!1176000 m!5897660))

(assert (=> d!1570722 d!1571548))

(assert (=> b!4891174 d!1571334))

(declare-fun b!4892865 () Bool)

(declare-fun e!3058787 () Regex!13249)

(declare-fun e!3058789 () Regex!13249)

(assert (=> b!4892865 (= e!3058787 e!3058789)))

(declare-fun c!831614 () Bool)

(assert (=> b!4892865 (= c!831614 ((_ is Star!13249) (regex!8174 (h!62853 rulesArg!165))))))

(declare-fun call!339377 () Regex!13249)

(declare-fun c!831615 () Bool)

(declare-fun bm!339369 () Bool)

(assert (=> bm!339369 (= call!339377 (derivativeStep!3876 (ite c!831615 (regOne!27011 (regex!8174 (h!62853 rulesArg!165))) (ite c!831614 (reg!13578 (regex!8174 (h!62853 rulesArg!165))) (regOne!27010 (regex!8174 (h!62853 rulesArg!165))))) call!339234))))

(declare-fun b!4892866 () Bool)

(declare-fun e!3058786 () Regex!13249)

(declare-fun call!339375 () Regex!13249)

(assert (=> b!4892866 (= e!3058786 (Union!13249 (Concat!21734 call!339375 (regTwo!27010 (regex!8174 (h!62853 rulesArg!165)))) EmptyLang!13249))))

(declare-fun b!4892867 () Bool)

(declare-fun call!339374 () Regex!13249)

(assert (=> b!4892867 (= e!3058789 (Concat!21734 call!339374 (regex!8174 (h!62853 rulesArg!165))))))

(declare-fun d!1571550 () Bool)

(declare-fun lt!2005655 () Regex!13249)

(assert (=> d!1571550 (validRegex!5882 lt!2005655)))

(declare-fun e!3058785 () Regex!13249)

(assert (=> d!1571550 (= lt!2005655 e!3058785)))

(declare-fun c!831616 () Bool)

(assert (=> d!1571550 (= c!831616 (or ((_ is EmptyExpr!13249) (regex!8174 (h!62853 rulesArg!165))) ((_ is EmptyLang!13249) (regex!8174 (h!62853 rulesArg!165)))))))

(assert (=> d!1571550 (validRegex!5882 (regex!8174 (h!62853 rulesArg!165)))))

(assert (=> d!1571550 (= (derivativeStep!3876 (regex!8174 (h!62853 rulesArg!165)) call!339234) lt!2005655)))

(declare-fun bm!339370 () Bool)

(assert (=> bm!339370 (= call!339375 call!339374)))

(declare-fun b!4892868 () Bool)

(assert (=> b!4892868 (= e!3058785 EmptyLang!13249)))

(declare-fun call!339376 () Regex!13249)

(declare-fun bm!339371 () Bool)

(assert (=> bm!339371 (= call!339376 (derivativeStep!3876 (ite c!831615 (regTwo!27011 (regex!8174 (h!62853 rulesArg!165))) (regTwo!27010 (regex!8174 (h!62853 rulesArg!165)))) call!339234))))

(declare-fun b!4892869 () Bool)

(assert (=> b!4892869 (= c!831615 ((_ is Union!13249) (regex!8174 (h!62853 rulesArg!165))))))

(declare-fun e!3058788 () Regex!13249)

(assert (=> b!4892869 (= e!3058788 e!3058787)))

(declare-fun b!4892870 () Bool)

(assert (=> b!4892870 (= e!3058788 (ite (= call!339234 (c!831176 (regex!8174 (h!62853 rulesArg!165)))) EmptyExpr!13249 EmptyLang!13249))))

(declare-fun b!4892871 () Bool)

(assert (=> b!4892871 (= e!3058787 (Union!13249 call!339377 call!339376))))

(declare-fun b!4892872 () Bool)

(assert (=> b!4892872 (= e!3058785 e!3058788)))

(declare-fun c!831613 () Bool)

(assert (=> b!4892872 (= c!831613 ((_ is ElementMatch!13249) (regex!8174 (h!62853 rulesArg!165))))))

(declare-fun b!4892873 () Bool)

(declare-fun c!831612 () Bool)

(assert (=> b!4892873 (= c!831612 (nullable!4555 (regOne!27010 (regex!8174 (h!62853 rulesArg!165)))))))

(assert (=> b!4892873 (= e!3058789 e!3058786)))

(declare-fun b!4892874 () Bool)

(assert (=> b!4892874 (= e!3058786 (Union!13249 (Concat!21734 call!339375 (regTwo!27010 (regex!8174 (h!62853 rulesArg!165)))) call!339376))))

(declare-fun bm!339372 () Bool)

(assert (=> bm!339372 (= call!339374 call!339377)))

(assert (= (and d!1571550 c!831616) b!4892868))

(assert (= (and d!1571550 (not c!831616)) b!4892872))

(assert (= (and b!4892872 c!831613) b!4892870))

(assert (= (and b!4892872 (not c!831613)) b!4892869))

(assert (= (and b!4892869 c!831615) b!4892871))

(assert (= (and b!4892869 (not c!831615)) b!4892865))

(assert (= (and b!4892865 c!831614) b!4892867))

(assert (= (and b!4892865 (not c!831614)) b!4892873))

(assert (= (and b!4892873 c!831612) b!4892874))

(assert (= (and b!4892873 (not c!831612)) b!4892866))

(assert (= (or b!4892874 b!4892866) bm!339370))

(assert (= (or b!4892867 bm!339370) bm!339372))

(assert (= (or b!4892871 bm!339372) bm!339369))

(assert (= (or b!4892871 b!4892874) bm!339371))

(declare-fun m!5897662 () Bool)

(assert (=> bm!339369 m!5897662))

(declare-fun m!5897664 () Bool)

(assert (=> d!1571550 m!5897664))

(assert (=> d!1571550 m!5894684))

(declare-fun m!5897666 () Bool)

(assert (=> bm!339371 m!5897666))

(declare-fun m!5897668 () Bool)

(assert (=> b!4892873 m!5897668))

(assert (=> bm!339229 d!1571550))

(assert (=> b!4891073 d!1571540))

(declare-fun d!1571552 () Bool)

(declare-fun c!831617 () Bool)

(assert (=> d!1571552 (= c!831617 ((_ is IntegerValue!25452) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (_1!33527 lt!2004658))))))

(declare-fun e!3058792 () Bool)

(assert (=> d!1571552 (= (inv!21 (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (_1!33527 lt!2004658))) e!3058792)))

(declare-fun b!4892875 () Bool)

(declare-fun e!3058791 () Bool)

(assert (=> b!4892875 (= e!3058791 (inv!17 (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (_1!33527 lt!2004658))))))

(declare-fun b!4892876 () Bool)

(declare-fun e!3058790 () Bool)

(assert (=> b!4892876 (= e!3058790 (inv!15 (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (_1!33527 lt!2004658))))))

(declare-fun b!4892877 () Bool)

(assert (=> b!4892877 (= e!3058792 e!3058791)))

(declare-fun c!831618 () Bool)

(assert (=> b!4892877 (= c!831618 ((_ is IntegerValue!25453) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (_1!33527 lt!2004658))))))

(declare-fun b!4892878 () Bool)

(assert (=> b!4892878 (= e!3058792 (inv!16 (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (_1!33527 lt!2004658))))))

(declare-fun b!4892879 () Bool)

(declare-fun res!2089701 () Bool)

(assert (=> b!4892879 (=> res!2089701 e!3058790)))

(assert (=> b!4892879 (= res!2089701 (not ((_ is IntegerValue!25454) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (_1!33527 lt!2004658)))))))

(assert (=> b!4892879 (= e!3058791 e!3058790)))

(assert (= (and d!1571552 c!831617) b!4892878))

(assert (= (and d!1571552 (not c!831617)) b!4892877))

(assert (= (and b!4892877 c!831618) b!4892875))

(assert (= (and b!4892877 (not c!831618)) b!4892879))

(assert (= (and b!4892879 (not res!2089701)) b!4892876))

(declare-fun m!5897670 () Bool)

(assert (=> b!4892875 m!5897670))

(declare-fun m!5897672 () Bool)

(assert (=> b!4892876 m!5897672))

(declare-fun m!5897674 () Bool)

(assert (=> b!4892878 m!5897674))

(assert (=> tb!258563 d!1571552))

(declare-fun b!4892880 () Bool)

(declare-fun e!3058793 () Bool)

(assert (=> b!4892880 (= e!3058793 (matchR!6530 (regex!8174 (h!62853 (t!365275 rulesArg!165))) (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 (t!365275 rulesArg!165))) Nil!56403 (size!37138 Nil!56403) lt!2004534 lt!2004534 (size!37138 lt!2004534)))))))

(declare-fun b!4892881 () Bool)

(declare-fun e!3058795 () Bool)

(declare-fun e!3058794 () Bool)

(assert (=> b!4892881 (= e!3058795 e!3058794)))

(declare-fun res!2089706 () Bool)

(assert (=> b!4892881 (=> (not res!2089706) (not e!3058794))))

(declare-fun lt!2005659 () Option!14026)

(assert (=> b!4892881 (= res!2089706 (matchR!6530 (regex!8174 (h!62853 (t!365275 rulesArg!165))) (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2005659))))))))

(declare-fun d!1571554 () Bool)

(assert (=> d!1571554 e!3058795))

(declare-fun res!2089707 () Bool)

(assert (=> d!1571554 (=> res!2089707 e!3058795)))

(assert (=> d!1571554 (= res!2089707 (isEmpty!30258 lt!2005659))))

(declare-fun e!3058796 () Option!14026)

(assert (=> d!1571554 (= lt!2005659 e!3058796)))

(declare-fun c!831619 () Bool)

(declare-fun lt!2005656 () tuple2!60450)

(assert (=> d!1571554 (= c!831619 (isEmpty!30257 (_1!33528 lt!2005656)))))

(assert (=> d!1571554 (= lt!2005656 (findLongestMatch!1646 (regex!8174 (h!62853 (t!365275 rulesArg!165))) lt!2004534))))

(assert (=> d!1571554 (ruleValid!3671 thiss!14805 (h!62853 (t!365275 rulesArg!165)))))

(assert (=> d!1571554 (= (maxPrefixOneRule!3529 thiss!14805 (h!62853 (t!365275 rulesArg!165)) lt!2004534) lt!2005659)))

(declare-fun b!4892882 () Bool)

(declare-fun res!2089708 () Bool)

(assert (=> b!4892882 (=> (not res!2089708) (not e!3058794))))

(assert (=> b!4892882 (= res!2089708 (= (rule!11358 (_1!33526 (get!19478 lt!2005659))) (h!62853 (t!365275 rulesArg!165))))))

(declare-fun b!4892883 () Bool)

(assert (=> b!4892883 (= e!3058794 (= (size!37136 (_1!33526 (get!19478 lt!2005659))) (size!37138 (originalCharacters!8487 (_1!33526 (get!19478 lt!2005659))))))))

(declare-fun b!4892884 () Bool)

(assert (=> b!4892884 (= e!3058796 (Some!14025 (tuple2!60447 (Token!14913 (apply!13540 (transformation!8174 (h!62853 (t!365275 rulesArg!165))) (seqFromList!5936 (_1!33528 lt!2005656))) (h!62853 (t!365275 rulesArg!165)) (size!37139 (seqFromList!5936 (_1!33528 lt!2005656))) (_1!33528 lt!2005656)) (_2!33528 lt!2005656))))))

(declare-fun lt!2005660 () Unit!146398)

(assert (=> b!4892884 (= lt!2005660 (longestMatchIsAcceptedByMatchOrIsEmpty!1715 (regex!8174 (h!62853 (t!365275 rulesArg!165))) lt!2004534))))

(declare-fun res!2089705 () Bool)

(assert (=> b!4892884 (= res!2089705 (isEmpty!30257 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 (t!365275 rulesArg!165))) Nil!56403 (size!37138 Nil!56403) lt!2004534 lt!2004534 (size!37138 lt!2004534)))))))

(assert (=> b!4892884 (=> res!2089705 e!3058793)))

(assert (=> b!4892884 e!3058793))

(declare-fun lt!2005657 () Unit!146398)

(assert (=> b!4892884 (= lt!2005657 lt!2005660)))

(declare-fun lt!2005658 () Unit!146398)

(assert (=> b!4892884 (= lt!2005658 (lemmaSemiInverse!2563 (transformation!8174 (h!62853 (t!365275 rulesArg!165))) (seqFromList!5936 (_1!33528 lt!2005656))))))

(declare-fun b!4892885 () Bool)

(assert (=> b!4892885 (= e!3058796 None!14025)))

(declare-fun b!4892886 () Bool)

(declare-fun res!2089702 () Bool)

(assert (=> b!4892886 (=> (not res!2089702) (not e!3058794))))

(assert (=> b!4892886 (= res!2089702 (< (size!37138 (_2!33526 (get!19478 lt!2005659))) (size!37138 lt!2004534)))))

(declare-fun b!4892887 () Bool)

(declare-fun res!2089703 () Bool)

(assert (=> b!4892887 (=> (not res!2089703) (not e!3058794))))

(assert (=> b!4892887 (= res!2089703 (= (value!262109 (_1!33526 (get!19478 lt!2005659))) (apply!13540 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2005659)))) (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2005659)))))))))

(declare-fun b!4892888 () Bool)

(declare-fun res!2089704 () Bool)

(assert (=> b!4892888 (=> (not res!2089704) (not e!3058794))))

(assert (=> b!4892888 (= res!2089704 (= (++!12243 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2005659)))) (_2!33526 (get!19478 lt!2005659))) lt!2004534))))

(assert (= (and d!1571554 c!831619) b!4892885))

(assert (= (and d!1571554 (not c!831619)) b!4892884))

(assert (= (and b!4892884 (not res!2089705)) b!4892880))

(assert (= (and d!1571554 (not res!2089707)) b!4892881))

(assert (= (and b!4892881 res!2089706) b!4892888))

(assert (= (and b!4892888 res!2089704) b!4892886))

(assert (= (and b!4892886 res!2089702) b!4892882))

(assert (= (and b!4892882 res!2089708) b!4892887))

(assert (= (and b!4892887 res!2089703) b!4892883))

(declare-fun m!5897676 () Bool)

(assert (=> b!4892887 m!5897676))

(declare-fun m!5897678 () Bool)

(assert (=> b!4892887 m!5897678))

(assert (=> b!4892887 m!5897678))

(declare-fun m!5897680 () Bool)

(assert (=> b!4892887 m!5897680))

(assert (=> b!4892883 m!5897676))

(declare-fun m!5897682 () Bool)

(assert (=> b!4892883 m!5897682))

(assert (=> b!4892886 m!5897676))

(declare-fun m!5897684 () Bool)

(assert (=> b!4892886 m!5897684))

(assert (=> b!4892886 m!5894382))

(assert (=> b!4892880 m!5894316))

(assert (=> b!4892880 m!5894382))

(assert (=> b!4892880 m!5894316))

(assert (=> b!4892880 m!5894382))

(assert (=> b!4892880 m!5897432))

(assert (=> b!4892880 m!5897434))

(assert (=> b!4892882 m!5897676))

(declare-fun m!5897686 () Bool)

(assert (=> d!1571554 m!5897686))

(declare-fun m!5897688 () Bool)

(assert (=> d!1571554 m!5897688))

(declare-fun m!5897690 () Bool)

(assert (=> d!1571554 m!5897690))

(assert (=> d!1571554 m!5894550))

(assert (=> b!4892881 m!5897676))

(declare-fun m!5897692 () Bool)

(assert (=> b!4892881 m!5897692))

(assert (=> b!4892881 m!5897692))

(declare-fun m!5897694 () Bool)

(assert (=> b!4892881 m!5897694))

(assert (=> b!4892881 m!5897694))

(declare-fun m!5897696 () Bool)

(assert (=> b!4892881 m!5897696))

(assert (=> b!4892884 m!5894316))

(assert (=> b!4892884 m!5894316))

(assert (=> b!4892884 m!5894382))

(assert (=> b!4892884 m!5897432))

(assert (=> b!4892884 m!5897430))

(assert (=> b!4892884 m!5897422))

(declare-fun m!5897698 () Bool)

(assert (=> b!4892884 m!5897698))

(assert (=> b!4892884 m!5897698))

(declare-fun m!5897700 () Bool)

(assert (=> b!4892884 m!5897700))

(assert (=> b!4892884 m!5897698))

(declare-fun m!5897702 () Bool)

(assert (=> b!4892884 m!5897702))

(assert (=> b!4892884 m!5897698))

(declare-fun m!5897704 () Bool)

(assert (=> b!4892884 m!5897704))

(assert (=> b!4892884 m!5894382))

(assert (=> b!4892888 m!5897676))

(assert (=> b!4892888 m!5897692))

(assert (=> b!4892888 m!5897692))

(assert (=> b!4892888 m!5897694))

(assert (=> b!4892888 m!5897694))

(declare-fun m!5897706 () Bool)

(assert (=> b!4892888 m!5897706))

(assert (=> bm!339237 d!1571554))

(assert (=> b!4891341 d!1571444))

(declare-fun d!1571556 () Bool)

(declare-fun e!3058799 () Bool)

(assert (=> d!1571556 e!3058799))

(declare-fun res!2089711 () Bool)

(assert (=> d!1571556 (=> (not res!2089711) (not e!3058799))))

(declare-fun lt!2005663 () BalanceConc!28914)

(assert (=> d!1571556 (= res!2089711 (= (list!17722 lt!2005663) (list!17722 (_1!33527 lt!2004658))))))

(declare-fun fromList!932 (List!56527) Conc!14742)

(assert (=> d!1571556 (= lt!2005663 (BalanceConc!28915 (fromList!932 (list!17722 (_1!33527 lt!2004658)))))))

(assert (=> d!1571556 (= (fromListB!2691 (list!17722 (_1!33527 lt!2004658))) lt!2005663)))

(declare-fun b!4892891 () Bool)

(assert (=> b!4892891 (= e!3058799 (isBalanced!4012 (fromList!932 (list!17722 (_1!33527 lt!2004658)))))))

(assert (= (and d!1571556 res!2089711) b!4892891))

(declare-fun m!5897708 () Bool)

(assert (=> d!1571556 m!5897708))

(assert (=> d!1571556 m!5894342))

(declare-fun m!5897710 () Bool)

(assert (=> d!1571556 m!5897710))

(assert (=> b!4892891 m!5894342))

(assert (=> b!4892891 m!5897710))

(assert (=> b!4892891 m!5897710))

(declare-fun m!5897712 () Bool)

(assert (=> b!4892891 m!5897712))

(assert (=> d!1570744 d!1571556))

(declare-fun d!1571558 () Bool)

(assert (=> d!1571558 (= (isEmpty!30262 lt!2004654) (not ((_ is Some!14024) lt!2004654)))))

(assert (=> d!1570666 d!1571558))

(declare-fun d!1571560 () Bool)

(assert (=> d!1571560 (= (head!10455 lt!2004660) (h!62851 lt!2004660))))

(assert (=> b!4891312 d!1571560))

(declare-fun b!4892894 () Bool)

(declare-fun res!2089713 () Bool)

(declare-fun e!3058801 () Bool)

(assert (=> b!4892894 (=> (not res!2089713) (not e!3058801))))

(declare-fun lt!2005664 () List!56527)

(assert (=> b!4892894 (= res!2089713 (= (size!37138 lt!2005664) (+ (size!37138 Nil!56403) (size!37138 (Cons!56403 (head!10455 (getSuffix!2886 lt!2004660 Nil!56403)) Nil!56403)))))))

(declare-fun b!4892895 () Bool)

(assert (=> b!4892895 (= e!3058801 (or (not (= (Cons!56403 (head!10455 (getSuffix!2886 lt!2004660 Nil!56403)) Nil!56403) Nil!56403)) (= lt!2005664 Nil!56403)))))

(declare-fun b!4892892 () Bool)

(declare-fun e!3058800 () List!56527)

(assert (=> b!4892892 (= e!3058800 (Cons!56403 (head!10455 (getSuffix!2886 lt!2004660 Nil!56403)) Nil!56403))))

(declare-fun d!1571562 () Bool)

(assert (=> d!1571562 e!3058801))

(declare-fun res!2089712 () Bool)

(assert (=> d!1571562 (=> (not res!2089712) (not e!3058801))))

(assert (=> d!1571562 (= res!2089712 (= (content!10015 lt!2005664) ((_ map or) (content!10015 Nil!56403) (content!10015 (Cons!56403 (head!10455 (getSuffix!2886 lt!2004660 Nil!56403)) Nil!56403)))))))

(assert (=> d!1571562 (= lt!2005664 e!3058800)))

(declare-fun c!831621 () Bool)

(assert (=> d!1571562 (= c!831621 ((_ is Nil!56403) Nil!56403))))

(assert (=> d!1571562 (= (++!12243 Nil!56403 (Cons!56403 (head!10455 (getSuffix!2886 lt!2004660 Nil!56403)) Nil!56403)) lt!2005664)))

(declare-fun b!4892893 () Bool)

(assert (=> b!4892893 (= e!3058800 (Cons!56403 (h!62851 Nil!56403) (++!12243 (t!365273 Nil!56403) (Cons!56403 (head!10455 (getSuffix!2886 lt!2004660 Nil!56403)) Nil!56403))))))

(assert (= (and d!1571562 c!831621) b!4892892))

(assert (= (and d!1571562 (not c!831621)) b!4892893))

(assert (= (and d!1571562 res!2089712) b!4892894))

(assert (= (and b!4892894 res!2089713) b!4892895))

(declare-fun m!5897714 () Bool)

(assert (=> b!4892894 m!5897714))

(assert (=> b!4892894 m!5894316))

(declare-fun m!5897716 () Bool)

(assert (=> b!4892894 m!5897716))

(declare-fun m!5897718 () Bool)

(assert (=> d!1571562 m!5897718))

(declare-fun m!5897720 () Bool)

(assert (=> d!1571562 m!5897720))

(declare-fun m!5897722 () Bool)

(assert (=> d!1571562 m!5897722))

(declare-fun m!5897724 () Bool)

(assert (=> b!4892893 m!5897724))

(assert (=> b!4891312 d!1571562))

(declare-fun b!4892898 () Bool)

(declare-fun res!2089715 () Bool)

(declare-fun e!3058803 () Bool)

(assert (=> b!4892898 (=> (not res!2089715) (not e!3058803))))

(declare-fun lt!2005665 () List!56527)

(assert (=> b!4892898 (= res!2089715 (= (size!37138 lt!2005665) (+ (size!37138 Nil!56403) (size!37138 (Cons!56403 (head!10455 lt!2004660) Nil!56403)))))))

(declare-fun b!4892899 () Bool)

(assert (=> b!4892899 (= e!3058803 (or (not (= (Cons!56403 (head!10455 lt!2004660) Nil!56403) Nil!56403)) (= lt!2005665 Nil!56403)))))

(declare-fun b!4892896 () Bool)

(declare-fun e!3058802 () List!56527)

(assert (=> b!4892896 (= e!3058802 (Cons!56403 (head!10455 lt!2004660) Nil!56403))))

(declare-fun d!1571564 () Bool)

(assert (=> d!1571564 e!3058803))

(declare-fun res!2089714 () Bool)

(assert (=> d!1571564 (=> (not res!2089714) (not e!3058803))))

(assert (=> d!1571564 (= res!2089714 (= (content!10015 lt!2005665) ((_ map or) (content!10015 Nil!56403) (content!10015 (Cons!56403 (head!10455 lt!2004660) Nil!56403)))))))

(assert (=> d!1571564 (= lt!2005665 e!3058802)))

(declare-fun c!831622 () Bool)

(assert (=> d!1571564 (= c!831622 ((_ is Nil!56403) Nil!56403))))

(assert (=> d!1571564 (= (++!12243 Nil!56403 (Cons!56403 (head!10455 lt!2004660) Nil!56403)) lt!2005665)))

(declare-fun b!4892897 () Bool)

(assert (=> b!4892897 (= e!3058802 (Cons!56403 (h!62851 Nil!56403) (++!12243 (t!365273 Nil!56403) (Cons!56403 (head!10455 lt!2004660) Nil!56403))))))

(assert (= (and d!1571564 c!831622) b!4892896))

(assert (= (and d!1571564 (not c!831622)) b!4892897))

(assert (= (and d!1571564 res!2089714) b!4892898))

(assert (= (and b!4892898 res!2089715) b!4892899))

(declare-fun m!5897726 () Bool)

(assert (=> b!4892898 m!5897726))

(assert (=> b!4892898 m!5894316))

(declare-fun m!5897728 () Bool)

(assert (=> b!4892898 m!5897728))

(declare-fun m!5897730 () Bool)

(assert (=> d!1571564 m!5897730))

(assert (=> d!1571564 m!5897720))

(declare-fun m!5897732 () Bool)

(assert (=> d!1571564 m!5897732))

(declare-fun m!5897734 () Bool)

(assert (=> b!4892897 m!5897734))

(assert (=> b!4891312 d!1571564))

(declare-fun b!4892902 () Bool)

(declare-fun res!2089717 () Bool)

(declare-fun e!3058805 () Bool)

(assert (=> b!4892902 (=> (not res!2089717) (not e!3058805))))

(declare-fun lt!2005666 () List!56527)

(assert (=> b!4892902 (= res!2089717 (= (size!37138 lt!2005666) (+ (size!37138 Nil!56403) (size!37138 (Cons!56403 lt!2004953 Nil!56403)))))))

(declare-fun b!4892903 () Bool)

(assert (=> b!4892903 (= e!3058805 (or (not (= (Cons!56403 lt!2004953 Nil!56403) Nil!56403)) (= lt!2005666 Nil!56403)))))

(declare-fun b!4892900 () Bool)

(declare-fun e!3058804 () List!56527)

(assert (=> b!4892900 (= e!3058804 (Cons!56403 lt!2004953 Nil!56403))))

(declare-fun d!1571566 () Bool)

(assert (=> d!1571566 e!3058805))

(declare-fun res!2089716 () Bool)

(assert (=> d!1571566 (=> (not res!2089716) (not e!3058805))))

(assert (=> d!1571566 (= res!2089716 (= (content!10015 lt!2005666) ((_ map or) (content!10015 Nil!56403) (content!10015 (Cons!56403 lt!2004953 Nil!56403)))))))

(assert (=> d!1571566 (= lt!2005666 e!3058804)))

(declare-fun c!831623 () Bool)

(assert (=> d!1571566 (= c!831623 ((_ is Nil!56403) Nil!56403))))

(assert (=> d!1571566 (= (++!12243 Nil!56403 (Cons!56403 lt!2004953 Nil!56403)) lt!2005666)))

(declare-fun b!4892901 () Bool)

(assert (=> b!4892901 (= e!3058804 (Cons!56403 (h!62851 Nil!56403) (++!12243 (t!365273 Nil!56403) (Cons!56403 lt!2004953 Nil!56403))))))

(assert (= (and d!1571566 c!831623) b!4892900))

(assert (= (and d!1571566 (not c!831623)) b!4892901))

(assert (= (and d!1571566 res!2089716) b!4892902))

(assert (= (and b!4892902 res!2089717) b!4892903))

(declare-fun m!5897736 () Bool)

(assert (=> b!4892902 m!5897736))

(assert (=> b!4892902 m!5894316))

(declare-fun m!5897738 () Bool)

(assert (=> b!4892902 m!5897738))

(declare-fun m!5897740 () Bool)

(assert (=> d!1571566 m!5897740))

(assert (=> d!1571566 m!5897720))

(declare-fun m!5897742 () Bool)

(assert (=> d!1571566 m!5897742))

(declare-fun m!5897744 () Bool)

(assert (=> b!4892901 m!5897744))

(assert (=> b!4891312 d!1571566))

(assert (=> b!4891312 d!1570636))

(declare-fun d!1571568 () Bool)

(assert (=> d!1571568 (= (head!10455 (getSuffix!2886 lt!2004660 Nil!56403)) (h!62851 (getSuffix!2886 lt!2004660 Nil!56403)))))

(assert (=> b!4891312 d!1571568))

(declare-fun d!1571570 () Bool)

(assert (=> d!1571570 (<= (size!37138 Nil!56403) (size!37138 lt!2004660))))

(declare-fun lt!2005669 () Unit!146398)

(declare-fun choose!35717 (List!56527 List!56527) Unit!146398)

(assert (=> d!1571570 (= lt!2005669 (choose!35717 Nil!56403 lt!2004660))))

(assert (=> d!1571570 (isPrefix!4894 Nil!56403 lt!2004660)))

(assert (=> d!1571570 (= (lemmaIsPrefixThenSmallerEqSize!623 Nil!56403 lt!2004660) lt!2005669)))

(declare-fun bs!1176001 () Bool)

(assert (= bs!1176001 d!1571570))

(assert (=> bs!1176001 m!5894316))

(assert (=> bs!1176001 m!5894318))

(declare-fun m!5897746 () Bool)

(assert (=> bs!1176001 m!5897746))

(declare-fun m!5897748 () Bool)

(assert (=> bs!1176001 m!5897748))

(assert (=> b!4891312 d!1571570))

(declare-fun d!1571572 () Bool)

(assert (=> d!1571572 (isPrefix!4894 (++!12243 Nil!56403 (Cons!56403 (head!10455 (getSuffix!2886 lt!2004660 Nil!56403)) Nil!56403)) lt!2004660)))

(declare-fun lt!2005672 () Unit!146398)

(declare-fun choose!35718 (List!56527 List!56527) Unit!146398)

(assert (=> d!1571572 (= lt!2005672 (choose!35718 Nil!56403 lt!2004660))))

(assert (=> d!1571572 (isPrefix!4894 Nil!56403 lt!2004660)))

(assert (=> d!1571572 (= (lemmaAddHeadSuffixToPrefixStillPrefix!711 Nil!56403 lt!2004660) lt!2005672)))

(declare-fun bs!1176002 () Bool)

(assert (= bs!1176002 d!1571572))

(assert (=> bs!1176002 m!5894832))

(assert (=> bs!1176002 m!5894834))

(assert (=> bs!1176002 m!5897748))

(assert (=> bs!1176002 m!5894800))

(assert (=> bs!1176002 m!5894826))

(assert (=> bs!1176002 m!5894832))

(declare-fun m!5897750 () Bool)

(assert (=> bs!1176002 m!5897750))

(assert (=> bs!1176002 m!5894800))

(assert (=> b!4891312 d!1571572))

(declare-fun d!1571574 () Bool)

(assert (=> d!1571574 (= (tail!9601 lt!2004660) (t!365273 lt!2004660))))

(assert (=> b!4891312 d!1571574))

(declare-fun d!1571576 () Bool)

(assert (=> d!1571576 (= (++!12243 (++!12243 Nil!56403 (Cons!56403 lt!2004953 Nil!56403)) lt!2004948) lt!2004660)))

(declare-fun lt!2005675 () Unit!146398)

(declare-fun choose!35719 (List!56527 C!26696 List!56527 List!56527) Unit!146398)

(assert (=> d!1571576 (= lt!2005675 (choose!35719 Nil!56403 lt!2004953 lt!2004948 lt!2004660))))

(assert (=> d!1571576 (= (++!12243 Nil!56403 (Cons!56403 lt!2004953 lt!2004948)) lt!2004660)))

(assert (=> d!1571576 (= (lemmaMoveElementToOtherListKeepsConcatEq!1329 Nil!56403 lt!2004953 lt!2004948 lt!2004660) lt!2005675)))

(declare-fun bs!1176003 () Bool)

(assert (= bs!1176003 d!1571576))

(assert (=> bs!1176003 m!5894830))

(assert (=> bs!1176003 m!5894830))

(assert (=> bs!1176003 m!5894836))

(declare-fun m!5897752 () Bool)

(assert (=> bs!1176003 m!5897752))

(declare-fun m!5897754 () Bool)

(assert (=> bs!1176003 m!5897754))

(assert (=> b!4891312 d!1571576))

(declare-fun b!4892906 () Bool)

(declare-fun res!2089719 () Bool)

(declare-fun e!3058807 () Bool)

(assert (=> b!4892906 (=> (not res!2089719) (not e!3058807))))

(declare-fun lt!2005676 () List!56527)

(assert (=> b!4892906 (= res!2089719 (= (size!37138 lt!2005676) (+ (size!37138 (++!12243 Nil!56403 (Cons!56403 lt!2004953 Nil!56403))) (size!37138 lt!2004948))))))

(declare-fun b!4892907 () Bool)

(assert (=> b!4892907 (= e!3058807 (or (not (= lt!2004948 Nil!56403)) (= lt!2005676 (++!12243 Nil!56403 (Cons!56403 lt!2004953 Nil!56403)))))))

(declare-fun b!4892904 () Bool)

(declare-fun e!3058806 () List!56527)

(assert (=> b!4892904 (= e!3058806 lt!2004948)))

(declare-fun d!1571578 () Bool)

(assert (=> d!1571578 e!3058807))

(declare-fun res!2089718 () Bool)

(assert (=> d!1571578 (=> (not res!2089718) (not e!3058807))))

(assert (=> d!1571578 (= res!2089718 (= (content!10015 lt!2005676) ((_ map or) (content!10015 (++!12243 Nil!56403 (Cons!56403 lt!2004953 Nil!56403))) (content!10015 lt!2004948))))))

(assert (=> d!1571578 (= lt!2005676 e!3058806)))

(declare-fun c!831624 () Bool)

(assert (=> d!1571578 (= c!831624 ((_ is Nil!56403) (++!12243 Nil!56403 (Cons!56403 lt!2004953 Nil!56403))))))

(assert (=> d!1571578 (= (++!12243 (++!12243 Nil!56403 (Cons!56403 lt!2004953 Nil!56403)) lt!2004948) lt!2005676)))

(declare-fun b!4892905 () Bool)

(assert (=> b!4892905 (= e!3058806 (Cons!56403 (h!62851 (++!12243 Nil!56403 (Cons!56403 lt!2004953 Nil!56403))) (++!12243 (t!365273 (++!12243 Nil!56403 (Cons!56403 lt!2004953 Nil!56403))) lt!2004948)))))

(assert (= (and d!1571578 c!831624) b!4892904))

(assert (= (and d!1571578 (not c!831624)) b!4892905))

(assert (= (and d!1571578 res!2089718) b!4892906))

(assert (= (and b!4892906 res!2089719) b!4892907))

(declare-fun m!5897756 () Bool)

(assert (=> b!4892906 m!5897756))

(assert (=> b!4892906 m!5894830))

(declare-fun m!5897758 () Bool)

(assert (=> b!4892906 m!5897758))

(declare-fun m!5897760 () Bool)

(assert (=> b!4892906 m!5897760))

(declare-fun m!5897762 () Bool)

(assert (=> d!1571578 m!5897762))

(assert (=> d!1571578 m!5894830))

(declare-fun m!5897764 () Bool)

(assert (=> d!1571578 m!5897764))

(declare-fun m!5897766 () Bool)

(assert (=> d!1571578 m!5897766))

(declare-fun m!5897768 () Bool)

(assert (=> b!4892905 m!5897768))

(assert (=> b!4891312 d!1571578))

(declare-fun d!1571580 () Bool)

(declare-fun lt!2005679 () List!56527)

(assert (=> d!1571580 (= (++!12243 Nil!56403 lt!2005679) lt!2004660)))

(declare-fun e!3058810 () List!56527)

(assert (=> d!1571580 (= lt!2005679 e!3058810)))

(declare-fun c!831627 () Bool)

(assert (=> d!1571580 (= c!831627 ((_ is Cons!56403) Nil!56403))))

(assert (=> d!1571580 (>= (size!37138 lt!2004660) (size!37138 Nil!56403))))

(assert (=> d!1571580 (= (getSuffix!2886 lt!2004660 Nil!56403) lt!2005679)))

(declare-fun b!4892912 () Bool)

(assert (=> b!4892912 (= e!3058810 (getSuffix!2886 (tail!9601 lt!2004660) (t!365273 Nil!56403)))))

(declare-fun b!4892913 () Bool)

(assert (=> b!4892913 (= e!3058810 lt!2004660)))

(assert (= (and d!1571580 c!831627) b!4892912))

(assert (= (and d!1571580 (not c!831627)) b!4892913))

(declare-fun m!5897770 () Bool)

(assert (=> d!1571580 m!5897770))

(assert (=> d!1571580 m!5894318))

(assert (=> d!1571580 m!5894316))

(assert (=> b!4892912 m!5894818))

(assert (=> b!4892912 m!5894818))

(declare-fun m!5897772 () Bool)

(assert (=> b!4892912 m!5897772))

(assert (=> b!4891312 d!1571580))

(declare-fun b!4892915 () Bool)

(declare-fun res!2089722 () Bool)

(declare-fun e!3058811 () Bool)

(assert (=> b!4892915 (=> (not res!2089722) (not e!3058811))))

(assert (=> b!4892915 (= res!2089722 (= (head!10455 (++!12243 Nil!56403 (Cons!56403 (head!10455 (getSuffix!2886 lt!2004660 Nil!56403)) Nil!56403))) (head!10455 lt!2004660)))))

(declare-fun d!1571582 () Bool)

(declare-fun e!3058812 () Bool)

(assert (=> d!1571582 e!3058812))

(declare-fun res!2089721 () Bool)

(assert (=> d!1571582 (=> res!2089721 e!3058812)))

(declare-fun lt!2005680 () Bool)

(assert (=> d!1571582 (= res!2089721 (not lt!2005680))))

(declare-fun e!3058813 () Bool)

(assert (=> d!1571582 (= lt!2005680 e!3058813)))

(declare-fun res!2089723 () Bool)

(assert (=> d!1571582 (=> res!2089723 e!3058813)))

(assert (=> d!1571582 (= res!2089723 ((_ is Nil!56403) (++!12243 Nil!56403 (Cons!56403 (head!10455 (getSuffix!2886 lt!2004660 Nil!56403)) Nil!56403))))))

(assert (=> d!1571582 (= (isPrefix!4894 (++!12243 Nil!56403 (Cons!56403 (head!10455 (getSuffix!2886 lt!2004660 Nil!56403)) Nil!56403)) lt!2004660) lt!2005680)))

(declare-fun b!4892914 () Bool)

(assert (=> b!4892914 (= e!3058813 e!3058811)))

(declare-fun res!2089720 () Bool)

(assert (=> b!4892914 (=> (not res!2089720) (not e!3058811))))

(assert (=> b!4892914 (= res!2089720 (not ((_ is Nil!56403) lt!2004660)))))

(declare-fun b!4892916 () Bool)

(assert (=> b!4892916 (= e!3058811 (isPrefix!4894 (tail!9601 (++!12243 Nil!56403 (Cons!56403 (head!10455 (getSuffix!2886 lt!2004660 Nil!56403)) Nil!56403))) (tail!9601 lt!2004660)))))

(declare-fun b!4892917 () Bool)

(assert (=> b!4892917 (= e!3058812 (>= (size!37138 lt!2004660) (size!37138 (++!12243 Nil!56403 (Cons!56403 (head!10455 (getSuffix!2886 lt!2004660 Nil!56403)) Nil!56403)))))))

(assert (= (and d!1571582 (not res!2089723)) b!4892914))

(assert (= (and b!4892914 res!2089720) b!4892915))

(assert (= (and b!4892915 res!2089722) b!4892916))

(assert (= (and d!1571582 (not res!2089721)) b!4892917))

(assert (=> b!4892915 m!5894832))

(declare-fun m!5897774 () Bool)

(assert (=> b!4892915 m!5897774))

(assert (=> b!4892915 m!5894822))

(assert (=> b!4892916 m!5894832))

(declare-fun m!5897776 () Bool)

(assert (=> b!4892916 m!5897776))

(assert (=> b!4892916 m!5894818))

(assert (=> b!4892916 m!5897776))

(assert (=> b!4892916 m!5894818))

(declare-fun m!5897778 () Bool)

(assert (=> b!4892916 m!5897778))

(assert (=> b!4892917 m!5894318))

(assert (=> b!4892917 m!5894832))

(declare-fun m!5897780 () Bool)

(assert (=> b!4892917 m!5897780))

(assert (=> b!4891312 d!1571582))

(assert (=> b!4891312 d!1570634))

(declare-fun d!1571584 () Bool)

(assert (=> d!1571584 (= (list!17726 (xs!18058 (c!831175 input!1236))) (innerList!14830 (xs!18058 (c!831175 input!1236))))))

(assert (=> b!4891071 d!1571584))

(declare-fun d!1571586 () Bool)

(declare-fun lt!2005681 () Int)

(assert (=> d!1571586 (>= lt!2005681 0)))

(declare-fun e!3058814 () Int)

(assert (=> d!1571586 (= lt!2005681 e!3058814)))

(declare-fun c!831628 () Bool)

(assert (=> d!1571586 (= c!831628 ((_ is Nil!56403) (_2!33526 (get!19478 lt!2004982))))))

(assert (=> d!1571586 (= (size!37138 (_2!33526 (get!19478 lt!2004982))) lt!2005681)))

(declare-fun b!4892918 () Bool)

(assert (=> b!4892918 (= e!3058814 0)))

(declare-fun b!4892919 () Bool)

(assert (=> b!4892919 (= e!3058814 (+ 1 (size!37138 (t!365273 (_2!33526 (get!19478 lt!2004982))))))))

(assert (= (and d!1571586 c!831628) b!4892918))

(assert (= (and d!1571586 (not c!831628)) b!4892919))

(declare-fun m!5897782 () Bool)

(assert (=> b!4892919 m!5897782))

(assert (=> b!4891385 d!1571586))

(assert (=> b!4891385 d!1571480))

(assert (=> b!4891385 d!1571340))

(declare-fun d!1571588 () Bool)

(assert (=> d!1571588 (= (isDefined!11037 lt!2005117) (not (isEmpty!30258 lt!2005117)))))

(declare-fun bs!1176004 () Bool)

(assert (= bs!1176004 d!1571588))

(assert (=> bs!1176004 m!5895470))

(assert (=> b!4891647 d!1571588))

(declare-fun d!1571590 () Bool)

(assert (=> d!1571590 (= (nullable!4555 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) (nullableFct!1238 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))))))

(declare-fun bs!1176005 () Bool)

(assert (= bs!1176005 d!1571590))

(declare-fun m!5897784 () Bool)

(assert (=> bs!1176005 m!5897784))

(assert (=> b!4891337 d!1571590))

(declare-fun d!1571592 () Bool)

(declare-fun res!2089724 () Bool)

(declare-fun e!3058815 () Bool)

(assert (=> d!1571592 (=> (not res!2089724) (not e!3058815))))

(assert (=> d!1571592 (= res!2089724 (= (csize!29714 (right!41305 (c!831175 input!1236))) (+ (size!37142 (left!40975 (right!41305 (c!831175 input!1236)))) (size!37142 (right!41305 (right!41305 (c!831175 input!1236)))))))))

(assert (=> d!1571592 (= (inv!72682 (right!41305 (c!831175 input!1236))) e!3058815)))

(declare-fun b!4892920 () Bool)

(declare-fun res!2089725 () Bool)

(assert (=> b!4892920 (=> (not res!2089725) (not e!3058815))))

(assert (=> b!4892920 (= res!2089725 (and (not (= (left!40975 (right!41305 (c!831175 input!1236))) Empty!14742)) (not (= (right!41305 (right!41305 (c!831175 input!1236))) Empty!14742))))))

(declare-fun b!4892921 () Bool)

(declare-fun res!2089726 () Bool)

(assert (=> b!4892921 (=> (not res!2089726) (not e!3058815))))

(assert (=> b!4892921 (= res!2089726 (= (cheight!14953 (right!41305 (c!831175 input!1236))) (+ (max!0 (height!1955 (left!40975 (right!41305 (c!831175 input!1236)))) (height!1955 (right!41305 (right!41305 (c!831175 input!1236))))) 1)))))

(declare-fun b!4892922 () Bool)

(assert (=> b!4892922 (= e!3058815 (<= 0 (cheight!14953 (right!41305 (c!831175 input!1236)))))))

(assert (= (and d!1571592 res!2089724) b!4892920))

(assert (= (and b!4892920 res!2089725) b!4892921))

(assert (= (and b!4892921 res!2089726) b!4892922))

(declare-fun m!5897786 () Bool)

(assert (=> d!1571592 m!5897786))

(declare-fun m!5897788 () Bool)

(assert (=> d!1571592 m!5897788))

(declare-fun m!5897790 () Bool)

(assert (=> b!4892921 m!5897790))

(declare-fun m!5897792 () Bool)

(assert (=> b!4892921 m!5897792))

(assert (=> b!4892921 m!5897790))

(assert (=> b!4892921 m!5897792))

(declare-fun m!5897794 () Bool)

(assert (=> b!4892921 m!5897794))

(assert (=> b!4891506 d!1571592))

(assert (=> bm!339176 d!1571328))

(assert (=> b!4891426 d!1571350))

(assert (=> b!4891426 d!1571354))

(assert (=> b!4891426 d!1571352))

(assert (=> b!4891426 d!1570502))

(declare-fun d!1571594 () Bool)

(declare-fun res!2089727 () Bool)

(declare-fun e!3058816 () Bool)

(assert (=> d!1571594 (=> res!2089727 e!3058816)))

(assert (=> d!1571594 (= res!2089727 ((_ is Nil!56405) (t!365275 rulesArg!165)))))

(assert (=> d!1571594 (= (forall!13090 (t!365275 rulesArg!165) lambda!243978) e!3058816)))

(declare-fun b!4892923 () Bool)

(declare-fun e!3058817 () Bool)

(assert (=> b!4892923 (= e!3058816 e!3058817)))

(declare-fun res!2089728 () Bool)

(assert (=> b!4892923 (=> (not res!2089728) (not e!3058817))))

(assert (=> b!4892923 (= res!2089728 (dynLambda!22629 lambda!243978 (h!62853 (t!365275 rulesArg!165))))))

(declare-fun b!4892924 () Bool)

(assert (=> b!4892924 (= e!3058817 (forall!13090 (t!365275 (t!365275 rulesArg!165)) lambda!243978))))

(assert (= (and d!1571594 (not res!2089727)) b!4892923))

(assert (= (and b!4892923 res!2089728) b!4892924))

(declare-fun b_lambda!194331 () Bool)

(assert (=> (not b_lambda!194331) (not b!4892923)))

(declare-fun m!5897796 () Bool)

(assert (=> b!4892923 m!5897796))

(declare-fun m!5897798 () Bool)

(assert (=> b!4892924 m!5897798))

(assert (=> b!4891520 d!1571594))

(declare-fun lt!2005683 () Option!14026)

(declare-fun d!1571596 () Bool)

(assert (=> d!1571596 (= lt!2005683 (maxPrefix!4603 thiss!14805 (t!365275 (t!365275 rulesArg!165)) lt!2004534))))

(declare-fun e!3058818 () Option!14026)

(assert (=> d!1571596 (= lt!2005683 e!3058818)))

(declare-fun c!831629 () Bool)

(assert (=> d!1571596 (= c!831629 (and ((_ is Cons!56405) (t!365275 (t!365275 rulesArg!165))) ((_ is Nil!56405) (t!365275 (t!365275 (t!365275 rulesArg!165))))))))

(declare-fun lt!2005684 () Unit!146398)

(declare-fun lt!2005682 () Unit!146398)

(assert (=> d!1571596 (= lt!2005684 lt!2005682)))

(assert (=> d!1571596 (isPrefix!4894 lt!2004534 lt!2004534)))

(assert (=> d!1571596 (= lt!2005682 (lemmaIsPrefixRefl!3291 lt!2004534 lt!2004534))))

(assert (=> d!1571596 (rulesValidInductive!3153 thiss!14805 (t!365275 (t!365275 rulesArg!165)))))

(assert (=> d!1571596 (= (maxPrefixZipper!673 thiss!14805 (t!365275 (t!365275 rulesArg!165)) lt!2004534) lt!2005683)))

(declare-fun bm!339373 () Bool)

(declare-fun call!339378 () Option!14026)

(assert (=> bm!339373 (= call!339378 (maxPrefixOneRuleZipper!258 thiss!14805 (h!62853 (t!365275 (t!365275 rulesArg!165))) lt!2004534))))

(declare-fun b!4892925 () Bool)

(assert (=> b!4892925 (= e!3058818 call!339378)))

(declare-fun b!4892926 () Bool)

(declare-fun lt!2005686 () Option!14026)

(declare-fun lt!2005685 () Option!14026)

(assert (=> b!4892926 (= e!3058818 (ite (and ((_ is None!14025) lt!2005686) ((_ is None!14025) lt!2005685)) None!14025 (ite ((_ is None!14025) lt!2005685) lt!2005686 (ite ((_ is None!14025) lt!2005686) lt!2005685 (ite (>= (size!37136 (_1!33526 (v!49977 lt!2005686))) (size!37136 (_1!33526 (v!49977 lt!2005685)))) lt!2005686 lt!2005685)))))))

(assert (=> b!4892926 (= lt!2005686 call!339378)))

(assert (=> b!4892926 (= lt!2005685 (maxPrefixZipper!673 thiss!14805 (t!365275 (t!365275 (t!365275 rulesArg!165))) lt!2004534))))

(assert (= (and d!1571596 c!831629) b!4892925))

(assert (= (and d!1571596 (not c!831629)) b!4892926))

(assert (= (or b!4892925 b!4892926) bm!339373))

(assert (=> d!1571596 m!5895476))

(assert (=> d!1571596 m!5894172))

(assert (=> d!1571596 m!5894174))

(assert (=> d!1571596 m!5894552))

(declare-fun m!5897800 () Bool)

(assert (=> bm!339373 m!5897800))

(declare-fun m!5897802 () Bool)

(assert (=> b!4892926 m!5897802))

(assert (=> b!4891087 d!1571596))

(declare-fun d!1571598 () Bool)

(declare-fun lt!2005687 () Int)

(assert (=> d!1571598 (>= lt!2005687 0)))

(declare-fun e!3058819 () Int)

(assert (=> d!1571598 (= lt!2005687 e!3058819)))

(declare-fun c!831630 () Bool)

(assert (=> d!1571598 (= c!831630 ((_ is Nil!56403) (t!365273 (_2!33526 (get!19478 lt!2004672)))))))

(assert (=> d!1571598 (= (size!37138 (t!365273 (_2!33526 (get!19478 lt!2004672)))) lt!2005687)))

(declare-fun b!4892927 () Bool)

(assert (=> b!4892927 (= e!3058819 0)))

(declare-fun b!4892928 () Bool)

(assert (=> b!4892928 (= e!3058819 (+ 1 (size!37138 (t!365273 (t!365273 (_2!33526 (get!19478 lt!2004672)))))))))

(assert (= (and d!1571598 c!831630) b!4892927))

(assert (= (and d!1571598 (not c!831630)) b!4892928))

(declare-fun m!5897804 () Bool)

(assert (=> b!4892928 m!5897804))

(assert (=> b!4891627 d!1571598))

(declare-fun bs!1176006 () Bool)

(declare-fun d!1571600 () Bool)

(assert (= bs!1176006 (and d!1571600 b!4890845)))

(declare-fun lambda!244013 () Int)

(assert (=> bs!1176006 (= (and (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) (= lambda!244013 lambda!243967))))

(declare-fun bs!1176007 () Bool)

(assert (= bs!1176007 (and d!1571600 d!1570578)))

(assert (=> bs!1176007 (= (and (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) (= lambda!244013 lambda!243985))))

(declare-fun bs!1176008 () Bool)

(assert (= bs!1176008 (and d!1571600 b!4891527)))

(assert (=> bs!1176008 (= lambda!244013 lambda!243993)))

(assert (=> d!1571600 true))

(assert (=> d!1571600 (< (dynLambda!22619 order!25467 (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) (dynLambda!22618 order!25465 lambda!244013))))

(assert (=> d!1571600 true))

(assert (=> d!1571600 (< (dynLambda!22617 order!25463 (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) (dynLambda!22618 order!25465 lambda!244013))))

(assert (=> d!1571600 (= (semiInverseModEq!3586 (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) (Forall!1686 lambda!244013))))

(declare-fun bs!1176009 () Bool)

(assert (= bs!1176009 d!1571600))

(declare-fun m!5897806 () Bool)

(assert (=> bs!1176009 m!5897806))

(assert (=> d!1570564 d!1571600))

(assert (=> bm!339226 d!1571432))

(declare-fun d!1571602 () Bool)

(assert (=> d!1571602 (= (inv!72679 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658)))))) (isBalanced!4012 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658))))))))))

(declare-fun bs!1176010 () Bool)

(assert (= bs!1176010 d!1571602))

(declare-fun m!5897808 () Bool)

(assert (=> bs!1176010 m!5897808))

(assert (=> tb!258599 d!1571602))

(declare-fun d!1571604 () Bool)

(assert (=> d!1571604 (= (isEmpty!30258 lt!2004762) (not ((_ is Some!14025) lt!2004762)))))

(assert (=> d!1570588 d!1571604))

(declare-fun d!1571606 () Bool)

(assert (=> d!1571606 (= (isEmpty!30257 (_1!33528 lt!2004759)) ((_ is Nil!56403) (_1!33528 lt!2004759)))))

(assert (=> d!1570588 d!1571606))

(declare-fun d!1571608 () Bool)

(declare-fun lt!2005689 () tuple2!60450)

(assert (=> d!1571608 (= (++!12243 (_1!33528 lt!2005689) (_2!33528 lt!2005689)) lt!2004534)))

(assert (=> d!1571608 (= lt!2005689 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 0 lt!2004534 lt!2004534 (sizeTr!340 lt!2004534 0)))))

(declare-fun lt!2005692 () Unit!146398)

(declare-fun lt!2005690 () Unit!146398)

(assert (=> d!1571608 (= lt!2005692 lt!2005690)))

(declare-fun lt!2005691 () List!56527)

(declare-fun lt!2005688 () Int)

(assert (=> d!1571608 (= (sizeTr!340 lt!2005691 lt!2005688) (+ (size!37138 lt!2005691) lt!2005688))))

(assert (=> d!1571608 (= lt!2005690 (lemmaSizeTrEqualsSize!339 lt!2005691 lt!2005688))))

(assert (=> d!1571608 (= lt!2005688 0)))

(assert (=> d!1571608 (= lt!2005691 Nil!56403)))

(declare-fun lt!2005695 () Unit!146398)

(declare-fun lt!2005694 () Unit!146398)

(assert (=> d!1571608 (= lt!2005695 lt!2005694)))

(declare-fun lt!2005693 () Int)

(assert (=> d!1571608 (= (sizeTr!340 lt!2004534 lt!2005693) (+ (size!37138 lt!2004534) lt!2005693))))

(assert (=> d!1571608 (= lt!2005694 (lemmaSizeTrEqualsSize!339 lt!2004534 lt!2005693))))

(assert (=> d!1571608 (= lt!2005693 0)))

(assert (=> d!1571608 (validRegex!5882 (regex!8174 (h!62853 rulesArg!165)))))

(assert (=> d!1571608 (= (findLongestMatch!1646 (regex!8174 (h!62853 rulesArg!165)) lt!2004534) lt!2005689)))

(declare-fun bs!1176011 () Bool)

(assert (= bs!1176011 d!1571608))

(declare-fun m!5897810 () Bool)

(assert (=> bs!1176011 m!5897810))

(declare-fun m!5897812 () Bool)

(assert (=> bs!1176011 m!5897812))

(declare-fun m!5897814 () Bool)

(assert (=> bs!1176011 m!5897814))

(declare-fun m!5897816 () Bool)

(assert (=> bs!1176011 m!5897816))

(declare-fun m!5897818 () Bool)

(assert (=> bs!1176011 m!5897818))

(assert (=> bs!1176011 m!5894684))

(assert (=> bs!1176011 m!5897810))

(declare-fun m!5897820 () Bool)

(assert (=> bs!1176011 m!5897820))

(declare-fun m!5897822 () Bool)

(assert (=> bs!1176011 m!5897822))

(assert (=> bs!1176011 m!5894382))

(declare-fun m!5897824 () Bool)

(assert (=> bs!1176011 m!5897824))

(assert (=> d!1570588 d!1571608))

(assert (=> d!1570588 d!1570668))

(assert (=> b!4891381 d!1571480))

(declare-fun b!4892931 () Bool)

(declare-fun res!2089730 () Bool)

(declare-fun e!3058821 () Bool)

(assert (=> b!4892931 (=> (not res!2089730) (not e!3058821))))

(declare-fun lt!2005696 () List!56527)

(assert (=> b!4892931 (= res!2089730 (= (size!37138 lt!2005696) (+ (size!37138 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004764))))) (size!37138 (_2!33526 (get!19478 lt!2004764))))))))

(declare-fun b!4892932 () Bool)

(assert (=> b!4892932 (= e!3058821 (or (not (= (_2!33526 (get!19478 lt!2004764)) Nil!56403)) (= lt!2005696 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004764)))))))))

(declare-fun b!4892929 () Bool)

(declare-fun e!3058820 () List!56527)

(assert (=> b!4892929 (= e!3058820 (_2!33526 (get!19478 lt!2004764)))))

(declare-fun d!1571610 () Bool)

(assert (=> d!1571610 e!3058821))

(declare-fun res!2089729 () Bool)

(assert (=> d!1571610 (=> (not res!2089729) (not e!3058821))))

(assert (=> d!1571610 (= res!2089729 (= (content!10015 lt!2005696) ((_ map or) (content!10015 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004764))))) (content!10015 (_2!33526 (get!19478 lt!2004764))))))))

(assert (=> d!1571610 (= lt!2005696 e!3058820)))

(declare-fun c!831631 () Bool)

(assert (=> d!1571610 (= c!831631 ((_ is Nil!56403) (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004764))))))))

(assert (=> d!1571610 (= (++!12243 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004764)))) (_2!33526 (get!19478 lt!2004764))) lt!2005696)))

(declare-fun b!4892930 () Bool)

(assert (=> b!4892930 (= e!3058820 (Cons!56403 (h!62851 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004764))))) (++!12243 (t!365273 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004764))))) (_2!33526 (get!19478 lt!2004764)))))))

(assert (= (and d!1571610 c!831631) b!4892929))

(assert (= (and d!1571610 (not c!831631)) b!4892930))

(assert (= (and d!1571610 res!2089729) b!4892931))

(assert (= (and b!4892931 res!2089730) b!4892932))

(declare-fun m!5897826 () Bool)

(assert (=> b!4892931 m!5897826))

(assert (=> b!4892931 m!5894654))

(declare-fun m!5897828 () Bool)

(assert (=> b!4892931 m!5897828))

(assert (=> b!4892931 m!5894664))

(declare-fun m!5897830 () Bool)

(assert (=> d!1571610 m!5897830))

(assert (=> d!1571610 m!5894654))

(declare-fun m!5897832 () Bool)

(assert (=> d!1571610 m!5897832))

(declare-fun m!5897834 () Bool)

(assert (=> d!1571610 m!5897834))

(declare-fun m!5897836 () Bool)

(assert (=> b!4892930 m!5897836))

(assert (=> b!4891131 d!1571610))

(declare-fun d!1571612 () Bool)

(assert (=> d!1571612 (= (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004764)))) (list!17724 (c!831175 (charsOf!5374 (_1!33526 (get!19478 lt!2004764))))))))

(declare-fun bs!1176012 () Bool)

(assert (= bs!1176012 d!1571612))

(declare-fun m!5897838 () Bool)

(assert (=> bs!1176012 m!5897838))

(assert (=> b!4891131 d!1571612))

(declare-fun d!1571614 () Bool)

(declare-fun lt!2005697 () BalanceConc!28914)

(assert (=> d!1571614 (= (list!17722 lt!2005697) (originalCharacters!8487 (_1!33526 (get!19478 lt!2004764))))))

(assert (=> d!1571614 (= lt!2005697 (dynLambda!22627 (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004764))))) (value!262109 (_1!33526 (get!19478 lt!2004764)))))))

(assert (=> d!1571614 (= (charsOf!5374 (_1!33526 (get!19478 lt!2004764))) lt!2005697)))

(declare-fun b_lambda!194333 () Bool)

(assert (=> (not b_lambda!194333) (not d!1571614)))

(declare-fun tb!258803 () Bool)

(declare-fun t!365551 () Bool)

(assert (=> (and b!4890709 (= (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004764)))))) t!365551) tb!258803))

(declare-fun b!4892933 () Bool)

(declare-fun e!3058822 () Bool)

(declare-fun tp!1377021 () Bool)

(assert (=> b!4892933 (= e!3058822 (and (inv!72677 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004764))))) (value!262109 (_1!33526 (get!19478 lt!2004764)))))) tp!1377021))))

(declare-fun result!322366 () Bool)

(assert (=> tb!258803 (= result!322366 (and (inv!72679 (dynLambda!22627 (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004764))))) (value!262109 (_1!33526 (get!19478 lt!2004764))))) e!3058822))))

(assert (= tb!258803 b!4892933))

(declare-fun m!5897840 () Bool)

(assert (=> b!4892933 m!5897840))

(declare-fun m!5897842 () Bool)

(assert (=> tb!258803 m!5897842))

(assert (=> d!1571614 t!365551))

(declare-fun b_and!344797 () Bool)

(assert (= b_and!344791 (and (=> t!365551 result!322366) b_and!344797)))

(declare-fun tb!258805 () Bool)

(declare-fun t!365553 () Bool)

(assert (=> (and b!4891010 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004764)))))) t!365553) tb!258805))

(declare-fun result!322368 () Bool)

(assert (= result!322368 result!322366))

(assert (=> d!1571614 t!365553))

(declare-fun b_and!344799 () Bool)

(assert (= b_and!344793 (and (=> t!365553 result!322368) b_and!344799)))

(declare-fun t!365555 () Bool)

(declare-fun tb!258807 () Bool)

(assert (=> (and b!4891741 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004764)))))) t!365555) tb!258807))

(declare-fun result!322370 () Bool)

(assert (= result!322370 result!322366))

(assert (=> d!1571614 t!365555))

(declare-fun b_and!344801 () Bool)

(assert (= b_and!344795 (and (=> t!365555 result!322370) b_and!344801)))

(declare-fun m!5897844 () Bool)

(assert (=> d!1571614 m!5897844))

(declare-fun m!5897846 () Bool)

(assert (=> d!1571614 m!5897846))

(assert (=> b!4891131 d!1571614))

(assert (=> b!4891131 d!1571342))

(declare-fun d!1571616 () Bool)

(assert (=> d!1571616 (= (isDefined!11038 lt!2005006) (not (isEmpty!30262 lt!2005006)))))

(declare-fun bs!1176013 () Bool)

(assert (= bs!1176013 d!1571616))

(declare-fun m!5897848 () Bool)

(assert (=> bs!1176013 m!5897848))

(assert (=> b!4891422 d!1571616))

(assert (=> bs!1175857 d!1570668))

(assert (=> bm!339223 d!1571574))

(assert (=> b!4891528 d!1571326))

(assert (=> b!4891528 d!1571332))

(assert (=> b!4891528 d!1571328))

(assert (=> b!4891528 d!1570502))

(declare-fun d!1571618 () Bool)

(declare-fun c!831632 () Bool)

(assert (=> d!1571618 (= c!831632 ((_ is Node!14742) (left!40975 (left!40975 (c!831175 input!1236)))))))

(declare-fun e!3058823 () Bool)

(assert (=> d!1571618 (= (inv!72677 (left!40975 (left!40975 (c!831175 input!1236)))) e!3058823)))

(declare-fun b!4892934 () Bool)

(assert (=> b!4892934 (= e!3058823 (inv!72682 (left!40975 (left!40975 (c!831175 input!1236)))))))

(declare-fun b!4892935 () Bool)

(declare-fun e!3058824 () Bool)

(assert (=> b!4892935 (= e!3058823 e!3058824)))

(declare-fun res!2089731 () Bool)

(assert (=> b!4892935 (= res!2089731 (not ((_ is Leaf!24546) (left!40975 (left!40975 (c!831175 input!1236))))))))

(assert (=> b!4892935 (=> res!2089731 e!3058824)))

(declare-fun b!4892936 () Bool)

(assert (=> b!4892936 (= e!3058824 (inv!72683 (left!40975 (left!40975 (c!831175 input!1236)))))))

(assert (= (and d!1571618 c!831632) b!4892934))

(assert (= (and d!1571618 (not c!831632)) b!4892935))

(assert (= (and b!4892935 (not res!2089731)) b!4892936))

(declare-fun m!5897850 () Bool)

(assert (=> b!4892934 m!5897850))

(declare-fun m!5897852 () Bool)

(assert (=> b!4892936 m!5897852))

(assert (=> b!4891728 d!1571618))

(declare-fun d!1571620 () Bool)

(declare-fun c!831633 () Bool)

(assert (=> d!1571620 (= c!831633 ((_ is Node!14742) (right!41305 (left!40975 (c!831175 input!1236)))))))

(declare-fun e!3058825 () Bool)

(assert (=> d!1571620 (= (inv!72677 (right!41305 (left!40975 (c!831175 input!1236)))) e!3058825)))

(declare-fun b!4892937 () Bool)

(assert (=> b!4892937 (= e!3058825 (inv!72682 (right!41305 (left!40975 (c!831175 input!1236)))))))

(declare-fun b!4892938 () Bool)

(declare-fun e!3058826 () Bool)

(assert (=> b!4892938 (= e!3058825 e!3058826)))

(declare-fun res!2089732 () Bool)

(assert (=> b!4892938 (= res!2089732 (not ((_ is Leaf!24546) (right!41305 (left!40975 (c!831175 input!1236))))))))

(assert (=> b!4892938 (=> res!2089732 e!3058826)))

(declare-fun b!4892939 () Bool)

(assert (=> b!4892939 (= e!3058826 (inv!72683 (right!41305 (left!40975 (c!831175 input!1236)))))))

(assert (= (and d!1571620 c!831633) b!4892937))

(assert (= (and d!1571620 (not c!831633)) b!4892938))

(assert (= (and b!4892938 (not res!2089732)) b!4892939))

(declare-fun m!5897854 () Bool)

(assert (=> b!4892937 m!5897854))

(declare-fun m!5897856 () Bool)

(assert (=> b!4892939 m!5897856))

(assert (=> b!4891728 d!1571620))

(declare-fun d!1571622 () Bool)

(assert (=> d!1571622 (= (isEmpty!30257 (tail!9601 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660))))) ((_ is Nil!56403) (tail!9601 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660))))))))

(assert (=> b!4891165 d!1571622))

(declare-fun d!1571624 () Bool)

(assert (=> d!1571624 (= (tail!9601 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660)))) (t!365273 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660)))))))

(assert (=> b!4891165 d!1571624))

(declare-fun bm!339374 () Bool)

(declare-fun call!339384 () List!56527)

(assert (=> bm!339374 (= call!339384 (tail!9601 lt!2004534))))

(declare-fun bm!339375 () Bool)

(declare-fun call!339385 () C!26696)

(assert (=> bm!339375 (= call!339385 (head!10455 lt!2004534))))

(declare-fun bm!339376 () Bool)

(declare-fun call!339382 () Bool)

(assert (=> bm!339376 (= call!339382 (isPrefix!4894 lt!2004534 lt!2004534))))

(declare-fun b!4892940 () Bool)

(declare-fun e!3058830 () Unit!146398)

(declare-fun Unit!146431 () Unit!146398)

(assert (=> b!4892940 (= e!3058830 Unit!146431)))

(declare-fun bm!339377 () Bool)

(declare-fun call!339386 () Bool)

(assert (=> bm!339377 (= call!339386 (nullable!4555 (regex!8174 (h!62853 rulesArg!165))))))

(declare-fun b!4892941 () Bool)

(declare-fun e!3058828 () tuple2!60450)

(assert (=> b!4892941 (= e!3058828 (tuple2!60451 Nil!56403 Nil!56403))))

(declare-fun b!4892942 () Bool)

(declare-fun e!3058831 () Bool)

(declare-fun e!3058834 () Bool)

(assert (=> b!4892942 (= e!3058831 e!3058834)))

(declare-fun res!2089734 () Bool)

(assert (=> b!4892942 (=> res!2089734 e!3058834)))

(declare-fun lt!2005710 () tuple2!60450)

(assert (=> b!4892942 (= res!2089734 (isEmpty!30257 (_1!33528 lt!2005710)))))

(declare-fun b!4892943 () Bool)

(assert (=> b!4892943 (= e!3058828 (tuple2!60451 Nil!56403 lt!2004534))))

(declare-fun bm!339378 () Bool)

(declare-fun call!339381 () Unit!146398)

(assert (=> bm!339378 (= call!339381 (lemmaIsPrefixRefl!3291 lt!2004534 lt!2004534))))

(declare-fun b!4892945 () Bool)

(declare-fun c!831637 () Bool)

(assert (=> b!4892945 (= c!831637 call!339386)))

(declare-fun lt!2005708 () Unit!146398)

(declare-fun lt!2005698 () Unit!146398)

(assert (=> b!4892945 (= lt!2005708 lt!2005698)))

(assert (=> b!4892945 (= lt!2004534 Nil!56403)))

(declare-fun call!339380 () Unit!146398)

(assert (=> b!4892945 (= lt!2005698 call!339380)))

(declare-fun lt!2005715 () Unit!146398)

(declare-fun lt!2005717 () Unit!146398)

(assert (=> b!4892945 (= lt!2005715 lt!2005717)))

(assert (=> b!4892945 call!339382))

(assert (=> b!4892945 (= lt!2005717 call!339381)))

(declare-fun e!3058832 () tuple2!60450)

(assert (=> b!4892945 (= e!3058832 e!3058828)))

(declare-fun call!339383 () tuple2!60450)

(declare-fun call!339379 () Regex!13249)

(declare-fun bm!339379 () Bool)

(declare-fun lt!2005707 () List!56527)

(assert (=> bm!339379 (= call!339383 (findLongestMatchInner!1752 call!339379 lt!2005707 (+ (size!37138 Nil!56403) 1) call!339384 lt!2004534 (size!37138 lt!2004534)))))

(declare-fun bm!339380 () Bool)

(assert (=> bm!339380 (= call!339379 (derivativeStep!3876 (regex!8174 (h!62853 rulesArg!165)) call!339385))))

(declare-fun b!4892946 () Bool)

(declare-fun Unit!146432 () Unit!146398)

(assert (=> b!4892946 (= e!3058830 Unit!146432)))

(declare-fun lt!2005706 () Unit!146398)

(assert (=> b!4892946 (= lt!2005706 call!339381)))

(assert (=> b!4892946 call!339382))

(declare-fun lt!2005725 () Unit!146398)

(assert (=> b!4892946 (= lt!2005725 lt!2005706)))

(declare-fun lt!2005723 () Unit!146398)

(assert (=> b!4892946 (= lt!2005723 call!339380)))

(assert (=> b!4892946 (= lt!2004534 Nil!56403)))

(declare-fun lt!2005714 () Unit!146398)

(assert (=> b!4892946 (= lt!2005714 lt!2005723)))

(assert (=> b!4892946 false))

(declare-fun bm!339381 () Bool)

(assert (=> bm!339381 (= call!339380 (lemmaIsPrefixSameLengthThenSameList!1057 lt!2004534 Nil!56403 lt!2004534))))

(declare-fun b!4892947 () Bool)

(declare-fun e!3058827 () tuple2!60450)

(assert (=> b!4892947 (= e!3058827 call!339383)))

(declare-fun b!4892948 () Bool)

(assert (=> b!4892948 (= e!3058834 (>= (size!37138 (_1!33528 lt!2005710)) (size!37138 Nil!56403)))))

(declare-fun b!4892949 () Bool)

(declare-fun e!3058833 () tuple2!60450)

(assert (=> b!4892949 (= e!3058833 e!3058832)))

(declare-fun c!831636 () Bool)

(assert (=> b!4892949 (= c!831636 (= (size!37138 Nil!56403) (size!37138 lt!2004534)))))

(declare-fun b!4892950 () Bool)

(assert (=> b!4892950 (= e!3058833 (tuple2!60451 Nil!56403 lt!2004534))))

(declare-fun b!4892951 () Bool)

(declare-fun e!3058829 () tuple2!60450)

(assert (=> b!4892951 (= e!3058827 e!3058829)))

(declare-fun lt!2005704 () tuple2!60450)

(assert (=> b!4892951 (= lt!2005704 call!339383)))

(declare-fun c!831638 () Bool)

(assert (=> b!4892951 (= c!831638 (isEmpty!30257 (_1!33528 lt!2005704)))))

(declare-fun b!4892952 () Bool)

(assert (=> b!4892952 (= e!3058829 (tuple2!60451 Nil!56403 lt!2004534))))

(declare-fun b!4892953 () Bool)

(assert (=> b!4892953 (= e!3058829 lt!2005704)))

(declare-fun b!4892944 () Bool)

(declare-fun c!831634 () Bool)

(assert (=> b!4892944 (= c!831634 call!339386)))

(declare-fun lt!2005700 () Unit!146398)

(declare-fun lt!2005722 () Unit!146398)

(assert (=> b!4892944 (= lt!2005700 lt!2005722)))

(declare-fun lt!2005721 () C!26696)

(declare-fun lt!2005716 () List!56527)

(assert (=> b!4892944 (= (++!12243 (++!12243 Nil!56403 (Cons!56403 lt!2005721 Nil!56403)) lt!2005716) lt!2004534)))

(assert (=> b!4892944 (= lt!2005722 (lemmaMoveElementToOtherListKeepsConcatEq!1329 Nil!56403 lt!2005721 lt!2005716 lt!2004534))))

(assert (=> b!4892944 (= lt!2005716 (tail!9601 lt!2004534))))

(assert (=> b!4892944 (= lt!2005721 (head!10455 lt!2004534))))

(declare-fun lt!2005705 () Unit!146398)

(declare-fun lt!2005702 () Unit!146398)

(assert (=> b!4892944 (= lt!2005705 lt!2005702)))

(assert (=> b!4892944 (isPrefix!4894 (++!12243 Nil!56403 (Cons!56403 (head!10455 (getSuffix!2886 lt!2004534 Nil!56403)) Nil!56403)) lt!2004534)))

(assert (=> b!4892944 (= lt!2005702 (lemmaAddHeadSuffixToPrefixStillPrefix!711 Nil!56403 lt!2004534))))

(declare-fun lt!2005712 () Unit!146398)

(declare-fun lt!2005711 () Unit!146398)

(assert (=> b!4892944 (= lt!2005712 lt!2005711)))

(assert (=> b!4892944 (= lt!2005711 (lemmaAddHeadSuffixToPrefixStillPrefix!711 Nil!56403 lt!2004534))))

(assert (=> b!4892944 (= lt!2005707 (++!12243 Nil!56403 (Cons!56403 (head!10455 lt!2004534) Nil!56403)))))

(declare-fun lt!2005703 () Unit!146398)

(assert (=> b!4892944 (= lt!2005703 e!3058830)))

(declare-fun c!831635 () Bool)

(assert (=> b!4892944 (= c!831635 (= (size!37138 Nil!56403) (size!37138 lt!2004534)))))

(declare-fun lt!2005699 () Unit!146398)

(declare-fun lt!2005709 () Unit!146398)

(assert (=> b!4892944 (= lt!2005699 lt!2005709)))

(assert (=> b!4892944 (<= (size!37138 Nil!56403) (size!37138 lt!2004534))))

(assert (=> b!4892944 (= lt!2005709 (lemmaIsPrefixThenSmallerEqSize!623 Nil!56403 lt!2004534))))

(assert (=> b!4892944 (= e!3058832 e!3058827)))

(declare-fun d!1571626 () Bool)

(assert (=> d!1571626 e!3058831))

(declare-fun res!2089733 () Bool)

(assert (=> d!1571626 (=> (not res!2089733) (not e!3058831))))

(assert (=> d!1571626 (= res!2089733 (= (++!12243 (_1!33528 lt!2005710) (_2!33528 lt!2005710)) lt!2004534))))

(assert (=> d!1571626 (= lt!2005710 e!3058833)))

(declare-fun c!831639 () Bool)

(assert (=> d!1571626 (= c!831639 (lostCause!1085 (regex!8174 (h!62853 rulesArg!165))))))

(declare-fun lt!2005719 () Unit!146398)

(declare-fun Unit!146433 () Unit!146398)

(assert (=> d!1571626 (= lt!2005719 Unit!146433)))

(assert (=> d!1571626 (= (getSuffix!2886 lt!2004534 Nil!56403) lt!2004534)))

(declare-fun lt!2005720 () Unit!146398)

(declare-fun lt!2005701 () Unit!146398)

(assert (=> d!1571626 (= lt!2005720 lt!2005701)))

(declare-fun lt!2005718 () List!56527)

(assert (=> d!1571626 (= lt!2004534 lt!2005718)))

(assert (=> d!1571626 (= lt!2005701 (lemmaSamePrefixThenSameSuffix!2302 Nil!56403 lt!2004534 Nil!56403 lt!2005718 lt!2004534))))

(assert (=> d!1571626 (= lt!2005718 (getSuffix!2886 lt!2004534 Nil!56403))))

(declare-fun lt!2005724 () Unit!146398)

(declare-fun lt!2005713 () Unit!146398)

(assert (=> d!1571626 (= lt!2005724 lt!2005713)))

(assert (=> d!1571626 (isPrefix!4894 Nil!56403 (++!12243 Nil!56403 lt!2004534))))

(assert (=> d!1571626 (= lt!2005713 (lemmaConcatTwoListThenFirstIsPrefix!3122 Nil!56403 lt!2004534))))

(assert (=> d!1571626 (validRegex!5882 (regex!8174 (h!62853 rulesArg!165)))))

(assert (=> d!1571626 (= (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004534 lt!2004534 (size!37138 lt!2004534)) lt!2005710)))

(assert (= (and d!1571626 c!831639) b!4892950))

(assert (= (and d!1571626 (not c!831639)) b!4892949))

(assert (= (and b!4892949 c!831636) b!4892945))

(assert (= (and b!4892949 (not c!831636)) b!4892944))

(assert (= (and b!4892945 c!831637) b!4892941))

(assert (= (and b!4892945 (not c!831637)) b!4892943))

(assert (= (and b!4892944 c!831635) b!4892946))

(assert (= (and b!4892944 (not c!831635)) b!4892940))

(assert (= (and b!4892944 c!831634) b!4892951))

(assert (= (and b!4892944 (not c!831634)) b!4892947))

(assert (= (and b!4892951 c!831638) b!4892952))

(assert (= (and b!4892951 (not c!831638)) b!4892953))

(assert (= (or b!4892951 b!4892947) bm!339374))

(assert (= (or b!4892951 b!4892947) bm!339375))

(assert (= (or b!4892951 b!4892947) bm!339380))

(assert (= (or b!4892951 b!4892947) bm!339379))

(assert (= (or b!4892945 b!4892944) bm!339377))

(assert (= (or b!4892945 b!4892946) bm!339378))

(assert (= (or b!4892945 b!4892946) bm!339381))

(assert (= (or b!4892945 b!4892946) bm!339376))

(assert (= (and d!1571626 res!2089733) b!4892942))

(assert (= (and b!4892942 (not res!2089734)) b!4892948))

(assert (=> bm!339379 m!5894382))

(declare-fun m!5897858 () Bool)

(assert (=> bm!339379 m!5897858))

(declare-fun m!5897860 () Bool)

(assert (=> d!1571626 m!5897860))

(declare-fun m!5897862 () Bool)

(assert (=> d!1571626 m!5897862))

(declare-fun m!5897864 () Bool)

(assert (=> d!1571626 m!5897864))

(assert (=> d!1571626 m!5894684))

(declare-fun m!5897866 () Bool)

(assert (=> d!1571626 m!5897866))

(declare-fun m!5897868 () Bool)

(assert (=> d!1571626 m!5897868))

(assert (=> d!1571626 m!5894804))

(assert (=> d!1571626 m!5897862))

(declare-fun m!5897870 () Bool)

(assert (=> d!1571626 m!5897870))

(declare-fun m!5897872 () Bool)

(assert (=> b!4892951 m!5897872))

(declare-fun m!5897874 () Bool)

(assert (=> bm!339380 m!5897874))

(assert (=> bm!339378 m!5894174))

(assert (=> bm!339376 m!5894172))

(declare-fun m!5897876 () Bool)

(assert (=> b!4892948 m!5897876))

(assert (=> b!4892948 m!5894316))

(assert (=> bm!339374 m!5894462))

(declare-fun m!5897878 () Bool)

(assert (=> b!4892942 m!5897878))

(assert (=> bm!339375 m!5894460))

(assert (=> b!4892944 m!5894316))

(declare-fun m!5897880 () Bool)

(assert (=> b!4892944 m!5897880))

(assert (=> b!4892944 m!5897866))

(declare-fun m!5897882 () Bool)

(assert (=> b!4892944 m!5897882))

(declare-fun m!5897884 () Bool)

(assert (=> b!4892944 m!5897884))

(declare-fun m!5897886 () Bool)

(assert (=> b!4892944 m!5897886))

(declare-fun m!5897888 () Bool)

(assert (=> b!4892944 m!5897888))

(assert (=> b!4892944 m!5897888))

(declare-fun m!5897890 () Bool)

(assert (=> b!4892944 m!5897890))

(assert (=> b!4892944 m!5894462))

(assert (=> b!4892944 m!5894460))

(assert (=> b!4892944 m!5897886))

(declare-fun m!5897892 () Bool)

(assert (=> b!4892944 m!5897892))

(assert (=> b!4892944 m!5897866))

(assert (=> b!4892944 m!5894382))

(declare-fun m!5897894 () Bool)

(assert (=> b!4892944 m!5897894))

(declare-fun m!5897896 () Bool)

(assert (=> b!4892944 m!5897896))

(assert (=> bm!339377 m!5894686))

(declare-fun m!5897898 () Bool)

(assert (=> bm!339381 m!5897898))

(assert (=> b!4891483 d!1571626))

(declare-fun bs!1176014 () Bool)

(declare-fun d!1571628 () Bool)

(assert (= bs!1176014 (and d!1571628 b!4890845)))

(declare-fun lambda!244016 () Int)

(assert (=> bs!1176014 (= lambda!244016 lambda!243967)))

(declare-fun bs!1176015 () Bool)

(assert (= bs!1176015 (and d!1571628 d!1570578)))

(assert (=> bs!1176015 (= lambda!244016 lambda!243985)))

(declare-fun bs!1176016 () Bool)

(assert (= bs!1176016 (and d!1571628 b!4891527)))

(assert (=> bs!1176016 (= (and (= (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) (= (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))))) (= lambda!244016 lambda!243993))))

(declare-fun bs!1176017 () Bool)

(assert (= bs!1176017 (and d!1571628 d!1571600)))

(assert (=> bs!1176017 (= (and (= (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) (= (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))))) (= lambda!244016 lambda!244013))))

(declare-fun b!4892958 () Bool)

(declare-fun e!3058837 () Bool)

(assert (=> b!4892958 (= e!3058837 true)))

(assert (=> d!1571628 e!3058837))

(assert (= d!1571628 b!4892958))

(assert (=> b!4892958 (< (dynLambda!22617 order!25463 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) (dynLambda!22618 order!25465 lambda!244016))))

(assert (=> b!4892958 (< (dynLambda!22619 order!25467 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) (dynLambda!22618 order!25465 lambda!244016))))

(assert (=> d!1571628 (= (list!17722 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (_1!33528 lt!2005035))))) (list!17722 (seqFromList!5936 (_1!33528 lt!2005035))))))

(declare-fun lt!2005728 () Unit!146398)

(assert (=> d!1571628 (= lt!2005728 (ForallOf!1132 lambda!244016 (seqFromList!5936 (_1!33528 lt!2005035))))))

(assert (=> d!1571628 (= (lemmaSemiInverse!2563 (transformation!8174 (h!62853 rulesArg!165)) (seqFromList!5936 (_1!33528 lt!2005035))) lt!2005728)))

(declare-fun b_lambda!194335 () Bool)

(assert (=> (not b_lambda!194335) (not d!1571628)))

(declare-fun t!365557 () Bool)

(declare-fun tb!258809 () Bool)

(assert (=> (and b!4890709 (= (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) t!365557) tb!258809))

(declare-fun tp!1377022 () Bool)

(declare-fun b!4892959 () Bool)

(declare-fun e!3058838 () Bool)

(assert (=> b!4892959 (= e!3058838 (and (inv!72677 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (_1!33528 lt!2005035)))))) tp!1377022))))

(declare-fun result!322372 () Bool)

(assert (=> tb!258809 (= result!322372 (and (inv!72679 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (_1!33528 lt!2005035))))) e!3058838))))

(assert (= tb!258809 b!4892959))

(declare-fun m!5897900 () Bool)

(assert (=> b!4892959 m!5897900))

(declare-fun m!5897902 () Bool)

(assert (=> tb!258809 m!5897902))

(assert (=> d!1571628 t!365557))

(declare-fun b_and!344803 () Bool)

(assert (= b_and!344797 (and (=> t!365557 result!322372) b_and!344803)))

(declare-fun t!365559 () Bool)

(declare-fun tb!258811 () Bool)

(assert (=> (and b!4891010 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) t!365559) tb!258811))

(declare-fun result!322374 () Bool)

(assert (= result!322374 result!322372))

(assert (=> d!1571628 t!365559))

(declare-fun b_and!344805 () Bool)

(assert (= b_and!344799 (and (=> t!365559 result!322374) b_and!344805)))

(declare-fun t!365561 () Bool)

(declare-fun tb!258813 () Bool)

(assert (=> (and b!4891741 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) t!365561) tb!258813))

(declare-fun result!322376 () Bool)

(assert (= result!322376 result!322372))

(assert (=> d!1571628 t!365561))

(declare-fun b_and!344807 () Bool)

(assert (= b_and!344801 (and (=> t!365561 result!322376) b_and!344807)))

(declare-fun b_lambda!194337 () Bool)

(assert (=> (not b_lambda!194337) (not d!1571628)))

(declare-fun t!365563 () Bool)

(declare-fun tb!258815 () Bool)

(assert (=> (and b!4890709 (= (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) t!365563) tb!258815))

(declare-fun result!322378 () Bool)

(assert (=> tb!258815 (= result!322378 (inv!21 (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (_1!33528 lt!2005035)))))))

(declare-fun m!5897904 () Bool)

(assert (=> tb!258815 m!5897904))

(assert (=> d!1571628 t!365563))

(declare-fun b_and!344809 () Bool)

(assert (= b_and!344785 (and (=> t!365563 result!322378) b_and!344809)))

(declare-fun t!365565 () Bool)

(declare-fun tb!258817 () Bool)

(assert (=> (and b!4891010 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) t!365565) tb!258817))

(declare-fun result!322380 () Bool)

(assert (= result!322380 result!322378))

(assert (=> d!1571628 t!365565))

(declare-fun b_and!344811 () Bool)

(assert (= b_and!344787 (and (=> t!365565 result!322380) b_and!344811)))

(declare-fun t!365567 () Bool)

(declare-fun tb!258819 () Bool)

(assert (=> (and b!4891741 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) t!365567) tb!258819))

(declare-fun result!322382 () Bool)

(assert (= result!322382 result!322378))

(assert (=> d!1571628 t!365567))

(declare-fun b_and!344813 () Bool)

(assert (= b_and!344789 (and (=> t!365567 result!322382) b_and!344813)))

(declare-fun m!5897906 () Bool)

(assert (=> d!1571628 m!5897906))

(declare-fun m!5897908 () Bool)

(assert (=> d!1571628 m!5897908))

(declare-fun m!5897910 () Bool)

(assert (=> d!1571628 m!5897910))

(assert (=> d!1571628 m!5897906))

(assert (=> d!1571628 m!5895138))

(declare-fun m!5897912 () Bool)

(assert (=> d!1571628 m!5897912))

(assert (=> d!1571628 m!5895138))

(declare-fun m!5897914 () Bool)

(assert (=> d!1571628 m!5897914))

(assert (=> d!1571628 m!5895138))

(assert (=> d!1571628 m!5897910))

(assert (=> b!4891483 d!1571628))

(declare-fun d!1571630 () Bool)

(declare-fun lt!2005729 () Int)

(assert (=> d!1571630 (>= lt!2005729 0)))

(declare-fun e!3058840 () Int)

(assert (=> d!1571630 (= lt!2005729 e!3058840)))

(declare-fun c!831641 () Bool)

(assert (=> d!1571630 (= c!831641 ((_ is Nil!56403) (_1!33528 lt!2005035)))))

(assert (=> d!1571630 (= (size!37138 (_1!33528 lt!2005035)) lt!2005729)))

(declare-fun b!4892960 () Bool)

(assert (=> b!4892960 (= e!3058840 0)))

(declare-fun b!4892961 () Bool)

(assert (=> b!4892961 (= e!3058840 (+ 1 (size!37138 (t!365273 (_1!33528 lt!2005035)))))))

(assert (= (and d!1571630 c!831641) b!4892960))

(assert (= (and d!1571630 (not c!831641)) b!4892961))

(declare-fun m!5897916 () Bool)

(assert (=> b!4892961 m!5897916))

(assert (=> b!4891483 d!1571630))

(declare-fun d!1571632 () Bool)

(assert (=> d!1571632 (= (apply!13540 (transformation!8174 (h!62853 rulesArg!165)) (seqFromList!5936 (_1!33528 lt!2005035))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (_1!33528 lt!2005035))))))

(declare-fun b_lambda!194339 () Bool)

(assert (=> (not b_lambda!194339) (not d!1571632)))

(assert (=> d!1571632 t!365563))

(declare-fun b_and!344815 () Bool)

(assert (= b_and!344809 (and (=> t!365563 result!322378) b_and!344815)))

(assert (=> d!1571632 t!365565))

(declare-fun b_and!344817 () Bool)

(assert (= b_and!344811 (and (=> t!365565 result!322380) b_and!344817)))

(assert (=> d!1571632 t!365567))

(declare-fun b_and!344819 () Bool)

(assert (= b_and!344813 (and (=> t!365567 result!322382) b_and!344819)))

(assert (=> d!1571632 m!5895138))

(assert (=> d!1571632 m!5897910))

(assert (=> b!4891483 d!1571632))

(declare-fun d!1571634 () Bool)

(declare-fun e!3058841 () Bool)

(assert (=> d!1571634 e!3058841))

(declare-fun res!2089735 () Bool)

(assert (=> d!1571634 (=> res!2089735 e!3058841)))

(assert (=> d!1571634 (= res!2089735 (isEmpty!30257 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004534 lt!2004534 (size!37138 lt!2004534)))))))

(declare-fun lt!2005730 () Unit!146398)

(assert (=> d!1571634 (= lt!2005730 (choose!35705 (regex!8174 (h!62853 rulesArg!165)) lt!2004534))))

(assert (=> d!1571634 (validRegex!5882 (regex!8174 (h!62853 rulesArg!165)))))

(assert (=> d!1571634 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1715 (regex!8174 (h!62853 rulesArg!165)) lt!2004534) lt!2005730)))

(declare-fun b!4892962 () Bool)

(assert (=> b!4892962 (= e!3058841 (matchR!6530 (regex!8174 (h!62853 rulesArg!165)) (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004534 lt!2004534 (size!37138 lt!2004534)))))))

(assert (= (and d!1571634 (not res!2089735)) b!4892962))

(assert (=> d!1571634 m!5894316))

(assert (=> d!1571634 m!5894632))

(declare-fun m!5897918 () Bool)

(assert (=> d!1571634 m!5897918))

(assert (=> d!1571634 m!5894382))

(assert (=> d!1571634 m!5894684))

(assert (=> d!1571634 m!5894316))

(assert (=> d!1571634 m!5894382))

(assert (=> d!1571634 m!5894616))

(assert (=> b!4892962 m!5894316))

(assert (=> b!4892962 m!5894382))

(assert (=> b!4892962 m!5894316))

(assert (=> b!4892962 m!5894382))

(assert (=> b!4892962 m!5894616))

(assert (=> b!4892962 m!5894618))

(assert (=> b!4891483 d!1571634))

(declare-fun d!1571636 () Bool)

(assert (=> d!1571636 (= (isEmpty!30257 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004534 lt!2004534 (size!37138 lt!2004534)))) ((_ is Nil!56403) (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004534 lt!2004534 (size!37138 lt!2004534)))))))

(assert (=> b!4891483 d!1571636))

(assert (=> b!4891483 d!1570770))

(assert (=> b!4891483 d!1570684))

(assert (=> b!4891483 d!1570634))

(declare-fun d!1571638 () Bool)

(assert (=> d!1571638 (= (seqFromList!5936 (_1!33528 lt!2005035)) (fromListB!2691 (_1!33528 lt!2005035)))))

(declare-fun bs!1176018 () Bool)

(assert (= bs!1176018 d!1571638))

(declare-fun m!5897920 () Bool)

(assert (=> bs!1176018 m!5897920))

(assert (=> b!4891483 d!1571638))

(assert (=> b!4891623 d!1570800))

(assert (=> d!1570686 d!1571408))

(declare-fun d!1571640 () Bool)

(assert (=> d!1571640 (= (isDefined!11037 (maxPrefixZipper!673 thiss!14805 (t!365275 (t!365275 rulesArg!165)) (list!17722 input!1236))) (not (isEmpty!30258 (maxPrefixZipper!673 thiss!14805 (t!365275 (t!365275 rulesArg!165)) (list!17722 input!1236)))))))

(declare-fun bs!1176019 () Bool)

(assert (= bs!1176019 d!1571640))

(assert (=> bs!1176019 m!5894582))

(declare-fun m!5897922 () Bool)

(assert (=> bs!1176019 m!5897922))

(assert (=> d!1570686 d!1571640))

(declare-fun d!1571642 () Bool)

(assert (=> d!1571642 (isPrefix!4894 lt!2005005 lt!2005008)))

(declare-fun lt!2005731 () Unit!146398)

(assert (=> d!1571642 (= lt!2005731 (choose!35699 lt!2005005 lt!2005008))))

(assert (=> d!1571642 (= (lemmaIsPrefixRefl!3291 lt!2005005 lt!2005008) lt!2005731)))

(declare-fun bs!1176020 () Bool)

(assert (= bs!1176020 d!1571642))

(assert (=> bs!1176020 m!5895016))

(declare-fun m!5897924 () Bool)

(assert (=> bs!1176020 m!5897924))

(assert (=> d!1570686 d!1571642))

(declare-fun b!4892964 () Bool)

(declare-fun res!2089738 () Bool)

(declare-fun e!3058842 () Bool)

(assert (=> b!4892964 (=> (not res!2089738) (not e!3058842))))

(assert (=> b!4892964 (= res!2089738 (= (head!10455 lt!2005005) (head!10455 lt!2005008)))))

(declare-fun d!1571644 () Bool)

(declare-fun e!3058843 () Bool)

(assert (=> d!1571644 e!3058843))

(declare-fun res!2089737 () Bool)

(assert (=> d!1571644 (=> res!2089737 e!3058843)))

(declare-fun lt!2005732 () Bool)

(assert (=> d!1571644 (= res!2089737 (not lt!2005732))))

(declare-fun e!3058844 () Bool)

(assert (=> d!1571644 (= lt!2005732 e!3058844)))

(declare-fun res!2089739 () Bool)

(assert (=> d!1571644 (=> res!2089739 e!3058844)))

(assert (=> d!1571644 (= res!2089739 ((_ is Nil!56403) lt!2005005))))

(assert (=> d!1571644 (= (isPrefix!4894 lt!2005005 lt!2005008) lt!2005732)))

(declare-fun b!4892963 () Bool)

(assert (=> b!4892963 (= e!3058844 e!3058842)))

(declare-fun res!2089736 () Bool)

(assert (=> b!4892963 (=> (not res!2089736) (not e!3058842))))

(assert (=> b!4892963 (= res!2089736 (not ((_ is Nil!56403) lt!2005008)))))

(declare-fun b!4892965 () Bool)

(assert (=> b!4892965 (= e!3058842 (isPrefix!4894 (tail!9601 lt!2005005) (tail!9601 lt!2005008)))))

(declare-fun b!4892966 () Bool)

(assert (=> b!4892966 (= e!3058843 (>= (size!37138 lt!2005008) (size!37138 lt!2005005)))))

(assert (= (and d!1571644 (not res!2089739)) b!4892963))

(assert (= (and b!4892963 res!2089736) b!4892964))

(assert (= (and b!4892964 res!2089738) b!4892965))

(assert (= (and d!1571644 (not res!2089737)) b!4892966))

(declare-fun m!5897926 () Bool)

(assert (=> b!4892964 m!5897926))

(declare-fun m!5897928 () Bool)

(assert (=> b!4892964 m!5897928))

(declare-fun m!5897930 () Bool)

(assert (=> b!4892965 m!5897930))

(declare-fun m!5897932 () Bool)

(assert (=> b!4892965 m!5897932))

(assert (=> b!4892965 m!5897930))

(assert (=> b!4892965 m!5897932))

(declare-fun m!5897934 () Bool)

(assert (=> b!4892965 m!5897934))

(declare-fun m!5897936 () Bool)

(assert (=> b!4892966 m!5897936))

(declare-fun m!5897938 () Bool)

(assert (=> b!4892966 m!5897938))

(assert (=> d!1570686 d!1571644))

(assert (=> d!1570686 d!1571352))

(assert (=> d!1570686 d!1570502))

(assert (=> d!1570686 d!1571616))

(declare-fun d!1571646 () Bool)

(assert (=> d!1571646 (= (head!10455 lt!2004578) (h!62851 lt!2004578))))

(assert (=> b!4891633 d!1571646))

(declare-fun d!1571648 () Bool)

(assert (=> d!1571648 (= (head!10455 lt!2004581) (h!62851 lt!2004581))))

(assert (=> b!4891633 d!1571648))

(declare-fun d!1571650 () Bool)

(assert (=> d!1571650 (= (list!17726 (xs!18058 (c!831175 (_2!33525 lt!2004536)))) (innerList!14830 (xs!18058 (c!831175 (_2!33525 lt!2004536)))))))

(assert (=> b!4891081 d!1571650))

(declare-fun b!4892967 () Bool)

(declare-fun e!3058850 () Bool)

(assert (=> b!4892967 (= e!3058850 (= (head!10455 (tail!9601 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660))))) (c!831176 (derivativeStep!3876 (regex!8174 (h!62853 rulesArg!165)) (head!10455 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660))))))))))

(declare-fun b!4892968 () Bool)

(declare-fun e!3058851 () Bool)

(declare-fun lt!2005733 () Bool)

(assert (=> b!4892968 (= e!3058851 (not lt!2005733))))

(declare-fun b!4892969 () Bool)

(declare-fun res!2089747 () Bool)

(declare-fun e!3058845 () Bool)

(assert (=> b!4892969 (=> res!2089747 e!3058845)))

(assert (=> b!4892969 (= res!2089747 (not (isEmpty!30257 (tail!9601 (tail!9601 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660))))))))))

(declare-fun b!4892970 () Bool)

(declare-fun e!3058846 () Bool)

(assert (=> b!4892970 (= e!3058846 e!3058845)))

(declare-fun res!2089744 () Bool)

(assert (=> b!4892970 (=> res!2089744 e!3058845)))

(declare-fun call!339387 () Bool)

(assert (=> b!4892970 (= res!2089744 call!339387)))

(declare-fun b!4892971 () Bool)

(declare-fun res!2089740 () Bool)

(declare-fun e!3058849 () Bool)

(assert (=> b!4892971 (=> res!2089740 e!3058849)))

(assert (=> b!4892971 (= res!2089740 (not ((_ is ElementMatch!13249) (derivativeStep!3876 (regex!8174 (h!62853 rulesArg!165)) (head!10455 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660))))))))))

(assert (=> b!4892971 (= e!3058851 e!3058849)))

(declare-fun b!4892972 () Bool)

(assert (=> b!4892972 (= e!3058849 e!3058846)))

(declare-fun res!2089746 () Bool)

(assert (=> b!4892972 (=> (not res!2089746) (not e!3058846))))

(assert (=> b!4892972 (= res!2089746 (not lt!2005733))))

(declare-fun b!4892973 () Bool)

(declare-fun e!3058848 () Bool)

(assert (=> b!4892973 (= e!3058848 (matchR!6530 (derivativeStep!3876 (derivativeStep!3876 (regex!8174 (h!62853 rulesArg!165)) (head!10455 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660))))) (head!10455 (tail!9601 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660)))))) (tail!9601 (tail!9601 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660)))))))))

(declare-fun b!4892975 () Bool)

(declare-fun e!3058847 () Bool)

(assert (=> b!4892975 (= e!3058847 e!3058851)))

(declare-fun c!831642 () Bool)

(assert (=> b!4892975 (= c!831642 ((_ is EmptyLang!13249) (derivativeStep!3876 (regex!8174 (h!62853 rulesArg!165)) (head!10455 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660)))))))))

(declare-fun b!4892976 () Bool)

(declare-fun res!2089743 () Bool)

(assert (=> b!4892976 (=> res!2089743 e!3058849)))

(assert (=> b!4892976 (= res!2089743 e!3058850)))

(declare-fun res!2089742 () Bool)

(assert (=> b!4892976 (=> (not res!2089742) (not e!3058850))))

(assert (=> b!4892976 (= res!2089742 lt!2005733)))

(declare-fun b!4892977 () Bool)

(assert (=> b!4892977 (= e!3058847 (= lt!2005733 call!339387))))

(declare-fun b!4892978 () Bool)

(assert (=> b!4892978 (= e!3058845 (not (= (head!10455 (tail!9601 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660))))) (c!831176 (derivativeStep!3876 (regex!8174 (h!62853 rulesArg!165)) (head!10455 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660)))))))))))

(declare-fun b!4892979 () Bool)

(declare-fun res!2089745 () Bool)

(assert (=> b!4892979 (=> (not res!2089745) (not e!3058850))))

(assert (=> b!4892979 (= res!2089745 (not call!339387))))

(declare-fun d!1571652 () Bool)

(assert (=> d!1571652 e!3058847))

(declare-fun c!831644 () Bool)

(assert (=> d!1571652 (= c!831644 ((_ is EmptyExpr!13249) (derivativeStep!3876 (regex!8174 (h!62853 rulesArg!165)) (head!10455 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660)))))))))

(assert (=> d!1571652 (= lt!2005733 e!3058848)))

(declare-fun c!831643 () Bool)

(assert (=> d!1571652 (= c!831643 (isEmpty!30257 (tail!9601 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660))))))))

(assert (=> d!1571652 (validRegex!5882 (derivativeStep!3876 (regex!8174 (h!62853 rulesArg!165)) (head!10455 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660))))))))

(assert (=> d!1571652 (= (matchR!6530 (derivativeStep!3876 (regex!8174 (h!62853 rulesArg!165)) (head!10455 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660))))) (tail!9601 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660))))) lt!2005733)))

(declare-fun b!4892974 () Bool)

(assert (=> b!4892974 (= e!3058848 (nullable!4555 (derivativeStep!3876 (regex!8174 (h!62853 rulesArg!165)) (head!10455 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660)))))))))

(declare-fun b!4892980 () Bool)

(declare-fun res!2089741 () Bool)

(assert (=> b!4892980 (=> (not res!2089741) (not e!3058850))))

(assert (=> b!4892980 (= res!2089741 (isEmpty!30257 (tail!9601 (tail!9601 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660)))))))))

(declare-fun bm!339382 () Bool)

(assert (=> bm!339382 (= call!339387 (isEmpty!30257 (tail!9601 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660))))))))

(assert (= (and d!1571652 c!831643) b!4892974))

(assert (= (and d!1571652 (not c!831643)) b!4892973))

(assert (= (and d!1571652 c!831644) b!4892977))

(assert (= (and d!1571652 (not c!831644)) b!4892975))

(assert (= (and b!4892975 c!831642) b!4892968))

(assert (= (and b!4892975 (not c!831642)) b!4892971))

(assert (= (and b!4892971 (not res!2089740)) b!4892976))

(assert (= (and b!4892976 res!2089742) b!4892979))

(assert (= (and b!4892979 res!2089745) b!4892980))

(assert (= (and b!4892980 res!2089741) b!4892967))

(assert (= (and b!4892976 (not res!2089743)) b!4892972))

(assert (= (and b!4892972 res!2089746) b!4892970))

(assert (= (and b!4892970 (not res!2089744)) b!4892969))

(assert (= (and b!4892969 (not res!2089747)) b!4892978))

(assert (= (or b!4892977 b!4892970 b!4892979) bm!339382))

(assert (=> b!4892967 m!5894678))

(declare-fun m!5897940 () Bool)

(assert (=> b!4892967 m!5897940))

(assert (=> b!4892978 m!5894678))

(assert (=> b!4892978 m!5897940))

(assert (=> b!4892973 m!5894678))

(assert (=> b!4892973 m!5897940))

(assert (=> b!4892973 m!5894676))

(assert (=> b!4892973 m!5897940))

(declare-fun m!5897942 () Bool)

(assert (=> b!4892973 m!5897942))

(assert (=> b!4892973 m!5894678))

(declare-fun m!5897944 () Bool)

(assert (=> b!4892973 m!5897944))

(assert (=> b!4892973 m!5897942))

(assert (=> b!4892973 m!5897944))

(declare-fun m!5897946 () Bool)

(assert (=> b!4892973 m!5897946))

(assert (=> b!4892980 m!5894678))

(assert (=> b!4892980 m!5897944))

(assert (=> b!4892980 m!5897944))

(declare-fun m!5897948 () Bool)

(assert (=> b!4892980 m!5897948))

(assert (=> b!4892969 m!5894678))

(assert (=> b!4892969 m!5897944))

(assert (=> b!4892969 m!5897944))

(assert (=> b!4892969 m!5897948))

(assert (=> bm!339382 m!5894678))

(assert (=> bm!339382 m!5894682))

(assert (=> d!1571652 m!5894678))

(assert (=> d!1571652 m!5894682))

(assert (=> d!1571652 m!5894676))

(declare-fun m!5897950 () Bool)

(assert (=> d!1571652 m!5897950))

(assert (=> b!4892974 m!5894676))

(declare-fun m!5897952 () Bool)

(assert (=> b!4892974 m!5897952))

(assert (=> b!4891169 d!1571652))

(declare-fun b!4892981 () Bool)

(declare-fun e!3058854 () Regex!13249)

(declare-fun e!3058856 () Regex!13249)

(assert (=> b!4892981 (= e!3058854 e!3058856)))

(declare-fun c!831647 () Bool)

(assert (=> b!4892981 (= c!831647 ((_ is Star!13249) (regex!8174 (h!62853 rulesArg!165))))))

(declare-fun call!339391 () Regex!13249)

(declare-fun c!831648 () Bool)

(declare-fun bm!339383 () Bool)

(assert (=> bm!339383 (= call!339391 (derivativeStep!3876 (ite c!831648 (regOne!27011 (regex!8174 (h!62853 rulesArg!165))) (ite c!831647 (reg!13578 (regex!8174 (h!62853 rulesArg!165))) (regOne!27010 (regex!8174 (h!62853 rulesArg!165))))) (head!10455 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660))))))))

(declare-fun b!4892982 () Bool)

(declare-fun e!3058853 () Regex!13249)

(declare-fun call!339389 () Regex!13249)

(assert (=> b!4892982 (= e!3058853 (Union!13249 (Concat!21734 call!339389 (regTwo!27010 (regex!8174 (h!62853 rulesArg!165)))) EmptyLang!13249))))

(declare-fun b!4892983 () Bool)

(declare-fun call!339388 () Regex!13249)

(assert (=> b!4892983 (= e!3058856 (Concat!21734 call!339388 (regex!8174 (h!62853 rulesArg!165))))))

(declare-fun d!1571654 () Bool)

(declare-fun lt!2005734 () Regex!13249)

(assert (=> d!1571654 (validRegex!5882 lt!2005734)))

(declare-fun e!3058852 () Regex!13249)

(assert (=> d!1571654 (= lt!2005734 e!3058852)))

(declare-fun c!831649 () Bool)

(assert (=> d!1571654 (= c!831649 (or ((_ is EmptyExpr!13249) (regex!8174 (h!62853 rulesArg!165))) ((_ is EmptyLang!13249) (regex!8174 (h!62853 rulesArg!165)))))))

(assert (=> d!1571654 (validRegex!5882 (regex!8174 (h!62853 rulesArg!165)))))

(assert (=> d!1571654 (= (derivativeStep!3876 (regex!8174 (h!62853 rulesArg!165)) (head!10455 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660))))) lt!2005734)))

(declare-fun bm!339384 () Bool)

(assert (=> bm!339384 (= call!339389 call!339388)))

(declare-fun b!4892984 () Bool)

(assert (=> b!4892984 (= e!3058852 EmptyLang!13249)))

(declare-fun call!339390 () Regex!13249)

(declare-fun bm!339385 () Bool)

(assert (=> bm!339385 (= call!339390 (derivativeStep!3876 (ite c!831648 (regTwo!27011 (regex!8174 (h!62853 rulesArg!165))) (regTwo!27010 (regex!8174 (h!62853 rulesArg!165)))) (head!10455 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660))))))))

(declare-fun b!4892985 () Bool)

(assert (=> b!4892985 (= c!831648 ((_ is Union!13249) (regex!8174 (h!62853 rulesArg!165))))))

(declare-fun e!3058855 () Regex!13249)

(assert (=> b!4892985 (= e!3058855 e!3058854)))

(declare-fun b!4892986 () Bool)

(assert (=> b!4892986 (= e!3058855 (ite (= (head!10455 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660)))) (c!831176 (regex!8174 (h!62853 rulesArg!165)))) EmptyExpr!13249 EmptyLang!13249))))

(declare-fun b!4892987 () Bool)

(assert (=> b!4892987 (= e!3058854 (Union!13249 call!339391 call!339390))))

(declare-fun b!4892988 () Bool)

(assert (=> b!4892988 (= e!3058852 e!3058855)))

(declare-fun c!831646 () Bool)

(assert (=> b!4892988 (= c!831646 ((_ is ElementMatch!13249) (regex!8174 (h!62853 rulesArg!165))))))

(declare-fun b!4892989 () Bool)

(declare-fun c!831645 () Bool)

(assert (=> b!4892989 (= c!831645 (nullable!4555 (regOne!27010 (regex!8174 (h!62853 rulesArg!165)))))))

(assert (=> b!4892989 (= e!3058856 e!3058853)))

(declare-fun b!4892990 () Bool)

(assert (=> b!4892990 (= e!3058853 (Union!13249 (Concat!21734 call!339389 (regTwo!27010 (regex!8174 (h!62853 rulesArg!165)))) call!339390))))

(declare-fun bm!339386 () Bool)

(assert (=> bm!339386 (= call!339388 call!339391)))

(assert (= (and d!1571654 c!831649) b!4892984))

(assert (= (and d!1571654 (not c!831649)) b!4892988))

(assert (= (and b!4892988 c!831646) b!4892986))

(assert (= (and b!4892988 (not c!831646)) b!4892985))

(assert (= (and b!4892985 c!831648) b!4892987))

(assert (= (and b!4892985 (not c!831648)) b!4892981))

(assert (= (and b!4892981 c!831647) b!4892983))

(assert (= (and b!4892981 (not c!831647)) b!4892989))

(assert (= (and b!4892989 c!831645) b!4892990))

(assert (= (and b!4892989 (not c!831645)) b!4892982))

(assert (= (or b!4892990 b!4892982) bm!339384))

(assert (= (or b!4892983 bm!339384) bm!339386))

(assert (= (or b!4892987 bm!339386) bm!339383))

(assert (= (or b!4892987 b!4892990) bm!339385))

(assert (=> bm!339383 m!5894674))

(declare-fun m!5897954 () Bool)

(assert (=> bm!339383 m!5897954))

(declare-fun m!5897956 () Bool)

(assert (=> d!1571654 m!5897956))

(assert (=> d!1571654 m!5894684))

(assert (=> bm!339385 m!5894674))

(declare-fun m!5897958 () Bool)

(assert (=> bm!339385 m!5897958))

(assert (=> b!4892989 m!5897668))

(assert (=> b!4891169 d!1571654))

(assert (=> b!4891169 d!1571334))

(assert (=> b!4891169 d!1571624))

(declare-fun d!1571656 () Bool)

(declare-fun lt!2005735 () Int)

(assert (=> d!1571656 (>= lt!2005735 0)))

(declare-fun e!3058857 () Int)

(assert (=> d!1571656 (= lt!2005735 e!3058857)))

(declare-fun c!831650 () Bool)

(assert (=> d!1571656 (= c!831650 ((_ is Nil!56403) (_2!33526 (get!19478 lt!2005117))))))

(assert (=> d!1571656 (= (size!37138 (_2!33526 (get!19478 lt!2005117))) lt!2005735)))

(declare-fun b!4892991 () Bool)

(assert (=> b!4892991 (= e!3058857 0)))

(declare-fun b!4892992 () Bool)

(assert (=> b!4892992 (= e!3058857 (+ 1 (size!37138 (t!365273 (_2!33526 (get!19478 lt!2005117))))))))

(assert (= (and d!1571656 c!831650) b!4892991))

(assert (= (and d!1571656 (not c!831650)) b!4892992))

(declare-fun m!5897960 () Bool)

(assert (=> b!4892992 m!5897960))

(assert (=> b!4891653 d!1571656))

(assert (=> b!4891653 d!1571396))

(assert (=> b!4891653 d!1570684))

(declare-fun d!1571658 () Bool)

(declare-fun lt!2005736 () Bool)

(assert (=> d!1571658 (= lt!2005736 (isEmpty!30257 (list!17724 (right!41305 (c!831175 input!1236)))))))

(assert (=> d!1571658 (= lt!2005736 (= (size!37142 (right!41305 (c!831175 input!1236))) 0))))

(assert (=> d!1571658 (= (isEmpty!30263 (right!41305 (c!831175 input!1236))) lt!2005736)))

(declare-fun bs!1176021 () Bool)

(assert (= bs!1176021 d!1571658))

(assert (=> bs!1176021 m!5894540))

(assert (=> bs!1176021 m!5894540))

(declare-fun m!5897962 () Bool)

(assert (=> bs!1176021 m!5897962))

(assert (=> bs!1176021 m!5895498))

(assert (=> b!4891501 d!1571658))

(declare-fun d!1571660 () Bool)

(assert (=> d!1571660 (= (Forall!1686 lambda!243985) (choose!35712 lambda!243985))))

(declare-fun bs!1176022 () Bool)

(assert (= bs!1176022 d!1571660))

(declare-fun m!5897964 () Bool)

(assert (=> bs!1176022 m!5897964))

(assert (=> d!1570578 d!1571660))

(declare-fun d!1571662 () Bool)

(declare-fun lt!2005737 () Int)

(assert (=> d!1571662 (>= lt!2005737 0)))

(declare-fun e!3058858 () Int)

(assert (=> d!1571662 (= lt!2005737 e!3058858)))

(declare-fun c!831651 () Bool)

(assert (=> d!1571662 (= c!831651 ((_ is Nil!56403) (t!365273 lt!2004534)))))

(assert (=> d!1571662 (= (size!37138 (t!365273 lt!2004534)) lt!2005737)))

(declare-fun b!4892993 () Bool)

(assert (=> b!4892993 (= e!3058858 0)))

(declare-fun b!4892994 () Bool)

(assert (=> b!4892994 (= e!3058858 (+ 1 (size!37138 (t!365273 (t!365273 lt!2004534)))))))

(assert (= (and d!1571662 c!831651) b!4892993))

(assert (= (and d!1571662 (not c!831651)) b!4892994))

(declare-fun m!5897966 () Bool)

(assert (=> b!4892994 m!5897966))

(assert (=> b!4891418 d!1571662))

(assert (=> d!1570746 d!1570740))

(assert (=> d!1570746 d!1570596))

(declare-fun d!1571664 () Bool)

(declare-fun e!3058861 () Bool)

(assert (=> d!1571664 e!3058861))

(declare-fun res!2089750 () Bool)

(assert (=> d!1571664 (=> res!2089750 e!3058861)))

(assert (=> d!1571664 (= res!2089750 (isEmpty!30257 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660)))))))

(assert (=> d!1571664 true))

(declare-fun _$92!485 () Unit!146398)

(assert (=> d!1571664 (= (choose!35705 (regex!8174 (h!62853 rulesArg!165)) lt!2004660) _$92!485)))

(declare-fun b!4892997 () Bool)

(assert (=> b!4892997 (= e!3058861 (matchR!6530 (regex!8174 (h!62853 rulesArg!165)) (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004660 lt!2004660 (size!37138 lt!2004660)))))))

(assert (= (and d!1571664 (not res!2089750)) b!4892997))

(assert (=> d!1571664 m!5894316))

(assert (=> d!1571664 m!5894318))

(assert (=> d!1571664 m!5894316))

(assert (=> d!1571664 m!5894318))

(assert (=> d!1571664 m!5894320))

(assert (=> d!1571664 m!5894360))

(assert (=> b!4892997 m!5894316))

(assert (=> b!4892997 m!5894318))

(assert (=> b!4892997 m!5894316))

(assert (=> b!4892997 m!5894318))

(assert (=> b!4892997 m!5894320))

(assert (=> b!4892997 m!5894322))

(assert (=> d!1570746 d!1571664))

(assert (=> d!1570746 d!1570634))

(assert (=> d!1570746 d!1570636))

(assert (=> d!1570746 d!1571428))

(declare-fun b!4892998 () Bool)

(declare-fun e!3058867 () Bool)

(assert (=> b!4892998 (= e!3058867 (= (head!10455 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004534 lt!2004534 (size!37138 lt!2004534)))) (c!831176 (regex!8174 (h!62853 rulesArg!165)))))))

(declare-fun b!4892999 () Bool)

(declare-fun e!3058868 () Bool)

(declare-fun lt!2005738 () Bool)

(assert (=> b!4892999 (= e!3058868 (not lt!2005738))))

(declare-fun b!4893000 () Bool)

(declare-fun res!2089758 () Bool)

(declare-fun e!3058862 () Bool)

(assert (=> b!4893000 (=> res!2089758 e!3058862)))

(assert (=> b!4893000 (= res!2089758 (not (isEmpty!30257 (tail!9601 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004534 lt!2004534 (size!37138 lt!2004534)))))))))

(declare-fun b!4893001 () Bool)

(declare-fun e!3058863 () Bool)

(assert (=> b!4893001 (= e!3058863 e!3058862)))

(declare-fun res!2089755 () Bool)

(assert (=> b!4893001 (=> res!2089755 e!3058862)))

(declare-fun call!339392 () Bool)

(assert (=> b!4893001 (= res!2089755 call!339392)))

(declare-fun b!4893002 () Bool)

(declare-fun res!2089751 () Bool)

(declare-fun e!3058866 () Bool)

(assert (=> b!4893002 (=> res!2089751 e!3058866)))

(assert (=> b!4893002 (= res!2089751 (not ((_ is ElementMatch!13249) (regex!8174 (h!62853 rulesArg!165)))))))

(assert (=> b!4893002 (= e!3058868 e!3058866)))

(declare-fun b!4893003 () Bool)

(assert (=> b!4893003 (= e!3058866 e!3058863)))

(declare-fun res!2089757 () Bool)

(assert (=> b!4893003 (=> (not res!2089757) (not e!3058863))))

(assert (=> b!4893003 (= res!2089757 (not lt!2005738))))

(declare-fun b!4893004 () Bool)

(declare-fun e!3058865 () Bool)

(assert (=> b!4893004 (= e!3058865 (matchR!6530 (derivativeStep!3876 (regex!8174 (h!62853 rulesArg!165)) (head!10455 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004534 lt!2004534 (size!37138 lt!2004534))))) (tail!9601 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004534 lt!2004534 (size!37138 lt!2004534))))))))

(declare-fun b!4893006 () Bool)

(declare-fun e!3058864 () Bool)

(assert (=> b!4893006 (= e!3058864 e!3058868)))

(declare-fun c!831652 () Bool)

(assert (=> b!4893006 (= c!831652 ((_ is EmptyLang!13249) (regex!8174 (h!62853 rulesArg!165))))))

(declare-fun b!4893007 () Bool)

(declare-fun res!2089754 () Bool)

(assert (=> b!4893007 (=> res!2089754 e!3058866)))

(assert (=> b!4893007 (= res!2089754 e!3058867)))

(declare-fun res!2089753 () Bool)

(assert (=> b!4893007 (=> (not res!2089753) (not e!3058867))))

(assert (=> b!4893007 (= res!2089753 lt!2005738)))

(declare-fun b!4893008 () Bool)

(assert (=> b!4893008 (= e!3058864 (= lt!2005738 call!339392))))

(declare-fun b!4893009 () Bool)

(assert (=> b!4893009 (= e!3058862 (not (= (head!10455 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004534 lt!2004534 (size!37138 lt!2004534)))) (c!831176 (regex!8174 (h!62853 rulesArg!165))))))))

(declare-fun b!4893010 () Bool)

(declare-fun res!2089756 () Bool)

(assert (=> b!4893010 (=> (not res!2089756) (not e!3058867))))

(assert (=> b!4893010 (= res!2089756 (not call!339392))))

(declare-fun d!1571666 () Bool)

(assert (=> d!1571666 e!3058864))

(declare-fun c!831654 () Bool)

(assert (=> d!1571666 (= c!831654 ((_ is EmptyExpr!13249) (regex!8174 (h!62853 rulesArg!165))))))

(assert (=> d!1571666 (= lt!2005738 e!3058865)))

(declare-fun c!831653 () Bool)

(assert (=> d!1571666 (= c!831653 (isEmpty!30257 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004534 lt!2004534 (size!37138 lt!2004534)))))))

(assert (=> d!1571666 (validRegex!5882 (regex!8174 (h!62853 rulesArg!165)))))

(assert (=> d!1571666 (= (matchR!6530 (regex!8174 (h!62853 rulesArg!165)) (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004534 lt!2004534 (size!37138 lt!2004534)))) lt!2005738)))

(declare-fun b!4893005 () Bool)

(assert (=> b!4893005 (= e!3058865 (nullable!4555 (regex!8174 (h!62853 rulesArg!165))))))

(declare-fun b!4893011 () Bool)

(declare-fun res!2089752 () Bool)

(assert (=> b!4893011 (=> (not res!2089752) (not e!3058867))))

(assert (=> b!4893011 (= res!2089752 (isEmpty!30257 (tail!9601 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004534 lt!2004534 (size!37138 lt!2004534))))))))

(declare-fun bm!339387 () Bool)

(assert (=> bm!339387 (= call!339392 (isEmpty!30257 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) lt!2004534 lt!2004534 (size!37138 lt!2004534)))))))

(assert (= (and d!1571666 c!831653) b!4893005))

(assert (= (and d!1571666 (not c!831653)) b!4893004))

(assert (= (and d!1571666 c!831654) b!4893008))

(assert (= (and d!1571666 (not c!831654)) b!4893006))

(assert (= (and b!4893006 c!831652) b!4892999))

(assert (= (and b!4893006 (not c!831652)) b!4893002))

(assert (= (and b!4893002 (not res!2089751)) b!4893007))

(assert (= (and b!4893007 res!2089753) b!4893010))

(assert (= (and b!4893010 res!2089756) b!4893011))

(assert (= (and b!4893011 res!2089752) b!4892998))

(assert (= (and b!4893007 (not res!2089754)) b!4893003))

(assert (= (and b!4893003 res!2089757) b!4893001))

(assert (= (and b!4893001 (not res!2089755)) b!4893000))

(assert (= (and b!4893000 (not res!2089758)) b!4893009))

(assert (= (or b!4893008 b!4893001 b!4893010) bm!339387))

(declare-fun m!5897968 () Bool)

(assert (=> b!4892998 m!5897968))

(assert (=> b!4893009 m!5897968))

(assert (=> b!4893004 m!5897968))

(assert (=> b!4893004 m!5897968))

(declare-fun m!5897970 () Bool)

(assert (=> b!4893004 m!5897970))

(declare-fun m!5897972 () Bool)

(assert (=> b!4893004 m!5897972))

(assert (=> b!4893004 m!5897970))

(assert (=> b!4893004 m!5897972))

(declare-fun m!5897974 () Bool)

(assert (=> b!4893004 m!5897974))

(assert (=> b!4893011 m!5897972))

(assert (=> b!4893011 m!5897972))

(declare-fun m!5897976 () Bool)

(assert (=> b!4893011 m!5897976))

(assert (=> b!4893000 m!5897972))

(assert (=> b!4893000 m!5897972))

(assert (=> b!4893000 m!5897976))

(assert (=> bm!339387 m!5894632))

(assert (=> d!1571666 m!5894632))

(assert (=> d!1571666 m!5894684))

(assert (=> b!4893005 m!5894686))

(assert (=> b!4891117 d!1571666))

(assert (=> b!4891117 d!1571626))

(assert (=> b!4891117 d!1570634))

(assert (=> b!4891117 d!1570684))

(assert (=> d!1570668 d!1571428))

(assert (=> b!4891497 d!1571384))

(assert (=> b!4891497 d!1571386))

(declare-fun d!1571668 () Bool)

(assert (=> d!1571668 (= (isEmpty!30258 (maxPrefixZipper!673 thiss!14805 (t!365275 rulesArg!165) (list!17722 input!1236))) (not ((_ is Some!14025) (maxPrefixZipper!673 thiss!14805 (t!365275 rulesArg!165) (list!17722 input!1236)))))))

(assert (=> d!1570784 d!1571668))

(assert (=> d!1570594 d!1570740))

(assert (=> d!1570594 d!1571428))

(declare-fun d!1571670 () Bool)

(declare-fun lt!2005739 () Int)

(assert (=> d!1571670 (>= lt!2005739 0)))

(declare-fun e!3058869 () Int)

(assert (=> d!1571670 (= lt!2005739 e!3058869)))

(declare-fun c!831655 () Bool)

(assert (=> d!1571670 (= c!831655 ((_ is Nil!56403) (list!17726 (xs!18058 (c!831175 input!1236)))))))

(assert (=> d!1571670 (= (size!37138 (list!17726 (xs!18058 (c!831175 input!1236)))) lt!2005739)))

(declare-fun b!4893012 () Bool)

(assert (=> b!4893012 (= e!3058869 0)))

(declare-fun b!4893013 () Bool)

(assert (=> b!4893013 (= e!3058869 (+ 1 (size!37138 (t!365273 (list!17726 (xs!18058 (c!831175 input!1236)))))))))

(assert (= (and d!1571670 c!831655) b!4893012))

(assert (= (and d!1571670 (not c!831655)) b!4893013))

(declare-fun m!5897978 () Bool)

(assert (=> b!4893013 m!5897978))

(assert (=> d!1570798 d!1571670))

(assert (=> d!1570798 d!1571584))

(declare-fun d!1571672 () Bool)

(assert (=> d!1571672 (= (inv!72679 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (_1!33527 lt!2004658)))) (isBalanced!4012 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (_1!33527 lt!2004658))))))))

(declare-fun bs!1176023 () Bool)

(assert (= bs!1176023 d!1571672))

(declare-fun m!5897980 () Bool)

(assert (=> bs!1176023 m!5897980))

(assert (=> tb!258605 d!1571672))

(assert (=> b!4891121 d!1571626))

(declare-fun d!1571674 () Bool)

(declare-fun lt!2005740 () Int)

(assert (=> d!1571674 (= lt!2005740 (size!37138 (list!17722 (seqFromList!5936 (_1!33528 lt!2004759)))))))

(assert (=> d!1571674 (= lt!2005740 (size!37142 (c!831175 (seqFromList!5936 (_1!33528 lt!2004759)))))))

(assert (=> d!1571674 (= (size!37139 (seqFromList!5936 (_1!33528 lt!2004759))) lt!2005740)))

(declare-fun bs!1176024 () Bool)

(assert (= bs!1176024 d!1571674))

(assert (=> bs!1176024 m!5894636))

(declare-fun m!5897982 () Bool)

(assert (=> bs!1176024 m!5897982))

(assert (=> bs!1176024 m!5897982))

(declare-fun m!5897984 () Bool)

(assert (=> bs!1176024 m!5897984))

(declare-fun m!5897986 () Bool)

(assert (=> bs!1176024 m!5897986))

(assert (=> b!4891121 d!1571674))

(declare-fun d!1571676 () Bool)

(assert (=> d!1571676 (= (seqFromList!5936 (_1!33528 lt!2004759)) (fromListB!2691 (_1!33528 lt!2004759)))))

(declare-fun bs!1176025 () Bool)

(assert (= bs!1176025 d!1571676))

(declare-fun m!5897988 () Bool)

(assert (=> bs!1176025 m!5897988))

(assert (=> b!4891121 d!1571676))

(assert (=> b!4891121 d!1571634))

(assert (=> b!4891121 d!1571636))

(declare-fun bs!1176026 () Bool)

(declare-fun d!1571678 () Bool)

(assert (= bs!1176026 (and d!1571678 b!4891527)))

(declare-fun lambda!244017 () Int)

(assert (=> bs!1176026 (= (and (= (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) (= (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))))) (= lambda!244017 lambda!243993))))

(declare-fun bs!1176027 () Bool)

(assert (= bs!1176027 (and d!1571678 d!1570578)))

(assert (=> bs!1176027 (= lambda!244017 lambda!243985)))

(declare-fun bs!1176028 () Bool)

(assert (= bs!1176028 (and d!1571678 d!1571600)))

(assert (=> bs!1176028 (= (and (= (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) (= (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))))) (= lambda!244017 lambda!244013))))

(declare-fun bs!1176029 () Bool)

(assert (= bs!1176029 (and d!1571678 b!4890845)))

(assert (=> bs!1176029 (= lambda!244017 lambda!243967)))

(declare-fun bs!1176030 () Bool)

(assert (= bs!1176030 (and d!1571678 d!1571628)))

(assert (=> bs!1176030 (= lambda!244017 lambda!244016)))

(declare-fun b!4893014 () Bool)

(declare-fun e!3058870 () Bool)

(assert (=> b!4893014 (= e!3058870 true)))

(assert (=> d!1571678 e!3058870))

(assert (= d!1571678 b!4893014))

(assert (=> b!4893014 (< (dynLambda!22617 order!25463 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) (dynLambda!22618 order!25465 lambda!244017))))

(assert (=> b!4893014 (< (dynLambda!22619 order!25467 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) (dynLambda!22618 order!25465 lambda!244017))))

(assert (=> d!1571678 (= (list!17722 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (_1!33528 lt!2004759))))) (list!17722 (seqFromList!5936 (_1!33528 lt!2004759))))))

(declare-fun lt!2005741 () Unit!146398)

(assert (=> d!1571678 (= lt!2005741 (ForallOf!1132 lambda!244017 (seqFromList!5936 (_1!33528 lt!2004759))))))

(assert (=> d!1571678 (= (lemmaSemiInverse!2563 (transformation!8174 (h!62853 rulesArg!165)) (seqFromList!5936 (_1!33528 lt!2004759))) lt!2005741)))

(declare-fun b_lambda!194341 () Bool)

(assert (=> (not b_lambda!194341) (not d!1571678)))

(declare-fun t!365569 () Bool)

(declare-fun tb!258821 () Bool)

(assert (=> (and b!4890709 (= (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) t!365569) tb!258821))

(declare-fun tp!1377023 () Bool)

(declare-fun e!3058871 () Bool)

(declare-fun b!4893015 () Bool)

(assert (=> b!4893015 (= e!3058871 (and (inv!72677 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (_1!33528 lt!2004759)))))) tp!1377023))))

(declare-fun result!322384 () Bool)

(assert (=> tb!258821 (= result!322384 (and (inv!72679 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (_1!33528 lt!2004759))))) e!3058871))))

(assert (= tb!258821 b!4893015))

(declare-fun m!5897990 () Bool)

(assert (=> b!4893015 m!5897990))

(declare-fun m!5897992 () Bool)

(assert (=> tb!258821 m!5897992))

(assert (=> d!1571678 t!365569))

(declare-fun b_and!344821 () Bool)

(assert (= b_and!344803 (and (=> t!365569 result!322384) b_and!344821)))

(declare-fun t!365571 () Bool)

(declare-fun tb!258823 () Bool)

(assert (=> (and b!4891010 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) t!365571) tb!258823))

(declare-fun result!322386 () Bool)

(assert (= result!322386 result!322384))

(assert (=> d!1571678 t!365571))

(declare-fun b_and!344823 () Bool)

(assert (= b_and!344805 (and (=> t!365571 result!322386) b_and!344823)))

(declare-fun t!365573 () Bool)

(declare-fun tb!258825 () Bool)

(assert (=> (and b!4891741 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) t!365573) tb!258825))

(declare-fun result!322388 () Bool)

(assert (= result!322388 result!322384))

(assert (=> d!1571678 t!365573))

(declare-fun b_and!344825 () Bool)

(assert (= b_and!344807 (and (=> t!365573 result!322388) b_and!344825)))

(declare-fun b_lambda!194343 () Bool)

(assert (=> (not b_lambda!194343) (not d!1571678)))

(declare-fun t!365575 () Bool)

(declare-fun tb!258827 () Bool)

(assert (=> (and b!4890709 (= (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) t!365575) tb!258827))

(declare-fun result!322390 () Bool)

(assert (=> tb!258827 (= result!322390 (inv!21 (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (_1!33528 lt!2004759)))))))

(declare-fun m!5897994 () Bool)

(assert (=> tb!258827 m!5897994))

(assert (=> d!1571678 t!365575))

(declare-fun b_and!344827 () Bool)

(assert (= b_and!344815 (and (=> t!365575 result!322390) b_and!344827)))

(declare-fun t!365577 () Bool)

(declare-fun tb!258829 () Bool)

(assert (=> (and b!4891010 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) t!365577) tb!258829))

(declare-fun result!322392 () Bool)

(assert (= result!322392 result!322390))

(assert (=> d!1571678 t!365577))

(declare-fun b_and!344829 () Bool)

(assert (= b_and!344817 (and (=> t!365577 result!322392) b_and!344829)))

(declare-fun t!365579 () Bool)

(declare-fun tb!258831 () Bool)

(assert (=> (and b!4891741 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) t!365579) tb!258831))

(declare-fun result!322394 () Bool)

(assert (= result!322394 result!322390))

(assert (=> d!1571678 t!365579))

(declare-fun b_and!344831 () Bool)

(assert (= b_and!344819 (and (=> t!365579 result!322394) b_and!344831)))

(declare-fun m!5897996 () Bool)

(assert (=> d!1571678 m!5897996))

(declare-fun m!5897998 () Bool)

(assert (=> d!1571678 m!5897998))

(declare-fun m!5898000 () Bool)

(assert (=> d!1571678 m!5898000))

(assert (=> d!1571678 m!5897996))

(assert (=> d!1571678 m!5894636))

(assert (=> d!1571678 m!5897982))

(assert (=> d!1571678 m!5894636))

(declare-fun m!5898002 () Bool)

(assert (=> d!1571678 m!5898002))

(assert (=> d!1571678 m!5894636))

(assert (=> d!1571678 m!5898000))

(assert (=> b!4891121 d!1571678))

(declare-fun d!1571680 () Bool)

(assert (=> d!1571680 (= (apply!13540 (transformation!8174 (h!62853 rulesArg!165)) (seqFromList!5936 (_1!33528 lt!2004759))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (_1!33528 lt!2004759))))))

(declare-fun b_lambda!194345 () Bool)

(assert (=> (not b_lambda!194345) (not d!1571680)))

(assert (=> d!1571680 t!365575))

(declare-fun b_and!344833 () Bool)

(assert (= b_and!344827 (and (=> t!365575 result!322390) b_and!344833)))

(assert (=> d!1571680 t!365577))

(declare-fun b_and!344835 () Bool)

(assert (= b_and!344829 (and (=> t!365577 result!322392) b_and!344835)))

(assert (=> d!1571680 t!365579))

(declare-fun b_and!344837 () Bool)

(assert (= b_and!344831 (and (=> t!365579 result!322394) b_and!344837)))

(assert (=> d!1571680 m!5894636))

(assert (=> d!1571680 m!5898000))

(assert (=> b!4891121 d!1571680))

(assert (=> b!4891121 d!1570684))

(assert (=> b!4891121 d!1570634))

(assert (=> d!1570570 d!1570592))

(assert (=> d!1570570 d!1571452))

(assert (=> d!1570570 d!1571454))

(assert (=> d!1570570 d!1570550))

(assert (=> bm!339179 d!1570740))

(declare-fun d!1571682 () Bool)

(assert (=> d!1571682 (isPrefix!4894 lt!2004660 lt!2004660)))

(declare-fun lt!2005742 () Unit!146398)

(assert (=> d!1571682 (= lt!2005742 (choose!35699 lt!2004660 lt!2004660))))

(assert (=> d!1571682 (= (lemmaIsPrefixRefl!3291 lt!2004660 lt!2004660) lt!2005742)))

(declare-fun bs!1176031 () Bool)

(assert (= bs!1176031 d!1571682))

(assert (=> bs!1176031 m!5894814))

(declare-fun m!5898004 () Bool)

(assert (=> bs!1176031 m!5898004))

(assert (=> bm!339227 d!1571682))

(declare-fun d!1571684 () Bool)

(declare-fun c!831656 () Bool)

(assert (=> d!1571684 (= c!831656 ((_ is IntegerValue!25452) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658))))))))

(declare-fun e!3058875 () Bool)

(assert (=> d!1571684 (= (inv!21 (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658))))) e!3058875)))

(declare-fun b!4893016 () Bool)

(declare-fun e!3058874 () Bool)

(assert (=> b!4893016 (= e!3058874 (inv!17 (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658))))))))

(declare-fun b!4893017 () Bool)

(declare-fun e!3058873 () Bool)

(assert (=> b!4893017 (= e!3058873 (inv!15 (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658))))))))

(declare-fun b!4893018 () Bool)

(assert (=> b!4893018 (= e!3058875 e!3058874)))

(declare-fun c!831657 () Bool)

(assert (=> b!4893018 (= c!831657 ((_ is IntegerValue!25453) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658))))))))

(declare-fun b!4893019 () Bool)

(assert (=> b!4893019 (= e!3058875 (inv!16 (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658))))))))

(declare-fun b!4893020 () Bool)

(declare-fun res!2089759 () Bool)

(assert (=> b!4893020 (=> res!2089759 e!3058873)))

(assert (=> b!4893020 (= res!2089759 (not ((_ is IntegerValue!25454) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658)))))))))

(assert (=> b!4893020 (= e!3058874 e!3058873)))

(assert (= (and d!1571684 c!831656) b!4893019))

(assert (= (and d!1571684 (not c!831656)) b!4893018))

(assert (= (and b!4893018 c!831657) b!4893016))

(assert (= (and b!4893018 (not c!831657)) b!4893020))

(assert (= (and b!4893020 (not res!2089759)) b!4893017))

(declare-fun m!5898006 () Bool)

(assert (=> b!4893016 m!5898006))

(declare-fun m!5898008 () Bool)

(assert (=> b!4893017 m!5898008))

(declare-fun m!5898010 () Bool)

(assert (=> b!4893019 m!5898010))

(assert (=> tb!258567 d!1571684))

(declare-fun d!1571686 () Bool)

(declare-fun c!831658 () Bool)

(assert (=> d!1571686 (= c!831658 ((_ is Node!14742) (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658))))))))))

(declare-fun e!3058876 () Bool)

(assert (=> d!1571686 (= (inv!72677 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658))))))) e!3058876)))

(declare-fun b!4893021 () Bool)

(assert (=> b!4893021 (= e!3058876 (inv!72682 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658))))))))))

(declare-fun b!4893022 () Bool)

(declare-fun e!3058877 () Bool)

(assert (=> b!4893022 (= e!3058876 e!3058877)))

(declare-fun res!2089760 () Bool)

(assert (=> b!4893022 (= res!2089760 (not ((_ is Leaf!24546) (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658)))))))))))

(assert (=> b!4893022 (=> res!2089760 e!3058877)))

(declare-fun b!4893023 () Bool)

(assert (=> b!4893023 (= e!3058877 (inv!72683 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658))))))))))

(assert (= (and d!1571686 c!831658) b!4893021))

(assert (= (and d!1571686 (not c!831658)) b!4893022))

(assert (= (and b!4893022 (not res!2089760)) b!4893023))

(declare-fun m!5898012 () Bool)

(assert (=> b!4893021 m!5898012))

(declare-fun m!5898014 () Bool)

(assert (=> b!4893023 m!5898014))

(assert (=> b!4891742 d!1571686))

(assert (=> b!4891386 d!1571480))

(declare-fun d!1571688 () Bool)

(assert (=> d!1571688 (= (apply!13540 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004982)))) (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004982))))) (dynLambda!22628 (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004982))))) (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004982))))))))

(declare-fun b_lambda!194347 () Bool)

(assert (=> (not b_lambda!194347) (not d!1571688)))

(declare-fun tb!258833 () Bool)

(declare-fun t!365581 () Bool)

(assert (=> (and b!4890709 (= (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004982)))))) t!365581) tb!258833))

(declare-fun result!322396 () Bool)

(assert (=> tb!258833 (= result!322396 (inv!21 (dynLambda!22628 (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004982))))) (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004982)))))))))

(declare-fun m!5898016 () Bool)

(assert (=> tb!258833 m!5898016))

(assert (=> d!1571688 t!365581))

(declare-fun b_and!344839 () Bool)

(assert (= b_and!344833 (and (=> t!365581 result!322396) b_and!344839)))

(declare-fun t!365583 () Bool)

(declare-fun tb!258835 () Bool)

(assert (=> (and b!4891010 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004982)))))) t!365583) tb!258835))

(declare-fun result!322398 () Bool)

(assert (= result!322398 result!322396))

(assert (=> d!1571688 t!365583))

(declare-fun b_and!344841 () Bool)

(assert (= b_and!344835 (and (=> t!365583 result!322398) b_and!344841)))

(declare-fun tb!258837 () Bool)

(declare-fun t!365585 () Bool)

(assert (=> (and b!4891741 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004982)))))) t!365585) tb!258837))

(declare-fun result!322400 () Bool)

(assert (= result!322400 result!322396))

(assert (=> d!1571688 t!365585))

(declare-fun b_and!344843 () Bool)

(assert (= b_and!344837 (and (=> t!365585 result!322400) b_and!344843)))

(assert (=> d!1571688 m!5894888))

(declare-fun m!5898018 () Bool)

(assert (=> d!1571688 m!5898018))

(assert (=> b!4891386 d!1571688))

(declare-fun d!1571690 () Bool)

(assert (=> d!1571690 (= (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004982)))) (fromListB!2691 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004982)))))))

(declare-fun bs!1176032 () Bool)

(assert (= bs!1176032 d!1571690))

(declare-fun m!5898020 () Bool)

(assert (=> bs!1176032 m!5898020))

(assert (=> b!4891386 d!1571690))

(declare-fun d!1571692 () Bool)

(assert (not d!1571692))

(assert (=> b!4891327 d!1571692))

(declare-fun d!1571694 () Bool)

(declare-fun lt!2005743 () Bool)

(assert (=> d!1571694 (= lt!2005743 (select (content!10016 (t!365275 rulesArg!165)) (rule!11358 (_1!33526 (get!19478 lt!2004764)))))))

(declare-fun e!3058880 () Bool)

(assert (=> d!1571694 (= lt!2005743 e!3058880)))

(declare-fun res!2089761 () Bool)

(assert (=> d!1571694 (=> (not res!2089761) (not e!3058880))))

(assert (=> d!1571694 (= res!2089761 ((_ is Cons!56405) (t!365275 rulesArg!165)))))

(assert (=> d!1571694 (= (contains!19437 (t!365275 rulesArg!165) (rule!11358 (_1!33526 (get!19478 lt!2004764)))) lt!2005743)))

(declare-fun b!4893024 () Bool)

(declare-fun e!3058879 () Bool)

(assert (=> b!4893024 (= e!3058880 e!3058879)))

(declare-fun res!2089762 () Bool)

(assert (=> b!4893024 (=> res!2089762 e!3058879)))

(assert (=> b!4893024 (= res!2089762 (= (h!62853 (t!365275 rulesArg!165)) (rule!11358 (_1!33526 (get!19478 lt!2004764)))))))

(declare-fun b!4893025 () Bool)

(assert (=> b!4893025 (= e!3058879 (contains!19437 (t!365275 (t!365275 rulesArg!165)) (rule!11358 (_1!33526 (get!19478 lt!2004764)))))))

(assert (= (and d!1571694 res!2089761) b!4893024))

(assert (= (and b!4893024 (not res!2089762)) b!4893025))

(assert (=> d!1571694 m!5897300))

(declare-fun m!5898022 () Bool)

(assert (=> d!1571694 m!5898022))

(declare-fun m!5898024 () Bool)

(assert (=> b!4893025 m!5898024))

(assert (=> b!4891127 d!1571694))

(assert (=> b!4891127 d!1571342))

(assert (=> b!4891698 d!1571670))

(assert (=> b!4891698 d!1571584))

(declare-fun bs!1176033 () Bool)

(declare-fun b!4893028 () Bool)

(assert (= bs!1176033 (and b!4893028 b!4891527)))

(declare-fun lambda!244018 () Int)

(assert (=> bs!1176033 (= (and (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))))) (= lambda!244018 lambda!243993))))

(declare-fun bs!1176034 () Bool)

(assert (= bs!1176034 (and b!4893028 d!1570578)))

(assert (=> bs!1176034 (= (and (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) (= lambda!244018 lambda!243985))))

(declare-fun bs!1176035 () Bool)

(assert (= bs!1176035 (and b!4893028 d!1571600)))

(assert (=> bs!1176035 (= (and (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))))) (= lambda!244018 lambda!244013))))

(declare-fun bs!1176036 () Bool)

(assert (= bs!1176036 (and b!4893028 d!1571628)))

(assert (=> bs!1176036 (= (and (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) (= lambda!244018 lambda!244016))))

(declare-fun bs!1176037 () Bool)

(assert (= bs!1176037 (and b!4893028 b!4890845)))

(assert (=> bs!1176037 (= (and (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) (= lambda!244018 lambda!243967))))

(declare-fun bs!1176038 () Bool)

(assert (= bs!1176038 (and b!4893028 d!1571678)))

(assert (=> bs!1176038 (= (and (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) (= lambda!244018 lambda!244017))))

(declare-fun b!4893033 () Bool)

(declare-fun e!3058887 () Bool)

(assert (=> b!4893033 (= e!3058887 true)))

(declare-fun b!4893032 () Bool)

(declare-fun e!3058886 () Bool)

(assert (=> b!4893032 (= e!3058886 e!3058887)))

(assert (=> b!4893028 e!3058886))

(assert (= b!4893032 b!4893033))

(assert (= b!4893028 b!4893032))

(assert (=> b!4893033 (< (dynLambda!22617 order!25463 (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165)))))) (dynLambda!22618 order!25465 lambda!244018))))

(assert (=> b!4893033 (< (dynLambda!22619 order!25467 (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165)))))) (dynLambda!22618 order!25465 lambda!244018))))

(declare-fun d!1571696 () Bool)

(declare-fun e!3058884 () Bool)

(assert (=> d!1571696 e!3058884))

(declare-fun res!2089765 () Bool)

(assert (=> d!1571696 (=> (not res!2089765) (not e!3058884))))

(declare-fun lt!2005746 () Option!14025)

(assert (=> d!1571696 (= res!2089765 (= (isDefined!11038 lt!2005746) (isDefined!11037 (maxPrefixOneRule!3529 thiss!14805 (h!62853 (t!365275 (t!365275 rulesArg!165))) (list!17722 input!1236)))))))

(declare-fun e!3058883 () Option!14025)

(assert (=> d!1571696 (= lt!2005746 e!3058883)))

(declare-fun c!831659 () Bool)

(declare-fun lt!2005750 () tuple2!60448)

(assert (=> d!1571696 (= c!831659 (isEmpty!30256 (_1!33527 lt!2005750)))))

(assert (=> d!1571696 (= lt!2005750 (findLongestMatchWithZipperSequence!267 (regex!8174 (h!62853 (t!365275 (t!365275 rulesArg!165)))) input!1236))))

(assert (=> d!1571696 (ruleValid!3671 thiss!14805 (h!62853 (t!365275 (t!365275 rulesArg!165))))))

(assert (=> d!1571696 (= (maxPrefixOneRuleZipperSequence!684 thiss!14805 (h!62853 (t!365275 (t!365275 rulesArg!165))) input!1236) lt!2005746)))

(declare-fun b!4893026 () Bool)

(declare-fun e!3058885 () Bool)

(assert (=> b!4893026 (= e!3058884 e!3058885)))

(declare-fun res!2089763 () Bool)

(assert (=> b!4893026 (=> res!2089763 e!3058885)))

(assert (=> b!4893026 (= res!2089763 (not (isDefined!11038 lt!2005746)))))

(declare-fun b!4893027 () Bool)

(declare-fun e!3058881 () Bool)

(declare-fun lt!2005752 () List!56527)

(assert (=> b!4893027 (= e!3058881 (matchR!6530 (regex!8174 (h!62853 (t!365275 (t!365275 rulesArg!165)))) (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 (t!365275 (t!365275 rulesArg!165)))) Nil!56403 (size!37138 Nil!56403) lt!2005752 lt!2005752 (size!37138 lt!2005752)))))))

(assert (=> b!4893028 (= e!3058883 (Some!14024 (tuple2!60445 (Token!14913 (apply!13540 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165)))) (_1!33527 lt!2005750)) (h!62853 (t!365275 (t!365275 rulesArg!165))) (size!37139 (_1!33527 lt!2005750)) (list!17722 (_1!33527 lt!2005750))) (_2!33527 lt!2005750))))))

(assert (=> b!4893028 (= lt!2005752 (list!17722 input!1236))))

(declare-fun lt!2005751 () Unit!146398)

(assert (=> b!4893028 (= lt!2005751 (longestMatchIsAcceptedByMatchOrIsEmpty!1715 (regex!8174 (h!62853 (t!365275 (t!365275 rulesArg!165)))) lt!2005752))))

(declare-fun res!2089766 () Bool)

(assert (=> b!4893028 (= res!2089766 (isEmpty!30257 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 (t!365275 (t!365275 rulesArg!165)))) Nil!56403 (size!37138 Nil!56403) lt!2005752 lt!2005752 (size!37138 lt!2005752)))))))

(assert (=> b!4893028 (=> res!2089766 e!3058881)))

(assert (=> b!4893028 e!3058881))

(declare-fun lt!2005753 () Unit!146398)

(assert (=> b!4893028 (= lt!2005753 lt!2005751)))

(declare-fun lt!2005745 () Unit!146398)

(assert (=> b!4893028 (= lt!2005745 (lemmaInv!1235 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))))))

(declare-fun lt!2005749 () Unit!146398)

(assert (=> b!4893028 (= lt!2005749 (ForallOf!1132 lambda!244018 (_1!33527 lt!2005750)))))

(declare-fun lt!2005744 () Unit!146398)

(assert (=> b!4893028 (= lt!2005744 (ForallOf!1132 lambda!244018 (seqFromList!5936 (list!17722 (_1!33527 lt!2005750)))))))

(declare-fun lt!2005748 () Option!14025)

(assert (=> b!4893028 (= lt!2005748 (Some!14024 (tuple2!60445 (Token!14913 (apply!13540 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165)))) (_1!33527 lt!2005750)) (h!62853 (t!365275 (t!365275 rulesArg!165))) (size!37139 (_1!33527 lt!2005750)) (list!17722 (_1!33527 lt!2005750))) (_2!33527 lt!2005750))))))

(declare-fun lt!2005747 () Unit!146398)

(assert (=> b!4893028 (= lt!2005747 (lemmaEqSameImage!1089 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165)))) (_1!33527 lt!2005750) (seqFromList!5936 (list!17722 (_1!33527 lt!2005750)))))))

(declare-fun b!4893029 () Bool)

(declare-fun e!3058882 () Bool)

(assert (=> b!4893029 (= e!3058885 e!3058882)))

(declare-fun res!2089764 () Bool)

(assert (=> b!4893029 (=> (not res!2089764) (not e!3058882))))

(assert (=> b!4893029 (= res!2089764 (= (_1!33525 (get!19479 lt!2005746)) (_1!33526 (get!19478 (maxPrefixOneRule!3529 thiss!14805 (h!62853 (t!365275 (t!365275 rulesArg!165))) (list!17722 input!1236))))))))

(declare-fun b!4893030 () Bool)

(assert (=> b!4893030 (= e!3058883 None!14024)))

(declare-fun b!4893031 () Bool)

(assert (=> b!4893031 (= e!3058882 (= (list!17722 (_2!33525 (get!19479 lt!2005746))) (_2!33526 (get!19478 (maxPrefixOneRule!3529 thiss!14805 (h!62853 (t!365275 (t!365275 rulesArg!165))) (list!17722 input!1236))))))))

(assert (= (and d!1571696 c!831659) b!4893030))

(assert (= (and d!1571696 (not c!831659)) b!4893028))

(assert (= (and b!4893028 (not res!2089766)) b!4893027))

(assert (= (and d!1571696 res!2089765) b!4893026))

(assert (= (and b!4893026 (not res!2089763)) b!4893029))

(assert (= (and b!4893029 res!2089764) b!4893031))

(assert (=> b!4893027 m!5894316))

(declare-fun m!5898026 () Bool)

(assert (=> b!4893027 m!5898026))

(assert (=> b!4893027 m!5894316))

(assert (=> b!4893027 m!5898026))

(declare-fun m!5898028 () Bool)

(assert (=> b!4893027 m!5898028))

(declare-fun m!5898030 () Bool)

(assert (=> b!4893027 m!5898030))

(declare-fun m!5898032 () Bool)

(assert (=> b!4893026 m!5898032))

(declare-fun m!5898034 () Bool)

(assert (=> b!4893029 m!5898034))

(assert (=> b!4893029 m!5894176))

(assert (=> b!4893029 m!5894176))

(assert (=> b!4893029 m!5897448))

(assert (=> b!4893029 m!5897448))

(declare-fun m!5898036 () Bool)

(assert (=> b!4893029 m!5898036))

(assert (=> b!4893031 m!5898034))

(assert (=> b!4893031 m!5897448))

(assert (=> b!4893031 m!5898036))

(declare-fun m!5898038 () Bool)

(assert (=> b!4893031 m!5898038))

(assert (=> b!4893031 m!5894176))

(assert (=> b!4893031 m!5897448))

(assert (=> b!4893031 m!5894176))

(declare-fun m!5898040 () Bool)

(assert (=> d!1571696 m!5898040))

(assert (=> d!1571696 m!5897296))

(assert (=> d!1571696 m!5898032))

(assert (=> d!1571696 m!5897448))

(declare-fun m!5898042 () Bool)

(assert (=> d!1571696 m!5898042))

(declare-fun m!5898044 () Bool)

(assert (=> d!1571696 m!5898044))

(assert (=> d!1571696 m!5894176))

(assert (=> d!1571696 m!5897448))

(assert (=> d!1571696 m!5894176))

(assert (=> b!4893028 m!5894316))

(declare-fun m!5898046 () Bool)

(assert (=> b!4893028 m!5898046))

(assert (=> b!4893028 m!5894176))

(declare-fun m!5898048 () Bool)

(assert (=> b!4893028 m!5898048))

(declare-fun m!5898050 () Bool)

(assert (=> b!4893028 m!5898050))

(declare-fun m!5898052 () Bool)

(assert (=> b!4893028 m!5898052))

(declare-fun m!5898054 () Bool)

(assert (=> b!4893028 m!5898054))

(declare-fun m!5898056 () Bool)

(assert (=> b!4893028 m!5898056))

(declare-fun m!5898058 () Bool)

(assert (=> b!4893028 m!5898058))

(assert (=> b!4893028 m!5898052))

(declare-fun m!5898060 () Bool)

(assert (=> b!4893028 m!5898060))

(assert (=> b!4893028 m!5898026))

(declare-fun m!5898062 () Bool)

(assert (=> b!4893028 m!5898062))

(declare-fun m!5898064 () Bool)

(assert (=> b!4893028 m!5898064))

(assert (=> b!4893028 m!5894316))

(assert (=> b!4893028 m!5898026))

(assert (=> b!4893028 m!5898028))

(assert (=> b!4893028 m!5898046))

(assert (=> b!4893028 m!5898052))

(assert (=> bm!339232 d!1571696))

(declare-fun b!4893036 () Bool)

(declare-fun res!2089768 () Bool)

(declare-fun e!3058889 () Bool)

(assert (=> b!4893036 (=> (not res!2089768) (not e!3058889))))

(declare-fun lt!2005754 () List!56527)

(assert (=> b!4893036 (= res!2089768 (= (size!37138 lt!2005754) (+ (size!37138 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004762))))) (size!37138 (_2!33526 (get!19478 lt!2004762))))))))

(declare-fun b!4893037 () Bool)

(assert (=> b!4893037 (= e!3058889 (or (not (= (_2!33526 (get!19478 lt!2004762)) Nil!56403)) (= lt!2005754 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004762)))))))))

(declare-fun b!4893034 () Bool)

(declare-fun e!3058888 () List!56527)

(assert (=> b!4893034 (= e!3058888 (_2!33526 (get!19478 lt!2004762)))))

(declare-fun d!1571698 () Bool)

(assert (=> d!1571698 e!3058889))

(declare-fun res!2089767 () Bool)

(assert (=> d!1571698 (=> (not res!2089767) (not e!3058889))))

(assert (=> d!1571698 (= res!2089767 (= (content!10015 lt!2005754) ((_ map or) (content!10015 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004762))))) (content!10015 (_2!33526 (get!19478 lt!2004762))))))))

(assert (=> d!1571698 (= lt!2005754 e!3058888)))

(declare-fun c!831660 () Bool)

(assert (=> d!1571698 (= c!831660 ((_ is Nil!56403) (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004762))))))))

(assert (=> d!1571698 (= (++!12243 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004762)))) (_2!33526 (get!19478 lt!2004762))) lt!2005754)))

(declare-fun b!4893035 () Bool)

(assert (=> b!4893035 (= e!3058888 (Cons!56403 (h!62851 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004762))))) (++!12243 (t!365273 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004762))))) (_2!33526 (get!19478 lt!2004762)))))))

(assert (= (and d!1571698 c!831660) b!4893034))

(assert (= (and d!1571698 (not c!831660)) b!4893035))

(assert (= (and d!1571698 res!2089767) b!4893036))

(assert (= (and b!4893036 res!2089768) b!4893037))

(declare-fun m!5898066 () Bool)

(assert (=> b!4893036 m!5898066))

(assert (=> b!4893036 m!5894628))

(declare-fun m!5898068 () Bool)

(assert (=> b!4893036 m!5898068))

(assert (=> b!4893036 m!5894614))

(declare-fun m!5898070 () Bool)

(assert (=> d!1571698 m!5898070))

(assert (=> d!1571698 m!5894628))

(declare-fun m!5898072 () Bool)

(assert (=> d!1571698 m!5898072))

(declare-fun m!5898074 () Bool)

(assert (=> d!1571698 m!5898074))

(declare-fun m!5898076 () Bool)

(assert (=> b!4893035 m!5898076))

(assert (=> b!4891125 d!1571698))

(assert (=> b!4891125 d!1571536))

(assert (=> b!4891125 d!1571538))

(assert (=> b!4891125 d!1571404))

(declare-fun d!1571700 () Bool)

(assert (=> d!1571700 (= (inv!72673 (tag!9038 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (= (mod (str.len (value!262108 (tag!9038 (h!62853 (t!365275 (t!365275 rulesArg!165)))))) 2) 0))))

(assert (=> b!4891740 d!1571700))

(declare-fun d!1571702 () Bool)

(declare-fun res!2089769 () Bool)

(declare-fun e!3058890 () Bool)

(assert (=> d!1571702 (=> (not res!2089769) (not e!3058890))))

(assert (=> d!1571702 (= res!2089769 (semiInverseModEq!3586 (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165)))))))))

(assert (=> d!1571702 (= (inv!72678 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) e!3058890)))

(declare-fun b!4893038 () Bool)

(assert (=> b!4893038 (= e!3058890 (equivClasses!3465 (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165)))))))))

(assert (= (and d!1571702 res!2089769) b!4893038))

(declare-fun m!5898078 () Bool)

(assert (=> d!1571702 m!5898078))

(declare-fun m!5898080 () Bool)

(assert (=> b!4893038 m!5898080))

(assert (=> b!4891740 d!1571702))

(declare-fun d!1571704 () Bool)

(assert (=> d!1571704 (= (isEmpty!30258 lt!2004982) (not ((_ is Some!14025) lt!2004982)))))

(assert (=> d!1570652 d!1571704))

(declare-fun d!1571706 () Bool)

(assert (=> d!1571706 (= (isEmpty!30257 (_1!33528 lt!2004979)) ((_ is Nil!56403) (_1!33528 lt!2004979)))))

(assert (=> d!1570652 d!1571706))

(assert (=> d!1570652 d!1571424))

(assert (=> d!1570652 d!1570668))

(assert (=> b!4891382 d!1571480))

(declare-fun d!1571708 () Bool)

(declare-fun lt!2005755 () Int)

(assert (=> d!1571708 (>= lt!2005755 0)))

(declare-fun e!3058891 () Int)

(assert (=> d!1571708 (= lt!2005755 e!3058891)))

(declare-fun c!831661 () Bool)

(assert (=> d!1571708 (= c!831661 ((_ is Nil!56403) (originalCharacters!8487 (_1!33526 (get!19478 lt!2004982)))))))

(assert (=> d!1571708 (= (size!37138 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004982)))) lt!2005755)))

(declare-fun b!4893039 () Bool)

(assert (=> b!4893039 (= e!3058891 0)))

(declare-fun b!4893040 () Bool)

(assert (=> b!4893040 (= e!3058891 (+ 1 (size!37138 (t!365273 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004982)))))))))

(assert (= (and d!1571708 c!831661) b!4893039))

(assert (= (and d!1571708 (not c!831661)) b!4893040))

(declare-fun m!5898082 () Bool)

(assert (=> b!4893040 m!5898082))

(assert (=> b!4891382 d!1571708))

(assert (=> b!4891130 d!1571612))

(assert (=> b!4891130 d!1571614))

(assert (=> b!4891130 d!1571342))

(declare-fun d!1571710 () Bool)

(assert (=> d!1571710 (= (inv!72685 (xs!18058 (left!40975 (c!831175 input!1236)))) (<= (size!37138 (innerList!14830 (xs!18058 (left!40975 (c!831175 input!1236))))) 2147483647))))

(declare-fun bs!1176039 () Bool)

(assert (= bs!1176039 d!1571710))

(declare-fun m!5898084 () Bool)

(assert (=> bs!1176039 m!5898084))

(assert (=> b!4891729 d!1571710))

(assert (=> b!4891423 d!1571616))

(declare-fun d!1571712 () Bool)

(declare-fun e!3058892 () Bool)

(assert (=> d!1571712 e!3058892))

(declare-fun res!2089770 () Bool)

(assert (=> d!1571712 (=> (not res!2089770) (not e!3058892))))

(declare-fun lt!2005756 () BalanceConc!28914)

(assert (=> d!1571712 (= res!2089770 (= (list!17722 lt!2005756) (originalCharacters!8487 (_1!33526 (get!19478 lt!2004672)))))))

(assert (=> d!1571712 (= lt!2005756 (BalanceConc!28915 (fromList!932 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004672))))))))

(assert (=> d!1571712 (= (fromListB!2691 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004672)))) lt!2005756)))

(declare-fun b!4893041 () Bool)

(assert (=> b!4893041 (= e!3058892 (isBalanced!4012 (fromList!932 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004672))))))))

(assert (= (and d!1571712 res!2089770) b!4893041))

(declare-fun m!5898086 () Bool)

(assert (=> d!1571712 m!5898086))

(declare-fun m!5898088 () Bool)

(assert (=> d!1571712 m!5898088))

(assert (=> b!4893041 m!5898088))

(assert (=> b!4893041 m!5898088))

(declare-fun m!5898090 () Bool)

(assert (=> b!4893041 m!5898090))

(assert (=> d!1570658 d!1571712))

(declare-fun bs!1176040 () Bool)

(declare-fun d!1571714 () Bool)

(assert (= bs!1176040 (and d!1571714 d!1570734)))

(declare-fun lambda!244019 () Int)

(assert (=> bs!1176040 (= (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) (= lambda!244019 lambda!243997))))

(declare-fun bs!1176041 () Bool)

(assert (= bs!1176041 (and d!1571714 d!1570800)))

(assert (=> bs!1176041 (= (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) (= lambda!244019 lambda!244000))))

(declare-fun bs!1176042 () Bool)

(assert (= bs!1176042 (and d!1571714 d!1571494)))

(assert (=> bs!1176042 (= lambda!244019 lambda!244012)))

(assert (=> d!1571714 true))

(assert (=> d!1571714 (< (dynLambda!22617 order!25463 (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) (dynLambda!22631 order!25477 lambda!244019))))

(assert (=> d!1571714 (= (equivClasses!3465 (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) (Forall2!1267 lambda!244019))))

(declare-fun bs!1176043 () Bool)

(assert (= bs!1176043 d!1571714))

(declare-fun m!5898092 () Bool)

(assert (=> bs!1176043 m!5898092))

(assert (=> b!4891083 d!1571714))

(assert (=> bm!339224 d!1571560))

(assert (=> b!4891484 d!1571666))

(assert (=> b!4891484 d!1571626))

(assert (=> b!4891484 d!1570634))

(assert (=> b!4891484 d!1570684))

(declare-fun d!1571716 () Bool)

(declare-fun lt!2005757 () Int)

(assert (=> d!1571716 (>= lt!2005757 0)))

(declare-fun e!3058893 () Int)

(assert (=> d!1571716 (= lt!2005757 e!3058893)))

(declare-fun c!831662 () Bool)

(assert (=> d!1571716 (= c!831662 ((_ is Nil!56403) (list!17722 (_1!33527 lt!2004658))))))

(assert (=> d!1571716 (= (size!37138 (list!17722 (_1!33527 lt!2004658))) lt!2005757)))

(declare-fun b!4893042 () Bool)

(assert (=> b!4893042 (= e!3058893 0)))

(declare-fun b!4893043 () Bool)

(assert (=> b!4893043 (= e!3058893 (+ 1 (size!37138 (t!365273 (list!17722 (_1!33527 lt!2004658))))))))

(assert (= (and d!1571716 c!831662) b!4893042))

(assert (= (and d!1571716 (not c!831662)) b!4893043))

(declare-fun m!5898094 () Bool)

(assert (=> b!4893043 m!5898094))

(assert (=> d!1570760 d!1571716))

(assert (=> d!1570760 d!1570768))

(declare-fun d!1571718 () Bool)

(declare-fun lt!2005758 () Int)

(assert (=> d!1571718 (= lt!2005758 (size!37138 (list!17724 (c!831175 (_1!33527 lt!2004658)))))))

(assert (=> d!1571718 (= lt!2005758 (ite ((_ is Empty!14742) (c!831175 (_1!33527 lt!2004658))) 0 (ite ((_ is Leaf!24546) (c!831175 (_1!33527 lt!2004658))) (csize!29715 (c!831175 (_1!33527 lt!2004658))) (csize!29714 (c!831175 (_1!33527 lt!2004658))))))))

(assert (=> d!1571718 (= (size!37142 (c!831175 (_1!33527 lt!2004658))) lt!2005758)))

(declare-fun bs!1176044 () Bool)

(assert (= bs!1176044 d!1571718))

(assert (=> bs!1176044 m!5895396))

(assert (=> bs!1176044 m!5895396))

(declare-fun m!5898096 () Bool)

(assert (=> bs!1176044 m!5898096))

(assert (=> d!1570760 d!1571718))

(assert (=> d!1570638 d!1571398))

(declare-fun b!4893044 () Bool)

(declare-fun res!2089773 () Bool)

(declare-fun e!3058897 () Bool)

(assert (=> b!4893044 (=> (not res!2089773) (not e!3058897))))

(declare-fun call!339393 () Bool)

(assert (=> b!4893044 (= res!2089773 call!339393)))

(declare-fun e!3058898 () Bool)

(assert (=> b!4893044 (= e!3058898 e!3058897)))

(declare-fun b!4893045 () Bool)

(declare-fun e!3058894 () Bool)

(declare-fun call!339395 () Bool)

(assert (=> b!4893045 (= e!3058894 call!339395)))

(declare-fun b!4893046 () Bool)

(declare-fun res!2089772 () Bool)

(declare-fun e!3058900 () Bool)

(assert (=> b!4893046 (=> res!2089772 e!3058900)))

(assert (=> b!4893046 (= res!2089772 (not ((_ is Concat!21734) (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))))))))

(assert (=> b!4893046 (= e!3058898 e!3058900)))

(declare-fun bm!339388 () Bool)

(declare-fun c!831663 () Bool)

(declare-fun c!831664 () Bool)

(assert (=> bm!339388 (= call!339395 (validRegex!5882 (ite c!831664 (reg!13578 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) (ite c!831663 (regTwo!27011 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) (regOne!27010 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))))))))))

(declare-fun bm!339389 () Bool)

(declare-fun call!339394 () Bool)

(assert (=> bm!339389 (= call!339394 call!339395)))

(declare-fun b!4893048 () Bool)

(declare-fun e!3058895 () Bool)

(assert (=> b!4893048 (= e!3058895 e!3058894)))

(declare-fun res!2089774 () Bool)

(assert (=> b!4893048 (= res!2089774 (not (nullable!4555 (reg!13578 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))))))))

(assert (=> b!4893048 (=> (not res!2089774) (not e!3058894))))

(declare-fun bm!339390 () Bool)

(assert (=> bm!339390 (= call!339393 (validRegex!5882 (ite c!831663 (regOne!27011 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) (regTwo!27010 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))))))))

(declare-fun b!4893049 () Bool)

(declare-fun e!3058899 () Bool)

(assert (=> b!4893049 (= e!3058899 e!3058895)))

(assert (=> b!4893049 (= c!831664 ((_ is Star!13249) (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))))))

(declare-fun b!4893050 () Bool)

(assert (=> b!4893050 (= e!3058895 e!3058898)))

(assert (=> b!4893050 (= c!831663 ((_ is Union!13249) (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))))))

(declare-fun b!4893047 () Bool)

(assert (=> b!4893047 (= e!3058897 call!339394)))

(declare-fun d!1571720 () Bool)

(declare-fun res!2089775 () Bool)

(assert (=> d!1571720 (=> res!2089775 e!3058899)))

(assert (=> d!1571720 (= res!2089775 ((_ is ElementMatch!13249) (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))))))

(assert (=> d!1571720 (= (validRegex!5882 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) e!3058899)))

(declare-fun b!4893051 () Bool)

(declare-fun e!3058896 () Bool)

(assert (=> b!4893051 (= e!3058900 e!3058896)))

(declare-fun res!2089771 () Bool)

(assert (=> b!4893051 (=> (not res!2089771) (not e!3058896))))

(assert (=> b!4893051 (= res!2089771 call!339394)))

(declare-fun b!4893052 () Bool)

(assert (=> b!4893052 (= e!3058896 call!339393)))

(assert (= (and d!1571720 (not res!2089775)) b!4893049))

(assert (= (and b!4893049 c!831664) b!4893048))

(assert (= (and b!4893049 (not c!831664)) b!4893050))

(assert (= (and b!4893048 res!2089774) b!4893045))

(assert (= (and b!4893050 c!831663) b!4893044))

(assert (= (and b!4893050 (not c!831663)) b!4893046))

(assert (= (and b!4893044 res!2089773) b!4893047))

(assert (= (and b!4893046 (not res!2089772)) b!4893051))

(assert (= (and b!4893051 res!2089771) b!4893052))

(assert (= (or b!4893047 b!4893051) bm!339389))

(assert (= (or b!4893044 b!4893052) bm!339390))

(assert (= (or b!4893045 bm!339389) bm!339388))

(declare-fun m!5898098 () Bool)

(assert (=> bm!339388 m!5898098))

(declare-fun m!5898100 () Bool)

(assert (=> b!4893048 m!5898100))

(declare-fun m!5898102 () Bool)

(assert (=> bm!339390 m!5898102))

(assert (=> d!1570638 d!1571720))

(assert (=> b!4891330 d!1571444))

(assert (=> b!4891134 d!1571460))

(declare-fun b!4893053 () Bool)

(declare-fun e!3058902 () Option!14025)

(declare-fun lt!2005764 () Option!14025)

(declare-fun lt!2005761 () Option!14025)

(assert (=> b!4893053 (= e!3058902 (ite (and ((_ is None!14024) lt!2005764) ((_ is None!14024) lt!2005761)) None!14024 (ite ((_ is None!14024) lt!2005761) lt!2005764 (ite ((_ is None!14024) lt!2005764) lt!2005761 (ite (>= (size!37136 (_1!33525 (v!49976 lt!2005764))) (size!37136 (_1!33525 (v!49976 lt!2005761)))) lt!2005764 lt!2005761)))))))

(declare-fun call!339396 () Option!14025)

(assert (=> b!4893053 (= lt!2005764 call!339396)))

(assert (=> b!4893053 (= lt!2005761 (maxPrefixZipperSequence!1315 thiss!14805 (t!365275 (t!365275 (t!365275 (t!365275 rulesArg!165)))) input!1236))))

(declare-fun lt!2005763 () Option!14025)

(declare-fun b!4893054 () Bool)

(declare-fun e!3058904 () Bool)

(assert (=> b!4893054 (= e!3058904 (= (list!17722 (_2!33525 (get!19479 lt!2005763))) (_2!33526 (get!19478 (maxPrefixZipper!673 thiss!14805 (t!365275 (t!365275 (t!365275 rulesArg!165))) (list!17722 input!1236))))))))

(declare-fun d!1571722 () Bool)

(declare-fun e!3058903 () Bool)

(assert (=> d!1571722 e!3058903))

(declare-fun res!2089776 () Bool)

(assert (=> d!1571722 (=> (not res!2089776) (not e!3058903))))

(assert (=> d!1571722 (= res!2089776 (= (isDefined!11038 lt!2005763) (isDefined!11037 (maxPrefixZipper!673 thiss!14805 (t!365275 (t!365275 (t!365275 rulesArg!165))) (list!17722 input!1236)))))))

(assert (=> d!1571722 (= lt!2005763 e!3058902)))

(declare-fun c!831665 () Bool)

(assert (=> d!1571722 (= c!831665 (and ((_ is Cons!56405) (t!365275 (t!365275 (t!365275 rulesArg!165)))) ((_ is Nil!56405) (t!365275 (t!365275 (t!365275 (t!365275 rulesArg!165)))))))))

(declare-fun lt!2005760 () Unit!146398)

(declare-fun lt!2005759 () Unit!146398)

(assert (=> d!1571722 (= lt!2005760 lt!2005759)))

(declare-fun lt!2005762 () List!56527)

(declare-fun lt!2005765 () List!56527)

(assert (=> d!1571722 (isPrefix!4894 lt!2005762 lt!2005765)))

(assert (=> d!1571722 (= lt!2005759 (lemmaIsPrefixRefl!3291 lt!2005762 lt!2005765))))

(assert (=> d!1571722 (= lt!2005765 (list!17722 input!1236))))

(assert (=> d!1571722 (= lt!2005762 (list!17722 input!1236))))

(assert (=> d!1571722 (rulesValidInductive!3153 thiss!14805 (t!365275 (t!365275 (t!365275 rulesArg!165))))))

(assert (=> d!1571722 (= (maxPrefixZipperSequence!1315 thiss!14805 (t!365275 (t!365275 (t!365275 rulesArg!165))) input!1236) lt!2005763)))

(declare-fun b!4893055 () Bool)

(assert (=> b!4893055 (= e!3058902 call!339396)))

(declare-fun b!4893056 () Bool)

(declare-fun e!3058905 () Bool)

(assert (=> b!4893056 (= e!3058903 e!3058905)))

(declare-fun res!2089780 () Bool)

(assert (=> b!4893056 (=> res!2089780 e!3058905)))

(assert (=> b!4893056 (= res!2089780 (not (isDefined!11038 lt!2005763)))))

(declare-fun b!4893057 () Bool)

(declare-fun res!2089778 () Bool)

(assert (=> b!4893057 (=> (not res!2089778) (not e!3058903))))

(declare-fun e!3058901 () Bool)

(assert (=> b!4893057 (= res!2089778 e!3058901)))

(declare-fun res!2089777 () Bool)

(assert (=> b!4893057 (=> res!2089777 e!3058901)))

(assert (=> b!4893057 (= res!2089777 (not (isDefined!11038 lt!2005763)))))

(declare-fun e!3058906 () Bool)

(declare-fun b!4893058 () Bool)

(assert (=> b!4893058 (= e!3058906 (= (list!17722 (_2!33525 (get!19479 lt!2005763))) (_2!33526 (get!19478 (maxPrefix!4603 thiss!14805 (t!365275 (t!365275 (t!365275 rulesArg!165))) (list!17722 input!1236))))))))

(declare-fun b!4893059 () Bool)

(assert (=> b!4893059 (= e!3058905 e!3058906)))

(declare-fun res!2089781 () Bool)

(assert (=> b!4893059 (=> (not res!2089781) (not e!3058906))))

(assert (=> b!4893059 (= res!2089781 (= (_1!33525 (get!19479 lt!2005763)) (_1!33526 (get!19478 (maxPrefix!4603 thiss!14805 (t!365275 (t!365275 (t!365275 rulesArg!165))) (list!17722 input!1236))))))))

(declare-fun b!4893060 () Bool)

(assert (=> b!4893060 (= e!3058901 e!3058904)))

(declare-fun res!2089779 () Bool)

(assert (=> b!4893060 (=> (not res!2089779) (not e!3058904))))

(assert (=> b!4893060 (= res!2089779 (= (_1!33525 (get!19479 lt!2005763)) (_1!33526 (get!19478 (maxPrefixZipper!673 thiss!14805 (t!365275 (t!365275 (t!365275 rulesArg!165))) (list!17722 input!1236))))))))

(declare-fun bm!339391 () Bool)

(assert (=> bm!339391 (= call!339396 (maxPrefixOneRuleZipperSequence!684 thiss!14805 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))) input!1236))))

(assert (= (and d!1571722 c!831665) b!4893055))

(assert (= (and d!1571722 (not c!831665)) b!4893053))

(assert (= (or b!4893055 b!4893053) bm!339391))

(assert (= (and d!1571722 res!2089776) b!4893057))

(assert (= (and b!4893057 (not res!2089777)) b!4893060))

(assert (= (and b!4893060 res!2089779) b!4893054))

(assert (= (and b!4893057 res!2089778) b!4893056))

(assert (= (and b!4893056 (not res!2089780)) b!4893059))

(assert (= (and b!4893059 res!2089781) b!4893058))

(declare-fun m!5898104 () Bool)

(assert (=> bm!339391 m!5898104))

(assert (=> d!1571722 m!5897298))

(assert (=> d!1571722 m!5894176))

(assert (=> d!1571722 m!5897086))

(assert (=> d!1571722 m!5894176))

(assert (=> d!1571722 m!5897086))

(declare-fun m!5898106 () Bool)

(assert (=> d!1571722 m!5898106))

(declare-fun m!5898108 () Bool)

(assert (=> d!1571722 m!5898108))

(declare-fun m!5898110 () Bool)

(assert (=> d!1571722 m!5898110))

(declare-fun m!5898112 () Bool)

(assert (=> d!1571722 m!5898112))

(declare-fun m!5898114 () Bool)

(assert (=> b!4893059 m!5898114))

(assert (=> b!4893059 m!5894176))

(assert (=> b!4893059 m!5894176))

(assert (=> b!4893059 m!5897458))

(assert (=> b!4893059 m!5897458))

(declare-fun m!5898116 () Bool)

(assert (=> b!4893059 m!5898116))

(assert (=> b!4893057 m!5898110))

(assert (=> b!4893058 m!5894176))

(assert (=> b!4893058 m!5897458))

(assert (=> b!4893058 m!5898116))

(assert (=> b!4893058 m!5898114))

(declare-fun m!5898118 () Bool)

(assert (=> b!4893058 m!5898118))

(assert (=> b!4893058 m!5894176))

(assert (=> b!4893058 m!5897458))

(assert (=> b!4893056 m!5898110))

(assert (=> b!4893054 m!5894176))

(assert (=> b!4893054 m!5897086))

(assert (=> b!4893054 m!5894176))

(assert (=> b!4893054 m!5898114))

(assert (=> b!4893054 m!5898118))

(assert (=> b!4893054 m!5897086))

(declare-fun m!5898120 () Bool)

(assert (=> b!4893054 m!5898120))

(declare-fun m!5898122 () Bool)

(assert (=> b!4893053 m!5898122))

(assert (=> b!4893060 m!5898114))

(assert (=> b!4893060 m!5894176))

(assert (=> b!4893060 m!5894176))

(assert (=> b!4893060 m!5897086))

(assert (=> b!4893060 m!5897086))

(assert (=> b!4893060 m!5898120))

(assert (=> b!4891419 d!1571722))

(declare-fun b!4893062 () Bool)

(declare-fun res!2089784 () Bool)

(declare-fun e!3058907 () Bool)

(assert (=> b!4893062 (=> (not res!2089784) (not e!3058907))))

(assert (=> b!4893062 (= res!2089784 (= (head!10455 (tail!9601 lt!2004578)) (head!10455 (tail!9601 lt!2004581))))))

(declare-fun d!1571724 () Bool)

(declare-fun e!3058908 () Bool)

(assert (=> d!1571724 e!3058908))

(declare-fun res!2089783 () Bool)

(assert (=> d!1571724 (=> res!2089783 e!3058908)))

(declare-fun lt!2005766 () Bool)

(assert (=> d!1571724 (= res!2089783 (not lt!2005766))))

(declare-fun e!3058909 () Bool)

(assert (=> d!1571724 (= lt!2005766 e!3058909)))

(declare-fun res!2089785 () Bool)

(assert (=> d!1571724 (=> res!2089785 e!3058909)))

(assert (=> d!1571724 (= res!2089785 ((_ is Nil!56403) (tail!9601 lt!2004578)))))

(assert (=> d!1571724 (= (isPrefix!4894 (tail!9601 lt!2004578) (tail!9601 lt!2004581)) lt!2005766)))

(declare-fun b!4893061 () Bool)

(assert (=> b!4893061 (= e!3058909 e!3058907)))

(declare-fun res!2089782 () Bool)

(assert (=> b!4893061 (=> (not res!2089782) (not e!3058907))))

(assert (=> b!4893061 (= res!2089782 (not ((_ is Nil!56403) (tail!9601 lt!2004581))))))

(declare-fun b!4893063 () Bool)

(assert (=> b!4893063 (= e!3058907 (isPrefix!4894 (tail!9601 (tail!9601 lt!2004578)) (tail!9601 (tail!9601 lt!2004581))))))

(declare-fun b!4893064 () Bool)

(assert (=> b!4893064 (= e!3058908 (>= (size!37138 (tail!9601 lt!2004581)) (size!37138 (tail!9601 lt!2004578))))))

(assert (= (and d!1571724 (not res!2089785)) b!4893061))

(assert (= (and b!4893061 res!2089782) b!4893062))

(assert (= (and b!4893062 res!2089784) b!4893063))

(assert (= (and d!1571724 (not res!2089783)) b!4893064))

(assert (=> b!4893062 m!5895426))

(declare-fun m!5898124 () Bool)

(assert (=> b!4893062 m!5898124))

(assert (=> b!4893062 m!5895428))

(declare-fun m!5898126 () Bool)

(assert (=> b!4893062 m!5898126))

(assert (=> b!4893063 m!5895426))

(declare-fun m!5898128 () Bool)

(assert (=> b!4893063 m!5898128))

(assert (=> b!4893063 m!5895428))

(declare-fun m!5898130 () Bool)

(assert (=> b!4893063 m!5898130))

(assert (=> b!4893063 m!5898128))

(assert (=> b!4893063 m!5898130))

(declare-fun m!5898132 () Bool)

(assert (=> b!4893063 m!5898132))

(assert (=> b!4893064 m!5895428))

(declare-fun m!5898134 () Bool)

(assert (=> b!4893064 m!5898134))

(assert (=> b!4893064 m!5895426))

(declare-fun m!5898136 () Bool)

(assert (=> b!4893064 m!5898136))

(assert (=> b!4891634 d!1571724))

(declare-fun d!1571726 () Bool)

(assert (=> d!1571726 (= (tail!9601 lt!2004578) (t!365273 lt!2004578))))

(assert (=> b!4891634 d!1571726))

(declare-fun d!1571728 () Bool)

(assert (=> d!1571728 (= (tail!9601 lt!2004581) (t!365273 lt!2004581))))

(assert (=> b!4891634 d!1571728))

(assert (=> b!4891525 d!1571542))

(assert (=> d!1570694 d!1570588))

(declare-fun d!1571730 () Bool)

(assert (=> d!1571730 (= (isEmpty!30257 (_1!33528 lt!2005035)) ((_ is Nil!56403) (_1!33528 lt!2005035)))))

(assert (=> d!1570694 d!1571730))

(declare-fun d!1571732 () Bool)

(declare-fun lt!2005784 () tuple2!60450)

(assert (=> d!1571732 (= lt!2005784 (findLongestMatch!1646 (regex!8174 (h!62853 rulesArg!165)) lt!2004534))))

(declare-datatypes ((List!56531 0))(
  ( (Nil!56407) (Cons!56407 (h!62855 Regex!13249) (t!365671 List!56531)) )
))
(declare-datatypes ((Context!5950 0))(
  ( (Context!5951 (exprs!3475 List!56531)) )
))
(declare-fun lt!2005787 () (InoxSet Context!5950))

(declare-fun findLongestMatchZipper!9 ((InoxSet Context!5950) List!56527) tuple2!60450)

(assert (=> d!1571732 (= lt!2005784 (findLongestMatchZipper!9 lt!2005787 lt!2004534))))

(declare-fun lt!2005786 () Unit!146398)

(declare-fun lt!2005783 () Unit!146398)

(assert (=> d!1571732 (= lt!2005786 lt!2005783)))

(declare-fun lt!2005781 () Int)

(assert (=> d!1571732 (= (sizeTr!340 lt!2004534 lt!2005781) (+ (size!37138 lt!2004534) lt!2005781))))

(assert (=> d!1571732 (= lt!2005783 (lemmaSizeTrEqualsSize!339 lt!2004534 lt!2005781))))

(assert (=> d!1571732 (= lt!2005781 0)))

(declare-fun lt!2005785 () Unit!146398)

(declare-fun lt!2005782 () Unit!146398)

(assert (=> d!1571732 (= lt!2005785 lt!2005782)))

(assert (=> d!1571732 (= (findLongestMatchZipper!9 lt!2005787 lt!2004534) (findLongestMatch!1646 (regex!8174 (h!62853 rulesArg!165)) lt!2004534))))

(declare-fun longestMatchSameAsRegex!8 (Regex!13249 (InoxSet Context!5950) List!56527) Unit!146398)

(assert (=> d!1571732 (= lt!2005782 (longestMatchSameAsRegex!8 (regex!8174 (h!62853 rulesArg!165)) lt!2005787 lt!2004534))))

(declare-fun focus!331 (Regex!13249) (InoxSet Context!5950))

(assert (=> d!1571732 (= lt!2005787 (focus!331 (regex!8174 (h!62853 rulesArg!165))))))

(assert (=> d!1571732 (validRegex!5882 (regex!8174 (h!62853 rulesArg!165)))))

(assert (=> d!1571732 (= (findLongestMatchWithZipper!81 (regex!8174 (h!62853 rulesArg!165)) lt!2004534) lt!2005784)))

(declare-fun bs!1176045 () Bool)

(assert (= bs!1176045 d!1571732))

(assert (=> bs!1176045 m!5894624))

(declare-fun m!5898138 () Bool)

(assert (=> bs!1176045 m!5898138))

(declare-fun m!5898140 () Bool)

(assert (=> bs!1176045 m!5898140))

(assert (=> bs!1176045 m!5894684))

(assert (=> bs!1176045 m!5894382))

(declare-fun m!5898142 () Bool)

(assert (=> bs!1176045 m!5898142))

(declare-fun m!5898144 () Bool)

(assert (=> bs!1176045 m!5898144))

(declare-fun m!5898146 () Bool)

(assert (=> bs!1176045 m!5898146))

(assert (=> d!1570694 d!1571732))

(assert (=> d!1570694 d!1570668))

(assert (=> b!4891654 d!1571396))

(declare-fun d!1571734 () Bool)

(assert (=> d!1571734 (= (apply!13540 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2005117)))) (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2005117))))) (dynLambda!22628 (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2005117))))) (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2005117))))))))

(declare-fun b_lambda!194349 () Bool)

(assert (=> (not b_lambda!194349) (not d!1571734)))

(declare-fun t!365588 () Bool)

(declare-fun tb!258839 () Bool)

(assert (=> (and b!4890709 (= (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2005117)))))) t!365588) tb!258839))

(declare-fun result!322402 () Bool)

(assert (=> tb!258839 (= result!322402 (inv!21 (dynLambda!22628 (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2005117))))) (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2005117)))))))))

(declare-fun m!5898148 () Bool)

(assert (=> tb!258839 m!5898148))

(assert (=> d!1571734 t!365588))

(declare-fun b_and!344845 () Bool)

(assert (= b_and!344839 (and (=> t!365588 result!322402) b_and!344845)))

(declare-fun tb!258841 () Bool)

(declare-fun t!365590 () Bool)

(assert (=> (and b!4891010 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2005117)))))) t!365590) tb!258841))

(declare-fun result!322404 () Bool)

(assert (= result!322404 result!322402))

(assert (=> d!1571734 t!365590))

(declare-fun b_and!344847 () Bool)

(assert (= b_and!344841 (and (=> t!365590 result!322404) b_and!344847)))

(declare-fun tb!258843 () Bool)

(declare-fun t!365592 () Bool)

(assert (=> (and b!4891741 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2005117)))))) t!365592) tb!258843))

(declare-fun result!322406 () Bool)

(assert (= result!322406 result!322402))

(assert (=> d!1571734 t!365592))

(declare-fun b_and!344849 () Bool)

(assert (= b_and!344843 (and (=> t!365592 result!322406) b_and!344849)))

(assert (=> d!1571734 m!5895452))

(declare-fun m!5898150 () Bool)

(assert (=> d!1571734 m!5898150))

(assert (=> b!4891654 d!1571734))

(declare-fun d!1571736 () Bool)

(assert (=> d!1571736 (= (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2005117)))) (fromListB!2691 (originalCharacters!8487 (_1!33526 (get!19478 lt!2005117)))))))

(declare-fun bs!1176046 () Bool)

(assert (= bs!1176046 d!1571736))

(declare-fun m!5898152 () Bool)

(assert (=> bs!1176046 m!5898152))

(assert (=> b!4891654 d!1571736))

(declare-fun d!1571738 () Bool)

(declare-fun lt!2005788 () Int)

(assert (=> d!1571738 (>= lt!2005788 0)))

(declare-fun e!3058911 () Int)

(assert (=> d!1571738 (= lt!2005788 e!3058911)))

(declare-fun c!831666 () Bool)

(assert (=> d!1571738 (= c!831666 ((_ is Nil!56403) (tail!9601 lt!2004534)))))

(assert (=> d!1571738 (= (size!37138 (tail!9601 lt!2004534)) lt!2005788)))

(declare-fun b!4893065 () Bool)

(assert (=> b!4893065 (= e!3058911 0)))

(declare-fun b!4893066 () Bool)

(assert (=> b!4893066 (= e!3058911 (+ 1 (size!37138 (t!365273 (tail!9601 lt!2004534)))))))

(assert (= (and d!1571738 c!831666) b!4893065))

(assert (= (and d!1571738 (not c!831666)) b!4893066))

(declare-fun m!5898154 () Bool)

(assert (=> b!4893066 m!5898154))

(assert (=> b!4891078 d!1571738))

(declare-fun d!1571740 () Bool)

(declare-fun res!2089786 () Bool)

(declare-fun e!3058912 () Bool)

(assert (=> d!1571740 (=> res!2089786 e!3058912)))

(assert (=> d!1571740 (= res!2089786 ((_ is Nil!56405) (t!365275 rulesArg!165)))))

(assert (=> d!1571740 (= (forall!13090 (t!365275 rulesArg!165) lambda!243979) e!3058912)))

(declare-fun b!4893067 () Bool)

(declare-fun e!3058913 () Bool)

(assert (=> b!4893067 (= e!3058912 e!3058913)))

(declare-fun res!2089787 () Bool)

(assert (=> b!4893067 (=> (not res!2089787) (not e!3058913))))

(assert (=> b!4893067 (= res!2089787 (dynLambda!22629 lambda!243979 (h!62853 (t!365275 rulesArg!165))))))

(declare-fun b!4893068 () Bool)

(assert (=> b!4893068 (= e!3058913 (forall!13090 (t!365275 (t!365275 rulesArg!165)) lambda!243979))))

(assert (= (and d!1571740 (not res!2089786)) b!4893067))

(assert (= (and b!4893067 res!2089787) b!4893068))

(declare-fun b_lambda!194351 () Bool)

(assert (=> (not b_lambda!194351) (not b!4893067)))

(declare-fun m!5898156 () Bool)

(assert (=> b!4893067 m!5898156))

(declare-fun m!5898158 () Bool)

(assert (=> b!4893068 m!5898158))

(assert (=> d!1570550 d!1571740))

(declare-fun d!1571742 () Bool)

(declare-fun res!2089788 () Bool)

(declare-fun e!3058914 () Bool)

(assert (=> d!1571742 (=> (not res!2089788) (not e!3058914))))

(assert (=> d!1571742 (= res!2089788 (<= (size!37138 (list!17726 (xs!18058 (left!40975 (c!831175 input!1236))))) 512))))

(assert (=> d!1571742 (= (inv!72683 (left!40975 (c!831175 input!1236))) e!3058914)))

(declare-fun b!4893069 () Bool)

(declare-fun res!2089789 () Bool)

(assert (=> b!4893069 (=> (not res!2089789) (not e!3058914))))

(assert (=> b!4893069 (= res!2089789 (= (csize!29715 (left!40975 (c!831175 input!1236))) (size!37138 (list!17726 (xs!18058 (left!40975 (c!831175 input!1236)))))))))

(declare-fun b!4893070 () Bool)

(assert (=> b!4893070 (= e!3058914 (and (> (csize!29715 (left!40975 (c!831175 input!1236))) 0) (<= (csize!29715 (left!40975 (c!831175 input!1236))) 512)))))

(assert (= (and d!1571742 res!2089788) b!4893069))

(assert (= (and b!4893069 res!2089789) b!4893070))

(assert (=> d!1571742 m!5897368))

(assert (=> d!1571742 m!5897368))

(declare-fun m!5898160 () Bool)

(assert (=> d!1571742 m!5898160))

(assert (=> b!4893069 m!5897368))

(assert (=> b!4893069 m!5897368))

(assert (=> b!4893069 m!5898160))

(assert (=> b!4891505 d!1571742))

(declare-fun b!4893072 () Bool)

(declare-fun e!3058915 () List!56527)

(declare-fun e!3058916 () List!56527)

(assert (=> b!4893072 (= e!3058915 e!3058916)))

(declare-fun c!831668 () Bool)

(assert (=> b!4893072 (= c!831668 ((_ is Leaf!24546) (c!831175 (_1!33527 lt!2004658))))))

(declare-fun d!1571744 () Bool)

(declare-fun c!831667 () Bool)

(assert (=> d!1571744 (= c!831667 ((_ is Empty!14742) (c!831175 (_1!33527 lt!2004658))))))

(assert (=> d!1571744 (= (list!17724 (c!831175 (_1!33527 lt!2004658))) e!3058915)))

(declare-fun b!4893073 () Bool)

(assert (=> b!4893073 (= e!3058916 (list!17726 (xs!18058 (c!831175 (_1!33527 lt!2004658)))))))

(declare-fun b!4893071 () Bool)

(assert (=> b!4893071 (= e!3058915 Nil!56403)))

(declare-fun b!4893074 () Bool)

(assert (=> b!4893074 (= e!3058916 (++!12243 (list!17724 (left!40975 (c!831175 (_1!33527 lt!2004658)))) (list!17724 (right!41305 (c!831175 (_1!33527 lt!2004658))))))))

(assert (= (and d!1571744 c!831667) b!4893071))

(assert (= (and d!1571744 (not c!831667)) b!4893072))

(assert (= (and b!4893072 c!831668) b!4893073))

(assert (= (and b!4893072 (not c!831668)) b!4893074))

(declare-fun m!5898162 () Bool)

(assert (=> b!4893073 m!5898162))

(declare-fun m!5898164 () Bool)

(assert (=> b!4893074 m!5898164))

(declare-fun m!5898166 () Bool)

(assert (=> b!4893074 m!5898166))

(assert (=> b!4893074 m!5898164))

(assert (=> b!4893074 m!5898166))

(declare-fun m!5898168 () Bool)

(assert (=> b!4893074 m!5898168))

(assert (=> d!1570768 d!1571744))

(declare-fun d!1571746 () Bool)

(declare-fun lt!2005789 () Int)

(assert (=> d!1571746 (>= lt!2005789 0)))

(declare-fun e!3058917 () Int)

(assert (=> d!1571746 (= lt!2005789 e!3058917)))

(declare-fun c!831669 () Bool)

(assert (=> d!1571746 (= c!831669 ((_ is Nil!56403) (t!365273 lt!2004660)))))

(assert (=> d!1571746 (= (size!37138 (t!365273 lt!2004660)) lt!2005789)))

(declare-fun b!4893075 () Bool)

(assert (=> b!4893075 (= e!3058917 0)))

(declare-fun b!4893076 () Bool)

(assert (=> b!4893076 (= e!3058917 (+ 1 (size!37138 (t!365273 (t!365273 lt!2004660)))))))

(assert (= (and d!1571746 c!831669) b!4893075))

(assert (= (and d!1571746 (not c!831669)) b!4893076))

(declare-fun m!5898170 () Bool)

(assert (=> b!4893076 m!5898170))

(assert (=> b!4891329 d!1571746))

(declare-fun b!4893077 () Bool)

(declare-fun e!3058919 () Bool)

(declare-fun e!3058918 () Bool)

(assert (=> b!4893077 (= e!3058919 e!3058918)))

(declare-fun res!2089795 () Bool)

(assert (=> b!4893077 (=> (not res!2089795) (not e!3058918))))

(assert (=> b!4893077 (= res!2089795 (<= (- 1) (- (height!1955 (left!40975 (right!41305 (c!831175 input!1236)))) (height!1955 (right!41305 (right!41305 (c!831175 input!1236)))))))))

(declare-fun b!4893078 () Bool)

(declare-fun res!2089794 () Bool)

(assert (=> b!4893078 (=> (not res!2089794) (not e!3058918))))

(assert (=> b!4893078 (= res!2089794 (not (isEmpty!30263 (left!40975 (right!41305 (c!831175 input!1236))))))))

(declare-fun b!4893080 () Bool)

(declare-fun res!2089790 () Bool)

(assert (=> b!4893080 (=> (not res!2089790) (not e!3058918))))

(assert (=> b!4893080 (= res!2089790 (isBalanced!4012 (left!40975 (right!41305 (c!831175 input!1236)))))))

(declare-fun b!4893081 () Bool)

(assert (=> b!4893081 (= e!3058918 (not (isEmpty!30263 (right!41305 (right!41305 (c!831175 input!1236))))))))

(declare-fun b!4893082 () Bool)

(declare-fun res!2089791 () Bool)

(assert (=> b!4893082 (=> (not res!2089791) (not e!3058918))))

(assert (=> b!4893082 (= res!2089791 (isBalanced!4012 (right!41305 (right!41305 (c!831175 input!1236)))))))

(declare-fun b!4893079 () Bool)

(declare-fun res!2089792 () Bool)

(assert (=> b!4893079 (=> (not res!2089792) (not e!3058918))))

(assert (=> b!4893079 (= res!2089792 (<= (- (height!1955 (left!40975 (right!41305 (c!831175 input!1236)))) (height!1955 (right!41305 (right!41305 (c!831175 input!1236))))) 1))))

(declare-fun d!1571748 () Bool)

(declare-fun res!2089793 () Bool)

(assert (=> d!1571748 (=> res!2089793 e!3058919)))

(assert (=> d!1571748 (= res!2089793 (not ((_ is Node!14742) (right!41305 (c!831175 input!1236)))))))

(assert (=> d!1571748 (= (isBalanced!4012 (right!41305 (c!831175 input!1236))) e!3058919)))

(assert (= (and d!1571748 (not res!2089793)) b!4893077))

(assert (= (and b!4893077 res!2089795) b!4893079))

(assert (= (and b!4893079 res!2089792) b!4893080))

(assert (= (and b!4893080 res!2089790) b!4893082))

(assert (= (and b!4893082 res!2089791) b!4893078))

(assert (= (and b!4893078 res!2089794) b!4893081))

(declare-fun m!5898172 () Bool)

(assert (=> b!4893081 m!5898172))

(assert (=> b!4893077 m!5897790))

(assert (=> b!4893077 m!5897792))

(declare-fun m!5898174 () Bool)

(assert (=> b!4893078 m!5898174))

(assert (=> b!4893079 m!5897790))

(assert (=> b!4893079 m!5897792))

(declare-fun m!5898176 () Bool)

(assert (=> b!4893082 m!5898176))

(declare-fun m!5898178 () Bool)

(assert (=> b!4893080 m!5898178))

(assert (=> b!4891502 d!1571748))

(declare-fun d!1571750 () Bool)

(declare-fun c!831670 () Bool)

(assert (=> d!1571750 (= c!831670 ((_ is Node!14742) (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (_1!33527 lt!2004658))))))))

(declare-fun e!3058920 () Bool)

(assert (=> d!1571750 (= (inv!72677 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (_1!33527 lt!2004658))))) e!3058920)))

(declare-fun b!4893083 () Bool)

(assert (=> b!4893083 (= e!3058920 (inv!72682 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (_1!33527 lt!2004658))))))))

(declare-fun b!4893084 () Bool)

(declare-fun e!3058921 () Bool)

(assert (=> b!4893084 (= e!3058920 e!3058921)))

(declare-fun res!2089796 () Bool)

(assert (=> b!4893084 (= res!2089796 (not ((_ is Leaf!24546) (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (_1!33527 lt!2004658)))))))))

(assert (=> b!4893084 (=> res!2089796 e!3058921)))

(declare-fun b!4893085 () Bool)

(assert (=> b!4893085 (= e!3058921 (inv!72683 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (_1!33527 lt!2004658))))))))

(assert (= (and d!1571750 c!831670) b!4893083))

(assert (= (and d!1571750 (not c!831670)) b!4893084))

(assert (= (and b!4893084 (not res!2089796)) b!4893085))

(declare-fun m!5898180 () Bool)

(assert (=> b!4893083 m!5898180))

(declare-fun m!5898182 () Bool)

(assert (=> b!4893085 m!5898182))

(assert (=> b!4891743 d!1571750))

(declare-fun d!1571752 () Bool)

(assert (=> d!1571752 (dynLambda!22630 lambda!243967 (seqFromList!5936 (list!17722 (_1!33527 lt!2004658))))))

(assert (=> d!1571752 true))

(declare-fun _$1!11186 () Unit!146398)

(assert (=> d!1571752 (= (choose!35704 lambda!243967 (seqFromList!5936 (list!17722 (_1!33527 lt!2004658)))) _$1!11186)))

(declare-fun b_lambda!194353 () Bool)

(assert (=> (not b_lambda!194353) (not d!1571752)))

(declare-fun bs!1176047 () Bool)

(assert (= bs!1176047 d!1571752))

(assert (=> bs!1176047 m!5894348))

(assert (=> bs!1176047 m!5895232))

(assert (=> d!1570732 d!1571752))

(assert (=> d!1570732 d!1571470))

(declare-fun d!1571754 () Bool)

(declare-fun c!831671 () Bool)

(assert (=> d!1571754 (= c!831671 ((_ is Node!14742) (left!40975 (right!41305 (c!831175 input!1236)))))))

(declare-fun e!3058922 () Bool)

(assert (=> d!1571754 (= (inv!72677 (left!40975 (right!41305 (c!831175 input!1236)))) e!3058922)))

(declare-fun b!4893086 () Bool)

(assert (=> b!4893086 (= e!3058922 (inv!72682 (left!40975 (right!41305 (c!831175 input!1236)))))))

(declare-fun b!4893087 () Bool)

(declare-fun e!3058923 () Bool)

(assert (=> b!4893087 (= e!3058922 e!3058923)))

(declare-fun res!2089797 () Bool)

(assert (=> b!4893087 (= res!2089797 (not ((_ is Leaf!24546) (left!40975 (right!41305 (c!831175 input!1236))))))))

(assert (=> b!4893087 (=> res!2089797 e!3058923)))

(declare-fun b!4893088 () Bool)

(assert (=> b!4893088 (= e!3058923 (inv!72683 (left!40975 (right!41305 (c!831175 input!1236)))))))

(assert (= (and d!1571754 c!831671) b!4893086))

(assert (= (and d!1571754 (not c!831671)) b!4893087))

(assert (= (and b!4893087 (not res!2089797)) b!4893088))

(declare-fun m!5898184 () Bool)

(assert (=> b!4893086 m!5898184))

(declare-fun m!5898186 () Bool)

(assert (=> b!4893088 m!5898186))

(assert (=> b!4891731 d!1571754))

(declare-fun d!1571756 () Bool)

(declare-fun c!831672 () Bool)

(assert (=> d!1571756 (= c!831672 ((_ is Node!14742) (right!41305 (right!41305 (c!831175 input!1236)))))))

(declare-fun e!3058924 () Bool)

(assert (=> d!1571756 (= (inv!72677 (right!41305 (right!41305 (c!831175 input!1236)))) e!3058924)))

(declare-fun b!4893089 () Bool)

(assert (=> b!4893089 (= e!3058924 (inv!72682 (right!41305 (right!41305 (c!831175 input!1236)))))))

(declare-fun b!4893090 () Bool)

(declare-fun e!3058925 () Bool)

(assert (=> b!4893090 (= e!3058924 e!3058925)))

(declare-fun res!2089798 () Bool)

(assert (=> b!4893090 (= res!2089798 (not ((_ is Leaf!24546) (right!41305 (right!41305 (c!831175 input!1236))))))))

(assert (=> b!4893090 (=> res!2089798 e!3058925)))

(declare-fun b!4893091 () Bool)

(assert (=> b!4893091 (= e!3058925 (inv!72683 (right!41305 (right!41305 (c!831175 input!1236)))))))

(assert (= (and d!1571756 c!831672) b!4893089))

(assert (= (and d!1571756 (not c!831672)) b!4893090))

(assert (= (and b!4893090 (not res!2089798)) b!4893091))

(declare-fun m!5898188 () Bool)

(assert (=> b!4893089 m!5898188))

(declare-fun m!5898190 () Bool)

(assert (=> b!4893091 m!5898190))

(assert (=> b!4891731 d!1571756))

(assert (=> d!1570574 d!1570788))

(assert (=> d!1570574 d!1570498))

(assert (=> d!1570574 d!1570500))

(assert (=> d!1570574 d!1570550))

(declare-fun b!4893094 () Bool)

(declare-fun res!2089800 () Bool)

(declare-fun e!3058927 () Bool)

(assert (=> b!4893094 (=> (not res!2089800) (not e!3058927))))

(declare-fun lt!2005790 () List!56527)

(assert (=> b!4893094 (= res!2089800 (= (size!37138 lt!2005790) (+ (size!37138 (_1!33528 lt!2004942)) (size!37138 (_2!33528 lt!2004942)))))))

(declare-fun b!4893095 () Bool)

(assert (=> b!4893095 (= e!3058927 (or (not (= (_2!33528 lt!2004942) Nil!56403)) (= lt!2005790 (_1!33528 lt!2004942))))))

(declare-fun b!4893092 () Bool)

(declare-fun e!3058926 () List!56527)

(assert (=> b!4893092 (= e!3058926 (_2!33528 lt!2004942))))

(declare-fun d!1571758 () Bool)

(assert (=> d!1571758 e!3058927))

(declare-fun res!2089799 () Bool)

(assert (=> d!1571758 (=> (not res!2089799) (not e!3058927))))

(assert (=> d!1571758 (= res!2089799 (= (content!10015 lt!2005790) ((_ map or) (content!10015 (_1!33528 lt!2004942)) (content!10015 (_2!33528 lt!2004942)))))))

(assert (=> d!1571758 (= lt!2005790 e!3058926)))

(declare-fun c!831673 () Bool)

(assert (=> d!1571758 (= c!831673 ((_ is Nil!56403) (_1!33528 lt!2004942)))))

(assert (=> d!1571758 (= (++!12243 (_1!33528 lt!2004942) (_2!33528 lt!2004942)) lt!2005790)))

(declare-fun b!4893093 () Bool)

(assert (=> b!4893093 (= e!3058926 (Cons!56403 (h!62851 (_1!33528 lt!2004942)) (++!12243 (t!365273 (_1!33528 lt!2004942)) (_2!33528 lt!2004942))))))

(assert (= (and d!1571758 c!831673) b!4893092))

(assert (= (and d!1571758 (not c!831673)) b!4893093))

(assert (= (and d!1571758 res!2089799) b!4893094))

(assert (= (and b!4893094 res!2089800) b!4893095))

(declare-fun m!5898192 () Bool)

(assert (=> b!4893094 m!5898192))

(assert (=> b!4893094 m!5894816))

(declare-fun m!5898194 () Bool)

(assert (=> b!4893094 m!5898194))

(declare-fun m!5898196 () Bool)

(assert (=> d!1571758 m!5898196))

(declare-fun m!5898198 () Bool)

(assert (=> d!1571758 m!5898198))

(declare-fun m!5898200 () Bool)

(assert (=> d!1571758 m!5898200))

(declare-fun m!5898202 () Bool)

(assert (=> b!4893093 m!5898202))

(assert (=> d!1570596 d!1571758))

(declare-fun d!1571760 () Bool)

(assert (=> d!1571760 (= lt!2004660 lt!2004950)))

(declare-fun lt!2005793 () Unit!146398)

(declare-fun choose!35720 (List!56527 List!56527 List!56527 List!56527 List!56527) Unit!146398)

(assert (=> d!1571760 (= lt!2005793 (choose!35720 Nil!56403 lt!2004660 Nil!56403 lt!2004950 lt!2004660))))

(assert (=> d!1571760 (isPrefix!4894 Nil!56403 lt!2004660)))

(assert (=> d!1571760 (= (lemmaSamePrefixThenSameSuffix!2302 Nil!56403 lt!2004660 Nil!56403 lt!2004950 lt!2004660) lt!2005793)))

(declare-fun bs!1176048 () Bool)

(assert (= bs!1176048 d!1571760))

(declare-fun m!5898204 () Bool)

(assert (=> bs!1176048 m!5898204))

(assert (=> bs!1176048 m!5897748))

(assert (=> d!1570596 d!1571760))

(assert (=> d!1570596 d!1571428))

(declare-fun d!1571762 () Bool)

(declare-fun lostCauseFct!272 (Regex!13249) Bool)

(assert (=> d!1571762 (= (lostCause!1085 (regex!8174 (h!62853 rulesArg!165))) (lostCauseFct!272 (regex!8174 (h!62853 rulesArg!165))))))

(declare-fun bs!1176049 () Bool)

(assert (= bs!1176049 d!1571762))

(declare-fun m!5898206 () Bool)

(assert (=> bs!1176049 m!5898206))

(assert (=> d!1570596 d!1571762))

(declare-fun d!1571764 () Bool)

(assert (=> d!1571764 (isPrefix!4894 Nil!56403 (++!12243 Nil!56403 lt!2004660))))

(declare-fun lt!2005796 () Unit!146398)

(declare-fun choose!35721 (List!56527 List!56527) Unit!146398)

(assert (=> d!1571764 (= lt!2005796 (choose!35721 Nil!56403 lt!2004660))))

(assert (=> d!1571764 (= (lemmaConcatTwoListThenFirstIsPrefix!3122 Nil!56403 lt!2004660) lt!2005796)))

(declare-fun bs!1176050 () Bool)

(assert (= bs!1176050 d!1571764))

(assert (=> bs!1176050 m!5894796))

(assert (=> bs!1176050 m!5894796))

(assert (=> bs!1176050 m!5894806))

(declare-fun m!5898208 () Bool)

(assert (=> bs!1176050 m!5898208))

(assert (=> d!1570596 d!1571764))

(declare-fun b!4893097 () Bool)

(declare-fun res!2089803 () Bool)

(declare-fun e!3058928 () Bool)

(assert (=> b!4893097 (=> (not res!2089803) (not e!3058928))))

(assert (=> b!4893097 (= res!2089803 (= (head!10455 Nil!56403) (head!10455 (++!12243 Nil!56403 lt!2004660))))))

(declare-fun d!1571766 () Bool)

(declare-fun e!3058929 () Bool)

(assert (=> d!1571766 e!3058929))

(declare-fun res!2089802 () Bool)

(assert (=> d!1571766 (=> res!2089802 e!3058929)))

(declare-fun lt!2005797 () Bool)

(assert (=> d!1571766 (= res!2089802 (not lt!2005797))))

(declare-fun e!3058930 () Bool)

(assert (=> d!1571766 (= lt!2005797 e!3058930)))

(declare-fun res!2089804 () Bool)

(assert (=> d!1571766 (=> res!2089804 e!3058930)))

(assert (=> d!1571766 (= res!2089804 ((_ is Nil!56403) Nil!56403))))

(assert (=> d!1571766 (= (isPrefix!4894 Nil!56403 (++!12243 Nil!56403 lt!2004660)) lt!2005797)))

(declare-fun b!4893096 () Bool)

(assert (=> b!4893096 (= e!3058930 e!3058928)))

(declare-fun res!2089801 () Bool)

(assert (=> b!4893096 (=> (not res!2089801) (not e!3058928))))

(assert (=> b!4893096 (= res!2089801 (not ((_ is Nil!56403) (++!12243 Nil!56403 lt!2004660))))))

(declare-fun b!4893098 () Bool)

(assert (=> b!4893098 (= e!3058928 (isPrefix!4894 (tail!9601 Nil!56403) (tail!9601 (++!12243 Nil!56403 lt!2004660))))))

(declare-fun b!4893099 () Bool)

(assert (=> b!4893099 (= e!3058929 (>= (size!37138 (++!12243 Nil!56403 lt!2004660)) (size!37138 Nil!56403)))))

(assert (= (and d!1571766 (not res!2089804)) b!4893096))

(assert (= (and b!4893096 res!2089801) b!4893097))

(assert (= (and b!4893097 res!2089803) b!4893098))

(assert (= (and d!1571766 (not res!2089802)) b!4893099))

(declare-fun m!5898210 () Bool)

(assert (=> b!4893097 m!5898210))

(assert (=> b!4893097 m!5894796))

(declare-fun m!5898212 () Bool)

(assert (=> b!4893097 m!5898212))

(declare-fun m!5898214 () Bool)

(assert (=> b!4893098 m!5898214))

(assert (=> b!4893098 m!5894796))

(declare-fun m!5898216 () Bool)

(assert (=> b!4893098 m!5898216))

(assert (=> b!4893098 m!5898214))

(assert (=> b!4893098 m!5898216))

(declare-fun m!5898218 () Bool)

(assert (=> b!4893098 m!5898218))

(assert (=> b!4893099 m!5894796))

(declare-fun m!5898220 () Bool)

(assert (=> b!4893099 m!5898220))

(assert (=> b!4893099 m!5894316))

(assert (=> d!1570596 d!1571766))

(assert (=> d!1570596 d!1571580))

(declare-fun b!4893102 () Bool)

(declare-fun res!2089806 () Bool)

(declare-fun e!3058932 () Bool)

(assert (=> b!4893102 (=> (not res!2089806) (not e!3058932))))

(declare-fun lt!2005798 () List!56527)

(assert (=> b!4893102 (= res!2089806 (= (size!37138 lt!2005798) (+ (size!37138 Nil!56403) (size!37138 lt!2004660))))))

(declare-fun b!4893103 () Bool)

(assert (=> b!4893103 (= e!3058932 (or (not (= lt!2004660 Nil!56403)) (= lt!2005798 Nil!56403)))))

(declare-fun b!4893100 () Bool)

(declare-fun e!3058931 () List!56527)

(assert (=> b!4893100 (= e!3058931 lt!2004660)))

(declare-fun d!1571768 () Bool)

(assert (=> d!1571768 e!3058932))

(declare-fun res!2089805 () Bool)

(assert (=> d!1571768 (=> (not res!2089805) (not e!3058932))))

(assert (=> d!1571768 (= res!2089805 (= (content!10015 lt!2005798) ((_ map or) (content!10015 Nil!56403) (content!10015 lt!2004660))))))

(assert (=> d!1571768 (= lt!2005798 e!3058931)))

(declare-fun c!831674 () Bool)

(assert (=> d!1571768 (= c!831674 ((_ is Nil!56403) Nil!56403))))

(assert (=> d!1571768 (= (++!12243 Nil!56403 lt!2004660) lt!2005798)))

(declare-fun b!4893101 () Bool)

(assert (=> b!4893101 (= e!3058931 (Cons!56403 (h!62851 Nil!56403) (++!12243 (t!365273 Nil!56403) lt!2004660)))))

(assert (= (and d!1571768 c!831674) b!4893100))

(assert (= (and d!1571768 (not c!831674)) b!4893101))

(assert (= (and d!1571768 res!2089805) b!4893102))

(assert (= (and b!4893102 res!2089806) b!4893103))

(declare-fun m!5898222 () Bool)

(assert (=> b!4893102 m!5898222))

(assert (=> b!4893102 m!5894316))

(assert (=> b!4893102 m!5894318))

(declare-fun m!5898224 () Bool)

(assert (=> d!1571768 m!5898224))

(assert (=> d!1571768 m!5897720))

(declare-fun m!5898226 () Bool)

(assert (=> d!1571768 m!5898226))

(declare-fun m!5898228 () Bool)

(assert (=> b!4893101 m!5898228))

(assert (=> d!1570596 d!1571768))

(declare-fun d!1571770 () Bool)

(assert (=> d!1571770 (= lt!2004660 Nil!56403)))

(declare-fun lt!2005801 () Unit!146398)

(declare-fun choose!35722 (List!56527 List!56527 List!56527) Unit!146398)

(assert (=> d!1571770 (= lt!2005801 (choose!35722 lt!2004660 Nil!56403 lt!2004660))))

(assert (=> d!1571770 (isPrefix!4894 lt!2004660 lt!2004660)))

(assert (=> d!1571770 (= (lemmaIsPrefixSameLengthThenSameList!1057 lt!2004660 Nil!56403 lt!2004660) lt!2005801)))

(declare-fun bs!1176051 () Bool)

(assert (= bs!1176051 d!1571770))

(declare-fun m!5898230 () Bool)

(assert (=> bs!1176051 m!5898230))

(assert (=> bs!1176051 m!5894814))

(assert (=> bm!339230 d!1571770))

(declare-fun b!4893104 () Bool)

(declare-fun e!3058938 () Bool)

(assert (=> b!4893104 (= e!3058938 (= (head!10455 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2005117))))) (c!831176 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2005117)))))))))

(declare-fun b!4893105 () Bool)

(declare-fun e!3058939 () Bool)

(declare-fun lt!2005802 () Bool)

(assert (=> b!4893105 (= e!3058939 (not lt!2005802))))

(declare-fun b!4893106 () Bool)

(declare-fun res!2089814 () Bool)

(declare-fun e!3058933 () Bool)

(assert (=> b!4893106 (=> res!2089814 e!3058933)))

(assert (=> b!4893106 (= res!2089814 (not (isEmpty!30257 (tail!9601 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2005117))))))))))

(declare-fun b!4893107 () Bool)

(declare-fun e!3058934 () Bool)

(assert (=> b!4893107 (= e!3058934 e!3058933)))

(declare-fun res!2089811 () Bool)

(assert (=> b!4893107 (=> res!2089811 e!3058933)))

(declare-fun call!339397 () Bool)

(assert (=> b!4893107 (= res!2089811 call!339397)))

(declare-fun b!4893108 () Bool)

(declare-fun res!2089807 () Bool)

(declare-fun e!3058937 () Bool)

(assert (=> b!4893108 (=> res!2089807 e!3058937)))

(assert (=> b!4893108 (= res!2089807 (not ((_ is ElementMatch!13249) (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2005117)))))))))

(assert (=> b!4893108 (= e!3058939 e!3058937)))

(declare-fun b!4893109 () Bool)

(assert (=> b!4893109 (= e!3058937 e!3058934)))

(declare-fun res!2089813 () Bool)

(assert (=> b!4893109 (=> (not res!2089813) (not e!3058934))))

(assert (=> b!4893109 (= res!2089813 (not lt!2005802))))

(declare-fun b!4893110 () Bool)

(declare-fun e!3058936 () Bool)

(assert (=> b!4893110 (= e!3058936 (matchR!6530 (derivativeStep!3876 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2005117)))) (head!10455 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2005117)))))) (tail!9601 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2005117)))))))))

(declare-fun b!4893112 () Bool)

(declare-fun e!3058935 () Bool)

(assert (=> b!4893112 (= e!3058935 e!3058939)))

(declare-fun c!831675 () Bool)

(assert (=> b!4893112 (= c!831675 ((_ is EmptyLang!13249) (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2005117))))))))

(declare-fun b!4893113 () Bool)

(declare-fun res!2089810 () Bool)

(assert (=> b!4893113 (=> res!2089810 e!3058937)))

(assert (=> b!4893113 (= res!2089810 e!3058938)))

(declare-fun res!2089809 () Bool)

(assert (=> b!4893113 (=> (not res!2089809) (not e!3058938))))

(assert (=> b!4893113 (= res!2089809 lt!2005802)))

(declare-fun b!4893114 () Bool)

(assert (=> b!4893114 (= e!3058935 (= lt!2005802 call!339397))))

(declare-fun b!4893115 () Bool)

(assert (=> b!4893115 (= e!3058933 (not (= (head!10455 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2005117))))) (c!831176 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2005117))))))))))

(declare-fun b!4893116 () Bool)

(declare-fun res!2089812 () Bool)

(assert (=> b!4893116 (=> (not res!2089812) (not e!3058938))))

(assert (=> b!4893116 (= res!2089812 (not call!339397))))

(declare-fun d!1571772 () Bool)

(assert (=> d!1571772 e!3058935))

(declare-fun c!831677 () Bool)

(assert (=> d!1571772 (= c!831677 ((_ is EmptyExpr!13249) (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2005117))))))))

(assert (=> d!1571772 (= lt!2005802 e!3058936)))

(declare-fun c!831676 () Bool)

(assert (=> d!1571772 (= c!831676 (isEmpty!30257 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2005117))))))))

(assert (=> d!1571772 (validRegex!5882 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2005117)))))))

(assert (=> d!1571772 (= (matchR!6530 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2005117)))) (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2005117))))) lt!2005802)))

(declare-fun b!4893111 () Bool)

(assert (=> b!4893111 (= e!3058936 (nullable!4555 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2005117))))))))

(declare-fun b!4893117 () Bool)

(declare-fun res!2089808 () Bool)

(assert (=> b!4893117 (=> (not res!2089808) (not e!3058938))))

(assert (=> b!4893117 (= res!2089808 (isEmpty!30257 (tail!9601 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2005117)))))))))

(declare-fun bm!339392 () Bool)

(assert (=> bm!339392 (= call!339397 (isEmpty!30257 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2005117))))))))

(assert (= (and d!1571772 c!831676) b!4893111))

(assert (= (and d!1571772 (not c!831676)) b!4893110))

(assert (= (and d!1571772 c!831677) b!4893114))

(assert (= (and d!1571772 (not c!831677)) b!4893112))

(assert (= (and b!4893112 c!831675) b!4893105))

(assert (= (and b!4893112 (not c!831675)) b!4893108))

(assert (= (and b!4893108 (not res!2089807)) b!4893113))

(assert (= (and b!4893113 res!2089809) b!4893116))

(assert (= (and b!4893116 res!2089812) b!4893117))

(assert (= (and b!4893117 res!2089808) b!4893104))

(assert (= (and b!4893113 (not res!2089810)) b!4893109))

(assert (= (and b!4893109 res!2089813) b!4893107))

(assert (= (and b!4893107 (not res!2089811)) b!4893106))

(assert (= (and b!4893106 (not res!2089814)) b!4893115))

(assert (= (or b!4893114 b!4893107 b!4893116) bm!339392))

(assert (=> b!4893104 m!5895458))

(declare-fun m!5898232 () Bool)

(assert (=> b!4893104 m!5898232))

(assert (=> b!4893115 m!5895458))

(assert (=> b!4893115 m!5898232))

(assert (=> b!4893110 m!5895458))

(assert (=> b!4893110 m!5898232))

(assert (=> b!4893110 m!5898232))

(declare-fun m!5898234 () Bool)

(assert (=> b!4893110 m!5898234))

(assert (=> b!4893110 m!5895458))

(declare-fun m!5898236 () Bool)

(assert (=> b!4893110 m!5898236))

(assert (=> b!4893110 m!5898234))

(assert (=> b!4893110 m!5898236))

(declare-fun m!5898238 () Bool)

(assert (=> b!4893110 m!5898238))

(assert (=> b!4893117 m!5895458))

(assert (=> b!4893117 m!5898236))

(assert (=> b!4893117 m!5898236))

(declare-fun m!5898240 () Bool)

(assert (=> b!4893117 m!5898240))

(assert (=> b!4893106 m!5895458))

(assert (=> b!4893106 m!5898236))

(assert (=> b!4893106 m!5898236))

(assert (=> b!4893106 m!5898240))

(assert (=> bm!339392 m!5895458))

(declare-fun m!5898242 () Bool)

(assert (=> bm!339392 m!5898242))

(assert (=> d!1571772 m!5895458))

(assert (=> d!1571772 m!5898242))

(declare-fun m!5898244 () Bool)

(assert (=> d!1571772 m!5898244))

(declare-fun m!5898246 () Bool)

(assert (=> b!4893111 m!5898246))

(assert (=> b!4891650 d!1571772))

(assert (=> b!4891650 d!1571396))

(assert (=> b!4891650 d!1571392))

(assert (=> b!4891650 d!1571394))

(declare-fun d!1571774 () Bool)

(declare-fun choose!35723 (Int) Bool)

(assert (=> d!1571774 (= (Forall2!1267 lambda!244000) (choose!35723 lambda!244000))))

(declare-fun bs!1176052 () Bool)

(assert (= bs!1176052 d!1571774))

(declare-fun m!5898248 () Bool)

(assert (=> bs!1176052 m!5898248))

(assert (=> d!1570800 d!1571774))

(declare-fun d!1571776 () Bool)

(declare-fun lt!2005803 () Bool)

(assert (=> d!1571776 (= lt!2005803 (isEmpty!30257 (list!17724 (left!40975 (c!831175 input!1236)))))))

(assert (=> d!1571776 (= lt!2005803 (= (size!37142 (left!40975 (c!831175 input!1236))) 0))))

(assert (=> d!1571776 (= (isEmpty!30263 (left!40975 (c!831175 input!1236))) lt!2005803)))

(declare-fun bs!1176053 () Bool)

(assert (= bs!1176053 d!1571776))

(assert (=> bs!1176053 m!5894538))

(assert (=> bs!1176053 m!5894538))

(declare-fun m!5898250 () Bool)

(assert (=> bs!1176053 m!5898250))

(assert (=> bs!1176053 m!5895496))

(assert (=> b!4891498 d!1571776))

(assert (=> b!4891343 d!1571482))

(assert (=> b!4891343 d!1571446))

(declare-fun b!4893119 () Bool)

(declare-fun e!3058940 () List!56527)

(declare-fun e!3058941 () List!56527)

(assert (=> b!4893119 (= e!3058940 e!3058941)))

(declare-fun c!831679 () Bool)

(assert (=> b!4893119 (= c!831679 ((_ is Leaf!24546) (c!831175 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))))))

(declare-fun d!1571778 () Bool)

(declare-fun c!831678 () Bool)

(assert (=> d!1571778 (= c!831678 ((_ is Empty!14742) (c!831175 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))))))

(assert (=> d!1571778 (= (list!17724 (c!831175 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))) e!3058940)))

(declare-fun b!4893120 () Bool)

(assert (=> b!4893120 (= e!3058941 (list!17726 (xs!18058 (c!831175 (charsOf!5374 (_1!33526 (get!19478 lt!2004672)))))))))

(declare-fun b!4893118 () Bool)

(assert (=> b!4893118 (= e!3058940 Nil!56403)))

(declare-fun b!4893121 () Bool)

(assert (=> b!4893121 (= e!3058941 (++!12243 (list!17724 (left!40975 (c!831175 (charsOf!5374 (_1!33526 (get!19478 lt!2004672)))))) (list!17724 (right!41305 (c!831175 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))))))))

(assert (= (and d!1571778 c!831678) b!4893118))

(assert (= (and d!1571778 (not c!831678)) b!4893119))

(assert (= (and b!4893119 c!831679) b!4893120))

(assert (= (and b!4893119 (not c!831679)) b!4893121))

(declare-fun m!5898252 () Bool)

(assert (=> b!4893120 m!5898252))

(declare-fun m!5898254 () Bool)

(assert (=> b!4893121 m!5898254))

(declare-fun m!5898256 () Bool)

(assert (=> b!4893121 m!5898256))

(assert (=> b!4893121 m!5898254))

(assert (=> b!4893121 m!5898256))

(declare-fun m!5898258 () Bool)

(assert (=> b!4893121 m!5898258))

(assert (=> d!1570642 d!1571778))

(assert (=> b!4891120 d!1571404))

(declare-fun d!1571780 () Bool)

(declare-fun lt!2005804 () Int)

(assert (=> d!1571780 (>= lt!2005804 0)))

(declare-fun e!3058942 () Int)

(assert (=> d!1571780 (= lt!2005804 e!3058942)))

(declare-fun c!831680 () Bool)

(assert (=> d!1571780 (= c!831680 ((_ is Nil!56403) (originalCharacters!8487 (_1!33526 (get!19478 lt!2004762)))))))

(assert (=> d!1571780 (= (size!37138 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004762)))) lt!2005804)))

(declare-fun b!4893122 () Bool)

(assert (=> b!4893122 (= e!3058942 0)))

(declare-fun b!4893123 () Bool)

(assert (=> b!4893123 (= e!3058942 (+ 1 (size!37138 (t!365273 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004762)))))))))

(assert (= (and d!1571780 c!831680) b!4893122))

(assert (= (and d!1571780 (not c!831680)) b!4893123))

(declare-fun m!5898260 () Bool)

(assert (=> b!4893123 m!5898260))

(assert (=> b!4891120 d!1571780))

(declare-fun d!1571782 () Bool)

(declare-fun c!831683 () Bool)

(assert (=> d!1571782 (= c!831683 ((_ is Nil!56403) lt!2004978))))

(declare-fun e!3058945 () (InoxSet C!26696))

(assert (=> d!1571782 (= (content!10015 lt!2004978) e!3058945)))

(declare-fun b!4893128 () Bool)

(assert (=> b!4893128 (= e!3058945 ((as const (Array C!26696 Bool)) false))))

(declare-fun b!4893129 () Bool)

(assert (=> b!4893129 (= e!3058945 ((_ map or) (store ((as const (Array C!26696 Bool)) false) (h!62851 lt!2004978) true) (content!10015 (t!365273 lt!2004978))))))

(assert (= (and d!1571782 c!831683) b!4893128))

(assert (= (and d!1571782 (not c!831683)) b!4893129))

(declare-fun m!5898262 () Bool)

(assert (=> b!4893129 m!5898262))

(declare-fun m!5898264 () Bool)

(assert (=> b!4893129 m!5898264))

(assert (=> d!1570646 d!1571782))

(declare-fun d!1571784 () Bool)

(declare-fun c!831684 () Bool)

(assert (=> d!1571784 (= c!831684 ((_ is Nil!56403) (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))))))

(declare-fun e!3058946 () (InoxSet C!26696))

(assert (=> d!1571784 (= (content!10015 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))) e!3058946)))

(declare-fun b!4893130 () Bool)

(assert (=> b!4893130 (= e!3058946 ((as const (Array C!26696 Bool)) false))))

(declare-fun b!4893131 () Bool)

(assert (=> b!4893131 (= e!3058946 ((_ map or) (store ((as const (Array C!26696 Bool)) false) (h!62851 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))) true) (content!10015 (t!365273 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))))))))

(assert (= (and d!1571784 c!831684) b!4893130))

(assert (= (and d!1571784 (not c!831684)) b!4893131))

(declare-fun m!5898266 () Bool)

(assert (=> b!4893131 m!5898266))

(declare-fun m!5898268 () Bool)

(assert (=> b!4893131 m!5898268))

(assert (=> d!1570646 d!1571784))

(declare-fun d!1571786 () Bool)

(declare-fun c!831685 () Bool)

(assert (=> d!1571786 (= c!831685 ((_ is Nil!56403) (_2!33526 (get!19478 lt!2004672))))))

(declare-fun e!3058947 () (InoxSet C!26696))

(assert (=> d!1571786 (= (content!10015 (_2!33526 (get!19478 lt!2004672))) e!3058947)))

(declare-fun b!4893132 () Bool)

(assert (=> b!4893132 (= e!3058947 ((as const (Array C!26696 Bool)) false))))

(declare-fun b!4893133 () Bool)

(assert (=> b!4893133 (= e!3058947 ((_ map or) (store ((as const (Array C!26696 Bool)) false) (h!62851 (_2!33526 (get!19478 lt!2004672))) true) (content!10015 (t!365273 (_2!33526 (get!19478 lt!2004672))))))))

(assert (= (and d!1571786 c!831685) b!4893132))

(assert (= (and d!1571786 (not c!831685)) b!4893133))

(declare-fun m!5898270 () Bool)

(assert (=> b!4893133 m!5898270))

(declare-fun m!5898272 () Bool)

(assert (=> b!4893133 m!5898272))

(assert (=> d!1570646 d!1571786))

(assert (=> b!4891176 d!1571622))

(assert (=> b!4891176 d!1571624))

(declare-fun d!1571788 () Bool)

(assert (=> d!1571788 (= (isEmpty!30258 (maxPrefixOneRule!3529 thiss!14805 (h!62853 rulesArg!165) (list!17722 input!1236))) (not ((_ is Some!14025) (maxPrefixOneRule!3529 thiss!14805 (h!62853 rulesArg!165) (list!17722 input!1236)))))))

(assert (=> d!1570674 d!1571788))

(declare-fun d!1571790 () Bool)

(declare-fun lt!2005805 () Int)

(assert (=> d!1571790 (>= lt!2005805 0)))

(declare-fun e!3058948 () Int)

(assert (=> d!1571790 (= lt!2005805 e!3058948)))

(declare-fun c!831686 () Bool)

(assert (=> d!1571790 (= c!831686 ((_ is Nil!56403) (innerList!14830 (xs!18058 (c!831175 input!1236)))))))

(assert (=> d!1571790 (= (size!37138 (innerList!14830 (xs!18058 (c!831175 input!1236)))) lt!2005805)))

(declare-fun b!4893134 () Bool)

(assert (=> b!4893134 (= e!3058948 0)))

(declare-fun b!4893135 () Bool)

(assert (=> b!4893135 (= e!3058948 (+ 1 (size!37138 (t!365273 (innerList!14830 (xs!18058 (c!831175 input!1236)))))))))

(assert (= (and d!1571790 c!831686) b!4893134))

(assert (= (and d!1571790 (not c!831686)) b!4893135))

(declare-fun m!5898274 () Bool)

(assert (=> b!4893135 m!5898274))

(assert (=> d!1570580 d!1571790))

(declare-fun b!4893138 () Bool)

(declare-fun res!2089816 () Bool)

(declare-fun e!3058950 () Bool)

(assert (=> b!4893138 (=> (not res!2089816) (not e!3058950))))

(declare-fun lt!2005806 () List!56527)

(assert (=> b!4893138 (= res!2089816 (= (size!37138 lt!2005806) (+ (size!37138 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004982))))) (size!37138 (_2!33526 (get!19478 lt!2004982))))))))

(declare-fun b!4893139 () Bool)

(assert (=> b!4893139 (= e!3058950 (or (not (= (_2!33526 (get!19478 lt!2004982)) Nil!56403)) (= lt!2005806 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004982)))))))))

(declare-fun b!4893136 () Bool)

(declare-fun e!3058949 () List!56527)

(assert (=> b!4893136 (= e!3058949 (_2!33526 (get!19478 lt!2004982)))))

(declare-fun d!1571792 () Bool)

(assert (=> d!1571792 e!3058950))

(declare-fun res!2089815 () Bool)

(assert (=> d!1571792 (=> (not res!2089815) (not e!3058950))))

(assert (=> d!1571792 (= res!2089815 (= (content!10015 lt!2005806) ((_ map or) (content!10015 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004982))))) (content!10015 (_2!33526 (get!19478 lt!2004982))))))))

(assert (=> d!1571792 (= lt!2005806 e!3058949)))

(declare-fun c!831687 () Bool)

(assert (=> d!1571792 (= c!831687 ((_ is Nil!56403) (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004982))))))))

(assert (=> d!1571792 (= (++!12243 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004982)))) (_2!33526 (get!19478 lt!2004982))) lt!2005806)))

(declare-fun b!4893137 () Bool)

(assert (=> b!4893137 (= e!3058949 (Cons!56403 (h!62851 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004982))))) (++!12243 (t!365273 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004982))))) (_2!33526 (get!19478 lt!2004982)))))))

(assert (= (and d!1571792 c!831687) b!4893136))

(assert (= (and d!1571792 (not c!831687)) b!4893137))

(assert (= (and d!1571792 res!2089815) b!4893138))

(assert (= (and b!4893138 res!2089816) b!4893139))

(declare-fun m!5898276 () Bool)

(assert (=> b!4893138 m!5898276))

(assert (=> b!4893138 m!5894908))

(declare-fun m!5898278 () Bool)

(assert (=> b!4893138 m!5898278))

(assert (=> b!4893138 m!5894894))

(declare-fun m!5898280 () Bool)

(assert (=> d!1571792 m!5898280))

(assert (=> d!1571792 m!5894908))

(declare-fun m!5898282 () Bool)

(assert (=> d!1571792 m!5898282))

(declare-fun m!5898284 () Bool)

(assert (=> d!1571792 m!5898284))

(declare-fun m!5898286 () Bool)

(assert (=> b!4893137 m!5898286))

(assert (=> b!4891387 d!1571792))

(assert (=> b!4891387 d!1571476))

(assert (=> b!4891387 d!1571478))

(assert (=> b!4891387 d!1571480))

(declare-fun d!1571794 () Bool)

(declare-fun res!2089817 () Bool)

(declare-fun e!3058951 () Bool)

(assert (=> d!1571794 (=> (not res!2089817) (not e!3058951))))

(assert (=> d!1571794 (= res!2089817 (<= (size!37138 (list!17726 (xs!18058 (right!41305 (c!831175 input!1236))))) 512))))

(assert (=> d!1571794 (= (inv!72683 (right!41305 (c!831175 input!1236))) e!3058951)))

(declare-fun b!4893140 () Bool)

(declare-fun res!2089818 () Bool)

(assert (=> b!4893140 (=> (not res!2089818) (not e!3058951))))

(assert (=> b!4893140 (= res!2089818 (= (csize!29715 (right!41305 (c!831175 input!1236))) (size!37138 (list!17726 (xs!18058 (right!41305 (c!831175 input!1236)))))))))

(declare-fun b!4893141 () Bool)

(assert (=> b!4893141 (= e!3058951 (and (> (csize!29715 (right!41305 (c!831175 input!1236))) 0) (<= (csize!29715 (right!41305 (c!831175 input!1236))) 512)))))

(assert (= (and d!1571794 res!2089817) b!4893140))

(assert (= (and b!4893140 res!2089818) b!4893141))

(assert (=> d!1571794 m!5897376))

(assert (=> d!1571794 m!5897376))

(declare-fun m!5898288 () Bool)

(assert (=> d!1571794 m!5898288))

(assert (=> b!4893140 m!5897376))

(assert (=> b!4893140 m!5897376))

(assert (=> b!4893140 m!5898288))

(assert (=> b!4891508 d!1571794))

(declare-fun d!1571796 () Bool)

(assert (=> d!1571796 (= (isDefined!11037 lt!2004764) (not (isEmpty!30258 lt!2004764)))))

(declare-fun bs!1176054 () Bool)

(assert (= bs!1176054 d!1571796))

(assert (=> bs!1176054 m!5894662))

(assert (=> b!4891126 d!1571796))

(declare-fun d!1571798 () Bool)

(assert (=> d!1571798 (= (inv!72679 (dynLambda!22627 (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) (value!262109 (_1!33526 (get!19478 lt!2004672))))) (isBalanced!4012 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) (value!262109 (_1!33526 (get!19478 lt!2004672)))))))))

(declare-fun bs!1176055 () Bool)

(assert (= bs!1176055 d!1571798))

(declare-fun m!5898290 () Bool)

(assert (=> bs!1176055 m!5898290))

(assert (=> tb!258555 d!1571798))

(assert (=> b!4891124 d!1571404))

(declare-fun d!1571800 () Bool)

(assert (=> d!1571800 (= (apply!13540 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004762)))) (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004762))))) (dynLambda!22628 (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004762))))) (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004762))))))))

(declare-fun b_lambda!194355 () Bool)

(assert (=> (not b_lambda!194355) (not d!1571800)))

(declare-fun tb!258845 () Bool)

(declare-fun t!365594 () Bool)

(assert (=> (and b!4890709 (= (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004762)))))) t!365594) tb!258845))

(declare-fun result!322408 () Bool)

(assert (=> tb!258845 (= result!322408 (inv!21 (dynLambda!22628 (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004762))))) (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004762)))))))))

(declare-fun m!5898292 () Bool)

(assert (=> tb!258845 m!5898292))

(assert (=> d!1571800 t!365594))

(declare-fun b_and!344851 () Bool)

(assert (= b_and!344845 (and (=> t!365594 result!322408) b_and!344851)))

(declare-fun t!365596 () Bool)

(declare-fun tb!258847 () Bool)

(assert (=> (and b!4891010 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004762)))))) t!365596) tb!258847))

(declare-fun result!322410 () Bool)

(assert (= result!322410 result!322408))

(assert (=> d!1571800 t!365596))

(declare-fun b_and!344853 () Bool)

(assert (= b_and!344847 (and (=> t!365596 result!322410) b_and!344853)))

(declare-fun tb!258849 () Bool)

(declare-fun t!365598 () Bool)

(assert (=> (and b!4891741 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004762)))))) t!365598) tb!258849))

(declare-fun result!322412 () Bool)

(assert (= result!322412 result!322408))

(assert (=> d!1571800 t!365598))

(declare-fun b_and!344855 () Bool)

(assert (= b_and!344849 (and (=> t!365598 result!322412) b_and!344855)))

(assert (=> d!1571800 m!5894608))

(declare-fun m!5898294 () Bool)

(assert (=> d!1571800 m!5898294))

(assert (=> b!4891124 d!1571800))

(declare-fun d!1571802 () Bool)

(assert (=> d!1571802 (= (seqFromList!5936 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004762)))) (fromListB!2691 (originalCharacters!8487 (_1!33526 (get!19478 lt!2004762)))))))

(declare-fun bs!1176056 () Bool)

(assert (= bs!1176056 d!1571802))

(declare-fun m!5898296 () Bool)

(assert (=> bs!1176056 m!5898296))

(assert (=> b!4891124 d!1571802))

(declare-fun d!1571804 () Bool)

(assert (=> d!1571804 (= (isEmpty!30257 (_1!33528 lt!2004942)) ((_ is Nil!56403) (_1!33528 lt!2004942)))))

(assert (=> b!4891310 d!1571804))

(declare-fun b!4893144 () Bool)

(declare-fun res!2089820 () Bool)

(declare-fun e!3058954 () Bool)

(assert (=> b!4893144 (=> (not res!2089820) (not e!3058954))))

(declare-fun lt!2005807 () List!56527)

(assert (=> b!4893144 (= res!2089820 (= (size!37138 lt!2005807) (+ (size!37138 (t!365273 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672)))))) (size!37138 (_2!33526 (get!19478 lt!2004672))))))))

(declare-fun b!4893145 () Bool)

(assert (=> b!4893145 (= e!3058954 (or (not (= (_2!33526 (get!19478 lt!2004672)) Nil!56403)) (= lt!2005807 (t!365273 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))))))))

(declare-fun b!4893142 () Bool)

(declare-fun e!3058953 () List!56527)

(assert (=> b!4893142 (= e!3058953 (_2!33526 (get!19478 lt!2004672)))))

(declare-fun d!1571806 () Bool)

(assert (=> d!1571806 e!3058954))

(declare-fun res!2089819 () Bool)

(assert (=> d!1571806 (=> (not res!2089819) (not e!3058954))))

(assert (=> d!1571806 (= res!2089819 (= (content!10015 lt!2005807) ((_ map or) (content!10015 (t!365273 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672)))))) (content!10015 (_2!33526 (get!19478 lt!2004672))))))))

(assert (=> d!1571806 (= lt!2005807 e!3058953)))

(declare-fun c!831688 () Bool)

(assert (=> d!1571806 (= c!831688 ((_ is Nil!56403) (t!365273 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672)))))))))

(assert (=> d!1571806 (= (++!12243 (t!365273 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672))))) (_2!33526 (get!19478 lt!2004672))) lt!2005807)))

(declare-fun b!4893143 () Bool)

(assert (=> b!4893143 (= e!3058953 (Cons!56403 (h!62851 (t!365273 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672)))))) (++!12243 (t!365273 (t!365273 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004672)))))) (_2!33526 (get!19478 lt!2004672)))))))

(assert (= (and d!1571806 c!831688) b!4893142))

(assert (= (and d!1571806 (not c!831688)) b!4893143))

(assert (= (and d!1571806 res!2089819) b!4893144))

(assert (= (and b!4893144 res!2089820) b!4893145))

(declare-fun m!5898298 () Bool)

(assert (=> b!4893144 m!5898298))

(assert (=> b!4893144 m!5897310))

(assert (=> b!4893144 m!5894380))

(declare-fun m!5898300 () Bool)

(assert (=> d!1571806 m!5898300))

(assert (=> d!1571806 m!5898268))

(assert (=> d!1571806 m!5894882))

(declare-fun m!5898302 () Bool)

(assert (=> b!4893143 m!5898302))

(assert (=> b!4891376 d!1571806))

(declare-fun d!1571808 () Bool)

(declare-fun e!3058955 () Bool)

(assert (=> d!1571808 e!3058955))

(declare-fun res!2089821 () Bool)

(assert (=> d!1571808 (=> res!2089821 e!3058955)))

(assert (=> d!1571808 (= res!2089821 (isEmpty!30257 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) (list!17722 input!1236) (list!17722 input!1236) (size!37138 (list!17722 input!1236))))))))

(declare-fun lt!2005808 () Unit!146398)

(assert (=> d!1571808 (= lt!2005808 (choose!35705 (regex!8174 (h!62853 rulesArg!165)) (list!17722 input!1236)))))

(assert (=> d!1571808 (validRegex!5882 (regex!8174 (h!62853 rulesArg!165)))))

(assert (=> d!1571808 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1715 (regex!8174 (h!62853 rulesArg!165)) (list!17722 input!1236)) lt!2005808)))

(declare-fun b!4893146 () Bool)

(assert (=> b!4893146 (= e!3058955 (matchR!6530 (regex!8174 (h!62853 rulesArg!165)) (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) (list!17722 input!1236) (list!17722 input!1236) (size!37138 (list!17722 input!1236))))))))

(assert (= (and d!1571808 (not res!2089821)) b!4893146))

(assert (=> d!1571808 m!5894316))

(assert (=> d!1571808 m!5894912))

(assert (=> d!1571808 m!5894176))

(declare-fun m!5898304 () Bool)

(assert (=> d!1571808 m!5898304))

(assert (=> d!1571808 m!5894176))

(assert (=> d!1571808 m!5894666))

(assert (=> d!1571808 m!5894684))

(assert (=> d!1571808 m!5894316))

(assert (=> d!1571808 m!5894176))

(assert (=> d!1571808 m!5894176))

(assert (=> d!1571808 m!5894666))

(assert (=> d!1571808 m!5894896))

(assert (=> b!4893146 m!5894316))

(assert (=> b!4893146 m!5894176))

(assert (=> b!4893146 m!5894666))

(assert (=> b!4893146 m!5894316))

(assert (=> b!4893146 m!5894176))

(assert (=> b!4893146 m!5894176))

(assert (=> b!4893146 m!5894666))

(assert (=> b!4893146 m!5894896))

(assert (=> b!4893146 m!5894898))

(assert (=> b!4891383 d!1571808))

(assert (=> b!4891383 d!1571340))

(declare-fun d!1571810 () Bool)

(assert (=> d!1571810 (= (isEmpty!30257 (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) (list!17722 input!1236) (list!17722 input!1236) (size!37138 (list!17722 input!1236))))) ((_ is Nil!56403) (_1!33528 (findLongestMatchInner!1752 (regex!8174 (h!62853 rulesArg!165)) Nil!56403 (size!37138 Nil!56403) (list!17722 input!1236) (list!17722 input!1236) (size!37138 (list!17722 input!1236))))))))

(assert (=> b!4891383 d!1571810))

(declare-fun d!1571812 () Bool)

(assert (=> d!1571812 (= (seqFromList!5936 (_1!33528 lt!2004979)) (fromListB!2691 (_1!33528 lt!2004979)))))

(declare-fun bs!1176057 () Bool)

(assert (= bs!1176057 d!1571812))

(declare-fun m!5898306 () Bool)

(assert (=> bs!1176057 m!5898306))

(assert (=> b!4891383 d!1571812))

(assert (=> b!4891383 d!1571338))

(declare-fun d!1571814 () Bool)

(assert (=> d!1571814 (= (apply!13540 (transformation!8174 (h!62853 rulesArg!165)) (seqFromList!5936 (_1!33528 lt!2004979))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (_1!33528 lt!2004979))))))

(declare-fun b_lambda!194357 () Bool)

(assert (=> (not b_lambda!194357) (not d!1571814)))

(declare-fun t!365600 () Bool)

(declare-fun tb!258851 () Bool)

(assert (=> (and b!4890709 (= (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) t!365600) tb!258851))

(declare-fun result!322414 () Bool)

(assert (=> tb!258851 (= result!322414 (inv!21 (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (_1!33528 lt!2004979)))))))

(declare-fun m!5898308 () Bool)

(assert (=> tb!258851 m!5898308))

(assert (=> d!1571814 t!365600))

(declare-fun b_and!344857 () Bool)

(assert (= b_and!344851 (and (=> t!365600 result!322414) b_and!344857)))

(declare-fun t!365602 () Bool)

(declare-fun tb!258853 () Bool)

(assert (=> (and b!4891010 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) t!365602) tb!258853))

(declare-fun result!322416 () Bool)

(assert (= result!322416 result!322414))

(assert (=> d!1571814 t!365602))

(declare-fun b_and!344859 () Bool)

(assert (= b_and!344853 (and (=> t!365602 result!322416) b_and!344859)))

(declare-fun t!365604 () Bool)

(declare-fun tb!258855 () Bool)

(assert (=> (and b!4891741 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) t!365604) tb!258855))

(declare-fun result!322418 () Bool)

(assert (= result!322418 result!322414))

(assert (=> d!1571814 t!365604))

(declare-fun b_and!344861 () Bool)

(assert (= b_and!344855 (and (=> t!365604 result!322418) b_and!344861)))

(assert (=> d!1571814 m!5894916))

(declare-fun m!5898310 () Bool)

(assert (=> d!1571814 m!5898310))

(assert (=> b!4891383 d!1571814))

(assert (=> b!4891383 d!1570634))

(declare-fun bs!1176058 () Bool)

(declare-fun d!1571816 () Bool)

(assert (= bs!1176058 (and d!1571816 b!4891527)))

(declare-fun lambda!244020 () Int)

(assert (=> bs!1176058 (= (and (= (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) (= (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))))) (= lambda!244020 lambda!243993))))

(declare-fun bs!1176059 () Bool)

(assert (= bs!1176059 (and d!1571816 d!1570578)))

(assert (=> bs!1176059 (= lambda!244020 lambda!243985)))

(declare-fun bs!1176060 () Bool)

(assert (= bs!1176060 (and d!1571816 d!1571600)))

(assert (=> bs!1176060 (= (and (= (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) (= (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))))) (= lambda!244020 lambda!244013))))

(declare-fun bs!1176061 () Bool)

(assert (= bs!1176061 (and d!1571816 d!1571628)))

(assert (=> bs!1176061 (= lambda!244020 lambda!244016)))

(declare-fun bs!1176062 () Bool)

(assert (= bs!1176062 (and d!1571816 b!4893028)))

(assert (=> bs!1176062 (= (and (= (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165)))))) (= (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))))) (= lambda!244020 lambda!244018))))

(declare-fun bs!1176063 () Bool)

(assert (= bs!1176063 (and d!1571816 b!4890845)))

(assert (=> bs!1176063 (= lambda!244020 lambda!243967)))

(declare-fun bs!1176064 () Bool)

(assert (= bs!1176064 (and d!1571816 d!1571678)))

(assert (=> bs!1176064 (= lambda!244020 lambda!244017)))

(declare-fun b!4893147 () Bool)

(declare-fun e!3058957 () Bool)

(assert (=> b!4893147 (= e!3058957 true)))

(assert (=> d!1571816 e!3058957))

(assert (= d!1571816 b!4893147))

(assert (=> b!4893147 (< (dynLambda!22617 order!25463 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) (dynLambda!22618 order!25465 lambda!244020))))

(assert (=> b!4893147 (< (dynLambda!22619 order!25467 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) (dynLambda!22618 order!25465 lambda!244020))))

(assert (=> d!1571816 (= (list!17722 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (_1!33528 lt!2004979))))) (list!17722 (seqFromList!5936 (_1!33528 lt!2004979))))))

(declare-fun lt!2005809 () Unit!146398)

(assert (=> d!1571816 (= lt!2005809 (ForallOf!1132 lambda!244020 (seqFromList!5936 (_1!33528 lt!2004979))))))

(assert (=> d!1571816 (= (lemmaSemiInverse!2563 (transformation!8174 (h!62853 rulesArg!165)) (seqFromList!5936 (_1!33528 lt!2004979))) lt!2005809)))

(declare-fun b_lambda!194359 () Bool)

(assert (=> (not b_lambda!194359) (not d!1571816)))

(declare-fun t!365606 () Bool)

(declare-fun tb!258857 () Bool)

(assert (=> (and b!4890709 (= (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) t!365606) tb!258857))

(declare-fun tp!1377024 () Bool)

(declare-fun b!4893148 () Bool)

(declare-fun e!3058958 () Bool)

(assert (=> b!4893148 (= e!3058958 (and (inv!72677 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (_1!33528 lt!2004979)))))) tp!1377024))))

(declare-fun result!322420 () Bool)

(assert (=> tb!258857 (= result!322420 (and (inv!72679 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (_1!33528 lt!2004979))))) e!3058958))))

(assert (= tb!258857 b!4893148))

(declare-fun m!5898312 () Bool)

(assert (=> b!4893148 m!5898312))

(declare-fun m!5898314 () Bool)

(assert (=> tb!258857 m!5898314))

(assert (=> d!1571816 t!365606))

(declare-fun b_and!344863 () Bool)

(assert (= b_and!344821 (and (=> t!365606 result!322420) b_and!344863)))

(declare-fun t!365608 () Bool)

(declare-fun tb!258859 () Bool)

(assert (=> (and b!4891010 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) t!365608) tb!258859))

(declare-fun result!322422 () Bool)

(assert (= result!322422 result!322420))

(assert (=> d!1571816 t!365608))

(declare-fun b_and!344865 () Bool)

(assert (= b_and!344823 (and (=> t!365608 result!322422) b_and!344865)))

(declare-fun t!365610 () Bool)

(declare-fun tb!258861 () Bool)

(assert (=> (and b!4891741 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) t!365610) tb!258861))

(declare-fun result!322424 () Bool)

(assert (= result!322424 result!322420))

(assert (=> d!1571816 t!365610))

(declare-fun b_and!344867 () Bool)

(assert (= b_and!344825 (and (=> t!365610 result!322424) b_and!344867)))

(declare-fun b_lambda!194361 () Bool)

(assert (=> (not b_lambda!194361) (not d!1571816)))

(assert (=> d!1571816 t!365600))

(declare-fun b_and!344869 () Bool)

(assert (= b_and!344857 (and (=> t!365600 result!322414) b_and!344869)))

(assert (=> d!1571816 t!365602))

(declare-fun b_and!344871 () Bool)

(assert (= b_and!344859 (and (=> t!365602 result!322416) b_and!344871)))

(assert (=> d!1571816 t!365604))

(declare-fun b_and!344873 () Bool)

(assert (= b_and!344861 (and (=> t!365604 result!322418) b_and!344873)))

(declare-fun m!5898316 () Bool)

(assert (=> d!1571816 m!5898316))

(declare-fun m!5898318 () Bool)

(assert (=> d!1571816 m!5898318))

(assert (=> d!1571816 m!5898310))

(assert (=> d!1571816 m!5898316))

(assert (=> d!1571816 m!5894916))

(declare-fun m!5898320 () Bool)

(assert (=> d!1571816 m!5898320))

(assert (=> d!1571816 m!5894916))

(declare-fun m!5898322 () Bool)

(assert (=> d!1571816 m!5898322))

(assert (=> d!1571816 m!5894916))

(assert (=> d!1571816 m!5898310))

(assert (=> b!4891383 d!1571816))

(declare-fun d!1571818 () Bool)

(declare-fun lt!2005810 () Int)

(assert (=> d!1571818 (= lt!2005810 (size!37138 (list!17722 (seqFromList!5936 (_1!33528 lt!2004979)))))))

(assert (=> d!1571818 (= lt!2005810 (size!37142 (c!831175 (seqFromList!5936 (_1!33528 lt!2004979)))))))

(assert (=> d!1571818 (= (size!37139 (seqFromList!5936 (_1!33528 lt!2004979))) lt!2005810)))

(declare-fun bs!1176065 () Bool)

(assert (= bs!1176065 d!1571818))

(assert (=> bs!1176065 m!5894916))

(assert (=> bs!1176065 m!5898320))

(assert (=> bs!1176065 m!5898320))

(declare-fun m!5898324 () Bool)

(assert (=> bs!1176065 m!5898324))

(declare-fun m!5898326 () Bool)

(assert (=> bs!1176065 m!5898326))

(assert (=> b!4891383 d!1571818))

(declare-fun b!4893149 () Bool)

(declare-fun e!3058964 () Bool)

(assert (=> b!4893149 (= e!3058964 (= (head!10455 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004764))))) (c!831176 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004764)))))))))

(declare-fun b!4893150 () Bool)

(declare-fun e!3058965 () Bool)

(declare-fun lt!2005811 () Bool)

(assert (=> b!4893150 (= e!3058965 (not lt!2005811))))

(declare-fun b!4893151 () Bool)

(declare-fun res!2089829 () Bool)

(declare-fun e!3058959 () Bool)

(assert (=> b!4893151 (=> res!2089829 e!3058959)))

(assert (=> b!4893151 (= res!2089829 (not (isEmpty!30257 (tail!9601 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004764))))))))))

(declare-fun b!4893152 () Bool)

(declare-fun e!3058960 () Bool)

(assert (=> b!4893152 (= e!3058960 e!3058959)))

(declare-fun res!2089826 () Bool)

(assert (=> b!4893152 (=> res!2089826 e!3058959)))

(declare-fun call!339398 () Bool)

(assert (=> b!4893152 (= res!2089826 call!339398)))

(declare-fun b!4893153 () Bool)

(declare-fun res!2089822 () Bool)

(declare-fun e!3058963 () Bool)

(assert (=> b!4893153 (=> res!2089822 e!3058963)))

(assert (=> b!4893153 (= res!2089822 (not ((_ is ElementMatch!13249) (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004764)))))))))

(assert (=> b!4893153 (= e!3058965 e!3058963)))

(declare-fun b!4893154 () Bool)

(assert (=> b!4893154 (= e!3058963 e!3058960)))

(declare-fun res!2089828 () Bool)

(assert (=> b!4893154 (=> (not res!2089828) (not e!3058960))))

(assert (=> b!4893154 (= res!2089828 (not lt!2005811))))

(declare-fun b!4893155 () Bool)

(declare-fun e!3058962 () Bool)

(assert (=> b!4893155 (= e!3058962 (matchR!6530 (derivativeStep!3876 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004764)))) (head!10455 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004764)))))) (tail!9601 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004764)))))))))

(declare-fun b!4893157 () Bool)

(declare-fun e!3058961 () Bool)

(assert (=> b!4893157 (= e!3058961 e!3058965)))

(declare-fun c!831689 () Bool)

(assert (=> b!4893157 (= c!831689 ((_ is EmptyLang!13249) (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004764))))))))

(declare-fun b!4893158 () Bool)

(declare-fun res!2089825 () Bool)

(assert (=> b!4893158 (=> res!2089825 e!3058963)))

(assert (=> b!4893158 (= res!2089825 e!3058964)))

(declare-fun res!2089824 () Bool)

(assert (=> b!4893158 (=> (not res!2089824) (not e!3058964))))

(assert (=> b!4893158 (= res!2089824 lt!2005811)))

(declare-fun b!4893159 () Bool)

(assert (=> b!4893159 (= e!3058961 (= lt!2005811 call!339398))))

(declare-fun b!4893160 () Bool)

(assert (=> b!4893160 (= e!3058959 (not (= (head!10455 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004764))))) (c!831176 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004764))))))))))

(declare-fun b!4893161 () Bool)

(declare-fun res!2089827 () Bool)

(assert (=> b!4893161 (=> (not res!2089827) (not e!3058964))))

(assert (=> b!4893161 (= res!2089827 (not call!339398))))

(declare-fun d!1571820 () Bool)

(assert (=> d!1571820 e!3058961))

(declare-fun c!831691 () Bool)

(assert (=> d!1571820 (= c!831691 ((_ is EmptyExpr!13249) (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004764))))))))

(assert (=> d!1571820 (= lt!2005811 e!3058962)))

(declare-fun c!831690 () Bool)

(assert (=> d!1571820 (= c!831690 (isEmpty!30257 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004764))))))))

(assert (=> d!1571820 (validRegex!5882 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004764)))))))

(assert (=> d!1571820 (= (matchR!6530 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004764)))) (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004764))))) lt!2005811)))

(declare-fun b!4893156 () Bool)

(assert (=> b!4893156 (= e!3058962 (nullable!4555 (regex!8174 (rule!11358 (_1!33526 (get!19478 lt!2004764))))))))

(declare-fun b!4893162 () Bool)

(declare-fun res!2089823 () Bool)

(assert (=> b!4893162 (=> (not res!2089823) (not e!3058964))))

(assert (=> b!4893162 (= res!2089823 (isEmpty!30257 (tail!9601 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004764)))))))))

(declare-fun bm!339393 () Bool)

(assert (=> bm!339393 (= call!339398 (isEmpty!30257 (list!17722 (charsOf!5374 (_1!33526 (get!19478 lt!2004764))))))))

(assert (= (and d!1571820 c!831690) b!4893156))

(assert (= (and d!1571820 (not c!831690)) b!4893155))

(assert (= (and d!1571820 c!831691) b!4893159))

(assert (= (and d!1571820 (not c!831691)) b!4893157))

(assert (= (and b!4893157 c!831689) b!4893150))

(assert (= (and b!4893157 (not c!831689)) b!4893153))

(assert (= (and b!4893153 (not res!2089822)) b!4893158))

(assert (= (and b!4893158 res!2089824) b!4893161))

(assert (= (and b!4893161 res!2089827) b!4893162))

(assert (= (and b!4893162 res!2089823) b!4893149))

(assert (= (and b!4893158 (not res!2089825)) b!4893154))

(assert (= (and b!4893154 res!2089828) b!4893152))

(assert (= (and b!4893152 (not res!2089826)) b!4893151))

(assert (= (and b!4893151 (not res!2089829)) b!4893160))

(assert (= (or b!4893159 b!4893152 b!4893161) bm!339393))

(assert (=> b!4893149 m!5894654))

(declare-fun m!5898328 () Bool)

(assert (=> b!4893149 m!5898328))

(assert (=> b!4893160 m!5894654))

(assert (=> b!4893160 m!5898328))

(assert (=> b!4893155 m!5894654))

(assert (=> b!4893155 m!5898328))

(assert (=> b!4893155 m!5898328))

(declare-fun m!5898330 () Bool)

(assert (=> b!4893155 m!5898330))

(assert (=> b!4893155 m!5894654))

(declare-fun m!5898332 () Bool)

(assert (=> b!4893155 m!5898332))

(assert (=> b!4893155 m!5898330))

(assert (=> b!4893155 m!5898332))

(declare-fun m!5898334 () Bool)

(assert (=> b!4893155 m!5898334))

(assert (=> b!4893162 m!5894654))

(assert (=> b!4893162 m!5898332))

(assert (=> b!4893162 m!5898332))

(declare-fun m!5898336 () Bool)

(assert (=> b!4893162 m!5898336))

(assert (=> b!4893151 m!5894654))

(assert (=> b!4893151 m!5898332))

(assert (=> b!4893151 m!5898332))

(assert (=> b!4893151 m!5898336))

(assert (=> bm!339393 m!5894654))

(declare-fun m!5898338 () Bool)

(assert (=> bm!339393 m!5898338))

(assert (=> d!1571820 m!5894654))

(assert (=> d!1571820 m!5898338))

(declare-fun m!5898340 () Bool)

(assert (=> d!1571820 m!5898340))

(declare-fun m!5898342 () Bool)

(assert (=> b!4893156 m!5898342))

(assert (=> b!4891129 d!1571820))

(assert (=> b!4891129 d!1571342))

(assert (=> b!4891129 d!1571612))

(assert (=> b!4891129 d!1571614))

(assert (=> b!4891424 d!1571458))

(assert (=> b!4891424 d!1571348))

(assert (=> b!4891424 d!1570502))

(assert (=> b!4891424 d!1571350))

(assert (=> b!4891424 d!1571460))

(declare-fun d!1571822 () Bool)

(assert (=> d!1571822 (= (isEmpty!30262 lt!2004579) (not ((_ is Some!14024) lt!2004579)))))

(assert (=> d!1570576 d!1571822))

(declare-fun d!1571824 () Bool)

(declare-fun c!831692 () Bool)

(assert (=> d!1571824 (= c!831692 ((_ is Node!14742) (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) (value!262109 (_1!33526 (get!19478 lt!2004672)))))))))

(declare-fun e!3058966 () Bool)

(assert (=> d!1571824 (= (inv!72677 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) (value!262109 (_1!33526 (get!19478 lt!2004672)))))) e!3058966)))

(declare-fun b!4893163 () Bool)

(assert (=> b!4893163 (= e!3058966 (inv!72682 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) (value!262109 (_1!33526 (get!19478 lt!2004672)))))))))

(declare-fun b!4893164 () Bool)

(declare-fun e!3058967 () Bool)

(assert (=> b!4893164 (= e!3058966 e!3058967)))

(declare-fun res!2089830 () Bool)

(assert (=> b!4893164 (= res!2089830 (not ((_ is Leaf!24546) (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) (value!262109 (_1!33526 (get!19478 lt!2004672))))))))))

(assert (=> b!4893164 (=> res!2089830 e!3058967)))

(declare-fun b!4893165 () Bool)

(assert (=> b!4893165 (= e!3058967 (inv!72683 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) (value!262109 (_1!33526 (get!19478 lt!2004672)))))))))

(assert (= (and d!1571824 c!831692) b!4893163))

(assert (= (and d!1571824 (not c!831692)) b!4893164))

(assert (= (and b!4893164 (not res!2089830)) b!4893165))

(declare-fun m!5898344 () Bool)

(assert (=> b!4893163 m!5898344))

(declare-fun m!5898346 () Bool)

(assert (=> b!4893165 m!5898346))

(assert (=> b!4891348 d!1571824))

(declare-fun e!3058968 () Bool)

(declare-fun tp!1377025 () Bool)

(declare-fun tp!1377027 () Bool)

(declare-fun b!4893166 () Bool)

(assert (=> b!4893166 (= e!3058968 (and (inv!72677 (left!40975 (left!40975 (left!40975 (c!831175 input!1236))))) tp!1377027 (inv!72677 (right!41305 (left!40975 (left!40975 (c!831175 input!1236))))) tp!1377025))))

(declare-fun b!4893168 () Bool)

(declare-fun e!3058969 () Bool)

(declare-fun tp!1377026 () Bool)

(assert (=> b!4893168 (= e!3058969 tp!1377026)))

(declare-fun b!4893167 () Bool)

(assert (=> b!4893167 (= e!3058968 (and (inv!72685 (xs!18058 (left!40975 (left!40975 (c!831175 input!1236))))) e!3058969))))

(assert (=> b!4891728 (= tp!1376801 (and (inv!72677 (left!40975 (left!40975 (c!831175 input!1236)))) e!3058968))))

(assert (= (and b!4891728 ((_ is Node!14742) (left!40975 (left!40975 (c!831175 input!1236))))) b!4893166))

(assert (= b!4893167 b!4893168))

(assert (= (and b!4891728 ((_ is Leaf!24546) (left!40975 (left!40975 (c!831175 input!1236))))) b!4893167))

(declare-fun m!5898348 () Bool)

(assert (=> b!4893166 m!5898348))

(declare-fun m!5898350 () Bool)

(assert (=> b!4893166 m!5898350))

(declare-fun m!5898352 () Bool)

(assert (=> b!4893167 m!5898352))

(assert (=> b!4891728 m!5895506))

(declare-fun b!4893169 () Bool)

(declare-fun e!3058970 () Bool)

(declare-fun tp!1377028 () Bool)

(declare-fun tp!1377030 () Bool)

(assert (=> b!4893169 (= e!3058970 (and (inv!72677 (left!40975 (right!41305 (left!40975 (c!831175 input!1236))))) tp!1377030 (inv!72677 (right!41305 (right!41305 (left!40975 (c!831175 input!1236))))) tp!1377028))))

(declare-fun b!4893171 () Bool)

(declare-fun e!3058971 () Bool)

(declare-fun tp!1377029 () Bool)

(assert (=> b!4893171 (= e!3058971 tp!1377029)))

(declare-fun b!4893170 () Bool)

(assert (=> b!4893170 (= e!3058970 (and (inv!72685 (xs!18058 (right!41305 (left!40975 (c!831175 input!1236))))) e!3058971))))

(assert (=> b!4891728 (= tp!1376799 (and (inv!72677 (right!41305 (left!40975 (c!831175 input!1236)))) e!3058970))))

(assert (= (and b!4891728 ((_ is Node!14742) (right!41305 (left!40975 (c!831175 input!1236))))) b!4893169))

(assert (= b!4893170 b!4893171))

(assert (= (and b!4891728 ((_ is Leaf!24546) (right!41305 (left!40975 (c!831175 input!1236))))) b!4893170))

(declare-fun m!5898354 () Bool)

(assert (=> b!4893169 m!5898354))

(declare-fun m!5898356 () Bool)

(assert (=> b!4893169 m!5898356))

(declare-fun m!5898358 () Bool)

(assert (=> b!4893170 m!5898358))

(assert (=> b!4891728 m!5895508))

(declare-fun b!4893174 () Bool)

(declare-fun e!3058972 () Bool)

(declare-fun tp!1377034 () Bool)

(assert (=> b!4893174 (= e!3058972 tp!1377034)))

(declare-fun b!4893175 () Bool)

(declare-fun tp!1377033 () Bool)

(declare-fun tp!1377031 () Bool)

(assert (=> b!4893175 (= e!3058972 (and tp!1377033 tp!1377031))))

(declare-fun b!4893173 () Bool)

(declare-fun tp!1377032 () Bool)

(declare-fun tp!1377035 () Bool)

(assert (=> b!4893173 (= e!3058972 (and tp!1377032 tp!1377035))))

(assert (=> b!4891711 (= tp!1376776 e!3058972)))

(declare-fun b!4893172 () Bool)

(assert (=> b!4893172 (= e!3058972 tp_is_empty!35779)))

(assert (= (and b!4891711 ((_ is ElementMatch!13249) (regOne!27011 (regOne!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893172))

(assert (= (and b!4891711 ((_ is Concat!21734) (regOne!27011 (regOne!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893173))

(assert (= (and b!4891711 ((_ is Star!13249) (regOne!27011 (regOne!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893174))

(assert (= (and b!4891711 ((_ is Union!13249) (regOne!27011 (regOne!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893175))

(declare-fun b!4893178 () Bool)

(declare-fun e!3058973 () Bool)

(declare-fun tp!1377039 () Bool)

(assert (=> b!4893178 (= e!3058973 tp!1377039)))

(declare-fun b!4893179 () Bool)

(declare-fun tp!1377038 () Bool)

(declare-fun tp!1377036 () Bool)

(assert (=> b!4893179 (= e!3058973 (and tp!1377038 tp!1377036))))

(declare-fun b!4893177 () Bool)

(declare-fun tp!1377037 () Bool)

(declare-fun tp!1377040 () Bool)

(assert (=> b!4893177 (= e!3058973 (and tp!1377037 tp!1377040))))

(assert (=> b!4891711 (= tp!1376774 e!3058973)))

(declare-fun b!4893176 () Bool)

(assert (=> b!4893176 (= e!3058973 tp_is_empty!35779)))

(assert (= (and b!4891711 ((_ is ElementMatch!13249) (regTwo!27011 (regOne!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893176))

(assert (= (and b!4891711 ((_ is Concat!21734) (regTwo!27011 (regOne!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893177))

(assert (= (and b!4891711 ((_ is Star!13249) (regTwo!27011 (regOne!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893178))

(assert (= (and b!4891711 ((_ is Union!13249) (regTwo!27011 (regOne!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893179))

(declare-fun b!4893182 () Bool)

(declare-fun e!3058974 () Bool)

(declare-fun tp!1377044 () Bool)

(assert (=> b!4893182 (= e!3058974 tp!1377044)))

(declare-fun b!4893183 () Bool)

(declare-fun tp!1377043 () Bool)

(declare-fun tp!1377041 () Bool)

(assert (=> b!4893183 (= e!3058974 (and tp!1377043 tp!1377041))))

(declare-fun b!4893181 () Bool)

(declare-fun tp!1377042 () Bool)

(declare-fun tp!1377045 () Bool)

(assert (=> b!4893181 (= e!3058974 (and tp!1377042 tp!1377045))))

(assert (=> b!4891710 (= tp!1376777 e!3058974)))

(declare-fun b!4893180 () Bool)

(assert (=> b!4893180 (= e!3058974 tp_is_empty!35779)))

(assert (= (and b!4891710 ((_ is ElementMatch!13249) (reg!13578 (regOne!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893180))

(assert (= (and b!4891710 ((_ is Concat!21734) (reg!13578 (regOne!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893181))

(assert (= (and b!4891710 ((_ is Star!13249) (reg!13578 (regOne!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893182))

(assert (= (and b!4891710 ((_ is Union!13249) (reg!13578 (regOne!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893183))

(declare-fun b!4893186 () Bool)

(declare-fun e!3058975 () Bool)

(declare-fun tp!1377049 () Bool)

(assert (=> b!4893186 (= e!3058975 tp!1377049)))

(declare-fun b!4893187 () Bool)

(declare-fun tp!1377048 () Bool)

(declare-fun tp!1377046 () Bool)

(assert (=> b!4893187 (= e!3058975 (and tp!1377048 tp!1377046))))

(declare-fun b!4893185 () Bool)

(declare-fun tp!1377047 () Bool)

(declare-fun tp!1377050 () Bool)

(assert (=> b!4893185 (= e!3058975 (and tp!1377047 tp!1377050))))

(assert (=> b!4891719 (= tp!1376786 e!3058975)))

(declare-fun b!4893184 () Bool)

(assert (=> b!4893184 (= e!3058975 tp_is_empty!35779)))

(assert (= (and b!4891719 ((_ is ElementMatch!13249) (regOne!27011 (reg!13578 (regex!8174 (h!62853 rulesArg!165)))))) b!4893184))

(assert (= (and b!4891719 ((_ is Concat!21734) (regOne!27011 (reg!13578 (regex!8174 (h!62853 rulesArg!165)))))) b!4893185))

(assert (= (and b!4891719 ((_ is Star!13249) (regOne!27011 (reg!13578 (regex!8174 (h!62853 rulesArg!165)))))) b!4893186))

(assert (= (and b!4891719 ((_ is Union!13249) (regOne!27011 (reg!13578 (regex!8174 (h!62853 rulesArg!165)))))) b!4893187))

(declare-fun b!4893190 () Bool)

(declare-fun e!3058976 () Bool)

(declare-fun tp!1377054 () Bool)

(assert (=> b!4893190 (= e!3058976 tp!1377054)))

(declare-fun b!4893191 () Bool)

(declare-fun tp!1377053 () Bool)

(declare-fun tp!1377051 () Bool)

(assert (=> b!4893191 (= e!3058976 (and tp!1377053 tp!1377051))))

(declare-fun b!4893189 () Bool)

(declare-fun tp!1377052 () Bool)

(declare-fun tp!1377055 () Bool)

(assert (=> b!4893189 (= e!3058976 (and tp!1377052 tp!1377055))))

(assert (=> b!4891719 (= tp!1376784 e!3058976)))

(declare-fun b!4893188 () Bool)

(assert (=> b!4893188 (= e!3058976 tp_is_empty!35779)))

(assert (= (and b!4891719 ((_ is ElementMatch!13249) (regTwo!27011 (reg!13578 (regex!8174 (h!62853 rulesArg!165)))))) b!4893188))

(assert (= (and b!4891719 ((_ is Concat!21734) (regTwo!27011 (reg!13578 (regex!8174 (h!62853 rulesArg!165)))))) b!4893189))

(assert (= (and b!4891719 ((_ is Star!13249) (regTwo!27011 (reg!13578 (regex!8174 (h!62853 rulesArg!165)))))) b!4893190))

(assert (= (and b!4891719 ((_ is Union!13249) (regTwo!27011 (reg!13578 (regex!8174 (h!62853 rulesArg!165)))))) b!4893191))

(declare-fun b!4893192 () Bool)

(declare-fun e!3058977 () Bool)

(declare-fun tp!1377056 () Bool)

(assert (=> b!4893192 (= e!3058977 (and tp_is_empty!35779 tp!1377056))))

(assert (=> b!4891738 (= tp!1376807 e!3058977)))

(assert (= (and b!4891738 ((_ is Cons!56403) (t!365273 (innerList!14830 (xs!18058 (c!831175 input!1236)))))) b!4893192))

(declare-fun b!4893195 () Bool)

(declare-fun e!3058978 () Bool)

(declare-fun tp!1377060 () Bool)

(assert (=> b!4893195 (= e!3058978 tp!1377060)))

(declare-fun b!4893196 () Bool)

(declare-fun tp!1377059 () Bool)

(declare-fun tp!1377057 () Bool)

(assert (=> b!4893196 (= e!3058978 (and tp!1377059 tp!1377057))))

(declare-fun b!4893194 () Bool)

(declare-fun tp!1377058 () Bool)

(declare-fun tp!1377061 () Bool)

(assert (=> b!4893194 (= e!3058978 (and tp!1377058 tp!1377061))))

(assert (=> b!4891718 (= tp!1376787 e!3058978)))

(declare-fun b!4893193 () Bool)

(assert (=> b!4893193 (= e!3058978 tp_is_empty!35779)))

(assert (= (and b!4891718 ((_ is ElementMatch!13249) (reg!13578 (reg!13578 (regex!8174 (h!62853 rulesArg!165)))))) b!4893193))

(assert (= (and b!4891718 ((_ is Concat!21734) (reg!13578 (reg!13578 (regex!8174 (h!62853 rulesArg!165)))))) b!4893194))

(assert (= (and b!4891718 ((_ is Star!13249) (reg!13578 (reg!13578 (regex!8174 (h!62853 rulesArg!165)))))) b!4893195))

(assert (= (and b!4891718 ((_ is Union!13249) (reg!13578 (reg!13578 (regex!8174 (h!62853 rulesArg!165)))))) b!4893196))

(declare-fun b!4893199 () Bool)

(declare-fun e!3058979 () Bool)

(declare-fun tp!1377065 () Bool)

(assert (=> b!4893199 (= e!3058979 tp!1377065)))

(declare-fun b!4893200 () Bool)

(declare-fun tp!1377064 () Bool)

(declare-fun tp!1377062 () Bool)

(assert (=> b!4893200 (= e!3058979 (and tp!1377064 tp!1377062))))

(declare-fun b!4893198 () Bool)

(declare-fun tp!1377063 () Bool)

(declare-fun tp!1377066 () Bool)

(assert (=> b!4893198 (= e!3058979 (and tp!1377063 tp!1377066))))

(assert (=> b!4891727 (= tp!1376796 e!3058979)))

(declare-fun b!4893197 () Bool)

(assert (=> b!4893197 (= e!3058979 tp_is_empty!35779)))

(assert (= (and b!4891727 ((_ is ElementMatch!13249) (regOne!27011 (regTwo!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893197))

(assert (= (and b!4891727 ((_ is Concat!21734) (regOne!27011 (regTwo!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893198))

(assert (= (and b!4891727 ((_ is Star!13249) (regOne!27011 (regTwo!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893199))

(assert (= (and b!4891727 ((_ is Union!13249) (regOne!27011 (regTwo!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893200))

(declare-fun b!4893203 () Bool)

(declare-fun e!3058980 () Bool)

(declare-fun tp!1377070 () Bool)

(assert (=> b!4893203 (= e!3058980 tp!1377070)))

(declare-fun b!4893204 () Bool)

(declare-fun tp!1377069 () Bool)

(declare-fun tp!1377067 () Bool)

(assert (=> b!4893204 (= e!3058980 (and tp!1377069 tp!1377067))))

(declare-fun b!4893202 () Bool)

(declare-fun tp!1377068 () Bool)

(declare-fun tp!1377071 () Bool)

(assert (=> b!4893202 (= e!3058980 (and tp!1377068 tp!1377071))))

(assert (=> b!4891727 (= tp!1376794 e!3058980)))

(declare-fun b!4893201 () Bool)

(assert (=> b!4893201 (= e!3058980 tp_is_empty!35779)))

(assert (= (and b!4891727 ((_ is ElementMatch!13249) (regTwo!27011 (regTwo!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893201))

(assert (= (and b!4891727 ((_ is Concat!21734) (regTwo!27011 (regTwo!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893202))

(assert (= (and b!4891727 ((_ is Star!13249) (regTwo!27011 (regTwo!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893203))

(assert (= (and b!4891727 ((_ is Union!13249) (regTwo!27011 (regTwo!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893204))

(declare-fun tp!1377074 () Bool)

(declare-fun tp!1377072 () Bool)

(declare-fun e!3058981 () Bool)

(declare-fun b!4893205 () Bool)

(assert (=> b!4893205 (= e!3058981 (and (inv!72677 (left!40975 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (_1!33527 lt!2004658)))))) tp!1377074 (inv!72677 (right!41305 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (_1!33527 lt!2004658)))))) tp!1377072))))

(declare-fun b!4893207 () Bool)

(declare-fun e!3058982 () Bool)

(declare-fun tp!1377073 () Bool)

(assert (=> b!4893207 (= e!3058982 tp!1377073)))

(declare-fun b!4893206 () Bool)

(assert (=> b!4893206 (= e!3058981 (and (inv!72685 (xs!18058 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (_1!33527 lt!2004658)))))) e!3058982))))

(assert (=> b!4891743 (= tp!1376813 (and (inv!72677 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (_1!33527 lt!2004658))))) e!3058981))))

(assert (= (and b!4891743 ((_ is Node!14742) (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (_1!33527 lt!2004658)))))) b!4893205))

(assert (= b!4893206 b!4893207))

(assert (= (and b!4891743 ((_ is Leaf!24546) (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (_1!33527 lt!2004658)))))) b!4893206))

(declare-fun m!5898360 () Bool)

(assert (=> b!4893205 m!5898360))

(declare-fun m!5898362 () Bool)

(assert (=> b!4893205 m!5898362))

(declare-fun m!5898364 () Bool)

(assert (=> b!4893206 m!5898364))

(assert (=> b!4891743 m!5895530))

(declare-fun b!4893208 () Bool)

(declare-fun e!3058983 () Bool)

(declare-fun tp!1377075 () Bool)

(assert (=> b!4893208 (= e!3058983 (and tp_is_empty!35779 tp!1377075))))

(assert (=> b!4891733 (= tp!1376803 e!3058983)))

(assert (= (and b!4891733 ((_ is Cons!56403) (innerList!14830 (xs!18058 (right!41305 (c!831175 input!1236)))))) b!4893208))

(declare-fun b!4893211 () Bool)

(declare-fun e!3058984 () Bool)

(declare-fun tp!1377079 () Bool)

(assert (=> b!4893211 (= e!3058984 tp!1377079)))

(declare-fun b!4893212 () Bool)

(declare-fun tp!1377078 () Bool)

(declare-fun tp!1377076 () Bool)

(assert (=> b!4893212 (= e!3058984 (and tp!1377078 tp!1377076))))

(declare-fun b!4893210 () Bool)

(declare-fun tp!1377077 () Bool)

(declare-fun tp!1377080 () Bool)

(assert (=> b!4893210 (= e!3058984 (and tp!1377077 tp!1377080))))

(assert (=> b!4891709 (= tp!1376775 e!3058984)))

(declare-fun b!4893209 () Bool)

(assert (=> b!4893209 (= e!3058984 tp_is_empty!35779)))

(assert (= (and b!4891709 ((_ is ElementMatch!13249) (regOne!27010 (regOne!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893209))

(assert (= (and b!4891709 ((_ is Concat!21734) (regOne!27010 (regOne!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893210))

(assert (= (and b!4891709 ((_ is Star!13249) (regOne!27010 (regOne!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893211))

(assert (= (and b!4891709 ((_ is Union!13249) (regOne!27010 (regOne!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893212))

(declare-fun b!4893215 () Bool)

(declare-fun e!3058985 () Bool)

(declare-fun tp!1377084 () Bool)

(assert (=> b!4893215 (= e!3058985 tp!1377084)))

(declare-fun b!4893216 () Bool)

(declare-fun tp!1377083 () Bool)

(declare-fun tp!1377081 () Bool)

(assert (=> b!4893216 (= e!3058985 (and tp!1377083 tp!1377081))))

(declare-fun b!4893214 () Bool)

(declare-fun tp!1377082 () Bool)

(declare-fun tp!1377085 () Bool)

(assert (=> b!4893214 (= e!3058985 (and tp!1377082 tp!1377085))))

(assert (=> b!4891709 (= tp!1376778 e!3058985)))

(declare-fun b!4893213 () Bool)

(assert (=> b!4893213 (= e!3058985 tp_is_empty!35779)))

(assert (= (and b!4891709 ((_ is ElementMatch!13249) (regTwo!27010 (regOne!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893213))

(assert (= (and b!4891709 ((_ is Concat!21734) (regTwo!27010 (regOne!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893214))

(assert (= (and b!4891709 ((_ is Star!13249) (regTwo!27010 (regOne!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893215))

(assert (= (and b!4891709 ((_ is Union!13249) (regTwo!27010 (regOne!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893216))

(declare-fun b!4893219 () Bool)

(declare-fun e!3058986 () Bool)

(declare-fun tp!1377089 () Bool)

(assert (=> b!4893219 (= e!3058986 tp!1377089)))

(declare-fun b!4893220 () Bool)

(declare-fun tp!1377088 () Bool)

(declare-fun tp!1377086 () Bool)

(assert (=> b!4893220 (= e!3058986 (and tp!1377088 tp!1377086))))

(declare-fun b!4893218 () Bool)

(declare-fun tp!1377087 () Bool)

(declare-fun tp!1377090 () Bool)

(assert (=> b!4893218 (= e!3058986 (and tp!1377087 tp!1377090))))

(assert (=> b!4891726 (= tp!1376797 e!3058986)))

(declare-fun b!4893217 () Bool)

(assert (=> b!4893217 (= e!3058986 tp_is_empty!35779)))

(assert (= (and b!4891726 ((_ is ElementMatch!13249) (reg!13578 (regTwo!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893217))

(assert (= (and b!4891726 ((_ is Concat!21734) (reg!13578 (regTwo!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893218))

(assert (= (and b!4891726 ((_ is Star!13249) (reg!13578 (regTwo!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893219))

(assert (= (and b!4891726 ((_ is Union!13249) (reg!13578 (regTwo!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893220))

(declare-fun tp!1377091 () Bool)

(declare-fun b!4893221 () Bool)

(declare-fun e!3058987 () Bool)

(declare-fun tp!1377093 () Bool)

(assert (=> b!4893221 (= e!3058987 (and (inv!72677 (left!40975 (left!40975 (right!41305 (c!831175 input!1236))))) tp!1377093 (inv!72677 (right!41305 (left!40975 (right!41305 (c!831175 input!1236))))) tp!1377091))))

(declare-fun b!4893223 () Bool)

(declare-fun e!3058988 () Bool)

(declare-fun tp!1377092 () Bool)

(assert (=> b!4893223 (= e!3058988 tp!1377092)))

(declare-fun b!4893222 () Bool)

(assert (=> b!4893222 (= e!3058987 (and (inv!72685 (xs!18058 (left!40975 (right!41305 (c!831175 input!1236))))) e!3058988))))

(assert (=> b!4891731 (= tp!1376804 (and (inv!72677 (left!40975 (right!41305 (c!831175 input!1236)))) e!3058987))))

(assert (= (and b!4891731 ((_ is Node!14742) (left!40975 (right!41305 (c!831175 input!1236))))) b!4893221))

(assert (= b!4893222 b!4893223))

(assert (= (and b!4891731 ((_ is Leaf!24546) (left!40975 (right!41305 (c!831175 input!1236))))) b!4893222))

(declare-fun m!5898366 () Bool)

(assert (=> b!4893221 m!5898366))

(declare-fun m!5898368 () Bool)

(assert (=> b!4893221 m!5898368))

(declare-fun m!5898370 () Bool)

(assert (=> b!4893222 m!5898370))

(assert (=> b!4891731 m!5895512))

(declare-fun tp!1377094 () Bool)

(declare-fun tp!1377096 () Bool)

(declare-fun b!4893224 () Bool)

(declare-fun e!3058989 () Bool)

(assert (=> b!4893224 (= e!3058989 (and (inv!72677 (left!40975 (right!41305 (right!41305 (c!831175 input!1236))))) tp!1377096 (inv!72677 (right!41305 (right!41305 (right!41305 (c!831175 input!1236))))) tp!1377094))))

(declare-fun b!4893226 () Bool)

(declare-fun e!3058990 () Bool)

(declare-fun tp!1377095 () Bool)

(assert (=> b!4893226 (= e!3058990 tp!1377095)))

(declare-fun b!4893225 () Bool)

(assert (=> b!4893225 (= e!3058989 (and (inv!72685 (xs!18058 (right!41305 (right!41305 (c!831175 input!1236))))) e!3058990))))

(assert (=> b!4891731 (= tp!1376802 (and (inv!72677 (right!41305 (right!41305 (c!831175 input!1236)))) e!3058989))))

(assert (= (and b!4891731 ((_ is Node!14742) (right!41305 (right!41305 (c!831175 input!1236))))) b!4893224))

(assert (= b!4893225 b!4893226))

(assert (= (and b!4891731 ((_ is Leaf!24546) (right!41305 (right!41305 (c!831175 input!1236))))) b!4893225))

(declare-fun m!5898372 () Bool)

(assert (=> b!4893224 m!5898372))

(declare-fun m!5898374 () Bool)

(assert (=> b!4893224 m!5898374))

(declare-fun m!5898376 () Bool)

(assert (=> b!4893225 m!5898376))

(assert (=> b!4891731 m!5895514))

(declare-fun b!4893229 () Bool)

(declare-fun e!3058991 () Bool)

(declare-fun tp!1377100 () Bool)

(assert (=> b!4893229 (= e!3058991 tp!1377100)))

(declare-fun b!4893230 () Bool)

(declare-fun tp!1377099 () Bool)

(declare-fun tp!1377097 () Bool)

(assert (=> b!4893230 (= e!3058991 (and tp!1377099 tp!1377097))))

(declare-fun b!4893228 () Bool)

(declare-fun tp!1377098 () Bool)

(declare-fun tp!1377101 () Bool)

(assert (=> b!4893228 (= e!3058991 (and tp!1377098 tp!1377101))))

(assert (=> b!4891717 (= tp!1376785 e!3058991)))

(declare-fun b!4893227 () Bool)

(assert (=> b!4893227 (= e!3058991 tp_is_empty!35779)))

(assert (= (and b!4891717 ((_ is ElementMatch!13249) (regOne!27010 (reg!13578 (regex!8174 (h!62853 rulesArg!165)))))) b!4893227))

(assert (= (and b!4891717 ((_ is Concat!21734) (regOne!27010 (reg!13578 (regex!8174 (h!62853 rulesArg!165)))))) b!4893228))

(assert (= (and b!4891717 ((_ is Star!13249) (regOne!27010 (reg!13578 (regex!8174 (h!62853 rulesArg!165)))))) b!4893229))

(assert (= (and b!4891717 ((_ is Union!13249) (regOne!27010 (reg!13578 (regex!8174 (h!62853 rulesArg!165)))))) b!4893230))

(declare-fun b!4893233 () Bool)

(declare-fun e!3058992 () Bool)

(declare-fun tp!1377105 () Bool)

(assert (=> b!4893233 (= e!3058992 tp!1377105)))

(declare-fun b!4893234 () Bool)

(declare-fun tp!1377104 () Bool)

(declare-fun tp!1377102 () Bool)

(assert (=> b!4893234 (= e!3058992 (and tp!1377104 tp!1377102))))

(declare-fun b!4893232 () Bool)

(declare-fun tp!1377103 () Bool)

(declare-fun tp!1377106 () Bool)

(assert (=> b!4893232 (= e!3058992 (and tp!1377103 tp!1377106))))

(assert (=> b!4891717 (= tp!1376788 e!3058992)))

(declare-fun b!4893231 () Bool)

(assert (=> b!4893231 (= e!3058992 tp_is_empty!35779)))

(assert (= (and b!4891717 ((_ is ElementMatch!13249) (regTwo!27010 (reg!13578 (regex!8174 (h!62853 rulesArg!165)))))) b!4893231))

(assert (= (and b!4891717 ((_ is Concat!21734) (regTwo!27010 (reg!13578 (regex!8174 (h!62853 rulesArg!165)))))) b!4893232))

(assert (= (and b!4891717 ((_ is Star!13249) (regTwo!27010 (reg!13578 (regex!8174 (h!62853 rulesArg!165)))))) b!4893233))

(assert (= (and b!4891717 ((_ is Union!13249) (regTwo!27010 (reg!13578 (regex!8174 (h!62853 rulesArg!165)))))) b!4893234))

(declare-fun b!4893237 () Bool)

(declare-fun e!3058993 () Bool)

(declare-fun tp!1377110 () Bool)

(assert (=> b!4893237 (= e!3058993 tp!1377110)))

(declare-fun b!4893238 () Bool)

(declare-fun tp!1377109 () Bool)

(declare-fun tp!1377107 () Bool)

(assert (=> b!4893238 (= e!3058993 (and tp!1377109 tp!1377107))))

(declare-fun b!4893236 () Bool)

(declare-fun tp!1377108 () Bool)

(declare-fun tp!1377111 () Bool)

(assert (=> b!4893236 (= e!3058993 (and tp!1377108 tp!1377111))))

(assert (=> b!4891725 (= tp!1376795 e!3058993)))

(declare-fun b!4893235 () Bool)

(assert (=> b!4893235 (= e!3058993 tp_is_empty!35779)))

(assert (= (and b!4891725 ((_ is ElementMatch!13249) (regOne!27010 (regTwo!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893235))

(assert (= (and b!4891725 ((_ is Concat!21734) (regOne!27010 (regTwo!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893236))

(assert (= (and b!4891725 ((_ is Star!13249) (regOne!27010 (regTwo!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893237))

(assert (= (and b!4891725 ((_ is Union!13249) (regOne!27010 (regTwo!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893238))

(declare-fun b!4893241 () Bool)

(declare-fun e!3058994 () Bool)

(declare-fun tp!1377115 () Bool)

(assert (=> b!4893241 (= e!3058994 tp!1377115)))

(declare-fun b!4893242 () Bool)

(declare-fun tp!1377114 () Bool)

(declare-fun tp!1377112 () Bool)

(assert (=> b!4893242 (= e!3058994 (and tp!1377114 tp!1377112))))

(declare-fun b!4893240 () Bool)

(declare-fun tp!1377113 () Bool)

(declare-fun tp!1377116 () Bool)

(assert (=> b!4893240 (= e!3058994 (and tp!1377113 tp!1377116))))

(assert (=> b!4891725 (= tp!1376798 e!3058994)))

(declare-fun b!4893239 () Bool)

(assert (=> b!4893239 (= e!3058994 tp_is_empty!35779)))

(assert (= (and b!4891725 ((_ is ElementMatch!13249) (regTwo!27010 (regTwo!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893239))

(assert (= (and b!4891725 ((_ is Concat!21734) (regTwo!27010 (regTwo!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893240))

(assert (= (and b!4891725 ((_ is Star!13249) (regTwo!27010 (regTwo!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893241))

(assert (= (and b!4891725 ((_ is Union!13249) (regTwo!27010 (regTwo!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893242))

(declare-fun b!4893243 () Bool)

(declare-fun tp!1377119 () Bool)

(declare-fun e!3058995 () Bool)

(declare-fun tp!1377117 () Bool)

(assert (=> b!4893243 (= e!3058995 (and (inv!72677 (left!40975 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658)))))))) tp!1377119 (inv!72677 (right!41305 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658)))))))) tp!1377117))))

(declare-fun b!4893245 () Bool)

(declare-fun e!3058996 () Bool)

(declare-fun tp!1377118 () Bool)

(assert (=> b!4893245 (= e!3058996 tp!1377118)))

(declare-fun b!4893244 () Bool)

(assert (=> b!4893244 (= e!3058995 (and (inv!72685 (xs!18058 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658)))))))) e!3058996))))

(assert (=> b!4891742 (= tp!1376812 (and (inv!72677 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658))))))) e!3058995))))

(assert (= (and b!4891742 ((_ is Node!14742) (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658)))))))) b!4893243))

(assert (= b!4893244 b!4893245))

(assert (= (and b!4891742 ((_ is Leaf!24546) (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658)))))))) b!4893244))

(declare-fun m!5898378 () Bool)

(assert (=> b!4893243 m!5898378))

(declare-fun m!5898380 () Bool)

(assert (=> b!4893243 m!5898380))

(declare-fun m!5898382 () Bool)

(assert (=> b!4893244 m!5898382))

(assert (=> b!4891742 m!5895522))

(declare-fun b!4893248 () Bool)

(declare-fun e!3058997 () Bool)

(declare-fun tp!1377123 () Bool)

(assert (=> b!4893248 (= e!3058997 tp!1377123)))

(declare-fun b!4893249 () Bool)

(declare-fun tp!1377122 () Bool)

(declare-fun tp!1377120 () Bool)

(assert (=> b!4893249 (= e!3058997 (and tp!1377122 tp!1377120))))

(declare-fun b!4893247 () Bool)

(declare-fun tp!1377121 () Bool)

(declare-fun tp!1377124 () Bool)

(assert (=> b!4893247 (= e!3058997 (and tp!1377121 tp!1377124))))

(assert (=> b!4891707 (= tp!1376771 e!3058997)))

(declare-fun b!4893246 () Bool)

(assert (=> b!4893246 (= e!3058997 tp_is_empty!35779)))

(assert (= (and b!4891707 ((_ is ElementMatch!13249) (regOne!27011 (regex!8174 (h!62853 (t!365275 rulesArg!165)))))) b!4893246))

(assert (= (and b!4891707 ((_ is Concat!21734) (regOne!27011 (regex!8174 (h!62853 (t!365275 rulesArg!165)))))) b!4893247))

(assert (= (and b!4891707 ((_ is Star!13249) (regOne!27011 (regex!8174 (h!62853 (t!365275 rulesArg!165)))))) b!4893248))

(assert (= (and b!4891707 ((_ is Union!13249) (regOne!27011 (regex!8174 (h!62853 (t!365275 rulesArg!165)))))) b!4893249))

(declare-fun b!4893252 () Bool)

(declare-fun e!3058998 () Bool)

(declare-fun tp!1377128 () Bool)

(assert (=> b!4893252 (= e!3058998 tp!1377128)))

(declare-fun b!4893253 () Bool)

(declare-fun tp!1377127 () Bool)

(declare-fun tp!1377125 () Bool)

(assert (=> b!4893253 (= e!3058998 (and tp!1377127 tp!1377125))))

(declare-fun b!4893251 () Bool)

(declare-fun tp!1377126 () Bool)

(declare-fun tp!1377129 () Bool)

(assert (=> b!4893251 (= e!3058998 (and tp!1377126 tp!1377129))))

(assert (=> b!4891707 (= tp!1376769 e!3058998)))

(declare-fun b!4893250 () Bool)

(assert (=> b!4893250 (= e!3058998 tp_is_empty!35779)))

(assert (= (and b!4891707 ((_ is ElementMatch!13249) (regTwo!27011 (regex!8174 (h!62853 (t!365275 rulesArg!165)))))) b!4893250))

(assert (= (and b!4891707 ((_ is Concat!21734) (regTwo!27011 (regex!8174 (h!62853 (t!365275 rulesArg!165)))))) b!4893251))

(assert (= (and b!4891707 ((_ is Star!13249) (regTwo!27011 (regex!8174 (h!62853 (t!365275 rulesArg!165)))))) b!4893252))

(assert (= (and b!4891707 ((_ is Union!13249) (regTwo!27011 (regex!8174 (h!62853 (t!365275 rulesArg!165)))))) b!4893253))

(declare-fun b!4893256 () Bool)

(declare-fun e!3058999 () Bool)

(declare-fun tp!1377133 () Bool)

(assert (=> b!4893256 (= e!3058999 tp!1377133)))

(declare-fun b!4893257 () Bool)

(declare-fun tp!1377132 () Bool)

(declare-fun tp!1377130 () Bool)

(assert (=> b!4893257 (= e!3058999 (and tp!1377132 tp!1377130))))

(declare-fun b!4893255 () Bool)

(declare-fun tp!1377131 () Bool)

(declare-fun tp!1377134 () Bool)

(assert (=> b!4893255 (= e!3058999 (and tp!1377131 tp!1377134))))

(assert (=> b!4891705 (= tp!1376770 e!3058999)))

(declare-fun b!4893254 () Bool)

(assert (=> b!4893254 (= e!3058999 tp_is_empty!35779)))

(assert (= (and b!4891705 ((_ is ElementMatch!13249) (regOne!27010 (regex!8174 (h!62853 (t!365275 rulesArg!165)))))) b!4893254))

(assert (= (and b!4891705 ((_ is Concat!21734) (regOne!27010 (regex!8174 (h!62853 (t!365275 rulesArg!165)))))) b!4893255))

(assert (= (and b!4891705 ((_ is Star!13249) (regOne!27010 (regex!8174 (h!62853 (t!365275 rulesArg!165)))))) b!4893256))

(assert (= (and b!4891705 ((_ is Union!13249) (regOne!27010 (regex!8174 (h!62853 (t!365275 rulesArg!165)))))) b!4893257))

(declare-fun b!4893260 () Bool)

(declare-fun e!3059000 () Bool)

(declare-fun tp!1377138 () Bool)

(assert (=> b!4893260 (= e!3059000 tp!1377138)))

(declare-fun b!4893261 () Bool)

(declare-fun tp!1377137 () Bool)

(declare-fun tp!1377135 () Bool)

(assert (=> b!4893261 (= e!3059000 (and tp!1377137 tp!1377135))))

(declare-fun b!4893259 () Bool)

(declare-fun tp!1377136 () Bool)

(declare-fun tp!1377139 () Bool)

(assert (=> b!4893259 (= e!3059000 (and tp!1377136 tp!1377139))))

(assert (=> b!4891705 (= tp!1376773 e!3059000)))

(declare-fun b!4893258 () Bool)

(assert (=> b!4893258 (= e!3059000 tp_is_empty!35779)))

(assert (= (and b!4891705 ((_ is ElementMatch!13249) (regTwo!27010 (regex!8174 (h!62853 (t!365275 rulesArg!165)))))) b!4893258))

(assert (= (and b!4891705 ((_ is Concat!21734) (regTwo!27010 (regex!8174 (h!62853 (t!365275 rulesArg!165)))))) b!4893259))

(assert (= (and b!4891705 ((_ is Star!13249) (regTwo!27010 (regex!8174 (h!62853 (t!365275 rulesArg!165)))))) b!4893260))

(assert (= (and b!4891705 ((_ is Union!13249) (regTwo!27010 (regex!8174 (h!62853 (t!365275 rulesArg!165)))))) b!4893261))

(declare-fun b!4893264 () Bool)

(declare-fun e!3059001 () Bool)

(declare-fun tp!1377143 () Bool)

(assert (=> b!4893264 (= e!3059001 tp!1377143)))

(declare-fun b!4893265 () Bool)

(declare-fun tp!1377142 () Bool)

(declare-fun tp!1377140 () Bool)

(assert (=> b!4893265 (= e!3059001 (and tp!1377142 tp!1377140))))

(declare-fun b!4893263 () Bool)

(declare-fun tp!1377141 () Bool)

(declare-fun tp!1377144 () Bool)

(assert (=> b!4893263 (= e!3059001 (and tp!1377141 tp!1377144))))

(assert (=> b!4891706 (= tp!1376772 e!3059001)))

(declare-fun b!4893262 () Bool)

(assert (=> b!4893262 (= e!3059001 tp_is_empty!35779)))

(assert (= (and b!4891706 ((_ is ElementMatch!13249) (reg!13578 (regex!8174 (h!62853 (t!365275 rulesArg!165)))))) b!4893262))

(assert (= (and b!4891706 ((_ is Concat!21734) (reg!13578 (regex!8174 (h!62853 (t!365275 rulesArg!165)))))) b!4893263))

(assert (= (and b!4891706 ((_ is Star!13249) (reg!13578 (regex!8174 (h!62853 (t!365275 rulesArg!165)))))) b!4893264))

(assert (= (and b!4891706 ((_ is Union!13249) (reg!13578 (regex!8174 (h!62853 (t!365275 rulesArg!165)))))) b!4893265))

(declare-fun b!4893268 () Bool)

(declare-fun e!3059002 () Bool)

(declare-fun tp!1377148 () Bool)

(assert (=> b!4893268 (= e!3059002 tp!1377148)))

(declare-fun b!4893269 () Bool)

(declare-fun tp!1377147 () Bool)

(declare-fun tp!1377145 () Bool)

(assert (=> b!4893269 (= e!3059002 (and tp!1377147 tp!1377145))))

(declare-fun b!4893267 () Bool)

(declare-fun tp!1377146 () Bool)

(declare-fun tp!1377149 () Bool)

(assert (=> b!4893267 (= e!3059002 (and tp!1377146 tp!1377149))))

(assert (=> b!4891715 (= tp!1376781 e!3059002)))

(declare-fun b!4893266 () Bool)

(assert (=> b!4893266 (= e!3059002 tp_is_empty!35779)))

(assert (= (and b!4891715 ((_ is ElementMatch!13249) (regOne!27011 (regTwo!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893266))

(assert (= (and b!4891715 ((_ is Concat!21734) (regOne!27011 (regTwo!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893267))

(assert (= (and b!4891715 ((_ is Star!13249) (regOne!27011 (regTwo!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893268))

(assert (= (and b!4891715 ((_ is Union!13249) (regOne!27011 (regTwo!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893269))

(declare-fun b!4893272 () Bool)

(declare-fun e!3059003 () Bool)

(declare-fun tp!1377153 () Bool)

(assert (=> b!4893272 (= e!3059003 tp!1377153)))

(declare-fun b!4893273 () Bool)

(declare-fun tp!1377152 () Bool)

(declare-fun tp!1377150 () Bool)

(assert (=> b!4893273 (= e!3059003 (and tp!1377152 tp!1377150))))

(declare-fun b!4893271 () Bool)

(declare-fun tp!1377151 () Bool)

(declare-fun tp!1377154 () Bool)

(assert (=> b!4893271 (= e!3059003 (and tp!1377151 tp!1377154))))

(assert (=> b!4891715 (= tp!1376779 e!3059003)))

(declare-fun b!4893270 () Bool)

(assert (=> b!4893270 (= e!3059003 tp_is_empty!35779)))

(assert (= (and b!4891715 ((_ is ElementMatch!13249) (regTwo!27011 (regTwo!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893270))

(assert (= (and b!4891715 ((_ is Concat!21734) (regTwo!27011 (regTwo!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893271))

(assert (= (and b!4891715 ((_ is Star!13249) (regTwo!27011 (regTwo!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893272))

(assert (= (and b!4891715 ((_ is Union!13249) (regTwo!27011 (regTwo!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893273))

(declare-fun b!4893276 () Bool)

(declare-fun e!3059004 () Bool)

(declare-fun tp!1377158 () Bool)

(assert (=> b!4893276 (= e!3059004 tp!1377158)))

(declare-fun b!4893277 () Bool)

(declare-fun tp!1377157 () Bool)

(declare-fun tp!1377155 () Bool)

(assert (=> b!4893277 (= e!3059004 (and tp!1377157 tp!1377155))))

(declare-fun b!4893275 () Bool)

(declare-fun tp!1377156 () Bool)

(declare-fun tp!1377159 () Bool)

(assert (=> b!4893275 (= e!3059004 (and tp!1377156 tp!1377159))))

(assert (=> b!4891713 (= tp!1376780 e!3059004)))

(declare-fun b!4893274 () Bool)

(assert (=> b!4893274 (= e!3059004 tp_is_empty!35779)))

(assert (= (and b!4891713 ((_ is ElementMatch!13249) (regOne!27010 (regTwo!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893274))

(assert (= (and b!4891713 ((_ is Concat!21734) (regOne!27010 (regTwo!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893275))

(assert (= (and b!4891713 ((_ is Star!13249) (regOne!27010 (regTwo!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893276))

(assert (= (and b!4891713 ((_ is Union!13249) (regOne!27010 (regTwo!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893277))

(declare-fun b!4893280 () Bool)

(declare-fun e!3059005 () Bool)

(declare-fun tp!1377163 () Bool)

(assert (=> b!4893280 (= e!3059005 tp!1377163)))

(declare-fun b!4893281 () Bool)

(declare-fun tp!1377162 () Bool)

(declare-fun tp!1377160 () Bool)

(assert (=> b!4893281 (= e!3059005 (and tp!1377162 tp!1377160))))

(declare-fun b!4893279 () Bool)

(declare-fun tp!1377161 () Bool)

(declare-fun tp!1377164 () Bool)

(assert (=> b!4893279 (= e!3059005 (and tp!1377161 tp!1377164))))

(assert (=> b!4891713 (= tp!1376783 e!3059005)))

(declare-fun b!4893278 () Bool)

(assert (=> b!4893278 (= e!3059005 tp_is_empty!35779)))

(assert (= (and b!4891713 ((_ is ElementMatch!13249) (regTwo!27010 (regTwo!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893278))

(assert (= (and b!4891713 ((_ is Concat!21734) (regTwo!27010 (regTwo!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893279))

(assert (= (and b!4891713 ((_ is Star!13249) (regTwo!27010 (regTwo!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893280))

(assert (= (and b!4891713 ((_ is Union!13249) (regTwo!27010 (regTwo!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893281))

(declare-fun b!4893284 () Bool)

(declare-fun e!3059006 () Bool)

(declare-fun tp!1377168 () Bool)

(assert (=> b!4893284 (= e!3059006 tp!1377168)))

(declare-fun b!4893285 () Bool)

(declare-fun tp!1377167 () Bool)

(declare-fun tp!1377165 () Bool)

(assert (=> b!4893285 (= e!3059006 (and tp!1377167 tp!1377165))))

(declare-fun b!4893283 () Bool)

(declare-fun tp!1377166 () Bool)

(declare-fun tp!1377169 () Bool)

(assert (=> b!4893283 (= e!3059006 (and tp!1377166 tp!1377169))))

(assert (=> b!4891714 (= tp!1376782 e!3059006)))

(declare-fun b!4893282 () Bool)

(assert (=> b!4893282 (= e!3059006 tp_is_empty!35779)))

(assert (= (and b!4891714 ((_ is ElementMatch!13249) (reg!13578 (regTwo!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893282))

(assert (= (and b!4891714 ((_ is Concat!21734) (reg!13578 (regTwo!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893283))

(assert (= (and b!4891714 ((_ is Star!13249) (reg!13578 (regTwo!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893284))

(assert (= (and b!4891714 ((_ is Union!13249) (reg!13578 (regTwo!27010 (regex!8174 (h!62853 rulesArg!165)))))) b!4893285))

(declare-fun b!4893288 () Bool)

(declare-fun e!3059007 () Bool)

(declare-fun tp!1377173 () Bool)

(assert (=> b!4893288 (= e!3059007 tp!1377173)))

(declare-fun b!4893289 () Bool)

(declare-fun tp!1377172 () Bool)

(declare-fun tp!1377170 () Bool)

(assert (=> b!4893289 (= e!3059007 (and tp!1377172 tp!1377170))))

(declare-fun b!4893287 () Bool)

(declare-fun tp!1377171 () Bool)

(declare-fun tp!1377174 () Bool)

(assert (=> b!4893287 (= e!3059007 (and tp!1377171 tp!1377174))))

(assert (=> b!4891723 (= tp!1376791 e!3059007)))

(declare-fun b!4893286 () Bool)

(assert (=> b!4893286 (= e!3059007 tp_is_empty!35779)))

(assert (= (and b!4891723 ((_ is ElementMatch!13249) (regOne!27011 (regOne!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893286))

(assert (= (and b!4891723 ((_ is Concat!21734) (regOne!27011 (regOne!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893287))

(assert (= (and b!4891723 ((_ is Star!13249) (regOne!27011 (regOne!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893288))

(assert (= (and b!4891723 ((_ is Union!13249) (regOne!27011 (regOne!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893289))

(declare-fun b!4893292 () Bool)

(declare-fun e!3059008 () Bool)

(declare-fun tp!1377178 () Bool)

(assert (=> b!4893292 (= e!3059008 tp!1377178)))

(declare-fun b!4893293 () Bool)

(declare-fun tp!1377177 () Bool)

(declare-fun tp!1377175 () Bool)

(assert (=> b!4893293 (= e!3059008 (and tp!1377177 tp!1377175))))

(declare-fun b!4893291 () Bool)

(declare-fun tp!1377176 () Bool)

(declare-fun tp!1377179 () Bool)

(assert (=> b!4893291 (= e!3059008 (and tp!1377176 tp!1377179))))

(assert (=> b!4891723 (= tp!1376789 e!3059008)))

(declare-fun b!4893290 () Bool)

(assert (=> b!4893290 (= e!3059008 tp_is_empty!35779)))

(assert (= (and b!4891723 ((_ is ElementMatch!13249) (regTwo!27011 (regOne!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893290))

(assert (= (and b!4891723 ((_ is Concat!21734) (regTwo!27011 (regOne!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893291))

(assert (= (and b!4891723 ((_ is Star!13249) (regTwo!27011 (regOne!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893292))

(assert (= (and b!4891723 ((_ is Union!13249) (regTwo!27011 (regOne!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893293))

(declare-fun b!4893296 () Bool)

(declare-fun b_free!131563 () Bool)

(declare-fun b_next!132353 () Bool)

(assert (=> b!4893296 (= b_free!131563 (not b_next!132353))))

(declare-fun t!365612 () Bool)

(declare-fun tb!258863 () Bool)

(assert (=> (and b!4893296 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) t!365612) tb!258863))

(declare-fun result!322426 () Bool)

(assert (= result!322426 result!322126))

(assert (=> bs!1175856 t!365612))

(declare-fun t!365614 () Bool)

(declare-fun tb!258865 () Bool)

(assert (=> (and b!4893296 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) t!365614) tb!258865))

(declare-fun result!322428 () Bool)

(assert (= result!322428 result!322348))

(assert (=> d!1571494 t!365614))

(declare-fun t!365616 () Bool)

(declare-fun tb!258867 () Bool)

(assert (=> (and b!4893296 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004762)))))) t!365616) tb!258867))

(declare-fun result!322430 () Bool)

(assert (= result!322430 result!322408))

(assert (=> d!1571800 t!365616))

(declare-fun t!365618 () Bool)

(declare-fun tb!258869 () Bool)

(assert (=> (and b!4893296 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) t!365618) tb!258869))

(declare-fun result!322432 () Bool)

(assert (= result!322432 result!322378))

(assert (=> d!1571632 t!365618))

(assert (=> d!1571628 t!365618))

(declare-fun t!365620 () Bool)

(declare-fun tb!258871 () Bool)

(assert (=> (and b!4893296 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) t!365620) tb!258871))

(declare-fun result!322434 () Bool)

(assert (= result!322434 result!322390))

(assert (=> d!1571678 t!365620))

(declare-fun t!365622 () Bool)

(declare-fun tb!258873 () Bool)

(assert (=> (and b!4893296 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) t!365622) tb!258873))

(declare-fun result!322436 () Bool)

(assert (= result!322436 result!322122))

(assert (=> d!1570774 t!365622))

(assert (=> d!1571680 t!365620))

(declare-fun t!365624 () Bool)

(declare-fun tb!258875 () Bool)

(assert (=> (and b!4893296 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))))) t!365624) tb!258875))

(declare-fun result!322438 () Bool)

(assert (= result!322438 result!322116))

(assert (=> d!1570656 t!365624))

(assert (=> d!1571504 t!365614))

(declare-fun tb!258877 () Bool)

(declare-fun t!365626 () Bool)

(assert (=> (and b!4893296 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2005117)))))) t!365626) tb!258877))

(declare-fun result!322440 () Bool)

(assert (= result!322440 result!322402))

(assert (=> d!1571734 t!365626))

(assert (=> d!1570734 t!365622))

(declare-fun t!365628 () Bool)

(declare-fun tb!258879 () Bool)

(assert (=> (and b!4893296 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004982)))))) t!365628) tb!258879))

(declare-fun result!322442 () Bool)

(assert (= result!322442 result!322396))

(assert (=> d!1571688 t!365628))

(declare-fun tb!258881 () Bool)

(declare-fun t!365630 () Bool)

(assert (=> (and b!4893296 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004764)))))) t!365630) tb!258881))

(declare-fun result!322444 () Bool)

(assert (= result!322444 result!322330))

(assert (=> d!1571344 t!365630))

(declare-fun t!365632 () Bool)

(declare-fun tb!258883 () Bool)

(assert (=> (and b!4893296 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) t!365632) tb!258883))

(declare-fun result!322446 () Bool)

(assert (= result!322446 result!322354))

(assert (=> d!1571494 t!365632))

(assert (=> d!1570734 t!365612))

(declare-fun t!365634 () Bool)

(declare-fun tb!258885 () Bool)

(assert (=> (and b!4893296 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165)))) t!365634) tb!258885))

(declare-fun result!322448 () Bool)

(assert (= result!322448 result!322414))

(assert (=> d!1571814 t!365634))

(assert (=> d!1571816 t!365634))

(assert (=> bs!1175858 t!365622))

(declare-fun tp!1377181 () Bool)

(declare-fun b_and!344875 () Bool)

(assert (=> b!4893296 (= tp!1377181 (and (=> t!365614 result!322428) (=> t!365624 result!322438) (=> t!365632 result!322446) (=> t!365628 result!322442) (=> t!365618 result!322432) (=> t!365634 result!322448) (=> t!365622 result!322436) (=> t!365616 result!322430) (=> t!365612 result!322426) (=> t!365626 result!322440) (=> t!365630 result!322444) (=> t!365620 result!322434) b_and!344875))))

(declare-fun b_free!131565 () Bool)

(declare-fun b_next!132355 () Bool)

(assert (=> b!4893296 (= b_free!131565 (not b_next!132355))))

(declare-fun tb!258887 () Bool)

(declare-fun t!365636 () Bool)

(assert (=> (and b!4893296 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004764)))))) t!365636) tb!258887))

(declare-fun result!322450 () Bool)

(assert (= result!322450 result!322366))

(assert (=> d!1571614 t!365636))

(declare-fun tb!258889 () Bool)

(declare-fun t!365638 () Bool)

(assert (=> (and b!4893296 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672)))))) t!365638) tb!258889))

(declare-fun result!322452 () Bool)

(assert (= result!322452 result!322110))

(assert (=> d!1570644 t!365638))

(declare-fun tb!258891 () Bool)

(declare-fun t!365640 () Bool)

(assert (=> (and b!4893296 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004982)))))) t!365640) tb!258891))

(declare-fun result!322454 () Bool)

(assert (= result!322454 result!322342))

(assert (=> d!1571478 t!365640))

(declare-fun t!365642 () Bool)

(declare-fun tb!258893 () Bool)

(assert (=> (and b!4893296 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) t!365642) tb!258893))

(declare-fun result!322456 () Bool)

(assert (= result!322456 result!322162))

(assert (=> bs!1175856 t!365642))

(declare-fun t!365644 () Bool)

(declare-fun tb!258895 () Bool)

(assert (=> (and b!4893296 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) t!365644) tb!258895))

(declare-fun result!322458 () Bool)

(assert (= result!322458 result!322168))

(assert (=> bs!1175858 t!365644))

(declare-fun tb!258897 () Bool)

(declare-fun t!365646 () Bool)

(assert (=> (and b!4893296 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004762)))))) t!365646) tb!258897))

(declare-fun result!322460 () Bool)

(assert (= result!322460 result!322360))

(assert (=> d!1571538 t!365646))

(declare-fun t!365648 () Bool)

(declare-fun tb!258899 () Bool)

(assert (=> (and b!4893296 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) t!365648) tb!258899))

(declare-fun result!322462 () Bool)

(assert (= result!322462 result!322372))

(assert (=> d!1571628 t!365648))

(declare-fun tb!258901 () Bool)

(declare-fun t!365650 () Bool)

(assert (=> (and b!4893296 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2005117)))))) t!365650) tb!258901))

(declare-fun result!322464 () Bool)

(assert (= result!322464 result!322336))

(assert (=> d!1571394 t!365650))

(declare-fun t!365652 () Bool)

(declare-fun tb!258903 () Bool)

(assert (=> (and b!4893296 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) t!365652) tb!258903))

(declare-fun result!322466 () Bool)

(assert (= result!322466 result!322384))

(assert (=> d!1571678 t!365652))

(declare-fun t!365654 () Bool)

(declare-fun tb!258905 () Bool)

(assert (=> (and b!4893296 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165)))) t!365654) tb!258905))

(declare-fun result!322468 () Bool)

(assert (= result!322468 result!322420))

(assert (=> d!1571816 t!365654))

(declare-fun tp!1377182 () Bool)

(declare-fun b_and!344877 () Bool)

(assert (=> b!4893296 (= tp!1377182 (and (=> t!365638 result!322452) (=> t!365646 result!322460) (=> t!365652 result!322466) (=> t!365640 result!322454) (=> t!365654 result!322468) (=> t!365636 result!322450) (=> t!365648 result!322462) (=> t!365650 result!322464) (=> t!365642 result!322456) (=> t!365644 result!322458) b_and!344877))))

(declare-fun e!3059012 () Bool)

(assert (=> b!4893296 (= e!3059012 (and tp!1377181 tp!1377182))))

(declare-fun tp!1377180 () Bool)

(declare-fun e!3059010 () Bool)

(declare-fun b!4893295 () Bool)

(assert (=> b!4893295 (= e!3059010 (and tp!1377180 (inv!72673 (tag!9038 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (inv!72678 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) e!3059012))))

(declare-fun b!4893294 () Bool)

(declare-fun e!3059011 () Bool)

(declare-fun tp!1377183 () Bool)

(assert (=> b!4893294 (= e!3059011 (and e!3059010 tp!1377183))))

(assert (=> b!4891739 (= tp!1376811 e!3059011)))

(assert (= b!4893295 b!4893296))

(assert (= b!4893294 b!4893295))

(assert (= (and b!4891739 ((_ is Cons!56405) (t!365275 (t!365275 (t!365275 rulesArg!165))))) b!4893294))

(declare-fun m!5898384 () Bool)

(assert (=> b!4893295 m!5898384))

(declare-fun m!5898386 () Bool)

(assert (=> b!4893295 m!5898386))

(declare-fun b!4893299 () Bool)

(declare-fun e!3059013 () Bool)

(declare-fun tp!1377187 () Bool)

(assert (=> b!4893299 (= e!3059013 tp!1377187)))

(declare-fun b!4893300 () Bool)

(declare-fun tp!1377186 () Bool)

(declare-fun tp!1377184 () Bool)

(assert (=> b!4893300 (= e!3059013 (and tp!1377186 tp!1377184))))

(declare-fun b!4893298 () Bool)

(declare-fun tp!1377185 () Bool)

(declare-fun tp!1377188 () Bool)

(assert (=> b!4893298 (= e!3059013 (and tp!1377185 tp!1377188))))

(assert (=> b!4891721 (= tp!1376790 e!3059013)))

(declare-fun b!4893297 () Bool)

(assert (=> b!4893297 (= e!3059013 tp_is_empty!35779)))

(assert (= (and b!4891721 ((_ is ElementMatch!13249) (regOne!27010 (regOne!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893297))

(assert (= (and b!4891721 ((_ is Concat!21734) (regOne!27010 (regOne!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893298))

(assert (= (and b!4891721 ((_ is Star!13249) (regOne!27010 (regOne!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893299))

(assert (= (and b!4891721 ((_ is Union!13249) (regOne!27010 (regOne!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893300))

(declare-fun b!4893303 () Bool)

(declare-fun e!3059014 () Bool)

(declare-fun tp!1377192 () Bool)

(assert (=> b!4893303 (= e!3059014 tp!1377192)))

(declare-fun b!4893304 () Bool)

(declare-fun tp!1377191 () Bool)

(declare-fun tp!1377189 () Bool)

(assert (=> b!4893304 (= e!3059014 (and tp!1377191 tp!1377189))))

(declare-fun b!4893302 () Bool)

(declare-fun tp!1377190 () Bool)

(declare-fun tp!1377193 () Bool)

(assert (=> b!4893302 (= e!3059014 (and tp!1377190 tp!1377193))))

(assert (=> b!4891721 (= tp!1376793 e!3059014)))

(declare-fun b!4893301 () Bool)

(assert (=> b!4893301 (= e!3059014 tp_is_empty!35779)))

(assert (= (and b!4891721 ((_ is ElementMatch!13249) (regTwo!27010 (regOne!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893301))

(assert (= (and b!4891721 ((_ is Concat!21734) (regTwo!27010 (regOne!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893302))

(assert (= (and b!4891721 ((_ is Star!13249) (regTwo!27010 (regOne!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893303))

(assert (= (and b!4891721 ((_ is Union!13249) (regTwo!27010 (regOne!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893304))

(declare-fun b!4893307 () Bool)

(declare-fun e!3059015 () Bool)

(declare-fun tp!1377197 () Bool)

(assert (=> b!4893307 (= e!3059015 tp!1377197)))

(declare-fun b!4893308 () Bool)

(declare-fun tp!1377196 () Bool)

(declare-fun tp!1377194 () Bool)

(assert (=> b!4893308 (= e!3059015 (and tp!1377196 tp!1377194))))

(declare-fun b!4893306 () Bool)

(declare-fun tp!1377195 () Bool)

(declare-fun tp!1377198 () Bool)

(assert (=> b!4893306 (= e!3059015 (and tp!1377195 tp!1377198))))

(assert (=> b!4891740 (= tp!1376808 e!3059015)))

(declare-fun b!4893305 () Bool)

(assert (=> b!4893305 (= e!3059015 tp_is_empty!35779)))

(assert (= (and b!4891740 ((_ is ElementMatch!13249) (regex!8174 (h!62853 (t!365275 (t!365275 rulesArg!165)))))) b!4893305))

(assert (= (and b!4891740 ((_ is Concat!21734) (regex!8174 (h!62853 (t!365275 (t!365275 rulesArg!165)))))) b!4893306))

(assert (= (and b!4891740 ((_ is Star!13249) (regex!8174 (h!62853 (t!365275 (t!365275 rulesArg!165)))))) b!4893307))

(assert (= (and b!4891740 ((_ is Union!13249) (regex!8174 (h!62853 (t!365275 (t!365275 rulesArg!165)))))) b!4893308))

(declare-fun b!4893311 () Bool)

(declare-fun e!3059016 () Bool)

(declare-fun tp!1377202 () Bool)

(assert (=> b!4893311 (= e!3059016 tp!1377202)))

(declare-fun b!4893312 () Bool)

(declare-fun tp!1377201 () Bool)

(declare-fun tp!1377199 () Bool)

(assert (=> b!4893312 (= e!3059016 (and tp!1377201 tp!1377199))))

(declare-fun b!4893310 () Bool)

(declare-fun tp!1377200 () Bool)

(declare-fun tp!1377203 () Bool)

(assert (=> b!4893310 (= e!3059016 (and tp!1377200 tp!1377203))))

(assert (=> b!4891722 (= tp!1376792 e!3059016)))

(declare-fun b!4893309 () Bool)

(assert (=> b!4893309 (= e!3059016 tp_is_empty!35779)))

(assert (= (and b!4891722 ((_ is ElementMatch!13249) (reg!13578 (regOne!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893309))

(assert (= (and b!4891722 ((_ is Concat!21734) (reg!13578 (regOne!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893310))

(assert (= (and b!4891722 ((_ is Star!13249) (reg!13578 (regOne!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893311))

(assert (= (and b!4891722 ((_ is Union!13249) (reg!13578 (regOne!27011 (regex!8174 (h!62853 rulesArg!165)))))) b!4893312))

(declare-fun b!4893313 () Bool)

(declare-fun e!3059017 () Bool)

(declare-fun tp!1377204 () Bool)

(assert (=> b!4893313 (= e!3059017 (and tp_is_empty!35779 tp!1377204))))

(assert (=> b!4891730 (= tp!1376800 e!3059017)))

(assert (= (and b!4891730 ((_ is Cons!56403) (innerList!14830 (xs!18058 (left!40975 (c!831175 input!1236)))))) b!4893313))

(declare-fun e!3059018 () Bool)

(declare-fun tp!1377207 () Bool)

(declare-fun b!4893314 () Bool)

(declare-fun tp!1377205 () Bool)

(assert (=> b!4893314 (= e!3059018 (and (inv!72677 (left!40975 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) (value!262109 (_1!33526 (get!19478 lt!2004672))))))) tp!1377207 (inv!72677 (right!41305 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) (value!262109 (_1!33526 (get!19478 lt!2004672))))))) tp!1377205))))

(declare-fun b!4893316 () Bool)

(declare-fun e!3059019 () Bool)

(declare-fun tp!1377206 () Bool)

(assert (=> b!4893316 (= e!3059019 tp!1377206)))

(declare-fun b!4893315 () Bool)

(assert (=> b!4893315 (= e!3059018 (and (inv!72685 (xs!18058 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) (value!262109 (_1!33526 (get!19478 lt!2004672))))))) e!3059019))))

(assert (=> b!4891348 (= tp!1376723 (and (inv!72677 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) (value!262109 (_1!33526 (get!19478 lt!2004672)))))) e!3059018))))

(assert (= (and b!4891348 ((_ is Node!14742) (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) (value!262109 (_1!33526 (get!19478 lt!2004672))))))) b!4893314))

(assert (= b!4893315 b!4893316))

(assert (= (and b!4891348 ((_ is Leaf!24546) (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))) (value!262109 (_1!33526 (get!19478 lt!2004672))))))) b!4893315))

(declare-fun m!5898388 () Bool)

(assert (=> b!4893314 m!5898388))

(declare-fun m!5898390 () Bool)

(assert (=> b!4893314 m!5898390))

(declare-fun m!5898392 () Bool)

(assert (=> b!4893315 m!5898392))

(assert (=> b!4891348 m!5894866))

(declare-fun b_lambda!194363 () Bool)

(assert (= b_lambda!194343 (or (and b!4890709 b_free!131539) (and b!4891010 b_free!131547 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) (and b!4891741 b_free!131555 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) (and b!4893296 b_free!131563 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) b_lambda!194363)))

(declare-fun b_lambda!194365 () Bool)

(assert (= b_lambda!194357 (or (and b!4890709 b_free!131539) (and b!4891010 b_free!131547 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) (and b!4891741 b_free!131555 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) (and b!4893296 b_free!131563 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) b_lambda!194365)))

(declare-fun b_lambda!194367 () Bool)

(assert (= b_lambda!194361 (or (and b!4890709 b_free!131539) (and b!4891010 b_free!131547 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) (and b!4891741 b_free!131555 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) (and b!4893296 b_free!131563 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) b_lambda!194367)))

(declare-fun b_lambda!194369 () Bool)

(assert (= b_lambda!194323 (or b!4891527 b_lambda!194369)))

(declare-fun bs!1176066 () Bool)

(declare-fun d!1571826 () Bool)

(assert (= bs!1176066 (and d!1571826 b!4891527)))

(assert (=> bs!1176066 (= (dynLambda!22630 lambda!243993 (_1!33527 lt!2005051)) (= (list!17722 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (_1!33527 lt!2005051)))) (list!17722 (_1!33527 lt!2005051))))))

(declare-fun b_lambda!194405 () Bool)

(assert (=> (not b_lambda!194405) (not bs!1176066)))

(declare-fun t!365656 () Bool)

(declare-fun tb!258907 () Bool)

(assert (=> (and b!4890709 (= (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) t!365656) tb!258907))

(declare-fun e!3059020 () Bool)

(declare-fun b!4893317 () Bool)

(declare-fun tp!1377208 () Bool)

(assert (=> b!4893317 (= e!3059020 (and (inv!72677 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (_1!33527 lt!2005051))))) tp!1377208))))

(declare-fun result!322470 () Bool)

(assert (=> tb!258907 (= result!322470 (and (inv!72679 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (_1!33527 lt!2005051)))) e!3059020))))

(assert (= tb!258907 b!4893317))

(declare-fun m!5898394 () Bool)

(assert (=> b!4893317 m!5898394))

(declare-fun m!5898396 () Bool)

(assert (=> tb!258907 m!5898396))

(assert (=> bs!1176066 t!365656))

(declare-fun b_and!344879 () Bool)

(assert (= b_and!344863 (and (=> t!365656 result!322470) b_and!344879)))

(declare-fun t!365658 () Bool)

(declare-fun tb!258909 () Bool)

(assert (=> (and b!4891010 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) t!365658) tb!258909))

(declare-fun result!322472 () Bool)

(assert (= result!322472 result!322470))

(assert (=> bs!1176066 t!365658))

(declare-fun b_and!344881 () Bool)

(assert (= b_and!344865 (and (=> t!365658 result!322472) b_and!344881)))

(declare-fun t!365660 () Bool)

(declare-fun tb!258911 () Bool)

(assert (=> (and b!4891741 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) t!365660) tb!258911))

(declare-fun result!322474 () Bool)

(assert (= result!322474 result!322470))

(assert (=> bs!1176066 t!365660))

(declare-fun b_and!344883 () Bool)

(assert (= b_and!344867 (and (=> t!365660 result!322474) b_and!344883)))

(declare-fun t!365662 () Bool)

(declare-fun tb!258913 () Bool)

(assert (=> (and b!4893296 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) t!365662) tb!258913))

(declare-fun result!322476 () Bool)

(assert (= result!322476 result!322470))

(assert (=> bs!1176066 t!365662))

(declare-fun b_and!344885 () Bool)

(assert (= b_and!344877 (and (=> t!365662 result!322476) b_and!344885)))

(declare-fun b_lambda!194407 () Bool)

(assert (=> (not b_lambda!194407) (not bs!1176066)))

(assert (=> bs!1176066 t!365532))

(declare-fun b_and!344887 () Bool)

(assert (= b_and!344869 (and (=> t!365532 result!322348) b_and!344887)))

(assert (=> bs!1176066 t!365534))

(declare-fun b_and!344889 () Bool)

(assert (= b_and!344871 (and (=> t!365534 result!322350) b_and!344889)))

(assert (=> bs!1176066 t!365536))

(declare-fun b_and!344891 () Bool)

(assert (= b_and!344873 (and (=> t!365536 result!322352) b_and!344891)))

(assert (=> bs!1176066 t!365614))

(declare-fun b_and!344893 () Bool)

(assert (= b_and!344875 (and (=> t!365614 result!322428) b_and!344893)))

(declare-fun m!5898398 () Bool)

(assert (=> bs!1176066 m!5898398))

(declare-fun m!5898400 () Bool)

(assert (=> bs!1176066 m!5898400))

(assert (=> bs!1176066 m!5897534))

(assert (=> bs!1176066 m!5898398))

(assert (=> bs!1176066 m!5895194))

(assert (=> bs!1176066 m!5897534))

(assert (=> d!1571496 d!1571826))

(declare-fun b_lambda!194371 () Bool)

(assert (= b_lambda!194339 (or (and b!4890709 b_free!131539) (and b!4891010 b_free!131547 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) (and b!4891741 b_free!131555 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) (and b!4893296 b_free!131563 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) b_lambda!194371)))

(declare-fun b_lambda!194373 () Bool)

(assert (= b_lambda!194341 (or (and b!4890709 b_free!131541) (and b!4891010 b_free!131549 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))))) (and b!4891741 b_free!131557 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))))) (and b!4893296 b_free!131565 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))))) b_lambda!194373)))

(declare-fun b_lambda!194375 () Bool)

(assert (= b_lambda!194351 (or d!1570550 b_lambda!194375)))

(declare-fun bs!1176067 () Bool)

(declare-fun d!1571828 () Bool)

(assert (= bs!1176067 (and d!1571828 d!1570550)))

(assert (=> bs!1176067 (= (dynLambda!22629 lambda!243979 (h!62853 (t!365275 rulesArg!165))) (ruleValid!3671 thiss!14805 (h!62853 (t!365275 rulesArg!165))))))

(assert (=> bs!1176067 m!5894550))

(assert (=> b!4893067 d!1571828))

(declare-fun b_lambda!194377 () Bool)

(assert (= b_lambda!194327 (or (and b!4890709 b_free!131539 (= (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))))) (and b!4891010 b_free!131547) (and b!4891741 b_free!131555 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))))) (and b!4893296 b_free!131563 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))))) b_lambda!194377)))

(declare-fun b_lambda!194379 () Bool)

(assert (= b_lambda!194353 (or b!4890845 b_lambda!194379)))

(assert (=> d!1571752 d!1570802))

(declare-fun b_lambda!194381 () Bool)

(assert (= b_lambda!194313 (or d!1570734 b_lambda!194381)))

(declare-fun bs!1176068 () Bool)

(declare-fun d!1571830 () Bool)

(assert (= bs!1176068 (and d!1571830 d!1570734)))

(declare-fun res!2089831 () Bool)

(declare-fun e!3059021 () Bool)

(assert (=> bs!1176068 (=> res!2089831 e!3059021)))

(assert (=> bs!1176068 (= res!2089831 (not (= (list!17722 (_1!33527 lt!2004658)) (list!17722 (seqFromList!5936 (list!17722 (_1!33527 lt!2004658)))))))))

(assert (=> bs!1176068 (= (dynLambda!22634 lambda!243997 (_1!33527 lt!2004658) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658)))) e!3059021)))

(declare-fun b!4893318 () Bool)

(assert (=> b!4893318 (= e!3059021 (= (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (_1!33527 lt!2004658)) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (seqFromList!5936 (list!17722 (_1!33527 lt!2004658))))))))

(assert (= (and bs!1176068 (not res!2089831)) b!4893318))

(declare-fun b_lambda!194409 () Bool)

(assert (=> (not b_lambda!194409) (not b!4893318)))

(assert (=> b!4893318 t!365305))

(declare-fun b_and!344895 () Bool)

(assert (= b_and!344887 (and (=> t!365305 result!322122) b_and!344895)))

(assert (=> b!4893318 t!365307))

(declare-fun b_and!344897 () Bool)

(assert (= b_and!344889 (and (=> t!365307 result!322124) b_and!344897)))

(assert (=> b!4893318 t!365335))

(declare-fun b_and!344899 () Bool)

(assert (= b_and!344891 (and (=> t!365335 result!322156) b_and!344899)))

(assert (=> b!4893318 t!365622))

(declare-fun b_and!344901 () Bool)

(assert (= b_and!344893 (and (=> t!365622 result!322436) b_and!344901)))

(declare-fun b_lambda!194411 () Bool)

(assert (=> (not b_lambda!194411) (not b!4893318)))

(assert (=> b!4893318 t!365309))

(declare-fun b_and!344903 () Bool)

(assert (= b_and!344895 (and (=> t!365309 result!322126) b_and!344903)))

(assert (=> b!4893318 t!365311))

(declare-fun b_and!344905 () Bool)

(assert (= b_and!344897 (and (=> t!365311 result!322128) b_and!344905)))

(assert (=> b!4893318 t!365337))

(declare-fun b_and!344907 () Bool)

(assert (= b_and!344899 (and (=> t!365337 result!322158) b_and!344907)))

(assert (=> b!4893318 t!365612))

(declare-fun b_and!344909 () Bool)

(assert (= b_and!344901 (and (=> t!365612 result!322426) b_and!344909)))

(assert (=> bs!1176068 m!5894342))

(assert (=> bs!1176068 m!5894348))

(assert (=> bs!1176068 m!5895312))

(assert (=> b!4893318 m!5895310))

(assert (=> b!4893318 m!5894348))

(assert (=> b!4893318 m!5895308))

(assert (=> d!1571448 d!1571830))

(declare-fun b_lambda!194383 () Bool)

(assert (= b_lambda!194335 (or (and b!4890709 b_free!131541) (and b!4891010 b_free!131549 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))))) (and b!4891741 b_free!131557 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))))) (and b!4893296 b_free!131565 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))))) b_lambda!194383)))

(declare-fun b_lambda!194385 () Bool)

(assert (= b_lambda!194321 (or (and b!4890709 b_free!131539 (= (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))))) (and b!4891010 b_free!131547) (and b!4891741 b_free!131555 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))))) (and b!4893296 b_free!131563 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))))) b_lambda!194385)))

(declare-fun b_lambda!194387 () Bool)

(assert (= b_lambda!194315 (or b!4890845 b_lambda!194387)))

(assert (=> d!1571468 d!1570806))

(declare-fun b_lambda!194389 () Bool)

(assert (= b_lambda!194319 (or (and b!4890709 b_free!131539 (= (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))))) (and b!4891010 b_free!131547) (and b!4891741 b_free!131555 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))))) (and b!4893296 b_free!131563 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))))) b_lambda!194389)))

(declare-fun b_lambda!194391 () Bool)

(assert (= b_lambda!194345 (or (and b!4890709 b_free!131539) (and b!4891010 b_free!131547 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) (and b!4891741 b_free!131555 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) (and b!4893296 b_free!131563 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) b_lambda!194391)))

(declare-fun b_lambda!194393 () Bool)

(assert (= b_lambda!194331 (or d!1570510 b_lambda!194393)))

(declare-fun bs!1176069 () Bool)

(declare-fun d!1571832 () Bool)

(assert (= bs!1176069 (and d!1571832 d!1570510)))

(assert (=> bs!1176069 (= (dynLambda!22629 lambda!243978 (h!62853 (t!365275 rulesArg!165))) (ruleValid!3671 thiss!14805 (h!62853 (t!365275 rulesArg!165))))))

(assert (=> bs!1176069 m!5894550))

(assert (=> b!4892923 d!1571832))

(declare-fun b_lambda!194395 () Bool)

(assert (= b_lambda!194127 (or (and b!4890709 b_free!131541 (= (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))))) (and b!4891010 b_free!131549 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))))) (and b!4891741 b_free!131557 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))))) (and b!4893296 b_free!131565 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toChars!10924 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))))) b_lambda!194395)))

(declare-fun b_lambda!194397 () Bool)

(assert (= b_lambda!194337 (or (and b!4890709 b_free!131539) (and b!4891010 b_free!131547 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) (and b!4891741 b_free!131555 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) (and b!4893296 b_free!131563 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))))) b_lambda!194397)))

(declare-fun b_lambda!194399 () Bool)

(assert (= b_lambda!194129 (or (and b!4890709 b_free!131539 (= (toValue!11065 (transformation!8174 (h!62853 rulesArg!165))) (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))))) (and b!4891010 b_free!131547 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))))) (and b!4891741 b_free!131555 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))))) (and b!4893296 b_free!131563 (= (toValue!11065 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toValue!11065 (transformation!8174 (rule!11358 (_1!33526 (get!19478 lt!2004672))))))) b_lambda!194399)))

(declare-fun b_lambda!194401 () Bool)

(assert (= b_lambda!194359 (or (and b!4890709 b_free!131541) (and b!4891010 b_free!131549 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))))) (and b!4891741 b_free!131557 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))))) (and b!4893296 b_free!131565 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))))) b_lambda!194401)))

(declare-fun b_lambda!194403 () Bool)

(assert (= b_lambda!194325 (or b!4891527 b_lambda!194403)))

(declare-fun bs!1176070 () Bool)

(declare-fun d!1571834 () Bool)

(assert (= bs!1176070 (and d!1571834 b!4891527)))

(assert (=> bs!1176070 (= (dynLambda!22630 lambda!243993 (seqFromList!5936 (list!17722 (_1!33527 lt!2005051)))) (= (list!17722 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (seqFromList!5936 (list!17722 (_1!33527 lt!2005051)))))) (list!17722 (seqFromList!5936 (list!17722 (_1!33527 lt!2005051))))))))

(declare-fun b_lambda!194413 () Bool)

(assert (=> (not b_lambda!194413) (not bs!1176070)))

(declare-fun t!365664 () Bool)

(declare-fun tb!258915 () Bool)

(assert (=> (and b!4890709 (= (toChars!10924 (transformation!8174 (h!62853 rulesArg!165))) (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) t!365664) tb!258915))

(declare-fun tp!1377209 () Bool)

(declare-fun e!3059022 () Bool)

(declare-fun b!4893319 () Bool)

(assert (=> b!4893319 (= e!3059022 (and (inv!72677 (c!831175 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (seqFromList!5936 (list!17722 (_1!33527 lt!2005051))))))) tp!1377209))))

(declare-fun result!322478 () Bool)

(assert (=> tb!258915 (= result!322478 (and (inv!72679 (dynLambda!22627 (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (dynLambda!22628 (toValue!11065 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (seqFromList!5936 (list!17722 (_1!33527 lt!2005051)))))) e!3059022))))

(assert (= tb!258915 b!4893319))

(declare-fun m!5898402 () Bool)

(assert (=> b!4893319 m!5898402))

(declare-fun m!5898404 () Bool)

(assert (=> tb!258915 m!5898404))

(assert (=> bs!1176070 t!365664))

(declare-fun b_and!344911 () Bool)

(assert (= b_and!344879 (and (=> t!365664 result!322478) b_and!344911)))

(declare-fun t!365666 () Bool)

(declare-fun tb!258917 () Bool)

(assert (=> (and b!4891010 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165)))) (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) t!365666) tb!258917))

(declare-fun result!322480 () Bool)

(assert (= result!322480 result!322478))

(assert (=> bs!1176070 t!365666))

(declare-fun b_and!344913 () Bool)

(assert (= b_and!344881 (and (=> t!365666 result!322480) b_and!344913)))

(declare-fun t!365668 () Bool)

(declare-fun tb!258919 () Bool)

(assert (=> (and b!4891741 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 rulesArg!165))))) (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) t!365668) tb!258919))

(declare-fun result!322482 () Bool)

(assert (= result!322482 result!322478))

(assert (=> bs!1176070 t!365668))

(declare-fun b_and!344915 () Bool)

(assert (= b_and!344883 (and (=> t!365668 result!322482) b_and!344915)))

(declare-fun t!365670 () Bool)

(declare-fun tb!258921 () Bool)

(assert (=> (and b!4893296 (= (toChars!10924 (transformation!8174 (h!62853 (t!365275 (t!365275 (t!365275 rulesArg!165)))))) (toChars!10924 (transformation!8174 (h!62853 (t!365275 rulesArg!165))))) t!365670) tb!258921))

(declare-fun result!322484 () Bool)

(assert (= result!322484 result!322478))

(assert (=> bs!1176070 t!365670))

(declare-fun b_and!344917 () Bool)

(assert (= b_and!344885 (and (=> t!365670 result!322484) b_and!344917)))

(declare-fun b_lambda!194415 () Bool)

(assert (=> (not b_lambda!194415) (not bs!1176070)))

(assert (=> bs!1176070 t!365538))

(declare-fun b_and!344919 () Bool)

(assert (= b_and!344903 (and (=> t!365538 result!322354) b_and!344919)))

(assert (=> bs!1176070 t!365540))

(declare-fun b_and!344921 () Bool)

(assert (= b_and!344905 (and (=> t!365540 result!322356) b_and!344921)))

(assert (=> bs!1176070 t!365542))

(declare-fun b_and!344923 () Bool)

(assert (= b_and!344907 (and (=> t!365542 result!322358) b_and!344923)))

(assert (=> bs!1176070 t!365632))

(declare-fun b_and!344925 () Bool)

(assert (= b_and!344909 (and (=> t!365632 result!322446) b_and!344925)))

(declare-fun m!5898406 () Bool)

(assert (=> bs!1176070 m!5898406))

(declare-fun m!5898408 () Bool)

(assert (=> bs!1176070 m!5898408))

(assert (=> bs!1176070 m!5897532))

(assert (=> bs!1176070 m!5898406))

(assert (=> bs!1176070 m!5895200))

(assert (=> bs!1176070 m!5897536))

(assert (=> bs!1176070 m!5895200))

(assert (=> bs!1176070 m!5897532))

(assert (=> d!1571502 d!1571834))

(check-sat (not b!4893221) (not b!4892715) (not d!1571346) (not b!4893243) (not b!4892718) (not d!1571440) (not b!4892796) (not b!4892836) (not b!4893173) (not b!4892773) (not d!1571408) (not b!4893144) (not b!4892618) (not bm!339350) (not b!4892805) (not d!1571576) (not bm!339369) (not b!4893111) (not b!4892621) (not b!4892848) (not bm!339376) (not bm!339325) (not b!4892800) (not b!4893056) (not bm!339373) (not b!4892897) (not d!1571798) (not b!4893169) (not b!4893029) (not b!4893317) (not b!4892974) (not bm!339343) (not b!4892547) (not bm!339327) (not d!1571454) (not b!4893174) (not b!4893207) (not d!1571758) (not b!4893319) (not b!4893204) (not d!1571776) (not d!1571722) (not d!1571672) (not b!4892817) (not b!4892567) (not b!4893101) (not b!4892596) (not bm!339338) (not b!4892784) (not b!4893275) (not b!4892624) (not b!4892906) (not b_next!132331) (not d!1571486) (not b!4892625) (not d!1571430) (not b!4892613) (not b!4893264) (not b!4893230) (not b!4892776) (not d!1571374) (not b!4893038) (not b!4893226) (not b!4892711) (not d!1571406) (not d!1571500) (not b_lambda!194309) (not b!4893252) (not bm!339387) b_and!344921 (not bm!339319) (not d!1571538) (not b_lambda!194175) (not b!4893106) (not b!4893021) (not b!4892997) (not b!4892582) (not d!1571698) (not bm!339371) (not b!4893214) (not bm!339320) (not d!1571712) (not d!1571434) (not d!1571424) (not b!4892539) (not bm!339335) (not d!1571502) (not b!4892642) (not b_lambda!194199) (not d!1571664) (not d!1571596) b_and!344913 (not b!4893211) (not tb!258767) (not b!4892917) (not d!1571614) (not b!4892893) (not tb!258809) (not d!1571764) (not b!4892767) tp_is_empty!35779 (not b!4893311) (not b!4892587) (not b!4893283) (not b!4893026) (not b!4893267) (not d!1571658) (not b!4892763) (not b!4892998) (not b!4892840) (not b!4892837) (not b!4893073) (not d!1571806) (not b!4893276) (not b_lambda!194387) (not d!1571610) (not b!4893167) (not b!4893163) (not b!4893284) (not b!4892816) (not b!4893245) (not d!1571682) (not d!1571802) (not b!4893190) (not tb!258815) (not b!4893148) (not b!4892675) (not d!1571600) (not b!4893183) (not d!1571376) (not b!4893302) (not b!4893085) (not bs!1176067) (not b!4892617) (not b!4893289) (not b!4892544) (not b_lambda!194169) (not b!4893048) (not b!4893208) (not d!1571448) (not bm!339362) (not b!4893149) (not d!1571616) (not b!4893168) (not b!4893066) (not b!4893259) (not b!4893040) (not b!4892994) (not bm!339324) (not b!4892558) (not b!4893210) (not b!4893292) (not d!1571544) (not tb!258773) (not b!4892835) (not b!4893115) (not b!4893191) (not d!1571736) (not d!1571590) (not b!4892928) (not d!1571392) (not b_lambda!194371) (not b_next!132345) (not bm!339353) (not b!4893140) (not b!4892806) (not b!4893171) (not bm!339340) (not b!4892814) (not d!1571760) (not b!4893027) (not b!4892556) (not b!4893058) (not b!4892901) (not d!1571564) (not b!4892859) (not b!4893166) (not b!4892570) (not b!4892912) (not b_lambda!194411) (not b!4892651) (not b!4893295) (not b!4892645) (not d!1571690) (not b!4892615) (not b!4892961) (not tb!258915) (not bm!339339) (not b!4893155) (not b!4892861) (not b!4893146) (not b!4893036) (not d!1571330) (not tb!258851) (not b!4893255) (not b!4892540) (not tb!258821) (not bm!339332) (not bm!339330) (not b!4892664) (not d!1571512) (not tb!258785) (not b!4893011) (not d!1571718) (not b!4892863) (not b_lambda!194171) (not bm!339391) (not b!4893315) (not tb!258803) (not b!4893074) (not bm!339328) (not b!4893261) (not b_lambda!194333) (not d!1571674) (not b!4892586) (not b!4892936) (not b!4892658) (not b!4893219) (not d!1571394) (not b!4892948) (not bs!1176066) (not b!4891742) (not b!4893199) (not b!4892714) (not bs!1176070) (not b_next!132337) (not d!1571518) (not b!4892576) (not b!4893186) (not d!1571556) (not b!4893053) (not b!4893307) (not b!4892828) (not b!4893094) (not b!4892579) (not b!4892931) (not b!4892729) (not b_lambda!194349) (not b!4893079) (not b!4893133) (not b!4893104) (not bm!339323) (not bm!339329) (not b!4892775) (not b!4892980) (not b!4893162) (not b!4893202) (not bm!339382) (not b!4893233) (not b_lambda!194363) (not b!4893068) (not b!4893043) (not d!1571526) (not b!4892966) (not b!4892821) (not b!4892676) (not b!4892771) (not b!4892779) (not b!4892887) (not d!1571634) (not b!4892609) (not b!4892668) (not b_lambda!194407) (not b!4892774) (not b!4893257) (not b!4892810) (not b!4893316) (not b!4893016) (not b!4893314) (not b!4892758) (not b!4892934) (not bm!339390) (not b!4893063) (not b!4893312) (not d!1571762) (not bm!339388) (not b!4893013) (not b!4893165) (not d!1571338) (not d!1571732) (not b_lambda!194375) (not b_lambda!194311) (not b_lambda!194409) (not b!4892699) (not b!4893182) (not b!4893265) b_and!344917 (not b!4893225) (not b!4892878) (not b!4892787) (not b_lambda!194403) (not b!4893078) (not bm!339366) (not bm!339367) (not b!4893123) (not b!4893028) (not b!4893228) (not b!4892616) (not b!4892574) (not b!4892598) (not b!4893299) (not b!4892764) (not b!4892854) (not d!1571530) (not d!1571508) (not b!4893285) (not b_next!132347) (not b!4893268) (not b!4893129) (not b!4892580) (not d!1571474) (not d!1571420) (not b!4893242) (not b!4893303) (not b!4892834) (not b!4892622) (not b!4893306) (not d!1571328) (not bm!339393) (not b!4892862) (not b!4893218) (not b!4893298) (not d!1571516) (not d!1571476) (not b!4892919) (not b!4892894) (not bm!339375) (not b!4892905) (not b!4892989) (not b!4891731) (not d!1571540) (not b!4892886) (not b!4893025) (not b!4893080) (not b!4893081) (not b!4892631) (not b!4893057) (not b!4892543) (not b!4892883) (not d!1571666) (not b!4893313) (not b!4892937) (not b!4893160) (not b!4892627) (not b!4892924) (not tb!258857) (not b!4893215) (not d!1571546) (not bm!339368) (not d!1571492) (not b!4893138) (not b!4892880) (not d!1571426) (not b_next!132353) (not b!4892888) (not b!4893120) (not b!4892833) (not b!4893137) (not d!1571808) (not bm!339341) (not b!4892662) (not d!1571562) (not b!4892944) (not d!1571550) (not b!4893220) (not b_lambda!194195) (not d!1571380) (not b!4893062) (not bm!339326) (not b!4892882) (not d!1571536) (not b!4893000) (not tb!258827) (not b!4893170) (not d!1571566) (not d!1571580) (not b!4892826) (not b!4892602) (not b!4892951) (not b!4893277) (not bm!339381) (not b!4893179) (not b_lambda!194347) (not b!4892591) (not b!4893015) (not b!4893089) (not d!1571572) (not b_lambda!194165) (not b!4891348) (not d!1571818) (not b_lambda!194395) (not d!1571360) (not d!1571490) (not b_lambda!194369) (not b!4892769) (not d!1571678) (not d!1571542) (not b!4892533) (not b!4893121) (not b!4892727) (not d!1571608) (not b_lambda!194401) (not b!4893249) (not b_lambda!194373) (not b!4892563) (not b_next!132339) (not b_lambda!194383) (not tb!258779) (not b!4893248) (not b_lambda!194385) (not b!4893019) (not b!4893279) (not d!1571456) (not d!1571442) (not d!1571628) (not b!4893175) (not b!4892930) (not b!4893088) (not d!1571816) (not d!1571588) (not b!4892552) (not b_lambda!194317) (not b!4893244) (not b!4893251) b_and!344923 (not d!1571592) (not b!4893143) (not bm!339317) (not bm!339336) (not tb!258797) b_and!344919 (not b!4892788) (not b!4893031) (not d!1571612) (not d!1571794) (not b!4892847) (not b!4893222) (not b!4893151) (not b!4893310) (not bm!339337) (not b!4892766) (not bm!339334) (not b!4893187) (not b!4892534) b_and!344925 (not d!1571742) (not b!4892795) (not d!1571660) (not b_lambda!194397) (not b!4893064) (not b!4892926) (not b!4892850) (not b!4892942) (not b_lambda!194329) (not tb!258839) (not b!4893198) (not b!4893009) (not b!4893293) (not b!4892537) (not bm!339333) (not b!4893059) (not b_lambda!194355) (not d!1571432) (not b!4892670) (not b!4893023) (not b!4893004) (not b!4893156) (not b!4892921) (not b!4892661) (not b!4892965) (not b!4892545) (not bm!339321) (not b!4893194) (not b!4892825) (not b!4893234) (not b!4892723) (not d!1571410) (not b!4892881) (not d!1571358) (not b!4892593) (not b!4893082) (not d!1571460) (not bm!339377) (not b_lambda!194413) (not bm!339392) (not b!4893240) (not b!4893212) (not b!4893135) (not b_lambda!194399) (not b!4893280) (not b!4893263) (not b!4893086) (not b!4892716) (not b!4893091) (not b!4893200) (not b!4893223) (not b!4893102) (not b!4893236) (not b!4893247) (not b!4892978) (not b_lambda!194365) (not d!1571714) (not b!4893237) (not d!1571554) (not b!4892939) (not b!4893229) (not d!1571812) (not b!4892578) (not b!4892898) (not d!1571602) (not d!1571652) (not bs!1176068) (not b!4893192) (not b!4892626) (not b!4893272) b_and!344911 (not b!4893069) (not b!4892611) (not b!4892710) (not b!4892902) (not b!4893041) (not b!4892772) (not b!4892706) (not bm!339316) (not b!4893077) (not d!1571770) (not b!4891728) (not b!4893181) (not b!4892536) (not b!4892813) (not b!4892839) (not b!4892973) (not b!4893054) (not d!1571462) (not bm!339364) (not tb!258791) (not b!4892789) (not b!4893178) (not b!4893098) (not b!4892705) (not d!1571352) (not d!1571494) (not b!4893099) (not b!4892915) (not d!1571796) (not b!4893110) (not b!4892538) (not b!4892649) (not b!4892643) (not d!1571534) (not b!4893131) (not d!1571496) (not b!4892791) (not b!4893271) (not b!4893005) (not b!4892619) (not d!1571710) (not b!4892535) (not d!1571694) (not b!4893281) (not b!4893196) (not b!4893203) (not bm!339383) (not b!4892623) (not d!1571390) (not d!1571772) (not b!4892783) (not bm!339374) (not b!4892992) (not b_lambda!194367) (not b!4893205) (not b!4892655) (not d!1571642) (not b_lambda!194381) (not b!4893093) (not b!4892551) (not d!1571514) (not b!4893304) (not b_lambda!194167) (not d!1571478) (not d!1571638) (not b!4892964) (not d!1571696) (not b!4892722) (not b!4893177) (not bm!339352) (not b!4893076) (not b!4892605) (not bm!339331) (not b!4893260) (not b_next!132329) (not d!1571654) (not b!4892891) (not d!1571378) (not d!1571356) (not b!4892967) (not b!4892873) (not b!4893291) (not b!4892778) (not d!1571820) (not b!4892884) (not b!4893287) (not b!4891743) (not b!4892933) (not b!4893238) (not b!4893189) (not b!4892855) (not bm!339380) (not b!4892875) (not d!1571626) (not d!1571570) (not d!1571792) (not d!1571422) (not b!4893288) (not b!4893253) (not b!4893185) (not b!4893195) (not b!4892822) (not b_next!132355) (not tb!258833) (not bm!339342) (not b!4892876) (not b!4893097) (not b!4893083) (not b_lambda!194389) (not bm!339379) (not b!4893206) (not d!1571640) (not b!4892803) (not b!4892832) (not b!4892630) (not b!4893308) (not bm!339385) (not b!4893294) (not b_lambda!194405) (not tb!258845) (not b!4892561) (not bm!339318) (not b_lambda!194391) (not b!4892802) (not d!1571470) (not d!1571548) b_and!344915 (not b!4892542) (not b!4893300) (not b!4892969) (not b!4893117) (not bm!339322) (not tb!258907) (not b_lambda!194415) (not b!4892962) (not b_lambda!194379) (not b!4893232) (not d!1571702) (not d!1571488) (not b!4893273) (not d!1571348) (not b!4893017) (not d!1571676) (not d!1571768) (not b!4892807) (not b!4893241) (not b!4893256) (not b!4892666) (not b!4892916) (not bs!1176069) (not d!1571336) (not b!4892830) (not b!4892762) (not b_lambda!194197) (not b!4893224) (not d!1571578) (not b!4893269) (not d!1571774) (not d!1571382) (not b!4893035) (not b_lambda!194193) (not b!4892959) (not b!4892768) (not b!4893060) (not bm!339378) (not b_lambda!194377) (not b_lambda!194173) (not b_lambda!194393) (not b!4893216))
(check-sat (not b_next!132331) b_and!344921 b_and!344913 (not b_next!132345) (not b_next!132337) b_and!344917 (not b_next!132347) (not b_next!132353) (not b_next!132339) b_and!344925 b_and!344911 (not b_next!132329) (not b_next!132355) b_and!344915 b_and!344923 b_and!344919)
