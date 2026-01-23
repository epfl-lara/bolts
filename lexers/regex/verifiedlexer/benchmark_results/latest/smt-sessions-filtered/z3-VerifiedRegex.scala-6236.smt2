; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!302650 () Bool)

(assert start!302650)

(declare-fun b!3223547 () Bool)

(declare-fun b_free!85833 () Bool)

(declare-fun b_next!86537 () Bool)

(assert (=> b!3223547 (= b_free!85833 (not b_next!86537))))

(declare-fun tp!1015432 () Bool)

(declare-fun b_and!215535 () Bool)

(assert (=> b!3223547 (= tp!1015432 b_and!215535)))

(declare-fun b_free!85835 () Bool)

(declare-fun b_next!86539 () Bool)

(assert (=> b!3223547 (= b_free!85835 (not b_next!86539))))

(declare-fun tp!1015430 () Bool)

(declare-fun b_and!215537 () Bool)

(assert (=> b!3223547 (= tp!1015430 b_and!215537)))

(declare-fun b!3223541 () Bool)

(declare-fun b_free!85837 () Bool)

(declare-fun b_next!86541 () Bool)

(assert (=> b!3223541 (= b_free!85837 (not b_next!86541))))

(declare-fun tp!1015442 () Bool)

(declare-fun b_and!215539 () Bool)

(assert (=> b!3223541 (= tp!1015442 b_and!215539)))

(declare-fun b_free!85839 () Bool)

(declare-fun b_next!86543 () Bool)

(assert (=> b!3223541 (= b_free!85839 (not b_next!86543))))

(declare-fun tp!1015439 () Bool)

(declare-fun b_and!215541 () Bool)

(assert (=> b!3223541 (= tp!1015439 b_and!215541)))

(declare-fun b!3223514 () Bool)

(declare-fun b_free!85841 () Bool)

(declare-fun b_next!86545 () Bool)

(assert (=> b!3223514 (= b_free!85841 (not b_next!86545))))

(declare-fun tp!1015435 () Bool)

(declare-fun b_and!215543 () Bool)

(assert (=> b!3223514 (= tp!1015435 b_and!215543)))

(declare-fun b_free!85843 () Bool)

(declare-fun b_next!86547 () Bool)

(assert (=> b!3223514 (= b_free!85843 (not b_next!86547))))

(declare-fun tp!1015434 () Bool)

(declare-fun b_and!215545 () Bool)

(assert (=> b!3223514 (= tp!1015434 b_and!215545)))

(declare-fun bs!542639 () Bool)

(declare-fun b!3223546 () Bool)

(declare-fun b!3223537 () Bool)

(assert (= bs!542639 (and b!3223546 b!3223537)))

(declare-fun lambda!118011 () Int)

(declare-fun lambda!118010 () Int)

(assert (=> bs!542639 (not (= lambda!118011 lambda!118010))))

(declare-fun b!3223570 () Bool)

(declare-fun e!2010374 () Bool)

(assert (=> b!3223570 (= e!2010374 true)))

(declare-fun b!3223569 () Bool)

(declare-fun e!2010373 () Bool)

(assert (=> b!3223569 (= e!2010373 e!2010374)))

(declare-fun b!3223568 () Bool)

(declare-fun e!2010372 () Bool)

(assert (=> b!3223568 (= e!2010372 e!2010373)))

(assert (=> b!3223546 e!2010372))

(assert (= b!3223569 b!3223570))

(assert (= b!3223568 b!3223569))

(declare-datatypes ((C!20208 0))(
  ( (C!20209 (val!12152 Int)) )
))
(declare-datatypes ((Regex!10011 0))(
  ( (ElementMatch!10011 (c!541832 C!20208)) (Concat!15493 (regOne!20534 Regex!10011) (regTwo!20534 Regex!10011)) (EmptyExpr!10011) (Star!10011 (reg!10340 Regex!10011)) (EmptyLang!10011) (Union!10011 (regOne!20535 Regex!10011) (regTwo!20535 Regex!10011)) )
))
(declare-datatypes ((List!36418 0))(
  ( (Nil!36294) (Cons!36294 (h!41714 (_ BitVec 16)) (t!240663 List!36418)) )
))
(declare-datatypes ((TokenValue!5482 0))(
  ( (FloatLiteralValue!10964 (text!38819 List!36418)) (TokenValueExt!5481 (__x!23181 Int)) (Broken!27410 (value!170116 List!36418)) (Object!5605) (End!5482) (Def!5482) (Underscore!5482) (Match!5482) (Else!5482) (Error!5482) (Case!5482) (If!5482) (Extends!5482) (Abstract!5482) (Class!5482) (Val!5482) (DelimiterValue!10964 (del!5542 List!36418)) (KeywordValue!5488 (value!170117 List!36418)) (CommentValue!10964 (value!170118 List!36418)) (WhitespaceValue!10964 (value!170119 List!36418)) (IndentationValue!5482 (value!170120 List!36418)) (String!40743) (Int32!5482) (Broken!27411 (value!170121 List!36418)) (Boolean!5483) (Unit!50899) (OperatorValue!5485 (op!5542 List!36418)) (IdentifierValue!10964 (value!170122 List!36418)) (IdentifierValue!10965 (value!170123 List!36418)) (WhitespaceValue!10965 (value!170124 List!36418)) (True!10964) (False!10964) (Broken!27412 (value!170125 List!36418)) (Broken!27413 (value!170126 List!36418)) (True!10965) (RightBrace!5482) (RightBracket!5482) (Colon!5482) (Null!5482) (Comma!5482) (LeftBracket!5482) (False!10965) (LeftBrace!5482) (ImaginaryLiteralValue!5482 (text!38820 List!36418)) (StringLiteralValue!16446 (value!170127 List!36418)) (EOFValue!5482 (value!170128 List!36418)) (IdentValue!5482 (value!170129 List!36418)) (DelimiterValue!10965 (value!170130 List!36418)) (DedentValue!5482 (value!170131 List!36418)) (NewLineValue!5482 (value!170132 List!36418)) (IntegerValue!16446 (value!170133 (_ BitVec 32)) (text!38821 List!36418)) (IntegerValue!16447 (value!170134 Int) (text!38822 List!36418)) (Times!5482) (Or!5482) (Equal!5482) (Minus!5482) (Broken!27414 (value!170135 List!36418)) (And!5482) (Div!5482) (LessEqual!5482) (Mod!5482) (Concat!15494) (Not!5482) (Plus!5482) (SpaceValue!5482 (value!170136 List!36418)) (IntegerValue!16448 (value!170137 Int) (text!38823 List!36418)) (StringLiteralValue!16447 (text!38824 List!36418)) (FloatLiteralValue!10965 (text!38825 List!36418)) (BytesLiteralValue!5482 (value!170138 List!36418)) (CommentValue!10965 (value!170139 List!36418)) (StringLiteralValue!16448 (value!170140 List!36418)) (ErrorTokenValue!5482 (msg!5543 List!36418)) )
))
(declare-datatypes ((List!36419 0))(
  ( (Nil!36295) (Cons!36295 (h!41715 C!20208) (t!240664 List!36419)) )
))
(declare-datatypes ((IArray!21763 0))(
  ( (IArray!21764 (innerList!10939 List!36419)) )
))
(declare-datatypes ((Conc!10879 0))(
  ( (Node!10879 (left!28259 Conc!10879) (right!28589 Conc!10879) (csize!21988 Int) (cheight!11090 Int)) (Leaf!17116 (xs!13997 IArray!21763) (csize!21989 Int)) (Empty!10879) )
))
(declare-datatypes ((BalanceConc!21372 0))(
  ( (BalanceConc!21373 (c!541833 Conc!10879)) )
))
(declare-datatypes ((String!40744 0))(
  ( (String!40745 (value!170141 String)) )
))
(declare-datatypes ((TokenValueInjection!10392 0))(
  ( (TokenValueInjection!10393 (toValue!7348 Int) (toChars!7207 Int)) )
))
(declare-datatypes ((Rule!10304 0))(
  ( (Rule!10305 (regex!5252 Regex!10011) (tag!5784 String!40744) (isSeparator!5252 Bool) (transformation!5252 TokenValueInjection!10392)) )
))
(declare-datatypes ((List!36420 0))(
  ( (Nil!36296) (Cons!36296 (h!41716 Rule!10304) (t!240665 List!36420)) )
))
(declare-fun rules!2135 () List!36420)

