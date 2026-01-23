; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!10778 () Bool)

(assert start!10778)

(assert (=> start!10778 true))

(declare-fun b!108212 () Bool)

(assert (=> b!108212 true))

(assert (=> b!108212 true))

(declare-fun b!108213 () Bool)

(assert (=> b!108213 true))

(declare-fun b!108222 () Bool)

(declare-fun e!60020 () Bool)

(declare-datatypes ((List!1721 0))(
  ( (Nil!1715) (Cons!1715 (h!7112 (_ BitVec 16)) (t!21534 List!1721)) )
))
(declare-datatypes ((IArray!1095 0))(
  ( (IArray!1096 (innerList!605 List!1721)) )
))
(declare-datatypes ((Conc!547 0))(
  ( (Node!547 (left!1329 Conc!547) (right!1659 Conc!547) (csize!1324 Int) (cheight!758 Int)) (Leaf!872 (xs!3142 IArray!1095) (csize!1325 Int)) (Empty!547) )
))
(declare-datatypes ((BalanceConc!1098 0))(
  ( (BalanceConc!1099 (c!26002 Conc!547)) )
))
(declare-fun x!29775 () BalanceConc!1098)

(declare-fun tp!58948 () Bool)

(declare-fun inv!2112 (Conc!547) Bool)

(assert (=> b!108222 (= e!60020 (and (inv!2112 (c!26002 x!29775)) tp!58948))))

(declare-fun inst!70 () Bool)

(declare-datatypes ((ErrorTokenValueInjection!14 0))(
  ( (ErrorTokenValueInjection!15) )
))
(declare-fun thiss!5419 () ErrorTokenValueInjection!14)

(declare-fun inv!2113 (BalanceConc!1098) Bool)

(declare-fun list!742 (BalanceConc!1098) List!1721)

(declare-datatypes ((TokenValue!369 0))(
  ( (FloatLiteralValue!738 (text!3028 List!1721)) (TokenValueExt!368 (__x!1828 Int)) (Broken!1845 (value!13653 List!1721)) (Object!374) (End!369) (Def!369) (Underscore!369) (Match!369) (Else!369) (Error!369) (Case!369) (If!369) (Extends!369) (Abstract!369) (Class!369) (Val!369) (DelimiterValue!738 (del!429 List!1721)) (KeywordValue!375 (value!13654 List!1721)) (CommentValue!738 (value!13655 List!1721)) (WhitespaceValue!738 (value!13656 List!1721)) (IndentationValue!369 (value!13657 List!1721)) (String!2226) (Int32!369) (Broken!1846 (value!13658 List!1721)) (Boolean!370) (Unit!1145) (OperatorValue!372 (op!429 List!1721)) (IdentifierValue!738 (value!13659 List!1721)) (IdentifierValue!739 (value!13660 List!1721)) (WhitespaceValue!739 (value!13661 List!1721)) (True!738) (False!738) (Broken!1847 (value!13662 List!1721)) (Broken!1848 (value!13663 List!1721)) (True!739) (RightBrace!369) (RightBracket!369) (Colon!369) (Null!369) (Comma!369) (LeftBracket!369) (False!739) (LeftBrace!369) (ImaginaryLiteralValue!369 (text!3029 List!1721)) (StringLiteralValue!1107 (value!13664 List!1721)) (EOFValue!369 (value!13665 List!1721)) (IdentValue!369 (value!13666 List!1721)) (DelimiterValue!739 (value!13667 List!1721)) (DedentValue!369 (value!13668 List!1721)) (NewLineValue!369 (value!13669 List!1721)) (IntegerValue!1107 (value!13670 (_ BitVec 32)) (text!3030 List!1721)) (IntegerValue!1108 (value!13671 Int) (text!3031 List!1721)) (Times!369) (Or!369) (Equal!369) (Minus!369) (Broken!1849 (value!13672 List!1721)) (And!369) (Div!369) (LessEqual!369) (Mod!369) (Concat!811) (Not!369) (Plus!369) (SpaceValue!369 (value!13673 List!1721)) (IntegerValue!1109 (value!13674 Int) (text!3032 List!1721)) (StringLiteralValue!1108 (text!3033 List!1721)) (FloatLiteralValue!739 (text!3034 List!1721)) (BytesLiteralValue!369 (value!13675 List!1721)) (CommentValue!739 (value!13676 List!1721)) (StringLiteralValue!1109 (value!13677 List!1721)) (ErrorTokenValue!369 (msg!430 List!1721)) )
))
(declare-fun toCharacters!31 (ErrorTokenValueInjection!14 TokenValue!369) BalanceConc!1098)

(declare-fun toValue!38 (ErrorTokenValueInjection!14 BalanceConc!1098) TokenValue!369)

(assert (=> start!10778 (= inst!70 (=> (and (inv!2113 x!29775) e!60020) (= (list!742 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775))) (list!742 x!29775))))))

(assert (= start!10778 b!108222))

(declare-fun m!96812 () Bool)

(assert (=> b!108222 m!96812))

(declare-fun m!96814 () Bool)

(assert (=> start!10778 m!96814))

(declare-fun m!96816 () Bool)

(assert (=> start!10778 m!96816))

(assert (=> start!10778 m!96816))

(declare-fun m!96818 () Bool)

(assert (=> start!10778 m!96818))

(declare-fun m!96820 () Bool)

(assert (=> start!10778 m!96820))

(assert (=> start!10778 m!96818))

(declare-fun m!96822 () Bool)

(assert (=> start!10778 m!96822))

(declare-fun res!51790 () Bool)

(declare-fun e!60023 () Bool)

(assert (=> b!108213 (=> res!51790 e!60023)))

(declare-fun x!29776 () BalanceConc!1098)

(declare-fun x!29777 () BalanceConc!1098)

(assert (=> b!108213 (= res!51790 (not (= (list!742 x!29776) (list!742 x!29777))))))

(declare-fun inst!71 () Bool)

(declare-fun e!60022 () Bool)

(declare-fun e!60021 () Bool)

(assert (=> b!108213 (= inst!71 (=> (and (inv!2113 x!29776) e!60022 (inv!2113 x!29777) e!60021) e!60023))))

(declare-fun b!108223 () Bool)

(assert (=> b!108223 (= e!60023 (= (toValue!38 thiss!5419 x!29776) (toValue!38 thiss!5419 x!29777)))))

(declare-fun b!108224 () Bool)

(declare-fun tp!58949 () Bool)

(assert (=> b!108224 (= e!60022 (and (inv!2112 (c!26002 x!29776)) tp!58949))))

(declare-fun b!108225 () Bool)

(declare-fun tp!58950 () Bool)

(assert (=> b!108225 (= e!60021 (and (inv!2112 (c!26002 x!29777)) tp!58950))))

(assert (= (and b!108213 (not res!51790)) b!108223))

(assert (= b!108213 b!108224))

(assert (= b!108213 b!108225))

(declare-fun m!96824 () Bool)

(assert (=> b!108213 m!96824))

(declare-fun m!96826 () Bool)

(assert (=> b!108213 m!96826))

(declare-fun m!96828 () Bool)

(assert (=> b!108213 m!96828))

(declare-fun m!96830 () Bool)

(assert (=> b!108213 m!96830))

(declare-fun m!96832 () Bool)

(assert (=> b!108223 m!96832))

(declare-fun m!96834 () Bool)

(assert (=> b!108223 m!96834))

(declare-fun m!96836 () Bool)

(assert (=> b!108224 m!96836))

(declare-fun m!96838 () Bool)

(assert (=> b!108225 m!96838))

(declare-fun bs!10425 () Bool)

(declare-fun neg-inst!70 () Bool)

(declare-fun s!16262 () Bool)

(assert (= bs!10425 (and neg-inst!70 s!16262)))

(assert (=> bs!10425 (=> true (= (list!742 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775))) (list!742 x!29775)))))

(assert (=> m!96816 m!96818))

(assert (=> m!96816 m!96822))

(assert (=> m!96816 m!96814))

(assert (=> m!96816 s!16262))

(assert (=> m!96814 s!16262))

(declare-fun bs!10426 () Bool)

(assert (= bs!10426 (and neg-inst!70 start!10778)))

(assert (=> bs!10426 (= true inst!70)))

(declare-fun bs!10427 () Bool)

(declare-fun neg-inst!71 () Bool)

(declare-fun s!16264 () Bool)

(assert (= bs!10427 (and neg-inst!71 s!16264)))

(declare-fun res!51791 () Bool)

(declare-fun e!60024 () Bool)

(assert (=> bs!10427 (=> res!51791 e!60024)))

(assert (=> bs!10427 (= res!51791 (not (= (list!742 x!29775) (list!742 x!29775))))))

(assert (=> bs!10427 (=> true e!60024)))

(declare-fun b!108226 () Bool)

(assert (=> b!108226 (= e!60024 (= (toValue!38 thiss!5419 x!29775) (toValue!38 thiss!5419 x!29775)))))

(assert (= (and bs!10427 (not res!51791)) b!108226))

(assert (=> m!96816 m!96814))

(assert (=> m!96816 m!96814))

(assert (=> m!96816 s!16264))

(assert (=> m!96816 s!16264))

(declare-fun bs!10428 () Bool)

(assert (= bs!10428 (and m!96814 m!96816)))

(assert (=> bs!10428 s!16264))

(assert (=> m!96814 s!16264))

(assert (=> bs!10428 s!16264))

(assert (=> m!96814 s!16264))

(declare-fun bs!10429 () Bool)

(declare-fun s!16266 () Bool)

(assert (= bs!10429 (and neg-inst!71 s!16266)))

(declare-fun res!51792 () Bool)

(declare-fun e!60025 () Bool)

(assert (=> bs!10429 (=> res!51792 e!60025)))

(assert (=> bs!10429 (= res!51792 (not (= (list!742 x!29776) (list!742 x!29775))))))

(assert (=> bs!10429 (=> true e!60025)))

(declare-fun b!108227 () Bool)

(assert (=> b!108227 (= e!60025 (= (toValue!38 thiss!5419 x!29776) (toValue!38 thiss!5419 x!29775)))))

(assert (= (and bs!10429 (not res!51792)) b!108227))

