; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!10830 () Bool)

(assert start!10830)

(assert (=> start!10830 true))

(declare-fun b!108511 () Bool)

(assert (=> b!108511 true))

(assert (=> b!108511 true))

(declare-fun b!108512 () Bool)

(assert (=> b!108512 true))

(declare-fun b!108522 () Bool)

(declare-fun e!60216 () Bool)

(declare-datatypes ((List!1723 0))(
  ( (Nil!1717) (Cons!1717 (h!7114 (_ BitVec 16)) (t!21564 List!1723)) )
))
(declare-datatypes ((IArray!1099 0))(
  ( (IArray!1100 (innerList!607 List!1723)) )
))
(declare-datatypes ((Conc!549 0))(
  ( (Node!549 (left!1336 Conc!549) (right!1666 Conc!549) (csize!1328 Int) (cheight!760 Int)) (Leaf!875 (xs!3144 IArray!1099) (csize!1329 Int)) (Empty!549) )
))
(declare-datatypes ((BalanceConc!1102 0))(
  ( (BalanceConc!1103 (c!26082 Conc!549)) )
))
(declare-fun x!30047 () BalanceConc!1102)

(declare-fun tp!58986 () Bool)

(declare-fun inv!2124 (Conc!549) Bool)

(assert (=> b!108522 (= e!60216 (and (inv!2124 (c!26082 x!30047)) tp!58986))))

(declare-datatypes ((ErrorTokenValueInjection!18 0))(
  ( (ErrorTokenValueInjection!19) )
))
(declare-fun thiss!5419 () ErrorTokenValueInjection!18)

(declare-fun inst!82 () Bool)

(declare-fun inv!2125 (BalanceConc!1102) Bool)

(declare-fun list!748 (BalanceConc!1102) List!1723)

(declare-datatypes ((TokenValue!371 0))(
  ( (FloatLiteralValue!742 (text!3042 List!1723)) (TokenValueExt!370 (__x!1830 Int)) (Broken!1855 (value!13706 List!1723)) (Object!376) (End!371) (Def!371) (Underscore!371) (Match!371) (Else!371) (Error!371) (Case!371) (If!371) (Extends!371) (Abstract!371) (Class!371) (Val!371) (DelimiterValue!742 (del!431 List!1723)) (KeywordValue!377 (value!13707 List!1723)) (CommentValue!742 (value!13708 List!1723)) (WhitespaceValue!742 (value!13709 List!1723)) (IndentationValue!371 (value!13710 List!1723)) (String!2232) (Int32!371) (Broken!1856 (value!13711 List!1723)) (Boolean!372) (Unit!1151) (OperatorValue!374 (op!431 List!1723)) (IdentifierValue!742 (value!13712 List!1723)) (IdentifierValue!743 (value!13713 List!1723)) (WhitespaceValue!743 (value!13714 List!1723)) (True!742) (False!742) (Broken!1857 (value!13715 List!1723)) (Broken!1858 (value!13716 List!1723)) (True!743) (RightBrace!371) (RightBracket!371) (Colon!371) (Null!371) (Comma!371) (LeftBracket!371) (False!743) (LeftBrace!371) (ImaginaryLiteralValue!371 (text!3043 List!1723)) (StringLiteralValue!1113 (value!13717 List!1723)) (EOFValue!371 (value!13718 List!1723)) (IdentValue!371 (value!13719 List!1723)) (DelimiterValue!743 (value!13720 List!1723)) (DedentValue!371 (value!13721 List!1723)) (NewLineValue!371 (value!13722 List!1723)) (IntegerValue!1113 (value!13723 (_ BitVec 32)) (text!3044 List!1723)) (IntegerValue!1114 (value!13724 Int) (text!3045 List!1723)) (Times!371) (Or!371) (Equal!371) (Minus!371) (Broken!1859 (value!13725 List!1723)) (And!371) (Div!371) (LessEqual!371) (Mod!371) (Concat!813) (Not!371) (Plus!371) (SpaceValue!371 (value!13726 List!1723)) (IntegerValue!1115 (value!13727 Int) (text!3046 List!1723)) (StringLiteralValue!1114 (text!3047 List!1723)) (FloatLiteralValue!743 (text!3048 List!1723)) (BytesLiteralValue!371 (value!13728 List!1723)) (CommentValue!743 (value!13729 List!1723)) (StringLiteralValue!1115 (value!13730 List!1723)) (ErrorTokenValue!371 (msg!432 List!1723)) )
))
(declare-fun toCharacters!31 (ErrorTokenValueInjection!18 TokenValue!371) BalanceConc!1102)

