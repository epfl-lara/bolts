; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19826 () Bool)

(assert start!19826)

(declare-fun b!182945 () Bool)

(declare-fun b_free!7121 () Bool)

(declare-fun b_next!7121 () Bool)

(assert (=> b!182945 (= b_free!7121 (not b_next!7121))))

(declare-fun tp!86815 () Bool)

(declare-fun b_and!12533 () Bool)

(assert (=> b!182945 (= tp!86815 b_and!12533)))

(declare-fun b_free!7123 () Bool)

(declare-fun b_next!7123 () Bool)

(assert (=> b!182945 (= b_free!7123 (not b_next!7123))))

(declare-fun tp!86808 () Bool)

(declare-fun b_and!12535 () Bool)

(assert (=> b!182945 (= tp!86808 b_and!12535)))

(declare-fun b!182918 () Bool)

(declare-fun b_free!7125 () Bool)

(declare-fun b_next!7125 () Bool)

(assert (=> b!182918 (= b_free!7125 (not b_next!7125))))

(declare-fun tp!86811 () Bool)

(declare-fun b_and!12537 () Bool)

(assert (=> b!182918 (= tp!86811 b_and!12537)))

(declare-fun b_free!7127 () Bool)

(declare-fun b_next!7127 () Bool)

(assert (=> b!182918 (= b_free!7127 (not b_next!7127))))

(declare-fun tp!86819 () Bool)

(declare-fun b_and!12539 () Bool)

(assert (=> b!182918 (= tp!86819 b_and!12539)))

(declare-fun b!182935 () Bool)

(declare-fun b_free!7129 () Bool)

(declare-fun b_next!7129 () Bool)

(assert (=> b!182935 (= b_free!7129 (not b_next!7129))))

(declare-fun tp!86810 () Bool)

(declare-fun b_and!12541 () Bool)

(assert (=> b!182935 (= tp!86810 b_and!12541)))

(declare-fun b_free!7131 () Bool)

(declare-fun b_next!7131 () Bool)

(assert (=> b!182935 (= b_free!7131 (not b_next!7131))))

(declare-fun tp!86813 () Bool)

(declare-fun b_and!12543 () Bool)

(assert (=> b!182935 (= tp!86813 b_and!12543)))

(declare-fun bs!18198 () Bool)

(declare-fun b!182936 () Bool)

(declare-fun b!182921 () Bool)

(assert (= bs!18198 (and b!182936 b!182921)))

(declare-fun lambda!5446 () Int)

(declare-fun lambda!5445 () Int)

(assert (=> bs!18198 (not (= lambda!5446 lambda!5445))))

(declare-fun b!182956 () Bool)

(declare-fun e!111627 () Bool)

(assert (=> b!182956 (= e!111627 true)))

(declare-fun b!182955 () Bool)

(declare-fun e!111626 () Bool)

(assert (=> b!182955 (= e!111626 e!111627)))

(declare-fun b!182954 () Bool)

(declare-fun e!111625 () Bool)

(assert (=> b!182954 (= e!111625 e!111626)))

(assert (=> b!182936 e!111625))

(assert (= b!182955 b!182956))

(assert (= b!182954 b!182955))