(declare-fun bs!10430 () Bool)

(assert (= bs!10430 (and m!96832 m!96816 m!96814)))

(assert (=> bs!10430 m!96824))

(assert (=> bs!10430 m!96814))

(assert (=> bs!10430 s!16266))

(declare-fun bs!10431 () Bool)

(declare-fun s!16268 () Bool)

(assert (= bs!10431 (and neg-inst!71 s!16268)))

(declare-fun res!51793 () Bool)

(declare-fun e!60026 () Bool)

(assert (=> bs!10431 (=> res!51793 e!60026)))

(assert (=> bs!10431 (= res!51793 (not (= (list!742 x!29776) (list!742 x!29776))))))

(assert (=> bs!10431 (=> true e!60026)))

(declare-fun b!108228 () Bool)

(assert (=> b!108228 (= e!60026 (= (toValue!38 thiss!5419 x!29776) (toValue!38 thiss!5419 x!29776)))))

(assert (= (and bs!10431 (not res!51793)) b!108228))

(assert (=> m!96832 m!96824))

(assert (=> m!96832 m!96824))

(assert (=> m!96832 s!16268))

(declare-fun bs!10432 () Bool)

(declare-fun s!16270 () Bool)

(assert (= bs!10432 (and neg-inst!71 s!16270)))

(declare-fun res!51794 () Bool)

(declare-fun e!60027 () Bool)

(assert (=> bs!10432 (=> res!51794 e!60027)))

(assert (=> bs!10432 (= res!51794 (not (= (list!742 x!29775) (list!742 x!29776))))))

(assert (=> bs!10432 (=> true e!60027)))

(declare-fun b!108229 () Bool)

(assert (=> b!108229 (= e!60027 (= (toValue!38 thiss!5419 x!29775) (toValue!38 thiss!5419 x!29776)))))

(assert (= (and bs!10432 (not res!51794)) b!108229))

(assert (=> bs!10430 m!96814))

(assert (=> bs!10430 m!96824))

(assert (=> bs!10430 s!16270))

(assert (=> m!96832 s!16268))

(declare-fun bs!10433 () Bool)

(declare-fun s!16272 () Bool)

(assert (= bs!10433 (and neg-inst!71 s!16272)))

(declare-fun res!51795 () Bool)

(declare-fun e!60028 () Bool)

(assert (=> bs!10433 (=> res!51795 e!60028)))

(assert (=> bs!10433 (= res!51795 (not (= (list!742 x!29777) (list!742 x!29775))))))

(assert (=> bs!10433 (=> true e!60028)))

(declare-fun b!108230 () Bool)

(assert (=> b!108230 (= e!60028 (= (toValue!38 thiss!5419 x!29777) (toValue!38 thiss!5419 x!29775)))))

(assert (= (and bs!10433 (not res!51795)) b!108230))

(declare-fun bs!10434 () Bool)

(assert (= bs!10434 (and m!96826 m!96816 m!96814)))

(assert (=> bs!10434 m!96826))

(assert (=> bs!10434 m!96814))

(assert (=> bs!10434 s!16272))

(declare-fun bs!10435 () Bool)

(declare-fun s!16274 () Bool)

(assert (= bs!10435 (and neg-inst!71 s!16274)))

(declare-fun res!51796 () Bool)

(declare-fun e!60029 () Bool)

(assert (=> bs!10435 (=> res!51796 e!60029)))

(assert (=> bs!10435 (= res!51796 (not (= (list!742 x!29777) (list!742 x!29776))))))

(assert (=> bs!10435 (=> true e!60029)))

(declare-fun b!108231 () Bool)

(assert (=> b!108231 (= e!60029 (= (toValue!38 thiss!5419 x!29777) (toValue!38 thiss!5419 x!29776)))))

(assert (= (and bs!10435 (not res!51796)) b!108231))

(declare-fun bs!10436 () Bool)

(assert (= bs!10436 (and m!96826 m!96832)))

(assert (=> bs!10436 m!96826))

(assert (=> bs!10436 m!96824))

(assert (=> bs!10436 s!16274))

(declare-fun bs!10437 () Bool)

(declare-fun s!16276 () Bool)

(assert (= bs!10437 (and neg-inst!71 s!16276)))

(declare-fun res!51797 () Bool)

(declare-fun e!60030 () Bool)

(assert (=> bs!10437 (=> res!51797 e!60030)))

(assert (=> bs!10437 (= res!51797 (not (= (list!742 x!29777) (list!742 x!29777))))))

(assert (=> bs!10437 (=> true e!60030)))

(declare-fun b!108232 () Bool)

(assert (=> b!108232 (= e!60030 (= (toValue!38 thiss!5419 x!29777) (toValue!38 thiss!5419 x!29777)))))

(assert (= (and bs!10437 (not res!51797)) b!108232))

(assert (=> m!96826 s!16276))

(declare-fun bs!10438 () Bool)

(declare-fun s!16278 () Bool)

(assert (= bs!10438 (and neg-inst!71 s!16278)))

(declare-fun res!51798 () Bool)

(declare-fun e!60031 () Bool)

(assert (=> bs!10438 (=> res!51798 e!60031)))

(assert (=> bs!10438 (= res!51798 (not (= (list!742 x!29775) (list!742 x!29777))))))

(assert (=> bs!10438 (=> true e!60031)))

(declare-fun b!108233 () Bool)

(assert (=> b!108233 (= e!60031 (= (toValue!38 thiss!5419 x!29775) (toValue!38 thiss!5419 x!29777)))))

(assert (= (and bs!10438 (not res!51798)) b!108233))

(assert (=> bs!10434 m!96814))

(assert (=> bs!10434 m!96826))

(assert (=> bs!10434 s!16278))

(declare-fun bs!10439 () Bool)

(declare-fun s!16280 () Bool)

(assert (= bs!10439 (and neg-inst!71 s!16280)))

(declare-fun res!51799 () Bool)

(declare-fun e!60032 () Bool)

(assert (=> bs!10439 (=> res!51799 e!60032)))

(assert (=> bs!10439 (= res!51799 (not (= (list!742 x!29776) (list!742 x!29777))))))

(assert (=> bs!10439 (=> true e!60032)))

(declare-fun b!108234 () Bool)

(assert (=> b!108234 (= e!60032 (= (toValue!38 thiss!5419 x!29776) (toValue!38 thiss!5419 x!29777)))))

(assert (= (and bs!10439 (not res!51799)) b!108234))

(assert (=> bs!10436 m!96824))

(assert (=> bs!10436 m!96826))

(assert (=> bs!10436 s!16280))

(assert (=> m!96826 s!16276))

(declare-fun bs!10440 () Bool)

(assert (= bs!10440 (and m!96834 m!96816 m!96814)))

(assert (=> bs!10440 s!16272))

(declare-fun bs!10441 () Bool)

(assert (= bs!10441 (and m!96834 m!96826)))

(assert (=> bs!10441 s!16276))

(declare-fun bs!10442 () Bool)

(assert (= bs!10442 (and m!96834 m!96832)))

(assert (=> bs!10442 s!16274))

(assert (=> m!96834 s!16276))

(assert (=> bs!10440 s!16278))

(assert (=> bs!10441 s!16276))

(assert (=> bs!10442 s!16280))

(assert (=> m!96834 s!16276))

(declare-fun bs!10443 () Bool)

(declare-fun s!16282 () Bool)

(assert (= bs!10443 (and neg-inst!71 s!16282)))

(declare-fun res!51800 () Bool)

(declare-fun e!60033 () Bool)

(assert (=> bs!10443 (=> res!51800 e!60033)))

(assert (=> bs!10443 (= res!51800 (not (= (list!742 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775))) (list!742 x!29775))))))

(assert (=> bs!10443 (=> true e!60033)))

(declare-fun b!108235 () Bool)

(assert (=> b!108235 (= e!60033 (= (toValue!38 thiss!5419 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775))) (toValue!38 thiss!5419 x!29775)))))

(assert (= (and bs!10443 (not res!51800)) b!108235))

(declare-fun bs!10444 () Bool)

(assert (= bs!10444 (and m!96822 m!96816 m!96814)))

(assert (=> bs!10444 m!96822))

(assert (=> bs!10444 m!96814))

(assert (=> bs!10444 s!16282))

(declare-fun bs!10445 () Bool)

(declare-fun s!16284 () Bool)

(assert (= bs!10445 (and neg-inst!71 s!16284)))

(declare-fun res!51801 () Bool)

(declare-fun e!60034 () Bool)

(assert (=> bs!10445 (=> res!51801 e!60034)))

(assert (=> bs!10445 (= res!51801 (not (= (list!742 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775))) (list!742 x!29777))))))

(assert (=> bs!10445 (=> true e!60034)))

(declare-fun b!108236 () Bool)

(assert (=> b!108236 (= e!60034 (= (toValue!38 thiss!5419 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775))) (toValue!38 thiss!5419 x!29777)))))

(assert (= (and bs!10445 (not res!51801)) b!108236))

(declare-fun bs!10446 () Bool)

(assert (= bs!10446 (and m!96822 m!96826 m!96834)))

(assert (=> bs!10446 m!96822))

(assert (=> bs!10446 m!96826))

(assert (=> bs!10446 s!16284))

(declare-fun bs!10447 () Bool)

(declare-fun s!16286 () Bool)

(assert (= bs!10447 (and neg-inst!71 s!16286)))

(declare-fun res!51802 () Bool)

(declare-fun e!60035 () Bool)

(assert (=> bs!10447 (=> res!51802 e!60035)))

(assert (=> bs!10447 (= res!51802 (not (= (list!742 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775))) (list!742 x!29776))))))

(assert (=> bs!10447 (=> true e!60035)))

(declare-fun b!108237 () Bool)

(assert (=> b!108237 (= e!60035 (= (toValue!38 thiss!5419 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775))) (toValue!38 thiss!5419 x!29776)))))

(assert (= (and bs!10447 (not res!51802)) b!108237))

(declare-fun bs!10448 () Bool)

(assert (= bs!10448 (and m!96822 m!96832)))

(assert (=> bs!10448 m!96822))

(assert (=> bs!10448 m!96824))

(assert (=> bs!10448 s!16286))

(declare-fun bs!10449 () Bool)

