; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!346230 () Bool)

(assert start!346230)

(declare-fun b!3685498 () Bool)

(declare-fun b_free!97749 () Bool)

(declare-fun b_next!98453 () Bool)

(assert (=> b!3685498 (= b_free!97749 (not b_next!98453))))

(declare-fun tp!1120239 () Bool)

(declare-fun b_and!275431 () Bool)

(assert (=> b!3685498 (= tp!1120239 b_and!275431)))

(declare-fun b_free!97751 () Bool)

(declare-fun b_next!98455 () Bool)

(assert (=> b!3685498 (= b_free!97751 (not b_next!98455))))

(declare-fun tp!1120235 () Bool)

(declare-fun b_and!275433 () Bool)

(assert (=> b!3685498 (= tp!1120235 b_and!275433)))

(declare-fun b!3685492 () Bool)

(declare-fun res!1497568 () Bool)

(declare-fun e!2282227 () Bool)

(assert (=> b!3685492 (=> res!1497568 e!2282227)))

(declare-datatypes ((LexerInterface!5467 0))(
  ( (LexerInterfaceExt!5464 (__x!24433 Int)) (Lexer!5465) )
))
(declare-fun thiss!25197 () LexerInterface!5467)

(declare-datatypes ((C!21460 0))(
  ( (C!21461 (val!12778 Int)) )
))
(declare-datatypes ((List!39082 0))(
  ( (Nil!38958) (Cons!38958 (h!44378 C!21460) (t!301057 List!39082)) )
))
(declare-fun lt!1289654 () List!39082)

(declare-datatypes ((List!39083 0))(
  ( (Nil!38959) (Cons!38959 (h!44379 (_ BitVec 16)) (t!301058 List!39083)) )
))
(declare-datatypes ((TokenValue!6108 0))(
  ( (FloatLiteralValue!12216 (text!43201 List!39083)) (TokenValueExt!6107 (__x!24434 Int)) (Broken!30540 (value!187957 List!39083)) (Object!6231) (End!6108) (Def!6108) (Underscore!6108) (Match!6108) (Else!6108) (Error!6108) (Case!6108) (If!6108) (Extends!6108) (Abstract!6108) (Class!6108) (Val!6108) (DelimiterValue!12216 (del!6168 List!39083)) (KeywordValue!6114 (value!187958 List!39083)) (CommentValue!12216 (value!187959 List!39083)) (WhitespaceValue!12216 (value!187960 List!39083)) (IndentationValue!6108 (value!187961 List!39083)) (String!43873) (Int32!6108) (Broken!30541 (value!187962 List!39083)) (Boolean!6109) (Unit!57029) (OperatorValue!6111 (op!6168 List!39083)) (IdentifierValue!12216 (value!187963 List!39083)) (IdentifierValue!12217 (value!187964 List!39083)) (WhitespaceValue!12217 (value!187965 List!39083)) (True!12216) (False!12216) (Broken!30542 (value!187966 List!39083)) (Broken!30543 (value!187967 List!39083)) (True!12217) (RightBrace!6108) (RightBracket!6108) (Colon!6108) (Null!6108) (Comma!6108) (LeftBracket!6108) (False!12217) (LeftBrace!6108) (ImaginaryLiteralValue!6108 (text!43202 List!39083)) (StringLiteralValue!18324 (value!187968 List!39083)) (EOFValue!6108 (value!187969 List!39083)) (IdentValue!6108 (value!187970 List!39083)) (DelimiterValue!12217 (value!187971 List!39083)) (DedentValue!6108 (value!187972 List!39083)) (NewLineValue!6108 (value!187973 List!39083)) (IntegerValue!18324 (value!187974 (_ BitVec 32)) (text!43203 List!39083)) (IntegerValue!18325 (value!187975 Int) (text!43204 List!39083)) (Times!6108) (Or!6108) (Equal!6108) (Minus!6108) (Broken!30544 (value!187976 List!39083)) (And!6108) (Div!6108) (LessEqual!6108) (Mod!6108) (Concat!16745) (Not!6108) (Plus!6108) (SpaceValue!6108 (value!187977 List!39083)) (IntegerValue!18326 (value!187978 Int) (text!43205 List!39083)) (StringLiteralValue!18325 (text!43206 List!39083)) (FloatLiteralValue!12217 (text!43207 List!39083)) (BytesLiteralValue!6108 (value!187979 List!39083)) (CommentValue!12217 (value!187980 List!39083)) (StringLiteralValue!18326 (value!187981 List!39083)) (ErrorTokenValue!6108 (msg!6169 List!39083)) )
))
(declare-datatypes ((IArray!23897 0))(
  ( (IArray!23898 (innerList!12006 List!39082)) )
))
(declare-datatypes ((Conc!11946 0))(
  ( (Node!11946 (left!30391 Conc!11946) (right!30721 Conc!11946) (csize!24122 Int) (cheight!12157 Int)) (Leaf!18496 (xs!15148 IArray!23897) (csize!24123 Int)) (Empty!11946) )
))
(declare-datatypes ((BalanceConc!23506 0))(
  ( (BalanceConc!23507 (c!637489 Conc!11946)) )
))
(declare-datatypes ((Regex!10637 0))(
  ( (ElementMatch!10637 (c!637490 C!21460)) (Concat!16746 (regOne!21786 Regex!10637) (regTwo!21786 Regex!10637)) (EmptyExpr!10637) (Star!10637 (reg!10966 Regex!10637)) (EmptyLang!10637) (Union!10637 (regOne!21787 Regex!10637) (regTwo!21787 Regex!10637)) )
))
(declare-datatypes ((String!43874 0))(
  ( (String!43875 (value!187982 String)) )
))
(declare-datatypes ((TokenValueInjection!11644 0))(
  ( (TokenValueInjection!11645 (toValue!8186 Int) (toChars!8045 Int)) )
))
(declare-datatypes ((Rule!11556 0))(
  ( (Rule!11557 (regex!5878 Regex!10637) (tag!6688 String!43874) (isSeparator!5878 Bool) (transformation!5878 TokenValueInjection!11644)) )
))
(declare-datatypes ((List!39084 0))(
  ( (Nil!38960) (Cons!38960 (h!44380 Rule!11556) (t!301059 List!39084)) )
))
(declare-fun rules!3568 () List!39084)

