; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!218494 () Bool)

(assert start!218494)

(assert (=> start!218494 true))

(declare-fun b!2242388 () Bool)

(declare-fun e!1434087 () Bool)

(declare-datatypes ((List!26575 0))(
  ( (Nil!26481) (Cons!26481 (h!31882 (_ BitVec 16)) (t!200017 List!26575)) )
))
(declare-datatypes ((IArray!17033 0))(
  ( (IArray!17034 (innerList!8574 List!26575)) )
))
(declare-datatypes ((Conc!8514 0))(
  ( (Node!8514 (left!20117 Conc!8514) (right!20447 Conc!8514) (csize!17258 Int) (cheight!8725 Int)) (Leaf!12588 (xs!11456 IArray!17033) (csize!17259 Int)) (Empty!8514) )
))
(declare-datatypes ((BalanceConc!16756 0))(
  ( (BalanceConc!16757 (c!356979 Conc!8514)) )
))
(declare-fun x!430536 () BalanceConc!16756)

(declare-fun tp!707316 () Bool)

(declare-fun inv!35961 (Conc!8514) Bool)

(assert (=> b!2242388 (= e!1434087 (and (inv!35961 (c!356979 x!430536)) tp!707316))))

(declare-fun inst!1256 () Bool)

(declare-datatypes ((FloatLiteralValueInjection!88 0))(
  ( (FloatLiteralValueInjection!89) )
))
(declare-fun thiss!4969 () FloatLiteralValueInjection!88)

(declare-fun inv!35962 (BalanceConc!16756) Bool)

(declare-fun list!10100 (BalanceConc!16756) List!26575)

(declare-datatypes ((TokenValue!4338 0))(
  ( (FloatLiteralValue!8676 (text!30811 List!26575)) (TokenValueExt!4337 (__x!17748 Int)) (Broken!21690 (value!132837 List!26575)) (Object!4431) (End!4338) (Def!4338) (Underscore!4338) (Match!4338) (Else!4338) (Error!4338) (Case!4338) (If!4338) (Extends!4338) (Abstract!4338) (Class!4338) (Val!4338) (DelimiterValue!8676 (del!4398 List!26575)) (KeywordValue!4344 (value!132838 List!26575)) (CommentValue!8676 (value!132839 List!26575)) (WhitespaceValue!8676 (value!132840 List!26575)) (IndentationValue!4338 (value!132841 List!26575)) (String!28819) (Int32!4338) (Broken!21691 (value!132842 List!26575)) (Boolean!4339) (Unit!39478) (OperatorValue!4341 (op!4398 List!26575)) (IdentifierValue!8676 (value!132843 List!26575)) (IdentifierValue!8677 (value!132844 List!26575)) (WhitespaceValue!8677 (value!132845 List!26575)) (True!8676) (False!8676) (Broken!21692 (value!132846 List!26575)) (Broken!21693 (value!132847 List!26575)) (True!8677) (RightBrace!4338) (RightBracket!4338) (Colon!4338) (Null!4338) (Comma!4338) (LeftBracket!4338) (False!8677) (LeftBrace!4338) (ImaginaryLiteralValue!4338 (text!30812 List!26575)) (StringLiteralValue!13014 (value!132848 List!26575)) (EOFValue!4338 (value!132849 List!26575)) (IdentValue!4338 (value!132850 List!26575)) (DelimiterValue!8677 (value!132851 List!26575)) (DedentValue!4338 (value!132852 List!26575)) (NewLineValue!4338 (value!132853 List!26575)) (IntegerValue!13014 (value!132854 (_ BitVec 32)) (text!30813 List!26575)) (IntegerValue!13015 (value!132855 Int) (text!30814 List!26575)) (Times!4338) (Or!4338) (Equal!4338) (Minus!4338) (Broken!21694 (value!132856 List!26575)) (And!4338) (Div!4338) (LessEqual!4338) (Mod!4338) (Concat!10874) (Not!4338) (Plus!4338) (SpaceValue!4338 (value!132857 List!26575)) (IntegerValue!13016 (value!132858 Int) (text!30815 List!26575)) (StringLiteralValue!13015 (text!30816 List!26575)) (FloatLiteralValue!8677 (text!30817 List!26575)) (BytesLiteralValue!4338 (value!132859 List!26575)) (CommentValue!8677 (value!132860 List!26575)) (StringLiteralValue!13016 (value!132861 List!26575)) (ErrorTokenValue!4338 (msg!4399 List!26575)) )
))
(declare-fun toCharacters!25 (FloatLiteralValueInjection!88 TokenValue!4338) BalanceConc!16756)

