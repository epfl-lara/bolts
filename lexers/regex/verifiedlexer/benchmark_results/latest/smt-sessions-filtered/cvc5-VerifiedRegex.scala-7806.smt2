; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!410102 () Bool)

(assert start!410102)

(assert (=> start!410102 true))

(declare-fun b!4272594 () Bool)

(assert (=> b!4272594 true))

(assert (=> b!4272594 true))

(assert (=> b!4272594 true))

(declare-fun b!4272604 () Bool)

(declare-fun e!2652774 () Bool)

(declare-datatypes ((List!47444 0))(
  ( (Nil!47320) (Cons!47320 (h!52740 (_ BitVec 16)) (t!353843 List!47444)) )
))
(declare-datatypes ((IArray!28609 0))(
  ( (IArray!28610 (innerList!14362 List!47444)) )
))
(declare-datatypes ((Conc!14302 0))(
  ( (Node!14302 (left!35198 Conc!14302) (right!35528 Conc!14302) (csize!28834 Int) (cheight!14513 Int)) (Leaf!22109 (xs!17608 IArray!28609) (csize!28835 Int)) (Empty!14302) )
))
(declare-datatypes ((BalanceConc!28114 0))(
  ( (BalanceConc!28115 (c!727060 Conc!14302)) )
))
(declare-fun x!742009 () BalanceConc!28114)

(declare-fun tp!1308269 () Bool)

(declare-fun inv!62503 (Conc!14302) Bool)

(assert (=> b!4272604 (= e!2652774 (and (inv!62503 (c!727060 x!742009)) tp!1308269))))

(declare-datatypes ((StringLiteralValueInjection!132 0))(
  ( (StringLiteralValueInjection!133) )
))
(declare-fun thiss!2587 () StringLiteralValueInjection!132)

(declare-fun inst!1756 () Bool)

(declare-fun inv!62504 (BalanceConc!28114) Bool)

(declare-fun list!17196 (BalanceConc!28114) List!47444)

(declare-datatypes ((TokenValue!8275 0))(
  ( (FloatLiteralValue!16550 (text!58370 List!47444)) (TokenValueExt!8274 (__x!28721 Int)) (Broken!41375 (value!249765 List!47444)) (Object!8398) (End!8275) (Def!8275) (Underscore!8275) (Match!8275) (Else!8275) (Error!8275) (Case!8275) (If!8275) (Extends!8275) (Abstract!8275) (Class!8275) (Val!8275) (DelimiterValue!16550 (del!8335 List!47444)) (KeywordValue!8281 (value!249766 List!47444)) (CommentValue!16550 (value!249767 List!47444)) (WhitespaceValue!16550 (value!249768 List!47444)) (IndentationValue!8275 (value!249769 List!47444)) (String!55302) (Int32!8275) (Broken!41376 (value!249770 List!47444)) (Boolean!8276) (Unit!66253) (OperatorValue!8278 (op!8335 List!47444)) (IdentifierValue!16550 (value!249771 List!47444)) (IdentifierValue!16551 (value!249772 List!47444)) (WhitespaceValue!16551 (value!249773 List!47444)) (True!16550) (False!16550) (Broken!41377 (value!249774 List!47444)) (Broken!41378 (value!249775 List!47444)) (True!16551) (RightBrace!8275) (RightBracket!8275) (Colon!8275) (Null!8275) (Comma!8275) (LeftBracket!8275) (False!16551) (LeftBrace!8275) (ImaginaryLiteralValue!8275 (text!58371 List!47444)) (StringLiteralValue!24825 (value!249776 List!47444)) (EOFValue!8275 (value!249777 List!47444)) (IdentValue!8275 (value!249778 List!47444)) (DelimiterValue!16551 (value!249779 List!47444)) (DedentValue!8275 (value!249780 List!47444)) (NewLineValue!8275 (value!249781 List!47444)) (IntegerValue!24825 (value!249782 (_ BitVec 32)) (text!58372 List!47444)) (IntegerValue!24826 (value!249783 Int) (text!58373 List!47444)) (Times!8275) (Or!8275) (Equal!8275) (Minus!8275) (Broken!41379 (value!249784 List!47444)) (And!8275) (Div!8275) (LessEqual!8275) (Mod!8275) (Concat!21173) (Not!8275) (Plus!8275) (SpaceValue!8275 (value!249785 List!47444)) (IntegerValue!24827 (value!249786 Int) (text!58374 List!47444)) (StringLiteralValue!24826 (text!58375 List!47444)) (FloatLiteralValue!16551 (text!58376 List!47444)) (BytesLiteralValue!8275 (value!249787 List!47444)) (CommentValue!16551 (value!249788 List!47444)) (StringLiteralValue!24827 (value!249789 List!47444)) (ErrorTokenValue!8275 (msg!8336 List!47444)) )
))
(declare-fun toCharacters!11 (StringLiteralValueInjection!132 TokenValue!8275) BalanceConc!28114)

(declare-fun toValue!18 (StringLiteralValueInjection!132 BalanceConc!28114) TokenValue!8275)

(assert (=> start!410102 (= inst!1756 (=> (and (inv!62504 x!742009) e!2652774) (= (list!17196 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!742009))) (list!17196 x!742009))))))

(assert (= start!410102 b!4272604))

(declare-fun m!4866475 () Bool)

(assert (=> b!4272604 m!4866475))

(declare-fun m!4866477 () Bool)

(assert (=> start!410102 m!4866477))

(declare-fun m!4866479 () Bool)

(assert (=> start!410102 m!4866479))

(declare-fun m!4866481 () Bool)

(assert (=> start!410102 m!4866481))

(declare-fun m!4866483 () Bool)

(assert (=> start!410102 m!4866483))

(declare-fun m!4866485 () Bool)

(assert (=> start!410102 m!4866485))

(assert (=> start!410102 m!4866481))

(assert (=> start!410102 m!4866477))

(declare-fun res!1754960 () Bool)

(declare-fun e!2652776 () Bool)

(assert (=> b!4272594 (=> res!1754960 e!2652776)))

(declare-fun x!742010 () BalanceConc!28114)

(declare-fun x!742011 () BalanceConc!28114)

(assert (=> b!4272594 (= res!1754960 (not (= (list!17196 x!742010) (list!17196 x!742011))))))

(declare-fun e!2652775 () Bool)

(declare-fun inst!1757 () Bool)

(declare-fun e!2652777 () Bool)

(assert (=> b!4272594 (= inst!1757 (=> (and (inv!62504 x!742010) e!2652775 (inv!62504 x!742011) e!2652777) e!2652776))))

(declare-fun b!4272605 () Bool)

(assert (=> b!4272605 (= e!2652776 (= (toValue!18 thiss!2587 x!742010) (toValue!18 thiss!2587 x!742011)))))

(declare-fun b!4272606 () Bool)

(declare-fun tp!1308270 () Bool)

(assert (=> b!4272606 (= e!2652775 (and (inv!62503 (c!727060 x!742010)) tp!1308270))))

(declare-fun b!4272607 () Bool)

(declare-fun tp!1308271 () Bool)

(assert (=> b!4272607 (= e!2652777 (and (inv!62503 (c!727060 x!742011)) tp!1308271))))

(assert (= (and b!4272594 (not res!1754960)) b!4272605))

