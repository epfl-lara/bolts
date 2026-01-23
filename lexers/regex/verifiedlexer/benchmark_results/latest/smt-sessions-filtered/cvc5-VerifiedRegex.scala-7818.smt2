; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!410724 () Bool)

(assert start!410724)

(assert (=> start!410724 true))

(declare-fun b!4276611 () Bool)

(assert (=> b!4276611 true))

(assert (=> b!4276611 true))

(assert (=> b!4276611 true))

(declare-fun b!4276621 () Bool)

(declare-fun e!2655140 () Bool)

(declare-datatypes ((List!47468 0))(
  ( (Nil!47344) (Cons!47344 (h!52764 (_ BitVec 16)) (t!354013 List!47468)) )
))
(declare-datatypes ((IArray!28657 0))(
  ( (IArray!28658 (innerList!14386 List!47468)) )
))
(declare-datatypes ((Conc!14326 0))(
  ( (Node!14326 (left!35270 Conc!14326) (right!35600 Conc!14326) (csize!28882 Int) (cheight!14537 Int)) (Leaf!22145 (xs!17632 IArray!28657) (csize!28883 Int)) (Empty!14326) )
))
(declare-datatypes ((BalanceConc!28162 0))(
  ( (BalanceConc!28163 (c!728340 Conc!14326)) )
))
(declare-fun x!743833 () BalanceConc!28162)

(declare-fun tp!1308647 () Bool)

(declare-fun inv!62648 (Conc!14326) Bool)

(assert (=> b!4276621 (= e!2655140 (and (inv!62648 (c!728340 x!743833)) tp!1308647))))

(declare-datatypes ((CommentValueInjection!36 0))(
  ( (CommentValueInjection!37) )
))
(declare-fun thiss!2788 () CommentValueInjection!36)

(declare-fun inst!1846 () Bool)

(declare-fun inv!62649 (BalanceConc!28162) Bool)

(declare-fun list!17251 (BalanceConc!28162) List!47468)

(declare-datatypes ((TokenValue!8299 0))(
  ( (FloatLiteralValue!16598 (text!58538 List!47468)) (TokenValueExt!8298 (__x!28745 Int)) (Broken!41495 (value!250401 List!47468)) (Object!8422) (End!8299) (Def!8299) (Underscore!8299) (Match!8299) (Else!8299) (Error!8299) (Case!8299) (If!8299) (Extends!8299) (Abstract!8299) (Class!8299) (Val!8299) (DelimiterValue!16598 (del!8359 List!47468)) (KeywordValue!8305 (value!250402 List!47468)) (CommentValue!16598 (value!250403 List!47468)) (WhitespaceValue!16598 (value!250404 List!47468)) (IndentationValue!8299 (value!250405 List!47468)) (String!55374) (Int32!8299) (Broken!41496 (value!250406 List!47468)) (Boolean!8300) (Unit!66299) (OperatorValue!8302 (op!8359 List!47468)) (IdentifierValue!16598 (value!250407 List!47468)) (IdentifierValue!16599 (value!250408 List!47468)) (WhitespaceValue!16599 (value!250409 List!47468)) (True!16598) (False!16598) (Broken!41497 (value!250410 List!47468)) (Broken!41498 (value!250411 List!47468)) (True!16599) (RightBrace!8299) (RightBracket!8299) (Colon!8299) (Null!8299) (Comma!8299) (LeftBracket!8299) (False!16599) (LeftBrace!8299) (ImaginaryLiteralValue!8299 (text!58539 List!47468)) (StringLiteralValue!24897 (value!250412 List!47468)) (EOFValue!8299 (value!250413 List!47468)) (IdentValue!8299 (value!250414 List!47468)) (DelimiterValue!16599 (value!250415 List!47468)) (DedentValue!8299 (value!250416 List!47468)) (NewLineValue!8299 (value!250417 List!47468)) (IntegerValue!24897 (value!250418 (_ BitVec 32)) (text!58540 List!47468)) (IntegerValue!24898 (value!250419 Int) (text!58541 List!47468)) (Times!8299) (Or!8299) (Equal!8299) (Minus!8299) (Broken!41499 (value!250420 List!47468)) (And!8299) (Div!8299) (LessEqual!8299) (Mod!8299) (Concat!21197) (Not!8299) (Plus!8299) (SpaceValue!8299 (value!250421 List!47468)) (IntegerValue!24899 (value!250422 Int) (text!58542 List!47468)) (StringLiteralValue!24898 (text!58543 List!47468)) (FloatLiteralValue!16599 (text!58544 List!47468)) (BytesLiteralValue!8299 (value!250423 List!47468)) (CommentValue!16599 (value!250424 List!47468)) (StringLiteralValue!24899 (value!250425 List!47468)) (ErrorTokenValue!8299 (msg!8360 List!47468)) )
))
(declare-fun toCharacters!14 (CommentValueInjection!36 TokenValue!8299) BalanceConc!28162)

(declare-fun toValue!21 (CommentValueInjection!36 BalanceConc!28162) TokenValue!8299)

(assert (=> start!410724 (= inst!1846 (=> (and (inv!62649 x!743833) e!2655140) (= (list!17251 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743833))) (list!17251 x!743833))))))

(assert (= start!410724 b!4276621))

(declare-fun m!4872523 () Bool)

(assert (=> b!4276621 m!4872523))

(declare-fun m!4872525 () Bool)

(assert (=> start!410724 m!4872525))

(declare-fun m!4872527 () Bool)

(assert (=> start!410724 m!4872527))

(declare-fun m!4872529 () Bool)

(assert (=> start!410724 m!4872529))

(declare-fun m!4872531 () Bool)

(assert (=> start!410724 m!4872531))

(declare-fun m!4872533 () Bool)

(assert (=> start!410724 m!4872533))

(assert (=> start!410724 m!4872529))

(assert (=> start!410724 m!4872533))

(declare-fun res!1756045 () Bool)

(declare-fun e!2655143 () Bool)

(assert (=> b!4276611 (=> res!1756045 e!2655143)))

(declare-fun x!743834 () BalanceConc!28162)

(declare-fun x!743835 () BalanceConc!28162)

(assert (=> b!4276611 (= res!1756045 (not (= (list!17251 x!743834) (list!17251 x!743835))))))

(declare-fun inst!1847 () Bool)

(declare-fun e!2655142 () Bool)

(declare-fun e!2655141 () Bool)

(assert (=> b!4276611 (= inst!1847 (=> (and (inv!62649 x!743834) e!2655142 (inv!62649 x!743835) e!2655141) e!2655143))))

(declare-fun b!4276622 () Bool)

(assert (=> b!4276622 (= e!2655143 (= (toValue!21 thiss!2788 x!743834) (toValue!21 thiss!2788 x!743835)))))

(declare-fun b!4276623 () Bool)

(declare-fun tp!1308648 () Bool)

(assert (=> b!4276623 (= e!2655142 (and (inv!62648 (c!728340 x!743834)) tp!1308648))))

(declare-fun b!4276624 () Bool)

(declare-fun tp!1308649 () Bool)

(assert (=> b!4276624 (= e!2655141 (and (inv!62648 (c!728340 x!743835)) tp!1308649))))

