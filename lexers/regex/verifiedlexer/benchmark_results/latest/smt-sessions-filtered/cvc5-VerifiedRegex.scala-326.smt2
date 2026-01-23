; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!10832 () Bool)

(assert start!10832)

(assert (=> start!10832 true))

(declare-fun b!108566 () Bool)

(assert (=> b!108566 true))

(assert (=> b!108566 true))

(declare-fun b!108567 () Bool)

(assert (=> b!108567 true))

(declare-fun b!108578 () Bool)

(declare-fun e!60264 () Bool)

(declare-datatypes ((List!1724 0))(
  ( (Nil!1718) (Cons!1718 (h!7115 (_ BitVec 16)) (t!21577 List!1724)) )
))
(declare-datatypes ((IArray!1101 0))(
  ( (IArray!1102 (innerList!608 List!1724)) )
))
(declare-datatypes ((Conc!550 0))(
  ( (Node!550 (left!1340 Conc!550) (right!1670 Conc!550) (csize!1330 Int) (cheight!761 Int)) (Leaf!877 (xs!3145 IArray!1101) (csize!1331 Int)) (Empty!550) )
))
(declare-datatypes ((BalanceConc!1104 0))(
  ( (BalanceConc!1105 (c!26083 Conc!550)) )
))
(declare-fun x!30114 () BalanceConc!1104)

(declare-fun tp!58995 () Bool)

(declare-fun inv!2129 (Conc!550) Bool)

(assert (=> b!108578 (= e!60264 (and (inv!2129 (c!26083 x!30114)) tp!58995))))

(declare-fun inst!88 () Bool)

(declare-datatypes ((ErrorTokenValueInjection!20 0))(
  ( (ErrorTokenValueInjection!21) )
))
(declare-fun thiss!5419 () ErrorTokenValueInjection!20)

(declare-fun inv!2130 (BalanceConc!1104) Bool)

(declare-fun list!749 (BalanceConc!1104) List!1724)

(declare-datatypes ((TokenValue!372 0))(
  ( (FloatLiteralValue!744 (text!3049 List!1724)) (TokenValueExt!371 (__x!1831 Int)) (Broken!1860 (value!13734 List!1724)) (Object!377) (End!372) (Def!372) (Underscore!372) (Match!372) (Else!372) (Error!372) (Case!372) (If!372) (Extends!372) (Abstract!372) (Class!372) (Val!372) (DelimiterValue!744 (del!432 List!1724)) (KeywordValue!378 (value!13735 List!1724)) (CommentValue!744 (value!13736 List!1724)) (WhitespaceValue!744 (value!13737 List!1724)) (IndentationValue!372 (value!13738 List!1724)) (String!2237) (Int32!372) (Broken!1861 (value!13739 List!1724)) (Boolean!373) (Unit!1152) (OperatorValue!375 (op!432 List!1724)) (IdentifierValue!744 (value!13740 List!1724)) (IdentifierValue!745 (value!13741 List!1724)) (WhitespaceValue!745 (value!13742 List!1724)) (True!744) (False!744) (Broken!1862 (value!13743 List!1724)) (Broken!1863 (value!13744 List!1724)) (True!745) (RightBrace!372) (RightBracket!372) (Colon!372) (Null!372) (Comma!372) (LeftBracket!372) (False!745) (LeftBrace!372) (ImaginaryLiteralValue!372 (text!3050 List!1724)) (StringLiteralValue!1116 (value!13745 List!1724)) (EOFValue!372 (value!13746 List!1724)) (IdentValue!372 (value!13747 List!1724)) (DelimiterValue!745 (value!13748 List!1724)) (DedentValue!372 (value!13749 List!1724)) (NewLineValue!372 (value!13750 List!1724)) (IntegerValue!1116 (value!13751 (_ BitVec 32)) (text!3051 List!1724)) (IntegerValue!1117 (value!13752 Int) (text!3052 List!1724)) (Times!372) (Or!372) (Equal!372) (Minus!372) (Broken!1864 (value!13753 List!1724)) (And!372) (Div!372) (LessEqual!372) (Mod!372) (Concat!814) (Not!372) (Plus!372) (SpaceValue!372 (value!13754 List!1724)) (IntegerValue!1118 (value!13755 Int) (text!3053 List!1724)) (StringLiteralValue!1117 (text!3054 List!1724)) (FloatLiteralValue!745 (text!3055 List!1724)) (BytesLiteralValue!372 (value!13756 List!1724)) (CommentValue!745 (value!13757 List!1724)) (StringLiteralValue!1118 (value!13758 List!1724)) (ErrorTokenValue!372 (msg!433 List!1724)) )
))
(declare-fun toCharacters!31 (ErrorTokenValueInjection!20 TokenValue!372) BalanceConc!1104)

(declare-fun toValue!38 (ErrorTokenValueInjection!20 BalanceConc!1104) TokenValue!372)

(assert (=> start!10832 (= inst!88 (=> (and (inv!2130 x!30114) e!60264) (= (list!749 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30114))) (list!749 x!30114))))))

(assert (= start!10832 b!108578))

(declare-fun m!97282 () Bool)

(assert (=> b!108578 m!97282))

(declare-fun m!97284 () Bool)

(assert (=> start!10832 m!97284))

(declare-fun m!97286 () Bool)

(assert (=> start!10832 m!97286))

(declare-fun m!97288 () Bool)

(assert (=> start!10832 m!97288))

(declare-fun m!97290 () Bool)

(assert (=> start!10832 m!97290))

(assert (=> start!10832 m!97290))

(assert (=> start!10832 m!97284))

(declare-fun m!97292 () Bool)

(assert (=> start!10832 m!97292))

(declare-fun res!51923 () Bool)

(declare-fun e!60267 () Bool)

(assert (=> b!108567 (=> res!51923 e!60267)))

(declare-fun x!30115 () BalanceConc!1104)

(declare-fun x!30116 () BalanceConc!1104)

(assert (=> b!108567 (= res!51923 (not (= (list!749 x!30115) (list!749 x!30116))))))

(declare-fun e!60265 () Bool)

(declare-fun inst!89 () Bool)

(declare-fun e!60266 () Bool)

(assert (=> b!108567 (= inst!89 (=> (and (inv!2130 x!30115) e!60265 (inv!2130 x!30116) e!60266) e!60267))))

(declare-fun b!108579 () Bool)

(assert (=> b!108579 (= e!60267 (= (toValue!38 thiss!5419 x!30115) (toValue!38 thiss!5419 x!30116)))))

(declare-fun b!108580 () Bool)

(declare-fun tp!58997 () Bool)

(assert (=> b!108580 (= e!60265 (and (inv!2129 (c!26083 x!30115)) tp!58997))))

(declare-fun b!108581 () Bool)

(declare-fun tp!58996 () Bool)

(assert (=> b!108581 (= e!60266 (and (inv!2129 (c!26083 x!30116)) tp!58996))))

(assert (= (and b!108567 (not res!51923)) b!108579))

