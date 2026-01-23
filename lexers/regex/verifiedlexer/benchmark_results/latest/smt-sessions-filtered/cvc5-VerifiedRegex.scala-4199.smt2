; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!227992 () Bool)

(assert start!227992)

(assert (=> start!227992 true))

(declare-fun b!2311978 () Bool)

(assert (=> b!2311978 true))

(assert (=> b!2311978 true))

(declare-fun b!2311979 () Bool)

(assert (=> b!2311979 true))

(declare-fun b!2311990 () Bool)

(declare-fun e!1481710 () Bool)

(declare-datatypes ((List!27618 0))(
  ( (Nil!27520) (Cons!27520 (h!32921 (_ BitVec 16)) (t!207190 List!27618)) )
))
(declare-datatypes ((IArray!17981 0))(
  ( (IArray!17982 (innerList!9048 List!27618)) )
))
(declare-datatypes ((Conc!8988 0))(
  ( (Node!8988 (left!20873 Conc!8988) (right!21203 Conc!8988) (csize!18206 Int) (cheight!9199 Int)) (Leaf!13188 (xs!11930 IArray!17981) (csize!18207 Int)) (Empty!8988) )
))
(declare-datatypes ((BalanceConc!17708 0))(
  ( (BalanceConc!17709 (c!366593 Conc!8988)) )
))
(declare-fun x!441256 () BalanceConc!17708)

(declare-fun tp!733454 () Bool)

(declare-fun inv!37217 (Conc!8988) Bool)

(assert (=> b!2311990 (= e!1481710 (and (inv!37217 (c!366593 x!441256)) tp!733454))))

(declare-datatypes ((IntegerValueInjection!128 0))(
  ( (IntegerValueInjection!129) )
))
(declare-fun thiss!2978 () IntegerValueInjection!128)

(declare-fun inst!1342 () Bool)

(declare-fun inv!37218 (BalanceConc!17708) Bool)

(declare-fun list!10894 (BalanceConc!17708) List!27618)

(declare-datatypes ((TokenValue!4584 0))(
  ( (FloatLiteralValue!9168 (text!32533 List!27618)) (TokenValueExt!4583 (__x!18220 Int)) (Broken!22920 (value!139831 List!27618)) (Object!4681) (End!4584) (Def!4584) (Underscore!4584) (Match!4584) (Else!4584) (Error!4584) (Case!4584) (If!4584) (Extends!4584) (Abstract!4584) (Class!4584) (Val!4584) (DelimiterValue!9168 (del!4644 List!27618)) (KeywordValue!4590 (value!139832 List!27618)) (CommentValue!9168 (value!139833 List!27618)) (WhitespaceValue!9168 (value!139834 List!27618)) (IndentationValue!4584 (value!139835 List!27618)) (String!30021) (Int32!4584) (Broken!22921 (value!139836 List!27618)) (Boolean!4585) (Unit!40448) (OperatorValue!4587 (op!4644 List!27618)) (IdentifierValue!9168 (value!139837 List!27618)) (IdentifierValue!9169 (value!139838 List!27618)) (WhitespaceValue!9169 (value!139839 List!27618)) (True!9168) (False!9168) (Broken!22922 (value!139840 List!27618)) (Broken!22923 (value!139841 List!27618)) (True!9169) (RightBrace!4584) (RightBracket!4584) (Colon!4584) (Null!4584) (Comma!4584) (LeftBracket!4584) (False!9169) (LeftBrace!4584) (ImaginaryLiteralValue!4584 (text!32534 List!27618)) (StringLiteralValue!13752 (value!139842 List!27618)) (EOFValue!4584 (value!139843 List!27618)) (IdentValue!4584 (value!139844 List!27618)) (DelimiterValue!9169 (value!139845 List!27618)) (DedentValue!4584 (value!139846 List!27618)) (NewLineValue!4584 (value!139847 List!27618)) (IntegerValue!13752 (value!139848 (_ BitVec 32)) (text!32535 List!27618)) (IntegerValue!13753 (value!139849 Int) (text!32536 List!27618)) (Times!4584) (Or!4584) (Equal!4584) (Minus!4584) (Broken!22924 (value!139850 List!27618)) (And!4584) (Div!4584) (LessEqual!4584) (Mod!4584) (Concat!11348) (Not!4584) (Plus!4584) (SpaceValue!4584 (value!139851 List!27618)) (IntegerValue!13754 (value!139852 Int) (text!32537 List!27618)) (StringLiteralValue!13753 (text!32538 List!27618)) (FloatLiteralValue!9169 (text!32539 List!27618)) (BytesLiteralValue!4584 (value!139853 List!27618)) (CommentValue!9169 (value!139854 List!27618)) (StringLiteralValue!13754 (value!139855 List!27618)) (ErrorTokenValue!4584 (msg!4645 List!27618)) )
))
(declare-fun toCharacters!0 (IntegerValueInjection!128 TokenValue!4584) BalanceConc!17708)

(declare-fun toValue!7 (IntegerValueInjection!128 BalanceConc!17708) TokenValue!4584)

(assert (=> start!227992 (= inst!1342 (=> (and (inv!37218 x!441256) e!1481710) (= (list!10894 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441256))) (list!10894 x!441256))))))

(assert (= start!227992 b!2311990))

(declare-fun m!2739431 () Bool)

(assert (=> b!2311990 m!2739431))

(declare-fun m!2739433 () Bool)

(assert (=> start!227992 m!2739433))

(declare-fun m!2739435 () Bool)

(assert (=> start!227992 m!2739435))

(declare-fun m!2739437 () Bool)

(assert (=> start!227992 m!2739437))

(declare-fun m!2739439 () Bool)

(assert (=> start!227992 m!2739439))

(declare-fun m!2739441 () Bool)

(assert (=> start!227992 m!2739441))

(assert (=> start!227992 m!2739435))

(assert (=> start!227992 m!2739439))

(declare-fun res!988347 () Bool)

(declare-fun e!1481712 () Bool)

(assert (=> b!2311979 (=> res!988347 e!1481712)))

(declare-fun x!441257 () BalanceConc!17708)

(declare-fun x!441258 () BalanceConc!17708)

(assert (=> b!2311979 (= res!988347 (not (= (list!10894 x!441257) (list!10894 x!441258))))))

(declare-fun e!1481713 () Bool)

(declare-fun e!1481711 () Bool)

(declare-fun inst!1343 () Bool)

(assert (=> b!2311979 (= inst!1343 (=> (and (inv!37218 x!441257) e!1481713 (inv!37218 x!441258) e!1481711) e!1481712))))

(declare-fun b!2311991 () Bool)

(assert (=> b!2311991 (= e!1481712 (= (toValue!7 thiss!2978 x!441257) (toValue!7 thiss!2978 x!441258)))))

(declare-fun b!2311992 () Bool)

(declare-fun tp!733456 () Bool)

(assert (=> b!2311992 (= e!1481713 (and (inv!37217 (c!366593 x!441257)) tp!733456))))

(declare-fun b!2311993 () Bool)

(declare-fun tp!733455 () Bool)

(assert (=> b!2311993 (= e!1481711 (and (inv!37217 (c!366593 x!441258)) tp!733455))))

(assert (= (and b!2311979 (not res!988347)) b!2311991))

(assert (= b!2311979 b!2311992))

(assert (= b!2311979 b!2311993))

(declare-fun m!2739443 () Bool)

