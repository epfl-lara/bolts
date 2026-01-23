; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!230158 () Bool)

(assert start!230158)

(assert (=> start!230158 true))

(declare-fun b!2329487 () Bool)

(assert (=> b!2329487 true))

(assert (=> b!2329487 true))

(declare-fun b!2329488 () Bool)

(assert (=> b!2329488 true))

(declare-fun b!2329497 () Bool)

(declare-fun e!1492569 () Bool)

(declare-datatypes ((List!27923 0))(
  ( (Nil!27825) (Cons!27825 (h!33226 (_ BitVec 16)) (t!207722 List!27923)) )
))
(declare-datatypes ((IArray!18265 0))(
  ( (IArray!18266 (innerList!9190 List!27923)) )
))
(declare-datatypes ((Conc!9130 0))(
  ( (Node!9130 (left!21129 Conc!9130) (right!21459 Conc!9130) (csize!18490 Int) (cheight!9341 Int)) (Leaf!13416 (xs!12110 IArray!18265) (csize!18491 Int)) (Empty!9130) )
))
(declare-datatypes ((BalanceConc!17872 0))(
  ( (BalanceConc!17873 (c!370026 Conc!9130)) )
))
(declare-fun x!442614 () BalanceConc!17872)

(declare-fun tp!738216 () Bool)

(declare-fun inv!37899 (Conc!9130) Bool)

(assert (=> b!2329497 (= e!1492569 (and (inv!37899 (c!370026 x!442614)) tp!738216))))

(declare-datatypes ((FloatLiteralValueInjection!116 0))(
  ( (FloatLiteralValueInjection!117) )
))
(declare-fun thiss!3053 () FloatLiteralValueInjection!116)

(declare-fun inst!1366 () Bool)

(declare-fun inv!37900 (BalanceConc!17872) Bool)

(declare-fun list!11062 (BalanceConc!17872) List!27923)

(declare-datatypes ((TokenValue!4614 0))(
  ( (FloatLiteralValue!9228 (text!32743 List!27923)) (TokenValueExt!4613 (__x!18383 Int)) (Broken!23070 (value!140883 List!27923)) (Object!4711) (End!4614) (Def!4614) (Underscore!4614) (Match!4614) (Else!4614) (Error!4614) (Case!4614) (If!4614) (Extends!4614) (Abstract!4614) (Class!4614) (Val!4614) (DelimiterValue!9228 (del!4674 List!27923)) (KeywordValue!4620 (value!140884 List!27923)) (CommentValue!9228 (value!140885 List!27923)) (WhitespaceValue!9228 (value!140886 List!27923)) (IndentationValue!4614 (value!140887 List!27923)) (String!30439) (Int32!4614) (Broken!23071 (value!140888 List!27923)) (Boolean!4615) (Unit!40588) (OperatorValue!4617 (op!4674 List!27923)) (IdentifierValue!9228 (value!140889 List!27923)) (IdentifierValue!9229 (value!140890 List!27923)) (WhitespaceValue!9229 (value!140891 List!27923)) (True!9228) (False!9228) (Broken!23072 (value!140892 List!27923)) (Broken!23073 (value!140893 List!27923)) (True!9229) (RightBrace!4614) (RightBracket!4614) (Colon!4614) (Null!4614) (Comma!4614) (LeftBracket!4614) (False!9229) (LeftBrace!4614) (ImaginaryLiteralValue!4614 (text!32744 List!27923)) (StringLiteralValue!13842 (value!140894 List!27923)) (EOFValue!4614 (value!140895 List!27923)) (IdentValue!4614 (value!140896 List!27923)) (DelimiterValue!9229 (value!140897 List!27923)) (DedentValue!4614 (value!140898 List!27923)) (NewLineValue!4614 (value!140899 List!27923)) (IntegerValue!13842 (value!140900 (_ BitVec 32)) (text!32745 List!27923)) (IntegerValue!13843 (value!140901 Int) (text!32746 List!27923)) (Times!4614) (Or!4614) (Equal!4614) (Minus!4614) (Broken!23074 (value!140902 List!27923)) (And!4614) (Div!4614) (LessEqual!4614) (Mod!4614) (Concat!11430) (Not!4614) (Plus!4614) (SpaceValue!4614 (value!140903 List!27923)) (IntegerValue!13844 (value!140904 Int) (text!32747 List!27923)) (StringLiteralValue!13843 (text!32748 List!27923)) (FloatLiteralValue!9229 (text!32749 List!27923)) (BytesLiteralValue!4614 (value!140905 List!27923)) (CommentValue!9229 (value!140906 List!27923)) (StringLiteralValue!13844 (value!140907 List!27923)) (ErrorTokenValue!4614 (msg!4675 List!27923)) )
))
(declare-fun toCharacters!1 (FloatLiteralValueInjection!116 TokenValue!4614) BalanceConc!17872)

(declare-fun toValue!8 (FloatLiteralValueInjection!116 BalanceConc!17872) TokenValue!4614)

(assert (=> start!230158 (= inst!1366 (=> (and (inv!37900 x!442614) e!1492569) (= (list!11062 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614))) (list!11062 x!442614))))))

(assert (= start!230158 b!2329497))

(declare-fun m!2759727 () Bool)

(assert (=> b!2329497 m!2759727))

(declare-fun m!2759729 () Bool)

(assert (=> start!230158 m!2759729))

(declare-fun m!2759731 () Bool)

(assert (=> start!230158 m!2759731))

(declare-fun m!2759733 () Bool)

(assert (=> start!230158 m!2759733))

(declare-fun m!2759735 () Bool)

(assert (=> start!230158 m!2759735))

(declare-fun m!2759737 () Bool)

(assert (=> start!230158 m!2759737))

(assert (=> start!230158 m!2759729))

(assert (=> start!230158 m!2759737))

(declare-fun res!994572 () Bool)

(declare-fun e!1492571 () Bool)

(assert (=> b!2329488 (=> res!994572 e!1492571)))

(declare-fun x!442615 () BalanceConc!17872)

(declare-fun x!442616 () BalanceConc!17872)

(assert (=> b!2329488 (= res!994572 (not (= (list!11062 x!442615) (list!11062 x!442616))))))

(declare-fun e!1492570 () Bool)

(declare-fun inst!1367 () Bool)

(declare-fun e!1492572 () Bool)

(assert (=> b!2329488 (= inst!1367 (=> (and (inv!37900 x!442615) e!1492572 (inv!37900 x!442616) e!1492570) e!1492571))))

(declare-fun b!2329498 () Bool)

(assert (=> b!2329498 (= e!1492571 (= (toValue!8 thiss!3053 x!442615) (toValue!8 thiss!3053 x!442616)))))

(declare-fun b!2329499 () Bool)

(declare-fun tp!738217 () Bool)

(assert (=> b!2329499 (= e!1492572 (and (inv!37899 (c!370026 x!442615)) tp!738217))))

(declare-fun b!2329500 () Bool)

(declare-fun tp!738218 () Bool)

(assert (=> b!2329500 (= e!1492570 (and (inv!37899 (c!370026 x!442616)) tp!738218))))

(assert (= (and b!2329488 (not res!994572)) b!2329498))

(assert (= b!2329488 b!2329499))

(assert (= b!2329488 b!2329500))

(declare-fun m!2759739 () Bool)

(assert (=> b!2329488 m!2759739))

(declare-fun m!2759741 () Bool)

(assert (=> b!2329488 m!2759741))

(declare-fun m!2759743 () Bool)

(assert (=> b!2329488 m!2759743))

(declare-fun m!2759745 () Bool)

(assert (=> b!2329488 m!2759745))

(declare-fun m!2759747 () Bool)

(assert (=> b!2329498 m!2759747))

(declare-fun m!2759749 () Bool)

(assert (=> b!2329498 m!2759749))

(declare-fun m!2759751 () Bool)

(assert (=> b!2329499 m!2759751))

(declare-fun m!2759753 () Bool)

(assert (=> b!2329500 m!2759753))

(declare-fun bs!459422 () Bool)

(declare-fun neg-inst!1367 () Bool)

(declare-fun s!225132 () Bool)

(assert (= bs!459422 (and neg-inst!1367 s!225132)))

(assert (=> bs!459422 (=> true (= (list!11062 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614))) (list!11062 x!442614)))))

(assert (=> m!2759737 m!2759729))

(assert (=> m!2759737 m!2759731))

(assert (=> m!2759737 m!2759733))

(assert (=> m!2759737 s!225132))

(assert (=> m!2759733 s!225132))

(declare-fun bs!459423 () Bool)

(assert (= bs!459423 (and neg-inst!1367 start!230158)))

(assert (=> bs!459423 (= true inst!1366)))

(declare-fun bs!459424 () Bool)

(declare-fun neg-inst!1366 () Bool)

(declare-fun s!225134 () Bool)

(assert (= bs!459424 (and neg-inst!1366 s!225134)))

(declare-fun res!994573 () Bool)

(declare-fun e!1492573 () Bool)

(assert (=> bs!459424 (=> res!994573 e!1492573)))

(assert (=> bs!459424 (= res!994573 (not (= (list!11062 x!442616) (list!11062 x!442616))))))

(assert (=> bs!459424 (=> true e!1492573)))

(declare-fun b!2329501 () Bool)

(assert (=> b!2329501 (= e!1492573 (= (toValue!8 thiss!3053 x!442616) (toValue!8 thiss!3053 x!442616)))))

(assert (= (and bs!459424 (not res!994573)) b!2329501))

(assert (=> m!2759749 m!2759741))

(assert (=> m!2759749 m!2759741))

(assert (=> m!2759749 s!225134))

(assert (=> m!2759749 s!225134))

(declare-fun bs!459425 () Bool)

(declare-fun s!225136 () Bool)

(assert (= bs!459425 (and neg-inst!1366 s!225136)))

(declare-fun res!994574 () Bool)

(declare-fun e!1492574 () Bool)

(assert (=> bs!459425 (=> res!994574 e!1492574)))

(assert (=> bs!459425 (= res!994574 (not (= (list!11062 x!442616) (list!11062 x!442615))))))

(assert (=> bs!459425 (=> true e!1492574)))

(declare-fun b!2329502 () Bool)

(assert (=> b!2329502 (= e!1492574 (= (toValue!8 thiss!3053 x!442616) (toValue!8 thiss!3053 x!442615)))))

(assert (= (and bs!459425 (not res!994574)) b!2329502))

(declare-fun bs!459426 () Bool)

(assert (= bs!459426 (and m!2759739 m!2759749)))

(assert (=> bs!459426 m!2759741))

(assert (=> bs!459426 m!2759739))

(assert (=> bs!459426 s!225136))

(declare-fun bs!459427 () Bool)

(declare-fun s!225138 () Bool)

(assert (= bs!459427 (and neg-inst!1366 s!225138)))