(declare-fun toValue!38 (ErrorTokenValueInjection!18 BalanceConc!1102) TokenValue!371)

(assert (=> start!10830 (= inst!82 (=> (and (inv!2125 x!30047) e!60216) (= (list!748 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30047))) (list!748 x!30047))))))

(assert (= start!10830 b!108522))

(declare-fun m!97246 () Bool)

(assert (=> b!108522 m!97246))

(declare-fun m!97248 () Bool)

(assert (=> start!10830 m!97248))

(declare-fun m!97250 () Bool)

(assert (=> start!10830 m!97250))

(declare-fun m!97252 () Bool)

(assert (=> start!10830 m!97252))

(assert (=> start!10830 m!97252))

(declare-fun m!97254 () Bool)

(assert (=> start!10830 m!97254))

(assert (=> start!10830 m!97250))

(declare-fun m!97256 () Bool)

(assert (=> start!10830 m!97256))

(declare-fun res!51884 () Bool)

(declare-fun e!60218 () Bool)

(assert (=> b!108512 (=> res!51884 e!60218)))

(declare-fun x!30048 () BalanceConc!1102)

(declare-fun x!30049 () BalanceConc!1102)

(assert (=> b!108512 (= res!51884 (not (= (list!748 x!30048) (list!748 x!30049))))))

(declare-fun e!60217 () Bool)

(declare-fun e!60219 () Bool)

(declare-fun inst!83 () Bool)

(assert (=> b!108512 (= inst!83 (=> (and (inv!2125 x!30048) e!60217 (inv!2125 x!30049) e!60219) e!60218))))

(declare-fun b!108523 () Bool)

(assert (=> b!108523 (= e!60218 (= (toValue!38 thiss!5419 x!30048) (toValue!38 thiss!5419 x!30049)))))

(declare-fun b!108524 () Bool)

(declare-fun tp!58987 () Bool)

(assert (=> b!108524 (= e!60217 (and (inv!2124 (c!26082 x!30048)) tp!58987))))

(declare-fun b!108525 () Bool)

(declare-fun tp!58988 () Bool)

(assert (=> b!108525 (= e!60219 (and (inv!2124 (c!26082 x!30049)) tp!58988))))

(assert (= (and b!108512 (not res!51884)) b!108523))

(assert (= b!108512 b!108524))

(assert (= b!108512 b!108525))

(declare-fun m!97258 () Bool)

(assert (=> b!108512 m!97258))

(declare-fun m!97260 () Bool)

(assert (=> b!108512 m!97260))

(declare-fun m!97262 () Bool)

(assert (=> b!108512 m!97262))

(declare-fun m!97264 () Bool)

(assert (=> b!108512 m!97264))

(declare-fun m!97266 () Bool)

(assert (=> b!108523 m!97266))

(declare-fun m!97268 () Bool)

(assert (=> b!108523 m!97268))

(declare-fun m!97270 () Bool)

(assert (=> b!108524 m!97270))

(declare-fun m!97272 () Bool)

(assert (=> b!108525 m!97272))

(declare-fun bs!10564 () Bool)

(declare-fun neg-inst!82 () Bool)

(declare-fun s!16332 () Bool)

(assert (= bs!10564 (and neg-inst!82 s!16332)))

(assert (=> bs!10564 (=> true (= (list!748 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30047))) (list!748 x!30047)))))

(assert (=> m!97250 m!97252))

(assert (=> m!97250 m!97254))

(assert (=> m!97250 m!97256))

(assert (=> m!97250 s!16332))

(assert (=> m!97256 s!16332))

(declare-fun bs!10565 () Bool)

(assert (= bs!10565 (and neg-inst!82 start!10830)))

(assert (=> bs!10565 (= true inst!82)))

(declare-fun bs!10566 () Bool)

