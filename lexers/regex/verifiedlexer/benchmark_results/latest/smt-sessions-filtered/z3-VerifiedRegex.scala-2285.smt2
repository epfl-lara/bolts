; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111838 () Bool)

(assert start!111838)

(declare-fun b!1282074 () Bool)

(declare-fun b_free!29867 () Bool)

(declare-fun b_next!30571 () Bool)

(assert (=> b!1282074 (= b_free!29867 (not b_next!30571))))

(declare-fun tp!372002 () Bool)

(declare-fun b_and!85011 () Bool)

(assert (=> b!1282074 (= tp!372002 b_and!85011)))

(declare-fun b!1282081 () Bool)

(declare-fun b_free!29869 () Bool)

(declare-fun b_next!30573 () Bool)

(assert (=> b!1282081 (= b_free!29869 (not b_next!30573))))

(declare-fun tp!372014 () Bool)

(declare-fun b_and!85013 () Bool)

(assert (=> b!1282081 (= tp!372014 b_and!85013)))

(declare-fun b!1282067 () Bool)

(declare-fun b_free!29871 () Bool)

(declare-fun b_next!30575 () Bool)

(assert (=> b!1282067 (= b_free!29871 (not b_next!30575))))

(declare-fun tp!372006 () Bool)

(declare-fun b_and!85015 () Bool)

(assert (=> b!1282067 (= tp!372006 b_and!85015)))

(declare-fun b!1282073 () Bool)

(declare-fun b_free!29873 () Bool)

(declare-fun b_next!30577 () Bool)

(assert (=> b!1282073 (= b_free!29873 (not b_next!30577))))

(declare-fun tp!372010 () Bool)

(declare-fun b_and!85017 () Bool)

(assert (=> b!1282073 (= tp!372010 b_and!85017)))

(declare-fun b_free!29875 () Bool)

(declare-fun b_next!30579 () Bool)

(assert (=> b!1282073 (= b_free!29875 (not b_next!30579))))

(declare-fun tp!372000 () Bool)

(declare-fun b_and!85019 () Bool)

(assert (=> b!1282073 (= tp!372000 b_and!85019)))

(declare-fun b!1282082 () Bool)

(declare-fun b_free!29877 () Bool)

(declare-fun b_next!30581 () Bool)

(assert (=> b!1282082 (= b_free!29877 (not b_next!30581))))

(declare-fun tp!372011 () Bool)

(declare-fun b_and!85021 () Bool)

(assert (=> b!1282082 (= tp!372011 b_and!85021)))

(declare-fun b!1282062 () Bool)

(declare-fun e!821835 () Bool)

(declare-fun e!821822 () Bool)

(assert (=> b!1282062 (= e!821835 e!821822)))

(declare-fun tp!371997 () Bool)

(declare-fun e!821825 () Bool)

