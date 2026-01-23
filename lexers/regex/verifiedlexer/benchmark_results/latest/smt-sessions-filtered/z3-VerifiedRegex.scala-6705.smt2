; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!351382 () Bool)

(assert start!351382)

(declare-fun b!3742946 () Bool)

(declare-fun b_free!99205 () Bool)

(declare-fun b_next!99909 () Bool)

(assert (=> b!3742946 (= b_free!99205 (not b_next!99909))))

(declare-fun tp!1140865 () Bool)

(declare-fun b_and!277439 () Bool)

(assert (=> b!3742946 (= tp!1140865 b_and!277439)))

(declare-fun b_free!99207 () Bool)

(declare-fun b_next!99911 () Bool)

(assert (=> b!3742946 (= b_free!99207 (not b_next!99911))))

(declare-fun tp!1140863 () Bool)

(declare-fun b_and!277441 () Bool)

(assert (=> b!3742946 (= tp!1140863 b_and!277441)))

(declare-fun b!3742943 () Bool)

(declare-fun b_free!99209 () Bool)

(declare-fun b_next!99913 () Bool)

(assert (=> b!3742943 (= b_free!99209 (not b_next!99913))))

(declare-fun tp!1140868 () Bool)

(declare-fun b_and!277443 () Bool)

(assert (=> b!3742943 (= tp!1140868 b_and!277443)))

(declare-fun b_free!99211 () Bool)

(declare-fun b_next!99915 () Bool)

(assert (=> b!3742943 (= b_free!99211 (not b_next!99915))))

(declare-fun tp!1140867 () Bool)

(declare-fun b_and!277445 () Bool)

(assert (=> b!3742943 (= tp!1140867 b_and!277445)))

(declare-fun b!3742944 () Bool)

(declare-fun b_free!99213 () Bool)

(declare-fun b_next!99917 () Bool)

(assert (=> b!3742944 (= b_free!99213 (not b_next!99917))))

(declare-fun tp!1140872 () Bool)

(declare-fun b_and!277447 () Bool)

(assert (=> b!3742944 (= tp!1140872 b_and!277447)))

(declare-fun b_free!99215 () Bool)

(declare-fun b_next!99919 () Bool)

(assert (=> b!3742944 (= b_free!99215 (not b_next!99919))))

(declare-fun tp!1140869 () Bool)

(declare-fun b_and!277449 () Bool)

(assert (=> b!3742944 (= tp!1140869 b_and!277449)))

(declare-fun b!3742962 () Bool)

(declare-fun b_free!99217 () Bool)

(declare-fun b_next!99921 () Bool)

(assert (=> b!3742962 (= b_free!99217 (not b_next!99921))))

(declare-fun tp!1140870 () Bool)

(declare-fun b_and!277451 () Bool)

(assert (=> b!3742962 (= tp!1140870 b_and!277451)))

(declare-fun b_free!99219 () Bool)

(declare-fun b_next!99923 () Bool)

(assert (=> b!3742962 (= b_free!99219 (not b_next!99923))))

(declare-fun tp!1140859 () Bool)

(declare-fun b_and!277453 () Bool)

(assert (=> b!3742962 (= tp!1140859 b_and!277453)))

(declare-fun e!2314158 () Bool)

(assert (=> b!3742943 (= e!2314158 (and tp!1140868 tp!1140867))))

(declare-fun e!2314145 () Bool)

(assert (=> b!3742944 (= e!2314145 (and tp!1140872 tp!1140869))))

(declare-fun b!3742945 () Bool)

(declare-fun e!2314150 () Bool)

(declare-fun e!2314146 () Bool)

(declare-fun tp!1140861 () Bool)

(assert (=> b!3742945 (= e!2314150 (and e!2314146 tp!1140861))))

(declare-fun e!2314147 () Bool)

(assert (=> b!3742946 (= e!2314147 (and tp!1140865 tp!1140863))))