(assert (=> b!2311979 m!2739443))

(declare-fun m!2739445 () Bool)

(assert (=> b!2311979 m!2739445))

(declare-fun m!2739447 () Bool)

(assert (=> b!2311979 m!2739447))

(declare-fun m!2739449 () Bool)

(assert (=> b!2311979 m!2739449))

(declare-fun m!2739451 () Bool)

(assert (=> b!2311991 m!2739451))

(declare-fun m!2739453 () Bool)

(assert (=> b!2311991 m!2739453))

(declare-fun m!2739455 () Bool)

(assert (=> b!2311992 m!2739455))

(declare-fun m!2739457 () Bool)

(assert (=> b!2311993 m!2739457))

(declare-fun bs!458534 () Bool)

(declare-fun neg-inst!1342 () Bool)

(declare-fun s!224875 () Bool)

(assert (= bs!458534 (and neg-inst!1342 s!224875)))

(assert (=> bs!458534 (=> true (= (list!10894 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441256))) (list!10894 x!441256)))))

(assert (=> m!2739435 m!2739439))

(assert (=> m!2739435 m!2739441))

(assert (=> m!2739435 m!2739433))

(assert (=> m!2739435 s!224875))

(assert (=> m!2739433 s!224875))

(declare-fun bs!458535 () Bool)

(assert (= bs!458535 (and neg-inst!1342 start!227992)))

(assert (=> bs!458535 (= true inst!1342)))

(declare-fun bs!458536 () Bool)

(declare-fun neg-inst!1343 () Bool)

(declare-fun s!224877 () Bool)

(assert (= bs!458536 (and neg-inst!1343 s!224877)))

(declare-fun res!988348 () Bool)

(declare-fun e!1481714 () Bool)

(assert (=> bs!458536 (=> res!988348 e!1481714)))

(assert (=> bs!458536 (= res!988348 (not (= (list!10894 x!441258) (list!10894 x!441258))))))

(assert (=> bs!458536 (=> true e!1481714)))

(declare-fun b!2311994 () Bool)

(assert (=> b!2311994 (= e!1481714 (= (toValue!7 thiss!2978 x!441258) (toValue!7 thiss!2978 x!441258)))))

(assert (= (and bs!458536 (not res!988348)) b!2311994))

(assert (=> m!2739453 m!2739445))

(assert (=> m!2739453 m!2739445))

(assert (=> m!2739453 s!224877))

(assert (=> m!2739453 s!224877))

(declare-fun bs!458537 () Bool)

(declare-fun s!224879 () Bool)

(assert (= bs!458537 (and neg-inst!1343 s!224879)))

(declare-fun res!988349 () Bool)

(declare-fun e!1481715 () Bool)

(assert (=> bs!458537 (=> res!988349 e!1481715)))

(assert (=> bs!458537 (= res!988349 (not (= (list!10894 x!441257) (list!10894 x!441258))))))

(assert (=> bs!458537 (=> true e!1481715)))

(declare-fun b!2311995 () Bool)

(assert (=> b!2311995 (= e!1481715 (= (toValue!7 thiss!2978 x!441257) (toValue!7 thiss!2978 x!441258)))))

(assert (= (and bs!458537 (not res!988349)) b!2311995))

(declare-fun bs!458538 () Bool)

(assert (= bs!458538 (and m!2739443 m!2739453)))

(assert (=> bs!458538 m!2739443))

(assert (=> bs!458538 m!2739445))

(assert (=> bs!458538 s!224879))

(declare-fun bs!458539 () Bool)

(declare-fun s!224881 () Bool)

(assert (= bs!458539 (and neg-inst!1343 s!224881)))

(declare-fun res!988350 () Bool)

(declare-fun e!1481716 () Bool)

(assert (=> bs!458539 (=> res!988350 e!1481716)))

(assert (=> bs!458539 (= res!988350 (not (= (list!10894 x!441257) (list!10894 x!441257))))))

(assert (=> bs!458539 (=> true e!1481716)))

(declare-fun b!2311996 () Bool)

(assert (=> b!2311996 (= e!1481716 (= (toValue!7 thiss!2978 x!441257) (toValue!7 thiss!2978 x!441257)))))

(assert (= (and bs!458539 (not res!988350)) b!2311996))

(assert (=> m!2739443 s!224881))

(declare-fun bs!458540 () Bool)

(declare-fun s!224883 () Bool)

(assert (= bs!458540 (and neg-inst!1343 s!224883)))

(declare-fun res!988351 () Bool)

(declare-fun e!1481717 () Bool)

(assert (=> bs!458540 (=> res!988351 e!1481717)))

(assert (=> bs!458540 (= res!988351 (not (= (list!10894 x!441258) (list!10894 x!441257))))))

(assert (=> bs!458540 (=> true e!1481717)))

(declare-fun b!2311997 () Bool)

(assert (=> b!2311997 (= e!1481717 (= (toValue!7 thiss!2978 x!441258) (toValue!7 thiss!2978 x!441257)))))

(assert (= (and bs!458540 (not res!988351)) b!2311997))

(assert (=> bs!458538 m!2739445))

(assert (=> bs!458538 m!2739443))

(assert (=> bs!458538 s!224883))

(assert (=> m!2739443 s!224881))

(declare-fun bs!458541 () Bool)

(assert (= bs!458541 (and m!2739445 m!2739443)))

(assert (=> bs!458541 s!224883))

(declare-fun bs!458542 () Bool)

(assert (= bs!458542 (and m!2739445 m!2739453)))

(assert (=> bs!458542 s!224877))

(assert (=> m!2739445 s!224877))

(assert (=> bs!458541 s!224879))

(assert (=> bs!458542 s!224877))

(assert (=> m!2739445 s!224877))

(declare-fun bs!458543 () Bool)

(declare-fun s!224885 () Bool)

(assert (= bs!458543 (and neg-inst!1343 s!224885)))

(declare-fun res!988352 () Bool)

(declare-fun e!1481718 () Bool)

(assert (=> bs!458543 (=> res!988352 e!1481718)))

(assert (=> bs!458543 (= res!988352 (not (= (list!10894 x!441256) (list!10894 x!441257))))))

(assert (=> bs!458543 (=> true e!1481718)))

(declare-fun b!2311998 () Bool)

(assert (=> b!2311998 (= e!1481718 (= (toValue!7 thiss!2978 x!441256) (toValue!7 thiss!2978 x!441257)))))

(assert (= (and bs!458543 (not res!988352)) b!2311998))

(declare-fun bs!458544 () Bool)

(assert (= bs!458544 (and m!2739435 m!2739443)))

(assert (=> bs!458544 m!2739433))

(assert (=> bs!458544 m!2739443))

(assert (=> bs!458544 s!224885))

(declare-fun bs!458545 () Bool)

(declare-fun s!224887 () Bool)

(assert (= bs!458545 (and neg-inst!1343 s!224887)))

(declare-fun res!988353 () Bool)

(declare-fun e!1481719 () Bool)

(assert (=> bs!458545 (=> res!988353 e!1481719)))

(assert (=> bs!458545 (= res!988353 (not (= (list!10894 x!441256) (list!10894 x!441258))))))

(assert (=> bs!458545 (=> true e!1481719)))

(declare-fun b!2311999 () Bool)

(assert (=> b!2311999 (= e!1481719 (= (toValue!7 thiss!2978 x!441256) (toValue!7 thiss!2978 x!441258)))))

