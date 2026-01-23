; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!299288 () Bool)

(assert start!299288)

(declare-fun b!3191716 () Bool)

(declare-fun b_free!84541 () Bool)

(declare-fun b_next!85245 () Bool)

(assert (=> b!3191716 (= b_free!84541 (not b_next!85245))))

(declare-fun tp!1009129 () Bool)

(declare-fun b_and!211551 () Bool)

(assert (=> b!3191716 (= tp!1009129 b_and!211551)))

(declare-fun b_free!84543 () Bool)

(declare-fun b_next!85247 () Bool)

(assert (=> b!3191716 (= b_free!84543 (not b_next!85247))))

(declare-fun tp!1009131 () Bool)

(declare-fun b_and!211553 () Bool)

(assert (=> b!3191716 (= tp!1009131 b_and!211553)))

(declare-fun b!3191711 () Bool)

(declare-fun b_free!84545 () Bool)

(declare-fun b_next!85249 () Bool)

(assert (=> b!3191711 (= b_free!84545 (not b_next!85249))))

(declare-fun tp!1009132 () Bool)

(declare-fun b_and!211555 () Bool)

(assert (=> b!3191711 (= tp!1009132 b_and!211555)))

(declare-fun b_free!84547 () Bool)

(declare-fun b_next!85251 () Bool)

(assert (=> b!3191711 (= b_free!84547 (not b_next!85251))))

(declare-fun tp!1009127 () Bool)

(declare-fun b_and!211557 () Bool)

(assert (=> b!3191711 (= tp!1009127 b_and!211557)))

(declare-fun b!3191717 () Bool)

(declare-fun b_free!84549 () Bool)

(declare-fun b_next!85253 () Bool)

(assert (=> b!3191717 (= b_free!84549 (not b_next!85253))))

(declare-fun tp!1009126 () Bool)

(declare-fun b_and!211559 () Bool)

(assert (=> b!3191717 (= tp!1009126 b_and!211559)))

(declare-fun b_free!84551 () Bool)

(declare-fun b_next!85255 () Bool)

(assert (=> b!3191717 (= b_free!84551 (not b_next!85255))))

(declare-fun tp!1009121 () Bool)

(declare-fun b_and!211561 () Bool)

(assert (=> b!3191717 (= tp!1009121 b_and!211561)))

(declare-fun tp!1009133 () Bool)

