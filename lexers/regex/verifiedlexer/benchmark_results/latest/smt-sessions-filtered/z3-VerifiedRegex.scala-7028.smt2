; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!373412 () Bool)

(assert start!373412)

(declare-fun b!3968624 () Bool)

(declare-fun b_free!109797 () Bool)

(declare-fun b_next!110501 () Bool)

(assert (=> b!3968624 (= b_free!109797 (not b_next!110501))))

(declare-fun tp!1209574 () Bool)

(declare-fun b_and!305011 () Bool)

(assert (=> b!3968624 (= tp!1209574 b_and!305011)))

(declare-fun b_free!109799 () Bool)

(declare-fun b_next!110503 () Bool)

(assert (=> b!3968624 (= b_free!109799 (not b_next!110503))))

(declare-fun tp!1209577 () Bool)

(declare-fun b_and!305013 () Bool)

(assert (=> b!3968624 (= tp!1209577 b_and!305013)))

(declare-fun b!3968634 () Bool)

(declare-fun b_free!109801 () Bool)

(declare-fun b_next!110505 () Bool)

(assert (=> b!3968634 (= b_free!109801 (not b_next!110505))))

(declare-fun tp!1209569 () Bool)

(declare-fun b_and!305015 () Bool)

(assert (=> b!3968634 (= tp!1209569 b_and!305015)))

(declare-fun b_free!109803 () Bool)

(declare-fun b_next!110507 () Bool)

(assert (=> b!3968634 (= b_free!109803 (not b_next!110507))))

(declare-fun tp!1209567 () Bool)

(declare-fun b_and!305017 () Bool)

(assert (=> b!3968634 (= tp!1209567 b_and!305017)))

(declare-fun b!3968632 () Bool)

(declare-fun b_free!109805 () Bool)

(declare-fun b_next!110509 () Bool)

(assert (=> b!3968632 (= b_free!109805 (not b_next!110509))))

(declare-fun tp!1209581 () Bool)

(declare-fun b_and!305019 () Bool)

(assert (=> b!3968632 (= tp!1209581 b_and!305019)))

(declare-fun b_free!109807 () Bool)

(declare-fun b_next!110511 () Bool)

(assert (=> b!3968632 (= b_free!109807 (not b_next!110511))))

(declare-fun tp!1209575 () Bool)

(declare-fun b_and!305021 () Bool)

(assert (=> b!3968632 (= tp!1209575 b_and!305021)))

(declare-fun b!3968616 () Bool)

(declare-fun res!1606430 () Bool)

(declare-fun e!2458077 () Bool)

(assert (=> b!3968616 (=> (not res!1606430) (not e!2458077))))