(assert (= b!108567 b!108580))

(assert (= b!108567 b!108581))

(declare-fun m!97294 () Bool)

(assert (=> b!108567 m!97294))

(declare-fun m!97296 () Bool)

(assert (=> b!108567 m!97296))

(declare-fun m!97298 () Bool)

(assert (=> b!108567 m!97298))

(declare-fun m!97300 () Bool)

(assert (=> b!108567 m!97300))

(declare-fun m!97302 () Bool)

(assert (=> b!108579 m!97302))

(declare-fun m!97304 () Bool)

(assert (=> b!108579 m!97304))

(declare-fun m!97306 () Bool)

(assert (=> b!108580 m!97306))

(declare-fun m!97308 () Bool)

(assert (=> b!108581 m!97308))

(declare-fun bs!10600 () Bool)

(declare-fun neg-inst!88 () Bool)

(declare-fun s!16368 () Bool)

(assert (= bs!10600 (and neg-inst!88 s!16368)))

(assert (=> bs!10600 (=> true (= (list!749 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30114))) (list!749 x!30114)))))

(assert (=> m!97288 m!97290))

(assert (=> m!97288 m!97284))

(assert (=> m!97288 m!97286))

(assert (=> m!97288 s!16368))

(assert (=> m!97290 s!16368))

(declare-fun bs!10601 () Bool)

(assert (= bs!10601 (and neg-inst!88 start!10832)))

(assert (=> bs!10601 (= true inst!88)))

(declare-fun bs!10602 () Bool)

(declare-fun neg-inst!89 () Bool)

(declare-fun s!16370 () Bool)

(assert (= bs!10602 (and neg-inst!89 s!16370)))

(declare-fun res!51924 () Bool)

(declare-fun e!60268 () Bool)

(assert (=> bs!10602 (=> res!51924 e!60268)))

(assert (=> bs!10602 (= res!51924 (not (= (list!749 x!30115) (list!749 x!30115))))))

(assert (=> bs!10602 (=> true e!60268)))

(declare-fun b!108582 () Bool)

(assert (=> b!108582 (= e!60268 (= (toValue!38 thiss!5419 x!30115) (toValue!38 thiss!5419 x!30115)))))

(assert (= (and bs!10602 (not res!51924)) b!108582))

(assert (=> m!97302 m!97294))

(assert (=> m!97302 m!97294))

(assert (=> m!97302 s!16370))

(assert (=> m!97302 s!16370))

(declare-fun bs!10603 () Bool)

(declare-fun s!16372 () Bool)

(assert (= bs!10603 (and neg-inst!89 s!16372)))

(declare-fun res!51925 () Bool)

(declare-fun e!60269 () Bool)

(assert (=> bs!10603 (=> res!51925 e!60269)))

(assert (=> bs!10603 (= res!51925 (not (= (list!749 x!30115) (list!749 x!30114))))))

(assert (=> bs!10603 (=> true e!60269)))

(declare-fun b!108583 () Bool)

(assert (=> b!108583 (= e!60269 (= (toValue!38 thiss!5419 x!30115) (toValue!38 thiss!5419 x!30114)))))

(assert (= (and bs!10603 (not res!51925)) b!108583))

(declare-fun bs!10604 () Bool)

(assert (= bs!10604 (and m!97288 m!97302)))

(assert (=> bs!10604 m!97294))

(assert (=> bs!10604 m!97288))

(assert (=> bs!10604 s!16372))

(declare-fun bs!10605 () Bool)

(declare-fun s!16374 () Bool)

(assert (= bs!10605 (and neg-inst!89 s!16374)))

(declare-fun res!51926 () Bool)

(declare-fun e!60270 () Bool)

(assert (=> bs!10605 (=> res!51926 e!60270)))

(assert (=> bs!10605 (= res!51926 (not (= (list!749 x!30114) (list!749 x!30114))))))

(assert (=> bs!10605 (=> true e!60270)))

(declare-fun b!108584 () Bool)

(assert (=> b!108584 (= e!60270 (= (toValue!38 thiss!5419 x!30114) (toValue!38 thiss!5419 x!30114)))))

(assert (= (and bs!10605 (not res!51926)) b!108584))

(assert (=> m!97288 s!16374))

(declare-fun bs!10606 () Bool)

(declare-fun s!16376 () Bool)

(assert (= bs!10606 (and neg-inst!89 s!16376)))

(declare-fun res!51927 () Bool)

(declare-fun e!60271 () Bool)

(assert (=> bs!10606 (=> res!51927 e!60271)))

(assert (=> bs!10606 (= res!51927 (not (= (list!749 x!30114) (list!749 x!30115))))))

(assert (=> bs!10606 (=> true e!60271)))

(declare-fun b!108585 () Bool)

(assert (=> b!108585 (= e!60271 (= (toValue!38 thiss!5419 x!30114) (toValue!38 thiss!5419 x!30115)))))

(assert (= (and bs!10606 (not res!51927)) b!108585))

(assert (=> bs!10604 m!97288))

(assert (=> bs!10604 m!97294))

(assert (=> bs!10604 s!16376))

(assert (=> m!97288 s!16374))

(declare-fun bs!10607 () Bool)

(declare-fun s!16378 () Bool)

(assert (= bs!10607 (and neg-inst!89 s!16378)))

(declare-fun res!51928 () Bool)

(declare-fun e!60272 () Bool)

(assert (=> bs!10607 (=> res!51928 e!60272)))

(assert (=> bs!10607 (= res!51928 (not (= (list!749 x!30115) (list!749 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30114))))))))

(assert (=> bs!10607 (=> true e!60272)))

(declare-fun b!108586 () Bool)

(assert (=> b!108586 (= e!60272 (= (toValue!38 thiss!5419 x!30115) (toValue!38 thiss!5419 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30114)))))))

(assert (= (and bs!10607 (not res!51928)) b!108586))

(declare-fun bs!10608 () Bool)

(assert (= bs!10608 (and m!97286 m!97302)))

(assert (=> bs!10608 m!97294))

(assert (=> bs!10608 m!97286))

(assert (=> bs!10608 s!16378))

(declare-fun bs!10609 () Bool)

(declare-fun s!16380 () Bool)

(assert (= bs!10609 (and neg-inst!89 s!16380)))

(declare-fun res!51929 () Bool)

(declare-fun e!60273 () Bool)

(assert (=> bs!10609 (=> res!51929 e!60273)))

(assert (=> bs!10609 (= res!51929 (not (= (list!749 x!30114) (list!749 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30114))))))))

(assert (=> bs!10609 (=> true e!60273)))

(declare-fun b!108587 () Bool)

(assert (=> b!108587 (= e!60273 (= (toValue!38 thiss!5419 x!30114) (toValue!38 thiss!5419 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30114)))))))

(assert (= (and bs!10609 (not res!51929)) b!108587))

(declare-fun bs!10610 () Bool)

(assert (= bs!10610 (and m!97286 m!97288)))

(assert (=> bs!10610 m!97288))

(assert (=> bs!10610 m!97286))