(declare-datatypes ((Token!11122 0))(
  ( (Token!11123 (value!187983 TokenValue!6108) (rule!8720 Rule!11556) (size!29774 Int) (originalCharacters!6592 List!39082)) )
))
(declare-datatypes ((tuple2!38840 0))(
  ( (tuple2!38841 (_1!22554 Token!11122) (_2!22554 List!39082)) )
))
(declare-datatypes ((Option!8367 0))(
  ( (None!8366) (Some!8366 (v!38312 tuple2!38840)) )
))
(declare-fun isEmpty!23164 (Option!8367) Bool)

(declare-fun maxPrefix!2995 (LexerInterface!5467 List!39084 List!39082) Option!8367)

(assert (=> b!3685492 (= res!1497568 (not (isEmpty!23164 (maxPrefix!2995 thiss!25197 rules!3568 lt!1289654))))))

(declare-fun b!3685493 () Bool)

(declare-fun e!2282225 () Bool)

(declare-fun e!2282224 () Bool)

(assert (=> b!3685493 (= e!2282225 e!2282224)))

(declare-fun res!1497564 () Bool)

(assert (=> b!3685493 (=> (not res!1497564) (not e!2282224))))

(declare-datatypes ((List!39085 0))(
  ( (Nil!38961) (Cons!38961 (h!44381 Token!11122) (t!301060 List!39085)) )
))
(declare-datatypes ((IArray!23899 0))(
  ( (IArray!23900 (innerList!12007 List!39085)) )
))
(declare-datatypes ((Conc!11947 0))(
  ( (Node!11947 (left!30392 Conc!11947) (right!30722 Conc!11947) (csize!24124 Int) (cheight!12158 Int)) (Leaf!18497 (xs!15149 IArray!23899) (csize!24125 Int)) (Empty!11947) )
))
(declare-datatypes ((BalanceConc!23508 0))(
  ( (BalanceConc!23509 (c!637491 Conc!11947)) )
))
(declare-datatypes ((tuple2!38842 0))(
  ( (tuple2!38843 (_1!22555 BalanceConc!23508) (_2!22555 BalanceConc!23506)) )
))
(declare-fun lt!1289653 () tuple2!38842)

(declare-fun isEmpty!23165 (BalanceConc!23508) Bool)

(assert (=> b!3685493 (= res!1497564 (not (isEmpty!23165 (_1!22555 lt!1289653))))))

