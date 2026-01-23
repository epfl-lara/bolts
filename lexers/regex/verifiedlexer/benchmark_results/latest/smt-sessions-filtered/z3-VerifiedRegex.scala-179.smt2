; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2196 () Bool)

(assert start!2196)

(declare-fun b!39541 () Bool)

(declare-fun b_free!765 () Bool)

(declare-fun b_next!765 () Bool)

(assert (=> b!39541 (= b_free!765 (not b_next!765))))

(declare-fun tp!27499 () Bool)

(declare-fun b_and!799 () Bool)

(assert (=> b!39541 (= tp!27499 b_and!799)))

(declare-fun b!39519 () Bool)

(declare-fun b_free!767 () Bool)

(declare-fun b_next!767 () Bool)

(assert (=> b!39519 (= b_free!767 (not b_next!767))))

(declare-fun tp!27501 () Bool)

(declare-fun b_and!801 () Bool)

(assert (=> b!39519 (= tp!27501 b_and!801)))

(declare-fun b!39536 () Bool)

(declare-fun b_free!769 () Bool)

(declare-fun b_next!769 () Bool)

(assert (=> b!39536 (= b_free!769 (not b_next!769))))

(declare-fun tp!27510 () Bool)

(declare-fun b_and!803 () Bool)

(assert (=> b!39536 (= tp!27510 b_and!803)))

(declare-fun b!39529 () Bool)

(declare-fun b_free!771 () Bool)

(declare-fun b_next!771 () Bool)

(assert (=> b!39529 (= b_free!771 (not b_next!771))))

(declare-fun tp!27500 () Bool)

(declare-fun b_and!805 () Bool)

(assert (=> b!39529 (= tp!27500 b_and!805)))

(declare-fun b!39515 () Bool)

(declare-fun b_free!773 () Bool)

(declare-fun b_next!773 () Bool)

(assert (=> b!39515 (= b_free!773 (not b_next!773))))

(declare-fun tp!27515 () Bool)

(declare-fun b_and!807 () Bool)

(assert (=> b!39515 (= tp!27515 b_and!807)))

(declare-fun b!39523 () Bool)

(declare-fun b_free!775 () Bool)

(declare-fun b_next!775 () Bool)

(assert (=> b!39523 (= b_free!775 (not b_next!775))))

(declare-fun tp!27516 () Bool)

(declare-fun b_and!809 () Bool)

(assert (=> b!39523 (= tp!27516 b_and!809)))

(declare-fun e!20116 () Bool)

(declare-fun b!39512 () Bool)

(declare-fun e!20121 () Bool)

