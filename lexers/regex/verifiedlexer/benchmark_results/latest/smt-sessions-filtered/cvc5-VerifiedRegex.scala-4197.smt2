; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!227932 () Bool)

(assert start!227932)

(assert (=> start!227932 true))

(declare-fun b!2311552 () Bool)

(assert (=> b!2311552 true))

(assert (=> b!2311552 true))

(declare-fun b!2311553 () Bool)

(assert (=> b!2311553 true))

(declare-fun b!2311562 () Bool)

(declare-fun e!1481414 () Bool)

(declare-datatypes ((List!27614 0))(
  ( (Nil!27516) (Cons!27516 (h!32917 (_ BitVec 16)) (t!207140 List!27614)) )
))
(declare-datatypes ((IArray!17973 0))(
  ( (IArray!17974 (innerList!9044 List!27614)) )
))
(declare-datatypes ((Conc!8984 0))(
  ( (Node!8984 (left!20859 Conc!8984) (right!21189 Conc!8984) (csize!18198 Int) (cheight!9195 Int)) (Leaf!13182 (xs!11926 IArray!17973) (csize!18199 Int)) (Empty!8984) )
))
(declare-datatypes ((BalanceConc!17700 0))(
  ( (BalanceConc!17701 (c!366499 Conc!8984)) )
))
(declare-fun x!440862 () BalanceConc!17700)

(declare-fun tp!733398 () Bool)

(declare-fun inv!37200 (Conc!8984) Bool)

(assert (=> b!2311562 (= e!1481414 (and (inv!37200 (c!366499 x!440862)) tp!733398))))

(declare-fun inst!1318 () Bool)

(declare-datatypes ((IntegerValueInjection!120 0))(
  ( (IntegerValueInjection!121) )
))
(declare-fun thiss!2978 () IntegerValueInjection!120)

(declare-fun inv!37201 (BalanceConc!17700) Bool)

(declare-fun list!10886 (BalanceConc!17700) List!27614)

(declare-datatypes ((TokenValue!4580 0))(
  ( (FloatLiteralValue!9160 (text!32505 List!27614)) (TokenValueExt!4579 (__x!18216 Int)) (Broken!22900 (value!139725 List!27614)) (Object!4677) (End!4580) (Def!4580) (Underscore!4580) (Match!4580) (Else!4580) (Error!4580) (Case!4580) (If!4580) (Extends!4580) (Abstract!4580) (Class!4580) (Val!4580) (DelimiterValue!9160 (del!4640 List!27614)) (KeywordValue!4586 (value!139726 List!27614)) (CommentValue!9160 (value!139727 List!27614)) (WhitespaceValue!9160 (value!139728 List!27614)) (IndentationValue!4580 (value!139729 List!27614)) (String!30009) (Int32!4580) (Broken!22901 (value!139730 List!27614)) (Boolean!4581) (Unit!40440) (OperatorValue!4583 (op!4640 List!27614)) (IdentifierValue!9160 (value!139731 List!27614)) (IdentifierValue!9161 (value!139732 List!27614)) (WhitespaceValue!9161 (value!139733 List!27614)) (True!9160) (False!9160) (Broken!22902 (value!139734 List!27614)) (Broken!22903 (value!139735 List!27614)) (True!9161) (RightBrace!4580) (RightBracket!4580) (Colon!4580) (Null!4580) (Comma!4580) (LeftBracket!4580) (False!9161) (LeftBrace!4580) (ImaginaryLiteralValue!4580 (text!32506 List!27614)) (StringLiteralValue!13740 (value!139736 List!27614)) (EOFValue!4580 (value!139737 List!27614)) (IdentValue!4580 (value!139738 List!27614)) (DelimiterValue!9161 (value!139739 List!27614)) (DedentValue!4580 (value!139740 List!27614)) (NewLineValue!4580 (value!139741 List!27614)) (IntegerValue!13740 (value!139742 (_ BitVec 32)) (text!32507 List!27614)) (IntegerValue!13741 (value!139743 Int) (text!32508 List!27614)) (Times!4580) (Or!4580) (Equal!4580) (Minus!4580) (Broken!22904 (value!139744 List!27614)) (And!4580) (Div!4580) (LessEqual!4580) (Mod!4580) (Concat!11344) (Not!4580) (Plus!4580) (SpaceValue!4580 (value!139745 List!27614)) (IntegerValue!13742 (value!139746 Int) (text!32509 List!27614)) (StringLiteralValue!13741 (text!32510 List!27614)) (FloatLiteralValue!9161 (text!32511 List!27614)) (BytesLiteralValue!4580 (value!139747 List!27614)) (CommentValue!9161 (value!139748 List!27614)) (StringLiteralValue!13742 (value!139749 List!27614)) (ErrorTokenValue!4580 (msg!4641 List!27614)) )
))
(declare-fun toCharacters!0 (IntegerValueInjection!120 TokenValue!4580) BalanceConc!17700)

(declare-fun toValue!7 (IntegerValueInjection!120 BalanceConc!17700) TokenValue!4580)

(assert (=> start!227932 (= inst!1318 (=> (and (inv!37201 x!440862) e!1481414) (= (list!10886 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862))) (list!10886 x!440862))))))

(assert (= start!227932 b!2311562))

(declare-fun m!2738879 () Bool)

(assert (=> b!2311562 m!2738879))

(declare-fun m!2738881 () Bool)

(assert (=> start!227932 m!2738881))

(declare-fun m!2738883 () Bool)

(assert (=> start!227932 m!2738883))

(assert (=> start!227932 m!2738883))

(declare-fun m!2738885 () Bool)

(assert (=> start!227932 m!2738885))

(declare-fun m!2738887 () Bool)

(assert (=> start!227932 m!2738887))

(declare-fun m!2738889 () Bool)

(assert (=> start!227932 m!2738889))

(assert (=> start!227932 m!2738881))

(declare-fun res!988183 () Bool)

(declare-fun e!1481416 () Bool)

(assert (=> b!2311553 (=> res!988183 e!1481416)))

(declare-fun x!440863 () BalanceConc!17700)

(declare-fun x!440864 () BalanceConc!17700)

(assert (=> b!2311553 (= res!988183 (not (= (list!10886 x!440863) (list!10886 x!440864))))))

(declare-fun e!1481415 () Bool)

(declare-fun e!1481417 () Bool)

(declare-fun inst!1319 () Bool)

(assert (=> b!2311553 (= inst!1319 (=> (and (inv!37201 x!440863) e!1481417 (inv!37201 x!440864) e!1481415) e!1481416))))

(declare-fun b!2311563 () Bool)

(assert (=> b!2311563 (= e!1481416 (= (toValue!7 thiss!2978 x!440863) (toValue!7 thiss!2978 x!440864)))))

(declare-fun b!2311564 () Bool)

(declare-fun tp!733400 () Bool)

(assert (=> b!2311564 (= e!1481417 (and (inv!37200 (c!366499 x!440863)) tp!733400))))

(declare-fun b!2311565 () Bool)

(declare-fun tp!733399 () Bool)

(assert (=> b!2311565 (= e!1481415 (and (inv!37200 (c!366499 x!440864)) tp!733399))))

(assert (= (and b!2311553 (not res!988183)) b!2311563))

(assert (= b!2311553 b!2311564))

(assert (= b!2311553 b!2311565))

(declare-fun m!2738891 () Bool)

(assert (=> b!2311553 m!2738891))

(declare-fun m!2738893 () Bool)

(assert (=> b!2311553 m!2738893))

(declare-fun m!2738895 () Bool)

(assert (=> b!2311553 m!2738895))

(declare-fun m!2738897 () Bool)

(assert (=> b!2311553 m!2738897))

(declare-fun m!2738899 () Bool)

(assert (=> b!2311563 m!2738899))

(declare-fun m!2738901 () Bool)

(assert (=> b!2311563 m!2738901))

(declare-fun m!2738903 () Bool)

(assert (=> b!2311564 m!2738903))

(declare-fun m!2738905 () Bool)

(assert (=> b!2311565 m!2738905))

(declare-fun bs!458320 () Bool)

(declare-fun neg-inst!1319 () Bool)

(declare-fun s!224735 () Bool)

(assert (= bs!458320 (and neg-inst!1319 s!224735)))

(assert (=> bs!458320 (=> true (= (list!10886 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862))) (list!10886 x!440862)))))

(assert (=> m!2738889 m!2738881))

(assert (=> m!2738889 m!2738883))

(assert (=> m!2738889 m!2738885))

(assert (=> m!2738889 s!224735))

(assert (=> m!2738881 s!224735))

(declare-fun bs!458321 () Bool)

(assert (= bs!458321 (and neg-inst!1319 start!227932)))

(assert (=> bs!458321 (= true inst!1318)))

(declare-fun bs!458322 () Bool)

(declare-fun neg-inst!1318 () Bool)

(declare-fun s!224737 () Bool)

(assert (= bs!458322 (and neg-inst!1318 s!224737)))

(declare-fun res!988184 () Bool)

(declare-fun e!1481418 () Bool)

(assert (=> bs!458322 (=> res!988184 e!1481418)))

(assert (=> bs!458322 (= res!988184 (not (= (list!10886 x!440864) (list!10886 x!440864))))))

(assert (=> bs!458322 (=> true e!1481418)))

(declare-fun b!2311566 () Bool)

(assert (=> b!2311566 (= e!1481418 (= (toValue!7 thiss!2978 x!440864) (toValue!7 thiss!2978 x!440864)))))

(assert (= (and bs!458322 (not res!988184)) b!2311566))

(assert (=> m!2738901 m!2738893))

(assert (=> m!2738901 m!2738893))

(assert (=> m!2738901 s!224737))

(assert (=> m!2738901 s!224737))

(declare-fun bs!458323 () Bool)

(declare-fun s!224739 () Bool)

(assert (= bs!458323 (and neg-inst!1318 s!224739)))

(declare-fun res!988185 () Bool)

(declare-fun e!1481419 () Bool)

(assert (=> bs!458323 (=> res!988185 e!1481419)))

(assert (=> bs!458323 (= res!988185 (not (= (list!10886 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862))) (list!10886 x!440864))))))

(assert (=> bs!458323 (=> true e!1481419)))

(declare-fun b!2311567 () Bool)

(assert (=> b!2311567 (= e!1481419 (= (toValue!7 thiss!2978 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862))) (toValue!7 thiss!2978 x!440864)))))

(assert (= (and bs!458323 (not res!988185)) b!2311567))

(declare-fun bs!458324 () Bool)

(assert (= bs!458324 (and m!2738885 m!2738901)))

(assert (=> bs!458324 m!2738885))

(assert (=> bs!458324 m!2738893))

(assert (=> bs!458324 s!224739))

(declare-fun bs!458325 () Bool)

(declare-fun s!224741 () Bool)

(assert (= bs!458325 (and neg-inst!1318 s!224741)))

(declare-fun res!988186 () Bool)

(declare-fun e!1481420 () Bool)

(assert (=> bs!458325 (=> res!988186 e!1481420)))

(assert (=> bs!458325 (= res!988186 (not (= (list!10886 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862))) (list!10886 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862))))))))

(assert (=> bs!458325 (=> true e!1481420)))

(declare-fun b!2311568 () Bool)

(assert (=> b!2311568 (= e!1481420 (= (toValue!7 thiss!2978 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862))) (toValue!7 thiss!2978 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862)))))))

(assert (= (and bs!458325 (not res!988186)) b!2311568))

(assert (=> m!2738885 s!224741))

