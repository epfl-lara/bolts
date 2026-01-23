; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206236 () Bool)

(assert start!206236)

(declare-fun b!2109182 () Bool)

(declare-fun b_free!60805 () Bool)

(declare-fun b_next!61509 () Bool)

(assert (=> b!2109182 (= b_free!60805 (not b_next!61509))))

(declare-fun tp!641177 () Bool)

(declare-fun b_and!170371 () Bool)

(assert (=> b!2109182 (= tp!641177 b_and!170371)))

(declare-fun b!2109191 () Bool)

(declare-fun b_free!60807 () Bool)

(declare-fun b_next!61511 () Bool)

(assert (=> b!2109191 (= b_free!60807 (not b_next!61511))))

(declare-fun tp!641176 () Bool)

(declare-fun b_and!170373 () Bool)

(assert (=> b!2109191 (= tp!641176 b_and!170373)))

(declare-fun b!2109174 () Bool)

(declare-fun b_free!60809 () Bool)

(declare-fun b_next!61513 () Bool)

(assert (=> b!2109174 (= b_free!60809 (not b_next!61513))))

(declare-fun tp!641171 () Bool)

(declare-fun b_and!170375 () Bool)

(assert (=> b!2109174 (= tp!641171 b_and!170375)))

(declare-fun b!2109187 () Bool)

(declare-fun b_free!60811 () Bool)

(declare-fun b_next!61515 () Bool)

(assert (=> b!2109187 (= b_free!60811 (not b_next!61515))))

(declare-fun tp!641182 () Bool)

(declare-fun b_and!170377 () Bool)

(assert (=> b!2109187 (= tp!641182 b_and!170377)))

(declare-fun b_free!60813 () Bool)

(declare-fun b_next!61517 () Bool)

(assert (=> b!2109187 (= b_free!60813 (not b_next!61517))))

(declare-fun tp!641187 () Bool)

(declare-fun b_and!170379 () Bool)

(assert (=> b!2109187 (= tp!641187 b_and!170379)))

(declare-fun b!2109195 () Bool)

(declare-fun b_free!60815 () Bool)

(declare-fun b_next!61519 () Bool)

(assert (=> b!2109195 (= b_free!60815 (not b_next!61519))))

(declare-fun tp!641184 () Bool)

(declare-fun b_and!170381 () Bool)

(assert (=> b!2109195 (= tp!641184 b_and!170381)))

(declare-fun e!1341170 () Bool)

(declare-fun tp!641174 () Bool)

(declare-fun e!1341169 () Bool)