(declare-fun toValue!32 (FloatLiteralValueInjection!88 BalanceConc!16756) TokenValue!4338)

(assert (=> start!218494 (= inst!1256 (=> (and (inv!35962 x!430536) e!1434087) (= (list!10100 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430536))) (list!10100 x!430536))))))

(assert (= start!218494 b!2242388))

(declare-fun m!2674539 () Bool)

(assert (=> b!2242388 m!2674539))

(declare-fun m!2674541 () Bool)

(assert (=> start!218494 m!2674541))

(declare-fun m!2674543 () Bool)

(assert (=> start!218494 m!2674543))

(assert (=> start!218494 m!2674541))

(declare-fun m!2674545 () Bool)

(assert (=> start!218494 m!2674545))

(declare-fun m!2674547 () Bool)

(assert (=> start!218494 m!2674547))

(assert (=> start!218494 m!2674543))

(declare-fun m!2674549 () Bool)

(assert (=> start!218494 m!2674549))

(declare-fun bs!454364 () Bool)

(declare-fun neg-inst!1256 () Bool)

(declare-fun s!224159 () Bool)

(assert (= bs!454364 (and neg-inst!1256 s!224159)))

(assert (=> bs!454364 (=> true (= (list!10100 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430536))) (list!10100 x!430536)))))

(assert (=> m!2674545 m!2674541))

(assert (=> m!2674545 m!2674543))

(assert (=> m!2674545 m!2674549))

(assert (=> m!2674545 s!224159))

(assert (=> m!2674541 s!224159))

(declare-fun bs!454365 () Bool)

(assert (= bs!454365 (and neg-inst!1256 start!218494)))

(assert (=> bs!454365 (= true inst!1256)))

(declare-fun lambda!84914 () Int)

(declare-fun Forall!1050 (Int) Bool)

(assert (=> start!218494 (= (Forall!1050 lambda!84914) inst!1256)))

(assert (=> start!218494 (not (Forall!1050 lambda!84914))))

(assert (=> start!218494 true))

(assert (= neg-inst!1256 inst!1256))

(declare-fun m!2674551 () Bool)

(assert (=> start!218494 m!2674551))

(assert (=> start!218494 m!2674551))

(push 1)

(assert (not bs!454364))

(assert (not start!218494))

(assert (not b!2242388))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!665922 () Bool)

(declare-fun list!10102 (Conc!8514) List!26575)

(assert (=> d!665922 (= (list!10100 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430536))) (list!10102 (c!356979 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430536)))))))

(declare-fun bs!454368 () Bool)

(assert (= bs!454368 d!665922))

(declare-fun m!2674567 () Bool)

(assert (=> bs!454368 m!2674567))

(assert (=> bs!454364 d!665922))

(declare-fun d!665924 () Bool)

(declare-fun c!356984 () Bool)

(assert (=> d!665924 (= c!356984 (is-FloatLiteralValue!8677 (toValue!32 thiss!4969 x!430536)))))

(declare-fun e!1434093 () BalanceConc!16756)

(assert (=> d!665924 (= (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430536)) e!1434093)))

(declare-fun b!2242398 () Bool)

(declare-fun seqFromList!2886 (List!26575) BalanceConc!16756)

(assert (=> b!2242398 (= e!1434093 (seqFromList!2886 (text!30817 (toValue!32 thiss!4969 x!430536))))))

(declare-fun b!2242399 () Bool)

(assert (=> b!2242399 (= e!1434093 (BalanceConc!16757 Empty!8514))))

(assert (= (and d!665924 c!356984) b!2242398))

(assert (= (and d!665924 (not c!356984)) b!2242399))

(declare-fun m!2674569 () Bool)

(assert (=> b!2242398 m!2674569))

(assert (=> bs!454364 d!665924))

(declare-fun d!665926 () Bool)

(declare-fun efficientList!288 (BalanceConc!16756) List!26575)

(assert (=> d!665926 (= (toValue!32 thiss!4969 x!430536) (FloatLiteralValue!8677 (efficientList!288 x!430536)))))

(declare-fun bs!454369 () Bool)

(assert (= bs!454369 d!665926))

(declare-fun m!2674571 () Bool)

(assert (=> bs!454369 m!2674571))

