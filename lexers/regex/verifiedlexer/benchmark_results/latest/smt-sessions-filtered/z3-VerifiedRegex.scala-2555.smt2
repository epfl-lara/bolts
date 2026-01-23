; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137358 () Bool)

(assert start!137358)

(declare-fun b!1467908 () Bool)

(declare-fun b_free!36839 () Bool)

(declare-fun b_next!37543 () Bool)

(assert (=> b!1467908 (= b_free!36839 (not b_next!37543))))

(declare-fun tp!413373 () Bool)

(declare-fun b_and!100385 () Bool)

(assert (=> b!1467908 (= tp!413373 b_and!100385)))

(declare-fun b_free!36841 () Bool)

(declare-fun b_next!37545 () Bool)

(assert (=> b!1467908 (= b_free!36841 (not b_next!37545))))

(declare-fun tp!413369 () Bool)

(declare-fun b_and!100387 () Bool)

(assert (=> b!1467908 (= tp!413369 b_and!100387)))

(declare-fun b!1467916 () Bool)

(declare-fun b_free!36843 () Bool)

(declare-fun b_next!37547 () Bool)

(assert (=> b!1467916 (= b_free!36843 (not b_next!37547))))

(declare-fun tp!413374 () Bool)

(declare-fun b_and!100389 () Bool)

(assert (=> b!1467916 (= tp!413374 b_and!100389)))

(declare-fun b_free!36845 () Bool)

(declare-fun b_next!37549 () Bool)

(assert (=> b!1467916 (= b_free!36845 (not b_next!37549))))

(declare-fun tp!413370 () Bool)

(declare-fun b_and!100391 () Bool)

(assert (=> b!1467916 (= tp!413370 b_and!100391)))

(declare-fun e!936868 () Bool)

(assert (=> b!1467908 (= e!936868 (and tp!413373 tp!413369))))

(declare-fun e!936875 () Bool)