(declare-datatypes ((C!11324 0))(
  ( (C!11325 (val!6648 Int)) )
))
(declare-datatypes ((Regex!5589 0))(
  ( (ElementMatch!5589 (c!339006 C!11324)) (Concat!9879 (regOne!11690 Regex!5589) (regTwo!11690 Regex!5589)) (EmptyExpr!5589) (Star!5589 (reg!5918 Regex!5589)) (EmptyLang!5589) (Union!5589 (regOne!11691 Regex!5589) (regTwo!11691 Regex!5589)) )
))
(declare-datatypes ((List!23431 0))(
  ( (Nil!23347) (Cons!23347 (h!28748 Regex!5589) (t!195930 List!23431)) )
))
(declare-datatypes ((Context!2318 0))(
  ( (Context!2319 (exprs!1659 List!23431)) )
))
(declare-datatypes ((tuple2!22658 0))(
  ( (tuple2!22659 (_1!13107 Context!2318) (_2!13107 C!11324)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22660 0))(
  ( (tuple2!22661 (_1!13108 tuple2!22658) (_2!13108 (InoxSet Context!2318))) )
))
(declare-datatypes ((List!23432 0))(
  ( (Nil!23348) (Cons!23348 (h!28749 tuple2!22660) (t!195931 List!23432)) )
))
(declare-datatypes ((array!7884 0))(
  ( (array!7885 (arr!3491 (Array (_ BitVec 32) (_ BitVec 64))) (size!18220 (_ BitVec 32))) )
))
(declare-datatypes ((array!7886 0))(
  ( (array!7887 (arr!3492 (Array (_ BitVec 32) List!23432)) (size!18221 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4562 0))(
  ( (LongMapFixedSize!4563 (defaultEntry!2646 Int) (mask!6391 (_ BitVec 32)) (extraKeys!2529 (_ BitVec 32)) (zeroValue!2539 List!23432) (minValue!2539 List!23432) (_size!4613 (_ BitVec 32)) (_keys!2578 array!7884) (_values!2561 array!7886) (_vacant!2342 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8949 0))(
  ( (Cell!8950 (v!27886 LongMapFixedSize!4562)) )
))
(declare-datatypes ((MutLongMap!2281 0))(
  ( (LongMap!2281 (underlying!4757 Cell!8949)) (MutLongMapExt!2280 (__x!14996 Int)) )
))
(declare-datatypes ((Cell!8951 0))(
  ( (Cell!8952 (v!27887 MutLongMap!2281)) )
))
(declare-datatypes ((Hashable!2195 0))(
  ( (HashableExt!2194 (__x!14997 Int)) )
))
(declare-datatypes ((MutableMap!2195 0))(
  ( (MutableMapExt!2194 (__x!14998 Int)) (HashMap!2195 (underlying!4758 Cell!8951) (hashF!4118 Hashable!2195) (_size!4614 (_ BitVec 32)) (defaultValue!2357 Int)) )
))
(declare-datatypes ((CacheUp!1490 0))(
  ( (CacheUp!1491 (cache!2576 MutableMap!2195)) )
))
(declare-fun cacheUp!740 () CacheUp!1490)

(declare-fun tp!641185 () Bool)

(declare-fun array_inv!2512 (array!7884) Bool)

(declare-fun array_inv!2513 (array!7886) Bool)

(assert (=> b!2109174 (= e!1341170 (and tp!641171 tp!641185 tp!641174 (array_inv!2512 (_keys!2578 (v!27886 (underlying!4757 (v!27887 (underlying!4758 (cache!2576 cacheUp!740))))))) (array_inv!2513 (_values!2561 (v!27886 (underlying!4757 (v!27887 (underlying!4758 (cache!2576 cacheUp!740))))))) e!1341169))))

(declare-fun mapNonEmpty!11030 () Bool)

(declare-fun mapRes!11030 () Bool)

(declare-fun tp!641175 () Bool)

(declare-fun tp!641178 () Bool)

(assert (=> mapNonEmpty!11030 (= mapRes!11030 (and tp!641175 tp!641178))))

(declare-fun mapValue!11031 () List!23432)

(declare-fun mapRest!11031 () (Array (_ BitVec 32) List!23432))

(declare-fun mapKey!11031 () (_ BitVec 32))

(assert (=> mapNonEmpty!11030 (= (arr!3492 (_values!2561 (v!27886 (underlying!4757 (v!27887 (underlying!4758 (cache!2576 cacheUp!740))))))) (store mapRest!11031 mapKey!11031 mapValue!11031))))

(declare-fun b!2109175 () Bool)

(declare-fun res!916390 () Bool)

(declare-fun e!1341180 () Bool)

(assert (=> b!2109175 (=> (not res!916390) (not e!1341180))))

(declare-datatypes ((Hashable!2196 0))(
  ( (HashableExt!2195 (__x!14999 Int)) )
))
(declare-datatypes ((tuple3!2628 0))(
  ( (tuple3!2629 (_1!13109 Regex!5589) (_2!13109 Context!2318) (_3!1778 C!11324)) )
))
(declare-datatypes ((tuple2!22662 0))(
  ( (tuple2!22663 (_1!13110 tuple3!2628) (_2!13110 (InoxSet Context!2318))) )
))
(declare-datatypes ((List!23433 0))(
  ( (Nil!23349) (Cons!23349 (h!28750 tuple2!22662) (t!195932 List!23433)) )
))
(declare-datatypes ((array!7888 0))(
  ( (array!7889 (arr!3493 (Array (_ BitVec 32) List!23433)) (size!18222 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4564 0))(
  ( (LongMapFixedSize!4565 (defaultEntry!2647 Int) (mask!6392 (_ BitVec 32)) (extraKeys!2530 (_ BitVec 32)) (zeroValue!2540 List!23433) (minValue!2540 List!23433) (_size!4615 (_ BitVec 32)) (_keys!2579 array!7884) (_values!2562 array!7888) (_vacant!2343 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8953 0))(
  ( (Cell!8954 (v!27888 LongMapFixedSize!4564)) )
))
(declare-datatypes ((MutLongMap!2282 0))(
  ( (LongMap!2282 (underlying!4759 Cell!8953)) (MutLongMapExt!2281 (__x!15000 Int)) )
))
(declare-datatypes ((Cell!8955 0))(
  ( (Cell!8956 (v!27889 MutLongMap!2282)) )
))
(declare-datatypes ((MutableMap!2196 0))(
  ( (MutableMapExt!2195 (__x!15001 Int)) (HashMap!2196 (underlying!4760 Cell!8955) (hashF!4119 Hashable!2196) (_size!4616 (_ BitVec 32)) (defaultValue!2358 Int)) )
))
(declare-datatypes ((CacheDown!1494 0))(
  ( (CacheDown!1495 (cache!2577 MutableMap!2196)) )
))
(declare-fun cacheDown!753 () CacheDown!1494)

(declare-fun valid!1805 (CacheDown!1494) Bool)

(assert (=> b!2109175 (= res!916390 (valid!1805 cacheDown!753))))

(declare-fun e!1341183 () Bool)

(declare-datatypes ((List!23434 0))(
  ( (Nil!23350) (Cons!23350 (h!28751 (_ BitVec 16)) (t!195933 List!23434)) )
))
(declare-datatypes ((TokenValue!4290 0))(
  ( (FloatLiteralValue!8580 (text!30475 List!23434)) (TokenValueExt!4289 (__x!15002 Int)) (Broken!21450 (value!130002 List!23434)) (Object!4373) (End!4290) (Def!4290) (Underscore!4290) (Match!4290) (Else!4290) (Error!4290) (Case!4290) (If!4290) (Extends!4290) (Abstract!4290) (Class!4290) (Val!4290) (DelimiterValue!8580 (del!4350 List!23434)) (KeywordValue!4296 (value!130003 List!23434)) (CommentValue!8580 (value!130004 List!23434)) (WhitespaceValue!8580 (value!130005 List!23434)) (IndentationValue!4290 (value!130006 List!23434)) (String!26655) (Int32!4290) (Broken!21451 (value!130007 List!23434)) (Boolean!4291) (Unit!37492) (OperatorValue!4293 (op!4350 List!23434)) (IdentifierValue!8580 (value!130008 List!23434)) (IdentifierValue!8581 (value!130009 List!23434)) (WhitespaceValue!8581 (value!130010 List!23434)) (True!8580) (False!8580) (Broken!21452 (value!130011 List!23434)) (Broken!21453 (value!130012 List!23434)) (True!8581) (RightBrace!4290) (RightBracket!4290) (Colon!4290) (Null!4290) (Comma!4290) (LeftBracket!4290) (False!8581) (LeftBrace!4290) (ImaginaryLiteralValue!4290 (text!30476 List!23434)) (StringLiteralValue!12870 (value!130013 List!23434)) (EOFValue!4290 (value!130014 List!23434)) (IdentValue!4290 (value!130015 List!23434)) (DelimiterValue!8581 (value!130016 List!23434)) (DedentValue!4290 (value!130017 List!23434)) (NewLineValue!4290 (value!130018 List!23434)) (IntegerValue!12870 (value!130019 (_ BitVec 32)) (text!30477 List!23434)) (IntegerValue!12871 (value!130020 Int) (text!30478 List!23434)) (Times!4290) (Or!4290) (Equal!4290) (Minus!4290) (Broken!21454 (value!130021 List!23434)) (And!4290) (Div!4290) (LessEqual!4290) (Mod!4290) (Concat!9880) (Not!4290) (Plus!4290) (SpaceValue!4290 (value!130022 List!23434)) (IntegerValue!12872 (value!130023 Int) (text!30479 List!23434)) (StringLiteralValue!12871 (text!30480 List!23434)) (FloatLiteralValue!8581 (text!30481 List!23434)) (BytesLiteralValue!4290 (value!130024 List!23434)) (CommentValue!8581 (value!130025 List!23434)) (StringLiteralValue!12872 (value!130026 List!23434)) (ErrorTokenValue!4290 (msg!4351 List!23434)) )
))
(declare-datatypes ((List!23435 0))(
  ( (Nil!23351) (Cons!23351 (h!28752 C!11324) (t!195934 List!23435)) )
))
(declare-datatypes ((IArray!15475 0))(
  ( (IArray!15476 (innerList!7795 List!23435)) )
))
(declare-datatypes ((Conc!7735 0))(
  ( (Node!7735 (left!18180 Conc!7735) (right!18510 Conc!7735) (csize!15700 Int) (cheight!7946 Int)) (Leaf!11297 (xs!10677 IArray!15475) (csize!15701 Int)) (Empty!7735) )
))
(declare-datatypes ((BalanceConc!15232 0))(
  ( (BalanceConc!15233 (c!339007 Conc!7735)) )
))
(declare-datatypes ((String!26656 0))(
  ( (String!26657 (value!130027 String)) )
))
(declare-datatypes ((TokenValueInjection!8164 0))(
  ( (TokenValueInjection!8165 (toValue!5865 Int) (toChars!5724 Int)) )
))
(declare-datatypes ((Rule!8108 0))(
  ( (Rule!8109 (regex!4154 Regex!5589) (tag!4644 String!26656) (isSeparator!4154 Bool) (transformation!4154 TokenValueInjection!8164)) )
))
(declare-fun rule!236 () Rule!8108)

(declare-fun b!2109176 () Bool)

(declare-fun tp!641183 () Bool)

(declare-fun e!1341165 () Bool)

(declare-fun inv!30903 (String!26656) Bool)

(declare-fun inv!30904 (TokenValueInjection!8164) Bool)

(assert (=> b!2109176 (= e!1341165 (and tp!641183 (inv!30903 (tag!4644 rule!236)) (inv!30904 (transformation!4154 rule!236)) e!1341183))))

(declare-fun b!2109177 () Bool)

(declare-fun e!1341185 () Bool)

(declare-fun totalInput!548 () BalanceConc!15232)

(declare-fun tp!641172 () Bool)

(declare-fun inv!30905 (Conc!7735) Bool)

(assert (=> b!2109177 (= e!1341185 (and (inv!30905 (c!339007 totalInput!548)) tp!641172))))

(declare-fun mapIsEmpty!11031 () Bool)

(declare-fun mapRes!11031 () Bool)

(assert (=> mapIsEmpty!11031 mapRes!11031))

(declare-fun b!2109178 () Bool)

(declare-fun e!1341176 () Bool)

(declare-fun e!1341178 () Bool)

(declare-fun lt!791858 () MutLongMap!2281)

(get-info :version)

(assert (=> b!2109178 (= e!1341176 (and e!1341178 ((_ is LongMap!2281) lt!791858)))))

(assert (=> b!2109178 (= lt!791858 (v!27887 (underlying!4758 (cache!2576 cacheUp!740))))))

(declare-fun b!2109179 () Bool)

(declare-fun e!1341177 () Bool)

(declare-fun e!1341164 () Bool)

(assert (=> b!2109179 (= e!1341177 e!1341164)))

(declare-fun b!2109180 () Bool)

(declare-fun res!916388 () Bool)

(assert (=> b!2109180 (=> (not res!916388) (not e!1341180))))

(declare-fun input!1654 () BalanceConc!15232)

(declare-fun isSuffix!569 (List!23435 List!23435) Bool)

(declare-fun list!9462 (BalanceConc!15232) List!23435)

(assert (=> b!2109180 (= res!916388 (isSuffix!569 (list!9462 input!1654) (list!9462 totalInput!548)))))

(declare-fun b!2109181 () Bool)

(assert (=> b!2109181 (= e!1341180 false)))

(declare-datatypes ((tuple2!22664 0))(
  ( (tuple2!22665 (_1!13111 BalanceConc!15232) (_2!13111 BalanceConc!15232)) )
))
(declare-datatypes ((tuple3!2630 0))(
  ( (tuple3!2631 (_1!13112 tuple2!22664) (_2!13112 CacheUp!1490) (_3!1779 CacheDown!1494)) )
))
(declare-fun lt!791859 () tuple3!2630)

(declare-fun findLongestMatchWithZipperSequenceV2MemOnlyDeriv!35 (Regex!5589 BalanceConc!15232 BalanceConc!15232 CacheUp!1490 CacheDown!1494) tuple3!2630)

(assert (=> b!2109181 (= lt!791859 (findLongestMatchWithZipperSequenceV2MemOnlyDeriv!35 (regex!4154 rule!236) input!1654 totalInput!548 cacheUp!740 cacheDown!753))))

(declare-fun e!1341168 () Bool)

(declare-fun e!1341174 () Bool)

(assert (=> b!2109182 (= e!1341168 (and e!1341174 tp!641177))))

(declare-fun b!2109183 () Bool)

(declare-fun res!916391 () Bool)

(assert (=> b!2109183 (=> (not res!916391) (not e!1341180))))

(declare-datatypes ((LexerInterface!3752 0))(
  ( (LexerInterfaceExt!3749 (__x!15003 Int)) (Lexer!3750) )
))
(declare-fun thiss!16399 () LexerInterface!3752)

(declare-fun ruleValid!1277 (LexerInterface!3752 Rule!8108) Bool)

(assert (=> b!2109183 (= res!916391 (ruleValid!1277 thiss!16399 rule!236))))

(declare-fun b!2109184 () Bool)

(declare-fun e!1341171 () Bool)

(declare-fun tp!641170 () Bool)

(assert (=> b!2109184 (= e!1341171 (and (inv!30905 (c!339007 input!1654)) tp!641170))))

(declare-fun res!916389 () Bool)

(assert (=> start!206236 (=> (not res!916389) (not e!1341180))))

(assert (=> start!206236 (= res!916389 ((_ is Lexer!3750) thiss!16399))))

(assert (=> start!206236 e!1341180))

(assert (=> start!206236 true))

(assert (=> start!206236 e!1341165))

(declare-fun e!1341172 () Bool)

(declare-fun inv!30906 (CacheDown!1494) Bool)

(assert (=> start!206236 (and (inv!30906 cacheDown!753) e!1341172)))

(declare-fun inv!30907 (BalanceConc!15232) Bool)

(assert (=> start!206236 (and (inv!30907 input!1654) e!1341171)))

(assert (=> start!206236 (and (inv!30907 totalInput!548) e!1341185)))

(declare-fun inv!30908 (CacheUp!1490) Bool)

(assert (=> start!206236 (and (inv!30908 cacheUp!740) e!1341177)))

(declare-fun mapIsEmpty!11030 () Bool)

(assert (=> mapIsEmpty!11030 mapRes!11030))

(declare-fun b!2109185 () Bool)

(assert (=> b!2109185 (= e!1341172 e!1341168)))

(declare-fun b!2109186 () Bool)

(declare-fun e!1341181 () Bool)

(assert (=> b!2109186 (= e!1341178 e!1341181)))

(assert (=> b!2109187 (= e!1341183 (and tp!641182 tp!641187))))

(declare-fun b!2109188 () Bool)

(declare-fun e!1341179 () Bool)

(declare-fun lt!791857 () MutLongMap!2282)

(assert (=> b!2109188 (= e!1341174 (and e!1341179 ((_ is LongMap!2282) lt!791857)))))

(assert (=> b!2109188 (= lt!791857 (v!27889 (underlying!4760 (cache!2577 cacheDown!753))))))

(declare-fun b!2109189 () Bool)

(declare-fun res!916387 () Bool)

(assert (=> b!2109189 (=> (not res!916387) (not e!1341180))))

(declare-fun valid!1806 (CacheUp!1490) Bool)

(assert (=> b!2109189 (= res!916387 (valid!1806 cacheUp!740))))

(declare-fun mapNonEmpty!11031 () Bool)

(declare-fun tp!641173 () Bool)

(declare-fun tp!641186 () Bool)

(assert (=> mapNonEmpty!11031 (= mapRes!11031 (and tp!641173 tp!641186))))

(declare-fun mapKey!11030 () (_ BitVec 32))

(declare-fun mapValue!11030 () List!23433)

(declare-fun mapRest!11030 () (Array (_ BitVec 32) List!23433))

(assert (=> mapNonEmpty!11031 (= (arr!3493 (_values!2562 (v!27888 (underlying!4759 (v!27889 (underlying!4760 (cache!2577 cacheDown!753))))))) (store mapRest!11030 mapKey!11030 mapValue!11030))))

(declare-fun b!2109190 () Bool)

(declare-fun e!1341167 () Bool)

(declare-fun e!1341184 () Bool)

(assert (=> b!2109190 (= e!1341167 e!1341184)))

(declare-fun e!1341175 () Bool)

(declare-fun tp!641181 () Bool)

(declare-fun tp!641188 () Bool)

(declare-fun array_inv!2514 (array!7888) Bool)

(assert (=> b!2109191 (= e!1341184 (and tp!641176 tp!641181 tp!641188 (array_inv!2512 (_keys!2579 (v!27888 (underlying!4759 (v!27889 (underlying!4760 (cache!2577 cacheDown!753))))))) (array_inv!2514 (_values!2562 (v!27888 (underlying!4759 (v!27889 (underlying!4760 (cache!2577 cacheDown!753))))))) e!1341175))))

(declare-fun b!2109192 () Bool)

(declare-fun tp!641179 () Bool)

(assert (=> b!2109192 (= e!1341175 (and tp!641179 mapRes!11031))))

(declare-fun condMapEmpty!11030 () Bool)

(declare-fun mapDefault!11030 () List!23433)

(assert (=> b!2109192 (= condMapEmpty!11030 (= (arr!3493 (_values!2562 (v!27888 (underlying!4759 (v!27889 (underlying!4760 (cache!2577 cacheDown!753))))))) ((as const (Array (_ BitVec 32) List!23433)) mapDefault!11030)))))

(declare-fun b!2109193 () Bool)

(assert (=> b!2109193 (= e!1341181 e!1341170)))

(declare-fun b!2109194 () Bool)

(declare-fun tp!641180 () Bool)

(assert (=> b!2109194 (= e!1341169 (and tp!641180 mapRes!11030))))

(declare-fun condMapEmpty!11031 () Bool)

(declare-fun mapDefault!11031 () List!23432)

(assert (=> b!2109194 (= condMapEmpty!11031 (= (arr!3492 (_values!2561 (v!27886 (underlying!4757 (v!27887 (underlying!4758 (cache!2576 cacheUp!740))))))) ((as const (Array (_ BitVec 32) List!23432)) mapDefault!11031)))))

(assert (=> b!2109195 (= e!1341164 (and e!1341176 tp!641184))))

(declare-fun b!2109196 () Bool)

(assert (=> b!2109196 (= e!1341179 e!1341167)))

(assert (= (and start!206236 res!916389) b!2109183))

(assert (= (and b!2109183 res!916391) b!2109189))

(assert (= (and b!2109189 res!916387) b!2109175))

(assert (= (and b!2109175 res!916390) b!2109180))

(assert (= (and b!2109180 res!916388) b!2109181))

(assert (= b!2109176 b!2109187))

(assert (= start!206236 b!2109176))

(assert (= (and b!2109192 condMapEmpty!11030) mapIsEmpty!11031))

(assert (= (and b!2109192 (not condMapEmpty!11030)) mapNonEmpty!11031))

(assert (= b!2109191 b!2109192))

(assert (= b!2109190 b!2109191))

(assert (= b!2109196 b!2109190))

(assert (= (and b!2109188 ((_ is LongMap!2282) (v!27889 (underlying!4760 (cache!2577 cacheDown!753))))) b!2109196))

(assert (= b!2109182 b!2109188))

(assert (= (and b!2109185 ((_ is HashMap!2196) (cache!2577 cacheDown!753))) b!2109182))

(assert (= start!206236 b!2109185))

(assert (= start!206236 b!2109184))

(assert (= start!206236 b!2109177))

(assert (= (and b!2109194 condMapEmpty!11031) mapIsEmpty!11030))

(assert (= (and b!2109194 (not condMapEmpty!11031)) mapNonEmpty!11030))

(assert (= b!2109174 b!2109194))

(assert (= b!2109193 b!2109174))

(assert (= b!2109186 b!2109193))

(assert (= (and b!2109178 ((_ is LongMap!2281) (v!27887 (underlying!4758 (cache!2576 cacheUp!740))))) b!2109186))

(assert (= b!2109195 b!2109178))

(assert (= (and b!2109179 ((_ is HashMap!2195) (cache!2576 cacheUp!740))) b!2109195))

(assert (= start!206236 b!2109179))

(declare-fun m!2566573 () Bool)

(assert (=> mapNonEmpty!11030 m!2566573))

(declare-fun m!2566575 () Bool)

(assert (=> b!2109174 m!2566575))

(declare-fun m!2566577 () Bool)

(assert (=> b!2109174 m!2566577))

(declare-fun m!2566579 () Bool)

(assert (=> b!2109180 m!2566579))

(declare-fun m!2566581 () Bool)

(assert (=> b!2109180 m!2566581))

(assert (=> b!2109180 m!2566579))

(assert (=> b!2109180 m!2566581))

(declare-fun m!2566583 () Bool)

(assert (=> b!2109180 m!2566583))

(declare-fun m!2566585 () Bool)

(assert (=> b!2109189 m!2566585))

(declare-fun m!2566587 () Bool)

(assert (=> mapNonEmpty!11031 m!2566587))

(declare-fun m!2566589 () Bool)

(assert (=> start!206236 m!2566589))

(declare-fun m!2566591 () Bool)

(assert (=> start!206236 m!2566591))

(declare-fun m!2566593 () Bool)

(assert (=> start!206236 m!2566593))

(declare-fun m!2566595 () Bool)

(assert (=> start!206236 m!2566595))

(declare-fun m!2566597 () Bool)

(assert (=> b!2109183 m!2566597))

(declare-fun m!2566599 () Bool)

(assert (=> b!2109177 m!2566599))

(declare-fun m!2566601 () Bool)

(assert (=> b!2109184 m!2566601))

(declare-fun m!2566603 () Bool)

(assert (=> b!2109181 m!2566603))

(declare-fun m!2566605 () Bool)

(assert (=> b!2109175 m!2566605))

(declare-fun m!2566607 () Bool)

(assert (=> b!2109191 m!2566607))

(declare-fun m!2566609 () Bool)

(assert (=> b!2109191 m!2566609))

(declare-fun m!2566611 () Bool)

(assert (=> b!2109176 m!2566611))

(declare-fun m!2566613 () Bool)

(assert (=> b!2109176 m!2566613))

(check-sat (not b_next!61511) (not b!2109174) (not b!2109194) (not b!2109177) b_and!170375 (not mapNonEmpty!11031) b_and!170373 (not b!2109184) (not b_next!61517) (not start!206236) (not b_next!61513) (not b!2109180) (not b!2109189) (not b!2109191) b_and!170377 (not b!2109176) (not b!2109183) (not b_next!61509) (not mapNonEmpty!11030) (not b!2109192) (not b!2109181) b_and!170371 (not b_next!61519) b_and!170379 (not b!2109175) (not b_next!61515) b_and!170381)
(check-sat (not b_next!61517) (not b_next!61513) (not b_next!61511) b_and!170377 (not b_next!61509) b_and!170379 b_and!170375 b_and!170373 b_and!170371 (not b_next!61519) (not b_next!61515) b_and!170381)
