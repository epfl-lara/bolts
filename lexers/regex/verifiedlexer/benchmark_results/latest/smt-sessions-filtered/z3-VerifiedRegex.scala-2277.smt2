; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111114 () Bool)

(assert start!111114)

(declare-fun b!1258359 () Bool)

(declare-fun b_free!29767 () Bool)

(declare-fun b_next!30471 () Bool)

(assert (=> b!1258359 (= b_free!29767 (not b_next!30471))))

(declare-fun tp!370844 () Bool)

(declare-fun b_and!84911 () Bool)

(assert (=> b!1258359 (= tp!370844 b_and!84911)))

(declare-fun b!1258366 () Bool)

(declare-fun b_free!29769 () Bool)

(declare-fun b_next!30473 () Bool)

(assert (=> b!1258366 (= b_free!29769 (not b_next!30473))))

(declare-fun tp!370842 () Bool)

(declare-fun b_and!84913 () Bool)

(assert (=> b!1258366 (= tp!370842 b_and!84913)))

(declare-fun b!1258365 () Bool)

(declare-fun b_free!29771 () Bool)

(declare-fun b_next!30475 () Bool)

(assert (=> b!1258365 (= b_free!29771 (not b_next!30475))))

(declare-fun tp!370838 () Bool)

(declare-fun b_and!84915 () Bool)

(assert (=> b!1258365 (= tp!370838 b_and!84915)))

(declare-fun b!1258362 () Bool)

(declare-fun b_free!29773 () Bool)

(declare-fun b_next!30477 () Bool)

(assert (=> b!1258362 (= b_free!29773 (not b_next!30477))))

(declare-fun tp!370840 () Bool)

(declare-fun b_and!84917 () Bool)

(assert (=> b!1258362 (= tp!370840 b_and!84917)))

(declare-fun e!801024 () Bool)

(declare-fun e!801020 () Bool)

(assert (=> b!1258359 (= e!801024 (and e!801020 tp!370844))))

(declare-fun b!1258360 () Bool)

(declare-fun e!801032 () Bool)

(declare-fun e!801029 () Bool)

