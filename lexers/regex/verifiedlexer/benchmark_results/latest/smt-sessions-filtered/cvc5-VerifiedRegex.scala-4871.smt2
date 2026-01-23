; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!249782 () Bool)

(assert start!249782)

(assert (=> start!249782 true))

(declare-fun b!2580944 () Bool)

(assert (=> b!2580944 true))

(assert (=> b!2580944 true))

(assert (=> b!2580944 true))

(declare-fun b!2580953 () Bool)

(declare-fun e!1628565 () Bool)

(declare-datatypes ((List!29810 0))(
  ( (Nil!29710) (Cons!29710 (h!35130 (_ BitVec 16)) (t!211719 List!29810)) )
))
(declare-datatypes ((IArray!18545 0))(
  ( (IArray!18546 (innerList!9330 List!29810)) )
))
(declare-datatypes ((Conc!9270 0))(
  ( (Node!9270 (left!22639 Conc!9270) (right!22969 Conc!9270) (csize!18770 Int) (cheight!9481 Int)) (Leaf!14142 (xs!12254 IArray!18545) (csize!18771 Int)) (Empty!9270) )
))
(declare-datatypes ((BalanceConc!18154 0))(
  ( (BalanceConc!18155 (c!416023 Conc!9270)) )
))
(declare-fun x!464871 () BalanceConc!18154)

(declare-fun tp!819441 () Bool)

(declare-fun inv!40094 (Conc!9270) Bool)

(assert (=> b!2580953 (= e!1628565 (and (inv!40094 (c!416023 x!464871)) tp!819441))))

(declare-datatypes ((KeywordValueInjection!180 0))(
  ( (KeywordValueInjection!181) )
))
(declare-fun thiss!3262 () KeywordValueInjection!180)

(declare-fun inst!1504 () Bool)

(declare-fun inv!40095 (BalanceConc!18154) Bool)

(declare-fun list!11221 (BalanceConc!18154) List!29810)

(declare-datatypes ((TokenValue!4726 0))(
  ( (FloatLiteralValue!9452 (text!33527 List!29810)) (TokenValueExt!4725 (__x!19291 Int)) (Broken!23630 (value!145593 List!29810)) (Object!4825) (End!4726) (Def!4726) (Underscore!4726) (Match!4726) (Else!4726) (Error!4726) (Case!4726) (If!4726) (Extends!4726) (Abstract!4726) (Class!4726) (Val!4726) (DelimiterValue!9452 (del!4786 List!29810)) (KeywordValue!4732 (value!145594 List!29810)) (CommentValue!9452 (value!145595 List!29810)) (WhitespaceValue!9452 (value!145596 List!29810)) (IndentationValue!4726 (value!145597 List!29810)) (String!33043) (Int32!4726) (Broken!23631 (value!145598 List!29810)) (Boolean!4727) (Unit!43546) (OperatorValue!4729 (op!4786 List!29810)) (IdentifierValue!9452 (value!145599 List!29810)) (IdentifierValue!9453 (value!145600 List!29810)) (WhitespaceValue!9453 (value!145601 List!29810)) (True!9452) (False!9452) (Broken!23632 (value!145602 List!29810)) (Broken!23633 (value!145603 List!29810)) (True!9453) (RightBrace!4726) (RightBracket!4726) (Colon!4726) (Null!4726) (Comma!4726) (LeftBracket!4726) (False!9453) (LeftBrace!4726) (ImaginaryLiteralValue!4726 (text!33528 List!29810)) (StringLiteralValue!14178 (value!145604 List!29810)) (EOFValue!4726 (value!145605 List!29810)) (IdentValue!4726 (value!145606 List!29810)) (DelimiterValue!9453 (value!145607 List!29810)) (DedentValue!4726 (value!145608 List!29810)) (NewLineValue!4726 (value!145609 List!29810)) (IntegerValue!14178 (value!145610 (_ BitVec 32)) (text!33529 List!29810)) (IntegerValue!14179 (value!145611 Int) (text!33530 List!29810)) (Times!4726) (Or!4726) (Equal!4726) (Minus!4726) (Broken!23634 (value!145612 List!29810)) (And!4726) (Div!4726) (LessEqual!4726) (Mod!4726) (Concat!12380) (Not!4726) (Plus!4726) (SpaceValue!4726 (value!145613 List!29810)) (IntegerValue!14180 (value!145614 Int) (text!33531 List!29810)) (StringLiteralValue!14179 (text!33532 List!29810)) (FloatLiteralValue!9453 (text!33533 List!29810)) (BytesLiteralValue!4726 (value!145615 List!29810)) (CommentValue!9453 (value!145616 List!29810)) (StringLiteralValue!14180 (value!145617 List!29810)) (ErrorTokenValue!4726 (msg!4787 List!29810)) )
))
(declare-fun toCharacters!4 (KeywordValueInjection!180 TokenValue!4726) BalanceConc!18154)

(declare-fun toValue!11 (KeywordValueInjection!180 BalanceConc!18154) TokenValue!4726)

(assert (=> start!249782 (= inst!1504 (=> (and (inv!40095 x!464871) e!1628565) (= (list!11221 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871))) (list!11221 x!464871))))))

(assert (= start!249782 b!2580953))

(declare-fun m!2917453 () Bool)

(assert (=> b!2580953 m!2917453))

(declare-fun m!2917455 () Bool)

(assert (=> start!249782 m!2917455))

(declare-fun m!2917457 () Bool)

(assert (=> start!249782 m!2917457))

(declare-fun m!2917459 () Bool)

(assert (=> start!249782 m!2917459))

(declare-fun m!2917461 () Bool)

(assert (=> start!249782 m!2917461))

(declare-fun m!2917463 () Bool)

(assert (=> start!249782 m!2917463))

(assert (=> start!249782 m!2917461))

(assert (=> start!249782 m!2917457))

(declare-fun res!1085495 () Bool)

(declare-fun e!1628567 () Bool)

(assert (=> b!2580944 (=> res!1085495 e!1628567)))

(declare-fun x!464872 () BalanceConc!18154)

(declare-fun x!464873 () BalanceConc!18154)

(assert (=> b!2580944 (= res!1085495 (not (= (list!11221 x!464872) (list!11221 x!464873))))))

(declare-fun inst!1505 () Bool)

(declare-fun e!1628568 () Bool)

(declare-fun e!1628566 () Bool)

(assert (=> b!2580944 (= inst!1505 (=> (and (inv!40095 x!464872) e!1628568 (inv!40095 x!464873) e!1628566) e!1628567))))

(declare-fun b!2580954 () Bool)

(assert (=> b!2580954 (= e!1628567 (= (toValue!11 thiss!3262 x!464872) (toValue!11 thiss!3262 x!464873)))))

(declare-fun b!2580955 () Bool)

(declare-fun tp!819442 () Bool)

(assert (=> b!2580955 (= e!1628568 (and (inv!40094 (c!416023 x!464872)) tp!819442))))

(declare-fun b!2580956 () Bool)

(declare-fun tp!819443 () Bool)

(assert (=> b!2580956 (= e!1628566 (and (inv!40094 (c!416023 x!464873)) tp!819443))))

(assert (= (and b!2580944 (not res!1085495)) b!2580954))

(assert (= b!2580944 b!2580955))

(assert (= b!2580944 b!2580956))

(declare-fun m!2917465 () Bool)

(assert (=> b!2580944 m!2917465))

(declare-fun m!2917467 () Bool)

(assert (=> b!2580944 m!2917467))

(declare-fun m!2917469 () Bool)

(assert (=> b!2580944 m!2917469))

(declare-fun m!2917471 () Bool)

(assert (=> b!2580944 m!2917471))

(declare-fun m!2917473 () Bool)

(assert (=> b!2580954 m!2917473))

(declare-fun m!2917475 () Bool)

(assert (=> b!2580954 m!2917475))

(declare-fun m!2917477 () Bool)

(assert (=> b!2580955 m!2917477))

(declare-fun m!2917479 () Bool)

(assert (=> b!2580956 m!2917479))

(declare-fun bs!471220 () Bool)

(declare-fun neg-inst!1504 () Bool)

(declare-fun s!228588 () Bool)

(assert (= bs!471220 (and neg-inst!1504 s!228588)))

(assert (=> bs!471220 (=> true (= (list!11221 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871))) (list!11221 x!464871)))))

(assert (=> m!2917461 m!2917457))

(assert (=> m!2917461 m!2917459))

(assert (=> m!2917461 m!2917463))

(assert (=> m!2917461 s!228588))

(assert (=> m!2917463 s!228588))

(declare-fun bs!471221 () Bool)

(assert (= bs!471221 (and neg-inst!1504 start!249782)))

(assert (=> bs!471221 (= true inst!1504)))

(declare-fun bs!471222 () Bool)

(declare-fun neg-inst!1505 () Bool)

(declare-fun s!228590 () Bool)

(assert (= bs!471222 (and neg-inst!1505 s!228590)))

(declare-fun res!1085496 () Bool)

(declare-fun e!1628569 () Bool)

(assert (=> bs!471222 (=> res!1085496 e!1628569)))

(assert (=> bs!471222 (= res!1085496 (not (= (list!11221 x!464871) (list!11221 x!464871))))))

(assert (=> bs!471222 (=> true e!1628569)))

(declare-fun b!2580957 () Bool)

(assert (=> b!2580957 (= e!1628569 (= (toValue!11 thiss!3262 x!464871) (toValue!11 thiss!3262 x!464871)))))

(assert (= (and bs!471222 (not res!1085496)) b!2580957))

(assert (=> m!2917461 m!2917463))

(assert (=> m!2917461 m!2917463))

(assert (=> m!2917461 s!228590))

(assert (=> m!2917461 s!228590))

(declare-fun bs!471223 () Bool)

(assert (= bs!471223 (and m!2917463 m!2917461)))

(assert (=> bs!471223 s!228590))

(assert (=> m!2917463 s!228590))

(assert (=> bs!471223 s!228590))

(assert (=> m!2917463 s!228590))

(declare-fun bs!471224 () Bool)

(declare-fun s!228592 () Bool)

(assert (= bs!471224 (and neg-inst!1505 s!228592)))

(declare-fun res!1085497 () Bool)

(declare-fun e!1628570 () Bool)

(assert (=> bs!471224 (=> res!1085497 e!1628570)))

(assert (=> bs!471224 (= res!1085497 (not (= (list!11221 x!464871) (list!11221 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871))))))))

(assert (=> bs!471224 (=> true e!1628570)))

(declare-fun b!2580958 () Bool)

(assert (=> b!2580958 (= e!1628570 (= (toValue!11 thiss!3262 x!464871) (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871)))))))

(assert (= (and bs!471224 (not res!1085497)) b!2580958))

(declare-fun bs!471225 () Bool)

(assert (= bs!471225 (and m!2917459 m!2917461 m!2917463)))

(assert (=> bs!471225 m!2917463))

(assert (=> bs!471225 m!2917459))

(assert (=> bs!471225 s!228592))

(declare-fun bs!471226 () Bool)

(declare-fun s!228594 () Bool)

(assert (= bs!471226 (and neg-inst!1505 s!228594)))

(declare-fun res!1085498 () Bool)

(declare-fun e!1628571 () Bool)

(assert (=> bs!471226 (=> res!1085498 e!1628571)))

(assert (=> bs!471226 (= res!1085498 (not (= (list!11221 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871))) (list!11221 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871))))))))

(assert (=> bs!471226 (=> true e!1628571)))

(declare-fun b!2580959 () Bool)

(assert (=> b!2580959 (= e!1628571 (= (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871))) (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871)))))))

(assert (= (and bs!471226 (not res!1085498)) b!2580959))

(assert (=> m!2917459 s!228594))

(declare-fun bs!471227 () Bool)

(declare-fun s!228596 () Bool)

(assert (= bs!471227 (and neg-inst!1505 s!228596)))

(declare-fun res!1085499 () Bool)

(declare-fun e!1628572 () Bool)

(assert (=> bs!471227 (=> res!1085499 e!1628572)))

(assert (=> bs!471227 (= res!1085499 (not (= (list!11221 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871))) (list!11221 x!464871))))))

(assert (=> bs!471227 (=> true e!1628572)))