(declare-fun b!3742947 () Bool)

(declare-fun res!1517159 () Bool)

(declare-fun e!2314151 () Bool)

(assert (=> b!3742947 (=> (not res!1517159) (not e!2314151))))

(declare-datatypes ((LexerInterface!5633 0))(
  ( (LexerInterfaceExt!5630 (__x!24765 Int)) (Lexer!5631) )
))
(declare-fun thiss!27143 () LexerInterface!5633)

(declare-datatypes ((List!39836 0))(
  ( (Nil!39712) (Cons!39712 (h!45132 (_ BitVec 16)) (t!302519 List!39836)) )
))
(declare-datatypes ((TokenValue!6274 0))(
  ( (FloatLiteralValue!12548 (text!44363 List!39836)) (TokenValueExt!6273 (__x!24766 Int)) (Broken!31370 (value!192842 List!39836)) (Object!6397) (End!6274) (Def!6274) (Underscore!6274) (Match!6274) (Else!6274) (Error!6274) (Case!6274) (If!6274) (Extends!6274) (Abstract!6274) (Class!6274) (Val!6274) (DelimiterValue!12548 (del!6334 List!39836)) (KeywordValue!6280 (value!192843 List!39836)) (CommentValue!12548 (value!192844 List!39836)) (WhitespaceValue!12548 (value!192845 List!39836)) (IndentationValue!6274 (value!192846 List!39836)) (String!44995) (Int32!6274) (Broken!31371 (value!192847 List!39836)) (Boolean!6275) (Unit!57609) (OperatorValue!6277 (op!6334 List!39836)) (IdentifierValue!12548 (value!192848 List!39836)) (IdentifierValue!12549 (value!192849 List!39836)) (WhitespaceValue!12549 (value!192850 List!39836)) (True!12548) (False!12548) (Broken!31372 (value!192851 List!39836)) (Broken!31373 (value!192852 List!39836)) (True!12549) (RightBrace!6274) (RightBracket!6274) (Colon!6274) (Null!6274) (Comma!6274) (LeftBracket!6274) (False!12549) (LeftBrace!6274) (ImaginaryLiteralValue!6274 (text!44364 List!39836)) (StringLiteralValue!18822 (value!192853 List!39836)) (EOFValue!6274 (value!192854 List!39836)) (IdentValue!6274 (value!192855 List!39836)) (DelimiterValue!12549 (value!192856 List!39836)) (DedentValue!6274 (value!192857 List!39836)) (NewLineValue!6274 (value!192858 List!39836)) (IntegerValue!18822 (value!192859 (_ BitVec 32)) (text!44365 List!39836)) (IntegerValue!18823 (value!192860 Int) (text!44366 List!39836)) (Times!6274) (Or!6274) (Equal!6274) (Minus!6274) (Broken!31374 (value!192861 List!39836)) (And!6274) (Div!6274) (LessEqual!6274) (Mod!6274) (Concat!17223) (Not!6274) (Plus!6274) (SpaceValue!6274 (value!192862 List!39836)) (IntegerValue!18824 (value!192863 Int) (text!44367 List!39836)) (StringLiteralValue!18823 (text!44368 List!39836)) (FloatLiteralValue!12549 (text!44369 List!39836)) (BytesLiteralValue!6274 (value!192864 List!39836)) (CommentValue!12549 (value!192865 List!39836)) (StringLiteralValue!18824 (value!192866 List!39836)) (ErrorTokenValue!6274 (msg!6335 List!39836)) )
))
(declare-datatypes ((C!22084 0))(
  ( (C!22085 (val!13090 Int)) )
))
(declare-datatypes ((List!39837 0))(
  ( (Nil!39713) (Cons!39713 (h!45133 C!22084) (t!302520 List!39837)) )
))
(declare-datatypes ((IArray!24287 0))(
  ( (IArray!24288 (innerList!12201 List!39837)) )
))
(declare-datatypes ((Conc!12141 0))(
  ( (Node!12141 (left!30794 Conc!12141) (right!31124 Conc!12141) (csize!24512 Int) (cheight!12352 Int)) (Leaf!18847 (xs!15343 IArray!24287) (csize!24513 Int)) (Empty!12141) )
))
(declare-datatypes ((Regex!10949 0))(
  ( (ElementMatch!10949 (c!648478 C!22084)) (Concat!17224 (regOne!22410 Regex!10949) (regTwo!22410 Regex!10949)) (EmptyExpr!10949) (Star!10949 (reg!11278 Regex!10949)) (EmptyLang!10949) (Union!10949 (regOne!22411 Regex!10949) (regTwo!22411 Regex!10949)) )
))
(declare-datatypes ((String!44996 0))(
  ( (String!44997 (value!192867 String)) )
))
(declare-datatypes ((BalanceConc!23896 0))(
  ( (BalanceConc!23897 (c!648479 Conc!12141)) )
))
(declare-datatypes ((TokenValueInjection!11976 0))(
  ( (TokenValueInjection!11977 (toValue!8388 Int) (toChars!8247 Int)) )
))
(declare-datatypes ((Rule!11888 0))(
  ( (Rule!11889 (regex!6044 Regex!10949) (tag!6904 String!44996) (isSeparator!6044 Bool) (transformation!6044 TokenValueInjection!11976)) )
))
(declare-datatypes ((List!39838 0))(
  ( (Nil!39714) (Cons!39714 (h!45134 Rule!11888) (t!302521 List!39838)) )
))
(declare-fun rules!4189 () List!39838)