(declare-fun bs!458326 () Bool)

(declare-fun s!224743 () Bool)

(assert (= bs!458326 (and neg-inst!1318 s!224743)))

(declare-fun res!988187 () Bool)

(declare-fun e!1481421 () Bool)

(assert (=> bs!458326 (=> res!988187 e!1481421)))

(assert (=> bs!458326 (= res!988187 (not (= (list!10886 x!440864) (list!10886 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862))))))))

(assert (=> bs!458326 (=> true e!1481421)))

(declare-fun b!2311569 () Bool)

(assert (=> b!2311569 (= e!1481421 (= (toValue!7 thiss!2978 x!440864) (toValue!7 thiss!2978 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862)))))))

(assert (= (and bs!458326 (not res!988187)) b!2311569))

(assert (=> bs!458324 m!2738893))

(assert (=> bs!458324 m!2738885))

(assert (=> bs!458324 s!224743))

(assert (=> m!2738885 s!224741))

(declare-fun bs!458327 () Bool)

(declare-fun s!224745 () Bool)

(assert (= bs!458327 (and neg-inst!1318 s!224745)))

(declare-fun res!988188 () Bool)

(declare-fun e!1481422 () Bool)

(assert (=> bs!458327 (=> res!988188 e!1481422)))

(assert (=> bs!458327 (= res!988188 (not (= (list!10886 x!440862) (list!10886 x!440864))))))

(assert (=> bs!458327 (=> true e!1481422)))

(declare-fun b!2311570 () Bool)

(assert (=> b!2311570 (= e!1481422 (= (toValue!7 thiss!2978 x!440862) (toValue!7 thiss!2978 x!440864)))))

(assert (= (and bs!458327 (not res!988188)) b!2311570))

(declare-fun bs!458328 () Bool)

(assert (= bs!458328 (and m!2738889 m!2738901)))

(assert (=> bs!458328 m!2738889))

(assert (=> bs!458328 m!2738893))

(assert (=> bs!458328 s!224745))

(declare-fun bs!458329 () Bool)

(declare-fun s!224747 () Bool)

(assert (= bs!458329 (and neg-inst!1318 s!224747)))

(declare-fun res!988189 () Bool)

(declare-fun e!1481423 () Bool)

(assert (=> bs!458329 (=> res!988189 e!1481423)))

(assert (=> bs!458329 (= res!988189 (not (= (list!10886 x!440862) (list!10886 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862))))))))

(assert (=> bs!458329 (=> true e!1481423)))

(declare-fun b!2311571 () Bool)

(assert (=> b!2311571 (= e!1481423 (= (toValue!7 thiss!2978 x!440862) (toValue!7 thiss!2978 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862)))))))

(assert (= (and bs!458329 (not res!988189)) b!2311571))

(declare-fun bs!458330 () Bool)

(assert (= bs!458330 (and m!2738889 m!2738885)))

(assert (=> bs!458330 m!2738889))

(assert (=> bs!458330 m!2738885))

(assert (=> bs!458330 s!224747))

(declare-fun bs!458331 () Bool)

(declare-fun s!224749 () Bool)

(assert (= bs!458331 (and neg-inst!1318 s!224749)))

(declare-fun res!988190 () Bool)

(declare-fun e!1481424 () Bool)

(assert (=> bs!458331 (=> res!988190 e!1481424)))

(assert (=> bs!458331 (= res!988190 (not (= (list!10886 x!440862) (list!10886 x!440862))))))

(assert (=> bs!458331 (=> true e!1481424)))

(declare-fun b!2311572 () Bool)

(assert (=> b!2311572 (= e!1481424 (= (toValue!7 thiss!2978 x!440862) (toValue!7 thiss!2978 x!440862)))))

(assert (= (and bs!458331 (not res!988190)) b!2311572))

(assert (=> m!2738889 s!224749))

(declare-fun bs!458332 () Bool)

(declare-fun s!224751 () Bool)

(assert (= bs!458332 (and neg-inst!1318 s!224751)))

(declare-fun res!988191 () Bool)

(declare-fun e!1481425 () Bool)

(assert (=> bs!458332 (=> res!988191 e!1481425)))

(assert (=> bs!458332 (= res!988191 (not (= (list!10886 x!440864) (list!10886 x!440862))))))

(assert (=> bs!458332 (=> true e!1481425)))

(declare-fun b!2311573 () Bool)

(assert (=> b!2311573 (= e!1481425 (= (toValue!7 thiss!2978 x!440864) (toValue!7 thiss!2978 x!440862)))))

(assert (= (and bs!458332 (not res!988191)) b!2311573))

(assert (=> bs!458328 m!2738893))

(assert (=> bs!458328 m!2738889))

(assert (=> bs!458328 s!224751))

(declare-fun bs!458333 () Bool)

(declare-fun s!224753 () Bool)

(assert (= bs!458333 (and neg-inst!1318 s!224753)))

(declare-fun res!988192 () Bool)

(declare-fun e!1481426 () Bool)

(assert (=> bs!458333 (=> res!988192 e!1481426)))

(assert (=> bs!458333 (= res!988192 (not (= (list!10886 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862))) (list!10886 x!440862))))))

(assert (=> bs!458333 (=> true e!1481426)))

(declare-fun b!2311574 () Bool)

(assert (=> b!2311574 (= e!1481426 (= (toValue!7 thiss!2978 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862))) (toValue!7 thiss!2978 x!440862)))))

(assert (= (and bs!458333 (not res!988192)) b!2311574))

(assert (=> bs!458330 m!2738885))

(assert (=> bs!458330 m!2738889))

(assert (=> bs!458330 s!224753))

(assert (=> m!2738889 s!224749))

(declare-fun bs!458334 () Bool)

(assert (= bs!458334 (and m!2738893 m!2738901)))

(assert (=> bs!458334 s!224737))

(declare-fun bs!458335 () Bool)

(assert (= bs!458335 (and m!2738893 m!2738885)))

(assert (=> bs!458335 s!224743))

(declare-fun bs!458336 () Bool)

(assert (= bs!458336 (and m!2738893 m!2738889)))

(assert (=> bs!458336 s!224751))

(assert (=> m!2738893 s!224737))

(assert (=> bs!458334 s!224737))

(assert (=> bs!458335 s!224739))

(assert (=> bs!458336 s!224745))

(assert (=> m!2738893 s!224737))

(declare-fun bs!458337 () Bool)

(declare-fun s!224755 () Bool)

(assert (= bs!458337 (and neg-inst!1318 s!224755)))

(declare-fun res!988193 () Bool)

(declare-fun e!1481427 () Bool)

(assert (=> bs!458337 (=> res!988193 e!1481427)))

(assert (=> bs!458337 (= res!988193 (not (= (list!10886 x!440863) (list!10886 x!440864))))))

(assert (=> bs!458337 (=> true e!1481427)))

(declare-fun b!2311575 () Bool)

(assert (=> b!2311575 (= e!1481427 (= (toValue!7 thiss!2978 x!440863) (toValue!7 thiss!2978 x!440864)))))

(assert (= (and bs!458337 (not res!988193)) b!2311575))

(declare-fun bs!458338 () Bool)

(assert (= bs!458338 (and m!2738899 m!2738901 m!2738893)))

(assert (=> bs!458338 m!2738891))

(assert (=> bs!458338 m!2738893))

(assert (=> bs!458338 s!224755))

(declare-fun bs!458339 () Bool)

(declare-fun s!224757 () Bool)

(assert (= bs!458339 (and neg-inst!1318 s!224757)))

(declare-fun res!988194 () Bool)

(declare-fun e!1481428 () Bool)

(assert (=> bs!458339 (=> res!988194 e!1481428)))

(assert (=> bs!458339 (= res!988194 (not (= (list!10886 x!440863) (list!10886 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862))))))))

(assert (=> bs!458339 (=> true e!1481428)))

(declare-fun b!2311576 () Bool)

(assert (=> b!2311576 (= e!1481428 (= (toValue!7 thiss!2978 x!440863) (toValue!7 thiss!2978 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862)))))))

(assert (= (and bs!458339 (not res!988194)) b!2311576))

(declare-fun bs!458340 () Bool)

(assert (= bs!458340 (and m!2738899 m!2738885)))

(assert (=> bs!458340 m!2738891))

(assert (=> bs!458340 m!2738885))

(assert (=> bs!458340 s!224757))

(declare-fun bs!458341 () Bool)

(declare-fun s!224759 () Bool)

(assert (= bs!458341 (and neg-inst!1318 s!224759)))

(declare-fun res!988195 () Bool)

(declare-fun e!1481429 () Bool)

(assert (=> bs!458341 (=> res!988195 e!1481429)))

(assert (=> bs!458341 (= res!988195 (not (= (list!10886 x!440863) (list!10886 x!440862))))))

(assert (=> bs!458341 (=> true e!1481429)))

(declare-fun b!2311577 () Bool)

(assert (=> b!2311577 (= e!1481429 (= (toValue!7 thiss!2978 x!440863) (toValue!7 thiss!2978 x!440862)))))

(assert (= (and bs!458341 (not res!988195)) b!2311577))

(declare-fun bs!458342 () Bool)

(assert (= bs!458342 (and m!2738899 m!2738889)))

(assert (=> bs!458342 m!2738891))

(assert (=> bs!458342 m!2738889))

(assert (=> bs!458342 s!224759))

(declare-fun bs!458343 () Bool)

(declare-fun s!224761 () Bool)

(assert (= bs!458343 (and neg-inst!1318 s!224761)))

(declare-fun res!988196 () Bool)

(declare-fun e!1481430 () Bool)

(assert (=> bs!458343 (=> res!988196 e!1481430)))

(assert (=> bs!458343 (= res!988196 (not (= (list!10886 x!440863) (list!10886 x!440863))))))

(assert (=> bs!458343 (=> true e!1481430)))

(declare-fun b!2311578 () Bool)

(assert (=> b!2311578 (= e!1481430 (= (toValue!7 thiss!2978 x!440863) (toValue!7 thiss!2978 x!440863)))))

(assert (= (and bs!458343 (not res!988196)) b!2311578))

(assert (=> m!2738899 m!2738891))

(assert (=> m!2738899 m!2738891))

(assert (=> m!2738899 s!224761))

(declare-fun bs!458344 () Bool)

(declare-fun s!224763 () Bool)

(assert (= bs!458344 (and neg-inst!1318 s!224763)))

(declare-fun res!988197 () Bool)

(declare-fun e!1481431 () Bool)

(assert (=> bs!458344 (=> res!988197 e!1481431)))

(assert (=> bs!458344 (= res!988197 (not (= (list!10886 x!440864) (list!10886 x!440863))))))

(assert (=> bs!458344 (=> true e!1481431)))

(declare-fun b!2311579 () Bool)

(assert (=> b!2311579 (= e!1481431 (= (toValue!7 thiss!2978 x!440864) (toValue!7 thiss!2978 x!440863)))))

(assert (= (and bs!458344 (not res!988197)) b!2311579))

(assert (=> bs!458338 m!2738893))

(assert (=> bs!458338 m!2738891))

(assert (=> bs!458338 s!224763))

(declare-fun bs!458345 () Bool)

(declare-fun s!224765 () Bool)

(assert (= bs!458345 (and neg-inst!1318 s!224765)))

(declare-fun res!988198 () Bool)

(declare-fun e!1481432 () Bool)

(assert (=> bs!458345 (=> res!988198 e!1481432)))

