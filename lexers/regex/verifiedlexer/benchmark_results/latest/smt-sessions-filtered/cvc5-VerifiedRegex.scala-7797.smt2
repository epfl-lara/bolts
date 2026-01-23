; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!409662 () Bool)

(assert start!409662)

(assert (=> start!409662 true))

(declare-fun b!4270856 () Bool)

(assert (=> b!4270856 true))

(assert (=> b!4270856 true))

(assert (=> b!4270856 true))

(declare-fun b!4270865 () Bool)

(declare-fun e!2651653 () Bool)

(declare-datatypes ((List!47426 0))(
  ( (Nil!47302) (Cons!47302 (h!52722 (_ BitVec 16)) (t!353708 List!47426)) )
))
(declare-datatypes ((IArray!28573 0))(
  ( (IArray!28574 (innerList!14344 List!47426)) )
))
(declare-datatypes ((Conc!14284 0))(
  ( (Node!14284 (left!35143 Conc!14284) (right!35473 Conc!14284) (csize!28798 Int) (cheight!14495 Int)) (Leaf!22082 (xs!17590 IArray!28573) (csize!28799 Int)) (Empty!14284) )
))
(declare-datatypes ((BalanceConc!28078 0))(
  ( (BalanceConc!28079 (c!726625 Conc!14284)) )
))
(declare-fun x!740615 () BalanceConc!28078)

(declare-fun tp!1307999 () Bool)

(declare-fun inv!62402 (Conc!14284) Bool)

(assert (=> b!4270865 (= e!2651653 (and (inv!62402 (c!726625 x!740615)) tp!1307999))))

(declare-fun inst!1684 () Bool)

(declare-datatypes ((WhitespaceValueInjection!132 0))(
  ( (WhitespaceValueInjection!133) )
))
(declare-fun thiss!2721 () WhitespaceValueInjection!132)

(declare-fun inv!62403 (BalanceConc!28078) Bool)

(declare-fun list!17151 (BalanceConc!28078) List!47426)

(declare-datatypes ((TokenValue!8257 0))(
  ( (FloatLiteralValue!16514 (text!58244 List!47426)) (TokenValueExt!8256 (__x!28703 Int)) (Broken!41285 (value!249288 List!47426)) (Object!8380) (End!8257) (Def!8257) (Underscore!8257) (Match!8257) (Else!8257) (Error!8257) (Case!8257) (If!8257) (Extends!8257) (Abstract!8257) (Class!8257) (Val!8257) (DelimiterValue!16514 (del!8317 List!47426)) (KeywordValue!8263 (value!249289 List!47426)) (CommentValue!16514 (value!249290 List!47426)) (WhitespaceValue!16514 (value!249291 List!47426)) (IndentationValue!8257 (value!249292 List!47426)) (String!55248) (Int32!8257) (Broken!41286 (value!249293 List!47426)) (Boolean!8258) (Unit!66219) (OperatorValue!8260 (op!8317 List!47426)) (IdentifierValue!16514 (value!249294 List!47426)) (IdentifierValue!16515 (value!249295 List!47426)) (WhitespaceValue!16515 (value!249296 List!47426)) (True!16514) (False!16514) (Broken!41287 (value!249297 List!47426)) (Broken!41288 (value!249298 List!47426)) (True!16515) (RightBrace!8257) (RightBracket!8257) (Colon!8257) (Null!8257) (Comma!8257) (LeftBracket!8257) (False!16515) (LeftBrace!8257) (ImaginaryLiteralValue!8257 (text!58245 List!47426)) (StringLiteralValue!24771 (value!249299 List!47426)) (EOFValue!8257 (value!249300 List!47426)) (IdentValue!8257 (value!249301 List!47426)) (DelimiterValue!16515 (value!249302 List!47426)) (DedentValue!8257 (value!249303 List!47426)) (NewLineValue!8257 (value!249304 List!47426)) (IntegerValue!24771 (value!249305 (_ BitVec 32)) (text!58246 List!47426)) (IntegerValue!24772 (value!249306 Int) (text!58247 List!47426)) (Times!8257) (Or!8257) (Equal!8257) (Minus!8257) (Broken!41289 (value!249307 List!47426)) (And!8257) (Div!8257) (LessEqual!8257) (Mod!8257) (Concat!21155) (Not!8257) (Plus!8257) (SpaceValue!8257 (value!249308 List!47426)) (IntegerValue!24773 (value!249309 Int) (text!58248 List!47426)) (StringLiteralValue!24772 (text!58249 List!47426)) (FloatLiteralValue!16515 (text!58250 List!47426)) (BytesLiteralValue!8257 (value!249310 List!47426)) (CommentValue!16515 (value!249311 List!47426)) (StringLiteralValue!24773 (value!249312 List!47426)) (ErrorTokenValue!8257 (msg!8318 List!47426)) )
))
(declare-fun toCharacters!13 (WhitespaceValueInjection!132 TokenValue!8257) BalanceConc!28078)

(declare-fun toValue!20 (WhitespaceValueInjection!132 BalanceConc!28078) TokenValue!8257)

(assert (=> start!409662 (= inst!1684 (=> (and (inv!62403 x!740615) e!2651653) (= (list!17151 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615))) (list!17151 x!740615))))))

(assert (= start!409662 b!4270865))

(declare-fun m!4864197 () Bool)

(assert (=> b!4270865 m!4864197))

(declare-fun m!4864199 () Bool)

(assert (=> start!409662 m!4864199))

(declare-fun m!4864201 () Bool)

(assert (=> start!409662 m!4864201))

(declare-fun m!4864203 () Bool)

(assert (=> start!409662 m!4864203))

(declare-fun m!4864205 () Bool)

(assert (=> start!409662 m!4864205))

(assert (=> start!409662 m!4864203))

(declare-fun m!4864207 () Bool)

(assert (=> start!409662 m!4864207))

(assert (=> start!409662 m!4864201))

(declare-fun res!1754390 () Bool)

(declare-fun e!2651655 () Bool)

(assert (=> b!4270856 (=> res!1754390 e!2651655)))

(declare-fun x!740616 () BalanceConc!28078)

(declare-fun x!740617 () BalanceConc!28078)

(assert (=> b!4270856 (= res!1754390 (not (= (list!17151 x!740616) (list!17151 x!740617))))))

(declare-fun e!2651656 () Bool)

(declare-fun inst!1685 () Bool)

(declare-fun e!2651654 () Bool)

(assert (=> b!4270856 (= inst!1685 (=> (and (inv!62403 x!740616) e!2651656 (inv!62403 x!740617) e!2651654) e!2651655))))

(declare-fun b!4270866 () Bool)

(assert (=> b!4270866 (= e!2651655 (= (toValue!20 thiss!2721 x!740616) (toValue!20 thiss!2721 x!740617)))))

(declare-fun b!4270867 () Bool)

(declare-fun tp!1308000 () Bool)

(assert (=> b!4270867 (= e!2651656 (and (inv!62402 (c!726625 x!740616)) tp!1308000))))

(declare-fun b!4270868 () Bool)

(declare-fun tp!1308001 () Bool)

(assert (=> b!4270868 (= e!2651654 (and (inv!62402 (c!726625 x!740617)) tp!1308001))))

(assert (= (and b!4270856 (not res!1754390)) b!4270866))

(assert (= b!4270856 b!4270867))

(assert (= b!4270856 b!4270868))

(declare-fun m!4864209 () Bool)

(assert (=> b!4270856 m!4864209))

(declare-fun m!4864211 () Bool)

(assert (=> b!4270856 m!4864211))

(declare-fun m!4864213 () Bool)

(assert (=> b!4270856 m!4864213))

(declare-fun m!4864215 () Bool)

(assert (=> b!4270856 m!4864215))

(declare-fun m!4864217 () Bool)

(assert (=> b!4270866 m!4864217))

(declare-fun m!4864219 () Bool)

(assert (=> b!4270866 m!4864219))

(declare-fun m!4864221 () Bool)

(assert (=> b!4270867 m!4864221))

(declare-fun m!4864223 () Bool)

(assert (=> b!4270868 m!4864223))

(declare-fun bs!600629 () Bool)

(declare-fun neg-inst!1684 () Bool)

(declare-fun s!239702 () Bool)

(assert (= bs!600629 (and neg-inst!1684 s!239702)))

(assert (=> bs!600629 (=> true (= (list!17151 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615))) (list!17151 x!740615)))))

(assert (=> m!4864201 m!4864203))

(assert (=> m!4864201 m!4864207))

(assert (=> m!4864201 m!4864199))

(assert (=> m!4864201 s!239702))

(assert (=> m!4864199 s!239702))

(declare-fun bs!600630 () Bool)

(assert (= bs!600630 (and neg-inst!1684 start!409662)))

(assert (=> bs!600630 (= true inst!1684)))

(declare-fun bs!600631 () Bool)

(declare-fun neg-inst!1685 () Bool)

(declare-fun s!239704 () Bool)

(assert (= bs!600631 (and neg-inst!1685 s!239704)))

(declare-fun res!1754391 () Bool)

(declare-fun e!2651657 () Bool)

(assert (=> bs!600631 (=> res!1754391 e!2651657)))

(assert (=> bs!600631 (= res!1754391 (not (= (list!17151 x!740615) (list!17151 x!740615))))))

(assert (=> bs!600631 (=> true e!2651657)))

(declare-fun b!4270869 () Bool)

(assert (=> b!4270869 (= e!2651657 (= (toValue!20 thiss!2721 x!740615) (toValue!20 thiss!2721 x!740615)))))

(assert (= (and bs!600631 (not res!1754391)) b!4270869))

(assert (=> m!4864201 m!4864199))

(assert (=> m!4864201 m!4864199))

(assert (=> m!4864201 s!239704))

(assert (=> m!4864201 s!239704))

(declare-fun bs!600632 () Bool)

(declare-fun s!239706 () Bool)

(assert (= bs!600632 (and neg-inst!1685 s!239706)))

(declare-fun res!1754392 () Bool)

(declare-fun e!2651658 () Bool)

(assert (=> bs!600632 (=> res!1754392 e!2651658)))

(assert (=> bs!600632 (= res!1754392 (not (= (list!17151 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615))) (list!17151 x!740615))))))

(assert (=> bs!600632 (=> true e!2651658)))

(declare-fun b!4270870 () Bool)

(assert (=> b!4270870 (= e!2651658 (= (toValue!20 thiss!2721 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615))) (toValue!20 thiss!2721 x!740615)))))

(assert (= (and bs!600632 (not res!1754392)) b!4270870))

(declare-fun bs!600633 () Bool)

(assert (= bs!600633 (and m!4864207 m!4864201)))

(assert (=> bs!600633 m!4864207))

(assert (=> bs!600633 m!4864199))

(assert (=> bs!600633 s!239706))

(declare-fun bs!600634 () Bool)

