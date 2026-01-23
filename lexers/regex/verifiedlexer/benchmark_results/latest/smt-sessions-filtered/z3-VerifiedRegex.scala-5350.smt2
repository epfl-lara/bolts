; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!273162 () Bool)

(assert start!273162)

(declare-fun b!2816764 () Bool)

(declare-fun b_free!80293 () Bool)

(declare-fun b_next!80997 () Bool)

(assert (=> b!2816764 (= b_free!80293 (not b_next!80997))))

(declare-fun tp!899154 () Bool)

(declare-fun b_and!205583 () Bool)

(assert (=> b!2816764 (= tp!899154 b_and!205583)))

(declare-fun b_free!80295 () Bool)

(declare-fun b_next!80999 () Bool)

(assert (=> b!2816764 (= b_free!80295 (not b_next!80999))))

(declare-fun tp!899159 () Bool)

(declare-fun b_and!205585 () Bool)

(assert (=> b!2816764 (= tp!899159 b_and!205585)))

(declare-fun b!2816762 () Bool)

(declare-fun b_free!80297 () Bool)

(declare-fun b_next!81001 () Bool)

(assert (=> b!2816762 (= b_free!80297 (not b_next!81001))))

(declare-fun tp!899155 () Bool)

(declare-fun b_and!205587 () Bool)

(assert (=> b!2816762 (= tp!899155 b_and!205587)))

(declare-fun b_free!80299 () Bool)

(declare-fun b_next!81003 () Bool)

(assert (=> b!2816762 (= b_free!80299 (not b_next!81003))))

(declare-fun tp!899153 () Bool)

(declare-fun b_and!205589 () Bool)

(assert (=> b!2816762 (= tp!899153 b_and!205589)))

(declare-fun b!2816759 () Bool)

(declare-fun res!1172177 () Bool)

(declare-fun e!1781273 () Bool)

(assert (=> b!2816759 (=> (not res!1172177) (not e!1781273))))

(declare-datatypes ((LexerInterface!4510 0))(
  ( (LexerInterfaceExt!4507 (__x!21971 Int)) (Lexer!4508) )
))
(declare-fun thiss!27755 () LexerInterface!4510)

(declare-datatypes ((List!33062 0))(
  ( (Nil!32938) (Cons!32938 (h!38358 (_ BitVec 16)) (t!230111 List!33062)) )
))
(declare-datatypes ((TokenValue!5149 0))(
  ( (FloatLiteralValue!10298 (text!36488 List!33062)) (TokenValueExt!5148 (__x!21972 Int)) (Broken!25745 (value!158485 List!33062)) (Object!5272) (End!5149) (Def!5149) (Underscore!5149) (Match!5149) (Else!5149) (Error!5149) (Case!5149) (If!5149) (Extends!5149) (Abstract!5149) (Class!5149) (Val!5149) (DelimiterValue!10298 (del!5209 List!33062)) (KeywordValue!5155 (value!158486 List!33062)) (CommentValue!10298 (value!158487 List!33062)) (WhitespaceValue!10298 (value!158488 List!33062)) (IndentationValue!5149 (value!158489 List!33062)) (String!36200) (Int32!5149) (Broken!25746 (value!158490 List!33062)) (Boolean!5150) (Unit!46923) (OperatorValue!5152 (op!5209 List!33062)) (IdentifierValue!10298 (value!158491 List!33062)) (IdentifierValue!10299 (value!158492 List!33062)) (WhitespaceValue!10299 (value!158493 List!33062)) (True!10298) (False!10298) (Broken!25747 (value!158494 List!33062)) (Broken!25748 (value!158495 List!33062)) (True!10299) (RightBrace!5149) (RightBracket!5149) (Colon!5149) (Null!5149) (Comma!5149) (LeftBracket!5149) (False!10299) (LeftBrace!5149) (ImaginaryLiteralValue!5149 (text!36489 List!33062)) (StringLiteralValue!15447 (value!158496 List!33062)) (EOFValue!5149 (value!158497 List!33062)) (IdentValue!5149 (value!158498 List!33062)) (DelimiterValue!10299 (value!158499 List!33062)) (DedentValue!5149 (value!158500 List!33062)) (NewLineValue!5149 (value!158501 List!33062)) (IntegerValue!15447 (value!158502 (_ BitVec 32)) (text!36490 List!33062)) (IntegerValue!15448 (value!158503 Int) (text!36491 List!33062)) (Times!5149) (Or!5149) (Equal!5149) (Minus!5149) (Broken!25749 (value!158504 List!33062)) (And!5149) (Div!5149) (LessEqual!5149) (Mod!5149) (Concat!13458) (Not!5149) (Plus!5149) (SpaceValue!5149 (value!158505 List!33062)) (IntegerValue!15449 (value!158506 Int) (text!36492 List!33062)) (StringLiteralValue!15448 (text!36493 List!33062)) (FloatLiteralValue!10299 (text!36494 List!33062)) (BytesLiteralValue!5149 (value!158507 List!33062)) (CommentValue!10299 (value!158508 List!33062)) (StringLiteralValue!15449 (value!158509 List!33062)) (ErrorTokenValue!5149 (msg!5210 List!33062)) )
))
(declare-datatypes ((C!16800 0))(
  ( (C!16801 (val!10380 Int)) )
))
(declare-datatypes ((Regex!8309 0))(
  ( (ElementMatch!8309 (c!456736 C!16800)) (Concat!13459 (regOne!17130 Regex!8309) (regTwo!17130 Regex!8309)) (EmptyExpr!8309) (Star!8309 (reg!8638 Regex!8309)) (EmptyLang!8309) (Union!8309 (regOne!17131 Regex!8309) (regTwo!17131 Regex!8309)) )
))
(declare-datatypes ((String!36201 0))(
  ( (String!36202 (value!158510 String)) )
))
(declare-datatypes ((List!33063 0))(
  ( (Nil!32939) (Cons!32939 (h!38359 C!16800) (t!230112 List!33063)) )
))
(declare-datatypes ((IArray!20449 0))(
  ( (IArray!20450 (innerList!10282 List!33063)) )
))
(declare-datatypes ((Conc!10222 0))(
  ( (Node!10222 (left!24884 Conc!10222) (right!25214 Conc!10222) (csize!20674 Int) (cheight!10433 Int)) (Leaf!15573 (xs!13334 IArray!20449) (csize!20675 Int)) (Empty!10222) )
))
(declare-datatypes ((BalanceConc!20082 0))(
  ( (BalanceConc!20083 (c!456737 Conc!10222)) )
))
(declare-datatypes ((TokenValueInjection!9726 0))(
  ( (TokenValueInjection!9727 (toValue!6929 Int) (toChars!6788 Int)) )
))
(declare-datatypes ((Rule!9638 0))(
  ( (Rule!9639 (regex!4919 Regex!8309) (tag!5423 String!36201) (isSeparator!4919 Bool) (transformation!4919 TokenValueInjection!9726)) )
))
(declare-datatypes ((Token!9240 0))(
  ( (Token!9241 (value!158511 TokenValue!5149) (rule!7347 Rule!9638) (size!25679 Int) (originalCharacters!5651 List!33063)) )
))
(declare-datatypes ((List!33064 0))(
  ( (Nil!32940) (Cons!32940 (h!38360 Token!9240) (t!230113 List!33064)) )
))
(declare-fun l!6581 () List!33064)