(assert (= (and bs!458545 (not res!988353)) b!2311999))

(declare-fun bs!458546 () Bool)

(assert (= bs!458546 (and m!2739435 m!2739453 m!2739445)))

(assert (=> bs!458546 m!2739433))

(assert (=> bs!458546 m!2739445))

(assert (=> bs!458546 s!224887))

(declare-fun bs!458547 () Bool)

(declare-fun s!224889 () Bool)

(assert (= bs!458547 (and neg-inst!1343 s!224889)))

(declare-fun res!988354 () Bool)

(declare-fun e!1481720 () Bool)

(assert (=> bs!458547 (=> res!988354 e!1481720)))

(assert (=> bs!458547 (= res!988354 (not (= (list!10894 x!441256) (list!10894 x!441256))))))

(assert (=> bs!458547 (=> true e!1481720)))

(declare-fun b!2312000 () Bool)

(assert (=> b!2312000 (= e!1481720 (= (toValue!7 thiss!2978 x!441256) (toValue!7 thiss!2978 x!441256)))))

(assert (= (and bs!458547 (not res!988354)) b!2312000))

(assert (=> m!2739435 m!2739433))

(assert (=> m!2739435 m!2739433))

(assert (=> m!2739435 s!224889))

(declare-fun bs!458548 () Bool)

(declare-fun s!224891 () Bool)

(assert (= bs!458548 (and neg-inst!1343 s!224891)))

(declare-fun res!988355 () Bool)

(declare-fun e!1481721 () Bool)

(assert (=> bs!458548 (=> res!988355 e!1481721)))

(assert (=> bs!458548 (= res!988355 (not (= (list!10894 x!441257) (list!10894 x!441256))))))

(assert (=> bs!458548 (=> true e!1481721)))

(declare-fun b!2312001 () Bool)

(assert (=> b!2312001 (= e!1481721 (= (toValue!7 thiss!2978 x!441257) (toValue!7 thiss!2978 x!441256)))))

(assert (= (and bs!458548 (not res!988355)) b!2312001))

(assert (=> bs!458544 m!2739443))

(assert (=> bs!458544 m!2739433))

(assert (=> bs!458544 s!224891))

(declare-fun bs!458549 () Bool)

(declare-fun s!224893 () Bool)

(assert (= bs!458549 (and neg-inst!1343 s!224893)))

(declare-fun res!988356 () Bool)

(declare-fun e!1481722 () Bool)

(assert (=> bs!458549 (=> res!988356 e!1481722)))

(assert (=> bs!458549 (= res!988356 (not (= (list!10894 x!441258) (list!10894 x!441256))))))

(assert (=> bs!458549 (=> true e!1481722)))

(declare-fun b!2312002 () Bool)

(assert (=> b!2312002 (= e!1481722 (= (toValue!7 thiss!2978 x!441258) (toValue!7 thiss!2978 x!441256)))))

(assert (= (and bs!458549 (not res!988356)) b!2312002))

(assert (=> bs!458546 m!2739445))

(assert (=> bs!458546 m!2739433))

(assert (=> bs!458546 s!224893))

(assert (=> m!2739435 s!224889))

(declare-fun bs!458550 () Bool)

(assert (= bs!458550 (and m!2739451 m!2739443)))

(assert (=> bs!458550 s!224881))

(declare-fun bs!458551 () Bool)

(assert (= bs!458551 (and m!2739451 m!2739453 m!2739445)))

(assert (=> bs!458551 s!224879))

(declare-fun bs!458552 () Bool)

(assert (= bs!458552 (and m!2739451 m!2739435)))

(assert (=> bs!458552 s!224891))

(assert (=> m!2739451 s!224881))

(assert (=> bs!458550 s!224881))

(assert (=> bs!458551 s!224883))

(assert (=> bs!458552 s!224885))

(assert (=> m!2739451 s!224881))

(declare-fun bs!458553 () Bool)

(declare-fun s!224895 () Bool)

(assert (= bs!458553 (and neg-inst!1343 s!224895)))

(declare-fun res!988357 () Bool)

(declare-fun e!1481723 () Bool)

(assert (=> bs!458553 (=> res!988357 e!1481723)))

(assert (=> bs!458553 (= res!988357 (not (= (list!10894 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441256))) (list!10894 x!441257))))))

(assert (=> bs!458553 (=> true e!1481723)))

(declare-fun b!2312003 () Bool)

(assert (=> b!2312003 (= e!1481723 (= (toValue!7 thiss!2978 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441256))) (toValue!7 thiss!2978 x!441257)))))

(assert (= (and bs!458553 (not res!988357)) b!2312003))

(declare-fun bs!458554 () Bool)

(assert (= bs!458554 (and m!2739441 m!2739443 m!2739451)))

(assert (=> bs!458554 m!2739441))

(assert (=> bs!458554 m!2739443))

(assert (=> bs!458554 s!224895))

(declare-fun bs!458555 () Bool)

(declare-fun s!224897 () Bool)

(assert (= bs!458555 (and neg-inst!1343 s!224897)))

(declare-fun res!988358 () Bool)

(declare-fun e!1481724 () Bool)

(assert (=> bs!458555 (=> res!988358 e!1481724)))

(assert (=> bs!458555 (= res!988358 (not (= (list!10894 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441256))) (list!10894 x!441258))))))

(assert (=> bs!458555 (=> true e!1481724)))

(declare-fun b!2312004 () Bool)

(assert (=> b!2312004 (= e!1481724 (= (toValue!7 thiss!2978 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441256))) (toValue!7 thiss!2978 x!441258)))))

(assert (= (and bs!458555 (not res!988358)) b!2312004))

(declare-fun bs!458556 () Bool)

(assert (= bs!458556 (and m!2739441 m!2739453 m!2739445)))

(assert (=> bs!458556 m!2739441))

(assert (=> bs!458556 m!2739445))

(assert (=> bs!458556 s!224897))

(declare-fun bs!458557 () Bool)

(declare-fun s!224899 () Bool)

(assert (= bs!458557 (and neg-inst!1343 s!224899)))

(declare-fun res!988359 () Bool)

(declare-fun e!1481725 () Bool)

(assert (=> bs!458557 (=> res!988359 e!1481725)))

(assert (=> bs!458557 (= res!988359 (not (= (list!10894 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441256))) (list!10894 x!441256))))))

(assert (=> bs!458557 (=> true e!1481725)))

(declare-fun b!2312005 () Bool)

(assert (=> b!2312005 (= e!1481725 (= (toValue!7 thiss!2978 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441256))) (toValue!7 thiss!2978 x!441256)))))

(assert (= (and bs!458557 (not res!988359)) b!2312005))

(declare-fun bs!458558 () Bool)

(assert (= bs!458558 (and m!2739441 m!2739435)))

(assert (=> bs!458558 m!2739441))

(assert (=> bs!458558 m!2739433))

(assert (=> bs!458558 s!224899))

(declare-fun bs!458559 () Bool)

(declare-fun s!224901 () Bool)

(assert (= bs!458559 (and neg-inst!1343 s!224901)))

(declare-fun res!988360 () Bool)

(declare-fun e!1481726 () Bool)

(assert (=> bs!458559 (=> res!988360 e!1481726)))

(assert (=> bs!458559 (= res!988360 (not (= (list!10894 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441256))) (list!10894 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441256))))))))

(assert (=> bs!458559 (=> true e!1481726)))

