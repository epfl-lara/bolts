; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!248980 () Bool)

(assert start!248980)

(assert (=> start!248980 true))

(declare-fun b!2576813 () Bool)

(assert (=> b!2576813 true))

(assert (=> b!2576813 true))

(declare-fun b!2576814 () Bool)

(assert (=> b!2576814 true))

(declare-fun b!2576825 () Bool)

(declare-fun e!1625973 () Bool)

(declare-datatypes ((List!29741 0))(
  ( (Nil!29641) (Cons!29641 (h!35061 (_ BitVec 16)) (t!211514 List!29741)) )
))
(declare-datatypes ((IArray!18485 0))(
  ( (IArray!18486 (innerList!9300 List!29741)) )
))
(declare-datatypes ((Conc!9240 0))(
  ( (Node!9240 (left!22541 Conc!9240) (right!22871 Conc!9240) (csize!18710 Int) (cheight!9451 Int)) (Leaf!14092 (xs!12224 IArray!18485) (csize!18711 Int)) (Empty!9240) )
))
(declare-datatypes ((BalanceConc!18094 0))(
  ( (BalanceConc!18095 (c!415043 Conc!9240)) )
))
(declare-fun x!463048 () BalanceConc!18094)

(declare-fun tp!818997 () Bool)

(declare-fun inv!39905 (Conc!9240) Bool)

(assert (=> b!2576825 (= e!1625973 (and (inv!39905 (c!415043 x!463048)) tp!818997))))

(declare-fun inst!1438 () Bool)

(declare-datatypes ((NewLineValueInjection!20 0))(
  ( (NewLineValueInjection!21) )
))
(declare-fun thiss!4369 () NewLineValueInjection!20)

(declare-fun inv!39906 (BalanceConc!18094) Bool)

(declare-fun list!11178 (BalanceConc!18094) List!29741)

(declare-datatypes ((TokenValue!4704 0))(
  ( (FloatLiteralValue!9408 (text!33373 List!29741)) (TokenValueExt!4703 (__x!19223 Int)) (Broken!23520 (value!144983 List!29741)) (Object!4803) (End!4704) (Def!4704) (Underscore!4704) (Match!4704) (Else!4704) (Error!4704) (Case!4704) (If!4704) (Extends!4704) (Abstract!4704) (Class!4704) (Val!4704) (DelimiterValue!9408 (del!4764 List!29741)) (KeywordValue!4710 (value!144984 List!29741)) (CommentValue!9408 (value!144985 List!29741)) (WhitespaceValue!9408 (value!144986 List!29741)) (IndentationValue!4704 (value!144987 List!29741)) (String!32941) (Int32!4704) (Broken!23521 (value!144988 List!29741)) (Boolean!4705) (Unit!43489) (OperatorValue!4707 (op!4764 List!29741)) (IdentifierValue!9408 (value!144989 List!29741)) (IdentifierValue!9409 (value!144990 List!29741)) (WhitespaceValue!9409 (value!144991 List!29741)) (True!9408) (False!9408) (Broken!23522 (value!144992 List!29741)) (Broken!23523 (value!144993 List!29741)) (True!9409) (RightBrace!4704) (RightBracket!4704) (Colon!4704) (Null!4704) (Comma!4704) (LeftBracket!4704) (False!9409) (LeftBrace!4704) (ImaginaryLiteralValue!4704 (text!33374 List!29741)) (StringLiteralValue!14112 (value!144994 List!29741)) (EOFValue!4704 (value!144995 List!29741)) (IdentValue!4704 (value!144996 List!29741)) (DelimiterValue!9409 (value!144997 List!29741)) (DedentValue!4704 (value!144998 List!29741)) (NewLineValue!4704 (value!144999 List!29741)) (IntegerValue!14112 (value!145000 (_ BitVec 32)) (text!33375 List!29741)) (IntegerValue!14113 (value!145001 Int) (text!33376 List!29741)) (Times!4704) (Or!4704) (Equal!4704) (Minus!4704) (Broken!23524 (value!145002 List!29741)) (And!4704) (Div!4704) (LessEqual!4704) (Mod!4704) (Concat!12348) (Not!4704) (Plus!4704) (SpaceValue!4704 (value!145003 List!29741)) (IntegerValue!14114 (value!145004 Int) (text!33377 List!29741)) (StringLiteralValue!14113 (text!33378 List!29741)) (FloatLiteralValue!9409 (text!33379 List!29741)) (BytesLiteralValue!4704 (value!145005 List!29741)) (CommentValue!9409 (value!145006 List!29741)) (StringLiteralValue!14114 (value!145007 List!29741)) (ErrorTokenValue!4704 (msg!4765 List!29741)) )
))
(declare-fun toCharacters!17 (NewLineValueInjection!20 TokenValue!4704) BalanceConc!18094)

(declare-fun toValue!24 (NewLineValueInjection!20 BalanceConc!18094) TokenValue!4704)

(assert (=> start!248980 (= inst!1438 (=> (and (inv!39906 x!463048) e!1625973) (= (list!11178 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!463048))) (list!11178 x!463048))))))

(assert (= start!248980 b!2576825))

(declare-fun m!2911413 () Bool)

(assert (=> b!2576825 m!2911413))

(declare-fun m!2911415 () Bool)

(assert (=> start!248980 m!2911415))

(declare-fun m!2911417 () Bool)

(assert (=> start!248980 m!2911417))

(declare-fun m!2911419 () Bool)

(assert (=> start!248980 m!2911419))

(assert (=> start!248980 m!2911419))

(assert (=> start!248980 m!2911415))

(declare-fun m!2911421 () Bool)

(assert (=> start!248980 m!2911421))

(declare-fun m!2911423 () Bool)

(assert (=> start!248980 m!2911423))

(declare-fun res!1083879 () Bool)

(declare-fun e!1625974 () Bool)

(assert (=> b!2576814 (=> res!1083879 e!1625974)))

(declare-fun x!463049 () BalanceConc!18094)

(declare-fun x!463050 () BalanceConc!18094)

(assert (=> b!2576814 (= res!1083879 (not (= (list!11178 x!463049) (list!11178 x!463050))))))

(declare-fun e!1625975 () Bool)

(declare-fun inst!1439 () Bool)

(declare-fun e!1625976 () Bool)

(assert (=> b!2576814 (= inst!1439 (=> (and (inv!39906 x!463049) e!1625976 (inv!39906 x!463050) e!1625975) e!1625974))))

(declare-fun b!2576826 () Bool)

(assert (=> b!2576826 (= e!1625974 (= (toValue!24 thiss!4369 x!463049) (toValue!24 thiss!4369 x!463050)))))

(declare-fun b!2576827 () Bool)

(declare-fun tp!818998 () Bool)

(assert (=> b!2576827 (= e!1625976 (and (inv!39905 (c!415043 x!463049)) tp!818998))))

(declare-fun b!2576828 () Bool)

(declare-fun tp!818999 () Bool)

(assert (=> b!2576828 (= e!1625975 (and (inv!39905 (c!415043 x!463050)) tp!818999))))

(assert (= (and b!2576814 (not res!1083879)) b!2576826))

(assert (= b!2576814 b!2576827))

(assert (= b!2576814 b!2576828))

(declare-fun m!2911425 () Bool)

