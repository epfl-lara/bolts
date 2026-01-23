; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!387704 () Bool)

(assert start!387704)

(declare-fun b!4094598 () Bool)

(declare-fun b_free!114473 () Bool)

(declare-fun b_next!115177 () Bool)

(assert (=> b!4094598 (= b_free!114473 (not b_next!115177))))

(declare-fun tp!1239376 () Bool)

(declare-fun b_and!315811 () Bool)

(assert (=> b!4094598 (= tp!1239376 b_and!315811)))

(declare-fun b_free!114475 () Bool)

(declare-fun b_next!115179 () Bool)

(assert (=> b!4094598 (= b_free!114475 (not b_next!115179))))

(declare-fun tp!1239382 () Bool)

(declare-fun b_and!315813 () Bool)

(assert (=> b!4094598 (= tp!1239382 b_and!315813)))

(declare-fun b!4094607 () Bool)

(declare-fun b_free!114477 () Bool)

(declare-fun b_next!115181 () Bool)

(assert (=> b!4094607 (= b_free!114477 (not b_next!115181))))

(declare-fun tp!1239381 () Bool)

(declare-fun b_and!315815 () Bool)

(assert (=> b!4094607 (= tp!1239381 b_and!315815)))

(declare-fun b_free!114479 () Bool)

(declare-fun b_next!115183 () Bool)

(assert (=> b!4094607 (= b_free!114479 (not b_next!115183))))

(declare-fun tp!1239380 () Bool)

(declare-fun b_and!315817 () Bool)

(assert (=> b!4094607 (= tp!1239380 b_and!315817)))

(declare-fun b!4094592 () Bool)

(declare-fun e!2540991 () Bool)

(declare-fun e!2540992 () Bool)

(assert (=> b!4094592 (= e!2540991 (not e!2540992))))

(declare-fun res!1673583 () Bool)

(assert (=> b!4094592 (=> res!1673583 e!2540992)))

