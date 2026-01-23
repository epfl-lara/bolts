; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!364496 () Bool)

(assert start!364496)

(declare-fun b!3882441 () Bool)

(declare-fun b_free!105297 () Bool)

(declare-fun b_next!106001 () Bool)

(assert (=> b!3882441 (= b_free!105297 (not b_next!106001))))

(declare-fun tp!1177452 () Bool)

(declare-fun b_and!291383 () Bool)

(assert (=> b!3882441 (= tp!1177452 b_and!291383)))

(declare-fun b_free!105299 () Bool)

(declare-fun b_next!106003 () Bool)

(assert (=> b!3882441 (= b_free!105299 (not b_next!106003))))

(declare-fun tp!1177443 () Bool)

(declare-fun b_and!291385 () Bool)

(assert (=> b!3882441 (= tp!1177443 b_and!291385)))

(declare-fun b!3882458 () Bool)

(declare-fun b_free!105301 () Bool)

(declare-fun b_next!106005 () Bool)

(assert (=> b!3882458 (= b_free!105301 (not b_next!106005))))

(declare-fun tp!1177438 () Bool)

(declare-fun b_and!291387 () Bool)

(assert (=> b!3882458 (= tp!1177438 b_and!291387)))

(declare-fun b_free!105303 () Bool)

(declare-fun b_next!106007 () Bool)

(assert (=> b!3882458 (= b_free!105303 (not b_next!106007))))

(declare-fun tp!1177448 () Bool)

(declare-fun b_and!291389 () Bool)

(assert (=> b!3882458 (= tp!1177448 b_and!291389)))

(declare-fun b!3882471 () Bool)

(declare-fun b_free!105305 () Bool)

(declare-fun b_next!106009 () Bool)

(assert (=> b!3882471 (= b_free!105305 (not b_next!106009))))

(declare-fun tp!1177445 () Bool)

(declare-fun b_and!291391 () Bool)

(assert (=> b!3882471 (= tp!1177445 b_and!291391)))

(declare-fun b_free!105307 () Bool)

(declare-fun b_next!106011 () Bool)

(assert (=> b!3882471 (= b_free!105307 (not b_next!106011))))

(declare-fun tp!1177453 () Bool)

(declare-fun b_and!291393 () Bool)

(assert (=> b!3882471 (= tp!1177453 b_and!291393)))

(declare-fun b!3882466 () Bool)

(declare-fun b_free!105309 () Bool)

(declare-fun b_next!106013 () Bool)

(assert (=> b!3882466 (= b_free!105309 (not b_next!106013))))

(declare-fun tp!1177442 () Bool)

(declare-fun b_and!291395 () Bool)

(assert (=> b!3882466 (= tp!1177442 b_and!291395)))

(declare-fun b_free!105311 () Bool)

(declare-fun b_next!106015 () Bool)

(assert (=> b!3882466 (= b_free!105311 (not b_next!106015))))

(declare-fun tp!1177455 () Bool)

(declare-fun b_and!291397 () Bool)

(assert (=> b!3882466 (= tp!1177455 b_and!291397)))

(declare-fun b!3882438 () Bool)

(declare-fun e!2402698 () Bool)