(assert (=> bs!454364 d!665926))

(declare-fun d!665930 () Bool)

(assert (=> d!665930 (= (list!10100 x!430536) (list!10102 (c!356979 x!430536)))))

(declare-fun bs!454370 () Bool)

(assert (= bs!454370 d!665930))

(declare-fun m!2674573 () Bool)

(assert (=> bs!454370 m!2674573))

(assert (=> bs!454364 d!665930))

(push 1)

(assert (not start!218494))

(assert (not d!665922))

(assert (not d!665926))

(assert (not b!2242398))

(assert (not b!2242388))

(assert (not d!665930))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2242414 () Bool)

(declare-fun e!1434101 () List!26575)

(assert (=> b!2242414 (= e!1434101 Nil!26481)))

(declare-fun d!665938 () Bool)

(declare-fun c!356993 () Bool)

(assert (=> d!665938 (= c!356993 (is-Empty!8514 (c!356979 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430536)))))))

(assert (=> d!665938 (= (list!10102 (c!356979 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430536)))) e!1434101)))

(declare-fun b!2242417 () Bool)

(declare-fun e!1434102 () List!26575)

(declare-fun ++!6476 (List!26575 List!26575) List!26575)

(assert (=> b!2242417 (= e!1434102 (++!6476 (list!10102 (left!20117 (c!356979 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430536))))) (list!10102 (right!20447 (c!356979 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430536)))))))))

(declare-fun b!2242416 () Bool)

(declare-fun list!10104 (IArray!17033) List!26575)

(assert (=> b!2242416 (= e!1434102 (list!10104 (xs!11456 (c!356979 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430536))))))))

(declare-fun b!2242415 () Bool)

(assert (=> b!2242415 (= e!1434101 e!1434102)))

(declare-fun c!356994 () Bool)

(assert (=> b!2242415 (= c!356994 (is-Leaf!12588 (c!356979 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430536)))))))

(assert (= (and d!665938 c!356993) b!2242414))

(assert (= (and d!665938 (not c!356993)) b!2242415))

(assert (= (and b!2242415 c!356994) b!2242416))

(assert (= (and b!2242415 (not c!356994)) b!2242417))

(declare-fun m!2674583 () Bool)

(assert (=> b!2242417 m!2674583))

(declare-fun m!2674585 () Bool)

(assert (=> b!2242417 m!2674585))

(assert (=> b!2242417 m!2674583))

(assert (=> b!2242417 m!2674585))

(declare-fun m!2674587 () Bool)

(assert (=> b!2242417 m!2674587))

(declare-fun m!2674589 () Bool)

(assert (=> b!2242416 m!2674589))

(assert (=> d!665922 d!665938))

(declare-fun d!665940 () Bool)

(declare-fun lt!834891 () List!26575)

(assert (=> d!665940 (= lt!834891 (list!10100 x!430536))))

(declare-fun efficientList!290 (Conc!8514 List!26575) List!26575)

(declare-fun efficientList$default$2!100 (Conc!8514) List!26575)

(assert (=> d!665940 (= lt!834891 (efficientList!290 (c!356979 x!430536) (efficientList$default$2!100 (c!356979 x!430536))))))

(assert (=> d!665940 (= (efficientList!288 x!430536) lt!834891)))

(declare-fun bs!454374 () Bool)

(assert (= bs!454374 d!665940))

(assert (=> bs!454374 m!2674545))

(declare-fun m!2674591 () Bool)

(assert (=> bs!454374 m!2674591))

(assert (=> bs!454374 m!2674591))

(declare-fun m!2674593 () Bool)

(assert (=> bs!454374 m!2674593))

(assert (=> d!665926 d!665940))

(declare-fun b!2242418 () Bool)

(declare-fun e!1434103 () List!26575)

(assert (=> b!2242418 (= e!1434103 Nil!26481)))

(declare-fun d!665942 () Bool)

(declare-fun c!356995 () Bool)

(assert (=> d!665942 (= c!356995 (is-Empty!8514 (c!356979 x!430536)))))

(assert (=> d!665942 (= (list!10102 (c!356979 x!430536)) e!1434103)))

(declare-fun b!2242421 () Bool)

(declare-fun e!1434104 () List!26575)

(assert (=> b!2242421 (= e!1434104 (++!6476 (list!10102 (left!20117 (c!356979 x!430536))) (list!10102 (right!20447 (c!356979 x!430536)))))))