(assert (=> b!2576814 m!2911425))

(declare-fun m!2911427 () Bool)

(assert (=> b!2576814 m!2911427))

(declare-fun m!2911429 () Bool)

(assert (=> b!2576814 m!2911429))

(declare-fun m!2911431 () Bool)

(assert (=> b!2576814 m!2911431))

(declare-fun m!2911433 () Bool)

(assert (=> b!2576826 m!2911433))

(declare-fun m!2911435 () Bool)

(assert (=> b!2576826 m!2911435))

(declare-fun m!2911437 () Bool)

(assert (=> b!2576827 m!2911437))

(declare-fun m!2911439 () Bool)

(assert (=> b!2576828 m!2911439))

(declare-fun bs!470400 () Bool)

(declare-fun neg-inst!1439 () Bool)

(declare-fun s!228258 () Bool)

(assert (= bs!470400 (and neg-inst!1439 s!228258)))

(assert (=> bs!470400 (=> true (= (list!11178 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!463048))) (list!11178 x!463048)))))

(assert (=> m!2911421 m!2911419))

(assert (=> m!2911421 m!2911415))

(assert (=> m!2911421 m!2911417))

(assert (=> m!2911421 s!228258))

(assert (=> m!2911419 s!228258))

(declare-fun bs!470401 () Bool)

(assert (= bs!470401 (and neg-inst!1439 start!248980)))

(assert (=> bs!470401 (= true inst!1438)))

(declare-fun bs!470402 () Bool)

(declare-fun neg-inst!1438 () Bool)

(declare-fun s!228260 () Bool)

(assert (= bs!470402 (and neg-inst!1438 s!228260)))

(declare-fun res!1083880 () Bool)

(declare-fun e!1625977 () Bool)

(assert (=> bs!470402 (=> res!1083880 e!1625977)))

(assert (=> bs!470402 (= res!1083880 (not (= (list!11178 x!463050) (list!11178 x!463050))))))

(assert (=> bs!470402 (=> true e!1625977)))

(declare-fun b!2576829 () Bool)

(assert (=> b!2576829 (= e!1625977 (= (toValue!24 thiss!4369 x!463050) (toValue!24 thiss!4369 x!463050)))))

(assert (= (and bs!470402 (not res!1083880)) b!2576829))

(assert (=> m!2911435 m!2911427))

(assert (=> m!2911435 m!2911427))

(assert (=> m!2911435 s!228260))

(assert (=> m!2911435 s!228260))

(declare-fun bs!470403 () Bool)

(assert (= bs!470403 (and m!2911427 m!2911435)))

(assert (=> bs!470403 s!228260))

(assert (=> m!2911427 s!228260))

(assert (=> bs!470403 s!228260))

(assert (=> m!2911427 s!228260))

(declare-fun bs!470404 () Bool)

(declare-fun s!228262 () Bool)

(assert (= bs!470404 (and neg-inst!1438 s!228262)))

(declare-fun res!1083881 () Bool)

(declare-fun e!1625978 () Bool)

(assert (=> bs!470404 (=> res!1083881 e!1625978)))

(assert (=> bs!470404 (= res!1083881 (not (= (list!11178 x!463050) (list!11178 x!463048))))))

(assert (=> bs!470404 (=> true e!1625978)))

(declare-fun b!2576830 () Bool)

(assert (=> b!2576830 (= e!1625978 (= (toValue!24 thiss!4369 x!463050) (toValue!24 thiss!4369 x!463048)))))

(assert (= (and bs!470404 (not res!1083881)) b!2576830))

(declare-fun bs!470405 () Bool)

(assert (= bs!470405 (and m!2911421 m!2911435 m!2911427)))

(assert (=> bs!470405 m!2911427))

(assert (=> bs!470405 m!2911421))

(assert (=> bs!470405 s!228262))

(declare-fun bs!470406 () Bool)

(declare-fun s!228264 () Bool)

(assert (= bs!470406 (and neg-inst!1438 s!228264)))

(declare-fun res!1083882 () Bool)

(declare-fun e!1625979 () Bool)

(assert (=> bs!470406 (=> res!1083882 e!1625979)))

(assert (=> bs!470406 (= res!1083882 (not (= (list!11178 x!463048) (list!11178 x!463048))))))

(assert (=> bs!470406 (=> true e!1625979)))

(declare-fun b!2576831 () Bool)

(assert (=> b!2576831 (= e!1625979 (= (toValue!24 thiss!4369 x!463048) (toValue!24 thiss!4369 x!463048)))))

(assert (= (and bs!470406 (not res!1083882)) b!2576831))

(assert (=> m!2911421 s!228264))

(declare-fun bs!470407 () Bool)

(declare-fun s!228266 () Bool)

(assert (= bs!470407 (and neg-inst!1438 s!228266)))

(declare-fun res!1083883 () Bool)

(declare-fun e!1625980 () Bool)

(assert (=> bs!470407 (=> res!1083883 e!1625980)))

(assert (=> bs!470407 (= res!1083883 (not (= (list!11178 x!463048) (list!11178 x!463050))))))

(assert (=> bs!470407 (=> true e!1625980)))

(declare-fun b!2576832 () Bool)

(assert (=> b!2576832 (= e!1625980 (= (toValue!24 thiss!4369 x!463048) (toValue!24 thiss!4369 x!463050)))))

(assert (= (and bs!470407 (not res!1083883)) b!2576832))

(assert (=> bs!470405 m!2911421))

(assert (=> bs!470405 m!2911427))

(assert (=> bs!470405 s!228266))

(assert (=> m!2911421 s!228264))

(declare-fun bs!470408 () Bool)

(declare-fun s!228268 () Bool)

(assert (= bs!470408 (and neg-inst!1438 s!228268)))

(declare-fun res!1083884 () Bool)

(declare-fun e!1625981 () Bool)

(assert (=> bs!470408 (=> res!1083884 e!1625981)))

(assert (=> bs!470408 (= res!1083884 (not (= (list!11178 x!463048) (list!11178 x!463049))))))

(assert (=> bs!470408 (=> true e!1625981)))

(declare-fun b!2576833 () Bool)

(assert (=> b!2576833 (= e!1625981 (= (toValue!24 thiss!4369 x!463048) (toValue!24 thiss!4369 x!463049)))))

(assert (= (and bs!470408 (not res!1083884)) b!2576833))

(declare-fun bs!470409 () Bool)

(assert (= bs!470409 (and m!2911433 m!2911421)))

(assert (=> bs!470409 m!2911421))

(assert (=> bs!470409 m!2911425))

(assert (=> bs!470409 s!228268))

(declare-fun bs!470410 () Bool)

(declare-fun s!228270 () Bool)

(assert (= bs!470410 (and neg-inst!1438 s!228270)))

(declare-fun res!1083885 () Bool)

(declare-fun e!1625982 () Bool)

(assert (=> bs!470410 (=> res!1083885 e!1625982)))

(assert (=> bs!470410 (= res!1083885 (not (= (list!11178 x!463050) (list!11178 x!463049))))))

(assert (=> bs!470410 (=> true e!1625982)))

(declare-fun b!2576834 () Bool)

(assert (=> b!2576834 (= e!1625982 (= (toValue!24 thiss!4369 x!463050) (toValue!24 thiss!4369 x!463049)))))