(declare-fun rulesInvariant!5030 (LexerInterface!5633 List!39838) Bool)

(assert (=> b!3742947 (= res!1517159 (rulesInvariant!5030 thiss!27143 rules!4189))))

(declare-fun rNSep!159 () Rule!11888)

(declare-fun tp!1140871 () Bool)

(declare-fun b!3742948 () Bool)

(declare-fun e!2314153 () Bool)

(declare-fun inv!53267 (String!44996) Bool)

(declare-fun inv!53269 (TokenValueInjection!11976) Bool)

(assert (=> b!3742948 (= e!2314153 (and tp!1140871 (inv!53267 (tag!6904 rNSep!159)) (inv!53269 (transformation!6044 rNSep!159)) e!2314158))))

(declare-fun b!3742949 () Bool)

(declare-fun res!1517160 () Bool)

(assert (=> b!3742949 (=> (not res!1517160) (not e!2314151))))

(declare-fun rSep!159 () Rule!11888)

(assert (=> b!3742949 (= res!1517160 (and (not (isSeparator!6044 rNSep!159)) (isSeparator!6044 rSep!159)))))

(declare-fun b!3742950 () Bool)

(assert (=> b!3742950 (= e!2314151 false)))

(declare-fun lt!1299282 () Bool)

(declare-fun rulesRec!198 () List!39838)

(declare-fun sepAndNonSepRulesDisjointChars!2022 (List!39838 List!39838) Bool)

(assert (=> b!3742950 (= lt!1299282 (sepAndNonSepRulesDisjointChars!2022 rules!4189 (t!302521 rulesRec!198)))))

(declare-fun b!3742951 () Bool)

(declare-fun res!1517157 () Bool)

(assert (=> b!3742951 (=> (not res!1517157) (not e!2314151))))

(declare-fun contains!8045 (List!39838 Rule!11888) Bool)

(assert (=> b!3742951 (= res!1517157 (contains!8045 rules!4189 rNSep!159))))

(declare-fun b!3742952 () Bool)

(declare-fun res!1517158 () Bool)

(assert (=> b!3742952 (=> (not res!1517158) (not e!2314151))))

(assert (=> b!3742952 (= res!1517158 (contains!8045 rules!4189 rSep!159))))