(declare-fun b!2242420 () Bool)

(assert (=> b!2242420 (= e!1434104 (list!10104 (xs!11456 (c!356979 x!430536))))))

(declare-fun b!2242419 () Bool)

(assert (=> b!2242419 (= e!1434103 e!1434104)))

(declare-fun c!356996 () Bool)

(assert (=> b!2242419 (= c!356996 (is-Leaf!12588 (c!356979 x!430536)))))

(assert (= (and d!665942 c!356995) b!2242418))

(assert (= (and d!665942 (not c!356995)) b!2242419))

(assert (= (and b!2242419 c!356996) b!2242420))

(assert (= (and b!2242419 (not c!356996)) b!2242421))

(declare-fun m!2674595 () Bool)

(assert (=> b!2242421 m!2674595))

(declare-fun m!2674597 () Bool)

(assert (=> b!2242421 m!2674597))

(assert (=> b!2242421 m!2674595))

(assert (=> b!2242421 m!2674597))

(declare-fun m!2674599 () Bool)

(assert (=> b!2242421 m!2674599))

(declare-fun m!2674601 () Bool)

(assert (=> b!2242420 m!2674601))

(assert (=> d!665930 d!665942))

(push 1)

(assert (not start!218494))

(assert (not b!2242398))

(assert (not b!2242388))

(assert (not b!2242420))

(assert (not d!665940))

(assert (not b!2242416))

(assert (not b!2242417))

(assert (not b!2242421))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!665940 d!665930))

(declare-fun b!2242450 () Bool)

(declare-fun e!1434120 () List!26575)

(declare-fun call!135387 () List!26575)

(assert (=> b!2242450 (= e!1434120 call!135387)))

(declare-fun b!2242451 () Bool)

(declare-fun e!1434121 () List!26575)

(declare-fun lt!834907 () List!26575)

(assert (=> b!2242451 (= e!1434121 lt!834907)))

(declare-fun b!2242452 () Bool)

(declare-fun e!1434119 () List!26575)

(assert (=> b!2242452 (= e!1434119 (efficientList$default$2!100 (c!356979 x!430536)))))

(declare-fun b!2242453 () Bool)

(declare-datatypes ((Unit!39480 0))(
  ( (Unit!39481) )
))
(declare-fun lt!834909 () Unit!39480)

(declare-fun lt!834905 () Unit!39480)

(assert (=> b!2242453 (= lt!834909 lt!834905)))

(declare-fun lt!834906 () List!26575)

(assert (=> b!2242453 (= (++!6476 call!135387 (efficientList$default$2!100 (c!356979 x!430536))) (++!6476 lt!834907 (++!6476 lt!834906 (efficientList$default$2!100 (c!356979 x!430536)))))))

(declare-fun lemmaConcatAssociativity!1331 (List!26575 List!26575 List!26575) Unit!39480)

(assert (=> b!2242453 (= lt!834905 (lemmaConcatAssociativity!1331 lt!834907 lt!834906 (efficientList$default$2!100 (c!356979 x!430536))))))

(assert (=> b!2242453 (= lt!834906 (list!10102 (right!20447 (c!356979 x!430536))))))

(assert (=> b!2242453 (= lt!834907 (list!10102 (left!20117 (c!356979 x!430536))))))

(assert (=> b!2242453 (= e!1434120 (efficientList!290 (left!20117 (c!356979 x!430536)) (efficientList!290 (right!20447 (c!356979 x!430536)) (efficientList$default$2!100 (c!356979 x!430536)))))))

(declare-fun bm!135382 () Bool)

(declare-fun c!357012 () Bool)

(declare-fun c!357013 () Bool)

(assert (=> bm!135382 (= c!357012 c!357013)))

(assert (=> bm!135382 (= call!135387 (++!6476 e!1434121 (ite c!357013 (efficientList$default$2!100 (c!356979 x!430536)) lt!834906)))))

(declare-fun b!2242455 () Bool)

(assert (=> b!2242455 (= e!1434119 e!1434120)))

(assert (=> b!2242455 (= c!357013 (is-Leaf!12588 (c!356979 x!430536)))))

(declare-fun d!665950 () Bool)

(declare-fun lt!834908 () List!26575)

(assert (=> d!665950 (= lt!834908 (++!6476 (list!10102 (c!356979 x!430536)) (efficientList$default$2!100 (c!356979 x!430536))))))

