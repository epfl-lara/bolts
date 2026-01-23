; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105564 () Bool)

(assert start!105564)

(declare-fun b!1188866 () Bool)

(declare-fun b_free!28725 () Bool)

(declare-fun b_next!29429 () Bool)

(assert (=> b!1188866 (= b_free!28725 (not b_next!29429))))

(declare-fun tp!339354 () Bool)

(declare-fun b_and!81909 () Bool)

(assert (=> b!1188866 (= tp!339354 b_and!81909)))

(declare-fun b_free!28727 () Bool)

(declare-fun b_next!29431 () Bool)

(assert (=> b!1188866 (= b_free!28727 (not b_next!29431))))

(declare-fun tp!339356 () Bool)

(declare-fun b_and!81911 () Bool)

(assert (=> b!1188866 (= tp!339356 b_and!81911)))

(declare-fun b!1188870 () Bool)

(declare-fun b_free!28729 () Bool)

(declare-fun b_next!29433 () Bool)

(assert (=> b!1188870 (= b_free!28729 (not b_next!29433))))

(declare-fun tp!339357 () Bool)

(declare-fun b_and!81913 () Bool)

(assert (=> b!1188870 (= tp!339357 b_and!81913)))

(declare-fun b_free!28731 () Bool)

(declare-fun b_next!29435 () Bool)

(assert (=> b!1188870 (= b_free!28731 (not b_next!29435))))

(declare-fun tp!339355 () Bool)

(declare-fun b_and!81915 () Bool)

(assert (=> b!1188870 (= tp!339355 b_and!81915)))

(declare-fun b!1188881 () Bool)

(declare-fun e!764153 () Bool)

(assert (=> b!1188881 (= e!764153 true)))

(declare-fun b!1188880 () Bool)

(declare-fun e!764152 () Bool)

(assert (=> b!1188880 (= e!764152 e!764153)))

(declare-fun b!1188879 () Bool)

(declare-fun e!764151 () Bool)

(assert (=> b!1188879 (= e!764151 e!764152)))

(declare-fun b!1188864 () Bool)

(assert (=> b!1188864 e!764151))

(assert (= b!1188880 b!1188881))

(assert (= b!1188879 b!1188880))

(declare-datatypes ((C!7048 0))(
  ( (C!7049 (val!3820 Int)) )
))
(declare-datatypes ((List!11989 0))(
  ( (Nil!11965) (Cons!11965 (h!17366 C!7048) (t!112135 List!11989)) )
))
(declare-datatypes ((IArray!7837 0))(
  ( (IArray!7838 (innerList!3976 List!11989)) )
))
(declare-datatypes ((Conc!3916 0))(
  ( (Node!3916 (left!10413 Conc!3916) (right!10743 Conc!3916) (csize!8062 Int) (cheight!4127 Int)) (Leaf!5994 (xs!6621 IArray!7837) (csize!8063 Int)) (Empty!3916) )
))
(declare-datatypes ((List!11990 0))(
  ( (Nil!11966) (Cons!11966 (h!17367 (_ BitVec 16)) (t!112136 List!11990)) )
))
(declare-datatypes ((BalanceConc!7854 0))(
  ( (BalanceConc!7855 (c!197379 Conc!3916)) )
))
(declare-datatypes ((TokenValue!2161 0))(
  ( (FloatLiteralValue!4322 (text!15572 List!11990)) (TokenValueExt!2160 (__x!8033 Int)) (Broken!10805 (value!67738 List!11990)) (Object!2184) (End!2161) (Def!2161) (Underscore!2161) (Match!2161) (Else!2161) (Error!2161) (Case!2161) (If!2161) (Extends!2161) (Abstract!2161) (Class!2161) (Val!2161) (DelimiterValue!4322 (del!2221 List!11990)) (KeywordValue!2167 (value!67739 List!11990)) (CommentValue!4322 (value!67740 List!11990)) (WhitespaceValue!4322 (value!67741 List!11990)) (IndentationValue!2161 (value!67742 List!11990)) (String!14472) (Int32!2161) (Broken!10806 (value!67743 List!11990)) (Boolean!2162) (Unit!18349) (OperatorValue!2164 (op!2221 List!11990)) (IdentifierValue!4322 (value!67744 List!11990)) (IdentifierValue!4323 (value!67745 List!11990)) (WhitespaceValue!4323 (value!67746 List!11990)) (True!4322) (False!4322) (Broken!10807 (value!67747 List!11990)) (Broken!10808 (value!67748 List!11990)) (True!4323) (RightBrace!2161) (RightBracket!2161) (Colon!2161) (Null!2161) (Comma!2161) (LeftBracket!2161) (False!4323) (LeftBrace!2161) (ImaginaryLiteralValue!2161 (text!15573 List!11990)) (StringLiteralValue!6483 (value!67749 List!11990)) (EOFValue!2161 (value!67750 List!11990)) (IdentValue!2161 (value!67751 List!11990)) (DelimiterValue!4323 (value!67752 List!11990)) (DedentValue!2161 (value!67753 List!11990)) (NewLineValue!2161 (value!67754 List!11990)) (IntegerValue!6483 (value!67755 (_ BitVec 32)) (text!15574 List!11990)) (IntegerValue!6484 (value!67756 Int) (text!15575 List!11990)) (Times!2161) (Or!2161) (Equal!2161) (Minus!2161) (Broken!10809 (value!67757 List!11990)) (And!2161) (Div!2161) (LessEqual!2161) (Mod!2161) (Concat!5526) (Not!2161) (Plus!2161) (SpaceValue!2161 (value!67758 List!11990)) (IntegerValue!6485 (value!67759 Int) (text!15576 List!11990)) (StringLiteralValue!6484 (text!15577 List!11990)) (FloatLiteralValue!4323 (text!15578 List!11990)) (BytesLiteralValue!2161 (value!67760 List!11990)) (CommentValue!4323 (value!67761 List!11990)) (StringLiteralValue!6485 (value!67762 List!11990)) (ErrorTokenValue!2161 (msg!2222 List!11990)) )
))
(declare-datatypes ((Regex!3365 0))(
  ( (ElementMatch!3365 (c!197380 C!7048)) (Concat!5527 (regOne!7242 Regex!3365) (regTwo!7242 Regex!3365)) (EmptyExpr!3365) (Star!3365 (reg!3694 Regex!3365)) (EmptyLang!3365) (Union!3365 (regOne!7243 Regex!3365) (regTwo!7243 Regex!3365)) )
))
(declare-datatypes ((String!14473 0))(
  ( (String!14474 (value!67763 String)) )
))
(declare-datatypes ((TokenValueInjection!4022 0))(
  ( (TokenValueInjection!4023 (toValue!3212 Int) (toChars!3071 Int)) )
))
(declare-datatypes ((Rule!3990 0))(
  ( (Rule!3991 (regex!2095 Regex!3365) (tag!2357 String!14473) (isSeparator!2095 Bool) (transformation!2095 TokenValueInjection!4022)) )
))
(declare-datatypes ((List!11991 0))(
  ( (Nil!11967) (Cons!11967 (h!17368 Rule!3990) (t!112137 List!11991)) )
))
(declare-fun rules!4386 () List!11991)

(get-info :version)

(assert (= (and b!1188864 ((_ is Cons!11967) rules!4386)) b!1188879))

(declare-fun order!7481 () Int)

(declare-fun order!7483 () Int)

(declare-fun lambda!48990 () Int)

(declare-fun dynLambda!5364 (Int Int) Int)

(declare-fun dynLambda!5365 (Int Int) Int)

(assert (=> b!1188881 (< (dynLambda!5364 order!7481 (toValue!3212 (transformation!2095 (h!17368 rules!4386)))) (dynLambda!5365 order!7483 lambda!48990))))

(declare-fun order!7485 () Int)

(declare-fun dynLambda!5366 (Int Int) Int)

(assert (=> b!1188881 (< (dynLambda!5366 order!7485 (toChars!3071 (transformation!2095 (h!17368 rules!4386)))) (dynLambda!5365 order!7483 lambda!48990))))

(declare-fun b!1188851 () Bool)

(declare-fun res!537111 () Bool)

(declare-fun e!764137 () Bool)

(assert (=> b!1188851 (=> (not res!537111) (not e!764137))))

(declare-datatypes ((Token!3852 0))(
  ( (Token!3853 (value!67764 TokenValue!2161) (rule!3516 Rule!3990) (size!9428 Int) (originalCharacters!2649 List!11989)) )
))
(declare-datatypes ((List!11992 0))(
  ( (Nil!11968) (Cons!11968 (h!17369 Token!3852) (t!112138 List!11992)) )
))
(declare-fun l!6534 () List!11992)

(declare-datatypes ((LexerInterface!1790 0))(
  ( (LexerInterfaceExt!1787 (__x!8034 Int)) (Lexer!1788) )
))
(declare-fun thiss!27592 () LexerInterface!1790)

(declare-fun rulesProduceEachTokenIndividuallyList!656 (LexerInterface!1790 List!11991 List!11992) Bool)

(assert (=> b!1188851 (= res!537111 (rulesProduceEachTokenIndividuallyList!656 thiss!27592 rules!4386 (t!112138 l!6534)))))

(declare-fun b!1188852 () Bool)

(declare-fun e!764138 () Bool)

(declare-fun lt!408724 () List!11992)

(declare-fun tokensListTwoByTwoPredicateSeparableList!184 (LexerInterface!1790 List!11992 List!11991) Bool)

(assert (=> b!1188852 (= e!764138 (tokensListTwoByTwoPredicateSeparableList!184 thiss!27592 lt!408724 rules!4386))))

(declare-fun b!1188853 () Bool)

(declare-fun res!537109 () Bool)

(assert (=> b!1188853 (=> (not res!537109) (not e!764137))))

(declare-fun i!1621 () Int)

(assert (=> b!1188853 (= res!537109 (and (not ((_ is Nil!11968) l!6534)) (> i!1621 0)))))

(declare-fun e!764130 () Bool)

(declare-fun b!1188854 () Bool)

(declare-fun lt!408722 () List!11992)

(assert (=> b!1188854 (= e!764130 (rulesProduceEachTokenIndividuallyList!656 thiss!27592 rules!4386 (t!112138 lt!408722)))))

(declare-fun b!1188855 () Bool)

(declare-fun e!764132 () Bool)

(declare-fun e!764141 () Bool)

(declare-fun tp!339362 () Bool)

(assert (=> b!1188855 (= e!764132 (and e!764141 tp!339362))))

(declare-fun b!1188856 () Bool)

(declare-fun e!764142 () Bool)

(assert (=> b!1188856 (= e!764142 e!764130)))

(declare-fun res!537099 () Bool)

(assert (=> b!1188856 (=> (not res!537099) (not e!764130))))

(declare-fun rulesProduceIndividualToken!816 (LexerInterface!1790 List!11991 Token!3852) Bool)

(assert (=> b!1188856 (= res!537099 (rulesProduceIndividualToken!816 thiss!27592 rules!4386 (h!17369 lt!408722)))))

(declare-fun b!1188857 () Bool)

(declare-fun res!537104 () Bool)

(assert (=> b!1188857 (=> (not res!537104) (not e!764137))))

(declare-fun rulesInvariant!1664 (LexerInterface!1790 List!11991) Bool)

(assert (=> b!1188857 (= res!537104 (rulesInvariant!1664 thiss!27592 rules!4386))))

(declare-fun b!1188858 () Bool)

(declare-fun e!764135 () Bool)

(declare-fun e!764143 () Bool)

(declare-fun tp!339361 () Bool)

(declare-fun inv!21 (TokenValue!2161) Bool)

(assert (=> b!1188858 (= e!764143 (and (inv!21 (value!67764 (h!17369 l!6534))) e!764135 tp!339361))))

(declare-fun b!1188859 () Bool)

(declare-fun e!764136 () Bool)

(assert (=> b!1188859 (= e!764136 (rulesProduceEachTokenIndividuallyList!656 thiss!27592 rules!4386 (t!112138 lt!408724)))))

(declare-fun b!1188860 () Bool)

(declare-fun res!537100 () Bool)

(assert (=> b!1188860 (=> (not res!537100) (not e!764137))))

(assert (=> b!1188860 (= res!537100 (tokensListTwoByTwoPredicateSeparableList!184 thiss!27592 l!6534 rules!4386))))

(declare-fun b!1188861 () Bool)

(declare-fun res!537101 () Bool)

(assert (=> b!1188861 (=> (not res!537101) (not e!764137))))

(assert (=> b!1188861 (= res!537101 (rulesProduceEachTokenIndividuallyList!656 thiss!27592 rules!4386 l!6534))))

(declare-fun b!1188862 () Bool)

(declare-fun e!764129 () Bool)

(assert (=> b!1188862 (= e!764129 e!764136)))

(declare-fun res!537105 () Bool)

(assert (=> b!1188862 (=> (not res!537105) (not e!764136))))

(assert (=> b!1188862 (= res!537105 (rulesProduceIndividualToken!816 thiss!27592 rules!4386 (h!17369 lt!408724)))))

(declare-fun tp!339360 () Bool)

(declare-fun e!764133 () Bool)

(declare-fun b!1188863 () Bool)

(declare-fun inv!15801 (Token!3852) Bool)

(assert (=> b!1188863 (= e!764133 (and (inv!15801 (h!17369 l!6534)) e!764143 tp!339360))))

(declare-fun res!537110 () Bool)

(assert (=> start!105564 (=> (not res!537110) (not e!764137))))

(assert (=> start!105564 (= res!537110 ((_ is Lexer!1788) thiss!27592))))

(assert (=> start!105564 e!764137))

(assert (=> start!105564 true))

(assert (=> start!105564 e!764132))

(assert (=> start!105564 e!764133))

(declare-fun forall!3165 (List!11992 Int) Bool)

(assert (=> b!1188864 (= e!764137 (not (forall!3165 l!6534 lambda!48990)))))

(declare-fun subseq!339 (List!11992 List!11992) Bool)

(assert (=> b!1188864 (subseq!339 lt!408722 l!6534)))

(declare-datatypes ((Unit!18350 0))(
  ( (Unit!18351) )
))
(declare-fun lt!408723 () Unit!18350)

(declare-fun lemmaDropSubseq!102 (List!11992 Int) Unit!18350)

(assert (=> b!1188864 (= lt!408723 (lemmaDropSubseq!102 l!6534 i!1621))))

(assert (=> b!1188864 (= (rulesProduceEachTokenIndividuallyList!656 thiss!27592 rules!4386 lt!408722) e!764142)))

(declare-fun res!537107 () Bool)

(assert (=> b!1188864 (=> res!537107 e!764142)))

