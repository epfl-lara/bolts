; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!250324 () Bool)

(assert start!250324)

(declare-fun b!2584972 () Bool)

(declare-fun b_free!72805 () Bool)

(declare-fun b_next!73509 () Bool)

(assert (=> b!2584972 (= b_free!72805 (not b_next!73509))))

(declare-fun tp!820646 () Bool)

(declare-fun b_and!189435 () Bool)

(assert (=> b!2584972 (= tp!820646 b_and!189435)))

(declare-fun b_free!72807 () Bool)

(declare-fun b_next!73511 () Bool)

(assert (=> b!2584972 (= b_free!72807 (not b_next!73511))))

(declare-fun tp!820656 () Bool)

(declare-fun b_and!189437 () Bool)

(assert (=> b!2584972 (= tp!820656 b_and!189437)))

(declare-fun b!2584960 () Bool)

(declare-fun b_free!72809 () Bool)

(declare-fun b_next!73513 () Bool)

(assert (=> b!2584960 (= b_free!72809 (not b_next!73513))))

(declare-fun tp!820644 () Bool)

(declare-fun b_and!189439 () Bool)

(assert (=> b!2584960 (= tp!820644 b_and!189439)))

(declare-fun b_free!72811 () Bool)

(declare-fun b_next!73515 () Bool)

(assert (=> b!2584960 (= b_free!72811 (not b_next!73515))))

(declare-fun tp!820647 () Bool)

(declare-fun b_and!189441 () Bool)

(assert (=> b!2584960 (= tp!820647 b_and!189441)))

(declare-fun b!2584961 () Bool)

(declare-fun b_free!72813 () Bool)

(declare-fun b_next!73517 () Bool)

(assert (=> b!2584961 (= b_free!72813 (not b_next!73517))))

(declare-fun tp!820653 () Bool)

(declare-fun b_and!189443 () Bool)

(assert (=> b!2584961 (= tp!820653 b_and!189443)))

(declare-fun b_free!72815 () Bool)

(declare-fun b_next!73519 () Bool)

(assert (=> b!2584961 (= b_free!72815 (not b_next!73519))))

(declare-fun tp!820652 () Bool)

(declare-fun b_and!189445 () Bool)

(assert (=> b!2584961 (= tp!820652 b_and!189445)))

(declare-fun b!2584959 () Bool)

(declare-fun b_free!72817 () Bool)

(declare-fun b_next!73521 () Bool)

(assert (=> b!2584959 (= b_free!72817 (not b_next!73521))))

(declare-fun tp!820642 () Bool)

(declare-fun b_and!189447 () Bool)

(assert (=> b!2584959 (= tp!820642 b_and!189447)))

(declare-fun b_free!72819 () Bool)

(declare-fun b_next!73523 () Bool)

(assert (=> b!2584959 (= b_free!72819 (not b_next!73523))))

(declare-fun tp!820648 () Bool)

(declare-fun b_and!189449 () Bool)

(assert (=> b!2584959 (= tp!820648 b_and!189449)))

(declare-fun b!2584956 () Bool)

(declare-fun tp!820651 () Bool)

(declare-datatypes ((List!29855 0))(
  ( (Nil!29755) (Cons!29755 (h!35175 (_ BitVec 16)) (t!212172 List!29855)) )
))
(declare-datatypes ((TokenValue!4741 0))(
  ( (FloatLiteralValue!9482 (text!33632 List!29855)) (TokenValueExt!4740 (__x!19315 Int)) (Broken!23705 (value!146013 List!29855)) (Object!4840) (End!4741) (Def!4741) (Underscore!4741) (Match!4741) (Else!4741) (Error!4741) (Case!4741) (If!4741) (Extends!4741) (Abstract!4741) (Class!4741) (Val!4741) (DelimiterValue!9482 (del!4801 List!29855)) (KeywordValue!4747 (value!146014 List!29855)) (CommentValue!9482 (value!146015 List!29855)) (WhitespaceValue!9482 (value!146016 List!29855)) (IndentationValue!4741 (value!146017 List!29855)) (String!33112) (Int32!4741) (Broken!23706 (value!146018 List!29855)) (Boolean!4742) (Unit!43593) (OperatorValue!4744 (op!4801 List!29855)) (IdentifierValue!9482 (value!146019 List!29855)) (IdentifierValue!9483 (value!146020 List!29855)) (WhitespaceValue!9483 (value!146021 List!29855)) (True!9482) (False!9482) (Broken!23707 (value!146022 List!29855)) (Broken!23708 (value!146023 List!29855)) (True!9483) (RightBrace!4741) (RightBracket!4741) (Colon!4741) (Null!4741) (Comma!4741) (LeftBracket!4741) (False!9483) (LeftBrace!4741) (ImaginaryLiteralValue!4741 (text!33633 List!29855)) (StringLiteralValue!14223 (value!146024 List!29855)) (EOFValue!4741 (value!146025 List!29855)) (IdentValue!4741 (value!146026 List!29855)) (DelimiterValue!9483 (value!146027 List!29855)) (DedentValue!4741 (value!146028 List!29855)) (NewLineValue!4741 (value!146029 List!29855)) (IntegerValue!14223 (value!146030 (_ BitVec 32)) (text!33634 List!29855)) (IntegerValue!14224 (value!146031 Int) (text!33635 List!29855)) (Times!4741) (Or!4741) (Equal!4741) (Minus!4741) (Broken!23709 (value!146032 List!29855)) (And!4741) (Div!4741) (LessEqual!4741) (Mod!4741) (Concat!12404) (Not!4741) (Plus!4741) (SpaceValue!4741 (value!146033 List!29855)) (IntegerValue!14225 (value!146034 Int) (text!33636 List!29855)) (StringLiteralValue!14224 (text!33637 List!29855)) (FloatLiteralValue!9483 (text!33638 List!29855)) (BytesLiteralValue!4741 (value!146035 List!29855)) (CommentValue!9483 (value!146036 List!29855)) (StringLiteralValue!14225 (value!146037 List!29855)) (ErrorTokenValue!4741 (msg!4802 List!29855)) )
))
(declare-datatypes ((C!15484 0))(
  ( (C!15485 (val!9438 Int)) )
))
(declare-datatypes ((List!29856 0))(
  ( (Nil!29756) (Cons!29756 (h!35176 C!15484) (t!212173 List!29856)) )
))
(declare-datatypes ((IArray!18575 0))(
  ( (IArray!18576 (innerList!9345 List!29856)) )
))
(declare-datatypes ((Conc!9285 0))(
  ( (Node!9285 (left!22681 Conc!9285) (right!23011 Conc!9285) (csize!18800 Int) (cheight!9496 Int)) (Leaf!14166 (xs!12269 IArray!18575) (csize!18801 Int)) (Empty!9285) )
))
(declare-datatypes ((BalanceConc!18184 0))(
  ( (BalanceConc!18185 (c!416745 Conc!9285)) )
))
(declare-datatypes ((TokenValueInjection!8922 0))(
  ( (TokenValueInjection!8923 (toValue!6409 Int) (toChars!6268 Int)) )
))
(declare-datatypes ((Regex!7663 0))(
  ( (ElementMatch!7663 (c!416746 C!15484)) (Concat!12405 (regOne!15838 Regex!7663) (regTwo!15838 Regex!7663)) (EmptyExpr!7663) (Star!7663 (reg!7992 Regex!7663)) (EmptyLang!7663) (Union!7663 (regOne!15839 Regex!7663) (regTwo!15839 Regex!7663)) )
))
(declare-datatypes ((String!33113 0))(
  ( (String!33114 (value!146038 String)) )
))
(declare-datatypes ((Rule!8838 0))(
  ( (Rule!8839 (regex!4519 Regex!7663) (tag!5009 String!33113) (isSeparator!4519 Bool) (transformation!4519 TokenValueInjection!8922)) )
))
(declare-datatypes ((List!29857 0))(
  ( (Nil!29757) (Cons!29757 (h!35177 Rule!8838) (t!212174 List!29857)) )
))
(declare-fun rules!4580 () List!29857)

(declare-fun e!1631021 () Bool)

(declare-fun e!1631032 () Bool)

(declare-fun inv!40182 (String!33113) Bool)

(declare-fun inv!40185 (TokenValueInjection!8922) Bool)

(assert (=> b!2584956 (= e!1631032 (and tp!820651 (inv!40182 (tag!5009 (h!35177 rules!4580))) (inv!40185 (transformation!4519 (h!35177 rules!4580))) e!1631021))))

(declare-fun rs!798 () List!29857)

(declare-fun b!2584957 () Bool)

(declare-fun e!1631022 () Bool)

(declare-fun e!1631031 () Bool)

(declare-fun tp!820655 () Bool)

(assert (=> b!2584957 (= e!1631022 (and tp!820655 (inv!40182 (tag!5009 (h!35177 rs!798))) (inv!40185 (transformation!4519 (h!35177 rs!798))) e!1631031))))

(declare-fun b!2584958 () Bool)

(declare-fun res!1087083 () Bool)

(declare-fun e!1631026 () Bool)

(assert (=> b!2584958 (=> res!1087083 e!1631026)))

(declare-fun rule!570 () Rule!8838)

(declare-fun lt!909079 () List!29856)

(declare-fun matchR!3596 (Regex!7663 List!29856) Bool)

(assert (=> b!2584958 (= res!1087083 (not (matchR!3596 (regex!4519 rule!570) lt!909079)))))

(declare-fun e!1631018 () Bool)

(assert (=> b!2584959 (= e!1631018 (and tp!820642 tp!820648))))

(assert (=> b!2584960 (= e!1631021 (and tp!820644 tp!820647))))

(assert (=> b!2584961 (= e!1631031 (and tp!820653 tp!820652))))

(declare-fun b!2584962 () Bool)

(declare-fun e!1631035 () Bool)

(assert (=> b!2584962 (= e!1631035 (not e!1631026))))

(declare-fun res!1087081 () Bool)

(assert (=> b!2584962 (=> res!1087081 e!1631026)))

(declare-datatypes ((Token!8508 0))(
  ( (Token!8509 (value!146039 TokenValue!4741) (rule!6883 Rule!8838) (size!23071 Int) (originalCharacters!5285 List!29856)) )
))
(declare-fun token!562 () Token!8508)

(declare-fun suffix!1684 () List!29856)

(declare-datatypes ((tuple2!29710 0))(
  ( (tuple2!29711 (_1!17397 Token!8508) (_2!17397 List!29856)) )
))
(declare-datatypes ((Option!5934 0))(
  ( (None!5933) (Some!5933 (v!32034 tuple2!29710)) )
))
(declare-fun lt!909080 () Option!5934)

(assert (=> b!2584962 (= res!1087081 (not (= lt!909080 (Some!5933 (tuple2!29711 token!562 suffix!1684)))))))

(declare-fun lt!909076 () TokenValue!4741)

(declare-fun lt!909075 () Int)

(assert (=> b!2584962 (= lt!909080 (Some!5933 (tuple2!29711 (Token!8509 lt!909076 rule!570 lt!909075 lt!909079) suffix!1684)))))

(declare-datatypes ((LexerInterface!4116 0))(
  ( (LexerInterfaceExt!4113 (__x!19316 Int)) (Lexer!4114) )
))
(declare-fun thiss!28211 () LexerInterface!4116)

(declare-fun input!3654 () List!29856)

(declare-fun maxPrefixOneRule!1454 (LexerInterface!4116 Rule!8838 List!29856) Option!5934)

(assert (=> b!2584962 (= lt!909080 (maxPrefixOneRule!1454 thiss!28211 rule!570 input!3654))))

(declare-fun size!23072 (List!29856) Int)

(assert (=> b!2584962 (= lt!909075 (size!23072 lt!909079))))

(declare-fun apply!7024 (TokenValueInjection!8922 BalanceConc!18184) TokenValue!4741)

(declare-fun seqFromList!3159 (List!29856) BalanceConc!18184)

(assert (=> b!2584962 (= lt!909076 (apply!7024 (transformation!4519 rule!570) (seqFromList!3159 lt!909079)))))

(declare-datatypes ((Unit!43594 0))(
  ( (Unit!43595) )
))
(declare-fun lt!909077 () Unit!43594)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!617 (LexerInterface!4116 List!29857 List!29856 List!29856 List!29856 Rule!8838) Unit!43594)

(assert (=> b!2584962 (= lt!909077 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!617 thiss!28211 rules!4580 lt!909079 input!3654 suffix!1684 rule!570))))

(declare-fun list!11249 (BalanceConc!18184) List!29856)

(declare-fun charsOf!2848 (Token!8508) BalanceConc!18184)

(assert (=> b!2584962 (= lt!909079 (list!11249 (charsOf!2848 token!562)))))

(declare-fun b!2584963 () Bool)

(declare-fun e!1631027 () Bool)

(declare-fun tp!820645 () Bool)

(assert (=> b!2584963 (= e!1631027 (and tp!820645 (inv!40182 (tag!5009 (rule!6883 token!562))) (inv!40185 (transformation!4519 (rule!6883 token!562))) e!1631018))))

(declare-fun b!2584964 () Bool)

(declare-fun res!1087079 () Bool)

(assert (=> b!2584964 (=> (not res!1087079) (not e!1631035))))

(declare-fun e!1631024 () Bool)

(assert (=> b!2584964 (= res!1087079 e!1631024)))

(declare-fun res!1087078 () Bool)