(declare-fun neg-inst!83 () Bool)

(declare-fun s!16334 () Bool)

(assert (= bs!10566 (and neg-inst!83 s!16334)))

(declare-fun res!51885 () Bool)

(declare-fun e!60220 () Bool)

(assert (=> bs!10566 (=> res!51885 e!60220)))

(assert (=> bs!10566 (= res!51885 (not (= (list!748 x!30049) (list!748 x!30049))))))

(assert (=> bs!10566 (=> true e!60220)))

(declare-fun b!108526 () Bool)

(assert (=> b!108526 (= e!60220 (= (toValue!38 thiss!5419 x!30049) (toValue!38 thiss!5419 x!30049)))))

(assert (= (and bs!10566 (not res!51885)) b!108526))

(assert (=> m!97268 m!97260))

(assert (=> m!97268 m!97260))

(assert (=> m!97268 s!16334))

(assert (=> m!97268 s!16334))

(declare-fun bs!10567 () Bool)

(declare-fun s!16336 () Bool)

(assert (= bs!10567 (and neg-inst!83 s!16336)))

(declare-fun res!51886 () Bool)

(declare-fun e!60221 () Bool)

(assert (=> bs!10567 (=> res!51886 e!60221)))

(assert (=> bs!10567 (= res!51886 (not (= (list!748 x!30048) (list!748 x!30049))))))

(assert (=> bs!10567 (=> true e!60221)))

(declare-fun b!108527 () Bool)

(assert (=> b!108527 (= e!60221 (= (toValue!38 thiss!5419 x!30048) (toValue!38 thiss!5419 x!30049)))))

(assert (= (and bs!10567 (not res!51886)) b!108527))

(declare-fun bs!10568 () Bool)

(assert (= bs!10568 (and m!97266 m!97268)))

(assert (=> bs!10568 m!97258))

(assert (=> bs!10568 m!97260))

(assert (=> bs!10568 s!16336))

(declare-fun bs!10569 () Bool)

(declare-fun s!16338 () Bool)

(assert (= bs!10569 (and neg-inst!83 s!16338)))

(declare-fun res!51887 () Bool)

(declare-fun e!60222 () Bool)

(assert (=> bs!10569 (=> res!51887 e!60222)))

(assert (=> bs!10569 (= res!51887 (not (= (list!748 x!30048) (list!748 x!30048))))))

(assert (=> bs!10569 (=> true e!60222)))

(declare-fun b!108528 () Bool)

(assert (=> b!108528 (= e!60222 (= (toValue!38 thiss!5419 x!30048) (toValue!38 thiss!5419 x!30048)))))

(assert (= (and bs!10569 (not res!51887)) b!108528))

(assert (=> m!97266 m!97258))

(assert (=> m!97266 m!97258))

(assert (=> m!97266 s!16338))

(declare-fun bs!10570 () Bool)

(declare-fun s!16340 () Bool)

(assert (= bs!10570 (and neg-inst!83 s!16340)))

(declare-fun res!51888 () Bool)

(declare-fun e!60223 () Bool)

(assert (=> bs!10570 (=> res!51888 e!60223)))

(assert (=> bs!10570 (= res!51888 (not (= (list!748 x!30049) (list!748 x!30048))))))

(assert (=> bs!10570 (=> true e!60223)))

(declare-fun b!108529 () Bool)

(assert (=> b!108529 (= e!60223 (= (toValue!38 thiss!5419 x!30049) (toValue!38 thiss!5419 x!30048)))))

(assert (= (and bs!10570 (not res!51888)) b!108529))

(assert (=> bs!10568 m!97260))

(assert (=> bs!10568 m!97258))

(assert (=> bs!10568 s!16340))

(assert (=> m!97266 s!16338))

(declare-fun bs!10571 () Bool)

(assert (= bs!10571 (and m!97258 m!97268)))

(assert (=> bs!10571 s!16336))

(declare-fun bs!10572 () Bool)

(assert (= bs!10572 (and m!97258 m!97266)))

(assert (=> bs!10572 s!16338))

(assert (=> m!97258 s!16338))

(assert (=> bs!10571 s!16340))

(assert (=> bs!10572 s!16338))