(declare-fun s!239708 () Bool)

(assert (= bs!600634 (and neg-inst!1685 s!239708)))

(declare-fun res!1754393 () Bool)

(declare-fun e!2651659 () Bool)

(assert (=> bs!600634 (=> res!1754393 e!2651659)))

(assert (=> bs!600634 (= res!1754393 (not (= (list!17151 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615))) (list!17151 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615))))))))

(assert (=> bs!600634 (=> true e!2651659)))

(declare-fun b!4270871 () Bool)

(assert (=> b!4270871 (= e!2651659 (= (toValue!20 thiss!2721 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615))) (toValue!20 thiss!2721 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615)))))))

(assert (= (and bs!600634 (not res!1754393)) b!4270871))

(assert (=> m!4864207 s!239708))

(declare-fun bs!600635 () Bool)

(declare-fun s!239710 () Bool)

(assert (= bs!600635 (and neg-inst!1685 s!239710)))

(declare-fun res!1754394 () Bool)

(declare-fun e!2651660 () Bool)

(assert (=> bs!600635 (=> res!1754394 e!2651660)))

(assert (=> bs!600635 (= res!1754394 (not (= (list!17151 x!740615) (list!17151 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615))))))))

(assert (=> bs!600635 (=> true e!2651660)))

(declare-fun b!4270872 () Bool)

(assert (=> b!4270872 (= e!2651660 (= (toValue!20 thiss!2721 x!740615) (toValue!20 thiss!2721 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615)))))))

(assert (= (and bs!600635 (not res!1754394)) b!4270872))

(assert (=> bs!600633 m!4864199))

(assert (=> bs!600633 m!4864207))

(assert (=> bs!600633 s!239710))

(assert (=> m!4864207 s!239708))

(declare-fun bs!600636 () Bool)

(declare-fun s!239712 () Bool)

(assert (= bs!600636 (and neg-inst!1685 s!239712)))

(declare-fun res!1754395 () Bool)

(declare-fun e!2651661 () Bool)

(assert (=> bs!600636 (=> res!1754395 e!2651661)))

(assert (=> bs!600636 (= res!1754395 (not (= (list!17151 x!740617) (list!17151 x!740615))))))

(assert (=> bs!600636 (=> true e!2651661)))

(declare-fun b!4270873 () Bool)

(assert (=> b!4270873 (= e!2651661 (= (toValue!20 thiss!2721 x!740617) (toValue!20 thiss!2721 x!740615)))))

(assert (= (and bs!600636 (not res!1754395)) b!4270873))

(declare-fun bs!600637 () Bool)

(assert (= bs!600637 (and m!4864211 m!4864201)))

(assert (=> bs!600637 m!4864211))

(assert (=> bs!600637 m!4864199))

(assert (=> bs!600637 s!239712))

(declare-fun bs!600638 () Bool)

(declare-fun s!239714 () Bool)

(assert (= bs!600638 (and neg-inst!1685 s!239714)))

(declare-fun res!1754396 () Bool)

(declare-fun e!2651662 () Bool)

(assert (=> bs!600638 (=> res!1754396 e!2651662)))

(assert (=> bs!600638 (= res!1754396 (not (= (list!17151 x!740617) (list!17151 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615))))))))

(assert (=> bs!600638 (=> true e!2651662)))

(declare-fun b!4270874 () Bool)

(assert (=> b!4270874 (= e!2651662 (= (toValue!20 thiss!2721 x!740617) (toValue!20 thiss!2721 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615)))))))

(assert (= (and bs!600638 (not res!1754396)) b!4270874))

(declare-fun bs!600639 () Bool)

(assert (= bs!600639 (and m!4864211 m!4864207)))

(assert (=> bs!600639 m!4864211))

(assert (=> bs!600639 m!4864207))

(assert (=> bs!600639 s!239714))

(declare-fun bs!600640 () Bool)

(declare-fun s!239716 () Bool)

(assert (= bs!600640 (and neg-inst!1685 s!239716)))

(declare-fun res!1754397 () Bool)

(declare-fun e!2651663 () Bool)

(assert (=> bs!600640 (=> res!1754397 e!2651663)))

(assert (=> bs!600640 (= res!1754397 (not (= (list!17151 x!740617) (list!17151 x!740617))))))

(assert (=> bs!600640 (=> true e!2651663)))

(declare-fun b!4270875 () Bool)

(assert (=> b!4270875 (= e!2651663 (= (toValue!20 thiss!2721 x!740617) (toValue!20 thiss!2721 x!740617)))))

(assert (= (and bs!600640 (not res!1754397)) b!4270875))

(assert (=> m!4864211 s!239716))

(declare-fun bs!600641 () Bool)

(declare-fun s!239718 () Bool)

(assert (= bs!600641 (and neg-inst!1685 s!239718)))

(declare-fun res!1754398 () Bool)

(declare-fun e!2651664 () Bool)

(assert (=> bs!600641 (=> res!1754398 e!2651664)))

(assert (=> bs!600641 (= res!1754398 (not (= (list!17151 x!740615) (list!17151 x!740617))))))

(assert (=> bs!600641 (=> true e!2651664)))

(declare-fun b!4270876 () Bool)

(assert (=> b!4270876 (= e!2651664 (= (toValue!20 thiss!2721 x!740615) (toValue!20 thiss!2721 x!740617)))))

(assert (= (and bs!600641 (not res!1754398)) b!4270876))

(assert (=> bs!600637 m!4864199))

(assert (=> bs!600637 m!4864211))

(assert (=> bs!600637 s!239718))

(declare-fun bs!600642 () Bool)

(declare-fun s!239720 () Bool)

(assert (= bs!600642 (and neg-inst!1685 s!239720)))

(declare-fun res!1754399 () Bool)

(declare-fun e!2651665 () Bool)

(assert (=> bs!600642 (=> res!1754399 e!2651665)))

(assert (=> bs!600642 (= res!1754399 (not (= (list!17151 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615))) (list!17151 x!740617))))))

(assert (=> bs!600642 (=> true e!2651665)))

(declare-fun b!4270877 () Bool)

(assert (=> b!4270877 (= e!2651665 (= (toValue!20 thiss!2721 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615))) (toValue!20 thiss!2721 x!740617)))))

(assert (= (and bs!600642 (not res!1754399)) b!4270877))

(assert (=> bs!600639 m!4864207))

(assert (=> bs!600639 m!4864211))

(assert (=> bs!600639 s!239720))

(assert (=> m!4864211 s!239716))

(declare-fun bs!600643 () Bool)

(assert (= bs!600643 (and m!4864219 m!4864201)))

(assert (=> bs!600643 s!239712))

(declare-fun bs!600644 () Bool)

(assert (= bs!600644 (and m!4864219 m!4864207)))

(assert (=> bs!600644 s!239714))

(declare-fun bs!600645 () Bool)

(assert (= bs!600645 (and m!4864219 m!4864211)))

(assert (=> bs!600645 s!239716))

(assert (=> m!4864219 s!239716))

(assert (=> bs!600643 s!239718))

(assert (=> bs!600644 s!239720))

(assert (=> bs!600645 s!239716))

(assert (=> m!4864219 s!239716))

(declare-fun bs!600646 () Bool)

(declare-fun s!239722 () Bool)

(assert (= bs!600646 (and neg-inst!1685 s!239722)))

(declare-fun res!1754400 () Bool)

(declare-fun e!2651666 () Bool)

(assert (=> bs!600646 (=> res!1754400 e!2651666)))

(assert (=> bs!600646 (= res!1754400 (not (= (list!17151 x!740616) (list!17151 x!740615))))))

(assert (=> bs!600646 (=> true e!2651666)))

(declare-fun b!4270878 () Bool)

(assert (=> b!4270878 (= e!2651666 (= (toValue!20 thiss!2721 x!740616) (toValue!20 thiss!2721 x!740615)))))

(assert (= (and bs!600646 (not res!1754400)) b!4270878))

(declare-fun bs!600647 () Bool)

(assert (= bs!600647 (and m!4864209 m!4864201)))

(assert (=> bs!600647 m!4864209))

(assert (=> bs!600647 m!4864199))

(assert (=> bs!600647 s!239722))

(declare-fun bs!600648 () Bool)

(declare-fun s!239724 () Bool)

(assert (= bs!600648 (and neg-inst!1685 s!239724)))

(declare-fun res!1754401 () Bool)

(declare-fun e!2651667 () Bool)

(assert (=> bs!600648 (=> res!1754401 e!2651667)))

(assert (=> bs!600648 (= res!1754401 (not (= (list!17151 x!740616) (list!17151 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615))))))))

(assert (=> bs!600648 (=> true e!2651667)))

(declare-fun b!4270879 () Bool)

(assert (=> b!4270879 (= e!2651667 (= (toValue!20 thiss!2721 x!740616) (toValue!20 thiss!2721 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615)))))))

(assert (= (and bs!600648 (not res!1754401)) b!4270879))

(declare-fun bs!600649 () Bool)

(assert (= bs!600649 (and m!4864209 m!4864207)))

(assert (=> bs!600649 m!4864209))

(assert (=> bs!600649 m!4864207))

(assert (=> bs!600649 s!239724))

(declare-fun bs!600650 () Bool)

(declare-fun s!239726 () Bool)

(assert (= bs!600650 (and neg-inst!1685 s!239726)))

(declare-fun res!1754402 () Bool)

(declare-fun e!2651668 () Bool)

(assert (=> bs!600650 (=> res!1754402 e!2651668)))

(assert (=> bs!600650 (= res!1754402 (not (= (list!17151 x!740616) (list!17151 x!740617))))))

(assert (=> bs!600650 (=> true e!2651668)))

(declare-fun b!4270880 () Bool)

(assert (=> b!4270880 (= e!2651668 (= (toValue!20 thiss!2721 x!740616) (toValue!20 thiss!2721 x!740617)))))

(assert (= (and bs!600650 (not res!1754402)) b!4270880))

(declare-fun bs!600651 () Bool)

(assert (= bs!600651 (and m!4864209 m!4864211 m!4864219)))

(assert (=> bs!600651 m!4864209))

(assert (=> bs!600651 m!4864211))

(assert (=> bs!600651 s!239726))

(declare-fun bs!600652 () Bool)

(declare-fun s!239728 () Bool)

(assert (= bs!600652 (and neg-inst!1685 s!239728)))

(declare-fun res!1754403 () Bool)

(declare-fun e!2651669 () Bool)

(assert (=> bs!600652 (=> res!1754403 e!2651669)))

(assert (=> bs!600652 (= res!1754403 (not (= (list!17151 x!740616) (list!17151 x!740616))))))

(assert (=> bs!600652 (=> true e!2651669)))

(declare-fun b!4270881 () Bool)

(assert (=> b!4270881 (= e!2651669 (= (toValue!20 thiss!2721 x!740616) (toValue!20 thiss!2721 x!740616)))))