(get-info :version)

(assert (= (and b!3223546 ((_ is Cons!36296) rules!2135)) b!3223568))

(declare-fun order!18667 () Int)

(declare-fun order!18665 () Int)

(declare-fun dynLambda!14721 (Int Int) Int)

(declare-fun dynLambda!14722 (Int Int) Int)

(assert (=> b!3223570 (< (dynLambda!14721 order!18665 (toValue!7348 (transformation!5252 (h!41716 rules!2135)))) (dynLambda!14722 order!18667 lambda!118011))))

(declare-fun order!18669 () Int)

(declare-fun dynLambda!14723 (Int Int) Int)

(assert (=> b!3223570 (< (dynLambda!14723 order!18669 (toChars!7207 (transformation!5252 (h!41716 rules!2135)))) (dynLambda!14722 order!18667 lambda!118011))))

(assert (=> b!3223546 true))

(declare-fun e!2010355 () Bool)

(assert (=> b!3223514 (= e!2010355 (and tp!1015435 tp!1015434))))

(declare-fun b!3223515 () Bool)

(declare-fun e!2010363 () Bool)

(declare-fun e!2010341 () Bool)

(declare-fun tp!1015440 () Bool)

(assert (=> b!3223515 (= e!2010363 (and e!2010341 tp!1015440))))

(declare-fun b!3223516 () Bool)

(declare-fun res!1312876 () Bool)

(declare-fun e!2010365 () Bool)

(assert (=> b!3223516 (=> (not res!1312876) (not e!2010365))))

(declare-datatypes ((Token!9870 0))(
  ( (Token!9871 (value!170142 TokenValue!5482) (rule!7710 Rule!10304) (size!27367 Int) (originalCharacters!5966 List!36419)) )
))
(declare-datatypes ((List!36421 0))(
  ( (Nil!36297) (Cons!36297 (h!41717 Token!9870) (t!240666 List!36421)) )
))
(declare-datatypes ((IArray!21765 0))(
  ( (IArray!21766 (innerList!10940 List!36421)) )
))
(declare-datatypes ((Conc!10880 0))(
  ( (Node!10880 (left!28260 Conc!10880) (right!28590 Conc!10880) (csize!21990 Int) (cheight!11091 Int)) (Leaf!17117 (xs!13998 IArray!21765) (csize!21991 Int)) (Empty!10880) )
))
(declare-datatypes ((BalanceConc!21374 0))(
  ( (BalanceConc!21375 (c!541834 Conc!10880)) )
))
(declare-datatypes ((tuple2!35736 0))(
  ( (tuple2!35737 (_1!21002 BalanceConc!21374) (_2!21002 BalanceConc!21372)) )
))
(declare-fun lt!1093677 () tuple2!35736)

(declare-fun separatorToken!241 () Token!9870)

(declare-fun apply!8271 (BalanceConc!21374 Int) Token!9870)

(assert (=> b!3223516 (= res!1312876 (= (apply!8271 (_1!21002 lt!1093677) 0) separatorToken!241))))

(declare-fun b!3223517 () Bool)

(declare-fun tp!1015433 () Bool)

(declare-fun e!2010351 () Bool)

(declare-fun e!2010350 () Bool)

(declare-fun tokens!494 () List!36421)

(declare-fun inv!49162 (Token!9870) Bool)

(assert (=> b!3223517 (= e!2010351 (and (inv!49162 (h!41717 tokens!494)) e!2010350 tp!1015433))))

(declare-fun b!3223518 () Bool)

(declare-fun e!2010331 () Bool)

(declare-fun e!2010330 () Bool)

(assert (=> b!3223518 (= e!2010331 e!2010330)))

(declare-fun res!1312900 () Bool)

(assert (=> b!3223518 (=> res!1312900 e!2010330)))

(declare-fun lt!1093653 () List!36419)

(declare-fun lt!1093664 () List!36419)

(declare-fun lt!1093690 () List!36419)

(assert (=> b!3223518 (= res!1312900 (or (not (= lt!1093690 lt!1093653)) (not (= lt!1093664 lt!1093653))))))

(declare-fun list!12928 (BalanceConc!21372) List!36419)

(declare-fun charsOf!3268 (Token!9870) BalanceConc!21372)

(assert (=> b!3223518 (= lt!1093653 (list!12928 (charsOf!3268 (h!41717 tokens!494))))))

(declare-fun b!3223519 () Bool)

(declare-fun res!1312889 () Bool)

(declare-fun e!2010347 () Bool)

(assert (=> b!3223519 (=> (not res!1312889) (not e!2010347))))

(declare-fun isEmpty!20383 (List!36420) Bool)

(assert (=> b!3223519 (= res!1312889 (not (isEmpty!20383 rules!2135)))))

(declare-fun b!3223520 () Bool)

(declare-fun isEmpty!20384 (BalanceConc!21372) Bool)

(assert (=> b!3223520 (= e!2010365 (isEmpty!20384 (_2!21002 lt!1093677)))))

(declare-fun b!3223521 () Bool)

(declare-fun e!2010364 () Bool)

(declare-fun e!2010337 () Bool)

(assert (=> b!3223521 (= e!2010364 e!2010337)))

(declare-fun res!1312877 () Bool)

(assert (=> b!3223521 (=> (not res!1312877) (not e!2010337))))

(declare-fun lt!1093687 () Rule!10304)

(declare-fun lt!1093688 () List!36419)

(declare-fun matchR!4645 (Regex!10011 List!36419) Bool)

(assert (=> b!3223521 (= res!1312877 (matchR!4645 (regex!5252 lt!1093687) lt!1093688))))

(declare-datatypes ((Option!7209 0))(
  ( (None!7208) (Some!7208 (v!35788 Rule!10304)) )
))
(declare-fun lt!1093670 () Option!7209)

(declare-fun get!11569 (Option!7209) Rule!10304)

(assert (=> b!3223521 (= lt!1093687 (get!11569 lt!1093670))))

(declare-fun b!3223522 () Bool)

(declare-fun res!1312884 () Bool)

(declare-fun e!2010358 () Bool)

(assert (=> b!3223522 (=> (not res!1312884) (not e!2010358))))

(assert (=> b!3223522 (= res!1312884 (isSeparator!5252 (rule!7710 separatorToken!241)))))

(declare-fun b!3223523 () Bool)

(declare-fun e!2010361 () Bool)

(declare-fun lt!1093672 () Rule!10304)

(assert (=> b!3223523 (= e!2010361 (= (rule!7710 (h!41717 tokens!494)) lt!1093672))))

(declare-fun b!3223524 () Bool)

(declare-fun e!2010343 () Bool)

(assert (=> b!3223524 (= e!2010330 e!2010343)))

(declare-fun res!1312899 () Bool)

(assert (=> b!3223524 (=> res!1312899 e!2010343)))

(declare-datatypes ((LexerInterface!4841 0))(
  ( (LexerInterfaceExt!4838 (__x!23182 Int)) (Lexer!4839) )
))
(declare-fun thiss!18206 () LexerInterface!4841)