(assert (= (and b!4276611 (not res!1756045)) b!4276622))

(assert (= b!4276611 b!4276623))

(assert (= b!4276611 b!4276624))

(declare-fun m!4872535 () Bool)

(assert (=> b!4276611 m!4872535))

(declare-fun m!4872537 () Bool)

(assert (=> b!4276611 m!4872537))

(declare-fun m!4872539 () Bool)

(assert (=> b!4276611 m!4872539))

(declare-fun m!4872541 () Bool)

(assert (=> b!4276611 m!4872541))

(declare-fun m!4872543 () Bool)

(assert (=> b!4276622 m!4872543))

(declare-fun m!4872545 () Bool)

(assert (=> b!4276622 m!4872545))

(declare-fun m!4872547 () Bool)

(assert (=> b!4276623 m!4872547))

(declare-fun m!4872549 () Bool)

(assert (=> b!4276624 m!4872549))

(declare-fun bs!602426 () Bool)

(declare-fun neg-inst!1847 () Bool)

(declare-fun s!240520 () Bool)

(assert (= bs!602426 (and neg-inst!1847 s!240520)))

(assert (=> bs!602426 (=> true (= (list!17251 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743833))) (list!17251 x!743833)))))

(assert (=> m!4872533 m!4872529))

(assert (=> m!4872533 m!4872531))

(assert (=> m!4872533 m!4872525))

(assert (=> m!4872533 s!240520))

(assert (=> m!4872525 s!240520))

(declare-fun bs!602427 () Bool)

(assert (= bs!602427 (and neg-inst!1847 start!410724)))

(assert (=> bs!602427 (= true inst!1846)))

(declare-fun bs!602428 () Bool)

(declare-fun neg-inst!1846 () Bool)

(declare-fun s!240522 () Bool)

(assert (= bs!602428 (and neg-inst!1846 s!240522)))

(declare-fun res!1756046 () Bool)

(declare-fun e!2655144 () Bool)

(assert (=> bs!602428 (=> res!1756046 e!2655144)))

(assert (=> bs!602428 (= res!1756046 (not (= (list!17251 x!743835) (list!17251 x!743835))))))

(assert (=> bs!602428 (=> true e!2655144)))

(declare-fun b!4276625 () Bool)

(assert (=> b!4276625 (= e!2655144 (= (toValue!21 thiss!2788 x!743835) (toValue!21 thiss!2788 x!743835)))))

(assert (= (and bs!602428 (not res!1756046)) b!4276625))

(assert (=> m!4872537 s!240522))

(assert (=> m!4872537 s!240522))

(declare-fun bs!602429 () Bool)

(declare-fun s!240524 () Bool)

(assert (= bs!602429 (and neg-inst!1846 s!240524)))

(declare-fun res!1756047 () Bool)

(declare-fun e!2655145 () Bool)

(assert (=> bs!602429 (=> res!1756047 e!2655145)))

(assert (=> bs!602429 (= res!1756047 (not (= (list!17251 x!743835) (list!17251 x!743833))))))

(assert (=> bs!602429 (=> true e!2655145)))

(declare-fun b!4276626 () Bool)

(assert (=> b!4276626 (= e!2655145 (= (toValue!21 thiss!2788 x!743835) (toValue!21 thiss!2788 x!743833)))))

(assert (= (and bs!602429 (not res!1756047)) b!4276626))

(declare-fun bs!602430 () Bool)

(assert (= bs!602430 (and m!4872533 m!4872537)))

(assert (=> bs!602430 m!4872537))

(assert (=> bs!602430 m!4872525))

(assert (=> bs!602430 s!240524))

(declare-fun bs!602431 () Bool)

(declare-fun s!240526 () Bool)

(assert (= bs!602431 (and neg-inst!1846 s!240526)))

(declare-fun res!1756048 () Bool)

(declare-fun e!2655146 () Bool)

(assert (=> bs!602431 (=> res!1756048 e!2655146)))

(assert (=> bs!602431 (= res!1756048 (not (= (list!17251 x!743833) (list!17251 x!743833))))))

(assert (=> bs!602431 (=> true e!2655146)))

(declare-fun b!4276627 () Bool)

(assert (=> b!4276627 (= e!2655146 (= (toValue!21 thiss!2788 x!743833) (toValue!21 thiss!2788 x!743833)))))

(assert (= (and bs!602431 (not res!1756048)) b!4276627))

(assert (=> m!4872533 m!4872525))

(assert (=> m!4872533 m!4872525))

(assert (=> m!4872533 s!240526))

(declare-fun bs!602432 () Bool)

(declare-fun s!240528 () Bool)

(assert (= bs!602432 (and neg-inst!1846 s!240528)))

(declare-fun res!1756049 () Bool)

(declare-fun e!2655147 () Bool)

(assert (=> bs!602432 (=> res!1756049 e!2655147)))

(assert (=> bs!602432 (= res!1756049 (not (= (list!17251 x!743833) (list!17251 x!743835))))))

(assert (=> bs!602432 (=> true e!2655147)))

(declare-fun b!4276628 () Bool)

(assert (=> b!4276628 (= e!2655147 (= (toValue!21 thiss!2788 x!743833) (toValue!21 thiss!2788 x!743835)))))

(assert (= (and bs!602432 (not res!1756049)) b!4276628))

(assert (=> bs!602430 m!4872525))

(assert (=> bs!602430 m!4872537))

(assert (=> bs!602430 s!240528))

(assert (=> m!4872533 s!240526))

(declare-fun bs!602433 () Bool)

(assert (= bs!602433 (and m!4872545 m!4872537)))

(assert (=> bs!602433 s!240522))

(declare-fun bs!602434 () Bool)

(assert (= bs!602434 (and m!4872545 m!4872533)))

(assert (=> bs!602434 s!240528))

(assert (=> m!4872545 s!240522))

(assert (=> bs!602433 s!240522))

(assert (=> bs!602434 s!240524))

(assert (=> m!4872545 s!240522))

(declare-fun bs!602435 () Bool)

(declare-fun s!240530 () Bool)

(assert (= bs!602435 (and neg-inst!1846 s!240530)))

(declare-fun res!1756050 () Bool)

(declare-fun e!2655148 () Bool)

(assert (=> bs!602435 (=> res!1756050 e!2655148)))

(assert (=> bs!602435 (= res!1756050 (not (= (list!17251 x!743835) (list!17251 x!743834))))))

(assert (=> bs!602435 (=> true e!2655148)))

(declare-fun b!4276629 () Bool)

(assert (=> b!4276629 (= e!2655148 (= (toValue!21 thiss!2788 x!743835) (toValue!21 thiss!2788 x!743834)))))

(assert (= (and bs!602435 (not res!1756050)) b!4276629))

(declare-fun bs!602436 () Bool)

(assert (= bs!602436 (and m!4872535 m!4872537 m!4872545)))

(assert (=> bs!602436 m!4872537))

(assert (=> bs!602436 m!4872535))

(assert (=> bs!602436 s!240530))

(declare-fun bs!602437 () Bool)

(declare-fun s!240532 () Bool)

(assert (= bs!602437 (and neg-inst!1846 s!240532)))

(declare-fun res!1756051 () Bool)

(declare-fun e!2655149 () Bool)