(declare-datatypes ((C!7276 0))(
  ( (C!7277 (val!4198 Int)) )
))
(declare-datatypes ((List!12747 0))(
  ( (Nil!12681) (Cons!12681 (h!18082 C!7276) (t!116571 List!12747)) )
))
(declare-datatypes ((IArray!8345 0))(
  ( (IArray!8346 (innerList!4230 List!12747)) )
))
(declare-datatypes ((Conc!4170 0))(
  ( (Node!4170 (left!10963 Conc!4170) (right!11293 Conc!4170) (csize!8570 Int) (cheight!4381 Int)) (Leaf!6456 (xs!6881 IArray!8345) (csize!8571 Int)) (Empty!4170) )
))
(declare-datatypes ((BalanceConc!8280 0))(
  ( (BalanceConc!8281 (c!211389 Conc!4170)) )
))
(declare-datatypes ((List!12748 0))(
  ( (Nil!12682) (Cons!12682 (h!18083 (_ BitVec 16)) (t!116572 List!12748)) )
))
(declare-datatypes ((TokenValue!2270 0))(
  ( (FloatLiteralValue!4540 (text!16335 List!12748)) (TokenValueExt!2269 (__x!8318 Int)) (Broken!11350 (value!71735 List!12748)) (Object!2335) (End!2270) (Def!2270) (Underscore!2270) (Match!2270) (Else!2270) (Error!2270) (Case!2270) (If!2270) (Extends!2270) (Abstract!2270) (Class!2270) (Val!2270) (DelimiterValue!4540 (del!2330 List!12748)) (KeywordValue!2276 (value!71736 List!12748)) (CommentValue!4540 (value!71737 List!12748)) (WhitespaceValue!4540 (value!71738 List!12748)) (IndentationValue!2270 (value!71739 List!12748)) (String!15583) (Int32!2270) (Broken!11351 (value!71740 List!12748)) (Boolean!2271) (Unit!18962) (OperatorValue!2273 (op!2330 List!12748)) (IdentifierValue!4540 (value!71741 List!12748)) (IdentifierValue!4541 (value!71742 List!12748)) (WhitespaceValue!4541 (value!71743 List!12748)) (True!4540) (False!4540) (Broken!11352 (value!71744 List!12748)) (Broken!11353 (value!71745 List!12748)) (True!4541) (RightBrace!2270) (RightBracket!2270) (Colon!2270) (Null!2270) (Comma!2270) (LeftBracket!2270) (False!4541) (LeftBrace!2270) (ImaginaryLiteralValue!2270 (text!16336 List!12748)) (StringLiteralValue!6810 (value!71746 List!12748)) (EOFValue!2270 (value!71747 List!12748)) (IdentValue!2270 (value!71748 List!12748)) (DelimiterValue!4541 (value!71749 List!12748)) (DedentValue!2270 (value!71750 List!12748)) (NewLineValue!2270 (value!71751 List!12748)) (IntegerValue!6810 (value!71752 (_ BitVec 32)) (text!16337 List!12748)) (IntegerValue!6811 (value!71753 Int) (text!16338 List!12748)) (Times!2270) (Or!2270) (Equal!2270) (Minus!2270) (Broken!11354 (value!71754 List!12748)) (And!2270) (Div!2270) (LessEqual!2270) (Mod!2270) (Concat!5763) (Not!2270) (Plus!2270) (SpaceValue!2270 (value!71755 List!12748)) (IntegerValue!6812 (value!71756 Int) (text!16339 List!12748)) (StringLiteralValue!6811 (text!16340 List!12748)) (FloatLiteralValue!4541 (text!16341 List!12748)) (BytesLiteralValue!2270 (value!71757 List!12748)) (CommentValue!4541 (value!71758 List!12748)) (StringLiteralValue!6812 (value!71759 List!12748)) (ErrorTokenValue!2270 (msg!2331 List!12748)) )
))
(declare-datatypes ((Regex!3493 0))(
  ( (ElementMatch!3493 (c!211390 C!7276)) (Concat!5764 (regOne!7498 Regex!3493) (regTwo!7498 Regex!3493)) (EmptyExpr!3493) (Star!3493 (reg!3822 Regex!3493)) (EmptyLang!3493) (Union!3493 (regOne!7499 Regex!3493) (regTwo!7499 Regex!3493)) )
))
(declare-datatypes ((String!15584 0))(
  ( (String!15585 (value!71760 String)) )
))
(declare-datatypes ((TokenValueInjection!4200 0))(
  ( (TokenValueInjection!4201 (toValue!3347 Int) (toChars!3206 Int)) )
))
(declare-datatypes ((Rule!4160 0))(
  ( (Rule!4161 (regex!2180 Regex!3493) (tag!2442 String!15584) (isSeparator!2180 Bool) (transformation!2180 TokenValueInjection!4200)) )
))
(declare-datatypes ((List!12749 0))(
  ( (Nil!12683) (Cons!12683 (h!18084 Rule!4160) (t!116573 List!12749)) )
))
(declare-fun rs!174 () List!12749)

(declare-fun e!821824 () Bool)

(declare-fun b!1282063 () Bool)

(declare-fun inv!17070 (String!15584) Bool)

(declare-fun inv!17071 (TokenValueInjection!4200) Bool)