(assert (=> bs!10610 s!16380))

(declare-fun bs!10611 () Bool)

(declare-fun s!16382 () Bool)

(assert (= bs!10611 (and neg-inst!89 s!16382)))

(declare-fun res!51930 () Bool)

(declare-fun e!60274 () Bool)

(assert (=> bs!10611 (=> res!51930 e!60274)))

(assert (=> bs!10611 (= res!51930 (not (= (list!749 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30114))) (list!749 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30114))))))))

(assert (=> bs!10611 (=> true e!60274)))

(declare-fun b!108588 () Bool)

(assert (=> b!108588 (= e!60274 (= (toValue!38 thiss!5419 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30114))) (toValue!38 thiss!5419 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30114)))))))

(assert (= (and bs!10611 (not res!51930)) b!108588))

(assert (=> m!97286 s!16382))

(declare-fun bs!10612 () Bool)

(declare-fun s!16384 () Bool)

(assert (= bs!10612 (and neg-inst!89 s!16384)))

(declare-fun res!51931 () Bool)

(declare-fun e!60275 () Bool)

(assert (=> bs!10612 (=> res!51931 e!60275)))

(assert (=> bs!10612 (= res!51931 (not (= (list!749 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30114))) (list!749 x!30115))))))

(assert (=> bs!10612 (=> true e!60275)))

(declare-fun b!108589 () Bool)

(assert (=> b!108589 (= e!60275 (= (toValue!38 thiss!5419 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30114))) (toValue!38 thiss!5419 x!30115)))))

(assert (= (and bs!10612 (not res!51931)) b!108589))

(assert (=> bs!10608 m!97286))

(assert (=> bs!10608 m!97294))

(assert (=> bs!10608 s!16384))

(declare-fun bs!10613 () Bool)

(declare-fun s!16386 () Bool)

(assert (= bs!10613 (and neg-inst!89 s!16386)))

(declare-fun res!51932 () Bool)

(declare-fun e!60276 () Bool)

(assert (=> bs!10613 (=> res!51932 e!60276)))

(assert (=> bs!10613 (= res!51932 (not (= (list!749 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30114))) (list!749 x!30114))))))

(assert (=> bs!10613 (=> true e!60276)))

(declare-fun b!108590 () Bool)

(assert (=> b!108590 (= e!60276 (= (toValue!38 thiss!5419 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30114))) (toValue!38 thiss!5419 x!30114)))))

(assert (= (and bs!10613 (not res!51932)) b!108590))

(assert (=> bs!10610 m!97286))

(assert (=> bs!10610 m!97288))

(assert (=> bs!10610 s!16386))

(assert (=> m!97286 s!16382))

(declare-fun bs!10614 () Bool)

(assert (= bs!10614 (and m!97290 m!97302)))

(assert (=> bs!10614 s!16372))

(declare-fun bs!10615 () Bool)

(assert (= bs!10615 (and m!97290 m!97288)))

(assert (=> bs!10615 s!16374))

(declare-fun bs!10616 () Bool)

(assert (= bs!10616 (and m!97290 m!97286)))

(assert (=> bs!10616 s!16386))

(assert (=> m!97290 s!16374))

(assert (=> bs!10614 s!16376))

(assert (=> bs!10615 s!16374))

(assert (=> bs!10616 s!16380))

(assert (=> m!97290 s!16374))

(declare-fun bs!10617 () Bool)

(assert (= bs!10617 (and m!97294 m!97302)))

(assert (=> bs!10617 s!16370))

(declare-fun bs!10618 () Bool)

(assert (= bs!10618 (and m!97294 m!97288 m!97290)))

(assert (=> bs!10618 s!16376))

(declare-fun bs!10619 () Bool)

(assert (= bs!10619 (and m!97294 m!97286)))

(assert (=> bs!10619 s!16384))

(assert (=> m!97294 s!16370))

(assert (=> bs!10617 s!16370))

(assert (=> bs!10618 s!16372))

(assert (=> bs!10619 s!16378))

(assert (=> m!97294 s!16370))

(declare-fun bs!10620 () Bool)

(declare-fun s!16388 () Bool)

(assert (= bs!10620 (and neg-inst!89 s!16388)))

(declare-fun res!51933 () Bool)

(declare-fun e!60277 () Bool)

(assert (=> bs!10620 (=> res!51933 e!60277)))

(assert (=> bs!10620 (= res!51933 (not (= (list!749 x!30115) (list!749 x!30116))))))

(assert (=> bs!10620 (=> true e!60277)))

(declare-fun b!108591 () Bool)

(assert (=> b!108591 (= e!60277 (= (toValue!38 thiss!5419 x!30115) (toValue!38 thiss!5419 x!30116)))))

(assert (= (and bs!10620 (not res!51933)) b!108591))

(declare-fun bs!10621 () Bool)

(assert (= bs!10621 (and m!97304 m!97302 m!97294)))

(assert (=> bs!10621 m!97294))

(assert (=> bs!10621 m!97296))

(assert (=> bs!10621 s!16388))

(declare-fun bs!10622 () Bool)

(declare-fun s!16390 () Bool)

(assert (= bs!10622 (and neg-inst!89 s!16390)))

(declare-fun res!51934 () Bool)

(declare-fun e!60278 () Bool)

(assert (=> bs!10622 (=> res!51934 e!60278)))

(assert (=> bs!10622 (= res!51934 (not (= (list!749 x!30114) (list!749 x!30116))))))

(assert (=> bs!10622 (=> true e!60278)))

(declare-fun b!108592 () Bool)

(assert (=> b!108592 (= e!60278 (= (toValue!38 thiss!5419 x!30114) (toValue!38 thiss!5419 x!30116)))))

(assert (= (and bs!10622 (not res!51934)) b!108592))

(declare-fun bs!10623 () Bool)

(assert (= bs!10623 (and m!97304 m!97288 m!97290)))

(assert (=> bs!10623 m!97288))

(assert (=> bs!10623 m!97296))

(assert (=> bs!10623 s!16390))

(declare-fun bs!10624 () Bool)

(declare-fun s!16392 () Bool)

(assert (= bs!10624 (and neg-inst!89 s!16392)))

(declare-fun res!51935 () Bool)

(declare-fun e!60279 () Bool)

(assert (=> bs!10624 (=> res!51935 e!60279)))

(assert (=> bs!10624 (= res!51935 (not (= (list!749 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30114))) (list!749 x!30116))))))

(assert (=> bs!10624 (=> true e!60279)))

(declare-fun b!108593 () Bool)

(assert (=> b!108593 (= e!60279 (= (toValue!38 thiss!5419 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30114))) (toValue!38 thiss!5419 x!30116)))))

(assert (= (and bs!10624 (not res!51935)) b!108593))

(declare-fun bs!10625 () Bool)

(assert (= bs!10625 (and m!97304 m!97286)))

(assert (=> bs!10625 m!97286))

(assert (=> bs!10625 m!97296))

(assert (=> bs!10625 s!16392))