(assert (=> bs!602437 (=> res!1756051 e!2655149)))

(assert (=> bs!602437 (= res!1756051 (not (= (list!17251 x!743833) (list!17251 x!743834))))))

(assert (=> bs!602437 (=> true e!2655149)))

(declare-fun b!4276630 () Bool)

(assert (=> b!4276630 (= e!2655149 (= (toValue!21 thiss!2788 x!743833) (toValue!21 thiss!2788 x!743834)))))

(assert (= (and bs!602437 (not res!1756051)) b!4276630))

(declare-fun bs!602438 () Bool)

(assert (= bs!602438 (and m!4872535 m!4872533)))

(assert (=> bs!602438 m!4872525))

(assert (=> bs!602438 m!4872535))

(assert (=> bs!602438 s!240532))

(declare-fun bs!602439 () Bool)

(declare-fun s!240534 () Bool)

(assert (= bs!602439 (and neg-inst!1846 s!240534)))

(declare-fun res!1756052 () Bool)

(declare-fun e!2655150 () Bool)

(assert (=> bs!602439 (=> res!1756052 e!2655150)))

(assert (=> bs!602439 (= res!1756052 (not (= (list!17251 x!743834) (list!17251 x!743834))))))

(assert (=> bs!602439 (=> true e!2655150)))

(declare-fun b!4276631 () Bool)

(assert (=> b!4276631 (= e!2655150 (= (toValue!21 thiss!2788 x!743834) (toValue!21 thiss!2788 x!743834)))))

(assert (= (and bs!602439 (not res!1756052)) b!4276631))

(assert (=> m!4872535 s!240534))

(declare-fun bs!602440 () Bool)

(declare-fun s!240536 () Bool)

(assert (= bs!602440 (and neg-inst!1846 s!240536)))

(declare-fun res!1756053 () Bool)

(declare-fun e!2655151 () Bool)

(assert (=> bs!602440 (=> res!1756053 e!2655151)))

(assert (=> bs!602440 (= res!1756053 (not (= (list!17251 x!743834) (list!17251 x!743835))))))

(assert (=> bs!602440 (=> true e!2655151)))

(declare-fun b!4276632 () Bool)

(assert (=> b!4276632 (= e!2655151 (= (toValue!21 thiss!2788 x!743834) (toValue!21 thiss!2788 x!743835)))))

(assert (= (and bs!602440 (not res!1756053)) b!4276632))

(assert (=> bs!602436 m!4872535))

(assert (=> bs!602436 m!4872537))

(assert (=> bs!602436 s!240536))

(declare-fun bs!602441 () Bool)

(declare-fun s!240538 () Bool)

(assert (= bs!602441 (and neg-inst!1846 s!240538)))

(declare-fun res!1756054 () Bool)

(declare-fun e!2655152 () Bool)

(assert (=> bs!602441 (=> res!1756054 e!2655152)))

(assert (=> bs!602441 (= res!1756054 (not (= (list!17251 x!743834) (list!17251 x!743833))))))

(assert (=> bs!602441 (=> true e!2655152)))

(declare-fun b!4276633 () Bool)

(assert (=> b!4276633 (= e!2655152 (= (toValue!21 thiss!2788 x!743834) (toValue!21 thiss!2788 x!743833)))))

(assert (= (and bs!602441 (not res!1756054)) b!4276633))

(assert (=> bs!602438 m!4872535))

(assert (=> bs!602438 m!4872525))

(assert (=> bs!602438 s!240538))

(assert (=> m!4872535 s!240534))

(declare-fun bs!602442 () Bool)

(declare-fun s!240540 () Bool)

(assert (= bs!602442 (and neg-inst!1846 s!240540)))

(declare-fun res!1756055 () Bool)

(declare-fun e!2655153 () Bool)

(assert (=> bs!602442 (=> res!1756055 e!2655153)))

(assert (=> bs!602442 (= res!1756055 (not (= (list!17251 x!743834) (list!17251 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743833))))))))

(assert (=> bs!602442 (=> true e!2655153)))

(declare-fun b!4276634 () Bool)

(assert (=> b!4276634 (= e!2655153 (= (toValue!21 thiss!2788 x!743834) (toValue!21 thiss!2788 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743833)))))))

(assert (= (and bs!602442 (not res!1756055)) b!4276634))

(declare-fun bs!602443 () Bool)

(assert (= bs!602443 (and m!4872531 m!4872535)))

(assert (=> bs!602443 m!4872535))

(assert (=> bs!602443 m!4872531))

(assert (=> bs!602443 s!240540))

(declare-fun bs!602444 () Bool)

(declare-fun s!240542 () Bool)

(assert (= bs!602444 (and neg-inst!1846 s!240542)))

(declare-fun res!1756056 () Bool)

(declare-fun e!2655154 () Bool)

(assert (=> bs!602444 (=> res!1756056 e!2655154)))

(assert (=> bs!602444 (= res!1756056 (not (= (list!17251 x!743835) (list!17251 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743833))))))))

(assert (=> bs!602444 (=> true e!2655154)))

(declare-fun b!4276635 () Bool)

(assert (=> b!4276635 (= e!2655154 (= (toValue!21 thiss!2788 x!743835) (toValue!21 thiss!2788 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743833)))))))

(assert (= (and bs!602444 (not res!1756056)) b!4276635))

(declare-fun bs!602445 () Bool)

(assert (= bs!602445 (and m!4872531 m!4872537 m!4872545)))

(assert (=> bs!602445 m!4872537))

(assert (=> bs!602445 m!4872531))

(assert (=> bs!602445 s!240542))

(declare-fun bs!602446 () Bool)

(declare-fun s!240544 () Bool)

(assert (= bs!602446 (and neg-inst!1846 s!240544)))

(declare-fun res!1756057 () Bool)

(declare-fun e!2655155 () Bool)

(assert (=> bs!602446 (=> res!1756057 e!2655155)))

(assert (=> bs!602446 (= res!1756057 (not (= (list!17251 x!743833) (list!17251 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743833))))))))

(assert (=> bs!602446 (=> true e!2655155)))

(declare-fun b!4276636 () Bool)

(assert (=> b!4276636 (= e!2655155 (= (toValue!21 thiss!2788 x!743833) (toValue!21 thiss!2788 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743833)))))))

(assert (= (and bs!602446 (not res!1756057)) b!4276636))

(declare-fun bs!602447 () Bool)

(assert (= bs!602447 (and m!4872531 m!4872533)))

(assert (=> bs!602447 m!4872525))

(assert (=> bs!602447 m!4872531))

(assert (=> bs!602447 s!240544))

(declare-fun bs!602448 () Bool)

(declare-fun s!240546 () Bool)

(assert (= bs!602448 (and neg-inst!1846 s!240546)))

(declare-fun res!1756058 () Bool)

(declare-fun e!2655156 () Bool)

(assert (=> bs!602448 (=> res!1756058 e!2655156)))

(assert (=> bs!602448 (= res!1756058 (not (= (list!17251 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743833))) (list!17251 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743833))))))))

(assert (=> bs!602448 (=> true e!2655156)))

(declare-fun b!4276637 () Bool)

(assert (=> b!4276637 (= e!2655156 (= (toValue!21 thiss!2788 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743833))) (toValue!21 thiss!2788 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743833)))))))

