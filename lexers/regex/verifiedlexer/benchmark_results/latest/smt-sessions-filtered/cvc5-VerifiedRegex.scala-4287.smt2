; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!230214 () Bool)

(assert start!230214)

(assert (=> start!230214 true))

(declare-fun b!2329889 () Bool)

(assert (=> b!2329889 true))

(assert (=> b!2329889 true))

(declare-fun b!2329890 () Bool)

(assert (=> b!2329890 true))

(declare-fun b!2329901 () Bool)

(declare-fun e!1492853 () Bool)

(declare-datatypes ((List!27927 0))(
  ( (Nil!27829) (Cons!27829 (h!33230 (_ BitVec 16)) (t!207772 List!27927)) )
))
(declare-datatypes ((IArray!18273 0))(
  ( (IArray!18274 (innerList!9194 List!27927)) )
))
(declare-datatypes ((Conc!9134 0))(
  ( (Node!9134 (left!21143 Conc!9134) (right!21473 Conc!9134) (csize!18498 Int) (cheight!9345 Int)) (Leaf!13422 (xs!12114 IArray!18273) (csize!18499 Int)) (Empty!9134) )
))
(declare-datatypes ((BalanceConc!17880 0))(
  ( (BalanceConc!17881 (c!370108 Conc!9134)) )
))
(declare-fun x!443008 () BalanceConc!17880)

(declare-fun tp!738272 () Bool)

(declare-fun inv!37918 (Conc!9134) Bool)

(assert (=> b!2329901 (= e!1492853 (and (inv!37918 (c!370108 x!443008)) tp!738272))))

(declare-fun inst!1390 () Bool)

(declare-datatypes ((FloatLiteralValueInjection!124 0))(
  ( (FloatLiteralValueInjection!125) )
))
(declare-fun thiss!3053 () FloatLiteralValueInjection!124)

(declare-fun inv!37919 (BalanceConc!17880) Bool)

(declare-fun list!11070 (BalanceConc!17880) List!27927)

(declare-datatypes ((TokenValue!4618 0))(
  ( (FloatLiteralValue!9236 (text!32771 List!27927)) (TokenValueExt!4617 (__x!18387 Int)) (Broken!23090 (value!140989 List!27927)) (Object!4715) (End!4618) (Def!4618) (Underscore!4618) (Match!4618) (Else!4618) (Error!4618) (Case!4618) (If!4618) (Extends!4618) (Abstract!4618) (Class!4618) (Val!4618) (DelimiterValue!9236 (del!4678 List!27927)) (KeywordValue!4624 (value!140990 List!27927)) (CommentValue!9236 (value!140991 List!27927)) (WhitespaceValue!9236 (value!140992 List!27927)) (IndentationValue!4618 (value!140993 List!27927)) (String!30451) (Int32!4618) (Broken!23091 (value!140994 List!27927)) (Boolean!4619) (Unit!40596) (OperatorValue!4621 (op!4678 List!27927)) (IdentifierValue!9236 (value!140995 List!27927)) (IdentifierValue!9237 (value!140996 List!27927)) (WhitespaceValue!9237 (value!140997 List!27927)) (True!9236) (False!9236) (Broken!23092 (value!140998 List!27927)) (Broken!23093 (value!140999 List!27927)) (True!9237) (RightBrace!4618) (RightBracket!4618) (Colon!4618) (Null!4618) (Comma!4618) (LeftBracket!4618) (False!9237) (LeftBrace!4618) (ImaginaryLiteralValue!4618 (text!32772 List!27927)) (StringLiteralValue!13854 (value!141000 List!27927)) (EOFValue!4618 (value!141001 List!27927)) (IdentValue!4618 (value!141002 List!27927)) (DelimiterValue!9237 (value!141003 List!27927)) (DedentValue!4618 (value!141004 List!27927)) (NewLineValue!4618 (value!141005 List!27927)) (IntegerValue!13854 (value!141006 (_ BitVec 32)) (text!32773 List!27927)) (IntegerValue!13855 (value!141007 Int) (text!32774 List!27927)) (Times!4618) (Or!4618) (Equal!4618) (Minus!4618) (Broken!23094 (value!141008 List!27927)) (And!4618) (Div!4618) (LessEqual!4618) (Mod!4618) (Concat!11434) (Not!4618) (Plus!4618) (SpaceValue!4618 (value!141009 List!27927)) (IntegerValue!13856 (value!141010 Int) (text!32775 List!27927)) (StringLiteralValue!13855 (text!32776 List!27927)) (FloatLiteralValue!9237 (text!32777 List!27927)) (BytesLiteralValue!4618 (value!141011 List!27927)) (CommentValue!9237 (value!141012 List!27927)) (StringLiteralValue!13856 (value!141013 List!27927)) (ErrorTokenValue!4618 (msg!4679 List!27927)) )
))
(declare-fun toCharacters!1 (FloatLiteralValueInjection!124 TokenValue!4618) BalanceConc!17880)

(declare-fun toValue!8 (FloatLiteralValueInjection!124 BalanceConc!17880) TokenValue!4618)

(assert (=> start!230214 (= inst!1390 (=> (and (inv!37919 x!443008) e!1492853) (= (list!11070 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!443008))) (list!11070 x!443008))))))

(assert (= start!230214 b!2329901))

(declare-fun m!2760231 () Bool)

(assert (=> b!2329901 m!2760231))

(declare-fun m!2760233 () Bool)

(assert (=> start!230214 m!2760233))

(assert (=> start!230214 m!2760233))

(declare-fun m!2760235 () Bool)

(assert (=> start!230214 m!2760235))

(declare-fun m!2760237 () Bool)

(assert (=> start!230214 m!2760237))

(declare-fun m!2760239 () Bool)

(assert (=> start!230214 m!2760239))

(assert (=> start!230214 m!2760235))

(declare-fun m!2760241 () Bool)

(assert (=> start!230214 m!2760241))

(declare-fun res!994736 () Bool)

(declare-fun e!1492854 () Bool)

(assert (=> b!2329890 (=> res!994736 e!1492854)))

(declare-fun x!443009 () BalanceConc!17880)

(declare-fun x!443010 () BalanceConc!17880)

(assert (=> b!2329890 (= res!994736 (not (= (list!11070 x!443009) (list!11070 x!443010))))))

(declare-fun e!1492855 () Bool)

(declare-fun inst!1391 () Bool)

(declare-fun e!1492856 () Bool)

(assert (=> b!2329890 (= inst!1391 (=> (and (inv!37919 x!443009) e!1492856 (inv!37919 x!443010) e!1492855) e!1492854))))

(declare-fun b!2329902 () Bool)

(assert (=> b!2329902 (= e!1492854 (= (toValue!8 thiss!3053 x!443009) (toValue!8 thiss!3053 x!443010)))))

(declare-fun b!2329903 () Bool)

(declare-fun tp!738273 () Bool)

(assert (=> b!2329903 (= e!1492856 (and (inv!37918 (c!370108 x!443009)) tp!738273))))

(declare-fun b!2329904 () Bool)

(declare-fun tp!738274 () Bool)

(assert (=> b!2329904 (= e!1492855 (and (inv!37918 (c!370108 x!443010)) tp!738274))))

(assert (= (and b!2329890 (not res!994736)) b!2329902))