(assert (= (and bs!600652 (not res!1754403)) b!4270881))

(assert (=> m!4864209 s!239728))

(declare-fun bs!600653 () Bool)

(declare-fun s!239730 () Bool)

(assert (= bs!600653 (and neg-inst!1685 s!239730)))

(declare-fun res!1754404 () Bool)

(declare-fun e!2651670 () Bool)

(assert (=> bs!600653 (=> res!1754404 e!2651670)))

(assert (=> bs!600653 (= res!1754404 (not (= (list!17151 x!740615) (list!17151 x!740616))))))

(assert (=> bs!600653 (=> true e!2651670)))

(declare-fun b!4270882 () Bool)

(assert (=> b!4270882 (= e!2651670 (= (toValue!20 thiss!2721 x!740615) (toValue!20 thiss!2721 x!740616)))))

(assert (= (and bs!600653 (not res!1754404)) b!4270882))

(assert (=> bs!600647 m!4864199))

(assert (=> bs!600647 m!4864209))

(assert (=> bs!600647 s!239730))

(declare-fun bs!600654 () Bool)

(declare-fun s!239732 () Bool)

(assert (= bs!600654 (and neg-inst!1685 s!239732)))

(declare-fun res!1754405 () Bool)

(declare-fun e!2651671 () Bool)

(assert (=> bs!600654 (=> res!1754405 e!2651671)))

(assert (=> bs!600654 (= res!1754405 (not (= (list!17151 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615))) (list!17151 x!740616))))))

(assert (=> bs!600654 (=> true e!2651671)))

(declare-fun b!4270883 () Bool)

(assert (=> b!4270883 (= e!2651671 (= (toValue!20 thiss!2721 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615))) (toValue!20 thiss!2721 x!740616)))))

(assert (= (and bs!600654 (not res!1754405)) b!4270883))

(assert (=> bs!600649 m!4864207))

(assert (=> bs!600649 m!4864209))

(assert (=> bs!600649 s!239732))

(declare-fun bs!600655 () Bool)

(declare-fun s!239734 () Bool)

(assert (= bs!600655 (and neg-inst!1685 s!239734)))

(declare-fun res!1754406 () Bool)

(declare-fun e!2651672 () Bool)

(assert (=> bs!600655 (=> res!1754406 e!2651672)))

(assert (=> bs!600655 (= res!1754406 (not (= (list!17151 x!740617) (list!17151 x!740616))))))

(assert (=> bs!600655 (=> true e!2651672)))

(declare-fun b!4270884 () Bool)

(assert (=> b!4270884 (= e!2651672 (= (toValue!20 thiss!2721 x!740617) (toValue!20 thiss!2721 x!740616)))))

(assert (= (and bs!600655 (not res!1754406)) b!4270884))

(assert (=> bs!600651 m!4864211))

(assert (=> bs!600651 m!4864209))

(assert (=> bs!600651 s!239734))

(assert (=> m!4864209 s!239728))

(declare-fun bs!600656 () Bool)

(assert (= bs!600656 (and m!4864217 m!4864201)))

(assert (=> bs!600656 s!239722))

(declare-fun bs!600657 () Bool)

(assert (= bs!600657 (and m!4864217 m!4864209)))

(assert (=> bs!600657 s!239728))

(declare-fun bs!600658 () Bool)

(assert (= bs!600658 (and m!4864217 m!4864207)))

(assert (=> bs!600658 s!239724))

(declare-fun bs!600659 () Bool)

(assert (= bs!600659 (and m!4864217 m!4864211 m!4864219)))

(assert (=> bs!600659 s!239726))

(assert (=> m!4864217 s!239728))

(assert (=> bs!600657 s!239728))

(assert (=> bs!600656 s!239730))

(assert (=> m!4864217 s!239728))

(assert (=> bs!600659 s!239734))

(assert (=> bs!600658 s!239732))

(assert (=> m!4864199 s!239704))

(declare-fun bs!600660 () Bool)

(assert (= bs!600660 (and m!4864199 m!4864211 m!4864219)))

(assert (=> bs!600660 s!239718))

(declare-fun bs!600661 () Bool)

(assert (= bs!600661 (and m!4864199 m!4864207)))

(assert (=> bs!600661 s!239710))

(declare-fun bs!600662 () Bool)

(assert (= bs!600662 (and m!4864199 m!4864209 m!4864217)))

(assert (=> bs!600662 s!239730))

(declare-fun bs!600663 () Bool)

(assert (= bs!600663 (and m!4864199 m!4864201)))

(assert (=> bs!600663 s!239704))

(assert (=> m!4864199 s!239704))

(assert (=> bs!600662 s!239722))

(assert (=> bs!600661 s!239706))

(assert (=> bs!600660 s!239712))

(assert (=> bs!600663 s!239704))

(declare-fun bs!600664 () Bool)

(assert (= bs!600664 (and neg-inst!1685 b!4270856)))

(assert (=> bs!600664 (= true inst!1685)))

(declare-fun res!1754389 () Bool)

(declare-fun e!2651652 () Bool)

(assert (=> start!409662 (=> res!1754389 e!2651652)))

(declare-fun lambda!130794 () Int)

(declare-fun Forall!1633 (Int) Bool)

(assert (=> start!409662 (= res!1754389 (not (Forall!1633 lambda!130794)))))

(assert (=> start!409662 (= (Forall!1633 lambda!130794) inst!1684)))

(assert (=> start!409662 (not e!2651652)))

(assert (=> start!409662 true))

(declare-fun lambda!130797 () Int)

(declare-fun Forall2!1222 (Int) Bool)

(assert (=> b!4270856 (= e!2651652 (Forall2!1222 lambda!130797))))

(assert (=> b!4270856 (= (Forall2!1222 lambda!130797) inst!1685)))

(declare-fun lambda!130795 () Int)

(declare-fun lambda!130796 () Int)

(declare-fun semiInverseModEq!3507 (Int Int) Bool)

(assert (=> b!4270856 (= (semiInverseModEq!3507 lambda!130795 lambda!130796) (Forall!1633 lambda!130794))))

(assert (= neg-inst!1684 inst!1684))

(assert (= (and start!409662 (not res!1754389)) b!4270856))

(assert (= neg-inst!1685 inst!1685))

(declare-fun m!4864225 () Bool)

(assert (=> start!409662 m!4864225))

(assert (=> start!409662 m!4864225))

(declare-fun m!4864227 () Bool)

(assert (=> b!4270856 m!4864227))

(assert (=> b!4270856 m!4864227))

(declare-fun m!4864229 () Bool)

(assert (=> b!4270856 m!4864229))

(assert (=> b!4270856 m!4864225))

(push 1)

(assert (not bs!600634))

(assert (not bs!600638))

(assert (not b!4270870))

(assert (not bs!600640))

(assert (not start!409662))

(assert (not bs!600655))

(assert (not bs!600632))

(assert (not b!4270869))

(assert (not b!4270874))

(assert (not bs!600636))

(assert (not b!4270881))

(assert (not b!4270880))

(assert (not b!4270867))

(assert (not bs!600652))

(assert (not bs!600631))

(assert (not b!4270884))

(assert (not bs!600642))

(assert (not bs!600650))

(assert (not b!4270856))

(assert (not bs!600654))

(assert (not bs!600646))

(assert (not b!4270878))

(assert (not b!4270876))

(assert (not b!4270875))

(assert (not b!4270868))

(assert (not bs!600629))

(assert (not b!4270873))

(assert (not bs!600635))

(assert (not b!4270872))

(assert (not b!4270865))

(assert (not bs!600641))

(assert (not b!4270877))

(assert (not b!4270866))

(assert (not b!4270871))

(assert (not b!4270882))

(assert (not b!4270879))

(assert (not b!4270883))

(assert (not bs!600648))

(assert (not bs!600653))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1259648 () Bool)

(declare-fun efficientList!496 (BalanceConc!28078) List!47426)

(assert (=> d!1259648 (= (toValue!20 thiss!2721 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615))) (WhitespaceValue!16515 (efficientList!496 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615)))))))

(declare-fun bs!600701 () Bool)

(assert (= bs!600701 d!1259648))

(assert (=> bs!600701 m!4864203))

(declare-fun m!4864265 () Bool)

(assert (=> bs!600701 m!4864265))

(assert (=> b!4270883 d!1259648))

(declare-fun d!1259650 () Bool)

(assert (=> d!1259650 (= (toValue!20 thiss!2721 x!740616) (WhitespaceValue!16515 (efficientList!496 x!740616)))))

(declare-fun bs!600702 () Bool)

(assert (= bs!600702 d!1259650))

(declare-fun m!4864267 () Bool)

(assert (=> bs!600702 m!4864267))

(assert (=> b!4270883 d!1259650))

(declare-fun d!1259652 () Bool)

(declare-fun list!17153 (Conc!14284) List!47426)

(assert (=> d!1259652 (= (list!17151 x!740617) (list!17153 (c!726625 x!740617)))))

(declare-fun bs!600703 () Bool)

(assert (= bs!600703 d!1259652))

(declare-fun m!4864269 () Bool)

(assert (=> bs!600703 m!4864269))

(assert (=> bs!600638 d!1259652))

(declare-fun d!1259654 () Bool)

(assert (=> d!1259654 (= (list!17151 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615))) (list!17153 (c!726625 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615)))))))

(declare-fun bs!600704 () Bool)

(assert (= bs!600704 d!1259654))

(declare-fun m!4864271 () Bool)

(assert (=> bs!600704 m!4864271))

(assert (=> bs!600638 d!1259654))

(declare-fun d!1259656 () Bool)

(assert (=> d!1259656 (= (list!17151 x!740616) (list!17153 (c!726625 x!740616)))))

(declare-fun bs!600705 () Bool)

(assert (= bs!600705 d!1259656))

(declare-fun m!4864273 () Bool)

(assert (=> bs!600705 m!4864273))

(assert (=> bs!600650 d!1259656))

(assert (=> bs!600650 d!1259652))

(assert (=> b!4270877 d!1259648))

(declare-fun d!1259658 () Bool)

(assert (=> d!1259658 (= (toValue!20 thiss!2721 x!740617) (WhitespaceValue!16515 (efficientList!496 x!740617)))))

(declare-fun bs!600706 () Bool)

(assert (= bs!600706 d!1259658))

(declare-fun m!4864275 () Bool)

(assert (=> bs!600706 m!4864275))

(assert (=> b!4270877 d!1259658))

(assert (=> bs!600642 d!1259654))

(assert (=> bs!600642 d!1259652))

(assert (=> bs!600654 d!1259654))

(assert (=> bs!600654 d!1259656))

(assert (=> b!4270870 d!1259648))

(declare-fun d!1259660 () Bool)

(assert (=> d!1259660 (= (toValue!20 thiss!2721 x!740615) (WhitespaceValue!16515 (efficientList!496 x!740615)))))