(assert (= b!4272594 b!4272606))

(assert (= b!4272594 b!4272607))

(declare-fun m!4866487 () Bool)

(assert (=> b!4272594 m!4866487))

(declare-fun m!4866489 () Bool)

(assert (=> b!4272594 m!4866489))

(declare-fun m!4866491 () Bool)

(assert (=> b!4272594 m!4866491))

(declare-fun m!4866493 () Bool)

(assert (=> b!4272594 m!4866493))

(declare-fun m!4866495 () Bool)

(assert (=> b!4272605 m!4866495))

(declare-fun m!4866497 () Bool)

(assert (=> b!4272605 m!4866497))

(declare-fun m!4866499 () Bool)

(assert (=> b!4272606 m!4866499))

(declare-fun m!4866501 () Bool)

(assert (=> b!4272607 m!4866501))

(declare-fun bs!601404 () Bool)

(declare-fun neg-inst!1757 () Bool)

(declare-fun s!240068 () Bool)

(assert (= bs!601404 (and neg-inst!1757 s!240068)))

(assert (=> bs!601404 (=> true (= (list!17196 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!742009))) (list!17196 x!742009)))))

(assert (=> m!4866481 m!4866477))

(assert (=> m!4866481 m!4866479))

(assert (=> m!4866481 m!4866483))

(assert (=> m!4866481 s!240068))

(assert (=> m!4866483 s!240068))

(declare-fun bs!601405 () Bool)

(assert (= bs!601405 (and neg-inst!1757 start!410102)))

(assert (=> bs!601405 (= true inst!1756)))

(declare-fun bs!601406 () Bool)

(declare-fun neg-inst!1756 () Bool)

(declare-fun s!240070 () Bool)

(assert (= bs!601406 (and neg-inst!1756 s!240070)))

(declare-fun res!1754961 () Bool)

(declare-fun e!2652778 () Bool)

(assert (=> bs!601406 (=> res!1754961 e!2652778)))

(assert (=> bs!601406 (= res!1754961 (not (= (list!17196 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!742009))) (list!17196 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!742009))))))))

(assert (=> bs!601406 (=> true e!2652778)))

(declare-fun b!4272608 () Bool)

(assert (=> b!4272608 (= e!2652778 (= (toValue!18 thiss!2587 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!742009))) (toValue!18 thiss!2587 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!742009)))))))

(assert (= (and bs!601406 (not res!1754961)) b!4272608))

(assert (=> m!4866479 s!240070))

(assert (=> m!4866479 s!240070))

(declare-fun bs!601407 () Bool)

(declare-fun s!240072 () Bool)

(assert (= bs!601407 (and neg-inst!1756 s!240072)))

(declare-fun res!1754962 () Bool)

(declare-fun e!2652779 () Bool)

(assert (=> bs!601407 (=> res!1754962 e!2652779)))

(assert (=> bs!601407 (= res!1754962 (not (= (list!17196 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!742009))) (list!17196 x!742009))))))

(assert (=> bs!601407 (=> true e!2652779)))

(declare-fun b!4272609 () Bool)

(assert (=> b!4272609 (= e!2652779 (= (toValue!18 thiss!2587 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!742009))) (toValue!18 thiss!2587 x!742009)))))

(assert (= (and bs!601407 (not res!1754962)) b!4272609))

(declare-fun bs!601408 () Bool)

(assert (= bs!601408 (and m!4866481 m!4866479)))

(assert (=> bs!601408 m!4866479))

(assert (=> bs!601408 m!4866483))

(assert (=> bs!601408 s!240072))

(declare-fun bs!601409 () Bool)

(declare-fun s!240074 () Bool)

(assert (= bs!601409 (and neg-inst!1756 s!240074)))

(declare-fun res!1754963 () Bool)

(declare-fun e!2652780 () Bool)

(assert (=> bs!601409 (=> res!1754963 e!2652780)))

(assert (=> bs!601409 (= res!1754963 (not (= (list!17196 x!742009) (list!17196 x!742009))))))

(assert (=> bs!601409 (=> true e!2652780)))

(declare-fun b!4272610 () Bool)

(assert (=> b!4272610 (= e!2652780 (= (toValue!18 thiss!2587 x!742009) (toValue!18 thiss!2587 x!742009)))))

(assert (= (and bs!601409 (not res!1754963)) b!4272610))

(assert (=> m!4866481 m!4866483))

(assert (=> m!4866481 m!4866483))

(assert (=> m!4866481 s!240074))

(declare-fun bs!601410 () Bool)

(declare-fun s!240076 () Bool)

(assert (= bs!601410 (and neg-inst!1756 s!240076)))

(declare-fun res!1754964 () Bool)

(declare-fun e!2652781 () Bool)

(assert (=> bs!601410 (=> res!1754964 e!2652781)))

(assert (=> bs!601410 (= res!1754964 (not (= (list!17196 x!742009) (list!17196 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!742009))))))))

(assert (=> bs!601410 (=> true e!2652781)))

(declare-fun b!4272611 () Bool)

(assert (=> b!4272611 (= e!2652781 (= (toValue!18 thiss!2587 x!742009) (toValue!18 thiss!2587 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!742009)))))))

(assert (= (and bs!601410 (not res!1754964)) b!4272611))

(assert (=> bs!601408 m!4866483))

(assert (=> bs!601408 m!4866479))

(assert (=> bs!601408 s!240076))

(assert (=> m!4866481 s!240074))

(declare-fun bs!601411 () Bool)

(declare-fun s!240078 () Bool)

(assert (= bs!601411 (and neg-inst!1756 s!240078)))

(declare-fun res!1754965 () Bool)

(declare-fun e!2652782 () Bool)

(assert (=> bs!601411 (=> res!1754965 e!2652782)))

(assert (=> bs!601411 (= res!1754965 (not (= (list!17196 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!742009))) (list!17196 x!742011))))))

(assert (=> bs!601411 (=> true e!2652782)))

(declare-fun b!4272612 () Bool)

(assert (=> b!4272612 (= e!2652782 (= (toValue!18 thiss!2587 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!742009))) (toValue!18 thiss!2587 x!742011)))))

(assert (= (and bs!601411 (not res!1754965)) b!4272612))

(declare-fun bs!601412 () Bool)

(assert (= bs!601412 (and m!4866489 m!4866479)))

(assert (=> bs!601412 m!4866479))

(assert (=> bs!601412 m!4866489))

(assert (=> bs!601412 s!240078))

(declare-fun bs!601413 () Bool)

(declare-fun s!240080 () Bool)

(assert (= bs!601413 (and neg-inst!1756 s!240080)))

(declare-fun res!1754966 () Bool)

(declare-fun e!2652783 () Bool)

(assert (=> bs!601413 (=> res!1754966 e!2652783)))

(assert (=> bs!601413 (= res!1754966 (not (= (list!17196 x!742009) (list!17196 x!742011))))))

(assert (=> bs!601413 (=> true e!2652783)))

(declare-fun b!4272613 () Bool)

(assert (=> b!4272613 (= e!2652783 (= (toValue!18 thiss!2587 x!742009) (toValue!18 thiss!2587 x!742011)))))

(assert (= (and bs!601413 (not res!1754966)) b!4272613))

(declare-fun bs!601414 () Bool)