(declare-fun res!994575 () Bool)

(declare-fun e!1492575 () Bool)

(assert (=> bs!459427 (=> res!994575 e!1492575)))

(assert (=> bs!459427 (= res!994575 (not (= (list!11062 x!442615) (list!11062 x!442615))))))

(assert (=> bs!459427 (=> true e!1492575)))

(declare-fun b!2329503 () Bool)

(assert (=> b!2329503 (= e!1492575 (= (toValue!8 thiss!3053 x!442615) (toValue!8 thiss!3053 x!442615)))))

(assert (= (and bs!459427 (not res!994575)) b!2329503))

(assert (=> m!2759739 s!225138))

(declare-fun bs!459428 () Bool)

(declare-fun s!225140 () Bool)

(assert (= bs!459428 (and neg-inst!1366 s!225140)))

(declare-fun res!994576 () Bool)

(declare-fun e!1492576 () Bool)

(assert (=> bs!459428 (=> res!994576 e!1492576)))

(assert (=> bs!459428 (= res!994576 (not (= (list!11062 x!442615) (list!11062 x!442616))))))

(assert (=> bs!459428 (=> true e!1492576)))

(declare-fun b!2329504 () Bool)

(assert (=> b!2329504 (= e!1492576 (= (toValue!8 thiss!3053 x!442615) (toValue!8 thiss!3053 x!442616)))))

(assert (= (and bs!459428 (not res!994576)) b!2329504))

(assert (=> bs!459426 m!2759739))

(assert (=> bs!459426 m!2759741))

(assert (=> bs!459426 s!225140))

(assert (=> m!2759739 s!225138))

(declare-fun bs!459429 () Bool)

(assert (= bs!459429 (and m!2759747 m!2759749)))

(assert (=> bs!459429 s!225136))

(declare-fun bs!459430 () Bool)

(assert (= bs!459430 (and m!2759747 m!2759739)))

(assert (=> bs!459430 s!225138))

(assert (=> m!2759747 s!225138))

(assert (=> bs!459429 s!225140))

(assert (=> bs!459430 s!225138))

(assert (=> m!2759747 s!225138))

(declare-fun bs!459431 () Bool)

(declare-fun s!225142 () Bool)

(assert (= bs!459431 (and neg-inst!1366 s!225142)))

(declare-fun res!994577 () Bool)

(declare-fun e!1492577 () Bool)

(assert (=> bs!459431 (=> res!994577 e!1492577)))

(assert (=> bs!459431 (= res!994577 (not (= (list!11062 x!442616) (list!11062 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614))))))))

(assert (=> bs!459431 (=> true e!1492577)))

(declare-fun b!2329505 () Bool)

(assert (=> b!2329505 (= e!1492577 (= (toValue!8 thiss!3053 x!442616) (toValue!8 thiss!3053 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614)))))))

(assert (= (and bs!459431 (not res!994577)) b!2329505))

(declare-fun bs!459432 () Bool)

(assert (= bs!459432 (and m!2759731 m!2759749)))

(assert (=> bs!459432 m!2759741))

(assert (=> bs!459432 m!2759731))

(assert (=> bs!459432 s!225142))

(declare-fun bs!459433 () Bool)

(declare-fun s!225144 () Bool)

(assert (= bs!459433 (and neg-inst!1366 s!225144)))

(declare-fun res!994578 () Bool)

(declare-fun e!1492578 () Bool)

(assert (=> bs!459433 (=> res!994578 e!1492578)))

(assert (=> bs!459433 (= res!994578 (not (= (list!11062 x!442615) (list!11062 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614))))))))

(assert (=> bs!459433 (=> true e!1492578)))

(declare-fun b!2329506 () Bool)

(assert (=> b!2329506 (= e!1492578 (= (toValue!8 thiss!3053 x!442615) (toValue!8 thiss!3053 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614)))))))

(assert (= (and bs!459433 (not res!994578)) b!2329506))

(declare-fun bs!459434 () Bool)

(assert (= bs!459434 (and m!2759731 m!2759739 m!2759747)))

(assert (=> bs!459434 m!2759739))

(assert (=> bs!459434 m!2759731))

(assert (=> bs!459434 s!225144))

(declare-fun bs!459435 () Bool)

(declare-fun s!225146 () Bool)

(assert (= bs!459435 (and neg-inst!1366 s!225146)))

(declare-fun res!994579 () Bool)

(declare-fun e!1492579 () Bool)

(assert (=> bs!459435 (=> res!994579 e!1492579)))

(assert (=> bs!459435 (= res!994579 (not (= (list!11062 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614))) (list!11062 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614))))))))

(assert (=> bs!459435 (=> true e!1492579)))

(declare-fun b!2329507 () Bool)

(assert (=> b!2329507 (= e!1492579 (= (toValue!8 thiss!3053 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614))) (toValue!8 thiss!3053 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614)))))))

(assert (= (and bs!459435 (not res!994579)) b!2329507))

(assert (=> m!2759731 s!225146))

(declare-fun bs!459436 () Bool)

(declare-fun s!225148 () Bool)

(assert (= bs!459436 (and neg-inst!1366 s!225148)))

(declare-fun res!994580 () Bool)

(declare-fun e!1492580 () Bool)

(assert (=> bs!459436 (=> res!994580 e!1492580)))

(assert (=> bs!459436 (= res!994580 (not (= (list!11062 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614))) (list!11062 x!442616))))))

(assert (=> bs!459436 (=> true e!1492580)))

(declare-fun b!2329508 () Bool)

(assert (=> b!2329508 (= e!1492580 (= (toValue!8 thiss!3053 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614))) (toValue!8 thiss!3053 x!442616)))))

(assert (= (and bs!459436 (not res!994580)) b!2329508))

(assert (=> bs!459432 m!2759731))

(assert (=> bs!459432 m!2759741))

(assert (=> bs!459432 s!225148))

(declare-fun bs!459437 () Bool)

(declare-fun s!225150 () Bool)

(assert (= bs!459437 (and neg-inst!1366 s!225150)))

(declare-fun res!994581 () Bool)

(declare-fun e!1492581 () Bool)

(assert (=> bs!459437 (=> res!994581 e!1492581)))

(assert (=> bs!459437 (= res!994581 (not (= (list!11062 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614))) (list!11062 x!442615))))))

(assert (=> bs!459437 (=> true e!1492581)))

(declare-fun b!2329509 () Bool)

(assert (=> b!2329509 (= e!1492581 (= (toValue!8 thiss!3053 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614))) (toValue!8 thiss!3053 x!442615)))))

(assert (= (and bs!459437 (not res!994581)) b!2329509))

(assert (=> bs!459434 m!2759731))

(assert (=> bs!459434 m!2759739))

(assert (=> bs!459434 s!225150))

(assert (=> m!2759731 s!225146))

(declare-fun bs!459438 () Bool)

(declare-fun s!225152 () Bool)

(assert (= bs!459438 (and neg-inst!1366 s!225152)))

(declare-fun res!994582 () Bool)

(declare-fun e!1492582 () Bool)

(assert (=> bs!459438 (=> res!994582 e!1492582)))

(assert (=> bs!459438 (= res!994582 (not (= (list!11062 x!442616) (list!11062 x!442614))))))

(assert (=> bs!459438 (=> true e!1492582)))

(declare-fun b!2329510 () Bool)

(assert (=> b!2329510 (= e!1492582 (= (toValue!8 thiss!3053 x!442616) (toValue!8 thiss!3053 x!442614)))))

(assert (= (and bs!459438 (not res!994582)) b!2329510))

(declare-fun bs!459439 () Bool)

(assert (= bs!459439 (and m!2759737 m!2759749)))

(assert (=> bs!459439 m!2759741))

(assert (=> bs!459439 m!2759733))

(assert (=> bs!459439 s!225152))

(declare-fun bs!459440 () Bool)

(declare-fun s!225154 () Bool)

(assert (= bs!459440 (and neg-inst!1366 s!225154)))

(declare-fun res!994583 () Bool)

(declare-fun e!1492583 () Bool)

(assert (=> bs!459440 (=> res!994583 e!1492583)))

(assert (=> bs!459440 (= res!994583 (not (= (list!11062 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614))) (list!11062 x!442614))))))

(assert (=> bs!459440 (=> true e!1492583)))

(declare-fun b!2329511 () Bool)

(assert (=> b!2329511 (= e!1492583 (= (toValue!8 thiss!3053 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614))) (toValue!8 thiss!3053 x!442614)))))

(assert (= (and bs!459440 (not res!994583)) b!2329511))

(declare-fun bs!459441 () Bool)

(assert (= bs!459441 (and m!2759737 m!2759731)))

(assert (=> bs!459441 m!2759731))

(assert (=> bs!459441 m!2759733))

(assert (=> bs!459441 s!225154))

(declare-fun bs!459442 () Bool)

(declare-fun s!225156 () Bool)

(assert (= bs!459442 (and neg-inst!1366 s!225156)))

(declare-fun res!994584 () Bool)

(declare-fun e!1492584 () Bool)

(assert (=> bs!459442 (=> res!994584 e!1492584)))

(assert (=> bs!459442 (= res!994584 (not (= (list!11062 x!442615) (list!11062 x!442614))))))

(assert (=> bs!459442 (=> true e!1492584)))

(declare-fun b!2329512 () Bool)

(assert (=> b!2329512 (= e!1492584 (= (toValue!8 thiss!3053 x!442615) (toValue!8 thiss!3053 x!442614)))))

(assert (= (and bs!459442 (not res!994584)) b!2329512))

(declare-fun bs!459443 () Bool)

(assert (= bs!459443 (and m!2759737 m!2759739 m!2759747)))

(assert (=> bs!459443 m!2759739))

(assert (=> bs!459443 m!2759733))

(assert (=> bs!459443 s!225156))

(declare-fun bs!459444 () Bool)

(declare-fun s!225158 () Bool)

(assert (= bs!459444 (and neg-inst!1366 s!225158)))

(declare-fun res!994585 () Bool)

(declare-fun e!1492585 () Bool)

(assert (=> bs!459444 (=> res!994585 e!1492585)))

(assert (=> bs!459444 (= res!994585 (not (= (list!11062 x!442614) (list!11062 x!442614))))))

(assert (=> bs!459444 (=> true e!1492585)))

(declare-fun b!2329513 () Bool)

(assert (=> b!2329513 (= e!1492585 (= (toValue!8 thiss!3053 x!442614) (toValue!8 thiss!3053 x!442614)))))

(assert (= (and bs!459444 (not res!994585)) b!2329513))

(assert (=> m!2759737 m!2759733))

(assert (=> m!2759737 m!2759733))

(assert (=> m!2759737 s!225158))

(declare-fun bs!459445 () Bool)

(declare-fun s!225160 () Bool)