(declare-fun input!3129 () List!39082)

(declare-fun lex!2608 (LexerInterface!5467 List!39084 BalanceConc!23506) tuple2!38842)

(declare-fun seqFromList!4427 (List!39082) BalanceConc!23506)

(assert (=> b!3685493 (= lt!1289653 (lex!2608 thiss!25197 rules!3568 (seqFromList!4427 input!3129)))))

(declare-fun e!2282229 () Bool)

(declare-fun b!3685494 () Bool)

(declare-fun tp!1120240 () Bool)

(declare-fun e!2282232 () Bool)

(declare-fun inv!52433 (String!43874) Bool)

(declare-fun inv!52435 (TokenValueInjection!11644) Bool)

(assert (=> b!3685494 (= e!2282229 (and tp!1120240 (inv!52433 (tag!6688 (h!44380 rules!3568))) (inv!52435 (transformation!5878 (h!44380 rules!3568))) e!2282232))))

(declare-fun b!3685495 () Bool)

(declare-fun res!1497567 () Bool)

(assert (=> b!3685495 (=> (not res!1497567) (not e!2282225))))

(declare-fun rulesInvariant!4864 (LexerInterface!5467 List!39084) Bool)

(assert (=> b!3685495 (= res!1497567 (rulesInvariant!4864 thiss!25197 rules!3568))))

(declare-fun b!3685497 () Bool)

(assert (=> b!3685497 (= e!2282224 (not e!2282227))))

(declare-fun res!1497569 () Bool)

(assert (=> b!3685497 (=> res!1497569 e!2282227)))

(declare-fun lt!1289662 () Token!11122)

(declare-fun lt!1289657 () List!39082)

(declare-fun matchR!5192 (Regex!10637 List!39082) Bool)

(assert (=> b!3685497 (= res!1497569 (not (matchR!5192 (regex!5878 (rule!8720 lt!1289662)) lt!1289657)))))

(declare-fun e!2282228 () Bool)

(assert (=> b!3685497 e!2282228))

(declare-fun res!1497563 () Bool)

(assert (=> b!3685497 (=> (not res!1497563) (not e!2282228))))

(declare-datatypes ((Option!8368 0))(
  ( (None!8367) (Some!8367 (v!38313 Rule!11556)) )
))
(declare-fun lt!1289658 () Option!8368)

(declare-fun isDefined!6579 (Option!8368) Bool)

(assert (=> b!3685497 (= res!1497563 (isDefined!6579 lt!1289658))))

(declare-fun getRuleFromTag!1466 (LexerInterface!5467 List!39084 String!43874) Option!8368)

(assert (=> b!3685497 (= lt!1289658 (getRuleFromTag!1466 thiss!25197 rules!3568 (tag!6688 (rule!8720 lt!1289662))))))

(declare-datatypes ((Unit!57030 0))(
  ( (Unit!57031) )
))
(declare-fun lt!1289659 () Unit!57030)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1466 (LexerInterface!5467 List!39084 List!39082 Token!11122) Unit!57030)

(assert (=> b!3685497 (= lt!1289659 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1466 thiss!25197 rules!3568 input!3129 lt!1289662))))

(declare-fun isPrefix!3231 (List!39082 List!39082) Bool)

(assert (=> b!3685497 (isPrefix!3231 lt!1289657 lt!1289654)))

(declare-fun suffix!1448 () List!39082)

(declare-fun ++!9697 (List!39082 List!39082) List!39082)

(assert (=> b!3685497 (= lt!1289654 (++!9697 input!3129 suffix!1448))))

(declare-fun lt!1289660 () Unit!57030)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!562 (List!39082 List!39082 List!39082) Unit!57030)

(assert (=> b!3685497 (= lt!1289660 (lemmaPrefixStaysPrefixWhenAddingToSuffix!562 lt!1289657 input!3129 suffix!1448))))

(declare-fun lt!1289656 () tuple2!38840)

(assert (=> b!3685497 (isPrefix!3231 lt!1289657 (++!9697 lt!1289657 (_2!22554 lt!1289656)))))

(declare-fun lt!1289651 () Unit!57030)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2148 (List!39082 List!39082) Unit!57030)

(assert (=> b!3685497 (= lt!1289651 (lemmaConcatTwoListThenFirstIsPrefix!2148 lt!1289657 (_2!22554 lt!1289656)))))