(assert (=> b!1188864 (= res!537107 (not ((_ is Cons!11968) lt!408722)))))

(declare-fun drop!563 (List!11992 Int) List!11992)

(assert (=> b!1188864 (= lt!408722 (drop!563 l!6534 i!1621))))

(assert (=> b!1188864 e!764138))

(declare-fun res!537103 () Bool)

(assert (=> b!1188864 (=> (not res!537103) (not e!764138))))

(assert (=> b!1188864 (= res!537103 (forall!3165 lt!408724 lambda!48990))))

(declare-fun lt!408721 () Unit!18350)

(declare-fun lemmaForallSubseq!199 (List!11992 List!11992 Int) Unit!18350)

(assert (=> b!1188864 (= lt!408721 (lemmaForallSubseq!199 lt!408724 (t!112138 l!6534) lambda!48990))))

(assert (=> b!1188864 (subseq!339 lt!408724 (t!112138 l!6534))))

(declare-fun lt!408719 () Unit!18350)

(assert (=> b!1188864 (= lt!408719 (lemmaDropSubseq!102 (t!112138 l!6534) (- i!1621 1)))))

(assert (=> b!1188864 (= (rulesProduceEachTokenIndividuallyList!656 thiss!27592 rules!4386 lt!408724) e!764129)))

(declare-fun res!537102 () Bool)

(assert (=> b!1188864 (=> res!537102 e!764129)))

(assert (=> b!1188864 (= res!537102 (not ((_ is Cons!11968) lt!408724)))))

(assert (=> b!1188864 (= lt!408724 (drop!563 (t!112138 l!6534) (- i!1621 1)))))

(declare-fun lt!408720 () Unit!18350)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensDropList!70 (LexerInterface!1790 List!11992 Int List!11991) Unit!18350)

(assert (=> b!1188864 (= lt!408720 (tokensListTwoByTwoPredicateSeparableTokensDropList!70 thiss!27592 (t!112138 l!6534) (- i!1621 1) rules!4386))))

(declare-fun b!1188865 () Bool)

(declare-fun res!537106 () Bool)

(assert (=> b!1188865 (=> (not res!537106) (not e!764137))))

(declare-fun isEmpty!7193 (List!11991) Bool)

(assert (=> b!1188865 (= res!537106 (not (isEmpty!7193 rules!4386)))))

(declare-fun e!764131 () Bool)

(assert (=> b!1188866 (= e!764131 (and tp!339354 tp!339356))))

(declare-fun tp!339358 () Bool)

(declare-fun b!1188867 () Bool)

(declare-fun inv!15798 (String!14473) Bool)

(declare-fun inv!15802 (TokenValueInjection!4022) Bool)

(assert (=> b!1188867 (= e!764135 (and tp!339358 (inv!15798 (tag!2357 (rule!3516 (h!17369 l!6534)))) (inv!15802 (transformation!2095 (rule!3516 (h!17369 l!6534)))) e!764131))))

(declare-fun b!1188868 () Bool)

(declare-fun e!764134 () Bool)

(declare-fun tp!339359 () Bool)

(assert (=> b!1188868 (= e!764141 (and tp!339359 (inv!15798 (tag!2357 (h!17368 rules!4386))) (inv!15802 (transformation!2095 (h!17368 rules!4386))) e!764134))))

(declare-fun b!1188869 () Bool)

(declare-fun res!537108 () Bool)

(assert (=> b!1188869 (=> (not res!537108) (not e!764137))))

(assert (=> b!1188869 (= res!537108 (tokensListTwoByTwoPredicateSeparableList!184 thiss!27592 (t!112138 l!6534) rules!4386))))

(assert (=> b!1188870 (= e!764134 (and tp!339357 tp!339355))))

(assert (= (and start!105564 res!537110) b!1188865))

(assert (= (and b!1188865 res!537106) b!1188857))

(assert (= (and b!1188857 res!537104) b!1188861))

(assert (= (and b!1188861 res!537101) b!1188860))

(assert (= (and b!1188860 res!537100) b!1188853))

(assert (= (and b!1188853 res!537109) b!1188851))

(assert (= (and b!1188851 res!537111) b!1188869))

(assert (= (and b!1188869 res!537108) b!1188864))

(assert (= (and b!1188864 (not res!537102)) b!1188862))

(assert (= (and b!1188862 res!537105) b!1188859))

(assert (= (and b!1188864 res!537103) b!1188852))

(assert (= (and b!1188864 (not res!537107)) b!1188856))

(assert (= (and b!1188856 res!537099) b!1188854))

(assert (= b!1188868 b!1188870))

(assert (= b!1188855 b!1188868))

(assert (= (and start!105564 ((_ is Cons!11967) rules!4386)) b!1188855))

(assert (= b!1188867 b!1188866))

(assert (= b!1188858 b!1188867))

(assert (= b!1188863 b!1188858))

(assert (= (and start!105564 ((_ is Cons!11968) l!6534)) b!1188863))

(declare-fun m!1364111 () Bool)

(assert (=> b!1188860 m!1364111))

(declare-fun m!1364113 () Bool)

(assert (=> b!1188858 m!1364113))

(declare-fun m!1364115 () Bool)

(assert (=> b!1188861 m!1364115))

(declare-fun m!1364117 () Bool)

(assert (=> b!1188869 m!1364117))

(declare-fun m!1364119 () Bool)

(assert (=> b!1188852 m!1364119))

(declare-fun m!1364121 () Bool)

(assert (=> b!1188863 m!1364121))

(declare-fun m!1364123 () Bool)

(assert (=> b!1188865 m!1364123))

(declare-fun m!1364125 () Bool)

(assert (=> b!1188859 m!1364125))

(declare-fun m!1364127 () Bool)

(assert (=> b!1188857 m!1364127))

(declare-fun m!1364129 () Bool)

(assert (=> b!1188864 m!1364129))

(declare-fun m!1364131 () Bool)

(assert (=> b!1188864 m!1364131))

(declare-fun m!1364133 () Bool)

(assert (=> b!1188864 m!1364133))

(declare-fun m!1364135 () Bool)

(assert (=> b!1188864 m!1364135))

(declare-fun m!1364137 () Bool)

(assert (=> b!1188864 m!1364137))

(declare-fun m!1364139 () Bool)

(assert (=> b!1188864 m!1364139))

(declare-fun m!1364141 () Bool)

(assert (=> b!1188864 m!1364141))

(declare-fun m!1364143 () Bool)

(assert (=> b!1188864 m!1364143))

(declare-fun m!1364145 () Bool)

(assert (=> b!1188864 m!1364145))

(declare-fun m!1364147 () Bool)

(assert (=> b!1188864 m!1364147))

(declare-fun m!1364149 () Bool)

(assert (=> b!1188864 m!1364149))

(declare-fun m!1364151 () Bool)

(assert (=> b!1188864 m!1364151))

(declare-fun m!1364153 () Bool)

(assert (=> b!1188856 m!1364153))

(declare-fun m!1364155 () Bool)

(assert (=> b!1188867 m!1364155))

(declare-fun m!1364157 () Bool)

(assert (=> b!1188867 m!1364157))

(declare-fun m!1364159 () Bool)

(assert (=> b!1188862 m!1364159))

(declare-fun m!1364161 () Bool)

(assert (=> b!1188868 m!1364161))

(declare-fun m!1364163 () Bool)

(assert (=> b!1188868 m!1364163))

(declare-fun m!1364165 () Bool)

(assert (=> b!1188854 m!1364165))

(declare-fun m!1364167 () Bool)

(assert (=> b!1188851 m!1364167))

(check-sat (not b!1188857) (not b_next!29431) (not b!1188855) (not b!1188869) (not b!1188879) (not b!1188865) b_and!81909 (not b_next!29429) (not b!1188862) (not b_next!29433) (not b!1188852) (not b!1188854) (not b!1188868) (not b!1188864) b_and!81911 (not b!1188851) (not b!1188856) (not b!1188863) b_and!81913 (not b!1188867) (not b!1188858) (not b!1188861) (not b!1188859) b_and!81915 (not b_next!29435) (not b!1188860))
(check-sat b_and!81911 (not b_next!29431) b_and!81913 b_and!81915 b_and!81909 (not b_next!29435) (not b_next!29429) (not b_next!29433))
(get-model)

(declare-fun d!339854 () Bool)

(declare-fun res!537127 () Bool)

(declare-fun e!764164 () Bool)

(assert (=> d!339854 (=> res!537127 e!764164)))

(assert (=> d!339854 (= res!537127 (or (not ((_ is Cons!11968) l!6534)) (not ((_ is Cons!11968) (t!112138 l!6534)))))))

(assert (=> d!339854 (= (tokensListTwoByTwoPredicateSeparableList!184 thiss!27592 l!6534 rules!4386) e!764164)))

(declare-fun b!1188892 () Bool)

(declare-fun e!764165 () Bool)

(assert (=> b!1188892 (= e!764164 e!764165)))

(declare-fun res!537128 () Bool)

(assert (=> b!1188892 (=> (not res!537128) (not e!764165))))

(declare-fun separableTokensPredicate!173 (LexerInterface!1790 Token!3852 Token!3852 List!11991) Bool)

(assert (=> b!1188892 (= res!537128 (separableTokensPredicate!173 thiss!27592 (h!17369 l!6534) (h!17369 (t!112138 l!6534)) rules!4386))))

(declare-fun lt!408763 () Unit!18350)

(declare-fun Unit!18355 () Unit!18350)

(assert (=> b!1188892 (= lt!408763 Unit!18355)))

(declare-fun size!9430 (BalanceConc!7854) Int)

(declare-fun charsOf!1111 (Token!3852) BalanceConc!7854)

(assert (=> b!1188892 (> (size!9430 (charsOf!1111 (h!17369 (t!112138 l!6534)))) 0)))

(declare-fun lt!408764 () Unit!18350)

(declare-fun Unit!18356 () Unit!18350)

(assert (=> b!1188892 (= lt!408764 Unit!18356)))

(assert (=> b!1188892 (rulesProduceIndividualToken!816 thiss!27592 rules!4386 (h!17369 (t!112138 l!6534)))))

(declare-fun lt!408766 () Unit!18350)

(declare-fun Unit!18357 () Unit!18350)

(assert (=> b!1188892 (= lt!408766 Unit!18357)))

(assert (=> b!1188892 (rulesProduceIndividualToken!816 thiss!27592 rules!4386 (h!17369 l!6534))))

(declare-fun lt!408760 () Unit!18350)

(declare-fun lt!408765 () Unit!18350)

(assert (=> b!1188892 (= lt!408760 lt!408765)))

(assert (=> b!1188892 (rulesProduceIndividualToken!816 thiss!27592 rules!4386 (h!17369 (t!112138 l!6534)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!332 (LexerInterface!1790 List!11991 List!11992 Token!3852) Unit!18350)

(assert (=> b!1188892 (= lt!408765 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!332 thiss!27592 rules!4386 l!6534 (h!17369 (t!112138 l!6534))))))

(declare-fun lt!408761 () Unit!18350)

(declare-fun lt!408762 () Unit!18350)

(assert (=> b!1188892 (= lt!408761 lt!408762)))

(assert (=> b!1188892 (rulesProduceIndividualToken!816 thiss!27592 rules!4386 (h!17369 l!6534))))

(assert (=> b!1188892 (= lt!408762 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!332 thiss!27592 rules!4386 l!6534 (h!17369 l!6534)))))

(declare-fun b!1188893 () Bool)

(assert (=> b!1188893 (= e!764165 (tokensListTwoByTwoPredicateSeparableList!184 thiss!27592 (Cons!11968 (h!17369 (t!112138 l!6534)) (t!112138 (t!112138 l!6534))) rules!4386))))

(assert (= (and d!339854 (not res!537127)) b!1188892))

(assert (= (and b!1188892 res!537128) b!1188893))

(declare-fun m!1364185 () Bool)

(assert (=> b!1188892 m!1364185))

(declare-fun m!1364187 () Bool)

(assert (=> b!1188892 m!1364187))

(declare-fun m!1364189 () Bool)

(assert (=> b!1188892 m!1364189))

(declare-fun m!1364191 () Bool)

(assert (=> b!1188892 m!1364191))

(declare-fun m!1364193 () Bool)

(assert (=> b!1188892 m!1364193))

(assert (=> b!1188892 m!1364187))

(declare-fun m!1364195 () Bool)

(assert (=> b!1188892 m!1364195))

(declare-fun m!1364197 () Bool)

(assert (=> b!1188892 m!1364197))

(declare-fun m!1364199 () Bool)

(assert (=> b!1188893 m!1364199))

(assert (=> b!1188860 d!339854))

(declare-fun bs!287703 () Bool)

(declare-fun d!339858 () Bool)

(assert (= bs!287703 (and d!339858 b!1188864)))

(declare-fun lambda!48997 () Int)

(assert (=> bs!287703 (= (= thiss!27592 Lexer!1788) (= lambda!48997 lambda!48990))))

(declare-fun b!1188942 () Bool)

(declare-fun e!764212 () Bool)

(assert (=> b!1188942 (= e!764212 true)))

(declare-fun b!1188941 () Bool)

(declare-fun e!764211 () Bool)

(assert (=> b!1188941 (= e!764211 e!764212)))

(declare-fun b!1188940 () Bool)

(declare-fun e!764210 () Bool)

(assert (=> b!1188940 (= e!764210 e!764211)))

(assert (=> d!339858 e!764210))

(assert (= b!1188941 b!1188942))

(assert (= b!1188940 b!1188941))

(assert (= (and d!339858 ((_ is Cons!11967) rules!4386)) b!1188940))

(assert (=> b!1188942 (< (dynLambda!5364 order!7481 (toValue!3212 (transformation!2095 (h!17368 rules!4386)))) (dynLambda!5365 order!7483 lambda!48997))))

(assert (=> b!1188942 (< (dynLambda!5366 order!7485 (toChars!3071 (transformation!2095 (h!17368 rules!4386)))) (dynLambda!5365 order!7483 lambda!48997))))

(assert (=> d!339858 true))

(declare-fun lt!408779 () Bool)

(assert (=> d!339858 (= lt!408779 (forall!3165 (t!112138 lt!408724) lambda!48997))))

(declare-fun e!764208 () Bool)

(assert (=> d!339858 (= lt!408779 e!764208)))

(declare-fun res!537166 () Bool)

(assert (=> d!339858 (=> res!537166 e!764208)))

(assert (=> d!339858 (= res!537166 (not ((_ is Cons!11968) (t!112138 lt!408724))))))

(assert (=> d!339858 (not (isEmpty!7193 rules!4386))))

(assert (=> d!339858 (= (rulesProduceEachTokenIndividuallyList!656 thiss!27592 rules!4386 (t!112138 lt!408724)) lt!408779)))

(declare-fun b!1188938 () Bool)

(declare-fun e!764209 () Bool)

(assert (=> b!1188938 (= e!764208 e!764209)))

(declare-fun res!537165 () Bool)

(assert (=> b!1188938 (=> (not res!537165) (not e!764209))))

(assert (=> b!1188938 (= res!537165 (rulesProduceIndividualToken!816 thiss!27592 rules!4386 (h!17369 (t!112138 lt!408724))))))

(declare-fun b!1188939 () Bool)

(assert (=> b!1188939 (= e!764209 (rulesProduceEachTokenIndividuallyList!656 thiss!27592 rules!4386 (t!112138 (t!112138 lt!408724))))))

(assert (= (and d!339858 (not res!537166)) b!1188938))

(assert (= (and b!1188938 res!537165) b!1188939))

(declare-fun m!1364229 () Bool)

(assert (=> d!339858 m!1364229))

(assert (=> d!339858 m!1364123))

(declare-fun m!1364231 () Bool)

(assert (=> b!1188938 m!1364231))

(declare-fun m!1364233 () Bool)

(assert (=> b!1188939 m!1364233))

(assert (=> b!1188859 d!339858))

(declare-fun d!339876 () Bool)

(declare-fun res!537167 () Bool)

(declare-fun e!764213 () Bool)

(assert (=> d!339876 (=> res!537167 e!764213)))

(assert (=> d!339876 (= res!537167 (or (not ((_ is Cons!11968) (t!112138 l!6534))) (not ((_ is Cons!11968) (t!112138 (t!112138 l!6534))))))))

(assert (=> d!339876 (= (tokensListTwoByTwoPredicateSeparableList!184 thiss!27592 (t!112138 l!6534) rules!4386) e!764213)))

(declare-fun b!1188945 () Bool)

(declare-fun e!764214 () Bool)

(assert (=> b!1188945 (= e!764213 e!764214)))

(declare-fun res!537168 () Bool)

(assert (=> b!1188945 (=> (not res!537168) (not e!764214))))

(assert (=> b!1188945 (= res!537168 (separableTokensPredicate!173 thiss!27592 (h!17369 (t!112138 l!6534)) (h!17369 (t!112138 (t!112138 l!6534))) rules!4386))))

(declare-fun lt!408783 () Unit!18350)

(declare-fun Unit!18358 () Unit!18350)

(assert (=> b!1188945 (= lt!408783 Unit!18358)))

(assert (=> b!1188945 (> (size!9430 (charsOf!1111 (h!17369 (t!112138 (t!112138 l!6534))))) 0)))

(declare-fun lt!408784 () Unit!18350)

(declare-fun Unit!18359 () Unit!18350)

(assert (=> b!1188945 (= lt!408784 Unit!18359)))

(assert (=> b!1188945 (rulesProduceIndividualToken!816 thiss!27592 rules!4386 (h!17369 (t!112138 (t!112138 l!6534))))))

(declare-fun lt!408786 () Unit!18350)

(declare-fun Unit!18360 () Unit!18350)

(assert (=> b!1188945 (= lt!408786 Unit!18360)))

(assert (=> b!1188945 (rulesProduceIndividualToken!816 thiss!27592 rules!4386 (h!17369 (t!112138 l!6534)))))

(declare-fun lt!408780 () Unit!18350)

(declare-fun lt!408785 () Unit!18350)

(assert (=> b!1188945 (= lt!408780 lt!408785)))

(assert (=> b!1188945 (rulesProduceIndividualToken!816 thiss!27592 rules!4386 (h!17369 (t!112138 (t!112138 l!6534))))))

(assert (=> b!1188945 (= lt!408785 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!332 thiss!27592 rules!4386 (t!112138 l!6534) (h!17369 (t!112138 (t!112138 l!6534)))))))