(declare-fun bs!10626 () Bool)

(declare-fun s!16394 () Bool)

(assert (= bs!10626 (and neg-inst!89 s!16394)))

(declare-fun res!51936 () Bool)

(declare-fun e!60280 () Bool)

(assert (=> bs!10626 (=> res!51936 e!60280)))

(assert (=> bs!10626 (= res!51936 (not (= (list!749 x!30116) (list!749 x!30116))))))

(assert (=> bs!10626 (=> true e!60280)))

(declare-fun b!108594 () Bool)

(assert (=> b!108594 (= e!60280 (= (toValue!38 thiss!5419 x!30116) (toValue!38 thiss!5419 x!30116)))))

(assert (= (and bs!10626 (not res!51936)) b!108594))

(assert (=> m!97304 m!97296))

(assert (=> m!97304 m!97296))

(assert (=> m!97304 s!16394))

(declare-fun bs!10627 () Bool)

(declare-fun s!16396 () Bool)

(assert (= bs!10627 (and neg-inst!89 s!16396)))

(declare-fun res!51937 () Bool)

(declare-fun e!60281 () Bool)

(assert (=> bs!10627 (=> res!51937 e!60281)))

(assert (=> bs!10627 (= res!51937 (not (= (list!749 x!30116) (list!749 x!30115))))))

(assert (=> bs!10627 (=> true e!60281)))

(declare-fun b!108595 () Bool)

(assert (=> b!108595 (= e!60281 (= (toValue!38 thiss!5419 x!30116) (toValue!38 thiss!5419 x!30115)))))

(assert (= (and bs!10627 (not res!51937)) b!108595))

(assert (=> bs!10621 m!97296))

(assert (=> bs!10621 m!97294))

(assert (=> bs!10621 s!16396))

(declare-fun bs!10628 () Bool)

(declare-fun s!16398 () Bool)

(assert (= bs!10628 (and neg-inst!89 s!16398)))

(declare-fun res!51938 () Bool)

(declare-fun e!60282 () Bool)

(assert (=> bs!10628 (=> res!51938 e!60282)))

(assert (=> bs!10628 (= res!51938 (not (= (list!749 x!30116) (list!749 x!30114))))))

(assert (=> bs!10628 (=> true e!60282)))

(declare-fun b!108596 () Bool)

(assert (=> b!108596 (= e!60282 (= (toValue!38 thiss!5419 x!30116) (toValue!38 thiss!5419 x!30114)))))

(assert (= (and bs!10628 (not res!51938)) b!108596))

(assert (=> bs!10623 m!97296))

(assert (=> bs!10623 m!97288))

(assert (=> bs!10623 s!16398))

(declare-fun bs!10629 () Bool)

(declare-fun s!16400 () Bool)

(assert (= bs!10629 (and neg-inst!89 s!16400)))

(declare-fun res!51939 () Bool)

(declare-fun e!60283 () Bool)

(assert (=> bs!10629 (=> res!51939 e!60283)))

(assert (=> bs!10629 (= res!51939 (not (= (list!749 x!30116) (list!749 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30114))))))))

(assert (=> bs!10629 (=> true e!60283)))

(declare-fun b!108597 () Bool)

(assert (=> b!108597 (= e!60283 (= (toValue!38 thiss!5419 x!30116) (toValue!38 thiss!5419 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30114)))))))

(assert (= (and bs!10629 (not res!51939)) b!108597))

(assert (=> bs!10625 m!97296))

(assert (=> bs!10625 m!97286))

(assert (=> bs!10625 s!16400))

(assert (=> m!97304 s!16394))

(declare-fun bs!10630 () Bool)

(assert (= bs!10630 (and m!97296 m!97286)))

(assert (=> bs!10630 s!16392))

(declare-fun bs!10631 () Bool)

(assert (= bs!10631 (and m!97296 m!97288 m!97290)))

(assert (=> bs!10631 s!16390))

(assert (=> m!97296 s!16394))

(declare-fun bs!10632 () Bool)

(assert (= bs!10632 (and m!97296 m!97302 m!97294)))

(assert (=> bs!10632 s!16388))

(declare-fun bs!10633 () Bool)

(assert (= bs!10633 (and m!97296 m!97304)))

(assert (=> bs!10633 s!16394))

(assert (=> bs!10632 s!16396))

(assert (=> bs!10631 s!16398))

(assert (=> m!97296 s!16394))

(assert (=> bs!10630 s!16400))

(assert (=> bs!10633 s!16394))

(declare-fun bs!10634 () Bool)

(assert (= bs!10634 (and neg-inst!89 b!108567)))

(assert (=> bs!10634 (= true inst!89)))

(declare-fun e!60260 () Bool)

(declare-fun e!60263 () Bool)

(assert (=> b!108566 (= e!60260 e!60263)))

(declare-fun res!51921 () Bool)

(assert (=> b!108566 (=> res!51921 e!60263)))

(declare-fun lambda!2173 () Int)

(declare-fun lambda!2174 () Int)

(declare-fun semiInverseModEq!106 (Int Int) Bool)

(assert (=> b!108566 (= res!51921 (not (semiInverseModEq!106 lambda!2173 lambda!2174)))))

(declare-fun lambda!2172 () Int)

(declare-fun Forall!87 (Int) Bool)

(assert (=> b!108566 (= (semiInverseModEq!106 lambda!2173 lambda!2174) (Forall!87 lambda!2172))))

(declare-fun b!108568 () Bool)

(declare-fun e!60261 () Bool)

(declare-fun e!60262 () Bool)

(assert (=> b!108568 (= e!60261 e!60262)))

(declare-fun res!51922 () Bool)

(assert (=> b!108568 (=> res!51922 e!60262)))

(declare-fun equivClasses!97 (Int Int) Bool)

(assert (=> b!108568 (= res!51922 (not (equivClasses!97 lambda!2173 lambda!2174)))))

(declare-fun lambda!2175 () Int)

(declare-fun Forall2!71 (Int) Bool)

(assert (=> b!108568 (= (equivClasses!97 lambda!2173 lambda!2174) (Forall2!71 lambda!2175))))

(declare-fun res!51920 () Bool)

(assert (=> start!10832 (=> res!51920 e!60260)))

(assert (=> start!10832 (= res!51920 (not (Forall!87 lambda!2172)))))

(assert (=> start!10832 (= (Forall!87 lambda!2172) inst!88)))

(assert (=> start!10832 (not e!60260)))

(assert (=> start!10832 true))

(assert (=> b!108567 (= e!60263 e!60261)))

(declare-fun res!51919 () Bool)

(assert (=> b!108567 (=> res!51919 e!60261)))

(assert (=> b!108567 (= res!51919 (not (Forall2!71 lambda!2175)))))

(assert (=> b!108567 (= (Forall2!71 lambda!2175) inst!89)))

(declare-fun b!108569 () Bool)

(declare-datatypes ((TokenValueInjection!552 0))(
  ( (TokenValueInjection!553 (toValue!967 Int) (toChars!826 Int)) )
))
(declare-fun inv!2131 (TokenValueInjection!552) Bool)