(assert (=> bs!458345 (= res!988198 (not (= (list!10886 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862))) (list!10886 x!440863))))))

(assert (=> bs!458345 (=> true e!1481432)))

(declare-fun b!2311580 () Bool)

(assert (=> b!2311580 (= e!1481432 (= (toValue!7 thiss!2978 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862))) (toValue!7 thiss!2978 x!440863)))))

(assert (= (and bs!458345 (not res!988198)) b!2311580))

(assert (=> bs!458340 m!2738885))

(assert (=> bs!458340 m!2738891))

(assert (=> bs!458340 s!224765))

(declare-fun bs!458346 () Bool)

(declare-fun s!224767 () Bool)

(assert (= bs!458346 (and neg-inst!1318 s!224767)))

(declare-fun res!988199 () Bool)

(declare-fun e!1481433 () Bool)

(assert (=> bs!458346 (=> res!988199 e!1481433)))

(assert (=> bs!458346 (= res!988199 (not (= (list!10886 x!440862) (list!10886 x!440863))))))

(assert (=> bs!458346 (=> true e!1481433)))

(declare-fun b!2311581 () Bool)

(assert (=> b!2311581 (= e!1481433 (= (toValue!7 thiss!2978 x!440862) (toValue!7 thiss!2978 x!440863)))))

(assert (= (and bs!458346 (not res!988199)) b!2311581))

(assert (=> bs!458342 m!2738889))

(assert (=> bs!458342 m!2738891))

(assert (=> bs!458342 s!224767))

(assert (=> m!2738899 s!224761))

(declare-fun bs!458347 () Bool)

(assert (= bs!458347 (and m!2738891 m!2738889)))

(assert (=> bs!458347 s!224759))

(assert (=> m!2738891 s!224761))

(declare-fun bs!458348 () Bool)

(assert (= bs!458348 (and m!2738891 m!2738901 m!2738893)))

(assert (=> bs!458348 s!224755))

(declare-fun bs!458349 () Bool)

(assert (= bs!458349 (and m!2738891 m!2738885)))

(assert (=> bs!458349 s!224757))

(declare-fun bs!458350 () Bool)

(assert (= bs!458350 (and m!2738891 m!2738899)))

(assert (=> bs!458350 s!224761))

(assert (=> bs!458347 s!224767))

(assert (=> m!2738891 s!224761))

(assert (=> bs!458348 s!224763))

(assert (=> bs!458350 s!224761))

(assert (=> bs!458349 s!224765))

(declare-fun bs!458351 () Bool)

(assert (= bs!458351 (and m!2738881 m!2738889)))

(assert (=> bs!458351 s!224749))

(declare-fun bs!458352 () Bool)

(assert (= bs!458352 (and m!2738881 m!2738899 m!2738891)))

(assert (=> bs!458352 s!224767))

(declare-fun bs!458353 () Bool)

(assert (= bs!458353 (and m!2738881 m!2738901 m!2738893)))

(assert (=> bs!458353 s!224745))

(declare-fun bs!458354 () Bool)

(assert (= bs!458354 (and m!2738881 m!2738885)))

(assert (=> bs!458354 s!224747))

(assert (=> m!2738881 s!224749))

(assert (=> bs!458351 s!224749))

(assert (=> bs!458354 s!224753))

(assert (=> m!2738881 s!224749))

(assert (=> bs!458353 s!224751))

(assert (=> bs!458352 s!224759))

(declare-fun bs!458355 () Bool)

(assert (= bs!458355 (and neg-inst!1318 b!2311553)))

(assert (=> bs!458355 (= true inst!1319)))

(declare-fun res!988181 () Bool)

(declare-fun e!1481412 () Bool)

(assert (=> start!227932 (=> res!988181 e!1481412)))

(declare-fun lambda!86142 () Int)

(declare-fun Forall!1110 (Int) Bool)

(assert (=> start!227932 (= res!988181 (not (Forall!1110 lambda!86142)))))

(assert (=> start!227932 (= (Forall!1110 lambda!86142) inst!1318)))

(assert (=> start!227932 (not e!1481412)))

(assert (=> start!227932 true))

(declare-fun e!1481413 () Bool)

(assert (=> b!2311552 (= e!1481412 e!1481413)))

(declare-fun res!988182 () Bool)

(assert (=> b!2311552 (=> res!988182 e!1481413)))

(declare-fun lambda!86143 () Int)

(declare-fun lambda!86144 () Int)

(declare-fun semiInverseModEq!1801 (Int Int) Bool)

(assert (=> b!2311552 (= res!988182 (not (semiInverseModEq!1801 lambda!86143 lambda!86144)))))

(assert (=> b!2311552 (= (semiInverseModEq!1801 lambda!86143 lambda!86144) (Forall!1110 lambda!86142))))

(declare-fun lambda!86145 () Int)

(declare-fun Forall2!723 (Int) Bool)

(assert (=> b!2311553 (= e!1481413 (Forall2!723 lambda!86145))))

(assert (=> b!2311553 (= (Forall2!723 lambda!86145) inst!1319)))

(assert (= neg-inst!1319 inst!1318))

(assert (= (and start!227932 (not res!988181)) b!2311552))

(assert (= (and b!2311552 (not res!988182)) b!2311553))

(assert (= neg-inst!1318 inst!1319))

(declare-fun m!2738907 () Bool)

(assert (=> start!227932 m!2738907))

(assert (=> start!227932 m!2738907))

(declare-fun m!2738909 () Bool)

(assert (=> b!2311552 m!2738909))

(assert (=> b!2311552 m!2738909))

(assert (=> b!2311552 m!2738907))

(declare-fun m!2738911 () Bool)

(assert (=> b!2311553 m!2738911))

(assert (=> b!2311553 m!2738911))

(push 1)

(assert (not bs!458344))

(assert (not bs!458343))

(assert (not b!2311563))

(assert (not b!2311553))

(assert (not b!2311580))

(assert (not b!2311569))

(assert (not b!2311577))

(assert (not bs!458320))

(assert (not b!2311566))

(assert (not b!2311581))

(assert (not b!2311572))

(assert (not bs!458345))

(assert (not bs!458333))

(assert (not bs!458339))

(assert (not bs!458327))

(assert (not b!2311576))

(assert (not b!2311562))

(assert (not b!2311564))

(assert (not b!2311575))

(assert (not bs!458332))

(assert (not bs!458329))

(assert (not b!2311574))

(assert (not b!2311568))

(assert (not bs!458341))

(assert (not bs!458337))

(assert (not bs!458326))

(assert (not bs!458323))

(assert (not b!2311578))

(assert (not start!227932))

(assert (not bs!458322))

(assert (not bs!458346))

(assert (not b!2311567))

(assert (not b!2311571))

(assert (not b!2311579))

(assert (not bs!458331))

(assert (not b!2311565))

(assert (not b!2311552))

(assert (not b!2311570))

(assert (not bs!458325))

(assert (not b!2311573))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!683910 () Bool)

(declare-fun list!10888 (Conc!8984) List!27614)

(assert (=> d!683910 (= (list!10886 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862))) (list!10888 (c!366499 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862)))))))

(declare-fun bs!458390 () Bool)

(assert (= bs!458390 d!683910))

(declare-fun m!2738947 () Bool)

(assert (=> bs!458390 m!2738947))

(assert (=> bs!458345 d!683910))

(declare-fun d!683912 () Bool)

(assert (=> d!683912 (= (list!10886 x!440863) (list!10888 (c!366499 x!440863)))))

(declare-fun bs!458391 () Bool)

(assert (= bs!458391 d!683912))

(declare-fun m!2738949 () Bool)

(assert (=> bs!458391 m!2738949))

(assert (=> bs!458345 d!683912))

(assert (=> bs!458333 d!683910))

(declare-fun d!683914 () Bool)

(assert (=> d!683914 (= (list!10886 x!440862) (list!10888 (c!366499 x!440862)))))

(declare-fun bs!458392 () Bool)

(assert (= bs!458392 d!683914))

(declare-fun m!2738951 () Bool)

(assert (=> bs!458392 m!2738951))

(assert (=> bs!458333 d!683914))

(declare-fun d!683916 () Bool)

(declare-fun lt!857505 () List!27614)

(declare-fun efficientList!312 (BalanceConc!17700) List!27614)

(assert (=> d!683916 (= lt!857505 (efficientList!312 x!440862))))

(declare-fun charsToBigInt!0 (List!27614 Int) Int)

(assert (=> d!683916 (= (toValue!7 thiss!2978 x!440862) (IntegerValue!13742 (charsToBigInt!0 lt!857505 0) lt!857505))))

(declare-fun bs!458393 () Bool)

(assert (= bs!458393 d!683916))

(declare-fun m!2738953 () Bool)

(assert (=> bs!458393 m!2738953))

(declare-fun m!2738955 () Bool)

(assert (=> bs!458393 m!2738955))

(assert (=> b!2311570 d!683916))

(declare-fun d!683920 () Bool)

(declare-fun lt!857506 () List!27614)

(assert (=> d!683920 (= lt!857506 (efficientList!312 x!440864))))

(assert (=> d!683920 (= (toValue!7 thiss!2978 x!440864) (IntegerValue!13742 (charsToBigInt!0 lt!857506 0) lt!857506))))

(declare-fun bs!458394 () Bool)

(assert (= bs!458394 d!683920))

(declare-fun m!2738958 () Bool)

(assert (=> bs!458394 m!2738958))

(declare-fun m!2738961 () Bool)

(assert (=> bs!458394 m!2738961))

(assert (=> b!2311570 d!683920))

(assert (=> bs!458329 d!683914))

(assert (=> bs!458329 d!683910))

(declare-fun d!683922 () Bool)

(declare-fun lt!857507 () List!27614)

(assert (=> d!683922 (= lt!857507 (efficientList!312 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862))))))

(assert (=> d!683922 (= (toValue!7 thiss!2978 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862))) (IntegerValue!13742 (charsToBigInt!0 lt!857507 0) lt!857507))))

(declare-fun bs!458396 () Bool)

(assert (= bs!458396 d!683922))

(assert (=> bs!458396 m!2738883))

(declare-fun m!2738963 () Bool)

(assert (=> bs!458396 m!2738963))

(declare-fun m!2738965 () Bool)

(assert (=> bs!458396 m!2738965))

(assert (=> b!2311580 d!683922))

(declare-fun d!683926 () Bool)

(declare-fun lt!857508 () List!27614)

(assert (=> d!683926 (= lt!857508 (efficientList!312 x!440863))))

(assert (=> d!683926 (= (toValue!7 thiss!2978 x!440863) (IntegerValue!13742 (charsToBigInt!0 lt!857508 0) lt!857508))))

(declare-fun bs!458397 () Bool)

(assert (= bs!458397 d!683926))

(declare-fun m!2738967 () Bool)

(assert (=> bs!458397 m!2738967))

(declare-fun m!2738971 () Bool)

(assert (=> bs!458397 m!2738971))

(assert (=> b!2311580 d!683926))

(assert (=> b!2311574 d!683922))

(assert (=> b!2311574 d!683916))

(assert (=> b!2311567 d!683922))

(assert (=> b!2311567 d!683920))

(assert (=> bs!458341 d!683912))

(assert (=> bs!458341 d!683914))

(assert (=> b!2311577 d!683926))

(assert (=> b!2311577 d!683916))

(assert (=> bs!458325 d!683910))

(assert (=> b!2311571 d!683916))

(assert (=> b!2311571 d!683922))

(assert (=> bs!458346 d!683914))