(declare-datatypes ((List!41444 0))(
  ( (Nil!41320) (Cons!41320 (h!46740 (_ BitVec 16)) (t!315569 List!41444)) )
))
(declare-datatypes ((TokenValue!6654 0))(
  ( (FloatLiteralValue!13308 (text!47023 List!41444)) (TokenValueExt!6653 (__x!25525 Int)) (Broken!33270 (value!203692 List!41444)) (Object!6777) (End!6654) (Def!6654) (Underscore!6654) (Match!6654) (Else!6654) (Error!6654) (Case!6654) (If!6654) (Extends!6654) (Abstract!6654) (Class!6654) (Val!6654) (DelimiterValue!13308 (del!6714 List!41444)) (KeywordValue!6660 (value!203693 List!41444)) (CommentValue!13308 (value!203694 List!41444)) (WhitespaceValue!13308 (value!203695 List!41444)) (IndentationValue!6654 (value!203696 List!41444)) (String!46987) (Int32!6654) (Broken!33271 (value!203697 List!41444)) (Boolean!6655) (Unit!59381) (OperatorValue!6657 (op!6714 List!41444)) (IdentifierValue!13308 (value!203698 List!41444)) (IdentifierValue!13309 (value!203699 List!41444)) (WhitespaceValue!13309 (value!203700 List!41444)) (True!13308) (False!13308) (Broken!33272 (value!203701 List!41444)) (Broken!33273 (value!203702 List!41444)) (True!13309) (RightBrace!6654) (RightBracket!6654) (Colon!6654) (Null!6654) (Comma!6654) (LeftBracket!6654) (False!13309) (LeftBrace!6654) (ImaginaryLiteralValue!6654 (text!47024 List!41444)) (StringLiteralValue!19962 (value!203703 List!41444)) (EOFValue!6654 (value!203704 List!41444)) (IdentValue!6654 (value!203705 List!41444)) (DelimiterValue!13309 (value!203706 List!41444)) (DedentValue!6654 (value!203707 List!41444)) (NewLineValue!6654 (value!203708 List!41444)) (IntegerValue!19962 (value!203709 (_ BitVec 32)) (text!47025 List!41444)) (IntegerValue!19963 (value!203710 Int) (text!47026 List!41444)) (Times!6654) (Or!6654) (Equal!6654) (Minus!6654) (Broken!33274 (value!203711 List!41444)) (And!6654) (Div!6654) (LessEqual!6654) (Mod!6654) (Concat!17983) (Not!6654) (Plus!6654) (SpaceValue!6654 (value!203712 List!41444)) (IntegerValue!19964 (value!203713 Int) (text!47027 List!41444)) (StringLiteralValue!19963 (text!47028 List!41444)) (FloatLiteralValue!13309 (text!47029 List!41444)) (BytesLiteralValue!6654 (value!203714 List!41444)) (CommentValue!13309 (value!203715 List!41444)) (StringLiteralValue!19964 (value!203716 List!41444)) (ErrorTokenValue!6654 (msg!6715 List!41444)) )
))
(declare-datatypes ((C!22844 0))(
  ( (C!22845 (val!13516 Int)) )
))
(declare-datatypes ((Regex!11329 0))(
  ( (ElementMatch!11329 (c!675240 C!22844)) (Concat!17984 (regOne!23170 Regex!11329) (regTwo!23170 Regex!11329)) (EmptyExpr!11329) (Star!11329 (reg!11658 Regex!11329)) (EmptyLang!11329) (Union!11329 (regOne!23171 Regex!11329) (regTwo!23171 Regex!11329)) )
))
(declare-datatypes ((String!46988 0))(
  ( (String!46989 (value!203717 String)) )
))
(declare-datatypes ((List!41445 0))(
  ( (Nil!41321) (Cons!41321 (h!46741 C!22844) (t!315570 List!41445)) )
))
(declare-datatypes ((IArray!25275 0))(
  ( (IArray!25276 (innerList!12695 List!41445)) )
))
(declare-datatypes ((Conc!12635 0))(
  ( (Node!12635 (left!31677 Conc!12635) (right!32007 Conc!12635) (csize!25500 Int) (cheight!12846 Int)) (Leaf!19554 (xs!15941 IArray!25275) (csize!25501 Int)) (Empty!12635) )
))
(declare-datatypes ((BalanceConc!24864 0))(
  ( (BalanceConc!24865 (c!675241 Conc!12635)) )
))
(declare-datatypes ((TokenValueInjection!12736 0))(
  ( (TokenValueInjection!12737 (toValue!8856 Int) (toChars!8715 Int)) )
))
(declare-datatypes ((Rule!12648 0))(
  ( (Rule!12649 (regex!6424 Regex!11329) (tag!7284 String!46988) (isSeparator!6424 Bool) (transformation!6424 TokenValueInjection!12736)) )
))
(declare-datatypes ((Token!11986 0))(
  ( (Token!11987 (value!203718 TokenValue!6654) (rule!9324 Rule!12648) (size!31023 Int) (originalCharacters!7024 List!41445)) )
))
(declare-datatypes ((tuple2!40554 0))(
  ( (tuple2!40555 (_1!23411 Token!11986) (_2!23411 List!41445)) )
))
(declare-datatypes ((Option!8842 0))(
  ( (None!8841) (Some!8841 (v!39141 tuple2!40554)) )
))
(declare-fun lt!1354801 () Option!8842)

(declare-fun size!31024 (List!41445) Int)

(assert (=> b!3882438 (= e!2402698 (= (size!31023 (_1!23411 (v!39141 lt!1354801))) (size!31024 (originalCharacters!7024 (_1!23411 (v!39141 lt!1354801))))))))

(declare-fun b!3882439 () Bool)

(declare-fun e!2402707 () Bool)

(declare-datatypes ((List!41446 0))(
  ( (Nil!41322) (Cons!41322 (h!46742 Token!11986) (t!315571 List!41446)) )
))
(declare-fun prefixTokens!80 () List!41446)

(declare-fun tp!1177440 () Bool)

(declare-fun e!2402694 () Bool)

(declare-fun inv!21 (TokenValue!6654) Bool)