(declare-datatypes ((C!2480 0))(
  ( (C!2481 (val!1126 Int)) )
))
(declare-datatypes ((List!3067 0))(
  ( (Nil!3057) (Cons!3057 (h!8454 (_ BitVec 16)) (t!28421 List!3067)) )
))
(declare-datatypes ((TokenValue!577 0))(
  ( (FloatLiteralValue!1154 (text!4484 List!3067)) (TokenValueExt!576 (__x!2641 Int)) (Broken!2885 (value!20107 List!3067)) (Object!586) (End!577) (Def!577) (Underscore!577) (Match!577) (Else!577) (Error!577) (Case!577) (If!577) (Extends!577) (Abstract!577) (Class!577) (Val!577) (DelimiterValue!1154 (del!637 List!3067)) (KeywordValue!583 (value!20108 List!3067)) (CommentValue!1154 (value!20109 List!3067)) (WhitespaceValue!1154 (value!20110 List!3067)) (IndentationValue!577 (value!20111 List!3067)) (String!3964) (Int32!577) (Broken!2886 (value!20112 List!3067)) (Boolean!578) (Unit!2819) (OperatorValue!580 (op!637 List!3067)) (IdentifierValue!1154 (value!20113 List!3067)) (IdentifierValue!1155 (value!20114 List!3067)) (WhitespaceValue!1155 (value!20115 List!3067)) (True!1154) (False!1154) (Broken!2887 (value!20116 List!3067)) (Broken!2888 (value!20117 List!3067)) (True!1155) (RightBrace!577) (RightBracket!577) (Colon!577) (Null!577) (Comma!577) (LeftBracket!577) (False!1155) (LeftBrace!577) (ImaginaryLiteralValue!577 (text!4485 List!3067)) (StringLiteralValue!1731 (value!20118 List!3067)) (EOFValue!577 (value!20119 List!3067)) (IdentValue!577 (value!20120 List!3067)) (DelimiterValue!1155 (value!20121 List!3067)) (DedentValue!577 (value!20122 List!3067)) (NewLineValue!577 (value!20123 List!3067)) (IntegerValue!1731 (value!20124 (_ BitVec 32)) (text!4486 List!3067)) (IntegerValue!1732 (value!20125 Int) (text!4487 List!3067)) (Times!577) (Or!577) (Equal!577) (Minus!577) (Broken!2889 (value!20126 List!3067)) (And!577) (Div!577) (LessEqual!577) (Mod!577) (Concat!1356) (Not!577) (Plus!577) (SpaceValue!577 (value!20127 List!3067)) (IntegerValue!1733 (value!20128 Int) (text!4488 List!3067)) (StringLiteralValue!1732 (text!4489 List!3067)) (FloatLiteralValue!1155 (text!4490 List!3067)) (BytesLiteralValue!577 (value!20129 List!3067)) (CommentValue!1155 (value!20130 List!3067)) (StringLiteralValue!1733 (value!20131 List!3067)) (ErrorTokenValue!577 (msg!638 List!3067)) )
))
(declare-datatypes ((List!3068 0))(
  ( (Nil!3058) (Cons!3058 (h!8455 C!2480) (t!28422 List!3068)) )
))
(declare-datatypes ((IArray!1865 0))(
  ( (IArray!1866 (innerList!990 List!3068)) )
))
(declare-datatypes ((Conc!932 0))(
  ( (Node!932 (left!2376 Conc!932) (right!2706 Conc!932) (csize!2094 Int) (cheight!1143 Int)) (Leaf!1549 (xs!3527 IArray!1865) (csize!2095 Int)) (Empty!932) )
))
(declare-datatypes ((BalanceConc!1872 0))(
  ( (BalanceConc!1873 (c!35625 Conc!932)) )
))
(declare-datatypes ((TokenValueInjection!926 0))(
  ( (TokenValueInjection!927 (toValue!1226 Int) (toChars!1085 Int)) )
))
(declare-datatypes ((Regex!779 0))(
  ( (ElementMatch!779 (c!35626 C!2480)) (Concat!1357 (regOne!2070 Regex!779) (regTwo!2070 Regex!779)) (EmptyExpr!779) (Star!779 (reg!1108 Regex!779)) (EmptyLang!779) (Union!779 (regOne!2071 Regex!779) (regTwo!2071 Regex!779)) )
))
(declare-datatypes ((String!3965 0))(
  ( (String!3966 (value!20132 String)) )
))
(declare-datatypes ((Rule!910 0))(
  ( (Rule!911 (regex!555 Regex!779) (tag!733 String!3965) (isSeparator!555 Bool) (transformation!555 TokenValueInjection!926)) )
))
(declare-datatypes ((List!3069 0))(
  ( (Nil!3059) (Cons!3059 (h!8456 Rule!910) (t!28423 List!3069)) )
))
(declare-fun rules!1920 () List!3069)

(get-info :version)

(assert (= (and b!182936 ((_ is Cons!3059) rules!1920)) b!182954))

(declare-fun order!1805 () Int)

(declare-fun order!1807 () Int)

(declare-fun dynLambda!1239 (Int Int) Int)

(declare-fun dynLambda!1240 (Int Int) Int)

(assert (=> b!182956 (< (dynLambda!1239 order!1805 (toValue!1226 (transformation!555 (h!8456 rules!1920)))) (dynLambda!1240 order!1807 lambda!5446))))

(declare-fun order!1809 () Int)

(declare-fun dynLambda!1241 (Int Int) Int)

(assert (=> b!182956 (< (dynLambda!1241 order!1809 (toChars!1085 (transformation!555 (h!8456 rules!1920)))) (dynLambda!1240 order!1807 lambda!5446))))

(assert (=> b!182936 true))

(declare-fun b!182913 () Bool)

(declare-fun e!111599 () Bool)

(declare-fun e!111609 () Bool)

(assert (=> b!182913 (= e!111599 e!111609)))

(declare-fun res!83036 () Bool)

(assert (=> b!182913 (=> (not res!83036) (not e!111609))))

(declare-fun lt!60617 () List!3068)

(declare-fun lt!60612 () List!3068)

(assert (=> b!182913 (= res!83036 (= lt!60617 lt!60612))))

(declare-datatypes ((Token!854 0))(
  ( (Token!855 (value!20133 TokenValue!577) (rule!1070 Rule!910) (size!2491 Int) (originalCharacters!598 List!3068)) )
))
(declare-fun separatorToken!170 () Token!854)