(assert (= bs!459445 (and neg-inst!1366 s!225160)))

(declare-fun res!994586 () Bool)

(declare-fun e!1492586 () Bool)

(assert (=> bs!459445 (=> res!994586 e!1492586)))

(assert (=> bs!459445 (= res!994586 (not (= (list!11062 x!442614) (list!11062 x!442616))))))

(assert (=> bs!459445 (=> true e!1492586)))

(declare-fun b!2329514 () Bool)

(assert (=> b!2329514 (= e!1492586 (= (toValue!8 thiss!3053 x!442614) (toValue!8 thiss!3053 x!442616)))))

(assert (= (and bs!459445 (not res!994586)) b!2329514))

(assert (=> bs!459439 m!2759733))

(assert (=> bs!459439 m!2759741))

(assert (=> bs!459439 s!225160))

(declare-fun bs!459446 () Bool)

(declare-fun s!225162 () Bool)

(assert (= bs!459446 (and neg-inst!1366 s!225162)))

(declare-fun res!994587 () Bool)

(declare-fun e!1492587 () Bool)

(assert (=> bs!459446 (=> res!994587 e!1492587)))

(assert (=> bs!459446 (= res!994587 (not (= (list!11062 x!442614) (list!11062 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614))))))))

(assert (=> bs!459446 (=> true e!1492587)))

(declare-fun b!2329515 () Bool)

(assert (=> b!2329515 (= e!1492587 (= (toValue!8 thiss!3053 x!442614) (toValue!8 thiss!3053 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614)))))))

(assert (= (and bs!459446 (not res!994587)) b!2329515))

(assert (=> bs!459441 m!2759733))

(assert (=> bs!459441 m!2759731))

(assert (=> bs!459441 s!225162))

(declare-fun bs!459447 () Bool)

(declare-fun s!225164 () Bool)

(assert (= bs!459447 (and neg-inst!1366 s!225164)))

(declare-fun res!994588 () Bool)

(declare-fun e!1492588 () Bool)

(assert (=> bs!459447 (=> res!994588 e!1492588)))

(assert (=> bs!459447 (= res!994588 (not (= (list!11062 x!442614) (list!11062 x!442615))))))

(assert (=> bs!459447 (=> true e!1492588)))

(declare-fun b!2329516 () Bool)

(assert (=> b!2329516 (= e!1492588 (= (toValue!8 thiss!3053 x!442614) (toValue!8 thiss!3053 x!442615)))))

(assert (= (and bs!459447 (not res!994588)) b!2329516))

(assert (=> bs!459443 m!2759733))

(assert (=> bs!459443 m!2759739))

(assert (=> bs!459443 s!225164))

(assert (=> m!2759737 s!225158))

(declare-fun bs!459448 () Bool)

(assert (= bs!459448 (and m!2759741 m!2759737)))

(assert (=> bs!459448 s!225160))

(declare-fun bs!459449 () Bool)

(assert (= bs!459449 (and m!2759741 m!2759739 m!2759747)))

(assert (=> bs!459449 s!225140))

(declare-fun bs!459450 () Bool)

(assert (= bs!459450 (and m!2759741 m!2759731)))

(assert (=> bs!459450 s!225148))

(declare-fun bs!459451 () Bool)

(assert (= bs!459451 (and m!2759741 m!2759749)))

(assert (=> bs!459451 s!225134))

(assert (=> m!2759741 s!225134))

(assert (=> bs!459449 s!225136))

(assert (=> bs!459450 s!225142))

(assert (=> bs!459448 s!225152))

(assert (=> bs!459451 s!225134))

(assert (=> m!2759741 s!225134))

(declare-fun bs!459452 () Bool)

(assert (= bs!459452 (and m!2759733 m!2759739 m!2759747)))

(assert (=> bs!459452 s!225156))

(assert (=> m!2759733 s!225158))

(declare-fun bs!459453 () Bool)

(assert (= bs!459453 (and m!2759733 m!2759737)))

(assert (=> bs!459453 s!225158))

(declare-fun bs!459454 () Bool)

(assert (= bs!459454 (and m!2759733 m!2759749 m!2759741)))

(assert (=> bs!459454 s!225152))

(declare-fun bs!459455 () Bool)

(assert (= bs!459455 (and m!2759733 m!2759731)))

(assert (=> bs!459455 s!225154))

(assert (=> m!2759733 s!225158))

(assert (=> bs!459453 s!225158))

(assert (=> bs!459455 s!225162))

(assert (=> bs!459452 s!225164))

(assert (=> bs!459454 s!225160))

(declare-fun bs!459456 () Bool)

(assert (= bs!459456 (and neg-inst!1366 b!2329488)))

(assert (=> bs!459456 (= true inst!1367)))

(declare-fun res!994571 () Bool)

(declare-fun e!1492568 () Bool)

(assert (=> start!230158 (=> res!994571 e!1492568)))

(declare-fun lambda!86502 () Int)

(declare-fun Forall!1120 (Int) Bool)

(assert (=> start!230158 (= res!994571 (not (Forall!1120 lambda!86502)))))

(assert (=> start!230158 (= (Forall!1120 lambda!86502) inst!1366)))

(assert (=> start!230158 (not e!1492568)))

(assert (=> start!230158 true))

(declare-fun e!1492567 () Bool)

(assert (=> b!2329487 (= e!1492568 e!1492567)))

(declare-fun res!994570 () Bool)

(assert (=> b!2329487 (=> res!994570 e!1492567)))

(declare-fun lambda!86503 () Int)

(declare-fun lambda!86504 () Int)

(declare-fun semiInverseModEq!1815 (Int Int) Bool)

(assert (=> b!2329487 (= res!994570 (not (semiInverseModEq!1815 lambda!86503 lambda!86504)))))

(assert (=> b!2329487 (= (semiInverseModEq!1815 lambda!86503 lambda!86504) (Forall!1120 lambda!86502))))

(declare-fun lambda!86505 () Int)

(declare-fun Forall2!729 (Int) Bool)

(assert (=> b!2329488 (= e!1492567 (Forall2!729 lambda!86505))))

(assert (=> b!2329488 (= (Forall2!729 lambda!86505) inst!1367)))

(assert (= neg-inst!1367 inst!1366))

(assert (= (and start!230158 (not res!994571)) b!2329487))

(assert (= (and b!2329487 (not res!994570)) b!2329488))

(assert (= neg-inst!1366 inst!1367))

(declare-fun m!2759755 () Bool)

(assert (=> start!230158 m!2759755))

(assert (=> start!230158 m!2759755))

(declare-fun m!2759757 () Bool)

(assert (=> b!2329487 m!2759757))

(assert (=> b!2329487 m!2759757))

(assert (=> b!2329487 m!2759755))

(declare-fun m!2759759 () Bool)

(assert (=> b!2329488 m!2759759))

(assert (=> b!2329488 m!2759759))

(push 1)

(assert (not bs!459428))

(assert (not bs!459446))

(assert (not b!2329506))

(assert (not b!2329514))

(assert (not b!2329504))

(assert (not bs!459436))

(assert (not b!2329516))

(assert (not b!2329509))

(assert (not bs!459422))

(assert (not bs!459438))

(assert (not bs!459431))

(assert (not b!2329508))

(assert (not b!2329515))

(assert (not bs!459447))

(assert (not bs!459424))

(assert (not b!2329511))

(assert (not bs!459445))

(assert (not b!2329497))

(assert (not b!2329499))

(assert (not bs!459425))

(assert (not b!2329500))

(assert (not b!2329498))

(assert (not b!2329505))

(assert (not b!2329510))

(assert (not b!2329501))

(assert (not b!2329487))

(assert (not start!230158))

(assert (not b!2329507))

(assert (not bs!459444))

(assert (not b!2329503))

(assert (not bs!459435))

(assert (not bs!459427))

(assert (not b!2329512))

(assert (not bs!459433))

(assert (not b!2329502))

(assert (not bs!459440))

(assert (not b!2329488))

(assert (not b!2329513))

(assert (not bs!459437))

(assert (not bs!459442))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!689622 () Bool)

(declare-fun list!11065 (Conc!9130) List!27923)

(assert (=> d!689622 (= (list!11062 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614))) (list!11065 (c!370026 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614)))))))

(declare-fun bs!459496 () Bool)

(assert (= bs!459496 d!689622))

(declare-fun m!2759803 () Bool)

(assert (=> bs!459496 m!2759803))

(assert (=> bs!459437 d!689622))

(declare-fun d!689628 () Bool)

(assert (=> d!689628 (= (list!11062 x!442615) (list!11065 (c!370026 x!442615)))))

(declare-fun bs!459498 () Bool)

(assert (= bs!459498 d!689628))

(declare-fun m!2759807 () Bool)

(assert (=> bs!459498 m!2759807))

(assert (=> bs!459437 d!689628))

(declare-fun d!689630 () Bool)

(declare-fun efficientList!332 (BalanceConc!17872) List!27923)

(assert (=> d!689630 (= (toValue!8 thiss!3053 x!442614) (FloatLiteralValue!9228 (efficientList!332 x!442614)))))

(declare-fun bs!459517 () Bool)

(assert (= bs!459517 d!689630))

(declare-fun m!2759817 () Bool)

(assert (=> bs!459517 m!2759817))

(assert (=> b!2329515 d!689630))

(declare-fun d!689638 () Bool)

(assert (=> d!689638 (= (toValue!8 thiss!3053 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614))) (FloatLiteralValue!9228 (efficientList!332 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614)))))))

(declare-fun bs!459519 () Bool)

(assert (= bs!459519 d!689638))

(assert (=> bs!459519 m!2759729))

(declare-fun m!2759819 () Bool)

(assert (=> bs!459519 m!2759819))

(assert (=> b!2329515 d!689638))

(declare-fun d!689640 () Bool)

(assert (=> d!689640 (= (toValue!8 thiss!3053 x!442616) (FloatLiteralValue!9228 (efficientList!332 x!442616)))))

(declare-fun bs!459520 () Bool)

(assert (= bs!459520 d!689640))

(declare-fun m!2759821 () Bool)

(assert (=> bs!459520 m!2759821))

(assert (=> b!2329502 d!689640))

(declare-fun d!689642 () Bool)

(assert (=> d!689642 (= (toValue!8 thiss!3053 x!442615) (FloatLiteralValue!9228 (efficientList!332 x!442615)))))

(declare-fun bs!459521 () Bool)

(assert (= bs!459521 d!689642))

(declare-fun m!2759823 () Bool)

(assert (=> bs!459521 m!2759823))

(assert (=> b!2329502 d!689642))

(assert (=> bs!459442 d!689628))

(declare-fun d!689644 () Bool)

(assert (=> d!689644 (= (list!11062 x!442614) (list!11065 (c!370026 x!442614)))))

(declare-fun bs!459522 () Bool)

