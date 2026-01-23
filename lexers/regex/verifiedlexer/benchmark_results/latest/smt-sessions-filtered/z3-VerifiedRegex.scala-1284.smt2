; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66492 () Bool)

(assert start!66492)

(declare-fun b!696557 () Bool)

(declare-fun b_free!19981 () Bool)

(declare-fun b_next!20045 () Bool)

(assert (=> b!696557 (= b_free!19981 (not b_next!20045))))

(declare-fun tp!211575 () Bool)

(declare-fun b_and!63775 () Bool)

(assert (=> b!696557 (= tp!211575 b_and!63775)))

(declare-fun b!696532 () Bool)

(declare-fun b_free!19983 () Bool)

(declare-fun b_next!20047 () Bool)

(assert (=> b!696532 (= b_free!19983 (not b_next!20047))))

(declare-fun tp!211594 () Bool)

(declare-fun b_and!63777 () Bool)

(assert (=> b!696532 (= tp!211594 b_and!63777)))

(declare-fun b!696559 () Bool)

(declare-fun b_free!19985 () Bool)

(declare-fun b_next!20049 () Bool)

(assert (=> b!696559 (= b_free!19985 (not b_next!20049))))

(declare-fun tp!211581 () Bool)

(declare-fun b_and!63779 () Bool)

(assert (=> b!696559 (= tp!211581 b_and!63779)))

(declare-fun b!696523 () Bool)

(declare-fun b_free!19987 () Bool)

(declare-fun b_next!20051 () Bool)

(assert (=> b!696523 (= b_free!19987 (not b_next!20051))))

(declare-fun tp!211593 () Bool)

(declare-fun b_and!63781 () Bool)

(assert (=> b!696523 (= tp!211593 b_and!63781)))

(declare-fun b_free!19989 () Bool)

(declare-fun b_next!20053 () Bool)

(assert (=> b!696523 (= b_free!19989 (not b_next!20053))))

(declare-fun tp!211571 () Bool)

(declare-fun b_and!63783 () Bool)

(assert (=> b!696523 (= tp!211571 b_and!63783)))

(declare-fun b!696527 () Bool)

(declare-fun b_free!19991 () Bool)

(declare-fun b_next!20055 () Bool)

(assert (=> b!696527 (= b_free!19991 (not b_next!20055))))

(declare-fun tp!211592 () Bool)

(declare-fun b_and!63785 () Bool)

(assert (=> b!696527 (= tp!211592 b_and!63785)))

(declare-fun b!696549 () Bool)

(declare-fun b_free!19993 () Bool)

(declare-fun b_next!20057 () Bool)

(assert (=> b!696549 (= b_free!19993 (not b_next!20057))))

(declare-fun tp!211577 () Bool)

(declare-fun b_and!63787 () Bool)

(assert (=> b!696549 (= tp!211577 b_and!63787)))

(declare-fun b!696531 () Bool)

(declare-fun b_free!19995 () Bool)

(declare-fun b_next!20059 () Bool)

(assert (=> b!696531 (= b_free!19995 (not b_next!20059))))

(declare-fun tp!211574 () Bool)

(declare-fun b_and!63789 () Bool)

(assert (=> b!696531 (= tp!211574 b_and!63789)))

(declare-fun e!439065 () Bool)

(assert (=> b!696523 (= e!439065 (and tp!211593 tp!211571))))

(declare-fun b!696524 () Bool)

(declare-fun e!439030 () Bool)

(declare-fun e!439052 () Bool)

