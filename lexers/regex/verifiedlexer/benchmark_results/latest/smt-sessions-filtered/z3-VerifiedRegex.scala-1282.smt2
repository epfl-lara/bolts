; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66428 () Bool)

(assert start!66428)

(declare-fun b!695739 () Bool)

(declare-fun b_free!19913 () Bool)

(declare-fun b_next!19977 () Bool)

(assert (=> b!695739 (= b_free!19913 (not b_next!19977))))

(declare-fun tp!211016 () Bool)

(declare-fun b_and!63707 () Bool)

(assert (=> b!695739 (= tp!211016 b_and!63707)))

(declare-fun b!695723 () Bool)

(declare-fun b_free!19915 () Bool)

(declare-fun b_next!19979 () Bool)

(assert (=> b!695723 (= b_free!19915 (not b_next!19979))))

(declare-fun tp!211006 () Bool)

(declare-fun b_and!63709 () Bool)

(assert (=> b!695723 (= tp!211006 b_and!63709)))

(declare-fun b!695729 () Bool)

(declare-fun b_free!19917 () Bool)

(declare-fun b_next!19981 () Bool)

(assert (=> b!695729 (= b_free!19917 (not b_next!19981))))

(declare-fun tp!211001 () Bool)

(declare-fun b_and!63711 () Bool)

(assert (=> b!695729 (= tp!211001 b_and!63711)))

(declare-fun b!695736 () Bool)

(declare-fun b_free!19919 () Bool)

(declare-fun b_next!19983 () Bool)

(assert (=> b!695736 (= b_free!19919 (not b_next!19983))))

(declare-fun tp!211008 () Bool)

(declare-fun b_and!63713 () Bool)

(assert (=> b!695736 (= tp!211008 b_and!63713)))

(declare-fun b!695728 () Bool)

(declare-fun b_free!19921 () Bool)

(declare-fun b_next!19985 () Bool)

(assert (=> b!695728 (= b_free!19921 (not b_next!19985))))

(declare-fun tp!211022 () Bool)

(declare-fun b_and!63715 () Bool)

(assert (=> b!695728 (= tp!211022 b_and!63715)))

(declare-fun b!695715 () Bool)

(declare-fun b_free!19923 () Bool)

(declare-fun b_next!19987 () Bool)

(assert (=> b!695715 (= b_free!19923 (not b_next!19987))))

(declare-fun tp!211021 () Bool)

(declare-fun b_and!63717 () Bool)

(assert (=> b!695715 (= tp!211021 b_and!63717)))

(declare-fun b_free!19925 () Bool)

(declare-fun b_next!19989 () Bool)

(assert (=> b!695715 (= b_free!19925 (not b_next!19989))))

(declare-fun tp!211002 () Bool)

(declare-fun b_and!63719 () Bool)

(assert (=> b!695715 (= tp!211002 b_and!63719)))

(declare-fun b!695721 () Bool)

(declare-fun b_free!19927 () Bool)

(declare-fun b_next!19991 () Bool)

(assert (=> b!695721 (= b_free!19927 (not b_next!19991))))

(declare-fun tp!211024 () Bool)

(declare-fun b_and!63721 () Bool)

(assert (=> b!695721 (= tp!211024 b_and!63721)))

(declare-fun b!695700 () Bool)

(declare-fun res!314939 () Bool)

(declare-fun e!438377 () Bool)

(assert (=> b!695700 (=> (not res!314939) (not e!438377))))

(declare-datatypes ((LexerInterface!1333 0))(
  ( (LexerInterfaceExt!1330 (__x!5575 Int)) (Lexer!1331) )
))
(declare-fun thiss!12529 () LexerInterface!1333)

(declare-datatypes ((List!7637 0))(
  ( (Nil!7623) (Cons!7623 (h!13024 (_ BitVec 16)) (t!87460 List!7637)) )
))
(declare-datatypes ((TokenValue!1564 0))(
  ( (FloatLiteralValue!3128 (text!11393 List!7637)) (TokenValueExt!1563 (__x!5576 Int)) (Broken!7820 (value!48959 List!7637)) (Object!1577) (End!1564) (Def!1564) (Underscore!1564) (Match!1564) (Else!1564) (Error!1564) (Case!1564) (If!1564) (Extends!1564) (Abstract!1564) (Class!1564) (Val!1564) (DelimiterValue!3128 (del!1624 List!7637)) (KeywordValue!1570 (value!48960 List!7637)) (CommentValue!3128 (value!48961 List!7637)) (WhitespaceValue!3128 (value!48962 List!7637)) (IndentationValue!1564 (value!48963 List!7637)) (String!9545) (Int32!1564) (Broken!7821 (value!48964 List!7637)) (Boolean!1565) (Unit!12689) (OperatorValue!1567 (op!1624 List!7637)) (IdentifierValue!3128 (value!48965 List!7637)) (IdentifierValue!3129 (value!48966 List!7637)) (WhitespaceValue!3129 (value!48967 List!7637)) (True!3128) (False!3128) (Broken!7822 (value!48968 List!7637)) (Broken!7823 (value!48969 List!7637)) (True!3129) (RightBrace!1564) (RightBracket!1564) (Colon!1564) (Null!1564) (Comma!1564) (LeftBracket!1564) (False!3129) (LeftBrace!1564) (ImaginaryLiteralValue!1564 (text!11394 List!7637)) (StringLiteralValue!4692 (value!48970 List!7637)) (EOFValue!1564 (value!48971 List!7637)) (IdentValue!1564 (value!48972 List!7637)) (DelimiterValue!3129 (value!48973 List!7637)) (DedentValue!1564 (value!48974 List!7637)) (NewLineValue!1564 (value!48975 List!7637)) (IntegerValue!4692 (value!48976 (_ BitVec 32)) (text!11395 List!7637)) (IntegerValue!4693 (value!48977 Int) (text!11396 List!7637)) (Times!1564) (Or!1564) (Equal!1564) (Minus!1564) (Broken!7824 (value!48978 List!7637)) (And!1564) (Div!1564) (LessEqual!1564) (Mod!1564) (Concat!3423) (Not!1564) (Plus!1564) (SpaceValue!1564 (value!48979 List!7637)) (IntegerValue!4694 (value!48980 Int) (text!11397 List!7637)) (StringLiteralValue!4693 (text!11398 List!7637)) (FloatLiteralValue!3129 (text!11399 List!7637)) (BytesLiteralValue!1564 (value!48981 List!7637)) (CommentValue!3129 (value!48982 List!7637)) (StringLiteralValue!4694 (value!48983 List!7637)) (ErrorTokenValue!1564 (msg!1625 List!7637)) )
))
(declare-datatypes ((String!9546 0))(
  ( (String!9547 (value!48984 String)) )
))
(declare-datatypes ((C!4320 0))(
  ( (C!4321 (val!2390 Int)) )
))
(declare-datatypes ((List!7638 0))(
  ( (Nil!7624) (Cons!7624 (h!13025 C!4320) (t!87461 List!7638)) )
))
(declare-datatypes ((IArray!5357 0))(
  ( (IArray!5358 (innerList!2736 List!7638)) )
))
(declare-datatypes ((Conc!2678 0))(
  ( (Node!2678 (left!6046 Conc!2678) (right!6376 Conc!2678) (csize!5586 Int) (cheight!2889 Int)) (Leaf!3961 (xs!5331 IArray!5357) (csize!5587 Int)) (Empty!2678) )
))
(declare-datatypes ((BalanceConc!5368 0))(
  ( (BalanceConc!5369 (c!121858 Conc!2678)) )
))
(declare-datatypes ((Regex!1859 0))(
  ( (ElementMatch!1859 (c!121859 C!4320)) (Concat!3424 (regOne!4230 Regex!1859) (regTwo!4230 Regex!1859)) (EmptyExpr!1859) (Star!1859 (reg!2188 Regex!1859)) (EmptyLang!1859) (Union!1859 (regOne!4231 Regex!1859) (regTwo!4231 Regex!1859)) )
))
(declare-datatypes ((TokenValueInjection!2864 0))(
  ( (TokenValueInjection!2865 (toValue!2484 Int) (toChars!2343 Int)) )
))
(declare-datatypes ((Rule!2840 0))(
  ( (Rule!2841 (regex!1520 Regex!1859) (tag!1782 String!9546) (isSeparator!1520 Bool) (transformation!1520 TokenValueInjection!2864)) )
))
(declare-datatypes ((List!7639 0))(
  ( (Nil!7625) (Cons!7625 (h!13026 Rule!2840) (t!87462 List!7639)) )
))
(declare-fun rules!1486 () List!7639)

(declare-fun rulesInvariant!1261 (LexerInterface!1333 List!7639) Bool)

(assert (=> b!695700 (= res!314939 (rulesInvariant!1261 thiss!12529 rules!1486))))

(declare-fun b!695701 () Bool)

(declare-fun res!314930 () Bool)

(assert (=> b!695701 (=> (not res!314930) (not e!438377))))

(declare-fun isEmpty!4906 (List!7639) Bool)

(assert (=> b!695701 (= res!314930 (not (isEmpty!4906 rules!1486)))))

(declare-fun b!695702 () Bool)

(declare-fun e!438348 () Bool)

(declare-fun totalInput!378 () BalanceConc!5368)

(declare-fun tp!211018 () Bool)

(declare-fun inv!9745 (Conc!2678) Bool)

(assert (=> b!695702 (= e!438348 (and (inv!9745 (c!121858 totalInput!378)) tp!211018))))

(declare-fun b!695703 () Bool)

(declare-fun res!314924 () Bool)

(declare-fun e!438378 () Bool)

(assert (=> b!695703 (=> (not res!314924) (not e!438378))))

(declare-datatypes ((Token!2740 0))(
  ( (Token!2741 (value!48985 TokenValue!1564) (rule!2559 Rule!2840) (size!6219 Int) (originalCharacters!1795 List!7638)) )
))
(declare-datatypes ((List!7640 0))(
  ( (Nil!7626) (Cons!7626 (h!13027 Token!2740) (t!87463 List!7640)) )
))
(declare-datatypes ((IArray!5359 0))(
  ( (IArray!5360 (innerList!2737 List!7640)) )
))
(declare-datatypes ((Conc!2679 0))(
  ( (Node!2679 (left!6047 Conc!2679) (right!6377 Conc!2679) (csize!5588 Int) (cheight!2890 Int)) (Leaf!3962 (xs!5332 IArray!5359) (csize!5589 Int)) (Empty!2679) )
))
(declare-datatypes ((BalanceConc!5370 0))(
  ( (BalanceConc!5371 (c!121860 Conc!2679)) )
))
(declare-datatypes ((tuple2!8100 0))(
  ( (tuple2!8101 (_1!4492 BalanceConc!5370) (_2!4492 BalanceConc!5368)) )
))
(declare-fun lt!285738 () tuple2!8100)

(declare-fun isEmpty!4907 (List!7638) Bool)

(declare-fun list!3182 (BalanceConc!5368) List!7638)

(assert (=> b!695703 (= res!314924 (isEmpty!4907 (list!3182 (_2!4492 lt!285738))))))

(declare-fun b!695704 () Bool)

(declare-fun e!438359 () Bool)