(declare-datatypes ((List!33065 0))(
  ( (Nil!32941) (Cons!32941 (h!38361 Rule!9638) (t!230114 List!33065)) )
))
(declare-fun rules!4424 () List!33065)

(declare-fun rulesProduceEachTokenIndividuallyList!1562 (LexerInterface!4510 List!33065 List!33064) Bool)

(assert (=> b!2816759 (= res!1172177 (rulesProduceEachTokenIndividuallyList!1562 thiss!27755 rules!4424 l!6581))))

(declare-fun b!2816760 () Bool)

(declare-fun res!1172176 () Bool)

(assert (=> b!2816760 (=> (not res!1172176) (not e!1781273))))

(get-info :version)

(assert (=> b!2816760 (= res!1172176 ((_ is Nil!32940) l!6581))))

(declare-fun e!1781266 () Bool)

(declare-fun tp!899160 () Bool)

(declare-fun b!2816761 () Bool)

(declare-fun e!1781267 () Bool)

(declare-fun inv!44859 (Token!9240) Bool)

(assert (=> b!2816761 (= e!1781266 (and (inv!44859 (h!38360 l!6581)) e!1781267 tp!899160))))

(declare-fun e!1781275 () Bool)

(assert (=> b!2816762 (= e!1781275 (and tp!899155 tp!899153))))

(declare-fun b!2816763 () Bool)

(declare-fun res!1172178 () Bool)

(assert (=> b!2816763 (=> (not res!1172178) (not e!1781273))))

(declare-fun rulesInvariant!3928 (LexerInterface!4510 List!33065) Bool)

(assert (=> b!2816763 (= res!1172178 (rulesInvariant!3928 thiss!27755 rules!4424))))

(declare-fun e!1781274 () Bool)

(assert (=> b!2816764 (= e!1781274 (and tp!899154 tp!899159))))

(declare-fun res!1172173 () Bool)

(assert (=> start!273162 (=> (not res!1172173) (not e!1781273))))

(assert (=> start!273162 (= res!1172173 ((_ is Lexer!4508) thiss!27755))))

(assert (=> start!273162 e!1781273))

(assert (=> start!273162 true))

(declare-fun e!1781270 () Bool)

(assert (=> start!273162 e!1781270))

(assert (=> start!273162 e!1781266))