(declare-datatypes ((C!4328 0))(
  ( (C!4329 (val!2394 Int)) )
))
(declare-datatypes ((Regex!1863 0))(
  ( (ElementMatch!1863 (c!121900 C!4328)) (Concat!3430 (regOne!4238 Regex!1863) (regTwo!4238 Regex!1863)) (EmptyExpr!1863) (Star!1863 (reg!2192 Regex!1863)) (EmptyLang!1863) (Union!1863 (regOne!4239 Regex!1863) (regTwo!4239 Regex!1863)) )
))
(declare-datatypes ((List!7665 0))(
  ( (Nil!7651) (Cons!7651 (h!13052 Regex!1863) (t!87488 List!7665)) )
))
(declare-datatypes ((Context!530 0))(
  ( (Context!531 (exprs!765 List!7665)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!8146 0))(
  ( (tuple2!8147 (_1!4521 (InoxSet Context!530)) (_2!4521 Int)) )
))
(declare-datatypes ((tuple2!8148 0))(
  ( (tuple2!8149 (_1!4522 tuple2!8146) (_2!4522 Int)) )
))
(declare-datatypes ((array!3057 0))(
  ( (array!3058 (arr!1380 (Array (_ BitVec 32) (_ BitVec 64))) (size!6239 (_ BitVec 32))) )
))
(declare-datatypes ((List!7666 0))(
  ( (Nil!7652) (Cons!7652 (h!13053 tuple2!8148) (t!87489 List!7666)) )
))
(declare-datatypes ((array!3059 0))(
  ( (array!3060 (arr!1381 (Array (_ BitVec 32) List!7666)) (size!6240 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1654 0))(
  ( (LongMapFixedSize!1655 (defaultEntry!1183 Int) (mask!2643 (_ BitVec 32)) (extraKeys!1074 (_ BitVec 32)) (zeroValue!1084 List!7666) (minValue!1084 List!7666) (_size!1763 (_ BitVec 32)) (_keys!1121 array!3057) (_values!1106 array!3059) (_vacant!888 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3249 0))(
  ( (Cell!3250 (v!17787 LongMapFixedSize!1654)) )
))
(declare-datatypes ((MutLongMap!827 0))(
  ( (LongMap!827 (underlying!1837 Cell!3249)) (MutLongMapExt!826 (__x!5611 Int)) )
))
(declare-fun lt!285972 () MutLongMap!827)

(get-info :version)

(assert (=> b!696524 (= e!439030 (and e!439052 ((_ is LongMap!827) lt!285972)))))

(declare-datatypes ((List!7667 0))(
  ( (Nil!7653) (Cons!7653 (h!13054 C!4328) (t!87490 List!7667)) )
))
(declare-datatypes ((IArray!5371 0))(
  ( (IArray!5372 (innerList!2743 List!7667)) )
))
(declare-datatypes ((Hashable!799 0))(
  ( (HashableExt!798 (__x!5612 Int)) )
))
(declare-datatypes ((Conc!2685 0))(
  ( (Node!2685 (left!6057 Conc!2685) (right!6387 Conc!2685) (csize!5600 Int) (cheight!2896 Int)) (Leaf!3970 (xs!5338 IArray!5371) (csize!5601 Int)) (Empty!2685) )
))
(declare-datatypes ((BalanceConc!5382 0))(
  ( (BalanceConc!5383 (c!121901 Conc!2685)) )
))
(declare-datatypes ((Cell!3251 0))(
  ( (Cell!3252 (v!17788 MutLongMap!827)) )
))
(declare-datatypes ((MutableMap!799 0))(
  ( (MutableMapExt!798 (__x!5613 Int)) (HashMap!799 (underlying!1838 Cell!3251) (hashF!2707 Hashable!799) (_size!1764 (_ BitVec 32)) (defaultValue!950 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!82 0))(
  ( (CacheFindLongestMatch!83 (cache!1186 MutableMap!799) (totalInput!1826 BalanceConc!5382)) )
))
(declare-fun cacheFindLongestMatch!74 () CacheFindLongestMatch!82)

(assert (=> b!696524 (= lt!285972 (v!17788 (underlying!1838 (cache!1186 cacheFindLongestMatch!74))))))

(declare-fun b!696525 () Bool)

(declare-fun e!439064 () Bool)

(declare-fun e!439032 () Bool)

(declare-datatypes ((tuple2!8150 0))(
  ( (tuple2!8151 (_1!4523 Context!530) (_2!4523 C!4328)) )
))
(declare-datatypes ((tuple2!8152 0))(
  ( (tuple2!8153 (_1!4524 tuple2!8150) (_2!4524 (InoxSet Context!530))) )
))
(declare-datatypes ((List!7668 0))(
  ( (Nil!7654) (Cons!7654 (h!13055 tuple2!8152) (t!87491 List!7668)) )
))
(declare-datatypes ((array!3061 0))(
  ( (array!3062 (arr!1382 (Array (_ BitVec 32) List!7668)) (size!6241 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1656 0))(
  ( (LongMapFixedSize!1657 (defaultEntry!1184 Int) (mask!2644 (_ BitVec 32)) (extraKeys!1075 (_ BitVec 32)) (zeroValue!1085 List!7668) (minValue!1085 List!7668) (_size!1765 (_ BitVec 32)) (_keys!1122 array!3057) (_values!1107 array!3061) (_vacant!889 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3253 0))(
  ( (Cell!3254 (v!17789 LongMapFixedSize!1656)) )
))
(declare-datatypes ((MutLongMap!828 0))(
  ( (LongMap!828 (underlying!1839 Cell!3253)) (MutLongMapExt!827 (__x!5614 Int)) )
))
(declare-fun lt!285968 () MutLongMap!828)

(assert (=> b!696525 (= e!439064 (and e!439032 ((_ is LongMap!828) lt!285968)))))

(declare-datatypes ((Hashable!800 0))(
  ( (HashableExt!799 (__x!5615 Int)) )
))
(declare-datatypes ((Cell!3255 0))(
  ( (Cell!3256 (v!17790 MutLongMap!828)) )
))
(declare-datatypes ((MutableMap!800 0))(
  ( (MutableMapExt!799 (__x!5616 Int)) (HashMap!800 (underlying!1840 Cell!3255) (hashF!2708 Hashable!800) (_size!1766 (_ BitVec 32)) (defaultValue!951 Int)) )
))
(declare-datatypes ((CacheUp!418 0))(
  ( (CacheUp!419 (cache!1187 MutableMap!800)) )
))
(declare-fun cacheUp!502 () CacheUp!418)

(assert (=> b!696525 (= lt!285968 (v!17790 (underlying!1840 (cache!1187 cacheUp!502))))))

(declare-fun b!696526 () Bool)

(declare-fun e!439042 () Bool)

(declare-fun e!439036 () Bool)

(assert (=> b!696526 (= e!439042 e!439036)))

(declare-fun res!315181 () Bool)

(assert (=> b!696526 (=> (not res!315181) (not e!439036))))

(declare-fun lt!285973 () List!7667)

(declare-fun lt!285964 () List!7667)

(assert (=> b!696526 (= res!315181 (= lt!285973 lt!285964))))

(declare-fun lt!285967 () List!7667)

(declare-fun lt!285970 () List!7667)

(declare-fun ++!1990 (List!7667 List!7667) List!7667)

(assert (=> b!696526 (= lt!285964 (++!1990 lt!285967 lt!285970))))

(declare-fun totalInput!378 () BalanceConc!5382)

(declare-fun list!3190 (BalanceConc!5382) List!7667)

(assert (=> b!696526 (= lt!285973 (list!3190 totalInput!378))))

(declare-fun input!870 () BalanceConc!5382)

(assert (=> b!696526 (= lt!285970 (list!3190 input!870))))

(declare-fun treated!50 () BalanceConc!5382)

(assert (=> b!696526 (= lt!285967 (list!3190 treated!50))))

(declare-fun mapNonEmpty!3326 () Bool)

(declare-fun mapRes!3327 () Bool)

(declare-fun tp!211597 () Bool)

(declare-fun tp!211587 () Bool)

(assert (=> mapNonEmpty!3326 (= mapRes!3327 (and tp!211597 tp!211587))))

(declare-datatypes ((tuple3!752 0))(
  ( (tuple3!753 (_1!4525 Regex!1863) (_2!4525 Context!530) (_3!448 C!4328)) )
))
(declare-datatypes ((tuple2!8154 0))(
  ( (tuple2!8155 (_1!4526 tuple3!752) (_2!4526 (InoxSet Context!530))) )
))
(declare-datatypes ((List!7669 0))(
  ( (Nil!7655) (Cons!7655 (h!13056 tuple2!8154) (t!87492 List!7669)) )
))
(declare-fun mapRest!3326 () (Array (_ BitVec 32) List!7669))

(declare-fun mapKey!3326 () (_ BitVec 32))

(declare-datatypes ((array!3063 0))(
  ( (array!3064 (arr!1383 (Array (_ BitVec 32) List!7669)) (size!6242 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1658 0))(
  ( (LongMapFixedSize!1659 (defaultEntry!1185 Int) (mask!2645 (_ BitVec 32)) (extraKeys!1076 (_ BitVec 32)) (zeroValue!1086 List!7669) (minValue!1086 List!7669) (_size!1767 (_ BitVec 32)) (_keys!1123 array!3057) (_values!1108 array!3063) (_vacant!890 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3257 0))(
  ( (Cell!3258 (v!17791 LongMapFixedSize!1658)) )
))
(declare-datatypes ((MutLongMap!829 0))(
  ( (LongMap!829 (underlying!1841 Cell!3257)) (MutLongMapExt!828 (__x!5617 Int)) )
))
(declare-datatypes ((Cell!3259 0))(
  ( (Cell!3260 (v!17792 MutLongMap!829)) )
))
(declare-datatypes ((Hashable!801 0))(
  ( (HashableExt!800 (__x!5618 Int)) )
))
(declare-datatypes ((MutableMap!801 0))(
  ( (MutableMapExt!800 (__x!5619 Int)) (HashMap!801 (underlying!1842 Cell!3259) (hashF!2709 Hashable!801) (_size!1768 (_ BitVec 32)) (defaultValue!952 Int)) )
))
(declare-datatypes ((CacheDown!424 0))(
  ( (CacheDown!425 (cache!1188 MutableMap!801)) )
))
(declare-fun cacheDown!515 () CacheDown!424)

(declare-fun mapValue!3326 () List!7669)

(assert (=> mapNonEmpty!3326 (= (arr!1383 (_values!1108 (v!17791 (underlying!1841 (v!17792 (underlying!1842 (cache!1188 cacheDown!515))))))) (store mapRest!3326 mapKey!3326 mapValue!3326))))

(declare-fun e!439055 () Bool)

(declare-fun e!439027 () Bool)

(declare-fun tp!211585 () Bool)

(declare-fun tp!211569 () Bool)

(declare-fun array_inv!1017 (array!3057) Bool)

(declare-fun array_inv!1018 (array!3061) Bool)

(assert (=> b!696527 (= e!439055 (and tp!211592 tp!211569 tp!211585 (array_inv!1017 (_keys!1122 (v!17789 (underlying!1839 (v!17790 (underlying!1840 (cache!1187 cacheUp!502))))))) (array_inv!1018 (_values!1107 (v!17789 (underlying!1839 (v!17790 (underlying!1840 (cache!1187 cacheUp!502))))))) e!439027))))

(declare-fun b!696528 () Bool)

(declare-fun e!439038 () Bool)

(declare-fun tp!211570 () Bool)

(assert (=> b!696528 (= e!439038 (and tp!211570 mapRes!3327))))

(declare-fun condMapEmpty!3328 () Bool)

(declare-fun mapDefault!3327 () List!7669)

(assert (=> b!696528 (= condMapEmpty!3328 (= (arr!1383 (_values!1108 (v!17791 (underlying!1841 (v!17792 (underlying!1842 (cache!1188 cacheDown!515))))))) ((as const (Array (_ BitVec 32) List!7669)) mapDefault!3327)))))

(declare-fun b!696529 () Bool)

(declare-fun res!315180 () Bool)

(declare-fun e!439037 () Bool)

(assert (=> b!696529 (=> (not res!315180) (not e!439037))))

(declare-fun valid!702 (CacheUp!418) Bool)

(assert (=> b!696529 (= res!315180 (valid!702 cacheUp!502))))

(declare-fun b!696530 () Bool)

(declare-fun tp!211572 () Bool)

(declare-fun mapRes!3326 () Bool)

(assert (=> b!696530 (= e!439027 (and tp!211572 mapRes!3326))))

(declare-fun condMapEmpty!3326 () Bool)

(declare-fun mapDefault!3328 () List!7668)

(assert (=> b!696530 (= condMapEmpty!3326 (= (arr!1382 (_values!1107 (v!17789 (underlying!1839 (v!17790 (underlying!1840 (cache!1187 cacheUp!502))))))) ((as const (Array (_ BitVec 32) List!7668)) mapDefault!3328)))))

(declare-fun mapNonEmpty!3327 () Bool)

(declare-fun mapRes!3328 () Bool)

(declare-fun tp!211568 () Bool)

(declare-fun tp!211573 () Bool)

(assert (=> mapNonEmpty!3327 (= mapRes!3328 (and tp!211568 tp!211573))))

(declare-fun mapKey!3328 () (_ BitVec 32))

(declare-fun mapRest!3328 () (Array (_ BitVec 32) List!7666))

(declare-fun mapValue!3328 () List!7666)

(assert (=> mapNonEmpty!3327 (= (arr!1381 (_values!1106 (v!17787 (underlying!1837 (v!17788 (underlying!1838 (cache!1186 cacheFindLongestMatch!74))))))) (store mapRest!3328 mapKey!3328 mapValue!3328))))

(declare-fun res!315193 () Bool)

(assert (=> start!66492 (=> (not res!315193) (not e!439042))))

(declare-datatypes ((LexerInterface!1336 0))(
  ( (LexerInterfaceExt!1333 (__x!5620 Int)) (Lexer!1334) )
))
(declare-fun thiss!12529 () LexerInterface!1336)

(assert (=> start!66492 (= res!315193 ((_ is Lexer!1334) thiss!12529))))

(assert (=> start!66492 e!439042))

(declare-datatypes ((List!7670 0))(
  ( (Nil!7656) (Cons!7656 (h!13057 (_ BitVec 16)) (t!87493 List!7670)) )
))
(declare-datatypes ((TokenValue!1567 0))(
  ( (FloatLiteralValue!3134 (text!11414 List!7670)) (TokenValueExt!1566 (__x!5621 Int)) (Broken!7835 (value!49046 List!7670)) (Object!1580) (End!1567) (Def!1567) (Underscore!1567) (Match!1567) (Else!1567) (Error!1567) (Case!1567) (If!1567) (Extends!1567) (Abstract!1567) (Class!1567) (Val!1567) (DelimiterValue!3134 (del!1627 List!7670)) (KeywordValue!1573 (value!49047 List!7670)) (CommentValue!3134 (value!49048 List!7670)) (WhitespaceValue!3134 (value!49049 List!7670)) (IndentationValue!1567 (value!49050 List!7670)) (String!9562) (Int32!1567) (Broken!7836 (value!49051 List!7670)) (Boolean!1568) (Unit!12696) (OperatorValue!1570 (op!1627 List!7670)) (IdentifierValue!3134 (value!49052 List!7670)) (IdentifierValue!3135 (value!49053 List!7670)) (WhitespaceValue!3135 (value!49054 List!7670)) (True!3134) (False!3134) (Broken!7837 (value!49055 List!7670)) (Broken!7838 (value!49056 List!7670)) (True!3135) (RightBrace!1567) (RightBracket!1567) (Colon!1567) (Null!1567) (Comma!1567) (LeftBracket!1567) (False!3135) (LeftBrace!1567) (ImaginaryLiteralValue!1567 (text!11415 List!7670)) (StringLiteralValue!4701 (value!49057 List!7670)) (EOFValue!1567 (value!49058 List!7670)) (IdentValue!1567 (value!49059 List!7670)) (DelimiterValue!3135 (value!49060 List!7670)) (DedentValue!1567 (value!49061 List!7670)) (NewLineValue!1567 (value!49062 List!7670)) (IntegerValue!4701 (value!49063 (_ BitVec 32)) (text!11416 List!7670)) (IntegerValue!4702 (value!49064 Int) (text!11417 List!7670)) (Times!1567) (Or!1567) (Equal!1567) (Minus!1567) (Broken!7839 (value!49065 List!7670)) (And!1567) (Div!1567) (LessEqual!1567) (Mod!1567) (Concat!3431) (Not!1567) (Plus!1567) (SpaceValue!1567 (value!49066 List!7670)) (IntegerValue!4703 (value!49067 Int) (text!11418 List!7670)) (StringLiteralValue!4702 (text!11419 List!7670)) (FloatLiteralValue!3135 (text!11420 List!7670)) (BytesLiteralValue!1567 (value!49068 List!7670)) (CommentValue!3135 (value!49069 List!7670)) (StringLiteralValue!4703 (value!49070 List!7670)) (ErrorTokenValue!1567 (msg!1628 List!7670)) )
))
(declare-datatypes ((String!9563 0))(
  ( (String!9564 (value!49071 String)) )
))
(declare-datatypes ((TokenValueInjection!2870 0))(
  ( (TokenValueInjection!2871 (toValue!2487 Int) (toChars!2346 Int)) )
))
(declare-datatypes ((Rule!2846 0))(
  ( (Rule!2847 (regex!1523 Regex!1863) (tag!1785 String!9563) (isSeparator!1523 Bool) (transformation!1523 TokenValueInjection!2870)) )
))
(declare-datatypes ((Token!2746 0))(
  ( (Token!2747 (value!49072 TokenValue!1567) (rule!2562 Rule!2846) (size!6243 Int) (originalCharacters!1798 List!7667)) )
))
(declare-datatypes ((List!7671 0))(
  ( (Nil!7657) (Cons!7657 (h!13058 Token!2746) (t!87494 List!7671)) )
))
(declare-datatypes ((IArray!5373 0))(
  ( (IArray!5374 (innerList!2744 List!7671)) )
))
(declare-datatypes ((Conc!2686 0))(
  ( (Node!2686 (left!6058 Conc!2686) (right!6388 Conc!2686) (csize!5602 Int) (cheight!2897 Int)) (Leaf!3971 (xs!5339 IArray!5373) (csize!5603 Int)) (Empty!2686) )
))
(declare-datatypes ((BalanceConc!5384 0))(
  ( (BalanceConc!5385 (c!121902 Conc!2686)) )
))
(declare-fun acc!372 () BalanceConc!5384)

(declare-fun e!439049 () Bool)

(declare-fun inv!9779 (BalanceConc!5384) Bool)

(assert (=> start!66492 (and (inv!9779 acc!372) e!439049)))

(declare-fun e!439043 () Bool)

(declare-fun inv!9780 (BalanceConc!5382) Bool)

(assert (=> start!66492 (and (inv!9780 treated!50) e!439043)))

(declare-fun e!439033 () Bool)

(assert (=> start!66492 (and (inv!9780 totalInput!378) e!439033)))

(declare-fun e!439039 () Bool)

(assert (=> start!66492 (and (inv!9780 input!870) e!439039)))

(declare-fun e!439044 () Bool)

(assert (=> start!66492 e!439044))

(assert (=> start!66492 true))

(declare-fun e!439054 () Bool)

(declare-fun inv!9781 (CacheUp!418) Bool)

(assert (=> start!66492 (and (inv!9781 cacheUp!502) e!439054)))

(declare-fun e!439046 () Bool)

(declare-fun inv!9782 (CacheDown!424) Bool)

(assert (=> start!66492 (and (inv!9782 cacheDown!515) e!439046)))

(declare-fun e!439060 () Bool)

(declare-fun inv!9783 (CacheFindLongestMatch!82) Bool)

(assert (=> start!66492 (and (inv!9783 cacheFindLongestMatch!74) e!439060)))

(declare-fun b!696522 () Bool)

(declare-fun e!439035 () Bool)

(assert (=> b!696522 (= e!439032 e!439035)))

(declare-fun e!439028 () Bool)

(assert (=> b!696531 (= e!439028 (and e!439064 tp!211574))))

(declare-fun e!439048 () Bool)

(assert (=> b!696532 (= e!439048 (and e!439030 tp!211594))))

(declare-fun b!696533 () Bool)

(declare-fun e!439045 () Bool)

(declare-fun tp!211596 () Bool)

(assert (=> b!696533 (= e!439044 (and e!439045 tp!211596))))

(declare-fun b!696534 () Bool)

(declare-fun e!439047 () Bool)

(assert (=> b!696534 (= e!439052 e!439047)))

(declare-fun mapIsEmpty!3326 () Bool)

(assert (=> mapIsEmpty!3326 mapRes!3326))

(declare-fun b!696535 () Bool)

(declare-fun res!315183 () Bool)

(assert (=> b!696535 (=> (not res!315183) (not e!439042))))

(declare-datatypes ((List!7672 0))(
  ( (Nil!7658) (Cons!7658 (h!13059 Rule!2846) (t!87495 List!7672)) )
))
(declare-fun rules!1486 () List!7672)

(declare-fun rulesInvariant!1263 (LexerInterface!1336 List!7672) Bool)

(assert (=> b!696535 (= res!315183 (rulesInvariant!1263 thiss!12529 rules!1486))))

(declare-fun b!696536 () Bool)

(declare-fun tp!211582 () Bool)

(declare-fun inv!9784 (Conc!2685) Bool)

(assert (=> b!696536 (= e!439039 (and (inv!9784 (c!121901 input!870)) tp!211582))))

(declare-fun b!696537 () Bool)

(declare-fun e!439041 () Bool)

(declare-fun rulesValidInductive!528 (LexerInterface!1336 List!7672) Bool)

(assert (=> b!696537 (= e!439041 (rulesValidInductive!528 thiss!12529 rules!1486))))

(declare-datatypes ((tuple2!8156 0))(
  ( (tuple2!8157 (_1!4527 Token!2746) (_2!4527 BalanceConc!5382)) )
))
(declare-datatypes ((Option!1720 0))(
  ( (None!1719) (Some!1719 (v!17793 tuple2!8156)) )
))
(declare-datatypes ((tuple4!144 0))(
  ( (tuple4!145 (_1!4528 Option!1720) (_2!4528 CacheUp!418) (_3!449 CacheDown!424) (_4!72 CacheFindLongestMatch!82)) )
))
(declare-fun lt!285974 () tuple4!144)

(declare-fun lt!285965 () tuple4!144)

(declare-fun maxPrefixZipperSequenceV2Mem!11 (LexerInterface!1336 List!7672 BalanceConc!5382 BalanceConc!5382 CacheUp!418 CacheDown!424 CacheFindLongestMatch!82) tuple4!144)

(assert (=> b!696537 (= lt!285965 (maxPrefixZipperSequenceV2Mem!11 thiss!12529 rules!1486 input!870 totalInput!378 (_2!4528 lt!285974) (_3!449 lt!285974) (_4!72 lt!285974)))))

(declare-datatypes ((tuple2!8158 0))(
  ( (tuple2!8159 (_1!4529 BalanceConc!5384) (_2!4529 BalanceConc!5382)) )
))
(declare-fun lt!285969 () tuple2!8158)

(declare-fun lexRec!178 (LexerInterface!1336 List!7672 BalanceConc!5382) tuple2!8158)

(assert (=> b!696537 (= lt!285969 (lexRec!178 thiss!12529 rules!1486 (_2!4527 (v!17793 (_1!4528 lt!285974)))))))

(declare-fun b!696538 () Bool)

(declare-fun e!439053 () Bool)

(declare-fun e!439029 () Bool)

(declare-fun lt!285966 () MutLongMap!829)

(assert (=> b!696538 (= e!439053 (and e!439029 ((_ is LongMap!829) lt!285966)))))

(assert (=> b!696538 (= lt!285966 (v!17792 (underlying!1842 (cache!1188 cacheDown!515))))))

(declare-fun b!696539 () Bool)

(declare-fun e!439062 () Bool)

(assert (=> b!696539 (= e!439062 e!439037)))

(declare-fun res!315191 () Bool)

(assert (=> b!696539 (=> (not res!315191) (not e!439037))))

(declare-fun lt!285963 () tuple2!8158)

(declare-fun lt!285962 () tuple2!8158)

(declare-fun list!3191 (BalanceConc!5384) List!7671)

(declare-fun ++!1991 (BalanceConc!5384 BalanceConc!5384) BalanceConc!5384)

(assert (=> b!696539 (= res!315191 (= (list!3191 (_1!4529 lt!285963)) (list!3191 (++!1991 acc!372 (_1!4529 lt!285962)))))))

(assert (=> b!696539 (= lt!285962 (lexRec!178 thiss!12529 rules!1486 input!870))))

(assert (=> b!696539 (= lt!285963 (lexRec!178 thiss!12529 rules!1486 totalInput!378))))

(declare-fun mapIsEmpty!3327 () Bool)

(assert (=> mapIsEmpty!3327 mapRes!3328))

(declare-fun b!696540 () Bool)

(declare-fun res!315188 () Bool)

(assert (=> b!696540 (=> (not res!315188) (not e!439037))))

(assert (=> b!696540 (= res!315188 (= (totalInput!1826 cacheFindLongestMatch!74) totalInput!378))))

(declare-fun b!696541 () Bool)

(declare-fun e!439051 () Bool)

(declare-fun tp!211584 () Bool)

(assert (=> b!696541 (= e!439051 (and tp!211584 mapRes!3328))))

(declare-fun condMapEmpty!3327 () Bool)

(declare-fun mapDefault!3326 () List!7666)

(assert (=> b!696541 (= condMapEmpty!3327 (= (arr!1381 (_values!1106 (v!17787 (underlying!1837 (v!17788 (underlying!1838 (cache!1186 cacheFindLongestMatch!74))))))) ((as const (Array (_ BitVec 32) List!7666)) mapDefault!3326)))))

(declare-fun mapNonEmpty!3328 () Bool)

(declare-fun tp!211590 () Bool)

(declare-fun tp!211588 () Bool)

(assert (=> mapNonEmpty!3328 (= mapRes!3326 (and tp!211590 tp!211588))))

(declare-fun mapValue!3327 () List!7668)

(declare-fun mapRest!3327 () (Array (_ BitVec 32) List!7668))

(declare-fun mapKey!3327 () (_ BitVec 32))

(assert (=> mapNonEmpty!3328 (= (arr!1382 (_values!1107 (v!17789 (underlying!1839 (v!17790 (underlying!1840 (cache!1187 cacheUp!502))))))) (store mapRest!3327 mapKey!3327 mapValue!3327))))

(declare-fun b!696542 () Bool)

(declare-fun e!439059 () Bool)

(assert (=> b!696542 (= e!439046 e!439059)))

(declare-fun e!439040 () Bool)

(declare-fun b!696543 () Bool)

(assert (=> b!696543 (= e!439060 (and e!439048 (inv!9780 (totalInput!1826 cacheFindLongestMatch!74)) e!439040))))

(declare-fun b!696544 () Bool)

(declare-fun e!439063 () Bool)

(assert (=> b!696544 (= e!439047 e!439063)))

(declare-fun b!696545 () Bool)

(declare-fun e!439057 () Bool)

(assert (=> b!696545 (= e!439037 (not e!439057))))

(declare-fun res!315185 () Bool)

(assert (=> b!696545 (=> res!315185 e!439057)))

(declare-fun isSuffix!142 (List!7667 List!7667) Bool)

(assert (=> b!696545 (= res!315185 (not (isSuffix!142 lt!285970 lt!285973)))))

(assert (=> b!696545 (isSuffix!142 lt!285970 lt!285964)))

(declare-datatypes ((Unit!12697 0))(
  ( (Unit!12698) )
))
(declare-fun lt!285971 () Unit!12697)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!142 (List!7667 List!7667) Unit!12697)

(assert (=> b!696545 (= lt!285971 (lemmaConcatTwoListThenFSndIsSuffix!142 lt!285967 lt!285970))))

(declare-fun b!696546 () Bool)

(declare-fun e!439034 () Bool)

(declare-fun e!439031 () Bool)

(assert (=> b!696546 (= e!439034 e!439031)))

(declare-fun b!696547 () Bool)

(assert (=> b!696547 (= e!439036 e!439062)))

(declare-fun res!315189 () Bool)

(assert (=> b!696547 (=> (not res!315189) (not e!439062))))

(declare-fun lt!285961 () tuple2!8158)

(assert (=> b!696547 (= res!315189 (= (list!3191 (_1!4529 lt!285961)) (list!3191 acc!372)))))

(assert (=> b!696547 (= lt!285961 (lexRec!178 thiss!12529 rules!1486 treated!50))))

(declare-fun b!696548 () Bool)

(declare-fun tp!211576 () Bool)

(declare-fun inv!9785 (Conc!2686) Bool)

(assert (=> b!696548 (= e!439049 (and (inv!9785 (c!121902 acc!372)) tp!211576))))

(declare-fun tp!211583 () Bool)

(declare-fun tp!211580 () Bool)

(declare-fun array_inv!1019 (array!3063) Bool)

(assert (=> b!696549 (= e!439031 (and tp!211577 tp!211580 tp!211583 (array_inv!1017 (_keys!1123 (v!17791 (underlying!1841 (v!17792 (underlying!1842 (cache!1188 cacheDown!515))))))) (array_inv!1019 (_values!1108 (v!17791 (underlying!1841 (v!17792 (underlying!1842 (cache!1188 cacheDown!515))))))) e!439038))))

(declare-fun b!696550 () Bool)

(declare-fun res!315186 () Bool)

(assert (=> b!696550 (=> (not res!315186) (not e!439062))))

(declare-fun isEmpty!4911 (List!7667) Bool)

(assert (=> b!696550 (= res!315186 (isEmpty!4911 (list!3190 (_2!4529 lt!285961))))))

(declare-fun b!696551 () Bool)

(declare-fun res!315192 () Bool)

(assert (=> b!696551 (=> (not res!315192) (not e!439042))))

(declare-fun isEmpty!4912 (List!7672) Bool)

(assert (=> b!696551 (= res!315192 (not (isEmpty!4912 rules!1486)))))

(declare-fun b!696552 () Bool)

(assert (=> b!696552 (= e!439035 e!439055)))

(declare-fun b!696553 () Bool)

(declare-fun res!315190 () Bool)

(assert (=> b!696553 (=> (not res!315190) (not e!439037))))

(declare-fun valid!703 (CacheDown!424) Bool)

(assert (=> b!696553 (= res!315190 (valid!703 cacheDown!515))))

(declare-fun b!696554 () Bool)

(declare-fun tp!211589 () Bool)

(assert (=> b!696554 (= e!439040 (and (inv!9784 (c!121901 (totalInput!1826 cacheFindLongestMatch!74))) tp!211589))))

(declare-fun b!696555 () Bool)

(declare-fun tp!211578 () Bool)

(assert (=> b!696555 (= e!439043 (and (inv!9784 (c!121901 treated!50)) tp!211578))))

(declare-fun b!696556 () Bool)

(assert (=> b!696556 (= e!439057 e!439041)))

(declare-fun res!315184 () Bool)

(assert (=> b!696556 (=> res!315184 e!439041)))

(assert (=> b!696556 (= res!315184 (not ((_ is Some!1719) (_1!4528 lt!285974))))))

(assert (=> b!696556 (= lt!285974 (maxPrefixZipperSequenceV2Mem!11 thiss!12529 rules!1486 input!870 totalInput!378 cacheUp!502 cacheDown!515 cacheFindLongestMatch!74))))

(declare-fun tp!211579 () Bool)

(declare-fun tp!211586 () Bool)

(declare-fun array_inv!1020 (array!3059) Bool)

(assert (=> b!696557 (= e!439063 (and tp!211575 tp!211586 tp!211579 (array_inv!1017 (_keys!1121 (v!17787 (underlying!1837 (v!17788 (underlying!1838 (cache!1186 cacheFindLongestMatch!74))))))) (array_inv!1020 (_values!1106 (v!17787 (underlying!1837 (v!17788 (underlying!1838 (cache!1186 cacheFindLongestMatch!74))))))) e!439051))))

(declare-fun b!696558 () Bool)

(declare-fun res!315182 () Bool)

(assert (=> b!696558 (=> (not res!315182) (not e!439037))))

(declare-fun valid!704 (CacheFindLongestMatch!82) Bool)

(assert (=> b!696558 (= res!315182 (valid!704 cacheFindLongestMatch!74))))

(declare-fun mapIsEmpty!3328 () Bool)

(assert (=> mapIsEmpty!3328 mapRes!3327))

(assert (=> b!696559 (= e!439059 (and e!439053 tp!211581))))

(declare-fun b!696560 () Bool)

(declare-fun tp!211591 () Bool)

(declare-fun inv!9778 (String!9563) Bool)

(declare-fun inv!9786 (TokenValueInjection!2870) Bool)

(assert (=> b!696560 (= e!439045 (and tp!211591 (inv!9778 (tag!1785 (h!13059 rules!1486))) (inv!9786 (transformation!1523 (h!13059 rules!1486))) e!439065))))

(declare-fun b!696561 () Bool)

(assert (=> b!696561 (= e!439029 e!439034)))

(declare-fun b!696562 () Bool)

(declare-fun tp!211595 () Bool)

(assert (=> b!696562 (= e!439033 (and (inv!9784 (c!121901 totalInput!378)) tp!211595))))

(declare-fun b!696563 () Bool)

(declare-fun res!315187 () Bool)

(assert (=> b!696563 (=> (not res!315187) (not e!439037))))

(assert (=> b!696563 (= res!315187 (= (list!3190 (_2!4529 lt!285963)) (list!3190 (_2!4529 lt!285962))))))

(declare-fun b!696564 () Bool)

(assert (=> b!696564 (= e!439054 e!439028)))

(assert (= (and start!66492 res!315193) b!696551))

(assert (= (and b!696551 res!315192) b!696535))

(assert (= (and b!696535 res!315183) b!696526))

(assert (= (and b!696526 res!315181) b!696547))

(assert (= (and b!696547 res!315189) b!696550))

(assert (= (and b!696550 res!315186) b!696539))

(assert (= (and b!696539 res!315191) b!696563))

(assert (= (and b!696563 res!315187) b!696529))

(assert (= (and b!696529 res!315180) b!696553))

(assert (= (and b!696553 res!315190) b!696558))

(assert (= (and b!696558 res!315182) b!696540))

(assert (= (and b!696540 res!315188) b!696545))

(assert (= (and b!696545 (not res!315185)) b!696556))

(assert (= (and b!696556 (not res!315184)) b!696537))

(assert (= start!66492 b!696548))

(assert (= start!66492 b!696555))

(assert (= start!66492 b!696562))

(assert (= start!66492 b!696536))

(assert (= b!696560 b!696523))

(assert (= b!696533 b!696560))

(assert (= (and start!66492 ((_ is Cons!7658) rules!1486)) b!696533))

(assert (= (and b!696530 condMapEmpty!3326) mapIsEmpty!3326))

(assert (= (and b!696530 (not condMapEmpty!3326)) mapNonEmpty!3328))

(assert (= b!696527 b!696530))

(assert (= b!696552 b!696527))

(assert (= b!696522 b!696552))

(assert (= (and b!696525 ((_ is LongMap!828) (v!17790 (underlying!1840 (cache!1187 cacheUp!502))))) b!696522))

(assert (= b!696531 b!696525))

(assert (= (and b!696564 ((_ is HashMap!800) (cache!1187 cacheUp!502))) b!696531))

(assert (= start!66492 b!696564))

(assert (= (and b!696528 condMapEmpty!3328) mapIsEmpty!3328))

(assert (= (and b!696528 (not condMapEmpty!3328)) mapNonEmpty!3326))

(assert (= b!696549 b!696528))

(assert (= b!696546 b!696549))

(assert (= b!696561 b!696546))

(assert (= (and b!696538 ((_ is LongMap!829) (v!17792 (underlying!1842 (cache!1188 cacheDown!515))))) b!696561))

(assert (= b!696559 b!696538))

(assert (= (and b!696542 ((_ is HashMap!801) (cache!1188 cacheDown!515))) b!696559))

(assert (= start!66492 b!696542))

(assert (= (and b!696541 condMapEmpty!3327) mapIsEmpty!3327))

(assert (= (and b!696541 (not condMapEmpty!3327)) mapNonEmpty!3327))

(assert (= b!696557 b!696541))

(assert (= b!696544 b!696557))

(assert (= b!696534 b!696544))

(assert (= (and b!696524 ((_ is LongMap!827) (v!17788 (underlying!1838 (cache!1186 cacheFindLongestMatch!74))))) b!696534))

(assert (= b!696532 b!696524))

(assert (= (and b!696543 ((_ is HashMap!799) (cache!1186 cacheFindLongestMatch!74))) b!696532))

(assert (= b!696543 b!696554))

(assert (= start!66492 b!696543))

(declare-fun m!952265 () Bool)

(assert (=> b!696556 m!952265))

(declare-fun m!952267 () Bool)

(assert (=> b!696547 m!952267))

(declare-fun m!952269 () Bool)

(assert (=> b!696547 m!952269))

(declare-fun m!952271 () Bool)

(assert (=> b!696547 m!952271))

(declare-fun m!952273 () Bool)

(assert (=> b!696527 m!952273))

(declare-fun m!952275 () Bool)

(assert (=> b!696527 m!952275))

(declare-fun m!952277 () Bool)

(assert (=> b!696549 m!952277))

(declare-fun m!952279 () Bool)

(assert (=> b!696549 m!952279))

(declare-fun m!952281 () Bool)

(assert (=> b!696550 m!952281))

(assert (=> b!696550 m!952281))

(declare-fun m!952283 () Bool)

(assert (=> b!696550 m!952283))

(declare-fun m!952285 () Bool)

(assert (=> b!696537 m!952285))

(declare-fun m!952287 () Bool)

(assert (=> b!696537 m!952287))

(declare-fun m!952289 () Bool)

(assert (=> b!696537 m!952289))

(declare-fun m!952291 () Bool)

(assert (=> b!696562 m!952291))

(declare-fun m!952293 () Bool)

(assert (=> mapNonEmpty!3328 m!952293))

(declare-fun m!952295 () Bool)

(assert (=> b!696558 m!952295))

(declare-fun m!952297 () Bool)

(assert (=> b!696553 m!952297))

(declare-fun m!952299 () Bool)

(assert (=> mapNonEmpty!3327 m!952299))

(declare-fun m!952301 () Bool)

(assert (=> b!696529 m!952301))

(declare-fun m!952303 () Bool)

(assert (=> b!696551 m!952303))

(declare-fun m!952305 () Bool)

(assert (=> b!696563 m!952305))

(declare-fun m!952307 () Bool)

(assert (=> b!696563 m!952307))

(declare-fun m!952309 () Bool)

(assert (=> b!696543 m!952309))

(declare-fun m!952311 () Bool)

(assert (=> b!696555 m!952311))

(declare-fun m!952313 () Bool)

(assert (=> b!696557 m!952313))

(declare-fun m!952315 () Bool)

(assert (=> b!696557 m!952315))

(declare-fun m!952317 () Bool)

(assert (=> b!696536 m!952317))

(declare-fun m!952319 () Bool)

(assert (=> b!696526 m!952319))

(declare-fun m!952321 () Bool)

(assert (=> b!696526 m!952321))

(declare-fun m!952323 () Bool)

(assert (=> b!696526 m!952323))

(declare-fun m!952325 () Bool)

(assert (=> b!696526 m!952325))

(declare-fun m!952327 () Bool)

(assert (=> start!66492 m!952327))

(declare-fun m!952329 () Bool)

(assert (=> start!66492 m!952329))

(declare-fun m!952331 () Bool)

(assert (=> start!66492 m!952331))

(declare-fun m!952333 () Bool)

(assert (=> start!66492 m!952333))

(declare-fun m!952335 () Bool)

(assert (=> start!66492 m!952335))

(declare-fun m!952337 () Bool)

(assert (=> start!66492 m!952337))

(declare-fun m!952339 () Bool)

(assert (=> start!66492 m!952339))

(declare-fun m!952341 () Bool)

(assert (=> mapNonEmpty!3326 m!952341))

(declare-fun m!952343 () Bool)

(assert (=> b!696548 m!952343))

(declare-fun m!952345 () Bool)

(assert (=> b!696535 m!952345))

(declare-fun m!952347 () Bool)

(assert (=> b!696560 m!952347))

(declare-fun m!952349 () Bool)

(assert (=> b!696560 m!952349))

(declare-fun m!952351 () Bool)

(assert (=> b!696545 m!952351))

(declare-fun m!952353 () Bool)

(assert (=> b!696545 m!952353))

(declare-fun m!952355 () Bool)

(assert (=> b!696545 m!952355))

(declare-fun m!952357 () Bool)

(assert (=> b!696539 m!952357))

(declare-fun m!952359 () Bool)

(assert (=> b!696539 m!952359))

(declare-fun m!952361 () Bool)

(assert (=> b!696539 m!952361))

(declare-fun m!952363 () Bool)

(assert (=> b!696539 m!952363))

(assert (=> b!696539 m!952363))

(declare-fun m!952365 () Bool)

(assert (=> b!696539 m!952365))

(declare-fun m!952367 () Bool)

(assert (=> b!696554 m!952367))

(check-sat b_and!63777 (not b!696560) (not b!696550) b_and!63779 (not b!696547) (not mapNonEmpty!3327) b_and!63781 (not b_next!20047) (not b!696529) b_and!63785 (not b!696553) (not b_next!20053) (not b!696541) b_and!63787 (not b_next!20059) (not mapNonEmpty!3328) (not b!696558) (not b_next!20055) (not b!696530) (not b!696526) (not b!696557) (not b!696555) b_and!63783 (not b!696551) (not b!696563) (not b!696527) (not b!696535) (not b!696554) (not b!696556) (not start!66492) (not b!696539) (not b_next!20045) (not b_next!20057) (not b_next!20049) (not b!696528) (not b!696543) (not b!696562) (not b!696533) (not b_next!20051) (not b!696545) (not b!696537) b_and!63775 (not mapNonEmpty!3326) (not b!696536) (not b!696548) b_and!63789 (not b!696549))
(check-sat b_and!63777 (not b_next!20059) (not b_next!20055) b_and!63779 b_and!63783 b_and!63781 (not b_next!20049) (not b_next!20047) (not b_next!20051) b_and!63785 b_and!63775 (not b_next!20053) b_and!63789 b_and!63787 (not b_next!20045) (not b_next!20057))
(get-model)

(declare-fun d!233287 () Bool)

(assert (=> d!233287 (= (isEmpty!4912 rules!1486) ((_ is Nil!7658) rules!1486))))

(assert (=> b!696551 d!233287))

(declare-fun d!233289 () Bool)

(assert (=> d!233289 (= (isEmpty!4911 (list!3190 (_2!4529 lt!285961))) ((_ is Nil!7653) (list!3190 (_2!4529 lt!285961))))))

(assert (=> b!696550 d!233289))

(declare-fun d!233291 () Bool)

(declare-fun list!3192 (Conc!2685) List!7667)

(assert (=> d!233291 (= (list!3190 (_2!4529 lt!285961)) (list!3192 (c!121901 (_2!4529 lt!285961))))))

(declare-fun bs!137974 () Bool)

(assert (= bs!137974 d!233291))

(declare-fun m!952369 () Bool)

(assert (=> bs!137974 m!952369))

(assert (=> b!696550 d!233291))

(declare-fun d!233293 () Bool)

(assert (=> d!233293 (= (array_inv!1017 (_keys!1123 (v!17791 (underlying!1841 (v!17792 (underlying!1842 (cache!1188 cacheDown!515))))))) (bvsge (size!6239 (_keys!1123 (v!17791 (underlying!1841 (v!17792 (underlying!1842 (cache!1188 cacheDown!515))))))) #b00000000000000000000000000000000))))

(assert (=> b!696549 d!233293))

(declare-fun d!233295 () Bool)

(assert (=> d!233295 (= (array_inv!1019 (_values!1108 (v!17791 (underlying!1841 (v!17792 (underlying!1842 (cache!1188 cacheDown!515))))))) (bvsge (size!6242 (_values!1108 (v!17791 (underlying!1841 (v!17792 (underlying!1842 (cache!1188 cacheDown!515))))))) #b00000000000000000000000000000000))))

(assert (=> b!696549 d!233295))

(declare-fun d!233297 () Bool)

(declare-fun list!3193 (Conc!2686) List!7671)

(assert (=> d!233297 (= (list!3191 (_1!4529 lt!285961)) (list!3193 (c!121902 (_1!4529 lt!285961))))))

(declare-fun bs!137975 () Bool)

(assert (= bs!137975 d!233297))

(declare-fun m!952371 () Bool)

(assert (=> bs!137975 m!952371))

(assert (=> b!696547 d!233297))

(declare-fun d!233299 () Bool)

(assert (=> d!233299 (= (list!3191 acc!372) (list!3193 (c!121902 acc!372)))))

(declare-fun bs!137976 () Bool)

(assert (= bs!137976 d!233299))

(declare-fun m!952373 () Bool)

(assert (=> bs!137976 m!952373))

(assert (=> b!696547 d!233299))

(declare-fun d!233301 () Bool)

(declare-fun e!439077 () Bool)

(assert (=> d!233301 e!439077))

(declare-fun res!315204 () Bool)

(assert (=> d!233301 (=> (not res!315204) (not e!439077))))

(declare-fun e!439075 () Bool)

(assert (=> d!233301 (= res!315204 e!439075)))

(declare-fun c!121908 () Bool)

(declare-fun lt!285983 () tuple2!8158)

(declare-fun size!6244 (BalanceConc!5384) Int)

(assert (=> d!233301 (= c!121908 (> (size!6244 (_1!4529 lt!285983)) 0))))

(declare-fun e!439074 () tuple2!8158)

(assert (=> d!233301 (= lt!285983 e!439074)))

(declare-fun c!121909 () Bool)

(declare-fun lt!285981 () Option!1720)

(assert (=> d!233301 (= c!121909 ((_ is Some!1719) lt!285981))))

(declare-fun maxPrefixZipperSequence!461 (LexerInterface!1336 List!7672 BalanceConc!5382) Option!1720)

(assert (=> d!233301 (= lt!285981 (maxPrefixZipperSequence!461 thiss!12529 rules!1486 treated!50))))

(assert (=> d!233301 (= (lexRec!178 thiss!12529 rules!1486 treated!50) lt!285983)))

(declare-fun b!696579 () Bool)

(assert (=> b!696579 (= e!439075 (= (list!3190 (_2!4529 lt!285983)) (list!3190 treated!50)))))

(declare-fun b!696580 () Bool)

(assert (=> b!696580 (= e!439074 (tuple2!8159 (BalanceConc!5385 Empty!2686) treated!50))))

(declare-fun b!696581 () Bool)

(declare-fun res!315202 () Bool)

(assert (=> b!696581 (=> (not res!315202) (not e!439077))))

(declare-datatypes ((tuple2!8160 0))(
  ( (tuple2!8161 (_1!4530 List!7671) (_2!4530 List!7667)) )
))
(declare-fun lexList!327 (LexerInterface!1336 List!7672 List!7667) tuple2!8160)

(assert (=> b!696581 (= res!315202 (= (list!3191 (_1!4529 lt!285983)) (_1!4530 (lexList!327 thiss!12529 rules!1486 (list!3190 treated!50)))))))

(declare-fun b!696582 () Bool)

(declare-fun e!439076 () Bool)

(assert (=> b!696582 (= e!439075 e!439076)))

(declare-fun res!315203 () Bool)

(declare-fun size!6245 (BalanceConc!5382) Int)

(assert (=> b!696582 (= res!315203 (< (size!6245 (_2!4529 lt!285983)) (size!6245 treated!50)))))

(assert (=> b!696582 (=> (not res!315203) (not e!439076))))

(declare-fun b!696583 () Bool)

(declare-fun isEmpty!4913 (BalanceConc!5384) Bool)

(assert (=> b!696583 (= e!439076 (not (isEmpty!4913 (_1!4529 lt!285983))))))

(declare-fun b!696584 () Bool)

(assert (=> b!696584 (= e!439077 (= (list!3190 (_2!4529 lt!285983)) (_2!4530 (lexList!327 thiss!12529 rules!1486 (list!3190 treated!50)))))))

(declare-fun b!696585 () Bool)

(declare-fun lt!285982 () tuple2!8158)

(declare-fun prepend!263 (BalanceConc!5384 Token!2746) BalanceConc!5384)

(assert (=> b!696585 (= e!439074 (tuple2!8159 (prepend!263 (_1!4529 lt!285982) (_1!4527 (v!17793 lt!285981))) (_2!4529 lt!285982)))))

(assert (=> b!696585 (= lt!285982 (lexRec!178 thiss!12529 rules!1486 (_2!4527 (v!17793 lt!285981))))))

(assert (= (and d!233301 c!121909) b!696585))

(assert (= (and d!233301 (not c!121909)) b!696580))

(assert (= (and d!233301 c!121908) b!696582))

(assert (= (and d!233301 (not c!121908)) b!696579))

(assert (= (and b!696582 res!315203) b!696583))

(assert (= (and d!233301 res!315204) b!696581))

(assert (= (and b!696581 res!315202) b!696584))

(declare-fun m!952375 () Bool)

(assert (=> b!696585 m!952375))

(declare-fun m!952377 () Bool)

(assert (=> b!696585 m!952377))

(declare-fun m!952379 () Bool)

(assert (=> b!696579 m!952379))

(assert (=> b!696579 m!952325))

(assert (=> b!696584 m!952379))

(assert (=> b!696584 m!952325))

(assert (=> b!696584 m!952325))

(declare-fun m!952381 () Bool)

(assert (=> b!696584 m!952381))

(declare-fun m!952383 () Bool)

(assert (=> b!696581 m!952383))

(assert (=> b!696581 m!952325))

(assert (=> b!696581 m!952325))

(assert (=> b!696581 m!952381))

(declare-fun m!952385 () Bool)

(assert (=> d!233301 m!952385))

(declare-fun m!952387 () Bool)

(assert (=> d!233301 m!952387))

(declare-fun m!952389 () Bool)

(assert (=> b!696582 m!952389))

(declare-fun m!952391 () Bool)

(assert (=> b!696582 m!952391))

(declare-fun m!952393 () Bool)

(assert (=> b!696583 m!952393))

(assert (=> b!696547 d!233301))

(declare-fun d!233303 () Bool)

(declare-fun c!121912 () Bool)

(assert (=> d!233303 (= c!121912 ((_ is Node!2686) (c!121902 acc!372)))))

(declare-fun e!439082 () Bool)

(assert (=> d!233303 (= (inv!9785 (c!121902 acc!372)) e!439082)))

(declare-fun b!696592 () Bool)

(declare-fun inv!9787 (Conc!2686) Bool)

(assert (=> b!696592 (= e!439082 (inv!9787 (c!121902 acc!372)))))

(declare-fun b!696593 () Bool)

(declare-fun e!439083 () Bool)

(assert (=> b!696593 (= e!439082 e!439083)))

(declare-fun res!315207 () Bool)

(assert (=> b!696593 (= res!315207 (not ((_ is Leaf!3971) (c!121902 acc!372))))))

(assert (=> b!696593 (=> res!315207 e!439083)))

(declare-fun b!696594 () Bool)

(declare-fun inv!9788 (Conc!2686) Bool)

(assert (=> b!696594 (= e!439083 (inv!9788 (c!121902 acc!372)))))

(assert (= (and d!233303 c!121912) b!696592))

(assert (= (and d!233303 (not c!121912)) b!696593))

(assert (= (and b!696593 (not res!315207)) b!696594))

(declare-fun m!952395 () Bool)

(assert (=> b!696592 m!952395))

(declare-fun m!952397 () Bool)

(assert (=> b!696594 m!952397))

(assert (=> b!696548 d!233303))

(declare-fun d!233305 () Bool)

(assert (=> d!233305 true))

(declare-fun lt!285986 () Bool)

(declare-fun lambda!21601 () Int)

(declare-fun forall!1964 (List!7672 Int) Bool)

(assert (=> d!233305 (= lt!285986 (forall!1964 rules!1486 lambda!21601))))

(declare-fun e!439088 () Bool)

(assert (=> d!233305 (= lt!285986 e!439088)))

(declare-fun res!315213 () Bool)

(assert (=> d!233305 (=> res!315213 e!439088)))

(assert (=> d!233305 (= res!315213 (not ((_ is Cons!7658) rules!1486)))))

(assert (=> d!233305 (= (rulesValidInductive!528 thiss!12529 rules!1486) lt!285986)))

(declare-fun b!696599 () Bool)

(declare-fun e!439089 () Bool)

(assert (=> b!696599 (= e!439088 e!439089)))

(declare-fun res!315212 () Bool)

(assert (=> b!696599 (=> (not res!315212) (not e!439089))))

(declare-fun ruleValid!466 (LexerInterface!1336 Rule!2846) Bool)

(assert (=> b!696599 (= res!315212 (ruleValid!466 thiss!12529 (h!13059 rules!1486)))))

(declare-fun b!696600 () Bool)

(assert (=> b!696600 (= e!439089 (rulesValidInductive!528 thiss!12529 (t!87495 rules!1486)))))

(assert (= (and d!233305 (not res!315213)) b!696599))

(assert (= (and b!696599 res!315212) b!696600))

(declare-fun m!952399 () Bool)

(assert (=> d!233305 m!952399))

(declare-fun m!952401 () Bool)

(assert (=> b!696599 m!952401))

(declare-fun m!952403 () Bool)

(assert (=> b!696600 m!952403))

(assert (=> b!696537 d!233305))

(declare-fun b!696615 () Bool)

(declare-fun res!315224 () Bool)

(declare-fun e!439094 () Bool)

(assert (=> b!696615 (=> (not res!315224) (not e!439094))))

(declare-fun lt!286007 () tuple4!144)

(assert (=> b!696615 (= res!315224 (valid!704 (_4!72 lt!286007)))))

(declare-fun call!43664 () tuple4!144)

(declare-fun bm!43659 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2Mem!5 (LexerInterface!1336 Rule!2846 BalanceConc!5382 BalanceConc!5382 CacheUp!418 CacheDown!424 CacheFindLongestMatch!82) tuple4!144)

(assert (=> bm!43659 (= call!43664 (maxPrefixOneRuleZipperSequenceV2Mem!5 thiss!12529 (h!13059 rules!1486) input!870 totalInput!378 (_2!4528 lt!285974) (_3!449 lt!285974) (_4!72 lt!285974)))))

(declare-fun b!696616 () Bool)

(declare-fun res!315222 () Bool)

(assert (=> b!696616 (=> (not res!315222) (not e!439094))))

(assert (=> b!696616 (= res!315222 (valid!702 (_2!4528 lt!286007)))))

(declare-fun b!696617 () Bool)

(declare-datatypes ((tuple4!146 0))(
  ( (tuple4!147 (_1!4531 Option!1720) (_2!4531 CacheUp!418) (_3!450 CacheFindLongestMatch!82) (_4!73 CacheDown!424)) )
))
(declare-fun e!439095 () tuple4!146)

(declare-fun lt!286013 () tuple4!144)

(declare-fun lt!286009 () tuple4!144)

(assert (=> b!696617 (= e!439095 (tuple4!147 (ite (and ((_ is None!1719) (_1!4528 lt!286013)) ((_ is None!1719) (_1!4528 lt!286009))) None!1719 (ite ((_ is None!1719) (_1!4528 lt!286009)) (_1!4528 lt!286013) (ite ((_ is None!1719) (_1!4528 lt!286013)) (_1!4528 lt!286009) (ite (>= (size!6243 (_1!4527 (v!17793 (_1!4528 lt!286013)))) (size!6243 (_1!4527 (v!17793 (_1!4528 lt!286009))))) (_1!4528 lt!286013) (_1!4528 lt!286009))))) (_2!4528 lt!286009) (_4!72 lt!286009) (_3!449 lt!286009)))))

(assert (=> b!696617 (= lt!286013 call!43664)))

(assert (=> b!696617 (= lt!286009 (maxPrefixZipperSequenceV2Mem!11 thiss!12529 (t!87495 rules!1486) input!870 totalInput!378 (_2!4528 lt!286013) (_3!449 lt!286013) (_4!72 lt!286013)))))

(declare-fun d!233307 () Bool)

(assert (=> d!233307 e!439094))

(declare-fun res!315225 () Bool)

(assert (=> d!233307 (=> (not res!315225) (not e!439094))))

(declare-fun maxPrefixZipperSequenceV2!131 (LexerInterface!1336 List!7672 BalanceConc!5382 BalanceConc!5382) Option!1720)

(assert (=> d!233307 (= res!315225 (= (_1!4528 lt!286007) (maxPrefixZipperSequenceV2!131 thiss!12529 rules!1486 input!870 totalInput!378)))))

(declare-fun lt!286011 () tuple4!146)

(assert (=> d!233307 (= lt!286007 (tuple4!145 (_1!4531 lt!286011) (_2!4531 lt!286011) (_4!73 lt!286011) (_3!450 lt!286011)))))

(assert (=> d!233307 (= lt!286011 e!439095)))

(declare-fun c!121915 () Bool)

(assert (=> d!233307 (= c!121915 (and ((_ is Cons!7658) rules!1486) ((_ is Nil!7658) (t!87495 rules!1486))))))

(declare-fun lt!286012 () Unit!12697)

(declare-fun lt!286005 () Unit!12697)

(assert (=> d!233307 (= lt!286012 lt!286005)))

(declare-fun lt!286008 () List!7667)

(declare-fun lt!286006 () List!7667)

(declare-fun isPrefix!920 (List!7667 List!7667) Bool)

(assert (=> d!233307 (isPrefix!920 lt!286008 lt!286006)))

(declare-fun lemmaIsPrefixRefl!631 (List!7667 List!7667) Unit!12697)

(assert (=> d!233307 (= lt!286005 (lemmaIsPrefixRefl!631 lt!286008 lt!286006))))

(assert (=> d!233307 (= lt!286006 (list!3190 input!870))))

(assert (=> d!233307 (= lt!286008 (list!3190 input!870))))

(assert (=> d!233307 (rulesValidInductive!528 thiss!12529 rules!1486)))

(assert (=> d!233307 (= (maxPrefixZipperSequenceV2Mem!11 thiss!12529 rules!1486 input!870 totalInput!378 (_2!4528 lt!285974) (_3!449 lt!285974) (_4!72 lt!285974)) lt!286007)))

(declare-fun b!696618 () Bool)

(assert (=> b!696618 (= e!439094 (= (totalInput!1826 (_4!72 lt!286007)) totalInput!378))))

(declare-fun b!696619 () Bool)

(declare-fun res!315223 () Bool)

(assert (=> b!696619 (=> (not res!315223) (not e!439094))))

(assert (=> b!696619 (= res!315223 (valid!703 (_3!449 lt!286007)))))

(declare-fun b!696620 () Bool)

(declare-fun lt!286010 () tuple4!144)

(assert (=> b!696620 (= e!439095 (tuple4!147 (_1!4528 lt!286010) (_2!4528 lt!286010) (_4!72 lt!286010) (_3!449 lt!286010)))))

(assert (=> b!696620 (= lt!286010 call!43664)))

(assert (= (and d!233307 c!121915) b!696620))

(assert (= (and d!233307 (not c!121915)) b!696617))

(assert (= (or b!696620 b!696617) bm!43659))

(assert (= (and d!233307 res!315225) b!696616))

(assert (= (and b!696616 res!315222) b!696619))

(assert (= (and b!696619 res!315223) b!696615))

(assert (= (and b!696615 res!315224) b!696618))

(declare-fun m!952405 () Bool)

(assert (=> b!696615 m!952405))

(declare-fun m!952407 () Bool)

(assert (=> b!696617 m!952407))

(assert (=> d!233307 m!952323))

(declare-fun m!952409 () Bool)

(assert (=> d!233307 m!952409))

(declare-fun m!952411 () Bool)

(assert (=> d!233307 m!952411))

(declare-fun m!952413 () Bool)

(assert (=> d!233307 m!952413))

(assert (=> d!233307 m!952285))

(declare-fun m!952415 () Bool)

(assert (=> b!696619 m!952415))

(declare-fun m!952417 () Bool)

(assert (=> bm!43659 m!952417))

(declare-fun m!952419 () Bool)

(assert (=> b!696616 m!952419))

(assert (=> b!696537 d!233307))

(declare-fun d!233309 () Bool)

(declare-fun e!439099 () Bool)

(assert (=> d!233309 e!439099))

(declare-fun res!315228 () Bool)

(assert (=> d!233309 (=> (not res!315228) (not e!439099))))

(declare-fun e!439097 () Bool)

(assert (=> d!233309 (= res!315228 e!439097)))

(declare-fun c!121916 () Bool)

(declare-fun lt!286016 () tuple2!8158)

(assert (=> d!233309 (= c!121916 (> (size!6244 (_1!4529 lt!286016)) 0))))

(declare-fun e!439096 () tuple2!8158)

(assert (=> d!233309 (= lt!286016 e!439096)))

(declare-fun c!121917 () Bool)

(declare-fun lt!286014 () Option!1720)

(assert (=> d!233309 (= c!121917 ((_ is Some!1719) lt!286014))))

(assert (=> d!233309 (= lt!286014 (maxPrefixZipperSequence!461 thiss!12529 rules!1486 (_2!4527 (v!17793 (_1!4528 lt!285974)))))))

(assert (=> d!233309 (= (lexRec!178 thiss!12529 rules!1486 (_2!4527 (v!17793 (_1!4528 lt!285974)))) lt!286016)))

(declare-fun b!696621 () Bool)

(assert (=> b!696621 (= e!439097 (= (list!3190 (_2!4529 lt!286016)) (list!3190 (_2!4527 (v!17793 (_1!4528 lt!285974))))))))

(declare-fun b!696622 () Bool)

(assert (=> b!696622 (= e!439096 (tuple2!8159 (BalanceConc!5385 Empty!2686) (_2!4527 (v!17793 (_1!4528 lt!285974)))))))

(declare-fun b!696623 () Bool)

(declare-fun res!315226 () Bool)

(assert (=> b!696623 (=> (not res!315226) (not e!439099))))

(assert (=> b!696623 (= res!315226 (= (list!3191 (_1!4529 lt!286016)) (_1!4530 (lexList!327 thiss!12529 rules!1486 (list!3190 (_2!4527 (v!17793 (_1!4528 lt!285974))))))))))

(declare-fun b!696624 () Bool)

(declare-fun e!439098 () Bool)

(assert (=> b!696624 (= e!439097 e!439098)))

(declare-fun res!315227 () Bool)

(assert (=> b!696624 (= res!315227 (< (size!6245 (_2!4529 lt!286016)) (size!6245 (_2!4527 (v!17793 (_1!4528 lt!285974))))))))

(assert (=> b!696624 (=> (not res!315227) (not e!439098))))

(declare-fun b!696625 () Bool)

(assert (=> b!696625 (= e!439098 (not (isEmpty!4913 (_1!4529 lt!286016))))))

(declare-fun b!696626 () Bool)

(assert (=> b!696626 (= e!439099 (= (list!3190 (_2!4529 lt!286016)) (_2!4530 (lexList!327 thiss!12529 rules!1486 (list!3190 (_2!4527 (v!17793 (_1!4528 lt!285974))))))))))

(declare-fun b!696627 () Bool)

(declare-fun lt!286015 () tuple2!8158)

(assert (=> b!696627 (= e!439096 (tuple2!8159 (prepend!263 (_1!4529 lt!286015) (_1!4527 (v!17793 lt!286014))) (_2!4529 lt!286015)))))

(assert (=> b!696627 (= lt!286015 (lexRec!178 thiss!12529 rules!1486 (_2!4527 (v!17793 lt!286014))))))

(assert (= (and d!233309 c!121917) b!696627))

(assert (= (and d!233309 (not c!121917)) b!696622))

(assert (= (and d!233309 c!121916) b!696624))

(assert (= (and d!233309 (not c!121916)) b!696621))

(assert (= (and b!696624 res!315227) b!696625))

(assert (= (and d!233309 res!315228) b!696623))

(assert (= (and b!696623 res!315226) b!696626))

(declare-fun m!952421 () Bool)

(assert (=> b!696627 m!952421))

(declare-fun m!952423 () Bool)

(assert (=> b!696627 m!952423))

(declare-fun m!952425 () Bool)

(assert (=> b!696621 m!952425))

(declare-fun m!952427 () Bool)

(assert (=> b!696621 m!952427))

(assert (=> b!696626 m!952425))

(assert (=> b!696626 m!952427))

(assert (=> b!696626 m!952427))

(declare-fun m!952429 () Bool)

(assert (=> b!696626 m!952429))

(declare-fun m!952431 () Bool)

(assert (=> b!696623 m!952431))

(assert (=> b!696623 m!952427))

(assert (=> b!696623 m!952427))

(assert (=> b!696623 m!952429))

(declare-fun m!952433 () Bool)

(assert (=> d!233309 m!952433))

(declare-fun m!952435 () Bool)

(assert (=> d!233309 m!952435))

(declare-fun m!952437 () Bool)

(assert (=> b!696624 m!952437))

(declare-fun m!952439 () Bool)

(assert (=> b!696624 m!952439))

(declare-fun m!952441 () Bool)

(assert (=> b!696625 m!952441))

(assert (=> b!696537 d!233309))

(declare-fun d!233311 () Bool)

(assert (=> d!233311 (= (array_inv!1017 (_keys!1121 (v!17787 (underlying!1837 (v!17788 (underlying!1838 (cache!1186 cacheFindLongestMatch!74))))))) (bvsge (size!6239 (_keys!1121 (v!17787 (underlying!1837 (v!17788 (underlying!1838 (cache!1186 cacheFindLongestMatch!74))))))) #b00000000000000000000000000000000))))

(assert (=> b!696557 d!233311))

(declare-fun d!233313 () Bool)

(assert (=> d!233313 (= (array_inv!1020 (_values!1106 (v!17787 (underlying!1837 (v!17788 (underlying!1838 (cache!1186 cacheFindLongestMatch!74))))))) (bvsge (size!6240 (_values!1106 (v!17787 (underlying!1837 (v!17788 (underlying!1838 (cache!1186 cacheFindLongestMatch!74))))))) #b00000000000000000000000000000000))))

(assert (=> b!696557 d!233313))

(declare-fun d!233315 () Bool)

(declare-fun c!121920 () Bool)

(assert (=> d!233315 (= c!121920 ((_ is Node!2685) (c!121901 input!870)))))

(declare-fun e!439104 () Bool)

(assert (=> d!233315 (= (inv!9784 (c!121901 input!870)) e!439104)))

(declare-fun b!696634 () Bool)

(declare-fun inv!9789 (Conc!2685) Bool)

(assert (=> b!696634 (= e!439104 (inv!9789 (c!121901 input!870)))))

(declare-fun b!696635 () Bool)

(declare-fun e!439105 () Bool)

(assert (=> b!696635 (= e!439104 e!439105)))

(declare-fun res!315231 () Bool)

(assert (=> b!696635 (= res!315231 (not ((_ is Leaf!3970) (c!121901 input!870))))))

(assert (=> b!696635 (=> res!315231 e!439105)))

(declare-fun b!696636 () Bool)

(declare-fun inv!9790 (Conc!2685) Bool)

(assert (=> b!696636 (= e!439105 (inv!9790 (c!121901 input!870)))))

(assert (= (and d!233315 c!121920) b!696634))

(assert (= (and d!233315 (not c!121920)) b!696635))

(assert (= (and b!696635 (not res!315231)) b!696636))

(declare-fun m!952443 () Bool)

(assert (=> b!696634 m!952443))

(declare-fun m!952445 () Bool)

(assert (=> b!696636 m!952445))

(assert (=> b!696536 d!233315))

(declare-fun d!233317 () Bool)

(declare-fun c!121921 () Bool)

(assert (=> d!233317 (= c!121921 ((_ is Node!2685) (c!121901 treated!50)))))

(declare-fun e!439106 () Bool)

(assert (=> d!233317 (= (inv!9784 (c!121901 treated!50)) e!439106)))

(declare-fun b!696637 () Bool)

(assert (=> b!696637 (= e!439106 (inv!9789 (c!121901 treated!50)))))

(declare-fun b!696638 () Bool)

(declare-fun e!439107 () Bool)

(assert (=> b!696638 (= e!439106 e!439107)))

(declare-fun res!315232 () Bool)

(assert (=> b!696638 (= res!315232 (not ((_ is Leaf!3970) (c!121901 treated!50))))))

(assert (=> b!696638 (=> res!315232 e!439107)))

(declare-fun b!696639 () Bool)

(assert (=> b!696639 (= e!439107 (inv!9790 (c!121901 treated!50)))))

(assert (= (and d!233317 c!121921) b!696637))

(assert (= (and d!233317 (not c!121921)) b!696638))

(assert (= (and b!696638 (not res!315232)) b!696639))

(declare-fun m!952447 () Bool)

(assert (=> b!696637 m!952447))

(declare-fun m!952449 () Bool)

(assert (=> b!696639 m!952449))

(assert (=> b!696555 d!233317))

(declare-fun b!696640 () Bool)

(declare-fun res!315235 () Bool)

(declare-fun e!439108 () Bool)

(assert (=> b!696640 (=> (not res!315235) (not e!439108))))

(declare-fun lt!286019 () tuple4!144)

(assert (=> b!696640 (= res!315235 (valid!704 (_4!72 lt!286019)))))

(declare-fun bm!43660 () Bool)

(declare-fun call!43665 () tuple4!144)

(assert (=> bm!43660 (= call!43665 (maxPrefixOneRuleZipperSequenceV2Mem!5 thiss!12529 (h!13059 rules!1486) input!870 totalInput!378 cacheUp!502 cacheDown!515 cacheFindLongestMatch!74))))

(declare-fun b!696641 () Bool)

(declare-fun res!315233 () Bool)

(assert (=> b!696641 (=> (not res!315233) (not e!439108))))

(assert (=> b!696641 (= res!315233 (valid!702 (_2!4528 lt!286019)))))

(declare-fun b!696642 () Bool)

(declare-fun e!439109 () tuple4!146)

(declare-fun lt!286025 () tuple4!144)

(declare-fun lt!286021 () tuple4!144)

(assert (=> b!696642 (= e!439109 (tuple4!147 (ite (and ((_ is None!1719) (_1!4528 lt!286025)) ((_ is None!1719) (_1!4528 lt!286021))) None!1719 (ite ((_ is None!1719) (_1!4528 lt!286021)) (_1!4528 lt!286025) (ite ((_ is None!1719) (_1!4528 lt!286025)) (_1!4528 lt!286021) (ite (>= (size!6243 (_1!4527 (v!17793 (_1!4528 lt!286025)))) (size!6243 (_1!4527 (v!17793 (_1!4528 lt!286021))))) (_1!4528 lt!286025) (_1!4528 lt!286021))))) (_2!4528 lt!286021) (_4!72 lt!286021) (_3!449 lt!286021)))))

(assert (=> b!696642 (= lt!286025 call!43665)))

(assert (=> b!696642 (= lt!286021 (maxPrefixZipperSequenceV2Mem!11 thiss!12529 (t!87495 rules!1486) input!870 totalInput!378 (_2!4528 lt!286025) (_3!449 lt!286025) (_4!72 lt!286025)))))

(declare-fun d!233319 () Bool)

(assert (=> d!233319 e!439108))

(declare-fun res!315236 () Bool)

(assert (=> d!233319 (=> (not res!315236) (not e!439108))))

(assert (=> d!233319 (= res!315236 (= (_1!4528 lt!286019) (maxPrefixZipperSequenceV2!131 thiss!12529 rules!1486 input!870 totalInput!378)))))

(declare-fun lt!286023 () tuple4!146)

(assert (=> d!233319 (= lt!286019 (tuple4!145 (_1!4531 lt!286023) (_2!4531 lt!286023) (_4!73 lt!286023) (_3!450 lt!286023)))))

(assert (=> d!233319 (= lt!286023 e!439109)))

(declare-fun c!121922 () Bool)

(assert (=> d!233319 (= c!121922 (and ((_ is Cons!7658) rules!1486) ((_ is Nil!7658) (t!87495 rules!1486))))))

(declare-fun lt!286024 () Unit!12697)

(declare-fun lt!286017 () Unit!12697)

(assert (=> d!233319 (= lt!286024 lt!286017)))

(declare-fun lt!286020 () List!7667)

(declare-fun lt!286018 () List!7667)

(assert (=> d!233319 (isPrefix!920 lt!286020 lt!286018)))

(assert (=> d!233319 (= lt!286017 (lemmaIsPrefixRefl!631 lt!286020 lt!286018))))

(assert (=> d!233319 (= lt!286018 (list!3190 input!870))))

(assert (=> d!233319 (= lt!286020 (list!3190 input!870))))

(assert (=> d!233319 (rulesValidInductive!528 thiss!12529 rules!1486)))

(assert (=> d!233319 (= (maxPrefixZipperSequenceV2Mem!11 thiss!12529 rules!1486 input!870 totalInput!378 cacheUp!502 cacheDown!515 cacheFindLongestMatch!74) lt!286019)))

(declare-fun b!696643 () Bool)

(assert (=> b!696643 (= e!439108 (= (totalInput!1826 (_4!72 lt!286019)) totalInput!378))))

(declare-fun b!696644 () Bool)

(declare-fun res!315234 () Bool)

(assert (=> b!696644 (=> (not res!315234) (not e!439108))))

(assert (=> b!696644 (= res!315234 (valid!703 (_3!449 lt!286019)))))

(declare-fun b!696645 () Bool)

(declare-fun lt!286022 () tuple4!144)

(assert (=> b!696645 (= e!439109 (tuple4!147 (_1!4528 lt!286022) (_2!4528 lt!286022) (_4!72 lt!286022) (_3!449 lt!286022)))))

(assert (=> b!696645 (= lt!286022 call!43665)))

(assert (= (and d!233319 c!121922) b!696645))

(assert (= (and d!233319 (not c!121922)) b!696642))

(assert (= (or b!696645 b!696642) bm!43660))

(assert (= (and d!233319 res!315236) b!696641))

(assert (= (and b!696641 res!315233) b!696644))

(assert (= (and b!696644 res!315234) b!696640))

(assert (= (and b!696640 res!315235) b!696643))

(declare-fun m!952451 () Bool)

(assert (=> b!696640 m!952451))

(declare-fun m!952453 () Bool)

(assert (=> b!696642 m!952453))

(assert (=> d!233319 m!952323))

(assert (=> d!233319 m!952409))

(declare-fun m!952455 () Bool)

(assert (=> d!233319 m!952455))

(declare-fun m!952457 () Bool)

(assert (=> d!233319 m!952457))

(assert (=> d!233319 m!952285))

(declare-fun m!952459 () Bool)

(assert (=> b!696644 m!952459))

(declare-fun m!952461 () Bool)

(assert (=> bm!43660 m!952461))

(declare-fun m!952463 () Bool)

(assert (=> b!696641 m!952463))

(assert (=> b!696556 d!233319))

(declare-fun d!233321 () Bool)

(declare-fun c!121923 () Bool)

(assert (=> d!233321 (= c!121923 ((_ is Node!2685) (c!121901 (totalInput!1826 cacheFindLongestMatch!74))))))

(declare-fun e!439110 () Bool)

(assert (=> d!233321 (= (inv!9784 (c!121901 (totalInput!1826 cacheFindLongestMatch!74))) e!439110)))

(declare-fun b!696646 () Bool)

(assert (=> b!696646 (= e!439110 (inv!9789 (c!121901 (totalInput!1826 cacheFindLongestMatch!74))))))

(declare-fun b!696647 () Bool)

(declare-fun e!439111 () Bool)

(assert (=> b!696647 (= e!439110 e!439111)))

(declare-fun res!315237 () Bool)

(assert (=> b!696647 (= res!315237 (not ((_ is Leaf!3970) (c!121901 (totalInput!1826 cacheFindLongestMatch!74)))))))

(assert (=> b!696647 (=> res!315237 e!439111)))

(declare-fun b!696648 () Bool)

(assert (=> b!696648 (= e!439111 (inv!9790 (c!121901 (totalInput!1826 cacheFindLongestMatch!74))))))

(assert (= (and d!233321 c!121923) b!696646))

(assert (= (and d!233321 (not c!121923)) b!696647))

(assert (= (and b!696647 (not res!315237)) b!696648))

(declare-fun m!952465 () Bool)

(assert (=> b!696646 m!952465))

(declare-fun m!952467 () Bool)

(assert (=> b!696648 m!952467))

(assert (=> b!696554 d!233321))

(declare-fun d!233323 () Bool)

(declare-fun res!315240 () Bool)

(declare-fun e!439114 () Bool)

(assert (=> d!233323 (=> (not res!315240) (not e!439114))))

(declare-fun rulesValid!532 (LexerInterface!1336 List!7672) Bool)

(assert (=> d!233323 (= res!315240 (rulesValid!532 thiss!12529 rules!1486))))

(assert (=> d!233323 (= (rulesInvariant!1263 thiss!12529 rules!1486) e!439114)))

(declare-fun b!696651 () Bool)

(declare-datatypes ((List!7673 0))(
  ( (Nil!7659) (Cons!7659 (h!13060 String!9563) (t!87496 List!7673)) )
))
(declare-fun noDuplicateTag!532 (LexerInterface!1336 List!7672 List!7673) Bool)

(assert (=> b!696651 (= e!439114 (noDuplicateTag!532 thiss!12529 rules!1486 Nil!7659))))

(assert (= (and d!233323 res!315240) b!696651))

(declare-fun m!952469 () Bool)

(assert (=> d!233323 m!952469))

(declare-fun m!952471 () Bool)

(assert (=> b!696651 m!952471))

(assert (=> b!696535 d!233323))

(declare-fun d!233325 () Bool)

(declare-fun validCacheMapDown!65 (MutableMap!801) Bool)

(assert (=> d!233325 (= (valid!703 cacheDown!515) (validCacheMapDown!65 (cache!1188 cacheDown!515)))))

(declare-fun bs!137977 () Bool)

(assert (= bs!137977 d!233325))

(declare-fun m!952473 () Bool)

(assert (=> bs!137977 m!952473))

(assert (=> b!696553 d!233325))

(declare-fun d!233327 () Bool)

(assert (=> d!233327 (= (inv!9778 (tag!1785 (h!13059 rules!1486))) (= (mod (str.len (value!49071 (tag!1785 (h!13059 rules!1486)))) 2) 0))))

(assert (=> b!696560 d!233327))

(declare-fun d!233329 () Bool)

(declare-fun res!315243 () Bool)

(declare-fun e!439117 () Bool)

(assert (=> d!233329 (=> (not res!315243) (not e!439117))))

(declare-fun semiInverseModEq!575 (Int Int) Bool)

(assert (=> d!233329 (= res!315243 (semiInverseModEq!575 (toChars!2346 (transformation!1523 (h!13059 rules!1486))) (toValue!2487 (transformation!1523 (h!13059 rules!1486)))))))

(assert (=> d!233329 (= (inv!9786 (transformation!1523 (h!13059 rules!1486))) e!439117)))

(declare-fun b!696654 () Bool)

(declare-fun equivClasses!550 (Int Int) Bool)

(assert (=> b!696654 (= e!439117 (equivClasses!550 (toChars!2346 (transformation!1523 (h!13059 rules!1486))) (toValue!2487 (transformation!1523 (h!13059 rules!1486)))))))

(assert (= (and d!233329 res!315243) b!696654))

(declare-fun m!952475 () Bool)

(assert (=> d!233329 m!952475))

(declare-fun m!952477 () Bool)

(assert (=> b!696654 m!952477))

(assert (=> b!696560 d!233329))

(declare-fun d!233331 () Bool)

(declare-fun validCacheMapFindLongestMatch!11 (MutableMap!799 BalanceConc!5382) Bool)

(assert (=> d!233331 (= (valid!704 cacheFindLongestMatch!74) (validCacheMapFindLongestMatch!11 (cache!1186 cacheFindLongestMatch!74) (totalInput!1826 cacheFindLongestMatch!74)))))

(declare-fun bs!137978 () Bool)

(assert (= bs!137978 d!233331))

(declare-fun m!952479 () Bool)

(assert (=> bs!137978 m!952479))

(assert (=> b!696558 d!233331))

(declare-fun lt!286028 () BalanceConc!5384)

(declare-fun e!439120 () Bool)

(declare-fun b!696666 () Bool)

(declare-fun ++!1992 (List!7671 List!7671) List!7671)

(assert (=> b!696666 (= e!439120 (= (list!3191 lt!286028) (++!1992 (list!3191 acc!372) (list!3191 (_1!4529 lt!285962)))))))

(declare-fun d!233333 () Bool)

(assert (=> d!233333 e!439120))

(declare-fun res!315252 () Bool)

(assert (=> d!233333 (=> (not res!315252) (not e!439120))))

(declare-fun appendAssocInst!137 (Conc!2686 Conc!2686) Bool)

(assert (=> d!233333 (= res!315252 (appendAssocInst!137 (c!121902 acc!372) (c!121902 (_1!4529 lt!285962))))))

(declare-fun ++!1993 (Conc!2686 Conc!2686) Conc!2686)

(assert (=> d!233333 (= lt!286028 (BalanceConc!5385 (++!1993 (c!121902 acc!372) (c!121902 (_1!4529 lt!285962)))))))

(assert (=> d!233333 (= (++!1991 acc!372 (_1!4529 lt!285962)) lt!286028)))

(declare-fun b!696664 () Bool)

(declare-fun res!315254 () Bool)

(assert (=> b!696664 (=> (not res!315254) (not e!439120))))

(declare-fun height!323 (Conc!2686) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!696664 (= res!315254 (<= (height!323 (++!1993 (c!121902 acc!372) (c!121902 (_1!4529 lt!285962)))) (+ (max!0 (height!323 (c!121902 acc!372)) (height!323 (c!121902 (_1!4529 lt!285962)))) 1)))))

(declare-fun b!696663 () Bool)

(declare-fun res!315255 () Bool)

(assert (=> b!696663 (=> (not res!315255) (not e!439120))))

(declare-fun isBalanced!704 (Conc!2686) Bool)

(assert (=> b!696663 (= res!315255 (isBalanced!704 (++!1993 (c!121902 acc!372) (c!121902 (_1!4529 lt!285962)))))))

(declare-fun b!696665 () Bool)

(declare-fun res!315253 () Bool)

(assert (=> b!696665 (=> (not res!315253) (not e!439120))))

(assert (=> b!696665 (= res!315253 (>= (height!323 (++!1993 (c!121902 acc!372) (c!121902 (_1!4529 lt!285962)))) (max!0 (height!323 (c!121902 acc!372)) (height!323 (c!121902 (_1!4529 lt!285962))))))))

(assert (= (and d!233333 res!315252) b!696663))

(assert (= (and b!696663 res!315255) b!696664))

(assert (= (and b!696664 res!315254) b!696665))

(assert (= (and b!696665 res!315253) b!696666))

(declare-fun m!952481 () Bool)

(assert (=> b!696666 m!952481))

(assert (=> b!696666 m!952269))

(declare-fun m!952483 () Bool)

(assert (=> b!696666 m!952483))

(assert (=> b!696666 m!952269))

(assert (=> b!696666 m!952483))

(declare-fun m!952485 () Bool)

(assert (=> b!696666 m!952485))

(declare-fun m!952487 () Bool)

(assert (=> b!696665 m!952487))

(declare-fun m!952489 () Bool)

(assert (=> b!696665 m!952489))

(declare-fun m!952491 () Bool)

(assert (=> b!696665 m!952491))

(declare-fun m!952493 () Bool)

(assert (=> b!696665 m!952493))

(declare-fun m!952495 () Bool)

(assert (=> b!696665 m!952495))

(assert (=> b!696665 m!952493))

(assert (=> b!696665 m!952487))

(assert (=> b!696665 m!952489))

(assert (=> b!696663 m!952493))

(assert (=> b!696663 m!952493))

(declare-fun m!952497 () Bool)

(assert (=> b!696663 m!952497))

(assert (=> b!696664 m!952487))

(assert (=> b!696664 m!952489))

(assert (=> b!696664 m!952491))

(assert (=> b!696664 m!952493))

(assert (=> b!696664 m!952495))

(assert (=> b!696664 m!952493))

(assert (=> b!696664 m!952487))

(assert (=> b!696664 m!952489))

(declare-fun m!952499 () Bool)

(assert (=> d!233333 m!952499))

(assert (=> d!233333 m!952493))

(assert (=> b!696539 d!233333))

(declare-fun d!233335 () Bool)

(assert (=> d!233335 (= (list!3191 (_1!4529 lt!285963)) (list!3193 (c!121902 (_1!4529 lt!285963))))))

(declare-fun bs!137979 () Bool)

(assert (= bs!137979 d!233335))

(declare-fun m!952501 () Bool)

(assert (=> bs!137979 m!952501))

(assert (=> b!696539 d!233335))

(declare-fun d!233337 () Bool)

(declare-fun e!439124 () Bool)

(assert (=> d!233337 e!439124))

(declare-fun res!315258 () Bool)

(assert (=> d!233337 (=> (not res!315258) (not e!439124))))

(declare-fun e!439122 () Bool)

(assert (=> d!233337 (= res!315258 e!439122)))

(declare-fun c!121927 () Bool)

(declare-fun lt!286031 () tuple2!8158)

(assert (=> d!233337 (= c!121927 (> (size!6244 (_1!4529 lt!286031)) 0))))

(declare-fun e!439121 () tuple2!8158)

(assert (=> d!233337 (= lt!286031 e!439121)))

(declare-fun c!121928 () Bool)

(declare-fun lt!286029 () Option!1720)

(assert (=> d!233337 (= c!121928 ((_ is Some!1719) lt!286029))))

(assert (=> d!233337 (= lt!286029 (maxPrefixZipperSequence!461 thiss!12529 rules!1486 input!870))))

(assert (=> d!233337 (= (lexRec!178 thiss!12529 rules!1486 input!870) lt!286031)))

(declare-fun b!696667 () Bool)

(assert (=> b!696667 (= e!439122 (= (list!3190 (_2!4529 lt!286031)) (list!3190 input!870)))))

(declare-fun b!696668 () Bool)

(assert (=> b!696668 (= e!439121 (tuple2!8159 (BalanceConc!5385 Empty!2686) input!870))))

(declare-fun b!696669 () Bool)

(declare-fun res!315256 () Bool)

(assert (=> b!696669 (=> (not res!315256) (not e!439124))))

(assert (=> b!696669 (= res!315256 (= (list!3191 (_1!4529 lt!286031)) (_1!4530 (lexList!327 thiss!12529 rules!1486 (list!3190 input!870)))))))

(declare-fun b!696670 () Bool)

(declare-fun e!439123 () Bool)

(assert (=> b!696670 (= e!439122 e!439123)))

(declare-fun res!315257 () Bool)

(assert (=> b!696670 (= res!315257 (< (size!6245 (_2!4529 lt!286031)) (size!6245 input!870)))))

(assert (=> b!696670 (=> (not res!315257) (not e!439123))))

(declare-fun b!696671 () Bool)

(assert (=> b!696671 (= e!439123 (not (isEmpty!4913 (_1!4529 lt!286031))))))

(declare-fun b!696672 () Bool)

(assert (=> b!696672 (= e!439124 (= (list!3190 (_2!4529 lt!286031)) (_2!4530 (lexList!327 thiss!12529 rules!1486 (list!3190 input!870)))))))

(declare-fun b!696673 () Bool)

(declare-fun lt!286030 () tuple2!8158)

(assert (=> b!696673 (= e!439121 (tuple2!8159 (prepend!263 (_1!4529 lt!286030) (_1!4527 (v!17793 lt!286029))) (_2!4529 lt!286030)))))

(assert (=> b!696673 (= lt!286030 (lexRec!178 thiss!12529 rules!1486 (_2!4527 (v!17793 lt!286029))))))

(assert (= (and d!233337 c!121928) b!696673))

(assert (= (and d!233337 (not c!121928)) b!696668))

(assert (= (and d!233337 c!121927) b!696670))

(assert (= (and d!233337 (not c!121927)) b!696667))

(assert (= (and b!696670 res!315257) b!696671))

(assert (= (and d!233337 res!315258) b!696669))

(assert (= (and b!696669 res!315256) b!696672))

(declare-fun m!952503 () Bool)

(assert (=> b!696673 m!952503))

(declare-fun m!952505 () Bool)

(assert (=> b!696673 m!952505))

(declare-fun m!952507 () Bool)

(assert (=> b!696667 m!952507))

(assert (=> b!696667 m!952323))

(assert (=> b!696672 m!952507))

(assert (=> b!696672 m!952323))

(assert (=> b!696672 m!952323))

(declare-fun m!952509 () Bool)

(assert (=> b!696672 m!952509))

(declare-fun m!952511 () Bool)

(assert (=> b!696669 m!952511))

(assert (=> b!696669 m!952323))

(assert (=> b!696669 m!952323))

(assert (=> b!696669 m!952509))

(declare-fun m!952513 () Bool)

(assert (=> d!233337 m!952513))

(declare-fun m!952515 () Bool)

(assert (=> d!233337 m!952515))

(declare-fun m!952517 () Bool)

(assert (=> b!696670 m!952517))

(declare-fun m!952519 () Bool)

(assert (=> b!696670 m!952519))

(declare-fun m!952521 () Bool)

(assert (=> b!696671 m!952521))

(assert (=> b!696539 d!233337))

(declare-fun d!233339 () Bool)

(declare-fun e!439128 () Bool)

(assert (=> d!233339 e!439128))

(declare-fun res!315261 () Bool)

(assert (=> d!233339 (=> (not res!315261) (not e!439128))))

(declare-fun e!439126 () Bool)

(assert (=> d!233339 (= res!315261 e!439126)))

(declare-fun c!121929 () Bool)

(declare-fun lt!286034 () tuple2!8158)

(assert (=> d!233339 (= c!121929 (> (size!6244 (_1!4529 lt!286034)) 0))))

(declare-fun e!439125 () tuple2!8158)

(assert (=> d!233339 (= lt!286034 e!439125)))

(declare-fun c!121930 () Bool)

(declare-fun lt!286032 () Option!1720)

(assert (=> d!233339 (= c!121930 ((_ is Some!1719) lt!286032))))

(assert (=> d!233339 (= lt!286032 (maxPrefixZipperSequence!461 thiss!12529 rules!1486 totalInput!378))))

(assert (=> d!233339 (= (lexRec!178 thiss!12529 rules!1486 totalInput!378) lt!286034)))

(declare-fun b!696674 () Bool)

(assert (=> b!696674 (= e!439126 (= (list!3190 (_2!4529 lt!286034)) (list!3190 totalInput!378)))))

(declare-fun b!696675 () Bool)

(assert (=> b!696675 (= e!439125 (tuple2!8159 (BalanceConc!5385 Empty!2686) totalInput!378))))

(declare-fun b!696676 () Bool)

(declare-fun res!315259 () Bool)

(assert (=> b!696676 (=> (not res!315259) (not e!439128))))

(assert (=> b!696676 (= res!315259 (= (list!3191 (_1!4529 lt!286034)) (_1!4530 (lexList!327 thiss!12529 rules!1486 (list!3190 totalInput!378)))))))

(declare-fun b!696677 () Bool)

(declare-fun e!439127 () Bool)

(assert (=> b!696677 (= e!439126 e!439127)))

(declare-fun res!315260 () Bool)

(assert (=> b!696677 (= res!315260 (< (size!6245 (_2!4529 lt!286034)) (size!6245 totalInput!378)))))

(assert (=> b!696677 (=> (not res!315260) (not e!439127))))

(declare-fun b!696678 () Bool)

(assert (=> b!696678 (= e!439127 (not (isEmpty!4913 (_1!4529 lt!286034))))))

(declare-fun b!696679 () Bool)

(assert (=> b!696679 (= e!439128 (= (list!3190 (_2!4529 lt!286034)) (_2!4530 (lexList!327 thiss!12529 rules!1486 (list!3190 totalInput!378)))))))

(declare-fun b!696680 () Bool)

(declare-fun lt!286033 () tuple2!8158)

(assert (=> b!696680 (= e!439125 (tuple2!8159 (prepend!263 (_1!4529 lt!286033) (_1!4527 (v!17793 lt!286032))) (_2!4529 lt!286033)))))

(assert (=> b!696680 (= lt!286033 (lexRec!178 thiss!12529 rules!1486 (_2!4527 (v!17793 lt!286032))))))

(assert (= (and d!233339 c!121930) b!696680))

(assert (= (and d!233339 (not c!121930)) b!696675))

(assert (= (and d!233339 c!121929) b!696677))

(assert (= (and d!233339 (not c!121929)) b!696674))

(assert (= (and b!696677 res!315260) b!696678))

(assert (= (and d!233339 res!315261) b!696676))

(assert (= (and b!696676 res!315259) b!696679))

(declare-fun m!952523 () Bool)

(assert (=> b!696680 m!952523))

(declare-fun m!952525 () Bool)

(assert (=> b!696680 m!952525))

(declare-fun m!952527 () Bool)

(assert (=> b!696674 m!952527))

(assert (=> b!696674 m!952321))

(assert (=> b!696679 m!952527))

(assert (=> b!696679 m!952321))

(assert (=> b!696679 m!952321))

(declare-fun m!952529 () Bool)

(assert (=> b!696679 m!952529))

(declare-fun m!952531 () Bool)

(assert (=> b!696676 m!952531))

(assert (=> b!696676 m!952321))

(assert (=> b!696676 m!952321))

(assert (=> b!696676 m!952529))

(declare-fun m!952533 () Bool)

(assert (=> d!233339 m!952533))

(declare-fun m!952535 () Bool)

(assert (=> d!233339 m!952535))

(declare-fun m!952537 () Bool)

(assert (=> b!696677 m!952537))

(declare-fun m!952539 () Bool)

(assert (=> b!696677 m!952539))

(declare-fun m!952541 () Bool)

(assert (=> b!696678 m!952541))

(assert (=> b!696539 d!233339))

(declare-fun d!233341 () Bool)

(assert (=> d!233341 (= (list!3191 (++!1991 acc!372 (_1!4529 lt!285962))) (list!3193 (c!121902 (++!1991 acc!372 (_1!4529 lt!285962)))))))

(declare-fun bs!137980 () Bool)

(assert (= bs!137980 d!233341))

(declare-fun m!952543 () Bool)

(assert (=> bs!137980 m!952543))

(assert (=> b!696539 d!233341))

(declare-fun d!233343 () Bool)

(declare-fun validCacheMapUp!65 (MutableMap!800) Bool)

(assert (=> d!233343 (= (valid!702 cacheUp!502) (validCacheMapUp!65 (cache!1187 cacheUp!502)))))

(declare-fun bs!137981 () Bool)

(assert (= bs!137981 d!233343))

(declare-fun m!952545 () Bool)

(assert (=> bs!137981 m!952545))

(assert (=> b!696529 d!233343))

(declare-fun d!233345 () Bool)

(assert (=> d!233345 (= (array_inv!1017 (_keys!1122 (v!17789 (underlying!1839 (v!17790 (underlying!1840 (cache!1187 cacheUp!502))))))) (bvsge (size!6239 (_keys!1122 (v!17789 (underlying!1839 (v!17790 (underlying!1840 (cache!1187 cacheUp!502))))))) #b00000000000000000000000000000000))))

(assert (=> b!696527 d!233345))

(declare-fun d!233347 () Bool)

(assert (=> d!233347 (= (array_inv!1018 (_values!1107 (v!17789 (underlying!1839 (v!17790 (underlying!1840 (cache!1187 cacheUp!502))))))) (bvsge (size!6241 (_values!1107 (v!17789 (underlying!1839 (v!17790 (underlying!1840 (cache!1187 cacheUp!502))))))) #b00000000000000000000000000000000))))

(assert (=> b!696527 d!233347))

(declare-fun d!233349 () Bool)

(declare-fun e!439131 () Bool)

(assert (=> d!233349 e!439131))

(declare-fun res!315264 () Bool)

(assert (=> d!233349 (=> res!315264 e!439131)))

(declare-fun lt!286037 () Bool)

(assert (=> d!233349 (= res!315264 (not lt!286037))))

(declare-fun drop!359 (List!7667 Int) List!7667)

(declare-fun size!6246 (List!7667) Int)

(assert (=> d!233349 (= lt!286037 (= lt!285970 (drop!359 lt!285973 (- (size!6246 lt!285973) (size!6246 lt!285970)))))))

(assert (=> d!233349 (= (isSuffix!142 lt!285970 lt!285973) lt!286037)))

(declare-fun b!696683 () Bool)

(assert (=> b!696683 (= e!439131 (>= (size!6246 lt!285973) (size!6246 lt!285970)))))

(assert (= (and d!233349 (not res!315264)) b!696683))

(declare-fun m!952547 () Bool)

(assert (=> d!233349 m!952547))

(declare-fun m!952549 () Bool)

(assert (=> d!233349 m!952549))

(declare-fun m!952551 () Bool)

(assert (=> d!233349 m!952551))

(assert (=> b!696683 m!952547))

(assert (=> b!696683 m!952549))

(assert (=> b!696545 d!233349))

(declare-fun d!233351 () Bool)

(declare-fun e!439132 () Bool)

(assert (=> d!233351 e!439132))

(declare-fun res!315265 () Bool)

(assert (=> d!233351 (=> res!315265 e!439132)))

(declare-fun lt!286038 () Bool)

(assert (=> d!233351 (= res!315265 (not lt!286038))))

(assert (=> d!233351 (= lt!286038 (= lt!285970 (drop!359 lt!285964 (- (size!6246 lt!285964) (size!6246 lt!285970)))))))

(assert (=> d!233351 (= (isSuffix!142 lt!285970 lt!285964) lt!286038)))

(declare-fun b!696684 () Bool)

(assert (=> b!696684 (= e!439132 (>= (size!6246 lt!285964) (size!6246 lt!285970)))))

(assert (= (and d!233351 (not res!315265)) b!696684))

(declare-fun m!952553 () Bool)

(assert (=> d!233351 m!952553))

(assert (=> d!233351 m!952549))

(declare-fun m!952555 () Bool)

(assert (=> d!233351 m!952555))

(assert (=> b!696684 m!952553))

(assert (=> b!696684 m!952549))

(assert (=> b!696545 d!233351))

(declare-fun d!233353 () Bool)

(assert (=> d!233353 (isSuffix!142 lt!285970 (++!1990 lt!285967 lt!285970))))

(declare-fun lt!286041 () Unit!12697)

(declare-fun choose!4700 (List!7667 List!7667) Unit!12697)

(assert (=> d!233353 (= lt!286041 (choose!4700 lt!285967 lt!285970))))

(assert (=> d!233353 (= (lemmaConcatTwoListThenFSndIsSuffix!142 lt!285967 lt!285970) lt!286041)))

(declare-fun bs!137982 () Bool)

(assert (= bs!137982 d!233353))

(assert (=> bs!137982 m!952319))

(assert (=> bs!137982 m!952319))

(declare-fun m!952557 () Bool)

(assert (=> bs!137982 m!952557))

(declare-fun m!952559 () Bool)

(assert (=> bs!137982 m!952559))

(assert (=> b!696545 d!233353))

(declare-fun d!233355 () Bool)

(declare-fun isBalanced!705 (Conc!2685) Bool)

(assert (=> d!233355 (= (inv!9780 (totalInput!1826 cacheFindLongestMatch!74)) (isBalanced!705 (c!121901 (totalInput!1826 cacheFindLongestMatch!74))))))

(declare-fun bs!137983 () Bool)

(assert (= bs!137983 d!233355))

(declare-fun m!952561 () Bool)

(assert (=> bs!137983 m!952561))

(assert (=> b!696543 d!233355))

(declare-fun d!233357 () Bool)

(declare-fun c!121931 () Bool)

(assert (=> d!233357 (= c!121931 ((_ is Node!2685) (c!121901 totalInput!378)))))

(declare-fun e!439133 () Bool)

(assert (=> d!233357 (= (inv!9784 (c!121901 totalInput!378)) e!439133)))

(declare-fun b!696685 () Bool)

(assert (=> b!696685 (= e!439133 (inv!9789 (c!121901 totalInput!378)))))

(declare-fun b!696686 () Bool)

(declare-fun e!439134 () Bool)

(assert (=> b!696686 (= e!439133 e!439134)))

(declare-fun res!315266 () Bool)

(assert (=> b!696686 (= res!315266 (not ((_ is Leaf!3970) (c!121901 totalInput!378))))))

(assert (=> b!696686 (=> res!315266 e!439134)))

(declare-fun b!696687 () Bool)

(assert (=> b!696687 (= e!439134 (inv!9790 (c!121901 totalInput!378)))))

(assert (= (and d!233357 c!121931) b!696685))

(assert (= (and d!233357 (not c!121931)) b!696686))

(assert (= (and b!696686 (not res!315266)) b!696687))

(declare-fun m!952563 () Bool)

(assert (=> b!696685 m!952563))

(declare-fun m!952565 () Bool)

(assert (=> b!696687 m!952565))

(assert (=> b!696562 d!233357))

(declare-fun d!233359 () Bool)

(assert (=> d!233359 (= (list!3190 (_2!4529 lt!285963)) (list!3192 (c!121901 (_2!4529 lt!285963))))))

(declare-fun bs!137984 () Bool)

(assert (= bs!137984 d!233359))

(declare-fun m!952567 () Bool)

(assert (=> bs!137984 m!952567))

(assert (=> b!696563 d!233359))

(declare-fun d!233361 () Bool)

(assert (=> d!233361 (= (list!3190 (_2!4529 lt!285962)) (list!3192 (c!121901 (_2!4529 lt!285962))))))

(declare-fun bs!137985 () Bool)

(assert (= bs!137985 d!233361))

(declare-fun m!952569 () Bool)

(assert (=> bs!137985 m!952569))

(assert (=> b!696563 d!233361))

(declare-fun b!696697 () Bool)

(declare-fun e!439140 () List!7667)

(assert (=> b!696697 (= e!439140 (Cons!7653 (h!13054 lt!285967) (++!1990 (t!87490 lt!285967) lt!285970)))))

(declare-fun e!439139 () Bool)

(declare-fun lt!286044 () List!7667)

(declare-fun b!696699 () Bool)

(assert (=> b!696699 (= e!439139 (or (not (= lt!285970 Nil!7653)) (= lt!286044 lt!285967)))))

(declare-fun b!696698 () Bool)

(declare-fun res!315271 () Bool)

(assert (=> b!696698 (=> (not res!315271) (not e!439139))))

(assert (=> b!696698 (= res!315271 (= (size!6246 lt!286044) (+ (size!6246 lt!285967) (size!6246 lt!285970))))))

(declare-fun d!233363 () Bool)

(assert (=> d!233363 e!439139))

(declare-fun res!315272 () Bool)

(assert (=> d!233363 (=> (not res!315272) (not e!439139))))

(declare-fun content!1191 (List!7667) (InoxSet C!4328))

(assert (=> d!233363 (= res!315272 (= (content!1191 lt!286044) ((_ map or) (content!1191 lt!285967) (content!1191 lt!285970))))))

(assert (=> d!233363 (= lt!286044 e!439140)))

(declare-fun c!121934 () Bool)

(assert (=> d!233363 (= c!121934 ((_ is Nil!7653) lt!285967))))

(assert (=> d!233363 (= (++!1990 lt!285967 lt!285970) lt!286044)))

(declare-fun b!696696 () Bool)

(assert (=> b!696696 (= e!439140 lt!285970)))

(assert (= (and d!233363 c!121934) b!696696))

(assert (= (and d!233363 (not c!121934)) b!696697))

(assert (= (and d!233363 res!315272) b!696698))

(assert (= (and b!696698 res!315271) b!696699))

(declare-fun m!952571 () Bool)

(assert (=> b!696697 m!952571))

(declare-fun m!952573 () Bool)

(assert (=> b!696698 m!952573))

(declare-fun m!952575 () Bool)

(assert (=> b!696698 m!952575))

(assert (=> b!696698 m!952549))

(declare-fun m!952577 () Bool)

(assert (=> d!233363 m!952577))

(declare-fun m!952579 () Bool)

(assert (=> d!233363 m!952579))

(declare-fun m!952581 () Bool)

(assert (=> d!233363 m!952581))

(assert (=> b!696526 d!233363))

(declare-fun d!233365 () Bool)

(assert (=> d!233365 (= (list!3190 totalInput!378) (list!3192 (c!121901 totalInput!378)))))

(declare-fun bs!137986 () Bool)

(assert (= bs!137986 d!233365))

(declare-fun m!952583 () Bool)

(assert (=> bs!137986 m!952583))

(assert (=> b!696526 d!233365))

(declare-fun d!233367 () Bool)

(assert (=> d!233367 (= (list!3190 input!870) (list!3192 (c!121901 input!870)))))

(declare-fun bs!137987 () Bool)

(assert (= bs!137987 d!233367))

(declare-fun m!952585 () Bool)

(assert (=> bs!137987 m!952585))

(assert (=> b!696526 d!233367))

(declare-fun d!233369 () Bool)

(assert (=> d!233369 (= (list!3190 treated!50) (list!3192 (c!121901 treated!50)))))

(declare-fun bs!137988 () Bool)

(assert (= bs!137988 d!233369))

(declare-fun m!952587 () Bool)

(assert (=> bs!137988 m!952587))

(assert (=> b!696526 d!233369))

(declare-fun d!233371 () Bool)

(declare-fun res!315275 () Bool)

(declare-fun e!439143 () Bool)

(assert (=> d!233371 (=> (not res!315275) (not e!439143))))

(assert (=> d!233371 (= res!315275 ((_ is HashMap!799) (cache!1186 cacheFindLongestMatch!74)))))

(assert (=> d!233371 (= (inv!9783 cacheFindLongestMatch!74) e!439143)))

(declare-fun b!696702 () Bool)

(assert (=> b!696702 (= e!439143 (validCacheMapFindLongestMatch!11 (cache!1186 cacheFindLongestMatch!74) (totalInput!1826 cacheFindLongestMatch!74)))))

(assert (= (and d!233371 res!315275) b!696702))

(assert (=> b!696702 m!952479))

(assert (=> start!66492 d!233371))

(declare-fun d!233373 () Bool)

(assert (=> d!233373 (= (inv!9779 acc!372) (isBalanced!704 (c!121902 acc!372)))))

(declare-fun bs!137989 () Bool)

(assert (= bs!137989 d!233373))

(declare-fun m!952589 () Bool)

(assert (=> bs!137989 m!952589))

(assert (=> start!66492 d!233373))

(declare-fun d!233375 () Bool)

(assert (=> d!233375 (= (inv!9780 input!870) (isBalanced!705 (c!121901 input!870)))))

(declare-fun bs!137990 () Bool)

(assert (= bs!137990 d!233375))

(declare-fun m!952591 () Bool)

(assert (=> bs!137990 m!952591))

(assert (=> start!66492 d!233375))

(declare-fun d!233377 () Bool)

(declare-fun res!315278 () Bool)

(declare-fun e!439146 () Bool)

(assert (=> d!233377 (=> (not res!315278) (not e!439146))))

(assert (=> d!233377 (= res!315278 ((_ is HashMap!801) (cache!1188 cacheDown!515)))))

(assert (=> d!233377 (= (inv!9782 cacheDown!515) e!439146)))

(declare-fun b!696705 () Bool)

(assert (=> b!696705 (= e!439146 (validCacheMapDown!65 (cache!1188 cacheDown!515)))))

(assert (= (and d!233377 res!315278) b!696705))

(assert (=> b!696705 m!952473))

(assert (=> start!66492 d!233377))

(declare-fun d!233379 () Bool)

(assert (=> d!233379 (= (inv!9780 treated!50) (isBalanced!705 (c!121901 treated!50)))))

(declare-fun bs!137991 () Bool)

(assert (= bs!137991 d!233379))

(declare-fun m!952593 () Bool)

(assert (=> bs!137991 m!952593))

(assert (=> start!66492 d!233379))

(declare-fun d!233381 () Bool)

(declare-fun res!315281 () Bool)

(declare-fun e!439149 () Bool)

(assert (=> d!233381 (=> (not res!315281) (not e!439149))))

(assert (=> d!233381 (= res!315281 ((_ is HashMap!800) (cache!1187 cacheUp!502)))))

(assert (=> d!233381 (= (inv!9781 cacheUp!502) e!439149)))

(declare-fun b!696708 () Bool)

(assert (=> b!696708 (= e!439149 (validCacheMapUp!65 (cache!1187 cacheUp!502)))))

(assert (= (and d!233381 res!315281) b!696708))

(assert (=> b!696708 m!952545))

(assert (=> start!66492 d!233381))

(declare-fun d!233383 () Bool)

(assert (=> d!233383 (= (inv!9780 totalInput!378) (isBalanced!705 (c!121901 totalInput!378)))))

(declare-fun bs!137992 () Bool)

(assert (= bs!137992 d!233383))

(declare-fun m!952595 () Bool)

(assert (=> bs!137992 m!952595))

(assert (=> start!66492 d!233383))

(declare-fun b!696719 () Bool)

(declare-fun b_free!19997 () Bool)

(declare-fun b_next!20061 () Bool)

(assert (=> b!696719 (= b_free!19997 (not b_next!20061))))

(declare-fun tp!211608 () Bool)

(declare-fun b_and!63791 () Bool)

(assert (=> b!696719 (= tp!211608 b_and!63791)))

(declare-fun b_free!19999 () Bool)

(declare-fun b_next!20063 () Bool)

(assert (=> b!696719 (= b_free!19999 (not b_next!20063))))

(declare-fun tp!211606 () Bool)

(declare-fun b_and!63793 () Bool)

(assert (=> b!696719 (= tp!211606 b_and!63793)))

(declare-fun e!439160 () Bool)

(assert (=> b!696719 (= e!439160 (and tp!211608 tp!211606))))

(declare-fun b!696718 () Bool)

(declare-fun tp!211609 () Bool)

(declare-fun e!439161 () Bool)

(assert (=> b!696718 (= e!439161 (and tp!211609 (inv!9778 (tag!1785 (h!13059 (t!87495 rules!1486)))) (inv!9786 (transformation!1523 (h!13059 (t!87495 rules!1486)))) e!439160))))

(declare-fun b!696717 () Bool)

(declare-fun e!439159 () Bool)

(declare-fun tp!211607 () Bool)

(assert (=> b!696717 (= e!439159 (and e!439161 tp!211607))))

(assert (=> b!696533 (= tp!211596 e!439159)))

(assert (= b!696718 b!696719))

(assert (= b!696717 b!696718))

(assert (= (and b!696533 ((_ is Cons!7658) (t!87495 rules!1486))) b!696717))

(declare-fun m!952597 () Bool)

(assert (=> b!696718 m!952597))

(declare-fun m!952599 () Bool)

(assert (=> b!696718 m!952599))

(declare-fun e!439179 () Bool)

(declare-fun tp!211632 () Bool)

(declare-fun setRes!3998 () Bool)

(declare-fun setElem!3997 () Context!530)

(declare-fun setNonEmpty!3997 () Bool)

(declare-fun inv!9791 (Context!530) Bool)

(assert (=> setNonEmpty!3997 (= setRes!3998 (and tp!211632 (inv!9791 setElem!3997) e!439179))))

(declare-fun mapDefault!3331 () List!7668)

(declare-fun setRest!3998 () (InoxSet Context!530))

(assert (=> setNonEmpty!3997 (= (_2!4524 (h!13055 mapDefault!3331)) ((_ map or) (store ((as const (Array Context!530 Bool)) false) setElem!3997 true) setRest!3998))))

(declare-fun mapNonEmpty!3331 () Bool)

(declare-fun mapRes!3331 () Bool)

(declare-fun tp!211631 () Bool)

(declare-fun e!439175 () Bool)

(assert (=> mapNonEmpty!3331 (= mapRes!3331 (and tp!211631 e!439175))))

(declare-fun mapValue!3331 () List!7668)

(declare-fun mapKey!3331 () (_ BitVec 32))

(declare-fun mapRest!3331 () (Array (_ BitVec 32) List!7668))

(assert (=> mapNonEmpty!3331 (= mapRest!3327 (store mapRest!3331 mapKey!3331 mapValue!3331))))

(declare-fun mapIsEmpty!3331 () Bool)

(assert (=> mapIsEmpty!3331 mapRes!3331))

(declare-fun setIsEmpty!3997 () Bool)

(assert (=> setIsEmpty!3997 setRes!3998))

(declare-fun setRes!3997 () Bool)

(declare-fun e!439177 () Bool)

(declare-fun tp_is_empty!3655 () Bool)

(declare-fun tp!211630 () Bool)

(declare-fun b!696734 () Bool)

(assert (=> b!696734 (= e!439175 (and (inv!9791 (_1!4523 (_1!4524 (h!13055 mapValue!3331)))) e!439177 tp_is_empty!3655 setRes!3997 tp!211630))))

(declare-fun condSetEmpty!3998 () Bool)

(assert (=> b!696734 (= condSetEmpty!3998 (= (_2!4524 (h!13055 mapValue!3331)) ((as const (Array Context!530 Bool)) false)))))

(declare-fun condMapEmpty!3331 () Bool)

(assert (=> mapNonEmpty!3328 (= condMapEmpty!3331 (= mapRest!3327 ((as const (Array (_ BitVec 32) List!7668)) mapDefault!3331)))))

(declare-fun e!439174 () Bool)

(assert (=> mapNonEmpty!3328 (= tp!211590 (and e!439174 mapRes!3331))))

(declare-fun b!696735 () Bool)

(declare-fun e!439178 () Bool)

(declare-fun tp!211629 () Bool)

(assert (=> b!696735 (= e!439178 tp!211629)))

(declare-fun b!696736 () Bool)

(declare-fun e!439176 () Bool)

(declare-fun tp!211634 () Bool)

(assert (=> b!696736 (= e!439176 tp!211634)))

(declare-fun tp!211628 () Bool)

(declare-fun b!696737 () Bool)

(assert (=> b!696737 (= e!439174 (and (inv!9791 (_1!4523 (_1!4524 (h!13055 mapDefault!3331)))) e!439176 tp_is_empty!3655 setRes!3998 tp!211628))))

(declare-fun condSetEmpty!3997 () Bool)

(assert (=> b!696737 (= condSetEmpty!3997 (= (_2!4524 (h!13055 mapDefault!3331)) ((as const (Array Context!530 Bool)) false)))))

(declare-fun b!696738 () Bool)

(declare-fun tp!211633 () Bool)

(assert (=> b!696738 (= e!439179 tp!211633)))

(declare-fun tp!211635 () Bool)

(declare-fun setElem!3998 () Context!530)

(declare-fun setNonEmpty!3998 () Bool)

(assert (=> setNonEmpty!3998 (= setRes!3997 (and tp!211635 (inv!9791 setElem!3998) e!439178))))

(declare-fun setRest!3997 () (InoxSet Context!530))

(assert (=> setNonEmpty!3998 (= (_2!4524 (h!13055 mapValue!3331)) ((_ map or) (store ((as const (Array Context!530 Bool)) false) setElem!3998 true) setRest!3997))))

(declare-fun b!696739 () Bool)

(declare-fun tp!211636 () Bool)

(assert (=> b!696739 (= e!439177 tp!211636)))

(declare-fun setIsEmpty!3998 () Bool)

(assert (=> setIsEmpty!3998 setRes!3997))

(assert (= (and mapNonEmpty!3328 condMapEmpty!3331) mapIsEmpty!3331))

(assert (= (and mapNonEmpty!3328 (not condMapEmpty!3331)) mapNonEmpty!3331))

(assert (= b!696734 b!696739))

(assert (= (and b!696734 condSetEmpty!3998) setIsEmpty!3998))

(assert (= (and b!696734 (not condSetEmpty!3998)) setNonEmpty!3998))

(assert (= setNonEmpty!3998 b!696735))

(assert (= (and mapNonEmpty!3331 ((_ is Cons!7654) mapValue!3331)) b!696734))

(assert (= b!696737 b!696736))

(assert (= (and b!696737 condSetEmpty!3997) setIsEmpty!3997))

(assert (= (and b!696737 (not condSetEmpty!3997)) setNonEmpty!3997))

(assert (= setNonEmpty!3997 b!696738))

(assert (= (and mapNonEmpty!3328 ((_ is Cons!7654) mapDefault!3331)) b!696737))

(declare-fun m!952601 () Bool)

(assert (=> setNonEmpty!3997 m!952601))

(declare-fun m!952603 () Bool)

(assert (=> setNonEmpty!3998 m!952603))

(declare-fun m!952605 () Bool)

(assert (=> mapNonEmpty!3331 m!952605))

(declare-fun m!952607 () Bool)

(assert (=> b!696737 m!952607))

(declare-fun m!952609 () Bool)

(assert (=> b!696734 m!952609))

(declare-fun e!439187 () Bool)

(declare-fun b!696748 () Bool)

(declare-fun e!439188 () Bool)

(declare-fun tp!211646 () Bool)

(declare-fun setRes!4001 () Bool)

(assert (=> b!696748 (= e!439188 (and (inv!9791 (_1!4523 (_1!4524 (h!13055 mapValue!3327)))) e!439187 tp_is_empty!3655 setRes!4001 tp!211646))))

(declare-fun condSetEmpty!4001 () Bool)

(assert (=> b!696748 (= condSetEmpty!4001 (= (_2!4524 (h!13055 mapValue!3327)) ((as const (Array Context!530 Bool)) false)))))

(assert (=> mapNonEmpty!3328 (= tp!211588 e!439188)))

(declare-fun e!439186 () Bool)

(declare-fun setElem!4001 () Context!530)

(declare-fun tp!211648 () Bool)

(declare-fun setNonEmpty!4001 () Bool)

(assert (=> setNonEmpty!4001 (= setRes!4001 (and tp!211648 (inv!9791 setElem!4001) e!439186))))

(declare-fun setRest!4001 () (InoxSet Context!530))

(assert (=> setNonEmpty!4001 (= (_2!4524 (h!13055 mapValue!3327)) ((_ map or) (store ((as const (Array Context!530 Bool)) false) setElem!4001 true) setRest!4001))))

(declare-fun b!696749 () Bool)

(declare-fun tp!211647 () Bool)

(assert (=> b!696749 (= e!439187 tp!211647)))

(declare-fun setIsEmpty!4001 () Bool)

(assert (=> setIsEmpty!4001 setRes!4001))

(declare-fun b!696750 () Bool)

(declare-fun tp!211645 () Bool)

(assert (=> b!696750 (= e!439186 tp!211645)))

(assert (= b!696748 b!696749))

(assert (= (and b!696748 condSetEmpty!4001) setIsEmpty!4001))

(assert (= (and b!696748 (not condSetEmpty!4001)) setNonEmpty!4001))

(assert (= setNonEmpty!4001 b!696750))

(assert (= (and mapNonEmpty!3328 ((_ is Cons!7654) mapValue!3327)) b!696748))

(declare-fun m!952611 () Bool)

(assert (=> b!696748 m!952611))

(declare-fun m!952613 () Bool)

(assert (=> setNonEmpty!4001 m!952613))

(declare-fun b!696758 () Bool)

(declare-fun e!439194 () Bool)

(declare-fun tp!211656 () Bool)

(assert (=> b!696758 (= e!439194 tp!211656)))

(declare-fun e!439193 () Bool)

(assert (=> b!696541 (= tp!211584 e!439193)))

(declare-fun b!696757 () Bool)

(declare-fun setRes!4004 () Bool)

(declare-fun tp!211655 () Bool)

(assert (=> b!696757 (= e!439193 (and setRes!4004 tp!211655))))

(declare-fun condSetEmpty!4004 () Bool)

(assert (=> b!696757 (= condSetEmpty!4004 (= (_1!4521 (_1!4522 (h!13053 mapDefault!3326))) ((as const (Array Context!530 Bool)) false)))))

(declare-fun setElem!4004 () Context!530)

(declare-fun tp!211657 () Bool)

(declare-fun setNonEmpty!4004 () Bool)

(assert (=> setNonEmpty!4004 (= setRes!4004 (and tp!211657 (inv!9791 setElem!4004) e!439194))))

(declare-fun setRest!4004 () (InoxSet Context!530))

(assert (=> setNonEmpty!4004 (= (_1!4521 (_1!4522 (h!13053 mapDefault!3326))) ((_ map or) (store ((as const (Array Context!530 Bool)) false) setElem!4004 true) setRest!4004))))

(declare-fun setIsEmpty!4004 () Bool)

(assert (=> setIsEmpty!4004 setRes!4004))

(assert (= (and b!696757 condSetEmpty!4004) setIsEmpty!4004))

(assert (= (and b!696757 (not condSetEmpty!4004)) setNonEmpty!4004))

(assert (= setNonEmpty!4004 b!696758))

(assert (= (and b!696541 ((_ is Cons!7652) mapDefault!3326)) b!696757))

(declare-fun m!952615 () Bool)

(assert (=> setNonEmpty!4004 m!952615))

(declare-fun e!439197 () Bool)

(assert (=> b!696560 (= tp!211591 e!439197)))

(declare-fun b!696769 () Bool)

(assert (=> b!696769 (= e!439197 tp_is_empty!3655)))

(declare-fun b!696770 () Bool)

(declare-fun tp!211672 () Bool)

(declare-fun tp!211670 () Bool)

(assert (=> b!696770 (= e!439197 (and tp!211672 tp!211670))))

(declare-fun b!696771 () Bool)

(declare-fun tp!211669 () Bool)

(assert (=> b!696771 (= e!439197 tp!211669)))

(declare-fun b!696772 () Bool)

(declare-fun tp!211671 () Bool)

(declare-fun tp!211668 () Bool)

(assert (=> b!696772 (= e!439197 (and tp!211671 tp!211668))))

(assert (= (and b!696560 ((_ is ElementMatch!1863) (regex!1523 (h!13059 rules!1486)))) b!696769))

(assert (= (and b!696560 ((_ is Concat!3430) (regex!1523 (h!13059 rules!1486)))) b!696770))

(assert (= (and b!696560 ((_ is Star!1863) (regex!1523 (h!13059 rules!1486)))) b!696771))

(assert (= (and b!696560 ((_ is Union!1863) (regex!1523 (h!13059 rules!1486)))) b!696772))

(declare-fun b!696783 () Bool)

(declare-fun e!439209 () Bool)

(declare-fun setRes!4009 () Bool)

(declare-fun tp!211693 () Bool)

(assert (=> b!696783 (= e!439209 (and setRes!4009 tp!211693))))

(declare-fun condSetEmpty!4010 () Bool)

(declare-fun mapValue!3334 () List!7666)

(assert (=> b!696783 (= condSetEmpty!4010 (= (_1!4521 (_1!4522 (h!13053 mapValue!3334))) ((as const (Array Context!530 Bool)) false)))))

(declare-fun mapNonEmpty!3334 () Bool)

(declare-fun mapRes!3334 () Bool)

(declare-fun tp!211690 () Bool)

(assert (=> mapNonEmpty!3334 (= mapRes!3334 (and tp!211690 e!439209))))

(declare-fun mapKey!3334 () (_ BitVec 32))

(declare-fun mapRest!3334 () (Array (_ BitVec 32) List!7666))

(assert (=> mapNonEmpty!3334 (= mapRest!3328 (store mapRest!3334 mapKey!3334 mapValue!3334))))

(declare-fun b!696784 () Bool)

(declare-fun e!439206 () Bool)

(declare-fun tp!211692 () Bool)

(assert (=> b!696784 (= e!439206 tp!211692)))

(declare-fun condMapEmpty!3334 () Bool)

(declare-fun mapDefault!3334 () List!7666)

(assert (=> mapNonEmpty!3327 (= condMapEmpty!3334 (= mapRest!3328 ((as const (Array (_ BitVec 32) List!7666)) mapDefault!3334)))))

(declare-fun e!439207 () Bool)

(assert (=> mapNonEmpty!3327 (= tp!211568 (and e!439207 mapRes!3334))))

(declare-fun b!696785 () Bool)

(declare-fun e!439208 () Bool)

(declare-fun tp!211688 () Bool)

(assert (=> b!696785 (= e!439208 tp!211688)))

(declare-fun setNonEmpty!4009 () Bool)

(declare-fun setElem!4009 () Context!530)

(declare-fun tp!211691 () Bool)

(assert (=> setNonEmpty!4009 (= setRes!4009 (and tp!211691 (inv!9791 setElem!4009) e!439208))))

(declare-fun setRest!4009 () (InoxSet Context!530))

(assert (=> setNonEmpty!4009 (= (_1!4521 (_1!4522 (h!13053 mapValue!3334))) ((_ map or) (store ((as const (Array Context!530 Bool)) false) setElem!4009 true) setRest!4009))))

(declare-fun setIsEmpty!4009 () Bool)

(declare-fun setRes!4010 () Bool)

(assert (=> setIsEmpty!4009 setRes!4010))

(declare-fun setNonEmpty!4010 () Bool)

(declare-fun tp!211689 () Bool)

(declare-fun setElem!4010 () Context!530)

(assert (=> setNonEmpty!4010 (= setRes!4010 (and tp!211689 (inv!9791 setElem!4010) e!439206))))

(declare-fun setRest!4010 () (InoxSet Context!530))

(assert (=> setNonEmpty!4010 (= (_1!4521 (_1!4522 (h!13053 mapDefault!3334))) ((_ map or) (store ((as const (Array Context!530 Bool)) false) setElem!4010 true) setRest!4010))))

(declare-fun setIsEmpty!4010 () Bool)

(assert (=> setIsEmpty!4010 setRes!4009))

(declare-fun b!696786 () Bool)

(declare-fun tp!211687 () Bool)

(assert (=> b!696786 (= e!439207 (and setRes!4010 tp!211687))))

(declare-fun condSetEmpty!4009 () Bool)

(assert (=> b!696786 (= condSetEmpty!4009 (= (_1!4521 (_1!4522 (h!13053 mapDefault!3334))) ((as const (Array Context!530 Bool)) false)))))

(declare-fun mapIsEmpty!3334 () Bool)

(assert (=> mapIsEmpty!3334 mapRes!3334))

(assert (= (and mapNonEmpty!3327 condMapEmpty!3334) mapIsEmpty!3334))

(assert (= (and mapNonEmpty!3327 (not condMapEmpty!3334)) mapNonEmpty!3334))

(assert (= (and b!696783 condSetEmpty!4010) setIsEmpty!4010))

(assert (= (and b!696783 (not condSetEmpty!4010)) setNonEmpty!4009))

(assert (= setNonEmpty!4009 b!696785))

(assert (= (and mapNonEmpty!3334 ((_ is Cons!7652) mapValue!3334)) b!696783))

(assert (= (and b!696786 condSetEmpty!4009) setIsEmpty!4009))

(assert (= (and b!696786 (not condSetEmpty!4009)) setNonEmpty!4010))

(assert (= setNonEmpty!4010 b!696784))

(assert (= (and mapNonEmpty!3327 ((_ is Cons!7652) mapDefault!3334)) b!696786))

(declare-fun m!952617 () Bool)

(assert (=> mapNonEmpty!3334 m!952617))

(declare-fun m!952619 () Bool)

(assert (=> setNonEmpty!4009 m!952619))

(declare-fun m!952621 () Bool)

(assert (=> setNonEmpty!4010 m!952621))

(declare-fun b!696788 () Bool)

(declare-fun e!439211 () Bool)

(declare-fun tp!211695 () Bool)

(assert (=> b!696788 (= e!439211 tp!211695)))

(declare-fun e!439210 () Bool)

(assert (=> mapNonEmpty!3327 (= tp!211573 e!439210)))

(declare-fun b!696787 () Bool)

(declare-fun setRes!4011 () Bool)

(declare-fun tp!211694 () Bool)

(assert (=> b!696787 (= e!439210 (and setRes!4011 tp!211694))))

(declare-fun condSetEmpty!4011 () Bool)

(assert (=> b!696787 (= condSetEmpty!4011 (= (_1!4521 (_1!4522 (h!13053 mapValue!3328))) ((as const (Array Context!530 Bool)) false)))))

(declare-fun setNonEmpty!4011 () Bool)

(declare-fun setElem!4011 () Context!530)

(declare-fun tp!211696 () Bool)

(assert (=> setNonEmpty!4011 (= setRes!4011 (and tp!211696 (inv!9791 setElem!4011) e!439211))))

(declare-fun setRest!4011 () (InoxSet Context!530))

(assert (=> setNonEmpty!4011 (= (_1!4521 (_1!4522 (h!13053 mapValue!3328))) ((_ map or) (store ((as const (Array Context!530 Bool)) false) setElem!4011 true) setRest!4011))))

(declare-fun setIsEmpty!4011 () Bool)

(assert (=> setIsEmpty!4011 setRes!4011))

(assert (= (and b!696787 condSetEmpty!4011) setIsEmpty!4011))

(assert (= (and b!696787 (not condSetEmpty!4011)) setNonEmpty!4011))

(assert (= setNonEmpty!4011 b!696788))

(assert (= (and mapNonEmpty!3327 ((_ is Cons!7652) mapValue!3328)) b!696787))

(declare-fun m!952623 () Bool)

(assert (=> setNonEmpty!4011 m!952623))

(declare-fun tp!211711 () Bool)

(declare-fun setRes!4014 () Bool)

(declare-fun setNonEmpty!4014 () Bool)

(declare-fun e!439219 () Bool)

(declare-fun setElem!4014 () Context!530)

(assert (=> setNonEmpty!4014 (= setRes!4014 (and tp!211711 (inv!9791 setElem!4014) e!439219))))

(declare-fun setRest!4014 () (InoxSet Context!530))

(assert (=> setNonEmpty!4014 (= (_2!4526 (h!13056 (zeroValue!1086 (v!17791 (underlying!1841 (v!17792 (underlying!1842 (cache!1188 cacheDown!515)))))))) ((_ map or) (store ((as const (Array Context!530 Bool)) false) setElem!4014 true) setRest!4014))))

(declare-fun e!439218 () Bool)

(assert (=> b!696549 (= tp!211580 e!439218)))

(declare-fun b!696797 () Bool)

(declare-fun e!439220 () Bool)

(declare-fun tp!211708 () Bool)

(assert (=> b!696797 (= e!439220 tp!211708)))

(declare-fun b!696798 () Bool)

(declare-fun tp!211709 () Bool)

(declare-fun tp!211707 () Bool)

(assert (=> b!696798 (= e!439218 (and tp!211707 (inv!9791 (_2!4525 (_1!4526 (h!13056 (zeroValue!1086 (v!17791 (underlying!1841 (v!17792 (underlying!1842 (cache!1188 cacheDown!515)))))))))) e!439220 tp_is_empty!3655 setRes!4014 tp!211709))))

(declare-fun condSetEmpty!4014 () Bool)

(assert (=> b!696798 (= condSetEmpty!4014 (= (_2!4526 (h!13056 (zeroValue!1086 (v!17791 (underlying!1841 (v!17792 (underlying!1842 (cache!1188 cacheDown!515)))))))) ((as const (Array Context!530 Bool)) false)))))

(declare-fun b!696799 () Bool)

(declare-fun tp!211710 () Bool)

(assert (=> b!696799 (= e!439219 tp!211710)))

(declare-fun setIsEmpty!4014 () Bool)

(assert (=> setIsEmpty!4014 setRes!4014))

(assert (= b!696798 b!696797))

(assert (= (and b!696798 condSetEmpty!4014) setIsEmpty!4014))

(assert (= (and b!696798 (not condSetEmpty!4014)) setNonEmpty!4014))

(assert (= setNonEmpty!4014 b!696799))

(assert (= (and b!696549 ((_ is Cons!7655) (zeroValue!1086 (v!17791 (underlying!1841 (v!17792 (underlying!1842 (cache!1188 cacheDown!515)))))))) b!696798))

(declare-fun m!952625 () Bool)

(assert (=> setNonEmpty!4014 m!952625))

(declare-fun m!952627 () Bool)

(assert (=> b!696798 m!952627))

(declare-fun tp!211716 () Bool)

(declare-fun setNonEmpty!4015 () Bool)

(declare-fun setElem!4015 () Context!530)

(declare-fun e!439222 () Bool)

(declare-fun setRes!4015 () Bool)

(assert (=> setNonEmpty!4015 (= setRes!4015 (and tp!211716 (inv!9791 setElem!4015) e!439222))))

(declare-fun setRest!4015 () (InoxSet Context!530))

(assert (=> setNonEmpty!4015 (= (_2!4526 (h!13056 (minValue!1086 (v!17791 (underlying!1841 (v!17792 (underlying!1842 (cache!1188 cacheDown!515)))))))) ((_ map or) (store ((as const (Array Context!530 Bool)) false) setElem!4015 true) setRest!4015))))

(declare-fun e!439221 () Bool)

(assert (=> b!696549 (= tp!211583 e!439221)))

(declare-fun b!696800 () Bool)

(declare-fun e!439223 () Bool)

(declare-fun tp!211713 () Bool)

(assert (=> b!696800 (= e!439223 tp!211713)))

(declare-fun tp!211714 () Bool)

(declare-fun tp!211712 () Bool)

(declare-fun b!696801 () Bool)

(assert (=> b!696801 (= e!439221 (and tp!211712 (inv!9791 (_2!4525 (_1!4526 (h!13056 (minValue!1086 (v!17791 (underlying!1841 (v!17792 (underlying!1842 (cache!1188 cacheDown!515)))))))))) e!439223 tp_is_empty!3655 setRes!4015 tp!211714))))

(declare-fun condSetEmpty!4015 () Bool)

(assert (=> b!696801 (= condSetEmpty!4015 (= (_2!4526 (h!13056 (minValue!1086 (v!17791 (underlying!1841 (v!17792 (underlying!1842 (cache!1188 cacheDown!515)))))))) ((as const (Array Context!530 Bool)) false)))))

(declare-fun b!696802 () Bool)

(declare-fun tp!211715 () Bool)

(assert (=> b!696802 (= e!439222 tp!211715)))

(declare-fun setIsEmpty!4015 () Bool)

(assert (=> setIsEmpty!4015 setRes!4015))

(assert (= b!696801 b!696800))

(assert (= (and b!696801 condSetEmpty!4015) setIsEmpty!4015))

(assert (= (and b!696801 (not condSetEmpty!4015)) setNonEmpty!4015))

(assert (= setNonEmpty!4015 b!696802))

(assert (= (and b!696549 ((_ is Cons!7655) (minValue!1086 (v!17791 (underlying!1841 (v!17792 (underlying!1842 (cache!1188 cacheDown!515)))))))) b!696801))

(declare-fun m!952629 () Bool)

(assert (=> setNonEmpty!4015 m!952629))

(declare-fun m!952631 () Bool)

(assert (=> b!696801 m!952631))

(declare-fun e!439225 () Bool)

(declare-fun e!439226 () Bool)

(declare-fun b!696803 () Bool)

(declare-fun tp!211718 () Bool)

(declare-fun setRes!4016 () Bool)

(assert (=> b!696803 (= e!439226 (and (inv!9791 (_1!4523 (_1!4524 (h!13055 mapDefault!3328)))) e!439225 tp_is_empty!3655 setRes!4016 tp!211718))))

(declare-fun condSetEmpty!4016 () Bool)

(assert (=> b!696803 (= condSetEmpty!4016 (= (_2!4524 (h!13055 mapDefault!3328)) ((as const (Array Context!530 Bool)) false)))))

(assert (=> b!696530 (= tp!211572 e!439226)))

(declare-fun e!439224 () Bool)

(declare-fun tp!211720 () Bool)

(declare-fun setNonEmpty!4016 () Bool)

(declare-fun setElem!4016 () Context!530)

(assert (=> setNonEmpty!4016 (= setRes!4016 (and tp!211720 (inv!9791 setElem!4016) e!439224))))

(declare-fun setRest!4016 () (InoxSet Context!530))

(assert (=> setNonEmpty!4016 (= (_2!4524 (h!13055 mapDefault!3328)) ((_ map or) (store ((as const (Array Context!530 Bool)) false) setElem!4016 true) setRest!4016))))

(declare-fun b!696804 () Bool)

(declare-fun tp!211719 () Bool)

(assert (=> b!696804 (= e!439225 tp!211719)))

(declare-fun setIsEmpty!4016 () Bool)

(assert (=> setIsEmpty!4016 setRes!4016))

(declare-fun b!696805 () Bool)

(declare-fun tp!211717 () Bool)

(assert (=> b!696805 (= e!439224 tp!211717)))

(assert (= b!696803 b!696804))

(assert (= (and b!696803 condSetEmpty!4016) setIsEmpty!4016))

(assert (= (and b!696803 (not condSetEmpty!4016)) setNonEmpty!4016))

(assert (= setNonEmpty!4016 b!696805))

(assert (= (and b!696530 ((_ is Cons!7654) mapDefault!3328)) b!696803))

(declare-fun m!952633 () Bool)

(assert (=> b!696803 m!952633))

(declare-fun m!952635 () Bool)

(assert (=> setNonEmpty!4016 m!952635))

(declare-fun tp!211728 () Bool)

(declare-fun b!696814 () Bool)

(declare-fun tp!211727 () Bool)

(declare-fun e!439232 () Bool)

(assert (=> b!696814 (= e!439232 (and (inv!9785 (left!6058 (c!121902 acc!372))) tp!211727 (inv!9785 (right!6388 (c!121902 acc!372))) tp!211728))))

(declare-fun b!696816 () Bool)

(declare-fun e!439231 () Bool)

(declare-fun tp!211729 () Bool)

(assert (=> b!696816 (= e!439231 tp!211729)))

(declare-fun b!696815 () Bool)

(declare-fun inv!9792 (IArray!5373) Bool)

(assert (=> b!696815 (= e!439232 (and (inv!9792 (xs!5339 (c!121902 acc!372))) e!439231))))

(assert (=> b!696548 (= tp!211576 (and (inv!9785 (c!121902 acc!372)) e!439232))))

(assert (= (and b!696548 ((_ is Node!2686) (c!121902 acc!372))) b!696814))

(assert (= b!696815 b!696816))

(assert (= (and b!696548 ((_ is Leaf!3971) (c!121902 acc!372))) b!696815))

(declare-fun m!952637 () Bool)

(assert (=> b!696814 m!952637))

(declare-fun m!952639 () Bool)

(assert (=> b!696814 m!952639))

(declare-fun m!952641 () Bool)

(assert (=> b!696815 m!952641))

(assert (=> b!696548 m!952343))

(declare-fun b!696818 () Bool)

(declare-fun e!439234 () Bool)

(declare-fun tp!211731 () Bool)

(assert (=> b!696818 (= e!439234 tp!211731)))

(declare-fun e!439233 () Bool)

(assert (=> b!696557 (= tp!211586 e!439233)))

(declare-fun b!696817 () Bool)

(declare-fun setRes!4017 () Bool)

(declare-fun tp!211730 () Bool)

(assert (=> b!696817 (= e!439233 (and setRes!4017 tp!211730))))

(declare-fun condSetEmpty!4017 () Bool)

(assert (=> b!696817 (= condSetEmpty!4017 (= (_1!4521 (_1!4522 (h!13053 (zeroValue!1084 (v!17787 (underlying!1837 (v!17788 (underlying!1838 (cache!1186 cacheFindLongestMatch!74))))))))) ((as const (Array Context!530 Bool)) false)))))

(declare-fun setElem!4017 () Context!530)

(declare-fun setNonEmpty!4017 () Bool)

(declare-fun tp!211732 () Bool)

(assert (=> setNonEmpty!4017 (= setRes!4017 (and tp!211732 (inv!9791 setElem!4017) e!439234))))

(declare-fun setRest!4017 () (InoxSet Context!530))

(assert (=> setNonEmpty!4017 (= (_1!4521 (_1!4522 (h!13053 (zeroValue!1084 (v!17787 (underlying!1837 (v!17788 (underlying!1838 (cache!1186 cacheFindLongestMatch!74))))))))) ((_ map or) (store ((as const (Array Context!530 Bool)) false) setElem!4017 true) setRest!4017))))

(declare-fun setIsEmpty!4017 () Bool)

(assert (=> setIsEmpty!4017 setRes!4017))

(assert (= (and b!696817 condSetEmpty!4017) setIsEmpty!4017))

(assert (= (and b!696817 (not condSetEmpty!4017)) setNonEmpty!4017))

(assert (= setNonEmpty!4017 b!696818))

(assert (= (and b!696557 ((_ is Cons!7652) (zeroValue!1084 (v!17787 (underlying!1837 (v!17788 (underlying!1838 (cache!1186 cacheFindLongestMatch!74)))))))) b!696817))

(declare-fun m!952643 () Bool)

(assert (=> setNonEmpty!4017 m!952643))

(declare-fun b!696820 () Bool)

(declare-fun e!439236 () Bool)

(declare-fun tp!211734 () Bool)

(assert (=> b!696820 (= e!439236 tp!211734)))

(declare-fun e!439235 () Bool)

(assert (=> b!696557 (= tp!211579 e!439235)))

(declare-fun b!696819 () Bool)

(declare-fun setRes!4018 () Bool)

(declare-fun tp!211733 () Bool)

(assert (=> b!696819 (= e!439235 (and setRes!4018 tp!211733))))

(declare-fun condSetEmpty!4018 () Bool)

(assert (=> b!696819 (= condSetEmpty!4018 (= (_1!4521 (_1!4522 (h!13053 (minValue!1084 (v!17787 (underlying!1837 (v!17788 (underlying!1838 (cache!1186 cacheFindLongestMatch!74))))))))) ((as const (Array Context!530 Bool)) false)))))

(declare-fun tp!211735 () Bool)

(declare-fun setElem!4018 () Context!530)

(declare-fun setNonEmpty!4018 () Bool)

(assert (=> setNonEmpty!4018 (= setRes!4018 (and tp!211735 (inv!9791 setElem!4018) e!439236))))

(declare-fun setRest!4018 () (InoxSet Context!530))

(assert (=> setNonEmpty!4018 (= (_1!4521 (_1!4522 (h!13053 (minValue!1084 (v!17787 (underlying!1837 (v!17788 (underlying!1838 (cache!1186 cacheFindLongestMatch!74))))))))) ((_ map or) (store ((as const (Array Context!530 Bool)) false) setElem!4018 true) setRest!4018))))

(declare-fun setIsEmpty!4018 () Bool)

(assert (=> setIsEmpty!4018 setRes!4018))

(assert (= (and b!696819 condSetEmpty!4018) setIsEmpty!4018))

(assert (= (and b!696819 (not condSetEmpty!4018)) setNonEmpty!4018))

(assert (= setNonEmpty!4018 b!696820))

(assert (= (and b!696557 ((_ is Cons!7652) (minValue!1084 (v!17787 (underlying!1837 (v!17788 (underlying!1838 (cache!1186 cacheFindLongestMatch!74)))))))) b!696819))

(declare-fun m!952645 () Bool)

(assert (=> setNonEmpty!4018 m!952645))

(declare-fun e!439241 () Bool)

(declare-fun tp!211744 () Bool)

(declare-fun b!696829 () Bool)

(declare-fun tp!211743 () Bool)

(assert (=> b!696829 (= e!439241 (and (inv!9784 (left!6057 (c!121901 input!870))) tp!211743 (inv!9784 (right!6387 (c!121901 input!870))) tp!211744))))

(declare-fun b!696831 () Bool)

(declare-fun e!439242 () Bool)

(declare-fun tp!211742 () Bool)

(assert (=> b!696831 (= e!439242 tp!211742)))

(declare-fun b!696830 () Bool)

(declare-fun inv!9793 (IArray!5371) Bool)

(assert (=> b!696830 (= e!439241 (and (inv!9793 (xs!5338 (c!121901 input!870))) e!439242))))

(assert (=> b!696536 (= tp!211582 (and (inv!9784 (c!121901 input!870)) e!439241))))

(assert (= (and b!696536 ((_ is Node!2685) (c!121901 input!870))) b!696829))

(assert (= b!696830 b!696831))

(assert (= (and b!696536 ((_ is Leaf!3970) (c!121901 input!870))) b!696830))

(declare-fun m!952647 () Bool)

(assert (=> b!696829 m!952647))

(declare-fun m!952649 () Bool)

(assert (=> b!696829 m!952649))

(declare-fun m!952651 () Bool)

(assert (=> b!696830 m!952651))

(assert (=> b!696536 m!952317))

(declare-fun tp!211746 () Bool)

(declare-fun b!696832 () Bool)

(declare-fun tp!211747 () Bool)

(declare-fun e!439243 () Bool)

(assert (=> b!696832 (= e!439243 (and (inv!9784 (left!6057 (c!121901 treated!50))) tp!211746 (inv!9784 (right!6387 (c!121901 treated!50))) tp!211747))))

(declare-fun b!696834 () Bool)

(declare-fun e!439244 () Bool)

(declare-fun tp!211745 () Bool)

(assert (=> b!696834 (= e!439244 tp!211745)))

(declare-fun b!696833 () Bool)

(assert (=> b!696833 (= e!439243 (and (inv!9793 (xs!5338 (c!121901 treated!50))) e!439244))))

(assert (=> b!696555 (= tp!211578 (and (inv!9784 (c!121901 treated!50)) e!439243))))

(assert (= (and b!696555 ((_ is Node!2685) (c!121901 treated!50))) b!696832))

(assert (= b!696833 b!696834))

(assert (= (and b!696555 ((_ is Leaf!3970) (c!121901 treated!50))) b!696833))

(declare-fun m!952653 () Bool)

(assert (=> b!696832 m!952653))

(declare-fun m!952655 () Bool)

(assert (=> b!696832 m!952655))

(declare-fun m!952657 () Bool)

(assert (=> b!696833 m!952657))

(assert (=> b!696555 m!952311))

(declare-fun e!439246 () Bool)

(declare-fun b!696835 () Bool)

(declare-fun tp!211749 () Bool)

(declare-fun setRes!4019 () Bool)

(declare-fun e!439247 () Bool)

(assert (=> b!696835 (= e!439247 (and (inv!9791 (_1!4523 (_1!4524 (h!13055 (zeroValue!1085 (v!17789 (underlying!1839 (v!17790 (underlying!1840 (cache!1187 cacheUp!502)))))))))) e!439246 tp_is_empty!3655 setRes!4019 tp!211749))))

(declare-fun condSetEmpty!4019 () Bool)

(assert (=> b!696835 (= condSetEmpty!4019 (= (_2!4524 (h!13055 (zeroValue!1085 (v!17789 (underlying!1839 (v!17790 (underlying!1840 (cache!1187 cacheUp!502)))))))) ((as const (Array Context!530 Bool)) false)))))

(assert (=> b!696527 (= tp!211569 e!439247)))

(declare-fun tp!211751 () Bool)

(declare-fun setElem!4019 () Context!530)

(declare-fun setNonEmpty!4019 () Bool)

(declare-fun e!439245 () Bool)

(assert (=> setNonEmpty!4019 (= setRes!4019 (and tp!211751 (inv!9791 setElem!4019) e!439245))))

(declare-fun setRest!4019 () (InoxSet Context!530))

(assert (=> setNonEmpty!4019 (= (_2!4524 (h!13055 (zeroValue!1085 (v!17789 (underlying!1839 (v!17790 (underlying!1840 (cache!1187 cacheUp!502)))))))) ((_ map or) (store ((as const (Array Context!530 Bool)) false) setElem!4019 true) setRest!4019))))

(declare-fun b!696836 () Bool)

(declare-fun tp!211750 () Bool)

(assert (=> b!696836 (= e!439246 tp!211750)))

(declare-fun setIsEmpty!4019 () Bool)

(assert (=> setIsEmpty!4019 setRes!4019))

(declare-fun b!696837 () Bool)

(declare-fun tp!211748 () Bool)

(assert (=> b!696837 (= e!439245 tp!211748)))

(assert (= b!696835 b!696836))

(assert (= (and b!696835 condSetEmpty!4019) setIsEmpty!4019))

(assert (= (and b!696835 (not condSetEmpty!4019)) setNonEmpty!4019))

(assert (= setNonEmpty!4019 b!696837))

(assert (= (and b!696527 ((_ is Cons!7654) (zeroValue!1085 (v!17789 (underlying!1839 (v!17790 (underlying!1840 (cache!1187 cacheUp!502)))))))) b!696835))

(declare-fun m!952659 () Bool)

(assert (=> b!696835 m!952659))

(declare-fun m!952661 () Bool)

(assert (=> setNonEmpty!4019 m!952661))

(declare-fun e!439249 () Bool)

(declare-fun tp!211753 () Bool)

(declare-fun b!696838 () Bool)

(declare-fun e!439250 () Bool)

(declare-fun setRes!4020 () Bool)

(assert (=> b!696838 (= e!439250 (and (inv!9791 (_1!4523 (_1!4524 (h!13055 (minValue!1085 (v!17789 (underlying!1839 (v!17790 (underlying!1840 (cache!1187 cacheUp!502)))))))))) e!439249 tp_is_empty!3655 setRes!4020 tp!211753))))

(declare-fun condSetEmpty!4020 () Bool)

(assert (=> b!696838 (= condSetEmpty!4020 (= (_2!4524 (h!13055 (minValue!1085 (v!17789 (underlying!1839 (v!17790 (underlying!1840 (cache!1187 cacheUp!502)))))))) ((as const (Array Context!530 Bool)) false)))))

(assert (=> b!696527 (= tp!211585 e!439250)))

(declare-fun setNonEmpty!4020 () Bool)

(declare-fun e!439248 () Bool)

(declare-fun setElem!4020 () Context!530)

(declare-fun tp!211755 () Bool)

(assert (=> setNonEmpty!4020 (= setRes!4020 (and tp!211755 (inv!9791 setElem!4020) e!439248))))

(declare-fun setRest!4020 () (InoxSet Context!530))

(assert (=> setNonEmpty!4020 (= (_2!4524 (h!13055 (minValue!1085 (v!17789 (underlying!1839 (v!17790 (underlying!1840 (cache!1187 cacheUp!502)))))))) ((_ map or) (store ((as const (Array Context!530 Bool)) false) setElem!4020 true) setRest!4020))))

(declare-fun b!696839 () Bool)

(declare-fun tp!211754 () Bool)

(assert (=> b!696839 (= e!439249 tp!211754)))

(declare-fun setIsEmpty!4020 () Bool)

(assert (=> setIsEmpty!4020 setRes!4020))

(declare-fun b!696840 () Bool)

(declare-fun tp!211752 () Bool)

(assert (=> b!696840 (= e!439248 tp!211752)))

(assert (= b!696838 b!696839))

(assert (= (and b!696838 condSetEmpty!4020) setIsEmpty!4020))

(assert (= (and b!696838 (not condSetEmpty!4020)) setNonEmpty!4020))

(assert (= setNonEmpty!4020 b!696840))

(assert (= (and b!696527 ((_ is Cons!7654) (minValue!1085 (v!17789 (underlying!1839 (v!17790 (underlying!1840 (cache!1187 cacheUp!502)))))))) b!696838))

(declare-fun m!952663 () Bool)

(assert (=> b!696838 m!952663))

(declare-fun m!952665 () Bool)

(assert (=> setNonEmpty!4020 m!952665))

(declare-fun setRes!4021 () Bool)

(declare-fun e!439252 () Bool)

(declare-fun tp!211760 () Bool)

(declare-fun setElem!4021 () Context!530)

(declare-fun setNonEmpty!4021 () Bool)

(assert (=> setNonEmpty!4021 (= setRes!4021 (and tp!211760 (inv!9791 setElem!4021) e!439252))))

(declare-fun setRest!4021 () (InoxSet Context!530))

(assert (=> setNonEmpty!4021 (= (_2!4526 (h!13056 mapDefault!3327)) ((_ map or) (store ((as const (Array Context!530 Bool)) false) setElem!4021 true) setRest!4021))))

(declare-fun e!439251 () Bool)

(assert (=> b!696528 (= tp!211570 e!439251)))

(declare-fun b!696841 () Bool)

(declare-fun e!439253 () Bool)

(declare-fun tp!211757 () Bool)

(assert (=> b!696841 (= e!439253 tp!211757)))

(declare-fun tp!211756 () Bool)

(declare-fun tp!211758 () Bool)

(declare-fun b!696842 () Bool)

(assert (=> b!696842 (= e!439251 (and tp!211756 (inv!9791 (_2!4525 (_1!4526 (h!13056 mapDefault!3327)))) e!439253 tp_is_empty!3655 setRes!4021 tp!211758))))

(declare-fun condSetEmpty!4021 () Bool)

(assert (=> b!696842 (= condSetEmpty!4021 (= (_2!4526 (h!13056 mapDefault!3327)) ((as const (Array Context!530 Bool)) false)))))

(declare-fun b!696843 () Bool)

(declare-fun tp!211759 () Bool)

(assert (=> b!696843 (= e!439252 tp!211759)))

(declare-fun setIsEmpty!4021 () Bool)

(assert (=> setIsEmpty!4021 setRes!4021))

(assert (= b!696842 b!696841))

(assert (= (and b!696842 condSetEmpty!4021) setIsEmpty!4021))

(assert (= (and b!696842 (not condSetEmpty!4021)) setNonEmpty!4021))

(assert (= setNonEmpty!4021 b!696843))

(assert (= (and b!696528 ((_ is Cons!7655) mapDefault!3327)) b!696842))

(declare-fun m!952667 () Bool)

(assert (=> setNonEmpty!4021 m!952667))

(declare-fun m!952669 () Bool)

(assert (=> b!696842 m!952669))

(declare-fun b!696844 () Bool)

(declare-fun tp!211762 () Bool)

(declare-fun e!439254 () Bool)

(declare-fun tp!211763 () Bool)

(assert (=> b!696844 (= e!439254 (and (inv!9784 (left!6057 (c!121901 (totalInput!1826 cacheFindLongestMatch!74)))) tp!211762 (inv!9784 (right!6387 (c!121901 (totalInput!1826 cacheFindLongestMatch!74)))) tp!211763))))

(declare-fun b!696846 () Bool)

(declare-fun e!439255 () Bool)

(declare-fun tp!211761 () Bool)

(assert (=> b!696846 (= e!439255 tp!211761)))

(declare-fun b!696845 () Bool)

(assert (=> b!696845 (= e!439254 (and (inv!9793 (xs!5338 (c!121901 (totalInput!1826 cacheFindLongestMatch!74)))) e!439255))))

(assert (=> b!696554 (= tp!211589 (and (inv!9784 (c!121901 (totalInput!1826 cacheFindLongestMatch!74))) e!439254))))

(assert (= (and b!696554 ((_ is Node!2685) (c!121901 (totalInput!1826 cacheFindLongestMatch!74)))) b!696844))

(assert (= b!696845 b!696846))

(assert (= (and b!696554 ((_ is Leaf!3970) (c!121901 (totalInput!1826 cacheFindLongestMatch!74)))) b!696845))

(declare-fun m!952671 () Bool)

(assert (=> b!696844 m!952671))

(declare-fun m!952673 () Bool)

(assert (=> b!696844 m!952673))

(declare-fun m!952675 () Bool)

(assert (=> b!696845 m!952675))

(assert (=> b!696554 m!952367))

(declare-fun setRes!4027 () Bool)

(declare-fun mapValue!3337 () List!7669)

(declare-fun e!439270 () Bool)

(declare-fun b!696861 () Bool)

(declare-fun tp!211790 () Bool)

(declare-fun tp!211789 () Bool)

(declare-fun e!439272 () Bool)

(assert (=> b!696861 (= e!439272 (and tp!211789 (inv!9791 (_2!4525 (_1!4526 (h!13056 mapValue!3337)))) e!439270 tp_is_empty!3655 setRes!4027 tp!211790))))

(declare-fun condSetEmpty!4027 () Bool)

(assert (=> b!696861 (= condSetEmpty!4027 (= (_2!4526 (h!13056 mapValue!3337)) ((as const (Array Context!530 Bool)) false)))))

(declare-fun b!696862 () Bool)

(declare-fun e!439268 () Bool)

(declare-fun tp!211793 () Bool)

(assert (=> b!696862 (= e!439268 tp!211793)))

(declare-fun setRes!4026 () Bool)

(declare-fun setNonEmpty!4026 () Bool)

(declare-fun setElem!4026 () Context!530)

(declare-fun tp!211795 () Bool)

(assert (=> setNonEmpty!4026 (= setRes!4026 (and tp!211795 (inv!9791 setElem!4026) e!439268))))

(declare-fun mapDefault!3337 () List!7669)

(declare-fun setRest!4026 () (InoxSet Context!530))

(assert (=> setNonEmpty!4026 (= (_2!4526 (h!13056 mapDefault!3337)) ((_ map or) (store ((as const (Array Context!530 Bool)) false) setElem!4026 true) setRest!4026))))

(declare-fun condMapEmpty!3337 () Bool)

(assert (=> mapNonEmpty!3326 (= condMapEmpty!3337 (= mapRest!3326 ((as const (Array (_ BitVec 32) List!7669)) mapDefault!3337)))))

(declare-fun e!439271 () Bool)

(declare-fun mapRes!3337 () Bool)

(assert (=> mapNonEmpty!3326 (= tp!211597 (and e!439271 mapRes!3337))))

(declare-fun mapIsEmpty!3337 () Bool)

(assert (=> mapIsEmpty!3337 mapRes!3337))

(declare-fun setElem!4027 () Context!530)

(declare-fun setNonEmpty!4027 () Bool)

(declare-fun tp!211791 () Bool)

(declare-fun e!439269 () Bool)

(assert (=> setNonEmpty!4027 (= setRes!4027 (and tp!211791 (inv!9791 setElem!4027) e!439269))))

(declare-fun setRest!4027 () (InoxSet Context!530))

(assert (=> setNonEmpty!4027 (= (_2!4526 (h!13056 mapValue!3337)) ((_ map or) (store ((as const (Array Context!530 Bool)) false) setElem!4027 true) setRest!4027))))

(declare-fun mapNonEmpty!3337 () Bool)

(declare-fun tp!211788 () Bool)

(assert (=> mapNonEmpty!3337 (= mapRes!3337 (and tp!211788 e!439272))))

(declare-fun mapRest!3337 () (Array (_ BitVec 32) List!7669))

(declare-fun mapKey!3337 () (_ BitVec 32))

(assert (=> mapNonEmpty!3337 (= mapRest!3326 (store mapRest!3337 mapKey!3337 mapValue!3337))))

(declare-fun setIsEmpty!4026 () Bool)

(assert (=> setIsEmpty!4026 setRes!4027))

(declare-fun tp!211796 () Bool)

(declare-fun e!439273 () Bool)

(declare-fun tp!211792 () Bool)

(declare-fun b!696863 () Bool)

(assert (=> b!696863 (= e!439271 (and tp!211796 (inv!9791 (_2!4525 (_1!4526 (h!13056 mapDefault!3337)))) e!439273 tp_is_empty!3655 setRes!4026 tp!211792))))

(declare-fun condSetEmpty!4026 () Bool)

(assert (=> b!696863 (= condSetEmpty!4026 (= (_2!4526 (h!13056 mapDefault!3337)) ((as const (Array Context!530 Bool)) false)))))

(declare-fun b!696864 () Bool)

(declare-fun tp!211786 () Bool)

(assert (=> b!696864 (= e!439270 tp!211786)))

(declare-fun b!696865 () Bool)

(declare-fun tp!211794 () Bool)

(assert (=> b!696865 (= e!439273 tp!211794)))

(declare-fun b!696866 () Bool)

(declare-fun tp!211787 () Bool)

(assert (=> b!696866 (= e!439269 tp!211787)))

(declare-fun setIsEmpty!4027 () Bool)

(assert (=> setIsEmpty!4027 setRes!4026))

(assert (= (and mapNonEmpty!3326 condMapEmpty!3337) mapIsEmpty!3337))

(assert (= (and mapNonEmpty!3326 (not condMapEmpty!3337)) mapNonEmpty!3337))

(assert (= b!696861 b!696864))

(assert (= (and b!696861 condSetEmpty!4027) setIsEmpty!4026))

(assert (= (and b!696861 (not condSetEmpty!4027)) setNonEmpty!4027))

(assert (= setNonEmpty!4027 b!696866))

(assert (= (and mapNonEmpty!3337 ((_ is Cons!7655) mapValue!3337)) b!696861))

(assert (= b!696863 b!696865))

(assert (= (and b!696863 condSetEmpty!4026) setIsEmpty!4027))

(assert (= (and b!696863 (not condSetEmpty!4026)) setNonEmpty!4026))

(assert (= setNonEmpty!4026 b!696862))

(assert (= (and mapNonEmpty!3326 ((_ is Cons!7655) mapDefault!3337)) b!696863))

(declare-fun m!952677 () Bool)

(assert (=> setNonEmpty!4027 m!952677))

(declare-fun m!952679 () Bool)

(assert (=> setNonEmpty!4026 m!952679))

(declare-fun m!952681 () Bool)

(assert (=> b!696861 m!952681))

(declare-fun m!952683 () Bool)

(assert (=> mapNonEmpty!3337 m!952683))

(declare-fun m!952685 () Bool)

(assert (=> b!696863 m!952685))

(declare-fun tp!211801 () Bool)

(declare-fun e!439275 () Bool)

(declare-fun setElem!4028 () Context!530)

(declare-fun setRes!4028 () Bool)

(declare-fun setNonEmpty!4028 () Bool)

(assert (=> setNonEmpty!4028 (= setRes!4028 (and tp!211801 (inv!9791 setElem!4028) e!439275))))

(declare-fun setRest!4028 () (InoxSet Context!530))

(assert (=> setNonEmpty!4028 (= (_2!4526 (h!13056 mapValue!3326)) ((_ map or) (store ((as const (Array Context!530 Bool)) false) setElem!4028 true) setRest!4028))))

(declare-fun e!439274 () Bool)

(assert (=> mapNonEmpty!3326 (= tp!211587 e!439274)))

(declare-fun b!696867 () Bool)

(declare-fun e!439276 () Bool)

(declare-fun tp!211798 () Bool)

(assert (=> b!696867 (= e!439276 tp!211798)))

(declare-fun tp!211797 () Bool)

(declare-fun tp!211799 () Bool)

(declare-fun b!696868 () Bool)

(assert (=> b!696868 (= e!439274 (and tp!211797 (inv!9791 (_2!4525 (_1!4526 (h!13056 mapValue!3326)))) e!439276 tp_is_empty!3655 setRes!4028 tp!211799))))

(declare-fun condSetEmpty!4028 () Bool)

(assert (=> b!696868 (= condSetEmpty!4028 (= (_2!4526 (h!13056 mapValue!3326)) ((as const (Array Context!530 Bool)) false)))))

(declare-fun b!696869 () Bool)

(declare-fun tp!211800 () Bool)

(assert (=> b!696869 (= e!439275 tp!211800)))

(declare-fun setIsEmpty!4028 () Bool)

(assert (=> setIsEmpty!4028 setRes!4028))

(assert (= b!696868 b!696867))

(assert (= (and b!696868 condSetEmpty!4028) setIsEmpty!4028))

(assert (= (and b!696868 (not condSetEmpty!4028)) setNonEmpty!4028))

(assert (= setNonEmpty!4028 b!696869))

(assert (= (and mapNonEmpty!3326 ((_ is Cons!7655) mapValue!3326)) b!696868))

(declare-fun m!952687 () Bool)

(assert (=> setNonEmpty!4028 m!952687))

(declare-fun m!952689 () Bool)

(assert (=> b!696868 m!952689))

(declare-fun e!439277 () Bool)

(declare-fun b!696870 () Bool)

(declare-fun tp!211803 () Bool)

(declare-fun tp!211804 () Bool)

(assert (=> b!696870 (= e!439277 (and (inv!9784 (left!6057 (c!121901 totalInput!378))) tp!211803 (inv!9784 (right!6387 (c!121901 totalInput!378))) tp!211804))))

(declare-fun b!696872 () Bool)

(declare-fun e!439278 () Bool)

(declare-fun tp!211802 () Bool)

(assert (=> b!696872 (= e!439278 tp!211802)))

(declare-fun b!696871 () Bool)

(assert (=> b!696871 (= e!439277 (and (inv!9793 (xs!5338 (c!121901 totalInput!378))) e!439278))))

(assert (=> b!696562 (= tp!211595 (and (inv!9784 (c!121901 totalInput!378)) e!439277))))

(assert (= (and b!696562 ((_ is Node!2685) (c!121901 totalInput!378))) b!696870))

(assert (= b!696871 b!696872))

(assert (= (and b!696562 ((_ is Leaf!3970) (c!121901 totalInput!378))) b!696871))

(declare-fun m!952691 () Bool)

(assert (=> b!696870 m!952691))

(declare-fun m!952693 () Bool)

(assert (=> b!696870 m!952693))

(declare-fun m!952695 () Bool)

(assert (=> b!696871 m!952695))

(assert (=> b!696562 m!952291))

(check-sat (not b!696839) b_and!63777 (not setNonEmpty!4009) (not b!696737) (not b!696785) (not b!696772) (not b!696861) (not b_next!20059) (not b!696829) (not b!696833) (not b!696621) b_and!63791 (not b!696805) (not b!696625) (not b!696687) (not d!233365) (not b!696830) (not b!696802) (not b!696832) (not b!696654) (not d!233363) (not b!696841) (not d!233369) (not b_next!20055) (not d!233353) (not b_next!20061) (not b!696685) (not b!696770) (not bm!43659) (not d!233325) (not d!233305) (not b!696674) (not b!696644) (not b!696615) (not setNonEmpty!4019) (not d!233297) (not d!233337) (not b!696627) (not b!696814) (not b!696579) (not setNonEmpty!4027) (not b!696872) (not b!696869) (not d!233341) (not b!696736) (not b!696680) b_and!63779 (not d!233359) (not b!696798) (not b!696677) (not setNonEmpty!4011) (not b!696555) (not b!696819) (not b!696683) (not b!696799) (not mapNonEmpty!3337) (not b!696626) (not b!696582) (not b!696748) (not b!696788) (not d!233299) (not b!696804) b_and!63783 (not setNonEmpty!4016) (not b!696800) (not d!233375) (not b!696862) (not d!233329) (not b!696870) (not b!696624) (not d!233335) (not b!696834) (not b!696705) (not d!233331) (not d!233351) (not b!696787) (not b!696648) (not b!696783) (not b!696554) (not b!696771) (not b!696585) (not setNonEmpty!3998) b_and!63781 (not setNonEmpty!4018) (not b!696619) (not d!233323) (not b!696665) (not b!696642) (not d!233319) (not setNonEmpty!4004) (not b!696786) (not b!696816) (not b!696846) (not b!696678) (not b!696684) (not b_next!20045) (not mapNonEmpty!3334) (not b!696599) (not b_next!20057) (not setNonEmpty!4014) (not setNonEmpty!4015) (not b_next!20049) (not b!696801) (not b!696708) (not b!696669) (not b!696838) (not b!696845) (not b!696835) (not b!696735) (not b!696757) (not b_next!20047) (not b!696739) (not b!696734) (not b!696634) (not b!696844) (not b!696738) (not b!696667) (not b!696562) (not d!233291) (not d!233349) (not b!696815) (not b!696718) (not setNonEmpty!4017) (not b!696637) (not b!696651) (not b!696640) (not b!696623) (not d!233301) (not b_next!20063) (not b!696641) (not mapNonEmpty!3331) (not b_next!20051) (not b!696837) (not b!696663) (not b!696865) (not b!696867) (not setNonEmpty!4028) (not b!696664) (not b!696583) (not b!696866) (not d!233361) (not b!696836) (not b!696758) (not setNonEmpty!4020) (not b!696592) (not b!696594) b_and!63785 (not b!696672) (not bm!43660) (not b!696868) (not d!233339) (not b!696817) (not b!696636) (not d!233373) (not setNonEmpty!4026) (not b!696671) (not b!696617) (not d!233307) (not b!696871) (not b!696600) (not setNonEmpty!4021) (not b!696750) (not d!233383) (not b!696842) (not b!696584) (not d!233379) (not d!233309) b_and!63775 b_and!63793 (not b!696843) (not b!696697) (not b!696616) (not b!696818) (not setNonEmpty!4010) (not d!233367) (not setNonEmpty!3997) (not b_next!20053) (not b!696820) tp_is_empty!3655 (not d!233343) (not b!696840) (not b!696673) (not b!696749) (not b!696679) (not b!696676) (not b!696536) (not b!696548) (not b!696581) (not setNonEmpty!4001) (not d!233355) (not b!696797) (not d!233333) (not b!696717) (not b!696803) b_and!63789 (not b!696864) (not b!696639) (not b!696831) (not b!696646) (not b!696863) (not b!696784) (not b!696702) (not b!696666) (not b!696670) b_and!63787 (not b!696698))
(check-sat b_and!63777 b_and!63779 b_and!63783 b_and!63781 (not b_next!20049) (not b_next!20047) (not b_next!20063) (not b_next!20051) b_and!63785 (not b_next!20053) b_and!63789 b_and!63787 (not b_next!20059) b_and!63791 (not b_next!20055) (not b_next!20061) (not b_next!20045) (not b_next!20057) b_and!63775 b_and!63793)