(assert (=> b!108569 (= e!60262 (inv!2131 (TokenValueInjection!553 lambda!2174 lambda!2173)))))

(assert (= neg-inst!88 inst!88))

(assert (= (and start!10832 (not res!51920)) b!108566))

(assert (= (and b!108566 (not res!51921)) b!108567))

(assert (= neg-inst!89 inst!89))

(assert (= (and b!108567 (not res!51919)) b!108568))

(assert (= (and b!108568 (not res!51922)) b!108569))

(declare-fun m!97310 () Bool)

(assert (=> b!108569 m!97310))

(declare-fun m!97312 () Bool)

(assert (=> b!108568 m!97312))

(assert (=> b!108568 m!97312))

(declare-fun m!97314 () Bool)

(assert (=> b!108568 m!97314))

(assert (=> b!108567 m!97314))

(assert (=> b!108567 m!97314))

(declare-fun m!97316 () Bool)

(assert (=> b!108566 m!97316))

(assert (=> b!108566 m!97316))

(declare-fun m!97318 () Bool)

(assert (=> b!108566 m!97318))

(assert (=> start!10832 m!97318))

(assert (=> start!10832 m!97318))

(push 1)

(assert (not b!108569))

(assert (not b!108585))

(assert (not bs!10606))

(assert (not bs!10605))

(assert (not start!10832))

(assert (not bs!10613))

(assert (not bs!10620))

(assert (not b!108582))

(assert (not b!108566))

(assert (not bs!10626))

(assert (not bs!10609))

(assert (not b!108584))

(assert (not b!108592))

(assert (not b!108587))

(assert (not bs!10600))

(assert (not bs!10607))

(assert (not bs!10602))

(assert (not b!108568))

(assert (not bs!10629))

(assert (not b!108581))

(assert (not b!108579))

(assert (not bs!10622))

(assert (not bs!10611))

(assert (not b!108596))

(assert (not b!108583))

(assert (not b!108588))

(assert (not b!108591))

(assert (not b!108595))

(assert (not b!108590))

(assert (not b!108589))

(assert (not b!108567))

(assert (not bs!10628))

(assert (not bs!10612))

(assert (not b!108594))

(assert (not bs!10603))

(assert (not b!108580))

(assert (not b!108593))

(assert (not b!108586))

(assert (not b!108578))

(assert (not bs!10624))

(assert (not b!108597))

(assert (not bs!10627))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!10670 () Bool)

(assert (= bs!10670 (and m!97302 b!108582)))

(assert (=> bs!10670 m!97302))

(assert (=> bs!10670 m!97302))

(declare-fun bs!10671 () Bool)

(assert (= bs!10671 (and m!97288 m!97302 b!108583)))

(assert (=> bs!10671 m!97302))

(assert (=> bs!10671 m!97290))

(declare-fun bs!10672 () Bool)

(assert (= bs!10672 (and m!97288 b!108584)))

(assert (=> bs!10672 m!97290))

(assert (=> bs!10672 m!97290))

(declare-fun bs!10673 () Bool)

(assert (= bs!10673 (and m!97288 m!97302 b!108585)))

(assert (=> bs!10673 m!97290))

(assert (=> bs!10673 m!97302))

(declare-fun bs!10674 () Bool)

(assert (= bs!10674 (and m!97286 m!97302 b!108586)))

(assert (=> bs!10674 m!97302))

(declare-fun m!97358 () Bool)

(assert (=> bs!10674 m!97358))

(declare-fun bs!10675 () Bool)

(assert (= bs!10675 (and m!97286 m!97288 b!108587)))

(assert (=> bs!10675 m!97290))

(assert (=> bs!10675 m!97358))

(declare-fun bs!10676 () Bool)

(assert (= bs!10676 (and m!97286 b!108588)))

(assert (=> bs!10676 m!97358))

(assert (=> bs!10676 m!97358))

(declare-fun bs!10677 () Bool)

(assert (= bs!10677 (and m!97286 m!97302 b!108589)))

(assert (=> bs!10677 m!97358))

(assert (=> bs!10677 m!97302))

(declare-fun bs!10678 () Bool)

(assert (= bs!10678 (and m!97286 m!97288 b!108590)))

(assert (=> bs!10678 m!97358))

(assert (=> bs!10678 m!97290))

(declare-fun bs!10679 () Bool)

(assert (= bs!10679 (and m!97304 m!97302 m!97294 b!108591)))

(assert (=> bs!10679 m!97302))

(assert (=> bs!10679 m!97304))

(declare-fun bs!10680 () Bool)

(assert (= bs!10680 (and m!97304 m!97288 m!97290 b!108592)))

(assert (=> bs!10680 m!97290))

(assert (=> bs!10680 m!97304))

(declare-fun bs!10681 () Bool)

(assert (= bs!10681 (and m!97304 m!97286 b!108593)))

(assert (=> bs!10681 m!97358))

(assert (=> bs!10681 m!97304))

(declare-fun bs!10682 () Bool)

(assert (= bs!10682 (and m!97304 b!108594)))

(assert (=> bs!10682 m!97304))

(assert (=> bs!10682 m!97304))

(declare-fun bs!10683 () Bool)

(assert (= bs!10683 (and m!97304 m!97302 m!97294 b!108595)))

(assert (=> bs!10683 m!97304))

(assert (=> bs!10683 m!97302))

(declare-fun bs!10684 () Bool)

(assert (= bs!10684 (and m!97304 m!97288 m!97290 b!108596)))

(assert (=> bs!10684 m!97304))

(assert (=> bs!10684 m!97290))

(declare-fun bs!10685 () Bool)

(assert (= bs!10685 (and m!97304 m!97286 b!108597)))

(assert (=> bs!10685 m!97304))

(assert (=> bs!10685 m!97358))

(push 1)

(assert (not b!108569))

(assert (not b!108585))

(assert (not bs!10606))

(assert (not bs!10605))

(assert (not start!10832))

(assert (not bs!10613))

(assert (not bs!10620))

(assert (not b!108582))

(assert (not b!108566))

(assert (not bs!10626))

(assert (not bs!10609))

(assert (not b!108584))

(assert (not b!108592))

(assert (not b!108587))

(assert (not bs!10600))

(assert (not bs!10607))

(assert (not bs!10602))

(assert (not b!108568))

(assert (not bs!10629))

(assert (not b!108581))

(assert (not b!108579))

(assert (not bs!10622))

(assert (not bs!10611))

(assert (not b!108596))

(assert (not b!108583))

(assert (not b!108588))

(assert (not b!108591))

(assert (not b!108595))

(assert (not b!108590))

(assert (not b!108589))

(assert (not b!108567))

(assert (not bs!10628))

(assert (not bs!10612))

(assert (not b!108594))

(assert (not bs!10603))

(assert (not b!108580))

(assert (not b!108593))

(assert (not b!108586))

(assert (not b!108578))

(assert (not bs!10624))

