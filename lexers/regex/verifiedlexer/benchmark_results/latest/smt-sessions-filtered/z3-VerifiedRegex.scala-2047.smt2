; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104374 () Bool)

(assert start!104374)

(declare-fun b!1179596 () Bool)

(declare-fun b_free!27981 () Bool)

(declare-fun b_next!28685 () Bool)

(assert (=> b!1179596 (= b_free!27981 (not b_next!28685))))

(declare-fun tp!335761 () Bool)

(declare-fun b_and!80925 () Bool)

(assert (=> b!1179596 (= tp!335761 b_and!80925)))

(declare-fun b_free!27983 () Bool)

(declare-fun b_next!28687 () Bool)

(assert (=> b!1179596 (= b_free!27983 (not b_next!28687))))

(declare-fun tp!335760 () Bool)

(declare-fun b_and!80927 () Bool)

(assert (=> b!1179596 (= tp!335760 b_and!80927)))

(declare-fun b!1179597 () Bool)

(declare-fun b_free!27985 () Bool)

(declare-fun b_next!28689 () Bool)

(assert (=> b!1179597 (= b_free!27985 (not b_next!28689))))

(declare-fun tp!335765 () Bool)

(declare-fun b_and!80929 () Bool)

(assert (=> b!1179597 (= tp!335765 b_and!80929)))

(declare-fun b_free!27987 () Bool)

(declare-fun b_next!28691 () Bool)

(assert (=> b!1179597 (= b_free!27987 (not b_next!28691))))

(declare-fun tp!335764 () Bool)

(declare-fun b_and!80931 () Bool)

(assert (=> b!1179597 (= tp!335764 b_and!80931)))

(declare-fun b!1179589 () Bool)