(declare-fun b!2580960 () Bool)

(assert (=> b!2580960 (= e!1628572 (= (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871))) (toValue!11 thiss!3262 x!464871)))))

(assert (= (and bs!471227 (not res!1085499)) b!2580960))

(assert (=> bs!471225 m!2917459))

(assert (=> bs!471225 m!2917463))

(assert (=> bs!471225 s!228596))

(assert (=> m!2917459 s!228594))

(declare-fun bs!471228 () Bool)

(declare-fun s!228598 () Bool)

(assert (= bs!471228 (and neg-inst!1505 s!228598)))

(declare-fun res!1085500 () Bool)

(declare-fun e!1628573 () Bool)

(assert (=> bs!471228 (=> res!1085500 e!1628573)))

(assert (=> bs!471228 (= res!1085500 (not (= (list!11221 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871))) (list!11221 x!464873))))))

(assert (=> bs!471228 (=> true e!1628573)))

(declare-fun b!2580961 () Bool)

(assert (=> b!2580961 (= e!1628573 (= (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871))) (toValue!11 thiss!3262 x!464873)))))

(assert (= (and bs!471228 (not res!1085500)) b!2580961))

(declare-fun bs!471229 () Bool)

(assert (= bs!471229 (and m!2917467 m!2917459)))

(assert (=> bs!471229 m!2917459))

(assert (=> bs!471229 m!2917467))

(assert (=> bs!471229 s!228598))

(declare-fun bs!471230 () Bool)

(declare-fun s!228600 () Bool)

(assert (= bs!471230 (and neg-inst!1505 s!228600)))

(declare-fun res!1085501 () Bool)

(declare-fun e!1628574 () Bool)

(assert (=> bs!471230 (=> res!1085501 e!1628574)))

(assert (=> bs!471230 (= res!1085501 (not (= (list!11221 x!464871) (list!11221 x!464873))))))

(assert (=> bs!471230 (=> true e!1628574)))

(declare-fun b!2580962 () Bool)

(assert (=> b!2580962 (= e!1628574 (= (toValue!11 thiss!3262 x!464871) (toValue!11 thiss!3262 x!464873)))))

(assert (= (and bs!471230 (not res!1085501)) b!2580962))

(declare-fun bs!471231 () Bool)

(assert (= bs!471231 (and m!2917467 m!2917461 m!2917463)))

(assert (=> bs!471231 m!2917463))

(assert (=> bs!471231 m!2917467))

(assert (=> bs!471231 s!228600))

(declare-fun bs!471232 () Bool)

(declare-fun s!228602 () Bool)

(assert (= bs!471232 (and neg-inst!1505 s!228602)))

(declare-fun res!1085502 () Bool)

(declare-fun e!1628575 () Bool)

(assert (=> bs!471232 (=> res!1085502 e!1628575)))

(assert (=> bs!471232 (= res!1085502 (not (= (list!11221 x!464873) (list!11221 x!464873))))))

(assert (=> bs!471232 (=> true e!1628575)))

(declare-fun b!2580963 () Bool)

(assert (=> b!2580963 (= e!1628575 (= (toValue!11 thiss!3262 x!464873) (toValue!11 thiss!3262 x!464873)))))

(assert (= (and bs!471232 (not res!1085502)) b!2580963))

(assert (=> m!2917467 s!228602))

(declare-fun bs!471233 () Bool)

(declare-fun s!228604 () Bool)

(assert (= bs!471233 (and neg-inst!1505 s!228604)))

(declare-fun res!1085503 () Bool)

(declare-fun e!1628576 () Bool)

(assert (=> bs!471233 (=> res!1085503 e!1628576)))

(assert (=> bs!471233 (= res!1085503 (not (= (list!11221 x!464873) (list!11221 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871))))))))

(assert (=> bs!471233 (=> true e!1628576)))

(declare-fun b!2580964 () Bool)

(assert (=> b!2580964 (= e!1628576 (= (toValue!11 thiss!3262 x!464873) (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871)))))))

(assert (= (and bs!471233 (not res!1085503)) b!2580964))

(assert (=> bs!471229 m!2917467))

(assert (=> bs!471229 m!2917459))

(assert (=> bs!471229 s!228604))

(declare-fun bs!471234 () Bool)

(declare-fun s!228606 () Bool)

(assert (= bs!471234 (and neg-inst!1505 s!228606)))

(declare-fun res!1085504 () Bool)

(declare-fun e!1628577 () Bool)

(assert (=> bs!471234 (=> res!1085504 e!1628577)))

(assert (=> bs!471234 (= res!1085504 (not (= (list!11221 x!464873) (list!11221 x!464871))))))

(assert (=> bs!471234 (=> true e!1628577)))

(declare-fun b!2580965 () Bool)

(assert (=> b!2580965 (= e!1628577 (= (toValue!11 thiss!3262 x!464873) (toValue!11 thiss!3262 x!464871)))))

(assert (= (and bs!471234 (not res!1085504)) b!2580965))

(assert (=> bs!471231 m!2917467))

(assert (=> bs!471231 m!2917463))

(assert (=> bs!471231 s!228606))

(assert (=> m!2917467 s!228602))

(declare-fun bs!471235 () Bool)

(declare-fun s!228608 () Bool)

(assert (= bs!471235 (and neg-inst!1505 s!228608)))

(declare-fun res!1085505 () Bool)

(declare-fun e!1628578 () Bool)

(assert (=> bs!471235 (=> res!1085505 e!1628578)))

(assert (=> bs!471235 (= res!1085505 (not (= (list!11221 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871))) (list!11221 x!464872))))))

(assert (=> bs!471235 (=> true e!1628578)))

(declare-fun b!2580966 () Bool)

(assert (=> b!2580966 (= e!1628578 (= (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871))) (toValue!11 thiss!3262 x!464872)))))

(assert (= (and bs!471235 (not res!1085505)) b!2580966))

(declare-fun bs!471236 () Bool)

(assert (= bs!471236 (and m!2917473 m!2917459)))

(assert (=> bs!471236 m!2917459))

(assert (=> bs!471236 m!2917465))

(assert (=> bs!471236 s!228608))

(declare-fun bs!471237 () Bool)

(declare-fun s!228610 () Bool)

(assert (= bs!471237 (and neg-inst!1505 s!228610)))

(declare-fun res!1085506 () Bool)

(declare-fun e!1628579 () Bool)

(assert (=> bs!471237 (=> res!1085506 e!1628579)))

(assert (=> bs!471237 (= res!1085506 (not (= (list!11221 x!464873) (list!11221 x!464872))))))

(assert (=> bs!471237 (=> true e!1628579)))

(declare-fun b!2580967 () Bool)

(assert (=> b!2580967 (= e!1628579 (= (toValue!11 thiss!3262 x!464873) (toValue!11 thiss!3262 x!464872)))))

(assert (= (and bs!471237 (not res!1085506)) b!2580967))

(declare-fun bs!471238 () Bool)

(assert (= bs!471238 (and m!2917473 m!2917467)))

(assert (=> bs!471238 m!2917467))

(assert (=> bs!471238 m!2917465))

(assert (=> bs!471238 s!228610))

(declare-fun bs!471239 () Bool)

(declare-fun s!228612 () Bool)

(assert (= bs!471239 (and neg-inst!1505 s!228612)))

(declare-fun res!1085507 () Bool)

(declare-fun e!1628580 () Bool)

(assert (=> bs!471239 (=> res!1085507 e!1628580)))

(assert (=> bs!471239 (= res!1085507 (not (= (list!11221 x!464871) (list!11221 x!464872))))))

(assert (=> bs!471239 (=> true e!1628580)))

(declare-fun b!2580968 () Bool)

(assert (=> b!2580968 (= e!1628580 (= (toValue!11 thiss!3262 x!464871) (toValue!11 thiss!3262 x!464872)))))

(assert (= (and bs!471239 (not res!1085507)) b!2580968))

(declare-fun bs!471240 () Bool)

(assert (= bs!471240 (and m!2917473 m!2917461 m!2917463)))

(assert (=> bs!471240 m!2917463))

(assert (=> bs!471240 m!2917465))

(assert (=> bs!471240 s!228612))

(declare-fun bs!471241 () Bool)

(declare-fun s!228614 () Bool)

(assert (= bs!471241 (and neg-inst!1505 s!228614)))

(declare-fun res!1085508 () Bool)

(declare-fun e!1628581 () Bool)

(assert (=> bs!471241 (=> res!1085508 e!1628581)))

(assert (=> bs!471241 (= res!1085508 (not (= (list!11221 x!464872) (list!11221 x!464872))))))

(assert (=> bs!471241 (=> true e!1628581)))

(declare-fun b!2580969 () Bool)

(assert (=> b!2580969 (= e!1628581 (= (toValue!11 thiss!3262 x!464872) (toValue!11 thiss!3262 x!464872)))))

(assert (= (and bs!471241 (not res!1085508)) b!2580969))

(assert (=> m!2917473 m!2917465))

(assert (=> m!2917473 m!2917465))

(assert (=> m!2917473 s!228614))

(declare-fun bs!471242 () Bool)

(declare-fun s!228616 () Bool)

(assert (= bs!471242 (and neg-inst!1505 s!228616)))

(declare-fun res!1085509 () Bool)

(declare-fun e!1628582 () Bool)

(assert (=> bs!471242 (=> res!1085509 e!1628582)))

(assert (=> bs!471242 (= res!1085509 (not (= (list!11221 x!464872) (list!11221 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871))))))))

(assert (=> bs!471242 (=> true e!1628582)))

(declare-fun b!2580970 () Bool)

(assert (=> b!2580970 (= e!1628582 (= (toValue!11 thiss!3262 x!464872) (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871)))))))

(assert (= (and bs!471242 (not res!1085509)) b!2580970))

(assert (=> bs!471236 m!2917465))

(assert (=> bs!471236 m!2917459))

(assert (=> bs!471236 s!228616))

(declare-fun bs!471243 () Bool)

(declare-fun s!228618 () Bool)

(assert (= bs!471243 (and neg-inst!1505 s!228618)))

(declare-fun res!1085510 () Bool)

(declare-fun e!1628583 () Bool)

(assert (=> bs!471243 (=> res!1085510 e!1628583)))

(assert (=> bs!471243 (= res!1085510 (not (= (list!11221 x!464872) (list!11221 x!464873))))))

(assert (=> bs!471243 (=> true e!1628583)))

(declare-fun b!2580971 () Bool)

(assert (=> b!2580971 (= e!1628583 (= (toValue!11 thiss!3262 x!464872) (toValue!11 thiss!3262 x!464873)))))

(assert (= (and bs!471243 (not res!1085510)) b!2580971))

(assert (=> bs!471238 m!2917465))

(assert (=> bs!471238 m!2917467))

(assert (=> bs!471238 s!228618))

(declare-fun bs!471244 () Bool)

(declare-fun s!228620 () Bool)

(assert (= bs!471244 (and neg-inst!1505 s!228620)))

(declare-fun res!1085511 () Bool)

(declare-fun e!1628584 () Bool)

(assert (=> bs!471244 (=> res!1085511 e!1628584)))

(assert (=> bs!471244 (= res!1085511 (not (= (list!11221 x!464872) (list!11221 x!464871))))))

(assert (=> bs!471244 (=> true e!1628584)))

(declare-fun b!2580972 () Bool)

(assert (=> b!2580972 (= e!1628584 (= (toValue!11 thiss!3262 x!464872) (toValue!11 thiss!3262 x!464871)))))

(assert (= (and bs!471244 (not res!1085511)) b!2580972))

(assert (=> bs!471240 m!2917465))

(assert (=> bs!471240 m!2917463))

(assert (=> bs!471240 s!228620))

(assert (=> m!2917473 s!228614))

(declare-fun bs!471245 () Bool)

(assert (= bs!471245 (and m!2917475 m!2917473)))

(assert (=> bs!471245 s!228618))

(assert (=> m!2917475 s!228602))

(declare-fun bs!471246 () Bool)

(assert (= bs!471246 (and m!2917475 m!2917467)))

(assert (=> bs!471246 s!228602))

(declare-fun bs!471247 () Bool)