(assert (=> b!2584964 (=> (not res!1087078) (not e!1631024))))

(declare-fun lt!909078 () List!29856)

(declare-fun ++!7309 (List!29856 List!29856) List!29856)

(assert (=> b!2584964 (= res!1087078 (= input!3654 (++!7309 lt!909078 suffix!1684)))))

(assert (=> b!2584964 (= lt!909078 (list!11249 (charsOf!2848 token!562)))))

(declare-fun res!1087084 () Bool)

(assert (=> start!250324 (=> (not res!1087084) (not e!1631035))))

(get-info :version)

(assert (=> start!250324 (= res!1087084 ((_ is Lexer!4114) thiss!28211))))

(assert (=> start!250324 e!1631035))

(declare-fun e!1631020 () Bool)

(assert (=> start!250324 e!1631020))

(assert (=> start!250324 true))

(declare-fun e!1631025 () Bool)

(assert (=> start!250324 e!1631025))

(declare-fun e!1631029 () Bool)

(declare-fun inv!40186 (Token!8508) Bool)

(assert (=> start!250324 (and (inv!40186 token!562) e!1631029)))

(declare-fun e!1631028 () Bool)

(assert (=> start!250324 e!1631028))

(declare-fun e!1631023 () Bool)

(assert (=> start!250324 e!1631023))

(declare-fun e!1631036 () Bool)

(assert (=> start!250324 e!1631036))

(declare-fun tp!820640 () Bool)

(declare-fun b!2584955 () Bool)

(declare-fun inv!21 (TokenValue!4741) Bool)

(assert (=> b!2584955 (= e!1631029 (and (inv!21 (value!146039 token!562)) e!1631027 tp!820640))))

(declare-fun b!2584965 () Bool)

(declare-fun ListPrimitiveSize!179 (List!29857) Int)

(assert (=> b!2584965 (= e!1631026 (< (ListPrimitiveSize!179 (t!212174 rs!798)) (ListPrimitiveSize!179 rs!798)))))

(declare-fun b!2584966 () Bool)

(assert (=> b!2584966 (= e!1631024 (not (not (matchR!3596 (regex!4519 rule!570) lt!909078))))))

(declare-fun ruleValid!1525 (LexerInterface!4116 Rule!8838) Bool)

(assert (=> b!2584966 (ruleValid!1525 thiss!28211 rule!570)))

(declare-fun lt!909081 () Unit!43594)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!918 (LexerInterface!4116 Rule!8838 List!29857) Unit!43594)

(assert (=> b!2584966 (= lt!909081 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!918 thiss!28211 rule!570 rules!4580))))

(declare-fun b!2584967 () Bool)

(declare-fun res!1087087 () Bool)

(assert (=> b!2584967 (=> res!1087087 e!1631026)))

(declare-fun rulesValid!1691 (LexerInterface!4116 List!29857) Bool)

(assert (=> b!2584967 (= res!1087087 (not (rulesValid!1691 thiss!28211 rs!798)))))

(declare-fun b!2584968 () Bool)

(declare-fun tp!820643 () Bool)

(assert (=> b!2584968 (= e!1631023 (and e!1631022 tp!820643))))

(declare-fun b!2584969 () Bool)

(declare-fun tp!820641 () Bool)

(assert (=> b!2584969 (= e!1631020 (and e!1631032 tp!820641))))

(declare-fun b!2584970 () Bool)

(declare-fun res!1087088 () Bool)

(assert (=> b!2584970 (=> (not res!1087088) (not e!1631035))))

(declare-fun contains!5323 (List!29857 Rule!8838) Bool)

(assert (=> b!2584970 (= res!1087088 (contains!5323 rules!4580 rule!570))))

(declare-fun b!2584971 () Bool)

(declare-fun res!1087089 () Bool)

(assert (=> b!2584971 (=> (not res!1087089) (not e!1631035))))

(declare-fun isEmpty!17103 (List!29857) Bool)

(assert (=> b!2584971 (= res!1087089 (not (isEmpty!17103 rules!4580)))))

(declare-fun e!1631017 () Bool)

(assert (=> b!2584972 (= e!1631017 (and tp!820646 tp!820656))))

(declare-fun b!2584973 () Bool)

(declare-fun res!1087082 () Bool)

(assert (=> b!2584973 (=> (not res!1087082) (not e!1631035))))

(assert (=> b!2584973 (= res!1087082 (= (rule!6883 token!562) rule!570))))

(declare-fun b!2584974 () Bool)

(declare-fun tp!820654 () Bool)

(assert (=> b!2584974 (= e!1631036 (and tp!820654 (inv!40182 (tag!5009 rule!570)) (inv!40185 (transformation!4519 rule!570)) e!1631017))))

(declare-fun b!2584975 () Bool)

(declare-fun tp_is_empty!13221 () Bool)

(declare-fun tp!820649 () Bool)

(assert (=> b!2584975 (= e!1631028 (and tp_is_empty!13221 tp!820649))))

(declare-fun b!2584976 () Bool)

(declare-fun res!1087086 () Bool)

(assert (=> b!2584976 (=> res!1087086 e!1631026)))

(assert (=> b!2584976 (= res!1087086 ((_ is Nil!29757) rs!798))))

(declare-fun b!2584977 () Bool)

(declare-fun res!1087080 () Bool)

(assert (=> b!2584977 (=> (not res!1087080) (not e!1631035))))

(declare-fun rulesInvariant!3616 (LexerInterface!4116 List!29857) Bool)

(assert (=> b!2584977 (= res!1087080 (rulesInvariant!3616 thiss!28211 rules!4580))))

(declare-fun b!2584978 () Bool)

(declare-fun res!1087085 () Bool)

(assert (=> b!2584978 (=> (not res!1087085) (not e!1631035))))

(declare-fun maxPrefix!2288 (LexerInterface!4116 List!29857 List!29856) Option!5934)

(assert (=> b!2584978 (= res!1087085 (= (maxPrefix!2288 thiss!28211 rules!4580 input!3654) (Some!5933 (tuple2!29711 token!562 suffix!1684))))))

(declare-fun b!2584979 () Bool)

(declare-fun tp!820650 () Bool)

(assert (=> b!2584979 (= e!1631025 (and tp_is_empty!13221 tp!820650))))

(assert (= (and start!250324 res!1087084) b!2584971))

(assert (= (and b!2584971 res!1087089) b!2584977))

(assert (= (and b!2584977 res!1087080) b!2584970))

(assert (= (and b!2584970 res!1087088) b!2584978))

(assert (= (and b!2584978 res!1087085) b!2584973))

(assert (= (and b!2584973 res!1087082) b!2584964))

(assert (= (and b!2584964 res!1087078) b!2584966))

(assert (= (and b!2584964 res!1087079) b!2584962))

(assert (= (and b!2584962 (not res!1087081)) b!2584958))

(assert (= (and b!2584958 (not res!1087083)) b!2584967))

(assert (= (and b!2584967 (not res!1087087)) b!2584976))

(assert (= (and b!2584976 (not res!1087086)) b!2584965))

(assert (= b!2584956 b!2584960))

(assert (= b!2584969 b!2584956))

(assert (= (and start!250324 ((_ is Cons!29757) rules!4580)) b!2584969))

(assert (= (and start!250324 ((_ is Cons!29756) input!3654)) b!2584979))

(assert (= b!2584963 b!2584959))

(assert (= b!2584955 b!2584963))

(assert (= start!250324 b!2584955))

(assert (= (and start!250324 ((_ is Cons!29756) suffix!1684)) b!2584975))

(assert (= b!2584957 b!2584961))

(assert (= b!2584968 b!2584957))

(assert (= (and start!250324 ((_ is Cons!29757) rs!798)) b!2584968))

(assert (= b!2584974 b!2584972))

(assert (= start!250324 b!2584974))

(declare-fun m!2921179 () Bool)

(assert (=> b!2584963 m!2921179))

(declare-fun m!2921181 () Bool)

(assert (=> b!2584963 m!2921181))

(declare-fun m!2921183 () Bool)

(assert (=> b!2584974 m!2921183))

(declare-fun m!2921185 () Bool)

(assert (=> b!2584974 m!2921185))

(declare-fun m!2921187 () Bool)

(assert (=> b!2584978 m!2921187))

(declare-fun m!2921189 () Bool)

(assert (=> b!2584957 m!2921189))

(declare-fun m!2921191 () Bool)

(assert (=> b!2584957 m!2921191))

(declare-fun m!2921193 () Bool)

(assert (=> b!2584955 m!2921193))

(declare-fun m!2921195 () Bool)

(assert (=> b!2584967 m!2921195))

(declare-fun m!2921197 () Bool)

(assert (=> b!2584964 m!2921197))

(declare-fun m!2921199 () Bool)

(assert (=> b!2584964 m!2921199))

(assert (=> b!2584964 m!2921199))

(declare-fun m!2921201 () Bool)

(assert (=> b!2584964 m!2921201))

(declare-fun m!2921203 () Bool)

(assert (=> start!250324 m!2921203))

(declare-fun m!2921205 () Bool)

(assert (=> b!2584977 m!2921205))

(declare-fun m!2921207 () Bool)

(assert (=> b!2584966 m!2921207))

(declare-fun m!2921209 () Bool)

(assert (=> b!2584966 m!2921209))

(declare-fun m!2921211 () Bool)

(assert (=> b!2584966 m!2921211))

(declare-fun m!2921213 () Bool)

(assert (=> b!2584956 m!2921213))

(declare-fun m!2921215 () Bool)

(assert (=> b!2584956 m!2921215))

(declare-fun m!2921217 () Bool)

(assert (=> b!2584965 m!2921217))

(declare-fun m!2921219 () Bool)

(assert (=> b!2584965 m!2921219))

(declare-fun m!2921221 () Bool)

(assert (=> b!2584958 m!2921221))

(assert (=> b!2584962 m!2921199))

(assert (=> b!2584962 m!2921201))

(assert (=> b!2584962 m!2921199))

(declare-fun m!2921223 () Bool)

(assert (=> b!2584962 m!2921223))

(declare-fun m!2921225 () Bool)

(assert (=> b!2584962 m!2921225))

(declare-fun m!2921227 () Bool)

(assert (=> b!2584962 m!2921227))

(declare-fun m!2921229 () Bool)

(assert (=> b!2584962 m!2921229))

(assert (=> b!2584962 m!2921223))

(declare-fun m!2921231 () Bool)

(assert (=> b!2584962 m!2921231))

(declare-fun m!2921233 () Bool)

(assert (=> b!2584970 m!2921233))

(declare-fun m!2921235 () Bool)

(assert (=> b!2584971 m!2921235))

(check-sat b_and!189441 (not b_next!73519) (not b!2584971) (not b!2584966) b_and!189439 (not b!2584958) (not b!2584955) (not b_next!73511) (not b!2584978) (not b!2584957) b_and!189449 (not b_next!73521) (not b_next!73517) (not b_next!73509) (not b!2584979) (not b!2584965) (not b_next!73515) (not b!2584967) b_and!189435 b_and!189437 b_and!189447 (not b!2584977) b_and!189443 (not b!2584969) (not b!2584963) b_and!189445 (not b!2584970) (not b!2584956) (not b_next!73513) (not b!2584968) (not b!2584964) (not b!2584962) tp_is_empty!13221 (not b_next!73523) (not start!250324) (not b!2584975) (not b!2584974))
(check-sat b_and!189441 (not b_next!73519) (not b_next!73509) (not b_next!73515) b_and!189435 b_and!189439 b_and!189443 b_and!189445 (not b_next!73513) (not b_next!73523) (not b_next!73511) b_and!189449 (not b_next!73521) (not b_next!73517) b_and!189437 b_and!189447)
(get-model)

(declare-fun d!731971 () Bool)

(assert (=> d!731971 (= (isEmpty!17103 rules!4580) ((_ is Nil!29757) rules!4580))))

(assert (=> b!2584971 d!731971))

(declare-fun d!731973 () Bool)

(declare-fun lt!909090 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4111 (List!29857) (InoxSet Rule!8838))

(assert (=> d!731973 (= lt!909090 (select (content!4111 rules!4580) rule!570))))

(declare-fun e!1631072 () Bool)

(assert (=> d!731973 (= lt!909090 e!1631072)))

(declare-fun res!1087126 () Bool)

(assert (=> d!731973 (=> (not res!1087126) (not e!1631072))))

(assert (=> d!731973 (= res!1087126 ((_ is Cons!29757) rules!4580))))

(assert (=> d!731973 (= (contains!5323 rules!4580 rule!570) lt!909090)))

(declare-fun b!2585038 () Bool)

(declare-fun e!1631073 () Bool)

(assert (=> b!2585038 (= e!1631072 e!1631073)))

(declare-fun res!1087125 () Bool)

(assert (=> b!2585038 (=> res!1087125 e!1631073)))

(assert (=> b!2585038 (= res!1087125 (= (h!35177 rules!4580) rule!570))))

(declare-fun b!2585039 () Bool)

(assert (=> b!2585039 (= e!1631073 (contains!5323 (t!212174 rules!4580) rule!570))))

(assert (= (and d!731973 res!1087126) b!2585038))

(assert (= (and b!2585038 (not res!1087125)) b!2585039))

(declare-fun m!2921249 () Bool)

(assert (=> d!731973 m!2921249))

(declare-fun m!2921251 () Bool)