(assert (= bs!601414 (and m!4866489 m!4866481)))

(assert (=> bs!601414 m!4866483))

(assert (=> bs!601414 m!4866489))

(assert (=> bs!601414 s!240080))

(declare-fun bs!601415 () Bool)

(declare-fun s!240082 () Bool)

(assert (= bs!601415 (and neg-inst!1756 s!240082)))

(declare-fun res!1754967 () Bool)

(declare-fun e!2652784 () Bool)

(assert (=> bs!601415 (=> res!1754967 e!2652784)))

(assert (=> bs!601415 (= res!1754967 (not (= (list!17196 x!742011) (list!17196 x!742011))))))

(assert (=> bs!601415 (=> true e!2652784)))

(declare-fun b!4272614 () Bool)

(assert (=> b!4272614 (= e!2652784 (= (toValue!18 thiss!2587 x!742011) (toValue!18 thiss!2587 x!742011)))))

(assert (= (and bs!601415 (not res!1754967)) b!4272614))

(assert (=> m!4866489 s!240082))

(declare-fun bs!601416 () Bool)

(declare-fun s!240084 () Bool)

(assert (= bs!601416 (and neg-inst!1756 s!240084)))

(declare-fun res!1754968 () Bool)

(declare-fun e!2652785 () Bool)

(assert (=> bs!601416 (=> res!1754968 e!2652785)))

(assert (=> bs!601416 (= res!1754968 (not (= (list!17196 x!742011) (list!17196 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!742009))))))))

(assert (=> bs!601416 (=> true e!2652785)))

(declare-fun b!4272615 () Bool)

(assert (=> b!4272615 (= e!2652785 (= (toValue!18 thiss!2587 x!742011) (toValue!18 thiss!2587 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!742009)))))))

(assert (= (and bs!601416 (not res!1754968)) b!4272615))

(assert (=> bs!601412 m!4866489))

(assert (=> bs!601412 m!4866479))

(assert (=> bs!601412 s!240084))

(declare-fun bs!601417 () Bool)

(declare-fun s!240086 () Bool)

(assert (= bs!601417 (and neg-inst!1756 s!240086)))

(declare-fun res!1754969 () Bool)

(declare-fun e!2652786 () Bool)

(assert (=> bs!601417 (=> res!1754969 e!2652786)))

(assert (=> bs!601417 (= res!1754969 (not (= (list!17196 x!742011) (list!17196 x!742009))))))

(assert (=> bs!601417 (=> true e!2652786)))

(declare-fun b!4272616 () Bool)

(assert (=> b!4272616 (= e!2652786 (= (toValue!18 thiss!2587 x!742011) (toValue!18 thiss!2587 x!742009)))))

(assert (= (and bs!601417 (not res!1754969)) b!4272616))

(assert (=> bs!601414 m!4866489))

(assert (=> bs!601414 m!4866483))

(assert (=> bs!601414 s!240086))

(assert (=> m!4866489 s!240082))

(declare-fun bs!601418 () Bool)

(declare-fun s!240088 () Bool)

(assert (= bs!601418 (and neg-inst!1756 s!240088)))

(declare-fun res!1754970 () Bool)

(declare-fun e!2652787 () Bool)

(assert (=> bs!601418 (=> res!1754970 e!2652787)))

(assert (=> bs!601418 (= res!1754970 (not (= (list!17196 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!742009))) (list!17196 x!742010))))))

(assert (=> bs!601418 (=> true e!2652787)))

(declare-fun b!4272617 () Bool)

(assert (=> b!4272617 (= e!2652787 (= (toValue!18 thiss!2587 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!742009))) (toValue!18 thiss!2587 x!742010)))))

(assert (= (and bs!601418 (not res!1754970)) b!4272617))

(declare-fun bs!601419 () Bool)

(assert (= bs!601419 (and m!4866495 m!4866479)))

(assert (=> bs!601419 m!4866479))

(assert (=> bs!601419 m!4866487))

(assert (=> bs!601419 s!240088))

(declare-fun bs!601420 () Bool)

(declare-fun s!240090 () Bool)

(assert (= bs!601420 (and neg-inst!1756 s!240090)))

(declare-fun res!1754971 () Bool)

(declare-fun e!2652788 () Bool)

(assert (=> bs!601420 (=> res!1754971 e!2652788)))

(assert (=> bs!601420 (= res!1754971 (not (= (list!17196 x!742009) (list!17196 x!742010))))))

(assert (=> bs!601420 (=> true e!2652788)))

(declare-fun b!4272618 () Bool)

(assert (=> b!4272618 (= e!2652788 (= (toValue!18 thiss!2587 x!742009) (toValue!18 thiss!2587 x!742010)))))

(assert (= (and bs!601420 (not res!1754971)) b!4272618))

(declare-fun bs!601421 () Bool)

(assert (= bs!601421 (and m!4866495 m!4866481)))

(assert (=> bs!601421 m!4866483))

(assert (=> bs!601421 m!4866487))

(assert (=> bs!601421 s!240090))

(declare-fun bs!601422 () Bool)

(declare-fun s!240092 () Bool)

(assert (= bs!601422 (and neg-inst!1756 s!240092)))

(declare-fun res!1754972 () Bool)

(declare-fun e!2652789 () Bool)

(assert (=> bs!601422 (=> res!1754972 e!2652789)))

(assert (=> bs!601422 (= res!1754972 (not (= (list!17196 x!742011) (list!17196 x!742010))))))

(assert (=> bs!601422 (=> true e!2652789)))

(declare-fun b!4272619 () Bool)

(assert (=> b!4272619 (= e!2652789 (= (toValue!18 thiss!2587 x!742011) (toValue!18 thiss!2587 x!742010)))))

(assert (= (and bs!601422 (not res!1754972)) b!4272619))

(declare-fun bs!601423 () Bool)

(assert (= bs!601423 (and m!4866495 m!4866489)))

(assert (=> bs!601423 m!4866489))

(assert (=> bs!601423 m!4866487))

(assert (=> bs!601423 s!240092))

(declare-fun bs!601424 () Bool)

(declare-fun s!240094 () Bool)

(assert (= bs!601424 (and neg-inst!1756 s!240094)))

(declare-fun res!1754973 () Bool)

(declare-fun e!2652790 () Bool)

(assert (=> bs!601424 (=> res!1754973 e!2652790)))

(assert (=> bs!601424 (= res!1754973 (not (= (list!17196 x!742010) (list!17196 x!742010))))))

(assert (=> bs!601424 (=> true e!2652790)))

(declare-fun b!4272620 () Bool)

(assert (=> b!4272620 (= e!2652790 (= (toValue!18 thiss!2587 x!742010) (toValue!18 thiss!2587 x!742010)))))

(assert (= (and bs!601424 (not res!1754973)) b!4272620))

(assert (=> m!4866495 m!4866487))

(assert (=> m!4866495 m!4866487))

(assert (=> m!4866495 s!240094))

(declare-fun bs!601425 () Bool)

(declare-fun s!240096 () Bool)

(assert (= bs!601425 (and neg-inst!1756 s!240096)))

(declare-fun res!1754974 () Bool)

(declare-fun e!2652791 () Bool)

(assert (=> bs!601425 (=> res!1754974 e!2652791)))

(assert (=> bs!601425 (= res!1754974 (not (= (list!17196 x!742010) (list!17196 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!742009))))))))