(assert (=> bs!458346 d!683912))

(assert (=> b!2311568 d!683922))

(assert (=> b!2311581 d!683916))

(assert (=> b!2311581 d!683926))

(declare-fun d!683930 () Bool)

(assert (=> d!683930 (= (list!10886 x!440864) (list!10888 (c!366499 x!440864)))))

(declare-fun bs!458399 () Bool)

(assert (= bs!458399 d!683930))

(declare-fun m!2738973 () Bool)

(assert (=> bs!458399 m!2738973))

(assert (=> bs!458326 d!683930))

(assert (=> bs!458326 d!683910))

(assert (=> bs!458337 d!683912))

(assert (=> bs!458337 d!683930))

(assert (=> bs!458343 d!683912))

(assert (=> bs!458331 d!683914))

(assert (=> bs!458322 d!683930))

(assert (=> b!2311569 d!683920))

(assert (=> b!2311569 d!683922))

(assert (=> b!2311578 d!683926))

(assert (=> b!2311572 d!683916))

(assert (=> b!2311575 d!683926))

(assert (=> b!2311575 d!683920))

(assert (=> bs!458332 d!683930))

(assert (=> bs!458332 d!683914))

(assert (=> bs!458339 d!683912))

(assert (=> bs!458339 d!683910))

(assert (=> b!2311566 d!683920))

(assert (=> bs!458344 d!683930))

(assert (=> bs!458344 d!683912))

(assert (=> b!2311573 d!683920))

(assert (=> b!2311573 d!683916))

(assert (=> b!2311576 d!683926))

(assert (=> b!2311576 d!683922))

(assert (=> bs!458323 d!683910))

(assert (=> bs!458323 d!683930))

(assert (=> bs!458327 d!683914))

(assert (=> bs!458327 d!683930))

(assert (=> b!2311579 d!683920))

(assert (=> b!2311579 d!683926))

(declare-fun bs!458401 () Bool)

(assert (= bs!458401 (and m!2738901 b!2311566)))

(assert (=> bs!458401 m!2738901))

(assert (=> bs!458401 m!2738901))

(declare-fun bs!458402 () Bool)

(assert (= bs!458402 (and m!2738885 m!2738901 b!2311567)))

(declare-fun m!2738977 () Bool)

(assert (=> bs!458402 m!2738977))

(assert (=> bs!458402 m!2738901))

(declare-fun bs!458403 () Bool)

(assert (= bs!458403 (and m!2738885 b!2311568)))

(assert (=> bs!458403 m!2738977))

(assert (=> bs!458403 m!2738977))

(declare-fun bs!458404 () Bool)

(assert (= bs!458404 (and m!2738885 m!2738901 b!2311569)))

(assert (=> bs!458404 m!2738901))

(assert (=> bs!458404 m!2738977))

(declare-fun bs!458405 () Bool)

(assert (= bs!458405 (and m!2738889 m!2738901 b!2311570)))

(assert (=> bs!458405 m!2738881))

(assert (=> bs!458405 m!2738901))

(declare-fun bs!458406 () Bool)

(assert (= bs!458406 (and m!2738889 m!2738885 b!2311571)))

(assert (=> bs!458406 m!2738881))

(assert (=> bs!458406 m!2738977))

(declare-fun bs!458407 () Bool)

(assert (= bs!458407 (and m!2738889 b!2311572)))

(assert (=> bs!458407 m!2738881))

(assert (=> bs!458407 m!2738881))

(declare-fun bs!458408 () Bool)

(assert (= bs!458408 (and m!2738889 m!2738901 b!2311573)))

(assert (=> bs!458408 m!2738901))

(assert (=> bs!458408 m!2738881))

(declare-fun bs!458409 () Bool)

(assert (= bs!458409 (and m!2738889 m!2738885 b!2311574)))

(assert (=> bs!458409 m!2738977))

(assert (=> bs!458409 m!2738881))

(declare-fun bs!458410 () Bool)

(assert (= bs!458410 (and m!2738899 m!2738901 m!2738893 b!2311575)))

(assert (=> bs!458410 m!2738899))

(assert (=> bs!458410 m!2738901))

(declare-fun bs!458411 () Bool)

(assert (= bs!458411 (and m!2738899 m!2738885 b!2311576)))

(assert (=> bs!458411 m!2738899))

(assert (=> bs!458411 m!2738977))

(declare-fun bs!458412 () Bool)

(assert (= bs!458412 (and m!2738899 m!2738889 b!2311577)))

(assert (=> bs!458412 m!2738899))

(assert (=> bs!458412 m!2738881))

(declare-fun bs!458413 () Bool)

(assert (= bs!458413 (and m!2738899 b!2311578)))

(assert (=> bs!458413 m!2738899))

(assert (=> bs!458413 m!2738899))

(declare-fun bs!458414 () Bool)

(assert (= bs!458414 (and m!2738899 m!2738901 m!2738893 b!2311579)))

(assert (=> bs!458414 m!2738901))

(assert (=> bs!458414 m!2738899))

(declare-fun bs!458415 () Bool)

(assert (= bs!458415 (and m!2738899 m!2738885 b!2311580)))

(assert (=> bs!458415 m!2738977))

(assert (=> bs!458415 m!2738899))

(declare-fun bs!458416 () Bool)

(assert (= bs!458416 (and m!2738899 m!2738889 b!2311581)))

(assert (=> bs!458416 m!2738881))

(assert (=> bs!458416 m!2738899))

(push 1)

(assert (not d!683914))

(assert (not b!2311553))

(assert (not d!683920))

(assert (not d!683912))

(assert (not d!683916))

(assert (not bs!458320))

(assert (not start!227932))

(assert (not d!683910))

(assert (not d!683922))

(assert (not b!2311562))

(assert (not b!2311564))

(assert (not d!683926))

(assert (not b!2311563))

(assert (not d!683930))

(assert (not b!2311565))

(assert (not b!2311552))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!683942 () Bool)

(declare-fun lt!857517 () List!27614)

(assert (=> d!683942 (= lt!857517 (list!10886 x!440864))))

(declare-fun efficientList!314 (Conc!8984 List!27614) List!27614)

(declare-fun efficientList$default$2!108 (Conc!8984) List!27614)

(assert (=> d!683942 (= lt!857517 (efficientList!314 (c!366499 x!440864) (efficientList$default$2!108 (c!366499 x!440864))))))

(assert (=> d!683942 (= (efficientList!312 x!440864) lt!857517)))

(declare-fun bs!458438 () Bool)

(assert (= bs!458438 d!683942))

(assert (=> bs!458438 m!2738893))

(declare-fun m!2738999 () Bool)

(assert (=> bs!458438 m!2738999))

(assert (=> bs!458438 m!2738999))

(declare-fun m!2739001 () Bool)

(assert (=> bs!458438 m!2739001))

(assert (=> d!683920 d!683942))

(declare-fun d!683944 () Bool)

(declare-fun c!366503 () Bool)

(assert (=> d!683944 (= c!366503 (is-Nil!27516 lt!857506))))

(declare-fun e!1481476 () Int)

(assert (=> d!683944 (= (charsToBigInt!0 lt!857506 0) e!1481476)))

(declare-fun b!2311634 () Bool)

(assert (=> b!2311634 (= e!1481476 0)))

(declare-fun b!2311635 () Bool)

(declare-fun charToBigInt!0 ((_ BitVec 16)) Int)

(assert (=> b!2311635 (= e!1481476 (charsToBigInt!0 (t!207140 lt!857506) (+ (* 0 10) (charToBigInt!0 (h!32917 lt!857506)))))))

(assert (= (and d!683944 c!366503) b!2311634))

(assert (= (and d!683944 (not c!366503)) b!2311635))

(declare-fun m!2739003 () Bool)

(assert (=> b!2311635 m!2739003))

(declare-fun m!2739005 () Bool)

(assert (=> b!2311635 m!2739005))

(assert (=> d!683920 d!683944))

(declare-fun d!683946 () Bool)

(declare-fun lt!857518 () List!27614)

(assert (=> d!683946 (= lt!857518 (list!10886 x!440863))))

(assert (=> d!683946 (= lt!857518 (efficientList!314 (c!366499 x!440863) (efficientList$default$2!108 (c!366499 x!440863))))))

(assert (=> d!683946 (= (efficientList!312 x!440863) lt!857518)))

(declare-fun bs!458439 () Bool)

(assert (= bs!458439 d!683946))

(assert (=> bs!458439 m!2738891))

(declare-fun m!2739007 () Bool)

(assert (=> bs!458439 m!2739007))

(assert (=> bs!458439 m!2739007))

(declare-fun m!2739009 () Bool)

(assert (=> bs!458439 m!2739009))

(assert (=> d!683926 d!683946))

(declare-fun d!683948 () Bool)

(declare-fun c!366504 () Bool)

(assert (=> d!683948 (= c!366504 (is-Nil!27516 lt!857508))))

(declare-fun e!1481477 () Int)

(assert (=> d!683948 (= (charsToBigInt!0 lt!857508 0) e!1481477)))

(declare-fun b!2311636 () Bool)

(assert (=> b!2311636 (= e!1481477 0)))

(declare-fun b!2311637 () Bool)

(assert (=> b!2311637 (= e!1481477 (charsToBigInt!0 (t!207140 lt!857508) (+ (* 0 10) (charToBigInt!0 (h!32917 lt!857508)))))))

(assert (= (and d!683948 c!366504) b!2311636))

(assert (= (and d!683948 (not c!366504)) b!2311637))

(declare-fun m!2739011 () Bool)

(assert (=> b!2311637 m!2739011))

(declare-fun m!2739013 () Bool)

(assert (=> b!2311637 m!2739013))

(assert (=> d!683926 d!683948))

(declare-fun d!683950 () Bool)

(declare-fun c!366509 () Bool)

(assert (=> d!683950 (= c!366509 (is-Empty!8984 (c!366499 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862)))))))

(declare-fun e!1481482 () List!27614)

(assert (=> d!683950 (= (list!10888 (c!366499 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862)))) e!1481482)))

(declare-fun b!2311646 () Bool)

(assert (=> b!2311646 (= e!1481482 Nil!27516)))

(declare-fun b!2311647 () Bool)

(declare-fun e!1481483 () List!27614)

(assert (=> b!2311647 (= e!1481482 e!1481483)))

(declare-fun c!366510 () Bool)

(assert (=> b!2311647 (= c!366510 (is-Leaf!13182 (c!366499 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862)))))))

(declare-fun b!2311648 () Bool)

(declare-fun list!10890 (IArray!17973) List!27614)

(assert (=> b!2311648 (= e!1481483 (list!10890 (xs!11926 (c!366499 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862))))))))

(declare-fun b!2311649 () Bool)

(declare-fun ++!6742 (List!27614 List!27614) List!27614)

(assert (=> b!2311649 (= e!1481483 (++!6742 (list!10888 (left!20859 (c!366499 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862))))) (list!10888 (right!21189 (c!366499 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862)))))))))

(assert (= (and d!683950 c!366509) b!2311646))

(assert (= (and d!683950 (not c!366509)) b!2311647))

(assert (= (and b!2311647 c!366510) b!2311648))

(assert (= (and b!2311647 (not c!366510)) b!2311649))

(declare-fun m!2739015 () Bool)

(assert (=> b!2311648 m!2739015))

(declare-fun m!2739017 () Bool)

(assert (=> b!2311649 m!2739017))

(declare-fun m!2739019 () Bool)

(assert (=> b!2311649 m!2739019))