(assert (=> b!3882439 (= e!2402707 (and (inv!21 (value!203718 (h!46742 prefixTokens!80))) e!2402694 tp!1177440))))

(declare-fun b!3882440 () Bool)

(declare-fun e!2402710 () Bool)

(declare-fun err!4345 () Option!8842)

(declare-fun e!2402702 () Bool)

(declare-fun tp!1177437 () Bool)

(declare-fun inv!55478 (Token!11986) Bool)

(assert (=> b!3882440 (= e!2402702 (and (inv!55478 (_1!23411 (v!39141 err!4345))) e!2402710 tp!1177437))))

(declare-fun e!2402685 () Bool)

(assert (=> b!3882441 (= e!2402685 (and tp!1177452 tp!1177443))))

(declare-fun b!3882442 () Bool)

(declare-fun res!1573160 () Bool)

(declare-fun e!2402717 () Bool)

(assert (=> b!3882442 (=> (not res!1573160) (not e!2402717))))

(declare-fun suffixResult!91 () List!41445)

(declare-datatypes ((LexerInterface!6013 0))(
  ( (LexerInterfaceExt!6010 (__x!25526 Int)) (Lexer!6011) )
))
(declare-fun thiss!20629 () LexerInterface!6013)

(declare-fun suffix!1176 () List!41445)

(declare-datatypes ((List!41447 0))(
  ( (Nil!41323) (Cons!41323 (h!46743 Rule!12648) (t!315572 List!41447)) )
))
(declare-fun rules!2768 () List!41447)

(declare-fun suffixTokens!72 () List!41446)

(declare-datatypes ((tuple2!40556 0))(
  ( (tuple2!40557 (_1!23412 List!41446) (_2!23412 List!41445)) )
))
(declare-fun lexList!1781 (LexerInterface!6013 List!41447 List!41445) tuple2!40556)