(assert (= bs!471247 (and m!2917475 m!2917461 m!2917463)))

(assert (=> bs!471247 s!228600))

(declare-fun bs!471248 () Bool)

(assert (= bs!471248 (and m!2917475 m!2917459)))

(assert (=> bs!471248 s!228598))

(assert (=> bs!471245 s!228610))

(assert (=> m!2917475 s!228602))

(assert (=> bs!471246 s!228602))

(assert (=> bs!471247 s!228606))

(assert (=> bs!471248 s!228604))

(declare-fun bs!471249 () Bool)

(assert (= bs!471249 (and m!2917465 m!2917473)))

(assert (=> bs!471249 s!228614))

(declare-fun bs!471250 () Bool)

(assert (= bs!471250 (and m!2917465 m!2917461 m!2917463)))

(assert (=> bs!471250 s!228612))

(declare-fun bs!471251 () Bool)

(assert (= bs!471251 (and m!2917465 m!2917467 m!2917475)))

(assert (=> bs!471251 s!228610))

(declare-fun bs!471252 () Bool)

(assert (= bs!471252 (and m!2917465 m!2917459)))

(assert (=> bs!471252 s!228608))

(assert (=> m!2917465 s!228614))

(assert (=> bs!471249 s!228614))

(assert (=> m!2917465 s!228614))

(assert (=> bs!471252 s!228616))

(assert (=> bs!471251 s!228618))

(assert (=> bs!471250 s!228620))

(declare-fun bs!471253 () Bool)

(assert (= bs!471253 (and neg-inst!1505 b!2580944)))

(assert (=> bs!471253 (= true inst!1505)))

(declare-fun res!1085494 () Bool)

(declare-fun e!1628564 () Bool)

(assert (=> start!249782 (=> res!1085494 e!1628564)))

(declare-fun lambda!95597 () Int)

(declare-fun Forall!1161 (Int) Bool)

(assert (=> start!249782 (= res!1085494 (not (Forall!1161 lambda!95597)))))

(assert (=> start!249782 (= (Forall!1161 lambda!95597) inst!1504)))

(assert (=> start!249782 (not e!1628564)))

(assert (=> start!249782 true))

(declare-fun lambda!95600 () Int)

(declare-fun Forall2!760 (Int) Bool)

(assert (=> b!2580944 (= e!1628564 (Forall2!760 lambda!95600))))

(assert (=> b!2580944 (= (Forall2!760 lambda!95600) inst!1505)))

(declare-fun lambda!95598 () Int)

(declare-fun lambda!95599 () Int)

(declare-fun semiInverseModEq!1877 (Int Int) Bool)

(assert (=> b!2580944 (= (semiInverseModEq!1877 lambda!95598 lambda!95599) (Forall!1161 lambda!95597))))

(assert (= neg-inst!1504 inst!1504))

(assert (= (and start!249782 (not res!1085494)) b!2580944))

(assert (= neg-inst!1505 inst!1505))

(declare-fun m!2917481 () Bool)

(assert (=> start!249782 m!2917481))

(assert (=> start!249782 m!2917481))

(declare-fun m!2917483 () Bool)

(assert (=> b!2580944 m!2917483))

(assert (=> b!2580944 m!2917483))

(declare-fun m!2917485 () Bool)

(assert (=> b!2580944 m!2917485))

(assert (=> b!2580944 m!2917481))

(push 1)

(assert (not b!2580954))

(assert (not b!2580957))

(assert (not start!249782))

(assert (not bs!471220))

(assert (not bs!471226))

(assert (not b!2580961))

(assert (not b!2580972))

(assert (not bs!471224))

(assert (not bs!471244))

(assert (not bs!471237))

(assert (not b!2580962))

(assert (not b!2580967))

(assert (not bs!471227))

(assert (not b!2580959))

(assert (not bs!471239))

(assert (not bs!471222))

(assert (not b!2580958))

(assert (not b!2580964))

(assert (not bs!471241))

(assert (not b!2580944))

(assert (not b!2580968))

(assert (not bs!471243))

(assert (not bs!471234))

(assert (not bs!471232))

(assert (not b!2580965))

(assert (not b!2580969))

(assert (not b!2580960))

(assert (not b!2580970))

(assert (not bs!471233))

(assert (not b!2580956))

(assert (not bs!471228))

(assert (not bs!471235))

(assert (not b!2580966))

(assert (not b!2580963))

(assert (not bs!471230))

(assert (not bs!471242))

(assert (not b!2580953))

(assert (not b!2580955))

(assert (not b!2580971))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!730924 () Bool)

(declare-fun lt!908014 () List!29810)

(declare-fun efficientList!391 (BalanceConc!18154) List!29810)

(assert (=> d!730924 (= lt!908014 (efficientList!391 x!464873))))