(declare-fun lt!408781 () Unit!18350)

(declare-fun lt!408782 () Unit!18350)

(assert (=> b!1188945 (= lt!408781 lt!408782)))

(assert (=> b!1188945 (rulesProduceIndividualToken!816 thiss!27592 rules!4386 (h!17369 (t!112138 l!6534)))))

(assert (=> b!1188945 (= lt!408782 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!332 thiss!27592 rules!4386 (t!112138 l!6534) (h!17369 (t!112138 l!6534))))))

(declare-fun b!1188946 () Bool)

(assert (=> b!1188946 (= e!764214 (tokensListTwoByTwoPredicateSeparableList!184 thiss!27592 (Cons!11968 (h!17369 (t!112138 (t!112138 l!6534))) (t!112138 (t!112138 (t!112138 l!6534)))) rules!4386))))

(assert (= (and d!339876 (not res!537167)) b!1188945))

(assert (= (and b!1188945 res!537168) b!1188946))

(declare-fun m!1364235 () Bool)

(assert (=> b!1188945 m!1364235))

(declare-fun m!1364237 () Bool)

(assert (=> b!1188945 m!1364237))

(declare-fun m!1364239 () Bool)

(assert (=> b!1188945 m!1364239))

(declare-fun m!1364241 () Bool)

(assert (=> b!1188945 m!1364241))

(assert (=> b!1188945 m!1364185))

(assert (=> b!1188945 m!1364237))

(declare-fun m!1364243 () Bool)

(assert (=> b!1188945 m!1364243))

(declare-fun m!1364245 () Bool)

(assert (=> b!1188945 m!1364245))

(declare-fun m!1364247 () Bool)

(assert (=> b!1188946 m!1364247))

(assert (=> b!1188869 d!339876))

(declare-fun b!1188957 () Bool)

(declare-fun e!764221 () Bool)

(declare-fun e!764222 () Bool)

(assert (=> b!1188957 (= e!764221 e!764222)))

(declare-fun c!197385 () Bool)

(assert (=> b!1188957 (= c!197385 ((_ is IntegerValue!6484) (value!67764 (h!17369 l!6534))))))

(declare-fun d!339878 () Bool)

(declare-fun c!197386 () Bool)

(assert (=> d!339878 (= c!197386 ((_ is IntegerValue!6483) (value!67764 (h!17369 l!6534))))))

(assert (=> d!339878 (= (inv!21 (value!67764 (h!17369 l!6534))) e!764221)))

(declare-fun b!1188958 () Bool)

(declare-fun inv!17 (TokenValue!2161) Bool)

(assert (=> b!1188958 (= e!764222 (inv!17 (value!67764 (h!17369 l!6534))))))

(declare-fun b!1188959 () Bool)

(declare-fun res!537171 () Bool)

(declare-fun e!764223 () Bool)

(assert (=> b!1188959 (=> res!537171 e!764223)))

(assert (=> b!1188959 (= res!537171 (not ((_ is IntegerValue!6485) (value!67764 (h!17369 l!6534)))))))

(assert (=> b!1188959 (= e!764222 e!764223)))

(declare-fun b!1188960 () Bool)

(declare-fun inv!16 (TokenValue!2161) Bool)

(assert (=> b!1188960 (= e!764221 (inv!16 (value!67764 (h!17369 l!6534))))))

(declare-fun b!1188961 () Bool)

(declare-fun inv!15 (TokenValue!2161) Bool)

(assert (=> b!1188961 (= e!764223 (inv!15 (value!67764 (h!17369 l!6534))))))

(assert (= (and d!339878 c!197386) b!1188960))

(assert (= (and d!339878 (not c!197386)) b!1188957))

(assert (= (and b!1188957 c!197385) b!1188958))

(assert (= (and b!1188957 (not c!197385)) b!1188959))

(assert (= (and b!1188959 (not res!537171)) b!1188961))

(declare-fun m!1364249 () Bool)

(assert (=> b!1188958 m!1364249))

(declare-fun m!1364251 () Bool)

(assert (=> b!1188960 m!1364251))

(declare-fun m!1364253 () Bool)

(assert (=> b!1188961 m!1364253))

(assert (=> b!1188858 d!339878))

(declare-fun d!339880 () Bool)

(declare-fun res!537172 () Bool)

(declare-fun e!764224 () Bool)

(assert (=> d!339880 (=> res!537172 e!764224)))

(assert (=> d!339880 (= res!537172 (or (not ((_ is Cons!11968) lt!408724)) (not ((_ is Cons!11968) (t!112138 lt!408724)))))))

(assert (=> d!339880 (= (tokensListTwoByTwoPredicateSeparableList!184 thiss!27592 lt!408724 rules!4386) e!764224)))

(declare-fun b!1188962 () Bool)

(declare-fun e!764225 () Bool)

(assert (=> b!1188962 (= e!764224 e!764225)))

(declare-fun res!537173 () Bool)

(assert (=> b!1188962 (=> (not res!537173) (not e!764225))))

(assert (=> b!1188962 (= res!537173 (separableTokensPredicate!173 thiss!27592 (h!17369 lt!408724) (h!17369 (t!112138 lt!408724)) rules!4386))))

(declare-fun lt!408790 () Unit!18350)

(declare-fun Unit!18361 () Unit!18350)

(assert (=> b!1188962 (= lt!408790 Unit!18361)))

(assert (=> b!1188962 (> (size!9430 (charsOf!1111 (h!17369 (t!112138 lt!408724)))) 0)))

(declare-fun lt!408791 () Unit!18350)

(declare-fun Unit!18362 () Unit!18350)

(assert (=> b!1188962 (= lt!408791 Unit!18362)))

(assert (=> b!1188962 (rulesProduceIndividualToken!816 thiss!27592 rules!4386 (h!17369 (t!112138 lt!408724)))))

(declare-fun lt!408793 () Unit!18350)

(declare-fun Unit!18363 () Unit!18350)

(assert (=> b!1188962 (= lt!408793 Unit!18363)))

(assert (=> b!1188962 (rulesProduceIndividualToken!816 thiss!27592 rules!4386 (h!17369 lt!408724))))

(declare-fun lt!408787 () Unit!18350)

(declare-fun lt!408792 () Unit!18350)

(assert (=> b!1188962 (= lt!408787 lt!408792)))

(assert (=> b!1188962 (rulesProduceIndividualToken!816 thiss!27592 rules!4386 (h!17369 (t!112138 lt!408724)))))

(assert (=> b!1188962 (= lt!408792 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!332 thiss!27592 rules!4386 lt!408724 (h!17369 (t!112138 lt!408724))))))

(declare-fun lt!408788 () Unit!18350)

(declare-fun lt!408789 () Unit!18350)

(assert (=> b!1188962 (= lt!408788 lt!408789)))

(assert (=> b!1188962 (rulesProduceIndividualToken!816 thiss!27592 rules!4386 (h!17369 lt!408724))))

(assert (=> b!1188962 (= lt!408789 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!332 thiss!27592 rules!4386 lt!408724 (h!17369 lt!408724)))))

(declare-fun b!1188963 () Bool)

(assert (=> b!1188963 (= e!764225 (tokensListTwoByTwoPredicateSeparableList!184 thiss!27592 (Cons!11968 (h!17369 (t!112138 lt!408724)) (t!112138 (t!112138 lt!408724))) rules!4386))))

(assert (= (and d!339880 (not res!537172)) b!1188962))

(assert (= (and b!1188962 res!537173) b!1188963))

(assert (=> b!1188962 m!1364231))

(declare-fun m!1364255 () Bool)

(assert (=> b!1188962 m!1364255))

(declare-fun m!1364257 () Bool)

(assert (=> b!1188962 m!1364257))

(declare-fun m!1364259 () Bool)

(assert (=> b!1188962 m!1364259))

(assert (=> b!1188962 m!1364159))

(assert (=> b!1188962 m!1364255))

(declare-fun m!1364261 () Bool)

(assert (=> b!1188962 m!1364261))

(declare-fun m!1364263 () Bool)

(assert (=> b!1188962 m!1364263))

(declare-fun m!1364265 () Bool)

(assert (=> b!1188963 m!1364265))

(assert (=> b!1188852 d!339880))

(declare-fun d!339882 () Bool)

(declare-fun lt!408825 () Bool)

(declare-fun e!764285 () Bool)

(assert (=> d!339882 (= lt!408825 e!764285)))

(declare-fun res!537207 () Bool)

(assert (=> d!339882 (=> (not res!537207) (not e!764285))))

(declare-datatypes ((IArray!7841 0))(
  ( (IArray!7842 (innerList!3978 List!11992)) )
))
(declare-datatypes ((Conc!3918 0))(
  ( (Node!3918 (left!10415 Conc!3918) (right!10745 Conc!3918) (csize!8066 Int) (cheight!4129 Int)) (Leaf!5996 (xs!6623 IArray!7841) (csize!8067 Int)) (Empty!3918) )
))
(declare-datatypes ((BalanceConc!7858 0))(
  ( (BalanceConc!7859 (c!197426 Conc!3918)) )
))
(declare-fun list!4389 (BalanceConc!7858) List!11992)

(declare-datatypes ((tuple2!12126 0))(
  ( (tuple2!12127 (_1!6910 BalanceConc!7858) (_2!6910 BalanceConc!7854)) )
))
(declare-fun lex!745 (LexerInterface!1790 List!11991 BalanceConc!7854) tuple2!12126)

(declare-fun print!682 (LexerInterface!1790 BalanceConc!7858) BalanceConc!7854)

(declare-fun singletonSeq!730 (Token!3852) BalanceConc!7858)

(assert (=> d!339882 (= res!537207 (= (list!4389 (_1!6910 (lex!745 thiss!27592 rules!4386 (print!682 thiss!27592 (singletonSeq!730 (h!17369 lt!408724)))))) (list!4389 (singletonSeq!730 (h!17369 lt!408724)))))))

(declare-fun e!764286 () Bool)

(assert (=> d!339882 (= lt!408825 e!764286)))

(declare-fun res!537208 () Bool)

(assert (=> d!339882 (=> (not res!537208) (not e!764286))))

(declare-fun lt!408826 () tuple2!12126)

(declare-fun size!9433 (BalanceConc!7858) Int)

(assert (=> d!339882 (= res!537208 (= (size!9433 (_1!6910 lt!408826)) 1))))

(assert (=> d!339882 (= lt!408826 (lex!745 thiss!27592 rules!4386 (print!682 thiss!27592 (singletonSeq!730 (h!17369 lt!408724)))))))

(assert (=> d!339882 (not (isEmpty!7193 rules!4386))))

(assert (=> d!339882 (= (rulesProduceIndividualToken!816 thiss!27592 rules!4386 (h!17369 lt!408724)) lt!408825)))