(assert (= b!2329890 b!2329903))

(assert (= b!2329890 b!2329904))

(declare-fun m!2760243 () Bool)

(assert (=> b!2329890 m!2760243))

(declare-fun m!2760245 () Bool)

(assert (=> b!2329890 m!2760245))

(declare-fun m!2760247 () Bool)

(assert (=> b!2329890 m!2760247))

(declare-fun m!2760249 () Bool)

(assert (=> b!2329890 m!2760249))

(declare-fun m!2760251 () Bool)

(assert (=> b!2329902 m!2760251))

(declare-fun m!2760253 () Bool)

(assert (=> b!2329902 m!2760253))

(declare-fun m!2760255 () Bool)

(assert (=> b!2329903 m!2760255))

(declare-fun m!2760257 () Bool)

(assert (=> b!2329904 m!2760257))

(declare-fun bs!459633 () Bool)

(declare-fun neg-inst!1390 () Bool)

(declare-fun s!225272 () Bool)

(assert (= bs!459633 (and neg-inst!1390 s!225272)))

(assert (=> bs!459633 (=> true (= (list!11070 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!443008))) (list!11070 x!443008)))))

(assert (=> m!2760239 m!2760233))

(assert (=> m!2760239 m!2760235))

(assert (=> m!2760239 m!2760241))

(assert (=> m!2760239 s!225272))

(assert (=> m!2760233 s!225272))

(declare-fun bs!459634 () Bool)

(assert (= bs!459634 (and neg-inst!1390 start!230214)))

(assert (=> bs!459634 (= true inst!1390)))

(declare-fun bs!459635 () Bool)

(declare-fun neg-inst!1391 () Bool)

(declare-fun s!225274 () Bool)

(assert (= bs!459635 (and neg-inst!1391 s!225274)))

(declare-fun res!994737 () Bool)

(declare-fun e!1492857 () Bool)

(assert (=> bs!459635 (=> res!994737 e!1492857)))

(assert (=> bs!459635 (= res!994737 (not (= (list!11070 x!443008) (list!11070 x!443008))))))

(assert (=> bs!459635 (=> true e!1492857)))

(declare-fun b!2329905 () Bool)

(assert (=> b!2329905 (= e!1492857 (= (toValue!8 thiss!3053 x!443008) (toValue!8 thiss!3053 x!443008)))))

(assert (= (and bs!459635 (not res!994737)) b!2329905))

(assert (=> m!2760239 s!225274))

(assert (=> m!2760239 s!225274))

(declare-fun bs!459636 () Bool)

(declare-fun s!225276 () Bool)

(assert (= bs!459636 (and neg-inst!1391 s!225276)))

(declare-fun res!994738 () Bool)

(declare-fun e!1492858 () Bool)

(assert (=> bs!459636 (=> res!994738 e!1492858)))

(assert (=> bs!459636 (= res!994738 (not (= (list!11070 x!443009) (list!11070 x!443008))))))

(assert (=> bs!459636 (=> true e!1492858)))

(declare-fun b!2329906 () Bool)

(assert (=> b!2329906 (= e!1492858 (= (toValue!8 thiss!3053 x!443009) (toValue!8 thiss!3053 x!443008)))))

(assert (= (and bs!459636 (not res!994738)) b!2329906))

(declare-fun bs!459637 () Bool)

(assert (= bs!459637 (and m!2760243 m!2760239)))

(assert (=> bs!459637 m!2760243))

(assert (=> bs!459637 m!2760239))

(assert (=> bs!459637 s!225276))

(declare-fun bs!459638 () Bool)

(declare-fun s!225278 () Bool)

(assert (= bs!459638 (and neg-inst!1391 s!225278)))

(declare-fun res!994739 () Bool)

(declare-fun e!1492859 () Bool)

(assert (=> bs!459638 (=> res!994739 e!1492859)))

(assert (=> bs!459638 (= res!994739 (not (= (list!11070 x!443009) (list!11070 x!443009))))))

(assert (=> bs!459638 (=> true e!1492859)))

(declare-fun b!2329907 () Bool)

(assert (=> b!2329907 (= e!1492859 (= (toValue!8 thiss!3053 x!443009) (toValue!8 thiss!3053 x!443009)))))

(assert (= (and bs!459638 (not res!994739)) b!2329907))

(assert (=> m!2760243 s!225278))

(declare-fun bs!459639 () Bool)

(declare-fun s!225280 () Bool)

(assert (= bs!459639 (and neg-inst!1391 s!225280)))

(declare-fun res!994740 () Bool)

(declare-fun e!1492860 () Bool)

(assert (=> bs!459639 (=> res!994740 e!1492860)))

(assert (=> bs!459639 (= res!994740 (not (= (list!11070 x!443008) (list!11070 x!443009))))))

(assert (=> bs!459639 (=> true e!1492860)))

(declare-fun b!2329908 () Bool)

(assert (=> b!2329908 (= e!1492860 (= (toValue!8 thiss!3053 x!443008) (toValue!8 thiss!3053 x!443009)))))

(assert (= (and bs!459639 (not res!994740)) b!2329908))

(assert (=> bs!459637 m!2760239))

(assert (=> bs!459637 m!2760243))

(assert (=> bs!459637 s!225280))

(assert (=> m!2760243 s!225278))

(declare-fun bs!459640 () Bool)

(declare-fun s!225282 () Bool)

(assert (= bs!459640 (and neg-inst!1391 s!225282)))

(declare-fun res!994741 () Bool)

(declare-fun e!1492861 () Bool)

(assert (=> bs!459640 (=> res!994741 e!1492861)))

(assert (=> bs!459640 (= res!994741 (not (= (list!11070 x!443010) (list!11070 x!443008))))))

(assert (=> bs!459640 (=> true e!1492861)))

(declare-fun b!2329909 () Bool)

(assert (=> b!2329909 (= e!1492861 (= (toValue!8 thiss!3053 x!443010) (toValue!8 thiss!3053 x!443008)))))

(assert (= (and bs!459640 (not res!994741)) b!2329909))

(declare-fun bs!459641 () Bool)

(assert (= bs!459641 (and m!2760245 m!2760239)))

(assert (=> bs!459641 m!2760245))

(assert (=> bs!459641 m!2760239))

(assert (=> bs!459641 s!225282))

(declare-fun bs!459642 () Bool)

(declare-fun s!225284 () Bool)

(assert (= bs!459642 (and neg-inst!1391 s!225284)))

(declare-fun res!994742 () Bool)

(declare-fun e!1492862 () Bool)

(assert (=> bs!459642 (=> res!994742 e!1492862)))

(assert (=> bs!459642 (= res!994742 (not (= (list!11070 x!443010) (list!11070 x!443009))))))

(assert (=> bs!459642 (=> true e!1492862)))

(declare-fun b!2329910 () Bool)

(assert (=> b!2329910 (= e!1492862 (= (toValue!8 thiss!3053 x!443010) (toValue!8 thiss!3053 x!443009)))))

(assert (= (and bs!459642 (not res!994742)) b!2329910))

(declare-fun bs!459643 () Bool)

(assert (= bs!459643 (and m!2760245 m!2760243)))

(assert (=> bs!459643 m!2760245))

(assert (=> bs!459643 m!2760243))