(declare-fun get!12907 (Option!8367) tuple2!38840)

(assert (=> b!3685497 (= lt!1289656 (get!12907 (maxPrefix!2995 thiss!25197 rules!3568 input!3129)))))

(declare-fun list!14520 (BalanceConc!23506) List!39082)

(declare-fun charsOf!3889 (Token!11122) BalanceConc!23506)

(assert (=> b!3685497 (= lt!1289657 (list!14520 (charsOf!3889 lt!1289662)))))

(declare-fun head!7936 (List!39085) Token!11122)

(declare-fun list!14521 (BalanceConc!23508) List!39085)

(assert (=> b!3685497 (= lt!1289662 (head!7936 (list!14521 (_1!22555 lt!1289653))))))

(assert (=> b!3685498 (= e!2282232 (and tp!1120239 tp!1120235))))

(declare-fun b!3685499 () Bool)

(declare-fun e!2282234 () Bool)

(declare-fun tp!1120238 () Bool)

(assert (=> b!3685499 (= e!2282234 (and e!2282229 tp!1120238))))

(declare-fun b!3685500 () Bool)

(declare-fun res!1497565 () Bool)

(assert (=> b!3685500 (=> (not res!1497565) (not e!2282225))))

(declare-fun isEmpty!23166 (List!39084) Bool)

(assert (=> b!3685500 (= res!1497565 (not (isEmpty!23166 rules!3568)))))

(declare-fun b!3685501 () Bool)

(assert (=> b!3685501 (= e!2282227 true)))

(declare-fun lt!1289652 () Bool)

(declare-fun ruleValid!2122 (LexerInterface!5467 Rule!11556) Bool)

(assert (=> b!3685501 (= lt!1289652 (ruleValid!2122 thiss!25197 (rule!8720 lt!1289662)))))

(declare-fun maxPrefixOneRule!2119 (LexerInterface!5467 Rule!11556 List!39082) Option!8367)

(assert (=> b!3685501 (isEmpty!23164 (maxPrefixOneRule!2119 thiss!25197 (rule!8720 lt!1289662) lt!1289654))))

(declare-fun lt!1289655 () Unit!57030)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!586 (LexerInterface!5467 Rule!11556 List!39084 List!39082) Unit!57030)

(assert (=> b!3685501 (= lt!1289655 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!586 thiss!25197 (rule!8720 lt!1289662) rules!3568 lt!1289654))))

(declare-fun b!3685502 () Bool)

(declare-fun e!2282231 () Bool)

(declare-fun tp_is_empty!18357 () Bool)

(declare-fun tp!1120237 () Bool)

(assert (=> b!3685502 (= e!2282231 (and tp_is_empty!18357 tp!1120237))))

(declare-fun b!3685503 () Bool)

(declare-fun e!2282230 () Bool)

(declare-fun tp!1120236 () Bool)

(assert (=> b!3685503 (= e!2282230 (and tp_is_empty!18357 tp!1120236))))

(declare-fun b!3685504 () Bool)

(declare-fun e!2282226 () Bool)

(declare-fun lt!1289661 () Rule!11556)

(assert (=> b!3685504 (= e!2282226 (= (rule!8720 lt!1289662) lt!1289661))))

(declare-fun res!1497570 () Bool)

(assert (=> start!346230 (=> (not res!1497570) (not e!2282225))))

(get-info :version)

(assert (=> start!346230 (= res!1497570 ((_ is Lexer!5465) thiss!25197))))

(assert (=> start!346230 e!2282225))

(assert (=> start!346230 true))

(assert (=> start!346230 e!2282234))

(assert (=> start!346230 e!2282231))

(assert (=> start!346230 e!2282230))

(declare-fun b!3685496 () Bool)

(assert (=> b!3685496 (= e!2282228 e!2282226)))

(declare-fun res!1497566 () Bool)

(assert (=> b!3685496 (=> (not res!1497566) (not e!2282226))))

(assert (=> b!3685496 (= res!1497566 (matchR!5192 (regex!5878 lt!1289661) lt!1289657))))

(declare-fun get!12908 (Option!8368) Rule!11556)

(assert (=> b!3685496 (= lt!1289661 (get!12908 lt!1289658))))

(assert (= (and start!346230 res!1497570) b!3685500))

(assert (= (and b!3685500 res!1497565) b!3685495))

(assert (= (and b!3685495 res!1497567) b!3685493))