(declare-fun bs!600707 () Bool)

(assert (= bs!600707 d!1259660))

(declare-fun m!4864277 () Bool)

(assert (=> bs!600707 m!4864277))

(assert (=> b!4270870 d!1259660))

(assert (=> b!4270876 d!1259660))

(assert (=> b!4270876 d!1259658))

(assert (=> b!4270882 d!1259660))

(assert (=> b!4270882 d!1259650))

(assert (=> b!4270873 d!1259658))

(assert (=> b!4270873 d!1259660))

(assert (=> bs!600632 d!1259654))

(declare-fun d!1259662 () Bool)

(assert (=> d!1259662 (= (list!17151 x!740615) (list!17153 (c!726625 x!740615)))))

(declare-fun bs!600708 () Bool)

(assert (= bs!600708 d!1259662))

(declare-fun m!4864279 () Bool)

(assert (=> bs!600708 m!4864279))

(assert (=> bs!600632 d!1259662))

(assert (=> b!4270879 d!1259650))

(assert (=> b!4270879 d!1259648))

(assert (=> b!4270869 d!1259660))

(assert (=> bs!600648 d!1259656))

(assert (=> bs!600648 d!1259654))

(assert (=> bs!600641 d!1259662))

(assert (=> bs!600641 d!1259652))

(assert (=> bs!600636 d!1259652))

(assert (=> bs!600636 d!1259662))

(assert (=> bs!600631 d!1259662))

(assert (=> b!4270875 d!1259658))

(assert (=> bs!600653 d!1259662))

(assert (=> bs!600653 d!1259656))

(assert (=> b!4270872 d!1259660))

(assert (=> b!4270872 d!1259648))

(assert (=> bs!600635 d!1259662))

(assert (=> bs!600635 d!1259654))

(assert (=> b!4270878 d!1259650))

(assert (=> b!4270878 d!1259660))

(assert (=> b!4270881 d!1259650))

(assert (=> b!4270871 d!1259648))

(assert (=> bs!600640 d!1259652))

(assert (=> bs!600646 d!1259656))

(assert (=> bs!600646 d!1259662))

(assert (=> bs!600652 d!1259656))

(assert (=> b!4270884 d!1259658))

(assert (=> b!4270884 d!1259650))

(assert (=> bs!600655 d!1259652))

(assert (=> bs!600655 d!1259656))

(assert (=> b!4270874 d!1259658))

(assert (=> b!4270874 d!1259648))

(assert (=> bs!600634 d!1259654))

(assert (=> b!4270880 d!1259650))

(assert (=> b!4270880 d!1259658))

(declare-fun bs!600709 () Bool)

(assert (= bs!600709 (and m!4864201 b!4270869)))

(assert (=> bs!600709 m!4864201))

(assert (=> bs!600709 m!4864201))

(declare-fun bs!600710 () Bool)

(assert (= bs!600710 (and m!4864207 m!4864201 b!4270870)))

(declare-fun m!4864281 () Bool)

(assert (=> bs!600710 m!4864281))

(assert (=> bs!600710 m!4864201))

(declare-fun bs!600711 () Bool)

(assert (= bs!600711 (and m!4864207 b!4270871)))

(assert (=> bs!600711 m!4864281))

(assert (=> bs!600711 m!4864281))

(declare-fun bs!600712 () Bool)

(assert (= bs!600712 (and m!4864207 m!4864201 b!4270872)))

(assert (=> bs!600712 m!4864201))

(assert (=> bs!600712 m!4864281))

(declare-fun bs!600713 () Bool)

(assert (= bs!600713 (and m!4864211 m!4864201 b!4270873)))

(assert (=> bs!600713 m!4864219))

(assert (=> bs!600713 m!4864201))

(declare-fun bs!600714 () Bool)

(assert (= bs!600714 (and m!4864211 m!4864207 b!4270874)))

(assert (=> bs!600714 m!4864219))

(assert (=> bs!600714 m!4864281))

(declare-fun bs!600715 () Bool)

(assert (= bs!600715 (and m!4864211 b!4270875)))

(assert (=> bs!600715 m!4864219))

(assert (=> bs!600715 m!4864219))

(declare-fun bs!600716 () Bool)

(assert (= bs!600716 (and m!4864211 m!4864201 b!4270876)))

(assert (=> bs!600716 m!4864201))

(assert (=> bs!600716 m!4864219))

(declare-fun bs!600717 () Bool)

(assert (= bs!600717 (and m!4864211 m!4864207 b!4270877)))

(assert (=> bs!600717 m!4864281))

(assert (=> bs!600717 m!4864219))

(declare-fun bs!600718 () Bool)

(assert (= bs!600718 (and m!4864209 m!4864201 b!4270878)))

(assert (=> bs!600718 m!4864217))

(assert (=> bs!600718 m!4864201))

(declare-fun bs!600719 () Bool)

(assert (= bs!600719 (and m!4864209 m!4864207 b!4270879)))

(assert (=> bs!600719 m!4864217))

(assert (=> bs!600719 m!4864281))

(declare-fun bs!600720 () Bool)

(assert (= bs!600720 (and m!4864209 m!4864211 m!4864219 b!4270880)))

(assert (=> bs!600720 m!4864217))

(assert (=> bs!600720 m!4864219))

(declare-fun bs!600721 () Bool)

(assert (= bs!600721 (and m!4864209 b!4270881)))

(assert (=> bs!600721 m!4864217))

(assert (=> bs!600721 m!4864217))

(declare-fun bs!600722 () Bool)

(assert (= bs!600722 (and m!4864209 m!4864201 b!4270882)))

(assert (=> bs!600722 m!4864201))

(assert (=> bs!600722 m!4864217))

(declare-fun bs!600723 () Bool)

(assert (= bs!600723 (and m!4864209 m!4864207 b!4270883)))

(assert (=> bs!600723 m!4864281))

(assert (=> bs!600723 m!4864217))

(declare-fun bs!600724 () Bool)

(assert (= bs!600724 (and m!4864209 m!4864211 m!4864219 b!4270884)))

(assert (=> bs!600724 m!4864219))

(assert (=> bs!600724 m!4864217))

(push 1)

(assert (not d!1259652))

(assert (not b!4270856))

(assert (not d!1259658))

(assert (not d!1259648))

(assert (not b!4270868))

(assert (not bs!600629))

(assert (not d!1259660))

(assert (not b!4270865))

(assert (not d!1259654))

(assert (not start!409662))

(assert (not d!1259662))

(assert (not d!1259656))

(assert (not b!4270867))

(assert (not b!4270866))

(assert (not d!1259650))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4270941 () Bool)

(declare-fun e!2651715 () List!47426)

(declare-fun ++!12069 (List!47426 List!47426) List!47426)

(assert (=> b!4270941 (= e!2651715 (++!12069 (list!17153 (left!35143 (c!726625 x!740615))) (list!17153 (right!35473 (c!726625 x!740615)))))))

(declare-fun b!4270940 () Bool)

(declare-fun list!17155 (IArray!28573) List!47426)

(assert (=> b!4270940 (= e!2651715 (list!17155 (xs!17590 (c!726625 x!740615))))))

(declare-fun b!4270938 () Bool)

(declare-fun e!2651714 () List!47426)

(assert (=> b!4270938 (= e!2651714 Nil!47302)))

(declare-fun b!4270939 () Bool)

(assert (=> b!4270939 (= e!2651714 e!2651715)))

(declare-fun c!726632 () Bool)

(assert (=> b!4270939 (= c!726632 (is-Leaf!22082 (c!726625 x!740615)))))

(declare-fun d!1259680 () Bool)

(declare-fun c!726631 () Bool)

(assert (=> d!1259680 (= c!726631 (is-Empty!14284 (c!726625 x!740615)))))

(assert (=> d!1259680 (= (list!17153 (c!726625 x!740615)) e!2651714)))

(assert (= (and d!1259680 c!726631) b!4270938))

(assert (= (and d!1259680 (not c!726631)) b!4270939))

(assert (= (and b!4270939 c!726632) b!4270940))

(assert (= (and b!4270939 (not c!726632)) b!4270941))

(declare-fun m!4864301 () Bool)

(assert (=> b!4270941 m!4864301))

(declare-fun m!4864303 () Bool)

(assert (=> b!4270941 m!4864303))

(assert (=> b!4270941 m!4864301))

(assert (=> b!4270941 m!4864303))

(declare-fun m!4864305 () Bool)

(assert (=> b!4270941 m!4864305))

(declare-fun m!4864307 () Bool)

(assert (=> b!4270940 m!4864307))

(assert (=> d!1259662 d!1259680))

(declare-fun b!4270945 () Bool)

(declare-fun e!2651717 () List!47426)

(assert (=> b!4270945 (= e!2651717 (++!12069 (list!17153 (left!35143 (c!726625 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615))))) (list!17153 (right!35473 (c!726625 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615)))))))))

(declare-fun b!4270944 () Bool)

(assert (=> b!4270944 (= e!2651717 (list!17155 (xs!17590 (c!726625 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615))))))))

(declare-fun b!4270942 () Bool)

(declare-fun e!2651716 () List!47426)

(assert (=> b!4270942 (= e!2651716 Nil!47302)))

(declare-fun b!4270943 () Bool)

(assert (=> b!4270943 (= e!2651716 e!2651717)))

(declare-fun c!726634 () Bool)

(assert (=> b!4270943 (= c!726634 (is-Leaf!22082 (c!726625 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615)))))))

(declare-fun d!1259682 () Bool)

(declare-fun c!726633 () Bool)

(assert (=> d!1259682 (= c!726633 (is-Empty!14284 (c!726625 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615)))))))

(assert (=> d!1259682 (= (list!17153 (c!726625 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615)))) e!2651716)))

(assert (= (and d!1259682 c!726633) b!4270942))

(assert (= (and d!1259682 (not c!726633)) b!4270943))

(assert (= (and b!4270943 c!726634) b!4270944))

(assert (= (and b!4270943 (not c!726634)) b!4270945))

(declare-fun m!4864309 () Bool)

(assert (=> b!4270945 m!4864309))

(declare-fun m!4864311 () Bool)

(assert (=> b!4270945 m!4864311))

(assert (=> b!4270945 m!4864309))

(assert (=> b!4270945 m!4864311))

(declare-fun m!4864313 () Bool)

(assert (=> b!4270945 m!4864313))

(declare-fun m!4864315 () Bool)

(assert (=> b!4270944 m!4864315))

(assert (=> d!1259654 d!1259682))

(declare-fun d!1259684 () Bool)

(declare-fun lt!1512739 () List!47426)

(assert (=> d!1259684 (= lt!1512739 (list!17151 x!740615))))

(declare-fun efficientList!498 (Conc!14284 List!47426) List!47426)

(declare-fun efficientList$default$2!172 (Conc!14284) List!47426)