(assert (= bs!459522 d!689644))

(declare-fun m!2759825 () Bool)

(assert (=> bs!459522 m!2759825))

(assert (=> bs!459442 d!689644))

(assert (=> b!2329505 d!689640))

(assert (=> b!2329505 d!689638))

(assert (=> b!2329508 d!689638))

(assert (=> b!2329508 d!689640))

(assert (=> bs!459446 d!689644))

(assert (=> bs!459446 d!689622))

(declare-fun d!689646 () Bool)

(assert (=> d!689646 (= (list!11062 x!442616) (list!11065 (c!370026 x!442616)))))

(declare-fun bs!459523 () Bool)

(assert (= bs!459523 d!689646))

(declare-fun m!2759827 () Bool)

(assert (=> bs!459523 m!2759827))

(assert (=> bs!459425 d!689646))

(assert (=> bs!459425 d!689628))

(assert (=> bs!459431 d!689646))

(assert (=> bs!459431 d!689622))

(assert (=> b!2329511 d!689638))

(assert (=> b!2329511 d!689630))

(assert (=> bs!459436 d!689622))

(assert (=> bs!459436 d!689646))

(assert (=> b!2329514 d!689630))

(assert (=> b!2329514 d!689640))

(assert (=> b!2329501 d!689640))

(assert (=> bs!459440 d!689622))

(assert (=> bs!459440 d!689644))

(assert (=> b!2329507 d!689638))

(assert (=> b!2329504 d!689642))

(assert (=> b!2329504 d!689640))

(assert (=> bs!459445 d!689644))

(assert (=> bs!459445 d!689646))

(assert (=> bs!459424 d!689646))

(assert (=> bs!459435 d!689622))

(assert (=> b!2329510 d!689640))

(assert (=> b!2329510 d!689630))

(assert (=> bs!459428 d!689628))

(assert (=> bs!459428 d!689646))

(assert (=> b!2329513 d!689630))

(assert (=> bs!459438 d!689646))

(assert (=> bs!459438 d!689644))

(assert (=> b!2329503 d!689642))

(assert (=> bs!459444 d!689644))

(assert (=> b!2329506 d!689642))

(assert (=> b!2329506 d!689638))

(assert (=> b!2329516 d!689630))

(assert (=> b!2329516 d!689642))

(assert (=> b!2329509 d!689638))

(assert (=> b!2329509 d!689642))

(assert (=> bs!459427 d!689628))

(assert (=> bs!459433 d!689628))

(assert (=> bs!459433 d!689622))

(assert (=> bs!459447 d!689644))

(assert (=> bs!459447 d!689628))

(assert (=> b!2329512 d!689642))

(assert (=> b!2329512 d!689630))

(declare-fun bs!459524 () Bool)

(assert (= bs!459524 (and m!2759749 b!2329501)))

(assert (=> bs!459524 m!2759749))

(assert (=> bs!459524 m!2759749))

(declare-fun bs!459525 () Bool)

(assert (= bs!459525 (and m!2759739 m!2759749 b!2329502)))

(assert (=> bs!459525 m!2759749))

(assert (=> bs!459525 m!2759747))

(declare-fun bs!459526 () Bool)

(assert (= bs!459526 (and m!2759739 b!2329503)))

(assert (=> bs!459526 m!2759747))

(assert (=> bs!459526 m!2759747))

(declare-fun bs!459527 () Bool)

(assert (= bs!459527 (and m!2759739 m!2759749 b!2329504)))

(assert (=> bs!459527 m!2759747))

(assert (=> bs!459527 m!2759749))

(declare-fun bs!459528 () Bool)

(assert (= bs!459528 (and m!2759731 m!2759749 b!2329505)))

(assert (=> bs!459528 m!2759749))

(declare-fun m!2759829 () Bool)

(assert (=> bs!459528 m!2759829))

(declare-fun bs!459529 () Bool)

(assert (= bs!459529 (and m!2759731 m!2759739 m!2759747 b!2329506)))

(assert (=> bs!459529 m!2759747))

(assert (=> bs!459529 m!2759829))

(declare-fun bs!459530 () Bool)

(assert (= bs!459530 (and m!2759731 b!2329507)))

(assert (=> bs!459530 m!2759829))

(assert (=> bs!459530 m!2759829))

(declare-fun bs!459531 () Bool)

(assert (= bs!459531 (and m!2759731 m!2759749 b!2329508)))

(assert (=> bs!459531 m!2759829))

(assert (=> bs!459531 m!2759749))

(declare-fun bs!459532 () Bool)

(assert (= bs!459532 (and m!2759731 m!2759739 m!2759747 b!2329509)))

(assert (=> bs!459532 m!2759829))

(assert (=> bs!459532 m!2759747))

(declare-fun bs!459533 () Bool)

(assert (= bs!459533 (and m!2759737 m!2759749 b!2329510)))

(assert (=> bs!459533 m!2759749))

(assert (=> bs!459533 m!2759737))

(declare-fun bs!459534 () Bool)

(assert (= bs!459534 (and m!2759737 m!2759731 b!2329511)))

(assert (=> bs!459534 m!2759829))

(assert (=> bs!459534 m!2759737))

(declare-fun bs!459535 () Bool)

(assert (= bs!459535 (and m!2759737 m!2759739 m!2759747 b!2329512)))

(assert (=> bs!459535 m!2759747))

(assert (=> bs!459535 m!2759737))

(declare-fun bs!459536 () Bool)

(assert (= bs!459536 (and m!2759737 b!2329513)))

(assert (=> bs!459536 m!2759737))

(assert (=> bs!459536 m!2759737))

(declare-fun bs!459537 () Bool)

(assert (= bs!459537 (and m!2759737 m!2759749 b!2329514)))

(assert (=> bs!459537 m!2759737))

(assert (=> bs!459537 m!2759749))

(declare-fun bs!459538 () Bool)

(assert (= bs!459538 (and m!2759737 m!2759731 b!2329515)))

(assert (=> bs!459538 m!2759737))

(assert (=> bs!459538 m!2759829))

(declare-fun bs!459539 () Bool)

(assert (= bs!459539 (and m!2759737 m!2759739 m!2759747 b!2329516)))

(assert (=> bs!459539 m!2759737))

(assert (=> bs!459539 m!2759747))

(push 1)

(assert (not d!689640))

(assert (not d!689644))

(assert (not d!689628))

(assert (not start!230158))

(assert (not b!2329488))

(assert (not bs!459422))

(assert (not d!689630))

(assert (not d!689622))

(assert (not b!2329497))

(assert (not b!2329499))

(assert (not b!2329500))

(assert (not d!689646))

(assert (not d!689642))

(assert (not b!2329498))

(assert (not b!2329487))

(assert (not d!689638))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2329573 () Bool)

(declare-fun e!1492633 () List!27923)

(assert (=> b!2329573 (= e!1492633 Nil!27825)))

(declare-fun b!2329575 () Bool)

(declare-fun e!1492634 () List!27923)

(declare-fun list!11066 (IArray!18265) List!27923)

(assert (=> b!2329575 (= e!1492634 (list!11066 (xs!12110 (c!370026 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614))))))))

(declare-fun b!2329576 () Bool)

(declare-fun ++!6855 (List!27923 List!27923) List!27923)

(assert (=> b!2329576 (= e!1492634 (++!6855 (list!11065 (left!21129 (c!370026 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614))))) (list!11065 (right!21459 (c!370026 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614)))))))))

(declare-fun b!2329574 () Bool)

(assert (=> b!2329574 (= e!1492633 e!1492634)))

(declare-fun c!370033 () Bool)

(assert (=> b!2329574 (= c!370033 (is-Leaf!13416 (c!370026 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614)))))))

(declare-fun d!689648 () Bool)

(declare-fun c!370032 () Bool)

(assert (=> d!689648 (= c!370032 (is-Empty!9130 (c!370026 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614)))))))

(assert (=> d!689648 (= (list!11065 (c!370026 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614)))) e!1492633)))

(assert (= (and d!689648 c!370032) b!2329573))

(assert (= (and d!689648 (not c!370032)) b!2329574))

(assert (= (and b!2329574 c!370033) b!2329575))

(assert (= (and b!2329574 (not c!370033)) b!2329576))

(declare-fun m!2759831 () Bool)

(assert (=> b!2329575 m!2759831))

(declare-fun m!2759833 () Bool)

(assert (=> b!2329576 m!2759833))

(declare-fun m!2759835 () Bool)

(assert (=> b!2329576 m!2759835))

(assert (=> b!2329576 m!2759833))

(assert (=> b!2329576 m!2759835))

(declare-fun m!2759837 () Bool)

(assert (=> b!2329576 m!2759837))

(assert (=> d!689622 d!689648))

(declare-fun b!2329577 () Bool)

(declare-fun e!1492635 () List!27923)

(assert (=> b!2329577 (= e!1492635 Nil!27825)))

(declare-fun b!2329579 () Bool)

(declare-fun e!1492636 () List!27923)

(assert (=> b!2329579 (= e!1492636 (list!11066 (xs!12110 (c!370026 x!442614))))))

(declare-fun b!2329580 () Bool)

(assert (=> b!2329580 (= e!1492636 (++!6855 (list!11065 (left!21129 (c!370026 x!442614))) (list!11065 (right!21459 (c!370026 x!442614)))))))

(declare-fun b!2329578 () Bool)

(assert (=> b!2329578 (= e!1492635 e!1492636)))

(declare-fun c!370035 () Bool)

(assert (=> b!2329578 (= c!370035 (is-Leaf!13416 (c!370026 x!442614)))))

(declare-fun d!689650 () Bool)

(declare-fun c!370034 () Bool)

(assert (=> d!689650 (= c!370034 (is-Empty!9130 (c!370026 x!442614)))))

(assert (=> d!689650 (= (list!11065 (c!370026 x!442614)) e!1492635)))

(assert (= (and d!689650 c!370034) b!2329577))

(assert (= (and d!689650 (not c!370034)) b!2329578))

(assert (= (and b!2329578 c!370035) b!2329579))

(assert (= (and b!2329578 (not c!370035)) b!2329580))

(declare-fun m!2759839 () Bool)

(assert (=> b!2329579 m!2759839))

(declare-fun m!2759841 () Bool)

(assert (=> b!2329580 m!2759841))

(declare-fun m!2759843 () Bool)

(assert (=> b!2329580 m!2759843))

(assert (=> b!2329580 m!2759841))

(assert (=> b!2329580 m!2759843))

(declare-fun m!2759845 () Bool)

(assert (=> b!2329580 m!2759845))

(assert (=> d!689644 d!689650))

(declare-fun b!2329581 () Bool)

(declare-fun e!1492637 () List!27923)

(assert (=> b!2329581 (= e!1492637 Nil!27825)))

(declare-fun b!2329583 () Bool)