(assert (= (and bs!602448 (not res!1756058)) b!4276637))

(assert (=> m!4872531 s!240546))

(declare-fun bs!602449 () Bool)

(declare-fun s!240548 () Bool)

(assert (= bs!602449 (and neg-inst!1846 s!240548)))

(declare-fun res!1756059 () Bool)

(declare-fun e!2655157 () Bool)

(assert (=> bs!602449 (=> res!1756059 e!2655157)))

(assert (=> bs!602449 (= res!1756059 (not (= (list!17251 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743833))) (list!17251 x!743834))))))

(assert (=> bs!602449 (=> true e!2655157)))

(declare-fun b!4276638 () Bool)

(assert (=> b!4276638 (= e!2655157 (= (toValue!21 thiss!2788 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743833))) (toValue!21 thiss!2788 x!743834)))))

(assert (= (and bs!602449 (not res!1756059)) b!4276638))

(assert (=> bs!602443 m!4872531))

(assert (=> bs!602443 m!4872535))

(assert (=> bs!602443 s!240548))

(declare-fun bs!602450 () Bool)

(declare-fun s!240550 () Bool)

(assert (= bs!602450 (and neg-inst!1846 s!240550)))

(declare-fun res!1756060 () Bool)

(declare-fun e!2655158 () Bool)

(assert (=> bs!602450 (=> res!1756060 e!2655158)))

(assert (=> bs!602450 (= res!1756060 (not (= (list!17251 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743833))) (list!17251 x!743835))))))

(assert (=> bs!602450 (=> true e!2655158)))

(declare-fun b!4276639 () Bool)

(assert (=> b!4276639 (= e!2655158 (= (toValue!21 thiss!2788 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743833))) (toValue!21 thiss!2788 x!743835)))))

(assert (= (and bs!602450 (not res!1756060)) b!4276639))

(assert (=> bs!602445 m!4872531))

(assert (=> bs!602445 m!4872537))

(assert (=> bs!602445 s!240550))

(declare-fun bs!602451 () Bool)

(declare-fun s!240552 () Bool)

(assert (= bs!602451 (and neg-inst!1846 s!240552)))

(declare-fun res!1756061 () Bool)

(declare-fun e!2655159 () Bool)

(assert (=> bs!602451 (=> res!1756061 e!2655159)))

(assert (=> bs!602451 (= res!1756061 (not (= (list!17251 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743833))) (list!17251 x!743833))))))

(assert (=> bs!602451 (=> true e!2655159)))

(declare-fun b!4276640 () Bool)

(assert (=> b!4276640 (= e!2655159 (= (toValue!21 thiss!2788 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743833))) (toValue!21 thiss!2788 x!743833)))))

(assert (= (and bs!602451 (not res!1756061)) b!4276640))

(assert (=> bs!602447 m!4872531))

(assert (=> bs!602447 m!4872525))

(assert (=> bs!602447 s!240552))

(assert (=> m!4872531 s!240546))

(declare-fun bs!602452 () Bool)

(assert (= bs!602452 (and m!4872543 m!4872531)))

(assert (=> bs!602452 s!240548))

(assert (=> m!4872543 s!240534))

(declare-fun bs!602453 () Bool)

(assert (= bs!602453 (and m!4872543 m!4872537 m!4872545)))

(assert (=> bs!602453 s!240530))

(declare-fun bs!602454 () Bool)

(assert (= bs!602454 (and m!4872543 m!4872535)))

(assert (=> bs!602454 s!240534))

(declare-fun bs!602455 () Bool)

(assert (= bs!602455 (and m!4872543 m!4872533)))

(assert (=> bs!602455 s!240532))

(assert (=> m!4872543 s!240534))

(assert (=> bs!602452 s!240540))

(assert (=> bs!602454 s!240534))

(assert (=> bs!602455 s!240538))

(assert (=> bs!602453 s!240536))

(declare-fun bs!602456 () Bool)

(assert (= bs!602456 (and m!4872525 m!4872531)))

(assert (=> bs!602456 s!240552))

(declare-fun bs!602457 () Bool)

(assert (= bs!602457 (and m!4872525 m!4872535 m!4872543)))

(assert (=> bs!602457 s!240538))

(assert (=> m!4872525 s!240526))

(declare-fun bs!602458 () Bool)

(assert (= bs!602458 (and m!4872525 m!4872537 m!4872545)))

(assert (=> bs!602458 s!240524))

(declare-fun bs!602459 () Bool)

(assert (= bs!602459 (and m!4872525 m!4872533)))

(assert (=> bs!602459 s!240526))

(assert (=> bs!602457 s!240532))

(assert (=> bs!602456 s!240544))

(assert (=> m!4872525 s!240526))

(assert (=> bs!602458 s!240528))

(assert (=> bs!602459 s!240526))

(declare-fun bs!602460 () Bool)

(assert (= bs!602460 (and neg-inst!1846 b!4276611)))

(assert (=> bs!602460 (= true inst!1847)))

(declare-fun res!1756043 () Bool)

(declare-fun e!2655139 () Bool)

(assert (=> start!410724 (=> res!1756043 e!2655139)))

(declare-fun lambda!131434 () Int)

(declare-fun Forall!1665 (Int) Bool)

(assert (=> start!410724 (= res!1756043 (not (Forall!1665 lambda!131434)))))

(assert (=> start!410724 (= (Forall!1665 lambda!131434) inst!1846)))

(assert (=> start!410724 (not e!2655139)))

(assert (=> start!410724 true))

(declare-fun e!2655138 () Bool)

(assert (=> b!4276611 (= e!2655139 e!2655138)))

(declare-fun res!1756044 () Bool)

(assert (=> b!4276611 (=> res!1756044 e!2655138)))

(declare-fun lambda!131437 () Int)

(declare-fun Forall2!1244 (Int) Bool)

(assert (=> b!4276611 (= res!1756044 (not (Forall2!1244 lambda!131437)))))

(assert (=> b!4276611 (= (Forall2!1244 lambda!131437) inst!1847)))

(declare-fun lambda!131435 () Int)

(declare-fun lambda!131436 () Int)

(declare-fun semiInverseModEq!3529 (Int Int) Bool)

(assert (=> b!4276611 (= (semiInverseModEq!3529 lambda!131435 lambda!131436) (Forall!1665 lambda!131434))))

(declare-fun b!4276612 () Bool)

(declare-datatypes ((TokenValueInjection!15910 0))(
  ( (TokenValueInjection!15911 (toValue!10839 Int) (toChars!10698 Int)) )
))
(declare-fun inv!62650 (TokenValueInjection!15910) Bool)

(assert (=> b!4276612 (= e!2655138 (inv!62650 (TokenValueInjection!15911 lambda!131436 lambda!131435)))))

(declare-fun equivClasses!3408 (Int Int) Bool)

(assert (=> b!4276612 (= (equivClasses!3408 lambda!131435 lambda!131436) (Forall2!1244 lambda!131437))))

(assert (= neg-inst!1847 inst!1846))

(assert (= (and start!410724 (not res!1756043)) b!4276611))

(assert (= neg-inst!1846 inst!1847))

(assert (= (and b!4276611 (not res!1756044)) b!4276612))