(assert (=> d!665950 (= lt!834908 e!1434119)))

(declare-fun c!357011 () Bool)

(assert (=> d!665950 (= c!357011 (is-Empty!8514 (c!356979 x!430536)))))

(assert (=> d!665950 (= (efficientList!290 (c!356979 x!430536) (efficientList$default$2!100 (c!356979 x!430536))) lt!834908)))

(declare-fun b!2242454 () Bool)

(declare-fun efficientList!292 (IArray!17033) List!26575)

(assert (=> b!2242454 (= e!1434121 (efficientList!292 (xs!11456 (c!356979 x!430536))))))

(assert (= (and d!665950 c!357011) b!2242452))

(assert (= (and d!665950 (not c!357011)) b!2242455))

(assert (= (and b!2242455 c!357013) b!2242450))

(assert (= (and b!2242455 (not c!357013)) b!2242453))

(assert (= (or b!2242450 b!2242453) bm!135382))

(assert (= (and bm!135382 c!357012) b!2242454))

(assert (= (and bm!135382 (not c!357012)) b!2242451))

(assert (=> b!2242453 m!2674591))

(declare-fun m!2674623 () Bool)

(assert (=> b!2242453 m!2674623))

(assert (=> b!2242453 m!2674591))

(declare-fun m!2674625 () Bool)

(assert (=> b!2242453 m!2674625))

(assert (=> b!2242453 m!2674597))

(assert (=> b!2242453 m!2674591))

(declare-fun m!2674627 () Bool)

(assert (=> b!2242453 m!2674627))

(assert (=> b!2242453 m!2674591))

(declare-fun m!2674629 () Bool)

(assert (=> b!2242453 m!2674629))

(assert (=> b!2242453 m!2674625))

(declare-fun m!2674631 () Bool)

(assert (=> b!2242453 m!2674631))

(assert (=> b!2242453 m!2674623))

(declare-fun m!2674633 () Bool)

(assert (=> b!2242453 m!2674633))

(assert (=> b!2242453 m!2674595))

(declare-fun m!2674635 () Bool)

(assert (=> bm!135382 m!2674635))

(assert (=> d!665950 m!2674573))

(assert (=> d!665950 m!2674573))

(assert (=> d!665950 m!2674591))

(declare-fun m!2674637 () Bool)

(assert (=> d!665950 m!2674637))

(declare-fun m!2674639 () Bool)

(assert (=> b!2242454 m!2674639))

(assert (=> d!665940 d!665950))

(declare-fun d!665952 () Bool)

(assert (=> d!665952 (= (efficientList$default$2!100 (c!356979 x!430536)) Nil!26481)))

(assert (=> d!665940 d!665952))

(declare-fun d!665954 () Bool)

(declare-fun fromListB!1300 (List!26575) BalanceConc!16756)

(assert (=> d!665954 (= (seqFromList!2886 (text!30817 (toValue!32 thiss!4969 x!430536))) (fromListB!1300 (text!30817 (toValue!32 thiss!4969 x!430536))))))

(declare-fun bs!454376 () Bool)

(assert (= bs!454376 d!665954))

(declare-fun m!2674641 () Bool)

(assert (=> bs!454376 m!2674641))

(assert (=> b!2242398 d!665954))

(declare-fun d!665956 () Bool)

(declare-fun isBalanced!2642 (Conc!8514) Bool)

(assert (=> d!665956 (= (inv!35962 x!430536) (isBalanced!2642 (c!356979 x!430536)))))

(declare-fun bs!454377 () Bool)

(assert (= bs!454377 d!665956))

(declare-fun m!2674643 () Bool)

(assert (=> bs!454377 m!2674643))

(assert (=> start!218494 d!665956))

(assert (=> start!218494 d!665924))

(assert (=> start!218494 d!665926))

(assert (=> start!218494 d!665922))

(declare-fun d!665958 () Bool)

(declare-fun choose!13144 (Int) Bool)

(assert (=> d!665958 (= (Forall!1050 lambda!84914) (choose!13144 lambda!84914))))

(declare-fun bs!454378 () Bool)

(assert (= bs!454378 d!665958))

(declare-fun m!2674645 () Bool)

(assert (=> bs!454378 m!2674645))

(assert (=> start!218494 d!665958))

(assert (=> start!218494 d!665930))

(declare-fun d!665960 () Bool)

(declare-fun c!357016 () Bool)