(declare-fun b!1189047 () Bool)

(declare-fun res!537209 () Bool)

(assert (=> b!1189047 (=> (not res!537209) (not e!764286))))

(declare-fun apply!2601 (BalanceConc!7858 Int) Token!3852)

(assert (=> b!1189047 (= res!537209 (= (apply!2601 (_1!6910 lt!408826) 0) (h!17369 lt!408724)))))

(declare-fun b!1189048 () Bool)

(declare-fun isEmpty!7195 (BalanceConc!7854) Bool)

(assert (=> b!1189048 (= e!764286 (isEmpty!7195 (_2!6910 lt!408826)))))

(declare-fun b!1189049 () Bool)

(assert (=> b!1189049 (= e!764285 (isEmpty!7195 (_2!6910 (lex!745 thiss!27592 rules!4386 (print!682 thiss!27592 (singletonSeq!730 (h!17369 lt!408724)))))))))

(assert (= (and d!339882 res!537208) b!1189047))

(assert (= (and b!1189047 res!537209) b!1189048))

(assert (= (and d!339882 res!537207) b!1189049))

(declare-fun m!1364323 () Bool)

(assert (=> d!339882 m!1364323))

(declare-fun m!1364325 () Bool)

(assert (=> d!339882 m!1364325))

(declare-fun m!1364327 () Bool)

(assert (=> d!339882 m!1364327))

(assert (=> d!339882 m!1364123))

(assert (=> d!339882 m!1364323))

(assert (=> d!339882 m!1364325))

(declare-fun m!1364329 () Bool)

(assert (=> d!339882 m!1364329))

(assert (=> d!339882 m!1364323))

(declare-fun m!1364331 () Bool)

(assert (=> d!339882 m!1364331))

(declare-fun m!1364333 () Bool)

(assert (=> d!339882 m!1364333))

(declare-fun m!1364335 () Bool)

(assert (=> b!1189047 m!1364335))

(declare-fun m!1364337 () Bool)

(assert (=> b!1189048 m!1364337))

(assert (=> b!1189049 m!1364323))

(assert (=> b!1189049 m!1364323))

(assert (=> b!1189049 m!1364325))

(assert (=> b!1189049 m!1364325))

(assert (=> b!1189049 m!1364327))

(declare-fun m!1364339 () Bool)

(assert (=> b!1189049 m!1364339))

(assert (=> b!1188862 d!339882))

(declare-fun bs!287712 () Bool)

(declare-fun d!339902 () Bool)

(assert (= bs!287712 (and d!339902 b!1188864)))

(declare-fun lambda!49002 () Int)

(assert (=> bs!287712 (= (= thiss!27592 Lexer!1788) (= lambda!49002 lambda!48990))))

(declare-fun bs!287713 () Bool)

(assert (= bs!287713 (and d!339902 d!339858)))

(assert (=> bs!287713 (= lambda!49002 lambda!48997)))

(declare-fun b!1189054 () Bool)

(declare-fun e!764291 () Bool)

(assert (=> b!1189054 (= e!764291 true)))

(declare-fun b!1189053 () Bool)

(declare-fun e!764290 () Bool)

(assert (=> b!1189053 (= e!764290 e!764291)))

(declare-fun b!1189052 () Bool)

(declare-fun e!764289 () Bool)

(assert (=> b!1189052 (= e!764289 e!764290)))

(assert (=> d!339902 e!764289))

(assert (= b!1189053 b!1189054))

(assert (= b!1189052 b!1189053))

(assert (= (and d!339902 ((_ is Cons!11967) rules!4386)) b!1189052))

(assert (=> b!1189054 (< (dynLambda!5364 order!7481 (toValue!3212 (transformation!2095 (h!17368 rules!4386)))) (dynLambda!5365 order!7483 lambda!49002))))

(assert (=> b!1189054 (< (dynLambda!5366 order!7485 (toChars!3071 (transformation!2095 (h!17368 rules!4386)))) (dynLambda!5365 order!7483 lambda!49002))))

(assert (=> d!339902 true))

(declare-fun lt!408827 () Bool)

(assert (=> d!339902 (= lt!408827 (forall!3165 (t!112138 l!6534) lambda!49002))))

(declare-fun e!764287 () Bool)

(assert (=> d!339902 (= lt!408827 e!764287)))

(declare-fun res!537211 () Bool)

(assert (=> d!339902 (=> res!537211 e!764287)))

(assert (=> d!339902 (= res!537211 (not ((_ is Cons!11968) (t!112138 l!6534))))))

(assert (=> d!339902 (not (isEmpty!7193 rules!4386))))

(assert (=> d!339902 (= (rulesProduceEachTokenIndividuallyList!656 thiss!27592 rules!4386 (t!112138 l!6534)) lt!408827)))

(declare-fun b!1189050 () Bool)

(declare-fun e!764288 () Bool)

(assert (=> b!1189050 (= e!764287 e!764288)))

(declare-fun res!537210 () Bool)

(assert (=> b!1189050 (=> (not res!537210) (not e!764288))))

(assert (=> b!1189050 (= res!537210 (rulesProduceIndividualToken!816 thiss!27592 rules!4386 (h!17369 (t!112138 l!6534))))))

(declare-fun b!1189051 () Bool)

(assert (=> b!1189051 (= e!764288 (rulesProduceEachTokenIndividuallyList!656 thiss!27592 rules!4386 (t!112138 (t!112138 l!6534))))))

(assert (= (and d!339902 (not res!537211)) b!1189050))

(assert (= (and b!1189050 res!537210) b!1189051))

(declare-fun m!1364341 () Bool)

(assert (=> d!339902 m!1364341))

(assert (=> d!339902 m!1364123))

(assert (=> b!1189050 m!1364185))

(declare-fun m!1364343 () Bool)

(assert (=> b!1189051 m!1364343))

(assert (=> b!1188851 d!339902))

(declare-fun bs!287714 () Bool)

(declare-fun d!339904 () Bool)

(assert (= bs!287714 (and d!339904 b!1188864)))

(declare-fun lambda!49003 () Int)

(assert (=> bs!287714 (= (= thiss!27592 Lexer!1788) (= lambda!49003 lambda!48990))))

(declare-fun bs!287715 () Bool)

(assert (= bs!287715 (and d!339904 d!339858)))

(assert (=> bs!287715 (= lambda!49003 lambda!48997)))

(declare-fun bs!287716 () Bool)

(assert (= bs!287716 (and d!339904 d!339902)))

(assert (=> bs!287716 (= lambda!49003 lambda!49002)))

(declare-fun b!1189059 () Bool)

(declare-fun e!764296 () Bool)

(assert (=> b!1189059 (= e!764296 true)))

(declare-fun b!1189058 () Bool)

(declare-fun e!764295 () Bool)

(assert (=> b!1189058 (= e!764295 e!764296)))

(declare-fun b!1189057 () Bool)

(declare-fun e!764294 () Bool)

(assert (=> b!1189057 (= e!764294 e!764295)))

(assert (=> d!339904 e!764294))

(assert (= b!1189058 b!1189059))

(assert (= b!1189057 b!1189058))

(assert (= (and d!339904 ((_ is Cons!11967) rules!4386)) b!1189057))

(assert (=> b!1189059 (< (dynLambda!5364 order!7481 (toValue!3212 (transformation!2095 (h!17368 rules!4386)))) (dynLambda!5365 order!7483 lambda!49003))))

(assert (=> b!1189059 (< (dynLambda!5366 order!7485 (toChars!3071 (transformation!2095 (h!17368 rules!4386)))) (dynLambda!5365 order!7483 lambda!49003))))

(assert (=> d!339904 true))

(declare-fun lt!408828 () Bool)

(assert (=> d!339904 (= lt!408828 (forall!3165 l!6534 lambda!49003))))

(declare-fun e!764292 () Bool)

(assert (=> d!339904 (= lt!408828 e!764292)))

(declare-fun res!537213 () Bool)

(assert (=> d!339904 (=> res!537213 e!764292)))

(assert (=> d!339904 (= res!537213 (not ((_ is Cons!11968) l!6534)))))

(assert (=> d!339904 (not (isEmpty!7193 rules!4386))))

(assert (=> d!339904 (= (rulesProduceEachTokenIndividuallyList!656 thiss!27592 rules!4386 l!6534) lt!408828)))

(declare-fun b!1189055 () Bool)

(declare-fun e!764293 () Bool)

(assert (=> b!1189055 (= e!764292 e!764293)))

(declare-fun res!537212 () Bool)

(assert (=> b!1189055 (=> (not res!537212) (not e!764293))))

(assert (=> b!1189055 (= res!537212 (rulesProduceIndividualToken!816 thiss!27592 rules!4386 (h!17369 l!6534)))))

(declare-fun b!1189056 () Bool)

(assert (=> b!1189056 (= e!764293 (rulesProduceEachTokenIndividuallyList!656 thiss!27592 rules!4386 (t!112138 l!6534)))))

(assert (= (and d!339904 (not res!537213)) b!1189055))

(assert (= (and b!1189055 res!537212) b!1189056))

(declare-fun m!1364345 () Bool)

(assert (=> d!339904 m!1364345))

(assert (=> d!339904 m!1364123))

(assert (=> b!1189055 m!1364193))

(assert (=> b!1189056 m!1364167))

(assert (=> b!1188861 d!339904))

(declare-fun d!339906 () Bool)

(assert (=> d!339906 (= (isEmpty!7193 rules!4386) ((_ is Nil!11967) rules!4386))))

(assert (=> b!1188865 d!339906))

(declare-fun bs!287717 () Bool)

(declare-fun d!339908 () Bool)

(assert (= bs!287717 (and d!339908 b!1188864)))

(declare-fun lambda!49004 () Int)

(assert (=> bs!287717 (= (= thiss!27592 Lexer!1788) (= lambda!49004 lambda!48990))))

(declare-fun bs!287718 () Bool)

(assert (= bs!287718 (and d!339908 d!339858)))

(assert (=> bs!287718 (= lambda!49004 lambda!48997)))

(declare-fun bs!287719 () Bool)

(assert (= bs!287719 (and d!339908 d!339902)))

(assert (=> bs!287719 (= lambda!49004 lambda!49002)))

(declare-fun bs!287720 () Bool)

(assert (= bs!287720 (and d!339908 d!339904)))

(assert (=> bs!287720 (= lambda!49004 lambda!49003)))

(declare-fun b!1189064 () Bool)

(declare-fun e!764301 () Bool)

(assert (=> b!1189064 (= e!764301 true)))

(declare-fun b!1189063 () Bool)

(declare-fun e!764300 () Bool)

(assert (=> b!1189063 (= e!764300 e!764301)))

(declare-fun b!1189062 () Bool)

(declare-fun e!764299 () Bool)

(assert (=> b!1189062 (= e!764299 e!764300)))

(assert (=> d!339908 e!764299))

(assert (= b!1189063 b!1189064))

(assert (= b!1189062 b!1189063))

(assert (= (and d!339908 ((_ is Cons!11967) rules!4386)) b!1189062))

(assert (=> b!1189064 (< (dynLambda!5364 order!7481 (toValue!3212 (transformation!2095 (h!17368 rules!4386)))) (dynLambda!5365 order!7483 lambda!49004))))

(assert (=> b!1189064 (< (dynLambda!5366 order!7485 (toChars!3071 (transformation!2095 (h!17368 rules!4386)))) (dynLambda!5365 order!7483 lambda!49004))))

(assert (=> d!339908 true))

(declare-fun lt!408829 () Bool)

(assert (=> d!339908 (= lt!408829 (forall!3165 (t!112138 lt!408722) lambda!49004))))

(declare-fun e!764297 () Bool)

(assert (=> d!339908 (= lt!408829 e!764297)))

(declare-fun res!537215 () Bool)

(assert (=> d!339908 (=> res!537215 e!764297)))

(assert (=> d!339908 (= res!537215 (not ((_ is Cons!11968) (t!112138 lt!408722))))))

(assert (=> d!339908 (not (isEmpty!7193 rules!4386))))

(assert (=> d!339908 (= (rulesProduceEachTokenIndividuallyList!656 thiss!27592 rules!4386 (t!112138 lt!408722)) lt!408829)))

(declare-fun b!1189060 () Bool)

(declare-fun e!764298 () Bool)

(assert (=> b!1189060 (= e!764297 e!764298)))

(declare-fun res!537214 () Bool)

(assert (=> b!1189060 (=> (not res!537214) (not e!764298))))

(assert (=> b!1189060 (= res!537214 (rulesProduceIndividualToken!816 thiss!27592 rules!4386 (h!17369 (t!112138 lt!408722))))))

(declare-fun b!1189061 () Bool)

(assert (=> b!1189061 (= e!764298 (rulesProduceEachTokenIndividuallyList!656 thiss!27592 rules!4386 (t!112138 (t!112138 lt!408722))))))

(assert (= (and d!339908 (not res!537215)) b!1189060))

(assert (= (and b!1189060 res!537214) b!1189061))

(declare-fun m!1364347 () Bool)

(assert (=> d!339908 m!1364347))

(assert (=> d!339908 m!1364123))

(declare-fun m!1364349 () Bool)

(assert (=> b!1189060 m!1364349))

(declare-fun m!1364351 () Bool)

(assert (=> b!1189061 m!1364351))

(assert (=> b!1188854 d!339908))

(declare-fun d!339910 () Bool)

(assert (=> d!339910 (subseq!339 (drop!563 l!6534 i!1621) l!6534)))

(declare-fun lt!408832 () Unit!18350)

(declare-fun choose!7684 (List!11992 Int) Unit!18350)

(assert (=> d!339910 (= lt!408832 (choose!7684 l!6534 i!1621))))

(assert (=> d!339910 (= (lemmaDropSubseq!102 l!6534 i!1621) lt!408832)))

(declare-fun bs!287721 () Bool)

(assert (= bs!287721 d!339910))

(assert (=> bs!287721 m!1364129))

(assert (=> bs!287721 m!1364129))

(declare-fun m!1364353 () Bool)

(assert (=> bs!287721 m!1364353))

(declare-fun m!1364355 () Bool)

(assert (=> bs!287721 m!1364355))

(assert (=> b!1188864 d!339910))

(declare-fun b!1189073 () Bool)

(declare-fun e!764311 () Bool)

(declare-fun e!764310 () Bool)

(assert (=> b!1189073 (= e!764311 e!764310)))

(declare-fun res!537226 () Bool)

(assert (=> b!1189073 (=> (not res!537226) (not e!764310))))

(assert (=> b!1189073 (= res!537226 ((_ is Cons!11968) l!6534))))

(declare-fun b!1189076 () Bool)