(declare-fun s!16288 () Bool)

(assert (= bs!10449 (and neg-inst!71 s!16288)))

(declare-fun res!51803 () Bool)

(declare-fun e!60036 () Bool)

(assert (=> bs!10449 (=> res!51803 e!60036)))

(assert (=> bs!10449 (= res!51803 (not (= (list!742 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775))) (list!742 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775))))))))

(assert (=> bs!10449 (=> true e!60036)))

(declare-fun b!108238 () Bool)

(assert (=> b!108238 (= e!60036 (= (toValue!38 thiss!5419 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775))) (toValue!38 thiss!5419 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775)))))))

(assert (= (and bs!10449 (not res!51803)) b!108238))

(assert (=> m!96822 s!16288))

(declare-fun bs!10450 () Bool)

(declare-fun s!16290 () Bool)

(assert (= bs!10450 (and neg-inst!71 s!16290)))

(declare-fun res!51804 () Bool)

(declare-fun e!60037 () Bool)

(assert (=> bs!10450 (=> res!51804 e!60037)))

(assert (=> bs!10450 (= res!51804 (not (= (list!742 x!29775) (list!742 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775))))))))

(assert (=> bs!10450 (=> true e!60037)))

(declare-fun b!108239 () Bool)

(assert (=> b!108239 (= e!60037 (= (toValue!38 thiss!5419 x!29775) (toValue!38 thiss!5419 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775)))))))

(assert (= (and bs!10450 (not res!51804)) b!108239))

(assert (=> bs!10444 m!96814))

(assert (=> bs!10444 m!96822))

(assert (=> bs!10444 s!16290))

(declare-fun bs!10451 () Bool)

(declare-fun s!16292 () Bool)

(assert (= bs!10451 (and neg-inst!71 s!16292)))

(declare-fun res!51805 () Bool)

(declare-fun e!60038 () Bool)

(assert (=> bs!10451 (=> res!51805 e!60038)))

(assert (=> bs!10451 (= res!51805 (not (= (list!742 x!29777) (list!742 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775))))))))

(assert (=> bs!10451 (=> true e!60038)))

(declare-fun b!108240 () Bool)

(assert (=> b!108240 (= e!60038 (= (toValue!38 thiss!5419 x!29777) (toValue!38 thiss!5419 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775)))))))

(assert (= (and bs!10451 (not res!51805)) b!108240))

(assert (=> bs!10446 m!96826))

(assert (=> bs!10446 m!96822))

(assert (=> bs!10446 s!16292))

(declare-fun bs!10452 () Bool)

(declare-fun s!16294 () Bool)

(assert (= bs!10452 (and neg-inst!71 s!16294)))

(declare-fun res!51806 () Bool)

(declare-fun e!60039 () Bool)

(assert (=> bs!10452 (=> res!51806 e!60039)))

(assert (=> bs!10452 (= res!51806 (not (= (list!742 x!29776) (list!742 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775))))))))

(assert (=> bs!10452 (=> true e!60039)))

(declare-fun b!108241 () Bool)

(assert (=> b!108241 (= e!60039 (= (toValue!38 thiss!5419 x!29776) (toValue!38 thiss!5419 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775)))))))

(assert (= (and bs!10452 (not res!51806)) b!108241))

(assert (=> bs!10448 m!96824))

(assert (=> bs!10448 m!96822))

(assert (=> bs!10448 s!16294))

(assert (=> m!96822 s!16288))

(declare-fun bs!10453 () Bool)

(assert (= bs!10453 (and m!96824 m!96816 m!96814)))

(assert (=> bs!10453 s!16266))

(declare-fun bs!10454 () Bool)

(assert (= bs!10454 (and m!96824 m!96822)))

(assert (=> bs!10454 s!16294))

(declare-fun bs!10455 () Bool)

(assert (= bs!10455 (and m!96824 m!96826 m!96834)))

(assert (=> bs!10455 s!16280))

(declare-fun bs!10456 () Bool)

(assert (= bs!10456 (and m!96824 m!96832)))

(assert (=> bs!10456 s!16268))

(assert (=> m!96824 s!16268))

(assert (=> bs!10455 s!16274))

(assert (=> bs!10454 s!16286))

(assert (=> m!96824 s!16268))

(assert (=> bs!10456 s!16268))

(assert (=> bs!10453 s!16270))

(declare-fun bs!10457 () Bool)

(assert (= bs!10457 (and neg-inst!71 b!108213)))

(assert (=> bs!10457 (= true inst!71)))

(declare-fun res!51788 () Bool)

(declare-fun e!60019 () Bool)

(assert (=> start!10778 (=> res!51788 e!60019)))

(declare-fun lambda!2066 () Int)

(declare-fun Forall!84 (Int) Bool)

(assert (=> start!10778 (= res!51788 (not (Forall!84 lambda!2066)))))

(assert (=> start!10778 (= (Forall!84 lambda!2066) inst!70)))

(assert (=> start!10778 (not e!60019)))

(assert (=> start!10778 true))

(declare-fun e!60018 () Bool)

(assert (=> b!108212 (= e!60019 e!60018)))

(declare-fun res!51789 () Bool)

(assert (=> b!108212 (=> res!51789 e!60018)))

(declare-fun lambda!2067 () Int)

(declare-fun lambda!2068 () Int)

(declare-fun semiInverseModEq!103 (Int Int) Bool)

(assert (=> b!108212 (= res!51789 (not (semiInverseModEq!103 lambda!2067 lambda!2068)))))

(assert (=> b!108212 (= (semiInverseModEq!103 lambda!2067 lambda!2068) (Forall!84 lambda!2066))))

(declare-fun lambda!2069 () Int)

(declare-fun Forall2!68 (Int) Bool)

(assert (=> b!108213 (= e!60018 (Forall2!68 lambda!2069))))

(assert (=> b!108213 (= (Forall2!68 lambda!2069) inst!71)))

(assert (= neg-inst!70 inst!70))

(assert (= (and start!10778 (not res!51788)) b!108212))

(assert (= (and b!108212 (not res!51789)) b!108213))

(assert (= neg-inst!71 inst!71))

(declare-fun m!96840 () Bool)

(assert (=> start!10778 m!96840))

(assert (=> start!10778 m!96840))

(declare-fun m!96842 () Bool)

(assert (=> b!108212 m!96842))

(assert (=> b!108212 m!96842))

(assert (=> b!108212 m!96840))

(declare-fun m!96844 () Bool)

(assert (=> b!108213 m!96844))

(assert (=> b!108213 m!96844))

(check-sat (not b!108233) (not bs!10427) (not b!108231) (not bs!10437) (not bs!10438) (not bs!10449) (not b!108232) (not bs!10435) (not b!108238) (not b!108240) (not bs!10425) (not b!108222) (not b!108234) (not bs!10432) (not bs!10429) (not b!108223) (not start!10778) (not b!108235) (not b!108227) (not b!108236) (not bs!10445) (not bs!10450) (not bs!10452) (not bs!10443) (not b!108237) (not b!108213) (not bs!10439) (not b!108239) (not b!108229) (not b!108224) (not b!108212) (not bs!10433) (not b!108226) (not b!108225) (not bs!10431) (not b!108230) (not b!108228) (not bs!10451) (not b!108241) (not bs!10447))
(check-sat)
(get-model)

(declare-fun d!26701 () Bool)

(declare-fun list!743 (Conc!547) List!1721)

(assert (=> d!26701 (= (list!742 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775))) (list!743 (c!26002 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775)))))))

(declare-fun bs!10458 () Bool)

(assert (= bs!10458 d!26701))

(declare-fun m!96846 () Bool)

(assert (=> bs!10458 m!96846))

(assert (=> bs!10447 d!26701))

(declare-fun d!26703 () Bool)

(assert (=> d!26703 (= (list!742 x!29776) (list!743 (c!26002 x!29776)))))

(declare-fun bs!10459 () Bool)

(assert (= bs!10459 d!26703))

(declare-fun m!96848 () Bool)

(assert (=> bs!10459 m!96848))

(assert (=> bs!10447 d!26703))

(assert (=> bs!10439 d!26703))

(declare-fun d!26705 () Bool)

(assert (=> d!26705 (= (list!742 x!29777) (list!743 (c!26002 x!29777)))))

(declare-fun bs!10460 () Bool)

(assert (= bs!10460 d!26705))

(declare-fun m!96850 () Bool)

(assert (=> bs!10460 m!96850))

(assert (=> bs!10439 d!26705))

(declare-fun d!26707 () Bool)

(declare-fun efficientList!28 (BalanceConc!1098) List!1721)

(assert (=> d!26707 (= (toValue!38 thiss!5419 x!29776) (ErrorTokenValue!369 (efficientList!28 x!29776)))))

(declare-fun bs!10461 () Bool)

(assert (= bs!10461 d!26707))

(declare-fun m!96852 () Bool)

(assert (=> bs!10461 m!96852))

(assert (=> b!108227 d!26707))

(declare-fun d!26709 () Bool)

(assert (=> d!26709 (= (toValue!38 thiss!5419 x!29775) (ErrorTokenValue!369 (efficientList!28 x!29775)))))

(declare-fun bs!10462 () Bool)

(assert (= bs!10462 d!26709))

(declare-fun m!96854 () Bool)

(assert (=> bs!10462 m!96854))

(assert (=> b!108227 d!26709))

(declare-fun d!26711 () Bool)

(assert (=> d!26711 (= (toValue!38 thiss!5419 x!29777) (ErrorTokenValue!369 (efficientList!28 x!29777)))))

(declare-fun bs!10463 () Bool)

(assert (= bs!10463 d!26711))

(declare-fun m!96856 () Bool)

(assert (=> bs!10463 m!96856))

(assert (=> b!108230 d!26711))

(assert (=> b!108230 d!26709))

(assert (=> bs!10451 d!26705))

(assert (=> bs!10451 d!26701))

(assert (=> b!108233 d!26709))

(assert (=> b!108233 d!26711))

(declare-fun d!26713 () Bool)

(assert (=> d!26713 (= (toValue!38 thiss!5419 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775))) (ErrorTokenValue!369 (efficientList!28 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775)))))))

(declare-fun bs!10464 () Bool)