(declare-datatypes ((String!40320 0))(
  ( (String!40321 (value!167695 String)) )
))
(declare-datatypes ((C!20038 0))(
  ( (C!20039 (val!12067 Int)) )
))
(declare-datatypes ((Regex!9926 0))(
  ( (ElementMatch!9926 (c!535880 C!20038)) (Concat!15323 (regOne!20364 Regex!9926) (regTwo!20364 Regex!9926)) (EmptyExpr!9926) (Star!9926 (reg!10255 Regex!9926)) (EmptyLang!9926) (Union!9926 (regOne!20365 Regex!9926) (regTwo!20365 Regex!9926)) )
))
(declare-datatypes ((List!36060 0))(
  ( (Nil!35936) (Cons!35936 (h!41356 (_ BitVec 16)) (t!236223 List!36060)) )
))
(declare-datatypes ((TokenValue!5397 0))(
  ( (FloatLiteralValue!10794 (text!38224 List!36060)) (TokenValueExt!5396 (__x!23011 Int)) (Broken!26985 (value!167696 List!36060)) (Object!5520) (End!5397) (Def!5397) (Underscore!5397) (Match!5397) (Else!5397) (Error!5397) (Case!5397) (If!5397) (Extends!5397) (Abstract!5397) (Class!5397) (Val!5397) (DelimiterValue!10794 (del!5457 List!36060)) (KeywordValue!5403 (value!167697 List!36060)) (CommentValue!10794 (value!167698 List!36060)) (WhitespaceValue!10794 (value!167699 List!36060)) (IndentationValue!5397 (value!167700 List!36060)) (String!40322) (Int32!5397) (Broken!26986 (value!167701 List!36060)) (Boolean!5398) (Unit!50360) (OperatorValue!5400 (op!5457 List!36060)) (IdentifierValue!10794 (value!167702 List!36060)) (IdentifierValue!10795 (value!167703 List!36060)) (WhitespaceValue!10795 (value!167704 List!36060)) (True!10794) (False!10794) (Broken!26987 (value!167705 List!36060)) (Broken!26988 (value!167706 List!36060)) (True!10795) (RightBrace!5397) (RightBracket!5397) (Colon!5397) (Null!5397) (Comma!5397) (LeftBracket!5397) (False!10795) (LeftBrace!5397) (ImaginaryLiteralValue!5397 (text!38225 List!36060)) (StringLiteralValue!16191 (value!167707 List!36060)) (EOFValue!5397 (value!167708 List!36060)) (IdentValue!5397 (value!167709 List!36060)) (DelimiterValue!10795 (value!167710 List!36060)) (DedentValue!5397 (value!167711 List!36060)) (NewLineValue!5397 (value!167712 List!36060)) (IntegerValue!16191 (value!167713 (_ BitVec 32)) (text!38226 List!36060)) (IntegerValue!16192 (value!167714 Int) (text!38227 List!36060)) (Times!5397) (Or!5397) (Equal!5397) (Minus!5397) (Broken!26989 (value!167715 List!36060)) (And!5397) (Div!5397) (LessEqual!5397) (Mod!5397) (Concat!15324) (Not!5397) (Plus!5397) (SpaceValue!5397 (value!167716 List!36060)) (IntegerValue!16193 (value!167717 Int) (text!38228 List!36060)) (StringLiteralValue!16192 (text!38229 List!36060)) (FloatLiteralValue!10795 (text!38230 List!36060)) (BytesLiteralValue!5397 (value!167718 List!36060)) (CommentValue!10795 (value!167719 List!36060)) (StringLiteralValue!16193 (value!167720 List!36060)) (ErrorTokenValue!5397 (msg!5458 List!36060)) )
))
(declare-datatypes ((List!36061 0))(
  ( (Nil!35937) (Cons!35937 (h!41357 C!20038) (t!236224 List!36061)) )
))
(declare-datatypes ((IArray!21423 0))(
  ( (IArray!21424 (innerList!10769 List!36061)) )
))
(declare-datatypes ((Conc!10709 0))(
  ( (Node!10709 (left!27935 Conc!10709) (right!28265 Conc!10709) (csize!21648 Int) (cheight!10920 Int)) (Leaf!16904 (xs!13827 IArray!21423) (csize!21649 Int)) (Empty!10709) )
))
(declare-datatypes ((BalanceConc!21032 0))(
  ( (BalanceConc!21033 (c!535881 Conc!10709)) )
))
(declare-datatypes ((TokenValueInjection!10222 0))(
  ( (TokenValueInjection!10223 (toValue!7231 Int) (toChars!7090 Int)) )
))
(declare-datatypes ((Rule!10134 0))(
  ( (Rule!10135 (regex!5167 Regex!9926) (tag!5685 String!40320) (isSeparator!5167 Bool) (transformation!5167 TokenValueInjection!10222)) )
))
(declare-datatypes ((Token!9700 0))(
  ( (Token!9701 (value!167721 TokenValue!5397) (rule!7599 Rule!10134) (size!27084 Int) (originalCharacters!5881 List!36061)) )
))
(declare-datatypes ((List!36062 0))(
  ( (Nil!35938) (Cons!35938 (h!41358 Token!9700) (t!236225 List!36062)) )
))
(declare-fun tokens!494 () List!36062)

(declare-fun e!1989440 () Bool)

(declare-fun e!1989429 () Bool)

(declare-fun b!3191705 () Bool)

(declare-fun inv!21 (TokenValue!5397) Bool)

(assert (=> b!3191705 (= e!1989429 (and (inv!21 (value!167721 (h!41358 tokens!494))) e!1989440 tp!1009133))))

(declare-fun res!1298303 () Bool)

(declare-fun e!1989433 () Bool)

(assert (=> start!299288 (=> (not res!1298303) (not e!1989433))))

(declare-datatypes ((LexerInterface!4756 0))(
  ( (LexerInterfaceExt!4753 (__x!23012 Int)) (Lexer!4754) )
))
(declare-fun thiss!18206 () LexerInterface!4756)

(assert (=> start!299288 (= res!1298303 (is-Lexer!4754 thiss!18206))))

(assert (=> start!299288 e!1989433))

(assert (=> start!299288 true))

(declare-fun e!1989431 () Bool)

(assert (=> start!299288 e!1989431))

(declare-fun e!1989425 () Bool)

(assert (=> start!299288 e!1989425))

(declare-fun separatorToken!241 () Token!9700)

