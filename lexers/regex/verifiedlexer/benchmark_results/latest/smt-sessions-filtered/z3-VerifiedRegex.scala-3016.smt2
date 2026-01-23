; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!180346 () Bool)

(assert start!180346)

(declare-fun b!1820951 () Bool)

(declare-fun b_free!50511 () Bool)

(declare-fun b_next!51215 () Bool)

(assert (=> b!1820951 (= b_free!50511 (not b_next!51215))))

(declare-fun tp!514668 () Bool)

(declare-fun b_and!141197 () Bool)

(assert (=> b!1820951 (= tp!514668 b_and!141197)))

(declare-fun b_free!50513 () Bool)

(declare-fun b_next!51217 () Bool)

(assert (=> b!1820951 (= b_free!50513 (not b_next!51217))))

(declare-fun tp!514666 () Bool)

(declare-fun b_and!141199 () Bool)

(assert (=> b!1820951 (= tp!514666 b_and!141199)))

(declare-fun b!1820962 () Bool)

(declare-fun b_free!50515 () Bool)

(declare-fun b_next!51219 () Bool)

(assert (=> b!1820962 (= b_free!50515 (not b_next!51219))))

(declare-fun tp!514660 () Bool)

(declare-fun b_and!141201 () Bool)

(assert (=> b!1820962 (= tp!514660 b_and!141201)))

(declare-fun b_free!50517 () Bool)

(declare-fun b_next!51221 () Bool)

(assert (=> b!1820962 (= b_free!50517 (not b_next!51221))))

(declare-fun tp!514672 () Bool)

(declare-fun b_and!141203 () Bool)

(assert (=> b!1820962 (= tp!514672 b_and!141203)))

(declare-fun b!1820970 () Bool)

(declare-fun b_free!50519 () Bool)

(declare-fun b_next!51223 () Bool)

(assert (=> b!1820970 (= b_free!50519 (not b_next!51223))))

(declare-fun tp!514665 () Bool)

(declare-fun b_and!141205 () Bool)

(assert (=> b!1820970 (= tp!514665 b_and!141205)))

(declare-fun b_free!50521 () Bool)

(declare-fun b_next!51225 () Bool)

(assert (=> b!1820970 (= b_free!50521 (not b_next!51225))))

(declare-fun tp!514664 () Bool)

(declare-fun b_and!141207 () Bool)

(assert (=> b!1820970 (= tp!514664 b_and!141207)))

(declare-fun e!1163623 () Bool)

(declare-fun e!1163626 () Bool)

(declare-fun b!1820950 () Bool)

(declare-fun tp!514671 () Bool)