(assert (=> bs!601425 (=> true e!2652791)))

(declare-fun b!4272621 () Bool)

(assert (=> b!4272621 (= e!2652791 (= (toValue!18 thiss!2587 x!742010) (toValue!18 thiss!2587 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!742009)))))))

(assert (= (and bs!601425 (not res!1754974)) b!4272621))

(assert (=> bs!601419 m!4866487))

(assert (=> bs!601419 m!4866479))

(assert (=> bs!601419 s!240096))

(declare-fun bs!601426 () Bool)

(declare-fun s!240098 () Bool)

(assert (= bs!601426 (and neg-inst!1756 s!240098)))

(declare-fun res!1754975 () Bool)

(declare-fun e!2652792 () Bool)

(assert (=> bs!601426 (=> res!1754975 e!2652792)))

(assert (=> bs!601426 (= res!1754975 (not (= (list!17196 x!742010) (list!17196 x!742009))))))

(assert (=> bs!601426 (=> true e!2652792)))

(declare-fun b!4272622 () Bool)

(assert (=> b!4272622 (= e!2652792 (= (toValue!18 thiss!2587 x!742010) (toValue!18 thiss!2587 x!742009)))))

(assert (= (and bs!601426 (not res!1754975)) b!4272622))

(assert (=> bs!601421 m!4866487))

(assert (=> bs!601421 m!4866483))

(assert (=> bs!601421 s!240098))

(declare-fun bs!601427 () Bool)

(declare-fun s!240100 () Bool)

(assert (= bs!601427 (and neg-inst!1756 s!240100)))

(declare-fun res!1754976 () Bool)

(declare-fun e!2652793 () Bool)

(assert (=> bs!601427 (=> res!1754976 e!2652793)))

(assert (=> bs!601427 (= res!1754976 (not (= (list!17196 x!742010) (list!17196 x!742011))))))

(assert (=> bs!601427 (=> true e!2652793)))

(declare-fun b!4272623 () Bool)

(assert (=> b!4272623 (= e!2652793 (= (toValue!18 thiss!2587 x!742010) (toValue!18 thiss!2587 x!742011)))))

(assert (= (and bs!601427 (not res!1754976)) b!4272623))

(assert (=> bs!601423 m!4866487))

(assert (=> bs!601423 m!4866489))

(assert (=> bs!601423 s!240100))

(assert (=> m!4866495 s!240094))

(declare-fun bs!601428 () Bool)

(assert (= bs!601428 (and m!4866487 m!4866489)))

(assert (=> bs!601428 s!240092))

(declare-fun bs!601429 () Bool)

(assert (= bs!601429 (and m!4866487 m!4866495)))

(assert (=> bs!601429 s!240094))

(declare-fun bs!601430 () Bool)

(assert (= bs!601430 (and m!4866487 m!4866479)))

(assert (=> bs!601430 s!240088))

(assert (=> m!4866487 s!240094))

(declare-fun bs!601431 () Bool)

(assert (= bs!601431 (and m!4866487 m!4866481)))

(assert (=> bs!601431 s!240090))

(assert (=> bs!601430 s!240096))

(assert (=> bs!601431 s!240098))

(assert (=> bs!601429 s!240094))

(assert (=> bs!601428 s!240100))

(assert (=> m!4866487 s!240094))

(declare-fun bs!601432 () Bool)

(assert (= bs!601432 (and m!4866483 m!4866489)))

(assert (=> bs!601432 s!240086))

(declare-fun bs!601433 () Bool)

(assert (= bs!601433 (and m!4866483 m!4866481)))

(assert (=> bs!601433 s!240074))

(assert (=> m!4866483 s!240074))

(declare-fun bs!601434 () Bool)

(assert (= bs!601434 (and m!4866483 m!4866495 m!4866487)))

(assert (=> bs!601434 s!240098))

(declare-fun bs!601435 () Bool)

(assert (= bs!601435 (and m!4866483 m!4866479)))

(assert (=> bs!601435 s!240072))

(assert (=> bs!601435 s!240076))

(assert (=> bs!601432 s!240080))

(assert (=> m!4866483 s!240074))

(assert (=> bs!601434 s!240090))

(assert (=> bs!601433 s!240074))

(declare-fun bs!601436 () Bool)

(assert (= bs!601436 (and m!4866497 m!4866479)))

(assert (=> bs!601436 s!240078))

(declare-fun bs!601437 () Bool)

(assert (= bs!601437 (and m!4866497 m!4866489)))

(assert (=> bs!601437 s!240082))

(declare-fun bs!601438 () Bool)

(assert (= bs!601438 (and m!4866497 m!4866481 m!4866483)))

(assert (=> bs!601438 s!240080))

(declare-fun bs!601439 () Bool)

(assert (= bs!601439 (and m!4866497 m!4866495 m!4866487)))

(assert (=> bs!601439 s!240100))

(assert (=> m!4866497 s!240082))

(assert (=> bs!601436 s!240084))

(assert (=> bs!601438 s!240086))

(assert (=> bs!601437 s!240082))

(assert (=> bs!601439 s!240092))

(assert (=> m!4866497 s!240082))

(declare-fun bs!601440 () Bool)

(assert (= bs!601440 (and neg-inst!1756 b!4272594)))

(assert (=> bs!601440 (= true inst!1757)))

(declare-fun res!1754958 () Bool)

(declare-fun e!2652773 () Bool)

(assert (=> start!410102 (=> res!1754958 e!2652773)))

(declare-fun lambda!131083 () Int)

(declare-fun Forall!1647 (Int) Bool)

(assert (=> start!410102 (= res!1754958 (not (Forall!1647 lambda!131083)))))

(assert (=> start!410102 (= (Forall!1647 lambda!131083) inst!1756)))

(assert (=> start!410102 (not e!2652773)))

(assert (=> start!410102 true))

(declare-fun e!2652772 () Bool)

(assert (=> b!4272594 (= e!2652773 e!2652772)))

(declare-fun res!1754959 () Bool)

(assert (=> b!4272594 (=> res!1754959 e!2652772)))

(declare-fun lambda!131086 () Int)

(declare-fun Forall2!1232 (Int) Bool)

(assert (=> b!4272594 (= res!1754959 (not (Forall2!1232 lambda!131086)))))

(assert (=> b!4272594 (= (Forall2!1232 lambda!131086) inst!1757)))

(declare-fun lambda!131084 () Int)

(declare-fun lambda!131085 () Int)

(declare-fun semiInverseModEq!3517 (Int Int) Bool)

(assert (=> b!4272594 (= (semiInverseModEq!3517 lambda!131084 lambda!131085) (Forall!1647 lambda!131083))))

(declare-fun b!4272595 () Bool)

(declare-datatypes ((TokenValueInjection!15898 0))(
  ( (TokenValueInjection!15899 (toValue!10818 Int) (toChars!10677 Int)) )
))
(declare-fun inv!62505 (TokenValueInjection!15898) Bool)

(assert (=> b!4272595 (= e!2652772 (inv!62505 (TokenValueInjection!15899 lambda!131085 lambda!131084)))))

(declare-fun equivClasses!3402 (Int Int) Bool)

(assert (=> b!4272595 (= (equivClasses!3402 lambda!131084 lambda!131085) (Forall2!1232 lambda!131086))))