(assert (=> m!97258 s!16338))

(declare-fun bs!10573 () Bool)

(declare-fun s!16342 () Bool)

(assert (= bs!10573 (and neg-inst!83 s!16342)))

(declare-fun res!51889 () Bool)

(declare-fun e!60224 () Bool)

(assert (=> bs!10573 (=> res!51889 e!60224)))

(assert (=> bs!10573 (= res!51889 (not (= (list!748 x!30047) (list!748 x!30049))))))

(assert (=> bs!10573 (=> true e!60224)))

(declare-fun b!108530 () Bool)

(assert (=> b!108530 (= e!60224 (= (toValue!38 thiss!5419 x!30047) (toValue!38 thiss!5419 x!30049)))))

(assert (= (and bs!10573 (not res!51889)) b!108530))

(declare-fun bs!10574 () Bool)

(assert (= bs!10574 (and m!97250 m!97268)))

(assert (=> bs!10574 m!97256))

(assert (=> bs!10574 m!97260))

(assert (=> bs!10574 s!16342))

(declare-fun bs!10575 () Bool)

(declare-fun s!16344 () Bool)

(assert (= bs!10575 (and neg-inst!83 s!16344)))

(declare-fun res!51890 () Bool)

(declare-fun e!60225 () Bool)

(assert (=> bs!10575 (=> res!51890 e!60225)))

(assert (=> bs!10575 (= res!51890 (not (= (list!748 x!30047) (list!748 x!30048))))))

(assert (=> bs!10575 (=> true e!60225)))

(declare-fun b!108531 () Bool)

(assert (=> b!108531 (= e!60225 (= (toValue!38 thiss!5419 x!30047) (toValue!38 thiss!5419 x!30048)))))

(assert (= (and bs!10575 (not res!51890)) b!108531))

(declare-fun bs!10576 () Bool)

(assert (= bs!10576 (and m!97250 m!97266 m!97258)))

(assert (=> bs!10576 m!97256))

(assert (=> bs!10576 m!97258))

(assert (=> bs!10576 s!16344))

(declare-fun bs!10577 () Bool)

(declare-fun s!16346 () Bool)

(assert (= bs!10577 (and neg-inst!83 s!16346)))

(declare-fun res!51891 () Bool)

(declare-fun e!60226 () Bool)

(assert (=> bs!10577 (=> res!51891 e!60226)))

(assert (=> bs!10577 (= res!51891 (not (= (list!748 x!30047) (list!748 x!30047))))))

(assert (=> bs!10577 (=> true e!60226)))

(declare-fun b!108532 () Bool)

(assert (=> b!108532 (= e!60226 (= (toValue!38 thiss!5419 x!30047) (toValue!38 thiss!5419 x!30047)))))

(assert (= (and bs!10577 (not res!51891)) b!108532))

(assert (=> m!97250 m!97256))

(assert (=> m!97250 m!97256))

(assert (=> m!97250 s!16346))

(declare-fun bs!10578 () Bool)

(declare-fun s!16348 () Bool)

(assert (= bs!10578 (and neg-inst!83 s!16348)))

(declare-fun res!51892 () Bool)

(declare-fun e!60227 () Bool)

(assert (=> bs!10578 (=> res!51892 e!60227)))

(assert (=> bs!10578 (= res!51892 (not (= (list!748 x!30049) (list!748 x!30047))))))

(assert (=> bs!10578 (=> true e!60227)))

(declare-fun b!108533 () Bool)

(assert (=> b!108533 (= e!60227 (= (toValue!38 thiss!5419 x!30049) (toValue!38 thiss!5419 x!30047)))))

(assert (= (and bs!10578 (not res!51892)) b!108533))

(assert (=> bs!10574 m!97260))

(assert (=> bs!10574 m!97256))

(assert (=> bs!10574 s!16348))

(declare-fun bs!10579 () Bool)

(declare-fun s!16350 () Bool)

(assert (= bs!10579 (and neg-inst!83 s!16350)))

(declare-fun res!51893 () Bool)

(declare-fun e!60228 () Bool)

(assert (=> bs!10579 (=> res!51893 e!60228)))