(declare-fun e!1492638 () List!27923)

(assert (=> b!2329583 (= e!1492638 (list!11066 (xs!12110 (c!370026 x!442615))))))

(declare-fun b!2329584 () Bool)

(assert (=> b!2329584 (= e!1492638 (++!6855 (list!11065 (left!21129 (c!370026 x!442615))) (list!11065 (right!21459 (c!370026 x!442615)))))))

(declare-fun b!2329582 () Bool)

(assert (=> b!2329582 (= e!1492637 e!1492638)))

(declare-fun c!370037 () Bool)

(assert (=> b!2329582 (= c!370037 (is-Leaf!13416 (c!370026 x!442615)))))

(declare-fun d!689652 () Bool)

(declare-fun c!370036 () Bool)

(assert (=> d!689652 (= c!370036 (is-Empty!9130 (c!370026 x!442615)))))

(assert (=> d!689652 (= (list!11065 (c!370026 x!442615)) e!1492637)))

(assert (= (and d!689652 c!370036) b!2329581))

(assert (= (and d!689652 (not c!370036)) b!2329582))

(assert (= (and b!2329582 c!370037) b!2329583))

(assert (= (and b!2329582 (not c!370037)) b!2329584))

(declare-fun m!2759847 () Bool)

(assert (=> b!2329583 m!2759847))

(declare-fun m!2759849 () Bool)

(assert (=> b!2329584 m!2759849))

(declare-fun m!2759851 () Bool)

(assert (=> b!2329584 m!2759851))

(assert (=> b!2329584 m!2759849))

(assert (=> b!2329584 m!2759851))

(declare-fun m!2759853 () Bool)

(assert (=> b!2329584 m!2759853))

(assert (=> d!689628 d!689652))

(declare-fun d!689654 () Bool)

(declare-fun lt!862138 () List!27923)

(assert (=> d!689654 (= lt!862138 (list!11062 x!442615))))

(declare-fun efficientList!333 (Conc!9130 List!27923) List!27923)

(declare-fun efficientList$default$2!114 (Conc!9130) List!27923)

(assert (=> d!689654 (= lt!862138 (efficientList!333 (c!370026 x!442615) (efficientList$default$2!114 (c!370026 x!442615))))))

(assert (=> d!689654 (= (efficientList!332 x!442615) lt!862138)))

(declare-fun bs!459540 () Bool)

(assert (= bs!459540 d!689654))

(assert (=> bs!459540 m!2759739))

(declare-fun m!2759855 () Bool)

(assert (=> bs!459540 m!2759855))

(assert (=> bs!459540 m!2759855))

(declare-fun m!2759857 () Bool)

(assert (=> bs!459540 m!2759857))

(assert (=> d!689642 d!689654))

(declare-fun d!689656 () Bool)

(declare-fun lt!862139 () List!27923)

(assert (=> d!689656 (= lt!862139 (list!11062 x!442616))))

(assert (=> d!689656 (= lt!862139 (efficientList!333 (c!370026 x!442616) (efficientList$default$2!114 (c!370026 x!442616))))))

(assert (=> d!689656 (= (efficientList!332 x!442616) lt!862139)))

(declare-fun bs!459541 () Bool)

(assert (= bs!459541 d!689656))

(assert (=> bs!459541 m!2759741))

(declare-fun m!2759859 () Bool)

(assert (=> bs!459541 m!2759859))

(assert (=> bs!459541 m!2759859))

(declare-fun m!2759861 () Bool)

(assert (=> bs!459541 m!2759861))

(assert (=> d!689640 d!689656))

(declare-fun d!689658 () Bool)

(declare-fun lt!862140 () List!27923)

(assert (=> d!689658 (= lt!862140 (list!11062 x!442614))))

(assert (=> d!689658 (= lt!862140 (efficientList!333 (c!370026 x!442614) (efficientList$default$2!114 (c!370026 x!442614))))))

(assert (=> d!689658 (= (efficientList!332 x!442614) lt!862140)))

(declare-fun bs!459542 () Bool)

(assert (= bs!459542 d!689658))

(assert (=> bs!459542 m!2759733))

(declare-fun m!2759863 () Bool)

(assert (=> bs!459542 m!2759863))

(assert (=> bs!459542 m!2759863))

(declare-fun m!2759865 () Bool)

(assert (=> bs!459542 m!2759865))

(assert (=> d!689630 d!689658))

(declare-fun d!689660 () Bool)

(declare-fun lt!862141 () List!27923)

(assert (=> d!689660 (= lt!862141 (list!11062 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614))))))

(assert (=> d!689660 (= lt!862141 (efficientList!333 (c!370026 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614))) (efficientList$default$2!114 (c!370026 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614))))))))

(assert (=> d!689660 (= (efficientList!332 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614))) lt!862141)))

(declare-fun bs!459543 () Bool)

(assert (= bs!459543 d!689660))

(assert (=> bs!459543 m!2759729))

(assert (=> bs!459543 m!2759731))

(declare-fun m!2759867 () Bool)

(assert (=> bs!459543 m!2759867))

(assert (=> bs!459543 m!2759867))

(declare-fun m!2759869 () Bool)

(assert (=> bs!459543 m!2759869))

(assert (=> d!689638 d!689660))

(declare-fun b!2329585 () Bool)

(declare-fun e!1492639 () List!27923)

(assert (=> b!2329585 (= e!1492639 Nil!27825)))

(declare-fun b!2329587 () Bool)

(declare-fun e!1492640 () List!27923)

(assert (=> b!2329587 (= e!1492640 (list!11066 (xs!12110 (c!370026 x!442616))))))

(declare-fun b!2329588 () Bool)

(assert (=> b!2329588 (= e!1492640 (++!6855 (list!11065 (left!21129 (c!370026 x!442616))) (list!11065 (right!21459 (c!370026 x!442616)))))))

(declare-fun b!2329586 () Bool)

(assert (=> b!2329586 (= e!1492639 e!1492640)))

(declare-fun c!370039 () Bool)

(assert (=> b!2329586 (= c!370039 (is-Leaf!13416 (c!370026 x!442616)))))

(declare-fun d!689662 () Bool)

(declare-fun c!370038 () Bool)

(assert (=> d!689662 (= c!370038 (is-Empty!9130 (c!370026 x!442616)))))

(assert (=> d!689662 (= (list!11065 (c!370026 x!442616)) e!1492639)))

(assert (= (and d!689662 c!370038) b!2329585))

(assert (= (and d!689662 (not c!370038)) b!2329586))

(assert (= (and b!2329586 c!370039) b!2329587))

(assert (= (and b!2329586 (not c!370039)) b!2329588))

(declare-fun m!2759871 () Bool)

(assert (=> b!2329587 m!2759871))

(declare-fun m!2759873 () Bool)

(assert (=> b!2329588 m!2759873))

(declare-fun m!2759875 () Bool)

(assert (=> b!2329588 m!2759875))

(assert (=> b!2329588 m!2759873))

(assert (=> b!2329588 m!2759875))

(declare-fun m!2759877 () Bool)

(assert (=> b!2329588 m!2759877))

(assert (=> d!689646 d!689662))

(push 1)

(assert (not b!2329587))

(assert (not d!689658))

(assert (not b!2329487))

(assert (not start!230158))

(assert (not b!2329575))

(assert (not b!2329488))

(assert (not b!2329580))

(assert (not d!689654))

(assert (not b!2329497))

(assert (not b!2329499))

(assert (not b!2329500))

(assert (not b!2329498))

(assert (not b!2329584))

(assert (not d!689660))

(assert (not b!2329576))

(assert (not b!2329579))

(assert (not d!689656))

(assert (not bs!459422))

(assert (not b!2329583))

(assert (not b!2329588))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!689656 d!689646))

(declare-fun bm!138978 () Bool)

(declare-fun c!370060 () Bool)

(declare-fun c!370058 () Bool)

(assert (=> bm!138978 (= c!370060 c!370058)))

(declare-fun e!1492659 () List!27923)

(declare-fun lt!862162 () List!27923)

(declare-fun call!138983 () List!27923)

(assert (=> bm!138978 (= call!138983 (++!6855 e!1492659 (ite c!370058 (efficientList$default$2!114 (c!370026 x!442616)) lt!862162)))))

(declare-fun b!2329625 () Bool)

(declare-fun efficientList!335 (IArray!18265) List!27923)

(assert (=> b!2329625 (= e!1492659 (efficientList!335 (xs!12110 (c!370026 x!442616))))))

(declare-fun b!2329626 () Bool)

(declare-datatypes ((Unit!40590 0))(
  ( (Unit!40591) )
))
(declare-fun lt!862160 () Unit!40590)

(declare-fun lt!862161 () Unit!40590)

(assert (=> b!2329626 (= lt!862160 lt!862161)))

(declare-fun lt!862159 () List!27923)

(assert (=> b!2329626 (= (++!6855 call!138983 (efficientList$default$2!114 (c!370026 x!442616))) (++!6855 lt!862159 (++!6855 lt!862162 (efficientList$default$2!114 (c!370026 x!442616)))))))

(declare-fun lemmaConcatAssociativity!1463 (List!27923 List!27923 List!27923) Unit!40590)

(assert (=> b!2329626 (= lt!862161 (lemmaConcatAssociativity!1463 lt!862159 lt!862162 (efficientList$default$2!114 (c!370026 x!442616))))))

(assert (=> b!2329626 (= lt!862162 (list!11065 (right!21459 (c!370026 x!442616))))))

(assert (=> b!2329626 (= lt!862159 (list!11065 (left!21129 (c!370026 x!442616))))))

(declare-fun e!1492661 () List!27923)

(assert (=> b!2329626 (= e!1492661 (efficientList!333 (left!21129 (c!370026 x!442616)) (efficientList!333 (right!21459 (c!370026 x!442616)) (efficientList$default$2!114 (c!370026 x!442616)))))))

(declare-fun b!2329627 () Bool)

(assert (=> b!2329627 (= e!1492659 lt!862159)))

(declare-fun b!2329628 () Bool)

(assert (=> b!2329628 (= e!1492661 call!138983)))

(declare-fun b!2329629 () Bool)

(declare-fun e!1492660 () List!27923)

(assert (=> b!2329629 (= e!1492660 (efficientList$default$2!114 (c!370026 x!442616)))))

(declare-fun d!689680 () Bool)

(declare-fun lt!862158 () List!27923)

(assert (=> d!689680 (= lt!862158 (++!6855 (list!11065 (c!370026 x!442616)) (efficientList$default$2!114 (c!370026 x!442616))))))

(assert (=> d!689680 (= lt!862158 e!1492660)))

(declare-fun c!370059 () Bool)

(assert (=> d!689680 (= c!370059 (is-Empty!9130 (c!370026 x!442616)))))