(assert (=> d!730924 (= (toValue!11 thiss!3262 x!464873) (ite (= lt!908014 (Cons!29710 #x006E (Cons!29710 #x0075 (Cons!29710 #x006C (Cons!29710 #x006C Nil!29710))))) Null!4726 (ite (= lt!908014 (Cons!29710 #x0074 (Cons!29710 #x0072 (Cons!29710 #x0075 (Cons!29710 #x0065 Nil!29710))))) True!9453 (ite (= lt!908014 (Cons!29710 #x0066 (Cons!29710 #x0061 (Cons!29710 #x006C (Cons!29710 #x0073 (Cons!29710 #x0065 Nil!29710)))))) False!9453 (ite (= lt!908014 (Cons!29710 #x003A Nil!29710)) Colon!4726 (ite (= lt!908014 (Cons!29710 #x002C Nil!29710)) Comma!4726 (ite (= lt!908014 (Cons!29710 #x007B Nil!29710)) LeftBrace!4726 (ite (= lt!908014 (Cons!29710 #x007D Nil!29710)) RightBrace!4726 (ite (= lt!908014 (Cons!29710 #x005B Nil!29710)) LeftBracket!4726 (ite (= lt!908014 (Cons!29710 #x005D Nil!29710)) RightBracket!4726 (Broken!23633 lt!908014)))))))))))))

(declare-fun bs!471289 () Bool)

(assert (= bs!471289 d!730924))

(declare-fun m!2917521 () Bool)

(assert (=> bs!471289 m!2917521))

(assert (=> b!2580964 d!730924))

(declare-fun d!730928 () Bool)

(declare-fun lt!908015 () List!29810)

(assert (=> d!730928 (= lt!908015 (efficientList!391 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871))))))

(assert (=> d!730928 (= (toValue!11 thiss!3262 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871))) (ite (= lt!908015 (Cons!29710 #x006E (Cons!29710 #x0075 (Cons!29710 #x006C (Cons!29710 #x006C Nil!29710))))) Null!4726 (ite (= lt!908015 (Cons!29710 #x0074 (Cons!29710 #x0072 (Cons!29710 #x0075 (Cons!29710 #x0065 Nil!29710))))) True!9453 (ite (= lt!908015 (Cons!29710 #x0066 (Cons!29710 #x0061 (Cons!29710 #x006C (Cons!29710 #x0073 (Cons!29710 #x0065 Nil!29710)))))) False!9453 (ite (= lt!908015 (Cons!29710 #x003A Nil!29710)) Colon!4726 (ite (= lt!908015 (Cons!29710 #x002C Nil!29710)) Comma!4726 (ite (= lt!908015 (Cons!29710 #x007B Nil!29710)) LeftBrace!4726 (ite (= lt!908015 (Cons!29710 #x007D Nil!29710)) RightBrace!4726 (ite (= lt!908015 (Cons!29710 #x005B Nil!29710)) LeftBracket!4726 (ite (= lt!908015 (Cons!29710 #x005D Nil!29710)) RightBracket!4726 (Broken!23633 lt!908015)))))))))))))

(declare-fun bs!471290 () Bool)

(assert (= bs!471290 d!730928))

(assert (=> bs!471290 m!2917457))

(declare-fun m!2917523 () Bool)

(assert (=> bs!471290 m!2917523))

(assert (=> b!2580964 d!730928))

(declare-fun d!730930 () Bool)

(declare-fun list!11223 (Conc!9270) List!29810)

(assert (=> d!730930 (= (list!11221 x!464872) (list!11223 (c!416023 x!464872)))))

(declare-fun bs!471291 () Bool)

(assert (= bs!471291 d!730930))

(declare-fun m!2917525 () Bool)

(assert (=> bs!471291 m!2917525))

(assert (=> bs!471243 d!730930))

(declare-fun d!730932 () Bool)

(assert (=> d!730932 (= (list!11221 x!464873) (list!11223 (c!416023 x!464873)))))

(declare-fun bs!471292 () Bool)

(assert (= bs!471292 d!730932))

(declare-fun m!2917527 () Bool)

(assert (=> bs!471292 m!2917527))

(assert (=> bs!471243 d!730932))

(declare-fun d!730934 () Bool)

(assert (=> d!730934 (= (list!11221 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871))) (list!11223 (c!416023 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871)))))))

(declare-fun bs!471293 () Bool)

(assert (= bs!471293 d!730934))

(declare-fun m!2917529 () Bool)

(assert (=> bs!471293 m!2917529))

(assert (=> bs!471228 d!730934))

(assert (=> bs!471228 d!730932))

(assert (=> b!2580967 d!730924))

(declare-fun d!730936 () Bool)

(declare-fun lt!908016 () List!29810)

(assert (=> d!730936 (= lt!908016 (efficientList!391 x!464872))))

(assert (=> d!730936 (= (toValue!11 thiss!3262 x!464872) (ite (= lt!908016 (Cons!29710 #x006E (Cons!29710 #x0075 (Cons!29710 #x006C (Cons!29710 #x006C Nil!29710))))) Null!4726 (ite (= lt!908016 (Cons!29710 #x0074 (Cons!29710 #x0072 (Cons!29710 #x0075 (Cons!29710 #x0065 Nil!29710))))) True!9453 (ite (= lt!908016 (Cons!29710 #x0066 (Cons!29710 #x0061 (Cons!29710 #x006C (Cons!29710 #x0073 (Cons!29710 #x0065 Nil!29710)))))) False!9453 (ite (= lt!908016 (Cons!29710 #x003A Nil!29710)) Colon!4726 (ite (= lt!908016 (Cons!29710 #x002C Nil!29710)) Comma!4726 (ite (= lt!908016 (Cons!29710 #x007B Nil!29710)) LeftBrace!4726 (ite (= lt!908016 (Cons!29710 #x007D Nil!29710)) RightBrace!4726 (ite (= lt!908016 (Cons!29710 #x005B Nil!29710)) LeftBracket!4726 (ite (= lt!908016 (Cons!29710 #x005D Nil!29710)) RightBracket!4726 (Broken!23633 lt!908016)))))))))))))

(declare-fun bs!471294 () Bool)

(assert (= bs!471294 d!730936))

(declare-fun m!2917531 () Bool)

(assert (=> bs!471294 m!2917531))

(assert (=> b!2580967 d!730936))

(declare-fun d!730938 () Bool)

(declare-fun lt!908017 () List!29810)

(assert (=> d!730938 (= lt!908017 (efficientList!391 x!464871))))

(assert (=> d!730938 (= (toValue!11 thiss!3262 x!464871) (ite (= lt!908017 (Cons!29710 #x006E (Cons!29710 #x0075 (Cons!29710 #x006C (Cons!29710 #x006C Nil!29710))))) Null!4726 (ite (= lt!908017 (Cons!29710 #x0074 (Cons!29710 #x0072 (Cons!29710 #x0075 (Cons!29710 #x0065 Nil!29710))))) True!9453 (ite (= lt!908017 (Cons!29710 #x0066 (Cons!29710 #x0061 (Cons!29710 #x006C (Cons!29710 #x0073 (Cons!29710 #x0065 Nil!29710)))))) False!9453 (ite (= lt!908017 (Cons!29710 #x003A Nil!29710)) Colon!4726 (ite (= lt!908017 (Cons!29710 #x002C Nil!29710)) Comma!4726 (ite (= lt!908017 (Cons!29710 #x007B Nil!29710)) LeftBrace!4726 (ite (= lt!908017 (Cons!29710 #x007D Nil!29710)) RightBrace!4726 (ite (= lt!908017 (Cons!29710 #x005B Nil!29710)) LeftBracket!4726 (ite (= lt!908017 (Cons!29710 #x005D Nil!29710)) RightBracket!4726 (Broken!23633 lt!908017)))))))))))))

(declare-fun bs!471295 () Bool)

(assert (= bs!471295 d!730938))

(declare-fun m!2917533 () Bool)

(assert (=> bs!471295 m!2917533))

(assert (=> b!2580957 d!730938))

(assert (=> bs!471233 d!730932))

(assert (=> bs!471233 d!730934))

(assert (=> b!2580970 d!730936))

(assert (=> b!2580970 d!730928))

(assert (=> b!2580960 d!730928))

(assert (=> b!2580960 d!730938))

(declare-fun d!730940 () Bool)

(assert (=> d!730940 (= (list!11221 x!464871) (list!11223 (c!416023 x!464871)))))

(declare-fun bs!471296 () Bool)

(assert (= bs!471296 d!730940))

(declare-fun m!2917535 () Bool)

(assert (=> bs!471296 m!2917535))

(assert (=> bs!471230 d!730940))

(assert (=> bs!471230 d!730932))

(assert (=> bs!471244 d!730930))

(assert (=> bs!471244 d!730940))

(assert (=> b!2580968 d!730938))

(assert (=> b!2580968 d!730936))

(assert (=> b!2580958 d!730938))

(assert (=> b!2580958 d!730928))

(assert (=> bs!471234 d!730932))

(assert (=> bs!471234 d!730940))

(assert (=> b!2580971 d!730936))

(assert (=> b!2580971 d!730924))

(assert (=> b!2580961 d!730928))

(assert (=> b!2580961 d!730924))

(assert (=> bs!471239 d!730940))

(assert (=> bs!471239 d!730930))

(assert (=> bs!471224 d!730940))

(assert (=> bs!471224 d!730934))

(assert (=> b!2580959 d!730928))

(assert (=> bs!471241 d!730930))

(assert (=> bs!471235 d!730934))

(assert (=> bs!471235 d!730930))

(assert (=> b!2580962 d!730938))

(assert (=> b!2580962 d!730924))

(assert (=> b!2580972 d!730936))

(assert (=> b!2580972 d!730938))

(assert (=> bs!471226 d!730934))

(assert (=> b!2580965 d!730924))

(assert (=> b!2580965 d!730938))

(assert (=> bs!471237 d!730932))

(assert (=> bs!471237 d!730930))

(assert (=> b!2580963 d!730924))

(assert (=> bs!471242 d!730930))

(assert (=> bs!471242 d!730934))

(assert (=> bs!471222 d!730940))

(assert (=> bs!471227 d!730934))

(assert (=> bs!471227 d!730940))

(assert (=> b!2580966 d!730928))

(assert (=> b!2580966 d!730936))

(assert (=> bs!471232 d!730932))

(assert (=> b!2580969 d!730936))

(declare-fun bs!471297 () Bool)

(assert (= bs!471297 (and m!2917461 b!2580957)))

(assert (=> bs!471297 m!2917461))

(assert (=> bs!471297 m!2917461))

(declare-fun bs!471298 () Bool)

(assert (= bs!471298 (and m!2917459 m!2917461 m!2917463 b!2580958)))

(assert (=> bs!471298 m!2917461))

(declare-fun m!2917537 () Bool)

(assert (=> bs!471298 m!2917537))

(declare-fun bs!471299 () Bool)

(assert (= bs!471299 (and m!2917459 b!2580959)))

(assert (=> bs!471299 m!2917537))

(assert (=> bs!471299 m!2917537))

(declare-fun bs!471300 () Bool)

(assert (= bs!471300 (and m!2917459 m!2917461 m!2917463 b!2580960)))

(assert (=> bs!471300 m!2917537))

(assert (=> bs!471300 m!2917461))

(declare-fun bs!471301 () Bool)

(assert (= bs!471301 (and m!2917467 m!2917459 b!2580961)))

(assert (=> bs!471301 m!2917537))

(assert (=> bs!471301 m!2917475))

(declare-fun bs!471302 () Bool)

(assert (= bs!471302 (and m!2917467 m!2917461 m!2917463 b!2580962)))

(assert (=> bs!471302 m!2917461))

(assert (=> bs!471302 m!2917475))

(declare-fun bs!471303 () Bool)

(assert (= bs!471303 (and m!2917467 b!2580963)))

(assert (=> bs!471303 m!2917475))

(assert (=> bs!471303 m!2917475))

(declare-fun bs!471304 () Bool)

(assert (= bs!471304 (and m!2917467 m!2917459 b!2580964)))

(assert (=> bs!471304 m!2917475))

(assert (=> bs!471304 m!2917537))

(declare-fun bs!471305 () Bool)

(assert (= bs!471305 (and m!2917467 m!2917461 m!2917463 b!2580965)))

(assert (=> bs!471305 m!2917475))

(assert (=> bs!471305 m!2917461))

(declare-fun bs!471306 () Bool)

(assert (= bs!471306 (and m!2917473 m!2917459 b!2580966)))

(assert (=> bs!471306 m!2917537))

(assert (=> bs!471306 m!2917473))

(declare-fun bs!471307 () Bool)

(assert (= bs!471307 (and m!2917473 m!2917467 b!2580967)))

(assert (=> bs!471307 m!2917475))

(assert (=> bs!471307 m!2917473))

(declare-fun bs!471308 () Bool)

(assert (= bs!471308 (and m!2917473 m!2917461 m!2917463 b!2580968)))

(assert (=> bs!471308 m!2917461))

(assert (=> bs!471308 m!2917473))

(declare-fun bs!471309 () Bool)

(assert (= bs!471309 (and m!2917473 b!2580969)))

(assert (=> bs!471309 m!2917473))

(assert (=> bs!471309 m!2917473))

(declare-fun bs!471310 () Bool)

(assert (= bs!471310 (and m!2917473 m!2917459 b!2580970)))

(assert (=> bs!471310 m!2917473))

(assert (=> bs!471310 m!2917537))

(declare-fun bs!471311 () Bool)

(assert (= bs!471311 (and m!2917473 m!2917467 b!2580971)))

(assert (=> bs!471311 m!2917473))

(assert (=> bs!471311 m!2917475))

(declare-fun bs!471312 () Bool)

(assert (= bs!471312 (and m!2917473 m!2917461 m!2917463 b!2580972)))

(assert (=> bs!471312 m!2917473))

(assert (=> bs!471312 m!2917461))

(push 1)

(assert (not d!730932))

(assert (not d!730940))

(assert (not b!2580944))

(assert (not d!730936))

(assert (not d!730930))

(assert (not b!2580956))

(assert (not d!730934))

(assert (not b!2580953))

(assert (not b!2580955))

(assert (not b!2580954))

(assert (not d!730938))

(assert (not start!249782))

(assert (not d!730928))

(assert (not d!730924))

(assert (not bs!471220))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!730956 () Bool)

(declare-fun lt!908026 () List!29810)

(assert (=> d!730956 (= lt!908026 (list!11221 x!464873))))

(declare-fun efficientList!393 (Conc!9270 List!29810) List!29810)

(declare-fun efficientList$default$2!137 (Conc!9270) List!29810)

(assert (=> d!730956 (= lt!908026 (efficientList!393 (c!416023 x!464873) (efficientList$default$2!137 (c!416023 x!464873))))))

(assert (=> d!730956 (= (efficientList!391 x!464873) lt!908026)))

(declare-fun bs!471337 () Bool)

(assert (= bs!471337 d!730956))

(assert (=> bs!471337 m!2917467))

(declare-fun m!2917557 () Bool)

(assert (=> bs!471337 m!2917557))

(assert (=> bs!471337 m!2917557))

(declare-fun m!2917559 () Bool)

(assert (=> bs!471337 m!2917559))

(assert (=> d!730924 d!730956))

(declare-fun d!730958 () Bool)

(declare-fun lt!908027 () List!29810)

(assert (=> d!730958 (= lt!908027 (list!11221 x!464871))))

(assert (=> d!730958 (= lt!908027 (efficientList!393 (c!416023 x!464871) (efficientList$default$2!137 (c!416023 x!464871))))))

(assert (=> d!730958 (= (efficientList!391 x!464871) lt!908027)))

(declare-fun bs!471338 () Bool)

(assert (= bs!471338 d!730958))

(assert (=> bs!471338 m!2917463))

(declare-fun m!2917561 () Bool)

(assert (=> bs!471338 m!2917561))

(assert (=> bs!471338 m!2917561))

(declare-fun m!2917563 () Bool)

(assert (=> bs!471338 m!2917563))

(assert (=> d!730938 d!730958))

(declare-fun b!2581027 () Bool)

(declare-fun e!1628626 () List!29810)

(declare-fun e!1628627 () List!29810)

(assert (=> b!2581027 (= e!1628626 e!1628627)))

(declare-fun c!416034 () Bool)

(assert (=> b!2581027 (= c!416034 (is-Leaf!14142 (c!416023 x!464871)))))

(declare-fun d!730960 () Bool)

(declare-fun c!416033 () Bool)

(assert (=> d!730960 (= c!416033 (is-Empty!9270 (c!416023 x!464871)))))

(assert (=> d!730960 (= (list!11223 (c!416023 x!464871)) e!1628626)))

(declare-fun b!2581029 () Bool)

(declare-fun ++!7294 (List!29810 List!29810) List!29810)

(assert (=> b!2581029 (= e!1628627 (++!7294 (list!11223 (left!22639 (c!416023 x!464871))) (list!11223 (right!22969 (c!416023 x!464871)))))))

(declare-fun b!2581028 () Bool)

(declare-fun list!11225 (IArray!18545) List!29810)

(assert (=> b!2581028 (= e!1628627 (list!11225 (xs!12254 (c!416023 x!464871))))))

(declare-fun b!2581026 () Bool)

(assert (=> b!2581026 (= e!1628626 Nil!29710)))

(assert (= (and d!730960 c!416033) b!2581026))

(assert (= (and d!730960 (not c!416033)) b!2581027))

(assert (= (and b!2581027 c!416034) b!2581028))

(assert (= (and b!2581027 (not c!416034)) b!2581029))

(declare-fun m!2917565 () Bool)

(assert (=> b!2581029 m!2917565))

(declare-fun m!2917567 () Bool)

(assert (=> b!2581029 m!2917567))

(assert (=> b!2581029 m!2917565))

(assert (=> b!2581029 m!2917567))

(declare-fun m!2917569 () Bool)

(assert (=> b!2581029 m!2917569))

(declare-fun m!2917571 () Bool)

(assert (=> b!2581028 m!2917571))

(assert (=> d!730940 d!730960))

(declare-fun b!2581031 () Bool)

(declare-fun e!1628628 () List!29810)

(declare-fun e!1628629 () List!29810)

(assert (=> b!2581031 (= e!1628628 e!1628629)))

(declare-fun c!416036 () Bool)

(assert (=> b!2581031 (= c!416036 (is-Leaf!14142 (c!416023 x!464873)))))

(declare-fun d!730962 () Bool)

(declare-fun c!416035 () Bool)

(assert (=> d!730962 (= c!416035 (is-Empty!9270 (c!416023 x!464873)))))

(assert (=> d!730962 (= (list!11223 (c!416023 x!464873)) e!1628628)))

(declare-fun b!2581033 () Bool)

(assert (=> b!2581033 (= e!1628629 (++!7294 (list!11223 (left!22639 (c!416023 x!464873))) (list!11223 (right!22969 (c!416023 x!464873)))))))

(declare-fun b!2581032 () Bool)

(assert (=> b!2581032 (= e!1628629 (list!11225 (xs!12254 (c!416023 x!464873))))))

(declare-fun b!2581030 () Bool)

(assert (=> b!2581030 (= e!1628628 Nil!29710)))

(assert (= (and d!730962 c!416035) b!2581030))

(assert (= (and d!730962 (not c!416035)) b!2581031))

(assert (= (and b!2581031 c!416036) b!2581032))

(assert (= (and b!2581031 (not c!416036)) b!2581033))

(declare-fun m!2917573 () Bool)

(assert (=> b!2581033 m!2917573))

(declare-fun m!2917575 () Bool)

(assert (=> b!2581033 m!2917575))

(assert (=> b!2581033 m!2917573))

(assert (=> b!2581033 m!2917575))

(declare-fun m!2917577 () Bool)

(assert (=> b!2581033 m!2917577))

(declare-fun m!2917579 () Bool)

(assert (=> b!2581032 m!2917579))

(assert (=> d!730932 d!730962))

(declare-fun d!730964 () Bool)

(declare-fun lt!908028 () List!29810)

(assert (=> d!730964 (= lt!908028 (list!11221 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871))))))

(assert (=> d!730964 (= lt!908028 (efficientList!393 (c!416023 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871))) (efficientList$default$2!137 (c!416023 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871))))))))

(assert (=> d!730964 (= (efficientList!391 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871))) lt!908028)))

(declare-fun bs!471339 () Bool)

(assert (= bs!471339 d!730964))

(assert (=> bs!471339 m!2917457))

(assert (=> bs!471339 m!2917459))

(declare-fun m!2917581 () Bool)

(assert (=> bs!471339 m!2917581))

(assert (=> bs!471339 m!2917581))

(declare-fun m!2917583 () Bool)

(assert (=> bs!471339 m!2917583))

(assert (=> d!730928 d!730964))

(declare-fun b!2581035 () Bool)

(declare-fun e!1628630 () List!29810)

(declare-fun e!1628631 () List!29810)

(assert (=> b!2581035 (= e!1628630 e!1628631)))

(declare-fun c!416038 () Bool)

(assert (=> b!2581035 (= c!416038 (is-Leaf!14142 (c!416023 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871)))))))

(declare-fun d!730966 () Bool)

(declare-fun c!416037 () Bool)

(assert (=> d!730966 (= c!416037 (is-Empty!9270 (c!416023 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871)))))))

(assert (=> d!730966 (= (list!11223 (c!416023 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871)))) e!1628630)))

(declare-fun b!2581037 () Bool)

(assert (=> b!2581037 (= e!1628631 (++!7294 (list!11223 (left!22639 (c!416023 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871))))) (list!11223 (right!22969 (c!416023 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871)))))))))