(assert (=> d!731973 m!2921251))

(declare-fun m!2921253 () Bool)

(assert (=> b!2585039 m!2921253))

(assert (=> b!2584970 d!731973))

(declare-fun d!731975 () Bool)

(assert (=> d!731975 (= (inv!40182 (tag!5009 rule!570)) (= (mod (str.len (value!146038 (tag!5009 rule!570))) 2) 0))))

(assert (=> b!2584974 d!731975))

(declare-fun d!731977 () Bool)

(declare-fun res!1087138 () Bool)

(declare-fun e!1631085 () Bool)

(assert (=> d!731977 (=> (not res!1087138) (not e!1631085))))

(declare-fun semiInverseModEq!1888 (Int Int) Bool)

(assert (=> d!731977 (= res!1087138 (semiInverseModEq!1888 (toChars!6268 (transformation!4519 rule!570)) (toValue!6409 (transformation!4519 rule!570))))))

(assert (=> d!731977 (= (inv!40185 (transformation!4519 rule!570)) e!1631085)))

(declare-fun b!2585058 () Bool)

(declare-fun equivClasses!1789 (Int Int) Bool)

(assert (=> b!2585058 (= e!1631085 (equivClasses!1789 (toChars!6268 (transformation!4519 rule!570)) (toValue!6409 (transformation!4519 rule!570))))))

(assert (= (and d!731977 res!1087138) b!2585058))

(declare-fun m!2921273 () Bool)

(assert (=> d!731977 m!2921273))

(declare-fun m!2921277 () Bool)

(assert (=> b!2585058 m!2921277))

(assert (=> b!2584974 d!731977))

(declare-fun d!731985 () Bool)

(assert (=> d!731985 (= (inv!40182 (tag!5009 (rule!6883 token!562))) (= (mod (str.len (value!146038 (tag!5009 (rule!6883 token!562)))) 2) 0))))

(assert (=> b!2584963 d!731985))

(declare-fun d!731987 () Bool)

(declare-fun res!1087140 () Bool)

(declare-fun e!1631087 () Bool)

(assert (=> d!731987 (=> (not res!1087140) (not e!1631087))))

(assert (=> d!731987 (= res!1087140 (semiInverseModEq!1888 (toChars!6268 (transformation!4519 (rule!6883 token!562))) (toValue!6409 (transformation!4519 (rule!6883 token!562)))))))

(assert (=> d!731987 (= (inv!40185 (transformation!4519 (rule!6883 token!562))) e!1631087)))

(declare-fun b!2585060 () Bool)

(assert (=> b!2585060 (= e!1631087 (equivClasses!1789 (toChars!6268 (transformation!4519 (rule!6883 token!562))) (toValue!6409 (transformation!4519 (rule!6883 token!562)))))))

(assert (= (and d!731987 res!1087140) b!2585060))

(declare-fun m!2921279 () Bool)

(assert (=> d!731987 m!2921279))

(declare-fun m!2921281 () Bool)

(assert (=> b!2585060 m!2921281))

(assert (=> b!2584963 d!731987))

(declare-fun d!731989 () Bool)

(declare-fun list!11251 (Conc!9285) List!29856)

(assert (=> d!731989 (= (list!11249 (charsOf!2848 token!562)) (list!11251 (c!416745 (charsOf!2848 token!562))))))

(declare-fun bs!471677 () Bool)

(assert (= bs!471677 d!731989))

(declare-fun m!2921295 () Bool)

(assert (=> bs!471677 m!2921295))

(assert (=> b!2584962 d!731989))

(declare-fun b!2585099 () Bool)

(declare-fun e!1631107 () Option!5934)

(declare-datatypes ((tuple2!29714 0))(
  ( (tuple2!29715 (_1!17399 List!29856) (_2!17399 List!29856)) )
))
(declare-fun lt!909111 () tuple2!29714)

(declare-fun size!23074 (BalanceConc!18184) Int)

(assert (=> b!2585099 (= e!1631107 (Some!5933 (tuple2!29711 (Token!8509 (apply!7024 (transformation!4519 rule!570) (seqFromList!3159 (_1!17399 lt!909111))) rule!570 (size!23074 (seqFromList!3159 (_1!17399 lt!909111))) (_1!17399 lt!909111)) (_2!17399 lt!909111))))))

(declare-fun lt!909109 () Unit!43594)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!728 (Regex!7663 List!29856) Unit!43594)

(assert (=> b!2585099 (= lt!909109 (longestMatchIsAcceptedByMatchOrIsEmpty!728 (regex!4519 rule!570) input!3654))))

(declare-fun res!1087173 () Bool)

(declare-fun isEmpty!17106 (List!29856) Bool)

(declare-fun findLongestMatchInner!755 (Regex!7663 List!29856 Int List!29856 List!29856 Int) tuple2!29714)

(assert (=> b!2585099 (= res!1087173 (isEmpty!17106 (_1!17399 (findLongestMatchInner!755 (regex!4519 rule!570) Nil!29756 (size!23072 Nil!29756) input!3654 input!3654 (size!23072 input!3654)))))))

(declare-fun e!1631109 () Bool)

(assert (=> b!2585099 (=> res!1087173 e!1631109)))

(assert (=> b!2585099 e!1631109))

(declare-fun lt!909112 () Unit!43594)

(assert (=> b!2585099 (= lt!909112 lt!909109)))

(declare-fun lt!909108 () Unit!43594)

(declare-fun lemmaSemiInverse!1106 (TokenValueInjection!8922 BalanceConc!18184) Unit!43594)

(assert (=> b!2585099 (= lt!909108 (lemmaSemiInverse!1106 (transformation!4519 rule!570) (seqFromList!3159 (_1!17399 lt!909111))))))

(declare-fun d!731995 () Bool)

(declare-fun e!1631106 () Bool)

(assert (=> d!731995 e!1631106))

(declare-fun res!1087175 () Bool)

(assert (=> d!731995 (=> res!1087175 e!1631106)))

(declare-fun lt!909110 () Option!5934)

(declare-fun isEmpty!17107 (Option!5934) Bool)

(assert (=> d!731995 (= res!1087175 (isEmpty!17107 lt!909110))))

(assert (=> d!731995 (= lt!909110 e!1631107)))

(declare-fun c!416771 () Bool)

(assert (=> d!731995 (= c!416771 (isEmpty!17106 (_1!17399 lt!909111)))))

(declare-fun findLongestMatch!684 (Regex!7663 List!29856) tuple2!29714)

(assert (=> d!731995 (= lt!909111 (findLongestMatch!684 (regex!4519 rule!570) input!3654))))

(assert (=> d!731995 (ruleValid!1525 thiss!28211 rule!570)))

(assert (=> d!731995 (= (maxPrefixOneRule!1454 thiss!28211 rule!570 input!3654) lt!909110)))

(declare-fun b!2585100 () Bool)

(declare-fun res!1087170 () Bool)

(declare-fun e!1631108 () Bool)

(assert (=> b!2585100 (=> (not res!1087170) (not e!1631108))))

(declare-fun get!9378 (Option!5934) tuple2!29710)

(assert (=> b!2585100 (= res!1087170 (= (++!7309 (list!11249 (charsOf!2848 (_1!17397 (get!9378 lt!909110)))) (_2!17397 (get!9378 lt!909110))) input!3654))))

(declare-fun b!2585101 () Bool)

(assert (=> b!2585101 (= e!1631106 e!1631108)))

(declare-fun res!1087172 () Bool)

(assert (=> b!2585101 (=> (not res!1087172) (not e!1631108))))

(assert (=> b!2585101 (= res!1087172 (matchR!3596 (regex!4519 rule!570) (list!11249 (charsOf!2848 (_1!17397 (get!9378 lt!909110))))))))

(declare-fun b!2585102 () Bool)

(declare-fun res!1087174 () Bool)

(assert (=> b!2585102 (=> (not res!1087174) (not e!1631108))))

(assert (=> b!2585102 (= res!1087174 (= (value!146039 (_1!17397 (get!9378 lt!909110))) (apply!7024 (transformation!4519 (rule!6883 (_1!17397 (get!9378 lt!909110)))) (seqFromList!3159 (originalCharacters!5285 (_1!17397 (get!9378 lt!909110)))))))))

(declare-fun b!2585103 () Bool)

(assert (=> b!2585103 (= e!1631108 (= (size!23071 (_1!17397 (get!9378 lt!909110))) (size!23072 (originalCharacters!5285 (_1!17397 (get!9378 lt!909110))))))))

(declare-fun b!2585104 () Bool)

(assert (=> b!2585104 (= e!1631107 None!5933)))

(declare-fun b!2585105 () Bool)

(declare-fun res!1087169 () Bool)

(assert (=> b!2585105 (=> (not res!1087169) (not e!1631108))))

(assert (=> b!2585105 (= res!1087169 (< (size!23072 (_2!17397 (get!9378 lt!909110))) (size!23072 input!3654)))))

(declare-fun b!2585106 () Bool)

(declare-fun res!1087171 () Bool)

(assert (=> b!2585106 (=> (not res!1087171) (not e!1631108))))

(assert (=> b!2585106 (= res!1087171 (= (rule!6883 (_1!17397 (get!9378 lt!909110))) rule!570))))

(declare-fun b!2585107 () Bool)

(assert (=> b!2585107 (= e!1631109 (matchR!3596 (regex!4519 rule!570) (_1!17399 (findLongestMatchInner!755 (regex!4519 rule!570) Nil!29756 (size!23072 Nil!29756) input!3654 input!3654 (size!23072 input!3654)))))))

(assert (= (and d!731995 c!416771) b!2585104))

(assert (= (and d!731995 (not c!416771)) b!2585099))

(assert (= (and b!2585099 (not res!1087173)) b!2585107))

(assert (= (and d!731995 (not res!1087175)) b!2585101))

(assert (= (and b!2585101 res!1087172) b!2585100))

(assert (= (and b!2585100 res!1087170) b!2585105))

(assert (= (and b!2585105 res!1087169) b!2585106))

(assert (= (and b!2585106 res!1087171) b!2585102))

(assert (= (and b!2585102 res!1087174) b!2585103))

(declare-fun m!2921299 () Bool)

(assert (=> b!2585101 m!2921299))

(declare-fun m!2921301 () Bool)

(assert (=> b!2585101 m!2921301))

(assert (=> b!2585101 m!2921301))

(declare-fun m!2921303 () Bool)

(assert (=> b!2585101 m!2921303))

(assert (=> b!2585101 m!2921303))

(declare-fun m!2921305 () Bool)

(assert (=> b!2585101 m!2921305))

(assert (=> b!2585103 m!2921299))

(declare-fun m!2921307 () Bool)

(assert (=> b!2585103 m!2921307))

(declare-fun m!2921309 () Bool)

(assert (=> b!2585099 m!2921309))

(declare-fun m!2921311 () Bool)

(assert (=> b!2585099 m!2921311))

(assert (=> b!2585099 m!2921309))

(declare-fun m!2921313 () Bool)

(assert (=> b!2585099 m!2921313))

(declare-fun m!2921315 () Bool)

(assert (=> b!2585099 m!2921315))

(declare-fun m!2921317 () Bool)

(assert (=> b!2585099 m!2921317))

(declare-fun m!2921319 () Bool)

(assert (=> b!2585099 m!2921319))

(assert (=> b!2585099 m!2921317))

(assert (=> b!2585099 m!2921315))

(assert (=> b!2585099 m!2921309))

(declare-fun m!2921321 () Bool)

(assert (=> b!2585099 m!2921321))

(declare-fun m!2921323 () Bool)

(assert (=> b!2585099 m!2921323))

(declare-fun m!2921325 () Bool)

(assert (=> b!2585099 m!2921325))

(assert (=> b!2585099 m!2921309))

(assert (=> b!2585102 m!2921299))

(declare-fun m!2921327 () Bool)

(assert (=> b!2585102 m!2921327))

(assert (=> b!2585102 m!2921327))

(declare-fun m!2921329 () Bool)

(assert (=> b!2585102 m!2921329))

(declare-fun m!2921331 () Bool)

(assert (=> d!731995 m!2921331))

(declare-fun m!2921333 () Bool)

(assert (=> d!731995 m!2921333))

(declare-fun m!2921335 () Bool)

(assert (=> d!731995 m!2921335))

(assert (=> d!731995 m!2921209))

(assert (=> b!2585100 m!2921299))

(assert (=> b!2585100 m!2921301))

(assert (=> b!2585100 m!2921301))

(assert (=> b!2585100 m!2921303))

(assert (=> b!2585100 m!2921303))

(declare-fun m!2921337 () Bool)

(assert (=> b!2585100 m!2921337))

(assert (=> b!2585105 m!2921299))

(declare-fun m!2921339 () Bool)

(assert (=> b!2585105 m!2921339))

(assert (=> b!2585105 m!2921317))

(assert (=> b!2585107 m!2921315))

(assert (=> b!2585107 m!2921317))

(assert (=> b!2585107 m!2921315))

(assert (=> b!2585107 m!2921317))

(assert (=> b!2585107 m!2921319))

(declare-fun m!2921341 () Bool)

(assert (=> b!2585107 m!2921341))

(assert (=> b!2585106 m!2921299))

(assert (=> b!2584962 d!731995))

(declare-fun d!732001 () Bool)

(declare-fun lt!909115 () BalanceConc!18184)