(declare-fun b!3742953 () Bool)

(declare-fun res!1517153 () Bool)

(assert (=> b!3742953 (=> (not res!1517153) (not e!2314151))))

(assert (=> b!3742953 (= res!1517153 (contains!8045 rulesRec!198 rNSep!159))))

(declare-fun tp!1140862 () Bool)

(declare-fun e!2314154 () Bool)

(declare-fun b!3742954 () Bool)

(assert (=> b!3742954 (= e!2314154 (and tp!1140862 (inv!53267 (tag!6904 rSep!159)) (inv!53269 (transformation!6044 rSep!159)) e!2314145))))

(declare-fun res!1517152 () Bool)

(assert (=> start!351382 (=> (not res!1517152) (not e!2314151))))

(get-info :version)

(assert (=> start!351382 (= res!1517152 ((_ is Lexer!5631) thiss!27143))))

(assert (=> start!351382 e!2314151))

(assert (=> start!351382 true))

(assert (=> start!351382 e!2314150))

(assert (=> start!351382 e!2314154))

(declare-fun e!2314144 () Bool)

(assert (=> start!351382 e!2314144))

(declare-fun tp_is_empty!18913 () Bool)

(assert (=> start!351382 tp_is_empty!18913))

(assert (=> start!351382 e!2314153))

(declare-fun b!3742955 () Bool)

(declare-fun res!1517156 () Bool)

(assert (=> b!3742955 (=> (not res!1517156) (not e!2314151))))

(assert (=> b!3742955 (= res!1517156 (and (or (not ((_ is Cons!39714) rulesRec!198)) (not (= (h!45134 rulesRec!198) rNSep!159))) ((_ is Cons!39714) rulesRec!198)))))

(declare-fun tp!1140866 () Bool)

(declare-fun b!3742956 () Bool)

(assert (=> b!3742956 (= e!2314146 (and tp!1140866 (inv!53267 (tag!6904 (h!45134 rules!4189))) (inv!53269 (transformation!6044 (h!45134 rules!4189))) e!2314147))))

(declare-fun b!3742957 () Bool)

(declare-fun e!2314152 () Bool)

(declare-fun tp!1140860 () Bool)

(assert (=> b!3742957 (= e!2314144 (and e!2314152 tp!1140860))))

(declare-fun b!3742958 () Bool)

(declare-fun res!1517151 () Bool)

(assert (=> b!3742958 (=> (not res!1517151) (not e!2314151))))

(assert (=> b!3742958 (= res!1517151 (contains!8045 (t!302521 rulesRec!198) rNSep!159))))

(declare-fun b!3742959 () Bool)

(declare-fun res!1517154 () Bool)

(assert (=> b!3742959 (=> (not res!1517154) (not e!2314151))))

(assert (=> b!3742959 (= res!1517154 (sepAndNonSepRulesDisjointChars!2022 rules!4189 rulesRec!198))))

(declare-fun b!3742960 () Bool)

(declare-fun res!1517155 () Bool)

(assert (=> b!3742960 (=> (not res!1517155) (not e!2314151))))

(declare-fun c!6900 () C!22084)

(declare-fun contains!8046 (List!39837 C!22084) Bool)

(declare-fun usedCharacters!1212 (Regex!10949) List!39837)

(assert (=> b!3742960 (= res!1517155 (contains!8046 (usedCharacters!1212 (regex!6044 rNSep!159)) c!6900))))

(declare-fun b!3742961 () Bool)

(declare-fun tp!1140864 () Bool)

(declare-fun e!2314156 () Bool)

(assert (=> b!3742961 (= e!2314152 (and tp!1140864 (inv!53267 (tag!6904 (h!45134 rulesRec!198))) (inv!53269 (transformation!6044 (h!45134 rulesRec!198))) e!2314156))))

(assert (=> b!3742962 (= e!2314156 (and tp!1140870 tp!1140859))))