(declare-fun b!2581036 () Bool)

(assert (=> b!2581036 (= e!1628631 (list!11225 (xs!12254 (c!416023 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871))))))))

(declare-fun b!2581034 () Bool)

(assert (=> b!2581034 (= e!1628630 Nil!29710)))

(assert (= (and d!730966 c!416037) b!2581034))

(assert (= (and d!730966 (not c!416037)) b!2581035))

(assert (= (and b!2581035 c!416038) b!2581036))

(assert (= (and b!2581035 (not c!416038)) b!2581037))

(declare-fun m!2917585 () Bool)

(assert (=> b!2581037 m!2917585))

(declare-fun m!2917587 () Bool)

(assert (=> b!2581037 m!2917587))

(assert (=> b!2581037 m!2917585))

(assert (=> b!2581037 m!2917587))

(declare-fun m!2917589 () Bool)

(assert (=> b!2581037 m!2917589))

(declare-fun m!2917591 () Bool)

(assert (=> b!2581036 m!2917591))

(assert (=> d!730934 d!730966))

(declare-fun b!2581039 () Bool)

(declare-fun e!1628632 () List!29810)

(declare-fun e!1628633 () List!29810)

(assert (=> b!2581039 (= e!1628632 e!1628633)))

(declare-fun c!416040 () Bool)

(assert (=> b!2581039 (= c!416040 (is-Leaf!14142 (c!416023 x!464872)))))

(declare-fun d!730968 () Bool)

(declare-fun c!416039 () Bool)

(assert (=> d!730968 (= c!416039 (is-Empty!9270 (c!416023 x!464872)))))

(assert (=> d!730968 (= (list!11223 (c!416023 x!464872)) e!1628632)))

(declare-fun b!2581041 () Bool)

(assert (=> b!2581041 (= e!1628633 (++!7294 (list!11223 (left!22639 (c!416023 x!464872))) (list!11223 (right!22969 (c!416023 x!464872)))))))

(declare-fun b!2581040 () Bool)

(assert (=> b!2581040 (= e!1628633 (list!11225 (xs!12254 (c!416023 x!464872))))))

(declare-fun b!2581038 () Bool)

(assert (=> b!2581038 (= e!1628632 Nil!29710)))

(assert (= (and d!730968 c!416039) b!2581038))

(assert (= (and d!730968 (not c!416039)) b!2581039))

(assert (= (and b!2581039 c!416040) b!2581040))

(assert (= (and b!2581039 (not c!416040)) b!2581041))

(declare-fun m!2917593 () Bool)

(assert (=> b!2581041 m!2917593))

(declare-fun m!2917595 () Bool)

(assert (=> b!2581041 m!2917595))

(assert (=> b!2581041 m!2917593))

(assert (=> b!2581041 m!2917595))

(declare-fun m!2917597 () Bool)

(assert (=> b!2581041 m!2917597))

(declare-fun m!2917599 () Bool)

(assert (=> b!2581040 m!2917599))

(assert (=> d!730930 d!730968))

(declare-fun d!730970 () Bool)

(declare-fun lt!908029 () List!29810)

(assert (=> d!730970 (= lt!908029 (list!11221 x!464872))))

(assert (=> d!730970 (= lt!908029 (efficientList!393 (c!416023 x!464872) (efficientList$default$2!137 (c!416023 x!464872))))))

(assert (=> d!730970 (= (efficientList!391 x!464872) lt!908029)))

(declare-fun bs!471340 () Bool)

(assert (= bs!471340 d!730970))

(assert (=> bs!471340 m!2917465))

(declare-fun m!2917601 () Bool)

(assert (=> bs!471340 m!2917601))

(assert (=> bs!471340 m!2917601))

(declare-fun m!2917603 () Bool)

(assert (=> bs!471340 m!2917603))

(assert (=> d!730936 d!730970))

(push 1)

(assert (not b!2581028))

(assert (not b!2580944))

(assert (not d!730956))

(assert (not start!249782))

(assert (not bs!471220))

(assert (not b!2580956))

(assert (not d!730958))

(assert (not b!2580953))

(assert (not b!2581029))

(assert (not d!730964))

(assert (not b!2580954))

(assert (not b!2581041))

(assert (not b!2581036))

(assert (not d!730970))

(assert (not b!2581037))

(assert (not b!2581033))

(assert (not b!2581032))

(assert (not b!2580955))

(assert (not b!2581040))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2581106 () Bool)

(declare-fun e!1628666 () BalanceConc!18154)

(declare-fun rightBracketStringConc!0 () BalanceConc!18154)

(assert (=> b!2581106 (= e!1628666 rightBracketStringConc!0)))

(declare-fun b!2581107 () Bool)

(declare-fun e!1628671 () BalanceConc!18154)

(declare-fun commaStringConc!0 () BalanceConc!18154)

(assert (=> b!2581107 (= e!1628671 commaStringConc!0)))

(declare-fun b!2581108 () Bool)

(declare-fun e!1628674 () BalanceConc!18154)

(declare-fun nullStringConc!0 () BalanceConc!18154)

(assert (=> b!2581108 (= e!1628674 nullStringConc!0)))

(declare-fun b!2581109 () Bool)

(declare-fun e!1628675 () BalanceConc!18154)

(declare-fun falseStringConc!0 () BalanceConc!18154)

(assert (=> b!2581109 (= e!1628675 falseStringConc!0)))

(declare-fun d!730988 () Bool)

(declare-fun c!416076 () Bool)

(assert (=> d!730988 (= c!416076 (is-Null!4726 (toValue!11 thiss!3262 x!464871)))))

(assert (=> d!730988 (= (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871)) e!1628674)))

(declare-fun b!2581110 () Bool)

(declare-fun c!416081 () Bool)

(assert (=> b!2581110 (= c!416081 (is-False!9453 (toValue!11 thiss!3262 x!464871)))))

(declare-fun e!1628668 () BalanceConc!18154)

(assert (=> b!2581110 (= e!1628668 e!1628675)))

(declare-fun b!2581111 () Bool)

(declare-fun c!416077 () Bool)

(assert (=> b!2581111 (= c!416077 (is-RightBrace!4726 (toValue!11 thiss!3262 x!464871)))))

(declare-fun e!1628667 () BalanceConc!18154)

(declare-fun e!1628670 () BalanceConc!18154)

(assert (=> b!2581111 (= e!1628667 e!1628670)))

(declare-fun b!2581112 () Bool)

(declare-fun e!1628673 () BalanceConc!18154)

(assert (=> b!2581112 (= e!1628673 (BalanceConc!18155 Empty!9270))))

(declare-fun b!2581113 () Bool)

(declare-fun seqFromList!3148 (List!29810) BalanceConc!18154)

(assert (=> b!2581113 (= e!1628673 (seqFromList!3148 (value!145603 (toValue!11 thiss!3262 x!464871))))))

(declare-fun b!2581114 () Bool)

(declare-fun e!1628672 () BalanceConc!18154)

(declare-fun colonStringConc!0 () BalanceConc!18154)

(assert (=> b!2581114 (= e!1628672 colonStringConc!0)))

(declare-fun b!2581115 () Bool)

(declare-fun e!1628669 () BalanceConc!18154)

(declare-fun leftBracketStringConc!0 () BalanceConc!18154)

(assert (=> b!2581115 (= e!1628669 leftBracketStringConc!0)))

(declare-fun b!2581116 () Bool)

(declare-fun c!416082 () Bool)

(assert (=> b!2581116 (= c!416082 (is-Comma!4726 (toValue!11 thiss!3262 x!464871)))))

(assert (=> b!2581116 (= e!1628672 e!1628671)))

(declare-fun b!2581117 () Bool)

(declare-fun rightBraceStringConc!0 () BalanceConc!18154)

(assert (=> b!2581117 (= e!1628670 rightBraceStringConc!0)))

(declare-fun b!2581118 () Bool)

(declare-fun leftBraceStringConc!0 () BalanceConc!18154)

(assert (=> b!2581118 (= e!1628667 leftBraceStringConc!0)))

(declare-fun b!2581119 () Bool)

(assert (=> b!2581119 (= e!1628666 e!1628673)))

(declare-fun c!416079 () Bool)

(assert (=> b!2581119 (= c!416079 (is-Broken!23633 (toValue!11 thiss!3262 x!464871)))))

(declare-fun b!2581120 () Bool)

(assert (=> b!2581120 (= e!1628675 e!1628672)))

(declare-fun c!416074 () Bool)

(assert (=> b!2581120 (= c!416074 (is-Colon!4726 (toValue!11 thiss!3262 x!464871)))))

(declare-fun b!2581121 () Bool)

(declare-fun c!416078 () Bool)

(assert (=> b!2581121 (= c!416078 (is-RightBracket!4726 (toValue!11 thiss!3262 x!464871)))))

(assert (=> b!2581121 (= e!1628669 e!1628666)))

(declare-fun b!2581122 () Bool)

(assert (=> b!2581122 (= e!1628671 e!1628667)))

(declare-fun c!416083 () Bool)

(assert (=> b!2581122 (= c!416083 (is-LeftBrace!4726 (toValue!11 thiss!3262 x!464871)))))

(declare-fun b!2581123 () Bool)

(declare-fun trueStringConc!0 () BalanceConc!18154)

(assert (=> b!2581123 (= e!1628668 trueStringConc!0)))

(declare-fun b!2581124 () Bool)

(assert (=> b!2581124 (= e!1628674 e!1628668)))

(declare-fun c!416075 () Bool)

(assert (=> b!2581124 (= c!416075 (is-True!9453 (toValue!11 thiss!3262 x!464871)))))

(declare-fun b!2581125 () Bool)

(assert (=> b!2581125 (= e!1628670 e!1628669)))

(declare-fun c!416080 () Bool)

(assert (=> b!2581125 (= c!416080 (is-LeftBracket!4726 (toValue!11 thiss!3262 x!464871)))))

(assert (= (and d!730988 c!416076) b!2581108))

(assert (= (and d!730988 (not c!416076)) b!2581124))

(assert (= (and b!2581124 c!416075) b!2581123))