(assert (=> d!732001 (= (list!11249 lt!909115) (originalCharacters!5285 token!562))))

(declare-fun dynLambda!12578 (Int TokenValue!4741) BalanceConc!18184)

(assert (=> d!732001 (= lt!909115 (dynLambda!12578 (toChars!6268 (transformation!4519 (rule!6883 token!562))) (value!146039 token!562)))))

(assert (=> d!732001 (= (charsOf!2848 token!562) lt!909115)))

(declare-fun b_lambda!76751 () Bool)

(assert (=> (not b_lambda!76751) (not d!732001)))

(declare-fun t!212176 () Bool)

(declare-fun tb!140793 () Bool)

(assert (=> (and b!2584972 (= (toChars!6268 (transformation!4519 rule!570)) (toChars!6268 (transformation!4519 (rule!6883 token!562)))) t!212176) tb!140793))

(declare-fun b!2585112 () Bool)

(declare-fun e!1631112 () Bool)

(declare-fun tp!820659 () Bool)

(declare-fun inv!40189 (Conc!9285) Bool)

(assert (=> b!2585112 (= e!1631112 (and (inv!40189 (c!416745 (dynLambda!12578 (toChars!6268 (transformation!4519 (rule!6883 token!562))) (value!146039 token!562)))) tp!820659))))

(declare-fun result!175036 () Bool)

(declare-fun inv!40190 (BalanceConc!18184) Bool)

(assert (=> tb!140793 (= result!175036 (and (inv!40190 (dynLambda!12578 (toChars!6268 (transformation!4519 (rule!6883 token!562))) (value!146039 token!562))) e!1631112))))

(assert (= tb!140793 b!2585112))

(declare-fun m!2921343 () Bool)

(assert (=> b!2585112 m!2921343))

(declare-fun m!2921345 () Bool)

(assert (=> tb!140793 m!2921345))

(assert (=> d!732001 t!212176))

(declare-fun b_and!189451 () Bool)

(assert (= b_and!189437 (and (=> t!212176 result!175036) b_and!189451)))

(declare-fun tb!140795 () Bool)

(declare-fun t!212178 () Bool)

(assert (=> (and b!2584960 (= (toChars!6268 (transformation!4519 (h!35177 rules!4580))) (toChars!6268 (transformation!4519 (rule!6883 token!562)))) t!212178) tb!140795))

(declare-fun result!175040 () Bool)

(assert (= result!175040 result!175036))

(assert (=> d!732001 t!212178))

(declare-fun b_and!189453 () Bool)

(assert (= b_and!189441 (and (=> t!212178 result!175040) b_and!189453)))

(declare-fun t!212180 () Bool)

(declare-fun tb!140797 () Bool)

(assert (=> (and b!2584961 (= (toChars!6268 (transformation!4519 (h!35177 rs!798))) (toChars!6268 (transformation!4519 (rule!6883 token!562)))) t!212180) tb!140797))

(declare-fun result!175042 () Bool)

(assert (= result!175042 result!175036))

(assert (=> d!732001 t!212180))

(declare-fun b_and!189455 () Bool)

(assert (= b_and!189445 (and (=> t!212180 result!175042) b_and!189455)))

(declare-fun t!212182 () Bool)

(declare-fun tb!140799 () Bool)

(assert (=> (and b!2584959 (= (toChars!6268 (transformation!4519 (rule!6883 token!562))) (toChars!6268 (transformation!4519 (rule!6883 token!562)))) t!212182) tb!140799))

(declare-fun result!175044 () Bool)

(assert (= result!175044 result!175036))

(assert (=> d!732001 t!212182))

(declare-fun b_and!189457 () Bool)

(assert (= b_and!189449 (and (=> t!212182 result!175044) b_and!189457)))

(declare-fun m!2921347 () Bool)

(assert (=> d!732001 m!2921347))

(declare-fun m!2921349 () Bool)

(assert (=> d!732001 m!2921349))

(assert (=> b!2584962 d!732001))

(declare-fun d!732003 () Bool)

(declare-fun dynLambda!12579 (Int BalanceConc!18184) TokenValue!4741)

(assert (=> d!732003 (= (apply!7024 (transformation!4519 rule!570) (seqFromList!3159 lt!909079)) (dynLambda!12579 (toValue!6409 (transformation!4519 rule!570)) (seqFromList!3159 lt!909079)))))

(declare-fun b_lambda!76753 () Bool)

(assert (=> (not b_lambda!76753) (not d!732003)))

(declare-fun t!212184 () Bool)

(declare-fun tb!140801 () Bool)

(assert (=> (and b!2584972 (= (toValue!6409 (transformation!4519 rule!570)) (toValue!6409 (transformation!4519 rule!570))) t!212184) tb!140801))

(declare-fun result!175046 () Bool)

(assert (=> tb!140801 (= result!175046 (inv!21 (dynLambda!12579 (toValue!6409 (transformation!4519 rule!570)) (seqFromList!3159 lt!909079))))))

(declare-fun m!2921351 () Bool)

(assert (=> tb!140801 m!2921351))

(assert (=> d!732003 t!212184))

(declare-fun b_and!189459 () Bool)

(assert (= b_and!189435 (and (=> t!212184 result!175046) b_and!189459)))

(declare-fun t!212186 () Bool)

(declare-fun tb!140803 () Bool)

(assert (=> (and b!2584960 (= (toValue!6409 (transformation!4519 (h!35177 rules!4580))) (toValue!6409 (transformation!4519 rule!570))) t!212186) tb!140803))

(declare-fun result!175050 () Bool)

(assert (= result!175050 result!175046))

(assert (=> d!732003 t!212186))

(declare-fun b_and!189461 () Bool)

(assert (= b_and!189439 (and (=> t!212186 result!175050) b_and!189461)))

(declare-fun t!212188 () Bool)

(declare-fun tb!140805 () Bool)

(assert (=> (and b!2584961 (= (toValue!6409 (transformation!4519 (h!35177 rs!798))) (toValue!6409 (transformation!4519 rule!570))) t!212188) tb!140805))

(declare-fun result!175052 () Bool)

(assert (= result!175052 result!175046))

(assert (=> d!732003 t!212188))

(declare-fun b_and!189463 () Bool)

(assert (= b_and!189443 (and (=> t!212188 result!175052) b_and!189463)))

(declare-fun t!212190 () Bool)

(declare-fun tb!140807 () Bool)

(assert (=> (and b!2584959 (= (toValue!6409 (transformation!4519 (rule!6883 token!562))) (toValue!6409 (transformation!4519 rule!570))) t!212190) tb!140807))

(declare-fun result!175054 () Bool)

(assert (= result!175054 result!175046))

(assert (=> d!732003 t!212190))

(declare-fun b_and!189465 () Bool)

(assert (= b_and!189447 (and (=> t!212190 result!175054) b_and!189465)))

(assert (=> d!732003 m!2921223))

(declare-fun m!2921353 () Bool)

(assert (=> d!732003 m!2921353))

(assert (=> b!2584962 d!732003))

(declare-fun d!732005 () Bool)

(declare-fun fromListB!1429 (List!29856) BalanceConc!18184)

(assert (=> d!732005 (= (seqFromList!3159 lt!909079) (fromListB!1429 lt!909079))))

(declare-fun bs!471679 () Bool)

(assert (= bs!471679 d!732005))

(declare-fun m!2921355 () Bool)

(assert (=> bs!471679 m!2921355))

(assert (=> b!2584962 d!732005))

(declare-fun d!732007 () Bool)

(assert (=> d!732007 (= (maxPrefixOneRule!1454 thiss!28211 rule!570 input!3654) (Some!5933 (tuple2!29711 (Token!8509 (apply!7024 (transformation!4519 rule!570) (seqFromList!3159 lt!909079)) rule!570 (size!23072 lt!909079) lt!909079) suffix!1684)))))

(declare-fun lt!909118 () Unit!43594)

(declare-fun choose!15236 (LexerInterface!4116 List!29857 List!29856 List!29856 List!29856 Rule!8838) Unit!43594)

(assert (=> d!732007 (= lt!909118 (choose!15236 thiss!28211 rules!4580 lt!909079 input!3654 suffix!1684 rule!570))))

(assert (=> d!732007 (not (isEmpty!17103 rules!4580))))

(assert (=> d!732007 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!617 thiss!28211 rules!4580 lt!909079 input!3654 suffix!1684 rule!570) lt!909118)))

(declare-fun bs!471680 () Bool)

(assert (= bs!471680 d!732007))

(assert (=> bs!471680 m!2921225))

(assert (=> bs!471680 m!2921223))

(assert (=> bs!471680 m!2921229))

(assert (=> bs!471680 m!2921223))

(assert (=> bs!471680 m!2921231))

(declare-fun m!2921357 () Bool)

(assert (=> bs!471680 m!2921357))

(assert (=> bs!471680 m!2921235))

(assert (=> b!2584962 d!732007))

(declare-fun d!732009 () Bool)

(declare-fun lt!909121 () Int)

(assert (=> d!732009 (>= lt!909121 0)))

(declare-fun e!1631118 () Int)

(assert (=> d!732009 (= lt!909121 e!1631118)))

(declare-fun c!416774 () Bool)

(assert (=> d!732009 (= c!416774 ((_ is Nil!29756) lt!909079))))

(assert (=> d!732009 (= (size!23072 lt!909079) lt!909121)))

(declare-fun b!2585119 () Bool)

(assert (=> b!2585119 (= e!1631118 0)))

(declare-fun b!2585120 () Bool)

(assert (=> b!2585120 (= e!1631118 (+ 1 (size!23072 (t!212173 lt!909079))))))

(assert (= (and d!732009 c!416774) b!2585119))

(assert (= (and d!732009 (not c!416774)) b!2585120))

(declare-fun m!2921359 () Bool)

(assert (=> b!2585120 m!2921359))

(assert (=> b!2584962 d!732009))

(declare-fun b!2585149 () Bool)

(declare-fun e!1631135 () Bool)

(declare-fun e!1631138 () Bool)

(assert (=> b!2585149 (= e!1631135 e!1631138)))

(declare-fun c!416782 () Bool)

(assert (=> b!2585149 (= c!416782 ((_ is EmptyLang!7663) (regex!4519 rule!570)))))

(declare-fun b!2585150 () Bool)

(declare-fun res!1087194 () Bool)

(declare-fun e!1631134 () Bool)

(assert (=> b!2585150 (=> res!1087194 e!1631134)))

(assert (=> b!2585150 (= res!1087194 (not ((_ is ElementMatch!7663) (regex!4519 rule!570))))))

(assert (=> b!2585150 (= e!1631138 e!1631134)))

(declare-fun d!732011 () Bool)

(assert (=> d!732011 e!1631135))

(declare-fun c!416783 () Bool)

(assert (=> d!732011 (= c!416783 ((_ is EmptyExpr!7663) (regex!4519 rule!570)))))

(declare-fun lt!909124 () Bool)

(declare-fun e!1631139 () Bool)

(assert (=> d!732011 (= lt!909124 e!1631139)))

(declare-fun c!416781 () Bool)

(assert (=> d!732011 (= c!416781 (isEmpty!17106 lt!909078))))

(declare-fun validRegex!3277 (Regex!7663) Bool)

(assert (=> d!732011 (validRegex!3277 (regex!4519 rule!570))))

(assert (=> d!732011 (= (matchR!3596 (regex!4519 rule!570) lt!909078) lt!909124)))

(declare-fun b!2585151 () Bool)

(declare-fun e!1631137 () Bool)

(declare-fun e!1631133 () Bool)

(assert (=> b!2585151 (= e!1631137 e!1631133)))

(declare-fun res!1087199 () Bool)

(assert (=> b!2585151 (=> res!1087199 e!1631133)))

(declare-fun call!166935 () Bool)

(assert (=> b!2585151 (= res!1087199 call!166935)))

(declare-fun b!2585152 () Bool)

(declare-fun res!1087198 () Bool)

(declare-fun e!1631136 () Bool)

(assert (=> b!2585152 (=> (not res!1087198) (not e!1631136))))

(assert (=> b!2585152 (= res!1087198 (not call!166935))))

(declare-fun b!2585153 () Bool)

(declare-fun derivativeStep!2220 (Regex!7663 C!15484) Regex!7663)

(declare-fun head!5860 (List!29856) C!15484)

(declare-fun tail!4133 (List!29856) List!29856)

(assert (=> b!2585153 (= e!1631139 (matchR!3596 (derivativeStep!2220 (regex!4519 rule!570) (head!5860 lt!909078)) (tail!4133 lt!909078)))))

(declare-fun b!2585154 () Bool)

(declare-fun res!1087196 () Bool)

(assert (=> b!2585154 (=> res!1087196 e!1631133)))

(assert (=> b!2585154 (= res!1087196 (not (isEmpty!17106 (tail!4133 lt!909078))))))

(declare-fun b!2585155 () Bool)

(assert (=> b!2585155 (= e!1631133 (not (= (head!5860 lt!909078) (c!416746 (regex!4519 rule!570)))))))

(declare-fun b!2585156 () Bool)

(assert (=> b!2585156 (= e!1631135 (= lt!909124 call!166935))))

(declare-fun b!2585157 () Bool)

(assert (=> b!2585157 (= e!1631138 (not lt!909124))))

(declare-fun b!2585158 () Bool)

(declare-fun res!1087195 () Bool)

(assert (=> b!2585158 (=> (not res!1087195) (not e!1631136))))