(assert (= bs!10464 d!26713))

(assert (=> bs!10464 m!96818))

(declare-fun m!96858 () Bool)

(assert (=> bs!10464 m!96858))

(assert (=> b!108236 d!26713))

(assert (=> b!108236 d!26711))

(assert (=> bs!10429 d!26703))

(declare-fun d!26715 () Bool)

(assert (=> d!26715 (= (list!742 x!29775) (list!743 (c!26002 x!29775)))))

(declare-fun bs!10465 () Bool)

(assert (= bs!10465 d!26715))

(declare-fun m!96860 () Bool)

(assert (=> bs!10465 m!96860))

(assert (=> bs!10429 d!26715))

(assert (=> b!108239 d!26709))

(assert (=> b!108239 d!26713))

(assert (=> bs!10445 d!26701))

(assert (=> bs!10445 d!26705))

(assert (=> bs!10433 d!26705))

(assert (=> bs!10433 d!26715))

(assert (=> bs!10450 d!26715))

(assert (=> bs!10450 d!26701))

(assert (=> bs!10438 d!26715))

(assert (=> bs!10438 d!26705))

(assert (=> b!108226 d!26709))

(assert (=> b!108229 d!26709))

(assert (=> b!108229 d!26707))

(assert (=> b!108235 d!26713))

(assert (=> b!108235 d!26709))

(assert (=> bs!10427 d!26715))

(assert (=> b!108238 d!26713))

(assert (=> b!108232 d!26711))

(assert (=> bs!10432 d!26715))

(assert (=> bs!10432 d!26703))

(assert (=> bs!10437 d!26705))

(assert (=> bs!10443 d!26701))

(assert (=> bs!10443 d!26715))

(assert (=> b!108228 d!26707))

(assert (=> bs!10449 d!26701))

(assert (=> b!108241 d!26707))

(assert (=> b!108241 d!26713))

(assert (=> b!108231 d!26711))

(assert (=> b!108231 d!26707))

(assert (=> bs!10452 d!26703))

(assert (=> bs!10452 d!26701))

(assert (=> b!108237 d!26713))

(assert (=> b!108237 d!26707))

(assert (=> bs!10431 d!26703))

(assert (=> bs!10435 d!26705))

(assert (=> bs!10435 d!26703))

(assert (=> b!108240 d!26711))

(assert (=> b!108240 d!26713))

(assert (=> b!108234 d!26707))

(assert (=> b!108234 d!26711))

(declare-fun bs!10466 () Bool)

(assert (= bs!10466 (and m!96816 b!108226)))

(assert (=> bs!10466 m!96816))

(assert (=> bs!10466 m!96816))

(declare-fun bs!10467 () Bool)

(assert (= bs!10467 (and m!96832 m!96816 m!96814 b!108227)))

(assert (=> bs!10467 m!96832))

(assert (=> bs!10467 m!96816))

(declare-fun bs!10468 () Bool)

(assert (= bs!10468 (and m!96832 b!108228)))

(assert (=> bs!10468 m!96832))

(assert (=> bs!10468 m!96832))

(declare-fun bs!10469 () Bool)

(assert (= bs!10469 (and m!96832 m!96816 m!96814 b!108229)))

(assert (=> bs!10469 m!96816))

(assert (=> bs!10469 m!96832))

(declare-fun bs!10470 () Bool)

(assert (= bs!10470 (and m!96826 m!96816 m!96814 b!108230)))

(assert (=> bs!10470 m!96834))

(assert (=> bs!10470 m!96816))

(declare-fun bs!10471 () Bool)

(assert (= bs!10471 (and m!96826 m!96832 b!108231)))

(assert (=> bs!10471 m!96834))

(assert (=> bs!10471 m!96832))

(declare-fun bs!10472 () Bool)

(assert (= bs!10472 (and m!96826 b!108232)))

(assert (=> bs!10472 m!96834))

(assert (=> bs!10472 m!96834))

(declare-fun bs!10473 () Bool)

(assert (= bs!10473 (and m!96826 m!96816 m!96814 b!108233)))

(assert (=> bs!10473 m!96816))

(assert (=> bs!10473 m!96834))

(declare-fun bs!10474 () Bool)

(assert (= bs!10474 (and m!96826 m!96832 b!108234)))

(assert (=> bs!10474 m!96832))

(assert (=> bs!10474 m!96834))

(declare-fun bs!10475 () Bool)

(assert (= bs!10475 (and m!96822 m!96816 m!96814 b!108235)))

(declare-fun m!96862 () Bool)

(assert (=> bs!10475 m!96862))

(assert (=> bs!10475 m!96816))

(declare-fun bs!10476 () Bool)

(assert (= bs!10476 (and m!96822 m!96826 m!96834 b!108236)))

(assert (=> bs!10476 m!96862))

(assert (=> bs!10476 m!96834))

(declare-fun bs!10477 () Bool)

(assert (= bs!10477 (and m!96822 m!96832 b!108237)))

(assert (=> bs!10477 m!96862))

(assert (=> bs!10477 m!96832))

(declare-fun bs!10478 () Bool)

(assert (= bs!10478 (and m!96822 b!108238)))

(assert (=> bs!10478 m!96862))

(assert (=> bs!10478 m!96862))

(declare-fun bs!10479 () Bool)

(assert (= bs!10479 (and m!96822 m!96816 m!96814 b!108239)))

(assert (=> bs!10479 m!96816))

(assert (=> bs!10479 m!96862))

(declare-fun bs!10480 () Bool)

(assert (= bs!10480 (and m!96822 m!96826 m!96834 b!108240)))

(assert (=> bs!10480 m!96834))

(assert (=> bs!10480 m!96862))

(declare-fun bs!10481 () Bool)

(assert (= bs!10481 (and m!96822 m!96832 b!108241)))

(assert (=> bs!10481 m!96832))

(assert (=> bs!10481 m!96862))

(check-sat (not d!26709) (not b!108213) (not b!108225) (not bs!10425) (not b!108222) (not d!26707) (not b!108223) (not start!10778) (not d!26705) (not d!26701) (not b!108224) (not b!108212) (not d!26711) (not d!26713) (not d!26703) (not d!26715))
(check-sat)
(get-model)

(declare-fun d!26733 () Bool)

(declare-fun lt!30437 () List!1721)

(assert (=> d!26733 (= lt!30437 (list!742 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775))))))

(declare-fun efficientList!30 (Conc!547 List!1721) List!1721)

(declare-fun efficientList$default$2!10 (Conc!547) List!1721)

(assert (=> d!26733 (= lt!30437 (efficientList!30 (c!26002 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775))) (efficientList$default$2!10 (c!26002 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775))))))))

(assert (=> d!26733 (= (efficientList!28 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775))) lt!30437)))

(declare-fun bs!10506 () Bool)

(assert (= bs!10506 d!26733))

(assert (=> bs!10506 m!96818))

(assert (=> bs!10506 m!96822))

(declare-fun m!96882 () Bool)

(assert (=> bs!10506 m!96882))

(assert (=> bs!10506 m!96882))

(declare-fun m!96884 () Bool)

(assert (=> bs!10506 m!96884))

(assert (=> d!26713 d!26733))

(declare-fun b!108250 () Bool)

(declare-fun e!60044 () List!1721)

(assert (=> b!108250 (= e!60044 Nil!1715)))

(declare-fun b!108253 () Bool)

(declare-fun e!60045 () List!1721)

(declare-fun ++!291 (List!1721 List!1721) List!1721)

(assert (=> b!108253 (= e!60045 (++!291 (list!743 (left!1329 (c!26002 x!29777))) (list!743 (right!1659 (c!26002 x!29777)))))))

(declare-fun b!108251 () Bool)

(assert (=> b!108251 (= e!60044 e!60045)))

(declare-fun c!26008 () Bool)

(get-info :version)

(assert (=> b!108251 (= c!26008 ((_ is Leaf!872) (c!26002 x!29777)))))

(declare-fun d!26735 () Bool)

(declare-fun c!26007 () Bool)

(assert (=> d!26735 (= c!26007 ((_ is Empty!547) (c!26002 x!29777)))))

(assert (=> d!26735 (= (list!743 (c!26002 x!29777)) e!60044)))

(declare-fun b!108252 () Bool)

(declare-fun list!745 (IArray!1095) List!1721)

(assert (=> b!108252 (= e!60045 (list!745 (xs!3142 (c!26002 x!29777))))))

(assert (= (and d!26735 c!26007) b!108250))

(assert (= (and d!26735 (not c!26007)) b!108251))

(assert (= (and b!108251 c!26008) b!108252))

(assert (= (and b!108251 (not c!26008)) b!108253))

(declare-fun m!96886 () Bool)

(assert (=> b!108253 m!96886))

(declare-fun m!96888 () Bool)

(assert (=> b!108253 m!96888))

(assert (=> b!108253 m!96886))

(assert (=> b!108253 m!96888))

(declare-fun m!96890 () Bool)

(assert (=> b!108253 m!96890))

(declare-fun m!96892 () Bool)

(assert (=> b!108252 m!96892))

(assert (=> d!26705 d!26735))

(declare-fun d!26737 () Bool)

(declare-fun lt!30438 () List!1721)

(assert (=> d!26737 (= lt!30438 (list!742 x!29777))))

(assert (=> d!26737 (= lt!30438 (efficientList!30 (c!26002 x!29777) (efficientList$default$2!10 (c!26002 x!29777))))))

(assert (=> d!26737 (= (efficientList!28 x!29777) lt!30438)))

(declare-fun bs!10507 () Bool)

(assert (= bs!10507 d!26737))

(assert (=> bs!10507 m!96826))

(declare-fun m!96894 () Bool)

(assert (=> bs!10507 m!96894))

(assert (=> bs!10507 m!96894))

(declare-fun m!96896 () Bool)

(assert (=> bs!10507 m!96896))

(assert (=> d!26711 d!26737))

(declare-fun b!108254 () Bool)

(declare-fun e!60046 () List!1721)

(assert (=> b!108254 (= e!60046 Nil!1715)))

(declare-fun b!108257 () Bool)

(declare-fun e!60047 () List!1721)