(declare-datatypes ((List!20012 0))(
  ( (Nil!19942) (Cons!19942 (h!25343 (_ BitVec 16)) (t!169889 List!20012)) )
))
(declare-datatypes ((TokenValue!3683 0))(
  ( (FloatLiteralValue!7366 (text!26226 List!20012)) (TokenValueExt!3682 (__x!12668 Int)) (Broken!18415 (value!112041 List!20012)) (Object!3752) (End!3683) (Def!3683) (Underscore!3683) (Match!3683) (Else!3683) (Error!3683) (Case!3683) (If!3683) (Extends!3683) (Abstract!3683) (Class!3683) (Val!3683) (DelimiterValue!7366 (del!3743 List!20012)) (KeywordValue!3689 (value!112042 List!20012)) (CommentValue!7366 (value!112043 List!20012)) (WhitespaceValue!7366 (value!112044 List!20012)) (IndentationValue!3683 (value!112045 List!20012)) (String!22746) (Int32!3683) (Broken!18416 (value!112046 List!20012)) (Boolean!3684) (Unit!34622) (OperatorValue!3686 (op!3743 List!20012)) (IdentifierValue!7366 (value!112047 List!20012)) (IdentifierValue!7367 (value!112048 List!20012)) (WhitespaceValue!7367 (value!112049 List!20012)) (True!7366) (False!7366) (Broken!18417 (value!112050 List!20012)) (Broken!18418 (value!112051 List!20012)) (True!7367) (RightBrace!3683) (RightBracket!3683) (Colon!3683) (Null!3683) (Comma!3683) (LeftBracket!3683) (False!7367) (LeftBrace!3683) (ImaginaryLiteralValue!3683 (text!26227 List!20012)) (StringLiteralValue!11049 (value!112052 List!20012)) (EOFValue!3683 (value!112053 List!20012)) (IdentValue!3683 (value!112054 List!20012)) (DelimiterValue!7367 (value!112055 List!20012)) (DedentValue!3683 (value!112056 List!20012)) (NewLineValue!3683 (value!112057 List!20012)) (IntegerValue!11049 (value!112058 (_ BitVec 32)) (text!26228 List!20012)) (IntegerValue!11050 (value!112059 Int) (text!26229 List!20012)) (Times!3683) (Or!3683) (Equal!3683) (Minus!3683) (Broken!18419 (value!112060 List!20012)) (And!3683) (Div!3683) (LessEqual!3683) (Mod!3683) (Concat!8604) (Not!3683) (Plus!3683) (SpaceValue!3683 (value!112061 List!20012)) (IntegerValue!11051 (value!112062 Int) (text!26230 List!20012)) (StringLiteralValue!11050 (text!26231 List!20012)) (FloatLiteralValue!7367 (text!26232 List!20012)) (BytesLiteralValue!3683 (value!112063 List!20012)) (CommentValue!7367 (value!112064 List!20012)) (StringLiteralValue!11051 (value!112065 List!20012)) (ErrorTokenValue!3683 (msg!3744 List!20012)) )
))
(declare-datatypes ((C!10016 0))(
  ( (C!10017 (val!5604 Int)) )
))
(declare-datatypes ((List!20013 0))(
  ( (Nil!19943) (Cons!19943 (h!25344 C!10016) (t!169890 List!20013)) )
))
(declare-datatypes ((IArray!13255 0))(
  ( (IArray!13256 (innerList!6685 List!20013)) )
))
(declare-datatypes ((Conc!6625 0))(
  ( (Node!6625 (left!15971 Conc!6625) (right!16301 Conc!6625) (csize!13480 Int) (cheight!6836 Int)) (Leaf!9642 (xs!9501 IArray!13255) (csize!13481 Int)) (Empty!6625) )
))
(declare-datatypes ((BalanceConc!13194 0))(
  ( (BalanceConc!13195 (c!297174 Conc!6625)) )
))
(declare-datatypes ((TokenValueInjection!7026 0))(
  ( (TokenValueInjection!7027 (toValue!5128 Int) (toChars!4987 Int)) )
))
(declare-datatypes ((Regex!4921 0))(
  ( (ElementMatch!4921 (c!297175 C!10016)) (Concat!8605 (regOne!10354 Regex!4921) (regTwo!10354 Regex!4921)) (EmptyExpr!4921) (Star!4921 (reg!5250 Regex!4921)) (EmptyLang!4921) (Union!4921 (regOne!10355 Regex!4921) (regTwo!10355 Regex!4921)) )
))
(declare-datatypes ((String!22747 0))(
  ( (String!22748 (value!112066 String)) )
))
(declare-datatypes ((Rule!6986 0))(
  ( (Rule!6987 (regex!3593 Regex!4921) (tag!4007 String!22747) (isSeparator!3593 Bool) (transformation!3593 TokenValueInjection!7026)) )
))
(declare-fun rule!559 () Rule!6986)

(declare-fun inv!25976 (String!22747) Bool)

(declare-fun inv!25979 (TokenValueInjection!7026) Bool)

(assert (=> b!1820950 (= e!1163623 (and tp!514671 (inv!25976 (tag!4007 rule!559)) (inv!25979 (transformation!3593 rule!559)) e!1163626))))

(declare-fun e!1163617 () Bool)

(assert (=> b!1820951 (= e!1163617 (and tp!514668 tp!514666))))

(declare-fun b!1820952 () Bool)

(declare-fun e!1163630 () Bool)

(declare-datatypes ((List!20014 0))(
  ( (Nil!19944) (Cons!19944 (h!25345 Regex!4921) (t!169891 List!20014)) )
))
(declare-fun lt!707482 () List!20014)

(declare-fun lambda!71278 () Int)

(declare-fun forall!4305 (List!20014 Int) Bool)

(assert (=> b!1820952 (= e!1163630 (forall!4305 lt!707482 lambda!71278))))

(declare-fun res!818876 () Bool)

(declare-fun e!1163612 () Bool)

(assert (=> start!180346 (=> (not res!818876) (not e!1163612))))