(declare-datatypes ((List!3070 0))(
  ( (Nil!3060) (Cons!3060 (h!8457 Token!854) (t!28424 List!3070)) )
))
(declare-datatypes ((IArray!1867 0))(
  ( (IArray!1868 (innerList!991 List!3070)) )
))
(declare-datatypes ((Conc!933 0))(
  ( (Node!933 (left!2377 Conc!933) (right!2707 Conc!933) (csize!2096 Int) (cheight!1144 Int)) (Leaf!1550 (xs!3528 IArray!1867) (csize!2097 Int)) (Empty!933) )
))
(declare-datatypes ((BalanceConc!1874 0))(
  ( (BalanceConc!1875 (c!35627 Conc!933)) )
))
(declare-fun lt!60620 () BalanceConc!1874)

(declare-datatypes ((LexerInterface!441 0))(
  ( (LexerInterfaceExt!438 (__x!2642 Int)) (Lexer!439) )
))
(declare-fun thiss!17480 () LexerInterface!441)

(declare-fun list!1125 (BalanceConc!1872) List!3068)

(declare-fun printWithSeparatorTokenWhenNeededRec!124 (LexerInterface!441 List!3069 BalanceConc!1874 Token!854 Int) BalanceConc!1872)

(assert (=> b!182913 (= lt!60612 (list!1125 (printWithSeparatorTokenWhenNeededRec!124 thiss!17480 rules!1920 lt!60620 separatorToken!170 0)))))

(declare-fun tokens!465 () List!3070)

(declare-fun printWithSeparatorTokenWhenNeededList!134 (LexerInterface!441 List!3069 List!3070 Token!854) List!3068)