(assert (=> bs!10579 (= res!51893 (not (= (list!748 x!30048) (list!748 x!30047))))))

(assert (=> bs!10579 (=> true e!60228)))

(declare-fun b!108534 () Bool)

(assert (=> b!108534 (= e!60228 (= (toValue!38 thiss!5419 x!30048) (toValue!38 thiss!5419 x!30047)))))

(assert (= (and bs!10579 (not res!51893)) b!108534))

(assert (=> bs!10576 m!97258))

(assert (=> bs!10576 m!97256))

(assert (=> bs!10576 s!16350))

(assert (=> m!97250 s!16346))

(declare-fun bs!10580 () Bool)

(assert (= bs!10580 (and m!97256 m!97268)))

(assert (=> bs!10580 s!16342))

(declare-fun bs!10581 () Bool)

(assert (= bs!10581 (and m!97256 m!97250)))

(assert (=> bs!10581 s!16346))

(declare-fun bs!10582 () Bool)

(assert (= bs!10582 (and m!97256 m!97266 m!97258)))

(assert (=> bs!10582 s!16344))

(assert (=> m!97256 s!16346))

(assert (=> bs!10580 s!16348))

(assert (=> bs!10581 s!16346))

(assert (=> bs!10582 s!16350))

(assert (=> m!97256 s!16346))

(declare-fun bs!10583 () Bool)

(declare-fun s!16352 () Bool)

(assert (= bs!10583 (and neg-inst!83 s!16352)))

(declare-fun res!51894 () Bool)

(declare-fun e!60229 () Bool)

(assert (=> bs!10583 (=> res!51894 e!60229)))

(assert (=> bs!10583 (= res!51894 (not (= (list!748 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30047))) (list!748 x!30049))))))

(assert (=> bs!10583 (=> true e!60229)))

(declare-fun b!108535 () Bool)

(assert (=> b!108535 (= e!60229 (= (toValue!38 thiss!5419 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30047))) (toValue!38 thiss!5419 x!30049)))))

(assert (= (and bs!10583 (not res!51894)) b!108535))

(declare-fun bs!10584 () Bool)

(assert (= bs!10584 (and m!97254 m!97268)))

(assert (=> bs!10584 m!97254))

(assert (=> bs!10584 m!97260))

(assert (=> bs!10584 s!16352))

(declare-fun bs!10585 () Bool)

(declare-fun s!16354 () Bool)

(assert (= bs!10585 (and neg-inst!83 s!16354)))

(declare-fun res!51895 () Bool)

(declare-fun e!60230 () Bool)

(assert (=> bs!10585 (=> res!51895 e!60230)))

(assert (=> bs!10585 (= res!51895 (not (= (list!748 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30047))) (list!748 x!30047))))))

(assert (=> bs!10585 (=> true e!60230)))

(declare-fun b!108536 () Bool)

(assert (=> b!108536 (= e!60230 (= (toValue!38 thiss!5419 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30047))) (toValue!38 thiss!5419 x!30047)))))

(assert (= (and bs!10585 (not res!51895)) b!108536))

(declare-fun bs!10586 () Bool)

(assert (= bs!10586 (and m!97254 m!97250 m!97256)))

(assert (=> bs!10586 m!97254))

(assert (=> bs!10586 m!97256))

(assert (=> bs!10586 s!16354))

(declare-fun bs!10587 () Bool)

(declare-fun s!16356 () Bool)

(assert (= bs!10587 (and neg-inst!83 s!16356)))

(declare-fun res!51896 () Bool)

(declare-fun e!60231 () Bool)

(assert (=> bs!10587 (=> res!51896 e!60231)))

(assert (=> bs!10587 (= res!51896 (not (= (list!748 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30047))) (list!748 x!30048))))))

(assert (=> bs!10587 (=> true e!60231)))

(declare-fun b!108537 () Bool)

(assert (=> b!108537 (= e!60231 (= (toValue!38 thiss!5419 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30047))) (toValue!38 thiss!5419 x!30048)))))

(assert (= (and bs!10587 (not res!51896)) b!108537))

(declare-fun bs!10588 () Bool)

(assert (= bs!10588 (and m!97254 m!97266 m!97258)))

(assert (=> bs!10588 m!97254))