(declare-fun e!764313 () Bool)

(assert (=> b!1189076 (= e!764313 (subseq!339 lt!408722 (t!112138 l!6534)))))

(declare-fun b!1189074 () Bool)

(assert (=> b!1189074 (= e!764310 e!764313)))

(declare-fun res!537224 () Bool)

(assert (=> b!1189074 (=> res!537224 e!764313)))

(declare-fun e!764312 () Bool)

(assert (=> b!1189074 (= res!537224 e!764312)))

(declare-fun res!537225 () Bool)

(assert (=> b!1189074 (=> (not res!537225) (not e!764312))))

(assert (=> b!1189074 (= res!537225 (= (h!17369 lt!408722) (h!17369 l!6534)))))

(declare-fun b!1189075 () Bool)

(assert (=> b!1189075 (= e!764312 (subseq!339 (t!112138 lt!408722) (t!112138 l!6534)))))

(declare-fun d!339912 () Bool)

(declare-fun res!537227 () Bool)

(assert (=> d!339912 (=> res!537227 e!764311)))

(assert (=> d!339912 (= res!537227 ((_ is Nil!11968) lt!408722))))

(assert (=> d!339912 (= (subseq!339 lt!408722 l!6534) e!764311)))

(assert (= (and d!339912 (not res!537227)) b!1189073))

(assert (= (and b!1189073 res!537226) b!1189074))

(assert (= (and b!1189074 res!537225) b!1189075))

(assert (= (and b!1189074 (not res!537224)) b!1189076))

(declare-fun m!1364357 () Bool)

(assert (=> b!1189076 m!1364357))

(declare-fun m!1364359 () Bool)

(assert (=> b!1189075 m!1364359))

(assert (=> b!1188864 d!339912))

(declare-fun d!339914 () Bool)

(assert (=> d!339914 (forall!3165 lt!408724 lambda!48990)))

(declare-fun lt!408835 () Unit!18350)

(declare-fun choose!7685 (List!11992 List!11992 Int) Unit!18350)

(assert (=> d!339914 (= lt!408835 (choose!7685 lt!408724 (t!112138 l!6534) lambda!48990))))

(assert (=> d!339914 (forall!3165 (t!112138 l!6534) lambda!48990)))

(assert (=> d!339914 (= (lemmaForallSubseq!199 lt!408724 (t!112138 l!6534) lambda!48990) lt!408835)))

(declare-fun bs!287722 () Bool)

(assert (= bs!287722 d!339914))

(assert (=> bs!287722 m!1364151))

(declare-fun m!1364361 () Bool)

(assert (=> bs!287722 m!1364361))

(declare-fun m!1364363 () Bool)

(assert (=> bs!287722 m!1364363))

(assert (=> b!1188864 d!339914))

(declare-fun bs!287723 () Bool)

(declare-fun d!339916 () Bool)

(assert (= bs!287723 (and d!339916 d!339858)))

(declare-fun lambda!49005 () Int)

(assert (=> bs!287723 (= lambda!49005 lambda!48997)))

(declare-fun bs!287724 () Bool)

(assert (= bs!287724 (and d!339916 d!339902)))

(assert (=> bs!287724 (= lambda!49005 lambda!49002)))

(declare-fun bs!287725 () Bool)

(assert (= bs!287725 (and d!339916 d!339904)))

(assert (=> bs!287725 (= lambda!49005 lambda!49003)))

(declare-fun bs!287726 () Bool)

(assert (= bs!287726 (and d!339916 d!339908)))

(assert (=> bs!287726 (= lambda!49005 lambda!49004)))

(declare-fun bs!287727 () Bool)

(assert (= bs!287727 (and d!339916 b!1188864)))

(assert (=> bs!287727 (= (= thiss!27592 Lexer!1788) (= lambda!49005 lambda!48990))))

(declare-fun b!1189081 () Bool)

(declare-fun e!764318 () Bool)

(assert (=> b!1189081 (= e!764318 true)))

(declare-fun b!1189080 () Bool)

(declare-fun e!764317 () Bool)

(assert (=> b!1189080 (= e!764317 e!764318)))

(declare-fun b!1189079 () Bool)

(declare-fun e!764316 () Bool)

(assert (=> b!1189079 (= e!764316 e!764317)))

(assert (=> d!339916 e!764316))

(assert (= b!1189080 b!1189081))

(assert (= b!1189079 b!1189080))

(assert (= (and d!339916 ((_ is Cons!11967) rules!4386)) b!1189079))

(assert (=> b!1189081 (< (dynLambda!5364 order!7481 (toValue!3212 (transformation!2095 (h!17368 rules!4386)))) (dynLambda!5365 order!7483 lambda!49005))))

(assert (=> b!1189081 (< (dynLambda!5366 order!7485 (toChars!3071 (transformation!2095 (h!17368 rules!4386)))) (dynLambda!5365 order!7483 lambda!49005))))

(assert (=> d!339916 true))

(declare-fun lt!408836 () Bool)

(assert (=> d!339916 (= lt!408836 (forall!3165 lt!408722 lambda!49005))))

(declare-fun e!764314 () Bool)

(assert (=> d!339916 (= lt!408836 e!764314)))

(declare-fun res!537229 () Bool)

(assert (=> d!339916 (=> res!537229 e!764314)))

(assert (=> d!339916 (= res!537229 (not ((_ is Cons!11968) lt!408722)))))

(assert (=> d!339916 (not (isEmpty!7193 rules!4386))))

(assert (=> d!339916 (= (rulesProduceEachTokenIndividuallyList!656 thiss!27592 rules!4386 lt!408722) lt!408836)))

(declare-fun b!1189077 () Bool)

(declare-fun e!764315 () Bool)

(assert (=> b!1189077 (= e!764314 e!764315)))

(declare-fun res!537228 () Bool)

(assert (=> b!1189077 (=> (not res!537228) (not e!764315))))

(assert (=> b!1189077 (= res!537228 (rulesProduceIndividualToken!816 thiss!27592 rules!4386 (h!17369 lt!408722)))))

(declare-fun b!1189078 () Bool)

(assert (=> b!1189078 (= e!764315 (rulesProduceEachTokenIndividuallyList!656 thiss!27592 rules!4386 (t!112138 lt!408722)))))

(assert (= (and d!339916 (not res!537229)) b!1189077))

(assert (= (and b!1189077 res!537228) b!1189078))

(declare-fun m!1364365 () Bool)

(assert (=> d!339916 m!1364365))

(assert (=> d!339916 m!1364123))

(assert (=> b!1189077 m!1364153))

(assert (=> b!1189078 m!1364165))

(assert (=> b!1188864 d!339916))

(declare-fun b!1189082 () Bool)

(declare-fun e!764320 () Bool)

(declare-fun e!764319 () Bool)

(assert (=> b!1189082 (= e!764320 e!764319)))

(declare-fun res!537232 () Bool)

(assert (=> b!1189082 (=> (not res!537232) (not e!764319))))

(assert (=> b!1189082 (= res!537232 ((_ is Cons!11968) (t!112138 l!6534)))))

(declare-fun b!1189085 () Bool)

(declare-fun e!764322 () Bool)

(assert (=> b!1189085 (= e!764322 (subseq!339 lt!408724 (t!112138 (t!112138 l!6534))))))

(declare-fun b!1189083 () Bool)

(assert (=> b!1189083 (= e!764319 e!764322)))

(declare-fun res!537230 () Bool)

(assert (=> b!1189083 (=> res!537230 e!764322)))

(declare-fun e!764321 () Bool)

(assert (=> b!1189083 (= res!537230 e!764321)))

(declare-fun res!537231 () Bool)

(assert (=> b!1189083 (=> (not res!537231) (not e!764321))))

(assert (=> b!1189083 (= res!537231 (= (h!17369 lt!408724) (h!17369 (t!112138 l!6534))))))

(declare-fun b!1189084 () Bool)

(assert (=> b!1189084 (= e!764321 (subseq!339 (t!112138 lt!408724) (t!112138 (t!112138 l!6534))))))

(declare-fun d!339918 () Bool)

(declare-fun res!537233 () Bool)

(assert (=> d!339918 (=> res!537233 e!764320)))

(assert (=> d!339918 (= res!537233 ((_ is Nil!11968) lt!408724))))

(assert (=> d!339918 (= (subseq!339 lt!408724 (t!112138 l!6534)) e!764320)))

(assert (= (and d!339918 (not res!537233)) b!1189082))

(assert (= (and b!1189082 res!537232) b!1189083))

(assert (= (and b!1189083 res!537231) b!1189084))

(assert (= (and b!1189083 (not res!537230)) b!1189085))

(declare-fun m!1364367 () Bool)

(assert (=> b!1189085 m!1364367))

(declare-fun m!1364369 () Bool)

(assert (=> b!1189084 m!1364369))

(assert (=> b!1188864 d!339918))

(declare-fun bs!287728 () Bool)

(declare-fun d!339920 () Bool)

(assert (= bs!287728 (and d!339920 d!339858)))

(declare-fun lambda!49006 () Int)

(assert (=> bs!287728 (= lambda!49006 lambda!48997)))

(declare-fun bs!287729 () Bool)

(assert (= bs!287729 (and d!339920 d!339902)))

(assert (=> bs!287729 (= lambda!49006 lambda!49002)))

(declare-fun bs!287730 () Bool)

(assert (= bs!287730 (and d!339920 d!339916)))

(assert (=> bs!287730 (= lambda!49006 lambda!49005)))

(declare-fun bs!287731 () Bool)

(assert (= bs!287731 (and d!339920 d!339904)))

(assert (=> bs!287731 (= lambda!49006 lambda!49003)))

(declare-fun bs!287732 () Bool)

(assert (= bs!287732 (and d!339920 d!339908)))

(assert (=> bs!287732 (= lambda!49006 lambda!49004)))

(declare-fun bs!287733 () Bool)

(assert (= bs!287733 (and d!339920 b!1188864)))

(assert (=> bs!287733 (= (= thiss!27592 Lexer!1788) (= lambda!49006 lambda!48990))))

(declare-fun b!1189090 () Bool)

(declare-fun e!764327 () Bool)

(assert (=> b!1189090 (= e!764327 true)))

(declare-fun b!1189089 () Bool)

(declare-fun e!764326 () Bool)

(assert (=> b!1189089 (= e!764326 e!764327)))

(declare-fun b!1189088 () Bool)

(declare-fun e!764325 () Bool)

(assert (=> b!1189088 (= e!764325 e!764326)))

(assert (=> d!339920 e!764325))

(assert (= b!1189089 b!1189090))

(assert (= b!1189088 b!1189089))

(assert (= (and d!339920 ((_ is Cons!11967) rules!4386)) b!1189088))

(assert (=> b!1189090 (< (dynLambda!5364 order!7481 (toValue!3212 (transformation!2095 (h!17368 rules!4386)))) (dynLambda!5365 order!7483 lambda!49006))))

(assert (=> b!1189090 (< (dynLambda!5366 order!7485 (toChars!3071 (transformation!2095 (h!17368 rules!4386)))) (dynLambda!5365 order!7483 lambda!49006))))

(assert (=> d!339920 true))

(declare-fun lt!408837 () Bool)

(assert (=> d!339920 (= lt!408837 (forall!3165 lt!408724 lambda!49006))))

(declare-fun e!764323 () Bool)

(assert (=> d!339920 (= lt!408837 e!764323)))

(declare-fun res!537235 () Bool)

(assert (=> d!339920 (=> res!537235 e!764323)))

(assert (=> d!339920 (= res!537235 (not ((_ is Cons!11968) lt!408724)))))

(assert (=> d!339920 (not (isEmpty!7193 rules!4386))))

(assert (=> d!339920 (= (rulesProduceEachTokenIndividuallyList!656 thiss!27592 rules!4386 lt!408724) lt!408837)))

(declare-fun b!1189086 () Bool)

(declare-fun e!764324 () Bool)

(assert (=> b!1189086 (= e!764323 e!764324)))

(declare-fun res!537234 () Bool)

(assert (=> b!1189086 (=> (not res!537234) (not e!764324))))

(assert (=> b!1189086 (= res!537234 (rulesProduceIndividualToken!816 thiss!27592 rules!4386 (h!17369 lt!408724)))))

(declare-fun b!1189087 () Bool)

(assert (=> b!1189087 (= e!764324 (rulesProduceEachTokenIndividuallyList!656 thiss!27592 rules!4386 (t!112138 lt!408724)))))

(assert (= (and d!339920 (not res!537235)) b!1189086))

(assert (= (and b!1189086 res!537234) b!1189087))

(declare-fun m!1364371 () Bool)

(assert (=> d!339920 m!1364371))

(assert (=> d!339920 m!1364123))

(assert (=> b!1189086 m!1364159))

(assert (=> b!1189087 m!1364125))

(assert (=> b!1188864 d!339920))

(declare-fun d!339922 () Bool)

(declare-fun res!537240 () Bool)

(declare-fun e!764332 () Bool)

(assert (=> d!339922 (=> res!537240 e!764332)))

(assert (=> d!339922 (= res!537240 ((_ is Nil!11968) l!6534))))

(assert (=> d!339922 (= (forall!3165 l!6534 lambda!48990) e!764332)))

(declare-fun b!1189095 () Bool)

(declare-fun e!764333 () Bool)

(assert (=> b!1189095 (= e!764332 e!764333)))

(declare-fun res!537241 () Bool)

(assert (=> b!1189095 (=> (not res!537241) (not e!764333))))

(declare-fun dynLambda!5369 (Int Token!3852) Bool)

(assert (=> b!1189095 (= res!537241 (dynLambda!5369 lambda!48990 (h!17369 l!6534)))))

(declare-fun b!1189096 () Bool)

(assert (=> b!1189096 (= e!764333 (forall!3165 (t!112138 l!6534) lambda!48990))))

(assert (= (and d!339922 (not res!537240)) b!1189095))

(assert (= (and b!1189095 res!537241) b!1189096))

(declare-fun b_lambda!35699 () Bool)

(assert (=> (not b_lambda!35699) (not b!1189095)))

(declare-fun m!1364373 () Bool)

(assert (=> b!1189095 m!1364373))

(assert (=> b!1189096 m!1364363))

(assert (=> b!1188864 d!339922))

(declare-fun d!339924 () Bool)

(declare-fun res!537242 () Bool)

(declare-fun e!764334 () Bool)

(assert (=> d!339924 (=> res!537242 e!764334)))

(assert (=> d!339924 (= res!537242 ((_ is Nil!11968) lt!408724))))

(assert (=> d!339924 (= (forall!3165 lt!408724 lambda!48990) e!764334)))