(declare-fun m!4872551 () Bool)

(assert (=> start!410724 m!4872551))

(assert (=> start!410724 m!4872551))

(declare-fun m!4872553 () Bool)

(assert (=> b!4276611 m!4872553))

(assert (=> b!4276611 m!4872553))

(declare-fun m!4872555 () Bool)

(assert (=> b!4276611 m!4872555))

(assert (=> b!4276611 m!4872551))

(declare-fun m!4872557 () Bool)

(assert (=> b!4276612 m!4872557))

(declare-fun m!4872559 () Bool)

(assert (=> b!4276612 m!4872559))

(assert (=> b!4276612 m!4872553))

(push 1)

(assert (not b!4276637))

(assert (not bs!602437))

(assert (not bs!602450))

(assert (not b!4276631))

(assert (not b!4276622))

(assert (not b!4276611))

(assert (not bs!602449))

(assert (not b!4276635))

(assert (not bs!602428))

(assert (not b!4276640))

(assert (not bs!602446))

(assert (not b!4276632))

(assert (not b!4276639))

(assert (not b!4276633))

(assert (not b!4276627))

(assert (not bs!602432))

(assert (not b!4276625))

(assert (not b!4276630))

(assert (not start!410724))

(assert (not b!4276634))

(assert (not bs!602426))

(assert (not b!4276626))

(assert (not b!4276624))

(assert (not b!4276628))

(assert (not bs!602431))

(assert (not b!4276621))

(assert (not bs!602439))

(assert (not bs!602440))

(assert (not bs!602451))

(assert (not b!4276612))

(assert (not b!4276636))

(assert (not bs!602444))

(assert (not bs!602448))

(assert (not bs!602435))

(assert (not bs!602429))

(assert (not b!4276638))

(assert (not b!4276629))

(assert (not bs!602442))

(assert (not b!4276623))

(assert (not bs!602441))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!602494 () Bool)

(assert (= bs!602494 (and m!4872537 b!4276625)))

(assert (=> bs!602494 m!4872545))

(assert (=> bs!602494 m!4872545))

(declare-fun bs!602495 () Bool)

(assert (= bs!602495 (and m!4872533 m!4872537 b!4276626)))

(assert (=> bs!602495 m!4872545))

(assert (=> bs!602495 m!4872533))

(declare-fun bs!602496 () Bool)

(assert (= bs!602496 (and m!4872533 b!4276627)))

(assert (=> bs!602496 m!4872533))

(assert (=> bs!602496 m!4872533))

(declare-fun bs!602497 () Bool)

(assert (= bs!602497 (and m!4872533 m!4872537 b!4276628)))

(assert (=> bs!602497 m!4872533))

(assert (=> bs!602497 m!4872545))

(declare-fun bs!602498 () Bool)

(assert (= bs!602498 (and m!4872535 m!4872537 m!4872545 b!4276629)))

(assert (=> bs!602498 m!4872545))

(assert (=> bs!602498 m!4872543))

(declare-fun bs!602499 () Bool)

(assert (= bs!602499 (and m!4872535 m!4872533 b!4276630)))

(assert (=> bs!602499 m!4872533))

(assert (=> bs!602499 m!4872543))

(declare-fun bs!602500 () Bool)

(assert (= bs!602500 (and m!4872535 b!4276631)))

(assert (=> bs!602500 m!4872543))

(assert (=> bs!602500 m!4872543))

(declare-fun bs!602501 () Bool)

(assert (= bs!602501 (and m!4872535 m!4872537 m!4872545 b!4276632)))

(assert (=> bs!602501 m!4872543))

(assert (=> bs!602501 m!4872545))

(declare-fun bs!602502 () Bool)

(assert (= bs!602502 (and m!4872535 m!4872533 b!4276633)))

(assert (=> bs!602502 m!4872543))

(assert (=> bs!602502 m!4872533))

(declare-fun bs!602503 () Bool)

(assert (= bs!602503 (and m!4872531 m!4872535 b!4276634)))

(assert (=> bs!602503 m!4872543))

(declare-fun m!4872599 () Bool)

(assert (=> bs!602503 m!4872599))

(declare-fun bs!602504 () Bool)

(assert (= bs!602504 (and m!4872531 m!4872537 m!4872545 b!4276635)))

(assert (=> bs!602504 m!4872545))

(assert (=> bs!602504 m!4872599))

(declare-fun bs!602505 () Bool)

(assert (= bs!602505 (and m!4872531 m!4872533 b!4276636)))

(assert (=> bs!602505 m!4872533))

(assert (=> bs!602505 m!4872599))

(declare-fun bs!602506 () Bool)

(assert (= bs!602506 (and m!4872531 b!4276637)))

(assert (=> bs!602506 m!4872599))

(assert (=> bs!602506 m!4872599))

(declare-fun bs!602507 () Bool)

(assert (= bs!602507 (and m!4872531 m!4872535 b!4276638)))

(assert (=> bs!602507 m!4872599))

(assert (=> bs!602507 m!4872543))

(declare-fun bs!602508 () Bool)

(assert (= bs!602508 (and m!4872531 m!4872537 m!4872545 b!4276639)))

(assert (=> bs!602508 m!4872599))

(assert (=> bs!602508 m!4872545))

(declare-fun bs!602509 () Bool)

(assert (= bs!602509 (and m!4872531 m!4872533 b!4276640)))

(assert (=> bs!602509 m!4872599))

(assert (=> bs!602509 m!4872533))

(push 1)

(assert (not b!4276637))

(assert (not bs!602437))

(assert (not bs!602450))

(assert (not b!4276631))

(assert (not b!4276622))

(assert (not b!4276611))

(assert (not bs!602449))

(assert (not b!4276635))

(assert (not bs!602428))

(assert (not b!4276640))

(assert (not bs!602446))

(assert (not b!4276632))

(assert (not b!4276639))

(assert (not b!4276633))

(assert (not b!4276627))

(assert (not bs!602432))

(assert (not b!4276625))

(assert (not b!4276630))

(assert (not start!410724))

(assert (not b!4276634))

(assert (not bs!602426))

(assert (not b!4276626))

(assert (not b!4276624))

(assert (not b!4276628))

(assert (not bs!602431))

(assert (not b!4276621))

(assert (not bs!602439))

(assert (not bs!602440))

(assert (not bs!602451))

(assert (not b!4276612))

(assert (not b!4276636))

(assert (not bs!602444))

(assert (not bs!602448))

(assert (not bs!602435))

(assert (not bs!602429))

(assert (not b!4276638))

(assert (not b!4276629))

(assert (not bs!602442))

(assert (not b!4276623))

(assert (not bs!602441))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1262499 () Bool)

(declare-fun efficientList!590 (BalanceConc!28162) List!47468)

(assert (=> d!1262499 (= (toValue!21 thiss!2788 x!743835) (CommentValue!16598 (efficientList!590 x!743835)))))

(declare-fun bs!602534 () Bool)

(assert (= bs!602534 d!1262499))

(declare-fun m!4872619 () Bool)

(assert (=> bs!602534 m!4872619))

(assert (=> b!4276629 d!1262499))

(declare-fun d!1262501 () Bool)

