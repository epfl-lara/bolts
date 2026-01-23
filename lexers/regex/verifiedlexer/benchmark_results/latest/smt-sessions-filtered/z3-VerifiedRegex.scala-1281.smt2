; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66368 () Bool)

(assert start!66368)

(declare-fun b!695137 () Bool)

(declare-fun b_free!19877 () Bool)

(declare-fun b_next!19941 () Bool)

(assert (=> b!695137 (= b_free!19877 (not b_next!19941))))

(declare-fun tp!210620 () Bool)

(declare-fun b_and!63671 () Bool)

(assert (=> b!695137 (= tp!210620 b_and!63671)))

(declare-fun b_free!19879 () Bool)

(declare-fun b_next!19943 () Bool)

(assert (=> b!695137 (= b_free!19879 (not b_next!19943))))

(declare-fun tp!210643 () Bool)

(declare-fun b_and!63673 () Bool)

(assert (=> b!695137 (= tp!210643 b_and!63673)))

(declare-fun b!695153 () Bool)

(declare-fun b_free!19881 () Bool)

(declare-fun b_next!19945 () Bool)

(assert (=> b!695153 (= b_free!19881 (not b_next!19945))))

(declare-fun tp!210631 () Bool)

(declare-fun b_and!63675 () Bool)

(assert (=> b!695153 (= tp!210631 b_and!63675)))

(declare-fun b!695159 () Bool)

(declare-fun b_free!19883 () Bool)

(declare-fun b_next!19947 () Bool)

(assert (=> b!695159 (= b_free!19883 (not b_next!19947))))

(declare-fun tp!210614 () Bool)

(declare-fun b_and!63677 () Bool)

(assert (=> b!695159 (= tp!210614 b_and!63677)))

(declare-fun b!695146 () Bool)

(declare-fun b_free!19885 () Bool)

(declare-fun b_next!19949 () Bool)

(assert (=> b!695146 (= b_free!19885 (not b_next!19949))))

(declare-fun tp!210640 () Bool)

(declare-fun b_and!63679 () Bool)

(assert (=> b!695146 (= tp!210640 b_and!63679)))

(declare-fun b!695147 () Bool)

(declare-fun b_free!19887 () Bool)

(declare-fun b_next!19951 () Bool)

(assert (=> b!695147 (= b_free!19887 (not b_next!19951))))

(declare-fun tp!210630 () Bool)

(declare-fun b_and!63681 () Bool)

(assert (=> b!695147 (= tp!210630 b_and!63681)))

(declare-fun b!695160 () Bool)

(declare-fun b_free!19889 () Bool)

(declare-fun b_next!19953 () Bool)

(assert (=> b!695160 (= b_free!19889 (not b_next!19953))))

(declare-fun tp!210639 () Bool)

(declare-fun b_and!63683 () Bool)

(assert (=> b!695160 (= tp!210639 b_and!63683)))

(declare-fun b!695155 () Bool)

(declare-fun b_free!19891 () Bool)

(declare-fun b_next!19955 () Bool)

(assert (=> b!695155 (= b_free!19891 (not b_next!19955))))

(declare-fun tp!210621 () Bool)

(declare-fun b_and!63685 () Bool)

(assert (=> b!695155 (= tp!210621 b_and!63685)))

(declare-fun b!695117 () Bool)

(declare-fun e!437922 () Bool)

(declare-fun e!437911 () Bool)