(assert (=> d!689680 (= (efficientList!333 (c!370026 x!442616) (efficientList$default$2!114 (c!370026 x!442616))) lt!862158)))

(declare-fun b!2329630 () Bool)

(assert (=> b!2329630 (= e!1492660 e!1492661)))

(assert (=> b!2329630 (= c!370058 (is-Leaf!13416 (c!370026 x!442616)))))

(assert (= (and d!689680 c!370059) b!2329629))

(assert (= (and d!689680 (not c!370059)) b!2329630))

(assert (= (and b!2329630 c!370058) b!2329628))

(assert (= (and b!2329630 (not c!370058)) b!2329626))

(assert (= (or b!2329628 b!2329626) bm!138978))

(assert (= (and bm!138978 c!370060) b!2329625))

(assert (= (and bm!138978 (not c!370060)) b!2329627))

(declare-fun m!2759927 () Bool)

(assert (=> bm!138978 m!2759927))

(declare-fun m!2759929 () Bool)

(assert (=> b!2329625 m!2759929))

(assert (=> b!2329626 m!2759859))

(declare-fun m!2759931 () Bool)

(assert (=> b!2329626 m!2759931))

(declare-fun m!2759933 () Bool)

(assert (=> b!2329626 m!2759933))

(declare-fun m!2759935 () Bool)

(assert (=> b!2329626 m!2759935))

(assert (=> b!2329626 m!2759859))

(declare-fun m!2759937 () Bool)

(assert (=> b!2329626 m!2759937))

(assert (=> b!2329626 m!2759859))

(assert (=> b!2329626 m!2759933))

(assert (=> b!2329626 m!2759931))

(declare-fun m!2759939 () Bool)

(assert (=> b!2329626 m!2759939))

(assert (=> b!2329626 m!2759859))

(declare-fun m!2759941 () Bool)

(assert (=> b!2329626 m!2759941))

(assert (=> b!2329626 m!2759873))

(assert (=> b!2329626 m!2759875))

(assert (=> d!689680 m!2759827))

(assert (=> d!689680 m!2759827))

(assert (=> d!689680 m!2759859))

(declare-fun m!2759943 () Bool)

(assert (=> d!689680 m!2759943))

(assert (=> d!689656 d!689680))

(declare-fun d!689682 () Bool)

(assert (=> d!689682 (= (efficientList$default$2!114 (c!370026 x!442616)) Nil!27825)))

(assert (=> d!689656 d!689682))

(assert (=> d!689654 d!689628))

(declare-fun bm!138979 () Bool)

(declare-fun c!370063 () Bool)

(declare-fun c!370061 () Bool)

(assert (=> bm!138979 (= c!370063 c!370061)))

(declare-fun call!138984 () List!27923)

(declare-fun e!1492662 () List!27923)

(declare-fun lt!862167 () List!27923)

(assert (=> bm!138979 (= call!138984 (++!6855 e!1492662 (ite c!370061 (efficientList$default$2!114 (c!370026 x!442615)) lt!862167)))))

(declare-fun b!2329631 () Bool)

(assert (=> b!2329631 (= e!1492662 (efficientList!335 (xs!12110 (c!370026 x!442615))))))

(declare-fun b!2329632 () Bool)

(declare-fun lt!862165 () Unit!40590)

(declare-fun lt!862166 () Unit!40590)

(assert (=> b!2329632 (= lt!862165 lt!862166)))

(declare-fun lt!862164 () List!27923)

(assert (=> b!2329632 (= (++!6855 call!138984 (efficientList$default$2!114 (c!370026 x!442615))) (++!6855 lt!862164 (++!6855 lt!862167 (efficientList$default$2!114 (c!370026 x!442615)))))))

(assert (=> b!2329632 (= lt!862166 (lemmaConcatAssociativity!1463 lt!862164 lt!862167 (efficientList$default$2!114 (c!370026 x!442615))))))

(assert (=> b!2329632 (= lt!862167 (list!11065 (right!21459 (c!370026 x!442615))))))

(assert (=> b!2329632 (= lt!862164 (list!11065 (left!21129 (c!370026 x!442615))))))

(declare-fun e!1492664 () List!27923)

(assert (=> b!2329632 (= e!1492664 (efficientList!333 (left!21129 (c!370026 x!442615)) (efficientList!333 (right!21459 (c!370026 x!442615)) (efficientList$default$2!114 (c!370026 x!442615)))))))

(declare-fun b!2329633 () Bool)

(assert (=> b!2329633 (= e!1492662 lt!862164)))

(declare-fun b!2329634 () Bool)

(assert (=> b!2329634 (= e!1492664 call!138984)))

(declare-fun b!2329635 () Bool)

(declare-fun e!1492663 () List!27923)

(assert (=> b!2329635 (= e!1492663 (efficientList$default$2!114 (c!370026 x!442615)))))

(declare-fun d!689684 () Bool)

(declare-fun lt!862163 () List!27923)

(assert (=> d!689684 (= lt!862163 (++!6855 (list!11065 (c!370026 x!442615)) (efficientList$default$2!114 (c!370026 x!442615))))))

(assert (=> d!689684 (= lt!862163 e!1492663)))

(declare-fun c!370062 () Bool)

(assert (=> d!689684 (= c!370062 (is-Empty!9130 (c!370026 x!442615)))))

(assert (=> d!689684 (= (efficientList!333 (c!370026 x!442615) (efficientList$default$2!114 (c!370026 x!442615))) lt!862163)))

(declare-fun b!2329636 () Bool)

(assert (=> b!2329636 (= e!1492663 e!1492664)))

(assert (=> b!2329636 (= c!370061 (is-Leaf!13416 (c!370026 x!442615)))))

(assert (= (and d!689684 c!370062) b!2329635))

(assert (= (and d!689684 (not c!370062)) b!2329636))

(assert (= (and b!2329636 c!370061) b!2329634))

(assert (= (and b!2329636 (not c!370061)) b!2329632))

(assert (= (or b!2329634 b!2329632) bm!138979))

(assert (= (and bm!138979 c!370063) b!2329631))

(assert (= (and bm!138979 (not c!370063)) b!2329633))

(declare-fun m!2759945 () Bool)

(assert (=> bm!138979 m!2759945))

(declare-fun m!2759947 () Bool)

(assert (=> b!2329631 m!2759947))

(assert (=> b!2329632 m!2759855))

(declare-fun m!2759949 () Bool)

(assert (=> b!2329632 m!2759949))

(declare-fun m!2759951 () Bool)

(assert (=> b!2329632 m!2759951))

(declare-fun m!2759953 () Bool)

(assert (=> b!2329632 m!2759953))

(assert (=> b!2329632 m!2759855))

(declare-fun m!2759955 () Bool)

(assert (=> b!2329632 m!2759955))

(assert (=> b!2329632 m!2759855))

(assert (=> b!2329632 m!2759951))

(assert (=> b!2329632 m!2759949))

(declare-fun m!2759957 () Bool)

(assert (=> b!2329632 m!2759957))

(assert (=> b!2329632 m!2759855))

(declare-fun m!2759959 () Bool)

(assert (=> b!2329632 m!2759959))

(assert (=> b!2329632 m!2759849))

(assert (=> b!2329632 m!2759851))

(assert (=> d!689684 m!2759807))

(assert (=> d!689684 m!2759807))

(assert (=> d!689684 m!2759855))

(declare-fun m!2759961 () Bool)

(assert (=> d!689684 m!2759961))

(assert (=> d!689654 d!689684))

(declare-fun d!689686 () Bool)

(assert (=> d!689686 (= (efficientList$default$2!114 (c!370026 x!442615)) Nil!27825)))

(assert (=> d!689654 d!689686))

(declare-fun d!689688 () Bool)

(declare-fun isBalanced!2781 (Conc!9130) Bool)

(assert (=> d!689688 (= (inv!37900 x!442614) (isBalanced!2781 (c!370026 x!442614)))))

(declare-fun bs!459548 () Bool)

(assert (= bs!459548 d!689688))

(declare-fun m!2759963 () Bool)

(assert (=> bs!459548 m!2759963))

(assert (=> start!230158 d!689688))

(declare-fun d!689690 () Bool)

(declare-fun choose!13628 (Int) Bool)

(assert (=> d!689690 (= (Forall!1120 lambda!86502) (choose!13628 lambda!86502))))

(declare-fun bs!459549 () Bool)

(assert (= bs!459549 d!689690))

(declare-fun m!2759965 () Bool)

(assert (=> bs!459549 m!2759965))

(assert (=> start!230158 d!689690))

(declare-fun d!689692 () Bool)

(declare-fun c!370067 () Bool)

(assert (=> d!689692 (= c!370067 (is-FloatLiteralValue!9228 (toValue!8 thiss!3053 x!442614)))))

(declare-fun e!1492667 () BalanceConc!17872)

(assert (=> d!689692 (= (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614)) e!1492667)))

(declare-fun b!2329641 () Bool)

(declare-fun seqFromList!3124 (List!27923) BalanceConc!17872)

(assert (=> b!2329641 (= e!1492667 (seqFromList!3124 (text!32743 (toValue!8 thiss!3053 x!442614))))))

(declare-fun b!2329642 () Bool)

(assert (=> b!2329642 (= e!1492667 (BalanceConc!17873 Empty!9130))))

(assert (= (and d!689692 c!370067) b!2329641))

(assert (= (and d!689692 (not c!370067)) b!2329642))

(declare-fun m!2759967 () Bool)

(assert (=> b!2329641 m!2759967))

(assert (=> start!230158 d!689692))

(assert (=> start!230158 d!689644))

(assert (=> start!230158 d!689630))

(assert (=> start!230158 d!689622))

(assert (=> d!689660 d!689622))

(declare-fun bm!138980 () Bool)

(declare-fun c!370070 () Bool)

(declare-fun c!370068 () Bool)

(assert (=> bm!138980 (= c!370070 c!370068)))

(declare-fun e!1492668 () List!27923)

(declare-fun lt!862172 () List!27923)

(declare-fun call!138985 () List!27923)

(assert (=> bm!138980 (= call!138985 (++!6855 e!1492668 (ite c!370068 (efficientList$default$2!114 (c!370026 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614)))) lt!862172)))))

(declare-fun b!2329643 () Bool)

(assert (=> b!2329643 (= e!1492668 (efficientList!335 (xs!12110 (c!370026 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614))))))))

(declare-fun b!2329644 () Bool)

(declare-fun lt!862170 () Unit!40590)

(declare-fun lt!862171 () Unit!40590)

(assert (=> b!2329644 (= lt!862170 lt!862171)))

(declare-fun lt!862169 () List!27923)

(assert (=> b!2329644 (= (++!6855 call!138985 (efficientList$default$2!114 (c!370026 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614))))) (++!6855 lt!862169 (++!6855 lt!862172 (efficientList$default$2!114 (c!370026 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614)))))))))

