; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11366 () Bool)

(assert start!11366)

(assert (=> start!11366 true))

(declare-fun b!110572 () Bool)

(assert (=> b!110572 true))

(assert (=> b!110572 true))

(declare-fun b!110573 () Bool)

(assert (=> b!110573 true))

(declare-fun b!110582 () Bool)

(declare-fun e!61745 () Bool)

(declare-datatypes ((List!1791 0))(
  ( (Nil!1785) (Cons!1785 (h!7182 (_ BitVec 16)) (t!22214 List!1791)) )
))
(declare-datatypes ((IArray!1115 0))(
  ( (IArray!1116 (innerList!615 List!1791)) )
))
(declare-datatypes ((Conc!557 0))(
  ( (Node!557 (left!1514 Conc!557) (right!1844 Conc!557) (csize!1344 Int) (cheight!768 Int)) (Leaf!917 (xs!3152 IArray!1115) (csize!1345 Int)) (Empty!557) )
))
(declare-datatypes ((BalanceConc!1118 0))(
  ( (BalanceConc!1119 (c!26245 Conc!557)) )
))
(declare-fun x!31879 () BalanceConc!1118)

(declare-fun tp!59797 () Bool)

(declare-fun inv!2252 (Conc!557) Bool)

(assert (=> b!110582 (= e!61745 (and (inv!2252 (c!26245 x!31879)) tp!59797))))

(declare-datatypes ((EOFValueInjection!14 0))(
  ( (EOFValueInjection!15) )
))
(declare-fun thiss!5344 () EOFValueInjection!14)

(declare-fun inst!118 () Bool)

(declare-fun inv!2253 (BalanceConc!1118) Bool)

(declare-fun list!761 (BalanceConc!1118) List!1791)

(declare-datatypes ((TokenValue!379 0))(
  ( (FloatLiteralValue!758 (text!3098 List!1791)) (TokenValueExt!378 (__x!1838 Int)) (Broken!1895 (value!14008 List!1791)) (Object!384) (End!379) (Def!379) (Underscore!379) (Match!379) (Else!379) (Error!379) (Case!379) (If!379) (Extends!379) (Abstract!379) (Class!379) (Val!379) (DelimiterValue!758 (del!439 List!1791)) (KeywordValue!385 (value!14009 List!1791)) (CommentValue!758 (value!14010 List!1791)) (WhitespaceValue!758 (value!14011 List!1791)) (IndentationValue!379 (value!14012 List!1791)) (String!2376) (Int32!379) (Broken!1896 (value!14013 List!1791)) (Boolean!380) (Unit!1267) (OperatorValue!382 (op!439 List!1791)) (IdentifierValue!758 (value!14014 List!1791)) (IdentifierValue!759 (value!14015 List!1791)) (WhitespaceValue!759 (value!14016 List!1791)) (True!758) (False!758) (Broken!1897 (value!14017 List!1791)) (Broken!1898 (value!14018 List!1791)) (True!759) (RightBrace!379) (RightBracket!379) (Colon!379) (Null!379) (Comma!379) (LeftBracket!379) (False!759) (LeftBrace!379) (ImaginaryLiteralValue!379 (text!3099 List!1791)) (StringLiteralValue!1137 (value!14019 List!1791)) (EOFValue!379 (value!14020 List!1791)) (IdentValue!379 (value!14021 List!1791)) (DelimiterValue!759 (value!14022 List!1791)) (DedentValue!379 (value!14023 List!1791)) (NewLineValue!379 (value!14024 List!1791)) (IntegerValue!1137 (value!14025 (_ BitVec 32)) (text!3100 List!1791)) (IntegerValue!1138 (value!14026 Int) (text!3101 List!1791)) (Times!379) (Or!379) (Equal!379) (Minus!379) (Broken!1899 (value!14027 List!1791)) (And!379) (Div!379) (LessEqual!379) (Mod!379) (Concat!821) (Not!379) (Plus!379) (SpaceValue!379 (value!14028 List!1791)) (IntegerValue!1139 (value!14029 Int) (text!3102 List!1791)) (StringLiteralValue!1138 (text!3103 List!1791)) (FloatLiteralValue!759 (text!3104 List!1791)) (BytesLiteralValue!379 (value!14030 List!1791)) (CommentValue!759 (value!14031 List!1791)) (StringLiteralValue!1139 (value!14032 List!1791)) (ErrorTokenValue!379 (msg!440 List!1791)) )
))
(declare-fun toCharacters!30 (EOFValueInjection!14 TokenValue!379) BalanceConc!1118)

(declare-fun toValue!37 (EOFValueInjection!14 BalanceConc!1118) TokenValue!379)

(assert (=> start!11366 (= inst!118 (=> (and (inv!2253 x!31879) e!61745) (= (list!761 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879))) (list!761 x!31879))))))

(assert (= start!11366 b!110582))

(declare-fun m!100834 () Bool)

(assert (=> b!110582 m!100834))

(declare-fun m!100836 () Bool)

(assert (=> start!11366 m!100836))

(declare-fun m!100838 () Bool)

(assert (=> start!11366 m!100838))

(assert (=> start!11366 m!100836))

(declare-fun m!100840 () Bool)

(assert (=> start!11366 m!100840))

(declare-fun m!100842 () Bool)

(assert (=> start!11366 m!100842))

(assert (=> start!11366 m!100840))

(declare-fun m!100844 () Bool)

(assert (=> start!11366 m!100844))

(declare-fun res!53405 () Bool)

(declare-fun e!61747 () Bool)

(assert (=> b!110573 (=> res!53405 e!61747)))

(declare-fun x!31880 () BalanceConc!1118)

(declare-fun x!31881 () BalanceConc!1118)

(assert (=> b!110573 (= res!53405 (not (= (list!761 x!31880) (list!761 x!31881))))))

(declare-fun inst!119 () Bool)

(declare-fun e!61748 () Bool)

(declare-fun e!61746 () Bool)

(assert (=> b!110573 (= inst!119 (=> (and (inv!2253 x!31880) e!61746 (inv!2253 x!31881) e!61748) e!61747))))

(declare-fun b!110583 () Bool)

(assert (=> b!110583 (= e!61747 (= (toValue!37 thiss!5344 x!31880) (toValue!37 thiss!5344 x!31881)))))

(declare-fun b!110584 () Bool)

(declare-fun tp!59799 () Bool)

(assert (=> b!110584 (= e!61746 (and (inv!2252 (c!26245 x!31880)) tp!59799))))

(declare-fun b!110585 () Bool)

(declare-fun tp!59798 () Bool)

(assert (=> b!110585 (= e!61748 (and (inv!2252 (c!26245 x!31881)) tp!59798))))

(assert (= (and b!110573 (not res!53405)) b!110583))

(assert (= b!110573 b!110584))

(assert (= b!110573 b!110585))

(declare-fun m!100846 () Bool)

(assert (=> b!110573 m!100846))

(declare-fun m!100848 () Bool)

(assert (=> b!110573 m!100848))

(declare-fun m!100850 () Bool)

(assert (=> b!110573 m!100850))

(declare-fun m!100852 () Bool)

(assert (=> b!110573 m!100852))

(declare-fun m!100854 () Bool)

(assert (=> b!110583 m!100854))

(declare-fun m!100856 () Bool)

(assert (=> b!110583 m!100856))

(declare-fun m!100858 () Bool)

(assert (=> b!110584 m!100858))

(declare-fun m!100860 () Bool)

(assert (=> b!110585 m!100860))

(declare-fun bs!11053 () Bool)

(declare-fun neg-inst!118 () Bool)

(declare-fun s!16551 () Bool)

(assert (= bs!11053 (and neg-inst!118 s!16551)))

(assert (=> bs!11053 (=> true (= (list!761 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879))) (list!761 x!31879)))))

(assert (=> m!100842 m!100836))

(assert (=> m!100842 m!100840))

(assert (=> m!100842 m!100844))

(assert (=> m!100842 s!16551))

(assert (=> m!100836 s!16551))

(declare-fun bs!11054 () Bool)

(assert (= bs!11054 (and neg-inst!118 start!11366)))

(assert (=> bs!11054 (= true inst!118)))

(declare-fun bs!11055 () Bool)

(declare-fun neg-inst!119 () Bool)

(declare-fun s!16553 () Bool)

(assert (= bs!11055 (and neg-inst!119 s!16553)))

(declare-fun res!53406 () Bool)

(declare-fun e!61749 () Bool)

(assert (=> bs!11055 (=> res!53406 e!61749)))

(assert (=> bs!11055 (= res!53406 (not (= (list!761 x!31879) (list!761 x!31879))))))

(assert (=> bs!11055 (=> true e!61749)))

(declare-fun b!110586 () Bool)

(assert (=> b!110586 (= e!61749 (= (toValue!37 thiss!5344 x!31879) (toValue!37 thiss!5344 x!31879)))))

(assert (= (and bs!11055 (not res!53406)) b!110586))

(assert (=> m!100842 s!16553))

(assert (=> m!100842 s!16553))

(declare-fun bs!11056 () Bool)

(declare-fun s!16555 () Bool)

(assert (= bs!11056 (and neg-inst!119 s!16555)))

(declare-fun res!53407 () Bool)

(declare-fun e!61750 () Bool)

(assert (=> bs!11056 (=> res!53407 e!61750)))

(assert (=> bs!11056 (= res!53407 (not (= (list!761 x!31879) (list!761 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879))))))))

(assert (=> bs!11056 (=> true e!61750)))

(declare-fun b!110587 () Bool)

(assert (=> b!110587 (= e!61750 (= (toValue!37 thiss!5344 x!31879) (toValue!37 thiss!5344 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879)))))))

(assert (= (and bs!11056 (not res!53407)) b!110587))

(declare-fun bs!11057 () Bool)

(assert (= bs!11057 (and m!100844 m!100842)))

(assert (=> bs!11057 m!100842))

(assert (=> bs!11057 m!100844))

(assert (=> bs!11057 s!16555))

(declare-fun bs!11058 () Bool)

(declare-fun s!16557 () Bool)

(assert (= bs!11058 (and neg-inst!119 s!16557)))

(declare-fun res!53408 () Bool)

(declare-fun e!61751 () Bool)

(assert (=> bs!11058 (=> res!53408 e!61751)))