(declare-fun b!2312006 () Bool)

(assert (=> b!2312006 (= e!1481726 (= (toValue!7 thiss!2978 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441256))) (toValue!7 thiss!2978 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441256)))))))

(assert (= (and bs!458559 (not res!988360)) b!2312006))

(assert (=> m!2739441 s!224901))

(declare-fun bs!458560 () Bool)

(declare-fun s!224903 () Bool)

(assert (= bs!458560 (and neg-inst!1343 s!224903)))

(declare-fun res!988361 () Bool)

(declare-fun e!1481727 () Bool)

(assert (=> bs!458560 (=> res!988361 e!1481727)))

(assert (=> bs!458560 (= res!988361 (not (= (list!10894 x!441257) (list!10894 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441256))))))))

(assert (=> bs!458560 (=> true e!1481727)))

(declare-fun b!2312007 () Bool)

(assert (=> b!2312007 (= e!1481727 (= (toValue!7 thiss!2978 x!441257) (toValue!7 thiss!2978 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441256)))))))

(assert (= (and bs!458560 (not res!988361)) b!2312007))

(assert (=> bs!458554 m!2739443))

(assert (=> bs!458554 m!2739441))

(assert (=> bs!458554 s!224903))

(declare-fun bs!458561 () Bool)

(declare-fun s!224905 () Bool)

(assert (= bs!458561 (and neg-inst!1343 s!224905)))

(declare-fun res!988362 () Bool)

(declare-fun e!1481728 () Bool)

(assert (=> bs!458561 (=> res!988362 e!1481728)))

(assert (=> bs!458561 (= res!988362 (not (= (list!10894 x!441258) (list!10894 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441256))))))))

(assert (=> bs!458561 (=> true e!1481728)))

(declare-fun b!2312008 () Bool)

(assert (=> b!2312008 (= e!1481728 (= (toValue!7 thiss!2978 x!441258) (toValue!7 thiss!2978 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441256)))))))

(assert (= (and bs!458561 (not res!988362)) b!2312008))

(assert (=> bs!458556 m!2739445))

(assert (=> bs!458556 m!2739441))

(assert (=> bs!458556 s!224905))

(declare-fun bs!458562 () Bool)

(declare-fun s!224907 () Bool)

(assert (= bs!458562 (and neg-inst!1343 s!224907)))

(declare-fun res!988363 () Bool)

(declare-fun e!1481729 () Bool)

(assert (=> bs!458562 (=> res!988363 e!1481729)))

(assert (=> bs!458562 (= res!988363 (not (= (list!10894 x!441256) (list!10894 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441256))))))))

(assert (=> bs!458562 (=> true e!1481729)))

(declare-fun b!2312009 () Bool)

(assert (=> b!2312009 (= e!1481729 (= (toValue!7 thiss!2978 x!441256) (toValue!7 thiss!2978 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441256)))))))

(assert (= (and bs!458562 (not res!988363)) b!2312009))

(assert (=> bs!458558 m!2739433))

(assert (=> bs!458558 m!2739441))

(assert (=> bs!458558 s!224907))

(assert (=> m!2739441 s!224901))

(declare-fun bs!458563 () Bool)

(assert (= bs!458563 (and m!2739433 m!2739441)))

(assert (=> bs!458563 s!224907))

(declare-fun bs!458564 () Bool)

(assert (= bs!458564 (and m!2739433 m!2739435)))

(assert (=> bs!458564 s!224889))

(assert (=> m!2739433 s!224889))

(declare-fun bs!458565 () Bool)

(assert (= bs!458565 (and m!2739433 m!2739443 m!2739451)))

(assert (=> bs!458565 s!224885))

(declare-fun bs!458566 () Bool)

(assert (= bs!458566 (and m!2739433 m!2739453 m!2739445)))

(assert (=> bs!458566 s!224887))

(assert (=> bs!458564 s!224889))

(assert (=> bs!458565 s!224891))

(assert (=> m!2739433 s!224889))

(assert (=> bs!458563 s!224899))

(assert (=> bs!458566 s!224893))

(declare-fun bs!458567 () Bool)

(assert (= bs!458567 (and neg-inst!1343 b!2311979)))

(assert (=> bs!458567 (= true inst!1343)))

(declare-fun b!2311980 () Bool)

(declare-fun e!1481706 () Bool)

(declare-fun e!1481708 () Bool)

(assert (=> b!2311980 (= e!1481706 e!1481708)))

(declare-fun res!988345 () Bool)

(assert (=> b!2311980 (=> res!988345 e!1481708)))

(declare-fun lambda!86271 () Int)

(declare-fun lambda!86272 () Int)

(declare-fun equivClasses!1720 (Int Int) Bool)

(assert (=> b!2311980 (= res!988345 (not (equivClasses!1720 lambda!86271 lambda!86272)))))

(declare-fun lambda!86273 () Int)

(declare-fun Forall2!727 (Int) Bool)

(assert (=> b!2311980 (= (equivClasses!1720 lambda!86271 lambda!86272) (Forall2!727 lambda!86273))))

(declare-fun b!2311981 () Bool)

(declare-datatypes ((TokenValueInjection!8692 0))(
  ( (TokenValueInjection!8693 (toValue!6238 Int) (toChars!6097 Int)) )
))
(declare-fun inv!37219 (TokenValueInjection!8692) Bool)

(assert (=> b!2311981 (= e!1481708 (inv!37219 (TokenValueInjection!8693 lambda!86272 lambda!86271)))))

(declare-fun res!988344 () Bool)

(declare-fun e!1481709 () Bool)

(assert (=> start!227992 (=> res!988344 e!1481709)))

(declare-fun lambda!86270 () Int)

(declare-fun Forall!1114 (Int) Bool)

(assert (=> start!227992 (= res!988344 (not (Forall!1114 lambda!86270)))))

(assert (=> start!227992 (= (Forall!1114 lambda!86270) inst!1342)))

(assert (=> start!227992 (not e!1481709)))

(assert (=> start!227992 true))

(declare-fun e!1481707 () Bool)

(assert (=> b!2311979 (= e!1481707 e!1481706)))

(declare-fun res!988346 () Bool)

(assert (=> b!2311979 (=> res!988346 e!1481706)))

(assert (=> b!2311979 (= res!988346 (not (Forall2!727 lambda!86273)))))

(assert (=> b!2311979 (= (Forall2!727 lambda!86273) inst!1343)))

(assert (=> b!2311978 (= e!1481709 e!1481707)))

(declare-fun res!988343 () Bool)

(assert (=> b!2311978 (=> res!988343 e!1481707)))

(declare-fun semiInverseModEq!1805 (Int Int) Bool)

(assert (=> b!2311978 (= res!988343 (not (semiInverseModEq!1805 lambda!86271 lambda!86272)))))

(assert (=> b!2311978 (= (semiInverseModEq!1805 lambda!86271 lambda!86272) (Forall!1114 lambda!86270))))

(assert (= neg-inst!1342 inst!1342))

(assert (= (and start!227992 (not res!988344)) b!2311978))

(assert (= (and b!2311978 (not res!988343)) b!2311979))

(assert (= neg-inst!1343 inst!1343))

(assert (= (and b!2311979 (not res!988346)) b!2311980))

(assert (= (and b!2311980 (not res!988345)) b!2311981))

(declare-fun m!2739459 () Bool)

(assert (=> b!2311981 m!2739459))

(declare-fun m!2739461 () Bool)

