; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66556 () Bool)

(assert start!66556)

(declare-fun b!697370 () Bool)

(declare-fun b_free!20049 () Bool)

(declare-fun b_next!20113 () Bool)

(assert (=> b!697370 (= b_free!20049 (not b_next!20113))))

(declare-fun tp!212136 () Bool)

(declare-fun b_and!63843 () Bool)

(assert (=> b!697370 (= tp!212136 b_and!63843)))

(declare-fun b!697376 () Bool)

(declare-fun b_free!20051 () Bool)

(declare-fun b_next!20115 () Bool)

(assert (=> b!697376 (= b_free!20051 (not b_next!20115))))

(declare-fun tp!212135 () Bool)

(declare-fun b_and!63845 () Bool)

(assert (=> b!697376 (= tp!212135 b_and!63845)))

(declare-fun b!697386 () Bool)

(declare-fun b_free!20053 () Bool)

(declare-fun b_next!20117 () Bool)

(assert (=> b!697386 (= b_free!20053 (not b_next!20117))))

(declare-fun tp!212158 () Bool)

(declare-fun b_and!63847 () Bool)

(assert (=> b!697386 (= tp!212158 b_and!63847)))

(declare-fun b!697392 () Bool)

(declare-fun b_free!20055 () Bool)

(declare-fun b_next!20119 () Bool)

(assert (=> b!697392 (= b_free!20055 (not b_next!20119))))

(declare-fun tp!212155 () Bool)

(declare-fun b_and!63849 () Bool)

(assert (=> b!697392 (= tp!212155 b_and!63849)))

(declare-fun b!697365 () Bool)

(declare-fun b_free!20057 () Bool)

(declare-fun b_next!20121 () Bool)

(assert (=> b!697365 (= b_free!20057 (not b_next!20121))))

(declare-fun tp!212159 () Bool)

(declare-fun b_and!63851 () Bool)

(assert (=> b!697365 (= tp!212159 b_and!63851)))

(declare-fun b!697367 () Bool)

(declare-fun b_free!20059 () Bool)

(declare-fun b_next!20123 () Bool)

(assert (=> b!697367 (= b_free!20059 (not b_next!20123))))

(declare-fun tp!212144 () Bool)

(declare-fun b_and!63853 () Bool)

(assert (=> b!697367 (= tp!212144 b_and!63853)))

(declare-fun b!697391 () Bool)

(declare-fun b_free!20061 () Bool)

(declare-fun b_next!20125 () Bool)

(assert (=> b!697391 (= b_free!20061 (not b_next!20125))))

(declare-fun tp!212154 () Bool)

(declare-fun b_and!63855 () Bool)

(assert (=> b!697391 (= tp!212154 b_and!63855)))

(declare-fun b_free!20063 () Bool)

(declare-fun b_next!20127 () Bool)

(assert (=> b!697391 (= b_free!20063 (not b_next!20127))))

(declare-fun tp!212150 () Bool)

(declare-fun b_and!63857 () Bool)

(assert (=> b!697391 (= tp!212150 b_and!63857)))

(declare-fun b!697361 () Bool)

(declare-fun e!439730 () Bool)

(declare-fun tp!212142 () Bool)

(declare-fun mapRes!3372 () Bool)

(assert (=> b!697361 (= e!439730 (and tp!212142 mapRes!3372))))

(declare-fun condMapEmpty!3371 () Bool)