(declare-datatypes ((List!44019 0))(
  ( (Nil!43895) (Cons!43895 (h!49315 (_ BitVec 16)) (t!339162 List!44019)) )
))
(declare-datatypes ((TokenValue!7332 0))(
  ( (FloatLiteralValue!14664 (text!51769 List!44019)) (TokenValueExt!7331 (__x!26881 Int)) (Broken!36660 (value!223033 List!44019)) (Object!7455) (End!7332) (Def!7332) (Underscore!7332) (Match!7332) (Else!7332) (Error!7332) (Case!7332) (If!7332) (Extends!7332) (Abstract!7332) (Class!7332) (Val!7332) (DelimiterValue!14664 (del!7392 List!44019)) (KeywordValue!7338 (value!223034 List!44019)) (CommentValue!14664 (value!223035 List!44019)) (WhitespaceValue!14664 (value!223036 List!44019)) (IndentationValue!7332 (value!223037 List!44019)) (String!50409) (Int32!7332) (Broken!36661 (value!223038 List!44019)) (Boolean!7333) (Unit!63432) (OperatorValue!7335 (op!7392 List!44019)) (IdentifierValue!14664 (value!223039 List!44019)) (IdentifierValue!14665 (value!223040 List!44019)) (WhitespaceValue!14665 (value!223041 List!44019)) (True!14664) (False!14664) (Broken!36662 (value!223042 List!44019)) (Broken!36663 (value!223043 List!44019)) (True!14665) (RightBrace!7332) (RightBracket!7332) (Colon!7332) (Null!7332) (Comma!7332) (LeftBracket!7332) (False!14665) (LeftBrace!7332) (ImaginaryLiteralValue!7332 (text!51770 List!44019)) (StringLiteralValue!21996 (value!223044 List!44019)) (EOFValue!7332 (value!223045 List!44019)) (IdentValue!7332 (value!223046 List!44019)) (DelimiterValue!14665 (value!223047 List!44019)) (DedentValue!7332 (value!223048 List!44019)) (NewLineValue!7332 (value!223049 List!44019)) (IntegerValue!21996 (value!223050 (_ BitVec 32)) (text!51771 List!44019)) (IntegerValue!21997 (value!223051 Int) (text!51772 List!44019)) (Times!7332) (Or!7332) (Equal!7332) (Minus!7332) (Broken!36664 (value!223052 List!44019)) (And!7332) (Div!7332) (LessEqual!7332) (Mod!7332) (Concat!19339) (Not!7332) (Plus!7332) (SpaceValue!7332 (value!223053 List!44019)) (IntegerValue!21998 (value!223054 Int) (text!51773 List!44019)) (StringLiteralValue!21997 (text!51774 List!44019)) (FloatLiteralValue!14665 (text!51775 List!44019)) (BytesLiteralValue!7332 (value!223055 List!44019)) (CommentValue!14665 (value!223056 List!44019)) (StringLiteralValue!21998 (value!223057 List!44019)) (ErrorTokenValue!7332 (msg!7393 List!44019)) )
))
(declare-datatypes ((C!24200 0))(
  ( (C!24201 (val!14210 Int)) )
))
(declare-datatypes ((Regex!12007 0))(
  ( (ElementMatch!12007 (c!705706 C!24200)) (Concat!19340 (regOne!24526 Regex!12007) (regTwo!24526 Regex!12007)) (EmptyExpr!12007) (Star!12007 (reg!12336 Regex!12007)) (EmptyLang!12007) (Union!12007 (regOne!24527 Regex!12007) (regTwo!24527 Regex!12007)) )
))
(declare-datatypes ((String!50410 0))(
  ( (String!50411 (value!223058 String)) )
))
(declare-datatypes ((List!44020 0))(
  ( (Nil!43896) (Cons!43896 (h!49316 C!24200) (t!339163 List!44020)) )
))
(declare-datatypes ((IArray!26631 0))(
  ( (IArray!26632 (innerList!13373 List!44020)) )
))
(declare-datatypes ((Conc!13313 0))(
  ( (Node!13313 (left!32998 Conc!13313) (right!33328 Conc!13313) (csize!26856 Int) (cheight!13524 Int)) (Leaf!20579 (xs!16619 IArray!26631) (csize!26857 Int)) (Empty!13313) )
))
(declare-datatypes ((BalanceConc!26220 0))(
  ( (BalanceConc!26221 (c!705707 Conc!13313)) )
))
(declare-datatypes ((TokenValueInjection!14092 0))(
  ( (TokenValueInjection!14093 (toValue!9702 Int) (toChars!9561 Int)) )
))
(declare-datatypes ((Rule!14004 0))(
  ( (Rule!14005 (regex!7102 Regex!12007) (tag!7962 String!50410) (isSeparator!7102 Bool) (transformation!7102 TokenValueInjection!14092)) )
))
(declare-fun r!4213 () Rule!14004)

(declare-fun p!2988 () List!44020)

(declare-fun matchR!5948 (Regex!12007 List!44020) Bool)

(assert (=> b!4094592 (= res!1673583 (not (matchR!5948 (regex!7102 r!4213) p!2988)))))

(declare-datatypes ((LexerInterface!6691 0))(
  ( (LexerInterfaceExt!6688 (__x!26882 Int)) (Lexer!6689) )
))
(declare-fun thiss!26199 () LexerInterface!6691)

(declare-fun ruleValid!3022 (LexerInterface!6691 Rule!14004) Bool)

(assert (=> b!4094592 (ruleValid!3022 thiss!26199 r!4213)))

(declare-datatypes ((List!44021 0))(
  ( (Nil!43897) (Cons!43897 (h!49317 Rule!14004) (t!339164 List!44021)) )
))
(declare-fun rules!3870 () List!44021)

(declare-datatypes ((Unit!63433 0))(
  ( (Unit!63434) )
))
(declare-fun lt!1464611 () Unit!63433)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2088 (LexerInterface!6691 Rule!14004 List!44021) Unit!63433)