(assert (=> b!2311980 m!2739461))

(assert (=> b!2311980 m!2739461))

(declare-fun m!2739463 () Bool)

(assert (=> b!2311980 m!2739463))

(declare-fun m!2739465 () Bool)

(assert (=> b!2311978 m!2739465))

(assert (=> b!2311978 m!2739465))

(declare-fun m!2739467 () Bool)

(assert (=> b!2311978 m!2739467))

(assert (=> b!2311979 m!2739463))

(assert (=> b!2311979 m!2739463))

(assert (=> start!227992 m!2739467))

(assert (=> start!227992 m!2739467))

(push 1)

(assert (not b!2312002))

(assert (not b!2311996))

(assert (not bs!458560))

(assert (not bs!458553))

(assert (not bs!458549))

(assert (not b!2311980))

(assert (not b!2312009))

(assert (not b!2311979))

(assert (not bs!458545))

(assert (not b!2312005))

(assert (not b!2311999))

(assert (not bs!458534))

(assert (not b!2311997))

(assert (not bs!458539))

(assert (not bs!458547))

(assert (not start!227992))

(assert (not b!2311994))

(assert (not b!2312003))

(assert (not b!2311992))

(assert (not b!2312007))

(assert (not bs!458555))

(assert (not b!2312008))

(assert (not bs!458561))

(assert (not bs!458537))

(assert (not bs!458557))

(assert (not b!2312006))

(assert (not bs!458543))

(assert (not bs!458548))

(assert (not b!2311993))

(assert (not b!2312000))

(assert (not bs!458562))

(assert (not b!2312004))

(assert (not bs!458540))

(assert (not b!2311991))

(assert (not b!2311978))

(assert (not b!2311998))

(assert (not bs!458536))

(assert (not bs!458559))

(assert (not b!2312001))

(assert (not b!2311990))

(assert (not b!2311981))

(assert (not b!2311995))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!458603 () Bool)

(assert (= bs!458603 (and m!2739453 b!2311994)))

(assert (=> bs!458603 m!2739453))

(assert (=> bs!458603 m!2739453))

(declare-fun bs!458604 () Bool)

(assert (= bs!458604 (and m!2739443 m!2739453 b!2311995)))

(assert (=> bs!458604 m!2739451))

(assert (=> bs!458604 m!2739453))

(declare-fun bs!458605 () Bool)

(assert (= bs!458605 (and m!2739443 b!2311996)))

(assert (=> bs!458605 m!2739451))

(assert (=> bs!458605 m!2739451))

(declare-fun bs!458606 () Bool)

(assert (= bs!458606 (and m!2739443 m!2739453 b!2311997)))

(assert (=> bs!458606 m!2739453))

(assert (=> bs!458606 m!2739451))

(declare-fun bs!458607 () Bool)

(assert (= bs!458607 (and m!2739435 m!2739443 b!2311998)))

(assert (=> bs!458607 m!2739435))

(assert (=> bs!458607 m!2739451))

(declare-fun bs!458608 () Bool)

(assert (= bs!458608 (and m!2739435 m!2739453 m!2739445 b!2311999)))

(assert (=> bs!458608 m!2739435))

(assert (=> bs!458608 m!2739453))

(declare-fun bs!458609 () Bool)

(assert (= bs!458609 (and m!2739435 b!2312000)))

(assert (=> bs!458609 m!2739435))

(assert (=> bs!458609 m!2739435))

(declare-fun bs!458610 () Bool)

(assert (= bs!458610 (and m!2739435 m!2739443 b!2312001)))

(assert (=> bs!458610 m!2739451))

(assert (=> bs!458610 m!2739435))

(declare-fun bs!458611 () Bool)

(assert (= bs!458611 (and m!2739435 m!2739453 m!2739445 b!2312002)))

(assert (=> bs!458611 m!2739453))

(assert (=> bs!458611 m!2739435))

(declare-fun bs!458612 () Bool)

(assert (= bs!458612 (and m!2739441 m!2739443 m!2739451 b!2312003)))

(declare-fun m!2739507 () Bool)

(assert (=> bs!458612 m!2739507))

(assert (=> bs!458612 m!2739451))

(declare-fun bs!458613 () Bool)

(assert (= bs!458613 (and m!2739441 m!2739453 m!2739445 b!2312004)))

(assert (=> bs!458613 m!2739507))

(assert (=> bs!458613 m!2739453))

(declare-fun bs!458614 () Bool)

(assert (= bs!458614 (and m!2739441 m!2739435 b!2312005)))

(assert (=> bs!458614 m!2739507))

(assert (=> bs!458614 m!2739435))

(declare-fun bs!458615 () Bool)

(assert (= bs!458615 (and m!2739441 b!2312006)))

(assert (=> bs!458615 m!2739507))

(assert (=> bs!458615 m!2739507))

(declare-fun bs!458616 () Bool)

(assert (= bs!458616 (and m!2739441 m!2739443 m!2739451 b!2312007)))

(assert (=> bs!458616 m!2739451))

(assert (=> bs!458616 m!2739507))

(declare-fun bs!458617 () Bool)

(assert (= bs!458617 (and m!2739441 m!2739453 m!2739445 b!2312008)))

(assert (=> bs!458617 m!2739453))

(assert (=> bs!458617 m!2739507))

(declare-fun bs!458618 () Bool)

(assert (= bs!458618 (and m!2739441 m!2739435 b!2312009)))

(assert (=> bs!458618 m!2739435))

(assert (=> bs!458618 m!2739507))

(push 1)

(assert (not b!2312002))

(assert (not b!2311996))

(assert (not bs!458560))

(assert (not bs!458553))

(assert (not bs!458549))

(assert (not b!2311980))

(assert (not b!2312009))

(assert (not b!2311979))

(assert (not bs!458545))

(assert (not b!2312005))

(assert (not b!2311999))

(assert (not bs!458534))

(assert (not b!2311997))

(assert (not bs!458539))

(assert (not bs!458547))

(assert (not start!227992))

(assert (not b!2311994))

(assert (not b!2312003))

(assert (not b!2311992))

(assert (not b!2312007))

(assert (not bs!458555))

(assert (not b!2312008))

(assert (not bs!458561))

(assert (not bs!458537))

(assert (not bs!458557))

(assert (not b!2312006))

(assert (not bs!458543))

(assert (not bs!458548))

(assert (not b!2311993))

(assert (not b!2312000))

(assert (not bs!458562))

(assert (not b!2312004))

(assert (not bs!458540))

(assert (not b!2311991))

(assert (not b!2311978))

(assert (not b!2311998))

(assert (not bs!458536))

(assert (not bs!458559))

(assert (not b!2312001))

(assert (not b!2311990))

(assert (not b!2311981))

(assert (not b!2311995))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!684064 () Bool)

(declare-fun list!10897 (Conc!8988) List!27618)

(assert (=> d!684064 (= (list!10894 x!441258) (list!10897 (c!366593 x!441258)))))

(declare-fun bs!458619 () Bool)

(assert (= bs!458619 d!684064))

(declare-fun m!2739509 () Bool)

(assert (=> bs!458619 m!2739509))

(assert (=> bs!458549 d!684064))

(declare-fun d!684066 () Bool)

(assert (=> d!684066 (= (list!10894 x!441256) (list!10897 (c!366593 x!441256)))))

(declare-fun bs!458620 () Bool)

(assert (= bs!458620 d!684066))