(assert (=> bs!11058 (= res!53408 (not (= (list!761 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879))) (list!761 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879))))))))

(assert (=> bs!11058 (=> true e!61751)))

(declare-fun b!110588 () Bool)

(assert (=> b!110588 (= e!61751 (= (toValue!37 thiss!5344 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879))) (toValue!37 thiss!5344 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879)))))))

(assert (= (and bs!11058 (not res!53408)) b!110588))

(assert (=> m!100844 s!16557))

(declare-fun bs!11059 () Bool)

(declare-fun s!16559 () Bool)

(assert (= bs!11059 (and neg-inst!119 s!16559)))

(declare-fun res!53409 () Bool)

(declare-fun e!61752 () Bool)

(assert (=> bs!11059 (=> res!53409 e!61752)))

(assert (=> bs!11059 (= res!53409 (not (= (list!761 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879))) (list!761 x!31879))))))

(assert (=> bs!11059 (=> true e!61752)))

(declare-fun b!110589 () Bool)

(assert (=> b!110589 (= e!61752 (= (toValue!37 thiss!5344 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879))) (toValue!37 thiss!5344 x!31879)))))

(assert (= (and bs!11059 (not res!53409)) b!110589))

(assert (=> bs!11057 m!100844))

(assert (=> bs!11057 m!100842))

(assert (=> bs!11057 s!16559))

(assert (=> m!100844 s!16557))

(declare-fun bs!11060 () Bool)

(declare-fun s!16561 () Bool)

(assert (= bs!11060 (and neg-inst!119 s!16561)))

(declare-fun res!53410 () Bool)

(declare-fun e!61753 () Bool)

(assert (=> bs!11060 (=> res!53410 e!61753)))

(assert (=> bs!11060 (= res!53410 (not (= (list!761 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879))) (list!761 x!31880))))))

(assert (=> bs!11060 (=> true e!61753)))

(declare-fun b!110590 () Bool)

(assert (=> b!110590 (= e!61753 (= (toValue!37 thiss!5344 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879))) (toValue!37 thiss!5344 x!31880)))))

(assert (= (and bs!11060 (not res!53410)) b!110590))

(declare-fun bs!11061 () Bool)

(assert (= bs!11061 (and m!100854 m!100844)))

(assert (=> bs!11061 m!100844))

(assert (=> bs!11061 m!100846))

(assert (=> bs!11061 s!16561))

(declare-fun bs!11062 () Bool)

(declare-fun s!16563 () Bool)

(assert (= bs!11062 (and neg-inst!119 s!16563)))

(declare-fun res!53411 () Bool)

(declare-fun e!61754 () Bool)

(assert (=> bs!11062 (=> res!53411 e!61754)))

(assert (=> bs!11062 (= res!53411 (not (= (list!761 x!31879) (list!761 x!31880))))))

(assert (=> bs!11062 (=> true e!61754)))

(declare-fun b!110591 () Bool)

(assert (=> b!110591 (= e!61754 (= (toValue!37 thiss!5344 x!31879) (toValue!37 thiss!5344 x!31880)))))

(assert (= (and bs!11062 (not res!53411)) b!110591))

(declare-fun bs!11063 () Bool)

(assert (= bs!11063 (and m!100854 m!100842)))

(assert (=> bs!11063 m!100842))

(assert (=> bs!11063 m!100846))

(assert (=> bs!11063 s!16563))

(declare-fun bs!11064 () Bool)

(declare-fun s!16565 () Bool)

(assert (= bs!11064 (and neg-inst!119 s!16565)))

(declare-fun res!53412 () Bool)

(declare-fun e!61755 () Bool)

(assert (=> bs!11064 (=> res!53412 e!61755)))

(assert (=> bs!11064 (= res!53412 (not (= (list!761 x!31880) (list!761 x!31880))))))

(assert (=> bs!11064 (=> true e!61755)))

(declare-fun b!110592 () Bool)

(assert (=> b!110592 (= e!61755 (= (toValue!37 thiss!5344 x!31880) (toValue!37 thiss!5344 x!31880)))))

(assert (= (and bs!11064 (not res!53412)) b!110592))

(assert (=> m!100854 m!100846))

(assert (=> m!100854 m!100846))

(assert (=> m!100854 s!16565))

(declare-fun bs!11065 () Bool)

(declare-fun s!16567 () Bool)

(assert (= bs!11065 (and neg-inst!119 s!16567)))

(declare-fun res!53413 () Bool)

(declare-fun e!61756 () Bool)

(assert (=> bs!11065 (=> res!53413 e!61756)))

(assert (=> bs!11065 (= res!53413 (not (= (list!761 x!31880) (list!761 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879))))))))

(assert (=> bs!11065 (=> true e!61756)))

(declare-fun b!110593 () Bool)

(assert (=> b!110593 (= e!61756 (= (toValue!37 thiss!5344 x!31880) (toValue!37 thiss!5344 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879)))))))

(assert (= (and bs!11065 (not res!53413)) b!110593))

(assert (=> bs!11061 m!100846))

(assert (=> bs!11061 m!100844))

(assert (=> bs!11061 s!16567))

(declare-fun bs!11066 () Bool)

(declare-fun s!16569 () Bool)

(assert (= bs!11066 (and neg-inst!119 s!16569)))

(declare-fun res!53414 () Bool)

(declare-fun e!61757 () Bool)

(assert (=> bs!11066 (=> res!53414 e!61757)))

(assert (=> bs!11066 (= res!53414 (not (= (list!761 x!31880) (list!761 x!31879))))))

(assert (=> bs!11066 (=> true e!61757)))

(declare-fun b!110594 () Bool)

(assert (=> b!110594 (= e!61757 (= (toValue!37 thiss!5344 x!31880) (toValue!37 thiss!5344 x!31879)))))

(assert (= (and bs!11066 (not res!53414)) b!110594))

(assert (=> bs!11063 m!100846))

(assert (=> bs!11063 m!100842))

(assert (=> bs!11063 s!16569))

(assert (=> m!100854 s!16565))

(declare-fun bs!11067 () Bool)

(declare-fun s!16571 () Bool)

(assert (= bs!11067 (and neg-inst!119 s!16571)))

(declare-fun res!53415 () Bool)

(declare-fun e!61758 () Bool)

(assert (=> bs!11067 (=> res!53415 e!61758)))

(assert (=> bs!11067 (= res!53415 (not (= (list!761 x!31880) (list!761 x!31881))))))

(assert (=> bs!11067 (=> true e!61758)))

(declare-fun b!110595 () Bool)

(assert (=> b!110595 (= e!61758 (= (toValue!37 thiss!5344 x!31880) (toValue!37 thiss!5344 x!31881)))))

(assert (= (and bs!11067 (not res!53415)) b!110595))

(declare-fun bs!11068 () Bool)

(assert (= bs!11068 (and m!100856 m!100854)))

(assert (=> bs!11068 m!100846))

(assert (=> bs!11068 m!100848))

(assert (=> bs!11068 s!16571))

(declare-fun bs!11069 () Bool)

(declare-fun s!16573 () Bool)

(assert (= bs!11069 (and neg-inst!119 s!16573)))

(declare-fun res!53416 () Bool)

(declare-fun e!61759 () Bool)

(assert (=> bs!11069 (=> res!53416 e!61759)))

(assert (=> bs!11069 (= res!53416 (not (= (list!761 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879))) (list!761 x!31881))))))

(assert (=> bs!11069 (=> true e!61759)))

(declare-fun b!110596 () Bool)

(assert (=> b!110596 (= e!61759 (= (toValue!37 thiss!5344 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879))) (toValue!37 thiss!5344 x!31881)))))

(assert (= (and bs!11069 (not res!53416)) b!110596))

(declare-fun bs!11070 () Bool)

(assert (= bs!11070 (and m!100856 m!100844)))

(assert (=> bs!11070 m!100844))

(assert (=> bs!11070 m!100848))

(assert (=> bs!11070 s!16573))

(declare-fun bs!11071 () Bool)

(declare-fun s!16575 () Bool)

(assert (= bs!11071 (and neg-inst!119 s!16575)))

(declare-fun res!53417 () Bool)

(declare-fun e!61760 () Bool)

(assert (=> bs!11071 (=> res!53417 e!61760)))

(assert (=> bs!11071 (= res!53417 (not (= (list!761 x!31879) (list!761 x!31881))))))

(assert (=> bs!11071 (=> true e!61760)))

(declare-fun b!110597 () Bool)

(assert (=> b!110597 (= e!61760 (= (toValue!37 thiss!5344 x!31879) (toValue!37 thiss!5344 x!31881)))))

(assert (= (and bs!11071 (not res!53417)) b!110597))

(declare-fun bs!11072 () Bool)

(assert (= bs!11072 (and m!100856 m!100842)))

(assert (=> bs!11072 m!100842))

(assert (=> bs!11072 m!100848))

(assert (=> bs!11072 s!16575))

(declare-fun bs!11073 () Bool)

(declare-fun s!16577 () Bool)

(assert (= bs!11073 (and neg-inst!119 s!16577)))

(declare-fun res!53418 () Bool)

(declare-fun e!61761 () Bool)

(assert (=> bs!11073 (=> res!53418 e!61761)))

(assert (=> bs!11073 (= res!53418 (not (= (list!761 x!31881) (list!761 x!31881))))))

(assert (=> bs!11073 (=> true e!61761)))

(declare-fun b!110598 () Bool)

(assert (=> b!110598 (= e!61761 (= (toValue!37 thiss!5344 x!31881) (toValue!37 thiss!5344 x!31881)))))

(assert (= (and bs!11073 (not res!53418)) b!110598))

(assert (=> m!100856 m!100848))

(assert (=> m!100856 m!100848))

(assert (=> m!100856 s!16577))

(declare-fun bs!11074 () Bool)

(declare-fun s!16579 () Bool)

(assert (= bs!11074 (and neg-inst!119 s!16579)))

(declare-fun res!53419 () Bool)

(declare-fun e!61762 () Bool)

(assert (=> bs!11074 (=> res!53419 e!61762)))

(assert (=> bs!11074 (= res!53419 (not (= (list!761 x!31881) (list!761 x!31880))))))

(assert (=> bs!11074 (=> true e!61762)))