(assert (= neg-inst!1757 inst!1756))

(assert (= (and start!410102 (not res!1754958)) b!4272594))

(assert (= neg-inst!1756 inst!1757))

(assert (= (and b!4272594 (not res!1754959)) b!4272595))

(declare-fun m!4866503 () Bool)

(assert (=> start!410102 m!4866503))

(assert (=> start!410102 m!4866503))

(declare-fun m!4866505 () Bool)

(assert (=> b!4272594 m!4866505))

(assert (=> b!4272594 m!4866505))

(declare-fun m!4866507 () Bool)

(assert (=> b!4272594 m!4866507))

(assert (=> b!4272594 m!4866503))

(declare-fun m!4866509 () Bool)

(assert (=> b!4272595 m!4866509))

(declare-fun m!4866511 () Bool)

(assert (=> b!4272595 m!4866511))

(assert (=> b!4272595 m!4866505))

(push 1)

(assert (not b!4272594))

(assert (not bs!601424))

(assert (not bs!601407))

(assert (not bs!601425))

(assert (not bs!601426))

(assert (not b!4272595))

(assert (not b!4272608))

(assert (not b!4272610))

(assert (not b!4272623))

(assert (not b!4272622))

(assert (not bs!601417))

(assert (not b!4272605))

(assert (not b!4272612))

(assert (not b!4272613))

(assert (not b!4272607))

(assert (not bs!601409))

(assert (not b!4272617))

(assert (not b!4272618))

(assert (not bs!601418))

(assert (not b!4272606))

(assert (not bs!601404))

(assert (not bs!601413))

(assert (not bs!601416))

(assert (not b!4272604))

(assert (not b!4272620))

(assert (not b!4272609))

(assert (not bs!601415))

(assert (not b!4272616))

(assert (not bs!601410))

(assert (not bs!601420))

(assert (not b!4272614))

(assert (not bs!601406))

(assert (not start!410102))

(assert (not b!4272615))

(assert (not bs!601411))

(assert (not bs!601427))

(assert (not b!4272621))

(assert (not bs!601422))

(assert (not b!4272619))

(assert (not b!4272611))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!601476 () Bool)

(assert (= bs!601476 (and m!4866479 b!4272608)))

(declare-fun m!4866551 () Bool)

(assert (=> bs!601476 m!4866551))

(assert (=> bs!601476 m!4866551))

(declare-fun bs!601477 () Bool)

(assert (= bs!601477 (and m!4866481 m!4866479 b!4272609)))

(assert (=> bs!601477 m!4866551))

(assert (=> bs!601477 m!4866481))

(declare-fun bs!601478 () Bool)

(assert (= bs!601478 (and m!4866481 b!4272610)))

(assert (=> bs!601478 m!4866481))

(assert (=> bs!601478 m!4866481))

(declare-fun bs!601479 () Bool)

(assert (= bs!601479 (and m!4866481 m!4866479 b!4272611)))

(assert (=> bs!601479 m!4866481))

(assert (=> bs!601479 m!4866551))

(declare-fun bs!601480 () Bool)

(assert (= bs!601480 (and m!4866489 m!4866479 b!4272612)))

(assert (=> bs!601480 m!4866551))

(assert (=> bs!601480 m!4866497))

(declare-fun bs!601481 () Bool)

(assert (= bs!601481 (and m!4866489 m!4866481 b!4272613)))

(assert (=> bs!601481 m!4866481))

(assert (=> bs!601481 m!4866497))

(declare-fun bs!601482 () Bool)

(assert (= bs!601482 (and m!4866489 b!4272614)))

(assert (=> bs!601482 m!4866497))

(assert (=> bs!601482 m!4866497))

(declare-fun bs!601483 () Bool)

(assert (= bs!601483 (and m!4866489 m!4866479 b!4272615)))

(assert (=> bs!601483 m!4866497))

(assert (=> bs!601483 m!4866551))

(declare-fun bs!601484 () Bool)

(assert (= bs!601484 (and m!4866489 m!4866481 b!4272616)))

(assert (=> bs!601484 m!4866497))

(assert (=> bs!601484 m!4866481))

(declare-fun bs!601485 () Bool)

(assert (= bs!601485 (and m!4866495 m!4866479 b!4272617)))

(assert (=> bs!601485 m!4866551))

(assert (=> bs!601485 m!4866495))

(declare-fun bs!601486 () Bool)

(assert (= bs!601486 (and m!4866495 m!4866481 b!4272618)))

(assert (=> bs!601486 m!4866481))

(assert (=> bs!601486 m!4866495))

(declare-fun bs!601487 () Bool)

(assert (= bs!601487 (and m!4866495 m!4866489 b!4272619)))

(assert (=> bs!601487 m!4866497))

(assert (=> bs!601487 m!4866495))

(declare-fun bs!601488 () Bool)

(assert (= bs!601488 (and m!4866495 b!4272620)))

(assert (=> bs!601488 m!4866495))

(assert (=> bs!601488 m!4866495))

(declare-fun bs!601489 () Bool)

(assert (= bs!601489 (and m!4866495 m!4866479 b!4272621)))

(assert (=> bs!601489 m!4866495))

(assert (=> bs!601489 m!4866551))

(declare-fun bs!601490 () Bool)

(assert (= bs!601490 (and m!4866495 m!4866481 b!4272622)))

(assert (=> bs!601490 m!4866495))

(assert (=> bs!601490 m!4866481))

(declare-fun bs!601491 () Bool)

(assert (= bs!601491 (and m!4866495 m!4866489 b!4272623)))

(assert (=> bs!601491 m!4866495))

(assert (=> bs!601491 m!4866497))

(push 1)

(assert (not b!4272594))

(assert (not bs!601424))

(assert (not bs!601407))

(assert (not bs!601425))

(assert (not bs!601426))

(assert (not b!4272595))

(assert (not b!4272608))

(assert (not b!4272610))

(assert (not b!4272623))

(assert (not b!4272622))

(assert (not bs!601417))

(assert (not b!4272605))

(assert (not b!4272612))

(assert (not b!4272613))

(assert (not b!4272607))

(assert (not bs!601409))

(assert (not b!4272617))

(assert (not b!4272618))

(assert (not bs!601418))

(assert (not b!4272606))

(assert (not bs!601404))

(assert (not bs!601413))

(assert (not bs!601416))

(assert (not b!4272604))

(assert (not b!4272620))

(assert (not b!4272609))

(assert (not bs!601415))

(assert (not b!4272616))

(assert (not bs!601410))

(assert (not bs!601420))

(assert (not b!4272614))

(assert (not bs!601406))

(assert (not start!410102))

(assert (not b!4272615))

(assert (not bs!601411))

(assert (not bs!601427))

(assert (not b!4272621))

(assert (not bs!601422))

(assert (not b!4272619))

(assert (not b!4272611))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1260433 () Bool)

(declare-fun list!17199 (Conc!14302) List!47444)

(assert (=> d!1260433 (= (list!17196 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!742009))) (list!17199 (c!727060 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!742009)))))))

(declare-fun bs!601492 () Bool)

(assert (= bs!601492 d!1260433))

(declare-fun m!4866553 () Bool)

(assert (=> bs!601492 m!4866553))