(assert (= (and b!2581124 (not c!416075)) b!2581110))

(assert (= (and b!2581110 c!416081) b!2581109))

(assert (= (and b!2581110 (not c!416081)) b!2581120))

(assert (= (and b!2581120 c!416074) b!2581114))

(assert (= (and b!2581120 (not c!416074)) b!2581116))

(assert (= (and b!2581116 c!416082) b!2581107))

(assert (= (and b!2581116 (not c!416082)) b!2581122))

(assert (= (and b!2581122 c!416083) b!2581118))

(assert (= (and b!2581122 (not c!416083)) b!2581111))

(assert (= (and b!2581111 c!416077) b!2581117))

(assert (= (and b!2581111 (not c!416077)) b!2581125))

(assert (= (and b!2581125 c!416080) b!2581115))

(assert (= (and b!2581125 (not c!416080)) b!2581121))

(assert (= (and b!2581121 c!416078) b!2581106))

(assert (= (and b!2581121 (not c!416078)) b!2581119))

(assert (= (and b!2581119 c!416079) b!2581113))

(assert (= (and b!2581119 (not c!416079)) b!2581112))

(declare-fun m!2917653 () Bool)

(assert (=> b!2581115 m!2917653))

(declare-fun m!2917655 () Bool)

(assert (=> b!2581118 m!2917655))

(declare-fun m!2917657 () Bool)

(assert (=> b!2581113 m!2917657))

(declare-fun m!2917659 () Bool)

(assert (=> b!2581114 m!2917659))

(declare-fun m!2917661 () Bool)

(assert (=> b!2581106 m!2917661))

(declare-fun m!2917663 () Bool)

(assert (=> b!2581109 m!2917663))

(declare-fun m!2917665 () Bool)

(assert (=> b!2581108 m!2917665))

(declare-fun m!2917667 () Bool)

(assert (=> b!2581107 m!2917667))

(declare-fun m!2917669 () Bool)

(assert (=> b!2581117 m!2917669))

(declare-fun m!2917671 () Bool)

(assert (=> b!2581123 m!2917671))

(assert (=> start!249782 d!730988))

(declare-fun d!730990 () Bool)

(declare-fun choose!15213 (Int) Bool)

(assert (=> d!730990 (= (Forall!1161 lambda!95597) (choose!15213 lambda!95597))))

(declare-fun bs!471345 () Bool)

(assert (= bs!471345 d!730990))

(declare-fun m!2917673 () Bool)

(assert (=> bs!471345 m!2917673))

(assert (=> start!249782 d!730990))

(assert (=> start!249782 d!730938))

(declare-fun d!730992 () Bool)

(declare-fun isBalanced!2827 (Conc!9270) Bool)

(assert (=> d!730992 (= (inv!40095 x!464871) (isBalanced!2827 (c!416023 x!464871)))))

(declare-fun bs!471346 () Bool)

(assert (= bs!471346 d!730992))

(declare-fun m!2917675 () Bool)

(assert (=> bs!471346 m!2917675))

(assert (=> start!249782 d!730992))

(assert (=> start!249782 d!730934))

(assert (=> start!249782 d!730940))

(assert (=> d!730956 d!730932))

(declare-fun bm!166742 () Bool)

(declare-fun c!416090 () Bool)

(declare-fun c!416092 () Bool)

(assert (=> bm!166742 (= c!416090 c!416092)))

(declare-fun call!166747 () List!29810)

(declare-fun e!1628683 () List!29810)

(assert (=> bm!166742 (= call!166747 (++!7294 e!1628683 (efficientList$default$2!137 (c!416023 x!464873))))))

(declare-fun b!2581138 () Bool)

(declare-fun e!1628684 () List!29810)

(assert (=> b!2581138 (= e!1628684 call!166747)))

(declare-fun b!2581139 () Bool)

(declare-fun lt!908048 () List!29810)

(assert (=> b!2581139 (= e!1628683 lt!908048)))

(declare-fun d!730994 () Bool)

(declare-fun lt!908047 () List!29810)

(assert (=> d!730994 (= lt!908047 (++!7294 (list!11223 (c!416023 x!464873)) (efficientList$default$2!137 (c!416023 x!464873))))))

(declare-fun e!1628682 () List!29810)

(assert (=> d!730994 (= lt!908047 e!1628682)))

(declare-fun c!416091 () Bool)

(assert (=> d!730994 (= c!416091 (is-Empty!9270 (c!416023 x!464873)))))

(assert (=> d!730994 (= (efficientList!393 (c!416023 x!464873) (efficientList$default$2!137 (c!416023 x!464873))) lt!908047)))

(declare-fun b!2581140 () Bool)

(assert (=> b!2581140 (= e!1628682 e!1628684)))

(assert (=> b!2581140 (= c!416092 (is-Leaf!14142 (c!416023 x!464873)))))

(declare-fun b!2581141 () Bool)

(declare-datatypes ((Unit!43548 0))(
  ( (Unit!43549) )
))
(declare-fun lt!908046 () Unit!43548)

(declare-fun lt!908050 () Unit!43548)

(assert (=> b!2581141 (= lt!908046 lt!908050)))

(declare-fun lt!908049 () List!29810)

(assert (=> b!2581141 (= (++!7294 (++!7294 lt!908049 lt!908048) (efficientList$default$2!137 (c!416023 x!464873))) (++!7294 lt!908049 call!166747))))

(declare-fun lemmaConcatAssociativity!1476 (List!29810 List!29810 List!29810) Unit!43548)

(assert (=> b!2581141 (= lt!908050 (lemmaConcatAssociativity!1476 lt!908049 lt!908048 (efficientList$default$2!137 (c!416023 x!464873))))))

(assert (=> b!2581141 (= lt!908048 (list!11223 (right!22969 (c!416023 x!464873))))))

(assert (=> b!2581141 (= lt!908049 (list!11223 (left!22639 (c!416023 x!464873))))))

(assert (=> b!2581141 (= e!1628684 (efficientList!393 (left!22639 (c!416023 x!464873)) (efficientList!393 (right!22969 (c!416023 x!464873)) (efficientList$default$2!137 (c!416023 x!464873)))))))

(declare-fun b!2581142 () Bool)

(assert (=> b!2581142 (= e!1628682 (efficientList$default$2!137 (c!416023 x!464873)))))

(declare-fun b!2581143 () Bool)

(declare-fun efficientList!395 (IArray!18545) List!29810)

(assert (=> b!2581143 (= e!1628683 (efficientList!395 (xs!12254 (c!416023 x!464873))))))

(assert (= (and d!730994 c!416091) b!2581142))

(assert (= (and d!730994 (not c!416091)) b!2581140))

(assert (= (and b!2581140 c!416092) b!2581138))

(assert (= (and b!2581140 (not c!416092)) b!2581141))

(assert (= (or b!2581138 b!2581141) bm!166742))

(assert (= (and bm!166742 c!416090) b!2581143))

(assert (= (and bm!166742 (not c!416090)) b!2581139))

(assert (=> bm!166742 m!2917557))

(declare-fun m!2917677 () Bool)

(assert (=> bm!166742 m!2917677))

(assert (=> d!730994 m!2917527))

(assert (=> d!730994 m!2917527))

(assert (=> d!730994 m!2917557))

(declare-fun m!2917679 () Bool)

(assert (=> d!730994 m!2917679))

(declare-fun m!2917681 () Bool)

(assert (=> b!2581141 m!2917681))

(assert (=> b!2581141 m!2917557))

(declare-fun m!2917683 () Bool)

(assert (=> b!2581141 m!2917683))

(assert (=> b!2581141 m!2917573))

(declare-fun m!2917685 () Bool)

(assert (=> b!2581141 m!2917685))

(declare-fun m!2917687 () Bool)

(assert (=> b!2581141 m!2917687))

(assert (=> b!2581141 m!2917575))

(declare-fun m!2917689 () Bool)

(assert (=> b!2581141 m!2917689))

(assert (=> b!2581141 m!2917557))

(declare-fun m!2917691 () Bool)

(assert (=> b!2581141 m!2917691))

(assert (=> b!2581141 m!2917689))

(assert (=> b!2581141 m!2917557))

(assert (=> b!2581141 m!2917685))

(declare-fun m!2917693 () Bool)

(assert (=> b!2581143 m!2917693))

(assert (=> d!730956 d!730994))

(declare-fun d!730996 () Bool)

(assert (=> d!730996 (= (efficientList$default$2!137 (c!416023 x!464873)) Nil!29710)))

(assert (=> d!730956 d!730996))

(declare-fun d!730998 () Bool)

(declare-fun c!416095 () Bool)

(assert (=> d!730998 (= c!416095 (is-Node!9270 (c!416023 x!464871)))))

(declare-fun e!1628689 () Bool)

(assert (=> d!730998 (= (inv!40094 (c!416023 x!464871)) e!1628689)))

(declare-fun b!2581150 () Bool)

(declare-fun inv!40098 (Conc!9270) Bool)

(assert (=> b!2581150 (= e!1628689 (inv!40098 (c!416023 x!464871)))))

(declare-fun b!2581151 () Bool)

(declare-fun e!1628690 () Bool)

(assert (=> b!2581151 (= e!1628689 e!1628690)))

(declare-fun res!1085552 () Bool)

(assert (=> b!2581151 (= res!1085552 (not (is-Leaf!14142 (c!416023 x!464871))))))

(assert (=> b!2581151 (=> res!1085552 e!1628690)))

(declare-fun b!2581152 () Bool)

(declare-fun inv!40099 (Conc!9270) Bool)

(assert (=> b!2581152 (= e!1628690 (inv!40099 (c!416023 x!464871)))))

(assert (= (and d!730998 c!416095) b!2581150))

(assert (= (and d!730998 (not c!416095)) b!2581151))

(assert (= (and b!2581151 (not res!1085552)) b!2581152))

(declare-fun m!2917695 () Bool)

(assert (=> b!2581150 m!2917695))

(declare-fun m!2917697 () Bool)

(assert (=> b!2581152 m!2917697))

(assert (=> b!2580953 d!730998))

(assert (=> bs!471220 d!730934))

(assert (=> bs!471220 d!730988))

(assert (=> bs!471220 d!730938))

(assert (=> bs!471220 d!730940))

(assert (=> d!730970 d!730930))

(declare-fun bm!166743 () Bool)

(declare-fun c!416096 () Bool)

(declare-fun c!416098 () Bool)

(assert (=> bm!166743 (= c!416096 c!416098)))

(declare-fun call!166748 () List!29810)

(declare-fun e!1628692 () List!29810)

(assert (=> bm!166743 (= call!166748 (++!7294 e!1628692 (efficientList$default$2!137 (c!416023 x!464872))))))

(declare-fun b!2581153 () Bool)

(declare-fun e!1628693 () List!29810)

(assert (=> b!2581153 (= e!1628693 call!166748)))

(declare-fun b!2581154 () Bool)

(declare-fun lt!908053 () List!29810)

(assert (=> b!2581154 (= e!1628692 lt!908053)))

(declare-fun d!731000 () Bool)

(declare-fun lt!908052 () List!29810)

(assert (=> d!731000 (= lt!908052 (++!7294 (list!11223 (c!416023 x!464872)) (efficientList$default$2!137 (c!416023 x!464872))))))

(declare-fun e!1628691 () List!29810)

(assert (=> d!731000 (= lt!908052 e!1628691)))

(declare-fun c!416097 () Bool)

(assert (=> d!731000 (= c!416097 (is-Empty!9270 (c!416023 x!464872)))))

(assert (=> d!731000 (= (efficientList!393 (c!416023 x!464872) (efficientList$default$2!137 (c!416023 x!464872))) lt!908052)))

(declare-fun b!2581155 () Bool)

(assert (=> b!2581155 (= e!1628691 e!1628693)))

(assert (=> b!2581155 (= c!416098 (is-Leaf!14142 (c!416023 x!464872)))))

(declare-fun b!2581156 () Bool)

(declare-fun lt!908051 () Unit!43548)

(declare-fun lt!908055 () Unit!43548)

(assert (=> b!2581156 (= lt!908051 lt!908055)))

(declare-fun lt!908054 () List!29810)