(declare-fun lt!1093695 () BalanceConc!21372)

(declare-fun isEmpty!20385 (BalanceConc!21374) Bool)

(declare-fun lex!2171 (LexerInterface!4841 List!36420 BalanceConc!21372) tuple2!35736)

(assert (=> b!3223524 (= res!1312899 (isEmpty!20385 (_1!21002 (lex!2171 thiss!18206 rules!2135 lt!1093695))))))

(declare-fun seqFromList!3575 (List!36419) BalanceConc!21372)

(assert (=> b!3223524 (= lt!1093695 (seqFromList!3575 lt!1093653))))

(declare-fun b!3223525 () Bool)

(declare-fun res!1312878 () Bool)

(declare-fun e!2010345 () Bool)

(assert (=> b!3223525 (=> res!1312878 e!2010345)))

(declare-fun lt!1093682 () List!36419)

(declare-fun filter!520 (List!36421 Int) List!36421)

(declare-datatypes ((tuple2!35738 0))(
  ( (tuple2!35739 (_1!21003 List!36421) (_2!21003 List!36419)) )
))
(declare-fun lexList!1325 (LexerInterface!4841 List!36420 List!36419) tuple2!35738)

(assert (=> b!3223525 (= res!1312878 (not (= (filter!520 (_1!21003 (lexList!1325 thiss!18206 rules!2135 lt!1093682)) lambda!118010) (t!240666 tokens!494))))))

(declare-fun b!3223526 () Bool)

(declare-fun e!2010359 () Bool)

(declare-fun tp!1015437 () Bool)

(declare-fun inv!21 (TokenValue!5482) Bool)

(assert (=> b!3223526 (= e!2010350 (and (inv!21 (value!170142 (h!41717 tokens!494))) e!2010359 tp!1015437))))

(declare-fun b!3223527 () Bool)

(declare-fun res!1312891 () Bool)

(assert (=> b!3223527 (=> (not res!1312891) (not e!2010347))))

(declare-fun rulesInvariant!4238 (LexerInterface!4841 List!36420) Bool)

(assert (=> b!3223527 (= res!1312891 (rulesInvariant!4238 thiss!18206 rules!2135))))

(declare-fun b!3223528 () Bool)

(declare-fun e!2010340 () Bool)

(assert (=> b!3223528 (= e!2010340 false)))

(declare-fun b!3223529 () Bool)

(assert (=> b!3223529 (= e!2010337 (= (rule!7710 separatorToken!241) lt!1093687))))

(declare-fun b!3223530 () Bool)

(declare-fun e!2010353 () Bool)

(declare-fun e!2010352 () Bool)

(declare-fun tp!1015436 () Bool)

(assert (=> b!3223530 (= e!2010352 (and (inv!21 (value!170142 separatorToken!241)) e!2010353 tp!1015436))))

(declare-fun b!3223531 () Bool)

(declare-datatypes ((Unit!50900 0))(
  ( (Unit!50901) )
))
(declare-fun e!2010336 () Unit!50900)

(declare-fun Unit!50902 () Unit!50900)

(assert (=> b!3223531 (= e!2010336 Unit!50902)))

(declare-fun lt!1093684 () C!20208)

(declare-fun lt!1093697 () Unit!50900)

(declare-fun lt!1093660 () List!36419)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!416 (Regex!10011 List!36419 C!20208) Unit!50900)

(assert (=> b!3223531 (= lt!1093697 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!416 (regex!5252 (rule!7710 (h!41717 (t!240666 tokens!494)))) lt!1093660 lt!1093684))))

(declare-fun res!1312887 () Bool)

(assert (=> b!3223531 (= res!1312887 (not (matchR!4645 (regex!5252 (rule!7710 (h!41717 (t!240666 tokens!494)))) lt!1093660)))))

(declare-fun e!2010346 () Bool)

(assert (=> b!3223531 (=> (not res!1312887) (not e!2010346))))

(assert (=> b!3223531 e!2010346))

(declare-fun b!3223532 () Bool)

(assert (=> b!3223532 (= e!2010346 false)))

(declare-fun b!3223533 () Bool)

(declare-fun e!2010349 () Bool)

(assert (=> b!3223533 (= e!2010343 e!2010349)))

(declare-fun res!1312875 () Bool)

(assert (=> b!3223533 (=> res!1312875 e!2010349)))

(assert (=> b!3223533 (= res!1312875 (or (isSeparator!5252 (rule!7710 (h!41717 tokens!494))) (isSeparator!5252 (rule!7710 (h!41717 (t!240666 tokens!494))))))))

(declare-fun lt!1093683 () Unit!50900)

(declare-fun forallContained!1223 (List!36421 Int Token!9870) Unit!50900)

(assert (=> b!3223533 (= lt!1093683 (forallContained!1223 tokens!494 lambda!118010 (h!41717 (t!240666 tokens!494))))))

(declare-fun lt!1093689 () Unit!50900)

(assert (=> b!3223533 (= lt!1093689 (forallContained!1223 tokens!494 lambda!118010 (h!41717 tokens!494)))))

(declare-fun b!3223534 () Bool)

(declare-fun res!1312892 () Bool)

(assert (=> b!3223534 (=> (not res!1312892) (not e!2010358))))

(declare-fun sepAndNonSepRulesDisjointChars!1446 (List!36420 List!36420) Bool)

(assert (=> b!3223534 (= res!1312892 (sepAndNonSepRulesDisjointChars!1446 rules!2135 rules!2135))))

(declare-fun b!3223535 () Bool)

(declare-fun e!2010354 () Bool)

(declare-fun e!2010344 () Bool)

(assert (=> b!3223535 (= e!2010354 e!2010344)))

(declare-fun res!1312874 () Bool)

(assert (=> b!3223535 (=> (not res!1312874) (not e!2010344))))

(declare-fun lt!1093655 () Rule!10304)

(assert (=> b!3223535 (= res!1312874 (matchR!4645 (regex!5252 lt!1093655) lt!1093660))))

(declare-fun lt!1093659 () Option!7209)

(assert (=> b!3223535 (= lt!1093655 (get!11569 lt!1093659))))

(declare-fun b!3223536 () Bool)

(declare-fun e!2010335 () Bool)

(declare-fun lt!1093662 () tuple2!35736)

(assert (=> b!3223536 (= e!2010335 (not (isEmpty!20384 (_2!21002 lt!1093662))))))

(declare-fun res!1312898 () Bool)

(assert (=> b!3223537 (=> (not res!1312898) (not e!2010358))))

(declare-fun forall!7434 (List!36421 Int) Bool)

(assert (=> b!3223537 (= res!1312898 (forall!7434 tokens!494 lambda!118010))))

(declare-fun b!3223538 () Bool)

(assert (=> b!3223538 (= e!2010345 true)))

(declare-fun lt!1093685 () List!36421)

(declare-fun lt!1093668 () BalanceConc!21374)

(declare-fun list!12929 (BalanceConc!21374) List!36421)

(declare-fun printWithSeparatorToken!70 (LexerInterface!4841 BalanceConc!21374 Token!9870) BalanceConc!21372)

(assert (=> b!3223538 (= lt!1093685 (filter!520 (list!12929 (_1!21002 (lex!2171 thiss!18206 rules!2135 (printWithSeparatorToken!70 thiss!18206 lt!1093668 separatorToken!241)))) lambda!118010))))

(declare-fun e!2010348 () Bool)

(declare-fun tp!1015431 () Bool)

(declare-fun b!3223539 () Bool)

(declare-fun inv!49159 (String!40744) Bool)

(declare-fun inv!49163 (TokenValueInjection!10392) Bool)