(assert (=> d!665960 (= c!357016 (is-Node!8514 (c!356979 x!430536)))))

(declare-fun e!1434126 () Bool)

(assert (=> d!665960 (= (inv!35961 (c!356979 x!430536)) e!1434126)))

(declare-fun b!2242462 () Bool)

(declare-fun inv!35965 (Conc!8514) Bool)

(assert (=> b!2242462 (= e!1434126 (inv!35965 (c!356979 x!430536)))))

(declare-fun b!2242463 () Bool)

(declare-fun e!1434127 () Bool)

(assert (=> b!2242463 (= e!1434126 e!1434127)))

(declare-fun res!958169 () Bool)

(assert (=> b!2242463 (= res!958169 (not (is-Leaf!12588 (c!356979 x!430536))))))

(assert (=> b!2242463 (=> res!958169 e!1434127)))

(declare-fun b!2242464 () Bool)

(declare-fun inv!35966 (Conc!8514) Bool)

(assert (=> b!2242464 (= e!1434127 (inv!35966 (c!356979 x!430536)))))

(assert (= (and d!665960 c!357016) b!2242462))

(assert (= (and d!665960 (not c!357016)) b!2242463))

(assert (= (and b!2242463 (not res!958169)) b!2242464))

(declare-fun m!2674647 () Bool)

(assert (=> b!2242462 m!2674647))

(declare-fun m!2674649 () Bool)

(assert (=> b!2242464 m!2674649))

(assert (=> b!2242388 d!665960))

(declare-fun tp!707325 () Bool)

(declare-fun tp!707324 () Bool)

(declare-fun b!2242471 () Bool)

(declare-fun e!1434132 () Bool)

(assert (=> b!2242471 (= e!1434132 (and (inv!35961 (left!20117 (c!356979 x!430536))) tp!707324 (inv!35961 (right!20447 (c!356979 x!430536))) tp!707325))))

(declare-fun b!2242472 () Bool)

(declare-fun inv!35967 (IArray!17033) Bool)

(assert (=> b!2242472 (= e!1434132 (inv!35967 (xs!11456 (c!356979 x!430536))))))

(assert (=> b!2242388 (= tp!707316 (and (inv!35961 (c!356979 x!430536)) e!1434132))))

(assert (= (and b!2242388 (is-Node!8514 (c!356979 x!430536))) b!2242471))

(assert (= (and b!2242388 (is-Leaf!12588 (c!356979 x!430536))) b!2242472))

(declare-fun m!2674651 () Bool)

(assert (=> b!2242471 m!2674651))

(declare-fun m!2674653 () Bool)

(assert (=> b!2242471 m!2674653))

(declare-fun m!2674655 () Bool)

(assert (=> b!2242472 m!2674655))

(assert (=> b!2242388 m!2674539))

(push 1)

(assert (not d!665958))

(assert (not b!2242454))

(assert (not d!665956))

(assert (not b!2242471))

(assert (not b!2242464))

(assert (not b!2242388))

(assert (not b!2242420))

(assert (not b!2242472))

(assert (not b!2242462))

(assert (not bm!135382))

(assert (not b!2242417))

(assert (not b!2242421))

(assert (not b!2242453))

(assert (not d!665950))

(assert (not d!665954))

(assert (not b!2242416))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2242503 () Bool)

(declare-fun e!1434151 () List!26575)

(assert (=> b!2242503 (= e!1434151 (Cons!26481 (h!31882 (list!10102 (c!356979 x!430536))) (++!6476 (t!200017 (list!10102 (c!356979 x!430536))) (efficientList$default$2!100 (c!356979 x!430536)))))))

(declare-fun b!2242504 () Bool)

(declare-fun res!958177 () Bool)

(declare-fun e!1434150 () Bool)

(assert (=> b!2242504 (=> (not res!958177) (not e!1434150))))

(declare-fun lt!834922 () List!26575)

(declare-fun size!20716 (List!26575) Int)

(assert (=> b!2242504 (= res!958177 (= (size!20716 lt!834922) (+ (size!20716 (list!10102 (c!356979 x!430536))) (size!20716 (efficientList$default$2!100 (c!356979 x!430536))))))))

(declare-fun b!2242502 () Bool)

(assert (=> b!2242502 (= e!1434151 (efficientList$default$2!100 (c!356979 x!430536)))))

(declare-fun d!665972 () Bool)

(assert (=> d!665972 e!1434150))