(assert (=> b!1282063 (= e!821824 (and tp!371997 (inv!17070 (tag!2442 (h!18084 rs!174))) (inv!17071 (transformation!2180 (h!18084 rs!174))) e!821825))))

(declare-fun b!1282064 () Bool)

(declare-fun e!821831 () Bool)

(declare-fun tp!372009 () Bool)

(assert (=> b!1282064 (= e!821831 (and e!821824 tp!372009))))

(declare-fun b!1282065 () Bool)

(declare-fun e!821833 () Bool)

(declare-fun e!821832 () Bool)

(assert (=> b!1282065 (= e!821833 e!821832)))

(declare-fun mapIsEmpty!6399 () Bool)

(declare-fun mapRes!6399 () Bool)

(assert (=> mapIsEmpty!6399 mapRes!6399))

(declare-fun b!1282066 () Bool)

(declare-fun e!821830 () Bool)

(declare-datatypes ((Token!4022 0))(
  ( (Token!4023 (value!71761 TokenValue!2270) (rule!3919 Rule!4160) (size!10339 Int) (originalCharacters!3042 List!12747)) )
))
(declare-datatypes ((List!12750 0))(
  ( (Nil!12684) (Cons!12684 (h!18085 Token!4022) (t!116574 List!12750)) )
))
(declare-datatypes ((IArray!8347 0))(
  ( (IArray!8348 (innerList!4231 List!12750)) )
))
(declare-datatypes ((Conc!4171 0))(
  ( (Node!4171 (left!10964 Conc!4171) (right!11294 Conc!4171) (csize!8572 Int) (cheight!4382 Int)) (Leaf!6457 (xs!6882 IArray!8347) (csize!8573 Int)) (Empty!4171) )
))
(declare-datatypes ((BalanceConc!8282 0))(
  ( (BalanceConc!8283 (c!211391 Conc!4171)) )
))
(declare-fun ts!110 () BalanceConc!8282)

(declare-fun tp!372003 () Bool)

(declare-fun inv!17072 (Conc!4171) Bool)

(assert (=> b!1282066 (= e!821830 (and (inv!17072 (c!211391 ts!110)) tp!372003))))