(assert (=> b!108257 (= e!60047 (++!291 (list!743 (left!1329 (c!26002 x!29776))) (list!743 (right!1659 (c!26002 x!29776)))))))

(declare-fun b!108255 () Bool)

(assert (=> b!108255 (= e!60046 e!60047)))

(declare-fun c!26010 () Bool)

(assert (=> b!108255 (= c!26010 ((_ is Leaf!872) (c!26002 x!29776)))))

(declare-fun d!26739 () Bool)

(declare-fun c!26009 () Bool)

(assert (=> d!26739 (= c!26009 ((_ is Empty!547) (c!26002 x!29776)))))

(assert (=> d!26739 (= (list!743 (c!26002 x!29776)) e!60046)))

(declare-fun b!108256 () Bool)

(assert (=> b!108256 (= e!60047 (list!745 (xs!3142 (c!26002 x!29776))))))

(assert (= (and d!26739 c!26009) b!108254))

(assert (= (and d!26739 (not c!26009)) b!108255))

(assert (= (and b!108255 c!26010) b!108256))

(assert (= (and b!108255 (not c!26010)) b!108257))

(declare-fun m!96898 () Bool)

(assert (=> b!108257 m!96898))

(declare-fun m!96900 () Bool)

(assert (=> b!108257 m!96900))

(assert (=> b!108257 m!96898))

(assert (=> b!108257 m!96900))

(declare-fun m!96902 () Bool)

(assert (=> b!108257 m!96902))

(declare-fun m!96904 () Bool)

(assert (=> b!108256 m!96904))

(assert (=> d!26703 d!26739))

(declare-fun d!26741 () Bool)

(declare-fun lt!30439 () List!1721)

(assert (=> d!26741 (= lt!30439 (list!742 x!29775))))

(assert (=> d!26741 (= lt!30439 (efficientList!30 (c!26002 x!29775) (efficientList$default$2!10 (c!26002 x!29775))))))

(assert (=> d!26741 (= (efficientList!28 x!29775) lt!30439)))

(declare-fun bs!10508 () Bool)

(assert (= bs!10508 d!26741))

(assert (=> bs!10508 m!96814))

(declare-fun m!96906 () Bool)

(assert (=> bs!10508 m!96906))

(assert (=> bs!10508 m!96906))

(declare-fun m!96908 () Bool)

(assert (=> bs!10508 m!96908))

(assert (=> d!26709 d!26741))

(declare-fun b!108258 () Bool)

(declare-fun e!60048 () List!1721)

(assert (=> b!108258 (= e!60048 Nil!1715)))

(declare-fun b!108261 () Bool)

(declare-fun e!60049 () List!1721)

(assert (=> b!108261 (= e!60049 (++!291 (list!743 (left!1329 (c!26002 x!29775))) (list!743 (right!1659 (c!26002 x!29775)))))))

(declare-fun b!108259 () Bool)

(assert (=> b!108259 (= e!60048 e!60049)))

(declare-fun c!26012 () Bool)

(assert (=> b!108259 (= c!26012 ((_ is Leaf!872) (c!26002 x!29775)))))

(declare-fun d!26743 () Bool)

(declare-fun c!26011 () Bool)

(assert (=> d!26743 (= c!26011 ((_ is Empty!547) (c!26002 x!29775)))))

(assert (=> d!26743 (= (list!743 (c!26002 x!29775)) e!60048)))

(declare-fun b!108260 () Bool)

(assert (=> b!108260 (= e!60049 (list!745 (xs!3142 (c!26002 x!29775))))))

(assert (= (and d!26743 c!26011) b!108258))

(assert (= (and d!26743 (not c!26011)) b!108259))

(assert (= (and b!108259 c!26012) b!108260))

(assert (= (and b!108259 (not c!26012)) b!108261))

(declare-fun m!96910 () Bool)

(assert (=> b!108261 m!96910))

(declare-fun m!96912 () Bool)

(assert (=> b!108261 m!96912))

(assert (=> b!108261 m!96910))

(assert (=> b!108261 m!96912))

(declare-fun m!96914 () Bool)

(assert (=> b!108261 m!96914))

(declare-fun m!96916 () Bool)

(assert (=> b!108260 m!96916))

(assert (=> d!26715 d!26743))

(declare-fun b!108262 () Bool)

(declare-fun e!60050 () List!1721)

(assert (=> b!108262 (= e!60050 Nil!1715)))

(declare-fun b!108265 () Bool)

(declare-fun e!60051 () List!1721)

(assert (=> b!108265 (= e!60051 (++!291 (list!743 (left!1329 (c!26002 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775))))) (list!743 (right!1659 (c!26002 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775)))))))))

(declare-fun b!108263 () Bool)

(assert (=> b!108263 (= e!60050 e!60051)))

(declare-fun c!26014 () Bool)

(assert (=> b!108263 (= c!26014 ((_ is Leaf!872) (c!26002 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775)))))))

(declare-fun d!26745 () Bool)

(declare-fun c!26013 () Bool)

(assert (=> d!26745 (= c!26013 ((_ is Empty!547) (c!26002 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775)))))))

(assert (=> d!26745 (= (list!743 (c!26002 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775)))) e!60050)))

(declare-fun b!108264 () Bool)

(assert (=> b!108264 (= e!60051 (list!745 (xs!3142 (c!26002 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775))))))))

(assert (= (and d!26745 c!26013) b!108262))

(assert (= (and d!26745 (not c!26013)) b!108263))

(assert (= (and b!108263 c!26014) b!108264))

(assert (= (and b!108263 (not c!26014)) b!108265))

(declare-fun m!96918 () Bool)

(assert (=> b!108265 m!96918))

(declare-fun m!96920 () Bool)

(assert (=> b!108265 m!96920))

(assert (=> b!108265 m!96918))

(assert (=> b!108265 m!96920))

(declare-fun m!96922 () Bool)

(assert (=> b!108265 m!96922))

(declare-fun m!96924 () Bool)

(assert (=> b!108264 m!96924))

(assert (=> d!26701 d!26745))

(declare-fun d!26747 () Bool)

(declare-fun lt!30440 () List!1721)

(assert (=> d!26747 (= lt!30440 (list!742 x!29776))))

(assert (=> d!26747 (= lt!30440 (efficientList!30 (c!26002 x!29776) (efficientList$default$2!10 (c!26002 x!29776))))))

(assert (=> d!26747 (= (efficientList!28 x!29776) lt!30440)))

(declare-fun bs!10509 () Bool)

(assert (= bs!10509 d!26747))

(assert (=> bs!10509 m!96824))

(declare-fun m!96926 () Bool)

(assert (=> bs!10509 m!96926))

(assert (=> bs!10509 m!96926))

(declare-fun m!96928 () Bool)

(assert (=> bs!10509 m!96928))

(assert (=> d!26707 d!26747))

(check-sat (not b!108265) (not b!108257) (not d!26747) (not b!108213) (not b!108256) (not b!108260) (not d!26733) (not b!108225) (not b!108261) (not b!108222) (not b!108253) (not d!26741) (not b!108264) (not b!108223) (not start!10778) (not b!108224) (not d!26737) (not b!108212) (not bs!10425) (not b!108252))
(check-sat)
(get-model)

(assert (=> d!26741 d!26715))

(declare-fun b!108302 () Bool)

(declare-fun e!60071 () List!1721)

(declare-fun efficientList!32 (IArray!1095) List!1721)

(assert (=> b!108302 (= e!60071 (efficientList!32 (xs!3142 (c!26002 x!29775))))))

(declare-fun b!108303 () Bool)

(declare-fun lt!30458 () List!1721)

(assert (=> b!108303 (= e!60071 lt!30458)))

(declare-fun b!108304 () Bool)

(declare-fun e!60070 () List!1721)

(declare-fun e!60072 () List!1721)

(assert (=> b!108304 (= e!60070 e!60072)))

(declare-fun c!26033 () Bool)

(assert (=> b!108304 (= c!26033 ((_ is Leaf!872) (c!26002 x!29775)))))

(declare-fun b!108305 () Bool)

(assert (=> b!108305 (= e!60070 (efficientList$default$2!10 (c!26002 x!29775)))))

(declare-fun b!108306 () Bool)

(declare-fun call!4773 () List!1721)

(assert (=> b!108306 (= e!60072 call!4773)))

(declare-fun b!108307 () Bool)

(declare-datatypes ((Unit!1146 0))(
  ( (Unit!1147) )
))
(declare-fun lt!30461 () Unit!1146)

(declare-fun lt!30459 () Unit!1146)

(assert (=> b!108307 (= lt!30461 lt!30459)))

(declare-fun lt!30460 () List!1721)

(assert (=> b!108307 (= (++!291 call!4773 (efficientList$default$2!10 (c!26002 x!29775))) (++!291 lt!30458 (++!291 lt!30460 (efficientList$default$2!10 (c!26002 x!29775)))))))

(declare-fun lemmaConcatAssociativity!110 (List!1721 List!1721 List!1721) Unit!1146)

(assert (=> b!108307 (= lt!30459 (lemmaConcatAssociativity!110 lt!30458 lt!30460 (efficientList$default$2!10 (c!26002 x!29775))))))

(assert (=> b!108307 (= lt!30460 (list!743 (right!1659 (c!26002 x!29775))))))

(assert (=> b!108307 (= lt!30458 (list!743 (left!1329 (c!26002 x!29775))))))

(assert (=> b!108307 (= e!60072 (efficientList!30 (left!1329 (c!26002 x!29775)) (efficientList!30 (right!1659 (c!26002 x!29775)) (efficientList$default$2!10 (c!26002 x!29775)))))))

(declare-fun d!26765 () Bool)

(declare-fun lt!30457 () List!1721)

(assert (=> d!26765 (= lt!30457 (++!291 (list!743 (c!26002 x!29775)) (efficientList$default$2!10 (c!26002 x!29775))))))

(assert (=> d!26765 (= lt!30457 e!60070)))

(declare-fun c!26034 () Bool)

(assert (=> d!26765 (= c!26034 ((_ is Empty!547) (c!26002 x!29775)))))

(assert (=> d!26765 (= (efficientList!30 (c!26002 x!29775) (efficientList$default$2!10 (c!26002 x!29775))) lt!30457)))