(assert (=> d!1262501 (= (toValue!21 thiss!2788 x!743834) (CommentValue!16598 (efficientList!590 x!743834)))))

(declare-fun bs!602535 () Bool)

(assert (= bs!602535 d!1262501))

(declare-fun m!4872621 () Bool)

(assert (=> bs!602535 m!4872621))

(assert (=> b!4276629 d!1262501))

(declare-fun d!1262503 () Bool)

(assert (=> d!1262503 (= (toValue!21 thiss!2788 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743833))) (CommentValue!16598 (efficientList!590 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743833)))))))

(declare-fun bs!602536 () Bool)

(assert (= bs!602536 d!1262503))

(assert (=> bs!602536 m!4872529))

(declare-fun m!4872623 () Bool)

(assert (=> bs!602536 m!4872623))

(assert (=> b!4276639 d!1262503))

(assert (=> b!4276639 d!1262499))

(declare-fun d!1262505 () Bool)

(declare-fun list!17254 (Conc!14326) List!47468)

(assert (=> d!1262505 (= (list!17251 x!743833) (list!17254 (c!728340 x!743833)))))

(declare-fun bs!602537 () Bool)

(assert (= bs!602537 d!1262505))

(declare-fun m!4872625 () Bool)

(assert (=> bs!602537 m!4872625))

(assert (=> bs!602446 d!1262505))

(declare-fun d!1262507 () Bool)

(assert (=> d!1262507 (= (list!17251 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743833))) (list!17254 (c!728340 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743833)))))))

(declare-fun bs!602538 () Bool)

(assert (= bs!602538 d!1262507))

(declare-fun m!4872627 () Bool)

(assert (=> bs!602538 m!4872627))

(assert (=> bs!602446 d!1262507))

(assert (=> b!4276626 d!1262499))

(declare-fun d!1262509 () Bool)

(assert (=> d!1262509 (= (toValue!21 thiss!2788 x!743833) (CommentValue!16598 (efficientList!590 x!743833)))))

(declare-fun bs!602539 () Bool)

(assert (= bs!602539 d!1262509))

(declare-fun m!4872629 () Bool)

(assert (=> bs!602539 m!4872629))

(assert (=> b!4276626 d!1262509))

(declare-fun d!1262511 () Bool)

(assert (=> d!1262511 (= (list!17251 x!743834) (list!17254 (c!728340 x!743834)))))

(declare-fun bs!602540 () Bool)

(assert (= bs!602540 d!1262511))

(declare-fun m!4872631 () Bool)

(assert (=> bs!602540 m!4872631))

(assert (=> bs!602441 d!1262511))

(assert (=> bs!602441 d!1262505))

(assert (=> bs!602451 d!1262507))

(assert (=> bs!602451 d!1262505))

(assert (=> bs!602437 d!1262505))

(assert (=> bs!602437 d!1262511))

(assert (=> b!4276636 d!1262509))

(assert (=> b!4276636 d!1262503))

(declare-fun d!1262513 () Bool)

(declare-fun isBalanced!3868 (Conc!14326) Bool)

(assert (=> d!1262513 (= (inv!62649 x!743833) (isBalanced!3868 (c!728340 x!743833)))))

(declare-fun bs!602541 () Bool)

(assert (= bs!602541 d!1262513))

(declare-fun m!4872633 () Bool)

(assert (=> bs!602541 m!4872633))

(assert (=> start!410724 d!1262513))

(assert (=> start!410724 d!1262509))

(assert (=> start!410724 d!1262505))

(declare-fun d!1262515 () Bool)

(declare-fun c!728345 () Bool)

(assert (=> d!1262515 (= c!728345 (is-CommentValue!16598 (toValue!21 thiss!2788 x!743833)))))

(declare-fun e!2655204 () BalanceConc!28162)

(assert (=> d!1262515 (= (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743833)) e!2655204)))

(declare-fun b!4276695 () Bool)

(declare-fun seqFromList!5891 (List!47468) BalanceConc!28162)

(assert (=> b!4276695 (= e!2655204 (seqFromList!5891 (value!250403 (toValue!21 thiss!2788 x!743833))))))

(declare-fun b!4276696 () Bool)

(assert (=> b!4276696 (= e!2655204 (BalanceConc!28163 Empty!14326))))

(assert (= (and d!1262515 c!728345) b!4276695))

(assert (= (and d!1262515 (not c!728345)) b!4276696))

(declare-fun m!4872635 () Bool)

(assert (=> b!4276695 m!4872635))

(assert (=> start!410724 d!1262515))

(declare-fun d!1262517 () Bool)

(declare-fun choose!26081 (Int) Bool)

(assert (=> d!1262517 (= (Forall!1665 lambda!131434) (choose!26081 lambda!131434))))

(declare-fun bs!602542 () Bool)

(assert (= bs!602542 d!1262517))

(declare-fun m!4872637 () Bool)

(assert (=> bs!602542 m!4872637))

(assert (=> start!410724 d!1262517))

(assert (=> start!410724 d!1262507))

(assert (=> b!4276625 d!1262499))

(assert (=> bs!602440 d!1262511))

(declare-fun d!1262519 () Bool)

(assert (=> d!1262519 (= (list!17251 x!743835) (list!17254 (c!728340 x!743835)))))

(declare-fun bs!602543 () Bool)

(assert (= bs!602543 d!1262519))

(declare-fun m!4872639 () Bool)

(assert (=> bs!602543 m!4872639))

(assert (=> bs!602440 d!1262519))

(assert (=> b!4276638 d!1262503))

(assert (=> b!4276638 d!1262501))

(assert (=> bs!602435 d!1262519))

(assert (=> bs!602435 d!1262511))

(assert (=> bs!602429 d!1262519))

(assert (=> bs!602429 d!1262505))

(assert (=> b!4276635 d!1262499))

(assert (=> b!4276635 d!1262503))

(assert (=> b!4276632 d!1262501))

(assert (=> b!4276632 d!1262499))

(assert (=> bs!602450 d!1262507))

(assert (=> bs!602450 d!1262519))

(assert (=> b!4276637 d!1262503))

(assert (=> bs!602432 d!1262505))

(assert (=> bs!602432 d!1262519))

(assert (=> b!4276634 d!1262501))

(assert (=> b!4276634 d!1262503))

(declare-fun d!1262521 () Bool)

(declare-fun c!728348 () Bool)

(assert (=> d!1262521 (= c!728348 (is-Node!14326 (c!728340 x!743834)))))

(declare-fun e!2655209 () Bool)

(assert (=> d!1262521 (= (inv!62648 (c!728340 x!743834)) e!2655209)))

(declare-fun b!4276703 () Bool)

(declare-fun inv!62654 (Conc!14326) Bool)

(assert (=> b!4276703 (= e!2655209 (inv!62654 (c!728340 x!743834)))))

(declare-fun b!4276704 () Bool)

(declare-fun e!2655210 () Bool)

(assert (=> b!4276704 (= e!2655209 e!2655210)))

(declare-fun res!1756103 () Bool)

(assert (=> b!4276704 (= res!1756103 (not (is-Leaf!22145 (c!728340 x!743834))))))

(assert (=> b!4276704 (=> res!1756103 e!2655210)))

(declare-fun b!4276705 () Bool)