(declare-datatypes ((List!42435 0))(
  ( (Nil!42311) (Cons!42311 (h!47731 (_ BitVec 16)) (t!330772 List!42435)) )
))
(declare-datatypes ((TokenValue!6874 0))(
  ( (FloatLiteralValue!13748 (text!48563 List!42435)) (TokenValueExt!6873 (__x!25965 Int)) (Broken!34370 (value!209962 List!42435)) (Object!6997) (End!6874) (Def!6874) (Underscore!6874) (Match!6874) (Else!6874) (Error!6874) (Case!6874) (If!6874) (Extends!6874) (Abstract!6874) (Class!6874) (Val!6874) (DelimiterValue!13748 (del!6934 List!42435)) (KeywordValue!6880 (value!209963 List!42435)) (CommentValue!13748 (value!209964 List!42435)) (WhitespaceValue!13748 (value!209965 List!42435)) (IndentationValue!6874 (value!209966 List!42435)) (String!48087) (Int32!6874) (Broken!34371 (value!209967 List!42435)) (Boolean!6875) (Unit!60983) (OperatorValue!6877 (op!6934 List!42435)) (IdentifierValue!13748 (value!209968 List!42435)) (IdentifierValue!13749 (value!209969 List!42435)) (WhitespaceValue!13749 (value!209970 List!42435)) (True!13748) (False!13748) (Broken!34372 (value!209971 List!42435)) (Broken!34373 (value!209972 List!42435)) (True!13749) (RightBrace!6874) (RightBracket!6874) (Colon!6874) (Null!6874) (Comma!6874) (LeftBracket!6874) (False!13749) (LeftBrace!6874) (ImaginaryLiteralValue!6874 (text!48564 List!42435)) (StringLiteralValue!20622 (value!209973 List!42435)) (EOFValue!6874 (value!209974 List!42435)) (IdentValue!6874 (value!209975 List!42435)) (DelimiterValue!13749 (value!209976 List!42435)) (DedentValue!6874 (value!209977 List!42435)) (NewLineValue!6874 (value!209978 List!42435)) (IntegerValue!20622 (value!209979 (_ BitVec 32)) (text!48565 List!42435)) (IntegerValue!20623 (value!209980 Int) (text!48566 List!42435)) (Times!6874) (Or!6874) (Equal!6874) (Minus!6874) (Broken!34374 (value!209981 List!42435)) (And!6874) (Div!6874) (LessEqual!6874) (Mod!6874) (Concat!18423) (Not!6874) (Plus!6874) (SpaceValue!6874 (value!209982 List!42435)) (IntegerValue!20624 (value!209983 Int) (text!48567 List!42435)) (StringLiteralValue!20623 (text!48568 List!42435)) (FloatLiteralValue!13749 (text!48569 List!42435)) (BytesLiteralValue!6874 (value!209984 List!42435)) (CommentValue!13749 (value!209985 List!42435)) (StringLiteralValue!20624 (value!209986 List!42435)) (ErrorTokenValue!6874 (msg!6935 List!42435)) )
))
(declare-datatypes ((C!23284 0))(
  ( (C!23285 (val!13736 Int)) )
))
(declare-datatypes ((Regex!11549 0))(
  ( (ElementMatch!11549 (c!688536 C!23284)) (Concat!18424 (regOne!23610 Regex!11549) (regTwo!23610 Regex!11549)) (EmptyExpr!11549) (Star!11549 (reg!11878 Regex!11549)) (EmptyLang!11549) (Union!11549 (regOne!23611 Regex!11549) (regTwo!23611 Regex!11549)) )
))
(declare-datatypes ((String!48088 0))(
  ( (String!48089 (value!209987 String)) )
))
(declare-datatypes ((List!42436 0))(
  ( (Nil!42312) (Cons!42312 (h!47732 C!23284) (t!330773 List!42436)) )
))
(declare-datatypes ((IArray!25715 0))(
  ( (IArray!25716 (innerList!12915 List!42436)) )
))
(declare-datatypes ((Conc!12855 0))(
  ( (Node!12855 (left!32063 Conc!12855) (right!32393 Conc!12855) (csize!25940 Int) (cheight!13066 Int)) (Leaf!19884 (xs!16161 IArray!25715) (csize!25941 Int)) (Empty!12855) )
))
(declare-datatypes ((BalanceConc!25304 0))(
  ( (BalanceConc!25305 (c!688537 Conc!12855)) )
))
(declare-datatypes ((TokenValueInjection!13176 0))(
  ( (TokenValueInjection!13177 (toValue!9128 Int) (toChars!8987 Int)) )
))
(declare-datatypes ((Rule!13088 0))(
  ( (Rule!13089 (regex!6644 Regex!11549) (tag!7504 String!48088) (isSeparator!6644 Bool) (transformation!6644 TokenValueInjection!13176)) )
))
(declare-datatypes ((Token!12426 0))(
  ( (Token!12427 (value!209988 TokenValue!6874) (rule!9632 Rule!13088) (size!31669 Int) (originalCharacters!7244 List!42436)) )
))
(declare-datatypes ((List!42437 0))(
  ( (Nil!42313) (Cons!42313 (h!47733 Token!12426) (t!330774 List!42437)) )
))
(declare-fun prefixTokens!80 () List!42437)

(declare-fun isEmpty!25324 (List!42437) Bool)

(assert (=> b!3968616 (= res!1606430 (not (isEmpty!25324 prefixTokens!80)))))

(declare-fun b!3968617 () Bool)

(declare-fun e!2458083 () Bool)

(declare-fun tp_is_empty!20069 () Bool)

(declare-fun tp!1209582 () Bool)

(assert (=> b!3968617 (= e!2458083 (and tp_is_empty!20069 tp!1209582))))

(declare-fun b!3968618 () Bool)

(declare-fun e!2458073 () Bool)

(declare-fun tp!1209580 () Bool)

(assert (=> b!3968618 (= e!2458073 (and tp_is_empty!20069 tp!1209580))))

(declare-fun e!2458088 () Bool)

(declare-fun tp!1209568 () Bool)

(declare-fun e!2458094 () Bool)