(assert (= (and bs!470410 (not res!1083885)) b!2576834))

(declare-fun bs!470411 () Bool)

(assert (= bs!470411 (and m!2911433 m!2911435 m!2911427)))

(assert (=> bs!470411 m!2911427))

(assert (=> bs!470411 m!2911425))

(assert (=> bs!470411 s!228270))

(declare-fun bs!470412 () Bool)

(declare-fun s!228272 () Bool)

(assert (= bs!470412 (and neg-inst!1438 s!228272)))

(declare-fun res!1083886 () Bool)

(declare-fun e!1625983 () Bool)

(assert (=> bs!470412 (=> res!1083886 e!1625983)))

(assert (=> bs!470412 (= res!1083886 (not (= (list!11178 x!463049) (list!11178 x!463049))))))

(assert (=> bs!470412 (=> true e!1625983)))

(declare-fun b!2576835 () Bool)

(assert (=> b!2576835 (= e!1625983 (= (toValue!24 thiss!4369 x!463049) (toValue!24 thiss!4369 x!463049)))))

(assert (= (and bs!470412 (not res!1083886)) b!2576835))

(assert (=> m!2911433 m!2911425))

(assert (=> m!2911433 m!2911425))

(assert (=> m!2911433 s!228272))

(declare-fun bs!470413 () Bool)

(declare-fun s!228274 () Bool)

(assert (= bs!470413 (and neg-inst!1438 s!228274)))

(declare-fun res!1083887 () Bool)

(declare-fun e!1625984 () Bool)

(assert (=> bs!470413 (=> res!1083887 e!1625984)))

(assert (=> bs!470413 (= res!1083887 (not (= (list!11178 x!463049) (list!11178 x!463048))))))

(assert (=> bs!470413 (=> true e!1625984)))

(declare-fun b!2576836 () Bool)

(assert (=> b!2576836 (= e!1625984 (= (toValue!24 thiss!4369 x!463049) (toValue!24 thiss!4369 x!463048)))))

(assert (= (and bs!470413 (not res!1083887)) b!2576836))

(assert (=> bs!470409 m!2911425))

(assert (=> bs!470409 m!2911421))

(assert (=> bs!470409 s!228274))

(declare-fun bs!470414 () Bool)

(declare-fun s!228276 () Bool)

(assert (= bs!470414 (and neg-inst!1438 s!228276)))

(declare-fun res!1083888 () Bool)

(declare-fun e!1625985 () Bool)

(assert (=> bs!470414 (=> res!1083888 e!1625985)))

(assert (=> bs!470414 (= res!1083888 (not (= (list!11178 x!463049) (list!11178 x!463050))))))

(assert (=> bs!470414 (=> true e!1625985)))

(declare-fun b!2576837 () Bool)

(assert (=> b!2576837 (= e!1625985 (= (toValue!24 thiss!4369 x!463049) (toValue!24 thiss!4369 x!463050)))))

(assert (= (and bs!470414 (not res!1083888)) b!2576837))

(assert (=> bs!470411 m!2911425))

(assert (=> bs!470411 m!2911427))

(assert (=> bs!470411 s!228276))

(assert (=> m!2911433 s!228272))

(declare-fun bs!470415 () Bool)

(assert (= bs!470415 (and m!2911419 m!2911421)))

(assert (=> bs!470415 s!228264))

(declare-fun bs!470416 () Bool)

(assert (= bs!470416 (and m!2911419 m!2911435 m!2911427)))

(assert (=> bs!470416 s!228262))

(declare-fun bs!470417 () Bool)

(assert (= bs!470417 (and m!2911419 m!2911433)))

(assert (=> bs!470417 s!228274))

(assert (=> m!2911419 s!228264))

(assert (=> bs!470415 s!228264))

(assert (=> bs!470416 s!228266))

(assert (=> bs!470417 s!228268))

(assert (=> m!2911419 s!228264))

(declare-fun bs!470418 () Bool)

(assert (= bs!470418 (and m!2911425 m!2911421 m!2911419)))

(assert (=> bs!470418 s!228268))

(declare-fun bs!470419 () Bool)

(assert (= bs!470419 (and m!2911425 m!2911435 m!2911427)))

(assert (=> bs!470419 s!228270))

(declare-fun bs!470420 () Bool)

(assert (= bs!470420 (and m!2911425 m!2911433)))

(assert (=> bs!470420 s!228272))

(assert (=> m!2911425 s!228272))

(assert (=> bs!470418 s!228274))

(assert (=> bs!470419 s!228276))

(assert (=> bs!470420 s!228272))

(assert (=> m!2911425 s!228272))

(declare-fun bs!470421 () Bool)

(declare-fun s!228278 () Bool)

(assert (= bs!470421 (and neg-inst!1438 s!228278)))

(declare-fun res!1083889 () Bool)

(declare-fun e!1625986 () Bool)

(assert (=> bs!470421 (=> res!1083889 e!1625986)))

(assert (=> bs!470421 (= res!1083889 (not (= (list!11178 x!463048) (list!11178 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!463048))))))))

(assert (=> bs!470421 (=> true e!1625986)))

(declare-fun b!2576838 () Bool)

(assert (=> b!2576838 (= e!1625986 (= (toValue!24 thiss!4369 x!463048) (toValue!24 thiss!4369 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!463048)))))))

(assert (= (and bs!470421 (not res!1083889)) b!2576838))

(declare-fun bs!470422 () Bool)

(assert (= bs!470422 (and m!2911417 m!2911421 m!2911419)))

(assert (=> bs!470422 m!2911421))

(assert (=> bs!470422 m!2911417))

(assert (=> bs!470422 s!228278))

(declare-fun bs!470423 () Bool)

(declare-fun s!228280 () Bool)

(assert (= bs!470423 (and neg-inst!1438 s!228280)))

(declare-fun res!1083890 () Bool)

(declare-fun e!1625987 () Bool)

(assert (=> bs!470423 (=> res!1083890 e!1625987)))

(assert (=> bs!470423 (= res!1083890 (not (= (list!11178 x!463050) (list!11178 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!463048))))))))

(assert (=> bs!470423 (=> true e!1625987)))

(declare-fun b!2576839 () Bool)

(assert (=> b!2576839 (= e!1625987 (= (toValue!24 thiss!4369 x!463050) (toValue!24 thiss!4369 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!463048)))))))

(assert (= (and bs!470423 (not res!1083890)) b!2576839))

(declare-fun bs!470424 () Bool)

(assert (= bs!470424 (and m!2911417 m!2911435 m!2911427)))

(assert (=> bs!470424 m!2911427))

(assert (=> bs!470424 m!2911417))

(assert (=> bs!470424 s!228280))

(declare-fun bs!470425 () Bool)

(declare-fun s!228282 () Bool)

(assert (= bs!470425 (and neg-inst!1438 s!228282)))

(declare-fun res!1083891 () Bool)

(declare-fun e!1625988 () Bool)

(assert (=> bs!470425 (=> res!1083891 e!1625988)))

(assert (=> bs!470425 (= res!1083891 (not (= (list!11178 x!463049) (list!11178 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!463048))))))))

(assert (=> bs!470425 (=> true e!1625988)))