(declare-fun b!1189097 () Bool)

(declare-fun e!764335 () Bool)

(assert (=> b!1189097 (= e!764334 e!764335)))

(declare-fun res!537243 () Bool)

(assert (=> b!1189097 (=> (not res!537243) (not e!764335))))

(assert (=> b!1189097 (= res!537243 (dynLambda!5369 lambda!48990 (h!17369 lt!408724)))))

(declare-fun b!1189098 () Bool)

(assert (=> b!1189098 (= e!764335 (forall!3165 (t!112138 lt!408724) lambda!48990))))

(assert (= (and d!339924 (not res!537242)) b!1189097))

(assert (= (and b!1189097 res!537243) b!1189098))

(declare-fun b_lambda!35701 () Bool)

(assert (=> (not b_lambda!35701) (not b!1189097)))

(declare-fun m!1364375 () Bool)

(assert (=> b!1189097 m!1364375))

(declare-fun m!1364377 () Bool)

(assert (=> b!1189098 m!1364377))

(assert (=> b!1188864 d!339924))

(declare-fun d!339926 () Bool)

(assert (=> d!339926 (subseq!339 (drop!563 (t!112138 l!6534) (- i!1621 1)) (t!112138 l!6534))))

(declare-fun lt!408838 () Unit!18350)

(assert (=> d!339926 (= lt!408838 (choose!7684 (t!112138 l!6534) (- i!1621 1)))))

(assert (=> d!339926 (= (lemmaDropSubseq!102 (t!112138 l!6534) (- i!1621 1)) lt!408838)))

(declare-fun bs!287734 () Bool)

(assert (= bs!287734 d!339926))

(assert (=> bs!287734 m!1364143))

(assert (=> bs!287734 m!1364143))

(declare-fun m!1364379 () Bool)

(assert (=> bs!287734 m!1364379))

(declare-fun m!1364381 () Bool)

(assert (=> bs!287734 m!1364381))

(assert (=> b!1188864 d!339926))

(declare-fun bs!287755 () Bool)

(declare-fun b!1189203 () Bool)

(assert (= bs!287755 (and b!1189203 d!339858)))

(declare-fun lambda!49012 () Int)

(assert (=> bs!287755 (= (= Lexer!1788 thiss!27592) (= lambda!49012 lambda!48997))))

(declare-fun bs!287756 () Bool)

(assert (= bs!287756 (and b!1189203 d!339902)))

(assert (=> bs!287756 (= (= Lexer!1788 thiss!27592) (= lambda!49012 lambda!49002))))

(declare-fun bs!287757 () Bool)

(assert (= bs!287757 (and b!1189203 d!339920)))

(assert (=> bs!287757 (= (= Lexer!1788 thiss!27592) (= lambda!49012 lambda!49006))))

(declare-fun bs!287758 () Bool)

(assert (= bs!287758 (and b!1189203 d!339916)))

(assert (=> bs!287758 (= (= Lexer!1788 thiss!27592) (= lambda!49012 lambda!49005))))

(declare-fun bs!287759 () Bool)

(assert (= bs!287759 (and b!1189203 d!339904)))

(assert (=> bs!287759 (= (= Lexer!1788 thiss!27592) (= lambda!49012 lambda!49003))))

(declare-fun bs!287760 () Bool)

(assert (= bs!287760 (and b!1189203 d!339908)))

(assert (=> bs!287760 (= (= Lexer!1788 thiss!27592) (= lambda!49012 lambda!49004))))

(declare-fun bs!287761 () Bool)

(assert (= bs!287761 (and b!1189203 b!1188864)))

(assert (=> bs!287761 (= lambda!49012 lambda!48990)))

(declare-fun b!1189207 () Bool)

(declare-fun e!764424 () Bool)

(assert (=> b!1189207 (= e!764424 true)))

(declare-fun b!1189206 () Bool)

(declare-fun e!764423 () Bool)

(assert (=> b!1189206 (= e!764423 e!764424)))

(declare-fun b!1189205 () Bool)

(declare-fun e!764422 () Bool)

(assert (=> b!1189205 (= e!764422 e!764423)))

(assert (=> b!1189203 e!764422))

(assert (= b!1189206 b!1189207))

(assert (= b!1189205 b!1189206))

(assert (= (and b!1189203 ((_ is Cons!11967) rules!4386)) b!1189205))

(assert (=> b!1189207 (< (dynLambda!5364 order!7481 (toValue!3212 (transformation!2095 (h!17368 rules!4386)))) (dynLambda!5365 order!7483 lambda!49012))))

(assert (=> b!1189207 (< (dynLambda!5366 order!7485 (toChars!3071 (transformation!2095 (h!17368 rules!4386)))) (dynLambda!5365 order!7483 lambda!49012))))

(declare-fun e!764421 () Bool)

(assert (=> b!1189203 (= e!764421 (tokensListTwoByTwoPredicateSeparableList!184 thiss!27592 (drop!563 (t!112138 l!6534) (- i!1621 1)) rules!4386))))

(declare-fun lt!408882 () Unit!18350)

(declare-fun lt!408879 () Unit!18350)

(assert (=> b!1189203 (= lt!408882 lt!408879)))

(declare-fun lt!408884 () List!11992)

(assert (=> b!1189203 (forall!3165 lt!408884 lambda!49012)))

(assert (=> b!1189203 (= lt!408879 (lemmaForallSubseq!199 lt!408884 (t!112138 l!6534) lambda!49012))))

(declare-fun e!764418 () Bool)

(assert (=> b!1189203 e!764418))

(declare-fun res!537281 () Bool)

(assert (=> b!1189203 (=> (not res!537281) (not e!764418))))

(assert (=> b!1189203 (= res!537281 (forall!3165 (t!112138 l!6534) lambda!49012))))

(assert (=> b!1189203 (= lt!408884 (drop!563 (t!112138 l!6534) (- i!1621 1)))))

(declare-fun lt!408881 () Unit!18350)

(declare-fun lt!408883 () Unit!18350)

(assert (=> b!1189203 (= lt!408881 lt!408883)))

(assert (=> b!1189203 (subseq!339 (drop!563 (t!112138 l!6534) (- i!1621 1)) (t!112138 l!6534))))

(assert (=> b!1189203 (= lt!408883 (lemmaDropSubseq!102 (t!112138 l!6534) (- i!1621 1)))))

(declare-fun b!1189201 () Bool)

(declare-fun e!764419 () Bool)

(declare-fun e!764420 () Bool)

(assert (=> b!1189201 (= e!764419 e!764420)))

(declare-fun res!537282 () Bool)

(assert (=> b!1189201 (=> (not res!537282) (not e!764420))))

(declare-fun lt!408880 () List!11992)

(assert (=> b!1189201 (= res!537282 (rulesProduceIndividualToken!816 thiss!27592 rules!4386 (h!17369 lt!408880)))))

(declare-fun b!1189204 () Bool)

(assert (=> b!1189204 (= e!764418 (subseq!339 lt!408884 (t!112138 l!6534)))))

(declare-fun d!339928 () Bool)

(assert (=> d!339928 e!764421))

(declare-fun res!537284 () Bool)

(assert (=> d!339928 (=> (not res!537284) (not e!764421))))

(assert (=> d!339928 (= res!537284 (= (rulesProduceEachTokenIndividuallyList!656 thiss!27592 rules!4386 (drop!563 (t!112138 l!6534) (- i!1621 1))) e!764419))))

(declare-fun res!537283 () Bool)

(assert (=> d!339928 (=> res!537283 e!764419)))

(assert (=> d!339928 (= res!537283 (not ((_ is Cons!11968) lt!408880)))))

(assert (=> d!339928 (= lt!408880 (drop!563 (t!112138 l!6534) (- i!1621 1)))))

(declare-fun lt!408878 () Unit!18350)

(declare-fun choose!7686 (LexerInterface!1790 List!11992 Int List!11991) Unit!18350)

(assert (=> d!339928 (= lt!408878 (choose!7686 thiss!27592 (t!112138 l!6534) (- i!1621 1) rules!4386))))

(assert (=> d!339928 (not (isEmpty!7193 rules!4386))))

(assert (=> d!339928 (= (tokensListTwoByTwoPredicateSeparableTokensDropList!70 thiss!27592 (t!112138 l!6534) (- i!1621 1) rules!4386) lt!408878)))

(declare-fun b!1189202 () Bool)

(assert (=> b!1189202 (= e!764420 (rulesProduceEachTokenIndividuallyList!656 thiss!27592 rules!4386 (t!112138 lt!408880)))))

(assert (= (and d!339928 (not res!537283)) b!1189201))

(assert (= (and b!1189201 res!537282) b!1189202))

(assert (= (and d!339928 res!537284) b!1189203))

(assert (= (and b!1189203 res!537281) b!1189204))

(declare-fun m!1364491 () Bool)

(assert (=> b!1189202 m!1364491))

(assert (=> b!1189203 m!1364143))

(declare-fun m!1364493 () Bool)

(assert (=> b!1189203 m!1364493))

(declare-fun m!1364495 () Bool)

(assert (=> b!1189203 m!1364495))

(assert (=> b!1189203 m!1364147))

(assert (=> b!1189203 m!1364143))

(assert (=> b!1189203 m!1364379))

(declare-fun m!1364497 () Bool)

(assert (=> b!1189203 m!1364497))

(declare-fun m!1364499 () Bool)

(assert (=> b!1189203 m!1364499))

(assert (=> b!1189203 m!1364143))

(declare-fun m!1364501 () Bool)

(assert (=> b!1189204 m!1364501))

(declare-fun m!1364503 () Bool)

(assert (=> b!1189201 m!1364503))

(assert (=> d!339928 m!1364143))

(assert (=> d!339928 m!1364143))

(declare-fun m!1364505 () Bool)

(assert (=> d!339928 m!1364505))

(declare-fun m!1364507 () Bool)

(assert (=> d!339928 m!1364507))

(assert (=> d!339928 m!1364123))

(assert (=> b!1188864 d!339928))

(declare-fun b!1189226 () Bool)

(declare-fun e!764438 () Int)

(declare-fun call!82653 () Int)

(assert (=> b!1189226 (= e!764438 (- call!82653 i!1621))))

(declare-fun d!339954 () Bool)

(declare-fun e!764435 () Bool)

(assert (=> d!339954 e!764435))

(declare-fun res!537287 () Bool)

(assert (=> d!339954 (=> (not res!537287) (not e!764435))))

(declare-fun lt!408887 () List!11992)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1651 (List!11992) (InoxSet Token!3852))

(assert (=> d!339954 (= res!537287 (= ((_ map implies) (content!1651 lt!408887) (content!1651 l!6534)) ((as const (InoxSet Token!3852)) true)))))

(declare-fun e!764437 () List!11992)

(assert (=> d!339954 (= lt!408887 e!764437)))

(declare-fun c!197418 () Bool)

(assert (=> d!339954 (= c!197418 ((_ is Nil!11968) l!6534))))

(assert (=> d!339954 (= (drop!563 l!6534 i!1621) lt!408887)))

(declare-fun bm!82648 () Bool)

(declare-fun size!9435 (List!11992) Int)

(assert (=> bm!82648 (= call!82653 (size!9435 l!6534))))

(declare-fun b!1189227 () Bool)

(declare-fun e!764439 () Int)

(assert (=> b!1189227 (= e!764435 (= (size!9435 lt!408887) e!764439))))

(declare-fun c!197420 () Bool)

(assert (=> b!1189227 (= c!197420 (<= i!1621 0))))

(declare-fun b!1189228 () Bool)

(assert (=> b!1189228 (= e!764439 e!764438)))

(declare-fun c!197419 () Bool)

(assert (=> b!1189228 (= c!197419 (>= i!1621 call!82653))))

(declare-fun b!1189229 () Bool)

(declare-fun e!764436 () List!11992)

(assert (=> b!1189229 (= e!764437 e!764436)))

(declare-fun c!197417 () Bool)

(assert (=> b!1189229 (= c!197417 (<= i!1621 0))))

(declare-fun b!1189230 () Bool)

(assert (=> b!1189230 (= e!764436 (drop!563 (t!112138 l!6534) (- i!1621 1)))))

(declare-fun b!1189231 () Bool)

(assert (=> b!1189231 (= e!764437 Nil!11968)))

(declare-fun b!1189232 () Bool)

(assert (=> b!1189232 (= e!764436 l!6534)))

(declare-fun b!1189233 () Bool)

(assert (=> b!1189233 (= e!764439 call!82653)))

(declare-fun b!1189234 () Bool)

(assert (=> b!1189234 (= e!764438 0)))

(assert (= (and d!339954 c!197418) b!1189231))

(assert (= (and d!339954 (not c!197418)) b!1189229))

(assert (= (and b!1189229 c!197417) b!1189232))

(assert (= (and b!1189229 (not c!197417)) b!1189230))

(assert (= (and d!339954 res!537287) b!1189227))

(assert (= (and b!1189227 c!197420) b!1189233))

(assert (= (and b!1189227 (not c!197420)) b!1189228))

(assert (= (and b!1189228 c!197419) b!1189234))

(assert (= (and b!1189228 (not c!197419)) b!1189226))

(assert (= (or b!1189233 b!1189228 b!1189226) bm!82648))

(declare-fun m!1364509 () Bool)

(assert (=> d!339954 m!1364509))

(declare-fun m!1364511 () Bool)

(assert (=> d!339954 m!1364511))

(declare-fun m!1364513 () Bool)

(assert (=> bm!82648 m!1364513))

(declare-fun m!1364515 () Bool)

(assert (=> b!1189227 m!1364515))

(assert (=> b!1189230 m!1364143))

(assert (=> b!1188864 d!339954))

(declare-fun b!1189235 () Bool)

(declare-fun e!764443 () Int)

(declare-fun call!82654 () Int)

(assert (=> b!1189235 (= e!764443 (- call!82654 (- i!1621 1)))))

(declare-fun d!339956 () Bool)

(declare-fun e!764440 () Bool)

(assert (=> d!339956 e!764440))

(declare-fun res!537288 () Bool)

(assert (=> d!339956 (=> (not res!537288) (not e!764440))))

(declare-fun lt!408888 () List!11992)

(assert (=> d!339956 (= res!537288 (= ((_ map implies) (content!1651 lt!408888) (content!1651 (t!112138 l!6534))) ((as const (InoxSet Token!3852)) true)))))

(declare-fun e!764442 () List!11992)

(assert (=> d!339956 (= lt!408888 e!764442)))

(declare-fun c!197422 () Bool)

(assert (=> d!339956 (= c!197422 ((_ is Nil!11968) (t!112138 l!6534)))))