(declare-datatypes ((C!6928 0))(
  ( (C!6929 (val!3760 Int)) )
))
(declare-datatypes ((List!11724 0))(
  ( (Nil!11700) (Cons!11700 (h!17101 C!6928) (t!111294 List!11724)) )
))
(declare-datatypes ((IArray!7679 0))(
  ( (IArray!7680 (innerList!3897 List!11724)) )
))
(declare-datatypes ((Conc!3837 0))(
  ( (Node!3837 (left!10216 Conc!3837) (right!10546 Conc!3837) (csize!7904 Int) (cheight!4048 Int)) (Leaf!5885 (xs!6542 IArray!7679) (csize!7905 Int)) (Empty!3837) )
))
(declare-datatypes ((List!11725 0))(
  ( (Nil!11701) (Cons!11701 (h!17102 (_ BitVec 16)) (t!111295 List!11725)) )
))
(declare-datatypes ((BalanceConc!7696 0))(
  ( (BalanceConc!7697 (c!196642 Conc!3837)) )
))
(declare-datatypes ((TokenValue!2101 0))(
  ( (FloatLiteralValue!4202 (text!15152 List!11725)) (TokenValueExt!2100 (__x!7913 Int)) (Broken!10505 (value!66028 List!11725)) (Object!2124) (End!2101) (Def!2101) (Underscore!2101) (Match!2101) (Else!2101) (Error!2101) (Case!2101) (If!2101) (Extends!2101) (Abstract!2101) (Class!2101) (Val!2101) (DelimiterValue!4202 (del!2161 List!11725)) (KeywordValue!2107 (value!66029 List!11725)) (CommentValue!4202 (value!66030 List!11725)) (WhitespaceValue!4202 (value!66031 List!11725)) (IndentationValue!2101 (value!66032 List!11725)) (String!14172) (Int32!2101) (Broken!10506 (value!66033 List!11725)) (Boolean!2102) (Unit!18027) (OperatorValue!2104 (op!2161 List!11725)) (IdentifierValue!4202 (value!66034 List!11725)) (IdentifierValue!4203 (value!66035 List!11725)) (WhitespaceValue!4203 (value!66036 List!11725)) (True!4202) (False!4202) (Broken!10507 (value!66037 List!11725)) (Broken!10508 (value!66038 List!11725)) (True!4203) (RightBrace!2101) (RightBracket!2101) (Colon!2101) (Null!2101) (Comma!2101) (LeftBracket!2101) (False!4203) (LeftBrace!2101) (ImaginaryLiteralValue!2101 (text!15153 List!11725)) (StringLiteralValue!6303 (value!66039 List!11725)) (EOFValue!2101 (value!66040 List!11725)) (IdentValue!2101 (value!66041 List!11725)) (DelimiterValue!4203 (value!66042 List!11725)) (DedentValue!2101 (value!66043 List!11725)) (NewLineValue!2101 (value!66044 List!11725)) (IntegerValue!6303 (value!66045 (_ BitVec 32)) (text!15154 List!11725)) (IntegerValue!6304 (value!66046 Int) (text!15155 List!11725)) (Times!2101) (Or!2101) (Equal!2101) (Minus!2101) (Broken!10509 (value!66047 List!11725)) (And!2101) (Div!2101) (LessEqual!2101) (Mod!2101) (Concat!5406) (Not!2101) (Plus!2101) (SpaceValue!2101 (value!66048 List!11725)) (IntegerValue!6305 (value!66049 Int) (text!15156 List!11725)) (StringLiteralValue!6304 (text!15157 List!11725)) (FloatLiteralValue!4203 (text!15158 List!11725)) (BytesLiteralValue!2101 (value!66050 List!11725)) (CommentValue!4203 (value!66051 List!11725)) (StringLiteralValue!6305 (value!66052 List!11725)) (ErrorTokenValue!2101 (msg!2162 List!11725)) )
))
(declare-datatypes ((Regex!3305 0))(
  ( (ElementMatch!3305 (c!196643 C!6928)) (Concat!5407 (regOne!7122 Regex!3305) (regTwo!7122 Regex!3305)) (EmptyExpr!3305) (Star!3305 (reg!3634 Regex!3305)) (EmptyLang!3305) (Union!3305 (regOne!7123 Regex!3305) (regTwo!7123 Regex!3305)) )
))
(declare-datatypes ((String!14173 0))(
  ( (String!14174 (value!66053 String)) )
))
(declare-datatypes ((TokenValueInjection!3902 0))(
  ( (TokenValueInjection!3903 (toValue!3140 Int) (toChars!2999 Int)) )
))
(declare-datatypes ((Rule!3870 0))(
  ( (Rule!3871 (regex!2035 Regex!3305) (tag!2297 String!14173) (isSeparator!2035 Bool) (transformation!2035 TokenValueInjection!3902)) )
))
(declare-datatypes ((List!11726 0))(
  ( (Nil!11702) (Cons!11702 (h!17103 Rule!3870) (t!111296 List!11726)) )
))
(declare-fun rules!4386 () List!11726)

(declare-fun e!756912 () Bool)

(declare-fun e!756908 () Bool)

(declare-fun tp!335762 () Bool)

(declare-fun inv!15519 (String!14173) Bool)

(declare-fun inv!15522 (TokenValueInjection!3902) Bool)

(assert (=> b!1179589 (= e!756912 (and tp!335762 (inv!15519 (tag!2297 (h!17103 rules!4386))) (inv!15522 (transformation!2035 (h!17103 rules!4386))) e!756908))))

(declare-fun tp!335766 () Bool)

(declare-fun e!756902 () Bool)

(declare-datatypes ((Token!3732 0))(
  ( (Token!3733 (value!66054 TokenValue!2101) (rule!3456 Rule!3870) (size!9267 Int) (originalCharacters!2589 List!11724)) )
))
(declare-datatypes ((List!11727 0))(
  ( (Nil!11703) (Cons!11703 (h!17104 Token!3732) (t!111297 List!11727)) )
))
(declare-fun l!6534 () List!11727)

(declare-fun e!756901 () Bool)

(declare-fun b!1179590 () Bool)

(declare-fun inv!15523 (Token!3732) Bool)

(assert (=> b!1179590 (= e!756902 (and (inv!15523 (h!17104 l!6534)) e!756901 tp!335766))))

(declare-fun tp!335767 () Bool)

(declare-fun e!756904 () Bool)

(declare-fun b!1179591 () Bool)

(declare-fun inv!21 (TokenValue!2101) Bool)

(assert (=> b!1179591 (= e!756901 (and (inv!21 (value!66054 (h!17104 l!6534))) e!756904 tp!335767))))