(declare-fun inv!62655 (Conc!14326) Bool)

(assert (=> b!4276705 (= e!2655210 (inv!62655 (c!728340 x!743834)))))

(assert (= (and d!1262521 c!728348) b!4276703))

(assert (= (and d!1262521 (not c!728348)) b!4276704))

(assert (= (and b!4276704 (not res!1756103)) b!4276705))

(declare-fun m!4872641 () Bool)

(assert (=> b!4276703 m!4872641))

(declare-fun m!4872643 () Bool)

(assert (=> b!4276705 m!4872643))

(assert (=> b!4276623 d!1262521))

(declare-fun d!1262523 () Bool)

(declare-fun c!728349 () Bool)

(assert (=> d!1262523 (= c!728349 (is-Node!14326 (c!728340 x!743835)))))

(declare-fun e!2655211 () Bool)

(assert (=> d!1262523 (= (inv!62648 (c!728340 x!743835)) e!2655211)))

(declare-fun b!4276706 () Bool)

(assert (=> b!4276706 (= e!2655211 (inv!62654 (c!728340 x!743835)))))

(declare-fun b!4276707 () Bool)

(declare-fun e!2655212 () Bool)

(assert (=> b!4276707 (= e!2655211 e!2655212)))

(declare-fun res!1756104 () Bool)

(assert (=> b!4276707 (= res!1756104 (not (is-Leaf!22145 (c!728340 x!743835))))))

(assert (=> b!4276707 (=> res!1756104 e!2655212)))

(declare-fun b!4276708 () Bool)

(assert (=> b!4276708 (= e!2655212 (inv!62655 (c!728340 x!743835)))))

(assert (= (and d!1262523 c!728349) b!4276706))

(assert (= (and d!1262523 (not c!728349)) b!4276707))

(assert (= (and b!4276707 (not res!1756104)) b!4276708))

(declare-fun m!4872645 () Bool)

(assert (=> b!4276706 m!4872645))

(declare-fun m!4872647 () Bool)

(assert (=> b!4276708 m!4872647))

(assert (=> b!4276624 d!1262523))

(assert (=> bs!602439 d!1262511))

(assert (=> b!4276611 d!1262511))

(assert (=> b!4276611 d!1262519))

(declare-fun d!1262525 () Bool)

(declare-fun choose!26082 (Int) Bool)

(assert (=> d!1262525 (= (Forall2!1244 lambda!131437) (choose!26082 lambda!131437))))

(declare-fun bs!602544 () Bool)

(assert (= bs!602544 d!1262525))

(declare-fun m!4872649 () Bool)

(assert (=> bs!602544 m!4872649))

(assert (=> b!4276611 d!1262525))

(declare-fun d!1262527 () Bool)

(assert (=> d!1262527 (= (inv!62649 x!743835) (isBalanced!3868 (c!728340 x!743835)))))

(declare-fun bs!602545 () Bool)

(assert (= bs!602545 d!1262527))

(declare-fun m!4872651 () Bool)

(assert (=> bs!602545 m!4872651))

(assert (=> b!4276611 d!1262527))

(declare-fun d!1262529 () Bool)

(assert (=> d!1262529 (= (inv!62649 x!743834) (isBalanced!3868 (c!728340 x!743834)))))

(declare-fun bs!602546 () Bool)

(assert (= bs!602546 d!1262529))

(declare-fun m!4872653 () Bool)

(assert (=> bs!602546 m!4872653))

(assert (=> b!4276611 d!1262529))

(assert (=> b!4276611 d!1262517))

(declare-fun bs!602547 () Bool)

(declare-fun d!1262531 () Bool)

(assert (= bs!602547 (and d!1262531 start!410724)))

(declare-fun lambda!131468 () Int)

(assert (=> bs!602547 (not (= lambda!131468 lambda!131434))))

(assert (=> d!1262531 true))

(declare-fun order!25017 () Int)

(declare-fun order!25019 () Int)

(declare-fun dynLambda!20312 (Int Int) Int)

(declare-fun dynLambda!20313 (Int Int) Int)

(assert (=> d!1262531 (< (dynLambda!20312 order!25017 lambda!131435) (dynLambda!20313 order!25019 lambda!131468))))

(assert (=> d!1262531 true))

(declare-fun order!25021 () Int)

(declare-fun dynLambda!20314 (Int Int) Int)

(assert (=> d!1262531 (< (dynLambda!20314 order!25021 lambda!131436) (dynLambda!20313 order!25019 lambda!131468))))

(assert (=> d!1262531 (= (semiInverseModEq!3529 lambda!131435 lambda!131436) (Forall!1665 lambda!131468))))

(declare-fun bs!602548 () Bool)

(assert (= bs!602548 d!1262531))

(declare-fun m!4872655 () Bool)

(assert (=> bs!602548 m!4872655))

(assert (=> b!4276611 d!1262531))

(assert (=> bs!602449 d!1262507))

(assert (=> bs!602449 d!1262511))

(assert (=> b!4276628 d!1262509))

(assert (=> b!4276628 d!1262499))

(assert (=> bs!602428 d!1262519))

(assert (=> bs!602444 d!1262519))

(assert (=> bs!602444 d!1262507))

(declare-fun d!1262533 () Bool)

(declare-fun res!1756107 () Bool)

(declare-fun e!2655215 () Bool)

(assert (=> d!1262533 (=> (not res!1756107) (not e!2655215))))

(assert (=> d!1262533 (= res!1756107 (semiInverseModEq!3529 (toChars!10698 (TokenValueInjection!15911 lambda!131436 lambda!131435)) (toValue!10839 (TokenValueInjection!15911 lambda!131436 lambda!131435))))))

(assert (=> d!1262533 (= (inv!62650 (TokenValueInjection!15911 lambda!131436 lambda!131435)) e!2655215)))

(declare-fun b!4276715 () Bool)

(assert (=> b!4276715 (= e!2655215 (equivClasses!3408 (toChars!10698 (TokenValueInjection!15911 lambda!131436 lambda!131435)) (toValue!10839 (TokenValueInjection!15911 lambda!131436 lambda!131435))))))

(assert (= (and d!1262533 res!1756107) b!4276715))

(declare-fun m!4872657 () Bool)

(assert (=> d!1262533 m!4872657))

(declare-fun m!4872659 () Bool)

(assert (=> b!4276715 m!4872659))

(assert (=> b!4276612 d!1262533))

(declare-fun bs!602549 () Bool)

(declare-fun d!1262535 () Bool)

(assert (= bs!602549 (and d!1262535 b!4276611)))

(declare-fun lambda!131471 () Int)

(assert (=> bs!602549 (not (= lambda!131471 lambda!131437))))

(assert (=> d!1262535 true))

(declare-fun order!25023 () Int)

(declare-fun dynLambda!20315 (Int Int) Int)

(assert (=> d!1262535 (< (dynLambda!20314 order!25021 lambda!131436) (dynLambda!20315 order!25023 lambda!131471))))

(assert (=> d!1262535 (= (equivClasses!3408 lambda!131435 lambda!131436) (Forall2!1244 lambda!131471))))

(declare-fun bs!602550 () Bool)

(assert (= bs!602550 d!1262535))

(declare-fun m!4872661 () Bool)