(assert (=> bs!10588 m!97258))

(assert (=> bs!10588 s!16356))

(declare-fun bs!10589 () Bool)

(declare-fun s!16358 () Bool)

(assert (= bs!10589 (and neg-inst!83 s!16358)))

(declare-fun res!51897 () Bool)

(declare-fun e!60232 () Bool)

(assert (=> bs!10589 (=> res!51897 e!60232)))

(assert (=> bs!10589 (= res!51897 (not (= (list!748 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30047))) (list!748 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30047))))))))

(assert (=> bs!10589 (=> true e!60232)))

(declare-fun b!108538 () Bool)

(assert (=> b!108538 (= e!60232 (= (toValue!38 thiss!5419 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30047))) (toValue!38 thiss!5419 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30047)))))))

(assert (= (and bs!10589 (not res!51897)) b!108538))

(assert (=> m!97254 s!16358))

(declare-fun bs!10590 () Bool)

(declare-fun s!16360 () Bool)

(assert (= bs!10590 (and neg-inst!83 s!16360)))

(declare-fun res!51898 () Bool)

(declare-fun e!60233 () Bool)

(assert (=> bs!10590 (=> res!51898 e!60233)))

(assert (=> bs!10590 (= res!51898 (not (= (list!748 x!30049) (list!748 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30047))))))))

(assert (=> bs!10590 (=> true e!60233)))

(declare-fun b!108539 () Bool)

(assert (=> b!108539 (= e!60233 (= (toValue!38 thiss!5419 x!30049) (toValue!38 thiss!5419 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30047)))))))

(assert (= (and bs!10590 (not res!51898)) b!108539))

(assert (=> bs!10584 m!97260))

(assert (=> bs!10584 m!97254))

(assert (=> bs!10584 s!16360))

(declare-fun bs!10591 () Bool)

(declare-fun s!16362 () Bool)

(assert (= bs!10591 (and neg-inst!83 s!16362)))

(declare-fun res!51899 () Bool)

(declare-fun e!60234 () Bool)

(assert (=> bs!10591 (=> res!51899 e!60234)))

(assert (=> bs!10591 (= res!51899 (not (= (list!748 x!30047) (list!748 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30047))))))))

(assert (=> bs!10591 (=> true e!60234)))

(declare-fun b!108540 () Bool)

(assert (=> b!108540 (= e!60234 (= (toValue!38 thiss!5419 x!30047) (toValue!38 thiss!5419 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30047)))))))

(assert (= (and bs!10591 (not res!51899)) b!108540))

(assert (=> bs!10586 m!97256))

(assert (=> bs!10586 m!97254))

(assert (=> bs!10586 s!16362))

(declare-fun bs!10592 () Bool)

(declare-fun s!16364 () Bool)

(assert (= bs!10592 (and neg-inst!83 s!16364)))

(declare-fun res!51900 () Bool)

(declare-fun e!60235 () Bool)

(assert (=> bs!10592 (=> res!51900 e!60235)))

(assert (=> bs!10592 (= res!51900 (not (= (list!748 x!30048) (list!748 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30047))))))))

(assert (=> bs!10592 (=> true e!60235)))

(declare-fun b!108541 () Bool)

(assert (=> b!108541 (= e!60235 (= (toValue!38 thiss!5419 x!30048) (toValue!38 thiss!5419 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30047)))))))

(assert (= (and bs!10592 (not res!51900)) b!108541))

(assert (=> bs!10588 m!97258))

(assert (=> bs!10588 m!97254))

(assert (=> bs!10588 s!16364))

(assert (=> m!97254 s!16358))

(declare-fun bs!10593 () Bool)

(assert (= bs!10593 (and m!97260 m!97268)))

(assert (=> bs!10593 s!16334))

(declare-fun bs!10594 () Bool)

(assert (= bs!10594 (and m!97260 m!97266 m!97258)))

(assert (=> bs!10594 s!16340))

(declare-fun bs!10595 () Bool)

(assert (= bs!10595 (and m!97260 m!97254)))

(assert (=> bs!10595 s!16360))

(assert (=> m!97260 s!16334))

(declare-fun bs!10596 () Bool)