(declare-fun b!1179592 () Bool)

(declare-fun res!533199 () Bool)

(declare-fun e!756907 () Bool)

(assert (=> b!1179592 (=> (not res!533199) (not e!756907))))

(declare-datatypes ((LexerInterface!1730 0))(
  ( (LexerInterfaceExt!1727 (__x!7914 Int)) (Lexer!1728) )
))
(declare-fun thiss!27592 () LexerInterface!1730)

(declare-fun tokensListTwoByTwoPredicateSeparableList!124 (LexerInterface!1730 List!11727 List!11726) Bool)

(assert (=> b!1179592 (= res!533199 (tokensListTwoByTwoPredicateSeparableList!124 thiss!27592 l!6534 rules!4386))))

(declare-fun b!1179593 () Bool)

(declare-fun res!533201 () Bool)

(assert (=> b!1179593 (=> (not res!533201) (not e!756907))))

(declare-fun rulesInvariant!1604 (LexerInterface!1730 List!11726) Bool)

(assert (=> b!1179593 (= res!533201 (rulesInvariant!1604 thiss!27592 rules!4386))))

(declare-fun b!1179594 () Bool)

(declare-fun e!756903 () Bool)

(declare-fun e!756909 () Bool)

(assert (=> b!1179594 (= e!756903 e!756909)))

(declare-fun res!533195 () Bool)

(assert (=> b!1179594 (=> (not res!533195) (not e!756909))))

(declare-fun lt!406358 () List!11727)

(declare-fun rulesProduceIndividualToken!763 (LexerInterface!1730 List!11726 Token!3732) Bool)

(assert (=> b!1179594 (= res!533195 (rulesProduceIndividualToken!763 thiss!27592 rules!4386 (h!17104 lt!406358)))))

(declare-fun res!533198 () Bool)

(assert (=> start!104374 (=> (not res!533198) (not e!756907))))

(get-info :version)

(assert (=> start!104374 (= res!533198 ((_ is Lexer!1728) thiss!27592))))

(assert (=> start!104374 e!756907))

(assert (=> start!104374 true))

(declare-fun e!756911 () Bool)

(assert (=> start!104374 e!756911))

(assert (=> start!104374 e!756902))

(declare-fun b!1179595 () Bool)

(declare-fun res!533194 () Bool)

(assert (=> b!1179595 (=> (not res!533194) (not e!756907))))

(assert (=> b!1179595 (= res!533194 ((_ is Nil!11703) l!6534))))

(declare-fun e!756905 () Bool)

(assert (=> b!1179596 (= e!756905 (and tp!335761 tp!335760))))

(assert (=> b!1179597 (= e!756908 (and tp!335765 tp!335764))))

(declare-fun b!1179598 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!596 (LexerInterface!1730 List!11726 List!11727) Bool)

(assert (=> b!1179598 (= e!756909 (rulesProduceEachTokenIndividuallyList!596 thiss!27592 rules!4386 (t!111297 lt!406358)))))

(declare-fun b!1179599 () Bool)

(declare-fun tp!335768 () Bool)

(assert (=> b!1179599 (= e!756911 (and e!756912 tp!335768))))

(declare-fun b!1179600 () Bool)

(assert (=> b!1179600 (= e!756907 (not true))))

(declare-fun subseq!293 (List!11727 List!11727) Bool)

(assert (=> b!1179600 (subseq!293 lt!406358 l!6534)))

(declare-datatypes ((Unit!18028 0))(
  ( (Unit!18029) )
))
(declare-fun lt!406357 () Unit!18028)

(declare-fun i!1621 () Int)

(declare-fun lemmaDropSubseq!56 (List!11727 Int) Unit!18028)

(assert (=> b!1179600 (= lt!406357 (lemmaDropSubseq!56 l!6534 i!1621))))

(assert (=> b!1179600 (= (rulesProduceEachTokenIndividuallyList!596 thiss!27592 rules!4386 lt!406358) e!756903)))

(declare-fun res!533197 () Bool)

(assert (=> b!1179600 (=> res!533197 e!756903)))

(assert (=> b!1179600 (= res!533197 (not ((_ is Cons!11703) lt!406358)))))