(declare-fun bm!4768 () Bool)

(declare-fun c!26035 () Bool)

(assert (=> bm!4768 (= c!26035 c!26033)))

(assert (=> bm!4768 (= call!4773 (++!291 e!60071 (ite c!26033 (efficientList$default$2!10 (c!26002 x!29775)) lt!30460)))))

(assert (= (and d!26765 c!26034) b!108305))

(assert (= (and d!26765 (not c!26034)) b!108304))

(assert (= (and b!108304 c!26033) b!108306))

(assert (= (and b!108304 (not c!26033)) b!108307))

(assert (= (or b!108306 b!108307) bm!4768))

(assert (= (and bm!4768 c!26035) b!108302))

(assert (= (and bm!4768 (not c!26035)) b!108303))

(declare-fun m!96978 () Bool)

(assert (=> b!108302 m!96978))

(assert (=> b!108307 m!96906))

(declare-fun m!96980 () Bool)

(assert (=> b!108307 m!96980))

(assert (=> b!108307 m!96910))

(declare-fun m!96982 () Bool)

(assert (=> b!108307 m!96982))

(declare-fun m!96984 () Bool)

(assert (=> b!108307 m!96984))

(assert (=> b!108307 m!96912))

(assert (=> b!108307 m!96906))

(declare-fun m!96986 () Bool)

(assert (=> b!108307 m!96986))

(assert (=> b!108307 m!96906))

(assert (=> b!108307 m!96982))

(assert (=> b!108307 m!96986))

(declare-fun m!96988 () Bool)

(assert (=> b!108307 m!96988))

(assert (=> b!108307 m!96906))

(declare-fun m!96990 () Bool)

(assert (=> b!108307 m!96990))

(assert (=> d!26765 m!96860))

(assert (=> d!26765 m!96860))

(assert (=> d!26765 m!96906))

(declare-fun m!96992 () Bool)

(assert (=> d!26765 m!96992))

(declare-fun m!96994 () Bool)

(assert (=> bm!4768 m!96994))

(assert (=> d!26741 d!26765))

(declare-fun d!26767 () Bool)

(assert (=> d!26767 (= (efficientList$default$2!10 (c!26002 x!29775)) Nil!1715)))

(assert (=> d!26741 d!26767))

(assert (=> d!26737 d!26705))

(declare-fun b!108308 () Bool)

(declare-fun e!60074 () List!1721)

(assert (=> b!108308 (= e!60074 (efficientList!32 (xs!3142 (c!26002 x!29777))))))

(declare-fun b!108309 () Bool)

(declare-fun lt!30463 () List!1721)

(assert (=> b!108309 (= e!60074 lt!30463)))

(declare-fun b!108310 () Bool)

(declare-fun e!60073 () List!1721)

(declare-fun e!60075 () List!1721)

(assert (=> b!108310 (= e!60073 e!60075)))

(declare-fun c!26036 () Bool)

(assert (=> b!108310 (= c!26036 ((_ is Leaf!872) (c!26002 x!29777)))))

(declare-fun b!108311 () Bool)

(assert (=> b!108311 (= e!60073 (efficientList$default$2!10 (c!26002 x!29777)))))

(declare-fun b!108312 () Bool)

(declare-fun call!4774 () List!1721)

(assert (=> b!108312 (= e!60075 call!4774)))

(declare-fun b!108313 () Bool)

(declare-fun lt!30466 () Unit!1146)

(declare-fun lt!30464 () Unit!1146)

(assert (=> b!108313 (= lt!30466 lt!30464)))

(declare-fun lt!30465 () List!1721)

(assert (=> b!108313 (= (++!291 call!4774 (efficientList$default$2!10 (c!26002 x!29777))) (++!291 lt!30463 (++!291 lt!30465 (efficientList$default$2!10 (c!26002 x!29777)))))))

(assert (=> b!108313 (= lt!30464 (lemmaConcatAssociativity!110 lt!30463 lt!30465 (efficientList$default$2!10 (c!26002 x!29777))))))

(assert (=> b!108313 (= lt!30465 (list!743 (right!1659 (c!26002 x!29777))))))

(assert (=> b!108313 (= lt!30463 (list!743 (left!1329 (c!26002 x!29777))))))

(assert (=> b!108313 (= e!60075 (efficientList!30 (left!1329 (c!26002 x!29777)) (efficientList!30 (right!1659 (c!26002 x!29777)) (efficientList$default$2!10 (c!26002 x!29777)))))))

(declare-fun d!26769 () Bool)

(declare-fun lt!30462 () List!1721)

(assert (=> d!26769 (= lt!30462 (++!291 (list!743 (c!26002 x!29777)) (efficientList$default$2!10 (c!26002 x!29777))))))

(assert (=> d!26769 (= lt!30462 e!60073)))

(declare-fun c!26037 () Bool)

(assert (=> d!26769 (= c!26037 ((_ is Empty!547) (c!26002 x!29777)))))

(assert (=> d!26769 (= (efficientList!30 (c!26002 x!29777) (efficientList$default$2!10 (c!26002 x!29777))) lt!30462)))

(declare-fun bm!4769 () Bool)

(declare-fun c!26038 () Bool)

(assert (=> bm!4769 (= c!26038 c!26036)))

(assert (=> bm!4769 (= call!4774 (++!291 e!60074 (ite c!26036 (efficientList$default$2!10 (c!26002 x!29777)) lt!30465)))))

(assert (= (and d!26769 c!26037) b!108311))

(assert (= (and d!26769 (not c!26037)) b!108310))

(assert (= (and b!108310 c!26036) b!108312))

(assert (= (and b!108310 (not c!26036)) b!108313))

(assert (= (or b!108312 b!108313) bm!4769))

(assert (= (and bm!4769 c!26038) b!108308))

(assert (= (and bm!4769 (not c!26038)) b!108309))

(declare-fun m!96996 () Bool)

(assert (=> b!108308 m!96996))

(assert (=> b!108313 m!96894))

(declare-fun m!96998 () Bool)

(assert (=> b!108313 m!96998))

(assert (=> b!108313 m!96886))

(declare-fun m!97000 () Bool)

(assert (=> b!108313 m!97000))

(declare-fun m!97002 () Bool)

(assert (=> b!108313 m!97002))

(assert (=> b!108313 m!96888))

(assert (=> b!108313 m!96894))

(declare-fun m!97004 () Bool)

(assert (=> b!108313 m!97004))

(assert (=> b!108313 m!96894))

(assert (=> b!108313 m!97000))

(assert (=> b!108313 m!97004))

(declare-fun m!97006 () Bool)

(assert (=> b!108313 m!97006))

(assert (=> b!108313 m!96894))

(declare-fun m!97008 () Bool)

(assert (=> b!108313 m!97008))

(assert (=> d!26769 m!96850))

(assert (=> d!26769 m!96850))

(assert (=> d!26769 m!96894))

(declare-fun m!97010 () Bool)

(assert (=> d!26769 m!97010))

(declare-fun m!97012 () Bool)

(assert (=> bm!4769 m!97012))

(assert (=> d!26737 d!26769))

(declare-fun d!26771 () Bool)

(assert (=> d!26771 (= (efficientList$default$2!10 (c!26002 x!29777)) Nil!1715)))

(assert (=> d!26737 d!26771))

(assert (=> start!10778 d!26709))

(assert (=> start!10778 d!26701))

(assert (=> start!10778 d!26715))

(declare-fun d!26773 () Bool)

(declare-fun choose!1413 (Int) Bool)

(assert (=> d!26773 (= (Forall!84 lambda!2066) (choose!1413 lambda!2066))))

(declare-fun bs!10514 () Bool)

(assert (= bs!10514 d!26773))

(declare-fun m!97014 () Bool)

(assert (=> bs!10514 m!97014))

(assert (=> start!10778 d!26773))

(declare-fun d!26775 () Bool)

(declare-fun c!26042 () Bool)

(assert (=> d!26775 (= c!26042 ((_ is ErrorTokenValue!369) (toValue!38 thiss!5419 x!29775)))))

(declare-fun e!60078 () BalanceConc!1098)

(assert (=> d!26775 (= (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775)) e!60078)))

(declare-fun b!108318 () Bool)

(declare-fun seqFromList!208 (List!1721) BalanceConc!1098)

(assert (=> b!108318 (= e!60078 (seqFromList!208 (msg!430 (toValue!38 thiss!5419 x!29775))))))

(declare-fun b!108319 () Bool)

(assert (=> b!108319 (= e!60078 (BalanceConc!1099 Empty!547))))

(assert (= (and d!26775 c!26042) b!108318))

(assert (= (and d!26775 (not c!26042)) b!108319))

(declare-fun m!97016 () Bool)

(assert (=> b!108318 m!97016))

(assert (=> start!10778 d!26775))

(declare-fun d!26777 () Bool)

(declare-fun isBalanced!154 (Conc!547) Bool)

(assert (=> d!26777 (= (inv!2113 x!29775) (isBalanced!154 (c!26002 x!29775)))))

(declare-fun bs!10515 () Bool)

(assert (= bs!10515 d!26777))

(declare-fun m!97018 () Bool)

(assert (=> bs!10515 m!97018))

(assert (=> start!10778 d!26777))

(declare-fun d!26779 () Bool)

(declare-fun choose!1414 (Int) Bool)

(assert (=> d!26779 (= (Forall2!68 lambda!2069) (choose!1414 lambda!2069))))

(declare-fun bs!10516 () Bool)

(assert (= bs!10516 d!26779))

(declare-fun m!97020 () Bool)

(assert (=> bs!10516 m!97020))

(assert (=> b!108213 d!26779))

(assert (=> b!108213 d!26705))

(assert (=> b!108213 d!26703))

(declare-fun d!26781 () Bool)

(assert (=> d!26781 (= (inv!2113 x!29777) (isBalanced!154 (c!26002 x!29777)))))

(declare-fun bs!10517 () Bool)

(assert (= bs!10517 d!26781))

(declare-fun m!97022 () Bool)

(assert (=> bs!10517 m!97022))

(assert (=> b!108213 d!26781))

(declare-fun d!26783 () Bool)

(assert (=> d!26783 (= (inv!2113 x!29776) (isBalanced!154 (c!26002 x!29776)))))