(assert (=> b!2329644 (= lt!862171 (lemmaConcatAssociativity!1463 lt!862169 lt!862172 (efficientList$default$2!114 (c!370026 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614))))))))

(assert (=> b!2329644 (= lt!862172 (list!11065 (right!21459 (c!370026 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614))))))))

(assert (=> b!2329644 (= lt!862169 (list!11065 (left!21129 (c!370026 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614))))))))

(declare-fun e!1492670 () List!27923)

(assert (=> b!2329644 (= e!1492670 (efficientList!333 (left!21129 (c!370026 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614)))) (efficientList!333 (right!21459 (c!370026 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614)))) (efficientList$default$2!114 (c!370026 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614)))))))))

(declare-fun b!2329645 () Bool)

(assert (=> b!2329645 (= e!1492668 lt!862169)))

(declare-fun b!2329646 () Bool)

(assert (=> b!2329646 (= e!1492670 call!138985)))

(declare-fun b!2329647 () Bool)

(declare-fun e!1492669 () List!27923)

(assert (=> b!2329647 (= e!1492669 (efficientList$default$2!114 (c!370026 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614)))))))

(declare-fun d!689694 () Bool)

(declare-fun lt!862168 () List!27923)

(assert (=> d!689694 (= lt!862168 (++!6855 (list!11065 (c!370026 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614)))) (efficientList$default$2!114 (c!370026 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614))))))))

(assert (=> d!689694 (= lt!862168 e!1492669)))

(declare-fun c!370069 () Bool)

(assert (=> d!689694 (= c!370069 (is-Empty!9130 (c!370026 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614)))))))

(assert (=> d!689694 (= (efficientList!333 (c!370026 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614))) (efficientList$default$2!114 (c!370026 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614))))) lt!862168)))

(declare-fun b!2329648 () Bool)

(assert (=> b!2329648 (= e!1492669 e!1492670)))

(assert (=> b!2329648 (= c!370068 (is-Leaf!13416 (c!370026 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614)))))))

(assert (= (and d!689694 c!370069) b!2329647))

(assert (= (and d!689694 (not c!370069)) b!2329648))

(assert (= (and b!2329648 c!370068) b!2329646))

(assert (= (and b!2329648 (not c!370068)) b!2329644))

(assert (= (or b!2329646 b!2329644) bm!138980))

(assert (= (and bm!138980 c!370070) b!2329643))

(assert (= (and bm!138980 (not c!370070)) b!2329645))

(declare-fun m!2759969 () Bool)

(assert (=> bm!138980 m!2759969))

(declare-fun m!2759971 () Bool)

(assert (=> b!2329643 m!2759971))

(assert (=> b!2329644 m!2759867))

(declare-fun m!2759973 () Bool)

(assert (=> b!2329644 m!2759973))

(declare-fun m!2759975 () Bool)

(assert (=> b!2329644 m!2759975))

(declare-fun m!2759977 () Bool)

(assert (=> b!2329644 m!2759977))

(assert (=> b!2329644 m!2759867))

(declare-fun m!2759979 () Bool)

(assert (=> b!2329644 m!2759979))

(assert (=> b!2329644 m!2759867))

(assert (=> b!2329644 m!2759975))

(assert (=> b!2329644 m!2759973))

(declare-fun m!2759981 () Bool)

(assert (=> b!2329644 m!2759981))

(assert (=> b!2329644 m!2759867))

(declare-fun m!2759983 () Bool)

(assert (=> b!2329644 m!2759983))

(assert (=> b!2329644 m!2759833))

(assert (=> b!2329644 m!2759835))

(assert (=> d!689694 m!2759803))

(assert (=> d!689694 m!2759803))

(assert (=> d!689694 m!2759867))

(declare-fun m!2759985 () Bool)

(assert (=> d!689694 m!2759985))

(assert (=> d!689660 d!689694))

(declare-fun d!689696 () Bool)

(assert (=> d!689696 (= (efficientList$default$2!114 (c!370026 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442614)))) Nil!27825)))

(assert (=> d!689660 d!689696))

(assert (=> b!2329488 d!689628))

(declare-fun d!689698 () Bool)

(assert (=> d!689698 (= (inv!37900 x!442615) (isBalanced!2781 (c!370026 x!442615)))))

(declare-fun bs!459550 () Bool)

(assert (= bs!459550 d!689698))

(declare-fun m!2759987 () Bool)

(assert (=> bs!459550 m!2759987))

(assert (=> b!2329488 d!689698))

(declare-fun d!689700 () Bool)

(declare-fun choose!13629 (Int) Bool)

(assert (=> d!689700 (= (Forall2!729 lambda!86505) (choose!13629 lambda!86505))))

(declare-fun bs!459551 () Bool)

(assert (= bs!459551 d!689700))

(declare-fun m!2759989 () Bool)

(assert (=> bs!459551 m!2759989))

(assert (=> b!2329488 d!689700))

(assert (=> b!2329488 d!689646))

(declare-fun d!689702 () Bool)

(assert (=> d!689702 (= (inv!37900 x!442616) (isBalanced!2781 (c!370026 x!442616)))))

(declare-fun bs!459552 () Bool)

(assert (= bs!459552 d!689702))

(declare-fun m!2759991 () Bool)

(assert (=> bs!459552 m!2759991))

(assert (=> b!2329488 d!689702))

(declare-fun bs!459553 () Bool)

(declare-fun d!689704 () Bool)

(assert (= bs!459553 (and d!689704 start!230158)))

(declare-fun lambda!86530 () Int)

(assert (=> bs!459553 (not (= lambda!86530 lambda!86502))))

(assert (=> d!689704 true))

(declare-fun order!15407 () Int)

(declare-fun order!15405 () Int)

(declare-fun dynLambda!11997 (Int Int) Int)

(declare-fun dynLambda!11998 (Int Int) Int)

(assert (=> d!689704 (< (dynLambda!11997 order!15405 lambda!86503) (dynLambda!11998 order!15407 lambda!86530))))

(assert (=> d!689704 true))

(declare-fun order!15409 () Int)

(declare-fun dynLambda!11999 (Int Int) Int)

(assert (=> d!689704 (< (dynLambda!11999 order!15409 lambda!86504) (dynLambda!11998 order!15407 lambda!86530))))

(assert (=> d!689704 (= (semiInverseModEq!1815 lambda!86503 lambda!86504) (Forall!1120 lambda!86530))))

(declare-fun bs!459554 () Bool)

(assert (= bs!459554 d!689704))

(declare-fun m!2759993 () Bool)

(assert (=> bs!459554 m!2759993))

(assert (=> b!2329487 d!689704))

(assert (=> b!2329487 d!689690))

(declare-fun d!689706 () Bool)

(declare-fun c!370073 () Bool)

(assert (=> d!689706 (= c!370073 (is-Node!9130 (c!370026 x!442616)))))

(declare-fun e!1492675 () Bool)

(assert (=> d!689706 (= (inv!37899 (c!370026 x!442616)) e!1492675)))

(declare-fun b!2329659 () Bool)

(declare-fun inv!37903 (Conc!9130) Bool)

(assert (=> b!2329659 (= e!1492675 (inv!37903 (c!370026 x!442616)))))

(declare-fun b!2329660 () Bool)

(declare-fun e!1492676 () Bool)

(assert (=> b!2329660 (= e!1492675 e!1492676)))

(declare-fun res!994634 () Bool)

(assert (=> b!2329660 (= res!994634 (not (is-Leaf!13416 (c!370026 x!442616))))))

(assert (=> b!2329660 (=> res!994634 e!1492676)))

(declare-fun b!2329661 () Bool)

(declare-fun inv!37904 (Conc!9130) Bool)

(assert (=> b!2329661 (= e!1492676 (inv!37904 (c!370026 x!442616)))))

(assert (= (and d!689706 c!370073) b!2329659))

(assert (= (and d!689706 (not c!370073)) b!2329660))

(assert (= (and b!2329660 (not res!994634)) b!2329661))

(declare-fun m!2759995 () Bool)

(assert (=> b!2329659 m!2759995))

(declare-fun m!2759997 () Bool)

(assert (=> b!2329661 m!2759997))

(assert (=> b!2329500 d!689706))

(declare-fun d!689708 () Bool)

(declare-fun c!370074 () Bool)

(assert (=> d!689708 (= c!370074 (is-Node!9130 (c!370026 x!442615)))))

(declare-fun e!1492677 () Bool)

(assert (=> d!689708 (= (inv!37899 (c!370026 x!442615)) e!1492677)))

(declare-fun b!2329662 () Bool)

(assert (=> b!2329662 (= e!1492677 (inv!37903 (c!370026 x!442615)))))

(declare-fun b!2329663 () Bool)

(declare-fun e!1492678 () Bool)

(assert (=> b!2329663 (= e!1492677 e!1492678)))

(declare-fun res!994635 () Bool)

(assert (=> b!2329663 (= res!994635 (not (is-Leaf!13416 (c!370026 x!442615))))))

(assert (=> b!2329663 (=> res!994635 e!1492678)))

(declare-fun b!2329664 () Bool)

(assert (=> b!2329664 (= e!1492678 (inv!37904 (c!370026 x!442615)))))

(assert (= (and d!689708 c!370074) b!2329662))

(assert (= (and d!689708 (not c!370074)) b!2329663))

(assert (= (and b!2329663 (not res!994635)) b!2329664))

(declare-fun m!2759999 () Bool)

(assert (=> b!2329662 m!2759999))

(declare-fun m!2760001 () Bool)

(assert (=> b!2329664 m!2760001))

(assert (=> b!2329499 d!689708))

(assert (=> b!2329498 d!689642))

(assert (=> b!2329498 d!689640))

(assert (=> d!689658 d!689644))

(declare-fun bm!138981 () Bool)

(declare-fun c!370077 () Bool)

(declare-fun c!370075 () Bool)

(assert (=> bm!138981 (= c!370077 c!370075)))

(declare-fun call!138986 () List!27923)

(declare-fun lt!862177 () List!27923)

(declare-fun e!1492679 () List!27923)

(assert (=> bm!138981 (= call!138986 (++!6855 e!1492679 (ite c!370075 (efficientList$default$2!114 (c!370026 x!442614)) lt!862177)))))

(declare-fun b!2329665 () Bool)

(assert (=> b!2329665 (= e!1492679 (efficientList!335 (xs!12110 (c!370026 x!442614))))))

(declare-fun b!2329666 () Bool)

(declare-fun lt!862175 () Unit!40590)

(declare-fun lt!862176 () Unit!40590)

(assert (=> b!2329666 (= lt!862175 lt!862176)))

(declare-fun lt!862174 () List!27923)