(declare-fun b!110599 () Bool)

(assert (=> b!110599 (= e!61762 (= (toValue!37 thiss!5344 x!31881) (toValue!37 thiss!5344 x!31880)))))

(assert (= (and bs!11074 (not res!53419)) b!110599))

(assert (=> bs!11068 m!100848))

(assert (=> bs!11068 m!100846))

(assert (=> bs!11068 s!16579))

(declare-fun bs!11075 () Bool)

(declare-fun s!16581 () Bool)

(assert (= bs!11075 (and neg-inst!119 s!16581)))

(declare-fun res!53420 () Bool)

(declare-fun e!61763 () Bool)

(assert (=> bs!11075 (=> res!53420 e!61763)))

(assert (=> bs!11075 (= res!53420 (not (= (list!761 x!31881) (list!761 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879))))))))

(assert (=> bs!11075 (=> true e!61763)))

(declare-fun b!110600 () Bool)

(assert (=> b!110600 (= e!61763 (= (toValue!37 thiss!5344 x!31881) (toValue!37 thiss!5344 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879)))))))

(assert (= (and bs!11075 (not res!53420)) b!110600))

(assert (=> bs!11070 m!100848))

(assert (=> bs!11070 m!100844))

(assert (=> bs!11070 s!16581))

(declare-fun bs!11076 () Bool)

(declare-fun s!16583 () Bool)

(assert (= bs!11076 (and neg-inst!119 s!16583)))

(declare-fun res!53421 () Bool)

(declare-fun e!61764 () Bool)

(assert (=> bs!11076 (=> res!53421 e!61764)))

(assert (=> bs!11076 (= res!53421 (not (= (list!761 x!31881) (list!761 x!31879))))))

(assert (=> bs!11076 (=> true e!61764)))

(declare-fun b!110601 () Bool)

(assert (=> b!110601 (= e!61764 (= (toValue!37 thiss!5344 x!31881) (toValue!37 thiss!5344 x!31879)))))

(assert (= (and bs!11076 (not res!53421)) b!110601))

(assert (=> bs!11072 m!100848))

(assert (=> bs!11072 m!100842))

(assert (=> bs!11072 s!16583))

(assert (=> m!100856 s!16577))

(declare-fun bs!11077 () Bool)

(assert (= bs!11077 (and m!100846 m!100854)))

(assert (=> bs!11077 s!16565))

(declare-fun bs!11078 () Bool)

(assert (= bs!11078 (and m!100846 m!100856)))

(assert (=> bs!11078 s!16579))

(assert (=> m!100846 s!16565))

(declare-fun bs!11079 () Bool)

(assert (= bs!11079 (and m!100846 m!100842)))

(assert (=> bs!11079 s!16563))

(declare-fun bs!11080 () Bool)

(assert (= bs!11080 (and m!100846 m!100844)))

(assert (=> bs!11080 s!16561))

(assert (=> bs!11078 s!16571))

(assert (=> bs!11080 s!16567))

(assert (=> bs!11077 s!16565))

(assert (=> m!100846 s!16565))

(assert (=> bs!11079 s!16569))

(declare-fun bs!11081 () Bool)

(assert (= bs!11081 (and m!100836 m!100844)))

(assert (=> bs!11081 s!16559))

(assert (=> m!100836 s!16553))

(declare-fun bs!11082 () Bool)

(assert (= bs!11082 (and m!100836 m!100856)))

(assert (=> bs!11082 s!16583))

(declare-fun bs!11083 () Bool)

(assert (= bs!11083 (and m!100836 m!100854 m!100846)))

(assert (=> bs!11083 s!16569))

(declare-fun bs!11084 () Bool)

(assert (= bs!11084 (and m!100836 m!100842)))

(assert (=> bs!11084 s!16553))

(assert (=> bs!11081 s!16555))

(assert (=> bs!11082 s!16575))

(assert (=> m!100836 s!16553))

(assert (=> bs!11083 s!16563))

(assert (=> bs!11084 s!16553))

(declare-fun bs!11085 () Bool)

(assert (= bs!11085 (and m!100848 m!100844)))

(assert (=> bs!11085 s!16573))

(declare-fun bs!11086 () Bool)

(assert (= bs!11086 (and m!100848 m!100842 m!100836)))

(assert (=> bs!11086 s!16575))

(assert (=> m!100848 s!16577))

(declare-fun bs!11087 () Bool)

(assert (= bs!11087 (and m!100848 m!100854 m!100846)))

(assert (=> bs!11087 s!16571))

(declare-fun bs!11088 () Bool)

(assert (= bs!11088 (and m!100848 m!100856)))

(assert (=> bs!11088 s!16577))

(assert (=> bs!11085 s!16581))

(assert (=> m!100848 s!16577))

(assert (=> bs!11086 s!16583))

(assert (=> bs!11087 s!16579))

(assert (=> bs!11088 s!16577))

(declare-fun bs!11089 () Bool)

(assert (= bs!11089 (and neg-inst!119 b!110573)))

(assert (=> bs!11089 (= true inst!119)))

(declare-fun res!53403 () Bool)

(declare-fun e!61744 () Bool)

(assert (=> start!11366 (=> res!53403 e!61744)))

(declare-fun lambda!2805 () Int)

(declare-fun Forall!94 (Int) Bool)

(assert (=> start!11366 (= res!53403 (not (Forall!94 lambda!2805)))))

(assert (=> start!11366 (= (Forall!94 lambda!2805) inst!118)))

(assert (=> start!11366 (not e!61744)))

(assert (=> start!11366 true))

(declare-fun e!61743 () Bool)

(assert (=> b!110572 (= e!61744 e!61743)))

(declare-fun res!53404 () Bool)

(assert (=> b!110572 (=> res!53404 e!61743)))

(declare-fun lambda!2806 () Int)

(declare-fun lambda!2807 () Int)

(declare-fun semiInverseModEq!111 (Int Int) Bool)

(assert (=> b!110572 (= res!53404 (not (semiInverseModEq!111 lambda!2806 lambda!2807)))))

(assert (=> b!110572 (= (semiInverseModEq!111 lambda!2806 lambda!2807) (Forall!94 lambda!2805))))

(declare-fun lambda!2808 () Int)

(declare-fun Forall2!74 (Int) Bool)

(assert (=> b!110573 (= e!61743 (Forall2!74 lambda!2808))))

(assert (=> b!110573 (= (Forall2!74 lambda!2808) inst!119)))

(assert (= neg-inst!118 inst!118))

(assert (= (and start!11366 (not res!53403)) b!110572))

(assert (= (and b!110572 (not res!53404)) b!110573))

(assert (= neg-inst!119 inst!119))

(declare-fun m!100862 () Bool)

(assert (=> start!11366 m!100862))

(assert (=> start!11366 m!100862))

(declare-fun m!100864 () Bool)

(assert (=> b!110572 m!100864))

(assert (=> b!110572 m!100864))

(assert (=> b!110572 m!100862))

(declare-fun m!100866 () Bool)

(assert (=> b!110573 m!100866))

(assert (=> b!110573 m!100866))

(check-sat (not bs!11055) (not bs!11076) (not b!110594) (not b!110584) (not b!110585) (not b!110582) (not b!110589) (not b!110595) (not bs!11069) (not b!110596) (not bs!11062) (not bs!11053) (not bs!11073) (not bs!11065) (not bs!11075) (not start!11366) (not b!110586) (not b!110593) (not b!110601) (not b!110599) (not b!110588) (not bs!11056) (not bs!11058) (not bs!11067) (not b!110591) (not bs!11066) (not bs!11059) (not b!110587) (not b!110600) (not bs!11064) (not b!110592) (not bs!11074) (not b!110590) (not bs!11071) (not b!110598) (not b!110573) (not b!110597) (not b!110572) (not b!110583) (not bs!11060))
(check-sat)
(get-model)

(declare-fun d!27752 () Bool)

(declare-fun efficientList!42 (BalanceConc!1118) List!1791)

(assert (=> d!27752 (= (toValue!37 thiss!5344 x!31879) (EOFValue!379 (efficientList!42 x!31879)))))

(declare-fun bs!11114 () Bool)

(assert (= bs!11114 d!27752))

(declare-fun m!100886 () Bool)

(assert (=> bs!11114 m!100886))

(assert (=> b!110597 d!27752))

(declare-fun d!27754 () Bool)

(assert (=> d!27754 (= (toValue!37 thiss!5344 x!31881) (EOFValue!379 (efficientList!42 x!31881)))))

(declare-fun bs!11115 () Bool)

(assert (= bs!11115 d!27754))

(declare-fun m!100888 () Bool)

(assert (=> bs!11115 m!100888))

(assert (=> b!110597 d!27754))

(assert (=> b!110587 d!27752))

(declare-fun d!27756 () Bool)

(assert (=> d!27756 (= (toValue!37 thiss!5344 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879))) (EOFValue!379 (efficientList!42 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879)))))))

(declare-fun bs!11116 () Bool)

(assert (= bs!11116 d!27756))

(assert (=> bs!11116 m!100840))

(declare-fun m!100890 () Bool)

(assert (=> bs!11116 m!100890))

(assert (=> b!110587 d!27756))

(declare-fun d!27758 () Bool)

(declare-fun list!763 (Conc!557) List!1791)

(assert (=> d!27758 (= (list!761 x!31880) (list!763 (c!26245 x!31880)))))

(declare-fun bs!11117 () Bool)

(assert (= bs!11117 d!27758))

(declare-fun m!100892 () Bool)

(assert (=> bs!11117 m!100892))

(assert (=> bs!11066 d!27758))

(declare-fun d!27760 () Bool)

(assert (=> d!27760 (= (list!761 x!31879) (list!763 (c!26245 x!31879)))))

(declare-fun bs!11118 () Bool)

(assert (= bs!11118 d!27760))

(declare-fun m!100894 () Bool)

(assert (=> bs!11118 m!100894))

(assert (=> bs!11066 d!27760))

(assert (=> b!110600 d!27754))

(assert (=> b!110600 d!27756))

(assert (=> b!110590 d!27756))

(declare-fun d!27762 () Bool)

(assert (=> d!27762 (= (toValue!37 thiss!5344 x!31880) (EOFValue!379 (efficientList!42 x!31880)))))