(assert (=> b!2585158 (= res!1087195 (isEmpty!17106 (tail!4133 lt!909078)))))

(declare-fun b!2585159 () Bool)

(declare-fun res!1087192 () Bool)

(assert (=> b!2585159 (=> res!1087192 e!1631134)))

(assert (=> b!2585159 (= res!1087192 e!1631136)))

(declare-fun res!1087193 () Bool)

(assert (=> b!2585159 (=> (not res!1087193) (not e!1631136))))

(assert (=> b!2585159 (= res!1087193 lt!909124)))

(declare-fun b!2585160 () Bool)

(declare-fun nullable!2568 (Regex!7663) Bool)

(assert (=> b!2585160 (= e!1631139 (nullable!2568 (regex!4519 rule!570)))))

(declare-fun bm!166930 () Bool)

(assert (=> bm!166930 (= call!166935 (isEmpty!17106 lt!909078))))

(declare-fun b!2585161 () Bool)

(assert (=> b!2585161 (= e!1631136 (= (head!5860 lt!909078) (c!416746 (regex!4519 rule!570))))))

(declare-fun b!2585162 () Bool)

(assert (=> b!2585162 (= e!1631134 e!1631137)))

(declare-fun res!1087197 () Bool)

(assert (=> b!2585162 (=> (not res!1087197) (not e!1631137))))

(assert (=> b!2585162 (= res!1087197 (not lt!909124))))

(assert (= (and d!732011 c!416781) b!2585160))

(assert (= (and d!732011 (not c!416781)) b!2585153))

(assert (= (and d!732011 c!416783) b!2585156))

(assert (= (and d!732011 (not c!416783)) b!2585149))

(assert (= (and b!2585149 c!416782) b!2585157))

(assert (= (and b!2585149 (not c!416782)) b!2585150))

(assert (= (and b!2585150 (not res!1087194)) b!2585159))

(assert (= (and b!2585159 res!1087193) b!2585152))

(assert (= (and b!2585152 res!1087198) b!2585158))

(assert (= (and b!2585158 res!1087195) b!2585161))

(assert (= (and b!2585159 (not res!1087192)) b!2585162))

(assert (= (and b!2585162 res!1087197) b!2585151))

(assert (= (and b!2585151 (not res!1087199)) b!2585154))

(assert (= (and b!2585154 (not res!1087196)) b!2585155))

(assert (= (or b!2585156 b!2585151 b!2585152) bm!166930))

(declare-fun m!2921361 () Bool)

(assert (=> b!2585161 m!2921361))

(declare-fun m!2921363 () Bool)

(assert (=> b!2585160 m!2921363))

(declare-fun m!2921365 () Bool)

(assert (=> d!732011 m!2921365))

(declare-fun m!2921367 () Bool)

(assert (=> d!732011 m!2921367))

(assert (=> bm!166930 m!2921365))

(declare-fun m!2921369 () Bool)

(assert (=> b!2585158 m!2921369))

(assert (=> b!2585158 m!2921369))

(declare-fun m!2921371 () Bool)

(assert (=> b!2585158 m!2921371))

(assert (=> b!2585155 m!2921361))

(assert (=> b!2585154 m!2921369))

(assert (=> b!2585154 m!2921369))

(assert (=> b!2585154 m!2921371))

(assert (=> b!2585153 m!2921361))

(assert (=> b!2585153 m!2921361))

(declare-fun m!2921373 () Bool)

(assert (=> b!2585153 m!2921373))

(assert (=> b!2585153 m!2921369))

(assert (=> b!2585153 m!2921373))

(assert (=> b!2585153 m!2921369))

(declare-fun m!2921375 () Bool)

(assert (=> b!2585153 m!2921375))

(assert (=> b!2584966 d!732011))

(declare-fun d!732013 () Bool)

(declare-fun res!1087204 () Bool)

(declare-fun e!1631142 () Bool)

(assert (=> d!732013 (=> (not res!1087204) (not e!1631142))))

(assert (=> d!732013 (= res!1087204 (validRegex!3277 (regex!4519 rule!570)))))

(assert (=> d!732013 (= (ruleValid!1525 thiss!28211 rule!570) e!1631142)))

(declare-fun b!2585167 () Bool)

(declare-fun res!1087205 () Bool)

(assert (=> b!2585167 (=> (not res!1087205) (not e!1631142))))

(assert (=> b!2585167 (= res!1087205 (not (nullable!2568 (regex!4519 rule!570))))))

(declare-fun b!2585168 () Bool)

(assert (=> b!2585168 (= e!1631142 (not (= (tag!5009 rule!570) (String!33114 ""))))))

(assert (= (and d!732013 res!1087204) b!2585167))

(assert (= (and b!2585167 res!1087205) b!2585168))

(assert (=> d!732013 m!2921367))

(assert (=> b!2585167 m!2921363))

(assert (=> b!2584966 d!732013))

(declare-fun d!732015 () Bool)

(assert (=> d!732015 (ruleValid!1525 thiss!28211 rule!570)))

(declare-fun lt!909127 () Unit!43594)

(declare-fun choose!15237 (LexerInterface!4116 Rule!8838 List!29857) Unit!43594)

(assert (=> d!732015 (= lt!909127 (choose!15237 thiss!28211 rule!570 rules!4580))))

(assert (=> d!732015 (contains!5323 rules!4580 rule!570)))

(assert (=> d!732015 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!918 thiss!28211 rule!570 rules!4580) lt!909127)))

(declare-fun bs!471681 () Bool)

(assert (= bs!471681 d!732015))

(assert (=> bs!471681 m!2921209))

(declare-fun m!2921377 () Bool)

(assert (=> bs!471681 m!2921377))

(assert (=> bs!471681 m!2921233))

(assert (=> b!2584966 d!732015))

(declare-fun d!732017 () Bool)

(declare-fun res!1087208 () Bool)

(declare-fun e!1631145 () Bool)

(assert (=> d!732017 (=> (not res!1087208) (not e!1631145))))

(assert (=> d!732017 (= res!1087208 (rulesValid!1691 thiss!28211 rules!4580))))

(assert (=> d!732017 (= (rulesInvariant!3616 thiss!28211 rules!4580) e!1631145)))

(declare-fun b!2585171 () Bool)

(declare-datatypes ((List!29859 0))(
  ( (Nil!29759) (Cons!29759 (h!35179 String!33113) (t!212224 List!29859)) )
))
(declare-fun noDuplicateTag!1689 (LexerInterface!4116 List!29857 List!29859) Bool)

(assert (=> b!2585171 (= e!1631145 (noDuplicateTag!1689 thiss!28211 rules!4580 Nil!29759))))

(assert (= (and d!732017 res!1087208) b!2585171))

(declare-fun m!2921379 () Bool)

(assert (=> d!732017 m!2921379))

(declare-fun m!2921381 () Bool)

(assert (=> b!2585171 m!2921381))

(assert (=> b!2584977 d!732017))

(declare-fun b!2585182 () Bool)

(declare-fun e!1631152 () Bool)

(declare-fun inv!16 (TokenValue!4741) Bool)

(assert (=> b!2585182 (= e!1631152 (inv!16 (value!146039 token!562)))))

(declare-fun d!732019 () Bool)

(declare-fun c!416789 () Bool)

(assert (=> d!732019 (= c!416789 ((_ is IntegerValue!14223) (value!146039 token!562)))))

(assert (=> d!732019 (= (inv!21 (value!146039 token!562)) e!1631152)))

(declare-fun b!2585183 () Bool)

(declare-fun e!1631153 () Bool)

(assert (=> b!2585183 (= e!1631152 e!1631153)))

(declare-fun c!416788 () Bool)

(assert (=> b!2585183 (= c!416788 ((_ is IntegerValue!14224) (value!146039 token!562)))))

(declare-fun b!2585184 () Bool)

(declare-fun res!1087211 () Bool)

(declare-fun e!1631154 () Bool)

(assert (=> b!2585184 (=> res!1087211 e!1631154)))

(assert (=> b!2585184 (= res!1087211 (not ((_ is IntegerValue!14225) (value!146039 token!562))))))

(assert (=> b!2585184 (= e!1631153 e!1631154)))

(declare-fun b!2585185 () Bool)

(declare-fun inv!15 (TokenValue!4741) Bool)

(assert (=> b!2585185 (= e!1631154 (inv!15 (value!146039 token!562)))))

(declare-fun b!2585186 () Bool)

(declare-fun inv!17 (TokenValue!4741) Bool)

(assert (=> b!2585186 (= e!1631153 (inv!17 (value!146039 token!562)))))

(assert (= (and d!732019 c!416789) b!2585182))

(assert (= (and d!732019 (not c!416789)) b!2585183))

(assert (= (and b!2585183 c!416788) b!2585186))

(assert (= (and b!2585183 (not c!416788)) b!2585184))

(assert (= (and b!2585184 (not res!1087211)) b!2585185))

(declare-fun m!2921383 () Bool)

(assert (=> b!2585182 m!2921383))

(declare-fun m!2921385 () Bool)

(assert (=> b!2585185 m!2921385))

(declare-fun m!2921387 () Bool)

(assert (=> b!2585186 m!2921387))

(assert (=> b!2584955 d!732019))

(declare-fun d!732021 () Bool)

(declare-fun res!1087216 () Bool)

(declare-fun e!1631157 () Bool)

(assert (=> d!732021 (=> (not res!1087216) (not e!1631157))))

(assert (=> d!732021 (= res!1087216 (not (isEmpty!17106 (originalCharacters!5285 token!562))))))

(assert (=> d!732021 (= (inv!40186 token!562) e!1631157)))

(declare-fun b!2585191 () Bool)

(declare-fun res!1087217 () Bool)

(assert (=> b!2585191 (=> (not res!1087217) (not e!1631157))))

(assert (=> b!2585191 (= res!1087217 (= (originalCharacters!5285 token!562) (list!11249 (dynLambda!12578 (toChars!6268 (transformation!4519 (rule!6883 token!562))) (value!146039 token!562)))))))

(declare-fun b!2585192 () Bool)

(assert (=> b!2585192 (= e!1631157 (= (size!23071 token!562) (size!23072 (originalCharacters!5285 token!562))))))

(assert (= (and d!732021 res!1087216) b!2585191))

(assert (= (and b!2585191 res!1087217) b!2585192))

(declare-fun b_lambda!76755 () Bool)

(assert (=> (not b_lambda!76755) (not b!2585191)))

(assert (=> b!2585191 t!212176))

(declare-fun b_and!189467 () Bool)

(assert (= b_and!189451 (and (=> t!212176 result!175036) b_and!189467)))

(assert (=> b!2585191 t!212178))

(declare-fun b_and!189469 () Bool)

(assert (= b_and!189453 (and (=> t!212178 result!175040) b_and!189469)))

(assert (=> b!2585191 t!212180))

(declare-fun b_and!189471 () Bool)

(assert (= b_and!189455 (and (=> t!212180 result!175042) b_and!189471)))

(assert (=> b!2585191 t!212182))

(declare-fun b_and!189473 () Bool)

(assert (= b_and!189457 (and (=> t!212182 result!175044) b_and!189473)))

(declare-fun m!2921389 () Bool)

(assert (=> d!732021 m!2921389))

(assert (=> b!2585191 m!2921349))

(assert (=> b!2585191 m!2921349))

(declare-fun m!2921391 () Bool)

(assert (=> b!2585191 m!2921391))

(declare-fun m!2921393 () Bool)

(assert (=> b!2585192 m!2921393))

(assert (=> start!250324 d!732021))

(declare-fun d!732023 () Bool)

(declare-fun lt!909130 () Int)

(assert (=> d!732023 (>= lt!909130 0)))

(declare-fun e!1631160 () Int)

(assert (=> d!732023 (= lt!909130 e!1631160)))

(declare-fun c!416792 () Bool)

(assert (=> d!732023 (= c!416792 ((_ is Nil!29757) (t!212174 rs!798)))))

(assert (=> d!732023 (= (ListPrimitiveSize!179 (t!212174 rs!798)) lt!909130)))

(declare-fun b!2585197 () Bool)

(assert (=> b!2585197 (= e!1631160 0)))

(declare-fun b!2585198 () Bool)

(assert (=> b!2585198 (= e!1631160 (+ 1 (ListPrimitiveSize!179 (t!212174 (t!212174 rs!798)))))))

(assert (= (and d!732023 c!416792) b!2585197))

(assert (= (and d!732023 (not c!416792)) b!2585198))

(declare-fun m!2921395 () Bool)

(assert (=> b!2585198 m!2921395))

(assert (=> b!2584965 d!732023))

(declare-fun d!732025 () Bool)

(declare-fun lt!909131 () Int)

(assert (=> d!732025 (>= lt!909131 0)))

(declare-fun e!1631161 () Int)

(assert (=> d!732025 (= lt!909131 e!1631161)))

(declare-fun c!416793 () Bool)

(assert (=> d!732025 (= c!416793 ((_ is Nil!29757) rs!798))))

(assert (=> d!732025 (= (ListPrimitiveSize!179 rs!798) lt!909131)))

(declare-fun b!2585199 () Bool)

(assert (=> b!2585199 (= e!1631161 0)))

(declare-fun b!2585200 () Bool)

(assert (=> b!2585200 (= e!1631161 (+ 1 (ListPrimitiveSize!179 (t!212174 rs!798))))))