(declare-datatypes ((List!15365 0))(
  ( (Nil!15299) (Cons!15299 (h!20700 (_ BitVec 16)) (t!135188 List!15365)) )
))
(declare-datatypes ((TokenValue!2799 0))(
  ( (FloatLiteralValue!5598 (text!20038 List!15365)) (TokenValueExt!2798 (__x!9388 Int)) (Broken!13995 (value!86828 List!15365)) (Object!2864) (End!2799) (Def!2799) (Underscore!2799) (Match!2799) (Else!2799) (Error!2799) (Case!2799) (If!2799) (Extends!2799) (Abstract!2799) (Class!2799) (Val!2799) (DelimiterValue!5598 (del!2859 List!15365)) (KeywordValue!2805 (value!86829 List!15365)) (CommentValue!5598 (value!86830 List!15365)) (WhitespaceValue!5598 (value!86831 List!15365)) (IndentationValue!2799 (value!86832 List!15365)) (String!18250) (Int32!2799) (Broken!13996 (value!86833 List!15365)) (Boolean!2800) (Unit!25060) (OperatorValue!2802 (op!2859 List!15365)) (IdentifierValue!5598 (value!86834 List!15365)) (IdentifierValue!5599 (value!86835 List!15365)) (WhitespaceValue!5599 (value!86836 List!15365)) (True!5598) (False!5598) (Broken!13997 (value!86837 List!15365)) (Broken!13998 (value!86838 List!15365)) (True!5599) (RightBrace!2799) (RightBracket!2799) (Colon!2799) (Null!2799) (Comma!2799) (LeftBracket!2799) (False!5599) (LeftBrace!2799) (ImaginaryLiteralValue!2799 (text!20039 List!15365)) (StringLiteralValue!8397 (value!86839 List!15365)) (EOFValue!2799 (value!86840 List!15365)) (IdentValue!2799 (value!86841 List!15365)) (DelimiterValue!5599 (value!86842 List!15365)) (DedentValue!2799 (value!86843 List!15365)) (NewLineValue!2799 (value!86844 List!15365)) (IntegerValue!8397 (value!86845 (_ BitVec 32)) (text!20040 List!15365)) (IntegerValue!8398 (value!86846 Int) (text!20041 List!15365)) (Times!2799) (Or!2799) (Equal!2799) (Minus!2799) (Broken!13999 (value!86847 List!15365)) (And!2799) (Div!2799) (LessEqual!2799) (Mod!2799) (Concat!6822) (Not!2799) (Plus!2799) (SpaceValue!2799 (value!86848 List!15365)) (IntegerValue!8399 (value!86849 Int) (text!20042 List!15365)) (StringLiteralValue!8398 (text!20043 List!15365)) (FloatLiteralValue!5599 (text!20044 List!15365)) (BytesLiteralValue!2799 (value!86850 List!15365)) (CommentValue!5599 (value!86851 List!15365)) (StringLiteralValue!8399 (value!86852 List!15365)) (ErrorTokenValue!2799 (msg!2860 List!15365)) )
))
(declare-datatypes ((C!8224 0))(
  ( (C!8225 (val!4682 Int)) )
))
(declare-datatypes ((List!15366 0))(
  ( (Nil!15300) (Cons!15300 (h!20701 C!8224) (t!135189 List!15366)) )
))
(declare-datatypes ((IArray!10435 0))(
  ( (IArray!10436 (innerList!5275 List!15366)) )
))
(declare-datatypes ((Conc!5215 0))(
  ( (Node!5215 (left!12976 Conc!5215) (right!13306 Conc!5215) (csize!10660 Int) (cheight!5426 Int)) (Leaf!7771 (xs!7970 IArray!10435) (csize!10661 Int)) (Empty!5215) )
))
(declare-datatypes ((BalanceConc!10370 0))(
  ( (BalanceConc!10371 (c!241959 Conc!5215)) )
))
(declare-datatypes ((TokenValueInjection!5258 0))(
  ( (TokenValueInjection!5259 (toValue!4028 Int) (toChars!3887 Int)) )
))
(declare-datatypes ((Regex!4023 0))(
  ( (ElementMatch!4023 (c!241960 C!8224)) (Concat!6823 (regOne!8558 Regex!4023) (regTwo!8558 Regex!4023)) (EmptyExpr!4023) (Star!4023 (reg!4352 Regex!4023)) (EmptyLang!4023) (Union!4023 (regOne!8559 Regex!4023) (regTwo!8559 Regex!4023)) )
))
(declare-datatypes ((String!18251 0))(
  ( (String!18252 (value!86853 String)) )
))
(declare-datatypes ((Rule!5218 0))(
  ( (Rule!5219 (regex!2709 Regex!4023) (tag!2973 String!18251) (isSeparator!2709 Bool) (transformation!2709 TokenValueInjection!5258)) )
))
(declare-datatypes ((Token!5080 0))(
  ( (Token!5081 (value!86854 TokenValue!2799) (rule!4486 Rule!5218) (size!12481 Int) (originalCharacters!3571 List!15366)) )
))
(declare-datatypes ((List!15367 0))(
  ( (Nil!15301) (Cons!15301 (h!20702 Token!5080) (t!135190 List!15367)) )
))
(declare-fun tokens1!47 () List!15367)

(declare-fun e!936877 () Bool)

(declare-fun tp!413371 () Bool)

(declare-fun b!1467909 () Bool)

(declare-fun inv!20464 (Token!5080) Bool)

(assert (=> b!1467909 (= e!936877 (and (inv!20464 (h!20702 tokens1!47)) e!936875 tp!413371))))

(declare-fun b!1467910 () Bool)

(declare-fun res!664150 () Bool)

(declare-fun e!936867 () Bool)

(assert (=> b!1467910 (=> (not res!664150) (not e!936867))))

(declare-fun isEmpty!9595 (List!15367) Bool)

(assert (=> b!1467910 (= res!664150 (not (isEmpty!9595 (t!135190 tokens1!47))))))

(declare-fun b!1467911 () Bool)

(declare-fun tokens2!49 () List!15367)

(declare-fun tp!413367 () Bool)

(declare-fun e!936874 () Bool)

(declare-fun inv!20461 (String!18251) Bool)

(declare-fun inv!20465 (TokenValueInjection!5258) Bool)

(assert (=> b!1467911 (= e!936874 (and tp!413367 (inv!20461 (tag!2973 (rule!4486 (h!20702 tokens2!49)))) (inv!20465 (transformation!2709 (rule!4486 (h!20702 tokens2!49)))) e!936868))))

(declare-fun b!1467912 () Bool)

(declare-fun e!936870 () Bool)

(declare-fun e!936866 () Bool)

(declare-fun tp!413366 () Bool)