(assert (=> b!3882442 (= res!1573160 (= (lexList!1781 thiss!20629 rules!2768 suffix!1176) (tuple2!40557 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3882443 () Bool)

(declare-fun e!2402701 () Bool)

(declare-fun e!2402696 () Bool)

(assert (=> b!3882443 (= e!2402701 e!2402696)))

(declare-fun res!1573170 () Bool)

(assert (=> b!3882443 (=> res!1573170 e!2402696)))

(assert (=> b!3882443 (= res!1573170 (not (= lt!1354801 (Some!8841 (tuple2!40555 (_1!23411 (v!39141 lt!1354801)) (_2!23411 (v!39141 lt!1354801)))))))))

(declare-fun e!2402716 () Bool)

(assert (=> b!3882443 e!2402716))

(declare-fun res!1573167 () Bool)

(assert (=> b!3882443 (=> (not res!1573167) (not e!2402716))))

(declare-fun lt!1354794 () List!41445)

(declare-fun isPrefix!3519 (List!41445 List!41445) Bool)

(assert (=> b!3882443 (= res!1573167 (isPrefix!3519 lt!1354794 lt!1354794))))

(declare-datatypes ((Unit!59382 0))(
  ( (Unit!59383) )
))
(declare-fun lt!1354795 () Unit!59382)

(declare-fun lemmaIsPrefixRefl!2226 (List!41445 List!41445) Unit!59382)

(assert (=> b!3882443 (= lt!1354795 (lemmaIsPrefixRefl!2226 lt!1354794 lt!1354794))))

(declare-fun lt!1354802 () tuple2!40556)

(declare-fun lt!1354787 () tuple2!40556)

(assert (=> b!3882443 (= lt!1354802 (tuple2!40557 (Cons!41322 (_1!23411 (v!39141 lt!1354801)) (_1!23412 lt!1354787)) (_2!23412 lt!1354787)))))

(declare-fun e!2402687 () Bool)

(declare-fun b!3882444 () Bool)

(declare-fun tp!1177450 () Bool)

(declare-fun inv!55475 (String!46988) Bool)

(declare-fun inv!55479 (TokenValueInjection!12736) Bool)

(assert (=> b!3882444 (= e!2402687 (and tp!1177450 (inv!55475 (tag!7284 (rule!9324 (_1!23411 (v!39141 err!4345))))) (inv!55479 (transformation!6424 (rule!9324 (_1!23411 (v!39141 err!4345))))) e!2402685))))

(declare-fun b!3882445 () Bool)

(declare-fun res!1573168 () Bool)

(declare-fun e!2402690 () Bool)

(assert (=> b!3882445 (=> (not res!1573168) (not e!2402690))))

(declare-fun rulesInvariant!5356 (LexerInterface!6013 List!41447) Bool)

(assert (=> b!3882445 (= res!1573168 (rulesInvariant!5356 thiss!20629 rules!2768))))

(declare-fun e!2402693 () Bool)

(declare-fun e!2402718 () Bool)

(declare-fun tp!1177441 () Bool)

(declare-fun b!3882446 () Bool)

(assert (=> b!3882446 (= e!2402693 (and tp!1177441 (inv!55475 (tag!7284 (h!46743 rules!2768))) (inv!55479 (transformation!6424 (h!46743 rules!2768))) e!2402718))))

(declare-fun b!3882447 () Bool)

(declare-fun e!2402711 () Option!8842)

(declare-fun call!282914 () Option!8842)

(assert (=> b!3882447 (= e!2402711 call!282914)))

(declare-fun b!3882448 () Bool)

(assert (=> b!3882448 true))

(assert (=> b!3882448 e!2402702))

(declare-fun e!2402715 () Option!8842)

(assert (=> b!3882448 (= e!2402715 err!4345)))

(declare-fun b!3882449 () Bool)

(declare-fun res!1573164 () Bool)

(assert (=> b!3882449 (=> (not res!1573164) (not e!2402690))))

(declare-fun isEmpty!24548 (List!41447) Bool)

(assert (=> b!3882449 (= res!1573164 (not (isEmpty!24548 rules!2768)))))

(declare-fun b!3882450 () Bool)

(declare-fun e!2402704 () Bool)

(assert (=> b!3882450 (= e!2402717 e!2402704)))

(declare-fun res!1573161 () Bool)

(assert (=> b!3882450 (=> (not res!1573161) (not e!2402704))))

(get-info :version)

(assert (=> b!3882450 (= res!1573161 ((_ is Some!8841) lt!1354801))))

(declare-fun maxPrefix!3317 (LexerInterface!6013 List!41447 List!41445) Option!8842)

(assert (=> b!3882450 (= lt!1354801 (maxPrefix!3317 thiss!20629 rules!2768 lt!1354794))))

(declare-fun b!3882451 () Bool)

(declare-fun tp!1177444 () Bool)

(assert (=> b!3882451 (= e!2402710 (and (inv!21 (value!203718 (_1!23411 (v!39141 err!4345)))) e!2402687 tp!1177444))))

(declare-fun e!2402712 () Bool)

(declare-fun tp!1177451 () Bool)

(declare-fun e!2402686 () Bool)

(declare-fun b!3882452 () Bool)

(assert (=> b!3882452 (= e!2402686 (and (inv!21 (value!203718 (h!46742 suffixTokens!72))) e!2402712 tp!1177451))))

(declare-fun bm!282909 () Bool)

(declare-fun maxPrefixOneRule!2393 (LexerInterface!6013 Rule!12648 List!41445) Option!8842)

(assert (=> bm!282909 (= call!282914 (maxPrefixOneRule!2393 thiss!20629 (h!46743 rules!2768) lt!1354794))))

(declare-fun b!3882453 () Bool)

(declare-fun tp!1177458 () Bool)

(declare-fun e!2402699 () Bool)

(assert (=> b!3882453 (= e!2402694 (and tp!1177458 (inv!55475 (tag!7284 (rule!9324 (h!46742 prefixTokens!80)))) (inv!55479 (transformation!6424 (rule!9324 (h!46742 prefixTokens!80)))) e!2402699))))

(declare-fun tp!1177454 () Bool)

(declare-fun b!3882454 () Bool)

(declare-fun e!2402706 () Bool)

(assert (=> b!3882454 (= e!2402706 (and (inv!55478 (h!46742 suffixTokens!72)) e!2402686 tp!1177454))))

(declare-fun b!3882455 () Bool)

(declare-fun tp!1177457 () Bool)

(declare-fun e!2402692 () Bool)

(assert (=> b!3882455 (= e!2402692 (and (inv!55478 (h!46742 prefixTokens!80)) e!2402707 tp!1177457))))

(declare-fun b!3882456 () Bool)

(assert (=> b!3882456 (= e!2402716 (= lt!1354801 e!2402711))))

(declare-fun c!675239 () Bool)

(assert (=> b!3882456 (= c!675239 (and ((_ is Cons!41323) rules!2768) ((_ is Nil!41323) (t!315572 rules!2768))))))

(declare-fun b!3882457 () Bool)

(declare-fun e!2402684 () Bool)

(declare-fun tp_is_empty!19629 () Bool)

(declare-fun tp!1177456 () Bool)

(assert (=> b!3882457 (= e!2402684 (and tp_is_empty!19629 tp!1177456))))

(assert (=> b!3882458 (= e!2402699 (and tp!1177438 tp!1177448))))

(declare-fun b!3882459 () Bool)

(assert (=> b!3882459 (= e!2402711 e!2402715)))

(declare-fun c!675238 () Bool)

(assert (=> b!3882459 (= c!675238 ((_ is Cons!41323) rules!2768))))

(declare-fun e!2402695 () Bool)

(declare-fun b!3882460 () Bool)

(declare-fun tp!1177439 () Bool)

(assert (=> b!3882460 (= e!2402712 (and tp!1177439 (inv!55475 (tag!7284 (rule!9324 (h!46742 suffixTokens!72)))) (inv!55479 (transformation!6424 (rule!9324 (h!46742 suffixTokens!72)))) e!2402695))))

(declare-fun b!3882461 () Bool)

(declare-fun lt!1354792 () Option!8842)

(assert (=> b!3882461 (= lt!1354792 (maxPrefix!3317 thiss!20629 (t!315572 rules!2768) lt!1354794))))

(declare-fun lt!1354789 () Option!8842)

(assert (=> b!3882461 (= lt!1354789 call!282914)))

(assert (=> b!3882461 (= e!2402715 (ite (and ((_ is None!8841) lt!1354789) ((_ is None!8841) lt!1354792)) None!8841 (ite ((_ is None!8841) lt!1354792) lt!1354789 (ite ((_ is None!8841) lt!1354789) lt!1354792 (ite (>= (size!31023 (_1!23411 (v!39141 lt!1354789))) (size!31023 (_1!23411 (v!39141 lt!1354792)))) (Some!8841 (v!39141 lt!1354789)) lt!1354792)))))))

(declare-fun b!3882462 () Bool)

(declare-fun e!2402691 () Bool)

(assert (=> b!3882462 (= e!2402691 e!2402701)))

(declare-fun res!1573162 () Bool)

(assert (=> b!3882462 (=> res!1573162 e!2402701)))

(declare-fun lt!1354788 () List!41446)

(assert (=> b!3882462 (= res!1573162 (or (not (= lt!1354802 (tuple2!40557 lt!1354788 (_2!23412 lt!1354787)))) (not (= lt!1354787 (tuple2!40557 (_1!23412 lt!1354787) (_2!23412 lt!1354787)))) (not (= (_2!23411 (v!39141 lt!1354801)) suffix!1176))))))

(declare-fun ++!10605 (List!41446 List!41446) List!41446)

(assert (=> b!3882462 (= lt!1354788 (++!10605 (Cons!41322 (_1!23411 (v!39141 lt!1354801)) Nil!41322) (_1!23412 lt!1354787)))))

(declare-fun res!1573166 () Bool)

(assert (=> start!364496 (=> (not res!1573166) (not e!2402690))))

(assert (=> start!364496 (= res!1573166 ((_ is Lexer!6011) thiss!20629))))

(assert (=> start!364496 e!2402690))

(declare-fun e!2402713 () Bool)

(assert (=> start!364496 e!2402713))

(assert (=> start!364496 true))

(declare-fun e!2402697 () Bool)

(assert (=> start!364496 e!2402697))

(declare-fun e!2402689 () Bool)

(assert (=> start!364496 e!2402689))

(assert (=> start!364496 e!2402692))

(assert (=> start!364496 e!2402706))

(assert (=> start!364496 e!2402684))

(declare-fun lt!1354796 () List!41446)

(declare-fun b!3882463 () Bool)

(assert (=> b!3882463 (= e!2402696 (or (not (= lt!1354796 (_1!23412 lt!1354802))) (= lt!1354796 lt!1354788)))))

(declare-fun lt!1354799 () List!41445)

(declare-fun prefix!426 () List!41445)

(assert (=> b!3882463 (= lt!1354799 prefix!426)))

(declare-fun lt!1354804 () Unit!59382)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!496 (List!41445 List!41445 List!41445 List!41445) Unit!59382)

(assert (=> b!3882463 (= lt!1354804 (lemmaConcatSameAndSameSizesThenSameLists!496 lt!1354799 (_2!23411 (v!39141 lt!1354801)) prefix!426 suffix!1176))))

(declare-fun b!3882464 () Bool)

(assert (=> b!3882464 (= e!2402704 (not e!2402691))))

(declare-fun res!1573159 () Bool)

(assert (=> b!3882464 (=> res!1573159 e!2402691)))

(declare-fun lt!1354798 () List!41445)

(assert (=> b!3882464 (= res!1573159 (not (= lt!1354798 lt!1354794)))))

(assert (=> b!3882464 (= lt!1354787 (lexList!1781 thiss!20629 rules!2768 (_2!23411 (v!39141 lt!1354801))))))

(declare-fun lt!1354793 () Int)

(declare-fun lt!1354797 () TokenValue!6654)

(declare-fun lt!1354805 () List!41445)

(assert (=> b!3882464 (and (= (size!31023 (_1!23411 (v!39141 lt!1354801))) lt!1354793) (= (originalCharacters!7024 (_1!23411 (v!39141 lt!1354801))) lt!1354799) (= (tuple2!40555 (_1!23411 (v!39141 lt!1354801)) (_2!23411 (v!39141 lt!1354801))) (tuple2!40555 (Token!11987 lt!1354797 (rule!9324 (_1!23411 (v!39141 lt!1354801))) lt!1354793 lt!1354799) lt!1354805)))))

(assert (=> b!3882464 (= lt!1354793 (size!31024 lt!1354799))))

(assert (=> b!3882464 e!2402698))

(declare-fun res!1573163 () Bool)

(assert (=> b!3882464 (=> (not res!1573163) (not e!2402698))))

(assert (=> b!3882464 (= res!1573163 (= (value!203718 (_1!23411 (v!39141 lt!1354801))) lt!1354797))))

(declare-fun apply!9663 (TokenValueInjection!12736 BalanceConc!24864) TokenValue!6654)

(declare-fun seqFromList!4691 (List!41445) BalanceConc!24864)

(assert (=> b!3882464 (= lt!1354797 (apply!9663 (transformation!6424 (rule!9324 (_1!23411 (v!39141 lt!1354801)))) (seqFromList!4691 lt!1354799)))))

(assert (=> b!3882464 (= (_2!23411 (v!39141 lt!1354801)) lt!1354805)))

(declare-fun lt!1354790 () Unit!59382)

(declare-fun lemmaSamePrefixThenSameSuffix!1740 (List!41445 List!41445 List!41445 List!41445 List!41445) Unit!59382)

(assert (=> b!3882464 (= lt!1354790 (lemmaSamePrefixThenSameSuffix!1740 lt!1354799 (_2!23411 (v!39141 lt!1354801)) lt!1354799 lt!1354805 lt!1354794))))

(declare-fun getSuffix!1974 (List!41445 List!41445) List!41445)

(assert (=> b!3882464 (= lt!1354805 (getSuffix!1974 lt!1354794 lt!1354799))))

(assert (=> b!3882464 (isPrefix!3519 lt!1354799 lt!1354798)))

(declare-fun ++!10606 (List!41445 List!41445) List!41445)

(assert (=> b!3882464 (= lt!1354798 (++!10606 lt!1354799 (_2!23411 (v!39141 lt!1354801))))))

(declare-fun lt!1354791 () Unit!59382)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2382 (List!41445 List!41445) Unit!59382)

(assert (=> b!3882464 (= lt!1354791 (lemmaConcatTwoListThenFirstIsPrefix!2382 lt!1354799 (_2!23411 (v!39141 lt!1354801))))))

(declare-fun list!15356 (BalanceConc!24864) List!41445)

(declare-fun charsOf!4248 (Token!11986) BalanceConc!24864)

(assert (=> b!3882464 (= lt!1354799 (list!15356 (charsOf!4248 (_1!23411 (v!39141 lt!1354801)))))))

(declare-fun ruleValid!2372 (LexerInterface!6013 Rule!12648) Bool)

(assert (=> b!3882464 (ruleValid!2372 thiss!20629 (rule!9324 (_1!23411 (v!39141 lt!1354801))))))

(declare-fun lt!1354800 () Unit!59382)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1452 (LexerInterface!6013 Rule!12648 List!41447) Unit!59382)

(assert (=> b!3882464 (= lt!1354800 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1452 thiss!20629 (rule!9324 (_1!23411 (v!39141 lt!1354801))) rules!2768))))