(assert (=> b!2311649 m!2739017))

(assert (=> b!2311649 m!2739019))

(declare-fun m!2739021 () Bool)

(assert (=> b!2311649 m!2739021))

(assert (=> d!683910 d!683950))

(declare-fun d!683952 () Bool)

(declare-fun lt!857519 () List!27614)

(assert (=> d!683952 (= lt!857519 (list!10886 x!440862))))

(assert (=> d!683952 (= lt!857519 (efficientList!314 (c!366499 x!440862) (efficientList$default$2!108 (c!366499 x!440862))))))

(assert (=> d!683952 (= (efficientList!312 x!440862) lt!857519)))

(declare-fun bs!458440 () Bool)

(assert (= bs!458440 d!683952))

(assert (=> bs!458440 m!2738889))

(declare-fun m!2739023 () Bool)

(assert (=> bs!458440 m!2739023))

(assert (=> bs!458440 m!2739023))

(declare-fun m!2739025 () Bool)

(assert (=> bs!458440 m!2739025))

(assert (=> d!683916 d!683952))

(declare-fun d!683954 () Bool)

(declare-fun c!366511 () Bool)

(assert (=> d!683954 (= c!366511 (is-Nil!27516 lt!857505))))

(declare-fun e!1481484 () Int)

(assert (=> d!683954 (= (charsToBigInt!0 lt!857505 0) e!1481484)))

(declare-fun b!2311650 () Bool)

(assert (=> b!2311650 (= e!1481484 0)))

(declare-fun b!2311651 () Bool)

(assert (=> b!2311651 (= e!1481484 (charsToBigInt!0 (t!207140 lt!857505) (+ (* 0 10) (charToBigInt!0 (h!32917 lt!857505)))))))

(assert (= (and d!683954 c!366511) b!2311650))

(assert (= (and d!683954 (not c!366511)) b!2311651))

(declare-fun m!2739027 () Bool)

(assert (=> b!2311651 m!2739027))

(declare-fun m!2739029 () Bool)

(assert (=> b!2311651 m!2739029))

(assert (=> d!683916 d!683954))

(declare-fun d!683956 () Bool)

(declare-fun lt!857520 () List!27614)

(assert (=> d!683956 (= lt!857520 (list!10886 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862))))))

(assert (=> d!683956 (= lt!857520 (efficientList!314 (c!366499 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862))) (efficientList$default$2!108 (c!366499 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862))))))))

(assert (=> d!683956 (= (efficientList!312 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862))) lt!857520)))

(declare-fun bs!458441 () Bool)

(assert (= bs!458441 d!683956))

(assert (=> bs!458441 m!2738883))

(assert (=> bs!458441 m!2738885))

(declare-fun m!2739031 () Bool)

(assert (=> bs!458441 m!2739031))

(assert (=> bs!458441 m!2739031))

(declare-fun m!2739033 () Bool)

(assert (=> bs!458441 m!2739033))

(assert (=> d!683922 d!683956))

(declare-fun d!683958 () Bool)

(declare-fun c!366512 () Bool)

(assert (=> d!683958 (= c!366512 (is-Nil!27516 lt!857507))))

(declare-fun e!1481485 () Int)

(assert (=> d!683958 (= (charsToBigInt!0 lt!857507 0) e!1481485)))

(declare-fun b!2311652 () Bool)

(assert (=> b!2311652 (= e!1481485 0)))

(declare-fun b!2311653 () Bool)

(assert (=> b!2311653 (= e!1481485 (charsToBigInt!0 (t!207140 lt!857507) (+ (* 0 10) (charToBigInt!0 (h!32917 lt!857507)))))))

(assert (= (and d!683958 c!366512) b!2311652))

(assert (= (and d!683958 (not c!366512)) b!2311653))

(declare-fun m!2739035 () Bool)

(assert (=> b!2311653 m!2739035))

(declare-fun m!2739037 () Bool)

(assert (=> b!2311653 m!2739037))

(assert (=> d!683922 d!683958))

(declare-fun d!683960 () Bool)

(declare-fun c!366513 () Bool)

(assert (=> d!683960 (= c!366513 (is-Empty!8984 (c!366499 x!440863)))))

(declare-fun e!1481486 () List!27614)

(assert (=> d!683960 (= (list!10888 (c!366499 x!440863)) e!1481486)))

(declare-fun b!2311654 () Bool)

(assert (=> b!2311654 (= e!1481486 Nil!27516)))

(declare-fun b!2311655 () Bool)

(declare-fun e!1481487 () List!27614)

(assert (=> b!2311655 (= e!1481486 e!1481487)))

(declare-fun c!366514 () Bool)

(assert (=> b!2311655 (= c!366514 (is-Leaf!13182 (c!366499 x!440863)))))

(declare-fun b!2311656 () Bool)

(assert (=> b!2311656 (= e!1481487 (list!10890 (xs!11926 (c!366499 x!440863))))))

(declare-fun b!2311657 () Bool)

(assert (=> b!2311657 (= e!1481487 (++!6742 (list!10888 (left!20859 (c!366499 x!440863))) (list!10888 (right!21189 (c!366499 x!440863)))))))

(assert (= (and d!683960 c!366513) b!2311654))

(assert (= (and d!683960 (not c!366513)) b!2311655))

(assert (= (and b!2311655 c!366514) b!2311656))

(assert (= (and b!2311655 (not c!366514)) b!2311657))

(declare-fun m!2739039 () Bool)

(assert (=> b!2311656 m!2739039))

(declare-fun m!2739041 () Bool)

(assert (=> b!2311657 m!2739041))

(declare-fun m!2739043 () Bool)

(assert (=> b!2311657 m!2739043))

(assert (=> b!2311657 m!2739041))

(assert (=> b!2311657 m!2739043))

(declare-fun m!2739045 () Bool)

(assert (=> b!2311657 m!2739045))

(assert (=> d!683912 d!683960))

(declare-fun d!683962 () Bool)

(declare-fun c!366515 () Bool)

(assert (=> d!683962 (= c!366515 (is-Empty!8984 (c!366499 x!440864)))))

(declare-fun e!1481488 () List!27614)

(assert (=> d!683962 (= (list!10888 (c!366499 x!440864)) e!1481488)))

(declare-fun b!2311658 () Bool)

(assert (=> b!2311658 (= e!1481488 Nil!27516)))

(declare-fun b!2311659 () Bool)

(declare-fun e!1481489 () List!27614)

(assert (=> b!2311659 (= e!1481488 e!1481489)))

(declare-fun c!366516 () Bool)

(assert (=> b!2311659 (= c!366516 (is-Leaf!13182 (c!366499 x!440864)))))

(declare-fun b!2311660 () Bool)

(assert (=> b!2311660 (= e!1481489 (list!10890 (xs!11926 (c!366499 x!440864))))))

(declare-fun b!2311661 () Bool)

(assert (=> b!2311661 (= e!1481489 (++!6742 (list!10888 (left!20859 (c!366499 x!440864))) (list!10888 (right!21189 (c!366499 x!440864)))))))

(assert (= (and d!683962 c!366515) b!2311658))

(assert (= (and d!683962 (not c!366515)) b!2311659))

(assert (= (and b!2311659 c!366516) b!2311660))

(assert (= (and b!2311659 (not c!366516)) b!2311661))

(declare-fun m!2739047 () Bool)

(assert (=> b!2311660 m!2739047))

(declare-fun m!2739049 () Bool)

(assert (=> b!2311661 m!2739049))

(declare-fun m!2739051 () Bool)

(assert (=> b!2311661 m!2739051))

(assert (=> b!2311661 m!2739049))

(assert (=> b!2311661 m!2739051))

(declare-fun m!2739053 () Bool)

(assert (=> b!2311661 m!2739053))

(assert (=> d!683930 d!683962))

(declare-fun d!683964 () Bool)

(declare-fun c!366517 () Bool)

(assert (=> d!683964 (= c!366517 (is-Empty!8984 (c!366499 x!440862)))))

(declare-fun e!1481490 () List!27614)

(assert (=> d!683964 (= (list!10888 (c!366499 x!440862)) e!1481490)))

(declare-fun b!2311662 () Bool)

(assert (=> b!2311662 (= e!1481490 Nil!27516)))

(declare-fun b!2311663 () Bool)

(declare-fun e!1481491 () List!27614)

(assert (=> b!2311663 (= e!1481490 e!1481491)))

(declare-fun c!366518 () Bool)

(assert (=> b!2311663 (= c!366518 (is-Leaf!13182 (c!366499 x!440862)))))

(declare-fun b!2311664 () Bool)

(assert (=> b!2311664 (= e!1481491 (list!10890 (xs!11926 (c!366499 x!440862))))))

(declare-fun b!2311665 () Bool)

(assert (=> b!2311665 (= e!1481491 (++!6742 (list!10888 (left!20859 (c!366499 x!440862))) (list!10888 (right!21189 (c!366499 x!440862)))))))

(assert (= (and d!683964 c!366517) b!2311662))

(assert (= (and d!683964 (not c!366517)) b!2311663))

(assert (= (and b!2311663 c!366518) b!2311664))

(assert (= (and b!2311663 (not c!366518)) b!2311665))

(declare-fun m!2739055 () Bool)

(assert (=> b!2311664 m!2739055))

(declare-fun m!2739057 () Bool)

(assert (=> b!2311665 m!2739057))

(declare-fun m!2739059 () Bool)

(assert (=> b!2311665 m!2739059))

(assert (=> b!2311665 m!2739057))

(assert (=> b!2311665 m!2739059))

(declare-fun m!2739061 () Bool)

(assert (=> b!2311665 m!2739061))

(assert (=> d!683914 d!683964))

(push 1)

(assert (not b!2311649))

(assert (not b!2311651))

(assert (not d!683942))

(assert (not b!2311635))

(assert (not b!2311661))

(assert (not b!2311648))

(assert (not b!2311653))

(assert (not b!2311562))

(assert (not b!2311564))

(assert (not b!2311637))

(assert (not b!2311563))

(assert (not d!683946))

(assert (not b!2311553))

(assert (not b!2311660))

(assert (not bs!458320))

(assert (not b!2311665))

(assert (not d!683956))

(assert (not b!2311657))

(assert (not b!2311664))

(assert (not b!2311656))

(assert (not start!227932))

(assert (not b!2311565))

(assert (not b!2311552))

(assert (not d!683952))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!683956 d!683910))

(declare-fun bm!137398 () Bool)

(declare-fun c!366545 () Bool)

(declare-fun c!366543 () Bool)

(assert (=> bm!137398 (= c!366545 c!366543)))

(declare-fun e!1481516 () List!27614)

(declare-fun lt!857541 () List!27614)

(declare-fun call!137403 () List!27614)

(assert (=> bm!137398 (= call!137403 (++!6742 e!1481516 (ite c!366543 (efficientList$default$2!108 (c!366499 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862)))) lt!857541)))))

(declare-fun d!683990 () Bool)

(declare-fun lt!857540 () List!27614)

(assert (=> d!683990 (= lt!857540 (++!6742 (list!10888 (c!366499 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862)))) (efficientList$default$2!108 (c!366499 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862))))))))

(declare-fun e!1481517 () List!27614)

(assert (=> d!683990 (= lt!857540 e!1481517)))

(declare-fun c!366544 () Bool)

(assert (=> d!683990 (= c!366544 (is-Empty!8984 (c!366499 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862)))))))

(assert (=> d!683990 (= (efficientList!314 (c!366499 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862))) (efficientList$default$2!108 (c!366499 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862))))) lt!857540)))