(assert (=> bs!601418 d!1260433))

(declare-fun d!1260437 () Bool)

(assert (=> d!1260437 (= (list!17196 x!742010) (list!17199 (c!727060 x!742010)))))

(declare-fun bs!601493 () Bool)

(assert (= bs!601493 d!1260437))

(declare-fun m!4866555 () Bool)

(assert (=> bs!601493 m!4866555))

(assert (=> bs!601418 d!1260437))

(assert (=> bs!601424 d!1260437))

(declare-fun d!1260439 () Bool)

(assert (=> d!1260439 (= (list!17196 x!742009) (list!17199 (c!727060 x!742009)))))

(declare-fun bs!601494 () Bool)

(assert (= bs!601494 d!1260439))

(declare-fun m!4866557 () Bool)

(assert (=> bs!601494 m!4866557))

(assert (=> bs!601409 d!1260439))

(declare-fun d!1260441 () Bool)

(declare-fun efficientList!535 (BalanceConc!28114) List!47444)

(assert (=> d!1260441 (= (toValue!18 thiss!2587 x!742009) (StringLiteralValue!24827 (efficientList!535 x!742009)))))

(declare-fun bs!601495 () Bool)

(assert (= bs!601495 d!1260441))

(declare-fun m!4866559 () Bool)

(assert (=> bs!601495 m!4866559))

(assert (=> b!4272613 d!1260441))

(declare-fun d!1260443 () Bool)

(assert (=> d!1260443 (= (toValue!18 thiss!2587 x!742011) (StringLiteralValue!24827 (efficientList!535 x!742011)))))

(declare-fun bs!601496 () Bool)

(assert (= bs!601496 d!1260443))

(declare-fun m!4866561 () Bool)

(assert (=> bs!601496 m!4866561))

(assert (=> b!4272613 d!1260443))

(declare-fun d!1260445 () Bool)

(assert (=> d!1260445 (= (toValue!18 thiss!2587 x!742010) (StringLiteralValue!24827 (efficientList!535 x!742010)))))

(declare-fun bs!601497 () Bool)

(assert (= bs!601497 d!1260445))

(declare-fun m!4866563 () Bool)

(assert (=> bs!601497 m!4866563))

(assert (=> b!4272623 d!1260445))

(assert (=> b!4272623 d!1260443))

(assert (=> b!4272616 d!1260443))

(assert (=> b!4272616 d!1260441))

(assert (=> b!4272619 d!1260443))

(assert (=> b!4272619 d!1260445))

(assert (=> bs!601413 d!1260439))

(declare-fun d!1260447 () Bool)

(assert (=> d!1260447 (= (list!17196 x!742011) (list!17199 (c!727060 x!742011)))))

(declare-fun bs!601498 () Bool)

(assert (= bs!601498 d!1260447))

(declare-fun m!4866565 () Bool)

(assert (=> bs!601498 m!4866565))

(assert (=> bs!601413 d!1260447))

(assert (=> bs!601427 d!1260437))

(assert (=> bs!601427 d!1260447))

(declare-fun d!1260449 () Bool)

(declare-fun c!727064 () Bool)

(assert (=> d!1260449 (= c!727064 (is-Node!14302 (c!727060 x!742011)))))

(declare-fun e!2652840 () Bool)

(assert (=> d!1260449 (= (inv!62503 (c!727060 x!742011)) e!2652840)))

(declare-fun b!4272680 () Bool)

(declare-fun inv!62509 (Conc!14302) Bool)

(assert (=> b!4272680 (= e!2652840 (inv!62509 (c!727060 x!742011)))))

(declare-fun b!4272681 () Bool)

(declare-fun e!2652841 () Bool)

(assert (=> b!4272681 (= e!2652840 e!2652841)))

(declare-fun res!1755018 () Bool)

(assert (=> b!4272681 (= res!1755018 (not (is-Leaf!22109 (c!727060 x!742011))))))

(assert (=> b!4272681 (=> res!1755018 e!2652841)))

(declare-fun b!4272682 () Bool)

(declare-fun inv!62510 (Conc!14302) Bool)

(assert (=> b!4272682 (= e!2652841 (inv!62510 (c!727060 x!742011)))))

(assert (= (and d!1260449 c!727064) b!4272680))

(assert (= (and d!1260449 (not c!727064)) b!4272681))

(assert (= (and b!4272681 (not res!1755018)) b!4272682))

(declare-fun m!4866567 () Bool)

(assert (=> b!4272680 m!4866567))

(declare-fun m!4866569 () Bool)

(assert (=> b!4272682 m!4866569))

(assert (=> b!4272607 d!1260449))

(assert (=> bs!601425 d!1260437))

(assert (=> bs!601425 d!1260433))

(assert (=> bs!601410 d!1260439))

(assert (=> bs!601410 d!1260433))

(declare-fun d!1260451 () Bool)

(declare-fun c!727065 () Bool)

(assert (=> d!1260451 (= c!727065 (is-Node!14302 (c!727060 x!742010)))))

(declare-fun e!2652842 () Bool)

(assert (=> d!1260451 (= (inv!62503 (c!727060 x!742010)) e!2652842)))

(declare-fun b!4272683 () Bool)

(assert (=> b!4272683 (= e!2652842 (inv!62509 (c!727060 x!742010)))))

(declare-fun b!4272684 () Bool)

(declare-fun e!2652843 () Bool)

(assert (=> b!4272684 (= e!2652842 e!2652843)))

(declare-fun res!1755019 () Bool)

(assert (=> b!4272684 (= res!1755019 (not (is-Leaf!22109 (c!727060 x!742010))))))

(assert (=> b!4272684 (=> res!1755019 e!2652843)))

(declare-fun b!4272685 () Bool)

(assert (=> b!4272685 (= e!2652843 (inv!62510 (c!727060 x!742010)))))

(assert (= (and d!1260451 c!727065) b!4272683))

(assert (= (and d!1260451 (not c!727065)) b!4272684))

(assert (= (and b!4272684 (not res!1755019)) b!4272685))

(declare-fun m!4866571 () Bool)

(assert (=> b!4272683 m!4866571))

(declare-fun m!4866573 () Bool)

(assert (=> b!4272685 m!4866573))

(assert (=> b!4272606 d!1260451))

(declare-fun d!1260453 () Bool)

(declare-fun c!727066 () Bool)

(assert (=> d!1260453 (= c!727066 (is-Node!14302 (c!727060 x!742009)))))

(declare-fun e!2652844 () Bool)

(assert (=> d!1260453 (= (inv!62503 (c!727060 x!742009)) e!2652844)))

(declare-fun b!4272686 () Bool)

(assert (=> b!4272686 (= e!2652844 (inv!62509 (c!727060 x!742009)))))

(declare-fun b!4272687 () Bool)

(declare-fun e!2652845 () Bool)

(assert (=> b!4272687 (= e!2652844 e!2652845)))

(declare-fun res!1755020 () Bool)

(assert (=> b!4272687 (= res!1755020 (not (is-Leaf!22109 (c!727060 x!742009))))))

(assert (=> b!4272687 (=> res!1755020 e!2652845)))

(declare-fun b!4272688 () Bool)

(assert (=> b!4272688 (= e!2652845 (inv!62510 (c!727060 x!742009)))))

(assert (= (and d!1260453 c!727066) b!4272686))