(assert (=> bs!459643 s!225284))

(declare-fun bs!459644 () Bool)

(declare-fun s!225286 () Bool)

(assert (= bs!459644 (and neg-inst!1391 s!225286)))

(declare-fun res!994743 () Bool)

(declare-fun e!1492863 () Bool)

(assert (=> bs!459644 (=> res!994743 e!1492863)))

(assert (=> bs!459644 (= res!994743 (not (= (list!11070 x!443010) (list!11070 x!443010))))))

(assert (=> bs!459644 (=> true e!1492863)))

(declare-fun b!2329911 () Bool)

(assert (=> b!2329911 (= e!1492863 (= (toValue!8 thiss!3053 x!443010) (toValue!8 thiss!3053 x!443010)))))

(assert (= (and bs!459644 (not res!994743)) b!2329911))

(assert (=> m!2760245 s!225286))

(declare-fun bs!459645 () Bool)

(declare-fun s!225288 () Bool)

(assert (= bs!459645 (and neg-inst!1391 s!225288)))

(declare-fun res!994744 () Bool)

(declare-fun e!1492864 () Bool)

(assert (=> bs!459645 (=> res!994744 e!1492864)))

(assert (=> bs!459645 (= res!994744 (not (= (list!11070 x!443008) (list!11070 x!443010))))))

(assert (=> bs!459645 (=> true e!1492864)))

(declare-fun b!2329912 () Bool)

(assert (=> b!2329912 (= e!1492864 (= (toValue!8 thiss!3053 x!443008) (toValue!8 thiss!3053 x!443010)))))

(assert (= (and bs!459645 (not res!994744)) b!2329912))

(assert (=> bs!459641 m!2760239))

(assert (=> bs!459641 m!2760245))

(assert (=> bs!459641 s!225288))

(declare-fun bs!459646 () Bool)

(declare-fun s!225290 () Bool)

(assert (= bs!459646 (and neg-inst!1391 s!225290)))

(declare-fun res!994745 () Bool)

(declare-fun e!1492865 () Bool)

(assert (=> bs!459646 (=> res!994745 e!1492865)))

(assert (=> bs!459646 (= res!994745 (not (= (list!11070 x!443009) (list!11070 x!443010))))))

(assert (=> bs!459646 (=> true e!1492865)))

(declare-fun b!2329913 () Bool)

(assert (=> b!2329913 (= e!1492865 (= (toValue!8 thiss!3053 x!443009) (toValue!8 thiss!3053 x!443010)))))

(assert (= (and bs!459646 (not res!994745)) b!2329913))

(assert (=> bs!459643 m!2760243))

(assert (=> bs!459643 m!2760245))

(assert (=> bs!459643 s!225290))

(assert (=> m!2760245 s!225286))

(declare-fun bs!459647 () Bool)

(assert (= bs!459647 (and m!2760253 m!2760239)))

(assert (=> bs!459647 s!225282))

(declare-fun bs!459648 () Bool)

(assert (= bs!459648 (and m!2760253 m!2760243)))

(assert (=> bs!459648 s!225284))

(declare-fun bs!459649 () Bool)

(assert (= bs!459649 (and m!2760253 m!2760245)))

(assert (=> bs!459649 s!225286))

(assert (=> m!2760253 s!225286))

(assert (=> bs!459647 s!225288))

(assert (=> bs!459648 s!225290))

(assert (=> bs!459649 s!225286))

(assert (=> m!2760253 s!225286))

(declare-fun bs!459650 () Bool)

(assert (= bs!459650 (and m!2760233 m!2760239)))

(assert (=> bs!459650 s!225274))

(declare-fun bs!459651 () Bool)

(assert (= bs!459651 (and m!2760233 m!2760243)))

(assert (=> bs!459651 s!225280))

(declare-fun bs!459652 () Bool)

(assert (= bs!459652 (and m!2760233 m!2760245 m!2760253)))

(assert (=> bs!459652 s!225288))

(assert (=> m!2760233 s!225274))

(assert (=> bs!459650 s!225274))

(assert (=> bs!459651 s!225276))

(assert (=> bs!459652 s!225282))

(assert (=> m!2760233 s!225274))

(declare-fun bs!459653 () Bool)

(assert (= bs!459653 (and m!2760251 m!2760239 m!2760233)))

(assert (=> bs!459653 s!225276))

(declare-fun bs!459654 () Bool)

(assert (= bs!459654 (and m!2760251 m!2760243)))

(assert (=> bs!459654 s!225278))

(declare-fun bs!459655 () Bool)

(assert (= bs!459655 (and m!2760251 m!2760245 m!2760253)))

(assert (=> bs!459655 s!225290))

(assert (=> m!2760251 s!225278))

(assert (=> bs!459653 s!225280))

(assert (=> bs!459654 s!225278))

(assert (=> bs!459655 s!225284))

(assert (=> m!2760251 s!225278))

(declare-fun bs!459656 () Bool)

(declare-fun s!225292 () Bool)

(assert (= bs!459656 (and neg-inst!1391 s!225292)))

(declare-fun res!994746 () Bool)

(declare-fun e!1492866 () Bool)

(assert (=> bs!459656 (=> res!994746 e!1492866)))

(assert (=> bs!459656 (= res!994746 (not (= (list!11070 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!443008))) (list!11070 x!443008))))))

(assert (=> bs!459656 (=> true e!1492866)))

(declare-fun b!2329914 () Bool)

(assert (=> b!2329914 (= e!1492866 (= (toValue!8 thiss!3053 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!443008))) (toValue!8 thiss!3053 x!443008)))))

(assert (= (and bs!459656 (not res!994746)) b!2329914))

(declare-fun bs!459657 () Bool)

(assert (= bs!459657 (and m!2760241 m!2760239 m!2760233)))

(assert (=> bs!459657 m!2760241))

(assert (=> bs!459657 m!2760239))

(assert (=> bs!459657 s!225292))

(declare-fun bs!459658 () Bool)

(declare-fun s!225294 () Bool)

(assert (= bs!459658 (and neg-inst!1391 s!225294)))

(declare-fun res!994747 () Bool)

(declare-fun e!1492867 () Bool)

(assert (=> bs!459658 (=> res!994747 e!1492867)))

(assert (=> bs!459658 (= res!994747 (not (= (list!11070 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!443008))) (list!11070 x!443009))))))

(assert (=> bs!459658 (=> true e!1492867)))

(declare-fun b!2329915 () Bool)

(assert (=> b!2329915 (= e!1492867 (= (toValue!8 thiss!3053 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!443008))) (toValue!8 thiss!3053 x!443009)))))

(assert (= (and bs!459658 (not res!994747)) b!2329915))

(declare-fun bs!459659 () Bool)

(assert (= bs!459659 (and m!2760241 m!2760243 m!2760251)))

(assert (=> bs!459659 m!2760241))

(assert (=> bs!459659 m!2760243))

(assert (=> bs!459659 s!225294))

(declare-fun bs!459660 () Bool)

(declare-fun s!225296 () Bool)

(assert (= bs!459660 (and neg-inst!1391 s!225296)))

(declare-fun res!994748 () Bool)

(declare-fun e!1492868 () Bool)

(assert (=> bs!459660 (=> res!994748 e!1492868)))