(declare-fun res!958178 () Bool)

(assert (=> d!665972 (=> (not res!958178) (not e!1434150))))

(declare-fun content!3535 (List!26575) (Set (_ BitVec 16)))

(assert (=> d!665972 (= res!958178 (= (content!3535 lt!834922) (set.union (content!3535 (list!10102 (c!356979 x!430536))) (content!3535 (efficientList$default$2!100 (c!356979 x!430536))))))))

(assert (=> d!665972 (= lt!834922 e!1434151)))

(declare-fun c!357028 () Bool)

(assert (=> d!665972 (= c!357028 (is-Nil!26481 (list!10102 (c!356979 x!430536))))))

(assert (=> d!665972 (= (++!6476 (list!10102 (c!356979 x!430536)) (efficientList$default$2!100 (c!356979 x!430536))) lt!834922)))

(declare-fun b!2242505 () Bool)

(assert (=> b!2242505 (= e!1434150 (or (not (= (efficientList$default$2!100 (c!356979 x!430536)) Nil!26481)) (= lt!834922 (list!10102 (c!356979 x!430536)))))))

(assert (= (and d!665972 c!357028) b!2242502))

(assert (= (and d!665972 (not c!357028)) b!2242503))

(assert (= (and d!665972 res!958178) b!2242504))

(assert (= (and b!2242504 res!958177) b!2242505))

(assert (=> b!2242503 m!2674591))

(declare-fun m!2674667 () Bool)

(assert (=> b!2242503 m!2674667))

(declare-fun m!2674669 () Bool)

(assert (=> b!2242504 m!2674669))

(assert (=> b!2242504 m!2674573))

(declare-fun m!2674671 () Bool)

(assert (=> b!2242504 m!2674671))

(assert (=> b!2242504 m!2674591))

(declare-fun m!2674673 () Bool)

(assert (=> b!2242504 m!2674673))

(declare-fun m!2674675 () Bool)

(assert (=> d!665972 m!2674675))

(assert (=> d!665972 m!2674573))

(declare-fun m!2674677 () Bool)

(assert (=> d!665972 m!2674677))

(assert (=> d!665972 m!2674591))

(declare-fun m!2674679 () Bool)

(assert (=> d!665972 m!2674679))

(assert (=> d!665950 d!665972))

(assert (=> d!665950 d!665942))

(declare-fun d!665974 () Bool)

(declare-fun e!1434154 () Bool)

(assert (=> d!665974 e!1434154))

(declare-fun res!958181 () Bool)

(assert (=> d!665974 (=> (not res!958181) (not e!1434154))))

(declare-fun lt!834925 () BalanceConc!16756)

(assert (=> d!665974 (= res!958181 (= (list!10100 lt!834925) (text!30817 (toValue!32 thiss!4969 x!430536))))))

(declare-fun fromList!506 (List!26575) Conc!8514)

(assert (=> d!665974 (= lt!834925 (BalanceConc!16757 (fromList!506 (text!30817 (toValue!32 thiss!4969 x!430536)))))))

(assert (=> d!665974 (= (fromListB!1300 (text!30817 (toValue!32 thiss!4969 x!430536))) lt!834925)))

(declare-fun b!2242508 () Bool)

(assert (=> b!2242508 (= e!1434154 (isBalanced!2642 (fromList!506 (text!30817 (toValue!32 thiss!4969 x!430536)))))))

(assert (= (and d!665974 res!958181) b!2242508))

(declare-fun m!2674681 () Bool)

(assert (=> d!665974 m!2674681))

(declare-fun m!2674683 () Bool)

(assert (=> d!665974 m!2674683))

(assert (=> b!2242508 m!2674683))

(assert (=> b!2242508 m!2674683))

(declare-fun m!2674685 () Bool)

(assert (=> b!2242508 m!2674685))

(assert (=> d!665954 d!665974))

(push 1)

(assert (not d!665958))

(assert (not d!665956))

(assert (not b!2242471))

(assert (not b!2242464))

(assert (not b!2242453))

(assert (not b!2242420))

(assert (not b!2242508))

(assert (not b!2242472))

(assert (not d!665972))

(assert (not b!2242416))

(assert (not d!665974))

(assert (not b!2242454))

(assert (not b!2242503))

(assert (not b!2242462))

(assert (not bm!135382))

(assert (not b!2242417))

(assert (not b!2242421))

(assert (not b!2242388))

(assert (not b!2242504))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