(declare-fun b!3968619 () Bool)

(declare-fun inv!56541 (String!48088) Bool)

(declare-fun inv!56544 (TokenValueInjection!13176) Bool)

(assert (=> b!3968619 (= e!2458088 (and tp!1209568 (inv!56541 (tag!7504 (rule!9632 (h!47733 prefixTokens!80)))) (inv!56544 (transformation!6644 (rule!9632 (h!47733 prefixTokens!80)))) e!2458094))))

(declare-fun e!2458075 () Bool)

(declare-fun tp!1209578 () Bool)

(declare-fun b!3968620 () Bool)

(declare-fun suffixTokens!72 () List!42437)

(declare-fun e!2458086 () Bool)

(declare-fun inv!21 (TokenValue!6874) Bool)

(assert (=> b!3968620 (= e!2458086 (and (inv!21 (value!209988 (h!47733 suffixTokens!72))) e!2458075 tp!1209578))))

(declare-fun b!3968621 () Bool)

(declare-fun e!2458089 () Bool)

(declare-fun e!2458076 () Bool)

(declare-fun tp!1209573 () Bool)

(assert (=> b!3968621 (= e!2458089 (and e!2458076 tp!1209573))))

(declare-fun b!3968622 () Bool)

(declare-fun res!1606425 () Bool)

(declare-fun e!2458092 () Bool)

(assert (=> b!3968622 (=> (not res!1606425) (not e!2458092))))

(declare-datatypes ((LexerInterface!6233 0))(
  ( (LexerInterfaceExt!6230 (__x!25966 Int)) (Lexer!6231) )
))
(declare-fun thiss!20629 () LexerInterface!6233)

(declare-fun suffix!1176 () List!42436)

(declare-datatypes ((List!42438 0))(
  ( (Nil!42314) (Cons!42314 (h!47734 Rule!13088) (t!330775 List!42438)) )
))
(declare-fun rules!2768 () List!42438)

(declare-fun suffixResult!91 () List!42436)

(declare-datatypes ((tuple2!41610 0))(
  ( (tuple2!41611 (_1!23939 List!42437) (_2!23939 List!42436)) )
))
(declare-fun lexList!2001 (LexerInterface!6233 List!42438 List!42436) tuple2!41610)

