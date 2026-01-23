; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18202 () Bool)

(assert start!18202)

(declare-fun b!168719 () Bool)

(declare-fun b_free!6457 () Bool)

(declare-fun b_next!6457 () Bool)

(assert (=> b!168719 (= b_free!6457 (not b_next!6457))))

(declare-fun tp!83735 () Bool)

(declare-fun b_and!10985 () Bool)

(assert (=> b!168719 (= tp!83735 b_and!10985)))

(declare-fun b_free!6459 () Bool)

(declare-fun b_next!6459 () Bool)

(assert (=> b!168719 (= b_free!6459 (not b_next!6459))))

(declare-fun tp!83738 () Bool)

(declare-fun b_and!10987 () Bool)

(assert (=> b!168719 (= tp!83738 b_and!10987)))

(declare-fun b!168695 () Bool)

(declare-fun b_free!6461 () Bool)

(declare-fun b_next!6461 () Bool)

(assert (=> b!168695 (= b_free!6461 (not b_next!6461))))

(declare-fun tp!83740 () Bool)

(declare-fun b_and!10989 () Bool)

(assert (=> b!168695 (= tp!83740 b_and!10989)))

(declare-fun b_free!6463 () Bool)

(declare-fun b_next!6463 () Bool)

(assert (=> b!168695 (= b_free!6463 (not b_next!6463))))

(declare-fun tp!83732 () Bool)

(declare-fun b_and!10991 () Bool)

(assert (=> b!168695 (= tp!83732 b_and!10991)))

(declare-fun b!168709 () Bool)

(declare-fun b_free!6465 () Bool)

(declare-fun b_next!6465 () Bool)

(assert (=> b!168709 (= b_free!6465 (not b_next!6465))))

(declare-fun tp!83742 () Bool)

(declare-fun b_and!10993 () Bool)

(assert (=> b!168709 (= tp!83742 b_and!10993)))

(declare-fun b_free!6467 () Bool)

(declare-fun b_next!6467 () Bool)

(assert (=> b!168709 (= b_free!6467 (not b_next!6467))))

(declare-fun tp!83737 () Bool)

(declare-fun b_and!10995 () Bool)

(assert (=> b!168709 (= tp!83737 b_and!10995)))

(declare-fun bs!16364 () Bool)

(declare-fun b!168710 () Bool)

(declare-fun b!168701 () Bool)

(assert (= bs!16364 (and b!168710 b!168701)))

(declare-fun lambda!4752 () Int)

(declare-fun lambda!4751 () Int)

(assert (=> bs!16364 (not (= lambda!4752 lambda!4751))))

(declare-fun b!168732 () Bool)

(declare-fun e!101994 () Bool)

(assert (=> b!168732 (= e!101994 true)))

(declare-fun b!168731 () Bool)

(declare-fun e!101993 () Bool)

(assert (=> b!168731 (= e!101993 e!101994)))

(declare-fun b!168730 () Bool)

(declare-fun e!101992 () Bool)

(assert (=> b!168730 (= e!101992 e!101993)))

(assert (=> b!168710 e!101992))

(assert (= b!168731 b!168732))

(assert (= b!168730 b!168731))

(declare-datatypes ((List!2883 0))(
  ( (Nil!2873) (Cons!2873 (h!8270 (_ BitVec 16)) (t!26937 List!2883)) )
))
(declare-datatypes ((TokenValue!535 0))(
  ( (FloatLiteralValue!1070 (text!4190 List!2883)) (TokenValueExt!534 (__x!2557 Int)) (Broken!2675 (value!18910 List!2883)) (Object!544) (End!535) (Def!535) (Underscore!535) (Match!535) (Else!535) (Error!535) (Case!535) (If!535) (Extends!535) (Abstract!535) (Class!535) (Val!535) (DelimiterValue!1070 (del!595 List!2883)) (KeywordValue!541 (value!18911 List!2883)) (CommentValue!1070 (value!18912 List!2883)) (WhitespaceValue!1070 (value!18913 List!2883)) (IndentationValue!535 (value!18914 List!2883)) (String!3754) (Int32!535) (Broken!2676 (value!18915 List!2883)) (Boolean!536) (Unit!2485) (OperatorValue!538 (op!595 List!2883)) (IdentifierValue!1070 (value!18916 List!2883)) (IdentifierValue!1071 (value!18917 List!2883)) (WhitespaceValue!1071 (value!18918 List!2883)) (True!1070) (False!1070) (Broken!2677 (value!18919 List!2883)) (Broken!2678 (value!18920 List!2883)) (True!1071) (RightBrace!535) (RightBracket!535) (Colon!535) (Null!535) (Comma!535) (LeftBracket!535) (False!1071) (LeftBrace!535) (ImaginaryLiteralValue!535 (text!4191 List!2883)) (StringLiteralValue!1605 (value!18921 List!2883)) (EOFValue!535 (value!18922 List!2883)) (IdentValue!535 (value!18923 List!2883)) (DelimiterValue!1071 (value!18924 List!2883)) (DedentValue!535 (value!18925 List!2883)) (NewLineValue!535 (value!18926 List!2883)) (IntegerValue!1605 (value!18927 (_ BitVec 32)) (text!4192 List!2883)) (IntegerValue!1606 (value!18928 Int) (text!4193 List!2883)) (Times!535) (Or!535) (Equal!535) (Minus!535) (Broken!2679 (value!18929 List!2883)) (And!535) (Div!535) (LessEqual!535) (Mod!535) (Concat!1272) (Not!535) (Plus!535) (SpaceValue!535 (value!18930 List!2883)) (IntegerValue!1607 (value!18931 Int) (text!4194 List!2883)) (StringLiteralValue!1606 (text!4195 List!2883)) (FloatLiteralValue!1071 (text!4196 List!2883)) (BytesLiteralValue!535 (value!18932 List!2883)) (CommentValue!1071 (value!18933 List!2883)) (StringLiteralValue!1607 (value!18934 List!2883)) (ErrorTokenValue!535 (msg!596 List!2883)) )
))
(declare-datatypes ((C!2396 0))(
  ( (C!2397 (val!1084 Int)) )
))
(declare-datatypes ((List!2884 0))(
  ( (Nil!2874) (Cons!2874 (h!8271 C!2396) (t!26938 List!2884)) )
))
(declare-datatypes ((IArray!1697 0))(
  ( (IArray!1698 (innerList!906 List!2884)) )
))
(declare-datatypes ((Conc!848 0))(
  ( (Node!848 (left!2187 Conc!848) (right!2517 Conc!848) (csize!1926 Int) (cheight!1059 Int)) (Leaf!1444 (xs!3443 IArray!1697) (csize!1927 Int)) (Empty!848) )
))
(declare-datatypes ((BalanceConc!1704 0))(
  ( (BalanceConc!1705 (c!33532 Conc!848)) )
))
(declare-datatypes ((String!3755 0))(
  ( (String!3756 (value!18935 String)) )
))
(declare-datatypes ((TokenValueInjection!842 0))(
  ( (TokenValueInjection!843 (toValue!1176 Int) (toChars!1035 Int)) )
))
(declare-datatypes ((Regex!737 0))(
  ( (ElementMatch!737 (c!33533 C!2396)) (Concat!1273 (regOne!1986 Regex!737) (regTwo!1986 Regex!737)) (EmptyExpr!737) (Star!737 (reg!1066 Regex!737)) (EmptyLang!737) (Union!737 (regOne!1987 Regex!737) (regTwo!1987 Regex!737)) )
))
(declare-datatypes ((Rule!826 0))(
  ( (Rule!827 (regex!513 Regex!737) (tag!691 String!3755) (isSeparator!513 Bool) (transformation!513 TokenValueInjection!842)) )
))
(declare-datatypes ((List!2885 0))(
  ( (Nil!2875) (Cons!2875 (h!8272 Rule!826) (t!26939 List!2885)) )
))
(declare-fun rules!1920 () List!2885)

(get-info :version)

(assert (= (and b!168710 ((_ is Cons!2875) rules!1920)) b!168730))

(declare-fun order!1539 () Int)

(declare-fun order!1537 () Int)

(declare-fun dynLambda!1069 (Int Int) Int)

(declare-fun dynLambda!1070 (Int Int) Int)

(assert (=> b!168732 (< (dynLambda!1069 order!1537 (toValue!1176 (transformation!513 (h!8272 rules!1920)))) (dynLambda!1070 order!1539 lambda!4752))))

(declare-fun order!1541 () Int)

(declare-fun dynLambda!1071 (Int Int) Int)

(assert (=> b!168732 (< (dynLambda!1071 order!1541 (toChars!1035 (transformation!513 (h!8272 rules!1920)))) (dynLambda!1070 order!1539 lambda!4752))))

(assert (=> b!168710 true))

(declare-fun e!101985 () Bool)

(declare-datatypes ((Token!770 0))(
  ( (Token!771 (value!18936 TokenValue!535) (rule!1020 Rule!826) (size!2389 Int) (originalCharacters!556 List!2884)) )
))
(declare-datatypes ((List!2886 0))(
  ( (Nil!2876) (Cons!2876 (h!8273 Token!770) (t!26940 List!2886)) )
))
(declare-fun tokens!465 () List!2886)

(declare-fun b!168694 () Bool)

(declare-fun e!101968 () Bool)

(declare-fun tp!83734 () Bool)

(declare-fun inv!3697 (String!3755) Bool)

(declare-fun inv!3700 (TokenValueInjection!842) Bool)

(assert (=> b!168694 (= e!101985 (and tp!83734 (inv!3697 (tag!691 (rule!1020 (h!8273 tokens!465)))) (inv!3700 (transformation!513 (rule!1020 (h!8273 tokens!465)))) e!101968))))

(declare-fun e!101965 () Bool)

(assert (=> b!168695 (= e!101965 (and tp!83740 tp!83732))))

(declare-fun b!168696 () Bool)

(declare-fun e!101967 () Bool)

(declare-fun e!101969 () Bool)

(assert (=> b!168696 (= e!101967 e!101969)))

(declare-fun res!76246 () Bool)

(assert (=> b!168696 (=> res!76246 e!101969)))

(declare-fun lt!52897 () List!2884)

(declare-fun lt!52905 () List!2884)

(declare-fun lt!52906 () List!2884)

(assert (=> b!168696 (= res!76246 (or (not (= lt!52905 lt!52906)) (not (= lt!52906 lt!52897)) (not (= lt!52905 lt!52897))))))

(declare-datatypes ((LexerInterface!399 0))(
  ( (LexerInterfaceExt!396 (__x!2558 Int)) (Lexer!397) )
))
(declare-fun thiss!17480 () LexerInterface!399)

(declare-fun printList!83 (LexerInterface!399 List!2886) List!2884)

(assert (=> b!168696 (= lt!52906 (printList!83 thiss!17480 (Cons!2876 (h!8273 tokens!465) Nil!2876)))))

(declare-fun lt!52907 () BalanceConc!1704)

(declare-fun list!1043 (BalanceConc!1704) List!2884)

(assert (=> b!168696 (= lt!52905 (list!1043 lt!52907))))

(declare-datatypes ((IArray!1699 0))(
  ( (IArray!1700 (innerList!907 List!2886)) )
))
(declare-datatypes ((Conc!849 0))(
  ( (Node!849 (left!2188 Conc!849) (right!2518 Conc!849) (csize!1928 Int) (cheight!1060 Int)) (Leaf!1445 (xs!3444 IArray!1699) (csize!1929 Int)) (Empty!849) )
))
(declare-datatypes ((BalanceConc!1706 0))(
  ( (BalanceConc!1707 (c!33534 Conc!849)) )
))
(declare-fun lt!52903 () BalanceConc!1706)

(declare-fun printTailRec!93 (LexerInterface!399 BalanceConc!1706 Int BalanceConc!1704) BalanceConc!1704)

(assert (=> b!168696 (= lt!52907 (printTailRec!93 thiss!17480 lt!52903 0 (BalanceConc!1705 Empty!848)))))

(declare-fun print!130 (LexerInterface!399 BalanceConc!1706) BalanceConc!1704)

(assert (=> b!168696 (= lt!52907 (print!130 thiss!17480 lt!52903))))

(declare-fun singletonSeq!65 (Token!770) BalanceConc!1706)

(assert (=> b!168696 (= lt!52903 (singletonSeq!65 (h!8273 tokens!465)))))

(declare-fun b!168697 () Bool)

(declare-fun e!101964 () Bool)

(assert (=> b!168697 (= e!101964 (not e!101967))))

(declare-fun res!76251 () Bool)

(assert (=> b!168697 (=> res!76251 e!101967)))

(declare-fun separatorToken!170 () Token!770)

(declare-fun lt!52898 () List!2884)

(declare-fun printWithSeparatorTokenWhenNeededRec!82 (LexerInterface!399 List!2885 BalanceConc!1706 Token!770 Int) BalanceConc!1704)

(declare-fun seqFromList!403 (List!2886) BalanceConc!1706)