(assert (=> b!3223539 (= e!2010341 (and tp!1015431 (inv!49159 (tag!5784 (h!41716 rules!2135))) (inv!49163 (transformation!5252 (h!41716 rules!2135))) e!2010348))))

(declare-fun b!3223540 () Bool)

(declare-fun Unit!50903 () Unit!50900)

(assert (=> b!3223540 (= e!2010336 Unit!50903)))

(declare-fun e!2010334 () Bool)

(assert (=> b!3223541 (= e!2010334 (and tp!1015442 tp!1015439))))

(declare-fun b!3223542 () Bool)

(declare-fun e!2010329 () Unit!50900)

(declare-fun Unit!50904 () Unit!50900)

(assert (=> b!3223542 (= e!2010329 Unit!50904)))

(declare-fun b!3223543 () Bool)

(declare-fun e!2010342 () Bool)

(assert (=> b!3223543 (= e!2010349 e!2010342)))

(declare-fun res!1312872 () Bool)

(assert (=> b!3223543 (=> res!1312872 e!2010342)))

(declare-fun ++!8726 (List!36419 List!36419) List!36419)

(declare-fun printWithSeparatorTokenList!186 (LexerInterface!4841 List!36421 Token!9870) List!36419)

(assert (=> b!3223543 (= res!1312872 (not (= lt!1093682 (++!8726 (++!8726 lt!1093660 lt!1093688) (printWithSeparatorTokenList!186 thiss!18206 (t!240666 (t!240666 tokens!494)) separatorToken!241)))))))

(assert (=> b!3223543 (= lt!1093660 (list!12928 (charsOf!3268 (h!41717 (t!240666 tokens!494)))))))

(declare-fun lt!1093647 () List!36419)

(assert (=> b!3223543 (= lt!1093647 (++!8726 lt!1093688 lt!1093682))))

(assert (=> b!3223543 (= lt!1093688 (list!12928 (charsOf!3268 separatorToken!241)))))

(assert (=> b!3223543 (= lt!1093682 (printWithSeparatorTokenList!186 thiss!18206 (t!240666 tokens!494) separatorToken!241))))

(declare-fun lt!1093652 () List!36419)

(assert (=> b!3223543 (= lt!1093652 (printWithSeparatorTokenList!186 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3223544 () Bool)

(declare-fun res!1312893 () Bool)

(assert (=> b!3223544 (=> res!1312893 e!2010330)))

(declare-fun rulesProduceIndividualToken!2333 (LexerInterface!4841 List!36420 Token!9870) Bool)

(assert (=> b!3223544 (= res!1312893 (not (rulesProduceIndividualToken!2333 thiss!18206 rules!2135 (h!41717 tokens!494))))))

(declare-fun b!3223545 () Bool)

(declare-fun e!2010357 () Bool)

(assert (=> b!3223545 (= e!2010357 e!2010361)))

(declare-fun res!1312880 () Bool)

(assert (=> b!3223545 (=> (not res!1312880) (not e!2010361))))

(assert (=> b!3223545 (= res!1312880 (matchR!4645 (regex!5252 lt!1093672) lt!1093653))))

(declare-fun lt!1093675 () Option!7209)

(assert (=> b!3223545 (= lt!1093672 (get!11569 lt!1093675))))

(declare-fun e!2010339 () Bool)

(assert (=> b!3223546 (= e!2010339 e!2010345)))

(declare-fun res!1312885 () Bool)

(assert (=> b!3223546 (=> res!1312885 e!2010345)))

(declare-fun lt!1093661 () List!36421)

(assert (=> b!3223546 (= res!1312885 (not (= (filter!520 lt!1093661 lambda!118010) (t!240666 tokens!494))))))

(assert (=> b!3223546 (= (filter!520 lt!1093661 lambda!118010) (t!240666 tokens!494))))

(declare-fun seqFromList!3576 (List!36421) BalanceConc!21374)

(assert (=> b!3223546 (= lt!1093661 (list!12929 (_1!21002 (lex!2171 thiss!18206 rules!2135 (printWithSeparatorToken!70 thiss!18206 (seqFromList!3576 (t!240666 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1093648 () Unit!50900)

(declare-fun theoremInvertFromTokensSepTokenBetweenEach!12 (LexerInterface!4841 List!36420 List!36421 Token!9870) Unit!50900)

(assert (=> b!3223546 (= lt!1093648 (theoremInvertFromTokensSepTokenBetweenEach!12 thiss!18206 rules!2135 (t!240666 tokens!494) separatorToken!241))))

(declare-datatypes ((tuple2!35740 0))(
  ( (tuple2!35741 (_1!21004 Token!9870) (_2!21004 List!36419)) )
))
(declare-datatypes ((Option!7210 0))(
  ( (None!7209) (Some!7209 (v!35789 tuple2!35740)) )
))
(declare-fun maxPrefix!2483 (LexerInterface!4841 List!36420 List!36419) Option!7210)

(assert (=> b!3223546 (= (maxPrefix!2483 thiss!18206 rules!2135 lt!1093647) (Some!7209 (tuple2!35741 separatorToken!241 lt!1093682)))))

(declare-fun lt!1093671 () Unit!50900)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!176 (LexerInterface!4841 List!36420 Token!9870 Rule!10304 List!36419 Rule!10304) Unit!50900)

(assert (=> b!3223546 (= lt!1093671 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!176 thiss!18206 rules!2135 separatorToken!241 (rule!7710 separatorToken!241) lt!1093682 (rule!7710 (h!41717 (t!240666 tokens!494)))))))

(declare-fun lt!1093665 () List!36419)

(declare-fun contains!6511 (List!36419 C!20208) Bool)

(assert (=> b!3223546 (not (contains!6511 lt!1093665 lt!1093684))))

(declare-fun lt!1093657 () Unit!50900)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!160 (LexerInterface!4841 List!36420 List!36420 Rule!10304 Rule!10304 C!20208) Unit!50900)

(assert (=> b!3223546 (= lt!1093657 (lemmaSepRuleNotContainsCharContainedInANonSepRule!160 thiss!18206 rules!2135 rules!2135 (rule!7710 (h!41717 (t!240666 tokens!494))) (rule!7710 separatorToken!241) lt!1093684))))

(declare-fun lt!1093691 () Unit!50900)

(assert (=> b!3223546 (= lt!1093691 e!2010336)))

(declare-fun c!541830 () Bool)

(declare-fun usedCharacters!568 (Regex!10011) List!36419)

(assert (=> b!3223546 (= c!541830 (not (contains!6511 (usedCharacters!568 (regex!5252 (rule!7710 (h!41717 (t!240666 tokens!494))))) lt!1093684)))))

(declare-fun head!7077 (List!36419) C!20208)

(assert (=> b!3223546 (= lt!1093684 (head!7077 lt!1093660))))

(declare-fun maxPrefixOneRule!1620 (LexerInterface!4841 Rule!10304 List!36419) Option!7210)

(declare-fun apply!8272 (TokenValueInjection!10392 BalanceConc!21372) TokenValue!5482)

(declare-fun size!27368 (List!36419) Int)

(assert (=> b!3223546 (= (maxPrefixOneRule!1620 thiss!18206 (rule!7710 (h!41717 (t!240666 tokens!494))) lt!1093660) (Some!7209 (tuple2!35741 (Token!9871 (apply!8272 (transformation!5252 (rule!7710 (h!41717 (t!240666 tokens!494)))) (seqFromList!3575 lt!1093660)) (rule!7710 (h!41717 (t!240666 tokens!494))) (size!27368 lt!1093660) lt!1093660) Nil!36295)))))

(declare-fun lt!1093679 () Unit!50900)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!733 (LexerInterface!4841 List!36420 List!36419 List!36419 List!36419 Rule!10304) Unit!50900)

(assert (=> b!3223546 (= lt!1093679 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!733 thiss!18206 rules!2135 lt!1093660 lt!1093660 Nil!36295 (rule!7710 (h!41717 (t!240666 tokens!494)))))))

(assert (=> b!3223546 e!2010354))

(declare-fun res!1312879 () Bool)

(assert (=> b!3223546 (=> (not res!1312879) (not e!2010354))))

(declare-fun isDefined!5590 (Option!7209) Bool)

(assert (=> b!3223546 (= res!1312879 (isDefined!5590 lt!1093659))))

(declare-fun getRuleFromTag!957 (LexerInterface!4841 List!36420 String!40744) Option!7209)

(assert (=> b!3223546 (= lt!1093659 (getRuleFromTag!957 thiss!18206 rules!2135 (tag!5784 (rule!7710 (h!41717 (t!240666 tokens!494))))))))

(declare-fun lt!1093667 () Unit!50900)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!957 (LexerInterface!4841 List!36420 List!36419 Token!9870) Unit!50900)

(assert (=> b!3223546 (= lt!1093667 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!957 thiss!18206 rules!2135 lt!1093660 (h!41717 (t!240666 tokens!494))))))

(declare-fun lt!1093692 () Bool)

(assert (=> b!3223546 lt!1093692))

(declare-fun lt!1093694 () Unit!50900)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!880 (LexerInterface!4841 List!36420 List!36421 Token!9870) Unit!50900)

(assert (=> b!3223546 (= lt!1093694 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!880 thiss!18206 rules!2135 tokens!494 (h!41717 (t!240666 tokens!494))))))

(declare-fun lt!1093649 () List!36419)

(assert (=> b!3223546 (= (maxPrefix!2483 thiss!18206 rules!2135 lt!1093649) (Some!7209 (tuple2!35741 (h!41717 tokens!494) lt!1093647)))))

(declare-fun lt!1093676 () Unit!50900)

(assert (=> b!3223546 (= lt!1093676 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!176 thiss!18206 rules!2135 (h!41717 tokens!494) (rule!7710 (h!41717 tokens!494)) lt!1093647 (rule!7710 separatorToken!241)))))

(declare-fun lt!1093673 () C!20208)

(assert (=> b!3223546 (not (contains!6511 (usedCharacters!568 (regex!5252 (rule!7710 (h!41717 tokens!494)))) lt!1093673))))

(declare-fun lt!1093698 () Unit!50900)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!176 (LexerInterface!4841 List!36420 List!36420 Rule!10304 Rule!10304 C!20208) Unit!50900)

