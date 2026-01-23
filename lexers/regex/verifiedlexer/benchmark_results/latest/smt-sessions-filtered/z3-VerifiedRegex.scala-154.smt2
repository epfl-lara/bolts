; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1802 () Bool)

(assert start!1802)

(declare-fun b!34770 () Bool)

(declare-fun b_free!417 () Bool)

(declare-fun b_next!417 () Bool)

(assert (=> b!34770 (= b_free!417 (not b_next!417))))

(declare-fun tp!23952 () Bool)

(declare-fun b_and!451 () Bool)

(assert (=> b!34770 (= tp!23952 b_and!451)))

(declare-fun b!34761 () Bool)

(declare-fun b_free!419 () Bool)

(declare-fun b_next!419 () Bool)

(assert (=> b!34761 (= b_free!419 (not b_next!419))))

(declare-fun tp!23949 () Bool)

(declare-fun b_and!453 () Bool)

(assert (=> b!34761 (= tp!23949 b_and!453)))

(declare-fun b!34759 () Bool)

(declare-fun b_free!421 () Bool)

(declare-fun b_next!421 () Bool)

(assert (=> b!34759 (= b_free!421 (not b_next!421))))

(declare-fun tp!23951 () Bool)

(declare-fun b_and!455 () Bool)

(assert (=> b!34759 (= tp!23951 b_and!455)))

(declare-fun b!34769 () Bool)

(declare-fun b_free!423 () Bool)

(declare-fun b_next!423 () Bool)

(assert (=> b!34769 (= b_free!423 (not b_next!423))))

(declare-fun tp!23946 () Bool)

(declare-fun b_and!457 () Bool)

(assert (=> b!34769 (= tp!23946 b_and!457)))

(declare-fun res!27731 () Bool)

(declare-fun e!16296 () Bool)

(assert (=> start!1802 (=> (not res!27731) (not e!16296))))