(assert (=> d!1259684 (= lt!1512739 (efficientList!498 (c!726625 x!740615) (efficientList$default$2!172 (c!726625 x!740615))))))

(assert (=> d!1259684 (= (efficientList!496 x!740615) lt!1512739)))

(declare-fun bs!600749 () Bool)

(assert (= bs!600749 d!1259684))

(assert (=> bs!600749 m!4864199))

(declare-fun m!4864317 () Bool)

(assert (=> bs!600749 m!4864317))

(assert (=> bs!600749 m!4864317))

(declare-fun m!4864319 () Bool)

(assert (=> bs!600749 m!4864319))

(assert (=> d!1259660 d!1259684))

(declare-fun b!4270949 () Bool)

(declare-fun e!2651719 () List!47426)

(assert (=> b!4270949 (= e!2651719 (++!12069 (list!17153 (left!35143 (c!726625 x!740617))) (list!17153 (right!35473 (c!726625 x!740617)))))))

(declare-fun b!4270948 () Bool)

(assert (=> b!4270948 (= e!2651719 (list!17155 (xs!17590 (c!726625 x!740617))))))

(declare-fun b!4270946 () Bool)

(declare-fun e!2651718 () List!47426)

(assert (=> b!4270946 (= e!2651718 Nil!47302)))

(declare-fun b!4270947 () Bool)

(assert (=> b!4270947 (= e!2651718 e!2651719)))

(declare-fun c!726636 () Bool)

(assert (=> b!4270947 (= c!726636 (is-Leaf!22082 (c!726625 x!740617)))))

(declare-fun d!1259686 () Bool)

(declare-fun c!726635 () Bool)

(assert (=> d!1259686 (= c!726635 (is-Empty!14284 (c!726625 x!740617)))))

(assert (=> d!1259686 (= (list!17153 (c!726625 x!740617)) e!2651718)))

(assert (= (and d!1259686 c!726635) b!4270946))

(assert (= (and d!1259686 (not c!726635)) b!4270947))

(assert (= (and b!4270947 c!726636) b!4270948))

(assert (= (and b!4270947 (not c!726636)) b!4270949))

(declare-fun m!4864321 () Bool)

(assert (=> b!4270949 m!4864321))

(declare-fun m!4864323 () Bool)

(assert (=> b!4270949 m!4864323))

(assert (=> b!4270949 m!4864321))

(assert (=> b!4270949 m!4864323))

(declare-fun m!4864325 () Bool)

(assert (=> b!4270949 m!4864325))

(declare-fun m!4864327 () Bool)

(assert (=> b!4270948 m!4864327))

(assert (=> d!1259652 d!1259686))

(declare-fun d!1259688 () Bool)

(declare-fun lt!1512740 () List!47426)

(assert (=> d!1259688 (= lt!1512740 (list!17151 x!740617))))

(assert (=> d!1259688 (= lt!1512740 (efficientList!498 (c!726625 x!740617) (efficientList$default$2!172 (c!726625 x!740617))))))

(assert (=> d!1259688 (= (efficientList!496 x!740617) lt!1512740)))

(declare-fun bs!600750 () Bool)

(assert (= bs!600750 d!1259688))

(assert (=> bs!600750 m!4864211))

(declare-fun m!4864329 () Bool)

(assert (=> bs!600750 m!4864329))

(assert (=> bs!600750 m!4864329))

(declare-fun m!4864331 () Bool)

(assert (=> bs!600750 m!4864331))

(assert (=> d!1259658 d!1259688))

(declare-fun d!1259690 () Bool)

(declare-fun lt!1512741 () List!47426)

(assert (=> d!1259690 (= lt!1512741 (list!17151 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615))))))

(assert (=> d!1259690 (= lt!1512741 (efficientList!498 (c!726625 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615))) (efficientList$default$2!172 (c!726625 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615))))))))

(assert (=> d!1259690 (= (efficientList!496 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615))) lt!1512741)))

(declare-fun bs!600751 () Bool)

(assert (= bs!600751 d!1259690))

(assert (=> bs!600751 m!4864203))

(assert (=> bs!600751 m!4864207))

(declare-fun m!4864333 () Bool)

(assert (=> bs!600751 m!4864333))

(assert (=> bs!600751 m!4864333))

(declare-fun m!4864335 () Bool)

(assert (=> bs!600751 m!4864335))

(assert (=> d!1259648 d!1259690))

(declare-fun d!1259692 () Bool)

(declare-fun lt!1512742 () List!47426)

(assert (=> d!1259692 (= lt!1512742 (list!17151 x!740616))))

(assert (=> d!1259692 (= lt!1512742 (efficientList!498 (c!726625 x!740616) (efficientList$default$2!172 (c!726625 x!740616))))))

(assert (=> d!1259692 (= (efficientList!496 x!740616) lt!1512742)))

(declare-fun bs!600752 () Bool)

(assert (= bs!600752 d!1259692))

(assert (=> bs!600752 m!4864209))

(declare-fun m!4864337 () Bool)

(assert (=> bs!600752 m!4864337))

(assert (=> bs!600752 m!4864337))

(declare-fun m!4864339 () Bool)

(assert (=> bs!600752 m!4864339))

(assert (=> d!1259650 d!1259692))

(declare-fun b!4270953 () Bool)

(declare-fun e!2651721 () List!47426)

(assert (=> b!4270953 (= e!2651721 (++!12069 (list!17153 (left!35143 (c!726625 x!740616))) (list!17153 (right!35473 (c!726625 x!740616)))))))

(declare-fun b!4270952 () Bool)

(assert (=> b!4270952 (= e!2651721 (list!17155 (xs!17590 (c!726625 x!740616))))))

(declare-fun b!4270950 () Bool)

(declare-fun e!2651720 () List!47426)

(assert (=> b!4270950 (= e!2651720 Nil!47302)))

(declare-fun b!4270951 () Bool)

(assert (=> b!4270951 (= e!2651720 e!2651721)))

(declare-fun c!726638 () Bool)

(assert (=> b!4270951 (= c!726638 (is-Leaf!22082 (c!726625 x!740616)))))

(declare-fun d!1259694 () Bool)

(declare-fun c!726637 () Bool)

(assert (=> d!1259694 (= c!726637 (is-Empty!14284 (c!726625 x!740616)))))

(assert (=> d!1259694 (= (list!17153 (c!726625 x!740616)) e!2651720)))

(assert (= (and d!1259694 c!726637) b!4270950))

(assert (= (and d!1259694 (not c!726637)) b!4270951))

(assert (= (and b!4270951 c!726638) b!4270952))

(assert (= (and b!4270951 (not c!726638)) b!4270953))

(declare-fun m!4864341 () Bool)

(assert (=> b!4270953 m!4864341))

(declare-fun m!4864343 () Bool)

(assert (=> b!4270953 m!4864343))

(assert (=> b!4270953 m!4864341))

(assert (=> b!4270953 m!4864343))

(declare-fun m!4864345 () Bool)

(assert (=> b!4270953 m!4864345))

(declare-fun m!4864347 () Bool)

(assert (=> b!4270952 m!4864347))

(assert (=> d!1259656 d!1259694))

(push 1)

(assert (not b!4270949))

(assert (not b!4270948))

(assert (not b!4270940))

(assert (not b!4270856))

(assert (not start!409662))

(assert (not b!4270944))

(assert (not b!4270868))

(assert (not d!1259690))

(assert (not bs!600629))

(assert (not d!1259684))

(assert (not b!4270952))

(assert (not d!1259692))

(assert (not b!4270867))

(assert (not b!4270865))

(assert (not b!4270866))

(assert (not b!4270945))

(assert (not b!4270941))

(assert (not b!4270953))

(assert (not d!1259688))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!1259690 d!1259654))

(declare-fun d!1259712 () Bool)

(declare-fun lt!1512761 () List!47426)

(assert (=> d!1259712 (= lt!1512761 (++!12069 (list!17153 (c!726625 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615)))) (efficientList$default$2!172 (c!726625 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615))))))))

(declare-fun e!2651740 () List!47426)

(assert (=> d!1259712 (= lt!1512761 e!2651740)))

(declare-fun c!726657 () Bool)

(assert (=> d!1259712 (= c!726657 (is-Empty!14284 (c!726625 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615)))))))

(assert (=> d!1259712 (= (efficientList!498 (c!726625 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615))) (efficientList$default$2!172 (c!726625 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615))))) lt!1512761)))

(declare-fun b!4270990 () Bool)

(declare-fun e!2651742 () List!47426)

(assert (=> b!4270990 (= e!2651740 e!2651742)))

(declare-fun c!726659 () Bool)

(assert (=> b!4270990 (= c!726659 (is-Leaf!22082 (c!726625 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615)))))))

(declare-fun b!4270991 () Bool)

(declare-fun call!294143 () List!47426)

(assert (=> b!4270991 (= e!2651742 call!294143)))

(declare-fun b!4270992 () Bool)

(assert (=> b!4270992 (= e!2651740 (efficientList$default$2!172 (c!726625 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615)))))))

(declare-fun b!4270993 () Bool)

(declare-fun e!2651741 () List!47426)

(declare-fun efficientList!500 (IArray!28573) List!47426)

(assert (=> b!4270993 (= e!2651741 (efficientList!500 (xs!17590 (c!726625 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615))))))))

(declare-fun b!4270994 () Bool)

(declare-fun lt!1512762 () List!47426)

(assert (=> b!4270994 (= e!2651741 lt!1512762)))

(declare-fun b!4270995 () Bool)

(declare-datatypes ((Unit!66221 0))(
  ( (Unit!66222) )
))
(declare-fun lt!1512763 () Unit!66221)

(declare-fun lt!1512760 () Unit!66221)

(assert (=> b!4270995 (= lt!1512763 lt!1512760)))

(declare-fun lt!1512759 () List!47426)

(assert (=> b!4270995 (= (++!12069 (++!12069 lt!1512759 lt!1512762) (efficientList$default$2!172 (c!726625 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615))))) (++!12069 lt!1512759 call!294143))))

(declare-fun lemmaConcatAssociativity!2710 (List!47426 List!47426 List!47426) Unit!66221)

(assert (=> b!4270995 (= lt!1512760 (lemmaConcatAssociativity!2710 lt!1512759 lt!1512762 (efficientList$default$2!172 (c!726625 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615))))))))

(assert (=> b!4270995 (= lt!1512762 (list!17153 (right!35473 (c!726625 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615))))))))

(assert (=> b!4270995 (= lt!1512759 (list!17153 (left!35143 (c!726625 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615))))))))

(assert (=> b!4270995 (= e!2651742 (efficientList!498 (left!35143 (c!726625 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615)))) (efficientList!498 (right!35473 (c!726625 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615)))) (efficientList$default$2!172 (c!726625 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615)))))))))

(declare-fun bm!294138 () Bool)

(declare-fun c!726658 () Bool)