(assert (= (and d!1260453 (not c!727066)) b!4272687))

(assert (= (and b!4272687 (not res!1755020)) b!4272688))

(declare-fun m!4866575 () Bool)

(assert (=> b!4272686 m!4866575))

(declare-fun m!4866577 () Bool)

(assert (=> b!4272688 m!4866577))

(assert (=> b!4272604 d!1260453))

(assert (=> b!4272620 d!1260445))

(assert (=> b!4272605 d!1260445))

(assert (=> b!4272605 d!1260443))

(assert (=> bs!601415 d!1260447))

(assert (=> bs!601404 d!1260433))

(declare-fun d!1260455 () Bool)

(declare-fun c!727070 () Bool)

(assert (=> d!1260455 (= c!727070 (is-StringLiteralValue!24827 (toValue!18 thiss!2587 x!742009)))))

(declare-fun e!2652848 () BalanceConc!28114)

(assert (=> d!1260455 (= (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!742009)) e!2652848)))

(declare-fun b!4272693 () Bool)

(declare-fun seqFromList!5878 (List!47444) BalanceConc!28114)

(assert (=> b!4272693 (= e!2652848 (seqFromList!5878 (value!249789 (toValue!18 thiss!2587 x!742009))))))

(declare-fun b!4272694 () Bool)

(assert (=> b!4272694 (= e!2652848 (BalanceConc!28115 Empty!14302))))

(assert (= (and d!1260455 c!727070) b!4272693))

(assert (= (and d!1260455 (not c!727070)) b!4272694))

(declare-fun m!4866589 () Bool)

(assert (=> b!4272693 m!4866589))

(assert (=> bs!601404 d!1260455))

(assert (=> bs!601404 d!1260441))

(assert (=> bs!601404 d!1260439))

(declare-fun d!1260463 () Bool)

(assert (=> d!1260463 (= (toValue!18 thiss!2587 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!742009))) (StringLiteralValue!24827 (efficientList!535 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!742009)))))))

(declare-fun bs!601507 () Bool)

(assert (= bs!601507 d!1260463))

(assert (=> bs!601507 m!4866477))

(declare-fun m!4866591 () Bool)

(assert (=> bs!601507 m!4866591))

(assert (=> b!4272617 d!1260463))

(assert (=> b!4272617 d!1260445))

(assert (=> b!4272610 d!1260441))

(assert (=> bs!601411 d!1260433))

(assert (=> bs!601411 d!1260447))

(assert (=> start!410102 d!1260433))

(assert (=> start!410102 d!1260441))

(assert (=> start!410102 d!1260455))

(assert (=> start!410102 d!1260439))

(declare-fun d!1260465 () Bool)

(declare-fun choose!26054 (Int) Bool)

(assert (=> d!1260465 (= (Forall!1647 lambda!131083) (choose!26054 lambda!131083))))

(declare-fun bs!601516 () Bool)

(assert (= bs!601516 d!1260465))

(declare-fun m!4866593 () Bool)

(assert (=> bs!601516 m!4866593))

(assert (=> start!410102 d!1260465))

(declare-fun d!1260467 () Bool)

(declare-fun isBalanced!3849 (Conc!14302) Bool)

(assert (=> d!1260467 (= (inv!62504 x!742009) (isBalanced!3849 (c!727060 x!742009)))))

(declare-fun bs!601521 () Bool)

(assert (= bs!601521 d!1260467))

(declare-fun m!4866595 () Bool)

(assert (=> bs!601521 m!4866595))

(assert (=> start!410102 d!1260467))

(assert (=> bs!601416 d!1260447))

(assert (=> bs!601416 d!1260433))

(assert (=> b!4272618 d!1260441))

(assert (=> b!4272618 d!1260445))

(assert (=> b!4272608 d!1260463))

(assert (=> b!4272611 d!1260441))

(assert (=> b!4272611 d!1260463))

(assert (=> b!4272621 d!1260445))

(assert (=> b!4272621 d!1260463))

(declare-fun d!1260469 () Bool)

(declare-fun res!1755023 () Bool)

(declare-fun e!2652851 () Bool)

(assert (=> d!1260469 (=> (not res!1755023) (not e!2652851))))

(assert (=> d!1260469 (= res!1755023 (semiInverseModEq!3517 (toChars!10677 (TokenValueInjection!15899 lambda!131085 lambda!131084)) (toValue!10818 (TokenValueInjection!15899 lambda!131085 lambda!131084))))))

(assert (=> d!1260469 (= (inv!62505 (TokenValueInjection!15899 lambda!131085 lambda!131084)) e!2652851)))

(declare-fun b!4272697 () Bool)

(assert (=> b!4272697 (= e!2652851 (equivClasses!3402 (toChars!10677 (TokenValueInjection!15899 lambda!131085 lambda!131084)) (toValue!10818 (TokenValueInjection!15899 lambda!131085 lambda!131084))))))

(assert (= (and d!1260469 res!1755023) b!4272697))

(declare-fun m!4866597 () Bool)

(assert (=> d!1260469 m!4866597))

(declare-fun m!4866599 () Bool)

(assert (=> b!4272697 m!4866599))

(assert (=> b!4272595 d!1260469))

(declare-fun bs!601522 () Bool)

(declare-fun d!1260471 () Bool)

(assert (= bs!601522 (and d!1260471 b!4272594)))

(declare-fun lambda!131117 () Int)

(assert (=> bs!601522 (not (= lambda!131117 lambda!131086))))

(assert (=> d!1260471 true))

(declare-fun order!24947 () Int)

(declare-fun order!24945 () Int)

(declare-fun dynLambda!20284 (Int Int) Int)

(declare-fun dynLambda!20285 (Int Int) Int)

(assert (=> d!1260471 (< (dynLambda!20284 order!24945 lambda!131085) (dynLambda!20285 order!24947 lambda!131117))))

(assert (=> d!1260471 (= (equivClasses!3402 lambda!131084 lambda!131085) (Forall2!1232 lambda!131117))))

(declare-fun bs!601523 () Bool)

(assert (= bs!601523 d!1260471))

(declare-fun m!4866601 () Bool)

(assert (=> bs!601523 m!4866601))

(assert (=> b!4272595 d!1260471))

(declare-fun d!1260473 () Bool)

(declare-fun choose!26055 (Int) Bool)

(assert (=> d!1260473 (= (Forall2!1232 lambda!131086) (choose!26055 lambda!131086))))

(declare-fun bs!601524 () Bool)

(assert (= bs!601524 d!1260473))

(declare-fun m!4866603 () Bool)

(assert (=> bs!601524 m!4866603))

(assert (=> b!4272595 d!1260473))

(assert (=> b!4272614 d!1260443))

(assert (=> b!4272594 d!1260447))

(declare-fun bs!601525 () Bool)

(declare-fun d!1260475 () Bool)

(assert (= bs!601525 (and d!1260475 start!410102)))

(declare-fun lambda!131120 () Int)

(assert (=> bs!601525 (not (= lambda!131120 lambda!131083))))

(assert (=> d!1260475 true))

(declare-fun order!24949 () Int)

(declare-fun order!24951 () Int)

(declare-fun dynLambda!20286 (Int Int) Int)

(declare-fun dynLambda!20287 (Int Int) Int)