(assert (=> d!339956 (= (drop!563 (t!112138 l!6534) (- i!1621 1)) lt!408888)))

(declare-fun bm!82649 () Bool)

(assert (=> bm!82649 (= call!82654 (size!9435 (t!112138 l!6534)))))

(declare-fun b!1189236 () Bool)

(declare-fun e!764444 () Int)

(assert (=> b!1189236 (= e!764440 (= (size!9435 lt!408888) e!764444))))

(declare-fun c!197424 () Bool)

(assert (=> b!1189236 (= c!197424 (<= (- i!1621 1) 0))))

(declare-fun b!1189237 () Bool)

(assert (=> b!1189237 (= e!764444 e!764443)))

(declare-fun c!197423 () Bool)

(assert (=> b!1189237 (= c!197423 (>= (- i!1621 1) call!82654))))

(declare-fun b!1189238 () Bool)

(declare-fun e!764441 () List!11992)

(assert (=> b!1189238 (= e!764442 e!764441)))

(declare-fun c!197421 () Bool)

(assert (=> b!1189238 (= c!197421 (<= (- i!1621 1) 0))))

(declare-fun b!1189239 () Bool)

(assert (=> b!1189239 (= e!764441 (drop!563 (t!112138 (t!112138 l!6534)) (- (- i!1621 1) 1)))))

(declare-fun b!1189240 () Bool)

(assert (=> b!1189240 (= e!764442 Nil!11968)))

(declare-fun b!1189241 () Bool)

(assert (=> b!1189241 (= e!764441 (t!112138 l!6534))))

(declare-fun b!1189242 () Bool)

(assert (=> b!1189242 (= e!764444 call!82654)))

(declare-fun b!1189243 () Bool)

(assert (=> b!1189243 (= e!764443 0)))

(assert (= (and d!339956 c!197422) b!1189240))

(assert (= (and d!339956 (not c!197422)) b!1189238))

(assert (= (and b!1189238 c!197421) b!1189241))

(assert (= (and b!1189238 (not c!197421)) b!1189239))

(assert (= (and d!339956 res!537288) b!1189236))

(assert (= (and b!1189236 c!197424) b!1189242))

(assert (= (and b!1189236 (not c!197424)) b!1189237))

(assert (= (and b!1189237 c!197423) b!1189243))

(assert (= (and b!1189237 (not c!197423)) b!1189235))

(assert (= (or b!1189242 b!1189237 b!1189235) bm!82649))

(declare-fun m!1364517 () Bool)

(assert (=> d!339956 m!1364517))

(declare-fun m!1364519 () Bool)

(assert (=> d!339956 m!1364519))

(declare-fun m!1364521 () Bool)

(assert (=> bm!82649 m!1364521))

(declare-fun m!1364523 () Bool)

(assert (=> b!1189236 m!1364523))

(declare-fun m!1364525 () Bool)

(assert (=> b!1189239 m!1364525))

(assert (=> b!1188864 d!339956))

(declare-fun d!339958 () Bool)

(declare-fun res!537293 () Bool)

(declare-fun e!764447 () Bool)

(assert (=> d!339958 (=> (not res!537293) (not e!764447))))

(declare-fun isEmpty!7197 (List!11989) Bool)

(assert (=> d!339958 (= res!537293 (not (isEmpty!7197 (originalCharacters!2649 (h!17369 l!6534)))))))

(assert (=> d!339958 (= (inv!15801 (h!17369 l!6534)) e!764447)))

(declare-fun b!1189248 () Bool)

(declare-fun res!537294 () Bool)

(assert (=> b!1189248 (=> (not res!537294) (not e!764447))))

(declare-fun list!4391 (BalanceConc!7854) List!11989)

(declare-fun dynLambda!5370 (Int TokenValue!2161) BalanceConc!7854)

(assert (=> b!1189248 (= res!537294 (= (originalCharacters!2649 (h!17369 l!6534)) (list!4391 (dynLambda!5370 (toChars!3071 (transformation!2095 (rule!3516 (h!17369 l!6534)))) (value!67764 (h!17369 l!6534))))))))

(declare-fun b!1189249 () Bool)

(declare-fun size!9436 (List!11989) Int)

(assert (=> b!1189249 (= e!764447 (= (size!9428 (h!17369 l!6534)) (size!9436 (originalCharacters!2649 (h!17369 l!6534)))))))

(assert (= (and d!339958 res!537293) b!1189248))

(assert (= (and b!1189248 res!537294) b!1189249))

(declare-fun b_lambda!35711 () Bool)

(assert (=> (not b_lambda!35711) (not b!1189248)))

(declare-fun t!112158 () Bool)

(declare-fun tb!66449 () Bool)

(assert (=> (and b!1188866 (= (toChars!3071 (transformation!2095 (rule!3516 (h!17369 l!6534)))) (toChars!3071 (transformation!2095 (rule!3516 (h!17369 l!6534))))) t!112158) tb!66449))

(declare-fun b!1189254 () Bool)

(declare-fun e!764450 () Bool)

(declare-fun tp!339418 () Bool)

(declare-fun inv!15805 (Conc!3916) Bool)

(assert (=> b!1189254 (= e!764450 (and (inv!15805 (c!197379 (dynLambda!5370 (toChars!3071 (transformation!2095 (rule!3516 (h!17369 l!6534)))) (value!67764 (h!17369 l!6534))))) tp!339418))))

(declare-fun result!79924 () Bool)

(declare-fun inv!15806 (BalanceConc!7854) Bool)

(assert (=> tb!66449 (= result!79924 (and (inv!15806 (dynLambda!5370 (toChars!3071 (transformation!2095 (rule!3516 (h!17369 l!6534)))) (value!67764 (h!17369 l!6534)))) e!764450))))

(assert (= tb!66449 b!1189254))

(declare-fun m!1364527 () Bool)

(assert (=> b!1189254 m!1364527))

(declare-fun m!1364529 () Bool)

(assert (=> tb!66449 m!1364529))

(assert (=> b!1189248 t!112158))

(declare-fun b_and!81929 () Bool)

(assert (= b_and!81911 (and (=> t!112158 result!79924) b_and!81929)))

(declare-fun tb!66451 () Bool)

(declare-fun t!112160 () Bool)

(assert (=> (and b!1188870 (= (toChars!3071 (transformation!2095 (h!17368 rules!4386))) (toChars!3071 (transformation!2095 (rule!3516 (h!17369 l!6534))))) t!112160) tb!66451))

(declare-fun result!79928 () Bool)

(assert (= result!79928 result!79924))

(assert (=> b!1189248 t!112160))

(declare-fun b_and!81931 () Bool)

(assert (= b_and!81915 (and (=> t!112160 result!79928) b_and!81931)))

(declare-fun m!1364531 () Bool)

(assert (=> d!339958 m!1364531))

(declare-fun m!1364533 () Bool)

(assert (=> b!1189248 m!1364533))

(assert (=> b!1189248 m!1364533))

(declare-fun m!1364535 () Bool)

(assert (=> b!1189248 m!1364535))

(declare-fun m!1364537 () Bool)

(assert (=> b!1189249 m!1364537))

(assert (=> b!1188863 d!339958))

(declare-fun d!339960 () Bool)

(assert (=> d!339960 (= (inv!15798 (tag!2357 (h!17368 rules!4386))) (= (mod (str.len (value!67763 (tag!2357 (h!17368 rules!4386)))) 2) 0))))

(assert (=> b!1188868 d!339960))

(declare-fun d!339962 () Bool)

(declare-fun res!537297 () Bool)

(declare-fun e!764453 () Bool)

(assert (=> d!339962 (=> (not res!537297) (not e!764453))))

(declare-fun semiInverseModEq!762 (Int Int) Bool)

(assert (=> d!339962 (= res!537297 (semiInverseModEq!762 (toChars!3071 (transformation!2095 (h!17368 rules!4386))) (toValue!3212 (transformation!2095 (h!17368 rules!4386)))))))

(assert (=> d!339962 (= (inv!15802 (transformation!2095 (h!17368 rules!4386))) e!764453)))

(declare-fun b!1189257 () Bool)

(declare-fun equivClasses!729 (Int Int) Bool)

(assert (=> b!1189257 (= e!764453 (equivClasses!729 (toChars!3071 (transformation!2095 (h!17368 rules!4386))) (toValue!3212 (transformation!2095 (h!17368 rules!4386)))))))

(assert (= (and d!339962 res!537297) b!1189257))

(declare-fun m!1364539 () Bool)

(assert (=> d!339962 m!1364539))

(declare-fun m!1364541 () Bool)

(assert (=> b!1189257 m!1364541))

(assert (=> b!1188868 d!339962))

(declare-fun d!339964 () Bool)

(declare-fun res!537300 () Bool)

(declare-fun e!764456 () Bool)

(assert (=> d!339964 (=> (not res!537300) (not e!764456))))

(declare-fun rulesValid!750 (LexerInterface!1790 List!11991) Bool)

(assert (=> d!339964 (= res!537300 (rulesValid!750 thiss!27592 rules!4386))))

(assert (=> d!339964 (= (rulesInvariant!1664 thiss!27592 rules!4386) e!764456)))

(declare-fun b!1189260 () Bool)

(declare-datatypes ((List!11994 0))(
  ( (Nil!11970) (Cons!11970 (h!17371 String!14473) (t!112166 List!11994)) )
))
(declare-fun noDuplicateTag!750 (LexerInterface!1790 List!11991 List!11994) Bool)

(assert (=> b!1189260 (= e!764456 (noDuplicateTag!750 thiss!27592 rules!4386 Nil!11970))))

(assert (= (and d!339964 res!537300) b!1189260))

(declare-fun m!1364543 () Bool)

(assert (=> d!339964 m!1364543))

(declare-fun m!1364545 () Bool)

(assert (=> b!1189260 m!1364545))

(assert (=> b!1188857 d!339964))

(declare-fun d!339966 () Bool)

(assert (=> d!339966 (= (inv!15798 (tag!2357 (rule!3516 (h!17369 l!6534)))) (= (mod (str.len (value!67763 (tag!2357 (rule!3516 (h!17369 l!6534))))) 2) 0))))

(assert (=> b!1188867 d!339966))

(declare-fun d!339968 () Bool)

(declare-fun res!537301 () Bool)

(declare-fun e!764457 () Bool)

(assert (=> d!339968 (=> (not res!537301) (not e!764457))))

(assert (=> d!339968 (= res!537301 (semiInverseModEq!762 (toChars!3071 (transformation!2095 (rule!3516 (h!17369 l!6534)))) (toValue!3212 (transformation!2095 (rule!3516 (h!17369 l!6534))))))))

(assert (=> d!339968 (= (inv!15802 (transformation!2095 (rule!3516 (h!17369 l!6534)))) e!764457)))

(declare-fun b!1189261 () Bool)

(assert (=> b!1189261 (= e!764457 (equivClasses!729 (toChars!3071 (transformation!2095 (rule!3516 (h!17369 l!6534)))) (toValue!3212 (transformation!2095 (rule!3516 (h!17369 l!6534))))))))

(assert (= (and d!339968 res!537301) b!1189261))

(declare-fun m!1364547 () Bool)

(assert (=> d!339968 m!1364547))

(declare-fun m!1364549 () Bool)

(assert (=> b!1189261 m!1364549))

(assert (=> b!1188867 d!339968))

(declare-fun d!339970 () Bool)

(declare-fun lt!408889 () Bool)

(declare-fun e!764458 () Bool)

(assert (=> d!339970 (= lt!408889 e!764458)))

(declare-fun res!537302 () Bool)

(assert (=> d!339970 (=> (not res!537302) (not e!764458))))

(assert (=> d!339970 (= res!537302 (= (list!4389 (_1!6910 (lex!745 thiss!27592 rules!4386 (print!682 thiss!27592 (singletonSeq!730 (h!17369 lt!408722)))))) (list!4389 (singletonSeq!730 (h!17369 lt!408722)))))))

(declare-fun e!764459 () Bool)

(assert (=> d!339970 (= lt!408889 e!764459)))

(declare-fun res!537303 () Bool)

(assert (=> d!339970 (=> (not res!537303) (not e!764459))))

(declare-fun lt!408890 () tuple2!12126)

(assert (=> d!339970 (= res!537303 (= (size!9433 (_1!6910 lt!408890)) 1))))

(assert (=> d!339970 (= lt!408890 (lex!745 thiss!27592 rules!4386 (print!682 thiss!27592 (singletonSeq!730 (h!17369 lt!408722)))))))

(assert (=> d!339970 (not (isEmpty!7193 rules!4386))))

(assert (=> d!339970 (= (rulesProduceIndividualToken!816 thiss!27592 rules!4386 (h!17369 lt!408722)) lt!408889)))

(declare-fun b!1189262 () Bool)

(declare-fun res!537304 () Bool)

(assert (=> b!1189262 (=> (not res!537304) (not e!764459))))

(assert (=> b!1189262 (= res!537304 (= (apply!2601 (_1!6910 lt!408890) 0) (h!17369 lt!408722)))))

(declare-fun b!1189263 () Bool)

(assert (=> b!1189263 (= e!764459 (isEmpty!7195 (_2!6910 lt!408890)))))

(declare-fun b!1189264 () Bool)

(assert (=> b!1189264 (= e!764458 (isEmpty!7195 (_2!6910 (lex!745 thiss!27592 rules!4386 (print!682 thiss!27592 (singletonSeq!730 (h!17369 lt!408722)))))))))

(assert (= (and d!339970 res!537303) b!1189262))

(assert (= (and b!1189262 res!537304) b!1189263))

(assert (= (and d!339970 res!537302) b!1189264))

(declare-fun m!1364551 () Bool)

(assert (=> d!339970 m!1364551))

(declare-fun m!1364553 () Bool)

(assert (=> d!339970 m!1364553))

(declare-fun m!1364555 () Bool)

(assert (=> d!339970 m!1364555))

(assert (=> d!339970 m!1364123))

(assert (=> d!339970 m!1364551))

(assert (=> d!339970 m!1364553))

(declare-fun m!1364557 () Bool)

(assert (=> d!339970 m!1364557))

(assert (=> d!339970 m!1364551))

(declare-fun m!1364559 () Bool)

(assert (=> d!339970 m!1364559))

(declare-fun m!1364561 () Bool)

(assert (=> d!339970 m!1364561))

(declare-fun m!1364563 () Bool)

(assert (=> b!1189262 m!1364563))

(declare-fun m!1364565 () Bool)

(assert (=> b!1189263 m!1364565))

(assert (=> b!1189264 m!1364551))

(assert (=> b!1189264 m!1364551))