(declare-fun m!2739511 () Bool)

(assert (=> bs!458620 m!2739511))

(assert (=> bs!458549 d!684066))

(declare-fun d!684068 () Bool)

(assert (=> d!684068 (= (list!10894 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441256))) (list!10897 (c!366593 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441256)))))))

(declare-fun bs!458621 () Bool)

(assert (= bs!458621 d!684068))

(declare-fun m!2739513 () Bool)

(assert (=> bs!458621 m!2739513))

(assert (=> bs!458557 d!684068))

(assert (=> bs!458557 d!684066))

(assert (=> bs!458545 d!684066))

(assert (=> bs!458545 d!684064))

(declare-fun d!684070 () Bool)

(declare-fun lt!857589 () List!27618)

(declare-fun efficientList!319 (BalanceConc!17708) List!27618)

(assert (=> d!684070 (= lt!857589 (efficientList!319 x!441258))))

(declare-fun charsToBigInt!0 (List!27618 Int) Int)

(assert (=> d!684070 (= (toValue!7 thiss!2978 x!441258) (IntegerValue!13754 (charsToBigInt!0 lt!857589 0) lt!857589))))

(declare-fun bs!458622 () Bool)

(assert (= bs!458622 d!684070))

(declare-fun m!2739515 () Bool)

(assert (=> bs!458622 m!2739515))

(declare-fun m!2739517 () Bool)

(assert (=> bs!458622 m!2739517))

(assert (=> b!2312008 d!684070))

(declare-fun d!684074 () Bool)

(declare-fun lt!857590 () List!27618)

(assert (=> d!684074 (= lt!857590 (efficientList!319 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441256))))))

(assert (=> d!684074 (= (toValue!7 thiss!2978 (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441256))) (IntegerValue!13754 (charsToBigInt!0 lt!857590 0) lt!857590))))

(declare-fun bs!458623 () Bool)

(assert (= bs!458623 d!684074))

(assert (=> bs!458623 m!2739439))

(declare-fun m!2739519 () Bool)

(assert (=> bs!458623 m!2739519))

(declare-fun m!2739523 () Bool)

(assert (=> bs!458623 m!2739523))

(assert (=> b!2312008 d!684074))

(assert (=> b!2312002 d!684070))

(declare-fun d!684076 () Bool)

(declare-fun lt!857591 () List!27618)

(assert (=> d!684076 (= lt!857591 (efficientList!319 x!441256))))

(assert (=> d!684076 (= (toValue!7 thiss!2978 x!441256) (IntegerValue!13754 (charsToBigInt!0 lt!857591 0) lt!857591))))

(declare-fun bs!458625 () Bool)

(assert (= bs!458625 d!684076))

(declare-fun m!2739525 () Bool)

(assert (=> bs!458625 m!2739525))

(declare-fun m!2739527 () Bool)

(assert (=> bs!458625 m!2739527))

(assert (=> b!2312002 d!684076))

(declare-fun d!684078 () Bool)

(assert (=> d!684078 (= (list!10894 x!441257) (list!10897 (c!366593 x!441257)))))

(declare-fun bs!458626 () Bool)

(assert (= bs!458626 d!684078))

(declare-fun m!2739529 () Bool)

(assert (=> bs!458626 m!2739529))

(assert (=> bs!458539 d!684078))

(assert (=> b!2312005 d!684074))

(assert (=> b!2312005 d!684076))

(assert (=> b!2311999 d!684076))

(assert (=> b!2311999 d!684070))

(assert (=> bs!458562 d!684066))

(assert (=> bs!458562 d!684068))

(declare-fun d!684082 () Bool)

(declare-fun lt!857592 () List!27618)

(assert (=> d!684082 (= lt!857592 (efficientList!319 x!441257))))

(assert (=> d!684082 (= (toValue!7 thiss!2978 x!441257) (IntegerValue!13754 (charsToBigInt!0 lt!857592 0) lt!857592))))

(declare-fun bs!458627 () Bool)

(assert (= bs!458627 d!684082))

(declare-fun m!2739533 () Bool)

(assert (=> bs!458627 m!2739533))

(declare-fun m!2739535 () Bool)

(assert (=> bs!458627 m!2739535))

(assert (=> b!2311996 d!684082))

(assert (=> b!2311991 d!684082))

(assert (=> b!2311991 d!684070))

(declare-fun d!684084 () Bool)

(declare-fun c!366597 () Bool)

(assert (=> d!684084 (= c!366597 (is-Node!8988 (c!366593 x!441256)))))

(declare-fun e!1481782 () Bool)

(assert (=> d!684084 (= (inv!37217 (c!366593 x!441256)) e!1481782)))

(declare-fun b!2312072 () Bool)

(declare-fun inv!37223 (Conc!8988) Bool)

(assert (=> b!2312072 (= e!1481782 (inv!37223 (c!366593 x!441256)))))

(declare-fun b!2312073 () Bool)

(declare-fun e!1481783 () Bool)

(assert (=> b!2312073 (= e!1481782 e!1481783)))

(declare-fun res!988411 () Bool)

(assert (=> b!2312073 (= res!988411 (not (is-Leaf!13188 (c!366593 x!441256))))))

(assert (=> b!2312073 (=> res!988411 e!1481783)))

(declare-fun b!2312074 () Bool)

(declare-fun inv!37224 (Conc!8988) Bool)

(assert (=> b!2312074 (= e!1481783 (inv!37224 (c!366593 x!441256)))))

(assert (= (and d!684084 c!366597) b!2312072))

(assert (= (and d!684084 (not c!366597)) b!2312073))

(assert (= (and b!2312073 (not res!988411)) b!2312074))

(declare-fun m!2739537 () Bool)

(assert (=> b!2312072 m!2739537))

(declare-fun m!2739539 () Bool)

(assert (=> b!2312074 m!2739539))

(assert (=> b!2311990 d!684084))

(assert (=> bs!458534 d!684068))

(declare-fun d!684088 () Bool)

(declare-fun c!366601 () Bool)

(assert (=> d!684088 (= c!366601 (is-IntegerValue!13754 (toValue!7 thiss!2978 x!441256)))))

(declare-fun e!1481786 () BalanceConc!17708)

(assert (=> d!684088 (= (toCharacters!0 thiss!2978 (toValue!7 thiss!2978 x!441256)) e!1481786)))

(declare-fun b!2312079 () Bool)

(declare-fun seqFromList!3121 (List!27618) BalanceConc!17708)

(assert (=> b!2312079 (= e!1481786 (seqFromList!3121 (text!32537 (toValue!7 thiss!2978 x!441256))))))

(declare-fun b!2312080 () Bool)

(assert (=> b!2312080 (= e!1481786 (BalanceConc!17709 Empty!8988))))

(assert (= (and d!684088 c!366601) b!2312079))

(assert (= (and d!684088 (not c!366601)) b!2312080))

(declare-fun m!2739541 () Bool)

(assert (=> b!2312079 m!2739541))

(assert (=> bs!458534 d!684088))

(assert (=> bs!458534 d!684076))

(assert (=> bs!458534 d!684066))

(assert (=> bs!458540 d!684064))

(assert (=> bs!458540 d!684078))

(assert (=> b!2312009 d!684076))

(assert (=> b!2312009 d!684074))

(assert (=> bs!458553 d!684068))

(assert (=> bs!458553 d!684078))

(declare-fun d!684090 () Bool)