(declare-datatypes ((Regex!3477 0))(
  ( (ElementMatch!3477 (c!208968 (_ BitVec 16))) (Concat!5732 (regOne!7466 Regex!3477) (regTwo!7466 Regex!3477)) (EmptyExpr!3477) (Star!3477 (reg!3806 Regex!3477)) (EmptyLang!3477) (Union!3477 (regOne!7467 Regex!3477) (regTwo!7467 Regex!3477)) )
))
(declare-datatypes ((List!12664 0))(
  ( (Nil!12598) (Cons!12598 (h!17999 Regex!3477) (t!115948 List!12664)) )
))
(declare-datatypes ((Context!1078 0))(
  ( (Context!1079 (exprs!1039 List!12664)) )
))
(declare-datatypes ((tuple3!1118 0))(
  ( (tuple3!1119 (_1!7101 Regex!3477) (_2!7101 Context!1078) (_3!850 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!12502 0))(
  ( (tuple2!12503 (_1!7102 tuple3!1118) (_2!7102 (InoxSet Context!1078))) )
))
(declare-datatypes ((List!12665 0))(
  ( (Nil!12599) (Cons!12599 (h!18000 tuple2!12502) (t!115949 List!12665)) )
))
(declare-datatypes ((array!4670 0))(
  ( (array!4671 (arr!2082 (Array (_ BitVec 32) List!12665)) (size!9980 (_ BitVec 32))) )
))
(declare-datatypes ((array!4672 0))(
  ( (array!4673 (arr!2083 (Array (_ BitVec 32) (_ BitVec 64))) (size!9981 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2630 0))(
  ( (LongMapFixedSize!2631 (defaultEntry!1675 Int) (mask!4136 (_ BitVec 32)) (extraKeys!1562 (_ BitVec 32)) (zeroValue!1572 List!12665) (minValue!1572 List!12665) (_size!2711 (_ BitVec 32)) (_keys!1609 array!4672) (_values!1594 array!4670) (_vacant!1376 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5145 0))(
  ( (Cell!5146 (v!20851 LongMapFixedSize!2630)) )
))
(declare-datatypes ((MutLongMap!1315 0))(
  ( (LongMap!1315 (underlying!2837 Cell!5145)) (MutLongMapExt!1314 (__x!8231 Int)) )
))
(declare-fun lt!421072 () MutLongMap!1315)

(get-info :version)

(assert (=> b!1258360 (= e!801032 (and e!801029 ((_ is LongMap!1315) lt!421072)))))

(declare-datatypes ((Cell!5147 0))(
  ( (Cell!5148 (v!20852 MutLongMap!1315)) )
))
(declare-datatypes ((Hashable!1259 0))(
  ( (HashableExt!1258 (__x!8232 Int)) )
))
(declare-datatypes ((MutableMap!1259 0))(
  ( (MutableMapExt!1258 (__x!8233 Int)) (HashMap!1259 (underlying!2838 Cell!5147) (hashF!3178 Hashable!1259) (_size!2712 (_ BitVec 32)) (defaultValue!1419 Int)) )
))
(declare-datatypes ((CacheDown!732 0))(
  ( (CacheDown!733 (cache!1640 MutableMap!1259)) )
))
(declare-fun cacheDown!356 () CacheDown!732)

(assert (=> b!1258360 (= lt!421072 (v!20852 (underlying!2838 (cache!1640 cacheDown!356))))))

(declare-fun b!1258361 () Bool)

(declare-fun e!801036 () Bool)

(assert (=> b!1258361 (= e!801036 e!801024)))

(declare-fun tp!370833 () Bool)

(declare-fun e!801034 () Bool)

(declare-fun tp!370835 () Bool)

(declare-datatypes ((Hashable!1260 0))(
  ( (HashableExt!1259 (__x!8234 Int)) )
))
(declare-datatypes ((tuple2!12504 0))(
  ( (tuple2!12505 (_1!7103 Context!1078) (_2!7103 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!12506 0))(
  ( (tuple2!12507 (_1!7104 tuple2!12504) (_2!7104 (InoxSet Context!1078))) )
))
(declare-datatypes ((List!12666 0))(
  ( (Nil!12600) (Cons!12600 (h!18001 tuple2!12506) (t!115950 List!12666)) )
))
(declare-datatypes ((array!4674 0))(
  ( (array!4675 (arr!2084 (Array (_ BitVec 32) List!12666)) (size!9982 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2632 0))(
  ( (LongMapFixedSize!2633 (defaultEntry!1676 Int) (mask!4137 (_ BitVec 32)) (extraKeys!1563 (_ BitVec 32)) (zeroValue!1573 List!12666) (minValue!1573 List!12666) (_size!2713 (_ BitVec 32)) (_keys!1610 array!4672) (_values!1595 array!4674) (_vacant!1377 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5149 0))(
  ( (Cell!5150 (v!20853 LongMapFixedSize!2632)) )
))
(declare-datatypes ((MutLongMap!1316 0))(
  ( (LongMap!1316 (underlying!2839 Cell!5149)) (MutLongMapExt!1315 (__x!8235 Int)) )
))
(declare-datatypes ((Cell!5151 0))(
  ( (Cell!5152 (v!20854 MutLongMap!1316)) )
))
(declare-datatypes ((MutableMap!1260 0))(
  ( (MutableMapExt!1259 (__x!8236 Int)) (HashMap!1260 (underlying!2840 Cell!5151) (hashF!3179 Hashable!1260) (_size!2714 (_ BitVec 32)) (defaultValue!1420 Int)) )
))
(declare-datatypes ((CacheUp!728 0))(
  ( (CacheUp!729 (cache!1641 MutableMap!1260)) )
))
(declare-fun cacheUp!343 () CacheUp!728)

(declare-fun e!801022 () Bool)

(declare-fun array_inv!1513 (array!4672) Bool)

(declare-fun array_inv!1514 (array!4674) Bool)

(assert (=> b!1258362 (= e!801034 (and tp!370840 tp!370833 tp!370835 (array_inv!1513 (_keys!1610 (v!20853 (underlying!2839 (v!20854 (underlying!2840 (cache!1641 cacheUp!343))))))) (array_inv!1514 (_values!1595 (v!20853 (underlying!2839 (v!20854 (underlying!2840 (cache!1641 cacheUp!343))))))) e!801022))))

(declare-fun b!1258363 () Bool)

(declare-fun e!801028 () Bool)

(assert (=> b!1258363 (= e!801028 false)))

(declare-datatypes ((tuple3!1120 0))(
  ( (tuple3!1121 (_1!7105 Bool) (_2!7105 CacheUp!728) (_3!851 CacheDown!732)) )
))
(declare-fun lt!421071 () tuple3!1120)

(declare-datatypes ((List!12667 0))(
  ( (Nil!12601) (Cons!12601 (h!18002 (_ BitVec 16)) (t!115951 List!12667)) )
))
(declare-datatypes ((TokenValue!2255 0))(
  ( (FloatLiteralValue!4510 (text!16230 List!12667)) (TokenValueExt!2254 (__x!8237 Int)) (Broken!11275 (value!70998 List!12667)) (Object!2320) (End!2255) (Def!2255) (Underscore!2255) (Match!2255) (Else!2255) (Error!2255) (Case!2255) (If!2255) (Extends!2255) (Abstract!2255) (Class!2255) (Val!2255) (DelimiterValue!4510 (del!2315 List!12667)) (KeywordValue!2261 (value!70999 List!12667)) (CommentValue!4510 (value!71000 List!12667)) (WhitespaceValue!4510 (value!71001 List!12667)) (IndentationValue!2255 (value!71002 List!12667)) (String!15506) (Int32!2255) (Broken!11276 (value!71003 List!12667)) (Boolean!2256) (Unit!18879) (OperatorValue!2258 (op!2315 List!12667)) (IdentifierValue!4510 (value!71004 List!12667)) (IdentifierValue!4511 (value!71005 List!12667)) (WhitespaceValue!4511 (value!71006 List!12667)) (True!4510) (False!4510) (Broken!11277 (value!71007 List!12667)) (Broken!11278 (value!71008 List!12667)) (True!4511) (RightBrace!2255) (RightBracket!2255) (Colon!2255) (Null!2255) (Comma!2255) (LeftBracket!2255) (False!4511) (LeftBrace!2255) (ImaginaryLiteralValue!2255 (text!16231 List!12667)) (StringLiteralValue!6765 (value!71009 List!12667)) (EOFValue!2255 (value!71010 List!12667)) (IdentValue!2255 (value!71011 List!12667)) (DelimiterValue!4511 (value!71012 List!12667)) (DedentValue!2255 (value!71013 List!12667)) (NewLineValue!2255 (value!71014 List!12667)) (IntegerValue!6765 (value!71015 (_ BitVec 32)) (text!16232 List!12667)) (IntegerValue!6766 (value!71016 Int) (text!16233 List!12667)) (Times!2255) (Or!2255) (Equal!2255) (Minus!2255) (Broken!11279 (value!71017 List!12667)) (And!2255) (Div!2255) (LessEqual!2255) (Mod!2255) (Concat!5733) (Not!2255) (Plus!2255) (SpaceValue!2255 (value!71018 List!12667)) (IntegerValue!6767 (value!71019 Int) (text!16234 List!12667)) (StringLiteralValue!6766 (text!16235 List!12667)) (FloatLiteralValue!4511 (text!16236 List!12667)) (BytesLiteralValue!2255 (value!71020 List!12667)) (CommentValue!4511 (value!71021 List!12667)) (StringLiteralValue!6767 (value!71022 List!12667)) (ErrorTokenValue!2255 (msg!2316 List!12667)) )
))
(declare-datatypes ((String!15507 0))(
  ( (String!15508 (value!71023 String)) )
))
(declare-datatypes ((IArray!8289 0))(
  ( (IArray!8290 (innerList!4202 List!12667)) )
))
(declare-datatypes ((Conc!4142 0))(
  ( (Node!4142 (left!10915 Conc!4142) (right!11245 Conc!4142) (csize!8514 Int) (cheight!4353 Int)) (Leaf!6420 (xs!6853 IArray!8289) (csize!8515 Int)) (Empty!4142) )
))
(declare-datatypes ((BalanceConc!8224 0))(
  ( (BalanceConc!8225 (c!208969 Conc!4142)) )
))
(declare-datatypes ((TokenValueInjection!4170 0))(
  ( (TokenValueInjection!4171 (toValue!3326 Int) (toChars!3185 Int)) )
))
(declare-datatypes ((Rule!4130 0))(
  ( (Rule!4131 (regex!2165 Regex!3477) (tag!2427 String!15507) (isSeparator!2165 Bool) (transformation!2165 TokenValueInjection!4170)) )
))
(declare-datatypes ((List!12668 0))(
  ( (Nil!12602) (Cons!12602 (h!18003 Rule!4130) (t!115952 List!12668)) )
))
(declare-fun lt!421069 () List!12668)

(declare-datatypes ((LexerInterface!1860 0))(
  ( (LexerInterfaceExt!1857 (__x!8238 Int)) (Lexer!1858) )
))
(declare-datatypes ((Token!3992 0))(
  ( (Token!3993 (value!71024 TokenValue!2255) (rule!3596 Rule!4130) (size!9983 Int) (originalCharacters!2719 List!12667)) )
))
(declare-datatypes ((List!12669 0))(
  ( (Nil!12603) (Cons!12603 (h!18004 Token!3992) (t!115953 List!12669)) )
))
(declare-datatypes ((IArray!8291 0))(
  ( (IArray!8292 (innerList!4203 List!12669)) )
))
(declare-datatypes ((Conc!4143 0))(
  ( (Node!4143 (left!10916 Conc!4143) (right!11246 Conc!4143) (csize!8516 Int) (cheight!4354 Int)) (Leaf!6421 (xs!6854 IArray!8291) (csize!8517 Int)) (Empty!4143) )
))
(declare-datatypes ((BalanceConc!8226 0))(
  ( (BalanceConc!8227 (c!208970 Conc!4143)) )
))
(declare-fun rulesProduceEachTokenIndividuallyMem!28 (LexerInterface!1860 List!12668 BalanceConc!8226 CacheUp!728 CacheDown!732) tuple3!1120)

(declare-fun singletonSeq!754 (Token!3992) BalanceConc!8226)

(declare-fun apply!2703 (TokenValueInjection!4170 BalanceConc!8224) TokenValue!2255)

(declare-datatypes ((KeywordValueInjection!148 0))(
  ( (KeywordValueInjection!149) )
))
(declare-fun injection!9 (KeywordValueInjection!148) TokenValueInjection!4170)

(declare-fun singletonSeq!755 ((_ BitVec 16)) BalanceConc!8224)

(declare-datatypes ((JsonLexer!346 0))(
  ( (JsonLexer!347) )
))
(declare-fun rBracketRule!0 (JsonLexer!346) Rule!4130)

(assert (=> b!1258363 (= lt!421071 (rulesProduceEachTokenIndividuallyMem!28 Lexer!1858 lt!421069 (singletonSeq!754 (Token!3993 (apply!2703 (injection!9 KeywordValueInjection!149) (singletonSeq!755 #x005D)) (rBracketRule!0 JsonLexer!347) 1 (Cons!12601 #x005D Nil!12601))) cacheUp!343 cacheDown!356))))

(declare-fun b!1258364 () Bool)

(declare-fun e!801033 () Bool)

(assert (=> b!1258364 (= e!801029 e!801033)))

(declare-fun e!801025 () Bool)

(assert (=> b!1258365 (= e!801025 (and e!801032 tp!370838))))

(declare-fun e!801027 () Bool)

(declare-fun e!801030 () Bool)

(declare-fun tp!370841 () Bool)

(declare-fun tp!370845 () Bool)

(declare-fun array_inv!1515 (array!4670) Bool)

(assert (=> b!1258366 (= e!801027 (and tp!370842 tp!370841 tp!370845 (array_inv!1513 (_keys!1609 (v!20851 (underlying!2837 (v!20852 (underlying!2838 (cache!1640 cacheDown!356))))))) (array_inv!1515 (_values!1594 (v!20851 (underlying!2837 (v!20852 (underlying!2838 (cache!1640 cacheDown!356))))))) e!801030))))

(declare-fun b!1258367 () Bool)

(declare-fun tp!370837 () Bool)

(declare-fun mapRes!6313 () Bool)

(assert (=> b!1258367 (= e!801030 (and tp!370837 mapRes!6313))))

(declare-fun condMapEmpty!6314 () Bool)

(declare-fun mapDefault!6313 () List!12665)

(assert (=> b!1258367 (= condMapEmpty!6314 (= (arr!2082 (_values!1594 (v!20851 (underlying!2837 (v!20852 (underlying!2838 (cache!1640 cacheDown!356))))))) ((as const (Array (_ BitVec 32) List!12665)) mapDefault!6313)))))

(declare-fun b!1258368 () Bool)

(declare-fun res!557038 () Bool)

(assert (=> b!1258368 (=> (not res!557038) (not e!801028))))

(declare-fun rulesInvariant!1733 (LexerInterface!1860 List!12668) Bool)

(assert (=> b!1258368 (= res!557038 (rulesInvariant!1733 Lexer!1858 lt!421069))))

(declare-fun b!1258369 () Bool)

(declare-fun e!801021 () Bool)

(declare-fun lt!421070 () MutLongMap!1316)

(assert (=> b!1258369 (= e!801020 (and e!801021 ((_ is LongMap!1316) lt!421070)))))

(assert (=> b!1258369 (= lt!421070 (v!20854 (underlying!2840 (cache!1641 cacheUp!343))))))

(declare-fun mapIsEmpty!6313 () Bool)

(assert (=> mapIsEmpty!6313 mapRes!6313))

(declare-fun b!1258370 () Bool)

(declare-fun tp!370843 () Bool)

(declare-fun mapRes!6314 () Bool)

(assert (=> b!1258370 (= e!801022 (and tp!370843 mapRes!6314))))

(declare-fun condMapEmpty!6313 () Bool)

(declare-fun mapDefault!6314 () List!12666)

(assert (=> b!1258370 (= condMapEmpty!6313 (= (arr!2084 (_values!1595 (v!20853 (underlying!2839 (v!20854 (underlying!2840 (cache!1641 cacheUp!343))))))) ((as const (Array (_ BitVec 32) List!12666)) mapDefault!6314)))))

(declare-fun b!1258371 () Bool)

(declare-fun e!801035 () Bool)

(assert (=> b!1258371 (= e!801035 e!801025)))

(declare-fun b!1258372 () Bool)

(declare-fun e!801026 () Bool)

(assert (=> b!1258372 (= e!801026 e!801034)))

(declare-fun b!1258373 () Bool)

(assert (=> b!1258373 (= e!801033 e!801027)))

(declare-fun mapNonEmpty!6313 () Bool)

(declare-fun tp!370834 () Bool)

(declare-fun tp!370846 () Bool)

(assert (=> mapNonEmpty!6313 (= mapRes!6314 (and tp!370834 tp!370846))))

(declare-fun mapRest!6314 () (Array (_ BitVec 32) List!12666))

(declare-fun mapKey!6314 () (_ BitVec 32))

(declare-fun mapValue!6313 () List!12666)

(assert (=> mapNonEmpty!6313 (= (arr!2084 (_values!1595 (v!20853 (underlying!2839 (v!20854 (underlying!2840 (cache!1641 cacheUp!343))))))) (store mapRest!6314 mapKey!6314 mapValue!6313))))

(declare-fun b!1258374 () Bool)

(assert (=> b!1258374 (= e!801021 e!801026)))

(declare-fun res!557037 () Bool)

(assert (=> start!111114 (=> (not res!557037) (not e!801028))))

(declare-fun isEmpty!7504 (List!12668) Bool)

(assert (=> start!111114 (= res!557037 (not (isEmpty!7504 lt!421069)))))

(declare-fun rules!109 (JsonLexer!346) List!12668)

(assert (=> start!111114 (= lt!421069 (rules!109 JsonLexer!347))))

(assert (=> start!111114 e!801028))

(declare-fun inv!16998 (CacheUp!728) Bool)

(assert (=> start!111114 (and (inv!16998 cacheUp!343) e!801036)))

(declare-fun inv!16999 (CacheDown!732) Bool)

(assert (=> start!111114 (and (inv!16999 cacheDown!356) e!801035)))

(declare-fun mapIsEmpty!6314 () Bool)

(assert (=> mapIsEmpty!6314 mapRes!6314))

(declare-fun mapNonEmpty!6314 () Bool)

(declare-fun tp!370836 () Bool)

(declare-fun tp!370839 () Bool)

(assert (=> mapNonEmpty!6314 (= mapRes!6313 (and tp!370836 tp!370839))))

(declare-fun mapRest!6313 () (Array (_ BitVec 32) List!12665))

(declare-fun mapValue!6314 () List!12665)

(declare-fun mapKey!6313 () (_ BitVec 32))

(assert (=> mapNonEmpty!6314 (= (arr!2082 (_values!1594 (v!20851 (underlying!2837 (v!20852 (underlying!2838 (cache!1640 cacheDown!356))))))) (store mapRest!6313 mapKey!6313 mapValue!6314))))

(assert (= (and start!111114 res!557037) b!1258368))

(assert (= (and b!1258368 res!557038) b!1258363))

(assert (= (and b!1258370 condMapEmpty!6313) mapIsEmpty!6314))

(assert (= (and b!1258370 (not condMapEmpty!6313)) mapNonEmpty!6313))

(assert (= b!1258362 b!1258370))

(assert (= b!1258372 b!1258362))

(assert (= b!1258374 b!1258372))

(assert (= (and b!1258369 ((_ is LongMap!1316) (v!20854 (underlying!2840 (cache!1641 cacheUp!343))))) b!1258374))

(assert (= b!1258359 b!1258369))

(assert (= (and b!1258361 ((_ is HashMap!1260) (cache!1641 cacheUp!343))) b!1258359))

(assert (= start!111114 b!1258361))

(assert (= (and b!1258367 condMapEmpty!6314) mapIsEmpty!6313))

(assert (= (and b!1258367 (not condMapEmpty!6314)) mapNonEmpty!6314))

(assert (= b!1258366 b!1258367))

(assert (= b!1258373 b!1258366))

(assert (= b!1258364 b!1258373))

(assert (= (and b!1258360 ((_ is LongMap!1315) (v!20852 (underlying!2838 (cache!1640 cacheDown!356))))) b!1258364))

(assert (= b!1258365 b!1258360))

(assert (= (and b!1258371 ((_ is HashMap!1259) (cache!1640 cacheDown!356))) b!1258365))

(assert (= start!111114 b!1258371))

(declare-fun m!1416647 () Bool)

(assert (=> mapNonEmpty!6314 m!1416647))

(declare-fun m!1416649 () Bool)

(assert (=> b!1258368 m!1416649))

(declare-fun m!1416651 () Bool)

(assert (=> mapNonEmpty!6313 m!1416651))

(declare-fun m!1416653 () Bool)

(assert (=> b!1258366 m!1416653))

(declare-fun m!1416655 () Bool)

(assert (=> b!1258366 m!1416655))

(declare-fun m!1416657 () Bool)

(assert (=> b!1258362 m!1416657))

(declare-fun m!1416659 () Bool)

(assert (=> b!1258362 m!1416659))

(declare-fun m!1416661 () Bool)

(assert (=> b!1258363 m!1416661))

(assert (=> b!1258363 m!1416661))

(declare-fun m!1416663 () Bool)

(assert (=> b!1258363 m!1416663))

(declare-fun m!1416665 () Bool)

(assert (=> b!1258363 m!1416665))

(assert (=> b!1258363 m!1416663))

(declare-fun m!1416667 () Bool)

(assert (=> b!1258363 m!1416667))

(assert (=> b!1258363 m!1416667))

(declare-fun m!1416669 () Bool)

(assert (=> b!1258363 m!1416669))

(declare-fun m!1416671 () Bool)

(assert (=> b!1258363 m!1416671))

(declare-fun m!1416673 () Bool)

(assert (=> start!111114 m!1416673))

(declare-fun m!1416675 () Bool)

(assert (=> start!111114 m!1416675))

(declare-fun m!1416677 () Bool)

(assert (=> start!111114 m!1416677))

(declare-fun m!1416679 () Bool)

(assert (=> start!111114 m!1416679))

(check-sat b_and!84911 b_and!84915 (not b_next!30473) (not b!1258366) (not b!1258367) b_and!84917 (not mapNonEmpty!6313) b_and!84913 (not b_next!30475) (not mapNonEmpty!6314) (not b!1258362) (not b_next!30477) (not b!1258363) (not start!111114) (not b!1258368) (not b_next!30471) (not b!1258370))
(check-sat b_and!84911 b_and!84915 (not b_next!30473) b_and!84917 b_and!84913 (not b_next!30475) (not b_next!30477) (not b_next!30471))