(declare-fun bs!10518 () Bool)

(assert (= bs!10518 d!26783))

(declare-fun m!97024 () Bool)

(assert (=> bs!10518 m!97024))

(assert (=> b!108213 d!26783))

(declare-fun bs!10519 () Bool)

(declare-fun d!26785 () Bool)

(assert (= bs!10519 (and d!26785 start!10778)))

(declare-fun lambda!2072 () Int)

(assert (=> bs!10519 (not (= lambda!2072 lambda!2066))))

(assert (=> d!26785 true))

(declare-fun order!847 () Int)

(declare-fun order!845 () Int)

(declare-fun dynLambda!546 (Int Int) Int)

(declare-fun dynLambda!547 (Int Int) Int)

(assert (=> d!26785 (< (dynLambda!546 order!845 lambda!2067) (dynLambda!547 order!847 lambda!2072))))

(assert (=> d!26785 true))

(declare-fun order!849 () Int)

(declare-fun dynLambda!548 (Int Int) Int)

(assert (=> d!26785 (< (dynLambda!548 order!849 lambda!2068) (dynLambda!547 order!847 lambda!2072))))

(assert (=> d!26785 (= (semiInverseModEq!103 lambda!2067 lambda!2068) (Forall!84 lambda!2072))))

(declare-fun bs!10520 () Bool)

(assert (= bs!10520 d!26785))

(declare-fun m!97026 () Bool)

(assert (=> bs!10520 m!97026))

(assert (=> b!108212 d!26785))

(assert (=> b!108212 d!26773))

(declare-fun d!26787 () Bool)

(declare-fun c!26045 () Bool)

(assert (=> d!26787 (= c!26045 ((_ is Node!547) (c!26002 x!29777)))))

(declare-fun e!60083 () Bool)

(assert (=> d!26787 (= (inv!2112 (c!26002 x!29777)) e!60083)))

(declare-fun b!108330 () Bool)

(declare-fun inv!2114 (Conc!547) Bool)

(assert (=> b!108330 (= e!60083 (inv!2114 (c!26002 x!29777)))))

(declare-fun b!108331 () Bool)

(declare-fun e!60084 () Bool)

(assert (=> b!108331 (= e!60083 e!60084)))

(declare-fun res!51821 () Bool)

(assert (=> b!108331 (= res!51821 (not ((_ is Leaf!872) (c!26002 x!29777))))))

(assert (=> b!108331 (=> res!51821 e!60084)))

(declare-fun b!108332 () Bool)

(declare-fun inv!2115 (Conc!547) Bool)

(assert (=> b!108332 (= e!60084 (inv!2115 (c!26002 x!29777)))))

(assert (= (and d!26787 c!26045) b!108330))

(assert (= (and d!26787 (not c!26045)) b!108331))

(assert (= (and b!108331 (not res!51821)) b!108332))

(declare-fun m!97028 () Bool)

(assert (=> b!108330 m!97028))

(declare-fun m!97030 () Bool)

(assert (=> b!108332 m!97030))

(assert (=> b!108225 d!26787))

(assert (=> d!26733 d!26701))

(declare-fun b!108333 () Bool)

(declare-fun e!60086 () List!1721)

(assert (=> b!108333 (= e!60086 (efficientList!32 (xs!3142 (c!26002 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775))))))))

(declare-fun b!108334 () Bool)

(declare-fun lt!30468 () List!1721)

(assert (=> b!108334 (= e!60086 lt!30468)))

(declare-fun b!108335 () Bool)

(declare-fun e!60085 () List!1721)

(declare-fun e!60087 () List!1721)

(assert (=> b!108335 (= e!60085 e!60087)))

(declare-fun c!26046 () Bool)

(assert (=> b!108335 (= c!26046 ((_ is Leaf!872) (c!26002 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775)))))))

(declare-fun b!108336 () Bool)

(assert (=> b!108336 (= e!60085 (efficientList$default$2!10 (c!26002 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775)))))))

(declare-fun b!108337 () Bool)

(declare-fun call!4775 () List!1721)

(assert (=> b!108337 (= e!60087 call!4775)))

(declare-fun b!108338 () Bool)

(declare-fun lt!30471 () Unit!1146)

(declare-fun lt!30469 () Unit!1146)

(assert (=> b!108338 (= lt!30471 lt!30469)))

(declare-fun lt!30470 () List!1721)

(assert (=> b!108338 (= (++!291 call!4775 (efficientList$default$2!10 (c!26002 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775))))) (++!291 lt!30468 (++!291 lt!30470 (efficientList$default$2!10 (c!26002 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775)))))))))

(assert (=> b!108338 (= lt!30469 (lemmaConcatAssociativity!110 lt!30468 lt!30470 (efficientList$default$2!10 (c!26002 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775))))))))

(assert (=> b!108338 (= lt!30470 (list!743 (right!1659 (c!26002 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775))))))))

(assert (=> b!108338 (= lt!30468 (list!743 (left!1329 (c!26002 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775))))))))

(assert (=> b!108338 (= e!60087 (efficientList!30 (left!1329 (c!26002 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775)))) (efficientList!30 (right!1659 (c!26002 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775)))) (efficientList$default$2!10 (c!26002 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775)))))))))

(declare-fun d!26789 () Bool)

(declare-fun lt!30467 () List!1721)

(assert (=> d!26789 (= lt!30467 (++!291 (list!743 (c!26002 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775)))) (efficientList$default$2!10 (c!26002 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775))))))))

(assert (=> d!26789 (= lt!30467 e!60085)))

(declare-fun c!26047 () Bool)

(assert (=> d!26789 (= c!26047 ((_ is Empty!547) (c!26002 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775)))))))

(assert (=> d!26789 (= (efficientList!30 (c!26002 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775))) (efficientList$default$2!10 (c!26002 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775))))) lt!30467)))

(declare-fun bm!4770 () Bool)

(declare-fun c!26048 () Bool)

(assert (=> bm!4770 (= c!26048 c!26046)))

(assert (=> bm!4770 (= call!4775 (++!291 e!60086 (ite c!26046 (efficientList$default$2!10 (c!26002 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775)))) lt!30470)))))

(assert (= (and d!26789 c!26047) b!108336))

(assert (= (and d!26789 (not c!26047)) b!108335))

(assert (= (and b!108335 c!26046) b!108337))

(assert (= (and b!108335 (not c!26046)) b!108338))

(assert (= (or b!108337 b!108338) bm!4770))

(assert (= (and bm!4770 c!26048) b!108333))

(assert (= (and bm!4770 (not c!26048)) b!108334))

(declare-fun m!97032 () Bool)

(assert (=> b!108333 m!97032))

(assert (=> b!108338 m!96882))

(declare-fun m!97034 () Bool)

(assert (=> b!108338 m!97034))

(assert (=> b!108338 m!96918))

(declare-fun m!97036 () Bool)

(assert (=> b!108338 m!97036))

(declare-fun m!97038 () Bool)

(assert (=> b!108338 m!97038))

(assert (=> b!108338 m!96920))

(assert (=> b!108338 m!96882))

(declare-fun m!97040 () Bool)

(assert (=> b!108338 m!97040))

(assert (=> b!108338 m!96882))

(assert (=> b!108338 m!97036))

(assert (=> b!108338 m!97040))

(declare-fun m!97042 () Bool)

(assert (=> b!108338 m!97042))

(assert (=> b!108338 m!96882))

(declare-fun m!97044 () Bool)

(assert (=> b!108338 m!97044))

(assert (=> d!26789 m!96846))

(assert (=> d!26789 m!96846))

(assert (=> d!26789 m!96882))

(declare-fun m!97046 () Bool)

(assert (=> d!26789 m!97046))

(declare-fun m!97048 () Bool)

(assert (=> bm!4770 m!97048))

(assert (=> d!26733 d!26789))

(declare-fun d!26791 () Bool)

(assert (=> d!26791 (= (efficientList$default$2!10 (c!26002 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29775)))) Nil!1715)))

(assert (=> d!26733 d!26791))

(declare-fun d!26793 () Bool)

(declare-fun c!26049 () Bool)

(assert (=> d!26793 (= c!26049 ((_ is Node!547) (c!26002 x!29776)))))

(declare-fun e!60088 () Bool)

(assert (=> d!26793 (= (inv!2112 (c!26002 x!29776)) e!60088)))

(declare-fun b!108339 () Bool)

(assert (=> b!108339 (= e!60088 (inv!2114 (c!26002 x!29776)))))

(declare-fun b!108340 () Bool)

(declare-fun e!60089 () Bool)

(assert (=> b!108340 (= e!60088 e!60089)))

(declare-fun res!51822 () Bool)

(assert (=> b!108340 (= res!51822 (not ((_ is Leaf!872) (c!26002 x!29776))))))

(assert (=> b!108340 (=> res!51822 e!60089)))

(declare-fun b!108341 () Bool)

(assert (=> b!108341 (= e!60089 (inv!2115 (c!26002 x!29776)))))

(assert (= (and d!26793 c!26049) b!108339))

(assert (= (and d!26793 (not c!26049)) b!108340))

(assert (= (and b!108340 (not res!51822)) b!108341))

(declare-fun m!97050 () Bool)

(assert (=> b!108339 m!97050))

(declare-fun m!97052 () Bool)

(assert (=> b!108341 m!97052))

(assert (=> b!108224 d!26793))

(assert (=> bs!10425 d!26701))

(assert (=> bs!10425 d!26775))

(assert (=> bs!10425 d!26709))

(assert (=> bs!10425 d!26715))

(declare-fun d!26795 () Bool)

(declare-fun c!26050 () Bool)

(assert (=> d!26795 (= c!26050 ((_ is Node!547) (c!26002 x!29775)))))

(declare-fun e!60090 () Bool)

(assert (=> d!26795 (= (inv!2112 (c!26002 x!29775)) e!60090)))

(declare-fun b!108342 () Bool)

(assert (=> b!108342 (= e!60090 (inv!2114 (c!26002 x!29775)))))

(declare-fun b!108343 () Bool)

(declare-fun e!60091 () Bool)

(assert (=> b!108343 (= e!60090 e!60091)))