(declare-datatypes ((LexerInterface!3222 0))(
  ( (LexerInterfaceExt!3219 (__x!12669 Int)) (Lexer!3220) )
))
(declare-fun thiss!28068 () LexerInterface!3222)

(get-info :version)

(assert (=> start!180346 (= res!818876 ((_ is Lexer!3220) thiss!28068))))

(assert (=> start!180346 e!1163612))

(declare-fun e!1163625 () Bool)

(assert (=> start!180346 e!1163625))

(assert (=> start!180346 true))

(declare-fun e!1163615 () Bool)

(assert (=> start!180346 e!1163615))

(declare-datatypes ((Token!6740 0))(
  ( (Token!6741 (value!112067 TokenValue!3683) (rule!5723 Rule!6986) (size!15829 Int) (originalCharacters!4401 List!20013)) )
))
(declare-fun token!556 () Token!6740)

(declare-fun e!1163628 () Bool)

(declare-fun inv!25980 (Token!6740) Bool)

(assert (=> start!180346 (and (inv!25980 token!556) e!1163628)))

(assert (=> start!180346 e!1163623))

(declare-fun e!1163620 () Bool)

(assert (=> start!180346 e!1163620))

(declare-fun b!1820953 () Bool)

(declare-fun e!1163627 () Bool)

(declare-fun e!1163613 () Bool)

(assert (=> b!1820953 (= e!1163627 e!1163613)))

(declare-fun res!818871 () Bool)

(assert (=> b!1820953 (=> res!818871 e!1163613)))

(declare-datatypes ((tuple2!19470 0))(
  ( (tuple2!19471 (_1!11137 Token!6740) (_2!11137 List!20013)) )
))
(declare-datatypes ((Option!4173 0))(
  ( (None!4172) (Some!4172 (v!25713 tuple2!19470)) )
))
(declare-fun lt!707477 () Option!4173)

(declare-fun lt!707473 () Option!4173)

(assert (=> b!1820953 (= res!818871 (not (= lt!707477 lt!707473)))))

(declare-fun lt!707474 () TokenValue!3683)

(declare-fun suffix!1667 () List!20013)

(declare-fun lt!707483 () List!20013)

(declare-fun lt!707476 () Int)

(assert (=> b!1820953 (= lt!707477 (Some!4172 (tuple2!19471 (Token!6741 lt!707474 rule!559 lt!707476 lt!707483) suffix!1667)))))

(declare-fun input!3612 () List!20013)

(declare-fun maxPrefixOneRule!1135 (LexerInterface!3222 Rule!6986 List!20013) Option!4173)

(assert (=> b!1820953 (= lt!707477 (maxPrefixOneRule!1135 thiss!28068 rule!559 input!3612))))

(declare-fun size!15830 (List!20013) Int)

(assert (=> b!1820953 (= lt!707476 (size!15830 lt!707483))))

(declare-fun apply!5385 (TokenValueInjection!7026 BalanceConc!13194) TokenValue!3683)

(declare-fun seqFromList!2554 (List!20013) BalanceConc!13194)

(assert (=> b!1820953 (= lt!707474 (apply!5385 (transformation!3593 rule!559) (seqFromList!2554 lt!707483)))))

(declare-datatypes ((Unit!34623 0))(
  ( (Unit!34624) )
))
(declare-fun lt!707484 () Unit!34623)

(declare-datatypes ((List!20015 0))(
  ( (Nil!19945) (Cons!19945 (h!25346 Rule!6986) (t!169892 List!20015)) )
))
(declare-fun rules!4538 () List!20015)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!511 (LexerInterface!3222 List!20015 List!20013 List!20013 List!20013 Rule!6986) Unit!34623)

(assert (=> b!1820953 (= lt!707484 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!511 thiss!28068 rules!4538 lt!707483 input!3612 suffix!1667 rule!559))))

(declare-fun b!1820954 () Bool)

(declare-fun res!818877 () Bool)

(assert (=> b!1820954 (=> (not res!818877) (not e!1163612))))

(declare-fun isEmpty!12607 (List!20015) Bool)

(assert (=> b!1820954 (= res!818877 (not (isEmpty!12607 rules!4538)))))

(declare-fun b!1820955 () Bool)

(declare-fun e!1163622 () Bool)

(declare-fun tp!514663 () Bool)

(assert (=> b!1820955 (= e!1163615 (and e!1163622 tp!514663))))