(assert (not b!108597))

(assert (not bs!10627))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!26839 () Bool)

(declare-fun efficientList!34 (BalanceConc!1104) List!1724)

(assert (=> d!26839 (= (toValue!38 thiss!5419 x!30115) (ErrorTokenValue!372 (efficientList!34 x!30115)))))

(declare-fun bs!10687 () Bool)

(assert (= bs!10687 d!26839))

(declare-fun m!97360 () Bool)

(assert (=> bs!10687 m!97360))

(assert (=> b!108586 d!26839))

(declare-fun d!26841 () Bool)

(assert (=> d!26841 (= (toValue!38 thiss!5419 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30114))) (ErrorTokenValue!372 (efficientList!34 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30114)))))))

(declare-fun bs!10689 () Bool)

(assert (= bs!10689 d!26841))

(assert (=> bs!10689 m!97284))

(declare-fun m!97362 () Bool)

(assert (=> bs!10689 m!97362))

(assert (=> b!108586 d!26841))

(declare-fun d!26843 () Bool)

(declare-fun list!751 (Conc!550) List!1724)

(assert (=> d!26843 (= (list!749 x!30115) (list!751 (c!26083 x!30115)))))

(declare-fun bs!10690 () Bool)

(assert (= bs!10690 d!26843))

(declare-fun m!97366 () Bool)

(assert (=> bs!10690 m!97366))

(assert (=> bs!10603 d!26843))

(declare-fun d!26845 () Bool)

(assert (=> d!26845 (= (list!749 x!30114) (list!751 (c!26083 x!30114)))))

(declare-fun bs!10691 () Bool)

(assert (= bs!10691 d!26845))

(declare-fun m!97368 () Bool)

(assert (=> bs!10691 m!97368))

(assert (=> bs!10603 d!26845))

(assert (=> bs!10622 d!26845))

(declare-fun d!26847 () Bool)

(assert (=> d!26847 (= (list!749 x!30116) (list!751 (c!26083 x!30116)))))

(declare-fun bs!10692 () Bool)

(assert (= bs!10692 d!26847))

(declare-fun m!97370 () Bool)

(assert (=> bs!10692 m!97370))

(assert (=> bs!10622 d!26847))

(declare-fun d!26849 () Bool)

(assert (=> d!26849 (= (list!749 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30114))) (list!751 (c!26083 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30114)))))))

(declare-fun bs!10693 () Bool)

(assert (= bs!10693 d!26849))

(declare-fun m!97372 () Bool)

(assert (=> bs!10693 m!97372))

(assert (=> start!10832 d!26849))

(declare-fun d!26851 () Bool)

(declare-fun isBalanced!156 (Conc!550) Bool)

(assert (=> d!26851 (= (inv!2130 x!30114) (isBalanced!156 (c!26083 x!30114)))))

(declare-fun bs!10701 () Bool)

(assert (= bs!10701 d!26851))

(declare-fun m!97374 () Bool)

(assert (=> bs!10701 m!97374))

(assert (=> start!10832 d!26851))

(assert (=> start!10832 d!26845))

(declare-fun d!26853 () Bool)

(declare-fun c!26088 () Bool)

(assert (=> d!26853 (= c!26088 (is-ErrorTokenValue!372 (toValue!38 thiss!5419 x!30114)))))

(declare-fun e!60334 () BalanceConc!1104)

(assert (=> d!26853 (= (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!30114)) e!60334)))

(declare-fun b!108658 () Bool)

(declare-fun seqFromList!210 (List!1724) BalanceConc!1104)

(assert (=> b!108658 (= e!60334 (seqFromList!210 (msg!433 (toValue!38 thiss!5419 x!30114))))))

(declare-fun b!108659 () Bool)

(assert (=> b!108659 (= e!60334 (BalanceConc!1105 Empty!550))))

(assert (= (and d!26853 c!26088) b!108658))

(assert (= (and d!26853 (not c!26088)) b!108659))

(declare-fun m!97376 () Bool)

(assert (=> b!108658 m!97376))

(assert (=> start!10832 d!26853))

(declare-fun d!26855 () Bool)

(assert (=> d!26855 (= (toValue!38 thiss!5419 x!30114) (ErrorTokenValue!372 (efficientList!34 x!30114)))))

(declare-fun bs!10709 () Bool)

(assert (= bs!10709 d!26855))

(declare-fun m!97378 () Bool)

(assert (=> bs!10709 m!97378))

(assert (=> start!10832 d!26855))

(declare-fun d!26857 () Bool)

(declare-fun choose!1417 (Int) Bool)

(assert (=> d!26857 (= (Forall!87 lambda!2172) (choose!1417 lambda!2172))))

(declare-fun bs!10710 () Bool)

(assert (= bs!10710 d!26857))

(declare-fun m!97380 () Bool)

(assert (=> bs!10710 m!97380))

(assert (=> start!10832 d!26857))

(assert (=> bs!10613 d!26849))

(assert (=> bs!10613 d!26845))

(declare-fun d!26859 () Bool)

(assert (=> d!26859 (= (toValue!38 thiss!5419 x!30116) (ErrorTokenValue!372 (efficientList!34 x!30116)))))

(declare-fun bs!10711 () Bool)

(assert (= bs!10711 d!26859))

(declare-fun m!97382 () Bool)

(assert (=> bs!10711 m!97382))

(assert (=> b!108595 d!26859))

(assert (=> b!108595 d!26839))

(assert (=> bs!10607 d!26843))

(assert (=> bs!10607 d!26849))

(assert (=> b!108589 d!26841))

(assert (=> b!108589 d!26839))

(assert (=> bs!10627 d!26847))

(assert (=> bs!10627 d!26843))

(declare-fun d!26861 () Bool)

(declare-fun res!51987 () Bool)

(declare-fun e!60337 () Bool)

(assert (=> d!26861 (=> (not res!51987) (not e!60337))))

(assert (=> d!26861 (= res!51987 (semiInverseModEq!106 (toChars!826 (TokenValueInjection!553 lambda!2174 lambda!2173)) (toValue!967 (TokenValueInjection!553 lambda!2174 lambda!2173))))))

(assert (=> d!26861 (= (inv!2131 (TokenValueInjection!553 lambda!2174 lambda!2173)) e!60337)))

(declare-fun b!108662 () Bool)

(assert (=> b!108662 (= e!60337 (equivClasses!97 (toChars!826 (TokenValueInjection!553 lambda!2174 lambda!2173)) (toValue!967 (TokenValueInjection!553 lambda!2174 lambda!2173))))))

(assert (= (and d!26861 res!51987) b!108662))

(declare-fun m!97384 () Bool)

(assert (=> d!26861 m!97384))

(declare-fun m!97386 () Bool)

(assert (=> b!108662 m!97386))

(assert (=> b!108569 d!26861))

(assert (=> b!108594 d!26859))

(assert (=> b!108585 d!26855))

(assert (=> b!108585 d!26839))

(assert (=> b!108582 d!26839))

