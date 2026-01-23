; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!192294 () Bool)

(assert start!192294)

(declare-fun b!1919857 () Bool)

(declare-fun b_free!54805 () Bool)

(declare-fun b_next!55509 () Bool)

(assert (=> b!1919857 (= b_free!54805 (not b_next!55509))))

(declare-fun tp!548508 () Bool)

(declare-fun b_and!150011 () Bool)

(assert (=> b!1919857 (= tp!548508 b_and!150011)))

(declare-fun b_free!54807 () Bool)

(declare-fun b_next!55511 () Bool)

(assert (=> b!1919857 (= b_free!54807 (not b_next!55511))))

(declare-fun tp!548517 () Bool)

(declare-fun b_and!150013 () Bool)

(assert (=> b!1919857 (= tp!548517 b_and!150013)))

(declare-fun b!1919867 () Bool)

(declare-fun b_free!54809 () Bool)

(declare-fun b_next!55513 () Bool)

(assert (=> b!1919867 (= b_free!54809 (not b_next!55513))))

(declare-fun tp!548515 () Bool)

(declare-fun b_and!150015 () Bool)

(assert (=> b!1919867 (= tp!548515 b_and!150015)))

(declare-fun b_free!54811 () Bool)

(declare-fun b_next!55515 () Bool)

(assert (=> b!1919867 (= b_free!54811 (not b_next!55515))))

(declare-fun tp!548514 () Bool)

(declare-fun b_and!150017 () Bool)

(assert (=> b!1919867 (= tp!548514 b_and!150017)))

(declare-fun b!1919860 () Bool)

(declare-fun b_free!54813 () Bool)

(declare-fun b_next!55517 () Bool)

(assert (=> b!1919860 (= b_free!54813 (not b_next!55517))))

(declare-fun tp!548506 () Bool)

(declare-fun b_and!150019 () Bool)

(assert (=> b!1919860 (= tp!548506 b_and!150019)))

(declare-fun b_free!54815 () Bool)

(declare-fun b_next!55519 () Bool)

(assert (=> b!1919860 (= b_free!54815 (not b_next!55519))))

(declare-fun tp!548507 () Bool)

(declare-fun b_and!150021 () Bool)

(assert (=> b!1919860 (= tp!548507 b_and!150021)))

(declare-fun e!1227121 () Bool)

(declare-datatypes ((List!21904 0))(
  ( (Nil!21822) (Cons!21822 (h!27223 (_ BitVec 16)) (t!178697 List!21904)) )
))
(declare-datatypes ((TokenValue!4045 0))(
  ( (FloatLiteralValue!8090 (text!28760 List!21904)) (TokenValueExt!4044 (__x!13588 Int)) (Broken!20225 (value!122973 List!21904)) (Object!4126) (End!4045) (Def!4045) (Underscore!4045) (Match!4045) (Else!4045) (Error!4045) (Case!4045) (If!4045) (Extends!4045) (Abstract!4045) (Class!4045) (Val!4045) (DelimiterValue!8090 (del!4105 List!21904)) (KeywordValue!4051 (value!122974 List!21904)) (CommentValue!8090 (value!122975 List!21904)) (WhitespaceValue!8090 (value!122976 List!21904)) (IndentationValue!4045 (value!122977 List!21904)) (String!25344) (Int32!4045) (Broken!20226 (value!122978 List!21904)) (Boolean!4046) (Unit!36174) (OperatorValue!4048 (op!4105 List!21904)) (IdentifierValue!8090 (value!122979 List!21904)) (IdentifierValue!8091 (value!122980 List!21904)) (WhitespaceValue!8091 (value!122981 List!21904)) (True!8090) (False!8090) (Broken!20227 (value!122982 List!21904)) (Broken!20228 (value!122983 List!21904)) (True!8091) (RightBrace!4045) (RightBracket!4045) (Colon!4045) (Null!4045) (Comma!4045) (LeftBracket!4045) (False!8091) (LeftBrace!4045) (ImaginaryLiteralValue!4045 (text!28761 List!21904)) (StringLiteralValue!12135 (value!122984 List!21904)) (EOFValue!4045 (value!122985 List!21904)) (IdentValue!4045 (value!122986 List!21904)) (DelimiterValue!8091 (value!122987 List!21904)) (DedentValue!4045 (value!122988 List!21904)) (NewLineValue!4045 (value!122989 List!21904)) (IntegerValue!12135 (value!122990 (_ BitVec 32)) (text!28762 List!21904)) (IntegerValue!12136 (value!122991 Int) (text!28763 List!21904)) (Times!4045) (Or!4045) (Equal!4045) (Minus!4045) (Broken!20229 (value!122992 List!21904)) (And!4045) (Div!4045) (LessEqual!4045) (Mod!4045) (Concat!9379) (Not!4045) (Plus!4045) (SpaceValue!4045 (value!122993 List!21904)) (IntegerValue!12137 (value!122994 Int) (text!28764 List!21904)) (StringLiteralValue!12136 (text!28765 List!21904)) (FloatLiteralValue!8091 (text!28766 List!21904)) (BytesLiteralValue!4045 (value!122995 List!21904)) (CommentValue!8091 (value!122996 List!21904)) (StringLiteralValue!12137 (value!122997 List!21904)) (ErrorTokenValue!4045 (msg!4106 List!21904)) )
))
(declare-datatypes ((C!10814 0))(
  ( (C!10815 (val!6359 Int)) )
))
(declare-datatypes ((List!21905 0))(
  ( (Nil!21823) (Cons!21823 (h!27224 C!10814) (t!178698 List!21905)) )
))
(declare-datatypes ((String!25345 0))(
  ( (String!25346 (value!122998 String)) )
))
(declare-datatypes ((Regex!5334 0))(
  ( (ElementMatch!5334 (c!312145 C!10814)) (Concat!9380 (regOne!11180 Regex!5334) (regTwo!11180 Regex!5334)) (EmptyExpr!5334) (Star!5334 (reg!5663 Regex!5334)) (EmptyLang!5334) (Union!5334 (regOne!11181 Regex!5334) (regTwo!11181 Regex!5334)) )
))
(declare-datatypes ((IArray!14569 0))(
  ( (IArray!14570 (innerList!7342 List!21905)) )
))
(declare-datatypes ((Conc!7282 0))(
  ( (Node!7282 (left!17371 Conc!7282) (right!17701 Conc!7282) (csize!14794 Int) (cheight!7493 Int)) (Leaf!10700 (xs!10176 IArray!14569) (csize!14795 Int)) (Empty!7282) )
))
(declare-datatypes ((BalanceConc!14380 0))(
  ( (BalanceConc!14381 (c!312146 Conc!7282)) )
))
(declare-datatypes ((TokenValueInjection!7674 0))(
  ( (TokenValueInjection!7675 (toValue!5538 Int) (toChars!5397 Int)) )
))
(declare-datatypes ((Rule!7618 0))(
  ( (Rule!7619 (regex!3909 Regex!5334) (tag!4349 String!25345) (isSeparator!3909 Bool) (transformation!3909 TokenValueInjection!7674)) )
))
(declare-datatypes ((Token!7370 0))(
  ( (Token!7371 (value!122999 TokenValue!4045) (rule!6112 Rule!7618) (size!17055 Int) (originalCharacters!4716 List!21905)) )
))
(declare-fun separatorToken!354 () Token!7370)

(declare-fun e!1227119 () Bool)

(declare-fun tp!548511 () Bool)

(declare-fun b!1919851 () Bool)

(declare-fun inv!21 (TokenValue!4045) Bool)

(assert (=> b!1919851 (= e!1227119 (and (inv!21 (value!122999 separatorToken!354)) e!1227121 tp!548511))))

(declare-fun b!1919852 () Bool)

(declare-fun res!858587 () Bool)

(declare-fun e!1227120 () Bool)

(assert (=> b!1919852 (=> (not res!858587) (not e!1227120))))

(declare-datatypes ((List!21906 0))(
  ( (Nil!21824) (Cons!21824 (h!27225 Token!7370) (t!178699 List!21906)) )
))
(declare-fun tokens!598 () List!21906)

(declare-fun lambda!74938 () Int)

(declare-fun forall!4605 (List!21906 Int) Bool)

(assert (=> b!1919852 (= res!858587 (forall!4605 tokens!598 lambda!74938))))

(declare-fun b!1919853 () Bool)

(declare-fun res!858585 () Bool)

(assert (=> b!1919853 (=> (not res!858585) (not e!1227120))))

(declare-datatypes ((List!21907 0))(
  ( (Nil!21825) (Cons!21825 (h!27226 Rule!7618) (t!178700 List!21907)) )
))
(declare-fun rules!3198 () List!21907)

(declare-fun isEmpty!13421 (List!21907) Bool)

(assert (=> b!1919853 (= res!858585 (not (isEmpty!13421 rules!3198)))))

(declare-fun b!1919854 () Bool)

(declare-fun res!858592 () Bool)

(assert (=> b!1919854 (=> (not res!858592) (not e!1227120))))

(declare-fun sepAndNonSepRulesDisjointChars!1007 (List!21907 List!21907) Bool)

(assert (=> b!1919854 (= res!858592 (sepAndNonSepRulesDisjointChars!1007 rules!3198 rules!3198))))

(declare-fun b!1919855 () Bool)

(declare-fun res!858593 () Bool)

(assert (=> b!1919855 (=> (not res!858593) (not e!1227120))))

(assert (=> b!1919855 (= res!858593 (not (is-Cons!21824 tokens!598)))))

(declare-fun b!1919856 () Bool)

(declare-fun res!858586 () Bool)

(assert (=> b!1919856 (=> (not res!858586) (not e!1227120))))

(assert (=> b!1919856 (= res!858586 (isSeparator!3909 (rule!6112 separatorToken!354)))))

(declare-fun b!1919858 () Bool)

(declare-fun res!858591 () Bool)

(assert (=> b!1919858 (=> (not res!858591) (not e!1227120))))