(declare-fun drop!515 (List!11727 Int) List!11727)

(assert (=> b!1179600 (= lt!406358 (drop!515 l!6534 i!1621))))

(declare-fun b!1179601 () Bool)

(declare-fun res!533200 () Bool)

(assert (=> b!1179601 (=> (not res!533200) (not e!756907))))

(assert (=> b!1179601 (= res!533200 (rulesProduceEachTokenIndividuallyList!596 thiss!27592 rules!4386 l!6534))))

(declare-fun b!1179602 () Bool)

(declare-fun res!533196 () Bool)

(assert (=> b!1179602 (=> (not res!533196) (not e!756907))))

(declare-fun isEmpty!7076 (List!11726) Bool)

(assert (=> b!1179602 (= res!533196 (not (isEmpty!7076 rules!4386)))))

(declare-fun tp!335763 () Bool)

(declare-fun b!1179603 () Bool)

(assert (=> b!1179603 (= e!756904 (and tp!335763 (inv!15519 (tag!2297 (rule!3456 (h!17104 l!6534)))) (inv!15522 (transformation!2035 (rule!3456 (h!17104 l!6534)))) e!756905))))

(assert (= (and start!104374 res!533198) b!1179602))

(assert (= (and b!1179602 res!533196) b!1179593))

(assert (= (and b!1179593 res!533201) b!1179601))

(assert (= (and b!1179601 res!533200) b!1179592))

(assert (= (and b!1179592 res!533199) b!1179595))

(assert (= (and b!1179595 res!533194) b!1179600))

(assert (= (and b!1179600 (not res!533197)) b!1179594))

(assert (= (and b!1179594 res!533195) b!1179598))

(assert (= b!1179589 b!1179597))

(assert (= b!1179599 b!1179589))

(assert (= (and start!104374 ((_ is Cons!11702) rules!4386)) b!1179599))

(assert (= b!1179603 b!1179596))

(assert (= b!1179591 b!1179603))

(assert (= b!1179590 b!1179591))

(assert (= (and start!104374 ((_ is Cons!11703) l!6534)) b!1179590))

(declare-fun m!1355961 () Bool)

(assert (=> b!1179591 m!1355961))

(declare-fun m!1355963 () Bool)

(assert (=> b!1179601 m!1355963))

(declare-fun m!1355965 () Bool)

(assert (=> b!1179598 m!1355965))

(declare-fun m!1355967 () Bool)

(assert (=> b!1179602 m!1355967))

(declare-fun m!1355969 () Bool)

(assert (=> b!1179594 m!1355969))

(declare-fun m!1355971 () Bool)

(assert (=> b!1179603 m!1355971))

(declare-fun m!1355973 () Bool)

(assert (=> b!1179603 m!1355973))

(declare-fun m!1355975 () Bool)

(assert (=> b!1179590 m!1355975))

(declare-fun m!1355977 () Bool)

(assert (=> b!1179589 m!1355977))

(declare-fun m!1355979 () Bool)

(assert (=> b!1179589 m!1355979))

(declare-fun m!1355981 () Bool)

(assert (=> b!1179592 m!1355981))

(declare-fun m!1355983 () Bool)

(assert (=> b!1179593 m!1355983))

(declare-fun m!1355985 () Bool)

(assert (=> b!1179600 m!1355985))

(declare-fun m!1355987 () Bool)

(assert (=> b!1179600 m!1355987))

(declare-fun m!1355989 () Bool)

(assert (=> b!1179600 m!1355989))

(declare-fun m!1355991 () Bool)

(assert (=> b!1179600 m!1355991))

(check-sat (not b_next!28691) b_and!80925 (not b_next!28689) (not b!1179601) b_and!80929 (not b!1179594) (not b!1179599) (not b!1179598) (not b!1179589) (not b!1179591) (not b_next!28687) (not b_next!28685) (not b!1179602) (not b!1179590) (not b!1179600) b_and!80927 (not b!1179593) (not b!1179603) b_and!80931 (not b!1179592))
(check-sat (not b_next!28687) (not b_next!28691) b_and!80925 (not b_next!28685) (not b_next!28689) b_and!80929 b_and!80927 b_and!80931)