(declare-fun lt!1354803 () Unit!59382)

(declare-fun lemmaCharactersSize!1081 (Token!11986) Unit!59382)

(assert (=> b!3882464 (= lt!1354803 (lemmaCharactersSize!1081 (_1!23411 (v!39141 lt!1354801))))))

(declare-fun b!3882465 () Bool)

(declare-fun tp!1177449 () Bool)

(assert (=> b!3882465 (= e!2402689 (and e!2402693 tp!1177449))))

(assert (=> b!3882466 (= e!2402695 (and tp!1177442 tp!1177455))))

(declare-fun b!3882467 () Bool)

(declare-fun res!1573169 () Bool)

(assert (=> b!3882467 (=> (not res!1573169) (not e!2402690))))

(declare-fun isEmpty!24549 (List!41446) Bool)

(assert (=> b!3882467 (= res!1573169 (not (isEmpty!24549 prefixTokens!80)))))

(declare-fun b!3882468 () Bool)

(declare-fun res!1573158 () Bool)

(assert (=> b!3882468 (=> (not res!1573158) (not e!2402690))))

(declare-fun isEmpty!24550 (List!41445) Bool)

(assert (=> b!3882468 (= res!1573158 (not (isEmpty!24550 prefix!426)))))

(declare-fun b!3882469 () Bool)