(declare-fun tp!899156 () Bool)

(declare-fun e!1781268 () Bool)

(declare-fun b!2816765 () Bool)

(declare-fun inv!44856 (String!36201) Bool)

(declare-fun inv!44860 (TokenValueInjection!9726) Bool)

(assert (=> b!2816765 (= e!1781268 (and tp!899156 (inv!44856 (tag!5423 (h!38361 rules!4424))) (inv!44860 (transformation!4919 (h!38361 rules!4424))) e!1781274))))

(declare-fun tp!899157 () Bool)

(declare-fun b!2816766 () Bool)

(declare-fun e!1781276 () Bool)

(declare-fun inv!21 (TokenValue!5149) Bool)

(assert (=> b!2816766 (= e!1781267 (and (inv!21 (value!158511 (h!38360 l!6581))) e!1781276 tp!899157))))

(declare-fun b!2816767 () Bool)

(declare-fun tp!899152 () Bool)

(assert (=> b!2816767 (= e!1781270 (and e!1781268 tp!899152))))

(declare-fun b!2816768 () Bool)

(declare-fun res!1172174 () Bool)

(assert (=> b!2816768 (=> (not res!1172174) (not e!1781273))))

(declare-fun isEmpty!18236 (List!33065) Bool)

(assert (=> b!2816768 (= res!1172174 (not (isEmpty!18236 rules!4424)))))

(declare-fun b!2816769 () Bool)

(declare-fun res!1172175 () Bool)

(assert (=> b!2816769 (=> (not res!1172175) (not e!1781273))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!647 (LexerInterface!4510 List!33064 List!33065) Bool)

(assert (=> b!2816769 (= res!1172175 (tokensListTwoByTwoPredicateSeparableList!647 thiss!27755 l!6581 rules!4424))))

(declare-fun b!2816770 () Bool)

(assert (=> b!2816770 (= e!1781273 false)))

(declare-fun lt!1005995 () List!33064)

(declare-fun i!1730 () Int)

(declare-fun take!513 (List!33064 Int) List!33064)

(assert (=> b!2816770 (= lt!1005995 (take!513 l!6581 i!1730))))

(declare-fun b!2816771 () Bool)

(declare-fun tp!899158 () Bool)

(assert (=> b!2816771 (= e!1781276 (and tp!899158 (inv!44856 (tag!5423 (rule!7347 (h!38360 l!6581)))) (inv!44860 (transformation!4919 (rule!7347 (h!38360 l!6581)))) e!1781275))))

(assert (= (and start!273162 res!1172173) b!2816768))

(assert (= (and b!2816768 res!1172174) b!2816763))

(assert (= (and b!2816763 res!1172178) b!2816759))

(assert (= (and b!2816759 res!1172177) b!2816769))

(assert (= (and b!2816769 res!1172175) b!2816760))

(assert (= (and b!2816760 res!1172176) b!2816770))

(assert (= b!2816765 b!2816764))

(assert (= b!2816767 b!2816765))

(assert (= (and start!273162 ((_ is Cons!32941) rules!4424)) b!2816767))

(assert (= b!2816771 b!2816762))

(assert (= b!2816766 b!2816771))

(assert (= b!2816761 b!2816766))

(assert (= (and start!273162 ((_ is Cons!32940) l!6581)) b!2816761))

(declare-fun m!3247853 () Bool)

(assert (=> b!2816761 m!3247853))

(declare-fun m!3247855 () Bool)

(assert (=> b!2816771 m!3247855))

(declare-fun m!3247857 () Bool)

(assert (=> b!2816771 m!3247857))

(declare-fun m!3247859 () Bool)

(assert (=> b!2816765 m!3247859))

(declare-fun m!3247861 () Bool)

(assert (=> b!2816765 m!3247861))

(declare-fun m!3247863 () Bool)

(assert (=> b!2816768 m!3247863))

(declare-fun m!3247865 () Bool)

(assert (=> b!2816769 m!3247865))

(declare-fun m!3247867 () Bool)

(assert (=> b!2816770 m!3247867))

(declare-fun m!3247869 () Bool)

(assert (=> b!2816759 m!3247869))

(declare-fun m!3247871 () Bool)

(assert (=> b!2816766 m!3247871))

(declare-fun m!3247873 () Bool)

(assert (=> b!2816763 m!3247873))

(check-sat (not b!2816763) b_and!205587 (not b!2816770) (not b!2816761) b_and!205585 (not b!2816765) b_and!205589 (not b_next!80997) (not b_next!81003) (not b!2816766) (not b!2816769) b_and!205583 (not b!2816771) (not b!2816759) (not b!2816767) (not b_next!80999) (not b!2816768) (not b_next!81001))
(check-sat b_and!205587 b_and!205585 b_and!205583 b_and!205589 (not b_next!80997) (not b_next!81003) (not b_next!80999) (not b_next!81001))