(declare-fun b!2576840 () Bool)

(assert (=> b!2576840 (= e!1625988 (= (toValue!24 thiss!4369 x!463049) (toValue!24 thiss!4369 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!463048)))))))

(assert (= (and bs!470425 (not res!1083891)) b!2576840))

(declare-fun bs!470426 () Bool)

(assert (= bs!470426 (and m!2911417 m!2911433 m!2911425)))

(assert (=> bs!470426 m!2911425))

(assert (=> bs!470426 m!2911417))

(assert (=> bs!470426 s!228282))

(declare-fun bs!470427 () Bool)

(declare-fun s!228284 () Bool)

(assert (= bs!470427 (and neg-inst!1438 s!228284)))

(declare-fun res!1083892 () Bool)

(declare-fun e!1625989 () Bool)

(assert (=> bs!470427 (=> res!1083892 e!1625989)))

(assert (=> bs!470427 (= res!1083892 (not (= (list!11178 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!463048))) (list!11178 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!463048))))))))

(assert (=> bs!470427 (=> true e!1625989)))

(declare-fun b!2576841 () Bool)

(assert (=> b!2576841 (= e!1625989 (= (toValue!24 thiss!4369 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!463048))) (toValue!24 thiss!4369 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!463048)))))))

(assert (= (and bs!470427 (not res!1083892)) b!2576841))

(assert (=> m!2911417 s!228284))

(declare-fun bs!470428 () Bool)

(declare-fun s!228286 () Bool)

(assert (= bs!470428 (and neg-inst!1438 s!228286)))

(declare-fun res!1083893 () Bool)

(declare-fun e!1625990 () Bool)

(assert (=> bs!470428 (=> res!1083893 e!1625990)))

(assert (=> bs!470428 (= res!1083893 (not (= (list!11178 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!463048))) (list!11178 x!463048))))))

(assert (=> bs!470428 (=> true e!1625990)))

(declare-fun b!2576842 () Bool)

(assert (=> b!2576842 (= e!1625990 (= (toValue!24 thiss!4369 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!463048))) (toValue!24 thiss!4369 x!463048)))))

(assert (= (and bs!470428 (not res!1083893)) b!2576842))

(assert (=> bs!470422 m!2911417))

(assert (=> bs!470422 m!2911421))

(assert (=> bs!470422 s!228286))

(declare-fun bs!470429 () Bool)

(declare-fun s!228288 () Bool)

(assert (= bs!470429 (and neg-inst!1438 s!228288)))

(declare-fun res!1083894 () Bool)

(declare-fun e!1625991 () Bool)

(assert (=> bs!470429 (=> res!1083894 e!1625991)))

(assert (=> bs!470429 (= res!1083894 (not (= (list!11178 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!463048))) (list!11178 x!463050))))))

(assert (=> bs!470429 (=> true e!1625991)))

(declare-fun b!2576843 () Bool)

(assert (=> b!2576843 (= e!1625991 (= (toValue!24 thiss!4369 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!463048))) (toValue!24 thiss!4369 x!463050)))))

(assert (= (and bs!470429 (not res!1083894)) b!2576843))

(assert (=> bs!470424 m!2911417))

(assert (=> bs!470424 m!2911427))

(assert (=> bs!470424 s!228288))

(declare-fun bs!470430 () Bool)

(declare-fun s!228290 () Bool)

(assert (= bs!470430 (and neg-inst!1438 s!228290)))

(declare-fun res!1083895 () Bool)

(declare-fun e!1625992 () Bool)

(assert (=> bs!470430 (=> res!1083895 e!1625992)))

(assert (=> bs!470430 (= res!1083895 (not (= (list!11178 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!463048))) (list!11178 x!463049))))))

(assert (=> bs!470430 (=> true e!1625992)))

(declare-fun b!2576844 () Bool)

(assert (=> b!2576844 (= e!1625992 (= (toValue!24 thiss!4369 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!463048))) (toValue!24 thiss!4369 x!463049)))))

(assert (= (and bs!470430 (not res!1083895)) b!2576844))

(assert (=> bs!470426 m!2911417))

(assert (=> bs!470426 m!2911425))

(assert (=> bs!470426 s!228290))

(assert (=> m!2911417 s!228284))

(declare-fun bs!470431 () Bool)

(assert (= bs!470431 (and neg-inst!1438 b!2576814)))

(assert (=> bs!470431 (= true inst!1439)))

(declare-fun res!1083877 () Bool)

(declare-fun e!1625971 () Bool)

(assert (=> start!248980 (=> res!1083877 e!1625971)))

(declare-fun lambda!95020 () Int)

(declare-fun Forall!1147 (Int) Bool)

(assert (=> start!248980 (= res!1083877 (not (Forall!1147 lambda!95020)))))

(assert (=> start!248980 (= (Forall!1147 lambda!95020) inst!1438)))

(assert (=> start!248980 (not e!1625971)))

(assert (=> start!248980 true))

(declare-fun b!2576816 () Bool)

(declare-fun e!1625970 () Bool)

(declare-fun lambda!95022 () Int)

(declare-fun lambda!95021 () Int)

(declare-datatypes ((TokenValueInjection!8892 0))(
  ( (TokenValueInjection!8893 (toValue!6376 Int) (toChars!6235 Int)) )
))
(declare-fun inv!39907 (TokenValueInjection!8892) Bool)

(assert (=> b!2576816 (= e!1625970 (inv!39907 (TokenValueInjection!8893 lambda!95022 lambda!95021)))))

(declare-fun e!1625969 () Bool)

(assert (=> b!2576813 (= e!1625971 e!1625969)))

(declare-fun res!1083878 () Bool)

(assert (=> b!2576813 (=> res!1083878 e!1625969)))

(declare-fun semiInverseModEq!1867 (Int Int) Bool)

(assert (=> b!2576813 (= res!1083878 (not (semiInverseModEq!1867 lambda!95021 lambda!95022)))))

(assert (=> b!2576813 (= (semiInverseModEq!1867 lambda!95021 lambda!95022) (Forall!1147 lambda!95020))))

(declare-fun b!2576815 () Bool)

(declare-fun e!1625972 () Bool)

(assert (=> b!2576815 (= e!1625972 e!1625970)))

(declare-fun res!1083876 () Bool)

(assert (=> b!2576815 (=> res!1083876 e!1625970)))

(declare-fun equivClasses!1774 (Int Int) Bool)

(assert (=> b!2576815 (= res!1083876 (not (equivClasses!1774 lambda!95021 lambda!95022)))))

(declare-fun lambda!95023 () Int)

(declare-fun Forall2!752 (Int) Bool)

(assert (=> b!2576815 (= (equivClasses!1774 lambda!95021 lambda!95022) (Forall2!752 lambda!95023))))

(assert (=> b!2576814 (= e!1625969 e!1625972)))

(declare-fun res!1083875 () Bool)

(assert (=> b!2576814 (=> res!1083875 e!1625972)))

(assert (=> b!2576814 (= res!1083875 (not (Forall2!752 lambda!95023)))))

(assert (=> b!2576814 (= (Forall2!752 lambda!95023) inst!1439)))

(assert (= neg-inst!1439 inst!1438))

(assert (= (and start!248980 (not res!1083877)) b!2576813))