(declare-fun b!2311714 () Bool)

(declare-datatypes ((Unit!40442 0))(
  ( (Unit!40443) )
))
(declare-fun lt!857537 () Unit!40442)

(declare-fun lt!857539 () Unit!40442)

(assert (=> b!2311714 (= lt!857537 lt!857539)))

(declare-fun lt!857538 () List!27614)

(assert (=> b!2311714 (= (++!6742 call!137403 (efficientList$default$2!108 (c!366499 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862))))) (++!6742 lt!857538 (++!6742 lt!857541 (efficientList$default$2!108 (c!366499 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862)))))))))

(declare-fun lemmaConcatAssociativity!1426 (List!27614 List!27614 List!27614) Unit!40442)

(assert (=> b!2311714 (= lt!857539 (lemmaConcatAssociativity!1426 lt!857538 lt!857541 (efficientList$default$2!108 (c!366499 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862))))))))

(assert (=> b!2311714 (= lt!857541 (list!10888 (right!21189 (c!366499 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862))))))))

(assert (=> b!2311714 (= lt!857538 (list!10888 (left!20859 (c!366499 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862))))))))

(declare-fun e!1481518 () List!27614)

(assert (=> b!2311714 (= e!1481518 (efficientList!314 (left!20859 (c!366499 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862)))) (efficientList!314 (right!21189 (c!366499 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862)))) (efficientList$default$2!108 (c!366499 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862)))))))))

(declare-fun b!2311715 () Bool)

(assert (=> b!2311715 (= e!1481517 (efficientList$default$2!108 (c!366499 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862)))))))

(declare-fun b!2311716 () Bool)

(assert (=> b!2311716 (= e!1481518 call!137403)))

(declare-fun b!2311717 () Bool)

(assert (=> b!2311717 (= e!1481517 e!1481518)))

(assert (=> b!2311717 (= c!366543 (is-Leaf!13182 (c!366499 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862)))))))

(declare-fun b!2311718 () Bool)

(assert (=> b!2311718 (= e!1481516 lt!857538)))

(declare-fun b!2311719 () Bool)

(declare-fun efficientList!316 (IArray!17973) List!27614)

(assert (=> b!2311719 (= e!1481516 (efficientList!316 (xs!11926 (c!366499 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862))))))))

(assert (= (and d!683990 c!366544) b!2311715))

(assert (= (and d!683990 (not c!366544)) b!2311717))

(assert (= (and b!2311717 c!366543) b!2311716))

(assert (= (and b!2311717 (not c!366543)) b!2311714))

(assert (= (or b!2311716 b!2311714) bm!137398))

(assert (= (and bm!137398 c!366545) b!2311719))

(assert (= (and bm!137398 (not c!366545)) b!2311718))

(declare-fun m!2739127 () Bool)

(assert (=> bm!137398 m!2739127))

(assert (=> d!683990 m!2738947))

(assert (=> d!683990 m!2738947))

(assert (=> d!683990 m!2739031))

(declare-fun m!2739129 () Bool)

(assert (=> d!683990 m!2739129))

(assert (=> b!2311714 m!2739031))

(declare-fun m!2739131 () Bool)

(assert (=> b!2311714 m!2739131))

(assert (=> b!2311714 m!2739019))

(declare-fun m!2739133 () Bool)

(assert (=> b!2311714 m!2739133))

(declare-fun m!2739135 () Bool)

(assert (=> b!2311714 m!2739135))

(assert (=> b!2311714 m!2739131))

(declare-fun m!2739137 () Bool)

(assert (=> b!2311714 m!2739137))

(assert (=> b!2311714 m!2739031))

(assert (=> b!2311714 m!2739133))

(assert (=> b!2311714 m!2739031))

(declare-fun m!2739139 () Bool)

(assert (=> b!2311714 m!2739139))

(assert (=> b!2311714 m!2739017))

(assert (=> b!2311714 m!2739031))

(declare-fun m!2739141 () Bool)

(assert (=> b!2311714 m!2739141))

(declare-fun m!2739143 () Bool)

(assert (=> b!2311719 m!2739143))

(assert (=> d!683956 d!683990))

(declare-fun d!683992 () Bool)

(assert (=> d!683992 (= (efficientList$default$2!108 (c!366499 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862)))) Nil!27516)))

(assert (=> d!683956 d!683992))

(assert (=> d!683952 d!683914))

(declare-fun bm!137399 () Bool)

(declare-fun c!366548 () Bool)

(declare-fun c!366546 () Bool)

(assert (=> bm!137399 (= c!366548 c!366546)))

(declare-fun call!137404 () List!27614)

(declare-fun e!1481519 () List!27614)

(declare-fun lt!857546 () List!27614)

(assert (=> bm!137399 (= call!137404 (++!6742 e!1481519 (ite c!366546 (efficientList$default$2!108 (c!366499 x!440862)) lt!857546)))))

(declare-fun d!683994 () Bool)

(declare-fun lt!857545 () List!27614)

(assert (=> d!683994 (= lt!857545 (++!6742 (list!10888 (c!366499 x!440862)) (efficientList$default$2!108 (c!366499 x!440862))))))

(declare-fun e!1481520 () List!27614)

(assert (=> d!683994 (= lt!857545 e!1481520)))

(declare-fun c!366547 () Bool)

(assert (=> d!683994 (= c!366547 (is-Empty!8984 (c!366499 x!440862)))))

(assert (=> d!683994 (= (efficientList!314 (c!366499 x!440862) (efficientList$default$2!108 (c!366499 x!440862))) lt!857545)))

(declare-fun b!2311720 () Bool)

(declare-fun lt!857542 () Unit!40442)

(declare-fun lt!857544 () Unit!40442)

(assert (=> b!2311720 (= lt!857542 lt!857544)))

(declare-fun lt!857543 () List!27614)

(assert (=> b!2311720 (= (++!6742 call!137404 (efficientList$default$2!108 (c!366499 x!440862))) (++!6742 lt!857543 (++!6742 lt!857546 (efficientList$default$2!108 (c!366499 x!440862)))))))

(assert (=> b!2311720 (= lt!857544 (lemmaConcatAssociativity!1426 lt!857543 lt!857546 (efficientList$default$2!108 (c!366499 x!440862))))))

(assert (=> b!2311720 (= lt!857546 (list!10888 (right!21189 (c!366499 x!440862))))))

(assert (=> b!2311720 (= lt!857543 (list!10888 (left!20859 (c!366499 x!440862))))))

(declare-fun e!1481521 () List!27614)

(assert (=> b!2311720 (= e!1481521 (efficientList!314 (left!20859 (c!366499 x!440862)) (efficientList!314 (right!21189 (c!366499 x!440862)) (efficientList$default$2!108 (c!366499 x!440862)))))))

(declare-fun b!2311721 () Bool)

(assert (=> b!2311721 (= e!1481520 (efficientList$default$2!108 (c!366499 x!440862)))))

(declare-fun b!2311722 () Bool)

(assert (=> b!2311722 (= e!1481521 call!137404)))

(declare-fun b!2311723 () Bool)

(assert (=> b!2311723 (= e!1481520 e!1481521)))

(assert (=> b!2311723 (= c!366546 (is-Leaf!13182 (c!366499 x!440862)))))

(declare-fun b!2311724 () Bool)

(assert (=> b!2311724 (= e!1481519 lt!857543)))

(declare-fun b!2311725 () Bool)

(assert (=> b!2311725 (= e!1481519 (efficientList!316 (xs!11926 (c!366499 x!440862))))))

(assert (= (and d!683994 c!366547) b!2311721))

(assert (= (and d!683994 (not c!366547)) b!2311723))

(assert (= (and b!2311723 c!366546) b!2311722))

(assert (= (and b!2311723 (not c!366546)) b!2311720))

(assert (= (or b!2311722 b!2311720) bm!137399))

(assert (= (and bm!137399 c!366548) b!2311725))

(assert (= (and bm!137399 (not c!366548)) b!2311724))

(declare-fun m!2739145 () Bool)

(assert (=> bm!137399 m!2739145))

(assert (=> d!683994 m!2738951))

(assert (=> d!683994 m!2738951))

(assert (=> d!683994 m!2739023))

(declare-fun m!2739147 () Bool)

(assert (=> d!683994 m!2739147))

(assert (=> b!2311720 m!2739023))

(declare-fun m!2739149 () Bool)

(assert (=> b!2311720 m!2739149))

(assert (=> b!2311720 m!2739059))

(declare-fun m!2739151 () Bool)

(assert (=> b!2311720 m!2739151))

(declare-fun m!2739153 () Bool)

(assert (=> b!2311720 m!2739153))

(assert (=> b!2311720 m!2739149))

(declare-fun m!2739155 () Bool)

(assert (=> b!2311720 m!2739155))

(assert (=> b!2311720 m!2739023))

(assert (=> b!2311720 m!2739151))

(assert (=> b!2311720 m!2739023))

(declare-fun m!2739157 () Bool)

(assert (=> b!2311720 m!2739157))

(assert (=> b!2311720 m!2739057))

(assert (=> b!2311720 m!2739023))

(declare-fun m!2739159 () Bool)

(assert (=> b!2311720 m!2739159))

(declare-fun m!2739161 () Bool)

(assert (=> b!2311725 m!2739161))

(assert (=> d!683952 d!683994))

(declare-fun d!683996 () Bool)

(assert (=> d!683996 (= (efficientList$default$2!108 (c!366499 x!440862)) Nil!27516)))

(assert (=> d!683952 d!683996))

(declare-fun d!683998 () Bool)

(declare-fun c!366551 () Bool)

(assert (=> d!683998 (= c!366551 (is-Node!8984 (c!366499 x!440863)))))

(declare-fun e!1481526 () Bool)

(assert (=> d!683998 (= (inv!37200 (c!366499 x!440863)) e!1481526)))

(declare-fun b!2311732 () Bool)

(declare-fun inv!37204 (Conc!8984) Bool)

(assert (=> b!2311732 (= e!1481526 (inv!37204 (c!366499 x!440863)))))

(declare-fun b!2311733 () Bool)

(declare-fun e!1481527 () Bool)

(assert (=> b!2311733 (= e!1481526 e!1481527)))

(declare-fun res!988243 () Bool)

(assert (=> b!2311733 (= res!988243 (not (is-Leaf!13182 (c!366499 x!440863))))))

(assert (=> b!2311733 (=> res!988243 e!1481527)))

(declare-fun b!2311734 () Bool)

(declare-fun inv!37205 (Conc!8984) Bool)

(assert (=> b!2311734 (= e!1481527 (inv!37205 (c!366499 x!440863)))))

(assert (= (and d!683998 c!366551) b!2311732))

(assert (= (and d!683998 (not c!366551)) b!2311733))

(assert (= (and b!2311733 (not res!988243)) b!2311734))

(declare-fun m!2739163 () Bool)

(assert (=> b!2311732 m!2739163))

(declare-fun m!2739165 () Bool)

(assert (=> b!2311734 m!2739165))

(assert (=> b!2311564 d!683998))

(assert (=> d!683946 d!683912))

(declare-fun bm!137400 () Bool)

(declare-fun c!366554 () Bool)

(declare-fun c!366552 () Bool)

(assert (=> bm!137400 (= c!366554 c!366552)))

(declare-fun e!1481528 () List!27614)

(declare-fun lt!857551 () List!27614)

(declare-fun call!137405 () List!27614)