(assert (=> b!3223546 (= lt!1093698 (lemmaNonSepRuleNotContainsCharContainedInASepRule!176 thiss!18206 rules!2135 rules!2135 (rule!7710 (h!41717 tokens!494)) (rule!7710 separatorToken!241) lt!1093673))))

(declare-fun lt!1093693 () Unit!50900)

(assert (=> b!3223546 (= lt!1093693 (forallContained!1223 tokens!494 lambda!118011 (h!41717 (t!240666 tokens!494))))))

(declare-fun lt!1093678 () Bool)

(assert (=> b!3223546 (= lt!1093692 (not lt!1093678))))

(assert (=> b!3223546 (= lt!1093692 (rulesProduceIndividualToken!2333 thiss!18206 rules!2135 (h!41717 (t!240666 tokens!494))))))

(assert (=> b!3223546 (= lt!1093678 e!2010335)))

(declare-fun res!1312896 () Bool)

(assert (=> b!3223546 (=> res!1312896 e!2010335)))

(declare-fun size!27369 (BalanceConc!21374) Int)

(assert (=> b!3223546 (= res!1312896 (not (= (size!27369 (_1!21002 lt!1093662)) 1)))))

(declare-fun lt!1093686 () BalanceConc!21372)

(assert (=> b!3223546 (= lt!1093662 (lex!2171 thiss!18206 rules!2135 lt!1093686))))

(declare-fun lt!1093654 () BalanceConc!21374)

(declare-fun printTailRec!1338 (LexerInterface!4841 BalanceConc!21374 Int BalanceConc!21372) BalanceConc!21372)

(assert (=> b!3223546 (= lt!1093686 (printTailRec!1338 thiss!18206 lt!1093654 0 (BalanceConc!21373 Empty!10879)))))

(declare-fun print!1906 (LexerInterface!4841 BalanceConc!21374) BalanceConc!21372)

(assert (=> b!3223546 (= lt!1093686 (print!1906 thiss!18206 lt!1093654))))

(declare-fun singletonSeq!2348 (Token!9870) BalanceConc!21374)

(assert (=> b!3223546 (= lt!1093654 (singletonSeq!2348 (h!41717 (t!240666 tokens!494))))))

(assert (=> b!3223546 e!2010365))

(declare-fun res!1312902 () Bool)

(assert (=> b!3223546 (=> (not res!1312902) (not e!2010365))))

(assert (=> b!3223546 (= res!1312902 (= (size!27369 (_1!21002 lt!1093677)) 1))))

(declare-fun lt!1093666 () BalanceConc!21372)

(assert (=> b!3223546 (= lt!1093677 (lex!2171 thiss!18206 rules!2135 lt!1093666))))

(declare-fun lt!1093650 () BalanceConc!21374)

(assert (=> b!3223546 (= lt!1093666 (printTailRec!1338 thiss!18206 lt!1093650 0 (BalanceConc!21373 Empty!10879)))))

(assert (=> b!3223546 (= lt!1093666 (print!1906 thiss!18206 lt!1093650))))

(assert (=> b!3223546 (= lt!1093650 (singletonSeq!2348 separatorToken!241))))

(declare-fun lt!1093663 () Unit!50900)

(assert (=> b!3223546 (= lt!1093663 e!2010329)))

(declare-fun c!541831 () Bool)

(assert (=> b!3223546 (= c!541831 (not (contains!6511 lt!1093665 lt!1093673)))))

(assert (=> b!3223546 (= lt!1093673 (head!7077 lt!1093688))))

(assert (=> b!3223546 (= lt!1093665 (usedCharacters!568 (regex!5252 (rule!7710 separatorToken!241))))))

(assert (=> b!3223546 e!2010364))

(declare-fun res!1312897 () Bool)

(assert (=> b!3223546 (=> (not res!1312897) (not e!2010364))))

(assert (=> b!3223546 (= res!1312897 (isDefined!5590 lt!1093670))))

(assert (=> b!3223546 (= lt!1093670 (getRuleFromTag!957 thiss!18206 rules!2135 (tag!5784 (rule!7710 separatorToken!241))))))

(declare-fun lt!1093681 () Unit!50900)

(assert (=> b!3223546 (= lt!1093681 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!957 thiss!18206 rules!2135 lt!1093688 separatorToken!241))))

(assert (=> b!3223546 (= (maxPrefixOneRule!1620 thiss!18206 (rule!7710 (h!41717 tokens!494)) lt!1093653) (Some!7209 (tuple2!35741 (Token!9871 (apply!8272 (transformation!5252 (rule!7710 (h!41717 tokens!494))) lt!1093695) (rule!7710 (h!41717 tokens!494)) (size!27368 lt!1093653) lt!1093653) Nil!36295)))))

(declare-fun lt!1093658 () Unit!50900)

(assert (=> b!3223546 (= lt!1093658 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!733 thiss!18206 rules!2135 lt!1093653 lt!1093653 Nil!36295 (rule!7710 (h!41717 tokens!494))))))

(assert (=> b!3223546 e!2010357))

(declare-fun res!1312871 () Bool)

(assert (=> b!3223546 (=> (not res!1312871) (not e!2010357))))

(assert (=> b!3223546 (= res!1312871 (isDefined!5590 lt!1093675))))