(declare-datatypes ((Hashable!63 0))(
  ( (HashableExt!62 (__x!610 Int)) )
))
(declare-datatypes ((Regex!153 0))(
  ( (ElementMatch!153 (c!15430 (_ BitVec 16))) (Concat!265 (regOne!818 Regex!153) (regTwo!818 Regex!153)) (EmptyExpr!153) (Star!153 (reg!482 Regex!153)) (EmptyLang!153) (Union!153 (regOne!819 Regex!153) (regTwo!819 Regex!153)) )
))
(declare-datatypes ((List!322 0))(
  ( (Nil!320) (Cons!320 (h!5716 Regex!153) (t!15038 List!322)) )
))
(declare-datatypes ((Context!70 0))(
  ( (Context!71 (exprs!535 List!322)) )
))
(declare-datatypes ((tuple2!232 0))(
  ( (tuple2!233 (_1!153 Context!70) (_2!153 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!234 0))(
  ( (tuple2!235 (_1!154 tuple2!232) (_2!154 (InoxSet Context!70))) )
))
(declare-datatypes ((List!323 0))(
  ( (Nil!321) (Cons!321 (h!5717 tuple2!234) (t!15039 List!323)) )
))
(declare-datatypes ((array!229 0))(
  ( (array!230 (arr!134 (Array (_ BitVec 32) List!323)) (size!377 (_ BitVec 32))) )
))
(declare-datatypes ((array!231 0))(
  ( (array!232 (arr!135 (Array (_ BitVec 32) (_ BitVec 64))) (size!378 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!134 0))(
  ( (LongMapFixedSize!135 (defaultEntry!405 Int) (mask!745 (_ BitVec 32)) (extraKeys!313 (_ BitVec 32)) (zeroValue!323 List!323) (minValue!323 List!323) (_size!266 (_ BitVec 32)) (_keys!358 array!231) (_values!345 array!229) (_vacant!127 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!257 0))(
  ( (Cell!258 (v!12093 LongMapFixedSize!134)) )
))
(declare-datatypes ((MutLongMap!67 0))(
  ( (LongMap!67 (underlying!329 Cell!257)) (MutLongMapExt!66 (__x!611 Int)) )
))
(declare-datatypes ((Cell!259 0))(
  ( (Cell!260 (v!12094 MutLongMap!67)) )
))
(declare-datatypes ((MutableMap!63 0))(
  ( (MutableMapExt!62 (__x!612 Int)) (HashMap!63 (underlying!330 Cell!259) (hashF!1927 Hashable!63) (_size!267 (_ BitVec 32)) (defaultValue!211 Int)) )
))
(declare-datatypes ((CacheUp!56 0))(
  ( (CacheUp!57 (cache!542 MutableMap!63)) )
))
(declare-fun cacheUp!368 () CacheUp!56)

(declare-fun valid!78 (CacheUp!56) Bool)

(assert (=> start!1802 (= res!27731 (valid!78 cacheUp!368))))

(assert (=> start!1802 e!16296))

(declare-fun e!16287 () Bool)

(declare-fun inv!645 (CacheUp!56) Bool)

(assert (=> start!1802 (and (inv!645 cacheUp!368) e!16287)))

(declare-datatypes ((tuple3!74 0))(
  ( (tuple3!75 (_1!155 Regex!153) (_2!155 Context!70) (_3!37 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!236 0))(
  ( (tuple2!237 (_1!156 tuple3!74) (_2!156 (InoxSet Context!70))) )
))
(declare-datatypes ((List!324 0))(
  ( (Nil!322) (Cons!322 (h!5718 tuple2!236) (t!15040 List!324)) )
))
(declare-datatypes ((array!233 0))(
  ( (array!234 (arr!136 (Array (_ BitVec 32) List!324)) (size!379 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!136 0))(
  ( (LongMapFixedSize!137 (defaultEntry!406 Int) (mask!746 (_ BitVec 32)) (extraKeys!314 (_ BitVec 32)) (zeroValue!324 List!324) (minValue!324 List!324) (_size!268 (_ BitVec 32)) (_keys!359 array!231) (_values!346 array!233) (_vacant!128 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!261 0))(
  ( (Cell!262 (v!12095 LongMapFixedSize!136)) )
))
(declare-datatypes ((MutLongMap!68 0))(
  ( (LongMap!68 (underlying!331 Cell!261)) (MutLongMapExt!67 (__x!613 Int)) )
))
(declare-datatypes ((Cell!263 0))(
  ( (Cell!264 (v!12096 MutLongMap!68)) )
))
(declare-datatypes ((Hashable!64 0))(
  ( (HashableExt!63 (__x!614 Int)) )
))
(declare-datatypes ((MutableMap!64 0))(
  ( (MutableMapExt!63 (__x!615 Int)) (HashMap!64 (underlying!332 Cell!263) (hashF!1928 Hashable!64) (_size!269 (_ BitVec 32)) (defaultValue!212 Int)) )
))
(declare-datatypes ((CacheDown!60 0))(
  ( (CacheDown!61 (cache!543 MutableMap!64)) )
))
(declare-fun cacheDown!381 () CacheDown!60)

(declare-fun e!16288 () Bool)

(declare-fun inv!646 (CacheDown!60) Bool)

(assert (=> start!1802 (and (inv!646 cacheDown!381) e!16288)))

(declare-datatypes ((String!775 0))(
  ( (String!776 (value!6211 String)) )
))
(declare-fun path!6 () String!775)

(declare-fun inv!644 (String!775) Bool)

(assert (=> start!1802 (inv!644 path!6)))

(assert (=> start!1802 true))

(declare-fun mapNonEmpty!244 () Bool)

(declare-fun mapRes!244 () Bool)

(declare-fun tp!23943 () Bool)

(declare-fun tp!23953 () Bool)

(assert (=> mapNonEmpty!244 (= mapRes!244 (and tp!23943 tp!23953))))

(declare-fun mapRest!244 () (Array (_ BitVec 32) List!324))

(declare-fun mapKey!245 () (_ BitVec 32))

(declare-fun mapValue!245 () List!324)

(assert (=> mapNonEmpty!244 (= (arr!136 (_values!346 (v!12095 (underlying!331 (v!12096 (underlying!332 (cache!543 cacheDown!381))))))) (store mapRest!244 mapKey!245 mapValue!245))))

(declare-fun b!34752 () Bool)

(declare-fun e!16297 () Bool)

(declare-fun tp!23945 () Bool)

(assert (=> b!34752 (= e!16297 (and tp!23945 mapRes!244))))

(declare-fun condMapEmpty!244 () Bool)

(declare-fun mapDefault!244 () List!324)

(assert (=> b!34752 (= condMapEmpty!244 (= (arr!136 (_values!346 (v!12095 (underlying!331 (v!12096 (underlying!332 (cache!543 cacheDown!381))))))) ((as const (Array (_ BitVec 32) List!324)) mapDefault!244)))))

(declare-fun b!34753 () Bool)

(declare-fun e!16284 () Bool)

(declare-fun e!16282 () Bool)

(assert (=> b!34753 (= e!16284 e!16282)))

(declare-fun res!27726 () Bool)

(assert (=> b!34753 (=> (not res!27726) (not e!16282))))

(declare-datatypes ((List!325 0))(
  ( (Nil!323) (Cons!323 (h!5719 (_ BitVec 16)) (t!15041 List!325)) )
))
(declare-datatypes ((TokenValue!112 0))(
  ( (FloatLiteralValue!224 (text!1229 List!325)) (TokenValueExt!111 (__x!616 Int)) (Broken!560 (value!6212 List!325)) (Object!113) (End!112) (Def!112) (Underscore!112) (Match!112) (Else!112) (Error!112) (Case!112) (If!112) (Extends!112) (Abstract!112) (Class!112) (Val!112) (DelimiterValue!224 (del!172 List!325)) (KeywordValue!118 (value!6213 List!325)) (CommentValue!224 (value!6214 List!325)) (WhitespaceValue!224 (value!6215 List!325)) (IndentationValue!112 (value!6216 List!325)) (String!777) (Int32!112) (Broken!561 (value!6217 List!325)) (Boolean!113) (Unit!181) (OperatorValue!115 (op!172 List!325)) (IdentifierValue!224 (value!6218 List!325)) (IdentifierValue!225 (value!6219 List!325)) (WhitespaceValue!225 (value!6220 List!325)) (True!224) (False!224) (Broken!562 (value!6221 List!325)) (Broken!563 (value!6222 List!325)) (True!225) (RightBrace!112) (RightBracket!112) (Colon!112) (Null!112) (Comma!112) (LeftBracket!112) (False!225) (LeftBrace!112) (ImaginaryLiteralValue!112 (text!1230 List!325)) (StringLiteralValue!336 (value!6223 List!325)) (EOFValue!112 (value!6224 List!325)) (IdentValue!112 (value!6225 List!325)) (DelimiterValue!225 (value!6226 List!325)) (DedentValue!112 (value!6227 List!325)) (NewLineValue!112 (value!6228 List!325)) (IntegerValue!336 (value!6229 (_ BitVec 32)) (text!1231 List!325)) (IntegerValue!337 (value!6230 Int) (text!1232 List!325)) (Times!112) (Or!112) (Equal!112) (Minus!112) (Broken!564 (value!6231 List!325)) (And!112) (Div!112) (LessEqual!112) (Mod!112) (Concat!266) (Not!112) (Plus!112) (SpaceValue!112 (value!6232 List!325)) (IntegerValue!338 (value!6233 Int) (text!1233 List!325)) (StringLiteralValue!337 (text!1234 List!325)) (FloatLiteralValue!225 (text!1235 List!325)) (BytesLiteralValue!112 (value!6234 List!325)) (CommentValue!225 (value!6235 List!325)) (StringLiteralValue!338 (value!6236 List!325)) (ErrorTokenValue!112 (msg!173 List!325)) )
))
(declare-datatypes ((IArray!97 0))(
  ( (IArray!98 (innerList!106 List!325)) )
))
(declare-datatypes ((Conc!48 0))(
  ( (Node!48 (left!400 Conc!48) (right!730 Conc!48) (csize!326 Int) (cheight!259 Int)) (Leaf!203 (xs!2627 IArray!97) (csize!327 Int)) (Empty!48) )
))
(declare-datatypes ((BalanceConc!96 0))(
  ( (BalanceConc!97 (c!15431 Conc!48)) )
))
(declare-datatypes ((TokenValueInjection!48 0))(
  ( (TokenValueInjection!49 (toValue!601 Int) (toChars!460 Int)) )
))
(declare-datatypes ((Rule!44 0))(
  ( (Rule!45 (regex!122 Regex!153) (tag!300 String!775) (isSeparator!122 Bool) (transformation!122 TokenValueInjection!48)) )
))
(declare-datatypes ((List!326 0))(
  ( (Nil!324) (Cons!324 (h!5720 Rule!44) (t!15042 List!326)) )
))
(declare-fun lt!2696 () List!326)

(declare-fun isEmpty!79 (List!326) Bool)

(assert (=> b!34753 (= res!27726 (not (isEmpty!79 lt!2696)))))

(declare-datatypes ((JsonLexer!8 0))(
  ( (JsonLexer!9) )
))
(declare-fun rules!109 (JsonLexer!8) List!326)

(assert (=> b!34753 (= lt!2696 (rules!109 JsonLexer!9))))

(declare-fun b!34754 () Bool)

(declare-fun res!27729 () Bool)

(assert (=> b!34754 (=> (not res!27729) (not e!16284))))

(declare-datatypes ((tuple3!76 0))(
  ( (tuple3!77 (_1!157 (InoxSet Context!70)) (_2!157 Int) (_3!38 Int)) )
))
(declare-datatypes ((tuple2!238 0))(
  ( (tuple2!239 (_1!158 tuple3!76) (_2!158 Int)) )
))
(declare-datatypes ((List!327 0))(
  ( (Nil!325) (Cons!325 (h!5721 tuple2!238) (t!15043 List!327)) )
))
(declare-datatypes ((array!235 0))(
  ( (array!236 (arr!137 (Array (_ BitVec 32) List!327)) (size!380 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!138 0))(
  ( (LongMapFixedSize!139 (defaultEntry!407 Int) (mask!747 (_ BitVec 32)) (extraKeys!315 (_ BitVec 32)) (zeroValue!325 List!327) (minValue!325 List!327) (_size!270 (_ BitVec 32)) (_keys!360 array!231) (_values!347 array!235) (_vacant!129 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!65 0))(
  ( (HashableExt!64 (__x!617 Int)) )
))
(declare-datatypes ((Cell!265 0))(
  ( (Cell!266 (v!12097 LongMapFixedSize!138)) )
))
(declare-datatypes ((MutLongMap!69 0))(
  ( (LongMap!69 (underlying!333 Cell!265)) (MutLongMapExt!68 (__x!618 Int)) )
))
(declare-datatypes ((Cell!267 0))(
  ( (Cell!268 (v!12098 MutLongMap!69)) )
))
(declare-datatypes ((MutableMap!65 0))(
  ( (MutableMapExt!64 (__x!619 Int)) (HashMap!65 (underlying!334 Cell!267) (hashF!1929 Hashable!65) (_size!271 (_ BitVec 32)) (defaultValue!213 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!10 0))(
  ( (CacheFurthestNullable!11 (cache!544 MutableMap!65) (totalInput!1478 BalanceConc!96)) )
))
(declare-fun lt!2699 () CacheFurthestNullable!10)

(declare-fun lt!2700 () BalanceConc!96)

(assert (=> b!34754 (= res!27729 (= (totalInput!1478 lt!2699) lt!2700))))

(declare-fun b!34755 () Bool)

(declare-fun e!16292 () Bool)

(declare-fun e!16289 () Bool)

(assert (=> b!34755 (= e!16292 e!16289)))

(declare-fun b!34756 () Bool)

(declare-fun res!27730 () Bool)

(assert (=> b!34756 (=> (not res!27730) (not e!16296))))

(declare-fun valid!79 (CacheDown!60) Bool)

(assert (=> b!34756 (= res!27730 (valid!79 cacheDown!381))))

(declare-fun b!34757 () Bool)

(declare-fun res!27728 () Bool)

(assert (=> b!34757 (=> (not res!27728) (not e!16282))))

(declare-datatypes ((LexerInterface!22 0))(
  ( (LexerInterfaceExt!19 (__x!620 Int)) (Lexer!20) )
))
(declare-fun rulesInvariant!15 (LexerInterface!22 List!326) Bool)

(assert (=> b!34757 (= res!27728 (rulesInvariant!15 Lexer!20 lt!2696))))

(declare-fun b!34758 () Bool)

(declare-fun e!16283 () Bool)

(declare-fun e!16291 () Bool)

(declare-fun lt!2697 () MutLongMap!67)

(get-info :version)

(assert (=> b!34758 (= e!16283 (and e!16291 ((_ is LongMap!67) lt!2697)))))

(assert (=> b!34758 (= lt!2697 (v!12094 (underlying!330 (cache!542 cacheUp!368))))))

(declare-fun mapIsEmpty!244 () Bool)

(declare-fun mapRes!245 () Bool)

(assert (=> mapIsEmpty!244 mapRes!245))

(declare-fun e!16300 () Bool)

(declare-fun tp!23947 () Bool)

(declare-fun tp!23944 () Bool)

(declare-fun array_inv!75 (array!231) Bool)

(declare-fun array_inv!76 (array!229) Bool)

(assert (=> b!34759 (= e!16289 (and tp!23951 tp!23947 tp!23944 (array_inv!75 (_keys!358 (v!12093 (underlying!329 (v!12094 (underlying!330 (cache!542 cacheUp!368))))))) (array_inv!76 (_values!345 (v!12093 (underlying!329 (v!12094 (underlying!330 (cache!542 cacheUp!368))))))) e!16300))))

(declare-fun b!34760 () Bool)

(declare-fun e!16301 () Bool)

(assert (=> b!34760 (= e!16287 e!16301)))

(declare-fun tp!23942 () Bool)

(declare-fun e!16295 () Bool)

(declare-fun tp!23950 () Bool)

(declare-fun array_inv!77 (array!233) Bool)

(assert (=> b!34761 (= e!16295 (and tp!23949 tp!23950 tp!23942 (array_inv!75 (_keys!359 (v!12095 (underlying!331 (v!12096 (underlying!332 (cache!543 cacheDown!381))))))) (array_inv!77 (_values!346 (v!12095 (underlying!331 (v!12096 (underlying!332 (cache!543 cacheDown!381))))))) e!16297))))

(declare-fun mapNonEmpty!245 () Bool)

(declare-fun tp!23941 () Bool)

(declare-fun tp!23954 () Bool)

(assert (=> mapNonEmpty!245 (= mapRes!245 (and tp!23941 tp!23954))))

(declare-fun mapKey!244 () (_ BitVec 32))

(declare-fun mapValue!244 () List!323)

(declare-fun mapRest!245 () (Array (_ BitVec 32) List!323))

(assert (=> mapNonEmpty!245 (= (arr!134 (_values!345 (v!12093 (underlying!329 (v!12094 (underlying!330 (cache!542 cacheUp!368))))))) (store mapRest!245 mapKey!244 mapValue!244))))

(declare-fun mapIsEmpty!245 () Bool)

(assert (=> mapIsEmpty!245 mapRes!244))

(declare-fun b!34762 () Bool)

(declare-fun e!16290 () Bool)

(assert (=> b!34762 (= e!16288 e!16290)))

(declare-fun b!34763 () Bool)

(assert (=> b!34763 (= e!16291 e!16292)))

(declare-fun b!34764 () Bool)

(declare-fun tp!23948 () Bool)

(assert (=> b!34764 (= e!16300 (and tp!23948 mapRes!245))))

(declare-fun condMapEmpty!245 () Bool)

(declare-fun mapDefault!245 () List!323)

(assert (=> b!34764 (= condMapEmpty!245 (= (arr!134 (_values!345 (v!12093 (underlying!329 (v!12094 (underlying!330 (cache!542 cacheUp!368))))))) ((as const (Array (_ BitVec 32) List!323)) mapDefault!245)))))

(declare-fun b!34765 () Bool)

(declare-fun e!16294 () Bool)

(declare-fun e!16286 () Bool)

(declare-fun lt!2698 () MutLongMap!68)

(assert (=> b!34765 (= e!16294 (and e!16286 ((_ is LongMap!68) lt!2698)))))

(assert (=> b!34765 (= lt!2698 (v!12096 (underlying!332 (cache!543 cacheDown!381))))))

(declare-fun b!34766 () Bool)

(assert (=> b!34766 (= e!16296 e!16284)))

(declare-fun res!27727 () Bool)

(assert (=> b!34766 (=> (not res!27727) (not e!16284))))

(declare-fun valid!80 (CacheFurthestNullable!10) Bool)

(assert (=> b!34766 (= res!27727 (valid!80 lt!2699))))

(declare-fun hashF!328 () Hashable!65)

(declare-fun emptyFurthestNullableCache!3 (Hashable!65 BalanceConc!96 (_ BitVec 32)) CacheFurthestNullable!10)

(assert (=> b!34766 (= lt!2699 (emptyFurthestNullableCache!3 hashF!328 lt!2700 #b00000000000000000000000000010000))))

(declare-fun openFile!0 (String!775) BalanceConc!96)

(assert (=> b!34766 (= lt!2700 (openFile!0 path!6))))

(declare-fun b!34767 () Bool)

(assert (=> b!34767 (= e!16282 (not (rulesInvariant!15 Lexer!20 lt!2696)))))

(declare-fun b!34768 () Bool)

(declare-fun e!16299 () Bool)

(assert (=> b!34768 (= e!16299 e!16295)))

(assert (=> b!34769 (= e!16301 (and e!16283 tp!23946))))

(assert (=> b!34770 (= e!16290 (and e!16294 tp!23952))))

(declare-fun b!34771 () Bool)

(assert (=> b!34771 (= e!16286 e!16299)))

(assert (= (and start!1802 res!27731) b!34756))

(assert (= (and b!34756 res!27730) b!34766))

(assert (= (and b!34766 res!27727) b!34754))

(assert (= (and b!34754 res!27729) b!34753))

(assert (= (and b!34753 res!27726) b!34757))

(assert (= (and b!34757 res!27728) b!34767))

(assert (= (and b!34764 condMapEmpty!245) mapIsEmpty!244))

(assert (= (and b!34764 (not condMapEmpty!245)) mapNonEmpty!245))

(assert (= b!34759 b!34764))

(assert (= b!34755 b!34759))

(assert (= b!34763 b!34755))

(assert (= (and b!34758 ((_ is LongMap!67) (v!12094 (underlying!330 (cache!542 cacheUp!368))))) b!34763))

(assert (= b!34769 b!34758))

(assert (= (and b!34760 ((_ is HashMap!63) (cache!542 cacheUp!368))) b!34769))

(assert (= start!1802 b!34760))

(assert (= (and b!34752 condMapEmpty!244) mapIsEmpty!245))

(assert (= (and b!34752 (not condMapEmpty!244)) mapNonEmpty!244))

(assert (= b!34761 b!34752))

(assert (= b!34768 b!34761))

(assert (= b!34771 b!34768))

(assert (= (and b!34765 ((_ is LongMap!68) (v!12096 (underlying!332 (cache!543 cacheDown!381))))) b!34771))

(assert (= b!34770 b!34765))

(assert (= (and b!34762 ((_ is HashMap!64) (cache!543 cacheDown!381))) b!34770))

(assert (= start!1802 b!34762))

(declare-fun m!10651 () Bool)

(assert (=> b!34753 m!10651))

(declare-fun m!10653 () Bool)

(assert (=> b!34753 m!10653))

(declare-fun m!10655 () Bool)

(assert (=> b!34759 m!10655))

(declare-fun m!10657 () Bool)

(assert (=> b!34759 m!10657))

(declare-fun m!10659 () Bool)

(assert (=> b!34756 m!10659))

(declare-fun m!10661 () Bool)

(assert (=> b!34767 m!10661))

(declare-fun m!10663 () Bool)

(assert (=> mapNonEmpty!244 m!10663))

(declare-fun m!10665 () Bool)

(assert (=> mapNonEmpty!245 m!10665))

(assert (=> b!34757 m!10661))

(declare-fun m!10667 () Bool)

(assert (=> b!34766 m!10667))

(declare-fun m!10669 () Bool)

(assert (=> b!34766 m!10669))

(declare-fun m!10671 () Bool)

(assert (=> b!34766 m!10671))

(declare-fun m!10673 () Bool)

(assert (=> b!34761 m!10673))

(declare-fun m!10675 () Bool)

(assert (=> b!34761 m!10675))

(declare-fun m!10677 () Bool)

(assert (=> start!1802 m!10677))

(declare-fun m!10679 () Bool)

(assert (=> start!1802 m!10679))

(declare-fun m!10681 () Bool)

(assert (=> start!1802 m!10681))

(declare-fun m!10683 () Bool)

(assert (=> start!1802 m!10683))

(check-sat (not b!34753) (not mapNonEmpty!245) (not mapNonEmpty!244) b_and!453 b_and!455 (not b!34757) (not b!34752) b_and!457 b_and!451 (not b_next!421) (not b!34759) (not b!34764) (not b!34761) (not b_next!417) (not b!34766) (not start!1802) (not b!34767) (not b_next!419) (not b!34756) (not b_next!423))
(check-sat b_and!453 b_and!455 (not b_next!417) (not b_next!419) b_and!457 (not b_next!423) b_and!451 (not b_next!421))