(declare-fun bs!11119 () Bool)

(assert (= bs!11119 d!27762))

(declare-fun m!100896 () Bool)

(assert (=> bs!11119 m!100896))

(assert (=> b!110590 d!27762))

(assert (=> bs!11071 d!27760))

(declare-fun d!27764 () Bool)

(assert (=> d!27764 (= (list!761 x!31881) (list!763 (c!26245 x!31881)))))

(declare-fun bs!11120 () Bool)

(assert (= bs!11120 d!27764))

(declare-fun m!100898 () Bool)

(assert (=> bs!11120 m!100898))

(assert (=> bs!11071 d!27764))

(assert (=> bs!11056 d!27760))

(declare-fun d!27766 () Bool)

(assert (=> d!27766 (= (list!761 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879))) (list!763 (c!26245 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879)))))))

(declare-fun bs!11121 () Bool)

(assert (= bs!11121 d!27766))

(declare-fun m!100900 () Bool)

(assert (=> bs!11121 m!100900))

(assert (=> bs!11056 d!27766))

(assert (=> b!110593 d!27762))

(assert (=> b!110593 d!27756))

(assert (=> bs!11075 d!27764))

(assert (=> bs!11075 d!27766))

(assert (=> bs!11060 d!27766))

(assert (=> bs!11060 d!27758))

(assert (=> b!110586 d!27752))

(assert (=> b!110596 d!27756))

(assert (=> b!110596 d!27754))

(assert (=> bs!11065 d!27758))

(assert (=> bs!11065 d!27766))

(assert (=> b!110599 d!27754))

(assert (=> b!110599 d!27762))

(assert (=> b!110589 d!27756))

(assert (=> b!110589 d!27752))

(assert (=> bs!11055 d!27760))

(assert (=> bs!11069 d!27766))

(assert (=> bs!11069 d!27764))

(assert (=> b!110592 d!27762))

(assert (=> bs!11074 d!27764))

(assert (=> bs!11074 d!27758))

(assert (=> bs!11059 d!27766))

(assert (=> bs!11059 d!27760))

(assert (=> b!110595 d!27762))

(assert (=> b!110595 d!27754))

(assert (=> bs!11064 d!27758))

(assert (=> b!110598 d!27754))

(assert (=> b!110588 d!27756))

(assert (=> bs!11073 d!27764))

(assert (=> bs!11067 d!27758))

(assert (=> bs!11067 d!27764))

(assert (=> b!110591 d!27752))

(assert (=> b!110591 d!27762))

(assert (=> b!110601 d!27754))

(assert (=> b!110601 d!27752))

(assert (=> bs!11058 d!27766))

(assert (=> b!110594 d!27762))

(assert (=> b!110594 d!27752))

(assert (=> bs!11062 d!27760))

(assert (=> bs!11062 d!27758))

(assert (=> bs!11076 d!27764))

(assert (=> bs!11076 d!27760))

(declare-fun bs!11122 () Bool)

(assert (= bs!11122 (and m!100842 b!110586)))

(assert (=> bs!11122 m!100836))

(assert (=> bs!11122 m!100836))

(declare-fun bs!11123 () Bool)

(assert (= bs!11123 (and m!100844 m!100842 b!110587)))

(assert (=> bs!11123 m!100836))

(declare-fun m!100902 () Bool)

(assert (=> bs!11123 m!100902))

(declare-fun bs!11124 () Bool)

(assert (= bs!11124 (and m!100844 b!110588)))

(assert (=> bs!11124 m!100902))

(assert (=> bs!11124 m!100902))

(declare-fun bs!11125 () Bool)

(assert (= bs!11125 (and m!100844 m!100842 b!110589)))

(assert (=> bs!11125 m!100902))

(assert (=> bs!11125 m!100836))

(declare-fun bs!11126 () Bool)

(assert (= bs!11126 (and m!100854 m!100844 b!110590)))

(assert (=> bs!11126 m!100902))

(assert (=> bs!11126 m!100854))

(declare-fun bs!11127 () Bool)

(assert (= bs!11127 (and m!100854 m!100842 b!110591)))

(assert (=> bs!11127 m!100836))

(assert (=> bs!11127 m!100854))

(declare-fun bs!11128 () Bool)

(assert (= bs!11128 (and m!100854 b!110592)))

(assert (=> bs!11128 m!100854))

(assert (=> bs!11128 m!100854))

(declare-fun bs!11129 () Bool)

(assert (= bs!11129 (and m!100854 m!100844 b!110593)))

(assert (=> bs!11129 m!100854))

(assert (=> bs!11129 m!100902))

(declare-fun bs!11130 () Bool)

(assert (= bs!11130 (and m!100854 m!100842 b!110594)))

(assert (=> bs!11130 m!100854))

(assert (=> bs!11130 m!100836))

(declare-fun bs!11131 () Bool)

(assert (= bs!11131 (and m!100856 m!100854 b!110595)))

(assert (=> bs!11131 m!100854))

(assert (=> bs!11131 m!100856))

(declare-fun bs!11132 () Bool)

(assert (= bs!11132 (and m!100856 m!100844 b!110596)))

(assert (=> bs!11132 m!100902))

(assert (=> bs!11132 m!100856))

(declare-fun bs!11133 () Bool)

(assert (= bs!11133 (and m!100856 m!100842 b!110597)))

(assert (=> bs!11133 m!100836))

(assert (=> bs!11133 m!100856))

(declare-fun bs!11134 () Bool)

(assert (= bs!11134 (and m!100856 b!110598)))

(assert (=> bs!11134 m!100856))

(assert (=> bs!11134 m!100856))

(declare-fun bs!11135 () Bool)

(assert (= bs!11135 (and m!100856 m!100854 b!110599)))

(assert (=> bs!11135 m!100856))

(assert (=> bs!11135 m!100854))

(declare-fun bs!11136 () Bool)

(assert (= bs!11136 (and m!100856 m!100844 b!110600)))

(assert (=> bs!11136 m!100856))

(assert (=> bs!11136 m!100902))

(declare-fun bs!11137 () Bool)

(assert (= bs!11137 (and m!100856 m!100842 b!110601)))

(assert (=> bs!11137 m!100856))

(assert (=> bs!11137 m!100836))

(check-sat (not bs!11053) (not start!11366) (not d!27760) (not d!27762) (not b!110584) (not d!27756) (not b!110585) (not b!110582) (not b!110573) (not b!110572) (not b!110583) (not d!27758) (not d!27754) (not d!27766) (not d!27764) (not d!27752))
(check-sat)
(get-model)

(declare-fun d!27780 () Bool)

(declare-fun c!26262 () Bool)

(get-info :version)

(assert (=> d!27780 (= c!26262 ((_ is Empty!557) (c!26245 x!31879)))))

(declare-fun e!61781 () List!1791)

(assert (=> d!27780 (= (list!763 (c!26245 x!31879)) e!61781)))

(declare-fun b!110634 () Bool)

(assert (=> b!110634 (= e!61781 Nil!1785)))

(declare-fun b!110635 () Bool)

(declare-fun e!61782 () List!1791)

(assert (=> b!110635 (= e!61781 e!61782)))

(declare-fun c!26263 () Bool)

(assert (=> b!110635 (= c!26263 ((_ is Leaf!917) (c!26245 x!31879)))))

(declare-fun b!110636 () Bool)

(declare-fun list!765 (IArray!1115) List!1791)

(assert (=> b!110636 (= e!61782 (list!765 (xs!3152 (c!26245 x!31879))))))

(declare-fun b!110637 () Bool)

(declare-fun ++!296 (List!1791 List!1791) List!1791)

(assert (=> b!110637 (= e!61782 (++!296 (list!763 (left!1514 (c!26245 x!31879))) (list!763 (right!1844 (c!26245 x!31879)))))))

(assert (= (and d!27780 c!26262) b!110634))

(assert (= (and d!27780 (not c!26262)) b!110635))

(assert (= (and b!110635 c!26263) b!110636))

(assert (= (and b!110635 (not c!26263)) b!110637))

(declare-fun m!100952 () Bool)

(assert (=> b!110636 m!100952))

(declare-fun m!100954 () Bool)

(assert (=> b!110637 m!100954))

(declare-fun m!100956 () Bool)

(assert (=> b!110637 m!100956))

(assert (=> b!110637 m!100954))

(assert (=> b!110637 m!100956))

(declare-fun m!100958 () Bool)

(assert (=> b!110637 m!100958))

(assert (=> d!27760 d!27780))

(declare-fun d!27786 () Bool)

(declare-fun lt!32443 () List!1791)

(assert (=> d!27786 (= lt!32443 (list!761 x!31879))))

(declare-fun efficientList!44 (Conc!557 List!1791) List!1791)

(declare-fun efficientList$default$2!15 (Conc!557) List!1791)

(assert (=> d!27786 (= lt!32443 (efficientList!44 (c!26245 x!31879) (efficientList$default$2!15 (c!26245 x!31879))))))

(assert (=> d!27786 (= (efficientList!42 x!31879) lt!32443)))

(declare-fun bs!11142 () Bool)

(assert (= bs!11142 d!27786))

(assert (=> bs!11142 m!100842))

(declare-fun m!100960 () Bool)

(assert (=> bs!11142 m!100960))

(assert (=> bs!11142 m!100960))

(declare-fun m!100962 () Bool)

(assert (=> bs!11142 m!100962))

(assert (=> d!27752 d!27786))

(declare-fun d!27788 () Bool)

(declare-fun c!26264 () Bool)

(assert (=> d!27788 (= c!26264 ((_ is Empty!557) (c!26245 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879)))))))

(declare-fun e!61783 () List!1791)

(assert (=> d!27788 (= (list!763 (c!26245 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879)))) e!61783)))

(declare-fun b!110638 () Bool)

(assert (=> b!110638 (= e!61783 Nil!1785)))

(declare-fun b!110639 () Bool)

(declare-fun e!61784 () List!1791)

(assert (=> b!110639 (= e!61783 e!61784)))

(declare-fun c!26265 () Bool)

(assert (=> b!110639 (= c!26265 ((_ is Leaf!917) (c!26245 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879)))))))

(declare-fun b!110640 () Bool)

(assert (=> b!110640 (= e!61784 (list!765 (xs!3152 (c!26245 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879))))))))