(declare-fun c!366602 () Bool)

(assert (=> d!684090 (= c!366602 (is-Node!8988 (c!366593 x!441257)))))

(declare-fun e!1481787 () Bool)

(assert (=> d!684090 (= (inv!37217 (c!366593 x!441257)) e!1481787)))

(declare-fun b!2312081 () Bool)

(assert (=> b!2312081 (= e!1481787 (inv!37223 (c!366593 x!441257)))))

(declare-fun b!2312082 () Bool)

(declare-fun e!1481788 () Bool)

(assert (=> b!2312082 (= e!1481787 e!1481788)))

(declare-fun res!988412 () Bool)

(assert (=> b!2312082 (= res!988412 (not (is-Leaf!13188 (c!366593 x!441257))))))

(assert (=> b!2312082 (=> res!988412 e!1481788)))

(declare-fun b!2312083 () Bool)

(assert (=> b!2312083 (= e!1481788 (inv!37224 (c!366593 x!441257)))))

(assert (= (and d!684090 c!366602) b!2312081))

(assert (= (and d!684090 (not c!366602)) b!2312082))

(assert (= (and b!2312082 (not res!988412)) b!2312083))

(declare-fun m!2739543 () Bool)

(assert (=> b!2312081 m!2739543))

(declare-fun m!2739545 () Bool)

(assert (=> b!2312083 m!2739545))

(assert (=> b!2311992 d!684090))

(assert (=> bs!458559 d!684068))

(declare-fun d!684092 () Bool)

(declare-fun isBalanced!2701 (Conc!8988) Bool)

(assert (=> d!684092 (= (inv!37218 x!441257) (isBalanced!2701 (c!366593 x!441257)))))

(declare-fun bs!458629 () Bool)

(assert (= bs!458629 d!684092))

(declare-fun m!2739547 () Bool)

(assert (=> bs!458629 m!2739547))

(assert (=> b!2311979 d!684092))

(declare-fun d!684094 () Bool)

(assert (=> d!684094 (= (inv!37218 x!441258) (isBalanced!2701 (c!366593 x!441258)))))

(declare-fun bs!458630 () Bool)

(assert (= bs!458630 d!684094))

(declare-fun m!2739549 () Bool)

(assert (=> bs!458630 m!2739549))

(assert (=> b!2311979 d!684094))

(assert (=> b!2311979 d!684064))

(declare-fun d!684096 () Bool)

(declare-fun choose!13528 (Int) Bool)

(assert (=> d!684096 (= (Forall2!727 lambda!86273) (choose!13528 lambda!86273))))

(declare-fun bs!458631 () Bool)

(assert (= bs!458631 d!684096))

(declare-fun m!2739551 () Bool)

(assert (=> bs!458631 m!2739551))

(assert (=> b!2311979 d!684096))

(assert (=> b!2311979 d!684078))

(assert (=> bs!458547 d!684066))

(declare-fun bs!458632 () Bool)

(declare-fun d!684098 () Bool)

(assert (= bs!458632 (and d!684098 start!227992)))

(declare-fun lambda!86312 () Int)

(assert (=> bs!458632 (not (= lambda!86312 lambda!86270))))

(assert (=> d!684098 true))

(declare-fun order!15349 () Int)

(declare-fun order!15351 () Int)

(declare-fun dynLambda!11977 (Int Int) Int)

(declare-fun dynLambda!11978 (Int Int) Int)

(assert (=> d!684098 (< (dynLambda!11977 order!15349 lambda!86271) (dynLambda!11978 order!15351 lambda!86312))))

(assert (=> d!684098 true))

(declare-fun order!15353 () Int)

(declare-fun dynLambda!11979 (Int Int) Int)

(assert (=> d!684098 (< (dynLambda!11979 order!15353 lambda!86272) (dynLambda!11978 order!15351 lambda!86312))))

(assert (=> d!684098 (= (semiInverseModEq!1805 lambda!86271 lambda!86272) (Forall!1114 lambda!86312))))

(declare-fun bs!458634 () Bool)

(assert (= bs!458634 d!684098))

(declare-fun m!2739555 () Bool)

(assert (=> bs!458634 m!2739555))

(assert (=> b!2311978 d!684098))

(declare-fun d!684100 () Bool)

(declare-fun choose!13529 (Int) Bool)

(assert (=> d!684100 (= (Forall!1114 lambda!86270) (choose!13529 lambda!86270))))

(declare-fun bs!458636 () Bool)

(assert (= bs!458636 d!684100))

(declare-fun m!2739563 () Bool)

(assert (=> bs!458636 m!2739563))

(assert (=> b!2311978 d!684100))

(declare-fun d!684104 () Bool)

(declare-fun c!366603 () Bool)

(assert (=> d!684104 (= c!366603 (is-Node!8988 (c!366593 x!441258)))))

(declare-fun e!1481789 () Bool)

(assert (=> d!684104 (= (inv!37217 (c!366593 x!441258)) e!1481789)))

(declare-fun b!2312088 () Bool)

(assert (=> b!2312088 (= e!1481789 (inv!37223 (c!366593 x!441258)))))

(declare-fun b!2312089 () Bool)

(declare-fun e!1481790 () Bool)

(assert (=> b!2312089 (= e!1481789 e!1481790)))

(declare-fun res!988413 () Bool)

(assert (=> b!2312089 (= res!988413 (not (is-Leaf!13188 (c!366593 x!441258))))))

(assert (=> b!2312089 (=> res!988413 e!1481790)))

(declare-fun b!2312090 () Bool)

(assert (=> b!2312090 (= e!1481790 (inv!37224 (c!366593 x!441258)))))

(assert (= (and d!684104 c!366603) b!2312088))

(assert (= (and d!684104 (not c!366603)) b!2312089))

(assert (= (and b!2312089 (not res!988413)) b!2312090))

(declare-fun m!2739567 () Bool)

(assert (=> b!2312088 m!2739567))

(declare-fun m!2739569 () Bool)

(assert (=> b!2312090 m!2739569))

(assert (=> b!2311993 d!684104))

(declare-fun bs!458653 () Bool)

(declare-fun d!684106 () Bool)

(assert (= bs!458653 (and d!684106 b!2311979)))

(declare-fun lambda!86315 () Int)

(assert (=> bs!458653 (not (= lambda!86315 lambda!86273))))

(assert (=> d!684106 true))

(declare-fun order!15355 () Int)

(declare-fun dynLambda!11980 (Int Int) Int)

(assert (=> d!684106 (< (dynLambda!11979 order!15353 lambda!86272) (dynLambda!11980 order!15355 lambda!86315))))

(assert (=> d!684106 (= (equivClasses!1720 lambda!86271 lambda!86272) (Forall2!727 lambda!86315))))

(declare-fun bs!458654 () Bool)

(assert (= bs!458654 d!684106))

(declare-fun m!2739571 () Bool)

(assert (=> bs!458654 m!2739571))

(assert (=> b!2311980 d!684106))

(assert (=> b!2311980 d!684096))

(assert (=> b!2311997 d!684070))

(assert (=> b!2311997 d!684082))

(assert (=> b!2312006 d!684074))

(assert (=> bs!458536 d!684064))

(assert (=> b!2312000 d!684076))

(assert (=> b!2312003 d!684074))

(assert (=> b!2312003 d!684082))

(declare-fun d!684108 () Bool)

(declare-fun res!988418 () Bool)