(assert (=> b!2581156 (= (++!7294 (++!7294 lt!908054 lt!908053) (efficientList$default$2!137 (c!416023 x!464872))) (++!7294 lt!908054 call!166748))))

(assert (=> b!2581156 (= lt!908055 (lemmaConcatAssociativity!1476 lt!908054 lt!908053 (efficientList$default$2!137 (c!416023 x!464872))))))

(assert (=> b!2581156 (= lt!908053 (list!11223 (right!22969 (c!416023 x!464872))))))

(assert (=> b!2581156 (= lt!908054 (list!11223 (left!22639 (c!416023 x!464872))))))

(assert (=> b!2581156 (= e!1628693 (efficientList!393 (left!22639 (c!416023 x!464872)) (efficientList!393 (right!22969 (c!416023 x!464872)) (efficientList$default$2!137 (c!416023 x!464872)))))))

(declare-fun b!2581157 () Bool)

(assert (=> b!2581157 (= e!1628691 (efficientList$default$2!137 (c!416023 x!464872)))))

(declare-fun b!2581158 () Bool)

(assert (=> b!2581158 (= e!1628692 (efficientList!395 (xs!12254 (c!416023 x!464872))))))

(assert (= (and d!731000 c!416097) b!2581157))

(assert (= (and d!731000 (not c!416097)) b!2581155))

(assert (= (and b!2581155 c!416098) b!2581153))

(assert (= (and b!2581155 (not c!416098)) b!2581156))

(assert (= (or b!2581153 b!2581156) bm!166743))

(assert (= (and bm!166743 c!416096) b!2581158))

(assert (= (and bm!166743 (not c!416096)) b!2581154))

(assert (=> bm!166743 m!2917601))

(declare-fun m!2917699 () Bool)

(assert (=> bm!166743 m!2917699))

(assert (=> d!731000 m!2917525))

(assert (=> d!731000 m!2917525))

(assert (=> d!731000 m!2917601))

(declare-fun m!2917701 () Bool)

(assert (=> d!731000 m!2917701))

(declare-fun m!2917703 () Bool)

(assert (=> b!2581156 m!2917703))

(assert (=> b!2581156 m!2917601))

(declare-fun m!2917705 () Bool)

(assert (=> b!2581156 m!2917705))

(assert (=> b!2581156 m!2917593))

(declare-fun m!2917707 () Bool)

(assert (=> b!2581156 m!2917707))

(declare-fun m!2917709 () Bool)

(assert (=> b!2581156 m!2917709))

(assert (=> b!2581156 m!2917595))

(declare-fun m!2917711 () Bool)

(assert (=> b!2581156 m!2917711))

(assert (=> b!2581156 m!2917601))

(declare-fun m!2917713 () Bool)

(assert (=> b!2581156 m!2917713))

(assert (=> b!2581156 m!2917711))

(assert (=> b!2581156 m!2917601))

(assert (=> b!2581156 m!2917707))

(declare-fun m!2917715 () Bool)

(assert (=> b!2581158 m!2917715))

(assert (=> d!730970 d!731000))

(declare-fun d!731002 () Bool)

(assert (=> d!731002 (= (efficientList$default$2!137 (c!416023 x!464872)) Nil!29710)))

(assert (=> d!730970 d!731002))

(assert (=> b!2580944 d!730990))

(declare-fun bs!471347 () Bool)

(declare-fun d!731004 () Bool)

(assert (= bs!471347 (and d!731004 start!249782)))

(declare-fun lambda!95621 () Int)

(assert (=> bs!471347 (not (= lambda!95621 lambda!95597))))

(assert (=> d!731004 true))

(declare-fun order!15797 () Int)

(declare-fun order!15799 () Int)

(declare-fun dynLambda!12540 (Int Int) Int)

(declare-fun dynLambda!12541 (Int Int) Int)

(assert (=> d!731004 (< (dynLambda!12540 order!15797 lambda!95598) (dynLambda!12541 order!15799 lambda!95621))))

(assert (=> d!731004 true))

(declare-fun order!15801 () Int)

(declare-fun dynLambda!12542 (Int Int) Int)

(assert (=> d!731004 (< (dynLambda!12542 order!15801 lambda!95599) (dynLambda!12541 order!15799 lambda!95621))))

(assert (=> d!731004 (= (semiInverseModEq!1877 lambda!95598 lambda!95599) (Forall!1161 lambda!95621))))

(declare-fun bs!471348 () Bool)

(assert (= bs!471348 d!731004))

(declare-fun m!2917717 () Bool)

(assert (=> bs!471348 m!2917717))

(assert (=> b!2580944 d!731004))

(declare-fun d!731006 () Bool)

(assert (=> d!731006 (= (inv!40095 x!464873) (isBalanced!2827 (c!416023 x!464873)))))

(declare-fun bs!471349 () Bool)

(assert (= bs!471349 d!731006))

(declare-fun m!2917719 () Bool)

(assert (=> bs!471349 m!2917719))

(assert (=> b!2580944 d!731006))

(declare-fun d!731008 () Bool)

(declare-fun choose!15214 (Int) Bool)

(assert (=> d!731008 (= (Forall2!760 lambda!95600) (choose!15214 lambda!95600))))

(declare-fun bs!471350 () Bool)

(assert (= bs!471350 d!731008))

(declare-fun m!2917721 () Bool)

(assert (=> bs!471350 m!2917721))

(assert (=> b!2580944 d!731008))

(declare-fun d!731010 () Bool)

(assert (=> d!731010 (= (inv!40095 x!464872) (isBalanced!2827 (c!416023 x!464872)))))

(declare-fun bs!471351 () Bool)

(assert (= bs!471351 d!731010))

(declare-fun m!2917723 () Bool)

(assert (=> bs!471351 m!2917723))

(assert (=> b!2580944 d!731010))

(assert (=> b!2580944 d!730930))

(assert (=> b!2580944 d!730932))

(assert (=> d!730958 d!730940))

(declare-fun bm!166744 () Bool)

(declare-fun c!416099 () Bool)

(declare-fun c!416101 () Bool)

(assert (=> bm!166744 (= c!416099 c!416101)))

(declare-fun call!166749 () List!29810)

(declare-fun e!1628695 () List!29810)

(assert (=> bm!166744 (= call!166749 (++!7294 e!1628695 (efficientList$default$2!137 (c!416023 x!464871))))))

(declare-fun b!2581163 () Bool)

(declare-fun e!1628696 () List!29810)

(assert (=> b!2581163 (= e!1628696 call!166749)))

(declare-fun b!2581164 () Bool)

(declare-fun lt!908058 () List!29810)

(assert (=> b!2581164 (= e!1628695 lt!908058)))

(declare-fun d!731012 () Bool)

(declare-fun lt!908057 () List!29810)

(assert (=> d!731012 (= lt!908057 (++!7294 (list!11223 (c!416023 x!464871)) (efficientList$default$2!137 (c!416023 x!464871))))))

(declare-fun e!1628694 () List!29810)

(assert (=> d!731012 (= lt!908057 e!1628694)))

(declare-fun c!416100 () Bool)

(assert (=> d!731012 (= c!416100 (is-Empty!9270 (c!416023 x!464871)))))

(assert (=> d!731012 (= (efficientList!393 (c!416023 x!464871) (efficientList$default$2!137 (c!416023 x!464871))) lt!908057)))

(declare-fun b!2581165 () Bool)

(assert (=> b!2581165 (= e!1628694 e!1628696)))

(assert (=> b!2581165 (= c!416101 (is-Leaf!14142 (c!416023 x!464871)))))

(declare-fun b!2581166 () Bool)

(declare-fun lt!908056 () Unit!43548)

(declare-fun lt!908060 () Unit!43548)

(assert (=> b!2581166 (= lt!908056 lt!908060)))

(declare-fun lt!908059 () List!29810)

(assert (=> b!2581166 (= (++!7294 (++!7294 lt!908059 lt!908058) (efficientList$default$2!137 (c!416023 x!464871))) (++!7294 lt!908059 call!166749))))

(assert (=> b!2581166 (= lt!908060 (lemmaConcatAssociativity!1476 lt!908059 lt!908058 (efficientList$default$2!137 (c!416023 x!464871))))))

(assert (=> b!2581166 (= lt!908058 (list!11223 (right!22969 (c!416023 x!464871))))))

(assert (=> b!2581166 (= lt!908059 (list!11223 (left!22639 (c!416023 x!464871))))))

(assert (=> b!2581166 (= e!1628696 (efficientList!393 (left!22639 (c!416023 x!464871)) (efficientList!393 (right!22969 (c!416023 x!464871)) (efficientList$default$2!137 (c!416023 x!464871)))))))

(declare-fun b!2581167 () Bool)

(assert (=> b!2581167 (= e!1628694 (efficientList$default$2!137 (c!416023 x!464871)))))

(declare-fun b!2581168 () Bool)

(assert (=> b!2581168 (= e!1628695 (efficientList!395 (xs!12254 (c!416023 x!464871))))))

(assert (= (and d!731012 c!416100) b!2581167))

(assert (= (and d!731012 (not c!416100)) b!2581165))

(assert (= (and b!2581165 c!416101) b!2581163))

(assert (= (and b!2581165 (not c!416101)) b!2581166))

(assert (= (or b!2581163 b!2581166) bm!166744))

(assert (= (and bm!166744 c!416099) b!2581168))

(assert (= (and bm!166744 (not c!416099)) b!2581164))

(assert (=> bm!166744 m!2917561))

(declare-fun m!2917725 () Bool)

(assert (=> bm!166744 m!2917725))

(assert (=> d!731012 m!2917535))

(assert (=> d!731012 m!2917535))

(assert (=> d!731012 m!2917561))

(declare-fun m!2917727 () Bool)

(assert (=> d!731012 m!2917727))

(declare-fun m!2917729 () Bool)

(assert (=> b!2581166 m!2917729))

(assert (=> b!2581166 m!2917561))

(declare-fun m!2917731 () Bool)

(assert (=> b!2581166 m!2917731))

(assert (=> b!2581166 m!2917565))

(declare-fun m!2917733 () Bool)

(assert (=> b!2581166 m!2917733))

(declare-fun m!2917735 () Bool)

(assert (=> b!2581166 m!2917735))

(assert (=> b!2581166 m!2917567))

(declare-fun m!2917737 () Bool)

(assert (=> b!2581166 m!2917737))

(assert (=> b!2581166 m!2917561))

(declare-fun m!2917739 () Bool)

(assert (=> b!2581166 m!2917739))

(assert (=> b!2581166 m!2917737))

(assert (=> b!2581166 m!2917561))

(assert (=> b!2581166 m!2917733))

(declare-fun m!2917741 () Bool)

(assert (=> b!2581168 m!2917741))

(assert (=> d!730958 d!731012))

(declare-fun d!731014 () Bool)

(assert (=> d!731014 (= (efficientList$default$2!137 (c!416023 x!464871)) Nil!29710)))

(assert (=> d!730958 d!731014))

(assert (=> d!730964 d!730934))

(declare-fun bm!166745 () Bool)

(declare-fun c!416102 () Bool)

(declare-fun c!416104 () Bool)

(assert (=> bm!166745 (= c!416102 c!416104)))

(declare-fun call!166750 () List!29810)

(declare-fun e!1628698 () List!29810)

(assert (=> bm!166745 (= call!166750 (++!7294 e!1628698 (efficientList$default$2!137 (c!416023 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871))))))))

(declare-fun b!2581169 () Bool)

(declare-fun e!1628699 () List!29810)

(assert (=> b!2581169 (= e!1628699 call!166750)))

(declare-fun b!2581170 () Bool)

(declare-fun lt!908063 () List!29810)

(assert (=> b!2581170 (= e!1628698 lt!908063)))

(declare-fun d!731016 () Bool)

(declare-fun lt!908062 () List!29810)

(assert (=> d!731016 (= lt!908062 (++!7294 (list!11223 (c!416023 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871)))) (efficientList$default$2!137 (c!416023 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871))))))))

(declare-fun e!1628697 () List!29810)

(assert (=> d!731016 (= lt!908062 e!1628697)))

(declare-fun c!416103 () Bool)