(assert (=> b!3223546 (= lt!1093675 (getRuleFromTag!957 thiss!18206 rules!2135 (tag!5784 (rule!7710 (h!41717 tokens!494)))))))

(declare-fun lt!1093680 () Unit!50900)

(assert (=> b!3223546 (= lt!1093680 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!957 thiss!18206 rules!2135 lt!1093653 (h!41717 tokens!494)))))

(declare-fun lt!1093696 () Unit!50900)

(assert (=> b!3223546 (= lt!1093696 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!880 thiss!18206 rules!2135 tokens!494 (h!41717 tokens!494)))))

(assert (=> b!3223547 (= e!2010348 (and tp!1015432 tp!1015430))))

(declare-fun b!3223548 () Bool)

(declare-fun res!1312882 () Bool)

(assert (=> b!3223548 (=> res!1312882 e!2010335)))

(assert (=> b!3223548 (= res!1312882 (not (= (apply!8271 (_1!21002 lt!1093662) 0) (h!41717 (t!240666 tokens!494)))))))

(declare-fun res!1312883 () Bool)

(assert (=> start!302650 (=> (not res!1312883) (not e!2010347))))

(assert (=> start!302650 (= res!1312883 ((_ is Lexer!4839) thiss!18206))))

(assert (=> start!302650 e!2010347))

(assert (=> start!302650 true))

(assert (=> start!302650 e!2010363))

(assert (=> start!302650 (and (inv!49162 separatorToken!241) e!2010352)))

(assert (=> start!302650 e!2010351))

(declare-fun b!3223549 () Bool)

(declare-fun e!2010332 () Bool)

(assert (=> b!3223549 (= e!2010342 e!2010332)))

(declare-fun res!1312895 () Bool)

(assert (=> b!3223549 (=> res!1312895 e!2010332)))

(declare-fun lt!1093656 () List!36419)

(assert (=> b!3223549 (= res!1312895 (not (= lt!1093652 lt!1093656)))))

(assert (=> b!3223549 (= lt!1093656 (++!8726 (++!8726 lt!1093653 lt!1093688) lt!1093682))))

(declare-fun b!3223550 () Bool)

(declare-fun res!1312890 () Bool)

(assert (=> b!3223550 (=> (not res!1312890) (not e!2010358))))

(assert (=> b!3223550 (= res!1312890 (and (not ((_ is Nil!36297) tokens!494)) (not ((_ is Nil!36297) (t!240666 tokens!494)))))))

(declare-fun b!3223551 () Bool)

(assert (=> b!3223551 (= e!2010344 (= (rule!7710 (h!41717 (t!240666 tokens!494))) lt!1093655))))

(declare-fun b!3223552 () Bool)

(declare-fun res!1312894 () Bool)

(assert (=> b!3223552 (=> res!1312894 e!2010345)))

(assert (=> b!3223552 (= res!1312894 (not (= (filter!520 (_1!21003 (lexList!1325 thiss!18206 rules!2135 lt!1093652)) lambda!118010) tokens!494)))))

(declare-fun b!3223553 () Bool)

(declare-fun tp!1015438 () Bool)

(assert (=> b!3223553 (= e!2010353 (and tp!1015438 (inv!49159 (tag!5784 (rule!7710 separatorToken!241))) (inv!49163 (transformation!5252 (rule!7710 separatorToken!241))) e!2010334))))

(declare-fun tp!1015441 () Bool)

(declare-fun b!3223554 () Bool)

(assert (=> b!3223554 (= e!2010359 (and tp!1015441 (inv!49159 (tag!5784 (rule!7710 (h!41717 tokens!494)))) (inv!49163 (transformation!5252 (rule!7710 (h!41717 tokens!494)))) e!2010355))))

(declare-fun b!3223555 () Bool)

(declare-fun Unit!50905 () Unit!50900)

(assert (=> b!3223555 (= e!2010329 Unit!50905)))

(declare-fun lt!1093651 () Unit!50900)

(assert (=> b!3223555 (= lt!1093651 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!416 (regex!5252 (rule!7710 separatorToken!241)) lt!1093688 lt!1093673))))

(declare-fun res!1312873 () Bool)

(assert (=> b!3223555 (= res!1312873 (not (matchR!4645 (regex!5252 (rule!7710 separatorToken!241)) lt!1093688)))))

(assert (=> b!3223555 (=> (not res!1312873) (not e!2010340))))

(assert (=> b!3223555 e!2010340))

(declare-fun b!3223556 () Bool)

(assert (=> b!3223556 (= e!2010358 (not e!2010331))))

(declare-fun res!1312901 () Bool)

(assert (=> b!3223556 (=> res!1312901 e!2010331)))

(assert (=> b!3223556 (= res!1312901 (not (= lt!1093664 lt!1093690)))))

(declare-fun printList!1391 (LexerInterface!4841 List!36421) List!36419)

(assert (=> b!3223556 (= lt!1093690 (printList!1391 thiss!18206 (Cons!36297 (h!41717 tokens!494) Nil!36297)))))

(declare-fun lt!1093674 () BalanceConc!21372)

(assert (=> b!3223556 (= lt!1093664 (list!12928 lt!1093674))))

(declare-fun lt!1093646 () BalanceConc!21374)

(assert (=> b!3223556 (= lt!1093674 (printTailRec!1338 thiss!18206 lt!1093646 0 (BalanceConc!21373 Empty!10879)))))

(assert (=> b!3223556 (= lt!1093674 (print!1906 thiss!18206 lt!1093646))))

(assert (=> b!3223556 (= lt!1093646 (singletonSeq!2348 (h!41717 tokens!494)))))

(declare-fun b!3223557 () Bool)

(assert (=> b!3223557 (= e!2010347 e!2010358)))

(declare-fun res!1312886 () Bool)

(assert (=> b!3223557 (=> (not res!1312886) (not e!2010358))))

(declare-fun rulesProduceEachTokenIndividually!1292 (LexerInterface!4841 List!36420 BalanceConc!21374) Bool)

(assert (=> b!3223557 (= res!1312886 (rulesProduceEachTokenIndividually!1292 thiss!18206 rules!2135 lt!1093668))))

(assert (=> b!3223557 (= lt!1093668 (seqFromList!3576 tokens!494))))

(declare-fun b!3223558 () Bool)

(declare-fun res!1312881 () Bool)

(assert (=> b!3223558 (=> (not res!1312881) (not e!2010358))))