(declare-datatypes ((LexerInterface!3522 0))(
  ( (LexerInterfaceExt!3519 (__x!13589 Int)) (Lexer!3520) )
))
(declare-fun thiss!23328 () LexerInterface!3522)

(declare-fun rulesInvariant!3129 (LexerInterface!3522 List!21907) Bool)

(assert (=> b!1919858 (= res!858591 (rulesInvariant!3129 thiss!23328 rules!3198))))

(declare-fun tp!548513 () Bool)

(declare-fun e!1227123 () Bool)

(declare-fun b!1919859 () Bool)

(declare-fun e!1227116 () Bool)

(declare-fun inv!28898 (String!25345) Bool)

(declare-fun inv!28901 (TokenValueInjection!7674) Bool)

(assert (=> b!1919859 (= e!1227116 (and tp!548513 (inv!28898 (tag!4349 (h!27226 rules!3198))) (inv!28901 (transformation!3909 (h!27226 rules!3198))) e!1227123))))

(declare-fun e!1227127 () Bool)

(assert (=> b!1919860 (= e!1227127 (and tp!548506 tp!548507))))

(declare-fun b!1919861 () Bool)

(declare-fun res!858588 () Bool)

(assert (=> b!1919861 (=> (not res!858588) (not e!1227120))))

(declare-fun isEmpty!13422 (List!21906) Bool)

(assert (=> b!1919861 (= res!858588 (not (isEmpty!13422 tokens!598)))))

(declare-fun b!1919862 () Bool)

(declare-fun e!1227122 () Bool)

(declare-fun e!1227117 () Bool)

(declare-fun tp!548516 () Bool)

(assert (=> b!1919862 (= e!1227117 (and (inv!21 (value!122999 (h!27225 tokens!598))) e!1227122 tp!548516))))

(declare-fun b!1919863 () Bool)

(declare-fun tp!548512 () Bool)

(declare-fun e!1227129 () Bool)

(declare-fun inv!28902 (Token!7370) Bool)

(assert (=> b!1919863 (= e!1227129 (and (inv!28902 (h!27225 tokens!598)) e!1227117 tp!548512))))

(declare-fun b!1919864 () Bool)

(declare-fun e!1227130 () Bool)

(declare-fun tp!548510 () Bool)

(assert (=> b!1919864 (= e!1227130 (and e!1227116 tp!548510))))

(declare-fun b!1919865 () Bool)

(declare-fun res!858589 () Bool)

(assert (=> b!1919865 (=> (not res!858589) (not e!1227120))))

(declare-fun rulesProduceEachTokenIndividuallyList!1253 (LexerInterface!3522 List!21907 List!21906) Bool)