(assert (= bs!10596 (and m!97260 m!97250 m!97256)))

(assert (=> bs!10596 s!16348))

(assert (=> bs!10594 s!16336))

(assert (=> bs!10595 s!16352))

(assert (=> bs!10596 s!16342))

(assert (=> m!97260 s!16334))

(assert (=> bs!10593 s!16334))

(declare-fun bs!10597 () Bool)

(assert (= bs!10597 (and neg-inst!83 b!108512)))

(assert (=> bs!10597 (= true inst!83)))

(declare-fun res!51881 () Bool)

(declare-fun e!60214 () Bool)

(assert (=> start!10830 (=> res!51881 e!60214)))

(declare-fun lambda!2136 () Int)

(declare-fun Forall!86 (Int) Bool)

(assert (=> start!10830 (= res!51881 (not (Forall!86 lambda!2136)))))

(assert (=> start!10830 (= (Forall!86 lambda!2136) inst!82)))

(assert (=> start!10830 (not e!60214)))

(assert (=> start!10830 true))

(declare-fun e!60215 () Bool)

(assert (=> b!108511 (= e!60214 e!60215)))

(declare-fun res!51882 () Bool)

(assert (=> b!108511 (=> res!51882 e!60215)))

(declare-fun lambda!2137 () Int)

(declare-fun lambda!2138 () Int)

(declare-fun semiInverseModEq!105 (Int Int) Bool)

(assert (=> b!108511 (= res!51882 (not (semiInverseModEq!105 lambda!2137 lambda!2138)))))

(assert (=> b!108511 (= (semiInverseModEq!105 lambda!2137 lambda!2138) (Forall!86 lambda!2136))))

(declare-fun e!60213 () Bool)

(assert (=> b!108512 (= e!60215 e!60213)))

(declare-fun res!51883 () Bool)

(assert (=> b!108512 (=> res!51883 e!60213)))

(declare-fun lambda!2139 () Int)

(declare-fun Forall2!70 (Int) Bool)

(assert (=> b!108512 (= res!51883 (not (Forall2!70 lambda!2139)))))

(assert (=> b!108512 (= (Forall2!70 lambda!2139) inst!83)))

(declare-fun b!108513 () Bool)

(declare-fun equivClasses!96 (Int Int) Bool)

(assert (=> b!108513 (= e!60213 (equivClasses!96 lambda!2137 lambda!2138))))

(assert (=> b!108513 (= (equivClasses!96 lambda!2137 lambda!2138) (Forall2!70 lambda!2139))))

(assert (= neg-inst!82 inst!82))

(assert (= (and start!10830 (not res!51881)) b!108511))

(assert (= (and b!108511 (not res!51882)) b!108512))

(assert (= neg-inst!83 inst!83))

(assert (= (and b!108512 (not res!51883)) b!108513))

(declare-fun m!97274 () Bool)

(assert (=> start!10830 m!97274))

(assert (=> start!10830 m!97274))

(declare-fun m!97276 () Bool)

(assert (=> b!108511 m!97276))

(assert (=> b!108511 m!97276))

(assert (=> b!108511 m!97274))

(declare-fun m!97278 () Bool)

(assert (=> b!108512 m!97278))

(assert (=> b!108512 m!97278))

(declare-fun m!97280 () Bool)

(assert (=> b!108513 m!97280))

(assert (=> b!108513 m!97280))

(assert (=> b!108513 m!97278))

(check-sat (not b!108523) (not b!108527) (not b!108513) (not b!108522) (not bs!10585) (not b!108511) (not bs!10564) (not bs!10569) (not b!108524) (not bs!10587) (not b!108525) (not start!10830) (not b!108536) (not bs!10589) (not bs!10570) (not b!108531) (not bs!10578) (not bs!10583) (not b!108529) (not b!108538) (not b!108539) (not b!108540) (not bs!10577) (not bs!10575) (not bs!10592) (not b!108528) (not b!108534) (not b!108533) (not b!108535) (not bs!10579) (not b!108541) (not b!108526) (not bs!10573) (not b!108537) (not bs!10591) (not b!108532) (not b!108512) (not bs!10567) (not bs!10590) (not b!108530) (not bs!10566))
(check-sat)