(assert (= (and b!2576813 (not res!1083878)) b!2576814))

(assert (= neg-inst!1438 inst!1439))

(assert (= (and b!2576814 (not res!1083875)) b!2576815))

(assert (= (and b!2576815 (not res!1083876)) b!2576816))

(declare-fun m!2911441 () Bool)

(assert (=> b!2576814 m!2911441))

(assert (=> b!2576814 m!2911441))

(declare-fun m!2911443 () Bool)

(assert (=> b!2576815 m!2911443))

(assert (=> b!2576815 m!2911443))

(assert (=> b!2576815 m!2911441))

(declare-fun m!2911445 () Bool)

(assert (=> b!2576813 m!2911445))

(assert (=> b!2576813 m!2911445))

(declare-fun m!2911447 () Bool)

(assert (=> b!2576813 m!2911447))

(declare-fun m!2911449 () Bool)

(assert (=> b!2576816 m!2911449))

(assert (=> start!248980 m!2911447))

(assert (=> start!248980 m!2911447))

(push 1)

(assert (not b!2576833))

(assert (not b!2576814))

(assert (not bs!470400))

(assert (not b!2576815))

(assert (not b!2576838))

(assert (not bs!470404))

(assert (not b!2576828))

(assert (not b!2576836))

(assert (not start!248980))

(assert (not bs!470423))

(assert (not b!2576816))

(assert (not b!2576826))

(assert (not bs!470402))

(assert (not b!2576840))

(assert (not b!2576843))

(assert (not b!2576839))

(assert (not bs!470413))

(assert (not b!2576844))

(assert (not b!2576830))

(assert (not bs!470428))

(assert (not bs!470407))

(assert (not b!2576813))

(assert (not b!2576832))

(assert (not bs!470421))

(assert (not b!2576834))

(assert (not b!2576827))

(assert (not b!2576829))

(assert (not bs!470406))

(assert (not bs!470429))

(assert (not bs!470408))

(assert (not b!2576841))

(assert (not b!2576825))

(assert (not bs!470410))

(assert (not bs!470412))

(assert (not bs!470414))

(assert (not b!2576835))

(assert (not bs!470427))

(assert (not b!2576831))

(assert (not b!2576842))

(assert (not bs!470430))

(assert (not bs!470425))

(assert (not b!2576837))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!470464 () Bool)

(assert (= bs!470464 (and m!2911435 b!2576829)))

(assert (=> bs!470464 m!2911435))

(assert (=> bs!470464 m!2911435))

(declare-fun bs!470465 () Bool)

(assert (= bs!470465 (and m!2911421 m!2911435 m!2911427 b!2576830)))

(assert (=> bs!470465 m!2911435))

(assert (=> bs!470465 m!2911419))

(declare-fun bs!470466 () Bool)

(assert (= bs!470466 (and m!2911421 b!2576831)))

(assert (=> bs!470466 m!2911419))

(assert (=> bs!470466 m!2911419))

(declare-fun bs!470467 () Bool)

(assert (= bs!470467 (and m!2911421 m!2911435 m!2911427 b!2576832)))

(assert (=> bs!470467 m!2911419))

(assert (=> bs!470467 m!2911435))

(declare-fun bs!470468 () Bool)

(assert (= bs!470468 (and m!2911433 m!2911421 b!2576833)))

(assert (=> bs!470468 m!2911419))

(assert (=> bs!470468 m!2911433))

(declare-fun bs!470469 () Bool)

(assert (= bs!470469 (and m!2911433 m!2911435 m!2911427 b!2576834)))

(assert (=> bs!470469 m!2911435))

(assert (=> bs!470469 m!2911433))

(declare-fun bs!470470 () Bool)

(assert (= bs!470470 (and m!2911433 b!2576835)))

(assert (=> bs!470470 m!2911433))

(assert (=> bs!470470 m!2911433))

(declare-fun bs!470471 () Bool)

(assert (= bs!470471 (and m!2911433 m!2911421 b!2576836)))

(assert (=> bs!470471 m!2911433))

(assert (=> bs!470471 m!2911419))

(declare-fun bs!470472 () Bool)

(assert (= bs!470472 (and m!2911433 m!2911435 m!2911427 b!2576837)))

(assert (=> bs!470472 m!2911433))

(assert (=> bs!470472 m!2911435))

(declare-fun bs!470473 () Bool)

(assert (= bs!470473 (and m!2911417 m!2911421 m!2911419 b!2576838)))

(assert (=> bs!470473 m!2911419))

(declare-fun m!2911489 () Bool)

(assert (=> bs!470473 m!2911489))

(declare-fun bs!470474 () Bool)

(assert (= bs!470474 (and m!2911417 m!2911435 m!2911427 b!2576839)))

(assert (=> bs!470474 m!2911435))

(assert (=> bs!470474 m!2911489))

(declare-fun bs!470475 () Bool)

(assert (= bs!470475 (and m!2911417 m!2911433 m!2911425 b!2576840)))

(assert (=> bs!470475 m!2911433))

(assert (=> bs!470475 m!2911489))

(declare-fun bs!470476 () Bool)

(assert (= bs!470476 (and m!2911417 b!2576841)))

(assert (=> bs!470476 m!2911489))

(assert (=> bs!470476 m!2911489))

(declare-fun bs!470477 () Bool)

(assert (= bs!470477 (and m!2911417 m!2911421 m!2911419 b!2576842)))

(assert (=> bs!470477 m!2911489))

(assert (=> bs!470477 m!2911419))

(declare-fun bs!470478 () Bool)

(assert (= bs!470478 (and m!2911417 m!2911435 m!2911427 b!2576843)))

(assert (=> bs!470478 m!2911489))

(assert (=> bs!470478 m!2911435))

(declare-fun bs!470479 () Bool)

(assert (= bs!470479 (and m!2911417 m!2911433 m!2911425 b!2576844)))

(assert (=> bs!470479 m!2911489))

(assert (=> bs!470479 m!2911433))

(push 1)

(assert (not b!2576833))

(assert (not b!2576814))

(assert (not bs!470400))

(assert (not b!2576815))

(assert (not b!2576838))

(assert (not bs!470404))

(assert (not b!2576828))

(assert (not b!2576836))

(assert (not start!248980))

(assert (not bs!470423))

(assert (not b!2576816))

(assert (not b!2576826))

(assert (not bs!470402))

(assert (not b!2576840))

(assert (not b!2576843))

(assert (not b!2576839))

(assert (not bs!470413))

(assert (not b!2576844))

(assert (not b!2576830))

(assert (not bs!470428))

(assert (not bs!470407))

(assert (not b!2576813))

(assert (not b!2576832))

(assert (not bs!470421))

(assert (not b!2576834))

(assert (not b!2576827))

(assert (not b!2576829))

(assert (not bs!470406))

(assert (not bs!470429))

(assert (not bs!470408))

(assert (not b!2576841))

(assert (not b!2576825))

(assert (not bs!470410))

(assert (not bs!470412))

(assert (not bs!470414))

(assert (not b!2576835))

(assert (not bs!470427))

(assert (not b!2576831))

(assert (not b!2576842))

(assert (not bs!470430))

(assert (not bs!470425))

(assert (not b!2576837))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!728800 () Bool)