(assert (=> b!1919865 (= res!858589 (rulesProduceEachTokenIndividuallyList!1253 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1919866 () Bool)

(declare-fun res!858594 () Bool)

(assert (=> b!1919866 (=> (not res!858594) (not e!1227120))))

(declare-fun rulesProduceIndividualToken!1694 (LexerInterface!3522 List!21907 Token!7370) Bool)

(assert (=> b!1919866 (= res!858594 (rulesProduceIndividualToken!1694 thiss!23328 rules!3198 separatorToken!354))))

(assert (=> b!1919867 (= e!1227123 (and tp!548515 tp!548514))))

(declare-fun b!1919868 () Bool)

(declare-fun tp!548505 () Bool)

(assert (=> b!1919868 (= e!1227121 (and tp!548505 (inv!28898 (tag!4349 (rule!6112 separatorToken!354))) (inv!28901 (transformation!3909 (rule!6112 separatorToken!354))) e!1227127))))

(declare-fun res!858590 () Bool)

(assert (=> start!192294 (=> (not res!858590) (not e!1227120))))

(assert (=> start!192294 (= res!858590 (is-Lexer!3520 thiss!23328))))

(assert (=> start!192294 e!1227120))

(assert (=> start!192294 true))

(assert (=> start!192294 e!1227130))

(assert (=> start!192294 e!1227129))

(assert (=> start!192294 (and (inv!28902 separatorToken!354) e!1227119)))

(declare-fun e!1227125 () Bool)

(assert (=> b!1919857 (= e!1227125 (and tp!548508 tp!548517))))

(declare-fun b!1919869 () Bool)

(declare-fun rulesValidInductive!1323 (LexerInterface!3522 List!21907) Bool)

(assert (=> b!1919869 (= e!1227120 (not (rulesValidInductive!1323 thiss!23328 rules!3198)))))

(declare-fun lt!736275 () List!21905)

(declare-fun printWithSeparatorTokenWhenNeededList!561 (LexerInterface!3522 List!21907 List!21906 Token!7370) List!21905)

(assert (=> b!1919869 (= lt!736275 (printWithSeparatorTokenWhenNeededList!561 thiss!23328 rules!3198 tokens!598 separatorToken!354))))

(declare-fun tp!548509 () Bool)

(declare-fun b!1919870 () Bool)

(assert (=> b!1919870 (= e!1227122 (and tp!548509 (inv!28898 (tag!4349 (rule!6112 (h!27225 tokens!598)))) (inv!28901 (transformation!3909 (rule!6112 (h!27225 tokens!598)))) e!1227125))))

(assert (= (and start!192294 res!858590) b!1919853))

(assert (= (and b!1919853 res!858585) b!1919858))

(assert (= (and b!1919858 res!858591) b!1919865))

(assert (= (and b!1919865 res!858589) b!1919866))

(assert (= (and b!1919866 res!858594) b!1919856))

(assert (= (and b!1919856 res!858586) b!1919852))

(assert (= (and b!1919852 res!858587) b!1919854))

(assert (= (and b!1919854 res!858592) b!1919855))

(assert (= (and b!1919855 res!858593) b!1919861))

(assert (= (and b!1919861 res!858588) b!1919869))

(assert (= b!1919859 b!1919867))

(assert (= b!1919864 b!1919859))

(assert (= (and start!192294 (is-Cons!21825 rules!3198)) b!1919864))

(assert (= b!1919870 b!1919857))

(assert (= b!1919862 b!1919870))

(assert (= b!1919863 b!1919862))

(assert (= (and start!192294 (is-Cons!21824 tokens!598)) b!1919863))

(assert (= b!1919868 b!1919860))

(assert (= b!1919851 b!1919868))

(assert (= start!192294 b!1919851))

(declare-fun m!2355195 () Bool)

(assert (=> b!1919866 m!2355195))

(declare-fun m!2355197 () Bool)

(assert (=> b!1919854 m!2355197))

(declare-fun m!2355199 () Bool)

(assert (=> b!1919868 m!2355199))

(declare-fun m!2355201 () Bool)

(assert (=> b!1919868 m!2355201))

(declare-fun m!2355203 () Bool)

(assert (=> start!192294 m!2355203))

(declare-fun m!2355205 () Bool)

(assert (=> b!1919869 m!2355205))

(declare-fun m!2355207 () Bool)

(assert (=> b!1919869 m!2355207))

(declare-fun m!2355209 () Bool)

(assert (=> b!1919861 m!2355209))

(declare-fun m!2355211 () Bool)

(assert (=> b!1919863 m!2355211))

(declare-fun m!2355213 () Bool)

(assert (=> b!1919862 m!2355213))

(declare-fun m!2355215 () Bool)

(assert (=> b!1919865 m!2355215))

(declare-fun m!2355217 () Bool)

(assert (=> b!1919852 m!2355217))

(declare-fun m!2355219 () Bool)

(assert (=> b!1919858 m!2355219))

(declare-fun m!2355221 () Bool)

(assert (=> b!1919853 m!2355221))

(declare-fun m!2355223 () Bool)

(assert (=> b!1919851 m!2355223))

(declare-fun m!2355225 () Bool)

(assert (=> b!1919870 m!2355225))

(declare-fun m!2355227 () Bool)

(assert (=> b!1919870 m!2355227))

(declare-fun m!2355229 () Bool)

(assert (=> b!1919859 m!2355229))

(declare-fun m!2355231 () Bool)

(assert (=> b!1919859 m!2355231))

(push 1)

(assert (not start!192294))

(assert b_and!150015)

(assert (not b!1919869))

(assert (not b!1919862))

(assert (not b!1919854))

(assert (not b!1919864))

(assert (not b!1919868))

(assert (not b_next!55519))

(assert (not b_next!55517))

(assert b_and!150011)

(assert (not b!1919851))

(assert (not b!1919859))

(assert b_and!150013)

(assert b_and!150019)

(assert b_and!150017)

(assert (not b_next!55513))

(assert (not b_next!55515))

(assert (not b!1919870))

(assert (not b!1919861))

(assert (not b!1919852))

(assert (not b!1919865))

(assert (not b!1919858))

(assert (not b_next!55511))

(assert (not b!1919866))

(assert (not b!1919863))

(assert (not b_next!55509))

(assert (not b!1919853))

(assert b_and!150021)

(check-sat)

(pop 1)

(push 1)

(assert b_and!150011)

(assert b_and!150015)

(assert b_and!150013)

(assert (not b_next!55511))

(assert (not b_next!55509))

(assert b_and!150021)

(assert (not b_next!55519))

(assert (not b_next!55517))

(assert b_and!150019)

(assert b_and!150017)

(assert (not b_next!55513))

(assert (not b_next!55515))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!585346 () Bool)

(assert (=> d!585346 (= (isEmpty!13422 tokens!598) (is-Nil!21824 tokens!598))))

(assert (=> b!1919861 d!585346))

(declare-fun b!1919941 () Bool)

(declare-fun e!1227185 () Bool)

(declare-fun inv!15 (TokenValue!4045) Bool)

(assert (=> b!1919941 (= e!1227185 (inv!15 (value!122999 separatorToken!354)))))

(declare-fun b!1919942 () Bool)

(declare-fun res!858631 () Bool)

(assert (=> b!1919942 (=> res!858631 e!1227185)))

(assert (=> b!1919942 (= res!858631 (not (is-IntegerValue!12137 (value!122999 separatorToken!354))))))

(declare-fun e!1227186 () Bool)

(assert (=> b!1919942 (= e!1227186 e!1227185)))

(declare-fun d!585348 () Bool)

(declare-fun c!312153 () Bool)

(assert (=> d!585348 (= c!312153 (is-IntegerValue!12135 (value!122999 separatorToken!354)))))

(declare-fun e!1227187 () Bool)

(assert (=> d!585348 (= (inv!21 (value!122999 separatorToken!354)) e!1227187)))

(declare-fun b!1919943 () Bool)

(declare-fun inv!17 (TokenValue!4045) Bool)

(assert (=> b!1919943 (= e!1227186 (inv!17 (value!122999 separatorToken!354)))))

(declare-fun b!1919944 () Bool)

(assert (=> b!1919944 (= e!1227187 e!1227186)))

(declare-fun c!312154 () Bool)

(assert (=> b!1919944 (= c!312154 (is-IntegerValue!12136 (value!122999 separatorToken!354)))))

(declare-fun b!1919945 () Bool)

(declare-fun inv!16 (TokenValue!4045) Bool)

(assert (=> b!1919945 (= e!1227187 (inv!16 (value!122999 separatorToken!354)))))

(assert (= (and d!585348 c!312153) b!1919945))

(assert (= (and d!585348 (not c!312153)) b!1919944))

(assert (= (and b!1919944 c!312154) b!1919943))

(assert (= (and b!1919944 (not c!312154)) b!1919942))

(assert (= (and b!1919942 (not res!858631)) b!1919941))

(declare-fun m!2355271 () Bool)

(assert (=> b!1919941 m!2355271))

(declare-fun m!2355273 () Bool)

(assert (=> b!1919943 m!2355273))

(declare-fun m!2355275 () Bool)

(assert (=> b!1919945 m!2355275))

(assert (=> b!1919851 d!585348))

(declare-fun b!1919946 () Bool)

(declare-fun e!1227188 () Bool)

(assert (=> b!1919946 (= e!1227188 (inv!15 (value!122999 (h!27225 tokens!598))))))

(declare-fun b!1919947 () Bool)

(declare-fun res!858632 () Bool)

(assert (=> b!1919947 (=> res!858632 e!1227188)))

(assert (=> b!1919947 (= res!858632 (not (is-IntegerValue!12137 (value!122999 (h!27225 tokens!598)))))))

(declare-fun e!1227189 () Bool)

(assert (=> b!1919947 (= e!1227189 e!1227188)))

(declare-fun d!585352 () Bool)

(declare-fun c!312155 () Bool)

(assert (=> d!585352 (= c!312155 (is-IntegerValue!12135 (value!122999 (h!27225 tokens!598))))))

(declare-fun e!1227190 () Bool)

(assert (=> d!585352 (= (inv!21 (value!122999 (h!27225 tokens!598))) e!1227190)))

(declare-fun b!1919948 () Bool)

(assert (=> b!1919948 (= e!1227189 (inv!17 (value!122999 (h!27225 tokens!598))))))

(declare-fun b!1919949 () Bool)

(assert (=> b!1919949 (= e!1227190 e!1227189)))

(declare-fun c!312156 () Bool)

(assert (=> b!1919949 (= c!312156 (is-IntegerValue!12136 (value!122999 (h!27225 tokens!598))))))

(declare-fun b!1919950 () Bool)

(assert (=> b!1919950 (= e!1227190 (inv!16 (value!122999 (h!27225 tokens!598))))))

(assert (= (and d!585352 c!312155) b!1919950))

(assert (= (and d!585352 (not c!312155)) b!1919949))

(assert (= (and b!1919949 c!312156) b!1919948))

(assert (= (and b!1919949 (not c!312156)) b!1919947))

(assert (= (and b!1919947 (not res!858632)) b!1919946))

(declare-fun m!2355277 () Bool)

(assert (=> b!1919946 m!2355277))

(declare-fun m!2355279 () Bool)

(assert (=> b!1919948 m!2355279))

(declare-fun m!2355281 () Bool)

(assert (=> b!1919950 m!2355281))

(assert (=> b!1919862 d!585352))

(declare-fun d!585354 () Bool)

(declare-fun res!858637 () Bool)

(declare-fun e!1227195 () Bool)

(assert (=> d!585354 (=> res!858637 e!1227195)))

(assert (=> d!585354 (= res!858637 (is-Nil!21824 tokens!598))))

(assert (=> d!585354 (= (forall!4605 tokens!598 lambda!74938) e!1227195)))

(declare-fun b!1919955 () Bool)

(declare-fun e!1227196 () Bool)

(assert (=> b!1919955 (= e!1227195 e!1227196)))

(declare-fun res!858638 () Bool)

(assert (=> b!1919955 (=> (not res!858638) (not e!1227196))))

(declare-fun dynLambda!10538 (Int Token!7370) Bool)

(assert (=> b!1919955 (= res!858638 (dynLambda!10538 lambda!74938 (h!27225 tokens!598)))))

(declare-fun b!1919956 () Bool)

(assert (=> b!1919956 (= e!1227196 (forall!4605 (t!178699 tokens!598) lambda!74938))))

(assert (= (and d!585354 (not res!858637)) b!1919955))

(assert (= (and b!1919955 res!858638) b!1919956))

(declare-fun b_lambda!63425 () Bool)

(assert (=> (not b_lambda!63425) (not b!1919955)))

(declare-fun m!2355283 () Bool)

(assert (=> b!1919955 m!2355283))

(declare-fun m!2355285 () Bool)

(assert (=> b!1919956 m!2355285))

(assert (=> b!1919852 d!585354))

(declare-fun d!585360 () Bool)

(declare-fun res!858643 () Bool)

(declare-fun e!1227199 () Bool)

(assert (=> d!585360 (=> (not res!858643) (not e!1227199))))

(declare-fun isEmpty!13425 (List!21905) Bool)

(assert (=> d!585360 (= res!858643 (not (isEmpty!13425 (originalCharacters!4716 (h!27225 tokens!598)))))))

(assert (=> d!585360 (= (inv!28902 (h!27225 tokens!598)) e!1227199)))

(declare-fun b!1919961 () Bool)

(declare-fun res!858644 () Bool)

(assert (=> b!1919961 (=> (not res!858644) (not e!1227199))))

(declare-fun list!8835 (BalanceConc!14380) List!21905)

(declare-fun dynLambda!10539 (Int TokenValue!4045) BalanceConc!14380)

(assert (=> b!1919961 (= res!858644 (= (originalCharacters!4716 (h!27225 tokens!598)) (list!8835 (dynLambda!10539 (toChars!5397 (transformation!3909 (rule!6112 (h!27225 tokens!598)))) (value!122999 (h!27225 tokens!598))))))))

(declare-fun b!1919962 () Bool)

(declare-fun size!17057 (List!21905) Int)

(assert (=> b!1919962 (= e!1227199 (= (size!17055 (h!27225 tokens!598)) (size!17057 (originalCharacters!4716 (h!27225 tokens!598)))))))

(assert (= (and d!585360 res!858643) b!1919961))

(assert (= (and b!1919961 res!858644) b!1919962))

(declare-fun b_lambda!63427 () Bool)

(assert (=> (not b_lambda!63427) (not b!1919961)))

(declare-fun t!178706 () Bool)

(declare-fun tb!117273 () Bool)

(assert (=> (and b!1919857 (= (toChars!5397 (transformation!3909 (rule!6112 (h!27225 tokens!598)))) (toChars!5397 (transformation!3909 (rule!6112 (h!27225 tokens!598))))) t!178706) tb!117273))

(declare-fun b!1919969 () Bool)

(declare-fun e!1227204 () Bool)

(declare-fun tp!548559 () Bool)

(declare-fun inv!28905 (Conc!7282) Bool)

(assert (=> b!1919969 (= e!1227204 (and (inv!28905 (c!312146 (dynLambda!10539 (toChars!5397 (transformation!3909 (rule!6112 (h!27225 tokens!598)))) (value!122999 (h!27225 tokens!598))))) tp!548559))))

(declare-fun result!141704 () Bool)

(declare-fun inv!28906 (BalanceConc!14380) Bool)

(assert (=> tb!117273 (= result!141704 (and (inv!28906 (dynLambda!10539 (toChars!5397 (transformation!3909 (rule!6112 (h!27225 tokens!598)))) (value!122999 (h!27225 tokens!598)))) e!1227204))))

(assert (= tb!117273 b!1919969))

(declare-fun m!2355287 () Bool)

(assert (=> b!1919969 m!2355287))

(declare-fun m!2355289 () Bool)

(assert (=> tb!117273 m!2355289))

(assert (=> b!1919961 t!178706))

(declare-fun b_and!150035 () Bool)

(assert (= b_and!150013 (and (=> t!178706 result!141704) b_and!150035)))

(declare-fun tb!117275 () Bool)

(declare-fun t!178708 () Bool)

(assert (=> (and b!1919867 (= (toChars!5397 (transformation!3909 (h!27226 rules!3198))) (toChars!5397 (transformation!3909 (rule!6112 (h!27225 tokens!598))))) t!178708) tb!117275))

(declare-fun result!141708 () Bool)

(assert (= result!141708 result!141704))

(assert (=> b!1919961 t!178708))

(declare-fun b_and!150037 () Bool)

(assert (= b_and!150017 (and (=> t!178708 result!141708) b_and!150037)))

(declare-fun tb!117277 () Bool)

(declare-fun t!178710 () Bool)

(assert (=> (and b!1919860 (= (toChars!5397 (transformation!3909 (rule!6112 separatorToken!354))) (toChars!5397 (transformation!3909 (rule!6112 (h!27225 tokens!598))))) t!178710) tb!117277))

(declare-fun result!141710 () Bool)

(assert (= result!141710 result!141704))

(assert (=> b!1919961 t!178710))

(declare-fun b_and!150039 () Bool)

(assert (= b_and!150021 (and (=> t!178710 result!141710) b_and!150039)))

(declare-fun m!2355291 () Bool)

(assert (=> d!585360 m!2355291))

(declare-fun m!2355293 () Bool)

(assert (=> b!1919961 m!2355293))

(assert (=> b!1919961 m!2355293))

(declare-fun m!2355295 () Bool)

(assert (=> b!1919961 m!2355295))

(declare-fun m!2355297 () Bool)

(assert (=> b!1919962 m!2355297))

(assert (=> b!1919863 d!585360))

(declare-fun d!585362 () Bool)

(declare-fun res!858647 () Bool)

(declare-fun e!1227205 () Bool)

(assert (=> d!585362 (=> (not res!858647) (not e!1227205))))

(assert (=> d!585362 (= res!858647 (not (isEmpty!13425 (originalCharacters!4716 separatorToken!354))))))

(assert (=> d!585362 (= (inv!28902 separatorToken!354) e!1227205)))

(declare-fun b!1919970 () Bool)

(declare-fun res!858648 () Bool)

(assert (=> b!1919970 (=> (not res!858648) (not e!1227205))))

(assert (=> b!1919970 (= res!858648 (= (originalCharacters!4716 separatorToken!354) (list!8835 (dynLambda!10539 (toChars!5397 (transformation!3909 (rule!6112 separatorToken!354))) (value!122999 separatorToken!354)))))))

(declare-fun b!1919971 () Bool)

(assert (=> b!1919971 (= e!1227205 (= (size!17055 separatorToken!354) (size!17057 (originalCharacters!4716 separatorToken!354))))))

(assert (= (and d!585362 res!858647) b!1919970))

(assert (= (and b!1919970 res!858648) b!1919971))

(declare-fun b_lambda!63429 () Bool)

(assert (=> (not b_lambda!63429) (not b!1919970)))

(declare-fun t!178712 () Bool)

(declare-fun tb!117279 () Bool)

(assert (=> (and b!1919857 (= (toChars!5397 (transformation!3909 (rule!6112 (h!27225 tokens!598)))) (toChars!5397 (transformation!3909 (rule!6112 separatorToken!354)))) t!178712) tb!117279))

(declare-fun b!1919973 () Bool)

(declare-fun e!1227207 () Bool)

(declare-fun tp!548560 () Bool)

(assert (=> b!1919973 (= e!1227207 (and (inv!28905 (c!312146 (dynLambda!10539 (toChars!5397 (transformation!3909 (rule!6112 separatorToken!354))) (value!122999 separatorToken!354)))) tp!548560))))

(declare-fun result!141712 () Bool)

(assert (=> tb!117279 (= result!141712 (and (inv!28906 (dynLambda!10539 (toChars!5397 (transformation!3909 (rule!6112 separatorToken!354))) (value!122999 separatorToken!354))) e!1227207))))

(assert (= tb!117279 b!1919973))

(declare-fun m!2355299 () Bool)

(assert (=> b!1919973 m!2355299))

(declare-fun m!2355301 () Bool)

(assert (=> tb!117279 m!2355301))

(assert (=> b!1919970 t!178712))

(declare-fun b_and!150041 () Bool)

(assert (= b_and!150035 (and (=> t!178712 result!141712) b_and!150041)))

(declare-fun t!178714 () Bool)

(declare-fun tb!117281 () Bool)

(assert (=> (and b!1919867 (= (toChars!5397 (transformation!3909 (h!27226 rules!3198))) (toChars!5397 (transformation!3909 (rule!6112 separatorToken!354)))) t!178714) tb!117281))

(declare-fun result!141714 () Bool)

(assert (= result!141714 result!141712))

(assert (=> b!1919970 t!178714))

(declare-fun b_and!150043 () Bool)

(assert (= b_and!150037 (and (=> t!178714 result!141714) b_and!150043)))

(declare-fun t!178716 () Bool)

(declare-fun tb!117283 () Bool)

(assert (=> (and b!1919860 (= (toChars!5397 (transformation!3909 (rule!6112 separatorToken!354))) (toChars!5397 (transformation!3909 (rule!6112 separatorToken!354)))) t!178716) tb!117283))

(declare-fun result!141716 () Bool)

(assert (= result!141716 result!141712))

(assert (=> b!1919970 t!178716))

(declare-fun b_and!150045 () Bool)

(assert (= b_and!150039 (and (=> t!178716 result!141716) b_and!150045)))

(declare-fun m!2355303 () Bool)

(assert (=> d!585362 m!2355303))

(declare-fun m!2355305 () Bool)

(assert (=> b!1919970 m!2355305))

(assert (=> b!1919970 m!2355305))

(declare-fun m!2355309 () Bool)

(assert (=> b!1919970 m!2355309))

(declare-fun m!2355311 () Bool)

(assert (=> b!1919971 m!2355311))

(assert (=> start!192294 d!585362))

(declare-fun d!585364 () Bool)

(assert (=> d!585364 (= (isEmpty!13421 rules!3198) (is-Nil!21825 rules!3198))))

(assert (=> b!1919853 d!585364))

(declare-fun d!585370 () Bool)

(declare-fun res!858655 () Bool)

(declare-fun e!1227213 () Bool)

(assert (=> d!585370 (=> res!858655 e!1227213)))

(assert (=> d!585370 (= res!858655 (not (is-Cons!21825 rules!3198)))))

(assert (=> d!585370 (= (sepAndNonSepRulesDisjointChars!1007 rules!3198 rules!3198) e!1227213)))

(declare-fun b!1919979 () Bool)

(declare-fun e!1227214 () Bool)

(assert (=> b!1919979 (= e!1227213 e!1227214)))

(declare-fun res!858656 () Bool)

(assert (=> b!1919979 (=> (not res!858656) (not e!1227214))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!437 (Rule!7618 List!21907) Bool)

(assert (=> b!1919979 (= res!858656 (ruleDisjointCharsFromAllFromOtherType!437 (h!27226 rules!3198) rules!3198))))

(declare-fun b!1919980 () Bool)

(assert (=> b!1919980 (= e!1227214 (sepAndNonSepRulesDisjointChars!1007 rules!3198 (t!178700 rules!3198)))))

(assert (= (and d!585370 (not res!858655)) b!1919979))

(assert (= (and b!1919979 res!858656) b!1919980))

(declare-fun m!2355319 () Bool)

(assert (=> b!1919979 m!2355319))

(declare-fun m!2355321 () Bool)

(assert (=> b!1919980 m!2355321))

(assert (=> b!1919854 d!585370))

(declare-fun bs!414351 () Bool)

(declare-fun d!585374 () Bool)

(assert (= bs!414351 (and d!585374 b!1919852)))

(declare-fun lambda!74944 () Int)

(assert (=> bs!414351 (not (= lambda!74944 lambda!74938))))

(declare-fun b!1920019 () Bool)

(declare-fun e!1227245 () Bool)

(assert (=> b!1920019 (= e!1227245 true)))

(declare-fun b!1920018 () Bool)

(declare-fun e!1227244 () Bool)

(assert (=> b!1920018 (= e!1227244 e!1227245)))

(declare-fun b!1920017 () Bool)

(declare-fun e!1227243 () Bool)

(assert (=> b!1920017 (= e!1227243 e!1227244)))

(assert (=> d!585374 e!1227243))

(assert (= b!1920018 b!1920019))

(assert (= b!1920017 b!1920018))

(assert (= (and d!585374 (is-Cons!21825 rules!3198)) b!1920017))

(declare-fun order!13663 () Int)

(declare-fun order!13661 () Int)

(declare-fun dynLambda!10540 (Int Int) Int)

(declare-fun dynLambda!10541 (Int Int) Int)

(assert (=> b!1920019 (< (dynLambda!10540 order!13661 (toValue!5538 (transformation!3909 (h!27226 rules!3198)))) (dynLambda!10541 order!13663 lambda!74944))))

(declare-fun order!13665 () Int)

(declare-fun dynLambda!10542 (Int Int) Int)

(assert (=> b!1920019 (< (dynLambda!10542 order!13665 (toChars!5397 (transformation!3909 (h!27226 rules!3198)))) (dynLambda!10541 order!13663 lambda!74944))))

(assert (=> d!585374 true))

(declare-fun lt!736283 () Bool)

(assert (=> d!585374 (= lt!736283 (forall!4605 tokens!598 lambda!74944))))

(declare-fun e!1227236 () Bool)

(assert (=> d!585374 (= lt!736283 e!1227236)))

(declare-fun res!858671 () Bool)

(assert (=> d!585374 (=> res!858671 e!1227236)))

(assert (=> d!585374 (= res!858671 (not (is-Cons!21824 tokens!598)))))

(assert (=> d!585374 (not (isEmpty!13421 rules!3198))))

(assert (=> d!585374 (= (rulesProduceEachTokenIndividuallyList!1253 thiss!23328 rules!3198 tokens!598) lt!736283)))

(declare-fun b!1920007 () Bool)

(declare-fun e!1227235 () Bool)

(assert (=> b!1920007 (= e!1227236 e!1227235)))

(declare-fun res!858672 () Bool)

(assert (=> b!1920007 (=> (not res!858672) (not e!1227235))))

(assert (=> b!1920007 (= res!858672 (rulesProduceIndividualToken!1694 thiss!23328 rules!3198 (h!27225 tokens!598)))))

(declare-fun b!1920008 () Bool)

(assert (=> b!1920008 (= e!1227235 (rulesProduceEachTokenIndividuallyList!1253 thiss!23328 rules!3198 (t!178699 tokens!598)))))

(assert (= (and d!585374 (not res!858671)) b!1920007))

(assert (= (and b!1920007 res!858672) b!1920008))

(declare-fun m!2355333 () Bool)

(assert (=> d!585374 m!2355333))

(assert (=> d!585374 m!2355221))

(declare-fun m!2355335 () Bool)

(assert (=> b!1920007 m!2355335))

(declare-fun m!2355337 () Bool)

(assert (=> b!1920008 m!2355337))

(assert (=> b!1919865 d!585374))

(declare-fun d!585382 () Bool)

(declare-fun lt!736290 () Bool)

(declare-fun e!1227253 () Bool)

(assert (=> d!585382 (= lt!736290 e!1227253)))

(declare-fun res!858682 () Bool)

(assert (=> d!585382 (=> (not res!858682) (not e!1227253))))

(declare-datatypes ((IArray!14573 0))(
  ( (IArray!14574 (innerList!7344 List!21906)) )
))
(declare-datatypes ((Conc!7284 0))(
  ( (Node!7284 (left!17377 Conc!7284) (right!17707 Conc!7284) (csize!14798 Int) (cheight!7495 Int)) (Leaf!10702 (xs!10178 IArray!14573) (csize!14799 Int)) (Empty!7284) )
))
(declare-datatypes ((BalanceConc!14384 0))(
  ( (BalanceConc!14385 (c!312189 Conc!7284)) )
))
(declare-fun list!8836 (BalanceConc!14384) List!21906)

(declare-datatypes ((tuple2!20470 0))(
  ( (tuple2!20471 (_1!11704 BalanceConc!14384) (_2!11704 BalanceConc!14380)) )
))
(declare-fun lex!1561 (LexerInterface!3522 List!21907 BalanceConc!14380) tuple2!20470)

(declare-fun print!1502 (LexerInterface!3522 BalanceConc!14384) BalanceConc!14380)

(declare-fun singletonSeq!1904 (Token!7370) BalanceConc!14384)

(assert (=> d!585382 (= res!858682 (= (list!8836 (_1!11704 (lex!1561 thiss!23328 rules!3198 (print!1502 thiss!23328 (singletonSeq!1904 separatorToken!354))))) (list!8836 (singletonSeq!1904 separatorToken!354))))))

(declare-fun e!1227252 () Bool)

(assert (=> d!585382 (= lt!736290 e!1227252)))

(declare-fun res!858683 () Bool)

(assert (=> d!585382 (=> (not res!858683) (not e!1227252))))

(declare-fun lt!736289 () tuple2!20470)

(declare-fun size!17058 (BalanceConc!14384) Int)

(assert (=> d!585382 (= res!858683 (= (size!17058 (_1!11704 lt!736289)) 1))))

(assert (=> d!585382 (= lt!736289 (lex!1561 thiss!23328 rules!3198 (print!1502 thiss!23328 (singletonSeq!1904 separatorToken!354))))))

(assert (=> d!585382 (not (isEmpty!13421 rules!3198))))

(assert (=> d!585382 (= (rulesProduceIndividualToken!1694 thiss!23328 rules!3198 separatorToken!354) lt!736290)))

(declare-fun b!1920032 () Bool)

(declare-fun res!858681 () Bool)

(assert (=> b!1920032 (=> (not res!858681) (not e!1227252))))

(declare-fun apply!5663 (BalanceConc!14384 Int) Token!7370)

(assert (=> b!1920032 (= res!858681 (= (apply!5663 (_1!11704 lt!736289) 0) separatorToken!354))))

(declare-fun b!1920033 () Bool)

(declare-fun isEmpty!13426 (BalanceConc!14380) Bool)

(assert (=> b!1920033 (= e!1227252 (isEmpty!13426 (_2!11704 lt!736289)))))

(declare-fun b!1920034 () Bool)

(assert (=> b!1920034 (= e!1227253 (isEmpty!13426 (_2!11704 (lex!1561 thiss!23328 rules!3198 (print!1502 thiss!23328 (singletonSeq!1904 separatorToken!354))))))))

(assert (= (and d!585382 res!858683) b!1920032))

(assert (= (and b!1920032 res!858681) b!1920033))

(assert (= (and d!585382 res!858682) b!1920034))

(declare-fun m!2355345 () Bool)

(assert (=> d!585382 m!2355345))

(declare-fun m!2355347 () Bool)

(assert (=> d!585382 m!2355347))

(assert (=> d!585382 m!2355345))

(declare-fun m!2355349 () Bool)

(assert (=> d!585382 m!2355349))

(declare-fun m!2355351 () Bool)

(assert (=> d!585382 m!2355351))

(assert (=> d!585382 m!2355345))

(declare-fun m!2355353 () Bool)

(assert (=> d!585382 m!2355353))

(assert (=> d!585382 m!2355221))

(assert (=> d!585382 m!2355347))

(declare-fun m!2355355 () Bool)

(assert (=> d!585382 m!2355355))

(declare-fun m!2355357 () Bool)

(assert (=> b!1920032 m!2355357))

(declare-fun m!2355359 () Bool)

(assert (=> b!1920033 m!2355359))

(assert (=> b!1920034 m!2355345))

(assert (=> b!1920034 m!2355345))

(assert (=> b!1920034 m!2355347))

(assert (=> b!1920034 m!2355347))

(assert (=> b!1920034 m!2355355))

(declare-fun m!2355361 () Bool)

(assert (=> b!1920034 m!2355361))

(assert (=> b!1919866 d!585382))

(declare-fun d!585386 () Bool)

(assert (=> d!585386 (= (inv!28898 (tag!4349 (rule!6112 separatorToken!354))) (= (mod (str.len (value!122998 (tag!4349 (rule!6112 separatorToken!354)))) 2) 0))))

(assert (=> b!1919868 d!585386))

(declare-fun d!585388 () Bool)

(declare-fun res!858686 () Bool)

(declare-fun e!1227256 () Bool)

(assert (=> d!585388 (=> (not res!858686) (not e!1227256))))

(declare-fun semiInverseModEq!1552 (Int Int) Bool)

(assert (=> d!585388 (= res!858686 (semiInverseModEq!1552 (toChars!5397 (transformation!3909 (rule!6112 separatorToken!354))) (toValue!5538 (transformation!3909 (rule!6112 separatorToken!354)))))))

(assert (=> d!585388 (= (inv!28901 (transformation!3909 (rule!6112 separatorToken!354))) e!1227256)))

(declare-fun b!1920037 () Bool)

(declare-fun equivClasses!1479 (Int Int) Bool)

(assert (=> b!1920037 (= e!1227256 (equivClasses!1479 (toChars!5397 (transformation!3909 (rule!6112 separatorToken!354))) (toValue!5538 (transformation!3909 (rule!6112 separatorToken!354)))))))

(assert (= (and d!585388 res!858686) b!1920037))

(declare-fun m!2355363 () Bool)

(assert (=> d!585388 m!2355363))

(declare-fun m!2355365 () Bool)

(assert (=> b!1920037 m!2355365))

(assert (=> b!1919868 d!585388))

(declare-fun d!585390 () Bool)

(declare-fun res!858689 () Bool)

(declare-fun e!1227259 () Bool)

(assert (=> d!585390 (=> (not res!858689) (not e!1227259))))

(declare-fun rulesValid!1439 (LexerInterface!3522 List!21907) Bool)

(assert (=> d!585390 (= res!858689 (rulesValid!1439 thiss!23328 rules!3198))))

(assert (=> d!585390 (= (rulesInvariant!3129 thiss!23328 rules!3198) e!1227259)))

(declare-fun b!1920040 () Bool)

(declare-datatypes ((List!21912 0))(
  ( (Nil!21830) (Cons!21830 (h!27231 String!25345) (t!178745 List!21912)) )
))
(declare-fun noDuplicateTag!1437 (LexerInterface!3522 List!21907 List!21912) Bool)

(assert (=> b!1920040 (= e!1227259 (noDuplicateTag!1437 thiss!23328 rules!3198 Nil!21830))))

(assert (= (and d!585390 res!858689) b!1920040))

(declare-fun m!2355367 () Bool)

(assert (=> d!585390 m!2355367))

(declare-fun m!2355369 () Bool)

(assert (=> b!1920040 m!2355369))

(assert (=> b!1919858 d!585390))

(declare-fun d!585392 () Bool)

(assert (=> d!585392 true))

(declare-fun lt!736293 () Bool)

(declare-fun lambda!74950 () Int)

(declare-fun forall!4607 (List!21907 Int) Bool)

(assert (=> d!585392 (= lt!736293 (forall!4607 rules!3198 lambda!74950))))

(declare-fun e!1227265 () Bool)

(assert (=> d!585392 (= lt!736293 e!1227265)))

(declare-fun res!858694 () Bool)

(assert (=> d!585392 (=> res!858694 e!1227265)))

(assert (=> d!585392 (= res!858694 (not (is-Cons!21825 rules!3198)))))

(assert (=> d!585392 (= (rulesValidInductive!1323 thiss!23328 rules!3198) lt!736293)))

(declare-fun b!1920045 () Bool)

(declare-fun e!1227264 () Bool)

(assert (=> b!1920045 (= e!1227265 e!1227264)))

(declare-fun res!858695 () Bool)

(assert (=> b!1920045 (=> (not res!858695) (not e!1227264))))

(declare-fun ruleValid!1188 (LexerInterface!3522 Rule!7618) Bool)

(assert (=> b!1920045 (= res!858695 (ruleValid!1188 thiss!23328 (h!27226 rules!3198)))))

(declare-fun b!1920046 () Bool)

(assert (=> b!1920046 (= e!1227264 (rulesValidInductive!1323 thiss!23328 (t!178700 rules!3198)))))

(assert (= (and d!585392 (not res!858694)) b!1920045))

(assert (= (and b!1920045 res!858695) b!1920046))

(declare-fun m!2355371 () Bool)

(assert (=> d!585392 m!2355371))

(declare-fun m!2355373 () Bool)

(assert (=> b!1920045 m!2355373))

(declare-fun m!2355375 () Bool)

(assert (=> b!1920046 m!2355375))

(assert (=> b!1919869 d!585392))

(declare-fun bs!414353 () Bool)

(declare-fun b!1920104 () Bool)

(assert (= bs!414353 (and b!1920104 b!1919852)))

(declare-fun lambda!74956 () Int)

(assert (=> bs!414353 (not (= lambda!74956 lambda!74938))))

(declare-fun bs!414354 () Bool)

(assert (= bs!414354 (and b!1920104 d!585374)))

(assert (=> bs!414354 (= lambda!74956 lambda!74944)))

(declare-fun b!1920112 () Bool)

(declare-fun e!1227301 () Bool)

(assert (=> b!1920112 (= e!1227301 true)))

(declare-fun b!1920111 () Bool)

(declare-fun e!1227300 () Bool)

(assert (=> b!1920111 (= e!1227300 e!1227301)))

(declare-fun b!1920110 () Bool)

(declare-fun e!1227299 () Bool)

(assert (=> b!1920110 (= e!1227299 e!1227300)))

(assert (=> b!1920104 e!1227299))

(assert (= b!1920111 b!1920112))

(assert (= b!1920110 b!1920111))

(assert (= (and b!1920104 (is-Cons!21825 rules!3198)) b!1920110))

(assert (=> b!1920112 (< (dynLambda!10540 order!13661 (toValue!5538 (transformation!3909 (h!27226 rules!3198)))) (dynLambda!10541 order!13663 lambda!74956))))

(assert (=> b!1920112 (< (dynLambda!10542 order!13665 (toChars!5397 (transformation!3909 (h!27226 rules!3198)))) (dynLambda!10541 order!13663 lambda!74956))))

(assert (=> b!1920104 true))

(declare-fun b!1920102 () Bool)

(declare-fun e!1227296 () List!21905)

(declare-fun charsOf!2459 (Token!7370) BalanceConc!14380)

(assert (=> b!1920102 (= e!1227296 (list!8835 (charsOf!2459 (h!27225 tokens!598))))))

(declare-fun bm!117989 () Bool)

(declare-fun call!117995 () List!21905)

(declare-fun call!117996 () List!21905)

(assert (=> bm!117989 (= call!117995 call!117996)))

(declare-fun b!1920103 () Bool)

(declare-fun e!1227297 () List!21905)

(declare-fun call!117994 () List!21905)

(declare-fun lt!736329 () List!21905)

(declare-fun ++!5858 (List!21905 List!21905) List!21905)

(assert (=> b!1920103 (= e!1227297 (++!5858 call!117994 lt!736329))))

(declare-fun call!117997 () BalanceConc!14380)

(declare-fun call!117998 () BalanceConc!14380)

(declare-fun c!312187 () Bool)

(declare-fun bm!117990 () Bool)

(assert (=> bm!117990 (= call!117996 (list!8835 (ite c!312187 call!117997 call!117998)))))

(declare-fun e!1227298 () List!21905)

(declare-fun e!1227295 () List!21905)

(assert (=> b!1920104 (= e!1227298 e!1227295)))

(declare-datatypes ((Unit!36176 0))(
  ( (Unit!36177) )
))
(declare-fun lt!736327 () Unit!36176)

(declare-fun forallContained!699 (List!21906 Int Token!7370) Unit!36176)

(assert (=> b!1920104 (= lt!736327 (forallContained!699 tokens!598 lambda!74956 (h!27225 tokens!598)))))

(assert (=> b!1920104 (= lt!736329 (printWithSeparatorTokenWhenNeededList!561 thiss!23328 rules!3198 (t!178699 tokens!598) separatorToken!354))))

(declare-datatypes ((tuple2!20472 0))(
  ( (tuple2!20473 (_1!11705 Token!7370) (_2!11705 List!21905)) )
))
(declare-datatypes ((Option!4511 0))(
  ( (None!4510) (Some!4510 (v!26583 tuple2!20472)) )
))
(declare-fun lt!736324 () Option!4511)

(declare-fun maxPrefix!1962 (LexerInterface!3522 List!21907 List!21905) Option!4511)

(assert (=> b!1920104 (= lt!736324 (maxPrefix!1962 thiss!23328 rules!3198 (++!5858 (list!8835 (charsOf!2459 (h!27225 tokens!598))) lt!736329)))))

(assert (=> b!1920104 (= c!312187 (and (is-Some!4510 lt!736324) (= (_1!11705 (v!26583 lt!736324)) (h!27225 tokens!598))))))

(declare-fun b!1920105 () Bool)

(assert (=> b!1920105 (= e!1227296 call!117996)))

(declare-fun d!585394 () Bool)

(declare-fun c!312188 () Bool)

(assert (=> d!585394 (= c!312188 (is-Cons!21824 tokens!598))))

(assert (=> d!585394 (= (printWithSeparatorTokenWhenNeededList!561 thiss!23328 rules!3198 tokens!598 separatorToken!354) e!1227298)))

(declare-fun b!1920106 () Bool)

(assert (=> b!1920106 (= e!1227297 Nil!21823)))

(declare-fun printTailRec!1009 (LexerInterface!3522 BalanceConc!14384 Int BalanceConc!14380) BalanceConc!14380)

(assert (=> b!1920106 (= (print!1502 thiss!23328 (singletonSeq!1904 (h!27225 tokens!598))) (printTailRec!1009 thiss!23328 (singletonSeq!1904 (h!27225 tokens!598)) 0 (BalanceConc!14381 Empty!7282)))))

(declare-fun lt!736326 () Unit!36176)

(declare-fun Unit!36178 () Unit!36176)

(assert (=> b!1920106 (= lt!736326 Unit!36178)))

(declare-fun lt!736328 () Unit!36176)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!731 (LexerInterface!3522 List!21907 List!21905 List!21905) Unit!36176)

(assert (=> b!1920106 (= lt!736328 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!731 thiss!23328 rules!3198 call!117995 lt!736329))))

(assert (=> b!1920106 false))

(declare-fun lt!736325 () Unit!36176)

(declare-fun Unit!36179 () Unit!36176)

(assert (=> b!1920106 (= lt!736325 Unit!36179)))

(declare-fun bm!117991 () Bool)

(assert (=> bm!117991 (= call!117998 call!117997)))

(declare-fun bm!117992 () Bool)

(declare-fun c!312185 () Bool)

(assert (=> bm!117992 (= call!117997 (charsOf!2459 (ite c!312187 (h!27225 tokens!598) (ite c!312185 separatorToken!354 (h!27225 tokens!598)))))))

(declare-fun b!1920107 () Bool)

(assert (=> b!1920107 (= e!1227295 call!117994)))

(declare-fun b!1920108 () Bool)

(assert (=> b!1920108 (= c!312185 (and (is-Some!4510 lt!736324) (not (= (_1!11705 (v!26583 lt!736324)) (h!27225 tokens!598)))))))

(assert (=> b!1920108 (= e!1227295 e!1227297)))

(declare-fun b!1920109 () Bool)

(assert (=> b!1920109 (= e!1227298 Nil!21823)))

(declare-fun bm!117993 () Bool)

(declare-fun c!312186 () Bool)

(assert (=> bm!117993 (= c!312186 c!312187)))

(assert (=> bm!117993 (= call!117994 (++!5858 e!1227296 (ite c!312187 lt!736329 call!117995)))))

(assert (= (and d!585394 c!312188) b!1920104))

(assert (= (and d!585394 (not c!312188)) b!1920109))

(assert (= (and b!1920104 c!312187) b!1920107))

(assert (= (and b!1920104 (not c!312187)) b!1920108))

(assert (= (and b!1920108 c!312185) b!1920103))

(assert (= (and b!1920108 (not c!312185)) b!1920106))

(assert (= (or b!1920103 b!1920106) bm!117991))

(assert (= (or b!1920103 b!1920106) bm!117989))

(assert (= (or b!1920107 bm!117991) bm!117992))

(assert (= (or b!1920107 bm!117989) bm!117990))

(assert (= (or b!1920107 b!1920103) bm!117993))

(assert (= (and bm!117993 c!312186) b!1920105))

(assert (= (and bm!117993 (not c!312186)) b!1920102))

(declare-fun m!2355405 () Bool)

(assert (=> b!1920104 m!2355405))

(declare-fun m!2355407 () Bool)

(assert (=> b!1920104 m!2355407))

(declare-fun m!2355409 () Bool)

(assert (=> b!1920104 m!2355409))

(assert (=> b!1920104 m!2355405))

(declare-fun m!2355411 () Bool)

(assert (=> b!1920104 m!2355411))

(assert (=> b!1920104 m!2355407))

(declare-fun m!2355413 () Bool)

(assert (=> b!1920104 m!2355413))

(declare-fun m!2355415 () Bool)

(assert (=> b!1920104 m!2355415))

(assert (=> b!1920104 m!2355409))

(declare-fun m!2355417 () Bool)

(assert (=> bm!117990 m!2355417))

(declare-fun m!2355419 () Bool)

(assert (=> b!1920106 m!2355419))

(assert (=> b!1920106 m!2355419))

(declare-fun m!2355421 () Bool)

(assert (=> b!1920106 m!2355421))

(assert (=> b!1920106 m!2355419))

(declare-fun m!2355423 () Bool)

(assert (=> b!1920106 m!2355423))

(declare-fun m!2355425 () Bool)

(assert (=> b!1920106 m!2355425))

(assert (=> b!1920102 m!2355409))

(assert (=> b!1920102 m!2355409))

(assert (=> b!1920102 m!2355405))

(declare-fun m!2355427 () Bool)

(assert (=> b!1920103 m!2355427))

(declare-fun m!2355429 () Bool)

(assert (=> bm!117993 m!2355429))

(declare-fun m!2355431 () Bool)

(assert (=> bm!117992 m!2355431))

(assert (=> b!1919869 d!585394))

(declare-fun d!585398 () Bool)

(assert (=> d!585398 (= (inv!28898 (tag!4349 (h!27226 rules!3198))) (= (mod (str.len (value!122998 (tag!4349 (h!27226 rules!3198)))) 2) 0))))

(assert (=> b!1919859 d!585398))

(declare-fun d!585400 () Bool)

(declare-fun res!858696 () Bool)

(declare-fun e!1227302 () Bool)

(assert (=> d!585400 (=> (not res!858696) (not e!1227302))))

(assert (=> d!585400 (= res!858696 (semiInverseModEq!1552 (toChars!5397 (transformation!3909 (h!27226 rules!3198))) (toValue!5538 (transformation!3909 (h!27226 rules!3198)))))))

(assert (=> d!585400 (= (inv!28901 (transformation!3909 (h!27226 rules!3198))) e!1227302)))

(declare-fun b!1920113 () Bool)

(assert (=> b!1920113 (= e!1227302 (equivClasses!1479 (toChars!5397 (transformation!3909 (h!27226 rules!3198))) (toValue!5538 (transformation!3909 (h!27226 rules!3198)))))))

(assert (= (and d!585400 res!858696) b!1920113))

(declare-fun m!2355433 () Bool)

(assert (=> d!585400 m!2355433))

(declare-fun m!2355435 () Bool)

(assert (=> b!1920113 m!2355435))

(assert (=> b!1919859 d!585400))

(declare-fun d!585402 () Bool)

(assert (=> d!585402 (= (inv!28898 (tag!4349 (rule!6112 (h!27225 tokens!598)))) (= (mod (str.len (value!122998 (tag!4349 (rule!6112 (h!27225 tokens!598))))) 2) 0))))

(assert (=> b!1919870 d!585402))

(declare-fun d!585404 () Bool)

(declare-fun res!858697 () Bool)

(declare-fun e!1227303 () Bool)

(assert (=> d!585404 (=> (not res!858697) (not e!1227303))))

(assert (=> d!585404 (= res!858697 (semiInverseModEq!1552 (toChars!5397 (transformation!3909 (rule!6112 (h!27225 tokens!598)))) (toValue!5538 (transformation!3909 (rule!6112 (h!27225 tokens!598))))))))

(assert (=> d!585404 (= (inv!28901 (transformation!3909 (rule!6112 (h!27225 tokens!598)))) e!1227303)))

(declare-fun b!1920114 () Bool)

(assert (=> b!1920114 (= e!1227303 (equivClasses!1479 (toChars!5397 (transformation!3909 (rule!6112 (h!27225 tokens!598)))) (toValue!5538 (transformation!3909 (rule!6112 (h!27225 tokens!598))))))))

(assert (= (and d!585404 res!858697) b!1920114))

(declare-fun m!2355437 () Bool)

(assert (=> d!585404 m!2355437))

(declare-fun m!2355439 () Bool)

(assert (=> b!1920114 m!2355439))

(assert (=> b!1919870 d!585404))

(declare-fun b!1920119 () Bool)

(declare-fun e!1227306 () Bool)

(declare-fun tp_is_empty!9111 () Bool)

(declare-fun tp!548563 () Bool)

(assert (=> b!1920119 (= e!1227306 (and tp_is_empty!9111 tp!548563))))

(assert (=> b!1919851 (= tp!548511 e!1227306)))

(assert (= (and b!1919851 (is-Cons!21823 (originalCharacters!4716 separatorToken!354))) b!1920119))

(declare-fun b!1920120 () Bool)

(declare-fun e!1227307 () Bool)

(declare-fun tp!548564 () Bool)

(assert (=> b!1920120 (= e!1227307 (and tp_is_empty!9111 tp!548564))))

(assert (=> b!1919862 (= tp!548516 e!1227307)))

(assert (= (and b!1919862 (is-Cons!21823 (originalCharacters!4716 (h!27225 tokens!598)))) b!1920120))

(declare-fun b!1920132 () Bool)

(declare-fun e!1227310 () Bool)

(declare-fun tp!548578 () Bool)

(declare-fun tp!548577 () Bool)

(assert (=> b!1920132 (= e!1227310 (and tp!548578 tp!548577))))

(declare-fun b!1920131 () Bool)

(assert (=> b!1920131 (= e!1227310 tp_is_empty!9111)))

(assert (=> b!1919868 (= tp!548505 e!1227310)))

(declare-fun b!1920133 () Bool)

(declare-fun tp!548579 () Bool)

(assert (=> b!1920133 (= e!1227310 tp!548579)))

(declare-fun b!1920134 () Bool)

(declare-fun tp!548576 () Bool)

(declare-fun tp!548575 () Bool)

(assert (=> b!1920134 (= e!1227310 (and tp!548576 tp!548575))))

(assert (= (and b!1919868 (is-ElementMatch!5334 (regex!3909 (rule!6112 separatorToken!354)))) b!1920131))

(assert (= (and b!1919868 (is-Concat!9380 (regex!3909 (rule!6112 separatorToken!354)))) b!1920132))

(assert (= (and b!1919868 (is-Star!5334 (regex!3909 (rule!6112 separatorToken!354)))) b!1920133))

(assert (= (and b!1919868 (is-Union!5334 (regex!3909 (rule!6112 separatorToken!354)))) b!1920134))

(declare-fun b!1920148 () Bool)

(declare-fun b_free!54829 () Bool)

(declare-fun b_next!55533 () Bool)

(assert (=> b!1920148 (= b_free!54829 (not b_next!55533))))

(declare-fun tp!548594 () Bool)

(declare-fun b_and!150047 () Bool)

(assert (=> b!1920148 (= tp!548594 b_and!150047)))

(declare-fun b_free!54831 () Bool)

(declare-fun b_next!55535 () Bool)

(assert (=> b!1920148 (= b_free!54831 (not b_next!55535))))

(declare-fun t!178725 () Bool)

(declare-fun tb!117285 () Bool)

(assert (=> (and b!1920148 (= (toChars!5397 (transformation!3909 (rule!6112 (h!27225 (t!178699 tokens!598))))) (toChars!5397 (transformation!3909 (rule!6112 (h!27225 tokens!598))))) t!178725) tb!117285))

(declare-fun result!141724 () Bool)

(assert (= result!141724 result!141704))

(assert (=> b!1919961 t!178725))

(declare-fun t!178727 () Bool)

(declare-fun tb!117287 () Bool)

(assert (=> (and b!1920148 (= (toChars!5397 (transformation!3909 (rule!6112 (h!27225 (t!178699 tokens!598))))) (toChars!5397 (transformation!3909 (rule!6112 separatorToken!354)))) t!178727) tb!117287))

(declare-fun result!141726 () Bool)

(assert (= result!141726 result!141712))

(assert (=> b!1919970 t!178727))

(declare-fun b_and!150049 () Bool)

(declare-fun tp!548592 () Bool)

(assert (=> b!1920148 (= tp!548592 (and (=> t!178725 result!141724) (=> t!178727 result!141726) b_and!150049))))

(declare-fun b!1920145 () Bool)

(declare-fun e!1227328 () Bool)

(declare-fun e!1227326 () Bool)

(declare-fun tp!548593 () Bool)

(assert (=> b!1920145 (= e!1227328 (and (inv!28902 (h!27225 (t!178699 tokens!598))) e!1227326 tp!548593))))

(declare-fun e!1227323 () Bool)

(assert (=> b!1920148 (= e!1227323 (and tp!548594 tp!548592))))

(assert (=> b!1919863 (= tp!548512 e!1227328)))

(declare-fun e!1227324 () Bool)

(declare-fun b!1920147 () Bool)

(declare-fun tp!548590 () Bool)

(assert (=> b!1920147 (= e!1227324 (and tp!548590 (inv!28898 (tag!4349 (rule!6112 (h!27225 (t!178699 tokens!598))))) (inv!28901 (transformation!3909 (rule!6112 (h!27225 (t!178699 tokens!598))))) e!1227323))))

(declare-fun b!1920146 () Bool)

(declare-fun tp!548591 () Bool)

(assert (=> b!1920146 (= e!1227326 (and (inv!21 (value!122999 (h!27225 (t!178699 tokens!598)))) e!1227324 tp!548591))))

(assert (= b!1920147 b!1920148))

(assert (= b!1920146 b!1920147))

(assert (= b!1920145 b!1920146))

(assert (= (and b!1919863 (is-Cons!21824 (t!178699 tokens!598))) b!1920145))

(declare-fun m!2355441 () Bool)

(assert (=> b!1920145 m!2355441))

(declare-fun m!2355443 () Bool)

(assert (=> b!1920147 m!2355443))

(declare-fun m!2355445 () Bool)

(assert (=> b!1920147 m!2355445))

(declare-fun m!2355447 () Bool)

(assert (=> b!1920146 m!2355447))

(declare-fun b!1920159 () Bool)

(declare-fun b_free!54833 () Bool)

(declare-fun b_next!55537 () Bool)

(assert (=> b!1920159 (= b_free!54833 (not b_next!55537))))

(declare-fun tp!548606 () Bool)

(declare-fun b_and!150051 () Bool)

(assert (=> b!1920159 (= tp!548606 b_and!150051)))

(declare-fun b_free!54835 () Bool)

(declare-fun b_next!55539 () Bool)

(assert (=> b!1920159 (= b_free!54835 (not b_next!55539))))

(declare-fun t!178729 () Bool)

(declare-fun tb!117289 () Bool)

(assert (=> (and b!1920159 (= (toChars!5397 (transformation!3909 (h!27226 (t!178700 rules!3198)))) (toChars!5397 (transformation!3909 (rule!6112 (h!27225 tokens!598))))) t!178729) tb!117289))

(declare-fun result!141730 () Bool)

(assert (= result!141730 result!141704))

(assert (=> b!1919961 t!178729))

(declare-fun tb!117291 () Bool)

(declare-fun t!178731 () Bool)

(assert (=> (and b!1920159 (= (toChars!5397 (transformation!3909 (h!27226 (t!178700 rules!3198)))) (toChars!5397 (transformation!3909 (rule!6112 separatorToken!354)))) t!178731) tb!117291))

(declare-fun result!141732 () Bool)

(assert (= result!141732 result!141712))

(assert (=> b!1919970 t!178731))

(declare-fun tp!548605 () Bool)

(declare-fun b_and!150053 () Bool)

(assert (=> b!1920159 (= tp!548605 (and (=> t!178729 result!141730) (=> t!178731 result!141732) b_and!150053))))

(declare-fun e!1227340 () Bool)

(assert (=> b!1920159 (= e!1227340 (and tp!548606 tp!548605))))

(declare-fun tp!548604 () Bool)

(declare-fun b!1920158 () Bool)

(declare-fun e!1227338 () Bool)

(assert (=> b!1920158 (= e!1227338 (and tp!548604 (inv!28898 (tag!4349 (h!27226 (t!178700 rules!3198)))) (inv!28901 (transformation!3909 (h!27226 (t!178700 rules!3198)))) e!1227340))))

(declare-fun b!1920157 () Bool)

(declare-fun e!1227339 () Bool)

(declare-fun tp!548603 () Bool)

(assert (=> b!1920157 (= e!1227339 (and e!1227338 tp!548603))))

(assert (=> b!1919864 (= tp!548510 e!1227339)))

(assert (= b!1920158 b!1920159))

(assert (= b!1920157 b!1920158))

(assert (= (and b!1919864 (is-Cons!21825 (t!178700 rules!3198))) b!1920157))

(declare-fun m!2355449 () Bool)

(assert (=> b!1920158 m!2355449))

(declare-fun m!2355451 () Bool)

(assert (=> b!1920158 m!2355451))

(declare-fun b!1920161 () Bool)

(declare-fun e!1227341 () Bool)

(declare-fun tp!548610 () Bool)

(declare-fun tp!548609 () Bool)

(assert (=> b!1920161 (= e!1227341 (and tp!548610 tp!548609))))

(declare-fun b!1920160 () Bool)

(assert (=> b!1920160 (= e!1227341 tp_is_empty!9111)))

(assert (=> b!1919859 (= tp!548513 e!1227341)))

(declare-fun b!1920162 () Bool)

(declare-fun tp!548611 () Bool)

(assert (=> b!1920162 (= e!1227341 tp!548611)))

(declare-fun b!1920163 () Bool)

(declare-fun tp!548608 () Bool)

(declare-fun tp!548607 () Bool)

(assert (=> b!1920163 (= e!1227341 (and tp!548608 tp!548607))))

(assert (= (and b!1919859 (is-ElementMatch!5334 (regex!3909 (h!27226 rules!3198)))) b!1920160))

(assert (= (and b!1919859 (is-Concat!9380 (regex!3909 (h!27226 rules!3198)))) b!1920161))

(assert (= (and b!1919859 (is-Star!5334 (regex!3909 (h!27226 rules!3198)))) b!1920162))

(assert (= (and b!1919859 (is-Union!5334 (regex!3909 (h!27226 rules!3198)))) b!1920163))

(declare-fun b!1920165 () Bool)

(declare-fun e!1227342 () Bool)

(declare-fun tp!548615 () Bool)

(declare-fun tp!548614 () Bool)

(assert (=> b!1920165 (= e!1227342 (and tp!548615 tp!548614))))

(declare-fun b!1920164 () Bool)

(assert (=> b!1920164 (= e!1227342 tp_is_empty!9111)))

(assert (=> b!1919870 (= tp!548509 e!1227342)))

(declare-fun b!1920166 () Bool)

(declare-fun tp!548616 () Bool)

(assert (=> b!1920166 (= e!1227342 tp!548616)))

(declare-fun b!1920167 () Bool)

(declare-fun tp!548613 () Bool)

(declare-fun tp!548612 () Bool)

(assert (=> b!1920167 (= e!1227342 (and tp!548613 tp!548612))))

(assert (= (and b!1919870 (is-ElementMatch!5334 (regex!3909 (rule!6112 (h!27225 tokens!598))))) b!1920164))

(assert (= (and b!1919870 (is-Concat!9380 (regex!3909 (rule!6112 (h!27225 tokens!598))))) b!1920165))

(assert (= (and b!1919870 (is-Star!5334 (regex!3909 (rule!6112 (h!27225 tokens!598))))) b!1920166))

(assert (= (and b!1919870 (is-Union!5334 (regex!3909 (rule!6112 (h!27225 tokens!598))))) b!1920167))

(declare-fun b_lambda!63431 () Bool)

(assert (= b_lambda!63425 (or b!1919852 b_lambda!63431)))

(declare-fun bs!414355 () Bool)

(declare-fun d!585406 () Bool)

(assert (= bs!414355 (and d!585406 b!1919852)))

(assert (=> bs!414355 (= (dynLambda!10538 lambda!74938 (h!27225 tokens!598)) (not (isSeparator!3909 (rule!6112 (h!27225 tokens!598)))))))

(assert (=> b!1919955 d!585406))

(declare-fun b_lambda!63433 () Bool)

(assert (= b_lambda!63427 (or (and b!1920148 b_free!54831 (= (toChars!5397 (transformation!3909 (rule!6112 (h!27225 (t!178699 tokens!598))))) (toChars!5397 (transformation!3909 (rule!6112 (h!27225 tokens!598)))))) (and b!1919857 b_free!54807) (and b!1919867 b_free!54811 (= (toChars!5397 (transformation!3909 (h!27226 rules!3198))) (toChars!5397 (transformation!3909 (rule!6112 (h!27225 tokens!598)))))) (and b!1919860 b_free!54815 (= (toChars!5397 (transformation!3909 (rule!6112 separatorToken!354))) (toChars!5397 (transformation!3909 (rule!6112 (h!27225 tokens!598)))))) (and b!1920159 b_free!54835 (= (toChars!5397 (transformation!3909 (h!27226 (t!178700 rules!3198)))) (toChars!5397 (transformation!3909 (rule!6112 (h!27225 tokens!598)))))) b_lambda!63433)))

(declare-fun b_lambda!63435 () Bool)

(assert (= b_lambda!63429 (or (and b!1920148 b_free!54831 (= (toChars!5397 (transformation!3909 (rule!6112 (h!27225 (t!178699 tokens!598))))) (toChars!5397 (transformation!3909 (rule!6112 separatorToken!354))))) (and b!1919857 b_free!54807 (= (toChars!5397 (transformation!3909 (rule!6112 (h!27225 tokens!598)))) (toChars!5397 (transformation!3909 (rule!6112 separatorToken!354))))) (and b!1919867 b_free!54811 (= (toChars!5397 (transformation!3909 (h!27226 rules!3198))) (toChars!5397 (transformation!3909 (rule!6112 separatorToken!354))))) (and b!1920159 b_free!54835 (= (toChars!5397 (transformation!3909 (h!27226 (t!178700 rules!3198)))) (toChars!5397 (transformation!3909 (rule!6112 separatorToken!354))))) (and b!1919860 b_free!54815) b_lambda!63435)))

(push 1)

(assert (not b!1920114))

(assert (not d!585382))

(assert (not b!1919946))

(assert (not b!1920033))

(assert (not b!1920134))

(assert (not b!1919979))

(assert (not b!1920103))

(assert (not b!1920146))

(assert (not b!1920167))

(assert (not b_next!55519))

(assert b_and!150051)

(assert (not b!1919973))

(assert (not b!1919970))

(assert (not b_next!55517))

(assert (not b!1920165))

(assert (not b!1919980))

(assert b_and!150053)

(assert b_and!150011)

(assert (not b!1920119))

(assert (not b_next!55539))

(assert (not b!1920102))

(assert (not tb!117279))

(assert b_and!150015)

(assert (not b_next!55535))

(assert (not b!1919950))

(assert b_and!150043)

(assert b_and!150019)

(assert (not b_next!55513))

(assert (not b_next!55515))

(assert (not b!1920046))

(assert (not b!1919948))

(assert (not b!1920040))

(assert (not b!1920007))

(assert (not b!1919941))

(assert (not b!1920133))

(assert (not b!1920132))

(assert (not tb!117273))

(assert b_and!150047)

(assert (not d!585360))

(assert (not b_next!55537))

(assert (not b_lambda!63435))

(assert (not b!1920145))

(assert (not d!585388))

(assert (not d!585400))

(assert (not bm!117990))

(assert b_and!150045)

(assert (not b!1920162))

(assert (not b!1920110))

(assert (not b!1920104))

(assert (not d!585374))

(assert (not b!1920032))

(assert (not b!1919943))

(assert (not b!1920045))

(assert (not b!1919962))

(assert b_and!150041)

(assert (not b!1920157))

(assert (not b_next!55511))

(assert (not b_lambda!63433))

(assert (not b!1919969))

(assert (not b!1920017))

(assert tp_is_empty!9111)

(assert (not b!1920037))

(assert (not b!1920034))

(assert (not b!1920166))

(assert (not b_next!55509))

(assert (not b_lambda!63431))

(assert (not b!1920147))

(assert (not b!1920120))

(assert (not b!1919971))

(assert (not b!1919956))

(assert (not b!1920163))

(assert (not bm!117992))

(assert (not d!585392))

(assert (not bm!117993))

(assert (not d!585390))

(assert (not b!1920158))

(assert (not d!585404))

(assert (not b!1920106))

(assert (not d!585362))

(assert (not b!1920161))

(assert (not b!1919945))

(assert (not b!1920113))

(assert b_and!150049)

(assert (not b!1920008))

(assert (not b_next!55533))

(assert (not b!1919961))

(check-sat)

(pop 1)

(push 1)

(assert b_and!150045)

(assert (not b_next!55509))

(assert b_and!150049)

(assert (not b_next!55533))

(assert (not b_next!55519))

(assert b_and!150051)

(assert (not b_next!55517))

(assert b_and!150053)

(assert b_and!150011)

(assert (not b_next!55539))

(assert b_and!150015)

(assert (not b_next!55535))

(assert b_and!150043)

(assert b_and!150019)

(assert (not b_next!55513))

(assert (not b_next!55515))

(assert (not b_next!55537))

(assert b_and!150047)

(assert b_and!150041)

(assert (not b_next!55511))

(check-sat)

(pop 1)