(assert (=> b!2329666 (= (++!6855 call!138986 (efficientList$default$2!114 (c!370026 x!442614))) (++!6855 lt!862174 (++!6855 lt!862177 (efficientList$default$2!114 (c!370026 x!442614)))))))

(assert (=> b!2329666 (= lt!862176 (lemmaConcatAssociativity!1463 lt!862174 lt!862177 (efficientList$default$2!114 (c!370026 x!442614))))))

(assert (=> b!2329666 (= lt!862177 (list!11065 (right!21459 (c!370026 x!442614))))))

(assert (=> b!2329666 (= lt!862174 (list!11065 (left!21129 (c!370026 x!442614))))))

(declare-fun e!1492681 () List!27923)

(assert (=> b!2329666 (= e!1492681 (efficientList!333 (left!21129 (c!370026 x!442614)) (efficientList!333 (right!21459 (c!370026 x!442614)) (efficientList$default$2!114 (c!370026 x!442614)))))))

(declare-fun b!2329667 () Bool)

(assert (=> b!2329667 (= e!1492679 lt!862174)))

(declare-fun b!2329668 () Bool)

(assert (=> b!2329668 (= e!1492681 call!138986)))

(declare-fun b!2329669 () Bool)

(declare-fun e!1492680 () List!27923)

(assert (=> b!2329669 (= e!1492680 (efficientList$default$2!114 (c!370026 x!442614)))))

(declare-fun d!689710 () Bool)

(declare-fun lt!862173 () List!27923)

(assert (=> d!689710 (= lt!862173 (++!6855 (list!11065 (c!370026 x!442614)) (efficientList$default$2!114 (c!370026 x!442614))))))

(assert (=> d!689710 (= lt!862173 e!1492680)))

(declare-fun c!370076 () Bool)

(assert (=> d!689710 (= c!370076 (is-Empty!9130 (c!370026 x!442614)))))

(assert (=> d!689710 (= (efficientList!333 (c!370026 x!442614) (efficientList$default$2!114 (c!370026 x!442614))) lt!862173)))

(declare-fun b!2329670 () Bool)

(assert (=> b!2329670 (= e!1492680 e!1492681)))

(assert (=> b!2329670 (= c!370075 (is-Leaf!13416 (c!370026 x!442614)))))

(assert (= (and d!689710 c!370076) b!2329669))

(assert (= (and d!689710 (not c!370076)) b!2329670))

(assert (= (and b!2329670 c!370075) b!2329668))

(assert (= (and b!2329670 (not c!370075)) b!2329666))

(assert (= (or b!2329668 b!2329666) bm!138981))

(assert (= (and bm!138981 c!370077) b!2329665))

(assert (= (and bm!138981 (not c!370077)) b!2329667))

(declare-fun m!2760003 () Bool)

(assert (=> bm!138981 m!2760003))

(declare-fun m!2760005 () Bool)

(assert (=> b!2329665 m!2760005))

(assert (=> b!2329666 m!2759863))

(declare-fun m!2760007 () Bool)

(assert (=> b!2329666 m!2760007))

(declare-fun m!2760009 () Bool)

(assert (=> b!2329666 m!2760009))

(declare-fun m!2760011 () Bool)

(assert (=> b!2329666 m!2760011))

(assert (=> b!2329666 m!2759863))

(declare-fun m!2760013 () Bool)

(assert (=> b!2329666 m!2760013))

(assert (=> b!2329666 m!2759863))

(assert (=> b!2329666 m!2760009))

(assert (=> b!2329666 m!2760007))

(declare-fun m!2760015 () Bool)

(assert (=> b!2329666 m!2760015))

(assert (=> b!2329666 m!2759863))

(declare-fun m!2760017 () Bool)

(assert (=> b!2329666 m!2760017))

(assert (=> b!2329666 m!2759841))

(assert (=> b!2329666 m!2759843))

(assert (=> d!689710 m!2759825))

(assert (=> d!689710 m!2759825))

(assert (=> d!689710 m!2759863))

(declare-fun m!2760019 () Bool)

(assert (=> d!689710 m!2760019))

(assert (=> d!689658 d!689710))

(declare-fun d!689712 () Bool)

(assert (=> d!689712 (= (efficientList$default$2!114 (c!370026 x!442614)) Nil!27825)))

(assert (=> d!689658 d!689712))

(assert (=> bs!459422 d!689622))

(assert (=> bs!459422 d!689692))

(assert (=> bs!459422 d!689630))

(assert (=> bs!459422 d!689644))

(declare-fun d!689714 () Bool)

(declare-fun c!370078 () Bool)

(assert (=> d!689714 (= c!370078 (is-Node!9130 (c!370026 x!442614)))))

(declare-fun e!1492682 () Bool)

(assert (=> d!689714 (= (inv!37899 (c!370026 x!442614)) e!1492682)))

(declare-fun b!2329671 () Bool)

(assert (=> b!2329671 (= e!1492682 (inv!37903 (c!370026 x!442614)))))

(declare-fun b!2329672 () Bool)

(declare-fun e!1492683 () Bool)

(assert (=> b!2329672 (= e!1492682 e!1492683)))

(declare-fun res!994636 () Bool)

(assert (=> b!2329672 (= res!994636 (not (is-Leaf!13416 (c!370026 x!442614))))))

(assert (=> b!2329672 (=> res!994636 e!1492683)))

(declare-fun b!2329673 () Bool)

(assert (=> b!2329673 (= e!1492683 (inv!37904 (c!370026 x!442614)))))

(assert (= (and d!689714 c!370078) b!2329671))

(assert (= (and d!689714 (not c!370078)) b!2329672))

(assert (= (and b!2329672 (not res!994636)) b!2329673))

(declare-fun m!2760021 () Bool)

(assert (=> b!2329671 m!2760021))

(declare-fun m!2760023 () Bool)

(assert (=> b!2329673 m!2760023))

(assert (=> b!2329497 d!689714))

(declare-fun tp!738232 () Bool)

(declare-fun e!1492688 () Bool)

(declare-fun tp!738233 () Bool)

(declare-fun b!2329680 () Bool)

(assert (=> b!2329680 (= e!1492688 (and (inv!37899 (left!21129 (c!370026 x!442616))) tp!738232 (inv!37899 (right!21459 (c!370026 x!442616))) tp!738233))))

(declare-fun b!2329681 () Bool)

(declare-fun inv!37905 (IArray!18265) Bool)

(assert (=> b!2329681 (= e!1492688 (inv!37905 (xs!12110 (c!370026 x!442616))))))

(assert (=> b!2329500 (= tp!738218 (and (inv!37899 (c!370026 x!442616)) e!1492688))))

(assert (= (and b!2329500 (is-Node!9130 (c!370026 x!442616))) b!2329680))

(assert (= (and b!2329500 (is-Leaf!13416 (c!370026 x!442616))) b!2329681))

(declare-fun m!2760025 () Bool)

(assert (=> b!2329680 m!2760025))

(declare-fun m!2760027 () Bool)

(assert (=> b!2329680 m!2760027))

(declare-fun m!2760029 () Bool)

(assert (=> b!2329681 m!2760029))

(assert (=> b!2329500 m!2759753))

(declare-fun e!1492690 () Bool)

(declare-fun b!2329682 () Bool)

(declare-fun tp!738235 () Bool)

(declare-fun tp!738234 () Bool)

(assert (=> b!2329682 (= e!1492690 (and (inv!37899 (left!21129 (c!370026 x!442615))) tp!738234 (inv!37899 (right!21459 (c!370026 x!442615))) tp!738235))))

(declare-fun b!2329683 () Bool)

(assert (=> b!2329683 (= e!1492690 (inv!37905 (xs!12110 (c!370026 x!442615))))))

(assert (=> b!2329499 (= tp!738217 (and (inv!37899 (c!370026 x!442615)) e!1492690))))

(assert (= (and b!2329499 (is-Node!9130 (c!370026 x!442615))) b!2329682))

(assert (= (and b!2329499 (is-Leaf!13416 (c!370026 x!442615))) b!2329683))

(declare-fun m!2760031 () Bool)

(assert (=> b!2329682 m!2760031))

(declare-fun m!2760033 () Bool)

(assert (=> b!2329682 m!2760033))

(declare-fun m!2760035 () Bool)

(assert (=> b!2329683 m!2760035))

(assert (=> b!2329499 m!2759751))

(declare-fun e!1492692 () Bool)

(declare-fun tp!738236 () Bool)

(declare-fun tp!738237 () Bool)

(declare-fun b!2329684 () Bool)

(assert (=> b!2329684 (= e!1492692 (and (inv!37899 (left!21129 (c!370026 x!442614))) tp!738236 (inv!37899 (right!21459 (c!370026 x!442614))) tp!738237))))

(declare-fun b!2329685 () Bool)

(assert (=> b!2329685 (= e!1492692 (inv!37905 (xs!12110 (c!370026 x!442614))))))

(assert (=> b!2329497 (= tp!738216 (and (inv!37899 (c!370026 x!442614)) e!1492692))))

(assert (= (and b!2329497 (is-Node!9130 (c!370026 x!442614))) b!2329684))

(assert (= (and b!2329497 (is-Leaf!13416 (c!370026 x!442614))) b!2329685))

(declare-fun m!2760037 () Bool)

(assert (=> b!2329684 m!2760037))

(declare-fun m!2760039 () Bool)

(assert (=> b!2329684 m!2760039))

(declare-fun m!2760041 () Bool)

(assert (=> b!2329685 m!2760041))

(assert (=> b!2329497 m!2759727))

(push 1)

(assert (not b!2329625))

(assert (not d!689710))

(assert (not b!2329641))

(assert (not b!2329682))

(assert (not bm!138980))

(assert (not d!689688))

(assert (not b!2329644))

(assert (not d!689698))

(assert (not b!2329580))

(assert (not b!2329661))

(assert (not d!689684))

(assert (not b!2329684))

(assert (not d!689694))

(assert (not b!2329683))

(assert (not b!2329497))

(assert (not b!2329499))

(assert (not b!2329587))

(assert (not bm!138979))

(assert (not d!689680))

(assert (not b!2329500))

(assert (not b!2329665))

(assert (not d!689704))

(assert (not bm!138978))

(assert (not b!2329671))

(assert (not b!2329584))

(assert (not bm!138981))

(assert (not b!2329576))

(assert (not b!2329579))

(assert (not d!689690))

(assert (not b!2329626))

(assert (not b!2329659))

(assert (not b!2329575))

(assert (not b!2329666))

(assert (not d!689702))

(assert (not d!689700))

(assert (not b!2329662))

(assert (not b!2329643))

(assert (not b!2329673))

(assert (not b!2329632))

(assert (not b!2329631))

(assert (not b!2329681))

(assert (not b!2329680))

(assert (not b!2329583))

(assert (not b!2329588))

(assert (not b!2329685))

(assert (not b!2329664))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