(assert (= (and start!351382 res!1517152) b!3742947))

(assert (= (and b!3742947 res!1517159) b!3742952))

(assert (= (and b!3742952 res!1517158) b!3742953))

(assert (= (and b!3742953 res!1517153) b!3742951))

(assert (= (and b!3742951 res!1517157) b!3742949))

(assert (= (and b!3742949 res!1517160) b!3742960))

(assert (= (and b!3742960 res!1517155) b!3742959))

(assert (= (and b!3742959 res!1517154) b!3742955))

(assert (= (and b!3742955 res!1517156) b!3742958))

(assert (= (and b!3742958 res!1517151) b!3742950))

(assert (= b!3742956 b!3742946))

(assert (= b!3742945 b!3742956))

(assert (= (and start!351382 ((_ is Cons!39714) rules!4189)) b!3742945))

(assert (= b!3742954 b!3742944))

(assert (= start!351382 b!3742954))

(assert (= b!3742961 b!3742962))

(assert (= b!3742957 b!3742961))

(assert (= (and start!351382 ((_ is Cons!39714) rulesRec!198)) b!3742957))

(assert (= b!3742948 b!3742943))

(assert (= start!351382 b!3742948))

(declare-fun m!4236879 () Bool)

(assert (=> b!3742956 m!4236879))

(declare-fun m!4236881 () Bool)

(assert (=> b!3742956 m!4236881))

(declare-fun m!4236883 () Bool)

(assert (=> b!3742952 m!4236883))

(declare-fun m!4236885 () Bool)

(assert (=> b!3742958 m!4236885))

(declare-fun m!4236887 () Bool)

(assert (=> b!3742950 m!4236887))

(declare-fun m!4236889 () Bool)

(assert (=> b!3742954 m!4236889))

(declare-fun m!4236891 () Bool)

(assert (=> b!3742954 m!4236891))

(declare-fun m!4236893 () Bool)

(assert (=> b!3742947 m!4236893))

(declare-fun m!4236895 () Bool)

(assert (=> b!3742961 m!4236895))

(declare-fun m!4236897 () Bool)

(assert (=> b!3742961 m!4236897))

(declare-fun m!4236899 () Bool)

(assert (=> b!3742948 m!4236899))

(declare-fun m!4236901 () Bool)

(assert (=> b!3742948 m!4236901))

(declare-fun m!4236903 () Bool)

(assert (=> b!3742959 m!4236903))

(declare-fun m!4236905 () Bool)

(assert (=> b!3742951 m!4236905))

(declare-fun m!4236907 () Bool)

(assert (=> b!3742953 m!4236907))

(declare-fun m!4236909 () Bool)

(assert (=> b!3742960 m!4236909))

(assert (=> b!3742960 m!4236909))

(declare-fun m!4236911 () Bool)

(assert (=> b!3742960 m!4236911))

(check-sat (not b!3742958) b_and!277445 b_and!277447 (not b!3742952) (not b!3742953) (not b_next!99917) (not b!3742948) (not b_next!99915) tp_is_empty!18913 b_and!277441 (not b!3742947) (not b_next!99921) (not b_next!99909) (not b!3742957) (not b!3742945) (not b!3742959) (not b_next!99911) (not b_next!99923) b_and!277449 (not b!3742951) (not b!3742950) (not b_next!99913) b_and!277453 (not b_next!99919) (not b!3742961) (not b!3742956) (not b!3742960) b_and!277451 (not b!3742954) b_and!277443 b_and!277439)
(check-sat b_and!277445 b_and!277447 (not b_next!99917) b_and!277451 (not b_next!99915) b_and!277441 (not b_next!99921) (not b_next!99909) (not b_next!99911) (not b_next!99923) b_and!277449 (not b_next!99913) b_and!277453 (not b_next!99919) b_and!277443 b_and!277439)