(assert (=> bs!459660 (= res!994748 (not (= (list!11070 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!443008))) (list!11070 x!443010))))))

(assert (=> bs!459660 (=> true e!1492868)))

(declare-fun b!2329916 () Bool)

(assert (=> b!2329916 (= e!1492868 (= (toValue!8 thiss!3053 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!443008))) (toValue!8 thiss!3053 x!443010)))))

(assert (= (and bs!459660 (not res!994748)) b!2329916))

(declare-fun bs!459661 () Bool)

(assert (= bs!459661 (and m!2760241 m!2760245 m!2760253)))

(assert (=> bs!459661 m!2760241))

(assert (=> bs!459661 m!2760245))

(assert (=> bs!459661 s!225296))

(declare-fun bs!459662 () Bool)

(declare-fun s!225298 () Bool)

(assert (= bs!459662 (and neg-inst!1391 s!225298)))

(declare-fun res!994749 () Bool)

(declare-fun e!1492869 () Bool)

(assert (=> bs!459662 (=> res!994749 e!1492869)))

(assert (=> bs!459662 (= res!994749 (not (= (list!11070 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!443008))) (list!11070 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!443008))))))))

(assert (=> bs!459662 (=> true e!1492869)))

(declare-fun b!2329917 () Bool)

(assert (=> b!2329917 (= e!1492869 (= (toValue!8 thiss!3053 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!443008))) (toValue!8 thiss!3053 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!443008)))))))

(assert (= (and bs!459662 (not res!994749)) b!2329917))

(assert (=> m!2760241 s!225298))

(declare-fun bs!459663 () Bool)

(declare-fun s!225300 () Bool)

(assert (= bs!459663 (and neg-inst!1391 s!225300)))

(declare-fun res!994750 () Bool)

(declare-fun e!1492870 () Bool)

(assert (=> bs!459663 (=> res!994750 e!1492870)))

(assert (=> bs!459663 (= res!994750 (not (= (list!11070 x!443008) (list!11070 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!443008))))))))

(assert (=> bs!459663 (=> true e!1492870)))

(declare-fun b!2329918 () Bool)

(assert (=> b!2329918 (= e!1492870 (= (toValue!8 thiss!3053 x!443008) (toValue!8 thiss!3053 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!443008)))))))

(assert (= (and bs!459663 (not res!994750)) b!2329918))

(assert (=> bs!459657 m!2760239))

(assert (=> bs!459657 m!2760241))

(assert (=> bs!459657 s!225300))

(declare-fun bs!459664 () Bool)

(declare-fun s!225302 () Bool)

(assert (= bs!459664 (and neg-inst!1391 s!225302)))

(declare-fun res!994751 () Bool)

(declare-fun e!1492871 () Bool)

(assert (=> bs!459664 (=> res!994751 e!1492871)))

(assert (=> bs!459664 (= res!994751 (not (= (list!11070 x!443009) (list!11070 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!443008))))))))

(assert (=> bs!459664 (=> true e!1492871)))

(declare-fun b!2329919 () Bool)

(assert (=> b!2329919 (= e!1492871 (= (toValue!8 thiss!3053 x!443009) (toValue!8 thiss!3053 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!443008)))))))

(assert (= (and bs!459664 (not res!994751)) b!2329919))

(assert (=> bs!459659 m!2760243))

(assert (=> bs!459659 m!2760241))

(assert (=> bs!459659 s!225302))

(declare-fun bs!459665 () Bool)

(declare-fun s!225304 () Bool)

(assert (= bs!459665 (and neg-inst!1391 s!225304)))

(declare-fun res!994752 () Bool)

(declare-fun e!1492872 () Bool)

(assert (=> bs!459665 (=> res!994752 e!1492872)))

(assert (=> bs!459665 (= res!994752 (not (= (list!11070 x!443010) (list!11070 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!443008))))))))

(assert (=> bs!459665 (=> true e!1492872)))

(declare-fun b!2329920 () Bool)

(assert (=> b!2329920 (= e!1492872 (= (toValue!8 thiss!3053 x!443010) (toValue!8 thiss!3053 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!443008)))))))

(assert (= (and bs!459665 (not res!994752)) b!2329920))

(assert (=> bs!459661 m!2760245))

(assert (=> bs!459661 m!2760241))

(assert (=> bs!459661 s!225304))

(assert (=> m!2760241 s!225298))

(declare-fun bs!459666 () Bool)

(assert (= bs!459666 (and neg-inst!1391 b!2329890)))

(assert (=> bs!459666 (= true inst!1391)))

(declare-fun b!2329892 () Bool)

(declare-fun e!1492849 () Bool)

(declare-fun lambda!86632 () Int)

(declare-fun lambda!86631 () Int)

(declare-datatypes ((TokenValueInjection!8740 0))(
  ( (TokenValueInjection!8741 (toValue!6266 Int) (toChars!6125 Int)) )
))
(declare-fun inv!37920 (TokenValueInjection!8740) Bool)

(assert (=> b!2329892 (= e!1492849 (inv!37920 (TokenValueInjection!8741 lambda!86632 lambda!86631)))))

(declare-fun e!1492851 () Bool)

(declare-fun e!1492850 () Bool)

(assert (=> b!2329889 (= e!1492851 e!1492850)))

(declare-fun res!994732 () Bool)

(assert (=> b!2329889 (=> res!994732 e!1492850)))

(declare-fun semiInverseModEq!1819 (Int Int) Bool)

(assert (=> b!2329889 (= res!994732 (not (semiInverseModEq!1819 lambda!86631 lambda!86632)))))

(declare-fun lambda!86630 () Int)

(declare-fun Forall!1124 (Int) Bool)

(assert (=> b!2329889 (= (semiInverseModEq!1819 lambda!86631 lambda!86632) (Forall!1124 lambda!86630))))

(declare-fun res!994733 () Bool)

(assert (=> start!230214 (=> res!994733 e!1492851)))

(assert (=> start!230214 (= res!994733 (not (Forall!1124 lambda!86630)))))

(assert (=> start!230214 (= (Forall!1124 lambda!86630) inst!1390)))

(assert (=> start!230214 (not e!1492851)))

(assert (=> start!230214 true))

(declare-fun b!2329891 () Bool)

(declare-fun e!1492852 () Bool)

(assert (=> b!2329891 (= e!1492852 e!1492849)))

(declare-fun res!994735 () Bool)

(assert (=> b!2329891 (=> res!994735 e!1492849)))

(declare-fun equivClasses!1730 (Int Int) Bool)

(assert (=> b!2329891 (= res!994735 (not (equivClasses!1730 lambda!86631 lambda!86632)))))

(declare-fun lambda!86633 () Int)

(declare-fun Forall2!733 (Int) Bool)

(assert (=> b!2329891 (= (equivClasses!1730 lambda!86631 lambda!86632) (Forall2!733 lambda!86633))))

(assert (=> b!2329890 (= e!1492850 e!1492852)))

(declare-fun res!994734 () Bool)

(assert (=> b!2329890 (=> res!994734 e!1492852)))

(assert (=> b!2329890 (= res!994734 (not (Forall2!733 lambda!86633)))))

(assert (=> b!2329890 (= (Forall2!733 lambda!86633) inst!1391)))