(declare-fun e!1481795 () Bool)

(assert (=> d!684108 (=> (not res!988418) (not e!1481795))))

(assert (=> d!684108 (= res!988418 (semiInverseModEq!1805 (toChars!6097 (TokenValueInjection!8693 lambda!86272 lambda!86271)) (toValue!6238 (TokenValueInjection!8693 lambda!86272 lambda!86271))))))

(assert (=> d!684108 (= (inv!37219 (TokenValueInjection!8693 lambda!86272 lambda!86271)) e!1481795)))

(declare-fun b!2312097 () Bool)

(assert (=> b!2312097 (= e!1481795 (equivClasses!1720 (toChars!6097 (TokenValueInjection!8693 lambda!86272 lambda!86271)) (toValue!6238 (TokenValueInjection!8693 lambda!86272 lambda!86271))))))

(assert (= (and d!684108 res!988418) b!2312097))

(declare-fun m!2739573 () Bool)

(assert (=> d!684108 m!2739573))

(declare-fun m!2739575 () Bool)

(assert (=> b!2312097 m!2739575))

(assert (=> b!2311981 d!684108))

(assert (=> b!2311994 d!684070))

(assert (=> bs!458560 d!684078))

(assert (=> bs!458560 d!684068))

(assert (=> bs!458548 d!684078))

(assert (=> bs!458548 d!684066))

(assert (=> bs!458537 d!684078))

(assert (=> bs!458537 d!684064))

(assert (=> bs!458555 d!684068))

(assert (=> bs!458555 d!684064))

(assert (=> bs!458543 d!684066))

(assert (=> bs!458543 d!684078))

(assert (=> b!2312007 d!684082))

(assert (=> b!2312007 d!684074))

(assert (=> b!2312001 d!684082))

(assert (=> b!2312001 d!684076))

(assert (=> b!2312004 d!684074))

(assert (=> b!2312004 d!684070))

(assert (=> b!2311998 d!684076))

(assert (=> b!2311998 d!684082))

(declare-fun d!684110 () Bool)

(assert (=> d!684110 (= (inv!37218 x!441256) (isBalanced!2701 (c!366593 x!441256)))))

(declare-fun bs!458655 () Bool)

(assert (= bs!458655 d!684110))

(declare-fun m!2739577 () Bool)

(assert (=> bs!458655 m!2739577))

(assert (=> start!227992 d!684110))

(assert (=> start!227992 d!684066))

(assert (=> start!227992 d!684068))

(assert (=> start!227992 d!684088))

(assert (=> start!227992 d!684100))

(assert (=> start!227992 d!684076))

(assert (=> b!2311995 d!684082))

(assert (=> b!2311995 d!684070))

(assert (=> bs!458561 d!684064))

(assert (=> bs!458561 d!684068))

(declare-fun b!2312104 () Bool)

(declare-fun tp!733471 () Bool)

(declare-fun tp!733470 () Bool)

(declare-fun e!1481800 () Bool)

(assert (=> b!2312104 (= e!1481800 (and (inv!37217 (left!20873 (c!366593 x!441256))) tp!733470 (inv!37217 (right!21203 (c!366593 x!441256))) tp!733471))))

(declare-fun b!2312105 () Bool)

(declare-fun inv!37225 (IArray!17981) Bool)

(assert (=> b!2312105 (= e!1481800 (inv!37225 (xs!11930 (c!366593 x!441256))))))

(assert (=> b!2311990 (= tp!733454 (and (inv!37217 (c!366593 x!441256)) e!1481800))))

(assert (= (and b!2311990 (is-Node!8988 (c!366593 x!441256))) b!2312104))

(assert (= (and b!2311990 (is-Leaf!13188 (c!366593 x!441256))) b!2312105))

(declare-fun m!2739579 () Bool)

(assert (=> b!2312104 m!2739579))

(declare-fun m!2739581 () Bool)

(assert (=> b!2312104 m!2739581))

(declare-fun m!2739583 () Bool)

(assert (=> b!2312105 m!2739583))

(assert (=> b!2311990 m!2739431))

(declare-fun tp!733472 () Bool)

(declare-fun e!1481802 () Bool)

(declare-fun b!2312106 () Bool)

(declare-fun tp!733473 () Bool)

(assert (=> b!2312106 (= e!1481802 (and (inv!37217 (left!20873 (c!366593 x!441257))) tp!733472 (inv!37217 (right!21203 (c!366593 x!441257))) tp!733473))))

(declare-fun b!2312107 () Bool)

(assert (=> b!2312107 (= e!1481802 (inv!37225 (xs!11930 (c!366593 x!441257))))))

(assert (=> b!2311992 (= tp!733456 (and (inv!37217 (c!366593 x!441257)) e!1481802))))

(assert (= (and b!2311992 (is-Node!8988 (c!366593 x!441257))) b!2312106))

(assert (= (and b!2311992 (is-Leaf!13188 (c!366593 x!441257))) b!2312107))

(declare-fun m!2739585 () Bool)

(assert (=> b!2312106 m!2739585))

(declare-fun m!2739587 () Bool)

(assert (=> b!2312106 m!2739587))

(declare-fun m!2739589 () Bool)

(assert (=> b!2312107 m!2739589))

(assert (=> b!2311992 m!2739455))

(declare-fun tp!733474 () Bool)

(declare-fun tp!733475 () Bool)

(declare-fun e!1481804 () Bool)

(declare-fun b!2312108 () Bool)

(assert (=> b!2312108 (= e!1481804 (and (inv!37217 (left!20873 (c!366593 x!441258))) tp!733474 (inv!37217 (right!21203 (c!366593 x!441258))) tp!733475))))

(declare-fun b!2312109 () Bool)

(assert (=> b!2312109 (= e!1481804 (inv!37225 (xs!11930 (c!366593 x!441258))))))

(assert (=> b!2311993 (= tp!733455 (and (inv!37217 (c!366593 x!441258)) e!1481804))))

(assert (= (and b!2311993 (is-Node!8988 (c!366593 x!441258))) b!2312108))

(assert (= (and b!2311993 (is-Leaf!13188 (c!366593 x!441258))) b!2312109))

(declare-fun m!2739591 () Bool)

(assert (=> b!2312108 m!2739591))

(declare-fun m!2739593 () Bool)

(assert (=> b!2312108 m!2739593))

(declare-fun m!2739595 () Bool)

(assert (=> b!2312109 m!2739595))

(assert (=> b!2311993 m!2739457))

(push 1)

(assert (not d!684064))

(assert (not b!2312104))

(assert (not d!684100))

(assert (not b!2311992))

(assert (not b!2312108))

(assert (not b!2312088))

(assert (not b!2311990))

(assert (not b!2312072))

(assert (not b!2312107))

(assert (not b!2312105))

(assert (not d!684070))

(assert (not d!684074))

(assert (not d!684110))

(assert (not d!684096))

(assert (not d!684076))

(assert (not d!684098))

(assert (not b!2312097))

(assert (not b!2312083))

(assert (not d!684092))

(assert (not d!684082))

(assert (not b!2312079))

(assert (not d!684106))

(assert (not d!684078))

(assert (not b!2312074))

(assert (not d!684094))

(assert (not b!2311993))

(assert (not b!2312106))

(assert (not d!684068))

(assert (not d!684066))

(assert (not b!2312090))

(assert (not b!2312081))

(assert (not b!2312109))

(assert (not d!684108))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