(declare-datatypes ((array!4740 0))(
  ( (array!4741 (arr!2114 (Array (_ BitVec 32) (_ BitVec 64))) (size!10340 (_ BitVec 32))) )
))
(declare-datatypes ((List!12751 0))(
  ( (Nil!12685) (Cons!12685 (h!18086 Regex!3493) (t!116575 List!12751)) )
))
(declare-datatypes ((Context!1098 0))(
  ( (Context!1099 (exprs!1049 List!12751)) )
))
(declare-datatypes ((tuple2!12562 0))(
  ( (tuple2!12563 (_1!7150 Context!1098) (_2!7150 C!7276)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!12564 0))(
  ( (tuple2!12565 (_1!7151 tuple2!12562) (_2!7151 (InoxSet Context!1098))) )
))
(declare-datatypes ((List!12752 0))(
  ( (Nil!12686) (Cons!12686 (h!18087 tuple2!12564) (t!116576 List!12752)) )
))
(declare-datatypes ((array!4742 0))(
  ( (array!4743 (arr!2115 (Array (_ BitVec 32) List!12752)) (size!10341 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2668 0))(
  ( (LongMapFixedSize!2669 (defaultEntry!1694 Int) (mask!4163 (_ BitVec 32)) (extraKeys!1581 (_ BitVec 32)) (zeroValue!1591 List!12752) (minValue!1591 List!12752) (_size!2749 (_ BitVec 32)) (_keys!1628 array!4740) (_values!1613 array!4742) (_vacant!1395 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5221 0))(
  ( (Cell!5222 (v!20953 LongMapFixedSize!2668)) )
))
(declare-datatypes ((MutLongMap!1334 0))(
  ( (LongMap!1334 (underlying!2875 Cell!5221)) (MutLongMapExt!1333 (__x!8319 Int)) )
))
(declare-datatypes ((Cell!5223 0))(
  ( (Cell!5224 (v!20954 MutLongMap!1334)) )
))
(declare-datatypes ((Hashable!1278 0))(
  ( (HashableExt!1277 (__x!8320 Int)) )
))
(declare-datatypes ((MutableMap!1278 0))(
  ( (MutableMapExt!1277 (__x!8321 Int)) (HashMap!1278 (underlying!2876 Cell!5223) (hashF!3197 Hashable!1278) (_size!2750 (_ BitVec 32)) (defaultValue!1438 Int)) )
))
(declare-datatypes ((CacheUp!748 0))(
  ( (CacheUp!749 (cache!1659 MutableMap!1278)) )
))
(declare-fun cacheUp!398 () CacheUp!748)

(declare-fun tp!372001 () Bool)

(declare-fun e!821836 () Bool)

(declare-fun tp!372012 () Bool)

(declare-fun e!821837 () Bool)

(declare-fun array_inv!1535 (array!4740) Bool)

(declare-fun array_inv!1536 (array!4742) Bool)

(assert (=> b!1282067 (= e!821837 (and tp!372006 tp!372012 tp!372001 (array_inv!1535 (_keys!1628 (v!20953 (underlying!2875 (v!20954 (underlying!2876 (cache!1659 cacheUp!398))))))) (array_inv!1536 (_values!1613 (v!20953 (underlying!2875 (v!20954 (underlying!2876 (cache!1659 cacheUp!398))))))) e!821836))))

(declare-fun mapIsEmpty!6400 () Bool)

(declare-fun mapRes!6400 () Bool)

(assert (=> mapIsEmpty!6400 mapRes!6400))

(declare-fun b!1282068 () Bool)

(declare-fun tp!371999 () Bool)

(assert (=> b!1282068 (= e!821836 (and tp!371999 mapRes!6399))))

(declare-fun condMapEmpty!6400 () Bool)

(declare-fun mapDefault!6400 () List!12752)

(assert (=> b!1282068 (= condMapEmpty!6400 (= (arr!2115 (_values!1613 (v!20953 (underlying!2875 (v!20954 (underlying!2876 (cache!1659 cacheUp!398))))))) ((as const (Array (_ BitVec 32) List!12752)) mapDefault!6400)))))

(declare-fun b!1282069 () Bool)

(declare-fun e!821839 () Bool)

(declare-fun e!821827 () Bool)

(assert (=> b!1282069 (= e!821839 e!821827)))

(declare-fun res!575348 () Bool)

(declare-fun e!821820 () Bool)

(assert (=> start!111838 (=> (not res!575348) (not e!821820))))

(declare-datatypes ((LexerInterface!1875 0))(
  ( (LexerInterfaceExt!1872 (__x!8322 Int)) (Lexer!1873) )
))
(declare-fun thiss!10944 () LexerInterface!1875)

(get-info :version)

(assert (=> start!111838 (= res!575348 ((_ is Lexer!1873) thiss!10944))))

(assert (=> start!111838 e!821820))

(assert (=> start!111838 e!821831))

(declare-fun inv!17073 (CacheUp!748) Bool)

(assert (=> start!111838 (and (inv!17073 cacheUp!398) e!821839)))

(declare-datatypes ((tuple3!1156 0))(
  ( (tuple3!1157 (_1!7152 Regex!3493) (_2!7152 Context!1098) (_3!869 C!7276)) )
))
(declare-datatypes ((Hashable!1279 0))(
  ( (HashableExt!1278 (__x!8323 Int)) )
))
(declare-datatypes ((tuple2!12566 0))(
  ( (tuple2!12567 (_1!7153 tuple3!1156) (_2!7153 (InoxSet Context!1098))) )
))
(declare-datatypes ((List!12753 0))(
  ( (Nil!12687) (Cons!12687 (h!18088 tuple2!12566) (t!116577 List!12753)) )
))
(declare-datatypes ((array!4744 0))(
  ( (array!4745 (arr!2116 (Array (_ BitVec 32) List!12753)) (size!10342 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2670 0))(
  ( (LongMapFixedSize!2671 (defaultEntry!1695 Int) (mask!4164 (_ BitVec 32)) (extraKeys!1582 (_ BitVec 32)) (zeroValue!1592 List!12753) (minValue!1592 List!12753) (_size!2751 (_ BitVec 32)) (_keys!1629 array!4740) (_values!1614 array!4744) (_vacant!1396 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5225 0))(
  ( (Cell!5226 (v!20955 LongMapFixedSize!2670)) )
))
(declare-datatypes ((MutLongMap!1335 0))(
  ( (LongMap!1335 (underlying!2877 Cell!5225)) (MutLongMapExt!1334 (__x!8324 Int)) )
))
(declare-datatypes ((Cell!5227 0))(
  ( (Cell!5228 (v!20956 MutLongMap!1335)) )
))
(declare-datatypes ((MutableMap!1279 0))(
  ( (MutableMapExt!1278 (__x!8325 Int)) (HashMap!1279 (underlying!2878 Cell!5227) (hashF!3198 Hashable!1279) (_size!2752 (_ BitVec 32)) (defaultValue!1439 Int)) )
))
(declare-datatypes ((CacheDown!750 0))(
  ( (CacheDown!751 (cache!1660 MutableMap!1279)) )
))
(declare-fun cacheDown!411 () CacheDown!750)

(declare-fun inv!17074 (CacheDown!750) Bool)

(assert (=> start!111838 (and (inv!17074 cacheDown!411) e!821833)))

(declare-fun inv!17075 (BalanceConc!8282) Bool)

(assert (=> start!111838 (and (inv!17075 ts!110) e!821830)))

(assert (=> start!111838 true))

(declare-fun b!1282070 () Bool)

(declare-fun res!575350 () Bool)

(assert (=> b!1282070 (=> (not res!575350) (not e!821820))))

(declare-fun rulesInvariant!1747 (LexerInterface!1875 List!12749) Bool)

(assert (=> b!1282070 (= res!575350 (rulesInvariant!1747 thiss!10944 rs!174))))

(declare-fun b!1282071 () Bool)

(declare-fun e!821818 () Bool)

(declare-fun e!821819 () Bool)

(declare-fun lt!423120 () MutLongMap!1335)

(assert (=> b!1282071 (= e!821818 (and e!821819 ((_ is LongMap!1335) lt!423120)))))

(assert (=> b!1282071 (= lt!423120 (v!20956 (underlying!2878 (cache!1660 cacheDown!411))))))

(declare-fun b!1282072 () Bool)

(declare-fun e!821834 () Bool)

(declare-fun e!821829 () Bool)

(assert (=> b!1282072 (= e!821834 e!821829)))

(assert (=> b!1282073 (= e!821825 (and tp!372010 tp!372000))))

(declare-fun mapNonEmpty!6399 () Bool)

(declare-fun tp!372008 () Bool)

(declare-fun tp!372005 () Bool)

(assert (=> mapNonEmpty!6399 (= mapRes!6400 (and tp!372008 tp!372005))))

(declare-fun mapValue!6399 () List!12753)

(declare-fun mapRest!6400 () (Array (_ BitVec 32) List!12753))

(declare-fun mapKey!6399 () (_ BitVec 32))

(assert (=> mapNonEmpty!6399 (= (arr!2116 (_values!1614 (v!20955 (underlying!2877 (v!20956 (underlying!2878 (cache!1660 cacheDown!411))))))) (store mapRest!6400 mapKey!6399 mapValue!6399))))

(declare-fun mapNonEmpty!6400 () Bool)

(declare-fun tp!372004 () Bool)

(declare-fun tp!372007 () Bool)

(assert (=> mapNonEmpty!6400 (= mapRes!6399 (and tp!372004 tp!372007))))

(declare-fun mapRest!6399 () (Array (_ BitVec 32) List!12752))

(declare-fun mapKey!6400 () (_ BitVec 32))

(declare-fun mapValue!6400 () List!12752)

(assert (=> mapNonEmpty!6400 (= (arr!2115 (_values!1613 (v!20953 (underlying!2875 (v!20954 (underlying!2876 (cache!1659 cacheUp!398))))))) (store mapRest!6399 mapKey!6400 mapValue!6400))))

(declare-fun e!821838 () Bool)

(declare-fun tp!372013 () Bool)

(declare-fun tp!371996 () Bool)

(declare-fun array_inv!1537 (array!4744) Bool)

(assert (=> b!1282074 (= e!821829 (and tp!372002 tp!371996 tp!372013 (array_inv!1535 (_keys!1629 (v!20955 (underlying!2877 (v!20956 (underlying!2878 (cache!1660 cacheDown!411))))))) (array_inv!1537 (_values!1614 (v!20955 (underlying!2877 (v!20956 (underlying!2878 (cache!1660 cacheDown!411))))))) e!821838))))

(declare-fun b!1282075 () Bool)

(declare-fun res!575347 () Bool)

(assert (=> b!1282075 (=> (not res!575347) (not e!821820))))

(declare-fun isEmpty!7535 (List!12749) Bool)

(assert (=> b!1282075 (= res!575347 (not (isEmpty!7535 rs!174)))))

(declare-fun b!1282076 () Bool)

(declare-fun e!821823 () Bool)

(declare-fun lt!423121 () MutLongMap!1334)

(assert (=> b!1282076 (= e!821823 (and e!821835 ((_ is LongMap!1334) lt!423121)))))

(assert (=> b!1282076 (= lt!423121 (v!20954 (underlying!2876 (cache!1659 cacheUp!398))))))

(declare-fun b!1282077 () Bool)

(assert (=> b!1282077 (= e!821819 e!821834)))

(declare-fun b!1282078 () Bool)

(assert (=> b!1282078 (= e!821820 false)))

(declare-datatypes ((tuple3!1158 0))(
  ( (tuple3!1159 (_1!7154 Bool) (_2!7154 CacheUp!748) (_3!870 CacheDown!750)) )
))
(declare-fun lt!423119 () tuple3!1158)

(declare-fun rulesProduceIndividualTokenMem!20 (LexerInterface!1875 List!12749 Token!4022 CacheUp!748 CacheDown!750) tuple3!1158)

(declare-fun head!2182 (BalanceConc!8282) Token!4022)

(assert (=> b!1282078 (= lt!423119 (rulesProduceIndividualTokenMem!20 thiss!10944 rs!174 (head!2182 ts!110) cacheUp!398 cacheDown!411))))

(declare-fun b!1282079 () Bool)

(assert (=> b!1282079 (= e!821822 e!821837)))

(declare-fun b!1282080 () Bool)

(declare-fun res!575349 () Bool)

(assert (=> b!1282080 (=> (not res!575349) (not e!821820))))

(declare-fun isEmpty!7536 (BalanceConc!8282) Bool)

(assert (=> b!1282080 (= res!575349 (not (isEmpty!7536 ts!110)))))

(assert (=> b!1282081 (= e!821832 (and e!821818 tp!372014))))

(assert (=> b!1282082 (= e!821827 (and e!821823 tp!372011))))

(declare-fun b!1282083 () Bool)

(declare-fun tp!371998 () Bool)

(assert (=> b!1282083 (= e!821838 (and tp!371998 mapRes!6400))))

(declare-fun condMapEmpty!6399 () Bool)

(declare-fun mapDefault!6399 () List!12753)

(assert (=> b!1282083 (= condMapEmpty!6399 (= (arr!2116 (_values!1614 (v!20955 (underlying!2877 (v!20956 (underlying!2878 (cache!1660 cacheDown!411))))))) ((as const (Array (_ BitVec 32) List!12753)) mapDefault!6399)))))

(assert (= (and start!111838 res!575348) b!1282075))

(assert (= (and b!1282075 res!575347) b!1282070))

(assert (= (and b!1282070 res!575350) b!1282080))

(assert (= (and b!1282080 res!575349) b!1282078))

(assert (= b!1282063 b!1282073))

(assert (= b!1282064 b!1282063))

(assert (= (and start!111838 ((_ is Cons!12683) rs!174)) b!1282064))

(assert (= (and b!1282068 condMapEmpty!6400) mapIsEmpty!6399))

(assert (= (and b!1282068 (not condMapEmpty!6400)) mapNonEmpty!6400))

(assert (= b!1282067 b!1282068))

(assert (= b!1282079 b!1282067))

(assert (= b!1282062 b!1282079))

(assert (= (and b!1282076 ((_ is LongMap!1334) (v!20954 (underlying!2876 (cache!1659 cacheUp!398))))) b!1282062))

(assert (= b!1282082 b!1282076))

(assert (= (and b!1282069 ((_ is HashMap!1278) (cache!1659 cacheUp!398))) b!1282082))

(assert (= start!111838 b!1282069))

(assert (= (and b!1282083 condMapEmpty!6399) mapIsEmpty!6400))

(assert (= (and b!1282083 (not condMapEmpty!6399)) mapNonEmpty!6399))

(assert (= b!1282074 b!1282083))

(assert (= b!1282072 b!1282074))

(assert (= b!1282077 b!1282072))

(assert (= (and b!1282071 ((_ is LongMap!1335) (v!20956 (underlying!2878 (cache!1660 cacheDown!411))))) b!1282077))

(assert (= b!1282081 b!1282071))

(assert (= (and b!1282065 ((_ is HashMap!1279) (cache!1660 cacheDown!411))) b!1282081))

(assert (= start!111838 b!1282065))

(assert (= start!111838 b!1282066))

(declare-fun m!1432727 () Bool)

(assert (=> mapNonEmpty!6399 m!1432727))

(declare-fun m!1432729 () Bool)

(assert (=> b!1282075 m!1432729))

(declare-fun m!1432731 () Bool)

(assert (=> b!1282070 m!1432731))

(declare-fun m!1432733 () Bool)

(assert (=> b!1282067 m!1432733))

(declare-fun m!1432735 () Bool)

(assert (=> b!1282067 m!1432735))

(declare-fun m!1432737 () Bool)

(assert (=> b!1282080 m!1432737))

(declare-fun m!1432739 () Bool)

(assert (=> b!1282078 m!1432739))

(assert (=> b!1282078 m!1432739))

(declare-fun m!1432741 () Bool)

(assert (=> b!1282078 m!1432741))

(declare-fun m!1432743 () Bool)

(assert (=> b!1282074 m!1432743))

(declare-fun m!1432745 () Bool)

(assert (=> b!1282074 m!1432745))

(declare-fun m!1432747 () Bool)

(assert (=> b!1282066 m!1432747))

(declare-fun m!1432749 () Bool)

(assert (=> start!111838 m!1432749))

(declare-fun m!1432751 () Bool)

(assert (=> start!111838 m!1432751))

(declare-fun m!1432753 () Bool)

(assert (=> start!111838 m!1432753))

(declare-fun m!1432755 () Bool)

(assert (=> b!1282063 m!1432755))

(declare-fun m!1432757 () Bool)

(assert (=> b!1282063 m!1432757))

(declare-fun m!1432759 () Bool)

(assert (=> mapNonEmpty!6400 m!1432759))

(check-sat b_and!85021 (not b!1282064) (not b!1282066) (not start!111838) b_and!85011 b_and!85019 b_and!85015 (not b!1282063) (not b_next!30575) (not mapNonEmpty!6399) (not b!1282074) b_and!85013 b_and!85017 (not b!1282067) (not b!1282070) (not mapNonEmpty!6400) (not b_next!30573) (not b_next!30577) (not b!1282078) (not b_next!30579) (not b_next!30571) (not b!1282080) (not b_next!30581) (not b!1282075) (not b!1282083) (not b!1282068))
(check-sat (not b_next!30573) b_and!85021 b_and!85011 b_and!85019 b_and!85015 (not b_next!30575) (not b_next!30577) b_and!85013 b_and!85017 (not b_next!30581) (not b_next!30579) (not b_next!30571))