(assert (=> b!3968622 (= res!1606425 (= (lexList!2001 thiss!20629 rules!2768 suffix!1176) (tuple2!41611 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3968623 () Bool)

(declare-fun res!1606432 () Bool)

(assert (=> b!3968623 (=> (not res!1606432) (not e!2458092))))

(declare-fun lt!1390159 () List!42436)

(get-info :version)

(declare-datatypes ((tuple2!41612 0))(
  ( (tuple2!41613 (_1!23940 Token!12426) (_2!23940 List!42436)) )
))
(declare-datatypes ((Option!9064 0))(
  ( (None!9063) (Some!9063 (v!39411 tuple2!41612)) )
))
(declare-fun maxPrefix!3537 (LexerInterface!6233 List!42438 List!42436) Option!9064)

(assert (=> b!3968623 (= res!1606432 (not ((_ is Some!9063) (maxPrefix!3537 thiss!20629 rules!2768 lt!1390159))))))

(assert (=> b!3968624 (= e!2458094 (and tp!1209574 tp!1209577))))

(declare-fun b!3968625 () Bool)

(declare-fun e!2458074 () Bool)

(declare-fun prefix!426 () List!42436)

(assert (=> b!3968625 (= e!2458074 (= (lexList!2001 thiss!20629 rules!2768 prefix!426) (tuple2!41611 prefixTokens!80 Nil!42312)))))

(declare-fun res!1606429 () Bool)

(assert (=> start!373412 (=> (not res!1606429) (not e!2458077))))

(assert (=> start!373412 (= res!1606429 ((_ is Lexer!6231) thiss!20629))))

(assert (=> start!373412 e!2458077))

(assert (=> start!373412 e!2458073))

(assert (=> start!373412 true))

(declare-fun e!2458087 () Bool)

(assert (=> start!373412 e!2458087))

(assert (=> start!373412 e!2458089))

(declare-fun e!2458091 () Bool)

(assert (=> start!373412 e!2458091))

(declare-fun e!2458084 () Bool)

(assert (=> start!373412 e!2458084))

(assert (=> start!373412 e!2458083))

(declare-fun e!2458079 () Bool)

(declare-fun b!3968626 () Bool)

(declare-fun tp!1209576 () Bool)

(assert (=> b!3968626 (= e!2458075 (and tp!1209576 (inv!56541 (tag!7504 (rule!9632 (h!47733 suffixTokens!72)))) (inv!56544 (transformation!6644 (rule!9632 (h!47733 suffixTokens!72)))) e!2458079))))

(declare-fun e!2458080 () Bool)

(declare-fun b!3968627 () Bool)

(declare-fun tp!1209571 () Bool)

(assert (=> b!3968627 (= e!2458080 (and (inv!21 (value!209988 (h!47733 prefixTokens!80))) e!2458088 tp!1209571))))

(declare-fun b!3968628 () Bool)

(declare-fun tp!1209570 () Bool)

(declare-fun inv!56545 (Token!12426) Bool)

(assert (=> b!3968628 (= e!2458091 (and (inv!56545 (h!47733 prefixTokens!80)) e!2458080 tp!1209570))))

(declare-fun b!3968629 () Bool)

(declare-fun res!1606426 () Bool)

(assert (=> b!3968629 (=> (not res!1606426) (not e!2458077))))

(declare-fun isEmpty!25325 (List!42436) Bool)

(assert (=> b!3968629 (= res!1606426 (not (isEmpty!25325 prefix!426)))))

(declare-fun b!3968630 () Bool)

(declare-fun tp!1209566 () Bool)

(assert (=> b!3968630 (= e!2458084 (and (inv!56545 (h!47733 suffixTokens!72)) e!2458086 tp!1209566))))

(declare-fun b!3968631 () Bool)

(assert (=> b!3968631 (= e!2458092 (not e!2458074))))

(declare-fun res!1606427 () Bool)

(assert (=> b!3968631 (=> res!1606427 e!2458074)))

(declare-fun lt!1390161 () tuple2!41610)

(assert (=> b!3968631 (= res!1606427 (not (= lt!1390161 (tuple2!41611 Nil!42313 lt!1390159))))))

(assert (=> b!3968631 false))

(declare-fun e!2458081 () Bool)

(assert (=> b!3968632 (= e!2458081 (and tp!1209581 tp!1209575))))

(declare-fun b!3968633 () Bool)

(declare-fun res!1606424 () Bool)

(assert (=> b!3968633 (=> (not res!1606424) (not e!2458077))))

(declare-fun isEmpty!25326 (List!42438) Bool)

(assert (=> b!3968633 (= res!1606424 (not (isEmpty!25326 rules!2768)))))

(assert (=> b!3968634 (= e!2458079 (and tp!1209569 tp!1209567))))

(declare-fun b!3968635 () Bool)

(assert (=> b!3968635 (= e!2458077 e!2458092)))

(declare-fun res!1606431 () Bool)

(assert (=> b!3968635 (=> (not res!1606431) (not e!2458092))))

(declare-fun lt!1390160 () List!42437)

(assert (=> b!3968635 (= res!1606431 (= lt!1390161 (tuple2!41611 lt!1390160 suffixResult!91)))))

(assert (=> b!3968635 (= lt!1390161 (lexList!2001 thiss!20629 rules!2768 lt!1390159))))

(declare-fun ++!11045 (List!42437 List!42437) List!42437)

(assert (=> b!3968635 (= lt!1390160 (++!11045 prefixTokens!80 suffixTokens!72))))

(declare-fun ++!11046 (List!42436 List!42436) List!42436)

(assert (=> b!3968635 (= lt!1390159 (++!11046 prefix!426 suffix!1176))))

(declare-fun tp!1209579 () Bool)

(declare-fun b!3968636 () Bool)

(assert (=> b!3968636 (= e!2458076 (and tp!1209579 (inv!56541 (tag!7504 (h!47734 rules!2768))) (inv!56544 (transformation!6644 (h!47734 rules!2768))) e!2458081))))

(declare-fun b!3968637 () Bool)

(declare-fun tp!1209572 () Bool)

(assert (=> b!3968637 (= e!2458087 (and tp_is_empty!20069 tp!1209572))))

(declare-fun b!3968638 () Bool)

(declare-fun res!1606428 () Bool)

(assert (=> b!3968638 (=> (not res!1606428) (not e!2458077))))

(declare-fun rulesInvariant!5576 (LexerInterface!6233 List!42438) Bool)

(assert (=> b!3968638 (= res!1606428 (rulesInvariant!5576 thiss!20629 rules!2768))))

(assert (= (and start!373412 res!1606429) b!3968633))

(assert (= (and b!3968633 res!1606424) b!3968638))

(assert (= (and b!3968638 res!1606428) b!3968616))

(assert (= (and b!3968616 res!1606430) b!3968629))

(assert (= (and b!3968629 res!1606426) b!3968635))

(assert (= (and b!3968635 res!1606431) b!3968622))

(assert (= (and b!3968622 res!1606425) b!3968623))

(assert (= (and b!3968623 res!1606432) b!3968631))

(assert (= (and b!3968631 (not res!1606427)) b!3968625))

(assert (= (and start!373412 ((_ is Cons!42312) suffixResult!91)) b!3968618))

(assert (= (and start!373412 ((_ is Cons!42312) suffix!1176)) b!3968637))

(assert (= b!3968636 b!3968632))

(assert (= b!3968621 b!3968636))

(assert (= (and start!373412 ((_ is Cons!42314) rules!2768)) b!3968621))

(assert (= b!3968619 b!3968624))

(assert (= b!3968627 b!3968619))

(assert (= b!3968628 b!3968627))

(assert (= (and start!373412 ((_ is Cons!42313) prefixTokens!80)) b!3968628))

(assert (= b!3968626 b!3968634))

(assert (= b!3968620 b!3968626))

(assert (= b!3968630 b!3968620))

(assert (= (and start!373412 ((_ is Cons!42313) suffixTokens!72)) b!3968630))

(assert (= (and start!373412 ((_ is Cons!42312) prefix!426)) b!3968617))

(declare-fun m!4539129 () Bool)

(assert (=> b!3968628 m!4539129))

(declare-fun m!4539131 () Bool)

(assert (=> b!3968626 m!4539131))

(declare-fun m!4539133 () Bool)

(assert (=> b!3968626 m!4539133))

(declare-fun m!4539135 () Bool)

(assert (=> b!3968630 m!4539135))

(declare-fun m!4539137 () Bool)

(assert (=> b!3968629 m!4539137))

(declare-fun m!4539139 () Bool)

(assert (=> b!3968625 m!4539139))

(declare-fun m!4539141 () Bool)

(assert (=> b!3968623 m!4539141))

(declare-fun m!4539143 () Bool)

(assert (=> b!3968635 m!4539143))

(declare-fun m!4539145 () Bool)

(assert (=> b!3968635 m!4539145))

(declare-fun m!4539147 () Bool)

(assert (=> b!3968635 m!4539147))

(declare-fun m!4539149 () Bool)

(assert (=> b!3968622 m!4539149))

(declare-fun m!4539151 () Bool)

(assert (=> b!3968633 m!4539151))

(declare-fun m!4539153 () Bool)

(assert (=> b!3968627 m!4539153))

(declare-fun m!4539155 () Bool)

(assert (=> b!3968619 m!4539155))

(declare-fun m!4539157 () Bool)

(assert (=> b!3968619 m!4539157))

(declare-fun m!4539159 () Bool)

(assert (=> b!3968620 m!4539159))

(declare-fun m!4539161 () Bool)

(assert (=> b!3968638 m!4539161))

(declare-fun m!4539163 () Bool)

(assert (=> b!3968616 m!4539163))

(declare-fun m!4539165 () Bool)

(assert (=> b!3968636 m!4539165))

(declare-fun m!4539167 () Bool)

(assert (=> b!3968636 m!4539167))

(check-sat (not b!3968620) (not b_next!110501) (not b!3968638) (not b!3968621) (not b!3968617) (not b_next!110503) b_and!305017 (not b!3968626) b_and!305013 (not b!3968629) tp_is_empty!20069 (not b!3968627) b_and!305019 (not b_next!110509) (not b!3968628) (not b!3968637) (not b_next!110507) (not b!3968635) b_and!305015 (not b_next!110511) (not b!3968618) (not b!3968623) (not b!3968622) (not b!3968636) (not b!3968616) (not b_next!110505) b_and!305011 b_and!305021 (not b!3968633) (not b!3968630) (not b!3968625) (not b!3968619))
(check-sat (not b_next!110501) (not b_next!110503) b_and!305017 (not b_next!110511) b_and!305013 b_and!305019 (not b_next!110509) (not b_next!110507) b_and!305015 (not b_next!110505) b_and!305011 b_and!305021)