(declare-fun b!110641 () Bool)

(assert (=> b!110641 (= e!61784 (++!296 (list!763 (left!1514 (c!26245 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879))))) (list!763 (right!1844 (c!26245 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879)))))))))

(assert (= (and d!27788 c!26264) b!110638))

(assert (= (and d!27788 (not c!26264)) b!110639))

(assert (= (and b!110639 c!26265) b!110640))

(assert (= (and b!110639 (not c!26265)) b!110641))

(declare-fun m!100964 () Bool)

(assert (=> b!110640 m!100964))

(declare-fun m!100966 () Bool)

(assert (=> b!110641 m!100966))

(declare-fun m!100968 () Bool)

(assert (=> b!110641 m!100968))

(assert (=> b!110641 m!100966))

(assert (=> b!110641 m!100968))

(declare-fun m!100970 () Bool)

(assert (=> b!110641 m!100970))

(assert (=> d!27766 d!27788))

(declare-fun d!27790 () Bool)

(declare-fun c!26266 () Bool)

(assert (=> d!27790 (= c!26266 ((_ is Empty!557) (c!26245 x!31880)))))

(declare-fun e!61785 () List!1791)

(assert (=> d!27790 (= (list!763 (c!26245 x!31880)) e!61785)))

(declare-fun b!110642 () Bool)

(assert (=> b!110642 (= e!61785 Nil!1785)))

(declare-fun b!110643 () Bool)

(declare-fun e!61786 () List!1791)

(assert (=> b!110643 (= e!61785 e!61786)))

(declare-fun c!26267 () Bool)

(assert (=> b!110643 (= c!26267 ((_ is Leaf!917) (c!26245 x!31880)))))

(declare-fun b!110644 () Bool)

(assert (=> b!110644 (= e!61786 (list!765 (xs!3152 (c!26245 x!31880))))))

(declare-fun b!110645 () Bool)

(assert (=> b!110645 (= e!61786 (++!296 (list!763 (left!1514 (c!26245 x!31880))) (list!763 (right!1844 (c!26245 x!31880)))))))

(assert (= (and d!27790 c!26266) b!110642))

(assert (= (and d!27790 (not c!26266)) b!110643))

(assert (= (and b!110643 c!26267) b!110644))

(assert (= (and b!110643 (not c!26267)) b!110645))

(declare-fun m!100972 () Bool)

(assert (=> b!110644 m!100972))

(declare-fun m!100974 () Bool)

(assert (=> b!110645 m!100974))

(declare-fun m!100976 () Bool)

(assert (=> b!110645 m!100976))

(assert (=> b!110645 m!100974))

(assert (=> b!110645 m!100976))

(declare-fun m!100978 () Bool)

(assert (=> b!110645 m!100978))

(assert (=> d!27758 d!27790))

(declare-fun d!27792 () Bool)

(declare-fun c!26268 () Bool)

(assert (=> d!27792 (= c!26268 ((_ is Empty!557) (c!26245 x!31881)))))

(declare-fun e!61787 () List!1791)

(assert (=> d!27792 (= (list!763 (c!26245 x!31881)) e!61787)))

(declare-fun b!110646 () Bool)

(assert (=> b!110646 (= e!61787 Nil!1785)))

(declare-fun b!110647 () Bool)

(declare-fun e!61788 () List!1791)

(assert (=> b!110647 (= e!61787 e!61788)))

(declare-fun c!26269 () Bool)

(assert (=> b!110647 (= c!26269 ((_ is Leaf!917) (c!26245 x!31881)))))

(declare-fun b!110648 () Bool)

(assert (=> b!110648 (= e!61788 (list!765 (xs!3152 (c!26245 x!31881))))))

(declare-fun b!110649 () Bool)

(assert (=> b!110649 (= e!61788 (++!296 (list!763 (left!1514 (c!26245 x!31881))) (list!763 (right!1844 (c!26245 x!31881)))))))

(assert (= (and d!27792 c!26268) b!110646))

(assert (= (and d!27792 (not c!26268)) b!110647))

(assert (= (and b!110647 c!26269) b!110648))

(assert (= (and b!110647 (not c!26269)) b!110649))

(declare-fun m!100980 () Bool)

(assert (=> b!110648 m!100980))

(declare-fun m!100982 () Bool)

(assert (=> b!110649 m!100982))

(declare-fun m!100984 () Bool)

(assert (=> b!110649 m!100984))

(assert (=> b!110649 m!100982))

(assert (=> b!110649 m!100984))

(declare-fun m!100986 () Bool)

(assert (=> b!110649 m!100986))

(assert (=> d!27764 d!27792))

(declare-fun d!27794 () Bool)

(declare-fun lt!32444 () List!1791)

(assert (=> d!27794 (= lt!32444 (list!761 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879))))))

(assert (=> d!27794 (= lt!32444 (efficientList!44 (c!26245 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879))) (efficientList$default$2!15 (c!26245 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879))))))))

(assert (=> d!27794 (= (efficientList!42 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879))) lt!32444)))

(declare-fun bs!11143 () Bool)

(assert (= bs!11143 d!27794))

(assert (=> bs!11143 m!100840))

(assert (=> bs!11143 m!100844))

(declare-fun m!100988 () Bool)

(assert (=> bs!11143 m!100988))

(assert (=> bs!11143 m!100988))

(declare-fun m!100990 () Bool)

(assert (=> bs!11143 m!100990))

(assert (=> d!27756 d!27794))

(declare-fun d!27796 () Bool)

(declare-fun lt!32445 () List!1791)

(assert (=> d!27796 (= lt!32445 (list!761 x!31880))))

(assert (=> d!27796 (= lt!32445 (efficientList!44 (c!26245 x!31880) (efficientList$default$2!15 (c!26245 x!31880))))))

(assert (=> d!27796 (= (efficientList!42 x!31880) lt!32445)))

(declare-fun bs!11144 () Bool)

(assert (= bs!11144 d!27796))

(assert (=> bs!11144 m!100846))

(declare-fun m!100992 () Bool)

(assert (=> bs!11144 m!100992))

(assert (=> bs!11144 m!100992))

(declare-fun m!100994 () Bool)

(assert (=> bs!11144 m!100994))

(assert (=> d!27762 d!27796))

(declare-fun d!27798 () Bool)

(declare-fun lt!32446 () List!1791)

(assert (=> d!27798 (= lt!32446 (list!761 x!31881))))

(assert (=> d!27798 (= lt!32446 (efficientList!44 (c!26245 x!31881) (efficientList$default$2!15 (c!26245 x!31881))))))

(assert (=> d!27798 (= (efficientList!42 x!31881) lt!32446)))

(declare-fun bs!11145 () Bool)

(assert (= bs!11145 d!27798))

(assert (=> bs!11145 m!100848))

(declare-fun m!100996 () Bool)

(assert (=> bs!11145 m!100996))

(assert (=> bs!11145 m!100996))

(declare-fun m!100998 () Bool)

(assert (=> bs!11145 m!100998))

(assert (=> d!27754 d!27798))

(check-sat (not bs!11053) (not d!27796) (not d!27786) (not b!110584) (not d!27798) (not b!110573) (not b!110572) (not b!110583) (not b!110637) (not b!110640) (not start!11366) (not b!110641) (not b!110648) (not b!110645) (not b!110644) (not b!110649) (not b!110585) (not d!27794) (not b!110582) (not b!110636))
(check-sat)
(get-model)

(declare-fun d!27806 () Bool)

(declare-fun isBalanced!160 (Conc!557) Bool)

(assert (=> d!27806 (= (inv!2253 x!31879) (isBalanced!160 (c!26245 x!31879)))))

(declare-fun bs!11151 () Bool)

(assert (= bs!11151 d!27806))

(declare-fun m!101012 () Bool)

(assert (=> bs!11151 m!101012))

(assert (=> start!11366 d!27806))

(assert (=> start!11366 d!27760))

(declare-fun d!27816 () Bool)

(declare-fun choose!1493 (Int) Bool)

(assert (=> d!27816 (= (Forall!94 lambda!2805) (choose!1493 lambda!2805))))

(declare-fun bs!11152 () Bool)

(assert (= bs!11152 d!27816))

(declare-fun m!101014 () Bool)

(assert (=> bs!11152 m!101014))

(assert (=> start!11366 d!27816))

(declare-fun d!27818 () Bool)

(declare-fun c!26277 () Bool)

(assert (=> d!27818 (= c!26277 ((_ is EOFValue!379) (toValue!37 thiss!5344 x!31879)))))

(declare-fun e!61794 () BalanceConc!1118)

(assert (=> d!27818 (= (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879)) e!61794)))

(declare-fun b!110660 () Bool)

(declare-fun seqFromList!214 (List!1791) BalanceConc!1118)

(assert (=> b!110660 (= e!61794 (seqFromList!214 (value!14020 (toValue!37 thiss!5344 x!31879))))))

(declare-fun b!110661 () Bool)

(assert (=> b!110661 (= e!61794 (BalanceConc!1119 Empty!557))))

(assert (= (and d!27818 c!26277) b!110660))

(assert (= (and d!27818 (not c!26277)) b!110661))

(declare-fun m!101016 () Bool)

(assert (=> b!110660 m!101016))

(assert (=> start!11366 d!27818))

(assert (=> start!11366 d!27752))

(assert (=> start!11366 d!27766))

(assert (=> d!27794 d!27766))

(declare-fun d!27820 () Bool)

(declare-fun lt!32472 () List!1791)

(assert (=> d!27820 (= lt!32472 (++!296 (list!763 (c!26245 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879)))) (efficientList$default$2!15 (c!26245 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879))))))))

(declare-fun e!61812 () List!1791)

(assert (=> d!27820 (= lt!32472 e!61812)))

(declare-fun c!26294 () Bool)

(assert (=> d!27820 (= c!26294 ((_ is Empty!557) (c!26245 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879)))))))

(assert (=> d!27820 (= (efficientList!44 (c!26245 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879))) (efficientList$default$2!15 (c!26245 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879))))) lt!32472)))

(declare-fun bm!4789 () Bool)

(declare-fun c!26295 () Bool)

(declare-fun c!26293 () Bool)

(assert (=> bm!4789 (= c!26295 c!26293)))

(declare-fun e!61810 () List!1791)