(declare-fun list!11181 (Conc!9240) List!29741)

(assert (=> d!728800 (= (list!11178 x!463050) (list!11181 (c!415043 x!463050)))))

(declare-fun bs!470502 () Bool)

(assert (= bs!470502 d!728800))

(declare-fun m!2911505 () Bool)

(assert (=> bs!470502 m!2911505))

(assert (=> b!2576814 d!728800))

(declare-fun d!728802 () Bool)

(declare-fun isBalanced!2807 (Conc!9240) Bool)

(assert (=> d!728802 (= (inv!39906 x!463050) (isBalanced!2807 (c!415043 x!463050)))))

(declare-fun bs!470503 () Bool)

(assert (= bs!470503 d!728802))

(declare-fun m!2911507 () Bool)

(assert (=> bs!470503 m!2911507))

(assert (=> b!2576814 d!728802))

(declare-fun d!728804 () Bool)

(declare-fun choose!15196 (Int) Bool)

(assert (=> d!728804 (= (Forall2!752 lambda!95023) (choose!15196 lambda!95023))))

(declare-fun bs!470504 () Bool)

(assert (= bs!470504 d!728804))

(declare-fun m!2911509 () Bool)

(assert (=> bs!470504 m!2911509))

(assert (=> b!2576814 d!728804))

(declare-fun d!728806 () Bool)

(assert (=> d!728806 (= (inv!39906 x!463049) (isBalanced!2807 (c!415043 x!463049)))))

(declare-fun bs!470505 () Bool)

(assert (= bs!470505 d!728806))

(declare-fun m!2911511 () Bool)

(assert (=> bs!470505 m!2911511))

(assert (=> b!2576814 d!728806))

(declare-fun d!728808 () Bool)

(assert (=> d!728808 (= (list!11178 x!463049) (list!11181 (c!415043 x!463049)))))

(declare-fun bs!470506 () Bool)

(assert (= bs!470506 d!728808))

(declare-fun m!2911513 () Bool)

(assert (=> bs!470506 m!2911513))

(assert (=> b!2576814 d!728808))

(declare-fun d!728810 () Bool)

(declare-fun efficientList!354 (BalanceConc!18094) List!29741)

(assert (=> d!728810 (= (toValue!24 thiss!4369 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!463048))) (NewLineValue!4704 (efficientList!354 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!463048)))))))

(declare-fun bs!470507 () Bool)

(assert (= bs!470507 d!728810))

(assert (=> bs!470507 m!2911415))

(declare-fun m!2911515 () Bool)

(assert (=> bs!470507 m!2911515))

(assert (=> b!2576844 d!728810))

(declare-fun d!728812 () Bool)

(assert (=> d!728812 (= (toValue!24 thiss!4369 x!463049) (NewLineValue!4704 (efficientList!354 x!463049)))))

(declare-fun bs!470508 () Bool)

(assert (= bs!470508 d!728812))

(declare-fun m!2911517 () Bool)

(assert (=> bs!470508 m!2911517))

(assert (=> b!2576844 d!728812))

(declare-fun d!728814 () Bool)

(assert (=> d!728814 (= (list!11178 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!463048))) (list!11181 (c!415043 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!463048)))))))

(declare-fun bs!470509 () Bool)

(assert (= bs!470509 d!728814))

(declare-fun m!2911519 () Bool)

(assert (=> bs!470509 m!2911519))

(assert (=> bs!470427 d!728814))

(assert (=> bs!470402 d!728800))

(declare-fun d!728816 () Bool)

(assert (=> d!728816 (= (list!11178 x!463048) (list!11181 (c!415043 x!463048)))))

(declare-fun bs!470510 () Bool)

(assert (= bs!470510 d!728816))

(declare-fun m!2911521 () Bool)

(assert (=> bs!470510 m!2911521))

(assert (=> bs!470421 d!728816))

(assert (=> bs!470421 d!728814))

(declare-fun bs!470511 () Bool)

(declare-fun d!728818 () Bool)

(assert (= bs!470511 (and d!728818 start!248980)))

(declare-fun lambda!95062 () Int)

(assert (=> bs!470511 (not (= lambda!95062 lambda!95020))))

(assert (=> d!728818 true))

(declare-fun order!15761 () Int)

(declare-fun order!15763 () Int)

(declare-fun dynLambda!12519 (Int Int) Int)

(declare-fun dynLambda!12520 (Int Int) Int)

(assert (=> d!728818 (< (dynLambda!12519 order!15761 lambda!95021) (dynLambda!12520 order!15763 lambda!95062))))

(assert (=> d!728818 true))

(declare-fun order!15765 () Int)

(declare-fun dynLambda!12521 (Int Int) Int)

(assert (=> d!728818 (< (dynLambda!12521 order!15765 lambda!95022) (dynLambda!12520 order!15763 lambda!95062))))

(assert (=> d!728818 (= (semiInverseModEq!1867 lambda!95021 lambda!95022) (Forall!1147 lambda!95062))))

(declare-fun bs!470512 () Bool)

(assert (= bs!470512 d!728818))

(declare-fun m!2911523 () Bool)

(assert (=> bs!470512 m!2911523))

(assert (=> b!2576813 d!728818))

(declare-fun d!728820 () Bool)

(declare-fun choose!15197 (Int) Bool)

(assert (=> d!728820 (= (Forall!1147 lambda!95020) (choose!15197 lambda!95020))))

(declare-fun bs!470513 () Bool)

(assert (= bs!470513 d!728820))

(declare-fun m!2911525 () Bool)

(assert (=> bs!470513 m!2911525))

(assert (=> b!2576813 d!728820))

(declare-fun d!728822 () Bool)

(declare-fun c!415047 () Bool)

(assert (=> d!728822 (= c!415047 (is-Node!9240 (c!415043 x!463050)))))

(declare-fun e!1626045 () Bool)

(assert (=> d!728822 (= (inv!39905 (c!415043 x!463050)) e!1626045)))

(declare-fun b!2576911 () Bool)

(declare-fun inv!39911 (Conc!9240) Bool)

(assert (=> b!2576911 (= e!1626045 (inv!39911 (c!415043 x!463050)))))

(declare-fun b!2576912 () Bool)

(declare-fun e!1626046 () Bool)

(assert (=> b!2576912 (= e!1626045 e!1626046)))

(declare-fun res!1083943 () Bool)

(assert (=> b!2576912 (= res!1083943 (not (is-Leaf!14092 (c!415043 x!463050))))))

(assert (=> b!2576912 (=> res!1083943 e!1626046)))

(declare-fun b!2576913 () Bool)

(declare-fun inv!39912 (Conc!9240) Bool)

(assert (=> b!2576913 (= e!1626046 (inv!39912 (c!415043 x!463050)))))

(assert (= (and d!728822 c!415047) b!2576911))

(assert (= (and d!728822 (not c!415047)) b!2576912))

(assert (= (and b!2576912 (not res!1083943)) b!2576913))

(declare-fun m!2911527 () Bool)

(assert (=> b!2576911 m!2911527))

(declare-fun m!2911529 () Bool)

(assert (=> b!2576913 m!2911529))

(assert (=> b!2576828 d!728822))

(assert (=> bs!470407 d!728816))

(assert (=> bs!470407 d!728800))

