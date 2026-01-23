; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143260 () Bool)

(assert start!143260)

(declare-fun b!1542236 () Bool)

(declare-fun b_free!40423 () Bool)

(declare-fun b_next!41127 () Bool)

(assert (=> b!1542236 (= b_free!40423 (not b_next!41127))))

(declare-fun tp!447594 () Bool)

(declare-fun b_and!107301 () Bool)

(assert (=> b!1542236 (= tp!447594 b_and!107301)))

(declare-fun b!1542237 () Bool)

(declare-fun b_free!40425 () Bool)

(declare-fun b_next!41129 () Bool)

(assert (=> b!1542237 (= b_free!40425 (not b_next!41129))))

(declare-fun tp!447584 () Bool)

(declare-fun b_and!107303 () Bool)

(assert (=> b!1542237 (= tp!447584 b_and!107303)))

(declare-fun b!1542211 () Bool)

(declare-fun b_free!40427 () Bool)

(declare-fun b_next!41131 () Bool)

(assert (=> b!1542211 (= b_free!40427 (not b_next!41131))))

(declare-fun tp!447593 () Bool)

(declare-fun b_and!107305 () Bool)

(assert (=> b!1542211 (= tp!447593 b_and!107305)))

(declare-fun b_free!40429 () Bool)

(declare-fun b_next!41133 () Bool)

(assert (=> b!1542211 (= b_free!40429 (not b_next!41133))))

(declare-fun tp!447587 () Bool)

(declare-fun b_and!107307 () Bool)

(assert (=> b!1542211 (= tp!447587 b_and!107307)))

(declare-fun b!1542234 () Bool)

(declare-fun b_free!40431 () Bool)

(declare-fun b_next!41135 () Bool)

(assert (=> b!1542234 (= b_free!40431 (not b_next!41135))))

(declare-fun tp!447597 () Bool)

(declare-fun b_and!107309 () Bool)

(assert (=> b!1542234 (= tp!447597 b_and!107309)))

(declare-fun b!1542223 () Bool)

(declare-fun b_free!40433 () Bool)

(declare-fun b_next!41137 () Bool)

(assert (=> b!1542223 (= b_free!40433 (not b_next!41137))))

(declare-fun tp!447590 () Bool)

(declare-fun b_and!107311 () Bool)

(assert (=> b!1542223 (= tp!447590 b_and!107311)))

(declare-fun b!1542216 () Bool)

(declare-fun b_free!40435 () Bool)

(declare-fun b_next!41139 () Bool)

(assert (=> b!1542216 (= b_free!40435 (not b_next!41139))))

(declare-fun tp!447586 () Bool)

(declare-fun b_and!107313 () Bool)

(assert (=> b!1542216 (= tp!447586 b_and!107313)))

(declare-fun b!1542239 () Bool)

(declare-fun b_free!40437 () Bool)

(declare-fun b_next!41141 () Bool)

(assert (=> b!1542239 (= b_free!40437 (not b_next!41141))))

(declare-fun tp!447575 () Bool)

(declare-fun b_and!107315 () Bool)

(assert (=> b!1542239 (= tp!447575 b_and!107315)))

(declare-fun mapIsEmpty!7752 () Bool)

(declare-fun mapRes!7752 () Bool)

(assert (=> mapIsEmpty!7752 mapRes!7752))

(declare-fun b!1542205 () Bool)

(declare-fun e!987593 () Bool)

(declare-fun e!987606 () Bool)

(assert (=> b!1542205 (= e!987593 e!987606)))

(declare-fun b!1542207 () Bool)

(declare-fun e!987581 () Bool)

(declare-datatypes ((C!8620 0))(
  ( (C!8621 (val!4882 Int)) )
))
(declare-datatypes ((List!16571 0))(
  ( (Nil!16503) (Cons!16503 (h!21904 C!8620) (t!140777 List!16571)) )
))
(declare-datatypes ((IArray!11031 0))(
  ( (IArray!11032 (innerList!5573 List!16571)) )
))
(declare-datatypes ((Conc!5513 0))(
  ( (Node!5513 (left!13500 Conc!5513) (right!13830 Conc!5513) (csize!11256 Int) (cheight!5724 Int)) (Leaf!8169 (xs!8313 IArray!11031) (csize!11257 Int)) (Empty!5513) )
))
(declare-datatypes ((BalanceConc!10968 0))(
  ( (BalanceConc!10969 (c!251777 Conc!5513)) )
))
(declare-fun totalInput!496 () BalanceConc!10968)

(declare-fun tp!447588 () Bool)

(declare-fun inv!21771 (Conc!5513) Bool)

(assert (=> b!1542207 (= e!987581 (and (inv!21771 (c!251777 totalInput!496)) tp!447588))))

(declare-fun b!1542208 () Bool)

(declare-fun e!987602 () Bool)

(declare-fun e!987588 () Bool)