(declare-datatypes ((Hashable!789 0))(
  ( (HashableExt!788 (__x!5577 Int)) )
))
(declare-datatypes ((List!7641 0))(
  ( (Nil!7627) (Cons!7627 (h!13028 Regex!1859) (t!87464 List!7641)) )
))
(declare-datatypes ((Context!522 0))(
  ( (Context!523 (exprs!761 List!7641)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!8102 0))(
  ( (tuple2!8103 (_1!4493 (InoxSet Context!522)) (_2!4493 Int)) )
))
(declare-datatypes ((tuple2!8104 0))(
  ( (tuple2!8105 (_1!4494 tuple2!8102) (_2!4494 Int)) )
))
(declare-datatypes ((array!3025 0))(
  ( (array!3026 (arr!1366 (Array (_ BitVec 32) (_ BitVec 64))) (size!6220 (_ BitVec 32))) )
))
(declare-datatypes ((List!7642 0))(
  ( (Nil!7628) (Cons!7628 (h!13029 tuple2!8104) (t!87465 List!7642)) )
))
(declare-datatypes ((array!3027 0))(
  ( (array!3028 (arr!1367 (Array (_ BitVec 32) List!7642)) (size!6221 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1634 0))(
  ( (LongMapFixedSize!1635 (defaultEntry!1173 Int) (mask!2631 (_ BitVec 32)) (extraKeys!1064 (_ BitVec 32)) (zeroValue!1074 List!7642) (minValue!1074 List!7642) (_size!1743 (_ BitVec 32)) (_keys!1111 array!3025) (_values!1096 array!3027) (_vacant!878 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3209 0))(
  ( (Cell!3210 (v!17765 LongMapFixedSize!1634)) )
))
(declare-datatypes ((MutLongMap!817 0))(
  ( (LongMap!817 (underlying!1817 Cell!3209)) (MutLongMapExt!816 (__x!5578 Int)) )
))
(declare-datatypes ((Cell!3211 0))(
  ( (Cell!3212 (v!17766 MutLongMap!817)) )
))
(declare-datatypes ((MutableMap!789 0))(
  ( (MutableMapExt!788 (__x!5579 Int)) (HashMap!789 (underlying!1818 Cell!3211) (hashF!2697 Hashable!789) (_size!1744 (_ BitVec 32)) (defaultValue!940 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!74 0))(
  ( (CacheFindLongestMatch!75 (cache!1176 MutableMap!789) (totalInput!1821 BalanceConc!5368)) )
))
(declare-fun cacheFindLongestMatch!74 () CacheFindLongestMatch!74)

(declare-fun tp!211028 () Bool)

(assert (=> b!695704 (= e!438359 (and (inv!9745 (c!121858 (totalInput!1821 cacheFindLongestMatch!74))) tp!211028))))

(declare-fun res!314929 () Bool)

(assert (=> start!66428 (=> (not res!314929) (not e!438377))))

(get-info :version)

(assert (=> start!66428 (= res!314929 ((_ is Lexer!1331) thiss!12529))))

(assert (=> start!66428 e!438377))

(declare-fun acc!372 () BalanceConc!5370)

(declare-fun e!438382 () Bool)

(declare-fun inv!9746 (BalanceConc!5370) Bool)

(assert (=> start!66428 (and (inv!9746 acc!372) e!438382)))

(declare-fun treated!50 () BalanceConc!5368)

(declare-fun e!438381 () Bool)

(declare-fun inv!9747 (BalanceConc!5368) Bool)

(assert (=> start!66428 (and (inv!9747 treated!50) e!438381)))

(assert (=> start!66428 (and (inv!9747 totalInput!378) e!438348)))

(declare-fun input!870 () BalanceConc!5368)

(declare-fun e!438356 () Bool)

(assert (=> start!66428 (and (inv!9747 input!870) e!438356)))

(declare-fun e!438375 () Bool)

(assert (=> start!66428 e!438375))

(assert (=> start!66428 true))

(declare-datatypes ((tuple2!8106 0))(
  ( (tuple2!8107 (_1!4495 Context!522) (_2!4495 C!4320)) )
))
(declare-datatypes ((tuple2!8108 0))(
  ( (tuple2!8109 (_1!4496 tuple2!8106) (_2!4496 (InoxSet Context!522))) )
))
(declare-datatypes ((List!7643 0))(
  ( (Nil!7629) (Cons!7629 (h!13030 tuple2!8108) (t!87466 List!7643)) )
))
(declare-datatypes ((array!3029 0))(
  ( (array!3030 (arr!1368 (Array (_ BitVec 32) List!7643)) (size!6222 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1636 0))(
  ( (LongMapFixedSize!1637 (defaultEntry!1174 Int) (mask!2632 (_ BitVec 32)) (extraKeys!1065 (_ BitVec 32)) (zeroValue!1075 List!7643) (minValue!1075 List!7643) (_size!1745 (_ BitVec 32)) (_keys!1112 array!3025) (_values!1097 array!3029) (_vacant!879 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3213 0))(
  ( (Cell!3214 (v!17767 LongMapFixedSize!1636)) )
))
(declare-datatypes ((MutLongMap!818 0))(
  ( (LongMap!818 (underlying!1819 Cell!3213)) (MutLongMapExt!817 (__x!5580 Int)) )
))
(declare-datatypes ((Hashable!790 0))(
  ( (HashableExt!789 (__x!5581 Int)) )
))
(declare-datatypes ((Cell!3215 0))(
  ( (Cell!3216 (v!17768 MutLongMap!818)) )
))
(declare-datatypes ((MutableMap!790 0))(
  ( (MutableMapExt!789 (__x!5582 Int)) (HashMap!790 (underlying!1820 Cell!3215) (hashF!2698 Hashable!790) (_size!1746 (_ BitVec 32)) (defaultValue!941 Int)) )
))
(declare-datatypes ((CacheUp!412 0))(
  ( (CacheUp!413 (cache!1177 MutableMap!790)) )
))
(declare-fun cacheUp!502 () CacheUp!412)

(declare-fun e!438360 () Bool)

(declare-fun inv!9748 (CacheUp!412) Bool)

(assert (=> start!66428 (and (inv!9748 cacheUp!502) e!438360)))

(declare-datatypes ((tuple3!746 0))(
  ( (tuple3!747 (_1!4497 Regex!1859) (_2!4497 Context!522) (_3!442 C!4320)) )
))
(declare-datatypes ((tuple2!8110 0))(
  ( (tuple2!8111 (_1!4498 tuple3!746) (_2!4498 (InoxSet Context!522))) )
))
(declare-datatypes ((List!7644 0))(
  ( (Nil!7630) (Cons!7630 (h!13031 tuple2!8110) (t!87467 List!7644)) )
))
(declare-datatypes ((array!3031 0))(
  ( (array!3032 (arr!1369 (Array (_ BitVec 32) List!7644)) (size!6223 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1638 0))(
  ( (LongMapFixedSize!1639 (defaultEntry!1175 Int) (mask!2633 (_ BitVec 32)) (extraKeys!1066 (_ BitVec 32)) (zeroValue!1076 List!7644) (minValue!1076 List!7644) (_size!1747 (_ BitVec 32)) (_keys!1113 array!3025) (_values!1098 array!3031) (_vacant!880 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3217 0))(
  ( (Cell!3218 (v!17769 LongMapFixedSize!1638)) )
))
(declare-datatypes ((MutLongMap!819 0))(
  ( (LongMap!819 (underlying!1821 Cell!3217)) (MutLongMapExt!818 (__x!5583 Int)) )
))
(declare-datatypes ((Cell!3219 0))(
  ( (Cell!3220 (v!17770 MutLongMap!819)) )
))
(declare-datatypes ((Hashable!791 0))(
  ( (HashableExt!790 (__x!5584 Int)) )
))
(declare-datatypes ((MutableMap!791 0))(
  ( (MutableMapExt!790 (__x!5585 Int)) (HashMap!791 (underlying!1822 Cell!3219) (hashF!2699 Hashable!791) (_size!1748 (_ BitVec 32)) (defaultValue!942 Int)) )
))
(declare-datatypes ((CacheDown!418 0))(
  ( (CacheDown!419 (cache!1178 MutableMap!791)) )
))
(declare-fun cacheDown!515 () CacheDown!418)

(declare-fun e!438367 () Bool)

(declare-fun inv!9749 (CacheDown!418) Bool)

(assert (=> start!66428 (and (inv!9749 cacheDown!515) e!438367)))

(declare-fun e!438352 () Bool)

(declare-fun inv!9750 (CacheFindLongestMatch!74) Bool)

(assert (=> start!66428 (and (inv!9750 cacheFindLongestMatch!74) e!438352)))

(declare-fun b!695705 () Bool)

(declare-fun e!438380 () Bool)

(declare-datatypes ((tuple2!8112 0))(
  ( (tuple2!8113 (_1!4499 Token!2740) (_2!4499 BalanceConc!5368)) )
))
(declare-datatypes ((Option!1718 0))(
  ( (None!1717) (Some!1717 (v!17771 tuple2!8112)) )
))
(declare-datatypes ((tuple4!138 0))(
  ( (tuple4!139 (_1!4500 Option!1718) (_2!4500 CacheUp!412) (_3!443 CacheDown!418) (_4!69 CacheFindLongestMatch!74)) )
))
(declare-fun lt!285745 () tuple4!138)

(assert (=> b!695705 (= e!438380 (= (totalInput!1821 (_4!69 lt!285745)) totalInput!378))))

(declare-fun b!695706 () Bool)

(declare-fun e!438366 () Bool)

(declare-fun tp!211003 () Bool)

(declare-fun mapRes!3282 () Bool)

(assert (=> b!695706 (= e!438366 (and tp!211003 mapRes!3282))))

(declare-fun condMapEmpty!3281 () Bool)

(declare-fun mapDefault!3282 () List!7642)

(assert (=> b!695706 (= condMapEmpty!3281 (= (arr!1367 (_values!1096 (v!17765 (underlying!1817 (v!17766 (underlying!1818 (cache!1176 cacheFindLongestMatch!74))))))) ((as const (Array (_ BitVec 32) List!7642)) mapDefault!3282)))))

(declare-fun mapNonEmpty!3281 () Bool)

(declare-fun tp!211015 () Bool)

(declare-fun tp!211019 () Bool)

(assert (=> mapNonEmpty!3281 (= mapRes!3282 (and tp!211015 tp!211019))))

(declare-fun mapValue!3282 () List!7642)

(declare-fun mapKey!3282 () (_ BitVec 32))

(declare-fun mapRest!3282 () (Array (_ BitVec 32) List!7642))

(assert (=> mapNonEmpty!3281 (= (arr!1367 (_values!1096 (v!17765 (underlying!1817 (v!17766 (underlying!1818 (cache!1176 cacheFindLongestMatch!74))))))) (store mapRest!3282 mapKey!3282 mapValue!3282))))

(declare-fun b!695707 () Bool)

(declare-fun e!438369 () Bool)

(declare-fun tp!211013 () Bool)

(declare-fun mapRes!3283 () Bool)

(assert (=> b!695707 (= e!438369 (and tp!211013 mapRes!3283))))

(declare-fun condMapEmpty!3283 () Bool)

(declare-fun mapDefault!3281 () List!7643)

(assert (=> b!695707 (= condMapEmpty!3283 (= (arr!1368 (_values!1097 (v!17767 (underlying!1819 (v!17768 (underlying!1820 (cache!1177 cacheUp!502))))))) ((as const (Array (_ BitVec 32) List!7643)) mapDefault!3281)))))

(declare-fun e!438353 () Bool)

(declare-fun b!695708 () Bool)

(assert (=> b!695708 (= e!438352 (and e!438353 (inv!9747 (totalInput!1821 cacheFindLongestMatch!74)) e!438359))))

(declare-fun b!695709 () Bool)

(declare-fun e!438364 () Bool)

(declare-fun e!438355 () Bool)

(assert (=> b!695709 (= e!438364 e!438355)))

(declare-fun mapNonEmpty!3282 () Bool)

(declare-fun tp!211029 () Bool)

(declare-fun tp!211020 () Bool)

(assert (=> mapNonEmpty!3282 (= mapRes!3283 (and tp!211029 tp!211020))))

(declare-fun mapValue!3281 () List!7643)

(declare-fun mapRest!3283 () (Array (_ BitVec 32) List!7643))

(declare-fun mapKey!3281 () (_ BitVec 32))

(assert (=> mapNonEmpty!3282 (= (arr!1368 (_values!1097 (v!17767 (underlying!1819 (v!17768 (underlying!1820 (cache!1177 cacheUp!502))))))) (store mapRest!3283 mapKey!3281 mapValue!3281))))

(declare-fun b!695710 () Bool)

(declare-fun res!314933 () Bool)

(declare-fun e!438362 () Bool)

(assert (=> b!695710 (=> (not res!314933) (not e!438362))))

(declare-fun valid!695 (CacheFindLongestMatch!74) Bool)

(assert (=> b!695710 (= res!314933 (valid!695 cacheFindLongestMatch!74))))

(declare-fun b!695711 () Bool)

(declare-fun res!314935 () Bool)

(assert (=> b!695711 (=> (not res!314935) (not e!438362))))

(declare-fun lt!285741 () tuple2!8100)

(declare-fun lt!285735 () tuple2!8100)

(assert (=> b!695711 (= res!314935 (= (list!3182 (_2!4492 lt!285741)) (list!3182 (_2!4492 lt!285735))))))

(declare-fun b!695712 () Bool)

(declare-fun e!438385 () Bool)

(assert (=> b!695712 (= e!438367 e!438385)))

(declare-fun b!695713 () Bool)

(declare-fun e!438383 () Bool)

(declare-fun e!438363 () Bool)

(assert (=> b!695713 (= e!438383 e!438363)))

(declare-fun res!314925 () Bool)

(assert (=> b!695713 (=> res!314925 e!438363)))

(assert (=> b!695713 (= res!314925 (not ((_ is Some!1717) (_1!4500 lt!285745))))))

(declare-fun maxPrefixZipperSequenceV2Mem!9 (LexerInterface!1333 List!7639 BalanceConc!5368 BalanceConc!5368 CacheUp!412 CacheDown!418 CacheFindLongestMatch!74) tuple4!138)

(assert (=> b!695713 (= lt!285745 (maxPrefixZipperSequenceV2Mem!9 thiss!12529 rules!1486 input!870 totalInput!378 cacheUp!502 cacheDown!515 cacheFindLongestMatch!74))))

(declare-fun b!695714 () Bool)

(declare-fun e!438376 () Bool)

(declare-fun e!438374 () Bool)

(declare-fun lt!285742 () MutLongMap!819)

(assert (=> b!695714 (= e!438376 (and e!438374 ((_ is LongMap!819) lt!285742)))))

(assert (=> b!695714 (= lt!285742 (v!17770 (underlying!1822 (cache!1178 cacheDown!515))))))

(declare-fun e!438358 () Bool)

(assert (=> b!695715 (= e!438358 (and tp!211021 tp!211002))))

(declare-fun b!695716 () Bool)

(declare-fun e!438372 () Bool)

(declare-fun tp!211007 () Bool)

(assert (=> b!695716 (= e!438375 (and e!438372 tp!211007))))

(declare-fun b!695717 () Bool)

(declare-fun e!438349 () Bool)

(declare-fun e!438361 () Bool)

(assert (=> b!695717 (= e!438349 e!438361)))

(declare-fun b!695718 () Bool)

(declare-fun res!314934 () Bool)

(assert (=> b!695718 (=> (not res!314934) (not e!438362))))

(assert (=> b!695718 (= res!314934 (= (totalInput!1821 cacheFindLongestMatch!74) totalInput!378))))

(declare-fun b!695719 () Bool)

(assert (=> b!695719 (= e!438363 e!438380)))

(declare-fun res!314927 () Bool)

(assert (=> b!695719 (=> res!314927 e!438380)))

(declare-fun rulesValidInductive!527 (LexerInterface!1333 List!7639) Bool)

(assert (=> b!695719 (= res!314927 (not (rulesValidInductive!527 thiss!12529 rules!1486)))))

(declare-fun lt!285733 () tuple2!8100)

(declare-fun lexRec!175 (LexerInterface!1333 List!7639 BalanceConc!5368) tuple2!8100)

(assert (=> b!695719 (= lt!285733 (lexRec!175 thiss!12529 rules!1486 (_2!4499 (v!17771 (_1!4500 lt!285745)))))))

(declare-fun b!695720 () Bool)

(declare-fun res!314931 () Bool)

(assert (=> b!695720 (=> res!314931 e!438380)))

(declare-fun valid!696 (CacheUp!412) Bool)

(assert (=> b!695720 (= res!314931 (not (valid!696 (_2!4500 lt!285745))))))

(declare-fun e!438373 () Bool)

(assert (=> b!695721 (= e!438353 (and e!438373 tp!211024))))

(declare-fun mapIsEmpty!3281 () Bool)

(assert (=> mapIsEmpty!3281 mapRes!3283))

(declare-fun b!695722 () Bool)

(declare-fun res!314940 () Bool)

(assert (=> b!695722 (=> res!314940 e!438380)))

(assert (=> b!695722 (= res!314940 (not (valid!695 (_4!69 lt!285745))))))

(declare-fun tp!211017 () Bool)

(declare-fun tp!211014 () Bool)

(declare-fun e!438350 () Bool)

(declare-fun array_inv!1005 (array!3025) Bool)

(declare-fun array_inv!1006 (array!3031) Bool)

(assert (=> b!695723 (= e!438361 (and tp!211006 tp!211014 tp!211017 (array_inv!1005 (_keys!1113 (v!17769 (underlying!1821 (v!17770 (underlying!1822 (cache!1178 cacheDown!515))))))) (array_inv!1006 (_values!1098 (v!17769 (underlying!1821 (v!17770 (underlying!1822 (cache!1178 cacheDown!515))))))) e!438350))))

(declare-fun b!695724 () Bool)

(declare-fun e!438386 () Bool)

(assert (=> b!695724 (= e!438386 e!438364)))

(declare-fun b!695725 () Bool)

(declare-fun tp!211023 () Bool)

(declare-fun inv!9740 (String!9546) Bool)

(declare-fun inv!9751 (TokenValueInjection!2864) Bool)

(assert (=> b!695725 (= e!438372 (and tp!211023 (inv!9740 (tag!1782 (h!13026 rules!1486))) (inv!9751 (transformation!1520 (h!13026 rules!1486))) e!438358))))

(declare-fun b!695726 () Bool)

(declare-fun tp!211004 () Bool)

(declare-fun mapRes!3281 () Bool)

(assert (=> b!695726 (= e!438350 (and tp!211004 mapRes!3281))))

(declare-fun condMapEmpty!3282 () Bool)

(declare-fun mapDefault!3283 () List!7644)

(assert (=> b!695726 (= condMapEmpty!3282 (= (arr!1369 (_values!1098 (v!17769 (underlying!1821 (v!17770 (underlying!1822 (cache!1178 cacheDown!515))))))) ((as const (Array (_ BitVec 32) List!7644)) mapDefault!3283)))))

(declare-fun b!695727 () Bool)

(declare-fun res!314937 () Bool)

(assert (=> b!695727 (=> (not res!314937) (not e!438362))))

(declare-fun valid!697 (CacheDown!418) Bool)

(assert (=> b!695727 (= res!314937 (valid!697 cacheDown!515))))

(declare-fun mapNonEmpty!3283 () Bool)

(declare-fun tp!211030 () Bool)

(declare-fun tp!211012 () Bool)

(assert (=> mapNonEmpty!3283 (= mapRes!3281 (and tp!211030 tp!211012))))

(declare-fun mapKey!3283 () (_ BitVec 32))

(declare-fun mapRest!3281 () (Array (_ BitVec 32) List!7644))

(declare-fun mapValue!3283 () List!7644)

(assert (=> mapNonEmpty!3283 (= (arr!1369 (_values!1098 (v!17769 (underlying!1821 (v!17770 (underlying!1822 (cache!1178 cacheDown!515))))))) (store mapRest!3281 mapKey!3283 mapValue!3283))))

(declare-fun tp!211009 () Bool)

(declare-fun tp!211010 () Bool)

(declare-fun e!438384 () Bool)

(declare-fun array_inv!1007 (array!3029) Bool)

(assert (=> b!695728 (= e!438384 (and tp!211022 tp!211010 tp!211009 (array_inv!1005 (_keys!1112 (v!17767 (underlying!1819 (v!17768 (underlying!1820 (cache!1177 cacheUp!502))))))) (array_inv!1007 (_values!1097 (v!17767 (underlying!1819 (v!17768 (underlying!1820 (cache!1177 cacheUp!502))))))) e!438369))))

(declare-fun mapIsEmpty!3282 () Bool)

(assert (=> mapIsEmpty!3282 mapRes!3282))

(assert (=> b!695729 (= e!438385 (and e!438376 tp!211001))))

(declare-fun b!695730 () Bool)

(declare-fun e!438368 () Bool)

(assert (=> b!695730 (= e!438360 e!438368)))

(declare-fun mapIsEmpty!3283 () Bool)

(assert (=> mapIsEmpty!3283 mapRes!3281))

(declare-fun b!695731 () Bool)

(declare-fun e!438347 () Bool)

(declare-fun e!438357 () Bool)

(assert (=> b!695731 (= e!438347 e!438357)))

(declare-fun b!695732 () Bool)

(assert (=> b!695732 (= e!438378 e!438362)))

(declare-fun res!314926 () Bool)

(assert (=> b!695732 (=> (not res!314926) (not e!438362))))

(declare-fun list!3183 (BalanceConc!5370) List!7640)

(declare-fun ++!1982 (BalanceConc!5370 BalanceConc!5370) BalanceConc!5370)

(assert (=> b!695732 (= res!314926 (= (list!3183 (_1!4492 lt!285741)) (list!3183 (++!1982 acc!372 (_1!4492 lt!285735)))))))

(assert (=> b!695732 (= lt!285735 (lexRec!175 thiss!12529 rules!1486 input!870))))

(assert (=> b!695732 (= lt!285741 (lexRec!175 thiss!12529 rules!1486 totalInput!378))))

(declare-fun b!695733 () Bool)

(assert (=> b!695733 (= e!438357 e!438384)))

(declare-fun b!695734 () Bool)

(declare-fun res!314928 () Bool)

(assert (=> b!695734 (=> (not res!314928) (not e!438362))))

(assert (=> b!695734 (= res!314928 (valid!696 cacheUp!502))))

(declare-fun b!695735 () Bool)

(declare-fun e!438351 () Bool)

(assert (=> b!695735 (= e!438377 e!438351)))

(declare-fun res!314936 () Bool)

(assert (=> b!695735 (=> (not res!314936) (not e!438351))))

(declare-fun lt!285737 () List!7638)

(declare-fun lt!285743 () List!7638)

(assert (=> b!695735 (= res!314936 (= lt!285737 lt!285743))))

(declare-fun lt!285740 () List!7638)

(declare-fun lt!285736 () List!7638)

(declare-fun ++!1983 (List!7638 List!7638) List!7638)

(assert (=> b!695735 (= lt!285743 (++!1983 lt!285740 lt!285736))))

(assert (=> b!695735 (= lt!285737 (list!3182 totalInput!378))))

(assert (=> b!695735 (= lt!285736 (list!3182 input!870))))

(assert (=> b!695735 (= lt!285740 (list!3182 treated!50))))

(declare-fun tp!211011 () Bool)

(declare-fun tp!211026 () Bool)

(declare-fun array_inv!1008 (array!3027) Bool)

(assert (=> b!695736 (= e!438355 (and tp!211008 tp!211026 tp!211011 (array_inv!1005 (_keys!1111 (v!17765 (underlying!1817 (v!17766 (underlying!1818 (cache!1176 cacheFindLongestMatch!74))))))) (array_inv!1008 (_values!1096 (v!17765 (underlying!1817 (v!17766 (underlying!1818 (cache!1176 cacheFindLongestMatch!74))))))) e!438366))))

(declare-fun b!695737 () Bool)

(assert (=> b!695737 (= e!438351 e!438378)))

(declare-fun res!314932 () Bool)

(assert (=> b!695737 (=> (not res!314932) (not e!438378))))

(assert (=> b!695737 (= res!314932 (= (list!3183 (_1!4492 lt!285738)) (list!3183 acc!372)))))

(assert (=> b!695737 (= lt!285738 (lexRec!175 thiss!12529 rules!1486 treated!50))))

(declare-fun b!695738 () Bool)

(assert (=> b!695738 (= e!438374 e!438349)))

(declare-fun e!438371 () Bool)

(assert (=> b!695739 (= e!438368 (and e!438371 tp!211016))))

(declare-fun b!695740 () Bool)

(declare-fun tp!211005 () Bool)

(assert (=> b!695740 (= e!438381 (and (inv!9745 (c!121858 treated!50)) tp!211005))))

(declare-fun b!695741 () Bool)

(declare-fun tp!211025 () Bool)

(assert (=> b!695741 (= e!438356 (and (inv!9745 (c!121858 input!870)) tp!211025))))

(declare-fun b!695742 () Bool)

(declare-fun lt!285739 () MutLongMap!817)

(assert (=> b!695742 (= e!438373 (and e!438386 ((_ is LongMap!817) lt!285739)))))

(assert (=> b!695742 (= lt!285739 (v!17766 (underlying!1818 (cache!1176 cacheFindLongestMatch!74))))))

(declare-fun b!695743 () Bool)

(declare-fun lt!285734 () MutLongMap!818)

(assert (=> b!695743 (= e!438371 (and e!438347 ((_ is LongMap!818) lt!285734)))))

(assert (=> b!695743 (= lt!285734 (v!17768 (underlying!1820 (cache!1177 cacheUp!502))))))

(declare-fun b!695744 () Bool)

(assert (=> b!695744 (= e!438362 (not e!438383))))

(declare-fun res!314941 () Bool)

(assert (=> b!695744 (=> res!314941 e!438383)))

(declare-fun isSuffix!140 (List!7638 List!7638) Bool)

(assert (=> b!695744 (= res!314941 (not (isSuffix!140 lt!285736 lt!285737)))))

(assert (=> b!695744 (isSuffix!140 lt!285736 lt!285743)))

(declare-datatypes ((Unit!12690 0))(
  ( (Unit!12691) )
))
(declare-fun lt!285744 () Unit!12690)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!140 (List!7638 List!7638) Unit!12690)

(assert (=> b!695744 (= lt!285744 (lemmaConcatTwoListThenFSndIsSuffix!140 lt!285740 lt!285736))))

(declare-fun b!695745 () Bool)

(declare-fun res!314938 () Bool)

(assert (=> b!695745 (=> res!314938 e!438380)))

(assert (=> b!695745 (= res!314938 (not (valid!697 (_3!443 lt!285745))))))

(declare-fun b!695746 () Bool)

(declare-fun tp!211027 () Bool)

(declare-fun inv!9752 (Conc!2679) Bool)

(assert (=> b!695746 (= e!438382 (and (inv!9752 (c!121860 acc!372)) tp!211027))))

(assert (= (and start!66428 res!314929) b!695701))

(assert (= (and b!695701 res!314930) b!695700))

(assert (= (and b!695700 res!314939) b!695735))

(assert (= (and b!695735 res!314936) b!695737))

(assert (= (and b!695737 res!314932) b!695703))

(assert (= (and b!695703 res!314924) b!695732))

(assert (= (and b!695732 res!314926) b!695711))

(assert (= (and b!695711 res!314935) b!695734))

(assert (= (and b!695734 res!314928) b!695727))

(assert (= (and b!695727 res!314937) b!695710))

(assert (= (and b!695710 res!314933) b!695718))

(assert (= (and b!695718 res!314934) b!695744))

(assert (= (and b!695744 (not res!314941)) b!695713))

(assert (= (and b!695713 (not res!314925)) b!695719))

(assert (= (and b!695719 (not res!314927)) b!695720))

(assert (= (and b!695720 (not res!314931)) b!695745))

(assert (= (and b!695745 (not res!314938)) b!695722))

(assert (= (and b!695722 (not res!314940)) b!695705))

(assert (= start!66428 b!695746))

(assert (= start!66428 b!695740))

(assert (= start!66428 b!695702))

(assert (= start!66428 b!695741))

(assert (= b!695725 b!695715))

(assert (= b!695716 b!695725))

(assert (= (and start!66428 ((_ is Cons!7625) rules!1486)) b!695716))

(assert (= (and b!695707 condMapEmpty!3283) mapIsEmpty!3281))

(assert (= (and b!695707 (not condMapEmpty!3283)) mapNonEmpty!3282))

(assert (= b!695728 b!695707))

(assert (= b!695733 b!695728))

(assert (= b!695731 b!695733))

(assert (= (and b!695743 ((_ is LongMap!818) (v!17768 (underlying!1820 (cache!1177 cacheUp!502))))) b!695731))

(assert (= b!695739 b!695743))

(assert (= (and b!695730 ((_ is HashMap!790) (cache!1177 cacheUp!502))) b!695739))

(assert (= start!66428 b!695730))

(assert (= (and b!695726 condMapEmpty!3282) mapIsEmpty!3283))

(assert (= (and b!695726 (not condMapEmpty!3282)) mapNonEmpty!3283))

(assert (= b!695723 b!695726))

(assert (= b!695717 b!695723))

(assert (= b!695738 b!695717))

(assert (= (and b!695714 ((_ is LongMap!819) (v!17770 (underlying!1822 (cache!1178 cacheDown!515))))) b!695738))

(assert (= b!695729 b!695714))

(assert (= (and b!695712 ((_ is HashMap!791) (cache!1178 cacheDown!515))) b!695729))

(assert (= start!66428 b!695712))

(assert (= (and b!695706 condMapEmpty!3281) mapIsEmpty!3282))

(assert (= (and b!695706 (not condMapEmpty!3281)) mapNonEmpty!3281))

(assert (= b!695736 b!695706))

(assert (= b!695709 b!695736))

(assert (= b!695724 b!695709))

(assert (= (and b!695742 ((_ is LongMap!817) (v!17766 (underlying!1818 (cache!1176 cacheFindLongestMatch!74))))) b!695724))

(assert (= b!695721 b!695742))

(assert (= (and b!695708 ((_ is HashMap!789) (cache!1176 cacheFindLongestMatch!74))) b!695721))

(assert (= b!695708 b!695704))

(assert (= start!66428 b!695708))

(declare-fun m!951529 () Bool)

(assert (=> b!695719 m!951529))

(declare-fun m!951531 () Bool)

(assert (=> b!695719 m!951531))

(declare-fun m!951533 () Bool)

(assert (=> start!66428 m!951533))

(declare-fun m!951535 () Bool)

(assert (=> start!66428 m!951535))

(declare-fun m!951537 () Bool)

(assert (=> start!66428 m!951537))

(declare-fun m!951539 () Bool)

(assert (=> start!66428 m!951539))

(declare-fun m!951541 () Bool)

(assert (=> start!66428 m!951541))

(declare-fun m!951543 () Bool)

(assert (=> start!66428 m!951543))

(declare-fun m!951545 () Bool)

(assert (=> start!66428 m!951545))

(declare-fun m!951547 () Bool)

(assert (=> b!695723 m!951547))

(declare-fun m!951549 () Bool)

(assert (=> b!695723 m!951549))

(declare-fun m!951551 () Bool)

(assert (=> b!695741 m!951551))

(declare-fun m!951553 () Bool)

(assert (=> b!695700 m!951553))

(declare-fun m!951555 () Bool)

(assert (=> b!695722 m!951555))

(declare-fun m!951557 () Bool)

(assert (=> b!695736 m!951557))

(declare-fun m!951559 () Bool)

(assert (=> b!695736 m!951559))

(declare-fun m!951561 () Bool)

(assert (=> b!695713 m!951561))

(declare-fun m!951563 () Bool)

(assert (=> b!695720 m!951563))

(declare-fun m!951565 () Bool)

(assert (=> b!695704 m!951565))

(declare-fun m!951567 () Bool)

(assert (=> b!695745 m!951567))

(declare-fun m!951569 () Bool)

(assert (=> b!695702 m!951569))

(declare-fun m!951571 () Bool)

(assert (=> b!695728 m!951571))

(declare-fun m!951573 () Bool)

(assert (=> b!695728 m!951573))

(declare-fun m!951575 () Bool)

(assert (=> b!695727 m!951575))

(declare-fun m!951577 () Bool)

(assert (=> b!695740 m!951577))

(declare-fun m!951579 () Bool)

(assert (=> b!695703 m!951579))

(assert (=> b!695703 m!951579))

(declare-fun m!951581 () Bool)

(assert (=> b!695703 m!951581))

(declare-fun m!951583 () Bool)

(assert (=> b!695708 m!951583))

(declare-fun m!951585 () Bool)

(assert (=> b!695711 m!951585))

(declare-fun m!951587 () Bool)

(assert (=> b!695711 m!951587))

(declare-fun m!951589 () Bool)

(assert (=> b!695744 m!951589))

(declare-fun m!951591 () Bool)

(assert (=> b!695744 m!951591))

(declare-fun m!951593 () Bool)

(assert (=> b!695744 m!951593))

(declare-fun m!951595 () Bool)

(assert (=> b!695737 m!951595))

(declare-fun m!951597 () Bool)

(assert (=> b!695737 m!951597))

(declare-fun m!951599 () Bool)

(assert (=> b!695737 m!951599))

(declare-fun m!951601 () Bool)

(assert (=> mapNonEmpty!3282 m!951601))

(declare-fun m!951603 () Bool)

(assert (=> b!695735 m!951603))

(declare-fun m!951605 () Bool)

(assert (=> b!695735 m!951605))

(declare-fun m!951607 () Bool)

(assert (=> b!695735 m!951607))

(declare-fun m!951609 () Bool)

(assert (=> b!695735 m!951609))

(declare-fun m!951611 () Bool)

(assert (=> b!695746 m!951611))

(declare-fun m!951613 () Bool)

(assert (=> b!695734 m!951613))

(declare-fun m!951615 () Bool)

(assert (=> mapNonEmpty!3281 m!951615))

(declare-fun m!951617 () Bool)

(assert (=> b!695732 m!951617))

(declare-fun m!951619 () Bool)

(assert (=> b!695732 m!951619))

(assert (=> b!695732 m!951617))

(declare-fun m!951621 () Bool)

(assert (=> b!695732 m!951621))

(declare-fun m!951623 () Bool)

(assert (=> b!695732 m!951623))

(declare-fun m!951625 () Bool)

(assert (=> b!695732 m!951625))

(declare-fun m!951627 () Bool)

(assert (=> b!695701 m!951627))

(declare-fun m!951629 () Bool)

(assert (=> b!695710 m!951629))

(declare-fun m!951631 () Bool)

(assert (=> mapNonEmpty!3283 m!951631))

(declare-fun m!951633 () Bool)

(assert (=> b!695725 m!951633))

(declare-fun m!951635 () Bool)

(assert (=> b!695725 m!951635))

(check-sat b_and!63713 b_and!63721 (not b!695711) b_and!63717 (not b!695704) (not b!695745) (not b!695706) (not b!695727) (not b!695741) b_and!63715 (not b!695725) b_and!63711 (not b_next!19979) b_and!63709 (not mapNonEmpty!3282) (not mapNonEmpty!3281) (not b!695720) (not b_next!19977) (not b_next!19989) (not b!695736) (not b_next!19987) (not b!695732) (not b!695726) (not b!695722) b_and!63707 (not start!66428) (not b!695728) (not b!695740) (not b!695737) (not b_next!19981) (not b!695716) (not b!695735) (not b!695713) (not b!695746) (not b!695719) (not b!695710) (not b!695701) (not b!695700) (not b!695708) (not b_next!19985) (not mapNonEmpty!3283) (not b!695702) b_and!63719 (not b!695707) (not b_next!19983) (not b!695723) (not b!695744) (not b!695734) (not b!695703) (not b_next!19991))
(check-sat b_and!63713 b_and!63721 b_and!63715 b_and!63709 (not b_next!19987) b_and!63707 b_and!63717 (not b_next!19981) (not b_next!19985) b_and!63719 (not b_next!19983) (not b_next!19991) b_and!63711 (not b_next!19979) (not b_next!19977) (not b_next!19989))
(get-model)

(declare-fun d!233183 () Bool)

(assert (=> d!233183 (= (isEmpty!4906 rules!1486) ((_ is Nil!7625) rules!1486))))

(assert (=> b!695701 d!233183))

(declare-fun d!233185 () Bool)

(declare-fun list!3184 (Conc!2679) List!7640)

(assert (=> d!233185 (= (list!3183 (_1!4492 lt!285738)) (list!3184 (c!121860 (_1!4492 lt!285738))))))

(declare-fun bs!137948 () Bool)

(assert (= bs!137948 d!233185))

(declare-fun m!951637 () Bool)

(assert (=> bs!137948 m!951637))

(assert (=> b!695737 d!233185))

(declare-fun d!233187 () Bool)

(assert (=> d!233187 (= (list!3183 acc!372) (list!3184 (c!121860 acc!372)))))

(declare-fun bs!137949 () Bool)

(assert (= bs!137949 d!233187))

(declare-fun m!951639 () Bool)

(assert (=> bs!137949 m!951639))

(assert (=> b!695737 d!233187))

(declare-fun d!233189 () Bool)

(declare-fun e!438396 () Bool)

(assert (=> d!233189 e!438396))

(declare-fun res!314952 () Bool)

(assert (=> d!233189 (=> (not res!314952) (not e!438396))))

(declare-fun e!438398 () Bool)

(assert (=> d!233189 (= res!314952 e!438398)))

(declare-fun c!121867 () Bool)

(declare-fun lt!285754 () tuple2!8100)

(declare-fun size!6224 (BalanceConc!5370) Int)

(assert (=> d!233189 (= c!121867 (> (size!6224 (_1!4492 lt!285754)) 0))))

(declare-fun e!438395 () tuple2!8100)

(assert (=> d!233189 (= lt!285754 e!438395)))

(declare-fun c!121866 () Bool)

(declare-fun lt!285753 () Option!1718)

(assert (=> d!233189 (= c!121866 ((_ is Some!1717) lt!285753))))

(declare-fun maxPrefixZipperSequence!460 (LexerInterface!1333 List!7639 BalanceConc!5368) Option!1718)

(assert (=> d!233189 (= lt!285753 (maxPrefixZipperSequence!460 thiss!12529 rules!1486 treated!50))))

(assert (=> d!233189 (= (lexRec!175 thiss!12529 rules!1486 treated!50) lt!285754)))

(declare-fun b!695761 () Bool)

(declare-fun e!438397 () Bool)

(declare-fun isEmpty!4908 (BalanceConc!5370) Bool)

(assert (=> b!695761 (= e!438397 (not (isEmpty!4908 (_1!4492 lt!285754))))))

(declare-fun b!695762 () Bool)

(assert (=> b!695762 (= e!438398 e!438397)))

(declare-fun res!314950 () Bool)

(declare-fun size!6225 (BalanceConc!5368) Int)

(assert (=> b!695762 (= res!314950 (< (size!6225 (_2!4492 lt!285754)) (size!6225 treated!50)))))

(assert (=> b!695762 (=> (not res!314950) (not e!438397))))

(declare-fun b!695763 () Bool)

(declare-fun res!314951 () Bool)

(assert (=> b!695763 (=> (not res!314951) (not e!438396))))

(declare-datatypes ((tuple2!8114 0))(
  ( (tuple2!8115 (_1!4501 List!7640) (_2!4501 List!7638)) )
))
(declare-fun lexList!326 (LexerInterface!1333 List!7639 List!7638) tuple2!8114)

(assert (=> b!695763 (= res!314951 (= (list!3183 (_1!4492 lt!285754)) (_1!4501 (lexList!326 thiss!12529 rules!1486 (list!3182 treated!50)))))))

(declare-fun b!695764 () Bool)

(assert (=> b!695764 (= e!438396 (= (list!3182 (_2!4492 lt!285754)) (_2!4501 (lexList!326 thiss!12529 rules!1486 (list!3182 treated!50)))))))

(declare-fun b!695765 () Bool)

(assert (=> b!695765 (= e!438398 (= (list!3182 (_2!4492 lt!285754)) (list!3182 treated!50)))))

(declare-fun b!695766 () Bool)

(declare-fun lt!285752 () tuple2!8100)

(declare-fun prepend!262 (BalanceConc!5370 Token!2740) BalanceConc!5370)

(assert (=> b!695766 (= e!438395 (tuple2!8101 (prepend!262 (_1!4492 lt!285752) (_1!4499 (v!17771 lt!285753))) (_2!4492 lt!285752)))))

(assert (=> b!695766 (= lt!285752 (lexRec!175 thiss!12529 rules!1486 (_2!4499 (v!17771 lt!285753))))))

(declare-fun b!695767 () Bool)

(assert (=> b!695767 (= e!438395 (tuple2!8101 (BalanceConc!5371 Empty!2679) treated!50))))

(assert (= (and d!233189 c!121866) b!695766))

(assert (= (and d!233189 (not c!121866)) b!695767))

(assert (= (and d!233189 c!121867) b!695762))

(assert (= (and d!233189 (not c!121867)) b!695765))

(assert (= (and b!695762 res!314950) b!695761))

(assert (= (and d!233189 res!314952) b!695763))

(assert (= (and b!695763 res!314951) b!695764))

(declare-fun m!951641 () Bool)

(assert (=> b!695762 m!951641))

(declare-fun m!951643 () Bool)

(assert (=> b!695762 m!951643))

(declare-fun m!951645 () Bool)

(assert (=> d!233189 m!951645))

(declare-fun m!951647 () Bool)

(assert (=> d!233189 m!951647))

(declare-fun m!951649 () Bool)

(assert (=> b!695763 m!951649))

(assert (=> b!695763 m!951609))

(assert (=> b!695763 m!951609))

(declare-fun m!951651 () Bool)

(assert (=> b!695763 m!951651))

(declare-fun m!951653 () Bool)

(assert (=> b!695764 m!951653))

(assert (=> b!695764 m!951609))

(assert (=> b!695764 m!951609))

(assert (=> b!695764 m!951651))

(declare-fun m!951655 () Bool)

(assert (=> b!695766 m!951655))

(declare-fun m!951657 () Bool)

(assert (=> b!695766 m!951657))

(declare-fun m!951659 () Bool)

(assert (=> b!695761 m!951659))

(assert (=> b!695765 m!951653))

(assert (=> b!695765 m!951609))

(assert (=> b!695737 d!233189))

(declare-fun d!233191 () Bool)

(declare-fun validCacheMapUp!64 (MutableMap!790) Bool)

(assert (=> d!233191 (= (valid!696 (_2!4500 lt!285745)) (validCacheMapUp!64 (cache!1177 (_2!4500 lt!285745))))))

(declare-fun bs!137950 () Bool)

(assert (= bs!137950 d!233191))

(declare-fun m!951661 () Bool)

(assert (=> bs!137950 m!951661))

(assert (=> b!695720 d!233191))

(declare-fun d!233193 () Bool)

(declare-fun c!121870 () Bool)

(assert (=> d!233193 (= c!121870 ((_ is Node!2678) (c!121858 totalInput!378)))))

(declare-fun e!438403 () Bool)

(assert (=> d!233193 (= (inv!9745 (c!121858 totalInput!378)) e!438403)))

(declare-fun b!695774 () Bool)

(declare-fun inv!9753 (Conc!2678) Bool)

(assert (=> b!695774 (= e!438403 (inv!9753 (c!121858 totalInput!378)))))

(declare-fun b!695775 () Bool)

(declare-fun e!438404 () Bool)

(assert (=> b!695775 (= e!438403 e!438404)))

(declare-fun res!314955 () Bool)

(assert (=> b!695775 (= res!314955 (not ((_ is Leaf!3961) (c!121858 totalInput!378))))))

(assert (=> b!695775 (=> res!314955 e!438404)))

(declare-fun b!695776 () Bool)

(declare-fun inv!9754 (Conc!2678) Bool)

(assert (=> b!695776 (= e!438404 (inv!9754 (c!121858 totalInput!378)))))

(assert (= (and d!233193 c!121870) b!695774))

(assert (= (and d!233193 (not c!121870)) b!695775))

(assert (= (and b!695775 (not res!314955)) b!695776))

(declare-fun m!951663 () Bool)

(assert (=> b!695774 m!951663))

(declare-fun m!951665 () Bool)

(assert (=> b!695776 m!951665))

(assert (=> b!695702 d!233193))

(declare-fun d!233195 () Bool)

(declare-fun validCacheMapFindLongestMatch!10 (MutableMap!789 BalanceConc!5368) Bool)

(assert (=> d!233195 (= (valid!695 (_4!69 lt!285745)) (validCacheMapFindLongestMatch!10 (cache!1176 (_4!69 lt!285745)) (totalInput!1821 (_4!69 lt!285745))))))

(declare-fun bs!137951 () Bool)

(assert (= bs!137951 d!233195))

(declare-fun m!951667 () Bool)

(assert (=> bs!137951 m!951667))

(assert (=> b!695722 d!233195))

(declare-fun d!233197 () Bool)

(declare-fun c!121871 () Bool)

(assert (=> d!233197 (= c!121871 ((_ is Node!2678) (c!121858 (totalInput!1821 cacheFindLongestMatch!74))))))

(declare-fun e!438405 () Bool)

(assert (=> d!233197 (= (inv!9745 (c!121858 (totalInput!1821 cacheFindLongestMatch!74))) e!438405)))

(declare-fun b!695777 () Bool)

(assert (=> b!695777 (= e!438405 (inv!9753 (c!121858 (totalInput!1821 cacheFindLongestMatch!74))))))

(declare-fun b!695778 () Bool)

(declare-fun e!438406 () Bool)

(assert (=> b!695778 (= e!438405 e!438406)))

(declare-fun res!314956 () Bool)

(assert (=> b!695778 (= res!314956 (not ((_ is Leaf!3961) (c!121858 (totalInput!1821 cacheFindLongestMatch!74)))))))

(assert (=> b!695778 (=> res!314956 e!438406)))

(declare-fun b!695779 () Bool)

(assert (=> b!695779 (= e!438406 (inv!9754 (c!121858 (totalInput!1821 cacheFindLongestMatch!74))))))

(assert (= (and d!233197 c!121871) b!695777))

(assert (= (and d!233197 (not c!121871)) b!695778))

(assert (= (and b!695778 (not res!314956)) b!695779))

(declare-fun m!951669 () Bool)

(assert (=> b!695777 m!951669))

(declare-fun m!951671 () Bool)

(assert (=> b!695779 m!951671))

(assert (=> b!695704 d!233197))

(declare-fun d!233199 () Bool)

(assert (=> d!233199 (= (isEmpty!4907 (list!3182 (_2!4492 lt!285738))) ((_ is Nil!7624) (list!3182 (_2!4492 lt!285738))))))

(assert (=> b!695703 d!233199))

(declare-fun d!233201 () Bool)

(declare-fun list!3185 (Conc!2678) List!7638)

(assert (=> d!233201 (= (list!3182 (_2!4492 lt!285738)) (list!3185 (c!121858 (_2!4492 lt!285738))))))

(declare-fun bs!137952 () Bool)

(assert (= bs!137952 d!233201))

(declare-fun m!951673 () Bool)

(assert (=> bs!137952 m!951673))

(assert (=> b!695703 d!233201))

(declare-fun d!233203 () Bool)

(declare-fun c!121872 () Bool)

(assert (=> d!233203 (= c!121872 ((_ is Node!2678) (c!121858 treated!50)))))

(declare-fun e!438407 () Bool)

(assert (=> d!233203 (= (inv!9745 (c!121858 treated!50)) e!438407)))

(declare-fun b!695780 () Bool)

(assert (=> b!695780 (= e!438407 (inv!9753 (c!121858 treated!50)))))

(declare-fun b!695781 () Bool)

(declare-fun e!438408 () Bool)

(assert (=> b!695781 (= e!438407 e!438408)))

(declare-fun res!314957 () Bool)

(assert (=> b!695781 (= res!314957 (not ((_ is Leaf!3961) (c!121858 treated!50))))))

(assert (=> b!695781 (=> res!314957 e!438408)))

(declare-fun b!695782 () Bool)

(assert (=> b!695782 (= e!438408 (inv!9754 (c!121858 treated!50)))))

(assert (= (and d!233203 c!121872) b!695780))

(assert (= (and d!233203 (not c!121872)) b!695781))

(assert (= (and b!695781 (not res!314957)) b!695782))

(declare-fun m!951675 () Bool)

(assert (=> b!695780 m!951675))

(declare-fun m!951677 () Bool)

(assert (=> b!695782 m!951677))

(assert (=> b!695740 d!233203))

(declare-fun d!233205 () Bool)

(declare-fun res!314960 () Bool)

(declare-fun e!438411 () Bool)

(assert (=> d!233205 (=> (not res!314960) (not e!438411))))

(assert (=> d!233205 (= res!314960 ((_ is HashMap!789) (cache!1176 cacheFindLongestMatch!74)))))

(assert (=> d!233205 (= (inv!9750 cacheFindLongestMatch!74) e!438411)))

(declare-fun b!695785 () Bool)

(assert (=> b!695785 (= e!438411 (validCacheMapFindLongestMatch!10 (cache!1176 cacheFindLongestMatch!74) (totalInput!1821 cacheFindLongestMatch!74)))))

(assert (= (and d!233205 res!314960) b!695785))

(declare-fun m!951679 () Bool)

(assert (=> b!695785 m!951679))

(assert (=> start!66428 d!233205))

(declare-fun d!233207 () Bool)

(declare-fun isBalanced!702 (Conc!2679) Bool)

(assert (=> d!233207 (= (inv!9746 acc!372) (isBalanced!702 (c!121860 acc!372)))))

(declare-fun bs!137953 () Bool)

(assert (= bs!137953 d!233207))

(declare-fun m!951681 () Bool)

(assert (=> bs!137953 m!951681))

(assert (=> start!66428 d!233207))

(declare-fun d!233209 () Bool)

(declare-fun isBalanced!703 (Conc!2678) Bool)

(assert (=> d!233209 (= (inv!9747 input!870) (isBalanced!703 (c!121858 input!870)))))

(declare-fun bs!137954 () Bool)

(assert (= bs!137954 d!233209))

(declare-fun m!951683 () Bool)

(assert (=> bs!137954 m!951683))

(assert (=> start!66428 d!233209))

(declare-fun d!233211 () Bool)

(declare-fun res!314963 () Bool)

(declare-fun e!438414 () Bool)

(assert (=> d!233211 (=> (not res!314963) (not e!438414))))

(assert (=> d!233211 (= res!314963 ((_ is HashMap!791) (cache!1178 cacheDown!515)))))

(assert (=> d!233211 (= (inv!9749 cacheDown!515) e!438414)))

(declare-fun b!695788 () Bool)

(declare-fun validCacheMapDown!64 (MutableMap!791) Bool)

(assert (=> b!695788 (= e!438414 (validCacheMapDown!64 (cache!1178 cacheDown!515)))))

(assert (= (and d!233211 res!314963) b!695788))

(declare-fun m!951685 () Bool)

(assert (=> b!695788 m!951685))

(assert (=> start!66428 d!233211))

(declare-fun d!233213 () Bool)

(assert (=> d!233213 (= (inv!9747 treated!50) (isBalanced!703 (c!121858 treated!50)))))

(declare-fun bs!137955 () Bool)

(assert (= bs!137955 d!233213))

(declare-fun m!951687 () Bool)

(assert (=> bs!137955 m!951687))

(assert (=> start!66428 d!233213))

(declare-fun d!233215 () Bool)

(declare-fun res!314966 () Bool)

(declare-fun e!438417 () Bool)

(assert (=> d!233215 (=> (not res!314966) (not e!438417))))

(assert (=> d!233215 (= res!314966 ((_ is HashMap!790) (cache!1177 cacheUp!502)))))

(assert (=> d!233215 (= (inv!9748 cacheUp!502) e!438417)))

(declare-fun b!695791 () Bool)

(assert (=> b!695791 (= e!438417 (validCacheMapUp!64 (cache!1177 cacheUp!502)))))

(assert (= (and d!233215 res!314966) b!695791))

(declare-fun m!951689 () Bool)

(assert (=> b!695791 m!951689))

(assert (=> start!66428 d!233215))

(declare-fun d!233217 () Bool)

(assert (=> d!233217 (= (inv!9747 totalInput!378) (isBalanced!703 (c!121858 totalInput!378)))))

(declare-fun bs!137956 () Bool)

(assert (= bs!137956 d!233217))

(declare-fun m!951691 () Bool)

(assert (=> bs!137956 m!951691))

(assert (=> start!66428 d!233217))

(declare-fun d!233219 () Bool)

(declare-fun c!121873 () Bool)

(assert (=> d!233219 (= c!121873 ((_ is Node!2678) (c!121858 input!870)))))

(declare-fun e!438418 () Bool)

(assert (=> d!233219 (= (inv!9745 (c!121858 input!870)) e!438418)))

(declare-fun b!695792 () Bool)

(assert (=> b!695792 (= e!438418 (inv!9753 (c!121858 input!870)))))

(declare-fun b!695793 () Bool)

(declare-fun e!438419 () Bool)

(assert (=> b!695793 (= e!438418 e!438419)))

(declare-fun res!314967 () Bool)

(assert (=> b!695793 (= res!314967 (not ((_ is Leaf!3961) (c!121858 input!870))))))

(assert (=> b!695793 (=> res!314967 e!438419)))

(declare-fun b!695794 () Bool)

(assert (=> b!695794 (= e!438419 (inv!9754 (c!121858 input!870)))))

(assert (= (and d!233219 c!121873) b!695792))

(assert (= (and d!233219 (not c!121873)) b!695793))

(assert (= (and b!695793 (not res!314967)) b!695794))

(declare-fun m!951693 () Bool)

(assert (=> b!695792 m!951693))

(declare-fun m!951695 () Bool)

(assert (=> b!695794 m!951695))

(assert (=> b!695741 d!233219))

(declare-fun d!233221 () Bool)

(assert (=> d!233221 (= (array_inv!1005 (_keys!1113 (v!17769 (underlying!1821 (v!17770 (underlying!1822 (cache!1178 cacheDown!515))))))) (bvsge (size!6220 (_keys!1113 (v!17769 (underlying!1821 (v!17770 (underlying!1822 (cache!1178 cacheDown!515))))))) #b00000000000000000000000000000000))))

(assert (=> b!695723 d!233221))

(declare-fun d!233223 () Bool)

(assert (=> d!233223 (= (array_inv!1006 (_values!1098 (v!17769 (underlying!1821 (v!17770 (underlying!1822 (cache!1178 cacheDown!515))))))) (bvsge (size!6223 (_values!1098 (v!17769 (underlying!1821 (v!17770 (underlying!1822 (cache!1178 cacheDown!515))))))) #b00000000000000000000000000000000))))

(assert (=> b!695723 d!233223))

(declare-fun b!695803 () Bool)

(declare-fun res!314977 () Bool)

(declare-fun e!438422 () Bool)

(assert (=> b!695803 (=> (not res!314977) (not e!438422))))

(declare-fun ++!1984 (Conc!2679 Conc!2679) Conc!2679)

(assert (=> b!695803 (= res!314977 (isBalanced!702 (++!1984 (c!121860 acc!372) (c!121860 (_1!4492 lt!285735)))))))

(declare-fun b!695806 () Bool)

(declare-fun lt!285757 () BalanceConc!5370)

(declare-fun ++!1985 (List!7640 List!7640) List!7640)

(assert (=> b!695806 (= e!438422 (= (list!3183 lt!285757) (++!1985 (list!3183 acc!372) (list!3183 (_1!4492 lt!285735)))))))

(declare-fun d!233225 () Bool)

(assert (=> d!233225 e!438422))

(declare-fun res!314976 () Bool)

(assert (=> d!233225 (=> (not res!314976) (not e!438422))))

(declare-fun appendAssocInst!136 (Conc!2679 Conc!2679) Bool)

(assert (=> d!233225 (= res!314976 (appendAssocInst!136 (c!121860 acc!372) (c!121860 (_1!4492 lt!285735))))))

(assert (=> d!233225 (= lt!285757 (BalanceConc!5371 (++!1984 (c!121860 acc!372) (c!121860 (_1!4492 lt!285735)))))))

(assert (=> d!233225 (= (++!1982 acc!372 (_1!4492 lt!285735)) lt!285757)))

(declare-fun b!695805 () Bool)

(declare-fun res!314979 () Bool)

(assert (=> b!695805 (=> (not res!314979) (not e!438422))))

(declare-fun height!322 (Conc!2679) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!695805 (= res!314979 (>= (height!322 (++!1984 (c!121860 acc!372) (c!121860 (_1!4492 lt!285735)))) (max!0 (height!322 (c!121860 acc!372)) (height!322 (c!121860 (_1!4492 lt!285735))))))))

(declare-fun b!695804 () Bool)

(declare-fun res!314978 () Bool)

(assert (=> b!695804 (=> (not res!314978) (not e!438422))))

(assert (=> b!695804 (= res!314978 (<= (height!322 (++!1984 (c!121860 acc!372) (c!121860 (_1!4492 lt!285735)))) (+ (max!0 (height!322 (c!121860 acc!372)) (height!322 (c!121860 (_1!4492 lt!285735)))) 1)))))

(assert (= (and d!233225 res!314976) b!695803))

(assert (= (and b!695803 res!314977) b!695804))

(assert (= (and b!695804 res!314978) b!695805))

(assert (= (and b!695805 res!314979) b!695806))

(declare-fun m!951697 () Bool)

(assert (=> b!695803 m!951697))

(assert (=> b!695803 m!951697))

(declare-fun m!951699 () Bool)

(assert (=> b!695803 m!951699))

(declare-fun m!951701 () Bool)

(assert (=> b!695806 m!951701))

(assert (=> b!695806 m!951597))

(declare-fun m!951703 () Bool)

(assert (=> b!695806 m!951703))

(assert (=> b!695806 m!951597))

(assert (=> b!695806 m!951703))

(declare-fun m!951705 () Bool)

(assert (=> b!695806 m!951705))

(declare-fun m!951707 () Bool)

(assert (=> b!695805 m!951707))

(declare-fun m!951709 () Bool)

(assert (=> b!695805 m!951709))

(declare-fun m!951711 () Bool)

(assert (=> b!695805 m!951711))

(assert (=> b!695805 m!951697))

(assert (=> b!695805 m!951707))

(assert (=> b!695805 m!951697))

(declare-fun m!951713 () Bool)

(assert (=> b!695805 m!951713))

(assert (=> b!695805 m!951709))

(declare-fun m!951715 () Bool)

(assert (=> d!233225 m!951715))

(assert (=> d!233225 m!951697))

(assert (=> b!695804 m!951707))

(assert (=> b!695804 m!951709))

(assert (=> b!695804 m!951711))

(assert (=> b!695804 m!951697))

(assert (=> b!695804 m!951707))

(assert (=> b!695804 m!951697))

(assert (=> b!695804 m!951713))

(assert (=> b!695804 m!951709))

(assert (=> b!695732 d!233225))

(declare-fun d!233227 () Bool)

(declare-fun e!438424 () Bool)

(assert (=> d!233227 e!438424))

(declare-fun res!314982 () Bool)

(assert (=> d!233227 (=> (not res!314982) (not e!438424))))

(declare-fun e!438426 () Bool)

(assert (=> d!233227 (= res!314982 e!438426)))

(declare-fun c!121878 () Bool)

(declare-fun lt!285760 () tuple2!8100)

(assert (=> d!233227 (= c!121878 (> (size!6224 (_1!4492 lt!285760)) 0))))

(declare-fun e!438423 () tuple2!8100)

(assert (=> d!233227 (= lt!285760 e!438423)))

(declare-fun c!121877 () Bool)

(declare-fun lt!285759 () Option!1718)

(assert (=> d!233227 (= c!121877 ((_ is Some!1717) lt!285759))))

(assert (=> d!233227 (= lt!285759 (maxPrefixZipperSequence!460 thiss!12529 rules!1486 input!870))))

(assert (=> d!233227 (= (lexRec!175 thiss!12529 rules!1486 input!870) lt!285760)))

(declare-fun b!695807 () Bool)

(declare-fun e!438425 () Bool)

(assert (=> b!695807 (= e!438425 (not (isEmpty!4908 (_1!4492 lt!285760))))))

(declare-fun b!695808 () Bool)

(assert (=> b!695808 (= e!438426 e!438425)))

(declare-fun res!314980 () Bool)

(assert (=> b!695808 (= res!314980 (< (size!6225 (_2!4492 lt!285760)) (size!6225 input!870)))))

(assert (=> b!695808 (=> (not res!314980) (not e!438425))))

(declare-fun b!695809 () Bool)

(declare-fun res!314981 () Bool)

(assert (=> b!695809 (=> (not res!314981) (not e!438424))))

(assert (=> b!695809 (= res!314981 (= (list!3183 (_1!4492 lt!285760)) (_1!4501 (lexList!326 thiss!12529 rules!1486 (list!3182 input!870)))))))

(declare-fun b!695810 () Bool)

(assert (=> b!695810 (= e!438424 (= (list!3182 (_2!4492 lt!285760)) (_2!4501 (lexList!326 thiss!12529 rules!1486 (list!3182 input!870)))))))

(declare-fun b!695811 () Bool)

(assert (=> b!695811 (= e!438426 (= (list!3182 (_2!4492 lt!285760)) (list!3182 input!870)))))

(declare-fun b!695812 () Bool)

(declare-fun lt!285758 () tuple2!8100)

(assert (=> b!695812 (= e!438423 (tuple2!8101 (prepend!262 (_1!4492 lt!285758) (_1!4499 (v!17771 lt!285759))) (_2!4492 lt!285758)))))

(assert (=> b!695812 (= lt!285758 (lexRec!175 thiss!12529 rules!1486 (_2!4499 (v!17771 lt!285759))))))

(declare-fun b!695813 () Bool)

(assert (=> b!695813 (= e!438423 (tuple2!8101 (BalanceConc!5371 Empty!2679) input!870))))

(assert (= (and d!233227 c!121877) b!695812))

(assert (= (and d!233227 (not c!121877)) b!695813))

(assert (= (and d!233227 c!121878) b!695808))

(assert (= (and d!233227 (not c!121878)) b!695811))

(assert (= (and b!695808 res!314980) b!695807))

(assert (= (and d!233227 res!314982) b!695809))

(assert (= (and b!695809 res!314981) b!695810))

(declare-fun m!951717 () Bool)

(assert (=> b!695808 m!951717))

(declare-fun m!951719 () Bool)

(assert (=> b!695808 m!951719))

(declare-fun m!951721 () Bool)

(assert (=> d!233227 m!951721))

(declare-fun m!951723 () Bool)

(assert (=> d!233227 m!951723))

(declare-fun m!951725 () Bool)

(assert (=> b!695809 m!951725))

(assert (=> b!695809 m!951607))

(assert (=> b!695809 m!951607))

(declare-fun m!951727 () Bool)

(assert (=> b!695809 m!951727))

(declare-fun m!951729 () Bool)

(assert (=> b!695810 m!951729))

(assert (=> b!695810 m!951607))

(assert (=> b!695810 m!951607))

(assert (=> b!695810 m!951727))

(declare-fun m!951731 () Bool)

(assert (=> b!695812 m!951731))

(declare-fun m!951733 () Bool)

(assert (=> b!695812 m!951733))

(declare-fun m!951735 () Bool)

(assert (=> b!695807 m!951735))

(assert (=> b!695811 m!951729))

(assert (=> b!695811 m!951607))

(assert (=> b!695732 d!233227))

(declare-fun d!233229 () Bool)

(assert (=> d!233229 (= (list!3183 (++!1982 acc!372 (_1!4492 lt!285735))) (list!3184 (c!121860 (++!1982 acc!372 (_1!4492 lt!285735)))))))

(declare-fun bs!137957 () Bool)

(assert (= bs!137957 d!233229))

(declare-fun m!951737 () Bool)

(assert (=> bs!137957 m!951737))

(assert (=> b!695732 d!233229))

(declare-fun d!233231 () Bool)

(declare-fun e!438428 () Bool)

(assert (=> d!233231 e!438428))

(declare-fun res!314985 () Bool)

(assert (=> d!233231 (=> (not res!314985) (not e!438428))))

(declare-fun e!438430 () Bool)

(assert (=> d!233231 (= res!314985 e!438430)))

(declare-fun c!121880 () Bool)

(declare-fun lt!285763 () tuple2!8100)

(assert (=> d!233231 (= c!121880 (> (size!6224 (_1!4492 lt!285763)) 0))))

(declare-fun e!438427 () tuple2!8100)

(assert (=> d!233231 (= lt!285763 e!438427)))

(declare-fun c!121879 () Bool)

(declare-fun lt!285762 () Option!1718)

(assert (=> d!233231 (= c!121879 ((_ is Some!1717) lt!285762))))

(assert (=> d!233231 (= lt!285762 (maxPrefixZipperSequence!460 thiss!12529 rules!1486 totalInput!378))))

(assert (=> d!233231 (= (lexRec!175 thiss!12529 rules!1486 totalInput!378) lt!285763)))

(declare-fun b!695814 () Bool)

(declare-fun e!438429 () Bool)

(assert (=> b!695814 (= e!438429 (not (isEmpty!4908 (_1!4492 lt!285763))))))

(declare-fun b!695815 () Bool)

(assert (=> b!695815 (= e!438430 e!438429)))

(declare-fun res!314983 () Bool)

(assert (=> b!695815 (= res!314983 (< (size!6225 (_2!4492 lt!285763)) (size!6225 totalInput!378)))))

(assert (=> b!695815 (=> (not res!314983) (not e!438429))))

(declare-fun b!695816 () Bool)

(declare-fun res!314984 () Bool)

(assert (=> b!695816 (=> (not res!314984) (not e!438428))))

(assert (=> b!695816 (= res!314984 (= (list!3183 (_1!4492 lt!285763)) (_1!4501 (lexList!326 thiss!12529 rules!1486 (list!3182 totalInput!378)))))))

(declare-fun b!695817 () Bool)

(assert (=> b!695817 (= e!438428 (= (list!3182 (_2!4492 lt!285763)) (_2!4501 (lexList!326 thiss!12529 rules!1486 (list!3182 totalInput!378)))))))

(declare-fun b!695818 () Bool)

(assert (=> b!695818 (= e!438430 (= (list!3182 (_2!4492 lt!285763)) (list!3182 totalInput!378)))))

(declare-fun b!695819 () Bool)

(declare-fun lt!285761 () tuple2!8100)

(assert (=> b!695819 (= e!438427 (tuple2!8101 (prepend!262 (_1!4492 lt!285761) (_1!4499 (v!17771 lt!285762))) (_2!4492 lt!285761)))))

(assert (=> b!695819 (= lt!285761 (lexRec!175 thiss!12529 rules!1486 (_2!4499 (v!17771 lt!285762))))))

(declare-fun b!695820 () Bool)

(assert (=> b!695820 (= e!438427 (tuple2!8101 (BalanceConc!5371 Empty!2679) totalInput!378))))

(assert (= (and d!233231 c!121879) b!695819))

(assert (= (and d!233231 (not c!121879)) b!695820))

(assert (= (and d!233231 c!121880) b!695815))

(assert (= (and d!233231 (not c!121880)) b!695818))

(assert (= (and b!695815 res!314983) b!695814))

(assert (= (and d!233231 res!314985) b!695816))

(assert (= (and b!695816 res!314984) b!695817))

(declare-fun m!951739 () Bool)

(assert (=> b!695815 m!951739))

(declare-fun m!951741 () Bool)

(assert (=> b!695815 m!951741))

(declare-fun m!951743 () Bool)

(assert (=> d!233231 m!951743))

(declare-fun m!951745 () Bool)

(assert (=> d!233231 m!951745))

(declare-fun m!951747 () Bool)

(assert (=> b!695816 m!951747))

(assert (=> b!695816 m!951605))

(assert (=> b!695816 m!951605))

(declare-fun m!951749 () Bool)

(assert (=> b!695816 m!951749))

(declare-fun m!951751 () Bool)

(assert (=> b!695817 m!951751))

(assert (=> b!695817 m!951605))

(assert (=> b!695817 m!951605))

(assert (=> b!695817 m!951749))

(declare-fun m!951753 () Bool)

(assert (=> b!695819 m!951753))

(declare-fun m!951755 () Bool)

(assert (=> b!695819 m!951755))

(declare-fun m!951757 () Bool)

(assert (=> b!695814 m!951757))

(assert (=> b!695818 m!951751))

(assert (=> b!695818 m!951605))

(assert (=> b!695732 d!233231))

(declare-fun d!233233 () Bool)

(assert (=> d!233233 (= (list!3183 (_1!4492 lt!285741)) (list!3184 (c!121860 (_1!4492 lt!285741))))))

(declare-fun bs!137958 () Bool)

(assert (= bs!137958 d!233233))

(declare-fun m!951759 () Bool)

(assert (=> bs!137958 m!951759))

(assert (=> b!695732 d!233233))

(declare-fun d!233235 () Bool)

(assert (=> d!233235 (= (valid!696 cacheUp!502) (validCacheMapUp!64 (cache!1177 cacheUp!502)))))

(declare-fun bs!137959 () Bool)

(assert (= bs!137959 d!233235))

(assert (=> bs!137959 m!951689))

(assert (=> b!695734 d!233235))

(declare-fun d!233237 () Bool)

(declare-fun e!438435 () Bool)

(assert (=> d!233237 e!438435))

(declare-fun res!314991 () Bool)

(assert (=> d!233237 (=> (not res!314991) (not e!438435))))

(declare-fun lt!285766 () List!7638)

(declare-fun content!1190 (List!7638) (InoxSet C!4320))

(assert (=> d!233237 (= res!314991 (= (content!1190 lt!285766) ((_ map or) (content!1190 lt!285740) (content!1190 lt!285736))))))

(declare-fun e!438436 () List!7638)

(assert (=> d!233237 (= lt!285766 e!438436)))

(declare-fun c!121883 () Bool)

(assert (=> d!233237 (= c!121883 ((_ is Nil!7624) lt!285740))))

(assert (=> d!233237 (= (++!1983 lt!285740 lt!285736) lt!285766)))

(declare-fun b!695830 () Bool)

(assert (=> b!695830 (= e!438436 (Cons!7624 (h!13025 lt!285740) (++!1983 (t!87461 lt!285740) lt!285736)))))

(declare-fun b!695832 () Bool)

(assert (=> b!695832 (= e!438435 (or (not (= lt!285736 Nil!7624)) (= lt!285766 lt!285740)))))

(declare-fun b!695831 () Bool)

(declare-fun res!314990 () Bool)

(assert (=> b!695831 (=> (not res!314990) (not e!438435))))

(declare-fun size!6226 (List!7638) Int)

(assert (=> b!695831 (= res!314990 (= (size!6226 lt!285766) (+ (size!6226 lt!285740) (size!6226 lt!285736))))))

(declare-fun b!695829 () Bool)

(assert (=> b!695829 (= e!438436 lt!285736)))

(assert (= (and d!233237 c!121883) b!695829))

(assert (= (and d!233237 (not c!121883)) b!695830))

(assert (= (and d!233237 res!314991) b!695831))

(assert (= (and b!695831 res!314990) b!695832))

(declare-fun m!951761 () Bool)

(assert (=> d!233237 m!951761))

(declare-fun m!951763 () Bool)

(assert (=> d!233237 m!951763))

(declare-fun m!951765 () Bool)

(assert (=> d!233237 m!951765))

(declare-fun m!951767 () Bool)

(assert (=> b!695830 m!951767))

(declare-fun m!951769 () Bool)

(assert (=> b!695831 m!951769))

(declare-fun m!951771 () Bool)

(assert (=> b!695831 m!951771))

(declare-fun m!951773 () Bool)

(assert (=> b!695831 m!951773))

(assert (=> b!695735 d!233237))

(declare-fun d!233239 () Bool)

(assert (=> d!233239 (= (list!3182 totalInput!378) (list!3185 (c!121858 totalInput!378)))))

(declare-fun bs!137960 () Bool)

(assert (= bs!137960 d!233239))

(declare-fun m!951775 () Bool)

(assert (=> bs!137960 m!951775))

(assert (=> b!695735 d!233239))

(declare-fun d!233241 () Bool)

(assert (=> d!233241 (= (list!3182 input!870) (list!3185 (c!121858 input!870)))))

(declare-fun bs!137961 () Bool)

(assert (= bs!137961 d!233241))

(declare-fun m!951777 () Bool)

(assert (=> bs!137961 m!951777))

(assert (=> b!695735 d!233241))

(declare-fun d!233243 () Bool)

(assert (=> d!233243 (= (list!3182 treated!50) (list!3185 (c!121858 treated!50)))))

(declare-fun bs!137962 () Bool)

(assert (= bs!137962 d!233243))

(declare-fun m!951779 () Bool)

(assert (=> bs!137962 m!951779))

(assert (=> b!695735 d!233243))

(declare-fun d!233245 () Bool)

(assert (=> d!233245 true))

(declare-fun lt!285769 () Bool)

(declare-fun lambda!21598 () Int)

(declare-fun forall!1963 (List!7639 Int) Bool)

(assert (=> d!233245 (= lt!285769 (forall!1963 rules!1486 lambda!21598))))

(declare-fun e!438441 () Bool)

(assert (=> d!233245 (= lt!285769 e!438441)))

(declare-fun res!314997 () Bool)

(assert (=> d!233245 (=> res!314997 e!438441)))

(assert (=> d!233245 (= res!314997 (not ((_ is Cons!7625) rules!1486)))))

(assert (=> d!233245 (= (rulesValidInductive!527 thiss!12529 rules!1486) lt!285769)))

(declare-fun b!695837 () Bool)

(declare-fun e!438442 () Bool)

(assert (=> b!695837 (= e!438441 e!438442)))

(declare-fun res!314996 () Bool)

(assert (=> b!695837 (=> (not res!314996) (not e!438442))))

(declare-fun ruleValid!465 (LexerInterface!1333 Rule!2840) Bool)

(assert (=> b!695837 (= res!314996 (ruleValid!465 thiss!12529 (h!13026 rules!1486)))))

(declare-fun b!695838 () Bool)

(assert (=> b!695838 (= e!438442 (rulesValidInductive!527 thiss!12529 (t!87462 rules!1486)))))

(assert (= (and d!233245 (not res!314997)) b!695837))

(assert (= (and b!695837 res!314996) b!695838))

(declare-fun m!951781 () Bool)

(assert (=> d!233245 m!951781))

(declare-fun m!951783 () Bool)

(assert (=> b!695837 m!951783))

(declare-fun m!951785 () Bool)

(assert (=> b!695838 m!951785))

(assert (=> b!695719 d!233245))

(declare-fun d!233247 () Bool)

(declare-fun e!438444 () Bool)

(assert (=> d!233247 e!438444))

(declare-fun res!315000 () Bool)

(assert (=> d!233247 (=> (not res!315000) (not e!438444))))

(declare-fun e!438446 () Bool)

(assert (=> d!233247 (= res!315000 e!438446)))

(declare-fun c!121885 () Bool)

(declare-fun lt!285772 () tuple2!8100)

(assert (=> d!233247 (= c!121885 (> (size!6224 (_1!4492 lt!285772)) 0))))

(declare-fun e!438443 () tuple2!8100)

(assert (=> d!233247 (= lt!285772 e!438443)))

(declare-fun c!121884 () Bool)

(declare-fun lt!285771 () Option!1718)

(assert (=> d!233247 (= c!121884 ((_ is Some!1717) lt!285771))))

(assert (=> d!233247 (= lt!285771 (maxPrefixZipperSequence!460 thiss!12529 rules!1486 (_2!4499 (v!17771 (_1!4500 lt!285745)))))))

(assert (=> d!233247 (= (lexRec!175 thiss!12529 rules!1486 (_2!4499 (v!17771 (_1!4500 lt!285745)))) lt!285772)))

(declare-fun b!695841 () Bool)

(declare-fun e!438445 () Bool)

(assert (=> b!695841 (= e!438445 (not (isEmpty!4908 (_1!4492 lt!285772))))))

(declare-fun b!695842 () Bool)

(assert (=> b!695842 (= e!438446 e!438445)))

(declare-fun res!314998 () Bool)

(assert (=> b!695842 (= res!314998 (< (size!6225 (_2!4492 lt!285772)) (size!6225 (_2!4499 (v!17771 (_1!4500 lt!285745))))))))

(assert (=> b!695842 (=> (not res!314998) (not e!438445))))

(declare-fun b!695843 () Bool)

(declare-fun res!314999 () Bool)

(assert (=> b!695843 (=> (not res!314999) (not e!438444))))

(assert (=> b!695843 (= res!314999 (= (list!3183 (_1!4492 lt!285772)) (_1!4501 (lexList!326 thiss!12529 rules!1486 (list!3182 (_2!4499 (v!17771 (_1!4500 lt!285745))))))))))

(declare-fun b!695844 () Bool)

(assert (=> b!695844 (= e!438444 (= (list!3182 (_2!4492 lt!285772)) (_2!4501 (lexList!326 thiss!12529 rules!1486 (list!3182 (_2!4499 (v!17771 (_1!4500 lt!285745))))))))))

(declare-fun b!695845 () Bool)

(assert (=> b!695845 (= e!438446 (= (list!3182 (_2!4492 lt!285772)) (list!3182 (_2!4499 (v!17771 (_1!4500 lt!285745))))))))

(declare-fun b!695846 () Bool)

(declare-fun lt!285770 () tuple2!8100)

(assert (=> b!695846 (= e!438443 (tuple2!8101 (prepend!262 (_1!4492 lt!285770) (_1!4499 (v!17771 lt!285771))) (_2!4492 lt!285770)))))

(assert (=> b!695846 (= lt!285770 (lexRec!175 thiss!12529 rules!1486 (_2!4499 (v!17771 lt!285771))))))

(declare-fun b!695847 () Bool)

(assert (=> b!695847 (= e!438443 (tuple2!8101 (BalanceConc!5371 Empty!2679) (_2!4499 (v!17771 (_1!4500 lt!285745)))))))

(assert (= (and d!233247 c!121884) b!695846))

(assert (= (and d!233247 (not c!121884)) b!695847))

(assert (= (and d!233247 c!121885) b!695842))

(assert (= (and d!233247 (not c!121885)) b!695845))

(assert (= (and b!695842 res!314998) b!695841))

(assert (= (and d!233247 res!315000) b!695843))

(assert (= (and b!695843 res!314999) b!695844))

(declare-fun m!951787 () Bool)

(assert (=> b!695842 m!951787))

(declare-fun m!951789 () Bool)

(assert (=> b!695842 m!951789))

(declare-fun m!951791 () Bool)

(assert (=> d!233247 m!951791))

(declare-fun m!951793 () Bool)

(assert (=> d!233247 m!951793))

(declare-fun m!951795 () Bool)

(assert (=> b!695843 m!951795))

(declare-fun m!951797 () Bool)

(assert (=> b!695843 m!951797))

(assert (=> b!695843 m!951797))

(declare-fun m!951799 () Bool)

(assert (=> b!695843 m!951799))

(declare-fun m!951801 () Bool)

(assert (=> b!695844 m!951801))

(assert (=> b!695844 m!951797))

(assert (=> b!695844 m!951797))

(assert (=> b!695844 m!951799))

(declare-fun m!951803 () Bool)

(assert (=> b!695846 m!951803))

(declare-fun m!951805 () Bool)

(assert (=> b!695846 m!951805))

(declare-fun m!951807 () Bool)

(assert (=> b!695841 m!951807))

(assert (=> b!695845 m!951801))

(assert (=> b!695845 m!951797))

(assert (=> b!695719 d!233247))

(declare-fun d!233249 () Bool)

(declare-fun res!315003 () Bool)

(declare-fun e!438449 () Bool)

(assert (=> d!233249 (=> (not res!315003) (not e!438449))))

(declare-fun rulesValid!531 (LexerInterface!1333 List!7639) Bool)

(assert (=> d!233249 (= res!315003 (rulesValid!531 thiss!12529 rules!1486))))

(assert (=> d!233249 (= (rulesInvariant!1261 thiss!12529 rules!1486) e!438449)))

(declare-fun b!695850 () Bool)

(declare-datatypes ((List!7645 0))(
  ( (Nil!7631) (Cons!7631 (h!13032 String!9546) (t!87468 List!7645)) )
))
(declare-fun noDuplicateTag!531 (LexerInterface!1333 List!7639 List!7645) Bool)

(assert (=> b!695850 (= e!438449 (noDuplicateTag!531 thiss!12529 rules!1486 Nil!7631))))

(assert (= (and d!233249 res!315003) b!695850))

(declare-fun m!951809 () Bool)

(assert (=> d!233249 m!951809))

(declare-fun m!951811 () Bool)

(assert (=> b!695850 m!951811))

(assert (=> b!695700 d!233249))

(declare-fun d!233251 () Bool)

(assert (=> d!233251 (= (array_inv!1005 (_keys!1111 (v!17765 (underlying!1817 (v!17766 (underlying!1818 (cache!1176 cacheFindLongestMatch!74))))))) (bvsge (size!6220 (_keys!1111 (v!17765 (underlying!1817 (v!17766 (underlying!1818 (cache!1176 cacheFindLongestMatch!74))))))) #b00000000000000000000000000000000))))

(assert (=> b!695736 d!233251))

(declare-fun d!233253 () Bool)

(assert (=> d!233253 (= (array_inv!1008 (_values!1096 (v!17765 (underlying!1817 (v!17766 (underlying!1818 (cache!1176 cacheFindLongestMatch!74))))))) (bvsge (size!6221 (_values!1096 (v!17765 (underlying!1817 (v!17766 (underlying!1818 (cache!1176 cacheFindLongestMatch!74))))))) #b00000000000000000000000000000000))))

(assert (=> b!695736 d!233253))

(declare-fun d!233255 () Bool)

(assert (=> d!233255 (= (valid!695 cacheFindLongestMatch!74) (validCacheMapFindLongestMatch!10 (cache!1176 cacheFindLongestMatch!74) (totalInput!1821 cacheFindLongestMatch!74)))))

(declare-fun bs!137963 () Bool)

(assert (= bs!137963 d!233255))

(assert (=> bs!137963 m!951679))

(assert (=> b!695710 d!233255))

(declare-fun d!233257 () Bool)

(assert (=> d!233257 (= (list!3182 (_2!4492 lt!285741)) (list!3185 (c!121858 (_2!4492 lt!285741))))))

(declare-fun bs!137964 () Bool)

(assert (= bs!137964 d!233257))

(declare-fun m!951813 () Bool)

(assert (=> bs!137964 m!951813))

(assert (=> b!695711 d!233257))

(declare-fun d!233259 () Bool)

(assert (=> d!233259 (= (list!3182 (_2!4492 lt!285735)) (list!3185 (c!121858 (_2!4492 lt!285735))))))

(declare-fun bs!137965 () Bool)

(assert (= bs!137965 d!233259))

(declare-fun m!951815 () Bool)

(assert (=> bs!137965 m!951815))

(assert (=> b!695711 d!233259))

(declare-fun b!695863 () Bool)

(declare-datatypes ((tuple4!140 0))(
  ( (tuple4!141 (_1!4502 Option!1718) (_2!4502 CacheUp!412) (_3!444 CacheFindLongestMatch!74) (_4!70 CacheDown!418)) )
))
(declare-fun e!438454 () tuple4!140)

(declare-fun lt!285798 () tuple4!138)

(assert (=> b!695863 (= e!438454 (tuple4!141 (_1!4500 lt!285798) (_2!4500 lt!285798) (_4!69 lt!285798) (_3!443 lt!285798)))))

(declare-fun call!43661 () tuple4!138)

(assert (=> b!695863 (= lt!285798 call!43661)))

(declare-fun b!695864 () Bool)

(declare-fun res!315014 () Bool)

(declare-fun e!438455 () Bool)

(assert (=> b!695864 (=> (not res!315014) (not e!438455))))

(declare-fun lt!285795 () tuple4!138)

(assert (=> b!695864 (= res!315014 (valid!696 (_2!4500 lt!285795)))))

(declare-fun b!695865 () Bool)

(declare-fun res!315013 () Bool)

(assert (=> b!695865 (=> (not res!315013) (not e!438455))))

(assert (=> b!695865 (= res!315013 (valid!697 (_3!443 lt!285795)))))

(declare-fun b!695866 () Bool)

(declare-fun res!315012 () Bool)

(assert (=> b!695866 (=> (not res!315012) (not e!438455))))

(assert (=> b!695866 (= res!315012 (valid!695 (_4!69 lt!285795)))))

(declare-fun bm!43656 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2Mem!4 (LexerInterface!1333 Rule!2840 BalanceConc!5368 BalanceConc!5368 CacheUp!412 CacheDown!418 CacheFindLongestMatch!74) tuple4!138)

(assert (=> bm!43656 (= call!43661 (maxPrefixOneRuleZipperSequenceV2Mem!4 thiss!12529 (h!13026 rules!1486) input!870 totalInput!378 cacheUp!502 cacheDown!515 cacheFindLongestMatch!74))))

(declare-fun b!695867 () Bool)

(assert (=> b!695867 (= e!438455 (= (totalInput!1821 (_4!69 lt!285795)) totalInput!378))))

(declare-fun b!695868 () Bool)

(declare-fun lt!285796 () tuple4!138)

(declare-fun lt!285791 () tuple4!138)

(assert (=> b!695868 (= e!438454 (tuple4!141 (ite (and ((_ is None!1717) (_1!4500 lt!285796)) ((_ is None!1717) (_1!4500 lt!285791))) None!1717 (ite ((_ is None!1717) (_1!4500 lt!285791)) (_1!4500 lt!285796) (ite ((_ is None!1717) (_1!4500 lt!285796)) (_1!4500 lt!285791) (ite (>= (size!6219 (_1!4499 (v!17771 (_1!4500 lt!285796)))) (size!6219 (_1!4499 (v!17771 (_1!4500 lt!285791))))) (_1!4500 lt!285796) (_1!4500 lt!285791))))) (_2!4500 lt!285791) (_4!69 lt!285791) (_3!443 lt!285791)))))

(assert (=> b!695868 (= lt!285796 call!43661)))

(assert (=> b!695868 (= lt!285791 (maxPrefixZipperSequenceV2Mem!9 thiss!12529 (t!87462 rules!1486) input!870 totalInput!378 (_2!4500 lt!285796) (_3!443 lt!285796) (_4!69 lt!285796)))))

(declare-fun d!233261 () Bool)

(assert (=> d!233261 e!438455))

(declare-fun res!315015 () Bool)

(assert (=> d!233261 (=> (not res!315015) (not e!438455))))

(declare-fun maxPrefixZipperSequenceV2!130 (LexerInterface!1333 List!7639 BalanceConc!5368 BalanceConc!5368) Option!1718)

(assert (=> d!233261 (= res!315015 (= (_1!4500 lt!285795) (maxPrefixZipperSequenceV2!130 thiss!12529 rules!1486 input!870 totalInput!378)))))

(declare-fun lt!285793 () tuple4!140)

(assert (=> d!233261 (= lt!285795 (tuple4!139 (_1!4502 lt!285793) (_2!4502 lt!285793) (_4!70 lt!285793) (_3!444 lt!285793)))))

(assert (=> d!233261 (= lt!285793 e!438454)))

(declare-fun c!121888 () Bool)

(assert (=> d!233261 (= c!121888 (and ((_ is Cons!7625) rules!1486) ((_ is Nil!7625) (t!87462 rules!1486))))))

(declare-fun lt!285797 () Unit!12690)

(declare-fun lt!285799 () Unit!12690)

(assert (=> d!233261 (= lt!285797 lt!285799)))

(declare-fun lt!285792 () List!7638)

(declare-fun lt!285794 () List!7638)

(declare-fun isPrefix!919 (List!7638 List!7638) Bool)

(assert (=> d!233261 (isPrefix!919 lt!285792 lt!285794)))

(declare-fun lemmaIsPrefixRefl!630 (List!7638 List!7638) Unit!12690)

(assert (=> d!233261 (= lt!285799 (lemmaIsPrefixRefl!630 lt!285792 lt!285794))))

(assert (=> d!233261 (= lt!285794 (list!3182 input!870))))

(assert (=> d!233261 (= lt!285792 (list!3182 input!870))))

(assert (=> d!233261 (rulesValidInductive!527 thiss!12529 rules!1486)))

(assert (=> d!233261 (= (maxPrefixZipperSequenceV2Mem!9 thiss!12529 rules!1486 input!870 totalInput!378 cacheUp!502 cacheDown!515 cacheFindLongestMatch!74) lt!285795)))

(assert (= (and d!233261 c!121888) b!695863))

(assert (= (and d!233261 (not c!121888)) b!695868))

(assert (= (or b!695863 b!695868) bm!43656))

(assert (= (and d!233261 res!315015) b!695864))

(assert (= (and b!695864 res!315014) b!695865))

(assert (= (and b!695865 res!315013) b!695866))

(assert (= (and b!695866 res!315012) b!695867))

(declare-fun m!951817 () Bool)

(assert (=> b!695865 m!951817))

(declare-fun m!951819 () Bool)

(assert (=> b!695864 m!951819))

(declare-fun m!951821 () Bool)

(assert (=> b!695868 m!951821))

(declare-fun m!951823 () Bool)

(assert (=> d!233261 m!951823))

(declare-fun m!951825 () Bool)

(assert (=> d!233261 m!951825))

(declare-fun m!951827 () Bool)

(assert (=> d!233261 m!951827))

(assert (=> d!233261 m!951529))

(assert (=> d!233261 m!951607))

(declare-fun m!951829 () Bool)

(assert (=> bm!43656 m!951829))

(declare-fun m!951831 () Bool)

(assert (=> b!695866 m!951831))

(assert (=> b!695713 d!233261))

(declare-fun d!233263 () Bool)

(assert (=> d!233263 (= (inv!9740 (tag!1782 (h!13026 rules!1486))) (= (mod (str.len (value!48984 (tag!1782 (h!13026 rules!1486)))) 2) 0))))

(assert (=> b!695725 d!233263))

(declare-fun d!233265 () Bool)

(declare-fun res!315018 () Bool)

(declare-fun e!438458 () Bool)

(assert (=> d!233265 (=> (not res!315018) (not e!438458))))

(declare-fun semiInverseModEq!574 (Int Int) Bool)

(assert (=> d!233265 (= res!315018 (semiInverseModEq!574 (toChars!2343 (transformation!1520 (h!13026 rules!1486))) (toValue!2484 (transformation!1520 (h!13026 rules!1486)))))))

(assert (=> d!233265 (= (inv!9751 (transformation!1520 (h!13026 rules!1486))) e!438458)))

(declare-fun b!695871 () Bool)

(declare-fun equivClasses!549 (Int Int) Bool)

(assert (=> b!695871 (= e!438458 (equivClasses!549 (toChars!2343 (transformation!1520 (h!13026 rules!1486))) (toValue!2484 (transformation!1520 (h!13026 rules!1486)))))))

(assert (= (and d!233265 res!315018) b!695871))

(declare-fun m!951833 () Bool)

(assert (=> d!233265 m!951833))

(declare-fun m!951835 () Bool)

(assert (=> b!695871 m!951835))

(assert (=> b!695725 d!233265))

(declare-fun d!233267 () Bool)

(declare-fun e!438461 () Bool)

(assert (=> d!233267 e!438461))

(declare-fun res!315021 () Bool)

(assert (=> d!233267 (=> res!315021 e!438461)))

(declare-fun lt!285802 () Bool)

(assert (=> d!233267 (= res!315021 (not lt!285802))))

(declare-fun drop!358 (List!7638 Int) List!7638)

(assert (=> d!233267 (= lt!285802 (= lt!285736 (drop!358 lt!285737 (- (size!6226 lt!285737) (size!6226 lt!285736)))))))

(assert (=> d!233267 (= (isSuffix!140 lt!285736 lt!285737) lt!285802)))

(declare-fun b!695874 () Bool)

(assert (=> b!695874 (= e!438461 (>= (size!6226 lt!285737) (size!6226 lt!285736)))))

(assert (= (and d!233267 (not res!315021)) b!695874))

(declare-fun m!951837 () Bool)

(assert (=> d!233267 m!951837))

(assert (=> d!233267 m!951773))

(declare-fun m!951839 () Bool)

(assert (=> d!233267 m!951839))

(assert (=> b!695874 m!951837))

(assert (=> b!695874 m!951773))

(assert (=> b!695744 d!233267))

(declare-fun d!233269 () Bool)

(declare-fun e!438462 () Bool)

(assert (=> d!233269 e!438462))

(declare-fun res!315022 () Bool)

(assert (=> d!233269 (=> res!315022 e!438462)))

(declare-fun lt!285803 () Bool)

(assert (=> d!233269 (= res!315022 (not lt!285803))))

(assert (=> d!233269 (= lt!285803 (= lt!285736 (drop!358 lt!285743 (- (size!6226 lt!285743) (size!6226 lt!285736)))))))

(assert (=> d!233269 (= (isSuffix!140 lt!285736 lt!285743) lt!285803)))

(declare-fun b!695875 () Bool)

(assert (=> b!695875 (= e!438462 (>= (size!6226 lt!285743) (size!6226 lt!285736)))))

(assert (= (and d!233269 (not res!315022)) b!695875))

(declare-fun m!951841 () Bool)

(assert (=> d!233269 m!951841))

(assert (=> d!233269 m!951773))

(declare-fun m!951843 () Bool)

(assert (=> d!233269 m!951843))

(assert (=> b!695875 m!951841))

(assert (=> b!695875 m!951773))

(assert (=> b!695744 d!233269))

(declare-fun d!233271 () Bool)

(assert (=> d!233271 (isSuffix!140 lt!285736 (++!1983 lt!285740 lt!285736))))

(declare-fun lt!285806 () Unit!12690)

(declare-fun choose!4699 (List!7638 List!7638) Unit!12690)

(assert (=> d!233271 (= lt!285806 (choose!4699 lt!285740 lt!285736))))

(assert (=> d!233271 (= (lemmaConcatTwoListThenFSndIsSuffix!140 lt!285740 lt!285736) lt!285806)))

(declare-fun bs!137966 () Bool)

(assert (= bs!137966 d!233271))

(assert (=> bs!137966 m!951603))

(assert (=> bs!137966 m!951603))

(declare-fun m!951845 () Bool)

(assert (=> bs!137966 m!951845))

(declare-fun m!951847 () Bool)

(assert (=> bs!137966 m!951847))

(assert (=> b!695744 d!233271))

(declare-fun d!233273 () Bool)

(assert (=> d!233273 (= (inv!9747 (totalInput!1821 cacheFindLongestMatch!74)) (isBalanced!703 (c!121858 (totalInput!1821 cacheFindLongestMatch!74))))))

(declare-fun bs!137967 () Bool)

(assert (= bs!137967 d!233273))

(declare-fun m!951849 () Bool)

(assert (=> bs!137967 m!951849))

(assert (=> b!695708 d!233273))

(declare-fun d!233275 () Bool)

(declare-fun c!121891 () Bool)

(assert (=> d!233275 (= c!121891 ((_ is Node!2679) (c!121860 acc!372)))))

(declare-fun e!438467 () Bool)

(assert (=> d!233275 (= (inv!9752 (c!121860 acc!372)) e!438467)))

(declare-fun b!695882 () Bool)

(declare-fun inv!9755 (Conc!2679) Bool)

(assert (=> b!695882 (= e!438467 (inv!9755 (c!121860 acc!372)))))

(declare-fun b!695883 () Bool)

(declare-fun e!438468 () Bool)

(assert (=> b!695883 (= e!438467 e!438468)))

(declare-fun res!315025 () Bool)

(assert (=> b!695883 (= res!315025 (not ((_ is Leaf!3962) (c!121860 acc!372))))))

(assert (=> b!695883 (=> res!315025 e!438468)))

(declare-fun b!695884 () Bool)

(declare-fun inv!9756 (Conc!2679) Bool)

(assert (=> b!695884 (= e!438468 (inv!9756 (c!121860 acc!372)))))

(assert (= (and d!233275 c!121891) b!695882))

(assert (= (and d!233275 (not c!121891)) b!695883))

(assert (= (and b!695883 (not res!315025)) b!695884))

(declare-fun m!951851 () Bool)

(assert (=> b!695882 m!951851))

(declare-fun m!951853 () Bool)

(assert (=> b!695884 m!951853))

(assert (=> b!695746 d!233275))

(declare-fun d!233277 () Bool)

(assert (=> d!233277 (= (valid!697 (_3!443 lt!285745)) (validCacheMapDown!64 (cache!1178 (_3!443 lt!285745))))))

(declare-fun bs!137968 () Bool)

(assert (= bs!137968 d!233277))

(declare-fun m!951855 () Bool)

(assert (=> bs!137968 m!951855))

(assert (=> b!695745 d!233277))

(declare-fun d!233279 () Bool)

(assert (=> d!233279 (= (valid!697 cacheDown!515) (validCacheMapDown!64 (cache!1178 cacheDown!515)))))

(declare-fun bs!137969 () Bool)

(assert (= bs!137969 d!233279))

(assert (=> bs!137969 m!951685))

(assert (=> b!695727 d!233279))

(declare-fun d!233281 () Bool)

(assert (=> d!233281 (= (array_inv!1005 (_keys!1112 (v!17767 (underlying!1819 (v!17768 (underlying!1820 (cache!1177 cacheUp!502))))))) (bvsge (size!6220 (_keys!1112 (v!17767 (underlying!1819 (v!17768 (underlying!1820 (cache!1177 cacheUp!502))))))) #b00000000000000000000000000000000))))

(assert (=> b!695728 d!233281))

(declare-fun d!233283 () Bool)

(assert (=> d!233283 (= (array_inv!1007 (_values!1097 (v!17767 (underlying!1819 (v!17768 (underlying!1820 (cache!1177 cacheUp!502))))))) (bvsge (size!6222 (_values!1097 (v!17767 (underlying!1819 (v!17768 (underlying!1820 (cache!1177 cacheUp!502))))))) #b00000000000000000000000000000000))))

(assert (=> b!695728 d!233283))

(declare-fun condMapEmpty!3286 () Bool)

(declare-fun mapDefault!3286 () List!7643)

(assert (=> mapNonEmpty!3282 (= condMapEmpty!3286 (= mapRest!3283 ((as const (Array (_ BitVec 32) List!7643)) mapDefault!3286)))))

(declare-fun e!438484 () Bool)

(declare-fun mapRes!3286 () Bool)

(assert (=> mapNonEmpty!3282 (= tp!211029 (and e!438484 mapRes!3286))))

(declare-fun mapIsEmpty!3286 () Bool)

(assert (=> mapIsEmpty!3286 mapRes!3286))

(declare-fun b!695899 () Bool)

(declare-fun e!438483 () Bool)

(declare-fun tp!211054 () Bool)

(assert (=> b!695899 (= e!438483 tp!211054)))

(declare-fun setIsEmpty!3961 () Bool)

(declare-fun setRes!3962 () Bool)

(assert (=> setIsEmpty!3961 setRes!3962))

(declare-fun b!695900 () Bool)

(declare-fun e!438485 () Bool)

(declare-fun tp!211057 () Bool)

(assert (=> b!695900 (= e!438485 tp!211057)))

(declare-fun b!695901 () Bool)

(declare-fun e!438482 () Bool)

(declare-fun tp!211049 () Bool)

(assert (=> b!695901 (= e!438482 tp!211049)))

(declare-fun setIsEmpty!3962 () Bool)

(declare-fun setRes!3961 () Bool)

(assert (=> setIsEmpty!3962 setRes!3961))

(declare-fun tp!211051 () Bool)

(declare-fun e!438486 () Bool)

(declare-fun setNonEmpty!3961 () Bool)

(declare-fun setElem!3961 () Context!522)

(declare-fun inv!9757 (Context!522) Bool)

(assert (=> setNonEmpty!3961 (= setRes!3962 (and tp!211051 (inv!9757 setElem!3961) e!438486))))

(declare-fun mapValue!3286 () List!7643)

(declare-fun setRest!3961 () (InoxSet Context!522))

(assert (=> setNonEmpty!3961 (= (_2!4496 (h!13030 mapValue!3286)) ((_ map or) (store ((as const (Array Context!522 Bool)) false) setElem!3961 true) setRest!3961))))

(declare-fun tp!211052 () Bool)

(declare-fun setNonEmpty!3962 () Bool)

(declare-fun setElem!3962 () Context!522)

(assert (=> setNonEmpty!3962 (= setRes!3961 (and tp!211052 (inv!9757 setElem!3962) e!438483))))

(declare-fun setRest!3962 () (InoxSet Context!522))

(assert (=> setNonEmpty!3962 (= (_2!4496 (h!13030 mapDefault!3286)) ((_ map or) (store ((as const (Array Context!522 Bool)) false) setElem!3962 true) setRest!3962))))

(declare-fun tp!211055 () Bool)

(declare-fun tp_is_empty!3653 () Bool)

(declare-fun b!695902 () Bool)

(declare-fun e!438481 () Bool)

(assert (=> b!695902 (= e!438481 (and (inv!9757 (_1!4495 (_1!4496 (h!13030 mapValue!3286)))) e!438485 tp_is_empty!3653 setRes!3962 tp!211055))))

(declare-fun condSetEmpty!3961 () Bool)

(assert (=> b!695902 (= condSetEmpty!3961 (= (_2!4496 (h!13030 mapValue!3286)) ((as const (Array Context!522 Bool)) false)))))

(declare-fun b!695903 () Bool)

(declare-fun tp!211050 () Bool)

(assert (=> b!695903 (= e!438486 tp!211050)))

(declare-fun tp!211056 () Bool)

(declare-fun b!695904 () Bool)

(assert (=> b!695904 (= e!438484 (and (inv!9757 (_1!4495 (_1!4496 (h!13030 mapDefault!3286)))) e!438482 tp_is_empty!3653 setRes!3961 tp!211056))))

(declare-fun condSetEmpty!3962 () Bool)

(assert (=> b!695904 (= condSetEmpty!3962 (= (_2!4496 (h!13030 mapDefault!3286)) ((as const (Array Context!522 Bool)) false)))))

(declare-fun mapNonEmpty!3286 () Bool)

(declare-fun tp!211053 () Bool)

(assert (=> mapNonEmpty!3286 (= mapRes!3286 (and tp!211053 e!438481))))

(declare-fun mapRest!3286 () (Array (_ BitVec 32) List!7643))

(declare-fun mapKey!3286 () (_ BitVec 32))

(assert (=> mapNonEmpty!3286 (= mapRest!3283 (store mapRest!3286 mapKey!3286 mapValue!3286))))

(assert (= (and mapNonEmpty!3282 condMapEmpty!3286) mapIsEmpty!3286))

(assert (= (and mapNonEmpty!3282 (not condMapEmpty!3286)) mapNonEmpty!3286))

(assert (= b!695902 b!695900))

(assert (= (and b!695902 condSetEmpty!3961) setIsEmpty!3961))

(assert (= (and b!695902 (not condSetEmpty!3961)) setNonEmpty!3961))

(assert (= setNonEmpty!3961 b!695903))

(assert (= (and mapNonEmpty!3286 ((_ is Cons!7629) mapValue!3286)) b!695902))

(assert (= b!695904 b!695901))

(assert (= (and b!695904 condSetEmpty!3962) setIsEmpty!3962))

(assert (= (and b!695904 (not condSetEmpty!3962)) setNonEmpty!3962))

(assert (= setNonEmpty!3962 b!695899))

(assert (= (and mapNonEmpty!3282 ((_ is Cons!7629) mapDefault!3286)) b!695904))

(declare-fun m!951857 () Bool)

(assert (=> b!695904 m!951857))

(declare-fun m!951859 () Bool)

(assert (=> mapNonEmpty!3286 m!951859))

(declare-fun m!951861 () Bool)

(assert (=> setNonEmpty!3961 m!951861))

(declare-fun m!951863 () Bool)

(assert (=> setNonEmpty!3962 m!951863))

(declare-fun m!951865 () Bool)

(assert (=> b!695902 m!951865))

(declare-fun b!695913 () Bool)

(declare-fun e!438493 () Bool)

(declare-fun tp!211067 () Bool)

(assert (=> b!695913 (= e!438493 tp!211067)))

(declare-fun e!438494 () Bool)

(assert (=> mapNonEmpty!3282 (= tp!211020 e!438494)))

(declare-fun setIsEmpty!3965 () Bool)

(declare-fun setRes!3965 () Bool)

(assert (=> setIsEmpty!3965 setRes!3965))

(declare-fun b!695914 () Bool)

(declare-fun tp!211069 () Bool)

(assert (=> b!695914 (= e!438494 (and (inv!9757 (_1!4495 (_1!4496 (h!13030 mapValue!3281)))) e!438493 tp_is_empty!3653 setRes!3965 tp!211069))))

(declare-fun condSetEmpty!3965 () Bool)

(assert (=> b!695914 (= condSetEmpty!3965 (= (_2!4496 (h!13030 mapValue!3281)) ((as const (Array Context!522 Bool)) false)))))

(declare-fun tp!211068 () Bool)

(declare-fun e!438495 () Bool)

(declare-fun setElem!3965 () Context!522)

(declare-fun setNonEmpty!3965 () Bool)

(assert (=> setNonEmpty!3965 (= setRes!3965 (and tp!211068 (inv!9757 setElem!3965) e!438495))))

(declare-fun setRest!3965 () (InoxSet Context!522))

(assert (=> setNonEmpty!3965 (= (_2!4496 (h!13030 mapValue!3281)) ((_ map or) (store ((as const (Array Context!522 Bool)) false) setElem!3965 true) setRest!3965))))

(declare-fun b!695915 () Bool)

(declare-fun tp!211066 () Bool)

(assert (=> b!695915 (= e!438495 tp!211066)))

(assert (= b!695914 b!695913))

(assert (= (and b!695914 condSetEmpty!3965) setIsEmpty!3965))

(assert (= (and b!695914 (not condSetEmpty!3965)) setNonEmpty!3965))

(assert (= setNonEmpty!3965 b!695915))

(assert (= (and mapNonEmpty!3282 ((_ is Cons!7629) mapValue!3281)) b!695914))

(declare-fun m!951867 () Bool)

(assert (=> b!695914 m!951867))

(declare-fun m!951869 () Bool)

(assert (=> setNonEmpty!3965 m!951869))

(declare-fun e!438500 () Bool)

(declare-fun b!695924 () Bool)

(declare-fun tp!211077 () Bool)

(declare-fun tp!211076 () Bool)

(assert (=> b!695924 (= e!438500 (and (inv!9745 (left!6046 (c!121858 totalInput!378))) tp!211077 (inv!9745 (right!6376 (c!121858 totalInput!378))) tp!211076))))

(declare-fun b!695926 () Bool)

(declare-fun e!438501 () Bool)

(declare-fun tp!211078 () Bool)

(assert (=> b!695926 (= e!438501 tp!211078)))

(declare-fun b!695925 () Bool)

(declare-fun inv!9758 (IArray!5357) Bool)

(assert (=> b!695925 (= e!438500 (and (inv!9758 (xs!5331 (c!121858 totalInput!378))) e!438501))))

(assert (=> b!695702 (= tp!211018 (and (inv!9745 (c!121858 totalInput!378)) e!438500))))

(assert (= (and b!695702 ((_ is Node!2678) (c!121858 totalInput!378))) b!695924))

(assert (= b!695925 b!695926))

(assert (= (and b!695702 ((_ is Leaf!3961) (c!121858 totalInput!378))) b!695925))

(declare-fun m!951871 () Bool)

(assert (=> b!695924 m!951871))

(declare-fun m!951873 () Bool)

(assert (=> b!695924 m!951873))

(declare-fun m!951875 () Bool)

(assert (=> b!695925 m!951875))

(assert (=> b!695702 m!951569))

(declare-fun tp!211080 () Bool)

(declare-fun tp!211079 () Bool)

(declare-fun b!695927 () Bool)

(declare-fun e!438502 () Bool)

(assert (=> b!695927 (= e!438502 (and (inv!9745 (left!6046 (c!121858 (totalInput!1821 cacheFindLongestMatch!74)))) tp!211080 (inv!9745 (right!6376 (c!121858 (totalInput!1821 cacheFindLongestMatch!74)))) tp!211079))))

(declare-fun b!695929 () Bool)

(declare-fun e!438503 () Bool)

(declare-fun tp!211081 () Bool)

(assert (=> b!695929 (= e!438503 tp!211081)))

(declare-fun b!695928 () Bool)

(assert (=> b!695928 (= e!438502 (and (inv!9758 (xs!5331 (c!121858 (totalInput!1821 cacheFindLongestMatch!74)))) e!438503))))

(assert (=> b!695704 (= tp!211028 (and (inv!9745 (c!121858 (totalInput!1821 cacheFindLongestMatch!74))) e!438502))))

(assert (= (and b!695704 ((_ is Node!2678) (c!121858 (totalInput!1821 cacheFindLongestMatch!74)))) b!695927))

(assert (= b!695928 b!695929))

(assert (= (and b!695704 ((_ is Leaf!3961) (c!121858 (totalInput!1821 cacheFindLongestMatch!74)))) b!695928))

(declare-fun m!951877 () Bool)

(assert (=> b!695927 m!951877))

(declare-fun m!951879 () Bool)

(assert (=> b!695927 m!951879))

(declare-fun m!951881 () Bool)

(assert (=> b!695928 m!951881))

(assert (=> b!695704 m!951565))

(declare-fun e!438504 () Bool)

(declare-fun tp!211082 () Bool)

(declare-fun b!695930 () Bool)

(declare-fun tp!211083 () Bool)

(assert (=> b!695930 (= e!438504 (and (inv!9745 (left!6046 (c!121858 treated!50))) tp!211083 (inv!9745 (right!6376 (c!121858 treated!50))) tp!211082))))

(declare-fun b!695932 () Bool)

(declare-fun e!438505 () Bool)

(declare-fun tp!211084 () Bool)

(assert (=> b!695932 (= e!438505 tp!211084)))

(declare-fun b!695931 () Bool)

(assert (=> b!695931 (= e!438504 (and (inv!9758 (xs!5331 (c!121858 treated!50))) e!438505))))

(assert (=> b!695740 (= tp!211005 (and (inv!9745 (c!121858 treated!50)) e!438504))))

(assert (= (and b!695740 ((_ is Node!2678) (c!121858 treated!50))) b!695930))

(assert (= b!695931 b!695932))

(assert (= (and b!695740 ((_ is Leaf!3961) (c!121858 treated!50))) b!695931))

(declare-fun m!951883 () Bool)

(assert (=> b!695930 m!951883))

(declare-fun m!951885 () Bool)

(assert (=> b!695930 m!951885))

(declare-fun m!951887 () Bool)

(assert (=> b!695931 m!951887))

(assert (=> b!695740 m!951577))

(declare-fun b!695933 () Bool)

(declare-fun tp!211086 () Bool)

(declare-fun tp!211085 () Bool)

(declare-fun e!438506 () Bool)

(assert (=> b!695933 (= e!438506 (and (inv!9745 (left!6046 (c!121858 input!870))) tp!211086 (inv!9745 (right!6376 (c!121858 input!870))) tp!211085))))

(declare-fun b!695935 () Bool)

(declare-fun e!438507 () Bool)

(declare-fun tp!211087 () Bool)

(assert (=> b!695935 (= e!438507 tp!211087)))

(declare-fun b!695934 () Bool)

(assert (=> b!695934 (= e!438506 (and (inv!9758 (xs!5331 (c!121858 input!870))) e!438507))))

(assert (=> b!695741 (= tp!211025 (and (inv!9745 (c!121858 input!870)) e!438506))))

(assert (= (and b!695741 ((_ is Node!2678) (c!121858 input!870))) b!695933))

(assert (= b!695934 b!695935))

(assert (= (and b!695741 ((_ is Leaf!3961) (c!121858 input!870))) b!695934))

(declare-fun m!951889 () Bool)

(assert (=> b!695933 m!951889))

(declare-fun m!951891 () Bool)

(assert (=> b!695933 m!951891))

(declare-fun m!951893 () Bool)

(assert (=> b!695934 m!951893))

(assert (=> b!695741 m!951551))

(declare-fun b!695944 () Bool)

(declare-fun e!438514 () Bool)

(declare-fun tp!211098 () Bool)

(assert (=> b!695944 (= e!438514 tp!211098)))

(declare-fun setIsEmpty!3968 () Bool)

(declare-fun setRes!3968 () Bool)

(assert (=> setIsEmpty!3968 setRes!3968))

(declare-fun e!438515 () Bool)

(assert (=> b!695723 (= tp!211014 e!438515)))

(declare-fun b!695945 () Bool)

(declare-fun e!438516 () Bool)

(declare-fun tp!211099 () Bool)

(assert (=> b!695945 (= e!438516 tp!211099)))

(declare-fun b!695946 () Bool)

(declare-fun tp!211101 () Bool)

(declare-fun tp!211102 () Bool)

(assert (=> b!695946 (= e!438515 (and tp!211102 (inv!9757 (_2!4497 (_1!4498 (h!13031 (zeroValue!1076 (v!17769 (underlying!1821 (v!17770 (underlying!1822 (cache!1178 cacheDown!515)))))))))) e!438516 tp_is_empty!3653 setRes!3968 tp!211101))))

(declare-fun condSetEmpty!3968 () Bool)

(assert (=> b!695946 (= condSetEmpty!3968 (= (_2!4498 (h!13031 (zeroValue!1076 (v!17769 (underlying!1821 (v!17770 (underlying!1822 (cache!1178 cacheDown!515)))))))) ((as const (Array Context!522 Bool)) false)))))

(declare-fun setElem!3968 () Context!522)

(declare-fun tp!211100 () Bool)

(declare-fun setNonEmpty!3968 () Bool)

(assert (=> setNonEmpty!3968 (= setRes!3968 (and tp!211100 (inv!9757 setElem!3968) e!438514))))

(declare-fun setRest!3968 () (InoxSet Context!522))

(assert (=> setNonEmpty!3968 (= (_2!4498 (h!13031 (zeroValue!1076 (v!17769 (underlying!1821 (v!17770 (underlying!1822 (cache!1178 cacheDown!515)))))))) ((_ map or) (store ((as const (Array Context!522 Bool)) false) setElem!3968 true) setRest!3968))))

(assert (= b!695946 b!695945))

(assert (= (and b!695946 condSetEmpty!3968) setIsEmpty!3968))

(assert (= (and b!695946 (not condSetEmpty!3968)) setNonEmpty!3968))

(assert (= setNonEmpty!3968 b!695944))

(assert (= (and b!695723 ((_ is Cons!7630) (zeroValue!1076 (v!17769 (underlying!1821 (v!17770 (underlying!1822 (cache!1178 cacheDown!515)))))))) b!695946))

(declare-fun m!951895 () Bool)

(assert (=> b!695946 m!951895))

(declare-fun m!951897 () Bool)

(assert (=> setNonEmpty!3968 m!951897))

(declare-fun b!695947 () Bool)

(declare-fun e!438517 () Bool)

(declare-fun tp!211103 () Bool)

(assert (=> b!695947 (= e!438517 tp!211103)))

(declare-fun setIsEmpty!3969 () Bool)

(declare-fun setRes!3969 () Bool)

(assert (=> setIsEmpty!3969 setRes!3969))

(declare-fun e!438518 () Bool)

(assert (=> b!695723 (= tp!211017 e!438518)))

(declare-fun b!695948 () Bool)

(declare-fun e!438519 () Bool)

(declare-fun tp!211104 () Bool)

(assert (=> b!695948 (= e!438519 tp!211104)))

(declare-fun tp!211107 () Bool)

(declare-fun tp!211106 () Bool)

(declare-fun b!695949 () Bool)

(assert (=> b!695949 (= e!438518 (and tp!211107 (inv!9757 (_2!4497 (_1!4498 (h!13031 (minValue!1076 (v!17769 (underlying!1821 (v!17770 (underlying!1822 (cache!1178 cacheDown!515)))))))))) e!438519 tp_is_empty!3653 setRes!3969 tp!211106))))

(declare-fun condSetEmpty!3969 () Bool)

(assert (=> b!695949 (= condSetEmpty!3969 (= (_2!4498 (h!13031 (minValue!1076 (v!17769 (underlying!1821 (v!17770 (underlying!1822 (cache!1178 cacheDown!515)))))))) ((as const (Array Context!522 Bool)) false)))))

(declare-fun tp!211105 () Bool)

(declare-fun setNonEmpty!3969 () Bool)

(declare-fun setElem!3969 () Context!522)

(assert (=> setNonEmpty!3969 (= setRes!3969 (and tp!211105 (inv!9757 setElem!3969) e!438517))))

(declare-fun setRest!3969 () (InoxSet Context!522))

(assert (=> setNonEmpty!3969 (= (_2!4498 (h!13031 (minValue!1076 (v!17769 (underlying!1821 (v!17770 (underlying!1822 (cache!1178 cacheDown!515)))))))) ((_ map or) (store ((as const (Array Context!522 Bool)) false) setElem!3969 true) setRest!3969))))

(assert (= b!695949 b!695948))

(assert (= (and b!695949 condSetEmpty!3969) setIsEmpty!3969))

(assert (= (and b!695949 (not condSetEmpty!3969)) setNonEmpty!3969))

(assert (= setNonEmpty!3969 b!695947))

(assert (= (and b!695723 ((_ is Cons!7630) (minValue!1076 (v!17769 (underlying!1821 (v!17770 (underlying!1822 (cache!1178 cacheDown!515)))))))) b!695949))

(declare-fun m!951899 () Bool)

(assert (=> b!695949 m!951899))

(declare-fun m!951901 () Bool)

(assert (=> setNonEmpty!3969 m!951901))

(declare-fun b!695960 () Bool)

(declare-fun e!438522 () Bool)

(assert (=> b!695960 (= e!438522 tp_is_empty!3653)))

(declare-fun b!695962 () Bool)

(declare-fun tp!211122 () Bool)

(assert (=> b!695962 (= e!438522 tp!211122)))

(declare-fun b!695963 () Bool)

(declare-fun tp!211121 () Bool)

(declare-fun tp!211120 () Bool)

(assert (=> b!695963 (= e!438522 (and tp!211121 tp!211120))))

(declare-fun b!695961 () Bool)

(declare-fun tp!211118 () Bool)

(declare-fun tp!211119 () Bool)

(assert (=> b!695961 (= e!438522 (and tp!211118 tp!211119))))

(assert (=> b!695725 (= tp!211023 e!438522)))

(assert (= (and b!695725 ((_ is ElementMatch!1859) (regex!1520 (h!13026 rules!1486)))) b!695960))

(assert (= (and b!695725 ((_ is Concat!3424) (regex!1520 (h!13026 rules!1486)))) b!695961))

(assert (= (and b!695725 ((_ is Star!1859) (regex!1520 (h!13026 rules!1486)))) b!695962))

(assert (= (and b!695725 ((_ is Union!1859) (regex!1520 (h!13026 rules!1486)))) b!695963))

(declare-fun b!695971 () Bool)

(declare-fun e!438527 () Bool)

(declare-fun tp!211130 () Bool)

(assert (=> b!695971 (= e!438527 tp!211130)))

(declare-fun setIsEmpty!3972 () Bool)

(declare-fun setRes!3972 () Bool)

(assert (=> setIsEmpty!3972 setRes!3972))

(declare-fun b!695970 () Bool)

(declare-fun e!438528 () Bool)

(declare-fun tp!211131 () Bool)

(assert (=> b!695970 (= e!438528 (and setRes!3972 tp!211131))))

(declare-fun condSetEmpty!3972 () Bool)

(assert (=> b!695970 (= condSetEmpty!3972 (= (_1!4493 (_1!4494 (h!13029 mapDefault!3282))) ((as const (Array Context!522 Bool)) false)))))

(declare-fun setElem!3972 () Context!522)

(declare-fun tp!211129 () Bool)

(declare-fun setNonEmpty!3972 () Bool)

(assert (=> setNonEmpty!3972 (= setRes!3972 (and tp!211129 (inv!9757 setElem!3972) e!438527))))

(declare-fun setRest!3972 () (InoxSet Context!522))

(assert (=> setNonEmpty!3972 (= (_1!4493 (_1!4494 (h!13029 mapDefault!3282))) ((_ map or) (store ((as const (Array Context!522 Bool)) false) setElem!3972 true) setRest!3972))))

(assert (=> b!695706 (= tp!211003 e!438528)))

(assert (= (and b!695970 condSetEmpty!3972) setIsEmpty!3972))

(assert (= (and b!695970 (not condSetEmpty!3972)) setNonEmpty!3972))

(assert (= setNonEmpty!3972 b!695971))

(assert (= (and b!695706 ((_ is Cons!7628) mapDefault!3282)) b!695970))

(declare-fun m!951903 () Bool)

(assert (=> setNonEmpty!3972 m!951903))

(declare-fun b!695972 () Bool)

(declare-fun e!438529 () Bool)

(declare-fun tp!211132 () Bool)

(assert (=> b!695972 (= e!438529 tp!211132)))

(declare-fun setIsEmpty!3973 () Bool)

(declare-fun setRes!3973 () Bool)

(assert (=> setIsEmpty!3973 setRes!3973))

(declare-fun e!438530 () Bool)

(assert (=> b!695726 (= tp!211004 e!438530)))

(declare-fun b!695973 () Bool)

(declare-fun e!438531 () Bool)

(declare-fun tp!211133 () Bool)

(assert (=> b!695973 (= e!438531 tp!211133)))

(declare-fun tp!211135 () Bool)

(declare-fun b!695974 () Bool)

(declare-fun tp!211136 () Bool)

(assert (=> b!695974 (= e!438530 (and tp!211136 (inv!9757 (_2!4497 (_1!4498 (h!13031 mapDefault!3283)))) e!438531 tp_is_empty!3653 setRes!3973 tp!211135))))

(declare-fun condSetEmpty!3973 () Bool)

(assert (=> b!695974 (= condSetEmpty!3973 (= (_2!4498 (h!13031 mapDefault!3283)) ((as const (Array Context!522 Bool)) false)))))

(declare-fun setNonEmpty!3973 () Bool)

(declare-fun tp!211134 () Bool)

(declare-fun setElem!3973 () Context!522)

(assert (=> setNonEmpty!3973 (= setRes!3973 (and tp!211134 (inv!9757 setElem!3973) e!438529))))

(declare-fun setRest!3973 () (InoxSet Context!522))

(assert (=> setNonEmpty!3973 (= (_2!4498 (h!13031 mapDefault!3283)) ((_ map or) (store ((as const (Array Context!522 Bool)) false) setElem!3973 true) setRest!3973))))

(assert (= b!695974 b!695973))

(assert (= (and b!695974 condSetEmpty!3973) setIsEmpty!3973))

(assert (= (and b!695974 (not condSetEmpty!3973)) setNonEmpty!3973))

(assert (= setNonEmpty!3973 b!695972))

(assert (= (and b!695726 ((_ is Cons!7630) mapDefault!3283)) b!695974))

(declare-fun m!951905 () Bool)

(assert (=> b!695974 m!951905))

(declare-fun m!951907 () Bool)

(assert (=> setNonEmpty!3973 m!951907))

(declare-fun b!695975 () Bool)

(declare-fun e!438532 () Bool)

(declare-fun tp!211138 () Bool)

(assert (=> b!695975 (= e!438532 tp!211138)))

(declare-fun e!438533 () Bool)

(assert (=> b!695707 (= tp!211013 e!438533)))

(declare-fun setIsEmpty!3974 () Bool)

(declare-fun setRes!3974 () Bool)

(assert (=> setIsEmpty!3974 setRes!3974))

(declare-fun tp!211140 () Bool)

(declare-fun b!695976 () Bool)

(assert (=> b!695976 (= e!438533 (and (inv!9757 (_1!4495 (_1!4496 (h!13030 mapDefault!3281)))) e!438532 tp_is_empty!3653 setRes!3974 tp!211140))))

(declare-fun condSetEmpty!3974 () Bool)

(assert (=> b!695976 (= condSetEmpty!3974 (= (_2!4496 (h!13030 mapDefault!3281)) ((as const (Array Context!522 Bool)) false)))))

(declare-fun tp!211139 () Bool)

(declare-fun e!438534 () Bool)

(declare-fun setNonEmpty!3974 () Bool)

(declare-fun setElem!3974 () Context!522)

(assert (=> setNonEmpty!3974 (= setRes!3974 (and tp!211139 (inv!9757 setElem!3974) e!438534))))

(declare-fun setRest!3974 () (InoxSet Context!522))

(assert (=> setNonEmpty!3974 (= (_2!4496 (h!13030 mapDefault!3281)) ((_ map or) (store ((as const (Array Context!522 Bool)) false) setElem!3974 true) setRest!3974))))

(declare-fun b!695977 () Bool)

(declare-fun tp!211137 () Bool)

(assert (=> b!695977 (= e!438534 tp!211137)))

(assert (= b!695976 b!695975))

(assert (= (and b!695976 condSetEmpty!3974) setIsEmpty!3974))

(assert (= (and b!695976 (not condSetEmpty!3974)) setNonEmpty!3974))

(assert (= setNonEmpty!3974 b!695977))

(assert (= (and b!695707 ((_ is Cons!7629) mapDefault!3281)) b!695976))

(declare-fun m!951909 () Bool)

(assert (=> b!695976 m!951909))

(declare-fun m!951911 () Bool)

(assert (=> setNonEmpty!3974 m!951911))

(declare-fun mapNonEmpty!3289 () Bool)

(declare-fun mapRes!3289 () Bool)

(declare-fun tp!211156 () Bool)

(declare-fun e!438543 () Bool)

(assert (=> mapNonEmpty!3289 (= mapRes!3289 (and tp!211156 e!438543))))

(declare-fun mapValue!3289 () List!7642)

(declare-fun mapRest!3289 () (Array (_ BitVec 32) List!7642))

(declare-fun mapKey!3289 () (_ BitVec 32))

(assert (=> mapNonEmpty!3289 (= mapRest!3282 (store mapRest!3289 mapKey!3289 mapValue!3289))))

(declare-fun b!695988 () Bool)

(declare-fun e!438545 () Bool)

(declare-fun tp!211160 () Bool)

(assert (=> b!695988 (= e!438545 tp!211160)))

(declare-fun b!695989 () Bool)

(declare-fun e!438544 () Bool)

(declare-fun setRes!3979 () Bool)

(declare-fun tp!211158 () Bool)

(assert (=> b!695989 (= e!438544 (and setRes!3979 tp!211158))))

(declare-fun condSetEmpty!3979 () Bool)

(declare-fun mapDefault!3289 () List!7642)

(assert (=> b!695989 (= condSetEmpty!3979 (= (_1!4493 (_1!4494 (h!13029 mapDefault!3289))) ((as const (Array Context!522 Bool)) false)))))

(declare-fun mapIsEmpty!3289 () Bool)

(assert (=> mapIsEmpty!3289 mapRes!3289))

(declare-fun tp!211159 () Bool)

(declare-fun setNonEmpty!3979 () Bool)

(declare-fun e!438546 () Bool)

(declare-fun setElem!3979 () Context!522)

(assert (=> setNonEmpty!3979 (= setRes!3979 (and tp!211159 (inv!9757 setElem!3979) e!438546))))

(declare-fun setRest!3979 () (InoxSet Context!522))

(assert (=> setNonEmpty!3979 (= (_1!4493 (_1!4494 (h!13029 mapDefault!3289))) ((_ map or) (store ((as const (Array Context!522 Bool)) false) setElem!3979 true) setRest!3979))))

(declare-fun b!695990 () Bool)

(declare-fun tp!211161 () Bool)

(assert (=> b!695990 (= e!438546 tp!211161)))

(declare-fun b!695991 () Bool)

(declare-fun setRes!3980 () Bool)

(declare-fun tp!211157 () Bool)

(assert (=> b!695991 (= e!438543 (and setRes!3980 tp!211157))))

(declare-fun condSetEmpty!3980 () Bool)

(assert (=> b!695991 (= condSetEmpty!3980 (= (_1!4493 (_1!4494 (h!13029 mapValue!3289))) ((as const (Array Context!522 Bool)) false)))))

(declare-fun setIsEmpty!3979 () Bool)

(assert (=> setIsEmpty!3979 setRes!3979))

(declare-fun setNonEmpty!3980 () Bool)

(declare-fun tp!211155 () Bool)

(declare-fun setElem!3980 () Context!522)

(assert (=> setNonEmpty!3980 (= setRes!3980 (and tp!211155 (inv!9757 setElem!3980) e!438545))))

(declare-fun setRest!3980 () (InoxSet Context!522))

(assert (=> setNonEmpty!3980 (= (_1!4493 (_1!4494 (h!13029 mapValue!3289))) ((_ map or) (store ((as const (Array Context!522 Bool)) false) setElem!3980 true) setRest!3980))))

(declare-fun condMapEmpty!3289 () Bool)

(assert (=> mapNonEmpty!3281 (= condMapEmpty!3289 (= mapRest!3282 ((as const (Array (_ BitVec 32) List!7642)) mapDefault!3289)))))

(assert (=> mapNonEmpty!3281 (= tp!211015 (and e!438544 mapRes!3289))))

(declare-fun setIsEmpty!3980 () Bool)

(assert (=> setIsEmpty!3980 setRes!3980))

(assert (= (and mapNonEmpty!3281 condMapEmpty!3289) mapIsEmpty!3289))

(assert (= (and mapNonEmpty!3281 (not condMapEmpty!3289)) mapNonEmpty!3289))

(assert (= (and b!695991 condSetEmpty!3980) setIsEmpty!3980))

(assert (= (and b!695991 (not condSetEmpty!3980)) setNonEmpty!3980))

(assert (= setNonEmpty!3980 b!695988))

(assert (= (and mapNonEmpty!3289 ((_ is Cons!7628) mapValue!3289)) b!695991))

(assert (= (and b!695989 condSetEmpty!3979) setIsEmpty!3979))

(assert (= (and b!695989 (not condSetEmpty!3979)) setNonEmpty!3979))

(assert (= setNonEmpty!3979 b!695990))

(assert (= (and mapNonEmpty!3281 ((_ is Cons!7628) mapDefault!3289)) b!695989))

(declare-fun m!951913 () Bool)

(assert (=> mapNonEmpty!3289 m!951913))

(declare-fun m!951915 () Bool)

(assert (=> setNonEmpty!3979 m!951915))

(declare-fun m!951917 () Bool)

(assert (=> setNonEmpty!3980 m!951917))

(declare-fun b!695993 () Bool)

(declare-fun e!438547 () Bool)

(declare-fun tp!211163 () Bool)

(assert (=> b!695993 (= e!438547 tp!211163)))

(declare-fun setIsEmpty!3981 () Bool)

(declare-fun setRes!3981 () Bool)

(assert (=> setIsEmpty!3981 setRes!3981))

(declare-fun b!695992 () Bool)

(declare-fun e!438548 () Bool)

(declare-fun tp!211164 () Bool)

(assert (=> b!695992 (= e!438548 (and setRes!3981 tp!211164))))

(declare-fun condSetEmpty!3981 () Bool)

(assert (=> b!695992 (= condSetEmpty!3981 (= (_1!4493 (_1!4494 (h!13029 mapValue!3282))) ((as const (Array Context!522 Bool)) false)))))

(declare-fun setNonEmpty!3981 () Bool)

(declare-fun tp!211162 () Bool)

(declare-fun setElem!3981 () Context!522)

(assert (=> setNonEmpty!3981 (= setRes!3981 (and tp!211162 (inv!9757 setElem!3981) e!438547))))

(declare-fun setRest!3981 () (InoxSet Context!522))

(assert (=> setNonEmpty!3981 (= (_1!4493 (_1!4494 (h!13029 mapValue!3282))) ((_ map or) (store ((as const (Array Context!522 Bool)) false) setElem!3981 true) setRest!3981))))

(assert (=> mapNonEmpty!3281 (= tp!211019 e!438548)))

(assert (= (and b!695992 condSetEmpty!3981) setIsEmpty!3981))

(assert (= (and b!695992 (not condSetEmpty!3981)) setNonEmpty!3981))

(assert (= setNonEmpty!3981 b!695993))

(assert (= (and mapNonEmpty!3281 ((_ is Cons!7628) mapValue!3282)) b!695992))

(declare-fun m!951919 () Bool)

(assert (=> setNonEmpty!3981 m!951919))

(declare-fun b!696004 () Bool)

(declare-fun b_free!19929 () Bool)

(declare-fun b_next!19993 () Bool)

(assert (=> b!696004 (= b_free!19929 (not b_next!19993))))

(declare-fun tp!211176 () Bool)

(declare-fun b_and!63723 () Bool)

(assert (=> b!696004 (= tp!211176 b_and!63723)))

(declare-fun b_free!19931 () Bool)

(declare-fun b_next!19995 () Bool)

(assert (=> b!696004 (= b_free!19931 (not b_next!19995))))

(declare-fun tp!211175 () Bool)

(declare-fun b_and!63725 () Bool)

(assert (=> b!696004 (= tp!211175 b_and!63725)))

(declare-fun e!438557 () Bool)

(assert (=> b!696004 (= e!438557 (and tp!211176 tp!211175))))

(declare-fun e!438560 () Bool)

(declare-fun tp!211174 () Bool)

(declare-fun b!696003 () Bool)

(assert (=> b!696003 (= e!438560 (and tp!211174 (inv!9740 (tag!1782 (h!13026 (t!87462 rules!1486)))) (inv!9751 (transformation!1520 (h!13026 (t!87462 rules!1486)))) e!438557))))

(declare-fun b!696002 () Bool)

(declare-fun e!438558 () Bool)

(declare-fun tp!211173 () Bool)

(assert (=> b!696002 (= e!438558 (and e!438560 tp!211173))))

(assert (=> b!695716 (= tp!211007 e!438558)))

(assert (= b!696003 b!696004))

(assert (= b!696002 b!696003))

(assert (= (and b!695716 ((_ is Cons!7625) (t!87462 rules!1486))) b!696002))

(declare-fun m!951921 () Bool)

(assert (=> b!696003 m!951921))

(declare-fun m!951923 () Bool)

(assert (=> b!696003 m!951923))

(declare-fun b!696013 () Bool)

(declare-fun e!438565 () Bool)

(declare-fun tp!211184 () Bool)

(declare-fun tp!211183 () Bool)

(assert (=> b!696013 (= e!438565 (and (inv!9752 (left!6047 (c!121860 acc!372))) tp!211183 (inv!9752 (right!6377 (c!121860 acc!372))) tp!211184))))

(declare-fun b!696015 () Bool)

(declare-fun e!438566 () Bool)

(declare-fun tp!211185 () Bool)

(assert (=> b!696015 (= e!438566 tp!211185)))

(declare-fun b!696014 () Bool)

(declare-fun inv!9759 (IArray!5359) Bool)

(assert (=> b!696014 (= e!438565 (and (inv!9759 (xs!5332 (c!121860 acc!372))) e!438566))))

(assert (=> b!695746 (= tp!211027 (and (inv!9752 (c!121860 acc!372)) e!438565))))

(assert (= (and b!695746 ((_ is Node!2679) (c!121860 acc!372))) b!696013))

(assert (= b!696014 b!696015))

(assert (= (and b!695746 ((_ is Leaf!3962) (c!121860 acc!372))) b!696014))

(declare-fun m!951925 () Bool)

(assert (=> b!696013 m!951925))

(declare-fun m!951927 () Bool)

(assert (=> b!696013 m!951927))

(declare-fun m!951929 () Bool)

(assert (=> b!696014 m!951929))

(assert (=> b!695746 m!951611))

(declare-fun b!696016 () Bool)

(declare-fun e!438567 () Bool)

(declare-fun tp!211187 () Bool)

(assert (=> b!696016 (= e!438567 tp!211187)))

(declare-fun e!438568 () Bool)

(assert (=> b!695728 (= tp!211010 e!438568)))

(declare-fun setIsEmpty!3982 () Bool)

(declare-fun setRes!3982 () Bool)

(assert (=> setIsEmpty!3982 setRes!3982))

(declare-fun b!696017 () Bool)

(declare-fun tp!211189 () Bool)

(assert (=> b!696017 (= e!438568 (and (inv!9757 (_1!4495 (_1!4496 (h!13030 (zeroValue!1075 (v!17767 (underlying!1819 (v!17768 (underlying!1820 (cache!1177 cacheUp!502)))))))))) e!438567 tp_is_empty!3653 setRes!3982 tp!211189))))

(declare-fun condSetEmpty!3982 () Bool)

(assert (=> b!696017 (= condSetEmpty!3982 (= (_2!4496 (h!13030 (zeroValue!1075 (v!17767 (underlying!1819 (v!17768 (underlying!1820 (cache!1177 cacheUp!502)))))))) ((as const (Array Context!522 Bool)) false)))))

(declare-fun setElem!3982 () Context!522)

(declare-fun e!438569 () Bool)

(declare-fun setNonEmpty!3982 () Bool)

(declare-fun tp!211188 () Bool)

(assert (=> setNonEmpty!3982 (= setRes!3982 (and tp!211188 (inv!9757 setElem!3982) e!438569))))

(declare-fun setRest!3982 () (InoxSet Context!522))

(assert (=> setNonEmpty!3982 (= (_2!4496 (h!13030 (zeroValue!1075 (v!17767 (underlying!1819 (v!17768 (underlying!1820 (cache!1177 cacheUp!502)))))))) ((_ map or) (store ((as const (Array Context!522 Bool)) false) setElem!3982 true) setRest!3982))))

(declare-fun b!696018 () Bool)

(declare-fun tp!211186 () Bool)

(assert (=> b!696018 (= e!438569 tp!211186)))

(assert (= b!696017 b!696016))

(assert (= (and b!696017 condSetEmpty!3982) setIsEmpty!3982))

(assert (= (and b!696017 (not condSetEmpty!3982)) setNonEmpty!3982))

(assert (= setNonEmpty!3982 b!696018))

(assert (= (and b!695728 ((_ is Cons!7629) (zeroValue!1075 (v!17767 (underlying!1819 (v!17768 (underlying!1820 (cache!1177 cacheUp!502)))))))) b!696017))

(declare-fun m!951931 () Bool)

(assert (=> b!696017 m!951931))

(declare-fun m!951933 () Bool)

(assert (=> setNonEmpty!3982 m!951933))

(declare-fun b!696019 () Bool)

(declare-fun e!438570 () Bool)

(declare-fun tp!211191 () Bool)

(assert (=> b!696019 (= e!438570 tp!211191)))

(declare-fun e!438571 () Bool)

(assert (=> b!695728 (= tp!211009 e!438571)))

(declare-fun setIsEmpty!3983 () Bool)

(declare-fun setRes!3983 () Bool)

(assert (=> setIsEmpty!3983 setRes!3983))

(declare-fun tp!211193 () Bool)

(declare-fun b!696020 () Bool)

(assert (=> b!696020 (= e!438571 (and (inv!9757 (_1!4495 (_1!4496 (h!13030 (minValue!1075 (v!17767 (underlying!1819 (v!17768 (underlying!1820 (cache!1177 cacheUp!502)))))))))) e!438570 tp_is_empty!3653 setRes!3983 tp!211193))))

(declare-fun condSetEmpty!3983 () Bool)

(assert (=> b!696020 (= condSetEmpty!3983 (= (_2!4496 (h!13030 (minValue!1075 (v!17767 (underlying!1819 (v!17768 (underlying!1820 (cache!1177 cacheUp!502)))))))) ((as const (Array Context!522 Bool)) false)))))

(declare-fun setElem!3983 () Context!522)

(declare-fun tp!211192 () Bool)

(declare-fun setNonEmpty!3983 () Bool)

(declare-fun e!438572 () Bool)

(assert (=> setNonEmpty!3983 (= setRes!3983 (and tp!211192 (inv!9757 setElem!3983) e!438572))))

(declare-fun setRest!3983 () (InoxSet Context!522))

(assert (=> setNonEmpty!3983 (= (_2!4496 (h!13030 (minValue!1075 (v!17767 (underlying!1819 (v!17768 (underlying!1820 (cache!1177 cacheUp!502)))))))) ((_ map or) (store ((as const (Array Context!522 Bool)) false) setElem!3983 true) setRest!3983))))

(declare-fun b!696021 () Bool)

(declare-fun tp!211190 () Bool)

(assert (=> b!696021 (= e!438572 tp!211190)))

(assert (= b!696020 b!696019))

(assert (= (and b!696020 condSetEmpty!3983) setIsEmpty!3983))

(assert (= (and b!696020 (not condSetEmpty!3983)) setNonEmpty!3983))

(assert (= setNonEmpty!3983 b!696021))

(assert (= (and b!695728 ((_ is Cons!7629) (minValue!1075 (v!17767 (underlying!1819 (v!17768 (underlying!1820 (cache!1177 cacheUp!502)))))))) b!696020))

(declare-fun m!951935 () Bool)

(assert (=> b!696020 m!951935))

(declare-fun m!951937 () Bool)

(assert (=> setNonEmpty!3983 m!951937))

(declare-fun mapNonEmpty!3292 () Bool)

(declare-fun mapRes!3292 () Bool)

(declare-fun tp!211224 () Bool)

(declare-fun e!438586 () Bool)

(assert (=> mapNonEmpty!3292 (= mapRes!3292 (and tp!211224 e!438586))))

(declare-fun mapKey!3292 () (_ BitVec 32))

(declare-fun mapValue!3292 () List!7644)

(declare-fun mapRest!3292 () (Array (_ BitVec 32) List!7644))

(assert (=> mapNonEmpty!3292 (= mapRest!3281 (store mapRest!3292 mapKey!3292 mapValue!3292))))

(declare-fun mapIsEmpty!3292 () Bool)

(assert (=> mapIsEmpty!3292 mapRes!3292))

(declare-fun tp!211226 () Bool)

(declare-fun setRes!3988 () Bool)

(declare-fun setNonEmpty!3988 () Bool)

(declare-fun e!438590 () Bool)

(declare-fun setElem!3988 () Context!522)

(assert (=> setNonEmpty!3988 (= setRes!3988 (and tp!211226 (inv!9757 setElem!3988) e!438590))))

(declare-fun setRest!3988 () (InoxSet Context!522))

(assert (=> setNonEmpty!3988 (= (_2!4498 (h!13031 mapValue!3292)) ((_ map or) (store ((as const (Array Context!522 Bool)) false) setElem!3988 true) setRest!3988))))

(declare-fun setRes!3989 () Bool)

(declare-fun setElem!3989 () Context!522)

(declare-fun e!438585 () Bool)

(declare-fun tp!211222 () Bool)

(declare-fun setNonEmpty!3989 () Bool)

(assert (=> setNonEmpty!3989 (= setRes!3989 (and tp!211222 (inv!9757 setElem!3989) e!438585))))

(declare-fun mapDefault!3292 () List!7644)

(declare-fun setRest!3989 () (InoxSet Context!522))

(assert (=> setNonEmpty!3989 (= (_2!4498 (h!13031 mapDefault!3292)) ((_ map or) (store ((as const (Array Context!522 Bool)) false) setElem!3989 true) setRest!3989))))

(declare-fun tp!211219 () Bool)

(declare-fun b!696036 () Bool)

(declare-fun e!438588 () Bool)

(declare-fun tp!211225 () Bool)

(assert (=> b!696036 (= e!438586 (and tp!211219 (inv!9757 (_2!4497 (_1!4498 (h!13031 mapValue!3292)))) e!438588 tp_is_empty!3653 setRes!3988 tp!211225))))

(declare-fun condSetEmpty!3989 () Bool)

(assert (=> b!696036 (= condSetEmpty!3989 (= (_2!4498 (h!13031 mapValue!3292)) ((as const (Array Context!522 Bool)) false)))))

(declare-fun b!696037 () Bool)

(declare-fun tp!211221 () Bool)

(assert (=> b!696037 (= e!438585 tp!211221)))

(declare-fun setIsEmpty!3988 () Bool)

(assert (=> setIsEmpty!3988 setRes!3988))

(declare-fun b!696038 () Bool)

(declare-fun tp!211220 () Bool)

(assert (=> b!696038 (= e!438588 tp!211220)))

(declare-fun setIsEmpty!3989 () Bool)

(assert (=> setIsEmpty!3989 setRes!3989))

(declare-fun b!696039 () Bool)

(declare-fun e!438587 () Bool)

(declare-fun tp!211217 () Bool)

(assert (=> b!696039 (= e!438587 tp!211217)))

(declare-fun condMapEmpty!3292 () Bool)

(assert (=> mapNonEmpty!3283 (= condMapEmpty!3292 (= mapRest!3281 ((as const (Array (_ BitVec 32) List!7644)) mapDefault!3292)))))

(declare-fun e!438589 () Bool)

(assert (=> mapNonEmpty!3283 (= tp!211030 (and e!438589 mapRes!3292))))

(declare-fun b!696040 () Bool)

(declare-fun tp!211218 () Bool)

(assert (=> b!696040 (= e!438590 tp!211218)))

(declare-fun tp!211216 () Bool)

(declare-fun b!696041 () Bool)

(declare-fun tp!211223 () Bool)

(assert (=> b!696041 (= e!438589 (and tp!211216 (inv!9757 (_2!4497 (_1!4498 (h!13031 mapDefault!3292)))) e!438587 tp_is_empty!3653 setRes!3989 tp!211223))))

(declare-fun condSetEmpty!3988 () Bool)

(assert (=> b!696041 (= condSetEmpty!3988 (= (_2!4498 (h!13031 mapDefault!3292)) ((as const (Array Context!522 Bool)) false)))))

(assert (= (and mapNonEmpty!3283 condMapEmpty!3292) mapIsEmpty!3292))

(assert (= (and mapNonEmpty!3283 (not condMapEmpty!3292)) mapNonEmpty!3292))

(assert (= b!696036 b!696038))

(assert (= (and b!696036 condSetEmpty!3989) setIsEmpty!3988))

(assert (= (and b!696036 (not condSetEmpty!3989)) setNonEmpty!3988))

(assert (= setNonEmpty!3988 b!696040))

(assert (= (and mapNonEmpty!3292 ((_ is Cons!7630) mapValue!3292)) b!696036))

(assert (= b!696041 b!696039))

(assert (= (and b!696041 condSetEmpty!3988) setIsEmpty!3989))

(assert (= (and b!696041 (not condSetEmpty!3988)) setNonEmpty!3989))

(assert (= setNonEmpty!3989 b!696037))

(assert (= (and mapNonEmpty!3283 ((_ is Cons!7630) mapDefault!3292)) b!696041))

(declare-fun m!951939 () Bool)

(assert (=> b!696041 m!951939))

(declare-fun m!951941 () Bool)

(assert (=> b!696036 m!951941))

(declare-fun m!951943 () Bool)

(assert (=> setNonEmpty!3989 m!951943))

(declare-fun m!951945 () Bool)

(assert (=> mapNonEmpty!3292 m!951945))

(declare-fun m!951947 () Bool)

(assert (=> setNonEmpty!3988 m!951947))

(declare-fun b!696042 () Bool)

(declare-fun e!438591 () Bool)

(declare-fun tp!211227 () Bool)

(assert (=> b!696042 (= e!438591 tp!211227)))

(declare-fun setIsEmpty!3990 () Bool)

(declare-fun setRes!3990 () Bool)

(assert (=> setIsEmpty!3990 setRes!3990))

(declare-fun e!438592 () Bool)

(assert (=> mapNonEmpty!3283 (= tp!211012 e!438592)))

(declare-fun b!696043 () Bool)

(declare-fun e!438593 () Bool)

(declare-fun tp!211228 () Bool)

(assert (=> b!696043 (= e!438593 tp!211228)))

(declare-fun tp!211231 () Bool)

(declare-fun tp!211230 () Bool)

(declare-fun b!696044 () Bool)

(assert (=> b!696044 (= e!438592 (and tp!211231 (inv!9757 (_2!4497 (_1!4498 (h!13031 mapValue!3283)))) e!438593 tp_is_empty!3653 setRes!3990 tp!211230))))

(declare-fun condSetEmpty!3990 () Bool)

(assert (=> b!696044 (= condSetEmpty!3990 (= (_2!4498 (h!13031 mapValue!3283)) ((as const (Array Context!522 Bool)) false)))))

(declare-fun tp!211229 () Bool)

(declare-fun setNonEmpty!3990 () Bool)

(declare-fun setElem!3990 () Context!522)

(assert (=> setNonEmpty!3990 (= setRes!3990 (and tp!211229 (inv!9757 setElem!3990) e!438591))))

(declare-fun setRest!3990 () (InoxSet Context!522))

(assert (=> setNonEmpty!3990 (= (_2!4498 (h!13031 mapValue!3283)) ((_ map or) (store ((as const (Array Context!522 Bool)) false) setElem!3990 true) setRest!3990))))

(assert (= b!696044 b!696043))

(assert (= (and b!696044 condSetEmpty!3990) setIsEmpty!3990))

(assert (= (and b!696044 (not condSetEmpty!3990)) setNonEmpty!3990))

(assert (= setNonEmpty!3990 b!696042))

(assert (= (and mapNonEmpty!3283 ((_ is Cons!7630) mapValue!3283)) b!696044))

(declare-fun m!951949 () Bool)

(assert (=> b!696044 m!951949))

(declare-fun m!951951 () Bool)

(assert (=> setNonEmpty!3990 m!951951))

(declare-fun b!696046 () Bool)

(declare-fun e!438594 () Bool)

(declare-fun tp!211233 () Bool)

(assert (=> b!696046 (= e!438594 tp!211233)))

(declare-fun setIsEmpty!3991 () Bool)

(declare-fun setRes!3991 () Bool)

(assert (=> setIsEmpty!3991 setRes!3991))

(declare-fun b!696045 () Bool)

(declare-fun e!438595 () Bool)

(declare-fun tp!211234 () Bool)

(assert (=> b!696045 (= e!438595 (and setRes!3991 tp!211234))))

(declare-fun condSetEmpty!3991 () Bool)

(assert (=> b!696045 (= condSetEmpty!3991 (= (_1!4493 (_1!4494 (h!13029 (zeroValue!1074 (v!17765 (underlying!1817 (v!17766 (underlying!1818 (cache!1176 cacheFindLongestMatch!74))))))))) ((as const (Array Context!522 Bool)) false)))))

(declare-fun setNonEmpty!3991 () Bool)

(declare-fun setElem!3991 () Context!522)

(declare-fun tp!211232 () Bool)

(assert (=> setNonEmpty!3991 (= setRes!3991 (and tp!211232 (inv!9757 setElem!3991) e!438594))))

(declare-fun setRest!3991 () (InoxSet Context!522))

(assert (=> setNonEmpty!3991 (= (_1!4493 (_1!4494 (h!13029 (zeroValue!1074 (v!17765 (underlying!1817 (v!17766 (underlying!1818 (cache!1176 cacheFindLongestMatch!74))))))))) ((_ map or) (store ((as const (Array Context!522 Bool)) false) setElem!3991 true) setRest!3991))))

(assert (=> b!695736 (= tp!211026 e!438595)))

(assert (= (and b!696045 condSetEmpty!3991) setIsEmpty!3991))

(assert (= (and b!696045 (not condSetEmpty!3991)) setNonEmpty!3991))

(assert (= setNonEmpty!3991 b!696046))

(assert (= (and b!695736 ((_ is Cons!7628) (zeroValue!1074 (v!17765 (underlying!1817 (v!17766 (underlying!1818 (cache!1176 cacheFindLongestMatch!74)))))))) b!696045))

(declare-fun m!951953 () Bool)

(assert (=> setNonEmpty!3991 m!951953))

(declare-fun b!696048 () Bool)

(declare-fun e!438596 () Bool)

(declare-fun tp!211236 () Bool)

(assert (=> b!696048 (= e!438596 tp!211236)))

(declare-fun setIsEmpty!3992 () Bool)

(declare-fun setRes!3992 () Bool)

(assert (=> setIsEmpty!3992 setRes!3992))

(declare-fun b!696047 () Bool)

(declare-fun e!438597 () Bool)

(declare-fun tp!211237 () Bool)

(assert (=> b!696047 (= e!438597 (and setRes!3992 tp!211237))))

(declare-fun condSetEmpty!3992 () Bool)

(assert (=> b!696047 (= condSetEmpty!3992 (= (_1!4493 (_1!4494 (h!13029 (minValue!1074 (v!17765 (underlying!1817 (v!17766 (underlying!1818 (cache!1176 cacheFindLongestMatch!74))))))))) ((as const (Array Context!522 Bool)) false)))))

(declare-fun setElem!3992 () Context!522)

(declare-fun setNonEmpty!3992 () Bool)

(declare-fun tp!211235 () Bool)

(assert (=> setNonEmpty!3992 (= setRes!3992 (and tp!211235 (inv!9757 setElem!3992) e!438596))))

(declare-fun setRest!3992 () (InoxSet Context!522))

(assert (=> setNonEmpty!3992 (= (_1!4493 (_1!4494 (h!13029 (minValue!1074 (v!17765 (underlying!1817 (v!17766 (underlying!1818 (cache!1176 cacheFindLongestMatch!74))))))))) ((_ map or) (store ((as const (Array Context!522 Bool)) false) setElem!3992 true) setRest!3992))))

(assert (=> b!695736 (= tp!211011 e!438597)))

(assert (= (and b!696047 condSetEmpty!3992) setIsEmpty!3992))

(assert (= (and b!696047 (not condSetEmpty!3992)) setNonEmpty!3992))

(assert (= setNonEmpty!3992 b!696048))

(assert (= (and b!695736 ((_ is Cons!7628) (minValue!1074 (v!17765 (underlying!1817 (v!17766 (underlying!1818 (cache!1176 cacheFindLongestMatch!74)))))))) b!696047))

(declare-fun m!951955 () Bool)

(assert (=> setNonEmpty!3992 m!951955))

(check-sat (not b!695991) (not b!695975) (not d!233241) (not b!695992) (not d!233261) (not b!695974) (not d!233271) (not b!695817) b_and!63713 (not b!695924) (not b!696013) (not setNonEmpty!3992) (not b!695811) (not b!695902) (not b!695973) (not d!233279) (not b!695816) (not b!695977) b_and!63721 (not bm!43656) b_and!63715 (not b!696019) (not b!696048) (not d!233269) (not d!233225) (not b!696017) (not b!695930) b_and!63711 (not b!695831) (not d!233273) (not b_next!19979) (not d!233237) (not d!233185) (not b!695949) (not d!233189) (not b!695904) (not b!696047) (not d!233195) (not b!695865) (not b!696044) b_and!63709 (not mapNonEmpty!3286) (not setNonEmpty!3980) (not b_next!19989) (not b!696021) (not b!695844) (not b!695819) (not b!695874) (not b_next!19977) (not d!233235) (not d!233277) (not b!695926) (not d!233257) (not setNonEmpty!3989) (not d!233191) (not b!696003) (not b_next!19987) (not b!695762) (not b!695925) (not b!695812) b_and!63707 (not d!233233) (not d!233255) (not d!233245) (not d!233249) (not mapNonEmpty!3289) (not b!695935) (not b!695814) (not b!695927) (not b!695740) (not b!695914) (not b!696020) (not b!695763) (not d!233227) (not b!696036) (not b!695933) b_and!63717 tp_is_empty!3653 (not d!233231) (not b_next!19993) (not b!695782) (not b!695809) (not b_next!19981) (not setNonEmpty!3968) (not b!695807) (not setNonEmpty!3961) (not b!695780) (not b!695774) (not b!695761) (not b!695988) b_and!63725 (not b!695746) (not b!695788) (not b!696016) (not b!695842) (not b!695903) (not b!695945) (not b!695948) (not d!233201) (not b!695704) (not b!695901) (not setNonEmpty!3990) (not b!695915) (not b!695989) (not b!696040) (not b!695843) (not b!695932) (not b!695993) (not b!695776) (not b!695864) (not b!695947) (not b!695976) (not b!695785) (not b!696038) (not b!696037) (not b!696039) (not setNonEmpty!3979) (not b!696046) (not b!695806) (not b!695972) (not setNonEmpty!3962) (not b!695810) (not b!695944) (not b!695971) (not setNonEmpty!3965) (not b!696015) (not b_next!19985) (not d!233243) (not setNonEmpty!3981) (not b!695766) (not d!233259) (not b!695875) b_and!63723 (not b!695702) b_and!63719 (not b!695899) (not setNonEmpty!3972) (not b!695850) (not b!695946) (not mapNonEmpty!3292) (not b!695808) (not b!695803) (not b!695884) (not setNonEmpty!3988) (not d!233265) (not b!696045) (not b!696014) (not d!233239) (not b!695815) (not b_next!19983) (not b!695838) (not b!695882) (not d!233187) (not d!233213) (not setNonEmpty!3983) (not b!695934) (not b!695928) (not setNonEmpty!3991) (not b!696041) (not b!695868) (not b!695794) (not b!695841) (not b!695805) (not b!695804) (not b!695765) (not b!696043) (not b!695830) (not b!695931) (not b!695846) (not b!695962) (not b!695913) (not b!695866) (not b!695929) (not b!695963) (not b!695792) (not b!696042) (not setNonEmpty!3982) (not b!695871) (not b!696002) (not d!233247) (not b!695900) (not b_next!19991) (not setNonEmpty!3973) (not setNonEmpty!3969) (not b!695970) (not b!695764) (not b!695845) (not d!233207) (not d!233229) (not d!233209) (not b!695791) (not b!695961) (not d!233267) (not b!695837) (not b!696018) (not b!695990) (not d!233217) (not setNonEmpty!3974) (not b!695779) (not b!695777) (not b_next!19995) (not b!695741) (not b!695818))
(check-sat b_and!63713 b_and!63721 b_and!63715 b_and!63709 (not b_next!19987) b_and!63707 (not b_next!19981) b_and!63725 b_and!63719 (not b_next!19983) (not b_next!19991) (not b_next!19995) b_and!63711 (not b_next!19979) (not b_next!19977) (not b_next!19989) b_and!63717 (not b_next!19993) b_and!63723 (not b_next!19985))