(declare-fun lt!32475 () List!1791)

(declare-fun call!4794 () List!1791)

(assert (=> bm!4789 (= call!4794 (++!296 e!61810 (ite c!26293 (efficientList$default$2!15 (c!26245 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879)))) lt!32475)))))

(declare-fun b!110696 () Bool)

(declare-fun e!61811 () List!1791)

(assert (=> b!110696 (= e!61811 call!4794)))

(declare-fun b!110697 () Bool)

(declare-datatypes ((Unit!1270 0))(
  ( (Unit!1271) )
))
(declare-fun lt!32476 () Unit!1270)

(declare-fun lt!32474 () Unit!1270)

(assert (=> b!110697 (= lt!32476 lt!32474)))

(declare-fun lt!32473 () List!1791)

(assert (=> b!110697 (= (++!296 call!4794 (efficientList$default$2!15 (c!26245 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879))))) (++!296 lt!32473 (++!296 lt!32475 (efficientList$default$2!15 (c!26245 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879)))))))))

(declare-fun lemmaConcatAssociativity!115 (List!1791 List!1791 List!1791) Unit!1270)

(assert (=> b!110697 (= lt!32474 (lemmaConcatAssociativity!115 lt!32473 lt!32475 (efficientList$default$2!15 (c!26245 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879))))))))

(assert (=> b!110697 (= lt!32475 (list!763 (right!1844 (c!26245 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879))))))))

(assert (=> b!110697 (= lt!32473 (list!763 (left!1514 (c!26245 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879))))))))

(assert (=> b!110697 (= e!61811 (efficientList!44 (left!1514 (c!26245 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879)))) (efficientList!44 (right!1844 (c!26245 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879)))) (efficientList$default$2!15 (c!26245 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879)))))))))

(declare-fun b!110698 () Bool)

(assert (=> b!110698 (= e!61810 lt!32473)))

(declare-fun b!110699 () Bool)

(declare-fun efficientList!46 (IArray!1115) List!1791)

(assert (=> b!110699 (= e!61810 (efficientList!46 (xs!3152 (c!26245 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879))))))))

(declare-fun b!110700 () Bool)

(assert (=> b!110700 (= e!61812 (efficientList$default$2!15 (c!26245 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879)))))))

(declare-fun b!110701 () Bool)

(assert (=> b!110701 (= e!61812 e!61811)))

(assert (=> b!110701 (= c!26293 ((_ is Leaf!917) (c!26245 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879)))))))

(assert (= (and d!27820 c!26294) b!110700))

(assert (= (and d!27820 (not c!26294)) b!110701))

(assert (= (and b!110701 c!26293) b!110696))

(assert (= (and b!110701 (not c!26293)) b!110697))

(assert (= (or b!110696 b!110697) bm!4789))

(assert (= (and bm!4789 c!26295) b!110699))

(assert (= (and bm!4789 (not c!26295)) b!110698))

(assert (=> d!27820 m!100900))

(assert (=> d!27820 m!100900))

(assert (=> d!27820 m!100988))

(declare-fun m!101038 () Bool)

(assert (=> d!27820 m!101038))

(declare-fun m!101040 () Bool)

(assert (=> bm!4789 m!101040))

(assert (=> b!110697 m!100988))

(declare-fun m!101042 () Bool)

(assert (=> b!110697 m!101042))

(assert (=> b!110697 m!100988))

(declare-fun m!101044 () Bool)

(assert (=> b!110697 m!101044))

(declare-fun m!101046 () Bool)

(assert (=> b!110697 m!101046))

(declare-fun m!101048 () Bool)

(assert (=> b!110697 m!101048))

(assert (=> b!110697 m!100968))

(assert (=> b!110697 m!100966))

(assert (=> b!110697 m!100988))

(declare-fun m!101050 () Bool)

(assert (=> b!110697 m!101050))

(assert (=> b!110697 m!100988))

(assert (=> b!110697 m!101046))

(assert (=> b!110697 m!101050))

(declare-fun m!101052 () Bool)

(assert (=> b!110697 m!101052))

(declare-fun m!101054 () Bool)

(assert (=> b!110699 m!101054))

(assert (=> d!27794 d!27820))

(declare-fun d!27828 () Bool)

(assert (=> d!27828 (= (efficientList$default$2!15 (c!26245 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31879)))) Nil!1785)))

(assert (=> d!27794 d!27828))

(declare-fun d!27830 () Bool)

(assert (=> d!27830 (= (inv!2253 x!31880) (isBalanced!160 (c!26245 x!31880)))))

(declare-fun bs!11155 () Bool)

(assert (= bs!11155 d!27830))

(declare-fun m!101056 () Bool)

(assert (=> bs!11155 m!101056))

(assert (=> b!110573 d!27830))

(declare-fun d!27832 () Bool)

(assert (=> d!27832 (= (inv!2253 x!31881) (isBalanced!160 (c!26245 x!31881)))))

(declare-fun bs!11156 () Bool)

(assert (= bs!11156 d!27832))

(declare-fun m!101058 () Bool)

(assert (=> bs!11156 m!101058))

(assert (=> b!110573 d!27832))

(assert (=> b!110573 d!27758))

(declare-fun d!27834 () Bool)

(declare-fun choose!1494 (Int) Bool)

(assert (=> d!27834 (= (Forall2!74 lambda!2808) (choose!1494 lambda!2808))))

(declare-fun bs!11157 () Bool)

(assert (= bs!11157 d!27834))

(declare-fun m!101060 () Bool)

(assert (=> bs!11157 m!101060))

(assert (=> b!110573 d!27834))

(assert (=> b!110573 d!27764))

(assert (=> d!27786 d!27760))

(declare-fun d!27836 () Bool)

(declare-fun lt!32477 () List!1791)

(assert (=> d!27836 (= lt!32477 (++!296 (list!763 (c!26245 x!31879)) (efficientList$default$2!15 (c!26245 x!31879))))))

(declare-fun e!61819 () List!1791)

(assert (=> d!27836 (= lt!32477 e!61819)))

(declare-fun c!26299 () Bool)

(assert (=> d!27836 (= c!26299 ((_ is Empty!557) (c!26245 x!31879)))))

(assert (=> d!27836 (= (efficientList!44 (c!26245 x!31879) (efficientList$default$2!15 (c!26245 x!31879))) lt!32477)))

(declare-fun bm!4790 () Bool)

(declare-fun c!26300 () Bool)

(declare-fun c!26298 () Bool)

(assert (=> bm!4790 (= c!26300 c!26298)))

(declare-fun lt!32480 () List!1791)

(declare-fun call!4795 () List!1791)

(declare-fun e!61817 () List!1791)

(assert (=> bm!4790 (= call!4795 (++!296 e!61817 (ite c!26298 (efficientList$default$2!15 (c!26245 x!31879)) lt!32480)))))

(declare-fun b!110708 () Bool)

(declare-fun e!61818 () List!1791)

(assert (=> b!110708 (= e!61818 call!4795)))

(declare-fun b!110709 () Bool)

(declare-fun lt!32481 () Unit!1270)

(declare-fun lt!32479 () Unit!1270)

(assert (=> b!110709 (= lt!32481 lt!32479)))

(declare-fun lt!32478 () List!1791)

(assert (=> b!110709 (= (++!296 call!4795 (efficientList$default$2!15 (c!26245 x!31879))) (++!296 lt!32478 (++!296 lt!32480 (efficientList$default$2!15 (c!26245 x!31879)))))))

(assert (=> b!110709 (= lt!32479 (lemmaConcatAssociativity!115 lt!32478 lt!32480 (efficientList$default$2!15 (c!26245 x!31879))))))

(assert (=> b!110709 (= lt!32480 (list!763 (right!1844 (c!26245 x!31879))))))

(assert (=> b!110709 (= lt!32478 (list!763 (left!1514 (c!26245 x!31879))))))

(assert (=> b!110709 (= e!61818 (efficientList!44 (left!1514 (c!26245 x!31879)) (efficientList!44 (right!1844 (c!26245 x!31879)) (efficientList$default$2!15 (c!26245 x!31879)))))))

(declare-fun b!110710 () Bool)

(assert (=> b!110710 (= e!61817 lt!32478)))

(declare-fun b!110711 () Bool)

(assert (=> b!110711 (= e!61817 (efficientList!46 (xs!3152 (c!26245 x!31879))))))

(declare-fun b!110712 () Bool)

(assert (=> b!110712 (= e!61819 (efficientList$default$2!15 (c!26245 x!31879)))))

(declare-fun b!110713 () Bool)

(assert (=> b!110713 (= e!61819 e!61818)))

(assert (=> b!110713 (= c!26298 ((_ is Leaf!917) (c!26245 x!31879)))))

(assert (= (and d!27836 c!26299) b!110712))

(assert (= (and d!27836 (not c!26299)) b!110713))

(assert (= (and b!110713 c!26298) b!110708))

(assert (= (and b!110713 (not c!26298)) b!110709))

(assert (= (or b!110708 b!110709) bm!4790))

(assert (= (and bm!4790 c!26300) b!110711))

(assert (= (and bm!4790 (not c!26300)) b!110710))

(assert (=> d!27836 m!100894))

(assert (=> d!27836 m!100894))

(assert (=> d!27836 m!100960))

(declare-fun m!101062 () Bool)

(assert (=> d!27836 m!101062))

(declare-fun m!101064 () Bool)

(assert (=> bm!4790 m!101064))

(assert (=> b!110709 m!100960))

(declare-fun m!101066 () Bool)

(assert (=> b!110709 m!101066))

(assert (=> b!110709 m!100960))

(declare-fun m!101068 () Bool)

(assert (=> b!110709 m!101068))

(declare-fun m!101070 () Bool)

(assert (=> b!110709 m!101070))

(declare-fun m!101072 () Bool)

(assert (=> b!110709 m!101072))

(assert (=> b!110709 m!100956))

(assert (=> b!110709 m!100954))

(assert (=> b!110709 m!100960))

(declare-fun m!101074 () Bool)

(assert (=> b!110709 m!101074))

(assert (=> b!110709 m!100960))

(assert (=> b!110709 m!101070))

(assert (=> b!110709 m!101074))

(declare-fun m!101076 () Bool)

(assert (=> b!110709 m!101076))

