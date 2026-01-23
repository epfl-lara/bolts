; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!404158 () Bool)

(assert start!404158)

(declare-fun b!4226654 () Bool)

(declare-fun b_free!124563 () Bool)

(declare-fun b_next!125267 () Bool)

(assert (=> b!4226654 (= b_free!124563 (not b_next!125267))))

(declare-fun tp!1294071 () Bool)

(declare-fun b_and!333797 () Bool)

(assert (=> b!4226654 (= tp!1294071 b_and!333797)))

(declare-fun b_free!124565 () Bool)

(declare-fun b_next!125269 () Bool)

(assert (=> b!4226654 (= b_free!124565 (not b_next!125269))))

(declare-fun tp!1294069 () Bool)

(declare-fun b_and!333799 () Bool)

(assert (=> b!4226654 (= tp!1294069 b_and!333799)))

(declare-fun b!4226651 () Bool)

(declare-fun b_free!124567 () Bool)

(declare-fun b_next!125271 () Bool)

(assert (=> b!4226651 (= b_free!124567 (not b_next!125271))))

(declare-fun tp!1294074 () Bool)

(declare-fun b_and!333801 () Bool)

(assert (=> b!4226651 (= tp!1294074 b_and!333801)))

(declare-fun b_free!124569 () Bool)

(declare-fun b_next!125273 () Bool)

(assert (=> b!4226651 (= b_free!124569 (not b_next!125273))))

(declare-fun tp!1294068 () Bool)

(declare-fun b_and!333803 () Bool)

(assert (=> b!4226651 (= tp!1294068 b_and!333803)))

(declare-fun tp!1294072 () Bool)

(declare-fun b!4226650 () Bool)

(declare-fun e!2624221 () Bool)

(declare-datatypes ((C!25680 0))(
  ( (C!25681 (val!15002 Int)) )
))
(declare-datatypes ((List!46717 0))(
  ( (Nil!46593) (Cons!46593 (h!52013 C!25680) (t!349334 List!46717)) )
))
(declare-datatypes ((IArray!28103 0))(
  ( (IArray!28104 (innerList!14109 List!46717)) )
))
(declare-datatypes ((Conc!14049 0))(
  ( (Node!14049 (left!34643 Conc!14049) (right!34973 Conc!14049) (csize!28328 Int) (cheight!14260 Int)) (Leaf!21712 (xs!17355 IArray!28103) (csize!28329 Int)) (Empty!14049) )
))
(declare-datatypes ((List!46718 0))(
  ( (Nil!46594) (Cons!46594 (h!52014 (_ BitVec 16)) (t!349335 List!46718)) )
))
(declare-datatypes ((TokenValue!8068 0))(
  ( (FloatLiteralValue!16136 (text!56921 List!46718)) (TokenValueExt!8067 (__x!28359 Int)) (Broken!40340 (value!243875 List!46718)) (Object!8191) (End!8068) (Def!8068) (Underscore!8068) (Match!8068) (Else!8068) (Error!8068) (Case!8068) (If!8068) (Extends!8068) (Abstract!8068) (Class!8068) (Val!8068) (DelimiterValue!16136 (del!8128 List!46718)) (KeywordValue!8074 (value!243876 List!46718)) (CommentValue!16136 (value!243877 List!46718)) (WhitespaceValue!16136 (value!243878 List!46718)) (IndentationValue!8068 (value!243879 List!46718)) (String!54209) (Int32!8068) (Broken!40341 (value!243880 List!46718)) (Boolean!8069) (Unit!65736) (OperatorValue!8071 (op!8128 List!46718)) (IdentifierValue!16136 (value!243881 List!46718)) (IdentifierValue!16137 (value!243882 List!46718)) (WhitespaceValue!16137 (value!243883 List!46718)) (True!16136) (False!16136) (Broken!40342 (value!243884 List!46718)) (Broken!40343 (value!243885 List!46718)) (True!16137) (RightBrace!8068) (RightBracket!8068) (Colon!8068) (Null!8068) (Comma!8068) (LeftBracket!8068) (False!16137) (LeftBrace!8068) (ImaginaryLiteralValue!8068 (text!56922 List!46718)) (StringLiteralValue!24204 (value!243886 List!46718)) (EOFValue!8068 (value!243887 List!46718)) (IdentValue!8068 (value!243888 List!46718)) (DelimiterValue!16137 (value!243889 List!46718)) (DedentValue!8068 (value!243890 List!46718)) (NewLineValue!8068 (value!243891 List!46718)) (IntegerValue!24204 (value!243892 (_ BitVec 32)) (text!56923 List!46718)) (IntegerValue!24205 (value!243893 Int) (text!56924 List!46718)) (Times!8068) (Or!8068) (Equal!8068) (Minus!8068) (Broken!40344 (value!243894 List!46718)) (And!8068) (Div!8068) (LessEqual!8068) (Mod!8068) (Concat!20811) (Not!8068) (Plus!8068) (SpaceValue!8068 (value!243895 List!46718)) (IntegerValue!24206 (value!243896 Int) (text!56925 List!46718)) (StringLiteralValue!24205 (text!56926 List!46718)) (FloatLiteralValue!16137 (text!56927 List!46718)) (BytesLiteralValue!8068 (value!243897 List!46718)) (CommentValue!16137 (value!243898 List!46718)) (StringLiteralValue!24206 (value!243899 List!46718)) (ErrorTokenValue!8068 (msg!8129 List!46718)) )
))
(declare-datatypes ((BalanceConc!27692 0))(
  ( (BalanceConc!27693 (c!718692 Conc!14049)) )
))
(declare-datatypes ((TokenValueInjection!15564 0))(
  ( (TokenValueInjection!15565 (toValue!10566 Int) (toChars!10425 Int)) )
))
(declare-datatypes ((Regex!12743 0))(
  ( (ElementMatch!12743 (c!718693 C!25680)) (Concat!20812 (regOne!25998 Regex!12743) (regTwo!25998 Regex!12743)) (EmptyExpr!12743) (Star!12743 (reg!13072 Regex!12743)) (EmptyLang!12743) (Union!12743 (regOne!25999 Regex!12743) (regTwo!25999 Regex!12743)) )
))
(declare-datatypes ((String!54210 0))(
  ( (String!54211 (value!243900 String)) )
))
(declare-datatypes ((Rule!15476 0))(
  ( (Rule!15477 (regex!7838 Regex!12743) (tag!8702 String!54210) (isSeparator!7838 Bool) (transformation!7838 TokenValueInjection!15564)) )
))
(declare-datatypes ((List!46719 0))(
  ( (Nil!46595) (Cons!46595 (h!52015 Rule!15476) (t!349336 List!46719)) )
))
(declare-fun rules!4024 () List!46719)