(declare-datatypes ((array!3089 0))(
  ( (array!3090 (arr!1394 (Array (_ BitVec 32) (_ BitVec 64))) (size!6259 (_ BitVec 32))) )
))
(declare-datatypes ((C!4336 0))(
  ( (C!4337 (val!2398 Int)) )
))
(declare-datatypes ((Regex!1867 0))(
  ( (ElementMatch!1867 (c!121942 C!4336)) (Concat!3438 (regOne!4246 Regex!1867) (regTwo!4246 Regex!1867)) (EmptyExpr!1867) (Star!1867 (reg!2196 Regex!1867)) (EmptyLang!1867) (Union!1867 (regOne!4247 Regex!1867) (regTwo!4247 Regex!1867)) )
))
(declare-datatypes ((List!7694 0))(
  ( (Nil!7680) (Cons!7680 (h!13081 Regex!1867) (t!87517 List!7694)) )
))
(declare-datatypes ((Context!538 0))(
  ( (Context!539 (exprs!769 List!7694)) )
))
(declare-datatypes ((tuple2!8190 0))(
  ( (tuple2!8191 (_1!4551 Context!538) (_2!4551 C!4336)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!8192 0))(
  ( (tuple2!8193 (_1!4552 tuple2!8190) (_2!4552 (InoxSet Context!538))) )
))
(declare-datatypes ((List!7695 0))(
  ( (Nil!7681) (Cons!7681 (h!13082 tuple2!8192) (t!87518 List!7695)) )
))
(declare-datatypes ((array!3091 0))(
  ( (array!3092 (arr!1395 (Array (_ BitVec 32) List!7695)) (size!6260 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1674 0))(
  ( (LongMapFixedSize!1675 (defaultEntry!1193 Int) (mask!2655 (_ BitVec 32)) (extraKeys!1084 (_ BitVec 32)) (zeroValue!1094 List!7695) (minValue!1094 List!7695) (_size!1783 (_ BitVec 32)) (_keys!1131 array!3089) (_values!1116 array!3091) (_vacant!898 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3289 0))(
  ( (Cell!3290 (v!17810 LongMapFixedSize!1674)) )
))
(declare-datatypes ((MutLongMap!837 0))(
  ( (LongMap!837 (underlying!1857 Cell!3289)) (MutLongMapExt!836 (__x!5649 Int)) )
))
(declare-datatypes ((Hashable!809 0))(
  ( (HashableExt!808 (__x!5650 Int)) )
))
(declare-datatypes ((Cell!3291 0))(
  ( (Cell!3292 (v!17811 MutLongMap!837)) )
))
(declare-datatypes ((MutableMap!809 0))(
  ( (MutableMapExt!808 (__x!5651 Int)) (HashMap!809 (underlying!1858 Cell!3291) (hashF!2717 Hashable!809) (_size!1784 (_ BitVec 32)) (defaultValue!960 Int)) )
))
(declare-datatypes ((CacheUp!424 0))(
  ( (CacheUp!425 (cache!1196 MutableMap!809)) )
))
(declare-fun cacheUp!502 () CacheUp!424)

(declare-fun mapDefault!3372 () List!7695)

(assert (=> b!697361 (= condMapEmpty!3371 (= (arr!1395 (_values!1116 (v!17810 (underlying!1857 (v!17811 (underlying!1858 (cache!1196 cacheUp!502))))))) ((as const (Array (_ BitVec 32) List!7695)) mapDefault!3372)))))

(declare-fun b!697362 () Bool)

(declare-fun e!439744 () Bool)

(declare-fun tp!212156 () Bool)

(declare-fun mapRes!3371 () Bool)

(assert (=> b!697362 (= e!439744 (and tp!212156 mapRes!3371))))

(declare-fun condMapEmpty!3373 () Bool)

(declare-datatypes ((List!7696 0))(
  ( (Nil!7682) (Cons!7682 (h!13083 C!4336) (t!87519 List!7696)) )
))
(declare-datatypes ((IArray!5383 0))(
  ( (IArray!5384 (innerList!2749 List!7696)) )
))
(declare-datatypes ((Hashable!810 0))(
  ( (HashableExt!809 (__x!5652 Int)) )
))
(declare-datatypes ((Conc!2691 0))(
  ( (Node!2691 (left!6067 Conc!2691) (right!6397 Conc!2691) (csize!5612 Int) (cheight!2902 Int)) (Leaf!3978 (xs!5344 IArray!5383) (csize!5613 Int)) (Empty!2691) )
))
(declare-datatypes ((BalanceConc!5394 0))(
  ( (BalanceConc!5395 (c!121943 Conc!2691)) )
))
(declare-datatypes ((tuple2!8194 0))(
  ( (tuple2!8195 (_1!4553 (InoxSet Context!538)) (_2!4553 Int)) )
))
(declare-datatypes ((tuple2!8196 0))(
  ( (tuple2!8197 (_1!4554 tuple2!8194) (_2!4554 Int)) )
))
(declare-datatypes ((List!7697 0))(
  ( (Nil!7683) (Cons!7683 (h!13084 tuple2!8196) (t!87520 List!7697)) )
))
(declare-datatypes ((array!3093 0))(
  ( (array!3094 (arr!1396 (Array (_ BitVec 32) List!7697)) (size!6261 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1676 0))(
  ( (LongMapFixedSize!1677 (defaultEntry!1194 Int) (mask!2656 (_ BitVec 32)) (extraKeys!1085 (_ BitVec 32)) (zeroValue!1095 List!7697) (minValue!1095 List!7697) (_size!1785 (_ BitVec 32)) (_keys!1132 array!3089) (_values!1117 array!3093) (_vacant!899 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3293 0))(
  ( (Cell!3294 (v!17812 LongMapFixedSize!1676)) )
))
(declare-datatypes ((MutLongMap!838 0))(
  ( (LongMap!838 (underlying!1859 Cell!3293)) (MutLongMapExt!837 (__x!5653 Int)) )
))
(declare-datatypes ((Cell!3295 0))(
  ( (Cell!3296 (v!17813 MutLongMap!838)) )
))
(declare-datatypes ((MutableMap!810 0))(
  ( (MutableMapExt!809 (__x!5654 Int)) (HashMap!810 (underlying!1860 Cell!3295) (hashF!2718 Hashable!810) (_size!1786 (_ BitVec 32)) (defaultValue!961 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!88 0))(
  ( (CacheFindLongestMatch!89 (cache!1197 MutableMap!810) (totalInput!1830 BalanceConc!5394)) )
))
(declare-fun cacheFindLongestMatch!74 () CacheFindLongestMatch!88)

(declare-fun mapDefault!3371 () List!7697)

(assert (=> b!697362 (= condMapEmpty!3373 (= (arr!1396 (_values!1117 (v!17812 (underlying!1859 (v!17813 (underlying!1860 (cache!1197 cacheFindLongestMatch!74))))))) ((as const (Array (_ BitVec 32) List!7697)) mapDefault!3371)))))

(declare-fun b!697363 () Bool)

(declare-fun e!439737 () Bool)

(declare-fun e!439738 () Bool)

(assert (=> b!697363 (= e!439737 e!439738)))

(declare-fun res!315455 () Bool)

(assert (=> b!697363 (=> res!315455 e!439738)))

(declare-datatypes ((LexerInterface!1340 0))(
  ( (LexerInterfaceExt!1337 (__x!5655 Int)) (Lexer!1338) )
))
(declare-fun thiss!12529 () LexerInterface!1340)

(declare-datatypes ((List!7698 0))(
  ( (Nil!7684) (Cons!7684 (h!13085 (_ BitVec 16)) (t!87521 List!7698)) )
))
(declare-datatypes ((TokenValue!1571 0))(
  ( (FloatLiteralValue!3142 (text!11442 List!7698)) (TokenValueExt!1570 (__x!5656 Int)) (Broken!7855 (value!49159 List!7698)) (Object!1584) (End!1571) (Def!1571) (Underscore!1571) (Match!1571) (Else!1571) (Error!1571) (Case!1571) (If!1571) (Extends!1571) (Abstract!1571) (Class!1571) (Val!1571) (DelimiterValue!3142 (del!1631 List!7698)) (KeywordValue!1577 (value!49160 List!7698)) (CommentValue!3142 (value!49161 List!7698)) (WhitespaceValue!3142 (value!49162 List!7698)) (IndentationValue!1571 (value!49163 List!7698)) (String!9582) (Int32!1571) (Broken!7856 (value!49164 List!7698)) (Boolean!1572) (Unit!12704) (OperatorValue!1574 (op!1631 List!7698)) (IdentifierValue!3142 (value!49165 List!7698)) (IdentifierValue!3143 (value!49166 List!7698)) (WhitespaceValue!3143 (value!49167 List!7698)) (True!3142) (False!3142) (Broken!7857 (value!49168 List!7698)) (Broken!7858 (value!49169 List!7698)) (True!3143) (RightBrace!1571) (RightBracket!1571) (Colon!1571) (Null!1571) (Comma!1571) (LeftBracket!1571) (False!3143) (LeftBrace!1571) (ImaginaryLiteralValue!1571 (text!11443 List!7698)) (StringLiteralValue!4713 (value!49170 List!7698)) (EOFValue!1571 (value!49171 List!7698)) (IdentValue!1571 (value!49172 List!7698)) (DelimiterValue!3143 (value!49173 List!7698)) (DedentValue!1571 (value!49174 List!7698)) (NewLineValue!1571 (value!49175 List!7698)) (IntegerValue!4713 (value!49176 (_ BitVec 32)) (text!11444 List!7698)) (IntegerValue!4714 (value!49177 Int) (text!11445 List!7698)) (Times!1571) (Or!1571) (Equal!1571) (Minus!1571) (Broken!7859 (value!49178 List!7698)) (And!1571) (Div!1571) (LessEqual!1571) (Mod!1571) (Concat!3439) (Not!1571) (Plus!1571) (SpaceValue!1571 (value!49179 List!7698)) (IntegerValue!4715 (value!49180 Int) (text!11446 List!7698)) (StringLiteralValue!4714 (text!11447 List!7698)) (FloatLiteralValue!3143 (text!11448 List!7698)) (BytesLiteralValue!1571 (value!49181 List!7698)) (CommentValue!3143 (value!49182 List!7698)) (StringLiteralValue!4715 (value!49183 List!7698)) (ErrorTokenValue!1571 (msg!1632 List!7698)) )
))
(declare-datatypes ((String!9583 0))(
  ( (String!9584 (value!49184 String)) )
))
(declare-datatypes ((TokenValueInjection!2878 0))(
  ( (TokenValueInjection!2879 (toValue!2491 Int) (toChars!2350 Int)) )
))
(declare-datatypes ((Rule!2854 0))(
  ( (Rule!2855 (regex!1527 Regex!1867) (tag!1789 String!9583) (isSeparator!1527 Bool) (transformation!1527 TokenValueInjection!2878)) )
))
(declare-datatypes ((List!7699 0))(
  ( (Nil!7685) (Cons!7685 (h!13086 Rule!2854) (t!87522 List!7699)) )
))
(declare-fun rules!1486 () List!7699)

(declare-fun rulesValidInductive!530 (LexerInterface!1340 List!7699) Bool)

(assert (=> b!697363 (= res!315455 (not (rulesValidInductive!530 thiss!12529 rules!1486)))))

(declare-datatypes ((tuple3!760 0))(
  ( (tuple3!761 (_1!4555 Regex!1867) (_2!4555 Context!538) (_3!456 C!4336)) )
))
(declare-datatypes ((tuple2!8198 0))(
  ( (tuple2!8199 (_1!4556 tuple3!760) (_2!4556 (InoxSet Context!538))) )
))
(declare-datatypes ((List!7700 0))(
  ( (Nil!7686) (Cons!7686 (h!13087 tuple2!8198) (t!87523 List!7700)) )
))
(declare-datatypes ((array!3095 0))(
  ( (array!3096 (arr!1397 (Array (_ BitVec 32) List!7700)) (size!6262 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1678 0))(
  ( (LongMapFixedSize!1679 (defaultEntry!1195 Int) (mask!2657 (_ BitVec 32)) (extraKeys!1086 (_ BitVec 32)) (zeroValue!1096 List!7700) (minValue!1096 List!7700) (_size!1787 (_ BitVec 32)) (_keys!1133 array!3089) (_values!1118 array!3095) (_vacant!900 (_ BitVec 32))) )
))
(declare-datatypes ((Token!2752 0))(
  ( (Token!2753 (value!49185 TokenValue!1571) (rule!2565 Rule!2854) (size!6263 Int) (originalCharacters!1801 List!7696)) )
))
(declare-datatypes ((tuple2!8200 0))(
  ( (tuple2!8201 (_1!4557 Token!2752) (_2!4557 BalanceConc!5394)) )
))
(declare-datatypes ((Option!1723 0))(
  ( (None!1722) (Some!1722 (v!17814 tuple2!8200)) )
))
(declare-datatypes ((Cell!3297 0))(
  ( (Cell!3298 (v!17815 LongMapFixedSize!1678)) )
))
(declare-datatypes ((MutLongMap!839 0))(
  ( (LongMap!839 (underlying!1861 Cell!3297)) (MutLongMapExt!838 (__x!5657 Int)) )
))
(declare-datatypes ((Cell!3299 0))(
  ( (Cell!3300 (v!17816 MutLongMap!839)) )
))
(declare-datatypes ((Hashable!811 0))(
  ( (HashableExt!810 (__x!5658 Int)) )
))
(declare-datatypes ((MutableMap!811 0))(
  ( (MutableMapExt!810 (__x!5659 Int)) (HashMap!811 (underlying!1862 Cell!3299) (hashF!2719 Hashable!811) (_size!1788 (_ BitVec 32)) (defaultValue!962 Int)) )
))
(declare-datatypes ((CacheDown!432 0))(
  ( (CacheDown!433 (cache!1198 MutableMap!811)) )
))
(declare-datatypes ((tuple4!152 0))(
  ( (tuple4!153 (_1!4558 Option!1723) (_2!4558 CacheUp!424) (_3!457 CacheDown!432) (_4!76 CacheFindLongestMatch!88)) )
))
(declare-fun lt!286210 () tuple4!152)

(declare-fun lt!286213 () tuple4!152)

(declare-fun totalInput!378 () BalanceConc!5394)

(declare-fun input!870 () BalanceConc!5394)

(declare-fun maxPrefixZipperSequenceV2Mem!13 (LexerInterface!1340 List!7699 BalanceConc!5394 BalanceConc!5394 CacheUp!424 CacheDown!432 CacheFindLongestMatch!88) tuple4!152)

(assert (=> b!697363 (= lt!286210 (maxPrefixZipperSequenceV2Mem!13 thiss!12529 rules!1486 input!870 totalInput!378 (_2!4558 lt!286213) (_3!457 lt!286213) (_4!76 lt!286213)))))

(declare-datatypes ((List!7701 0))(
  ( (Nil!7687) (Cons!7687 (h!13088 Token!2752) (t!87524 List!7701)) )
))
(declare-datatypes ((IArray!5385 0))(
  ( (IArray!5386 (innerList!2750 List!7701)) )
))
(declare-datatypes ((Conc!2692 0))(
  ( (Node!2692 (left!6068 Conc!2692) (right!6398 Conc!2692) (csize!5614 Int) (cheight!2903 Int)) (Leaf!3979 (xs!5345 IArray!5385) (csize!5615 Int)) (Empty!2692) )
))
(declare-datatypes ((BalanceConc!5396 0))(
  ( (BalanceConc!5397 (c!121944 Conc!2692)) )
))
(declare-datatypes ((tuple2!8202 0))(
  ( (tuple2!8203 (_1!4559 BalanceConc!5396) (_2!4559 BalanceConc!5394)) )
))
(declare-fun lt!286214 () tuple2!8202)

(declare-fun lexRec!180 (LexerInterface!1340 List!7699 BalanceConc!5394) tuple2!8202)

(assert (=> b!697363 (= lt!286214 (lexRec!180 thiss!12529 rules!1486 (_2!4557 (v!17814 (_1!4558 lt!286213)))))))

(declare-fun b!697364 () Bool)

(declare-fun e!439757 () Bool)

(declare-fun e!439752 () Bool)

(assert (=> b!697364 (= e!439757 (not e!439752))))

(declare-fun res!315452 () Bool)

(assert (=> b!697364 (=> res!315452 e!439752)))

(declare-fun lt!286205 () List!7696)

(declare-fun lt!286216 () List!7696)

(declare-fun isSuffix!144 (List!7696 List!7696) Bool)

(assert (=> b!697364 (= res!315452 (not (isSuffix!144 lt!286205 lt!286216)))))

(declare-fun lt!286209 () List!7696)

(assert (=> b!697364 (isSuffix!144 lt!286205 lt!286209)))

(declare-datatypes ((Unit!12705 0))(
  ( (Unit!12706) )
))
(declare-fun lt!286218 () Unit!12705)

(declare-fun lt!286211 () List!7696)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!144 (List!7696 List!7696) Unit!12705)

(assert (=> b!697364 (= lt!286218 (lemmaConcatTwoListThenFSndIsSuffix!144 lt!286211 lt!286205))))

(declare-fun res!315463 () Bool)

(declare-fun e!439720 () Bool)

(assert (=> start!66556 (=> (not res!315463) (not e!439720))))

(get-info :version)

(assert (=> start!66556 (= res!315463 ((_ is Lexer!1338) thiss!12529))))

(assert (=> start!66556 e!439720))

(declare-fun acc!372 () BalanceConc!5396)

(declare-fun e!439740 () Bool)

(declare-fun inv!9809 (BalanceConc!5396) Bool)

(assert (=> start!66556 (and (inv!9809 acc!372) e!439740)))

(declare-fun treated!50 () BalanceConc!5394)

(declare-fun e!439735 () Bool)

(declare-fun inv!9810 (BalanceConc!5394) Bool)

(assert (=> start!66556 (and (inv!9810 treated!50) e!439735)))

(declare-fun e!439718 () Bool)

(assert (=> start!66556 (and (inv!9810 totalInput!378) e!439718)))

(declare-fun e!439739 () Bool)

(assert (=> start!66556 (and (inv!9810 input!870) e!439739)))

(declare-fun e!439727 () Bool)

(assert (=> start!66556 e!439727))

(assert (=> start!66556 true))

(declare-fun e!439724 () Bool)

(declare-fun inv!9811 (CacheUp!424) Bool)

(assert (=> start!66556 (and (inv!9811 cacheUp!502) e!439724)))

(declare-fun cacheDown!515 () CacheDown!432)

(declare-fun e!439723 () Bool)

(declare-fun inv!9812 (CacheDown!432) Bool)

(assert (=> start!66556 (and (inv!9812 cacheDown!515) e!439723)))

(declare-fun e!439751 () Bool)

(declare-fun inv!9813 (CacheFindLongestMatch!88) Bool)

(assert (=> start!66556 (and (inv!9813 cacheFindLongestMatch!74) e!439751)))

(declare-fun e!439731 () Bool)

(declare-fun e!439733 () Bool)

(assert (=> b!697365 (= e!439731 (and e!439733 tp!212159))))

(declare-fun b!697366 () Bool)

(declare-fun tp!212164 () Bool)

(declare-fun inv!9814 (Conc!2692) Bool)

(assert (=> b!697366 (= e!439740 (and (inv!9814 (c!121944 acc!372)) tp!212164))))

(declare-fun e!439728 () Bool)

(declare-fun e!439755 () Bool)

(assert (=> b!697367 (= e!439728 (and e!439755 tp!212144))))

(declare-fun b!697368 () Bool)

(declare-fun res!315453 () Bool)

(assert (=> b!697368 (=> (not res!315453) (not e!439757))))

(declare-fun valid!709 (CacheFindLongestMatch!88) Bool)

(assert (=> b!697368 (= res!315453 (valid!709 cacheFindLongestMatch!74))))

(declare-fun b!697369 () Bool)

(declare-fun e!439729 () Bool)

(declare-fun lt!286206 () MutLongMap!837)

(assert (=> b!697369 (= e!439755 (and e!439729 ((_ is LongMap!837) lt!286206)))))

(assert (=> b!697369 (= lt!286206 (v!17811 (underlying!1858 (cache!1196 cacheUp!502))))))

(declare-fun tp!212146 () Bool)

(declare-fun e!439726 () Bool)

(declare-fun tp!212160 () Bool)

(declare-fun e!439758 () Bool)

(declare-fun array_inv!1025 (array!3089) Bool)

(declare-fun array_inv!1026 (array!3095) Bool)

(assert (=> b!697370 (= e!439726 (and tp!212136 tp!212146 tp!212160 (array_inv!1025 (_keys!1133 (v!17815 (underlying!1861 (v!17816 (underlying!1862 (cache!1198 cacheDown!515))))))) (array_inv!1026 (_values!1118 (v!17815 (underlying!1861 (v!17816 (underlying!1862 (cache!1198 cacheDown!515))))))) e!439758))))

(declare-fun b!697371 () Bool)

(declare-fun e!439745 () Bool)

(declare-fun e!439719 () Bool)

(assert (=> b!697371 (= e!439745 e!439719)))

(declare-fun b!697372 () Bool)

(declare-fun res!315466 () Bool)

(assert (=> b!697372 (=> (not res!315466) (not e!439757))))

(assert (=> b!697372 (= res!315466 (= (totalInput!1830 cacheFindLongestMatch!74) totalInput!378))))

(declare-fun b!697373 () Bool)

(declare-fun e!439754 () Bool)

(assert (=> b!697373 (= e!439754 e!439757)))

(declare-fun res!315456 () Bool)

(assert (=> b!697373 (=> (not res!315456) (not e!439757))))

(declare-fun lt!286217 () tuple2!8202)

(declare-fun lt!286212 () tuple2!8202)

(declare-fun list!3196 (BalanceConc!5396) List!7701)

(declare-fun ++!1996 (BalanceConc!5396 BalanceConc!5396) BalanceConc!5396)

(assert (=> b!697373 (= res!315456 (= (list!3196 (_1!4559 lt!286212)) (list!3196 (++!1996 acc!372 (_1!4559 lt!286217)))))))

(assert (=> b!697373 (= lt!286217 (lexRec!180 thiss!12529 rules!1486 input!870))))

(assert (=> b!697373 (= lt!286212 (lexRec!180 thiss!12529 rules!1486 totalInput!378))))

(declare-fun e!439753 () Bool)

(declare-fun b!697374 () Bool)

(declare-fun e!439756 () Bool)

(declare-fun tp!212153 () Bool)

(declare-fun inv!9807 (String!9583) Bool)

(declare-fun inv!9815 (TokenValueInjection!2878) Bool)

(assert (=> b!697374 (= e!439756 (and tp!212153 (inv!9807 (tag!1789 (h!13086 rules!1486))) (inv!9815 (transformation!1527 (h!13086 rules!1486))) e!439753))))

(declare-fun b!697375 () Bool)

(assert (=> b!697375 (= e!439719 e!439726)))

(declare-fun mapIsEmpty!3371 () Bool)

(declare-fun mapRes!3373 () Bool)

(assert (=> mapIsEmpty!3371 mapRes!3373))

(declare-fun mapNonEmpty!3371 () Bool)

(declare-fun tp!212149 () Bool)

(declare-fun tp!212162 () Bool)

(assert (=> mapNonEmpty!3371 (= mapRes!3372 (and tp!212149 tp!212162))))

(declare-fun mapKey!3372 () (_ BitVec 32))

(declare-fun mapValue!3372 () List!7695)

(declare-fun mapRest!3373 () (Array (_ BitVec 32) List!7695))

(assert (=> mapNonEmpty!3371 (= (arr!1395 (_values!1116 (v!17810 (underlying!1857 (v!17811 (underlying!1858 (cache!1196 cacheUp!502))))))) (store mapRest!3373 mapKey!3372 mapValue!3372))))

(declare-fun e!439749 () Bool)

(declare-fun e!439747 () Bool)

(assert (=> b!697376 (= e!439749 (and e!439747 tp!212135))))

(declare-fun b!697377 () Bool)

(declare-fun res!315465 () Bool)

(assert (=> b!697377 (=> (not res!315465) (not e!439757))))

(declare-fun valid!710 (CacheUp!424) Bool)

(assert (=> b!697377 (= res!315465 (valid!710 cacheUp!502))))

(declare-fun mapNonEmpty!3372 () Bool)

(declare-fun tp!212152 () Bool)

(declare-fun tp!212137 () Bool)

(assert (=> mapNonEmpty!3372 (= mapRes!3371 (and tp!212152 tp!212137))))

(declare-fun mapRest!3372 () (Array (_ BitVec 32) List!7697))

(declare-fun mapValue!3371 () List!7697)

(declare-fun mapKey!3371 () (_ BitVec 32))

(assert (=> mapNonEmpty!3372 (= (arr!1396 (_values!1117 (v!17812 (underlying!1859 (v!17813 (underlying!1860 (cache!1197 cacheFindLongestMatch!74))))))) (store mapRest!3372 mapKey!3371 mapValue!3371))))

(declare-fun b!697378 () Bool)

(declare-fun e!439746 () Bool)

(assert (=> b!697378 (= e!439751 (and e!439731 (inv!9810 (totalInput!1830 cacheFindLongestMatch!74)) e!439746))))

(declare-fun b!697379 () Bool)

(declare-fun e!439722 () Bool)

(assert (=> b!697379 (= e!439738 e!439722)))

(declare-fun res!315464 () Bool)

(assert (=> b!697379 (=> (not res!315464) (not e!439722))))

(assert (=> b!697379 (= res!315464 (valid!710 (_2!4558 lt!286213)))))

(declare-fun b!697380 () Bool)

(declare-fun e!439725 () Bool)

(declare-fun e!439721 () Bool)

(assert (=> b!697380 (= e!439725 e!439721)))

(declare-fun b!697381 () Bool)

(declare-fun res!315459 () Bool)

(assert (=> b!697381 (=> (not res!315459) (not e!439720))))

(declare-fun isEmpty!4916 (List!7699) Bool)

(assert (=> b!697381 (= res!315459 (not (isEmpty!4916 rules!1486)))))

(declare-fun b!697382 () Bool)

(assert (=> b!697382 (= e!439724 e!439728)))

(declare-fun b!697383 () Bool)

(assert (=> b!697383 (= e!439752 e!439737)))

(declare-fun res!315457 () Bool)

(assert (=> b!697383 (=> res!315457 e!439737)))

(assert (=> b!697383 (= res!315457 (not ((_ is Some!1722) (_1!4558 lt!286213))))))

(assert (=> b!697383 (= lt!286213 (maxPrefixZipperSequenceV2Mem!13 thiss!12529 rules!1486 input!870 totalInput!378 cacheUp!502 cacheDown!515 cacheFindLongestMatch!74))))

(declare-fun b!697384 () Bool)

(declare-fun res!315454 () Bool)

(assert (=> b!697384 (=> (not res!315454) (not e!439757))))

(declare-fun valid!711 (CacheDown!432) Bool)

(assert (=> b!697384 (= res!315454 (valid!711 cacheDown!515))))

(declare-fun b!697385 () Bool)

(declare-fun tp!212138 () Bool)

(assert (=> b!697385 (= e!439727 (and e!439756 tp!212138))))

(declare-fun tp!212147 () Bool)

(declare-fun tp!212139 () Bool)

(declare-fun array_inv!1027 (array!3091) Bool)

(assert (=> b!697386 (= e!439721 (and tp!212158 tp!212147 tp!212139 (array_inv!1025 (_keys!1131 (v!17810 (underlying!1857 (v!17811 (underlying!1858 (cache!1196 cacheUp!502))))))) (array_inv!1027 (_values!1116 (v!17810 (underlying!1857 (v!17811 (underlying!1858 (cache!1196 cacheUp!502))))))) e!439730))))

(declare-fun b!697387 () Bool)

(declare-fun res!315462 () Bool)

(assert (=> b!697387 (=> (not res!315462) (not e!439754))))

(declare-fun lt!286208 () tuple2!8202)

(declare-fun isEmpty!4917 (List!7696) Bool)

(declare-fun list!3197 (BalanceConc!5394) List!7696)

(assert (=> b!697387 (= res!315462 (isEmpty!4917 (list!3197 (_2!4559 lt!286208))))))

(declare-fun b!697388 () Bool)

(declare-fun res!315461 () Bool)

(assert (=> b!697388 (=> (not res!315461) (not e!439720))))

(declare-fun rulesInvariant!1267 (LexerInterface!1340 List!7699) Bool)

(assert (=> b!697388 (= res!315461 (rulesInvariant!1267 thiss!12529 rules!1486))))

(declare-fun mapIsEmpty!3372 () Bool)

(assert (=> mapIsEmpty!3372 mapRes!3371))

(declare-fun b!697389 () Bool)

(declare-fun tp!212140 () Bool)

(declare-fun inv!9816 (Conc!2691) Bool)

(assert (=> b!697389 (= e!439739 (and (inv!9816 (c!121943 input!870)) tp!212140))))

(declare-fun mapIsEmpty!3373 () Bool)

(assert (=> mapIsEmpty!3373 mapRes!3372))

(declare-fun b!697390 () Bool)

(declare-fun e!439736 () Bool)

(declare-fun lt!286207 () MutLongMap!838)

(assert (=> b!697390 (= e!439733 (and e!439736 ((_ is LongMap!838) lt!286207)))))

(assert (=> b!697390 (= lt!286207 (v!17813 (underlying!1860 (cache!1197 cacheFindLongestMatch!74))))))

(assert (=> b!697391 (= e!439753 (and tp!212154 tp!212150))))

(declare-fun e!439732 () Bool)

(declare-fun tp!212157 () Bool)

(declare-fun tp!212151 () Bool)

(declare-fun array_inv!1028 (array!3093) Bool)

(assert (=> b!697392 (= e!439732 (and tp!212155 tp!212157 tp!212151 (array_inv!1025 (_keys!1132 (v!17812 (underlying!1859 (v!17813 (underlying!1860 (cache!1197 cacheFindLongestMatch!74))))))) (array_inv!1028 (_values!1117 (v!17812 (underlying!1859 (v!17813 (underlying!1860 (cache!1197 cacheFindLongestMatch!74))))))) e!439744))))

(declare-fun b!697393 () Bool)

(assert (=> b!697393 (= e!439723 e!439749)))

(declare-fun b!697394 () Bool)

(declare-fun res!315467 () Bool)

(assert (=> b!697394 (=> (not res!315467) (not e!439722))))

(assert (=> b!697394 (= res!315467 (valid!711 (_3!457 lt!286213)))))

(declare-fun b!697395 () Bool)

(declare-fun tp!212161 () Bool)

(assert (=> b!697395 (= e!439746 (and (inv!9816 (c!121943 (totalInput!1830 cacheFindLongestMatch!74))) tp!212161))))

(declare-fun b!697396 () Bool)

(declare-fun res!315458 () Bool)

(assert (=> b!697396 (=> (not res!315458) (not e!439757))))

(assert (=> b!697396 (= res!315458 (= (list!3197 (_2!4559 lt!286212)) (list!3197 (_2!4559 lt!286217))))))

(declare-fun b!697397 () Bool)

(assert (=> b!697397 (= e!439729 e!439725)))

(declare-fun b!697398 () Bool)

(declare-fun e!439742 () Bool)

(assert (=> b!697398 (= e!439720 e!439742)))

(declare-fun res!315460 () Bool)

(assert (=> b!697398 (=> (not res!315460) (not e!439742))))

(assert (=> b!697398 (= res!315460 (= lt!286216 lt!286209))))

(declare-fun ++!1997 (List!7696 List!7696) List!7696)

(assert (=> b!697398 (= lt!286209 (++!1997 lt!286211 lt!286205))))

(assert (=> b!697398 (= lt!286216 (list!3197 totalInput!378))))

(assert (=> b!697398 (= lt!286205 (list!3197 input!870))))

(assert (=> b!697398 (= lt!286211 (list!3197 treated!50))))

(declare-fun b!697399 () Bool)

(declare-fun tp!212148 () Bool)

(assert (=> b!697399 (= e!439735 (and (inv!9816 (c!121943 treated!50)) tp!212148))))

(declare-fun b!697400 () Bool)

(declare-fun tp!212143 () Bool)

(assert (=> b!697400 (= e!439718 (and (inv!9816 (c!121943 totalInput!378)) tp!212143))))

(declare-fun b!697401 () Bool)

(declare-fun e!439748 () Bool)

(assert (=> b!697401 (= e!439748 e!439732)))

(declare-fun b!697402 () Bool)

(assert (=> b!697402 (= e!439736 e!439748)))

(declare-fun b!697403 () Bool)

(assert (=> b!697403 (= e!439742 e!439754)))

(declare-fun res!315451 () Bool)

(assert (=> b!697403 (=> (not res!315451) (not e!439754))))

(assert (=> b!697403 (= res!315451 (= (list!3196 (_1!4559 lt!286208)) (list!3196 acc!372)))))

(assert (=> b!697403 (= lt!286208 (lexRec!180 thiss!12529 rules!1486 treated!50))))

(declare-fun b!697404 () Bool)

(assert (=> b!697404 (= e!439722 (valid!709 (_4!76 lt!286213)))))

(declare-fun b!697405 () Bool)

(declare-fun lt!286215 () MutLongMap!839)

(assert (=> b!697405 (= e!439747 (and e!439745 ((_ is LongMap!839) lt!286215)))))

(assert (=> b!697405 (= lt!286215 (v!17816 (underlying!1862 (cache!1198 cacheDown!515))))))

(declare-fun b!697406 () Bool)

(declare-fun tp!212163 () Bool)

(assert (=> b!697406 (= e!439758 (and tp!212163 mapRes!3373))))

(declare-fun condMapEmpty!3372 () Bool)

(declare-fun mapDefault!3373 () List!7700)

(assert (=> b!697406 (= condMapEmpty!3372 (= (arr!1397 (_values!1118 (v!17815 (underlying!1861 (v!17816 (underlying!1862 (cache!1198 cacheDown!515))))))) ((as const (Array (_ BitVec 32) List!7700)) mapDefault!3373)))))

(declare-fun mapNonEmpty!3373 () Bool)

(declare-fun tp!212145 () Bool)

(declare-fun tp!212141 () Bool)

(assert (=> mapNonEmpty!3373 (= mapRes!3373 (and tp!212145 tp!212141))))

(declare-fun mapRest!3371 () (Array (_ BitVec 32) List!7700))

(declare-fun mapKey!3373 () (_ BitVec 32))

(declare-fun mapValue!3373 () List!7700)

(assert (=> mapNonEmpty!3373 (= (arr!1397 (_values!1118 (v!17815 (underlying!1861 (v!17816 (underlying!1862 (cache!1198 cacheDown!515))))))) (store mapRest!3371 mapKey!3373 mapValue!3373))))

(assert (= (and start!66556 res!315463) b!697381))

(assert (= (and b!697381 res!315459) b!697388))

(assert (= (and b!697388 res!315461) b!697398))

(assert (= (and b!697398 res!315460) b!697403))

(assert (= (and b!697403 res!315451) b!697387))

(assert (= (and b!697387 res!315462) b!697373))

(assert (= (and b!697373 res!315456) b!697396))

(assert (= (and b!697396 res!315458) b!697377))

(assert (= (and b!697377 res!315465) b!697384))

(assert (= (and b!697384 res!315454) b!697368))

(assert (= (and b!697368 res!315453) b!697372))

(assert (= (and b!697372 res!315466) b!697364))

(assert (= (and b!697364 (not res!315452)) b!697383))

(assert (= (and b!697383 (not res!315457)) b!697363))

(assert (= (and b!697363 (not res!315455)) b!697379))

(assert (= (and b!697379 res!315464) b!697394))

(assert (= (and b!697394 res!315467) b!697404))

(assert (= start!66556 b!697366))

(assert (= start!66556 b!697399))

(assert (= start!66556 b!697400))

(assert (= start!66556 b!697389))

(assert (= b!697374 b!697391))

(assert (= b!697385 b!697374))

(assert (= (and start!66556 ((_ is Cons!7685) rules!1486)) b!697385))

(assert (= (and b!697361 condMapEmpty!3371) mapIsEmpty!3373))

(assert (= (and b!697361 (not condMapEmpty!3371)) mapNonEmpty!3371))

(assert (= b!697386 b!697361))

(assert (= b!697380 b!697386))

(assert (= b!697397 b!697380))

(assert (= (and b!697369 ((_ is LongMap!837) (v!17811 (underlying!1858 (cache!1196 cacheUp!502))))) b!697397))

(assert (= b!697367 b!697369))

(assert (= (and b!697382 ((_ is HashMap!809) (cache!1196 cacheUp!502))) b!697367))

(assert (= start!66556 b!697382))

(assert (= (and b!697406 condMapEmpty!3372) mapIsEmpty!3371))

(assert (= (and b!697406 (not condMapEmpty!3372)) mapNonEmpty!3373))

(assert (= b!697370 b!697406))

(assert (= b!697375 b!697370))

(assert (= b!697371 b!697375))

(assert (= (and b!697405 ((_ is LongMap!839) (v!17816 (underlying!1862 (cache!1198 cacheDown!515))))) b!697371))

(assert (= b!697376 b!697405))

(assert (= (and b!697393 ((_ is HashMap!811) (cache!1198 cacheDown!515))) b!697376))

(assert (= start!66556 b!697393))

(assert (= (and b!697362 condMapEmpty!3373) mapIsEmpty!3372))

(assert (= (and b!697362 (not condMapEmpty!3373)) mapNonEmpty!3372))

(assert (= b!697392 b!697362))

(assert (= b!697401 b!697392))

(assert (= b!697402 b!697401))

(assert (= (and b!697390 ((_ is LongMap!838) (v!17813 (underlying!1860 (cache!1197 cacheFindLongestMatch!74))))) b!697402))

(assert (= b!697365 b!697390))

(assert (= (and b!697378 ((_ is HashMap!810) (cache!1197 cacheFindLongestMatch!74))) b!697365))

(assert (= b!697378 b!697395))

(assert (= start!66556 b!697378))

(declare-fun m!953015 () Bool)

(assert (=> start!66556 m!953015))

(declare-fun m!953017 () Bool)

(assert (=> start!66556 m!953017))

(declare-fun m!953019 () Bool)

(assert (=> start!66556 m!953019))

(declare-fun m!953021 () Bool)

(assert (=> start!66556 m!953021))

(declare-fun m!953023 () Bool)

(assert (=> start!66556 m!953023))

(declare-fun m!953025 () Bool)

(assert (=> start!66556 m!953025))

(declare-fun m!953027 () Bool)

(assert (=> start!66556 m!953027))

(declare-fun m!953029 () Bool)

(assert (=> b!697398 m!953029))

(declare-fun m!953031 () Bool)

(assert (=> b!697398 m!953031))

(declare-fun m!953033 () Bool)

(assert (=> b!697398 m!953033))

(declare-fun m!953035 () Bool)

(assert (=> b!697398 m!953035))

(declare-fun m!953037 () Bool)

(assert (=> b!697383 m!953037))

(declare-fun m!953039 () Bool)

(assert (=> b!697394 m!953039))

(declare-fun m!953041 () Bool)

(assert (=> b!697364 m!953041))

(declare-fun m!953043 () Bool)

(assert (=> b!697364 m!953043))

(declare-fun m!953045 () Bool)

(assert (=> b!697364 m!953045))

(declare-fun m!953047 () Bool)

(assert (=> b!697403 m!953047))

(declare-fun m!953049 () Bool)

(assert (=> b!697403 m!953049))

(declare-fun m!953051 () Bool)

(assert (=> b!697403 m!953051))

(declare-fun m!953053 () Bool)

(assert (=> b!697374 m!953053))

(declare-fun m!953055 () Bool)

(assert (=> b!697374 m!953055))

(declare-fun m!953057 () Bool)

(assert (=> mapNonEmpty!3371 m!953057))

(declare-fun m!953059 () Bool)

(assert (=> b!697396 m!953059))

(declare-fun m!953061 () Bool)

(assert (=> b!697396 m!953061))

(declare-fun m!953063 () Bool)

(assert (=> b!697386 m!953063))

(declare-fun m!953065 () Bool)

(assert (=> b!697386 m!953065))

(declare-fun m!953067 () Bool)

(assert (=> b!697368 m!953067))

(declare-fun m!953069 () Bool)

(assert (=> b!697404 m!953069))

(declare-fun m!953071 () Bool)

(assert (=> b!697373 m!953071))

(declare-fun m!953073 () Bool)

(assert (=> b!697373 m!953073))

(declare-fun m!953075 () Bool)

(assert (=> b!697373 m!953075))

(declare-fun m!953077 () Bool)

(assert (=> b!697373 m!953077))

(assert (=> b!697373 m!953073))

(declare-fun m!953079 () Bool)

(assert (=> b!697373 m!953079))

(declare-fun m!953081 () Bool)

(assert (=> b!697379 m!953081))

(declare-fun m!953083 () Bool)

(assert (=> b!697387 m!953083))

(assert (=> b!697387 m!953083))

(declare-fun m!953085 () Bool)

(assert (=> b!697387 m!953085))

(declare-fun m!953087 () Bool)

(assert (=> b!697399 m!953087))

(declare-fun m!953089 () Bool)

(assert (=> b!697370 m!953089))

(declare-fun m!953091 () Bool)

(assert (=> b!697370 m!953091))

(declare-fun m!953093 () Bool)

(assert (=> b!697384 m!953093))

(declare-fun m!953095 () Bool)

(assert (=> b!697378 m!953095))

(declare-fun m!953097 () Bool)

(assert (=> mapNonEmpty!3373 m!953097))

(declare-fun m!953099 () Bool)

(assert (=> mapNonEmpty!3372 m!953099))

(declare-fun m!953101 () Bool)

(assert (=> b!697388 m!953101))

(declare-fun m!953103 () Bool)

(assert (=> b!697389 m!953103))

(declare-fun m!953105 () Bool)

(assert (=> b!697400 m!953105))

(declare-fun m!953107 () Bool)

(assert (=> b!697392 m!953107))

(declare-fun m!953109 () Bool)

(assert (=> b!697392 m!953109))

(declare-fun m!953111 () Bool)

(assert (=> b!697366 m!953111))

(declare-fun m!953113 () Bool)

(assert (=> b!697381 m!953113))

(declare-fun m!953115 () Bool)

(assert (=> b!697395 m!953115))

(declare-fun m!953117 () Bool)

(assert (=> b!697377 m!953117))

(declare-fun m!953119 () Bool)

(assert (=> b!697363 m!953119))

(declare-fun m!953121 () Bool)

(assert (=> b!697363 m!953121))

(declare-fun m!953123 () Bool)

(assert (=> b!697363 m!953123))

(check-sat (not b_next!20121) b_and!63849 (not b!697403) (not mapNonEmpty!3372) (not b!697366) (not b!697383) b_and!63853 (not b!697389) (not b_next!20125) (not b!697377) (not start!66556) (not b!697363) (not b!697384) (not b!697406) (not b!697379) (not mapNonEmpty!3373) (not b!697386) (not b!697373) b_and!63843 (not b!697398) (not b_next!20117) (not b!697396) b_and!63857 (not b!697381) (not b!697392) b_and!63847 (not b!697370) (not b_next!20127) (not b!697387) (not b!697394) (not b!697368) (not b!697399) b_and!63855 (not b!697364) (not b!697361) (not b!697374) (not b_next!20119) (not b!697385) b_and!63851 b_and!63845 (not b!697395) (not b!697404) (not b!697388) (not b!697400) (not mapNonEmpty!3371) (not b_next!20123) (not b!697362) (not b!697378) (not b_next!20113) (not b_next!20115))
(check-sat (not b_next!20121) b_and!63843 b_and!63849 (not b_next!20117) b_and!63857 b_and!63847 (not b_next!20127) b_and!63855 b_and!63845 b_and!63853 (not b_next!20123) (not b_next!20125) (not b_next!20119) b_and!63851 (not b_next!20113) (not b_next!20115))
(get-model)

(declare-fun d!233387 () Bool)

(assert (=> d!233387 (= (isEmpty!4917 (list!3197 (_2!4559 lt!286208))) ((_ is Nil!7682) (list!3197 (_2!4559 lt!286208))))))

(assert (=> b!697387 d!233387))

(declare-fun d!233389 () Bool)

(declare-fun list!3198 (Conc!2691) List!7696)

(assert (=> d!233389 (= (list!3197 (_2!4559 lt!286208)) (list!3198 (c!121943 (_2!4559 lt!286208))))))

(declare-fun bs!137997 () Bool)

(assert (= bs!137997 d!233389))

(declare-fun m!953125 () Bool)

(assert (=> bs!137997 m!953125))

(assert (=> b!697387 d!233389))

(declare-fun d!233391 () Bool)

(declare-fun validCacheMapFindLongestMatch!12 (MutableMap!810 BalanceConc!5394) Bool)

(assert (=> d!233391 (= (valid!709 cacheFindLongestMatch!74) (validCacheMapFindLongestMatch!12 (cache!1197 cacheFindLongestMatch!74) (totalInput!1830 cacheFindLongestMatch!74)))))

(declare-fun bs!137998 () Bool)

(assert (= bs!137998 d!233391))

(declare-fun m!953127 () Bool)

(assert (=> bs!137998 m!953127))

(assert (=> b!697368 d!233391))

(declare-fun d!233393 () Bool)

(assert (=> d!233393 (= (array_inv!1025 (_keys!1131 (v!17810 (underlying!1857 (v!17811 (underlying!1858 (cache!1196 cacheUp!502))))))) (bvsge (size!6259 (_keys!1131 (v!17810 (underlying!1857 (v!17811 (underlying!1858 (cache!1196 cacheUp!502))))))) #b00000000000000000000000000000000))))

(assert (=> b!697386 d!233393))

(declare-fun d!233395 () Bool)

(assert (=> d!233395 (= (array_inv!1027 (_values!1116 (v!17810 (underlying!1857 (v!17811 (underlying!1858 (cache!1196 cacheUp!502))))))) (bvsge (size!6260 (_values!1116 (v!17810 (underlying!1857 (v!17811 (underlying!1858 (cache!1196 cacheUp!502))))))) #b00000000000000000000000000000000))))

(assert (=> b!697386 d!233395))

(declare-fun d!233397 () Bool)

(assert (=> d!233397 (= (valid!709 (_4!76 lt!286213)) (validCacheMapFindLongestMatch!12 (cache!1197 (_4!76 lt!286213)) (totalInput!1830 (_4!76 lt!286213))))))

(declare-fun bs!137999 () Bool)

(assert (= bs!137999 d!233397))

(declare-fun m!953129 () Bool)

(assert (=> bs!137999 m!953129))

(assert (=> b!697404 d!233397))

(declare-fun d!233399 () Bool)

(assert (=> d!233399 (= (array_inv!1025 (_keys!1133 (v!17815 (underlying!1861 (v!17816 (underlying!1862 (cache!1198 cacheDown!515))))))) (bvsge (size!6259 (_keys!1133 (v!17815 (underlying!1861 (v!17816 (underlying!1862 (cache!1198 cacheDown!515))))))) #b00000000000000000000000000000000))))

(assert (=> b!697370 d!233399))

(declare-fun d!233401 () Bool)

(assert (=> d!233401 (= (array_inv!1026 (_values!1118 (v!17815 (underlying!1861 (v!17816 (underlying!1862 (cache!1198 cacheDown!515))))))) (bvsge (size!6262 (_values!1118 (v!17815 (underlying!1861 (v!17816 (underlying!1862 (cache!1198 cacheDown!515))))))) #b00000000000000000000000000000000))))

(assert (=> b!697370 d!233401))

(declare-fun d!233403 () Bool)

(declare-fun res!315472 () Bool)

(declare-fun e!439761 () Bool)

(assert (=> d!233403 (=> (not res!315472) (not e!439761))))

(declare-fun rulesValid!533 (LexerInterface!1340 List!7699) Bool)

(assert (=> d!233403 (= res!315472 (rulesValid!533 thiss!12529 rules!1486))))

(assert (=> d!233403 (= (rulesInvariant!1267 thiss!12529 rules!1486) e!439761)))

(declare-fun b!697409 () Bool)

(declare-datatypes ((List!7702 0))(
  ( (Nil!7688) (Cons!7688 (h!13089 String!9583) (t!87525 List!7702)) )
))
(declare-fun noDuplicateTag!533 (LexerInterface!1340 List!7699 List!7702) Bool)

(assert (=> b!697409 (= e!439761 (noDuplicateTag!533 thiss!12529 rules!1486 Nil!7688))))

(assert (= (and d!233403 res!315472) b!697409))

(declare-fun m!953131 () Bool)

(assert (=> d!233403 m!953131))

(declare-fun m!953133 () Bool)

(assert (=> b!697409 m!953133))

(assert (=> b!697388 d!233403))

(declare-fun d!233405 () Bool)

(assert (=> d!233405 (= (inv!9807 (tag!1789 (h!13086 rules!1486))) (= (mod (str.len (value!49184 (tag!1789 (h!13086 rules!1486)))) 2) 0))))

(assert (=> b!697374 d!233405))

(declare-fun d!233407 () Bool)

(declare-fun res!315475 () Bool)

(declare-fun e!439764 () Bool)

(assert (=> d!233407 (=> (not res!315475) (not e!439764))))

(declare-fun semiInverseModEq!576 (Int Int) Bool)

(assert (=> d!233407 (= res!315475 (semiInverseModEq!576 (toChars!2350 (transformation!1527 (h!13086 rules!1486))) (toValue!2491 (transformation!1527 (h!13086 rules!1486)))))))

(assert (=> d!233407 (= (inv!9815 (transformation!1527 (h!13086 rules!1486))) e!439764)))

(declare-fun b!697412 () Bool)

(declare-fun equivClasses!551 (Int Int) Bool)

(assert (=> b!697412 (= e!439764 (equivClasses!551 (toChars!2350 (transformation!1527 (h!13086 rules!1486))) (toValue!2491 (transformation!1527 (h!13086 rules!1486)))))))

(assert (= (and d!233407 res!315475) b!697412))

(declare-fun m!953135 () Bool)

(assert (=> d!233407 m!953135))

(declare-fun m!953137 () Bool)

(assert (=> b!697412 m!953137))

(assert (=> b!697374 d!233407))

(declare-fun d!233409 () Bool)

(declare-fun list!3199 (Conc!2692) List!7701)

(assert (=> d!233409 (= (list!3196 (_1!4559 lt!286212)) (list!3199 (c!121944 (_1!4559 lt!286212))))))

(declare-fun bs!138000 () Bool)

(assert (= bs!138000 d!233409))

(declare-fun m!953139 () Bool)

(assert (=> bs!138000 m!953139))

(assert (=> b!697373 d!233409))

(declare-fun b!697427 () Bool)

(declare-fun e!439774 () tuple2!8202)

(assert (=> b!697427 (= e!439774 (tuple2!8203 (BalanceConc!5397 Empty!2692) input!870))))

(declare-fun b!697429 () Bool)

(declare-fun lt!286226 () tuple2!8202)

(declare-fun lt!286227 () Option!1723)

(declare-fun prepend!264 (BalanceConc!5396 Token!2752) BalanceConc!5396)

(assert (=> b!697429 (= e!439774 (tuple2!8203 (prepend!264 (_1!4559 lt!286226) (_1!4557 (v!17814 lt!286227))) (_2!4559 lt!286226)))))

(assert (=> b!697429 (= lt!286226 (lexRec!180 thiss!12529 rules!1486 (_2!4557 (v!17814 lt!286227))))))

(declare-fun b!697428 () Bool)

(declare-fun res!315484 () Bool)

(declare-fun e!439775 () Bool)

(assert (=> b!697428 (=> (not res!315484) (not e!439775))))

(declare-fun lt!286225 () tuple2!8202)

(declare-datatypes ((tuple2!8204 0))(
  ( (tuple2!8205 (_1!4560 List!7701) (_2!4560 List!7696)) )
))
(declare-fun lexList!328 (LexerInterface!1340 List!7699 List!7696) tuple2!8204)

(assert (=> b!697428 (= res!315484 (= (list!3196 (_1!4559 lt!286225)) (_1!4560 (lexList!328 thiss!12529 rules!1486 (list!3197 input!870)))))))

(declare-fun d!233411 () Bool)

(assert (=> d!233411 e!439775))

(declare-fun res!315483 () Bool)

(assert (=> d!233411 (=> (not res!315483) (not e!439775))))

(declare-fun e!439773 () Bool)

(assert (=> d!233411 (= res!315483 e!439773)))

(declare-fun c!121951 () Bool)

(declare-fun size!6264 (BalanceConc!5396) Int)

(assert (=> d!233411 (= c!121951 (> (size!6264 (_1!4559 lt!286225)) 0))))

(assert (=> d!233411 (= lt!286225 e!439774)))

(declare-fun c!121950 () Bool)

(assert (=> d!233411 (= c!121950 ((_ is Some!1722) lt!286227))))

(declare-fun maxPrefixZipperSequence!462 (LexerInterface!1340 List!7699 BalanceConc!5394) Option!1723)

(assert (=> d!233411 (= lt!286227 (maxPrefixZipperSequence!462 thiss!12529 rules!1486 input!870))))

(assert (=> d!233411 (= (lexRec!180 thiss!12529 rules!1486 input!870) lt!286225)))

(declare-fun b!697430 () Bool)

(declare-fun e!439776 () Bool)

(declare-fun isEmpty!4918 (BalanceConc!5396) Bool)

(assert (=> b!697430 (= e!439776 (not (isEmpty!4918 (_1!4559 lt!286225))))))

(declare-fun b!697431 () Bool)

(assert (=> b!697431 (= e!439773 (= (list!3197 (_2!4559 lt!286225)) (list!3197 input!870)))))

(declare-fun b!697432 () Bool)

(assert (=> b!697432 (= e!439773 e!439776)))

(declare-fun res!315482 () Bool)

(declare-fun size!6265 (BalanceConc!5394) Int)

(assert (=> b!697432 (= res!315482 (< (size!6265 (_2!4559 lt!286225)) (size!6265 input!870)))))

(assert (=> b!697432 (=> (not res!315482) (not e!439776))))

(declare-fun b!697433 () Bool)

(assert (=> b!697433 (= e!439775 (= (list!3197 (_2!4559 lt!286225)) (_2!4560 (lexList!328 thiss!12529 rules!1486 (list!3197 input!870)))))))

(assert (= (and d!233411 c!121950) b!697429))

(assert (= (and d!233411 (not c!121950)) b!697427))

(assert (= (and d!233411 c!121951) b!697432))

(assert (= (and d!233411 (not c!121951)) b!697431))

(assert (= (and b!697432 res!315482) b!697430))

(assert (= (and d!233411 res!315483) b!697428))

(assert (= (and b!697428 res!315484) b!697433))

(declare-fun m!953141 () Bool)

(assert (=> b!697431 m!953141))

(assert (=> b!697431 m!953033))

(assert (=> b!697433 m!953141))

(assert (=> b!697433 m!953033))

(assert (=> b!697433 m!953033))

(declare-fun m!953143 () Bool)

(assert (=> b!697433 m!953143))

(declare-fun m!953145 () Bool)

(assert (=> b!697429 m!953145))

(declare-fun m!953147 () Bool)

(assert (=> b!697429 m!953147))

(declare-fun m!953149 () Bool)

(assert (=> b!697432 m!953149))

(declare-fun m!953151 () Bool)

(assert (=> b!697432 m!953151))

(declare-fun m!953153 () Bool)

(assert (=> b!697428 m!953153))

(assert (=> b!697428 m!953033))

(assert (=> b!697428 m!953033))

(assert (=> b!697428 m!953143))

(declare-fun m!953155 () Bool)

(assert (=> b!697430 m!953155))

(declare-fun m!953157 () Bool)

(assert (=> d!233411 m!953157))

(declare-fun m!953159 () Bool)

(assert (=> d!233411 m!953159))

(assert (=> b!697373 d!233411))

(declare-fun b!697434 () Bool)

(declare-fun e!439778 () tuple2!8202)

(assert (=> b!697434 (= e!439778 (tuple2!8203 (BalanceConc!5397 Empty!2692) totalInput!378))))

(declare-fun b!697436 () Bool)

(declare-fun lt!286229 () tuple2!8202)

(declare-fun lt!286230 () Option!1723)

(assert (=> b!697436 (= e!439778 (tuple2!8203 (prepend!264 (_1!4559 lt!286229) (_1!4557 (v!17814 lt!286230))) (_2!4559 lt!286229)))))

(assert (=> b!697436 (= lt!286229 (lexRec!180 thiss!12529 rules!1486 (_2!4557 (v!17814 lt!286230))))))

(declare-fun b!697435 () Bool)

(declare-fun res!315487 () Bool)

(declare-fun e!439779 () Bool)

(assert (=> b!697435 (=> (not res!315487) (not e!439779))))

(declare-fun lt!286228 () tuple2!8202)

(assert (=> b!697435 (= res!315487 (= (list!3196 (_1!4559 lt!286228)) (_1!4560 (lexList!328 thiss!12529 rules!1486 (list!3197 totalInput!378)))))))

(declare-fun d!233413 () Bool)

(assert (=> d!233413 e!439779))

(declare-fun res!315486 () Bool)

(assert (=> d!233413 (=> (not res!315486) (not e!439779))))

(declare-fun e!439777 () Bool)

(assert (=> d!233413 (= res!315486 e!439777)))

(declare-fun c!121953 () Bool)

(assert (=> d!233413 (= c!121953 (> (size!6264 (_1!4559 lt!286228)) 0))))

(assert (=> d!233413 (= lt!286228 e!439778)))

(declare-fun c!121952 () Bool)

(assert (=> d!233413 (= c!121952 ((_ is Some!1722) lt!286230))))

(assert (=> d!233413 (= lt!286230 (maxPrefixZipperSequence!462 thiss!12529 rules!1486 totalInput!378))))

(assert (=> d!233413 (= (lexRec!180 thiss!12529 rules!1486 totalInput!378) lt!286228)))

(declare-fun b!697437 () Bool)

(declare-fun e!439780 () Bool)

(assert (=> b!697437 (= e!439780 (not (isEmpty!4918 (_1!4559 lt!286228))))))

(declare-fun b!697438 () Bool)

(assert (=> b!697438 (= e!439777 (= (list!3197 (_2!4559 lt!286228)) (list!3197 totalInput!378)))))

(declare-fun b!697439 () Bool)

(assert (=> b!697439 (= e!439777 e!439780)))

(declare-fun res!315485 () Bool)

(assert (=> b!697439 (= res!315485 (< (size!6265 (_2!4559 lt!286228)) (size!6265 totalInput!378)))))

(assert (=> b!697439 (=> (not res!315485) (not e!439780))))

(declare-fun b!697440 () Bool)

(assert (=> b!697440 (= e!439779 (= (list!3197 (_2!4559 lt!286228)) (_2!4560 (lexList!328 thiss!12529 rules!1486 (list!3197 totalInput!378)))))))

(assert (= (and d!233413 c!121952) b!697436))

(assert (= (and d!233413 (not c!121952)) b!697434))

(assert (= (and d!233413 c!121953) b!697439))

(assert (= (and d!233413 (not c!121953)) b!697438))

(assert (= (and b!697439 res!315485) b!697437))

(assert (= (and d!233413 res!315486) b!697435))

(assert (= (and b!697435 res!315487) b!697440))

(declare-fun m!953161 () Bool)

(assert (=> b!697438 m!953161))

(assert (=> b!697438 m!953031))

(assert (=> b!697440 m!953161))

(assert (=> b!697440 m!953031))

(assert (=> b!697440 m!953031))

(declare-fun m!953163 () Bool)

(assert (=> b!697440 m!953163))

(declare-fun m!953165 () Bool)

(assert (=> b!697436 m!953165))

(declare-fun m!953167 () Bool)

(assert (=> b!697436 m!953167))

(declare-fun m!953169 () Bool)

(assert (=> b!697439 m!953169))

(declare-fun m!953171 () Bool)

(assert (=> b!697439 m!953171))

(declare-fun m!953173 () Bool)

(assert (=> b!697435 m!953173))

(assert (=> b!697435 m!953031))

(assert (=> b!697435 m!953031))

(assert (=> b!697435 m!953163))

(declare-fun m!953175 () Bool)

(assert (=> b!697437 m!953175))

(declare-fun m!953177 () Bool)

(assert (=> d!233413 m!953177))

(declare-fun m!953179 () Bool)

(assert (=> d!233413 m!953179))

(assert (=> b!697373 d!233413))

(declare-fun e!439783 () Bool)

(declare-fun b!697452 () Bool)

(declare-fun lt!286233 () BalanceConc!5396)

(declare-fun ++!1998 (List!7701 List!7701) List!7701)

(assert (=> b!697452 (= e!439783 (= (list!3196 lt!286233) (++!1998 (list!3196 acc!372) (list!3196 (_1!4559 lt!286217)))))))

(declare-fun b!697450 () Bool)

(declare-fun res!315498 () Bool)

(assert (=> b!697450 (=> (not res!315498) (not e!439783))))

(declare-fun height!324 (Conc!2692) Int)

(declare-fun ++!1999 (Conc!2692 Conc!2692) Conc!2692)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!697450 (= res!315498 (<= (height!324 (++!1999 (c!121944 acc!372) (c!121944 (_1!4559 lt!286217)))) (+ (max!0 (height!324 (c!121944 acc!372)) (height!324 (c!121944 (_1!4559 lt!286217)))) 1)))))

(declare-fun d!233415 () Bool)

(assert (=> d!233415 e!439783))

(declare-fun res!315496 () Bool)

(assert (=> d!233415 (=> (not res!315496) (not e!439783))))

(declare-fun appendAssocInst!138 (Conc!2692 Conc!2692) Bool)

(assert (=> d!233415 (= res!315496 (appendAssocInst!138 (c!121944 acc!372) (c!121944 (_1!4559 lt!286217))))))

(assert (=> d!233415 (= lt!286233 (BalanceConc!5397 (++!1999 (c!121944 acc!372) (c!121944 (_1!4559 lt!286217)))))))

(assert (=> d!233415 (= (++!1996 acc!372 (_1!4559 lt!286217)) lt!286233)))

(declare-fun b!697449 () Bool)

(declare-fun res!315499 () Bool)

(assert (=> b!697449 (=> (not res!315499) (not e!439783))))

(declare-fun isBalanced!706 (Conc!2692) Bool)

(assert (=> b!697449 (= res!315499 (isBalanced!706 (++!1999 (c!121944 acc!372) (c!121944 (_1!4559 lt!286217)))))))

(declare-fun b!697451 () Bool)

(declare-fun res!315497 () Bool)

(assert (=> b!697451 (=> (not res!315497) (not e!439783))))

(assert (=> b!697451 (= res!315497 (>= (height!324 (++!1999 (c!121944 acc!372) (c!121944 (_1!4559 lt!286217)))) (max!0 (height!324 (c!121944 acc!372)) (height!324 (c!121944 (_1!4559 lt!286217))))))))

(assert (= (and d!233415 res!315496) b!697449))

(assert (= (and b!697449 res!315499) b!697450))

(assert (= (and b!697450 res!315498) b!697451))

(assert (= (and b!697451 res!315497) b!697452))

(declare-fun m!953181 () Bool)

(assert (=> d!233415 m!953181))

(declare-fun m!953183 () Bool)

(assert (=> d!233415 m!953183))

(assert (=> b!697451 m!953183))

(declare-fun m!953185 () Bool)

(assert (=> b!697451 m!953185))

(assert (=> b!697451 m!953183))

(declare-fun m!953187 () Bool)

(assert (=> b!697451 m!953187))

(declare-fun m!953189 () Bool)

(assert (=> b!697451 m!953189))

(assert (=> b!697451 m!953187))

(assert (=> b!697451 m!953189))

(declare-fun m!953191 () Bool)

(assert (=> b!697451 m!953191))

(assert (=> b!697450 m!953183))

(assert (=> b!697450 m!953185))

(assert (=> b!697450 m!953183))

(assert (=> b!697450 m!953187))

(assert (=> b!697450 m!953189))

(assert (=> b!697450 m!953187))

(assert (=> b!697450 m!953189))

(assert (=> b!697450 m!953191))

(assert (=> b!697449 m!953183))

(assert (=> b!697449 m!953183))

(declare-fun m!953193 () Bool)

(assert (=> b!697449 m!953193))

(declare-fun m!953195 () Bool)

(assert (=> b!697452 m!953195))

(assert (=> b!697452 m!953049))

(declare-fun m!953197 () Bool)

(assert (=> b!697452 m!953197))

(assert (=> b!697452 m!953049))

(assert (=> b!697452 m!953197))

(declare-fun m!953199 () Bool)

(assert (=> b!697452 m!953199))

(assert (=> b!697373 d!233415))

(declare-fun d!233417 () Bool)

(assert (=> d!233417 (= (list!3196 (++!1996 acc!372 (_1!4559 lt!286217))) (list!3199 (c!121944 (++!1996 acc!372 (_1!4559 lt!286217)))))))

(declare-fun bs!138001 () Bool)

(assert (= bs!138001 d!233417))

(declare-fun m!953201 () Bool)

(assert (=> bs!138001 m!953201))

(assert (=> b!697373 d!233417))

(declare-fun d!233419 () Bool)

(declare-fun c!121959 () Bool)

(assert (=> d!233419 (= c!121959 ((_ is Node!2691) (c!121943 input!870)))))

(declare-fun e!439788 () Bool)

(assert (=> d!233419 (= (inv!9816 (c!121943 input!870)) e!439788)))

(declare-fun b!697459 () Bool)

(declare-fun inv!9817 (Conc!2691) Bool)

(assert (=> b!697459 (= e!439788 (inv!9817 (c!121943 input!870)))))

(declare-fun b!697460 () Bool)

(declare-fun e!439789 () Bool)

(assert (=> b!697460 (= e!439788 e!439789)))

(declare-fun res!315502 () Bool)

(assert (=> b!697460 (= res!315502 (not ((_ is Leaf!3978) (c!121943 input!870))))))

(assert (=> b!697460 (=> res!315502 e!439789)))

(declare-fun b!697461 () Bool)

(declare-fun inv!9818 (Conc!2691) Bool)

(assert (=> b!697461 (= e!439789 (inv!9818 (c!121943 input!870)))))

(assert (= (and d!233419 c!121959) b!697459))

(assert (= (and d!233419 (not c!121959)) b!697460))

(assert (= (and b!697460 (not res!315502)) b!697461))

(declare-fun m!953203 () Bool)

(assert (=> b!697459 m!953203))

(declare-fun m!953205 () Bool)

(assert (=> b!697461 m!953205))

(assert (=> b!697389 d!233419))

(declare-fun d!233421 () Bool)

(assert (=> d!233421 (= (array_inv!1025 (_keys!1132 (v!17812 (underlying!1859 (v!17813 (underlying!1860 (cache!1197 cacheFindLongestMatch!74))))))) (bvsge (size!6259 (_keys!1132 (v!17812 (underlying!1859 (v!17813 (underlying!1860 (cache!1197 cacheFindLongestMatch!74))))))) #b00000000000000000000000000000000))))

(assert (=> b!697392 d!233421))

(declare-fun d!233423 () Bool)

(assert (=> d!233423 (= (array_inv!1028 (_values!1117 (v!17812 (underlying!1859 (v!17813 (underlying!1860 (cache!1197 cacheFindLongestMatch!74))))))) (bvsge (size!6261 (_values!1117 (v!17812 (underlying!1859 (v!17813 (underlying!1860 (cache!1197 cacheFindLongestMatch!74))))))) #b00000000000000000000000000000000))))

(assert (=> b!697392 d!233423))

(declare-fun d!233425 () Bool)

(declare-fun validCacheMapUp!66 (MutableMap!809) Bool)

(assert (=> d!233425 (= (valid!710 cacheUp!502) (validCacheMapUp!66 (cache!1196 cacheUp!502)))))

(declare-fun bs!138002 () Bool)

(assert (= bs!138002 d!233425))

(declare-fun m!953207 () Bool)

(assert (=> bs!138002 m!953207))

(assert (=> b!697377 d!233425))

(declare-fun d!233427 () Bool)

(declare-fun c!121960 () Bool)

(assert (=> d!233427 (= c!121960 ((_ is Node!2691) (c!121943 (totalInput!1830 cacheFindLongestMatch!74))))))

(declare-fun e!439790 () Bool)

(assert (=> d!233427 (= (inv!9816 (c!121943 (totalInput!1830 cacheFindLongestMatch!74))) e!439790)))

(declare-fun b!697462 () Bool)

(assert (=> b!697462 (= e!439790 (inv!9817 (c!121943 (totalInput!1830 cacheFindLongestMatch!74))))))

(declare-fun b!697463 () Bool)

(declare-fun e!439791 () Bool)

(assert (=> b!697463 (= e!439790 e!439791)))

(declare-fun res!315503 () Bool)

(assert (=> b!697463 (= res!315503 (not ((_ is Leaf!3978) (c!121943 (totalInput!1830 cacheFindLongestMatch!74)))))))

(assert (=> b!697463 (=> res!315503 e!439791)))

(declare-fun b!697464 () Bool)

(assert (=> b!697464 (= e!439791 (inv!9818 (c!121943 (totalInput!1830 cacheFindLongestMatch!74))))))

(assert (= (and d!233427 c!121960) b!697462))

(assert (= (and d!233427 (not c!121960)) b!697463))

(assert (= (and b!697463 (not res!315503)) b!697464))

(declare-fun m!953209 () Bool)

(assert (=> b!697462 m!953209))

(declare-fun m!953211 () Bool)

(assert (=> b!697464 m!953211))

(assert (=> b!697395 d!233427))

(declare-fun d!233429 () Bool)

(declare-fun validCacheMapDown!66 (MutableMap!811) Bool)

(assert (=> d!233429 (= (valid!711 (_3!457 lt!286213)) (validCacheMapDown!66 (cache!1198 (_3!457 lt!286213))))))

(declare-fun bs!138003 () Bool)

(assert (= bs!138003 d!233429))

(declare-fun m!953213 () Bool)

(assert (=> bs!138003 m!953213))

(assert (=> b!697394 d!233429))

(declare-fun d!233431 () Bool)

(assert (=> d!233431 (= (valid!710 (_2!4558 lt!286213)) (validCacheMapUp!66 (cache!1196 (_2!4558 lt!286213))))))

(declare-fun bs!138004 () Bool)

(assert (= bs!138004 d!233431))

(declare-fun m!953215 () Bool)

(assert (=> bs!138004 m!953215))

(assert (=> b!697379 d!233431))

(declare-fun d!233433 () Bool)

(declare-fun e!439796 () Bool)

(assert (=> d!233433 e!439796))

(declare-fun res!315509 () Bool)

(assert (=> d!233433 (=> (not res!315509) (not e!439796))))

(declare-fun lt!286236 () List!7696)

(declare-fun content!1192 (List!7696) (InoxSet C!4336))

(assert (=> d!233433 (= res!315509 (= (content!1192 lt!286236) ((_ map or) (content!1192 lt!286211) (content!1192 lt!286205))))))

(declare-fun e!439797 () List!7696)

(assert (=> d!233433 (= lt!286236 e!439797)))

(declare-fun c!121963 () Bool)

(assert (=> d!233433 (= c!121963 ((_ is Nil!7682) lt!286211))))

(assert (=> d!233433 (= (++!1997 lt!286211 lt!286205) lt!286236)))

(declare-fun b!697473 () Bool)

(assert (=> b!697473 (= e!439797 lt!286205)))

(declare-fun b!697474 () Bool)

(assert (=> b!697474 (= e!439797 (Cons!7682 (h!13083 lt!286211) (++!1997 (t!87519 lt!286211) lt!286205)))))

(declare-fun b!697475 () Bool)

(declare-fun res!315508 () Bool)

(assert (=> b!697475 (=> (not res!315508) (not e!439796))))

(declare-fun size!6266 (List!7696) Int)

(assert (=> b!697475 (= res!315508 (= (size!6266 lt!286236) (+ (size!6266 lt!286211) (size!6266 lt!286205))))))

(declare-fun b!697476 () Bool)

(assert (=> b!697476 (= e!439796 (or (not (= lt!286205 Nil!7682)) (= lt!286236 lt!286211)))))

(assert (= (and d!233433 c!121963) b!697473))

(assert (= (and d!233433 (not c!121963)) b!697474))

(assert (= (and d!233433 res!315509) b!697475))

(assert (= (and b!697475 res!315508) b!697476))

(declare-fun m!953217 () Bool)

(assert (=> d!233433 m!953217))

(declare-fun m!953219 () Bool)

(assert (=> d!233433 m!953219))

(declare-fun m!953221 () Bool)

(assert (=> d!233433 m!953221))

(declare-fun m!953223 () Bool)

(assert (=> b!697474 m!953223))

(declare-fun m!953225 () Bool)

(assert (=> b!697475 m!953225))

(declare-fun m!953227 () Bool)

(assert (=> b!697475 m!953227))

(declare-fun m!953229 () Bool)

(assert (=> b!697475 m!953229))

(assert (=> b!697398 d!233433))

(declare-fun d!233435 () Bool)

(assert (=> d!233435 (= (list!3197 totalInput!378) (list!3198 (c!121943 totalInput!378)))))

(declare-fun bs!138005 () Bool)

(assert (= bs!138005 d!233435))

(declare-fun m!953231 () Bool)

(assert (=> bs!138005 m!953231))

(assert (=> b!697398 d!233435))

(declare-fun d!233437 () Bool)

(assert (=> d!233437 (= (list!3197 input!870) (list!3198 (c!121943 input!870)))))

(declare-fun bs!138006 () Bool)

(assert (= bs!138006 d!233437))

(declare-fun m!953233 () Bool)

(assert (=> bs!138006 m!953233))

(assert (=> b!697398 d!233437))

(declare-fun d!233439 () Bool)

(assert (=> d!233439 (= (list!3197 treated!50) (list!3198 (c!121943 treated!50)))))

(declare-fun bs!138007 () Bool)

(assert (= bs!138007 d!233439))

(declare-fun m!953235 () Bool)

(assert (=> bs!138007 m!953235))

(assert (=> b!697398 d!233439))

(declare-fun d!233441 () Bool)

(declare-fun isBalanced!707 (Conc!2691) Bool)

(assert (=> d!233441 (= (inv!9810 (totalInput!1830 cacheFindLongestMatch!74)) (isBalanced!707 (c!121943 (totalInput!1830 cacheFindLongestMatch!74))))))

(declare-fun bs!138008 () Bool)

(assert (= bs!138008 d!233441))

(declare-fun m!953237 () Bool)

(assert (=> bs!138008 m!953237))

(assert (=> b!697378 d!233441))

(declare-fun d!233443 () Bool)

(assert (=> d!233443 (= (list!3197 (_2!4559 lt!286212)) (list!3198 (c!121943 (_2!4559 lt!286212))))))

(declare-fun bs!138009 () Bool)

(assert (= bs!138009 d!233443))

(declare-fun m!953239 () Bool)

(assert (=> bs!138009 m!953239))

(assert (=> b!697396 d!233443))

(declare-fun d!233445 () Bool)

(assert (=> d!233445 (= (list!3197 (_2!4559 lt!286217)) (list!3198 (c!121943 (_2!4559 lt!286217))))))

(declare-fun bs!138010 () Bool)

(assert (= bs!138010 d!233445))

(declare-fun m!953241 () Bool)

(assert (=> bs!138010 m!953241))

(assert (=> b!697396 d!233445))

(declare-fun d!233447 () Bool)

(assert (=> d!233447 true))

(declare-fun lt!286239 () Bool)

(declare-fun lambda!21604 () Int)

(declare-fun forall!1965 (List!7699 Int) Bool)

(assert (=> d!233447 (= lt!286239 (forall!1965 rules!1486 lambda!21604))))

(declare-fun e!439803 () Bool)

(assert (=> d!233447 (= lt!286239 e!439803)))

(declare-fun res!315515 () Bool)

(assert (=> d!233447 (=> res!315515 e!439803)))

(assert (=> d!233447 (= res!315515 (not ((_ is Cons!7685) rules!1486)))))

(assert (=> d!233447 (= (rulesValidInductive!530 thiss!12529 rules!1486) lt!286239)))

(declare-fun b!697481 () Bool)

(declare-fun e!439802 () Bool)

(assert (=> b!697481 (= e!439803 e!439802)))

(declare-fun res!315514 () Bool)

(assert (=> b!697481 (=> (not res!315514) (not e!439802))))

(declare-fun ruleValid!467 (LexerInterface!1340 Rule!2854) Bool)

(assert (=> b!697481 (= res!315514 (ruleValid!467 thiss!12529 (h!13086 rules!1486)))))

(declare-fun b!697482 () Bool)

(assert (=> b!697482 (= e!439802 (rulesValidInductive!530 thiss!12529 (t!87522 rules!1486)))))

(assert (= (and d!233447 (not res!315515)) b!697481))

(assert (= (and b!697481 res!315514) b!697482))

(declare-fun m!953243 () Bool)

(assert (=> d!233447 m!953243))

(declare-fun m!953245 () Bool)

(assert (=> b!697481 m!953245))

(declare-fun m!953247 () Bool)

(assert (=> b!697482 m!953247))

(assert (=> b!697363 d!233447))

(declare-fun b!697498 () Bool)

(declare-fun res!315526 () Bool)

(declare-fun e!439809 () Bool)

(assert (=> b!697498 (=> (not res!315526) (not e!439809))))

(declare-fun lt!286261 () tuple4!152)

(assert (=> b!697498 (= res!315526 (valid!710 (_2!4558 lt!286261)))))

(declare-fun bm!43663 () Bool)

(declare-fun call!43668 () tuple4!152)

(declare-fun maxPrefixOneRuleZipperSequenceV2Mem!6 (LexerInterface!1340 Rule!2854 BalanceConc!5394 BalanceConc!5394 CacheUp!424 CacheDown!432 CacheFindLongestMatch!88) tuple4!152)

(assert (=> bm!43663 (= call!43668 (maxPrefixOneRuleZipperSequenceV2Mem!6 thiss!12529 (h!13086 rules!1486) input!870 totalInput!378 (_2!4558 lt!286213) (_3!457 lt!286213) (_4!76 lt!286213)))))

(declare-fun b!697499 () Bool)

(declare-datatypes ((tuple4!154 0))(
  ( (tuple4!155 (_1!4561 Option!1723) (_2!4561 CacheUp!424) (_3!458 CacheFindLongestMatch!88) (_4!77 CacheDown!432)) )
))
(declare-fun e!439808 () tuple4!154)

(declare-fun lt!286260 () tuple4!152)

(declare-fun lt!286262 () tuple4!152)

(assert (=> b!697499 (= e!439808 (tuple4!155 (ite (and ((_ is None!1722) (_1!4558 lt!286260)) ((_ is None!1722) (_1!4558 lt!286262))) None!1722 (ite ((_ is None!1722) (_1!4558 lt!286262)) (_1!4558 lt!286260) (ite ((_ is None!1722) (_1!4558 lt!286260)) (_1!4558 lt!286262) (ite (>= (size!6263 (_1!4557 (v!17814 (_1!4558 lt!286260)))) (size!6263 (_1!4557 (v!17814 (_1!4558 lt!286262))))) (_1!4558 lt!286260) (_1!4558 lt!286262))))) (_2!4558 lt!286262) (_4!76 lt!286262) (_3!457 lt!286262)))))

(assert (=> b!697499 (= lt!286260 call!43668)))

(assert (=> b!697499 (= lt!286262 (maxPrefixZipperSequenceV2Mem!13 thiss!12529 (t!87522 rules!1486) input!870 totalInput!378 (_2!4558 lt!286260) (_3!457 lt!286260) (_4!76 lt!286260)))))

(declare-fun b!697500 () Bool)

(declare-fun res!315527 () Bool)

(assert (=> b!697500 (=> (not res!315527) (not e!439809))))

(assert (=> b!697500 (= res!315527 (valid!709 (_4!76 lt!286261)))))

(declare-fun b!697501 () Bool)

(declare-fun lt!286264 () tuple4!152)

(assert (=> b!697501 (= e!439808 (tuple4!155 (_1!4558 lt!286264) (_2!4558 lt!286264) (_4!76 lt!286264) (_3!457 lt!286264)))))

(assert (=> b!697501 (= lt!286264 call!43668)))

(declare-fun b!697502 () Bool)

(declare-fun res!315525 () Bool)

(assert (=> b!697502 (=> (not res!315525) (not e!439809))))

(assert (=> b!697502 (= res!315525 (valid!711 (_3!457 lt!286261)))))

(declare-fun d!233449 () Bool)

(assert (=> d!233449 e!439809))

(declare-fun res!315524 () Bool)

(assert (=> d!233449 (=> (not res!315524) (not e!439809))))

(declare-fun maxPrefixZipperSequenceV2!132 (LexerInterface!1340 List!7699 BalanceConc!5394 BalanceConc!5394) Option!1723)

(assert (=> d!233449 (= res!315524 (= (_1!4558 lt!286261) (maxPrefixZipperSequenceV2!132 thiss!12529 rules!1486 input!870 totalInput!378)))))

(declare-fun lt!286265 () tuple4!154)

(assert (=> d!233449 (= lt!286261 (tuple4!153 (_1!4561 lt!286265) (_2!4561 lt!286265) (_4!77 lt!286265) (_3!458 lt!286265)))))

(assert (=> d!233449 (= lt!286265 e!439808)))

(declare-fun c!121966 () Bool)

(assert (=> d!233449 (= c!121966 (and ((_ is Cons!7685) rules!1486) ((_ is Nil!7685) (t!87522 rules!1486))))))

(declare-fun lt!286258 () Unit!12705)

(declare-fun lt!286263 () Unit!12705)

(assert (=> d!233449 (= lt!286258 lt!286263)))

(declare-fun lt!286266 () List!7696)

(declare-fun lt!286259 () List!7696)

(declare-fun isPrefix!921 (List!7696 List!7696) Bool)

(assert (=> d!233449 (isPrefix!921 lt!286266 lt!286259)))

(declare-fun lemmaIsPrefixRefl!632 (List!7696 List!7696) Unit!12705)

(assert (=> d!233449 (= lt!286263 (lemmaIsPrefixRefl!632 lt!286266 lt!286259))))

(assert (=> d!233449 (= lt!286259 (list!3197 input!870))))

(assert (=> d!233449 (= lt!286266 (list!3197 input!870))))

(assert (=> d!233449 (rulesValidInductive!530 thiss!12529 rules!1486)))

(assert (=> d!233449 (= (maxPrefixZipperSequenceV2Mem!13 thiss!12529 rules!1486 input!870 totalInput!378 (_2!4558 lt!286213) (_3!457 lt!286213) (_4!76 lt!286213)) lt!286261)))

(declare-fun b!697497 () Bool)

(assert (=> b!697497 (= e!439809 (= (totalInput!1830 (_4!76 lt!286261)) totalInput!378))))

(assert (= (and d!233449 c!121966) b!697501))

(assert (= (and d!233449 (not c!121966)) b!697499))

(assert (= (or b!697501 b!697499) bm!43663))

(assert (= (and d!233449 res!315524) b!697498))

(assert (= (and b!697498 res!315526) b!697502))

(assert (= (and b!697502 res!315525) b!697500))

(assert (= (and b!697500 res!315527) b!697497))

(declare-fun m!953249 () Bool)

(assert (=> bm!43663 m!953249))

(declare-fun m!953251 () Bool)

(assert (=> b!697500 m!953251))

(declare-fun m!953253 () Bool)

(assert (=> d!233449 m!953253))

(assert (=> d!233449 m!953119))

(declare-fun m!953255 () Bool)

(assert (=> d!233449 m!953255))

(declare-fun m!953257 () Bool)

(assert (=> d!233449 m!953257))

(assert (=> d!233449 m!953033))

(declare-fun m!953259 () Bool)

(assert (=> b!697498 m!953259))

(declare-fun m!953261 () Bool)

(assert (=> b!697502 m!953261))

(declare-fun m!953263 () Bool)

(assert (=> b!697499 m!953263))

(assert (=> b!697363 d!233449))

(declare-fun b!697503 () Bool)

(declare-fun e!439811 () tuple2!8202)

(assert (=> b!697503 (= e!439811 (tuple2!8203 (BalanceConc!5397 Empty!2692) (_2!4557 (v!17814 (_1!4558 lt!286213)))))))

(declare-fun b!697505 () Bool)

(declare-fun lt!286268 () tuple2!8202)

(declare-fun lt!286269 () Option!1723)

(assert (=> b!697505 (= e!439811 (tuple2!8203 (prepend!264 (_1!4559 lt!286268) (_1!4557 (v!17814 lt!286269))) (_2!4559 lt!286268)))))

(assert (=> b!697505 (= lt!286268 (lexRec!180 thiss!12529 rules!1486 (_2!4557 (v!17814 lt!286269))))))

(declare-fun b!697504 () Bool)

(declare-fun res!315530 () Bool)

(declare-fun e!439812 () Bool)

(assert (=> b!697504 (=> (not res!315530) (not e!439812))))

(declare-fun lt!286267 () tuple2!8202)

(assert (=> b!697504 (= res!315530 (= (list!3196 (_1!4559 lt!286267)) (_1!4560 (lexList!328 thiss!12529 rules!1486 (list!3197 (_2!4557 (v!17814 (_1!4558 lt!286213))))))))))

(declare-fun d!233451 () Bool)

(assert (=> d!233451 e!439812))

(declare-fun res!315529 () Bool)

(assert (=> d!233451 (=> (not res!315529) (not e!439812))))

(declare-fun e!439810 () Bool)

(assert (=> d!233451 (= res!315529 e!439810)))

(declare-fun c!121968 () Bool)

(assert (=> d!233451 (= c!121968 (> (size!6264 (_1!4559 lt!286267)) 0))))

(assert (=> d!233451 (= lt!286267 e!439811)))

(declare-fun c!121967 () Bool)

(assert (=> d!233451 (= c!121967 ((_ is Some!1722) lt!286269))))

(assert (=> d!233451 (= lt!286269 (maxPrefixZipperSequence!462 thiss!12529 rules!1486 (_2!4557 (v!17814 (_1!4558 lt!286213)))))))

(assert (=> d!233451 (= (lexRec!180 thiss!12529 rules!1486 (_2!4557 (v!17814 (_1!4558 lt!286213)))) lt!286267)))

(declare-fun b!697506 () Bool)

(declare-fun e!439813 () Bool)

(assert (=> b!697506 (= e!439813 (not (isEmpty!4918 (_1!4559 lt!286267))))))

(declare-fun b!697507 () Bool)

(assert (=> b!697507 (= e!439810 (= (list!3197 (_2!4559 lt!286267)) (list!3197 (_2!4557 (v!17814 (_1!4558 lt!286213))))))))

(declare-fun b!697508 () Bool)

(assert (=> b!697508 (= e!439810 e!439813)))

(declare-fun res!315528 () Bool)

(assert (=> b!697508 (= res!315528 (< (size!6265 (_2!4559 lt!286267)) (size!6265 (_2!4557 (v!17814 (_1!4558 lt!286213))))))))

(assert (=> b!697508 (=> (not res!315528) (not e!439813))))

(declare-fun b!697509 () Bool)

(assert (=> b!697509 (= e!439812 (= (list!3197 (_2!4559 lt!286267)) (_2!4560 (lexList!328 thiss!12529 rules!1486 (list!3197 (_2!4557 (v!17814 (_1!4558 lt!286213))))))))))

(assert (= (and d!233451 c!121967) b!697505))

(assert (= (and d!233451 (not c!121967)) b!697503))

(assert (= (and d!233451 c!121968) b!697508))

(assert (= (and d!233451 (not c!121968)) b!697507))

(assert (= (and b!697508 res!315528) b!697506))

(assert (= (and d!233451 res!315529) b!697504))

(assert (= (and b!697504 res!315530) b!697509))

(declare-fun m!953265 () Bool)

(assert (=> b!697507 m!953265))

(declare-fun m!953267 () Bool)

(assert (=> b!697507 m!953267))

(assert (=> b!697509 m!953265))

(assert (=> b!697509 m!953267))

(assert (=> b!697509 m!953267))

(declare-fun m!953269 () Bool)

(assert (=> b!697509 m!953269))

(declare-fun m!953271 () Bool)

(assert (=> b!697505 m!953271))

(declare-fun m!953273 () Bool)

(assert (=> b!697505 m!953273))

(declare-fun m!953275 () Bool)

(assert (=> b!697508 m!953275))

(declare-fun m!953277 () Bool)

(assert (=> b!697508 m!953277))

(declare-fun m!953279 () Bool)

(assert (=> b!697504 m!953279))

(assert (=> b!697504 m!953267))

(assert (=> b!697504 m!953267))

(assert (=> b!697504 m!953269))

(declare-fun m!953281 () Bool)

(assert (=> b!697506 m!953281))

(declare-fun m!953283 () Bool)

(assert (=> d!233451 m!953283))

(declare-fun m!953285 () Bool)

(assert (=> d!233451 m!953285))

(assert (=> b!697363 d!233451))

(declare-fun d!233453 () Bool)

(assert (=> d!233453 (= (isEmpty!4916 rules!1486) ((_ is Nil!7685) rules!1486))))

(assert (=> b!697381 d!233453))

(declare-fun d!233455 () Bool)

(declare-fun c!121969 () Bool)

(assert (=> d!233455 (= c!121969 ((_ is Node!2691) (c!121943 totalInput!378)))))

(declare-fun e!439814 () Bool)

(assert (=> d!233455 (= (inv!9816 (c!121943 totalInput!378)) e!439814)))

(declare-fun b!697510 () Bool)

(assert (=> b!697510 (= e!439814 (inv!9817 (c!121943 totalInput!378)))))

(declare-fun b!697511 () Bool)

(declare-fun e!439815 () Bool)

(assert (=> b!697511 (= e!439814 e!439815)))

(declare-fun res!315531 () Bool)

(assert (=> b!697511 (= res!315531 (not ((_ is Leaf!3978) (c!121943 totalInput!378))))))

(assert (=> b!697511 (=> res!315531 e!439815)))

(declare-fun b!697512 () Bool)

(assert (=> b!697512 (= e!439815 (inv!9818 (c!121943 totalInput!378)))))

(assert (= (and d!233455 c!121969) b!697510))

(assert (= (and d!233455 (not c!121969)) b!697511))

(assert (= (and b!697511 (not res!315531)) b!697512))

(declare-fun m!953287 () Bool)

(assert (=> b!697510 m!953287))

(declare-fun m!953289 () Bool)

(assert (=> b!697512 m!953289))

(assert (=> b!697400 d!233455))

(declare-fun d!233457 () Bool)

(declare-fun c!121970 () Bool)

(assert (=> d!233457 (= c!121970 ((_ is Node!2691) (c!121943 treated!50)))))

(declare-fun e!439816 () Bool)

(assert (=> d!233457 (= (inv!9816 (c!121943 treated!50)) e!439816)))

(declare-fun b!697513 () Bool)

(assert (=> b!697513 (= e!439816 (inv!9817 (c!121943 treated!50)))))

(declare-fun b!697514 () Bool)

(declare-fun e!439817 () Bool)

(assert (=> b!697514 (= e!439816 e!439817)))

(declare-fun res!315532 () Bool)

(assert (=> b!697514 (= res!315532 (not ((_ is Leaf!3978) (c!121943 treated!50))))))

(assert (=> b!697514 (=> res!315532 e!439817)))

(declare-fun b!697515 () Bool)

(assert (=> b!697515 (= e!439817 (inv!9818 (c!121943 treated!50)))))

(assert (= (and d!233457 c!121970) b!697513))

(assert (= (and d!233457 (not c!121970)) b!697514))

(assert (= (and b!697514 (not res!315532)) b!697515))

(declare-fun m!953291 () Bool)

(assert (=> b!697513 m!953291))

(declare-fun m!953293 () Bool)

(assert (=> b!697515 m!953293))

(assert (=> b!697399 d!233457))

(declare-fun d!233459 () Bool)

(declare-fun c!121973 () Bool)

(assert (=> d!233459 (= c!121973 ((_ is Node!2692) (c!121944 acc!372)))))

(declare-fun e!439822 () Bool)

(assert (=> d!233459 (= (inv!9814 (c!121944 acc!372)) e!439822)))

(declare-fun b!697522 () Bool)

(declare-fun inv!9819 (Conc!2692) Bool)

(assert (=> b!697522 (= e!439822 (inv!9819 (c!121944 acc!372)))))

(declare-fun b!697523 () Bool)

(declare-fun e!439823 () Bool)

(assert (=> b!697523 (= e!439822 e!439823)))

(declare-fun res!315535 () Bool)

(assert (=> b!697523 (= res!315535 (not ((_ is Leaf!3979) (c!121944 acc!372))))))

(assert (=> b!697523 (=> res!315535 e!439823)))

(declare-fun b!697524 () Bool)

(declare-fun inv!9820 (Conc!2692) Bool)

(assert (=> b!697524 (= e!439823 (inv!9820 (c!121944 acc!372)))))

(assert (= (and d!233459 c!121973) b!697522))

(assert (= (and d!233459 (not c!121973)) b!697523))

(assert (= (and b!697523 (not res!315535)) b!697524))

(declare-fun m!953295 () Bool)

(assert (=> b!697522 m!953295))

(declare-fun m!953297 () Bool)

(assert (=> b!697524 m!953297))

(assert (=> b!697366 d!233459))

(declare-fun d!233461 () Bool)

(assert (=> d!233461 (= (valid!711 cacheDown!515) (validCacheMapDown!66 (cache!1198 cacheDown!515)))))

(declare-fun bs!138011 () Bool)

(assert (= bs!138011 d!233461))

(declare-fun m!953299 () Bool)

(assert (=> bs!138011 m!953299))

(assert (=> b!697384 d!233461))

(declare-fun d!233463 () Bool)

(assert (=> d!233463 (= (list!3196 (_1!4559 lt!286208)) (list!3199 (c!121944 (_1!4559 lt!286208))))))

(declare-fun bs!138012 () Bool)

(assert (= bs!138012 d!233463))

(declare-fun m!953301 () Bool)

(assert (=> bs!138012 m!953301))

(assert (=> b!697403 d!233463))

(declare-fun d!233465 () Bool)

(assert (=> d!233465 (= (list!3196 acc!372) (list!3199 (c!121944 acc!372)))))

(declare-fun bs!138013 () Bool)

(assert (= bs!138013 d!233465))

(declare-fun m!953303 () Bool)

(assert (=> bs!138013 m!953303))

(assert (=> b!697403 d!233465))

(declare-fun b!697525 () Bool)

(declare-fun e!439825 () tuple2!8202)

(assert (=> b!697525 (= e!439825 (tuple2!8203 (BalanceConc!5397 Empty!2692) treated!50))))

(declare-fun b!697527 () Bool)

(declare-fun lt!286271 () tuple2!8202)

(declare-fun lt!286272 () Option!1723)

(assert (=> b!697527 (= e!439825 (tuple2!8203 (prepend!264 (_1!4559 lt!286271) (_1!4557 (v!17814 lt!286272))) (_2!4559 lt!286271)))))

(assert (=> b!697527 (= lt!286271 (lexRec!180 thiss!12529 rules!1486 (_2!4557 (v!17814 lt!286272))))))

(declare-fun b!697526 () Bool)

(declare-fun res!315538 () Bool)

(declare-fun e!439826 () Bool)

(assert (=> b!697526 (=> (not res!315538) (not e!439826))))

(declare-fun lt!286270 () tuple2!8202)

(assert (=> b!697526 (= res!315538 (= (list!3196 (_1!4559 lt!286270)) (_1!4560 (lexList!328 thiss!12529 rules!1486 (list!3197 treated!50)))))))

(declare-fun d!233467 () Bool)

(assert (=> d!233467 e!439826))

(declare-fun res!315537 () Bool)

(assert (=> d!233467 (=> (not res!315537) (not e!439826))))

(declare-fun e!439824 () Bool)

(assert (=> d!233467 (= res!315537 e!439824)))

(declare-fun c!121975 () Bool)

(assert (=> d!233467 (= c!121975 (> (size!6264 (_1!4559 lt!286270)) 0))))

(assert (=> d!233467 (= lt!286270 e!439825)))

(declare-fun c!121974 () Bool)

(assert (=> d!233467 (= c!121974 ((_ is Some!1722) lt!286272))))

(assert (=> d!233467 (= lt!286272 (maxPrefixZipperSequence!462 thiss!12529 rules!1486 treated!50))))

(assert (=> d!233467 (= (lexRec!180 thiss!12529 rules!1486 treated!50) lt!286270)))

(declare-fun b!697528 () Bool)

(declare-fun e!439827 () Bool)

(assert (=> b!697528 (= e!439827 (not (isEmpty!4918 (_1!4559 lt!286270))))))

(declare-fun b!697529 () Bool)

(assert (=> b!697529 (= e!439824 (= (list!3197 (_2!4559 lt!286270)) (list!3197 treated!50)))))

(declare-fun b!697530 () Bool)

(assert (=> b!697530 (= e!439824 e!439827)))

(declare-fun res!315536 () Bool)

(assert (=> b!697530 (= res!315536 (< (size!6265 (_2!4559 lt!286270)) (size!6265 treated!50)))))

(assert (=> b!697530 (=> (not res!315536) (not e!439827))))

(declare-fun b!697531 () Bool)

(assert (=> b!697531 (= e!439826 (= (list!3197 (_2!4559 lt!286270)) (_2!4560 (lexList!328 thiss!12529 rules!1486 (list!3197 treated!50)))))))

(assert (= (and d!233467 c!121974) b!697527))

(assert (= (and d!233467 (not c!121974)) b!697525))

(assert (= (and d!233467 c!121975) b!697530))

(assert (= (and d!233467 (not c!121975)) b!697529))

(assert (= (and b!697530 res!315536) b!697528))

(assert (= (and d!233467 res!315537) b!697526))

(assert (= (and b!697526 res!315538) b!697531))

(declare-fun m!953305 () Bool)

(assert (=> b!697529 m!953305))

(assert (=> b!697529 m!953035))

(assert (=> b!697531 m!953305))

(assert (=> b!697531 m!953035))

(assert (=> b!697531 m!953035))

(declare-fun m!953307 () Bool)

(assert (=> b!697531 m!953307))

(declare-fun m!953309 () Bool)

(assert (=> b!697527 m!953309))

(declare-fun m!953311 () Bool)

(assert (=> b!697527 m!953311))

(declare-fun m!953313 () Bool)

(assert (=> b!697530 m!953313))

(declare-fun m!953315 () Bool)

(assert (=> b!697530 m!953315))

(declare-fun m!953317 () Bool)

(assert (=> b!697526 m!953317))

(assert (=> b!697526 m!953035))

(assert (=> b!697526 m!953035))

(assert (=> b!697526 m!953307))

(declare-fun m!953319 () Bool)

(assert (=> b!697528 m!953319))

(declare-fun m!953321 () Bool)

(assert (=> d!233467 m!953321))

(declare-fun m!953323 () Bool)

(assert (=> d!233467 m!953323))

(assert (=> b!697403 d!233467))

(declare-fun d!233469 () Bool)

(declare-fun res!315541 () Bool)

(declare-fun e!439830 () Bool)

(assert (=> d!233469 (=> (not res!315541) (not e!439830))))

(assert (=> d!233469 (= res!315541 ((_ is HashMap!810) (cache!1197 cacheFindLongestMatch!74)))))

(assert (=> d!233469 (= (inv!9813 cacheFindLongestMatch!74) e!439830)))

(declare-fun b!697534 () Bool)

(assert (=> b!697534 (= e!439830 (validCacheMapFindLongestMatch!12 (cache!1197 cacheFindLongestMatch!74) (totalInput!1830 cacheFindLongestMatch!74)))))

(assert (= (and d!233469 res!315541) b!697534))

(assert (=> b!697534 m!953127))

(assert (=> start!66556 d!233469))

(declare-fun d!233471 () Bool)

(assert (=> d!233471 (= (inv!9809 acc!372) (isBalanced!706 (c!121944 acc!372)))))

(declare-fun bs!138014 () Bool)

(assert (= bs!138014 d!233471))

(declare-fun m!953325 () Bool)

(assert (=> bs!138014 m!953325))

(assert (=> start!66556 d!233471))

(declare-fun d!233473 () Bool)

(assert (=> d!233473 (= (inv!9810 input!870) (isBalanced!707 (c!121943 input!870)))))

(declare-fun bs!138015 () Bool)

(assert (= bs!138015 d!233473))

(declare-fun m!953327 () Bool)

(assert (=> bs!138015 m!953327))

(assert (=> start!66556 d!233473))

(declare-fun d!233475 () Bool)

(declare-fun res!315544 () Bool)

(declare-fun e!439833 () Bool)

(assert (=> d!233475 (=> (not res!315544) (not e!439833))))

(assert (=> d!233475 (= res!315544 ((_ is HashMap!811) (cache!1198 cacheDown!515)))))

(assert (=> d!233475 (= (inv!9812 cacheDown!515) e!439833)))

(declare-fun b!697537 () Bool)

(assert (=> b!697537 (= e!439833 (validCacheMapDown!66 (cache!1198 cacheDown!515)))))

(assert (= (and d!233475 res!315544) b!697537))

(assert (=> b!697537 m!953299))

(assert (=> start!66556 d!233475))

(declare-fun d!233477 () Bool)

(assert (=> d!233477 (= (inv!9810 treated!50) (isBalanced!707 (c!121943 treated!50)))))

(declare-fun bs!138016 () Bool)

(assert (= bs!138016 d!233477))

(declare-fun m!953329 () Bool)

(assert (=> bs!138016 m!953329))

(assert (=> start!66556 d!233477))

(declare-fun d!233479 () Bool)

(declare-fun res!315547 () Bool)

(declare-fun e!439836 () Bool)

(assert (=> d!233479 (=> (not res!315547) (not e!439836))))

(assert (=> d!233479 (= res!315547 ((_ is HashMap!809) (cache!1196 cacheUp!502)))))

(assert (=> d!233479 (= (inv!9811 cacheUp!502) e!439836)))

(declare-fun b!697540 () Bool)

(assert (=> b!697540 (= e!439836 (validCacheMapUp!66 (cache!1196 cacheUp!502)))))

(assert (= (and d!233479 res!315547) b!697540))

(assert (=> b!697540 m!953207))

(assert (=> start!66556 d!233479))

(declare-fun d!233481 () Bool)

(assert (=> d!233481 (= (inv!9810 totalInput!378) (isBalanced!707 (c!121943 totalInput!378)))))

(declare-fun bs!138017 () Bool)

(assert (= bs!138017 d!233481))

(declare-fun m!953331 () Bool)

(assert (=> bs!138017 m!953331))

(assert (=> start!66556 d!233481))

(declare-fun b!697542 () Bool)

(declare-fun res!315550 () Bool)

(declare-fun e!439838 () Bool)

(assert (=> b!697542 (=> (not res!315550) (not e!439838))))

(declare-fun lt!286276 () tuple4!152)

(assert (=> b!697542 (= res!315550 (valid!710 (_2!4558 lt!286276)))))

(declare-fun call!43669 () tuple4!152)

(declare-fun bm!43664 () Bool)

(assert (=> bm!43664 (= call!43669 (maxPrefixOneRuleZipperSequenceV2Mem!6 thiss!12529 (h!13086 rules!1486) input!870 totalInput!378 cacheUp!502 cacheDown!515 cacheFindLongestMatch!74))))

(declare-fun b!697543 () Bool)

(declare-fun e!439837 () tuple4!154)

(declare-fun lt!286275 () tuple4!152)

(declare-fun lt!286277 () tuple4!152)

(assert (=> b!697543 (= e!439837 (tuple4!155 (ite (and ((_ is None!1722) (_1!4558 lt!286275)) ((_ is None!1722) (_1!4558 lt!286277))) None!1722 (ite ((_ is None!1722) (_1!4558 lt!286277)) (_1!4558 lt!286275) (ite ((_ is None!1722) (_1!4558 lt!286275)) (_1!4558 lt!286277) (ite (>= (size!6263 (_1!4557 (v!17814 (_1!4558 lt!286275)))) (size!6263 (_1!4557 (v!17814 (_1!4558 lt!286277))))) (_1!4558 lt!286275) (_1!4558 lt!286277))))) (_2!4558 lt!286277) (_4!76 lt!286277) (_3!457 lt!286277)))))

(assert (=> b!697543 (= lt!286275 call!43669)))

(assert (=> b!697543 (= lt!286277 (maxPrefixZipperSequenceV2Mem!13 thiss!12529 (t!87522 rules!1486) input!870 totalInput!378 (_2!4558 lt!286275) (_3!457 lt!286275) (_4!76 lt!286275)))))

(declare-fun b!697544 () Bool)

(declare-fun res!315551 () Bool)

(assert (=> b!697544 (=> (not res!315551) (not e!439838))))

(assert (=> b!697544 (= res!315551 (valid!709 (_4!76 lt!286276)))))

(declare-fun b!697545 () Bool)

(declare-fun lt!286279 () tuple4!152)

(assert (=> b!697545 (= e!439837 (tuple4!155 (_1!4558 lt!286279) (_2!4558 lt!286279) (_4!76 lt!286279) (_3!457 lt!286279)))))

(assert (=> b!697545 (= lt!286279 call!43669)))

(declare-fun b!697546 () Bool)

(declare-fun res!315549 () Bool)

(assert (=> b!697546 (=> (not res!315549) (not e!439838))))

(assert (=> b!697546 (= res!315549 (valid!711 (_3!457 lt!286276)))))

(declare-fun d!233483 () Bool)

(assert (=> d!233483 e!439838))

(declare-fun res!315548 () Bool)

(assert (=> d!233483 (=> (not res!315548) (not e!439838))))

(assert (=> d!233483 (= res!315548 (= (_1!4558 lt!286276) (maxPrefixZipperSequenceV2!132 thiss!12529 rules!1486 input!870 totalInput!378)))))

(declare-fun lt!286280 () tuple4!154)

(assert (=> d!233483 (= lt!286276 (tuple4!153 (_1!4561 lt!286280) (_2!4561 lt!286280) (_4!77 lt!286280) (_3!458 lt!286280)))))

(assert (=> d!233483 (= lt!286280 e!439837)))

(declare-fun c!121976 () Bool)

(assert (=> d!233483 (= c!121976 (and ((_ is Cons!7685) rules!1486) ((_ is Nil!7685) (t!87522 rules!1486))))))

(declare-fun lt!286273 () Unit!12705)

(declare-fun lt!286278 () Unit!12705)

(assert (=> d!233483 (= lt!286273 lt!286278)))

(declare-fun lt!286281 () List!7696)

(declare-fun lt!286274 () List!7696)

(assert (=> d!233483 (isPrefix!921 lt!286281 lt!286274)))

(assert (=> d!233483 (= lt!286278 (lemmaIsPrefixRefl!632 lt!286281 lt!286274))))

(assert (=> d!233483 (= lt!286274 (list!3197 input!870))))

(assert (=> d!233483 (= lt!286281 (list!3197 input!870))))

(assert (=> d!233483 (rulesValidInductive!530 thiss!12529 rules!1486)))

(assert (=> d!233483 (= (maxPrefixZipperSequenceV2Mem!13 thiss!12529 rules!1486 input!870 totalInput!378 cacheUp!502 cacheDown!515 cacheFindLongestMatch!74) lt!286276)))

(declare-fun b!697541 () Bool)

(assert (=> b!697541 (= e!439838 (= (totalInput!1830 (_4!76 lt!286276)) totalInput!378))))

(assert (= (and d!233483 c!121976) b!697545))

(assert (= (and d!233483 (not c!121976)) b!697543))

(assert (= (or b!697545 b!697543) bm!43664))

(assert (= (and d!233483 res!315548) b!697542))

(assert (= (and b!697542 res!315550) b!697546))

(assert (= (and b!697546 res!315549) b!697544))

(assert (= (and b!697544 res!315551) b!697541))

(declare-fun m!953333 () Bool)

(assert (=> bm!43664 m!953333))

(declare-fun m!953335 () Bool)

(assert (=> b!697544 m!953335))

(assert (=> d!233483 m!953253))

(assert (=> d!233483 m!953119))

(declare-fun m!953337 () Bool)

(assert (=> d!233483 m!953337))

(declare-fun m!953339 () Bool)

(assert (=> d!233483 m!953339))

(assert (=> d!233483 m!953033))

(declare-fun m!953341 () Bool)

(assert (=> b!697542 m!953341))

(declare-fun m!953343 () Bool)

(assert (=> b!697546 m!953343))

(declare-fun m!953345 () Bool)

(assert (=> b!697543 m!953345))

(assert (=> b!697383 d!233483))

(declare-fun d!233485 () Bool)

(declare-fun e!439841 () Bool)

(assert (=> d!233485 e!439841))

(declare-fun res!315554 () Bool)

(assert (=> d!233485 (=> res!315554 e!439841)))

(declare-fun lt!286284 () Bool)

(assert (=> d!233485 (= res!315554 (not lt!286284))))

(declare-fun drop!360 (List!7696 Int) List!7696)

(assert (=> d!233485 (= lt!286284 (= lt!286205 (drop!360 lt!286216 (- (size!6266 lt!286216) (size!6266 lt!286205)))))))

(assert (=> d!233485 (= (isSuffix!144 lt!286205 lt!286216) lt!286284)))

(declare-fun b!697549 () Bool)

(assert (=> b!697549 (= e!439841 (>= (size!6266 lt!286216) (size!6266 lt!286205)))))

(assert (= (and d!233485 (not res!315554)) b!697549))

(declare-fun m!953347 () Bool)

(assert (=> d!233485 m!953347))

(assert (=> d!233485 m!953229))

(declare-fun m!953349 () Bool)

(assert (=> d!233485 m!953349))

(assert (=> b!697549 m!953347))

(assert (=> b!697549 m!953229))

(assert (=> b!697364 d!233485))

(declare-fun d!233487 () Bool)

(declare-fun e!439842 () Bool)

(assert (=> d!233487 e!439842))

(declare-fun res!315555 () Bool)

(assert (=> d!233487 (=> res!315555 e!439842)))

(declare-fun lt!286285 () Bool)

(assert (=> d!233487 (= res!315555 (not lt!286285))))

(assert (=> d!233487 (= lt!286285 (= lt!286205 (drop!360 lt!286209 (- (size!6266 lt!286209) (size!6266 lt!286205)))))))

(assert (=> d!233487 (= (isSuffix!144 lt!286205 lt!286209) lt!286285)))

(declare-fun b!697550 () Bool)

(assert (=> b!697550 (= e!439842 (>= (size!6266 lt!286209) (size!6266 lt!286205)))))

(assert (= (and d!233487 (not res!315555)) b!697550))

(declare-fun m!953351 () Bool)

(assert (=> d!233487 m!953351))

(assert (=> d!233487 m!953229))

(declare-fun m!953353 () Bool)

(assert (=> d!233487 m!953353))

(assert (=> b!697550 m!953351))

(assert (=> b!697550 m!953229))

(assert (=> b!697364 d!233487))

(declare-fun d!233489 () Bool)

(assert (=> d!233489 (isSuffix!144 lt!286205 (++!1997 lt!286211 lt!286205))))

(declare-fun lt!286288 () Unit!12705)

(declare-fun choose!4701 (List!7696 List!7696) Unit!12705)

(assert (=> d!233489 (= lt!286288 (choose!4701 lt!286211 lt!286205))))

(assert (=> d!233489 (= (lemmaConcatTwoListThenFSndIsSuffix!144 lt!286211 lt!286205) lt!286288)))

(declare-fun bs!138018 () Bool)

(assert (= bs!138018 d!233489))

(assert (=> bs!138018 m!953029))

(assert (=> bs!138018 m!953029))

(declare-fun m!953355 () Bool)

(assert (=> bs!138018 m!953355))

(declare-fun m!953357 () Bool)

(assert (=> bs!138018 m!953357))

(assert (=> b!697364 d!233489))

(declare-fun b!697559 () Bool)

(declare-fun e!439850 () Bool)

(declare-fun tp!212176 () Bool)

(assert (=> b!697559 (= e!439850 tp!212176)))

(declare-fun b!697560 () Bool)

(declare-fun e!439849 () Bool)

(declare-fun tp!212175 () Bool)

(assert (=> b!697560 (= e!439849 tp!212175)))

(declare-fun setIsEmpty!4031 () Bool)

(declare-fun setRes!4031 () Bool)

(assert (=> setIsEmpty!4031 setRes!4031))

(declare-fun setNonEmpty!4031 () Bool)

(declare-fun setElem!4031 () Context!538)

(declare-fun tp!212178 () Bool)

(declare-fun inv!9821 (Context!538) Bool)

(assert (=> setNonEmpty!4031 (= setRes!4031 (and tp!212178 (inv!9821 setElem!4031) e!439849))))

(declare-fun setRest!4031 () (InoxSet Context!538))

(assert (=> setNonEmpty!4031 (= (_2!4556 (h!13087 mapDefault!3373)) ((_ map or) (store ((as const (Array Context!538 Bool)) false) setElem!4031 true) setRest!4031))))

(declare-fun e!439851 () Bool)

(assert (=> b!697406 (= tp!212163 e!439851)))

(declare-fun tp_is_empty!3657 () Bool)

(declare-fun tp!212179 () Bool)

(declare-fun b!697561 () Bool)

(declare-fun tp!212177 () Bool)

(assert (=> b!697561 (= e!439851 (and tp!212177 (inv!9821 (_2!4555 (_1!4556 (h!13087 mapDefault!3373)))) e!439850 tp_is_empty!3657 setRes!4031 tp!212179))))

(declare-fun condSetEmpty!4031 () Bool)

(assert (=> b!697561 (= condSetEmpty!4031 (= (_2!4556 (h!13087 mapDefault!3373)) ((as const (Array Context!538 Bool)) false)))))

(assert (= b!697561 b!697559))

(assert (= (and b!697561 condSetEmpty!4031) setIsEmpty!4031))

(assert (= (and b!697561 (not condSetEmpty!4031)) setNonEmpty!4031))

(assert (= setNonEmpty!4031 b!697560))

(assert (= (and b!697406 ((_ is Cons!7686) mapDefault!3373)) b!697561))

(declare-fun m!953359 () Bool)

(assert (=> setNonEmpty!4031 m!953359))

(declare-fun m!953361 () Bool)

(assert (=> b!697561 m!953361))

(declare-fun tp!212186 () Bool)

(declare-fun e!439857 () Bool)

(declare-fun b!697570 () Bool)

(declare-fun tp!212187 () Bool)

(assert (=> b!697570 (= e!439857 (and (inv!9816 (left!6067 (c!121943 (totalInput!1830 cacheFindLongestMatch!74)))) tp!212186 (inv!9816 (right!6397 (c!121943 (totalInput!1830 cacheFindLongestMatch!74)))) tp!212187))))

(declare-fun b!697572 () Bool)

(declare-fun e!439856 () Bool)

(declare-fun tp!212188 () Bool)

(assert (=> b!697572 (= e!439856 tp!212188)))

(declare-fun b!697571 () Bool)

(declare-fun inv!9822 (IArray!5383) Bool)

(assert (=> b!697571 (= e!439857 (and (inv!9822 (xs!5344 (c!121943 (totalInput!1830 cacheFindLongestMatch!74)))) e!439856))))

(assert (=> b!697395 (= tp!212161 (and (inv!9816 (c!121943 (totalInput!1830 cacheFindLongestMatch!74))) e!439857))))

(assert (= (and b!697395 ((_ is Node!2691) (c!121943 (totalInput!1830 cacheFindLongestMatch!74)))) b!697570))

(assert (= b!697571 b!697572))

(assert (= (and b!697395 ((_ is Leaf!3978) (c!121943 (totalInput!1830 cacheFindLongestMatch!74)))) b!697571))

(declare-fun m!953363 () Bool)

(assert (=> b!697570 m!953363))

(declare-fun m!953365 () Bool)

(assert (=> b!697570 m!953365))

(declare-fun m!953367 () Bool)

(assert (=> b!697571 m!953367))

(assert (=> b!697395 m!953115))

(declare-fun b!697581 () Bool)

(declare-fun e!439866 () Bool)

(declare-fun tp!212198 () Bool)

(assert (=> b!697581 (= e!439866 tp!212198)))

(declare-fun setIsEmpty!4034 () Bool)

(declare-fun setRes!4034 () Bool)

(assert (=> setIsEmpty!4034 setRes!4034))

(declare-fun e!439865 () Bool)

(declare-fun b!697582 () Bool)

(declare-fun tp!212199 () Bool)

(assert (=> b!697582 (= e!439865 (and (inv!9821 (_1!4551 (_1!4552 (h!13082 (zeroValue!1094 (v!17810 (underlying!1857 (v!17811 (underlying!1858 (cache!1196 cacheUp!502)))))))))) e!439866 tp_is_empty!3657 setRes!4034 tp!212199))))

(declare-fun condSetEmpty!4034 () Bool)

(assert (=> b!697582 (= condSetEmpty!4034 (= (_2!4552 (h!13082 (zeroValue!1094 (v!17810 (underlying!1857 (v!17811 (underlying!1858 (cache!1196 cacheUp!502)))))))) ((as const (Array Context!538 Bool)) false)))))

(declare-fun b!697583 () Bool)

(declare-fun e!439864 () Bool)

(declare-fun tp!212197 () Bool)

(assert (=> b!697583 (= e!439864 tp!212197)))

(assert (=> b!697386 (= tp!212147 e!439865)))

(declare-fun setElem!4034 () Context!538)

(declare-fun tp!212200 () Bool)

(declare-fun setNonEmpty!4034 () Bool)

(assert (=> setNonEmpty!4034 (= setRes!4034 (and tp!212200 (inv!9821 setElem!4034) e!439864))))

(declare-fun setRest!4034 () (InoxSet Context!538))

(assert (=> setNonEmpty!4034 (= (_2!4552 (h!13082 (zeroValue!1094 (v!17810 (underlying!1857 (v!17811 (underlying!1858 (cache!1196 cacheUp!502)))))))) ((_ map or) (store ((as const (Array Context!538 Bool)) false) setElem!4034 true) setRest!4034))))

(assert (= b!697582 b!697581))

(assert (= (and b!697582 condSetEmpty!4034) setIsEmpty!4034))

(assert (= (and b!697582 (not condSetEmpty!4034)) setNonEmpty!4034))

(assert (= setNonEmpty!4034 b!697583))

(assert (= (and b!697386 ((_ is Cons!7681) (zeroValue!1094 (v!17810 (underlying!1857 (v!17811 (underlying!1858 (cache!1196 cacheUp!502)))))))) b!697582))

(declare-fun m!953369 () Bool)

(assert (=> b!697582 m!953369))

(declare-fun m!953371 () Bool)

(assert (=> setNonEmpty!4034 m!953371))

(declare-fun b!697584 () Bool)

(declare-fun e!439869 () Bool)

(declare-fun tp!212202 () Bool)

(assert (=> b!697584 (= e!439869 tp!212202)))

(declare-fun setIsEmpty!4035 () Bool)

(declare-fun setRes!4035 () Bool)

(assert (=> setIsEmpty!4035 setRes!4035))

(declare-fun e!439868 () Bool)

(declare-fun b!697585 () Bool)

(declare-fun tp!212203 () Bool)

(assert (=> b!697585 (= e!439868 (and (inv!9821 (_1!4551 (_1!4552 (h!13082 (minValue!1094 (v!17810 (underlying!1857 (v!17811 (underlying!1858 (cache!1196 cacheUp!502)))))))))) e!439869 tp_is_empty!3657 setRes!4035 tp!212203))))

(declare-fun condSetEmpty!4035 () Bool)

(assert (=> b!697585 (= condSetEmpty!4035 (= (_2!4552 (h!13082 (minValue!1094 (v!17810 (underlying!1857 (v!17811 (underlying!1858 (cache!1196 cacheUp!502)))))))) ((as const (Array Context!538 Bool)) false)))))

(declare-fun b!697586 () Bool)

(declare-fun e!439867 () Bool)

(declare-fun tp!212201 () Bool)

(assert (=> b!697586 (= e!439867 tp!212201)))

(assert (=> b!697386 (= tp!212139 e!439868)))

(declare-fun setNonEmpty!4035 () Bool)

(declare-fun setElem!4035 () Context!538)

(declare-fun tp!212204 () Bool)

(assert (=> setNonEmpty!4035 (= setRes!4035 (and tp!212204 (inv!9821 setElem!4035) e!439867))))

(declare-fun setRest!4035 () (InoxSet Context!538))

(assert (=> setNonEmpty!4035 (= (_2!4552 (h!13082 (minValue!1094 (v!17810 (underlying!1857 (v!17811 (underlying!1858 (cache!1196 cacheUp!502)))))))) ((_ map or) (store ((as const (Array Context!538 Bool)) false) setElem!4035 true) setRest!4035))))

(assert (= b!697585 b!697584))

(assert (= (and b!697585 condSetEmpty!4035) setIsEmpty!4035))

(assert (= (and b!697585 (not condSetEmpty!4035)) setNonEmpty!4035))

(assert (= setNonEmpty!4035 b!697586))

(assert (= (and b!697386 ((_ is Cons!7681) (minValue!1094 (v!17810 (underlying!1857 (v!17811 (underlying!1858 (cache!1196 cacheUp!502)))))))) b!697585))

(declare-fun m!953373 () Bool)

(assert (=> b!697585 m!953373))

(declare-fun m!953375 () Bool)

(assert (=> setNonEmpty!4035 m!953375))

(declare-fun b!697597 () Bool)

(declare-fun b_free!20065 () Bool)

(declare-fun b_next!20129 () Bool)

(assert (=> b!697597 (= b_free!20065 (not b_next!20129))))

(declare-fun tp!212213 () Bool)

(declare-fun b_and!63859 () Bool)

(assert (=> b!697597 (= tp!212213 b_and!63859)))

(declare-fun b_free!20067 () Bool)

(declare-fun b_next!20131 () Bool)

(assert (=> b!697597 (= b_free!20067 (not b_next!20131))))

(declare-fun tp!212215 () Bool)

(declare-fun b_and!63861 () Bool)

(assert (=> b!697597 (= tp!212215 b_and!63861)))

(declare-fun e!439878 () Bool)

(assert (=> b!697597 (= e!439878 (and tp!212213 tp!212215))))

(declare-fun e!439881 () Bool)

(declare-fun tp!212216 () Bool)

(declare-fun b!697596 () Bool)

(assert (=> b!697596 (= e!439881 (and tp!212216 (inv!9807 (tag!1789 (h!13086 (t!87522 rules!1486)))) (inv!9815 (transformation!1527 (h!13086 (t!87522 rules!1486)))) e!439878))))

(declare-fun b!697595 () Bool)

(declare-fun e!439880 () Bool)

(declare-fun tp!212214 () Bool)

(assert (=> b!697595 (= e!439880 (and e!439881 tp!212214))))

(assert (=> b!697385 (= tp!212138 e!439880)))

(assert (= b!697596 b!697597))

(assert (= b!697595 b!697596))

(assert (= (and b!697385 ((_ is Cons!7685) (t!87522 rules!1486))) b!697595))

(declare-fun m!953377 () Bool)

(assert (=> b!697596 m!953377))

(declare-fun m!953379 () Bool)

(assert (=> b!697596 m!953379))

(declare-fun setIsEmpty!4040 () Bool)

(declare-fun setRes!4041 () Bool)

(assert (=> setIsEmpty!4040 setRes!4041))

(declare-fun mapValue!3376 () List!7695)

(declare-fun b!697612 () Bool)

(declare-fun e!439894 () Bool)

(declare-fun setRes!4040 () Bool)

(declare-fun tp!212236 () Bool)

(declare-fun e!439898 () Bool)

(assert (=> b!697612 (= e!439894 (and (inv!9821 (_1!4551 (_1!4552 (h!13082 mapValue!3376)))) e!439898 tp_is_empty!3657 setRes!4040 tp!212236))))

(declare-fun condSetEmpty!4041 () Bool)

(assert (=> b!697612 (= condSetEmpty!4041 (= (_2!4552 (h!13082 mapValue!3376)) ((as const (Array Context!538 Bool)) false)))))

(declare-fun setNonEmpty!4040 () Bool)

(declare-fun e!439897 () Bool)

(declare-fun setElem!4040 () Context!538)

(declare-fun tp!212239 () Bool)

(assert (=> setNonEmpty!4040 (= setRes!4041 (and tp!212239 (inv!9821 setElem!4040) e!439897))))

(declare-fun mapDefault!3376 () List!7695)

(declare-fun setRest!4041 () (InoxSet Context!538))

(assert (=> setNonEmpty!4040 (= (_2!4552 (h!13082 mapDefault!3376)) ((_ map or) (store ((as const (Array Context!538 Bool)) false) setElem!4040 true) setRest!4041))))

(declare-fun b!697613 () Bool)

(declare-fun tp!212241 () Bool)

(assert (=> b!697613 (= e!439898 tp!212241)))

(declare-fun mapIsEmpty!3376 () Bool)

(declare-fun mapRes!3376 () Bool)

(assert (=> mapIsEmpty!3376 mapRes!3376))

(declare-fun tp!212243 () Bool)

(declare-fun setNonEmpty!4041 () Bool)

(declare-fun e!439899 () Bool)

(declare-fun setElem!4041 () Context!538)

(assert (=> setNonEmpty!4041 (= setRes!4040 (and tp!212243 (inv!9821 setElem!4041) e!439899))))

(declare-fun setRest!4040 () (InoxSet Context!538))

(assert (=> setNonEmpty!4041 (= (_2!4552 (h!13082 mapValue!3376)) ((_ map or) (store ((as const (Array Context!538 Bool)) false) setElem!4041 true) setRest!4040))))

(declare-fun b!697614 () Bool)

(declare-fun tp!212235 () Bool)

(assert (=> b!697614 (= e!439899 tp!212235)))

(declare-fun e!439895 () Bool)

(declare-fun tp!212240 () Bool)

(declare-fun e!439896 () Bool)

(declare-fun b!697615 () Bool)

(assert (=> b!697615 (= e!439896 (and (inv!9821 (_1!4551 (_1!4552 (h!13082 mapDefault!3376)))) e!439895 tp_is_empty!3657 setRes!4041 tp!212240))))

(declare-fun condSetEmpty!4040 () Bool)

(assert (=> b!697615 (= condSetEmpty!4040 (= (_2!4552 (h!13082 mapDefault!3376)) ((as const (Array Context!538 Bool)) false)))))

(declare-fun condMapEmpty!3376 () Bool)

(assert (=> mapNonEmpty!3371 (= condMapEmpty!3376 (= mapRest!3373 ((as const (Array (_ BitVec 32) List!7695)) mapDefault!3376)))))

(assert (=> mapNonEmpty!3371 (= tp!212149 (and e!439896 mapRes!3376))))

(declare-fun b!697616 () Bool)

(declare-fun tp!212238 () Bool)

(assert (=> b!697616 (= e!439897 tp!212238)))

(declare-fun setIsEmpty!4041 () Bool)

(assert (=> setIsEmpty!4041 setRes!4040))

(declare-fun b!697617 () Bool)

(declare-fun tp!212242 () Bool)

(assert (=> b!697617 (= e!439895 tp!212242)))

(declare-fun mapNonEmpty!3376 () Bool)

(declare-fun tp!212237 () Bool)

(assert (=> mapNonEmpty!3376 (= mapRes!3376 (and tp!212237 e!439894))))

(declare-fun mapRest!3376 () (Array (_ BitVec 32) List!7695))

(declare-fun mapKey!3376 () (_ BitVec 32))

(assert (=> mapNonEmpty!3376 (= mapRest!3373 (store mapRest!3376 mapKey!3376 mapValue!3376))))

(assert (= (and mapNonEmpty!3371 condMapEmpty!3376) mapIsEmpty!3376))

(assert (= (and mapNonEmpty!3371 (not condMapEmpty!3376)) mapNonEmpty!3376))

(assert (= b!697612 b!697613))

(assert (= (and b!697612 condSetEmpty!4041) setIsEmpty!4041))

(assert (= (and b!697612 (not condSetEmpty!4041)) setNonEmpty!4041))

(assert (= setNonEmpty!4041 b!697614))

(assert (= (and mapNonEmpty!3376 ((_ is Cons!7681) mapValue!3376)) b!697612))

(assert (= b!697615 b!697617))

(assert (= (and b!697615 condSetEmpty!4040) setIsEmpty!4040))

(assert (= (and b!697615 (not condSetEmpty!4040)) setNonEmpty!4040))

(assert (= setNonEmpty!4040 b!697616))

(assert (= (and mapNonEmpty!3371 ((_ is Cons!7681) mapDefault!3376)) b!697615))

(declare-fun m!953381 () Bool)

(assert (=> mapNonEmpty!3376 m!953381))

(declare-fun m!953383 () Bool)

(assert (=> b!697612 m!953383))

(declare-fun m!953385 () Bool)

(assert (=> b!697615 m!953385))

(declare-fun m!953387 () Bool)

(assert (=> setNonEmpty!4041 m!953387))

(declare-fun m!953389 () Bool)

(assert (=> setNonEmpty!4040 m!953389))

(declare-fun b!697618 () Bool)

(declare-fun e!439902 () Bool)

(declare-fun tp!212245 () Bool)

(assert (=> b!697618 (= e!439902 tp!212245)))

(declare-fun setIsEmpty!4042 () Bool)

(declare-fun setRes!4042 () Bool)

(assert (=> setIsEmpty!4042 setRes!4042))

(declare-fun b!697619 () Bool)

(declare-fun e!439901 () Bool)

(declare-fun tp!212246 () Bool)

(assert (=> b!697619 (= e!439901 (and (inv!9821 (_1!4551 (_1!4552 (h!13082 mapValue!3372)))) e!439902 tp_is_empty!3657 setRes!4042 tp!212246))))

(declare-fun condSetEmpty!4042 () Bool)

(assert (=> b!697619 (= condSetEmpty!4042 (= (_2!4552 (h!13082 mapValue!3372)) ((as const (Array Context!538 Bool)) false)))))

(declare-fun b!697620 () Bool)

(declare-fun e!439900 () Bool)

(declare-fun tp!212244 () Bool)

(assert (=> b!697620 (= e!439900 tp!212244)))

(assert (=> mapNonEmpty!3371 (= tp!212162 e!439901)))

(declare-fun tp!212247 () Bool)

(declare-fun setElem!4042 () Context!538)

(declare-fun setNonEmpty!4042 () Bool)

(assert (=> setNonEmpty!4042 (= setRes!4042 (and tp!212247 (inv!9821 setElem!4042) e!439900))))

(declare-fun setRest!4042 () (InoxSet Context!538))

(assert (=> setNonEmpty!4042 (= (_2!4552 (h!13082 mapValue!3372)) ((_ map or) (store ((as const (Array Context!538 Bool)) false) setElem!4042 true) setRest!4042))))

(assert (= b!697619 b!697618))

(assert (= (and b!697619 condSetEmpty!4042) setIsEmpty!4042))

(assert (= (and b!697619 (not condSetEmpty!4042)) setNonEmpty!4042))

(assert (= setNonEmpty!4042 b!697620))

(assert (= (and mapNonEmpty!3371 ((_ is Cons!7681) mapValue!3372)) b!697619))

(declare-fun m!953391 () Bool)

(assert (=> b!697619 m!953391))

(declare-fun m!953393 () Bool)

(assert (=> setNonEmpty!4042 m!953393))

(declare-fun b!697621 () Bool)

(declare-fun e!439904 () Bool)

(declare-fun tp!212249 () Bool)

(assert (=> b!697621 (= e!439904 tp!212249)))

(declare-fun b!697622 () Bool)

(declare-fun e!439903 () Bool)

(declare-fun tp!212248 () Bool)

(assert (=> b!697622 (= e!439903 tp!212248)))

(declare-fun setIsEmpty!4043 () Bool)

(declare-fun setRes!4043 () Bool)

(assert (=> setIsEmpty!4043 setRes!4043))

(declare-fun setElem!4043 () Context!538)

(declare-fun setNonEmpty!4043 () Bool)

(declare-fun tp!212251 () Bool)

(assert (=> setNonEmpty!4043 (= setRes!4043 (and tp!212251 (inv!9821 setElem!4043) e!439903))))

(declare-fun setRest!4043 () (InoxSet Context!538))

(assert (=> setNonEmpty!4043 (= (_2!4556 (h!13087 (zeroValue!1096 (v!17815 (underlying!1861 (v!17816 (underlying!1862 (cache!1198 cacheDown!515)))))))) ((_ map or) (store ((as const (Array Context!538 Bool)) false) setElem!4043 true) setRest!4043))))

(declare-fun e!439905 () Bool)

(assert (=> b!697370 (= tp!212146 e!439905)))

(declare-fun tp!212252 () Bool)

(declare-fun tp!212250 () Bool)

(declare-fun b!697623 () Bool)

(assert (=> b!697623 (= e!439905 (and tp!212250 (inv!9821 (_2!4555 (_1!4556 (h!13087 (zeroValue!1096 (v!17815 (underlying!1861 (v!17816 (underlying!1862 (cache!1198 cacheDown!515)))))))))) e!439904 tp_is_empty!3657 setRes!4043 tp!212252))))

(declare-fun condSetEmpty!4043 () Bool)

(assert (=> b!697623 (= condSetEmpty!4043 (= (_2!4556 (h!13087 (zeroValue!1096 (v!17815 (underlying!1861 (v!17816 (underlying!1862 (cache!1198 cacheDown!515)))))))) ((as const (Array Context!538 Bool)) false)))))

(assert (= b!697623 b!697621))

(assert (= (and b!697623 condSetEmpty!4043) setIsEmpty!4043))

(assert (= (and b!697623 (not condSetEmpty!4043)) setNonEmpty!4043))

(assert (= setNonEmpty!4043 b!697622))

(assert (= (and b!697370 ((_ is Cons!7686) (zeroValue!1096 (v!17815 (underlying!1861 (v!17816 (underlying!1862 (cache!1198 cacheDown!515)))))))) b!697623))

(declare-fun m!953395 () Bool)

(assert (=> setNonEmpty!4043 m!953395))

(declare-fun m!953397 () Bool)

(assert (=> b!697623 m!953397))

(declare-fun b!697624 () Bool)

(declare-fun e!439907 () Bool)

(declare-fun tp!212254 () Bool)

(assert (=> b!697624 (= e!439907 tp!212254)))

(declare-fun b!697625 () Bool)

(declare-fun e!439906 () Bool)

(declare-fun tp!212253 () Bool)

(assert (=> b!697625 (= e!439906 tp!212253)))

(declare-fun setIsEmpty!4044 () Bool)

(declare-fun setRes!4044 () Bool)

(assert (=> setIsEmpty!4044 setRes!4044))

(declare-fun setElem!4044 () Context!538)

(declare-fun setNonEmpty!4044 () Bool)

(declare-fun tp!212256 () Bool)

(assert (=> setNonEmpty!4044 (= setRes!4044 (and tp!212256 (inv!9821 setElem!4044) e!439906))))

(declare-fun setRest!4044 () (InoxSet Context!538))

(assert (=> setNonEmpty!4044 (= (_2!4556 (h!13087 (minValue!1096 (v!17815 (underlying!1861 (v!17816 (underlying!1862 (cache!1198 cacheDown!515)))))))) ((_ map or) (store ((as const (Array Context!538 Bool)) false) setElem!4044 true) setRest!4044))))

(declare-fun e!439908 () Bool)

(assert (=> b!697370 (= tp!212160 e!439908)))

(declare-fun tp!212257 () Bool)

(declare-fun tp!212255 () Bool)

(declare-fun b!697626 () Bool)

(assert (=> b!697626 (= e!439908 (and tp!212255 (inv!9821 (_2!4555 (_1!4556 (h!13087 (minValue!1096 (v!17815 (underlying!1861 (v!17816 (underlying!1862 (cache!1198 cacheDown!515)))))))))) e!439907 tp_is_empty!3657 setRes!4044 tp!212257))))

(declare-fun condSetEmpty!4044 () Bool)

(assert (=> b!697626 (= condSetEmpty!4044 (= (_2!4556 (h!13087 (minValue!1096 (v!17815 (underlying!1861 (v!17816 (underlying!1862 (cache!1198 cacheDown!515)))))))) ((as const (Array Context!538 Bool)) false)))))

(assert (= b!697626 b!697624))

(assert (= (and b!697626 condSetEmpty!4044) setIsEmpty!4044))

(assert (= (and b!697626 (not condSetEmpty!4044)) setNonEmpty!4044))

(assert (= setNonEmpty!4044 b!697625))

(assert (= (and b!697370 ((_ is Cons!7686) (minValue!1096 (v!17815 (underlying!1861 (v!17816 (underlying!1862 (cache!1198 cacheDown!515)))))))) b!697626))

(declare-fun m!953399 () Bool)

(assert (=> setNonEmpty!4044 m!953399))

(declare-fun m!953401 () Bool)

(assert (=> b!697626 m!953401))

(declare-fun mapNonEmpty!3379 () Bool)

(declare-fun mapRes!3379 () Bool)

(declare-fun tp!212281 () Bool)

(declare-fun e!439921 () Bool)

(assert (=> mapNonEmpty!3379 (= mapRes!3379 (and tp!212281 e!439921))))

(declare-fun mapRest!3379 () (Array (_ BitVec 32) List!7700))

(declare-fun mapValue!3379 () List!7700)

(declare-fun mapKey!3379 () (_ BitVec 32))

(assert (=> mapNonEmpty!3379 (= mapRest!3371 (store mapRest!3379 mapKey!3379 mapValue!3379))))

(declare-fun condMapEmpty!3379 () Bool)

(declare-fun mapDefault!3379 () List!7700)

(assert (=> mapNonEmpty!3373 (= condMapEmpty!3379 (= mapRest!3371 ((as const (Array (_ BitVec 32) List!7700)) mapDefault!3379)))))

(declare-fun e!439922 () Bool)

(assert (=> mapNonEmpty!3373 (= tp!212145 (and e!439922 mapRes!3379))))

(declare-fun b!697641 () Bool)

(declare-fun e!439923 () Bool)

(declare-fun tp!212290 () Bool)

(assert (=> b!697641 (= e!439923 tp!212290)))

(declare-fun b!697642 () Bool)

(declare-fun tp!212288 () Bool)

(declare-fun setRes!4050 () Bool)

(declare-fun tp!212284 () Bool)

(assert (=> b!697642 (= e!439921 (and tp!212284 (inv!9821 (_2!4555 (_1!4556 (h!13087 mapValue!3379)))) e!439923 tp_is_empty!3657 setRes!4050 tp!212288))))

(declare-fun condSetEmpty!4050 () Bool)

(assert (=> b!697642 (= condSetEmpty!4050 (= (_2!4556 (h!13087 mapValue!3379)) ((as const (Array Context!538 Bool)) false)))))

(declare-fun setNonEmpty!4049 () Bool)

(declare-fun setRes!4049 () Bool)

(declare-fun tp!212283 () Bool)

(declare-fun setElem!4049 () Context!538)

(declare-fun e!439925 () Bool)

(assert (=> setNonEmpty!4049 (= setRes!4049 (and tp!212283 (inv!9821 setElem!4049) e!439925))))

(declare-fun setRest!4049 () (InoxSet Context!538))

(assert (=> setNonEmpty!4049 (= (_2!4556 (h!13087 mapDefault!3379)) ((_ map or) (store ((as const (Array Context!538 Bool)) false) setElem!4049 true) setRest!4049))))

(declare-fun b!697643 () Bool)

(declare-fun e!439924 () Bool)

(declare-fun tp!212282 () Bool)

(assert (=> b!697643 (= e!439924 tp!212282)))

(declare-fun setIsEmpty!4049 () Bool)

(assert (=> setIsEmpty!4049 setRes!4049))

(declare-fun tp!212289 () Bool)

(declare-fun setElem!4050 () Context!538)

(declare-fun setNonEmpty!4050 () Bool)

(declare-fun e!439926 () Bool)

(assert (=> setNonEmpty!4050 (= setRes!4050 (and tp!212289 (inv!9821 setElem!4050) e!439926))))

(declare-fun setRest!4050 () (InoxSet Context!538))

(assert (=> setNonEmpty!4050 (= (_2!4556 (h!13087 mapValue!3379)) ((_ map or) (store ((as const (Array Context!538 Bool)) false) setElem!4050 true) setRest!4050))))

(declare-fun b!697644 () Bool)

(declare-fun tp!212287 () Bool)

(assert (=> b!697644 (= e!439925 tp!212287)))

(declare-fun b!697645 () Bool)

(declare-fun tp!212286 () Bool)

(assert (=> b!697645 (= e!439926 tp!212286)))

(declare-fun tp!212285 () Bool)

(declare-fun tp!212280 () Bool)

(declare-fun b!697646 () Bool)

(assert (=> b!697646 (= e!439922 (and tp!212280 (inv!9821 (_2!4555 (_1!4556 (h!13087 mapDefault!3379)))) e!439924 tp_is_empty!3657 setRes!4049 tp!212285))))

(declare-fun condSetEmpty!4049 () Bool)

(assert (=> b!697646 (= condSetEmpty!4049 (= (_2!4556 (h!13087 mapDefault!3379)) ((as const (Array Context!538 Bool)) false)))))

(declare-fun mapIsEmpty!3379 () Bool)

(assert (=> mapIsEmpty!3379 mapRes!3379))

(declare-fun setIsEmpty!4050 () Bool)

(assert (=> setIsEmpty!4050 setRes!4050))

(assert (= (and mapNonEmpty!3373 condMapEmpty!3379) mapIsEmpty!3379))

(assert (= (and mapNonEmpty!3373 (not condMapEmpty!3379)) mapNonEmpty!3379))

(assert (= b!697642 b!697641))

(assert (= (and b!697642 condSetEmpty!4050) setIsEmpty!4050))

(assert (= (and b!697642 (not condSetEmpty!4050)) setNonEmpty!4050))

(assert (= setNonEmpty!4050 b!697645))

(assert (= (and mapNonEmpty!3379 ((_ is Cons!7686) mapValue!3379)) b!697642))

(assert (= b!697646 b!697643))

(assert (= (and b!697646 condSetEmpty!4049) setIsEmpty!4049))

(assert (= (and b!697646 (not condSetEmpty!4049)) setNonEmpty!4049))

(assert (= setNonEmpty!4049 b!697644))

(assert (= (and mapNonEmpty!3373 ((_ is Cons!7686) mapDefault!3379)) b!697646))

(declare-fun m!953403 () Bool)

(assert (=> setNonEmpty!4050 m!953403))

(declare-fun m!953405 () Bool)

(assert (=> b!697646 m!953405))

(declare-fun m!953407 () Bool)

(assert (=> setNonEmpty!4049 m!953407))

(declare-fun m!953409 () Bool)

(assert (=> mapNonEmpty!3379 m!953409))

(declare-fun m!953411 () Bool)

(assert (=> b!697642 m!953411))

(declare-fun b!697647 () Bool)

(declare-fun e!439928 () Bool)

(declare-fun tp!212292 () Bool)

(assert (=> b!697647 (= e!439928 tp!212292)))

(declare-fun b!697648 () Bool)

(declare-fun e!439927 () Bool)

(declare-fun tp!212291 () Bool)

(assert (=> b!697648 (= e!439927 tp!212291)))

(declare-fun setIsEmpty!4051 () Bool)

(declare-fun setRes!4051 () Bool)

(assert (=> setIsEmpty!4051 setRes!4051))

(declare-fun setElem!4051 () Context!538)

(declare-fun setNonEmpty!4051 () Bool)

(declare-fun tp!212294 () Bool)

(assert (=> setNonEmpty!4051 (= setRes!4051 (and tp!212294 (inv!9821 setElem!4051) e!439927))))

(declare-fun setRest!4051 () (InoxSet Context!538))

(assert (=> setNonEmpty!4051 (= (_2!4556 (h!13087 mapValue!3373)) ((_ map or) (store ((as const (Array Context!538 Bool)) false) setElem!4051 true) setRest!4051))))

(declare-fun e!439929 () Bool)

(assert (=> mapNonEmpty!3373 (= tp!212141 e!439929)))

(declare-fun tp!212295 () Bool)

(declare-fun tp!212293 () Bool)

(declare-fun b!697649 () Bool)

(assert (=> b!697649 (= e!439929 (and tp!212293 (inv!9821 (_2!4555 (_1!4556 (h!13087 mapValue!3373)))) e!439928 tp_is_empty!3657 setRes!4051 tp!212295))))

(declare-fun condSetEmpty!4051 () Bool)

(assert (=> b!697649 (= condSetEmpty!4051 (= (_2!4556 (h!13087 mapValue!3373)) ((as const (Array Context!538 Bool)) false)))))

(assert (= b!697649 b!697647))

(assert (= (and b!697649 condSetEmpty!4051) setIsEmpty!4051))

(assert (= (and b!697649 (not condSetEmpty!4051)) setNonEmpty!4051))

(assert (= setNonEmpty!4051 b!697648))

(assert (= (and mapNonEmpty!3373 ((_ is Cons!7686) mapValue!3373)) b!697649))

(declare-fun m!953413 () Bool)

(assert (=> setNonEmpty!4051 m!953413))

(declare-fun m!953415 () Bool)

(assert (=> b!697649 m!953415))

(declare-fun condMapEmpty!3382 () Bool)

(declare-fun mapDefault!3382 () List!7697)

(assert (=> mapNonEmpty!3372 (= condMapEmpty!3382 (= mapRest!3372 ((as const (Array (_ BitVec 32) List!7697)) mapDefault!3382)))))

(declare-fun e!439939 () Bool)

(declare-fun mapRes!3382 () Bool)

(assert (=> mapNonEmpty!3372 (= tp!212152 (and e!439939 mapRes!3382))))

(declare-fun b!697660 () Bool)

(declare-fun e!439940 () Bool)

(declare-fun setRes!4056 () Bool)

(declare-fun tp!212314 () Bool)

(assert (=> b!697660 (= e!439940 (and setRes!4056 tp!212314))))

(declare-fun condSetEmpty!4056 () Bool)

(declare-fun mapValue!3382 () List!7697)

(assert (=> b!697660 (= condSetEmpty!4056 (= (_1!4553 (_1!4554 (h!13084 mapValue!3382))) ((as const (Array Context!538 Bool)) false)))))

(declare-fun tp!212316 () Bool)

(declare-fun setElem!4056 () Context!538)

(declare-fun setNonEmpty!4056 () Bool)

(declare-fun e!439938 () Bool)

(declare-fun setRes!4057 () Bool)

(assert (=> setNonEmpty!4056 (= setRes!4057 (and tp!212316 (inv!9821 setElem!4056) e!439938))))

(declare-fun setRest!4057 () (InoxSet Context!538))

(assert (=> setNonEmpty!4056 (= (_1!4553 (_1!4554 (h!13084 mapDefault!3382))) ((_ map or) (store ((as const (Array Context!538 Bool)) false) setElem!4056 true) setRest!4057))))

(declare-fun setIsEmpty!4056 () Bool)

(assert (=> setIsEmpty!4056 setRes!4056))

(declare-fun setIsEmpty!4057 () Bool)

(assert (=> setIsEmpty!4057 setRes!4057))

(declare-fun b!697661 () Bool)

(declare-fun tp!212312 () Bool)

(assert (=> b!697661 (= e!439939 (and setRes!4057 tp!212312))))

(declare-fun condSetEmpty!4057 () Bool)

(assert (=> b!697661 (= condSetEmpty!4057 (= (_1!4553 (_1!4554 (h!13084 mapDefault!3382))) ((as const (Array Context!538 Bool)) false)))))

(declare-fun mapIsEmpty!3382 () Bool)

(assert (=> mapIsEmpty!3382 mapRes!3382))

(declare-fun e!439941 () Bool)

(declare-fun tp!212310 () Bool)

(declare-fun setElem!4057 () Context!538)

(declare-fun setNonEmpty!4057 () Bool)

(assert (=> setNonEmpty!4057 (= setRes!4056 (and tp!212310 (inv!9821 setElem!4057) e!439941))))

(declare-fun setRest!4056 () (InoxSet Context!538))

(assert (=> setNonEmpty!4057 (= (_1!4553 (_1!4554 (h!13084 mapValue!3382))) ((_ map or) (store ((as const (Array Context!538 Bool)) false) setElem!4057 true) setRest!4056))))

(declare-fun mapNonEmpty!3382 () Bool)

(declare-fun tp!212311 () Bool)

(assert (=> mapNonEmpty!3382 (= mapRes!3382 (and tp!212311 e!439940))))

(declare-fun mapRest!3382 () (Array (_ BitVec 32) List!7697))

(declare-fun mapKey!3382 () (_ BitVec 32))

(assert (=> mapNonEmpty!3382 (= mapRest!3372 (store mapRest!3382 mapKey!3382 mapValue!3382))))

(declare-fun b!697662 () Bool)

(declare-fun tp!212315 () Bool)

(assert (=> b!697662 (= e!439941 tp!212315)))

(declare-fun b!697663 () Bool)

(declare-fun tp!212313 () Bool)

(assert (=> b!697663 (= e!439938 tp!212313)))

(assert (= (and mapNonEmpty!3372 condMapEmpty!3382) mapIsEmpty!3382))

(assert (= (and mapNonEmpty!3372 (not condMapEmpty!3382)) mapNonEmpty!3382))

(assert (= (and b!697660 condSetEmpty!4056) setIsEmpty!4056))

(assert (= (and b!697660 (not condSetEmpty!4056)) setNonEmpty!4057))

(assert (= setNonEmpty!4057 b!697662))

(assert (= (and mapNonEmpty!3382 ((_ is Cons!7683) mapValue!3382)) b!697660))

(assert (= (and b!697661 condSetEmpty!4057) setIsEmpty!4057))

(assert (= (and b!697661 (not condSetEmpty!4057)) setNonEmpty!4056))

(assert (= setNonEmpty!4056 b!697663))

(assert (= (and mapNonEmpty!3372 ((_ is Cons!7683) mapDefault!3382)) b!697661))

(declare-fun m!953417 () Bool)

(assert (=> setNonEmpty!4056 m!953417))

(declare-fun m!953419 () Bool)

(assert (=> setNonEmpty!4057 m!953419))

(declare-fun m!953421 () Bool)

(assert (=> mapNonEmpty!3382 m!953421))

(declare-fun b!697671 () Bool)

(declare-fun e!439947 () Bool)

(declare-fun tp!212323 () Bool)

(assert (=> b!697671 (= e!439947 tp!212323)))

(declare-fun setIsEmpty!4060 () Bool)

(declare-fun setRes!4060 () Bool)

(assert (=> setIsEmpty!4060 setRes!4060))

(declare-fun b!697670 () Bool)

(declare-fun e!439946 () Bool)

(declare-fun tp!212324 () Bool)

(assert (=> b!697670 (= e!439946 (and setRes!4060 tp!212324))))

(declare-fun condSetEmpty!4060 () Bool)

(assert (=> b!697670 (= condSetEmpty!4060 (= (_1!4553 (_1!4554 (h!13084 mapValue!3371))) ((as const (Array Context!538 Bool)) false)))))

(assert (=> mapNonEmpty!3372 (= tp!212137 e!439946)))

(declare-fun tp!212325 () Bool)

(declare-fun setNonEmpty!4060 () Bool)

(declare-fun setElem!4060 () Context!538)

(assert (=> setNonEmpty!4060 (= setRes!4060 (and tp!212325 (inv!9821 setElem!4060) e!439947))))

(declare-fun setRest!4060 () (InoxSet Context!538))

(assert (=> setNonEmpty!4060 (= (_1!4553 (_1!4554 (h!13084 mapValue!3371))) ((_ map or) (store ((as const (Array Context!538 Bool)) false) setElem!4060 true) setRest!4060))))

(assert (= (and b!697670 condSetEmpty!4060) setIsEmpty!4060))

(assert (= (and b!697670 (not condSetEmpty!4060)) setNonEmpty!4060))

(assert (= setNonEmpty!4060 b!697671))

(assert (= (and mapNonEmpty!3372 ((_ is Cons!7683) mapValue!3371)) b!697670))

(declare-fun m!953423 () Bool)

(assert (=> setNonEmpty!4060 m!953423))

(declare-fun b!697685 () Bool)

(declare-fun e!439950 () Bool)

(declare-fun tp!212340 () Bool)

(declare-fun tp!212339 () Bool)

(assert (=> b!697685 (= e!439950 (and tp!212340 tp!212339))))

(assert (=> b!697374 (= tp!212153 e!439950)))

(declare-fun b!697683 () Bool)

(declare-fun tp!212338 () Bool)

(declare-fun tp!212336 () Bool)

(assert (=> b!697683 (= e!439950 (and tp!212338 tp!212336))))

(declare-fun b!697682 () Bool)

(assert (=> b!697682 (= e!439950 tp_is_empty!3657)))

(declare-fun b!697684 () Bool)

(declare-fun tp!212337 () Bool)

(assert (=> b!697684 (= e!439950 tp!212337)))

(assert (= (and b!697374 ((_ is ElementMatch!1867) (regex!1527 (h!13086 rules!1486)))) b!697682))

(assert (= (and b!697374 ((_ is Concat!3438) (regex!1527 (h!13086 rules!1486)))) b!697683))

(assert (= (and b!697374 ((_ is Star!1867) (regex!1527 (h!13086 rules!1486)))) b!697684))

(assert (= (and b!697374 ((_ is Union!1867) (regex!1527 (h!13086 rules!1486)))) b!697685))

(declare-fun e!439952 () Bool)

(declare-fun tp!212342 () Bool)

(declare-fun b!697686 () Bool)

(declare-fun tp!212341 () Bool)

(assert (=> b!697686 (= e!439952 (and (inv!9816 (left!6067 (c!121943 totalInput!378))) tp!212341 (inv!9816 (right!6397 (c!121943 totalInput!378))) tp!212342))))

(declare-fun b!697688 () Bool)

(declare-fun e!439951 () Bool)

(declare-fun tp!212343 () Bool)

(assert (=> b!697688 (= e!439951 tp!212343)))

(declare-fun b!697687 () Bool)

(assert (=> b!697687 (= e!439952 (and (inv!9822 (xs!5344 (c!121943 totalInput!378))) e!439951))))

(assert (=> b!697400 (= tp!212143 (and (inv!9816 (c!121943 totalInput!378)) e!439952))))

(assert (= (and b!697400 ((_ is Node!2691) (c!121943 totalInput!378))) b!697686))

(assert (= b!697687 b!697688))

(assert (= (and b!697400 ((_ is Leaf!3978) (c!121943 totalInput!378))) b!697687))

(declare-fun m!953425 () Bool)

(assert (=> b!697686 m!953425))

(declare-fun m!953427 () Bool)

(assert (=> b!697686 m!953427))

(declare-fun m!953429 () Bool)

(assert (=> b!697687 m!953429))

(assert (=> b!697400 m!953105))

(declare-fun b!697690 () Bool)

(declare-fun e!439954 () Bool)

(declare-fun tp!212344 () Bool)

(assert (=> b!697690 (= e!439954 tp!212344)))

(declare-fun setIsEmpty!4061 () Bool)

(declare-fun setRes!4061 () Bool)

(assert (=> setIsEmpty!4061 setRes!4061))

(declare-fun b!697689 () Bool)

(declare-fun e!439953 () Bool)

(declare-fun tp!212345 () Bool)

(assert (=> b!697689 (= e!439953 (and setRes!4061 tp!212345))))

(declare-fun condSetEmpty!4061 () Bool)

(assert (=> b!697689 (= condSetEmpty!4061 (= (_1!4553 (_1!4554 (h!13084 mapDefault!3371))) ((as const (Array Context!538 Bool)) false)))))

(assert (=> b!697362 (= tp!212156 e!439953)))

(declare-fun setNonEmpty!4061 () Bool)

(declare-fun tp!212346 () Bool)

(declare-fun setElem!4061 () Context!538)

(assert (=> setNonEmpty!4061 (= setRes!4061 (and tp!212346 (inv!9821 setElem!4061) e!439954))))

(declare-fun setRest!4061 () (InoxSet Context!538))

(assert (=> setNonEmpty!4061 (= (_1!4553 (_1!4554 (h!13084 mapDefault!3371))) ((_ map or) (store ((as const (Array Context!538 Bool)) false) setElem!4061 true) setRest!4061))))

(assert (= (and b!697689 condSetEmpty!4061) setIsEmpty!4061))

(assert (= (and b!697689 (not condSetEmpty!4061)) setNonEmpty!4061))

(assert (= setNonEmpty!4061 b!697690))

(assert (= (and b!697362 ((_ is Cons!7683) mapDefault!3371)) b!697689))

(declare-fun m!953431 () Bool)

(assert (=> setNonEmpty!4061 m!953431))

(declare-fun tp!212347 () Bool)

(declare-fun tp!212348 () Bool)

(declare-fun e!439956 () Bool)

(declare-fun b!697691 () Bool)

(assert (=> b!697691 (= e!439956 (and (inv!9816 (left!6067 (c!121943 treated!50))) tp!212347 (inv!9816 (right!6397 (c!121943 treated!50))) tp!212348))))

(declare-fun b!697693 () Bool)

(declare-fun e!439955 () Bool)

(declare-fun tp!212349 () Bool)

(assert (=> b!697693 (= e!439955 tp!212349)))

(declare-fun b!697692 () Bool)

(assert (=> b!697692 (= e!439956 (and (inv!9822 (xs!5344 (c!121943 treated!50))) e!439955))))

(assert (=> b!697399 (= tp!212148 (and (inv!9816 (c!121943 treated!50)) e!439956))))

(assert (= (and b!697399 ((_ is Node!2691) (c!121943 treated!50))) b!697691))

(assert (= b!697692 b!697693))

(assert (= (and b!697399 ((_ is Leaf!3978) (c!121943 treated!50))) b!697692))

(declare-fun m!953433 () Bool)

(assert (=> b!697691 m!953433))

(declare-fun m!953435 () Bool)

(assert (=> b!697691 m!953435))

(declare-fun m!953437 () Bool)

(assert (=> b!697692 m!953437))

(assert (=> b!697399 m!953087))

(declare-fun tp!212351 () Bool)

(declare-fun b!697694 () Bool)

(declare-fun e!439958 () Bool)

(declare-fun tp!212350 () Bool)

(assert (=> b!697694 (= e!439958 (and (inv!9816 (left!6067 (c!121943 input!870))) tp!212350 (inv!9816 (right!6397 (c!121943 input!870))) tp!212351))))

(declare-fun b!697696 () Bool)

(declare-fun e!439957 () Bool)

(declare-fun tp!212352 () Bool)

(assert (=> b!697696 (= e!439957 tp!212352)))

(declare-fun b!697695 () Bool)

(assert (=> b!697695 (= e!439958 (and (inv!9822 (xs!5344 (c!121943 input!870))) e!439957))))

(assert (=> b!697389 (= tp!212140 (and (inv!9816 (c!121943 input!870)) e!439958))))

(assert (= (and b!697389 ((_ is Node!2691) (c!121943 input!870))) b!697694))

(assert (= b!697695 b!697696))

(assert (= (and b!697389 ((_ is Leaf!3978) (c!121943 input!870))) b!697695))

(declare-fun m!953439 () Bool)

(assert (=> b!697694 m!953439))

(declare-fun m!953441 () Bool)

(assert (=> b!697694 m!953441))

(declare-fun m!953443 () Bool)

(assert (=> b!697695 m!953443))

(assert (=> b!697389 m!953103))

(declare-fun b!697697 () Bool)

(declare-fun e!439961 () Bool)

(declare-fun tp!212354 () Bool)

(assert (=> b!697697 (= e!439961 tp!212354)))

(declare-fun setIsEmpty!4062 () Bool)

(declare-fun setRes!4062 () Bool)

(assert (=> setIsEmpty!4062 setRes!4062))

(declare-fun e!439960 () Bool)

(declare-fun b!697698 () Bool)

(declare-fun tp!212355 () Bool)

(assert (=> b!697698 (= e!439960 (and (inv!9821 (_1!4551 (_1!4552 (h!13082 mapDefault!3372)))) e!439961 tp_is_empty!3657 setRes!4062 tp!212355))))

(declare-fun condSetEmpty!4062 () Bool)

(assert (=> b!697698 (= condSetEmpty!4062 (= (_2!4552 (h!13082 mapDefault!3372)) ((as const (Array Context!538 Bool)) false)))))

(declare-fun b!697699 () Bool)

(declare-fun e!439959 () Bool)

(declare-fun tp!212353 () Bool)

(assert (=> b!697699 (= e!439959 tp!212353)))

(assert (=> b!697361 (= tp!212142 e!439960)))

(declare-fun setNonEmpty!4062 () Bool)

(declare-fun tp!212356 () Bool)

(declare-fun setElem!4062 () Context!538)

(assert (=> setNonEmpty!4062 (= setRes!4062 (and tp!212356 (inv!9821 setElem!4062) e!439959))))

(declare-fun setRest!4062 () (InoxSet Context!538))

(assert (=> setNonEmpty!4062 (= (_2!4552 (h!13082 mapDefault!3372)) ((_ map or) (store ((as const (Array Context!538 Bool)) false) setElem!4062 true) setRest!4062))))

(assert (= b!697698 b!697697))

(assert (= (and b!697698 condSetEmpty!4062) setIsEmpty!4062))

(assert (= (and b!697698 (not condSetEmpty!4062)) setNonEmpty!4062))

(assert (= setNonEmpty!4062 b!697699))

(assert (= (and b!697361 ((_ is Cons!7681) mapDefault!3372)) b!697698))

(declare-fun m!953445 () Bool)

(assert (=> b!697698 m!953445))

(declare-fun m!953447 () Bool)

(assert (=> setNonEmpty!4062 m!953447))

(declare-fun tp!212365 () Bool)

(declare-fun e!439967 () Bool)

(declare-fun tp!212364 () Bool)

(declare-fun b!697708 () Bool)

(assert (=> b!697708 (= e!439967 (and (inv!9814 (left!6068 (c!121944 acc!372))) tp!212365 (inv!9814 (right!6398 (c!121944 acc!372))) tp!212364))))

(declare-fun b!697710 () Bool)

(declare-fun e!439966 () Bool)

(declare-fun tp!212363 () Bool)

(assert (=> b!697710 (= e!439966 tp!212363)))

(declare-fun b!697709 () Bool)

(declare-fun inv!9823 (IArray!5385) Bool)

(assert (=> b!697709 (= e!439967 (and (inv!9823 (xs!5345 (c!121944 acc!372))) e!439966))))

(assert (=> b!697366 (= tp!212164 (and (inv!9814 (c!121944 acc!372)) e!439967))))

(assert (= (and b!697366 ((_ is Node!2692) (c!121944 acc!372))) b!697708))

(assert (= b!697709 b!697710))

(assert (= (and b!697366 ((_ is Leaf!3979) (c!121944 acc!372))) b!697709))

(declare-fun m!953449 () Bool)

(assert (=> b!697708 m!953449))

(declare-fun m!953451 () Bool)

(assert (=> b!697708 m!953451))

(declare-fun m!953453 () Bool)

(assert (=> b!697709 m!953453))

(assert (=> b!697366 m!953111))

(declare-fun b!697712 () Bool)

(declare-fun e!439969 () Bool)

(declare-fun tp!212366 () Bool)

(assert (=> b!697712 (= e!439969 tp!212366)))

(declare-fun setIsEmpty!4063 () Bool)

(declare-fun setRes!4063 () Bool)

(assert (=> setIsEmpty!4063 setRes!4063))

(declare-fun b!697711 () Bool)

(declare-fun e!439968 () Bool)

(declare-fun tp!212367 () Bool)

(assert (=> b!697711 (= e!439968 (and setRes!4063 tp!212367))))

(declare-fun condSetEmpty!4063 () Bool)

(assert (=> b!697711 (= condSetEmpty!4063 (= (_1!4553 (_1!4554 (h!13084 (zeroValue!1095 (v!17812 (underlying!1859 (v!17813 (underlying!1860 (cache!1197 cacheFindLongestMatch!74))))))))) ((as const (Array Context!538 Bool)) false)))))

(assert (=> b!697392 (= tp!212157 e!439968)))

(declare-fun tp!212368 () Bool)

(declare-fun setElem!4063 () Context!538)

(declare-fun setNonEmpty!4063 () Bool)

(assert (=> setNonEmpty!4063 (= setRes!4063 (and tp!212368 (inv!9821 setElem!4063) e!439969))))

(declare-fun setRest!4063 () (InoxSet Context!538))

(assert (=> setNonEmpty!4063 (= (_1!4553 (_1!4554 (h!13084 (zeroValue!1095 (v!17812 (underlying!1859 (v!17813 (underlying!1860 (cache!1197 cacheFindLongestMatch!74))))))))) ((_ map or) (store ((as const (Array Context!538 Bool)) false) setElem!4063 true) setRest!4063))))

(assert (= (and b!697711 condSetEmpty!4063) setIsEmpty!4063))

(assert (= (and b!697711 (not condSetEmpty!4063)) setNonEmpty!4063))

(assert (= setNonEmpty!4063 b!697712))

(assert (= (and b!697392 ((_ is Cons!7683) (zeroValue!1095 (v!17812 (underlying!1859 (v!17813 (underlying!1860 (cache!1197 cacheFindLongestMatch!74)))))))) b!697711))

(declare-fun m!953455 () Bool)

(assert (=> setNonEmpty!4063 m!953455))

(declare-fun b!697714 () Bool)

(declare-fun e!439971 () Bool)

(declare-fun tp!212369 () Bool)

(assert (=> b!697714 (= e!439971 tp!212369)))

(declare-fun setIsEmpty!4064 () Bool)

(declare-fun setRes!4064 () Bool)

(assert (=> setIsEmpty!4064 setRes!4064))

(declare-fun b!697713 () Bool)

(declare-fun e!439970 () Bool)

(declare-fun tp!212370 () Bool)

(assert (=> b!697713 (= e!439970 (and setRes!4064 tp!212370))))

(declare-fun condSetEmpty!4064 () Bool)

(assert (=> b!697713 (= condSetEmpty!4064 (= (_1!4553 (_1!4554 (h!13084 (minValue!1095 (v!17812 (underlying!1859 (v!17813 (underlying!1860 (cache!1197 cacheFindLongestMatch!74))))))))) ((as const (Array Context!538 Bool)) false)))))

(assert (=> b!697392 (= tp!212151 e!439970)))

(declare-fun setElem!4064 () Context!538)

(declare-fun setNonEmpty!4064 () Bool)

(declare-fun tp!212371 () Bool)

(assert (=> setNonEmpty!4064 (= setRes!4064 (and tp!212371 (inv!9821 setElem!4064) e!439971))))

(declare-fun setRest!4064 () (InoxSet Context!538))

(assert (=> setNonEmpty!4064 (= (_1!4553 (_1!4554 (h!13084 (minValue!1095 (v!17812 (underlying!1859 (v!17813 (underlying!1860 (cache!1197 cacheFindLongestMatch!74))))))))) ((_ map or) (store ((as const (Array Context!538 Bool)) false) setElem!4064 true) setRest!4064))))

(assert (= (and b!697713 condSetEmpty!4064) setIsEmpty!4064))

(assert (= (and b!697713 (not condSetEmpty!4064)) setNonEmpty!4064))

(assert (= setNonEmpty!4064 b!697714))

(assert (= (and b!697392 ((_ is Cons!7683) (minValue!1095 (v!17812 (underlying!1859 (v!17813 (underlying!1860 (cache!1197 cacheFindLongestMatch!74)))))))) b!697713))

(declare-fun m!953457 () Bool)

(assert (=> setNonEmpty!4064 m!953457))

(check-sat (not b_next!20131) (not setNonEmpty!4056) (not b!697440) (not b!697595) (not b!697508) (not b!697534) (not setNonEmpty!4049) (not b!697626) (not b!697543) (not b!697524) (not b!697527) (not b!697502) (not d!233467) (not b!697596) (not b!697685) (not d!233413) b_and!63861 (not b_next!20121) (not d!233477) (not d!233445) (not setNonEmpty!4061) (not b!697474) (not b!697661) (not d!233391) (not b!697526) (not b!697464) (not b!697646) b_and!63843 (not d!233451) (not b!697662) (not b!697546) (not b!697585) b_and!63849 (not d!233471) (not b!697528) (not b!697435) (not b!697428) (not d!233473) (not b!697623) (not b!697438) (not bm!43663) (not b!697660) (not b!697583) (not b!697693) (not b!697507) (not setNonEmpty!4064) (not b!697713) (not b!697461) (not d!233447) (not d!233411) (not b_next!20117) (not d!233425) (not b!697571) (not b!697449) (not d!233407) (not b!697644) (not b!697689) (not b!697498) (not setNonEmpty!4031) (not d!233437) (not b!697509) (not b!697570) (not mapNonEmpty!3379) (not b!697643) (not d!233431) (not b!697481) (not b!697614) (not b!697648) (not d!233403) b_and!63857 (not b!697586) (not d!233397) (not setNonEmpty!4041) (not d!233489) (not b!697433) (not b!697431) (not d!233443) (not b!697641) b_and!63859 (not setNonEmpty!4034) b_and!63847 (not b!697451) (not b!697559) (not b!697642) (not d!233429) (not b!697699) (not b_next!20127) (not b!697459) (not d!233487) (not b!697683) (not b!697399) (not setNonEmpty!4035) (not b!697714) (not d!233415) (not b!697647) (not b!697515) (not b!697622) b_and!63855 (not b!697612) (not setNonEmpty!4043) (not b!697613) (not b!697649) (not d!233483) (not d!233441) (not b!697512) (not b_next!20119) b_and!63851 (not d!233485) (not b!697436) (not b!697437) (not b!697670) (not b!697429) (not b!697619) (not setNonEmpty!4063) (not bm!43664) (not setNonEmpty!4050) (not b!697505) (not b!697618) (not b!697529) (not b!697499) tp_is_empty!3657 (not b!697504) (not d!233449) (not b!697430) (not b!697581) (not b!697549) (not b!697439) (not b!697617) (not b!697698) (not b!697620) (not b_next!20129) (not b!697366) (not d!233433) (not b!697542) (not d!233417) (not setNonEmpty!4062) (not b!697506) (not b!697572) (not setNonEmpty!4060) (not d!233461) (not b!697544) (not b!697687) (not d!233465) (not b!697550) (not b!697395) (not b!697671) (not b!697691) (not b!697696) (not b!697540) b_and!63845 (not b!697712) (not b!697475) (not b!697560) (not b!697500) (not d!233389) (not b!697432) (not b!697695) (not b!697688) b_and!63853 (not b!697561) (not b!697400) (not setNonEmpty!4042) (not d!233463) (not mapNonEmpty!3382) (not b!697621) (not b!697409) (not b!697582) (not b!697389) (not d!233409) (not b!697708) (not b!697645) (not d!233439) (not b!697584) (not b!697522) (not b!697412) (not b!697530) (not b!697663) (not b!697690) (not b!697615) (not b!697462) (not b!697537) (not setNonEmpty!4044) (not b!697692) (not b!697694) (not b!697450) (not b_next!20123) (not b!697684) (not b!697531) (not b!697710) (not d!233481) (not b!697709) (not b!697697) (not b!697624) (not d!233435) (not setNonEmpty!4040) (not b!697616) (not setNonEmpty!4051) (not b!697510) (not b_next!20113) (not b!697711) (not b_next!20115) (not b_next!20125) (not b!697482) (not setNonEmpty!4057) (not b!697452) (not mapNonEmpty!3376) (not b!697686) (not b!697513) (not b!697625))
(check-sat (not b_next!20131) b_and!63843 b_and!63849 (not b_next!20117) b_and!63857 (not b_next!20127) b_and!63855 (not b_next!20129) b_and!63845 b_and!63853 (not b_next!20123) (not b_next!20125) b_and!63861 (not b_next!20121) b_and!63859 b_and!63847 (not b_next!20119) b_and!63851 (not b_next!20113) (not b_next!20115))