(assert (=> b!1189264 m!1364553))

(assert (=> b!1189264 m!1364553))

(assert (=> b!1189264 m!1364555))

(declare-fun m!1364567 () Bool)

(assert (=> b!1189264 m!1364567))

(assert (=> b!1188856 d!339970))

(declare-fun b!1189267 () Bool)

(declare-fun e!764462 () Bool)

(assert (=> b!1189267 (= e!764462 true)))

(declare-fun b!1189266 () Bool)

(declare-fun e!764461 () Bool)

(assert (=> b!1189266 (= e!764461 e!764462)))

(declare-fun b!1189265 () Bool)

(declare-fun e!764460 () Bool)

(assert (=> b!1189265 (= e!764460 e!764461)))

(assert (=> b!1188879 e!764460))

(assert (= b!1189266 b!1189267))

(assert (= b!1189265 b!1189266))

(assert (= (and b!1188879 ((_ is Cons!11967) (t!112137 rules!4386))) b!1189265))

(assert (=> b!1189267 (< (dynLambda!5364 order!7481 (toValue!3212 (transformation!2095 (h!17368 (t!112137 rules!4386))))) (dynLambda!5365 order!7483 lambda!48990))))

(assert (=> b!1189267 (< (dynLambda!5366 order!7485 (toChars!3071 (transformation!2095 (h!17368 (t!112137 rules!4386))))) (dynLambda!5365 order!7483 lambda!48990))))

(declare-fun b!1189272 () Bool)

(declare-fun e!764465 () Bool)

(declare-fun tp_is_empty!5859 () Bool)

(declare-fun tp!339421 () Bool)

(assert (=> b!1189272 (= e!764465 (and tp_is_empty!5859 tp!339421))))

(assert (=> b!1188858 (= tp!339361 e!764465)))

(assert (= (and b!1188858 ((_ is Cons!11965) (originalCharacters!2649 (h!17369 l!6534)))) b!1189272))

(declare-fun b!1189286 () Bool)

(declare-fun b_free!28741 () Bool)

(declare-fun b_next!29445 () Bool)

(assert (=> b!1189286 (= b_free!28741 (not b_next!29445))))

(declare-fun tp!339432 () Bool)

(declare-fun b_and!81933 () Bool)

(assert (=> b!1189286 (= tp!339432 b_and!81933)))

(declare-fun b_free!28743 () Bool)

(declare-fun b_next!29447 () Bool)

(assert (=> b!1189286 (= b_free!28743 (not b_next!29447))))

(declare-fun t!112162 () Bool)

(declare-fun tb!66453 () Bool)

(assert (=> (and b!1189286 (= (toChars!3071 (transformation!2095 (rule!3516 (h!17369 (t!112138 l!6534))))) (toChars!3071 (transformation!2095 (rule!3516 (h!17369 l!6534))))) t!112162) tb!66453))

(declare-fun result!79934 () Bool)

(assert (= result!79934 result!79924))

(assert (=> b!1189248 t!112162))

(declare-fun b_and!81935 () Bool)

(declare-fun tp!339433 () Bool)

(assert (=> b!1189286 (= tp!339433 (and (=> t!112162 result!79934) b_and!81935))))

(declare-fun e!764480 () Bool)

(assert (=> b!1188863 (= tp!339360 e!764480)))

(declare-fun e!764479 () Bool)

(assert (=> b!1189286 (= e!764479 (and tp!339432 tp!339433))))

(declare-fun e!764481 () Bool)

(declare-fun tp!339435 () Bool)

(declare-fun b!1189284 () Bool)

(declare-fun e!764482 () Bool)

(assert (=> b!1189284 (= e!764482 (and (inv!21 (value!67764 (h!17369 (t!112138 l!6534)))) e!764481 tp!339435))))

(declare-fun tp!339434 () Bool)

(declare-fun b!1189283 () Bool)

(assert (=> b!1189283 (= e!764480 (and (inv!15801 (h!17369 (t!112138 l!6534))) e!764482 tp!339434))))

(declare-fun b!1189285 () Bool)

(declare-fun tp!339436 () Bool)

(assert (=> b!1189285 (= e!764481 (and tp!339436 (inv!15798 (tag!2357 (rule!3516 (h!17369 (t!112138 l!6534))))) (inv!15802 (transformation!2095 (rule!3516 (h!17369 (t!112138 l!6534))))) e!764479))))

(assert (= b!1189285 b!1189286))

(assert (= b!1189284 b!1189285))

(assert (= b!1189283 b!1189284))

(assert (= (and b!1188863 ((_ is Cons!11968) (t!112138 l!6534))) b!1189283))

(declare-fun m!1364569 () Bool)

(assert (=> b!1189284 m!1364569))

(declare-fun m!1364571 () Bool)

(assert (=> b!1189283 m!1364571))

(declare-fun m!1364573 () Bool)

(assert (=> b!1189285 m!1364573))

(declare-fun m!1364575 () Bool)

(assert (=> b!1189285 m!1364575))

(declare-fun b!1189299 () Bool)

(declare-fun e!764486 () Bool)

(declare-fun tp!339451 () Bool)

(assert (=> b!1189299 (= e!764486 tp!339451)))

(declare-fun b!1189300 () Bool)

(declare-fun tp!339449 () Bool)

(declare-fun tp!339448 () Bool)

(assert (=> b!1189300 (= e!764486 (and tp!339449 tp!339448))))

(declare-fun b!1189298 () Bool)

(declare-fun tp!339447 () Bool)

(declare-fun tp!339450 () Bool)

(assert (=> b!1189298 (= e!764486 (and tp!339447 tp!339450))))

(assert (=> b!1188868 (= tp!339359 e!764486)))

(declare-fun b!1189297 () Bool)

(assert (=> b!1189297 (= e!764486 tp_is_empty!5859)))

(assert (= (and b!1188868 ((_ is ElementMatch!3365) (regex!2095 (h!17368 rules!4386)))) b!1189297))

(assert (= (and b!1188868 ((_ is Concat!5527) (regex!2095 (h!17368 rules!4386)))) b!1189298))

(assert (= (and b!1188868 ((_ is Star!3365) (regex!2095 (h!17368 rules!4386)))) b!1189299))

(assert (= (and b!1188868 ((_ is Union!3365) (regex!2095 (h!17368 rules!4386)))) b!1189300))

(declare-fun b!1189303 () Bool)

(declare-fun e!764487 () Bool)

(declare-fun tp!339456 () Bool)

(assert (=> b!1189303 (= e!764487 tp!339456)))

(declare-fun b!1189304 () Bool)

(declare-fun tp!339454 () Bool)

(declare-fun tp!339453 () Bool)

(assert (=> b!1189304 (= e!764487 (and tp!339454 tp!339453))))

(declare-fun b!1189302 () Bool)

(declare-fun tp!339452 () Bool)

(declare-fun tp!339455 () Bool)

(assert (=> b!1189302 (= e!764487 (and tp!339452 tp!339455))))

(assert (=> b!1188867 (= tp!339358 e!764487)))

(declare-fun b!1189301 () Bool)

(assert (=> b!1189301 (= e!764487 tp_is_empty!5859)))

(assert (= (and b!1188867 ((_ is ElementMatch!3365) (regex!2095 (rule!3516 (h!17369 l!6534))))) b!1189301))

(assert (= (and b!1188867 ((_ is Concat!5527) (regex!2095 (rule!3516 (h!17369 l!6534))))) b!1189302))

(assert (= (and b!1188867 ((_ is Star!3365) (regex!2095 (rule!3516 (h!17369 l!6534))))) b!1189303))

(assert (= (and b!1188867 ((_ is Union!3365) (regex!2095 (rule!3516 (h!17369 l!6534))))) b!1189304))

(declare-fun b!1189315 () Bool)

(declare-fun b_free!28745 () Bool)

(declare-fun b_next!29449 () Bool)

(assert (=> b!1189315 (= b_free!28745 (not b_next!29449))))

(declare-fun tp!339465 () Bool)

(declare-fun b_and!81937 () Bool)

(assert (=> b!1189315 (= tp!339465 b_and!81937)))

(declare-fun b_free!28747 () Bool)

(declare-fun b_next!29451 () Bool)

(assert (=> b!1189315 (= b_free!28747 (not b_next!29451))))

(declare-fun tb!66455 () Bool)

(declare-fun t!112164 () Bool)

(assert (=> (and b!1189315 (= (toChars!3071 (transformation!2095 (h!17368 (t!112137 rules!4386)))) (toChars!3071 (transformation!2095 (rule!3516 (h!17369 l!6534))))) t!112164) tb!66455))

(declare-fun result!79940 () Bool)

(assert (= result!79940 result!79924))

(assert (=> b!1189248 t!112164))

(declare-fun tp!339468 () Bool)

(declare-fun b_and!81939 () Bool)

(assert (=> b!1189315 (= tp!339468 (and (=> t!112164 result!79940) b_and!81939))))

(declare-fun e!764498 () Bool)

(assert (=> b!1189315 (= e!764498 (and tp!339465 tp!339468))))

(declare-fun b!1189314 () Bool)

(declare-fun e!764496 () Bool)

(declare-fun tp!339467 () Bool)

(assert (=> b!1189314 (= e!764496 (and tp!339467 (inv!15798 (tag!2357 (h!17368 (t!112137 rules!4386)))) (inv!15802 (transformation!2095 (h!17368 (t!112137 rules!4386)))) e!764498))))

(declare-fun b!1189313 () Bool)

(declare-fun e!764499 () Bool)

(declare-fun tp!339466 () Bool)

(assert (=> b!1189313 (= e!764499 (and e!764496 tp!339466))))

(assert (=> b!1188855 (= tp!339362 e!764499)))

(assert (= b!1189314 b!1189315))

(assert (= b!1189313 b!1189314))

(assert (= (and b!1188855 ((_ is Cons!11967) (t!112137 rules!4386))) b!1189313))

(declare-fun m!1364577 () Bool)

(assert (=> b!1189314 m!1364577))

(declare-fun m!1364579 () Bool)

(assert (=> b!1189314 m!1364579))

(declare-fun b_lambda!35713 () Bool)

(assert (= b_lambda!35699 (or b!1188864 b_lambda!35713)))

(declare-fun bs!287762 () Bool)

(declare-fun d!339972 () Bool)

(assert (= bs!287762 (and d!339972 b!1188864)))

(assert (=> bs!287762 (= (dynLambda!5369 lambda!48990 (h!17369 l!6534)) (rulesProduceIndividualToken!816 Lexer!1788 rules!4386 (h!17369 l!6534)))))

(declare-fun m!1364581 () Bool)

(assert (=> bs!287762 m!1364581))

(assert (=> b!1189095 d!339972))

(declare-fun b_lambda!35715 () Bool)

(assert (= b_lambda!35701 (or b!1188864 b_lambda!35715)))

(declare-fun bs!287763 () Bool)

(declare-fun d!339974 () Bool)

(assert (= bs!287763 (and d!339974 b!1188864)))

(assert (=> bs!287763 (= (dynLambda!5369 lambda!48990 (h!17369 lt!408724)) (rulesProduceIndividualToken!816 Lexer!1788 rules!4386 (h!17369 lt!408724)))))

(declare-fun m!1364583 () Bool)

(assert (=> bs!287763 m!1364583))

(assert (=> b!1189097 d!339974))

(declare-fun b_lambda!35717 () Bool)

(assert (= b_lambda!35711 (or (and b!1188866 b_free!28727) (and b!1188870 b_free!28731 (= (toChars!3071 (transformation!2095 (h!17368 rules!4386))) (toChars!3071 (transformation!2095 (rule!3516 (h!17369 l!6534)))))) (and b!1189286 b_free!28743 (= (toChars!3071 (transformation!2095 (rule!3516 (h!17369 (t!112138 l!6534))))) (toChars!3071 (transformation!2095 (rule!3516 (h!17369 l!6534)))))) (and b!1189315 b_free!28747 (= (toChars!3071 (transformation!2095 (h!17368 (t!112137 rules!4386)))) (toChars!3071 (transformation!2095 (rule!3516 (h!17369 l!6534)))))) b_lambda!35717)))

(check-sat (not d!339956) (not b_next!29435) (not b!1188958) (not b!1188938) (not bm!82648) (not b_next!29445) (not d!339908) (not b!1188940) (not b_lambda!35713) (not b!1189284) (not b!1189075) (not b!1189055) (not b!1189078) (not d!339968) (not b!1188962) (not b!1188946) (not b!1189272) (not b!1189201) (not b!1189203) (not bm!82649) (not d!339964) (not b!1189239) (not b_next!29447) (not d!339914) (not b_next!29431) (not d!339902) (not b_next!29449) (not b!1189077) (not b_lambda!35717) (not b!1188945) (not b!1188892) (not b!1188893) (not b!1189261) b_and!81913 (not d!339858) (not b!1189062) (not b!1189254) b_and!81937 (not b!1189085) (not b!1189227) (not b!1189049) (not b!1189096) (not b!1189298) (not b!1189260) (not b!1189076) (not b!1189313) (not b!1189264) b_and!81931 (not bs!287762) (not d!339920) (not b!1189236) (not b!1189302) (not b_next!29451) (not b!1189299) (not b!1189300) (not b!1189050) (not b!1189257) (not tb!66449) (not b!1189084) (not b!1189088) (not d!339904) (not b!1189056) (not d!339970) b_and!81935 (not b!1189283) (not b!1189051) (not b!1189202) (not b!1189060) (not b!1189057) b_and!81909 (not d!339958) b_and!81929 (not d!339916) (not b!1189314) (not d!339926) (not b!1189230) (not b_lambda!35715) (not b_next!29429) (not b!1189263) (not b!1189303) b_and!81933 (not d!339910) tp_is_empty!5859 (not b!1189262) (not d!339962) (not b!1189098) (not d!339882) b_and!81939 (not b!1189087) (not b!1188961) (not b!1189048) (not b!1189086) (not d!339928) (not b!1189079) (not b!1188939) (not b!1189248) (not b!1189249) (not d!339954) (not b!1188963) (not b!1189061) (not b!1189204) (not b!1189285) (not b!1188960) (not bs!287763) (not b!1189265) (not b!1189304) (not b!1189205) (not b_next!29433) (not b!1189052) (not b!1189047))
(check-sat (not b_next!29445) (not b_next!29449) b_and!81913 b_and!81937 b_and!81931 (not b_next!29451) b_and!81935 (not b_next!29435) b_and!81939 (not b_next!29433) (not b_next!29447) (not b_next!29431) b_and!81909 b_and!81929 (not b_next!29429) b_and!81933)