(assert (=> b!108591 d!26839))

(assert (=> b!108591 d!26859))

(assert (=> bs!10612 d!26849))

(assert (=> bs!10612 d!26843))

(assert (=> bs!10626 d!26847))

(assert (=> bs!10620 d!26843))

(assert (=> bs!10620 d!26847))

(declare-fun d!26863 () Bool)

(declare-fun c!26091 () Bool)

(assert (=> d!26863 (= c!26091 (is-Node!550 (c!26083 x!30116)))))

(declare-fun e!60342 () Bool)

(assert (=> d!26863 (= (inv!2129 (c!26083 x!30116)) e!60342)))

(declare-fun b!108669 () Bool)

(declare-fun inv!2135 (Conc!550) Bool)

(assert (=> b!108669 (= e!60342 (inv!2135 (c!26083 x!30116)))))

(declare-fun b!108670 () Bool)

(declare-fun e!60343 () Bool)

(assert (=> b!108670 (= e!60342 e!60343)))

(declare-fun res!51990 () Bool)

(assert (=> b!108670 (= res!51990 (not (is-Leaf!877 (c!26083 x!30116))))))

(assert (=> b!108670 (=> res!51990 e!60343)))

(declare-fun b!108671 () Bool)

(declare-fun inv!2136 (Conc!550) Bool)

(assert (=> b!108671 (= e!60343 (inv!2136 (c!26083 x!30116)))))

(assert (= (and d!26863 c!26091) b!108669))

(assert (= (and d!26863 (not c!26091)) b!108670))

(assert (= (and b!108670 (not res!51990)) b!108671))

(declare-fun m!97388 () Bool)

(assert (=> b!108669 m!97388))

(declare-fun m!97390 () Bool)

(assert (=> b!108671 m!97390))

(assert (=> b!108581 d!26863))

(assert (=> b!108597 d!26859))

(assert (=> b!108597 d!26841))

(declare-fun bs!10712 () Bool)

(declare-fun d!26865 () Bool)

(assert (= bs!10712 (and d!26865 start!10832)))

(declare-fun lambda!2214 () Int)

(assert (=> bs!10712 (not (= lambda!2214 lambda!2172))))

(assert (=> d!26865 true))

(declare-fun order!857 () Int)

(declare-fun order!859 () Int)

(declare-fun dynLambda!552 (Int Int) Int)

(declare-fun dynLambda!553 (Int Int) Int)

(assert (=> d!26865 (< (dynLambda!552 order!857 lambda!2173) (dynLambda!553 order!859 lambda!2214))))

(assert (=> d!26865 true))

(declare-fun order!861 () Int)

(declare-fun dynLambda!554 (Int Int) Int)

(assert (=> d!26865 (< (dynLambda!554 order!861 lambda!2174) (dynLambda!553 order!859 lambda!2214))))

(assert (=> d!26865 (= (semiInverseModEq!106 lambda!2173 lambda!2174) (Forall!87 lambda!2214))))

(declare-fun bs!10713 () Bool)

(assert (= bs!10713 d!26865))

(declare-fun m!97392 () Bool)

(assert (=> bs!10713 m!97392))

(assert (=> b!108566 d!26865))

(assert (=> b!108566 d!26857))

(assert (=> bs!10602 d!26843))

(declare-fun bs!10714 () Bool)

(declare-fun d!26867 () Bool)

(assert (= bs!10714 (and d!26867 b!108567)))

(declare-fun lambda!2217 () Int)

(assert (=> bs!10714 (not (= lambda!2217 lambda!2175))))

(assert (=> d!26867 true))

(declare-fun order!863 () Int)

(declare-fun dynLambda!555 (Int Int) Int)

(assert (=> d!26867 (< (dynLambda!554 order!861 lambda!2174) (dynLambda!555 order!863 lambda!2217))))

(assert (=> d!26867 (= (equivClasses!97 lambda!2173 lambda!2174) (Forall2!71 lambda!2217))))

(declare-fun bs!10715 () Bool)

(assert (= bs!10715 d!26867))

(declare-fun m!97394 () Bool)

(assert (=> bs!10715 m!97394))

(assert (=> b!108568 d!26867))

(declare-fun d!26869 () Bool)

(declare-fun choose!1418 (Int) Bool)

(assert (=> d!26869 (= (Forall2!71 lambda!2175) (choose!1418 lambda!2175))))

(declare-fun bs!10716 () Bool)

(assert (= bs!10716 d!26869))

(declare-fun m!97396 () Bool)

(assert (=> bs!10716 m!97396))

(assert (=> b!108568 d!26869))

(assert (=> b!108588 d!26841))

(assert (=> b!108567 d!26847))

(assert (=> b!108567 d!26869))

(assert (=> b!108567 d!26843))

(declare-fun d!26871 () Bool)

(assert (=> d!26871 (= (inv!2130 x!30116) (isBalanced!156 (c!26083 x!30116)))))

(declare-fun bs!10717 () Bool)

(assert (= bs!10717 d!26871))

(declare-fun m!97398 () Bool)

(assert (=> bs!10717 m!97398))

(assert (=> b!108567 d!26871))

(declare-fun d!26873 () Bool)

(assert (=> d!26873 (= (inv!2130 x!30115) (isBalanced!156 (c!26083 x!30115)))))

(declare-fun bs!10718 () Bool)

(assert (= bs!10718 d!26873))

(declare-fun m!97400 () Bool)

(assert (=> bs!10718 m!97400))

(assert (=> b!108567 d!26873))

(assert (=> bs!10600 d!26849))

(assert (=> bs!10600 d!26853))

(assert (=> bs!10600 d!26855))

(assert (=> bs!10600 d!26845))

(assert (=> bs!10611 d!26849))

(assert (=> b!108579 d!26839))

(assert (=> b!108579 d!26859))

(assert (=> bs!10629 d!26847))

(assert (=> bs!10629 d!26849))

(declare-fun d!26875 () Bool)

(declare-fun c!26092 () Bool)

(assert (=> d!26875 (= c!26092 (is-Node!550 (c!26083 x!30114)))))

(declare-fun e!60346 () Bool)

(assert (=> d!26875 (= (inv!2129 (c!26083 x!30114)) e!60346)))

(declare-fun b!108680 () Bool)

(assert (=> b!108680 (= e!60346 (inv!2135 (c!26083 x!30114)))))

(declare-fun b!108681 () Bool)

(declare-fun e!60347 () Bool)

(assert (=> b!108681 (= e!60346 e!60347)))

(declare-fun res!51993 () Bool)

(assert (=> b!108681 (= res!51993 (not (is-Leaf!877 (c!26083 x!30114))))))

(assert (=> b!108681 (=> res!51993 e!60347)))

(declare-fun b!108682 () Bool)

(assert (=> b!108682 (= e!60347 (inv!2136 (c!26083 x!30114)))))

(assert (= (and d!26875 c!26092) b!108680))

(assert (= (and d!26875 (not c!26092)) b!108681))

(assert (= (and b!108681 (not res!51993)) b!108682))