(declare-fun m!101078 () Bool)

(assert (=> b!110711 m!101078))

(assert (=> d!27786 d!27836))

(declare-fun d!27838 () Bool)

(assert (=> d!27838 (= (efficientList$default$2!15 (c!26245 x!31879)) Nil!1785)))

(assert (=> d!27786 d!27838))

(declare-fun bs!11158 () Bool)

(declare-fun d!27842 () Bool)

(assert (= bs!11158 (and d!27842 start!11366)))

(declare-fun lambda!2814 () Int)

(assert (=> bs!11158 (not (= lambda!2814 lambda!2805))))

(assert (=> d!27842 true))

(declare-fun order!1115 () Int)

(declare-fun order!1117 () Int)

(declare-fun dynLambda!735 (Int Int) Int)

(declare-fun dynLambda!736 (Int Int) Int)

(assert (=> d!27842 (< (dynLambda!735 order!1115 lambda!2806) (dynLambda!736 order!1117 lambda!2814))))

(assert (=> d!27842 true))

(declare-fun order!1119 () Int)

(declare-fun dynLambda!737 (Int Int) Int)

(assert (=> d!27842 (< (dynLambda!737 order!1119 lambda!2807) (dynLambda!736 order!1117 lambda!2814))))

(assert (=> d!27842 (= (semiInverseModEq!111 lambda!2806 lambda!2807) (Forall!94 lambda!2814))))

(declare-fun bs!11159 () Bool)

(assert (= bs!11159 d!27842))

(declare-fun m!101146 () Bool)

(assert (=> bs!11159 m!101146))

(assert (=> b!110572 d!27842))

(assert (=> b!110572 d!27816))

(assert (=> d!27798 d!27764))

(declare-fun d!27858 () Bool)

(declare-fun lt!32497 () List!1791)

(assert (=> d!27858 (= lt!32497 (++!296 (list!763 (c!26245 x!31881)) (efficientList$default$2!15 (c!26245 x!31881))))))

(declare-fun e!61841 () List!1791)

(assert (=> d!27858 (= lt!32497 e!61841)))

(declare-fun c!26314 () Bool)

(assert (=> d!27858 (= c!26314 ((_ is Empty!557) (c!26245 x!31881)))))

(assert (=> d!27858 (= (efficientList!44 (c!26245 x!31881) (efficientList$default$2!15 (c!26245 x!31881))) lt!32497)))

(declare-fun bm!4794 () Bool)

(declare-fun c!26315 () Bool)

(declare-fun c!26313 () Bool)

(assert (=> bm!4794 (= c!26315 c!26313)))

(declare-fun lt!32500 () List!1791)

(declare-fun call!4799 () List!1791)

(declare-fun e!61839 () List!1791)

(assert (=> bm!4794 (= call!4799 (++!296 e!61839 (ite c!26313 (efficientList$default$2!15 (c!26245 x!31881)) lt!32500)))))

(declare-fun b!110751 () Bool)

(declare-fun e!61840 () List!1791)

(assert (=> b!110751 (= e!61840 call!4799)))

(declare-fun b!110752 () Bool)

(declare-fun lt!32501 () Unit!1270)

(declare-fun lt!32499 () Unit!1270)

(assert (=> b!110752 (= lt!32501 lt!32499)))

(declare-fun lt!32498 () List!1791)

(assert (=> b!110752 (= (++!296 call!4799 (efficientList$default$2!15 (c!26245 x!31881))) (++!296 lt!32498 (++!296 lt!32500 (efficientList$default$2!15 (c!26245 x!31881)))))))

(assert (=> b!110752 (= lt!32499 (lemmaConcatAssociativity!115 lt!32498 lt!32500 (efficientList$default$2!15 (c!26245 x!31881))))))

(assert (=> b!110752 (= lt!32500 (list!763 (right!1844 (c!26245 x!31881))))))

(assert (=> b!110752 (= lt!32498 (list!763 (left!1514 (c!26245 x!31881))))))

(assert (=> b!110752 (= e!61840 (efficientList!44 (left!1514 (c!26245 x!31881)) (efficientList!44 (right!1844 (c!26245 x!31881)) (efficientList$default$2!15 (c!26245 x!31881)))))))

(declare-fun b!110753 () Bool)

(assert (=> b!110753 (= e!61839 lt!32498)))

(declare-fun b!110754 () Bool)

(assert (=> b!110754 (= e!61839 (efficientList!46 (xs!3152 (c!26245 x!31881))))))

(declare-fun b!110755 () Bool)

(assert (=> b!110755 (= e!61841 (efficientList$default$2!15 (c!26245 x!31881)))))

(declare-fun b!110756 () Bool)

(assert (=> b!110756 (= e!61841 e!61840)))

(assert (=> b!110756 (= c!26313 ((_ is Leaf!917) (c!26245 x!31881)))))

(assert (= (and d!27858 c!26314) b!110755))

(assert (= (and d!27858 (not c!26314)) b!110756))

(assert (= (and b!110756 c!26313) b!110751))

(assert (= (and b!110756 (not c!26313)) b!110752))

(assert (= (or b!110751 b!110752) bm!4794))

(assert (= (and bm!4794 c!26315) b!110754))

(assert (= (and bm!4794 (not c!26315)) b!110753))

(assert (=> d!27858 m!100898))

(assert (=> d!27858 m!100898))

(assert (=> d!27858 m!100996))

(declare-fun m!101148 () Bool)

(assert (=> d!27858 m!101148))

(declare-fun m!101150 () Bool)

(assert (=> bm!4794 m!101150))

(assert (=> b!110752 m!100996))

(declare-fun m!101152 () Bool)

(assert (=> b!110752 m!101152))

(assert (=> b!110752 m!100996))

(declare-fun m!101154 () Bool)

(assert (=> b!110752 m!101154))

(declare-fun m!101156 () Bool)

(assert (=> b!110752 m!101156))

(declare-fun m!101158 () Bool)

(assert (=> b!110752 m!101158))

(assert (=> b!110752 m!100984))

(assert (=> b!110752 m!100982))

(assert (=> b!110752 m!100996))

(declare-fun m!101160 () Bool)

(assert (=> b!110752 m!101160))

(assert (=> b!110752 m!100996))

(assert (=> b!110752 m!101156))

(assert (=> b!110752 m!101160))

(declare-fun m!101162 () Bool)

(assert (=> b!110752 m!101162))

(declare-fun m!101164 () Bool)

(assert (=> b!110754 m!101164))

(assert (=> d!27798 d!27858))

(declare-fun d!27860 () Bool)

(assert (=> d!27860 (= (efficientList$default$2!15 (c!26245 x!31881)) Nil!1785)))

(assert (=> d!27798 d!27860))

(declare-fun d!27862 () Bool)

(declare-fun c!26318 () Bool)

(assert (=> d!27862 (= c!26318 ((_ is Node!557) (c!26245 x!31881)))))

(declare-fun e!61852 () Bool)

(assert (=> d!27862 (= (inv!2252 (c!26245 x!31881)) e!61852)))

(declare-fun b!110769 () Bool)

(declare-fun inv!2256 (Conc!557) Bool)

(assert (=> b!110769 (= e!61852 (inv!2256 (c!26245 x!31881)))))

(declare-fun b!110770 () Bool)

(declare-fun e!61853 () Bool)

(assert (=> b!110770 (= e!61852 e!61853)))

(declare-fun res!53441 () Bool)

(assert (=> b!110770 (= res!53441 (not ((_ is Leaf!917) (c!26245 x!31881))))))

(assert (=> b!110770 (=> res!53441 e!61853)))

(declare-fun b!110771 () Bool)

(declare-fun inv!2257 (Conc!557) Bool)

(assert (=> b!110771 (= e!61853 (inv!2257 (c!26245 x!31881)))))

(assert (= (and d!27862 c!26318) b!110769))

(assert (= (and d!27862 (not c!26318)) b!110770))

(assert (= (and b!110770 (not res!53441)) b!110771))

(declare-fun m!101184 () Bool)

(assert (=> b!110769 m!101184))

(declare-fun m!101186 () Bool)

(assert (=> b!110771 m!101186))

(assert (=> b!110585 d!27862))

(declare-fun d!27864 () Bool)

(declare-fun c!26319 () Bool)

(assert (=> d!27864 (= c!26319 ((_ is Node!557) (c!26245 x!31880)))))

(declare-fun e!61854 () Bool)

(assert (=> d!27864 (= (inv!2252 (c!26245 x!31880)) e!61854)))

(declare-fun b!110772 () Bool)

(assert (=> b!110772 (= e!61854 (inv!2256 (c!26245 x!31880)))))

(declare-fun b!110773 () Bool)

(declare-fun e!61855 () Bool)

(assert (=> b!110773 (= e!61854 e!61855)))

(declare-fun res!53442 () Bool)

(assert (=> b!110773 (= res!53442 (not ((_ is Leaf!917) (c!26245 x!31880))))))

(assert (=> b!110773 (=> res!53442 e!61855)))

(declare-fun b!110774 () Bool)

(assert (=> b!110774 (= e!61855 (inv!2257 (c!26245 x!31880)))))

(assert (= (and d!27864 c!26319) b!110772))

(assert (= (and d!27864 (not c!26319)) b!110773))

(assert (= (and b!110773 (not res!53442)) b!110774))

(declare-fun m!101188 () Bool)

(assert (=> b!110772 m!101188))

(declare-fun m!101190 () Bool)

(assert (=> b!110774 m!101190))

(assert (=> b!110584 d!27864))

(assert (=> bs!11053 d!27766))

(assert (=> bs!11053 d!27818))

(assert (=> bs!11053 d!27752))

(assert (=> bs!11053 d!27760))

(assert (=> b!110583 d!27762))

(assert (=> b!110583 d!27754))

(declare-fun d!27866 () Bool)

(declare-fun c!26320 () Bool)

(assert (=> d!27866 (= c!26320 ((_ is Node!557) (c!26245 x!31879)))))

(declare-fun e!61856 () Bool)

(assert (=> d!27866 (= (inv!2252 (c!26245 x!31879)) e!61856)))

(declare-fun b!110775 () Bool)

(assert (=> b!110775 (= e!61856 (inv!2256 (c!26245 x!31879)))))