(assert (=> b!1467912 (= e!936870 (and (inv!20464 (h!20702 tokens2!49)) e!936866 tp!413366))))

(declare-fun b!1467913 () Bool)

(declare-fun e!936878 () Bool)

(declare-fun lt!510957 () List!15366)

(assert (=> b!1467913 (= e!936878 (= lt!510957 Nil!15300))))

(declare-fun b!1467914 () Bool)

(declare-datatypes ((LexerInterface!2365 0))(
  ( (LexerInterfaceExt!2362 (__x!9389 Int)) (Lexer!2363) )
))
(declare-fun thiss!20360 () LexerInterface!2365)

(declare-fun lt!510958 () List!15366)

(declare-fun printList!757 (LexerInterface!2365 List!15367) List!15366)

(assert (=> b!1467914 (= e!936867 (not (= (printList!757 thiss!20360 tokens1!47) lt!510958)))))

(assert (=> b!1467914 e!936878))

(declare-fun c!241958 () Bool)

(declare-fun lt!510960 () List!15367)

(get-info :version)

(assert (=> b!1467914 (= c!241958 ((_ is Cons!15301) lt!510960))))

(assert (=> b!1467914 (= lt!510957 (printList!757 thiss!20360 lt!510960))))

(declare-fun ++!4162 (List!15367 List!15367) List!15367)

(assert (=> b!1467914 (= lt!510960 (++!4162 tokens1!47 tokens2!49))))

(declare-fun lt!510959 () List!15366)

(assert (=> b!1467914 (= lt!510959 lt!510958)))

(declare-fun lt!510963 () List!15366)

(declare-fun lt!510962 () List!15366)

(declare-fun ++!4163 (List!15366 List!15366) List!15366)

(assert (=> b!1467914 (= lt!510958 (++!4163 lt!510963 lt!510962))))

(assert (=> b!1467914 (= lt!510959 (printList!757 thiss!20360 tokens1!47))))

(declare-fun list!6135 (BalanceConc!10370) List!15366)

(declare-fun charsOf!1564 (Token!5080) BalanceConc!10370)

(assert (=> b!1467914 (= lt!510963 (list!6135 (charsOf!1564 (h!20702 tokens1!47))))))

(declare-fun lt!510956 () List!15367)

(assert (=> b!1467914 (= (printList!757 thiss!20360 lt!510956) (++!4163 lt!510962 (printList!757 thiss!20360 tokens2!49)))))

(assert (=> b!1467914 (= lt!510962 (printList!757 thiss!20360 (t!135190 tokens1!47)))))

(assert (=> b!1467914 (= lt!510956 (++!4162 (t!135190 tokens1!47) tokens2!49))))

(declare-datatypes ((Unit!25061 0))(
  ( (Unit!25062) )
))
(declare-fun lt!510961 () Unit!25061)

(declare-fun lemmaPrintConcatSameAsConcatPrint!94 (LexerInterface!2365 List!15367 List!15367) Unit!25061)

(assert (=> b!1467914 (= lt!510961 (lemmaPrintConcatSameAsConcatPrint!94 thiss!20360 (t!135190 tokens1!47) tokens2!49))))

(declare-fun res!664151 () Bool)

(assert (=> start!137358 (=> (not res!664151) (not e!936867))))

(assert (=> start!137358 (= res!664151 (and ((_ is Lexer!2363) thiss!20360) ((_ is Cons!15301) tokens1!47)))))

(assert (=> start!137358 e!936867))

(assert (=> start!137358 true))

(assert (=> start!137358 e!936877))

(assert (=> start!137358 e!936870))

(declare-fun e!936876 () Bool)

(declare-fun tp!413368 () Bool)

(declare-fun b!1467907 () Bool)

(declare-fun inv!21 (TokenValue!2799) Bool)

(assert (=> b!1467907 (= e!936875 (and (inv!21 (value!86854 (h!20702 tokens1!47))) e!936876 tp!413368))))

(declare-fun b!1467915 () Bool)

(assert (=> b!1467915 (= e!936878 (= lt!510957 (++!4163 (list!6135 (charsOf!1564 (h!20702 lt!510960))) (printList!757 thiss!20360 (t!135190 lt!510960)))))))

(declare-fun e!936865 () Bool)

(assert (=> b!1467916 (= e!936865 (and tp!413374 tp!413370))))

(declare-fun b!1467917 () Bool)

(declare-fun tp!413372 () Bool)

