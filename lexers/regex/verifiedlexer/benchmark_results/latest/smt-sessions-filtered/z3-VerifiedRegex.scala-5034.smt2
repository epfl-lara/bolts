; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!254882 () Bool)

(assert start!254882)

(declare-fun b!2620603 () Bool)

(declare-fun b_free!73741 () Bool)

(declare-fun b_next!74445 () Bool)

(assert (=> b!2620603 (= b_free!73741 (not b_next!74445))))

(declare-fun tp!831724 () Bool)

(declare-fun b_and!191831 () Bool)

(assert (=> b!2620603 (= tp!831724 b_and!191831)))

(declare-fun b_free!73743 () Bool)

(declare-fun b_next!74447 () Bool)

(assert (=> b!2620603 (= b_free!73743 (not b_next!74447))))

(declare-fun tp!831722 () Bool)

(declare-fun b_and!191833 () Bool)

(assert (=> b!2620603 (= tp!831722 b_and!191833)))

(declare-fun b!2620604 () Bool)

(declare-fun b_free!73745 () Bool)

(declare-fun b_next!74449 () Bool)

(assert (=> b!2620604 (= b_free!73745 (not b_next!74449))))

(declare-fun tp!831727 () Bool)

(declare-fun b_and!191835 () Bool)

(assert (=> b!2620604 (= tp!831727 b_and!191835)))

(declare-fun b_free!73747 () Bool)

(declare-fun b_next!74451 () Bool)

(assert (=> b!2620604 (= b_free!73747 (not b_next!74451))))

(declare-fun tp!831728 () Bool)

(declare-fun b_and!191837 () Bool)

(assert (=> b!2620604 (= tp!831728 b_and!191837)))

(declare-fun bs!474869 () Bool)

(declare-fun b!2620612 () Bool)

(declare-fun b!2620598 () Bool)

(assert (= bs!474869 (and b!2620612 b!2620598)))

(declare-fun lambda!98168 () Int)

(declare-fun lambda!98167 () Int)

(assert (=> bs!474869 (not (= lambda!98168 lambda!98167))))

(declare-fun b!2620628 () Bool)

(declare-fun e!1653488 () Bool)

(assert (=> b!2620628 (= e!1653488 true)))

(declare-fun b!2620627 () Bool)

(declare-fun e!1653487 () Bool)

(assert (=> b!2620627 (= e!1653487 e!1653488)))

(declare-fun b!2620626 () Bool)

(declare-fun e!1653486 () Bool)

(assert (=> b!2620626 (= e!1653486 e!1653487)))

(assert (=> b!2620612 e!1653486))

(assert (= b!2620627 b!2620628))

(assert (= b!2620626 b!2620627))