(assert (=> bm!137400 (= call!137405 (++!6742 e!1481528 (ite c!366552 (efficientList$default$2!108 (c!366499 x!440863)) lt!857551)))))

(declare-fun d!684000 () Bool)

(declare-fun lt!857550 () List!27614)

(assert (=> d!684000 (= lt!857550 (++!6742 (list!10888 (c!366499 x!440863)) (efficientList$default$2!108 (c!366499 x!440863))))))

(declare-fun e!1481529 () List!27614)

(assert (=> d!684000 (= lt!857550 e!1481529)))

(declare-fun c!366553 () Bool)

(assert (=> d!684000 (= c!366553 (is-Empty!8984 (c!366499 x!440863)))))

(assert (=> d!684000 (= (efficientList!314 (c!366499 x!440863) (efficientList$default$2!108 (c!366499 x!440863))) lt!857550)))

(declare-fun b!2311735 () Bool)

(declare-fun lt!857547 () Unit!40442)

(declare-fun lt!857549 () Unit!40442)

(assert (=> b!2311735 (= lt!857547 lt!857549)))

(declare-fun lt!857548 () List!27614)

(assert (=> b!2311735 (= (++!6742 call!137405 (efficientList$default$2!108 (c!366499 x!440863))) (++!6742 lt!857548 (++!6742 lt!857551 (efficientList$default$2!108 (c!366499 x!440863)))))))

(assert (=> b!2311735 (= lt!857549 (lemmaConcatAssociativity!1426 lt!857548 lt!857551 (efficientList$default$2!108 (c!366499 x!440863))))))

(assert (=> b!2311735 (= lt!857551 (list!10888 (right!21189 (c!366499 x!440863))))))

(assert (=> b!2311735 (= lt!857548 (list!10888 (left!20859 (c!366499 x!440863))))))

(declare-fun e!1481530 () List!27614)

(assert (=> b!2311735 (= e!1481530 (efficientList!314 (left!20859 (c!366499 x!440863)) (efficientList!314 (right!21189 (c!366499 x!440863)) (efficientList$default$2!108 (c!366499 x!440863)))))))

(declare-fun b!2311736 () Bool)

(assert (=> b!2311736 (= e!1481529 (efficientList$default$2!108 (c!366499 x!440863)))))

(declare-fun b!2311737 () Bool)

(assert (=> b!2311737 (= e!1481530 call!137405)))

(declare-fun b!2311738 () Bool)

(assert (=> b!2311738 (= e!1481529 e!1481530)))

(assert (=> b!2311738 (= c!366552 (is-Leaf!13182 (c!366499 x!440863)))))

(declare-fun b!2311739 () Bool)

(assert (=> b!2311739 (= e!1481528 lt!857548)))

(declare-fun b!2311740 () Bool)

(assert (=> b!2311740 (= e!1481528 (efficientList!316 (xs!11926 (c!366499 x!440863))))))

(assert (= (and d!684000 c!366553) b!2311736))

(assert (= (and d!684000 (not c!366553)) b!2311738))

(assert (= (and b!2311738 c!366552) b!2311737))

(assert (= (and b!2311738 (not c!366552)) b!2311735))

(assert (= (or b!2311737 b!2311735) bm!137400))

(assert (= (and bm!137400 c!366554) b!2311740))

(assert (= (and bm!137400 (not c!366554)) b!2311739))

(declare-fun m!2739167 () Bool)

(assert (=> bm!137400 m!2739167))

(assert (=> d!684000 m!2738949))

(assert (=> d!684000 m!2738949))

(assert (=> d!684000 m!2739007))

(declare-fun m!2739169 () Bool)

(assert (=> d!684000 m!2739169))

(assert (=> b!2311735 m!2739007))

(declare-fun m!2739171 () Bool)

(assert (=> b!2311735 m!2739171))

(assert (=> b!2311735 m!2739043))

(declare-fun m!2739173 () Bool)

(assert (=> b!2311735 m!2739173))

(declare-fun m!2739175 () Bool)

(assert (=> b!2311735 m!2739175))

(assert (=> b!2311735 m!2739171))

(declare-fun m!2739177 () Bool)

(assert (=> b!2311735 m!2739177))

(assert (=> b!2311735 m!2739007))

(assert (=> b!2311735 m!2739173))

(assert (=> b!2311735 m!2739007))

(declare-fun m!2739179 () Bool)

(assert (=> b!2311735 m!2739179))

(assert (=> b!2311735 m!2739041))

(assert (=> b!2311735 m!2739007))

(declare-fun m!2739181 () Bool)

(assert (=> b!2311735 m!2739181))

(declare-fun m!2739183 () Bool)

(assert (=> b!2311740 m!2739183))

(assert (=> d!683946 d!684000))

(declare-fun d!684002 () Bool)

(assert (=> d!684002 (= (efficientList$default$2!108 (c!366499 x!440863)) Nil!27516)))

(assert (=> d!683946 d!684002))

(assert (=> bs!458320 d!683910))

(declare-fun d!684004 () Bool)

(declare-fun c!366558 () Bool)

(assert (=> d!684004 (= c!366558 (is-IntegerValue!13742 (toValue!7 thiss!2978 x!440862)))))

(declare-fun e!1481533 () BalanceConc!17700)

(assert (=> d!684004 (= (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!440862)) e!1481533)))

(declare-fun b!2311745 () Bool)

(declare-fun seqFromList!3120 (List!27614) BalanceConc!17700)

(assert (=> b!2311745 (= e!1481533 (seqFromList!3120 (text!32509 (toValue!7 thiss!2978 x!440862))))))

(declare-fun b!2311746 () Bool)

(assert (=> b!2311746 (= e!1481533 (BalanceConc!17701 Empty!8984))))

(assert (= (and d!684004 c!366558) b!2311745))

(assert (= (and d!684004 (not c!366558)) b!2311746))

(declare-fun m!2739185 () Bool)

(assert (=> b!2311745 m!2739185))

(assert (=> bs!458320 d!684004))

(assert (=> bs!458320 d!683916))

(assert (=> bs!458320 d!683914))

(declare-fun d!684006 () Bool)

(declare-fun c!366559 () Bool)

(assert (=> d!684006 (= c!366559 (is-Node!8984 (c!366499 x!440862)))))

(declare-fun e!1481534 () Bool)

(assert (=> d!684006 (= (inv!37200 (c!366499 x!440862)) e!1481534)))

(declare-fun b!2311747 () Bool)

(assert (=> b!2311747 (= e!1481534 (inv!37204 (c!366499 x!440862)))))

(declare-fun b!2311748 () Bool)

(declare-fun e!1481535 () Bool)

(assert (=> b!2311748 (= e!1481534 e!1481535)))

(declare-fun res!988244 () Bool)

(assert (=> b!2311748 (= res!988244 (not (is-Leaf!13182 (c!366499 x!440862))))))

(assert (=> b!2311748 (=> res!988244 e!1481535)))

(declare-fun b!2311749 () Bool)

(assert (=> b!2311749 (= e!1481535 (inv!37205 (c!366499 x!440862)))))

(assert (= (and d!684006 c!366559) b!2311747))

(assert (= (and d!684006 (not c!366559)) b!2311748))

(assert (= (and b!2311748 (not res!988244)) b!2311749))

(declare-fun m!2739187 () Bool)

(assert (=> b!2311747 m!2739187))

(declare-fun m!2739189 () Bool)

(assert (=> b!2311749 m!2739189))

(assert (=> b!2311562 d!684006))

(assert (=> b!2311563 d!683926))

(assert (=> b!2311563 d!683920))

(declare-fun bs!458446 () Bool)

(declare-fun d!684008 () Bool)

(assert (= bs!458446 (and d!684008 start!227932)))

(declare-fun lambda!86170 () Int)

(assert (=> bs!458446 (not (= lambda!86170 lambda!86142))))

(assert (=> d!684008 true))

(declare-fun order!15339 () Int)

(declare-fun order!15337 () Int)

(declare-fun dynLambda!11974 (Int Int) Int)

(declare-fun dynLambda!11975 (Int Int) Int)

(assert (=> d!684008 (< (dynLambda!11974 order!15337 lambda!86143) (dynLambda!11975 order!15339 lambda!86170))))

(assert (=> d!684008 true))

(declare-fun order!15341 () Int)

(declare-fun dynLambda!11976 (Int Int) Int)

(assert (=> d!684008 (< (dynLambda!11976 order!15341 lambda!86144) (dynLambda!11975 order!15339 lambda!86170))))

(assert (=> d!684008 (= (semiInverseModEq!1801 lambda!86143 lambda!86144) (Forall!1110 lambda!86170))))

(declare-fun bs!458447 () Bool)

(assert (= bs!458447 d!684008))

(declare-fun m!2739191 () Bool)

(assert (=> bs!458447 m!2739191))

(assert (=> b!2311552 d!684008))

(declare-fun d!684010 () Bool)

(declare-fun choose!13526 (Int) Bool)

(assert (=> d!684010 (= (Forall!1110 lambda!86142) (choose!13526 lambda!86142))))

(declare-fun bs!458448 () Bool)

(assert (= bs!458448 d!684010))

(declare-fun m!2739193 () Bool)

(assert (=> bs!458448 m!2739193))

(assert (=> b!2311552 d!684010))

(declare-fun d!684012 () Bool)

(declare-fun c!366560 () Bool)

(assert (=> d!684012 (= c!366560 (is-Node!8984 (c!366499 x!440864)))))

(declare-fun e!1481536 () Bool)

(assert (=> d!684012 (= (inv!37200 (c!366499 x!440864)) e!1481536)))

(declare-fun b!2311754 () Bool)

(assert (=> b!2311754 (= e!1481536 (inv!37204 (c!366499 x!440864)))))

(declare-fun b!2311755 () Bool)

(declare-fun e!1481537 () Bool)

(assert (=> b!2311755 (= e!1481536 e!1481537)))

(declare-fun res!988245 () Bool)

(assert (=> b!2311755 (= res!988245 (not (is-Leaf!13182 (c!366499 x!440864))))))

(assert (=> b!2311755 (=> res!988245 e!1481537)))

(declare-fun b!2311756 () Bool)

(assert (=> b!2311756 (= e!1481537 (inv!37205 (c!366499 x!440864)))))

(assert (= (and d!684012 c!366560) b!2311754))

(assert (= (and d!684012 (not c!366560)) b!2311755))

(assert (= (and b!2311755 (not res!988245)) b!2311756))

(declare-fun m!2739195 () Bool)

(assert (=> b!2311754 m!2739195))

(declare-fun m!2739197 () Bool)

(assert (=> b!2311756 m!2739197))

(assert (=> b!2311565 d!684012))

(declare-fun d!684014 () Bool)

(declare-fun isBalanced!2700 (Conc!8984) Bool)

(assert (=> d!684014 (= (inv!37201 x!440863) (isBalanced!2700 (c!366499 x!440863)))))

(declare-fun bs!458449 () Bool)

(assert (= bs!458449 d!684014))

(declare-fun m!2739199 () Bool)

(assert (=> bs!458449 m!2739199))

(assert (=> b!2311553 d!684014))

(declare-fun d!684016 () Bool)

(declare-fun choose!13527 (Int) Bool)

(assert (=> d!684016 (= (Forall2!723 lambda!86145) (choose!13527 lambda!86145))))

(declare-fun bs!458450 () Bool)

(assert (= bs!458450 d!684016))

(declare-fun m!2739201 () Bool)

(assert (=> bs!458450 m!2739201))

