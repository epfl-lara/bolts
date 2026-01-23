; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!371356 () Bool)

(assert start!371356)

(declare-fun b!3949902 () Bool)

(declare-fun b_free!108461 () Bool)

(declare-fun b_next!109165 () Bool)

(assert (=> b!3949902 (= b_free!108461 (not b_next!109165))))

(declare-fun tp!1203062 () Bool)

(declare-fun b_and!302543 () Bool)

(assert (=> b!3949902 (= tp!1203062 b_and!302543)))

(declare-fun b_free!108463 () Bool)

(declare-fun b_next!109167 () Bool)

(assert (=> b!3949902 (= b_free!108463 (not b_next!109167))))

(declare-fun tp!1203065 () Bool)

(declare-fun b_and!302545 () Bool)

(assert (=> b!3949902 (= tp!1203065 b_and!302545)))

(declare-fun b!3949894 () Bool)

(declare-fun b_free!108465 () Bool)

(declare-fun b_next!109169 () Bool)

(assert (=> b!3949894 (= b_free!108465 (not b_next!109169))))

(declare-fun tp!1203071 () Bool)

(declare-fun b_and!302547 () Bool)

(assert (=> b!3949894 (= tp!1203071 b_and!302547)))

(declare-fun b_free!108467 () Bool)

(declare-fun b_next!109171 () Bool)

(assert (=> b!3949894 (= b_free!108467 (not b_next!109171))))

(declare-fun tp!1203072 () Bool)

(declare-fun b_and!302549 () Bool)

(assert (=> b!3949894 (= tp!1203072 b_and!302549)))

(declare-fun b!3949908 () Bool)

(declare-fun b_free!108469 () Bool)

(declare-fun b_next!109173 () Bool)

(assert (=> b!3949908 (= b_free!108469 (not b_next!109173))))

(declare-fun tp!1203060 () Bool)

(declare-fun b_and!302551 () Bool)

(assert (=> b!3949908 (= tp!1203060 b_and!302551)))

(declare-fun b_free!108471 () Bool)

(declare-fun b_next!109175 () Bool)

(assert (=> b!3949908 (= b_free!108471 (not b_next!109175))))

(declare-fun tp!1203074 () Bool)

(declare-fun b_and!302553 () Bool)

(assert (=> b!3949908 (= tp!1203074 b_and!302553)))

(declare-fun b!3949892 () Bool)

(declare-fun e!2444566 () Bool)