(assert (= (and b!3685493 res!1497564) b!3685497))

(assert (= (and b!3685497 res!1497563) b!3685496))

(assert (= (and b!3685496 res!1497566) b!3685504))

(assert (= (and b!3685497 (not res!1497569)) b!3685492))

(assert (= (and b!3685492 (not res!1497568)) b!3685501))

(assert (= b!3685494 b!3685498))

(assert (= b!3685499 b!3685494))

(assert (= (and start!346230 ((_ is Cons!38960) rules!3568)) b!3685499))

(assert (= (and start!346230 ((_ is Cons!38958) suffix!1448)) b!3685502))

(assert (= (and start!346230 ((_ is Cons!38958) input!3129)) b!3685503))

(declare-fun m!4196915 () Bool)

(assert (=> b!3685492 m!4196915))

(assert (=> b!3685492 m!4196915))

(declare-fun m!4196917 () Bool)

(assert (=> b!3685492 m!4196917))

(declare-fun m!4196919 () Bool)

(assert (=> b!3685497 m!4196919))

(declare-fun m!4196921 () Bool)

(assert (=> b!3685497 m!4196921))

(declare-fun m!4196923 () Bool)

(assert (=> b!3685497 m!4196923))

(assert (=> b!3685497 m!4196921))

(declare-fun m!4196925 () Bool)

(assert (=> b!3685497 m!4196925))

(assert (=> b!3685497 m!4196919))

(declare-fun m!4196927 () Bool)

(assert (=> b!3685497 m!4196927))

(declare-fun m!4196929 () Bool)

(assert (=> b!3685497 m!4196929))

(declare-fun m!4196931 () Bool)

(assert (=> b!3685497 m!4196931))

(declare-fun m!4196933 () Bool)

(assert (=> b!3685497 m!4196933))

(declare-fun m!4196935 () Bool)

(assert (=> b!3685497 m!4196935))

(declare-fun m!4196937 () Bool)

(assert (=> b!3685497 m!4196937))

(declare-fun m!4196939 () Bool)

(assert (=> b!3685497 m!4196939))

(declare-fun m!4196941 () Bool)

(assert (=> b!3685497 m!4196941))

(declare-fun m!4196943 () Bool)

(assert (=> b!3685497 m!4196943))

(declare-fun m!4196945 () Bool)

(assert (=> b!3685497 m!4196945))

(declare-fun m!4196947 () Bool)

(assert (=> b!3685497 m!4196947))

(assert (=> b!3685497 m!4196935))

(declare-fun m!4196949 () Bool)

(assert (=> b!3685497 m!4196949))

(assert (=> b!3685497 m!4196939))

(declare-fun m!4196951 () Bool)

(assert (=> b!3685493 m!4196951))

(declare-fun m!4196953 () Bool)

(assert (=> b!3685493 m!4196953))

(assert (=> b!3685493 m!4196953))

(declare-fun m!4196955 () Bool)

(assert (=> b!3685493 m!4196955))

(declare-fun m!4196957 () Bool)

(assert (=> b!3685495 m!4196957))

(declare-fun m!4196959 () Bool)

(assert (=> b!3685496 m!4196959))

(declare-fun m!4196961 () Bool)

(assert (=> b!3685496 m!4196961))

(declare-fun m!4196963 () Bool)

(assert (=> b!3685494 m!4196963))

(declare-fun m!4196965 () Bool)

(assert (=> b!3685494 m!4196965))

(declare-fun m!4196967 () Bool)

(assert (=> b!3685500 m!4196967))

(declare-fun m!4196969 () Bool)

(assert (=> b!3685501 m!4196969))

(declare-fun m!4196971 () Bool)

(assert (=> b!3685501 m!4196971))

(assert (=> b!3685501 m!4196971))

(declare-fun m!4196973 () Bool)

(assert (=> b!3685501 m!4196973))

(declare-fun m!4196975 () Bool)

(assert (=> b!3685501 m!4196975))

(check-sat (not b!3685495) (not b!3685492) (not b!3685502) (not b!3685500) (not b!3685496) (not b!3685493) (not b!3685494) (not b!3685501) (not b!3685503) tp_is_empty!18357 (not b!3685499) b_and!275431 (not b!3685497) b_and!275433 (not b_next!98455) (not b_next!98453))
(check-sat b_and!275431 b_and!275433 (not b_next!98455) (not b_next!98453))