(assert (= (and d!732025 c!416793) b!2585199))

(assert (= (and d!732025 (not c!416793)) b!2585200))

(assert (=> b!2585200 m!2921217))

(assert (=> b!2584965 d!732025))

(declare-fun lt!909135 () List!29856)

(declare-fun b!2585218 () Bool)

(declare-fun e!1631169 () Bool)

(assert (=> b!2585218 (= e!1631169 (or (not (= suffix!1684 Nil!29756)) (= lt!909135 lt!909078)))))

(declare-fun b!2585216 () Bool)

(declare-fun e!1631168 () List!29856)

(assert (=> b!2585216 (= e!1631168 (Cons!29756 (h!35176 lt!909078) (++!7309 (t!212173 lt!909078) suffix!1684)))))

(declare-fun b!2585215 () Bool)

(assert (=> b!2585215 (= e!1631168 suffix!1684)))

(declare-fun b!2585217 () Bool)

(declare-fun res!1087227 () Bool)

(assert (=> b!2585217 (=> (not res!1087227) (not e!1631169))))

(assert (=> b!2585217 (= res!1087227 (= (size!23072 lt!909135) (+ (size!23072 lt!909078) (size!23072 suffix!1684))))))

(declare-fun d!732027 () Bool)

(assert (=> d!732027 e!1631169))

(declare-fun res!1087226 () Bool)

(assert (=> d!732027 (=> (not res!1087226) (not e!1631169))))

(declare-fun content!4112 (List!29856) (InoxSet C!15484))

(assert (=> d!732027 (= res!1087226 (= (content!4112 lt!909135) ((_ map or) (content!4112 lt!909078) (content!4112 suffix!1684))))))

(assert (=> d!732027 (= lt!909135 e!1631168)))

(declare-fun c!416796 () Bool)

(assert (=> d!732027 (= c!416796 ((_ is Nil!29756) lt!909078))))

(assert (=> d!732027 (= (++!7309 lt!909078 suffix!1684) lt!909135)))

(assert (= (and d!732027 c!416796) b!2585215))

(assert (= (and d!732027 (not c!416796)) b!2585216))

(assert (= (and d!732027 res!1087226) b!2585217))

(assert (= (and b!2585217 res!1087227) b!2585218))

(declare-fun m!2921401 () Bool)

(assert (=> b!2585216 m!2921401))

(declare-fun m!2921403 () Bool)

(assert (=> b!2585217 m!2921403))

(declare-fun m!2921405 () Bool)

(assert (=> b!2585217 m!2921405))

(declare-fun m!2921407 () Bool)

(assert (=> b!2585217 m!2921407))

(declare-fun m!2921409 () Bool)

(assert (=> d!732027 m!2921409))

(declare-fun m!2921411 () Bool)

(assert (=> d!732027 m!2921411))

(declare-fun m!2921413 () Bool)

(assert (=> d!732027 m!2921413))

(assert (=> b!2584964 d!732027))

(assert (=> b!2584964 d!731989))

(assert (=> b!2584964 d!732001))

(declare-fun b!2585219 () Bool)

(declare-fun e!1631172 () Bool)

(declare-fun e!1631175 () Bool)

(assert (=> b!2585219 (= e!1631172 e!1631175)))

(declare-fun c!416798 () Bool)

(assert (=> b!2585219 (= c!416798 ((_ is EmptyLang!7663) (regex!4519 rule!570)))))

(declare-fun b!2585220 () Bool)

(declare-fun res!1087230 () Bool)

(declare-fun e!1631171 () Bool)

(assert (=> b!2585220 (=> res!1087230 e!1631171)))

(assert (=> b!2585220 (= res!1087230 (not ((_ is ElementMatch!7663) (regex!4519 rule!570))))))

(assert (=> b!2585220 (= e!1631175 e!1631171)))

(declare-fun d!732031 () Bool)

(assert (=> d!732031 e!1631172))

(declare-fun c!416799 () Bool)

(assert (=> d!732031 (= c!416799 ((_ is EmptyExpr!7663) (regex!4519 rule!570)))))

(declare-fun lt!909136 () Bool)

(declare-fun e!1631176 () Bool)

(assert (=> d!732031 (= lt!909136 e!1631176)))

(declare-fun c!416797 () Bool)

(assert (=> d!732031 (= c!416797 (isEmpty!17106 lt!909079))))

(assert (=> d!732031 (validRegex!3277 (regex!4519 rule!570))))

(assert (=> d!732031 (= (matchR!3596 (regex!4519 rule!570) lt!909079) lt!909136)))

(declare-fun b!2585221 () Bool)

(declare-fun e!1631174 () Bool)

(declare-fun e!1631170 () Bool)

(assert (=> b!2585221 (= e!1631174 e!1631170)))

(declare-fun res!1087235 () Bool)

(assert (=> b!2585221 (=> res!1087235 e!1631170)))

(declare-fun call!166936 () Bool)

(assert (=> b!2585221 (= res!1087235 call!166936)))

(declare-fun b!2585222 () Bool)

(declare-fun res!1087234 () Bool)

(declare-fun e!1631173 () Bool)

(assert (=> b!2585222 (=> (not res!1087234) (not e!1631173))))

(assert (=> b!2585222 (= res!1087234 (not call!166936))))

(declare-fun b!2585223 () Bool)

(assert (=> b!2585223 (= e!1631176 (matchR!3596 (derivativeStep!2220 (regex!4519 rule!570) (head!5860 lt!909079)) (tail!4133 lt!909079)))))

(declare-fun b!2585224 () Bool)

(declare-fun res!1087232 () Bool)

(assert (=> b!2585224 (=> res!1087232 e!1631170)))

(assert (=> b!2585224 (= res!1087232 (not (isEmpty!17106 (tail!4133 lt!909079))))))

(declare-fun b!2585225 () Bool)

(assert (=> b!2585225 (= e!1631170 (not (= (head!5860 lt!909079) (c!416746 (regex!4519 rule!570)))))))

(declare-fun b!2585226 () Bool)

(assert (=> b!2585226 (= e!1631172 (= lt!909136 call!166936))))

(declare-fun b!2585227 () Bool)

(assert (=> b!2585227 (= e!1631175 (not lt!909136))))

(declare-fun b!2585228 () Bool)

(declare-fun res!1087231 () Bool)

(assert (=> b!2585228 (=> (not res!1087231) (not e!1631173))))

(assert (=> b!2585228 (= res!1087231 (isEmpty!17106 (tail!4133 lt!909079)))))

(declare-fun b!2585229 () Bool)

(declare-fun res!1087228 () Bool)

(assert (=> b!2585229 (=> res!1087228 e!1631171)))

(assert (=> b!2585229 (= res!1087228 e!1631173)))

(declare-fun res!1087229 () Bool)

(assert (=> b!2585229 (=> (not res!1087229) (not e!1631173))))

(assert (=> b!2585229 (= res!1087229 lt!909136)))

(declare-fun b!2585230 () Bool)

(assert (=> b!2585230 (= e!1631176 (nullable!2568 (regex!4519 rule!570)))))

(declare-fun bm!166931 () Bool)

(assert (=> bm!166931 (= call!166936 (isEmpty!17106 lt!909079))))

(declare-fun b!2585231 () Bool)

(assert (=> b!2585231 (= e!1631173 (= (head!5860 lt!909079) (c!416746 (regex!4519 rule!570))))))

(declare-fun b!2585232 () Bool)

(assert (=> b!2585232 (= e!1631171 e!1631174)))

(declare-fun res!1087233 () Bool)

(assert (=> b!2585232 (=> (not res!1087233) (not e!1631174))))

(assert (=> b!2585232 (= res!1087233 (not lt!909136))))

(assert (= (and d!732031 c!416797) b!2585230))

(assert (= (and d!732031 (not c!416797)) b!2585223))

(assert (= (and d!732031 c!416799) b!2585226))

(assert (= (and d!732031 (not c!416799)) b!2585219))

(assert (= (and b!2585219 c!416798) b!2585227))

(assert (= (and b!2585219 (not c!416798)) b!2585220))

(assert (= (and b!2585220 (not res!1087230)) b!2585229))

(assert (= (and b!2585229 res!1087229) b!2585222))

(assert (= (and b!2585222 res!1087234) b!2585228))

(assert (= (and b!2585228 res!1087231) b!2585231))

(assert (= (and b!2585229 (not res!1087228)) b!2585232))

(assert (= (and b!2585232 res!1087233) b!2585221))

(assert (= (and b!2585221 (not res!1087235)) b!2585224))

(assert (= (and b!2585224 (not res!1087232)) b!2585225))

(assert (= (or b!2585226 b!2585221 b!2585222) bm!166931))

(declare-fun m!2921415 () Bool)

(assert (=> b!2585231 m!2921415))

(assert (=> b!2585230 m!2921363))

(declare-fun m!2921417 () Bool)

(assert (=> d!732031 m!2921417))

(assert (=> d!732031 m!2921367))

(assert (=> bm!166931 m!2921417))

(declare-fun m!2921419 () Bool)

(assert (=> b!2585228 m!2921419))

(assert (=> b!2585228 m!2921419))

(declare-fun m!2921421 () Bool)

(assert (=> b!2585228 m!2921421))

(assert (=> b!2585225 m!2921415))

(assert (=> b!2585224 m!2921419))

(assert (=> b!2585224 m!2921419))

(assert (=> b!2585224 m!2921421))

(assert (=> b!2585223 m!2921415))

(assert (=> b!2585223 m!2921415))

(declare-fun m!2921423 () Bool)

(assert (=> b!2585223 m!2921423))

(assert (=> b!2585223 m!2921419))

(assert (=> b!2585223 m!2921423))

(assert (=> b!2585223 m!2921419))

(declare-fun m!2921425 () Bool)

(assert (=> b!2585223 m!2921425))

(assert (=> b!2584958 d!732031))

(declare-fun b!2585264 () Bool)

(declare-fun res!1087258 () Bool)

(declare-fun e!1631194 () Bool)

(assert (=> b!2585264 (=> (not res!1087258) (not e!1631194))))

(declare-fun lt!909150 () Option!5934)

(assert (=> b!2585264 (= res!1087258 (matchR!3596 (regex!4519 (rule!6883 (_1!17397 (get!9378 lt!909150)))) (list!11249 (charsOf!2848 (_1!17397 (get!9378 lt!909150))))))))

(declare-fun b!2585265 () Bool)

(declare-fun e!1631193 () Option!5934)

(declare-fun lt!909152 () Option!5934)

(declare-fun lt!909153 () Option!5934)

(assert (=> b!2585265 (= e!1631193 (ite (and ((_ is None!5933) lt!909152) ((_ is None!5933) lt!909153)) None!5933 (ite ((_ is None!5933) lt!909153) lt!909152 (ite ((_ is None!5933) lt!909152) lt!909153 (ite (>= (size!23071 (_1!17397 (v!32034 lt!909152))) (size!23071 (_1!17397 (v!32034 lt!909153)))) lt!909152 lt!909153)))))))

(declare-fun call!166939 () Option!5934)

(assert (=> b!2585265 (= lt!909152 call!166939)))

(assert (=> b!2585265 (= lt!909153 (maxPrefix!2288 thiss!28211 (t!212174 rules!4580) input!3654))))

(declare-fun b!2585267 () Bool)

(declare-fun e!1631195 () Bool)

(assert (=> b!2585267 (= e!1631195 e!1631194)))

(declare-fun res!1087261 () Bool)

(assert (=> b!2585267 (=> (not res!1087261) (not e!1631194))))

(declare-fun isDefined!4754 (Option!5934) Bool)

(assert (=> b!2585267 (= res!1087261 (isDefined!4754 lt!909150))))

(declare-fun bm!166934 () Bool)

(assert (=> bm!166934 (= call!166939 (maxPrefixOneRule!1454 thiss!28211 (h!35177 rules!4580) input!3654))))

(declare-fun b!2585268 () Bool)

(declare-fun res!1087262 () Bool)

(assert (=> b!2585268 (=> (not res!1087262) (not e!1631194))))

(assert (=> b!2585268 (= res!1087262 (= (value!146039 (_1!17397 (get!9378 lt!909150))) (apply!7024 (transformation!4519 (rule!6883 (_1!17397 (get!9378 lt!909150)))) (seqFromList!3159 (originalCharacters!5285 (_1!17397 (get!9378 lt!909150)))))))))

(declare-fun b!2585269 () Bool)

(assert (=> b!2585269 (= e!1631194 (contains!5323 rules!4580 (rule!6883 (_1!17397 (get!9378 lt!909150)))))))

(declare-fun b!2585270 () Bool)

(declare-fun res!1087259 () Bool)

(assert (=> b!2585270 (=> (not res!1087259) (not e!1631194))))

(assert (=> b!2585270 (= res!1087259 (< (size!23072 (_2!17397 (get!9378 lt!909150))) (size!23072 input!3654)))))

(declare-fun b!2585266 () Bool)

(declare-fun res!1087264 () Bool)

(assert (=> b!2585266 (=> (not res!1087264) (not e!1631194))))

(assert (=> b!2585266 (= res!1087264 (= (++!7309 (list!11249 (charsOf!2848 (_1!17397 (get!9378 lt!909150)))) (_2!17397 (get!9378 lt!909150))) input!3654))))

(declare-fun d!732033 () Bool)

(assert (=> d!732033 e!1631195))