(declare-fun e!1989441 () Bool)

(declare-fun inv!48783 (Token!9700) Bool)

(assert (=> start!299288 (and (inv!48783 separatorToken!241) e!1989441)))

(declare-fun b!3191706 () Bool)

(declare-fun res!1298300 () Bool)

(assert (=> b!3191706 (=> (not res!1298300) (not e!1989433))))

(declare-datatypes ((List!36063 0))(
  ( (Nil!35939) (Cons!35939 (h!41359 Rule!10134) (t!236226 List!36063)) )
))
(declare-fun rules!2135 () List!36063)

(declare-fun rulesProduceIndividualToken!2248 (LexerInterface!4756 List!36063 Token!9700) Bool)

(assert (=> b!3191706 (= res!1298300 (rulesProduceIndividualToken!2248 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun tp!1009124 () Bool)

(declare-fun b!3191707 () Bool)

(declare-fun e!1989434 () Bool)

(assert (=> b!3191707 (= e!1989441 (and (inv!21 (value!167721 separatorToken!241)) e!1989434 tp!1009124))))

(declare-fun tp!1009125 () Bool)

(declare-fun e!1989437 () Bool)

(declare-fun b!3191708 () Bool)

(declare-fun inv!48780 (String!40320) Bool)

(declare-fun inv!48784 (TokenValueInjection!10222) Bool)

(assert (=> b!3191708 (= e!1989440 (and tp!1009125 (inv!48780 (tag!5685 (rule!7599 (h!41358 tokens!494)))) (inv!48784 (transformation!5167 (rule!7599 (h!41358 tokens!494)))) e!1989437))))

(declare-fun b!3191709 () Bool)

(declare-fun res!1298305 () Bool)

(assert (=> b!3191709 (=> (not res!1298305) (not e!1989433))))

(assert (=> b!3191709 (= res!1298305 (and (not (is-Nil!35938 tokens!494)) (not (is-Nil!35938 (t!236225 tokens!494)))))))

(declare-fun b!3191710 () Bool)

(declare-fun e!1989430 () Bool)

(declare-fun tp!1009123 () Bool)

(assert (=> b!3191710 (= e!1989431 (and e!1989430 tp!1009123))))

(assert (=> b!3191711 (= e!1989437 (and tp!1009132 tp!1009127))))

(declare-fun b!3191712 () Bool)

(declare-fun res!1298309 () Bool)

(assert (=> b!3191712 (=> (not res!1298309) (not e!1989433))))

(declare-fun isEmpty!20050 (List!36063) Bool)

(assert (=> b!3191712 (= res!1298309 (not (isEmpty!20050 rules!2135)))))

(declare-fun b!3191713 () Bool)

(declare-fun res!1298306 () Bool)

(assert (=> b!3191713 (=> (not res!1298306) (not e!1989433))))

(declare-datatypes ((IArray!21425 0))(
  ( (IArray!21426 (innerList!10770 List!36062)) )
))
(declare-datatypes ((Conc!10710 0))(
  ( (Node!10710 (left!27936 Conc!10710) (right!28266 Conc!10710) (csize!21650 Int) (cheight!10921 Int)) (Leaf!16905 (xs!13828 IArray!21425) (csize!21651 Int)) (Empty!10710) )
))
(declare-datatypes ((BalanceConc!21034 0))(
  ( (BalanceConc!21035 (c!535882 Conc!10710)) )
))
(declare-fun rulesProduceEachTokenIndividually!1207 (LexerInterface!4756 List!36063 BalanceConc!21034) Bool)

(declare-fun seqFromList!3407 (List!36062) BalanceConc!21034)

(assert (=> b!3191713 (= res!1298306 (rulesProduceEachTokenIndividually!1207 thiss!18206 rules!2135 (seqFromList!3407 tokens!494)))))

(declare-fun b!3191714 () Bool)

(declare-fun res!1298304 () Bool)

(assert (=> b!3191714 (=> (not res!1298304) (not e!1989433))))

(assert (=> b!3191714 (= res!1298304 (isSeparator!5167 (rule!7599 separatorToken!241)))))

(declare-fun tp!1009130 () Bool)

(declare-fun b!3191715 () Bool)

(assert (=> b!3191715 (= e!1989425 (and (inv!48783 (h!41358 tokens!494)) e!1989429 tp!1009130))))

(declare-fun e!1989435 () Bool)

(assert (=> b!3191716 (= e!1989435 (and tp!1009129 tp!1009131))))

(declare-fun e!1989426 () Bool)

(assert (=> b!3191717 (= e!1989426 (and tp!1009126 tp!1009121))))

(declare-fun b!3191718 () Bool)

(declare-fun e!1989436 () Bool)

(assert (=> b!3191718 (= e!1989436 true)))

(declare-fun lt!1075108 () List!36061)

(declare-fun list!12764 (BalanceConc!21032) List!36061)

(declare-fun charsOf!3183 (Token!9700) BalanceConc!21032)

(assert (=> b!3191718 (= lt!1075108 (list!12764 (charsOf!3183 (h!41358 tokens!494))))))

(declare-fun b!3191719 () Bool)

(assert (=> b!3191719 (= e!1989433 (not e!1989436))))

(declare-fun res!1298308 () Bool)

(assert (=> b!3191719 (=> res!1298308 e!1989436)))

(declare-fun lt!1075109 () BalanceConc!21032)

(declare-fun printList!1306 (LexerInterface!4756 List!36062) List!36061)

(assert (=> b!3191719 (= res!1298308 (not (= (list!12764 lt!1075109) (printList!1306 thiss!18206 (Cons!35938 (h!41358 tokens!494) Nil!35938)))))))

(declare-fun lt!1075107 () BalanceConc!21034)

(declare-fun printTailRec!1253 (LexerInterface!4756 BalanceConc!21034 Int BalanceConc!21032) BalanceConc!21032)

(assert (=> b!3191719 (= lt!1075109 (printTailRec!1253 thiss!18206 lt!1075107 0 (BalanceConc!21033 Empty!10709)))))

(declare-fun print!1821 (LexerInterface!4756 BalanceConc!21034) BalanceConc!21032)

(assert (=> b!3191719 (= lt!1075109 (print!1821 thiss!18206 lt!1075107))))

(declare-fun singletonSeq!2263 (Token!9700) BalanceConc!21034)

(assert (=> b!3191719 (= lt!1075107 (singletonSeq!2263 (h!41358 tokens!494)))))

(declare-fun tp!1009128 () Bool)

(declare-fun b!3191720 () Bool)

(assert (=> b!3191720 (= e!1989434 (and tp!1009128 (inv!48780 (tag!5685 (rule!7599 separatorToken!241))) (inv!48784 (transformation!5167 (rule!7599 separatorToken!241))) e!1989435))))

(declare-fun b!3191721 () Bool)

(declare-fun tp!1009122 () Bool)

(assert (=> b!3191721 (= e!1989430 (and tp!1009122 (inv!48780 (tag!5685 (h!41359 rules!2135))) (inv!48784 (transformation!5167 (h!41359 rules!2135))) e!1989426))))

(declare-fun b!3191722 () Bool)

(declare-fun res!1298307 () Bool)

(assert (=> b!3191722 (=> (not res!1298307) (not e!1989433))))

(declare-fun sepAndNonSepRulesDisjointChars!1361 (List!36063 List!36063) Bool)

(assert (=> b!3191722 (= res!1298307 (sepAndNonSepRulesDisjointChars!1361 rules!2135 rules!2135))))

(declare-fun b!3191723 () Bool)

(declare-fun res!1298301 () Bool)

(assert (=> b!3191723 (=> (not res!1298301) (not e!1989433))))

(declare-fun rulesInvariant!4153 (LexerInterface!4756 List!36063) Bool)

(assert (=> b!3191723 (= res!1298301 (rulesInvariant!4153 thiss!18206 rules!2135))))

(declare-fun b!3191724 () Bool)

(declare-fun res!1298302 () Bool)

(assert (=> b!3191724 (=> (not res!1298302) (not e!1989433))))

(declare-fun lambda!116792 () Int)

(declare-fun forall!7299 (List!36062 Int) Bool)

(assert (=> b!3191724 (= res!1298302 (forall!7299 tokens!494 lambda!116792))))

(assert (= (and start!299288 res!1298303) b!3191712))

(assert (= (and b!3191712 res!1298309) b!3191723))

(assert (= (and b!3191723 res!1298301) b!3191713))

(assert (= (and b!3191713 res!1298306) b!3191706))

(assert (= (and b!3191706 res!1298300) b!3191714))

(assert (= (and b!3191714 res!1298304) b!3191724))

(assert (= (and b!3191724 res!1298302) b!3191722))

(assert (= (and b!3191722 res!1298307) b!3191709))

(assert (= (and b!3191709 res!1298305) b!3191719))

(assert (= (and b!3191719 (not res!1298308)) b!3191718))

(assert (= b!3191721 b!3191717))

(assert (= b!3191710 b!3191721))

(assert (= (and start!299288 (is-Cons!35939 rules!2135)) b!3191710))

(assert (= b!3191708 b!3191711))

(assert (= b!3191705 b!3191708))

(assert (= b!3191715 b!3191705))

(assert (= (and start!299288 (is-Cons!35938 tokens!494)) b!3191715))

(assert (= b!3191720 b!3191716))

(assert (= b!3191707 b!3191720))

(assert (= start!299288 b!3191707))

(declare-fun m!3450979 () Bool)

(assert (=> b!3191713 m!3450979))

(assert (=> b!3191713 m!3450979))

(declare-fun m!3450981 () Bool)

(assert (=> b!3191713 m!3450981))

(declare-fun m!3450983 () Bool)

(assert (=> b!3191712 m!3450983))

(declare-fun m!3450985 () Bool)

(assert (=> b!3191706 m!3450985))

(declare-fun m!3450987 () Bool)

(assert (=> b!3191705 m!3450987))

(declare-fun m!3450989 () Bool)

(assert (=> b!3191722 m!3450989))

(declare-fun m!3450991 () Bool)

(assert (=> b!3191718 m!3450991))

(assert (=> b!3191718 m!3450991))

(declare-fun m!3450993 () Bool)

(assert (=> b!3191718 m!3450993))

(declare-fun m!3450995 () Bool)

(assert (=> b!3191724 m!3450995))

(declare-fun m!3450997 () Bool)

(assert (=> start!299288 m!3450997))

(declare-fun m!3450999 () Bool)

(assert (=> b!3191720 m!3450999))

(declare-fun m!3451001 () Bool)

(assert (=> b!3191720 m!3451001))

(declare-fun m!3451003 () Bool)

(assert (=> b!3191715 m!3451003))

(declare-fun m!3451005 () Bool)

(assert (=> b!3191708 m!3451005))

(declare-fun m!3451007 () Bool)

(assert (=> b!3191708 m!3451007))

(declare-fun m!3451009 () Bool)

(assert (=> b!3191707 m!3451009))

(declare-fun m!3451011 () Bool)

(assert (=> b!3191721 m!3451011))

(declare-fun m!3451013 () Bool)

(assert (=> b!3191721 m!3451013))

(declare-fun m!3451015 () Bool)

(assert (=> b!3191723 m!3451015))

(declare-fun m!3451017 () Bool)

(assert (=> b!3191719 m!3451017))

(declare-fun m!3451019 () Bool)

(assert (=> b!3191719 m!3451019))

(declare-fun m!3451021 () Bool)

(assert (=> b!3191719 m!3451021))

(declare-fun m!3451023 () Bool)

(assert (=> b!3191719 m!3451023))

(declare-fun m!3451025 () Bool)

(assert (=> b!3191719 m!3451025))

(push 1)

(assert b_and!211561)

(assert (not b!3191708))

(assert (not b!3191712))

(assert (not b!3191705))

(assert (not b!3191724))

(assert (not b_next!85245))

(assert (not b_next!85247))

(assert (not b!3191715))

(assert (not b!3191718))

(assert (not start!299288))

(assert b_and!211551)

(assert b_and!211557)

(assert (not b!3191719))

(assert b_and!211555)

(assert (not b!3191706))

(assert (not b_next!85249))

(assert (not b!3191707))

(assert (not b!3191721))

(assert (not b!3191713))

(assert (not b_next!85255))

(assert (not b!3191723))

(assert b_and!211559)

(assert (not b!3191710))

(assert (not b_next!85251))

(assert b_and!211553)

(assert (not b!3191720))

(assert (not b!3191722))

(assert (not b_next!85253))

(check-sat)

(pop 1)

(push 1)

(assert b_and!211561)

(assert b_and!211551)

(assert (not b_next!85249))

(assert (not b_next!85255))

(assert b_and!211559)

(assert (not b_next!85251))

(assert (not b_next!85245))

(assert b_and!211553)

(assert (not b_next!85247))

(assert (not b_next!85253))

(assert b_and!211557)

(assert b_and!211555)

(check-sat)

(pop 1)