(assert (=> bm!294138 (= c!726658 c!726659)))

(assert (=> bm!294138 (= call!294143 (++!12069 e!2651741 (efficientList$default$2!172 (c!726625 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615))))))))

(assert (= (and d!1259712 c!726657) b!4270992))

(assert (= (and d!1259712 (not c!726657)) b!4270990))

(assert (= (and b!4270990 c!726659) b!4270991))

(assert (= (and b!4270990 (not c!726659)) b!4270995))

(assert (= (or b!4270991 b!4270995) bm!294138))

(assert (= (and bm!294138 c!726658) b!4270993))

(assert (= (and bm!294138 (not c!726658)) b!4270994))

(assert (=> d!1259712 m!4864271))

(assert (=> d!1259712 m!4864271))

(assert (=> d!1259712 m!4864333))

(declare-fun m!4864397 () Bool)

(assert (=> d!1259712 m!4864397))

(declare-fun m!4864399 () Bool)

(assert (=> b!4270993 m!4864399))

(declare-fun m!4864401 () Bool)

(assert (=> b!4270995 m!4864401))

(assert (=> b!4270995 m!4864333))

(declare-fun m!4864403 () Bool)

(assert (=> b!4270995 m!4864403))

(assert (=> b!4270995 m!4864333))

(declare-fun m!4864405 () Bool)

(assert (=> b!4270995 m!4864405))

(declare-fun m!4864407 () Bool)

(assert (=> b!4270995 m!4864407))

(assert (=> b!4270995 m!4864309))

(assert (=> b!4270995 m!4864311))

(assert (=> b!4270995 m!4864333))

(declare-fun m!4864409 () Bool)

(assert (=> b!4270995 m!4864409))

(assert (=> b!4270995 m!4864405))

(declare-fun m!4864411 () Bool)

(assert (=> b!4270995 m!4864411))

(assert (=> b!4270995 m!4864401))

(assert (=> bm!294138 m!4864333))

(declare-fun m!4864413 () Bool)

(assert (=> bm!294138 m!4864413))

(assert (=> d!1259690 d!1259712))

(declare-fun d!1259714 () Bool)

(assert (=> d!1259714 (= (efficientList$default$2!172 (c!726625 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615)))) Nil!47302)))

(assert (=> d!1259690 d!1259714))

(declare-fun d!1259716 () Bool)

(declare-fun isBalanced!3838 (Conc!14284) Bool)

(assert (=> d!1259716 (= (inv!62403 x!740615) (isBalanced!3838 (c!726625 x!740615)))))

(declare-fun bs!600757 () Bool)

(assert (= bs!600757 d!1259716))

(declare-fun m!4864415 () Bool)

(assert (=> bs!600757 m!4864415))

(assert (=> start!409662 d!1259716))

(declare-fun d!1259718 () Bool)

(declare-fun c!726663 () Bool)

(assert (=> d!1259718 (= c!726663 (is-WhitespaceValue!16515 (toValue!20 thiss!2721 x!740615)))))

(declare-fun e!2651745 () BalanceConc!28078)

(assert (=> d!1259718 (= (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740615)) e!2651745)))

(declare-fun b!4271000 () Bool)

(declare-fun seqFromList!5869 (List!47426) BalanceConc!28078)

(assert (=> b!4271000 (= e!2651745 (seqFromList!5869 (value!249296 (toValue!20 thiss!2721 x!740615))))))

(declare-fun b!4271001 () Bool)

(assert (=> b!4271001 (= e!2651745 (BalanceConc!28079 Empty!14284))))

(assert (= (and d!1259718 c!726663) b!4271000))

(assert (= (and d!1259718 (not c!726663)) b!4271001))

(declare-fun m!4864417 () Bool)

(assert (=> b!4271000 m!4864417))

(assert (=> start!409662 d!1259718))

(assert (=> start!409662 d!1259654))

(assert (=> start!409662 d!1259662))

(declare-fun d!1259720 () Bool)

(declare-fun choose!26042 (Int) Bool)

(assert (=> d!1259720 (= (Forall!1633 lambda!130794) (choose!26042 lambda!130794))))

(declare-fun bs!600758 () Bool)

(assert (= bs!600758 d!1259720))

(declare-fun m!4864419 () Bool)

(assert (=> bs!600758 m!4864419))

(assert (=> start!409662 d!1259720))

(assert (=> start!409662 d!1259660))

(assert (=> d!1259688 d!1259652))

(declare-fun d!1259722 () Bool)

(declare-fun lt!1512766 () List!47426)

(assert (=> d!1259722 (= lt!1512766 (++!12069 (list!17153 (c!726625 x!740617)) (efficientList$default$2!172 (c!726625 x!740617))))))

(declare-fun e!2651746 () List!47426)

(assert (=> d!1259722 (= lt!1512766 e!2651746)))

(declare-fun c!726664 () Bool)

(assert (=> d!1259722 (= c!726664 (is-Empty!14284 (c!726625 x!740617)))))

(assert (=> d!1259722 (= (efficientList!498 (c!726625 x!740617) (efficientList$default$2!172 (c!726625 x!740617))) lt!1512766)))

(declare-fun b!4271002 () Bool)

(declare-fun e!2651748 () List!47426)

(assert (=> b!4271002 (= e!2651746 e!2651748)))

(declare-fun c!726666 () Bool)

(assert (=> b!4271002 (= c!726666 (is-Leaf!22082 (c!726625 x!740617)))))

(declare-fun b!4271003 () Bool)

(declare-fun call!294144 () List!47426)

(assert (=> b!4271003 (= e!2651748 call!294144)))

(declare-fun b!4271004 () Bool)

(assert (=> b!4271004 (= e!2651746 (efficientList$default$2!172 (c!726625 x!740617)))))

(declare-fun b!4271005 () Bool)

(declare-fun e!2651747 () List!47426)

(assert (=> b!4271005 (= e!2651747 (efficientList!500 (xs!17590 (c!726625 x!740617))))))

(declare-fun b!4271006 () Bool)

(declare-fun lt!1512767 () List!47426)

(assert (=> b!4271006 (= e!2651747 lt!1512767)))

(declare-fun b!4271007 () Bool)

(declare-fun lt!1512768 () Unit!66221)

(declare-fun lt!1512765 () Unit!66221)

(assert (=> b!4271007 (= lt!1512768 lt!1512765)))

(declare-fun lt!1512764 () List!47426)

(assert (=> b!4271007 (= (++!12069 (++!12069 lt!1512764 lt!1512767) (efficientList$default$2!172 (c!726625 x!740617))) (++!12069 lt!1512764 call!294144))))

(assert (=> b!4271007 (= lt!1512765 (lemmaConcatAssociativity!2710 lt!1512764 lt!1512767 (efficientList$default$2!172 (c!726625 x!740617))))))

(assert (=> b!4271007 (= lt!1512767 (list!17153 (right!35473 (c!726625 x!740617))))))

(assert (=> b!4271007 (= lt!1512764 (list!17153 (left!35143 (c!726625 x!740617))))))

(assert (=> b!4271007 (= e!2651748 (efficientList!498 (left!35143 (c!726625 x!740617)) (efficientList!498 (right!35473 (c!726625 x!740617)) (efficientList$default$2!172 (c!726625 x!740617)))))))

(declare-fun bm!294139 () Bool)

(declare-fun c!726665 () Bool)

(assert (=> bm!294139 (= c!726665 c!726666)))

(assert (=> bm!294139 (= call!294144 (++!12069 e!2651747 (efficientList$default$2!172 (c!726625 x!740617))))))

(assert (= (and d!1259722 c!726664) b!4271004))

(assert (= (and d!1259722 (not c!726664)) b!4271002))

(assert (= (and b!4271002 c!726666) b!4271003))

(assert (= (and b!4271002 (not c!726666)) b!4271007))

(assert (= (or b!4271003 b!4271007) bm!294139))

(assert (= (and bm!294139 c!726665) b!4271005))

(assert (= (and bm!294139 (not c!726665)) b!4271006))

(assert (=> d!1259722 m!4864269))

(assert (=> d!1259722 m!4864269))

(assert (=> d!1259722 m!4864329))

(declare-fun m!4864421 () Bool)

(assert (=> d!1259722 m!4864421))

(declare-fun m!4864423 () Bool)

(assert (=> b!4271005 m!4864423))

(declare-fun m!4864425 () Bool)

(assert (=> b!4271007 m!4864425))

(assert (=> b!4271007 m!4864329))

(declare-fun m!4864427 () Bool)

(assert (=> b!4271007 m!4864427))

(assert (=> b!4271007 m!4864329))

(declare-fun m!4864429 () Bool)

(assert (=> b!4271007 m!4864429))

(declare-fun m!4864431 () Bool)

(assert (=> b!4271007 m!4864431))

(assert (=> b!4271007 m!4864321))

(assert (=> b!4271007 m!4864323))

(assert (=> b!4271007 m!4864329))

(declare-fun m!4864433 () Bool)

(assert (=> b!4271007 m!4864433))

(assert (=> b!4271007 m!4864429))

(declare-fun m!4864435 () Bool)

(assert (=> b!4271007 m!4864435))

(assert (=> b!4271007 m!4864425))

(assert (=> bm!294139 m!4864329))

(declare-fun m!4864437 () Bool)

(assert (=> bm!294139 m!4864437))

(assert (=> d!1259688 d!1259722))

(declare-fun d!1259724 () Bool)

(assert (=> d!1259724 (= (efficientList$default$2!172 (c!726625 x!740617)) Nil!47302)))

(assert (=> d!1259688 d!1259724))

(declare-fun bs!600759 () Bool)

(declare-fun d!1259726 () Bool)

(assert (= bs!600759 (and d!1259726 start!409662)))

(declare-fun lambda!130818 () Int)

(assert (=> bs!600759 (not (= lambda!130818 lambda!130794))))

(assert (=> d!1259726 true))

(declare-fun order!24883 () Int)

(declare-fun order!24885 () Int)

(declare-fun dynLambda!20267 (Int Int) Int)

(declare-fun dynLambda!20268 (Int Int) Int)

(assert (=> d!1259726 (< (dynLambda!20267 order!24883 lambda!130795) (dynLambda!20268 order!24885 lambda!130818))))

(assert (=> d!1259726 true))

(declare-fun order!24887 () Int)

(declare-fun dynLambda!20269 (Int Int) Int)

(assert (=> d!1259726 (< (dynLambda!20269 order!24887 lambda!130796) (dynLambda!20268 order!24885 lambda!130818))))

(assert (=> d!1259726 (= (semiInverseModEq!3507 lambda!130795 lambda!130796) (Forall!1633 lambda!130818))))

(declare-fun bs!600760 () Bool)

(assert (= bs!600760 d!1259726))

(declare-fun m!4864439 () Bool)

(assert (=> bs!600760 m!4864439))

(assert (=> b!4270856 d!1259726))