(declare-datatypes ((C!4316 0))(
  ( (C!4317 (val!2388 Int)) )
))
(declare-datatypes ((Regex!1857 0))(
  ( (ElementMatch!1857 (c!121821 C!4316)) (Concat!3419 (regOne!4226 Regex!1857) (regTwo!4226 Regex!1857)) (EmptyExpr!1857) (Star!1857 (reg!2186 Regex!1857)) (EmptyLang!1857) (Union!1857 (regOne!4227 Regex!1857) (regTwo!4227 Regex!1857)) )
))
(declare-datatypes ((array!3005 0))(
  ( (array!3006 (arr!1358 (Array (_ BitVec 32) (_ BitVec 64))) (size!6206 (_ BitVec 32))) )
))
(declare-datatypes ((List!7620 0))(
  ( (Nil!7606) (Cons!7606 (h!13007 Regex!1857) (t!87443 List!7620)) )
))
(declare-datatypes ((Context!518 0))(
  ( (Context!519 (exprs!759 List!7620)) )
))
(declare-datatypes ((tuple2!8070 0))(
  ( (tuple2!8071 (_1!4472 Context!518) (_2!4472 C!4316)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!8072 0))(
  ( (tuple2!8073 (_1!4473 tuple2!8070) (_2!4473 (InoxSet Context!518))) )
))
(declare-datatypes ((List!7621 0))(
  ( (Nil!7607) (Cons!7607 (h!13008 tuple2!8072) (t!87444 List!7621)) )
))
(declare-datatypes ((array!3007 0))(
  ( (array!3008 (arr!1359 (Array (_ BitVec 32) List!7621)) (size!6207 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1622 0))(
  ( (LongMapFixedSize!1623 (defaultEntry!1167 Int) (mask!2624 (_ BitVec 32)) (extraKeys!1058 (_ BitVec 32)) (zeroValue!1068 List!7621) (minValue!1068 List!7621) (_size!1731 (_ BitVec 32)) (_keys!1105 array!3005) (_values!1090 array!3007) (_vacant!872 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3185 0))(
  ( (Cell!3186 (v!17751 LongMapFixedSize!1622)) )
))
(declare-datatypes ((MutLongMap!811 0))(
  ( (LongMap!811 (underlying!1805 Cell!3185)) (MutLongMapExt!810 (__x!5553 Int)) )
))
(declare-fun lt!285603 () MutLongMap!811)

(get-info :version)

(assert (=> b!695117 (= e!437922 (and e!437911 ((_ is LongMap!811) lt!285603)))))

(declare-datatypes ((Hashable!783 0))(
  ( (HashableExt!782 (__x!5554 Int)) )
))
(declare-datatypes ((Cell!3187 0))(
  ( (Cell!3188 (v!17752 MutLongMap!811)) )
))
(declare-datatypes ((MutableMap!783 0))(
  ( (MutableMapExt!782 (__x!5555 Int)) (HashMap!783 (underlying!1806 Cell!3187) (hashF!2691 Hashable!783) (_size!1732 (_ BitVec 32)) (defaultValue!934 Int)) )
))
(declare-datatypes ((CacheUp!408 0))(
  ( (CacheUp!409 (cache!1170 MutableMap!783)) )
))
(declare-fun cacheUp!502 () CacheUp!408)

(assert (=> b!695117 (= lt!285603 (v!17752 (underlying!1806 (cache!1170 cacheUp!502))))))

(declare-fun b!695118 () Bool)

(declare-fun e!437908 () Bool)

(declare-fun e!437909 () Bool)

(assert (=> b!695118 (= e!437908 e!437909)))

(declare-fun res!314736 () Bool)

(assert (=> b!695118 (=> (not res!314736) (not e!437909))))

(declare-datatypes ((List!7622 0))(
  ( (Nil!7608) (Cons!7608 (h!13009 (_ BitVec 16)) (t!87445 List!7622)) )
))
(declare-datatypes ((TokenValue!1562 0))(
  ( (FloatLiteralValue!3124 (text!11379 List!7622)) (TokenValueExt!1561 (__x!5556 Int)) (Broken!7810 (value!48902 List!7622)) (Object!1575) (End!1562) (Def!1562) (Underscore!1562) (Match!1562) (Else!1562) (Error!1562) (Case!1562) (If!1562) (Extends!1562) (Abstract!1562) (Class!1562) (Val!1562) (DelimiterValue!3124 (del!1622 List!7622)) (KeywordValue!1568 (value!48903 List!7622)) (CommentValue!3124 (value!48904 List!7622)) (WhitespaceValue!3124 (value!48905 List!7622)) (IndentationValue!1562 (value!48906 List!7622)) (String!9535) (Int32!1562) (Broken!7811 (value!48907 List!7622)) (Boolean!1563) (Unit!12683) (OperatorValue!1565 (op!1622 List!7622)) (IdentifierValue!3124 (value!48908 List!7622)) (IdentifierValue!3125 (value!48909 List!7622)) (WhitespaceValue!3125 (value!48910 List!7622)) (True!3124) (False!3124) (Broken!7812 (value!48911 List!7622)) (Broken!7813 (value!48912 List!7622)) (True!3125) (RightBrace!1562) (RightBracket!1562) (Colon!1562) (Null!1562) (Comma!1562) (LeftBracket!1562) (False!3125) (LeftBrace!1562) (ImaginaryLiteralValue!1562 (text!11380 List!7622)) (StringLiteralValue!4686 (value!48913 List!7622)) (EOFValue!1562 (value!48914 List!7622)) (IdentValue!1562 (value!48915 List!7622)) (DelimiterValue!3125 (value!48916 List!7622)) (DedentValue!1562 (value!48917 List!7622)) (NewLineValue!1562 (value!48918 List!7622)) (IntegerValue!4686 (value!48919 (_ BitVec 32)) (text!11381 List!7622)) (IntegerValue!4687 (value!48920 Int) (text!11382 List!7622)) (Times!1562) (Or!1562) (Equal!1562) (Minus!1562) (Broken!7814 (value!48921 List!7622)) (And!1562) (Div!1562) (LessEqual!1562) (Mod!1562) (Concat!3420) (Not!1562) (Plus!1562) (SpaceValue!1562 (value!48922 List!7622)) (IntegerValue!4688 (value!48923 Int) (text!11383 List!7622)) (StringLiteralValue!4687 (text!11384 List!7622)) (FloatLiteralValue!3125 (text!11385 List!7622)) (BytesLiteralValue!1562 (value!48924 List!7622)) (CommentValue!3125 (value!48925 List!7622)) (StringLiteralValue!4688 (value!48926 List!7622)) (ErrorTokenValue!1562 (msg!1623 List!7622)) )
))
(declare-datatypes ((List!7623 0))(
  ( (Nil!7609) (Cons!7609 (h!13010 C!4316) (t!87446 List!7623)) )
))
(declare-datatypes ((IArray!5349 0))(
  ( (IArray!5350 (innerList!2732 List!7623)) )
))
(declare-datatypes ((Conc!2674 0))(
  ( (Node!2674 (left!6039 Conc!2674) (right!6369 Conc!2674) (csize!5578 Int) (cheight!2885 Int)) (Leaf!3956 (xs!5327 IArray!5349) (csize!5579 Int)) (Empty!2674) )
))
(declare-datatypes ((BalanceConc!5360 0))(
  ( (BalanceConc!5361 (c!121822 Conc!2674)) )
))
(declare-datatypes ((String!9536 0))(
  ( (String!9537 (value!48927 String)) )
))
(declare-datatypes ((TokenValueInjection!2860 0))(
  ( (TokenValueInjection!2861 (toValue!2482 Int) (toChars!2341 Int)) )
))
(declare-datatypes ((Rule!2836 0))(
  ( (Rule!2837 (regex!1518 Regex!1857) (tag!1780 String!9536) (isSeparator!1518 Bool) (transformation!1518 TokenValueInjection!2860)) )
))
(declare-datatypes ((Token!2736 0))(
  ( (Token!2737 (value!48928 TokenValue!1562) (rule!2557 Rule!2836) (size!6208 Int) (originalCharacters!1793 List!7623)) )
))
(declare-datatypes ((List!7624 0))(
  ( (Nil!7610) (Cons!7610 (h!13011 Token!2736) (t!87447 List!7624)) )
))
(declare-datatypes ((IArray!5351 0))(
  ( (IArray!5352 (innerList!2733 List!7624)) )
))
(declare-datatypes ((Conc!2675 0))(
  ( (Node!2675 (left!6040 Conc!2675) (right!6370 Conc!2675) (csize!5580 Int) (cheight!2886 Int)) (Leaf!3957 (xs!5328 IArray!5351) (csize!5581 Int)) (Empty!2675) )
))
(declare-datatypes ((BalanceConc!5362 0))(
  ( (BalanceConc!5363 (c!121823 Conc!2675)) )
))
(declare-datatypes ((tuple2!8074 0))(
  ( (tuple2!8075 (_1!4474 BalanceConc!5362) (_2!4474 BalanceConc!5360)) )
))
(declare-fun lt!285594 () tuple2!8074)

(declare-fun acc!372 () BalanceConc!5362)

(declare-fun list!3176 (BalanceConc!5362) List!7624)

(assert (=> b!695118 (= res!314736 (= (list!3176 (_1!4474 lt!285594)) (list!3176 acc!372)))))

(declare-fun treated!50 () BalanceConc!5360)

(declare-datatypes ((List!7625 0))(
  ( (Nil!7611) (Cons!7611 (h!13012 Rule!2836) (t!87448 List!7625)) )
))
(declare-fun rules!1486 () List!7625)

(declare-datatypes ((LexerInterface!1331 0))(
  ( (LexerInterfaceExt!1328 (__x!5557 Int)) (Lexer!1329) )
))
(declare-fun thiss!12529 () LexerInterface!1331)

(declare-fun lexRec!173 (LexerInterface!1331 List!7625 BalanceConc!5360) tuple2!8074)

(assert (=> b!695118 (= lt!285594 (lexRec!173 thiss!12529 rules!1486 treated!50))))

(declare-fun mapNonEmpty!3254 () Bool)

(declare-fun mapRes!3254 () Bool)

(declare-fun tp!210636 () Bool)

(declare-fun tp!210625 () Bool)

(assert (=> mapNonEmpty!3254 (= mapRes!3254 (and tp!210636 tp!210625))))

(declare-fun mapRest!3256 () (Array (_ BitVec 32) List!7621))

(declare-fun mapKey!3255 () (_ BitVec 32))

(declare-fun mapValue!3256 () List!7621)

(assert (=> mapNonEmpty!3254 (= (arr!1359 (_values!1090 (v!17751 (underlying!1805 (v!17752 (underlying!1806 (cache!1170 cacheUp!502))))))) (store mapRest!3256 mapKey!3255 mapValue!3256))))

(declare-fun mapIsEmpty!3254 () Bool)

(assert (=> mapIsEmpty!3254 mapRes!3254))

(declare-fun b!695119 () Bool)

(declare-fun e!437900 () Bool)

(declare-datatypes ((tuple3!742 0))(
  ( (tuple3!743 (_1!4475 Regex!1857) (_2!4475 Context!518) (_3!437 C!4316)) )
))
(declare-datatypes ((tuple2!8076 0))(
  ( (tuple2!8077 (_1!4476 tuple3!742) (_2!4476 (InoxSet Context!518))) )
))
(declare-datatypes ((List!7626 0))(
  ( (Nil!7612) (Cons!7612 (h!13013 tuple2!8076) (t!87449 List!7626)) )
))
(declare-datatypes ((array!3009 0))(
  ( (array!3010 (arr!1360 (Array (_ BitVec 32) List!7626)) (size!6209 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1624 0))(
  ( (LongMapFixedSize!1625 (defaultEntry!1168 Int) (mask!2625 (_ BitVec 32)) (extraKeys!1059 (_ BitVec 32)) (zeroValue!1069 List!7626) (minValue!1069 List!7626) (_size!1733 (_ BitVec 32)) (_keys!1106 array!3005) (_values!1091 array!3009) (_vacant!873 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!8078 0))(
  ( (tuple2!8079 (_1!4477 (InoxSet Context!518)) (_2!4477 Int)) )
))
(declare-datatypes ((tuple2!8080 0))(
  ( (tuple2!8081 (_1!4478 tuple2!8078) (_2!4478 Int)) )
))
(declare-datatypes ((List!7627 0))(
  ( (Nil!7613) (Cons!7613 (h!13014 tuple2!8080) (t!87450 List!7627)) )
))
(declare-datatypes ((array!3011 0))(
  ( (array!3012 (arr!1361 (Array (_ BitVec 32) List!7627)) (size!6210 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!8082 0))(
  ( (tuple2!8083 (_1!4479 Token!2736) (_2!4479 BalanceConc!5360)) )
))
(declare-datatypes ((Option!1716 0))(
  ( (None!1715) (Some!1715 (v!17753 tuple2!8082)) )
))
(declare-datatypes ((Cell!3189 0))(
  ( (Cell!3190 (v!17754 LongMapFixedSize!1624)) )
))
(declare-datatypes ((MutLongMap!812 0))(
  ( (LongMap!812 (underlying!1807 Cell!3189)) (MutLongMapExt!811 (__x!5558 Int)) )
))
(declare-datatypes ((Cell!3191 0))(
  ( (Cell!3192 (v!17755 MutLongMap!812)) )
))
(declare-datatypes ((Hashable!784 0))(
  ( (HashableExt!783 (__x!5559 Int)) )
))
(declare-datatypes ((MutableMap!784 0))(
  ( (MutableMapExt!783 (__x!5560 Int)) (HashMap!784 (underlying!1808 Cell!3191) (hashF!2692 Hashable!784) (_size!1734 (_ BitVec 32)) (defaultValue!935 Int)) )
))
(declare-datatypes ((CacheDown!414 0))(
  ( (CacheDown!415 (cache!1171 MutableMap!784)) )
))
(declare-datatypes ((Hashable!785 0))(
  ( (HashableExt!784 (__x!5561 Int)) )
))
(declare-datatypes ((LongMapFixedSize!1626 0))(
  ( (LongMapFixedSize!1627 (defaultEntry!1169 Int) (mask!2626 (_ BitVec 32)) (extraKeys!1060 (_ BitVec 32)) (zeroValue!1070 List!7627) (minValue!1070 List!7627) (_size!1735 (_ BitVec 32)) (_keys!1107 array!3005) (_values!1092 array!3011) (_vacant!874 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3193 0))(
  ( (Cell!3194 (v!17756 LongMapFixedSize!1626)) )
))
(declare-datatypes ((MutLongMap!813 0))(
  ( (LongMap!813 (underlying!1809 Cell!3193)) (MutLongMapExt!812 (__x!5562 Int)) )
))
(declare-datatypes ((Cell!3195 0))(
  ( (Cell!3196 (v!17757 MutLongMap!813)) )
))
(declare-datatypes ((MutableMap!785 0))(
  ( (MutableMapExt!784 (__x!5563 Int)) (HashMap!785 (underlying!1810 Cell!3195) (hashF!2693 Hashable!785) (_size!1736 (_ BitVec 32)) (defaultValue!936 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!70 0))(
  ( (CacheFindLongestMatch!71 (cache!1172 MutableMap!785) (totalInput!1818 BalanceConc!5360)) )
))
(declare-datatypes ((tuple4!132 0))(
  ( (tuple4!133 (_1!4480 Option!1716) (_2!4480 CacheUp!408) (_3!438 CacheDown!414) (_4!66 CacheFindLongestMatch!70)) )
))
(declare-fun lt!285596 () tuple4!132)

(declare-fun valid!691 (CacheFindLongestMatch!70) Bool)

(assert (=> b!695119 (= e!437900 (valid!691 (_4!66 lt!285596)))))

(declare-fun b!695120 () Bool)

(declare-fun e!437917 () Bool)

(assert (=> b!695120 (= e!437909 e!437917)))

(declare-fun res!314740 () Bool)

(assert (=> b!695120 (=> (not res!314740) (not e!437917))))

(declare-fun lt!285599 () tuple2!8074)

(declare-fun lt!285605 () tuple2!8074)

(declare-fun ++!1978 (BalanceConc!5362 BalanceConc!5362) BalanceConc!5362)

(assert (=> b!695120 (= res!314740 (= (list!3176 (_1!4474 lt!285605)) (list!3176 (++!1978 acc!372 (_1!4474 lt!285599)))))))

(declare-fun input!870 () BalanceConc!5360)

(assert (=> b!695120 (= lt!285599 (lexRec!173 thiss!12529 rules!1486 input!870))))

(declare-fun totalInput!378 () BalanceConc!5360)

(assert (=> b!695120 (= lt!285605 (lexRec!173 thiss!12529 rules!1486 totalInput!378))))

(declare-fun b!695121 () Bool)

(declare-fun e!437903 () Bool)

(assert (=> b!695121 (= e!437903 e!437908)))

(declare-fun res!314743 () Bool)

(assert (=> b!695121 (=> (not res!314743) (not e!437908))))

(declare-fun lt!285598 () List!7623)

(declare-fun lt!285602 () List!7623)

(assert (=> b!695121 (= res!314743 (= lt!285598 lt!285602))))

(declare-fun lt!285601 () List!7623)

(declare-fun lt!285600 () List!7623)

(declare-fun ++!1979 (List!7623 List!7623) List!7623)

(assert (=> b!695121 (= lt!285602 (++!1979 lt!285601 lt!285600))))

(declare-fun list!3177 (BalanceConc!5360) List!7623)

(assert (=> b!695121 (= lt!285598 (list!3177 totalInput!378))))

(assert (=> b!695121 (= lt!285600 (list!3177 input!870))))

(assert (=> b!695121 (= lt!285601 (list!3177 treated!50))))

(declare-fun b!695122 () Bool)

(declare-fun e!437915 () Bool)

(declare-fun e!437929 () Bool)

(assert (=> b!695122 (= e!437915 e!437929)))

(declare-fun b!695123 () Bool)

(declare-fun e!437933 () Bool)

(assert (=> b!695123 (= e!437933 e!437900)))

(declare-fun res!314741 () Bool)

(assert (=> b!695123 (=> (not res!314741) (not e!437900))))

(declare-fun valid!692 (CacheUp!408) Bool)

(assert (=> b!695123 (= res!314741 (valid!692 (_2!4480 lt!285596)))))

(declare-fun b!695124 () Bool)

(declare-fun e!437912 () Bool)

(declare-fun e!437906 () Bool)

(assert (=> b!695124 (= e!437912 e!437906)))

(declare-fun b!695125 () Bool)

(declare-fun e!437925 () Bool)

(declare-fun e!437895 () Bool)

(assert (=> b!695125 (= e!437925 e!437895)))

(declare-fun b!695126 () Bool)

(declare-fun res!314749 () Bool)

(assert (=> b!695126 (=> (not res!314749) (not e!437917))))

(declare-fun cacheFindLongestMatch!74 () CacheFindLongestMatch!70)

(assert (=> b!695126 (= res!314749 (= (totalInput!1818 cacheFindLongestMatch!74) totalInput!378))))

(declare-fun b!695127 () Bool)

(declare-fun e!437920 () Bool)

(declare-fun tp!210633 () Bool)

(declare-fun inv!9723 (Conc!2675) Bool)

(assert (=> b!695127 (= e!437920 (and (inv!9723 (c!121823 acc!372)) tp!210633))))

(declare-fun b!695128 () Bool)

(declare-fun e!437914 () Bool)

(declare-fun e!437907 () Bool)

(assert (=> b!695128 (= e!437914 e!437907)))

(declare-fun b!695129 () Bool)

(declare-fun e!437927 () Bool)

(assert (=> b!695129 (= e!437927 e!437925)))

(declare-fun b!695130 () Bool)

(declare-fun e!437913 () Bool)

(declare-fun e!437898 () Bool)

(declare-fun tp!210629 () Bool)

(assert (=> b!695130 (= e!437913 (and e!437898 tp!210629))))

(declare-fun b!695131 () Bool)

(declare-fun res!314747 () Bool)

(assert (=> b!695131 (=> (not res!314747) (not e!437903))))

(declare-fun isEmpty!4901 (List!7625) Bool)

(assert (=> b!695131 (= res!314747 (not (isEmpty!4901 rules!1486)))))

(declare-fun res!314745 () Bool)

(assert (=> start!66368 (=> (not res!314745) (not e!437903))))

(assert (=> start!66368 (= res!314745 ((_ is Lexer!1329) thiss!12529))))

(assert (=> start!66368 e!437903))

(declare-fun inv!9724 (BalanceConc!5362) Bool)

(assert (=> start!66368 (and (inv!9724 acc!372) e!437920)))

(declare-fun e!437931 () Bool)

(declare-fun inv!9725 (BalanceConc!5360) Bool)

(assert (=> start!66368 (and (inv!9725 treated!50) e!437931)))

(declare-fun e!437902 () Bool)

(assert (=> start!66368 (and (inv!9725 totalInput!378) e!437902)))

(declare-fun e!437926 () Bool)

(assert (=> start!66368 (and (inv!9725 input!870) e!437926)))

(assert (=> start!66368 e!437913))

(assert (=> start!66368 true))

(declare-fun inv!9726 (CacheUp!408) Bool)

(assert (=> start!66368 (and (inv!9726 cacheUp!502) e!437915)))

(declare-fun cacheDown!515 () CacheDown!414)

(declare-fun inv!9727 (CacheDown!414) Bool)

(assert (=> start!66368 (and (inv!9727 cacheDown!515) e!437914)))

(declare-fun e!437924 () Bool)

(declare-fun inv!9728 (CacheFindLongestMatch!70) Bool)

(assert (=> start!66368 (and (inv!9728 cacheFindLongestMatch!74) e!437924)))

(declare-fun b!695132 () Bool)

(declare-fun e!437930 () Bool)

(declare-fun e!437932 () Bool)

(declare-fun lt!285597 () MutLongMap!812)

(assert (=> b!695132 (= e!437930 (and e!437932 ((_ is LongMap!812) lt!285597)))))

(assert (=> b!695132 (= lt!285597 (v!17755 (underlying!1808 (cache!1171 cacheDown!515))))))

(declare-fun b!695133 () Bool)

(declare-fun e!437905 () Bool)

(declare-fun tp!210622 () Bool)

(assert (=> b!695133 (= e!437905 (and tp!210622 mapRes!3254))))

(declare-fun condMapEmpty!3254 () Bool)

(declare-fun mapDefault!3256 () List!7621)

(assert (=> b!695133 (= condMapEmpty!3254 (= (arr!1359 (_values!1090 (v!17751 (underlying!1805 (v!17752 (underlying!1806 (cache!1170 cacheUp!502))))))) ((as const (Array (_ BitVec 32) List!7621)) mapDefault!3256)))))

(declare-fun b!695134 () Bool)

(declare-fun e!437910 () Bool)

(declare-fun tp!210618 () Bool)

(declare-fun mapRes!3255 () Bool)

(assert (=> b!695134 (= e!437910 (and tp!210618 mapRes!3255))))

(declare-fun condMapEmpty!3256 () Bool)

(declare-fun mapDefault!3254 () List!7626)

(assert (=> b!695134 (= condMapEmpty!3256 (= (arr!1360 (_values!1091 (v!17754 (underlying!1807 (v!17755 (underlying!1808 (cache!1171 cacheDown!515))))))) ((as const (Array (_ BitVec 32) List!7626)) mapDefault!3254)))))

(declare-fun mapIsEmpty!3255 () Bool)

(assert (=> mapIsEmpty!3255 mapRes!3255))

(declare-fun b!695135 () Bool)

(declare-fun e!437901 () Bool)

(declare-fun e!437899 () Bool)

(assert (=> b!695135 (= e!437924 (and e!437899 (inv!9725 (totalInput!1818 cacheFindLongestMatch!74)) e!437901))))

(declare-fun b!695136 () Bool)

(declare-fun res!314744 () Bool)

(assert (=> b!695136 (=> (not res!314744) (not e!437917))))

(assert (=> b!695136 (= res!314744 (valid!691 cacheFindLongestMatch!74))))

(declare-fun e!437918 () Bool)

(assert (=> b!695137 (= e!437918 (and tp!210620 tp!210643))))

(declare-fun b!695138 () Bool)

(declare-fun e!437921 () Bool)

(declare-fun tp!210624 () Bool)

(declare-fun mapRes!3256 () Bool)

(assert (=> b!695138 (= e!437921 (and tp!210624 mapRes!3256))))

(declare-fun condMapEmpty!3255 () Bool)

(declare-fun mapDefault!3255 () List!7627)

(assert (=> b!695138 (= condMapEmpty!3255 (= (arr!1361 (_values!1092 (v!17756 (underlying!1809 (v!17757 (underlying!1810 (cache!1172 cacheFindLongestMatch!74))))))) ((as const (Array (_ BitVec 32) List!7627)) mapDefault!3255)))))

(declare-fun b!695139 () Bool)

(declare-fun e!437935 () Bool)

(assert (=> b!695139 (= e!437935 e!437933)))

(declare-fun res!314734 () Bool)

(assert (=> b!695139 (=> res!314734 e!437933)))

(declare-fun rulesValidInductive!526 (LexerInterface!1331 List!7625) Bool)

(assert (=> b!695139 (= res!314734 (not (rulesValidInductive!526 thiss!12529 rules!1486)))))

(declare-fun lt!285604 () tuple2!8074)

(assert (=> b!695139 (= lt!285604 (lexRec!173 thiss!12529 rules!1486 (_2!4479 (v!17753 (_1!4480 lt!285596)))))))

(declare-fun b!695140 () Bool)

(declare-fun res!314742 () Bool)

(assert (=> b!695140 (=> (not res!314742) (not e!437917))))

(assert (=> b!695140 (= res!314742 (= (list!3177 (_2!4474 lt!285605)) (list!3177 (_2!4474 lt!285599))))))

(declare-fun b!695141 () Bool)

(declare-fun tp!210615 () Bool)

(declare-fun inv!9729 (Conc!2674) Bool)

(assert (=> b!695141 (= e!437931 (and (inv!9729 (c!121822 treated!50)) tp!210615))))

(declare-fun b!695142 () Bool)

(declare-fun e!437923 () Bool)

(declare-fun lt!285595 () MutLongMap!813)

(assert (=> b!695142 (= e!437923 (and e!437927 ((_ is LongMap!813) lt!285595)))))

(assert (=> b!695142 (= lt!285595 (v!17757 (underlying!1810 (cache!1172 cacheFindLongestMatch!74))))))

(declare-fun b!695143 () Bool)

(declare-fun res!314733 () Bool)

(assert (=> b!695143 (=> (not res!314733) (not e!437917))))

(declare-fun valid!693 (CacheDown!414) Bool)

(assert (=> b!695143 (= res!314733 (valid!693 cacheDown!515))))

(declare-fun b!695144 () Bool)

(declare-fun e!437904 () Bool)

(assert (=> b!695144 (= e!437904 e!437935)))

(declare-fun res!314735 () Bool)

(assert (=> b!695144 (=> res!314735 e!437935)))

(assert (=> b!695144 (= res!314735 (not ((_ is Some!1715) (_1!4480 lt!285596))))))

(declare-fun maxPrefixZipperSequenceV2Mem!8 (LexerInterface!1331 List!7625 BalanceConc!5360 BalanceConc!5360 CacheUp!408 CacheDown!414 CacheFindLongestMatch!70) tuple4!132)

(assert (=> b!695144 (= lt!285596 (maxPrefixZipperSequenceV2Mem!8 thiss!12529 rules!1486 input!870 totalInput!378 cacheUp!502 cacheDown!515 cacheFindLongestMatch!74))))

(declare-fun b!695145 () Bool)

(assert (=> b!695145 (= e!437917 (not e!437904))))

(declare-fun res!314738 () Bool)

(assert (=> b!695145 (=> res!314738 e!437904)))

(declare-fun isSuffix!138 (List!7623 List!7623) Bool)

(assert (=> b!695145 (= res!314738 (not (isSuffix!138 lt!285600 lt!285598)))))

(assert (=> b!695145 (isSuffix!138 lt!285600 lt!285602)))

(declare-datatypes ((Unit!12684 0))(
  ( (Unit!12685) )
))
(declare-fun lt!285606 () Unit!12684)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!138 (List!7623 List!7623) Unit!12684)

(assert (=> b!695145 (= lt!285606 (lemmaConcatTwoListThenFSndIsSuffix!138 lt!285601 lt!285600))))

(declare-fun tp!210619 () Bool)

(declare-fun e!437928 () Bool)

(declare-fun tp!210626 () Bool)

(declare-fun array_inv!998 (array!3005) Bool)

(declare-fun array_inv!999 (array!3007) Bool)

(assert (=> b!695146 (= e!437928 (and tp!210640 tp!210626 tp!210619 (array_inv!998 (_keys!1105 (v!17751 (underlying!1805 (v!17752 (underlying!1806 (cache!1170 cacheUp!502))))))) (array_inv!999 (_values!1090 (v!17751 (underlying!1805 (v!17752 (underlying!1806 (cache!1170 cacheUp!502))))))) e!437905))))

(assert (=> b!695147 (= e!437907 (and e!437930 tp!210630))))

(declare-fun tp!210623 () Bool)

(declare-fun b!695148 () Bool)

(declare-fun inv!9718 (String!9536) Bool)

(declare-fun inv!9730 (TokenValueInjection!2860) Bool)

(assert (=> b!695148 (= e!437898 (and tp!210623 (inv!9718 (tag!1780 (h!13012 rules!1486))) (inv!9730 (transformation!1518 (h!13012 rules!1486))) e!437918))))

(declare-fun mapNonEmpty!3255 () Bool)

(declare-fun tp!210616 () Bool)

(declare-fun tp!210632 () Bool)

(assert (=> mapNonEmpty!3255 (= mapRes!3255 (and tp!210616 tp!210632))))

(declare-fun mapValue!3255 () List!7626)

(declare-fun mapRest!3254 () (Array (_ BitVec 32) List!7626))

(declare-fun mapKey!3256 () (_ BitVec 32))

(assert (=> mapNonEmpty!3255 (= (arr!1360 (_values!1091 (v!17754 (underlying!1807 (v!17755 (underlying!1808 (cache!1171 cacheDown!515))))))) (store mapRest!3254 mapKey!3256 mapValue!3255))))

(declare-fun b!695149 () Bool)

(assert (=> b!695149 (= e!437932 e!437912)))

(declare-fun b!695150 () Bool)

(declare-fun e!437896 () Bool)

(assert (=> b!695150 (= e!437911 e!437896)))

(declare-fun b!695151 () Bool)

(declare-fun res!314739 () Bool)

(assert (=> b!695151 (=> (not res!314739) (not e!437900))))

(assert (=> b!695151 (= res!314739 (valid!693 (_3!438 lt!285596)))))

(declare-fun b!695152 () Bool)

(assert (=> b!695152 (= e!437896 e!437928)))

(declare-fun tp!210641 () Bool)

(declare-fun tp!210637 () Bool)

(declare-fun array_inv!1000 (array!3011) Bool)

(assert (=> b!695153 (= e!437895 (and tp!210631 tp!210637 tp!210641 (array_inv!998 (_keys!1107 (v!17756 (underlying!1809 (v!17757 (underlying!1810 (cache!1172 cacheFindLongestMatch!74))))))) (array_inv!1000 (_values!1092 (v!17756 (underlying!1809 (v!17757 (underlying!1810 (cache!1172 cacheFindLongestMatch!74))))))) e!437921))))

(declare-fun b!695154 () Bool)

(declare-fun tp!210627 () Bool)

(assert (=> b!695154 (= e!437926 (and (inv!9729 (c!121822 input!870)) tp!210627))))

(declare-fun tp!210634 () Bool)

(declare-fun tp!210617 () Bool)

(declare-fun array_inv!1001 (array!3009) Bool)

(assert (=> b!695155 (= e!437906 (and tp!210621 tp!210617 tp!210634 (array_inv!998 (_keys!1106 (v!17754 (underlying!1807 (v!17755 (underlying!1808 (cache!1171 cacheDown!515))))))) (array_inv!1001 (_values!1091 (v!17754 (underlying!1807 (v!17755 (underlying!1808 (cache!1171 cacheDown!515))))))) e!437910))))

(declare-fun mapIsEmpty!3256 () Bool)

(assert (=> mapIsEmpty!3256 mapRes!3256))

(declare-fun b!695156 () Bool)

(declare-fun res!314737 () Bool)

(assert (=> b!695156 (=> (not res!314737) (not e!437909))))

(declare-fun isEmpty!4902 (List!7623) Bool)

(assert (=> b!695156 (= res!314737 (isEmpty!4902 (list!3177 (_2!4474 lt!285594))))))

(declare-fun b!695157 () Bool)

(declare-fun res!314746 () Bool)

(assert (=> b!695157 (=> (not res!314746) (not e!437903))))

(declare-fun rulesInvariant!1259 (LexerInterface!1331 List!7625) Bool)

(assert (=> b!695157 (= res!314746 (rulesInvariant!1259 thiss!12529 rules!1486))))

(declare-fun mapNonEmpty!3256 () Bool)

(declare-fun tp!210635 () Bool)

(declare-fun tp!210638 () Bool)

(assert (=> mapNonEmpty!3256 (= mapRes!3256 (and tp!210635 tp!210638))))

(declare-fun mapValue!3254 () List!7627)

(declare-fun mapRest!3255 () (Array (_ BitVec 32) List!7627))

(declare-fun mapKey!3254 () (_ BitVec 32))

(assert (=> mapNonEmpty!3256 (= (arr!1361 (_values!1092 (v!17756 (underlying!1809 (v!17757 (underlying!1810 (cache!1172 cacheFindLongestMatch!74))))))) (store mapRest!3255 mapKey!3254 mapValue!3254))))

(declare-fun b!695158 () Bool)

(declare-fun tp!210628 () Bool)

(assert (=> b!695158 (= e!437901 (and (inv!9729 (c!121822 (totalInput!1818 cacheFindLongestMatch!74))) tp!210628))))

(assert (=> b!695159 (= e!437899 (and e!437923 tp!210614))))

(assert (=> b!695160 (= e!437929 (and e!437922 tp!210639))))

(declare-fun b!695161 () Bool)

(declare-fun tp!210642 () Bool)

(assert (=> b!695161 (= e!437902 (and (inv!9729 (c!121822 totalInput!378)) tp!210642))))

(declare-fun b!695162 () Bool)

(declare-fun res!314748 () Bool)

(assert (=> b!695162 (=> (not res!314748) (not e!437917))))

(assert (=> b!695162 (= res!314748 (valid!692 cacheUp!502))))

(assert (= (and start!66368 res!314745) b!695131))

(assert (= (and b!695131 res!314747) b!695157))

(assert (= (and b!695157 res!314746) b!695121))

(assert (= (and b!695121 res!314743) b!695118))

(assert (= (and b!695118 res!314736) b!695156))

(assert (= (and b!695156 res!314737) b!695120))

(assert (= (and b!695120 res!314740) b!695140))

(assert (= (and b!695140 res!314742) b!695162))

(assert (= (and b!695162 res!314748) b!695143))

(assert (= (and b!695143 res!314733) b!695136))

(assert (= (and b!695136 res!314744) b!695126))

(assert (= (and b!695126 res!314749) b!695145))

(assert (= (and b!695145 (not res!314738)) b!695144))

(assert (= (and b!695144 (not res!314735)) b!695139))

(assert (= (and b!695139 (not res!314734)) b!695123))

(assert (= (and b!695123 res!314741) b!695151))

(assert (= (and b!695151 res!314739) b!695119))

(assert (= start!66368 b!695127))

(assert (= start!66368 b!695141))

(assert (= start!66368 b!695161))

(assert (= start!66368 b!695154))

(assert (= b!695148 b!695137))

(assert (= b!695130 b!695148))

(assert (= (and start!66368 ((_ is Cons!7611) rules!1486)) b!695130))

(assert (= (and b!695133 condMapEmpty!3254) mapIsEmpty!3254))

(assert (= (and b!695133 (not condMapEmpty!3254)) mapNonEmpty!3254))

(assert (= b!695146 b!695133))

(assert (= b!695152 b!695146))

(assert (= b!695150 b!695152))

(assert (= (and b!695117 ((_ is LongMap!811) (v!17752 (underlying!1806 (cache!1170 cacheUp!502))))) b!695150))

(assert (= b!695160 b!695117))

(assert (= (and b!695122 ((_ is HashMap!783) (cache!1170 cacheUp!502))) b!695160))

(assert (= start!66368 b!695122))

(assert (= (and b!695134 condMapEmpty!3256) mapIsEmpty!3255))

(assert (= (and b!695134 (not condMapEmpty!3256)) mapNonEmpty!3255))

(assert (= b!695155 b!695134))

(assert (= b!695124 b!695155))

(assert (= b!695149 b!695124))

(assert (= (and b!695132 ((_ is LongMap!812) (v!17755 (underlying!1808 (cache!1171 cacheDown!515))))) b!695149))

(assert (= b!695147 b!695132))

(assert (= (and b!695128 ((_ is HashMap!784) (cache!1171 cacheDown!515))) b!695147))

(assert (= start!66368 b!695128))

(assert (= (and b!695138 condMapEmpty!3255) mapIsEmpty!3256))

(assert (= (and b!695138 (not condMapEmpty!3255)) mapNonEmpty!3256))

(assert (= b!695153 b!695138))

(assert (= b!695125 b!695153))

(assert (= b!695129 b!695125))

(assert (= (and b!695142 ((_ is LongMap!813) (v!17757 (underlying!1810 (cache!1172 cacheFindLongestMatch!74))))) b!695129))

(assert (= b!695159 b!695142))

(assert (= (and b!695135 ((_ is HashMap!785) (cache!1172 cacheFindLongestMatch!74))) b!695159))

(assert (= b!695135 b!695158))

(assert (= start!66368 b!695135))

(declare-fun m!950993 () Bool)

(assert (=> mapNonEmpty!3256 m!950993))

(declare-fun m!950995 () Bool)

(assert (=> b!695158 m!950995))

(declare-fun m!950997 () Bool)

(assert (=> b!695143 m!950997))

(declare-fun m!950999 () Bool)

(assert (=> b!695121 m!950999))

(declare-fun m!951001 () Bool)

(assert (=> b!695121 m!951001))

(declare-fun m!951003 () Bool)

(assert (=> b!695121 m!951003))

(declare-fun m!951005 () Bool)

(assert (=> b!695121 m!951005))

(declare-fun m!951007 () Bool)

(assert (=> b!695127 m!951007))

(declare-fun m!951009 () Bool)

(assert (=> b!695161 m!951009))

(declare-fun m!951011 () Bool)

(assert (=> b!695154 m!951011))

(declare-fun m!951013 () Bool)

(assert (=> b!695136 m!951013))

(declare-fun m!951015 () Bool)

(assert (=> b!695157 m!951015))

(declare-fun m!951017 () Bool)

(assert (=> b!695151 m!951017))

(declare-fun m!951019 () Bool)

(assert (=> b!695139 m!951019))

(declare-fun m!951021 () Bool)

(assert (=> b!695139 m!951021))

(declare-fun m!951023 () Bool)

(assert (=> b!695135 m!951023))

(declare-fun m!951025 () Bool)

(assert (=> b!695131 m!951025))

(declare-fun m!951027 () Bool)

(assert (=> b!695153 m!951027))

(declare-fun m!951029 () Bool)

(assert (=> b!695153 m!951029))

(declare-fun m!951031 () Bool)

(assert (=> b!695144 m!951031))

(declare-fun m!951033 () Bool)

(assert (=> mapNonEmpty!3255 m!951033))

(declare-fun m!951035 () Bool)

(assert (=> b!695146 m!951035))

(declare-fun m!951037 () Bool)

(assert (=> b!695146 m!951037))

(declare-fun m!951039 () Bool)

(assert (=> b!695118 m!951039))

(declare-fun m!951041 () Bool)

(assert (=> b!695118 m!951041))

(declare-fun m!951043 () Bool)

(assert (=> b!695118 m!951043))

(declare-fun m!951045 () Bool)

(assert (=> b!695145 m!951045))

(declare-fun m!951047 () Bool)

(assert (=> b!695145 m!951047))

(declare-fun m!951049 () Bool)

(assert (=> b!695145 m!951049))

(declare-fun m!951051 () Bool)

(assert (=> b!695155 m!951051))

(declare-fun m!951053 () Bool)

(assert (=> b!695155 m!951053))

(declare-fun m!951055 () Bool)

(assert (=> b!695119 m!951055))

(declare-fun m!951057 () Bool)

(assert (=> start!66368 m!951057))

(declare-fun m!951059 () Bool)

(assert (=> start!66368 m!951059))

(declare-fun m!951061 () Bool)

(assert (=> start!66368 m!951061))

(declare-fun m!951063 () Bool)

(assert (=> start!66368 m!951063))

(declare-fun m!951065 () Bool)

(assert (=> start!66368 m!951065))

(declare-fun m!951067 () Bool)

(assert (=> start!66368 m!951067))

(declare-fun m!951069 () Bool)

(assert (=> start!66368 m!951069))

(declare-fun m!951071 () Bool)

(assert (=> b!695123 m!951071))

(declare-fun m!951073 () Bool)

(assert (=> b!695148 m!951073))

(declare-fun m!951075 () Bool)

(assert (=> b!695148 m!951075))

(declare-fun m!951077 () Bool)

(assert (=> b!695162 m!951077))

(declare-fun m!951079 () Bool)

(assert (=> b!695120 m!951079))

(declare-fun m!951081 () Bool)

(assert (=> b!695120 m!951081))

(declare-fun m!951083 () Bool)

(assert (=> b!695120 m!951083))

(assert (=> b!695120 m!951081))

(declare-fun m!951085 () Bool)

(assert (=> b!695120 m!951085))

(declare-fun m!951087 () Bool)

(assert (=> b!695120 m!951087))

(declare-fun m!951089 () Bool)

(assert (=> b!695141 m!951089))

(declare-fun m!951091 () Bool)

(assert (=> b!695140 m!951091))

(declare-fun m!951093 () Bool)

(assert (=> b!695140 m!951093))

(declare-fun m!951095 () Bool)

(assert (=> mapNonEmpty!3254 m!951095))

(declare-fun m!951097 () Bool)

(assert (=> b!695156 m!951097))

(assert (=> b!695156 m!951097))

(declare-fun m!951099 () Bool)

(assert (=> b!695156 m!951099))

(check-sat (not b_next!19949) (not b_next!19955) (not b!695118) (not b_next!19945) b_and!63681 (not b_next!19941) (not mapNonEmpty!3256) (not b!695141) (not b_next!19951) b_and!63685 (not b_next!19943) (not b!695133) (not b!695130) (not b!695143) (not b!695154) (not b!695119) (not mapNonEmpty!3255) (not b!695155) (not mapNonEmpty!3254) (not b!695135) (not b!695138) (not b!695120) (not b!695140) (not b_next!19953) (not b!695158) (not b!695121) (not b!695145) (not b!695144) b_and!63671 b_and!63675 b_and!63683 (not b!695134) (not b!695148) (not b!695136) (not b!695156) (not b!695139) (not b!695127) (not start!66368) (not b!695151) b_and!63677 (not b!695161) (not b!695131) (not b!695157) (not b!695146) (not b!695123) (not b!695162) (not b!695153) b_and!63673 (not b_next!19947) b_and!63679)
(check-sat (not b_next!19949) (not b_next!19955) (not b_next!19945) (not b_next!19953) b_and!63681 b_and!63671 (not b_next!19941) b_and!63677 (not b_next!19951) b_and!63685 (not b_next!19943) b_and!63675 b_and!63683 b_and!63673 (not b_next!19947) b_and!63679)
(get-model)

(declare-fun d!233080 () Bool)

(assert (=> d!233080 (= (inv!9718 (tag!1780 (h!13012 rules!1486))) (= (mod (str.len (value!48927 (tag!1780 (h!13012 rules!1486)))) 2) 0))))

(assert (=> b!695148 d!233080))

(declare-fun d!233082 () Bool)

(declare-fun res!314754 () Bool)

(declare-fun e!437938 () Bool)

(assert (=> d!233082 (=> (not res!314754) (not e!437938))))

(declare-fun semiInverseModEq!573 (Int Int) Bool)

(assert (=> d!233082 (= res!314754 (semiInverseModEq!573 (toChars!2341 (transformation!1518 (h!13012 rules!1486))) (toValue!2482 (transformation!1518 (h!13012 rules!1486)))))))

(assert (=> d!233082 (= (inv!9730 (transformation!1518 (h!13012 rules!1486))) e!437938)))

(declare-fun b!695165 () Bool)

(declare-fun equivClasses!548 (Int Int) Bool)

(assert (=> b!695165 (= e!437938 (equivClasses!548 (toChars!2341 (transformation!1518 (h!13012 rules!1486))) (toValue!2482 (transformation!1518 (h!13012 rules!1486)))))))

(assert (= (and d!233082 res!314754) b!695165))

(declare-fun m!951101 () Bool)

(assert (=> d!233082 m!951101))

(declare-fun m!951103 () Bool)

(assert (=> b!695165 m!951103))

(assert (=> b!695148 d!233082))

(declare-fun d!233084 () Bool)

(declare-fun c!121826 () Bool)

(assert (=> d!233084 (= c!121826 ((_ is Node!2675) (c!121823 acc!372)))))

(declare-fun e!437943 () Bool)

(assert (=> d!233084 (= (inv!9723 (c!121823 acc!372)) e!437943)))

(declare-fun b!695172 () Bool)

(declare-fun inv!9731 (Conc!2675) Bool)

(assert (=> b!695172 (= e!437943 (inv!9731 (c!121823 acc!372)))))

(declare-fun b!695173 () Bool)

(declare-fun e!437944 () Bool)

(assert (=> b!695173 (= e!437943 e!437944)))

(declare-fun res!314757 () Bool)

(assert (=> b!695173 (= res!314757 (not ((_ is Leaf!3957) (c!121823 acc!372))))))

(assert (=> b!695173 (=> res!314757 e!437944)))

(declare-fun b!695174 () Bool)

(declare-fun inv!9732 (Conc!2675) Bool)

(assert (=> b!695174 (= e!437944 (inv!9732 (c!121823 acc!372)))))

(assert (= (and d!233084 c!121826) b!695172))

(assert (= (and d!233084 (not c!121826)) b!695173))

(assert (= (and b!695173 (not res!314757)) b!695174))

(declare-fun m!951105 () Bool)

(assert (=> b!695172 m!951105))

(declare-fun m!951107 () Bool)

(assert (=> b!695174 m!951107))

(assert (=> b!695127 d!233084))

(declare-fun d!233086 () Bool)

(declare-fun validCacheMapDown!63 (MutableMap!784) Bool)

(assert (=> d!233086 (= (valid!693 (_3!438 lt!285596)) (validCacheMapDown!63 (cache!1171 (_3!438 lt!285596))))))

(declare-fun bs!137924 () Bool)

(assert (= bs!137924 d!233086))

(declare-fun m!951109 () Bool)

(assert (=> bs!137924 m!951109))

(assert (=> b!695151 d!233086))

(declare-fun d!233088 () Bool)

(assert (=> d!233088 (= (isEmpty!4901 rules!1486) ((_ is Nil!7611) rules!1486))))

(assert (=> b!695131 d!233088))

(declare-fun d!233090 () Bool)

(declare-fun validCacheMapUp!63 (MutableMap!783) Bool)

(assert (=> d!233090 (= (valid!692 cacheUp!502) (validCacheMapUp!63 (cache!1170 cacheUp!502)))))

(declare-fun bs!137925 () Bool)

(assert (= bs!137925 d!233090))

(declare-fun m!951111 () Bool)

(assert (=> bs!137925 m!951111))

(assert (=> b!695162 d!233090))

(declare-fun b!695187 () Bool)

(declare-fun res!314769 () Bool)

(declare-fun e!437950 () Bool)

(assert (=> b!695187 (=> (not res!314769) (not e!437950))))

(declare-fun lt!285631 () tuple4!132)

(assert (=> b!695187 (= res!314769 (valid!691 (_4!66 lt!285631)))))

(declare-fun b!695188 () Bool)

(declare-datatypes ((tuple4!134 0))(
  ( (tuple4!135 (_1!4481 Option!1716) (_2!4481 CacheUp!408) (_3!439 CacheFindLongestMatch!70) (_4!67 CacheDown!414)) )
))
(declare-fun e!437949 () tuple4!134)

(declare-fun lt!285625 () tuple4!132)

(assert (=> b!695188 (= e!437949 (tuple4!135 (_1!4480 lt!285625) (_2!4480 lt!285625) (_4!66 lt!285625) (_3!438 lt!285625)))))

(declare-fun call!43658 () tuple4!132)

(assert (=> b!695188 (= lt!285625 call!43658)))

(declare-fun b!695189 () Bool)

(assert (=> b!695189 (= e!437950 (= (totalInput!1818 (_4!66 lt!285631)) totalInput!378))))

(declare-fun b!695190 () Bool)

(declare-fun res!314766 () Bool)

(assert (=> b!695190 (=> (not res!314766) (not e!437950))))

(assert (=> b!695190 (= res!314766 (valid!693 (_3!438 lt!285631)))))

(declare-fun d!233092 () Bool)

(assert (=> d!233092 e!437950))

(declare-fun res!314768 () Bool)

(assert (=> d!233092 (=> (not res!314768) (not e!437950))))

(declare-fun maxPrefixZipperSequenceV2!129 (LexerInterface!1331 List!7625 BalanceConc!5360 BalanceConc!5360) Option!1716)

(assert (=> d!233092 (= res!314768 (= (_1!4480 lt!285631) (maxPrefixZipperSequenceV2!129 thiss!12529 rules!1486 input!870 totalInput!378)))))

(declare-fun lt!285630 () tuple4!134)

(assert (=> d!233092 (= lt!285631 (tuple4!133 (_1!4481 lt!285630) (_2!4481 lt!285630) (_4!67 lt!285630) (_3!439 lt!285630)))))

(assert (=> d!233092 (= lt!285630 e!437949)))

(declare-fun c!121829 () Bool)

(assert (=> d!233092 (= c!121829 (and ((_ is Cons!7611) rules!1486) ((_ is Nil!7611) (t!87448 rules!1486))))))

(declare-fun lt!285629 () Unit!12684)

(declare-fun lt!285626 () Unit!12684)

(assert (=> d!233092 (= lt!285629 lt!285626)))

(declare-fun lt!285633 () List!7623)

(declare-fun lt!285632 () List!7623)

(declare-fun isPrefix!918 (List!7623 List!7623) Bool)

(assert (=> d!233092 (isPrefix!918 lt!285633 lt!285632)))

(declare-fun lemmaIsPrefixRefl!629 (List!7623 List!7623) Unit!12684)

(assert (=> d!233092 (= lt!285626 (lemmaIsPrefixRefl!629 lt!285633 lt!285632))))

(assert (=> d!233092 (= lt!285632 (list!3177 input!870))))

(assert (=> d!233092 (= lt!285633 (list!3177 input!870))))

(assert (=> d!233092 (rulesValidInductive!526 thiss!12529 rules!1486)))

(assert (=> d!233092 (= (maxPrefixZipperSequenceV2Mem!8 thiss!12529 rules!1486 input!870 totalInput!378 cacheUp!502 cacheDown!515 cacheFindLongestMatch!74) lt!285631)))

(declare-fun b!695191 () Bool)

(declare-fun lt!285628 () tuple4!132)

(declare-fun lt!285627 () tuple4!132)

(assert (=> b!695191 (= e!437949 (tuple4!135 (ite (and ((_ is None!1715) (_1!4480 lt!285628)) ((_ is None!1715) (_1!4480 lt!285627))) None!1715 (ite ((_ is None!1715) (_1!4480 lt!285627)) (_1!4480 lt!285628) (ite ((_ is None!1715) (_1!4480 lt!285628)) (_1!4480 lt!285627) (ite (>= (size!6208 (_1!4479 (v!17753 (_1!4480 lt!285628)))) (size!6208 (_1!4479 (v!17753 (_1!4480 lt!285627))))) (_1!4480 lt!285628) (_1!4480 lt!285627))))) (_2!4480 lt!285627) (_4!66 lt!285627) (_3!438 lt!285627)))))

(assert (=> b!695191 (= lt!285628 call!43658)))

(assert (=> b!695191 (= lt!285627 (maxPrefixZipperSequenceV2Mem!8 thiss!12529 (t!87448 rules!1486) input!870 totalInput!378 (_2!4480 lt!285628) (_3!438 lt!285628) (_4!66 lt!285628)))))

(declare-fun bm!43653 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2Mem!3 (LexerInterface!1331 Rule!2836 BalanceConc!5360 BalanceConc!5360 CacheUp!408 CacheDown!414 CacheFindLongestMatch!70) tuple4!132)

(assert (=> bm!43653 (= call!43658 (maxPrefixOneRuleZipperSequenceV2Mem!3 thiss!12529 (h!13012 rules!1486) input!870 totalInput!378 cacheUp!502 cacheDown!515 cacheFindLongestMatch!74))))

(declare-fun b!695192 () Bool)

(declare-fun res!314767 () Bool)

(assert (=> b!695192 (=> (not res!314767) (not e!437950))))

(assert (=> b!695192 (= res!314767 (valid!692 (_2!4480 lt!285631)))))

(assert (= (and d!233092 c!121829) b!695188))

(assert (= (and d!233092 (not c!121829)) b!695191))

(assert (= (or b!695188 b!695191) bm!43653))

(assert (= (and d!233092 res!314768) b!695192))

(assert (= (and b!695192 res!314767) b!695190))

(assert (= (and b!695190 res!314766) b!695187))

(assert (= (and b!695187 res!314769) b!695189))

(declare-fun m!951113 () Bool)

(assert (=> b!695190 m!951113))

(declare-fun m!951115 () Bool)

(assert (=> b!695192 m!951115))

(declare-fun m!951117 () Bool)

(assert (=> b!695187 m!951117))

(declare-fun m!951119 () Bool)

(assert (=> b!695191 m!951119))

(assert (=> d!233092 m!951019))

(assert (=> d!233092 m!951003))

(declare-fun m!951121 () Bool)

(assert (=> d!233092 m!951121))

(declare-fun m!951123 () Bool)

(assert (=> d!233092 m!951123))

(declare-fun m!951125 () Bool)

(assert (=> d!233092 m!951125))

(declare-fun m!951127 () Bool)

(assert (=> bm!43653 m!951127))

(assert (=> b!695144 d!233092))

(declare-fun d!233094 () Bool)

(assert (=> d!233094 (= (valid!693 cacheDown!515) (validCacheMapDown!63 (cache!1171 cacheDown!515)))))

(declare-fun bs!137926 () Bool)

(assert (= bs!137926 d!233094))

(declare-fun m!951129 () Bool)

(assert (=> bs!137926 m!951129))

(assert (=> b!695143 d!233094))

(declare-fun d!233096 () Bool)

(assert (=> d!233096 (= (valid!692 (_2!4480 lt!285596)) (validCacheMapUp!63 (cache!1170 (_2!4480 lt!285596))))))

(declare-fun bs!137927 () Bool)

(assert (= bs!137927 d!233096))

(declare-fun m!951131 () Bool)

(assert (=> bs!137927 m!951131))

(assert (=> b!695123 d!233096))

(declare-fun d!233098 () Bool)

(declare-fun res!314772 () Bool)

(declare-fun e!437953 () Bool)

(assert (=> d!233098 (=> (not res!314772) (not e!437953))))

(assert (=> d!233098 (= res!314772 ((_ is HashMap!785) (cache!1172 cacheFindLongestMatch!74)))))

(assert (=> d!233098 (= (inv!9728 cacheFindLongestMatch!74) e!437953)))

(declare-fun b!695195 () Bool)

(declare-fun validCacheMapFindLongestMatch!9 (MutableMap!785 BalanceConc!5360) Bool)

(assert (=> b!695195 (= e!437953 (validCacheMapFindLongestMatch!9 (cache!1172 cacheFindLongestMatch!74) (totalInput!1818 cacheFindLongestMatch!74)))))

(assert (= (and d!233098 res!314772) b!695195))

(declare-fun m!951133 () Bool)

(assert (=> b!695195 m!951133))

(assert (=> start!66368 d!233098))

(declare-fun d!233100 () Bool)

(declare-fun isBalanced!700 (Conc!2675) Bool)

(assert (=> d!233100 (= (inv!9724 acc!372) (isBalanced!700 (c!121823 acc!372)))))

(declare-fun bs!137928 () Bool)

(assert (= bs!137928 d!233100))

(declare-fun m!951135 () Bool)

(assert (=> bs!137928 m!951135))

(assert (=> start!66368 d!233100))

(declare-fun d!233102 () Bool)

(declare-fun isBalanced!701 (Conc!2674) Bool)

(assert (=> d!233102 (= (inv!9725 input!870) (isBalanced!701 (c!121822 input!870)))))

(declare-fun bs!137929 () Bool)

(assert (= bs!137929 d!233102))

(declare-fun m!951137 () Bool)

(assert (=> bs!137929 m!951137))

(assert (=> start!66368 d!233102))

(declare-fun d!233104 () Bool)

(declare-fun res!314775 () Bool)

(declare-fun e!437956 () Bool)

(assert (=> d!233104 (=> (not res!314775) (not e!437956))))

(assert (=> d!233104 (= res!314775 ((_ is HashMap!784) (cache!1171 cacheDown!515)))))

(assert (=> d!233104 (= (inv!9727 cacheDown!515) e!437956)))

(declare-fun b!695198 () Bool)

(assert (=> b!695198 (= e!437956 (validCacheMapDown!63 (cache!1171 cacheDown!515)))))

(assert (= (and d!233104 res!314775) b!695198))

(assert (=> b!695198 m!951129))

(assert (=> start!66368 d!233104))

(declare-fun d!233106 () Bool)

(assert (=> d!233106 (= (inv!9725 treated!50) (isBalanced!701 (c!121822 treated!50)))))

(declare-fun bs!137930 () Bool)

(assert (= bs!137930 d!233106))

(declare-fun m!951139 () Bool)

(assert (=> bs!137930 m!951139))

(assert (=> start!66368 d!233106))

(declare-fun d!233108 () Bool)

(declare-fun res!314778 () Bool)

(declare-fun e!437959 () Bool)

(assert (=> d!233108 (=> (not res!314778) (not e!437959))))

(assert (=> d!233108 (= res!314778 ((_ is HashMap!783) (cache!1170 cacheUp!502)))))

(assert (=> d!233108 (= (inv!9726 cacheUp!502) e!437959)))

(declare-fun b!695201 () Bool)

(assert (=> b!695201 (= e!437959 (validCacheMapUp!63 (cache!1170 cacheUp!502)))))

(assert (= (and d!233108 res!314778) b!695201))

(assert (=> b!695201 m!951111))

(assert (=> start!66368 d!233108))

(declare-fun d!233110 () Bool)

(assert (=> d!233110 (= (inv!9725 totalInput!378) (isBalanced!701 (c!121822 totalInput!378)))))

(declare-fun bs!137931 () Bool)

(assert (= bs!137931 d!233110))

(declare-fun m!951141 () Bool)

(assert (=> bs!137931 m!951141))

(assert (=> start!66368 d!233110))

(declare-fun d!233112 () Bool)

(declare-fun c!121832 () Bool)

(assert (=> d!233112 (= c!121832 ((_ is Node!2674) (c!121822 totalInput!378)))))

(declare-fun e!437964 () Bool)

(assert (=> d!233112 (= (inv!9729 (c!121822 totalInput!378)) e!437964)))

(declare-fun b!695208 () Bool)

(declare-fun inv!9733 (Conc!2674) Bool)

(assert (=> b!695208 (= e!437964 (inv!9733 (c!121822 totalInput!378)))))

(declare-fun b!695209 () Bool)

(declare-fun e!437965 () Bool)

(assert (=> b!695209 (= e!437964 e!437965)))

(declare-fun res!314781 () Bool)

(assert (=> b!695209 (= res!314781 (not ((_ is Leaf!3956) (c!121822 totalInput!378))))))

(assert (=> b!695209 (=> res!314781 e!437965)))

(declare-fun b!695210 () Bool)

(declare-fun inv!9734 (Conc!2674) Bool)

(assert (=> b!695210 (= e!437965 (inv!9734 (c!121822 totalInput!378)))))

(assert (= (and d!233112 c!121832) b!695208))

(assert (= (and d!233112 (not c!121832)) b!695209))

(assert (= (and b!695209 (not res!314781)) b!695210))

(declare-fun m!951143 () Bool)

(assert (=> b!695208 m!951143))

(declare-fun m!951145 () Bool)

(assert (=> b!695210 m!951145))

(assert (=> b!695161 d!233112))

(declare-fun d!233114 () Bool)

(assert (=> d!233114 (= (array_inv!998 (_keys!1105 (v!17751 (underlying!1805 (v!17752 (underlying!1806 (cache!1170 cacheUp!502))))))) (bvsge (size!6206 (_keys!1105 (v!17751 (underlying!1805 (v!17752 (underlying!1806 (cache!1170 cacheUp!502))))))) #b00000000000000000000000000000000))))

(assert (=> b!695146 d!233114))

(declare-fun d!233116 () Bool)

(assert (=> d!233116 (= (array_inv!999 (_values!1090 (v!17751 (underlying!1805 (v!17752 (underlying!1806 (cache!1170 cacheUp!502))))))) (bvsge (size!6207 (_values!1090 (v!17751 (underlying!1805 (v!17752 (underlying!1806 (cache!1170 cacheUp!502))))))) #b00000000000000000000000000000000))))

(assert (=> b!695146 d!233116))

(declare-fun d!233118 () Bool)

(declare-fun e!437968 () Bool)

(assert (=> d!233118 e!437968))

(declare-fun res!314784 () Bool)

(assert (=> d!233118 (=> res!314784 e!437968)))

(declare-fun lt!285636 () Bool)

(assert (=> d!233118 (= res!314784 (not lt!285636))))

(declare-fun drop!357 (List!7623 Int) List!7623)

(declare-fun size!6211 (List!7623) Int)

(assert (=> d!233118 (= lt!285636 (= lt!285600 (drop!357 lt!285598 (- (size!6211 lt!285598) (size!6211 lt!285600)))))))

(assert (=> d!233118 (= (isSuffix!138 lt!285600 lt!285598) lt!285636)))

(declare-fun b!695213 () Bool)

(assert (=> b!695213 (= e!437968 (>= (size!6211 lt!285598) (size!6211 lt!285600)))))

(assert (= (and d!233118 (not res!314784)) b!695213))

(declare-fun m!951147 () Bool)

(assert (=> d!233118 m!951147))

(declare-fun m!951149 () Bool)

(assert (=> d!233118 m!951149))

(declare-fun m!951151 () Bool)

(assert (=> d!233118 m!951151))

(assert (=> b!695213 m!951147))

(assert (=> b!695213 m!951149))

(assert (=> b!695145 d!233118))

(declare-fun d!233120 () Bool)

(declare-fun e!437969 () Bool)

(assert (=> d!233120 e!437969))

(declare-fun res!314785 () Bool)

(assert (=> d!233120 (=> res!314785 e!437969)))

(declare-fun lt!285637 () Bool)

(assert (=> d!233120 (= res!314785 (not lt!285637))))

(assert (=> d!233120 (= lt!285637 (= lt!285600 (drop!357 lt!285602 (- (size!6211 lt!285602) (size!6211 lt!285600)))))))

(assert (=> d!233120 (= (isSuffix!138 lt!285600 lt!285602) lt!285637)))

(declare-fun b!695214 () Bool)

(assert (=> b!695214 (= e!437969 (>= (size!6211 lt!285602) (size!6211 lt!285600)))))

(assert (= (and d!233120 (not res!314785)) b!695214))

(declare-fun m!951153 () Bool)

(assert (=> d!233120 m!951153))

(assert (=> d!233120 m!951149))

(declare-fun m!951155 () Bool)

(assert (=> d!233120 m!951155))

(assert (=> b!695214 m!951153))

(assert (=> b!695214 m!951149))

(assert (=> b!695145 d!233120))

(declare-fun d!233122 () Bool)

(assert (=> d!233122 (isSuffix!138 lt!285600 (++!1979 lt!285601 lt!285600))))

(declare-fun lt!285640 () Unit!12684)

(declare-fun choose!4698 (List!7623 List!7623) Unit!12684)

(assert (=> d!233122 (= lt!285640 (choose!4698 lt!285601 lt!285600))))

(assert (=> d!233122 (= (lemmaConcatTwoListThenFSndIsSuffix!138 lt!285601 lt!285600) lt!285640)))

(declare-fun bs!137932 () Bool)

(assert (= bs!137932 d!233122))

(assert (=> bs!137932 m!950999))

(assert (=> bs!137932 m!950999))

(declare-fun m!951157 () Bool)

(assert (=> bs!137932 m!951157))

(declare-fun m!951159 () Bool)

(assert (=> bs!137932 m!951159))

(assert (=> b!695145 d!233122))

(declare-fun d!233124 () Bool)

(declare-fun res!314788 () Bool)

(declare-fun e!437972 () Bool)

(assert (=> d!233124 (=> (not res!314788) (not e!437972))))

(declare-fun rulesValid!530 (LexerInterface!1331 List!7625) Bool)

(assert (=> d!233124 (= res!314788 (rulesValid!530 thiss!12529 rules!1486))))

(assert (=> d!233124 (= (rulesInvariant!1259 thiss!12529 rules!1486) e!437972)))

(declare-fun b!695217 () Bool)

(declare-datatypes ((List!7628 0))(
  ( (Nil!7614) (Cons!7614 (h!13015 String!9536) (t!87451 List!7628)) )
))
(declare-fun noDuplicateTag!530 (LexerInterface!1331 List!7625 List!7628) Bool)

(assert (=> b!695217 (= e!437972 (noDuplicateTag!530 thiss!12529 rules!1486 Nil!7614))))

(assert (= (and d!233124 res!314788) b!695217))

(declare-fun m!951161 () Bool)

(assert (=> d!233124 m!951161))

(declare-fun m!951163 () Bool)

(assert (=> b!695217 m!951163))

(assert (=> b!695157 d!233124))

(declare-fun d!233126 () Bool)

(declare-fun list!3178 (Conc!2675) List!7624)

(assert (=> d!233126 (= (list!3176 (_1!4474 lt!285594)) (list!3178 (c!121823 (_1!4474 lt!285594))))))

(declare-fun bs!137933 () Bool)

(assert (= bs!137933 d!233126))

(declare-fun m!951165 () Bool)

(assert (=> bs!137933 m!951165))

(assert (=> b!695118 d!233126))

(declare-fun d!233128 () Bool)

(assert (=> d!233128 (= (list!3176 acc!372) (list!3178 (c!121823 acc!372)))))

(declare-fun bs!137934 () Bool)

(assert (= bs!137934 d!233128))

(declare-fun m!951167 () Bool)

(assert (=> bs!137934 m!951167))

(assert (=> b!695118 d!233128))

(declare-fun b!695232 () Bool)

(declare-fun res!314797 () Bool)

(declare-fun e!437981 () Bool)

(assert (=> b!695232 (=> (not res!314797) (not e!437981))))

(declare-fun lt!285648 () tuple2!8074)

(declare-datatypes ((tuple2!8084 0))(
  ( (tuple2!8085 (_1!4482 List!7624) (_2!4482 List!7623)) )
))
(declare-fun lexList!325 (LexerInterface!1331 List!7625 List!7623) tuple2!8084)

(assert (=> b!695232 (= res!314797 (= (list!3176 (_1!4474 lt!285648)) (_1!4482 (lexList!325 thiss!12529 rules!1486 (list!3177 treated!50)))))))

(declare-fun b!695233 () Bool)

(declare-fun e!437984 () tuple2!8074)

(declare-fun lt!285649 () tuple2!8074)

(declare-fun lt!285647 () Option!1716)

(declare-fun prepend!261 (BalanceConc!5362 Token!2736) BalanceConc!5362)

(assert (=> b!695233 (= e!437984 (tuple2!8075 (prepend!261 (_1!4474 lt!285649) (_1!4479 (v!17753 lt!285647))) (_2!4474 lt!285649)))))

(assert (=> b!695233 (= lt!285649 (lexRec!173 thiss!12529 rules!1486 (_2!4479 (v!17753 lt!285647))))))

(declare-fun b!695234 () Bool)

(declare-fun e!437983 () Bool)

(declare-fun e!437982 () Bool)

(assert (=> b!695234 (= e!437983 e!437982)))

(declare-fun res!314795 () Bool)

(declare-fun size!6212 (BalanceConc!5360) Int)

(assert (=> b!695234 (= res!314795 (< (size!6212 (_2!4474 lt!285648)) (size!6212 treated!50)))))

(assert (=> b!695234 (=> (not res!314795) (not e!437982))))

(declare-fun d!233130 () Bool)

(assert (=> d!233130 e!437981))

(declare-fun res!314796 () Bool)

(assert (=> d!233130 (=> (not res!314796) (not e!437981))))

(assert (=> d!233130 (= res!314796 e!437983)))

(declare-fun c!121839 () Bool)

(declare-fun size!6213 (BalanceConc!5362) Int)

(assert (=> d!233130 (= c!121839 (> (size!6213 (_1!4474 lt!285648)) 0))))

(assert (=> d!233130 (= lt!285648 e!437984)))

(declare-fun c!121838 () Bool)

(assert (=> d!233130 (= c!121838 ((_ is Some!1715) lt!285647))))

(declare-fun maxPrefixZipperSequence!459 (LexerInterface!1331 List!7625 BalanceConc!5360) Option!1716)

(assert (=> d!233130 (= lt!285647 (maxPrefixZipperSequence!459 thiss!12529 rules!1486 treated!50))))

(assert (=> d!233130 (= (lexRec!173 thiss!12529 rules!1486 treated!50) lt!285648)))

(declare-fun b!695235 () Bool)

(assert (=> b!695235 (= e!437981 (= (list!3177 (_2!4474 lt!285648)) (_2!4482 (lexList!325 thiss!12529 rules!1486 (list!3177 treated!50)))))))

(declare-fun b!695236 () Bool)

(assert (=> b!695236 (= e!437983 (= (list!3177 (_2!4474 lt!285648)) (list!3177 treated!50)))))

(declare-fun b!695237 () Bool)

(assert (=> b!695237 (= e!437984 (tuple2!8075 (BalanceConc!5363 Empty!2675) treated!50))))

(declare-fun b!695238 () Bool)

(declare-fun isEmpty!4903 (BalanceConc!5362) Bool)

(assert (=> b!695238 (= e!437982 (not (isEmpty!4903 (_1!4474 lt!285648))))))

(assert (= (and d!233130 c!121838) b!695233))

(assert (= (and d!233130 (not c!121838)) b!695237))

(assert (= (and d!233130 c!121839) b!695234))

(assert (= (and d!233130 (not c!121839)) b!695236))

(assert (= (and b!695234 res!314795) b!695238))

(assert (= (and d!233130 res!314796) b!695232))

(assert (= (and b!695232 res!314797) b!695235))

(declare-fun m!951169 () Bool)

(assert (=> b!695235 m!951169))

(assert (=> b!695235 m!951005))

(assert (=> b!695235 m!951005))

(declare-fun m!951171 () Bool)

(assert (=> b!695235 m!951171))

(declare-fun m!951173 () Bool)

(assert (=> b!695233 m!951173))

(declare-fun m!951175 () Bool)

(assert (=> b!695233 m!951175))

(assert (=> b!695236 m!951169))

(assert (=> b!695236 m!951005))

(declare-fun m!951177 () Bool)

(assert (=> b!695234 m!951177))

(declare-fun m!951179 () Bool)

(assert (=> b!695234 m!951179))

(declare-fun m!951181 () Bool)

(assert (=> b!695238 m!951181))

(declare-fun m!951183 () Bool)

(assert (=> b!695232 m!951183))

(assert (=> b!695232 m!951005))

(assert (=> b!695232 m!951005))

(assert (=> b!695232 m!951171))

(declare-fun m!951185 () Bool)

(assert (=> d!233130 m!951185))

(declare-fun m!951187 () Bool)

(assert (=> d!233130 m!951187))

(assert (=> b!695118 d!233130))

(declare-fun d!233132 () Bool)

(assert (=> d!233132 (= (isEmpty!4902 (list!3177 (_2!4474 lt!285594))) ((_ is Nil!7609) (list!3177 (_2!4474 lt!285594))))))

(assert (=> b!695156 d!233132))

(declare-fun d!233134 () Bool)

(declare-fun list!3179 (Conc!2674) List!7623)

(assert (=> d!233134 (= (list!3177 (_2!4474 lt!285594)) (list!3179 (c!121822 (_2!4474 lt!285594))))))

(declare-fun bs!137935 () Bool)

(assert (= bs!137935 d!233134))

(declare-fun m!951189 () Bool)

(assert (=> bs!137935 m!951189))

(assert (=> b!695156 d!233134))

(declare-fun d!233136 () Bool)

(declare-fun c!121840 () Bool)

(assert (=> d!233136 (= c!121840 ((_ is Node!2674) (c!121822 treated!50)))))

(declare-fun e!437985 () Bool)

(assert (=> d!233136 (= (inv!9729 (c!121822 treated!50)) e!437985)))

(declare-fun b!695239 () Bool)

(assert (=> b!695239 (= e!437985 (inv!9733 (c!121822 treated!50)))))

(declare-fun b!695240 () Bool)

(declare-fun e!437986 () Bool)

(assert (=> b!695240 (= e!437985 e!437986)))

(declare-fun res!314798 () Bool)

(assert (=> b!695240 (= res!314798 (not ((_ is Leaf!3956) (c!121822 treated!50))))))

(assert (=> b!695240 (=> res!314798 e!437986)))

(declare-fun b!695241 () Bool)

(assert (=> b!695241 (= e!437986 (inv!9734 (c!121822 treated!50)))))

(assert (= (and d!233136 c!121840) b!695239))

(assert (= (and d!233136 (not c!121840)) b!695240))

(assert (= (and b!695240 (not res!314798)) b!695241))

(declare-fun m!951191 () Bool)

(assert (=> b!695239 m!951191))

(declare-fun m!951193 () Bool)

(assert (=> b!695241 m!951193))

(assert (=> b!695141 d!233136))

(declare-fun b!695251 () Bool)

(declare-fun e!437992 () List!7623)

(assert (=> b!695251 (= e!437992 (Cons!7609 (h!13010 lt!285601) (++!1979 (t!87446 lt!285601) lt!285600)))))

(declare-fun d!233138 () Bool)

(declare-fun e!437991 () Bool)

(assert (=> d!233138 e!437991))

(declare-fun res!314804 () Bool)

(assert (=> d!233138 (=> (not res!314804) (not e!437991))))

(declare-fun lt!285652 () List!7623)

(declare-fun content!1189 (List!7623) (InoxSet C!4316))

(assert (=> d!233138 (= res!314804 (= (content!1189 lt!285652) ((_ map or) (content!1189 lt!285601) (content!1189 lt!285600))))))

(assert (=> d!233138 (= lt!285652 e!437992)))

(declare-fun c!121843 () Bool)

(assert (=> d!233138 (= c!121843 ((_ is Nil!7609) lt!285601))))

(assert (=> d!233138 (= (++!1979 lt!285601 lt!285600) lt!285652)))

(declare-fun b!695250 () Bool)

(assert (=> b!695250 (= e!437992 lt!285600)))

(declare-fun b!695253 () Bool)

(assert (=> b!695253 (= e!437991 (or (not (= lt!285600 Nil!7609)) (= lt!285652 lt!285601)))))

(declare-fun b!695252 () Bool)

(declare-fun res!314803 () Bool)

(assert (=> b!695252 (=> (not res!314803) (not e!437991))))

(assert (=> b!695252 (= res!314803 (= (size!6211 lt!285652) (+ (size!6211 lt!285601) (size!6211 lt!285600))))))

(assert (= (and d!233138 c!121843) b!695250))

(assert (= (and d!233138 (not c!121843)) b!695251))

(assert (= (and d!233138 res!314804) b!695252))

(assert (= (and b!695252 res!314803) b!695253))

(declare-fun m!951195 () Bool)

(assert (=> b!695251 m!951195))

(declare-fun m!951197 () Bool)

(assert (=> d!233138 m!951197))

(declare-fun m!951199 () Bool)

(assert (=> d!233138 m!951199))

(declare-fun m!951201 () Bool)

(assert (=> d!233138 m!951201))

(declare-fun m!951203 () Bool)

(assert (=> b!695252 m!951203))

(declare-fun m!951205 () Bool)

(assert (=> b!695252 m!951205))

(assert (=> b!695252 m!951149))

(assert (=> b!695121 d!233138))

(declare-fun d!233140 () Bool)

(assert (=> d!233140 (= (list!3177 totalInput!378) (list!3179 (c!121822 totalInput!378)))))

(declare-fun bs!137936 () Bool)

(assert (= bs!137936 d!233140))

(declare-fun m!951207 () Bool)

(assert (=> bs!137936 m!951207))

(assert (=> b!695121 d!233140))

(declare-fun d!233142 () Bool)

(assert (=> d!233142 (= (list!3177 input!870) (list!3179 (c!121822 input!870)))))

(declare-fun bs!137937 () Bool)

(assert (= bs!137937 d!233142))

(declare-fun m!951209 () Bool)

(assert (=> bs!137937 m!951209))

(assert (=> b!695121 d!233142))

(declare-fun d!233144 () Bool)

(assert (=> d!233144 (= (list!3177 treated!50) (list!3179 (c!121822 treated!50)))))

(declare-fun bs!137938 () Bool)

(assert (= bs!137938 d!233144))

(declare-fun m!951211 () Bool)

(assert (=> bs!137938 m!951211))

(assert (=> b!695121 d!233144))

(declare-fun e!437995 () Bool)

(declare-fun lt!285655 () BalanceConc!5362)

(declare-fun b!695265 () Bool)

(declare-fun ++!1980 (List!7624 List!7624) List!7624)

(assert (=> b!695265 (= e!437995 (= (list!3176 lt!285655) (++!1980 (list!3176 acc!372) (list!3176 (_1!4474 lt!285599)))))))

(declare-fun b!695264 () Bool)

(declare-fun res!314815 () Bool)

(assert (=> b!695264 (=> (not res!314815) (not e!437995))))

(declare-fun height!321 (Conc!2675) Int)

(declare-fun ++!1981 (Conc!2675 Conc!2675) Conc!2675)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!695264 (= res!314815 (>= (height!321 (++!1981 (c!121823 acc!372) (c!121823 (_1!4474 lt!285599)))) (max!0 (height!321 (c!121823 acc!372)) (height!321 (c!121823 (_1!4474 lt!285599))))))))

(declare-fun d!233146 () Bool)

(assert (=> d!233146 e!437995))

(declare-fun res!314813 () Bool)

(assert (=> d!233146 (=> (not res!314813) (not e!437995))))

(declare-fun appendAssocInst!135 (Conc!2675 Conc!2675) Bool)

(assert (=> d!233146 (= res!314813 (appendAssocInst!135 (c!121823 acc!372) (c!121823 (_1!4474 lt!285599))))))

(assert (=> d!233146 (= lt!285655 (BalanceConc!5363 (++!1981 (c!121823 acc!372) (c!121823 (_1!4474 lt!285599)))))))

(assert (=> d!233146 (= (++!1978 acc!372 (_1!4474 lt!285599)) lt!285655)))

(declare-fun b!695262 () Bool)

(declare-fun res!314816 () Bool)

(assert (=> b!695262 (=> (not res!314816) (not e!437995))))

(assert (=> b!695262 (= res!314816 (isBalanced!700 (++!1981 (c!121823 acc!372) (c!121823 (_1!4474 lt!285599)))))))

(declare-fun b!695263 () Bool)

(declare-fun res!314814 () Bool)

(assert (=> b!695263 (=> (not res!314814) (not e!437995))))

(assert (=> b!695263 (= res!314814 (<= (height!321 (++!1981 (c!121823 acc!372) (c!121823 (_1!4474 lt!285599)))) (+ (max!0 (height!321 (c!121823 acc!372)) (height!321 (c!121823 (_1!4474 lt!285599)))) 1)))))

(assert (= (and d!233146 res!314813) b!695262))

(assert (= (and b!695262 res!314816) b!695263))

(assert (= (and b!695263 res!314814) b!695264))

(assert (= (and b!695264 res!314815) b!695265))

(declare-fun m!951213 () Bool)

(assert (=> d!233146 m!951213))

(declare-fun m!951215 () Bool)

(assert (=> d!233146 m!951215))

(declare-fun m!951217 () Bool)

(assert (=> b!695265 m!951217))

(assert (=> b!695265 m!951041))

(declare-fun m!951219 () Bool)

(assert (=> b!695265 m!951219))

(assert (=> b!695265 m!951041))

(assert (=> b!695265 m!951219))

(declare-fun m!951221 () Bool)

(assert (=> b!695265 m!951221))

(declare-fun m!951223 () Bool)

(assert (=> b!695264 m!951223))

(declare-fun m!951225 () Bool)

(assert (=> b!695264 m!951225))

(declare-fun m!951227 () Bool)

(assert (=> b!695264 m!951227))

(assert (=> b!695264 m!951215))

(assert (=> b!695264 m!951225))

(assert (=> b!695264 m!951215))

(declare-fun m!951229 () Bool)

(assert (=> b!695264 m!951229))

(assert (=> b!695264 m!951223))

(assert (=> b!695263 m!951223))

(assert (=> b!695263 m!951225))

(assert (=> b!695263 m!951227))

(assert (=> b!695263 m!951215))

(assert (=> b!695263 m!951225))

(assert (=> b!695263 m!951215))

(assert (=> b!695263 m!951229))

(assert (=> b!695263 m!951223))

(assert (=> b!695262 m!951215))

(assert (=> b!695262 m!951215))

(declare-fun m!951231 () Bool)

(assert (=> b!695262 m!951231))

(assert (=> b!695120 d!233146))

(declare-fun b!695266 () Bool)

(declare-fun res!314819 () Bool)

(declare-fun e!437996 () Bool)

(assert (=> b!695266 (=> (not res!314819) (not e!437996))))

(declare-fun lt!285657 () tuple2!8074)

(assert (=> b!695266 (= res!314819 (= (list!3176 (_1!4474 lt!285657)) (_1!4482 (lexList!325 thiss!12529 rules!1486 (list!3177 input!870)))))))

(declare-fun b!695267 () Bool)

(declare-fun e!437999 () tuple2!8074)

(declare-fun lt!285658 () tuple2!8074)

(declare-fun lt!285656 () Option!1716)

(assert (=> b!695267 (= e!437999 (tuple2!8075 (prepend!261 (_1!4474 lt!285658) (_1!4479 (v!17753 lt!285656))) (_2!4474 lt!285658)))))

(assert (=> b!695267 (= lt!285658 (lexRec!173 thiss!12529 rules!1486 (_2!4479 (v!17753 lt!285656))))))

(declare-fun b!695268 () Bool)

(declare-fun e!437998 () Bool)

(declare-fun e!437997 () Bool)

(assert (=> b!695268 (= e!437998 e!437997)))

(declare-fun res!314817 () Bool)

(assert (=> b!695268 (= res!314817 (< (size!6212 (_2!4474 lt!285657)) (size!6212 input!870)))))

(assert (=> b!695268 (=> (not res!314817) (not e!437997))))

(declare-fun d!233148 () Bool)

(assert (=> d!233148 e!437996))

(declare-fun res!314818 () Bool)

(assert (=> d!233148 (=> (not res!314818) (not e!437996))))

(assert (=> d!233148 (= res!314818 e!437998)))

(declare-fun c!121848 () Bool)

(assert (=> d!233148 (= c!121848 (> (size!6213 (_1!4474 lt!285657)) 0))))

(assert (=> d!233148 (= lt!285657 e!437999)))

(declare-fun c!121847 () Bool)

(assert (=> d!233148 (= c!121847 ((_ is Some!1715) lt!285656))))

(assert (=> d!233148 (= lt!285656 (maxPrefixZipperSequence!459 thiss!12529 rules!1486 input!870))))

(assert (=> d!233148 (= (lexRec!173 thiss!12529 rules!1486 input!870) lt!285657)))

(declare-fun b!695269 () Bool)

(assert (=> b!695269 (= e!437996 (= (list!3177 (_2!4474 lt!285657)) (_2!4482 (lexList!325 thiss!12529 rules!1486 (list!3177 input!870)))))))

(declare-fun b!695270 () Bool)

(assert (=> b!695270 (= e!437998 (= (list!3177 (_2!4474 lt!285657)) (list!3177 input!870)))))

(declare-fun b!695271 () Bool)

(assert (=> b!695271 (= e!437999 (tuple2!8075 (BalanceConc!5363 Empty!2675) input!870))))

(declare-fun b!695272 () Bool)

(assert (=> b!695272 (= e!437997 (not (isEmpty!4903 (_1!4474 lt!285657))))))

(assert (= (and d!233148 c!121847) b!695267))

(assert (= (and d!233148 (not c!121847)) b!695271))

(assert (= (and d!233148 c!121848) b!695268))

(assert (= (and d!233148 (not c!121848)) b!695270))

(assert (= (and b!695268 res!314817) b!695272))

(assert (= (and d!233148 res!314818) b!695266))

(assert (= (and b!695266 res!314819) b!695269))

(declare-fun m!951233 () Bool)

(assert (=> b!695269 m!951233))

(assert (=> b!695269 m!951003))

(assert (=> b!695269 m!951003))

(declare-fun m!951235 () Bool)

(assert (=> b!695269 m!951235))

(declare-fun m!951237 () Bool)

(assert (=> b!695267 m!951237))

(declare-fun m!951239 () Bool)

(assert (=> b!695267 m!951239))

(assert (=> b!695270 m!951233))

(assert (=> b!695270 m!951003))

(declare-fun m!951241 () Bool)

(assert (=> b!695268 m!951241))

(declare-fun m!951243 () Bool)

(assert (=> b!695268 m!951243))

(declare-fun m!951245 () Bool)

(assert (=> b!695272 m!951245))

(declare-fun m!951247 () Bool)

(assert (=> b!695266 m!951247))

(assert (=> b!695266 m!951003))

(assert (=> b!695266 m!951003))

(assert (=> b!695266 m!951235))

(declare-fun m!951249 () Bool)

(assert (=> d!233148 m!951249))

(declare-fun m!951251 () Bool)

(assert (=> d!233148 m!951251))

(assert (=> b!695120 d!233148))

(declare-fun d!233150 () Bool)

(assert (=> d!233150 (= (list!3176 (++!1978 acc!372 (_1!4474 lt!285599))) (list!3178 (c!121823 (++!1978 acc!372 (_1!4474 lt!285599)))))))

(declare-fun bs!137939 () Bool)

(assert (= bs!137939 d!233150))

(declare-fun m!951253 () Bool)

(assert (=> bs!137939 m!951253))

(assert (=> b!695120 d!233150))

(declare-fun b!695273 () Bool)

(declare-fun res!314822 () Bool)

(declare-fun e!438000 () Bool)

(assert (=> b!695273 (=> (not res!314822) (not e!438000))))

(declare-fun lt!285660 () tuple2!8074)

(assert (=> b!695273 (= res!314822 (= (list!3176 (_1!4474 lt!285660)) (_1!4482 (lexList!325 thiss!12529 rules!1486 (list!3177 totalInput!378)))))))

(declare-fun b!695274 () Bool)

(declare-fun e!438003 () tuple2!8074)

(declare-fun lt!285661 () tuple2!8074)

(declare-fun lt!285659 () Option!1716)

(assert (=> b!695274 (= e!438003 (tuple2!8075 (prepend!261 (_1!4474 lt!285661) (_1!4479 (v!17753 lt!285659))) (_2!4474 lt!285661)))))

(assert (=> b!695274 (= lt!285661 (lexRec!173 thiss!12529 rules!1486 (_2!4479 (v!17753 lt!285659))))))

(declare-fun b!695275 () Bool)

(declare-fun e!438002 () Bool)

(declare-fun e!438001 () Bool)

(assert (=> b!695275 (= e!438002 e!438001)))

(declare-fun res!314820 () Bool)

(assert (=> b!695275 (= res!314820 (< (size!6212 (_2!4474 lt!285660)) (size!6212 totalInput!378)))))

(assert (=> b!695275 (=> (not res!314820) (not e!438001))))

(declare-fun d!233152 () Bool)

(assert (=> d!233152 e!438000))

(declare-fun res!314821 () Bool)

(assert (=> d!233152 (=> (not res!314821) (not e!438000))))

(assert (=> d!233152 (= res!314821 e!438002)))

(declare-fun c!121850 () Bool)

(assert (=> d!233152 (= c!121850 (> (size!6213 (_1!4474 lt!285660)) 0))))

(assert (=> d!233152 (= lt!285660 e!438003)))

(declare-fun c!121849 () Bool)

(assert (=> d!233152 (= c!121849 ((_ is Some!1715) lt!285659))))

(assert (=> d!233152 (= lt!285659 (maxPrefixZipperSequence!459 thiss!12529 rules!1486 totalInput!378))))

(assert (=> d!233152 (= (lexRec!173 thiss!12529 rules!1486 totalInput!378) lt!285660)))

(declare-fun b!695276 () Bool)

(assert (=> b!695276 (= e!438000 (= (list!3177 (_2!4474 lt!285660)) (_2!4482 (lexList!325 thiss!12529 rules!1486 (list!3177 totalInput!378)))))))

(declare-fun b!695277 () Bool)

(assert (=> b!695277 (= e!438002 (= (list!3177 (_2!4474 lt!285660)) (list!3177 totalInput!378)))))

(declare-fun b!695278 () Bool)

(assert (=> b!695278 (= e!438003 (tuple2!8075 (BalanceConc!5363 Empty!2675) totalInput!378))))

(declare-fun b!695279 () Bool)

(assert (=> b!695279 (= e!438001 (not (isEmpty!4903 (_1!4474 lt!285660))))))

(assert (= (and d!233152 c!121849) b!695274))

(assert (= (and d!233152 (not c!121849)) b!695278))

(assert (= (and d!233152 c!121850) b!695275))

(assert (= (and d!233152 (not c!121850)) b!695277))

(assert (= (and b!695275 res!314820) b!695279))

(assert (= (and d!233152 res!314821) b!695273))

(assert (= (and b!695273 res!314822) b!695276))

(declare-fun m!951255 () Bool)

(assert (=> b!695276 m!951255))

(assert (=> b!695276 m!951001))

(assert (=> b!695276 m!951001))

(declare-fun m!951257 () Bool)

(assert (=> b!695276 m!951257))

(declare-fun m!951259 () Bool)

(assert (=> b!695274 m!951259))

(declare-fun m!951261 () Bool)

(assert (=> b!695274 m!951261))

(assert (=> b!695277 m!951255))

(assert (=> b!695277 m!951001))

(declare-fun m!951263 () Bool)

(assert (=> b!695275 m!951263))

(declare-fun m!951265 () Bool)

(assert (=> b!695275 m!951265))

(declare-fun m!951267 () Bool)

(assert (=> b!695279 m!951267))

(declare-fun m!951269 () Bool)

(assert (=> b!695273 m!951269))

(assert (=> b!695273 m!951001))

(assert (=> b!695273 m!951001))

(assert (=> b!695273 m!951257))

(declare-fun m!951271 () Bool)

(assert (=> d!233152 m!951271))

(declare-fun m!951273 () Bool)

(assert (=> d!233152 m!951273))

(assert (=> b!695120 d!233152))

(declare-fun d!233154 () Bool)

(assert (=> d!233154 (= (list!3176 (_1!4474 lt!285605)) (list!3178 (c!121823 (_1!4474 lt!285605))))))

(declare-fun bs!137940 () Bool)

(assert (= bs!137940 d!233154))

(declare-fun m!951275 () Bool)

(assert (=> bs!137940 m!951275))

(assert (=> b!695120 d!233154))

(declare-fun d!233156 () Bool)

(declare-fun c!121851 () Bool)

(assert (=> d!233156 (= c!121851 ((_ is Node!2674) (c!121822 (totalInput!1818 cacheFindLongestMatch!74))))))

(declare-fun e!438004 () Bool)

(assert (=> d!233156 (= (inv!9729 (c!121822 (totalInput!1818 cacheFindLongestMatch!74))) e!438004)))

(declare-fun b!695280 () Bool)

(assert (=> b!695280 (= e!438004 (inv!9733 (c!121822 (totalInput!1818 cacheFindLongestMatch!74))))))

(declare-fun b!695281 () Bool)

(declare-fun e!438005 () Bool)

(assert (=> b!695281 (= e!438004 e!438005)))

(declare-fun res!314823 () Bool)

(assert (=> b!695281 (= res!314823 (not ((_ is Leaf!3956) (c!121822 (totalInput!1818 cacheFindLongestMatch!74)))))))

(assert (=> b!695281 (=> res!314823 e!438005)))

(declare-fun b!695282 () Bool)

(assert (=> b!695282 (= e!438005 (inv!9734 (c!121822 (totalInput!1818 cacheFindLongestMatch!74))))))

(assert (= (and d!233156 c!121851) b!695280))

(assert (= (and d!233156 (not c!121851)) b!695281))

(assert (= (and b!695281 (not res!314823)) b!695282))

(declare-fun m!951277 () Bool)

(assert (=> b!695280 m!951277))

(declare-fun m!951279 () Bool)

(assert (=> b!695282 m!951279))

(assert (=> b!695158 d!233156))

(declare-fun d!233158 () Bool)

(assert (=> d!233158 (= (list!3177 (_2!4474 lt!285605)) (list!3179 (c!121822 (_2!4474 lt!285605))))))

(declare-fun bs!137941 () Bool)

(assert (= bs!137941 d!233158))

(declare-fun m!951281 () Bool)

(assert (=> bs!137941 m!951281))

(assert (=> b!695140 d!233158))

(declare-fun d!233160 () Bool)

(assert (=> d!233160 (= (list!3177 (_2!4474 lt!285599)) (list!3179 (c!121822 (_2!4474 lt!285599))))))

(declare-fun bs!137942 () Bool)

(assert (= bs!137942 d!233160))

(declare-fun m!951283 () Bool)

(assert (=> bs!137942 m!951283))

(assert (=> b!695140 d!233160))

(declare-fun d!233162 () Bool)

(assert (=> d!233162 true))

(declare-fun lt!285664 () Bool)

(declare-fun lambda!21595 () Int)

(declare-fun forall!1962 (List!7625 Int) Bool)

(assert (=> d!233162 (= lt!285664 (forall!1962 rules!1486 lambda!21595))))

(declare-fun e!438011 () Bool)

(assert (=> d!233162 (= lt!285664 e!438011)))

(declare-fun res!314828 () Bool)

(assert (=> d!233162 (=> res!314828 e!438011)))

(assert (=> d!233162 (= res!314828 (not ((_ is Cons!7611) rules!1486)))))

(assert (=> d!233162 (= (rulesValidInductive!526 thiss!12529 rules!1486) lt!285664)))

(declare-fun b!695287 () Bool)

(declare-fun e!438010 () Bool)

(assert (=> b!695287 (= e!438011 e!438010)))

(declare-fun res!314829 () Bool)

(assert (=> b!695287 (=> (not res!314829) (not e!438010))))

(declare-fun ruleValid!464 (LexerInterface!1331 Rule!2836) Bool)

(assert (=> b!695287 (= res!314829 (ruleValid!464 thiss!12529 (h!13012 rules!1486)))))

(declare-fun b!695288 () Bool)

(assert (=> b!695288 (= e!438010 (rulesValidInductive!526 thiss!12529 (t!87448 rules!1486)))))

(assert (= (and d!233162 (not res!314828)) b!695287))

(assert (= (and b!695287 res!314829) b!695288))

(declare-fun m!951285 () Bool)

(assert (=> d!233162 m!951285))

(declare-fun m!951287 () Bool)

(assert (=> b!695287 m!951287))

(declare-fun m!951289 () Bool)

(assert (=> b!695288 m!951289))

(assert (=> b!695139 d!233162))

(declare-fun b!695291 () Bool)

(declare-fun res!314832 () Bool)

(declare-fun e!438012 () Bool)

(assert (=> b!695291 (=> (not res!314832) (not e!438012))))

(declare-fun lt!285666 () tuple2!8074)

(assert (=> b!695291 (= res!314832 (= (list!3176 (_1!4474 lt!285666)) (_1!4482 (lexList!325 thiss!12529 rules!1486 (list!3177 (_2!4479 (v!17753 (_1!4480 lt!285596))))))))))

(declare-fun b!695292 () Bool)

(declare-fun e!438015 () tuple2!8074)

(declare-fun lt!285667 () tuple2!8074)

(declare-fun lt!285665 () Option!1716)

(assert (=> b!695292 (= e!438015 (tuple2!8075 (prepend!261 (_1!4474 lt!285667) (_1!4479 (v!17753 lt!285665))) (_2!4474 lt!285667)))))

(assert (=> b!695292 (= lt!285667 (lexRec!173 thiss!12529 rules!1486 (_2!4479 (v!17753 lt!285665))))))

(declare-fun b!695293 () Bool)

(declare-fun e!438014 () Bool)

(declare-fun e!438013 () Bool)

(assert (=> b!695293 (= e!438014 e!438013)))

(declare-fun res!314830 () Bool)

(assert (=> b!695293 (= res!314830 (< (size!6212 (_2!4474 lt!285666)) (size!6212 (_2!4479 (v!17753 (_1!4480 lt!285596))))))))

(assert (=> b!695293 (=> (not res!314830) (not e!438013))))

(declare-fun d!233164 () Bool)

(assert (=> d!233164 e!438012))

(declare-fun res!314831 () Bool)

(assert (=> d!233164 (=> (not res!314831) (not e!438012))))

(assert (=> d!233164 (= res!314831 e!438014)))

(declare-fun c!121853 () Bool)

(assert (=> d!233164 (= c!121853 (> (size!6213 (_1!4474 lt!285666)) 0))))

(assert (=> d!233164 (= lt!285666 e!438015)))

(declare-fun c!121852 () Bool)

(assert (=> d!233164 (= c!121852 ((_ is Some!1715) lt!285665))))

(assert (=> d!233164 (= lt!285665 (maxPrefixZipperSequence!459 thiss!12529 rules!1486 (_2!4479 (v!17753 (_1!4480 lt!285596)))))))

(assert (=> d!233164 (= (lexRec!173 thiss!12529 rules!1486 (_2!4479 (v!17753 (_1!4480 lt!285596)))) lt!285666)))

(declare-fun b!695294 () Bool)

(assert (=> b!695294 (= e!438012 (= (list!3177 (_2!4474 lt!285666)) (_2!4482 (lexList!325 thiss!12529 rules!1486 (list!3177 (_2!4479 (v!17753 (_1!4480 lt!285596))))))))))

(declare-fun b!695295 () Bool)

(assert (=> b!695295 (= e!438014 (= (list!3177 (_2!4474 lt!285666)) (list!3177 (_2!4479 (v!17753 (_1!4480 lt!285596))))))))

(declare-fun b!695296 () Bool)

(assert (=> b!695296 (= e!438015 (tuple2!8075 (BalanceConc!5363 Empty!2675) (_2!4479 (v!17753 (_1!4480 lt!285596)))))))

(declare-fun b!695297 () Bool)

(assert (=> b!695297 (= e!438013 (not (isEmpty!4903 (_1!4474 lt!285666))))))

(assert (= (and d!233164 c!121852) b!695292))

(assert (= (and d!233164 (not c!121852)) b!695296))

(assert (= (and d!233164 c!121853) b!695293))

(assert (= (and d!233164 (not c!121853)) b!695295))

(assert (= (and b!695293 res!314830) b!695297))

(assert (= (and d!233164 res!314831) b!695291))

(assert (= (and b!695291 res!314832) b!695294))

(declare-fun m!951291 () Bool)

(assert (=> b!695294 m!951291))

(declare-fun m!951293 () Bool)

(assert (=> b!695294 m!951293))

(assert (=> b!695294 m!951293))

(declare-fun m!951295 () Bool)

(assert (=> b!695294 m!951295))

(declare-fun m!951297 () Bool)

(assert (=> b!695292 m!951297))

(declare-fun m!951299 () Bool)

(assert (=> b!695292 m!951299))

(assert (=> b!695295 m!951291))

(assert (=> b!695295 m!951293))

(declare-fun m!951301 () Bool)

(assert (=> b!695293 m!951301))

(declare-fun m!951303 () Bool)

(assert (=> b!695293 m!951303))

(declare-fun m!951305 () Bool)

(assert (=> b!695297 m!951305))

(declare-fun m!951307 () Bool)

(assert (=> b!695291 m!951307))

(assert (=> b!695291 m!951293))

(assert (=> b!695291 m!951293))

(assert (=> b!695291 m!951295))

(declare-fun m!951309 () Bool)

(assert (=> d!233164 m!951309))

(declare-fun m!951311 () Bool)

(assert (=> d!233164 m!951311))

(assert (=> b!695139 d!233164))

(declare-fun d!233166 () Bool)

(assert (=> d!233166 (= (valid!691 (_4!66 lt!285596)) (validCacheMapFindLongestMatch!9 (cache!1172 (_4!66 lt!285596)) (totalInput!1818 (_4!66 lt!285596))))))

(declare-fun bs!137943 () Bool)

(assert (= bs!137943 d!233166))

(declare-fun m!951313 () Bool)

(assert (=> bs!137943 m!951313))

(assert (=> b!695119 d!233166))

(declare-fun d!233168 () Bool)

(assert (=> d!233168 (= (array_inv!998 (_keys!1107 (v!17756 (underlying!1809 (v!17757 (underlying!1810 (cache!1172 cacheFindLongestMatch!74))))))) (bvsge (size!6206 (_keys!1107 (v!17756 (underlying!1809 (v!17757 (underlying!1810 (cache!1172 cacheFindLongestMatch!74))))))) #b00000000000000000000000000000000))))

(assert (=> b!695153 d!233168))

(declare-fun d!233170 () Bool)

(assert (=> d!233170 (= (array_inv!1000 (_values!1092 (v!17756 (underlying!1809 (v!17757 (underlying!1810 (cache!1172 cacheFindLongestMatch!74))))))) (bvsge (size!6210 (_values!1092 (v!17756 (underlying!1809 (v!17757 (underlying!1810 (cache!1172 cacheFindLongestMatch!74))))))) #b00000000000000000000000000000000))))

(assert (=> b!695153 d!233170))

(declare-fun d!233172 () Bool)

(assert (=> d!233172 (= (valid!691 cacheFindLongestMatch!74) (validCacheMapFindLongestMatch!9 (cache!1172 cacheFindLongestMatch!74) (totalInput!1818 cacheFindLongestMatch!74)))))

(declare-fun bs!137944 () Bool)

(assert (= bs!137944 d!233172))

(assert (=> bs!137944 m!951133))

(assert (=> b!695136 d!233172))

(declare-fun d!233174 () Bool)

(assert (=> d!233174 (= (inv!9725 (totalInput!1818 cacheFindLongestMatch!74)) (isBalanced!701 (c!121822 (totalInput!1818 cacheFindLongestMatch!74))))))

(declare-fun bs!137945 () Bool)

(assert (= bs!137945 d!233174))

(declare-fun m!951315 () Bool)

(assert (=> bs!137945 m!951315))

(assert (=> b!695135 d!233174))

(declare-fun d!233176 () Bool)

(assert (=> d!233176 (= (array_inv!998 (_keys!1106 (v!17754 (underlying!1807 (v!17755 (underlying!1808 (cache!1171 cacheDown!515))))))) (bvsge (size!6206 (_keys!1106 (v!17754 (underlying!1807 (v!17755 (underlying!1808 (cache!1171 cacheDown!515))))))) #b00000000000000000000000000000000))))

(assert (=> b!695155 d!233176))

(declare-fun d!233178 () Bool)

(assert (=> d!233178 (= (array_inv!1001 (_values!1091 (v!17754 (underlying!1807 (v!17755 (underlying!1808 (cache!1171 cacheDown!515))))))) (bvsge (size!6209 (_values!1091 (v!17754 (underlying!1807 (v!17755 (underlying!1808 (cache!1171 cacheDown!515))))))) #b00000000000000000000000000000000))))

(assert (=> b!695155 d!233178))

(declare-fun d!233180 () Bool)

(declare-fun c!121854 () Bool)

(assert (=> d!233180 (= c!121854 ((_ is Node!2674) (c!121822 input!870)))))

(declare-fun e!438016 () Bool)

(assert (=> d!233180 (= (inv!9729 (c!121822 input!870)) e!438016)))

(declare-fun b!695298 () Bool)

(assert (=> b!695298 (= e!438016 (inv!9733 (c!121822 input!870)))))

(declare-fun b!695299 () Bool)

(declare-fun e!438017 () Bool)

(assert (=> b!695299 (= e!438016 e!438017)))

(declare-fun res!314833 () Bool)

(assert (=> b!695299 (= res!314833 (not ((_ is Leaf!3956) (c!121822 input!870))))))

(assert (=> b!695299 (=> res!314833 e!438017)))

(declare-fun b!695300 () Bool)

(assert (=> b!695300 (= e!438017 (inv!9734 (c!121822 input!870)))))

(assert (= (and d!233180 c!121854) b!695298))

(assert (= (and d!233180 (not c!121854)) b!695299))

(assert (= (and b!695299 (not res!314833)) b!695300))

(declare-fun m!951317 () Bool)

(assert (=> b!695298 m!951317))

(declare-fun m!951319 () Bool)

(assert (=> b!695300 m!951319))

(assert (=> b!695154 d!233180))

(declare-fun b!695315 () Bool)

(declare-fun e!438033 () Bool)

(declare-fun tp!210671 () Bool)

(assert (=> b!695315 (= e!438033 tp!210671)))

(declare-fun b!695316 () Bool)

(declare-fun e!438035 () Bool)

(declare-fun tp!210667 () Bool)

(assert (=> b!695316 (= e!438035 tp!210667)))

(declare-fun b!695317 () Bool)

(declare-fun e!438032 () Bool)

(declare-fun tp!210674 () Bool)

(assert (=> b!695317 (= e!438032 tp!210674)))

(declare-fun setIsEmpty!3925 () Bool)

(declare-fun setRes!3926 () Bool)

(assert (=> setIsEmpty!3925 setRes!3926))

(declare-fun mapIsEmpty!3259 () Bool)

(declare-fun mapRes!3259 () Bool)

(assert (=> mapIsEmpty!3259 mapRes!3259))

(declare-fun tp!210675 () Bool)

(declare-fun tp!210670 () Bool)

(declare-fun mapValue!3259 () List!7626)

(declare-fun b!695318 () Bool)

(declare-fun e!438030 () Bool)

(declare-fun tp_is_empty!3651 () Bool)

(declare-fun inv!9735 (Context!518) Bool)

(assert (=> b!695318 (= e!438030 (and tp!210675 (inv!9735 (_2!4475 (_1!4476 (h!13013 mapValue!3259)))) e!438033 tp_is_empty!3651 setRes!3926 tp!210670))))

(declare-fun condSetEmpty!3925 () Bool)

(assert (=> b!695318 (= condSetEmpty!3925 (= (_2!4476 (h!13013 mapValue!3259)) ((as const (Array Context!518 Bool)) false)))))

(declare-fun condMapEmpty!3259 () Bool)

(declare-fun mapDefault!3259 () List!7626)

(assert (=> mapNonEmpty!3255 (= condMapEmpty!3259 (= mapRest!3254 ((as const (Array (_ BitVec 32) List!7626)) mapDefault!3259)))))

(declare-fun e!438034 () Bool)

(assert (=> mapNonEmpty!3255 (= tp!210616 (and e!438034 mapRes!3259))))

(declare-fun tp!210668 () Bool)

(declare-fun setNonEmpty!3925 () Bool)

(declare-fun setRes!3925 () Bool)

(declare-fun setElem!3925 () Context!518)

(assert (=> setNonEmpty!3925 (= setRes!3925 (and tp!210668 (inv!9735 setElem!3925) e!438032))))

(declare-fun setRest!3925 () (InoxSet Context!518))

(assert (=> setNonEmpty!3925 (= (_2!4476 (h!13013 mapDefault!3259)) ((_ map or) (store ((as const (Array Context!518 Bool)) false) setElem!3925 true) setRest!3925))))

(declare-fun mapNonEmpty!3259 () Bool)

(declare-fun tp!210669 () Bool)

(assert (=> mapNonEmpty!3259 (= mapRes!3259 (and tp!210669 e!438030))))

(declare-fun mapRest!3259 () (Array (_ BitVec 32) List!7626))

(declare-fun mapKey!3259 () (_ BitVec 32))

(assert (=> mapNonEmpty!3259 (= mapRest!3254 (store mapRest!3259 mapKey!3259 mapValue!3259))))

(declare-fun tp!210676 () Bool)

(declare-fun tp!210672 () Bool)

(declare-fun b!695319 () Bool)

(assert (=> b!695319 (= e!438034 (and tp!210676 (inv!9735 (_2!4475 (_1!4476 (h!13013 mapDefault!3259)))) e!438035 tp_is_empty!3651 setRes!3925 tp!210672))))

(declare-fun condSetEmpty!3926 () Bool)

(assert (=> b!695319 (= condSetEmpty!3926 (= (_2!4476 (h!13013 mapDefault!3259)) ((as const (Array Context!518 Bool)) false)))))

(declare-fun setIsEmpty!3926 () Bool)

(assert (=> setIsEmpty!3926 setRes!3925))

(declare-fun b!695320 () Bool)

(declare-fun e!438031 () Bool)

(declare-fun tp!210666 () Bool)

(assert (=> b!695320 (= e!438031 tp!210666)))

(declare-fun setElem!3926 () Context!518)

(declare-fun tp!210673 () Bool)

(declare-fun setNonEmpty!3926 () Bool)

(assert (=> setNonEmpty!3926 (= setRes!3926 (and tp!210673 (inv!9735 setElem!3926) e!438031))))

(declare-fun setRest!3926 () (InoxSet Context!518))

(assert (=> setNonEmpty!3926 (= (_2!4476 (h!13013 mapValue!3259)) ((_ map or) (store ((as const (Array Context!518 Bool)) false) setElem!3926 true) setRest!3926))))

(assert (= (and mapNonEmpty!3255 condMapEmpty!3259) mapIsEmpty!3259))

(assert (= (and mapNonEmpty!3255 (not condMapEmpty!3259)) mapNonEmpty!3259))

(assert (= b!695318 b!695315))

(assert (= (and b!695318 condSetEmpty!3925) setIsEmpty!3925))

(assert (= (and b!695318 (not condSetEmpty!3925)) setNonEmpty!3926))

(assert (= setNonEmpty!3926 b!695320))

(assert (= (and mapNonEmpty!3259 ((_ is Cons!7612) mapValue!3259)) b!695318))

(assert (= b!695319 b!695316))

(assert (= (and b!695319 condSetEmpty!3926) setIsEmpty!3926))

(assert (= (and b!695319 (not condSetEmpty!3926)) setNonEmpty!3925))

(assert (= setNonEmpty!3925 b!695317))

(assert (= (and mapNonEmpty!3255 ((_ is Cons!7612) mapDefault!3259)) b!695319))

(declare-fun m!951321 () Bool)

(assert (=> setNonEmpty!3925 m!951321))

(declare-fun m!951323 () Bool)

(assert (=> mapNonEmpty!3259 m!951323))

(declare-fun m!951325 () Bool)

(assert (=> setNonEmpty!3926 m!951325))

(declare-fun m!951327 () Bool)

(assert (=> b!695318 m!951327))

(declare-fun m!951329 () Bool)

(assert (=> b!695319 m!951329))

(declare-fun b!695329 () Bool)

(declare-fun e!438044 () Bool)

(declare-fun tp!210687 () Bool)

(assert (=> b!695329 (= e!438044 tp!210687)))

(declare-fun tp!210691 () Bool)

(declare-fun setNonEmpty!3929 () Bool)

(declare-fun setRes!3929 () Bool)

(declare-fun setElem!3929 () Context!518)

(assert (=> setNonEmpty!3929 (= setRes!3929 (and tp!210691 (inv!9735 setElem!3929) e!438044))))

(declare-fun setRest!3929 () (InoxSet Context!518))

(assert (=> setNonEmpty!3929 (= (_2!4476 (h!13013 mapValue!3255)) ((_ map or) (store ((as const (Array Context!518 Bool)) false) setElem!3929 true) setRest!3929))))

(declare-fun b!695330 () Bool)

(declare-fun e!438043 () Bool)

(declare-fun tp!210689 () Bool)

(assert (=> b!695330 (= e!438043 tp!210689)))

(declare-fun setIsEmpty!3929 () Bool)

(assert (=> setIsEmpty!3929 setRes!3929))

(declare-fun e!438042 () Bool)

(assert (=> mapNonEmpty!3255 (= tp!210632 e!438042)))

(declare-fun tp!210690 () Bool)

(declare-fun b!695331 () Bool)

(declare-fun tp!210688 () Bool)

(assert (=> b!695331 (= e!438042 (and tp!210690 (inv!9735 (_2!4475 (_1!4476 (h!13013 mapValue!3255)))) e!438043 tp_is_empty!3651 setRes!3929 tp!210688))))

(declare-fun condSetEmpty!3929 () Bool)

(assert (=> b!695331 (= condSetEmpty!3929 (= (_2!4476 (h!13013 mapValue!3255)) ((as const (Array Context!518 Bool)) false)))))

(assert (= b!695331 b!695330))

(assert (= (and b!695331 condSetEmpty!3929) setIsEmpty!3929))

(assert (= (and b!695331 (not condSetEmpty!3929)) setNonEmpty!3929))

(assert (= setNonEmpty!3929 b!695329))

(assert (= (and mapNonEmpty!3255 ((_ is Cons!7612) mapValue!3255)) b!695331))

(declare-fun m!951331 () Bool)

(assert (=> setNonEmpty!3929 m!951331))

(declare-fun m!951333 () Bool)

(assert (=> b!695331 m!951333))

(declare-fun setIsEmpty!3934 () Bool)

(declare-fun setRes!3934 () Bool)

(assert (=> setIsEmpty!3934 setRes!3934))

(declare-fun b!695343 () Bool)

(declare-fun e!438056 () Bool)

(declare-fun tp!210706 () Bool)

(assert (=> b!695343 (= e!438056 tp!210706)))

(declare-fun mapNonEmpty!3262 () Bool)

(declare-fun mapRes!3262 () Bool)

(declare-fun tp!210707 () Bool)

(declare-fun e!438054 () Bool)

(assert (=> mapNonEmpty!3262 (= mapRes!3262 (and tp!210707 e!438054))))

(declare-fun mapValue!3262 () List!7627)

(declare-fun mapKey!3262 () (_ BitVec 32))

(declare-fun mapRest!3262 () (Array (_ BitVec 32) List!7627))

(assert (=> mapNonEmpty!3262 (= mapRest!3255 (store mapRest!3262 mapKey!3262 mapValue!3262))))

(declare-fun setNonEmpty!3934 () Bool)

(declare-fun setElem!3935 () Context!518)

(declare-fun tp!210709 () Bool)

(declare-fun setRes!3935 () Bool)

(assert (=> setNonEmpty!3934 (= setRes!3935 (and tp!210709 (inv!9735 setElem!3935) e!438056))))

(declare-fun setRest!3934 () (InoxSet Context!518))

(assert (=> setNonEmpty!3934 (= (_1!4477 (_1!4478 (h!13014 mapValue!3262))) ((_ map or) (store ((as const (Array Context!518 Bool)) false) setElem!3935 true) setRest!3934))))

(declare-fun e!438053 () Bool)

(declare-fun tp!210711 () Bool)

(declare-fun setElem!3934 () Context!518)

(declare-fun setNonEmpty!3935 () Bool)

(assert (=> setNonEmpty!3935 (= setRes!3934 (and tp!210711 (inv!9735 setElem!3934) e!438053))))

(declare-fun mapDefault!3262 () List!7627)

(declare-fun setRest!3935 () (InoxSet Context!518))

(assert (=> setNonEmpty!3935 (= (_1!4477 (_1!4478 (h!13014 mapDefault!3262))) ((_ map or) (store ((as const (Array Context!518 Bool)) false) setElem!3934 true) setRest!3935))))

(declare-fun b!695344 () Bool)

(declare-fun tp!210708 () Bool)

(assert (=> b!695344 (= e!438053 tp!210708)))

(declare-fun setIsEmpty!3935 () Bool)

(assert (=> setIsEmpty!3935 setRes!3935))

(declare-fun condMapEmpty!3262 () Bool)

(assert (=> mapNonEmpty!3256 (= condMapEmpty!3262 (= mapRest!3255 ((as const (Array (_ BitVec 32) List!7627)) mapDefault!3262)))))

(declare-fun e!438055 () Bool)

(assert (=> mapNonEmpty!3256 (= tp!210635 (and e!438055 mapRes!3262))))

(declare-fun b!695342 () Bool)

(declare-fun tp!210712 () Bool)

(assert (=> b!695342 (= e!438054 (and setRes!3935 tp!210712))))

(declare-fun condSetEmpty!3934 () Bool)

(assert (=> b!695342 (= condSetEmpty!3934 (= (_1!4477 (_1!4478 (h!13014 mapValue!3262))) ((as const (Array Context!518 Bool)) false)))))

(declare-fun mapIsEmpty!3262 () Bool)

(assert (=> mapIsEmpty!3262 mapRes!3262))

(declare-fun b!695345 () Bool)

(declare-fun tp!210710 () Bool)

(assert (=> b!695345 (= e!438055 (and setRes!3934 tp!210710))))

(declare-fun condSetEmpty!3935 () Bool)

(assert (=> b!695345 (= condSetEmpty!3935 (= (_1!4477 (_1!4478 (h!13014 mapDefault!3262))) ((as const (Array Context!518 Bool)) false)))))

(assert (= (and mapNonEmpty!3256 condMapEmpty!3262) mapIsEmpty!3262))

(assert (= (and mapNonEmpty!3256 (not condMapEmpty!3262)) mapNonEmpty!3262))

(assert (= (and b!695342 condSetEmpty!3934) setIsEmpty!3935))

(assert (= (and b!695342 (not condSetEmpty!3934)) setNonEmpty!3934))

(assert (= setNonEmpty!3934 b!695343))

(assert (= (and mapNonEmpty!3262 ((_ is Cons!7613) mapValue!3262)) b!695342))

(assert (= (and b!695345 condSetEmpty!3935) setIsEmpty!3934))

(assert (= (and b!695345 (not condSetEmpty!3935)) setNonEmpty!3935))

(assert (= setNonEmpty!3935 b!695344))

(assert (= (and mapNonEmpty!3256 ((_ is Cons!7613) mapDefault!3262)) b!695345))

(declare-fun m!951335 () Bool)

(assert (=> mapNonEmpty!3262 m!951335))

(declare-fun m!951337 () Bool)

(assert (=> setNonEmpty!3934 m!951337))

(declare-fun m!951339 () Bool)

(assert (=> setNonEmpty!3935 m!951339))

(declare-fun b!695353 () Bool)

(declare-fun e!438062 () Bool)

(declare-fun tp!210720 () Bool)

(assert (=> b!695353 (= e!438062 tp!210720)))

(declare-fun setElem!3938 () Context!518)

(declare-fun setRes!3938 () Bool)

(declare-fun tp!210719 () Bool)

(declare-fun setNonEmpty!3938 () Bool)

(assert (=> setNonEmpty!3938 (= setRes!3938 (and tp!210719 (inv!9735 setElem!3938) e!438062))))

(declare-fun setRest!3938 () (InoxSet Context!518))

(assert (=> setNonEmpty!3938 (= (_1!4477 (_1!4478 (h!13014 mapValue!3254))) ((_ map or) (store ((as const (Array Context!518 Bool)) false) setElem!3938 true) setRest!3938))))

(declare-fun setIsEmpty!3938 () Bool)

(assert (=> setIsEmpty!3938 setRes!3938))

(declare-fun b!695352 () Bool)

(declare-fun e!438061 () Bool)

(declare-fun tp!210721 () Bool)

(assert (=> b!695352 (= e!438061 (and setRes!3938 tp!210721))))

(declare-fun condSetEmpty!3938 () Bool)

(assert (=> b!695352 (= condSetEmpty!3938 (= (_1!4477 (_1!4478 (h!13014 mapValue!3254))) ((as const (Array Context!518 Bool)) false)))))

(assert (=> mapNonEmpty!3256 (= tp!210638 e!438061)))

(assert (= (and b!695352 condSetEmpty!3938) setIsEmpty!3938))

(assert (= (and b!695352 (not condSetEmpty!3938)) setNonEmpty!3938))

(assert (= setNonEmpty!3938 b!695353))

(assert (= (and mapNonEmpty!3256 ((_ is Cons!7613) mapValue!3254)) b!695352))

(declare-fun m!951341 () Bool)

(assert (=> setNonEmpty!3938 m!951341))

(declare-fun b!695355 () Bool)

(declare-fun e!438064 () Bool)

(declare-fun tp!210723 () Bool)

(assert (=> b!695355 (= e!438064 tp!210723)))

(declare-fun setElem!3939 () Context!518)

(declare-fun tp!210722 () Bool)

(declare-fun setNonEmpty!3939 () Bool)

(declare-fun setRes!3939 () Bool)

(assert (=> setNonEmpty!3939 (= setRes!3939 (and tp!210722 (inv!9735 setElem!3939) e!438064))))

(declare-fun setRest!3939 () (InoxSet Context!518))

(assert (=> setNonEmpty!3939 (= (_1!4477 (_1!4478 (h!13014 mapDefault!3255))) ((_ map or) (store ((as const (Array Context!518 Bool)) false) setElem!3939 true) setRest!3939))))

(declare-fun setIsEmpty!3939 () Bool)

(assert (=> setIsEmpty!3939 setRes!3939))

(declare-fun b!695354 () Bool)

(declare-fun e!438063 () Bool)

(declare-fun tp!210724 () Bool)

(assert (=> b!695354 (= e!438063 (and setRes!3939 tp!210724))))

(declare-fun condSetEmpty!3939 () Bool)

(assert (=> b!695354 (= condSetEmpty!3939 (= (_1!4477 (_1!4478 (h!13014 mapDefault!3255))) ((as const (Array Context!518 Bool)) false)))))

(assert (=> b!695138 (= tp!210624 e!438063)))

(assert (= (and b!695354 condSetEmpty!3939) setIsEmpty!3939))

(assert (= (and b!695354 (not condSetEmpty!3939)) setNonEmpty!3939))

(assert (= setNonEmpty!3939 b!695355))

(assert (= (and b!695138 ((_ is Cons!7613) mapDefault!3255)) b!695354))

(declare-fun m!951343 () Bool)

(assert (=> setNonEmpty!3939 m!951343))

(declare-fun b!695369 () Bool)

(declare-fun e!438067 () Bool)

(declare-fun tp!210738 () Bool)

(declare-fun tp!210735 () Bool)

(assert (=> b!695369 (= e!438067 (and tp!210738 tp!210735))))

(declare-fun b!695366 () Bool)

(assert (=> b!695366 (= e!438067 tp_is_empty!3651)))

(assert (=> b!695148 (= tp!210623 e!438067)))

(declare-fun b!695368 () Bool)

(declare-fun tp!210739 () Bool)

(assert (=> b!695368 (= e!438067 tp!210739)))

(declare-fun b!695367 () Bool)

(declare-fun tp!210737 () Bool)

(declare-fun tp!210736 () Bool)

(assert (=> b!695367 (= e!438067 (and tp!210737 tp!210736))))

(assert (= (and b!695148 ((_ is ElementMatch!1857) (regex!1518 (h!13012 rules!1486)))) b!695366))

(assert (= (and b!695148 ((_ is Concat!3419) (regex!1518 (h!13012 rules!1486)))) b!695367))

(assert (= (and b!695148 ((_ is Star!1857) (regex!1518 (h!13012 rules!1486)))) b!695368))

(assert (= (and b!695148 ((_ is Union!1857) (regex!1518 (h!13012 rules!1486)))) b!695369))

(declare-fun mapNonEmpty!3265 () Bool)

(declare-fun mapRes!3265 () Bool)

(declare-fun tp!210759 () Bool)

(declare-fun e!438083 () Bool)

(assert (=> mapNonEmpty!3265 (= mapRes!3265 (and tp!210759 e!438083))))

(declare-fun mapRest!3265 () (Array (_ BitVec 32) List!7621))

(declare-fun mapKey!3265 () (_ BitVec 32))

(declare-fun mapValue!3265 () List!7621)

(assert (=> mapNonEmpty!3265 (= mapRest!3256 (store mapRest!3265 mapKey!3265 mapValue!3265))))

(declare-fun b!695384 () Bool)

(declare-fun e!438085 () Bool)

(declare-fun tp!210760 () Bool)

(assert (=> b!695384 (= e!438085 tp!210760)))

(declare-fun b!695385 () Bool)

(declare-fun e!438080 () Bool)

(declare-fun tp!210761 () Bool)

(assert (=> b!695385 (= e!438080 tp!210761)))

(declare-fun tp!210764 () Bool)

(declare-fun b!695386 () Bool)

(declare-fun setRes!3944 () Bool)

(assert (=> b!695386 (= e!438083 (and (inv!9735 (_1!4472 (_1!4473 (h!13008 mapValue!3265)))) e!438085 tp_is_empty!3651 setRes!3944 tp!210764))))

(declare-fun condSetEmpty!3944 () Bool)

(assert (=> b!695386 (= condSetEmpty!3944 (= (_2!4473 (h!13008 mapValue!3265)) ((as const (Array Context!518 Bool)) false)))))

(declare-fun setIsEmpty!3944 () Bool)

(declare-fun setRes!3945 () Bool)

(assert (=> setIsEmpty!3944 setRes!3945))

(declare-fun condMapEmpty!3265 () Bool)

(declare-fun mapDefault!3265 () List!7621)

(assert (=> mapNonEmpty!3254 (= condMapEmpty!3265 (= mapRest!3256 ((as const (Array (_ BitVec 32) List!7621)) mapDefault!3265)))))

(declare-fun e!438081 () Bool)

(assert (=> mapNonEmpty!3254 (= tp!210636 (and e!438081 mapRes!3265))))

(declare-fun setIsEmpty!3945 () Bool)

(assert (=> setIsEmpty!3945 setRes!3944))

(declare-fun b!695387 () Bool)

(declare-fun e!438084 () Bool)

(declare-fun tp!210766 () Bool)

(assert (=> b!695387 (= e!438084 tp!210766)))

(declare-fun setNonEmpty!3944 () Bool)

(declare-fun tp!210765 () Bool)

(declare-fun setElem!3944 () Context!518)

(assert (=> setNonEmpty!3944 (= setRes!3944 (and tp!210765 (inv!9735 setElem!3944) e!438080))))

(declare-fun setRest!3945 () (InoxSet Context!518))

(assert (=> setNonEmpty!3944 (= (_2!4473 (h!13008 mapValue!3265)) ((_ map or) (store ((as const (Array Context!518 Bool)) false) setElem!3944 true) setRest!3945))))

(declare-fun b!695388 () Bool)

(declare-fun e!438082 () Bool)

(declare-fun tp!210758 () Bool)

(assert (=> b!695388 (= e!438082 tp!210758)))

(declare-fun mapIsEmpty!3265 () Bool)

(assert (=> mapIsEmpty!3265 mapRes!3265))

(declare-fun tp!210762 () Bool)

(declare-fun setElem!3945 () Context!518)

(declare-fun setNonEmpty!3945 () Bool)

(assert (=> setNonEmpty!3945 (= setRes!3945 (and tp!210762 (inv!9735 setElem!3945) e!438084))))

(declare-fun setRest!3944 () (InoxSet Context!518))

(assert (=> setNonEmpty!3945 (= (_2!4473 (h!13008 mapDefault!3265)) ((_ map or) (store ((as const (Array Context!518 Bool)) false) setElem!3945 true) setRest!3944))))

(declare-fun tp!210763 () Bool)

(declare-fun b!695389 () Bool)

(assert (=> b!695389 (= e!438081 (and (inv!9735 (_1!4472 (_1!4473 (h!13008 mapDefault!3265)))) e!438082 tp_is_empty!3651 setRes!3945 tp!210763))))

(declare-fun condSetEmpty!3945 () Bool)

(assert (=> b!695389 (= condSetEmpty!3945 (= (_2!4473 (h!13008 mapDefault!3265)) ((as const (Array Context!518 Bool)) false)))))

(assert (= (and mapNonEmpty!3254 condMapEmpty!3265) mapIsEmpty!3265))

(assert (= (and mapNonEmpty!3254 (not condMapEmpty!3265)) mapNonEmpty!3265))

(assert (= b!695386 b!695384))

(assert (= (and b!695386 condSetEmpty!3944) setIsEmpty!3945))

(assert (= (and b!695386 (not condSetEmpty!3944)) setNonEmpty!3944))

(assert (= setNonEmpty!3944 b!695385))

(assert (= (and mapNonEmpty!3265 ((_ is Cons!7607) mapValue!3265)) b!695386))

(assert (= b!695389 b!695388))

(assert (= (and b!695389 condSetEmpty!3945) setIsEmpty!3944))

(assert (= (and b!695389 (not condSetEmpty!3945)) setNonEmpty!3945))

(assert (= setNonEmpty!3945 b!695387))

(assert (= (and mapNonEmpty!3254 ((_ is Cons!7607) mapDefault!3265)) b!695389))

(declare-fun m!951345 () Bool)

(assert (=> mapNonEmpty!3265 m!951345))

(declare-fun m!951347 () Bool)

(assert (=> b!695386 m!951347))

(declare-fun m!951349 () Bool)

(assert (=> setNonEmpty!3944 m!951349))

(declare-fun m!951351 () Bool)

(assert (=> setNonEmpty!3945 m!951351))

(declare-fun m!951353 () Bool)

(assert (=> b!695389 m!951353))

(declare-fun b!695398 () Bool)

(declare-fun e!438094 () Bool)

(declare-fun tp!210776 () Bool)

(declare-fun e!438093 () Bool)

(declare-fun setRes!3948 () Bool)

(assert (=> b!695398 (= e!438094 (and (inv!9735 (_1!4472 (_1!4473 (h!13008 mapValue!3256)))) e!438093 tp_is_empty!3651 setRes!3948 tp!210776))))

(declare-fun condSetEmpty!3948 () Bool)

(assert (=> b!695398 (= condSetEmpty!3948 (= (_2!4473 (h!13008 mapValue!3256)) ((as const (Array Context!518 Bool)) false)))))

(assert (=> mapNonEmpty!3254 (= tp!210625 e!438094)))

(declare-fun setElem!3948 () Context!518)

(declare-fun tp!210777 () Bool)

(declare-fun setNonEmpty!3948 () Bool)

(declare-fun e!438092 () Bool)

(assert (=> setNonEmpty!3948 (= setRes!3948 (and tp!210777 (inv!9735 setElem!3948) e!438092))))

(declare-fun setRest!3948 () (InoxSet Context!518))

(assert (=> setNonEmpty!3948 (= (_2!4473 (h!13008 mapValue!3256)) ((_ map or) (store ((as const (Array Context!518 Bool)) false) setElem!3948 true) setRest!3948))))

(declare-fun b!695399 () Bool)

(declare-fun tp!210778 () Bool)

(assert (=> b!695399 (= e!438092 tp!210778)))

(declare-fun setIsEmpty!3948 () Bool)

(assert (=> setIsEmpty!3948 setRes!3948))

(declare-fun b!695400 () Bool)

(declare-fun tp!210775 () Bool)

(assert (=> b!695400 (= e!438093 tp!210775)))

(assert (= b!695398 b!695400))

(assert (= (and b!695398 condSetEmpty!3948) setIsEmpty!3948))

(assert (= (and b!695398 (not condSetEmpty!3948)) setNonEmpty!3948))

(assert (= setNonEmpty!3948 b!695399))

(assert (= (and mapNonEmpty!3254 ((_ is Cons!7607) mapValue!3256)) b!695398))

(declare-fun m!951355 () Bool)

(assert (=> b!695398 m!951355))

(declare-fun m!951357 () Bool)

(assert (=> setNonEmpty!3948 m!951357))

(declare-fun b!695409 () Bool)

(declare-fun e!438099 () Bool)

(declare-fun tp!210787 () Bool)

(declare-fun tp!210786 () Bool)

(assert (=> b!695409 (= e!438099 (and (inv!9723 (left!6040 (c!121823 acc!372))) tp!210786 (inv!9723 (right!6370 (c!121823 acc!372))) tp!210787))))

(declare-fun b!695411 () Bool)

(declare-fun e!438100 () Bool)

(declare-fun tp!210785 () Bool)

(assert (=> b!695411 (= e!438100 tp!210785)))

(declare-fun b!695410 () Bool)

(declare-fun inv!9736 (IArray!5351) Bool)

(assert (=> b!695410 (= e!438099 (and (inv!9736 (xs!5328 (c!121823 acc!372))) e!438100))))

(assert (=> b!695127 (= tp!210633 (and (inv!9723 (c!121823 acc!372)) e!438099))))

(assert (= (and b!695127 ((_ is Node!2675) (c!121823 acc!372))) b!695409))

(assert (= b!695410 b!695411))

(assert (= (and b!695127 ((_ is Leaf!3957) (c!121823 acc!372))) b!695410))

(declare-fun m!951359 () Bool)

(assert (=> b!695409 m!951359))

(declare-fun m!951361 () Bool)

(assert (=> b!695409 m!951361))

(declare-fun m!951363 () Bool)

(assert (=> b!695410 m!951363))

(assert (=> b!695127 m!951007))

(declare-fun b!695420 () Bool)

(declare-fun tp!210794 () Bool)

(declare-fun tp!210796 () Bool)

(declare-fun e!438105 () Bool)

(assert (=> b!695420 (= e!438105 (and (inv!9729 (left!6039 (c!121822 treated!50))) tp!210796 (inv!9729 (right!6369 (c!121822 treated!50))) tp!210794))))

(declare-fun b!695422 () Bool)

(declare-fun e!438106 () Bool)

(declare-fun tp!210795 () Bool)

(assert (=> b!695422 (= e!438106 tp!210795)))

(declare-fun b!695421 () Bool)

(declare-fun inv!9737 (IArray!5349) Bool)

(assert (=> b!695421 (= e!438105 (and (inv!9737 (xs!5327 (c!121822 treated!50))) e!438106))))

(assert (=> b!695141 (= tp!210615 (and (inv!9729 (c!121822 treated!50)) e!438105))))

(assert (= (and b!695141 ((_ is Node!2674) (c!121822 treated!50))) b!695420))

(assert (= b!695421 b!695422))

(assert (= (and b!695141 ((_ is Leaf!3956) (c!121822 treated!50))) b!695421))

(declare-fun m!951365 () Bool)

(assert (=> b!695420 m!951365))

(declare-fun m!951367 () Bool)

(assert (=> b!695420 m!951367))

(declare-fun m!951369 () Bool)

(assert (=> b!695421 m!951369))

(assert (=> b!695141 m!951089))

(declare-fun tp!210799 () Bool)

(declare-fun tp!210797 () Bool)

(declare-fun e!438107 () Bool)

(declare-fun b!695423 () Bool)

(assert (=> b!695423 (= e!438107 (and (inv!9729 (left!6039 (c!121822 (totalInput!1818 cacheFindLongestMatch!74)))) tp!210799 (inv!9729 (right!6369 (c!121822 (totalInput!1818 cacheFindLongestMatch!74)))) tp!210797))))

(declare-fun b!695425 () Bool)

(declare-fun e!438108 () Bool)

(declare-fun tp!210798 () Bool)

(assert (=> b!695425 (= e!438108 tp!210798)))

(declare-fun b!695424 () Bool)

(assert (=> b!695424 (= e!438107 (and (inv!9737 (xs!5327 (c!121822 (totalInput!1818 cacheFindLongestMatch!74)))) e!438108))))

(assert (=> b!695158 (= tp!210628 (and (inv!9729 (c!121822 (totalInput!1818 cacheFindLongestMatch!74))) e!438107))))

(assert (= (and b!695158 ((_ is Node!2674) (c!121822 (totalInput!1818 cacheFindLongestMatch!74)))) b!695423))

(assert (= b!695424 b!695425))

(assert (= (and b!695158 ((_ is Leaf!3956) (c!121822 (totalInput!1818 cacheFindLongestMatch!74)))) b!695424))

(declare-fun m!951371 () Bool)

(assert (=> b!695423 m!951371))

(declare-fun m!951373 () Bool)

(assert (=> b!695423 m!951373))

(declare-fun m!951375 () Bool)

(assert (=> b!695424 m!951375))

(assert (=> b!695158 m!950995))

(declare-fun b!695436 () Bool)

(declare-fun b_free!19893 () Bool)

(declare-fun b_next!19957 () Bool)

(assert (=> b!695436 (= b_free!19893 (not b_next!19957))))

(declare-fun tp!210810 () Bool)

(declare-fun b_and!63687 () Bool)

(assert (=> b!695436 (= tp!210810 b_and!63687)))

(declare-fun b_free!19895 () Bool)

(declare-fun b_next!19959 () Bool)

(assert (=> b!695436 (= b_free!19895 (not b_next!19959))))

(declare-fun tp!210811 () Bool)

(declare-fun b_and!63689 () Bool)

(assert (=> b!695436 (= tp!210811 b_and!63689)))

(declare-fun e!438120 () Bool)

(assert (=> b!695436 (= e!438120 (and tp!210810 tp!210811))))

(declare-fun b!695435 () Bool)

(declare-fun tp!210809 () Bool)

(declare-fun e!438118 () Bool)

(assert (=> b!695435 (= e!438118 (and tp!210809 (inv!9718 (tag!1780 (h!13012 (t!87448 rules!1486)))) (inv!9730 (transformation!1518 (h!13012 (t!87448 rules!1486)))) e!438120))))

(declare-fun b!695434 () Bool)

(declare-fun e!438119 () Bool)

(declare-fun tp!210808 () Bool)

(assert (=> b!695434 (= e!438119 (and e!438118 tp!210808))))

(assert (=> b!695130 (= tp!210629 e!438119)))

(assert (= b!695435 b!695436))

(assert (= b!695434 b!695435))

(assert (= (and b!695130 ((_ is Cons!7611) (t!87448 rules!1486))) b!695434))

(declare-fun m!951377 () Bool)

(assert (=> b!695435 m!951377))

(declare-fun m!951379 () Bool)

(assert (=> b!695435 m!951379))

(declare-fun b!695437 () Bool)

(declare-fun e!438123 () Bool)

(declare-fun tp!210812 () Bool)

(assert (=> b!695437 (= e!438123 tp!210812)))

(declare-fun setElem!3949 () Context!518)

(declare-fun setNonEmpty!3949 () Bool)

(declare-fun tp!210816 () Bool)

(declare-fun setRes!3949 () Bool)

(assert (=> setNonEmpty!3949 (= setRes!3949 (and tp!210816 (inv!9735 setElem!3949) e!438123))))

(declare-fun setRest!3949 () (InoxSet Context!518))

(assert (=> setNonEmpty!3949 (= (_2!4476 (h!13013 mapDefault!3254)) ((_ map or) (store ((as const (Array Context!518 Bool)) false) setElem!3949 true) setRest!3949))))

(declare-fun b!695438 () Bool)

(declare-fun e!438122 () Bool)

(declare-fun tp!210814 () Bool)

(assert (=> b!695438 (= e!438122 tp!210814)))

(declare-fun setIsEmpty!3949 () Bool)

(assert (=> setIsEmpty!3949 setRes!3949))

(declare-fun e!438121 () Bool)

(assert (=> b!695134 (= tp!210618 e!438121)))

(declare-fun b!695439 () Bool)

(declare-fun tp!210813 () Bool)

(declare-fun tp!210815 () Bool)

(assert (=> b!695439 (= e!438121 (and tp!210815 (inv!9735 (_2!4475 (_1!4476 (h!13013 mapDefault!3254)))) e!438122 tp_is_empty!3651 setRes!3949 tp!210813))))

(declare-fun condSetEmpty!3949 () Bool)

(assert (=> b!695439 (= condSetEmpty!3949 (= (_2!4476 (h!13013 mapDefault!3254)) ((as const (Array Context!518 Bool)) false)))))

(assert (= b!695439 b!695438))

(assert (= (and b!695439 condSetEmpty!3949) setIsEmpty!3949))

(assert (= (and b!695439 (not condSetEmpty!3949)) setNonEmpty!3949))

(assert (= setNonEmpty!3949 b!695437))

(assert (= (and b!695134 ((_ is Cons!7612) mapDefault!3254)) b!695439))

(declare-fun m!951381 () Bool)

(assert (=> setNonEmpty!3949 m!951381))

(declare-fun m!951383 () Bool)

(assert (=> b!695439 m!951383))

(declare-fun b!695441 () Bool)

(declare-fun e!438125 () Bool)

(declare-fun tp!210818 () Bool)

(assert (=> b!695441 (= e!438125 tp!210818)))

(declare-fun tp!210817 () Bool)

(declare-fun setRes!3950 () Bool)

(declare-fun setElem!3950 () Context!518)

(declare-fun setNonEmpty!3950 () Bool)

(assert (=> setNonEmpty!3950 (= setRes!3950 (and tp!210817 (inv!9735 setElem!3950) e!438125))))

(declare-fun setRest!3950 () (InoxSet Context!518))

(assert (=> setNonEmpty!3950 (= (_1!4477 (_1!4478 (h!13014 (zeroValue!1070 (v!17756 (underlying!1809 (v!17757 (underlying!1810 (cache!1172 cacheFindLongestMatch!74))))))))) ((_ map or) (store ((as const (Array Context!518 Bool)) false) setElem!3950 true) setRest!3950))))

(declare-fun setIsEmpty!3950 () Bool)

(assert (=> setIsEmpty!3950 setRes!3950))

(declare-fun b!695440 () Bool)

(declare-fun e!438124 () Bool)

(declare-fun tp!210819 () Bool)

(assert (=> b!695440 (= e!438124 (and setRes!3950 tp!210819))))

(declare-fun condSetEmpty!3950 () Bool)

(assert (=> b!695440 (= condSetEmpty!3950 (= (_1!4477 (_1!4478 (h!13014 (zeroValue!1070 (v!17756 (underlying!1809 (v!17757 (underlying!1810 (cache!1172 cacheFindLongestMatch!74))))))))) ((as const (Array Context!518 Bool)) false)))))

(assert (=> b!695153 (= tp!210637 e!438124)))

(assert (= (and b!695440 condSetEmpty!3950) setIsEmpty!3950))

(assert (= (and b!695440 (not condSetEmpty!3950)) setNonEmpty!3950))

(assert (= setNonEmpty!3950 b!695441))

(assert (= (and b!695153 ((_ is Cons!7613) (zeroValue!1070 (v!17756 (underlying!1809 (v!17757 (underlying!1810 (cache!1172 cacheFindLongestMatch!74)))))))) b!695440))

(declare-fun m!951385 () Bool)

(assert (=> setNonEmpty!3950 m!951385))

(declare-fun b!695443 () Bool)

(declare-fun e!438127 () Bool)

(declare-fun tp!210821 () Bool)

(assert (=> b!695443 (= e!438127 tp!210821)))

(declare-fun setNonEmpty!3951 () Bool)

(declare-fun setElem!3951 () Context!518)

(declare-fun setRes!3951 () Bool)

(declare-fun tp!210820 () Bool)

(assert (=> setNonEmpty!3951 (= setRes!3951 (and tp!210820 (inv!9735 setElem!3951) e!438127))))

(declare-fun setRest!3951 () (InoxSet Context!518))

(assert (=> setNonEmpty!3951 (= (_1!4477 (_1!4478 (h!13014 (minValue!1070 (v!17756 (underlying!1809 (v!17757 (underlying!1810 (cache!1172 cacheFindLongestMatch!74))))))))) ((_ map or) (store ((as const (Array Context!518 Bool)) false) setElem!3951 true) setRest!3951))))

(declare-fun setIsEmpty!3951 () Bool)

(assert (=> setIsEmpty!3951 setRes!3951))

(declare-fun b!695442 () Bool)

(declare-fun e!438126 () Bool)

(declare-fun tp!210822 () Bool)

(assert (=> b!695442 (= e!438126 (and setRes!3951 tp!210822))))

(declare-fun condSetEmpty!3951 () Bool)

(assert (=> b!695442 (= condSetEmpty!3951 (= (_1!4477 (_1!4478 (h!13014 (minValue!1070 (v!17756 (underlying!1809 (v!17757 (underlying!1810 (cache!1172 cacheFindLongestMatch!74))))))))) ((as const (Array Context!518 Bool)) false)))))

(assert (=> b!695153 (= tp!210641 e!438126)))

(assert (= (and b!695442 condSetEmpty!3951) setIsEmpty!3951))

(assert (= (and b!695442 (not condSetEmpty!3951)) setNonEmpty!3951))

(assert (= setNonEmpty!3951 b!695443))

(assert (= (and b!695153 ((_ is Cons!7613) (minValue!1070 (v!17756 (underlying!1809 (v!17757 (underlying!1810 (cache!1172 cacheFindLongestMatch!74)))))))) b!695442))

(declare-fun m!951387 () Bool)

(assert (=> setNonEmpty!3951 m!951387))

(declare-fun tp!210825 () Bool)

(declare-fun tp!210823 () Bool)

(declare-fun e!438128 () Bool)

(declare-fun b!695444 () Bool)

(assert (=> b!695444 (= e!438128 (and (inv!9729 (left!6039 (c!121822 totalInput!378))) tp!210825 (inv!9729 (right!6369 (c!121822 totalInput!378))) tp!210823))))

(declare-fun b!695446 () Bool)

(declare-fun e!438129 () Bool)

(declare-fun tp!210824 () Bool)

(assert (=> b!695446 (= e!438129 tp!210824)))

(declare-fun b!695445 () Bool)

(assert (=> b!695445 (= e!438128 (and (inv!9737 (xs!5327 (c!121822 totalInput!378))) e!438129))))

(assert (=> b!695161 (= tp!210642 (and (inv!9729 (c!121822 totalInput!378)) e!438128))))

(assert (= (and b!695161 ((_ is Node!2674) (c!121822 totalInput!378))) b!695444))

(assert (= b!695445 b!695446))

(assert (= (and b!695161 ((_ is Leaf!3956) (c!121822 totalInput!378))) b!695445))

(declare-fun m!951389 () Bool)

(assert (=> b!695444 m!951389))

(declare-fun m!951391 () Bool)

(assert (=> b!695444 m!951391))

(declare-fun m!951393 () Bool)

(assert (=> b!695445 m!951393))

(assert (=> b!695161 m!951009))

(declare-fun b!695447 () Bool)

(declare-fun setRes!3952 () Bool)

(declare-fun e!438131 () Bool)

(declare-fun tp!210827 () Bool)

(declare-fun e!438132 () Bool)

(assert (=> b!695447 (= e!438132 (and (inv!9735 (_1!4472 (_1!4473 (h!13008 mapDefault!3256)))) e!438131 tp_is_empty!3651 setRes!3952 tp!210827))))

(declare-fun condSetEmpty!3952 () Bool)

(assert (=> b!695447 (= condSetEmpty!3952 (= (_2!4473 (h!13008 mapDefault!3256)) ((as const (Array Context!518 Bool)) false)))))

(assert (=> b!695133 (= tp!210622 e!438132)))

(declare-fun e!438130 () Bool)

(declare-fun setElem!3952 () Context!518)

(declare-fun setNonEmpty!3952 () Bool)

(declare-fun tp!210828 () Bool)

(assert (=> setNonEmpty!3952 (= setRes!3952 (and tp!210828 (inv!9735 setElem!3952) e!438130))))

(declare-fun setRest!3952 () (InoxSet Context!518))

(assert (=> setNonEmpty!3952 (= (_2!4473 (h!13008 mapDefault!3256)) ((_ map or) (store ((as const (Array Context!518 Bool)) false) setElem!3952 true) setRest!3952))))

(declare-fun b!695448 () Bool)

(declare-fun tp!210829 () Bool)

(assert (=> b!695448 (= e!438130 tp!210829)))

(declare-fun setIsEmpty!3952 () Bool)

(assert (=> setIsEmpty!3952 setRes!3952))

(declare-fun b!695449 () Bool)

(declare-fun tp!210826 () Bool)

(assert (=> b!695449 (= e!438131 tp!210826)))

(assert (= b!695447 b!695449))

(assert (= (and b!695447 condSetEmpty!3952) setIsEmpty!3952))

(assert (= (and b!695447 (not condSetEmpty!3952)) setNonEmpty!3952))

(assert (= setNonEmpty!3952 b!695448))

(assert (= (and b!695133 ((_ is Cons!7607) mapDefault!3256)) b!695447))

(declare-fun m!951395 () Bool)

(assert (=> b!695447 m!951395))

(declare-fun m!951397 () Bool)

(assert (=> setNonEmpty!3952 m!951397))

(declare-fun setRes!3953 () Bool)

(declare-fun e!438134 () Bool)

(declare-fun e!438135 () Bool)

(declare-fun b!695450 () Bool)

(declare-fun tp!210831 () Bool)

(assert (=> b!695450 (= e!438135 (and (inv!9735 (_1!4472 (_1!4473 (h!13008 (zeroValue!1068 (v!17751 (underlying!1805 (v!17752 (underlying!1806 (cache!1170 cacheUp!502)))))))))) e!438134 tp_is_empty!3651 setRes!3953 tp!210831))))

(declare-fun condSetEmpty!3953 () Bool)

(assert (=> b!695450 (= condSetEmpty!3953 (= (_2!4473 (h!13008 (zeroValue!1068 (v!17751 (underlying!1805 (v!17752 (underlying!1806 (cache!1170 cacheUp!502)))))))) ((as const (Array Context!518 Bool)) false)))))

(assert (=> b!695146 (= tp!210626 e!438135)))

(declare-fun tp!210832 () Bool)

(declare-fun setNonEmpty!3953 () Bool)

(declare-fun setElem!3953 () Context!518)

(declare-fun e!438133 () Bool)

(assert (=> setNonEmpty!3953 (= setRes!3953 (and tp!210832 (inv!9735 setElem!3953) e!438133))))

(declare-fun setRest!3953 () (InoxSet Context!518))

(assert (=> setNonEmpty!3953 (= (_2!4473 (h!13008 (zeroValue!1068 (v!17751 (underlying!1805 (v!17752 (underlying!1806 (cache!1170 cacheUp!502)))))))) ((_ map or) (store ((as const (Array Context!518 Bool)) false) setElem!3953 true) setRest!3953))))

(declare-fun b!695451 () Bool)

(declare-fun tp!210833 () Bool)

(assert (=> b!695451 (= e!438133 tp!210833)))

(declare-fun setIsEmpty!3953 () Bool)

(assert (=> setIsEmpty!3953 setRes!3953))

(declare-fun b!695452 () Bool)

(declare-fun tp!210830 () Bool)

(assert (=> b!695452 (= e!438134 tp!210830)))

(assert (= b!695450 b!695452))

(assert (= (and b!695450 condSetEmpty!3953) setIsEmpty!3953))

(assert (= (and b!695450 (not condSetEmpty!3953)) setNonEmpty!3953))

(assert (= setNonEmpty!3953 b!695451))

(assert (= (and b!695146 ((_ is Cons!7607) (zeroValue!1068 (v!17751 (underlying!1805 (v!17752 (underlying!1806 (cache!1170 cacheUp!502)))))))) b!695450))

(declare-fun m!951399 () Bool)

(assert (=> b!695450 m!951399))

(declare-fun m!951401 () Bool)

(assert (=> setNonEmpty!3953 m!951401))

(declare-fun setRes!3954 () Bool)

(declare-fun e!438137 () Bool)

(declare-fun b!695453 () Bool)

(declare-fun tp!210835 () Bool)

(declare-fun e!438138 () Bool)

(assert (=> b!695453 (= e!438138 (and (inv!9735 (_1!4472 (_1!4473 (h!13008 (minValue!1068 (v!17751 (underlying!1805 (v!17752 (underlying!1806 (cache!1170 cacheUp!502)))))))))) e!438137 tp_is_empty!3651 setRes!3954 tp!210835))))

(declare-fun condSetEmpty!3954 () Bool)

(assert (=> b!695453 (= condSetEmpty!3954 (= (_2!4473 (h!13008 (minValue!1068 (v!17751 (underlying!1805 (v!17752 (underlying!1806 (cache!1170 cacheUp!502)))))))) ((as const (Array Context!518 Bool)) false)))))

(assert (=> b!695146 (= tp!210619 e!438138)))

(declare-fun e!438136 () Bool)

(declare-fun tp!210836 () Bool)

(declare-fun setNonEmpty!3954 () Bool)

(declare-fun setElem!3954 () Context!518)

(assert (=> setNonEmpty!3954 (= setRes!3954 (and tp!210836 (inv!9735 setElem!3954) e!438136))))

(declare-fun setRest!3954 () (InoxSet Context!518))

(assert (=> setNonEmpty!3954 (= (_2!4473 (h!13008 (minValue!1068 (v!17751 (underlying!1805 (v!17752 (underlying!1806 (cache!1170 cacheUp!502)))))))) ((_ map or) (store ((as const (Array Context!518 Bool)) false) setElem!3954 true) setRest!3954))))

(declare-fun b!695454 () Bool)

(declare-fun tp!210837 () Bool)

(assert (=> b!695454 (= e!438136 tp!210837)))

(declare-fun setIsEmpty!3954 () Bool)

(assert (=> setIsEmpty!3954 setRes!3954))

(declare-fun b!695455 () Bool)

(declare-fun tp!210834 () Bool)

(assert (=> b!695455 (= e!438137 tp!210834)))

(assert (= b!695453 b!695455))

(assert (= (and b!695453 condSetEmpty!3954) setIsEmpty!3954))

(assert (= (and b!695453 (not condSetEmpty!3954)) setNonEmpty!3954))

(assert (= setNonEmpty!3954 b!695454))

(assert (= (and b!695146 ((_ is Cons!7607) (minValue!1068 (v!17751 (underlying!1805 (v!17752 (underlying!1806 (cache!1170 cacheUp!502)))))))) b!695453))

(declare-fun m!951403 () Bool)

(assert (=> b!695453 m!951403))

(declare-fun m!951405 () Bool)

(assert (=> setNonEmpty!3954 m!951405))

(declare-fun b!695456 () Bool)

(declare-fun e!438141 () Bool)

(declare-fun tp!210838 () Bool)

(assert (=> b!695456 (= e!438141 tp!210838)))

(declare-fun setRes!3955 () Bool)

(declare-fun tp!210842 () Bool)

(declare-fun setNonEmpty!3955 () Bool)

(declare-fun setElem!3955 () Context!518)

(assert (=> setNonEmpty!3955 (= setRes!3955 (and tp!210842 (inv!9735 setElem!3955) e!438141))))

(declare-fun setRest!3955 () (InoxSet Context!518))

(assert (=> setNonEmpty!3955 (= (_2!4476 (h!13013 (zeroValue!1069 (v!17754 (underlying!1807 (v!17755 (underlying!1808 (cache!1171 cacheDown!515)))))))) ((_ map or) (store ((as const (Array Context!518 Bool)) false) setElem!3955 true) setRest!3955))))

(declare-fun b!695457 () Bool)

(declare-fun e!438140 () Bool)

(declare-fun tp!210840 () Bool)

(assert (=> b!695457 (= e!438140 tp!210840)))

(declare-fun setIsEmpty!3955 () Bool)

(assert (=> setIsEmpty!3955 setRes!3955))

(declare-fun e!438139 () Bool)

(assert (=> b!695155 (= tp!210617 e!438139)))

(declare-fun tp!210839 () Bool)

(declare-fun tp!210841 () Bool)

(declare-fun b!695458 () Bool)

(assert (=> b!695458 (= e!438139 (and tp!210841 (inv!9735 (_2!4475 (_1!4476 (h!13013 (zeroValue!1069 (v!17754 (underlying!1807 (v!17755 (underlying!1808 (cache!1171 cacheDown!515)))))))))) e!438140 tp_is_empty!3651 setRes!3955 tp!210839))))

(declare-fun condSetEmpty!3955 () Bool)

(assert (=> b!695458 (= condSetEmpty!3955 (= (_2!4476 (h!13013 (zeroValue!1069 (v!17754 (underlying!1807 (v!17755 (underlying!1808 (cache!1171 cacheDown!515)))))))) ((as const (Array Context!518 Bool)) false)))))

(assert (= b!695458 b!695457))

(assert (= (and b!695458 condSetEmpty!3955) setIsEmpty!3955))

(assert (= (and b!695458 (not condSetEmpty!3955)) setNonEmpty!3955))

(assert (= setNonEmpty!3955 b!695456))

(assert (= (and b!695155 ((_ is Cons!7612) (zeroValue!1069 (v!17754 (underlying!1807 (v!17755 (underlying!1808 (cache!1171 cacheDown!515)))))))) b!695458))

(declare-fun m!951407 () Bool)

(assert (=> setNonEmpty!3955 m!951407))

(declare-fun m!951409 () Bool)

(assert (=> b!695458 m!951409))

(declare-fun b!695459 () Bool)

(declare-fun e!438144 () Bool)

(declare-fun tp!210843 () Bool)

(assert (=> b!695459 (= e!438144 tp!210843)))

(declare-fun setNonEmpty!3956 () Bool)

(declare-fun setElem!3956 () Context!518)

(declare-fun setRes!3956 () Bool)

(declare-fun tp!210847 () Bool)

(assert (=> setNonEmpty!3956 (= setRes!3956 (and tp!210847 (inv!9735 setElem!3956) e!438144))))

(declare-fun setRest!3956 () (InoxSet Context!518))

(assert (=> setNonEmpty!3956 (= (_2!4476 (h!13013 (minValue!1069 (v!17754 (underlying!1807 (v!17755 (underlying!1808 (cache!1171 cacheDown!515)))))))) ((_ map or) (store ((as const (Array Context!518 Bool)) false) setElem!3956 true) setRest!3956))))

(declare-fun b!695460 () Bool)

(declare-fun e!438143 () Bool)

(declare-fun tp!210845 () Bool)

(assert (=> b!695460 (= e!438143 tp!210845)))

(declare-fun setIsEmpty!3956 () Bool)

(assert (=> setIsEmpty!3956 setRes!3956))

(declare-fun e!438142 () Bool)

(assert (=> b!695155 (= tp!210634 e!438142)))

(declare-fun tp!210844 () Bool)

(declare-fun tp!210846 () Bool)

(declare-fun b!695461 () Bool)

(assert (=> b!695461 (= e!438142 (and tp!210846 (inv!9735 (_2!4475 (_1!4476 (h!13013 (minValue!1069 (v!17754 (underlying!1807 (v!17755 (underlying!1808 (cache!1171 cacheDown!515)))))))))) e!438143 tp_is_empty!3651 setRes!3956 tp!210844))))

(declare-fun condSetEmpty!3956 () Bool)

(assert (=> b!695461 (= condSetEmpty!3956 (= (_2!4476 (h!13013 (minValue!1069 (v!17754 (underlying!1807 (v!17755 (underlying!1808 (cache!1171 cacheDown!515)))))))) ((as const (Array Context!518 Bool)) false)))))

(assert (= b!695461 b!695460))

(assert (= (and b!695461 condSetEmpty!3956) setIsEmpty!3956))

(assert (= (and b!695461 (not condSetEmpty!3956)) setNonEmpty!3956))

(assert (= setNonEmpty!3956 b!695459))

(assert (= (and b!695155 ((_ is Cons!7612) (minValue!1069 (v!17754 (underlying!1807 (v!17755 (underlying!1808 (cache!1171 cacheDown!515)))))))) b!695461))

(declare-fun m!951411 () Bool)

(assert (=> setNonEmpty!3956 m!951411))

(declare-fun m!951413 () Bool)

(assert (=> b!695461 m!951413))

(declare-fun tp!210848 () Bool)

(declare-fun tp!210850 () Bool)

(declare-fun b!695462 () Bool)

(declare-fun e!438145 () Bool)

(assert (=> b!695462 (= e!438145 (and (inv!9729 (left!6039 (c!121822 input!870))) tp!210850 (inv!9729 (right!6369 (c!121822 input!870))) tp!210848))))

(declare-fun b!695464 () Bool)

(declare-fun e!438146 () Bool)

(declare-fun tp!210849 () Bool)

(assert (=> b!695464 (= e!438146 tp!210849)))

(declare-fun b!695463 () Bool)

(assert (=> b!695463 (= e!438145 (and (inv!9737 (xs!5327 (c!121822 input!870))) e!438146))))

(assert (=> b!695154 (= tp!210627 (and (inv!9729 (c!121822 input!870)) e!438145))))

(assert (= (and b!695154 ((_ is Node!2674) (c!121822 input!870))) b!695462))

(assert (= b!695463 b!695464))

(assert (= (and b!695154 ((_ is Leaf!3956) (c!121822 input!870))) b!695463))

(declare-fun m!951415 () Bool)

(assert (=> b!695462 m!951415))

(declare-fun m!951417 () Bool)

(assert (=> b!695462 m!951417))

(declare-fun m!951419 () Bool)

(assert (=> b!695463 m!951419))

(assert (=> b!695154 m!951011))

(check-sat (not b!695251) (not b!695443) (not b!695385) (not b!695463) (not b!695442) (not d!233148) (not b!695282) (not mapNonEmpty!3259) (not b!695274) (not b!695343) (not b!695342) (not b!695191) (not b!695435) (not b_next!19949) (not d!233126) (not b_next!19955) (not b!695317) (not setNonEmpty!3926) (not mapNonEmpty!3262) (not b!695279) (not b!695213) (not b!695434) (not b!695174) (not b!695422) (not d!233150) (not b!695238) (not setNonEmpty!3951) (not b!695444) (not d!233142) (not b!695423) (not setNonEmpty!3950) (not d!233106) (not b!695386) (not b!695439) (not b_next!19957) (not b!695369) (not b!695315) (not setNonEmpty!3952) (not setNonEmpty!3948) (not b!695276) (not d!233120) (not b!695198) (not setNonEmpty!3954) (not setNonEmpty!3935) (not d!233162) (not b!695267) (not b!695456) (not d!233100) (not b!695239) (not b!695398) (not setNonEmpty!3955) (not b_next!19945) (not setNonEmpty!3939) (not b!695234) (not b!695268) (not b!695441) (not b!695154) (not b!695214) (not b!695280) (not b!695447) (not setNonEmpty!3953) (not d!233146) (not b!695437) (not b!695330) (not b!695187) (not b!695445) (not setNonEmpty!3925) (not b!695368) (not b!695409) (not b!695438) (not b!695294) (not b!695331) (not b!695252) (not d!233090) (not b!695316) (not b!695388) (not b!695287) (not b!695217) (not b!695297) (not b!695460) (not setNonEmpty!3944) (not d!233166) (not b!695462) (not b!695265) (not b!695291) (not setNonEmpty!3945) (not b!695208) (not b!695241) (not b!695440) (not d!233140) (not d!233086) b_and!63687 (not d!233094) (not b_next!19959) (not b!695355) (not b_next!19953) (not b!695158) (not d!233128) (not setNonEmpty!3938) b_and!63681 (not b!695195) (not b!695367) (not d!233124) (not b!695448) (not d!233158) (not d!233164) b_and!63671 (not b!695411) (not b!695263) (not b_next!19941) (not b!695201) (not b!695354) (not b!695464) (not d!233082) (not b!695292) (not setNonEmpty!3934) (not b!695449) (not b!695384) b_and!63675 (not d!233138) b_and!63683 (not b!695387) (not d!233144) (not b!695400) (not b!695277) (not b!695293) (not b!695389) (not b!695410) (not b!695288) (not b!695320) (not d!233102) (not d!233110) (not b!695127) (not b!695270) b_and!63689 b_and!63677 (not b!695269) (not b!695353) (not b!695319) (not setNonEmpty!3956) (not b!695446) (not d!233160) (not b!695266) (not b!695298) (not b!695210) (not d!233122) (not b!695275) (not d!233092) (not b!695236) (not b!695141) (not b!695344) (not setNonEmpty!3929) (not b!695262) (not b!695233) (not mapNonEmpty!3265) (not b!695451) (not b_next!19951) (not b!695161) (not d!233152) (not b!695172) tp_is_empty!3651 (not setNonEmpty!3949) (not d!233118) (not b!695165) (not b!695318) (not d!233172) (not b!695420) (not b!695452) (not b!695457) (not b!695450) (not b!695461) b_and!63685 (not b!695329) (not b!695300) (not b_next!19943) (not b!695235) (not d!233174) (not d!233134) (not b!695273) (not b!695190) (not b!695192) (not b!695421) (not d!233130) (not b!695458) (not b!695424) (not b!695453) (not b!695454) (not b!695425) (not b!695455) (not b!695459) (not b!695272) (not b!695399) (not b!695295) (not b!695352) b_and!63673 (not b!695232) (not b_next!19947) b_and!63679 (not b!695264) (not b!695345) (not d!233096) (not bm!43653) (not d!233154))
(check-sat (not b_next!19949) (not b_next!19955) (not b_next!19957) (not b_next!19945) b_and!63687 b_and!63681 b_and!63671 (not b_next!19941) (not b_next!19951) b_and!63685 (not b_next!19943) (not b_next!19959) (not b_next!19953) b_and!63675 b_and!63683 b_and!63689 b_and!63677 b_and!63673 (not b_next!19947) b_and!63679)