(declare-datatypes ((List!42111 0))(
  ( (Nil!41987) (Cons!41987 (h!47407 (_ BitVec 16)) (t!328472 List!42111)) )
))
(declare-datatypes ((TokenValue!6800 0))(
  ( (FloatLiteralValue!13600 (text!48045 List!42111)) (TokenValueExt!6799 (__x!25817 Int)) (Broken!34000 (value!207853 List!42111)) (Object!6923) (End!6800) (Def!6800) (Underscore!6800) (Match!6800) (Else!6800) (Error!6800) (Case!6800) (If!6800) (Extends!6800) (Abstract!6800) (Class!6800) (Val!6800) (DelimiterValue!13600 (del!6860 List!42111)) (KeywordValue!6806 (value!207854 List!42111)) (CommentValue!13600 (value!207855 List!42111)) (WhitespaceValue!13600 (value!207856 List!42111)) (IndentationValue!6800 (value!207857 List!42111)) (String!47717) (Int32!6800) (Broken!34001 (value!207858 List!42111)) (Boolean!6801) (Unit!60507) (OperatorValue!6803 (op!6860 List!42111)) (IdentifierValue!13600 (value!207859 List!42111)) (IdentifierValue!13601 (value!207860 List!42111)) (WhitespaceValue!13601 (value!207861 List!42111)) (True!13600) (False!13600) (Broken!34002 (value!207862 List!42111)) (Broken!34003 (value!207863 List!42111)) (True!13601) (RightBrace!6800) (RightBracket!6800) (Colon!6800) (Null!6800) (Comma!6800) (LeftBracket!6800) (False!13601) (LeftBrace!6800) (ImaginaryLiteralValue!6800 (text!48046 List!42111)) (StringLiteralValue!20400 (value!207864 List!42111)) (EOFValue!6800 (value!207865 List!42111)) (IdentValue!6800 (value!207866 List!42111)) (DelimiterValue!13601 (value!207867 List!42111)) (DedentValue!6800 (value!207868 List!42111)) (NewLineValue!6800 (value!207869 List!42111)) (IntegerValue!20400 (value!207870 (_ BitVec 32)) (text!48047 List!42111)) (IntegerValue!20401 (value!207871 Int) (text!48048 List!42111)) (Times!6800) (Or!6800) (Equal!6800) (Minus!6800) (Broken!34004 (value!207872 List!42111)) (And!6800) (Div!6800) (LessEqual!6800) (Mod!6800) (Concat!18275) (Not!6800) (Plus!6800) (SpaceValue!6800 (value!207873 List!42111)) (IntegerValue!20402 (value!207874 Int) (text!48049 List!42111)) (StringLiteralValue!20401 (text!48050 List!42111)) (FloatLiteralValue!13601 (text!48051 List!42111)) (BytesLiteralValue!6800 (value!207875 List!42111)) (CommentValue!13601 (value!207876 List!42111)) (StringLiteralValue!20402 (value!207877 List!42111)) (ErrorTokenValue!6800 (msg!6861 List!42111)) )
))
(declare-datatypes ((C!23136 0))(
  ( (C!23137 (val!13662 Int)) )
))
(declare-datatypes ((Regex!11475 0))(
  ( (ElementMatch!11475 (c!685904 C!23136)) (Concat!18276 (regOne!23462 Regex!11475) (regTwo!23462 Regex!11475)) (EmptyExpr!11475) (Star!11475 (reg!11804 Regex!11475)) (EmptyLang!11475) (Union!11475 (regOne!23463 Regex!11475) (regTwo!23463 Regex!11475)) )
))
(declare-datatypes ((String!47718 0))(
  ( (String!47719 (value!207878 String)) )
))
(declare-datatypes ((List!42112 0))(
  ( (Nil!41988) (Cons!41988 (h!47408 C!23136) (t!328473 List!42112)) )
))
(declare-datatypes ((IArray!25567 0))(
  ( (IArray!25568 (innerList!12841 List!42112)) )
))
(declare-datatypes ((Conc!12781 0))(
  ( (Node!12781 (left!31944 Conc!12781) (right!32274 Conc!12781) (csize!25792 Int) (cheight!12992 Int)) (Leaf!19773 (xs!16087 IArray!25567) (csize!25793 Int)) (Empty!12781) )
))
(declare-datatypes ((BalanceConc!25156 0))(
  ( (BalanceConc!25157 (c!685905 Conc!12781)) )
))
(declare-datatypes ((TokenValueInjection!13028 0))(
  ( (TokenValueInjection!13029 (toValue!9046 Int) (toChars!8905 Int)) )
))
(declare-datatypes ((Rule!12940 0))(
  ( (Rule!12941 (regex!6570 Regex!11475) (tag!7430 String!47718) (isSeparator!6570 Bool) (transformation!6570 TokenValueInjection!13028)) )
))
(declare-datatypes ((Token!12278 0))(
  ( (Token!12279 (value!207879 TokenValue!6800) (rule!9536 Rule!12940) (size!31470 Int) (originalCharacters!7170 List!42112)) )
))
(declare-datatypes ((tuple2!41270 0))(
  ( (tuple2!41271 (_1!23769 Token!12278) (_2!23769 List!42112)) )
))
(declare-datatypes ((Option!8990 0))(
  ( (None!8989) (Some!8989 (v!39329 tuple2!41270)) )
))
(declare-fun lt!1380671 () Option!8990)

(declare-fun size!31471 (List!42112) Int)

(assert (=> b!3949892 (= e!2444566 (= (size!31470 (_1!23769 (v!39329 lt!1380671))) (size!31471 (originalCharacters!7170 (_1!23769 (v!39329 lt!1380671))))))))

(declare-fun e!2444563 () Bool)

(assert (=> b!3949894 (= e!2444563 (and tp!1203071 tp!1203072))))

(declare-fun b!3949895 () Bool)

(declare-fun e!2444571 () Bool)

(declare-fun e!2444577 () Bool)

(assert (=> b!3949895 (= e!2444571 e!2444577)))

(declare-fun res!1598181 () Bool)

(assert (=> b!3949895 (=> (not res!1598181) (not e!2444577))))

(get-info :version)

(assert (=> b!3949895 (= res!1598181 ((_ is Some!8989) lt!1380671))))

(declare-datatypes ((LexerInterface!6159 0))(
  ( (LexerInterfaceExt!6156 (__x!25818 Int)) (Lexer!6157) )
))
(declare-fun thiss!20629 () LexerInterface!6159)