(assert (=> b!1467917 (= e!936866 (and (inv!21 (value!86854 (h!20702 tokens2!49))) e!936874 tp!413372))))

(declare-fun tp!413365 () Bool)

(declare-fun b!1467918 () Bool)

(assert (=> b!1467918 (= e!936876 (and tp!413365 (inv!20461 (tag!2973 (rule!4486 (h!20702 tokens1!47)))) (inv!20465 (transformation!2709 (rule!4486 (h!20702 tokens1!47)))) e!936865))))

(assert (= (and start!137358 res!664151) b!1467910))

(assert (= (and b!1467910 res!664150) b!1467914))

(assert (= (and b!1467914 c!241958) b!1467915))

(assert (= (and b!1467914 (not c!241958)) b!1467913))

(assert (= b!1467918 b!1467916))

(assert (= b!1467907 b!1467918))

(assert (= b!1467909 b!1467907))

(assert (= (and start!137358 ((_ is Cons!15301) tokens1!47)) b!1467909))

(assert (= b!1467911 b!1467908))

(assert (= b!1467917 b!1467911))

(assert (= b!1467912 b!1467917))

(assert (= (and start!137358 ((_ is Cons!15301) tokens2!49)) b!1467912))

(declare-fun m!1712467 () Bool)

(assert (=> b!1467911 m!1712467))

(declare-fun m!1712469 () Bool)

(assert (=> b!1467911 m!1712469))

(declare-fun m!1712471 () Bool)

(assert (=> b!1467914 m!1712471))

(declare-fun m!1712473 () Bool)

(assert (=> b!1467914 m!1712473))

(declare-fun m!1712475 () Bool)

(assert (=> b!1467914 m!1712475))

(declare-fun m!1712477 () Bool)

(assert (=> b!1467914 m!1712477))

(declare-fun m!1712479 () Bool)

(assert (=> b!1467914 m!1712479))

(declare-fun m!1712481 () Bool)

(assert (=> b!1467914 m!1712481))

(declare-fun m!1712483 () Bool)

(assert (=> b!1467914 m!1712483))

(declare-fun m!1712485 () Bool)

(assert (=> b!1467914 m!1712485))

(declare-fun m!1712487 () Bool)

(assert (=> b!1467914 m!1712487))

(declare-fun m!1712489 () Bool)

(assert (=> b!1467914 m!1712489))

(declare-fun m!1712491 () Bool)

(assert (=> b!1467914 m!1712491))

(assert (=> b!1467914 m!1712473))

(declare-fun m!1712493 () Bool)

(assert (=> b!1467914 m!1712493))

(assert (=> b!1467914 m!1712479))

(declare-fun m!1712495 () Bool)

(assert (=> b!1467907 m!1712495))

(declare-fun m!1712497 () Bool)

(assert (=> b!1467915 m!1712497))

(assert (=> b!1467915 m!1712497))

(declare-fun m!1712499 () Bool)

(assert (=> b!1467915 m!1712499))

(declare-fun m!1712501 () Bool)

(assert (=> b!1467915 m!1712501))

(assert (=> b!1467915 m!1712499))

(assert (=> b!1467915 m!1712501))

(declare-fun m!1712503 () Bool)

(assert (=> b!1467915 m!1712503))

(declare-fun m!1712505 () Bool)

(assert (=> b!1467910 m!1712505))

(declare-fun m!1712507 () Bool)

(assert (=> b!1467912 m!1712507))

(declare-fun m!1712509 () Bool)

(assert (=> b!1467918 m!1712509))

(declare-fun m!1712511 () Bool)

(assert (=> b!1467918 m!1712511))

(declare-fun m!1712513 () Bool)

(assert (=> b!1467909 m!1712513))

(declare-fun m!1712515 () Bool)

(assert (=> b!1467917 m!1712515))

(check-sat (not b!1467917) b_and!100389 (not b_next!37549) (not b_next!37547) (not b!1467912) (not b!1467915) (not b!1467907) (not b!1467914) (not b!1467911) b_and!100385 (not b!1467910) b_and!100391 (not b_next!37545) (not b_next!37543) (not b!1467918) (not b!1467909) b_and!100387)
(check-sat b_and!100389 (not b_next!37549) (not b_next!37547) b_and!100385 b_and!100387 b_and!100391 (not b_next!37545) (not b_next!37543))