(assert (= neg-inst!1390 inst!1390))

(assert (= (and start!230214 (not res!994733)) b!2329889))

(assert (= (and b!2329889 (not res!994732)) b!2329890))

(assert (= neg-inst!1391 inst!1391))

(assert (= (and b!2329890 (not res!994734)) b!2329891))

(assert (= (and b!2329891 (not res!994735)) b!2329892))

(declare-fun m!2760259 () Bool)

(assert (=> b!2329891 m!2760259))

(assert (=> b!2329891 m!2760259))

(declare-fun m!2760261 () Bool)

(assert (=> b!2329891 m!2760261))

(declare-fun m!2760263 () Bool)

(assert (=> b!2329892 m!2760263))

(declare-fun m!2760265 () Bool)

(assert (=> start!230214 m!2760265))

(assert (=> start!230214 m!2760265))

(declare-fun m!2760267 () Bool)

(assert (=> b!2329889 m!2760267))

(assert (=> b!2329889 m!2760267))

(assert (=> b!2329889 m!2760265))

(assert (=> b!2329890 m!2760261))

(assert (=> b!2329890 m!2760261))

(push 1)

(assert (not b!2329902))

(assert (not b!2329914))

(assert (not bs!459642))

(assert (not b!2329892))

(assert (not b!2329905))

(assert (not bs!459635))

(assert (not b!2329917))

(assert (not bs!459645))

(assert (not b!2329915))

(assert (not b!2329909))

(assert (not start!230214))

(assert (not bs!459633))

(assert (not b!2329906))

(assert (not b!2329919))

(assert (not b!2329889))

(assert (not bs!459663))

(assert (not b!2329908))

(assert (not b!2329907))

(assert (not b!2329903))

(assert (not b!2329916))

(assert (not bs!459658))

(assert (not b!2329912))

(assert (not b!2329918))

(assert (not bs!459656))

(assert (not bs!459636))

(assert (not bs!459665))

(assert (not bs!459640))

(assert (not b!2329911))

(assert (not b!2329910))

(assert (not b!2329920))

(assert (not bs!459646))

(assert (not bs!459664))

(assert (not b!2329901))

(assert (not bs!459662))

(assert (not b!2329904))

(assert (not bs!459639))

(assert (not bs!459660))

(assert (not b!2329890))

(assert (not b!2329891))

(assert (not bs!459638))

(assert (not bs!459644))

(assert (not b!2329913))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!459708 () Bool)

(assert (= bs!459708 (and m!2760239 b!2329905)))

(assert (=> bs!459708 m!2760233))

(assert (=> bs!459708 m!2760233))

(declare-fun bs!459710 () Bool)

(assert (= bs!459710 (and m!2760243 m!2760239 b!2329906)))

(assert (=> bs!459710 m!2760251))

(assert (=> bs!459710 m!2760233))

(declare-fun bs!459711 () Bool)

(assert (= bs!459711 (and m!2760243 b!2329907)))

(assert (=> bs!459711 m!2760251))

(assert (=> bs!459711 m!2760251))

(declare-fun bs!459713 () Bool)

(assert (= bs!459713 (and m!2760243 m!2760239 b!2329908)))

(assert (=> bs!459713 m!2760233))

(assert (=> bs!459713 m!2760251))

(declare-fun bs!459714 () Bool)

(assert (= bs!459714 (and m!2760245 m!2760239 b!2329909)))

(assert (=> bs!459714 m!2760253))

(assert (=> bs!459714 m!2760233))

(declare-fun bs!459715 () Bool)

(assert (= bs!459715 (and m!2760245 m!2760243 b!2329910)))

(assert (=> bs!459715 m!2760253))

(assert (=> bs!459715 m!2760251))

(declare-fun bs!459716 () Bool)

(assert (= bs!459716 (and m!2760245 b!2329911)))

(assert (=> bs!459716 m!2760253))

(assert (=> bs!459716 m!2760253))

(declare-fun bs!459717 () Bool)

(assert (= bs!459717 (and m!2760245 m!2760239 b!2329912)))

(assert (=> bs!459717 m!2760233))

(assert (=> bs!459717 m!2760253))

(declare-fun bs!459718 () Bool)

(assert (= bs!459718 (and m!2760245 m!2760243 b!2329913)))

(assert (=> bs!459718 m!2760251))

(assert (=> bs!459718 m!2760253))

(declare-fun bs!459719 () Bool)

(assert (= bs!459719 (and m!2760241 m!2760239 m!2760233 b!2329914)))

(declare-fun m!2760309 () Bool)

(assert (=> bs!459719 m!2760309))

(assert (=> bs!459719 m!2760233))

(declare-fun bs!459720 () Bool)

(assert (= bs!459720 (and m!2760241 m!2760243 m!2760251 b!2329915)))

(assert (=> bs!459720 m!2760309))

(assert (=> bs!459720 m!2760251))

(declare-fun bs!459721 () Bool)

(assert (= bs!459721 (and m!2760241 m!2760245 m!2760253 b!2329916)))

(assert (=> bs!459721 m!2760309))

(assert (=> bs!459721 m!2760253))

(declare-fun bs!459722 () Bool)

(assert (= bs!459722 (and m!2760241 b!2329917)))

(assert (=> bs!459722 m!2760309))

(assert (=> bs!459722 m!2760309))

(declare-fun bs!459723 () Bool)

(assert (= bs!459723 (and m!2760241 m!2760239 m!2760233 b!2329918)))

(assert (=> bs!459723 m!2760233))

(assert (=> bs!459723 m!2760309))

(declare-fun bs!459724 () Bool)

(assert (= bs!459724 (and m!2760241 m!2760243 m!2760251 b!2329919)))

(assert (=> bs!459724 m!2760251))

(assert (=> bs!459724 m!2760309))

(declare-fun bs!459725 () Bool)

(assert (= bs!459725 (and m!2760241 m!2760245 m!2760253 b!2329920)))

(assert (=> bs!459725 m!2760253))

(assert (=> bs!459725 m!2760309))

(push 1)

(assert (not b!2329902))

(assert (not b!2329914))

(assert (not bs!459642))

(assert (not b!2329892))

(assert (not b!2329905))

(assert (not bs!459635))

(assert (not b!2329917))

(assert (not bs!459645))

(assert (not b!2329915))

(assert (not b!2329909))

(assert (not start!230214))

(assert (not bs!459633))

(assert (not b!2329906))

(assert (not b!2329919))

(assert (not b!2329889))

(assert (not bs!459663))

(assert (not b!2329908))

(assert (not b!2329907))

(assert (not b!2329903))

(assert (not b!2329916))

(assert (not bs!459658))

(assert (not b!2329912))

(assert (not b!2329918))

(assert (not bs!459656))

(assert (not bs!459636))

(assert (not bs!459665))

(assert (not bs!459640))

(assert (not b!2329911))

(assert (not b!2329910))

(assert (not b!2329920))

(assert (not bs!459646))

(assert (not bs!459664))

(assert (not b!2329901))

(assert (not bs!459662))

(assert (not b!2329904))

(assert (not bs!459639))

(assert (not bs!459660))

(assert (not b!2329890))

(assert (not b!2329891))

(assert (not bs!459638))

(assert (not bs!459644))