(assert (=> b!2576826 d!728812))

(declare-fun d!728824 () Bool)

(assert (=> d!728824 (= (toValue!24 thiss!4369 x!463050) (NewLineValue!4704 (efficientList!354 x!463050)))))

(declare-fun bs!470514 () Bool)

(assert (= bs!470514 d!728824))

(declare-fun m!2911531 () Bool)

(assert (=> bs!470514 m!2911531))

(assert (=> b!2576826 d!728824))

(assert (=> bs!470430 d!728814))

(assert (=> bs!470430 d!728808))

(declare-fun d!728826 () Bool)

(declare-fun c!415048 () Bool)

(assert (=> d!728826 (= c!415048 (is-Node!9240 (c!415043 x!463049)))))

(declare-fun e!1626047 () Bool)

(assert (=> d!728826 (= (inv!39905 (c!415043 x!463049)) e!1626047)))

(declare-fun b!2576914 () Bool)

(assert (=> b!2576914 (= e!1626047 (inv!39911 (c!415043 x!463049)))))

(declare-fun b!2576915 () Bool)

(declare-fun e!1626048 () Bool)

(assert (=> b!2576915 (= e!1626047 e!1626048)))

(declare-fun res!1083944 () Bool)

(assert (=> b!2576915 (= res!1083944 (not (is-Leaf!14092 (c!415043 x!463049))))))

(assert (=> b!2576915 (=> res!1083944 e!1626048)))

(declare-fun b!2576916 () Bool)

(assert (=> b!2576916 (= e!1626048 (inv!39912 (c!415043 x!463049)))))

(assert (= (and d!728826 c!415048) b!2576914))

(assert (= (and d!728826 (not c!415048)) b!2576915))

(assert (= (and b!2576915 (not res!1083944)) b!2576916))

(declare-fun m!2911533 () Bool)

(assert (=> b!2576914 m!2911533))

(declare-fun m!2911535 () Bool)

(assert (=> b!2576916 m!2911535))

(assert (=> b!2576827 d!728826))

(assert (=> bs!470412 d!728808))

(declare-fun d!728828 () Bool)

(declare-fun c!415049 () Bool)

(assert (=> d!728828 (= c!415049 (is-Node!9240 (c!415043 x!463048)))))

(declare-fun e!1626049 () Bool)

(assert (=> d!728828 (= (inv!39905 (c!415043 x!463048)) e!1626049)))

(declare-fun b!2576917 () Bool)

(assert (=> b!2576917 (= e!1626049 (inv!39911 (c!415043 x!463048)))))

(declare-fun b!2576918 () Bool)

(declare-fun e!1626050 () Bool)

(assert (=> b!2576918 (= e!1626049 e!1626050)))

(declare-fun res!1083945 () Bool)

(assert (=> b!2576918 (= res!1083945 (not (is-Leaf!14092 (c!415043 x!463048))))))

(assert (=> b!2576918 (=> res!1083945 e!1626050)))

(declare-fun b!2576919 () Bool)

(assert (=> b!2576919 (= e!1626050 (inv!39912 (c!415043 x!463048)))))

(assert (= (and d!728828 c!415049) b!2576917))

(assert (= (and d!728828 (not c!415049)) b!2576918))

(assert (= (and b!2576918 (not res!1083945)) b!2576919))

(declare-fun m!2911537 () Bool)

(assert (=> b!2576917 m!2911537))

(declare-fun m!2911539 () Bool)

(assert (=> b!2576919 m!2911539))

(assert (=> b!2576825 d!728828))

(declare-fun d!728830 () Bool)

(assert (=> d!728830 (= (toValue!24 thiss!4369 x!463048) (NewLineValue!4704 (efficientList!354 x!463048)))))

(declare-fun bs!470515 () Bool)

(assert (= bs!470515 d!728830))

(declare-fun m!2911541 () Bool)

(assert (=> bs!470515 m!2911541))

(assert (=> b!2576831 d!728830))

(assert (=> b!2576840 d!728812))

(assert (=> b!2576840 d!728810))

(assert (=> bs!470400 d!728814))

(declare-fun d!728832 () Bool)

(declare-fun c!415053 () Bool)

(assert (=> d!728832 (= c!415053 (is-NewLineValue!4704 (toValue!24 thiss!4369 x!463048)))))

(declare-fun e!1626053 () BalanceConc!18094)

(assert (=> d!728832 (= (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!463048)) e!1626053)))

(declare-fun b!2576924 () Bool)

(declare-fun seqFromList!3139 (List!29741) BalanceConc!18094)

(assert (=> b!2576924 (= e!1626053 (seqFromList!3139 (value!144999 (toValue!24 thiss!4369 x!463048))))))

(declare-fun b!2576925 () Bool)

(assert (=> b!2576925 (= e!1626053 (BalanceConc!18095 Empty!9240))))

(assert (= (and d!728832 c!415053) b!2576924))

(assert (= (and d!728832 (not c!415053)) b!2576925))

(declare-fun m!2911543 () Bool)

(assert (=> b!2576924 m!2911543))

(assert (=> bs!470400 d!728832))

(assert (=> bs!470400 d!728830))

(assert (=> bs!470400 d!728816))

(assert (=> bs!470408 d!728816))

(assert (=> bs!470408 d!728808))

(assert (=> b!2576829 d!728824))

(assert (=> b!2576838 d!728830))

(assert (=> b!2576838 d!728810))

(assert (=> bs!470413 d!728808))

(assert (=> bs!470413 d!728816))

(assert (=> b!2576832 d!728830))

(assert (=> b!2576832 d!728824))

(assert (=> b!2576841 d!728810))

(declare-fun bs!470516 () Bool)

(declare-fun d!728834 () Bool)

(assert (= bs!470516 (and d!728834 b!2576814)))

(declare-fun lambda!95065 () Int)

(assert (=> bs!470516 (not (= lambda!95065 lambda!95023))))

(assert (=> d!728834 true))

(declare-fun order!15767 () Int)

(declare-fun dynLambda!12522 (Int Int) Int)

(assert (=> d!728834 (< (dynLambda!12521 order!15765 lambda!95022) (dynLambda!12522 order!15767 lambda!95065))))

(assert (=> d!728834 (= (equivClasses!1774 lambda!95021 lambda!95022) (Forall2!752 lambda!95065))))

(declare-fun bs!470517 () Bool)

(assert (= bs!470517 d!728834))

(declare-fun m!2911545 () Bool)

(assert (=> bs!470517 m!2911545))

(assert (=> b!2576815 d!728834))

(assert (=> b!2576815 d!728804))

(assert (=> b!2576835 d!728812))

(declare-fun d!728836 () Bool)

(declare-fun res!1083950 () Bool)

(declare-fun e!1626058 () Bool)

(assert (=> d!728836 (=> (not res!1083950) (not e!1626058))))

(assert (=> d!728836 (= res!1083950 (semiInverseModEq!1867 (toChars!6235 (TokenValueInjection!8893 lambda!95022 lambda!95021)) (toValue!6376 (TokenValueInjection!8893 lambda!95022 lambda!95021))))))

(assert (=> d!728836 (= (inv!39907 (TokenValueInjection!8893 lambda!95022 lambda!95021)) e!1626058)))