(declare-fun d!1259728 () Bool)

(assert (=> d!1259728 (= (inv!62403 x!740617) (isBalanced!3838 (c!726625 x!740617)))))

(declare-fun bs!600761 () Bool)

(assert (= bs!600761 d!1259728))

(declare-fun m!4864441 () Bool)

(assert (=> bs!600761 m!4864441))

(assert (=> b!4270856 d!1259728))

(assert (=> b!4270856 d!1259656))

(assert (=> b!4270856 d!1259652))

(declare-fun d!1259730 () Bool)

(assert (=> d!1259730 (= (inv!62403 x!740616) (isBalanced!3838 (c!726625 x!740616)))))

(declare-fun bs!600762 () Bool)

(assert (= bs!600762 d!1259730))

(declare-fun m!4864443 () Bool)

(assert (=> bs!600762 m!4864443))

(assert (=> b!4270856 d!1259730))

(declare-fun d!1259732 () Bool)

(declare-fun choose!26043 (Int) Bool)

(assert (=> d!1259732 (= (Forall2!1222 lambda!130797) (choose!26043 lambda!130797))))

(declare-fun bs!600763 () Bool)

(assert (= bs!600763 d!1259732))

(declare-fun m!4864445 () Bool)

(assert (=> bs!600763 m!4864445))

(assert (=> b!4270856 d!1259732))

(assert (=> b!4270856 d!1259720))

(declare-fun d!1259734 () Bool)

(declare-fun c!726669 () Bool)

(assert (=> d!1259734 (= c!726669 (is-Node!14284 (c!726625 x!740616)))))

(declare-fun e!2651753 () Bool)

(assert (=> d!1259734 (= (inv!62402 (c!726625 x!740616)) e!2651753)))

(declare-fun b!4271018 () Bool)

(declare-fun inv!62406 (Conc!14284) Bool)

(assert (=> b!4271018 (= e!2651753 (inv!62406 (c!726625 x!740616)))))

(declare-fun b!4271019 () Bool)

(declare-fun e!2651754 () Bool)

(assert (=> b!4271019 (= e!2651753 e!2651754)))

(declare-fun res!1754447 () Bool)

(assert (=> b!4271019 (= res!1754447 (not (is-Leaf!22082 (c!726625 x!740616))))))

(assert (=> b!4271019 (=> res!1754447 e!2651754)))

(declare-fun b!4271020 () Bool)

(declare-fun inv!62407 (Conc!14284) Bool)

(assert (=> b!4271020 (= e!2651754 (inv!62407 (c!726625 x!740616)))))

(assert (= (and d!1259734 c!726669) b!4271018))

(assert (= (and d!1259734 (not c!726669)) b!4271019))

(assert (= (and b!4271019 (not res!1754447)) b!4271020))

(declare-fun m!4864447 () Bool)

(assert (=> b!4271018 m!4864447))

(declare-fun m!4864449 () Bool)

(assert (=> b!4271020 m!4864449))

(assert (=> b!4270867 d!1259734))

(declare-fun d!1259736 () Bool)

(declare-fun c!726670 () Bool)

(assert (=> d!1259736 (= c!726670 (is-Node!14284 (c!726625 x!740617)))))

(declare-fun e!2651755 () Bool)

(assert (=> d!1259736 (= (inv!62402 (c!726625 x!740617)) e!2651755)))

(declare-fun b!4271021 () Bool)

(assert (=> b!4271021 (= e!2651755 (inv!62406 (c!726625 x!740617)))))

(declare-fun b!4271022 () Bool)

(declare-fun e!2651756 () Bool)

(assert (=> b!4271022 (= e!2651755 e!2651756)))

(declare-fun res!1754448 () Bool)

(assert (=> b!4271022 (= res!1754448 (not (is-Leaf!22082 (c!726625 x!740617))))))

(assert (=> b!4271022 (=> res!1754448 e!2651756)))

(declare-fun b!4271023 () Bool)

(assert (=> b!4271023 (= e!2651756 (inv!62407 (c!726625 x!740617)))))

(assert (= (and d!1259736 c!726670) b!4271021))

(assert (= (and d!1259736 (not c!726670)) b!4271022))

(assert (= (and b!4271022 (not res!1754448)) b!4271023))

(declare-fun m!4864451 () Bool)

(assert (=> b!4271021 m!4864451))

(declare-fun m!4864453 () Bool)

(assert (=> b!4271023 m!4864453))

(assert (=> b!4270868 d!1259736))

(assert (=> d!1259692 d!1259656))

(declare-fun d!1259738 () Bool)

(declare-fun lt!1512771 () List!47426)

(assert (=> d!1259738 (= lt!1512771 (++!12069 (list!17153 (c!726625 x!740616)) (efficientList$default$2!172 (c!726625 x!740616))))))

(declare-fun e!2651757 () List!47426)

(assert (=> d!1259738 (= lt!1512771 e!2651757)))

(declare-fun c!726671 () Bool)

(assert (=> d!1259738 (= c!726671 (is-Empty!14284 (c!726625 x!740616)))))

(assert (=> d!1259738 (= (efficientList!498 (c!726625 x!740616) (efficientList$default$2!172 (c!726625 x!740616))) lt!1512771)))

(declare-fun b!4271024 () Bool)

(declare-fun e!2651759 () List!47426)

(assert (=> b!4271024 (= e!2651757 e!2651759)))

(declare-fun c!726673 () Bool)

(assert (=> b!4271024 (= c!726673 (is-Leaf!22082 (c!726625 x!740616)))))

(declare-fun b!4271025 () Bool)

(declare-fun call!294145 () List!47426)

(assert (=> b!4271025 (= e!2651759 call!294145)))

(declare-fun b!4271026 () Bool)

(assert (=> b!4271026 (= e!2651757 (efficientList$default$2!172 (c!726625 x!740616)))))

(declare-fun b!4271027 () Bool)

(declare-fun e!2651758 () List!47426)

(assert (=> b!4271027 (= e!2651758 (efficientList!500 (xs!17590 (c!726625 x!740616))))))

(declare-fun b!4271028 () Bool)

(declare-fun lt!1512772 () List!47426)

(assert (=> b!4271028 (= e!2651758 lt!1512772)))

(declare-fun b!4271029 () Bool)

(declare-fun lt!1512773 () Unit!66221)

(declare-fun lt!1512770 () Unit!66221)

(assert (=> b!4271029 (= lt!1512773 lt!1512770)))

(declare-fun lt!1512769 () List!47426)

(assert (=> b!4271029 (= (++!12069 (++!12069 lt!1512769 lt!1512772) (efficientList$default$2!172 (c!726625 x!740616))) (++!12069 lt!1512769 call!294145))))

(assert (=> b!4271029 (= lt!1512770 (lemmaConcatAssociativity!2710 lt!1512769 lt!1512772 (efficientList$default$2!172 (c!726625 x!740616))))))

(assert (=> b!4271029 (= lt!1512772 (list!17153 (right!35473 (c!726625 x!740616))))))

(assert (=> b!4271029 (= lt!1512769 (list!17153 (left!35143 (c!726625 x!740616))))))

(assert (=> b!4271029 (= e!2651759 (efficientList!498 (left!35143 (c!726625 x!740616)) (efficientList!498 (right!35473 (c!726625 x!740616)) (efficientList$default$2!172 (c!726625 x!740616)))))))

(declare-fun bm!294140 () Bool)

(declare-fun c!726672 () Bool)

(assert (=> bm!294140 (= c!726672 c!726673)))

(assert (=> bm!294140 (= call!294145 (++!12069 e!2651758 (efficientList$default$2!172 (c!726625 x!740616))))))

(assert (= (and d!1259738 c!726671) b!4271026))

(assert (= (and d!1259738 (not c!726671)) b!4271024))

(assert (= (and b!4271024 c!726673) b!4271025))

(assert (= (and b!4271024 (not c!726673)) b!4271029))

(assert (= (or b!4271025 b!4271029) bm!294140))

(assert (= (and bm!294140 c!726672) b!4271027))

(assert (= (and bm!294140 (not c!726672)) b!4271028))

(assert (=> d!1259738 m!4864273))

(assert (=> d!1259738 m!4864273))

(assert (=> d!1259738 m!4864337))

(declare-fun m!4864455 () Bool)

(assert (=> d!1259738 m!4864455))

(declare-fun m!4864457 () Bool)

(assert (=> b!4271027 m!4864457))

(declare-fun m!4864459 () Bool)

(assert (=> b!4271029 m!4864459))

(assert (=> b!4271029 m!4864337))

(declare-fun m!4864461 () Bool)

(assert (=> b!4271029 m!4864461))

(assert (=> b!4271029 m!4864337))

(declare-fun m!4864463 () Bool)

(assert (=> b!4271029 m!4864463))

(declare-fun m!4864465 () Bool)

(assert (=> b!4271029 m!4864465))

(assert (=> b!4271029 m!4864341))

(assert (=> b!4271029 m!4864343))

(assert (=> b!4271029 m!4864337))

(declare-fun m!4864467 () Bool)

(assert (=> b!4271029 m!4864467))

(assert (=> b!4271029 m!4864463))

(declare-fun m!4864469 () Bool)

(assert (=> b!4271029 m!4864469))

(assert (=> b!4271029 m!4864459))

(assert (=> bm!294140 m!4864337))

(declare-fun m!4864471 () Bool)

(assert (=> bm!294140 m!4864471))

(assert (=> d!1259692 d!1259738))

(declare-fun d!1259740 () Bool)

(assert (=> d!1259740 (= (efficientList$default$2!172 (c!726625 x!740616)) Nil!47302)))

(assert (=> d!1259692 d!1259740))

(declare-fun d!1259742 () Bool)

(declare-fun c!726674 () Bool)

(assert (=> d!1259742 (= c!726674 (is-Node!14284 (c!726625 x!740615)))))

(declare-fun e!2651760 () Bool)

(assert (=> d!1259742 (= (inv!62402 (c!726625 x!740615)) e!2651760)))

(declare-fun b!4271030 () Bool)

(assert (=> b!4271030 (= e!2651760 (inv!62406 (c!726625 x!740615)))))

(declare-fun b!4271031 () Bool)

(declare-fun e!2651761 () Bool)

(assert (=> b!4271031 (= e!2651760 e!2651761)))

(declare-fun res!1754449 () Bool)

(assert (=> b!4271031 (= res!1754449 (not (is-Leaf!22082 (c!726625 x!740615))))))

(assert (=> b!4271031 (=> res!1754449 e!2651761)))

(declare-fun b!4271032 () Bool)

(assert (=> b!4271032 (= e!2651761 (inv!62407 (c!726625 x!740615)))))

(assert (= (and d!1259742 c!726674) b!4271030))

(assert (= (and d!1259742 (not c!726674)) b!4271031))

(assert (= (and b!4271031 (not res!1754449)) b!4271032))

