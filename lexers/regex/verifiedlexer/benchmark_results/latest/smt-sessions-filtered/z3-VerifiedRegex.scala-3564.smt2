; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206248 () Bool)

(assert start!206248)

(declare-fun b!2109646 () Bool)

(declare-fun b_free!60877 () Bool)

(declare-fun b_next!61581 () Bool)

(assert (=> b!2109646 (= b_free!60877 (not b_next!61581))))

(declare-fun tp!641513 () Bool)

(declare-fun b_and!170443 () Bool)

(assert (=> b!2109646 (= tp!641513 b_and!170443)))

(declare-fun b!2109631 () Bool)

(declare-fun b_free!60879 () Bool)

(declare-fun b_next!61583 () Bool)

(assert (=> b!2109631 (= b_free!60879 (not b_next!61583))))

(declare-fun tp!641516 () Bool)

(declare-fun b_and!170445 () Bool)

(assert (=> b!2109631 (= tp!641516 b_and!170445)))

(declare-fun b!2109627 () Bool)

(declare-fun b_free!60881 () Bool)

(declare-fun b_next!61585 () Bool)

(assert (=> b!2109627 (= b_free!60881 (not b_next!61585))))

(declare-fun tp!641515 () Bool)

(declare-fun b_and!170447 () Bool)

(assert (=> b!2109627 (= tp!641515 b_and!170447)))

(declare-fun b_free!60883 () Bool)

(declare-fun b_next!61587 () Bool)

(assert (=> b!2109627 (= b_free!60883 (not b_next!61587))))

(declare-fun tp!641517 () Bool)

(declare-fun b_and!170449 () Bool)

(assert (=> b!2109627 (= tp!641517 b_and!170449)))

(declare-fun b!2109633 () Bool)

(declare-fun b_free!60885 () Bool)

(declare-fun b_next!61589 () Bool)

(assert (=> b!2109633 (= b_free!60885 (not b_next!61589))))

(declare-fun tp!641519 () Bool)

(declare-fun b_and!170451 () Bool)

(assert (=> b!2109633 (= tp!641519 b_and!170451)))

(declare-fun b!2109626 () Bool)

(declare-fun b_free!60887 () Bool)

(declare-fun b_next!61591 () Bool)

(assert (=> b!2109626 (= b_free!60887 (not b_next!61591))))

(declare-fun tp!641514 () Bool)

(declare-fun b_and!170453 () Bool)

(assert (=> b!2109626 (= tp!641514 b_and!170453)))

(declare-fun b!2109624 () Bool)

(declare-fun e!1341603 () Bool)

(declare-fun e!1341597 () Bool)

(assert (=> b!2109624 (= e!1341603 e!1341597)))

(declare-fun b!2109625 () Bool)

(declare-fun e!1341602 () Bool)

(declare-datatypes ((C!11336 0))(
  ( (C!11337 (val!6654 Int)) )
))
(declare-datatypes ((List!23461 0))(
  ( (Nil!23377) (Cons!23377 (h!28778 C!11336) (t!195960 List!23461)) )
))
(declare-datatypes ((IArray!15487 0))(
  ( (IArray!15488 (innerList!7801 List!23461)) )
))
(declare-datatypes ((Conc!7741 0))(
  ( (Node!7741 (left!18189 Conc!7741) (right!18519 Conc!7741) (csize!15712 Int) (cheight!7952 Int)) (Leaf!11306 (xs!10683 IArray!15487) (csize!15713 Int)) (Empty!7741) )
))
(declare-datatypes ((BalanceConc!15244 0))(
  ( (BalanceConc!15245 (c!339024 Conc!7741)) )
))
(declare-fun input!1654 () BalanceConc!15244)

(declare-fun tp!641530 () Bool)

(declare-fun inv!30930 (Conc!7741) Bool)

(assert (=> b!2109625 (= e!1341602 (and (inv!30930 (c!339024 input!1654)) tp!641530))))

(declare-fun e!1341604 () Bool)

(declare-fun e!1341608 () Bool)

(assert (=> b!2109626 (= e!1341604 (and e!1341608 tp!641514))))

(declare-fun e!1341599 () Bool)

(assert (=> b!2109627 (= e!1341599 (and tp!641515 tp!641517))))

(declare-fun tp!641512 () Bool)

(declare-datatypes ((List!23462 0))(
  ( (Nil!23378) (Cons!23378 (h!28779 (_ BitVec 16)) (t!195961 List!23462)) )
))
(declare-datatypes ((TokenValue!4296 0))(
  ( (FloatLiteralValue!8592 (text!30517 List!23462)) (TokenValueExt!4295 (__x!15044 Int)) (Broken!21480 (value!130168 List!23462)) (Object!4379) (End!4296) (Def!4296) (Underscore!4296) (Match!4296) (Else!4296) (Error!4296) (Case!4296) (If!4296) (Extends!4296) (Abstract!4296) (Class!4296) (Val!4296) (DelimiterValue!8592 (del!4356 List!23462)) (KeywordValue!4302 (value!130169 List!23462)) (CommentValue!8592 (value!130170 List!23462)) (WhitespaceValue!8592 (value!130171 List!23462)) (IndentationValue!4296 (value!130172 List!23462)) (String!26685) (Int32!4296) (Broken!21481 (value!130173 List!23462)) (Boolean!4297) (Unit!37500) (OperatorValue!4299 (op!4356 List!23462)) (IdentifierValue!8592 (value!130174 List!23462)) (IdentifierValue!8593 (value!130175 List!23462)) (WhitespaceValue!8593 (value!130176 List!23462)) (True!8592) (False!8592) (Broken!21482 (value!130177 List!23462)) (Broken!21483 (value!130178 List!23462)) (True!8593) (RightBrace!4296) (RightBracket!4296) (Colon!4296) (Null!4296) (Comma!4296) (LeftBracket!4296) (False!8593) (LeftBrace!4296) (ImaginaryLiteralValue!4296 (text!30518 List!23462)) (StringLiteralValue!12888 (value!130179 List!23462)) (EOFValue!4296 (value!130180 List!23462)) (IdentValue!4296 (value!130181 List!23462)) (DelimiterValue!8593 (value!130182 List!23462)) (DedentValue!4296 (value!130183 List!23462)) (NewLineValue!4296 (value!130184 List!23462)) (IntegerValue!12888 (value!130185 (_ BitVec 32)) (text!30519 List!23462)) (IntegerValue!12889 (value!130186 Int) (text!30520 List!23462)) (Times!4296) (Or!4296) (Equal!4296) (Minus!4296) (Broken!21484 (value!130187 List!23462)) (And!4296) (Div!4296) (LessEqual!4296) (Mod!4296) (Concat!9891) (Not!4296) (Plus!4296) (SpaceValue!4296 (value!130188 List!23462)) (IntegerValue!12890 (value!130189 Int) (text!30521 List!23462)) (StringLiteralValue!12889 (text!30522 List!23462)) (FloatLiteralValue!8593 (text!30523 List!23462)) (BytesLiteralValue!4296 (value!130190 List!23462)) (CommentValue!8593 (value!130191 List!23462)) (StringLiteralValue!12890 (value!130192 List!23462)) (ErrorTokenValue!4296 (msg!4357 List!23462)) )
))
(declare-datatypes ((String!26686 0))(
  ( (String!26687 (value!130193 String)) )
))
(declare-datatypes ((Regex!5595 0))(
  ( (ElementMatch!5595 (c!339025 C!11336)) (Concat!9892 (regOne!11702 Regex!5595) (regTwo!11702 Regex!5595)) (EmptyExpr!5595) (Star!5595 (reg!5924 Regex!5595)) (EmptyLang!5595) (Union!5595 (regOne!11703 Regex!5595) (regTwo!11703 Regex!5595)) )
))
(declare-datatypes ((TokenValueInjection!8176 0))(
  ( (TokenValueInjection!8177 (toValue!5871 Int) (toChars!5730 Int)) )
))
(declare-datatypes ((Rule!8120 0))(
  ( (Rule!8121 (regex!4160 Regex!5595) (tag!4650 String!26686) (isSeparator!4160 Bool) (transformation!4160 TokenValueInjection!8176)) )
))
(declare-fun rule!236 () Rule!8120)

(declare-fun b!2109628 () Bool)

(declare-fun e!1341609 () Bool)

(declare-fun inv!30927 (String!26686) Bool)

(declare-fun inv!30931 (TokenValueInjection!8176) Bool)

(assert (=> b!2109628 (= e!1341609 (and tp!641512 (inv!30927 (tag!4650 rule!236)) (inv!30931 (transformation!4160 rule!236)) e!1341599))))

(declare-fun mapIsEmpty!11066 () Bool)

(declare-fun mapRes!11066 () Bool)

(assert (=> mapIsEmpty!11066 mapRes!11066))

(declare-fun mapNonEmpty!11066 () Bool)

(declare-fun tp!641529 () Bool)

(declare-fun tp!641521 () Bool)

(assert (=> mapNonEmpty!11066 (= mapRes!11066 (and tp!641529 tp!641521))))

(declare-fun mapKey!11067 () (_ BitVec 32))