(assert (=> b!168697 (= res!76251 (not (= lt!52898 (list!1043 (printWithSeparatorTokenWhenNeededRec!82 thiss!17480 rules!1920 (seqFromList!403 (t!26940 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!52895 () List!2884)

(declare-fun lt!52901 () List!2884)

(assert (=> b!168697 (= lt!52895 lt!52901)))

(declare-fun lt!52899 () List!2884)

(declare-fun ++!656 (List!2884 List!2884) List!2884)

(assert (=> b!168697 (= lt!52901 (++!656 lt!52897 lt!52899))))

(declare-fun lt!52904 () List!2884)

(assert (=> b!168697 (= lt!52895 (++!656 (++!656 lt!52897 lt!52904) lt!52898))))

(declare-datatypes ((Unit!2486 0))(
  ( (Unit!2487) )
))
(declare-fun lt!52908 () Unit!2486)

(declare-fun lemmaConcatAssociativity!198 (List!2884 List!2884 List!2884) Unit!2486)

(assert (=> b!168697 (= lt!52908 (lemmaConcatAssociativity!198 lt!52897 lt!52904 lt!52898))))

(declare-fun charsOf!168 (Token!770) BalanceConc!1704)

(assert (=> b!168697 (= lt!52897 (list!1043 (charsOf!168 (h!8273 tokens!465))))))

(assert (=> b!168697 (= lt!52899 (++!656 lt!52904 lt!52898))))

(declare-fun printWithSeparatorTokenWhenNeededList!92 (LexerInterface!399 List!2885 List!2886 Token!770) List!2884)

(assert (=> b!168697 (= lt!52898 (printWithSeparatorTokenWhenNeededList!92 thiss!17480 rules!1920 (t!26940 tokens!465) separatorToken!170))))

(assert (=> b!168697 (= lt!52904 (list!1043 (charsOf!168 separatorToken!170)))))

(declare-fun b!168698 () Bool)

(declare-fun e!101977 () Bool)

(declare-fun e!101980 () Bool)

(declare-fun tp!83736 () Bool)

(assert (=> b!168698 (= e!101977 (and e!101980 tp!83736))))

(declare-fun b!168699 () Bool)

(declare-fun tp!83741 () Bool)

(assert (=> b!168699 (= e!101980 (and tp!83741 (inv!3697 (tag!691 (h!8272 rules!1920))) (inv!3700 (transformation!513 (h!8272 rules!1920))) e!101965))))

(declare-fun res!76249 () Bool)

(declare-fun e!101970 () Bool)

(assert (=> start!18202 (=> (not res!76249) (not e!101970))))

(assert (=> start!18202 (= res!76249 ((_ is Lexer!397) thiss!17480))))

(assert (=> start!18202 e!101970))

(assert (=> start!18202 true))

(assert (=> start!18202 e!101977))

(declare-fun e!101978 () Bool)

(declare-fun inv!3701 (Token!770) Bool)

(assert (=> start!18202 (and (inv!3701 separatorToken!170) e!101978)))

(declare-fun e!101982 () Bool)

(assert (=> start!18202 e!101982))

(declare-fun b!168700 () Bool)

(declare-fun e!101966 () Bool)

(assert (=> b!168700 (= e!101970 e!101966)))

(declare-fun res!76241 () Bool)

(assert (=> b!168700 (=> (not res!76241) (not e!101966))))

(declare-fun lt!52894 () BalanceConc!1706)

(declare-fun rulesProduceEachTokenIndividually!191 (LexerInterface!399 List!2885 BalanceConc!1706) Bool)

(assert (=> b!168700 (= res!76241 (rulesProduceEachTokenIndividually!191 thiss!17480 rules!1920 lt!52894))))

(assert (=> b!168700 (= lt!52894 (seqFromList!403 tokens!465))))

(declare-fun res!76243 () Bool)

(assert (=> b!168701 (=> (not res!76243) (not e!101966))))

(declare-fun forall!555 (List!2886 Int) Bool)

(assert (=> b!168701 (= res!76243 (forall!555 tokens!465 lambda!4751))))

(declare-fun tp!83743 () Bool)

(declare-fun b!168702 () Bool)

(declare-fun e!101984 () Bool)

(declare-fun inv!21 (TokenValue!535) Bool)

(assert (=> b!168702 (= e!101984 (and (inv!21 (value!18936 (h!8273 tokens!465))) e!101985 tp!83743))))

(declare-fun b!168703 () Bool)

(declare-fun res!76239 () Bool)

(assert (=> b!168703 (=> (not res!76239) (not e!101970))))

(declare-fun rulesInvariant!365 (LexerInterface!399 List!2885) Bool)

(assert (=> b!168703 (= res!76239 (rulesInvariant!365 thiss!17480 rules!1920))))

(declare-fun e!101974 () Bool)

(declare-fun b!168704 () Bool)

(declare-fun lt!52902 () List!2884)

(assert (=> b!168704 (= e!101974 (not (= lt!52902 (++!656 lt!52897 lt!52898))))))

(declare-fun b!168705 () Bool)

(assert (=> b!168705 (= e!101966 e!101964)))

(declare-fun res!76252 () Bool)

(assert (=> b!168705 (=> (not res!76252) (not e!101964))))

(declare-fun lt!52900 () List!2884)

(assert (=> b!168705 (= res!76252 (= lt!52902 lt!52900))))

(assert (=> b!168705 (= lt!52900 (list!1043 (printWithSeparatorTokenWhenNeededRec!82 thiss!17480 rules!1920 lt!52894 separatorToken!170 0)))))

(assert (=> b!168705 (= lt!52902 (printWithSeparatorTokenWhenNeededList!92 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!168706 () Bool)

(declare-fun res!76245 () Bool)

(assert (=> b!168706 (=> (not res!76245) (not e!101966))))

(assert (=> b!168706 (= res!76245 (isSeparator!513 (rule!1020 separatorToken!170)))))

(declare-fun e!101976 () Bool)

(declare-fun tp!83733 () Bool)

(declare-fun e!101979 () Bool)

(declare-fun b!168707 () Bool)

(assert (=> b!168707 (= e!101979 (and tp!83733 (inv!3697 (tag!691 (rule!1020 separatorToken!170))) (inv!3700 (transformation!513 (rule!1020 separatorToken!170))) e!101976))))

(declare-fun b!168708 () Bool)

(declare-fun res!76242 () Bool)

(assert (=> b!168708 (=> (not res!76242) (not e!101966))))

(assert (=> b!168708 (= res!76242 ((_ is Cons!2876) tokens!465))))

(assert (=> b!168709 (= e!101976 (and tp!83742 tp!83737))))

(declare-fun e!101972 () Bool)

(assert (=> b!168710 (= e!101969 e!101972)))

(declare-fun res!76247 () Bool)

(assert (=> b!168710 (=> res!76247 e!101972)))

(declare-datatypes ((tuple2!2758 0))(
  ( (tuple2!2759 (_1!1595 Token!770) (_2!1595 BalanceConc!1704)) )
))
(declare-datatypes ((Option!300 0))(
  ( (None!299) (Some!299 (v!13730 tuple2!2758)) )
))
(declare-fun isDefined!151 (Option!300) Bool)

(declare-fun maxPrefixZipperSequence!92 (LexerInterface!399 List!2885 BalanceConc!1704) Option!300)

(declare-fun seqFromList!404 (List!2884) BalanceConc!1704)

(assert (=> b!168710 (= res!76247 (not (isDefined!151 (maxPrefixZipperSequence!92 thiss!17480 rules!1920 (seqFromList!404 (originalCharacters!556 (h!8273 tokens!465)))))))))

(declare-fun lt!52896 () Unit!2486)

(declare-fun forallContained!80 (List!2886 Int Token!770) Unit!2486)

(assert (=> b!168710 (= lt!52896 (forallContained!80 tokens!465 lambda!4752 (h!8273 tokens!465)))))

(assert (=> b!168710 (= lt!52897 (originalCharacters!556 (h!8273 tokens!465)))))

(declare-fun b!168711 () Bool)

(declare-fun res!76238 () Bool)

(assert (=> b!168711 (=> res!76238 e!101967)))

(assert (=> b!168711 (= res!76238 e!101974)))

(declare-fun res!76237 () Bool)

(assert (=> b!168711 (=> (not res!76237) (not e!101974))))

(assert (=> b!168711 (= res!76237 (not (= lt!52902 lt!52901)))))

(declare-fun b!168712 () Bool)

(declare-fun rulesValidInductive!116 (LexerInterface!399 List!2885) Bool)

(assert (=> b!168712 (= e!101972 (rulesValidInductive!116 thiss!17480 rules!1920))))

(declare-datatypes ((tuple2!2760 0))(
  ( (tuple2!2761 (_1!1596 Token!770) (_2!1596 List!2884)) )
))
(declare-datatypes ((Option!301 0))(
  ( (None!300) (Some!300 (v!13731 tuple2!2760)) )
))
(declare-fun isDefined!152 (Option!301) Bool)

(declare-fun maxPrefix!129 (LexerInterface!399 List!2885 List!2884) Option!301)

(assert (=> b!168712 (isDefined!152 (maxPrefix!129 thiss!17480 rules!1920 lt!52897))))

(declare-fun b!168713 () Bool)

(declare-fun res!76250 () Bool)

(assert (=> b!168713 (=> res!76250 e!101969)))

(declare-fun isEmpty!1201 (BalanceConc!1706) Bool)

(declare-datatypes ((tuple2!2762 0))(
  ( (tuple2!2763 (_1!1597 BalanceConc!1706) (_2!1597 BalanceConc!1704)) )
))
(declare-fun lex!199 (LexerInterface!399 List!2885 BalanceConc!1704) tuple2!2762)

(assert (=> b!168713 (= res!76250 (isEmpty!1201 (_1!1597 (lex!199 thiss!17480 rules!1920 (seqFromList!404 lt!52897)))))))

(declare-fun b!168714 () Bool)

(declare-fun res!76240 () Bool)

(assert (=> b!168714 (=> (not res!76240) (not e!101964))))

(assert (=> b!168714 (= res!76240 (= (list!1043 (seqFromList!404 lt!52902)) lt!52900))))

(declare-fun b!168715 () Bool)

(declare-fun res!76236 () Bool)

(assert (=> b!168715 (=> (not res!76236) (not e!101966))))

(declare-fun rulesProduceIndividualToken!148 (LexerInterface!399 List!2885 Token!770) Bool)

(assert (=> b!168715 (= res!76236 (rulesProduceIndividualToken!148 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!168716 () Bool)

(declare-fun tp!83739 () Bool)

(assert (=> b!168716 (= e!101978 (and (inv!21 (value!18936 separatorToken!170)) e!101979 tp!83739))))

(declare-fun b!168717 () Bool)

(declare-fun res!76248 () Bool)

(assert (=> b!168717 (=> (not res!76248) (not e!101966))))

(declare-fun sepAndNonSepRulesDisjointChars!102 (List!2885 List!2885) Bool)

(assert (=> b!168717 (= res!76248 (sepAndNonSepRulesDisjointChars!102 rules!1920 rules!1920))))

(declare-fun b!168718 () Bool)

(declare-fun res!76244 () Bool)

(assert (=> b!168718 (=> res!76244 e!101969)))

(assert (=> b!168718 (= res!76244 (not (rulesProduceIndividualToken!148 thiss!17480 rules!1920 (h!8273 tokens!465))))))

(assert (=> b!168719 (= e!101968 (and tp!83735 tp!83738))))

(declare-fun tp!83731 () Bool)

(declare-fun b!168720 () Bool)

(assert (=> b!168720 (= e!101982 (and (inv!3701 (h!8273 tokens!465)) e!101984 tp!83731))))

(declare-fun b!168721 () Bool)

(declare-fun res!76235 () Bool)

(assert (=> b!168721 (=> (not res!76235) (not e!101970))))

(declare-fun isEmpty!1202 (List!2885) Bool)

(assert (=> b!168721 (= res!76235 (not (isEmpty!1202 rules!1920)))))

(assert (= (and start!18202 res!76249) b!168721))

(assert (= (and b!168721 res!76235) b!168703))

(assert (= (and b!168703 res!76239) b!168700))

(assert (= (and b!168700 res!76241) b!168715))

(assert (= (and b!168715 res!76236) b!168706))

(assert (= (and b!168706 res!76245) b!168701))

(assert (= (and b!168701 res!76243) b!168717))

(assert (= (and b!168717 res!76248) b!168708))

(assert (= (and b!168708 res!76242) b!168705))

(assert (= (and b!168705 res!76252) b!168714))

(assert (= (and b!168714 res!76240) b!168697))

(assert (= (and b!168697 (not res!76251)) b!168711))

(assert (= (and b!168711 res!76237) b!168704))

(assert (= (and b!168711 (not res!76238)) b!168696))

(assert (= (and b!168696 (not res!76246)) b!168718))

(assert (= (and b!168718 (not res!76244)) b!168713))

(assert (= (and b!168713 (not res!76250)) b!168710))

(assert (= (and b!168710 (not res!76247)) b!168712))

(assert (= b!168699 b!168695))

(assert (= b!168698 b!168699))

(assert (= (and start!18202 ((_ is Cons!2875) rules!1920)) b!168698))

(assert (= b!168707 b!168709))

(assert (= b!168716 b!168707))

(assert (= start!18202 b!168716))

(assert (= b!168694 b!168719))

(assert (= b!168702 b!168694))

(assert (= b!168720 b!168702))

(assert (= (and start!18202 ((_ is Cons!2876) tokens!465)) b!168720))

(declare-fun m!163995 () Bool)

(assert (=> b!168703 m!163995))

(declare-fun m!163997 () Bool)

(assert (=> b!168705 m!163997))

(assert (=> b!168705 m!163997))

(declare-fun m!163999 () Bool)

(assert (=> b!168705 m!163999))

(declare-fun m!164001 () Bool)

(assert (=> b!168705 m!164001))

(declare-fun m!164003 () Bool)

(assert (=> b!168704 m!164003))

(declare-fun m!164005 () Bool)

(assert (=> b!168700 m!164005))

(declare-fun m!164007 () Bool)

(assert (=> b!168700 m!164007))

(declare-fun m!164009 () Bool)

(assert (=> b!168696 m!164009))

(declare-fun m!164011 () Bool)

(assert (=> b!168696 m!164011))

(declare-fun m!164013 () Bool)

(assert (=> b!168696 m!164013))

(declare-fun m!164015 () Bool)

(assert (=> b!168696 m!164015))

(declare-fun m!164017 () Bool)

(assert (=> b!168696 m!164017))

(declare-fun m!164019 () Bool)

(assert (=> b!168720 m!164019))

(declare-fun m!164021 () Bool)

(assert (=> b!168718 m!164021))

(declare-fun m!164023 () Bool)

(assert (=> b!168699 m!164023))

(declare-fun m!164025 () Bool)

(assert (=> b!168699 m!164025))

(declare-fun m!164027 () Bool)

(assert (=> b!168715 m!164027))

(declare-fun m!164029 () Bool)

(assert (=> b!168701 m!164029))

(declare-fun m!164031 () Bool)

(assert (=> start!18202 m!164031))

(declare-fun m!164033 () Bool)

(assert (=> b!168697 m!164033))

(declare-fun m!164035 () Bool)

(assert (=> b!168697 m!164035))

(declare-fun m!164037 () Bool)

(assert (=> b!168697 m!164037))

(declare-fun m!164039 () Bool)

(assert (=> b!168697 m!164039))

(assert (=> b!168697 m!164037))

(declare-fun m!164041 () Bool)

(assert (=> b!168697 m!164041))

(declare-fun m!164043 () Bool)

(assert (=> b!168697 m!164043))

(declare-fun m!164045 () Bool)

(assert (=> b!168697 m!164045))

(assert (=> b!168697 m!164033))

(declare-fun m!164047 () Bool)

(assert (=> b!168697 m!164047))

(declare-fun m!164049 () Bool)

(assert (=> b!168697 m!164049))

(assert (=> b!168697 m!164041))

(declare-fun m!164051 () Bool)

(assert (=> b!168697 m!164051))

(declare-fun m!164053 () Bool)

(assert (=> b!168697 m!164053))

(assert (=> b!168697 m!164049))

(declare-fun m!164055 () Bool)

(assert (=> b!168697 m!164055))

(assert (=> b!168697 m!164047))

(declare-fun m!164057 () Bool)

(assert (=> b!168697 m!164057))

(declare-fun m!164059 () Bool)

(assert (=> b!168721 m!164059))

(declare-fun m!164061 () Bool)

(assert (=> b!168716 m!164061))

(declare-fun m!164063 () Bool)

(assert (=> b!168707 m!164063))

(declare-fun m!164065 () Bool)

(assert (=> b!168707 m!164065))

(declare-fun m!164067 () Bool)

(assert (=> b!168694 m!164067))

(declare-fun m!164069 () Bool)

(assert (=> b!168694 m!164069))

(declare-fun m!164071 () Bool)

(assert (=> b!168712 m!164071))

(declare-fun m!164073 () Bool)

(assert (=> b!168712 m!164073))

(assert (=> b!168712 m!164073))

(declare-fun m!164075 () Bool)

(assert (=> b!168712 m!164075))

(declare-fun m!164077 () Bool)

(assert (=> b!168717 m!164077))

(declare-fun m!164079 () Bool)

(assert (=> b!168714 m!164079))

(assert (=> b!168714 m!164079))

(declare-fun m!164081 () Bool)

(assert (=> b!168714 m!164081))

(declare-fun m!164083 () Bool)

(assert (=> b!168702 m!164083))

(declare-fun m!164085 () Bool)

(assert (=> b!168710 m!164085))

(assert (=> b!168710 m!164085))

(declare-fun m!164087 () Bool)

(assert (=> b!168710 m!164087))

(assert (=> b!168710 m!164087))

(declare-fun m!164089 () Bool)

(assert (=> b!168710 m!164089))

(declare-fun m!164091 () Bool)

(assert (=> b!168710 m!164091))

(declare-fun m!164093 () Bool)

(assert (=> b!168713 m!164093))

(assert (=> b!168713 m!164093))

(declare-fun m!164095 () Bool)

(assert (=> b!168713 m!164095))

(declare-fun m!164097 () Bool)

(assert (=> b!168713 m!164097))

(check-sat (not b!168698) (not b!168717) b_and!10985 (not b!168697) (not b!168713) (not b!168715) (not b!168696) b_and!10991 b_and!10989 (not b!168701) b_and!10987 (not b!168702) (not b!168694) (not b!168720) (not b_next!6457) (not b_next!6467) (not b!168707) b_and!10995 (not start!18202) (not b_next!6461) (not b!168716) (not b_next!6465) (not b!168718) (not b!168712) (not b_next!6463) (not b!168710) (not b!168714) (not b!168704) b_and!10993 (not b!168730) (not b!168700) (not b!168699) (not b!168721) (not b!168703) (not b!168705) (not b_next!6459))
(check-sat b_and!10987 (not b_next!6457) b_and!10985 (not b_next!6461) b_and!10991 (not b_next!6465) (not b_next!6463) b_and!10993 b_and!10989 (not b_next!6459) (not b_next!6467) b_and!10995)
(get-model)

(declare-fun d!42244 () Bool)

(declare-fun lt!52919 () Bool)

(declare-fun e!102011 () Bool)

(assert (=> d!42244 (= lt!52919 e!102011)))

(declare-fun res!76279 () Bool)

(assert (=> d!42244 (=> (not res!76279) (not e!102011))))

(declare-fun list!1046 (BalanceConc!1706) List!2886)

(assert (=> d!42244 (= res!76279 (= (list!1046 (_1!1597 (lex!199 thiss!17480 rules!1920 (print!130 thiss!17480 (singletonSeq!65 (h!8273 tokens!465)))))) (list!1046 (singletonSeq!65 (h!8273 tokens!465)))))))

(declare-fun e!102012 () Bool)

(assert (=> d!42244 (= lt!52919 e!102012)))

(declare-fun res!76280 () Bool)

(assert (=> d!42244 (=> (not res!76280) (not e!102012))))

(declare-fun lt!52920 () tuple2!2762)

(declare-fun size!2393 (BalanceConc!1706) Int)

(assert (=> d!42244 (= res!76280 (= (size!2393 (_1!1597 lt!52920)) 1))))

(assert (=> d!42244 (= lt!52920 (lex!199 thiss!17480 rules!1920 (print!130 thiss!17480 (singletonSeq!65 (h!8273 tokens!465)))))))

(assert (=> d!42244 (not (isEmpty!1202 rules!1920))))

(assert (=> d!42244 (= (rulesProduceIndividualToken!148 thiss!17480 rules!1920 (h!8273 tokens!465)) lt!52919)))

(declare-fun b!168759 () Bool)

(declare-fun res!76281 () Bool)

(assert (=> b!168759 (=> (not res!76281) (not e!102012))))

(declare-fun apply!409 (BalanceConc!1706 Int) Token!770)

(assert (=> b!168759 (= res!76281 (= (apply!409 (_1!1597 lt!52920) 0) (h!8273 tokens!465)))))

(declare-fun b!168760 () Bool)

(declare-fun isEmpty!1206 (BalanceConc!1704) Bool)

(assert (=> b!168760 (= e!102012 (isEmpty!1206 (_2!1597 lt!52920)))))

(declare-fun b!168761 () Bool)

(assert (=> b!168761 (= e!102011 (isEmpty!1206 (_2!1597 (lex!199 thiss!17480 rules!1920 (print!130 thiss!17480 (singletonSeq!65 (h!8273 tokens!465)))))))))

(assert (= (and d!42244 res!76280) b!168759))

(assert (= (and b!168759 res!76281) b!168760))

(assert (= (and d!42244 res!76279) b!168761))

(declare-fun m!164131 () Bool)

(assert (=> d!42244 m!164131))

(assert (=> d!42244 m!164059))

(declare-fun m!164133 () Bool)

(assert (=> d!42244 m!164133))

(assert (=> d!42244 m!164015))

(declare-fun m!164135 () Bool)

(assert (=> d!42244 m!164135))

(assert (=> d!42244 m!164015))

(assert (=> d!42244 m!164135))

(declare-fun m!164137 () Bool)

(assert (=> d!42244 m!164137))

(assert (=> d!42244 m!164015))

(declare-fun m!164139 () Bool)

(assert (=> d!42244 m!164139))

(declare-fun m!164141 () Bool)

(assert (=> b!168759 m!164141))

(declare-fun m!164143 () Bool)

(assert (=> b!168760 m!164143))

(assert (=> b!168761 m!164015))

(assert (=> b!168761 m!164015))

(assert (=> b!168761 m!164135))

(assert (=> b!168761 m!164135))

(assert (=> b!168761 m!164137))

(declare-fun m!164145 () Bool)

(assert (=> b!168761 m!164145))

(assert (=> b!168718 d!42244))

(declare-fun d!42252 () Bool)

(declare-fun fromListB!159 (List!2886) BalanceConc!1706)

(assert (=> d!42252 (= (seqFromList!403 (t!26940 tokens!465)) (fromListB!159 (t!26940 tokens!465)))))

(declare-fun bs!16368 () Bool)

(assert (= bs!16368 d!42252))

(declare-fun m!164147 () Bool)

(assert (=> bs!16368 m!164147))

(assert (=> b!168697 d!42252))

(declare-fun d!42254 () Bool)

(declare-fun list!1047 (Conc!848) List!2884)

(assert (=> d!42254 (= (list!1043 (charsOf!168 separatorToken!170)) (list!1047 (c!33532 (charsOf!168 separatorToken!170))))))

(declare-fun bs!16369 () Bool)

(assert (= bs!16369 d!42254))

(declare-fun m!164149 () Bool)

(assert (=> bs!16369 m!164149))

(assert (=> b!168697 d!42254))

(declare-fun d!42256 () Bool)

(assert (=> d!42256 (= (list!1043 (printWithSeparatorTokenWhenNeededRec!82 thiss!17480 rules!1920 (seqFromList!403 (t!26940 tokens!465)) separatorToken!170 0)) (list!1047 (c!33532 (printWithSeparatorTokenWhenNeededRec!82 thiss!17480 rules!1920 (seqFromList!403 (t!26940 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!16370 () Bool)

(assert (= bs!16370 d!42256))

(declare-fun m!164151 () Bool)

(assert (=> bs!16370 m!164151))

(assert (=> b!168697 d!42256))

(declare-fun b!168770 () Bool)

(declare-fun e!102017 () List!2884)

(assert (=> b!168770 (= e!102017 lt!52898)))

(declare-fun b!168771 () Bool)

(assert (=> b!168771 (= e!102017 (Cons!2874 (h!8271 lt!52904) (++!656 (t!26938 lt!52904) lt!52898)))))

(declare-fun b!168773 () Bool)

(declare-fun lt!52923 () List!2884)

(declare-fun e!102018 () Bool)

(assert (=> b!168773 (= e!102018 (or (not (= lt!52898 Nil!2874)) (= lt!52923 lt!52904)))))

(declare-fun d!42258 () Bool)

(assert (=> d!42258 e!102018))

(declare-fun res!76287 () Bool)

(assert (=> d!42258 (=> (not res!76287) (not e!102018))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!397 (List!2884) (InoxSet C!2396))

(assert (=> d!42258 (= res!76287 (= (content!397 lt!52923) ((_ map or) (content!397 lt!52904) (content!397 lt!52898))))))

(assert (=> d!42258 (= lt!52923 e!102017)))

(declare-fun c!33540 () Bool)

(assert (=> d!42258 (= c!33540 ((_ is Nil!2874) lt!52904))))

(assert (=> d!42258 (= (++!656 lt!52904 lt!52898) lt!52923)))

(declare-fun b!168772 () Bool)

(declare-fun res!76286 () Bool)

(assert (=> b!168772 (=> (not res!76286) (not e!102018))))

(declare-fun size!2394 (List!2884) Int)

(assert (=> b!168772 (= res!76286 (= (size!2394 lt!52923) (+ (size!2394 lt!52904) (size!2394 lt!52898))))))

(assert (= (and d!42258 c!33540) b!168770))

(assert (= (and d!42258 (not c!33540)) b!168771))

(assert (= (and d!42258 res!76287) b!168772))

(assert (= (and b!168772 res!76286) b!168773))

(declare-fun m!164153 () Bool)

(assert (=> b!168771 m!164153))

(declare-fun m!164155 () Bool)

(assert (=> d!42258 m!164155))

(declare-fun m!164157 () Bool)

(assert (=> d!42258 m!164157))

(declare-fun m!164159 () Bool)

(assert (=> d!42258 m!164159))

(declare-fun m!164161 () Bool)

(assert (=> b!168772 m!164161))

(declare-fun m!164163 () Bool)

(assert (=> b!168772 m!164163))

(declare-fun m!164165 () Bool)

(assert (=> b!168772 m!164165))

(assert (=> b!168697 d!42258))

(declare-fun b!168774 () Bool)

(declare-fun e!102019 () List!2884)

(assert (=> b!168774 (= e!102019 lt!52898)))

(declare-fun b!168775 () Bool)

(assert (=> b!168775 (= e!102019 (Cons!2874 (h!8271 (++!656 lt!52897 lt!52904)) (++!656 (t!26938 (++!656 lt!52897 lt!52904)) lt!52898)))))

(declare-fun b!168777 () Bool)

(declare-fun e!102020 () Bool)

(declare-fun lt!52924 () List!2884)

(assert (=> b!168777 (= e!102020 (or (not (= lt!52898 Nil!2874)) (= lt!52924 (++!656 lt!52897 lt!52904))))))

(declare-fun d!42260 () Bool)

(assert (=> d!42260 e!102020))

(declare-fun res!76289 () Bool)

(assert (=> d!42260 (=> (not res!76289) (not e!102020))))

(assert (=> d!42260 (= res!76289 (= (content!397 lt!52924) ((_ map or) (content!397 (++!656 lt!52897 lt!52904)) (content!397 lt!52898))))))

(assert (=> d!42260 (= lt!52924 e!102019)))

(declare-fun c!33541 () Bool)

(assert (=> d!42260 (= c!33541 ((_ is Nil!2874) (++!656 lt!52897 lt!52904)))))

(assert (=> d!42260 (= (++!656 (++!656 lt!52897 lt!52904) lt!52898) lt!52924)))

(declare-fun b!168776 () Bool)

(declare-fun res!76288 () Bool)

(assert (=> b!168776 (=> (not res!76288) (not e!102020))))

(assert (=> b!168776 (= res!76288 (= (size!2394 lt!52924) (+ (size!2394 (++!656 lt!52897 lt!52904)) (size!2394 lt!52898))))))

(assert (= (and d!42260 c!33541) b!168774))

(assert (= (and d!42260 (not c!33541)) b!168775))

(assert (= (and d!42260 res!76289) b!168776))

(assert (= (and b!168776 res!76288) b!168777))

(declare-fun m!164167 () Bool)

(assert (=> b!168775 m!164167))

(declare-fun m!164169 () Bool)

(assert (=> d!42260 m!164169))

(assert (=> d!42260 m!164041))

(declare-fun m!164171 () Bool)

(assert (=> d!42260 m!164171))

(assert (=> d!42260 m!164159))

(declare-fun m!164173 () Bool)

(assert (=> b!168776 m!164173))

(assert (=> b!168776 m!164041))

(declare-fun m!164175 () Bool)

(assert (=> b!168776 m!164175))

(assert (=> b!168776 m!164165))

(assert (=> b!168697 d!42260))

(declare-fun b!168778 () Bool)

(declare-fun e!102021 () List!2884)

(assert (=> b!168778 (= e!102021 lt!52904)))

(declare-fun b!168779 () Bool)

(assert (=> b!168779 (= e!102021 (Cons!2874 (h!8271 lt!52897) (++!656 (t!26938 lt!52897) lt!52904)))))

(declare-fun b!168781 () Bool)

(declare-fun e!102022 () Bool)

(declare-fun lt!52925 () List!2884)

(assert (=> b!168781 (= e!102022 (or (not (= lt!52904 Nil!2874)) (= lt!52925 lt!52897)))))

(declare-fun d!42262 () Bool)

(assert (=> d!42262 e!102022))

(declare-fun res!76291 () Bool)

(assert (=> d!42262 (=> (not res!76291) (not e!102022))))

(assert (=> d!42262 (= res!76291 (= (content!397 lt!52925) ((_ map or) (content!397 lt!52897) (content!397 lt!52904))))))

(assert (=> d!42262 (= lt!52925 e!102021)))

(declare-fun c!33542 () Bool)

(assert (=> d!42262 (= c!33542 ((_ is Nil!2874) lt!52897))))

(assert (=> d!42262 (= (++!656 lt!52897 lt!52904) lt!52925)))

(declare-fun b!168780 () Bool)

(declare-fun res!76290 () Bool)

(assert (=> b!168780 (=> (not res!76290) (not e!102022))))

(assert (=> b!168780 (= res!76290 (= (size!2394 lt!52925) (+ (size!2394 lt!52897) (size!2394 lt!52904))))))

(assert (= (and d!42262 c!33542) b!168778))

(assert (= (and d!42262 (not c!33542)) b!168779))

(assert (= (and d!42262 res!76291) b!168780))

(assert (= (and b!168780 res!76290) b!168781))

(declare-fun m!164177 () Bool)

(assert (=> b!168779 m!164177))

(declare-fun m!164179 () Bool)

(assert (=> d!42262 m!164179))

(declare-fun m!164181 () Bool)

(assert (=> d!42262 m!164181))

(assert (=> d!42262 m!164157))

(declare-fun m!164183 () Bool)

(assert (=> b!168780 m!164183))

(declare-fun m!164185 () Bool)

(assert (=> b!168780 m!164185))

(assert (=> b!168780 m!164163))

(assert (=> b!168697 d!42262))

(declare-fun b!168782 () Bool)

(declare-fun e!102023 () List!2884)

(assert (=> b!168782 (= e!102023 lt!52899)))

(declare-fun b!168783 () Bool)

(assert (=> b!168783 (= e!102023 (Cons!2874 (h!8271 lt!52897) (++!656 (t!26938 lt!52897) lt!52899)))))

(declare-fun e!102024 () Bool)

(declare-fun lt!52926 () List!2884)

(declare-fun b!168785 () Bool)

(assert (=> b!168785 (= e!102024 (or (not (= lt!52899 Nil!2874)) (= lt!52926 lt!52897)))))

(declare-fun d!42264 () Bool)

(assert (=> d!42264 e!102024))

(declare-fun res!76293 () Bool)

(assert (=> d!42264 (=> (not res!76293) (not e!102024))))

(assert (=> d!42264 (= res!76293 (= (content!397 lt!52926) ((_ map or) (content!397 lt!52897) (content!397 lt!52899))))))

(assert (=> d!42264 (= lt!52926 e!102023)))

(declare-fun c!33543 () Bool)

(assert (=> d!42264 (= c!33543 ((_ is Nil!2874) lt!52897))))

(assert (=> d!42264 (= (++!656 lt!52897 lt!52899) lt!52926)))

(declare-fun b!168784 () Bool)

(declare-fun res!76292 () Bool)

(assert (=> b!168784 (=> (not res!76292) (not e!102024))))

(assert (=> b!168784 (= res!76292 (= (size!2394 lt!52926) (+ (size!2394 lt!52897) (size!2394 lt!52899))))))

(assert (= (and d!42264 c!33543) b!168782))

(assert (= (and d!42264 (not c!33543)) b!168783))

(assert (= (and d!42264 res!76293) b!168784))

(assert (= (and b!168784 res!76292) b!168785))

(declare-fun m!164187 () Bool)

(assert (=> b!168783 m!164187))

(declare-fun m!164189 () Bool)

(assert (=> d!42264 m!164189))

(assert (=> d!42264 m!164181))

(declare-fun m!164191 () Bool)

(assert (=> d!42264 m!164191))

(declare-fun m!164193 () Bool)

(assert (=> b!168784 m!164193))

(assert (=> b!168784 m!164185))

(declare-fun m!164195 () Bool)

(assert (=> b!168784 m!164195))

(assert (=> b!168697 d!42264))

(declare-fun bs!16376 () Bool)

(declare-fun b!168835 () Bool)

(assert (= bs!16376 (and b!168835 b!168701)))

(declare-fun lambda!4761 () Int)

(assert (=> bs!16376 (not (= lambda!4761 lambda!4751))))

(declare-fun bs!16377 () Bool)

(assert (= bs!16377 (and b!168835 b!168710)))

(assert (=> bs!16377 (= lambda!4761 lambda!4752)))

(declare-fun b!168846 () Bool)

(declare-fun e!102062 () Bool)

(assert (=> b!168846 (= e!102062 true)))

(declare-fun b!168845 () Bool)

(declare-fun e!102061 () Bool)

(assert (=> b!168845 (= e!102061 e!102062)))

(declare-fun b!168844 () Bool)

(declare-fun e!102060 () Bool)

(assert (=> b!168844 (= e!102060 e!102061)))

(assert (=> b!168835 e!102060))

(assert (= b!168845 b!168846))

(assert (= b!168844 b!168845))

(assert (= (and b!168835 ((_ is Cons!2875) rules!1920)) b!168844))

(assert (=> b!168846 (< (dynLambda!1069 order!1537 (toValue!1176 (transformation!513 (h!8272 rules!1920)))) (dynLambda!1070 order!1539 lambda!4761))))

(assert (=> b!168846 (< (dynLambda!1071 order!1541 (toChars!1035 (transformation!513 (h!8272 rules!1920)))) (dynLambda!1070 order!1539 lambda!4761))))

(assert (=> b!168835 true))

(declare-fun bm!7291 () Bool)

(declare-fun call!7299 () List!2884)

(declare-fun e!102054 () BalanceConc!1704)

(assert (=> bm!7291 (= call!7299 (list!1043 e!102054))))

(declare-fun c!33562 () Bool)

(declare-fun c!33563 () Bool)

(assert (=> bm!7291 (= c!33562 c!33563)))

(declare-fun b!168832 () Bool)

(declare-fun lt!52984 () Option!301)

(assert (=> b!168832 (= c!33563 (and ((_ is Some!300) lt!52984) (not (= (_1!1596 (v!13731 lt!52984)) (h!8273 (t!26940 tokens!465))))))))

(declare-fun e!102057 () List!2884)

(declare-fun e!102055 () List!2884)

(assert (=> b!168832 (= e!102057 e!102055)))

(declare-fun d!42266 () Bool)

(declare-fun c!33564 () Bool)

(assert (=> d!42266 (= c!33564 ((_ is Cons!2876) (t!26940 tokens!465)))))

(declare-fun e!102056 () List!2884)

(assert (=> d!42266 (= (printWithSeparatorTokenWhenNeededList!92 thiss!17480 rules!1920 (t!26940 tokens!465) separatorToken!170) e!102056)))

(declare-fun b!168833 () Bool)

(declare-fun call!7300 () BalanceConc!1704)

(assert (=> b!168833 (= e!102054 call!7300)))

(declare-fun b!168834 () Bool)

(declare-fun call!7298 () List!2884)

(assert (=> b!168834 (= e!102057 call!7298)))

(assert (=> b!168835 (= e!102056 e!102057)))

(declare-fun lt!52986 () Unit!2486)

(assert (=> b!168835 (= lt!52986 (forallContained!80 (t!26940 tokens!465) lambda!4761 (h!8273 (t!26940 tokens!465))))))

(declare-fun lt!52981 () List!2884)

(assert (=> b!168835 (= lt!52981 (printWithSeparatorTokenWhenNeededList!92 thiss!17480 rules!1920 (t!26940 (t!26940 tokens!465)) separatorToken!170))))

(assert (=> b!168835 (= lt!52984 (maxPrefix!129 thiss!17480 rules!1920 (++!656 (list!1043 (charsOf!168 (h!8273 (t!26940 tokens!465)))) lt!52981)))))

(declare-fun c!33561 () Bool)

(assert (=> b!168835 (= c!33561 (and ((_ is Some!300) lt!52984) (= (_1!1596 (v!13731 lt!52984)) (h!8273 (t!26940 tokens!465)))))))

(declare-fun bm!7292 () Bool)

(declare-fun call!7297 () BalanceConc!1704)

(assert (=> bm!7292 (= call!7297 (charsOf!168 (h!8273 (t!26940 tokens!465))))))

(declare-fun b!168836 () Bool)

(assert (=> b!168836 (= e!102055 Nil!2874)))

(assert (=> b!168836 (= (print!130 thiss!17480 (singletonSeq!65 (h!8273 (t!26940 tokens!465)))) (printTailRec!93 thiss!17480 (singletonSeq!65 (h!8273 (t!26940 tokens!465))) 0 (BalanceConc!1705 Empty!848)))))

(declare-fun lt!52982 () Unit!2486)

(declare-fun Unit!2492 () Unit!2486)

(assert (=> b!168836 (= lt!52982 Unit!2492)))

(declare-fun lt!52983 () Unit!2486)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!34 (LexerInterface!399 List!2885 List!2884 List!2884) Unit!2486)

(assert (=> b!168836 (= lt!52983 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!34 thiss!17480 rules!1920 call!7299 lt!52981))))

(assert (=> b!168836 false))

(declare-fun lt!52985 () Unit!2486)

(declare-fun Unit!2493 () Unit!2486)

(assert (=> b!168836 (= lt!52985 Unit!2493)))

(declare-fun bm!7293 () Bool)

(assert (=> bm!7293 (= call!7300 call!7297)))

(declare-fun b!168837 () Bool)

(assert (=> b!168837 (= e!102054 (charsOf!168 separatorToken!170))))

(declare-fun b!168838 () Bool)

(assert (=> b!168838 (= e!102055 (++!656 call!7298 lt!52981))))

(declare-fun bm!7294 () Bool)

(declare-fun call!7296 () List!2884)

(assert (=> bm!7294 (= call!7296 (list!1043 (ite c!33561 call!7297 call!7300)))))

(declare-fun bm!7295 () Bool)

(assert (=> bm!7295 (= call!7298 (++!656 call!7296 (ite c!33561 lt!52981 call!7299)))))

(declare-fun b!168839 () Bool)

(assert (=> b!168839 (= e!102056 Nil!2874)))

(assert (= (and d!42266 c!33564) b!168835))

(assert (= (and d!42266 (not c!33564)) b!168839))

(assert (= (and b!168835 c!33561) b!168834))

(assert (= (and b!168835 (not c!33561)) b!168832))

(assert (= (and b!168832 c!33563) b!168838))

(assert (= (and b!168832 (not c!33563)) b!168836))

(assert (= (or b!168838 b!168836) bm!7293))

(assert (= (or b!168838 b!168836) bm!7291))

(assert (= (and bm!7291 c!33562) b!168837))

(assert (= (and bm!7291 (not c!33562)) b!168833))

(assert (= (or b!168834 bm!7293) bm!7292))

(assert (= (or b!168834 b!168838) bm!7294))

(assert (= (or b!168834 b!168838) bm!7295))

(declare-fun m!164257 () Bool)

(assert (=> bm!7295 m!164257))

(declare-fun m!164259 () Bool)

(assert (=> bm!7292 m!164259))

(declare-fun m!164261 () Bool)

(assert (=> bm!7291 m!164261))

(assert (=> b!168837 m!164037))

(declare-fun m!164263 () Bool)

(assert (=> b!168838 m!164263))

(declare-fun m!164265 () Bool)

(assert (=> bm!7294 m!164265))

(declare-fun m!164267 () Bool)

(assert (=> b!168835 m!164267))

(declare-fun m!164269 () Bool)

(assert (=> b!168835 m!164269))

(declare-fun m!164271 () Bool)

(assert (=> b!168835 m!164271))

(declare-fun m!164273 () Bool)

(assert (=> b!168835 m!164273))

(assert (=> b!168835 m!164259))

(declare-fun m!164275 () Bool)

(assert (=> b!168835 m!164275))

(assert (=> b!168835 m!164267))

(assert (=> b!168835 m!164259))

(assert (=> b!168835 m!164275))

(declare-fun m!164277 () Bool)

(assert (=> b!168836 m!164277))

(assert (=> b!168836 m!164277))

(declare-fun m!164279 () Bool)

(assert (=> b!168836 m!164279))

(assert (=> b!168836 m!164277))

(declare-fun m!164281 () Bool)

(assert (=> b!168836 m!164281))

(declare-fun m!164283 () Bool)

(assert (=> b!168836 m!164283))

(assert (=> b!168697 d!42266))

(declare-fun bs!16384 () Bool)

(declare-fun d!42270 () Bool)

(assert (= bs!16384 (and d!42270 b!168701)))

(declare-fun lambda!4769 () Int)

(assert (=> bs!16384 (= lambda!4769 lambda!4751)))

(declare-fun bs!16385 () Bool)

(assert (= bs!16385 (and d!42270 b!168710)))

(assert (=> bs!16385 (not (= lambda!4769 lambda!4752))))

(declare-fun bs!16386 () Bool)

(assert (= bs!16386 (and d!42270 b!168835)))

(assert (=> bs!16386 (not (= lambda!4769 lambda!4761))))

(declare-fun bs!16387 () Bool)

(declare-fun b!168929 () Bool)

(assert (= bs!16387 (and b!168929 b!168701)))

(declare-fun lambda!4770 () Int)

(assert (=> bs!16387 (not (= lambda!4770 lambda!4751))))

(declare-fun bs!16388 () Bool)

(assert (= bs!16388 (and b!168929 b!168710)))

(assert (=> bs!16388 (= lambda!4770 lambda!4752)))

(declare-fun bs!16389 () Bool)

(assert (= bs!16389 (and b!168929 b!168835)))

(assert (=> bs!16389 (= lambda!4770 lambda!4761)))

(declare-fun bs!16390 () Bool)

(assert (= bs!16390 (and b!168929 d!42270)))

(assert (=> bs!16390 (not (= lambda!4770 lambda!4769))))

(declare-fun b!168938 () Bool)

(declare-fun e!102122 () Bool)

(assert (=> b!168938 (= e!102122 true)))

(declare-fun b!168937 () Bool)

(declare-fun e!102121 () Bool)

(assert (=> b!168937 (= e!102121 e!102122)))

(declare-fun b!168936 () Bool)

(declare-fun e!102120 () Bool)

(assert (=> b!168936 (= e!102120 e!102121)))

(assert (=> b!168929 e!102120))

(assert (= b!168937 b!168938))

(assert (= b!168936 b!168937))

(assert (= (and b!168929 ((_ is Cons!2875) rules!1920)) b!168936))

(assert (=> b!168938 (< (dynLambda!1069 order!1537 (toValue!1176 (transformation!513 (h!8272 rules!1920)))) (dynLambda!1070 order!1539 lambda!4770))))

(assert (=> b!168938 (< (dynLambda!1071 order!1541 (toChars!1035 (transformation!513 (h!8272 rules!1920)))) (dynLambda!1070 order!1539 lambda!4770))))

(assert (=> b!168929 true))

(declare-fun b!168927 () Bool)

(declare-fun e!102114 () Bool)

(assert (=> b!168927 (= e!102114 (<= 0 (size!2393 (seqFromList!403 (t!26940 tokens!465)))))))

(declare-fun bm!7321 () Bool)

(declare-fun call!7329 () Token!770)

(declare-fun call!7330 () Token!770)

(assert (=> bm!7321 (= call!7329 call!7330)))

(declare-fun b!168928 () Bool)

(declare-fun e!102116 () BalanceConc!1704)

(declare-fun call!7327 () BalanceConc!1704)

(declare-fun lt!53057 () BalanceConc!1704)

(declare-fun ++!658 (BalanceConc!1704 BalanceConc!1704) BalanceConc!1704)

(assert (=> b!168928 (= e!102116 (++!658 call!7327 lt!53057))))

(declare-fun e!102117 () BalanceConc!1704)

(declare-fun e!102119 () BalanceConc!1704)

(assert (=> b!168929 (= e!102117 e!102119)))

(declare-fun lt!53062 () List!2886)

(assert (=> b!168929 (= lt!53062 (list!1046 (seqFromList!403 (t!26940 tokens!465))))))

(declare-fun lt!53054 () Unit!2486)

(declare-fun lemmaDropApply!126 (List!2886 Int) Unit!2486)

(assert (=> b!168929 (= lt!53054 (lemmaDropApply!126 lt!53062 0))))

(declare-fun head!600 (List!2886) Token!770)

(declare-fun drop!139 (List!2886 Int) List!2886)

(declare-fun apply!410 (List!2886 Int) Token!770)

(assert (=> b!168929 (= (head!600 (drop!139 lt!53062 0)) (apply!410 lt!53062 0))))

(declare-fun lt!53060 () Unit!2486)

(assert (=> b!168929 (= lt!53060 lt!53054)))

(declare-fun lt!53053 () List!2886)

(assert (=> b!168929 (= lt!53053 (list!1046 (seqFromList!403 (t!26940 tokens!465))))))

(declare-fun lt!53056 () Unit!2486)

(declare-fun lemmaDropTail!118 (List!2886 Int) Unit!2486)

(assert (=> b!168929 (= lt!53056 (lemmaDropTail!118 lt!53053 0))))

(declare-fun tail!340 (List!2886) List!2886)

(assert (=> b!168929 (= (tail!340 (drop!139 lt!53053 0)) (drop!139 lt!53053 (+ 0 1)))))

(declare-fun lt!53061 () Unit!2486)

(assert (=> b!168929 (= lt!53061 lt!53056)))

(declare-fun lt!53052 () Unit!2486)

(assert (=> b!168929 (= lt!53052 (forallContained!80 (list!1046 (seqFromList!403 (t!26940 tokens!465))) lambda!4770 (apply!409 (seqFromList!403 (t!26940 tokens!465)) 0)))))

(assert (=> b!168929 (= lt!53057 (printWithSeparatorTokenWhenNeededRec!82 thiss!17480 rules!1920 (seqFromList!403 (t!26940 tokens!465)) separatorToken!170 (+ 0 1)))))

(declare-fun lt!53051 () Option!300)

(assert (=> b!168929 (= lt!53051 (maxPrefixZipperSequence!92 thiss!17480 rules!1920 (++!658 (charsOf!168 (apply!409 (seqFromList!403 (t!26940 tokens!465)) 0)) lt!53057)))))

(declare-fun res!76338 () Bool)

(assert (=> b!168929 (= res!76338 ((_ is Some!299) lt!53051))))

(declare-fun e!102115 () Bool)

(assert (=> b!168929 (=> (not res!76338) (not e!102115))))

(declare-fun c!33589 () Bool)

(assert (=> b!168929 (= c!33589 e!102115)))

(declare-fun lt!53059 () BalanceConc!1704)

(declare-fun dropList!86 (BalanceConc!1706 Int) List!2886)

(assert (=> d!42270 (= (list!1043 lt!53059) (printWithSeparatorTokenWhenNeededList!92 thiss!17480 rules!1920 (dropList!86 (seqFromList!403 (t!26940 tokens!465)) 0) separatorToken!170))))

(assert (=> d!42270 (= lt!53059 e!102117)))

(declare-fun c!33591 () Bool)

(assert (=> d!42270 (= c!33591 (>= 0 (size!2393 (seqFromList!403 (t!26940 tokens!465)))))))

(declare-fun lt!53063 () Unit!2486)

(declare-fun lemmaContentSubsetPreservesForall!30 (List!2886 List!2886 Int) Unit!2486)

(assert (=> d!42270 (= lt!53063 (lemmaContentSubsetPreservesForall!30 (list!1046 (seqFromList!403 (t!26940 tokens!465))) (dropList!86 (seqFromList!403 (t!26940 tokens!465)) 0) lambda!4769))))

(assert (=> d!42270 e!102114))

(declare-fun res!76337 () Bool)

(assert (=> d!42270 (=> (not res!76337) (not e!102114))))

(assert (=> d!42270 (= res!76337 (>= 0 0))))

(assert (=> d!42270 (= (printWithSeparatorTokenWhenNeededRec!82 thiss!17480 rules!1920 (seqFromList!403 (t!26940 tokens!465)) separatorToken!170 0) lt!53059)))

(declare-fun b!168930 () Bool)

(assert (=> b!168930 (= e!102116 (BalanceConc!1705 Empty!848))))

(assert (=> b!168930 (= (print!130 thiss!17480 (singletonSeq!65 call!7329)) (printTailRec!93 thiss!17480 (singletonSeq!65 call!7329) 0 (BalanceConc!1705 Empty!848)))))

(declare-fun lt!53050 () Unit!2486)

(declare-fun Unit!2494 () Unit!2486)

(assert (=> b!168930 (= lt!53050 Unit!2494)))

(declare-fun lt!53058 () Unit!2486)

(declare-fun call!7328 () BalanceConc!1704)

(assert (=> b!168930 (= lt!53058 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!34 thiss!17480 rules!1920 (list!1043 call!7328) (list!1043 lt!53057)))))

(assert (=> b!168930 false))

(declare-fun lt!53055 () Unit!2486)

(declare-fun Unit!2495 () Unit!2486)

(assert (=> b!168930 (= lt!53055 Unit!2495)))

(declare-fun b!168931 () Bool)

(assert (=> b!168931 (= e!102115 (= (_1!1595 (v!13730 lt!53051)) (apply!409 (seqFromList!403 (t!26940 tokens!465)) 0)))))

(declare-fun call!7326 () BalanceConc!1704)

(declare-fun bm!7322 () Bool)

(assert (=> bm!7322 (= call!7327 (++!658 call!7326 (ite c!33589 lt!53057 call!7328)))))

(declare-fun b!168932 () Bool)

(assert (=> b!168932 (= e!102119 call!7327)))

(declare-fun c!33590 () Bool)

(declare-fun bm!7323 () Bool)

(assert (=> bm!7323 (= call!7328 (charsOf!168 (ite c!33590 separatorToken!170 call!7329)))))

(declare-fun b!168933 () Bool)

(assert (=> b!168933 (= e!102117 (BalanceConc!1705 Empty!848))))

(declare-fun b!168934 () Bool)

(declare-fun e!102118 () Bool)

(assert (=> b!168934 (= e!102118 (not (= (_1!1595 (v!13730 lt!53051)) call!7330)))))

(declare-fun bm!7324 () Bool)

(assert (=> bm!7324 (= call!7330 (apply!409 (seqFromList!403 (t!26940 tokens!465)) 0))))

(declare-fun b!168935 () Bool)

(assert (=> b!168935 (= c!33590 e!102118)))

(declare-fun res!76336 () Bool)

(assert (=> b!168935 (=> (not res!76336) (not e!102118))))

(assert (=> b!168935 (= res!76336 ((_ is Some!299) lt!53051))))

(assert (=> b!168935 (= e!102119 e!102116)))

(declare-fun bm!7325 () Bool)

(assert (=> bm!7325 (= call!7326 (charsOf!168 (ite c!33589 call!7330 call!7329)))))

(assert (= (and d!42270 res!76337) b!168927))

(assert (= (and d!42270 c!33591) b!168933))

(assert (= (and d!42270 (not c!33591)) b!168929))

(assert (= (and b!168929 res!76338) b!168931))

(assert (= (and b!168929 c!33589) b!168932))

(assert (= (and b!168929 (not c!33589)) b!168935))

(assert (= (and b!168935 res!76336) b!168934))

(assert (= (and b!168935 c!33590) b!168928))

(assert (= (and b!168935 (not c!33590)) b!168930))

(assert (= (or b!168928 b!168930) bm!7321))

(assert (= (or b!168928 b!168930) bm!7323))

(assert (= (or b!168932 bm!7321 b!168934) bm!7324))

(assert (= (or b!168932 b!168928) bm!7325))

(assert (= (or b!168932 b!168928) bm!7322))

(assert (=> b!168927 m!164033))

(declare-fun m!164369 () Bool)

(assert (=> b!168927 m!164369))

(declare-fun m!164371 () Bool)

(assert (=> bm!7322 m!164371))

(assert (=> bm!7324 m!164033))

(declare-fun m!164373 () Bool)

(assert (=> bm!7324 m!164373))

(declare-fun m!164375 () Bool)

(assert (=> b!168928 m!164375))

(declare-fun m!164377 () Bool)

(assert (=> b!168930 m!164377))

(assert (=> b!168930 m!164377))

(declare-fun m!164379 () Bool)

(assert (=> b!168930 m!164379))

(declare-fun m!164381 () Bool)

(assert (=> b!168930 m!164381))

(assert (=> b!168930 m!164377))

(declare-fun m!164383 () Bool)

(assert (=> b!168930 m!164383))

(declare-fun m!164385 () Bool)

(assert (=> b!168930 m!164385))

(assert (=> b!168930 m!164381))

(declare-fun m!164387 () Bool)

(assert (=> b!168930 m!164387))

(assert (=> b!168930 m!164385))

(declare-fun m!164389 () Bool)

(assert (=> bm!7323 m!164389))

(assert (=> b!168931 m!164033))

(assert (=> b!168931 m!164373))

(declare-fun m!164391 () Bool)

(assert (=> d!42270 m!164391))

(assert (=> d!42270 m!164033))

(declare-fun m!164393 () Bool)

(assert (=> d!42270 m!164393))

(declare-fun m!164395 () Bool)

(assert (=> d!42270 m!164395))

(declare-fun m!164397 () Bool)

(assert (=> d!42270 m!164397))

(assert (=> d!42270 m!164033))

(assert (=> d!42270 m!164395))

(assert (=> d!42270 m!164033))

(assert (=> d!42270 m!164369))

(assert (=> d!42270 m!164393))

(assert (=> d!42270 m!164395))

(declare-fun m!164399 () Bool)

(assert (=> d!42270 m!164399))

(declare-fun m!164401 () Bool)

(assert (=> bm!7325 m!164401))

(assert (=> b!168929 m!164393))

(assert (=> b!168929 m!164373))

(declare-fun m!164403 () Bool)

(assert (=> b!168929 m!164403))

(declare-fun m!164405 () Bool)

(assert (=> b!168929 m!164405))

(declare-fun m!164407 () Bool)

(assert (=> b!168929 m!164407))

(declare-fun m!164409 () Bool)

(assert (=> b!168929 m!164409))

(assert (=> b!168929 m!164033))

(assert (=> b!168929 m!164393))

(declare-fun m!164411 () Bool)

(assert (=> b!168929 m!164411))

(declare-fun m!164413 () Bool)

(assert (=> b!168929 m!164413))

(declare-fun m!164415 () Bool)

(assert (=> b!168929 m!164415))

(assert (=> b!168929 m!164033))

(assert (=> b!168929 m!164373))

(assert (=> b!168929 m!164405))

(declare-fun m!164417 () Bool)

(assert (=> b!168929 m!164417))

(declare-fun m!164419 () Bool)

(assert (=> b!168929 m!164419))

(assert (=> b!168929 m!164033))

(declare-fun m!164421 () Bool)

(assert (=> b!168929 m!164421))

(assert (=> b!168929 m!164407))

(declare-fun m!164423 () Bool)

(assert (=> b!168929 m!164423))

(declare-fun m!164425 () Bool)

(assert (=> b!168929 m!164425))

(assert (=> b!168929 m!164413))

(declare-fun m!164427 () Bool)

(assert (=> b!168929 m!164427))

(assert (=> b!168929 m!164373))

(assert (=> b!168929 m!164411))

(assert (=> b!168697 d!42270))

(declare-fun d!42290 () Bool)

(declare-fun lt!53080 () BalanceConc!1704)

(assert (=> d!42290 (= (list!1043 lt!53080) (originalCharacters!556 separatorToken!170))))

(declare-fun dynLambda!1074 (Int TokenValue!535) BalanceConc!1704)

(assert (=> d!42290 (= lt!53080 (dynLambda!1074 (toChars!1035 (transformation!513 (rule!1020 separatorToken!170))) (value!18936 separatorToken!170)))))

(assert (=> d!42290 (= (charsOf!168 separatorToken!170) lt!53080)))

(declare-fun b_lambda!3763 () Bool)

(assert (=> (not b_lambda!3763) (not d!42290)))

(declare-fun t!26957 () Bool)

(declare-fun tb!6621 () Bool)

(assert (=> (and b!168719 (= (toChars!1035 (transformation!513 (rule!1020 (h!8273 tokens!465)))) (toChars!1035 (transformation!513 (rule!1020 separatorToken!170)))) t!26957) tb!6621))

(declare-fun b!168949 () Bool)

(declare-fun e!102129 () Bool)

(declare-fun tp!83746 () Bool)

(declare-fun inv!3704 (Conc!848) Bool)

(assert (=> b!168949 (= e!102129 (and (inv!3704 (c!33532 (dynLambda!1074 (toChars!1035 (transformation!513 (rule!1020 separatorToken!170))) (value!18936 separatorToken!170)))) tp!83746))))

(declare-fun result!9284 () Bool)

(declare-fun inv!3705 (BalanceConc!1704) Bool)

(assert (=> tb!6621 (= result!9284 (and (inv!3705 (dynLambda!1074 (toChars!1035 (transformation!513 (rule!1020 separatorToken!170))) (value!18936 separatorToken!170))) e!102129))))

(assert (= tb!6621 b!168949))

(declare-fun m!164429 () Bool)

(assert (=> b!168949 m!164429))

(declare-fun m!164431 () Bool)

(assert (=> tb!6621 m!164431))

(assert (=> d!42290 t!26957))

(declare-fun b_and!10997 () Bool)

(assert (= b_and!10987 (and (=> t!26957 result!9284) b_and!10997)))

(declare-fun tb!6623 () Bool)

(declare-fun t!26959 () Bool)

(assert (=> (and b!168695 (= (toChars!1035 (transformation!513 (h!8272 rules!1920))) (toChars!1035 (transformation!513 (rule!1020 separatorToken!170)))) t!26959) tb!6623))

(declare-fun result!9288 () Bool)

(assert (= result!9288 result!9284))

(assert (=> d!42290 t!26959))

(declare-fun b_and!10999 () Bool)

(assert (= b_and!10991 (and (=> t!26959 result!9288) b_and!10999)))

(declare-fun t!26961 () Bool)

(declare-fun tb!6625 () Bool)

(assert (=> (and b!168709 (= (toChars!1035 (transformation!513 (rule!1020 separatorToken!170))) (toChars!1035 (transformation!513 (rule!1020 separatorToken!170)))) t!26961) tb!6625))

(declare-fun result!9290 () Bool)

(assert (= result!9290 result!9284))

(assert (=> d!42290 t!26961))

(declare-fun b_and!11001 () Bool)

(assert (= b_and!10995 (and (=> t!26961 result!9290) b_and!11001)))

(declare-fun m!164433 () Bool)

(assert (=> d!42290 m!164433))

(declare-fun m!164435 () Bool)

(assert (=> d!42290 m!164435))

(assert (=> b!168697 d!42290))

(declare-fun d!42292 () Bool)

(assert (=> d!42292 (= (++!656 (++!656 lt!52897 lt!52904) lt!52898) (++!656 lt!52897 (++!656 lt!52904 lt!52898)))))

(declare-fun lt!53090 () Unit!2486)

(declare-fun choose!1824 (List!2884 List!2884 List!2884) Unit!2486)

(assert (=> d!42292 (= lt!53090 (choose!1824 lt!52897 lt!52904 lt!52898))))

(assert (=> d!42292 (= (lemmaConcatAssociativity!198 lt!52897 lt!52904 lt!52898) lt!53090)))

(declare-fun bs!16391 () Bool)

(assert (= bs!16391 d!42292))

(assert (=> bs!16391 m!164041))

(declare-fun m!164471 () Bool)

(assert (=> bs!16391 m!164471))

(assert (=> bs!16391 m!164041))

(assert (=> bs!16391 m!164051))

(assert (=> bs!16391 m!164043))

(declare-fun m!164473 () Bool)

(assert (=> bs!16391 m!164473))

(assert (=> bs!16391 m!164043))

(assert (=> b!168697 d!42292))

(declare-fun d!42296 () Bool)

(assert (=> d!42296 (= (list!1043 (charsOf!168 (h!8273 tokens!465))) (list!1047 (c!33532 (charsOf!168 (h!8273 tokens!465)))))))

(declare-fun bs!16392 () Bool)

(assert (= bs!16392 d!42296))

(declare-fun m!164475 () Bool)

(assert (=> bs!16392 m!164475))

(assert (=> b!168697 d!42296))

(declare-fun d!42298 () Bool)

(declare-fun lt!53091 () BalanceConc!1704)

(assert (=> d!42298 (= (list!1043 lt!53091) (originalCharacters!556 (h!8273 tokens!465)))))

(assert (=> d!42298 (= lt!53091 (dynLambda!1074 (toChars!1035 (transformation!513 (rule!1020 (h!8273 tokens!465)))) (value!18936 (h!8273 tokens!465))))))

(assert (=> d!42298 (= (charsOf!168 (h!8273 tokens!465)) lt!53091)))

(declare-fun b_lambda!3765 () Bool)

(assert (=> (not b_lambda!3765) (not d!42298)))

(declare-fun t!26963 () Bool)

(declare-fun tb!6627 () Bool)

(assert (=> (and b!168719 (= (toChars!1035 (transformation!513 (rule!1020 (h!8273 tokens!465)))) (toChars!1035 (transformation!513 (rule!1020 (h!8273 tokens!465))))) t!26963) tb!6627))

(declare-fun b!168957 () Bool)

(declare-fun e!102134 () Bool)

(declare-fun tp!83747 () Bool)

(assert (=> b!168957 (= e!102134 (and (inv!3704 (c!33532 (dynLambda!1074 (toChars!1035 (transformation!513 (rule!1020 (h!8273 tokens!465)))) (value!18936 (h!8273 tokens!465))))) tp!83747))))

(declare-fun result!9292 () Bool)

(assert (=> tb!6627 (= result!9292 (and (inv!3705 (dynLambda!1074 (toChars!1035 (transformation!513 (rule!1020 (h!8273 tokens!465)))) (value!18936 (h!8273 tokens!465)))) e!102134))))

(assert (= tb!6627 b!168957))

(declare-fun m!164477 () Bool)

(assert (=> b!168957 m!164477))

(declare-fun m!164479 () Bool)

(assert (=> tb!6627 m!164479))

(assert (=> d!42298 t!26963))

(declare-fun b_and!11003 () Bool)

(assert (= b_and!10997 (and (=> t!26963 result!9292) b_and!11003)))

(declare-fun t!26965 () Bool)

(declare-fun tb!6629 () Bool)

(assert (=> (and b!168695 (= (toChars!1035 (transformation!513 (h!8272 rules!1920))) (toChars!1035 (transformation!513 (rule!1020 (h!8273 tokens!465))))) t!26965) tb!6629))

(declare-fun result!9294 () Bool)

(assert (= result!9294 result!9292))

(assert (=> d!42298 t!26965))

(declare-fun b_and!11005 () Bool)

(assert (= b_and!10999 (and (=> t!26965 result!9294) b_and!11005)))

(declare-fun tb!6631 () Bool)

(declare-fun t!26967 () Bool)

(assert (=> (and b!168709 (= (toChars!1035 (transformation!513 (rule!1020 separatorToken!170))) (toChars!1035 (transformation!513 (rule!1020 (h!8273 tokens!465))))) t!26967) tb!6631))

(declare-fun result!9296 () Bool)

(assert (= result!9296 result!9292))

(assert (=> d!42298 t!26967))

(declare-fun b_and!11007 () Bool)

(assert (= b_and!11001 (and (=> t!26967 result!9296) b_and!11007)))

(declare-fun m!164481 () Bool)

(assert (=> d!42298 m!164481))

(declare-fun m!164483 () Bool)

(assert (=> d!42298 m!164483))

(assert (=> b!168697 d!42298))

(declare-fun d!42300 () Bool)

(declare-fun lt!53110 () BalanceConc!1704)

(declare-fun printListTailRec!54 (LexerInterface!399 List!2886 List!2884) List!2884)

(assert (=> d!42300 (= (list!1043 lt!53110) (printListTailRec!54 thiss!17480 (dropList!86 lt!52903 0) (list!1043 (BalanceConc!1705 Empty!848))))))

(declare-fun e!102151 () BalanceConc!1704)

(assert (=> d!42300 (= lt!53110 e!102151)))

(declare-fun c!33606 () Bool)

(assert (=> d!42300 (= c!33606 (>= 0 (size!2393 lt!52903)))))

(declare-fun e!102150 () Bool)

(assert (=> d!42300 e!102150))

(declare-fun res!76348 () Bool)

(assert (=> d!42300 (=> (not res!76348) (not e!102150))))

(assert (=> d!42300 (= res!76348 (>= 0 0))))

(assert (=> d!42300 (= (printTailRec!93 thiss!17480 lt!52903 0 (BalanceConc!1705 Empty!848)) lt!53110)))

(declare-fun b!168982 () Bool)

(assert (=> b!168982 (= e!102150 (<= 0 (size!2393 lt!52903)))))

(declare-fun b!168983 () Bool)

(assert (=> b!168983 (= e!102151 (BalanceConc!1705 Empty!848))))

(declare-fun b!168984 () Bool)

(assert (=> b!168984 (= e!102151 (printTailRec!93 thiss!17480 lt!52903 (+ 0 1) (++!658 (BalanceConc!1705 Empty!848) (charsOf!168 (apply!409 lt!52903 0)))))))

(declare-fun lt!53111 () List!2886)

(assert (=> b!168984 (= lt!53111 (list!1046 lt!52903))))

(declare-fun lt!53109 () Unit!2486)

(assert (=> b!168984 (= lt!53109 (lemmaDropApply!126 lt!53111 0))))

(assert (=> b!168984 (= (head!600 (drop!139 lt!53111 0)) (apply!410 lt!53111 0))))

(declare-fun lt!53112 () Unit!2486)

(assert (=> b!168984 (= lt!53112 lt!53109)))

(declare-fun lt!53108 () List!2886)

(assert (=> b!168984 (= lt!53108 (list!1046 lt!52903))))

(declare-fun lt!53106 () Unit!2486)

(assert (=> b!168984 (= lt!53106 (lemmaDropTail!118 lt!53108 0))))

(assert (=> b!168984 (= (tail!340 (drop!139 lt!53108 0)) (drop!139 lt!53108 (+ 0 1)))))

(declare-fun lt!53107 () Unit!2486)

(assert (=> b!168984 (= lt!53107 lt!53106)))

(assert (= (and d!42300 res!76348) b!168982))

(assert (= (and d!42300 c!33606) b!168983))

(assert (= (and d!42300 (not c!33606)) b!168984))

(declare-fun m!164505 () Bool)

(assert (=> d!42300 m!164505))

(declare-fun m!164507 () Bool)

(assert (=> d!42300 m!164507))

(declare-fun m!164509 () Bool)

(assert (=> d!42300 m!164509))

(assert (=> d!42300 m!164505))

(declare-fun m!164511 () Bool)

(assert (=> d!42300 m!164511))

(declare-fun m!164513 () Bool)

(assert (=> d!42300 m!164513))

(assert (=> d!42300 m!164509))

(assert (=> b!168982 m!164507))

(declare-fun m!164515 () Bool)

(assert (=> b!168984 m!164515))

(declare-fun m!164517 () Bool)

(assert (=> b!168984 m!164517))

(declare-fun m!164519 () Bool)

(assert (=> b!168984 m!164519))

(declare-fun m!164521 () Bool)

(assert (=> b!168984 m!164521))

(declare-fun m!164523 () Bool)

(assert (=> b!168984 m!164523))

(assert (=> b!168984 m!164521))

(declare-fun m!164525 () Bool)

(assert (=> b!168984 m!164525))

(declare-fun m!164527 () Bool)

(assert (=> b!168984 m!164527))

(declare-fun m!164529 () Bool)

(assert (=> b!168984 m!164529))

(declare-fun m!164531 () Bool)

(assert (=> b!168984 m!164531))

(assert (=> b!168984 m!164525))

(declare-fun m!164533 () Bool)

(assert (=> b!168984 m!164533))

(declare-fun m!164535 () Bool)

(assert (=> b!168984 m!164535))

(declare-fun m!164537 () Bool)

(assert (=> b!168984 m!164537))

(assert (=> b!168984 m!164515))

(declare-fun m!164539 () Bool)

(assert (=> b!168984 m!164539))

(assert (=> b!168984 m!164523))

(assert (=> b!168984 m!164535))

(assert (=> b!168696 d!42300))

(declare-fun d!42312 () Bool)

(declare-fun lt!53115 () BalanceConc!1704)

(assert (=> d!42312 (= (list!1043 lt!53115) (printList!83 thiss!17480 (list!1046 lt!52903)))))

(assert (=> d!42312 (= lt!53115 (printTailRec!93 thiss!17480 lt!52903 0 (BalanceConc!1705 Empty!848)))))

(assert (=> d!42312 (= (print!130 thiss!17480 lt!52903) lt!53115)))

(declare-fun bs!16394 () Bool)

(assert (= bs!16394 d!42312))

(declare-fun m!164541 () Bool)

(assert (=> bs!16394 m!164541))

(assert (=> bs!16394 m!164519))

(assert (=> bs!16394 m!164519))

(declare-fun m!164543 () Bool)

(assert (=> bs!16394 m!164543))

(assert (=> bs!16394 m!164009))

(assert (=> b!168696 d!42312))

(declare-fun d!42314 () Bool)

(assert (=> d!42314 (= (list!1043 lt!52907) (list!1047 (c!33532 lt!52907)))))

(declare-fun bs!16395 () Bool)

(assert (= bs!16395 d!42314))

(declare-fun m!164545 () Bool)

(assert (=> bs!16395 m!164545))

(assert (=> b!168696 d!42314))

(declare-fun d!42316 () Bool)

(declare-fun e!102154 () Bool)

(assert (=> d!42316 e!102154))

(declare-fun res!76351 () Bool)

(assert (=> d!42316 (=> (not res!76351) (not e!102154))))

(declare-fun lt!53118 () BalanceConc!1706)

(assert (=> d!42316 (= res!76351 (= (list!1046 lt!53118) (Cons!2876 (h!8273 tokens!465) Nil!2876)))))

(declare-fun singleton!35 (Token!770) BalanceConc!1706)

(assert (=> d!42316 (= lt!53118 (singleton!35 (h!8273 tokens!465)))))

(assert (=> d!42316 (= (singletonSeq!65 (h!8273 tokens!465)) lt!53118)))

(declare-fun b!168987 () Bool)

(declare-fun isBalanced!236 (Conc!849) Bool)

(assert (=> b!168987 (= e!102154 (isBalanced!236 (c!33534 lt!53118)))))

(assert (= (and d!42316 res!76351) b!168987))

(declare-fun m!164547 () Bool)

(assert (=> d!42316 m!164547))

(declare-fun m!164549 () Bool)

(assert (=> d!42316 m!164549))

(declare-fun m!164551 () Bool)

(assert (=> b!168987 m!164551))

(assert (=> b!168696 d!42316))

(declare-fun d!42318 () Bool)

(declare-fun c!33609 () Bool)

(assert (=> d!42318 (= c!33609 ((_ is Cons!2876) (Cons!2876 (h!8273 tokens!465) Nil!2876)))))

(declare-fun e!102157 () List!2884)

(assert (=> d!42318 (= (printList!83 thiss!17480 (Cons!2876 (h!8273 tokens!465) Nil!2876)) e!102157)))

(declare-fun b!168992 () Bool)

(assert (=> b!168992 (= e!102157 (++!656 (list!1043 (charsOf!168 (h!8273 (Cons!2876 (h!8273 tokens!465) Nil!2876)))) (printList!83 thiss!17480 (t!26940 (Cons!2876 (h!8273 tokens!465) Nil!2876)))))))

(declare-fun b!168993 () Bool)

(assert (=> b!168993 (= e!102157 Nil!2874)))

(assert (= (and d!42318 c!33609) b!168992))

(assert (= (and d!42318 (not c!33609)) b!168993))

(declare-fun m!164553 () Bool)

(assert (=> b!168992 m!164553))

(assert (=> b!168992 m!164553))

(declare-fun m!164555 () Bool)

(assert (=> b!168992 m!164555))

(declare-fun m!164557 () Bool)

(assert (=> b!168992 m!164557))

(assert (=> b!168992 m!164555))

(assert (=> b!168992 m!164557))

(declare-fun m!164559 () Bool)

(assert (=> b!168992 m!164559))

(assert (=> b!168696 d!42318))

(declare-fun d!42320 () Bool)

(assert (=> d!42320 (= (inv!3697 (tag!691 (rule!1020 separatorToken!170))) (= (mod (str.len (value!18935 (tag!691 (rule!1020 separatorToken!170)))) 2) 0))))

(assert (=> b!168707 d!42320))

(declare-fun d!42322 () Bool)

(declare-fun res!76354 () Bool)

(declare-fun e!102160 () Bool)

(assert (=> d!42322 (=> (not res!76354) (not e!102160))))

(declare-fun semiInverseModEq!177 (Int Int) Bool)

(assert (=> d!42322 (= res!76354 (semiInverseModEq!177 (toChars!1035 (transformation!513 (rule!1020 separatorToken!170))) (toValue!1176 (transformation!513 (rule!1020 separatorToken!170)))))))

(assert (=> d!42322 (= (inv!3700 (transformation!513 (rule!1020 separatorToken!170))) e!102160)))

(declare-fun b!168996 () Bool)

(declare-fun equivClasses!160 (Int Int) Bool)

(assert (=> b!168996 (= e!102160 (equivClasses!160 (toChars!1035 (transformation!513 (rule!1020 separatorToken!170))) (toValue!1176 (transformation!513 (rule!1020 separatorToken!170)))))))

(assert (= (and d!42322 res!76354) b!168996))

(declare-fun m!164561 () Bool)

(assert (=> d!42322 m!164561))

(declare-fun m!164563 () Bool)

(assert (=> b!168996 m!164563))

(assert (=> b!168707 d!42322))

(declare-fun d!42324 () Bool)

(declare-fun isEmpty!1210 (Option!300) Bool)

(assert (=> d!42324 (= (isDefined!151 (maxPrefixZipperSequence!92 thiss!17480 rules!1920 (seqFromList!404 (originalCharacters!556 (h!8273 tokens!465))))) (not (isEmpty!1210 (maxPrefixZipperSequence!92 thiss!17480 rules!1920 (seqFromList!404 (originalCharacters!556 (h!8273 tokens!465)))))))))

(declare-fun bs!16396 () Bool)

(assert (= bs!16396 d!42324))

(assert (=> bs!16396 m!164087))

(declare-fun m!164565 () Bool)

(assert (=> bs!16396 m!164565))

(assert (=> b!168710 d!42324))

(declare-fun b!169062 () Bool)

(declare-fun e!102210 () Bool)

(declare-fun e!102209 () Bool)

(assert (=> b!169062 (= e!102210 e!102209)))

(declare-fun res!76404 () Bool)

(assert (=> b!169062 (=> (not res!76404) (not e!102209))))

(declare-fun lt!53166 () Option!300)

(declare-fun get!785 (Option!300) tuple2!2758)

(declare-fun get!786 (Option!301) tuple2!2760)

(assert (=> b!169062 (= res!76404 (= (_1!1595 (get!785 lt!53166)) (_1!1596 (get!786 (maxPrefix!129 thiss!17480 rules!1920 (list!1043 (seqFromList!404 (originalCharacters!556 (h!8273 tokens!465)))))))))))

(declare-fun e!102214 () Bool)

(declare-fun b!169063 () Bool)

(declare-fun maxPrefixZipper!39 (LexerInterface!399 List!2885 List!2884) Option!301)

(assert (=> b!169063 (= e!102214 (= (list!1043 (_2!1595 (get!785 lt!53166))) (_2!1596 (get!786 (maxPrefixZipper!39 thiss!17480 rules!1920 (list!1043 (seqFromList!404 (originalCharacters!556 (h!8273 tokens!465)))))))))))

(declare-fun b!169064 () Bool)

(declare-fun e!102213 () Option!300)

(declare-fun call!7336 () Option!300)

(assert (=> b!169064 (= e!102213 call!7336)))

(declare-fun d!42326 () Bool)

(declare-fun e!102212 () Bool)

(assert (=> d!42326 e!102212))

(declare-fun res!76406 () Bool)

(assert (=> d!42326 (=> (not res!76406) (not e!102212))))

(assert (=> d!42326 (= res!76406 (= (isDefined!151 lt!53166) (isDefined!152 (maxPrefixZipper!39 thiss!17480 rules!1920 (list!1043 (seqFromList!404 (originalCharacters!556 (h!8273 tokens!465))))))))))

(assert (=> d!42326 (= lt!53166 e!102213)))

(declare-fun c!33615 () Bool)

(assert (=> d!42326 (= c!33615 (and ((_ is Cons!2875) rules!1920) ((_ is Nil!2875) (t!26939 rules!1920))))))

(declare-fun lt!53163 () Unit!2486)

(declare-fun lt!53164 () Unit!2486)

(assert (=> d!42326 (= lt!53163 lt!53164)))

(declare-fun lt!53160 () List!2884)

(declare-fun lt!53165 () List!2884)

(declare-fun isPrefix!227 (List!2884 List!2884) Bool)

(assert (=> d!42326 (isPrefix!227 lt!53160 lt!53165)))

(declare-fun lemmaIsPrefixRefl!135 (List!2884 List!2884) Unit!2486)

(assert (=> d!42326 (= lt!53164 (lemmaIsPrefixRefl!135 lt!53160 lt!53165))))

(assert (=> d!42326 (= lt!53165 (list!1043 (seqFromList!404 (originalCharacters!556 (h!8273 tokens!465)))))))

(assert (=> d!42326 (= lt!53160 (list!1043 (seqFromList!404 (originalCharacters!556 (h!8273 tokens!465)))))))

(assert (=> d!42326 (rulesValidInductive!116 thiss!17480 rules!1920)))

(assert (=> d!42326 (= (maxPrefixZipperSequence!92 thiss!17480 rules!1920 (seqFromList!404 (originalCharacters!556 (h!8273 tokens!465)))) lt!53166)))

(declare-fun b!169065 () Bool)

(declare-fun res!76403 () Bool)

(assert (=> b!169065 (=> (not res!76403) (not e!102212))))

(declare-fun e!102211 () Bool)

(assert (=> b!169065 (= res!76403 e!102211)))

(declare-fun res!76405 () Bool)

(assert (=> b!169065 (=> res!76405 e!102211)))

(assert (=> b!169065 (= res!76405 (not (isDefined!151 lt!53166)))))

(declare-fun b!169066 () Bool)

(assert (=> b!169066 (= e!102212 e!102210)))

(declare-fun res!76408 () Bool)

(assert (=> b!169066 (=> res!76408 e!102210)))

(assert (=> b!169066 (= res!76408 (not (isDefined!151 lt!53166)))))

(declare-fun b!169067 () Bool)

(assert (=> b!169067 (= e!102209 (= (list!1043 (_2!1595 (get!785 lt!53166))) (_2!1596 (get!786 (maxPrefix!129 thiss!17480 rules!1920 (list!1043 (seqFromList!404 (originalCharacters!556 (h!8273 tokens!465)))))))))))

(declare-fun bm!7331 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!40 (LexerInterface!399 Rule!826 BalanceConc!1704) Option!300)

(assert (=> bm!7331 (= call!7336 (maxPrefixOneRuleZipperSequence!40 thiss!17480 (h!8272 rules!1920) (seqFromList!404 (originalCharacters!556 (h!8273 tokens!465)))))))

(declare-fun b!169068 () Bool)

(declare-fun lt!53162 () Option!300)

(declare-fun lt!53161 () Option!300)

(assert (=> b!169068 (= e!102213 (ite (and ((_ is None!299) lt!53162) ((_ is None!299) lt!53161)) None!299 (ite ((_ is None!299) lt!53161) lt!53162 (ite ((_ is None!299) lt!53162) lt!53161 (ite (>= (size!2389 (_1!1595 (v!13730 lt!53162))) (size!2389 (_1!1595 (v!13730 lt!53161)))) lt!53162 lt!53161)))))))

(assert (=> b!169068 (= lt!53162 call!7336)))

(assert (=> b!169068 (= lt!53161 (maxPrefixZipperSequence!92 thiss!17480 (t!26939 rules!1920) (seqFromList!404 (originalCharacters!556 (h!8273 tokens!465)))))))

(declare-fun b!169069 () Bool)

(assert (=> b!169069 (= e!102211 e!102214)))

(declare-fun res!76407 () Bool)

(assert (=> b!169069 (=> (not res!76407) (not e!102214))))

(assert (=> b!169069 (= res!76407 (= (_1!1595 (get!785 lt!53166)) (_1!1596 (get!786 (maxPrefixZipper!39 thiss!17480 rules!1920 (list!1043 (seqFromList!404 (originalCharacters!556 (h!8273 tokens!465)))))))))))

(assert (= (and d!42326 c!33615) b!169064))

(assert (= (and d!42326 (not c!33615)) b!169068))

(assert (= (or b!169064 b!169068) bm!7331))

(assert (= (and d!42326 res!76406) b!169065))

(assert (= (and b!169065 (not res!76405)) b!169069))

(assert (= (and b!169069 res!76407) b!169063))

(assert (= (and b!169065 res!76403) b!169066))

(assert (= (and b!169066 (not res!76408)) b!169062))

(assert (= (and b!169062 res!76404) b!169067))

(declare-fun m!164631 () Bool)

(assert (=> b!169065 m!164631))

(assert (=> b!169068 m!164085))

(declare-fun m!164633 () Bool)

(assert (=> b!169068 m!164633))

(assert (=> bm!7331 m!164085))

(declare-fun m!164635 () Bool)

(assert (=> bm!7331 m!164635))

(declare-fun m!164637 () Bool)

(assert (=> b!169062 m!164637))

(assert (=> b!169062 m!164085))

(declare-fun m!164639 () Bool)

(assert (=> b!169062 m!164639))

(assert (=> b!169062 m!164639))

(declare-fun m!164641 () Bool)

(assert (=> b!169062 m!164641))

(assert (=> b!169062 m!164641))

(declare-fun m!164643 () Bool)

(assert (=> b!169062 m!164643))

(assert (=> b!169063 m!164637))

(declare-fun m!164645 () Bool)

(assert (=> b!169063 m!164645))

(assert (=> b!169063 m!164639))

(declare-fun m!164647 () Bool)

(assert (=> b!169063 m!164647))

(assert (=> b!169063 m!164085))

(assert (=> b!169063 m!164639))

(assert (=> b!169063 m!164647))

(declare-fun m!164649 () Bool)

(assert (=> b!169063 m!164649))

(assert (=> d!42326 m!164631))

(assert (=> d!42326 m!164071))

(declare-fun m!164651 () Bool)

(assert (=> d!42326 m!164651))

(assert (=> d!42326 m!164639))

(assert (=> d!42326 m!164647))

(declare-fun m!164653 () Bool)

(assert (=> d!42326 m!164653))

(assert (=> d!42326 m!164647))

(declare-fun m!164655 () Bool)

(assert (=> d!42326 m!164655))

(assert (=> d!42326 m!164085))

(assert (=> d!42326 m!164639))

(assert (=> b!169066 m!164631))

(assert (=> b!169067 m!164639))

(assert (=> b!169067 m!164641))

(assert (=> b!169067 m!164645))

(assert (=> b!169067 m!164085))

(assert (=> b!169067 m!164639))

(assert (=> b!169067 m!164637))

(assert (=> b!169067 m!164641))

(assert (=> b!169067 m!164643))

(assert (=> b!169069 m!164637))

(assert (=> b!169069 m!164085))

(assert (=> b!169069 m!164639))

(assert (=> b!169069 m!164639))

(assert (=> b!169069 m!164647))

(assert (=> b!169069 m!164647))

(assert (=> b!169069 m!164649))

(assert (=> b!168710 d!42326))

(declare-fun d!42346 () Bool)

(declare-fun fromListB!161 (List!2884) BalanceConc!1704)

(assert (=> d!42346 (= (seqFromList!404 (originalCharacters!556 (h!8273 tokens!465))) (fromListB!161 (originalCharacters!556 (h!8273 tokens!465))))))

(declare-fun bs!16401 () Bool)

(assert (= bs!16401 d!42346))

(declare-fun m!164657 () Bool)

(assert (=> bs!16401 m!164657))

(assert (=> b!168710 d!42346))

(declare-fun d!42348 () Bool)

(declare-fun dynLambda!1075 (Int Token!770) Bool)

(assert (=> d!42348 (dynLambda!1075 lambda!4752 (h!8273 tokens!465))))

(declare-fun lt!53179 () Unit!2486)

(declare-fun choose!1826 (List!2886 Int Token!770) Unit!2486)

(assert (=> d!42348 (= lt!53179 (choose!1826 tokens!465 lambda!4752 (h!8273 tokens!465)))))

(declare-fun e!102219 () Bool)

(assert (=> d!42348 e!102219))

(declare-fun res!76411 () Bool)

(assert (=> d!42348 (=> (not res!76411) (not e!102219))))

(assert (=> d!42348 (= res!76411 (forall!555 tokens!465 lambda!4752))))

(assert (=> d!42348 (= (forallContained!80 tokens!465 lambda!4752 (h!8273 tokens!465)) lt!53179)))

(declare-fun b!169076 () Bool)

(declare-fun contains!461 (List!2886 Token!770) Bool)

(assert (=> b!169076 (= e!102219 (contains!461 tokens!465 (h!8273 tokens!465)))))

(assert (= (and d!42348 res!76411) b!169076))

(declare-fun b_lambda!3771 () Bool)

(assert (=> (not b_lambda!3771) (not d!42348)))

(declare-fun m!164659 () Bool)

(assert (=> d!42348 m!164659))

(declare-fun m!164661 () Bool)

(assert (=> d!42348 m!164661))

(declare-fun m!164663 () Bool)

(assert (=> d!42348 m!164663))

(declare-fun m!164665 () Bool)

(assert (=> b!169076 m!164665))

(assert (=> b!168710 d!42348))

(declare-fun d!42350 () Bool)

(assert (=> d!42350 (= (isEmpty!1202 rules!1920) ((_ is Nil!2875) rules!1920))))

(assert (=> b!168721 d!42350))

(declare-fun d!42352 () Bool)

(declare-fun res!76430 () Bool)

(declare-fun e!102226 () Bool)

(assert (=> d!42352 (=> (not res!76430) (not e!102226))))

(declare-fun isEmpty!1211 (List!2884) Bool)

(assert (=> d!42352 (= res!76430 (not (isEmpty!1211 (originalCharacters!556 (h!8273 tokens!465)))))))

(assert (=> d!42352 (= (inv!3701 (h!8273 tokens!465)) e!102226)))

(declare-fun b!169095 () Bool)

(declare-fun res!76431 () Bool)

(assert (=> b!169095 (=> (not res!76431) (not e!102226))))

(assert (=> b!169095 (= res!76431 (= (originalCharacters!556 (h!8273 tokens!465)) (list!1043 (dynLambda!1074 (toChars!1035 (transformation!513 (rule!1020 (h!8273 tokens!465)))) (value!18936 (h!8273 tokens!465))))))))

(declare-fun b!169096 () Bool)

(assert (=> b!169096 (= e!102226 (= (size!2389 (h!8273 tokens!465)) (size!2394 (originalCharacters!556 (h!8273 tokens!465)))))))

(assert (= (and d!42352 res!76430) b!169095))

(assert (= (and b!169095 res!76431) b!169096))

(declare-fun b_lambda!3773 () Bool)

(assert (=> (not b_lambda!3773) (not b!169095)))

(assert (=> b!169095 t!26963))

(declare-fun b_and!11015 () Bool)

(assert (= b_and!11003 (and (=> t!26963 result!9292) b_and!11015)))

(assert (=> b!169095 t!26965))

(declare-fun b_and!11017 () Bool)

(assert (= b_and!11005 (and (=> t!26965 result!9294) b_and!11017)))

(assert (=> b!169095 t!26967))

(declare-fun b_and!11019 () Bool)

(assert (= b_and!11007 (and (=> t!26967 result!9296) b_and!11019)))

(declare-fun m!164667 () Bool)

(assert (=> d!42352 m!164667))

(assert (=> b!169095 m!164483))

(assert (=> b!169095 m!164483))

(declare-fun m!164669 () Bool)

(assert (=> b!169095 m!164669))

(declare-fun m!164671 () Bool)

(assert (=> b!169096 m!164671))

(assert (=> b!168720 d!42352))

(declare-fun d!42354 () Bool)

(assert (=> d!42354 (= (inv!3697 (tag!691 (h!8272 rules!1920))) (= (mod (str.len (value!18935 (tag!691 (h!8272 rules!1920)))) 2) 0))))

(assert (=> b!168699 d!42354))

(declare-fun d!42356 () Bool)

(declare-fun res!76432 () Bool)

(declare-fun e!102227 () Bool)

(assert (=> d!42356 (=> (not res!76432) (not e!102227))))

(assert (=> d!42356 (= res!76432 (semiInverseModEq!177 (toChars!1035 (transformation!513 (h!8272 rules!1920))) (toValue!1176 (transformation!513 (h!8272 rules!1920)))))))

(assert (=> d!42356 (= (inv!3700 (transformation!513 (h!8272 rules!1920))) e!102227)))

(declare-fun b!169097 () Bool)

(assert (=> b!169097 (= e!102227 (equivClasses!160 (toChars!1035 (transformation!513 (h!8272 rules!1920))) (toValue!1176 (transformation!513 (h!8272 rules!1920)))))))

(assert (= (and d!42356 res!76432) b!169097))

(declare-fun m!164673 () Bool)

(assert (=> d!42356 m!164673))

(declare-fun m!164675 () Bool)

(assert (=> b!169097 m!164675))

(assert (=> b!168699 d!42356))

(declare-fun d!42358 () Bool)

(declare-fun res!76444 () Bool)

(declare-fun e!102235 () Bool)

(assert (=> d!42358 (=> res!76444 e!102235)))

(assert (=> d!42358 (= res!76444 ((_ is Nil!2876) tokens!465))))

(assert (=> d!42358 (= (forall!555 tokens!465 lambda!4751) e!102235)))

(declare-fun b!169111 () Bool)

(declare-fun e!102236 () Bool)

(assert (=> b!169111 (= e!102235 e!102236)))

(declare-fun res!76445 () Bool)

(assert (=> b!169111 (=> (not res!76445) (not e!102236))))

(assert (=> b!169111 (= res!76445 (dynLambda!1075 lambda!4751 (h!8273 tokens!465)))))

(declare-fun b!169112 () Bool)

(assert (=> b!169112 (= e!102236 (forall!555 (t!26940 tokens!465) lambda!4751))))

(assert (= (and d!42358 (not res!76444)) b!169111))

(assert (= (and b!169111 res!76445) b!169112))

(declare-fun b_lambda!3775 () Bool)

(assert (=> (not b_lambda!3775) (not b!169111)))

(declare-fun m!164677 () Bool)

(assert (=> b!169111 m!164677))

(declare-fun m!164679 () Bool)

(assert (=> b!169112 m!164679))

(assert (=> b!168701 d!42358))

(declare-fun bs!16402 () Bool)

(declare-fun d!42360 () Bool)

(assert (= bs!16402 (and d!42360 d!42270)))

(declare-fun lambda!4780 () Int)

(assert (=> bs!16402 (not (= lambda!4780 lambda!4769))))

(declare-fun bs!16403 () Bool)

(assert (= bs!16403 (and d!42360 b!168710)))

(assert (=> bs!16403 (= lambda!4780 lambda!4752)))

(declare-fun bs!16404 () Bool)

(assert (= bs!16404 (and d!42360 b!168835)))

(assert (=> bs!16404 (= lambda!4780 lambda!4761)))

(declare-fun bs!16405 () Bool)

(assert (= bs!16405 (and d!42360 b!168701)))

(assert (=> bs!16405 (not (= lambda!4780 lambda!4751))))

(declare-fun bs!16406 () Bool)

(assert (= bs!16406 (and d!42360 b!168929)))

(assert (=> bs!16406 (= lambda!4780 lambda!4770)))

(declare-fun b!169121 () Bool)

(declare-fun e!102246 () Bool)

(assert (=> b!169121 (= e!102246 true)))

(declare-fun b!169120 () Bool)

(declare-fun e!102245 () Bool)

(assert (=> b!169120 (= e!102245 e!102246)))

(declare-fun b!169119 () Bool)

(declare-fun e!102244 () Bool)

(assert (=> b!169119 (= e!102244 e!102245)))

(assert (=> d!42360 e!102244))

(assert (= b!169120 b!169121))

(assert (= b!169119 b!169120))

(assert (= (and d!42360 ((_ is Cons!2875) rules!1920)) b!169119))

(assert (=> b!169121 (< (dynLambda!1069 order!1537 (toValue!1176 (transformation!513 (h!8272 rules!1920)))) (dynLambda!1070 order!1539 lambda!4780))))

(assert (=> b!169121 (< (dynLambda!1071 order!1541 (toChars!1035 (transformation!513 (h!8272 rules!1920)))) (dynLambda!1070 order!1539 lambda!4780))))

(assert (=> d!42360 true))

(declare-fun e!102243 () Bool)

(assert (=> d!42360 e!102243))

(declare-fun res!76452 () Bool)

(assert (=> d!42360 (=> (not res!76452) (not e!102243))))

(declare-fun lt!53189 () Bool)

(assert (=> d!42360 (= res!76452 (= lt!53189 (forall!555 (list!1046 lt!52894) lambda!4780)))))

(declare-fun forall!558 (BalanceConc!1706 Int) Bool)

(assert (=> d!42360 (= lt!53189 (forall!558 lt!52894 lambda!4780))))

(assert (=> d!42360 (not (isEmpty!1202 rules!1920))))

(assert (=> d!42360 (= (rulesProduceEachTokenIndividually!191 thiss!17480 rules!1920 lt!52894) lt!53189)))

(declare-fun b!169118 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!109 (LexerInterface!399 List!2885 List!2886) Bool)

(assert (=> b!169118 (= e!102243 (= lt!53189 (rulesProduceEachTokenIndividuallyList!109 thiss!17480 rules!1920 (list!1046 lt!52894))))))

(assert (= (and d!42360 res!76452) b!169118))

(declare-fun m!164723 () Bool)

(assert (=> d!42360 m!164723))

(assert (=> d!42360 m!164723))

(declare-fun m!164725 () Bool)

(assert (=> d!42360 m!164725))

(declare-fun m!164727 () Bool)

(assert (=> d!42360 m!164727))

(assert (=> d!42360 m!164059))

(assert (=> b!169118 m!164723))

(assert (=> b!169118 m!164723))

(declare-fun m!164729 () Bool)

(assert (=> b!169118 m!164729))

(assert (=> b!168700 d!42360))

(declare-fun d!42366 () Bool)

(assert (=> d!42366 (= (seqFromList!403 tokens!465) (fromListB!159 tokens!465))))

(declare-fun bs!16407 () Bool)

(assert (= bs!16407 d!42366))

(declare-fun m!164731 () Bool)

(assert (=> bs!16407 m!164731))

(assert (=> b!168700 d!42366))

(declare-fun b!169138 () Bool)

(declare-fun res!76456 () Bool)

(declare-fun e!102258 () Bool)

(assert (=> b!169138 (=> res!76456 e!102258)))

(assert (=> b!169138 (= res!76456 (not ((_ is IntegerValue!1607) (value!18936 (h!8273 tokens!465)))))))

(declare-fun e!102257 () Bool)

(assert (=> b!169138 (= e!102257 e!102258)))

(declare-fun d!42368 () Bool)

(declare-fun c!33624 () Bool)

(assert (=> d!42368 (= c!33624 ((_ is IntegerValue!1605) (value!18936 (h!8273 tokens!465))))))

(declare-fun e!102259 () Bool)

(assert (=> d!42368 (= (inv!21 (value!18936 (h!8273 tokens!465))) e!102259)))

(declare-fun b!169139 () Bool)

(declare-fun inv!17 (TokenValue!535) Bool)

(assert (=> b!169139 (= e!102257 (inv!17 (value!18936 (h!8273 tokens!465))))))

(declare-fun b!169140 () Bool)

(assert (=> b!169140 (= e!102259 e!102257)))

(declare-fun c!33623 () Bool)

(assert (=> b!169140 (= c!33623 ((_ is IntegerValue!1606) (value!18936 (h!8273 tokens!465))))))

(declare-fun b!169141 () Bool)

(declare-fun inv!16 (TokenValue!535) Bool)

(assert (=> b!169141 (= e!102259 (inv!16 (value!18936 (h!8273 tokens!465))))))

(declare-fun b!169142 () Bool)

(declare-fun inv!15 (TokenValue!535) Bool)

(assert (=> b!169142 (= e!102258 (inv!15 (value!18936 (h!8273 tokens!465))))))

(assert (= (and d!42368 c!33624) b!169141))

(assert (= (and d!42368 (not c!33624)) b!169140))

(assert (= (and b!169140 c!33623) b!169139))

(assert (= (and b!169140 (not c!33623)) b!169138))

(assert (= (and b!169138 (not res!76456)) b!169142))

(declare-fun m!164739 () Bool)

(assert (=> b!169139 m!164739))

(declare-fun m!164741 () Bool)

(assert (=> b!169141 m!164741))

(declare-fun m!164743 () Bool)

(assert (=> b!169142 m!164743))

(assert (=> b!168702 d!42368))

(declare-fun d!42372 () Bool)

(declare-fun lt!53194 () Bool)

(declare-fun isEmpty!1212 (List!2886) Bool)

(assert (=> d!42372 (= lt!53194 (isEmpty!1212 (list!1046 (_1!1597 (lex!199 thiss!17480 rules!1920 (seqFromList!404 lt!52897))))))))

(declare-fun isEmpty!1213 (Conc!849) Bool)

(assert (=> d!42372 (= lt!53194 (isEmpty!1213 (c!33534 (_1!1597 (lex!199 thiss!17480 rules!1920 (seqFromList!404 lt!52897))))))))

(assert (=> d!42372 (= (isEmpty!1201 (_1!1597 (lex!199 thiss!17480 rules!1920 (seqFromList!404 lt!52897)))) lt!53194)))

(declare-fun bs!16416 () Bool)

(assert (= bs!16416 d!42372))

(declare-fun m!164761 () Bool)

(assert (=> bs!16416 m!164761))

(assert (=> bs!16416 m!164761))

(declare-fun m!164763 () Bool)

(assert (=> bs!16416 m!164763))

(declare-fun m!164765 () Bool)

(assert (=> bs!16416 m!164765))

(assert (=> b!168713 d!42372))

(declare-fun b!169262 () Bool)

(declare-fun lt!53227 () tuple2!2762)

(declare-fun e!102344 () Bool)

(declare-datatypes ((tuple2!2766 0))(
  ( (tuple2!2767 (_1!1599 List!2886) (_2!1599 List!2884)) )
))
(declare-fun lexList!111 (LexerInterface!399 List!2885 List!2884) tuple2!2766)

(assert (=> b!169262 (= e!102344 (= (list!1043 (_2!1597 lt!53227)) (_2!1599 (lexList!111 thiss!17480 rules!1920 (list!1043 (seqFromList!404 lt!52897))))))))

(declare-fun b!169263 () Bool)

(declare-fun e!102343 () Bool)

(assert (=> b!169263 (= e!102343 (not (isEmpty!1201 (_1!1597 lt!53227))))))

(declare-fun b!169264 () Bool)

(declare-fun e!102345 () Bool)

(assert (=> b!169264 (= e!102345 (= (_2!1597 lt!53227) (seqFromList!404 lt!52897)))))

(declare-fun b!169265 () Bool)

(declare-fun res!76483 () Bool)

(assert (=> b!169265 (=> (not res!76483) (not e!102344))))

(assert (=> b!169265 (= res!76483 (= (list!1046 (_1!1597 lt!53227)) (_1!1599 (lexList!111 thiss!17480 rules!1920 (list!1043 (seqFromList!404 lt!52897))))))))

(declare-fun d!42382 () Bool)

(assert (=> d!42382 e!102344))

(declare-fun res!76484 () Bool)

(assert (=> d!42382 (=> (not res!76484) (not e!102344))))

(assert (=> d!42382 (= res!76484 e!102345)))

(declare-fun c!33641 () Bool)

(assert (=> d!42382 (= c!33641 (> (size!2393 (_1!1597 lt!53227)) 0))))

(declare-fun lexTailRecV2!98 (LexerInterface!399 List!2885 BalanceConc!1704 BalanceConc!1704 BalanceConc!1704 BalanceConc!1706) tuple2!2762)

(assert (=> d!42382 (= lt!53227 (lexTailRecV2!98 thiss!17480 rules!1920 (seqFromList!404 lt!52897) (BalanceConc!1705 Empty!848) (seqFromList!404 lt!52897) (BalanceConc!1707 Empty!849)))))

(assert (=> d!42382 (= (lex!199 thiss!17480 rules!1920 (seqFromList!404 lt!52897)) lt!53227)))

(declare-fun b!169266 () Bool)

(assert (=> b!169266 (= e!102345 e!102343)))

(declare-fun res!76482 () Bool)

(declare-fun size!2395 (BalanceConc!1704) Int)

(assert (=> b!169266 (= res!76482 (< (size!2395 (_2!1597 lt!53227)) (size!2395 (seqFromList!404 lt!52897))))))

(assert (=> b!169266 (=> (not res!76482) (not e!102343))))

(assert (= (and d!42382 c!33641) b!169266))

(assert (= (and d!42382 (not c!33641)) b!169264))

(assert (= (and b!169266 res!76482) b!169263))

(assert (= (and d!42382 res!76484) b!169265))

(assert (= (and b!169265 res!76483) b!169262))

(declare-fun m!164919 () Bool)

(assert (=> b!169263 m!164919))

(declare-fun m!164921 () Bool)

(assert (=> d!42382 m!164921))

(assert (=> d!42382 m!164093))

(assert (=> d!42382 m!164093))

(declare-fun m!164923 () Bool)

(assert (=> d!42382 m!164923))

(declare-fun m!164925 () Bool)

(assert (=> b!169265 m!164925))

(assert (=> b!169265 m!164093))

(declare-fun m!164927 () Bool)

(assert (=> b!169265 m!164927))

(assert (=> b!169265 m!164927))

(declare-fun m!164929 () Bool)

(assert (=> b!169265 m!164929))

(declare-fun m!164931 () Bool)

(assert (=> b!169262 m!164931))

(assert (=> b!169262 m!164093))

(assert (=> b!169262 m!164927))

(assert (=> b!169262 m!164927))

(assert (=> b!169262 m!164929))

(declare-fun m!164933 () Bool)

(assert (=> b!169266 m!164933))

(assert (=> b!169266 m!164093))

(declare-fun m!164935 () Bool)

(assert (=> b!169266 m!164935))

(assert (=> b!168713 d!42382))

(declare-fun d!42414 () Bool)

(assert (=> d!42414 (= (seqFromList!404 lt!52897) (fromListB!161 lt!52897))))

(declare-fun bs!16443 () Bool)

(assert (= bs!16443 d!42414))

(declare-fun m!164937 () Bool)

(assert (=> bs!16443 m!164937))

(assert (=> b!168713 d!42414))

(declare-fun d!42416 () Bool)

(assert (=> d!42416 true))

(declare-fun lt!53230 () Bool)

(declare-fun lambda!4789 () Int)

(declare-fun forall!559 (List!2885 Int) Bool)

(assert (=> d!42416 (= lt!53230 (forall!559 rules!1920 lambda!4789))))

(declare-fun e!102351 () Bool)

(assert (=> d!42416 (= lt!53230 e!102351)))

(declare-fun res!76490 () Bool)

(assert (=> d!42416 (=> res!76490 e!102351)))

(assert (=> d!42416 (= res!76490 (not ((_ is Cons!2875) rules!1920)))))

(assert (=> d!42416 (= (rulesValidInductive!116 thiss!17480 rules!1920) lt!53230)))

(declare-fun b!169271 () Bool)

(declare-fun e!102350 () Bool)

(assert (=> b!169271 (= e!102351 e!102350)))

(declare-fun res!76489 () Bool)

(assert (=> b!169271 (=> (not res!76489) (not e!102350))))

(declare-fun ruleValid!54 (LexerInterface!399 Rule!826) Bool)

(assert (=> b!169271 (= res!76489 (ruleValid!54 thiss!17480 (h!8272 rules!1920)))))

(declare-fun b!169272 () Bool)

(assert (=> b!169272 (= e!102350 (rulesValidInductive!116 thiss!17480 (t!26939 rules!1920)))))

(assert (= (and d!42416 (not res!76490)) b!169271))

(assert (= (and b!169271 res!76489) b!169272))

(declare-fun m!164939 () Bool)

(assert (=> d!42416 m!164939))

(declare-fun m!164941 () Bool)

(assert (=> b!169271 m!164941))

(declare-fun m!164943 () Bool)

(assert (=> b!169272 m!164943))

(assert (=> b!168712 d!42416))

(declare-fun d!42418 () Bool)

(declare-fun isEmpty!1214 (Option!301) Bool)

(assert (=> d!42418 (= (isDefined!152 (maxPrefix!129 thiss!17480 rules!1920 lt!52897)) (not (isEmpty!1214 (maxPrefix!129 thiss!17480 rules!1920 lt!52897))))))

(declare-fun bs!16444 () Bool)

(assert (= bs!16444 d!42418))

(assert (=> bs!16444 m!164073))

(declare-fun m!164945 () Bool)

(assert (=> bs!16444 m!164945))

(assert (=> b!168712 d!42418))

(declare-fun b!169293 () Bool)

(declare-fun res!76508 () Bool)

(declare-fun e!102358 () Bool)

(assert (=> b!169293 (=> (not res!76508) (not e!102358))))

(declare-fun lt!53242 () Option!301)

(assert (=> b!169293 (= res!76508 (< (size!2394 (_2!1596 (get!786 lt!53242))) (size!2394 lt!52897)))))

(declare-fun b!169294 () Bool)

(declare-fun res!76509 () Bool)

(assert (=> b!169294 (=> (not res!76509) (not e!102358))))

(declare-fun matchR!81 (Regex!737 List!2884) Bool)

(assert (=> b!169294 (= res!76509 (matchR!81 (regex!513 (rule!1020 (_1!1596 (get!786 lt!53242)))) (list!1043 (charsOf!168 (_1!1596 (get!786 lt!53242))))))))

(declare-fun b!169295 () Bool)

(declare-fun res!76510 () Bool)

(assert (=> b!169295 (=> (not res!76510) (not e!102358))))

(assert (=> b!169295 (= res!76510 (= (list!1043 (charsOf!168 (_1!1596 (get!786 lt!53242)))) (originalCharacters!556 (_1!1596 (get!786 lt!53242)))))))

(declare-fun bm!7347 () Bool)

(declare-fun call!7352 () Option!301)

(declare-fun maxPrefixOneRule!69 (LexerInterface!399 Rule!826 List!2884) Option!301)

(assert (=> bm!7347 (= call!7352 (maxPrefixOneRule!69 thiss!17480 (h!8272 rules!1920) lt!52897))))

(declare-fun b!169296 () Bool)

(declare-fun res!76505 () Bool)

(assert (=> b!169296 (=> (not res!76505) (not e!102358))))

(assert (=> b!169296 (= res!76505 (= (++!656 (list!1043 (charsOf!168 (_1!1596 (get!786 lt!53242)))) (_2!1596 (get!786 lt!53242))) lt!52897))))

(declare-fun b!169297 () Bool)

(declare-fun e!102359 () Bool)

(assert (=> b!169297 (= e!102359 e!102358)))

(declare-fun res!76511 () Bool)

(assert (=> b!169297 (=> (not res!76511) (not e!102358))))

(assert (=> b!169297 (= res!76511 (isDefined!152 lt!53242))))

(declare-fun b!169298 () Bool)

(declare-fun res!76507 () Bool)

(assert (=> b!169298 (=> (not res!76507) (not e!102358))))

(declare-fun apply!412 (TokenValueInjection!842 BalanceConc!1704) TokenValue!535)

(assert (=> b!169298 (= res!76507 (= (value!18936 (_1!1596 (get!786 lt!53242))) (apply!412 (transformation!513 (rule!1020 (_1!1596 (get!786 lt!53242)))) (seqFromList!404 (originalCharacters!556 (_1!1596 (get!786 lt!53242)))))))))

(declare-fun b!169299 () Bool)

(declare-fun contains!462 (List!2885 Rule!826) Bool)

(assert (=> b!169299 (= e!102358 (contains!462 rules!1920 (rule!1020 (_1!1596 (get!786 lt!53242)))))))

(declare-fun d!42420 () Bool)

(assert (=> d!42420 e!102359))

(declare-fun res!76506 () Bool)

(assert (=> d!42420 (=> res!76506 e!102359)))

(assert (=> d!42420 (= res!76506 (isEmpty!1214 lt!53242))))

(declare-fun e!102360 () Option!301)

(assert (=> d!42420 (= lt!53242 e!102360)))

(declare-fun c!33644 () Bool)

(assert (=> d!42420 (= c!33644 (and ((_ is Cons!2875) rules!1920) ((_ is Nil!2875) (t!26939 rules!1920))))))

(declare-fun lt!53241 () Unit!2486)

(declare-fun lt!53244 () Unit!2486)

(assert (=> d!42420 (= lt!53241 lt!53244)))

(assert (=> d!42420 (isPrefix!227 lt!52897 lt!52897)))

(assert (=> d!42420 (= lt!53244 (lemmaIsPrefixRefl!135 lt!52897 lt!52897))))

(assert (=> d!42420 (rulesValidInductive!116 thiss!17480 rules!1920)))

(assert (=> d!42420 (= (maxPrefix!129 thiss!17480 rules!1920 lt!52897) lt!53242)))

(declare-fun b!169300 () Bool)

(declare-fun lt!53245 () Option!301)

(declare-fun lt!53243 () Option!301)

(assert (=> b!169300 (= e!102360 (ite (and ((_ is None!300) lt!53245) ((_ is None!300) lt!53243)) None!300 (ite ((_ is None!300) lt!53243) lt!53245 (ite ((_ is None!300) lt!53245) lt!53243 (ite (>= (size!2389 (_1!1596 (v!13731 lt!53245))) (size!2389 (_1!1596 (v!13731 lt!53243)))) lt!53245 lt!53243)))))))

(assert (=> b!169300 (= lt!53245 call!7352)))

(assert (=> b!169300 (= lt!53243 (maxPrefix!129 thiss!17480 (t!26939 rules!1920) lt!52897))))

(declare-fun b!169301 () Bool)

(assert (=> b!169301 (= e!102360 call!7352)))

(assert (= (and d!42420 c!33644) b!169301))

(assert (= (and d!42420 (not c!33644)) b!169300))

(assert (= (or b!169301 b!169300) bm!7347))

(assert (= (and d!42420 (not res!76506)) b!169297))

(assert (= (and b!169297 res!76511) b!169295))

(assert (= (and b!169295 res!76510) b!169293))

(assert (= (and b!169293 res!76508) b!169296))

(assert (= (and b!169296 res!76505) b!169298))

(assert (= (and b!169298 res!76507) b!169294))

(assert (= (and b!169294 res!76509) b!169299))

(declare-fun m!164947 () Bool)

(assert (=> b!169298 m!164947))

(declare-fun m!164949 () Bool)

(assert (=> b!169298 m!164949))

(assert (=> b!169298 m!164949))

(declare-fun m!164951 () Bool)

(assert (=> b!169298 m!164951))

(declare-fun m!164953 () Bool)

(assert (=> bm!7347 m!164953))

(assert (=> b!169296 m!164947))

(declare-fun m!164955 () Bool)

(assert (=> b!169296 m!164955))

(assert (=> b!169296 m!164955))

(declare-fun m!164957 () Bool)

(assert (=> b!169296 m!164957))

(assert (=> b!169296 m!164957))

(declare-fun m!164959 () Bool)

(assert (=> b!169296 m!164959))

(assert (=> b!169294 m!164947))

(assert (=> b!169294 m!164955))

(assert (=> b!169294 m!164955))

(assert (=> b!169294 m!164957))

(assert (=> b!169294 m!164957))

(declare-fun m!164961 () Bool)

(assert (=> b!169294 m!164961))

(assert (=> b!169299 m!164947))

(declare-fun m!164963 () Bool)

(assert (=> b!169299 m!164963))

(declare-fun m!164965 () Bool)

(assert (=> d!42420 m!164965))

(declare-fun m!164967 () Bool)

(assert (=> d!42420 m!164967))

(declare-fun m!164969 () Bool)

(assert (=> d!42420 m!164969))

(assert (=> d!42420 m!164071))

(declare-fun m!164971 () Bool)

(assert (=> b!169300 m!164971))

(assert (=> b!169293 m!164947))

(declare-fun m!164973 () Bool)

(assert (=> b!169293 m!164973))

(assert (=> b!169293 m!164185))

(declare-fun m!164975 () Bool)

(assert (=> b!169297 m!164975))

(assert (=> b!169295 m!164947))

(assert (=> b!169295 m!164955))

(assert (=> b!169295 m!164955))

(assert (=> b!169295 m!164957))

(assert (=> b!168712 d!42420))

(declare-fun d!42422 () Bool)

(assert (=> d!42422 (= (list!1043 (seqFromList!404 lt!52902)) (list!1047 (c!33532 (seqFromList!404 lt!52902))))))

(declare-fun bs!16445 () Bool)

(assert (= bs!16445 d!42422))

(declare-fun m!164977 () Bool)

(assert (=> bs!16445 m!164977))

(assert (=> b!168714 d!42422))

(declare-fun d!42424 () Bool)

(assert (=> d!42424 (= (seqFromList!404 lt!52902) (fromListB!161 lt!52902))))

(declare-fun bs!16446 () Bool)

(assert (= bs!16446 d!42424))

(declare-fun m!164979 () Bool)

(assert (=> bs!16446 m!164979))

(assert (=> b!168714 d!42424))

(declare-fun d!42426 () Bool)

(declare-fun res!76514 () Bool)

(declare-fun e!102363 () Bool)

(assert (=> d!42426 (=> (not res!76514) (not e!102363))))

(declare-fun rulesValid!143 (LexerInterface!399 List!2885) Bool)

(assert (=> d!42426 (= res!76514 (rulesValid!143 thiss!17480 rules!1920))))

(assert (=> d!42426 (= (rulesInvariant!365 thiss!17480 rules!1920) e!102363)))

(declare-fun b!169304 () Bool)

(declare-datatypes ((List!2888 0))(
  ( (Nil!2878) (Cons!2878 (h!8275 String!3755) (t!27006 List!2888)) )
))
(declare-fun noDuplicateTag!143 (LexerInterface!399 List!2885 List!2888) Bool)

(assert (=> b!169304 (= e!102363 (noDuplicateTag!143 thiss!17480 rules!1920 Nil!2878))))

(assert (= (and d!42426 res!76514) b!169304))

(declare-fun m!164981 () Bool)

(assert (=> d!42426 m!164981))

(declare-fun m!164983 () Bool)

(assert (=> b!169304 m!164983))

(assert (=> b!168703 d!42426))

(declare-fun d!42428 () Bool)

(assert (=> d!42428 (= (inv!3697 (tag!691 (rule!1020 (h!8273 tokens!465)))) (= (mod (str.len (value!18935 (tag!691 (rule!1020 (h!8273 tokens!465))))) 2) 0))))

(assert (=> b!168694 d!42428))

(declare-fun d!42430 () Bool)

(declare-fun res!76515 () Bool)

(declare-fun e!102364 () Bool)

(assert (=> d!42430 (=> (not res!76515) (not e!102364))))

(assert (=> d!42430 (= res!76515 (semiInverseModEq!177 (toChars!1035 (transformation!513 (rule!1020 (h!8273 tokens!465)))) (toValue!1176 (transformation!513 (rule!1020 (h!8273 tokens!465))))))))

(assert (=> d!42430 (= (inv!3700 (transformation!513 (rule!1020 (h!8273 tokens!465)))) e!102364)))

(declare-fun b!169305 () Bool)

(assert (=> b!169305 (= e!102364 (equivClasses!160 (toChars!1035 (transformation!513 (rule!1020 (h!8273 tokens!465)))) (toValue!1176 (transformation!513 (rule!1020 (h!8273 tokens!465))))))))

(assert (= (and d!42430 res!76515) b!169305))

(declare-fun m!164985 () Bool)

(assert (=> d!42430 m!164985))

(declare-fun m!164987 () Bool)

(assert (=> b!169305 m!164987))

(assert (=> b!168694 d!42430))

(declare-fun d!42432 () Bool)

(assert (=> d!42432 (= (list!1043 (printWithSeparatorTokenWhenNeededRec!82 thiss!17480 rules!1920 lt!52894 separatorToken!170 0)) (list!1047 (c!33532 (printWithSeparatorTokenWhenNeededRec!82 thiss!17480 rules!1920 lt!52894 separatorToken!170 0))))))

(declare-fun bs!16447 () Bool)

(assert (= bs!16447 d!42432))

(declare-fun m!164989 () Bool)

(assert (=> bs!16447 m!164989))

(assert (=> b!168705 d!42432))

(declare-fun bs!16448 () Bool)

(declare-fun d!42434 () Bool)

(assert (= bs!16448 (and d!42434 d!42270)))

(declare-fun lambda!4790 () Int)

(assert (=> bs!16448 (= lambda!4790 lambda!4769)))

(declare-fun bs!16449 () Bool)

(assert (= bs!16449 (and d!42434 d!42360)))

(assert (=> bs!16449 (not (= lambda!4790 lambda!4780))))

(declare-fun bs!16450 () Bool)

(assert (= bs!16450 (and d!42434 b!168710)))

(assert (=> bs!16450 (not (= lambda!4790 lambda!4752))))

(declare-fun bs!16451 () Bool)

(assert (= bs!16451 (and d!42434 b!168835)))

(assert (=> bs!16451 (not (= lambda!4790 lambda!4761))))

(declare-fun bs!16452 () Bool)

(assert (= bs!16452 (and d!42434 b!168701)))

(assert (=> bs!16452 (= lambda!4790 lambda!4751)))

(declare-fun bs!16453 () Bool)

(assert (= bs!16453 (and d!42434 b!168929)))

(assert (=> bs!16453 (not (= lambda!4790 lambda!4770))))

(declare-fun bs!16454 () Bool)

(declare-fun b!169308 () Bool)

(assert (= bs!16454 (and b!169308 d!42270)))

(declare-fun lambda!4791 () Int)

(assert (=> bs!16454 (not (= lambda!4791 lambda!4769))))

(declare-fun bs!16455 () Bool)

(assert (= bs!16455 (and b!169308 d!42360)))

(assert (=> bs!16455 (= lambda!4791 lambda!4780)))

(declare-fun bs!16456 () Bool)

(assert (= bs!16456 (and b!169308 b!168710)))

(assert (=> bs!16456 (= lambda!4791 lambda!4752)))

(declare-fun bs!16457 () Bool)

(assert (= bs!16457 (and b!169308 d!42434)))

(assert (=> bs!16457 (not (= lambda!4791 lambda!4790))))

(declare-fun bs!16458 () Bool)

(assert (= bs!16458 (and b!169308 b!168835)))

(assert (=> bs!16458 (= lambda!4791 lambda!4761)))

(declare-fun bs!16459 () Bool)

(assert (= bs!16459 (and b!169308 b!168701)))

(assert (=> bs!16459 (not (= lambda!4791 lambda!4751))))

(declare-fun bs!16460 () Bool)

(assert (= bs!16460 (and b!169308 b!168929)))

(assert (=> bs!16460 (= lambda!4791 lambda!4770)))

(declare-fun b!169317 () Bool)

(declare-fun e!102373 () Bool)

(assert (=> b!169317 (= e!102373 true)))

(declare-fun b!169316 () Bool)

(declare-fun e!102372 () Bool)

(assert (=> b!169316 (= e!102372 e!102373)))

(declare-fun b!169315 () Bool)

(declare-fun e!102371 () Bool)

(assert (=> b!169315 (= e!102371 e!102372)))

(assert (=> b!169308 e!102371))

(assert (= b!169316 b!169317))

(assert (= b!169315 b!169316))

(assert (= (and b!169308 ((_ is Cons!2875) rules!1920)) b!169315))

(assert (=> b!169317 (< (dynLambda!1069 order!1537 (toValue!1176 (transformation!513 (h!8272 rules!1920)))) (dynLambda!1070 order!1539 lambda!4791))))

(assert (=> b!169317 (< (dynLambda!1071 order!1541 (toChars!1035 (transformation!513 (h!8272 rules!1920)))) (dynLambda!1070 order!1539 lambda!4791))))

(assert (=> b!169308 true))

(declare-fun b!169306 () Bool)

(declare-fun e!102365 () Bool)

(assert (=> b!169306 (= e!102365 (<= 0 (size!2393 lt!52894)))))

(declare-fun bm!7348 () Bool)

(declare-fun call!7356 () Token!770)

(declare-fun call!7357 () Token!770)

(assert (=> bm!7348 (= call!7356 call!7357)))

(declare-fun b!169307 () Bool)

(declare-fun e!102367 () BalanceConc!1704)

(declare-fun call!7354 () BalanceConc!1704)

(declare-fun lt!53253 () BalanceConc!1704)

(assert (=> b!169307 (= e!102367 (++!658 call!7354 lt!53253))))

(declare-fun e!102368 () BalanceConc!1704)

(declare-fun e!102370 () BalanceConc!1704)

(assert (=> b!169308 (= e!102368 e!102370)))

(declare-fun lt!53258 () List!2886)

(assert (=> b!169308 (= lt!53258 (list!1046 lt!52894))))

(declare-fun lt!53250 () Unit!2486)

(assert (=> b!169308 (= lt!53250 (lemmaDropApply!126 lt!53258 0))))

(assert (=> b!169308 (= (head!600 (drop!139 lt!53258 0)) (apply!410 lt!53258 0))))

(declare-fun lt!53256 () Unit!2486)

(assert (=> b!169308 (= lt!53256 lt!53250)))

(declare-fun lt!53249 () List!2886)

(assert (=> b!169308 (= lt!53249 (list!1046 lt!52894))))

(declare-fun lt!53252 () Unit!2486)

(assert (=> b!169308 (= lt!53252 (lemmaDropTail!118 lt!53249 0))))

(assert (=> b!169308 (= (tail!340 (drop!139 lt!53249 0)) (drop!139 lt!53249 (+ 0 1)))))

(declare-fun lt!53257 () Unit!2486)

(assert (=> b!169308 (= lt!53257 lt!53252)))

(declare-fun lt!53248 () Unit!2486)

(assert (=> b!169308 (= lt!53248 (forallContained!80 (list!1046 lt!52894) lambda!4791 (apply!409 lt!52894 0)))))

(assert (=> b!169308 (= lt!53253 (printWithSeparatorTokenWhenNeededRec!82 thiss!17480 rules!1920 lt!52894 separatorToken!170 (+ 0 1)))))

(declare-fun lt!53247 () Option!300)

(assert (=> b!169308 (= lt!53247 (maxPrefixZipperSequence!92 thiss!17480 rules!1920 (++!658 (charsOf!168 (apply!409 lt!52894 0)) lt!53253)))))

(declare-fun res!76518 () Bool)

(assert (=> b!169308 (= res!76518 ((_ is Some!299) lt!53247))))

(declare-fun e!102366 () Bool)

(assert (=> b!169308 (=> (not res!76518) (not e!102366))))

(declare-fun c!33645 () Bool)

(assert (=> b!169308 (= c!33645 e!102366)))

(declare-fun lt!53255 () BalanceConc!1704)

(assert (=> d!42434 (= (list!1043 lt!53255) (printWithSeparatorTokenWhenNeededList!92 thiss!17480 rules!1920 (dropList!86 lt!52894 0) separatorToken!170))))

(assert (=> d!42434 (= lt!53255 e!102368)))

(declare-fun c!33647 () Bool)

(assert (=> d!42434 (= c!33647 (>= 0 (size!2393 lt!52894)))))

(declare-fun lt!53259 () Unit!2486)

(assert (=> d!42434 (= lt!53259 (lemmaContentSubsetPreservesForall!30 (list!1046 lt!52894) (dropList!86 lt!52894 0) lambda!4790))))

(assert (=> d!42434 e!102365))

(declare-fun res!76517 () Bool)

(assert (=> d!42434 (=> (not res!76517) (not e!102365))))

(assert (=> d!42434 (= res!76517 (>= 0 0))))

(assert (=> d!42434 (= (printWithSeparatorTokenWhenNeededRec!82 thiss!17480 rules!1920 lt!52894 separatorToken!170 0) lt!53255)))

(declare-fun b!169309 () Bool)

(assert (=> b!169309 (= e!102367 (BalanceConc!1705 Empty!848))))

(assert (=> b!169309 (= (print!130 thiss!17480 (singletonSeq!65 call!7356)) (printTailRec!93 thiss!17480 (singletonSeq!65 call!7356) 0 (BalanceConc!1705 Empty!848)))))

(declare-fun lt!53246 () Unit!2486)

(declare-fun Unit!2500 () Unit!2486)

(assert (=> b!169309 (= lt!53246 Unit!2500)))

(declare-fun lt!53254 () Unit!2486)

(declare-fun call!7355 () BalanceConc!1704)

(assert (=> b!169309 (= lt!53254 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!34 thiss!17480 rules!1920 (list!1043 call!7355) (list!1043 lt!53253)))))

(assert (=> b!169309 false))

(declare-fun lt!53251 () Unit!2486)

(declare-fun Unit!2501 () Unit!2486)

(assert (=> b!169309 (= lt!53251 Unit!2501)))

(declare-fun b!169310 () Bool)

(assert (=> b!169310 (= e!102366 (= (_1!1595 (v!13730 lt!53247)) (apply!409 lt!52894 0)))))

(declare-fun bm!7349 () Bool)

(declare-fun call!7353 () BalanceConc!1704)

(assert (=> bm!7349 (= call!7354 (++!658 call!7353 (ite c!33645 lt!53253 call!7355)))))

(declare-fun b!169311 () Bool)

(assert (=> b!169311 (= e!102370 call!7354)))

(declare-fun bm!7350 () Bool)

(declare-fun c!33646 () Bool)

(assert (=> bm!7350 (= call!7355 (charsOf!168 (ite c!33646 separatorToken!170 call!7356)))))

(declare-fun b!169312 () Bool)

(assert (=> b!169312 (= e!102368 (BalanceConc!1705 Empty!848))))

(declare-fun b!169313 () Bool)

(declare-fun e!102369 () Bool)

(assert (=> b!169313 (= e!102369 (not (= (_1!1595 (v!13730 lt!53247)) call!7357)))))

(declare-fun bm!7351 () Bool)

(assert (=> bm!7351 (= call!7357 (apply!409 lt!52894 0))))

(declare-fun b!169314 () Bool)

(assert (=> b!169314 (= c!33646 e!102369)))

(declare-fun res!76516 () Bool)

(assert (=> b!169314 (=> (not res!76516) (not e!102369))))

(assert (=> b!169314 (= res!76516 ((_ is Some!299) lt!53247))))

(assert (=> b!169314 (= e!102370 e!102367)))

(declare-fun bm!7352 () Bool)

(assert (=> bm!7352 (= call!7353 (charsOf!168 (ite c!33645 call!7357 call!7356)))))

(assert (= (and d!42434 res!76517) b!169306))

(assert (= (and d!42434 c!33647) b!169312))

(assert (= (and d!42434 (not c!33647)) b!169308))

(assert (= (and b!169308 res!76518) b!169310))

(assert (= (and b!169308 c!33645) b!169311))

(assert (= (and b!169308 (not c!33645)) b!169314))

(assert (= (and b!169314 res!76516) b!169313))

(assert (= (and b!169314 c!33646) b!169307))

(assert (= (and b!169314 (not c!33646)) b!169309))

(assert (= (or b!169307 b!169309) bm!7348))

(assert (= (or b!169307 b!169309) bm!7350))

(assert (= (or b!169311 bm!7348 b!169313) bm!7351))

(assert (= (or b!169311 b!169307) bm!7352))

(assert (= (or b!169311 b!169307) bm!7349))

(declare-fun m!164991 () Bool)

(assert (=> b!169306 m!164991))

(declare-fun m!164993 () Bool)

(assert (=> bm!7349 m!164993))

(declare-fun m!164995 () Bool)

(assert (=> bm!7351 m!164995))

(declare-fun m!164997 () Bool)

(assert (=> b!169307 m!164997))

(declare-fun m!164999 () Bool)

(assert (=> b!169309 m!164999))

(assert (=> b!169309 m!164999))

(declare-fun m!165001 () Bool)

(assert (=> b!169309 m!165001))

(declare-fun m!165003 () Bool)

(assert (=> b!169309 m!165003))

(assert (=> b!169309 m!164999))

(declare-fun m!165005 () Bool)

(assert (=> b!169309 m!165005))

(declare-fun m!165007 () Bool)

(assert (=> b!169309 m!165007))

(assert (=> b!169309 m!165003))

(declare-fun m!165009 () Bool)

(assert (=> b!169309 m!165009))

(assert (=> b!169309 m!165007))

(declare-fun m!165011 () Bool)

(assert (=> bm!7350 m!165011))

(assert (=> b!169310 m!164995))

(declare-fun m!165013 () Bool)

(assert (=> d!42434 m!165013))

(assert (=> d!42434 m!164723))

(declare-fun m!165015 () Bool)

(assert (=> d!42434 m!165015))

(declare-fun m!165017 () Bool)

(assert (=> d!42434 m!165017))

(assert (=> d!42434 m!165015))

(assert (=> d!42434 m!164991))

(assert (=> d!42434 m!164723))

(assert (=> d!42434 m!165015))

(declare-fun m!165019 () Bool)

(assert (=> d!42434 m!165019))

(declare-fun m!165021 () Bool)

(assert (=> bm!7352 m!165021))

(assert (=> b!169308 m!164723))

(assert (=> b!169308 m!164995))

(declare-fun m!165023 () Bool)

(assert (=> b!169308 m!165023))

(declare-fun m!165025 () Bool)

(assert (=> b!169308 m!165025))

(declare-fun m!165027 () Bool)

(assert (=> b!169308 m!165027))

(declare-fun m!165029 () Bool)

(assert (=> b!169308 m!165029))

(assert (=> b!169308 m!164723))

(declare-fun m!165031 () Bool)

(assert (=> b!169308 m!165031))

(declare-fun m!165033 () Bool)

(assert (=> b!169308 m!165033))

(declare-fun m!165035 () Bool)

(assert (=> b!169308 m!165035))

(assert (=> b!169308 m!164995))

(assert (=> b!169308 m!165025))

(declare-fun m!165037 () Bool)

(assert (=> b!169308 m!165037))

(declare-fun m!165039 () Bool)

(assert (=> b!169308 m!165039))

(declare-fun m!165041 () Bool)

(assert (=> b!169308 m!165041))

(assert (=> b!169308 m!165027))

(declare-fun m!165043 () Bool)

(assert (=> b!169308 m!165043))

(declare-fun m!165045 () Bool)

(assert (=> b!169308 m!165045))

(assert (=> b!169308 m!165033))

(declare-fun m!165047 () Bool)

(assert (=> b!169308 m!165047))

(assert (=> b!169308 m!164995))

(assert (=> b!169308 m!165031))

(assert (=> b!168705 d!42434))

(declare-fun bs!16461 () Bool)

(declare-fun b!169321 () Bool)

(assert (= bs!16461 (and b!169321 d!42270)))

(declare-fun lambda!4792 () Int)

(assert (=> bs!16461 (not (= lambda!4792 lambda!4769))))

(declare-fun bs!16462 () Bool)

(assert (= bs!16462 (and b!169321 d!42360)))

(assert (=> bs!16462 (= lambda!4792 lambda!4780)))

(declare-fun bs!16463 () Bool)

(assert (= bs!16463 (and b!169321 b!169308)))

(assert (=> bs!16463 (= lambda!4792 lambda!4791)))

(declare-fun bs!16464 () Bool)

(assert (= bs!16464 (and b!169321 b!168710)))

(assert (=> bs!16464 (= lambda!4792 lambda!4752)))

(declare-fun bs!16465 () Bool)

(assert (= bs!16465 (and b!169321 d!42434)))

(assert (=> bs!16465 (not (= lambda!4792 lambda!4790))))

(declare-fun bs!16466 () Bool)

(assert (= bs!16466 (and b!169321 b!168835)))

(assert (=> bs!16466 (= lambda!4792 lambda!4761)))

(declare-fun bs!16467 () Bool)

(assert (= bs!16467 (and b!169321 b!168701)))

(assert (=> bs!16467 (not (= lambda!4792 lambda!4751))))

(declare-fun bs!16468 () Bool)

(assert (= bs!16468 (and b!169321 b!168929)))

(assert (=> bs!16468 (= lambda!4792 lambda!4770)))

(declare-fun b!169328 () Bool)

(declare-fun e!102380 () Bool)

(assert (=> b!169328 (= e!102380 true)))

(declare-fun b!169327 () Bool)

(declare-fun e!102379 () Bool)

(assert (=> b!169327 (= e!102379 e!102380)))

(declare-fun b!169326 () Bool)

(declare-fun e!102378 () Bool)

(assert (=> b!169326 (= e!102378 e!102379)))

(assert (=> b!169321 e!102378))

(assert (= b!169327 b!169328))

(assert (= b!169326 b!169327))

(assert (= (and b!169321 ((_ is Cons!2875) rules!1920)) b!169326))

(assert (=> b!169328 (< (dynLambda!1069 order!1537 (toValue!1176 (transformation!513 (h!8272 rules!1920)))) (dynLambda!1070 order!1539 lambda!4792))))

(assert (=> b!169328 (< (dynLambda!1071 order!1541 (toChars!1035 (transformation!513 (h!8272 rules!1920)))) (dynLambda!1070 order!1539 lambda!4792))))

(assert (=> b!169321 true))

(declare-fun bm!7353 () Bool)

(declare-fun call!7361 () List!2884)

(declare-fun e!102374 () BalanceConc!1704)

(assert (=> bm!7353 (= call!7361 (list!1043 e!102374))))

(declare-fun c!33649 () Bool)

(declare-fun c!33650 () Bool)

(assert (=> bm!7353 (= c!33649 c!33650)))

(declare-fun b!169318 () Bool)

(declare-fun lt!53263 () Option!301)

(assert (=> b!169318 (= c!33650 (and ((_ is Some!300) lt!53263) (not (= (_1!1596 (v!13731 lt!53263)) (h!8273 tokens!465)))))))

(declare-fun e!102377 () List!2884)

(declare-fun e!102375 () List!2884)

(assert (=> b!169318 (= e!102377 e!102375)))

(declare-fun d!42436 () Bool)

(declare-fun c!33651 () Bool)

(assert (=> d!42436 (= c!33651 ((_ is Cons!2876) tokens!465))))

(declare-fun e!102376 () List!2884)

(assert (=> d!42436 (= (printWithSeparatorTokenWhenNeededList!92 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!102376)))

(declare-fun b!169319 () Bool)

(declare-fun call!7362 () BalanceConc!1704)

(assert (=> b!169319 (= e!102374 call!7362)))

(declare-fun b!169320 () Bool)

(declare-fun call!7360 () List!2884)

(assert (=> b!169320 (= e!102377 call!7360)))

(assert (=> b!169321 (= e!102376 e!102377)))

(declare-fun lt!53265 () Unit!2486)

(assert (=> b!169321 (= lt!53265 (forallContained!80 tokens!465 lambda!4792 (h!8273 tokens!465)))))

(declare-fun lt!53260 () List!2884)

(assert (=> b!169321 (= lt!53260 (printWithSeparatorTokenWhenNeededList!92 thiss!17480 rules!1920 (t!26940 tokens!465) separatorToken!170))))

(assert (=> b!169321 (= lt!53263 (maxPrefix!129 thiss!17480 rules!1920 (++!656 (list!1043 (charsOf!168 (h!8273 tokens!465))) lt!53260)))))

(declare-fun c!33648 () Bool)

(assert (=> b!169321 (= c!33648 (and ((_ is Some!300) lt!53263) (= (_1!1596 (v!13731 lt!53263)) (h!8273 tokens!465))))))

(declare-fun bm!7354 () Bool)

(declare-fun call!7359 () BalanceConc!1704)

(assert (=> bm!7354 (= call!7359 (charsOf!168 (h!8273 tokens!465)))))

(declare-fun b!169322 () Bool)

(assert (=> b!169322 (= e!102375 Nil!2874)))

(assert (=> b!169322 (= (print!130 thiss!17480 (singletonSeq!65 (h!8273 tokens!465))) (printTailRec!93 thiss!17480 (singletonSeq!65 (h!8273 tokens!465)) 0 (BalanceConc!1705 Empty!848)))))

(declare-fun lt!53261 () Unit!2486)

(declare-fun Unit!2502 () Unit!2486)

(assert (=> b!169322 (= lt!53261 Unit!2502)))

(declare-fun lt!53262 () Unit!2486)

(assert (=> b!169322 (= lt!53262 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!34 thiss!17480 rules!1920 call!7361 lt!53260))))

(assert (=> b!169322 false))

(declare-fun lt!53264 () Unit!2486)

(declare-fun Unit!2503 () Unit!2486)

(assert (=> b!169322 (= lt!53264 Unit!2503)))

(declare-fun bm!7355 () Bool)

(assert (=> bm!7355 (= call!7362 call!7359)))

(declare-fun b!169323 () Bool)

(assert (=> b!169323 (= e!102374 (charsOf!168 separatorToken!170))))

(declare-fun b!169324 () Bool)

(assert (=> b!169324 (= e!102375 (++!656 call!7360 lt!53260))))

(declare-fun bm!7356 () Bool)

(declare-fun call!7358 () List!2884)

(assert (=> bm!7356 (= call!7358 (list!1043 (ite c!33648 call!7359 call!7362)))))

(declare-fun bm!7357 () Bool)

(assert (=> bm!7357 (= call!7360 (++!656 call!7358 (ite c!33648 lt!53260 call!7361)))))

(declare-fun b!169325 () Bool)

(assert (=> b!169325 (= e!102376 Nil!2874)))

(assert (= (and d!42436 c!33651) b!169321))

(assert (= (and d!42436 (not c!33651)) b!169325))

(assert (= (and b!169321 c!33648) b!169320))

(assert (= (and b!169321 (not c!33648)) b!169318))

(assert (= (and b!169318 c!33650) b!169324))

(assert (= (and b!169318 (not c!33650)) b!169322))

(assert (= (or b!169324 b!169322) bm!7355))

(assert (= (or b!169324 b!169322) bm!7353))

(assert (= (and bm!7353 c!33649) b!169323))

(assert (= (and bm!7353 (not c!33649)) b!169319))

(assert (= (or b!169320 bm!7355) bm!7354))

(assert (= (or b!169320 b!169324) bm!7356))

(assert (= (or b!169320 b!169324) bm!7357))

(declare-fun m!165049 () Bool)

(assert (=> bm!7357 m!165049))

(assert (=> bm!7354 m!164049))

(declare-fun m!165051 () Bool)

(assert (=> bm!7353 m!165051))

(assert (=> b!169323 m!164037))

(declare-fun m!165053 () Bool)

(assert (=> b!169324 m!165053))

(declare-fun m!165055 () Bool)

(assert (=> bm!7356 m!165055))

(declare-fun m!165057 () Bool)

(assert (=> b!169321 m!165057))

(declare-fun m!165059 () Bool)

(assert (=> b!169321 m!165059))

(assert (=> b!169321 m!164035))

(declare-fun m!165061 () Bool)

(assert (=> b!169321 m!165061))

(assert (=> b!169321 m!164049))

(assert (=> b!169321 m!164055))

(assert (=> b!169321 m!165057))

(assert (=> b!169321 m!164049))

(assert (=> b!169321 m!164055))

(assert (=> b!169322 m!164015))

(assert (=> b!169322 m!164015))

(assert (=> b!169322 m!164135))

(assert (=> b!169322 m!164015))

(declare-fun m!165063 () Bool)

(assert (=> b!169322 m!165063))

(declare-fun m!165065 () Bool)

(assert (=> b!169322 m!165065))

(assert (=> b!168705 d!42436))

(declare-fun b!169329 () Bool)

(declare-fun e!102381 () List!2884)

(assert (=> b!169329 (= e!102381 lt!52898)))

(declare-fun b!169330 () Bool)

(assert (=> b!169330 (= e!102381 (Cons!2874 (h!8271 lt!52897) (++!656 (t!26938 lt!52897) lt!52898)))))

(declare-fun lt!53266 () List!2884)

(declare-fun e!102382 () Bool)

(declare-fun b!169332 () Bool)

(assert (=> b!169332 (= e!102382 (or (not (= lt!52898 Nil!2874)) (= lt!53266 lt!52897)))))

(declare-fun d!42438 () Bool)

(assert (=> d!42438 e!102382))

(declare-fun res!76520 () Bool)

(assert (=> d!42438 (=> (not res!76520) (not e!102382))))

(assert (=> d!42438 (= res!76520 (= (content!397 lt!53266) ((_ map or) (content!397 lt!52897) (content!397 lt!52898))))))

(assert (=> d!42438 (= lt!53266 e!102381)))

(declare-fun c!33652 () Bool)

(assert (=> d!42438 (= c!33652 ((_ is Nil!2874) lt!52897))))

(assert (=> d!42438 (= (++!656 lt!52897 lt!52898) lt!53266)))

(declare-fun b!169331 () Bool)

(declare-fun res!76519 () Bool)

(assert (=> b!169331 (=> (not res!76519) (not e!102382))))

(assert (=> b!169331 (= res!76519 (= (size!2394 lt!53266) (+ (size!2394 lt!52897) (size!2394 lt!52898))))))

(assert (= (and d!42438 c!33652) b!169329))

(assert (= (and d!42438 (not c!33652)) b!169330))

(assert (= (and d!42438 res!76520) b!169331))

(assert (= (and b!169331 res!76519) b!169332))

(declare-fun m!165067 () Bool)

(assert (=> b!169330 m!165067))

(declare-fun m!165069 () Bool)

(assert (=> d!42438 m!165069))

(assert (=> d!42438 m!164181))

(assert (=> d!42438 m!164159))

(declare-fun m!165071 () Bool)

(assert (=> b!169331 m!165071))

(assert (=> b!169331 m!164185))

(assert (=> b!169331 m!164165))

(assert (=> b!168704 d!42438))

(declare-fun d!42440 () Bool)

(declare-fun res!76521 () Bool)

(declare-fun e!102383 () Bool)

(assert (=> d!42440 (=> (not res!76521) (not e!102383))))

(assert (=> d!42440 (= res!76521 (not (isEmpty!1211 (originalCharacters!556 separatorToken!170))))))

(assert (=> d!42440 (= (inv!3701 separatorToken!170) e!102383)))

(declare-fun b!169333 () Bool)

(declare-fun res!76522 () Bool)

(assert (=> b!169333 (=> (not res!76522) (not e!102383))))

(assert (=> b!169333 (= res!76522 (= (originalCharacters!556 separatorToken!170) (list!1043 (dynLambda!1074 (toChars!1035 (transformation!513 (rule!1020 separatorToken!170))) (value!18936 separatorToken!170)))))))

(declare-fun b!169334 () Bool)

(assert (=> b!169334 (= e!102383 (= (size!2389 separatorToken!170) (size!2394 (originalCharacters!556 separatorToken!170))))))

(assert (= (and d!42440 res!76521) b!169333))

(assert (= (and b!169333 res!76522) b!169334))

(declare-fun b_lambda!3797 () Bool)

(assert (=> (not b_lambda!3797) (not b!169333)))

(assert (=> b!169333 t!26957))

(declare-fun b_and!11047 () Bool)

(assert (= b_and!11015 (and (=> t!26957 result!9284) b_and!11047)))

(assert (=> b!169333 t!26959))

(declare-fun b_and!11049 () Bool)

(assert (= b_and!11017 (and (=> t!26959 result!9288) b_and!11049)))

(assert (=> b!169333 t!26961))

(declare-fun b_and!11051 () Bool)

(assert (= b_and!11019 (and (=> t!26961 result!9290) b_and!11051)))

(declare-fun m!165073 () Bool)

(assert (=> d!42440 m!165073))

(assert (=> b!169333 m!164435))

(assert (=> b!169333 m!164435))

(declare-fun m!165075 () Bool)

(assert (=> b!169333 m!165075))

(declare-fun m!165077 () Bool)

(assert (=> b!169334 m!165077))

(assert (=> start!18202 d!42440))

(declare-fun d!42442 () Bool)

(declare-fun lt!53267 () Bool)

(declare-fun e!102384 () Bool)

(assert (=> d!42442 (= lt!53267 e!102384)))

(declare-fun res!76523 () Bool)

(assert (=> d!42442 (=> (not res!76523) (not e!102384))))

(assert (=> d!42442 (= res!76523 (= (list!1046 (_1!1597 (lex!199 thiss!17480 rules!1920 (print!130 thiss!17480 (singletonSeq!65 separatorToken!170))))) (list!1046 (singletonSeq!65 separatorToken!170))))))

(declare-fun e!102385 () Bool)

(assert (=> d!42442 (= lt!53267 e!102385)))

(declare-fun res!76524 () Bool)

(assert (=> d!42442 (=> (not res!76524) (not e!102385))))

(declare-fun lt!53268 () tuple2!2762)

(assert (=> d!42442 (= res!76524 (= (size!2393 (_1!1597 lt!53268)) 1))))

(assert (=> d!42442 (= lt!53268 (lex!199 thiss!17480 rules!1920 (print!130 thiss!17480 (singletonSeq!65 separatorToken!170))))))

(assert (=> d!42442 (not (isEmpty!1202 rules!1920))))

(assert (=> d!42442 (= (rulesProduceIndividualToken!148 thiss!17480 rules!1920 separatorToken!170) lt!53267)))

(declare-fun b!169335 () Bool)

(declare-fun res!76525 () Bool)

(assert (=> b!169335 (=> (not res!76525) (not e!102385))))

(assert (=> b!169335 (= res!76525 (= (apply!409 (_1!1597 lt!53268) 0) separatorToken!170))))

(declare-fun b!169336 () Bool)

(assert (=> b!169336 (= e!102385 (isEmpty!1206 (_2!1597 lt!53268)))))

(declare-fun b!169337 () Bool)

(assert (=> b!169337 (= e!102384 (isEmpty!1206 (_2!1597 (lex!199 thiss!17480 rules!1920 (print!130 thiss!17480 (singletonSeq!65 separatorToken!170))))))))

(assert (= (and d!42442 res!76524) b!169335))

(assert (= (and b!169335 res!76525) b!169336))

(assert (= (and d!42442 res!76523) b!169337))

(declare-fun m!165079 () Bool)

(assert (=> d!42442 m!165079))

(assert (=> d!42442 m!164059))

(declare-fun m!165081 () Bool)

(assert (=> d!42442 m!165081))

(declare-fun m!165083 () Bool)

(assert (=> d!42442 m!165083))

(declare-fun m!165085 () Bool)

(assert (=> d!42442 m!165085))

(assert (=> d!42442 m!165083))

(assert (=> d!42442 m!165085))

(declare-fun m!165087 () Bool)

(assert (=> d!42442 m!165087))

(assert (=> d!42442 m!165083))

(declare-fun m!165089 () Bool)

(assert (=> d!42442 m!165089))

(declare-fun m!165091 () Bool)

(assert (=> b!169335 m!165091))

(declare-fun m!165093 () Bool)

(assert (=> b!169336 m!165093))

(assert (=> b!169337 m!165083))

(assert (=> b!169337 m!165083))

(assert (=> b!169337 m!165085))

(assert (=> b!169337 m!165085))

(assert (=> b!169337 m!165087))

(declare-fun m!165095 () Bool)

(assert (=> b!169337 m!165095))

(assert (=> b!168715 d!42442))

(declare-fun d!42444 () Bool)

(declare-fun res!76530 () Bool)

(declare-fun e!102390 () Bool)

(assert (=> d!42444 (=> res!76530 e!102390)))

(assert (=> d!42444 (= res!76530 (not ((_ is Cons!2875) rules!1920)))))

(assert (=> d!42444 (= (sepAndNonSepRulesDisjointChars!102 rules!1920 rules!1920) e!102390)))

(declare-fun b!169342 () Bool)

(declare-fun e!102391 () Bool)

(assert (=> b!169342 (= e!102390 e!102391)))

(declare-fun res!76531 () Bool)

(assert (=> b!169342 (=> (not res!76531) (not e!102391))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!36 (Rule!826 List!2885) Bool)

(assert (=> b!169342 (= res!76531 (ruleDisjointCharsFromAllFromOtherType!36 (h!8272 rules!1920) rules!1920))))

(declare-fun b!169343 () Bool)

(assert (=> b!169343 (= e!102391 (sepAndNonSepRulesDisjointChars!102 rules!1920 (t!26939 rules!1920)))))

(assert (= (and d!42444 (not res!76530)) b!169342))

(assert (= (and b!169342 res!76531) b!169343))

(declare-fun m!165097 () Bool)

(assert (=> b!169342 m!165097))

(declare-fun m!165099 () Bool)

(assert (=> b!169343 m!165099))

(assert (=> b!168717 d!42444))

(declare-fun b!169344 () Bool)

(declare-fun res!76532 () Bool)

(declare-fun e!102393 () Bool)

(assert (=> b!169344 (=> res!76532 e!102393)))

(assert (=> b!169344 (= res!76532 (not ((_ is IntegerValue!1607) (value!18936 separatorToken!170))))))

(declare-fun e!102392 () Bool)

(assert (=> b!169344 (= e!102392 e!102393)))

(declare-fun d!42446 () Bool)

(declare-fun c!33654 () Bool)

(assert (=> d!42446 (= c!33654 ((_ is IntegerValue!1605) (value!18936 separatorToken!170)))))

(declare-fun e!102394 () Bool)

(assert (=> d!42446 (= (inv!21 (value!18936 separatorToken!170)) e!102394)))

(declare-fun b!169345 () Bool)

(assert (=> b!169345 (= e!102392 (inv!17 (value!18936 separatorToken!170)))))

(declare-fun b!169346 () Bool)

(assert (=> b!169346 (= e!102394 e!102392)))

(declare-fun c!33653 () Bool)

(assert (=> b!169346 (= c!33653 ((_ is IntegerValue!1606) (value!18936 separatorToken!170)))))

(declare-fun b!169347 () Bool)

(assert (=> b!169347 (= e!102394 (inv!16 (value!18936 separatorToken!170)))))

(declare-fun b!169348 () Bool)

(assert (=> b!169348 (= e!102393 (inv!15 (value!18936 separatorToken!170)))))

(assert (= (and d!42446 c!33654) b!169347))

(assert (= (and d!42446 (not c!33654)) b!169346))

(assert (= (and b!169346 c!33653) b!169345))

(assert (= (and b!169346 (not c!33653)) b!169344))

(assert (= (and b!169344 (not res!76532)) b!169348))

(declare-fun m!165101 () Bool)

(assert (=> b!169345 m!165101))

(declare-fun m!165103 () Bool)

(assert (=> b!169347 m!165103))

(declare-fun m!165105 () Bool)

(assert (=> b!169348 m!165105))

(assert (=> b!168716 d!42446))

(declare-fun b!169362 () Bool)

(declare-fun e!102397 () Bool)

(declare-fun tp!83820 () Bool)

(declare-fun tp!83819 () Bool)

(assert (=> b!169362 (= e!102397 (and tp!83820 tp!83819))))

(declare-fun b!169359 () Bool)

(declare-fun tp_is_empty!1651 () Bool)

(assert (=> b!169359 (= e!102397 tp_is_empty!1651)))

(assert (=> b!168707 (= tp!83733 e!102397)))

(declare-fun b!169361 () Bool)

(declare-fun tp!83822 () Bool)

(assert (=> b!169361 (= e!102397 tp!83822)))

(declare-fun b!169360 () Bool)

(declare-fun tp!83821 () Bool)

(declare-fun tp!83818 () Bool)

(assert (=> b!169360 (= e!102397 (and tp!83821 tp!83818))))

(assert (= (and b!168707 ((_ is ElementMatch!737) (regex!513 (rule!1020 separatorToken!170)))) b!169359))

(assert (= (and b!168707 ((_ is Concat!1273) (regex!513 (rule!1020 separatorToken!170)))) b!169360))

(assert (= (and b!168707 ((_ is Star!737) (regex!513 (rule!1020 separatorToken!170)))) b!169361))

(assert (= (and b!168707 ((_ is Union!737) (regex!513 (rule!1020 separatorToken!170)))) b!169362))

(declare-fun b!169373 () Bool)

(declare-fun b_free!6477 () Bool)

(declare-fun b_next!6477 () Bool)

(assert (=> b!169373 (= b_free!6477 (not b_next!6477))))

(declare-fun tp!83832 () Bool)

(declare-fun b_and!11053 () Bool)

(assert (=> b!169373 (= tp!83832 b_and!11053)))

(declare-fun b_free!6479 () Bool)

(declare-fun b_next!6479 () Bool)

(assert (=> b!169373 (= b_free!6479 (not b_next!6479))))

(declare-fun t!26998 () Bool)

(declare-fun tb!6653 () Bool)

(assert (=> (and b!169373 (= (toChars!1035 (transformation!513 (h!8272 (t!26939 rules!1920)))) (toChars!1035 (transformation!513 (rule!1020 separatorToken!170)))) t!26998) tb!6653))

(declare-fun result!9332 () Bool)

(assert (= result!9332 result!9284))

(assert (=> d!42290 t!26998))

(declare-fun tb!6655 () Bool)

(declare-fun t!27000 () Bool)

(assert (=> (and b!169373 (= (toChars!1035 (transformation!513 (h!8272 (t!26939 rules!1920)))) (toChars!1035 (transformation!513 (rule!1020 (h!8273 tokens!465))))) t!27000) tb!6655))

(declare-fun result!9334 () Bool)

(assert (= result!9334 result!9292))

(assert (=> d!42298 t!27000))

(assert (=> b!169095 t!27000))

(assert (=> b!169333 t!26998))

(declare-fun tp!83834 () Bool)

(declare-fun b_and!11055 () Bool)

(assert (=> b!169373 (= tp!83834 (and (=> t!26998 result!9332) (=> t!27000 result!9334) b_and!11055))))

(declare-fun e!102407 () Bool)

(assert (=> b!169373 (= e!102407 (and tp!83832 tp!83834))))

(declare-fun e!102408 () Bool)

(declare-fun b!169372 () Bool)

(declare-fun tp!83833 () Bool)

(assert (=> b!169372 (= e!102408 (and tp!83833 (inv!3697 (tag!691 (h!8272 (t!26939 rules!1920)))) (inv!3700 (transformation!513 (h!8272 (t!26939 rules!1920)))) e!102407))))

(declare-fun b!169371 () Bool)

(declare-fun e!102409 () Bool)

(declare-fun tp!83831 () Bool)

(assert (=> b!169371 (= e!102409 (and e!102408 tp!83831))))

(assert (=> b!168698 (= tp!83736 e!102409)))

(assert (= b!169372 b!169373))

(assert (= b!169371 b!169372))

(assert (= (and b!168698 ((_ is Cons!2875) (t!26939 rules!1920))) b!169371))

(declare-fun m!165107 () Bool)

(assert (=> b!169372 m!165107))

(declare-fun m!165109 () Bool)

(assert (=> b!169372 m!165109))

(declare-fun b!169387 () Bool)

(declare-fun b_free!6481 () Bool)

(declare-fun b_next!6481 () Bool)

(assert (=> b!169387 (= b_free!6481 (not b_next!6481))))

(declare-fun tp!83849 () Bool)

(declare-fun b_and!11057 () Bool)

(assert (=> b!169387 (= tp!83849 b_and!11057)))

(declare-fun b_free!6483 () Bool)

(declare-fun b_next!6483 () Bool)

(assert (=> b!169387 (= b_free!6483 (not b_next!6483))))

(declare-fun t!27002 () Bool)

(declare-fun tb!6657 () Bool)

(assert (=> (and b!169387 (= (toChars!1035 (transformation!513 (rule!1020 (h!8273 (t!26940 tokens!465))))) (toChars!1035 (transformation!513 (rule!1020 separatorToken!170)))) t!27002) tb!6657))

(declare-fun result!9338 () Bool)

(assert (= result!9338 result!9284))

(assert (=> d!42290 t!27002))

(declare-fun t!27004 () Bool)

(declare-fun tb!6659 () Bool)

(assert (=> (and b!169387 (= (toChars!1035 (transformation!513 (rule!1020 (h!8273 (t!26940 tokens!465))))) (toChars!1035 (transformation!513 (rule!1020 (h!8273 tokens!465))))) t!27004) tb!6659))

(declare-fun result!9340 () Bool)

(assert (= result!9340 result!9292))

(assert (=> d!42298 t!27004))

(assert (=> b!169095 t!27004))

(assert (=> b!169333 t!27002))

(declare-fun tp!83846 () Bool)

(declare-fun b_and!11059 () Bool)

(assert (=> b!169387 (= tp!83846 (and (=> t!27002 result!9338) (=> t!27004 result!9340) b_and!11059))))

(declare-fun e!102426 () Bool)

(declare-fun b!169385 () Bool)

(declare-fun e!102425 () Bool)

(declare-fun tp!83847 () Bool)

(assert (=> b!169385 (= e!102425 (and (inv!21 (value!18936 (h!8273 (t!26940 tokens!465)))) e!102426 tp!83847))))

(declare-fun e!102424 () Bool)

(assert (=> b!168720 (= tp!83731 e!102424)))

(declare-fun b!169384 () Bool)

(declare-fun tp!83845 () Bool)

(assert (=> b!169384 (= e!102424 (and (inv!3701 (h!8273 (t!26940 tokens!465))) e!102425 tp!83845))))

(declare-fun e!102422 () Bool)

(assert (=> b!169387 (= e!102422 (and tp!83849 tp!83846))))

(declare-fun tp!83848 () Bool)

(declare-fun b!169386 () Bool)

(assert (=> b!169386 (= e!102426 (and tp!83848 (inv!3697 (tag!691 (rule!1020 (h!8273 (t!26940 tokens!465))))) (inv!3700 (transformation!513 (rule!1020 (h!8273 (t!26940 tokens!465))))) e!102422))))

(assert (= b!169386 b!169387))

(assert (= b!169385 b!169386))

(assert (= b!169384 b!169385))

(assert (= (and b!168720 ((_ is Cons!2876) (t!26940 tokens!465))) b!169384))

(declare-fun m!165111 () Bool)

(assert (=> b!169385 m!165111))

(declare-fun m!165113 () Bool)

(assert (=> b!169384 m!165113))

(declare-fun m!165115 () Bool)

(assert (=> b!169386 m!165115))

(declare-fun m!165117 () Bool)

(assert (=> b!169386 m!165117))

(declare-fun b!169391 () Bool)

(declare-fun e!102428 () Bool)

(declare-fun tp!83852 () Bool)

(declare-fun tp!83851 () Bool)

(assert (=> b!169391 (= e!102428 (and tp!83852 tp!83851))))

(declare-fun b!169388 () Bool)

(assert (=> b!169388 (= e!102428 tp_is_empty!1651)))

(assert (=> b!168699 (= tp!83741 e!102428)))

(declare-fun b!169390 () Bool)

(declare-fun tp!83854 () Bool)

(assert (=> b!169390 (= e!102428 tp!83854)))

(declare-fun b!169389 () Bool)

(declare-fun tp!83853 () Bool)

(declare-fun tp!83850 () Bool)

(assert (=> b!169389 (= e!102428 (and tp!83853 tp!83850))))

(assert (= (and b!168699 ((_ is ElementMatch!737) (regex!513 (h!8272 rules!1920)))) b!169388))

(assert (= (and b!168699 ((_ is Concat!1273) (regex!513 (h!8272 rules!1920)))) b!169389))

(assert (= (and b!168699 ((_ is Star!737) (regex!513 (h!8272 rules!1920)))) b!169390))

(assert (= (and b!168699 ((_ is Union!737) (regex!513 (h!8272 rules!1920)))) b!169391))

(declare-fun b!169394 () Bool)

(declare-fun e!102431 () Bool)

(assert (=> b!169394 (= e!102431 true)))

(declare-fun b!169393 () Bool)

(declare-fun e!102430 () Bool)

(assert (=> b!169393 (= e!102430 e!102431)))

(declare-fun b!169392 () Bool)

(declare-fun e!102429 () Bool)

(assert (=> b!169392 (= e!102429 e!102430)))

(assert (=> b!168730 e!102429))

(assert (= b!169393 b!169394))

(assert (= b!169392 b!169393))

(assert (= (and b!168730 ((_ is Cons!2875) (t!26939 rules!1920))) b!169392))

(assert (=> b!169394 (< (dynLambda!1069 order!1537 (toValue!1176 (transformation!513 (h!8272 (t!26939 rules!1920))))) (dynLambda!1070 order!1539 lambda!4752))))

(assert (=> b!169394 (< (dynLambda!1071 order!1541 (toChars!1035 (transformation!513 (h!8272 (t!26939 rules!1920))))) (dynLambda!1070 order!1539 lambda!4752))))

(declare-fun b!169399 () Bool)

(declare-fun e!102434 () Bool)

(declare-fun tp!83857 () Bool)

(assert (=> b!169399 (= e!102434 (and tp_is_empty!1651 tp!83857))))

(assert (=> b!168702 (= tp!83743 e!102434)))

(assert (= (and b!168702 ((_ is Cons!2874) (originalCharacters!556 (h!8273 tokens!465)))) b!169399))

(declare-fun b!169403 () Bool)

(declare-fun e!102435 () Bool)

(declare-fun tp!83860 () Bool)

(declare-fun tp!83859 () Bool)

(assert (=> b!169403 (= e!102435 (and tp!83860 tp!83859))))

(declare-fun b!169400 () Bool)

(assert (=> b!169400 (= e!102435 tp_is_empty!1651)))

(assert (=> b!168694 (= tp!83734 e!102435)))

(declare-fun b!169402 () Bool)

(declare-fun tp!83862 () Bool)

(assert (=> b!169402 (= e!102435 tp!83862)))

(declare-fun b!169401 () Bool)

(declare-fun tp!83861 () Bool)

(declare-fun tp!83858 () Bool)

(assert (=> b!169401 (= e!102435 (and tp!83861 tp!83858))))

(assert (= (and b!168694 ((_ is ElementMatch!737) (regex!513 (rule!1020 (h!8273 tokens!465))))) b!169400))

(assert (= (and b!168694 ((_ is Concat!1273) (regex!513 (rule!1020 (h!8273 tokens!465))))) b!169401))

(assert (= (and b!168694 ((_ is Star!737) (regex!513 (rule!1020 (h!8273 tokens!465))))) b!169402))

(assert (= (and b!168694 ((_ is Union!737) (regex!513 (rule!1020 (h!8273 tokens!465))))) b!169403))

(declare-fun b!169404 () Bool)

(declare-fun e!102436 () Bool)

(declare-fun tp!83863 () Bool)

(assert (=> b!169404 (= e!102436 (and tp_is_empty!1651 tp!83863))))

(assert (=> b!168716 (= tp!83739 e!102436)))

(assert (= (and b!168716 ((_ is Cons!2874) (originalCharacters!556 separatorToken!170))) b!169404))

(declare-fun b_lambda!3799 () Bool)

(assert (= b_lambda!3771 (or b!168710 b_lambda!3799)))

(declare-fun bs!16469 () Bool)

(declare-fun d!42448 () Bool)

(assert (= bs!16469 (and d!42448 b!168710)))

(assert (=> bs!16469 (= (dynLambda!1075 lambda!4752 (h!8273 tokens!465)) (rulesProduceIndividualToken!148 thiss!17480 rules!1920 (h!8273 tokens!465)))))

(assert (=> bs!16469 m!164021))

(assert (=> d!42348 d!42448))

(declare-fun b_lambda!3801 () Bool)

(assert (= b_lambda!3775 (or b!168701 b_lambda!3801)))

(declare-fun bs!16470 () Bool)

(declare-fun d!42450 () Bool)

(assert (= bs!16470 (and d!42450 b!168701)))

(assert (=> bs!16470 (= (dynLambda!1075 lambda!4751 (h!8273 tokens!465)) (not (isSeparator!513 (rule!1020 (h!8273 tokens!465)))))))

(assert (=> b!169111 d!42450))

(declare-fun b_lambda!3803 () Bool)

(assert (= b_lambda!3765 (or (and b!168709 b_free!6467 (= (toChars!1035 (transformation!513 (rule!1020 separatorToken!170))) (toChars!1035 (transformation!513 (rule!1020 (h!8273 tokens!465)))))) (and b!168695 b_free!6463 (= (toChars!1035 (transformation!513 (h!8272 rules!1920))) (toChars!1035 (transformation!513 (rule!1020 (h!8273 tokens!465)))))) (and b!169387 b_free!6483 (= (toChars!1035 (transformation!513 (rule!1020 (h!8273 (t!26940 tokens!465))))) (toChars!1035 (transformation!513 (rule!1020 (h!8273 tokens!465)))))) (and b!169373 b_free!6479 (= (toChars!1035 (transformation!513 (h!8272 (t!26939 rules!1920)))) (toChars!1035 (transformation!513 (rule!1020 (h!8273 tokens!465)))))) (and b!168719 b_free!6459) b_lambda!3803)))

(declare-fun b_lambda!3805 () Bool)

(assert (= b_lambda!3797 (or (and b!168709 b_free!6467) (and b!168695 b_free!6463 (= (toChars!1035 (transformation!513 (h!8272 rules!1920))) (toChars!1035 (transformation!513 (rule!1020 separatorToken!170))))) (and b!169373 b_free!6479 (= (toChars!1035 (transformation!513 (h!8272 (t!26939 rules!1920)))) (toChars!1035 (transformation!513 (rule!1020 separatorToken!170))))) (and b!169387 b_free!6483 (= (toChars!1035 (transformation!513 (rule!1020 (h!8273 (t!26940 tokens!465))))) (toChars!1035 (transformation!513 (rule!1020 separatorToken!170))))) (and b!168719 b_free!6459 (= (toChars!1035 (transformation!513 (rule!1020 (h!8273 tokens!465)))) (toChars!1035 (transformation!513 (rule!1020 separatorToken!170))))) b_lambda!3805)))

(declare-fun b_lambda!3807 () Bool)

(assert (= b_lambda!3773 (or (and b!168709 b_free!6467 (= (toChars!1035 (transformation!513 (rule!1020 separatorToken!170))) (toChars!1035 (transformation!513 (rule!1020 (h!8273 tokens!465)))))) (and b!168695 b_free!6463 (= (toChars!1035 (transformation!513 (h!8272 rules!1920))) (toChars!1035 (transformation!513 (rule!1020 (h!8273 tokens!465)))))) (and b!169387 b_free!6483 (= (toChars!1035 (transformation!513 (rule!1020 (h!8273 (t!26940 tokens!465))))) (toChars!1035 (transformation!513 (rule!1020 (h!8273 tokens!465)))))) (and b!169373 b_free!6479 (= (toChars!1035 (transformation!513 (h!8272 (t!26939 rules!1920)))) (toChars!1035 (transformation!513 (rule!1020 (h!8273 tokens!465)))))) (and b!168719 b_free!6459) b_lambda!3807)))

(declare-fun b_lambda!3809 () Bool)

(assert (= b_lambda!3763 (or (and b!168709 b_free!6467) (and b!168695 b_free!6463 (= (toChars!1035 (transformation!513 (h!8272 rules!1920))) (toChars!1035 (transformation!513 (rule!1020 separatorToken!170))))) (and b!169373 b_free!6479 (= (toChars!1035 (transformation!513 (h!8272 (t!26939 rules!1920)))) (toChars!1035 (transformation!513 (rule!1020 separatorToken!170))))) (and b!169387 b_free!6483 (= (toChars!1035 (transformation!513 (rule!1020 (h!8273 (t!26940 tokens!465))))) (toChars!1035 (transformation!513 (rule!1020 separatorToken!170))))) (and b!168719 b_free!6459 (= (toChars!1035 (transformation!513 (rule!1020 (h!8273 tokens!465)))) (toChars!1035 (transformation!513 (rule!1020 separatorToken!170))))) b_lambda!3809)))

(check-sat (not bm!7347) (not b!169309) (not d!42290) (not b!169097) (not b!169360) (not d!42258) (not b!169401) (not d!42300) (not b!169391) (not b!169336) (not b!168982) (not bm!7322) (not b!168931) (not b!168957) (not bm!7349) (not d!42442) (not b!168775) (not b!169347) (not d!42416) (not b!169265) (not b!169385) (not b_lambda!3805) (not b!169295) (not b!169390) (not b!169310) (not b!168996) (not b!169063) (not bm!7295) (not b!169315) (not b!169272) (not d!42296) (not b!169321) (not bm!7351) (not bs!16469) (not b!168759) (not b!168949) (not d!42348) (not b!169324) (not b!169112) (not bm!7324) (not b!169306) (not d!42424) (not b!169068) (not b_next!6457) b_and!10985 (not b!169300) (not d!42322) (not d!42422) (not b!169333) (not b!169392) (not d!42366) (not b!169271) (not d!42256) (not b!169142) (not bm!7354) (not b!169118) (not b!168779) tp_is_empty!1651 (not d!42438) (not b!168987) b_and!11055 (not b!168992) (not b!168780) (not d!42270) (not b!169342) (not b!169404) (not d!42360) (not d!42262) (not b!168776) b_and!11057 (not b!169305) (not b!169263) (not d!42252) (not b_next!6467) b_and!11053 (not b!169096) (not b!169069) (not bm!7352) (not bm!7291) (not b!168761) (not b!169343) b_and!11049 (not b!169067) (not bm!7292) (not b_next!6479) (not b!169337) (not d!42326) (not b_next!6461) (not tb!6627) (not b!168838) (not b!169362) (not b!169322) (not d!42356) (not b!168928) (not d!42292) (not d!42418) (not d!42298) (not b!169371) (not bm!7294) (not d!42420) (not b_lambda!3803) (not d!42432) (not b!169403) (not b!169141) (not b_lambda!3799) (not d!42430) (not b!169348) (not b!169384) (not b!168930) (not d!42352) (not tb!6621) (not b!169139) (not b!169372) (not b!168927) (not d!42316) (not bm!7323) (not b!168771) (not d!42434) (not b!168929) (not b_next!6465) (not b!169345) (not b_next!6483) (not d!42426) (not b!169095) (not b!169326) (not b_next!6481) (not b!169066) (not b_next!6463) (not d!42254) (not b!169262) (not d!42440) (not d!42260) (not bm!7331) (not b!169389) b_and!11059 b_and!10993 (not b!169361) b_and!11051 (not b!168784) (not bm!7357) (not b!169330) (not b!169402) (not b!169334) (not b!169399) (not d!42372) (not b!168936) (not b!169266) (not bm!7350) (not b_next!6477) (not d!42312) (not d!42314) (not b_lambda!3807) (not b!169119) (not b!168844) (not b!169297) (not b!169331) (not b!169065) (not bm!7353) (not d!42346) (not b!169307) (not b!169296) (not b!169386) (not b!169294) (not bm!7325) (not b!169293) (not b!168837) (not b!168835) (not b!169323) (not b!169298) (not b!168783) (not b_lambda!3801) b_and!10989 (not b!168772) (not b!168760) (not b!169335) (not b!169062) (not b!169304) (not d!42414) (not b!168836) (not d!42382) (not d!42264) (not b_lambda!3809) (not b!168984) (not b_next!6459) (not bm!7356) (not b!169308) b_and!11047 (not b!169076) (not d!42324) (not d!42244) (not b!169299))
(check-sat (not b_next!6457) b_and!10985 b_and!11055 (not b_next!6461) b_and!11051 (not b_next!6477) b_and!10989 b_and!11057 (not b_next!6467) b_and!11053 b_and!11049 (not b_next!6479) (not b_next!6465) (not b_next!6483) (not b_next!6481) (not b_next!6463) b_and!11059 b_and!10993 (not b_next!6459) b_and!11047)