(assert (not b!2329913))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!689754 () Bool)

(declare-fun efficientList!337 (BalanceConc!17880) List!27927)

(assert (=> d!689754 (= (toValue!8 thiss!3053 x!443009) (FloatLiteralValue!9236 (efficientList!337 x!443009)))))

(declare-fun bs!459733 () Bool)

(assert (= bs!459733 d!689754))

(declare-fun m!2760311 () Bool)

(assert (=> bs!459733 m!2760311))

(assert (=> b!2329907 d!689754))

(declare-fun d!689756 () Bool)

(declare-fun list!11072 (Conc!9134) List!27927)

(assert (=> d!689756 (= (list!11070 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!443008))) (list!11072 (c!370108 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!443008)))))))

(declare-fun bs!459734 () Bool)

(assert (= bs!459734 d!689756))

(declare-fun m!2760313 () Bool)

(assert (=> bs!459734 m!2760313))

(assert (=> bs!459660 d!689756))

(declare-fun d!689758 () Bool)

(assert (=> d!689758 (= (list!11070 x!443010) (list!11072 (c!370108 x!443010)))))

(declare-fun bs!459735 () Bool)

(assert (= bs!459735 d!689758))

(declare-fun m!2760315 () Bool)

(assert (=> bs!459735 m!2760315))

(assert (=> bs!459660 d!689758))

(declare-fun d!689760 () Bool)

(assert (=> d!689760 (= (toValue!8 thiss!3053 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!443008))) (FloatLiteralValue!9236 (efficientList!337 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!443008)))))))

(declare-fun bs!459736 () Bool)

(assert (= bs!459736 d!689760))

(assert (=> bs!459736 m!2760235))

(declare-fun m!2760317 () Bool)

(assert (=> bs!459736 m!2760317))

(assert (=> b!2329915 d!689760))

(assert (=> b!2329915 d!689754))

(assert (=> b!2329913 d!689754))

(declare-fun d!689762 () Bool)

(assert (=> d!689762 (= (toValue!8 thiss!3053 x!443010) (FloatLiteralValue!9236 (efficientList!337 x!443010)))))

(declare-fun bs!459737 () Bool)

(assert (= bs!459737 d!689762))

(declare-fun m!2760319 () Bool)

(assert (=> bs!459737 m!2760319))

(assert (=> b!2329913 d!689762))

(assert (=> b!2329910 d!689762))

(assert (=> b!2329910 d!689754))

(declare-fun d!689764 () Bool)

(assert (=> d!689764 (= (list!11070 x!443009) (list!11072 (c!370108 x!443009)))))

(declare-fun bs!459738 () Bool)

(assert (= bs!459738 d!689764))

(declare-fun m!2760321 () Bool)

(assert (=> bs!459738 m!2760321))

(assert (=> bs!459664 d!689764))

(assert (=> bs!459664 d!689756))

(assert (=> bs!459638 d!689764))

(assert (=> b!2329906 d!689754))

(declare-fun d!689766 () Bool)

(assert (=> d!689766 (= (toValue!8 thiss!3053 x!443008) (FloatLiteralValue!9236 (efficientList!337 x!443008)))))

(declare-fun bs!459739 () Bool)

(assert (= bs!459739 d!689766))

(declare-fun m!2760323 () Bool)

(assert (=> bs!459739 m!2760323))

(assert (=> b!2329906 d!689766))

(assert (=> bs!459658 d!689756))

(assert (=> bs!459658 d!689764))

(assert (=> bs!459642 d!689758))

(assert (=> bs!459642 d!689764))

(assert (=> b!2329918 d!689766))

(assert (=> b!2329918 d!689760))

(assert (=> b!2329909 d!689762))

(assert (=> b!2329909 d!689766))

(assert (=> start!230214 d!689756))

(declare-fun d!689768 () Bool)

(declare-fun isBalanced!2783 (Conc!9134) Bool)

(assert (=> d!689768 (= (inv!37919 x!443008) (isBalanced!2783 (c!370108 x!443008)))))

(declare-fun bs!459740 () Bool)

(assert (= bs!459740 d!689768))

(declare-fun m!2760325 () Bool)

(assert (=> bs!459740 m!2760325))

(assert (=> start!230214 d!689768))

(assert (=> start!230214 d!689766))

(declare-fun d!689770 () Bool)

(declare-fun c!370113 () Bool)

(assert (=> d!689770 (= c!370113 (is-FloatLiteralValue!9236 (toValue!8 thiss!3053 x!443008)))))

(declare-fun e!1492923 () BalanceConc!17880)

(assert (=> d!689770 (= (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!443008)) e!1492923)))

(declare-fun b!2329981 () Bool)

(declare-fun seqFromList!3126 (List!27927) BalanceConc!17880)

(assert (=> b!2329981 (= e!1492923 (seqFromList!3126 (text!32771 (toValue!8 thiss!3053 x!443008))))))

(declare-fun b!2329982 () Bool)

(assert (=> b!2329982 (= e!1492923 (BalanceConc!17881 Empty!9134))))

(assert (= (and d!689770 c!370113) b!2329981))

(assert (= (and d!689770 (not c!370113)) b!2329982))

(declare-fun m!2760327 () Bool)

(assert (=> b!2329981 m!2760327))

(assert (=> start!230214 d!689770))

(declare-fun d!689772 () Bool)

(assert (=> d!689772 (= (list!11070 x!443008) (list!11072 (c!370108 x!443008)))))

(declare-fun bs!459741 () Bool)

(assert (= bs!459741 d!689772))

(declare-fun m!2760329 () Bool)

(assert (=> bs!459741 m!2760329))

(assert (=> start!230214 d!689772))

(declare-fun d!689774 () Bool)

(declare-fun choose!13632 (Int) Bool)

(assert (=> d!689774 (= (Forall!1124 lambda!86630) (choose!13632 lambda!86630))))

(declare-fun bs!459742 () Bool)

(assert (= bs!459742 d!689774))

(declare-fun m!2760331 () Bool)

(assert (=> bs!459742 m!2760331))

(assert (=> start!230214 d!689774))

(assert (=> bs!459636 d!689764))

(assert (=> bs!459636 d!689772))

(assert (=> bs!459646 d!689764))

(assert (=> bs!459646 d!689758))

(assert (=> bs!459663 d!689772))

(assert (=> bs!459663 d!689756))

(assert (=> bs!459640 d!689758))

(assert (=> bs!459640 d!689772))

(assert (=> b!2329912 d!689766))

(assert (=> b!2329912 d!689762))

(assert (=> b!2329914 d!689760))

(assert (=> b!2329914 d!689766))

(assert (=> b!2329917 d!689760))

(assert (=> bs!459662 d!689756))

(declare-fun d!689776 () Bool)

(declare-fun res!994802 () Bool)

(declare-fun e!1492926 () Bool)

(assert (=> d!689776 (=> (not res!994802) (not e!1492926))))

(assert (=> d!689776 (= res!994802 (semiInverseModEq!1819 (toChars!6125 (TokenValueInjection!8741 lambda!86632 lambda!86631)) (toValue!6266 (TokenValueInjection!8741 lambda!86632 lambda!86631))))))

(assert (=> d!689776 (= (inv!37920 (TokenValueInjection!8741 lambda!86632 lambda!86631)) e!1492926)))