(assert (=> b!182913 (= lt!60617 (printWithSeparatorTokenWhenNeededList!134 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!182914 () Bool)

(declare-fun e!111610 () Bool)

(assert (=> b!182914 (= e!111609 (not e!111610))))

(declare-fun res!83049 () Bool)

(assert (=> b!182914 (=> res!83049 e!111610)))

(declare-fun lt!60601 () List!3068)

(declare-fun seqFromList!487 (List!3070) BalanceConc!1874)

(assert (=> b!182914 (= res!83049 (not (= lt!60601 (list!1125 (printWithSeparatorTokenWhenNeededRec!124 thiss!17480 rules!1920 (seqFromList!487 (t!28424 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!60616 () List!3068)

(declare-fun lt!60618 () List!3068)

(assert (=> b!182914 (= lt!60616 lt!60618)))

(declare-fun lt!60604 () List!3068)

(declare-fun lt!60607 () List!3068)

(declare-fun ++!722 (List!3068 List!3068) List!3068)

(assert (=> b!182914 (= lt!60618 (++!722 lt!60604 lt!60607))))

(declare-fun lt!60610 () List!3068)

(assert (=> b!182914 (= lt!60616 (++!722 (++!722 lt!60604 lt!60610) lt!60601))))

(declare-datatypes ((Unit!2820 0))(
  ( (Unit!2821) )
))
(declare-fun lt!60606 () Unit!2820)

(declare-fun lemmaConcatAssociativity!244 (List!3068 List!3068 List!3068) Unit!2820)

(assert (=> b!182914 (= lt!60606 (lemmaConcatAssociativity!244 lt!60604 lt!60610 lt!60601))))

(declare-fun charsOf!210 (Token!854) BalanceConc!1872)

(assert (=> b!182914 (= lt!60604 (list!1125 (charsOf!210 (h!8457 tokens!465))))))

(assert (=> b!182914 (= lt!60607 (++!722 lt!60610 lt!60601))))

(assert (=> b!182914 (= lt!60601 (printWithSeparatorTokenWhenNeededList!134 thiss!17480 rules!1920 (t!28424 tokens!465) separatorToken!170))))

(assert (=> b!182914 (= lt!60610 (list!1125 (charsOf!210 separatorToken!170)))))

(declare-fun b!182915 () Bool)

(declare-fun res!83032 () Bool)

(declare-fun e!111617 () Bool)

(assert (=> b!182915 (=> (not res!83032) (not e!111617))))

(declare-datatypes ((tuple2!3058 0))(
  ( (tuple2!3059 (_1!1745 Token!854) (_2!1745 List!3068)) )
))
(declare-fun lt!60611 () tuple2!3058)

(declare-fun isEmpty!1415 (List!3068) Bool)

(assert (=> b!182915 (= res!83032 (isEmpty!1415 (_2!1745 lt!60611)))))

(declare-fun b!182916 () Bool)

(declare-fun e!111608 () Bool)

(assert (=> b!182916 (= e!111608 (not (= lt!60617 (++!722 lt!60604 lt!60601))))))

(declare-fun b!182917 () Bool)

(declare-fun e!111607 () Bool)

(declare-fun tp!86807 () Bool)

(declare-fun e!111594 () Bool)

(declare-fun inv!21 (TokenValue!577) Bool)

(assert (=> b!182917 (= e!111594 (and (inv!21 (value!20133 (h!8457 tokens!465))) e!111607 tp!86807))))

(declare-fun e!111601 () Bool)

(assert (=> b!182918 (= e!111601 (and tp!86811 tp!86819))))

(declare-fun res!83052 () Bool)

(declare-fun e!111616 () Bool)

(assert (=> start!19826 (=> (not res!83052) (not e!111616))))

(assert (=> start!19826 (= res!83052 ((_ is Lexer!439) thiss!17480))))

(assert (=> start!19826 e!111616))

(assert (=> start!19826 true))

(declare-fun e!111613 () Bool)

(assert (=> start!19826 e!111613))

(declare-fun e!111603 () Bool)

(declare-fun inv!3891 (Token!854) Bool)

(assert (=> start!19826 (and (inv!3891 separatorToken!170) e!111603)))

(declare-fun e!111606 () Bool)

(assert (=> start!19826 e!111606))

(declare-fun b!182919 () Bool)

(declare-fun res!83031 () Bool)

(assert (=> b!182919 (=> (not res!83031) (not e!111599))))

(assert (=> b!182919 (= res!83031 (isSeparator!555 (rule!1070 separatorToken!170)))))

(declare-fun b!182920 () Bool)

(declare-fun res!83044 () Bool)

(assert (=> b!182920 (=> (not res!83044) (not e!111609))))

(declare-fun seqFromList!488 (List!3068) BalanceConc!1872)

(assert (=> b!182920 (= res!83044 (= (list!1125 (seqFromList!488 lt!60617)) lt!60612))))

(declare-fun res!83037 () Bool)

(assert (=> b!182921 (=> (not res!83037) (not e!111599))))

(declare-fun forall!629 (List!3070 Int) Bool)

(assert (=> b!182921 (= res!83037 (forall!629 tokens!465 lambda!5445))))

(declare-fun b!182922 () Bool)

(declare-fun e!111593 () Bool)

(declare-fun e!111611 () Bool)

(assert (=> b!182922 (= e!111593 e!111611)))

(declare-fun res!83035 () Bool)

(assert (=> b!182922 (=> res!83035 e!111611)))

(declare-fun lt!60613 () Bool)

(assert (=> b!182922 (= res!83035 (not lt!60613))))

(assert (=> b!182922 e!111617))

(declare-fun res!83050 () Bool)

(assert (=> b!182922 (=> (not res!83050) (not e!111617))))

(assert (=> b!182922 (= res!83050 (= (_1!1745 lt!60611) (h!8457 tokens!465)))))

(declare-datatypes ((Option!388 0))(
  ( (None!387) (Some!387 (v!13874 tuple2!3058)) )
))
(declare-fun lt!60597 () Option!388)

(declare-fun get!865 (Option!388) tuple2!3058)

(assert (=> b!182922 (= lt!60611 (get!865 lt!60597))))

(declare-fun isDefined!239 (Option!388) Bool)

(assert (=> b!182922 (isDefined!239 lt!60597)))

(declare-fun maxPrefix!171 (LexerInterface!441 List!3069 List!3068) Option!388)

(assert (=> b!182922 (= lt!60597 (maxPrefix!171 thiss!17480 rules!1920 lt!60604))))

(declare-fun b!182923 () Bool)

(declare-fun matchR!117 (Regex!779 List!3068) Bool)

(assert (=> b!182923 (= e!111617 (matchR!117 (regex!555 (rule!1070 (h!8457 tokens!465))) lt!60604))))

(declare-fun b!182924 () Bool)

(declare-fun e!111596 () Bool)

(declare-fun lt!60614 () Option!388)

(declare-fun head!636 (List!3070) Token!854)

(assert (=> b!182924 (= e!111596 (= (_1!1745 (get!865 lt!60614)) (head!636 tokens!465)))))

(declare-fun b!182925 () Bool)

(declare-fun res!83047 () Bool)

(assert (=> b!182925 (=> (not res!83047) (not e!111599))))

(assert (=> b!182925 (= res!83047 ((_ is Cons!3060) tokens!465))))

(declare-fun b!182926 () Bool)

(declare-fun res!83042 () Bool)

(assert (=> b!182926 (=> (not res!83042) (not e!111616))))

(declare-fun isEmpty!1416 (List!3069) Bool)

(assert (=> b!182926 (= res!83042 (not (isEmpty!1416 rules!1920)))))

(declare-fun b!182927 () Bool)

(declare-fun res!83051 () Bool)

(assert (=> b!182927 (=> (not res!83051) (not e!111616))))

(declare-fun rulesInvariant!407 (LexerInterface!441 List!3069) Bool)

(assert (=> b!182927 (= res!83051 (rulesInvariant!407 thiss!17480 rules!1920))))

(declare-fun b!182928 () Bool)

(declare-fun e!111615 () Bool)

(declare-fun tp!86812 () Bool)

(assert (=> b!182928 (= e!111613 (and e!111615 tp!86812))))

(declare-fun tp!86818 () Bool)

(declare-fun b!182929 () Bool)

(declare-fun e!111618 () Bool)

(declare-fun inv!3888 (String!3965) Bool)

(declare-fun inv!3892 (TokenValueInjection!926) Bool)

(assert (=> b!182929 (= e!111607 (and tp!86818 (inv!3888 (tag!733 (rule!1070 (h!8457 tokens!465)))) (inv!3892 (transformation!555 (rule!1070 (h!8457 tokens!465)))) e!111618))))

(declare-fun b!182930 () Bool)

(declare-fun res!83046 () Bool)

(assert (=> b!182930 (=> (not res!83046) (not e!111599))))

(declare-fun sepAndNonSepRulesDisjointChars!144 (List!3069 List!3069) Bool)

(assert (=> b!182930 (= res!83046 (sepAndNonSepRulesDisjointChars!144 rules!1920 rules!1920))))

(declare-fun b!182931 () Bool)

(declare-fun e!111612 () Bool)

(assert (=> b!182931 (= e!111612 e!111596)))

(declare-fun res!83038 () Bool)

(assert (=> b!182931 (=> (not res!83038) (not e!111596))))

(assert (=> b!182931 (= res!83038 (isDefined!239 lt!60614))))

(assert (=> b!182931 (= lt!60614 (maxPrefix!171 thiss!17480 rules!1920 lt!60617))))

(declare-fun b!182932 () Bool)

(declare-fun res!83034 () Bool)

(declare-fun e!111595 () Bool)

(assert (=> b!182932 (=> res!83034 e!111595)))

(declare-fun rulesProduceIndividualToken!190 (LexerInterface!441 List!3069 Token!854) Bool)

(assert (=> b!182932 (= res!83034 (not (rulesProduceIndividualToken!190 thiss!17480 rules!1920 (h!8457 tokens!465))))))

(declare-fun b!182933 () Bool)

(declare-fun res!83041 () Bool)

(assert (=> b!182933 (=> (not res!83041) (not e!111599))))

(assert (=> b!182933 (= res!83041 (rulesProduceIndividualToken!190 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!182934 () Bool)

(declare-fun tp!86809 () Bool)

(assert (=> b!182934 (= e!111615 (and tp!86809 (inv!3888 (tag!733 (h!8456 rules!1920))) (inv!3892 (transformation!555 (h!8456 rules!1920))) e!111601))))

(assert (=> b!182935 (= e!111618 (and tp!86810 tp!86813))))

(assert (=> b!182936 (= e!111595 e!111593)))

(declare-fun res!83033 () Bool)

(assert (=> b!182936 (=> res!83033 e!111593)))

(declare-datatypes ((tuple2!3060 0))(
  ( (tuple2!3061 (_1!1746 Token!854) (_2!1746 BalanceConc!1872)) )
))
(declare-datatypes ((Option!389 0))(
  ( (None!388) (Some!388 (v!13875 tuple2!3060)) )
))
(declare-fun isDefined!240 (Option!389) Bool)

(declare-fun maxPrefixZipperSequence!134 (LexerInterface!441 List!3069 BalanceConc!1872) Option!389)

(assert (=> b!182936 (= res!83033 (not (isDefined!240 (maxPrefixZipperSequence!134 thiss!17480 rules!1920 (seqFromList!488 (originalCharacters!598 (h!8457 tokens!465)))))))))

(declare-fun lt!60619 () Unit!2820)

(declare-fun forallContained!122 (List!3070 Int Token!854) Unit!2820)

(assert (=> b!182936 (= lt!60619 (forallContained!122 tokens!465 lambda!5446 (h!8457 tokens!465)))))

(assert (=> b!182936 (= lt!60604 (originalCharacters!598 (h!8457 tokens!465)))))

(declare-fun tp!86816 () Bool)

(declare-fun e!111604 () Bool)

(declare-fun b!182937 () Bool)

(assert (=> b!182937 (= e!111603 (and (inv!21 (value!20133 separatorToken!170)) e!111604 tp!86816))))

(declare-fun b!182938 () Bool)

(declare-fun e!111605 () Bool)

(assert (=> b!182938 (= e!111605 e!111595)))

(declare-fun res!83053 () Bool)

(assert (=> b!182938 (=> res!83053 e!111595)))

(declare-fun lt!60615 () List!3068)

(declare-fun lt!60605 () List!3068)

(assert (=> b!182938 (= res!83053 (or (not (= lt!60605 lt!60615)) (not (= lt!60615 lt!60604)) (not (= lt!60605 lt!60604))))))

(declare-fun printList!125 (LexerInterface!441 List!3070) List!3068)

(assert (=> b!182938 (= lt!60615 (printList!125 thiss!17480 (Cons!3060 (h!8457 tokens!465) Nil!3060)))))

(declare-fun lt!60608 () BalanceConc!1872)

(assert (=> b!182938 (= lt!60605 (list!1125 lt!60608))))

(declare-fun lt!60598 () BalanceConc!1874)

(declare-fun printTailRec!135 (LexerInterface!441 BalanceConc!1874 Int BalanceConc!1872) BalanceConc!1872)

(assert (=> b!182938 (= lt!60608 (printTailRec!135 thiss!17480 lt!60598 0 (BalanceConc!1873 Empty!932)))))

(declare-fun print!172 (LexerInterface!441 BalanceConc!1874) BalanceConc!1872)

(assert (=> b!182938 (= lt!60608 (print!172 thiss!17480 lt!60598))))

(declare-fun singletonSeq!107 (Token!854) BalanceConc!1874)

(assert (=> b!182938 (= lt!60598 (singletonSeq!107 (h!8457 tokens!465)))))

(declare-fun b!182939 () Bool)

(declare-fun res!83043 () Bool)

(assert (=> b!182939 (=> res!83043 e!111595)))

(declare-fun isEmpty!1417 (BalanceConc!1874) Bool)

(declare-datatypes ((tuple2!3062 0))(
  ( (tuple2!3063 (_1!1747 BalanceConc!1874) (_2!1747 BalanceConc!1872)) )
))
(declare-fun lex!241 (LexerInterface!441 List!3069 BalanceConc!1872) tuple2!3062)

(assert (=> b!182939 (= res!83043 (isEmpty!1417 (_1!1747 (lex!241 thiss!17480 rules!1920 (seqFromList!488 lt!60604)))))))

(declare-fun b!182940 () Bool)

(declare-fun e!111614 () Bool)

(declare-fun tp!86817 () Bool)

(assert (=> b!182940 (= e!111604 (and tp!86817 (inv!3888 (tag!733 (rule!1070 separatorToken!170))) (inv!3892 (transformation!555 (rule!1070 separatorToken!170))) e!111614))))

(declare-fun b!182941 () Bool)

(assert (=> b!182941 (= e!111610 e!111605)))

(declare-fun res!83040 () Bool)

(assert (=> b!182941 (=> res!83040 e!111605)))

(assert (=> b!182941 (= res!83040 e!111608)))

(declare-fun res!83045 () Bool)

(assert (=> b!182941 (=> (not res!83045) (not e!111608))))

(assert (=> b!182941 (= res!83045 (not lt!60613))))

(assert (=> b!182941 (= lt!60613 (= lt!60617 lt!60618))))

(declare-fun b!182942 () Bool)

(assert (=> b!182942 (= e!111611 true)))

(declare-fun lt!60600 () Bool)

(declare-fun rulesValidInductive!138 (LexerInterface!441 List!3069) Bool)

(assert (=> b!182942 (= lt!60600 (rulesValidInductive!138 thiss!17480 rules!1920))))

(declare-fun lt!60609 () tuple2!3058)

(assert (=> b!182942 (= lt!60607 (_2!1745 lt!60609))))

(declare-fun lt!60602 () Unit!2820)

(declare-fun lemmaSamePrefixThenSameSuffix!76 (List!3068 List!3068 List!3068 List!3068 List!3068) Unit!2820)

(assert (=> b!182942 (= lt!60602 (lemmaSamePrefixThenSameSuffix!76 lt!60604 lt!60607 lt!60604 (_2!1745 lt!60609) lt!60617))))

(assert (=> b!182942 (= lt!60609 (get!865 (maxPrefix!171 thiss!17480 rules!1920 lt!60617)))))

(declare-fun isPrefix!251 (List!3068 List!3068) Bool)

(assert (=> b!182942 (isPrefix!251 lt!60604 lt!60618)))

(declare-fun lt!60603 () Unit!2820)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!146 (List!3068 List!3068) Unit!2820)

(assert (=> b!182942 (= lt!60603 (lemmaConcatTwoListThenFirstIsPrefix!146 lt!60604 lt!60607))))

(assert (=> b!182942 e!111612))

(declare-fun res!83039 () Bool)

(assert (=> b!182942 (=> res!83039 e!111612)))

(declare-fun isEmpty!1418 (List!3070) Bool)

(assert (=> b!182942 (= res!83039 (isEmpty!1418 tokens!465))))

(declare-fun lt!60599 () Unit!2820)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!16 (LexerInterface!441 List!3069 List!3070 Token!854) Unit!2820)

(assert (=> b!182942 (= lt!60599 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!16 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!182943 () Bool)

(declare-fun tp!86814 () Bool)

(assert (=> b!182943 (= e!111606 (and (inv!3891 (h!8457 tokens!465)) e!111594 tp!86814))))

(declare-fun b!182944 () Bool)

(assert (=> b!182944 (= e!111616 e!111599)))

(declare-fun res!83048 () Bool)

(assert (=> b!182944 (=> (not res!83048) (not e!111599))))

(declare-fun rulesProduceEachTokenIndividually!233 (LexerInterface!441 List!3069 BalanceConc!1874) Bool)

(assert (=> b!182944 (= res!83048 (rulesProduceEachTokenIndividually!233 thiss!17480 rules!1920 lt!60620))))

(assert (=> b!182944 (= lt!60620 (seqFromList!487 tokens!465))))

(assert (=> b!182945 (= e!111614 (and tp!86815 tp!86808))))

(assert (= (and start!19826 res!83052) b!182926))

(assert (= (and b!182926 res!83042) b!182927))

(assert (= (and b!182927 res!83051) b!182944))

(assert (= (and b!182944 res!83048) b!182933))

(assert (= (and b!182933 res!83041) b!182919))

(assert (= (and b!182919 res!83031) b!182921))

(assert (= (and b!182921 res!83037) b!182930))

(assert (= (and b!182930 res!83046) b!182925))

(assert (= (and b!182925 res!83047) b!182913))

(assert (= (and b!182913 res!83036) b!182920))

(assert (= (and b!182920 res!83044) b!182914))

(assert (= (and b!182914 (not res!83049)) b!182941))

(assert (= (and b!182941 res!83045) b!182916))

(assert (= (and b!182941 (not res!83040)) b!182938))

(assert (= (and b!182938 (not res!83053)) b!182932))

(assert (= (and b!182932 (not res!83034)) b!182939))

(assert (= (and b!182939 (not res!83043)) b!182936))

(assert (= (and b!182936 (not res!83033)) b!182922))

(assert (= (and b!182922 res!83050) b!182915))

(assert (= (and b!182915 res!83032) b!182923))

(assert (= (and b!182922 (not res!83035)) b!182942))

(assert (= (and b!182942 (not res!83039)) b!182931))

(assert (= (and b!182931 res!83038) b!182924))

(assert (= b!182934 b!182918))

(assert (= b!182928 b!182934))

(assert (= (and start!19826 ((_ is Cons!3059) rules!1920)) b!182928))

(assert (= b!182940 b!182945))

(assert (= b!182937 b!182940))

(assert (= start!19826 b!182937))

(assert (= b!182929 b!182935))

(assert (= b!182917 b!182929))

(assert (= b!182943 b!182917))

(assert (= (and start!19826 ((_ is Cons!3060) tokens!465)) b!182943))

(declare-fun m!186045 () Bool)

(assert (=> b!182943 m!186045))

(declare-fun m!186047 () Bool)

(assert (=> b!182944 m!186047))

(declare-fun m!186049 () Bool)

(assert (=> b!182944 m!186049))

(declare-fun m!186051 () Bool)

(assert (=> b!182927 m!186051))

(declare-fun m!186053 () Bool)

(assert (=> b!182930 m!186053))

(declare-fun m!186055 () Bool)

(assert (=> b!182916 m!186055))

(declare-fun m!186057 () Bool)

(assert (=> b!182924 m!186057))

(declare-fun m!186059 () Bool)

(assert (=> b!182924 m!186059))

(declare-fun m!186061 () Bool)

(assert (=> b!182937 m!186061))

(declare-fun m!186063 () Bool)

(assert (=> b!182917 m!186063))

(declare-fun m!186065 () Bool)

(assert (=> b!182942 m!186065))

(declare-fun m!186067 () Bool)

(assert (=> b!182942 m!186067))

(declare-fun m!186069 () Bool)

(assert (=> b!182942 m!186069))

(declare-fun m!186071 () Bool)

(assert (=> b!182942 m!186071))

(declare-fun m!186073 () Bool)

(assert (=> b!182942 m!186073))

(declare-fun m!186075 () Bool)

(assert (=> b!182942 m!186075))

(declare-fun m!186077 () Bool)

(assert (=> b!182942 m!186077))

(declare-fun m!186079 () Bool)

(assert (=> b!182942 m!186079))

(assert (=> b!182942 m!186073))

(declare-fun m!186081 () Bool)

(assert (=> b!182929 m!186081))

(declare-fun m!186083 () Bool)

(assert (=> b!182929 m!186083))

(declare-fun m!186085 () Bool)

(assert (=> b!182934 m!186085))

(declare-fun m!186087 () Bool)

(assert (=> b!182934 m!186087))

(declare-fun m!186089 () Bool)

(assert (=> b!182913 m!186089))

(assert (=> b!182913 m!186089))

(declare-fun m!186091 () Bool)

(assert (=> b!182913 m!186091))

(declare-fun m!186093 () Bool)

(assert (=> b!182913 m!186093))

(declare-fun m!186095 () Bool)

(assert (=> b!182931 m!186095))

(assert (=> b!182931 m!186073))

(declare-fun m!186097 () Bool)

(assert (=> b!182926 m!186097))

(declare-fun m!186099 () Bool)

(assert (=> b!182940 m!186099))

(declare-fun m!186101 () Bool)

(assert (=> b!182940 m!186101))

(declare-fun m!186103 () Bool)

(assert (=> b!182921 m!186103))

(declare-fun m!186105 () Bool)

(assert (=> b!182920 m!186105))

(assert (=> b!182920 m!186105))

(declare-fun m!186107 () Bool)

(assert (=> b!182920 m!186107))

(declare-fun m!186109 () Bool)

(assert (=> b!182923 m!186109))

(declare-fun m!186111 () Bool)

(assert (=> b!182936 m!186111))

(assert (=> b!182936 m!186111))

(declare-fun m!186113 () Bool)

(assert (=> b!182936 m!186113))

(assert (=> b!182936 m!186113))

(declare-fun m!186115 () Bool)

(assert (=> b!182936 m!186115))

(declare-fun m!186117 () Bool)

(assert (=> b!182936 m!186117))

(declare-fun m!186119 () Bool)

(assert (=> start!19826 m!186119))

(declare-fun m!186121 () Bool)

(assert (=> b!182922 m!186121))

(declare-fun m!186123 () Bool)

(assert (=> b!182922 m!186123))

(declare-fun m!186125 () Bool)

(assert (=> b!182922 m!186125))

(declare-fun m!186127 () Bool)

(assert (=> b!182915 m!186127))

(declare-fun m!186129 () Bool)

(assert (=> b!182939 m!186129))

(assert (=> b!182939 m!186129))

(declare-fun m!186131 () Bool)

(assert (=> b!182939 m!186131))

(declare-fun m!186133 () Bool)

(assert (=> b!182939 m!186133))

(declare-fun m!186135 () Bool)

(assert (=> b!182933 m!186135))

(declare-fun m!186137 () Bool)

(assert (=> b!182914 m!186137))

(declare-fun m!186139 () Bool)

(assert (=> b!182914 m!186139))

(declare-fun m!186141 () Bool)

(assert (=> b!182914 m!186141))

(declare-fun m!186143 () Bool)

(assert (=> b!182914 m!186143))

(declare-fun m!186145 () Bool)

(assert (=> b!182914 m!186145))

(declare-fun m!186147 () Bool)

(assert (=> b!182914 m!186147))

(assert (=> b!182914 m!186143))

(assert (=> b!182914 m!186137))

(declare-fun m!186149 () Bool)

(assert (=> b!182914 m!186149))

(declare-fun m!186151 () Bool)

(assert (=> b!182914 m!186151))

(declare-fun m!186153 () Bool)

(assert (=> b!182914 m!186153))

(assert (=> b!182914 m!186147))

(declare-fun m!186155 () Bool)

(assert (=> b!182914 m!186155))

(declare-fun m!186157 () Bool)

(assert (=> b!182914 m!186157))

(assert (=> b!182914 m!186151))

(declare-fun m!186159 () Bool)

(assert (=> b!182914 m!186159))

(assert (=> b!182914 m!186149))

(declare-fun m!186161 () Bool)

(assert (=> b!182914 m!186161))

(declare-fun m!186163 () Bool)

(assert (=> b!182932 m!186163))

(declare-fun m!186165 () Bool)

(assert (=> b!182938 m!186165))

(declare-fun m!186167 () Bool)

(assert (=> b!182938 m!186167))

(declare-fun m!186169 () Bool)

(assert (=> b!182938 m!186169))

(declare-fun m!186171 () Bool)

(assert (=> b!182938 m!186171))

(declare-fun m!186173 () Bool)

(assert (=> b!182938 m!186173))

(check-sat (not b!182936) (not b!182921) (not b!182929) (not b!182923) (not b!182939) (not b_next!7123) (not b_next!7131) (not b!182927) (not b!182934) (not b!182937) b_and!12543 (not b!182922) (not b!182926) (not b!182920) b_and!12535 b_and!12541 (not b!182917) b_and!12533 (not b_next!7125) (not b!182940) (not b!182916) (not b!182931) (not b!182930) (not b!182933) (not b_next!7121) (not b!182938) (not b_next!7127) (not b!182914) (not b!182915) (not b!182924) (not b!182943) b_and!12537 (not b!182913) (not b!182942) (not start!19826) (not b!182928) (not b!182944) (not b_next!7129) (not b!182932) (not b!182954) b_and!12539)
(check-sat b_and!12533 (not b_next!7125) (not b_next!7123) (not b_next!7121) (not b_next!7131) b_and!12543 (not b_next!7127) b_and!12537 b_and!12535 b_and!12541 (not b_next!7129) b_and!12539)