(declare-fun res!1087263 () Bool)

(assert (=> d!732033 (=> res!1087263 e!1631195)))

(assert (=> d!732033 (= res!1087263 (isEmpty!17107 lt!909150))))

(assert (=> d!732033 (= lt!909150 e!1631193)))

(declare-fun c!416802 () Bool)

(assert (=> d!732033 (= c!416802 (and ((_ is Cons!29757) rules!4580) ((_ is Nil!29757) (t!212174 rules!4580))))))

(declare-fun lt!909154 () Unit!43594)

(declare-fun lt!909151 () Unit!43594)

(assert (=> d!732033 (= lt!909154 lt!909151)))

(declare-fun isPrefix!2419 (List!29856 List!29856) Bool)

(assert (=> d!732033 (isPrefix!2419 input!3654 input!3654)))

(declare-fun lemmaIsPrefixRefl!1545 (List!29856 List!29856) Unit!43594)

(assert (=> d!732033 (= lt!909151 (lemmaIsPrefixRefl!1545 input!3654 input!3654))))

(declare-fun rulesValidInductive!1593 (LexerInterface!4116 List!29857) Bool)

(assert (=> d!732033 (rulesValidInductive!1593 thiss!28211 rules!4580)))

(assert (=> d!732033 (= (maxPrefix!2288 thiss!28211 rules!4580 input!3654) lt!909150)))

(declare-fun b!2585271 () Bool)

(declare-fun res!1087260 () Bool)

(assert (=> b!2585271 (=> (not res!1087260) (not e!1631194))))

(assert (=> b!2585271 (= res!1087260 (= (list!11249 (charsOf!2848 (_1!17397 (get!9378 lt!909150)))) (originalCharacters!5285 (_1!17397 (get!9378 lt!909150)))))))

(declare-fun b!2585272 () Bool)

(assert (=> b!2585272 (= e!1631193 call!166939)))

(assert (= (and d!732033 c!416802) b!2585272))

(assert (= (and d!732033 (not c!416802)) b!2585265))

(assert (= (or b!2585272 b!2585265) bm!166934))

(assert (= (and d!732033 (not res!1087263)) b!2585267))

(assert (= (and b!2585267 res!1087261) b!2585271))

(assert (= (and b!2585271 res!1087260) b!2585270))

(assert (= (and b!2585270 res!1087259) b!2585266))

(assert (= (and b!2585266 res!1087264) b!2585268))

(assert (= (and b!2585268 res!1087262) b!2585264))

(assert (= (and b!2585264 res!1087258) b!2585269))

(declare-fun m!2921447 () Bool)

(assert (=> d!732033 m!2921447))

(declare-fun m!2921449 () Bool)

(assert (=> d!732033 m!2921449))

(declare-fun m!2921451 () Bool)

(assert (=> d!732033 m!2921451))

(declare-fun m!2921453 () Bool)

(assert (=> d!732033 m!2921453))

(declare-fun m!2921455 () Bool)

(assert (=> b!2585271 m!2921455))

(declare-fun m!2921457 () Bool)

(assert (=> b!2585271 m!2921457))

(assert (=> b!2585271 m!2921457))

(declare-fun m!2921459 () Bool)

(assert (=> b!2585271 m!2921459))

(declare-fun m!2921461 () Bool)

(assert (=> b!2585265 m!2921461))

(assert (=> b!2585264 m!2921455))

(assert (=> b!2585264 m!2921457))

(assert (=> b!2585264 m!2921457))

(assert (=> b!2585264 m!2921459))

(assert (=> b!2585264 m!2921459))

(declare-fun m!2921463 () Bool)

(assert (=> b!2585264 m!2921463))

(assert (=> b!2585270 m!2921455))

(declare-fun m!2921465 () Bool)

(assert (=> b!2585270 m!2921465))

(assert (=> b!2585270 m!2921317))

(declare-fun m!2921467 () Bool)

(assert (=> bm!166934 m!2921467))

(declare-fun m!2921469 () Bool)

(assert (=> b!2585267 m!2921469))

(assert (=> b!2585269 m!2921455))

(declare-fun m!2921471 () Bool)

(assert (=> b!2585269 m!2921471))

(assert (=> b!2585268 m!2921455))

(declare-fun m!2921473 () Bool)

(assert (=> b!2585268 m!2921473))

(assert (=> b!2585268 m!2921473))

(declare-fun m!2921475 () Bool)

(assert (=> b!2585268 m!2921475))

(assert (=> b!2585266 m!2921455))

(assert (=> b!2585266 m!2921457))

(assert (=> b!2585266 m!2921457))

(assert (=> b!2585266 m!2921459))

(assert (=> b!2585266 m!2921459))

(declare-fun m!2921477 () Bool)

(assert (=> b!2585266 m!2921477))

(assert (=> b!2584978 d!732033))

(declare-fun d!732041 () Bool)

(assert (=> d!732041 (= (inv!40182 (tag!5009 (h!35177 rs!798))) (= (mod (str.len (value!146038 (tag!5009 (h!35177 rs!798)))) 2) 0))))

(assert (=> b!2584957 d!732041))

(declare-fun d!732043 () Bool)

(declare-fun res!1087265 () Bool)

(declare-fun e!1631196 () Bool)

(assert (=> d!732043 (=> (not res!1087265) (not e!1631196))))

(assert (=> d!732043 (= res!1087265 (semiInverseModEq!1888 (toChars!6268 (transformation!4519 (h!35177 rs!798))) (toValue!6409 (transformation!4519 (h!35177 rs!798)))))))

(assert (=> d!732043 (= (inv!40185 (transformation!4519 (h!35177 rs!798))) e!1631196)))

(declare-fun b!2585273 () Bool)

(assert (=> b!2585273 (= e!1631196 (equivClasses!1789 (toChars!6268 (transformation!4519 (h!35177 rs!798))) (toValue!6409 (transformation!4519 (h!35177 rs!798)))))))

(assert (= (and d!732043 res!1087265) b!2585273))

(declare-fun m!2921479 () Bool)

(assert (=> d!732043 m!2921479))

(declare-fun m!2921481 () Bool)

(assert (=> b!2585273 m!2921481))

(assert (=> b!2584957 d!732043))

(declare-fun d!732045 () Bool)

(assert (=> d!732045 (= (inv!40182 (tag!5009 (h!35177 rules!4580))) (= (mod (str.len (value!146038 (tag!5009 (h!35177 rules!4580)))) 2) 0))))

(assert (=> b!2584956 d!732045))

(declare-fun d!732047 () Bool)

(declare-fun res!1087266 () Bool)

(declare-fun e!1631197 () Bool)

(assert (=> d!732047 (=> (not res!1087266) (not e!1631197))))

(assert (=> d!732047 (= res!1087266 (semiInverseModEq!1888 (toChars!6268 (transformation!4519 (h!35177 rules!4580))) (toValue!6409 (transformation!4519 (h!35177 rules!4580)))))))

(assert (=> d!732047 (= (inv!40185 (transformation!4519 (h!35177 rules!4580))) e!1631197)))

(declare-fun b!2585274 () Bool)

(assert (=> b!2585274 (= e!1631197 (equivClasses!1789 (toChars!6268 (transformation!4519 (h!35177 rules!4580))) (toValue!6409 (transformation!4519 (h!35177 rules!4580)))))))

(assert (= (and d!732047 res!1087266) b!2585274))

(declare-fun m!2921483 () Bool)

(assert (=> d!732047 m!2921483))

(declare-fun m!2921485 () Bool)

(assert (=> b!2585274 m!2921485))

(assert (=> b!2584956 d!732047))

(declare-fun d!732049 () Bool)

(assert (=> d!732049 true))

(declare-fun lt!909199 () Bool)

(assert (=> d!732049 (= lt!909199 (rulesValidInductive!1593 thiss!28211 rs!798))))

(declare-fun lambda!95772 () Int)

(declare-fun forall!6063 (List!29857 Int) Bool)

(assert (=> d!732049 (= lt!909199 (forall!6063 rs!798 lambda!95772))))

(assert (=> d!732049 (= (rulesValid!1691 thiss!28211 rs!798) lt!909199)))

(declare-fun bs!471686 () Bool)

(assert (= bs!471686 d!732049))

(declare-fun m!2921609 () Bool)

(assert (=> bs!471686 m!2921609))

(declare-fun m!2921611 () Bool)

(assert (=> bs!471686 m!2921611))

(assert (=> b!2584967 d!732049))

(declare-fun b!2585405 () Bool)

(declare-fun e!1631263 () Bool)

(declare-fun tp!820716 () Bool)

(assert (=> b!2585405 (= e!1631263 (and tp_is_empty!13221 tp!820716))))

(assert (=> b!2584955 (= tp!820640 e!1631263)))

(assert (= (and b!2584955 ((_ is Cons!29756) (originalCharacters!5285 token!562))) b!2585405))

(declare-fun b!2585406 () Bool)

(declare-fun e!1631264 () Bool)

(declare-fun tp!820717 () Bool)

(assert (=> b!2585406 (= e!1631264 (and tp_is_empty!13221 tp!820717))))

(assert (=> b!2584975 (= tp!820649 e!1631264)))

(assert (= (and b!2584975 ((_ is Cons!29756) (t!212173 suffix!1684))) b!2585406))

(declare-fun b!2585418 () Bool)

(declare-fun e!1631267 () Bool)

(declare-fun tp!820730 () Bool)

(declare-fun tp!820732 () Bool)

(assert (=> b!2585418 (= e!1631267 (and tp!820730 tp!820732))))

(declare-fun b!2585420 () Bool)

(declare-fun tp!820731 () Bool)

(declare-fun tp!820729 () Bool)

(assert (=> b!2585420 (= e!1631267 (and tp!820731 tp!820729))))

(declare-fun b!2585417 () Bool)

(assert (=> b!2585417 (= e!1631267 tp_is_empty!13221)))

(declare-fun b!2585419 () Bool)

(declare-fun tp!820728 () Bool)

(assert (=> b!2585419 (= e!1631267 tp!820728)))

(assert (=> b!2584974 (= tp!820654 e!1631267)))

(assert (= (and b!2584974 ((_ is ElementMatch!7663) (regex!4519 rule!570))) b!2585417))

(assert (= (and b!2584974 ((_ is Concat!12405) (regex!4519 rule!570))) b!2585418))

(assert (= (and b!2584974 ((_ is Star!7663) (regex!4519 rule!570))) b!2585419))

(assert (= (and b!2584974 ((_ is Union!7663) (regex!4519 rule!570))) b!2585420))

(declare-fun b!2585431 () Bool)

(declare-fun b_free!72829 () Bool)

(declare-fun b_next!73533 () Bool)

(assert (=> b!2585431 (= b_free!72829 (not b_next!73533))))

(declare-fun t!212217 () Bool)

(declare-fun tb!140833 () Bool)

(assert (=> (and b!2585431 (= (toValue!6409 (transformation!4519 (h!35177 (t!212174 rules!4580)))) (toValue!6409 (transformation!4519 rule!570))) t!212217) tb!140833))

(declare-fun result!175096 () Bool)

(assert (= result!175096 result!175046))

(assert (=> d!732003 t!212217))

(declare-fun tp!820741 () Bool)

(declare-fun b_and!189507 () Bool)

(assert (=> b!2585431 (= tp!820741 (and (=> t!212217 result!175096) b_and!189507))))

(declare-fun b_free!72831 () Bool)

(declare-fun b_next!73535 () Bool)

(assert (=> b!2585431 (= b_free!72831 (not b_next!73535))))

(declare-fun t!212219 () Bool)

(declare-fun tb!140835 () Bool)

(assert (=> (and b!2585431 (= (toChars!6268 (transformation!4519 (h!35177 (t!212174 rules!4580)))) (toChars!6268 (transformation!4519 (rule!6883 token!562)))) t!212219) tb!140835))

(declare-fun result!175098 () Bool)

(assert (= result!175098 result!175036))

(assert (=> d!732001 t!212219))

(assert (=> b!2585191 t!212219))

(declare-fun b_and!189509 () Bool)

(declare-fun tp!820744 () Bool)

(assert (=> b!2585431 (= tp!820744 (and (=> t!212219 result!175098) b_and!189509))))

(declare-fun e!1631277 () Bool)

(assert (=> b!2585431 (= e!1631277 (and tp!820741 tp!820744))))

(declare-fun e!1631276 () Bool)

(declare-fun b!2585430 () Bool)

(declare-fun tp!820742 () Bool)

(assert (=> b!2585430 (= e!1631276 (and tp!820742 (inv!40182 (tag!5009 (h!35177 (t!212174 rules!4580)))) (inv!40185 (transformation!4519 (h!35177 (t!212174 rules!4580)))) e!1631277))))

(declare-fun b!2585429 () Bool)

(declare-fun e!1631278 () Bool)

(declare-fun tp!820743 () Bool)

(assert (=> b!2585429 (= e!1631278 (and e!1631276 tp!820743))))

(assert (=> b!2584969 (= tp!820641 e!1631278)))

(assert (= b!2585430 b!2585431))

(assert (= b!2585429 b!2585430))

(assert (= (and b!2584969 ((_ is Cons!29757) (t!212174 rules!4580))) b!2585429))

(declare-fun m!2921613 () Bool)

(assert (=> b!2585430 m!2921613))

(declare-fun m!2921615 () Bool)

(assert (=> b!2585430 m!2921615))