(declare-fun tp!1177447 () Bool)

(assert (=> b!3882469 (= e!2402713 (and tp_is_empty!19629 tp!1177447))))

(declare-fun b!3882470 () Bool)

(declare-fun tp!1177446 () Bool)

(assert (=> b!3882470 (= e!2402697 (and tp_is_empty!19629 tp!1177446))))

(assert (=> b!3882471 (= e!2402718 (and tp!1177445 tp!1177453))))

(declare-fun b!3882472 () Bool)

(assert (=> b!3882472 (= e!2402690 e!2402717)))

(declare-fun res!1573165 () Bool)

(assert (=> b!3882472 (=> (not res!1573165) (not e!2402717))))

(assert (=> b!3882472 (= res!1573165 (= lt!1354802 (tuple2!40557 lt!1354796 suffixResult!91)))))

(assert (=> b!3882472 (= lt!1354802 (lexList!1781 thiss!20629 rules!2768 lt!1354794))))

(assert (=> b!3882472 (= lt!1354796 (++!10605 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3882472 (= lt!1354794 (++!10606 prefix!426 suffix!1176))))

(assert (= (and start!364496 res!1573166) b!3882449))

(assert (= (and b!3882449 res!1573164) b!3882445))

(assert (= (and b!3882445 res!1573168) b!3882467))

(assert (= (and b!3882467 res!1573169) b!3882468))

(assert (= (and b!3882468 res!1573158) b!3882472))

(assert (= (and b!3882472 res!1573165) b!3882442))

(assert (= (and b!3882442 res!1573160) b!3882450))

(assert (= (and b!3882450 res!1573161) b!3882464))

(assert (= (and b!3882464 res!1573163) b!3882438))

(assert (= (and b!3882464 (not res!1573159)) b!3882462))

(assert (= (and b!3882462 (not res!1573162)) b!3882443))

(assert (= (and b!3882443 res!1573167) b!3882456))

(assert (= (and b!3882456 c!675239) b!3882447))

(assert (= (and b!3882456 (not c!675239)) b!3882459))

(assert (= (and b!3882459 c!675238) b!3882461))

(assert (= (and b!3882459 (not c!675238)) b!3882448))

(assert (= b!3882444 b!3882441))

(assert (= b!3882451 b!3882444))

(assert (= b!3882440 b!3882451))

(assert (= (and b!3882448 ((_ is Some!8841) err!4345)) b!3882440))

(assert (= (or b!3882447 b!3882461) bm!282909))

(assert (= (and b!3882443 (not res!1573170)) b!3882463))

(assert (= (and start!364496 ((_ is Cons!41321) suffixResult!91)) b!3882469))

(assert (= (and start!364496 ((_ is Cons!41321) suffix!1176)) b!3882470))

(assert (= b!3882446 b!3882471))

(assert (= b!3882465 b!3882446))

(assert (= (and start!364496 ((_ is Cons!41323) rules!2768)) b!3882465))

(assert (= b!3882453 b!3882458))

(assert (= b!3882439 b!3882453))

(assert (= b!3882455 b!3882439))

(assert (= (and start!364496 ((_ is Cons!41322) prefixTokens!80)) b!3882455))

(assert (= b!3882460 b!3882466))

(assert (= b!3882452 b!3882460))

(assert (= b!3882454 b!3882452))

(assert (= (and start!364496 ((_ is Cons!41322) suffixTokens!72)) b!3882454))

(assert (= (and start!364496 ((_ is Cons!41321) prefix!426)) b!3882457))

(declare-fun m!4441001 () Bool)

(assert (=> b!3882446 m!4441001))

(declare-fun m!4441003 () Bool)

(assert (=> b!3882446 m!4441003))

(declare-fun m!4441005 () Bool)

(assert (=> bm!282909 m!4441005))

(declare-fun m!4441007 () Bool)

(assert (=> b!3882463 m!4441007))

(declare-fun m!4441009 () Bool)

(assert (=> b!3882440 m!4441009))

(declare-fun m!4441011 () Bool)

(assert (=> b!3882452 m!4441011))

(declare-fun m!4441013 () Bool)

(assert (=> b!3882472 m!4441013))

(declare-fun m!4441015 () Bool)

(assert (=> b!3882472 m!4441015))

(declare-fun m!4441017 () Bool)

(assert (=> b!3882472 m!4441017))

(declare-fun m!4441019 () Bool)

(assert (=> b!3882467 m!4441019))

(declare-fun m!4441021 () Bool)

(assert (=> b!3882464 m!4441021))

(declare-fun m!4441023 () Bool)

(assert (=> b!3882464 m!4441023))

(declare-fun m!4441025 () Bool)

(assert (=> b!3882464 m!4441025))

(assert (=> b!3882464 m!4441021))

(declare-fun m!4441027 () Bool)

(assert (=> b!3882464 m!4441027))

(declare-fun m!4441029 () Bool)

(assert (=> b!3882464 m!4441029))

(declare-fun m!4441031 () Bool)

(assert (=> b!3882464 m!4441031))

(declare-fun m!4441033 () Bool)

(assert (=> b!3882464 m!4441033))

(declare-fun m!4441035 () Bool)

(assert (=> b!3882464 m!4441035))

(declare-fun m!4441037 () Bool)

(assert (=> b!3882464 m!4441037))

(assert (=> b!3882464 m!4441023))

(declare-fun m!4441039 () Bool)

(assert (=> b!3882464 m!4441039))

(declare-fun m!4441041 () Bool)

(assert (=> b!3882464 m!4441041))

(declare-fun m!4441043 () Bool)

(assert (=> b!3882464 m!4441043))

(declare-fun m!4441045 () Bool)

(assert (=> b!3882464 m!4441045))

(declare-fun m!4441047 () Bool)

(assert (=> b!3882464 m!4441047))

(declare-fun m!4441049 () Bool)

(assert (=> b!3882445 m!4441049))

(declare-fun m!4441051 () Bool)

(assert (=> b!3882442 m!4441051))

(declare-fun m!4441053 () Bool)

(assert (=> b!3882438 m!4441053))

(declare-fun m!4441055 () Bool)

(assert (=> b!3882439 m!4441055))

(declare-fun m!4441057 () Bool)

(assert (=> b!3882468 m!4441057))

(declare-fun m!4441059 () Bool)

(assert (=> b!3882455 m!4441059))

(declare-fun m!4441061 () Bool)

(assert (=> b!3882444 m!4441061))

(declare-fun m!4441063 () Bool)

(assert (=> b!3882444 m!4441063))

(declare-fun m!4441065 () Bool)

(assert (=> b!3882460 m!4441065))

(declare-fun m!4441067 () Bool)

(assert (=> b!3882460 m!4441067))

(declare-fun m!4441069 () Bool)

(assert (=> b!3882454 m!4441069))

(declare-fun m!4441071 () Bool)

(assert (=> b!3882453 m!4441071))

(declare-fun m!4441073 () Bool)

(assert (=> b!3882453 m!4441073))

(declare-fun m!4441075 () Bool)

(assert (=> b!3882451 m!4441075))

(declare-fun m!4441077 () Bool)

(assert (=> b!3882450 m!4441077))

(declare-fun m!4441079 () Bool)

(assert (=> b!3882449 m!4441079))

(declare-fun m!4441081 () Bool)

(assert (=> b!3882461 m!4441081))

(declare-fun m!4441083 () Bool)

(assert (=> b!3882443 m!4441083))

(declare-fun m!4441085 () Bool)

(assert (=> b!3882443 m!4441085))

(declare-fun m!4441087 () Bool)

(assert (=> b!3882462 m!4441087))

(check-sat b_and!291393 (not b!3882451) b_and!291395 (not b!3882445) tp_is_empty!19629 (not b!3882444) (not b!3882469) (not b!3882462) (not b!3882467) (not b_next!106005) (not b!3882454) (not b!3882450) (not b!3882439) (not bm!282909) (not b!3882470) (not b!3882446) (not b!3882440) (not b!3882457) (not b!3882463) b_and!291387 b_and!291383 (not b_next!106001) (not b_next!106013) (not b!3882438) (not b!3882460) (not b_next!106003) (not b!3882461) (not b!3882465) (not b!3882455) (not b!3882442) (not b!3882452) (not b!3882443) b_and!291389 (not b!3882468) b_and!291385 (not b_next!106015) (not b!3882449) (not b!3882472) (not b_next!106007) (not b!3882464) (not b_next!106011) (not b!3882453) b_and!291391 b_and!291397 (not b_next!106009))
(check-sat b_and!291393 b_and!291395 (not b_next!106003) (not b_next!106005) (not b_next!106015) (not b_next!106007) (not b_next!106011) b_and!291387 b_and!291383 (not b_next!106001) (not b_next!106013) b_and!291389 b_and!291385 b_and!291391 b_and!291397 (not b_next!106009))