(assert (=> b!4094592 (= lt!1464611 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2088 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4094593 () Bool)

(declare-fun res!1673573 () Bool)

(assert (=> b!4094593 (=> res!1673573 e!2540992)))

(get-info :version)

(assert (=> b!4094593 (= res!1673573 (or (and ((_ is Cons!43897) rules!3870) (= (h!49317 rules!3870) r!4213)) (not ((_ is Cons!43897) rules!3870)) (= (h!49317 rules!3870) r!4213)))))

(declare-fun b!4094595 () Bool)

(declare-fun e!2540987 () Bool)

(declare-fun tp_is_empty!21017 () Bool)

(declare-fun tp!1239378 () Bool)

(assert (=> b!4094595 (= e!2540987 (and tp_is_empty!21017 tp!1239378))))

(declare-fun b!4094596 () Bool)

(declare-fun e!2540984 () Bool)

(declare-fun e!2540994 () Bool)

(declare-fun tp!1239383 () Bool)

(assert (=> b!4094596 (= e!2540984 (and e!2540994 tp!1239383))))

(declare-fun b!4094597 () Bool)

(declare-fun res!1673581 () Bool)

(declare-fun e!2540989 () Bool)

(assert (=> b!4094597 (=> (not res!1673581) (not e!2540989))))

(declare-fun isEmpty!26259 (List!44020) Bool)

(assert (=> b!4094597 (= res!1673581 (not (isEmpty!26259 p!2988)))))

(declare-fun e!2540985 () Bool)

(assert (=> b!4094598 (= e!2540985 (and tp!1239376 tp!1239382))))

(declare-fun b!4094599 () Bool)

(declare-fun res!1673576 () Bool)

(assert (=> b!4094599 (=> (not res!1673576) (not e!2540989))))

(declare-fun rulesInvariant!6034 (LexerInterface!6691 List!44021) Bool)

(assert (=> b!4094599 (= res!1673576 (rulesInvariant!6034 thiss!26199 rules!3870))))

(declare-fun b!4094600 () Bool)

(assert (=> b!4094600 (= e!2540989 e!2540991)))

(declare-fun res!1673577 () Bool)

(assert (=> b!4094600 (=> (not res!1673577) (not e!2540991))))

(declare-fun input!3411 () List!44020)

(declare-datatypes ((Token!13330 0))(
  ( (Token!13331 (value!223059 TokenValue!7332) (rule!10250 Rule!14004) (size!32794 Int) (originalCharacters!7696 List!44020)) )
))
(declare-datatypes ((tuple2!42828 0))(
  ( (tuple2!42829 (_1!24548 Token!13330) (_2!24548 List!44020)) )
))
(declare-datatypes ((Option!9508 0))(
  ( (None!9507) (Some!9507 (v!40001 tuple2!42828)) )
))
(declare-fun lt!1464614 () Option!9508)

(declare-fun maxPrefix!3981 (LexerInterface!6691 List!44021 List!44020) Option!9508)

(assert (=> b!4094600 (= res!1673577 (= (maxPrefix!3981 thiss!26199 rules!3870 input!3411) lt!1464614))))

(declare-fun suffix!1518 () List!44020)

(declare-fun lt!1464612 () BalanceConc!26220)

(declare-fun apply!10285 (TokenValueInjection!14092 BalanceConc!26220) TokenValue!7332)

(declare-fun size!32795 (List!44020) Int)

(assert (=> b!4094600 (= lt!1464614 (Some!9507 (tuple2!42829 (Token!13331 (apply!10285 (transformation!7102 r!4213) lt!1464612) r!4213 (size!32795 p!2988) p!2988) suffix!1518)))))

(declare-fun lt!1464608 () Unit!63433)

(declare-fun lemmaSemiInverse!2069 (TokenValueInjection!14092 BalanceConc!26220) Unit!63433)

(assert (=> b!4094600 (= lt!1464608 (lemmaSemiInverse!2069 (transformation!7102 r!4213) lt!1464612))))

(declare-fun seqFromList!5319 (List!44020) BalanceConc!26220)

(assert (=> b!4094600 (= lt!1464612 (seqFromList!5319 p!2988))))

(declare-fun b!4094601 () Bool)

(declare-fun e!2540986 () Bool)

(declare-fun tp!1239384 () Bool)

(assert (=> b!4094601 (= e!2540986 (and tp_is_empty!21017 tp!1239384))))

(declare-fun tp!1239375 () Bool)

(declare-fun b!4094602 () Bool)

(declare-fun inv!58622 (String!50410) Bool)

(declare-fun inv!58624 (TokenValueInjection!14092) Bool)

(assert (=> b!4094602 (= e!2540994 (and tp!1239375 (inv!58622 (tag!7962 (h!49317 rules!3870))) (inv!58624 (transformation!7102 (h!49317 rules!3870))) e!2540985))))

(declare-fun b!4094603 () Bool)

(declare-fun e!2540983 () Bool)

(declare-fun tp!1239379 () Bool)

(assert (=> b!4094603 (= e!2540983 (and tp_is_empty!21017 tp!1239379))))

(declare-fun b!4094604 () Bool)

(declare-fun res!1673578 () Bool)

(assert (=> b!4094604 (=> (not res!1673578) (not e!2540989))))

(declare-fun isEmpty!26260 (List!44021) Bool)

(assert (=> b!4094604 (= res!1673578 (not (isEmpty!26260 rules!3870)))))

(declare-fun b!4094594 () Bool)

(declare-fun e!2540995 () Bool)

(assert (=> b!4094594 (= e!2540992 e!2540995)))

(declare-fun res!1673580 () Bool)

(assert (=> b!4094594 (=> res!1673580 e!2540995)))

(declare-fun lt!1464613 () Option!9508)

(declare-fun isEmpty!26261 (Option!9508) Bool)

(assert (=> b!4094594 (= res!1673580 (isEmpty!26261 lt!1464613))))

(declare-fun maxPrefixOneRule!2963 (LexerInterface!6691 Rule!14004 List!44020) Option!9508)

(assert (=> b!4094594 (= lt!1464613 (maxPrefixOneRule!2963 thiss!26199 (h!49317 rules!3870) input!3411))))

(assert (=> b!4094594 (rulesInvariant!6034 thiss!26199 (t!339164 rules!3870))))

(declare-fun lt!1464610 () Unit!63433)

(declare-fun lemmaInvariantOnRulesThenOnTail!804 (LexerInterface!6691 Rule!14004 List!44021) Unit!63433)

(assert (=> b!4094594 (= lt!1464610 (lemmaInvariantOnRulesThenOnTail!804 thiss!26199 (h!49317 rules!3870) (t!339164 rules!3870)))))

(declare-fun res!1673579 () Bool)

(assert (=> start!387704 (=> (not res!1673579) (not e!2540989))))

(assert (=> start!387704 (= res!1673579 ((_ is Lexer!6689) thiss!26199))))

(assert (=> start!387704 e!2540989))

(assert (=> start!387704 true))

(assert (=> start!387704 e!2540983))

(assert (=> start!387704 e!2540984))

(assert (=> start!387704 e!2540986))

(assert (=> start!387704 e!2540987))

(declare-fun e!2540990 () Bool)

(assert (=> start!387704 e!2540990))

(declare-fun b!4094605 () Bool)

(declare-fun res!1673574 () Bool)

(assert (=> b!4094605 (=> (not res!1673574) (not e!2540989))))

(declare-fun ++!11508 (List!44020 List!44020) List!44020)

(assert (=> b!4094605 (= res!1673574 (= input!3411 (++!11508 p!2988 suffix!1518)))))

(declare-fun b!4094606 () Bool)

(declare-fun e!2540982 () Bool)

(assert (=> b!4094606 (= e!2540995 e!2540982)))

(declare-fun res!1673575 () Bool)

(assert (=> b!4094606 (=> res!1673575 e!2540982)))

(declare-fun lt!1464615 () tuple2!42828)

(assert (=> b!4094606 (= res!1673575 (or (not (= (rule!10250 (_1!24548 lt!1464615)) (h!49317 rules!3870))) (= (rule!10250 (_1!24548 lt!1464615)) r!4213) (= lt!1464613 lt!1464614)))))

(declare-fun get!14397 (Option!9508) tuple2!42828)

(assert (=> b!4094606 (= lt!1464615 (get!14397 lt!1464613))))

(declare-fun e!2540996 () Bool)

(assert (=> b!4094607 (= e!2540996 (and tp!1239381 tp!1239380))))

(declare-fun b!4094608 () Bool)

(assert (=> b!4094608 (= e!2540982 true)))

(declare-fun lt!1464609 () Option!9508)

(assert (=> b!4094608 (= lt!1464609 (maxPrefix!3981 thiss!26199 (t!339164 rules!3870) input!3411))))

(declare-fun b!4094609 () Bool)

(declare-fun res!1673582 () Bool)

(assert (=> b!4094609 (=> (not res!1673582) (not e!2540989))))

(declare-fun contains!8787 (List!44021 Rule!14004) Bool)

(assert (=> b!4094609 (= res!1673582 (contains!8787 rules!3870 r!4213))))

(declare-fun b!4094610 () Bool)

(declare-fun tp!1239377 () Bool)

(assert (=> b!4094610 (= e!2540990 (and tp!1239377 (inv!58622 (tag!7962 r!4213)) (inv!58624 (transformation!7102 r!4213)) e!2540996))))

(assert (= (and start!387704 res!1673579) b!4094604))

(assert (= (and b!4094604 res!1673578) b!4094599))

(assert (= (and b!4094599 res!1673576) b!4094609))

(assert (= (and b!4094609 res!1673582) b!4094605))

(assert (= (and b!4094605 res!1673574) b!4094597))

(assert (= (and b!4094597 res!1673581) b!4094600))

(assert (= (and b!4094600 res!1673577) b!4094592))

(assert (= (and b!4094592 (not res!1673583)) b!4094593))

(assert (= (and b!4094593 (not res!1673573)) b!4094594))

(assert (= (and b!4094594 (not res!1673580)) b!4094606))

(assert (= (and b!4094606 (not res!1673575)) b!4094608))

(assert (= (and start!387704 ((_ is Cons!43896) suffix!1518)) b!4094603))

(assert (= b!4094602 b!4094598))

(assert (= b!4094596 b!4094602))

(assert (= (and start!387704 ((_ is Cons!43897) rules!3870)) b!4094596))

(assert (= (and start!387704 ((_ is Cons!43896) p!2988)) b!4094601))

(assert (= (and start!387704 ((_ is Cons!43896) input!3411)) b!4094595))

(assert (= b!4094610 b!4094607))

(assert (= start!387704 b!4094610))

(declare-fun m!4701595 () Bool)

(assert (=> b!4094594 m!4701595))

(declare-fun m!4701597 () Bool)

(assert (=> b!4094594 m!4701597))

(declare-fun m!4701599 () Bool)

(assert (=> b!4094594 m!4701599))

(declare-fun m!4701601 () Bool)

(assert (=> b!4094594 m!4701601))

(declare-fun m!4701603 () Bool)

(assert (=> b!4094597 m!4701603))

(declare-fun m!4701605 () Bool)

(assert (=> b!4094600 m!4701605))

(declare-fun m!4701607 () Bool)

(assert (=> b!4094600 m!4701607))

(declare-fun m!4701609 () Bool)

(assert (=> b!4094600 m!4701609))

(declare-fun m!4701611 () Bool)

(assert (=> b!4094600 m!4701611))

(declare-fun m!4701613 () Bool)

(assert (=> b!4094600 m!4701613))

(declare-fun m!4701615 () Bool)

(assert (=> b!4094604 m!4701615))

(declare-fun m!4701617 () Bool)

(assert (=> b!4094609 m!4701617))

(declare-fun m!4701619 () Bool)

(assert (=> b!4094606 m!4701619))

(declare-fun m!4701621 () Bool)

(assert (=> b!4094592 m!4701621))

(declare-fun m!4701623 () Bool)

(assert (=> b!4094592 m!4701623))

(declare-fun m!4701625 () Bool)

(assert (=> b!4094592 m!4701625))

(declare-fun m!4701627 () Bool)

(assert (=> b!4094599 m!4701627))

(declare-fun m!4701629 () Bool)

(assert (=> b!4094608 m!4701629))

(declare-fun m!4701631 () Bool)

(assert (=> b!4094610 m!4701631))

(declare-fun m!4701633 () Bool)

(assert (=> b!4094610 m!4701633))

(declare-fun m!4701635 () Bool)

(assert (=> b!4094605 m!4701635))

(declare-fun m!4701637 () Bool)

(assert (=> b!4094602 m!4701637))

(declare-fun m!4701639 () Bool)

(assert (=> b!4094602 m!4701639))

(check-sat (not b!4094596) (not b!4094610) (not b!4094595) (not b!4094606) b_and!315813 (not b_next!115179) (not b!4094601) (not b!4094600) (not b!4094602) (not b!4094594) (not b_next!115183) (not b!4094597) b_and!315815 b_and!315811 tp_is_empty!21017 b_and!315817 (not b!4094604) (not b!4094603) (not b!4094605) (not b!4094608) (not b!4094609) (not b!4094599) (not b_next!115181) (not b!4094592) (not b_next!115177))
(check-sat b_and!315811 b_and!315817 b_and!315813 (not b_next!115179) (not b_next!115181) (not b_next!115177) (not b_next!115183) b_and!315815)