(declare-fun e!2624225 () Bool)

(declare-fun inv!61251 (String!54210) Bool)

(declare-fun inv!61253 (TokenValueInjection!15564) Bool)

(assert (=> b!4226650 (= e!2624225 (and tp!1294072 (inv!61251 (tag!8702 (h!52015 rules!4024))) (inv!61253 (transformation!7838 (h!52015 rules!4024))) e!2624221))))

(assert (=> b!4226651 (= e!2624221 (and tp!1294074 tp!1294068))))

(declare-fun b!4226652 () Bool)

(declare-fun e!2624227 () Bool)

(declare-fun tp!1294070 () Bool)

(assert (=> b!4226652 (= e!2624227 (and e!2624225 tp!1294070))))

(declare-fun b!4226653 () Bool)

(declare-fun res!1737977 () Bool)

(declare-fun e!2624226 () Bool)

(assert (=> b!4226653 (=> (not res!1737977) (not e!2624226))))

(declare-datatypes ((LexerInterface!7433 0))(
  ( (LexerInterfaceExt!7430 (__x!28360 Int)) (Lexer!7431) )
))
(declare-fun thiss!26827 () LexerInterface!7433)

(declare-fun rulesValidInductive!2940 (LexerInterface!7433 List!46719) Bool)

(assert (=> b!4226653 (= res!1737977 (rulesValidInductive!2940 thiss!26827 (t!349336 rules!4024)))))

(declare-fun e!2624223 () Bool)

(assert (=> b!4226654 (= e!2624223 (and tp!1294071 tp!1294069))))

(declare-fun b!4226655 () Bool)

(assert (=> b!4226655 (= e!2624226 (not true))))

(declare-fun r!4367 () Rule!15476)

(declare-fun ruleValid!3540 (LexerInterface!7433 Rule!15476) Bool)

(assert (=> b!4226655 (ruleValid!3540 thiss!26827 r!4367)))

(declare-datatypes ((Unit!65737 0))(
  ( (Unit!65738) )
))
(declare-fun lt!1503190 () Unit!65737)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2450 (LexerInterface!7433 Rule!15476 List!46719) Unit!65737)