(assert (=> d!1260475 (< (dynLambda!20286 order!24949 lambda!131084) (dynLambda!20287 order!24951 lambda!131120))))

(assert (=> d!1260475 true))

(assert (=> d!1260475 (< (dynLambda!20284 order!24945 lambda!131085) (dynLambda!20287 order!24951 lambda!131120))))

(assert (=> d!1260475 (= (semiInverseModEq!3517 lambda!131084 lambda!131085) (Forall!1647 lambda!131120))))

(declare-fun bs!601526 () Bool)

(assert (= bs!601526 d!1260475))

(declare-fun m!4866605 () Bool)

(assert (=> bs!601526 m!4866605))

(assert (=> b!4272594 d!1260475))

(assert (=> b!4272594 d!1260465))

(assert (=> b!4272594 d!1260437))

(assert (=> b!4272594 d!1260473))

(declare-fun d!1260477 () Bool)

(assert (=> d!1260477 (= (inv!62504 x!742010) (isBalanced!3849 (c!727060 x!742010)))))

(declare-fun bs!601527 () Bool)

(assert (= bs!601527 d!1260477))

(declare-fun m!4866607 () Bool)

(assert (=> bs!601527 m!4866607))

(assert (=> b!4272594 d!1260477))

(declare-fun d!1260479 () Bool)

(assert (=> d!1260479 (= (inv!62504 x!742011) (isBalanced!3849 (c!727060 x!742011)))))

(declare-fun bs!601528 () Bool)

(assert (= bs!601528 d!1260479))

(declare-fun m!4866609 () Bool)

(assert (=> bs!601528 m!4866609))

(assert (=> b!4272594 d!1260479))

(assert (=> bs!601406 d!1260433))

(assert (=> bs!601420 d!1260439))

(assert (=> bs!601420 d!1260437))

(assert (=> b!4272609 d!1260463))

(assert (=> b!4272609 d!1260441))

(assert (=> b!4272622 d!1260445))

(assert (=> b!4272622 d!1260441))

(assert (=> bs!601417 d!1260447))

(assert (=> bs!601417 d!1260439))

(assert (=> bs!601407 d!1260433))

(assert (=> bs!601407 d!1260439))

(assert (=> bs!601422 d!1260447))

(assert (=> bs!601422 d!1260437))

(assert (=> b!4272612 d!1260463))

(assert (=> b!4272612 d!1260443))

(assert (=> bs!601426 d!1260437))

(assert (=> bs!601426 d!1260439))

(assert (=> b!4272615 d!1260443))

(assert (=> b!4272615 d!1260463))

(declare-fun tp!1308286 () Bool)

(declare-fun e!2652858 () Bool)

(declare-fun b!4272712 () Bool)

(declare-fun tp!1308285 () Bool)

(assert (=> b!4272712 (= e!2652858 (and (inv!62503 (left!35198 (c!727060 x!742011))) tp!1308285 (inv!62503 (right!35528 (c!727060 x!742011))) tp!1308286))))

(declare-fun b!4272713 () Bool)

(declare-fun inv!62511 (IArray!28609) Bool)

(assert (=> b!4272713 (= e!2652858 (inv!62511 (xs!17608 (c!727060 x!742011))))))

(assert (=> b!4272607 (= tp!1308271 (and (inv!62503 (c!727060 x!742011)) e!2652858))))

(assert (= (and b!4272607 (is-Node!14302 (c!727060 x!742011))) b!4272712))

(assert (= (and b!4272607 (is-Leaf!22109 (c!727060 x!742011))) b!4272713))

(declare-fun m!4866611 () Bool)

(assert (=> b!4272712 m!4866611))

(declare-fun m!4866613 () Bool)

(assert (=> b!4272712 m!4866613))

(declare-fun m!4866615 () Bool)

(assert (=> b!4272713 m!4866615))

(assert (=> b!4272607 m!4866501))

(declare-fun e!2652860 () Bool)

(declare-fun tp!1308287 () Bool)

(declare-fun b!4272714 () Bool)

(declare-fun tp!1308288 () Bool)

(assert (=> b!4272714 (= e!2652860 (and (inv!62503 (left!35198 (c!727060 x!742010))) tp!1308287 (inv!62503 (right!35528 (c!727060 x!742010))) tp!1308288))))

(declare-fun b!4272715 () Bool)

(assert (=> b!4272715 (= e!2652860 (inv!62511 (xs!17608 (c!727060 x!742010))))))

(assert (=> b!4272606 (= tp!1308270 (and (inv!62503 (c!727060 x!742010)) e!2652860))))

(assert (= (and b!4272606 (is-Node!14302 (c!727060 x!742010))) b!4272714))

(assert (= (and b!4272606 (is-Leaf!22109 (c!727060 x!742010))) b!4272715))

(declare-fun m!4866617 () Bool)

(assert (=> b!4272714 m!4866617))

(declare-fun m!4866619 () Bool)

(assert (=> b!4272714 m!4866619))

(declare-fun m!4866621 () Bool)

(assert (=> b!4272715 m!4866621))

(assert (=> b!4272606 m!4866499))

(declare-fun tp!1308290 () Bool)

(declare-fun tp!1308289 () Bool)

(declare-fun e!2652862 () Bool)

(declare-fun b!4272716 () Bool)

(assert (=> b!4272716 (= e!2652862 (and (inv!62503 (left!35198 (c!727060 x!742009))) tp!1308289 (inv!62503 (right!35528 (c!727060 x!742009))) tp!1308290))))

(declare-fun b!4272717 () Bool)

(assert (=> b!4272717 (= e!2652862 (inv!62511 (xs!17608 (c!727060 x!742009))))))

(assert (=> b!4272604 (= tp!1308269 (and (inv!62503 (c!727060 x!742009)) e!2652862))))

(assert (= (and b!4272604 (is-Node!14302 (c!727060 x!742009))) b!4272716))

(assert (= (and b!4272604 (is-Leaf!22109 (c!727060 x!742009))) b!4272717))

(declare-fun m!4866623 () Bool)

(assert (=> b!4272716 m!4866623))

(declare-fun m!4866625 () Bool)

(assert (=> b!4272716 m!4866625))

(declare-fun m!4866627 () Bool)

(assert (=> b!4272717 m!4866627))

(assert (=> b!4272604 m!4866475))

(push 1)

(assert (not b!4272607))

(assert (not b!4272714))

(assert (not b!4272715))

(assert (not d!1260477))

(assert (not d!1260441))

(assert (not d!1260439))

(assert (not d!1260443))

(assert (not b!4272604))

(assert (not d!1260479))

(assert (not d!1260445))

(assert (not d!1260465))

(assert (not d!1260463))

(assert (not d!1260473))

(assert (not b!4272716))

(assert (not d!1260475))

(assert (not b!4272717))

(assert (not d!1260471))

(assert (not b!4272686))

(assert (not b!4272697))

(assert (not d!1260433))

(assert (not b!4272606))

(assert (not d!1260437))

(assert (not d!1260447))

(assert (not d!1260467))

(assert (not b!4272683))

(assert (not b!4272680))

(assert (not b!4272685))

(assert (not b!4272688))

(assert (not b!4272712))

(assert (not b!4272682))

(assert (not b!4272713))

(assert (not b!4272693))

(assert (not d!1260469))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