(assert (=> d!731016 (= c!416103 (is-Empty!9270 (c!416023 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871)))))))

(assert (=> d!731016 (= (efficientList!393 (c!416023 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871))) (efficientList$default$2!137 (c!416023 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871))))) lt!908062)))

(declare-fun b!2581171 () Bool)

(assert (=> b!2581171 (= e!1628697 e!1628699)))

(assert (=> b!2581171 (= c!416104 (is-Leaf!14142 (c!416023 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871)))))))

(declare-fun b!2581172 () Bool)

(declare-fun lt!908061 () Unit!43548)

(declare-fun lt!908065 () Unit!43548)

(assert (=> b!2581172 (= lt!908061 lt!908065)))

(declare-fun lt!908064 () List!29810)

(assert (=> b!2581172 (= (++!7294 (++!7294 lt!908064 lt!908063) (efficientList$default$2!137 (c!416023 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871))))) (++!7294 lt!908064 call!166750))))

(assert (=> b!2581172 (= lt!908065 (lemmaConcatAssociativity!1476 lt!908064 lt!908063 (efficientList$default$2!137 (c!416023 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871))))))))

(assert (=> b!2581172 (= lt!908063 (list!11223 (right!22969 (c!416023 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871))))))))

(assert (=> b!2581172 (= lt!908064 (list!11223 (left!22639 (c!416023 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871))))))))

(assert (=> b!2581172 (= e!1628699 (efficientList!393 (left!22639 (c!416023 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871)))) (efficientList!393 (right!22969 (c!416023 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871)))) (efficientList$default$2!137 (c!416023 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871)))))))))

(declare-fun b!2581173 () Bool)

(assert (=> b!2581173 (= e!1628697 (efficientList$default$2!137 (c!416023 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871)))))))

(declare-fun b!2581174 () Bool)

(assert (=> b!2581174 (= e!1628698 (efficientList!395 (xs!12254 (c!416023 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871))))))))

(assert (= (and d!731016 c!416103) b!2581173))

(assert (= (and d!731016 (not c!416103)) b!2581171))

(assert (= (and b!2581171 c!416104) b!2581169))

(assert (= (and b!2581171 (not c!416104)) b!2581172))

(assert (= (or b!2581169 b!2581172) bm!166745))

(assert (= (and bm!166745 c!416102) b!2581174))

(assert (= (and bm!166745 (not c!416102)) b!2581170))

(assert (=> bm!166745 m!2917581))

(declare-fun m!2917743 () Bool)

(assert (=> bm!166745 m!2917743))

(assert (=> d!731016 m!2917529))

(assert (=> d!731016 m!2917529))

(assert (=> d!731016 m!2917581))

(declare-fun m!2917745 () Bool)

(assert (=> d!731016 m!2917745))

(declare-fun m!2917747 () Bool)

(assert (=> b!2581172 m!2917747))

(assert (=> b!2581172 m!2917581))

(declare-fun m!2917749 () Bool)

(assert (=> b!2581172 m!2917749))

(assert (=> b!2581172 m!2917585))

(declare-fun m!2917751 () Bool)

(assert (=> b!2581172 m!2917751))

(declare-fun m!2917753 () Bool)

(assert (=> b!2581172 m!2917753))

(assert (=> b!2581172 m!2917587))

(declare-fun m!2917755 () Bool)

(assert (=> b!2581172 m!2917755))

(assert (=> b!2581172 m!2917581))

(declare-fun m!2917757 () Bool)

(assert (=> b!2581172 m!2917757))

(assert (=> b!2581172 m!2917755))

(assert (=> b!2581172 m!2917581))

(assert (=> b!2581172 m!2917751))

(declare-fun m!2917759 () Bool)

(assert (=> b!2581174 m!2917759))

(assert (=> d!730964 d!731016))

(declare-fun d!731018 () Bool)

(assert (=> d!731018 (= (efficientList$default$2!137 (c!416023 (toCharacters!4 thiss!3262 (toValue!11 thiss!3262 x!464871)))) Nil!29710)))

(assert (=> d!730964 d!731018))

(declare-fun d!731020 () Bool)

(declare-fun c!416105 () Bool)

(assert (=> d!731020 (= c!416105 (is-Node!9270 (c!416023 x!464873)))))

(declare-fun e!1628700 () Bool)

(assert (=> d!731020 (= (inv!40094 (c!416023 x!464873)) e!1628700)))

(declare-fun b!2581175 () Bool)

(assert (=> b!2581175 (= e!1628700 (inv!40098 (c!416023 x!464873)))))

(declare-fun b!2581176 () Bool)

(declare-fun e!1628701 () Bool)

(assert (=> b!2581176 (= e!1628700 e!1628701)))

(declare-fun res!1085553 () Bool)

(assert (=> b!2581176 (= res!1085553 (not (is-Leaf!14142 (c!416023 x!464873))))))

(assert (=> b!2581176 (=> res!1085553 e!1628701)))

(declare-fun b!2581177 () Bool)

(assert (=> b!2581177 (= e!1628701 (inv!40099 (c!416023 x!464873)))))

(assert (= (and d!731020 c!416105) b!2581175))

(assert (= (and d!731020 (not c!416105)) b!2581176))

(assert (= (and b!2581176 (not res!1085553)) b!2581177))

(declare-fun m!2917761 () Bool)

(assert (=> b!2581175 m!2917761))

(declare-fun m!2917763 () Bool)

(assert (=> b!2581177 m!2917763))

(assert (=> b!2580956 d!731020))

(declare-fun d!731022 () Bool)

(declare-fun c!416106 () Bool)

(assert (=> d!731022 (= c!416106 (is-Node!9270 (c!416023 x!464872)))))

(declare-fun e!1628702 () Bool)

(assert (=> d!731022 (= (inv!40094 (c!416023 x!464872)) e!1628702)))

(declare-fun b!2581178 () Bool)

(assert (=> b!2581178 (= e!1628702 (inv!40098 (c!416023 x!464872)))))

(declare-fun b!2581179 () Bool)

(declare-fun e!1628703 () Bool)

(assert (=> b!2581179 (= e!1628702 e!1628703)))

(declare-fun res!1085554 () Bool)

(assert (=> b!2581179 (= res!1085554 (not (is-Leaf!14142 (c!416023 x!464872))))))

(assert (=> b!2581179 (=> res!1085554 e!1628703)))

(declare-fun b!2581180 () Bool)

(assert (=> b!2581180 (= e!1628703 (inv!40099 (c!416023 x!464872)))))

(assert (= (and d!731022 c!416106) b!2581178))

(assert (= (and d!731022 (not c!416106)) b!2581179))

(assert (= (and b!2581179 (not res!1085554)) b!2581180))

(declare-fun m!2917765 () Bool)

(assert (=> b!2581178 m!2917765))

(declare-fun m!2917767 () Bool)

(assert (=> b!2581180 m!2917767))

(assert (=> b!2580955 d!731022))

(assert (=> b!2580954 d!730936))

(assert (=> b!2580954 d!730924))

(declare-fun tp!819457 () Bool)

(declare-fun e!1628708 () Bool)

(declare-fun tp!819458 () Bool)

(declare-fun b!2581187 () Bool)

(assert (=> b!2581187 (= e!1628708 (and (inv!40094 (left!22639 (c!416023 x!464871))) tp!819457 (inv!40094 (right!22969 (c!416023 x!464871))) tp!819458))))

(declare-fun b!2581188 () Bool)

(declare-fun inv!40100 (IArray!18545) Bool)

(assert (=> b!2581188 (= e!1628708 (inv!40100 (xs!12254 (c!416023 x!464871))))))

(assert (=> b!2580953 (= tp!819441 (and (inv!40094 (c!416023 x!464871)) e!1628708))))

(assert (= (and b!2580953 (is-Node!9270 (c!416023 x!464871))) b!2581187))

(assert (= (and b!2580953 (is-Leaf!14142 (c!416023 x!464871))) b!2581188))

(declare-fun m!2917769 () Bool)

(assert (=> b!2581187 m!2917769))

(declare-fun m!2917771 () Bool)

(assert (=> b!2581187 m!2917771))

(declare-fun m!2917773 () Bool)

(assert (=> b!2581188 m!2917773))

(assert (=> b!2580953 m!2917453))

(declare-fun b!2581189 () Bool)

(declare-fun tp!819460 () Bool)

(declare-fun e!1628710 () Bool)

(declare-fun tp!819459 () Bool)

(assert (=> b!2581189 (= e!1628710 (and (inv!40094 (left!22639 (c!416023 x!464873))) tp!819459 (inv!40094 (right!22969 (c!416023 x!464873))) tp!819460))))

(declare-fun b!2581190 () Bool)

(assert (=> b!2581190 (= e!1628710 (inv!40100 (xs!12254 (c!416023 x!464873))))))

(assert (=> b!2580956 (= tp!819443 (and (inv!40094 (c!416023 x!464873)) e!1628710))))

(assert (= (and b!2580956 (is-Node!9270 (c!416023 x!464873))) b!2581189))

(assert (= (and b!2580956 (is-Leaf!14142 (c!416023 x!464873))) b!2581190))

(declare-fun m!2917775 () Bool)

(assert (=> b!2581189 m!2917775))

(declare-fun m!2917777 () Bool)

(assert (=> b!2581189 m!2917777))

(declare-fun m!2917779 () Bool)

(assert (=> b!2581190 m!2917779))

(assert (=> b!2580956 m!2917479))

(declare-fun b!2581191 () Bool)

(declare-fun tp!819462 () Bool)

(declare-fun tp!819461 () Bool)

(declare-fun e!1628712 () Bool)

(assert (=> b!2581191 (= e!1628712 (and (inv!40094 (left!22639 (c!416023 x!464872))) tp!819461 (inv!40094 (right!22969 (c!416023 x!464872))) tp!819462))))

(declare-fun b!2581192 () Bool)

(assert (=> b!2581192 (= e!1628712 (inv!40100 (xs!12254 (c!416023 x!464872))))))

(assert (=> b!2580955 (= tp!819442 (and (inv!40094 (c!416023 x!464872)) e!1628712))))

(assert (= (and b!2580955 (is-Node!9270 (c!416023 x!464872))) b!2581191))

(assert (= (and b!2580955 (is-Leaf!14142 (c!416023 x!464872))) b!2581192))

(declare-fun m!2917781 () Bool)

(assert (=> b!2581191 m!2917781))

(declare-fun m!2917783 () Bool)

(assert (=> b!2581191 m!2917783))

(declare-fun m!2917785 () Bool)

(assert (=> b!2581192 m!2917785))

(assert (=> b!2580955 m!2917477))

(push 1)

(assert (not b!2581192))

(assert (not b!2581188))

(assert (not bm!166743))

(assert (not d!731012))

(assert (not b!2581175))

(assert (not b!2581156))

(assert (not d!731016))

(assert (not d!730992))

(assert (not b!2581029))

(assert (not b!2581106))

(assert (not b!2581172))

(assert (not b!2581028))

(assert (not b!2581191))

(assert (not b!2581108))

(assert (not b!2581041))

(assert (not b!2581114))

(assert (not b!2581123))

(assert (not b!2581152))

(assert (not b!2581036))

(assert (not b!2581118))

(assert (not d!730994))

(assert (not b!2581037))

(assert (not b!2581033))

(assert (not b!2581141))

(assert (not b!2581032))

(assert (not b!2581117))

(assert (not b!2581174))

(assert (not b!2581178))

(assert (not bm!166742))

(assert (not b!2581109))

(assert (not b!2580956))

(assert (not d!731000))

(assert (not bm!166744))

(assert (not b!2581107))

(assert (not b!2581177))

(assert (not b!2581143))

(assert (not b!2581113))

(assert (not b!2581158))

(assert (not d!730990))

(assert (not d!731008))

(assert (not d!731006))

(assert (not b!2581180))

(assert (not b!2581187))

(assert (not b!2581189))

(assert (not d!731010))

(assert (not bm!166745))

(assert (not b!2580953))

(assert (not b!2580955))

(assert (not b!2581040))

(assert (not b!2581190))

(assert (not b!2581168))

(assert (not b!2581166))

(assert (not d!731004))

(assert (not b!2581150))

(assert (not b!2581115))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