(declare-fun b!2585434 () Bool)

(declare-fun b_free!72833 () Bool)

(declare-fun b_next!73537 () Bool)

(assert (=> b!2585434 (= b_free!72833 (not b_next!73537))))

(declare-fun tb!140837 () Bool)

(declare-fun t!212221 () Bool)

(assert (=> (and b!2585434 (= (toValue!6409 (transformation!4519 (h!35177 (t!212174 rs!798)))) (toValue!6409 (transformation!4519 rule!570))) t!212221) tb!140837))

(declare-fun result!175100 () Bool)

(assert (= result!175100 result!175046))

(assert (=> d!732003 t!212221))

(declare-fun tp!820745 () Bool)

(declare-fun b_and!189511 () Bool)

(assert (=> b!2585434 (= tp!820745 (and (=> t!212221 result!175100) b_and!189511))))

(declare-fun b_free!72835 () Bool)

(declare-fun b_next!73539 () Bool)

(assert (=> b!2585434 (= b_free!72835 (not b_next!73539))))

(declare-fun tb!140839 () Bool)

(declare-fun t!212223 () Bool)

(assert (=> (and b!2585434 (= (toChars!6268 (transformation!4519 (h!35177 (t!212174 rs!798)))) (toChars!6268 (transformation!4519 (rule!6883 token!562)))) t!212223) tb!140839))

(declare-fun result!175102 () Bool)

(assert (= result!175102 result!175036))

(assert (=> d!732001 t!212223))

(assert (=> b!2585191 t!212223))

(declare-fun b_and!189513 () Bool)

(declare-fun tp!820748 () Bool)

(assert (=> b!2585434 (= tp!820748 (and (=> t!212223 result!175102) b_and!189513))))

(declare-fun e!1631281 () Bool)

(assert (=> b!2585434 (= e!1631281 (and tp!820745 tp!820748))))

(declare-fun b!2585433 () Bool)

(declare-fun e!1631280 () Bool)

(declare-fun tp!820746 () Bool)

(assert (=> b!2585433 (= e!1631280 (and tp!820746 (inv!40182 (tag!5009 (h!35177 (t!212174 rs!798)))) (inv!40185 (transformation!4519 (h!35177 (t!212174 rs!798)))) e!1631281))))

(declare-fun b!2585432 () Bool)

(declare-fun e!1631282 () Bool)

(declare-fun tp!820747 () Bool)

(assert (=> b!2585432 (= e!1631282 (and e!1631280 tp!820747))))

(assert (=> b!2584968 (= tp!820643 e!1631282)))

(assert (= b!2585433 b!2585434))

(assert (= b!2585432 b!2585433))

(assert (= (and b!2584968 ((_ is Cons!29757) (t!212174 rs!798))) b!2585432))

(declare-fun m!2921617 () Bool)

(assert (=> b!2585433 m!2921617))

(declare-fun m!2921619 () Bool)

(assert (=> b!2585433 m!2921619))

(declare-fun b!2585436 () Bool)

(declare-fun e!1631284 () Bool)

(declare-fun tp!820751 () Bool)

(declare-fun tp!820753 () Bool)

(assert (=> b!2585436 (= e!1631284 (and tp!820751 tp!820753))))

(declare-fun b!2585438 () Bool)

(declare-fun tp!820752 () Bool)

(declare-fun tp!820750 () Bool)

(assert (=> b!2585438 (= e!1631284 (and tp!820752 tp!820750))))

(declare-fun b!2585435 () Bool)

(assert (=> b!2585435 (= e!1631284 tp_is_empty!13221)))

(declare-fun b!2585437 () Bool)

(declare-fun tp!820749 () Bool)

(assert (=> b!2585437 (= e!1631284 tp!820749)))

(assert (=> b!2584963 (= tp!820645 e!1631284)))

(assert (= (and b!2584963 ((_ is ElementMatch!7663) (regex!4519 (rule!6883 token!562)))) b!2585435))

(assert (= (and b!2584963 ((_ is Concat!12405) (regex!4519 (rule!6883 token!562)))) b!2585436))

(assert (= (and b!2584963 ((_ is Star!7663) (regex!4519 (rule!6883 token!562)))) b!2585437))

(assert (= (and b!2584963 ((_ is Union!7663) (regex!4519 (rule!6883 token!562)))) b!2585438))

(declare-fun b!2585439 () Bool)

(declare-fun e!1631285 () Bool)

(declare-fun tp!820754 () Bool)

(assert (=> b!2585439 (= e!1631285 (and tp_is_empty!13221 tp!820754))))

(assert (=> b!2584979 (= tp!820650 e!1631285)))

(assert (= (and b!2584979 ((_ is Cons!29756) (t!212173 input!3654))) b!2585439))

(declare-fun b!2585441 () Bool)

(declare-fun e!1631286 () Bool)

(declare-fun tp!820757 () Bool)

(declare-fun tp!820759 () Bool)

(assert (=> b!2585441 (= e!1631286 (and tp!820757 tp!820759))))

(declare-fun b!2585443 () Bool)

(declare-fun tp!820758 () Bool)

(declare-fun tp!820756 () Bool)

(assert (=> b!2585443 (= e!1631286 (and tp!820758 tp!820756))))

(declare-fun b!2585440 () Bool)

(assert (=> b!2585440 (= e!1631286 tp_is_empty!13221)))

(declare-fun b!2585442 () Bool)

(declare-fun tp!820755 () Bool)

(assert (=> b!2585442 (= e!1631286 tp!820755)))

(assert (=> b!2584957 (= tp!820655 e!1631286)))

(assert (= (and b!2584957 ((_ is ElementMatch!7663) (regex!4519 (h!35177 rs!798)))) b!2585440))

(assert (= (and b!2584957 ((_ is Concat!12405) (regex!4519 (h!35177 rs!798)))) b!2585441))

(assert (= (and b!2584957 ((_ is Star!7663) (regex!4519 (h!35177 rs!798)))) b!2585442))

(assert (= (and b!2584957 ((_ is Union!7663) (regex!4519 (h!35177 rs!798)))) b!2585443))

(declare-fun b!2585445 () Bool)

(declare-fun e!1631287 () Bool)

(declare-fun tp!820762 () Bool)

(declare-fun tp!820764 () Bool)

(assert (=> b!2585445 (= e!1631287 (and tp!820762 tp!820764))))

(declare-fun b!2585447 () Bool)

(declare-fun tp!820763 () Bool)

(declare-fun tp!820761 () Bool)

(assert (=> b!2585447 (= e!1631287 (and tp!820763 tp!820761))))

(declare-fun b!2585444 () Bool)

(assert (=> b!2585444 (= e!1631287 tp_is_empty!13221)))

(declare-fun b!2585446 () Bool)

(declare-fun tp!820760 () Bool)

(assert (=> b!2585446 (= e!1631287 tp!820760)))

(assert (=> b!2584956 (= tp!820651 e!1631287)))

(assert (= (and b!2584956 ((_ is ElementMatch!7663) (regex!4519 (h!35177 rules!4580)))) b!2585444))

(assert (= (and b!2584956 ((_ is Concat!12405) (regex!4519 (h!35177 rules!4580)))) b!2585445))

(assert (= (and b!2584956 ((_ is Star!7663) (regex!4519 (h!35177 rules!4580)))) b!2585446))

(assert (= (and b!2584956 ((_ is Union!7663) (regex!4519 (h!35177 rules!4580)))) b!2585447))

(declare-fun b_lambda!76769 () Bool)

(assert (= b_lambda!76751 (or (and b!2584959 b_free!72819) (and b!2585431 b_free!72831 (= (toChars!6268 (transformation!4519 (h!35177 (t!212174 rules!4580)))) (toChars!6268 (transformation!4519 (rule!6883 token!562))))) (and b!2584961 b_free!72815 (= (toChars!6268 (transformation!4519 (h!35177 rs!798))) (toChars!6268 (transformation!4519 (rule!6883 token!562))))) (and b!2584960 b_free!72811 (= (toChars!6268 (transformation!4519 (h!35177 rules!4580))) (toChars!6268 (transformation!4519 (rule!6883 token!562))))) (and b!2584972 b_free!72807 (= (toChars!6268 (transformation!4519 rule!570)) (toChars!6268 (transformation!4519 (rule!6883 token!562))))) (and b!2585434 b_free!72835 (= (toChars!6268 (transformation!4519 (h!35177 (t!212174 rs!798)))) (toChars!6268 (transformation!4519 (rule!6883 token!562))))) b_lambda!76769)))

(declare-fun b_lambda!76771 () Bool)

(assert (= b_lambda!76753 (or (and b!2584960 b_free!72809 (= (toValue!6409 (transformation!4519 (h!35177 rules!4580))) (toValue!6409 (transformation!4519 rule!570)))) (and b!2585431 b_free!72829 (= (toValue!6409 (transformation!4519 (h!35177 (t!212174 rules!4580)))) (toValue!6409 (transformation!4519 rule!570)))) (and b!2584972 b_free!72805) (and b!2584961 b_free!72813 (= (toValue!6409 (transformation!4519 (h!35177 rs!798))) (toValue!6409 (transformation!4519 rule!570)))) (and b!2584959 b_free!72817 (= (toValue!6409 (transformation!4519 (rule!6883 token!562))) (toValue!6409 (transformation!4519 rule!570)))) (and b!2585434 b_free!72833 (= (toValue!6409 (transformation!4519 (h!35177 (t!212174 rs!798)))) (toValue!6409 (transformation!4519 rule!570)))) b_lambda!76771)))

(declare-fun b_lambda!76773 () Bool)

(assert (= b_lambda!76755 (or (and b!2584959 b_free!72819) (and b!2585431 b_free!72831 (= (toChars!6268 (transformation!4519 (h!35177 (t!212174 rules!4580)))) (toChars!6268 (transformation!4519 (rule!6883 token!562))))) (and b!2584961 b_free!72815 (= (toChars!6268 (transformation!4519 (h!35177 rs!798))) (toChars!6268 (transformation!4519 (rule!6883 token!562))))) (and b!2584960 b_free!72811 (= (toChars!6268 (transformation!4519 (h!35177 rules!4580))) (toChars!6268 (transformation!4519 (rule!6883 token!562))))) (and b!2584972 b_free!72807 (= (toChars!6268 (transformation!4519 rule!570)) (toChars!6268 (transformation!4519 (rule!6883 token!562))))) (and b!2585434 b_free!72835 (= (toChars!6268 (transformation!4519 (h!35177 (t!212174 rs!798)))) (toChars!6268 (transformation!4519 (rule!6883 token!562))))) b_lambda!76773)))

(check-sat (not b!2585160) (not b!2585225) (not b!2585432) (not b_next!73521) (not b_next!73517) (not b!2585192) (not b!2585441) (not d!732027) (not b!2585171) (not b!2585216) (not b!2585264) (not d!731987) (not b!2585447) (not b!2585155) b_and!189471 (not b!2585224) (not b!2585437) (not b_next!73519) (not b!2585442) (not b!2585433) b_and!189463 (not b!2585101) (not b_next!73509) (not b!2585270) (not d!731995) (not tb!140793) (not b!2585268) (not b!2585274) (not b!2585267) (not b!2585058) (not b_lambda!76773) (not b!2585228) b_and!189459 (not d!731973) (not bm!166930) (not d!732049) b_and!189461 (not b!2585430) (not b_next!73515) (not b!2585269) (not b!2585102) (not b!2585231) (not d!732007) (not b!2585405) b_and!189513 (not b!2585103) b_and!189469 (not b_lambda!76769) (not b!2585446) (not tb!140801) b_and!189467 (not b!2585099) (not b!2585161) (not b!2585273) (not b!2585418) (not b!2585112) (not d!732011) (not d!732001) (not b!2585153) (not b!2585406) (not b!2585436) (not bm!166931) (not d!731977) (not b!2585185) (not d!732013) b_and!189465 (not b!2585198) (not b!2585158) (not b!2585419) b_and!189511 (not b!2585445) b_and!189509 (not b!2585167) (not b!2585182) (not b!2585120) (not b!2585271) (not b_next!73513) (not b!2585420) (not b!2585265) (not b!2585439) (not d!732017) (not d!732005) (not b!2585105) (not b!2585186) (not b_lambda!76771) (not b!2585438) (not b!2585107) (not b!2585443) (not b_next!73539) (not d!732033) (not b!2585100) (not b!2585266) (not b!2585429) (not d!731989) tp_is_empty!13221 (not b_next!73523) b_and!189473 (not b_next!73537) (not b!2585223) (not d!732031) (not b!2585154) (not b_next!73511) (not b!2585039) (not bm!166934) (not d!732021) (not b!2585230) (not b_next!73535) b_and!189507 (not b!2585191) (not b_next!73533) (not b!2585106) (not b!2585060) (not b!2585200) (not b!2585217) (not d!732043) (not d!732015) (not d!732047))
(check-sat b_and!189471 (not b_next!73519) b_and!189459 b_and!189467 b_and!189465 (not b_next!73513) (not b_next!73539) (not b_next!73511) (not b_next!73533) (not b_next!73521) (not b_next!73517) (not b_next!73509) b_and!189463 b_and!189461 (not b_next!73515) b_and!189513 b_and!189469 b_and!189511 b_and!189509 (not b_next!73523) b_and!189473 (not b_next!73537) (not b_next!73535) b_and!189507)