(declare-fun b!2329985 () Bool)

(assert (=> b!2329985 (= e!1492926 (equivClasses!1730 (toChars!6125 (TokenValueInjection!8741 lambda!86632 lambda!86631)) (toValue!6266 (TokenValueInjection!8741 lambda!86632 lambda!86631))))))

(assert (= (and d!689776 res!994802) b!2329985))

(declare-fun m!2760333 () Bool)

(assert (=> d!689776 m!2760333))

(declare-fun m!2760335 () Bool)

(assert (=> b!2329985 m!2760335))

(assert (=> b!2329892 d!689776))

(assert (=> b!2329920 d!689762))

(assert (=> b!2329920 d!689760))

(assert (=> b!2329908 d!689766))

(assert (=> b!2329908 d!689754))

(assert (=> b!2329905 d!689766))

(assert (=> bs!459645 d!689772))

(assert (=> bs!459645 d!689758))

(assert (=> bs!459656 d!689756))

(assert (=> bs!459656 d!689772))

(declare-fun bs!459743 () Bool)

(declare-fun d!689778 () Bool)

(assert (= bs!459743 (and d!689778 start!230214)))

(declare-fun lambda!86672 () Int)

(assert (=> bs!459743 (not (= lambda!86672 lambda!86630))))

(assert (=> d!689778 true))

(declare-fun order!15417 () Int)

(declare-fun order!15419 () Int)

(declare-fun dynLambda!12000 (Int Int) Int)

(declare-fun dynLambda!12001 (Int Int) Int)

(assert (=> d!689778 (< (dynLambda!12000 order!15417 lambda!86631) (dynLambda!12001 order!15419 lambda!86672))))

(assert (=> d!689778 true))

(declare-fun order!15421 () Int)

(declare-fun dynLambda!12002 (Int Int) Int)

(assert (=> d!689778 (< (dynLambda!12002 order!15421 lambda!86632) (dynLambda!12001 order!15419 lambda!86672))))

(assert (=> d!689778 (= (semiInverseModEq!1819 lambda!86631 lambda!86632) (Forall!1124 lambda!86672))))

(declare-fun bs!459744 () Bool)

(assert (= bs!459744 d!689778))

(declare-fun m!2760337 () Bool)

(assert (=> bs!459744 m!2760337))

(assert (=> b!2329889 d!689778))

(assert (=> b!2329889 d!689774))

(declare-fun d!689780 () Bool)

(declare-fun c!370116 () Bool)

(assert (=> d!689780 (= c!370116 (is-Node!9134 (c!370108 x!443010)))))

(declare-fun e!1492931 () Bool)

(assert (=> d!689780 (= (inv!37918 (c!370108 x!443010)) e!1492931)))

(declare-fun b!2329996 () Bool)

(declare-fun inv!37924 (Conc!9134) Bool)

(assert (=> b!2329996 (= e!1492931 (inv!37924 (c!370108 x!443010)))))

(declare-fun b!2329997 () Bool)

(declare-fun e!1492932 () Bool)

(assert (=> b!2329997 (= e!1492931 e!1492932)))

(declare-fun res!994805 () Bool)

(assert (=> b!2329997 (= res!994805 (not (is-Leaf!13422 (c!370108 x!443010))))))

(assert (=> b!2329997 (=> res!994805 e!1492932)))

(declare-fun b!2329998 () Bool)

(declare-fun inv!37925 (Conc!9134) Bool)

(assert (=> b!2329998 (= e!1492932 (inv!37925 (c!370108 x!443010)))))

(assert (= (and d!689780 c!370116) b!2329996))

(assert (= (and d!689780 (not c!370116)) b!2329997))

(assert (= (and b!2329997 (not res!994805)) b!2329998))

(declare-fun m!2760339 () Bool)

(assert (=> b!2329996 m!2760339))

(declare-fun m!2760341 () Bool)

(assert (=> b!2329998 m!2760341))

(assert (=> b!2329904 d!689780))

(assert (=> bs!459665 d!689758))

(assert (=> bs!459665 d!689756))

(declare-fun bs!459745 () Bool)

(declare-fun d!689782 () Bool)

(assert (= bs!459745 (and d!689782 b!2329890)))

(declare-fun lambda!86675 () Int)

(assert (=> bs!459745 (not (= lambda!86675 lambda!86633))))

(assert (=> d!689782 true))

(declare-fun order!15423 () Int)

(declare-fun dynLambda!12003 (Int Int) Int)

(assert (=> d!689782 (< (dynLambda!12002 order!15421 lambda!86632) (dynLambda!12003 order!15423 lambda!86675))))

(assert (=> d!689782 (= (equivClasses!1730 lambda!86631 lambda!86632) (Forall2!733 lambda!86675))))

(declare-fun bs!459746 () Bool)

(assert (= bs!459746 d!689782))

(declare-fun m!2760343 () Bool)

(assert (=> bs!459746 m!2760343))

(assert (=> b!2329891 d!689782))

(declare-fun d!689786 () Bool)

(declare-fun choose!13633 (Int) Bool)

(assert (=> d!689786 (= (Forall2!733 lambda!86633) (choose!13633 lambda!86633))))

(declare-fun bs!459747 () Bool)

(assert (= bs!459747 d!689786))

(declare-fun m!2760345 () Bool)

(assert (=> bs!459747 m!2760345))

(assert (=> b!2329891 d!689786))

(assert (=> bs!459635 d!689772))

(assert (=> b!2329890 d!689786))

(declare-fun d!689788 () Bool)

(assert (=> d!689788 (= (inv!37919 x!443010) (isBalanced!2783 (c!370108 x!443010)))))

(declare-fun bs!459748 () Bool)

(assert (= bs!459748 d!689788))

(declare-fun m!2760347 () Bool)

(assert (=> bs!459748 m!2760347))

(assert (=> b!2329890 d!689788))

(declare-fun d!689790 () Bool)

(assert (=> d!689790 (= (inv!37919 x!443009) (isBalanced!2783 (c!370108 x!443009)))))

(declare-fun bs!459749 () Bool)

(assert (= bs!459749 d!689790))

(declare-fun m!2760349 () Bool)

(assert (=> bs!459749 m!2760349))

(assert (=> b!2329890 d!689790))

(assert (=> b!2329890 d!689764))

(assert (=> b!2329890 d!689758))

(assert (=> b!2329911 d!689762))

(assert (=> b!2329902 d!689754))

(assert (=> b!2329902 d!689762))

(assert (=> bs!459644 d!689758))

(assert (=> bs!459633 d!689756))

(assert (=> bs!459633 d!689770))

(assert (=> bs!459633 d!689766))

(assert (=> bs!459633 d!689772))

(declare-fun d!689792 () Bool)

(declare-fun c!370117 () Bool)

(assert (=> d!689792 (= c!370117 (is-Node!9134 (c!370108 x!443008)))))

(declare-fun e!1492935 () Bool)

(assert (=> d!689792 (= (inv!37918 (c!370108 x!443008)) e!1492935)))

(declare-fun b!2330003 () Bool)

(assert (=> b!2330003 (= e!1492935 (inv!37924 (c!370108 x!443008)))))

(declare-fun b!2330004 () Bool)

(declare-fun e!1492936 () Bool)