(declare-fun b!1820956 () Bool)

(declare-fun e!1163629 () Bool)

(declare-fun e!1163631 () Bool)

(assert (=> b!1820956 (= e!1163629 e!1163631)))

(declare-fun res!818872 () Bool)

(assert (=> b!1820956 (=> (not res!818872) (not e!1163631))))

(declare-fun ++!5417 (List!20013 List!20013) List!20013)

(assert (=> b!1820956 (= res!818872 (= input!3612 (++!5417 lt!707483 suffix!1667)))))

(declare-fun list!8109 (BalanceConc!13194) List!20013)

(declare-fun charsOf!2236 (Token!6740) BalanceConc!13194)

(assert (=> b!1820956 (= lt!707483 (list!8109 (charsOf!2236 token!556)))))

(declare-fun b!1820957 () Bool)

(declare-fun res!818873 () Bool)

(assert (=> b!1820957 (=> (not res!818873) (not e!1163629))))

(assert (=> b!1820957 (= res!818873 (= (rule!5723 token!556) rule!559))))

(declare-fun e!1163614 () Bool)

(declare-fun b!1820958 () Bool)

(declare-fun tp!514669 () Bool)

(assert (=> b!1820958 (= e!1163622 (and tp!514669 (inv!25976 (tag!4007 (h!25346 rules!4538))) (inv!25979 (transformation!3593 (h!25346 rules!4538))) e!1163614))))

(declare-fun b!1820959 () Bool)

(declare-fun res!818870 () Bool)

(assert (=> b!1820959 (=> res!818870 e!1163630)))

(assert (=> b!1820959 (= res!818870 (not (forall!4305 lt!707482 lambda!71278)))))

(declare-fun b!1820960 () Bool)

(declare-fun tp_is_empty!8077 () Bool)

(declare-fun tp!514667 () Bool)

(assert (=> b!1820960 (= e!1163620 (and tp_is_empty!8077 tp!514667))))

(declare-fun b!1820961 () Bool)

(assert (=> b!1820961 (= e!1163612 e!1163629)))

(declare-fun res!818880 () Bool)

(assert (=> b!1820961 (=> (not res!818880) (not e!1163629))))

(declare-fun maxPrefix!1770 (LexerInterface!3222 List!20015 List!20013) Option!4173)

(assert (=> b!1820961 (= res!818880 (= (maxPrefix!1770 thiss!28068 rules!4538 input!3612) lt!707473))))

(assert (=> b!1820961 (= lt!707473 (Some!4172 (tuple2!19471 token!556 suffix!1667)))))

(assert (=> b!1820962 (= e!1163626 (and tp!514660 tp!514672))))

(declare-fun b!1820963 () Bool)

(declare-fun e!1163618 () Bool)

(assert (=> b!1820963 (= e!1163613 e!1163618)))

(declare-fun res!818874 () Bool)

(assert (=> b!1820963 (=> res!818874 e!1163618)))

(declare-fun lt!707479 () Regex!4921)

(declare-fun lt!707478 () List!20014)

(declare-fun generalisedUnion!448 (List!20014) Regex!4921)

(assert (=> b!1820963 (= res!818874 (not (= lt!707479 (generalisedUnion!448 lt!707478))))))

(declare-fun rulesRegex!925 (LexerInterface!3222 List!20015) Regex!4921)

(assert (=> b!1820963 (= lt!707479 (rulesRegex!925 thiss!28068 rules!4538))))

(declare-fun lambda!71277 () Int)

(declare-fun map!4120 (List!20015 Int) List!20014)

(assert (=> b!1820963 (= lt!707478 (map!4120 rules!4538 lambda!71277))))

(declare-fun lt!707480 () Unit!34623)

(declare-fun lemma!455 (List!20013 Rule!6986 List!20015 List!20013 LexerInterface!3222 Token!6740 List!20015) Unit!34623)

