; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111118 () Bool)

(assert start!111118)

(declare-fun b!1258460 () Bool)

(declare-fun b_free!29783 () Bool)

(declare-fun b_next!30487 () Bool)

(assert (=> b!1258460 (= b_free!29783 (not b_next!30487))))

(declare-fun tp!370917 () Bool)

(declare-fun b_and!84927 () Bool)

(assert (=> b!1258460 (= tp!370917 b_and!84927)))

(declare-fun b!1258469 () Bool)

(declare-fun b_free!29785 () Bool)

(declare-fun b_next!30489 () Bool)

(assert (=> b!1258469 (= b_free!29785 (not b_next!30489))))

(declare-fun tp!370919 () Bool)

(declare-fun b_and!84929 () Bool)

(assert (=> b!1258469 (= tp!370919 b_and!84929)))

(declare-fun b!1258475 () Bool)

(declare-fun b_free!29787 () Bool)

(declare-fun b_next!30491 () Bool)

(assert (=> b!1258475 (= b_free!29787 (not b_next!30491))))

(declare-fun tp!370929 () Bool)

(declare-fun b_and!84931 () Bool)

(assert (=> b!1258475 (= tp!370929 b_and!84931)))

(declare-fun b!1258462 () Bool)

(declare-fun b_free!29789 () Bool)

(declare-fun b_next!30493 () Bool)

(assert (=> b!1258462 (= b_free!29789 (not b_next!30493))))

(declare-fun tp!370920 () Bool)

(declare-fun b_and!84933 () Bool)

(assert (=> b!1258462 (= tp!370920 b_and!84933)))

(declare-fun mapNonEmpty!6325 () Bool)

(declare-fun mapRes!6326 () Bool)

(declare-fun tp!370928 () Bool)

(declare-fun tp!370925 () Bool)

(assert (=> mapNonEmpty!6325 (= mapRes!6326 (and tp!370928 tp!370925))))

(declare-datatypes ((Hashable!1263 0))(
  ( (HashableExt!1262 (__x!8247 Int)) )
))
(declare-datatypes ((Regex!3479 0))(
  ( (ElementMatch!3479 (c!208974 (_ BitVec 16))) (Concat!5736 (regOne!7470 Regex!3479) (regTwo!7470 Regex!3479)) (EmptyExpr!3479) (Star!3479 (reg!3808 Regex!3479)) (EmptyLang!3479) (Union!3479 (regOne!7471 Regex!3479) (regTwo!7471 Regex!3479)) )
))
(declare-datatypes ((List!12676 0))(
  ( (Nil!12610) (Cons!12610 (h!18011 Regex!3479) (t!115990 List!12676)) )
))
(declare-datatypes ((Context!1082 0))(
  ( (Context!1083 (exprs!1041 List!12676)) )
))
(declare-datatypes ((tuple2!12514 0))(
  ( (tuple2!12515 (_1!7111 Context!1082) (_2!7111 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!12516 0))(
  ( (tuple2!12517 (_1!7112 tuple2!12514) (_2!7112 (InoxSet Context!1082))) )
))
(declare-datatypes ((List!12677 0))(
  ( (Nil!12611) (Cons!12611 (h!18012 tuple2!12516) (t!115991 List!12677)) )
))
(declare-datatypes ((array!4682 0))(
  ( (array!4683 (arr!2088 (Array (_ BitVec 32) List!12677)) (size!9988 (_ BitVec 32))) )
))
(declare-datatypes ((array!4684 0))(
  ( (array!4685 (arr!2089 (Array (_ BitVec 32) (_ BitVec 64))) (size!9989 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2638 0))(
  ( (LongMapFixedSize!2639 (defaultEntry!1679 Int) (mask!4141 (_ BitVec 32)) (extraKeys!1566 (_ BitVec 32)) (zeroValue!1576 List!12677) (minValue!1576 List!12677) (_size!2719 (_ BitVec 32)) (_keys!1613 array!4684) (_values!1598 array!4682) (_vacant!1380 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5161 0))(
  ( (Cell!5162 (v!20859 LongMapFixedSize!2638)) )
))
(declare-datatypes ((MutLongMap!1319 0))(
  ( (LongMap!1319 (underlying!2845 Cell!5161)) (MutLongMapExt!1318 (__x!8248 Int)) )
))
(declare-datatypes ((Cell!5163 0))(
  ( (Cell!5164 (v!20860 MutLongMap!1319)) )
))
(declare-datatypes ((MutableMap!1263 0))(
  ( (MutableMapExt!1262 (__x!8249 Int)) (HashMap!1263 (underlying!2846 Cell!5163) (hashF!3182 Hashable!1263) (_size!2720 (_ BitVec 32)) (defaultValue!1423 Int)) )
))
(declare-datatypes ((CacheUp!732 0))(
  ( (CacheUp!733 (cache!1644 MutableMap!1263)) )
))
(declare-fun cacheUp!343 () CacheUp!732)

(declare-fun mapValue!6325 () List!12677)

(declare-fun mapRest!6326 () (Array (_ BitVec 32) List!12677))

(declare-fun mapKey!6326 () (_ BitVec 32))

(assert (=> mapNonEmpty!6325 (= (arr!2088 (_values!1598 (v!20859 (underlying!2845 (v!20860 (underlying!2846 (cache!1644 cacheUp!343))))))) (store mapRest!6326 mapKey!6326 mapValue!6325))))

(declare-datatypes ((tuple3!1126 0))(
  ( (tuple3!1127 (_1!7113 Regex!3479) (_2!7113 Context!1082) (_3!854 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!12518 0))(
  ( (tuple2!12519 (_1!7114 tuple3!1126) (_2!7114 (InoxSet Context!1082))) )
))
(declare-datatypes ((List!12678 0))(
  ( (Nil!12612) (Cons!12612 (h!18013 tuple2!12518) (t!115992 List!12678)) )
))
(declare-datatypes ((array!4686 0))(
  ( (array!4687 (arr!2090 (Array (_ BitVec 32) List!12678)) (size!9990 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2640 0))(
  ( (LongMapFixedSize!2641 (defaultEntry!1680 Int) (mask!4142 (_ BitVec 32)) (extraKeys!1567 (_ BitVec 32)) (zeroValue!1577 List!12678) (minValue!1577 List!12678) (_size!2721 (_ BitVec 32)) (_keys!1614 array!4684) (_values!1599 array!4686) (_vacant!1381 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5165 0))(
  ( (Cell!5166 (v!20861 LongMapFixedSize!2640)) )
))
(declare-datatypes ((MutLongMap!1320 0))(
  ( (LongMap!1320 (underlying!2847 Cell!5165)) (MutLongMapExt!1319 (__x!8250 Int)) )
))
(declare-datatypes ((Cell!5167 0))(
  ( (Cell!5168 (v!20862 MutLongMap!1320)) )
))
(declare-datatypes ((Hashable!1264 0))(
  ( (HashableExt!1263 (__x!8251 Int)) )
))
(declare-datatypes ((MutableMap!1264 0))(
  ( (MutableMapExt!1263 (__x!8252 Int)) (HashMap!1264 (underlying!2848 Cell!5167) (hashF!3183 Hashable!1264) (_size!2722 (_ BitVec 32)) (defaultValue!1424 Int)) )
))
(declare-datatypes ((CacheDown!736 0))(
  ( (CacheDown!737 (cache!1645 MutableMap!1264)) )
))
(declare-fun cacheDown!356 () CacheDown!736)

(declare-fun tp!370922 () Bool)

(declare-fun e!801137 () Bool)

(declare-fun tp!370923 () Bool)

(declare-fun e!801139 () Bool)

(declare-fun array_inv!1519 (array!4684) Bool)

(declare-fun array_inv!1520 (array!4686) Bool)

(assert (=> b!1258460 (= e!801139 (and tp!370917 tp!370922 tp!370923 (array_inv!1519 (_keys!1614 (v!20861 (underlying!2847 (v!20862 (underlying!2848 (cache!1645 cacheDown!356))))))) (array_inv!1520 (_values!1599 (v!20861 (underlying!2847 (v!20862 (underlying!2848 (cache!1645 cacheDown!356))))))) e!801137))))

(declare-fun b!1258461 () Bool)

(declare-fun e!801129 () Bool)

(assert (=> b!1258461 (= e!801129 e!801139)))

(declare-fun mapIsEmpty!6325 () Bool)

(assert (=> mapIsEmpty!6325 mapRes!6326))

(declare-fun b!1258463 () Bool)

(declare-fun tp!370930 () Bool)

(declare-fun mapRes!6325 () Bool)

(assert (=> b!1258463 (= e!801137 (and tp!370930 mapRes!6325))))

(declare-fun condMapEmpty!6326 () Bool)

(declare-fun mapDefault!6325 () List!12678)

(assert (=> b!1258463 (= condMapEmpty!6326 (= (arr!2090 (_values!1599 (v!20861 (underlying!2847 (v!20862 (underlying!2848 (cache!1645 cacheDown!356))))))) ((as const (Array (_ BitVec 32) List!12678)) mapDefault!6325)))))

(declare-fun b!1258464 () Bool)

(declare-fun e!801134 () Bool)

(declare-datatypes ((String!15516 0))(
  ( (String!15517 (value!71055 String)) )
))
(declare-datatypes ((List!12679 0))(
  ( (Nil!12613) (Cons!12613 (h!18014 (_ BitVec 16)) (t!115993 List!12679)) )
))
(declare-datatypes ((TokenValue!2257 0))(
  ( (FloatLiteralValue!4514 (text!16244 List!12679)) (TokenValueExt!2256 (__x!8253 Int)) (Broken!11285 (value!71056 List!12679)) (Object!2322) (End!2257) (Def!2257) (Underscore!2257) (Match!2257) (Else!2257) (Error!2257) (Case!2257) (If!2257) (Extends!2257) (Abstract!2257) (Class!2257) (Val!2257) (DelimiterValue!4514 (del!2317 List!12679)) (KeywordValue!2263 (value!71057 List!12679)) (CommentValue!4514 (value!71058 List!12679)) (WhitespaceValue!4514 (value!71059 List!12679)) (IndentationValue!2257 (value!71060 List!12679)) (String!15518) (Int32!2257) (Broken!11286 (value!71061 List!12679)) (Boolean!2258) (Unit!18881) (OperatorValue!2260 (op!2317 List!12679)) (IdentifierValue!4514 (value!71062 List!12679)) (IdentifierValue!4515 (value!71063 List!12679)) (WhitespaceValue!4515 (value!71064 List!12679)) (True!4514) (False!4514) (Broken!11287 (value!71065 List!12679)) (Broken!11288 (value!71066 List!12679)) (True!4515) (RightBrace!2257) (RightBracket!2257) (Colon!2257) (Null!2257) (Comma!2257) (LeftBracket!2257) (False!4515) (LeftBrace!2257) (ImaginaryLiteralValue!2257 (text!16245 List!12679)) (StringLiteralValue!6771 (value!71067 List!12679)) (EOFValue!2257 (value!71068 List!12679)) (IdentValue!2257 (value!71069 List!12679)) (DelimiterValue!4515 (value!71070 List!12679)) (DedentValue!2257 (value!71071 List!12679)) (NewLineValue!2257 (value!71072 List!12679)) (IntegerValue!6771 (value!71073 (_ BitVec 32)) (text!16246 List!12679)) (IntegerValue!6772 (value!71074 Int) (text!16247 List!12679)) (Times!2257) (Or!2257) (Equal!2257) (Minus!2257) (Broken!11289 (value!71075 List!12679)) (And!2257) (Div!2257) (LessEqual!2257) (Mod!2257) (Concat!5737) (Not!2257) (Plus!2257) (SpaceValue!2257 (value!71076 List!12679)) (IntegerValue!6773 (value!71077 Int) (text!16248 List!12679)) (StringLiteralValue!6772 (text!16249 List!12679)) (FloatLiteralValue!4515 (text!16250 List!12679)) (BytesLiteralValue!2257 (value!71078 List!12679)) (CommentValue!4515 (value!71079 List!12679)) (StringLiteralValue!6773 (value!71080 List!12679)) (ErrorTokenValue!2257 (msg!2318 List!12679)) )
))
(declare-datatypes ((IArray!8297 0))(
  ( (IArray!8298 (innerList!4206 List!12679)) )
))
(declare-datatypes ((Conc!4146 0))(
  ( (Node!4146 (left!10920 Conc!4146) (right!11250 Conc!4146) (csize!8522 Int) (cheight!4357 Int)) (Leaf!6425 (xs!6857 IArray!8297) (csize!8523 Int)) (Empty!4146) )
))
(declare-datatypes ((BalanceConc!8232 0))(
  ( (BalanceConc!8233 (c!208975 Conc!4146)) )
))
(declare-datatypes ((TokenValueInjection!4174 0))(
  ( (TokenValueInjection!4175 (toValue!3328 Int) (toChars!3187 Int)) )
))
(declare-datatypes ((Rule!4134 0))(
  ( (Rule!4135 (regex!2167 Regex!3479) (tag!2429 String!15516) (isSeparator!2167 Bool) (transformation!2167 TokenValueInjection!4174)) )
))
(declare-datatypes ((List!12680 0))(
  ( (Nil!12614) (Cons!12614 (h!18015 Rule!4134) (t!115994 List!12680)) )
))
(declare-fun lt!421095 () List!12680)

(declare-datatypes ((Token!3996 0))(
  ( (Token!3997 (value!71081 TokenValue!2257) (rule!3598 Rule!4134) (size!9991 Int) (originalCharacters!2721 List!12679)) )
))
(declare-datatypes ((List!12681 0))(
  ( (Nil!12615) (Cons!12615 (h!18016 Token!3996) (t!115995 List!12681)) )
))
(declare-datatypes ((IArray!8299 0))(
  ( (IArray!8300 (innerList!4207 List!12681)) )
))
(declare-datatypes ((Conc!4147 0))(
  ( (Node!4147 (left!10921 Conc!4147) (right!11251 Conc!4147) (csize!8524 Int) (cheight!4358 Int)) (Leaf!6426 (xs!6858 IArray!8299) (csize!8525 Int)) (Empty!4147) )
))
(declare-datatypes ((BalanceConc!8234 0))(
  ( (BalanceConc!8235 (c!208976 Conc!4147)) )
))
(declare-fun lt!421096 () BalanceConc!8234)

(declare-datatypes ((LexerInterface!1862 0))(
  ( (LexerInterfaceExt!1859 (__x!8254 Int)) (Lexer!1860) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!664 (LexerInterface!1862 List!12680 List!12681) Bool)

(declare-fun list!4705 (BalanceConc!8234) List!12681)

(assert (=> b!1258464 (= e!801134 (not (rulesProduceEachTokenIndividuallyList!664 Lexer!1860 lt!421095 (list!4705 lt!421096))))))

(declare-fun mapNonEmpty!6326 () Bool)

(declare-fun tp!370918 () Bool)

(declare-fun tp!370921 () Bool)

(assert (=> mapNonEmpty!6326 (= mapRes!6325 (and tp!370918 tp!370921))))

(declare-fun mapValue!6326 () List!12678)

(declare-fun mapKey!6325 () (_ BitVec 32))

(declare-fun mapRest!6325 () (Array (_ BitVec 32) List!12678))

(assert (=> mapNonEmpty!6326 (= (arr!2090 (_values!1599 (v!20861 (underlying!2847 (v!20862 (underlying!2848 (cache!1645 cacheDown!356))))))) (store mapRest!6325 mapKey!6325 mapValue!6326))))

(declare-fun b!1258465 () Bool)

(declare-fun res!557054 () Bool)

(declare-fun e!801138 () Bool)

(assert (=> b!1258465 (=> (not res!557054) (not e!801138))))

(declare-fun rulesInvariant!1735 (LexerInterface!1862 List!12680) Bool)

(assert (=> b!1258465 (= res!557054 (rulesInvariant!1735 Lexer!1860 lt!421095))))

(declare-fun b!1258466 () Bool)

(declare-fun e!801140 () Bool)

(declare-fun tp!370927 () Bool)

(assert (=> b!1258466 (= e!801140 (and tp!370927 mapRes!6326))))

(declare-fun condMapEmpty!6325 () Bool)

(declare-fun mapDefault!6326 () List!12677)

(assert (=> b!1258466 (= condMapEmpty!6325 (= (arr!2088 (_values!1598 (v!20859 (underlying!2845 (v!20860 (underlying!2846 (cache!1644 cacheUp!343))))))) ((as const (Array (_ BitVec 32) List!12677)) mapDefault!6326)))))

(declare-fun e!801130 () Bool)

(declare-fun e!801131 () Bool)

(assert (=> b!1258462 (= e!801130 (and e!801131 tp!370920))))

(declare-fun res!557056 () Bool)

(assert (=> start!111118 (=> (not res!557056) (not e!801138))))

(declare-fun isEmpty!7505 (List!12680) Bool)

(assert (=> start!111118 (= res!557056 (not (isEmpty!7505 lt!421095)))))

(declare-datatypes ((JsonLexer!350 0))(
  ( (JsonLexer!351) )
))
(declare-fun rules!109 (JsonLexer!350) List!12680)

(assert (=> start!111118 (= lt!421095 (rules!109 JsonLexer!351))))

(assert (=> start!111118 e!801138))

(declare-fun e!801136 () Bool)

(declare-fun inv!17003 (CacheUp!732) Bool)

(assert (=> start!111118 (and (inv!17003 cacheUp!343) e!801136)))

(declare-fun e!801141 () Bool)

(declare-fun inv!17004 (CacheDown!736) Bool)

(assert (=> start!111118 (and (inv!17004 cacheDown!356) e!801141)))

(declare-fun mapIsEmpty!6326 () Bool)

(assert (=> mapIsEmpty!6326 mapRes!6325))

(declare-fun b!1258467 () Bool)

(declare-fun e!801142 () Bool)

(declare-fun e!801135 () Bool)

(declare-fun lt!421094 () MutLongMap!1319)

(get-info :version)

(assert (=> b!1258467 (= e!801142 (and e!801135 ((_ is LongMap!1319) lt!421094)))))

(assert (=> b!1258467 (= lt!421094 (v!20860 (underlying!2846 (cache!1644 cacheUp!343))))))

(declare-fun b!1258468 () Bool)

(declare-fun e!801127 () Bool)

(declare-fun e!801133 () Bool)

(assert (=> b!1258468 (= e!801127 e!801133)))

(declare-fun e!801144 () Bool)

(assert (=> b!1258469 (= e!801144 (and e!801142 tp!370919))))

(declare-fun b!1258470 () Bool)

(declare-fun e!801143 () Bool)

(assert (=> b!1258470 (= e!801143 e!801129)))

(declare-fun b!1258471 () Bool)

(assert (=> b!1258471 (= e!801141 e!801130)))

(declare-fun b!1258472 () Bool)

(assert (=> b!1258472 (= e!801136 e!801144)))

(declare-fun b!1258473 () Bool)

(declare-fun lt!421093 () MutLongMap!1320)

(assert (=> b!1258473 (= e!801131 (and e!801143 ((_ is LongMap!1320) lt!421093)))))

(assert (=> b!1258473 (= lt!421093 (v!20862 (underlying!2848 (cache!1645 cacheDown!356))))))

(declare-fun b!1258474 () Bool)

(assert (=> b!1258474 (= e!801138 e!801134)))

(declare-fun res!557055 () Bool)

(assert (=> b!1258474 (=> (not res!557055) (not e!801134))))

(declare-datatypes ((tuple3!1128 0))(
  ( (tuple3!1129 (_1!7115 Bool) (_2!7115 CacheUp!732) (_3!855 CacheDown!736)) )
))
(declare-fun rulesProduceEachTokenIndividuallyMem!30 (LexerInterface!1862 List!12680 BalanceConc!8234 CacheUp!732 CacheDown!736) tuple3!1128)

(assert (=> b!1258474 (= res!557055 (_1!7115 (rulesProduceEachTokenIndividuallyMem!30 Lexer!1860 lt!421095 lt!421096 cacheUp!343 cacheDown!356)))))

(declare-fun singletonSeq!758 (Token!3996) BalanceConc!8234)

(declare-fun apply!2705 (TokenValueInjection!4174 BalanceConc!8232) TokenValue!2257)

(declare-datatypes ((KeywordValueInjection!152 0))(
  ( (KeywordValueInjection!153) )
))
(declare-fun injection!9 (KeywordValueInjection!152) TokenValueInjection!4174)

(declare-fun singletonSeq!759 ((_ BitVec 16)) BalanceConc!8232)

(declare-fun rBracketRule!0 (JsonLexer!350) Rule!4134)

(assert (=> b!1258474 (= lt!421096 (singletonSeq!758 (Token!3997 (apply!2705 (injection!9 KeywordValueInjection!153) (singletonSeq!759 #x005D)) (rBracketRule!0 JsonLexer!351) 1 (Cons!12613 #x005D Nil!12613))))))

(declare-fun tp!370926 () Bool)

(declare-fun tp!370924 () Bool)

(declare-fun array_inv!1521 (array!4682) Bool)

(assert (=> b!1258475 (= e!801133 (and tp!370929 tp!370926 tp!370924 (array_inv!1519 (_keys!1613 (v!20859 (underlying!2845 (v!20860 (underlying!2846 (cache!1644 cacheUp!343))))))) (array_inv!1521 (_values!1598 (v!20859 (underlying!2845 (v!20860 (underlying!2846 (cache!1644 cacheUp!343))))))) e!801140))))

(declare-fun b!1258476 () Bool)

(assert (=> b!1258476 (= e!801135 e!801127)))

(assert (= (and start!111118 res!557056) b!1258465))

(assert (= (and b!1258465 res!557054) b!1258474))

(assert (= (and b!1258474 res!557055) b!1258464))

(assert (= (and b!1258466 condMapEmpty!6325) mapIsEmpty!6325))

(assert (= (and b!1258466 (not condMapEmpty!6325)) mapNonEmpty!6325))

(assert (= b!1258475 b!1258466))

(assert (= b!1258468 b!1258475))

(assert (= b!1258476 b!1258468))

(assert (= (and b!1258467 ((_ is LongMap!1319) (v!20860 (underlying!2846 (cache!1644 cacheUp!343))))) b!1258476))

(assert (= b!1258469 b!1258467))

(assert (= (and b!1258472 ((_ is HashMap!1263) (cache!1644 cacheUp!343))) b!1258469))

(assert (= start!111118 b!1258472))

(assert (= (and b!1258463 condMapEmpty!6326) mapIsEmpty!6326))

(assert (= (and b!1258463 (not condMapEmpty!6326)) mapNonEmpty!6326))

(assert (= b!1258460 b!1258463))

(assert (= b!1258461 b!1258460))

(assert (= b!1258470 b!1258461))

(assert (= (and b!1258473 ((_ is LongMap!1320) (v!20862 (underlying!2848 (cache!1645 cacheDown!356))))) b!1258470))

(assert (= b!1258462 b!1258473))

(assert (= (and b!1258471 ((_ is HashMap!1264) (cache!1645 cacheDown!356))) b!1258462))

(assert (= start!111118 b!1258471))

(declare-fun m!1416719 () Bool)

(assert (=> mapNonEmpty!6325 m!1416719))

(declare-fun m!1416721 () Bool)

(assert (=> b!1258474 m!1416721))

(assert (=> b!1258474 m!1416721))

(declare-fun m!1416723 () Bool)

(assert (=> b!1258474 m!1416723))

(declare-fun m!1416725 () Bool)

(assert (=> b!1258474 m!1416725))

(assert (=> b!1258474 m!1416723))

(declare-fun m!1416727 () Bool)

(assert (=> b!1258474 m!1416727))

(declare-fun m!1416729 () Bool)

(assert (=> b!1258474 m!1416729))

(declare-fun m!1416731 () Bool)

(assert (=> b!1258474 m!1416731))

(declare-fun m!1416733 () Bool)

(assert (=> mapNonEmpty!6326 m!1416733))

(declare-fun m!1416735 () Bool)

(assert (=> start!111118 m!1416735))

(declare-fun m!1416737 () Bool)

(assert (=> start!111118 m!1416737))

(declare-fun m!1416739 () Bool)

(assert (=> start!111118 m!1416739))

(declare-fun m!1416741 () Bool)

(assert (=> start!111118 m!1416741))

(declare-fun m!1416743 () Bool)

(assert (=> b!1258460 m!1416743))

(declare-fun m!1416745 () Bool)

(assert (=> b!1258460 m!1416745))

(declare-fun m!1416747 () Bool)

(assert (=> b!1258475 m!1416747))

(declare-fun m!1416749 () Bool)

(assert (=> b!1258475 m!1416749))

(declare-fun m!1416751 () Bool)

(assert (=> b!1258464 m!1416751))

(assert (=> b!1258464 m!1416751))

(declare-fun m!1416753 () Bool)

(assert (=> b!1258464 m!1416753))

(declare-fun m!1416755 () Bool)

(assert (=> b!1258465 m!1416755))

(check-sat (not b!1258466) (not b_next!30487) (not b!1258475) (not b_next!30493) (not mapNonEmpty!6325) (not start!111118) (not b!1258474) b_and!84931 b_and!84933 b_and!84929 b_and!84927 (not b!1258460) (not b_next!30489) (not b!1258464) (not b!1258463) (not b!1258465) (not b_next!30491) (not mapNonEmpty!6326))
(check-sat (not b_next!30487) (not b_next!30493) (not b_next!30489) b_and!84931 b_and!84933 b_and!84929 (not b_next!30491) b_and!84927)
(get-model)

(declare-fun d!355629 () Bool)

(declare-fun res!557059 () Bool)

(declare-fun e!801147 () Bool)

(assert (=> d!355629 (=> (not res!557059) (not e!801147))))

(declare-fun rulesValid!786 (LexerInterface!1862 List!12680) Bool)

(assert (=> d!355629 (= res!557059 (rulesValid!786 Lexer!1860 lt!421095))))

(assert (=> d!355629 (= (rulesInvariant!1735 Lexer!1860 lt!421095) e!801147)))

(declare-fun b!1258479 () Bool)

(declare-datatypes ((List!12682 0))(
  ( (Nil!12616) (Cons!12616 (h!18017 String!15516) (t!116014 List!12682)) )
))
(declare-fun noDuplicateTag!786 (LexerInterface!1862 List!12680 List!12682) Bool)

(assert (=> b!1258479 (= e!801147 (noDuplicateTag!786 Lexer!1860 lt!421095 Nil!12616))))

(assert (= (and d!355629 res!557059) b!1258479))

(declare-fun m!1416757 () Bool)

(assert (=> d!355629 m!1416757))

(declare-fun m!1416759 () Bool)

(assert (=> b!1258479 m!1416759))

(assert (=> b!1258465 d!355629))

(declare-fun d!355631 () Bool)

(assert (=> d!355631 (= (array_inv!1519 (_keys!1613 (v!20859 (underlying!2845 (v!20860 (underlying!2846 (cache!1644 cacheUp!343))))))) (bvsge (size!9989 (_keys!1613 (v!20859 (underlying!2845 (v!20860 (underlying!2846 (cache!1644 cacheUp!343))))))) #b00000000000000000000000000000000))))

(assert (=> b!1258475 d!355631))

(declare-fun d!355633 () Bool)

(assert (=> d!355633 (= (array_inv!1521 (_values!1598 (v!20859 (underlying!2845 (v!20860 (underlying!2846 (cache!1644 cacheUp!343))))))) (bvsge (size!9988 (_values!1598 (v!20859 (underlying!2845 (v!20860 (underlying!2846 (cache!1644 cacheUp!343))))))) #b00000000000000000000000000000000))))

(assert (=> b!1258475 d!355633))

(declare-fun b!1258496 () Bool)

(declare-fun e!801159 () Bool)

(assert (=> b!1258496 (= e!801159 true)))

(declare-fun b!1258495 () Bool)

(declare-fun e!801158 () Bool)

(assert (=> b!1258495 (= e!801158 e!801159)))

(declare-fun b!1258494 () Bool)

(declare-fun e!801157 () Bool)

(assert (=> b!1258494 (= e!801157 e!801158)))

(declare-fun d!355635 () Bool)

(assert (=> d!355635 e!801157))

(assert (= b!1258495 b!1258496))

(assert (= b!1258494 b!1258495))

(assert (= (and d!355635 ((_ is Cons!12614) lt!421095)) b!1258494))

(declare-fun order!7675 () Int)

(declare-fun order!7677 () Int)

(declare-fun lambda!49797 () Int)

(declare-fun dynLambda!5503 (Int Int) Int)

(declare-fun dynLambda!5504 (Int Int) Int)

(assert (=> b!1258496 (< (dynLambda!5503 order!7675 (toValue!3328 (transformation!2167 (h!18015 lt!421095)))) (dynLambda!5504 order!7677 lambda!49797))))

(declare-fun order!7679 () Int)

(declare-fun dynLambda!5505 (Int Int) Int)

(assert (=> b!1258496 (< (dynLambda!5505 order!7679 (toChars!3187 (transformation!2167 (h!18015 lt!421095)))) (dynLambda!5504 order!7677 lambda!49797))))

(assert (=> d!355635 true))

(declare-fun lt!421103 () tuple3!1128)

(declare-fun forall!3196 (BalanceConc!8234 Int) Bool)

(assert (=> d!355635 (= (_1!7115 lt!421103) (forall!3196 lt!421096 lambda!49797))))

(declare-fun e!801150 () tuple3!1128)

(assert (=> d!355635 (= lt!421103 e!801150)))

(declare-fun c!208979 () Bool)

(declare-fun isEmpty!7506 (BalanceConc!8234) Bool)

(assert (=> d!355635 (= c!208979 (isEmpty!7506 lt!421096))))

(assert (=> d!355635 (not (isEmpty!7505 lt!421095))))

(assert (=> d!355635 (= (rulesProduceEachTokenIndividuallyMem!30 Lexer!1860 lt!421095 lt!421096 cacheUp!343 cacheDown!356) lt!421103)))

(declare-fun b!1258484 () Bool)

(assert (=> b!1258484 (= e!801150 (tuple3!1129 true cacheUp!343 cacheDown!356))))

(declare-fun b!1258485 () Bool)

(declare-fun lt!421105 () tuple3!1128)

(declare-fun lt!421104 () tuple3!1128)

(assert (=> b!1258485 (= e!801150 (tuple3!1129 (and (_1!7115 lt!421105) (_1!7115 lt!421104)) (_2!7115 lt!421104) (_3!855 lt!421104)))))

(declare-fun rulesProduceIndividualTokenMem!15 (LexerInterface!1862 List!12680 Token!3996 CacheUp!732 CacheDown!736) tuple3!1128)

(declare-fun head!2172 (BalanceConc!8234) Token!3996)

(assert (=> b!1258485 (= lt!421105 (rulesProduceIndividualTokenMem!15 Lexer!1860 lt!421095 (head!2172 lt!421096) cacheUp!343 cacheDown!356))))

(declare-fun tail!1804 (BalanceConc!8234) BalanceConc!8234)

(assert (=> b!1258485 (= lt!421104 (rulesProduceEachTokenIndividuallyMem!30 Lexer!1860 lt!421095 (tail!1804 lt!421096) (_2!7115 lt!421105) (_3!855 lt!421105)))))

(assert (= (and d!355635 c!208979) b!1258484))

(assert (= (and d!355635 (not c!208979)) b!1258485))

(declare-fun m!1416761 () Bool)

(assert (=> d!355635 m!1416761))

(declare-fun m!1416763 () Bool)

(assert (=> d!355635 m!1416763))

(assert (=> d!355635 m!1416735))

(declare-fun m!1416765 () Bool)

(assert (=> b!1258485 m!1416765))

(assert (=> b!1258485 m!1416765))

(declare-fun m!1416767 () Bool)

(assert (=> b!1258485 m!1416767))

(declare-fun m!1416769 () Bool)

(assert (=> b!1258485 m!1416769))

(assert (=> b!1258485 m!1416769))

(declare-fun m!1416771 () Bool)

(assert (=> b!1258485 m!1416771))

(assert (=> b!1258474 d!355635))

(declare-fun d!355637 () Bool)

(declare-fun e!801162 () Bool)

(assert (=> d!355637 e!801162))

(declare-fun res!557062 () Bool)

(assert (=> d!355637 (=> (not res!557062) (not e!801162))))

(declare-fun lt!421108 () BalanceConc!8232)

(declare-fun list!4706 (BalanceConc!8232) List!12679)

(assert (=> d!355637 (= res!557062 (= (list!4706 lt!421108) (Cons!12613 #x005D Nil!12613)))))

(declare-fun singleton!319 ((_ BitVec 16)) BalanceConc!8232)

(assert (=> d!355637 (= lt!421108 (singleton!319 #x005D))))

(assert (=> d!355637 (= (singletonSeq!759 #x005D) lt!421108)))

(declare-fun b!1258501 () Bool)

(declare-fun isBalanced!1209 (Conc!4146) Bool)

(assert (=> b!1258501 (= e!801162 (isBalanced!1209 (c!208975 lt!421108)))))

(assert (= (and d!355637 res!557062) b!1258501))

(declare-fun m!1416773 () Bool)

(assert (=> d!355637 m!1416773))

(declare-fun m!1416775 () Bool)

(assert (=> d!355637 m!1416775))

(declare-fun m!1416777 () Bool)

(assert (=> b!1258501 m!1416777))

(assert (=> b!1258474 d!355637))

(declare-fun d!355639 () Bool)

(assert (=> d!355639 true))

(assert (=> d!355639 true))

(assert (=> d!355639 true))

(assert (=> d!355639 true))

(declare-fun b!1258524 () Bool)

(declare-fun e!801177 () Bool)

(declare-fun x!245013 () BalanceConc!8232)

(declare-fun tp!370937 () Bool)

(declare-fun inv!17005 (Conc!4146) Bool)

(assert (=> b!1258524 (= e!801177 (and (inv!17005 (c!208975 x!245013)) tp!370937))))

(declare-fun inst!952 () Bool)

(declare-fun inv!17006 (BalanceConc!8232) Bool)

(declare-fun toCharacters!4 (KeywordValueInjection!152 TokenValue!2257) BalanceConc!8232)

(declare-fun toValue!11 (KeywordValueInjection!152 BalanceConc!8232) TokenValue!2257)

(assert (=> d!355639 (= inst!952 (=> (and (inv!17006 x!245013) e!801177) (= (list!4706 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013))) (list!4706 x!245013))))))

(assert (= d!355639 b!1258524))

(declare-fun m!1416779 () Bool)

(assert (=> b!1258524 m!1416779))

(declare-fun m!1416781 () Bool)

(assert (=> d!355639 m!1416781))

(declare-fun m!1416783 () Bool)

(assert (=> d!355639 m!1416783))

(declare-fun m!1416785 () Bool)

(assert (=> d!355639 m!1416785))

(assert (=> d!355639 m!1416781))

(assert (=> d!355639 m!1416783))

(declare-fun m!1416787 () Bool)

(assert (=> d!355639 m!1416787))

(declare-fun m!1416789 () Bool)

(assert (=> d!355639 m!1416789))

(declare-fun res!557071 () Bool)

(declare-fun e!801178 () Bool)

(assert (=> d!355639 (=> res!557071 e!801178)))

(declare-fun x!245014 () BalanceConc!8232)

(declare-fun x!245015 () BalanceConc!8232)

(assert (=> d!355639 (= res!557071 (not (= (list!4706 x!245014) (list!4706 x!245015))))))

(declare-fun e!801180 () Bool)

(declare-fun inst!953 () Bool)

(declare-fun e!801179 () Bool)

(assert (=> d!355639 (= inst!953 (=> (and (inv!17006 x!245014) e!801180 (inv!17006 x!245015) e!801179) e!801178))))

(declare-fun b!1258525 () Bool)

(assert (=> b!1258525 (= e!801178 (= (toValue!11 KeywordValueInjection!153 x!245014) (toValue!11 KeywordValueInjection!153 x!245015)))))

(declare-fun b!1258526 () Bool)

(declare-fun tp!370939 () Bool)

(assert (=> b!1258526 (= e!801180 (and (inv!17005 (c!208975 x!245014)) tp!370939))))

(declare-fun b!1258527 () Bool)

(declare-fun tp!370938 () Bool)

(assert (=> b!1258527 (= e!801179 (and (inv!17005 (c!208975 x!245015)) tp!370938))))

(assert (= (and d!355639 (not res!557071)) b!1258525))

(assert (= d!355639 b!1258526))

(assert (= d!355639 b!1258527))

(declare-fun m!1416791 () Bool)

(assert (=> d!355639 m!1416791))

(declare-fun m!1416793 () Bool)

(assert (=> d!355639 m!1416793))

(declare-fun m!1416795 () Bool)

(assert (=> d!355639 m!1416795))

(declare-fun m!1416797 () Bool)

(assert (=> d!355639 m!1416797))

(declare-fun m!1416799 () Bool)

(assert (=> b!1258525 m!1416799))

(declare-fun m!1416801 () Bool)

(assert (=> b!1258525 m!1416801))

(declare-fun m!1416803 () Bool)

(assert (=> b!1258526 m!1416803))

(declare-fun m!1416805 () Bool)

(assert (=> b!1258527 m!1416805))

(declare-fun bs!290798 () Bool)

(declare-fun neg-inst!953 () Bool)

(declare-fun s!183709 () Bool)

(assert (= bs!290798 (and neg-inst!953 s!183709)))

(assert (=> bs!290798 (=> true (= (list!4706 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013))) (list!4706 x!245013)))))

(assert (=> m!1416787 m!1416781))

(assert (=> m!1416787 m!1416783))

(assert (=> m!1416787 m!1416785))

(assert (=> m!1416787 s!183709))

(assert (=> m!1416781 s!183709))

(declare-fun bs!290799 () Bool)

(assert (= bs!290799 (and neg-inst!953 d!355639)))

(assert (=> bs!290799 (= true inst!952)))

(declare-fun bs!290800 () Bool)

(declare-fun neg-inst!952 () Bool)

(declare-fun s!183711 () Bool)

(assert (= bs!290800 (and neg-inst!952 s!183711)))

(declare-fun res!557072 () Bool)

(declare-fun e!801181 () Bool)

(assert (=> bs!290800 (=> res!557072 e!801181)))

(assert (=> bs!290800 (= res!557072 (not (= (list!4706 x!245015) (list!4706 x!245015))))))

(assert (=> bs!290800 (=> true e!801181)))

(declare-fun b!1258528 () Bool)

(assert (=> b!1258528 (= e!801181 (= (toValue!11 KeywordValueInjection!153 x!245015) (toValue!11 KeywordValueInjection!153 x!245015)))))

(assert (= (and bs!290800 (not res!557072)) b!1258528))

(assert (=> m!1416801 m!1416793))

(assert (=> m!1416801 m!1416793))

(assert (=> m!1416801 s!183711))

(assert (=> m!1416801 s!183711))

(declare-fun bs!290801 () Bool)

(assert (= bs!290801 (and m!1416793 m!1416801)))

(assert (=> bs!290801 s!183711))

(assert (=> m!1416793 s!183711))

(assert (=> bs!290801 s!183711))

(assert (=> m!1416793 s!183711))

(declare-fun bs!290802 () Bool)

(declare-fun s!183713 () Bool)

(assert (= bs!290802 (and neg-inst!952 s!183713)))

(declare-fun res!557073 () Bool)

(declare-fun e!801182 () Bool)

(assert (=> bs!290802 (=> res!557073 e!801182)))

(assert (=> bs!290802 (= res!557073 (not (= (list!4706 x!245015) (list!4706 x!245013))))))

(assert (=> bs!290802 (=> true e!801182)))

(declare-fun b!1258529 () Bool)

(assert (=> b!1258529 (= e!801182 (= (toValue!11 KeywordValueInjection!153 x!245015) (toValue!11 KeywordValueInjection!153 x!245013)))))

(assert (= (and bs!290802 (not res!557073)) b!1258529))

(declare-fun bs!290803 () Bool)

(assert (= bs!290803 (and m!1416787 m!1416801 m!1416793)))

(assert (=> bs!290803 m!1416793))

(assert (=> bs!290803 m!1416787))

(assert (=> bs!290803 s!183713))

(declare-fun bs!290804 () Bool)

(declare-fun s!183715 () Bool)

(assert (= bs!290804 (and neg-inst!952 s!183715)))

(declare-fun res!557074 () Bool)

(declare-fun e!801183 () Bool)

(assert (=> bs!290804 (=> res!557074 e!801183)))

(assert (=> bs!290804 (= res!557074 (not (= (list!4706 x!245013) (list!4706 x!245013))))))

(assert (=> bs!290804 (=> true e!801183)))

(declare-fun b!1258530 () Bool)

(assert (=> b!1258530 (= e!801183 (= (toValue!11 KeywordValueInjection!153 x!245013) (toValue!11 KeywordValueInjection!153 x!245013)))))

(assert (= (and bs!290804 (not res!557074)) b!1258530))

(assert (=> m!1416787 s!183715))

(declare-fun bs!290805 () Bool)

(declare-fun s!183717 () Bool)

(assert (= bs!290805 (and neg-inst!952 s!183717)))

(declare-fun res!557075 () Bool)

(declare-fun e!801184 () Bool)

(assert (=> bs!290805 (=> res!557075 e!801184)))

(assert (=> bs!290805 (= res!557075 (not (= (list!4706 x!245013) (list!4706 x!245015))))))

(assert (=> bs!290805 (=> true e!801184)))

(declare-fun b!1258531 () Bool)

(assert (=> b!1258531 (= e!801184 (= (toValue!11 KeywordValueInjection!153 x!245013) (toValue!11 KeywordValueInjection!153 x!245015)))))

(assert (= (and bs!290805 (not res!557075)) b!1258531))

(assert (=> bs!290803 m!1416787))

(assert (=> bs!290803 m!1416793))

(assert (=> bs!290803 s!183717))

(assert (=> m!1416787 s!183715))

(declare-fun bs!290806 () Bool)

(declare-fun s!183719 () Bool)

(assert (= bs!290806 (and neg-inst!952 s!183719)))

(declare-fun res!557076 () Bool)

(declare-fun e!801185 () Bool)

(assert (=> bs!290806 (=> res!557076 e!801185)))

(assert (=> bs!290806 (= res!557076 (not (= (list!4706 x!245013) (list!4706 x!245014))))))

(assert (=> bs!290806 (=> true e!801185)))

(declare-fun b!1258532 () Bool)

(assert (=> b!1258532 (= e!801185 (= (toValue!11 KeywordValueInjection!153 x!245013) (toValue!11 KeywordValueInjection!153 x!245014)))))

(assert (= (and bs!290806 (not res!557076)) b!1258532))

(declare-fun bs!290807 () Bool)

(assert (= bs!290807 (and m!1416791 m!1416787)))

(assert (=> bs!290807 m!1416787))

(assert (=> bs!290807 m!1416791))

(assert (=> bs!290807 s!183719))

(declare-fun bs!290808 () Bool)

(declare-fun s!183721 () Bool)

(assert (= bs!290808 (and neg-inst!952 s!183721)))

(declare-fun res!557077 () Bool)

(declare-fun e!801186 () Bool)

(assert (=> bs!290808 (=> res!557077 e!801186)))

(assert (=> bs!290808 (= res!557077 (not (= (list!4706 x!245015) (list!4706 x!245014))))))

(assert (=> bs!290808 (=> true e!801186)))

(declare-fun b!1258533 () Bool)

(assert (=> b!1258533 (= e!801186 (= (toValue!11 KeywordValueInjection!153 x!245015) (toValue!11 KeywordValueInjection!153 x!245014)))))

(assert (= (and bs!290808 (not res!557077)) b!1258533))

(declare-fun bs!290809 () Bool)

(assert (= bs!290809 (and m!1416791 m!1416801 m!1416793)))

(assert (=> bs!290809 m!1416793))

(assert (=> bs!290809 m!1416791))

(assert (=> bs!290809 s!183721))

(declare-fun bs!290810 () Bool)

(declare-fun s!183723 () Bool)

(assert (= bs!290810 (and neg-inst!952 s!183723)))

(declare-fun res!557078 () Bool)

(declare-fun e!801187 () Bool)

(assert (=> bs!290810 (=> res!557078 e!801187)))

(assert (=> bs!290810 (= res!557078 (not (= (list!4706 x!245014) (list!4706 x!245014))))))

(assert (=> bs!290810 (=> true e!801187)))

(declare-fun b!1258534 () Bool)

(assert (=> b!1258534 (= e!801187 (= (toValue!11 KeywordValueInjection!153 x!245014) (toValue!11 KeywordValueInjection!153 x!245014)))))

(assert (= (and bs!290810 (not res!557078)) b!1258534))

(assert (=> m!1416791 s!183723))

(declare-fun bs!290811 () Bool)

(declare-fun s!183725 () Bool)

(assert (= bs!290811 (and neg-inst!952 s!183725)))

(declare-fun res!557079 () Bool)

(declare-fun e!801188 () Bool)

(assert (=> bs!290811 (=> res!557079 e!801188)))

(assert (=> bs!290811 (= res!557079 (not (= (list!4706 x!245014) (list!4706 x!245013))))))

(assert (=> bs!290811 (=> true e!801188)))

(declare-fun b!1258535 () Bool)

(assert (=> b!1258535 (= e!801188 (= (toValue!11 KeywordValueInjection!153 x!245014) (toValue!11 KeywordValueInjection!153 x!245013)))))

(assert (= (and bs!290811 (not res!557079)) b!1258535))

(assert (=> bs!290807 m!1416791))

(assert (=> bs!290807 m!1416787))

(assert (=> bs!290807 s!183725))

(declare-fun bs!290812 () Bool)

(declare-fun s!183727 () Bool)

(assert (= bs!290812 (and neg-inst!952 s!183727)))

(declare-fun res!557080 () Bool)

(declare-fun e!801189 () Bool)

(assert (=> bs!290812 (=> res!557080 e!801189)))

(assert (=> bs!290812 (= res!557080 (not (= (list!4706 x!245014) (list!4706 x!245015))))))

(assert (=> bs!290812 (=> true e!801189)))

(declare-fun b!1258536 () Bool)

(assert (=> b!1258536 (= e!801189 (= (toValue!11 KeywordValueInjection!153 x!245014) (toValue!11 KeywordValueInjection!153 x!245015)))))

(assert (= (and bs!290812 (not res!557080)) b!1258536))

(assert (=> bs!290809 m!1416791))

(assert (=> bs!290809 m!1416793))

(assert (=> bs!290809 s!183727))

(assert (=> m!1416791 s!183723))

(declare-fun bs!290813 () Bool)

(declare-fun s!183729 () Bool)

(assert (= bs!290813 (and neg-inst!952 s!183729)))

(declare-fun res!557081 () Bool)

(declare-fun e!801190 () Bool)

(assert (=> bs!290813 (=> res!557081 e!801190)))

(assert (=> bs!290813 (= res!557081 (not (= (list!4706 x!245013) (list!4706 lt!421108))))))

(assert (=> bs!290813 (=> true e!801190)))

(declare-fun b!1258537 () Bool)

(assert (=> b!1258537 (= e!801190 (= (toValue!11 KeywordValueInjection!153 x!245013) (toValue!11 KeywordValueInjection!153 lt!421108)))))

(assert (= (and bs!290813 (not res!557081)) b!1258537))

(declare-fun bs!290814 () Bool)

(assert (= bs!290814 (and m!1416773 m!1416787)))

(assert (=> bs!290814 m!1416787))

(assert (=> bs!290814 m!1416773))

(assert (=> bs!290814 s!183729))

(declare-fun bs!290815 () Bool)

(declare-fun s!183731 () Bool)

(assert (= bs!290815 (and neg-inst!952 s!183731)))

(declare-fun res!557082 () Bool)

(declare-fun e!801191 () Bool)

(assert (=> bs!290815 (=> res!557082 e!801191)))

(assert (=> bs!290815 (= res!557082 (not (= (list!4706 x!245015) (list!4706 lt!421108))))))

(assert (=> bs!290815 (=> true e!801191)))

(declare-fun b!1258538 () Bool)

(assert (=> b!1258538 (= e!801191 (= (toValue!11 KeywordValueInjection!153 x!245015) (toValue!11 KeywordValueInjection!153 lt!421108)))))

(assert (= (and bs!290815 (not res!557082)) b!1258538))

(declare-fun bs!290816 () Bool)

(assert (= bs!290816 (and m!1416773 m!1416801 m!1416793)))

(assert (=> bs!290816 m!1416793))

(assert (=> bs!290816 m!1416773))

(assert (=> bs!290816 s!183731))

(declare-fun bs!290817 () Bool)

(declare-fun s!183733 () Bool)

(assert (= bs!290817 (and neg-inst!952 s!183733)))

(declare-fun res!557083 () Bool)

(declare-fun e!801192 () Bool)

(assert (=> bs!290817 (=> res!557083 e!801192)))

(assert (=> bs!290817 (= res!557083 (not (= (list!4706 x!245014) (list!4706 lt!421108))))))

(assert (=> bs!290817 (=> true e!801192)))

(declare-fun b!1258539 () Bool)

(assert (=> b!1258539 (= e!801192 (= (toValue!11 KeywordValueInjection!153 x!245014) (toValue!11 KeywordValueInjection!153 lt!421108)))))

(assert (= (and bs!290817 (not res!557083)) b!1258539))

(declare-fun bs!290818 () Bool)

(assert (= bs!290818 (and m!1416773 m!1416791)))

(assert (=> bs!290818 m!1416791))

(assert (=> bs!290818 m!1416773))

(assert (=> bs!290818 s!183733))

(declare-fun bs!290819 () Bool)

(declare-fun s!183735 () Bool)

(assert (= bs!290819 (and neg-inst!952 s!183735)))

(declare-fun res!557084 () Bool)

(declare-fun e!801193 () Bool)

(assert (=> bs!290819 (=> res!557084 e!801193)))

(assert (=> bs!290819 (= res!557084 (not (= (list!4706 lt!421108) (list!4706 lt!421108))))))

(assert (=> bs!290819 (=> true e!801193)))

(declare-fun b!1258540 () Bool)

(assert (=> b!1258540 (= e!801193 (= (toValue!11 KeywordValueInjection!153 lt!421108) (toValue!11 KeywordValueInjection!153 lt!421108)))))

(assert (= (and bs!290819 (not res!557084)) b!1258540))

(assert (=> m!1416773 s!183735))

(declare-fun bs!290820 () Bool)

(declare-fun s!183737 () Bool)

(assert (= bs!290820 (and neg-inst!952 s!183737)))

(declare-fun res!557085 () Bool)

(declare-fun e!801194 () Bool)

(assert (=> bs!290820 (=> res!557085 e!801194)))

(assert (=> bs!290820 (= res!557085 (not (= (list!4706 lt!421108) (list!4706 x!245013))))))

(assert (=> bs!290820 (=> true e!801194)))

(declare-fun b!1258541 () Bool)

(assert (=> b!1258541 (= e!801194 (= (toValue!11 KeywordValueInjection!153 lt!421108) (toValue!11 KeywordValueInjection!153 x!245013)))))

(assert (= (and bs!290820 (not res!557085)) b!1258541))

(assert (=> bs!290814 m!1416773))

(assert (=> bs!290814 m!1416787))

(assert (=> bs!290814 s!183737))

(declare-fun bs!290821 () Bool)

(declare-fun s!183739 () Bool)

(assert (= bs!290821 (and neg-inst!952 s!183739)))

(declare-fun res!557086 () Bool)

(declare-fun e!801195 () Bool)

(assert (=> bs!290821 (=> res!557086 e!801195)))

(assert (=> bs!290821 (= res!557086 (not (= (list!4706 lt!421108) (list!4706 x!245015))))))

(assert (=> bs!290821 (=> true e!801195)))

(declare-fun b!1258542 () Bool)

(assert (=> b!1258542 (= e!801195 (= (toValue!11 KeywordValueInjection!153 lt!421108) (toValue!11 KeywordValueInjection!153 x!245015)))))

(assert (= (and bs!290821 (not res!557086)) b!1258542))

(assert (=> bs!290816 m!1416773))

(assert (=> bs!290816 m!1416793))

(assert (=> bs!290816 s!183739))

(declare-fun bs!290822 () Bool)

(declare-fun s!183741 () Bool)

(assert (= bs!290822 (and neg-inst!952 s!183741)))

(declare-fun res!557087 () Bool)

(declare-fun e!801196 () Bool)

(assert (=> bs!290822 (=> res!557087 e!801196)))

(assert (=> bs!290822 (= res!557087 (not (= (list!4706 lt!421108) (list!4706 x!245014))))))

(assert (=> bs!290822 (=> true e!801196)))

(declare-fun b!1258543 () Bool)

(assert (=> b!1258543 (= e!801196 (= (toValue!11 KeywordValueInjection!153 lt!421108) (toValue!11 KeywordValueInjection!153 x!245014)))))

(assert (= (and bs!290822 (not res!557087)) b!1258543))

(assert (=> bs!290818 m!1416773))

(assert (=> bs!290818 m!1416791))

(assert (=> bs!290818 s!183741))

(assert (=> m!1416773 s!183735))

(assert (=> m!1416799 s!183723))

(declare-fun bs!290823 () Bool)

(assert (= bs!290823 (and m!1416799 m!1416787)))

(assert (=> bs!290823 s!183719))

(declare-fun bs!290824 () Bool)

(assert (= bs!290824 (and m!1416799 m!1416801 m!1416793)))

(assert (=> bs!290824 s!183721))

(declare-fun bs!290825 () Bool)

(assert (= bs!290825 (and m!1416799 m!1416773)))

(assert (=> bs!290825 s!183741))

(declare-fun bs!290826 () Bool)

(assert (= bs!290826 (and m!1416799 m!1416791)))

(assert (=> bs!290826 s!183723))

(assert (=> m!1416799 s!183723))

(assert (=> bs!290824 s!183727))

(assert (=> bs!290823 s!183725))

(assert (=> bs!290825 s!183733))

(assert (=> bs!290826 s!183723))

(assert (=> m!1416781 s!183715))

(declare-fun bs!290827 () Bool)

(assert (= bs!290827 (and m!1416781 m!1416791 m!1416799)))

(assert (=> bs!290827 s!183725))

(declare-fun bs!290828 () Bool)

(assert (= bs!290828 (and m!1416781 m!1416787)))

(assert (=> bs!290828 s!183715))

(declare-fun bs!290829 () Bool)

(assert (= bs!290829 (and m!1416781 m!1416773)))

(assert (=> bs!290829 s!183737))

(declare-fun bs!290830 () Bool)

(assert (= bs!290830 (and m!1416781 m!1416801 m!1416793)))

(assert (=> bs!290830 s!183713))

(assert (=> bs!290827 s!183719))

(assert (=> m!1416781 s!183715))

(assert (=> bs!290828 s!183715))

(assert (=> bs!290829 s!183729))

(assert (=> bs!290830 s!183717))

(declare-fun bs!290831 () Bool)

(declare-fun s!183743 () Bool)

(assert (= bs!290831 (and neg-inst!952 s!183743)))

(declare-fun res!557088 () Bool)

(declare-fun e!801197 () Bool)

(assert (=> bs!290831 (=> res!557088 e!801197)))

(assert (=> bs!290831 (= res!557088 (not (= (list!4706 x!245013) (list!4706 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013))))))))

(assert (=> bs!290831 (=> true e!801197)))

(declare-fun b!1258544 () Bool)

(assert (=> b!1258544 (= e!801197 (= (toValue!11 KeywordValueInjection!153 x!245013) (toValue!11 KeywordValueInjection!153 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013)))))))

(assert (= (and bs!290831 (not res!557088)) b!1258544))

(declare-fun bs!290832 () Bool)

(assert (= bs!290832 (and m!1416785 m!1416787 m!1416781)))

(assert (=> bs!290832 m!1416787))

(assert (=> bs!290832 m!1416785))

(assert (=> bs!290832 s!183743))

(declare-fun bs!290833 () Bool)

(declare-fun s!183745 () Bool)

(assert (= bs!290833 (and neg-inst!952 s!183745)))

(declare-fun res!557089 () Bool)

(declare-fun e!801198 () Bool)

(assert (=> bs!290833 (=> res!557089 e!801198)))

(assert (=> bs!290833 (= res!557089 (not (= (list!4706 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013))) (list!4706 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013))))))))

(assert (=> bs!290833 (=> true e!801198)))

(declare-fun b!1258545 () Bool)

(assert (=> b!1258545 (= e!801198 (= (toValue!11 KeywordValueInjection!153 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013))) (toValue!11 KeywordValueInjection!153 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013)))))))

(assert (= (and bs!290833 (not res!557089)) b!1258545))

(assert (=> m!1416785 s!183745))

(declare-fun bs!290834 () Bool)

(declare-fun s!183747 () Bool)

(assert (= bs!290834 (and neg-inst!952 s!183747)))

(declare-fun res!557090 () Bool)

(declare-fun e!801199 () Bool)

(assert (=> bs!290834 (=> res!557090 e!801199)))

(assert (=> bs!290834 (= res!557090 (not (= (list!4706 x!245015) (list!4706 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013))))))))

(assert (=> bs!290834 (=> true e!801199)))

(declare-fun b!1258546 () Bool)

(assert (=> b!1258546 (= e!801199 (= (toValue!11 KeywordValueInjection!153 x!245015) (toValue!11 KeywordValueInjection!153 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013)))))))

(assert (= (and bs!290834 (not res!557090)) b!1258546))

(declare-fun bs!290835 () Bool)

(assert (= bs!290835 (and m!1416785 m!1416801 m!1416793)))

(assert (=> bs!290835 m!1416793))

(assert (=> bs!290835 m!1416785))

(assert (=> bs!290835 s!183747))

(declare-fun bs!290836 () Bool)

(declare-fun s!183749 () Bool)

(assert (= bs!290836 (and neg-inst!952 s!183749)))

(declare-fun res!557091 () Bool)

(declare-fun e!801200 () Bool)

(assert (=> bs!290836 (=> res!557091 e!801200)))

(assert (=> bs!290836 (= res!557091 (not (= (list!4706 x!245014) (list!4706 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013))))))))

(assert (=> bs!290836 (=> true e!801200)))

(declare-fun b!1258547 () Bool)

(assert (=> b!1258547 (= e!801200 (= (toValue!11 KeywordValueInjection!153 x!245014) (toValue!11 KeywordValueInjection!153 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013)))))))

(assert (= (and bs!290836 (not res!557091)) b!1258547))

(declare-fun bs!290837 () Bool)

(assert (= bs!290837 (and m!1416785 m!1416791 m!1416799)))

(assert (=> bs!290837 m!1416791))

(assert (=> bs!290837 m!1416785))

(assert (=> bs!290837 s!183749))

(declare-fun bs!290838 () Bool)

(declare-fun s!183751 () Bool)

(assert (= bs!290838 (and neg-inst!952 s!183751)))

(declare-fun res!557092 () Bool)

(declare-fun e!801201 () Bool)

(assert (=> bs!290838 (=> res!557092 e!801201)))

(assert (=> bs!290838 (= res!557092 (not (= (list!4706 lt!421108) (list!4706 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013))))))))

(assert (=> bs!290838 (=> true e!801201)))

(declare-fun b!1258548 () Bool)

(assert (=> b!1258548 (= e!801201 (= (toValue!11 KeywordValueInjection!153 lt!421108) (toValue!11 KeywordValueInjection!153 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013)))))))

(assert (= (and bs!290838 (not res!557092)) b!1258548))

(declare-fun bs!290839 () Bool)

(assert (= bs!290839 (and m!1416785 m!1416773)))

(assert (=> bs!290839 m!1416773))

(assert (=> bs!290839 m!1416785))

(assert (=> bs!290839 s!183751))

(assert (=> m!1416785 s!183745))

(declare-fun bs!290840 () Bool)

(declare-fun s!183753 () Bool)

(assert (= bs!290840 (and neg-inst!952 s!183753)))

(declare-fun res!557093 () Bool)

(declare-fun e!801202 () Bool)

(assert (=> bs!290840 (=> res!557093 e!801202)))

(assert (=> bs!290840 (= res!557093 (not (= (list!4706 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013))) (list!4706 lt!421108))))))

(assert (=> bs!290840 (=> true e!801202)))

(declare-fun b!1258549 () Bool)

(assert (=> b!1258549 (= e!801202 (= (toValue!11 KeywordValueInjection!153 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013))) (toValue!11 KeywordValueInjection!153 lt!421108)))))

(assert (= (and bs!290840 (not res!557093)) b!1258549))

(assert (=> bs!290839 m!1416785))

(assert (=> bs!290839 m!1416773))

(assert (=> bs!290839 s!183753))

(declare-fun bs!290841 () Bool)

(declare-fun s!183755 () Bool)

(assert (= bs!290841 (and neg-inst!952 s!183755)))

(declare-fun res!557094 () Bool)

(declare-fun e!801203 () Bool)

(assert (=> bs!290841 (=> res!557094 e!801203)))

(assert (=> bs!290841 (= res!557094 (not (= (list!4706 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013))) (list!4706 x!245013))))))

(assert (=> bs!290841 (=> true e!801203)))

(declare-fun b!1258550 () Bool)

(assert (=> b!1258550 (= e!801203 (= (toValue!11 KeywordValueInjection!153 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013))) (toValue!11 KeywordValueInjection!153 x!245013)))))

(assert (= (and bs!290841 (not res!557094)) b!1258550))

(assert (=> bs!290832 m!1416785))

(assert (=> bs!290832 m!1416787))

(assert (=> bs!290832 s!183755))

(declare-fun bs!290842 () Bool)

(declare-fun s!183757 () Bool)

(assert (= bs!290842 (and neg-inst!952 s!183757)))

(declare-fun res!557095 () Bool)

(declare-fun e!801204 () Bool)

(assert (=> bs!290842 (=> res!557095 e!801204)))

(assert (=> bs!290842 (= res!557095 (not (= (list!4706 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013))) (list!4706 x!245015))))))

(assert (=> bs!290842 (=> true e!801204)))

(declare-fun b!1258551 () Bool)

(assert (=> b!1258551 (= e!801204 (= (toValue!11 KeywordValueInjection!153 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013))) (toValue!11 KeywordValueInjection!153 x!245015)))))

(assert (= (and bs!290842 (not res!557095)) b!1258551))

(assert (=> bs!290835 m!1416785))

(assert (=> bs!290835 m!1416793))

(assert (=> bs!290835 s!183757))

(declare-fun bs!290843 () Bool)

(declare-fun s!183759 () Bool)

(assert (= bs!290843 (and neg-inst!952 s!183759)))

(declare-fun res!557096 () Bool)

(declare-fun e!801205 () Bool)

(assert (=> bs!290843 (=> res!557096 e!801205)))

(assert (=> bs!290843 (= res!557096 (not (= (list!4706 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013))) (list!4706 x!245014))))))

(assert (=> bs!290843 (=> true e!801205)))

(declare-fun b!1258552 () Bool)

(assert (=> b!1258552 (= e!801205 (= (toValue!11 KeywordValueInjection!153 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013))) (toValue!11 KeywordValueInjection!153 x!245014)))))

(assert (= (and bs!290843 (not res!557096)) b!1258552))

(assert (=> bs!290837 m!1416785))

(assert (=> bs!290837 m!1416791))

(assert (=> bs!290837 s!183759))

(declare-fun bs!290844 () Bool)

(assert (= bs!290844 (and neg-inst!952 d!355639)))

(assert (=> bs!290844 (= true inst!953)))

(declare-datatypes ((Unit!18882 0))(
  ( (Unit!18883) )
))
(declare-fun lt!421117 () Unit!18882)

(declare-fun Unit!18884 () Unit!18882)

(assert (=> d!355639 (= lt!421117 Unit!18884)))

(declare-fun lambda!49819 () Int)

(declare-fun lambda!49820 () Int)

(declare-fun lambda!49821 () Int)

(declare-fun equivClasses!774 (Int Int) Bool)

(declare-fun Forall2!385 (Int) Bool)

(assert (=> d!355639 (= (equivClasses!774 lambda!49819 lambda!49820) (Forall2!385 lambda!49821))))

(declare-fun lt!421119 () Unit!18882)

(declare-fun Unit!18885 () Unit!18882)

(assert (=> d!355639 (= lt!421119 Unit!18885)))

(assert (=> d!355639 (= (Forall2!385 lambda!49821) inst!953)))

(declare-fun lt!421120 () Unit!18882)

(declare-fun Unit!18886 () Unit!18882)

(assert (=> d!355639 (= lt!421120 Unit!18886)))

(declare-fun lambda!49818 () Int)

(declare-fun semiInverseModEq!815 (Int Int) Bool)

(declare-fun Forall!483 (Int) Bool)

(assert (=> d!355639 (= (semiInverseModEq!815 lambda!49819 lambda!49820) (Forall!483 lambda!49818))))

(declare-fun lt!421118 () Unit!18882)

(declare-fun Unit!18887 () Unit!18882)

(assert (=> d!355639 (= lt!421118 Unit!18887)))

(assert (=> d!355639 (= (Forall!483 lambda!49818) inst!952)))

(assert (=> d!355639 (= (injection!9 KeywordValueInjection!153) (TokenValueInjection!4175 lambda!49820 lambda!49819))))

(assert (= neg-inst!953 inst!952))

(assert (= neg-inst!952 inst!953))

(declare-fun m!1416807 () Bool)

(assert (=> d!355639 m!1416807))

(declare-fun m!1416809 () Bool)

(assert (=> d!355639 m!1416809))

(assert (=> d!355639 m!1416809))

(declare-fun m!1416811 () Bool)

(assert (=> d!355639 m!1416811))

(declare-fun m!1416813 () Bool)

(assert (=> d!355639 m!1416813))

(assert (=> d!355639 m!1416807))

(assert (=> b!1258474 d!355639))

(declare-fun d!355641 () Bool)

(declare-fun rBracketRe!0 (JsonLexer!350) Regex!3479)

(assert (=> d!355641 (= (rBracketRule!0 JsonLexer!351) (Rule!4135 (rBracketRe!0 JsonLexer!351) (String!15517 "rriigghhttBBrraacckkeett") false (injection!9 KeywordValueInjection!153)))))

(declare-fun bs!290845 () Bool)

(assert (= bs!290845 d!355641))

(declare-fun m!1416815 () Bool)

(assert (=> bs!290845 m!1416815))

(assert (=> bs!290845 m!1416721))

(assert (=> b!1258474 d!355641))

(declare-fun d!355643 () Bool)

(declare-fun dynLambda!5506 (Int BalanceConc!8232) TokenValue!2257)

(assert (=> d!355643 (= (apply!2705 (injection!9 KeywordValueInjection!153) (singletonSeq!759 #x005D)) (dynLambda!5506 (toValue!3328 (injection!9 KeywordValueInjection!153)) (singletonSeq!759 #x005D)))))

(declare-fun b_lambda!36495 () Bool)

(assert (=> (not b_lambda!36495) (not d!355643)))

(declare-fun bs!290846 () Bool)

(assert (= bs!290846 d!355643))

(assert (=> bs!290846 m!1416723))

(declare-fun m!1416817 () Bool)

(assert (=> bs!290846 m!1416817))

(assert (=> b!1258474 d!355643))

(declare-fun d!355645 () Bool)

(declare-fun e!801208 () Bool)

(assert (=> d!355645 e!801208))

(declare-fun res!557099 () Bool)

(assert (=> d!355645 (=> (not res!557099) (not e!801208))))

(declare-fun lt!421123 () BalanceConc!8234)

(assert (=> d!355645 (= res!557099 (= (list!4705 lt!421123) (Cons!12615 (Token!3997 (apply!2705 (injection!9 KeywordValueInjection!153) (singletonSeq!759 #x005D)) (rBracketRule!0 JsonLexer!351) 1 (Cons!12613 #x005D Nil!12613)) Nil!12615)))))

(declare-fun singleton!320 (Token!3996) BalanceConc!8234)

(assert (=> d!355645 (= lt!421123 (singleton!320 (Token!3997 (apply!2705 (injection!9 KeywordValueInjection!153) (singletonSeq!759 #x005D)) (rBracketRule!0 JsonLexer!351) 1 (Cons!12613 #x005D Nil!12613))))))

(assert (=> d!355645 (= (singletonSeq!758 (Token!3997 (apply!2705 (injection!9 KeywordValueInjection!153) (singletonSeq!759 #x005D)) (rBracketRule!0 JsonLexer!351) 1 (Cons!12613 #x005D Nil!12613))) lt!421123)))

(declare-fun b!1258555 () Bool)

(declare-fun isBalanced!1210 (Conc!4147) Bool)

(assert (=> b!1258555 (= e!801208 (isBalanced!1210 (c!208976 lt!421123)))))

(assert (= (and d!355645 res!557099) b!1258555))

(declare-fun m!1416819 () Bool)

(assert (=> d!355645 m!1416819))

(declare-fun m!1416821 () Bool)

(assert (=> d!355645 m!1416821))

(declare-fun m!1416823 () Bool)

(assert (=> b!1258555 m!1416823))

(assert (=> b!1258474 d!355645))

(declare-fun d!355647 () Bool)

(assert (=> d!355647 (= (isEmpty!7505 lt!421095) ((_ is Nil!12614) lt!421095))))

(assert (=> start!111118 d!355647))

(declare-fun d!355649 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!350) Rule!4134)

(declare-fun integerLiteralRule!0 (JsonLexer!350) Rule!4134)

(declare-fun floatLiteralRule!0 (JsonLexer!350) Rule!4134)

(declare-fun trueRule!0 (JsonLexer!350) Rule!4134)

(declare-fun falseRule!0 (JsonLexer!350) Rule!4134)

(declare-fun nullRule!0 (JsonLexer!350) Rule!4134)

(declare-fun jsonstringRule!0 (JsonLexer!350) Rule!4134)

(declare-fun lBraceRule!0 (JsonLexer!350) Rule!4134)

(declare-fun rBraceRule!0 (JsonLexer!350) Rule!4134)

(declare-fun lBracketRule!0 (JsonLexer!350) Rule!4134)

(declare-fun colonRule!0 (JsonLexer!350) Rule!4134)

(declare-fun commaRule!0 (JsonLexer!350) Rule!4134)

(declare-fun eofRule!0 (JsonLexer!350) Rule!4134)

(assert (=> d!355649 (= (rules!109 JsonLexer!351) (Cons!12614 (whitespaceRule!0 JsonLexer!351) (Cons!12614 (integerLiteralRule!0 JsonLexer!351) (Cons!12614 (floatLiteralRule!0 JsonLexer!351) (Cons!12614 (trueRule!0 JsonLexer!351) (Cons!12614 (falseRule!0 JsonLexer!351) (Cons!12614 (nullRule!0 JsonLexer!351) (Cons!12614 (jsonstringRule!0 JsonLexer!351) (Cons!12614 (lBraceRule!0 JsonLexer!351) (Cons!12614 (rBraceRule!0 JsonLexer!351) (Cons!12614 (lBracketRule!0 JsonLexer!351) (Cons!12614 (rBracketRule!0 JsonLexer!351) (Cons!12614 (colonRule!0 JsonLexer!351) (Cons!12614 (commaRule!0 JsonLexer!351) (Cons!12614 (eofRule!0 JsonLexer!351) Nil!12614)))))))))))))))))

(declare-fun bs!290847 () Bool)

(assert (= bs!290847 d!355649))

(declare-fun m!1416825 () Bool)

(assert (=> bs!290847 m!1416825))

(declare-fun m!1416827 () Bool)

(assert (=> bs!290847 m!1416827))

(declare-fun m!1416829 () Bool)

(assert (=> bs!290847 m!1416829))

(declare-fun m!1416831 () Bool)

(assert (=> bs!290847 m!1416831))

(declare-fun m!1416833 () Bool)

(assert (=> bs!290847 m!1416833))

(declare-fun m!1416835 () Bool)

(assert (=> bs!290847 m!1416835))

(declare-fun m!1416837 () Bool)

(assert (=> bs!290847 m!1416837))

(declare-fun m!1416839 () Bool)

(assert (=> bs!290847 m!1416839))

(declare-fun m!1416841 () Bool)

(assert (=> bs!290847 m!1416841))

(declare-fun m!1416843 () Bool)

(assert (=> bs!290847 m!1416843))

(declare-fun m!1416845 () Bool)

(assert (=> bs!290847 m!1416845))

(assert (=> bs!290847 m!1416731))

(declare-fun m!1416847 () Bool)

(assert (=> bs!290847 m!1416847))

(declare-fun m!1416849 () Bool)

(assert (=> bs!290847 m!1416849))

(assert (=> start!111118 d!355649))

(declare-fun d!355651 () Bool)

(declare-fun res!557102 () Bool)

(declare-fun e!801211 () Bool)

(assert (=> d!355651 (=> (not res!557102) (not e!801211))))

(assert (=> d!355651 (= res!557102 ((_ is HashMap!1263) (cache!1644 cacheUp!343)))))

(assert (=> d!355651 (= (inv!17003 cacheUp!343) e!801211)))

(declare-fun b!1258558 () Bool)

(declare-fun validCacheMapUp!118 (MutableMap!1263) Bool)

(assert (=> b!1258558 (= e!801211 (validCacheMapUp!118 (cache!1644 cacheUp!343)))))

(assert (= (and d!355651 res!557102) b!1258558))

(declare-fun m!1416851 () Bool)

(assert (=> b!1258558 m!1416851))

(assert (=> start!111118 d!355651))

(declare-fun d!355653 () Bool)

(declare-fun res!557105 () Bool)

(declare-fun e!801214 () Bool)

(assert (=> d!355653 (=> (not res!557105) (not e!801214))))

(assert (=> d!355653 (= res!557105 ((_ is HashMap!1264) (cache!1645 cacheDown!356)))))

(assert (=> d!355653 (= (inv!17004 cacheDown!356) e!801214)))

(declare-fun b!1258561 () Bool)

(declare-fun validCacheMapDown!118 (MutableMap!1264) Bool)

(assert (=> b!1258561 (= e!801214 (validCacheMapDown!118 (cache!1645 cacheDown!356)))))

(assert (= (and d!355653 res!557105) b!1258561))

(declare-fun m!1416853 () Bool)

(assert (=> b!1258561 m!1416853))

(assert (=> start!111118 d!355653))

(declare-fun bs!290848 () Bool)

(declare-fun d!355655 () Bool)

(assert (= bs!290848 (and d!355655 d!355635)))

(declare-fun lambda!49824 () Int)

(assert (=> bs!290848 (= lambda!49824 lambda!49797)))

(declare-fun b!1258570 () Bool)

(declare-fun e!801223 () Bool)

(assert (=> b!1258570 (= e!801223 true)))

(declare-fun b!1258569 () Bool)

(declare-fun e!801222 () Bool)

(assert (=> b!1258569 (= e!801222 e!801223)))

(declare-fun b!1258568 () Bool)

(declare-fun e!801221 () Bool)

(assert (=> b!1258568 (= e!801221 e!801222)))

(assert (=> d!355655 e!801221))

(assert (= b!1258569 b!1258570))

(assert (= b!1258568 b!1258569))

(assert (= (and d!355655 ((_ is Cons!12614) lt!421095)) b!1258568))

(assert (=> b!1258570 (< (dynLambda!5503 order!7675 (toValue!3328 (transformation!2167 (h!18015 lt!421095)))) (dynLambda!5504 order!7677 lambda!49824))))

(assert (=> b!1258570 (< (dynLambda!5505 order!7679 (toChars!3187 (transformation!2167 (h!18015 lt!421095)))) (dynLambda!5504 order!7677 lambda!49824))))

(assert (=> d!355655 true))

(declare-fun lt!421126 () Bool)

(declare-fun forall!3197 (List!12681 Int) Bool)

(assert (=> d!355655 (= lt!421126 (forall!3197 (list!4705 lt!421096) lambda!49824))))

(declare-fun e!801219 () Bool)

(assert (=> d!355655 (= lt!421126 e!801219)))

(declare-fun res!557111 () Bool)

(assert (=> d!355655 (=> res!557111 e!801219)))

(assert (=> d!355655 (= res!557111 (not ((_ is Cons!12615) (list!4705 lt!421096))))))

(assert (=> d!355655 (not (isEmpty!7505 lt!421095))))

(assert (=> d!355655 (= (rulesProduceEachTokenIndividuallyList!664 Lexer!1860 lt!421095 (list!4705 lt!421096)) lt!421126)))

(declare-fun b!1258566 () Bool)

(declare-fun e!801220 () Bool)

(assert (=> b!1258566 (= e!801219 e!801220)))

(declare-fun res!557110 () Bool)

(assert (=> b!1258566 (=> (not res!557110) (not e!801220))))

(declare-fun rulesProduceIndividualToken!851 (LexerInterface!1862 List!12680 Token!3996) Bool)

(assert (=> b!1258566 (= res!557110 (rulesProduceIndividualToken!851 Lexer!1860 lt!421095 (h!18016 (list!4705 lt!421096))))))

(declare-fun b!1258567 () Bool)

(assert (=> b!1258567 (= e!801220 (rulesProduceEachTokenIndividuallyList!664 Lexer!1860 lt!421095 (t!115995 (list!4705 lt!421096))))))

(assert (= (and d!355655 (not res!557111)) b!1258566))

(assert (= (and b!1258566 res!557110) b!1258567))

(assert (=> d!355655 m!1416751))

(declare-fun m!1416855 () Bool)

(assert (=> d!355655 m!1416855))

(assert (=> d!355655 m!1416735))

(declare-fun m!1416857 () Bool)

(assert (=> b!1258566 m!1416857))

(declare-fun m!1416859 () Bool)

(assert (=> b!1258567 m!1416859))

(assert (=> b!1258464 d!355655))

(declare-fun d!355657 () Bool)

(declare-fun list!4707 (Conc!4147) List!12681)

(assert (=> d!355657 (= (list!4705 lt!421096) (list!4707 (c!208976 lt!421096)))))

(declare-fun bs!290849 () Bool)

(assert (= bs!290849 d!355657))

(declare-fun m!1416861 () Bool)

(assert (=> bs!290849 m!1416861))

(assert (=> b!1258464 d!355657))

(declare-fun d!355659 () Bool)

(assert (=> d!355659 (= (array_inv!1519 (_keys!1614 (v!20861 (underlying!2847 (v!20862 (underlying!2848 (cache!1645 cacheDown!356))))))) (bvsge (size!9989 (_keys!1614 (v!20861 (underlying!2847 (v!20862 (underlying!2848 (cache!1645 cacheDown!356))))))) #b00000000000000000000000000000000))))

(assert (=> b!1258460 d!355659))

(declare-fun d!355661 () Bool)

(assert (=> d!355661 (= (array_inv!1520 (_values!1599 (v!20861 (underlying!2847 (v!20862 (underlying!2848 (cache!1645 cacheDown!356))))))) (bvsge (size!9990 (_values!1599 (v!20861 (underlying!2847 (v!20862 (underlying!2848 (cache!1645 cacheDown!356))))))) #b00000000000000000000000000000000))))

(assert (=> b!1258460 d!355661))

(declare-fun b!1258575 () Bool)

(declare-fun e!801231 () Bool)

(declare-fun setRes!7970 () Bool)

(declare-fun tp!370945 () Bool)

(declare-fun inv!17007 (Context!1082) Bool)

(assert (=> b!1258575 (= e!801231 (and (inv!17007 (_1!7111 (_1!7112 (h!18012 (zeroValue!1576 (v!20859 (underlying!2845 (v!20860 (underlying!2846 (cache!1644 cacheUp!343)))))))))) setRes!7970 tp!370945))))

(declare-fun condSetEmpty!7970 () Bool)

(assert (=> b!1258575 (= condSetEmpty!7970 (= (_2!7112 (h!18012 (zeroValue!1576 (v!20859 (underlying!2845 (v!20860 (underlying!2846 (cache!1644 cacheUp!343)))))))) ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setIsEmpty!7970 () Bool)

(assert (=> setIsEmpty!7970 setRes!7970))

(declare-fun setNonEmpty!7970 () Bool)

(declare-fun tp!370944 () Bool)

(declare-fun setElem!7970 () Context!1082)

(assert (=> setNonEmpty!7970 (= setRes!7970 (and tp!370944 (inv!17007 setElem!7970)))))

(declare-fun setRest!7970 () (InoxSet Context!1082))

(assert (=> setNonEmpty!7970 (= (_2!7112 (h!18012 (zeroValue!1576 (v!20859 (underlying!2845 (v!20860 (underlying!2846 (cache!1644 cacheUp!343)))))))) ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!7970 true) setRest!7970))))

(assert (=> b!1258475 (= tp!370926 e!801231)))

(assert (= (and b!1258575 condSetEmpty!7970) setIsEmpty!7970))

(assert (= (and b!1258575 (not condSetEmpty!7970)) setNonEmpty!7970))

(assert (= (and b!1258475 ((_ is Cons!12611) (zeroValue!1576 (v!20859 (underlying!2845 (v!20860 (underlying!2846 (cache!1644 cacheUp!343)))))))) b!1258575))

(declare-fun m!1416863 () Bool)

(assert (=> b!1258575 m!1416863))

(declare-fun m!1416865 () Bool)

(assert (=> setNonEmpty!7970 m!1416865))

(declare-fun setRes!7971 () Bool)

(declare-fun b!1258576 () Bool)

(declare-fun tp!370947 () Bool)

(declare-fun e!801234 () Bool)

(assert (=> b!1258576 (= e!801234 (and (inv!17007 (_1!7111 (_1!7112 (h!18012 (minValue!1576 (v!20859 (underlying!2845 (v!20860 (underlying!2846 (cache!1644 cacheUp!343)))))))))) setRes!7971 tp!370947))))

(declare-fun condSetEmpty!7971 () Bool)

(assert (=> b!1258576 (= condSetEmpty!7971 (= (_2!7112 (h!18012 (minValue!1576 (v!20859 (underlying!2845 (v!20860 (underlying!2846 (cache!1644 cacheUp!343)))))))) ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setIsEmpty!7971 () Bool)

(assert (=> setIsEmpty!7971 setRes!7971))

(declare-fun setNonEmpty!7971 () Bool)

(declare-fun tp!370946 () Bool)

(declare-fun setElem!7971 () Context!1082)

(assert (=> setNonEmpty!7971 (= setRes!7971 (and tp!370946 (inv!17007 setElem!7971)))))

(declare-fun setRest!7971 () (InoxSet Context!1082))

(assert (=> setNonEmpty!7971 (= (_2!7112 (h!18012 (minValue!1576 (v!20859 (underlying!2845 (v!20860 (underlying!2846 (cache!1644 cacheUp!343)))))))) ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!7971 true) setRest!7971))))

(assert (=> b!1258475 (= tp!370924 e!801234)))

(assert (= (and b!1258576 condSetEmpty!7971) setIsEmpty!7971))

(assert (= (and b!1258576 (not condSetEmpty!7971)) setNonEmpty!7971))

(assert (= (and b!1258475 ((_ is Cons!12611) (minValue!1576 (v!20859 (underlying!2845 (v!20860 (underlying!2846 (cache!1644 cacheUp!343)))))))) b!1258576))

(declare-fun m!1416867 () Bool)

(assert (=> b!1258576 m!1416867))

(declare-fun m!1416869 () Bool)

(assert (=> setNonEmpty!7971 m!1416869))

(declare-fun tp!370949 () Bool)

(declare-fun e!801237 () Bool)

(declare-fun b!1258577 () Bool)

(declare-fun setRes!7972 () Bool)

(assert (=> b!1258577 (= e!801237 (and (inv!17007 (_1!7111 (_1!7112 (h!18012 mapDefault!6326)))) setRes!7972 tp!370949))))

(declare-fun condSetEmpty!7972 () Bool)

(assert (=> b!1258577 (= condSetEmpty!7972 (= (_2!7112 (h!18012 mapDefault!6326)) ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setIsEmpty!7972 () Bool)

(assert (=> setIsEmpty!7972 setRes!7972))

(declare-fun setNonEmpty!7972 () Bool)

(declare-fun tp!370948 () Bool)

(declare-fun setElem!7972 () Context!1082)

(assert (=> setNonEmpty!7972 (= setRes!7972 (and tp!370948 (inv!17007 setElem!7972)))))

(declare-fun setRest!7972 () (InoxSet Context!1082))

(assert (=> setNonEmpty!7972 (= (_2!7112 (h!18012 mapDefault!6326)) ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!7972 true) setRest!7972))))

(assert (=> b!1258466 (= tp!370927 e!801237)))

(assert (= (and b!1258577 condSetEmpty!7972) setIsEmpty!7972))

(assert (= (and b!1258577 (not condSetEmpty!7972)) setNonEmpty!7972))

(assert (= (and b!1258466 ((_ is Cons!12611) mapDefault!6326)) b!1258577))

(declare-fun m!1416871 () Bool)

(assert (=> b!1258577 m!1416871))

(declare-fun m!1416873 () Bool)

(assert (=> setNonEmpty!7972 m!1416873))

(declare-fun setNonEmpty!7977 () Bool)

(declare-fun setRes!7978 () Bool)

(declare-fun tp!370960 () Bool)

(declare-fun setElem!7978 () Context!1082)

(assert (=> setNonEmpty!7977 (= setRes!7978 (and tp!370960 (inv!17007 setElem!7978)))))

(declare-fun mapValue!6329 () List!12678)

(declare-fun setRest!7977 () (InoxSet Context!1082))

(assert (=> setNonEmpty!7977 (= (_2!7114 (h!18013 mapValue!6329)) ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!7978 true) setRest!7977))))

(declare-fun e!801251 () Bool)

(declare-fun setRes!7977 () Bool)

(declare-fun mapDefault!6329 () List!12678)

(declare-fun tp!370961 () Bool)

(declare-fun b!1258584 () Bool)

(assert (=> b!1258584 (= e!801251 (and (inv!17007 (_2!7113 (_1!7114 (h!18013 mapDefault!6329)))) setRes!7977 tp!370961))))

(declare-fun condSetEmpty!7978 () Bool)

(assert (=> b!1258584 (= condSetEmpty!7978 (= (_2!7114 (h!18013 mapDefault!6329)) ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setIsEmpty!7977 () Bool)

(assert (=> setIsEmpty!7977 setRes!7977))

(declare-fun condMapEmpty!6329 () Bool)

(assert (=> mapNonEmpty!6326 (= condMapEmpty!6329 (= mapRest!6325 ((as const (Array (_ BitVec 32) List!12678)) mapDefault!6329)))))

(declare-fun mapRes!6329 () Bool)

(assert (=> mapNonEmpty!6326 (= tp!370918 (and e!801251 mapRes!6329))))

(declare-fun setIsEmpty!7978 () Bool)

(assert (=> setIsEmpty!7978 setRes!7978))

(declare-fun setNonEmpty!7978 () Bool)

(declare-fun tp!370962 () Bool)

(declare-fun setElem!7977 () Context!1082)

(assert (=> setNonEmpty!7978 (= setRes!7977 (and tp!370962 (inv!17007 setElem!7977)))))

(declare-fun setRest!7978 () (InoxSet Context!1082))

(assert (=> setNonEmpty!7978 (= (_2!7114 (h!18013 mapDefault!6329)) ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!7977 true) setRest!7978))))

(declare-fun mapNonEmpty!6329 () Bool)

(declare-fun tp!370963 () Bool)

(declare-fun e!801254 () Bool)

(assert (=> mapNonEmpty!6329 (= mapRes!6329 (and tp!370963 e!801254))))

(declare-fun mapRest!6329 () (Array (_ BitVec 32) List!12678))

(declare-fun mapKey!6329 () (_ BitVec 32))

(assert (=> mapNonEmpty!6329 (= mapRest!6325 (store mapRest!6329 mapKey!6329 mapValue!6329))))

(declare-fun tp!370964 () Bool)

(declare-fun b!1258585 () Bool)

(assert (=> b!1258585 (= e!801254 (and (inv!17007 (_2!7113 (_1!7114 (h!18013 mapValue!6329)))) setRes!7978 tp!370964))))

(declare-fun condSetEmpty!7977 () Bool)

(assert (=> b!1258585 (= condSetEmpty!7977 (= (_2!7114 (h!18013 mapValue!6329)) ((as const (Array Context!1082 Bool)) false)))))

(declare-fun mapIsEmpty!6329 () Bool)

(assert (=> mapIsEmpty!6329 mapRes!6329))

(assert (= (and mapNonEmpty!6326 condMapEmpty!6329) mapIsEmpty!6329))

(assert (= (and mapNonEmpty!6326 (not condMapEmpty!6329)) mapNonEmpty!6329))

(assert (= (and b!1258585 condSetEmpty!7977) setIsEmpty!7978))

(assert (= (and b!1258585 (not condSetEmpty!7977)) setNonEmpty!7977))

(assert (= (and mapNonEmpty!6329 ((_ is Cons!12612) mapValue!6329)) b!1258585))

(assert (= (and b!1258584 condSetEmpty!7978) setIsEmpty!7977))

(assert (= (and b!1258584 (not condSetEmpty!7978)) setNonEmpty!7978))

(assert (= (and mapNonEmpty!6326 ((_ is Cons!12612) mapDefault!6329)) b!1258584))

(declare-fun m!1416875 () Bool)

(assert (=> setNonEmpty!7977 m!1416875))

(declare-fun m!1416877 () Bool)

(assert (=> b!1258585 m!1416877))

(declare-fun m!1416879 () Bool)

(assert (=> setNonEmpty!7978 m!1416879))

(declare-fun m!1416881 () Bool)

(assert (=> mapNonEmpty!6329 m!1416881))

(declare-fun m!1416883 () Bool)

(assert (=> b!1258584 m!1416883))

(declare-fun b!1258590 () Bool)

(declare-fun tp!370970 () Bool)

(declare-fun setRes!7981 () Bool)

(declare-fun e!801265 () Bool)

(assert (=> b!1258590 (= e!801265 (and (inv!17007 (_2!7113 (_1!7114 (h!18013 mapValue!6326)))) setRes!7981 tp!370970))))

(declare-fun condSetEmpty!7981 () Bool)

(assert (=> b!1258590 (= condSetEmpty!7981 (= (_2!7114 (h!18013 mapValue!6326)) ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setIsEmpty!7981 () Bool)

(assert (=> setIsEmpty!7981 setRes!7981))

(declare-fun setNonEmpty!7981 () Bool)

(declare-fun tp!370969 () Bool)

(declare-fun setElem!7981 () Context!1082)

(assert (=> setNonEmpty!7981 (= setRes!7981 (and tp!370969 (inv!17007 setElem!7981)))))

(declare-fun setRest!7981 () (InoxSet Context!1082))

(assert (=> setNonEmpty!7981 (= (_2!7114 (h!18013 mapValue!6326)) ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!7981 true) setRest!7981))))

(assert (=> mapNonEmpty!6326 (= tp!370921 e!801265)))

(assert (= (and b!1258590 condSetEmpty!7981) setIsEmpty!7981))

(assert (= (and b!1258590 (not condSetEmpty!7981)) setNonEmpty!7981))

(assert (= (and mapNonEmpty!6326 ((_ is Cons!12612) mapValue!6326)) b!1258590))

(declare-fun m!1416885 () Bool)

(assert (=> b!1258590 m!1416885))

(declare-fun m!1416887 () Bool)

(assert (=> setNonEmpty!7981 m!1416887))

(declare-fun setIsEmpty!7986 () Bool)

(declare-fun setRes!7987 () Bool)

(assert (=> setIsEmpty!7986 setRes!7987))

(declare-fun tp!370984 () Bool)

(declare-fun mapValue!6332 () List!12677)

(declare-fun setRes!7986 () Bool)

(declare-fun e!801279 () Bool)

(declare-fun b!1258597 () Bool)

(assert (=> b!1258597 (= e!801279 (and (inv!17007 (_1!7111 (_1!7112 (h!18012 mapValue!6332)))) setRes!7986 tp!370984))))

(declare-fun condSetEmpty!7987 () Bool)

(assert (=> b!1258597 (= condSetEmpty!7987 (= (_2!7112 (h!18012 mapValue!6332)) ((as const (Array Context!1082 Bool)) false)))))

(declare-fun e!801280 () Bool)

(declare-fun mapDefault!6332 () List!12677)

(declare-fun tp!370982 () Bool)

(declare-fun b!1258598 () Bool)

(assert (=> b!1258598 (= e!801280 (and (inv!17007 (_1!7111 (_1!7112 (h!18012 mapDefault!6332)))) setRes!7987 tp!370982))))

(declare-fun condSetEmpty!7986 () Bool)

(assert (=> b!1258598 (= condSetEmpty!7986 (= (_2!7112 (h!18012 mapDefault!6332)) ((as const (Array Context!1082 Bool)) false)))))

(declare-fun condMapEmpty!6332 () Bool)

(assert (=> mapNonEmpty!6325 (= condMapEmpty!6332 (= mapRest!6326 ((as const (Array (_ BitVec 32) List!12677)) mapDefault!6332)))))

(declare-fun mapRes!6332 () Bool)

(assert (=> mapNonEmpty!6325 (= tp!370928 (and e!801280 mapRes!6332))))

(declare-fun setNonEmpty!7986 () Bool)

(declare-fun tp!370983 () Bool)

(declare-fun setElem!7987 () Context!1082)

(assert (=> setNonEmpty!7986 (= setRes!7986 (and tp!370983 (inv!17007 setElem!7987)))))

(declare-fun setRest!7986 () (InoxSet Context!1082))

(assert (=> setNonEmpty!7986 (= (_2!7112 (h!18012 mapValue!6332)) ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!7987 true) setRest!7986))))

(declare-fun mapNonEmpty!6332 () Bool)

(declare-fun tp!370985 () Bool)

(assert (=> mapNonEmpty!6332 (= mapRes!6332 (and tp!370985 e!801279))))

(declare-fun mapRest!6332 () (Array (_ BitVec 32) List!12677))

(declare-fun mapKey!6332 () (_ BitVec 32))

(assert (=> mapNonEmpty!6332 (= mapRest!6326 (store mapRest!6332 mapKey!6332 mapValue!6332))))

(declare-fun mapIsEmpty!6332 () Bool)

(assert (=> mapIsEmpty!6332 mapRes!6332))

(declare-fun setNonEmpty!7987 () Bool)

(declare-fun tp!370981 () Bool)

(declare-fun setElem!7986 () Context!1082)

(assert (=> setNonEmpty!7987 (= setRes!7987 (and tp!370981 (inv!17007 setElem!7986)))))

(declare-fun setRest!7987 () (InoxSet Context!1082))

(assert (=> setNonEmpty!7987 (= (_2!7112 (h!18012 mapDefault!6332)) ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!7986 true) setRest!7987))))

(declare-fun setIsEmpty!7987 () Bool)

(assert (=> setIsEmpty!7987 setRes!7986))

(assert (= (and mapNonEmpty!6325 condMapEmpty!6332) mapIsEmpty!6332))

(assert (= (and mapNonEmpty!6325 (not condMapEmpty!6332)) mapNonEmpty!6332))

(assert (= (and b!1258597 condSetEmpty!7987) setIsEmpty!7987))

(assert (= (and b!1258597 (not condSetEmpty!7987)) setNonEmpty!7986))

(assert (= (and mapNonEmpty!6332 ((_ is Cons!12611) mapValue!6332)) b!1258597))

(assert (= (and b!1258598 condSetEmpty!7986) setIsEmpty!7986))

(assert (= (and b!1258598 (not condSetEmpty!7986)) setNonEmpty!7987))

(assert (= (and mapNonEmpty!6325 ((_ is Cons!12611) mapDefault!6332)) b!1258598))

(declare-fun m!1416889 () Bool)

(assert (=> setNonEmpty!7987 m!1416889))

(declare-fun m!1416891 () Bool)

(assert (=> mapNonEmpty!6332 m!1416891))

(declare-fun m!1416893 () Bool)

(assert (=> b!1258597 m!1416893))

(declare-fun m!1416895 () Bool)

(assert (=> b!1258598 m!1416895))

(declare-fun m!1416897 () Bool)

(assert (=> setNonEmpty!7986 m!1416897))

(declare-fun b!1258599 () Bool)

(declare-fun tp!370987 () Bool)

(declare-fun e!801285 () Bool)

(declare-fun setRes!7988 () Bool)

(assert (=> b!1258599 (= e!801285 (and (inv!17007 (_1!7111 (_1!7112 (h!18012 mapValue!6325)))) setRes!7988 tp!370987))))

(declare-fun condSetEmpty!7988 () Bool)

(assert (=> b!1258599 (= condSetEmpty!7988 (= (_2!7112 (h!18012 mapValue!6325)) ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setIsEmpty!7988 () Bool)

(assert (=> setIsEmpty!7988 setRes!7988))

(declare-fun setNonEmpty!7988 () Bool)

(declare-fun tp!370986 () Bool)

(declare-fun setElem!7988 () Context!1082)

(assert (=> setNonEmpty!7988 (= setRes!7988 (and tp!370986 (inv!17007 setElem!7988)))))

(declare-fun setRest!7988 () (InoxSet Context!1082))

(assert (=> setNonEmpty!7988 (= (_2!7112 (h!18012 mapValue!6325)) ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!7988 true) setRest!7988))))

(assert (=> mapNonEmpty!6325 (= tp!370925 e!801285)))

(assert (= (and b!1258599 condSetEmpty!7988) setIsEmpty!7988))

(assert (= (and b!1258599 (not condSetEmpty!7988)) setNonEmpty!7988))

(assert (= (and mapNonEmpty!6325 ((_ is Cons!12611) mapValue!6325)) b!1258599))

(declare-fun m!1416899 () Bool)

(assert (=> b!1258599 m!1416899))

(declare-fun m!1416901 () Bool)

(assert (=> setNonEmpty!7988 m!1416901))

(declare-fun b!1258600 () Bool)

(declare-fun setRes!7989 () Bool)

(declare-fun tp!370989 () Bool)

(declare-fun e!801289 () Bool)

(assert (=> b!1258600 (= e!801289 (and (inv!17007 (_2!7113 (_1!7114 (h!18013 (zeroValue!1577 (v!20861 (underlying!2847 (v!20862 (underlying!2848 (cache!1645 cacheDown!356)))))))))) setRes!7989 tp!370989))))

(declare-fun condSetEmpty!7989 () Bool)

(assert (=> b!1258600 (= condSetEmpty!7989 (= (_2!7114 (h!18013 (zeroValue!1577 (v!20861 (underlying!2847 (v!20862 (underlying!2848 (cache!1645 cacheDown!356)))))))) ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setIsEmpty!7989 () Bool)

(assert (=> setIsEmpty!7989 setRes!7989))

(declare-fun setNonEmpty!7989 () Bool)

(declare-fun tp!370988 () Bool)

(declare-fun setElem!7989 () Context!1082)

(assert (=> setNonEmpty!7989 (= setRes!7989 (and tp!370988 (inv!17007 setElem!7989)))))

(declare-fun setRest!7989 () (InoxSet Context!1082))

(assert (=> setNonEmpty!7989 (= (_2!7114 (h!18013 (zeroValue!1577 (v!20861 (underlying!2847 (v!20862 (underlying!2848 (cache!1645 cacheDown!356)))))))) ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!7989 true) setRest!7989))))

(assert (=> b!1258460 (= tp!370922 e!801289)))

(assert (= (and b!1258600 condSetEmpty!7989) setIsEmpty!7989))

(assert (= (and b!1258600 (not condSetEmpty!7989)) setNonEmpty!7989))

(assert (= (and b!1258460 ((_ is Cons!12612) (zeroValue!1577 (v!20861 (underlying!2847 (v!20862 (underlying!2848 (cache!1645 cacheDown!356)))))))) b!1258600))

(declare-fun m!1416903 () Bool)

(assert (=> b!1258600 m!1416903))

(declare-fun m!1416905 () Bool)

(assert (=> setNonEmpty!7989 m!1416905))

(declare-fun tp!370991 () Bool)

(declare-fun b!1258601 () Bool)

(declare-fun e!801292 () Bool)

(declare-fun setRes!7990 () Bool)

(assert (=> b!1258601 (= e!801292 (and (inv!17007 (_2!7113 (_1!7114 (h!18013 (minValue!1577 (v!20861 (underlying!2847 (v!20862 (underlying!2848 (cache!1645 cacheDown!356)))))))))) setRes!7990 tp!370991))))

(declare-fun condSetEmpty!7990 () Bool)

(assert (=> b!1258601 (= condSetEmpty!7990 (= (_2!7114 (h!18013 (minValue!1577 (v!20861 (underlying!2847 (v!20862 (underlying!2848 (cache!1645 cacheDown!356)))))))) ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setIsEmpty!7990 () Bool)

(assert (=> setIsEmpty!7990 setRes!7990))

(declare-fun setNonEmpty!7990 () Bool)

(declare-fun tp!370990 () Bool)

(declare-fun setElem!7990 () Context!1082)

(assert (=> setNonEmpty!7990 (= setRes!7990 (and tp!370990 (inv!17007 setElem!7990)))))

(declare-fun setRest!7990 () (InoxSet Context!1082))

(assert (=> setNonEmpty!7990 (= (_2!7114 (h!18013 (minValue!1577 (v!20861 (underlying!2847 (v!20862 (underlying!2848 (cache!1645 cacheDown!356)))))))) ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!7990 true) setRest!7990))))

(assert (=> b!1258460 (= tp!370923 e!801292)))

(assert (= (and b!1258601 condSetEmpty!7990) setIsEmpty!7990))

(assert (= (and b!1258601 (not condSetEmpty!7990)) setNonEmpty!7990))

(assert (= (and b!1258460 ((_ is Cons!12612) (minValue!1577 (v!20861 (underlying!2847 (v!20862 (underlying!2848 (cache!1645 cacheDown!356)))))))) b!1258601))

(declare-fun m!1416907 () Bool)

(assert (=> b!1258601 m!1416907))

(declare-fun m!1416909 () Bool)

(assert (=> setNonEmpty!7990 m!1416909))

(declare-fun tp!370993 () Bool)

(declare-fun e!801295 () Bool)

(declare-fun b!1258602 () Bool)

(declare-fun setRes!7991 () Bool)

(assert (=> b!1258602 (= e!801295 (and (inv!17007 (_2!7113 (_1!7114 (h!18013 mapDefault!6325)))) setRes!7991 tp!370993))))

(declare-fun condSetEmpty!7991 () Bool)

(assert (=> b!1258602 (= condSetEmpty!7991 (= (_2!7114 (h!18013 mapDefault!6325)) ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setIsEmpty!7991 () Bool)

(assert (=> setIsEmpty!7991 setRes!7991))

(declare-fun setNonEmpty!7991 () Bool)

(declare-fun tp!370992 () Bool)

(declare-fun setElem!7991 () Context!1082)

(assert (=> setNonEmpty!7991 (= setRes!7991 (and tp!370992 (inv!17007 setElem!7991)))))

(declare-fun setRest!7991 () (InoxSet Context!1082))

(assert (=> setNonEmpty!7991 (= (_2!7114 (h!18013 mapDefault!6325)) ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!7991 true) setRest!7991))))

(assert (=> b!1258463 (= tp!370930 e!801295)))

(assert (= (and b!1258602 condSetEmpty!7991) setIsEmpty!7991))

(assert (= (and b!1258602 (not condSetEmpty!7991)) setNonEmpty!7991))

(assert (= (and b!1258463 ((_ is Cons!12612) mapDefault!6325)) b!1258602))

(declare-fun m!1416911 () Bool)

(assert (=> b!1258602 m!1416911))

(declare-fun m!1416913 () Bool)

(assert (=> setNonEmpty!7991 m!1416913))

(declare-fun b_lambda!36497 () Bool)

(assert (= b_lambda!36495 (or d!355639 b_lambda!36497)))

(declare-fun bs!290850 () Bool)

(declare-fun d!355663 () Bool)

(assert (= bs!290850 (and d!355663 d!355639)))

(assert (=> bs!290850 (= (dynLambda!5506 lambda!49820 (singletonSeq!759 #x005D)) (toValue!11 KeywordValueInjection!153 (singletonSeq!759 #x005D)))))

(assert (=> bs!290850 m!1416723))

(declare-fun bs!290851 () Bool)

(declare-fun s!183761 () Bool)

(assert (= bs!290851 (and neg-inst!952 s!183761)))

(declare-fun res!557112 () Bool)

(declare-fun e!801296 () Bool)

(assert (=> bs!290851 (=> res!557112 e!801296)))

(assert (=> bs!290851 (= res!557112 (not (= (list!4706 lt!421108) (list!4706 (singletonSeq!759 #x005D)))))))

(assert (=> bs!290851 (=> true e!801296)))

(declare-fun b!1258603 () Bool)

(assert (=> b!1258603 (= e!801296 (= (toValue!11 KeywordValueInjection!153 lt!421108) (toValue!11 KeywordValueInjection!153 (singletonSeq!759 #x005D))))))

(assert (= (and bs!290851 (not res!557112)) b!1258603))

(declare-fun bs!290852 () Bool)

(declare-fun m!1416915 () Bool)

(assert (= bs!290852 (and m!1416915 m!1416773)))

(assert (=> bs!290852 m!1416773))

(declare-fun bs!290853 () Bool)

(declare-fun s!183763 () Bool)

(assert (= bs!290853 (and neg-inst!952 s!183763)))

(declare-fun res!557113 () Bool)

(declare-fun e!801297 () Bool)

(assert (=> bs!290853 (=> res!557113 e!801297)))

(assert (=> bs!290853 (= res!557113 (not (= (list!4706 x!245014) (list!4706 (singletonSeq!759 #x005D)))))))

(assert (=> bs!290853 (=> true e!801297)))

(declare-fun b!1258604 () Bool)

(assert (=> b!1258604 (= e!801297 (= (toValue!11 KeywordValueInjection!153 x!245014) (toValue!11 KeywordValueInjection!153 (singletonSeq!759 #x005D))))))

(assert (= (and bs!290853 (not res!557113)) b!1258604))

(declare-fun bs!290854 () Bool)

(declare-fun m!1416917 () Bool)

(assert (= bs!290854 (and m!1416917 m!1416791 m!1416799)))

(assert (=> bs!290854 m!1416791))

(assert (=> bs!290854 m!1416917))

(assert (=> bs!290854 s!183763))

(declare-fun bs!290855 () Bool)

(declare-fun s!183765 () Bool)

(assert (= bs!290855 (and neg-inst!952 s!183765)))

(declare-fun res!557114 () Bool)

(declare-fun e!801298 () Bool)

(assert (=> bs!290855 (=> res!557114 e!801298)))

(assert (=> bs!290855 (= res!557114 (not (= (list!4706 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013))) (list!4706 (singletonSeq!759 #x005D)))))))

(assert (=> bs!290855 (=> true e!801298)))

(declare-fun b!1258605 () Bool)

(assert (=> b!1258605 (= e!801298 (= (toValue!11 KeywordValueInjection!153 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013))) (toValue!11 KeywordValueInjection!153 (singletonSeq!759 #x005D))))))

(assert (= (and bs!290855 (not res!557114)) b!1258605))

(declare-fun bs!290856 () Bool)

(assert (= bs!290856 (and m!1416917 m!1416785)))

(assert (=> bs!290856 m!1416785))

(assert (=> bs!290856 m!1416917))

(assert (=> bs!290856 s!183765))

(declare-fun bs!290857 () Bool)

(declare-fun s!183767 () Bool)

(assert (= bs!290857 (and neg-inst!952 s!183767)))

(declare-fun res!557115 () Bool)

(declare-fun e!801299 () Bool)

(assert (=> bs!290857 (=> res!557115 e!801299)))

(assert (=> bs!290857 (= res!557115 (not (= (list!4706 (singletonSeq!759 #x005D)) (list!4706 (singletonSeq!759 #x005D)))))))

(assert (=> bs!290857 (=> true e!801299)))

(declare-fun b!1258606 () Bool)

(assert (=> b!1258606 (= e!801299 (= (toValue!11 KeywordValueInjection!153 (singletonSeq!759 #x005D)) (toValue!11 KeywordValueInjection!153 (singletonSeq!759 #x005D))))))

(assert (= (and bs!290857 (not res!557115)) b!1258606))

(declare-fun bs!290858 () Bool)

(assert (= bs!290858 (and m!1416917 m!1416915)))

(assert (=> bs!290858 m!1416917))

(assert (=> bs!290858 m!1416917))

(assert (=> bs!290858 s!183767))

(assert (=> m!1416917 s!183767))

(declare-fun bs!290859 () Bool)

(declare-fun s!183769 () Bool)

(assert (= bs!290859 (and neg-inst!952 s!183769)))

(declare-fun res!557116 () Bool)

(declare-fun e!801300 () Bool)

(assert (=> bs!290859 (=> res!557116 e!801300)))

(assert (=> bs!290859 (= res!557116 (not (= (list!4706 x!245015) (list!4706 (singletonSeq!759 #x005D)))))))

(assert (=> bs!290859 (=> true e!801300)))

(declare-fun b!1258607 () Bool)

(assert (=> b!1258607 (= e!801300 (= (toValue!11 KeywordValueInjection!153 x!245015) (toValue!11 KeywordValueInjection!153 (singletonSeq!759 #x005D))))))

(assert (= (and bs!290859 (not res!557116)) b!1258607))

(declare-fun bs!290860 () Bool)

(assert (= bs!290860 (and m!1416917 m!1416801 m!1416793)))

(assert (=> bs!290860 m!1416793))

(assert (=> bs!290860 m!1416917))

(assert (=> bs!290860 s!183769))

(declare-fun bs!290861 () Bool)

(declare-fun s!183771 () Bool)

(assert (= bs!290861 (and neg-inst!952 s!183771)))

(declare-fun res!557117 () Bool)

(declare-fun e!801301 () Bool)

(assert (=> bs!290861 (=> res!557117 e!801301)))

(assert (=> bs!290861 (= res!557117 (not (= (list!4706 x!245013) (list!4706 (singletonSeq!759 #x005D)))))))

(assert (=> bs!290861 (=> true e!801301)))

(declare-fun b!1258608 () Bool)

(assert (=> b!1258608 (= e!801301 (= (toValue!11 KeywordValueInjection!153 x!245013) (toValue!11 KeywordValueInjection!153 (singletonSeq!759 #x005D))))))

(assert (= (and bs!290861 (not res!557117)) b!1258608))

(declare-fun bs!290862 () Bool)

(assert (= bs!290862 (and m!1416917 m!1416787 m!1416781)))

(assert (=> bs!290862 m!1416787))

(assert (=> bs!290862 m!1416917))

(assert (=> bs!290862 s!183771))

(declare-fun bs!290863 () Bool)

(assert (= bs!290863 (and m!1416917 m!1416773)))

(assert (=> bs!290863 s!183761))

(assert (=> bs!290858 s!183767))

(declare-fun bs!290864 () Bool)

(declare-fun s!183773 () Bool)

(assert (= bs!290864 (and neg-inst!952 s!183773)))

(declare-fun res!557118 () Bool)

(declare-fun e!801302 () Bool)

(assert (=> bs!290864 (=> res!557118 e!801302)))

(assert (=> bs!290864 (= res!557118 (not (= (list!4706 (singletonSeq!759 #x005D)) (list!4706 x!245014))))))

(assert (=> bs!290864 (=> true e!801302)))

(declare-fun b!1258609 () Bool)

(assert (=> b!1258609 (= e!801302 (= (toValue!11 KeywordValueInjection!153 (singletonSeq!759 #x005D)) (toValue!11 KeywordValueInjection!153 x!245014)))))

(assert (= (and bs!290864 (not res!557118)) b!1258609))

(assert (=> bs!290854 m!1416917))

(assert (=> bs!290854 m!1416791))

(assert (=> bs!290854 s!183773))

(assert (=> m!1416917 s!183767))

(declare-fun bs!290865 () Bool)

(declare-fun s!183775 () Bool)

(assert (= bs!290865 (and neg-inst!952 s!183775)))

(declare-fun res!557119 () Bool)

(declare-fun e!801303 () Bool)

(assert (=> bs!290865 (=> res!557119 e!801303)))

(assert (=> bs!290865 (= res!557119 (not (= (list!4706 (singletonSeq!759 #x005D)) (list!4706 x!245013))))))

(assert (=> bs!290865 (=> true e!801303)))

(declare-fun b!1258610 () Bool)

(assert (=> b!1258610 (= e!801303 (= (toValue!11 KeywordValueInjection!153 (singletonSeq!759 #x005D)) (toValue!11 KeywordValueInjection!153 x!245013)))))

(assert (= (and bs!290865 (not res!557119)) b!1258610))

(assert (=> bs!290862 m!1416917))

(assert (=> bs!290862 m!1416787))

(assert (=> bs!290862 s!183775))

(declare-fun bs!290866 () Bool)

(declare-fun s!183777 () Bool)

(assert (= bs!290866 (and neg-inst!952 s!183777)))

(declare-fun res!557120 () Bool)

(declare-fun e!801304 () Bool)

(assert (=> bs!290866 (=> res!557120 e!801304)))

(assert (=> bs!290866 (= res!557120 (not (= (list!4706 (singletonSeq!759 #x005D)) (list!4706 x!245015))))))

(assert (=> bs!290866 (=> true e!801304)))

(declare-fun b!1258611 () Bool)

(assert (=> b!1258611 (= e!801304 (= (toValue!11 KeywordValueInjection!153 (singletonSeq!759 #x005D)) (toValue!11 KeywordValueInjection!153 x!245015)))))

(assert (= (and bs!290866 (not res!557120)) b!1258611))

(assert (=> bs!290860 m!1416917))

(assert (=> bs!290860 m!1416793))

(assert (=> bs!290860 s!183777))

(declare-fun bs!290867 () Bool)

(declare-fun s!183779 () Bool)

(assert (= bs!290867 (and neg-inst!952 s!183779)))

(declare-fun res!557121 () Bool)

(declare-fun e!801305 () Bool)

(assert (=> bs!290867 (=> res!557121 e!801305)))

(assert (=> bs!290867 (= res!557121 (not (= (list!4706 (singletonSeq!759 #x005D)) (list!4706 lt!421108))))))

(assert (=> bs!290867 (=> true e!801305)))

(declare-fun b!1258612 () Bool)

(assert (=> b!1258612 (= e!801305 (= (toValue!11 KeywordValueInjection!153 (singletonSeq!759 #x005D)) (toValue!11 KeywordValueInjection!153 lt!421108)))))

(assert (= (and bs!290867 (not res!557121)) b!1258612))

(assert (=> bs!290863 m!1416917))

(assert (=> bs!290863 m!1416773))

(assert (=> bs!290863 s!183779))

(declare-fun bs!290868 () Bool)

(declare-fun s!183781 () Bool)

(assert (= bs!290868 (and neg-inst!952 s!183781)))

(declare-fun res!557122 () Bool)

(declare-fun e!801306 () Bool)

(assert (=> bs!290868 (=> res!557122 e!801306)))

(assert (=> bs!290868 (= res!557122 (not (= (list!4706 (singletonSeq!759 #x005D)) (list!4706 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013))))))))

(assert (=> bs!290868 (=> true e!801306)))

(declare-fun b!1258613 () Bool)

(assert (=> b!1258613 (= e!801306 (= (toValue!11 KeywordValueInjection!153 (singletonSeq!759 #x005D)) (toValue!11 KeywordValueInjection!153 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013)))))))

(assert (= (and bs!290868 (not res!557122)) b!1258613))

(assert (=> bs!290856 m!1416917))

(assert (=> bs!290856 m!1416785))

(assert (=> bs!290856 s!183781))

(assert (=> bs!290852 m!1416917))

(assert (=> bs!290852 s!183761))

(declare-fun bs!290869 () Bool)

(assert (= bs!290869 (and m!1416915 m!1416791 m!1416799)))

(assert (=> bs!290869 s!183763))

(declare-fun bs!290870 () Bool)

(assert (= bs!290870 (and m!1416915 m!1416787 m!1416781)))

(assert (=> bs!290870 s!183771))

(declare-fun bs!290871 () Bool)

(assert (= bs!290871 m!1416915))

(assert (=> bs!290871 s!183767))

(declare-fun bs!290872 () Bool)

(assert (= bs!290872 (and m!1416915 m!1416785)))

(assert (=> bs!290872 s!183765))

(declare-fun bs!290873 () Bool)

(assert (= bs!290873 (and m!1416915 m!1416801 m!1416793)))

(assert (=> bs!290873 s!183769))

(assert (=> bs!290873 s!183777))

(assert (=> bs!290869 s!183773))

(assert (=> bs!290870 s!183775))

(assert (=> bs!290871 s!183767))

(assert (=> bs!290852 s!183779))

(assert (=> bs!290872 s!183781))

(assert (=> bs!290850 m!1416915))

(assert (=> d!355643 d!355663))

(check-sat (not bs!290851) (not b!1258566) (not b!1258575) (not bs!290850) (not b!1258551) (not bs!290804) (not b!1258603) (not b!1258604) (not bs!290811) (not bs!290868) (not b!1258555) (not b!1258577) (not b_next!30487) (not bs!290842) (not bs!290857) (not bs!290813) (not bs!290822) (not bs!290867) (not bs!290841) (not bs!290817) (not d!355655) (not bs!290834) (not b_next!30493) (not b!1258605) (not b!1258611) (not b!1258525) (not b!1258612) (not bs!290861) (not d!355649) (not b!1258536) (not b!1258597) (not b!1258485) (not b_next!30489) (not setNonEmpty!7988) (not bs!290810) (not b!1258598) (not setNonEmpty!7970) (not b!1258609) (not b!1258526) (not bs!290853) (not d!355639) (not b!1258501) (not b!1258608) (not bs!290812) (not bs!290820) (not setNonEmpty!7972) (not b!1258546) (not bs!290821) (not bs!290836) (not d!355657) (not d!355641) (not b!1258531) (not d!355629) (not mapNonEmpty!6332) (not b!1258606) (not b!1258540) (not bs!290798) (not mapNonEmpty!6329) (not bs!290865) (not b!1258576) (not b!1258541) (not setNonEmpty!7986) (not b!1258585) (not setNonEmpty!7991) (not setNonEmpty!7977) (not b!1258552) (not b!1258584) (not b!1258547) (not bs!290805) (not b!1258567) (not b!1258528) (not bs!290843) (not b!1258539) (not b!1258533) (not b!1258558) (not b!1258607) (not bs!290855) (not d!355635) (not bs!290819) (not bs!290864) (not b!1258550) (not b!1258613) (not b!1258548) (not b!1258610) (not b_lambda!36497) (not b!1258479) (not setNonEmpty!7971) (not bs!290815) (not b!1258494) (not bs!290808) b_and!84931 (not bs!290838) (not b!1258532) (not b!1258561) (not b!1258535) (not b!1258529) (not b!1258543) b_and!84933 (not b!1258524) (not bs!290840) (not b!1258538) (not b!1258545) (not b!1258601) (not bs!290800) b_and!84929 (not bs!290859) (not setNonEmpty!7990) (not b!1258600) (not bs!290866) (not d!355637) (not bs!290806) (not b!1258537) (not setNonEmpty!7978) (not b_next!30491) (not bs!290802) (not b!1258549) (not b!1258534) (not b!1258568) (not b!1258590) (not b!1258530) (not bs!290831) (not b!1258542) (not setNonEmpty!7987) (not d!355645) (not b!1258527) (not b!1258544) (not b!1258602) (not b!1258599) b_and!84927 (not setNonEmpty!7989) (not setNonEmpty!7981) (not bs!290833))
(check-sat (not b_next!30487) (not b_next!30493) (not b_next!30489) b_and!84931 b_and!84933 b_and!84929 (not b_next!30491) b_and!84927)
(get-model)

(declare-fun d!355665 () Bool)

(declare-fun list!4708 (Conc!4146) List!12679)

(assert (=> d!355665 (= (list!4706 x!245014) (list!4708 (c!208975 x!245014)))))

(declare-fun bs!290874 () Bool)

(assert (= bs!290874 d!355665))

(declare-fun m!1416919 () Bool)

(assert (=> bs!290874 m!1416919))

(assert (=> bs!290836 d!355665))

(declare-fun d!355667 () Bool)

(assert (=> d!355667 (= (list!4706 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013))) (list!4708 (c!208975 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013)))))))

(declare-fun bs!290875 () Bool)

(assert (= bs!290875 d!355667))

(declare-fun m!1416921 () Bool)

(assert (=> bs!290875 m!1416921))

(assert (=> bs!290836 d!355667))

(declare-fun d!355669 () Bool)

(declare-fun lt!421129 () List!12679)

(declare-fun efficientList!185 (BalanceConc!8232) List!12679)

(assert (=> d!355669 (= lt!421129 (efficientList!185 x!245014))))

(assert (=> d!355669 (= (toValue!11 KeywordValueInjection!153 x!245014) (ite (= lt!421129 (Cons!12613 #x006E (Cons!12613 #x0075 (Cons!12613 #x006C (Cons!12613 #x006C Nil!12613))))) Null!2257 (ite (= lt!421129 (Cons!12613 #x0074 (Cons!12613 #x0072 (Cons!12613 #x0075 (Cons!12613 #x0065 Nil!12613))))) True!4515 (ite (= lt!421129 (Cons!12613 #x0066 (Cons!12613 #x0061 (Cons!12613 #x006C (Cons!12613 #x0073 (Cons!12613 #x0065 Nil!12613)))))) False!4515 (ite (= lt!421129 (Cons!12613 #x003A Nil!12613)) Colon!2257 (ite (= lt!421129 (Cons!12613 #x002C Nil!12613)) Comma!2257 (ite (= lt!421129 (Cons!12613 #x007B Nil!12613)) LeftBrace!2257 (ite (= lt!421129 (Cons!12613 #x007D Nil!12613)) RightBrace!2257 (ite (= lt!421129 (Cons!12613 #x005B Nil!12613)) LeftBracket!2257 (ite (= lt!421129 (Cons!12613 #x005D Nil!12613)) RightBracket!2257 (Broken!11288 lt!421129)))))))))))))

(declare-fun bs!290876 () Bool)

(assert (= bs!290876 d!355669))

(declare-fun m!1416923 () Bool)

(assert (=> bs!290876 m!1416923))

(assert (=> b!1258536 d!355669))

(declare-fun d!355671 () Bool)

(declare-fun lt!421130 () List!12679)

(assert (=> d!355671 (= lt!421130 (efficientList!185 x!245015))))

(assert (=> d!355671 (= (toValue!11 KeywordValueInjection!153 x!245015) (ite (= lt!421130 (Cons!12613 #x006E (Cons!12613 #x0075 (Cons!12613 #x006C (Cons!12613 #x006C Nil!12613))))) Null!2257 (ite (= lt!421130 (Cons!12613 #x0074 (Cons!12613 #x0072 (Cons!12613 #x0075 (Cons!12613 #x0065 Nil!12613))))) True!4515 (ite (= lt!421130 (Cons!12613 #x0066 (Cons!12613 #x0061 (Cons!12613 #x006C (Cons!12613 #x0073 (Cons!12613 #x0065 Nil!12613)))))) False!4515 (ite (= lt!421130 (Cons!12613 #x003A Nil!12613)) Colon!2257 (ite (= lt!421130 (Cons!12613 #x002C Nil!12613)) Comma!2257 (ite (= lt!421130 (Cons!12613 #x007B Nil!12613)) LeftBrace!2257 (ite (= lt!421130 (Cons!12613 #x007D Nil!12613)) RightBrace!2257 (ite (= lt!421130 (Cons!12613 #x005B Nil!12613)) LeftBracket!2257 (ite (= lt!421130 (Cons!12613 #x005D Nil!12613)) RightBracket!2257 (Broken!11288 lt!421130)))))))))))))

(declare-fun bs!290877 () Bool)

(assert (= bs!290877 d!355671))

(declare-fun m!1416925 () Bool)

(assert (=> bs!290877 m!1416925))

(assert (=> b!1258536 d!355671))

(assert (=> bs!290853 d!355665))

(declare-fun d!355673 () Bool)

(assert (=> d!355673 (= (list!4706 (singletonSeq!759 #x005D)) (list!4708 (c!208975 (singletonSeq!759 #x005D))))))

(declare-fun bs!290878 () Bool)

(assert (= bs!290878 d!355673))

(declare-fun m!1416927 () Bool)

(assert (=> bs!290878 m!1416927))

(assert (=> bs!290853 d!355673))

(declare-fun d!355675 () Bool)

(declare-fun lt!421131 () List!12679)

(assert (=> d!355675 (= lt!421131 (efficientList!185 lt!421108))))

(assert (=> d!355675 (= (toValue!11 KeywordValueInjection!153 lt!421108) (ite (= lt!421131 (Cons!12613 #x006E (Cons!12613 #x0075 (Cons!12613 #x006C (Cons!12613 #x006C Nil!12613))))) Null!2257 (ite (= lt!421131 (Cons!12613 #x0074 (Cons!12613 #x0072 (Cons!12613 #x0075 (Cons!12613 #x0065 Nil!12613))))) True!4515 (ite (= lt!421131 (Cons!12613 #x0066 (Cons!12613 #x0061 (Cons!12613 #x006C (Cons!12613 #x0073 (Cons!12613 #x0065 Nil!12613)))))) False!4515 (ite (= lt!421131 (Cons!12613 #x003A Nil!12613)) Colon!2257 (ite (= lt!421131 (Cons!12613 #x002C Nil!12613)) Comma!2257 (ite (= lt!421131 (Cons!12613 #x007B Nil!12613)) LeftBrace!2257 (ite (= lt!421131 (Cons!12613 #x007D Nil!12613)) RightBrace!2257 (ite (= lt!421131 (Cons!12613 #x005B Nil!12613)) LeftBracket!2257 (ite (= lt!421131 (Cons!12613 #x005D Nil!12613)) RightBracket!2257 (Broken!11288 lt!421131)))))))))))))

(declare-fun bs!290879 () Bool)

(assert (= bs!290879 d!355675))

(declare-fun m!1416929 () Bool)

(assert (=> bs!290879 m!1416929))

(assert (=> b!1258542 d!355675))

(assert (=> b!1258542 d!355671))

(assert (=> bs!290812 d!355665))

(declare-fun d!355677 () Bool)

(assert (=> d!355677 (= (list!4706 x!245015) (list!4708 (c!208975 x!245015)))))

(declare-fun bs!290880 () Bool)

(assert (= bs!290880 d!355677))

(declare-fun m!1416931 () Bool)

(assert (=> bs!290880 m!1416931))

(assert (=> bs!290812 d!355677))

(declare-fun d!355679 () Bool)

(assert (=> d!355679 (= (list!4706 lt!421108) (list!4708 (c!208975 lt!421108)))))

(declare-fun bs!290881 () Bool)

(assert (= bs!290881 d!355679))

(declare-fun m!1416933 () Bool)

(assert (=> bs!290881 m!1416933))

(assert (=> bs!290821 d!355679))

(assert (=> bs!290821 d!355677))

(assert (=> b!1258533 d!355671))

(assert (=> b!1258533 d!355669))

(declare-fun d!355681 () Bool)

(declare-fun lt!421132 () List!12679)

(assert (=> d!355681 (= lt!421132 (efficientList!185 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013))))))

(assert (=> d!355681 (= (toValue!11 KeywordValueInjection!153 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013))) (ite (= lt!421132 (Cons!12613 #x006E (Cons!12613 #x0075 (Cons!12613 #x006C (Cons!12613 #x006C Nil!12613))))) Null!2257 (ite (= lt!421132 (Cons!12613 #x0074 (Cons!12613 #x0072 (Cons!12613 #x0075 (Cons!12613 #x0065 Nil!12613))))) True!4515 (ite (= lt!421132 (Cons!12613 #x0066 (Cons!12613 #x0061 (Cons!12613 #x006C (Cons!12613 #x0073 (Cons!12613 #x0065 Nil!12613)))))) False!4515 (ite (= lt!421132 (Cons!12613 #x003A Nil!12613)) Colon!2257 (ite (= lt!421132 (Cons!12613 #x002C Nil!12613)) Comma!2257 (ite (= lt!421132 (Cons!12613 #x007B Nil!12613)) LeftBrace!2257 (ite (= lt!421132 (Cons!12613 #x007D Nil!12613)) RightBrace!2257 (ite (= lt!421132 (Cons!12613 #x005B Nil!12613)) LeftBracket!2257 (ite (= lt!421132 (Cons!12613 #x005D Nil!12613)) RightBracket!2257 (Broken!11288 lt!421132)))))))))))))

(declare-fun bs!290882 () Bool)

(assert (= bs!290882 d!355681))

(assert (=> bs!290882 m!1416783))

(declare-fun m!1416935 () Bool)

(assert (=> bs!290882 m!1416935))

(assert (=> b!1258552 d!355681))

(assert (=> b!1258552 d!355669))

(assert (=> b!1258547 d!355669))

(assert (=> b!1258547 d!355681))

(assert (=> bs!290808 d!355677))

(assert (=> bs!290808 d!355665))

(assert (=> bs!290843 d!355667))

(assert (=> bs!290843 d!355665))

(assert (=> b!1258604 d!355669))

(declare-fun d!355683 () Bool)

(declare-fun lt!421133 () List!12679)

(assert (=> d!355683 (= lt!421133 (efficientList!185 (singletonSeq!759 #x005D)))))

(assert (=> d!355683 (= (toValue!11 KeywordValueInjection!153 (singletonSeq!759 #x005D)) (ite (= lt!421133 (Cons!12613 #x006E (Cons!12613 #x0075 (Cons!12613 #x006C (Cons!12613 #x006C Nil!12613))))) Null!2257 (ite (= lt!421133 (Cons!12613 #x0074 (Cons!12613 #x0072 (Cons!12613 #x0075 (Cons!12613 #x0065 Nil!12613))))) True!4515 (ite (= lt!421133 (Cons!12613 #x0066 (Cons!12613 #x0061 (Cons!12613 #x006C (Cons!12613 #x0073 (Cons!12613 #x0065 Nil!12613)))))) False!4515 (ite (= lt!421133 (Cons!12613 #x003A Nil!12613)) Colon!2257 (ite (= lt!421133 (Cons!12613 #x002C Nil!12613)) Comma!2257 (ite (= lt!421133 (Cons!12613 #x007B Nil!12613)) LeftBrace!2257 (ite (= lt!421133 (Cons!12613 #x007D Nil!12613)) RightBrace!2257 (ite (= lt!421133 (Cons!12613 #x005B Nil!12613)) LeftBracket!2257 (ite (= lt!421133 (Cons!12613 #x005D Nil!12613)) RightBracket!2257 (Broken!11288 lt!421133)))))))))))))

(declare-fun bs!290883 () Bool)

(assert (= bs!290883 d!355683))

(assert (=> bs!290883 m!1416723))

(declare-fun m!1416937 () Bool)

(assert (=> bs!290883 m!1416937))

(assert (=> b!1258604 d!355683))

(declare-fun bs!290884 () Bool)

(assert (= bs!290884 (and m!1416801 b!1258528)))

(assert (=> bs!290884 m!1416801))

(assert (=> bs!290884 m!1416801))

(declare-fun bs!290885 () Bool)

(assert (= bs!290885 (and m!1416787 m!1416801 m!1416793 b!1258529)))

(assert (=> bs!290885 m!1416801))

(assert (=> bs!290885 m!1416781))

(declare-fun bs!290886 () Bool)

(assert (= bs!290886 (and m!1416787 b!1258530)))

(assert (=> bs!290886 m!1416781))

(assert (=> bs!290886 m!1416781))

(declare-fun bs!290887 () Bool)

(assert (= bs!290887 (and m!1416787 m!1416801 m!1416793 b!1258531)))

(assert (=> bs!290887 m!1416781))

(assert (=> bs!290887 m!1416801))

(declare-fun bs!290888 () Bool)

(assert (= bs!290888 (and m!1416791 m!1416787 b!1258532)))

(assert (=> bs!290888 m!1416781))

(assert (=> bs!290888 m!1416799))

(declare-fun bs!290889 () Bool)

(assert (= bs!290889 (and m!1416791 m!1416801 m!1416793 b!1258533)))

(assert (=> bs!290889 m!1416801))

(assert (=> bs!290889 m!1416799))

(declare-fun bs!290890 () Bool)

(assert (= bs!290890 (and m!1416791 b!1258534)))

(assert (=> bs!290890 m!1416799))

(assert (=> bs!290890 m!1416799))

(declare-fun bs!290891 () Bool)

(assert (= bs!290891 (and m!1416791 m!1416787 b!1258535)))

(assert (=> bs!290891 m!1416799))

(assert (=> bs!290891 m!1416781))

(declare-fun bs!290892 () Bool)

(assert (= bs!290892 (and m!1416791 m!1416801 m!1416793 b!1258536)))

(assert (=> bs!290892 m!1416799))

(assert (=> bs!290892 m!1416801))

(declare-fun bs!290893 () Bool)

(assert (= bs!290893 (and m!1416773 m!1416787 b!1258537)))

(assert (=> bs!290893 m!1416781))

(declare-fun m!1416939 () Bool)

(assert (=> bs!290893 m!1416939))

(declare-fun bs!290894 () Bool)

(assert (= bs!290894 (and m!1416773 m!1416801 m!1416793 b!1258538)))

(assert (=> bs!290894 m!1416801))

(assert (=> bs!290894 m!1416939))

(declare-fun bs!290895 () Bool)

(assert (= bs!290895 (and m!1416773 m!1416791 b!1258539)))

(assert (=> bs!290895 m!1416799))

(assert (=> bs!290895 m!1416939))

(declare-fun bs!290896 () Bool)

(assert (= bs!290896 (and m!1416773 b!1258540)))

(assert (=> bs!290896 m!1416939))

(assert (=> bs!290896 m!1416939))

(declare-fun bs!290897 () Bool)

(assert (= bs!290897 (and m!1416773 m!1416787 b!1258541)))

(assert (=> bs!290897 m!1416939))

(assert (=> bs!290897 m!1416781))

(declare-fun bs!290898 () Bool)

(assert (= bs!290898 (and m!1416773 m!1416801 m!1416793 b!1258542)))

(assert (=> bs!290898 m!1416939))

(assert (=> bs!290898 m!1416801))

(declare-fun bs!290899 () Bool)

(assert (= bs!290899 (and m!1416773 m!1416791 b!1258543)))

(assert (=> bs!290899 m!1416939))

(assert (=> bs!290899 m!1416799))

(declare-fun bs!290900 () Bool)

(assert (= bs!290900 (and m!1416785 m!1416787 m!1416781 b!1258544)))

(assert (=> bs!290900 m!1416781))

(declare-fun m!1416941 () Bool)

(assert (=> bs!290900 m!1416941))

(declare-fun bs!290901 () Bool)

(assert (= bs!290901 (and m!1416785 b!1258545)))

(assert (=> bs!290901 m!1416941))

(assert (=> bs!290901 m!1416941))

(declare-fun bs!290902 () Bool)

(assert (= bs!290902 (and m!1416785 m!1416801 m!1416793 b!1258546)))

(assert (=> bs!290902 m!1416801))

(assert (=> bs!290902 m!1416941))

(declare-fun bs!290903 () Bool)

(assert (= bs!290903 (and m!1416785 m!1416791 m!1416799 b!1258547)))

(assert (=> bs!290903 m!1416799))

(assert (=> bs!290903 m!1416941))

(declare-fun bs!290904 () Bool)

(assert (= bs!290904 (and m!1416785 m!1416773 b!1258548)))

(assert (=> bs!290904 m!1416939))

(assert (=> bs!290904 m!1416941))

(declare-fun bs!290905 () Bool)

(assert (= bs!290905 (and m!1416785 m!1416773 b!1258549)))

(assert (=> bs!290905 m!1416941))

(assert (=> bs!290905 m!1416939))

(declare-fun bs!290906 () Bool)

(assert (= bs!290906 (and m!1416785 m!1416787 m!1416781 b!1258550)))

(assert (=> bs!290906 m!1416941))

(assert (=> bs!290906 m!1416781))

(declare-fun bs!290907 () Bool)

(assert (= bs!290907 (and m!1416785 m!1416801 m!1416793 b!1258551)))

(assert (=> bs!290907 m!1416941))

(assert (=> bs!290907 m!1416801))

(declare-fun bs!290908 () Bool)

(assert (= bs!290908 (and m!1416785 m!1416791 m!1416799 b!1258552)))

(assert (=> bs!290908 m!1416941))

(assert (=> bs!290908 m!1416799))

(declare-fun bs!290909 () Bool)

(assert (= bs!290909 (and m!1416917 m!1416791 m!1416799 b!1258604)))

(assert (=> bs!290909 m!1416799))

(assert (=> bs!290909 m!1416915))

(declare-fun bs!290910 () Bool)

(assert (= bs!290910 (and m!1416917 m!1416785 b!1258605)))

(assert (=> bs!290910 m!1416941))

(assert (=> bs!290910 m!1416915))

(declare-fun bs!290911 () Bool)

(assert (= bs!290911 (and m!1416917 m!1416915 b!1258606)))

(assert (=> bs!290911 m!1416915))

(assert (=> bs!290911 m!1416915))

(declare-fun bs!290912 () Bool)

(assert (= bs!290912 (and m!1416917 m!1416801 m!1416793 b!1258607)))

(assert (=> bs!290912 m!1416801))

(assert (=> bs!290912 m!1416915))

(declare-fun bs!290913 () Bool)

(assert (= bs!290913 (and m!1416917 m!1416787 m!1416781 b!1258608)))

(assert (=> bs!290913 m!1416781))

(assert (=> bs!290913 m!1416915))

(declare-fun bs!290914 () Bool)

(assert (= bs!290914 (and m!1416917 m!1416791 m!1416799 b!1258609)))

(assert (=> bs!290914 m!1416915))

(assert (=> bs!290914 m!1416799))

(declare-fun bs!290915 () Bool)

(assert (= bs!290915 (and m!1416917 m!1416787 m!1416781 b!1258610)))

(assert (=> bs!290915 m!1416915))

(assert (=> bs!290915 m!1416781))

(declare-fun bs!290916 () Bool)

(assert (= bs!290916 (and m!1416917 m!1416801 m!1416793 b!1258611)))

(assert (=> bs!290916 m!1416915))

(assert (=> bs!290916 m!1416801))

(declare-fun bs!290917 () Bool)

(assert (= bs!290917 (and m!1416917 m!1416773 b!1258612)))

(assert (=> bs!290917 m!1416915))

(assert (=> bs!290917 m!1416939))

(declare-fun bs!290918 () Bool)

(assert (= bs!290918 (and m!1416917 m!1416785 b!1258613)))

(assert (=> bs!290918 m!1416915))

(assert (=> bs!290918 m!1416941))

(declare-fun bs!290919 () Bool)

(assert (= bs!290919 (and m!1416915 m!1416773 b!1258603)))

(assert (=> bs!290919 m!1416939))

(assert (=> bs!290919 m!1416915))

(check-sat (not d!355667) (not b!1258575) (not bs!290850) (not b!1258551) (not bs!290804) (not b!1258603) (not bs!290811) (not bs!290868) (not b!1258555) (not b!1258577) (not b_next!30487) (not bs!290842) (not bs!290857) (not bs!290813) (not bs!290822) (not bs!290867) (not bs!290841) (not bs!290817) (not d!355655) (not bs!290834) (not b_next!30493) (not b!1258605) (not b!1258611) (not b!1258525) (not b!1258612) (not bs!290861) (not d!355649) (not b!1258597) (not b!1258485) (not b_next!30489) (not setNonEmpty!7988) (not bs!290810) (not bs!290851) (not d!355673) (not b!1258598) (not setNonEmpty!7970) (not b!1258609) (not b!1258526) (not d!355639) (not d!355677) (not d!355681) (not b!1258501) (not b!1258608) (not bs!290820) (not setNonEmpty!7972) (not b!1258546) (not d!355671) (not d!355657) (not d!355641) (not b!1258531) (not d!355629) (not d!355665) (not d!355679) (not mapNonEmpty!6332) (not b!1258606) (not b!1258540) (not bs!290798) (not mapNonEmpty!6329) (not bs!290865) (not b!1258576) (not b!1258541) (not setNonEmpty!7986) (not b!1258585) (not setNonEmpty!7991) (not setNonEmpty!7977) (not b!1258584) (not d!355669) (not d!355675) (not b!1258566) (not bs!290805) (not b!1258567) (not b!1258528) (not b!1258539) (not b!1258558) (not b!1258607) (not bs!290855) (not d!355635) (not bs!290819) (not bs!290864) (not b!1258550) (not b!1258613) (not b!1258548) (not b!1258610) (not b_lambda!36497) (not b!1258479) (not setNonEmpty!7971) (not bs!290815) (not b!1258494) b_and!84931 (not bs!290838) (not b!1258532) (not b!1258561) (not b!1258535) (not b!1258529) (not b!1258543) b_and!84933 (not b!1258524) (not bs!290840) (not b!1258538) (not b!1258545) (not b!1258601) (not bs!290800) b_and!84929 (not bs!290859) (not setNonEmpty!7990) (not b!1258600) (not bs!290866) (not d!355637) (not bs!290806) (not b!1258537) (not setNonEmpty!7978) (not b_next!30491) (not d!355683) (not bs!290802) (not b!1258549) (not b!1258534) (not b!1258568) (not b!1258590) (not b!1258530) (not bs!290831) (not setNonEmpty!7987) (not d!355645) (not b!1258527) (not b!1258544) (not b!1258602) (not b!1258599) b_and!84927 (not setNonEmpty!7989) (not setNonEmpty!7981) (not bs!290833))
(check-sat (not b_next!30487) (not b_next!30493) (not b_next!30489) b_and!84931 b_and!84933 b_and!84929 (not b_next!30491) b_and!84927)
(get-model)

(assert (=> b!1258538 d!355671))

(assert (=> b!1258538 d!355675))

(declare-fun d!355685 () Bool)

(declare-fun lt!421136 () List!12679)

(assert (=> d!355685 (= lt!421136 (list!4706 lt!421108))))

(declare-fun efficientList!186 (Conc!4146 List!12679) List!12679)

(declare-fun efficientList$default$2!62 (Conc!4146) List!12679)

(assert (=> d!355685 (= lt!421136 (efficientList!186 (c!208975 lt!421108) (efficientList$default$2!62 (c!208975 lt!421108))))))

(assert (=> d!355685 (= (efficientList!185 lt!421108) lt!421136)))

(declare-fun bs!290920 () Bool)

(assert (= bs!290920 d!355685))

(assert (=> bs!290920 m!1416773))

(declare-fun m!1416943 () Bool)

(assert (=> bs!290920 m!1416943))

(assert (=> bs!290920 m!1416943))

(declare-fun m!1416945 () Bool)

(assert (=> bs!290920 m!1416945))

(assert (=> d!355675 d!355685))

(assert (=> bs!290815 d!355677))

(assert (=> bs!290815 d!355679))

(declare-fun b!1258625 () Bool)

(declare-fun e!801312 () List!12679)

(declare-fun ++!3216 (List!12679 List!12679) List!12679)

(assert (=> b!1258625 (= e!801312 (++!3216 (list!4708 (left!10920 (c!208975 x!245015))) (list!4708 (right!11250 (c!208975 x!245015)))))))

(declare-fun d!355687 () Bool)

(declare-fun c!208993 () Bool)

(assert (=> d!355687 (= c!208993 ((_ is Empty!4146) (c!208975 x!245015)))))

(declare-fun e!801311 () List!12679)

(assert (=> d!355687 (= (list!4708 (c!208975 x!245015)) e!801311)))

(declare-fun b!1258622 () Bool)

(assert (=> b!1258622 (= e!801311 Nil!12613)))

(declare-fun b!1258624 () Bool)

(declare-fun list!4709 (IArray!8297) List!12679)

(assert (=> b!1258624 (= e!801312 (list!4709 (xs!6857 (c!208975 x!245015))))))

(declare-fun b!1258623 () Bool)

(assert (=> b!1258623 (= e!801311 e!801312)))

(declare-fun c!208994 () Bool)

(assert (=> b!1258623 (= c!208994 ((_ is Leaf!6425) (c!208975 x!245015)))))

(assert (= (and d!355687 c!208993) b!1258622))

(assert (= (and d!355687 (not c!208993)) b!1258623))

(assert (= (and b!1258623 c!208994) b!1258624))

(assert (= (and b!1258623 (not c!208994)) b!1258625))

(declare-fun m!1416947 () Bool)

(assert (=> b!1258625 m!1416947))

(declare-fun m!1416949 () Bool)

(assert (=> b!1258625 m!1416949))

(assert (=> b!1258625 m!1416947))

(assert (=> b!1258625 m!1416949))

(declare-fun m!1416951 () Bool)

(assert (=> b!1258625 m!1416951))

(declare-fun m!1416953 () Bool)

(assert (=> b!1258624 m!1416953))

(assert (=> d!355677 d!355687))

(declare-fun d!355689 () Bool)

(declare-fun lt!421137 () List!12679)

(assert (=> d!355689 (= lt!421137 (list!4706 x!245015))))

(assert (=> d!355689 (= lt!421137 (efficientList!186 (c!208975 x!245015) (efficientList$default$2!62 (c!208975 x!245015))))))

(assert (=> d!355689 (= (efficientList!185 x!245015) lt!421137)))

(declare-fun bs!290921 () Bool)

(assert (= bs!290921 d!355689))

(assert (=> bs!290921 m!1416793))

(declare-fun m!1416955 () Bool)

(assert (=> bs!290921 m!1416955))

(assert (=> bs!290921 m!1416955))

(declare-fun m!1416957 () Bool)

(assert (=> bs!290921 m!1416957))

(assert (=> d!355671 d!355689))

(declare-fun b!1258629 () Bool)

(declare-fun e!801314 () List!12679)

(assert (=> b!1258629 (= e!801314 (++!3216 (list!4708 (left!10920 (c!208975 x!245014))) (list!4708 (right!11250 (c!208975 x!245014)))))))

(declare-fun d!355691 () Bool)

(declare-fun c!208995 () Bool)

(assert (=> d!355691 (= c!208995 ((_ is Empty!4146) (c!208975 x!245014)))))

(declare-fun e!801313 () List!12679)

(assert (=> d!355691 (= (list!4708 (c!208975 x!245014)) e!801313)))

(declare-fun b!1258626 () Bool)

(assert (=> b!1258626 (= e!801313 Nil!12613)))

(declare-fun b!1258628 () Bool)

(assert (=> b!1258628 (= e!801314 (list!4709 (xs!6857 (c!208975 x!245014))))))

(declare-fun b!1258627 () Bool)

(assert (=> b!1258627 (= e!801313 e!801314)))

(declare-fun c!208996 () Bool)

(assert (=> b!1258627 (= c!208996 ((_ is Leaf!6425) (c!208975 x!245014)))))

(assert (= (and d!355691 c!208995) b!1258626))

(assert (= (and d!355691 (not c!208995)) b!1258627))

(assert (= (and b!1258627 c!208996) b!1258628))

(assert (= (and b!1258627 (not c!208996)) b!1258629))

(declare-fun m!1416959 () Bool)

(assert (=> b!1258629 m!1416959))

(declare-fun m!1416961 () Bool)

(assert (=> b!1258629 m!1416961))

(assert (=> b!1258629 m!1416959))

(assert (=> b!1258629 m!1416961))

(declare-fun m!1416963 () Bool)

(assert (=> b!1258629 m!1416963))

(declare-fun m!1416965 () Bool)

(assert (=> b!1258628 m!1416965))

(assert (=> d!355665 d!355691))

(declare-fun d!355693 () Bool)

(declare-fun lt!421138 () List!12679)

(assert (=> d!355693 (= lt!421138 (list!4706 x!245014))))

(assert (=> d!355693 (= lt!421138 (efficientList!186 (c!208975 x!245014) (efficientList$default$2!62 (c!208975 x!245014))))))

(assert (=> d!355693 (= (efficientList!185 x!245014) lt!421138)))

(declare-fun bs!290922 () Bool)

(assert (= bs!290922 d!355693))

(assert (=> bs!290922 m!1416791))

(declare-fun m!1416967 () Bool)

(assert (=> bs!290922 m!1416967))

(assert (=> bs!290922 m!1416967))

(declare-fun m!1416969 () Bool)

(assert (=> bs!290922 m!1416969))

(assert (=> d!355669 d!355693))

(declare-fun b!1258633 () Bool)

(declare-fun e!801316 () List!12679)

(assert (=> b!1258633 (= e!801316 (++!3216 (list!4708 (left!10920 (c!208975 lt!421108))) (list!4708 (right!11250 (c!208975 lt!421108)))))))

(declare-fun d!355695 () Bool)

(declare-fun c!208997 () Bool)

(assert (=> d!355695 (= c!208997 ((_ is Empty!4146) (c!208975 lt!421108)))))

(declare-fun e!801315 () List!12679)

(assert (=> d!355695 (= (list!4708 (c!208975 lt!421108)) e!801315)))

(declare-fun b!1258630 () Bool)

(assert (=> b!1258630 (= e!801315 Nil!12613)))

(declare-fun b!1258632 () Bool)

(assert (=> b!1258632 (= e!801316 (list!4709 (xs!6857 (c!208975 lt!421108))))))

(declare-fun b!1258631 () Bool)

(assert (=> b!1258631 (= e!801315 e!801316)))

(declare-fun c!208998 () Bool)

(assert (=> b!1258631 (= c!208998 ((_ is Leaf!6425) (c!208975 lt!421108)))))

(assert (= (and d!355695 c!208997) b!1258630))

(assert (= (and d!355695 (not c!208997)) b!1258631))

(assert (= (and b!1258631 c!208998) b!1258632))

(assert (= (and b!1258631 (not c!208998)) b!1258633))

(declare-fun m!1416971 () Bool)

(assert (=> b!1258633 m!1416971))

(declare-fun m!1416973 () Bool)

(assert (=> b!1258633 m!1416973))

(assert (=> b!1258633 m!1416971))

(assert (=> b!1258633 m!1416973))

(declare-fun m!1416975 () Bool)

(assert (=> b!1258633 m!1416975))

(declare-fun m!1416977 () Bool)

(assert (=> b!1258632 m!1416977))

(assert (=> d!355679 d!355695))

(check-sat (not b!1258575) (not bs!290850) (not b!1258551) (not bs!290804) (not b!1258603) (not bs!290811) (not bs!290868) (not b!1258555) (not b!1258577) (not b_next!30487) (not bs!290842) (not bs!290857) (not bs!290813) (not bs!290822) (not bs!290867) (not bs!290841) (not bs!290817) (not d!355655) (not bs!290834) (not b_next!30493) (not b!1258605) (not b!1258611) (not b!1258525) (not b!1258612) (not bs!290861) (not b!1258624) (not d!355649) (not b!1258597) (not b!1258485) (not b_next!30489) (not setNonEmpty!7988) (not bs!290810) (not d!355693) (not bs!290851) (not d!355673) (not b!1258598) (not setNonEmpty!7970) (not b!1258609) (not b!1258526) (not d!355639) (not d!355681) (not b!1258501) (not b!1258608) (not bs!290820) (not setNonEmpty!7972) (not b!1258546) (not d!355657) (not d!355641) (not b!1258531) (not d!355629) (not mapNonEmpty!6332) (not b!1258606) (not b!1258540) (not bs!290798) (not mapNonEmpty!6329) (not bs!290865) (not b!1258576) (not b!1258541) (not setNonEmpty!7986) (not b!1258585) (not setNonEmpty!7991) (not setNonEmpty!7977) (not b!1258633) (not b!1258584) (not b!1258628) (not d!355689) (not b!1258566) (not bs!290805) (not b!1258567) (not b!1258528) (not b!1258539) (not b!1258558) (not b!1258607) (not bs!290855) (not d!355635) (not bs!290819) (not bs!290864) (not b!1258550) (not b!1258613) (not b!1258548) (not b!1258610) (not b_lambda!36497) (not b!1258479) (not setNonEmpty!7971) (not b!1258494) (not b!1258629) b_and!84931 (not bs!290838) (not b!1258532) (not b!1258561) (not b!1258632) (not d!355667) (not b!1258535) (not b!1258529) (not b!1258543) b_and!84933 (not b!1258524) (not bs!290840) (not b!1258545) (not b!1258601) (not bs!290800) b_and!84929 (not bs!290859) (not setNonEmpty!7990) (not b!1258625) (not b!1258600) (not bs!290866) (not d!355637) (not bs!290806) (not b!1258537) (not setNonEmpty!7978) (not b_next!30491) (not d!355683) (not bs!290802) (not b!1258549) (not d!355685) (not b!1258534) (not b!1258568) (not b!1258590) (not b!1258530) (not bs!290831) (not setNonEmpty!7987) (not d!355645) (not b!1258527) (not b!1258544) (not b!1258602) (not b!1258599) b_and!84927 (not setNonEmpty!7989) (not setNonEmpty!7981) (not bs!290833))
(check-sat (not b_next!30487) (not b_next!30493) (not b_next!30489) b_and!84931 b_and!84933 b_and!84929 (not b_next!30491) b_and!84927)
(get-model)

(declare-fun d!355697 () Bool)

(declare-fun lt!421141 () Bool)

(assert (=> d!355697 (= lt!421141 (forall!3197 (list!4705 lt!421096) lambda!49797))))

(declare-fun forall!3198 (Conc!4147 Int) Bool)

(assert (=> d!355697 (= lt!421141 (forall!3198 (c!208976 lt!421096) lambda!49797))))

(assert (=> d!355697 (= (forall!3196 lt!421096 lambda!49797) lt!421141)))

(declare-fun bs!290923 () Bool)

(assert (= bs!290923 d!355697))

(assert (=> bs!290923 m!1416751))

(assert (=> bs!290923 m!1416751))

(declare-fun m!1416979 () Bool)

(assert (=> bs!290923 m!1416979))

(declare-fun m!1416981 () Bool)

(assert (=> bs!290923 m!1416981))

(assert (=> d!355635 d!355697))

(declare-fun d!355699 () Bool)

(declare-fun lt!421144 () Bool)

(declare-fun isEmpty!7507 (List!12681) Bool)

(assert (=> d!355699 (= lt!421144 (isEmpty!7507 (list!4705 lt!421096)))))

(declare-fun isEmpty!7508 (Conc!4147) Bool)

(assert (=> d!355699 (= lt!421144 (isEmpty!7508 (c!208976 lt!421096)))))

(assert (=> d!355699 (= (isEmpty!7506 lt!421096) lt!421144)))

(declare-fun bs!290924 () Bool)

(assert (= bs!290924 d!355699))

(assert (=> bs!290924 m!1416751))

(assert (=> bs!290924 m!1416751))

(declare-fun m!1416983 () Bool)

(assert (=> bs!290924 m!1416983))

(declare-fun m!1416985 () Bool)

(assert (=> bs!290924 m!1416985))

(assert (=> d!355635 d!355699))

(assert (=> d!355635 d!355647))

(declare-fun d!355701 () Bool)

(assert (=> d!355701 (= (list!4706 x!245013) (list!4708 (c!208975 x!245013)))))

(declare-fun bs!290925 () Bool)

(assert (= bs!290925 d!355701))

(declare-fun m!1416987 () Bool)

(assert (=> bs!290925 m!1416987))

(assert (=> bs!290806 d!355701))

(assert (=> bs!290806 d!355665))

(declare-fun d!355703 () Bool)

(declare-fun lambda!49827 () Int)

(declare-fun forall!3199 (List!12676 Int) Bool)

(assert (=> d!355703 (= (inv!17007 setElem!7988) (forall!3199 (exprs!1041 setElem!7988) lambda!49827))))

(declare-fun bs!290926 () Bool)

(assert (= bs!290926 d!355703))

(declare-fun m!1416989 () Bool)

(assert (=> bs!290926 m!1416989))

(assert (=> setNonEmpty!7988 d!355703))

(assert (=> d!355637 d!355679))

(declare-fun d!355705 () Bool)

(declare-fun e!801319 () Bool)

(assert (=> d!355705 e!801319))

(declare-fun res!557167 () Bool)

(assert (=> d!355705 (=> (not res!557167) (not e!801319))))

(declare-fun lt!421147 () BalanceConc!8232)

(assert (=> d!355705 (= res!557167 (= (list!4706 lt!421147) (Cons!12613 #x005D Nil!12613)))))

(declare-fun choose!7894 ((_ BitVec 16)) BalanceConc!8232)

(assert (=> d!355705 (= lt!421147 (choose!7894 #x005D))))

(assert (=> d!355705 (= (singleton!319 #x005D) lt!421147)))

(declare-fun b!1258636 () Bool)

(assert (=> b!1258636 (= e!801319 (isBalanced!1209 (c!208975 lt!421147)))))

(assert (= (and d!355705 res!557167) b!1258636))

(declare-fun bs!290927 () Bool)

(declare-fun s!183783 () Bool)

(assert (= bs!290927 (and neg-inst!952 s!183783)))

(declare-fun res!557168 () Bool)

(declare-fun e!801320 () Bool)

(assert (=> bs!290927 (=> res!557168 e!801320)))

(assert (=> bs!290927 (= res!557168 (not (= (list!4706 x!245014) (list!4706 lt!421147))))))

(assert (=> bs!290927 (=> true e!801320)))

(declare-fun b!1258637 () Bool)

(assert (=> b!1258637 (= e!801320 (= (toValue!11 KeywordValueInjection!153 x!245014) (toValue!11 KeywordValueInjection!153 lt!421147)))))

(assert (= (and bs!290927 (not res!557168)) b!1258637))

(declare-fun bs!290928 () Bool)

(declare-fun m!1416991 () Bool)

(assert (= bs!290928 (and m!1416991 m!1416791 m!1416799)))

(assert (=> bs!290928 m!1416791))

(assert (=> bs!290928 m!1416991))

(assert (=> bs!290928 s!183783))

(declare-fun bs!290929 () Bool)

(declare-fun s!183785 () Bool)

(assert (= bs!290929 (and neg-inst!952 s!183785)))

(declare-fun res!557169 () Bool)

(declare-fun e!801321 () Bool)

(assert (=> bs!290929 (=> res!557169 e!801321)))

(assert (=> bs!290929 (= res!557169 (not (= (list!4706 lt!421108) (list!4706 lt!421147))))))

(assert (=> bs!290929 (=> true e!801321)))

(declare-fun b!1258638 () Bool)

(assert (=> b!1258638 (= e!801321 (= (toValue!11 KeywordValueInjection!153 lt!421108) (toValue!11 KeywordValueInjection!153 lt!421147)))))

(assert (= (and bs!290929 (not res!557169)) b!1258638))

(declare-fun bs!290930 () Bool)

(assert (= bs!290930 (and m!1416991 m!1416773 m!1416939)))

(assert (=> bs!290930 m!1416773))

(assert (=> bs!290930 m!1416991))

(assert (=> bs!290930 s!183785))

(declare-fun bs!290931 () Bool)

(declare-fun s!183787 () Bool)

(assert (= bs!290931 (and neg-inst!952 s!183787)))

(declare-fun res!557170 () Bool)

(declare-fun e!801322 () Bool)

(assert (=> bs!290931 (=> res!557170 e!801322)))

(assert (=> bs!290931 (= res!557170 (not (= (list!4706 x!245015) (list!4706 lt!421147))))))

(assert (=> bs!290931 (=> true e!801322)))

(declare-fun b!1258639 () Bool)

(assert (=> b!1258639 (= e!801322 (= (toValue!11 KeywordValueInjection!153 x!245015) (toValue!11 KeywordValueInjection!153 lt!421147)))))

(assert (= (and bs!290931 (not res!557170)) b!1258639))

(declare-fun bs!290932 () Bool)

(assert (= bs!290932 (and m!1416991 m!1416801 m!1416793)))

(assert (=> bs!290932 m!1416793))

(assert (=> bs!290932 m!1416991))

(assert (=> bs!290932 s!183787))

(declare-fun bs!290933 () Bool)

(declare-fun s!183789 () Bool)

(assert (= bs!290933 (and neg-inst!952 s!183789)))

(declare-fun res!557171 () Bool)

(declare-fun e!801323 () Bool)

(assert (=> bs!290933 (=> res!557171 e!801323)))

(assert (=> bs!290933 (= res!557171 (not (= (list!4706 x!245013) (list!4706 lt!421147))))))

(assert (=> bs!290933 (=> true e!801323)))

(declare-fun b!1258640 () Bool)

(assert (=> b!1258640 (= e!801323 (= (toValue!11 KeywordValueInjection!153 x!245013) (toValue!11 KeywordValueInjection!153 lt!421147)))))

(assert (= (and bs!290933 (not res!557171)) b!1258640))

(declare-fun bs!290934 () Bool)

(assert (= bs!290934 (and m!1416991 m!1416787 m!1416781)))

(assert (=> bs!290934 m!1416787))

(assert (=> bs!290934 m!1416991))

(assert (=> bs!290934 s!183789))

(declare-fun bs!290935 () Bool)

(declare-fun s!183791 () Bool)

(assert (= bs!290935 (and neg-inst!952 s!183791)))

(declare-fun res!557172 () Bool)

(declare-fun e!801324 () Bool)

(assert (=> bs!290935 (=> res!557172 e!801324)))

(assert (=> bs!290935 (= res!557172 (not (= (list!4706 lt!421147) (list!4706 lt!421147))))))

(assert (=> bs!290935 (=> true e!801324)))

(declare-fun b!1258641 () Bool)

(assert (=> b!1258641 (= e!801324 (= (toValue!11 KeywordValueInjection!153 lt!421147) (toValue!11 KeywordValueInjection!153 lt!421147)))))

(assert (= (and bs!290935 (not res!557172)) b!1258641))

(assert (=> m!1416991 s!183791))

(declare-fun bs!290936 () Bool)

(declare-fun s!183793 () Bool)

(assert (= bs!290936 (and neg-inst!952 s!183793)))

(declare-fun res!557173 () Bool)

(declare-fun e!801325 () Bool)

(assert (=> bs!290936 (=> res!557173 e!801325)))

(assert (=> bs!290936 (= res!557173 (not (= (list!4706 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013))) (list!4706 lt!421147))))))

(assert (=> bs!290936 (=> true e!801325)))

(declare-fun b!1258642 () Bool)

(assert (=> b!1258642 (= e!801325 (= (toValue!11 KeywordValueInjection!153 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013))) (toValue!11 KeywordValueInjection!153 lt!421147)))))

(assert (= (and bs!290936 (not res!557173)) b!1258642))

(declare-fun bs!290937 () Bool)

(assert (= bs!290937 (and m!1416991 m!1416785 m!1416941)))

(assert (=> bs!290937 m!1416785))

(assert (=> bs!290937 m!1416991))

(assert (=> bs!290937 s!183793))

(declare-fun bs!290938 () Bool)

(declare-fun s!183795 () Bool)

(assert (= bs!290938 (and neg-inst!952 s!183795)))

(declare-fun res!557174 () Bool)

(declare-fun e!801326 () Bool)

(assert (=> bs!290938 (=> res!557174 e!801326)))

(assert (=> bs!290938 (= res!557174 (not (= (list!4706 (singletonSeq!759 #x005D)) (list!4706 lt!421147))))))

(assert (=> bs!290938 (=> true e!801326)))

(declare-fun b!1258643 () Bool)

(assert (=> b!1258643 (= e!801326 (= (toValue!11 KeywordValueInjection!153 (singletonSeq!759 #x005D)) (toValue!11 KeywordValueInjection!153 lt!421147)))))

(assert (= (and bs!290938 (not res!557174)) b!1258643))

(declare-fun bs!290939 () Bool)

(assert (= bs!290939 (and m!1416991 m!1416915 m!1416917)))

(assert (=> bs!290939 m!1416917))

(assert (=> bs!290939 m!1416991))

(assert (=> bs!290939 s!183795))

(declare-fun bs!290940 () Bool)

(declare-fun s!183797 () Bool)

(assert (= bs!290940 (and neg-inst!952 s!183797)))

(declare-fun res!557175 () Bool)

(declare-fun e!801327 () Bool)

(assert (=> bs!290940 (=> res!557175 e!801327)))

(assert (=> bs!290940 (= res!557175 (not (= (list!4706 lt!421147) (list!4706 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013))))))))

(assert (=> bs!290940 (=> true e!801327)))

(declare-fun b!1258644 () Bool)

(assert (=> b!1258644 (= e!801327 (= (toValue!11 KeywordValueInjection!153 lt!421147) (toValue!11 KeywordValueInjection!153 (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013)))))))

(assert (= (and bs!290940 (not res!557175)) b!1258644))

(assert (=> bs!290937 m!1416991))

(assert (=> bs!290937 m!1416785))

(assert (=> bs!290937 s!183797))

(declare-fun bs!290941 () Bool)

(declare-fun s!183799 () Bool)

(assert (= bs!290941 (and neg-inst!952 s!183799)))

(declare-fun res!557176 () Bool)

(declare-fun e!801328 () Bool)

(assert (=> bs!290941 (=> res!557176 e!801328)))

(assert (=> bs!290941 (= res!557176 (not (= (list!4706 lt!421147) (list!4706 (singletonSeq!759 #x005D)))))))

(assert (=> bs!290941 (=> true e!801328)))

(declare-fun b!1258645 () Bool)

(assert (=> b!1258645 (= e!801328 (= (toValue!11 KeywordValueInjection!153 lt!421147) (toValue!11 KeywordValueInjection!153 (singletonSeq!759 #x005D))))))

(assert (= (and bs!290941 (not res!557176)) b!1258645))

(assert (=> bs!290939 m!1416991))

(assert (=> bs!290939 m!1416917))

(assert (=> bs!290939 s!183799))

(declare-fun bs!290942 () Bool)

(declare-fun s!183801 () Bool)

(assert (= bs!290942 (and neg-inst!952 s!183801)))

(declare-fun res!557177 () Bool)

(declare-fun e!801329 () Bool)

(assert (=> bs!290942 (=> res!557177 e!801329)))

(assert (=> bs!290942 (= res!557177 (not (= (list!4706 lt!421147) (list!4706 x!245013))))))

(assert (=> bs!290942 (=> true e!801329)))

(declare-fun b!1258646 () Bool)

(assert (=> b!1258646 (= e!801329 (= (toValue!11 KeywordValueInjection!153 lt!421147) (toValue!11 KeywordValueInjection!153 x!245013)))))

(assert (= (and bs!290942 (not res!557177)) b!1258646))

(assert (=> bs!290934 m!1416991))

(assert (=> bs!290934 m!1416787))

(assert (=> bs!290934 s!183801))

(declare-fun bs!290943 () Bool)

(declare-fun s!183803 () Bool)

(assert (= bs!290943 (and neg-inst!952 s!183803)))

(declare-fun res!557178 () Bool)

(declare-fun e!801330 () Bool)

(assert (=> bs!290943 (=> res!557178 e!801330)))

(assert (=> bs!290943 (= res!557178 (not (= (list!4706 lt!421147) (list!4706 lt!421108))))))

(assert (=> bs!290943 (=> true e!801330)))

(declare-fun b!1258647 () Bool)

(assert (=> b!1258647 (= e!801330 (= (toValue!11 KeywordValueInjection!153 lt!421147) (toValue!11 KeywordValueInjection!153 lt!421108)))))

(assert (= (and bs!290943 (not res!557178)) b!1258647))

(assert (=> bs!290930 m!1416991))

(assert (=> bs!290930 m!1416773))

(assert (=> bs!290930 s!183803))

(declare-fun bs!290944 () Bool)

(declare-fun s!183805 () Bool)

(assert (= bs!290944 (and neg-inst!952 s!183805)))

(declare-fun res!557179 () Bool)

(declare-fun e!801331 () Bool)

(assert (=> bs!290944 (=> res!557179 e!801331)))

(assert (=> bs!290944 (= res!557179 (not (= (list!4706 lt!421147) (list!4706 x!245014))))))

(assert (=> bs!290944 (=> true e!801331)))

(declare-fun b!1258648 () Bool)

(assert (=> b!1258648 (= e!801331 (= (toValue!11 KeywordValueInjection!153 lt!421147) (toValue!11 KeywordValueInjection!153 x!245014)))))

(assert (= (and bs!290944 (not res!557179)) b!1258648))

(assert (=> bs!290928 m!1416991))

(assert (=> bs!290928 m!1416791))

(assert (=> bs!290928 s!183805))

(assert (=> m!1416991 s!183791))

(declare-fun bs!290945 () Bool)

(declare-fun s!183807 () Bool)

(assert (= bs!290945 (and neg-inst!952 s!183807)))

(declare-fun res!557180 () Bool)

(declare-fun e!801332 () Bool)

(assert (=> bs!290945 (=> res!557180 e!801332)))

(assert (=> bs!290945 (= res!557180 (not (= (list!4706 lt!421147) (list!4706 x!245015))))))

(assert (=> bs!290945 (=> true e!801332)))

(declare-fun b!1258649 () Bool)

(assert (=> b!1258649 (= e!801332 (= (toValue!11 KeywordValueInjection!153 lt!421147) (toValue!11 KeywordValueInjection!153 x!245015)))))

(assert (= (and bs!290945 (not res!557180)) b!1258649))

(assert (=> bs!290932 m!1416991))

(assert (=> bs!290932 m!1416793))

(assert (=> bs!290932 s!183807))

(assert (=> d!355705 m!1416991))

(declare-fun m!1416993 () Bool)

(assert (=> d!355705 m!1416993))

(declare-fun m!1416995 () Bool)

(assert (=> b!1258636 m!1416995))

(assert (=> d!355637 d!355705))

(declare-fun d!355707 () Bool)

(declare-fun jsonStringRe!0 (JsonLexer!350) Regex!3479)

(declare-datatypes ((StringLiteralValueInjection!98 0))(
  ( (StringLiteralValueInjection!99) )
))
(declare-fun injection!8 (StringLiteralValueInjection!98) TokenValueInjection!4174)

(assert (=> d!355707 (= (jsonstringRule!0 JsonLexer!351) (Rule!4135 (jsonStringRe!0 JsonLexer!351) (String!15517 "ssttrriinnggLLiitteerraall") false (injection!8 StringLiteralValueInjection!99)))))

(declare-fun bs!290946 () Bool)

(assert (= bs!290946 d!355707))

(declare-fun m!1416997 () Bool)

(assert (=> bs!290946 m!1416997))

(declare-fun m!1416999 () Bool)

(assert (=> bs!290946 m!1416999))

(assert (=> d!355649 d!355707))

(declare-fun d!355709 () Bool)

(declare-fun falseRe!0 (JsonLexer!350) Regex!3479)

(assert (=> d!355709 (= (falseRule!0 JsonLexer!351) (Rule!4135 (falseRe!0 JsonLexer!351) (String!15517 "ffaallsseeLLiitteerraall") false (injection!9 KeywordValueInjection!153)))))

(declare-fun bs!290947 () Bool)

(assert (= bs!290947 d!355709))

(declare-fun m!1417001 () Bool)

(assert (=> bs!290947 m!1417001))

(assert (=> bs!290947 m!1416721))

(assert (=> d!355649 d!355709))

(declare-fun d!355711 () Bool)

(declare-fun lBracketRe!0 (JsonLexer!350) Regex!3479)

(assert (=> d!355711 (= (lBracketRule!0 JsonLexer!351) (Rule!4135 (lBracketRe!0 JsonLexer!351) (String!15517 "lleeffttBBrraacckkeett") false (injection!9 KeywordValueInjection!153)))))

(declare-fun bs!290948 () Bool)

(assert (= bs!290948 d!355711))

(declare-fun m!1417003 () Bool)

(assert (=> bs!290948 m!1417003))

(assert (=> bs!290948 m!1416721))

(assert (=> d!355649 d!355711))

(assert (=> d!355649 d!355641))

(declare-fun d!355713 () Bool)

(declare-fun lBraceRe!0 (JsonLexer!350) Regex!3479)

(assert (=> d!355713 (= (lBraceRule!0 JsonLexer!351) (Rule!4135 (lBraceRe!0 JsonLexer!351) (String!15517 "lleeffttBBrraaccee") false (injection!9 KeywordValueInjection!153)))))

(declare-fun bs!290949 () Bool)

(assert (= bs!290949 d!355713))

(declare-fun m!1417005 () Bool)

(assert (=> bs!290949 m!1417005))

(assert (=> bs!290949 m!1416721))

(assert (=> d!355649 d!355713))

(declare-fun d!355715 () Bool)

(declare-fun nullRe!0 (JsonLexer!350) Regex!3479)

(assert (=> d!355715 (= (nullRule!0 JsonLexer!351) (Rule!4135 (nullRe!0 JsonLexer!351) (String!15517 "nnuullllLLiitteerraall") false (injection!9 KeywordValueInjection!153)))))

(declare-fun bs!290950 () Bool)

(assert (= bs!290950 d!355715))

(declare-fun m!1417007 () Bool)

(assert (=> bs!290950 m!1417007))

(assert (=> bs!290950 m!1416721))

(assert (=> d!355649 d!355715))

(declare-fun d!355717 () Bool)

(declare-fun commaRe!0 (JsonLexer!350) Regex!3479)

(assert (=> d!355717 (= (commaRule!0 JsonLexer!351) (Rule!4135 (commaRe!0 JsonLexer!351) (String!15517 "ccoommmmaa") false (injection!9 KeywordValueInjection!153)))))

(declare-fun bs!290951 () Bool)

(assert (= bs!290951 d!355717))

(declare-fun m!1417009 () Bool)

(assert (=> bs!290951 m!1417009))

(assert (=> bs!290951 m!1416721))

(assert (=> d!355649 d!355717))

(declare-fun d!355719 () Bool)

(declare-fun rBraceRe!0 (JsonLexer!350) Regex!3479)

(assert (=> d!355719 (= (rBraceRule!0 JsonLexer!351) (Rule!4135 (rBraceRe!0 JsonLexer!351) (String!15517 "rriigghhttBBrraaccee") false (injection!9 KeywordValueInjection!153)))))

(declare-fun bs!290952 () Bool)

(assert (= bs!290952 d!355719))

(declare-fun m!1417011 () Bool)

(assert (=> bs!290952 m!1417011))

(assert (=> bs!290952 m!1416721))

(assert (=> d!355649 d!355719))

(declare-fun d!355721 () Bool)

(declare-fun wsCharRe!0 (JsonLexer!350) Regex!3479)

(declare-datatypes ((WhitespaceValueInjection!102 0))(
  ( (WhitespaceValueInjection!103) )
))
(declare-fun injection!7 (WhitespaceValueInjection!102) TokenValueInjection!4174)

(assert (=> d!355721 (= (whitespaceRule!0 JsonLexer!351) (Rule!4135 (wsCharRe!0 JsonLexer!351) (String!15517 "wwhhiitteessppaaccee") true (injection!7 WhitespaceValueInjection!103)))))

(declare-fun bs!290953 () Bool)

(assert (= bs!290953 d!355721))

(declare-fun m!1417013 () Bool)

(assert (=> bs!290953 m!1417013))

(declare-fun m!1417015 () Bool)

(assert (=> bs!290953 m!1417015))

(assert (=> d!355649 d!355721))

(declare-fun d!355723 () Bool)

(declare-fun eofRe!0 (JsonLexer!350) Regex!3479)

(assert (=> d!355723 (= (eofRule!0 JsonLexer!351) (Rule!4135 (eofRe!0 JsonLexer!351) (String!15517 "eeooff") false (injection!7 WhitespaceValueInjection!103)))))

(declare-fun bs!290954 () Bool)

(assert (= bs!290954 d!355723))

(declare-fun m!1417017 () Bool)

(assert (=> bs!290954 m!1417017))

(assert (=> bs!290954 m!1417015))

(assert (=> d!355649 d!355723))

(declare-fun d!355725 () Bool)

(declare-fun trueRe!0 (JsonLexer!350) Regex!3479)

(assert (=> d!355725 (= (trueRule!0 JsonLexer!351) (Rule!4135 (trueRe!0 JsonLexer!351) (String!15517 "ttrruueeLLiitteerraall") false (injection!9 KeywordValueInjection!153)))))

(declare-fun bs!290955 () Bool)

(assert (= bs!290955 d!355725))

(declare-fun m!1417019 () Bool)

(assert (=> bs!290955 m!1417019))

(assert (=> bs!290955 m!1416721))

(assert (=> d!355649 d!355725))

(declare-fun d!355727 () Bool)

(declare-fun colonRe!0 (JsonLexer!350) Regex!3479)

(assert (=> d!355727 (= (colonRule!0 JsonLexer!351) (Rule!4135 (colonRe!0 JsonLexer!351) (String!15517 "ccoolloonn") false (injection!9 KeywordValueInjection!153)))))

(declare-fun bs!290956 () Bool)

(assert (= bs!290956 d!355727))

(declare-fun m!1417021 () Bool)

(assert (=> bs!290956 m!1417021))

(assert (=> bs!290956 m!1416721))

(assert (=> d!355649 d!355727))

(declare-fun d!355729 () Bool)

(declare-fun intRe!0 (JsonLexer!350) Regex!3479)

(declare-datatypes ((IntegerValueInjection!78 0))(
  ( (IntegerValueInjection!79) )
))
(declare-fun injection!5 (IntegerValueInjection!78) TokenValueInjection!4174)

(assert (=> d!355729 (= (integerLiteralRule!0 JsonLexer!351) (Rule!4135 (intRe!0 JsonLexer!351) (String!15517 "iinntteeggeerrLLiitteerraall") false (injection!5 IntegerValueInjection!79)))))

(declare-fun bs!290957 () Bool)

(assert (= bs!290957 d!355729))

(declare-fun m!1417023 () Bool)

(assert (=> bs!290957 m!1417023))

(declare-fun m!1417025 () Bool)

(assert (=> bs!290957 m!1417025))

(assert (=> d!355649 d!355729))

(declare-fun d!355731 () Bool)

(declare-fun floatRe!0 (JsonLexer!350) Regex!3479)

(declare-datatypes ((FloatLiteralValueInjection!74 0))(
  ( (FloatLiteralValueInjection!75) )
))
(declare-fun injection!6 (FloatLiteralValueInjection!74) TokenValueInjection!4174)

(assert (=> d!355731 (= (floatLiteralRule!0 JsonLexer!351) (Rule!4135 (floatRe!0 JsonLexer!351) (String!15517 "ffllooaattLLiitteerraall") false (injection!6 FloatLiteralValueInjection!75)))))

(declare-fun bs!290958 () Bool)

(assert (= bs!290958 d!355731))

(declare-fun m!1417027 () Bool)

(assert (=> bs!290958 m!1417027))

(declare-fun m!1417029 () Bool)

(assert (=> bs!290958 m!1417029))

(assert (=> d!355649 d!355731))

(declare-fun d!355733 () Bool)

(declare-fun c!209001 () Bool)

(assert (=> d!355733 (= c!209001 ((_ is Node!4146) (c!208975 x!245014)))))

(declare-fun e!801337 () Bool)

(assert (=> d!355733 (= (inv!17005 (c!208975 x!245014)) e!801337)))

(declare-fun b!1258656 () Bool)

(declare-fun inv!17008 (Conc!4146) Bool)

(assert (=> b!1258656 (= e!801337 (inv!17008 (c!208975 x!245014)))))

(declare-fun b!1258657 () Bool)

(declare-fun e!801338 () Bool)

(assert (=> b!1258657 (= e!801337 e!801338)))

(declare-fun res!557183 () Bool)

(assert (=> b!1258657 (= res!557183 (not ((_ is Leaf!6425) (c!208975 x!245014))))))

(assert (=> b!1258657 (=> res!557183 e!801338)))

(declare-fun b!1258658 () Bool)

(declare-fun inv!17009 (Conc!4146) Bool)

(assert (=> b!1258658 (= e!801338 (inv!17009 (c!208975 x!245014)))))

(assert (= (and d!355733 c!209001) b!1258656))

(assert (= (and d!355733 (not c!209001)) b!1258657))

(assert (= (and b!1258657 (not res!557183)) b!1258658))

(declare-fun m!1417031 () Bool)

(assert (=> b!1258656 m!1417031))

(declare-fun m!1417033 () Bool)

(assert (=> b!1258658 m!1417033))

(assert (=> b!1258526 d!355733))

(assert (=> b!1258546 d!355671))

(assert (=> b!1258546 d!355681))

(assert (=> b!1258549 d!355681))

(assert (=> b!1258549 d!355675))

(assert (=> b!1258534 d!355669))

(assert (=> b!1258611 d!355683))

(assert (=> b!1258611 d!355671))

(assert (=> bs!290820 d!355679))

(assert (=> bs!290820 d!355701))

(assert (=> bs!290859 d!355677))

(assert (=> bs!290859 d!355673))

(assert (=> b!1258613 d!355683))

(assert (=> b!1258613 d!355681))

(assert (=> bs!290822 d!355679))

(assert (=> bs!290822 d!355665))

(assert (=> bs!290865 d!355673))

(assert (=> bs!290865 d!355701))

(declare-fun b!1258671 () Bool)

(declare-fun res!557198 () Bool)

(declare-fun e!801343 () Bool)

(assert (=> b!1258671 (=> (not res!557198) (not e!801343))))

(declare-fun height!586 (Conc!4147) Int)

(assert (=> b!1258671 (= res!557198 (<= (- (height!586 (left!10921 (c!208976 lt!421123))) (height!586 (right!11251 (c!208976 lt!421123)))) 1))))

(declare-fun b!1258672 () Bool)

(declare-fun res!557200 () Bool)

(assert (=> b!1258672 (=> (not res!557200) (not e!801343))))

(assert (=> b!1258672 (= res!557200 (isBalanced!1210 (right!11251 (c!208976 lt!421123))))))

(declare-fun d!355735 () Bool)

(declare-fun res!557197 () Bool)

(declare-fun e!801344 () Bool)

(assert (=> d!355735 (=> res!557197 e!801344)))

(assert (=> d!355735 (= res!557197 (not ((_ is Node!4147) (c!208976 lt!421123))))))

(assert (=> d!355735 (= (isBalanced!1210 (c!208976 lt!421123)) e!801344)))

(declare-fun b!1258673 () Bool)

(assert (=> b!1258673 (= e!801344 e!801343)))

(declare-fun res!557201 () Bool)

(assert (=> b!1258673 (=> (not res!557201) (not e!801343))))

(assert (=> b!1258673 (= res!557201 (<= (- 1) (- (height!586 (left!10921 (c!208976 lt!421123))) (height!586 (right!11251 (c!208976 lt!421123))))))))

(declare-fun b!1258674 () Bool)

(assert (=> b!1258674 (= e!801343 (not (isEmpty!7508 (right!11251 (c!208976 lt!421123)))))))

(declare-fun b!1258675 () Bool)

(declare-fun res!557196 () Bool)

(assert (=> b!1258675 (=> (not res!557196) (not e!801343))))

(assert (=> b!1258675 (= res!557196 (isBalanced!1210 (left!10921 (c!208976 lt!421123))))))

(declare-fun b!1258676 () Bool)

(declare-fun res!557199 () Bool)

(assert (=> b!1258676 (=> (not res!557199) (not e!801343))))

(assert (=> b!1258676 (= res!557199 (not (isEmpty!7508 (left!10921 (c!208976 lt!421123)))))))

(assert (= (and d!355735 (not res!557197)) b!1258673))

(assert (= (and b!1258673 res!557201) b!1258671))

(assert (= (and b!1258671 res!557198) b!1258675))

(assert (= (and b!1258675 res!557196) b!1258672))

(assert (= (and b!1258672 res!557200) b!1258676))

(assert (= (and b!1258676 res!557199) b!1258674))

(declare-fun m!1417035 () Bool)

(assert (=> b!1258671 m!1417035))

(declare-fun m!1417037 () Bool)

(assert (=> b!1258671 m!1417037))

(declare-fun m!1417039 () Bool)

(assert (=> b!1258675 m!1417039))

(declare-fun m!1417041 () Bool)

(assert (=> b!1258676 m!1417041))

(declare-fun m!1417043 () Bool)

(assert (=> b!1258672 m!1417043))

(declare-fun m!1417045 () Bool)

(assert (=> b!1258674 m!1417045))

(assert (=> b!1258673 m!1417035))

(assert (=> b!1258673 m!1417037))

(assert (=> b!1258555 d!355735))

(declare-fun bs!290959 () Bool)

(declare-fun d!355737 () Bool)

(assert (= bs!290959 (and d!355737 d!355635)))

(declare-fun lambda!49828 () Int)

(assert (=> bs!290959 (= lambda!49828 lambda!49797)))

(declare-fun bs!290960 () Bool)

(assert (= bs!290960 (and d!355737 d!355655)))

(assert (=> bs!290960 (= lambda!49828 lambda!49824)))

(declare-fun b!1258681 () Bool)

(declare-fun e!801349 () Bool)

(assert (=> b!1258681 (= e!801349 true)))

(declare-fun b!1258680 () Bool)

(declare-fun e!801348 () Bool)

(assert (=> b!1258680 (= e!801348 e!801349)))

(declare-fun b!1258679 () Bool)

(declare-fun e!801347 () Bool)

(assert (=> b!1258679 (= e!801347 e!801348)))

(assert (=> d!355737 e!801347))

(assert (= b!1258680 b!1258681))

(assert (= b!1258679 b!1258680))

(assert (= (and d!355737 ((_ is Cons!12614) lt!421095)) b!1258679))

(assert (=> b!1258681 (< (dynLambda!5503 order!7675 (toValue!3328 (transformation!2167 (h!18015 lt!421095)))) (dynLambda!5504 order!7677 lambda!49828))))

(assert (=> b!1258681 (< (dynLambda!5505 order!7679 (toChars!3187 (transformation!2167 (h!18015 lt!421095)))) (dynLambda!5504 order!7677 lambda!49828))))

(assert (=> d!355737 true))

(declare-fun lt!421148 () Bool)

(assert (=> d!355737 (= lt!421148 (forall!3197 (t!115995 (list!4705 lt!421096)) lambda!49828))))

(declare-fun e!801345 () Bool)

(assert (=> d!355737 (= lt!421148 e!801345)))

(declare-fun res!557203 () Bool)

(assert (=> d!355737 (=> res!557203 e!801345)))

(assert (=> d!355737 (= res!557203 (not ((_ is Cons!12615) (t!115995 (list!4705 lt!421096)))))))

(assert (=> d!355737 (not (isEmpty!7505 lt!421095))))

(assert (=> d!355737 (= (rulesProduceEachTokenIndividuallyList!664 Lexer!1860 lt!421095 (t!115995 (list!4705 lt!421096))) lt!421148)))

(declare-fun b!1258677 () Bool)

(declare-fun e!801346 () Bool)

(assert (=> b!1258677 (= e!801345 e!801346)))

(declare-fun res!557202 () Bool)

(assert (=> b!1258677 (=> (not res!557202) (not e!801346))))

(assert (=> b!1258677 (= res!557202 (rulesProduceIndividualToken!851 Lexer!1860 lt!421095 (h!18016 (t!115995 (list!4705 lt!421096)))))))

(declare-fun b!1258678 () Bool)

(assert (=> b!1258678 (= e!801346 (rulesProduceEachTokenIndividuallyList!664 Lexer!1860 lt!421095 (t!115995 (t!115995 (list!4705 lt!421096)))))))

(assert (= (and d!355737 (not res!557203)) b!1258677))

(assert (= (and b!1258677 res!557202) b!1258678))

(declare-fun m!1417047 () Bool)

(assert (=> d!355737 m!1417047))

(assert (=> d!355737 m!1416735))

(declare-fun m!1417049 () Bool)

(assert (=> b!1258677 m!1417049))

(declare-fun m!1417051 () Bool)

(assert (=> b!1258678 m!1417051))

(assert (=> b!1258567 d!355737))

(declare-fun d!355739 () Bool)

(declare-fun lt!421149 () List!12679)

(assert (=> d!355739 (= lt!421149 (efficientList!185 x!245013))))

(assert (=> d!355739 (= (toValue!11 KeywordValueInjection!153 x!245013) (ite (= lt!421149 (Cons!12613 #x006E (Cons!12613 #x0075 (Cons!12613 #x006C (Cons!12613 #x006C Nil!12613))))) Null!2257 (ite (= lt!421149 (Cons!12613 #x0074 (Cons!12613 #x0072 (Cons!12613 #x0075 (Cons!12613 #x0065 Nil!12613))))) True!4515 (ite (= lt!421149 (Cons!12613 #x0066 (Cons!12613 #x0061 (Cons!12613 #x006C (Cons!12613 #x0073 (Cons!12613 #x0065 Nil!12613)))))) False!4515 (ite (= lt!421149 (Cons!12613 #x003A Nil!12613)) Colon!2257 (ite (= lt!421149 (Cons!12613 #x002C Nil!12613)) Comma!2257 (ite (= lt!421149 (Cons!12613 #x007B Nil!12613)) LeftBrace!2257 (ite (= lt!421149 (Cons!12613 #x007D Nil!12613)) RightBrace!2257 (ite (= lt!421149 (Cons!12613 #x005B Nil!12613)) LeftBracket!2257 (ite (= lt!421149 (Cons!12613 #x005D Nil!12613)) RightBracket!2257 (Broken!11288 lt!421149)))))))))))))

(declare-fun bs!290961 () Bool)

(assert (= bs!290961 d!355739))

(declare-fun m!1417053 () Bool)

(assert (=> bs!290961 m!1417053))

(assert (=> b!1258544 d!355739))

(assert (=> b!1258544 d!355681))

(declare-fun d!355741 () Bool)

(declare-fun choose!933 (JsonLexer!350) Regex!3479)

(assert (=> d!355741 (= (rBracketRe!0 JsonLexer!351) (choose!933 JsonLexer!351))))

(declare-fun bs!290962 () Bool)

(assert (= bs!290962 d!355741))

(declare-fun m!1417055 () Bool)

(assert (=> bs!290962 m!1417055))

(assert (=> d!355641 d!355741))

(assert (=> d!355641 d!355639))

(declare-fun bs!290963 () Bool)

(declare-fun d!355743 () Bool)

(assert (= bs!290963 (and d!355743 d!355703)))

(declare-fun lambda!49829 () Int)

(assert (=> bs!290963 (= lambda!49829 lambda!49827)))

(assert (=> d!355743 (= (inv!17007 (_2!7113 (_1!7114 (h!18013 mapDefault!6329)))) (forall!3199 (exprs!1041 (_2!7113 (_1!7114 (h!18013 mapDefault!6329)))) lambda!49829))))

(declare-fun bs!290964 () Bool)

(assert (= bs!290964 d!355743))

(declare-fun m!1417057 () Bool)

(assert (=> bs!290964 m!1417057))

(assert (=> b!1258584 d!355743))

(assert (=> b!1258606 d!355683))

(assert (=> bs!290817 d!355665))

(assert (=> bs!290817 d!355679))

(declare-fun bs!290965 () Bool)

(declare-fun d!355745 () Bool)

(assert (= bs!290965 (and d!355745 d!355703)))

(declare-fun lambda!49830 () Int)

(assert (=> bs!290965 (= lambda!49830 lambda!49827)))

(declare-fun bs!290966 () Bool)

(assert (= bs!290966 (and d!355745 d!355743)))

(assert (=> bs!290966 (= lambda!49830 lambda!49829)))

(assert (=> d!355745 (= (inv!17007 (_2!7113 (_1!7114 (h!18013 mapDefault!6325)))) (forall!3199 (exprs!1041 (_2!7113 (_1!7114 (h!18013 mapDefault!6325)))) lambda!49830))))

(declare-fun bs!290967 () Bool)

(assert (= bs!290967 d!355745))

(declare-fun m!1417059 () Bool)

(assert (=> bs!290967 m!1417059))

(assert (=> b!1258602 d!355745))

(assert (=> bs!290833 d!355667))

(assert (=> b!1258551 d!355681))

(assert (=> b!1258551 d!355671))

(declare-fun bs!290968 () Bool)

(declare-fun d!355747 () Bool)

(assert (= bs!290968 (and d!355747 d!355703)))

(declare-fun lambda!49831 () Int)

(assert (=> bs!290968 (= lambda!49831 lambda!49827)))

(declare-fun bs!290969 () Bool)

(assert (= bs!290969 (and d!355747 d!355743)))

(assert (=> bs!290969 (= lambda!49831 lambda!49829)))

(declare-fun bs!290970 () Bool)

(assert (= bs!290970 (and d!355747 d!355745)))

(assert (=> bs!290970 (= lambda!49831 lambda!49830)))

(assert (=> d!355747 (= (inv!17007 (_1!7111 (_1!7112 (h!18012 mapDefault!6326)))) (forall!3199 (exprs!1041 (_1!7111 (_1!7112 (h!18012 mapDefault!6326)))) lambda!49831))))

(declare-fun bs!290971 () Bool)

(assert (= bs!290971 d!355747))

(declare-fun m!1417061 () Bool)

(assert (=> bs!290971 m!1417061))

(assert (=> b!1258577 d!355747))

(assert (=> b!1258531 d!355739))

(assert (=> b!1258531 d!355671))

(declare-fun d!355749 () Bool)

(declare-fun res!557210 () Bool)

(declare-fun e!801354 () Bool)

(assert (=> d!355749 (=> (not res!557210) (not e!801354))))

(declare-fun valid!1055 (MutableMap!1264) Bool)

(assert (=> d!355749 (= res!557210 (valid!1055 (cache!1645 cacheDown!356)))))

(assert (=> d!355749 (= (validCacheMapDown!118 (cache!1645 cacheDown!356)) e!801354)))

(declare-fun b!1258688 () Bool)

(declare-fun res!557211 () Bool)

(assert (=> b!1258688 (=> (not res!557211) (not e!801354))))

(declare-fun invariantList!199 (List!12678) Bool)

(declare-datatypes ((ListMap!447 0))(
  ( (ListMap!448 (toList!707 List!12678)) )
))
(declare-fun map!2761 (MutableMap!1264) ListMap!447)

(assert (=> b!1258688 (= res!557211 (invariantList!199 (toList!707 (map!2761 (cache!1645 cacheDown!356)))))))

(declare-fun b!1258689 () Bool)

(declare-fun lambda!49834 () Int)

(declare-fun forall!3200 (List!12678 Int) Bool)

(assert (=> b!1258689 (= e!801354 (forall!3200 (toList!707 (map!2761 (cache!1645 cacheDown!356))) lambda!49834))))

(assert (= (and d!355749 res!557210) b!1258688))

(assert (= (and b!1258688 res!557211) b!1258689))

(declare-fun m!1417064 () Bool)

(assert (=> d!355749 m!1417064))

(declare-fun m!1417066 () Bool)

(assert (=> b!1258688 m!1417066))

(declare-fun m!1417068 () Bool)

(assert (=> b!1258688 m!1417068))

(assert (=> b!1258689 m!1417066))

(declare-fun m!1417070 () Bool)

(assert (=> b!1258689 m!1417070))

(assert (=> b!1258561 d!355749))

(assert (=> b!1258608 d!355739))

(assert (=> b!1258608 d!355683))

(assert (=> b!1258605 d!355681))

(assert (=> b!1258605 d!355683))

(assert (=> bs!290831 d!355701))

(assert (=> bs!290831 d!355667))

(declare-fun d!355751 () Bool)

(declare-fun res!557216 () Bool)

(declare-fun e!801359 () Bool)

(assert (=> d!355751 (=> res!557216 e!801359)))

(assert (=> d!355751 (= res!557216 ((_ is Nil!12615) (list!4705 lt!421096)))))

(assert (=> d!355751 (= (forall!3197 (list!4705 lt!421096) lambda!49824) e!801359)))

(declare-fun b!1258694 () Bool)

(declare-fun e!801360 () Bool)

(assert (=> b!1258694 (= e!801359 e!801360)))

(declare-fun res!557217 () Bool)

(assert (=> b!1258694 (=> (not res!557217) (not e!801360))))

(declare-fun dynLambda!5507 (Int Token!3996) Bool)

(assert (=> b!1258694 (= res!557217 (dynLambda!5507 lambda!49824 (h!18016 (list!4705 lt!421096))))))

(declare-fun b!1258695 () Bool)

(assert (=> b!1258695 (= e!801360 (forall!3197 (t!115995 (list!4705 lt!421096)) lambda!49824))))

(assert (= (and d!355751 (not res!557216)) b!1258694))

(assert (= (and b!1258694 res!557217) b!1258695))

(declare-fun b_lambda!36499 () Bool)

(assert (=> (not b_lambda!36499) (not b!1258694)))

(declare-fun m!1417072 () Bool)

(assert (=> b!1258694 m!1417072))

(declare-fun m!1417074 () Bool)

(assert (=> b!1258695 m!1417074))

(assert (=> d!355655 d!355751))

(assert (=> d!355655 d!355647))

(assert (=> bs!290857 d!355673))

(assert (=> d!355685 d!355679))

(declare-fun bm!88281 () Bool)

(declare-fun c!209008 () Bool)

(declare-fun c!209009 () Bool)

(assert (=> bm!88281 (= c!209008 c!209009)))

(declare-fun call!88286 () List!12679)

(declare-fun e!801369 () List!12679)

(declare-fun lt!421161 () List!12679)

(assert (=> bm!88281 (= call!88286 (++!3216 e!801369 (ite c!209009 (efficientList$default$2!62 (c!208975 lt!421108)) lt!421161)))))

(declare-fun b!1258708 () Bool)

(declare-fun e!801367 () List!12679)

(assert (=> b!1258708 (= e!801367 (efficientList$default$2!62 (c!208975 lt!421108)))))

(declare-fun d!355753 () Bool)

(declare-fun lt!421163 () List!12679)

(assert (=> d!355753 (= lt!421163 (++!3216 (list!4708 (c!208975 lt!421108)) (efficientList$default$2!62 (c!208975 lt!421108))))))

(assert (=> d!355753 (= lt!421163 e!801367)))

(declare-fun c!209010 () Bool)

(assert (=> d!355753 (= c!209010 ((_ is Empty!4146) (c!208975 lt!421108)))))

(assert (=> d!355753 (= (efficientList!186 (c!208975 lt!421108) (efficientList$default$2!62 (c!208975 lt!421108))) lt!421163)))

(declare-fun b!1258709 () Bool)

(declare-fun e!801368 () List!12679)

(assert (=> b!1258709 (= e!801367 e!801368)))

(assert (=> b!1258709 (= c!209009 ((_ is Leaf!6425) (c!208975 lt!421108)))))

(declare-fun b!1258710 () Bool)

(assert (=> b!1258710 (= e!801368 call!88286)))

(declare-fun b!1258711 () Bool)

(declare-fun efficientList!187 (IArray!8297) List!12679)

(assert (=> b!1258711 (= e!801369 (efficientList!187 (xs!6857 (c!208975 lt!421108))))))

(declare-fun b!1258712 () Bool)

(declare-fun lt!421162 () Unit!18882)

(declare-fun lt!421164 () Unit!18882)

(assert (=> b!1258712 (= lt!421162 lt!421164)))

(declare-fun lt!421160 () List!12679)

(assert (=> b!1258712 (= (++!3216 call!88286 (efficientList$default$2!62 (c!208975 lt!421108))) (++!3216 lt!421160 (++!3216 lt!421161 (efficientList$default$2!62 (c!208975 lt!421108)))))))

(declare-fun lemmaConcatAssociativity!808 (List!12679 List!12679 List!12679) Unit!18882)

(assert (=> b!1258712 (= lt!421164 (lemmaConcatAssociativity!808 lt!421160 lt!421161 (efficientList$default$2!62 (c!208975 lt!421108))))))

(assert (=> b!1258712 (= lt!421161 (list!4708 (right!11250 (c!208975 lt!421108))))))

(assert (=> b!1258712 (= lt!421160 (list!4708 (left!10920 (c!208975 lt!421108))))))

(assert (=> b!1258712 (= e!801368 (efficientList!186 (left!10920 (c!208975 lt!421108)) (efficientList!186 (right!11250 (c!208975 lt!421108)) (efficientList$default$2!62 (c!208975 lt!421108)))))))

(declare-fun b!1258713 () Bool)

(assert (=> b!1258713 (= e!801369 lt!421160)))

(assert (= (and d!355753 c!209010) b!1258708))

(assert (= (and d!355753 (not c!209010)) b!1258709))

(assert (= (and b!1258709 c!209009) b!1258710))

(assert (= (and b!1258709 (not c!209009)) b!1258712))

(assert (= (or b!1258710 b!1258712) bm!88281))

(assert (= (and bm!88281 c!209008) b!1258711))

(assert (= (and bm!88281 (not c!209008)) b!1258713))

(declare-fun m!1417076 () Bool)

(assert (=> bm!88281 m!1417076))

(assert (=> d!355753 m!1416933))

(assert (=> d!355753 m!1416933))

(assert (=> d!355753 m!1416943))

(declare-fun m!1417078 () Bool)

(assert (=> d!355753 m!1417078))

(declare-fun m!1417080 () Bool)

(assert (=> b!1258711 m!1417080))

(assert (=> b!1258712 m!1416943))

(declare-fun m!1417082 () Bool)

(assert (=> b!1258712 m!1417082))

(assert (=> b!1258712 m!1416943))

(declare-fun m!1417084 () Bool)

(assert (=> b!1258712 m!1417084))

(assert (=> b!1258712 m!1416943))

(declare-fun m!1417086 () Bool)

(assert (=> b!1258712 m!1417086))

(declare-fun m!1417088 () Bool)

(assert (=> b!1258712 m!1417088))

(declare-fun m!1417090 () Bool)

(assert (=> b!1258712 m!1417090))

(assert (=> b!1258712 m!1416973))

(assert (=> b!1258712 m!1417082))

(declare-fun m!1417092 () Bool)

(assert (=> b!1258712 m!1417092))

(assert (=> b!1258712 m!1416943))

(assert (=> b!1258712 m!1417088))

(assert (=> b!1258712 m!1416971))

(assert (=> d!355685 d!355753))

(declare-fun d!355755 () Bool)

(assert (=> d!355755 (= (efficientList$default$2!62 (c!208975 lt!421108)) Nil!12613)))

(assert (=> d!355685 d!355755))

(assert (=> b!1258540 d!355675))

(assert (=> d!355693 d!355665))

(declare-fun bm!88282 () Bool)

(declare-fun c!209011 () Bool)

(declare-fun c!209012 () Bool)

(assert (=> bm!88282 (= c!209011 c!209012)))

(declare-fun call!88287 () List!12679)

(declare-fun lt!421166 () List!12679)

(declare-fun e!801372 () List!12679)

(assert (=> bm!88282 (= call!88287 (++!3216 e!801372 (ite c!209012 (efficientList$default$2!62 (c!208975 x!245014)) lt!421166)))))

(declare-fun b!1258714 () Bool)

(declare-fun e!801370 () List!12679)

(assert (=> b!1258714 (= e!801370 (efficientList$default$2!62 (c!208975 x!245014)))))

(declare-fun d!355757 () Bool)

(declare-fun lt!421168 () List!12679)

(assert (=> d!355757 (= lt!421168 (++!3216 (list!4708 (c!208975 x!245014)) (efficientList$default$2!62 (c!208975 x!245014))))))

(assert (=> d!355757 (= lt!421168 e!801370)))

(declare-fun c!209013 () Bool)

(assert (=> d!355757 (= c!209013 ((_ is Empty!4146) (c!208975 x!245014)))))

(assert (=> d!355757 (= (efficientList!186 (c!208975 x!245014) (efficientList$default$2!62 (c!208975 x!245014))) lt!421168)))

(declare-fun b!1258715 () Bool)

(declare-fun e!801371 () List!12679)

(assert (=> b!1258715 (= e!801370 e!801371)))

(assert (=> b!1258715 (= c!209012 ((_ is Leaf!6425) (c!208975 x!245014)))))

(declare-fun b!1258716 () Bool)

(assert (=> b!1258716 (= e!801371 call!88287)))

(declare-fun b!1258717 () Bool)

(assert (=> b!1258717 (= e!801372 (efficientList!187 (xs!6857 (c!208975 x!245014))))))

(declare-fun b!1258718 () Bool)

(declare-fun lt!421167 () Unit!18882)

(declare-fun lt!421169 () Unit!18882)

(assert (=> b!1258718 (= lt!421167 lt!421169)))

(declare-fun lt!421165 () List!12679)

(assert (=> b!1258718 (= (++!3216 call!88287 (efficientList$default$2!62 (c!208975 x!245014))) (++!3216 lt!421165 (++!3216 lt!421166 (efficientList$default$2!62 (c!208975 x!245014)))))))

(assert (=> b!1258718 (= lt!421169 (lemmaConcatAssociativity!808 lt!421165 lt!421166 (efficientList$default$2!62 (c!208975 x!245014))))))

(assert (=> b!1258718 (= lt!421166 (list!4708 (right!11250 (c!208975 x!245014))))))

(assert (=> b!1258718 (= lt!421165 (list!4708 (left!10920 (c!208975 x!245014))))))

(assert (=> b!1258718 (= e!801371 (efficientList!186 (left!10920 (c!208975 x!245014)) (efficientList!186 (right!11250 (c!208975 x!245014)) (efficientList$default$2!62 (c!208975 x!245014)))))))

(declare-fun b!1258719 () Bool)

(assert (=> b!1258719 (= e!801372 lt!421165)))

(assert (= (and d!355757 c!209013) b!1258714))

(assert (= (and d!355757 (not c!209013)) b!1258715))

(assert (= (and b!1258715 c!209012) b!1258716))

(assert (= (and b!1258715 (not c!209012)) b!1258718))

(assert (= (or b!1258716 b!1258718) bm!88282))

(assert (= (and bm!88282 c!209011) b!1258717))

(assert (= (and bm!88282 (not c!209011)) b!1258719))

(declare-fun m!1417094 () Bool)

(assert (=> bm!88282 m!1417094))

(assert (=> d!355757 m!1416919))

(assert (=> d!355757 m!1416919))

(assert (=> d!355757 m!1416967))

(declare-fun m!1417096 () Bool)

(assert (=> d!355757 m!1417096))

(declare-fun m!1417098 () Bool)

(assert (=> b!1258717 m!1417098))

(assert (=> b!1258718 m!1416967))

(declare-fun m!1417100 () Bool)

(assert (=> b!1258718 m!1417100))

(assert (=> b!1258718 m!1416967))

(declare-fun m!1417102 () Bool)

(assert (=> b!1258718 m!1417102))

(assert (=> b!1258718 m!1416967))

(declare-fun m!1417104 () Bool)

(assert (=> b!1258718 m!1417104))

(declare-fun m!1417106 () Bool)

(assert (=> b!1258718 m!1417106))

(declare-fun m!1417108 () Bool)

(assert (=> b!1258718 m!1417108))

(assert (=> b!1258718 m!1416961))

(assert (=> b!1258718 m!1417100))

(declare-fun m!1417110 () Bool)

(assert (=> b!1258718 m!1417110))

(assert (=> b!1258718 m!1416967))

(assert (=> b!1258718 m!1417106))

(assert (=> b!1258718 m!1416959))

(assert (=> d!355693 d!355757))

(declare-fun d!355759 () Bool)

(assert (=> d!355759 (= (efficientList$default$2!62 (c!208975 x!245014)) Nil!12613)))

(assert (=> d!355693 d!355759))

(assert (=> bs!290866 d!355673))

(assert (=> bs!290866 d!355677))

(assert (=> bs!290834 d!355677))

(assert (=> bs!290834 d!355667))

(assert (=> bs!290840 d!355667))

(assert (=> bs!290840 d!355679))

(assert (=> bs!290810 d!355665))

(assert (=> b!1258537 d!355739))

(assert (=> b!1258537 d!355675))

(declare-fun bs!290972 () Bool)

(declare-fun d!355761 () Bool)

(assert (= bs!290972 (and d!355761 d!355703)))

(declare-fun lambda!49835 () Int)

(assert (=> bs!290972 (= lambda!49835 lambda!49827)))

(declare-fun bs!290973 () Bool)

(assert (= bs!290973 (and d!355761 d!355743)))

(assert (=> bs!290973 (= lambda!49835 lambda!49829)))

(declare-fun bs!290974 () Bool)

(assert (= bs!290974 (and d!355761 d!355745)))

(assert (=> bs!290974 (= lambda!49835 lambda!49830)))

(declare-fun bs!290975 () Bool)

(assert (= bs!290975 (and d!355761 d!355747)))

(assert (=> bs!290975 (= lambda!49835 lambda!49831)))

(assert (=> d!355761 (= (inv!17007 (_1!7111 (_1!7112 (h!18012 mapValue!6332)))) (forall!3199 (exprs!1041 (_1!7111 (_1!7112 (h!18012 mapValue!6332)))) lambda!49835))))

(declare-fun bs!290976 () Bool)

(assert (= bs!290976 d!355761))

(declare-fun m!1417112 () Bool)

(assert (=> bs!290976 m!1417112))

(assert (=> b!1258597 d!355761))

(declare-fun d!355763 () Bool)

(declare-fun c!209014 () Bool)

(assert (=> d!355763 (= c!209014 ((_ is Node!4146) (c!208975 x!245015)))))

(declare-fun e!801373 () Bool)

(assert (=> d!355763 (= (inv!17005 (c!208975 x!245015)) e!801373)))

(declare-fun b!1258720 () Bool)

(assert (=> b!1258720 (= e!801373 (inv!17008 (c!208975 x!245015)))))

(declare-fun b!1258721 () Bool)

(declare-fun e!801374 () Bool)

(assert (=> b!1258721 (= e!801373 e!801374)))

(declare-fun res!557218 () Bool)

(assert (=> b!1258721 (= res!557218 (not ((_ is Leaf!6425) (c!208975 x!245015))))))

(assert (=> b!1258721 (=> res!557218 e!801374)))

(declare-fun b!1258722 () Bool)

(assert (=> b!1258722 (= e!801374 (inv!17009 (c!208975 x!245015)))))

(assert (= (and d!355763 c!209014) b!1258720))

(assert (= (and d!355763 (not c!209014)) b!1258721))

(assert (= (and b!1258721 (not res!557218)) b!1258722))

(declare-fun m!1417114 () Bool)

(assert (=> b!1258720 m!1417114))

(declare-fun m!1417116 () Bool)

(assert (=> b!1258722 m!1417116))

(assert (=> b!1258527 d!355763))

(declare-fun bs!290977 () Bool)

(declare-fun d!355765 () Bool)

(assert (= bs!290977 (and d!355765 d!355761)))

(declare-fun lambda!49836 () Int)

(assert (=> bs!290977 (= lambda!49836 lambda!49835)))

(declare-fun bs!290978 () Bool)

(assert (= bs!290978 (and d!355765 d!355743)))

(assert (=> bs!290978 (= lambda!49836 lambda!49829)))

(declare-fun bs!290979 () Bool)

(assert (= bs!290979 (and d!355765 d!355703)))

(assert (=> bs!290979 (= lambda!49836 lambda!49827)))

(declare-fun bs!290980 () Bool)

(assert (= bs!290980 (and d!355765 d!355747)))

(assert (=> bs!290980 (= lambda!49836 lambda!49831)))

(declare-fun bs!290981 () Bool)

(assert (= bs!290981 (and d!355765 d!355745)))

(assert (=> bs!290981 (= lambda!49836 lambda!49830)))

(assert (=> d!355765 (= (inv!17007 (_2!7113 (_1!7114 (h!18013 (zeroValue!1577 (v!20861 (underlying!2847 (v!20862 (underlying!2848 (cache!1645 cacheDown!356)))))))))) (forall!3199 (exprs!1041 (_2!7113 (_1!7114 (h!18013 (zeroValue!1577 (v!20861 (underlying!2847 (v!20862 (underlying!2848 (cache!1645 cacheDown!356)))))))))) lambda!49836))))

(declare-fun bs!290982 () Bool)

(assert (= bs!290982 d!355765))

(declare-fun m!1417118 () Bool)

(assert (=> bs!290982 m!1417118))

(assert (=> b!1258600 d!355765))

(declare-fun bs!290983 () Bool)

(declare-fun d!355767 () Bool)

(assert (= bs!290983 (and d!355767 d!355761)))

(declare-fun lambda!49837 () Int)

(assert (=> bs!290983 (= lambda!49837 lambda!49835)))

(declare-fun bs!290984 () Bool)

(assert (= bs!290984 (and d!355767 d!355743)))

(assert (=> bs!290984 (= lambda!49837 lambda!49829)))

(declare-fun bs!290985 () Bool)

(assert (= bs!290985 (and d!355767 d!355765)))

(assert (=> bs!290985 (= lambda!49837 lambda!49836)))

(declare-fun bs!290986 () Bool)

(assert (= bs!290986 (and d!355767 d!355703)))

(assert (=> bs!290986 (= lambda!49837 lambda!49827)))

(declare-fun bs!290987 () Bool)

(assert (= bs!290987 (and d!355767 d!355747)))

(assert (=> bs!290987 (= lambda!49837 lambda!49831)))

(declare-fun bs!290988 () Bool)

(assert (= bs!290988 (and d!355767 d!355745)))

(assert (=> bs!290988 (= lambda!49837 lambda!49830)))

(assert (=> d!355767 (= (inv!17007 (_2!7113 (_1!7114 (h!18013 mapValue!6326)))) (forall!3199 (exprs!1041 (_2!7113 (_1!7114 (h!18013 mapValue!6326)))) lambda!49837))))

(declare-fun bs!290989 () Bool)

(assert (= bs!290989 d!355767))

(declare-fun m!1417120 () Bool)

(assert (=> bs!290989 m!1417120))

(assert (=> b!1258590 d!355767))

(declare-fun bs!290990 () Bool)

(declare-fun d!355769 () Bool)

(assert (= bs!290990 (and d!355769 d!355761)))

(declare-fun lambda!49838 () Int)

(assert (=> bs!290990 (= lambda!49838 lambda!49835)))

(declare-fun bs!290991 () Bool)

(assert (= bs!290991 (and d!355769 d!355743)))

(assert (=> bs!290991 (= lambda!49838 lambda!49829)))

(declare-fun bs!290992 () Bool)

(assert (= bs!290992 (and d!355769 d!355765)))

(assert (=> bs!290992 (= lambda!49838 lambda!49836)))

(declare-fun bs!290993 () Bool)

(assert (= bs!290993 (and d!355769 d!355703)))

(assert (=> bs!290993 (= lambda!49838 lambda!49827)))

(declare-fun bs!290994 () Bool)

(assert (= bs!290994 (and d!355769 d!355747)))

(assert (=> bs!290994 (= lambda!49838 lambda!49831)))

(declare-fun bs!290995 () Bool)

(assert (= bs!290995 (and d!355769 d!355767)))

(assert (=> bs!290995 (= lambda!49838 lambda!49837)))

(declare-fun bs!290996 () Bool)

(assert (= bs!290996 (and d!355769 d!355745)))

(assert (=> bs!290996 (= lambda!49838 lambda!49830)))

(assert (=> d!355769 (= (inv!17007 (_1!7111 (_1!7112 (h!18012 (zeroValue!1576 (v!20859 (underlying!2845 (v!20860 (underlying!2846 (cache!1644 cacheUp!343)))))))))) (forall!3199 (exprs!1041 (_1!7111 (_1!7112 (h!18012 (zeroValue!1576 (v!20859 (underlying!2845 (v!20860 (underlying!2846 (cache!1644 cacheUp!343)))))))))) lambda!49838))))

(declare-fun bs!290997 () Bool)

(assert (= bs!290997 d!355769))

(declare-fun m!1417122 () Bool)

(assert (=> bs!290997 m!1417122))

(assert (=> b!1258575 d!355769))

(assert (=> d!355689 d!355677))

(declare-fun bm!88283 () Bool)

(declare-fun c!209015 () Bool)

(declare-fun c!209016 () Bool)

(assert (=> bm!88283 (= c!209015 c!209016)))

(declare-fun lt!421171 () List!12679)

(declare-fun e!801377 () List!12679)

(declare-fun call!88288 () List!12679)

(assert (=> bm!88283 (= call!88288 (++!3216 e!801377 (ite c!209016 (efficientList$default$2!62 (c!208975 x!245015)) lt!421171)))))

(declare-fun b!1258723 () Bool)

(declare-fun e!801375 () List!12679)

(assert (=> b!1258723 (= e!801375 (efficientList$default$2!62 (c!208975 x!245015)))))

(declare-fun d!355771 () Bool)

(declare-fun lt!421173 () List!12679)

(assert (=> d!355771 (= lt!421173 (++!3216 (list!4708 (c!208975 x!245015)) (efficientList$default$2!62 (c!208975 x!245015))))))

(assert (=> d!355771 (= lt!421173 e!801375)))

(declare-fun c!209017 () Bool)

(assert (=> d!355771 (= c!209017 ((_ is Empty!4146) (c!208975 x!245015)))))

(assert (=> d!355771 (= (efficientList!186 (c!208975 x!245015) (efficientList$default$2!62 (c!208975 x!245015))) lt!421173)))

(declare-fun b!1258724 () Bool)

(declare-fun e!801376 () List!12679)

(assert (=> b!1258724 (= e!801375 e!801376)))

(assert (=> b!1258724 (= c!209016 ((_ is Leaf!6425) (c!208975 x!245015)))))

(declare-fun b!1258725 () Bool)

(assert (=> b!1258725 (= e!801376 call!88288)))

(declare-fun b!1258726 () Bool)

(assert (=> b!1258726 (= e!801377 (efficientList!187 (xs!6857 (c!208975 x!245015))))))

(declare-fun b!1258727 () Bool)

(declare-fun lt!421172 () Unit!18882)

(declare-fun lt!421174 () Unit!18882)

(assert (=> b!1258727 (= lt!421172 lt!421174)))

(declare-fun lt!421170 () List!12679)

(assert (=> b!1258727 (= (++!3216 call!88288 (efficientList$default$2!62 (c!208975 x!245015))) (++!3216 lt!421170 (++!3216 lt!421171 (efficientList$default$2!62 (c!208975 x!245015)))))))

(assert (=> b!1258727 (= lt!421174 (lemmaConcatAssociativity!808 lt!421170 lt!421171 (efficientList$default$2!62 (c!208975 x!245015))))))

(assert (=> b!1258727 (= lt!421171 (list!4708 (right!11250 (c!208975 x!245015))))))

(assert (=> b!1258727 (= lt!421170 (list!4708 (left!10920 (c!208975 x!245015))))))

(assert (=> b!1258727 (= e!801376 (efficientList!186 (left!10920 (c!208975 x!245015)) (efficientList!186 (right!11250 (c!208975 x!245015)) (efficientList$default$2!62 (c!208975 x!245015)))))))

(declare-fun b!1258728 () Bool)

(assert (=> b!1258728 (= e!801377 lt!421170)))

(assert (= (and d!355771 c!209017) b!1258723))

(assert (= (and d!355771 (not c!209017)) b!1258724))

(assert (= (and b!1258724 c!209016) b!1258725))

(assert (= (and b!1258724 (not c!209016)) b!1258727))

(assert (= (or b!1258725 b!1258727) bm!88283))

(assert (= (and bm!88283 c!209015) b!1258726))

(assert (= (and bm!88283 (not c!209015)) b!1258728))

(declare-fun m!1417124 () Bool)

(assert (=> bm!88283 m!1417124))

(assert (=> d!355771 m!1416931))

(assert (=> d!355771 m!1416931))

(assert (=> d!355771 m!1416955))

(declare-fun m!1417126 () Bool)

(assert (=> d!355771 m!1417126))

(declare-fun m!1417128 () Bool)

(assert (=> b!1258726 m!1417128))

(assert (=> b!1258727 m!1416955))

(declare-fun m!1417130 () Bool)

(assert (=> b!1258727 m!1417130))

(assert (=> b!1258727 m!1416955))

(declare-fun m!1417132 () Bool)

(assert (=> b!1258727 m!1417132))

(assert (=> b!1258727 m!1416955))

(declare-fun m!1417134 () Bool)

(assert (=> b!1258727 m!1417134))

(declare-fun m!1417136 () Bool)

(assert (=> b!1258727 m!1417136))

(declare-fun m!1417138 () Bool)

(assert (=> b!1258727 m!1417138))

(assert (=> b!1258727 m!1416949))

(assert (=> b!1258727 m!1417130))

(declare-fun m!1417140 () Bool)

(assert (=> b!1258727 m!1417140))

(assert (=> b!1258727 m!1416955))

(assert (=> b!1258727 m!1417136))

(assert (=> b!1258727 m!1416947))

(assert (=> d!355689 d!355771))

(declare-fun d!355773 () Bool)

(assert (=> d!355773 (= (efficientList$default$2!62 (c!208975 x!245015)) Nil!12613)))

(assert (=> d!355689 d!355773))

(assert (=> bs!290804 d!355701))

(declare-fun bs!290998 () Bool)

(declare-fun d!355775 () Bool)

(assert (= bs!290998 (and d!355775 d!355761)))

(declare-fun lambda!49839 () Int)

(assert (=> bs!290998 (= lambda!49839 lambda!49835)))

(declare-fun bs!290999 () Bool)

(assert (= bs!290999 (and d!355775 d!355769)))

(assert (=> bs!290999 (= lambda!49839 lambda!49838)))

(declare-fun bs!291000 () Bool)

(assert (= bs!291000 (and d!355775 d!355743)))

(assert (=> bs!291000 (= lambda!49839 lambda!49829)))

(declare-fun bs!291001 () Bool)

(assert (= bs!291001 (and d!355775 d!355765)))

(assert (=> bs!291001 (= lambda!49839 lambda!49836)))

(declare-fun bs!291002 () Bool)

(assert (= bs!291002 (and d!355775 d!355703)))

(assert (=> bs!291002 (= lambda!49839 lambda!49827)))

(declare-fun bs!291003 () Bool)

(assert (= bs!291003 (and d!355775 d!355747)))

(assert (=> bs!291003 (= lambda!49839 lambda!49831)))

(declare-fun bs!291004 () Bool)

(assert (= bs!291004 (and d!355775 d!355767)))

(assert (=> bs!291004 (= lambda!49839 lambda!49837)))

(declare-fun bs!291005 () Bool)

(assert (= bs!291005 (and d!355775 d!355745)))

(assert (=> bs!291005 (= lambda!49839 lambda!49830)))

(assert (=> d!355775 (= (inv!17007 (_2!7113 (_1!7114 (h!18013 mapValue!6329)))) (forall!3199 (exprs!1041 (_2!7113 (_1!7114 (h!18013 mapValue!6329)))) lambda!49839))))

(declare-fun bs!291006 () Bool)

(assert (= bs!291006 d!355775))

(declare-fun m!1417142 () Bool)

(assert (=> bs!291006 m!1417142))

(assert (=> b!1258585 d!355775))

(declare-fun d!355777 () Bool)

(assert (=> d!355777 true))

(declare-fun lt!421177 () Bool)

(declare-fun rulesValidInductive!685 (LexerInterface!1862 List!12680) Bool)

(assert (=> d!355777 (= lt!421177 (rulesValidInductive!685 Lexer!1860 lt!421095))))

(declare-fun lambda!49842 () Int)

(declare-fun forall!3201 (List!12680 Int) Bool)

(assert (=> d!355777 (= lt!421177 (forall!3201 lt!421095 lambda!49842))))

(assert (=> d!355777 (= (rulesValid!786 Lexer!1860 lt!421095) lt!421177)))

(declare-fun bs!291007 () Bool)

(assert (= bs!291007 d!355777))

(declare-fun m!1417144 () Bool)

(assert (=> bs!291007 m!1417144))

(declare-fun m!1417146 () Bool)

(assert (=> bs!291007 m!1417146))

(assert (=> d!355629 d!355777))

(declare-fun bs!291008 () Bool)

(declare-fun d!355779 () Bool)

(assert (= bs!291008 (and d!355779 d!355761)))

(declare-fun lambda!49843 () Int)

(assert (=> bs!291008 (= lambda!49843 lambda!49835)))

(declare-fun bs!291009 () Bool)

(assert (= bs!291009 (and d!355779 d!355769)))

(assert (=> bs!291009 (= lambda!49843 lambda!49838)))

(declare-fun bs!291010 () Bool)

(assert (= bs!291010 (and d!355779 d!355743)))

(assert (=> bs!291010 (= lambda!49843 lambda!49829)))

(declare-fun bs!291011 () Bool)

(assert (= bs!291011 (and d!355779 d!355765)))

(assert (=> bs!291011 (= lambda!49843 lambda!49836)))

(declare-fun bs!291012 () Bool)

(assert (= bs!291012 (and d!355779 d!355775)))

(assert (=> bs!291012 (= lambda!49843 lambda!49839)))

(declare-fun bs!291013 () Bool)

(assert (= bs!291013 (and d!355779 d!355703)))

(assert (=> bs!291013 (= lambda!49843 lambda!49827)))

(declare-fun bs!291014 () Bool)

(assert (= bs!291014 (and d!355779 d!355747)))

(assert (=> bs!291014 (= lambda!49843 lambda!49831)))

(declare-fun bs!291015 () Bool)

(assert (= bs!291015 (and d!355779 d!355767)))

(assert (=> bs!291015 (= lambda!49843 lambda!49837)))

(declare-fun bs!291016 () Bool)

(assert (= bs!291016 (and d!355779 d!355745)))

(assert (=> bs!291016 (= lambda!49843 lambda!49830)))

(assert (=> d!355779 (= (inv!17007 (_2!7113 (_1!7114 (h!18013 (minValue!1577 (v!20861 (underlying!2847 (v!20862 (underlying!2848 (cache!1645 cacheDown!356)))))))))) (forall!3199 (exprs!1041 (_2!7113 (_1!7114 (h!18013 (minValue!1577 (v!20861 (underlying!2847 (v!20862 (underlying!2848 (cache!1645 cacheDown!356)))))))))) lambda!49843))))

(declare-fun bs!291017 () Bool)

(assert (= bs!291017 d!355779))

(declare-fun m!1417148 () Bool)

(assert (=> bs!291017 m!1417148))

(assert (=> b!1258601 d!355779))

(declare-fun bs!291018 () Bool)

(declare-fun d!355781 () Bool)

(assert (= bs!291018 (and d!355781 d!355761)))

(declare-fun lambda!49844 () Int)

(assert (=> bs!291018 (= lambda!49844 lambda!49835)))

(declare-fun bs!291019 () Bool)

(assert (= bs!291019 (and d!355781 d!355769)))

(assert (=> bs!291019 (= lambda!49844 lambda!49838)))

(declare-fun bs!291020 () Bool)

(assert (= bs!291020 (and d!355781 d!355743)))

(assert (=> bs!291020 (= lambda!49844 lambda!49829)))

(declare-fun bs!291021 () Bool)

(assert (= bs!291021 (and d!355781 d!355765)))

(assert (=> bs!291021 (= lambda!49844 lambda!49836)))

(declare-fun bs!291022 () Bool)

(assert (= bs!291022 (and d!355781 d!355775)))

(assert (=> bs!291022 (= lambda!49844 lambda!49839)))

(declare-fun bs!291023 () Bool)

(assert (= bs!291023 (and d!355781 d!355703)))

(assert (=> bs!291023 (= lambda!49844 lambda!49827)))

(declare-fun bs!291024 () Bool)

(assert (= bs!291024 (and d!355781 d!355747)))

(assert (=> bs!291024 (= lambda!49844 lambda!49831)))

(declare-fun bs!291025 () Bool)

(assert (= bs!291025 (and d!355781 d!355779)))

(assert (=> bs!291025 (= lambda!49844 lambda!49843)))

(declare-fun bs!291026 () Bool)

(assert (= bs!291026 (and d!355781 d!355767)))

(assert (=> bs!291026 (= lambda!49844 lambda!49837)))

(declare-fun bs!291027 () Bool)

(assert (= bs!291027 (and d!355781 d!355745)))

(assert (=> bs!291027 (= lambda!49844 lambda!49830)))

(assert (=> d!355781 (= (inv!17007 (_1!7111 (_1!7112 (h!18012 (minValue!1576 (v!20859 (underlying!2845 (v!20860 (underlying!2846 (cache!1644 cacheUp!343)))))))))) (forall!3199 (exprs!1041 (_1!7111 (_1!7112 (h!18012 (minValue!1576 (v!20859 (underlying!2845 (v!20860 (underlying!2846 (cache!1644 cacheUp!343)))))))))) lambda!49844))))

(declare-fun bs!291028 () Bool)

(assert (= bs!291028 d!355781))

(declare-fun m!1417150 () Bool)

(assert (=> bs!291028 m!1417150))

(assert (=> b!1258576 d!355781))

(declare-fun d!355783 () Bool)

(declare-fun res!557223 () Bool)

(declare-fun e!801382 () Bool)

(assert (=> d!355783 (=> res!557223 e!801382)))

(assert (=> d!355783 (= res!557223 ((_ is Nil!12614) lt!421095))))

(assert (=> d!355783 (= (noDuplicateTag!786 Lexer!1860 lt!421095 Nil!12616) e!801382)))

(declare-fun b!1258735 () Bool)

(declare-fun e!801383 () Bool)

(assert (=> b!1258735 (= e!801382 e!801383)))

(declare-fun res!557224 () Bool)

(assert (=> b!1258735 (=> (not res!557224) (not e!801383))))

(declare-fun contains!2128 (List!12682 String!15516) Bool)

(assert (=> b!1258735 (= res!557224 (not (contains!2128 Nil!12616 (tag!2429 (h!18015 lt!421095)))))))

(declare-fun b!1258736 () Bool)

(assert (=> b!1258736 (= e!801383 (noDuplicateTag!786 Lexer!1860 (t!115994 lt!421095) (Cons!12616 (tag!2429 (h!18015 lt!421095)) Nil!12616)))))

(assert (= (and d!355783 (not res!557223)) b!1258735))

(assert (= (and b!1258735 res!557224) b!1258736))

(declare-fun m!1417152 () Bool)

(assert (=> b!1258735 m!1417152))

(declare-fun m!1417154 () Bool)

(assert (=> b!1258736 m!1417154))

(assert (=> b!1258479 d!355783))

(assert (=> bs!290868 d!355673))

(assert (=> bs!290868 d!355667))

(assert (=> bs!290842 d!355667))

(assert (=> bs!290842 d!355677))

(assert (=> b!1258529 d!355671))

(assert (=> b!1258529 d!355739))

(assert (=> b!1258609 d!355683))

(assert (=> b!1258609 d!355669))

(assert (=> b!1258528 d!355671))

(assert (=> b!1258550 d!355681))

(assert (=> b!1258550 d!355739))

(declare-fun bs!291029 () Bool)

(declare-fun d!355785 () Bool)

(assert (= bs!291029 (and d!355785 d!355761)))

(declare-fun lambda!49845 () Int)

(assert (=> bs!291029 (= lambda!49845 lambda!49835)))

(declare-fun bs!291030 () Bool)

(assert (= bs!291030 (and d!355785 d!355769)))

(assert (=> bs!291030 (= lambda!49845 lambda!49838)))

(declare-fun bs!291031 () Bool)

(assert (= bs!291031 (and d!355785 d!355743)))

(assert (=> bs!291031 (= lambda!49845 lambda!49829)))

(declare-fun bs!291032 () Bool)

(assert (= bs!291032 (and d!355785 d!355765)))

(assert (=> bs!291032 (= lambda!49845 lambda!49836)))

(declare-fun bs!291033 () Bool)

(assert (= bs!291033 (and d!355785 d!355775)))

(assert (=> bs!291033 (= lambda!49845 lambda!49839)))

(declare-fun bs!291034 () Bool)

(assert (= bs!291034 (and d!355785 d!355703)))

(assert (=> bs!291034 (= lambda!49845 lambda!49827)))

(declare-fun bs!291035 () Bool)

(assert (= bs!291035 (and d!355785 d!355747)))

(assert (=> bs!291035 (= lambda!49845 lambda!49831)))

(declare-fun bs!291036 () Bool)

(assert (= bs!291036 (and d!355785 d!355779)))

(assert (=> bs!291036 (= lambda!49845 lambda!49843)))

(declare-fun bs!291037 () Bool)

(assert (= bs!291037 (and d!355785 d!355781)))

(assert (=> bs!291037 (= lambda!49845 lambda!49844)))

(declare-fun bs!291038 () Bool)

(assert (= bs!291038 (and d!355785 d!355767)))

(assert (=> bs!291038 (= lambda!49845 lambda!49837)))

(declare-fun bs!291039 () Bool)

(assert (= bs!291039 (and d!355785 d!355745)))

(assert (=> bs!291039 (= lambda!49845 lambda!49830)))

(assert (=> d!355785 (= (inv!17007 setElem!7986) (forall!3199 (exprs!1041 setElem!7986) lambda!49845))))

(declare-fun bs!291040 () Bool)

(assert (= bs!291040 d!355785))

(declare-fun m!1417156 () Bool)

(assert (=> bs!291040 m!1417156))

(assert (=> setNonEmpty!7987 d!355785))

(declare-fun bs!291041 () Bool)

(declare-fun d!355787 () Bool)

(assert (= bs!291041 (and d!355787 d!355761)))

(declare-fun lambda!49846 () Int)

(assert (=> bs!291041 (= lambda!49846 lambda!49835)))

(declare-fun bs!291042 () Bool)

(assert (= bs!291042 (and d!355787 d!355769)))

(assert (=> bs!291042 (= lambda!49846 lambda!49838)))

(declare-fun bs!291043 () Bool)

(assert (= bs!291043 (and d!355787 d!355765)))

(assert (=> bs!291043 (= lambda!49846 lambda!49836)))

(declare-fun bs!291044 () Bool)

(assert (= bs!291044 (and d!355787 d!355775)))

(assert (=> bs!291044 (= lambda!49846 lambda!49839)))

(declare-fun bs!291045 () Bool)

(assert (= bs!291045 (and d!355787 d!355703)))

(assert (=> bs!291045 (= lambda!49846 lambda!49827)))

(declare-fun bs!291046 () Bool)

(assert (= bs!291046 (and d!355787 d!355747)))

(assert (=> bs!291046 (= lambda!49846 lambda!49831)))

(declare-fun bs!291047 () Bool)

(assert (= bs!291047 (and d!355787 d!355779)))

(assert (=> bs!291047 (= lambda!49846 lambda!49843)))

(declare-fun bs!291048 () Bool)

(assert (= bs!291048 (and d!355787 d!355781)))

(assert (=> bs!291048 (= lambda!49846 lambda!49844)))

(declare-fun bs!291049 () Bool)

(assert (= bs!291049 (and d!355787 d!355767)))

(assert (=> bs!291049 (= lambda!49846 lambda!49837)))

(declare-fun bs!291050 () Bool)

(assert (= bs!291050 (and d!355787 d!355745)))

(assert (=> bs!291050 (= lambda!49846 lambda!49830)))

(declare-fun bs!291051 () Bool)

(assert (= bs!291051 (and d!355787 d!355743)))

(assert (=> bs!291051 (= lambda!49846 lambda!49829)))

(declare-fun bs!291052 () Bool)

(assert (= bs!291052 (and d!355787 d!355785)))

(assert (=> bs!291052 (= lambda!49846 lambda!49845)))

(assert (=> d!355787 (= (inv!17007 (_1!7111 (_1!7112 (h!18012 mapValue!6325)))) (forall!3199 (exprs!1041 (_1!7111 (_1!7112 (h!18012 mapValue!6325)))) lambda!49846))))

(declare-fun bs!291053 () Bool)

(assert (= bs!291053 d!355787))

(declare-fun m!1417158 () Bool)

(assert (=> bs!291053 m!1417158))

(assert (=> b!1258599 d!355787))

(assert (=> b!1258612 d!355683))

(assert (=> b!1258612 d!355675))

(assert (=> bs!290864 d!355673))

(assert (=> bs!290864 d!355665))

(declare-fun bs!291054 () Bool)

(declare-fun d!355789 () Bool)

(assert (= bs!291054 (and d!355789 d!355761)))

(declare-fun lambda!49847 () Int)

(assert (=> bs!291054 (= lambda!49847 lambda!49835)))

(declare-fun bs!291055 () Bool)

(assert (= bs!291055 (and d!355789 d!355769)))

(assert (=> bs!291055 (= lambda!49847 lambda!49838)))

(declare-fun bs!291056 () Bool)

(assert (= bs!291056 (and d!355789 d!355765)))

(assert (=> bs!291056 (= lambda!49847 lambda!49836)))

(declare-fun bs!291057 () Bool)

(assert (= bs!291057 (and d!355789 d!355775)))

(assert (=> bs!291057 (= lambda!49847 lambda!49839)))

(declare-fun bs!291058 () Bool)

(assert (= bs!291058 (and d!355789 d!355703)))

(assert (=> bs!291058 (= lambda!49847 lambda!49827)))

(declare-fun bs!291059 () Bool)

(assert (= bs!291059 (and d!355789 d!355787)))

(assert (=> bs!291059 (= lambda!49847 lambda!49846)))

(declare-fun bs!291060 () Bool)

(assert (= bs!291060 (and d!355789 d!355747)))

(assert (=> bs!291060 (= lambda!49847 lambda!49831)))

(declare-fun bs!291061 () Bool)

(assert (= bs!291061 (and d!355789 d!355779)))

(assert (=> bs!291061 (= lambda!49847 lambda!49843)))

(declare-fun bs!291062 () Bool)

(assert (= bs!291062 (and d!355789 d!355781)))

(assert (=> bs!291062 (= lambda!49847 lambda!49844)))

(declare-fun bs!291063 () Bool)

(assert (= bs!291063 (and d!355789 d!355767)))

(assert (=> bs!291063 (= lambda!49847 lambda!49837)))

(declare-fun bs!291064 () Bool)

(assert (= bs!291064 (and d!355789 d!355745)))

(assert (=> bs!291064 (= lambda!49847 lambda!49830)))

(declare-fun bs!291065 () Bool)

(assert (= bs!291065 (and d!355789 d!355743)))

(assert (=> bs!291065 (= lambda!49847 lambda!49829)))

(declare-fun bs!291066 () Bool)

(assert (= bs!291066 (and d!355789 d!355785)))

(assert (=> bs!291066 (= lambda!49847 lambda!49845)))

(assert (=> d!355789 (= (inv!17007 setElem!7971) (forall!3199 (exprs!1041 setElem!7971) lambda!49847))))

(declare-fun bs!291067 () Bool)

(assert (= bs!291067 d!355789))

(declare-fun m!1417160 () Bool)

(assert (=> bs!291067 m!1417160))

(assert (=> setNonEmpty!7971 d!355789))

(declare-fun d!355791 () Bool)

(declare-fun c!209018 () Bool)

(assert (=> d!355791 (= c!209018 ((_ is Node!4146) (c!208975 x!245013)))))

(declare-fun e!801384 () Bool)

(assert (=> d!355791 (= (inv!17005 (c!208975 x!245013)) e!801384)))

(declare-fun b!1258737 () Bool)

(assert (=> b!1258737 (= e!801384 (inv!17008 (c!208975 x!245013)))))

(declare-fun b!1258738 () Bool)

(declare-fun e!801385 () Bool)

(assert (=> b!1258738 (= e!801384 e!801385)))

(declare-fun res!557225 () Bool)

(assert (=> b!1258738 (= res!557225 (not ((_ is Leaf!6425) (c!208975 x!245013))))))

(assert (=> b!1258738 (=> res!557225 e!801385)))

(declare-fun b!1258739 () Bool)

(assert (=> b!1258739 (= e!801385 (inv!17009 (c!208975 x!245013)))))

(assert (= (and d!355791 c!209018) b!1258737))

(assert (= (and d!355791 (not c!209018)) b!1258738))

(assert (= (and b!1258738 (not res!557225)) b!1258739))

(declare-fun m!1417162 () Bool)

(assert (=> b!1258737 m!1417162))

(declare-fun m!1417164 () Bool)

(assert (=> b!1258739 m!1417164))

(assert (=> b!1258524 d!355791))

(assert (=> bs!290861 d!355701))

(assert (=> bs!290861 d!355673))

(declare-fun b!1258752 () Bool)

(declare-fun e!801391 () Bool)

(declare-fun isEmpty!7509 (Conc!4146) Bool)

(assert (=> b!1258752 (= e!801391 (not (isEmpty!7509 (right!11250 (c!208975 lt!421108)))))))

(declare-fun d!355793 () Bool)

(declare-fun res!557243 () Bool)

(declare-fun e!801390 () Bool)

(assert (=> d!355793 (=> res!557243 e!801390)))

(assert (=> d!355793 (= res!557243 (not ((_ is Node!4146) (c!208975 lt!421108))))))

(assert (=> d!355793 (= (isBalanced!1209 (c!208975 lt!421108)) e!801390)))

(declare-fun b!1258753 () Bool)

(declare-fun res!557240 () Bool)

(assert (=> b!1258753 (=> (not res!557240) (not e!801391))))

(assert (=> b!1258753 (= res!557240 (not (isEmpty!7509 (left!10920 (c!208975 lt!421108)))))))

(declare-fun b!1258754 () Bool)

(assert (=> b!1258754 (= e!801390 e!801391)))

(declare-fun res!557241 () Bool)

(assert (=> b!1258754 (=> (not res!557241) (not e!801391))))

(declare-fun height!587 (Conc!4146) Int)

(assert (=> b!1258754 (= res!557241 (<= (- 1) (- (height!587 (left!10920 (c!208975 lt!421108))) (height!587 (right!11250 (c!208975 lt!421108))))))))

(declare-fun b!1258755 () Bool)

(declare-fun res!557238 () Bool)

(assert (=> b!1258755 (=> (not res!557238) (not e!801391))))

(assert (=> b!1258755 (= res!557238 (<= (- (height!587 (left!10920 (c!208975 lt!421108))) (height!587 (right!11250 (c!208975 lt!421108)))) 1))))

(declare-fun b!1258756 () Bool)

(declare-fun res!557239 () Bool)

(assert (=> b!1258756 (=> (not res!557239) (not e!801391))))

(assert (=> b!1258756 (= res!557239 (isBalanced!1209 (left!10920 (c!208975 lt!421108))))))

(declare-fun b!1258757 () Bool)

(declare-fun res!557242 () Bool)

(assert (=> b!1258757 (=> (not res!557242) (not e!801391))))

(assert (=> b!1258757 (= res!557242 (isBalanced!1209 (right!11250 (c!208975 lt!421108))))))

(assert (= (and d!355793 (not res!557243)) b!1258754))

(assert (= (and b!1258754 res!557241) b!1258755))

(assert (= (and b!1258755 res!557238) b!1258756))

(assert (= (and b!1258756 res!557239) b!1258757))

(assert (= (and b!1258757 res!557242) b!1258753))

(assert (= (and b!1258753 res!557240) b!1258752))

(declare-fun m!1417166 () Bool)

(assert (=> b!1258755 m!1417166))

(declare-fun m!1417168 () Bool)

(assert (=> b!1258755 m!1417168))

(assert (=> b!1258754 m!1417166))

(assert (=> b!1258754 m!1417168))

(declare-fun m!1417170 () Bool)

(assert (=> b!1258756 m!1417170))

(declare-fun m!1417172 () Bool)

(assert (=> b!1258752 m!1417172))

(declare-fun m!1417174 () Bool)

(assert (=> b!1258757 m!1417174))

(declare-fun m!1417176 () Bool)

(assert (=> b!1258753 m!1417176))

(assert (=> b!1258501 d!355793))

(assert (=> bs!290805 d!355701))

(assert (=> bs!290805 d!355677))

(assert (=> bs!290855 d!355667))

(assert (=> bs!290855 d!355673))

(assert (=> bs!290850 d!355683))

(declare-fun bs!291068 () Bool)

(declare-fun d!355795 () Bool)

(assert (= bs!291068 (and d!355795 d!355761)))

(declare-fun lambda!49848 () Int)

(assert (=> bs!291068 (= lambda!49848 lambda!49835)))

(declare-fun bs!291069 () Bool)

(assert (= bs!291069 (and d!355795 d!355769)))

(assert (=> bs!291069 (= lambda!49848 lambda!49838)))

(declare-fun bs!291070 () Bool)

(assert (= bs!291070 (and d!355795 d!355765)))

(assert (=> bs!291070 (= lambda!49848 lambda!49836)))

(declare-fun bs!291071 () Bool)

(assert (= bs!291071 (and d!355795 d!355775)))

(assert (=> bs!291071 (= lambda!49848 lambda!49839)))

(declare-fun bs!291072 () Bool)

(assert (= bs!291072 (and d!355795 d!355703)))

(assert (=> bs!291072 (= lambda!49848 lambda!49827)))

(declare-fun bs!291073 () Bool)

(assert (= bs!291073 (and d!355795 d!355787)))

(assert (=> bs!291073 (= lambda!49848 lambda!49846)))

(declare-fun bs!291074 () Bool)

(assert (= bs!291074 (and d!355795 d!355747)))

(assert (=> bs!291074 (= lambda!49848 lambda!49831)))

(declare-fun bs!291075 () Bool)

(assert (= bs!291075 (and d!355795 d!355789)))

(assert (=> bs!291075 (= lambda!49848 lambda!49847)))

(declare-fun bs!291076 () Bool)

(assert (= bs!291076 (and d!355795 d!355779)))

(assert (=> bs!291076 (= lambda!49848 lambda!49843)))

(declare-fun bs!291077 () Bool)

(assert (= bs!291077 (and d!355795 d!355781)))

(assert (=> bs!291077 (= lambda!49848 lambda!49844)))

(declare-fun bs!291078 () Bool)

(assert (= bs!291078 (and d!355795 d!355767)))

(assert (=> bs!291078 (= lambda!49848 lambda!49837)))

(declare-fun bs!291079 () Bool)

(assert (= bs!291079 (and d!355795 d!355745)))

(assert (=> bs!291079 (= lambda!49848 lambda!49830)))

(declare-fun bs!291080 () Bool)

(assert (= bs!291080 (and d!355795 d!355743)))

(assert (=> bs!291080 (= lambda!49848 lambda!49829)))

(declare-fun bs!291081 () Bool)

(assert (= bs!291081 (and d!355795 d!355785)))

(assert (=> bs!291081 (= lambda!49848 lambda!49845)))

(assert (=> d!355795 (= (inv!17007 (_1!7111 (_1!7112 (h!18012 mapDefault!6332)))) (forall!3199 (exprs!1041 (_1!7111 (_1!7112 (h!18012 mapDefault!6332)))) lambda!49848))))

(declare-fun bs!291082 () Bool)

(assert (= bs!291082 d!355795))

(declare-fun m!1417178 () Bool)

(assert (=> bs!291082 m!1417178))

(assert (=> b!1258598 d!355795))

(declare-fun bs!291083 () Bool)

(declare-fun d!355797 () Bool)

(assert (= bs!291083 (and d!355797 d!355761)))

(declare-fun lambda!49849 () Int)

(assert (=> bs!291083 (= lambda!49849 lambda!49835)))

(declare-fun bs!291084 () Bool)

(assert (= bs!291084 (and d!355797 d!355769)))

(assert (=> bs!291084 (= lambda!49849 lambda!49838)))

(declare-fun bs!291085 () Bool)

(assert (= bs!291085 (and d!355797 d!355765)))

(assert (=> bs!291085 (= lambda!49849 lambda!49836)))

(declare-fun bs!291086 () Bool)

(assert (= bs!291086 (and d!355797 d!355775)))

(assert (=> bs!291086 (= lambda!49849 lambda!49839)))

(declare-fun bs!291087 () Bool)

(assert (= bs!291087 (and d!355797 d!355703)))

(assert (=> bs!291087 (= lambda!49849 lambda!49827)))

(declare-fun bs!291088 () Bool)

(assert (= bs!291088 (and d!355797 d!355787)))

(assert (=> bs!291088 (= lambda!49849 lambda!49846)))

(declare-fun bs!291089 () Bool)

(assert (= bs!291089 (and d!355797 d!355747)))

(assert (=> bs!291089 (= lambda!49849 lambda!49831)))

(declare-fun bs!291090 () Bool)

(assert (= bs!291090 (and d!355797 d!355789)))

(assert (=> bs!291090 (= lambda!49849 lambda!49847)))

(declare-fun bs!291091 () Bool)

(assert (= bs!291091 (and d!355797 d!355779)))

(assert (=> bs!291091 (= lambda!49849 lambda!49843)))

(declare-fun bs!291092 () Bool)

(assert (= bs!291092 (and d!355797 d!355781)))

(assert (=> bs!291092 (= lambda!49849 lambda!49844)))

(declare-fun bs!291093 () Bool)

(assert (= bs!291093 (and d!355797 d!355767)))

(assert (=> bs!291093 (= lambda!49849 lambda!49837)))

(declare-fun bs!291094 () Bool)

(assert (= bs!291094 (and d!355797 d!355745)))

(assert (=> bs!291094 (= lambda!49849 lambda!49830)))

(declare-fun bs!291095 () Bool)

(assert (= bs!291095 (and d!355797 d!355743)))

(assert (=> bs!291095 (= lambda!49849 lambda!49829)))

(declare-fun bs!291096 () Bool)

(assert (= bs!291096 (and d!355797 d!355785)))

(assert (=> bs!291096 (= lambda!49849 lambda!49845)))

(declare-fun bs!291097 () Bool)

(assert (= bs!291097 (and d!355797 d!355795)))

(assert (=> bs!291097 (= lambda!49849 lambda!49848)))

(assert (=> d!355797 (= (inv!17007 setElem!7972) (forall!3199 (exprs!1041 setElem!7972) lambda!49849))))

(declare-fun bs!291098 () Bool)

(assert (= bs!291098 d!355797))

(declare-fun m!1417180 () Bool)

(assert (=> bs!291098 m!1417180))

(assert (=> setNonEmpty!7972 d!355797))

(declare-fun d!355799 () Bool)

(assert (=> d!355799 (= (list!4705 lt!421123) (list!4707 (c!208976 lt!421123)))))

(declare-fun bs!291099 () Bool)

(assert (= bs!291099 d!355799))

(declare-fun m!1417182 () Bool)

(assert (=> bs!291099 m!1417182))

(assert (=> d!355645 d!355799))

(declare-fun d!355801 () Bool)

(declare-fun e!801394 () Bool)

(assert (=> d!355801 e!801394))

(declare-fun res!557246 () Bool)

(assert (=> d!355801 (=> (not res!557246) (not e!801394))))

(declare-fun lt!421180 () BalanceConc!8234)

(assert (=> d!355801 (= res!557246 (= (list!4705 lt!421180) (Cons!12615 (Token!3997 (apply!2705 (injection!9 KeywordValueInjection!153) (singletonSeq!759 #x005D)) (rBracketRule!0 JsonLexer!351) 1 (Cons!12613 #x005D Nil!12613)) Nil!12615)))))

(declare-fun choose!7895 (Token!3996) BalanceConc!8234)

(assert (=> d!355801 (= lt!421180 (choose!7895 (Token!3997 (apply!2705 (injection!9 KeywordValueInjection!153) (singletonSeq!759 #x005D)) (rBracketRule!0 JsonLexer!351) 1 (Cons!12613 #x005D Nil!12613))))))

(assert (=> d!355801 (= (singleton!320 (Token!3997 (apply!2705 (injection!9 KeywordValueInjection!153) (singletonSeq!759 #x005D)) (rBracketRule!0 JsonLexer!351) 1 (Cons!12613 #x005D Nil!12613))) lt!421180)))

(declare-fun b!1258760 () Bool)

(assert (=> b!1258760 (= e!801394 (isBalanced!1210 (c!208976 lt!421180)))))

(assert (= (and d!355801 res!557246) b!1258760))

(declare-fun m!1417184 () Bool)

(assert (=> d!355801 m!1417184))

(declare-fun m!1417186 () Bool)

(assert (=> d!355801 m!1417186))

(declare-fun m!1417188 () Bool)

(assert (=> b!1258760 m!1417188))

(assert (=> d!355645 d!355801))

(assert (=> b!1258548 d!355675))

(assert (=> b!1258548 d!355681))

(declare-fun bs!291100 () Bool)

(declare-fun d!355803 () Bool)

(assert (= bs!291100 (and d!355803 d!355639)))

(declare-fun lambda!49852 () Int)

(assert (=> bs!291100 (not (= lambda!49852 lambda!49818))))

(assert (=> d!355803 true))

(declare-fun order!7681 () Int)

(declare-fun dynLambda!5508 (Int Int) Int)

(assert (=> d!355803 (< (dynLambda!5505 order!7679 lambda!49819) (dynLambda!5508 order!7681 lambda!49852))))

(assert (=> d!355803 true))

(assert (=> d!355803 (< (dynLambda!5503 order!7675 lambda!49820) (dynLambda!5508 order!7681 lambda!49852))))

(assert (=> d!355803 (= (semiInverseModEq!815 lambda!49819 lambda!49820) (Forall!483 lambda!49852))))

(declare-fun bs!291101 () Bool)

(assert (= bs!291101 d!355803))

(declare-fun m!1417190 () Bool)

(assert (=> bs!291101 m!1417190))

(assert (=> d!355639 d!355803))

(assert (=> d!355639 d!355667))

(assert (=> d!355639 d!355677))

(declare-fun d!355805 () Bool)

(assert (=> d!355805 (= (inv!17006 x!245014) (isBalanced!1209 (c!208975 x!245014)))))

(declare-fun bs!291102 () Bool)

(assert (= bs!291102 d!355805))

(declare-fun m!1417192 () Bool)

(assert (=> bs!291102 m!1417192))

(assert (=> d!355639 d!355805))

(assert (=> d!355639 d!355701))

(declare-fun b!1258805 () Bool)

(declare-fun e!801417 () BalanceConc!8232)

(declare-fun e!801420 () BalanceConc!8232)

(assert (=> b!1258805 (= e!801417 e!801420)))

(declare-fun c!209049 () Bool)

(assert (=> b!1258805 (= c!209049 ((_ is Broken!11288) (toValue!11 KeywordValueInjection!153 x!245013)))))

(declare-fun d!355807 () Bool)

(declare-fun c!209045 () Bool)

(assert (=> d!355807 (= c!209045 ((_ is Null!2257) (toValue!11 KeywordValueInjection!153 x!245013)))))

(declare-fun e!801423 () BalanceConc!8232)

(assert (=> d!355807 (= (toCharacters!4 KeywordValueInjection!153 (toValue!11 KeywordValueInjection!153 x!245013)) e!801423)))

(declare-fun b!1258806 () Bool)

(declare-fun e!801419 () BalanceConc!8232)

(declare-fun commaStringConc!0 () BalanceConc!8232)

(assert (=> b!1258806 (= e!801419 commaStringConc!0)))

(declare-fun b!1258807 () Bool)

(declare-fun e!801416 () BalanceConc!8232)

(declare-fun leftBracketStringConc!0 () BalanceConc!8232)

(assert (=> b!1258807 (= e!801416 leftBracketStringConc!0)))

(declare-fun b!1258808 () Bool)

(declare-fun rightBracketStringConc!0 () BalanceConc!8232)

(assert (=> b!1258808 (= e!801417 rightBracketStringConc!0)))

(declare-fun b!1258809 () Bool)

(assert (=> b!1258809 (= e!801420 (BalanceConc!8233 Empty!4146))))

(declare-fun b!1258810 () Bool)

(declare-fun e!801422 () BalanceConc!8232)

(declare-fun colonStringConc!0 () BalanceConc!8232)

(assert (=> b!1258810 (= e!801422 colonStringConc!0)))

(declare-fun b!1258811 () Bool)

(declare-fun c!209041 () Bool)

(assert (=> b!1258811 (= c!209041 ((_ is False!4515) (toValue!11 KeywordValueInjection!153 x!245013)))))

(declare-fun e!801418 () BalanceConc!8232)

(declare-fun e!801424 () BalanceConc!8232)

(assert (=> b!1258811 (= e!801418 e!801424)))

(declare-fun b!1258812 () Bool)

(assert (=> b!1258812 (= e!801424 e!801422)))

(declare-fun c!209044 () Bool)

(assert (=> b!1258812 (= c!209044 ((_ is Colon!2257) (toValue!11 KeywordValueInjection!153 x!245013)))))

(declare-fun b!1258813 () Bool)

(declare-fun nullStringConc!0 () BalanceConc!8232)

(assert (=> b!1258813 (= e!801423 nullStringConc!0)))

(declare-fun b!1258814 () Bool)

(declare-fun c!209043 () Bool)

(assert (=> b!1258814 (= c!209043 ((_ is RightBrace!2257) (toValue!11 KeywordValueInjection!153 x!245013)))))

(declare-fun e!801421 () BalanceConc!8232)

(declare-fun e!801415 () BalanceConc!8232)

(assert (=> b!1258814 (= e!801421 e!801415)))

(declare-fun b!1258815 () Bool)

(declare-fun leftBraceStringConc!0 () BalanceConc!8232)

(assert (=> b!1258815 (= e!801421 leftBraceStringConc!0)))

(declare-fun b!1258816 () Bool)

(declare-fun trueStringConc!0 () BalanceConc!8232)

(assert (=> b!1258816 (= e!801418 trueStringConc!0)))

(declare-fun b!1258817 () Bool)

(declare-fun c!209048 () Bool)

(assert (=> b!1258817 (= c!209048 ((_ is Comma!2257) (toValue!11 KeywordValueInjection!153 x!245013)))))

(assert (=> b!1258817 (= e!801422 e!801419)))

(declare-fun b!1258818 () Bool)

(declare-fun seqFromList!1583 (List!12679) BalanceConc!8232)

(assert (=> b!1258818 (= e!801420 (seqFromList!1583 (value!71066 (toValue!11 KeywordValueInjection!153 x!245013))))))

(declare-fun b!1258819 () Bool)

(assert (=> b!1258819 (= e!801415 e!801416)))

(declare-fun c!209046 () Bool)

(assert (=> b!1258819 (= c!209046 ((_ is LeftBracket!2257) (toValue!11 KeywordValueInjection!153 x!245013)))))

(declare-fun b!1258820 () Bool)

(declare-fun c!209050 () Bool)

(assert (=> b!1258820 (= c!209050 ((_ is RightBracket!2257) (toValue!11 KeywordValueInjection!153 x!245013)))))

(assert (=> b!1258820 (= e!801416 e!801417)))

(declare-fun b!1258821 () Bool)

(assert (=> b!1258821 (= e!801423 e!801418)))

(declare-fun c!209042 () Bool)

(assert (=> b!1258821 (= c!209042 ((_ is True!4515) (toValue!11 KeywordValueInjection!153 x!245013)))))

(declare-fun b!1258822 () Bool)

(declare-fun falseStringConc!0 () BalanceConc!8232)

(assert (=> b!1258822 (= e!801424 falseStringConc!0)))

(declare-fun b!1258823 () Bool)

(assert (=> b!1258823 (= e!801419 e!801421)))

(declare-fun c!209047 () Bool)

(assert (=> b!1258823 (= c!209047 ((_ is LeftBrace!2257) (toValue!11 KeywordValueInjection!153 x!245013)))))

(declare-fun b!1258824 () Bool)

(declare-fun rightBraceStringConc!0 () BalanceConc!8232)

(assert (=> b!1258824 (= e!801415 rightBraceStringConc!0)))

(assert (= (and d!355807 c!209045) b!1258813))

(assert (= (and d!355807 (not c!209045)) b!1258821))

(assert (= (and b!1258821 c!209042) b!1258816))

(assert (= (and b!1258821 (not c!209042)) b!1258811))

(assert (= (and b!1258811 c!209041) b!1258822))

(assert (= (and b!1258811 (not c!209041)) b!1258812))

(assert (= (and b!1258812 c!209044) b!1258810))

(assert (= (and b!1258812 (not c!209044)) b!1258817))

(assert (= (and b!1258817 c!209048) b!1258806))

(assert (= (and b!1258817 (not c!209048)) b!1258823))

(assert (= (and b!1258823 c!209047) b!1258815))

(assert (= (and b!1258823 (not c!209047)) b!1258814))

(assert (= (and b!1258814 c!209043) b!1258824))

(assert (= (and b!1258814 (not c!209043)) b!1258819))

(assert (= (and b!1258819 c!209046) b!1258807))

(assert (= (and b!1258819 (not c!209046)) b!1258820))

(assert (= (and b!1258820 c!209050) b!1258808))

(assert (= (and b!1258820 (not c!209050)) b!1258805))

(assert (= (and b!1258805 c!209049) b!1258818))

(assert (= (and b!1258805 (not c!209049)) b!1258809))

(declare-fun m!1417194 () Bool)

(assert (=> b!1258807 m!1417194))

(declare-fun m!1417196 () Bool)

(assert (=> b!1258813 m!1417196))

(declare-fun m!1417198 () Bool)

(assert (=> b!1258818 m!1417198))

(declare-fun m!1417200 () Bool)

(assert (=> b!1258816 m!1417200))

(declare-fun m!1417202 () Bool)

(assert (=> b!1258806 m!1417202))

(declare-fun m!1417204 () Bool)

(assert (=> b!1258815 m!1417204))

(declare-fun m!1417206 () Bool)

(assert (=> b!1258808 m!1417206))

(declare-fun m!1417208 () Bool)

(assert (=> b!1258822 m!1417208))

(declare-fun m!1417210 () Bool)

(assert (=> b!1258810 m!1417210))

(declare-fun m!1417212 () Bool)

(assert (=> b!1258824 m!1417212))

(assert (=> d!355639 d!355807))

(declare-fun d!355809 () Bool)

(assert (=> d!355809 (= (inv!17006 x!245013) (isBalanced!1209 (c!208975 x!245013)))))

(declare-fun bs!291103 () Bool)

(assert (= bs!291103 d!355809))

(declare-fun m!1417214 () Bool)

(assert (=> bs!291103 m!1417214))

(assert (=> d!355639 d!355809))

(declare-fun d!355811 () Bool)

(declare-fun choose!7896 (Int) Bool)

(assert (=> d!355811 (= (Forall!483 lambda!49818) (choose!7896 lambda!49818))))

(declare-fun bs!291104 () Bool)

(assert (= bs!291104 d!355811))

(declare-fun m!1417216 () Bool)

(assert (=> bs!291104 m!1417216))

(assert (=> d!355639 d!355811))

(assert (=> d!355639 d!355665))

(declare-fun d!355813 () Bool)

(declare-fun choose!7897 (Int) Bool)

(assert (=> d!355813 (= (Forall2!385 lambda!49821) (choose!7897 lambda!49821))))

(declare-fun bs!291105 () Bool)

(assert (= bs!291105 d!355813))

(declare-fun m!1417218 () Bool)

(assert (=> bs!291105 m!1417218))

(assert (=> d!355639 d!355813))

(declare-fun bs!291106 () Bool)

(declare-fun d!355815 () Bool)

(assert (= bs!291106 (and d!355815 d!355639)))

(declare-fun lambda!49855 () Int)

(assert (=> bs!291106 (not (= lambda!49855 lambda!49821))))

(assert (=> d!355815 true))

(declare-fun order!7683 () Int)

(declare-fun dynLambda!5509 (Int Int) Int)

(assert (=> d!355815 (< (dynLambda!5503 order!7675 lambda!49820) (dynLambda!5509 order!7683 lambda!49855))))

(assert (=> d!355815 (= (equivClasses!774 lambda!49819 lambda!49820) (Forall2!385 lambda!49855))))

(declare-fun bs!291107 () Bool)

(assert (= bs!291107 d!355815))

(declare-fun m!1417220 () Bool)

(assert (=> bs!291107 m!1417220))

(assert (=> d!355639 d!355815))

(assert (=> d!355639 d!355739))

(declare-fun d!355817 () Bool)

(assert (=> d!355817 (= (inv!17006 x!245015) (isBalanced!1209 (c!208975 x!245015)))))

(declare-fun bs!291108 () Bool)

(assert (= bs!291108 d!355817))

(declare-fun m!1417222 () Bool)

(assert (=> bs!291108 m!1417222))

(assert (=> d!355639 d!355817))

(assert (=> bs!290802 d!355677))

(assert (=> bs!290802 d!355701))

(declare-fun d!355819 () Bool)

(declare-fun lt!421185 () tuple3!1128)

(assert (=> d!355819 (= (_1!7115 lt!421185) (rulesProduceIndividualToken!851 Lexer!1860 lt!421095 (head!2172 lt!421096)))))

(declare-fun e!801431 () Bool)

(declare-datatypes ((tuple2!12520 0))(
  ( (tuple2!12521 (_1!7116 BalanceConc!8234) (_2!7116 BalanceConc!8232)) )
))
(declare-datatypes ((tuple3!1130 0))(
  ( (tuple3!1131 (_1!7117 tuple2!12520) (_2!7117 CacheUp!732) (_3!856 CacheDown!736)) )
))
(declare-fun lt!421186 () tuple3!1130)

(assert (=> d!355819 (= lt!421185 (tuple3!1129 e!801431 (_2!7117 lt!421186) (_3!856 lt!421186)))))

(declare-fun res!557254 () Bool)

(assert (=> d!355819 (=> (not res!557254) (not e!801431))))

(declare-fun e!801432 () Bool)

(assert (=> d!355819 (= res!557254 e!801432)))

(declare-fun res!557253 () Bool)

(assert (=> d!355819 (=> (not res!557253) (not e!801432))))

(declare-fun size!9992 (BalanceConc!8234) Int)

(assert (=> d!355819 (= res!557253 (= (size!9992 (_1!7116 (_1!7117 lt!421186))) 1))))

(declare-fun lexV1Mem!3 (LexerInterface!1862 List!12680 BalanceConc!8232 CacheUp!732 CacheDown!736) tuple3!1130)

(declare-fun print!700 (LexerInterface!1862 BalanceConc!8234) BalanceConc!8232)

(assert (=> d!355819 (= lt!421186 (lexV1Mem!3 Lexer!1860 lt!421095 (print!700 Lexer!1860 (singletonSeq!758 (head!2172 lt!421096))) cacheUp!343 cacheDown!356))))

(assert (=> d!355819 (not (isEmpty!7505 lt!421095))))

(assert (=> d!355819 (= (rulesProduceIndividualTokenMem!15 Lexer!1860 lt!421095 (head!2172 lt!421096) cacheUp!343 cacheDown!356) lt!421185)))

(declare-fun b!1258833 () Bool)

(declare-fun apply!2706 (BalanceConc!8234 Int) Token!3996)

(assert (=> b!1258833 (= e!801432 (= (apply!2706 (_1!7116 (_1!7117 lt!421186)) 0) (head!2172 lt!421096)))))

(declare-fun b!1258834 () Bool)

(declare-fun isEmpty!7510 (BalanceConc!8232) Bool)

(assert (=> b!1258834 (= e!801431 (isEmpty!7510 (_2!7116 (_1!7117 lt!421186))))))

(assert (= (and d!355819 res!557253) b!1258833))

(assert (= (and d!355819 res!557254) b!1258834))

(assert (=> d!355819 m!1416735))

(declare-fun m!1417224 () Bool)

(assert (=> d!355819 m!1417224))

(declare-fun m!1417226 () Bool)

(assert (=> d!355819 m!1417226))

(assert (=> d!355819 m!1416765))

(declare-fun m!1417228 () Bool)

(assert (=> d!355819 m!1417228))

(assert (=> d!355819 m!1416765))

(declare-fun m!1417230 () Bool)

(assert (=> d!355819 m!1417230))

(declare-fun m!1417232 () Bool)

(assert (=> d!355819 m!1417232))

(assert (=> d!355819 m!1417228))

(assert (=> d!355819 m!1417224))

(declare-fun m!1417234 () Bool)

(assert (=> b!1258833 m!1417234))

(declare-fun m!1417236 () Bool)

(assert (=> b!1258834 m!1417236))

(assert (=> b!1258485 d!355819))

(declare-fun d!355821 () Bool)

(declare-fun lt!421189 () Token!3996)

(declare-fun head!2173 (List!12681) Token!3996)

(assert (=> d!355821 (= lt!421189 (head!2173 (list!4705 lt!421096)))))

(declare-fun head!2174 (Conc!4147) Token!3996)

(assert (=> d!355821 (= lt!421189 (head!2174 (c!208976 lt!421096)))))

(assert (=> d!355821 (not (isEmpty!7506 lt!421096))))

(assert (=> d!355821 (= (head!2172 lt!421096) lt!421189)))

(declare-fun bs!291109 () Bool)

(assert (= bs!291109 d!355821))

(assert (=> bs!291109 m!1416751))

(assert (=> bs!291109 m!1416751))

(declare-fun m!1417238 () Bool)

(assert (=> bs!291109 m!1417238))

(declare-fun m!1417240 () Bool)

(assert (=> bs!291109 m!1417240))

(assert (=> bs!291109 m!1416763))

(assert (=> b!1258485 d!355821))

(declare-fun bs!291110 () Bool)

(declare-fun d!355823 () Bool)

(assert (= bs!291110 (and d!355823 d!355635)))

(declare-fun lambda!49856 () Int)

(assert (=> bs!291110 (= lambda!49856 lambda!49797)))

(declare-fun bs!291111 () Bool)

(assert (= bs!291111 (and d!355823 d!355655)))

(assert (=> bs!291111 (= lambda!49856 lambda!49824)))

(declare-fun bs!291112 () Bool)

(assert (= bs!291112 (and d!355823 d!355737)))

(assert (=> bs!291112 (= lambda!49856 lambda!49828)))

(declare-fun b!1258839 () Bool)

(declare-fun e!801436 () Bool)

(assert (=> b!1258839 (= e!801436 true)))

(declare-fun b!1258838 () Bool)

(declare-fun e!801435 () Bool)

(assert (=> b!1258838 (= e!801435 e!801436)))

(declare-fun b!1258837 () Bool)

(declare-fun e!801434 () Bool)

(assert (=> b!1258837 (= e!801434 e!801435)))

(assert (=> d!355823 e!801434))

(assert (= b!1258838 b!1258839))

(assert (= b!1258837 b!1258838))

(assert (= (and d!355823 ((_ is Cons!12614) lt!421095)) b!1258837))

(assert (=> b!1258839 (< (dynLambda!5503 order!7675 (toValue!3328 (transformation!2167 (h!18015 lt!421095)))) (dynLambda!5504 order!7677 lambda!49856))))

(assert (=> b!1258839 (< (dynLambda!5505 order!7679 (toChars!3187 (transformation!2167 (h!18015 lt!421095)))) (dynLambda!5504 order!7677 lambda!49856))))

(assert (=> d!355823 true))

(declare-fun lt!421190 () tuple3!1128)

(assert (=> d!355823 (= (_1!7115 lt!421190) (forall!3196 (tail!1804 lt!421096) lambda!49856))))

(declare-fun e!801433 () tuple3!1128)

(assert (=> d!355823 (= lt!421190 e!801433)))

(declare-fun c!209051 () Bool)

(assert (=> d!355823 (= c!209051 (isEmpty!7506 (tail!1804 lt!421096)))))

(assert (=> d!355823 (not (isEmpty!7505 lt!421095))))

(assert (=> d!355823 (= (rulesProduceEachTokenIndividuallyMem!30 Lexer!1860 lt!421095 (tail!1804 lt!421096) (_2!7115 lt!421105) (_3!855 lt!421105)) lt!421190)))

(declare-fun b!1258835 () Bool)

(assert (=> b!1258835 (= e!801433 (tuple3!1129 true (_2!7115 lt!421105) (_3!855 lt!421105)))))

(declare-fun b!1258836 () Bool)

(declare-fun lt!421192 () tuple3!1128)

(declare-fun lt!421191 () tuple3!1128)

(assert (=> b!1258836 (= e!801433 (tuple3!1129 (and (_1!7115 lt!421192) (_1!7115 lt!421191)) (_2!7115 lt!421191) (_3!855 lt!421191)))))

(assert (=> b!1258836 (= lt!421192 (rulesProduceIndividualTokenMem!15 Lexer!1860 lt!421095 (head!2172 (tail!1804 lt!421096)) (_2!7115 lt!421105) (_3!855 lt!421105)))))

(assert (=> b!1258836 (= lt!421191 (rulesProduceEachTokenIndividuallyMem!30 Lexer!1860 lt!421095 (tail!1804 (tail!1804 lt!421096)) (_2!7115 lt!421192) (_3!855 lt!421192)))))

(assert (= (and d!355823 c!209051) b!1258835))

(assert (= (and d!355823 (not c!209051)) b!1258836))

(assert (=> d!355823 m!1416769))

(declare-fun m!1417242 () Bool)

(assert (=> d!355823 m!1417242))

(assert (=> d!355823 m!1416769))

(declare-fun m!1417244 () Bool)

(assert (=> d!355823 m!1417244))

(assert (=> d!355823 m!1416735))

(assert (=> b!1258836 m!1416769))

(declare-fun m!1417246 () Bool)

(assert (=> b!1258836 m!1417246))

(assert (=> b!1258836 m!1417246))

(declare-fun m!1417248 () Bool)

(assert (=> b!1258836 m!1417248))

(assert (=> b!1258836 m!1416769))

(declare-fun m!1417250 () Bool)

(assert (=> b!1258836 m!1417250))

(assert (=> b!1258836 m!1417250))

(declare-fun m!1417252 () Bool)

(assert (=> b!1258836 m!1417252))

(assert (=> b!1258485 d!355823))

(declare-fun d!355825 () Bool)

(declare-fun e!801439 () Bool)

(assert (=> d!355825 e!801439))

(declare-fun res!557257 () Bool)

(assert (=> d!355825 (=> (not res!557257) (not e!801439))))

(declare-fun tail!1805 (Conc!4147) Conc!4147)

(assert (=> d!355825 (= res!557257 (isBalanced!1210 (tail!1805 (c!208976 lt!421096))))))

(declare-fun lt!421195 () BalanceConc!8234)

(assert (=> d!355825 (= lt!421195 (BalanceConc!8235 (tail!1805 (c!208976 lt!421096))))))

(assert (=> d!355825 (not (isEmpty!7506 lt!421096))))

(assert (=> d!355825 (= (tail!1804 lt!421096) lt!421195)))

(declare-fun b!1258842 () Bool)

(declare-fun tail!1806 (List!12681) List!12681)

(assert (=> b!1258842 (= e!801439 (= (list!4705 lt!421195) (tail!1806 (list!4705 lt!421096))))))

(assert (= (and d!355825 res!557257) b!1258842))

(declare-fun m!1417254 () Bool)

(assert (=> d!355825 m!1417254))

(assert (=> d!355825 m!1417254))

(declare-fun m!1417256 () Bool)

(assert (=> d!355825 m!1417256))

(assert (=> d!355825 m!1416763))

(declare-fun m!1417258 () Bool)

(assert (=> b!1258842 m!1417258))

(assert (=> b!1258842 m!1416751))

(assert (=> b!1258842 m!1416751))

(declare-fun m!1417260 () Bool)

(assert (=> b!1258842 m!1417260))

(assert (=> b!1258485 d!355825))

(declare-fun d!355827 () Bool)

(declare-fun res!557262 () Bool)

(declare-fun e!801442 () Bool)

(assert (=> d!355827 (=> (not res!557262) (not e!801442))))

(declare-fun valid!1056 (MutableMap!1263) Bool)

(assert (=> d!355827 (= res!557262 (valid!1056 (cache!1644 cacheUp!343)))))

(assert (=> d!355827 (= (validCacheMapUp!118 (cache!1644 cacheUp!343)) e!801442)))

(declare-fun b!1258847 () Bool)

(declare-fun res!557263 () Bool)

(assert (=> b!1258847 (=> (not res!557263) (not e!801442))))

(declare-fun invariantList!200 (List!12677) Bool)

(declare-datatypes ((ListMap!449 0))(
  ( (ListMap!450 (toList!708 List!12677)) )
))
(declare-fun map!2762 (MutableMap!1263) ListMap!449)

(assert (=> b!1258847 (= res!557263 (invariantList!200 (toList!708 (map!2762 (cache!1644 cacheUp!343)))))))

(declare-fun b!1258848 () Bool)

(declare-fun lambda!49859 () Int)

(declare-fun forall!3202 (List!12677 Int) Bool)

(assert (=> b!1258848 (= e!801442 (forall!3202 (toList!708 (map!2762 (cache!1644 cacheUp!343))) lambda!49859))))

(assert (= (and d!355827 res!557262) b!1258847))

(assert (= (and b!1258847 res!557263) b!1258848))

(declare-fun m!1417263 () Bool)

(assert (=> d!355827 m!1417263))

(declare-fun m!1417265 () Bool)

(assert (=> b!1258847 m!1417265))

(declare-fun m!1417267 () Bool)

(assert (=> b!1258847 m!1417267))

(assert (=> b!1258848 m!1417265))

(declare-fun m!1417269 () Bool)

(assert (=> b!1258848 m!1417269))

(assert (=> b!1258558 d!355827))

(assert (=> b!1258535 d!355669))

(assert (=> b!1258535 d!355739))

(assert (=> b!1258603 d!355675))

(assert (=> b!1258603 d!355683))

(declare-fun bs!291113 () Bool)

(declare-fun d!355829 () Bool)

(assert (= bs!291113 (and d!355829 d!355761)))

(declare-fun lambda!49860 () Int)

(assert (=> bs!291113 (= lambda!49860 lambda!49835)))

(declare-fun bs!291114 () Bool)

(assert (= bs!291114 (and d!355829 d!355769)))

(assert (=> bs!291114 (= lambda!49860 lambda!49838)))

(declare-fun bs!291115 () Bool)

(assert (= bs!291115 (and d!355829 d!355765)))

(assert (=> bs!291115 (= lambda!49860 lambda!49836)))

(declare-fun bs!291116 () Bool)

(assert (= bs!291116 (and d!355829 d!355775)))

(assert (=> bs!291116 (= lambda!49860 lambda!49839)))

(declare-fun bs!291117 () Bool)

(assert (= bs!291117 (and d!355829 d!355703)))

(assert (=> bs!291117 (= lambda!49860 lambda!49827)))

(declare-fun bs!291118 () Bool)

(assert (= bs!291118 (and d!355829 d!355787)))

(assert (=> bs!291118 (= lambda!49860 lambda!49846)))

(declare-fun bs!291119 () Bool)

(assert (= bs!291119 (and d!355829 d!355797)))

(assert (=> bs!291119 (= lambda!49860 lambda!49849)))

(declare-fun bs!291120 () Bool)

(assert (= bs!291120 (and d!355829 d!355747)))

(assert (=> bs!291120 (= lambda!49860 lambda!49831)))

(declare-fun bs!291121 () Bool)

(assert (= bs!291121 (and d!355829 d!355789)))

(assert (=> bs!291121 (= lambda!49860 lambda!49847)))

(declare-fun bs!291122 () Bool)

(assert (= bs!291122 (and d!355829 d!355779)))

(assert (=> bs!291122 (= lambda!49860 lambda!49843)))

(declare-fun bs!291123 () Bool)

(assert (= bs!291123 (and d!355829 d!355781)))

(assert (=> bs!291123 (= lambda!49860 lambda!49844)))

(declare-fun bs!291124 () Bool)

(assert (= bs!291124 (and d!355829 d!355767)))

(assert (=> bs!291124 (= lambda!49860 lambda!49837)))

(declare-fun bs!291125 () Bool)

(assert (= bs!291125 (and d!355829 d!355745)))

(assert (=> bs!291125 (= lambda!49860 lambda!49830)))

(declare-fun bs!291126 () Bool)

(assert (= bs!291126 (and d!355829 d!355743)))

(assert (=> bs!291126 (= lambda!49860 lambda!49829)))

(declare-fun bs!291127 () Bool)

(assert (= bs!291127 (and d!355829 d!355785)))

(assert (=> bs!291127 (= lambda!49860 lambda!49845)))

(declare-fun bs!291128 () Bool)

(assert (= bs!291128 (and d!355829 d!355795)))

(assert (=> bs!291128 (= lambda!49860 lambda!49848)))

(assert (=> d!355829 (= (inv!17007 setElem!7991) (forall!3199 (exprs!1041 setElem!7991) lambda!49860))))

(declare-fun bs!291129 () Bool)

(assert (= bs!291129 d!355829))

(declare-fun m!1417271 () Bool)

(assert (=> bs!291129 m!1417271))

(assert (=> setNonEmpty!7991 d!355829))

(assert (=> bs!290841 d!355667))

(assert (=> bs!290841 d!355701))

(declare-fun bs!291130 () Bool)

(declare-fun d!355831 () Bool)

(assert (= bs!291130 (and d!355831 d!355761)))

(declare-fun lambda!49861 () Int)

(assert (=> bs!291130 (= lambda!49861 lambda!49835)))

(declare-fun bs!291131 () Bool)

(assert (= bs!291131 (and d!355831 d!355769)))

(assert (=> bs!291131 (= lambda!49861 lambda!49838)))

(declare-fun bs!291132 () Bool)

(assert (= bs!291132 (and d!355831 d!355765)))

(assert (=> bs!291132 (= lambda!49861 lambda!49836)))

(declare-fun bs!291133 () Bool)

(assert (= bs!291133 (and d!355831 d!355775)))

(assert (=> bs!291133 (= lambda!49861 lambda!49839)))

(declare-fun bs!291134 () Bool)

(assert (= bs!291134 (and d!355831 d!355703)))

(assert (=> bs!291134 (= lambda!49861 lambda!49827)))

(declare-fun bs!291135 () Bool)

(assert (= bs!291135 (and d!355831 d!355787)))

(assert (=> bs!291135 (= lambda!49861 lambda!49846)))

(declare-fun bs!291136 () Bool)

(assert (= bs!291136 (and d!355831 d!355797)))

(assert (=> bs!291136 (= lambda!49861 lambda!49849)))

(declare-fun bs!291137 () Bool)

(assert (= bs!291137 (and d!355831 d!355747)))

(assert (=> bs!291137 (= lambda!49861 lambda!49831)))

(declare-fun bs!291138 () Bool)

(assert (= bs!291138 (and d!355831 d!355789)))

(assert (=> bs!291138 (= lambda!49861 lambda!49847)))

(declare-fun bs!291139 () Bool)

(assert (= bs!291139 (and d!355831 d!355779)))

(assert (=> bs!291139 (= lambda!49861 lambda!49843)))

(declare-fun bs!291140 () Bool)

(assert (= bs!291140 (and d!355831 d!355781)))

(assert (=> bs!291140 (= lambda!49861 lambda!49844)))

(declare-fun bs!291141 () Bool)

(assert (= bs!291141 (and d!355831 d!355745)))

(assert (=> bs!291141 (= lambda!49861 lambda!49830)))

(declare-fun bs!291142 () Bool)

(assert (= bs!291142 (and d!355831 d!355743)))

(assert (=> bs!291142 (= lambda!49861 lambda!49829)))

(declare-fun bs!291143 () Bool)

(assert (= bs!291143 (and d!355831 d!355785)))

(assert (=> bs!291143 (= lambda!49861 lambda!49845)))

(declare-fun bs!291144 () Bool)

(assert (= bs!291144 (and d!355831 d!355795)))

(assert (=> bs!291144 (= lambda!49861 lambda!49848)))

(declare-fun bs!291145 () Bool)

(assert (= bs!291145 (and d!355831 d!355767)))

(assert (=> bs!291145 (= lambda!49861 lambda!49837)))

(declare-fun bs!291146 () Bool)

(assert (= bs!291146 (and d!355831 d!355829)))

(assert (=> bs!291146 (= lambda!49861 lambda!49860)))

(assert (=> d!355831 (= (inv!17007 setElem!7970) (forall!3199 (exprs!1041 setElem!7970) lambda!49861))))

(declare-fun bs!291147 () Bool)

(assert (= bs!291147 d!355831))

(declare-fun m!1417273 () Bool)

(assert (=> bs!291147 m!1417273))

(assert (=> setNonEmpty!7970 d!355831))

(declare-fun bs!291148 () Bool)

(declare-fun d!355833 () Bool)

(assert (= bs!291148 (and d!355833 d!355761)))

(declare-fun lambda!49862 () Int)

(assert (=> bs!291148 (= lambda!49862 lambda!49835)))

(declare-fun bs!291149 () Bool)

(assert (= bs!291149 (and d!355833 d!355769)))

(assert (=> bs!291149 (= lambda!49862 lambda!49838)))

(declare-fun bs!291150 () Bool)

(assert (= bs!291150 (and d!355833 d!355831)))

(assert (=> bs!291150 (= lambda!49862 lambda!49861)))

(declare-fun bs!291151 () Bool)

(assert (= bs!291151 (and d!355833 d!355765)))

(assert (=> bs!291151 (= lambda!49862 lambda!49836)))

(declare-fun bs!291152 () Bool)

(assert (= bs!291152 (and d!355833 d!355775)))

(assert (=> bs!291152 (= lambda!49862 lambda!49839)))

(declare-fun bs!291153 () Bool)

(assert (= bs!291153 (and d!355833 d!355703)))

(assert (=> bs!291153 (= lambda!49862 lambda!49827)))

(declare-fun bs!291154 () Bool)

(assert (= bs!291154 (and d!355833 d!355787)))

(assert (=> bs!291154 (= lambda!49862 lambda!49846)))

(declare-fun bs!291155 () Bool)

(assert (= bs!291155 (and d!355833 d!355797)))

(assert (=> bs!291155 (= lambda!49862 lambda!49849)))

(declare-fun bs!291156 () Bool)

(assert (= bs!291156 (and d!355833 d!355747)))

(assert (=> bs!291156 (= lambda!49862 lambda!49831)))

(declare-fun bs!291157 () Bool)

(assert (= bs!291157 (and d!355833 d!355789)))

(assert (=> bs!291157 (= lambda!49862 lambda!49847)))

(declare-fun bs!291158 () Bool)

(assert (= bs!291158 (and d!355833 d!355779)))

(assert (=> bs!291158 (= lambda!49862 lambda!49843)))

(declare-fun bs!291159 () Bool)

(assert (= bs!291159 (and d!355833 d!355781)))

(assert (=> bs!291159 (= lambda!49862 lambda!49844)))

(declare-fun bs!291160 () Bool)

(assert (= bs!291160 (and d!355833 d!355745)))

(assert (=> bs!291160 (= lambda!49862 lambda!49830)))

(declare-fun bs!291161 () Bool)

(assert (= bs!291161 (and d!355833 d!355743)))

(assert (=> bs!291161 (= lambda!49862 lambda!49829)))

(declare-fun bs!291162 () Bool)

(assert (= bs!291162 (and d!355833 d!355785)))

(assert (=> bs!291162 (= lambda!49862 lambda!49845)))

(declare-fun bs!291163 () Bool)

(assert (= bs!291163 (and d!355833 d!355795)))

(assert (=> bs!291163 (= lambda!49862 lambda!49848)))

(declare-fun bs!291164 () Bool)

(assert (= bs!291164 (and d!355833 d!355767)))

(assert (=> bs!291164 (= lambda!49862 lambda!49837)))

(declare-fun bs!291165 () Bool)

(assert (= bs!291165 (and d!355833 d!355829)))

(assert (=> bs!291165 (= lambda!49862 lambda!49860)))

(assert (=> d!355833 (= (inv!17007 setElem!7987) (forall!3199 (exprs!1041 setElem!7987) lambda!49862))))

(declare-fun bs!291166 () Bool)

(assert (= bs!291166 d!355833))

(declare-fun m!1417275 () Bool)

(assert (=> bs!291166 m!1417275))

(assert (=> setNonEmpty!7986 d!355833))

(assert (=> bs!290811 d!355665))

(assert (=> bs!290811 d!355701))

(assert (=> b!1258541 d!355675))

(assert (=> b!1258541 d!355739))

(declare-fun bs!291167 () Bool)

(declare-fun d!355835 () Bool)

(assert (= bs!291167 (and d!355835 d!355761)))

(declare-fun lambda!49863 () Int)

(assert (=> bs!291167 (= lambda!49863 lambda!49835)))

(declare-fun bs!291168 () Bool)

(assert (= bs!291168 (and d!355835 d!355769)))

(assert (=> bs!291168 (= lambda!49863 lambda!49838)))

(declare-fun bs!291169 () Bool)

(assert (= bs!291169 (and d!355835 d!355831)))

(assert (=> bs!291169 (= lambda!49863 lambda!49861)))

(declare-fun bs!291170 () Bool)

(assert (= bs!291170 (and d!355835 d!355765)))

(assert (=> bs!291170 (= lambda!49863 lambda!49836)))

(declare-fun bs!291171 () Bool)

(assert (= bs!291171 (and d!355835 d!355775)))

(assert (=> bs!291171 (= lambda!49863 lambda!49839)))

(declare-fun bs!291172 () Bool)

(assert (= bs!291172 (and d!355835 d!355703)))

(assert (=> bs!291172 (= lambda!49863 lambda!49827)))

(declare-fun bs!291173 () Bool)

(assert (= bs!291173 (and d!355835 d!355787)))

(assert (=> bs!291173 (= lambda!49863 lambda!49846)))

(declare-fun bs!291174 () Bool)

(assert (= bs!291174 (and d!355835 d!355833)))

(assert (=> bs!291174 (= lambda!49863 lambda!49862)))

(declare-fun bs!291175 () Bool)

(assert (= bs!291175 (and d!355835 d!355797)))

(assert (=> bs!291175 (= lambda!49863 lambda!49849)))

(declare-fun bs!291176 () Bool)

(assert (= bs!291176 (and d!355835 d!355747)))

(assert (=> bs!291176 (= lambda!49863 lambda!49831)))

(declare-fun bs!291177 () Bool)

(assert (= bs!291177 (and d!355835 d!355789)))

(assert (=> bs!291177 (= lambda!49863 lambda!49847)))

(declare-fun bs!291178 () Bool)

(assert (= bs!291178 (and d!355835 d!355779)))

(assert (=> bs!291178 (= lambda!49863 lambda!49843)))

(declare-fun bs!291179 () Bool)

(assert (= bs!291179 (and d!355835 d!355781)))

(assert (=> bs!291179 (= lambda!49863 lambda!49844)))

(declare-fun bs!291180 () Bool)

(assert (= bs!291180 (and d!355835 d!355745)))

(assert (=> bs!291180 (= lambda!49863 lambda!49830)))

(declare-fun bs!291181 () Bool)

(assert (= bs!291181 (and d!355835 d!355743)))

(assert (=> bs!291181 (= lambda!49863 lambda!49829)))

(declare-fun bs!291182 () Bool)

(assert (= bs!291182 (and d!355835 d!355785)))

(assert (=> bs!291182 (= lambda!49863 lambda!49845)))

(declare-fun bs!291183 () Bool)

(assert (= bs!291183 (and d!355835 d!355795)))

(assert (=> bs!291183 (= lambda!49863 lambda!49848)))

(declare-fun bs!291184 () Bool)

(assert (= bs!291184 (and d!355835 d!355767)))

(assert (=> bs!291184 (= lambda!49863 lambda!49837)))

(declare-fun bs!291185 () Bool)

(assert (= bs!291185 (and d!355835 d!355829)))

(assert (=> bs!291185 (= lambda!49863 lambda!49860)))

(assert (=> d!355835 (= (inv!17007 setElem!7981) (forall!3199 (exprs!1041 setElem!7981) lambda!49863))))

(declare-fun bs!291186 () Bool)

(assert (= bs!291186 d!355835))

(declare-fun m!1417277 () Bool)

(assert (=> bs!291186 m!1417277))

(assert (=> setNonEmpty!7981 d!355835))

(assert (=> bs!290867 d!355673))

(assert (=> bs!290867 d!355679))

(assert (=> bs!290851 d!355679))

(assert (=> bs!290851 d!355673))

(assert (=> b!1258525 d!355669))

(assert (=> b!1258525 d!355671))

(assert (=> bs!290798 d!355667))

(assert (=> bs!290798 d!355807))

(assert (=> bs!290798 d!355739))

(assert (=> bs!290798 d!355701))

(assert (=> b!1258530 d!355739))

(declare-fun bs!291187 () Bool)

(declare-fun d!355837 () Bool)

(assert (= bs!291187 (and d!355837 d!355761)))

(declare-fun lambda!49864 () Int)

(assert (=> bs!291187 (= lambda!49864 lambda!49835)))

(declare-fun bs!291188 () Bool)

(assert (= bs!291188 (and d!355837 d!355769)))

(assert (=> bs!291188 (= lambda!49864 lambda!49838)))

(declare-fun bs!291189 () Bool)

(assert (= bs!291189 (and d!355837 d!355831)))

(assert (=> bs!291189 (= lambda!49864 lambda!49861)))

(declare-fun bs!291190 () Bool)

(assert (= bs!291190 (and d!355837 d!355765)))

(assert (=> bs!291190 (= lambda!49864 lambda!49836)))

(declare-fun bs!291191 () Bool)

(assert (= bs!291191 (and d!355837 d!355775)))

(assert (=> bs!291191 (= lambda!49864 lambda!49839)))

(declare-fun bs!291192 () Bool)

(assert (= bs!291192 (and d!355837 d!355703)))

(assert (=> bs!291192 (= lambda!49864 lambda!49827)))

(declare-fun bs!291193 () Bool)

(assert (= bs!291193 (and d!355837 d!355787)))

(assert (=> bs!291193 (= lambda!49864 lambda!49846)))

(declare-fun bs!291194 () Bool)

(assert (= bs!291194 (and d!355837 d!355833)))

(assert (=> bs!291194 (= lambda!49864 lambda!49862)))

(declare-fun bs!291195 () Bool)

(assert (= bs!291195 (and d!355837 d!355797)))

(assert (=> bs!291195 (= lambda!49864 lambda!49849)))

(declare-fun bs!291196 () Bool)

(assert (= bs!291196 (and d!355837 d!355789)))

(assert (=> bs!291196 (= lambda!49864 lambda!49847)))

(declare-fun bs!291197 () Bool)

(assert (= bs!291197 (and d!355837 d!355779)))

(assert (=> bs!291197 (= lambda!49864 lambda!49843)))

(declare-fun bs!291198 () Bool)

(assert (= bs!291198 (and d!355837 d!355781)))

(assert (=> bs!291198 (= lambda!49864 lambda!49844)))

(declare-fun bs!291199 () Bool)

(assert (= bs!291199 (and d!355837 d!355745)))

(assert (=> bs!291199 (= lambda!49864 lambda!49830)))

(declare-fun bs!291200 () Bool)

(assert (= bs!291200 (and d!355837 d!355743)))

(assert (=> bs!291200 (= lambda!49864 lambda!49829)))

(declare-fun bs!291201 () Bool)

(assert (= bs!291201 (and d!355837 d!355785)))

(assert (=> bs!291201 (= lambda!49864 lambda!49845)))

(declare-fun bs!291202 () Bool)

(assert (= bs!291202 (and d!355837 d!355795)))

(assert (=> bs!291202 (= lambda!49864 lambda!49848)))

(declare-fun bs!291203 () Bool)

(assert (= bs!291203 (and d!355837 d!355747)))

(assert (=> bs!291203 (= lambda!49864 lambda!49831)))

(declare-fun bs!291204 () Bool)

(assert (= bs!291204 (and d!355837 d!355835)))

(assert (=> bs!291204 (= lambda!49864 lambda!49863)))

(declare-fun bs!291205 () Bool)

(assert (= bs!291205 (and d!355837 d!355767)))

(assert (=> bs!291205 (= lambda!49864 lambda!49837)))

(declare-fun bs!291206 () Bool)

(assert (= bs!291206 (and d!355837 d!355829)))

(assert (=> bs!291206 (= lambda!49864 lambda!49860)))

(assert (=> d!355837 (= (inv!17007 setElem!7989) (forall!3199 (exprs!1041 setElem!7989) lambda!49864))))

(declare-fun bs!291207 () Bool)

(assert (= bs!291207 d!355837))

(declare-fun m!1417279 () Bool)

(assert (=> bs!291207 m!1417279))

(assert (=> setNonEmpty!7989 d!355837))

(assert (=> bs!290800 d!355677))

(declare-fun bs!291208 () Bool)

(declare-fun d!355839 () Bool)

(assert (= bs!291208 (and d!355839 d!355761)))

(declare-fun lambda!49865 () Int)

(assert (=> bs!291208 (= lambda!49865 lambda!49835)))

(declare-fun bs!291209 () Bool)

(assert (= bs!291209 (and d!355839 d!355769)))

(assert (=> bs!291209 (= lambda!49865 lambda!49838)))

(declare-fun bs!291210 () Bool)

(assert (= bs!291210 (and d!355839 d!355765)))

(assert (=> bs!291210 (= lambda!49865 lambda!49836)))

(declare-fun bs!291211 () Bool)

(assert (= bs!291211 (and d!355839 d!355775)))

(assert (=> bs!291211 (= lambda!49865 lambda!49839)))

(declare-fun bs!291212 () Bool)

(assert (= bs!291212 (and d!355839 d!355703)))

(assert (=> bs!291212 (= lambda!49865 lambda!49827)))

(declare-fun bs!291213 () Bool)

(assert (= bs!291213 (and d!355839 d!355787)))

(assert (=> bs!291213 (= lambda!49865 lambda!49846)))

(declare-fun bs!291214 () Bool)

(assert (= bs!291214 (and d!355839 d!355833)))

(assert (=> bs!291214 (= lambda!49865 lambda!49862)))

(declare-fun bs!291215 () Bool)

(assert (= bs!291215 (and d!355839 d!355797)))

(assert (=> bs!291215 (= lambda!49865 lambda!49849)))

(declare-fun bs!291216 () Bool)

(assert (= bs!291216 (and d!355839 d!355789)))

(assert (=> bs!291216 (= lambda!49865 lambda!49847)))

(declare-fun bs!291217 () Bool)

(assert (= bs!291217 (and d!355839 d!355779)))

(assert (=> bs!291217 (= lambda!49865 lambda!49843)))

(declare-fun bs!291218 () Bool)

(assert (= bs!291218 (and d!355839 d!355781)))

(assert (=> bs!291218 (= lambda!49865 lambda!49844)))

(declare-fun bs!291219 () Bool)

(assert (= bs!291219 (and d!355839 d!355745)))

(assert (=> bs!291219 (= lambda!49865 lambda!49830)))

(declare-fun bs!291220 () Bool)

(assert (= bs!291220 (and d!355839 d!355743)))

(assert (=> bs!291220 (= lambda!49865 lambda!49829)))

(declare-fun bs!291221 () Bool)

(assert (= bs!291221 (and d!355839 d!355785)))

(assert (=> bs!291221 (= lambda!49865 lambda!49845)))

(declare-fun bs!291222 () Bool)

(assert (= bs!291222 (and d!355839 d!355795)))

(assert (=> bs!291222 (= lambda!49865 lambda!49848)))

(declare-fun bs!291223 () Bool)

(assert (= bs!291223 (and d!355839 d!355831)))

(assert (=> bs!291223 (= lambda!49865 lambda!49861)))

(declare-fun bs!291224 () Bool)

(assert (= bs!291224 (and d!355839 d!355837)))

(assert (=> bs!291224 (= lambda!49865 lambda!49864)))

(declare-fun bs!291225 () Bool)

(assert (= bs!291225 (and d!355839 d!355747)))

(assert (=> bs!291225 (= lambda!49865 lambda!49831)))

(declare-fun bs!291226 () Bool)

(assert (= bs!291226 (and d!355839 d!355835)))

(assert (=> bs!291226 (= lambda!49865 lambda!49863)))

(declare-fun bs!291227 () Bool)

(assert (= bs!291227 (and d!355839 d!355767)))

(assert (=> bs!291227 (= lambda!49865 lambda!49837)))

(declare-fun bs!291228 () Bool)

(assert (= bs!291228 (and d!355839 d!355829)))

(assert (=> bs!291228 (= lambda!49865 lambda!49860)))

(assert (=> d!355839 (= (inv!17007 setElem!7977) (forall!3199 (exprs!1041 setElem!7977) lambda!49865))))

(declare-fun bs!291229 () Bool)

(assert (= bs!291229 d!355839))

(declare-fun m!1417281 () Bool)

(assert (=> bs!291229 m!1417281))

(assert (=> setNonEmpty!7978 d!355839))

(assert (=> bs!290813 d!355701))

(assert (=> bs!290813 d!355679))

(assert (=> b!1258610 d!355683))

(assert (=> b!1258610 d!355739))

(assert (=> bs!290819 d!355679))

(declare-fun d!355841 () Bool)

(declare-fun lt!421200 () Bool)

(declare-fun e!801448 () Bool)

(assert (=> d!355841 (= lt!421200 e!801448)))

(declare-fun res!557270 () Bool)

(assert (=> d!355841 (=> (not res!557270) (not e!801448))))

(declare-fun lex!763 (LexerInterface!1862 List!12680 BalanceConc!8232) tuple2!12520)

(assert (=> d!355841 (= res!557270 (= (list!4705 (_1!7116 (lex!763 Lexer!1860 lt!421095 (print!700 Lexer!1860 (singletonSeq!758 (h!18016 (list!4705 lt!421096))))))) (list!4705 (singletonSeq!758 (h!18016 (list!4705 lt!421096))))))))

(declare-fun e!801447 () Bool)

(assert (=> d!355841 (= lt!421200 e!801447)))

(declare-fun res!557272 () Bool)

(assert (=> d!355841 (=> (not res!557272) (not e!801447))))

(declare-fun lt!421201 () tuple2!12520)

(assert (=> d!355841 (= res!557272 (= (size!9992 (_1!7116 lt!421201)) 1))))

(assert (=> d!355841 (= lt!421201 (lex!763 Lexer!1860 lt!421095 (print!700 Lexer!1860 (singletonSeq!758 (h!18016 (list!4705 lt!421096))))))))

(assert (=> d!355841 (not (isEmpty!7505 lt!421095))))

(assert (=> d!355841 (= (rulesProduceIndividualToken!851 Lexer!1860 lt!421095 (h!18016 (list!4705 lt!421096))) lt!421200)))

(declare-fun b!1258855 () Bool)

(declare-fun res!557271 () Bool)

(assert (=> b!1258855 (=> (not res!557271) (not e!801447))))

(assert (=> b!1258855 (= res!557271 (= (apply!2706 (_1!7116 lt!421201) 0) (h!18016 (list!4705 lt!421096))))))

(declare-fun b!1258856 () Bool)

(assert (=> b!1258856 (= e!801447 (isEmpty!7510 (_2!7116 lt!421201)))))

(declare-fun b!1258857 () Bool)

(assert (=> b!1258857 (= e!801448 (isEmpty!7510 (_2!7116 (lex!763 Lexer!1860 lt!421095 (print!700 Lexer!1860 (singletonSeq!758 (h!18016 (list!4705 lt!421096))))))))))

(assert (= (and d!355841 res!557272) b!1258855))

(assert (= (and b!1258855 res!557271) b!1258856))

(assert (= (and d!355841 res!557270) b!1258857))

(declare-fun m!1417283 () Bool)

(assert (=> d!355841 m!1417283))

(declare-fun m!1417285 () Bool)

(assert (=> d!355841 m!1417285))

(declare-fun m!1417287 () Bool)

(assert (=> d!355841 m!1417287))

(declare-fun m!1417289 () Bool)

(assert (=> d!355841 m!1417289))

(declare-fun m!1417291 () Bool)

(assert (=> d!355841 m!1417291))

(assert (=> d!355841 m!1416735))

(declare-fun m!1417293 () Bool)

(assert (=> d!355841 m!1417293))

(assert (=> d!355841 m!1417289))

(assert (=> d!355841 m!1417283))

(assert (=> d!355841 m!1417289))

(declare-fun m!1417295 () Bool)

(assert (=> b!1258855 m!1417295))

(declare-fun m!1417297 () Bool)

(assert (=> b!1258856 m!1417297))

(assert (=> b!1258857 m!1417289))

(assert (=> b!1258857 m!1417289))

(assert (=> b!1258857 m!1417283))

(assert (=> b!1258857 m!1417283))

(assert (=> b!1258857 m!1417285))

(declare-fun m!1417299 () Bool)

(assert (=> b!1258857 m!1417299))

(assert (=> b!1258566 d!355841))

(assert (=> b!1258607 d!355671))

(assert (=> b!1258607 d!355683))

(assert (=> b!1258543 d!355675))

(assert (=> b!1258543 d!355669))

(assert (=> b!1258545 d!355681))

(declare-fun bs!291230 () Bool)

(declare-fun d!355843 () Bool)

(assert (= bs!291230 (and d!355843 d!355761)))

(declare-fun lambda!49866 () Int)

(assert (=> bs!291230 (= lambda!49866 lambda!49835)))

(declare-fun bs!291231 () Bool)

(assert (= bs!291231 (and d!355843 d!355769)))

(assert (=> bs!291231 (= lambda!49866 lambda!49838)))

(declare-fun bs!291232 () Bool)

(assert (= bs!291232 (and d!355843 d!355765)))

(assert (=> bs!291232 (= lambda!49866 lambda!49836)))

(declare-fun bs!291233 () Bool)

(assert (= bs!291233 (and d!355843 d!355775)))

(assert (=> bs!291233 (= lambda!49866 lambda!49839)))

(declare-fun bs!291234 () Bool)

(assert (= bs!291234 (and d!355843 d!355703)))

(assert (=> bs!291234 (= lambda!49866 lambda!49827)))

(declare-fun bs!291235 () Bool)

(assert (= bs!291235 (and d!355843 d!355787)))

(assert (=> bs!291235 (= lambda!49866 lambda!49846)))

(declare-fun bs!291236 () Bool)

(assert (= bs!291236 (and d!355843 d!355833)))

(assert (=> bs!291236 (= lambda!49866 lambda!49862)))

(declare-fun bs!291237 () Bool)

(assert (= bs!291237 (and d!355843 d!355797)))

(assert (=> bs!291237 (= lambda!49866 lambda!49849)))

(declare-fun bs!291238 () Bool)

(assert (= bs!291238 (and d!355843 d!355789)))

(assert (=> bs!291238 (= lambda!49866 lambda!49847)))

(declare-fun bs!291239 () Bool)

(assert (= bs!291239 (and d!355843 d!355779)))

(assert (=> bs!291239 (= lambda!49866 lambda!49843)))

(declare-fun bs!291240 () Bool)

(assert (= bs!291240 (and d!355843 d!355745)))

(assert (=> bs!291240 (= lambda!49866 lambda!49830)))

(declare-fun bs!291241 () Bool)

(assert (= bs!291241 (and d!355843 d!355743)))

(assert (=> bs!291241 (= lambda!49866 lambda!49829)))

(declare-fun bs!291242 () Bool)

(assert (= bs!291242 (and d!355843 d!355785)))

(assert (=> bs!291242 (= lambda!49866 lambda!49845)))

(declare-fun bs!291243 () Bool)

(assert (= bs!291243 (and d!355843 d!355795)))

(assert (=> bs!291243 (= lambda!49866 lambda!49848)))

(declare-fun bs!291244 () Bool)

(assert (= bs!291244 (and d!355843 d!355831)))

(assert (=> bs!291244 (= lambda!49866 lambda!49861)))

(declare-fun bs!291245 () Bool)

(assert (= bs!291245 (and d!355843 d!355837)))

(assert (=> bs!291245 (= lambda!49866 lambda!49864)))

(declare-fun bs!291246 () Bool)

(assert (= bs!291246 (and d!355843 d!355747)))

(assert (=> bs!291246 (= lambda!49866 lambda!49831)))

(declare-fun bs!291247 () Bool)

(assert (= bs!291247 (and d!355843 d!355835)))

(assert (=> bs!291247 (= lambda!49866 lambda!49863)))

(declare-fun bs!291248 () Bool)

(assert (= bs!291248 (and d!355843 d!355839)))

(assert (=> bs!291248 (= lambda!49866 lambda!49865)))

(declare-fun bs!291249 () Bool)

(assert (= bs!291249 (and d!355843 d!355781)))

(assert (=> bs!291249 (= lambda!49866 lambda!49844)))

(declare-fun bs!291250 () Bool)

(assert (= bs!291250 (and d!355843 d!355767)))

(assert (=> bs!291250 (= lambda!49866 lambda!49837)))

(declare-fun bs!291251 () Bool)

(assert (= bs!291251 (and d!355843 d!355829)))

(assert (=> bs!291251 (= lambda!49866 lambda!49860)))

(assert (=> d!355843 (= (inv!17007 setElem!7990) (forall!3199 (exprs!1041 setElem!7990) lambda!49866))))

(declare-fun bs!291252 () Bool)

(assert (= bs!291252 d!355843))

(declare-fun m!1417301 () Bool)

(assert (=> bs!291252 m!1417301))

(assert (=> setNonEmpty!7990 d!355843))

(assert (=> b!1258532 d!355739))

(assert (=> b!1258532 d!355669))

(declare-fun bs!291253 () Bool)

(declare-fun d!355845 () Bool)

(assert (= bs!291253 (and d!355845 d!355761)))

(declare-fun lambda!49867 () Int)

(assert (=> bs!291253 (= lambda!49867 lambda!49835)))

(declare-fun bs!291254 () Bool)

(assert (= bs!291254 (and d!355845 d!355769)))

(assert (=> bs!291254 (= lambda!49867 lambda!49838)))

(declare-fun bs!291255 () Bool)

(assert (= bs!291255 (and d!355845 d!355775)))

(assert (=> bs!291255 (= lambda!49867 lambda!49839)))

(declare-fun bs!291256 () Bool)

(assert (= bs!291256 (and d!355845 d!355703)))

(assert (=> bs!291256 (= lambda!49867 lambda!49827)))

(declare-fun bs!291257 () Bool)

(assert (= bs!291257 (and d!355845 d!355787)))

(assert (=> bs!291257 (= lambda!49867 lambda!49846)))

(declare-fun bs!291258 () Bool)

(assert (= bs!291258 (and d!355845 d!355833)))

(assert (=> bs!291258 (= lambda!49867 lambda!49862)))

(declare-fun bs!291259 () Bool)

(assert (= bs!291259 (and d!355845 d!355797)))

(assert (=> bs!291259 (= lambda!49867 lambda!49849)))

(declare-fun bs!291260 () Bool)

(assert (= bs!291260 (and d!355845 d!355789)))

(assert (=> bs!291260 (= lambda!49867 lambda!49847)))

(declare-fun bs!291261 () Bool)

(assert (= bs!291261 (and d!355845 d!355779)))

(assert (=> bs!291261 (= lambda!49867 lambda!49843)))

(declare-fun bs!291262 () Bool)

(assert (= bs!291262 (and d!355845 d!355745)))

(assert (=> bs!291262 (= lambda!49867 lambda!49830)))

(declare-fun bs!291263 () Bool)

(assert (= bs!291263 (and d!355845 d!355743)))

(assert (=> bs!291263 (= lambda!49867 lambda!49829)))

(declare-fun bs!291264 () Bool)

(assert (= bs!291264 (and d!355845 d!355785)))

(assert (=> bs!291264 (= lambda!49867 lambda!49845)))

(declare-fun bs!291265 () Bool)

(assert (= bs!291265 (and d!355845 d!355795)))

(assert (=> bs!291265 (= lambda!49867 lambda!49848)))

(declare-fun bs!291266 () Bool)

(assert (= bs!291266 (and d!355845 d!355831)))

(assert (=> bs!291266 (= lambda!49867 lambda!49861)))

(declare-fun bs!291267 () Bool)

(assert (= bs!291267 (and d!355845 d!355837)))

(assert (=> bs!291267 (= lambda!49867 lambda!49864)))

(declare-fun bs!291268 () Bool)

(assert (= bs!291268 (and d!355845 d!355843)))

(assert (=> bs!291268 (= lambda!49867 lambda!49866)))

(declare-fun bs!291269 () Bool)

(assert (= bs!291269 (and d!355845 d!355765)))

(assert (=> bs!291269 (= lambda!49867 lambda!49836)))

(declare-fun bs!291270 () Bool)

(assert (= bs!291270 (and d!355845 d!355747)))

(assert (=> bs!291270 (= lambda!49867 lambda!49831)))

(declare-fun bs!291271 () Bool)

(assert (= bs!291271 (and d!355845 d!355835)))

(assert (=> bs!291271 (= lambda!49867 lambda!49863)))

(declare-fun bs!291272 () Bool)

(assert (= bs!291272 (and d!355845 d!355839)))

(assert (=> bs!291272 (= lambda!49867 lambda!49865)))

(declare-fun bs!291273 () Bool)

(assert (= bs!291273 (and d!355845 d!355781)))

(assert (=> bs!291273 (= lambda!49867 lambda!49844)))

(declare-fun bs!291274 () Bool)

(assert (= bs!291274 (and d!355845 d!355767)))

(assert (=> bs!291274 (= lambda!49867 lambda!49837)))

(declare-fun bs!291275 () Bool)

(assert (= bs!291275 (and d!355845 d!355829)))

(assert (=> bs!291275 (= lambda!49867 lambda!49860)))

(assert (=> d!355845 (= (inv!17007 setElem!7978) (forall!3199 (exprs!1041 setElem!7978) lambda!49867))))

(declare-fun bs!291276 () Bool)

(assert (= bs!291276 d!355845))

(declare-fun m!1417303 () Bool)

(assert (=> bs!291276 m!1417303))

(assert (=> setNonEmpty!7977 d!355845))

(assert (=> bs!290838 d!355679))

(assert (=> bs!290838 d!355667))

(assert (=> b!1258539 d!355669))

(assert (=> b!1258539 d!355675))

(declare-fun b!1258868 () Bool)

(declare-fun e!801454 () List!12681)

(declare-fun list!4710 (IArray!8299) List!12681)

(assert (=> b!1258868 (= e!801454 (list!4710 (xs!6858 (c!208976 lt!421096))))))

(declare-fun b!1258866 () Bool)

(declare-fun e!801453 () List!12681)

(assert (=> b!1258866 (= e!801453 Nil!12615)))

(declare-fun b!1258869 () Bool)

(declare-fun ++!3217 (List!12681 List!12681) List!12681)

(assert (=> b!1258869 (= e!801454 (++!3217 (list!4707 (left!10921 (c!208976 lt!421096))) (list!4707 (right!11251 (c!208976 lt!421096)))))))

(declare-fun b!1258867 () Bool)

(assert (=> b!1258867 (= e!801453 e!801454)))

(declare-fun c!209058 () Bool)

(assert (=> b!1258867 (= c!209058 ((_ is Leaf!6426) (c!208976 lt!421096)))))

(declare-fun d!355847 () Bool)

(declare-fun c!209057 () Bool)

(assert (=> d!355847 (= c!209057 ((_ is Empty!4147) (c!208976 lt!421096)))))

(assert (=> d!355847 (= (list!4707 (c!208976 lt!421096)) e!801453)))

(assert (= (and d!355847 c!209057) b!1258866))

(assert (= (and d!355847 (not c!209057)) b!1258867))

(assert (= (and b!1258867 c!209058) b!1258868))

(assert (= (and b!1258867 (not c!209058)) b!1258869))

(declare-fun m!1417305 () Bool)

(assert (=> b!1258868 m!1417305))

(declare-fun m!1417307 () Bool)

(assert (=> b!1258869 m!1417307))

(declare-fun m!1417309 () Bool)

(assert (=> b!1258869 m!1417309))

(assert (=> b!1258869 m!1417307))

(assert (=> b!1258869 m!1417309))

(declare-fun m!1417311 () Bool)

(assert (=> b!1258869 m!1417311))

(assert (=> d!355657 d!355847))

(declare-fun setIsEmpty!7992 () Bool)

(declare-fun setRes!7993 () Bool)

(assert (=> setIsEmpty!7992 setRes!7993))

(declare-fun setRes!7992 () Bool)

(declare-fun e!801456 () Bool)

(declare-fun b!1258870 () Bool)

(declare-fun tp!370997 () Bool)

(declare-fun mapValue!6333 () List!12677)

(assert (=> b!1258870 (= e!801456 (and (inv!17007 (_1!7111 (_1!7112 (h!18012 mapValue!6333)))) setRes!7992 tp!370997))))

(declare-fun condSetEmpty!7993 () Bool)

(assert (=> b!1258870 (= condSetEmpty!7993 (= (_2!7112 (h!18012 mapValue!6333)) ((as const (Array Context!1082 Bool)) false)))))

(declare-fun e!801457 () Bool)

(declare-fun b!1258871 () Bool)

(declare-fun tp!370995 () Bool)

(declare-fun mapDefault!6333 () List!12677)

(assert (=> b!1258871 (= e!801457 (and (inv!17007 (_1!7111 (_1!7112 (h!18012 mapDefault!6333)))) setRes!7993 tp!370995))))

(declare-fun condSetEmpty!7992 () Bool)

(assert (=> b!1258871 (= condSetEmpty!7992 (= (_2!7112 (h!18012 mapDefault!6333)) ((as const (Array Context!1082 Bool)) false)))))

(declare-fun condMapEmpty!6333 () Bool)

(assert (=> mapNonEmpty!6332 (= condMapEmpty!6333 (= mapRest!6332 ((as const (Array (_ BitVec 32) List!12677)) mapDefault!6333)))))

(declare-fun mapRes!6333 () Bool)

(assert (=> mapNonEmpty!6332 (= tp!370985 (and e!801457 mapRes!6333))))

(declare-fun setNonEmpty!7992 () Bool)

(declare-fun tp!370996 () Bool)

(declare-fun setElem!7993 () Context!1082)

(assert (=> setNonEmpty!7992 (= setRes!7992 (and tp!370996 (inv!17007 setElem!7993)))))

(declare-fun setRest!7992 () (InoxSet Context!1082))

(assert (=> setNonEmpty!7992 (= (_2!7112 (h!18012 mapValue!6333)) ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!7993 true) setRest!7992))))

(declare-fun mapNonEmpty!6333 () Bool)

(declare-fun tp!370998 () Bool)

(assert (=> mapNonEmpty!6333 (= mapRes!6333 (and tp!370998 e!801456))))

(declare-fun mapRest!6333 () (Array (_ BitVec 32) List!12677))

(declare-fun mapKey!6333 () (_ BitVec 32))

(assert (=> mapNonEmpty!6333 (= mapRest!6332 (store mapRest!6333 mapKey!6333 mapValue!6333))))

(declare-fun mapIsEmpty!6333 () Bool)

(assert (=> mapIsEmpty!6333 mapRes!6333))

(declare-fun setNonEmpty!7993 () Bool)

(declare-fun tp!370994 () Bool)

(declare-fun setElem!7992 () Context!1082)

(assert (=> setNonEmpty!7993 (= setRes!7993 (and tp!370994 (inv!17007 setElem!7992)))))

(declare-fun setRest!7993 () (InoxSet Context!1082))

(assert (=> setNonEmpty!7993 (= (_2!7112 (h!18012 mapDefault!6333)) ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!7992 true) setRest!7993))))

(declare-fun setIsEmpty!7993 () Bool)

(assert (=> setIsEmpty!7993 setRes!7992))

(assert (= (and mapNonEmpty!6332 condMapEmpty!6333) mapIsEmpty!6333))

(assert (= (and mapNonEmpty!6332 (not condMapEmpty!6333)) mapNonEmpty!6333))

(assert (= (and b!1258870 condSetEmpty!7993) setIsEmpty!7993))

(assert (= (and b!1258870 (not condSetEmpty!7993)) setNonEmpty!7992))

(assert (= (and mapNonEmpty!6333 ((_ is Cons!12611) mapValue!6333)) b!1258870))

(assert (= (and b!1258871 condSetEmpty!7992) setIsEmpty!7992))

(assert (= (and b!1258871 (not condSetEmpty!7992)) setNonEmpty!7993))

(assert (= (and mapNonEmpty!6332 ((_ is Cons!12611) mapDefault!6333)) b!1258871))

(declare-fun m!1417313 () Bool)

(assert (=> setNonEmpty!7993 m!1417313))

(declare-fun m!1417315 () Bool)

(assert (=> mapNonEmpty!6333 m!1417315))

(declare-fun m!1417317 () Bool)

(assert (=> b!1258870 m!1417317))

(declare-fun m!1417319 () Bool)

(assert (=> b!1258871 m!1417319))

(declare-fun m!1417321 () Bool)

(assert (=> setNonEmpty!7992 m!1417321))

(declare-fun condSetEmpty!7996 () Bool)

(assert (=> setNonEmpty!7970 (= condSetEmpty!7996 (= setRest!7970 ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setRes!7996 () Bool)

(assert (=> setNonEmpty!7970 (= tp!370944 setRes!7996)))

(declare-fun setIsEmpty!7996 () Bool)

(assert (=> setIsEmpty!7996 setRes!7996))

(declare-fun setNonEmpty!7996 () Bool)

(declare-fun tp!371001 () Bool)

(declare-fun setElem!7996 () Context!1082)

(assert (=> setNonEmpty!7996 (= setRes!7996 (and tp!371001 (inv!17007 setElem!7996)))))

(declare-fun setRest!7996 () (InoxSet Context!1082))

(assert (=> setNonEmpty!7996 (= setRest!7970 ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!7996 true) setRest!7996))))

(assert (= (and setNonEmpty!7970 condSetEmpty!7996) setIsEmpty!7996))

(assert (= (and setNonEmpty!7970 (not condSetEmpty!7996)) setNonEmpty!7996))

(declare-fun m!1417323 () Bool)

(assert (=> setNonEmpty!7996 m!1417323))

(declare-fun b!1258888 () Bool)

(declare-fun e!801480 () Bool)

(declare-fun lt!421206 () MutLongMap!1320)

(assert (=> b!1258888 (= e!801480 ((_ is LongMap!1320) lt!421206))))

(assert (=> b!1258888 (= lt!421206 (v!20862 (underlying!2848 (cache!1645 (_3!855 (rulesProduceEachTokenIndividuallyMem!30 Lexer!1860 lt!421095 lt!421096 cacheUp!343 cacheDown!356))))))))

(declare-fun b!1258889 () Bool)

(declare-fun e!801477 () Bool)

(assert (=> b!1258889 (= e!801477 e!801480)))

(declare-fun b!1258890 () Bool)

(declare-fun e!801476 () Bool)

(declare-fun e!801481 () Bool)

(assert (=> b!1258890 (= e!801476 e!801481)))

(declare-fun b!1258891 () Bool)

(declare-fun e!801479 () Bool)

(assert (=> b!1258891 (= e!801479 e!801476)))

(declare-fun e!801478 () Bool)

(assert (=> d!355635 (= true (and e!801479 e!801478))))

(declare-fun b!1258892 () Bool)

(declare-fun lt!421207 () MutLongMap!1319)

(assert (=> b!1258892 (= e!801481 ((_ is LongMap!1319) lt!421207))))

(assert (=> b!1258892 (= lt!421207 (v!20860 (underlying!2846 (cache!1644 (_2!7115 (rulesProduceEachTokenIndividuallyMem!30 Lexer!1860 lt!421095 lt!421096 cacheUp!343 cacheDown!356))))))))

(declare-fun b!1258893 () Bool)

(assert (=> b!1258893 (= e!801478 e!801477)))

(assert (= b!1258890 b!1258892))

(assert (= (and b!1258891 ((_ is HashMap!1263) (cache!1644 (_2!7115 (rulesProduceEachTokenIndividuallyMem!30 Lexer!1860 lt!421095 lt!421096 cacheUp!343 cacheDown!356))))) b!1258890))

(assert (= d!355635 b!1258891))

(assert (= b!1258889 b!1258888))

(assert (= (and b!1258893 ((_ is HashMap!1264) (cache!1645 (_3!855 (rulesProduceEachTokenIndividuallyMem!30 Lexer!1860 lt!421095 lt!421096 cacheUp!343 cacheDown!356))))) b!1258889))

(assert (= d!355635 b!1258893))

(declare-fun condSetEmpty!7997 () Bool)

(assert (=> setNonEmpty!7986 (= condSetEmpty!7997 (= setRest!7986 ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setRes!7997 () Bool)

(assert (=> setNonEmpty!7986 (= tp!370983 setRes!7997)))

(declare-fun setIsEmpty!7997 () Bool)

(assert (=> setIsEmpty!7997 setRes!7997))

(declare-fun setNonEmpty!7997 () Bool)

(declare-fun tp!371002 () Bool)

(declare-fun setElem!7997 () Context!1082)

(assert (=> setNonEmpty!7997 (= setRes!7997 (and tp!371002 (inv!17007 setElem!7997)))))

(declare-fun setRest!7997 () (InoxSet Context!1082))

(assert (=> setNonEmpty!7997 (= setRest!7986 ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!7997 true) setRest!7997))))

(assert (= (and setNonEmpty!7986 condSetEmpty!7997) setIsEmpty!7997))

(assert (= (and setNonEmpty!7986 (not condSetEmpty!7997)) setNonEmpty!7997))

(declare-fun m!1417325 () Bool)

(assert (=> setNonEmpty!7997 m!1417325))

(declare-fun condSetEmpty!7998 () Bool)

(assert (=> setNonEmpty!7981 (= condSetEmpty!7998 (= setRest!7981 ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setRes!7998 () Bool)

(assert (=> setNonEmpty!7981 (= tp!370969 setRes!7998)))

(declare-fun setIsEmpty!7998 () Bool)

(assert (=> setIsEmpty!7998 setRes!7998))

(declare-fun setNonEmpty!7998 () Bool)

(declare-fun tp!371003 () Bool)

(declare-fun setElem!7998 () Context!1082)

(assert (=> setNonEmpty!7998 (= setRes!7998 (and tp!371003 (inv!17007 setElem!7998)))))

(declare-fun setRest!7998 () (InoxSet Context!1082))

(assert (=> setNonEmpty!7998 (= setRest!7981 ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!7998 true) setRest!7998))))

(assert (= (and setNonEmpty!7981 condSetEmpty!7998) setIsEmpty!7998))

(assert (= (and setNonEmpty!7981 (not condSetEmpty!7998)) setNonEmpty!7998))

(declare-fun m!1417327 () Bool)

(assert (=> setNonEmpty!7998 m!1417327))

(declare-fun condSetEmpty!7999 () Bool)

(assert (=> setNonEmpty!7987 (= condSetEmpty!7999 (= setRest!7987 ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setRes!7999 () Bool)

(assert (=> setNonEmpty!7987 (= tp!370981 setRes!7999)))

(declare-fun setIsEmpty!7999 () Bool)

(assert (=> setIsEmpty!7999 setRes!7999))

(declare-fun setNonEmpty!7999 () Bool)

(declare-fun tp!371004 () Bool)

(declare-fun setElem!7999 () Context!1082)

(assert (=> setNonEmpty!7999 (= setRes!7999 (and tp!371004 (inv!17007 setElem!7999)))))

(declare-fun setRest!7999 () (InoxSet Context!1082))

(assert (=> setNonEmpty!7999 (= setRest!7987 ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!7999 true) setRest!7999))))

(assert (= (and setNonEmpty!7987 condSetEmpty!7999) setIsEmpty!7999))

(assert (= (and setNonEmpty!7987 (not condSetEmpty!7999)) setNonEmpty!7999))

(declare-fun m!1417329 () Bool)

(assert (=> setNonEmpty!7999 m!1417329))

(declare-fun b!1258894 () Bool)

(declare-fun tp!371006 () Bool)

(declare-fun e!801486 () Bool)

(declare-fun setRes!8000 () Bool)

(assert (=> b!1258894 (= e!801486 (and (inv!17007 (_1!7111 (_1!7112 (h!18012 (t!115991 mapValue!6325))))) setRes!8000 tp!371006))))

(declare-fun condSetEmpty!8000 () Bool)

(assert (=> b!1258894 (= condSetEmpty!8000 (= (_2!7112 (h!18012 (t!115991 mapValue!6325))) ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setIsEmpty!8000 () Bool)

(assert (=> setIsEmpty!8000 setRes!8000))

(declare-fun setNonEmpty!8000 () Bool)

(declare-fun tp!371005 () Bool)

(declare-fun setElem!8000 () Context!1082)

(assert (=> setNonEmpty!8000 (= setRes!8000 (and tp!371005 (inv!17007 setElem!8000)))))

(declare-fun setRest!8000 () (InoxSet Context!1082))

(assert (=> setNonEmpty!8000 (= (_2!7112 (h!18012 (t!115991 mapValue!6325))) ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!8000 true) setRest!8000))))

(assert (=> b!1258599 (= tp!370987 e!801486)))

(assert (= (and b!1258894 condSetEmpty!8000) setIsEmpty!8000))

(assert (= (and b!1258894 (not condSetEmpty!8000)) setNonEmpty!8000))

(assert (= (and b!1258599 ((_ is Cons!12611) (t!115991 mapValue!6325))) b!1258894))

(declare-fun m!1417331 () Bool)

(assert (=> b!1258894 m!1417331))

(declare-fun m!1417333 () Bool)

(assert (=> setNonEmpty!8000 m!1417333))

(declare-fun condSetEmpty!8001 () Bool)

(assert (=> setNonEmpty!7988 (= condSetEmpty!8001 (= setRest!7988 ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setRes!8001 () Bool)

(assert (=> setNonEmpty!7988 (= tp!370986 setRes!8001)))

(declare-fun setIsEmpty!8001 () Bool)

(assert (=> setIsEmpty!8001 setRes!8001))

(declare-fun setNonEmpty!8001 () Bool)

(declare-fun tp!371007 () Bool)

(declare-fun setElem!8001 () Context!1082)

(assert (=> setNonEmpty!8001 (= setRes!8001 (and tp!371007 (inv!17007 setElem!8001)))))

(declare-fun setRest!8001 () (InoxSet Context!1082))

(assert (=> setNonEmpty!8001 (= setRest!7988 ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!8001 true) setRest!8001))))

(assert (= (and setNonEmpty!7988 condSetEmpty!8001) setIsEmpty!8001))

(assert (= (and setNonEmpty!7988 (not condSetEmpty!8001)) setNonEmpty!8001))

(declare-fun m!1417335 () Bool)

(assert (=> setNonEmpty!8001 m!1417335))

(declare-fun b!1258897 () Bool)

(declare-fun e!801491 () Bool)

(assert (=> b!1258897 (= e!801491 true)))

(declare-fun b!1258896 () Bool)

(declare-fun e!801490 () Bool)

(assert (=> b!1258896 (= e!801490 e!801491)))

(declare-fun b!1258895 () Bool)

(declare-fun e!801489 () Bool)

(assert (=> b!1258895 (= e!801489 e!801490)))

(assert (=> b!1258494 e!801489))

(assert (= b!1258896 b!1258897))

(assert (= b!1258895 b!1258896))

(assert (= (and b!1258494 ((_ is Cons!12614) (t!115994 lt!421095))) b!1258895))

(assert (=> b!1258897 (< (dynLambda!5503 order!7675 (toValue!3328 (transformation!2167 (h!18015 (t!115994 lt!421095))))) (dynLambda!5504 order!7677 lambda!49797))))

(assert (=> b!1258897 (< (dynLambda!5505 order!7679 (toChars!3187 (transformation!2167 (h!18015 (t!115994 lt!421095))))) (dynLambda!5504 order!7677 lambda!49797))))

(declare-fun condSetEmpty!8002 () Bool)

(assert (=> setNonEmpty!7971 (= condSetEmpty!8002 (= setRest!7971 ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setRes!8002 () Bool)

(assert (=> setNonEmpty!7971 (= tp!370946 setRes!8002)))

(declare-fun setIsEmpty!8002 () Bool)

(assert (=> setIsEmpty!8002 setRes!8002))

(declare-fun setNonEmpty!8002 () Bool)

(declare-fun tp!371008 () Bool)

(declare-fun setElem!8002 () Context!1082)

(assert (=> setNonEmpty!8002 (= setRes!8002 (and tp!371008 (inv!17007 setElem!8002)))))

(declare-fun setRest!8002 () (InoxSet Context!1082))

(assert (=> setNonEmpty!8002 (= setRest!7971 ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!8002 true) setRest!8002))))

(assert (= (and setNonEmpty!7971 condSetEmpty!8002) setIsEmpty!8002))

(assert (= (and setNonEmpty!7971 (not condSetEmpty!8002)) setNonEmpty!8002))

(declare-fun m!1417337 () Bool)

(assert (=> setNonEmpty!8002 m!1417337))

(declare-fun tp!371014 () Bool)

(declare-fun b!1258904 () Bool)

(declare-fun tp!371013 () Bool)

(declare-fun e!801497 () Bool)

(assert (=> b!1258904 (= e!801497 (and (inv!17005 (left!10920 (c!208975 x!245013))) tp!371013 (inv!17005 (right!11250 (c!208975 x!245013))) tp!371014))))

(declare-fun b!1258905 () Bool)

(declare-fun inv!17010 (IArray!8297) Bool)

(assert (=> b!1258905 (= e!801497 (inv!17010 (xs!6857 (c!208975 x!245013))))))

(assert (=> b!1258524 (= tp!370937 (and (inv!17005 (c!208975 x!245013)) e!801497))))

(assert (= (and b!1258524 ((_ is Node!4146) (c!208975 x!245013))) b!1258904))

(assert (= (and b!1258524 ((_ is Leaf!6425) (c!208975 x!245013))) b!1258905))

(declare-fun m!1417339 () Bool)

(assert (=> b!1258904 m!1417339))

(declare-fun m!1417341 () Bool)

(assert (=> b!1258904 m!1417341))

(declare-fun m!1417343 () Bool)

(assert (=> b!1258905 m!1417343))

(assert (=> b!1258524 m!1416779))

(declare-fun b!1258906 () Bool)

(declare-fun e!801499 () Bool)

(declare-fun tp!371016 () Bool)

(declare-fun tp!371015 () Bool)

(assert (=> b!1258906 (= e!801499 (and (inv!17005 (left!10920 (c!208975 x!245014))) tp!371015 (inv!17005 (right!11250 (c!208975 x!245014))) tp!371016))))

(declare-fun b!1258907 () Bool)

(assert (=> b!1258907 (= e!801499 (inv!17010 (xs!6857 (c!208975 x!245014))))))

(assert (=> b!1258526 (= tp!370939 (and (inv!17005 (c!208975 x!245014)) e!801499))))

(assert (= (and b!1258526 ((_ is Node!4146) (c!208975 x!245014))) b!1258906))

(assert (= (and b!1258526 ((_ is Leaf!6425) (c!208975 x!245014))) b!1258907))

(declare-fun m!1417345 () Bool)

(assert (=> b!1258906 m!1417345))

(declare-fun m!1417347 () Bool)

(assert (=> b!1258906 m!1417347))

(declare-fun m!1417349 () Bool)

(assert (=> b!1258907 m!1417349))

(assert (=> b!1258526 m!1416803))

(declare-fun setRes!8003 () Bool)

(declare-fun tp!371018 () Bool)

(declare-fun e!801502 () Bool)

(declare-fun b!1258908 () Bool)

(assert (=> b!1258908 (= e!801502 (and (inv!17007 (_1!7111 (_1!7112 (h!18012 (t!115991 mapValue!6332))))) setRes!8003 tp!371018))))

(declare-fun condSetEmpty!8003 () Bool)

(assert (=> b!1258908 (= condSetEmpty!8003 (= (_2!7112 (h!18012 (t!115991 mapValue!6332))) ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setIsEmpty!8003 () Bool)

(assert (=> setIsEmpty!8003 setRes!8003))

(declare-fun setNonEmpty!8003 () Bool)

(declare-fun tp!371017 () Bool)

(declare-fun setElem!8003 () Context!1082)

(assert (=> setNonEmpty!8003 (= setRes!8003 (and tp!371017 (inv!17007 setElem!8003)))))

(declare-fun setRest!8003 () (InoxSet Context!1082))

(assert (=> setNonEmpty!8003 (= (_2!7112 (h!18012 (t!115991 mapValue!6332))) ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!8003 true) setRest!8003))))

(assert (=> b!1258597 (= tp!370984 e!801502)))

(assert (= (and b!1258908 condSetEmpty!8003) setIsEmpty!8003))

(assert (= (and b!1258908 (not condSetEmpty!8003)) setNonEmpty!8003))

(assert (= (and b!1258597 ((_ is Cons!12611) (t!115991 mapValue!6332))) b!1258908))

(declare-fun m!1417351 () Bool)

(assert (=> b!1258908 m!1417351))

(declare-fun m!1417353 () Bool)

(assert (=> setNonEmpty!8003 m!1417353))

(declare-fun tp!371019 () Bool)

(declare-fun e!801504 () Bool)

(declare-fun tp!371020 () Bool)

(declare-fun b!1258909 () Bool)

(assert (=> b!1258909 (= e!801504 (and (inv!17005 (left!10920 (c!208975 x!245015))) tp!371019 (inv!17005 (right!11250 (c!208975 x!245015))) tp!371020))))

(declare-fun b!1258910 () Bool)

(assert (=> b!1258910 (= e!801504 (inv!17010 (xs!6857 (c!208975 x!245015))))))

(assert (=> b!1258527 (= tp!370938 (and (inv!17005 (c!208975 x!245015)) e!801504))))

(assert (= (and b!1258527 ((_ is Node!4146) (c!208975 x!245015))) b!1258909))

(assert (= (and b!1258527 ((_ is Leaf!6425) (c!208975 x!245015))) b!1258910))

(declare-fun m!1417355 () Bool)

(assert (=> b!1258909 m!1417355))

(declare-fun m!1417357 () Bool)

(assert (=> b!1258909 m!1417357))

(declare-fun m!1417359 () Bool)

(assert (=> b!1258910 m!1417359))

(assert (=> b!1258527 m!1416805))

(declare-fun setRes!8004 () Bool)

(declare-fun e!801508 () Bool)

(declare-fun b!1258911 () Bool)

(declare-fun tp!371022 () Bool)

(assert (=> b!1258911 (= e!801508 (and (inv!17007 (_2!7113 (_1!7114 (h!18013 (t!115992 (zeroValue!1577 (v!20861 (underlying!2847 (v!20862 (underlying!2848 (cache!1645 cacheDown!356))))))))))) setRes!8004 tp!371022))))

(declare-fun condSetEmpty!8004 () Bool)

(assert (=> b!1258911 (= condSetEmpty!8004 (= (_2!7114 (h!18013 (t!115992 (zeroValue!1577 (v!20861 (underlying!2847 (v!20862 (underlying!2848 (cache!1645 cacheDown!356))))))))) ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setIsEmpty!8004 () Bool)

(assert (=> setIsEmpty!8004 setRes!8004))

(declare-fun setNonEmpty!8004 () Bool)

(declare-fun tp!371021 () Bool)

(declare-fun setElem!8004 () Context!1082)

(assert (=> setNonEmpty!8004 (= setRes!8004 (and tp!371021 (inv!17007 setElem!8004)))))

(declare-fun setRest!8004 () (InoxSet Context!1082))

(assert (=> setNonEmpty!8004 (= (_2!7114 (h!18013 (t!115992 (zeroValue!1577 (v!20861 (underlying!2847 (v!20862 (underlying!2848 (cache!1645 cacheDown!356))))))))) ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!8004 true) setRest!8004))))

(assert (=> b!1258600 (= tp!370989 e!801508)))

(assert (= (and b!1258911 condSetEmpty!8004) setIsEmpty!8004))

(assert (= (and b!1258911 (not condSetEmpty!8004)) setNonEmpty!8004))

(assert (= (and b!1258600 ((_ is Cons!12612) (t!115992 (zeroValue!1577 (v!20861 (underlying!2847 (v!20862 (underlying!2848 (cache!1645 cacheDown!356))))))))) b!1258911))

(declare-fun m!1417361 () Bool)

(assert (=> b!1258911 m!1417361))

(declare-fun m!1417363 () Bool)

(assert (=> setNonEmpty!8004 m!1417363))

(declare-fun b!1258912 () Bool)

(declare-fun setRes!8005 () Bool)

(declare-fun tp!371024 () Bool)

(declare-fun e!801511 () Bool)

(assert (=> b!1258912 (= e!801511 (and (inv!17007 (_2!7113 (_1!7114 (h!18013 (t!115992 mapValue!6326))))) setRes!8005 tp!371024))))

(declare-fun condSetEmpty!8005 () Bool)

(assert (=> b!1258912 (= condSetEmpty!8005 (= (_2!7114 (h!18013 (t!115992 mapValue!6326))) ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setIsEmpty!8005 () Bool)

(assert (=> setIsEmpty!8005 setRes!8005))

(declare-fun setNonEmpty!8005 () Bool)

(declare-fun tp!371023 () Bool)

(declare-fun setElem!8005 () Context!1082)

(assert (=> setNonEmpty!8005 (= setRes!8005 (and tp!371023 (inv!17007 setElem!8005)))))

(declare-fun setRest!8005 () (InoxSet Context!1082))

(assert (=> setNonEmpty!8005 (= (_2!7114 (h!18013 (t!115992 mapValue!6326))) ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!8005 true) setRest!8005))))

(assert (=> b!1258590 (= tp!370970 e!801511)))

(assert (= (and b!1258912 condSetEmpty!8005) setIsEmpty!8005))

(assert (= (and b!1258912 (not condSetEmpty!8005)) setNonEmpty!8005))

(assert (= (and b!1258590 ((_ is Cons!12612) (t!115992 mapValue!6326))) b!1258912))

(declare-fun m!1417365 () Bool)

(assert (=> b!1258912 m!1417365))

(declare-fun m!1417367 () Bool)

(assert (=> setNonEmpty!8005 m!1417367))

(declare-fun condSetEmpty!8006 () Bool)

(assert (=> setNonEmpty!7989 (= condSetEmpty!8006 (= setRest!7989 ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setRes!8006 () Bool)

(assert (=> setNonEmpty!7989 (= tp!370988 setRes!8006)))

(declare-fun setIsEmpty!8006 () Bool)

(assert (=> setIsEmpty!8006 setRes!8006))

(declare-fun setNonEmpty!8006 () Bool)

(declare-fun tp!371025 () Bool)

(declare-fun setElem!8006 () Context!1082)

(assert (=> setNonEmpty!8006 (= setRes!8006 (and tp!371025 (inv!17007 setElem!8006)))))

(declare-fun setRest!8006 () (InoxSet Context!1082))

(assert (=> setNonEmpty!8006 (= setRest!7989 ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!8006 true) setRest!8006))))

(assert (= (and setNonEmpty!7989 condSetEmpty!8006) setIsEmpty!8006))

(assert (= (and setNonEmpty!7989 (not condSetEmpty!8006)) setNonEmpty!8006))

(declare-fun m!1417369 () Bool)

(assert (=> setNonEmpty!8006 m!1417369))

(declare-fun setRes!8007 () Bool)

(declare-fun tp!371027 () Bool)

(declare-fun b!1258913 () Bool)

(declare-fun e!801514 () Bool)

(assert (=> b!1258913 (= e!801514 (and (inv!17007 (_1!7111 (_1!7112 (h!18012 (t!115991 mapDefault!6332))))) setRes!8007 tp!371027))))

(declare-fun condSetEmpty!8007 () Bool)

(assert (=> b!1258913 (= condSetEmpty!8007 (= (_2!7112 (h!18012 (t!115991 mapDefault!6332))) ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setIsEmpty!8007 () Bool)

(assert (=> setIsEmpty!8007 setRes!8007))

(declare-fun setNonEmpty!8007 () Bool)

(declare-fun tp!371026 () Bool)

(declare-fun setElem!8007 () Context!1082)

(assert (=> setNonEmpty!8007 (= setRes!8007 (and tp!371026 (inv!17007 setElem!8007)))))

(declare-fun setRest!8007 () (InoxSet Context!1082))

(assert (=> setNonEmpty!8007 (= (_2!7112 (h!18012 (t!115991 mapDefault!6332))) ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!8007 true) setRest!8007))))

(assert (=> b!1258598 (= tp!370982 e!801514)))

(assert (= (and b!1258913 condSetEmpty!8007) setIsEmpty!8007))

(assert (= (and b!1258913 (not condSetEmpty!8007)) setNonEmpty!8007))

(assert (= (and b!1258598 ((_ is Cons!12611) (t!115991 mapDefault!6332))) b!1258913))

(declare-fun m!1417371 () Bool)

(assert (=> b!1258913 m!1417371))

(declare-fun m!1417373 () Bool)

(assert (=> setNonEmpty!8007 m!1417373))

(declare-fun b!1258916 () Bool)

(declare-fun e!801518 () Bool)

(assert (=> b!1258916 (= e!801518 true)))

(declare-fun b!1258915 () Bool)

(declare-fun e!801517 () Bool)

(assert (=> b!1258915 (= e!801517 e!801518)))

(declare-fun b!1258914 () Bool)

(declare-fun e!801516 () Bool)

(assert (=> b!1258914 (= e!801516 e!801517)))

(assert (=> b!1258568 e!801516))

(assert (= b!1258915 b!1258916))

(assert (= b!1258914 b!1258915))

(assert (= (and b!1258568 ((_ is Cons!12614) (t!115994 lt!421095))) b!1258914))

(assert (=> b!1258916 (< (dynLambda!5503 order!7675 (toValue!3328 (transformation!2167 (h!18015 (t!115994 lt!421095))))) (dynLambda!5504 order!7677 lambda!49824))))

(assert (=> b!1258916 (< (dynLambda!5505 order!7679 (toChars!3187 (transformation!2167 (h!18015 (t!115994 lt!421095))))) (dynLambda!5504 order!7677 lambda!49824))))

(declare-fun tp!371029 () Bool)

(declare-fun b!1258917 () Bool)

(declare-fun e!801520 () Bool)

(declare-fun setRes!8008 () Bool)

(assert (=> b!1258917 (= e!801520 (and (inv!17007 (_1!7111 (_1!7112 (h!18012 (t!115991 (zeroValue!1576 (v!20859 (underlying!2845 (v!20860 (underlying!2846 (cache!1644 cacheUp!343))))))))))) setRes!8008 tp!371029))))

(declare-fun condSetEmpty!8008 () Bool)

(assert (=> b!1258917 (= condSetEmpty!8008 (= (_2!7112 (h!18012 (t!115991 (zeroValue!1576 (v!20859 (underlying!2845 (v!20860 (underlying!2846 (cache!1644 cacheUp!343))))))))) ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setIsEmpty!8008 () Bool)

(assert (=> setIsEmpty!8008 setRes!8008))

(declare-fun setNonEmpty!8008 () Bool)

(declare-fun tp!371028 () Bool)

(declare-fun setElem!8008 () Context!1082)

(assert (=> setNonEmpty!8008 (= setRes!8008 (and tp!371028 (inv!17007 setElem!8008)))))

(declare-fun setRest!8008 () (InoxSet Context!1082))

(assert (=> setNonEmpty!8008 (= (_2!7112 (h!18012 (t!115991 (zeroValue!1576 (v!20859 (underlying!2845 (v!20860 (underlying!2846 (cache!1644 cacheUp!343))))))))) ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!8008 true) setRest!8008))))

(assert (=> b!1258575 (= tp!370945 e!801520)))

(assert (= (and b!1258917 condSetEmpty!8008) setIsEmpty!8008))

(assert (= (and b!1258917 (not condSetEmpty!8008)) setNonEmpty!8008))

(assert (= (and b!1258575 ((_ is Cons!12611) (t!115991 (zeroValue!1576 (v!20859 (underlying!2845 (v!20860 (underlying!2846 (cache!1644 cacheUp!343))))))))) b!1258917))

(declare-fun m!1417375 () Bool)

(assert (=> b!1258917 m!1417375))

(declare-fun m!1417377 () Bool)

(assert (=> setNonEmpty!8008 m!1417377))

(declare-fun setNonEmpty!8009 () Bool)

(declare-fun setRes!8010 () Bool)

(declare-fun tp!371030 () Bool)

(declare-fun setElem!8010 () Context!1082)

(assert (=> setNonEmpty!8009 (= setRes!8010 (and tp!371030 (inv!17007 setElem!8010)))))

(declare-fun mapValue!6334 () List!12678)

(declare-fun setRest!8009 () (InoxSet Context!1082))

(assert (=> setNonEmpty!8009 (= (_2!7114 (h!18013 mapValue!6334)) ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!8010 true) setRest!8009))))

(declare-fun setRes!8009 () Bool)

(declare-fun e!801522 () Bool)

(declare-fun b!1258918 () Bool)

(declare-fun tp!371031 () Bool)

(declare-fun mapDefault!6334 () List!12678)

(assert (=> b!1258918 (= e!801522 (and (inv!17007 (_2!7113 (_1!7114 (h!18013 mapDefault!6334)))) setRes!8009 tp!371031))))

(declare-fun condSetEmpty!8010 () Bool)

(assert (=> b!1258918 (= condSetEmpty!8010 (= (_2!7114 (h!18013 mapDefault!6334)) ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setIsEmpty!8009 () Bool)

(assert (=> setIsEmpty!8009 setRes!8009))

(declare-fun condMapEmpty!6334 () Bool)

(assert (=> mapNonEmpty!6329 (= condMapEmpty!6334 (= mapRest!6329 ((as const (Array (_ BitVec 32) List!12678)) mapDefault!6334)))))

(declare-fun mapRes!6334 () Bool)

(assert (=> mapNonEmpty!6329 (= tp!370963 (and e!801522 mapRes!6334))))

(declare-fun setIsEmpty!8010 () Bool)

(assert (=> setIsEmpty!8010 setRes!8010))

(declare-fun setNonEmpty!8010 () Bool)

(declare-fun tp!371032 () Bool)

(declare-fun setElem!8009 () Context!1082)

(assert (=> setNonEmpty!8010 (= setRes!8009 (and tp!371032 (inv!17007 setElem!8009)))))

(declare-fun setRest!8010 () (InoxSet Context!1082))

(assert (=> setNonEmpty!8010 (= (_2!7114 (h!18013 mapDefault!6334)) ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!8009 true) setRest!8010))))

(declare-fun mapNonEmpty!6334 () Bool)

(declare-fun tp!371033 () Bool)

(declare-fun e!801525 () Bool)

(assert (=> mapNonEmpty!6334 (= mapRes!6334 (and tp!371033 e!801525))))

(declare-fun mapRest!6334 () (Array (_ BitVec 32) List!12678))

(declare-fun mapKey!6334 () (_ BitVec 32))

(assert (=> mapNonEmpty!6334 (= mapRest!6329 (store mapRest!6334 mapKey!6334 mapValue!6334))))

(declare-fun b!1258919 () Bool)

(declare-fun tp!371034 () Bool)

(assert (=> b!1258919 (= e!801525 (and (inv!17007 (_2!7113 (_1!7114 (h!18013 mapValue!6334)))) setRes!8010 tp!371034))))

(declare-fun condSetEmpty!8009 () Bool)

(assert (=> b!1258919 (= condSetEmpty!8009 (= (_2!7114 (h!18013 mapValue!6334)) ((as const (Array Context!1082 Bool)) false)))))

(declare-fun mapIsEmpty!6334 () Bool)

(assert (=> mapIsEmpty!6334 mapRes!6334))

(assert (= (and mapNonEmpty!6329 condMapEmpty!6334) mapIsEmpty!6334))

(assert (= (and mapNonEmpty!6329 (not condMapEmpty!6334)) mapNonEmpty!6334))

(assert (= (and b!1258919 condSetEmpty!8009) setIsEmpty!8010))

(assert (= (and b!1258919 (not condSetEmpty!8009)) setNonEmpty!8009))

(assert (= (and mapNonEmpty!6334 ((_ is Cons!12612) mapValue!6334)) b!1258919))

(assert (= (and b!1258918 condSetEmpty!8010) setIsEmpty!8009))

(assert (= (and b!1258918 (not condSetEmpty!8010)) setNonEmpty!8010))

(assert (= (and mapNonEmpty!6329 ((_ is Cons!12612) mapDefault!6334)) b!1258918))

(declare-fun m!1417379 () Bool)

(assert (=> setNonEmpty!8009 m!1417379))

(declare-fun m!1417381 () Bool)

(assert (=> b!1258919 m!1417381))

(declare-fun m!1417383 () Bool)

(assert (=> setNonEmpty!8010 m!1417383))

(declare-fun m!1417385 () Bool)

(assert (=> mapNonEmpty!6334 m!1417385))

(declare-fun m!1417387 () Bool)

(assert (=> b!1258918 m!1417387))

(declare-fun condSetEmpty!8011 () Bool)

(assert (=> setNonEmpty!7972 (= condSetEmpty!8011 (= setRest!7972 ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setRes!8011 () Bool)

(assert (=> setNonEmpty!7972 (= tp!370948 setRes!8011)))

(declare-fun setIsEmpty!8011 () Bool)

(assert (=> setIsEmpty!8011 setRes!8011))

(declare-fun setNonEmpty!8011 () Bool)

(declare-fun tp!371035 () Bool)

(declare-fun setElem!8011 () Context!1082)

(assert (=> setNonEmpty!8011 (= setRes!8011 (and tp!371035 (inv!17007 setElem!8011)))))

(declare-fun setRest!8011 () (InoxSet Context!1082))

(assert (=> setNonEmpty!8011 (= setRest!7972 ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!8011 true) setRest!8011))))

(assert (= (and setNonEmpty!7972 condSetEmpty!8011) setIsEmpty!8011))

(assert (= (and setNonEmpty!7972 (not condSetEmpty!8011)) setNonEmpty!8011))

(declare-fun m!1417389 () Bool)

(assert (=> setNonEmpty!8011 m!1417389))

(declare-fun condSetEmpty!8012 () Bool)

(assert (=> setNonEmpty!7978 (= condSetEmpty!8012 (= setRest!7978 ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setRes!8012 () Bool)

(assert (=> setNonEmpty!7978 (= tp!370962 setRes!8012)))

(declare-fun setIsEmpty!8012 () Bool)

(assert (=> setIsEmpty!8012 setRes!8012))

(declare-fun setNonEmpty!8012 () Bool)

(declare-fun tp!371036 () Bool)

(declare-fun setElem!8012 () Context!1082)

(assert (=> setNonEmpty!8012 (= setRes!8012 (and tp!371036 (inv!17007 setElem!8012)))))

(declare-fun setRest!8012 () (InoxSet Context!1082))

(assert (=> setNonEmpty!8012 (= setRest!7978 ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!8012 true) setRest!8012))))

(assert (= (and setNonEmpty!7978 condSetEmpty!8012) setIsEmpty!8012))

(assert (= (and setNonEmpty!7978 (not condSetEmpty!8012)) setNonEmpty!8012))

(declare-fun m!1417391 () Bool)

(assert (=> setNonEmpty!8012 m!1417391))

(declare-fun e!801532 () Bool)

(declare-fun setRes!8013 () Bool)

(declare-fun tp!371038 () Bool)

(declare-fun b!1258920 () Bool)

(assert (=> b!1258920 (= e!801532 (and (inv!17007 (_2!7113 (_1!7114 (h!18013 (t!115992 mapValue!6329))))) setRes!8013 tp!371038))))

(declare-fun condSetEmpty!8013 () Bool)

(assert (=> b!1258920 (= condSetEmpty!8013 (= (_2!7114 (h!18013 (t!115992 mapValue!6329))) ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setIsEmpty!8013 () Bool)

(assert (=> setIsEmpty!8013 setRes!8013))

(declare-fun setNonEmpty!8013 () Bool)

(declare-fun tp!371037 () Bool)

(declare-fun setElem!8013 () Context!1082)

(assert (=> setNonEmpty!8013 (= setRes!8013 (and tp!371037 (inv!17007 setElem!8013)))))

(declare-fun setRest!8013 () (InoxSet Context!1082))

(assert (=> setNonEmpty!8013 (= (_2!7114 (h!18013 (t!115992 mapValue!6329))) ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!8013 true) setRest!8013))))

(assert (=> b!1258585 (= tp!370964 e!801532)))

(assert (= (and b!1258920 condSetEmpty!8013) setIsEmpty!8013))

(assert (= (and b!1258920 (not condSetEmpty!8013)) setNonEmpty!8013))

(assert (= (and b!1258585 ((_ is Cons!12612) (t!115992 mapValue!6329))) b!1258920))

(declare-fun m!1417393 () Bool)

(assert (=> b!1258920 m!1417393))

(declare-fun m!1417395 () Bool)

(assert (=> setNonEmpty!8013 m!1417395))

(declare-fun e!801535 () Bool)

(declare-fun setRes!8014 () Bool)

(declare-fun tp!371040 () Bool)

(declare-fun b!1258921 () Bool)

(assert (=> b!1258921 (= e!801535 (and (inv!17007 (_2!7113 (_1!7114 (h!18013 (t!115992 (minValue!1577 (v!20861 (underlying!2847 (v!20862 (underlying!2848 (cache!1645 cacheDown!356))))))))))) setRes!8014 tp!371040))))

(declare-fun condSetEmpty!8014 () Bool)

(assert (=> b!1258921 (= condSetEmpty!8014 (= (_2!7114 (h!18013 (t!115992 (minValue!1577 (v!20861 (underlying!2847 (v!20862 (underlying!2848 (cache!1645 cacheDown!356))))))))) ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setIsEmpty!8014 () Bool)

(assert (=> setIsEmpty!8014 setRes!8014))

(declare-fun setNonEmpty!8014 () Bool)

(declare-fun tp!371039 () Bool)

(declare-fun setElem!8014 () Context!1082)

(assert (=> setNonEmpty!8014 (= setRes!8014 (and tp!371039 (inv!17007 setElem!8014)))))

(declare-fun setRest!8014 () (InoxSet Context!1082))

(assert (=> setNonEmpty!8014 (= (_2!7114 (h!18013 (t!115992 (minValue!1577 (v!20861 (underlying!2847 (v!20862 (underlying!2848 (cache!1645 cacheDown!356))))))))) ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!8014 true) setRest!8014))))

(assert (=> b!1258601 (= tp!370991 e!801535)))

(assert (= (and b!1258921 condSetEmpty!8014) setIsEmpty!8014))

(assert (= (and b!1258921 (not condSetEmpty!8014)) setNonEmpty!8014))

(assert (= (and b!1258601 ((_ is Cons!12612) (t!115992 (minValue!1577 (v!20861 (underlying!2847 (v!20862 (underlying!2848 (cache!1645 cacheDown!356))))))))) b!1258921))

(declare-fun m!1417397 () Bool)

(assert (=> b!1258921 m!1417397))

(declare-fun m!1417399 () Bool)

(assert (=> setNonEmpty!8014 m!1417399))

(declare-fun condSetEmpty!8015 () Bool)

(assert (=> setNonEmpty!7990 (= condSetEmpty!8015 (= setRest!7990 ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setRes!8015 () Bool)

(assert (=> setNonEmpty!7990 (= tp!370990 setRes!8015)))

(declare-fun setIsEmpty!8015 () Bool)

(assert (=> setIsEmpty!8015 setRes!8015))

(declare-fun setNonEmpty!8015 () Bool)

(declare-fun tp!371041 () Bool)

(declare-fun setElem!8015 () Context!1082)

(assert (=> setNonEmpty!8015 (= setRes!8015 (and tp!371041 (inv!17007 setElem!8015)))))

(declare-fun setRest!8015 () (InoxSet Context!1082))

(assert (=> setNonEmpty!8015 (= setRest!7990 ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!8015 true) setRest!8015))))

(assert (= (and setNonEmpty!7990 condSetEmpty!8015) setIsEmpty!8015))

(assert (= (and setNonEmpty!7990 (not condSetEmpty!8015)) setNonEmpty!8015))

(declare-fun m!1417401 () Bool)

(assert (=> setNonEmpty!8015 m!1417401))

(declare-fun setRes!8016 () Bool)

(declare-fun b!1258922 () Bool)

(declare-fun tp!371043 () Bool)

(declare-fun e!801538 () Bool)

(assert (=> b!1258922 (= e!801538 (and (inv!17007 (_1!7111 (_1!7112 (h!18012 (t!115991 (minValue!1576 (v!20859 (underlying!2845 (v!20860 (underlying!2846 (cache!1644 cacheUp!343))))))))))) setRes!8016 tp!371043))))

(declare-fun condSetEmpty!8016 () Bool)

(assert (=> b!1258922 (= condSetEmpty!8016 (= (_2!7112 (h!18012 (t!115991 (minValue!1576 (v!20859 (underlying!2845 (v!20860 (underlying!2846 (cache!1644 cacheUp!343))))))))) ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setIsEmpty!8016 () Bool)

(assert (=> setIsEmpty!8016 setRes!8016))

(declare-fun setNonEmpty!8016 () Bool)

(declare-fun tp!371042 () Bool)

(declare-fun setElem!8016 () Context!1082)

(assert (=> setNonEmpty!8016 (= setRes!8016 (and tp!371042 (inv!17007 setElem!8016)))))

(declare-fun setRest!8016 () (InoxSet Context!1082))

(assert (=> setNonEmpty!8016 (= (_2!7112 (h!18012 (t!115991 (minValue!1576 (v!20859 (underlying!2845 (v!20860 (underlying!2846 (cache!1644 cacheUp!343))))))))) ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!8016 true) setRest!8016))))

(assert (=> b!1258576 (= tp!370947 e!801538)))

(assert (= (and b!1258922 condSetEmpty!8016) setIsEmpty!8016))

(assert (= (and b!1258922 (not condSetEmpty!8016)) setNonEmpty!8016))

(assert (= (and b!1258576 ((_ is Cons!12611) (t!115991 (minValue!1576 (v!20859 (underlying!2845 (v!20860 (underlying!2846 (cache!1644 cacheUp!343))))))))) b!1258922))

(declare-fun m!1417403 () Bool)

(assert (=> b!1258922 m!1417403))

(declare-fun m!1417405 () Bool)

(assert (=> setNonEmpty!8016 m!1417405))

(declare-fun e!801542 () Bool)

(declare-fun setRes!8017 () Bool)

(declare-fun b!1258923 () Bool)

(declare-fun tp!371045 () Bool)

(assert (=> b!1258923 (= e!801542 (and (inv!17007 (_2!7113 (_1!7114 (h!18013 (t!115992 mapDefault!6329))))) setRes!8017 tp!371045))))

(declare-fun condSetEmpty!8017 () Bool)

(assert (=> b!1258923 (= condSetEmpty!8017 (= (_2!7114 (h!18013 (t!115992 mapDefault!6329))) ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setIsEmpty!8017 () Bool)

(assert (=> setIsEmpty!8017 setRes!8017))

(declare-fun setNonEmpty!8017 () Bool)

(declare-fun tp!371044 () Bool)

(declare-fun setElem!8017 () Context!1082)

(assert (=> setNonEmpty!8017 (= setRes!8017 (and tp!371044 (inv!17007 setElem!8017)))))

(declare-fun setRest!8017 () (InoxSet Context!1082))

(assert (=> setNonEmpty!8017 (= (_2!7114 (h!18013 (t!115992 mapDefault!6329))) ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!8017 true) setRest!8017))))

(assert (=> b!1258584 (= tp!370961 e!801542)))

(assert (= (and b!1258923 condSetEmpty!8017) setIsEmpty!8017))

(assert (= (and b!1258923 (not condSetEmpty!8017)) setNonEmpty!8017))

(assert (= (and b!1258584 ((_ is Cons!12612) (t!115992 mapDefault!6329))) b!1258923))

(declare-fun m!1417407 () Bool)

(assert (=> b!1258923 m!1417407))

(declare-fun m!1417409 () Bool)

(assert (=> setNonEmpty!8017 m!1417409))

(declare-fun condSetEmpty!8018 () Bool)

(assert (=> setNonEmpty!7977 (= condSetEmpty!8018 (= setRest!7977 ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setRes!8018 () Bool)

(assert (=> setNonEmpty!7977 (= tp!370960 setRes!8018)))

(declare-fun setIsEmpty!8018 () Bool)

(assert (=> setIsEmpty!8018 setRes!8018))

(declare-fun setNonEmpty!8018 () Bool)

(declare-fun tp!371046 () Bool)

(declare-fun setElem!8018 () Context!1082)

(assert (=> setNonEmpty!8018 (= setRes!8018 (and tp!371046 (inv!17007 setElem!8018)))))

(declare-fun setRest!8018 () (InoxSet Context!1082))

(assert (=> setNonEmpty!8018 (= setRest!7977 ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!8018 true) setRest!8018))))

(assert (= (and setNonEmpty!7977 condSetEmpty!8018) setIsEmpty!8018))

(assert (= (and setNonEmpty!7977 (not condSetEmpty!8018)) setNonEmpty!8018))

(declare-fun m!1417411 () Bool)

(assert (=> setNonEmpty!8018 m!1417411))

(declare-fun b!1258924 () Bool)

(declare-fun e!801546 () Bool)

(declare-fun setRes!8019 () Bool)

(declare-fun tp!371048 () Bool)

(assert (=> b!1258924 (= e!801546 (and (inv!17007 (_2!7113 (_1!7114 (h!18013 (t!115992 mapDefault!6325))))) setRes!8019 tp!371048))))

(declare-fun condSetEmpty!8019 () Bool)

(assert (=> b!1258924 (= condSetEmpty!8019 (= (_2!7114 (h!18013 (t!115992 mapDefault!6325))) ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setIsEmpty!8019 () Bool)

(assert (=> setIsEmpty!8019 setRes!8019))

(declare-fun setNonEmpty!8019 () Bool)

(declare-fun tp!371047 () Bool)

(declare-fun setElem!8019 () Context!1082)

(assert (=> setNonEmpty!8019 (= setRes!8019 (and tp!371047 (inv!17007 setElem!8019)))))

(declare-fun setRest!8019 () (InoxSet Context!1082))

(assert (=> setNonEmpty!8019 (= (_2!7114 (h!18013 (t!115992 mapDefault!6325))) ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!8019 true) setRest!8019))))

(assert (=> b!1258602 (= tp!370993 e!801546)))

(assert (= (and b!1258924 condSetEmpty!8019) setIsEmpty!8019))

(assert (= (and b!1258924 (not condSetEmpty!8019)) setNonEmpty!8019))

(assert (= (and b!1258602 ((_ is Cons!12612) (t!115992 mapDefault!6325))) b!1258924))

(declare-fun m!1417413 () Bool)

(assert (=> b!1258924 m!1417413))

(declare-fun m!1417415 () Bool)

(assert (=> setNonEmpty!8019 m!1417415))

(declare-fun condSetEmpty!8020 () Bool)

(assert (=> setNonEmpty!7991 (= condSetEmpty!8020 (= setRest!7991 ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setRes!8020 () Bool)

(assert (=> setNonEmpty!7991 (= tp!370992 setRes!8020)))

(declare-fun setIsEmpty!8020 () Bool)

(assert (=> setIsEmpty!8020 setRes!8020))

(declare-fun setNonEmpty!8020 () Bool)

(declare-fun tp!371049 () Bool)

(declare-fun setElem!8020 () Context!1082)

(assert (=> setNonEmpty!8020 (= setRes!8020 (and tp!371049 (inv!17007 setElem!8020)))))

(declare-fun setRest!8020 () (InoxSet Context!1082))

(assert (=> setNonEmpty!8020 (= setRest!7991 ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!8020 true) setRest!8020))))

(assert (= (and setNonEmpty!7991 condSetEmpty!8020) setIsEmpty!8020))

(assert (= (and setNonEmpty!7991 (not condSetEmpty!8020)) setNonEmpty!8020))

(declare-fun m!1417417 () Bool)

(assert (=> setNonEmpty!8020 m!1417417))

(declare-fun tp!371051 () Bool)

(declare-fun e!801549 () Bool)

(declare-fun setRes!8021 () Bool)

(declare-fun b!1258925 () Bool)

(assert (=> b!1258925 (= e!801549 (and (inv!17007 (_1!7111 (_1!7112 (h!18012 (t!115991 mapDefault!6326))))) setRes!8021 tp!371051))))

(declare-fun condSetEmpty!8021 () Bool)

(assert (=> b!1258925 (= condSetEmpty!8021 (= (_2!7112 (h!18012 (t!115991 mapDefault!6326))) ((as const (Array Context!1082 Bool)) false)))))

(declare-fun setIsEmpty!8021 () Bool)

(assert (=> setIsEmpty!8021 setRes!8021))

(declare-fun setNonEmpty!8021 () Bool)

(declare-fun tp!371050 () Bool)

(declare-fun setElem!8021 () Context!1082)

(assert (=> setNonEmpty!8021 (= setRes!8021 (and tp!371050 (inv!17007 setElem!8021)))))

(declare-fun setRest!8021 () (InoxSet Context!1082))

(assert (=> setNonEmpty!8021 (= (_2!7112 (h!18012 (t!115991 mapDefault!6326))) ((_ map or) (store ((as const (Array Context!1082 Bool)) false) setElem!8021 true) setRest!8021))))

(assert (=> b!1258577 (= tp!370949 e!801549)))

(assert (= (and b!1258925 condSetEmpty!8021) setIsEmpty!8021))

(assert (= (and b!1258925 (not condSetEmpty!8021)) setNonEmpty!8021))

(assert (= (and b!1258577 ((_ is Cons!12611) (t!115991 mapDefault!6326))) b!1258925))

(declare-fun m!1417419 () Bool)

(assert (=> b!1258925 m!1417419))

(declare-fun m!1417421 () Bool)

(assert (=> setNonEmpty!8021 m!1417421))

(declare-fun b_lambda!36501 () Bool)

(assert (= b_lambda!36499 (or d!355655 b_lambda!36501)))

(declare-fun bs!291277 () Bool)

(declare-fun d!355849 () Bool)

(assert (= bs!291277 (and d!355849 d!355655)))

(assert (=> bs!291277 (= (dynLambda!5507 lambda!49824 (h!18016 (list!4705 lt!421096))) (rulesProduceIndividualToken!851 Lexer!1860 lt!421095 (h!18016 (list!4705 lt!421096))))))

(assert (=> bs!291277 m!1416857))

(assert (=> b!1258694 d!355849))

(check-sat (not b!1258856) (not b!1258717) (not b!1258737) (not b!1258842) (not b!1258813) (not b!1258909) (not b!1258869) (not d!355841) (not b!1258837) (not setNonEmpty!8015) (not bs!290941) (not d!355725) (not b!1258833) (not b!1258640) (not b!1258658) (not b_next!30487) (not b!1258636) (not b!1258895) (not d!355721) (not b!1258722) (not d!355745) (not bs!290935) (not b!1258913) (not b!1258760) (not b!1258735) (not d!355757) (not b!1258643) (not d!355765) (not setNonEmpty!8019) (not d!355809) (not b!1258677) (not b!1258816) (not bm!88281) (not b_next!30493) (not b!1258910) (not bs!290936) (not d!355845) (not d!355813) (not b!1258907) (not b!1258637) (not b!1258755) (not bs!290938) (not d!355815) (not d!355707) (not b!1258624) (not setNonEmpty!8016) (not setNonEmpty!8014) (not d!355743) (not b!1258688) (not setNonEmpty!8006) (not b_next!30489) (not d!355835) (not b!1258727) (not bm!88283) (not setNonEmpty!8018) (not setNonEmpty!7992) (not setNonEmpty!8004) (not d!355799) (not b!1258905) (not b!1258911) (not bs!290944) (not d!355673) (not d!355723) (not b!1258918) (not d!355779) (not d!355699) (not b!1258526) (not setNonEmpty!8012) (not d!355711) (not d!355681) (not d!355829) (not b!1258646) (not b!1258836) (not b!1258815) (not b!1258675) (not b!1258642) (not b!1258807) (not b!1258720) (not b!1258649) (not b!1258822) (not bm!88282) (not b!1258639) (not b!1258917) (not d!355715) (not d!355777) (not d!355789) (not d!355749) (not setNonEmpty!8010) (not d!355797) (not d!355697) (not b!1258641) (not d!355811) (not b!1258806) (not b!1258736) (not b!1258739) (not setNonEmpty!8017) (not b!1258752) (not setNonEmpty!8013) (not d!355837) (not d!355827) (not b!1258824) (not b!1258647) (not bs!290942) (not setNonEmpty!8021) (not setNonEmpty!7993) (not b!1258633) (not bs!290945) (not bs!290940) (not b!1258848) (not d!355785) (not b!1258628) (not setNonEmpty!8000) (not d!355713) (not bs!290943) (not setNonEmpty!7998) (not b!1258672) (not d!355771) (not b!1258855) (not d!355805) (not d!355703) (not b!1258857) (not b!1258894) (not d!355719) (not d!355781) (not d!355767) (not setNonEmpty!8001) (not d!355709) (not mapNonEmpty!6334) (not d!355795) (not b!1258679) (not d!355739) (not b!1258908) (not d!355737) (not b_lambda!36497) (not b!1258920) (not setNonEmpty!7997) (not b!1258695) (not setNonEmpty!8002) (not b!1258645) (not d!355839) (not b!1258629) (not d!355705) (not d!355843) (not d!355729) (not d!355731) (not b!1258712) b_and!84931 (not b!1258906) (not b!1258638) (not b!1258870) (not b!1258834) (not b!1258676) (not d!355775) (not b!1258632) (not bs!290933) (not d!355831) (not b!1258922) (not d!355667) (not b!1258711) (not setNonEmpty!8008) (not d!355753) (not b!1258871) b_and!84933 (not b!1258524) (not setNonEmpty!7999) (not b!1258818) (not b!1258673) (not d!355727) (not b!1258671) (not setNonEmpty!8020) (not d!355701) (not setNonEmpty!8009) b_and!84929 (not b!1258726) (not b!1258674) (not setNonEmpty!8011) (not b_lambda!36501) (not b!1258625) (not b!1258925) (not d!355769) (not d!355819) (not bs!291277) (not d!355803) (not d!355801) (not d!355717) (not b!1258644) (not bs!290931) (not setNonEmpty!8005) (not d!355747) (not d!355833) (not b!1258924) (not d!355823) (not b!1258904) (not d!355761) (not b_next!30491) (not b!1258808) (not d!355683) (not b!1258919) (not d!355821) (not b!1258868) (not b!1258757) (not b!1258912) (not b!1258921) (not bs!290927) (not d!355787) (not b!1258914) (not b!1258718) (not b!1258756) (not b!1258847) (not setNonEmpty!8003) (not b!1258689) (not d!355817) (not b!1258923) (not b!1258810) (not setNonEmpty!8007) (not b!1258527) (not d!355825) (not b!1258648) (not b!1258754) (not setNonEmpty!7996) (not mapNonEmpty!6333) b_and!84927 (not b!1258678) (not d!355741) (not b!1258753) (not bs!290929) (not b!1258656))
(check-sat (not b_next!30487) (not b_next!30493) (not b_next!30489) b_and!84931 b_and!84933 b_and!84929 (not b_next!30491) b_and!84927)