(declare-fun m!97402 () Bool)

(assert (=> b!108680 m!97402))

(declare-fun m!97404 () Bool)

(assert (=> b!108682 m!97404))

(assert (=> b!108578 d!26875))

(declare-fun d!26877 () Bool)

(declare-fun c!26093 () Bool)

(assert (=> d!26877 (= c!26093 (is-Node!550 (c!26083 x!30115)))))

(declare-fun e!60348 () Bool)

(assert (=> d!26877 (= (inv!2129 (c!26083 x!30115)) e!60348)))

(declare-fun b!108683 () Bool)

(assert (=> b!108683 (= e!60348 (inv!2135 (c!26083 x!30115)))))

(declare-fun b!108684 () Bool)

(declare-fun e!60349 () Bool)

(assert (=> b!108684 (= e!60348 e!60349)))

(declare-fun res!51994 () Bool)

(assert (=> b!108684 (= res!51994 (not (is-Leaf!877 (c!26083 x!30115))))))

(assert (=> b!108684 (=> res!51994 e!60349)))

(declare-fun b!108685 () Bool)

(assert (=> b!108685 (= e!60349 (inv!2136 (c!26083 x!30115)))))

(assert (= (and d!26877 c!26093) b!108683))

(assert (= (and d!26877 (not c!26093)) b!108684))

(assert (= (and b!108684 (not res!51994)) b!108685))

(declare-fun m!97406 () Bool)

(assert (=> b!108683 m!97406))

(declare-fun m!97408 () Bool)

(assert (=> b!108685 m!97408))

(assert (=> b!108580 d!26877))

(assert (=> bs!10606 d!26845))

(assert (=> bs!10606 d!26843))

(assert (=> b!108584 d!26855))

(assert (=> b!108593 d!26841))

(assert (=> b!108593 d!26859))

(assert (=> b!108590 d!26841))

(assert (=> b!108590 d!26855))

(assert (=> b!108587 d!26855))

(assert (=> b!108587 d!26841))

(assert (=> b!108596 d!26859))

(assert (=> b!108596 d!26855))

(assert (=> bs!10605 d!26845))

(assert (=> bs!10624 d!26849))

(assert (=> bs!10624 d!26847))

(assert (=> b!108583 d!26839))

(assert (=> b!108583 d!26855))

(assert (=> b!108592 d!26855))

(assert (=> b!108592 d!26859))

(assert (=> bs!10609 d!26845))

(assert (=> bs!10609 d!26849))

(assert (=> bs!10628 d!26847))

(assert (=> bs!10628 d!26845))

(declare-fun tp!59012 () Bool)

(declare-fun b!108692 () Bool)

(declare-fun tp!59011 () Bool)

(declare-fun e!60354 () Bool)

(assert (=> b!108692 (= e!60354 (and (inv!2129 (left!1340 (c!26083 x!30114))) tp!59011 (inv!2129 (right!1670 (c!26083 x!30114))) tp!59012))))

(declare-fun b!108693 () Bool)

(declare-fun inv!2137 (IArray!1101) Bool)

(assert (=> b!108693 (= e!60354 (inv!2137 (xs!3145 (c!26083 x!30114))))))

(assert (=> b!108578 (= tp!58995 (and (inv!2129 (c!26083 x!30114)) e!60354))))

(assert (= (and b!108578 (is-Node!550 (c!26083 x!30114))) b!108692))

(assert (= (and b!108578 (is-Leaf!877 (c!26083 x!30114))) b!108693))

(declare-fun m!97410 () Bool)

(assert (=> b!108692 m!97410))

(declare-fun m!97412 () Bool)

(assert (=> b!108692 m!97412))

(declare-fun m!97414 () Bool)

(assert (=> b!108693 m!97414))

(assert (=> b!108578 m!97282))

(declare-fun tp!59013 () Bool)

(declare-fun e!60356 () Bool)

(declare-fun b!108694 () Bool)

(declare-fun tp!59014 () Bool)

(assert (=> b!108694 (= e!60356 (and (inv!2129 (left!1340 (c!26083 x!30115))) tp!59013 (inv!2129 (right!1670 (c!26083 x!30115))) tp!59014))))

(declare-fun b!108695 () Bool)

(assert (=> b!108695 (= e!60356 (inv!2137 (xs!3145 (c!26083 x!30115))))))

(assert (=> b!108580 (= tp!58997 (and (inv!2129 (c!26083 x!30115)) e!60356))))

(assert (= (and b!108580 (is-Node!550 (c!26083 x!30115))) b!108694))

(assert (= (and b!108580 (is-Leaf!877 (c!26083 x!30115))) b!108695))

(declare-fun m!97416 () Bool)

(assert (=> b!108694 m!97416))

(declare-fun m!97418 () Bool)

(assert (=> b!108694 m!97418))

(declare-fun m!97420 () Bool)

(assert (=> b!108695 m!97420))

(assert (=> b!108580 m!97306))

(declare-fun b!108696 () Bool)

(declare-fun tp!59015 () Bool)

(declare-fun e!60358 () Bool)

(declare-fun tp!59016 () Bool)

(assert (=> b!108696 (= e!60358 (and (inv!2129 (left!1340 (c!26083 x!30116))) tp!59015 (inv!2129 (right!1670 (c!26083 x!30116))) tp!59016))))

(declare-fun b!108697 () Bool)

(assert (=> b!108697 (= e!60358 (inv!2137 (xs!3145 (c!26083 x!30116))))))

(assert (=> b!108581 (= tp!58996 (and (inv!2129 (c!26083 x!30116)) e!60358))))

(assert (= (and b!108581 (is-Node!550 (c!26083 x!30116))) b!108696))

(assert (= (and b!108581 (is-Leaf!877 (c!26083 x!30116))) b!108697))

(declare-fun m!97422 () Bool)

(assert (=> b!108696 m!97422))

(declare-fun m!97424 () Bool)

(assert (=> b!108696 m!97424))

(declare-fun m!97426 () Bool)

(assert (=> b!108697 m!97426))

(assert (=> b!108581 m!97308))

(push 1)

(assert (not b!108682))

(assert (not b!108662))

(assert (not d!26871))

(assert (not b!108697))

(assert (not d!26865))

(assert (not d!26869))

(assert (not d!26859))

(assert (not b!108695))

(assert (not b!108696))

(assert (not b!108580))

(assert (not d!26839))

(assert (not b!108683))

(assert (not d!26843))

(assert (not b!108581))

(assert (not b!108692))

(assert (not b!108680))

(assert (not d!26867))

(assert (not d!26861))

(assert (not d!26849))

(assert (not b!108671))

(assert (not d!26845))

(assert (not d!26851))

(assert (not d!26873))

(assert (not d!26857))

(assert (not b!108685))

(assert (not d!26855))

(assert (not b!108578))

(assert (not b!108669))

(assert (not d!26847))

(assert (not d!26841))

(assert (not b!108694))

(assert (not b!108693))

(assert (not b!108658))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