(declare-datatypes ((List!30389 0))(
  ( (Nil!30289) (Cons!30289 (h!35709 (_ BitVec 16)) (t!215234 List!30389)) )
))
(declare-datatypes ((C!15624 0))(
  ( (C!15625 (val!9746 Int)) )
))
(declare-datatypes ((Regex!7733 0))(
  ( (ElementMatch!7733 (c!421320 C!15624)) (Concat!12544 (regOne!15978 Regex!7733) (regTwo!15978 Regex!7733)) (EmptyExpr!7733) (Star!7733 (reg!8062 Regex!7733)) (EmptyLang!7733) (Union!7733 (regOne!15979 Regex!7733) (regTwo!15979 Regex!7733)) )
))
(declare-datatypes ((String!33938 0))(
  ( (String!33939 (value!148365 String)) )
))
(declare-datatypes ((TokenValue!4811 0))(
  ( (FloatLiteralValue!9622 (text!34122 List!30389)) (TokenValueExt!4810 (__x!19455 Int)) (Broken!24055 (value!148366 List!30389)) (Object!4910) (End!4811) (Def!4811) (Underscore!4811) (Match!4811) (Else!4811) (Error!4811) (Case!4811) (If!4811) (Extends!4811) (Abstract!4811) (Class!4811) (Val!4811) (DelimiterValue!9622 (del!4871 List!30389)) (KeywordValue!4817 (value!148367 List!30389)) (CommentValue!9622 (value!148368 List!30389)) (WhitespaceValue!9622 (value!148369 List!30389)) (IndentationValue!4811 (value!148370 List!30389)) (String!33940) (Int32!4811) (Broken!24056 (value!148371 List!30389)) (Boolean!4812) (Unit!44300) (OperatorValue!4814 (op!4871 List!30389)) (IdentifierValue!9622 (value!148372 List!30389)) (IdentifierValue!9623 (value!148373 List!30389)) (WhitespaceValue!9623 (value!148374 List!30389)) (True!9622) (False!9622) (Broken!24057 (value!148375 List!30389)) (Broken!24058 (value!148376 List!30389)) (True!9623) (RightBrace!4811) (RightBracket!4811) (Colon!4811) (Null!4811) (Comma!4811) (LeftBracket!4811) (False!9623) (LeftBrace!4811) (ImaginaryLiteralValue!4811 (text!34123 List!30389)) (StringLiteralValue!14433 (value!148377 List!30389)) (EOFValue!4811 (value!148378 List!30389)) (IdentValue!4811 (value!148379 List!30389)) (DelimiterValue!9623 (value!148380 List!30389)) (DedentValue!4811 (value!148381 List!30389)) (NewLineValue!4811 (value!148382 List!30389)) (IntegerValue!14433 (value!148383 (_ BitVec 32)) (text!34124 List!30389)) (IntegerValue!14434 (value!148384 Int) (text!34125 List!30389)) (Times!4811) (Or!4811) (Equal!4811) (Minus!4811) (Broken!24059 (value!148385 List!30389)) (And!4811) (Div!4811) (LessEqual!4811) (Mod!4811) (Concat!12545) (Not!4811) (Plus!4811) (SpaceValue!4811 (value!148386 List!30389)) (IntegerValue!14435 (value!148387 Int) (text!34126 List!30389)) (StringLiteralValue!14434 (text!34127 List!30389)) (FloatLiteralValue!9623 (text!34128 List!30389)) (BytesLiteralValue!4811 (value!148388 List!30389)) (CommentValue!9623 (value!148389 List!30389)) (StringLiteralValue!14435 (value!148390 List!30389)) (ErrorTokenValue!4811 (msg!4872 List!30389)) )
))
(declare-datatypes ((List!30390 0))(
  ( (Nil!30290) (Cons!30290 (h!35710 C!15624) (t!215235 List!30390)) )
))
(declare-datatypes ((IArray!18845 0))(
  ( (IArray!18846 (innerList!9480 List!30390)) )
))
(declare-datatypes ((Conc!9420 0))(
  ( (Node!9420 (left!23338 Conc!9420) (right!23668 Conc!9420) (csize!19070 Int) (cheight!9631 Int)) (Leaf!14455 (xs!12414 IArray!18845) (csize!19071 Int)) (Empty!9420) )
))
(declare-datatypes ((BalanceConc!18454 0))(
  ( (BalanceConc!18455 (c!421321 Conc!9420)) )
))
(declare-datatypes ((TokenValueInjection!9062 0))(
  ( (TokenValueInjection!9063 (toValue!6499 Int) (toChars!6358 Int)) )
))
(declare-datatypes ((Rule!8978 0))(
  ( (Rule!8979 (regex!4589 Regex!7733) (tag!5081 String!33938) (isSeparator!4589 Bool) (transformation!4589 TokenValueInjection!9062)) )
))
(declare-datatypes ((List!30391 0))(
  ( (Nil!30291) (Cons!30291 (h!35711 Rule!8978) (t!215236 List!30391)) )
))
(declare-fun rules!1726 () List!30391)

(get-info :version)