(assert (=> b!2330004 (= e!1492935 e!1492936)))

(declare-fun res!994808 () Bool)

(assert (=> b!2330004 (= res!994808 (not (is-Leaf!13422 (c!370108 x!443008))))))

(assert (=> b!2330004 (=> res!994808 e!1492936)))

(declare-fun b!2330005 () Bool)

(assert (=> b!2330005 (= e!1492936 (inv!37925 (c!370108 x!443008)))))

(assert (= (and d!689792 c!370117) b!2330003))

(assert (= (and d!689792 (not c!370117)) b!2330004))

(assert (= (and b!2330004 (not res!994808)) b!2330005))

(declare-fun m!2760351 () Bool)

(assert (=> b!2330003 m!2760351))

(declare-fun m!2760353 () Bool)

(assert (=> b!2330005 m!2760353))

(assert (=> b!2329901 d!689792))

(assert (=> b!2329919 d!689754))

(assert (=> b!2329919 d!689760))

(assert (=> bs!459639 d!689772))

(assert (=> bs!459639 d!689764))

(assert (=> b!2329916 d!689760))

(assert (=> b!2329916 d!689762))

(declare-fun d!689794 () Bool)

(declare-fun c!370118 () Bool)

(assert (=> d!689794 (= c!370118 (is-Node!9134 (c!370108 x!443009)))))

(declare-fun e!1492937 () Bool)

(assert (=> d!689794 (= (inv!37918 (c!370108 x!443009)) e!1492937)))

(declare-fun b!2330006 () Bool)

(assert (=> b!2330006 (= e!1492937 (inv!37924 (c!370108 x!443009)))))

(declare-fun b!2330007 () Bool)

(declare-fun e!1492938 () Bool)

(assert (=> b!2330007 (= e!1492937 e!1492938)))

(declare-fun res!994809 () Bool)

(assert (=> b!2330007 (= res!994809 (not (is-Leaf!13422 (c!370108 x!443009))))))

(assert (=> b!2330007 (=> res!994809 e!1492938)))

(declare-fun b!2330008 () Bool)

(assert (=> b!2330008 (= e!1492938 (inv!37925 (c!370108 x!443009)))))

(assert (= (and d!689794 c!370118) b!2330006))

(assert (= (and d!689794 (not c!370118)) b!2330007))

(assert (= (and b!2330007 (not res!994809)) b!2330008))

(declare-fun m!2760355 () Bool)

(assert (=> b!2330006 m!2760355))

(declare-fun m!2760357 () Bool)

(assert (=> b!2330008 m!2760357))

(assert (=> b!2329903 d!689794))

(declare-fun b!2330015 () Bool)

(declare-fun e!1492943 () Bool)

(declare-fun tp!738288 () Bool)

(declare-fun tp!738289 () Bool)

(assert (=> b!2330015 (= e!1492943 (and (inv!37918 (left!21143 (c!370108 x!443010))) tp!738288 (inv!37918 (right!21473 (c!370108 x!443010))) tp!738289))))

(declare-fun b!2330016 () Bool)

(declare-fun inv!37926 (IArray!18273) Bool)

(assert (=> b!2330016 (= e!1492943 (inv!37926 (xs!12114 (c!370108 x!443010))))))

(assert (=> b!2329904 (= tp!738274 (and (inv!37918 (c!370108 x!443010)) e!1492943))))

(assert (= (and b!2329904 (is-Node!9134 (c!370108 x!443010))) b!2330015))

(assert (= (and b!2329904 (is-Leaf!13422 (c!370108 x!443010))) b!2330016))

(declare-fun m!2760359 () Bool)

(assert (=> b!2330015 m!2760359))

(declare-fun m!2760361 () Bool)

(assert (=> b!2330015 m!2760361))

(declare-fun m!2760363 () Bool)

(assert (=> b!2330016 m!2760363))

(assert (=> b!2329904 m!2760257))

(declare-fun tp!738291 () Bool)

(declare-fun tp!738290 () Bool)

(declare-fun e!1492945 () Bool)

(declare-fun b!2330017 () Bool)

(assert (=> b!2330017 (= e!1492945 (and (inv!37918 (left!21143 (c!370108 x!443008))) tp!738290 (inv!37918 (right!21473 (c!370108 x!443008))) tp!738291))))

(declare-fun b!2330018 () Bool)

(assert (=> b!2330018 (= e!1492945 (inv!37926 (xs!12114 (c!370108 x!443008))))))

(assert (=> b!2329901 (= tp!738272 (and (inv!37918 (c!370108 x!443008)) e!1492945))))

(assert (= (and b!2329901 (is-Node!9134 (c!370108 x!443008))) b!2330017))

(assert (= (and b!2329901 (is-Leaf!13422 (c!370108 x!443008))) b!2330018))

(declare-fun m!2760365 () Bool)

(assert (=> b!2330017 m!2760365))

(declare-fun m!2760367 () Bool)

(assert (=> b!2330017 m!2760367))

(declare-fun m!2760369 () Bool)

(assert (=> b!2330018 m!2760369))

(assert (=> b!2329901 m!2760231))

(declare-fun tp!738293 () Bool)

(declare-fun b!2330019 () Bool)

(declare-fun tp!738292 () Bool)

(declare-fun e!1492947 () Bool)

(assert (=> b!2330019 (= e!1492947 (and (inv!37918 (left!21143 (c!370108 x!443009))) tp!738292 (inv!37918 (right!21473 (c!370108 x!443009))) tp!738293))))

(declare-fun b!2330020 () Bool)

(assert (=> b!2330020 (= e!1492947 (inv!37926 (xs!12114 (c!370108 x!443009))))))

(assert (=> b!2329903 (= tp!738273 (and (inv!37918 (c!370108 x!443009)) e!1492947))))

(assert (= (and b!2329903 (is-Node!9134 (c!370108 x!443009))) b!2330019))

(assert (= (and b!2329903 (is-Leaf!13422 (c!370108 x!443009))) b!2330020))

(declare-fun m!2760371 () Bool)

(assert (=> b!2330019 m!2760371))

(declare-fun m!2760373 () Bool)

(assert (=> b!2330019 m!2760373))

(declare-fun m!2760375 () Bool)

(assert (=> b!2330020 m!2760375))

(assert (=> b!2329903 m!2760255))

(push 1)

(assert (not d!689778))

(assert (not d!689774))

(assert (not d!689764))

(assert (not b!2330020))

(assert (not b!2330006))

(assert (not b!2329981))

(assert (not b!2330003))

(assert (not d!689772))

(assert (not b!2330019))

(assert (not b!2329998))

(assert (not b!2330016))

(assert (not d!689760))

(assert (not b!2329985))

(assert (not b!2329903))

(assert (not d!689762))

(assert (not d!689766))

(assert (not b!2330015))

(assert (not b!2330018))

(assert (not d!689768))

(assert (not d!689786))

(assert (not d!689790))

(assert (not b!2330017))

(assert (not d!689782))

(assert (not b!2330008))

(assert (not d!689788))

(assert (not d!689776))

(assert (not b!2330005))

(assert (not b!2329996))

(assert (not d!689758))

(assert (not b!2329901))

(assert (not d!689756))

(assert (not d!689754))

(assert (not b!2329904))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