(declare-fun m!4864473 () Bool)

(assert (=> b!4271030 m!4864473))

(declare-fun m!4864475 () Bool)

(assert (=> b!4271032 m!4864475))

(assert (=> b!4270865 d!1259742))

(assert (=> d!1259684 d!1259662))

(declare-fun d!1259744 () Bool)

(declare-fun lt!1512776 () List!47426)

(assert (=> d!1259744 (= lt!1512776 (++!12069 (list!17153 (c!726625 x!740615)) (efficientList$default$2!172 (c!726625 x!740615))))))

(declare-fun e!2651762 () List!47426)

(assert (=> d!1259744 (= lt!1512776 e!2651762)))

(declare-fun c!726675 () Bool)

(assert (=> d!1259744 (= c!726675 (is-Empty!14284 (c!726625 x!740615)))))

(assert (=> d!1259744 (= (efficientList!498 (c!726625 x!740615) (efficientList$default$2!172 (c!726625 x!740615))) lt!1512776)))

(declare-fun b!4271033 () Bool)

(declare-fun e!2651764 () List!47426)

(assert (=> b!4271033 (= e!2651762 e!2651764)))

(declare-fun c!726677 () Bool)

(assert (=> b!4271033 (= c!726677 (is-Leaf!22082 (c!726625 x!740615)))))

(declare-fun b!4271034 () Bool)

(declare-fun call!294146 () List!47426)

(assert (=> b!4271034 (= e!2651764 call!294146)))

(declare-fun b!4271035 () Bool)

(assert (=> b!4271035 (= e!2651762 (efficientList$default$2!172 (c!726625 x!740615)))))

(declare-fun b!4271036 () Bool)

(declare-fun e!2651763 () List!47426)

(assert (=> b!4271036 (= e!2651763 (efficientList!500 (xs!17590 (c!726625 x!740615))))))

(declare-fun b!4271037 () Bool)

(declare-fun lt!1512777 () List!47426)

(assert (=> b!4271037 (= e!2651763 lt!1512777)))

(declare-fun b!4271038 () Bool)

(declare-fun lt!1512778 () Unit!66221)

(declare-fun lt!1512775 () Unit!66221)

(assert (=> b!4271038 (= lt!1512778 lt!1512775)))

(declare-fun lt!1512774 () List!47426)

(assert (=> b!4271038 (= (++!12069 (++!12069 lt!1512774 lt!1512777) (efficientList$default$2!172 (c!726625 x!740615))) (++!12069 lt!1512774 call!294146))))

(assert (=> b!4271038 (= lt!1512775 (lemmaConcatAssociativity!2710 lt!1512774 lt!1512777 (efficientList$default$2!172 (c!726625 x!740615))))))

(assert (=> b!4271038 (= lt!1512777 (list!17153 (right!35473 (c!726625 x!740615))))))

(assert (=> b!4271038 (= lt!1512774 (list!17153 (left!35143 (c!726625 x!740615))))))

(assert (=> b!4271038 (= e!2651764 (efficientList!498 (left!35143 (c!726625 x!740615)) (efficientList!498 (right!35473 (c!726625 x!740615)) (efficientList$default$2!172 (c!726625 x!740615)))))))

(declare-fun bm!294141 () Bool)

(declare-fun c!726676 () Bool)

(assert (=> bm!294141 (= c!726676 c!726677)))

(assert (=> bm!294141 (= call!294146 (++!12069 e!2651763 (efficientList$default$2!172 (c!726625 x!740615))))))

(assert (= (and d!1259744 c!726675) b!4271035))

(assert (= (and d!1259744 (not c!726675)) b!4271033))

(assert (= (and b!4271033 c!726677) b!4271034))

(assert (= (and b!4271033 (not c!726677)) b!4271038))

(assert (= (or b!4271034 b!4271038) bm!294141))

(assert (= (and bm!294141 c!726676) b!4271036))

(assert (= (and bm!294141 (not c!726676)) b!4271037))

(assert (=> d!1259744 m!4864279))

(assert (=> d!1259744 m!4864279))

(assert (=> d!1259744 m!4864317))

(declare-fun m!4864477 () Bool)

(assert (=> d!1259744 m!4864477))

(declare-fun m!4864479 () Bool)

(assert (=> b!4271036 m!4864479))

(declare-fun m!4864481 () Bool)

(assert (=> b!4271038 m!4864481))

(assert (=> b!4271038 m!4864317))

(declare-fun m!4864483 () Bool)

(assert (=> b!4271038 m!4864483))

(assert (=> b!4271038 m!4864317))

(declare-fun m!4864485 () Bool)

(assert (=> b!4271038 m!4864485))

(declare-fun m!4864487 () Bool)

(assert (=> b!4271038 m!4864487))

(assert (=> b!4271038 m!4864301))

(assert (=> b!4271038 m!4864303))

(assert (=> b!4271038 m!4864317))

(declare-fun m!4864489 () Bool)

(assert (=> b!4271038 m!4864489))

(assert (=> b!4271038 m!4864485))

(declare-fun m!4864491 () Bool)

(assert (=> b!4271038 m!4864491))

(assert (=> b!4271038 m!4864481))

(assert (=> bm!294141 m!4864317))

(declare-fun m!4864493 () Bool)

(assert (=> bm!294141 m!4864493))

(assert (=> d!1259684 d!1259744))

(declare-fun d!1259746 () Bool)

(assert (=> d!1259746 (= (efficientList$default$2!172 (c!726625 x!740615)) Nil!47302)))

(assert (=> d!1259684 d!1259746))

(assert (=> b!4270866 d!1259650))

(assert (=> b!4270866 d!1259658))

(assert (=> bs!600629 d!1259654))

(assert (=> bs!600629 d!1259718))

(assert (=> bs!600629 d!1259660))

(assert (=> bs!600629 d!1259662))

(declare-fun tp!1308015 () Bool)

(declare-fun e!2651769 () Bool)

(declare-fun b!4271045 () Bool)

(declare-fun tp!1308016 () Bool)

(assert (=> b!4271045 (= e!2651769 (and (inv!62402 (left!35143 (c!726625 x!740615))) tp!1308015 (inv!62402 (right!35473 (c!726625 x!740615))) tp!1308016))))

(declare-fun b!4271046 () Bool)

(declare-fun inv!62408 (IArray!28573) Bool)

(assert (=> b!4271046 (= e!2651769 (inv!62408 (xs!17590 (c!726625 x!740615))))))

(assert (=> b!4270865 (= tp!1307999 (and (inv!62402 (c!726625 x!740615)) e!2651769))))

(assert (= (and b!4270865 (is-Node!14284 (c!726625 x!740615))) b!4271045))

(assert (= (and b!4270865 (is-Leaf!22082 (c!726625 x!740615))) b!4271046))

(declare-fun m!4864495 () Bool)

(assert (=> b!4271045 m!4864495))

(declare-fun m!4864497 () Bool)

(assert (=> b!4271045 m!4864497))

(declare-fun m!4864499 () Bool)

(assert (=> b!4271046 m!4864499))

(assert (=> b!4270865 m!4864197))

(declare-fun b!4271047 () Bool)

(declare-fun tp!1308017 () Bool)

(declare-fun tp!1308018 () Bool)

(declare-fun e!2651771 () Bool)

(assert (=> b!4271047 (= e!2651771 (and (inv!62402 (left!35143 (c!726625 x!740616))) tp!1308017 (inv!62402 (right!35473 (c!726625 x!740616))) tp!1308018))))

(declare-fun b!4271048 () Bool)

(assert (=> b!4271048 (= e!2651771 (inv!62408 (xs!17590 (c!726625 x!740616))))))

(assert (=> b!4270867 (= tp!1308000 (and (inv!62402 (c!726625 x!740616)) e!2651771))))

(assert (= (and b!4270867 (is-Node!14284 (c!726625 x!740616))) b!4271047))

(assert (= (and b!4270867 (is-Leaf!22082 (c!726625 x!740616))) b!4271048))

(declare-fun m!4864501 () Bool)

(assert (=> b!4271047 m!4864501))

(declare-fun m!4864503 () Bool)

(assert (=> b!4271047 m!4864503))

(declare-fun m!4864505 () Bool)

(assert (=> b!4271048 m!4864505))

(assert (=> b!4270867 m!4864221))

(declare-fun b!4271049 () Bool)

(declare-fun tp!1308020 () Bool)

(declare-fun e!2651773 () Bool)

(declare-fun tp!1308019 () Bool)

(assert (=> b!4271049 (= e!2651773 (and (inv!62402 (left!35143 (c!726625 x!740617))) tp!1308019 (inv!62402 (right!35473 (c!726625 x!740617))) tp!1308020))))

(declare-fun b!4271050 () Bool)

(assert (=> b!4271050 (= e!2651773 (inv!62408 (xs!17590 (c!726625 x!740617))))))

(assert (=> b!4270868 (= tp!1308001 (and (inv!62402 (c!726625 x!740617)) e!2651773))))

(assert (= (and b!4270868 (is-Node!14284 (c!726625 x!740617))) b!4271049))

(assert (= (and b!4270868 (is-Leaf!22082 (c!726625 x!740617))) b!4271050))

(declare-fun m!4864507 () Bool)

(assert (=> b!4271049 m!4864507))

(declare-fun m!4864509 () Bool)

(assert (=> b!4271049 m!4864509))

(declare-fun m!4864511 () Bool)

(assert (=> b!4271050 m!4864511))

(assert (=> b!4270868 m!4864223))

(push 1)

(assert (not d!1259722))

(assert (not b!4270949))

(assert (not d!1259738))

(assert (not d!1259720))

(assert (not b!4271036))

(assert (not d!1259730))

(assert (not b!4270952))

(assert (not b!4270865))

(assert (not d!1259712))

(assert (not d!1259732))

(assert (not b!4271000))

(assert (not b!4271038))

(assert (not b!4271005))

(assert (not b!4270948))

(assert (not d!1259728))

(assert (not b!4270941))

(assert (not b!4271029))

(assert (not b!4270953))

(assert (not d!1259716))

(assert (not b!4270940))

(assert (not b!4271021))

(assert (not bm!294140))

(assert (not b!4271032))

(assert (not b!4270944))

(assert (not b!4271045))

(assert (not d!1259726))

(assert (not b!4271049))

(assert (not b!4271023))

(assert (not d!1259744))

(assert (not b!4271046))

(assert (not bm!294141))

(assert (not b!4270868))

(assert (not b!4271027))

(assert (not b!4271007))

(assert (not b!4271048))

(assert (not b!4271030))

(assert (not b!4271018))

(assert (not bm!294139))

(assert (not bm!294138))

(assert (not b!4270993))

(assert (not b!4270995))

(assert (not b!4271020))

(assert (not b!4271047))

(assert (not b!4270867))

(assert (not b!4270945))

(assert (not b!4271050))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