(assert (= (and b!2620612 ((_ is Cons!30291) rules!1726)) b!2620626))

(declare-fun order!16225 () Int)

(declare-fun order!16223 () Int)

(declare-fun dynLambda!12889 (Int Int) Int)

(declare-fun dynLambda!12890 (Int Int) Int)

(assert (=> b!2620628 (< (dynLambda!12889 order!16223 (toValue!6499 (transformation!4589 (h!35711 rules!1726)))) (dynLambda!12890 order!16225 lambda!98168))))

(declare-fun order!16227 () Int)

(declare-fun dynLambda!12891 (Int Int) Int)

(assert (=> b!2620628 (< (dynLambda!12891 order!16227 (toChars!6358 (transformation!4589 (h!35711 rules!1726)))) (dynLambda!12890 order!16225 lambda!98168))))

(assert (=> b!2620612 true))

(declare-fun res!1103112 () Bool)

(declare-fun e!1653467 () Bool)

(assert (=> b!2620598 (=> (not res!1103112) (not e!1653467))))

(declare-datatypes ((Token!8648 0))(
  ( (Token!8649 (value!148391 TokenValue!4811) (rule!6965 Rule!8978) (size!23442 Int) (originalCharacters!5355 List!30390)) )
))
(declare-datatypes ((List!30392 0))(
  ( (Nil!30292) (Cons!30292 (h!35712 Token!8648) (t!215237 List!30392)) )
))
(declare-datatypes ((IArray!18847 0))(
  ( (IArray!18848 (innerList!9481 List!30392)) )
))
(declare-datatypes ((Conc!9421 0))(
  ( (Node!9421 (left!23339 Conc!9421) (right!23669 Conc!9421) (csize!19072 Int) (cheight!9632 Int)) (Leaf!14456 (xs!12415 IArray!18847) (csize!19073 Int)) (Empty!9421) )
))
(declare-datatypes ((BalanceConc!18456 0))(
  ( (BalanceConc!18457 (c!421322 Conc!9421)) )
))
(declare-fun v!6381 () BalanceConc!18456)

(declare-fun forall!6307 (BalanceConc!18456 Int) Bool)

(assert (=> b!2620598 (= res!1103112 (forall!6307 v!6381 lambda!98167))))

(declare-fun b!2620599 () Bool)

(declare-fun res!1103120 () Bool)

(assert (=> b!2620599 (=> (not res!1103120) (not e!1653467))))

(declare-datatypes ((LexerInterface!4186 0))(
  ( (LexerInterfaceExt!4183 (__x!19456 Int)) (Lexer!4184) )
))
(declare-fun thiss!14197 () LexerInterface!4186)

(declare-fun separatorToken!156 () Token!8648)

(declare-fun rulesProduceIndividualToken!1898 (LexerInterface!4186 List!30391 Token!8648) Bool)