(assert (=> b!4226655 (= lt!1503190 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2450 thiss!26827 r!4367 (t!349336 rules!4024)))))

(declare-fun b!4226656 () Bool)

(declare-fun res!1737976 () Bool)

(assert (=> b!4226656 (=> (not res!1737976) (not e!2624226))))

(declare-fun contains!9661 (List!46719 Rule!15476) Bool)

(assert (=> b!4226656 (= res!1737976 (contains!9661 (t!349336 rules!4024) r!4367))))

(declare-fun e!2624222 () Bool)

(declare-fun b!4226657 () Bool)

(declare-fun tp!1294073 () Bool)

(assert (=> b!4226657 (= e!2624222 (and tp!1294073 (inv!61251 (tag!8702 r!4367)) (inv!61253 (transformation!7838 r!4367)) e!2624223))))

(declare-fun res!1737972 () Bool)

(assert (=> start!404158 (=> (not res!1737972) (not e!2624226))))

(get-info :version)

(assert (=> start!404158 (= res!1737972 ((_ is Lexer!7431) thiss!26827))))

(assert (=> start!404158 e!2624226))

(assert (=> start!404158 true))

(assert (=> start!404158 e!2624227))

(assert (=> start!404158 e!2624222))

(declare-fun b!4226658 () Bool)

(declare-fun res!1737974 () Bool)

(assert (=> b!4226658 (=> (not res!1737974) (not e!2624226))))

(assert (=> b!4226658 (= res!1737974 (rulesValidInductive!2940 thiss!26827 rules!4024))))

(declare-fun b!4226659 () Bool)

(declare-fun res!1737973 () Bool)

(assert (=> b!4226659 (=> (not res!1737973) (not e!2624226))))

(assert (=> b!4226659 (= res!1737973 (and (or (not ((_ is Cons!46595) rules!4024)) (not (= (h!52015 rules!4024) r!4367))) ((_ is Cons!46595) rules!4024) (not (= (h!52015 rules!4024) r!4367))))))

(declare-fun b!4226660 () Bool)

(declare-fun res!1737975 () Bool)

(assert (=> b!4226660 (=> (not res!1737975) (not e!2624226))))

(assert (=> b!4226660 (= res!1737975 (contains!9661 rules!4024 r!4367))))

(assert (= (and start!404158 res!1737972) b!4226660))

(assert (= (and b!4226660 res!1737975) b!4226658))

(assert (= (and b!4226658 res!1737974) b!4226659))

(assert (= (and b!4226659 res!1737973) b!4226656))

(assert (= (and b!4226656 res!1737976) b!4226653))

(assert (= (and b!4226653 res!1737977) b!4226655))

(assert (= b!4226650 b!4226651))

(assert (= b!4226652 b!4226650))

(assert (= (and start!404158 ((_ is Cons!46595) rules!4024)) b!4226652))

(assert (= b!4226657 b!4226654))

(assert (= start!404158 b!4226657))

(declare-fun m!4814463 () Bool)

(assert (=> b!4226653 m!4814463))

(declare-fun m!4814465 () Bool)

(assert (=> b!4226658 m!4814465))

(declare-fun m!4814467 () Bool)

(assert (=> b!4226657 m!4814467))

(declare-fun m!4814469 () Bool)

(assert (=> b!4226657 m!4814469))

(declare-fun m!4814471 () Bool)

(assert (=> b!4226655 m!4814471))

(declare-fun m!4814473 () Bool)

(assert (=> b!4226655 m!4814473))

(declare-fun m!4814475 () Bool)

(assert (=> b!4226656 m!4814475))

(declare-fun m!4814477 () Bool)

(assert (=> b!4226650 m!4814477))

(declare-fun m!4814479 () Bool)

(assert (=> b!4226650 m!4814479))

(declare-fun m!4814481 () Bool)

(assert (=> b!4226660 m!4814481))

(check-sat b_and!333799 (not b_next!125271) b_and!333801 (not b_next!125267) b_and!333803 (not b!4226655) (not b!4226658) (not b_next!125273) (not b!4226657) (not b!4226653) (not b!4226660) (not b_next!125269) b_and!333797 (not b!4226656) (not b!4226652) (not b!4226650))
(check-sat b_and!333799 (not b_next!125271) b_and!333801 (not b_next!125267) b_and!333803 (not b_next!125273) (not b_next!125269) b_and!333797)