(declare-datatypes ((List!23463 0))(
  ( (Nil!23379) (Cons!23379 (h!28780 Regex!5595) (t!195962 List!23463)) )
))
(declare-datatypes ((Context!2330 0))(
  ( (Context!2331 (exprs!1665 List!23463)) )
))
(declare-datatypes ((tuple3!2650 0))(
  ( (tuple3!2651 (_1!13143 Regex!5595) (_2!13143 Context!2330) (_3!1789 C!11336)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22708 0))(
  ( (tuple2!22709 (_1!13144 tuple3!2650) (_2!13144 (InoxSet Context!2330))) )
))
(declare-datatypes ((List!23464 0))(
  ( (Nil!23380) (Cons!23380 (h!28781 tuple2!22708) (t!195963 List!23464)) )
))
(declare-fun mapRest!11067 () (Array (_ BitVec 32) List!23464))

(declare-datatypes ((Hashable!2207 0))(
  ( (HashableExt!2206 (__x!15045 Int)) )
))
(declare-datatypes ((array!7920 0))(
  ( (array!7921 (arr!3509 (Array (_ BitVec 32) (_ BitVec 64))) (size!18241 (_ BitVec 32))) )
))
(declare-datatypes ((array!7922 0))(
  ( (array!7923 (arr!3510 (Array (_ BitVec 32) List!23464)) (size!18242 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4586 0))(
  ( (LongMapFixedSize!4587 (defaultEntry!2658 Int) (mask!6406 (_ BitVec 32)) (extraKeys!2541 (_ BitVec 32)) (zeroValue!2551 List!23464) (minValue!2551 List!23464) (_size!4637 (_ BitVec 32)) (_keys!2590 array!7920) (_values!2573 array!7922) (_vacant!2354 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8997 0))(
  ( (Cell!8998 (v!27911 LongMapFixedSize!4586)) )
))
(declare-datatypes ((MutLongMap!2293 0))(
  ( (LongMap!2293 (underlying!4781 Cell!8997)) (MutLongMapExt!2292 (__x!15046 Int)) )
))
(declare-datatypes ((Cell!8999 0))(
  ( (Cell!9000 (v!27912 MutLongMap!2293)) )
))
(declare-datatypes ((MutableMap!2207 0))(
  ( (MutableMapExt!2206 (__x!15047 Int)) (HashMap!2207 (underlying!4782 Cell!8999) (hashF!4130 Hashable!2207) (_size!4638 (_ BitVec 32)) (defaultValue!2369 Int)) )
))
(declare-datatypes ((CacheDown!1506 0))(
  ( (CacheDown!1507 (cache!2588 MutableMap!2207)) )
))
(declare-fun cacheDown!753 () CacheDown!1506)

(declare-fun mapValue!11067 () List!23464)

(assert (=> mapNonEmpty!11066 (= (arr!3510 (_values!2573 (v!27911 (underlying!4781 (v!27912 (underlying!4782 (cache!2588 cacheDown!753))))))) (store mapRest!11067 mapKey!11067 mapValue!11067))))

(declare-fun b!2109629 () Bool)

(declare-fun e!1341606 () Bool)

(declare-datatypes ((tuple2!22710 0))(
  ( (tuple2!22711 (_1!13145 Context!2330) (_2!13145 C!11336)) )
))
(declare-datatypes ((tuple2!22712 0))(
  ( (tuple2!22713 (_1!13146 tuple2!22710) (_2!13146 (InoxSet Context!2330))) )
))
(declare-datatypes ((List!23465 0))(
  ( (Nil!23381) (Cons!23381 (h!28782 tuple2!22712) (t!195964 List!23465)) )
))
(declare-datatypes ((array!7924 0))(
  ( (array!7925 (arr!3511 (Array (_ BitVec 32) List!23465)) (size!18243 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4588 0))(
  ( (LongMapFixedSize!4589 (defaultEntry!2659 Int) (mask!6407 (_ BitVec 32)) (extraKeys!2542 (_ BitVec 32)) (zeroValue!2552 List!23465) (minValue!2552 List!23465) (_size!4639 (_ BitVec 32)) (_keys!2591 array!7920) (_values!2574 array!7924) (_vacant!2355 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9001 0))(
  ( (Cell!9002 (v!27913 LongMapFixedSize!4588)) )
))
(declare-datatypes ((MutLongMap!2294 0))(
  ( (LongMap!2294 (underlying!4783 Cell!9001)) (MutLongMapExt!2293 (__x!15048 Int)) )
))
(declare-fun lt!791936 () MutLongMap!2294)

(get-info :version)

(assert (=> b!2109629 (= e!1341606 (and e!1341603 ((_ is LongMap!2294) lt!791936)))))

(declare-datatypes ((Cell!9003 0))(
  ( (Cell!9004 (v!27914 MutLongMap!2294)) )
))
(declare-datatypes ((Hashable!2208 0))(
  ( (HashableExt!2207 (__x!15049 Int)) )
))
(declare-datatypes ((MutableMap!2208 0))(
  ( (MutableMapExt!2207 (__x!15050 Int)) (HashMap!2208 (underlying!4784 Cell!9003) (hashF!4131 Hashable!2208) (_size!4640 (_ BitVec 32)) (defaultValue!2370 Int)) )
))
(declare-datatypes ((CacheUp!1502 0))(
  ( (CacheUp!1503 (cache!2589 MutableMap!2208)) )
))
(declare-fun cacheUp!740 () CacheUp!1502)

(assert (=> b!2109629 (= lt!791936 (v!27914 (underlying!4784 (cache!2589 cacheUp!740))))))

(declare-fun res!916505 () Bool)

(declare-fun e!1341594 () Bool)

(assert (=> start!206248 (=> (not res!916505) (not e!1341594))))

(declare-datatypes ((LexerInterface!3758 0))(
  ( (LexerInterfaceExt!3755 (__x!15051 Int)) (Lexer!3756) )
))
(declare-fun thiss!16399 () LexerInterface!3758)

(assert (=> start!206248 (= res!916505 ((_ is Lexer!3756) thiss!16399))))

(assert (=> start!206248 e!1341594))

(assert (=> start!206248 true))

(assert (=> start!206248 e!1341609))

(declare-fun e!1341598 () Bool)

(declare-fun inv!30932 (CacheDown!1506) Bool)

(assert (=> start!206248 (and (inv!30932 cacheDown!753) e!1341598)))

(declare-fun inv!30933 (BalanceConc!15244) Bool)

(assert (=> start!206248 (and (inv!30933 input!1654) e!1341602)))

(declare-fun totalInput!548 () BalanceConc!15244)

(declare-fun e!1341591 () Bool)

(assert (=> start!206248 (and (inv!30933 totalInput!548) e!1341591)))

(declare-fun e!1341600 () Bool)

(declare-fun inv!30934 (CacheUp!1502) Bool)

(assert (=> start!206248 (and (inv!30934 cacheUp!740) e!1341600)))

(declare-fun b!2109630 () Bool)

(declare-fun e!1341611 () Bool)

(assert (=> b!2109630 (= e!1341597 e!1341611)))

(declare-fun e!1341590 () Bool)

(assert (=> b!2109631 (= e!1341590 (and e!1341606 tp!641516))))

(declare-fun b!2109632 () Bool)

(assert (=> b!2109632 (= e!1341598 e!1341604)))

(declare-fun mapNonEmpty!11067 () Bool)

(declare-fun mapRes!11067 () Bool)

(declare-fun tp!641520 () Bool)

(declare-fun tp!641524 () Bool)

(assert (=> mapNonEmpty!11067 (= mapRes!11067 (and tp!641520 tp!641524))))

(declare-fun mapValue!11066 () List!23465)

(declare-fun mapRest!11066 () (Array (_ BitVec 32) List!23465))

(declare-fun mapKey!11066 () (_ BitVec 32))

(assert (=> mapNonEmpty!11067 (= (arr!3511 (_values!2574 (v!27913 (underlying!4783 (v!27914 (underlying!4784 (cache!2589 cacheUp!740))))))) (store mapRest!11066 mapKey!11066 mapValue!11066))))

(declare-fun tp!641526 () Bool)

(declare-fun e!1341607 () Bool)

(declare-fun e!1341592 () Bool)

(declare-fun tp!641525 () Bool)

(declare-fun array_inv!2525 (array!7920) Bool)

(declare-fun array_inv!2526 (array!7922) Bool)

(assert (=> b!2109633 (= e!1341607 (and tp!641519 tp!641525 tp!641526 (array_inv!2525 (_keys!2590 (v!27911 (underlying!4781 (v!27912 (underlying!4782 (cache!2588 cacheDown!753))))))) (array_inv!2526 (_values!2573 (v!27911 (underlying!4781 (v!27912 (underlying!4782 (cache!2588 cacheDown!753))))))) e!1341592))))

(declare-fun b!2109634 () Bool)

(declare-fun res!916504 () Bool)

(assert (=> b!2109634 (=> (not res!916504) (not e!1341594))))

(declare-fun valid!1811 (CacheDown!1506) Bool)

(assert (=> b!2109634 (= res!916504 (valid!1811 cacheDown!753))))

(declare-fun b!2109635 () Bool)

(declare-fun tp!641518 () Bool)

(assert (=> b!2109635 (= e!1341592 (and tp!641518 mapRes!11066))))

(declare-fun condMapEmpty!11066 () Bool)

(declare-fun mapDefault!11067 () List!23464)

(assert (=> b!2109635 (= condMapEmpty!11066 (= (arr!3510 (_values!2573 (v!27911 (underlying!4781 (v!27912 (underlying!4782 (cache!2588 cacheDown!753))))))) ((as const (Array (_ BitVec 32) List!23464)) mapDefault!11067)))))

(declare-fun b!2109636 () Bool)

(declare-fun e!1341593 () Bool)

(declare-fun lt!791937 () MutLongMap!2293)

(assert (=> b!2109636 (= e!1341608 (and e!1341593 ((_ is LongMap!2293) lt!791937)))))

(assert (=> b!2109636 (= lt!791937 (v!27912 (underlying!4782 (cache!2588 cacheDown!753))))))

(declare-fun b!2109637 () Bool)

(declare-fun res!916501 () Bool)

(assert (=> b!2109637 (=> (not res!916501) (not e!1341594))))

(declare-fun ruleValid!1283 (LexerInterface!3758 Rule!8120) Bool)

(assert (=> b!2109637 (= res!916501 (ruleValid!1283 thiss!16399 rule!236))))

(declare-fun b!2109638 () Bool)

(declare-fun res!916502 () Bool)

(assert (=> b!2109638 (=> (not res!916502) (not e!1341594))))

(declare-fun isSuffix!574 (List!23461 List!23461) Bool)

(declare-fun list!9467 (BalanceConc!15244) List!23461)

(assert (=> b!2109638 (= res!916502 (isSuffix!574 (list!9467 input!1654) (list!9467 totalInput!548)))))

(declare-fun b!2109639 () Bool)

(declare-fun e!1341601 () Bool)

(assert (=> b!2109639 (= e!1341601 e!1341607)))

(declare-fun b!2109640 () Bool)

(declare-datatypes ((tuple2!22714 0))(
  ( (tuple2!22715 (_1!13147 BalanceConc!15244) (_2!13147 BalanceConc!15244)) )
))
(declare-datatypes ((tuple3!2652 0))(
  ( (tuple3!2653 (_1!13148 tuple2!22714) (_2!13148 CacheUp!1502) (_3!1790 CacheDown!1506)) )
))
(declare-fun findLongestMatchWithZipperSequenceV2MemOnlyDeriv!40 (Regex!5595 BalanceConc!15244 BalanceConc!15244 CacheUp!1502 CacheDown!1506) tuple3!2652)

(declare-fun findLongestMatchWithZipperSequenceV2!66 (Regex!5595 BalanceConc!15244 BalanceConc!15244) tuple2!22714)

(assert (=> b!2109640 (= e!1341594 (not (= (_1!13148 (findLongestMatchWithZipperSequenceV2MemOnlyDeriv!40 (regex!4160 rule!236) input!1654 totalInput!548 cacheUp!740 cacheDown!753)) (findLongestMatchWithZipperSequenceV2!66 (regex!4160 rule!236) input!1654 totalInput!548))))))

(declare-fun b!2109641 () Bool)

(declare-fun tp!641527 () Bool)

(assert (=> b!2109641 (= e!1341591 (and (inv!30930 (c!339024 totalInput!548)) tp!641527))))

(declare-fun b!2109642 () Bool)

(assert (=> b!2109642 (= e!1341600 e!1341590)))

(declare-fun b!2109643 () Bool)

(assert (=> b!2109643 (= e!1341593 e!1341601)))

(declare-fun b!2109644 () Bool)

(declare-fun res!916503 () Bool)

(assert (=> b!2109644 (=> (not res!916503) (not e!1341594))))

(declare-fun valid!1812 (CacheUp!1502) Bool)

(assert (=> b!2109644 (= res!916503 (valid!1812 cacheUp!740))))

(declare-fun b!2109645 () Bool)

(declare-fun e!1341605 () Bool)

(declare-fun tp!641522 () Bool)

(assert (=> b!2109645 (= e!1341605 (and tp!641522 mapRes!11067))))

(declare-fun condMapEmpty!11067 () Bool)

(declare-fun mapDefault!11066 () List!23465)

(assert (=> b!2109645 (= condMapEmpty!11067 (= (arr!3511 (_values!2574 (v!27913 (underlying!4783 (v!27914 (underlying!4784 (cache!2589 cacheUp!740))))))) ((as const (Array (_ BitVec 32) List!23465)) mapDefault!11066)))))

(declare-fun mapIsEmpty!11067 () Bool)

(assert (=> mapIsEmpty!11067 mapRes!11067))

(declare-fun tp!641523 () Bool)

(declare-fun tp!641528 () Bool)

(declare-fun array_inv!2527 (array!7924) Bool)

(assert (=> b!2109646 (= e!1341611 (and tp!641513 tp!641528 tp!641523 (array_inv!2525 (_keys!2591 (v!27913 (underlying!4783 (v!27914 (underlying!4784 (cache!2589 cacheUp!740))))))) (array_inv!2527 (_values!2574 (v!27913 (underlying!4783 (v!27914 (underlying!4784 (cache!2589 cacheUp!740))))))) e!1341605))))

(assert (= (and start!206248 res!916505) b!2109637))

(assert (= (and b!2109637 res!916501) b!2109644))

(assert (= (and b!2109644 res!916503) b!2109634))

(assert (= (and b!2109634 res!916504) b!2109638))

(assert (= (and b!2109638 res!916502) b!2109640))

(assert (= b!2109628 b!2109627))

(assert (= start!206248 b!2109628))

(assert (= (and b!2109635 condMapEmpty!11066) mapIsEmpty!11066))

(assert (= (and b!2109635 (not condMapEmpty!11066)) mapNonEmpty!11066))

(assert (= b!2109633 b!2109635))

(assert (= b!2109639 b!2109633))

(assert (= b!2109643 b!2109639))

(assert (= (and b!2109636 ((_ is LongMap!2293) (v!27912 (underlying!4782 (cache!2588 cacheDown!753))))) b!2109643))

(assert (= b!2109626 b!2109636))

(assert (= (and b!2109632 ((_ is HashMap!2207) (cache!2588 cacheDown!753))) b!2109626))

(assert (= start!206248 b!2109632))

(assert (= start!206248 b!2109625))

(assert (= start!206248 b!2109641))

(assert (= (and b!2109645 condMapEmpty!11067) mapIsEmpty!11067))

(assert (= (and b!2109645 (not condMapEmpty!11067)) mapNonEmpty!11067))

(assert (= b!2109646 b!2109645))

(assert (= b!2109630 b!2109646))

(assert (= b!2109624 b!2109630))

(assert (= (and b!2109629 ((_ is LongMap!2294) (v!27914 (underlying!4784 (cache!2589 cacheUp!740))))) b!2109624))

(assert (= b!2109631 b!2109629))

(assert (= (and b!2109642 ((_ is HashMap!2208) (cache!2589 cacheUp!740))) b!2109631))

(assert (= start!206248 b!2109642))

(declare-fun m!2566883 () Bool)

(assert (=> b!2109637 m!2566883))

(declare-fun m!2566885 () Bool)

(assert (=> b!2109634 m!2566885))

(declare-fun m!2566887 () Bool)

(assert (=> b!2109644 m!2566887))

(declare-fun m!2566889 () Bool)

(assert (=> mapNonEmpty!11066 m!2566889))

(declare-fun m!2566891 () Bool)

(assert (=> b!2109628 m!2566891))

(declare-fun m!2566893 () Bool)

(assert (=> b!2109628 m!2566893))

(declare-fun m!2566895 () Bool)

(assert (=> b!2109638 m!2566895))

(declare-fun m!2566897 () Bool)

(assert (=> b!2109638 m!2566897))

(assert (=> b!2109638 m!2566895))

(assert (=> b!2109638 m!2566897))

(declare-fun m!2566899 () Bool)

(assert (=> b!2109638 m!2566899))

(declare-fun m!2566901 () Bool)

(assert (=> b!2109640 m!2566901))

(declare-fun m!2566903 () Bool)

(assert (=> b!2109640 m!2566903))

(declare-fun m!2566905 () Bool)

(assert (=> b!2109641 m!2566905))

(declare-fun m!2566907 () Bool)

(assert (=> mapNonEmpty!11067 m!2566907))

(declare-fun m!2566909 () Bool)

(assert (=> b!2109646 m!2566909))

(declare-fun m!2566911 () Bool)

(assert (=> b!2109646 m!2566911))

(declare-fun m!2566913 () Bool)

(assert (=> b!2109625 m!2566913))

(declare-fun m!2566915 () Bool)

(assert (=> start!206248 m!2566915))

(declare-fun m!2566917 () Bool)

(assert (=> start!206248 m!2566917))

(declare-fun m!2566919 () Bool)

(assert (=> start!206248 m!2566919))

(declare-fun m!2566921 () Bool)

(assert (=> start!206248 m!2566921))

(declare-fun m!2566923 () Bool)

(assert (=> b!2109633 m!2566923))

(declare-fun m!2566925 () Bool)

(assert (=> b!2109633 m!2566925))

(check-sat (not b_next!61587) (not b!2109645) (not mapNonEmpty!11067) (not b!2109628) b_and!170445 (not b!2109644) (not mapNonEmpty!11066) (not b!2109641) b_and!170449 (not start!206248) (not b!2109646) b_and!170443 b_and!170447 (not b!2109638) (not b_next!61583) b_and!170453 b_and!170451 (not b_next!61589) (not b_next!61591) (not b!2109634) (not b!2109633) (not b!2109640) (not b!2109625) (not b!2109637) (not b!2109635) (not b_next!61581) (not b_next!61585))
(check-sat (not b_next!61587) b_and!170447 b_and!170445 b_and!170449 (not b_next!61591) b_and!170443 (not b_next!61583) b_and!170453 b_and!170451 (not b_next!61589) (not b_next!61581) (not b_next!61585))
(get-model)

(declare-fun d!642139 () Bool)

(assert (=> d!642139 (= (array_inv!2525 (_keys!2590 (v!27911 (underlying!4781 (v!27912 (underlying!4782 (cache!2588 cacheDown!753))))))) (bvsge (size!18241 (_keys!2590 (v!27911 (underlying!4781 (v!27912 (underlying!4782 (cache!2588 cacheDown!753))))))) #b00000000000000000000000000000000))))

(assert (=> b!2109633 d!642139))

(declare-fun d!642141 () Bool)

(assert (=> d!642141 (= (array_inv!2526 (_values!2573 (v!27911 (underlying!4781 (v!27912 (underlying!4782 (cache!2588 cacheDown!753))))))) (bvsge (size!18242 (_values!2573 (v!27911 (underlying!4781 (v!27912 (underlying!4782 (cache!2588 cacheDown!753))))))) #b00000000000000000000000000000000))))

(assert (=> b!2109633 d!642141))

(declare-fun d!642143 () Bool)

(declare-fun c!339028 () Bool)

(assert (=> d!642143 (= c!339028 ((_ is Node!7741) (c!339024 input!1654)))))

(declare-fun e!1341616 () Bool)

(assert (=> d!642143 (= (inv!30930 (c!339024 input!1654)) e!1341616)))

(declare-fun b!2109653 () Bool)

(declare-fun inv!30935 (Conc!7741) Bool)

(assert (=> b!2109653 (= e!1341616 (inv!30935 (c!339024 input!1654)))))

(declare-fun b!2109654 () Bool)

(declare-fun e!1341617 () Bool)

(assert (=> b!2109654 (= e!1341616 e!1341617)))

(declare-fun res!916510 () Bool)

(assert (=> b!2109654 (= res!916510 (not ((_ is Leaf!11306) (c!339024 input!1654))))))

(assert (=> b!2109654 (=> res!916510 e!1341617)))

(declare-fun b!2109655 () Bool)

(declare-fun inv!30936 (Conc!7741) Bool)

(assert (=> b!2109655 (= e!1341617 (inv!30936 (c!339024 input!1654)))))

(assert (= (and d!642143 c!339028) b!2109653))

(assert (= (and d!642143 (not c!339028)) b!2109654))

(assert (= (and b!2109654 (not res!916510)) b!2109655))

(declare-fun m!2566927 () Bool)

(assert (=> b!2109653 m!2566927))

(declare-fun m!2566929 () Bool)

(assert (=> b!2109655 m!2566929))

(assert (=> b!2109625 d!642143))

(declare-fun d!642145 () Bool)

(declare-fun res!916513 () Bool)

(declare-fun e!1341620 () Bool)

(assert (=> d!642145 (=> (not res!916513) (not e!1341620))))

(assert (=> d!642145 (= res!916513 ((_ is HashMap!2207) (cache!2588 cacheDown!753)))))

(assert (=> d!642145 (= (inv!30932 cacheDown!753) e!1341620)))

(declare-fun b!2109658 () Bool)

(declare-fun validCacheMapDown!229 (MutableMap!2207) Bool)

(assert (=> b!2109658 (= e!1341620 (validCacheMapDown!229 (cache!2588 cacheDown!753)))))

(assert (= (and d!642145 res!916513) b!2109658))

(declare-fun m!2566931 () Bool)

(assert (=> b!2109658 m!2566931))

(assert (=> start!206248 d!642145))

(declare-fun d!642147 () Bool)

(declare-fun isBalanced!2435 (Conc!7741) Bool)

(assert (=> d!642147 (= (inv!30933 input!1654) (isBalanced!2435 (c!339024 input!1654)))))

(declare-fun bs!441028 () Bool)

(assert (= bs!441028 d!642147))

(declare-fun m!2566933 () Bool)

(assert (=> bs!441028 m!2566933))

(assert (=> start!206248 d!642147))

(declare-fun d!642149 () Bool)

(assert (=> d!642149 (= (inv!30933 totalInput!548) (isBalanced!2435 (c!339024 totalInput!548)))))

(declare-fun bs!441029 () Bool)

(assert (= bs!441029 d!642149))

(declare-fun m!2566935 () Bool)

(assert (=> bs!441029 m!2566935))

(assert (=> start!206248 d!642149))

(declare-fun d!642151 () Bool)

(declare-fun res!916516 () Bool)

(declare-fun e!1341623 () Bool)

(assert (=> d!642151 (=> (not res!916516) (not e!1341623))))

(assert (=> d!642151 (= res!916516 ((_ is HashMap!2208) (cache!2589 cacheUp!740)))))

(assert (=> d!642151 (= (inv!30934 cacheUp!740) e!1341623)))

(declare-fun b!2109661 () Bool)

(declare-fun validCacheMapUp!231 (MutableMap!2208) Bool)

(assert (=> b!2109661 (= e!1341623 (validCacheMapUp!231 (cache!2589 cacheUp!740)))))

(assert (= (and d!642151 res!916516) b!2109661))

(declare-fun m!2566937 () Bool)

(assert (=> b!2109661 m!2566937))

(assert (=> start!206248 d!642151))

(declare-fun d!642153 () Bool)

(declare-fun c!339029 () Bool)

(assert (=> d!642153 (= c!339029 ((_ is Node!7741) (c!339024 totalInput!548)))))

(declare-fun e!1341624 () Bool)

(assert (=> d!642153 (= (inv!30930 (c!339024 totalInput!548)) e!1341624)))

(declare-fun b!2109662 () Bool)

(assert (=> b!2109662 (= e!1341624 (inv!30935 (c!339024 totalInput!548)))))

(declare-fun b!2109663 () Bool)

(declare-fun e!1341625 () Bool)

(assert (=> b!2109663 (= e!1341624 e!1341625)))

(declare-fun res!916517 () Bool)

(assert (=> b!2109663 (= res!916517 (not ((_ is Leaf!11306) (c!339024 totalInput!548))))))

(assert (=> b!2109663 (=> res!916517 e!1341625)))

(declare-fun b!2109664 () Bool)

(assert (=> b!2109664 (= e!1341625 (inv!30936 (c!339024 totalInput!548)))))

(assert (= (and d!642153 c!339029) b!2109662))

(assert (= (and d!642153 (not c!339029)) b!2109663))

(assert (= (and b!2109663 (not res!916517)) b!2109664))

(declare-fun m!2566939 () Bool)

(assert (=> b!2109662 m!2566939))

(declare-fun m!2566941 () Bool)

(assert (=> b!2109664 m!2566941))

(assert (=> b!2109641 d!642153))

(declare-fun d!642155 () Bool)

(declare-fun e!1341628 () Bool)

(assert (=> d!642155 e!1341628))

(declare-fun res!916522 () Bool)

(assert (=> d!642155 (=> (not res!916522) (not e!1341628))))

(declare-fun lt!791940 () tuple3!2652)

(assert (=> d!642155 (= res!916522 (= (_1!13148 lt!791940) (findLongestMatchWithZipperSequenceV2!66 (regex!4160 rule!236) input!1654 totalInput!548)))))

(declare-fun choose!12635 (Regex!5595 BalanceConc!15244 BalanceConc!15244 CacheUp!1502 CacheDown!1506) tuple3!2652)

(assert (=> d!642155 (= lt!791940 (choose!12635 (regex!4160 rule!236) input!1654 totalInput!548 cacheUp!740 cacheDown!753))))

(declare-fun validRegex!2201 (Regex!5595) Bool)

(assert (=> d!642155 (validRegex!2201 (regex!4160 rule!236))))

(assert (=> d!642155 (= (findLongestMatchWithZipperSequenceV2MemOnlyDeriv!40 (regex!4160 rule!236) input!1654 totalInput!548 cacheUp!740 cacheDown!753) lt!791940)))

(declare-fun b!2109669 () Bool)

(declare-fun res!916523 () Bool)

(assert (=> b!2109669 (=> (not res!916523) (not e!1341628))))

(assert (=> b!2109669 (= res!916523 (valid!1811 (_3!1790 lt!791940)))))

(declare-fun b!2109670 () Bool)

(assert (=> b!2109670 (= e!1341628 (valid!1812 (_2!13148 lt!791940)))))

(assert (= (and d!642155 res!916522) b!2109669))

(assert (= (and b!2109669 res!916523) b!2109670))

(assert (=> d!642155 m!2566903))

(declare-fun m!2566943 () Bool)

(assert (=> d!642155 m!2566943))

(declare-fun m!2566945 () Bool)

(assert (=> d!642155 m!2566945))

(declare-fun m!2566947 () Bool)

(assert (=> b!2109669 m!2566947))

(declare-fun m!2566949 () Bool)

(assert (=> b!2109670 m!2566949))

(assert (=> b!2109640 d!642155))

(declare-fun d!642157 () Bool)

(declare-fun lt!791943 () tuple2!22714)

(declare-datatypes ((tuple2!22716 0))(
  ( (tuple2!22717 (_1!13149 List!23461) (_2!13149 List!23461)) )
))
(declare-fun findLongestMatch!498 (Regex!5595 List!23461) tuple2!22716)

(assert (=> d!642157 (= (tuple2!22717 (list!9467 (_1!13147 lt!791943)) (list!9467 (_2!13147 lt!791943))) (findLongestMatch!498 (regex!4160 rule!236) (list!9467 input!1654)))))

(declare-fun choose!12636 (Regex!5595 BalanceConc!15244 BalanceConc!15244) tuple2!22714)

(assert (=> d!642157 (= lt!791943 (choose!12636 (regex!4160 rule!236) input!1654 totalInput!548))))

(assert (=> d!642157 (validRegex!2201 (regex!4160 rule!236))))

(assert (=> d!642157 (= (findLongestMatchWithZipperSequenceV2!66 (regex!4160 rule!236) input!1654 totalInput!548) lt!791943)))

(declare-fun bs!441030 () Bool)

(assert (= bs!441030 d!642157))

(assert (=> bs!441030 m!2566895))

(declare-fun m!2566951 () Bool)

(assert (=> bs!441030 m!2566951))

(assert (=> bs!441030 m!2566945))

(declare-fun m!2566953 () Bool)

(assert (=> bs!441030 m!2566953))

(assert (=> bs!441030 m!2566895))

(declare-fun m!2566955 () Bool)

(assert (=> bs!441030 m!2566955))

(declare-fun m!2566957 () Bool)

(assert (=> bs!441030 m!2566957))

(assert (=> b!2109640 d!642157))

(declare-fun d!642159 () Bool)

(declare-fun e!1341631 () Bool)

(assert (=> d!642159 e!1341631))

(declare-fun res!916526 () Bool)

(assert (=> d!642159 (=> res!916526 e!1341631)))

(declare-fun lt!791946 () Bool)

(assert (=> d!642159 (= res!916526 (not lt!791946))))

(declare-fun drop!1170 (List!23461 Int) List!23461)

(declare-fun size!18244 (List!23461) Int)

(assert (=> d!642159 (= lt!791946 (= (list!9467 input!1654) (drop!1170 (list!9467 totalInput!548) (- (size!18244 (list!9467 totalInput!548)) (size!18244 (list!9467 input!1654))))))))

(assert (=> d!642159 (= (isSuffix!574 (list!9467 input!1654) (list!9467 totalInput!548)) lt!791946)))

(declare-fun b!2109673 () Bool)

(assert (=> b!2109673 (= e!1341631 (>= (size!18244 (list!9467 totalInput!548)) (size!18244 (list!9467 input!1654))))))

(assert (= (and d!642159 (not res!916526)) b!2109673))

(assert (=> d!642159 m!2566897))

(declare-fun m!2566959 () Bool)

(assert (=> d!642159 m!2566959))

(assert (=> d!642159 m!2566895))

(declare-fun m!2566961 () Bool)

(assert (=> d!642159 m!2566961))

(assert (=> d!642159 m!2566897))

(declare-fun m!2566963 () Bool)

(assert (=> d!642159 m!2566963))

(assert (=> b!2109673 m!2566897))

(assert (=> b!2109673 m!2566959))

(assert (=> b!2109673 m!2566895))

(assert (=> b!2109673 m!2566961))

(assert (=> b!2109638 d!642159))

(declare-fun d!642161 () Bool)

(declare-fun list!9468 (Conc!7741) List!23461)

(assert (=> d!642161 (= (list!9467 input!1654) (list!9468 (c!339024 input!1654)))))

(declare-fun bs!441031 () Bool)

(assert (= bs!441031 d!642161))

(declare-fun m!2566965 () Bool)

(assert (=> bs!441031 m!2566965))

(assert (=> b!2109638 d!642161))

(declare-fun d!642163 () Bool)

(assert (=> d!642163 (= (list!9467 totalInput!548) (list!9468 (c!339024 totalInput!548)))))

(declare-fun bs!441032 () Bool)

(assert (= bs!441032 d!642163))

(declare-fun m!2566967 () Bool)

(assert (=> bs!441032 m!2566967))

(assert (=> b!2109638 d!642163))

(declare-fun d!642165 () Bool)

(declare-fun res!916531 () Bool)

(declare-fun e!1341634 () Bool)

(assert (=> d!642165 (=> (not res!916531) (not e!1341634))))

(assert (=> d!642165 (= res!916531 (validRegex!2201 (regex!4160 rule!236)))))

(assert (=> d!642165 (= (ruleValid!1283 thiss!16399 rule!236) e!1341634)))

(declare-fun b!2109678 () Bool)

(declare-fun res!916532 () Bool)

(assert (=> b!2109678 (=> (not res!916532) (not e!1341634))))

(declare-fun nullable!1674 (Regex!5595) Bool)

(assert (=> b!2109678 (= res!916532 (not (nullable!1674 (regex!4160 rule!236))))))

(declare-fun b!2109679 () Bool)

(assert (=> b!2109679 (= e!1341634 (not (= (tag!4650 rule!236) (String!26687 ""))))))

(assert (= (and d!642165 res!916531) b!2109678))

(assert (= (and b!2109678 res!916532) b!2109679))

(assert (=> d!642165 m!2566945))

(declare-fun m!2566969 () Bool)

(assert (=> b!2109678 m!2566969))

(assert (=> b!2109637 d!642165))

(declare-fun d!642167 () Bool)

(assert (=> d!642167 (= (array_inv!2525 (_keys!2591 (v!27913 (underlying!4783 (v!27914 (underlying!4784 (cache!2589 cacheUp!740))))))) (bvsge (size!18241 (_keys!2591 (v!27913 (underlying!4783 (v!27914 (underlying!4784 (cache!2589 cacheUp!740))))))) #b00000000000000000000000000000000))))

(assert (=> b!2109646 d!642167))

(declare-fun d!642169 () Bool)

(assert (=> d!642169 (= (array_inv!2527 (_values!2574 (v!27913 (underlying!4783 (v!27914 (underlying!4784 (cache!2589 cacheUp!740))))))) (bvsge (size!18243 (_values!2574 (v!27913 (underlying!4783 (v!27914 (underlying!4784 (cache!2589 cacheUp!740))))))) #b00000000000000000000000000000000))))

(assert (=> b!2109646 d!642169))

(declare-fun d!642171 () Bool)

(assert (=> d!642171 (= (inv!30927 (tag!4650 rule!236)) (= (mod (str.len (value!130193 (tag!4650 rule!236))) 2) 0))))

(assert (=> b!2109628 d!642171))

(declare-fun d!642173 () Bool)

(declare-fun res!916535 () Bool)

(declare-fun e!1341637 () Bool)

(assert (=> d!642173 (=> (not res!916535) (not e!1341637))))

(declare-fun semiInverseModEq!1661 (Int Int) Bool)

(assert (=> d!642173 (= res!916535 (semiInverseModEq!1661 (toChars!5730 (transformation!4160 rule!236)) (toValue!5871 (transformation!4160 rule!236))))))

(assert (=> d!642173 (= (inv!30931 (transformation!4160 rule!236)) e!1341637)))

(declare-fun b!2109682 () Bool)

(declare-fun equivClasses!1588 (Int Int) Bool)

(assert (=> b!2109682 (= e!1341637 (equivClasses!1588 (toChars!5730 (transformation!4160 rule!236)) (toValue!5871 (transformation!4160 rule!236))))))

(assert (= (and d!642173 res!916535) b!2109682))

(declare-fun m!2566971 () Bool)

(assert (=> d!642173 m!2566971))

(declare-fun m!2566973 () Bool)

(assert (=> b!2109682 m!2566973))

(assert (=> b!2109628 d!642173))

(declare-fun d!642175 () Bool)

(assert (=> d!642175 (= (valid!1811 cacheDown!753) (validCacheMapDown!229 (cache!2588 cacheDown!753)))))

(declare-fun bs!441033 () Bool)

(assert (= bs!441033 d!642175))

(assert (=> bs!441033 m!2566931))

(assert (=> b!2109634 d!642175))

(declare-fun d!642177 () Bool)

(assert (=> d!642177 (= (valid!1812 cacheUp!740) (validCacheMapUp!231 (cache!2589 cacheUp!740)))))

(declare-fun bs!441034 () Bool)

(assert (= bs!441034 d!642177))

(assert (=> bs!441034 m!2566937))

(assert (=> b!2109644 d!642177))

(declare-fun setNonEmpty!14012 () Bool)

(declare-fun e!1341645 () Bool)

(declare-fun setElem!14012 () Context!2330)

(declare-fun setRes!14012 () Bool)

(declare-fun tp!641541 () Bool)

(declare-fun inv!30937 (Context!2330) Bool)

(assert (=> setNonEmpty!14012 (= setRes!14012 (and tp!641541 (inv!30937 setElem!14012) e!1341645))))

(declare-fun setRest!14012 () (InoxSet Context!2330))

(assert (=> setNonEmpty!14012 (= (_2!13144 (h!28781 (zeroValue!2551 (v!27911 (underlying!4781 (v!27912 (underlying!4782 (cache!2588 cacheDown!753)))))))) ((_ map or) (store ((as const (Array Context!2330 Bool)) false) setElem!14012 true) setRest!14012))))

(declare-fun b!2109691 () Bool)

(declare-fun e!1341646 () Bool)

(declare-fun tp!641544 () Bool)

(assert (=> b!2109691 (= e!1341646 tp!641544)))

(declare-fun tp!641542 () Bool)

(declare-fun tp!641545 () Bool)

(declare-fun tp_is_empty!9385 () Bool)

(declare-fun e!1341644 () Bool)

(declare-fun b!2109692 () Bool)

(assert (=> b!2109692 (= e!1341644 (and tp!641542 (inv!30937 (_2!13143 (_1!13144 (h!28781 (zeroValue!2551 (v!27911 (underlying!4781 (v!27912 (underlying!4782 (cache!2588 cacheDown!753)))))))))) e!1341646 tp_is_empty!9385 setRes!14012 tp!641545))))

(declare-fun condSetEmpty!14012 () Bool)

(assert (=> b!2109692 (= condSetEmpty!14012 (= (_2!13144 (h!28781 (zeroValue!2551 (v!27911 (underlying!4781 (v!27912 (underlying!4782 (cache!2588 cacheDown!753)))))))) ((as const (Array Context!2330 Bool)) false)))))

(declare-fun b!2109693 () Bool)

(declare-fun tp!641543 () Bool)

(assert (=> b!2109693 (= e!1341645 tp!641543)))

(assert (=> b!2109633 (= tp!641525 e!1341644)))

(declare-fun setIsEmpty!14012 () Bool)

(assert (=> setIsEmpty!14012 setRes!14012))

(assert (= b!2109692 b!2109691))

(assert (= (and b!2109692 condSetEmpty!14012) setIsEmpty!14012))

(assert (= (and b!2109692 (not condSetEmpty!14012)) setNonEmpty!14012))

(assert (= setNonEmpty!14012 b!2109693))

(assert (= (and b!2109633 ((_ is Cons!23380) (zeroValue!2551 (v!27911 (underlying!4781 (v!27912 (underlying!4782 (cache!2588 cacheDown!753)))))))) b!2109692))

(declare-fun m!2566975 () Bool)

(assert (=> setNonEmpty!14012 m!2566975))

(declare-fun m!2566977 () Bool)

(assert (=> b!2109692 m!2566977))

(declare-fun setRes!14013 () Bool)

(declare-fun setNonEmpty!14013 () Bool)

(declare-fun tp!641546 () Bool)

(declare-fun setElem!14013 () Context!2330)

(declare-fun e!1341648 () Bool)

(assert (=> setNonEmpty!14013 (= setRes!14013 (and tp!641546 (inv!30937 setElem!14013) e!1341648))))

(declare-fun setRest!14013 () (InoxSet Context!2330))

(assert (=> setNonEmpty!14013 (= (_2!13144 (h!28781 (minValue!2551 (v!27911 (underlying!4781 (v!27912 (underlying!4782 (cache!2588 cacheDown!753)))))))) ((_ map or) (store ((as const (Array Context!2330 Bool)) false) setElem!14013 true) setRest!14013))))

(declare-fun b!2109694 () Bool)

(declare-fun e!1341649 () Bool)

(declare-fun tp!641549 () Bool)

(assert (=> b!2109694 (= e!1341649 tp!641549)))

(declare-fun b!2109695 () Bool)

(declare-fun e!1341647 () Bool)

(declare-fun tp!641550 () Bool)

(declare-fun tp!641547 () Bool)

(assert (=> b!2109695 (= e!1341647 (and tp!641547 (inv!30937 (_2!13143 (_1!13144 (h!28781 (minValue!2551 (v!27911 (underlying!4781 (v!27912 (underlying!4782 (cache!2588 cacheDown!753)))))))))) e!1341649 tp_is_empty!9385 setRes!14013 tp!641550))))

(declare-fun condSetEmpty!14013 () Bool)

(assert (=> b!2109695 (= condSetEmpty!14013 (= (_2!13144 (h!28781 (minValue!2551 (v!27911 (underlying!4781 (v!27912 (underlying!4782 (cache!2588 cacheDown!753)))))))) ((as const (Array Context!2330 Bool)) false)))))

(declare-fun b!2109696 () Bool)

(declare-fun tp!641548 () Bool)

(assert (=> b!2109696 (= e!1341648 tp!641548)))

(assert (=> b!2109633 (= tp!641526 e!1341647)))

(declare-fun setIsEmpty!14013 () Bool)

(assert (=> setIsEmpty!14013 setRes!14013))

(assert (= b!2109695 b!2109694))

(assert (= (and b!2109695 condSetEmpty!14013) setIsEmpty!14013))

(assert (= (and b!2109695 (not condSetEmpty!14013)) setNonEmpty!14013))

(assert (= setNonEmpty!14013 b!2109696))

(assert (= (and b!2109633 ((_ is Cons!23380) (minValue!2551 (v!27911 (underlying!4781 (v!27912 (underlying!4782 (cache!2588 cacheDown!753)))))))) b!2109695))

(declare-fun m!2566979 () Bool)

(assert (=> setNonEmpty!14013 m!2566979))

(declare-fun m!2566981 () Bool)

(assert (=> b!2109695 m!2566981))

(declare-fun b!2109705 () Bool)

(declare-fun tp!641558 () Bool)

(declare-fun tp!641557 () Bool)

(declare-fun e!1341655 () Bool)

(assert (=> b!2109705 (= e!1341655 (and (inv!30930 (left!18189 (c!339024 input!1654))) tp!641557 (inv!30930 (right!18519 (c!339024 input!1654))) tp!641558))))

(declare-fun b!2109707 () Bool)

(declare-fun e!1341654 () Bool)

(declare-fun tp!641559 () Bool)

(assert (=> b!2109707 (= e!1341654 tp!641559)))

(declare-fun b!2109706 () Bool)

(declare-fun inv!30938 (IArray!15487) Bool)

(assert (=> b!2109706 (= e!1341655 (and (inv!30938 (xs!10683 (c!339024 input!1654))) e!1341654))))

(assert (=> b!2109625 (= tp!641530 (and (inv!30930 (c!339024 input!1654)) e!1341655))))

(assert (= (and b!2109625 ((_ is Node!7741) (c!339024 input!1654))) b!2109705))

(assert (= b!2109706 b!2109707))

(assert (= (and b!2109625 ((_ is Leaf!11306) (c!339024 input!1654))) b!2109706))

(declare-fun m!2566983 () Bool)

(assert (=> b!2109705 m!2566983))

(declare-fun m!2566985 () Bool)

(assert (=> b!2109705 m!2566985))

(declare-fun m!2566987 () Bool)

(assert (=> b!2109706 m!2566987))

(assert (=> b!2109625 m!2566913))

(declare-fun mapNonEmpty!11070 () Bool)

(declare-fun mapRes!11070 () Bool)

(declare-fun tp!641591 () Bool)

(declare-fun e!1341673 () Bool)

(assert (=> mapNonEmpty!11070 (= mapRes!11070 (and tp!641591 e!1341673))))

(declare-fun mapValue!11070 () List!23464)

(declare-fun mapKey!11070 () (_ BitVec 32))

(declare-fun mapRest!11070 () (Array (_ BitVec 32) List!23464))

(assert (=> mapNonEmpty!11070 (= mapRest!11067 (store mapRest!11070 mapKey!11070 mapValue!11070))))

(declare-fun e!1341668 () Bool)

(declare-fun b!2109722 () Bool)

(declare-fun setRes!14019 () Bool)

(declare-fun tp!641587 () Bool)

(declare-fun tp!641589 () Bool)

(assert (=> b!2109722 (= e!1341673 (and tp!641587 (inv!30937 (_2!13143 (_1!13144 (h!28781 mapValue!11070)))) e!1341668 tp_is_empty!9385 setRes!14019 tp!641589))))

(declare-fun condSetEmpty!14018 () Bool)

(assert (=> b!2109722 (= condSetEmpty!14018 (= (_2!13144 (h!28781 mapValue!11070)) ((as const (Array Context!2330 Bool)) false)))))

(declare-fun setIsEmpty!14018 () Bool)

(assert (=> setIsEmpty!14018 setRes!14019))

(declare-fun setIsEmpty!14019 () Bool)

(declare-fun setRes!14018 () Bool)

(assert (=> setIsEmpty!14019 setRes!14018))

(declare-fun setElem!14018 () Context!2330)

(declare-fun e!1341669 () Bool)

(declare-fun tp!641592 () Bool)

(declare-fun setNonEmpty!14018 () Bool)

(assert (=> setNonEmpty!14018 (= setRes!14019 (and tp!641592 (inv!30937 setElem!14018) e!1341669))))

(declare-fun setRest!14018 () (InoxSet Context!2330))

(assert (=> setNonEmpty!14018 (= (_2!13144 (h!28781 mapValue!11070)) ((_ map or) (store ((as const (Array Context!2330 Bool)) false) setElem!14018 true) setRest!14018))))

(declare-fun b!2109723 () Bool)

(declare-fun tp!641588 () Bool)

(assert (=> b!2109723 (= e!1341668 tp!641588)))

(declare-fun b!2109724 () Bool)

(declare-fun e!1341671 () Bool)

(declare-fun tp!641586 () Bool)

(assert (=> b!2109724 (= e!1341671 tp!641586)))

(declare-fun setNonEmpty!14019 () Bool)

(declare-fun setElem!14019 () Context!2330)

(declare-fun tp!641585 () Bool)

(declare-fun e!1341672 () Bool)

(assert (=> setNonEmpty!14019 (= setRes!14018 (and tp!641585 (inv!30937 setElem!14019) e!1341672))))

(declare-fun mapDefault!11070 () List!23464)

(declare-fun setRest!14019 () (InoxSet Context!2330))

(assert (=> setNonEmpty!14019 (= (_2!13144 (h!28781 mapDefault!11070)) ((_ map or) (store ((as const (Array Context!2330 Bool)) false) setElem!14019 true) setRest!14019))))

(declare-fun tp!641582 () Bool)

(declare-fun tp!641584 () Bool)

(declare-fun b!2109725 () Bool)

(declare-fun e!1341670 () Bool)

(assert (=> b!2109725 (= e!1341670 (and tp!641584 (inv!30937 (_2!13143 (_1!13144 (h!28781 mapDefault!11070)))) e!1341671 tp_is_empty!9385 setRes!14018 tp!641582))))

(declare-fun condSetEmpty!14019 () Bool)

(assert (=> b!2109725 (= condSetEmpty!14019 (= (_2!13144 (h!28781 mapDefault!11070)) ((as const (Array Context!2330 Bool)) false)))))

(declare-fun mapIsEmpty!11070 () Bool)

(assert (=> mapIsEmpty!11070 mapRes!11070))

(declare-fun condMapEmpty!11070 () Bool)

(assert (=> mapNonEmpty!11066 (= condMapEmpty!11070 (= mapRest!11067 ((as const (Array (_ BitVec 32) List!23464)) mapDefault!11070)))))

(assert (=> mapNonEmpty!11066 (= tp!641529 (and e!1341670 mapRes!11070))))

(declare-fun b!2109726 () Bool)

(declare-fun tp!641583 () Bool)

(assert (=> b!2109726 (= e!1341669 tp!641583)))

(declare-fun b!2109727 () Bool)

(declare-fun tp!641590 () Bool)

(assert (=> b!2109727 (= e!1341672 tp!641590)))

(assert (= (and mapNonEmpty!11066 condMapEmpty!11070) mapIsEmpty!11070))

(assert (= (and mapNonEmpty!11066 (not condMapEmpty!11070)) mapNonEmpty!11070))

(assert (= b!2109722 b!2109723))

(assert (= (and b!2109722 condSetEmpty!14018) setIsEmpty!14018))

(assert (= (and b!2109722 (not condSetEmpty!14018)) setNonEmpty!14018))

(assert (= setNonEmpty!14018 b!2109726))

(assert (= (and mapNonEmpty!11070 ((_ is Cons!23380) mapValue!11070)) b!2109722))

(assert (= b!2109725 b!2109724))

(assert (= (and b!2109725 condSetEmpty!14019) setIsEmpty!14019))

(assert (= (and b!2109725 (not condSetEmpty!14019)) setNonEmpty!14019))

(assert (= setNonEmpty!14019 b!2109727))

(assert (= (and mapNonEmpty!11066 ((_ is Cons!23380) mapDefault!11070)) b!2109725))

(declare-fun m!2566989 () Bool)

(assert (=> b!2109725 m!2566989))

(declare-fun m!2566991 () Bool)

(assert (=> setNonEmpty!14019 m!2566991))

(declare-fun m!2566993 () Bool)

(assert (=> setNonEmpty!14018 m!2566993))

(declare-fun m!2566995 () Bool)

(assert (=> b!2109722 m!2566995))

(declare-fun m!2566997 () Bool)

(assert (=> mapNonEmpty!11070 m!2566997))

(declare-fun e!1341675 () Bool)

(declare-fun tp!641593 () Bool)

(declare-fun setNonEmpty!14020 () Bool)

(declare-fun setElem!14020 () Context!2330)

(declare-fun setRes!14020 () Bool)

(assert (=> setNonEmpty!14020 (= setRes!14020 (and tp!641593 (inv!30937 setElem!14020) e!1341675))))

(declare-fun setRest!14020 () (InoxSet Context!2330))

(assert (=> setNonEmpty!14020 (= (_2!13144 (h!28781 mapValue!11067)) ((_ map or) (store ((as const (Array Context!2330 Bool)) false) setElem!14020 true) setRest!14020))))

(declare-fun b!2109728 () Bool)

(declare-fun e!1341676 () Bool)

(declare-fun tp!641596 () Bool)

(assert (=> b!2109728 (= e!1341676 tp!641596)))

(declare-fun tp!641594 () Bool)

(declare-fun tp!641597 () Bool)

(declare-fun b!2109729 () Bool)

(declare-fun e!1341674 () Bool)

(assert (=> b!2109729 (= e!1341674 (and tp!641594 (inv!30937 (_2!13143 (_1!13144 (h!28781 mapValue!11067)))) e!1341676 tp_is_empty!9385 setRes!14020 tp!641597))))

(declare-fun condSetEmpty!14020 () Bool)

(assert (=> b!2109729 (= condSetEmpty!14020 (= (_2!13144 (h!28781 mapValue!11067)) ((as const (Array Context!2330 Bool)) false)))))

(declare-fun b!2109730 () Bool)

(declare-fun tp!641595 () Bool)

(assert (=> b!2109730 (= e!1341675 tp!641595)))

(assert (=> mapNonEmpty!11066 (= tp!641521 e!1341674)))

(declare-fun setIsEmpty!14020 () Bool)

(assert (=> setIsEmpty!14020 setRes!14020))

(assert (= b!2109729 b!2109728))

(assert (= (and b!2109729 condSetEmpty!14020) setIsEmpty!14020))

(assert (= (and b!2109729 (not condSetEmpty!14020)) setNonEmpty!14020))

(assert (= setNonEmpty!14020 b!2109730))

(assert (= (and mapNonEmpty!11066 ((_ is Cons!23380) mapValue!11067)) b!2109729))

(declare-fun m!2566999 () Bool)

(assert (=> setNonEmpty!14020 m!2566999))

(declare-fun m!2567001 () Bool)

(assert (=> b!2109729 m!2567001))

(declare-fun mapNonEmpty!11073 () Bool)

(declare-fun mapRes!11073 () Bool)

(declare-fun tp!641617 () Bool)

(declare-fun e!1341689 () Bool)

(assert (=> mapNonEmpty!11073 (= mapRes!11073 (and tp!641617 e!1341689))))

(declare-fun mapRest!11073 () (Array (_ BitVec 32) List!23465))

(declare-fun mapValue!11073 () List!23465)

(declare-fun mapKey!11073 () (_ BitVec 32))

(assert (=> mapNonEmpty!11073 (= mapRest!11066 (store mapRest!11073 mapKey!11073 mapValue!11073))))

(declare-fun b!2109745 () Bool)

(declare-fun e!1341690 () Bool)

(declare-fun tp!641620 () Bool)

(assert (=> b!2109745 (= e!1341690 tp!641620)))

(declare-fun mapIsEmpty!11073 () Bool)

(assert (=> mapIsEmpty!11073 mapRes!11073))

(declare-fun b!2109747 () Bool)

(declare-fun e!1341691 () Bool)

(declare-fun tp!641619 () Bool)

(assert (=> b!2109747 (= e!1341691 tp!641619)))

(declare-fun setNonEmpty!14025 () Bool)

(declare-fun tp!641622 () Bool)

(declare-fun setRes!14025 () Bool)

(declare-fun setElem!14025 () Context!2330)

(assert (=> setNonEmpty!14025 (= setRes!14025 (and tp!641622 (inv!30937 setElem!14025) e!1341691))))

(declare-fun setRest!14025 () (InoxSet Context!2330))

(assert (=> setNonEmpty!14025 (= (_2!13146 (h!28782 mapValue!11073)) ((_ map or) (store ((as const (Array Context!2330 Bool)) false) setElem!14025 true) setRest!14025))))

(declare-fun setNonEmpty!14026 () Bool)

(declare-fun setRes!14026 () Bool)

(declare-fun e!1341693 () Bool)

(declare-fun setElem!14026 () Context!2330)

(declare-fun tp!641624 () Bool)

(assert (=> setNonEmpty!14026 (= setRes!14026 (and tp!641624 (inv!30937 setElem!14026) e!1341693))))

(declare-fun mapDefault!11073 () List!23465)

(declare-fun setRest!14026 () (InoxSet Context!2330))

(assert (=> setNonEmpty!14026 (= (_2!13146 (h!28782 mapDefault!11073)) ((_ map or) (store ((as const (Array Context!2330 Bool)) false) setElem!14026 true) setRest!14026))))

(declare-fun setIsEmpty!14025 () Bool)

(assert (=> setIsEmpty!14025 setRes!14026))

(declare-fun b!2109748 () Bool)

(declare-fun tp!641623 () Bool)

(assert (=> b!2109748 (= e!1341693 tp!641623)))

(declare-fun setIsEmpty!14026 () Bool)

(assert (=> setIsEmpty!14026 setRes!14025))

(declare-fun condMapEmpty!11073 () Bool)

(assert (=> mapNonEmpty!11067 (= condMapEmpty!11073 (= mapRest!11066 ((as const (Array (_ BitVec 32) List!23465)) mapDefault!11073)))))

(declare-fun e!1341692 () Bool)

(assert (=> mapNonEmpty!11067 (= tp!641520 (and e!1341692 mapRes!11073))))

(declare-fun e!1341694 () Bool)

(declare-fun tp!641616 () Bool)

(declare-fun b!2109746 () Bool)

(assert (=> b!2109746 (= e!1341689 (and (inv!30937 (_1!13145 (_1!13146 (h!28782 mapValue!11073)))) e!1341694 tp_is_empty!9385 setRes!14025 tp!641616))))

(declare-fun condSetEmpty!14026 () Bool)

(assert (=> b!2109746 (= condSetEmpty!14026 (= (_2!13146 (h!28782 mapValue!11073)) ((as const (Array Context!2330 Bool)) false)))))

(declare-fun tp!641621 () Bool)

(declare-fun b!2109749 () Bool)

(assert (=> b!2109749 (= e!1341692 (and (inv!30937 (_1!13145 (_1!13146 (h!28782 mapDefault!11073)))) e!1341690 tp_is_empty!9385 setRes!14026 tp!641621))))

(declare-fun condSetEmpty!14025 () Bool)

(assert (=> b!2109749 (= condSetEmpty!14025 (= (_2!13146 (h!28782 mapDefault!11073)) ((as const (Array Context!2330 Bool)) false)))))

(declare-fun b!2109750 () Bool)

(declare-fun tp!641618 () Bool)

(assert (=> b!2109750 (= e!1341694 tp!641618)))

(assert (= (and mapNonEmpty!11067 condMapEmpty!11073) mapIsEmpty!11073))

(assert (= (and mapNonEmpty!11067 (not condMapEmpty!11073)) mapNonEmpty!11073))

(assert (= b!2109746 b!2109750))

(assert (= (and b!2109746 condSetEmpty!14026) setIsEmpty!14026))

(assert (= (and b!2109746 (not condSetEmpty!14026)) setNonEmpty!14025))

(assert (= setNonEmpty!14025 b!2109747))

(assert (= (and mapNonEmpty!11073 ((_ is Cons!23381) mapValue!11073)) b!2109746))

(assert (= b!2109749 b!2109745))

(assert (= (and b!2109749 condSetEmpty!14025) setIsEmpty!14025))

(assert (= (and b!2109749 (not condSetEmpty!14025)) setNonEmpty!14026))

(assert (= setNonEmpty!14026 b!2109748))

(assert (= (and mapNonEmpty!11067 ((_ is Cons!23381) mapDefault!11073)) b!2109749))

(declare-fun m!2567003 () Bool)

(assert (=> mapNonEmpty!11073 m!2567003))

(declare-fun m!2567005 () Bool)

(assert (=> b!2109749 m!2567005))

(declare-fun m!2567007 () Bool)

(assert (=> setNonEmpty!14026 m!2567007))

(declare-fun m!2567009 () Bool)

(assert (=> setNonEmpty!14025 m!2567009))

(declare-fun m!2567011 () Bool)

(assert (=> b!2109746 m!2567011))

(declare-fun e!1341701 () Bool)

(declare-fun e!1341703 () Bool)

(declare-fun setRes!14029 () Bool)

(declare-fun b!2109759 () Bool)

(declare-fun tp!641633 () Bool)

(assert (=> b!2109759 (= e!1341701 (and (inv!30937 (_1!13145 (_1!13146 (h!28782 mapValue!11066)))) e!1341703 tp_is_empty!9385 setRes!14029 tp!641633))))

(declare-fun condSetEmpty!14029 () Bool)

(assert (=> b!2109759 (= condSetEmpty!14029 (= (_2!13146 (h!28782 mapValue!11066)) ((as const (Array Context!2330 Bool)) false)))))

(declare-fun setNonEmpty!14029 () Bool)

(declare-fun tp!641635 () Bool)

(declare-fun e!1341702 () Bool)

(declare-fun setElem!14029 () Context!2330)

(assert (=> setNonEmpty!14029 (= setRes!14029 (and tp!641635 (inv!30937 setElem!14029) e!1341702))))

(declare-fun setRest!14029 () (InoxSet Context!2330))

(assert (=> setNonEmpty!14029 (= (_2!13146 (h!28782 mapValue!11066)) ((_ map or) (store ((as const (Array Context!2330 Bool)) false) setElem!14029 true) setRest!14029))))

(assert (=> mapNonEmpty!11067 (= tp!641524 e!1341701)))

(declare-fun b!2109760 () Bool)

(declare-fun tp!641636 () Bool)

(assert (=> b!2109760 (= e!1341702 tp!641636)))

(declare-fun b!2109761 () Bool)

(declare-fun tp!641634 () Bool)

(assert (=> b!2109761 (= e!1341703 tp!641634)))

(declare-fun setIsEmpty!14029 () Bool)

(assert (=> setIsEmpty!14029 setRes!14029))

(assert (= b!2109759 b!2109761))

(assert (= (and b!2109759 condSetEmpty!14029) setIsEmpty!14029))

(assert (= (and b!2109759 (not condSetEmpty!14029)) setNonEmpty!14029))

(assert (= setNonEmpty!14029 b!2109760))

(assert (= (and mapNonEmpty!11067 ((_ is Cons!23381) mapValue!11066)) b!2109759))

(declare-fun m!2567013 () Bool)

(assert (=> b!2109759 m!2567013))

(declare-fun m!2567015 () Bool)

(assert (=> setNonEmpty!14029 m!2567015))

(declare-fun tp!641637 () Bool)

(declare-fun e!1341706 () Bool)

(declare-fun setRes!14030 () Bool)

(declare-fun b!2109762 () Bool)

(declare-fun e!1341704 () Bool)

(assert (=> b!2109762 (= e!1341704 (and (inv!30937 (_1!13145 (_1!13146 (h!28782 (zeroValue!2552 (v!27913 (underlying!4783 (v!27914 (underlying!4784 (cache!2589 cacheUp!740)))))))))) e!1341706 tp_is_empty!9385 setRes!14030 tp!641637))))

(declare-fun condSetEmpty!14030 () Bool)

(assert (=> b!2109762 (= condSetEmpty!14030 (= (_2!13146 (h!28782 (zeroValue!2552 (v!27913 (underlying!4783 (v!27914 (underlying!4784 (cache!2589 cacheUp!740)))))))) ((as const (Array Context!2330 Bool)) false)))))

(declare-fun tp!641639 () Bool)

(declare-fun setNonEmpty!14030 () Bool)

(declare-fun setElem!14030 () Context!2330)

(declare-fun e!1341705 () Bool)

(assert (=> setNonEmpty!14030 (= setRes!14030 (and tp!641639 (inv!30937 setElem!14030) e!1341705))))

(declare-fun setRest!14030 () (InoxSet Context!2330))

(assert (=> setNonEmpty!14030 (= (_2!13146 (h!28782 (zeroValue!2552 (v!27913 (underlying!4783 (v!27914 (underlying!4784 (cache!2589 cacheUp!740)))))))) ((_ map or) (store ((as const (Array Context!2330 Bool)) false) setElem!14030 true) setRest!14030))))

(assert (=> b!2109646 (= tp!641528 e!1341704)))

(declare-fun b!2109763 () Bool)

(declare-fun tp!641640 () Bool)

(assert (=> b!2109763 (= e!1341705 tp!641640)))

(declare-fun b!2109764 () Bool)

(declare-fun tp!641638 () Bool)

(assert (=> b!2109764 (= e!1341706 tp!641638)))

(declare-fun setIsEmpty!14030 () Bool)

(assert (=> setIsEmpty!14030 setRes!14030))

(assert (= b!2109762 b!2109764))

(assert (= (and b!2109762 condSetEmpty!14030) setIsEmpty!14030))

(assert (= (and b!2109762 (not condSetEmpty!14030)) setNonEmpty!14030))

(assert (= setNonEmpty!14030 b!2109763))

(assert (= (and b!2109646 ((_ is Cons!23381) (zeroValue!2552 (v!27913 (underlying!4783 (v!27914 (underlying!4784 (cache!2589 cacheUp!740)))))))) b!2109762))

(declare-fun m!2567017 () Bool)

(assert (=> b!2109762 m!2567017))

(declare-fun m!2567019 () Bool)

(assert (=> setNonEmpty!14030 m!2567019))

(declare-fun e!1341709 () Bool)

(declare-fun e!1341707 () Bool)

(declare-fun setRes!14031 () Bool)

(declare-fun tp!641641 () Bool)

(declare-fun b!2109765 () Bool)

(assert (=> b!2109765 (= e!1341707 (and (inv!30937 (_1!13145 (_1!13146 (h!28782 (minValue!2552 (v!27913 (underlying!4783 (v!27914 (underlying!4784 (cache!2589 cacheUp!740)))))))))) e!1341709 tp_is_empty!9385 setRes!14031 tp!641641))))

(declare-fun condSetEmpty!14031 () Bool)

(assert (=> b!2109765 (= condSetEmpty!14031 (= (_2!13146 (h!28782 (minValue!2552 (v!27913 (underlying!4783 (v!27914 (underlying!4784 (cache!2589 cacheUp!740)))))))) ((as const (Array Context!2330 Bool)) false)))))

(declare-fun setNonEmpty!14031 () Bool)

(declare-fun tp!641643 () Bool)

(declare-fun setElem!14031 () Context!2330)

(declare-fun e!1341708 () Bool)

(assert (=> setNonEmpty!14031 (= setRes!14031 (and tp!641643 (inv!30937 setElem!14031) e!1341708))))

(declare-fun setRest!14031 () (InoxSet Context!2330))

(assert (=> setNonEmpty!14031 (= (_2!13146 (h!28782 (minValue!2552 (v!27913 (underlying!4783 (v!27914 (underlying!4784 (cache!2589 cacheUp!740)))))))) ((_ map or) (store ((as const (Array Context!2330 Bool)) false) setElem!14031 true) setRest!14031))))

(assert (=> b!2109646 (= tp!641523 e!1341707)))

(declare-fun b!2109766 () Bool)

(declare-fun tp!641644 () Bool)

(assert (=> b!2109766 (= e!1341708 tp!641644)))

(declare-fun b!2109767 () Bool)

(declare-fun tp!641642 () Bool)

(assert (=> b!2109767 (= e!1341709 tp!641642)))

(declare-fun setIsEmpty!14031 () Bool)

(assert (=> setIsEmpty!14031 setRes!14031))

(assert (= b!2109765 b!2109767))

(assert (= (and b!2109765 condSetEmpty!14031) setIsEmpty!14031))

(assert (= (and b!2109765 (not condSetEmpty!14031)) setNonEmpty!14031))

(assert (= setNonEmpty!14031 b!2109766))

(assert (= (and b!2109646 ((_ is Cons!23381) (minValue!2552 (v!27913 (underlying!4783 (v!27914 (underlying!4784 (cache!2589 cacheUp!740)))))))) b!2109765))

(declare-fun m!2567021 () Bool)

(assert (=> b!2109765 m!2567021))

(declare-fun m!2567023 () Bool)

(assert (=> setNonEmpty!14031 m!2567023))

(declare-fun tp!641646 () Bool)

(declare-fun e!1341711 () Bool)

(declare-fun b!2109768 () Bool)

(declare-fun tp!641645 () Bool)

(assert (=> b!2109768 (= e!1341711 (and (inv!30930 (left!18189 (c!339024 totalInput!548))) tp!641645 (inv!30930 (right!18519 (c!339024 totalInput!548))) tp!641646))))

(declare-fun b!2109770 () Bool)

(declare-fun e!1341710 () Bool)

(declare-fun tp!641647 () Bool)

(assert (=> b!2109770 (= e!1341710 tp!641647)))

(declare-fun b!2109769 () Bool)

(assert (=> b!2109769 (= e!1341711 (and (inv!30938 (xs!10683 (c!339024 totalInput!548))) e!1341710))))

(assert (=> b!2109641 (= tp!641527 (and (inv!30930 (c!339024 totalInput!548)) e!1341711))))

(assert (= (and b!2109641 ((_ is Node!7741) (c!339024 totalInput!548))) b!2109768))

(assert (= b!2109769 b!2109770))

(assert (= (and b!2109641 ((_ is Leaf!11306) (c!339024 totalInput!548))) b!2109769))

(declare-fun m!2567025 () Bool)

(assert (=> b!2109768 m!2567025))

(declare-fun m!2567027 () Bool)

(assert (=> b!2109768 m!2567027))

(declare-fun m!2567029 () Bool)

(assert (=> b!2109769 m!2567029))

(assert (=> b!2109641 m!2566905))

(declare-fun b!2109784 () Bool)

(declare-fun e!1341714 () Bool)

(declare-fun tp!641659 () Bool)

(declare-fun tp!641658 () Bool)

(assert (=> b!2109784 (= e!1341714 (and tp!641659 tp!641658))))

(assert (=> b!2109628 (= tp!641512 e!1341714)))

(declare-fun b!2109783 () Bool)

(declare-fun tp!641661 () Bool)

(assert (=> b!2109783 (= e!1341714 tp!641661)))

(declare-fun b!2109782 () Bool)

(declare-fun tp!641660 () Bool)

(declare-fun tp!641662 () Bool)

(assert (=> b!2109782 (= e!1341714 (and tp!641660 tp!641662))))

(declare-fun b!2109781 () Bool)

(assert (=> b!2109781 (= e!1341714 tp_is_empty!9385)))

(assert (= (and b!2109628 ((_ is ElementMatch!5595) (regex!4160 rule!236))) b!2109781))

(assert (= (and b!2109628 ((_ is Concat!9892) (regex!4160 rule!236))) b!2109782))

(assert (= (and b!2109628 ((_ is Star!5595) (regex!4160 rule!236))) b!2109783))

(assert (= (and b!2109628 ((_ is Union!5595) (regex!4160 rule!236))) b!2109784))

(declare-fun setRes!14032 () Bool)

(declare-fun tp!641663 () Bool)

(declare-fun e!1341716 () Bool)

(declare-fun setElem!14032 () Context!2330)

(declare-fun setNonEmpty!14032 () Bool)

(assert (=> setNonEmpty!14032 (= setRes!14032 (and tp!641663 (inv!30937 setElem!14032) e!1341716))))

(declare-fun setRest!14032 () (InoxSet Context!2330))

(assert (=> setNonEmpty!14032 (= (_2!13144 (h!28781 mapDefault!11067)) ((_ map or) (store ((as const (Array Context!2330 Bool)) false) setElem!14032 true) setRest!14032))))

(declare-fun b!2109785 () Bool)

(declare-fun e!1341717 () Bool)

(declare-fun tp!641666 () Bool)

(assert (=> b!2109785 (= e!1341717 tp!641666)))

(declare-fun tp!641664 () Bool)

(declare-fun b!2109786 () Bool)

(declare-fun e!1341715 () Bool)

(declare-fun tp!641667 () Bool)

(assert (=> b!2109786 (= e!1341715 (and tp!641664 (inv!30937 (_2!13143 (_1!13144 (h!28781 mapDefault!11067)))) e!1341717 tp_is_empty!9385 setRes!14032 tp!641667))))

(declare-fun condSetEmpty!14032 () Bool)

(assert (=> b!2109786 (= condSetEmpty!14032 (= (_2!13144 (h!28781 mapDefault!11067)) ((as const (Array Context!2330 Bool)) false)))))

(declare-fun b!2109787 () Bool)

(declare-fun tp!641665 () Bool)

(assert (=> b!2109787 (= e!1341716 tp!641665)))

(assert (=> b!2109635 (= tp!641518 e!1341715)))

(declare-fun setIsEmpty!14032 () Bool)

(assert (=> setIsEmpty!14032 setRes!14032))

(assert (= b!2109786 b!2109785))

(assert (= (and b!2109786 condSetEmpty!14032) setIsEmpty!14032))

(assert (= (and b!2109786 (not condSetEmpty!14032)) setNonEmpty!14032))

(assert (= setNonEmpty!14032 b!2109787))

(assert (= (and b!2109635 ((_ is Cons!23380) mapDefault!11067)) b!2109786))

(declare-fun m!2567031 () Bool)

(assert (=> setNonEmpty!14032 m!2567031))

(declare-fun m!2567033 () Bool)

(assert (=> b!2109786 m!2567033))

(declare-fun setRes!14033 () Bool)

(declare-fun b!2109788 () Bool)

(declare-fun e!1341720 () Bool)

(declare-fun e!1341718 () Bool)

(declare-fun tp!641668 () Bool)

(assert (=> b!2109788 (= e!1341718 (and (inv!30937 (_1!13145 (_1!13146 (h!28782 mapDefault!11066)))) e!1341720 tp_is_empty!9385 setRes!14033 tp!641668))))

(declare-fun condSetEmpty!14033 () Bool)

(assert (=> b!2109788 (= condSetEmpty!14033 (= (_2!13146 (h!28782 mapDefault!11066)) ((as const (Array Context!2330 Bool)) false)))))

(declare-fun setNonEmpty!14033 () Bool)

(declare-fun setElem!14033 () Context!2330)

(declare-fun tp!641670 () Bool)

(declare-fun e!1341719 () Bool)

(assert (=> setNonEmpty!14033 (= setRes!14033 (and tp!641670 (inv!30937 setElem!14033) e!1341719))))

(declare-fun setRest!14033 () (InoxSet Context!2330))

(assert (=> setNonEmpty!14033 (= (_2!13146 (h!28782 mapDefault!11066)) ((_ map or) (store ((as const (Array Context!2330 Bool)) false) setElem!14033 true) setRest!14033))))

(assert (=> b!2109645 (= tp!641522 e!1341718)))

(declare-fun b!2109789 () Bool)

(declare-fun tp!641671 () Bool)

(assert (=> b!2109789 (= e!1341719 tp!641671)))

(declare-fun b!2109790 () Bool)

(declare-fun tp!641669 () Bool)

(assert (=> b!2109790 (= e!1341720 tp!641669)))

(declare-fun setIsEmpty!14033 () Bool)

(assert (=> setIsEmpty!14033 setRes!14033))

(assert (= b!2109788 b!2109790))

(assert (= (and b!2109788 condSetEmpty!14033) setIsEmpty!14033))

(assert (= (and b!2109788 (not condSetEmpty!14033)) setNonEmpty!14033))

(assert (= setNonEmpty!14033 b!2109789))

(assert (= (and b!2109645 ((_ is Cons!23381) mapDefault!11066)) b!2109788))

(declare-fun m!2567035 () Bool)

(assert (=> b!2109788 m!2567035))

(declare-fun m!2567037 () Bool)

(assert (=> setNonEmpty!14033 m!2567037))

(check-sat (not b!2109784) (not b!2109766) (not b!2109750) (not b!2109761) (not b!2109658) (not setNonEmpty!14020) (not b!2109749) (not b_next!61587) (not b!2109692) (not b!2109789) (not b!2109655) (not b!2109725) (not b!2109746) (not b!2109696) (not d!642155) b_and!170447 (not d!642147) (not b!2109694) (not b!2109653) (not b!2109748) (not b!2109706) (not setNonEmpty!14019) (not b!2109763) (not setNonEmpty!14033) (not b!2109722) (not b!2109693) (not b!2109664) (not b!2109790) (not b!2109673) (not setNonEmpty!14018) (not b!2109745) (not d!642173) (not d!642149) (not b_next!61583) (not b!2109691) b_and!170453 (not b!2109760) (not b!2109770) (not b!2109705) (not b!2109724) (not b!2109767) (not b!2109786) (not b!2109678) b_and!170445 (not setNonEmpty!14029) (not setNonEmpty!14030) (not b!2109787) (not b!2109788) (not b!2109769) (not b!2109747) (not b!2109768) (not d!642175) (not d!642163) b_and!170451 (not b!2109759) (not b_next!61589) (not b!2109707) (not setNonEmpty!14026) (not b!2109728) (not d!642157) (not setNonEmpty!14025) (not b!2109726) (not b!2109785) (not b!2109762) (not mapNonEmpty!11070) (not b!2109641) (not b!2109695) (not setNonEmpty!14032) b_and!170449 (not d!642159) tp_is_empty!9385 (not b!2109661) (not b!2109730) (not b!2109682) (not b!2109723) (not b!2109729) (not b!2109783) (not setNonEmpty!14031) (not b!2109669) (not b!2109727) (not b_next!61591) (not d!642165) (not setNonEmpty!14012) (not d!642161) (not b!2109662) b_and!170443 (not b!2109765) (not b!2109782) (not b!2109625) (not mapNonEmpty!11073) (not d!642177) (not b!2109764) (not b!2109670) (not setNonEmpty!14013) (not b_next!61581) (not b_next!61585))
(check-sat (not b_next!61587) b_and!170447 b_and!170445 b_and!170449 (not b_next!61591) b_and!170443 (not b_next!61583) b_and!170453 b_and!170451 (not b_next!61589) (not b_next!61581) (not b_next!61585))