(declare-datatypes ((List!42113 0))(
  ( (Nil!41989) (Cons!41989 (h!47409 Rule!12940) (t!328474 List!42113)) )
))
(declare-fun rules!2768 () List!42113)

(declare-fun lt!1380670 () List!42112)

(declare-fun maxPrefix!3463 (LexerInterface!6159 List!42113 List!42112) Option!8990)

(assert (=> b!3949895 (= lt!1380671 (maxPrefix!3463 thiss!20629 rules!2768 lt!1380670))))

(declare-fun b!3949896 () Bool)

(declare-fun e!2444573 () Bool)

(declare-fun tp_is_empty!19921 () Bool)

(declare-fun tp!1203061 () Bool)

(assert (=> b!3949896 (= e!2444573 (and tp_is_empty!19921 tp!1203061))))

(declare-fun b!3949897 () Bool)

(declare-fun res!1598184 () Bool)

(assert (=> b!3949897 (=> (not res!1598184) (not e!2444571))))

(declare-fun suffixResult!91 () List!42112)

(declare-fun suffix!1176 () List!42112)

(declare-datatypes ((List!42114 0))(
  ( (Nil!41990) (Cons!41990 (h!47410 Token!12278) (t!328475 List!42114)) )
))
(declare-fun suffixTokens!72 () List!42114)

(declare-datatypes ((tuple2!41272 0))(
  ( (tuple2!41273 (_1!23770 List!42114) (_2!23770 List!42112)) )
))
(declare-fun lexList!1927 (LexerInterface!6159 List!42113 List!42112) tuple2!41272)