(declare-fun res!51823 () Bool)

(assert (=> b!108343 (= res!51823 (not ((_ is Leaf!872) (c!26002 x!29775))))))

(assert (=> b!108343 (=> res!51823 e!60091)))

(declare-fun b!108344 () Bool)

(assert (=> b!108344 (= e!60091 (inv!2115 (c!26002 x!29775)))))

(assert (= (and d!26795 c!26050) b!108342))

(assert (= (and d!26795 (not c!26050)) b!108343))

(assert (= (and b!108343 (not res!51823)) b!108344))

(declare-fun m!97054 () Bool)

(assert (=> b!108342 m!97054))

(declare-fun m!97056 () Bool)

(assert (=> b!108344 m!97056))

(assert (=> b!108222 d!26795))

(assert (=> b!108223 d!26707))

(assert (=> b!108223 d!26711))

(assert (=> d!26747 d!26703))

(declare-fun b!108345 () Bool)

(declare-fun e!60093 () List!1721)

(assert (=> b!108345 (= e!60093 (efficientList!32 (xs!3142 (c!26002 x!29776))))))

(declare-fun b!108346 () Bool)

(declare-fun lt!30473 () List!1721)

(assert (=> b!108346 (= e!60093 lt!30473)))

(declare-fun b!108347 () Bool)

(declare-fun e!60092 () List!1721)

(declare-fun e!60094 () List!1721)

(assert (=> b!108347 (= e!60092 e!60094)))

(declare-fun c!26051 () Bool)

(assert (=> b!108347 (= c!26051 ((_ is Leaf!872) (c!26002 x!29776)))))

(declare-fun b!108348 () Bool)

(assert (=> b!108348 (= e!60092 (efficientList$default$2!10 (c!26002 x!29776)))))

(declare-fun b!108349 () Bool)

(declare-fun call!4776 () List!1721)

(assert (=> b!108349 (= e!60094 call!4776)))

(declare-fun b!108350 () Bool)

(declare-fun lt!30476 () Unit!1146)

(declare-fun lt!30474 () Unit!1146)

(assert (=> b!108350 (= lt!30476 lt!30474)))

(declare-fun lt!30475 () List!1721)

(assert (=> b!108350 (= (++!291 call!4776 (efficientList$default$2!10 (c!26002 x!29776))) (++!291 lt!30473 (++!291 lt!30475 (efficientList$default$2!10 (c!26002 x!29776)))))))

(assert (=> b!108350 (= lt!30474 (lemmaConcatAssociativity!110 lt!30473 lt!30475 (efficientList$default$2!10 (c!26002 x!29776))))))

(assert (=> b!108350 (= lt!30475 (list!743 (right!1659 (c!26002 x!29776))))))

(assert (=> b!108350 (= lt!30473 (list!743 (left!1329 (c!26002 x!29776))))))

(assert (=> b!108350 (= e!60094 (efficientList!30 (left!1329 (c!26002 x!29776)) (efficientList!30 (right!1659 (c!26002 x!29776)) (efficientList$default$2!10 (c!26002 x!29776)))))))

(declare-fun d!26797 () Bool)

(declare-fun lt!30472 () List!1721)

(assert (=> d!26797 (= lt!30472 (++!291 (list!743 (c!26002 x!29776)) (efficientList$default$2!10 (c!26002 x!29776))))))

(assert (=> d!26797 (= lt!30472 e!60092)))

(declare-fun c!26052 () Bool)

(assert (=> d!26797 (= c!26052 ((_ is Empty!547) (c!26002 x!29776)))))

(assert (=> d!26797 (= (efficientList!30 (c!26002 x!29776) (efficientList$default$2!10 (c!26002 x!29776))) lt!30472)))

(declare-fun bm!4771 () Bool)

(declare-fun c!26053 () Bool)

(assert (=> bm!4771 (= c!26053 c!26051)))

(assert (=> bm!4771 (= call!4776 (++!291 e!60093 (ite c!26051 (efficientList$default$2!10 (c!26002 x!29776)) lt!30475)))))

(assert (= (and d!26797 c!26052) b!108348))

(assert (= (and d!26797 (not c!26052)) b!108347))

(assert (= (and b!108347 c!26051) b!108349))

(assert (= (and b!108347 (not c!26051)) b!108350))

(assert (= (or b!108349 b!108350) bm!4771))

(assert (= (and bm!4771 c!26053) b!108345))

(assert (= (and bm!4771 (not c!26053)) b!108346))

(declare-fun m!97058 () Bool)

(assert (=> b!108345 m!97058))

(assert (=> b!108350 m!96926))

(declare-fun m!97060 () Bool)

(assert (=> b!108350 m!97060))

(assert (=> b!108350 m!96898))

(declare-fun m!97062 () Bool)

(assert (=> b!108350 m!97062))

(declare-fun m!97064 () Bool)

(assert (=> b!108350 m!97064))

(assert (=> b!108350 m!96900))

(assert (=> b!108350 m!96926))

(declare-fun m!97066 () Bool)

(assert (=> b!108350 m!97066))

(assert (=> b!108350 m!96926))

(assert (=> b!108350 m!97062))

(assert (=> b!108350 m!97066))

(declare-fun m!97068 () Bool)

(assert (=> b!108350 m!97068))

(assert (=> b!108350 m!96926))

(declare-fun m!97070 () Bool)

(assert (=> b!108350 m!97070))

(assert (=> d!26797 m!96848))

(assert (=> d!26797 m!96848))

(assert (=> d!26797 m!96926))

(declare-fun m!97072 () Bool)

(assert (=> d!26797 m!97072))

(declare-fun m!97074 () Bool)

(assert (=> bm!4771 m!97074))

(assert (=> d!26747 d!26797))

(declare-fun d!26799 () Bool)

(assert (=> d!26799 (= (efficientList$default$2!10 (c!26002 x!29776)) Nil!1715)))

(assert (=> d!26747 d!26799))

(declare-fun tp!58955 () Bool)

(declare-fun e!60099 () Bool)

(declare-fun tp!58956 () Bool)

(declare-fun b!108357 () Bool)

(assert (=> b!108357 (= e!60099 (and (inv!2112 (left!1329 (c!26002 x!29777))) tp!58955 (inv!2112 (right!1659 (c!26002 x!29777))) tp!58956))))

(declare-fun b!108358 () Bool)

(declare-fun inv!2118 (IArray!1095) Bool)

(assert (=> b!108358 (= e!60099 (inv!2118 (xs!3142 (c!26002 x!29777))))))

(assert (=> b!108225 (= tp!58950 (and (inv!2112 (c!26002 x!29777)) e!60099))))

(assert (= (and b!108225 ((_ is Node!547) (c!26002 x!29777))) b!108357))

(assert (= (and b!108225 ((_ is Leaf!872) (c!26002 x!29777))) b!108358))

(declare-fun m!97076 () Bool)

(assert (=> b!108357 m!97076))

(declare-fun m!97078 () Bool)

(assert (=> b!108357 m!97078))

(declare-fun m!97080 () Bool)

(assert (=> b!108358 m!97080))

(assert (=> b!108225 m!96838))

(declare-fun tp!58958 () Bool)

(declare-fun e!60101 () Bool)

(declare-fun tp!58957 () Bool)

(declare-fun b!108359 () Bool)

(assert (=> b!108359 (= e!60101 (and (inv!2112 (left!1329 (c!26002 x!29776))) tp!58957 (inv!2112 (right!1659 (c!26002 x!29776))) tp!58958))))

(declare-fun b!108360 () Bool)

(assert (=> b!108360 (= e!60101 (inv!2118 (xs!3142 (c!26002 x!29776))))))

(assert (=> b!108224 (= tp!58949 (and (inv!2112 (c!26002 x!29776)) e!60101))))

(assert (= (and b!108224 ((_ is Node!547) (c!26002 x!29776))) b!108359))

(assert (= (and b!108224 ((_ is Leaf!872) (c!26002 x!29776))) b!108360))

(declare-fun m!97082 () Bool)

(assert (=> b!108359 m!97082))

(declare-fun m!97084 () Bool)

(assert (=> b!108359 m!97084))

(declare-fun m!97086 () Bool)

(assert (=> b!108360 m!97086))

(assert (=> b!108224 m!96836))

(declare-fun tp!58960 () Bool)

(declare-fun b!108361 () Bool)

(declare-fun tp!58959 () Bool)

(declare-fun e!60103 () Bool)

(assert (=> b!108361 (= e!60103 (and (inv!2112 (left!1329 (c!26002 x!29775))) tp!58959 (inv!2112 (right!1659 (c!26002 x!29775))) tp!58960))))

(declare-fun b!108362 () Bool)

(assert (=> b!108362 (= e!60103 (inv!2118 (xs!3142 (c!26002 x!29775))))))

(assert (=> b!108222 (= tp!58948 (and (inv!2112 (c!26002 x!29775)) e!60103))))

(assert (= (and b!108222 ((_ is Node!547) (c!26002 x!29775))) b!108361))

(assert (= (and b!108222 ((_ is Leaf!872) (c!26002 x!29775))) b!108362))

(declare-fun m!97088 () Bool)

(assert (=> b!108361 m!97088))

(declare-fun m!97090 () Bool)

(assert (=> b!108361 m!97090))

(declare-fun m!97092 () Bool)

(assert (=> b!108362 m!97092))

(assert (=> b!108222 m!96812))

(check-sat (not bm!4771) (not b!108333) (not d!26769) (not b!108257) (not b!108256) (not b!108360) (not b!108332) (not b!108260) (not b!108359) (not b!108224) (not b!108222) (not d!26783) (not b!108341) (not d!26785) (not b!108318) (not b!108265) (not b!108339) (not bm!4768) (not b!108308) (not d!26781) (not b!108313) (not b!108342) (not d!26797) (not d!26779) (not b!108345) (not bm!4770) (not d!26773) (not b!108338) (not b!108362) (not b!108225) (not b!108330) (not b!108350) (not b!108307) (not d!26789) (not b!108261) (not d!26777) (not b!108358) (not b!108357) (not bm!4769) (not d!26765) (not b!108252) (not b!108253) (not b!108344) (not b!108302) (not b!108361) (not b!108264))
(check-sat)