(declare-datatypes ((Regex!203 0))(
  ( (ElementMatch!203 (c!15776 (_ BitVec 16))) (Concat!332 (regOne!918 Regex!203) (regTwo!918 Regex!203)) (EmptyExpr!203) (Star!203 (reg!532 Regex!203)) (EmptyLang!203) (Union!203 (regOne!919 Regex!203) (regTwo!919 Regex!203)) )
))
(declare-datatypes ((List!507 0))(
  ( (Nil!505) (Cons!505 (h!5901 Regex!203) (t!15583 List!507)) )
))
(declare-datatypes ((Context!122 0))(
  ( (Context!123 (exprs!561 List!507)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!162 0))(
  ( (tuple3!163 (_1!372 (InoxSet Context!122)) (_2!372 Int) (_3!94 Int)) )
))
(declare-datatypes ((tuple2!556 0))(
  ( (tuple2!557 (_1!373 tuple3!162) (_2!373 Int)) )
))
(declare-datatypes ((List!508 0))(
  ( (Nil!506) (Cons!506 (h!5902 tuple2!556) (t!15584 List!508)) )
))
(declare-datatypes ((List!509 0))(
  ( (Nil!507) (Cons!507 (h!5903 (_ BitVec 16)) (t!15585 List!509)) )
))
(declare-datatypes ((IArray!167 0))(
  ( (IArray!168 (innerList!141 List!509)) )
))
(declare-datatypes ((Conc!83 0))(
  ( (Node!83 (left!466 Conc!83) (right!796 Conc!83) (csize!396 Int) (cheight!294 Int)) (Leaf!263 (xs!2662 IArray!167) (csize!397 Int)) (Empty!83) )
))
(declare-datatypes ((BalanceConc!166 0))(
  ( (BalanceConc!167 (c!15777 Conc!83)) )
))
(declare-datatypes ((array!526 0))(
  ( (array!527 (arr!270 (Array (_ BitVec 32) (_ BitVec 64))) (size!536 (_ BitVec 32))) )
))
(declare-datatypes ((array!528 0))(
  ( (array!529 (arr!271 (Array (_ BitVec 32) List!508)) (size!537 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!310 0))(
  ( (LongMapFixedSize!311 (defaultEntry!493 Int) (mask!858 (_ BitVec 32)) (extraKeys!401 (_ BitVec 32)) (zeroValue!411 List!508) (minValue!411 List!508) (_size!442 (_ BitVec 32)) (_keys!446 array!526) (_values!433 array!528) (_vacant!215 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!151 0))(
  ( (HashableExt!150 (__x!905 Int)) )
))
(declare-datatypes ((Cell!609 0))(
  ( (Cell!610 (v!12283 LongMapFixedSize!310)) )
))
(declare-datatypes ((MutLongMap!155 0))(
  ( (LongMap!155 (underlying!505 Cell!609)) (MutLongMapExt!154 (__x!906 Int)) )
))
(declare-datatypes ((Cell!611 0))(
  ( (Cell!612 (v!12284 MutLongMap!155)) )
))
(declare-datatypes ((MutableMap!151 0))(
  ( (MutableMapExt!150 (__x!907 Int)) (HashMap!151 (underlying!506 Cell!611) (hashF!2019 Hashable!151) (_size!443 (_ BitVec 32)) (defaultValue!300 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!52 0))(
  ( (CacheFurthestNullable!53 (cache!636 MutableMap!151) (totalInput!1503 BalanceConc!166)) )
))
(declare-fun cacheFurthestNullable!45 () CacheFurthestNullable!52)

(declare-fun e!20117 () Bool)

(declare-fun inv!800 (BalanceConc!166) Bool)

(assert (=> b!39512 (= e!20116 (and e!20117 (inv!800 (totalInput!1503 cacheFurthestNullable!45)) e!20121))))

(declare-fun b!39513 () Bool)

(declare-fun e!20110 () Bool)

(declare-fun e!20113 () Bool)

(declare-datatypes ((tuple2!558 0))(
  ( (tuple2!559 (_1!374 Context!122) (_2!374 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!560 0))(
  ( (tuple2!561 (_1!375 tuple2!558) (_2!375 (InoxSet Context!122))) )
))
(declare-datatypes ((List!510 0))(
  ( (Nil!508) (Cons!508 (h!5904 tuple2!560) (t!15586 List!510)) )
))
(declare-datatypes ((array!530 0))(
  ( (array!531 (arr!272 (Array (_ BitVec 32) List!510)) (size!538 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!312 0))(
  ( (LongMapFixedSize!313 (defaultEntry!494 Int) (mask!859 (_ BitVec 32)) (extraKeys!402 (_ BitVec 32)) (zeroValue!412 List!510) (minValue!412 List!510) (_size!444 (_ BitVec 32)) (_keys!447 array!526) (_values!434 array!530) (_vacant!216 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!613 0))(
  ( (Cell!614 (v!12285 LongMapFixedSize!312)) )
))
(declare-datatypes ((MutLongMap!156 0))(
  ( (LongMap!156 (underlying!507 Cell!613)) (MutLongMapExt!155 (__x!908 Int)) )
))
(declare-fun lt!3750 () MutLongMap!156)

(get-info :version)

(assert (=> b!39513 (= e!20110 (and e!20113 ((_ is LongMap!156) lt!3750)))))

(declare-datatypes ((Hashable!152 0))(
  ( (HashableExt!151 (__x!909 Int)) )
))
(declare-datatypes ((Cell!615 0))(
  ( (Cell!616 (v!12286 MutLongMap!156)) )
))
(declare-datatypes ((MutableMap!152 0))(
  ( (MutableMapExt!151 (__x!910 Int)) (HashMap!152 (underlying!508 Cell!615) (hashF!2020 Hashable!152) (_size!445 (_ BitVec 32)) (defaultValue!301 Int)) )
))
(declare-datatypes ((CacheUp!102 0))(
  ( (CacheUp!103 (cache!637 MutableMap!152)) )
))
(declare-fun cacheUp!320 () CacheUp!102)

(assert (=> b!39513 (= lt!3750 (v!12286 (underlying!508 (cache!637 cacheUp!320))))))

(declare-fun mapIsEmpty!553 () Bool)

(declare-fun mapRes!554 () Bool)

(assert (=> mapIsEmpty!553 mapRes!554))

(declare-fun b!39514 () Bool)

(declare-fun e!20108 () Bool)

(declare-fun tp!27518 () Bool)

(assert (=> b!39514 (= e!20108 (and tp!27518 mapRes!554))))

(declare-fun condMapEmpty!554 () Bool)

(declare-fun mapDefault!554 () List!510)

(assert (=> b!39514 (= condMapEmpty!554 (= (arr!272 (_values!434 (v!12285 (underlying!507 (v!12286 (underlying!508 (cache!637 cacheUp!320))))))) ((as const (Array (_ BitVec 32) List!510)) mapDefault!554)))))

(declare-fun tp!27503 () Bool)

(declare-fun e!20118 () Bool)

(declare-fun e!20123 () Bool)

(declare-fun tp!27514 () Bool)

(declare-fun array_inv!170 (array!526) Bool)

(declare-fun array_inv!171 (array!528) Bool)

(assert (=> b!39515 (= e!20123 (and tp!27515 tp!27514 tp!27503 (array_inv!170 (_keys!446 (v!12283 (underlying!505 (v!12284 (underlying!506 (cache!636 cacheFurthestNullable!45))))))) (array_inv!171 (_values!433 (v!12283 (underlying!505 (v!12284 (underlying!506 (cache!636 cacheFurthestNullable!45))))))) e!20118))))

(declare-fun b!39516 () Bool)

(declare-fun e!20134 () Bool)

(declare-fun tp!27505 () Bool)

(declare-fun mapRes!553 () Bool)

(assert (=> b!39516 (= e!20134 (and tp!27505 mapRes!553))))

(declare-fun condMapEmpty!553 () Bool)

(declare-datatypes ((tuple3!164 0))(
  ( (tuple3!165 (_1!376 Regex!203) (_2!376 Context!122) (_3!95 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!562 0))(
  ( (tuple2!563 (_1!377 tuple3!164) (_2!377 (InoxSet Context!122))) )
))
(declare-datatypes ((List!511 0))(
  ( (Nil!509) (Cons!509 (h!5905 tuple2!562) (t!15587 List!511)) )
))
(declare-datatypes ((array!532 0))(
  ( (array!533 (arr!273 (Array (_ BitVec 32) List!511)) (size!539 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!314 0))(
  ( (LongMapFixedSize!315 (defaultEntry!495 Int) (mask!860 (_ BitVec 32)) (extraKeys!403 (_ BitVec 32)) (zeroValue!413 List!511) (minValue!413 List!511) (_size!446 (_ BitVec 32)) (_keys!448 array!526) (_values!435 array!532) (_vacant!217 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!617 0))(
  ( (Cell!618 (v!12287 LongMapFixedSize!314)) )
))
(declare-datatypes ((MutLongMap!157 0))(
  ( (LongMap!157 (underlying!509 Cell!617)) (MutLongMapExt!156 (__x!911 Int)) )
))
(declare-datatypes ((Cell!619 0))(
  ( (Cell!620 (v!12288 MutLongMap!157)) )
))
(declare-datatypes ((Hashable!153 0))(
  ( (HashableExt!152 (__x!912 Int)) )
))
(declare-datatypes ((MutableMap!153 0))(
  ( (MutableMapExt!152 (__x!913 Int)) (HashMap!153 (underlying!510 Cell!619) (hashF!2021 Hashable!153) (_size!447 (_ BitVec 32)) (defaultValue!302 Int)) )
))
(declare-datatypes ((CacheDown!104 0))(
  ( (CacheDown!105 (cache!638 MutableMap!153)) )
))
(declare-fun cacheDown!333 () CacheDown!104)

(declare-fun mapDefault!555 () List!511)

(assert (=> b!39516 (= condMapEmpty!553 (= (arr!273 (_values!435 (v!12287 (underlying!509 (v!12288 (underlying!510 (cache!638 cacheDown!333))))))) ((as const (Array (_ BitVec 32) List!511)) mapDefault!555)))))

(declare-fun res!28851 () Bool)

(declare-fun e!20119 () Bool)

(assert (=> start!2196 (=> (not res!28851) (not e!20119))))

(declare-datatypes ((TokenValue!129 0))(
  ( (FloatLiteralValue!258 (text!1348 List!509)) (TokenValueExt!128 (__x!914 Int)) (Broken!645 (value!6745 List!509)) (Object!130) (End!129) (Def!129) (Underscore!129) (Match!129) (Else!129) (Error!129) (Case!129) (If!129) (Extends!129) (Abstract!129) (Class!129) (Val!129) (DelimiterValue!258 (del!189 List!509)) (KeywordValue!135 (value!6746 List!509)) (CommentValue!258 (value!6747 List!509)) (WhitespaceValue!258 (value!6748 List!509)) (IndentationValue!129 (value!6749 List!509)) (String!936) (Int32!129) (Broken!646 (value!6750 List!509)) (Boolean!130) (Unit!233) (OperatorValue!132 (op!189 List!509)) (IdentifierValue!258 (value!6751 List!509)) (IdentifierValue!259 (value!6752 List!509)) (WhitespaceValue!259 (value!6753 List!509)) (True!258) (False!258) (Broken!647 (value!6754 List!509)) (Broken!648 (value!6755 List!509)) (True!259) (RightBrace!129) (RightBracket!129) (Colon!129) (Null!129) (Comma!129) (LeftBracket!129) (False!259) (LeftBrace!129) (ImaginaryLiteralValue!129 (text!1349 List!509)) (StringLiteralValue!387 (value!6756 List!509)) (EOFValue!129 (value!6757 List!509)) (IdentValue!129 (value!6758 List!509)) (DelimiterValue!259 (value!6759 List!509)) (DedentValue!129 (value!6760 List!509)) (NewLineValue!129 (value!6761 List!509)) (IntegerValue!387 (value!6762 (_ BitVec 32)) (text!1350 List!509)) (IntegerValue!388 (value!6763 Int) (text!1351 List!509)) (Times!129) (Or!129) (Equal!129) (Minus!129) (Broken!649 (value!6764 List!509)) (And!129) (Div!129) (LessEqual!129) (Mod!129) (Concat!333) (Not!129) (Plus!129) (SpaceValue!129 (value!6765 List!509)) (IntegerValue!389 (value!6766 Int) (text!1352 List!509)) (StringLiteralValue!388 (text!1353 List!509)) (FloatLiteralValue!259 (text!1354 List!509)) (BytesLiteralValue!129 (value!6767 List!509)) (CommentValue!259 (value!6768 List!509)) (StringLiteralValue!389 (value!6769 List!509)) (ErrorTokenValue!129 (msg!190 List!509)) )
))
(declare-datatypes ((String!937 0))(
  ( (String!938 (value!6770 String)) )
))
(declare-datatypes ((TokenValueInjection!82 0))(
  ( (TokenValueInjection!83 (toValue!618 Int) (toChars!477 Int)) )
))
(declare-datatypes ((Rule!78 0))(
  ( (Rule!79 (regex!139 Regex!203) (tag!317 String!937) (isSeparator!139 Bool) (transformation!139 TokenValueInjection!82)) )
))
(declare-datatypes ((List!512 0))(
  ( (Nil!510) (Cons!510 (h!5906 Rule!78) (t!15588 List!512)) )
))
(declare-fun lt!3751 () List!512)

(declare-fun isEmpty!106 (List!512) Bool)

(assert (=> start!2196 (= res!28851 (not (isEmpty!106 lt!3751)))))

(declare-datatypes ((JsonLexer!36 0))(
  ( (JsonLexer!37) )
))
(declare-fun rules!109 (JsonLexer!36) List!512)

(assert (=> start!2196 (= lt!3751 (rules!109 JsonLexer!37))))

(assert (=> start!2196 e!20119))

(declare-fun e!20128 () Bool)

(declare-fun inv!801 (CacheDown!104) Bool)

(assert (=> start!2196 (and (inv!801 cacheDown!333) e!20128)))

(declare-fun input!525 () BalanceConc!166)

(declare-fun e!20135 () Bool)

(assert (=> start!2196 (and (inv!800 input!525) e!20135)))

(declare-fun inv!802 (CacheFurthestNullable!52) Bool)

(assert (=> start!2196 (and (inv!802 cacheFurthestNullable!45) e!20116)))

(declare-fun e!20112 () Bool)

(declare-fun inv!803 (CacheUp!102) Bool)

(assert (=> start!2196 (and (inv!803 cacheUp!320) e!20112)))

(declare-fun mapNonEmpty!553 () Bool)

(declare-fun mapRes!555 () Bool)

(declare-fun tp!27512 () Bool)

(declare-fun tp!27520 () Bool)

(assert (=> mapNonEmpty!553 (= mapRes!555 (and tp!27512 tp!27520))))

(declare-fun mapValue!554 () List!508)

(declare-fun mapRest!553 () (Array (_ BitVec 32) List!508))

(declare-fun mapKey!554 () (_ BitVec 32))

(assert (=> mapNonEmpty!553 (= (arr!271 (_values!433 (v!12283 (underlying!505 (v!12284 (underlying!506 (cache!636 cacheFurthestNullable!45))))))) (store mapRest!553 mapKey!554 mapValue!554))))

(declare-fun b!39517 () Bool)

(declare-fun e!20125 () Bool)

(assert (=> b!39517 (= e!20125 e!20123)))

(declare-fun b!39518 () Bool)

(declare-fun res!28849 () Bool)

(declare-fun e!20124 () Bool)

(assert (=> b!39518 (=> (not res!28849) (not e!20124))))

(declare-fun lt!3759 () List!509)

(declare-datatypes ((Token!50 0))(
  ( (Token!51 (value!6771 TokenValue!129) (rule!618 Rule!78) (size!540 Int) (originalCharacters!196 List!509)) )
))
(declare-datatypes ((List!513 0))(
  ( (Nil!511) (Cons!511 (h!5907 Token!50) (t!15589 List!513)) )
))
(declare-datatypes ((IArray!169 0))(
  ( (IArray!170 (innerList!142 List!513)) )
))
(declare-datatypes ((Conc!84 0))(
  ( (Node!84 (left!467 Conc!84) (right!797 Conc!84) (csize!398 Int) (cheight!295 Int)) (Leaf!264 (xs!2663 IArray!169) (csize!399 Int)) (Empty!84) )
))
(declare-datatypes ((BalanceConc!168 0))(
  ( (BalanceConc!169 (c!15778 Conc!84)) )
))
(declare-datatypes ((tuple2!564 0))(
  ( (tuple2!565 (_1!378 BalanceConc!168) (_2!378 BalanceConc!166)) )
))
(declare-fun lt!3757 () tuple2!564)

(declare-fun list!127 (BalanceConc!166) List!509)

(assert (=> b!39518 (= res!28849 (= lt!3759 (list!127 (_2!378 lt!3757))))))

(declare-fun e!20109 () Bool)

(assert (=> b!39519 (= e!20109 (and e!20110 tp!27501))))

(declare-fun b!39520 () Bool)

(declare-fun e!20122 () Bool)

(declare-fun e!20111 () Bool)

(declare-fun lt!3763 () MutLongMap!155)

(assert (=> b!39520 (= e!20122 (and e!20111 ((_ is LongMap!155) lt!3763)))))

(assert (=> b!39520 (= lt!3763 (v!12284 (underlying!506 (cache!636 cacheFurthestNullable!45))))))

(declare-fun b!39521 () Bool)

(assert (=> b!39521 (= e!20124 false)))

(declare-fun lt!3760 () Bool)

(declare-fun lt!3754 () List!509)

(declare-datatypes ((LexerInterface!36 0))(
  ( (LexerInterfaceExt!33 (__x!915 Int)) (Lexer!34) )
))
(declare-fun lexThenRulesProduceEachTokenIndividually!5 (LexerInterface!36 List!512 List!509) Bool)

(assert (=> b!39521 (= lt!3760 (lexThenRulesProduceEachTokenIndividually!5 Lexer!34 lt!3751 lt!3754))))

(declare-fun b!39522 () Bool)

(declare-fun e!20127 () Bool)

(declare-fun e!20115 () Bool)

(assert (=> b!39522 (= e!20127 e!20115)))

(declare-fun res!28853 () Bool)

(assert (=> b!39522 (=> (not res!28853) (not e!20115))))

(declare-fun lt!3756 () List!509)

(assert (=> b!39522 (= res!28853 (= lt!3756 lt!3759))))

(declare-fun lt!3758 () tuple2!564)

(assert (=> b!39522 (= lt!3759 (list!127 (_2!378 lt!3758)))))

(declare-datatypes ((tuple4!26 0))(
  ( (tuple4!27 (_1!379 tuple2!564) (_2!379 CacheUp!102) (_3!96 CacheDown!104) (_4!13 CacheFurthestNullable!52)) )
))
(declare-fun lt!3755 () tuple4!26)

(assert (=> b!39522 (= lt!3756 (list!127 (_2!378 (_1!379 lt!3755))))))

(assert (=> b!39523 (= e!20117 (and e!20122 tp!27516))))

(declare-fun b!39524 () Bool)

(declare-fun tp!27508 () Bool)

(assert (=> b!39524 (= e!20118 (and tp!27508 mapRes!555))))

(declare-fun condMapEmpty!555 () Bool)

(declare-fun mapDefault!553 () List!508)

(assert (=> b!39524 (= condMapEmpty!555 (= (arr!271 (_values!433 (v!12283 (underlying!505 (v!12284 (underlying!506 (cache!636 cacheFurthestNullable!45))))))) ((as const (Array (_ BitVec 32) List!508)) mapDefault!553)))))

(declare-fun b!39525 () Bool)

(declare-fun res!28846 () Bool)

(assert (=> b!39525 (=> (not res!28846) (not e!20119))))

(assert (=> b!39525 (= res!28846 (= (totalInput!1503 cacheFurthestNullable!45) input!525))))

(declare-fun b!39526 () Bool)

(assert (=> b!39526 (= e!20119 e!20127)))

(declare-fun res!28850 () Bool)

(assert (=> b!39526 (=> (not res!28850) (not e!20127))))

(declare-fun lt!3761 () List!513)

(declare-fun lt!3762 () List!513)

(assert (=> b!39526 (= res!28850 (= lt!3761 lt!3762))))

(declare-fun list!128 (BalanceConc!168) List!513)

(assert (=> b!39526 (= lt!3762 (list!128 (_1!378 lt!3758)))))

(assert (=> b!39526 (= lt!3761 (list!128 (_1!378 (_1!379 lt!3755))))))

(declare-fun lex!12 (LexerInterface!36 List!512 BalanceConc!166) tuple2!564)

(assert (=> b!39526 (= lt!3758 (lex!12 Lexer!34 lt!3751 input!525))))

(declare-datatypes ((Unit!234 0))(
  ( (Unit!235) )
))
(declare-fun lt!3752 () Unit!234)

(declare-fun lemmaInvariant!19 (CacheDown!104) Unit!234)

(assert (=> b!39526 (= lt!3752 (lemmaInvariant!19 (_3!96 lt!3755)))))

(declare-fun lt!3749 () Unit!234)

(declare-fun lemmaInvariant!20 (CacheUp!102) Unit!234)

(assert (=> b!39526 (= lt!3749 (lemmaInvariant!20 (_2!379 lt!3755)))))

(declare-fun lexMem!8 (LexerInterface!36 List!512 BalanceConc!166 CacheUp!102 CacheDown!104 CacheFurthestNullable!52) tuple4!26)

(assert (=> b!39526 (= lt!3755 (lexMem!8 Lexer!34 lt!3751 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(declare-fun b!39527 () Bool)

(assert (=> b!39527 (= e!20112 e!20109)))

(declare-fun b!39528 () Bool)

(declare-fun tp!27511 () Bool)

(declare-fun inv!804 (Conc!83) Bool)

(assert (=> b!39528 (= e!20135 (and (inv!804 (c!15777 input!525)) tp!27511))))

(declare-fun e!20126 () Bool)

(declare-fun tp!27506 () Bool)

(declare-fun tp!27519 () Bool)

(declare-fun array_inv!172 (array!530) Bool)

(assert (=> b!39529 (= e!20126 (and tp!27500 tp!27519 tp!27506 (array_inv!170 (_keys!447 (v!12285 (underlying!507 (v!12286 (underlying!508 (cache!637 cacheUp!320))))))) (array_inv!172 (_values!434 (v!12285 (underlying!507 (v!12286 (underlying!508 (cache!637 cacheUp!320))))))) e!20108))))

(declare-fun b!39530 () Bool)

(declare-fun res!28843 () Bool)

(assert (=> b!39530 (=> (not res!28843) (not e!20119))))

(declare-fun valid!154 (CacheDown!104) Bool)

(assert (=> b!39530 (= res!28843 (valid!154 cacheDown!333))))

(declare-fun b!39531 () Bool)

(declare-fun e!20120 () Bool)

(declare-fun e!20107 () Bool)

(declare-fun lt!3748 () MutLongMap!157)

(assert (=> b!39531 (= e!20120 (and e!20107 ((_ is LongMap!157) lt!3748)))))

(assert (=> b!39531 (= lt!3748 (v!12288 (underlying!510 (cache!638 cacheDown!333))))))

(declare-fun b!39532 () Bool)

(declare-fun res!28845 () Bool)

(assert (=> b!39532 (=> (not res!28845) (not e!20119))))

(declare-fun valid!155 (CacheFurthestNullable!52) Bool)

(assert (=> b!39532 (= res!28845 (valid!155 cacheFurthestNullable!45))))

(declare-fun mapNonEmpty!554 () Bool)

(declare-fun tp!27507 () Bool)

(declare-fun tp!27513 () Bool)

(assert (=> mapNonEmpty!554 (= mapRes!553 (and tp!27507 tp!27513))))

(declare-fun mapRest!554 () (Array (_ BitVec 32) List!511))

(declare-fun mapValue!553 () List!511)

(declare-fun mapKey!555 () (_ BitVec 32))

(assert (=> mapNonEmpty!554 (= (arr!273 (_values!435 (v!12287 (underlying!509 (v!12288 (underlying!510 (cache!638 cacheDown!333))))))) (store mapRest!554 mapKey!555 mapValue!553))))

(declare-fun b!39533 () Bool)

(declare-fun res!28844 () Bool)

(assert (=> b!39533 (=> (not res!28844) (not e!20119))))

(declare-fun valid!156 (CacheUp!102) Bool)

(assert (=> b!39533 (= res!28844 (valid!156 cacheUp!320))))

(declare-fun mapIsEmpty!554 () Bool)

(assert (=> mapIsEmpty!554 mapRes!555))

(declare-fun mapNonEmpty!555 () Bool)

(declare-fun tp!27521 () Bool)

(declare-fun tp!27509 () Bool)

(assert (=> mapNonEmpty!555 (= mapRes!554 (and tp!27521 tp!27509))))

(declare-fun mapValue!555 () List!510)

(declare-fun mapKey!553 () (_ BitVec 32))

(declare-fun mapRest!555 () (Array (_ BitVec 32) List!510))

(assert (=> mapNonEmpty!555 (= (arr!272 (_values!434 (v!12285 (underlying!507 (v!12286 (underlying!508 (cache!637 cacheUp!320))))))) (store mapRest!555 mapKey!553 mapValue!555))))

(declare-fun b!39534 () Bool)

(declare-fun e!20131 () Bool)

(declare-fun e!20130 () Bool)

(assert (=> b!39534 (= e!20131 e!20130)))

(declare-fun mapIsEmpty!555 () Bool)

(assert (=> mapIsEmpty!555 mapRes!553))

(declare-fun b!39535 () Bool)

(declare-fun e!20129 () Bool)

(assert (=> b!39535 (= e!20113 e!20129)))

(declare-fun tp!27517 () Bool)

(declare-fun tp!27502 () Bool)

(declare-fun array_inv!173 (array!532) Bool)

(assert (=> b!39536 (= e!20130 (and tp!27510 tp!27502 tp!27517 (array_inv!170 (_keys!448 (v!12287 (underlying!509 (v!12288 (underlying!510 (cache!638 cacheDown!333))))))) (array_inv!173 (_values!435 (v!12287 (underlying!509 (v!12288 (underlying!510 (cache!638 cacheDown!333))))))) e!20134))))

(declare-fun b!39537 () Bool)

(declare-fun res!28848 () Bool)

(assert (=> b!39537 (=> (not res!28848) (not e!20119))))

(declare-fun rulesInvariant!28 (LexerInterface!36 List!512) Bool)

(assert (=> b!39537 (= res!28848 (rulesInvariant!28 Lexer!34 lt!3751))))

(declare-fun b!39538 () Bool)

(assert (=> b!39538 (= e!20111 e!20125)))

(declare-fun b!39539 () Bool)

(assert (=> b!39539 (= e!20129 e!20126)))

(declare-fun b!39540 () Bool)

(declare-fun e!20133 () Bool)

(assert (=> b!39540 (= e!20115 e!20133)))

(declare-fun res!28852 () Bool)

(assert (=> b!39540 (=> (not res!28852) (not e!20133))))

(declare-fun lt!3753 () BalanceConc!166)

(assert (=> b!39540 (= res!28852 (= (list!127 lt!3753) lt!3754))))

(declare-fun seqFromList!10 (List!509) BalanceConc!166)

(assert (=> b!39540 (= lt!3753 (seqFromList!10 lt!3754))))

(assert (=> b!39540 (= lt!3754 (list!127 input!525))))

(declare-fun e!20132 () Bool)

(assert (=> b!39541 (= e!20132 (and e!20120 tp!27499))))

(declare-fun b!39542 () Bool)

(assert (=> b!39542 (= e!20128 e!20132)))

(declare-fun b!39543 () Bool)

(assert (=> b!39543 (= e!20107 e!20131)))

(declare-fun b!39544 () Bool)

(assert (=> b!39544 (= e!20133 e!20124)))

(declare-fun res!28847 () Bool)

(assert (=> b!39544 (=> (not res!28847) (not e!20124))))

(assert (=> b!39544 (= res!28847 (= lt!3762 (list!128 (_1!378 lt!3757))))))

(assert (=> b!39544 (= lt!3757 (lex!12 Lexer!34 lt!3751 lt!3753))))

(declare-fun b!39545 () Bool)

(declare-fun tp!27504 () Bool)

(assert (=> b!39545 (= e!20121 (and (inv!804 (c!15777 (totalInput!1503 cacheFurthestNullable!45))) tp!27504))))

(assert (= (and start!2196 res!28851) b!39537))

(assert (= (and b!39537 res!28848) b!39533))

(assert (= (and b!39533 res!28844) b!39530))

(assert (= (and b!39530 res!28843) b!39532))

(assert (= (and b!39532 res!28845) b!39525))

(assert (= (and b!39525 res!28846) b!39526))

(assert (= (and b!39526 res!28850) b!39522))

(assert (= (and b!39522 res!28853) b!39540))

(assert (= (and b!39540 res!28852) b!39544))

(assert (= (and b!39544 res!28847) b!39518))

(assert (= (and b!39518 res!28849) b!39521))

(assert (= (and b!39516 condMapEmpty!553) mapIsEmpty!555))

(assert (= (and b!39516 (not condMapEmpty!553)) mapNonEmpty!554))

(assert (= b!39536 b!39516))

(assert (= b!39534 b!39536))

(assert (= b!39543 b!39534))

(assert (= (and b!39531 ((_ is LongMap!157) (v!12288 (underlying!510 (cache!638 cacheDown!333))))) b!39543))

(assert (= b!39541 b!39531))

(assert (= (and b!39542 ((_ is HashMap!153) (cache!638 cacheDown!333))) b!39541))

(assert (= start!2196 b!39542))

(assert (= start!2196 b!39528))

(assert (= (and b!39524 condMapEmpty!555) mapIsEmpty!554))

(assert (= (and b!39524 (not condMapEmpty!555)) mapNonEmpty!553))

(assert (= b!39515 b!39524))

(assert (= b!39517 b!39515))

(assert (= b!39538 b!39517))

(assert (= (and b!39520 ((_ is LongMap!155) (v!12284 (underlying!506 (cache!636 cacheFurthestNullable!45))))) b!39538))

(assert (= b!39523 b!39520))

(assert (= (and b!39512 ((_ is HashMap!151) (cache!636 cacheFurthestNullable!45))) b!39523))

(assert (= b!39512 b!39545))

(assert (= start!2196 b!39512))

(assert (= (and b!39514 condMapEmpty!554) mapIsEmpty!553))

(assert (= (and b!39514 (not condMapEmpty!554)) mapNonEmpty!555))

(assert (= b!39529 b!39514))

(assert (= b!39539 b!39529))

(assert (= b!39535 b!39539))

(assert (= (and b!39513 ((_ is LongMap!156) (v!12286 (underlying!508 (cache!637 cacheUp!320))))) b!39535))

(assert (= b!39519 b!39513))

(assert (= (and b!39527 ((_ is HashMap!152) (cache!637 cacheUp!320))) b!39519))

(assert (= start!2196 b!39527))

(declare-fun m!13244 () Bool)

(assert (=> b!39533 m!13244))

(declare-fun m!13246 () Bool)

(assert (=> b!39528 m!13246))

(declare-fun m!13248 () Bool)

(assert (=> start!2196 m!13248))

(declare-fun m!13250 () Bool)

(assert (=> start!2196 m!13250))

(declare-fun m!13252 () Bool)

(assert (=> start!2196 m!13252))

(declare-fun m!13254 () Bool)

(assert (=> start!2196 m!13254))

(declare-fun m!13256 () Bool)

(assert (=> start!2196 m!13256))

(declare-fun m!13258 () Bool)

(assert (=> start!2196 m!13258))

(declare-fun m!13260 () Bool)

(assert (=> b!39515 m!13260))

(declare-fun m!13262 () Bool)

(assert (=> b!39515 m!13262))

(declare-fun m!13264 () Bool)

(assert (=> b!39529 m!13264))

(declare-fun m!13266 () Bool)

(assert (=> b!39529 m!13266))

(declare-fun m!13268 () Bool)

(assert (=> mapNonEmpty!553 m!13268))

(declare-fun m!13270 () Bool)

(assert (=> b!39532 m!13270))

(declare-fun m!13272 () Bool)

(assert (=> b!39526 m!13272))

(declare-fun m!13274 () Bool)

(assert (=> b!39526 m!13274))

(declare-fun m!13276 () Bool)

(assert (=> b!39526 m!13276))

(declare-fun m!13278 () Bool)

(assert (=> b!39526 m!13278))

(declare-fun m!13280 () Bool)

(assert (=> b!39526 m!13280))

(declare-fun m!13282 () Bool)

(assert (=> b!39526 m!13282))

(declare-fun m!13284 () Bool)

(assert (=> b!39518 m!13284))

(declare-fun m!13286 () Bool)

(assert (=> b!39536 m!13286))

(declare-fun m!13288 () Bool)

(assert (=> b!39536 m!13288))

(declare-fun m!13290 () Bool)

(assert (=> b!39521 m!13290))

(declare-fun m!13292 () Bool)

(assert (=> mapNonEmpty!554 m!13292))

(declare-fun m!13294 () Bool)

(assert (=> b!39522 m!13294))

(declare-fun m!13296 () Bool)

(assert (=> b!39522 m!13296))

(declare-fun m!13298 () Bool)

(assert (=> b!39544 m!13298))

(declare-fun m!13300 () Bool)

(assert (=> b!39544 m!13300))

(declare-fun m!13302 () Bool)

(assert (=> b!39540 m!13302))

(declare-fun m!13304 () Bool)

(assert (=> b!39540 m!13304))

(declare-fun m!13306 () Bool)

(assert (=> b!39540 m!13306))

(declare-fun m!13308 () Bool)

(assert (=> b!39545 m!13308))

(declare-fun m!13310 () Bool)

(assert (=> b!39537 m!13310))

(declare-fun m!13312 () Bool)

(assert (=> b!39512 m!13312))

(declare-fun m!13314 () Bool)

(assert (=> b!39530 m!13314))

(declare-fun m!13316 () Bool)

(assert (=> mapNonEmpty!555 m!13316))

(check-sat (not b!39532) (not b_next!765) (not b_next!775) (not b!39544) b_and!801 (not mapNonEmpty!555) (not b!39524) (not b!39518) (not b_next!771) b_and!807 (not b!39545) (not b!39514) b_and!805 (not b!39526) (not b!39533) (not b!39516) (not b_next!767) b_and!809 (not b_next!773) (not mapNonEmpty!554) (not b!39515) (not b!39512) (not b!39529) (not b!39540) (not start!2196) (not b!39522) b_and!803 (not b_next!769) b_and!799 (not b!39528) (not b!39521) (not mapNonEmpty!553) (not b!39537) (not b!39530) (not b!39536))
(check-sat (not b_next!765) (not b_next!775) b_and!801 (not b_next!773) (not b_next!771) b_and!807 b_and!805 (not b_next!767) b_and!809 b_and!803 (not b_next!769) b_and!799)