(declare-datatypes ((Regex!4221 0))(
  ( (ElementMatch!4221 (c!251778 C!8620)) (Concat!7207 (regOne!8954 Regex!4221) (regTwo!8954 Regex!4221)) (EmptyExpr!4221) (Star!4221 (reg!4550 Regex!4221)) (EmptyLang!4221) (Union!4221 (regOne!8955 Regex!4221) (regTwo!8955 Regex!4221)) )
))
(declare-datatypes ((List!16572 0))(
  ( (Nil!16504) (Cons!16504 (h!21905 Regex!4221) (t!140778 List!16572)) )
))
(declare-datatypes ((Context!1478 0))(
  ( (Context!1479 (exprs!1239 List!16572)) )
))
(declare-datatypes ((tuple3!1592 0))(
  ( (tuple3!1593 (_1!9029 Regex!4221) (_2!9029 Context!1478) (_3!1203 C!8620)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!15652 0))(
  ( (tuple2!15653 (_1!9030 tuple3!1592) (_2!9030 (InoxSet Context!1478))) )
))
(declare-datatypes ((List!16573 0))(
  ( (Nil!16505) (Cons!16505 (h!21906 tuple2!15652) (t!140779 List!16573)) )
))
(declare-datatypes ((array!5726 0))(
  ( (array!5727 (arr!2546 (Array (_ BitVec 32) List!16573)) (size!13333 (_ BitVec 32))) )
))
(declare-datatypes ((array!5728 0))(
  ( (array!5729 (arr!2547 (Array (_ BitVec 32) (_ BitVec 64))) (size!13334 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3300 0))(
  ( (LongMapFixedSize!3301 (defaultEntry!2010 Int) (mask!4849 (_ BitVec 32)) (extraKeys!1897 (_ BitVec 32)) (zeroValue!1907 List!16573) (minValue!1907 List!16573) (_size!3381 (_ BitVec 32)) (_keys!1944 array!5728) (_values!1929 array!5726) (_vacant!1711 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6485 0))(
  ( (Cell!6486 (v!23317 LongMapFixedSize!3300)) )
))
(declare-datatypes ((MutLongMap!1650 0))(
  ( (LongMap!1650 (underlying!3509 Cell!6485)) (MutLongMapExt!1649 (__x!10653 Int)) )
))
(declare-fun lt!534668 () MutLongMap!1650)

(get-info :version)

(assert (=> b!1542208 (= e!987602 (and e!987588 ((_ is LongMap!1650) lt!534668)))))

(declare-datatypes ((Cell!6487 0))(
  ( (Cell!6488 (v!23318 MutLongMap!1650)) )
))
(declare-datatypes ((Hashable!1594 0))(
  ( (HashableExt!1593 (__x!10654 Int)) )
))
(declare-datatypes ((MutableMap!1594 0))(
  ( (MutableMapExt!1593 (__x!10655 Int)) (HashMap!1594 (underlying!3510 Cell!6487) (hashF!3513 Hashable!1594) (_size!3382 (_ BitVec 32)) (defaultValue!1754 Int)) )
))
(declare-datatypes ((CacheDown!968 0))(
  ( (CacheDown!969 (cache!1975 MutableMap!1594)) )
))
(declare-fun cacheDown!708 () CacheDown!968)

(assert (=> b!1542208 (= lt!534668 (v!23318 (underlying!3510 (cache!1975 cacheDown!708))))))

(declare-fun mapIsEmpty!7753 () Bool)

(declare-fun mapRes!7754 () Bool)

(assert (=> mapIsEmpty!7753 mapRes!7754))

(declare-fun b!1542209 () Bool)

(declare-fun e!987595 () Bool)

(declare-fun tp!447574 () Bool)

(assert (=> b!1542209 (= e!987595 (and tp!447574 mapRes!7752))))

(declare-fun condMapEmpty!7754 () Bool)

(declare-datatypes ((tuple3!1594 0))(
  ( (tuple3!1595 (_1!9031 (InoxSet Context!1478)) (_2!9031 Int) (_3!1204 Int)) )
))
(declare-datatypes ((tuple2!15654 0))(
  ( (tuple2!15655 (_1!9032 tuple3!1594) (_2!9032 Int)) )
))
(declare-datatypes ((List!16574 0))(
  ( (Nil!16506) (Cons!16506 (h!21907 tuple2!15654) (t!140780 List!16574)) )
))
(declare-datatypes ((array!5730 0))(
  ( (array!5731 (arr!2548 (Array (_ BitVec 32) List!16574)) (size!13335 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3302 0))(
  ( (LongMapFixedSize!3303 (defaultEntry!2011 Int) (mask!4850 (_ BitVec 32)) (extraKeys!1898 (_ BitVec 32)) (zeroValue!1908 List!16574) (minValue!1908 List!16574) (_size!3383 (_ BitVec 32)) (_keys!1945 array!5728) (_values!1930 array!5730) (_vacant!1712 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1595 0))(
  ( (HashableExt!1594 (__x!10656 Int)) )
))
(declare-datatypes ((Cell!6489 0))(
  ( (Cell!6490 (v!23319 LongMapFixedSize!3302)) )
))
(declare-datatypes ((MutLongMap!1651 0))(
  ( (LongMap!1651 (underlying!3511 Cell!6489)) (MutLongMapExt!1650 (__x!10657 Int)) )
))
(declare-datatypes ((Cell!6491 0))(
  ( (Cell!6492 (v!23320 MutLongMap!1651)) )
))
(declare-datatypes ((MutableMap!1595 0))(
  ( (MutableMapExt!1594 (__x!10658 Int)) (HashMap!1595 (underlying!3512 Cell!6491) (hashF!3514 Hashable!1595) (_size!3384 (_ BitVec 32)) (defaultValue!1755 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!388 0))(
  ( (CacheFurthestNullable!389 (cache!1976 MutableMap!1595) (totalInput!2391 BalanceConc!10968)) )
))
(declare-fun cacheFurthestNullable!81 () CacheFurthestNullable!388)

(declare-fun mapDefault!7752 () List!16574)

(assert (=> b!1542209 (= condMapEmpty!7754 (= (arr!2548 (_values!1930 (v!23319 (underlying!3511 (v!23320 (underlying!3512 (cache!1976 cacheFurthestNullable!81))))))) ((as const (Array (_ BitVec 32) List!16574)) mapDefault!7752)))))

(declare-fun e!987594 () Bool)

(declare-fun e!987610 () Bool)

(declare-fun b!1542210 () Bool)

(declare-fun e!987601 () Bool)

(declare-fun inv!21772 (BalanceConc!10968) Bool)

(assert (=> b!1542210 (= e!987610 (and e!987594 (inv!21772 (totalInput!2391 cacheFurthestNullable!81)) e!987601))))

(declare-fun e!987587 () Bool)

(assert (=> b!1542211 (= e!987587 (and tp!447593 tp!447587))))

(declare-fun mapNonEmpty!7752 () Bool)

(declare-fun tp!447598 () Bool)

(declare-fun tp!447583 () Bool)

(assert (=> mapNonEmpty!7752 (= mapRes!7754 (and tp!447598 tp!447583))))

(declare-datatypes ((tuple2!15656 0))(
  ( (tuple2!15657 (_1!9033 Context!1478) (_2!9033 C!8620)) )
))
(declare-datatypes ((tuple2!15658 0))(
  ( (tuple2!15659 (_1!9034 tuple2!15656) (_2!9034 (InoxSet Context!1478))) )
))
(declare-datatypes ((List!16575 0))(
  ( (Nil!16507) (Cons!16507 (h!21908 tuple2!15658) (t!140781 List!16575)) )
))
(declare-datatypes ((array!5732 0))(
  ( (array!5733 (arr!2549 (Array (_ BitVec 32) List!16575)) (size!13336 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3304 0))(
  ( (LongMapFixedSize!3305 (defaultEntry!2012 Int) (mask!4851 (_ BitVec 32)) (extraKeys!1899 (_ BitVec 32)) (zeroValue!1909 List!16575) (minValue!1909 List!16575) (_size!3385 (_ BitVec 32)) (_keys!1946 array!5728) (_values!1931 array!5732) (_vacant!1713 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6493 0))(
  ( (Cell!6494 (v!23321 LongMapFixedSize!3304)) )
))
(declare-datatypes ((MutLongMap!1652 0))(
  ( (LongMap!1652 (underlying!3513 Cell!6493)) (MutLongMapExt!1651 (__x!10659 Int)) )
))
(declare-datatypes ((Cell!6495 0))(
  ( (Cell!6496 (v!23322 MutLongMap!1652)) )
))
(declare-datatypes ((Hashable!1596 0))(
  ( (HashableExt!1595 (__x!10660 Int)) )
))
(declare-datatypes ((MutableMap!1596 0))(
  ( (MutableMapExt!1595 (__x!10661 Int)) (HashMap!1596 (underlying!3514 Cell!6495) (hashF!3515 Hashable!1596) (_size!3386 (_ BitVec 32)) (defaultValue!1756 Int)) )
))
(declare-datatypes ((CacheUp!960 0))(
  ( (CacheUp!961 (cache!1977 MutableMap!1596)) )
))
(declare-fun cacheUp!695 () CacheUp!960)

(declare-fun mapValue!7753 () List!16575)

(declare-fun mapRest!7754 () (Array (_ BitVec 32) List!16575))

(declare-fun mapKey!7753 () (_ BitVec 32))

(assert (=> mapNonEmpty!7752 (= (arr!2549 (_values!1931 (v!23321 (underlying!3513 (v!23322 (underlying!3514 (cache!1977 cacheUp!695))))))) (store mapRest!7754 mapKey!7753 mapValue!7753))))

(declare-fun b!1542212 () Bool)

(declare-fun e!987599 () Bool)

(declare-fun e!987579 () Bool)

(assert (=> b!1542212 (= e!987599 e!987579)))

(declare-fun b!1542213 () Bool)

(declare-fun res!690463 () Bool)

(declare-fun e!987612 () Bool)

(assert (=> b!1542213 (=> (not res!690463) (not e!987612))))

(declare-fun valid!1333 (CacheDown!968) Bool)

(assert (=> b!1542213 (= res!690463 (valid!1333 cacheDown!708))))

(declare-fun b!1542214 () Bool)

(declare-fun e!987583 () Bool)

(declare-fun input!1460 () BalanceConc!10968)

(declare-fun tp!447579 () Bool)

(assert (=> b!1542214 (= e!987583 (and (inv!21771 (c!251777 input!1460)) tp!447579))))

(declare-fun b!1542215 () Bool)

(declare-fun e!987582 () Bool)

(declare-fun e!987600 () Bool)

(assert (=> b!1542215 (= e!987582 e!987600)))

(declare-fun e!987598 () Bool)

(assert (=> b!1542216 (= e!987594 (and e!987598 tp!447586))))

(declare-fun mapIsEmpty!7754 () Bool)

(declare-fun mapRes!7753 () Bool)

(assert (=> mapIsEmpty!7754 mapRes!7753))

(declare-fun b!1542217 () Bool)

(declare-fun tp!447578 () Bool)

(assert (=> b!1542217 (= e!987601 (and (inv!21771 (c!251777 (totalInput!2391 cacheFurthestNullable!81))) tp!447578))))

(declare-fun b!1542218 () Bool)

(declare-fun lt!534670 () MutLongMap!1651)

(assert (=> b!1542218 (= e!987598 (and e!987599 ((_ is LongMap!1651) lt!534670)))))

(assert (=> b!1542218 (= lt!534670 (v!23320 (underlying!3512 (cache!1976 cacheFurthestNullable!81))))))

(declare-fun b!1542219 () Bool)

(declare-fun res!690461 () Bool)

(declare-fun e!987589 () Bool)

(assert (=> b!1542219 (=> (not res!690461) (not e!987589))))

(declare-datatypes ((LexerInterface!2546 0))(
  ( (LexerInterfaceExt!2543 (__x!10662 Int)) (Lexer!2544) )
))
(declare-fun thiss!15733 () LexerInterface!2546)

(declare-datatypes ((List!16576 0))(
  ( (Nil!16508) (Cons!16508 (h!21909 (_ BitVec 16)) (t!140782 List!16576)) )
))
(declare-datatypes ((TokenValue!2986 0))(
  ( (FloatLiteralValue!5972 (text!21347 List!16576)) (TokenValueExt!2985 (__x!10663 Int)) (Broken!14930 (value!92170 List!16576)) (Object!3053) (End!2986) (Def!2986) (Underscore!2986) (Match!2986) (Else!2986) (Error!2986) (Case!2986) (If!2986) (Extends!2986) (Abstract!2986) (Class!2986) (Val!2986) (DelimiterValue!5972 (del!3046 List!16576)) (KeywordValue!2992 (value!92171 List!16576)) (CommentValue!5972 (value!92172 List!16576)) (WhitespaceValue!5972 (value!92173 List!16576)) (IndentationValue!2986 (value!92174 List!16576)) (String!19211) (Int32!2986) (Broken!14931 (value!92175 List!16576)) (Boolean!2987) (Unit!25900) (OperatorValue!2989 (op!3046 List!16576)) (IdentifierValue!5972 (value!92176 List!16576)) (IdentifierValue!5973 (value!92177 List!16576)) (WhitespaceValue!5973 (value!92178 List!16576)) (True!5972) (False!5972) (Broken!14932 (value!92179 List!16576)) (Broken!14933 (value!92180 List!16576)) (True!5973) (RightBrace!2986) (RightBracket!2986) (Colon!2986) (Null!2986) (Comma!2986) (LeftBracket!2986) (False!5973) (LeftBrace!2986) (ImaginaryLiteralValue!2986 (text!21348 List!16576)) (StringLiteralValue!8958 (value!92181 List!16576)) (EOFValue!2986 (value!92182 List!16576)) (IdentValue!2986 (value!92183 List!16576)) (DelimiterValue!5973 (value!92184 List!16576)) (DedentValue!2986 (value!92185 List!16576)) (NewLineValue!2986 (value!92186 List!16576)) (IntegerValue!8958 (value!92187 (_ BitVec 32)) (text!21349 List!16576)) (IntegerValue!8959 (value!92188 Int) (text!21350 List!16576)) (Times!2986) (Or!2986) (Equal!2986) (Minus!2986) (Broken!14934 (value!92189 List!16576)) (And!2986) (Div!2986) (LessEqual!2986) (Mod!2986) (Concat!7208) (Not!2986) (Plus!2986) (SpaceValue!2986 (value!92190 List!16576)) (IntegerValue!8960 (value!92191 Int) (text!21351 List!16576)) (StringLiteralValue!8959 (text!21352 List!16576)) (FloatLiteralValue!5973 (text!21353 List!16576)) (BytesLiteralValue!2986 (value!92192 List!16576)) (CommentValue!5973 (value!92193 List!16576)) (StringLiteralValue!8960 (value!92194 List!16576)) (ErrorTokenValue!2986 (msg!3047 List!16576)) )
))
(declare-datatypes ((String!19212 0))(
  ( (String!19213 (value!92195 String)) )
))
(declare-datatypes ((TokenValueInjection!5632 0))(
  ( (TokenValueInjection!5633 (toValue!4257 Int) (toChars!4116 Int)) )
))
(declare-datatypes ((Rule!5592 0))(
  ( (Rule!5593 (regex!2896 Regex!4221) (tag!3160 String!19212) (isSeparator!2896 Bool) (transformation!2896 TokenValueInjection!5632)) )
))
(declare-datatypes ((List!16577 0))(
  ( (Nil!16509) (Cons!16509 (h!21910 Rule!5592) (t!140783 List!16577)) )
))
(declare-fun rulesArg!359 () List!16577)

(declare-fun rulesValidInductive!892 (LexerInterface!2546 List!16577) Bool)

(assert (=> b!1542219 (= res!690461 (rulesValidInductive!892 thiss!15733 rulesArg!359))))

(declare-fun b!1542220 () Bool)

(declare-fun e!987580 () Bool)

(assert (=> b!1542220 (= e!987580 true)))

(declare-datatypes ((Token!5424 0))(
  ( (Token!5425 (value!92196 TokenValue!2986) (rule!4699 Rule!5592) (size!13337 Int) (originalCharacters!3743 List!16571)) )
))
(declare-datatypes ((tuple2!15660 0))(
  ( (tuple2!15661 (_1!9035 Token!5424) (_2!9035 BalanceConc!10968)) )
))
(declare-datatypes ((Option!2988 0))(
  ( (None!2987) (Some!2987 (v!23323 tuple2!15660)) )
))
(declare-datatypes ((tuple4!814 0))(
  ( (tuple4!815 (_1!9036 Option!2988) (_2!9036 CacheUp!960) (_3!1205 CacheDown!968) (_4!407 CacheFurthestNullable!388)) )
))
(declare-fun lt!534667 () tuple4!814)

(declare-fun lt!534672 () tuple4!814)

(declare-fun maxPrefixZipperSequenceV3Mem!46 (LexerInterface!2546 List!16577 BalanceConc!10968 BalanceConc!10968 CacheUp!960 CacheDown!968 CacheFurthestNullable!388) tuple4!814)

(assert (=> b!1542220 (= lt!534672 (maxPrefixZipperSequenceV3Mem!46 thiss!15733 (t!140783 rulesArg!359) input!1460 totalInput!496 (_2!9036 lt!534667) (_3!1205 lt!534667) (_4!407 lt!534667)))))

(declare-fun maxPrefixOneRuleZipperSequenceV3Mem!38 (LexerInterface!2546 Rule!5592 BalanceConc!10968 BalanceConc!10968 CacheUp!960 CacheDown!968 CacheFurthestNullable!388) tuple4!814)

(assert (=> b!1542220 (= lt!534667 (maxPrefixOneRuleZipperSequenceV3Mem!38 thiss!15733 (h!21910 rulesArg!359) input!1460 totalInput!496 cacheUp!695 cacheDown!708 cacheFurthestNullable!81))))

(declare-fun mapNonEmpty!7753 () Bool)

(declare-fun tp!447573 () Bool)

(declare-fun tp!447572 () Bool)

(assert (=> mapNonEmpty!7753 (= mapRes!7753 (and tp!447573 tp!447572))))

(declare-fun mapRest!7753 () (Array (_ BitVec 32) List!16573))

(declare-fun mapValue!7754 () List!16573)

(declare-fun mapKey!7752 () (_ BitVec 32))

(assert (=> mapNonEmpty!7753 (= (arr!2546 (_values!1929 (v!23317 (underlying!3509 (v!23318 (underlying!3510 (cache!1975 cacheDown!708))))))) (store mapRest!7753 mapKey!7752 mapValue!7754))))

(declare-fun b!1542221 () Bool)

(declare-fun e!987611 () Bool)

(declare-fun e!987585 () Bool)

(assert (=> b!1542221 (= e!987611 e!987585)))

(declare-fun b!1542222 () Bool)

(assert (=> b!1542222 (= e!987612 (not e!987580))))

(declare-fun res!690466 () Bool)

(assert (=> b!1542222 (=> res!690466 e!987580)))

(assert (=> b!1542222 (= res!690466 (or (and ((_ is Cons!16509) rulesArg!359) ((_ is Nil!16509) (t!140783 rulesArg!359))) (not ((_ is Cons!16509) rulesArg!359))))))

(declare-fun lt!534669 () List!16571)

(declare-fun isPrefix!1252 (List!16571 List!16571) Bool)

(assert (=> b!1542222 (isPrefix!1252 lt!534669 lt!534669)))

(declare-datatypes ((Unit!25901 0))(
  ( (Unit!25902) )
))
(declare-fun lt!534671 () Unit!25901)

(declare-fun lemmaIsPrefixRefl!882 (List!16571 List!16571) Unit!25901)

(assert (=> b!1542222 (= lt!534671 (lemmaIsPrefixRefl!882 lt!534669 lt!534669))))

(assert (=> b!1542223 (= e!987606 (and e!987602 tp!447590))))

(declare-fun res!690460 () Bool)

(assert (=> start!143260 (=> (not res!690460) (not e!987589))))

(assert (=> start!143260 (= res!690460 ((_ is Lexer!2544) thiss!15733))))

(assert (=> start!143260 e!987589))

(declare-fun e!987607 () Bool)

(declare-fun inv!21773 (CacheUp!960) Bool)

(assert (=> start!143260 (and (inv!21773 cacheUp!695) e!987607)))

(assert (=> start!143260 (and (inv!21772 input!1460) e!987583)))

(declare-fun inv!21774 (CacheDown!968) Bool)

(assert (=> start!143260 (and (inv!21774 cacheDown!708) e!987593)))

(assert (=> start!143260 true))

(assert (=> start!143260 (and (inv!21772 totalInput!496) e!987581)))

(declare-fun e!987590 () Bool)

(assert (=> start!143260 e!987590))

(declare-fun inv!21775 (CacheFurthestNullable!388) Bool)

(assert (=> start!143260 (and (inv!21775 cacheFurthestNullable!81) e!987610)))

(declare-fun b!1542206 () Bool)

(declare-fun e!987604 () Bool)

(assert (=> b!1542206 (= e!987600 e!987604)))

(declare-fun b!1542224 () Bool)

(declare-fun res!690465 () Bool)

(assert (=> b!1542224 (=> (not res!690465) (not e!987612))))

(declare-fun valid!1334 (CacheUp!960) Bool)

(assert (=> b!1542224 (= res!690465 (valid!1334 cacheUp!695))))

(declare-fun b!1542225 () Bool)

(declare-fun e!987584 () Bool)

(assert (=> b!1542225 (= e!987579 e!987584)))

(declare-fun b!1542226 () Bool)

(declare-fun res!690458 () Bool)

(assert (=> b!1542226 (=> (not res!690458) (not e!987612))))

(assert (=> b!1542226 (= res!690458 (= (totalInput!2391 cacheFurthestNullable!81) totalInput!496))))

(declare-fun b!1542227 () Bool)

(declare-fun e!987603 () Bool)

(declare-fun lt!534673 () MutLongMap!1652)

(assert (=> b!1542227 (= e!987603 (and e!987582 ((_ is LongMap!1652) lt!534673)))))

(assert (=> b!1542227 (= lt!534673 (v!23322 (underlying!3514 (cache!1977 cacheUp!695))))))

(declare-fun b!1542228 () Bool)

(declare-fun e!987605 () Bool)

(declare-fun tp!447595 () Bool)

(assert (=> b!1542228 (= e!987590 (and e!987605 tp!447595))))

(declare-fun b!1542229 () Bool)

(declare-fun res!690462 () Bool)

(assert (=> b!1542229 (=> (not res!690462) (not e!987589))))

(declare-fun isEmpty!10038 (List!16577) Bool)

(assert (=> b!1542229 (= res!690462 (not (isEmpty!10038 rulesArg!359)))))

(declare-fun b!1542230 () Bool)

(declare-fun e!987608 () Bool)

(declare-fun tp!447576 () Bool)

(assert (=> b!1542230 (= e!987608 (and tp!447576 mapRes!7754))))

(declare-fun condMapEmpty!7752 () Bool)

(declare-fun mapDefault!7753 () List!16575)

(assert (=> b!1542230 (= condMapEmpty!7752 (= (arr!2549 (_values!1931 (v!23321 (underlying!3513 (v!23322 (underlying!3514 (cache!1977 cacheUp!695))))))) ((as const (Array (_ BitVec 32) List!16575)) mapDefault!7753)))))

(declare-fun tp!447582 () Bool)

(declare-fun b!1542231 () Bool)

(declare-fun inv!21764 (String!19212) Bool)

(declare-fun inv!21776 (TokenValueInjection!5632) Bool)

(assert (=> b!1542231 (= e!987605 (and tp!447582 (inv!21764 (tag!3160 (h!21910 rulesArg!359))) (inv!21776 (transformation!2896 (h!21910 rulesArg!359))) e!987587))))

(declare-fun b!1542232 () Bool)

(declare-fun e!987609 () Bool)

(assert (=> b!1542232 (= e!987607 e!987609)))

(declare-fun b!1542233 () Bool)

(assert (=> b!1542233 (= e!987588 e!987611)))

(declare-fun tp!447589 () Bool)

(declare-fun tp!447599 () Bool)

(declare-fun array_inv!1831 (array!5728) Bool)

(declare-fun array_inv!1832 (array!5730) Bool)

(assert (=> b!1542234 (= e!987584 (and tp!447597 tp!447589 tp!447599 (array_inv!1831 (_keys!1945 (v!23319 (underlying!3511 (v!23320 (underlying!3512 (cache!1976 cacheFurthestNullable!81))))))) (array_inv!1832 (_values!1930 (v!23319 (underlying!3511 (v!23320 (underlying!3512 (cache!1976 cacheFurthestNullable!81))))))) e!987595))))

(declare-fun mapNonEmpty!7754 () Bool)

(declare-fun tp!447577 () Bool)

(declare-fun tp!447596 () Bool)

(assert (=> mapNonEmpty!7754 (= mapRes!7752 (and tp!447577 tp!447596))))

(declare-fun mapKey!7754 () (_ BitVec 32))

(declare-fun mapValue!7752 () List!16574)

(declare-fun mapRest!7752 () (Array (_ BitVec 32) List!16574))

(assert (=> mapNonEmpty!7754 (= (arr!2548 (_values!1930 (v!23319 (underlying!3511 (v!23320 (underlying!3512 (cache!1976 cacheFurthestNullable!81))))))) (store mapRest!7752 mapKey!7754 mapValue!7752))))

(declare-fun b!1542235 () Bool)

(assert (=> b!1542235 (= e!987589 e!987612)))

(declare-fun res!690464 () Bool)

(assert (=> b!1542235 (=> (not res!690464) (not e!987612))))

(declare-fun isSuffix!340 (List!16571 List!16571) Bool)

(declare-fun list!6440 (BalanceConc!10968) List!16571)

(assert (=> b!1542235 (= res!690464 (isSuffix!340 lt!534669 (list!6440 totalInput!496)))))

(assert (=> b!1542235 (= lt!534669 (list!6440 input!1460))))

(assert (=> b!1542236 (= e!987609 (and e!987603 tp!447594))))

(declare-fun tp!447580 () Bool)

(declare-fun tp!447581 () Bool)

(declare-fun array_inv!1833 (array!5732) Bool)

(assert (=> b!1542237 (= e!987604 (and tp!447584 tp!447580 tp!447581 (array_inv!1831 (_keys!1946 (v!23321 (underlying!3513 (v!23322 (underlying!3514 (cache!1977 cacheUp!695))))))) (array_inv!1833 (_values!1931 (v!23321 (underlying!3513 (v!23322 (underlying!3514 (cache!1977 cacheUp!695))))))) e!987608))))

(declare-fun b!1542238 () Bool)

(declare-fun e!987591 () Bool)

(declare-fun tp!447591 () Bool)

(assert (=> b!1542238 (= e!987591 (and tp!447591 mapRes!7753))))

(declare-fun condMapEmpty!7753 () Bool)

(declare-fun mapDefault!7754 () List!16573)

(assert (=> b!1542238 (= condMapEmpty!7753 (= (arr!2546 (_values!1929 (v!23317 (underlying!3509 (v!23318 (underlying!3510 (cache!1975 cacheDown!708))))))) ((as const (Array (_ BitVec 32) List!16573)) mapDefault!7754)))))

(declare-fun tp!447592 () Bool)

(declare-fun tp!447585 () Bool)

(declare-fun array_inv!1834 (array!5726) Bool)

(assert (=> b!1542239 (= e!987585 (and tp!447575 tp!447592 tp!447585 (array_inv!1831 (_keys!1944 (v!23317 (underlying!3509 (v!23318 (underlying!3510 (cache!1975 cacheDown!708))))))) (array_inv!1834 (_values!1929 (v!23317 (underlying!3509 (v!23318 (underlying!3510 (cache!1975 cacheDown!708))))))) e!987591))))

(declare-fun b!1542240 () Bool)

(declare-fun res!690459 () Bool)

(assert (=> b!1542240 (=> (not res!690459) (not e!987612))))

(declare-fun valid!1335 (CacheFurthestNullable!388) Bool)

(assert (=> b!1542240 (= res!690459 (valid!1335 cacheFurthestNullable!81))))

(assert (= (and start!143260 res!690460) b!1542219))

(assert (= (and b!1542219 res!690461) b!1542229))

(assert (= (and b!1542229 res!690462) b!1542235))

(assert (= (and b!1542235 res!690464) b!1542224))

(assert (= (and b!1542224 res!690465) b!1542213))

(assert (= (and b!1542213 res!690463) b!1542240))

(assert (= (and b!1542240 res!690459) b!1542226))

(assert (= (and b!1542226 res!690458) b!1542222))

(assert (= (and b!1542222 (not res!690466)) b!1542220))

(assert (= (and b!1542230 condMapEmpty!7752) mapIsEmpty!7753))

(assert (= (and b!1542230 (not condMapEmpty!7752)) mapNonEmpty!7752))

(assert (= b!1542237 b!1542230))

(assert (= b!1542206 b!1542237))

(assert (= b!1542215 b!1542206))

(assert (= (and b!1542227 ((_ is LongMap!1652) (v!23322 (underlying!3514 (cache!1977 cacheUp!695))))) b!1542215))

(assert (= b!1542236 b!1542227))

(assert (= (and b!1542232 ((_ is HashMap!1596) (cache!1977 cacheUp!695))) b!1542236))

(assert (= start!143260 b!1542232))

(assert (= start!143260 b!1542214))

(assert (= (and b!1542238 condMapEmpty!7753) mapIsEmpty!7754))

(assert (= (and b!1542238 (not condMapEmpty!7753)) mapNonEmpty!7753))

(assert (= b!1542239 b!1542238))

(assert (= b!1542221 b!1542239))

(assert (= b!1542233 b!1542221))

(assert (= (and b!1542208 ((_ is LongMap!1650) (v!23318 (underlying!3510 (cache!1975 cacheDown!708))))) b!1542233))

(assert (= b!1542223 b!1542208))

(assert (= (and b!1542205 ((_ is HashMap!1594) (cache!1975 cacheDown!708))) b!1542223))

(assert (= start!143260 b!1542205))

(assert (= start!143260 b!1542207))

(assert (= b!1542231 b!1542211))

(assert (= b!1542228 b!1542231))

(assert (= (and start!143260 ((_ is Cons!16509) rulesArg!359)) b!1542228))

(assert (= (and b!1542209 condMapEmpty!7754) mapIsEmpty!7752))

(assert (= (and b!1542209 (not condMapEmpty!7754)) mapNonEmpty!7754))

(assert (= b!1542234 b!1542209))

(assert (= b!1542225 b!1542234))

(assert (= b!1542212 b!1542225))

(assert (= (and b!1542218 ((_ is LongMap!1651) (v!23320 (underlying!3512 (cache!1976 cacheFurthestNullable!81))))) b!1542212))

(assert (= b!1542216 b!1542218))

(assert (= (and b!1542210 ((_ is HashMap!1595) (cache!1976 cacheFurthestNullable!81))) b!1542216))

(assert (= b!1542210 b!1542217))

(assert (= start!143260 b!1542210))

(declare-fun m!1815592 () Bool)

(assert (=> b!1542224 m!1815592))

(declare-fun m!1815594 () Bool)

(assert (=> b!1542235 m!1815594))

(assert (=> b!1542235 m!1815594))

(declare-fun m!1815596 () Bool)

(assert (=> b!1542235 m!1815596))

(declare-fun m!1815598 () Bool)

(assert (=> b!1542235 m!1815598))

(declare-fun m!1815600 () Bool)

(assert (=> b!1542231 m!1815600))

(declare-fun m!1815602 () Bool)

(assert (=> b!1542231 m!1815602))

(declare-fun m!1815604 () Bool)

(assert (=> b!1542207 m!1815604))

(declare-fun m!1815606 () Bool)

(assert (=> b!1542214 m!1815606))

(declare-fun m!1815608 () Bool)

(assert (=> b!1542237 m!1815608))

(declare-fun m!1815610 () Bool)

(assert (=> b!1542237 m!1815610))

(declare-fun m!1815612 () Bool)

(assert (=> b!1542220 m!1815612))

(declare-fun m!1815614 () Bool)

(assert (=> b!1542220 m!1815614))

(declare-fun m!1815616 () Bool)

(assert (=> b!1542240 m!1815616))

(declare-fun m!1815618 () Bool)

(assert (=> start!143260 m!1815618))

(declare-fun m!1815620 () Bool)

(assert (=> start!143260 m!1815620))

(declare-fun m!1815622 () Bool)

(assert (=> start!143260 m!1815622))

(declare-fun m!1815624 () Bool)

(assert (=> start!143260 m!1815624))

(declare-fun m!1815626 () Bool)

(assert (=> start!143260 m!1815626))

(declare-fun m!1815628 () Bool)

(assert (=> b!1542219 m!1815628))

(declare-fun m!1815630 () Bool)

(assert (=> b!1542239 m!1815630))

(declare-fun m!1815632 () Bool)

(assert (=> b!1542239 m!1815632))

(declare-fun m!1815634 () Bool)

(assert (=> b!1542229 m!1815634))

(declare-fun m!1815636 () Bool)

(assert (=> b!1542213 m!1815636))

(declare-fun m!1815638 () Bool)

(assert (=> b!1542234 m!1815638))

(declare-fun m!1815640 () Bool)

(assert (=> b!1542234 m!1815640))

(declare-fun m!1815642 () Bool)

(assert (=> b!1542210 m!1815642))

(declare-fun m!1815644 () Bool)

(assert (=> mapNonEmpty!7752 m!1815644))

(declare-fun m!1815646 () Bool)

(assert (=> mapNonEmpty!7754 m!1815646))

(declare-fun m!1815648 () Bool)

(assert (=> b!1542217 m!1815648))

(declare-fun m!1815650 () Bool)

(assert (=> mapNonEmpty!7753 m!1815650))

(declare-fun m!1815652 () Bool)

(assert (=> b!1542222 m!1815652))

(declare-fun m!1815654 () Bool)

(assert (=> b!1542222 m!1815654))

(check-sat b_and!107301 (not b!1542237) (not b!1542234) b_and!107315 (not b!1542217) (not b_next!41129) (not b_next!41139) b_and!107313 (not b!1542235) (not b!1542229) (not b_next!41127) (not b!1542231) b_and!107311 (not b!1542240) b_and!107305 (not b_next!41137) (not b!1542219) (not start!143260) (not b!1542239) (not b!1542209) (not b!1542207) (not mapNonEmpty!7753) (not b!1542214) (not b_next!41133) (not b!1542210) (not mapNonEmpty!7752) b_and!107307 (not b!1542220) (not b!1542222) (not b!1542228) (not b!1542238) (not b!1542213) b_and!107303 (not b_next!41141) (not b!1542230) (not b_next!41135) (not b_next!41131) b_and!107309 (not mapNonEmpty!7754) (not b!1542224))
(check-sat b_and!107301 b_and!107315 (not b_next!41129) (not b_next!41139) b_and!107313 (not b_next!41127) b_and!107311 b_and!107305 (not b_next!41137) (not b_next!41133) b_and!107307 b_and!107303 (not b_next!41141) (not b_next!41135) (not b_next!41131) b_and!107309)