(assert (=> bs!602550 m!4872661))

(assert (=> b!4276612 d!1262535))

(assert (=> b!4276612 d!1262525))

(assert (=> b!4276631 d!1262501))

(assert (=> bs!602431 d!1262505))

(assert (=> b!4276633 d!1262501))

(assert (=> b!4276633 d!1262509))

(assert (=> bs!602442 d!1262511))

(assert (=> bs!602442 d!1262507))

(assert (=> b!4276640 d!1262503))

(assert (=> b!4276640 d!1262509))

(assert (=> b!4276630 d!1262509))

(assert (=> b!4276630 d!1262501))

(assert (=> bs!602448 d!1262507))

(assert (=> b!4276627 d!1262509))

(assert (=> b!4276622 d!1262501))

(assert (=> b!4276622 d!1262499))

(declare-fun d!1262537 () Bool)

(declare-fun c!728350 () Bool)

(assert (=> d!1262537 (= c!728350 (is-Node!14326 (c!728340 x!743833)))))

(declare-fun e!2655218 () Bool)

(assert (=> d!1262537 (= (inv!62648 (c!728340 x!743833)) e!2655218)))

(declare-fun b!4276720 () Bool)

(assert (=> b!4276720 (= e!2655218 (inv!62654 (c!728340 x!743833)))))

(declare-fun b!4276721 () Bool)

(declare-fun e!2655219 () Bool)

(assert (=> b!4276721 (= e!2655218 e!2655219)))

(declare-fun res!1756110 () Bool)

(assert (=> b!4276721 (= res!1756110 (not (is-Leaf!22145 (c!728340 x!743833))))))

(assert (=> b!4276721 (=> res!1756110 e!2655219)))

(declare-fun b!4276722 () Bool)

(assert (=> b!4276722 (= e!2655219 (inv!62655 (c!728340 x!743833)))))

(assert (= (and d!1262537 c!728350) b!4276720))

(assert (= (and d!1262537 (not c!728350)) b!4276721))

(assert (= (and b!4276721 (not res!1756110)) b!4276722))

(declare-fun m!4872663 () Bool)

(assert (=> b!4276720 m!4872663))

(declare-fun m!4872665 () Bool)

(assert (=> b!4276722 m!4872665))

(assert (=> b!4276621 d!1262537))

(assert (=> bs!602426 d!1262507))

(assert (=> bs!602426 d!1262515))

(assert (=> bs!602426 d!1262509))

(assert (=> bs!602426 d!1262505))

(declare-fun b!4276729 () Bool)

(declare-fun e!2655224 () Bool)

(declare-fun tp!1308663 () Bool)

(declare-fun tp!1308664 () Bool)

(assert (=> b!4276729 (= e!2655224 (and (inv!62648 (left!35270 (c!728340 x!743834))) tp!1308663 (inv!62648 (right!35600 (c!728340 x!743834))) tp!1308664))))

(declare-fun b!4276730 () Bool)

(declare-fun inv!62656 (IArray!28657) Bool)

(assert (=> b!4276730 (= e!2655224 (inv!62656 (xs!17632 (c!728340 x!743834))))))

(assert (=> b!4276623 (= tp!1308648 (and (inv!62648 (c!728340 x!743834)) e!2655224))))

(assert (= (and b!4276623 (is-Node!14326 (c!728340 x!743834))) b!4276729))

(assert (= (and b!4276623 (is-Leaf!22145 (c!728340 x!743834))) b!4276730))

(declare-fun m!4872667 () Bool)

(assert (=> b!4276729 m!4872667))

(declare-fun m!4872669 () Bool)

(assert (=> b!4276729 m!4872669))

(declare-fun m!4872671 () Bool)

(assert (=> b!4276730 m!4872671))

(assert (=> b!4276623 m!4872547))

(declare-fun tp!1308665 () Bool)

(declare-fun e!2655226 () Bool)

(declare-fun tp!1308666 () Bool)

(declare-fun b!4276731 () Bool)

(assert (=> b!4276731 (= e!2655226 (and (inv!62648 (left!35270 (c!728340 x!743835))) tp!1308665 (inv!62648 (right!35600 (c!728340 x!743835))) tp!1308666))))

(declare-fun b!4276732 () Bool)

(assert (=> b!4276732 (= e!2655226 (inv!62656 (xs!17632 (c!728340 x!743835))))))

(assert (=> b!4276624 (= tp!1308649 (and (inv!62648 (c!728340 x!743835)) e!2655226))))

(assert (= (and b!4276624 (is-Node!14326 (c!728340 x!743835))) b!4276731))

(assert (= (and b!4276624 (is-Leaf!22145 (c!728340 x!743835))) b!4276732))

(declare-fun m!4872673 () Bool)

(assert (=> b!4276731 m!4872673))

(declare-fun m!4872675 () Bool)

(assert (=> b!4276731 m!4872675))

(declare-fun m!4872677 () Bool)

(assert (=> b!4276732 m!4872677))

(assert (=> b!4276624 m!4872549))

(declare-fun e!2655228 () Bool)

(declare-fun b!4276733 () Bool)

(declare-fun tp!1308668 () Bool)

(declare-fun tp!1308667 () Bool)

(assert (=> b!4276733 (= e!2655228 (and (inv!62648 (left!35270 (c!728340 x!743833))) tp!1308667 (inv!62648 (right!35600 (c!728340 x!743833))) tp!1308668))))

(declare-fun b!4276734 () Bool)

(assert (=> b!4276734 (= e!2655228 (inv!62656 (xs!17632 (c!728340 x!743833))))))

(assert (=> b!4276621 (= tp!1308647 (and (inv!62648 (c!728340 x!743833)) e!2655228))))

(assert (= (and b!4276621 (is-Node!14326 (c!728340 x!743833))) b!4276733))

(assert (= (and b!4276621 (is-Leaf!22145 (c!728340 x!743833))) b!4276734))

(declare-fun m!4872679 () Bool)

(assert (=> b!4276733 m!4872679))

(declare-fun m!4872681 () Bool)

(assert (=> b!4276733 m!4872681))

(declare-fun m!4872683 () Bool)

(assert (=> b!4276734 m!4872683))

(assert (=> b!4276621 m!4872523))

(push 1)

(assert (not d!1262509))

(assert (not d!1262513))

(assert (not b!4276703))

(assert (not d!1262499))

(assert (not d!1262531))

(assert (not b!4276624))

(assert (not b!4276621))

(assert (not d!1262527))

(assert (not b!4276729))

(assert (not d!1262505))

(assert (not d!1262525))

(assert (not b!4276708))

(assert (not b!4276695))

(assert (not d!1262503))

(assert (not d!1262535))

(assert (not b!4276730))

(assert (not d!1262507))

(assert (not b!4276706))

(assert (not d!1262519))

(assert (not d!1262517))

(assert (not d!1262529))

(assert (not b!4276722))

(assert (not d!1262511))

(assert (not b!4276731))

(assert (not d!1262501))

(assert (not b!4276734))

(assert (not b!4276733))

(assert (not b!4276705))

(assert (not b!4276732))

(assert (not b!4276623))

(assert (not b!4276715))

(assert (not b!4276720))

(assert (not d!1262533))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