(assert (=> b!1820963 (= lt!707480 (lemma!455 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun b!1820964 () Bool)

(declare-fun res!818875 () Bool)

(assert (=> b!1820964 (=> (not res!818875) (not e!1163612))))

(declare-fun contains!3634 (List!20015 Rule!6986) Bool)

(assert (=> b!1820964 (= res!818875 (contains!3634 rules!4538 rule!559))))

(declare-fun b!1820965 () Bool)

(declare-fun e!1163619 () Bool)

(declare-fun tp!514662 () Bool)

(declare-fun inv!21 (TokenValue!3683) Bool)

(assert (=> b!1820965 (= e!1163628 (and (inv!21 (value!112067 token!556)) e!1163619 tp!514662))))

(declare-fun b!1820966 () Bool)

(declare-fun tp!514661 () Bool)

(assert (=> b!1820966 (= e!1163619 (and tp!514661 (inv!25976 (tag!4007 (rule!5723 token!556))) (inv!25979 (transformation!3593 (rule!5723 token!556))) e!1163617))))

(declare-fun b!1820967 () Bool)

(declare-fun tp!514670 () Bool)

(assert (=> b!1820967 (= e!1163625 (and tp_is_empty!8077 tp!514670))))

(declare-fun b!1820968 () Bool)

(assert (=> b!1820968 (= e!1163631 (not e!1163627))))

(declare-fun res!818878 () Bool)

(assert (=> b!1820968 (=> res!818878 e!1163627)))

(declare-fun matchR!2386 (Regex!4921 List!20013) Bool)

(assert (=> b!1820968 (= res!818878 (not (matchR!2386 (regex!3593 rule!559) lt!707483)))))

(declare-fun ruleValid!1085 (LexerInterface!3222 Rule!6986) Bool)

(assert (=> b!1820968 (ruleValid!1085 thiss!28068 rule!559)))

(declare-fun lt!707481 () Unit!34623)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!606 (LexerInterface!3222 Rule!6986 List!20015) Unit!34623)

(assert (=> b!1820968 (= lt!707481 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!606 thiss!28068 rule!559 rules!4538))))

(declare-fun b!1820969 () Bool)

(declare-fun res!818882 () Bool)

(assert (=> b!1820969 (=> (not res!818882) (not e!1163612))))

(declare-fun rulesInvariant!2891 (LexerInterface!3222 List!20015) Bool)

(assert (=> b!1820969 (= res!818882 (rulesInvariant!2891 thiss!28068 rules!4538))))

(assert (=> b!1820970 (= e!1163614 (and tp!514665 tp!514664))))

(declare-fun b!1820971 () Bool)

(declare-fun res!818881 () Bool)

(assert (=> b!1820971 (=> res!818881 e!1163630)))

(assert (=> b!1820971 (= res!818881 (not (= lt!707479 (generalisedUnion!448 lt!707482))))))

(declare-fun b!1820972 () Bool)

(assert (=> b!1820972 (= e!1163618 e!1163630)))

(declare-fun res!818879 () Bool)

(assert (=> b!1820972 (=> res!818879 e!1163630)))

(declare-fun contains!3635 (List!20014 Regex!4921) Bool)

(assert (=> b!1820972 (= res!818879 (not (contains!3635 lt!707482 (regex!3593 rule!559))))))

(assert (=> b!1820972 (= lt!707482 (map!4120 rules!4538 lambda!71277))))

(declare-fun lt!707475 () Unit!34623)

(declare-fun lemma!456 (List!20013 Rule!6986 List!20015 List!20013 LexerInterface!3222 Token!6740 List!20015) Unit!34623)

(assert (=> b!1820972 (= lt!707475 (lemma!456 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(assert (= (and start!180346 res!818876) b!1820954))

(assert (= (and b!1820954 res!818877) b!1820969))

(assert (= (and b!1820969 res!818882) b!1820964))

(assert (= (and b!1820964 res!818875) b!1820961))

(assert (= (and b!1820961 res!818880) b!1820957))

(assert (= (and b!1820957 res!818873) b!1820956))

(assert (= (and b!1820956 res!818872) b!1820968))

(assert (= (and b!1820968 (not res!818878)) b!1820953))

(assert (= (and b!1820953 (not res!818871)) b!1820963))

(assert (= (and b!1820963 (not res!818874)) b!1820972))

(assert (= (and b!1820972 (not res!818879)) b!1820959))

(assert (= (and b!1820959 (not res!818870)) b!1820971))

(assert (= (and b!1820971 (not res!818881)) b!1820952))

(assert (= (and start!180346 ((_ is Cons!19943) suffix!1667)) b!1820967))

(assert (= b!1820958 b!1820970))

(assert (= b!1820955 b!1820958))

(assert (= (and start!180346 ((_ is Cons!19945) rules!4538)) b!1820955))

(assert (= b!1820966 b!1820951))

(assert (= b!1820965 b!1820966))

(assert (= start!180346 b!1820965))

(assert (= b!1820950 b!1820962))

(assert (= start!180346 b!1820950))

(assert (= (and start!180346 ((_ is Cons!19943) input!3612)) b!1820960))

(declare-fun m!2249835 () Bool)

(assert (=> b!1820959 m!2249835))

(declare-fun m!2249837 () Bool)

(assert (=> b!1820954 m!2249837))

(declare-fun m!2249839 () Bool)

(assert (=> b!1820968 m!2249839))

(declare-fun m!2249841 () Bool)

(assert (=> b!1820968 m!2249841))

(declare-fun m!2249843 () Bool)

(assert (=> b!1820968 m!2249843))

(declare-fun m!2249845 () Bool)

(assert (=> b!1820971 m!2249845))

(declare-fun m!2249847 () Bool)

(assert (=> b!1820972 m!2249847))

(declare-fun m!2249849 () Bool)

(assert (=> b!1820972 m!2249849))

(declare-fun m!2249851 () Bool)

(assert (=> b!1820972 m!2249851))

(declare-fun m!2249853 () Bool)

(assert (=> start!180346 m!2249853))

(declare-fun m!2249855 () Bool)

(assert (=> b!1820953 m!2249855))

(declare-fun m!2249857 () Bool)

(assert (=> b!1820953 m!2249857))

(declare-fun m!2249859 () Bool)

(assert (=> b!1820953 m!2249859))

(assert (=> b!1820953 m!2249855))

(declare-fun m!2249861 () Bool)

(assert (=> b!1820953 m!2249861))

(declare-fun m!2249863 () Bool)

(assert (=> b!1820953 m!2249863))

(declare-fun m!2249865 () Bool)

(assert (=> b!1820965 m!2249865))

(declare-fun m!2249867 () Bool)

(assert (=> b!1820961 m!2249867))

(declare-fun m!2249869 () Bool)

(assert (=> b!1820956 m!2249869))

(declare-fun m!2249871 () Bool)

(assert (=> b!1820956 m!2249871))

(assert (=> b!1820956 m!2249871))

(declare-fun m!2249873 () Bool)

(assert (=> b!1820956 m!2249873))

(declare-fun m!2249875 () Bool)

(assert (=> b!1820958 m!2249875))

(declare-fun m!2249877 () Bool)

(assert (=> b!1820958 m!2249877))

(declare-fun m!2249879 () Bool)

(assert (=> b!1820969 m!2249879))

(declare-fun m!2249881 () Bool)

(assert (=> b!1820966 m!2249881))

(declare-fun m!2249883 () Bool)

(assert (=> b!1820966 m!2249883))

(declare-fun m!2249885 () Bool)

(assert (=> b!1820950 m!2249885))

(declare-fun m!2249887 () Bool)

(assert (=> b!1820950 m!2249887))

(assert (=> b!1820952 m!2249835))

(declare-fun m!2249889 () Bool)

(assert (=> b!1820963 m!2249889))

(declare-fun m!2249891 () Bool)

(assert (=> b!1820963 m!2249891))

(assert (=> b!1820963 m!2249849))

(declare-fun m!2249893 () Bool)

(assert (=> b!1820963 m!2249893))

(declare-fun m!2249895 () Bool)

(assert (=> b!1820964 m!2249895))

(check-sat b_and!141199 b_and!141205 b_and!141201 (not b!1820965) b_and!141207 (not b!1820956) (not b!1820967) (not b!1820958) (not start!180346) (not b!1820969) (not b!1820953) (not b!1820955) (not b!1820971) (not b!1820950) b_and!141197 (not b_next!51225) (not b_next!51217) (not b!1820960) (not b!1820968) (not b_next!51219) (not b_next!51221) (not b!1820952) tp_is_empty!8077 (not b!1820972) (not b!1820959) (not b!1820964) (not b!1820963) (not b_next!51215) (not b!1820966) (not b!1820954) b_and!141203 (not b!1820961) (not b_next!51223))
(check-sat b_and!141199 (not b_next!51217) b_and!141205 b_and!141201 b_and!141207 (not b_next!51215) b_and!141203 (not b_next!51223) b_and!141197 (not b_next!51225) (not b_next!51219) (not b_next!51221))