(assert (=> b!3223558 (= res!1312881 (rulesProduceIndividualToken!2333 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3223559 () Bool)

(assert (=> b!3223559 (= e!2010332 e!2010339)))

(declare-fun res!1312888 () Bool)

(assert (=> b!3223559 (=> res!1312888 e!2010339)))

(assert (=> b!3223559 (= res!1312888 (not (= lt!1093652 lt!1093649)))))

(assert (=> b!3223559 (= lt!1093656 lt!1093649)))

(assert (=> b!3223559 (= lt!1093649 (++!8726 lt!1093653 lt!1093647))))

(declare-fun lt!1093669 () Unit!50900)

(declare-fun lemmaConcatAssociativity!1780 (List!36419 List!36419 List!36419) Unit!50900)

(assert (=> b!3223559 (= lt!1093669 (lemmaConcatAssociativity!1780 lt!1093653 lt!1093688 lt!1093682))))

(assert (= (and start!302650 res!1312883) b!3223519))

(assert (= (and b!3223519 res!1312889) b!3223527))

(assert (= (and b!3223527 res!1312891) b!3223557))

(assert (= (and b!3223557 res!1312886) b!3223558))

(assert (= (and b!3223558 res!1312881) b!3223522))

(assert (= (and b!3223522 res!1312884) b!3223537))

(assert (= (and b!3223537 res!1312898) b!3223534))

(assert (= (and b!3223534 res!1312892) b!3223550))

(assert (= (and b!3223550 res!1312890) b!3223556))

(assert (= (and b!3223556 (not res!1312901)) b!3223518))

(assert (= (and b!3223518 (not res!1312900)) b!3223544))

(assert (= (and b!3223544 (not res!1312893)) b!3223524))

(assert (= (and b!3223524 (not res!1312899)) b!3223533))

(assert (= (and b!3223533 (not res!1312875)) b!3223543))

(assert (= (and b!3223543 (not res!1312872)) b!3223549))

(assert (= (and b!3223549 (not res!1312895)) b!3223559))

(assert (= (and b!3223559 (not res!1312888)) b!3223546))

(assert (= (and b!3223546 res!1312871) b!3223545))

(assert (= (and b!3223545 res!1312880) b!3223523))

(assert (= (and b!3223546 res!1312897) b!3223521))

(assert (= (and b!3223521 res!1312877) b!3223529))

(assert (= (and b!3223546 c!541831) b!3223555))

(assert (= (and b!3223546 (not c!541831)) b!3223542))

(assert (= (and b!3223555 res!1312873) b!3223528))

(assert (= (and b!3223546 res!1312902) b!3223516))

(assert (= (and b!3223516 res!1312876) b!3223520))

(assert (= (and b!3223546 (not res!1312896)) b!3223548))

(assert (= (and b!3223548 (not res!1312882)) b!3223536))

(assert (= (and b!3223546 res!1312879) b!3223535))

(assert (= (and b!3223535 res!1312874) b!3223551))

(assert (= (and b!3223546 c!541830) b!3223531))

(assert (= (and b!3223546 (not c!541830)) b!3223540))

(assert (= (and b!3223531 res!1312887) b!3223532))

(assert (= (and b!3223546 (not res!1312885)) b!3223525))

(assert (= (and b!3223525 (not res!1312878)) b!3223552))

(assert (= (and b!3223552 (not res!1312894)) b!3223538))

(assert (= b!3223539 b!3223547))

(assert (= b!3223515 b!3223539))

(assert (= (and start!302650 ((_ is Cons!36296) rules!2135)) b!3223515))

(assert (= b!3223553 b!3223541))

(assert (= b!3223530 b!3223553))

(assert (= start!302650 b!3223530))

(assert (= b!3223554 b!3223514))

(assert (= b!3223526 b!3223554))

(assert (= b!3223517 b!3223526))

(assert (= (and start!302650 ((_ is Cons!36297) tokens!494)) b!3223517))

(declare-fun m!3501481 () Bool)

(assert (=> b!3223524 m!3501481))

(declare-fun m!3501483 () Bool)

(assert (=> b!3223524 m!3501483))

(declare-fun m!3501485 () Bool)

(assert (=> b!3223524 m!3501485))

(declare-fun m!3501487 () Bool)

(assert (=> b!3223531 m!3501487))

(declare-fun m!3501489 () Bool)

(assert (=> b!3223531 m!3501489))

(declare-fun m!3501491 () Bool)

(assert (=> b!3223544 m!3501491))

(declare-fun m!3501493 () Bool)

(assert (=> b!3223548 m!3501493))

(declare-fun m!3501495 () Bool)

(assert (=> b!3223557 m!3501495))

(declare-fun m!3501497 () Bool)

(assert (=> b!3223557 m!3501497))

(declare-fun m!3501499 () Bool)

(assert (=> b!3223555 m!3501499))

(declare-fun m!3501501 () Bool)

(assert (=> b!3223555 m!3501501))

(declare-fun m!3501503 () Bool)

(assert (=> b!3223552 m!3501503))

(declare-fun m!3501505 () Bool)

(assert (=> b!3223552 m!3501505))

(declare-fun m!3501507 () Bool)

(assert (=> b!3223553 m!3501507))

(declare-fun m!3501509 () Bool)

(assert (=> b!3223553 m!3501509))

(declare-fun m!3501511 () Bool)

(assert (=> b!3223558 m!3501511))

(declare-fun m!3501513 () Bool)

(assert (=> b!3223559 m!3501513))

(declare-fun m!3501515 () Bool)

(assert (=> b!3223559 m!3501515))

(declare-fun m!3501517 () Bool)

(assert (=> b!3223539 m!3501517))

(declare-fun m!3501519 () Bool)

(assert (=> b!3223539 m!3501519))

(declare-fun m!3501521 () Bool)

(assert (=> b!3223517 m!3501521))

(declare-fun m!3501523 () Bool)

(assert (=> b!3223536 m!3501523))

(declare-fun m!3501525 () Bool)

(assert (=> b!3223537 m!3501525))

(declare-fun m!3501527 () Bool)

(assert (=> start!302650 m!3501527))

(declare-fun m!3501529 () Bool)

(assert (=> b!3223554 m!3501529))

(declare-fun m!3501531 () Bool)

(assert (=> b!3223554 m!3501531))

(declare-fun m!3501533 () Bool)

(assert (=> b!3223549 m!3501533))

(assert (=> b!3223549 m!3501533))

(declare-fun m!3501535 () Bool)

(assert (=> b!3223549 m!3501535))

(declare-fun m!3501537 () Bool)

(assert (=> b!3223546 m!3501537))

(declare-fun m!3501539 () Bool)

(assert (=> b!3223546 m!3501539))

(declare-fun m!3501541 () Bool)

(assert (=> b!3223546 m!3501541))

(declare-fun m!3501543 () Bool)

(assert (=> b!3223546 m!3501543))

(declare-fun m!3501545 () Bool)

(assert (=> b!3223546 m!3501545))

(declare-fun m!3501547 () Bool)

(assert (=> b!3223546 m!3501547))

(declare-fun m!3501549 () Bool)

(assert (=> b!3223546 m!3501549))

(declare-fun m!3501551 () Bool)

(assert (=> b!3223546 m!3501551))

(declare-fun m!3501553 () Bool)

(assert (=> b!3223546 m!3501553))

(declare-fun m!3501555 () Bool)

(assert (=> b!3223546 m!3501555))

(declare-fun m!3501557 () Bool)

(assert (=> b!3223546 m!3501557))

(declare-fun m!3501559 () Bool)

(assert (=> b!3223546 m!3501559))

(declare-fun m!3501561 () Bool)

(assert (=> b!3223546 m!3501561))

(declare-fun m!3501563 () Bool)

(assert (=> b!3223546 m!3501563))

(declare-fun m!3501565 () Bool)

(assert (=> b!3223546 m!3501565))

(declare-fun m!3501567 () Bool)

(assert (=> b!3223546 m!3501567))

(declare-fun m!3501569 () Bool)

(assert (=> b!3223546 m!3501569))

(declare-fun m!3501571 () Bool)

(assert (=> b!3223546 m!3501571))

(declare-fun m!3501573 () Bool)

(assert (=> b!3223546 m!3501573))

(declare-fun m!3501575 () Bool)

(assert (=> b!3223546 m!3501575))

(declare-fun m!3501577 () Bool)

(assert (=> b!3223546 m!3501577))

(declare-fun m!3501579 () Bool)

(assert (=> b!3223546 m!3501579))

(declare-fun m!3501581 () Bool)

(assert (=> b!3223546 m!3501581))

(declare-fun m!3501583 () Bool)

(assert (=> b!3223546 m!3501583))

(declare-fun m!3501585 () Bool)

(assert (=> b!3223546 m!3501585))

(declare-fun m!3501587 () Bool)

(assert (=> b!3223546 m!3501587))

(declare-fun m!3501589 () Bool)

(assert (=> b!3223546 m!3501589))

(assert (=> b!3223546 m!3501581))

(declare-fun m!3501591 () Bool)

(assert (=> b!3223546 m!3501591))

(declare-fun m!3501593 () Bool)

(assert (=> b!3223546 m!3501593))

(declare-fun m!3501595 () Bool)

(assert (=> b!3223546 m!3501595))

(declare-fun m!3501597 () Bool)

(assert (=> b!3223546 m!3501597))

(declare-fun m!3501599 () Bool)

(assert (=> b!3223546 m!3501599))

(assert (=> b!3223546 m!3501563))

(assert (=> b!3223546 m!3501569))

(declare-fun m!3501601 () Bool)

(assert (=> b!3223546 m!3501601))

(declare-fun m!3501603 () Bool)

(assert (=> b!3223546 m!3501603))

(declare-fun m!3501605 () Bool)

(assert (=> b!3223546 m!3501605))

(declare-fun m!3501607 () Bool)

(assert (=> b!3223546 m!3501607))

(declare-fun m!3501609 () Bool)

(assert (=> b!3223546 m!3501609))

(assert (=> b!3223546 m!3501601))

(declare-fun m!3501611 () Bool)

(assert (=> b!3223546 m!3501611))

(declare-fun m!3501613 () Bool)

(assert (=> b!3223546 m!3501613))

(declare-fun m!3501615 () Bool)

(assert (=> b!3223546 m!3501615))

(declare-fun m!3501617 () Bool)

(assert (=> b!3223546 m!3501617))

(assert (=> b!3223546 m!3501573))

(declare-fun m!3501619 () Bool)

(assert (=> b!3223546 m!3501619))

(declare-fun m!3501621 () Bool)

(assert (=> b!3223546 m!3501621))

(declare-fun m!3501623 () Bool)

(assert (=> b!3223546 m!3501623))

(declare-fun m!3501625 () Bool)

(assert (=> b!3223546 m!3501625))

(declare-fun m!3501627 () Bool)

(assert (=> b!3223546 m!3501627))

(assert (=> b!3223546 m!3501605))

(declare-fun m!3501629 () Bool)

(assert (=> b!3223546 m!3501629))

(declare-fun m!3501631 () Bool)

(assert (=> b!3223546 m!3501631))

(declare-fun m!3501633 () Bool)

(assert (=> b!3223546 m!3501633))

(declare-fun m!3501635 () Bool)

(assert (=> b!3223546 m!3501635))

(declare-fun m!3501637 () Bool)

(assert (=> b!3223546 m!3501637))

(declare-fun m!3501639 () Bool)

(assert (=> b!3223546 m!3501639))

(declare-fun m!3501641 () Bool)

(assert (=> b!3223546 m!3501641))

(declare-fun m!3501643 () Bool)

(assert (=> b!3223519 m!3501643))

(declare-fun m!3501645 () Bool)

(assert (=> b!3223527 m!3501645))

(declare-fun m!3501647 () Bool)

(assert (=> b!3223535 m!3501647))

(declare-fun m!3501649 () Bool)

(assert (=> b!3223535 m!3501649))

(declare-fun m!3501651 () Bool)

(assert (=> b!3223521 m!3501651))

(declare-fun m!3501653 () Bool)

(assert (=> b!3223521 m!3501653))

(declare-fun m!3501655 () Bool)

(assert (=> b!3223556 m!3501655))

(declare-fun m!3501657 () Bool)

(assert (=> b!3223556 m!3501657))

(declare-fun m!3501659 () Bool)

(assert (=> b!3223556 m!3501659))

(declare-fun m!3501661 () Bool)

(assert (=> b!3223556 m!3501661))

(declare-fun m!3501663 () Bool)

(assert (=> b!3223556 m!3501663))

(declare-fun m!3501665 () Bool)

(assert (=> b!3223518 m!3501665))

(assert (=> b!3223518 m!3501665))

(declare-fun m!3501667 () Bool)

(assert (=> b!3223518 m!3501667))

(declare-fun m!3501669 () Bool)

(assert (=> b!3223525 m!3501669))

(declare-fun m!3501671 () Bool)

(assert (=> b!3223525 m!3501671))

(declare-fun m!3501673 () Bool)

(assert (=> b!3223538 m!3501673))

(assert (=> b!3223538 m!3501673))

(declare-fun m!3501675 () Bool)

(assert (=> b!3223538 m!3501675))

(declare-fun m!3501677 () Bool)

(assert (=> b!3223538 m!3501677))

(assert (=> b!3223538 m!3501677))

(declare-fun m!3501679 () Bool)

(assert (=> b!3223538 m!3501679))

(declare-fun m!3501681 () Bool)

(assert (=> b!3223516 m!3501681))

(declare-fun m!3501683 () Bool)

(assert (=> b!3223530 m!3501683))

(declare-fun m!3501685 () Bool)

(assert (=> b!3223526 m!3501685))

(declare-fun m!3501687 () Bool)

(assert (=> b!3223533 m!3501687))

(declare-fun m!3501689 () Bool)

(assert (=> b!3223533 m!3501689))

(declare-fun m!3501691 () Bool)

(assert (=> b!3223520 m!3501691))

(declare-fun m!3501693 () Bool)

(assert (=> b!3223534 m!3501693))

(declare-fun m!3501695 () Bool)

(assert (=> b!3223545 m!3501695))

(declare-fun m!3501697 () Bool)

(assert (=> b!3223545 m!3501697))

(declare-fun m!3501699 () Bool)

(assert (=> b!3223543 m!3501699))

(declare-fun m!3501701 () Bool)

(assert (=> b!3223543 m!3501701))

(declare-fun m!3501703 () Bool)

(assert (=> b!3223543 m!3501703))

(declare-fun m!3501705 () Bool)

(assert (=> b!3223543 m!3501705))

(declare-fun m!3501707 () Bool)

(assert (=> b!3223543 m!3501707))

(assert (=> b!3223543 m!3501699))

(declare-fun m!3501709 () Bool)

(assert (=> b!3223543 m!3501709))

(declare-fun m!3501711 () Bool)

(assert (=> b!3223543 m!3501711))

(declare-fun m!3501713 () Bool)

(assert (=> b!3223543 m!3501713))

(assert (=> b!3223543 m!3501701))

(declare-fun m!3501715 () Bool)

(assert (=> b!3223543 m!3501715))

(assert (=> b!3223543 m!3501707))

(assert (=> b!3223543 m!3501713))

(declare-fun m!3501717 () Bool)

(assert (=> b!3223543 m!3501717))

(check-sat (not b_next!86543) (not b!3223533) (not b!3223559) (not b!3223524) (not b!3223525) (not b!3223538) (not b!3223531) (not b!3223535) (not b!3223548) (not b!3223527) (not b!3223543) (not b!3223539) (not b!3223553) (not b_next!86539) (not b!3223555) b_and!215539 (not b!3223557) (not b!3223526) (not b!3223516) b_and!215535 (not b!3223545) b_and!215541 (not b!3223558) (not b!3223544) (not b!3223552) (not b!3223549) b_and!215537 (not b_next!86547) (not b!3223521) (not b!3223537) (not b!3223554) (not b!3223556) (not b_next!86541) (not b!3223518) (not b!3223534) (not b_next!86537) (not b!3223568) (not b_next!86545) (not b!3223536) (not b!3223515) b_and!215543 (not b!3223530) (not b!3223520) (not b!3223517) b_and!215545 (not b!3223546) (not b!3223519) (not start!302650))
(check-sat (not b_next!86543) (not b_next!86539) b_and!215539 (not b_next!86541) b_and!215543 b_and!215545 b_and!215535 b_and!215541 b_and!215537 (not b_next!86547) (not b_next!86537) (not b_next!86545))