(assert (=> b!3949897 (= res!1598184 (= (lexList!1927 thiss!20629 rules!2768 suffix!1176) (tuple2!41273 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3949898 () Bool)

(declare-fun res!1598185 () Bool)

(declare-fun e!2444568 () Bool)

(assert (=> b!3949898 (=> (not res!1598185) (not e!2444568))))

(declare-fun rulesInvariant!5502 (LexerInterface!6159 List!42113) Bool)

(assert (=> b!3949898 (= res!1598185 (rulesInvariant!5502 thiss!20629 rules!2768))))

(declare-fun prefixTokens!80 () List!42114)

(declare-fun e!2444584 () Bool)

(declare-fun b!3949899 () Bool)

(declare-fun tp!1203066 () Bool)

(declare-fun e!2444575 () Bool)

(declare-fun inv!21 (TokenValue!6800) Bool)

(assert (=> b!3949899 (= e!2444575 (and (inv!21 (value!207879 (h!47410 prefixTokens!80))) e!2444584 tp!1203066))))

(declare-fun e!2444579 () Bool)

(declare-fun e!2444562 () Bool)

(declare-fun tp!1203073 () Bool)

(declare-fun b!3949900 () Bool)

(assert (=> b!3949900 (= e!2444579 (and (inv!21 (value!207879 (h!47410 suffixTokens!72))) e!2444562 tp!1203073))))

(declare-fun b!3949901 () Bool)

(declare-fun tp!1203067 () Bool)

(declare-fun e!2444569 () Bool)

(declare-fun inv!56214 (String!47718) Bool)

(declare-fun inv!56217 (TokenValueInjection!13028) Bool)

(assert (=> b!3949901 (= e!2444562 (and tp!1203067 (inv!56214 (tag!7430 (rule!9536 (h!47410 suffixTokens!72)))) (inv!56217 (transformation!6570 (rule!9536 (h!47410 suffixTokens!72)))) e!2444569))))

(declare-fun e!2444576 () Bool)

(assert (=> b!3949902 (= e!2444576 (and tp!1203062 tp!1203065))))

(declare-fun b!3949903 () Bool)

(declare-fun tp!1203063 () Bool)

(declare-fun e!2444564 () Bool)

(declare-fun inv!56218 (Token!12278) Bool)

(assert (=> b!3949903 (= e!2444564 (and (inv!56218 (h!47410 prefixTokens!80)) e!2444575 tp!1203063))))

(declare-fun lt!1380666 () Int)

(declare-fun b!3949893 () Bool)

(declare-fun lt!1380667 () List!42112)

(declare-fun lt!1380672 () List!42112)

(declare-fun lt!1380669 () TokenValue!6800)

(assert (=> b!3949893 (= e!2444577 (not (= (v!39329 lt!1380671) (tuple2!41271 (Token!12279 lt!1380669 (rule!9536 (_1!23769 (v!39329 lt!1380671))) lt!1380666 lt!1380672) lt!1380667))))))

(assert (=> b!3949893 (and (= (size!31470 (_1!23769 (v!39329 lt!1380671))) lt!1380666) (= (originalCharacters!7170 (_1!23769 (v!39329 lt!1380671))) lt!1380672))))

(assert (=> b!3949893 (= lt!1380666 (size!31471 lt!1380672))))

(assert (=> b!3949893 e!2444566))

(declare-fun res!1598188 () Bool)

(assert (=> b!3949893 (=> (not res!1598188) (not e!2444566))))

(assert (=> b!3949893 (= res!1598188 (= (value!207879 (_1!23769 (v!39329 lt!1380671))) lt!1380669))))

(declare-fun apply!9801 (TokenValueInjection!13028 BalanceConc!25156) TokenValue!6800)

(declare-fun seqFromList!4829 (List!42112) BalanceConc!25156)

(assert (=> b!3949893 (= lt!1380669 (apply!9801 (transformation!6570 (rule!9536 (_1!23769 (v!39329 lt!1380671)))) (seqFromList!4829 lt!1380672)))))

(assert (=> b!3949893 (= (_2!23769 (v!39329 lt!1380671)) lt!1380667)))

(declare-datatypes ((Unit!60508 0))(
  ( (Unit!60509) )
))
(declare-fun lt!1380668 () Unit!60508)

(declare-fun lemmaSamePrefixThenSameSuffix!1868 (List!42112 List!42112 List!42112 List!42112 List!42112) Unit!60508)

(assert (=> b!3949893 (= lt!1380668 (lemmaSamePrefixThenSameSuffix!1868 lt!1380672 (_2!23769 (v!39329 lt!1380671)) lt!1380672 lt!1380667 lt!1380670))))

(declare-fun getSuffix!2110 (List!42112 List!42112) List!42112)

(assert (=> b!3949893 (= lt!1380667 (getSuffix!2110 lt!1380670 lt!1380672))))

(declare-fun isPrefix!3659 (List!42112 List!42112) Bool)

(declare-fun ++!10897 (List!42112 List!42112) List!42112)

(assert (=> b!3949893 (isPrefix!3659 lt!1380672 (++!10897 lt!1380672 (_2!23769 (v!39329 lt!1380671))))))

(declare-fun lt!1380673 () Unit!60508)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2518 (List!42112 List!42112) Unit!60508)

(assert (=> b!3949893 (= lt!1380673 (lemmaConcatTwoListThenFirstIsPrefix!2518 lt!1380672 (_2!23769 (v!39329 lt!1380671))))))

(declare-fun list!15596 (BalanceConc!25156) List!42112)

(declare-fun charsOf!4388 (Token!12278) BalanceConc!25156)

(assert (=> b!3949893 (= lt!1380672 (list!15596 (charsOf!4388 (_1!23769 (v!39329 lt!1380671)))))))

(declare-fun ruleValid!2512 (LexerInterface!6159 Rule!12940) Bool)

(assert (=> b!3949893 (ruleValid!2512 thiss!20629 (rule!9536 (_1!23769 (v!39329 lt!1380671))))))

(declare-fun lt!1380664 () Unit!60508)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1588 (LexerInterface!6159 Rule!12940 List!42113) Unit!60508)

(assert (=> b!3949893 (= lt!1380664 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1588 thiss!20629 (rule!9536 (_1!23769 (v!39329 lt!1380671))) rules!2768))))

(declare-fun lt!1380665 () Unit!60508)

(declare-fun lemmaCharactersSize!1223 (Token!12278) Unit!60508)

(assert (=> b!3949893 (= lt!1380665 (lemmaCharactersSize!1223 (_1!23769 (v!39329 lt!1380671))))))

(declare-fun res!1598187 () Bool)

(assert (=> start!371356 (=> (not res!1598187) (not e!2444568))))

(assert (=> start!371356 (= res!1598187 ((_ is Lexer!6157) thiss!20629))))

(assert (=> start!371356 e!2444568))

(declare-fun e!2444567 () Bool)

(assert (=> start!371356 e!2444567))

(assert (=> start!371356 true))

(assert (=> start!371356 e!2444573))

(declare-fun e!2444574 () Bool)

(assert (=> start!371356 e!2444574))

(assert (=> start!371356 e!2444564))

(declare-fun e!2444580 () Bool)

(assert (=> start!371356 e!2444580))

(declare-fun e!2444565 () Bool)

(assert (=> start!371356 e!2444565))

(declare-fun b!3949904 () Bool)

(declare-fun e!2444582 () Bool)

(declare-fun tp!1203076 () Bool)

(assert (=> b!3949904 (= e!2444582 (and tp!1203076 (inv!56214 (tag!7430 (h!47409 rules!2768))) (inv!56217 (transformation!6570 (h!47409 rules!2768))) e!2444576))))

(declare-fun tp!1203068 () Bool)

(declare-fun b!3949905 () Bool)

(assert (=> b!3949905 (= e!2444580 (and (inv!56218 (h!47410 suffixTokens!72)) e!2444579 tp!1203068))))

(declare-fun b!3949906 () Bool)

(assert (=> b!3949906 (= e!2444568 e!2444571)))

(declare-fun res!1598183 () Bool)

(assert (=> b!3949906 (=> (not res!1598183) (not e!2444571))))

(declare-fun ++!10898 (List!42114 List!42114) List!42114)

(assert (=> b!3949906 (= res!1598183 (= (lexList!1927 thiss!20629 rules!2768 lt!1380670) (tuple2!41273 (++!10898 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(declare-fun prefix!426 () List!42112)

(assert (=> b!3949906 (= lt!1380670 (++!10897 prefix!426 suffix!1176))))

(declare-fun b!3949907 () Bool)

(declare-fun res!1598186 () Bool)

(assert (=> b!3949907 (=> (not res!1598186) (not e!2444568))))

(declare-fun isEmpty!25074 (List!42112) Bool)

(assert (=> b!3949907 (= res!1598186 (not (isEmpty!25074 prefix!426)))))

(assert (=> b!3949908 (= e!2444569 (and tp!1203060 tp!1203074))))

(declare-fun b!3949909 () Bool)

(declare-fun res!1598180 () Bool)

(assert (=> b!3949909 (=> (not res!1598180) (not e!2444568))))

(declare-fun isEmpty!25075 (List!42113) Bool)

(assert (=> b!3949909 (= res!1598180 (not (isEmpty!25075 rules!2768)))))

(declare-fun b!3949910 () Bool)

(declare-fun tp!1203064 () Bool)

(assert (=> b!3949910 (= e!2444565 (and tp_is_empty!19921 tp!1203064))))

(declare-fun b!3949911 () Bool)

(declare-fun res!1598182 () Bool)

(assert (=> b!3949911 (=> (not res!1598182) (not e!2444568))))

(declare-fun isEmpty!25076 (List!42114) Bool)

(assert (=> b!3949911 (= res!1598182 (not (isEmpty!25076 prefixTokens!80)))))

(declare-fun b!3949912 () Bool)

(declare-fun tp!1203069 () Bool)

(assert (=> b!3949912 (= e!2444584 (and tp!1203069 (inv!56214 (tag!7430 (rule!9536 (h!47410 prefixTokens!80)))) (inv!56217 (transformation!6570 (rule!9536 (h!47410 prefixTokens!80)))) e!2444563))))

(declare-fun b!3949913 () Bool)

(declare-fun tp!1203070 () Bool)

(assert (=> b!3949913 (= e!2444574 (and e!2444582 tp!1203070))))

(declare-fun b!3949914 () Bool)

(declare-fun tp!1203075 () Bool)

(assert (=> b!3949914 (= e!2444567 (and tp_is_empty!19921 tp!1203075))))

(assert (= (and start!371356 res!1598187) b!3949909))

(assert (= (and b!3949909 res!1598180) b!3949898))

(assert (= (and b!3949898 res!1598185) b!3949911))

(assert (= (and b!3949911 res!1598182) b!3949907))

(assert (= (and b!3949907 res!1598186) b!3949906))

(assert (= (and b!3949906 res!1598183) b!3949897))

(assert (= (and b!3949897 res!1598184) b!3949895))

(assert (= (and b!3949895 res!1598181) b!3949893))

(assert (= (and b!3949893 res!1598188) b!3949892))

(assert (= (and start!371356 ((_ is Cons!41988) suffixResult!91)) b!3949914))

(assert (= (and start!371356 ((_ is Cons!41988) suffix!1176)) b!3949896))

(assert (= b!3949904 b!3949902))

(assert (= b!3949913 b!3949904))

(assert (= (and start!371356 ((_ is Cons!41989) rules!2768)) b!3949913))

(assert (= b!3949912 b!3949894))

(assert (= b!3949899 b!3949912))

(assert (= b!3949903 b!3949899))

(assert (= (and start!371356 ((_ is Cons!41990) prefixTokens!80)) b!3949903))

(assert (= b!3949901 b!3949908))

(assert (= b!3949900 b!3949901))

(assert (= b!3949905 b!3949900))

(assert (= (and start!371356 ((_ is Cons!41990) suffixTokens!72)) b!3949905))

(assert (= (and start!371356 ((_ is Cons!41988) prefix!426)) b!3949910))

(declare-fun m!4518727 () Bool)

(assert (=> b!3949912 m!4518727))

(declare-fun m!4518729 () Bool)

(assert (=> b!3949912 m!4518729))

(declare-fun m!4518731 () Bool)

(assert (=> b!3949907 m!4518731))

(declare-fun m!4518733 () Bool)

(assert (=> b!3949911 m!4518733))

(declare-fun m!4518735 () Bool)

(assert (=> b!3949901 m!4518735))

(declare-fun m!4518737 () Bool)

(assert (=> b!3949901 m!4518737))

(declare-fun m!4518739 () Bool)

(assert (=> b!3949904 m!4518739))

(declare-fun m!4518741 () Bool)

(assert (=> b!3949904 m!4518741))

(declare-fun m!4518743 () Bool)

(assert (=> b!3949906 m!4518743))

(declare-fun m!4518745 () Bool)

(assert (=> b!3949906 m!4518745))

(declare-fun m!4518747 () Bool)

(assert (=> b!3949906 m!4518747))

(declare-fun m!4518749 () Bool)

(assert (=> b!3949900 m!4518749))

(declare-fun m!4518751 () Bool)

(assert (=> b!3949903 m!4518751))

(declare-fun m!4518753 () Bool)

(assert (=> b!3949905 m!4518753))

(declare-fun m!4518755 () Bool)

(assert (=> b!3949895 m!4518755))

(declare-fun m!4518757 () Bool)

(assert (=> b!3949897 m!4518757))

(declare-fun m!4518759 () Bool)

(assert (=> b!3949909 m!4518759))

(declare-fun m!4518761 () Bool)

(assert (=> b!3949893 m!4518761))

(declare-fun m!4518763 () Bool)

(assert (=> b!3949893 m!4518763))

(declare-fun m!4518765 () Bool)

(assert (=> b!3949893 m!4518765))

(declare-fun m!4518767 () Bool)

(assert (=> b!3949893 m!4518767))

(assert (=> b!3949893 m!4518765))

(declare-fun m!4518769 () Bool)

(assert (=> b!3949893 m!4518769))

(assert (=> b!3949893 m!4518767))

(declare-fun m!4518771 () Bool)

(assert (=> b!3949893 m!4518771))

(declare-fun m!4518773 () Bool)

(assert (=> b!3949893 m!4518773))

(declare-fun m!4518775 () Bool)

(assert (=> b!3949893 m!4518775))

(assert (=> b!3949893 m!4518773))

(declare-fun m!4518777 () Bool)

(assert (=> b!3949893 m!4518777))

(declare-fun m!4518779 () Bool)

(assert (=> b!3949893 m!4518779))

(declare-fun m!4518781 () Bool)

(assert (=> b!3949893 m!4518781))

(declare-fun m!4518783 () Bool)

(assert (=> b!3949893 m!4518783))

(declare-fun m!4518785 () Bool)

(assert (=> b!3949893 m!4518785))

(declare-fun m!4518787 () Bool)

(assert (=> b!3949899 m!4518787))

(declare-fun m!4518789 () Bool)

(assert (=> b!3949892 m!4518789))

(declare-fun m!4518791 () Bool)

(assert (=> b!3949898 m!4518791))

(check-sat (not b!3949910) (not b_next!109175) b_and!302549 (not b!3949905) b_and!302553 (not b!3949892) (not b!3949900) (not b!3949904) (not b!3949909) (not b!3949906) (not b!3949893) (not b_next!109171) b_and!302547 (not b!3949898) (not b_next!109169) (not b!3949903) (not b_next!109167) (not b!3949901) (not b!3949896) b_and!302545 (not b_next!109165) (not b!3949913) tp_is_empty!19921 (not b!3949899) (not b_next!109173) (not b!3949912) (not b!3949911) (not b!3949897) b_and!302543 (not b!3949914) (not b!3949895) (not b!3949907) b_and!302551)
(check-sat (not b_next!109175) b_and!302549 (not b_next!109169) (not b_next!109167) b_and!302553 b_and!302545 (not b_next!109165) (not b_next!109173) b_and!302543 b_and!302551 (not b_next!109171) b_and!302547)