(declare-fun b!110776 () Bool)

(declare-fun e!61857 () Bool)

(assert (=> b!110776 (= e!61856 e!61857)))

(declare-fun res!53443 () Bool)

(assert (=> b!110776 (= res!53443 (not ((_ is Leaf!917) (c!26245 x!31879))))))

(assert (=> b!110776 (=> res!53443 e!61857)))

(declare-fun b!110777 () Bool)

(assert (=> b!110777 (= e!61857 (inv!2257 (c!26245 x!31879)))))

(assert (= (and d!27866 c!26320) b!110775))

(assert (= (and d!27866 (not c!26320)) b!110776))

(assert (= (and b!110776 (not res!53443)) b!110777))

(declare-fun m!101192 () Bool)

(assert (=> b!110775 m!101192))

(declare-fun m!101194 () Bool)

(assert (=> b!110777 m!101194))

(assert (=> b!110582 d!27866))

(assert (=> d!27796 d!27758))

(declare-fun d!27868 () Bool)

(declare-fun lt!32502 () List!1791)

(assert (=> d!27868 (= lt!32502 (++!296 (list!763 (c!26245 x!31880)) (efficientList$default$2!15 (c!26245 x!31880))))))

(declare-fun e!61860 () List!1791)

(assert (=> d!27868 (= lt!32502 e!61860)))

(declare-fun c!26322 () Bool)

(assert (=> d!27868 (= c!26322 ((_ is Empty!557) (c!26245 x!31880)))))

(assert (=> d!27868 (= (efficientList!44 (c!26245 x!31880) (efficientList$default$2!15 (c!26245 x!31880))) lt!32502)))

(declare-fun bm!4795 () Bool)

(declare-fun c!26323 () Bool)

(declare-fun c!26321 () Bool)

(assert (=> bm!4795 (= c!26323 c!26321)))

(declare-fun call!4800 () List!1791)

(declare-fun e!61858 () List!1791)

(declare-fun lt!32505 () List!1791)

(assert (=> bm!4795 (= call!4800 (++!296 e!61858 (ite c!26321 (efficientList$default$2!15 (c!26245 x!31880)) lt!32505)))))

(declare-fun b!110778 () Bool)

(declare-fun e!61859 () List!1791)

(assert (=> b!110778 (= e!61859 call!4800)))

(declare-fun b!110779 () Bool)

(declare-fun lt!32506 () Unit!1270)

(declare-fun lt!32504 () Unit!1270)

(assert (=> b!110779 (= lt!32506 lt!32504)))

(declare-fun lt!32503 () List!1791)

(assert (=> b!110779 (= (++!296 call!4800 (efficientList$default$2!15 (c!26245 x!31880))) (++!296 lt!32503 (++!296 lt!32505 (efficientList$default$2!15 (c!26245 x!31880)))))))

(assert (=> b!110779 (= lt!32504 (lemmaConcatAssociativity!115 lt!32503 lt!32505 (efficientList$default$2!15 (c!26245 x!31880))))))

(assert (=> b!110779 (= lt!32505 (list!763 (right!1844 (c!26245 x!31880))))))

(assert (=> b!110779 (= lt!32503 (list!763 (left!1514 (c!26245 x!31880))))))

(assert (=> b!110779 (= e!61859 (efficientList!44 (left!1514 (c!26245 x!31880)) (efficientList!44 (right!1844 (c!26245 x!31880)) (efficientList$default$2!15 (c!26245 x!31880)))))))

(declare-fun b!110780 () Bool)

(assert (=> b!110780 (= e!61858 lt!32503)))

(declare-fun b!110781 () Bool)

(assert (=> b!110781 (= e!61858 (efficientList!46 (xs!3152 (c!26245 x!31880))))))

(declare-fun b!110782 () Bool)

(assert (=> b!110782 (= e!61860 (efficientList$default$2!15 (c!26245 x!31880)))))

(declare-fun b!110783 () Bool)

(assert (=> b!110783 (= e!61860 e!61859)))

(assert (=> b!110783 (= c!26321 ((_ is Leaf!917) (c!26245 x!31880)))))

(assert (= (and d!27868 c!26322) b!110782))

(assert (= (and d!27868 (not c!26322)) b!110783))

(assert (= (and b!110783 c!26321) b!110778))

(assert (= (and b!110783 (not c!26321)) b!110779))

(assert (= (or b!110778 b!110779) bm!4795))

(assert (= (and bm!4795 c!26323) b!110781))

(assert (= (and bm!4795 (not c!26323)) b!110780))

(assert (=> d!27868 m!100892))

(assert (=> d!27868 m!100892))

(assert (=> d!27868 m!100992))

(declare-fun m!101196 () Bool)

(assert (=> d!27868 m!101196))

(declare-fun m!101198 () Bool)

(assert (=> bm!4795 m!101198))

(assert (=> b!110779 m!100992))

(declare-fun m!101200 () Bool)

(assert (=> b!110779 m!101200))

(assert (=> b!110779 m!100992))

(declare-fun m!101202 () Bool)

(assert (=> b!110779 m!101202))

(declare-fun m!101204 () Bool)

(assert (=> b!110779 m!101204))

(declare-fun m!101206 () Bool)

(assert (=> b!110779 m!101206))

(assert (=> b!110779 m!100976))

(assert (=> b!110779 m!100974))

(assert (=> b!110779 m!100992))

(declare-fun m!101208 () Bool)

(assert (=> b!110779 m!101208))

(assert (=> b!110779 m!100992))

(assert (=> b!110779 m!101204))

(assert (=> b!110779 m!101208))

(declare-fun m!101210 () Bool)

(assert (=> b!110779 m!101210))

(declare-fun m!101212 () Bool)

(assert (=> b!110781 m!101212))

(assert (=> d!27796 d!27868))

(declare-fun d!27870 () Bool)

(assert (=> d!27870 (= (efficientList$default$2!15 (c!26245 x!31880)) Nil!1785)))

(assert (=> d!27796 d!27870))

(declare-fun e!61865 () Bool)

(declare-fun b!110790 () Bool)

(declare-fun tp!59814 () Bool)

(declare-fun tp!59815 () Bool)

(assert (=> b!110790 (= e!61865 (and (inv!2252 (left!1514 (c!26245 x!31881))) tp!59814 (inv!2252 (right!1844 (c!26245 x!31881))) tp!59815))))

(declare-fun b!110791 () Bool)

(declare-fun inv!2259 (IArray!1115) Bool)

(assert (=> b!110791 (= e!61865 (inv!2259 (xs!3152 (c!26245 x!31881))))))

(assert (=> b!110585 (= tp!59798 (and (inv!2252 (c!26245 x!31881)) e!61865))))

(assert (= (and b!110585 ((_ is Node!557) (c!26245 x!31881))) b!110790))

(assert (= (and b!110585 ((_ is Leaf!917) (c!26245 x!31881))) b!110791))

(declare-fun m!101214 () Bool)

(assert (=> b!110790 m!101214))

(declare-fun m!101216 () Bool)

(assert (=> b!110790 m!101216))

(declare-fun m!101218 () Bool)

(assert (=> b!110791 m!101218))

(assert (=> b!110585 m!100860))

(declare-fun e!61867 () Bool)

(declare-fun tp!59816 () Bool)

(declare-fun tp!59817 () Bool)

(declare-fun b!110792 () Bool)

(assert (=> b!110792 (= e!61867 (and (inv!2252 (left!1514 (c!26245 x!31880))) tp!59816 (inv!2252 (right!1844 (c!26245 x!31880))) tp!59817))))

(declare-fun b!110793 () Bool)

(assert (=> b!110793 (= e!61867 (inv!2259 (xs!3152 (c!26245 x!31880))))))

(assert (=> b!110584 (= tp!59799 (and (inv!2252 (c!26245 x!31880)) e!61867))))

(assert (= (and b!110584 ((_ is Node!557) (c!26245 x!31880))) b!110792))

(assert (= (and b!110584 ((_ is Leaf!917) (c!26245 x!31880))) b!110793))

(declare-fun m!101220 () Bool)

(assert (=> b!110792 m!101220))

(declare-fun m!101222 () Bool)

(assert (=> b!110792 m!101222))

(declare-fun m!101224 () Bool)

(assert (=> b!110793 m!101224))

(assert (=> b!110584 m!100858))

(declare-fun tp!59818 () Bool)

(declare-fun b!110794 () Bool)

(declare-fun tp!59819 () Bool)

(declare-fun e!61869 () Bool)

(assert (=> b!110794 (= e!61869 (and (inv!2252 (left!1514 (c!26245 x!31879))) tp!59818 (inv!2252 (right!1844 (c!26245 x!31879))) tp!59819))))

(declare-fun b!110795 () Bool)

(assert (=> b!110795 (= e!61869 (inv!2259 (xs!3152 (c!26245 x!31879))))))

(assert (=> b!110582 (= tp!59797 (and (inv!2252 (c!26245 x!31879)) e!61869))))

(assert (= (and b!110582 ((_ is Node!557) (c!26245 x!31879))) b!110794))

(assert (= (and b!110582 ((_ is Leaf!917) (c!26245 x!31879))) b!110795))

(declare-fun m!101226 () Bool)

(assert (=> b!110794 m!101226))

(declare-fun m!101228 () Bool)

(assert (=> b!110794 m!101228))

(declare-fun m!101230 () Bool)

(assert (=> b!110795 m!101230))

(assert (=> b!110582 m!100834))

(check-sat (not b!110697) (not b!110769) (not d!27842) (not d!27820) (not d!27836) (not bm!4790) (not b!110777) (not b!110585) (not b!110781) (not b!110637) (not b!110790) (not d!27834) (not b!110641) (not b!110711) (not b!110795) (not b!110772) (not b!110794) (not b!110660) (not bm!4795) (not b!110648) (not b!110645) (not bm!4794) (not b!110699) (not bm!4789) (not b!110774) (not b!110754) (not b!110792) (not b!110775) (not b!110644) (not b!110649) (not b!110752) (not b!110584) (not b!110582) (not b!110636) (not d!27832) (not b!110793) (not b!110771) (not b!110709) (not d!27830) (not d!27868) (not b!110791) (not d!27816) (not d!27858) (not b!110640) (not b!110779) (not d!27806))
(check-sat)