(assert (=> b!2620599 (= res!1103120 (rulesProduceIndividualToken!1898 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2620600 () Bool)

(declare-fun res!1103115 () Bool)

(assert (=> b!2620600 (=> (not res!1103115) (not e!1653467))))

(declare-fun rulesProduceEachTokenIndividually!1006 (LexerInterface!4186 List!30391 BalanceConc!18456) Bool)

(assert (=> b!2620600 (= res!1103115 (rulesProduceEachTokenIndividually!1006 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2620601 () Bool)

(declare-fun e!1653470 () Bool)

(assert (=> b!2620601 (= e!1653470 true)))

(declare-fun lt!921309 () BalanceConc!18454)

(declare-fun lt!921319 () BalanceConc!18454)

(declare-fun lt!921316 () BalanceConc!18454)

(declare-fun ++!7365 (BalanceConc!18454 BalanceConc!18454) BalanceConc!18454)

(declare-fun charsOf!2880 (Token!8648) BalanceConc!18454)

(assert (=> b!2620601 (= lt!921319 (++!7365 (++!7365 lt!921309 (charsOf!2880 separatorToken!156)) lt!921316))))

(declare-fun b!2620602 () Bool)

(declare-fun e!1653479 () Bool)

(declare-fun e!1653477 () Bool)

(declare-fun tp!831725 () Bool)

(assert (=> b!2620602 (= e!1653479 (and e!1653477 tp!831725))))

(declare-fun e!1653472 () Bool)

(assert (=> b!2620603 (= e!1653472 (and tp!831724 tp!831722))))

(declare-fun e!1653465 () Bool)

(assert (=> b!2620604 (= e!1653465 (and tp!831727 tp!831728))))

(declare-fun b!2620605 () Bool)

(declare-fun res!1103110 () Bool)

(assert (=> b!2620605 (=> (not res!1103110) (not e!1653467))))

(assert (=> b!2620605 (= res!1103110 (isSeparator!4589 (rule!6965 separatorToken!156)))))

(declare-fun b!2620607 () Bool)

(declare-fun res!1103108 () Bool)

(assert (=> b!2620607 (=> (not res!1103108) (not e!1653467))))

(declare-fun rulesInvariant!3686 (LexerInterface!4186 List!30391) Bool)

(assert (=> b!2620607 (= res!1103108 (rulesInvariant!3686 thiss!14197 rules!1726))))

(declare-fun b!2620608 () Bool)

(declare-fun e!1653471 () Bool)

(assert (=> b!2620608 (= e!1653467 e!1653471)))

(declare-fun res!1103118 () Bool)

(assert (=> b!2620608 (=> (not res!1103118) (not e!1653471))))

(declare-fun from!862 () Int)

(declare-fun lt!921307 () Int)

(assert (=> b!2620608 (= res!1103118 (< from!862 lt!921307))))

(declare-datatypes ((Unit!44301 0))(
  ( (Unit!44302) )
))
(declare-fun lt!921318 () Unit!44301)

(declare-fun lt!921314 () List!30392)

(declare-fun lemmaContentSubsetPreservesForall!258 (List!30392 List!30392 Int) Unit!44301)

(declare-fun dropList!892 (BalanceConc!18456 Int) List!30392)

(assert (=> b!2620608 (= lt!921318 (lemmaContentSubsetPreservesForall!258 lt!921314 (dropList!892 v!6381 from!862) lambda!98167))))

(declare-fun list!11373 (BalanceConc!18456) List!30392)

(assert (=> b!2620608 (= lt!921314 (list!11373 v!6381))))

(declare-fun b!2620609 () Bool)

(declare-fun e!1653478 () Bool)

(assert (=> b!2620609 (= e!1653478 e!1653467)))

(declare-fun res!1103116 () Bool)

(assert (=> b!2620609 (=> (not res!1103116) (not e!1653467))))

(assert (=> b!2620609 (= res!1103116 (<= from!862 lt!921307))))

(declare-fun size!23443 (BalanceConc!18456) Int)

(assert (=> b!2620609 (= lt!921307 (size!23443 v!6381))))

(declare-fun b!2620610 () Bool)

(declare-fun res!1103109 () Bool)

(declare-fun e!1653474 () Bool)

(assert (=> b!2620610 (=> res!1103109 e!1653474)))

(declare-fun lt!921317 () Token!8648)

(declare-fun contains!5670 (List!30392 Token!8648) Bool)

(assert (=> b!2620610 (= res!1103109 (not (contains!5670 lt!921314 lt!921317)))))

(declare-fun e!1653469 () Bool)

(declare-fun tp!831730 () Bool)

(declare-fun e!1653468 () Bool)

(declare-fun b!2620611 () Bool)

(declare-fun inv!21 (TokenValue!4811) Bool)

(assert (=> b!2620611 (= e!1653468 (and (inv!21 (value!148391 separatorToken!156)) e!1653469 tp!831730))))

(assert (=> b!2620612 (= e!1653474 e!1653470)))

(declare-fun res!1103114 () Bool)

(assert (=> b!2620612 (=> res!1103114 e!1653470)))

(declare-fun lt!921313 () Bool)

(declare-datatypes ((tuple2!29844 0))(
  ( (tuple2!29845 (_1!17464 Token!8648) (_2!17464 BalanceConc!18454)) )
))
(declare-datatypes ((Option!5974 0))(
  ( (None!5973) (Some!5973 (v!32334 tuple2!29844)) )
))
(declare-fun lt!921312 () Option!5974)

(assert (=> b!2620612 (= res!1103114 (or (and (not lt!921313) (= (_1!17464 (v!32334 lt!921312)) lt!921317)) lt!921313 (= (_1!17464 (v!32334 lt!921312)) lt!921317)))))

(assert (=> b!2620612 (= lt!921313 (not ((_ is Some!5973) lt!921312)))))

(declare-fun maxPrefixZipperSequence!916 (LexerInterface!4186 List!30391 BalanceConc!18454) Option!5974)

(assert (=> b!2620612 (= lt!921312 (maxPrefixZipperSequence!916 thiss!14197 rules!1726 (++!7365 lt!921309 lt!921316)))))

(assert (=> b!2620612 (= lt!921309 (charsOf!2880 lt!921317))))

(declare-fun printWithSeparatorTokenWhenNeededRec!464 (LexerInterface!4186 List!30391 BalanceConc!18456 Token!8648 Int) BalanceConc!18454)

(assert (=> b!2620612 (= lt!921316 (printWithSeparatorTokenWhenNeededRec!464 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))

(declare-fun lt!921315 () Unit!44301)

(declare-fun forallContained!945 (List!30392 Int Token!8648) Unit!44301)

(assert (=> b!2620612 (= lt!921315 (forallContained!945 lt!921314 lambda!98168 lt!921317))))

(declare-fun tp!831723 () Bool)

(declare-fun b!2620606 () Bool)

(declare-fun inv!41023 (String!33938) Bool)

(declare-fun inv!41028 (TokenValueInjection!9062) Bool)

(assert (=> b!2620606 (= e!1653477 (and tp!831723 (inv!41023 (tag!5081 (h!35711 rules!1726))) (inv!41028 (transformation!4589 (h!35711 rules!1726))) e!1653472))))

(declare-fun res!1103119 () Bool)

(assert (=> start!254882 (=> (not res!1103119) (not e!1653478))))

(assert (=> start!254882 (= res!1103119 (and ((_ is Lexer!4184) thiss!14197) (>= from!862 0)))))

(assert (=> start!254882 e!1653478))

(assert (=> start!254882 true))

(assert (=> start!254882 e!1653479))

(declare-fun inv!41029 (Token!8648) Bool)

(assert (=> start!254882 (and (inv!41029 separatorToken!156) e!1653468)))

(declare-fun e!1653466 () Bool)

(declare-fun inv!41030 (BalanceConc!18456) Bool)

(assert (=> start!254882 (and (inv!41030 v!6381) e!1653466)))

(declare-fun b!2620613 () Bool)

(declare-fun res!1103117 () Bool)

(assert (=> b!2620613 (=> (not res!1103117) (not e!1653467))))

(declare-fun isEmpty!17300 (List!30391) Bool)

(assert (=> b!2620613 (= res!1103117 (not (isEmpty!17300 rules!1726)))))

(declare-fun b!2620614 () Bool)

(declare-fun res!1103111 () Bool)

(assert (=> b!2620614 (=> (not res!1103111) (not e!1653467))))

(declare-fun sepAndNonSepRulesDisjointChars!1162 (List!30391 List!30391) Bool)

(assert (=> b!2620614 (= res!1103111 (sepAndNonSepRulesDisjointChars!1162 rules!1726 rules!1726))))

(declare-fun tp!831726 () Bool)

(declare-fun b!2620615 () Bool)

(assert (=> b!2620615 (= e!1653469 (and tp!831726 (inv!41023 (tag!5081 (rule!6965 separatorToken!156))) (inv!41028 (transformation!4589 (rule!6965 separatorToken!156))) e!1653465))))

(declare-fun b!2620616 () Bool)

(assert (=> b!2620616 (= e!1653471 (not e!1653474))))

(declare-fun res!1103113 () Bool)

(assert (=> b!2620616 (=> res!1103113 e!1653474)))

(declare-fun contains!5671 (BalanceConc!18456 Token!8648) Bool)

(assert (=> b!2620616 (= res!1103113 (not (contains!5671 v!6381 lt!921317)))))

(declare-fun apply!7152 (BalanceConc!18456 Int) Token!8648)

(assert (=> b!2620616 (= lt!921317 (apply!7152 v!6381 from!862))))

(declare-fun lt!921311 () List!30392)

(declare-fun tail!4224 (List!30392) List!30392)

(declare-fun drop!1585 (List!30392 Int) List!30392)

(assert (=> b!2620616 (= (tail!4224 lt!921311) (drop!1585 lt!921314 (+ 1 from!862)))))

(declare-fun lt!921310 () Unit!44301)

(declare-fun lemmaDropTail!774 (List!30392 Int) Unit!44301)

(assert (=> b!2620616 (= lt!921310 (lemmaDropTail!774 lt!921314 from!862))))

(declare-fun head!5986 (List!30392) Token!8648)

(declare-fun apply!7153 (List!30392 Int) Token!8648)

(assert (=> b!2620616 (= (head!5986 lt!921311) (apply!7153 lt!921314 from!862))))

(assert (=> b!2620616 (= lt!921311 (drop!1585 lt!921314 from!862))))

(declare-fun lt!921308 () Unit!44301)

(declare-fun lemmaDropApply!800 (List!30392 Int) Unit!44301)

(assert (=> b!2620616 (= lt!921308 (lemmaDropApply!800 lt!921314 from!862))))

(declare-fun b!2620617 () Bool)

(declare-fun tp!831729 () Bool)

(declare-fun inv!41031 (Conc!9421) Bool)

(assert (=> b!2620617 (= e!1653466 (and (inv!41031 (c!421322 v!6381)) tp!831729))))

(assert (= (and start!254882 res!1103119) b!2620609))

(assert (= (and b!2620609 res!1103116) b!2620613))

(assert (= (and b!2620613 res!1103117) b!2620607))

(assert (= (and b!2620607 res!1103108) b!2620600))

(assert (= (and b!2620600 res!1103115) b!2620599))

(assert (= (and b!2620599 res!1103120) b!2620605))

(assert (= (and b!2620605 res!1103110) b!2620598))

(assert (= (and b!2620598 res!1103112) b!2620614))

(assert (= (and b!2620614 res!1103111) b!2620608))

(assert (= (and b!2620608 res!1103118) b!2620616))

(assert (= (and b!2620616 (not res!1103113)) b!2620610))

(assert (= (and b!2620610 (not res!1103109)) b!2620612))

(assert (= (and b!2620612 (not res!1103114)) b!2620601))

(assert (= b!2620606 b!2620603))

(assert (= b!2620602 b!2620606))

(assert (= (and start!254882 ((_ is Cons!30291) rules!1726)) b!2620602))

(assert (= b!2620615 b!2620604))

(assert (= b!2620611 b!2620615))

(assert (= start!254882 b!2620611))

(assert (= start!254882 b!2620617))

(declare-fun m!2959077 () Bool)

(assert (=> b!2620598 m!2959077))

(declare-fun m!2959079 () Bool)

(assert (=> b!2620607 m!2959079))

(declare-fun m!2959081 () Bool)

(assert (=> b!2620617 m!2959081))

(declare-fun m!2959083 () Bool)

(assert (=> b!2620612 m!2959083))

(declare-fun m!2959085 () Bool)

(assert (=> b!2620612 m!2959085))

(declare-fun m!2959087 () Bool)

(assert (=> b!2620612 m!2959087))

(declare-fun m!2959089 () Bool)

(assert (=> b!2620612 m!2959089))

(assert (=> b!2620612 m!2959085))

(declare-fun m!2959091 () Bool)

(assert (=> b!2620612 m!2959091))

(declare-fun m!2959093 () Bool)

(assert (=> b!2620610 m!2959093))

(declare-fun m!2959095 () Bool)

(assert (=> b!2620606 m!2959095))

(declare-fun m!2959097 () Bool)

(assert (=> b!2620606 m!2959097))

(declare-fun m!2959099 () Bool)

(assert (=> b!2620614 m!2959099))

(declare-fun m!2959101 () Bool)

(assert (=> b!2620608 m!2959101))

(assert (=> b!2620608 m!2959101))

(declare-fun m!2959103 () Bool)

(assert (=> b!2620608 m!2959103))

(declare-fun m!2959105 () Bool)

(assert (=> b!2620608 m!2959105))

(declare-fun m!2959107 () Bool)

(assert (=> b!2620609 m!2959107))

(declare-fun m!2959109 () Bool)

(assert (=> b!2620613 m!2959109))

(declare-fun m!2959111 () Bool)

(assert (=> b!2620615 m!2959111))

(declare-fun m!2959113 () Bool)

(assert (=> b!2620615 m!2959113))

(declare-fun m!2959115 () Bool)

(assert (=> b!2620616 m!2959115))

(declare-fun m!2959117 () Bool)

(assert (=> b!2620616 m!2959117))

(declare-fun m!2959119 () Bool)

(assert (=> b!2620616 m!2959119))

(declare-fun m!2959121 () Bool)

(assert (=> b!2620616 m!2959121))

(declare-fun m!2959123 () Bool)

(assert (=> b!2620616 m!2959123))

(declare-fun m!2959125 () Bool)

(assert (=> b!2620616 m!2959125))

(declare-fun m!2959127 () Bool)

(assert (=> b!2620616 m!2959127))

(declare-fun m!2959129 () Bool)

(assert (=> b!2620616 m!2959129))

(declare-fun m!2959131 () Bool)

(assert (=> b!2620616 m!2959131))

(declare-fun m!2959133 () Bool)

(assert (=> start!254882 m!2959133))

(declare-fun m!2959135 () Bool)

(assert (=> start!254882 m!2959135))

(declare-fun m!2959137 () Bool)

(assert (=> b!2620599 m!2959137))

(declare-fun m!2959139 () Bool)

(assert (=> b!2620611 m!2959139))

(declare-fun m!2959141 () Bool)

(assert (=> b!2620600 m!2959141))

(declare-fun m!2959143 () Bool)

(assert (=> b!2620601 m!2959143))

(assert (=> b!2620601 m!2959143))

(declare-fun m!2959145 () Bool)

(assert (=> b!2620601 m!2959145))

(assert (=> b!2620601 m!2959145))

(declare-fun m!2959147 () Bool)

(assert (=> b!2620601 m!2959147))

(check-sat (not b!2620599) (not b!2620608) b_and!191837 (not b!2620626) (not b_next!74447) (not b_next!74445) (not b!2620610) (not b!2620612) (not b!2620601) (not b!2620598) (not b!2620602) (not b!2620600) b_and!191831 (not b_next!74451) b_and!191835 (not b!2620609) b_and!191833 (not b!2620615) (not b!2620617) (not start!254882) (not b!2620611) (not b_next!74449) (not b!2620613) (not b!2620606) (not b!2620614) (not b!2620616) (not b!2620607))
(check-sat b_and!191831 b_and!191837 b_and!191833 (not b_next!74449) (not b_next!74447) (not b_next!74445) (not b_next!74451) b_and!191835)