(declare-fun b!2576932 () Bool)

(assert (=> b!2576932 (= e!1626058 (equivClasses!1774 (toChars!6235 (TokenValueInjection!8893 lambda!95022 lambda!95021)) (toValue!6376 (TokenValueInjection!8893 lambda!95022 lambda!95021))))))

(assert (= (and d!728836 res!1083950) b!2576932))

(declare-fun m!2911547 () Bool)

(assert (=> d!728836 m!2911547))

(declare-fun m!2911549 () Bool)

(assert (=> b!2576932 m!2911549))

(assert (=> b!2576816 d!728836))

(assert (=> b!2576830 d!728824))

(assert (=> b!2576830 d!728830))

(assert (=> b!2576839 d!728824))

(assert (=> b!2576839 d!728810))

(assert (=> b!2576842 d!728810))

(assert (=> b!2576842 d!728830))

(assert (=> bs!470414 d!728808))

(assert (=> bs!470414 d!728800))

(assert (=> bs!470404 d!728800))

(assert (=> bs!470404 d!728816))

(assert (=> bs!470423 d!728800))

(assert (=> bs!470423 d!728814))

(assert (=> b!2576833 d!728830))

(assert (=> b!2576833 d!728812))

(assert (=> start!248980 d!728814))

(assert (=> start!248980 d!728820))

(declare-fun d!728838 () Bool)

(assert (=> d!728838 (= (inv!39906 x!463048) (isBalanced!2807 (c!415043 x!463048)))))

(declare-fun bs!470518 () Bool)

(assert (= bs!470518 d!728838))

(declare-fun m!2911551 () Bool)

(assert (=> bs!470518 m!2911551))

(assert (=> start!248980 d!728838))

(assert (=> start!248980 d!728816))

(assert (=> start!248980 d!728832))

(assert (=> start!248980 d!728830))

(assert (=> bs!470428 d!728814))

(assert (=> bs!470428 d!728816))

(assert (=> b!2576836 d!728812))

(assert (=> b!2576836 d!728830))

(assert (=> bs!470406 d!728816))

(assert (=> bs!470425 d!728808))

(assert (=> bs!470425 d!728814))

(assert (=> b!2576834 d!728824))

(assert (=> b!2576834 d!728812))

(assert (=> b!2576843 d!728810))

(assert (=> b!2576843 d!728824))

(assert (=> b!2576837 d!728812))

(assert (=> b!2576837 d!728824))

(assert (=> bs!470410 d!728800))

(assert (=> bs!470410 d!728808))

(assert (=> bs!470429 d!728814))

(assert (=> bs!470429 d!728800))

(declare-fun b!2576939 () Bool)

(declare-fun tp!819014 () Bool)

(declare-fun e!1626063 () Bool)

(declare-fun tp!819013 () Bool)

(assert (=> b!2576939 (= e!1626063 (and (inv!39905 (left!22541 (c!415043 x!463050))) tp!819013 (inv!39905 (right!22871 (c!415043 x!463050))) tp!819014))))

(declare-fun b!2576940 () Bool)

(declare-fun inv!39913 (IArray!18485) Bool)

(assert (=> b!2576940 (= e!1626063 (inv!39913 (xs!12224 (c!415043 x!463050))))))

(assert (=> b!2576828 (= tp!818999 (and (inv!39905 (c!415043 x!463050)) e!1626063))))

(assert (= (and b!2576828 (is-Node!9240 (c!415043 x!463050))) b!2576939))

(assert (= (and b!2576828 (is-Leaf!14092 (c!415043 x!463050))) b!2576940))

(declare-fun m!2911553 () Bool)

(assert (=> b!2576939 m!2911553))

(declare-fun m!2911555 () Bool)

(assert (=> b!2576939 m!2911555))

(declare-fun m!2911557 () Bool)

(assert (=> b!2576940 m!2911557))

(assert (=> b!2576828 m!2911439))

(declare-fun e!1626065 () Bool)

(declare-fun tp!819015 () Bool)

(declare-fun tp!819016 () Bool)

(declare-fun b!2576941 () Bool)

(assert (=> b!2576941 (= e!1626065 (and (inv!39905 (left!22541 (c!415043 x!463049))) tp!819015 (inv!39905 (right!22871 (c!415043 x!463049))) tp!819016))))

(declare-fun b!2576942 () Bool)

(assert (=> b!2576942 (= e!1626065 (inv!39913 (xs!12224 (c!415043 x!463049))))))

(assert (=> b!2576827 (= tp!818998 (and (inv!39905 (c!415043 x!463049)) e!1626065))))

(assert (= (and b!2576827 (is-Node!9240 (c!415043 x!463049))) b!2576941))

(assert (= (and b!2576827 (is-Leaf!14092 (c!415043 x!463049))) b!2576942))

(declare-fun m!2911559 () Bool)

(assert (=> b!2576941 m!2911559))

(declare-fun m!2911561 () Bool)

(assert (=> b!2576941 m!2911561))

(declare-fun m!2911563 () Bool)

(assert (=> b!2576942 m!2911563))

(assert (=> b!2576827 m!2911437))

(declare-fun e!1626067 () Bool)

(declare-fun tp!819018 () Bool)

(declare-fun b!2576943 () Bool)

(declare-fun tp!819017 () Bool)

(assert (=> b!2576943 (= e!1626067 (and (inv!39905 (left!22541 (c!415043 x!463048))) tp!819017 (inv!39905 (right!22871 (c!415043 x!463048))) tp!819018))))

(declare-fun b!2576944 () Bool)

(assert (=> b!2576944 (= e!1626067 (inv!39913 (xs!12224 (c!415043 x!463048))))))

(assert (=> b!2576825 (= tp!818997 (and (inv!39905 (c!415043 x!463048)) e!1626067))))

(assert (= (and b!2576825 (is-Node!9240 (c!415043 x!463048))) b!2576943))

(assert (= (and b!2576825 (is-Leaf!14092 (c!415043 x!463048))) b!2576944))

(declare-fun m!2911565 () Bool)

(assert (=> b!2576943 m!2911565))

(declare-fun m!2911567 () Bool)

(assert (=> b!2576943 m!2911567))

(declare-fun m!2911569 () Bool)

(assert (=> b!2576944 m!2911569))

(assert (=> b!2576825 m!2911413))

(push 1)

(assert (not d!728830))

(assert (not b!2576924))

(assert (not d!728834))

(assert (not b!2576919))

(assert (not b!2576940))

(assert (not b!2576828))

(assert (not b!2576942))

(assert (not d!728800))

(assert (not d!728806))

(assert (not d!728816))

(assert (not b!2576825))

(assert (not b!2576939))

(assert (not d!728820))

(assert (not d!728810))

(assert (not d!728802))

(assert (not b!2576943))

(assert (not b!2576917))

(assert (not d!728838))

(assert (not b!2576916))

(assert (not d!728824))

(assert (not d!728836))

(assert (not b!2576932))

(assert (not d!728814))

(assert (not b!2576913))

(assert (not b!2576827))

(assert (not b!2576911))

(assert (not b!2576914))

(assert (not d!728808))

(assert (not d!728818))

(assert (not d!728812))

(assert (not b!2576944))

(assert (not d!728804))

(assert (not b!2576941))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