(assert (=> b!2311553 d!684016))

(assert (=> b!2311553 d!683912))

(assert (=> b!2311553 d!683930))

(declare-fun d!684018 () Bool)

(assert (=> d!684018 (= (inv!37201 x!440864) (isBalanced!2700 (c!366499 x!440864)))))

(declare-fun bs!458451 () Bool)

(assert (= bs!458451 d!684018))

(declare-fun m!2739203 () Bool)

(assert (=> bs!458451 m!2739203))

(assert (=> b!2311553 d!684018))

(assert (=> d!683942 d!683930))

(declare-fun bm!137401 () Bool)

(declare-fun c!366563 () Bool)

(declare-fun c!366561 () Bool)

(assert (=> bm!137401 (= c!366563 c!366561)))

(declare-fun call!137406 () List!27614)

(declare-fun lt!857556 () List!27614)

(declare-fun e!1481538 () List!27614)

(assert (=> bm!137401 (= call!137406 (++!6742 e!1481538 (ite c!366561 (efficientList$default$2!108 (c!366499 x!440864)) lt!857556)))))

(declare-fun d!684020 () Bool)

(declare-fun lt!857555 () List!27614)

(assert (=> d!684020 (= lt!857555 (++!6742 (list!10888 (c!366499 x!440864)) (efficientList$default$2!108 (c!366499 x!440864))))))

(declare-fun e!1481539 () List!27614)

(assert (=> d!684020 (= lt!857555 e!1481539)))

(declare-fun c!366562 () Bool)

(assert (=> d!684020 (= c!366562 (is-Empty!8984 (c!366499 x!440864)))))

(assert (=> d!684020 (= (efficientList!314 (c!366499 x!440864) (efficientList$default$2!108 (c!366499 x!440864))) lt!857555)))

(declare-fun b!2311757 () Bool)

(declare-fun lt!857552 () Unit!40442)

(declare-fun lt!857554 () Unit!40442)

(assert (=> b!2311757 (= lt!857552 lt!857554)))

(declare-fun lt!857553 () List!27614)

(assert (=> b!2311757 (= (++!6742 call!137406 (efficientList$default$2!108 (c!366499 x!440864))) (++!6742 lt!857553 (++!6742 lt!857556 (efficientList$default$2!108 (c!366499 x!440864)))))))

(assert (=> b!2311757 (= lt!857554 (lemmaConcatAssociativity!1426 lt!857553 lt!857556 (efficientList$default$2!108 (c!366499 x!440864))))))

(assert (=> b!2311757 (= lt!857556 (list!10888 (right!21189 (c!366499 x!440864))))))

(assert (=> b!2311757 (= lt!857553 (list!10888 (left!20859 (c!366499 x!440864))))))

(declare-fun e!1481540 () List!27614)

(assert (=> b!2311757 (= e!1481540 (efficientList!314 (left!20859 (c!366499 x!440864)) (efficientList!314 (right!21189 (c!366499 x!440864)) (efficientList$default$2!108 (c!366499 x!440864)))))))

(declare-fun b!2311758 () Bool)

(assert (=> b!2311758 (= e!1481539 (efficientList$default$2!108 (c!366499 x!440864)))))

(declare-fun b!2311759 () Bool)

(assert (=> b!2311759 (= e!1481540 call!137406)))

(declare-fun b!2311760 () Bool)

(assert (=> b!2311760 (= e!1481539 e!1481540)))

(assert (=> b!2311760 (= c!366561 (is-Leaf!13182 (c!366499 x!440864)))))

(declare-fun b!2311761 () Bool)

(assert (=> b!2311761 (= e!1481538 lt!857553)))

(declare-fun b!2311762 () Bool)

(assert (=> b!2311762 (= e!1481538 (efficientList!316 (xs!11926 (c!366499 x!440864))))))

(assert (= (and d!684020 c!366562) b!2311758))

(assert (= (and d!684020 (not c!366562)) b!2311760))

(assert (= (and b!2311760 c!366561) b!2311759))

(assert (= (and b!2311760 (not c!366561)) b!2311757))

(assert (= (or b!2311759 b!2311757) bm!137401))

(assert (= (and bm!137401 c!366563) b!2311762))

(assert (= (and bm!137401 (not c!366563)) b!2311761))

(declare-fun m!2739205 () Bool)

(assert (=> bm!137401 m!2739205))

(assert (=> d!684020 m!2738973))

(assert (=> d!684020 m!2738973))

(assert (=> d!684020 m!2738999))

(declare-fun m!2739207 () Bool)

(assert (=> d!684020 m!2739207))

(assert (=> b!2311757 m!2738999))

(declare-fun m!2739209 () Bool)

(assert (=> b!2311757 m!2739209))

(assert (=> b!2311757 m!2739051))

(declare-fun m!2739211 () Bool)

(assert (=> b!2311757 m!2739211))

(declare-fun m!2739213 () Bool)

(assert (=> b!2311757 m!2739213))

(assert (=> b!2311757 m!2739209))

(declare-fun m!2739215 () Bool)

(assert (=> b!2311757 m!2739215))

(assert (=> b!2311757 m!2738999))

(assert (=> b!2311757 m!2739211))

(assert (=> b!2311757 m!2738999))

(declare-fun m!2739217 () Bool)

(assert (=> b!2311757 m!2739217))

(assert (=> b!2311757 m!2739049))

(assert (=> b!2311757 m!2738999))

(declare-fun m!2739219 () Bool)

(assert (=> b!2311757 m!2739219))

(declare-fun m!2739221 () Bool)

(assert (=> b!2311762 m!2739221))

(assert (=> d!683942 d!684020))

(declare-fun d!684022 () Bool)

(assert (=> d!684022 (= (efficientList$default$2!108 (c!366499 x!440864)) Nil!27516)))

(assert (=> d!683942 d!684022))

(declare-fun d!684024 () Bool)

(assert (=> d!684024 (= (inv!37201 x!440862) (isBalanced!2700 (c!366499 x!440862)))))

(declare-fun bs!458452 () Bool)

(assert (= bs!458452 d!684024))

(declare-fun m!2739223 () Bool)

(assert (=> bs!458452 m!2739223))

(assert (=> start!227932 d!684024))

(assert (=> start!227932 d!684010))

(assert (=> start!227932 d!683916))

(assert (=> start!227932 d!683910))

(assert (=> start!227932 d!684004))

(assert (=> start!227932 d!683914))

(declare-fun b!2311769 () Bool)

(declare-fun tp!733414 () Bool)

(declare-fun tp!733415 () Bool)

(declare-fun e!1481545 () Bool)

(assert (=> b!2311769 (= e!1481545 (and (inv!37200 (left!20859 (c!366499 x!440863))) tp!733414 (inv!37200 (right!21189 (c!366499 x!440863))) tp!733415))))

(declare-fun b!2311770 () Bool)

(declare-fun inv!37206 (IArray!17973) Bool)

(assert (=> b!2311770 (= e!1481545 (inv!37206 (xs!11926 (c!366499 x!440863))))))

(assert (=> b!2311564 (= tp!733400 (and (inv!37200 (c!366499 x!440863)) e!1481545))))

(assert (= (and b!2311564 (is-Node!8984 (c!366499 x!440863))) b!2311769))

(assert (= (and b!2311564 (is-Leaf!13182 (c!366499 x!440863))) b!2311770))

(declare-fun m!2739225 () Bool)

(assert (=> b!2311769 m!2739225))

(declare-fun m!2739227 () Bool)

(assert (=> b!2311769 m!2739227))

(declare-fun m!2739229 () Bool)

(assert (=> b!2311770 m!2739229))

(assert (=> b!2311564 m!2738903))

(declare-fun tp!733417 () Bool)

(declare-fun e!1481547 () Bool)

(declare-fun tp!733416 () Bool)

(declare-fun b!2311771 () Bool)

(assert (=> b!2311771 (= e!1481547 (and (inv!37200 (left!20859 (c!366499 x!440862))) tp!733416 (inv!37200 (right!21189 (c!366499 x!440862))) tp!733417))))

(declare-fun b!2311772 () Bool)

(assert (=> b!2311772 (= e!1481547 (inv!37206 (xs!11926 (c!366499 x!440862))))))

(assert (=> b!2311562 (= tp!733398 (and (inv!37200 (c!366499 x!440862)) e!1481547))))

(assert (= (and b!2311562 (is-Node!8984 (c!366499 x!440862))) b!2311771))

(assert (= (and b!2311562 (is-Leaf!13182 (c!366499 x!440862))) b!2311772))

(declare-fun m!2739231 () Bool)

(assert (=> b!2311771 m!2739231))

(declare-fun m!2739233 () Bool)

(assert (=> b!2311771 m!2739233))

(declare-fun m!2739235 () Bool)

(assert (=> b!2311772 m!2739235))

(assert (=> b!2311562 m!2738879))

(declare-fun tp!733418 () Bool)

(declare-fun b!2311773 () Bool)

(declare-fun e!1481549 () Bool)

(declare-fun tp!733419 () Bool)

(assert (=> b!2311773 (= e!1481549 (and (inv!37200 (left!20859 (c!366499 x!440864))) tp!733418 (inv!37200 (right!21189 (c!366499 x!440864))) tp!733419))))

(declare-fun b!2311774 () Bool)

(assert (=> b!2311774 (= e!1481549 (inv!37206 (xs!11926 (c!366499 x!440864))))))

(assert (=> b!2311565 (= tp!733399 (and (inv!37200 (c!366499 x!440864)) e!1481549))))

(assert (= (and b!2311565 (is-Node!8984 (c!366499 x!440864))) b!2311773))

(assert (= (and b!2311565 (is-Leaf!13182 (c!366499 x!440864))) b!2311774))

(declare-fun m!2739237 () Bool)

(assert (=> b!2311773 m!2739237))

(declare-fun m!2739239 () Bool)

(assert (=> b!2311773 m!2739239))

(declare-fun m!2739241 () Bool)

(assert (=> b!2311774 m!2739241))

(assert (=> b!2311565 m!2738905))

(push 1)

(assert (not d!684016))

(assert (not d!684008))

(assert (not b!2311754))

(assert (not b!2311747))

(assert (not b!2311660))

(assert (not d!684010))

(assert (not b!2311665))

(assert (not d!684020))

(assert (not b!2311735))

(assert (not d!683990))

(assert (not b!2311756))

(assert (not b!2311749))

(assert (not b!2311732))

(assert (not b!2311740))

(assert (not b!2311649))

(assert (not b!2311772))

(assert (not b!2311562))

(assert (not b!2311564))

(assert (not b!2311637))

(assert (not d!683994))

(assert (not d!684024))

(assert (not b!2311651))

(assert (not bm!137400))

(assert (not b!2311770))

(assert (not b!2311725))

(assert (not bm!137399))

(assert (not b!2311769))

(assert (not b!2311757))

(assert (not b!2311635))

(assert (not b!2311734))

(assert (not b!2311773))

(assert (not b!2311657))

(assert (not b!2311664))

(assert (not d!684018))

(assert (not b!2311656))

(assert (not bm!137401))

(assert (not b!2311661))

(assert (not b!2311745))

(assert (not d!684014))

(assert (not b!2311648))

(assert (not b!2311762))

(assert (not b!2311653))

(assert (not d!684000))

(assert (not b!2311774))

(assert (not b!2311720))

(assert (not bm!137398))

(assert (not b!2311771))

(assert (not b!2311565))

(assert (not b!2311719))

(assert (not b!2311714))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

