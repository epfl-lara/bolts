; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206118 () Bool)

(assert start!206118)

(declare-fun b!2108023 () Bool)

(declare-fun b_free!60693 () Bool)

(declare-fun b_next!61397 () Bool)

(assert (=> b!2108023 (= b_free!60693 (not b_next!61397))))

(declare-fun tp!640201 () Bool)

(declare-fun b_and!170255 () Bool)

(assert (=> b!2108023 (= tp!640201 b_and!170255)))

(declare-fun b_free!60695 () Bool)

(declare-fun b_next!61399 () Bool)

(assert (=> b!2108023 (= b_free!60695 (not b_next!61399))))

(declare-fun tp!640212 () Bool)

(declare-fun b_and!170257 () Bool)

(assert (=> b!2108023 (= tp!640212 b_and!170257)))

(declare-fun b!2108037 () Bool)

(declare-fun b_free!60697 () Bool)

(declare-fun b_next!61401 () Bool)

(assert (=> b!2108037 (= b_free!60697 (not b_next!61401))))

(declare-fun tp!640202 () Bool)

(declare-fun b_and!170259 () Bool)

(assert (=> b!2108037 (= tp!640202 b_and!170259)))

(declare-fun b_free!60699 () Bool)

(declare-fun b_next!61403 () Bool)

(assert (=> b!2108037 (= b_free!60699 (not b_next!61403))))

(declare-fun tp!640207 () Bool)

(declare-fun b_and!170261 () Bool)

(assert (=> b!2108037 (= tp!640207 b_and!170261)))

(declare-fun b!2108039 () Bool)

(declare-fun b_free!60701 () Bool)

(declare-fun b_next!61405 () Bool)

(assert (=> b!2108039 (= b_free!60701 (not b_next!61405))))

(declare-fun tp!640190 () Bool)

(declare-fun b_and!170263 () Bool)

(assert (=> b!2108039 (= tp!640190 b_and!170263)))

(declare-fun b!2108033 () Bool)

(declare-fun b_free!60703 () Bool)

(declare-fun b_next!61407 () Bool)

(assert (=> b!2108033 (= b_free!60703 (not b_next!61407))))

(declare-fun tp!640219 () Bool)

(declare-fun b_and!170265 () Bool)

(assert (=> b!2108033 (= tp!640219 b_and!170265)))

(declare-fun b!2108013 () Bool)

(declare-fun b_free!60705 () Bool)

(declare-fun b_next!61409 () Bool)

(assert (=> b!2108013 (= b_free!60705 (not b_next!61409))))

(declare-fun tp!640208 () Bool)

(declare-fun b_and!170267 () Bool)

(assert (=> b!2108013 (= tp!640208 b_and!170267)))

(declare-fun b!2107996 () Bool)

(declare-fun b_free!60707 () Bool)

(declare-fun b_next!61411 () Bool)

(assert (=> b!2107996 (= b_free!60707 (not b_next!61411))))

(declare-fun tp!640227 () Bool)

(declare-fun b_and!170269 () Bool)

(assert (=> b!2107996 (= tp!640227 b_and!170269)))

(declare-fun b!2108004 () Bool)

(declare-fun b_free!60709 () Bool)

(declare-fun b_next!61413 () Bool)

(assert (=> b!2108004 (= b_free!60709 (not b_next!61413))))

(declare-fun tp!640196 () Bool)

(declare-fun b_and!170271 () Bool)

(assert (=> b!2108004 (= tp!640196 b_and!170271)))

(declare-fun b!2108003 () Bool)

(declare-fun b_free!60711 () Bool)

(declare-fun b_next!61415 () Bool)

(assert (=> b!2108003 (= b_free!60711 (not b_next!61415))))

(declare-fun tp!640215 () Bool)

(declare-fun b_and!170273 () Bool)

(assert (=> b!2108003 (= tp!640215 b_and!170273)))

(declare-fun b!2108011 () Bool)

(declare-fun b_free!60713 () Bool)

(declare-fun b_next!61417 () Bool)

(assert (=> b!2108011 (= b_free!60713 (not b_next!61417))))

(declare-fun tp!640218 () Bool)

(declare-fun b_and!170275 () Bool)

(assert (=> b!2108011 (= tp!640218 b_and!170275)))

(declare-fun b!2108018 () Bool)

(declare-fun b_free!60715 () Bool)

(declare-fun b_next!61419 () Bool)

(assert (=> b!2108018 (= b_free!60715 (not b_next!61419))))

(declare-fun tp!640193 () Bool)

(declare-fun b_and!170277 () Bool)

(assert (=> b!2108018 (= tp!640193 b_and!170277)))

(declare-fun b!2107995 () Bool)

(declare-fun e!1340175 () Bool)

(declare-fun tp!640197 () Bool)

(declare-fun mapRes!10960 () Bool)

(assert (=> b!2107995 (= e!1340175 (and tp!640197 mapRes!10960))))

(declare-fun condMapEmpty!10962 () Bool)

(declare-datatypes ((C!11308 0))(
  ( (C!11309 (val!6640 Int)) )
))
(declare-datatypes ((Regex!5581 0))(
  ( (ElementMatch!5581 (c!338956 C!11308)) (Concat!9865 (regOne!11674 Regex!5581) (regTwo!11674 Regex!5581)) (EmptyExpr!5581) (Star!5581 (reg!5910 Regex!5581)) (EmptyLang!5581) (Union!5581 (regOne!11675 Regex!5581) (regTwo!11675 Regex!5581)) )
))
(declare-datatypes ((List!23395 0))(
  ( (Nil!23311) (Cons!23311 (h!28712 Regex!5581) (t!195888 List!23395)) )
))
(declare-datatypes ((Context!2302 0))(
  ( (Context!2303 (exprs!1651 List!23395)) )
))
(declare-datatypes ((tuple3!2610 0))(
  ( (tuple3!2611 (_1!13074 Regex!5581) (_2!13074 Context!2302) (_3!1769 C!11308)) )
))
(declare-datatypes ((tuple2!22610 0))(
  ( (tuple2!22611 (_1!13075 Context!2302) (_2!13075 C!11308)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22612 0))(
  ( (tuple2!22613 (_1!13076 tuple2!22610) (_2!13076 (InoxSet Context!2302))) )
))
(declare-datatypes ((List!23396 0))(
  ( (Nil!23312) (Cons!23312 (h!28713 tuple2!22612) (t!195889 List!23396)) )
))
(declare-datatypes ((array!7831 0))(
  ( (array!7832 (arr!3469 (Array (_ BitVec 32) (_ BitVec 64))) (size!18194 (_ BitVec 32))) )
))
(declare-datatypes ((array!7833 0))(
  ( (array!7834 (arr!3470 (Array (_ BitVec 32) List!23396)) (size!18195 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4534 0))(
  ( (LongMapFixedSize!4535 (defaultEntry!2632 Int) (mask!6373 (_ BitVec 32)) (extraKeys!2515 (_ BitVec 32)) (zeroValue!2525 List!23396) (minValue!2525 List!23396) (_size!4585 (_ BitVec 32)) (_keys!2564 array!7831) (_values!2547 array!7833) (_vacant!2328 (_ BitVec 32))) )
))
(declare-datatypes ((List!23397 0))(
  ( (Nil!23313) (Cons!23313 (h!28714 (_ BitVec 16)) (t!195890 List!23397)) )
))
(declare-datatypes ((TokenValue!4284 0))(
  ( (FloatLiteralValue!8568 (text!30433 List!23397)) (TokenValueExt!4283 (__x!14941 Int)) (Broken!21420 (value!129833 List!23397)) (Object!4367) (End!4284) (Def!4284) (Underscore!4284) (Match!4284) (Else!4284) (Error!4284) (Case!4284) (If!4284) (Extends!4284) (Abstract!4284) (Class!4284) (Val!4284) (DelimiterValue!8568 (del!4344 List!23397)) (KeywordValue!4290 (value!129834 List!23397)) (CommentValue!8568 (value!129835 List!23397)) (WhitespaceValue!8568 (value!129836 List!23397)) (IndentationValue!4284 (value!129837 List!23397)) (String!26621) (Int32!4284) (Broken!21421 (value!129838 List!23397)) (Boolean!4285) (Unit!37484) (OperatorValue!4287 (op!4344 List!23397)) (IdentifierValue!8568 (value!129839 List!23397)) (IdentifierValue!8569 (value!129840 List!23397)) (WhitespaceValue!8569 (value!129841 List!23397)) (True!8568) (False!8568) (Broken!21422 (value!129842 List!23397)) (Broken!21423 (value!129843 List!23397)) (True!8569) (RightBrace!4284) (RightBracket!4284) (Colon!4284) (Null!4284) (Comma!4284) (LeftBracket!4284) (False!8569) (LeftBrace!4284) (ImaginaryLiteralValue!4284 (text!30434 List!23397)) (StringLiteralValue!12852 (value!129844 List!23397)) (EOFValue!4284 (value!129845 List!23397)) (IdentValue!4284 (value!129846 List!23397)) (DelimiterValue!8569 (value!129847 List!23397)) (DedentValue!4284 (value!129848 List!23397)) (NewLineValue!4284 (value!129849 List!23397)) (IntegerValue!12852 (value!129850 (_ BitVec 32)) (text!30435 List!23397)) (IntegerValue!12853 (value!129851 Int) (text!30436 List!23397)) (Times!4284) (Or!4284) (Equal!4284) (Minus!4284) (Broken!21424 (value!129852 List!23397)) (And!4284) (Div!4284) (LessEqual!4284) (Mod!4284) (Concat!9866) (Not!4284) (Plus!4284) (SpaceValue!4284 (value!129853 List!23397)) (IntegerValue!12854 (value!129854 Int) (text!30437 List!23397)) (StringLiteralValue!12853 (text!30438 List!23397)) (FloatLiteralValue!8569 (text!30439 List!23397)) (BytesLiteralValue!4284 (value!129855 List!23397)) (CommentValue!8569 (value!129856 List!23397)) (StringLiteralValue!12854 (value!129857 List!23397)) (ErrorTokenValue!4284 (msg!4345 List!23397)) )
))
(declare-datatypes ((String!26622 0))(
  ( (String!26623 (value!129858 String)) )
))
(declare-datatypes ((List!23398 0))(
  ( (Nil!23314) (Cons!23314 (h!28715 C!11308) (t!195891 List!23398)) )
))
(declare-datatypes ((IArray!15461 0))(
  ( (IArray!15462 (innerList!7788 List!23398)) )
))
(declare-datatypes ((Conc!7728 0))(
  ( (Node!7728 (left!18167 Conc!7728) (right!18497 Conc!7728) (csize!15686 Int) (cheight!7939 Int)) (Leaf!11286 (xs!10670 IArray!15461) (csize!15687 Int)) (Empty!7728) )
))
(declare-datatypes ((BalanceConc!15218 0))(
  ( (BalanceConc!15219 (c!338957 Conc!7728)) )
))
(declare-datatypes ((TokenValueInjection!8152 0))(
  ( (TokenValueInjection!8153 (toValue!5859 Int) (toChars!5718 Int)) )
))
(declare-datatypes ((Rule!8096 0))(
  ( (Rule!8097 (regex!4148 Regex!5581) (tag!4638 String!26622) (isSeparator!4148 Bool) (transformation!4148 TokenValueInjection!8152)) )
))
(declare-datatypes ((Token!7806 0))(
  ( (Token!7807 (value!129859 TokenValue!4284) (rule!6461 Rule!8096) (size!18196 Int) (originalCharacters!4934 List!23398)) )
))
(declare-datatypes ((tuple2!22614 0))(
  ( (tuple2!22615 (_1!13077 Token!7806) (_2!13077 BalanceConc!15218)) )
))
(declare-datatypes ((Option!4858 0))(
  ( (None!4857) (Some!4857 (v!27856 tuple2!22614)) )
))
(declare-datatypes ((Hashable!2181 0))(
  ( (HashableExt!2180 (__x!14942 Int)) )
))
(declare-datatypes ((Hashable!2182 0))(
  ( (HashableExt!2181 (__x!14943 Int)) )
))
(declare-datatypes ((Cell!8893 0))(
  ( (Cell!8894 (v!27857 LongMapFixedSize!4534)) )
))
(declare-datatypes ((MutLongMap!2267 0))(
  ( (LongMap!2267 (underlying!4729 Cell!8893)) (MutLongMapExt!2266 (__x!14944 Int)) )
))
(declare-datatypes ((Cell!8895 0))(
  ( (Cell!8896 (v!27858 MutLongMap!2267)) )
))
(declare-datatypes ((MutableMap!2181 0))(
  ( (MutableMapExt!2180 (__x!14945 Int)) (HashMap!2181 (underlying!4730 Cell!8895) (hashF!4104 Hashable!2182) (_size!4586 (_ BitVec 32)) (defaultValue!2343 Int)) )
))
(declare-datatypes ((tuple2!22616 0))(
  ( (tuple2!22617 (_1!13078 tuple3!2610) (_2!13078 (InoxSet Context!2302))) )
))
(declare-datatypes ((List!23399 0))(
  ( (Nil!23315) (Cons!23315 (h!28716 tuple2!22616) (t!195892 List!23399)) )
))
(declare-datatypes ((array!7835 0))(
  ( (array!7836 (arr!3471 (Array (_ BitVec 32) List!23399)) (size!18197 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4536 0))(
  ( (LongMapFixedSize!4537 (defaultEntry!2633 Int) (mask!6374 (_ BitVec 32)) (extraKeys!2516 (_ BitVec 32)) (zeroValue!2526 List!23399) (minValue!2526 List!23399) (_size!4587 (_ BitVec 32)) (_keys!2565 array!7831) (_values!2548 array!7835) (_vacant!2329 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8897 0))(
  ( (Cell!8898 (v!27859 LongMapFixedSize!4536)) )
))
(declare-datatypes ((MutLongMap!2268 0))(
  ( (LongMap!2268 (underlying!4731 Cell!8897)) (MutLongMapExt!2267 (__x!14946 Int)) )
))
(declare-datatypes ((Cell!8899 0))(
  ( (Cell!8900 (v!27860 MutLongMap!2268)) )
))
(declare-datatypes ((MutableMap!2182 0))(
  ( (MutableMapExt!2181 (__x!14947 Int)) (HashMap!2182 (underlying!4732 Cell!8899) (hashF!4105 Hashable!2181) (_size!4588 (_ BitVec 32)) (defaultValue!2344 Int)) )
))
(declare-datatypes ((CacheDown!1480 0))(
  ( (CacheDown!1481 (cache!2562 MutableMap!2182)) )
))
(declare-datatypes ((CacheUp!1476 0))(
  ( (CacheUp!1477 (cache!2563 MutableMap!2181)) )
))
(declare-datatypes ((tuple3!2612 0))(
  ( (tuple3!2613 (_1!13079 Option!4858) (_2!13079 CacheUp!1476) (_3!1770 CacheDown!1480)) )
))
(declare-fun err!4129 () tuple3!2612)

(declare-fun mapDefault!10961 () List!23399)

(assert (=> b!2107995 (= condMapEmpty!10962 (= (arr!3471 (_values!2548 (v!27859 (underlying!4731 (v!27860 (underlying!4732 (cache!2562 (_3!1770 err!4129)))))))) ((as const (Array (_ BitVec 32) List!23399)) mapDefault!10961)))))

(declare-fun tp!640220 () Bool)

(declare-fun e!1340174 () Bool)

(declare-fun tp!640226 () Bool)

(declare-fun array_inv!2494 (array!7831) Bool)

(declare-fun array_inv!2495 (array!7835) Bool)

(assert (=> b!2107996 (= e!1340174 (and tp!640227 tp!640220 tp!640226 (array_inv!2494 (_keys!2565 (v!27859 (underlying!4731 (v!27860 (underlying!4732 (cache!2562 (_3!1770 err!4129)))))))) (array_inv!2495 (_values!2548 (v!27859 (underlying!4731 (v!27860 (underlying!4732 (cache!2562 (_3!1770 err!4129)))))))) e!1340175))))

(declare-fun b!2107997 () Bool)

(declare-fun e!1340185 () Bool)

(declare-fun e!1340182 () Bool)

(assert (=> b!2107997 (= e!1340185 e!1340182)))

(declare-fun res!916114 () Bool)

(assert (=> b!2107997 (=> (not res!916114) (not e!1340182))))

(declare-fun lt!791756 () List!23398)

(declare-fun totalInput!482 () BalanceConc!15218)

(declare-fun isSuffix!564 (List!23398 List!23398) Bool)

(declare-fun list!9454 (BalanceConc!15218) List!23398)

(assert (=> b!2107997 (= res!916114 (isSuffix!564 lt!791756 (list!9454 totalInput!482)))))

(declare-fun input!1444 () BalanceConc!15218)

(assert (=> b!2107997 (= lt!791756 (list!9454 input!1444))))

(declare-fun b!2107998 () Bool)

(declare-fun e!1340181 () Bool)

(declare-fun tp!640199 () Bool)

(declare-fun inv!30851 (Conc!7728) Bool)

(assert (=> b!2107998 (= e!1340181 (and (inv!30851 (c!338957 input!1444)) tp!640199))))

(declare-fun mapNonEmpty!10960 () Bool)

(declare-fun tp!640216 () Bool)

(declare-fun tp!640200 () Bool)

(assert (=> mapNonEmpty!10960 (= mapRes!10960 (and tp!640216 tp!640200))))

(declare-fun mapRest!10963 () (Array (_ BitVec 32) List!23399))

(declare-fun mapKey!10962 () (_ BitVec 32))

(declare-fun mapValue!10963 () List!23399)

(assert (=> mapNonEmpty!10960 (= (arr!3471 (_values!2548 (v!27859 (underlying!4731 (v!27860 (underlying!4732 (cache!2562 (_3!1770 err!4129)))))))) (store mapRest!10963 mapKey!10962 mapValue!10963))))

(declare-fun b!2107999 () Bool)

(declare-fun e!1340145 () Bool)

(declare-fun e!1340143 () Bool)

(assert (=> b!2107999 (= e!1340145 e!1340143)))

(declare-fun b!2108000 () Bool)

(declare-fun e!1340144 () Bool)

(declare-fun e!1340178 () Bool)

(assert (=> b!2108000 (= e!1340144 e!1340178)))

(declare-fun b!2108001 () Bool)

(declare-fun e!1340171 () Bool)

(declare-fun e!1340160 () Bool)

(assert (=> b!2108001 (= e!1340171 e!1340160)))

(declare-fun b!2108002 () Bool)

(declare-fun e!1340163 () Bool)

(declare-fun e!1340157 () Bool)

(declare-fun tp!640204 () Bool)

(assert (=> b!2108002 (= e!1340163 (and e!1340157 tp!640204))))

(declare-fun mapNonEmpty!10961 () Bool)

(declare-fun mapRes!10963 () Bool)

(declare-fun tp!640191 () Bool)

(declare-fun tp!640223 () Bool)

(assert (=> mapNonEmpty!10961 (= mapRes!10963 (and tp!640191 tp!640223))))

(declare-fun mapKey!10963 () (_ BitVec 32))

(declare-fun mapValue!10962 () List!23396)

(declare-fun mapRest!10960 () (Array (_ BitVec 32) List!23396))

(assert (=> mapNonEmpty!10961 (= (arr!3470 (_values!2547 (v!27857 (underlying!4729 (v!27858 (underlying!4730 (cache!2563 (_2!13079 err!4129)))))))) (store mapRest!10960 mapKey!10963 mapValue!10962))))

(declare-fun e!1340186 () Bool)

(assert (=> b!2108003 (= e!1340178 (and e!1340186 tp!640215))))

(declare-fun tp!640198 () Bool)

(declare-fun e!1340153 () Bool)

(declare-fun tp!640210 () Bool)

(declare-fun cacheDown!688 () CacheDown!1480)

(declare-fun e!1340142 () Bool)

(assert (=> b!2108004 (= e!1340153 (and tp!640196 tp!640198 tp!640210 (array_inv!2494 (_keys!2565 (v!27859 (underlying!4731 (v!27860 (underlying!4732 (cache!2562 cacheDown!688))))))) (array_inv!2495 (_values!2548 (v!27859 (underlying!4731 (v!27860 (underlying!4732 (cache!2562 cacheDown!688))))))) e!1340142))))

(declare-fun b!2108005 () Bool)

(declare-fun e!1340183 () Bool)

(declare-fun e!1340159 () Bool)

(assert (=> b!2108005 (= e!1340183 e!1340159)))

(declare-fun mapIsEmpty!10960 () Bool)

(declare-fun mapRes!10961 () Bool)

(assert (=> mapIsEmpty!10960 mapRes!10961))

(declare-fun b!2108006 () Bool)

(declare-fun res!916119 () Bool)

(assert (=> b!2108006 (=> (not res!916119) (not e!1340182))))

(declare-fun valid!1794 (CacheDown!1480) Bool)

(assert (=> b!2108006 (= res!916119 (valid!1794 cacheDown!688))))

(declare-fun b!2108007 () Bool)

(declare-fun e!1340161 () Bool)

(declare-fun e!1340172 () Bool)

(declare-fun lt!791751 () MutLongMap!2267)

(get-info :version)

(assert (=> b!2108007 (= e!1340161 (and e!1340172 ((_ is LongMap!2267) lt!791751)))))

(assert (=> b!2108007 (= lt!791751 (v!27858 (underlying!4730 (cache!2563 (_2!13079 err!4129)))))))

(declare-fun mapIsEmpty!10961 () Bool)

(declare-fun mapRes!10962 () Bool)

(assert (=> mapIsEmpty!10961 mapRes!10962))

(declare-fun mapIsEmpty!10962 () Bool)

(assert (=> mapIsEmpty!10962 mapRes!10960))

(declare-fun b!2108008 () Bool)

(declare-fun e!1340176 () Bool)

(assert (=> b!2108008 (= e!1340176 e!1340174)))

(declare-fun b!2108009 () Bool)

(declare-fun e!1340148 () Bool)

(declare-fun e!1340152 () Bool)

(declare-fun lt!791753 () MutLongMap!2268)

(assert (=> b!2108009 (= e!1340148 (and e!1340152 ((_ is LongMap!2268) lt!791753)))))

(assert (=> b!2108009 (= lt!791753 (v!27860 (underlying!4732 (cache!2562 (_3!1770 err!4129)))))))

(declare-fun b!2108010 () Bool)

(declare-fun e!1340189 () Bool)

(declare-fun tp!640221 () Bool)

(assert (=> b!2108010 (= e!1340189 (and (inv!30851 (c!338957 (_2!13077 (v!27856 (_1!13079 err!4129))))) tp!640221))))

(declare-fun tp!640205 () Bool)

(declare-fun e!1340179 () Bool)

(declare-fun e!1340188 () Bool)

(declare-fun cacheUp!675 () CacheUp!1476)

(declare-fun tp!640214 () Bool)

(declare-fun array_inv!2496 (array!7833) Bool)

(assert (=> b!2108011 (= e!1340179 (and tp!640218 tp!640214 tp!640205 (array_inv!2494 (_keys!2564 (v!27857 (underlying!4729 (v!27858 (underlying!4730 (cache!2563 cacheUp!675))))))) (array_inv!2496 (_values!2547 (v!27857 (underlying!4729 (v!27858 (underlying!4730 (cache!2563 cacheUp!675))))))) e!1340188))))

(declare-fun b!2108012 () Bool)

(assert (=> b!2108012 (= e!1340143 e!1340179)))

(declare-fun mapNonEmpty!10962 () Bool)

(declare-fun tp!640195 () Bool)

(declare-fun tp!640211 () Bool)

(assert (=> mapNonEmpty!10962 (= mapRes!10961 (and tp!640195 tp!640211))))

(declare-fun mapRest!10961 () (Array (_ BitVec 32) List!23396))

(declare-fun mapValue!10960 () List!23396)

(declare-fun mapKey!10961 () (_ BitVec 32))

(assert (=> mapNonEmpty!10962 (= (arr!3470 (_values!2547 (v!27857 (underlying!4729 (v!27858 (underlying!4730 (cache!2563 cacheUp!675))))))) (store mapRest!10961 mapKey!10961 mapValue!10960))))

(declare-fun e!1340184 () Bool)

(assert (=> b!2108013 (= e!1340160 (and e!1340184 tp!640208))))

(declare-fun b!2108014 () Bool)

(declare-fun res!916120 () Bool)

(declare-fun e!1340169 () Bool)

(assert (=> b!2108014 (=> (not res!916120) (not e!1340169))))

(declare-fun lt!791757 () tuple3!2612)

(declare-fun valid!1795 (CacheUp!1476) Bool)

(assert (=> b!2108014 (= res!916120 (valid!1795 (_2!13079 lt!791757)))))

(declare-fun b!2108015 () Bool)

(declare-fun e!1340156 () Bool)

(declare-fun tp!640194 () Bool)

(assert (=> b!2108015 (= e!1340156 (and (inv!30851 (c!338957 totalInput!482)) tp!640194))))

(declare-fun b!2108016 () Bool)

(declare-fun e!1340154 () Bool)

(assert (=> b!2108016 (= e!1340172 e!1340154)))

(declare-fun b!2108017 () Bool)

(declare-fun res!916121 () Bool)

(assert (=> b!2108017 (=> (not res!916121) (not e!1340185))))

(declare-datatypes ((List!23400 0))(
  ( (Nil!23316) (Cons!23316 (h!28717 Rule!8096) (t!195893 List!23400)) )
))
(declare-fun rulesArg!349 () List!23400)

(declare-fun isEmpty!14290 (List!23400) Bool)

(assert (=> b!2108017 (= res!916121 (not (isEmpty!14290 rulesArg!349)))))

(assert (=> b!2108018 (= e!1340159 (and e!1340161 tp!640193))))

(declare-fun b!2108019 () Bool)

(declare-fun e!1340149 () Bool)

(assert (=> b!2108019 (= e!1340154 e!1340149)))

(declare-fun b!2108020 () Bool)

(declare-fun tp!640189 () Bool)

(assert (=> b!2108020 (= e!1340142 (and tp!640189 mapRes!10962))))

(declare-fun condMapEmpty!10961 () Bool)

(declare-fun mapDefault!10960 () List!23399)

(assert (=> b!2108020 (= condMapEmpty!10961 (= (arr!3471 (_values!2548 (v!27859 (underlying!4731 (v!27860 (underlying!4732 (cache!2562 cacheDown!688))))))) ((as const (Array (_ BitVec 32) List!23399)) mapDefault!10960)))))

(declare-fun b!2108021 () Bool)

(declare-fun e!1340146 () Bool)

(assert (=> b!2108021 (= e!1340182 (not e!1340146))))

(declare-fun res!916118 () Bool)

(assert (=> b!2108021 (=> res!916118 e!1340146)))

(assert (=> b!2108021 (= res!916118 (or (and ((_ is Cons!23316) rulesArg!349) ((_ is Nil!23316) (t!195893 rulesArg!349))) ((_ is Cons!23316) rulesArg!349)))))

(declare-fun isPrefix!2078 (List!23398 List!23398) Bool)

(assert (=> b!2108021 (isPrefix!2078 lt!791756 lt!791756)))

(declare-datatypes ((Unit!37485 0))(
  ( (Unit!37486) )
))
(declare-fun lt!791752 () Unit!37485)

(declare-fun lemmaIsPrefixRefl!1396 (List!23398 List!23398) Unit!37485)

(assert (=> b!2108021 (= lt!791752 (lemmaIsPrefixRefl!1396 lt!791756 lt!791756))))

(declare-fun b!2108022 () Bool)

(declare-fun res!916122 () Bool)

(assert (=> b!2108022 (=> (not res!916122) (not e!1340182))))

(assert (=> b!2108022 (= res!916122 (valid!1795 cacheUp!675))))

(declare-fun e!1340168 () Bool)

(assert (=> b!2108023 (= e!1340168 (and tp!640201 tp!640212))))

(declare-fun b!2108024 () Bool)

(declare-fun e!1340170 () Bool)

(declare-fun lt!791755 () MutLongMap!2268)

(assert (=> b!2108024 (= e!1340186 (and e!1340170 ((_ is LongMap!2268) lt!791755)))))

(assert (=> b!2108024 (= lt!791755 (v!27860 (underlying!4732 (cache!2562 cacheDown!688))))))

(declare-fun b!2108025 () Bool)

(declare-fun e!1340165 () Bool)

(declare-fun e!1340177 () Bool)

(declare-fun inv!30852 (Token!7806) Bool)

(declare-fun inv!30853 (BalanceConc!15218) Bool)

(assert (=> b!2108025 (= e!1340165 (and (inv!30852 (_1!13077 (v!27856 (_1!13079 err!4129)))) e!1340177 (inv!30853 (_2!13077 (v!27856 (_1!13079 err!4129)))) e!1340189))))

(declare-fun b!2108026 () Bool)

(assert (=> b!2108026 (= e!1340169 (valid!1794 (_3!1770 lt!791757)))))

(declare-fun b!2108027 () Bool)

(declare-fun e!1340164 () Bool)

(declare-fun tp!640225 () Bool)

(assert (=> b!2108027 (= e!1340164 (and tp!640225 mapRes!10963))))

(declare-fun condMapEmpty!10960 () Bool)

(declare-fun mapDefault!10963 () List!23396)

(assert (=> b!2108027 (= condMapEmpty!10960 (= (arr!3470 (_values!2547 (v!27857 (underlying!4729 (v!27858 (underlying!4730 (cache!2563 (_2!13079 err!4129)))))))) ((as const (Array (_ BitVec 32) List!23396)) mapDefault!10963)))))

(declare-fun b!2108028 () Bool)

(declare-fun tp!640206 () Bool)

(declare-fun inv!30850 (String!26622) Bool)

(declare-fun inv!30854 (TokenValueInjection!8152) Bool)

(assert (=> b!2108028 (= e!1340157 (and tp!640206 (inv!30850 (tag!4638 (h!28717 rulesArg!349))) (inv!30854 (transformation!4148 (h!28717 rulesArg!349))) e!1340168))))

(declare-fun b!2108029 () Bool)

(declare-fun e!1340187 () Bool)

(assert (=> b!2108029 (= e!1340187 e!1340153)))

(declare-fun mapNonEmpty!10963 () Bool)

(declare-fun tp!640192 () Bool)

(declare-fun tp!640213 () Bool)

(assert (=> mapNonEmpty!10963 (= mapRes!10962 (and tp!640192 tp!640213))))

(declare-fun mapValue!10961 () List!23399)

(declare-fun mapRest!10962 () (Array (_ BitVec 32) List!23399))

(declare-fun mapKey!10960 () (_ BitVec 32))

(assert (=> mapNonEmpty!10963 (= (arr!3471 (_values!2548 (v!27859 (underlying!4731 (v!27860 (underlying!4732 (cache!2562 cacheDown!688))))))) (store mapRest!10962 mapKey!10960 mapValue!10961))))

(declare-fun b!2108030 () Bool)

(assert (=> b!2108030 (= e!1340152 e!1340176)))

(declare-fun tp!640222 () Bool)

(declare-fun e!1340162 () Bool)

(declare-fun b!2108031 () Bool)

(declare-fun inv!21 (TokenValue!4284) Bool)

(assert (=> b!2108031 (= e!1340177 (and (inv!21 (value!129859 (_1!13077 (v!27856 (_1!13079 err!4129))))) e!1340162 tp!640222))))

(declare-fun tp!640203 () Bool)

(declare-fun e!1340167 () Bool)

(declare-fun b!2108032 () Bool)

(assert (=> b!2108032 (= e!1340162 (and tp!640203 (inv!30850 (tag!4638 (rule!6461 (_1!13077 (v!27856 (_1!13079 err!4129)))))) (inv!30854 (transformation!4148 (rule!6461 (_1!13077 (v!27856 (_1!13079 err!4129)))))) e!1340167))))

(declare-fun tp!640224 () Bool)

(declare-fun tp!640209 () Bool)

(assert (=> b!2108033 (= e!1340149 (and tp!640219 tp!640209 tp!640224 (array_inv!2494 (_keys!2564 (v!27857 (underlying!4729 (v!27858 (underlying!4730 (cache!2563 (_2!13079 err!4129)))))))) (array_inv!2496 (_values!2547 (v!27857 (underlying!4729 (v!27858 (underlying!4730 (cache!2563 (_2!13079 err!4129)))))))) e!1340164))))

(declare-fun b!2108034 () Bool)

(declare-fun res!916115 () Bool)

(assert (=> b!2108034 (=> (not res!916115) (not e!1340185))))

(declare-datatypes ((LexerInterface!3745 0))(
  ( (LexerInterfaceExt!3742 (__x!14948 Int)) (Lexer!3743) )
))
(declare-fun thiss!15689 () LexerInterface!3745)

(declare-fun rulesValidInductive!1461 (LexerInterface!3745 List!23400) Bool)

(assert (=> b!2108034 (= res!916115 (rulesValidInductive!1461 thiss!15689 rulesArg!349))))

(declare-fun b!2108035 () Bool)

(declare-fun lt!791754 () MutLongMap!2267)

(assert (=> b!2108035 (= e!1340184 (and e!1340145 ((_ is LongMap!2267) lt!791754)))))

(assert (=> b!2108035 (= lt!791754 (v!27858 (underlying!4730 (cache!2563 cacheUp!675))))))

(declare-fun b!2108036 () Bool)

(assert (=> b!2108036 (= e!1340170 e!1340187)))

(declare-fun res!916116 () Bool)

(assert (=> start!206118 (=> (not res!916116) (not e!1340185))))

(assert (=> start!206118 (= res!916116 ((_ is Lexer!3743) thiss!15689))))

(assert (=> start!206118 e!1340185))

(assert (=> start!206118 e!1340163))

(assert (=> start!206118 (and (inv!30853 totalInput!482) e!1340156)))

(assert (=> start!206118 true))

(assert (=> start!206118 (and (inv!30853 input!1444) e!1340181)))

(declare-fun inv!30855 (CacheUp!1476) Bool)

(assert (=> start!206118 (and (inv!30855 cacheUp!675) e!1340171)))

(declare-fun inv!30856 (CacheDown!1480) Bool)

(assert (=> start!206118 (and (inv!30856 cacheDown!688) e!1340144)))

(assert (=> b!2108037 (= e!1340167 (and tp!640202 tp!640207))))

(declare-fun b!2108038 () Bool)

(assert (=> b!2108038 (= e!1340146 e!1340169)))

(declare-fun res!916117 () Bool)

(assert (=> b!2108038 (=> (not res!916117) (not e!1340169))))

(declare-fun maxPrefixZipperSequenceV2!380 (LexerInterface!3745 List!23400 BalanceConc!15218 BalanceConc!15218) Option!4858)

(assert (=> b!2108038 (= res!916117 (= (_1!13079 lt!791757) (maxPrefixZipperSequenceV2!380 thiss!15689 rulesArg!349 input!1444 totalInput!482)))))

(assert (=> b!2108038 (= lt!791757 err!4129)))

(assert (=> b!2108038 true))

(declare-fun e!1340190 () Bool)

(assert (=> b!2108038 (and e!1340165 (inv!30855 (_2!13079 err!4129)) e!1340183 (inv!30856 (_3!1770 err!4129)) e!1340190)))

(declare-fun e!1340155 () Bool)

(assert (=> b!2108039 (= e!1340155 (and e!1340148 tp!640190))))

(declare-fun b!2108040 () Bool)

(assert (=> b!2108040 (= e!1340190 e!1340155)))

(declare-fun mapIsEmpty!10963 () Bool)

(assert (=> mapIsEmpty!10963 mapRes!10963))

(declare-fun b!2108041 () Bool)

(declare-fun tp!640217 () Bool)

(assert (=> b!2108041 (= e!1340188 (and tp!640217 mapRes!10961))))

(declare-fun condMapEmpty!10963 () Bool)

(declare-fun mapDefault!10962 () List!23396)

(assert (=> b!2108041 (= condMapEmpty!10963 (= (arr!3470 (_values!2547 (v!27857 (underlying!4729 (v!27858 (underlying!4730 (cache!2563 cacheUp!675))))))) ((as const (Array (_ BitVec 32) List!23396)) mapDefault!10962)))))

(assert (= (and start!206118 res!916116) b!2108034))

(assert (= (and b!2108034 res!916115) b!2108017))

(assert (= (and b!2108017 res!916121) b!2107997))

(assert (= (and b!2107997 res!916114) b!2108022))

(assert (= (and b!2108022 res!916122) b!2108006))

(assert (= (and b!2108006 res!916119) b!2108021))

(assert (= (and b!2108021 (not res!916118)) b!2108038))

(assert (= b!2108032 b!2108037))

(assert (= b!2108031 b!2108032))

(assert (= b!2108025 b!2108031))

(assert (= b!2108025 b!2108010))

(assert (= (and b!2108038 ((_ is Some!4857) (_1!13079 err!4129))) b!2108025))

(assert (= (and b!2108027 condMapEmpty!10960) mapIsEmpty!10963))

(assert (= (and b!2108027 (not condMapEmpty!10960)) mapNonEmpty!10961))

(assert (= b!2108033 b!2108027))

(assert (= b!2108019 b!2108033))

(assert (= b!2108016 b!2108019))

(assert (= (and b!2108007 ((_ is LongMap!2267) (v!27858 (underlying!4730 (cache!2563 (_2!13079 err!4129)))))) b!2108016))

(assert (= b!2108018 b!2108007))

(assert (= (and b!2108005 ((_ is HashMap!2181) (cache!2563 (_2!13079 err!4129)))) b!2108018))

(assert (= b!2108038 b!2108005))

(assert (= (and b!2107995 condMapEmpty!10962) mapIsEmpty!10962))

(assert (= (and b!2107995 (not condMapEmpty!10962)) mapNonEmpty!10960))

(assert (= b!2107996 b!2107995))

(assert (= b!2108008 b!2107996))

(assert (= b!2108030 b!2108008))

(assert (= (and b!2108009 ((_ is LongMap!2268) (v!27860 (underlying!4732 (cache!2562 (_3!1770 err!4129)))))) b!2108030))

(assert (= b!2108039 b!2108009))

(assert (= (and b!2108040 ((_ is HashMap!2182) (cache!2562 (_3!1770 err!4129)))) b!2108039))

(assert (= b!2108038 b!2108040))

(assert (= (and b!2108038 res!916117) b!2108014))

(assert (= (and b!2108014 res!916120) b!2108026))

(assert (= b!2108028 b!2108023))

(assert (= b!2108002 b!2108028))

(assert (= (and start!206118 ((_ is Cons!23316) rulesArg!349)) b!2108002))

(assert (= start!206118 b!2108015))

(assert (= start!206118 b!2107998))

(assert (= (and b!2108041 condMapEmpty!10963) mapIsEmpty!10960))

(assert (= (and b!2108041 (not condMapEmpty!10963)) mapNonEmpty!10962))

(assert (= b!2108011 b!2108041))

(assert (= b!2108012 b!2108011))

(assert (= b!2107999 b!2108012))

(assert (= (and b!2108035 ((_ is LongMap!2267) (v!27858 (underlying!4730 (cache!2563 cacheUp!675))))) b!2107999))

(assert (= b!2108013 b!2108035))

(assert (= (and b!2108001 ((_ is HashMap!2181) (cache!2563 cacheUp!675))) b!2108013))

(assert (= start!206118 b!2108001))

(assert (= (and b!2108020 condMapEmpty!10961) mapIsEmpty!10961))

(assert (= (and b!2108020 (not condMapEmpty!10961)) mapNonEmpty!10963))

(assert (= b!2108004 b!2108020))

(assert (= b!2108029 b!2108004))

(assert (= b!2108036 b!2108029))

(assert (= (and b!2108024 ((_ is LongMap!2268) (v!27860 (underlying!4732 (cache!2562 cacheDown!688))))) b!2108036))

(assert (= b!2108003 b!2108024))

(assert (= (and b!2108000 ((_ is HashMap!2182) (cache!2562 cacheDown!688))) b!2108003))

(assert (= start!206118 b!2108000))

(declare-fun m!2565757 () Bool)

(assert (=> b!2108022 m!2565757))

(declare-fun m!2565759 () Bool)

(assert (=> b!2108031 m!2565759))

(declare-fun m!2565761 () Bool)

(assert (=> b!2107998 m!2565761))

(declare-fun m!2565763 () Bool)

(assert (=> b!2108015 m!2565763))

(declare-fun m!2565765 () Bool)

(assert (=> b!2108006 m!2565765))

(declare-fun m!2565767 () Bool)

(assert (=> b!2108033 m!2565767))

(declare-fun m!2565769 () Bool)

(assert (=> b!2108033 m!2565769))

(declare-fun m!2565771 () Bool)

(assert (=> mapNonEmpty!10963 m!2565771))

(declare-fun m!2565773 () Bool)

(assert (=> b!2108021 m!2565773))

(declare-fun m!2565775 () Bool)

(assert (=> b!2108021 m!2565775))

(declare-fun m!2565777 () Bool)

(assert (=> mapNonEmpty!10962 m!2565777))

(declare-fun m!2565779 () Bool)

(assert (=> mapNonEmpty!10961 m!2565779))

(declare-fun m!2565781 () Bool)

(assert (=> b!2108038 m!2565781))

(declare-fun m!2565783 () Bool)

(assert (=> b!2108038 m!2565783))

(declare-fun m!2565785 () Bool)

(assert (=> b!2108038 m!2565785))

(declare-fun m!2565787 () Bool)

(assert (=> start!206118 m!2565787))

(declare-fun m!2565789 () Bool)

(assert (=> start!206118 m!2565789))

(declare-fun m!2565791 () Bool)

(assert (=> start!206118 m!2565791))

(declare-fun m!2565793 () Bool)

(assert (=> start!206118 m!2565793))

(declare-fun m!2565795 () Bool)

(assert (=> mapNonEmpty!10960 m!2565795))

(declare-fun m!2565797 () Bool)

(assert (=> b!2108011 m!2565797))

(declare-fun m!2565799 () Bool)

(assert (=> b!2108011 m!2565799))

(declare-fun m!2565801 () Bool)

(assert (=> b!2108025 m!2565801))

(declare-fun m!2565803 () Bool)

(assert (=> b!2108025 m!2565803))

(declare-fun m!2565805 () Bool)

(assert (=> b!2108034 m!2565805))

(declare-fun m!2565807 () Bool)

(assert (=> b!2107997 m!2565807))

(assert (=> b!2107997 m!2565807))

(declare-fun m!2565809 () Bool)

(assert (=> b!2107997 m!2565809))

(declare-fun m!2565811 () Bool)

(assert (=> b!2107997 m!2565811))

(declare-fun m!2565813 () Bool)

(assert (=> b!2108032 m!2565813))

(declare-fun m!2565815 () Bool)

(assert (=> b!2108032 m!2565815))

(declare-fun m!2565817 () Bool)

(assert (=> b!2108017 m!2565817))

(declare-fun m!2565819 () Bool)

(assert (=> b!2108028 m!2565819))

(declare-fun m!2565821 () Bool)

(assert (=> b!2108028 m!2565821))

(declare-fun m!2565823 () Bool)

(assert (=> b!2108026 m!2565823))

(declare-fun m!2565825 () Bool)

(assert (=> b!2107996 m!2565825))

(declare-fun m!2565827 () Bool)

(assert (=> b!2107996 m!2565827))

(declare-fun m!2565829 () Bool)

(assert (=> b!2108004 m!2565829))

(declare-fun m!2565831 () Bool)

(assert (=> b!2108004 m!2565831))

(declare-fun m!2565833 () Bool)

(assert (=> b!2108010 m!2565833))

(declare-fun m!2565835 () Bool)

(assert (=> b!2108014 m!2565835))

(check-sat (not b!2108010) b_and!170277 (not b!2108038) (not b_next!61411) (not b_next!61403) b_and!170263 b_and!170261 (not b!2108011) (not b_next!61413) (not b!2107997) (not b!2108015) (not b!2108027) (not b_next!61401) (not b!2108014) (not b_next!61419) (not b!2108020) b_and!170267 (not b!2108006) (not b_next!61417) (not b_next!61407) (not b_next!61405) (not b!2108041) (not b!2108034) (not b!2108031) (not b!2107995) (not b!2108032) b_and!170275 (not mapNonEmpty!10961) (not b!2108004) (not b_next!61399) b_and!170273 (not b_next!61409) (not mapNonEmpty!10962) (not b!2108033) (not b!2108002) (not start!206118) b_and!170255 (not b!2108026) b_and!170257 (not b_next!61397) (not b!2108025) (not mapNonEmpty!10960) (not b_next!61415) (not b!2108028) (not b!2108017) (not mapNonEmpty!10963) (not b!2107996) b_and!170271 b_and!170265 b_and!170269 (not b!2107998) (not b!2108022) (not b!2108021) b_and!170259)
(check-sat b_and!170277 (not b_next!61411) b_and!170267 (not b_next!61403) (not b_next!61405) b_and!170263 b_and!170261 b_and!170275 (not b_next!61397) (not b_next!61415) (not b_next!61413) b_and!170271 b_and!170259 (not b_next!61401) (not b_next!61419) (not b_next!61417) (not b_next!61407) (not b_next!61399) b_and!170273 (not b_next!61409) b_and!170255 b_and!170257 b_and!170265 b_and!170269)
(get-model)

(declare-fun d!641982 () Bool)

(declare-fun isBalanced!2432 (Conc!7728) Bool)

(assert (=> d!641982 (= (inv!30853 totalInput!482) (isBalanced!2432 (c!338957 totalInput!482)))))

(declare-fun bs!440992 () Bool)

(assert (= bs!440992 d!641982))

(declare-fun m!2565837 () Bool)

(assert (=> bs!440992 m!2565837))

(assert (=> start!206118 d!641982))

(declare-fun d!641984 () Bool)

(assert (=> d!641984 (= (inv!30853 input!1444) (isBalanced!2432 (c!338957 input!1444)))))

(declare-fun bs!440993 () Bool)

(assert (= bs!440993 d!641984))

(declare-fun m!2565839 () Bool)

(assert (=> bs!440993 m!2565839))

(assert (=> start!206118 d!641984))

(declare-fun d!641986 () Bool)

(declare-fun res!916125 () Bool)

(declare-fun e!1340193 () Bool)

(assert (=> d!641986 (=> (not res!916125) (not e!1340193))))

(assert (=> d!641986 (= res!916125 ((_ is HashMap!2181) (cache!2563 cacheUp!675)))))

(assert (=> d!641986 (= (inv!30855 cacheUp!675) e!1340193)))

(declare-fun b!2108044 () Bool)

(declare-fun validCacheMapUp!228 (MutableMap!2181) Bool)

(assert (=> b!2108044 (= e!1340193 (validCacheMapUp!228 (cache!2563 cacheUp!675)))))

(assert (= (and d!641986 res!916125) b!2108044))

(declare-fun m!2565841 () Bool)

(assert (=> b!2108044 m!2565841))

(assert (=> start!206118 d!641986))

(declare-fun d!641988 () Bool)

(declare-fun res!916128 () Bool)

(declare-fun e!1340196 () Bool)

(assert (=> d!641988 (=> (not res!916128) (not e!1340196))))

(assert (=> d!641988 (= res!916128 ((_ is HashMap!2182) (cache!2562 cacheDown!688)))))

(assert (=> d!641988 (= (inv!30856 cacheDown!688) e!1340196)))

(declare-fun b!2108047 () Bool)

(declare-fun validCacheMapDown!226 (MutableMap!2182) Bool)

(assert (=> b!2108047 (= e!1340196 (validCacheMapDown!226 (cache!2562 cacheDown!688)))))

(assert (= (and d!641988 res!916128) b!2108047))

(declare-fun m!2565843 () Bool)

(assert (=> b!2108047 m!2565843))

(assert (=> start!206118 d!641988))

(declare-fun d!641990 () Bool)

(declare-fun c!338960 () Bool)

(assert (=> d!641990 (= c!338960 ((_ is Node!7728) (c!338957 input!1444)))))

(declare-fun e!1340201 () Bool)

(assert (=> d!641990 (= (inv!30851 (c!338957 input!1444)) e!1340201)))

(declare-fun b!2108054 () Bool)

(declare-fun inv!30857 (Conc!7728) Bool)

(assert (=> b!2108054 (= e!1340201 (inv!30857 (c!338957 input!1444)))))

(declare-fun b!2108055 () Bool)

(declare-fun e!1340202 () Bool)

(assert (=> b!2108055 (= e!1340201 e!1340202)))

(declare-fun res!916131 () Bool)

(assert (=> b!2108055 (= res!916131 (not ((_ is Leaf!11286) (c!338957 input!1444))))))

(assert (=> b!2108055 (=> res!916131 e!1340202)))

(declare-fun b!2108056 () Bool)

(declare-fun inv!30858 (Conc!7728) Bool)

(assert (=> b!2108056 (= e!1340202 (inv!30858 (c!338957 input!1444)))))

(assert (= (and d!641990 c!338960) b!2108054))

(assert (= (and d!641990 (not c!338960)) b!2108055))

(assert (= (and b!2108055 (not res!916131)) b!2108056))

(declare-fun m!2565845 () Bool)

(assert (=> b!2108054 m!2565845))

(declare-fun m!2565847 () Bool)

(assert (=> b!2108056 m!2565847))

(assert (=> b!2107998 d!641990))

(declare-fun d!641992 () Bool)

(assert (=> d!641992 (= (array_inv!2494 (_keys!2564 (v!27857 (underlying!4729 (v!27858 (underlying!4730 (cache!2563 (_2!13079 err!4129)))))))) (bvsge (size!18194 (_keys!2564 (v!27857 (underlying!4729 (v!27858 (underlying!4730 (cache!2563 (_2!13079 err!4129)))))))) #b00000000000000000000000000000000))))

(assert (=> b!2108033 d!641992))

(declare-fun d!641994 () Bool)

(assert (=> d!641994 (= (array_inv!2496 (_values!2547 (v!27857 (underlying!4729 (v!27858 (underlying!4730 (cache!2563 (_2!13079 err!4129)))))))) (bvsge (size!18195 (_values!2547 (v!27857 (underlying!4729 (v!27858 (underlying!4730 (cache!2563 (_2!13079 err!4129)))))))) #b00000000000000000000000000000000))))

(assert (=> b!2108033 d!641994))

(declare-fun d!641996 () Bool)

(declare-fun e!1340205 () Bool)

(assert (=> d!641996 e!1340205))

(declare-fun res!916134 () Bool)

(assert (=> d!641996 (=> res!916134 e!1340205)))

(declare-fun lt!791760 () Bool)

(assert (=> d!641996 (= res!916134 (not lt!791760))))

(declare-fun drop!1167 (List!23398 Int) List!23398)

(declare-fun size!18198 (List!23398) Int)

(assert (=> d!641996 (= lt!791760 (= lt!791756 (drop!1167 (list!9454 totalInput!482) (- (size!18198 (list!9454 totalInput!482)) (size!18198 lt!791756)))))))

(assert (=> d!641996 (= (isSuffix!564 lt!791756 (list!9454 totalInput!482)) lt!791760)))

(declare-fun b!2108059 () Bool)

(assert (=> b!2108059 (= e!1340205 (>= (size!18198 (list!9454 totalInput!482)) (size!18198 lt!791756)))))

(assert (= (and d!641996 (not res!916134)) b!2108059))

(assert (=> d!641996 m!2565807))

(declare-fun m!2565849 () Bool)

(assert (=> d!641996 m!2565849))

(declare-fun m!2565851 () Bool)

(assert (=> d!641996 m!2565851))

(assert (=> d!641996 m!2565807))

(declare-fun m!2565853 () Bool)

(assert (=> d!641996 m!2565853))

(assert (=> b!2108059 m!2565807))

(assert (=> b!2108059 m!2565849))

(assert (=> b!2108059 m!2565851))

(assert (=> b!2107997 d!641996))

(declare-fun d!641998 () Bool)

(declare-fun list!9455 (Conc!7728) List!23398)

(assert (=> d!641998 (= (list!9454 totalInput!482) (list!9455 (c!338957 totalInput!482)))))

(declare-fun bs!440994 () Bool)

(assert (= bs!440994 d!641998))

(declare-fun m!2565855 () Bool)

(assert (=> bs!440994 m!2565855))

(assert (=> b!2107997 d!641998))

(declare-fun d!642000 () Bool)

(assert (=> d!642000 (= (list!9454 input!1444) (list!9455 (c!338957 input!1444)))))

(declare-fun bs!440995 () Bool)

(assert (= bs!440995 d!642000))

(declare-fun m!2565857 () Bool)

(assert (=> bs!440995 m!2565857))

(assert (=> b!2107997 d!642000))

(declare-fun d!642002 () Bool)

(declare-fun res!916139 () Bool)

(declare-fun e!1340208 () Bool)

(assert (=> d!642002 (=> (not res!916139) (not e!1340208))))

(declare-fun isEmpty!14291 (List!23398) Bool)

(assert (=> d!642002 (= res!916139 (not (isEmpty!14291 (originalCharacters!4934 (_1!13077 (v!27856 (_1!13079 err!4129)))))))))

(assert (=> d!642002 (= (inv!30852 (_1!13077 (v!27856 (_1!13079 err!4129)))) e!1340208)))

(declare-fun b!2108064 () Bool)

(declare-fun res!916140 () Bool)

(assert (=> b!2108064 (=> (not res!916140) (not e!1340208))))

(declare-fun dynLambda!11264 (Int TokenValue!4284) BalanceConc!15218)

(assert (=> b!2108064 (= res!916140 (= (originalCharacters!4934 (_1!13077 (v!27856 (_1!13079 err!4129)))) (list!9454 (dynLambda!11264 (toChars!5718 (transformation!4148 (rule!6461 (_1!13077 (v!27856 (_1!13079 err!4129)))))) (value!129859 (_1!13077 (v!27856 (_1!13079 err!4129))))))))))

(declare-fun b!2108065 () Bool)

(assert (=> b!2108065 (= e!1340208 (= (size!18196 (_1!13077 (v!27856 (_1!13079 err!4129)))) (size!18198 (originalCharacters!4934 (_1!13077 (v!27856 (_1!13079 err!4129)))))))))

(assert (= (and d!642002 res!916139) b!2108064))

(assert (= (and b!2108064 res!916140) b!2108065))

(declare-fun b_lambda!70347 () Bool)

(assert (=> (not b_lambda!70347) (not b!2108064)))

(declare-fun t!195895 () Bool)

(declare-fun tb!132267 () Bool)

(assert (=> (and b!2108023 (= (toChars!5718 (transformation!4148 (h!28717 rulesArg!349))) (toChars!5718 (transformation!4148 (rule!6461 (_1!13077 (v!27856 (_1!13079 err!4129))))))) t!195895) tb!132267))

(declare-fun b!2108070 () Bool)

(declare-fun e!1340211 () Bool)

(declare-fun tp!640230 () Bool)

(assert (=> b!2108070 (= e!1340211 (and (inv!30851 (c!338957 (dynLambda!11264 (toChars!5718 (transformation!4148 (rule!6461 (_1!13077 (v!27856 (_1!13079 err!4129)))))) (value!129859 (_1!13077 (v!27856 (_1!13079 err!4129))))))) tp!640230))))

(declare-fun result!158540 () Bool)

(assert (=> tb!132267 (= result!158540 (and (inv!30853 (dynLambda!11264 (toChars!5718 (transformation!4148 (rule!6461 (_1!13077 (v!27856 (_1!13079 err!4129)))))) (value!129859 (_1!13077 (v!27856 (_1!13079 err!4129)))))) e!1340211))))

(assert (= tb!132267 b!2108070))

(declare-fun m!2565859 () Bool)

(assert (=> b!2108070 m!2565859))

(declare-fun m!2565861 () Bool)

(assert (=> tb!132267 m!2565861))

(assert (=> b!2108064 t!195895))

(declare-fun b_and!170279 () Bool)

(assert (= b_and!170257 (and (=> t!195895 result!158540) b_and!170279)))

(declare-fun t!195897 () Bool)

(declare-fun tb!132269 () Bool)

(assert (=> (and b!2108037 (= (toChars!5718 (transformation!4148 (rule!6461 (_1!13077 (v!27856 (_1!13079 err!4129)))))) (toChars!5718 (transformation!4148 (rule!6461 (_1!13077 (v!27856 (_1!13079 err!4129))))))) t!195897) tb!132269))

(declare-fun result!158544 () Bool)

(assert (= result!158544 result!158540))

(assert (=> b!2108064 t!195897))

(declare-fun b_and!170281 () Bool)

(assert (= b_and!170261 (and (=> t!195897 result!158544) b_and!170281)))

(declare-fun m!2565863 () Bool)

(assert (=> d!642002 m!2565863))

(declare-fun m!2565865 () Bool)

(assert (=> b!2108064 m!2565865))

(assert (=> b!2108064 m!2565865))

(declare-fun m!2565867 () Bool)

(assert (=> b!2108064 m!2565867))

(declare-fun m!2565869 () Bool)

(assert (=> b!2108065 m!2565869))

(assert (=> b!2108025 d!642002))

(declare-fun d!642004 () Bool)

(assert (=> d!642004 (= (inv!30853 (_2!13077 (v!27856 (_1!13079 err!4129)))) (isBalanced!2432 (c!338957 (_2!13077 (v!27856 (_1!13079 err!4129))))))))

(declare-fun bs!440996 () Bool)

(assert (= bs!440996 d!642004))

(declare-fun m!2565871 () Bool)

(assert (=> bs!440996 m!2565871))

(assert (=> b!2108025 d!642004))

(declare-fun d!642006 () Bool)

(assert (=> d!642006 (= (valid!1795 (_2!13079 lt!791757)) (validCacheMapUp!228 (cache!2563 (_2!13079 lt!791757))))))

(declare-fun bs!440997 () Bool)

(assert (= bs!440997 d!642006))

(declare-fun m!2565873 () Bool)

(assert (=> bs!440997 m!2565873))

(assert (=> b!2108014 d!642006))

(declare-fun d!642008 () Bool)

(assert (=> d!642008 true))

(declare-fun lt!791763 () Bool)

(declare-fun lambda!78166 () Int)

(declare-fun forall!4840 (List!23400 Int) Bool)

(assert (=> d!642008 (= lt!791763 (forall!4840 rulesArg!349 lambda!78166))))

(declare-fun e!1340216 () Bool)

(assert (=> d!642008 (= lt!791763 e!1340216)))

(declare-fun res!916145 () Bool)

(assert (=> d!642008 (=> res!916145 e!1340216)))

(assert (=> d!642008 (= res!916145 (not ((_ is Cons!23316) rulesArg!349)))))

(assert (=> d!642008 (= (rulesValidInductive!1461 thiss!15689 rulesArg!349) lt!791763)))

(declare-fun b!2108075 () Bool)

(declare-fun e!1340217 () Bool)

(assert (=> b!2108075 (= e!1340216 e!1340217)))

(declare-fun res!916146 () Bool)

(assert (=> b!2108075 (=> (not res!916146) (not e!1340217))))

(declare-fun ruleValid!1271 (LexerInterface!3745 Rule!8096) Bool)

(assert (=> b!2108075 (= res!916146 (ruleValid!1271 thiss!15689 (h!28717 rulesArg!349)))))

(declare-fun b!2108076 () Bool)

(assert (=> b!2108076 (= e!1340217 (rulesValidInductive!1461 thiss!15689 (t!195893 rulesArg!349)))))

(assert (= (and d!642008 (not res!916145)) b!2108075))

(assert (= (and b!2108075 res!916146) b!2108076))

(declare-fun m!2565875 () Bool)

(assert (=> d!642008 m!2565875))

(declare-fun m!2565877 () Bool)

(assert (=> b!2108075 m!2565877))

(declare-fun m!2565879 () Bool)

(assert (=> b!2108076 m!2565879))

(assert (=> b!2108034 d!642008))

(declare-fun d!642010 () Bool)

(assert (=> d!642010 (= (valid!1794 cacheDown!688) (validCacheMapDown!226 (cache!2562 cacheDown!688)))))

(declare-fun bs!440998 () Bool)

(assert (= bs!440998 d!642010))

(assert (=> bs!440998 m!2565843))

(assert (=> b!2108006 d!642010))

(declare-fun b!2108089 () Bool)

(declare-fun e!1340226 () Bool)

(declare-fun inv!15 (TokenValue!4284) Bool)

(assert (=> b!2108089 (= e!1340226 (inv!15 (value!129859 (_1!13077 (v!27856 (_1!13079 err!4129))))))))

(declare-fun b!2108090 () Bool)

(declare-fun e!1340225 () Bool)

(declare-fun e!1340224 () Bool)

(assert (=> b!2108090 (= e!1340225 e!1340224)))

(declare-fun c!338965 () Bool)

(assert (=> b!2108090 (= c!338965 ((_ is IntegerValue!12853) (value!129859 (_1!13077 (v!27856 (_1!13079 err!4129))))))))

(declare-fun b!2108091 () Bool)

(declare-fun inv!16 (TokenValue!4284) Bool)

(assert (=> b!2108091 (= e!1340225 (inv!16 (value!129859 (_1!13077 (v!27856 (_1!13079 err!4129))))))))

(declare-fun b!2108092 () Bool)

(declare-fun res!916149 () Bool)

(assert (=> b!2108092 (=> res!916149 e!1340226)))

(assert (=> b!2108092 (= res!916149 (not ((_ is IntegerValue!12854) (value!129859 (_1!13077 (v!27856 (_1!13079 err!4129)))))))))

(assert (=> b!2108092 (= e!1340224 e!1340226)))

(declare-fun b!2108093 () Bool)

(declare-fun inv!17 (TokenValue!4284) Bool)

(assert (=> b!2108093 (= e!1340224 (inv!17 (value!129859 (_1!13077 (v!27856 (_1!13079 err!4129))))))))

(declare-fun d!642012 () Bool)

(declare-fun c!338966 () Bool)

(assert (=> d!642012 (= c!338966 ((_ is IntegerValue!12852) (value!129859 (_1!13077 (v!27856 (_1!13079 err!4129))))))))

(assert (=> d!642012 (= (inv!21 (value!129859 (_1!13077 (v!27856 (_1!13079 err!4129))))) e!1340225)))

(assert (= (and d!642012 c!338966) b!2108091))

(assert (= (and d!642012 (not c!338966)) b!2108090))

(assert (= (and b!2108090 c!338965) b!2108093))

(assert (= (and b!2108090 (not c!338965)) b!2108092))

(assert (= (and b!2108092 (not res!916149)) b!2108089))

(declare-fun m!2565881 () Bool)

(assert (=> b!2108089 m!2565881))

(declare-fun m!2565883 () Bool)

(assert (=> b!2108091 m!2565883))

(declare-fun m!2565885 () Bool)

(assert (=> b!2108093 m!2565885))

(assert (=> b!2108031 d!642012))

(declare-fun d!642014 () Bool)

(assert (=> d!642014 (= (array_inv!2494 (_keys!2565 (v!27859 (underlying!4731 (v!27860 (underlying!4732 (cache!2562 cacheDown!688))))))) (bvsge (size!18194 (_keys!2565 (v!27859 (underlying!4731 (v!27860 (underlying!4732 (cache!2562 cacheDown!688))))))) #b00000000000000000000000000000000))))

(assert (=> b!2108004 d!642014))

(declare-fun d!642016 () Bool)

(assert (=> d!642016 (= (array_inv!2495 (_values!2548 (v!27859 (underlying!4731 (v!27860 (underlying!4732 (cache!2562 cacheDown!688))))))) (bvsge (size!18197 (_values!2548 (v!27859 (underlying!4731 (v!27860 (underlying!4732 (cache!2562 cacheDown!688))))))) #b00000000000000000000000000000000))))

(assert (=> b!2108004 d!642016))

(declare-fun b!2108104 () Bool)

(declare-fun e!1340234 () Bool)

(declare-fun tail!3103 (List!23398) List!23398)

(assert (=> b!2108104 (= e!1340234 (isPrefix!2078 (tail!3103 lt!791756) (tail!3103 lt!791756)))))

(declare-fun b!2108105 () Bool)

(declare-fun e!1340235 () Bool)

(assert (=> b!2108105 (= e!1340235 (>= (size!18198 lt!791756) (size!18198 lt!791756)))))

(declare-fun d!642018 () Bool)

(assert (=> d!642018 e!1340235))

(declare-fun res!916161 () Bool)

(assert (=> d!642018 (=> res!916161 e!1340235)))

(declare-fun lt!791766 () Bool)

(assert (=> d!642018 (= res!916161 (not lt!791766))))

(declare-fun e!1340233 () Bool)

(assert (=> d!642018 (= lt!791766 e!1340233)))

(declare-fun res!916159 () Bool)

(assert (=> d!642018 (=> res!916159 e!1340233)))

(assert (=> d!642018 (= res!916159 ((_ is Nil!23314) lt!791756))))

(assert (=> d!642018 (= (isPrefix!2078 lt!791756 lt!791756) lt!791766)))

(declare-fun b!2108103 () Bool)

(declare-fun res!916158 () Bool)

(assert (=> b!2108103 (=> (not res!916158) (not e!1340234))))

(declare-fun head!4631 (List!23398) C!11308)

(assert (=> b!2108103 (= res!916158 (= (head!4631 lt!791756) (head!4631 lt!791756)))))

(declare-fun b!2108102 () Bool)

(assert (=> b!2108102 (= e!1340233 e!1340234)))

(declare-fun res!916160 () Bool)

(assert (=> b!2108102 (=> (not res!916160) (not e!1340234))))

(assert (=> b!2108102 (= res!916160 (not ((_ is Nil!23314) lt!791756)))))

(assert (= (and d!642018 (not res!916159)) b!2108102))

(assert (= (and b!2108102 res!916160) b!2108103))

(assert (= (and b!2108103 res!916158) b!2108104))

(assert (= (and d!642018 (not res!916161)) b!2108105))

(declare-fun m!2565887 () Bool)

(assert (=> b!2108104 m!2565887))

(assert (=> b!2108104 m!2565887))

(assert (=> b!2108104 m!2565887))

(assert (=> b!2108104 m!2565887))

(declare-fun m!2565889 () Bool)

(assert (=> b!2108104 m!2565889))

(assert (=> b!2108105 m!2565851))

(assert (=> b!2108105 m!2565851))

(declare-fun m!2565891 () Bool)

(assert (=> b!2108103 m!2565891))

(assert (=> b!2108103 m!2565891))

(assert (=> b!2108021 d!642018))

(declare-fun d!642020 () Bool)

(assert (=> d!642020 (isPrefix!2078 lt!791756 lt!791756)))

(declare-fun lt!791769 () Unit!37485)

(declare-fun choose!12633 (List!23398 List!23398) Unit!37485)

(assert (=> d!642020 (= lt!791769 (choose!12633 lt!791756 lt!791756))))

(assert (=> d!642020 (= (lemmaIsPrefixRefl!1396 lt!791756 lt!791756) lt!791769)))

(declare-fun bs!440999 () Bool)

(assert (= bs!440999 d!642020))

(assert (=> bs!440999 m!2565773))

(declare-fun m!2565893 () Bool)

(assert (=> bs!440999 m!2565893))

(assert (=> b!2108021 d!642020))

(declare-fun d!642022 () Bool)

(assert (=> d!642022 (= (array_inv!2494 (_keys!2564 (v!27857 (underlying!4729 (v!27858 (underlying!4730 (cache!2563 cacheUp!675))))))) (bvsge (size!18194 (_keys!2564 (v!27857 (underlying!4729 (v!27858 (underlying!4730 (cache!2563 cacheUp!675))))))) #b00000000000000000000000000000000))))

(assert (=> b!2108011 d!642022))

(declare-fun d!642024 () Bool)

(assert (=> d!642024 (= (array_inv!2496 (_values!2547 (v!27857 (underlying!4729 (v!27858 (underlying!4730 (cache!2563 cacheUp!675))))))) (bvsge (size!18195 (_values!2547 (v!27857 (underlying!4729 (v!27858 (underlying!4730 (cache!2563 cacheUp!675))))))) #b00000000000000000000000000000000))))

(assert (=> b!2108011 d!642024))

(declare-fun d!642026 () Bool)

(assert (=> d!642026 (= (inv!30850 (tag!4638 (rule!6461 (_1!13077 (v!27856 (_1!13079 err!4129)))))) (= (mod (str.len (value!129858 (tag!4638 (rule!6461 (_1!13077 (v!27856 (_1!13079 err!4129))))))) 2) 0))))

(assert (=> b!2108032 d!642026))

(declare-fun d!642028 () Bool)

(declare-fun res!916164 () Bool)

(declare-fun e!1340238 () Bool)

(assert (=> d!642028 (=> (not res!916164) (not e!1340238))))

(declare-fun semiInverseModEq!1658 (Int Int) Bool)

(assert (=> d!642028 (= res!916164 (semiInverseModEq!1658 (toChars!5718 (transformation!4148 (rule!6461 (_1!13077 (v!27856 (_1!13079 err!4129)))))) (toValue!5859 (transformation!4148 (rule!6461 (_1!13077 (v!27856 (_1!13079 err!4129))))))))))

(assert (=> d!642028 (= (inv!30854 (transformation!4148 (rule!6461 (_1!13077 (v!27856 (_1!13079 err!4129)))))) e!1340238)))

(declare-fun b!2108108 () Bool)

(declare-fun equivClasses!1585 (Int Int) Bool)

(assert (=> b!2108108 (= e!1340238 (equivClasses!1585 (toChars!5718 (transformation!4148 (rule!6461 (_1!13077 (v!27856 (_1!13079 err!4129)))))) (toValue!5859 (transformation!4148 (rule!6461 (_1!13077 (v!27856 (_1!13079 err!4129))))))))))

(assert (= (and d!642028 res!916164) b!2108108))

(declare-fun m!2565895 () Bool)

(assert (=> d!642028 m!2565895))

(declare-fun m!2565897 () Bool)

(assert (=> b!2108108 m!2565897))

(assert (=> b!2108032 d!642028))

(declare-fun d!642030 () Bool)

(assert (=> d!642030 (= (valid!1795 cacheUp!675) (validCacheMapUp!228 (cache!2563 cacheUp!675)))))

(declare-fun bs!441000 () Bool)

(assert (= bs!441000 d!642030))

(assert (=> bs!441000 m!2565841))

(assert (=> b!2108022 d!642030))

(declare-fun d!642032 () Bool)

(assert (=> d!642032 (= (array_inv!2494 (_keys!2565 (v!27859 (underlying!4731 (v!27860 (underlying!4732 (cache!2562 (_3!1770 err!4129)))))))) (bvsge (size!18194 (_keys!2565 (v!27859 (underlying!4731 (v!27860 (underlying!4732 (cache!2562 (_3!1770 err!4129)))))))) #b00000000000000000000000000000000))))

(assert (=> b!2107996 d!642032))

(declare-fun d!642034 () Bool)

(assert (=> d!642034 (= (array_inv!2495 (_values!2548 (v!27859 (underlying!4731 (v!27860 (underlying!4732 (cache!2562 (_3!1770 err!4129)))))))) (bvsge (size!18197 (_values!2548 (v!27859 (underlying!4731 (v!27860 (underlying!4732 (cache!2562 (_3!1770 err!4129)))))))) #b00000000000000000000000000000000))))

(assert (=> b!2107996 d!642034))

(declare-fun d!642036 () Bool)

(declare-fun e!1340255 () Bool)

(assert (=> d!642036 e!1340255))

(declare-fun res!916182 () Bool)

(assert (=> d!642036 (=> (not res!916182) (not e!1340255))))

(declare-fun lt!791790 () Option!4858)

(declare-fun isDefined!4073 (Option!4858) Bool)

(declare-datatypes ((tuple2!22618 0))(
  ( (tuple2!22619 (_1!13080 Token!7806) (_2!13080 List!23398)) )
))
(declare-datatypes ((Option!4859 0))(
  ( (None!4858) (Some!4858 (v!27861 tuple2!22618)) )
))
(declare-fun isDefined!4074 (Option!4859) Bool)

(declare-fun maxPrefixZipper!420 (LexerInterface!3745 List!23400 List!23398) Option!4859)

(assert (=> d!642036 (= res!916182 (= (isDefined!4073 lt!791790) (isDefined!4074 (maxPrefixZipper!420 thiss!15689 rulesArg!349 (list!9454 input!1444)))))))

(declare-fun e!1340252 () Option!4858)

(assert (=> d!642036 (= lt!791790 e!1340252)))

(declare-fun c!338970 () Bool)

(assert (=> d!642036 (= c!338970 (and ((_ is Cons!23316) rulesArg!349) ((_ is Nil!23316) (t!195893 rulesArg!349))))))

(declare-fun lt!791784 () Unit!37485)

(declare-fun lt!791785 () Unit!37485)

(assert (=> d!642036 (= lt!791784 lt!791785)))

(declare-fun lt!791786 () List!23398)

(declare-fun lt!791789 () List!23398)

(assert (=> d!642036 (isPrefix!2078 lt!791786 lt!791789)))

(assert (=> d!642036 (= lt!791785 (lemmaIsPrefixRefl!1396 lt!791786 lt!791789))))

(assert (=> d!642036 (= lt!791789 (list!9454 input!1444))))

(assert (=> d!642036 (= lt!791786 (list!9454 input!1444))))

(assert (=> d!642036 (rulesValidInductive!1461 thiss!15689 rulesArg!349)))

(assert (=> d!642036 (= (maxPrefixZipperSequenceV2!380 thiss!15689 rulesArg!349 input!1444 totalInput!482) lt!791790)))

(declare-fun b!2108125 () Bool)

(declare-fun e!1340254 () Bool)

(declare-fun get!7259 (Option!4858) tuple2!22614)

(declare-fun get!7260 (Option!4859) tuple2!22618)

(assert (=> b!2108125 (= e!1340254 (= (list!9454 (_2!13077 (get!7259 lt!791790))) (_2!13080 (get!7260 (maxPrefixZipper!420 thiss!15689 rulesArg!349 (list!9454 input!1444))))))))

(declare-fun b!2108126 () Bool)

(declare-fun res!916181 () Bool)

(assert (=> b!2108126 (=> (not res!916181) (not e!1340255))))

(declare-fun e!1340253 () Bool)

(assert (=> b!2108126 (= res!916181 e!1340253)))

(declare-fun res!916178 () Bool)

(assert (=> b!2108126 (=> res!916178 e!1340253)))

(assert (=> b!2108126 (= res!916178 (not (isDefined!4073 lt!791790)))))

(declare-fun b!2108127 () Bool)

(assert (=> b!2108127 (= e!1340253 e!1340254)))

(declare-fun res!916177 () Bool)

(assert (=> b!2108127 (=> (not res!916177) (not e!1340254))))

(assert (=> b!2108127 (= res!916177 (= (_1!13077 (get!7259 lt!791790)) (_1!13080 (get!7260 (maxPrefixZipper!420 thiss!15689 rulesArg!349 (list!9454 input!1444))))))))

(declare-fun b!2108128 () Bool)

(declare-fun call!128401 () Option!4858)

(assert (=> b!2108128 (= e!1340252 call!128401)))

(declare-fun b!2108129 () Bool)

(declare-fun e!1340251 () Bool)

(declare-fun e!1340256 () Bool)

(assert (=> b!2108129 (= e!1340251 e!1340256)))

(declare-fun res!916179 () Bool)

(assert (=> b!2108129 (=> (not res!916179) (not e!1340256))))

(declare-fun maxPrefix!2102 (LexerInterface!3745 List!23400 List!23398) Option!4859)

(assert (=> b!2108129 (= res!916179 (= (_1!13077 (get!7259 lt!791790)) (_1!13080 (get!7260 (maxPrefix!2102 thiss!15689 rulesArg!349 (list!9454 input!1444))))))))

(declare-fun bm!128396 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2!177 (LexerInterface!3745 Rule!8096 BalanceConc!15218 BalanceConc!15218) Option!4858)

(assert (=> bm!128396 (= call!128401 (maxPrefixOneRuleZipperSequenceV2!177 thiss!15689 (h!28717 rulesArg!349) input!1444 totalInput!482))))

(declare-fun b!2108130 () Bool)

(assert (=> b!2108130 (= e!1340256 (= (list!9454 (_2!13077 (get!7259 lt!791790))) (_2!13080 (get!7260 (maxPrefix!2102 thiss!15689 rulesArg!349 (list!9454 input!1444))))))))

(declare-fun b!2108131 () Bool)

(assert (=> b!2108131 (= e!1340255 e!1340251)))

(declare-fun res!916180 () Bool)

(assert (=> b!2108131 (=> res!916180 e!1340251)))

(assert (=> b!2108131 (= res!916180 (not (isDefined!4073 lt!791790)))))

(declare-fun b!2108132 () Bool)

(declare-fun lt!791787 () Option!4858)

(declare-fun lt!791788 () Option!4858)

(assert (=> b!2108132 (= e!1340252 (ite (and ((_ is None!4857) lt!791787) ((_ is None!4857) lt!791788)) None!4857 (ite ((_ is None!4857) lt!791788) lt!791787 (ite ((_ is None!4857) lt!791787) lt!791788 (ite (>= (size!18196 (_1!13077 (v!27856 lt!791787))) (size!18196 (_1!13077 (v!27856 lt!791788)))) lt!791787 lt!791788)))))))

(assert (=> b!2108132 (= lt!791787 call!128401)))

(assert (=> b!2108132 (= lt!791788 (maxPrefixZipperSequenceV2!380 thiss!15689 (t!195893 rulesArg!349) input!1444 totalInput!482))))

(assert (= (and d!642036 c!338970) b!2108128))

(assert (= (and d!642036 (not c!338970)) b!2108132))

(assert (= (or b!2108128 b!2108132) bm!128396))

(assert (= (and d!642036 res!916182) b!2108126))

(assert (= (and b!2108126 (not res!916178)) b!2108127))

(assert (= (and b!2108127 res!916177) b!2108125))

(assert (= (and b!2108126 res!916181) b!2108131))

(assert (= (and b!2108131 (not res!916180)) b!2108129))

(assert (= (and b!2108129 res!916179) b!2108130))

(declare-fun m!2565899 () Bool)

(assert (=> bm!128396 m!2565899))

(declare-fun m!2565901 () Bool)

(assert (=> b!2108132 m!2565901))

(declare-fun m!2565903 () Bool)

(assert (=> d!642036 m!2565903))

(declare-fun m!2565905 () Bool)

(assert (=> d!642036 m!2565905))

(declare-fun m!2565907 () Bool)

(assert (=> d!642036 m!2565907))

(declare-fun m!2565909 () Bool)

(assert (=> d!642036 m!2565909))

(declare-fun m!2565911 () Bool)

(assert (=> d!642036 m!2565911))

(assert (=> d!642036 m!2565811))

(assert (=> d!642036 m!2565905))

(assert (=> d!642036 m!2565805))

(assert (=> d!642036 m!2565811))

(declare-fun m!2565913 () Bool)

(assert (=> b!2108129 m!2565913))

(assert (=> b!2108129 m!2565811))

(assert (=> b!2108129 m!2565811))

(declare-fun m!2565915 () Bool)

(assert (=> b!2108129 m!2565915))

(assert (=> b!2108129 m!2565915))

(declare-fun m!2565917 () Bool)

(assert (=> b!2108129 m!2565917))

(assert (=> b!2108127 m!2565913))

(assert (=> b!2108127 m!2565811))

(assert (=> b!2108127 m!2565811))

(assert (=> b!2108127 m!2565905))

(assert (=> b!2108127 m!2565905))

(declare-fun m!2565919 () Bool)

(assert (=> b!2108127 m!2565919))

(assert (=> b!2108131 m!2565903))

(assert (=> b!2108125 m!2565905))

(assert (=> b!2108125 m!2565919))

(declare-fun m!2565921 () Bool)

(assert (=> b!2108125 m!2565921))

(assert (=> b!2108125 m!2565913))

(assert (=> b!2108125 m!2565811))

(assert (=> b!2108125 m!2565811))

(assert (=> b!2108125 m!2565905))

(assert (=> b!2108130 m!2565811))

(assert (=> b!2108130 m!2565915))

(assert (=> b!2108130 m!2565921))

(assert (=> b!2108130 m!2565915))

(assert (=> b!2108130 m!2565917))

(assert (=> b!2108130 m!2565913))

(assert (=> b!2108130 m!2565811))

(assert (=> b!2108126 m!2565903))

(assert (=> b!2108038 d!642036))

(declare-fun d!642038 () Bool)

(declare-fun res!916183 () Bool)

(declare-fun e!1340257 () Bool)

(assert (=> d!642038 (=> (not res!916183) (not e!1340257))))

(assert (=> d!642038 (= res!916183 ((_ is HashMap!2181) (cache!2563 (_2!13079 err!4129))))))

(assert (=> d!642038 (= (inv!30855 (_2!13079 err!4129)) e!1340257)))

(declare-fun b!2108133 () Bool)

(assert (=> b!2108133 (= e!1340257 (validCacheMapUp!228 (cache!2563 (_2!13079 err!4129))))))

(assert (= (and d!642038 res!916183) b!2108133))

(declare-fun m!2565923 () Bool)

(assert (=> b!2108133 m!2565923))

(assert (=> b!2108038 d!642038))

(declare-fun d!642040 () Bool)

(declare-fun res!916184 () Bool)

(declare-fun e!1340258 () Bool)

(assert (=> d!642040 (=> (not res!916184) (not e!1340258))))

(assert (=> d!642040 (= res!916184 ((_ is HashMap!2182) (cache!2562 (_3!1770 err!4129))))))

(assert (=> d!642040 (= (inv!30856 (_3!1770 err!4129)) e!1340258)))

(declare-fun b!2108134 () Bool)

(assert (=> b!2108134 (= e!1340258 (validCacheMapDown!226 (cache!2562 (_3!1770 err!4129))))))

(assert (= (and d!642040 res!916184) b!2108134))

(declare-fun m!2565925 () Bool)

(assert (=> b!2108134 m!2565925))

(assert (=> b!2108038 d!642040))

(declare-fun d!642042 () Bool)

(declare-fun c!338971 () Bool)

(assert (=> d!642042 (= c!338971 ((_ is Node!7728) (c!338957 (_2!13077 (v!27856 (_1!13079 err!4129))))))))

(declare-fun e!1340259 () Bool)

(assert (=> d!642042 (= (inv!30851 (c!338957 (_2!13077 (v!27856 (_1!13079 err!4129))))) e!1340259)))

(declare-fun b!2108135 () Bool)

(assert (=> b!2108135 (= e!1340259 (inv!30857 (c!338957 (_2!13077 (v!27856 (_1!13079 err!4129))))))))

(declare-fun b!2108136 () Bool)

(declare-fun e!1340260 () Bool)

(assert (=> b!2108136 (= e!1340259 e!1340260)))

(declare-fun res!916185 () Bool)

(assert (=> b!2108136 (= res!916185 (not ((_ is Leaf!11286) (c!338957 (_2!13077 (v!27856 (_1!13079 err!4129)))))))))

(assert (=> b!2108136 (=> res!916185 e!1340260)))

(declare-fun b!2108137 () Bool)

(assert (=> b!2108137 (= e!1340260 (inv!30858 (c!338957 (_2!13077 (v!27856 (_1!13079 err!4129))))))))

(assert (= (and d!642042 c!338971) b!2108135))

(assert (= (and d!642042 (not c!338971)) b!2108136))

(assert (= (and b!2108136 (not res!916185)) b!2108137))

(declare-fun m!2565927 () Bool)

(assert (=> b!2108135 m!2565927))

(declare-fun m!2565929 () Bool)

(assert (=> b!2108137 m!2565929))

(assert (=> b!2108010 d!642042))

(declare-fun d!642044 () Bool)

(assert (=> d!642044 (= (valid!1794 (_3!1770 lt!791757)) (validCacheMapDown!226 (cache!2562 (_3!1770 lt!791757))))))

(declare-fun bs!441001 () Bool)

(assert (= bs!441001 d!642044))

(declare-fun m!2565931 () Bool)

(assert (=> bs!441001 m!2565931))

(assert (=> b!2108026 d!642044))

(declare-fun d!642046 () Bool)

(declare-fun c!338972 () Bool)

(assert (=> d!642046 (= c!338972 ((_ is Node!7728) (c!338957 totalInput!482)))))

(declare-fun e!1340261 () Bool)

(assert (=> d!642046 (= (inv!30851 (c!338957 totalInput!482)) e!1340261)))

(declare-fun b!2108138 () Bool)

(assert (=> b!2108138 (= e!1340261 (inv!30857 (c!338957 totalInput!482)))))

(declare-fun b!2108139 () Bool)

(declare-fun e!1340262 () Bool)

(assert (=> b!2108139 (= e!1340261 e!1340262)))

(declare-fun res!916186 () Bool)

(assert (=> b!2108139 (= res!916186 (not ((_ is Leaf!11286) (c!338957 totalInput!482))))))

(assert (=> b!2108139 (=> res!916186 e!1340262)))

(declare-fun b!2108140 () Bool)

(assert (=> b!2108140 (= e!1340262 (inv!30858 (c!338957 totalInput!482)))))

(assert (= (and d!642046 c!338972) b!2108138))

(assert (= (and d!642046 (not c!338972)) b!2108139))

(assert (= (and b!2108139 (not res!916186)) b!2108140))

(declare-fun m!2565933 () Bool)

(assert (=> b!2108138 m!2565933))

(declare-fun m!2565935 () Bool)

(assert (=> b!2108140 m!2565935))

(assert (=> b!2108015 d!642046))

(declare-fun d!642048 () Bool)

(assert (=> d!642048 (= (inv!30850 (tag!4638 (h!28717 rulesArg!349))) (= (mod (str.len (value!129858 (tag!4638 (h!28717 rulesArg!349)))) 2) 0))))

(assert (=> b!2108028 d!642048))

(declare-fun d!642050 () Bool)

(declare-fun res!916187 () Bool)

(declare-fun e!1340263 () Bool)

(assert (=> d!642050 (=> (not res!916187) (not e!1340263))))

(assert (=> d!642050 (= res!916187 (semiInverseModEq!1658 (toChars!5718 (transformation!4148 (h!28717 rulesArg!349))) (toValue!5859 (transformation!4148 (h!28717 rulesArg!349)))))))

(assert (=> d!642050 (= (inv!30854 (transformation!4148 (h!28717 rulesArg!349))) e!1340263)))

(declare-fun b!2108141 () Bool)

(assert (=> b!2108141 (= e!1340263 (equivClasses!1585 (toChars!5718 (transformation!4148 (h!28717 rulesArg!349))) (toValue!5859 (transformation!4148 (h!28717 rulesArg!349)))))))

(assert (= (and d!642050 res!916187) b!2108141))

(declare-fun m!2565937 () Bool)

(assert (=> d!642050 m!2565937))

(declare-fun m!2565939 () Bool)

(assert (=> b!2108141 m!2565939))

(assert (=> b!2108028 d!642050))

(declare-fun d!642052 () Bool)

(assert (=> d!642052 (= (isEmpty!14290 rulesArg!349) ((_ is Nil!23316) rulesArg!349))))

(assert (=> b!2108017 d!642052))

(declare-fun tp!640238 () Bool)

(declare-fun e!1340269 () Bool)

(declare-fun tp!640239 () Bool)

(declare-fun b!2108150 () Bool)

(assert (=> b!2108150 (= e!1340269 (and (inv!30851 (left!18167 (c!338957 input!1444))) tp!640239 (inv!30851 (right!18497 (c!338957 input!1444))) tp!640238))))

(declare-fun b!2108152 () Bool)

(declare-fun e!1340268 () Bool)

(declare-fun tp!640237 () Bool)

(assert (=> b!2108152 (= e!1340268 tp!640237)))

(declare-fun b!2108151 () Bool)

(declare-fun inv!30859 (IArray!15461) Bool)

(assert (=> b!2108151 (= e!1340269 (and (inv!30859 (xs!10670 (c!338957 input!1444))) e!1340268))))

(assert (=> b!2107998 (= tp!640199 (and (inv!30851 (c!338957 input!1444)) e!1340269))))

(assert (= (and b!2107998 ((_ is Node!7728) (c!338957 input!1444))) b!2108150))

(assert (= b!2108151 b!2108152))

(assert (= (and b!2107998 ((_ is Leaf!11286) (c!338957 input!1444))) b!2108151))

(declare-fun m!2565941 () Bool)

(assert (=> b!2108150 m!2565941))

(declare-fun m!2565943 () Bool)

(assert (=> b!2108150 m!2565943))

(declare-fun m!2565945 () Bool)

(assert (=> b!2108151 m!2565945))

(assert (=> b!2107998 m!2565761))

(declare-fun e!1340276 () Bool)

(assert (=> b!2108033 (= tp!640209 e!1340276)))

(declare-fun e!1340278 () Bool)

(declare-fun tp!640250 () Bool)

(declare-fun b!2108161 () Bool)

(declare-fun setRes!13928 () Bool)

(declare-fun tp_is_empty!9379 () Bool)

(declare-fun inv!30860 (Context!2302) Bool)

(assert (=> b!2108161 (= e!1340276 (and (inv!30860 (_1!13075 (_1!13076 (h!28713 (zeroValue!2525 (v!27857 (underlying!4729 (v!27858 (underlying!4730 (cache!2563 (_2!13079 err!4129))))))))))) e!1340278 tp_is_empty!9379 setRes!13928 tp!640250))))

(declare-fun condSetEmpty!13928 () Bool)

(assert (=> b!2108161 (= condSetEmpty!13928 (= (_2!13076 (h!28713 (zeroValue!2525 (v!27857 (underlying!4729 (v!27858 (underlying!4730 (cache!2563 (_2!13079 err!4129))))))))) ((as const (Array Context!2302 Bool)) false)))))

(declare-fun setNonEmpty!13928 () Bool)

(declare-fun setElem!13928 () Context!2302)

(declare-fun tp!640248 () Bool)

(declare-fun e!1340277 () Bool)

(assert (=> setNonEmpty!13928 (= setRes!13928 (and tp!640248 (inv!30860 setElem!13928) e!1340277))))

(declare-fun setRest!13928 () (InoxSet Context!2302))

(assert (=> setNonEmpty!13928 (= (_2!13076 (h!28713 (zeroValue!2525 (v!27857 (underlying!4729 (v!27858 (underlying!4730 (cache!2563 (_2!13079 err!4129))))))))) ((_ map or) (store ((as const (Array Context!2302 Bool)) false) setElem!13928 true) setRest!13928))))

(declare-fun setIsEmpty!13928 () Bool)

(assert (=> setIsEmpty!13928 setRes!13928))

(declare-fun b!2108162 () Bool)

(declare-fun tp!640249 () Bool)

(assert (=> b!2108162 (= e!1340277 tp!640249)))

(declare-fun b!2108163 () Bool)

(declare-fun tp!640251 () Bool)

(assert (=> b!2108163 (= e!1340278 tp!640251)))

(assert (= b!2108161 b!2108163))

(assert (= (and b!2108161 condSetEmpty!13928) setIsEmpty!13928))

(assert (= (and b!2108161 (not condSetEmpty!13928)) setNonEmpty!13928))

(assert (= setNonEmpty!13928 b!2108162))

(assert (= (and b!2108033 ((_ is Cons!23312) (zeroValue!2525 (v!27857 (underlying!4729 (v!27858 (underlying!4730 (cache!2563 (_2!13079 err!4129))))))))) b!2108161))

(declare-fun m!2565947 () Bool)

(assert (=> b!2108161 m!2565947))

(declare-fun m!2565949 () Bool)

(assert (=> setNonEmpty!13928 m!2565949))

(declare-fun e!1340279 () Bool)

(assert (=> b!2108033 (= tp!640224 e!1340279)))

(declare-fun setRes!13929 () Bool)

(declare-fun b!2108164 () Bool)

(declare-fun e!1340281 () Bool)

(declare-fun tp!640254 () Bool)

(assert (=> b!2108164 (= e!1340279 (and (inv!30860 (_1!13075 (_1!13076 (h!28713 (minValue!2525 (v!27857 (underlying!4729 (v!27858 (underlying!4730 (cache!2563 (_2!13079 err!4129))))))))))) e!1340281 tp_is_empty!9379 setRes!13929 tp!640254))))

(declare-fun condSetEmpty!13929 () Bool)

(assert (=> b!2108164 (= condSetEmpty!13929 (= (_2!13076 (h!28713 (minValue!2525 (v!27857 (underlying!4729 (v!27858 (underlying!4730 (cache!2563 (_2!13079 err!4129))))))))) ((as const (Array Context!2302 Bool)) false)))))

(declare-fun e!1340280 () Bool)

(declare-fun setElem!13929 () Context!2302)

(declare-fun setNonEmpty!13929 () Bool)

(declare-fun tp!640252 () Bool)

(assert (=> setNonEmpty!13929 (= setRes!13929 (and tp!640252 (inv!30860 setElem!13929) e!1340280))))

(declare-fun setRest!13929 () (InoxSet Context!2302))

(assert (=> setNonEmpty!13929 (= (_2!13076 (h!28713 (minValue!2525 (v!27857 (underlying!4729 (v!27858 (underlying!4730 (cache!2563 (_2!13079 err!4129))))))))) ((_ map or) (store ((as const (Array Context!2302 Bool)) false) setElem!13929 true) setRest!13929))))

(declare-fun setIsEmpty!13929 () Bool)

(assert (=> setIsEmpty!13929 setRes!13929))

(declare-fun b!2108165 () Bool)

(declare-fun tp!640253 () Bool)

(assert (=> b!2108165 (= e!1340280 tp!640253)))

(declare-fun b!2108166 () Bool)

(declare-fun tp!640255 () Bool)

(assert (=> b!2108166 (= e!1340281 tp!640255)))

(assert (= b!2108164 b!2108166))

(assert (= (and b!2108164 condSetEmpty!13929) setIsEmpty!13929))

(assert (= (and b!2108164 (not condSetEmpty!13929)) setNonEmpty!13929))

(assert (= setNonEmpty!13929 b!2108165))

(assert (= (and b!2108033 ((_ is Cons!23312) (minValue!2525 (v!27857 (underlying!4729 (v!27858 (underlying!4730 (cache!2563 (_2!13079 err!4129))))))))) b!2108164))

(declare-fun m!2565951 () Bool)

(assert (=> b!2108164 m!2565951))

(declare-fun m!2565953 () Bool)

(assert (=> setNonEmpty!13929 m!2565953))

(declare-fun setElem!13935 () Context!2302)

(declare-fun setRes!13934 () Bool)

(declare-fun setNonEmpty!13934 () Bool)

(declare-fun e!1340298 () Bool)

(declare-fun tp!640281 () Bool)

(assert (=> setNonEmpty!13934 (= setRes!13934 (and tp!640281 (inv!30860 setElem!13935) e!1340298))))

(declare-fun mapDefault!10966 () List!23399)

(declare-fun setRest!13934 () (InoxSet Context!2302))

(assert (=> setNonEmpty!13934 (= (_2!13078 (h!28716 mapDefault!10966)) ((_ map or) (store ((as const (Array Context!2302 Bool)) false) setElem!13935 true) setRest!13934))))

(declare-fun b!2108181 () Bool)

(declare-fun tp!640278 () Bool)

(assert (=> b!2108181 (= e!1340298 tp!640278)))

(declare-fun mapIsEmpty!10966 () Bool)

(declare-fun mapRes!10966 () Bool)

(assert (=> mapIsEmpty!10966 mapRes!10966))

(declare-fun setIsEmpty!13934 () Bool)

(assert (=> setIsEmpty!13934 setRes!13934))

(declare-fun b!2108182 () Bool)

(declare-fun e!1340299 () Bool)

(declare-fun tp!640283 () Bool)

(assert (=> b!2108182 (= e!1340299 tp!640283)))

(declare-fun b!2108183 () Bool)

(declare-fun e!1340295 () Bool)

(declare-fun tp!640285 () Bool)

(assert (=> b!2108183 (= e!1340295 tp!640285)))

(declare-fun tp!640282 () Bool)

(declare-fun b!2108184 () Bool)

(declare-fun tp!640287 () Bool)

(declare-fun e!1340294 () Bool)

(assert (=> b!2108184 (= e!1340294 (and tp!640287 (inv!30860 (_2!13074 (_1!13078 (h!28716 mapDefault!10966)))) e!1340299 tp_is_empty!9379 setRes!13934 tp!640282))))

(declare-fun condSetEmpty!13934 () Bool)

(assert (=> b!2108184 (= condSetEmpty!13934 (= (_2!13078 (h!28716 mapDefault!10966)) ((as const (Array Context!2302 Bool)) false)))))

(declare-fun tp!640280 () Bool)

(declare-fun setElem!13934 () Context!2302)

(declare-fun setRes!13935 () Bool)

(declare-fun setNonEmpty!13935 () Bool)

(declare-fun e!1340297 () Bool)

(assert (=> setNonEmpty!13935 (= setRes!13935 (and tp!640280 (inv!30860 setElem!13934) e!1340297))))

(declare-fun mapValue!10966 () List!23399)

(declare-fun setRest!13935 () (InoxSet Context!2302))

(assert (=> setNonEmpty!13935 (= (_2!13078 (h!28716 mapValue!10966)) ((_ map or) (store ((as const (Array Context!2302 Bool)) false) setElem!13934 true) setRest!13935))))

(declare-fun condMapEmpty!10966 () Bool)

(assert (=> mapNonEmpty!10960 (= condMapEmpty!10966 (= mapRest!10963 ((as const (Array (_ BitVec 32) List!23399)) mapDefault!10966)))))

(assert (=> mapNonEmpty!10960 (= tp!640216 (and e!1340294 mapRes!10966))))

(declare-fun b!2108185 () Bool)

(declare-fun tp!640286 () Bool)

(assert (=> b!2108185 (= e!1340297 tp!640286)))

(declare-fun tp!640279 () Bool)

(declare-fun tp!640284 () Bool)

(declare-fun e!1340296 () Bool)

(declare-fun b!2108186 () Bool)

(assert (=> b!2108186 (= e!1340296 (and tp!640279 (inv!30860 (_2!13074 (_1!13078 (h!28716 mapValue!10966)))) e!1340295 tp_is_empty!9379 setRes!13935 tp!640284))))

(declare-fun condSetEmpty!13935 () Bool)

(assert (=> b!2108186 (= condSetEmpty!13935 (= (_2!13078 (h!28716 mapValue!10966)) ((as const (Array Context!2302 Bool)) false)))))

(declare-fun setIsEmpty!13935 () Bool)

(assert (=> setIsEmpty!13935 setRes!13935))

(declare-fun mapNonEmpty!10966 () Bool)

(declare-fun tp!640288 () Bool)

(assert (=> mapNonEmpty!10966 (= mapRes!10966 (and tp!640288 e!1340296))))

(declare-fun mapRest!10966 () (Array (_ BitVec 32) List!23399))

(declare-fun mapKey!10966 () (_ BitVec 32))

(assert (=> mapNonEmpty!10966 (= mapRest!10963 (store mapRest!10966 mapKey!10966 mapValue!10966))))

(assert (= (and mapNonEmpty!10960 condMapEmpty!10966) mapIsEmpty!10966))

(assert (= (and mapNonEmpty!10960 (not condMapEmpty!10966)) mapNonEmpty!10966))

(assert (= b!2108186 b!2108183))

(assert (= (and b!2108186 condSetEmpty!13935) setIsEmpty!13935))

(assert (= (and b!2108186 (not condSetEmpty!13935)) setNonEmpty!13935))

(assert (= setNonEmpty!13935 b!2108185))

(assert (= (and mapNonEmpty!10966 ((_ is Cons!23315) mapValue!10966)) b!2108186))

(assert (= b!2108184 b!2108182))

(assert (= (and b!2108184 condSetEmpty!13934) setIsEmpty!13934))

(assert (= (and b!2108184 (not condSetEmpty!13934)) setNonEmpty!13934))

(assert (= setNonEmpty!13934 b!2108181))

(assert (= (and mapNonEmpty!10960 ((_ is Cons!23315) mapDefault!10966)) b!2108184))

(declare-fun m!2565955 () Bool)

(assert (=> setNonEmpty!13934 m!2565955))

(declare-fun m!2565957 () Bool)

(assert (=> setNonEmpty!13935 m!2565957))

(declare-fun m!2565959 () Bool)

(assert (=> b!2108186 m!2565959))

(declare-fun m!2565961 () Bool)

(assert (=> b!2108184 m!2565961))

(declare-fun m!2565963 () Bool)

(assert (=> mapNonEmpty!10966 m!2565963))

(declare-fun setIsEmpty!13938 () Bool)

(declare-fun setRes!13938 () Bool)

(assert (=> setIsEmpty!13938 setRes!13938))

(declare-fun e!1340308 () Bool)

(assert (=> mapNonEmpty!10960 (= tp!640200 e!1340308)))

(declare-fun b!2108195 () Bool)

(declare-fun e!1340306 () Bool)

(declare-fun tp!640303 () Bool)

(assert (=> b!2108195 (= e!1340306 tp!640303)))

(declare-fun setNonEmpty!13938 () Bool)

(declare-fun tp!640300 () Bool)

(declare-fun setElem!13938 () Context!2302)

(assert (=> setNonEmpty!13938 (= setRes!13938 (and tp!640300 (inv!30860 setElem!13938) e!1340306))))

(declare-fun setRest!13938 () (InoxSet Context!2302))

(assert (=> setNonEmpty!13938 (= (_2!13078 (h!28716 mapValue!10963)) ((_ map or) (store ((as const (Array Context!2302 Bool)) false) setElem!13938 true) setRest!13938))))

(declare-fun b!2108196 () Bool)

(declare-fun e!1340307 () Bool)

(declare-fun tp!640299 () Bool)

(assert (=> b!2108196 (= e!1340307 tp!640299)))

(declare-fun b!2108197 () Bool)

(declare-fun tp!640301 () Bool)

(declare-fun tp!640302 () Bool)

(assert (=> b!2108197 (= e!1340308 (and tp!640301 (inv!30860 (_2!13074 (_1!13078 (h!28716 mapValue!10963)))) e!1340307 tp_is_empty!9379 setRes!13938 tp!640302))))

(declare-fun condSetEmpty!13938 () Bool)

(assert (=> b!2108197 (= condSetEmpty!13938 (= (_2!13078 (h!28716 mapValue!10963)) ((as const (Array Context!2302 Bool)) false)))))

(assert (= b!2108197 b!2108196))

(assert (= (and b!2108197 condSetEmpty!13938) setIsEmpty!13938))

(assert (= (and b!2108197 (not condSetEmpty!13938)) setNonEmpty!13938))

(assert (= setNonEmpty!13938 b!2108195))

(assert (= (and mapNonEmpty!10960 ((_ is Cons!23315) mapValue!10963)) b!2108197))

(declare-fun m!2565965 () Bool)

(assert (=> setNonEmpty!13938 m!2565965))

(declare-fun m!2565967 () Bool)

(assert (=> b!2108197 m!2565967))

(declare-fun b!2108202 () Bool)

(declare-fun e!1340311 () Bool)

(declare-fun tp!640306 () Bool)

(assert (=> b!2108202 (= e!1340311 (and tp_is_empty!9379 tp!640306))))

(assert (=> b!2108031 (= tp!640222 e!1340311)))

(assert (= (and b!2108031 ((_ is Cons!23314) (originalCharacters!4934 (_1!13077 (v!27856 (_1!13079 err!4129)))))) b!2108202))

(declare-fun setIsEmpty!13939 () Bool)

(declare-fun setRes!13939 () Bool)

(assert (=> setIsEmpty!13939 setRes!13939))

(declare-fun e!1340314 () Bool)

(assert (=> b!2108004 (= tp!640198 e!1340314)))

(declare-fun b!2108203 () Bool)

(declare-fun e!1340312 () Bool)

(declare-fun tp!640311 () Bool)

(assert (=> b!2108203 (= e!1340312 tp!640311)))

(declare-fun tp!640308 () Bool)

(declare-fun setNonEmpty!13939 () Bool)

(declare-fun setElem!13939 () Context!2302)

(assert (=> setNonEmpty!13939 (= setRes!13939 (and tp!640308 (inv!30860 setElem!13939) e!1340312))))

(declare-fun setRest!13939 () (InoxSet Context!2302))

(assert (=> setNonEmpty!13939 (= (_2!13078 (h!28716 (zeroValue!2526 (v!27859 (underlying!4731 (v!27860 (underlying!4732 (cache!2562 cacheDown!688)))))))) ((_ map or) (store ((as const (Array Context!2302 Bool)) false) setElem!13939 true) setRest!13939))))

(declare-fun b!2108204 () Bool)

(declare-fun e!1340313 () Bool)

(declare-fun tp!640307 () Bool)

(assert (=> b!2108204 (= e!1340313 tp!640307)))

(declare-fun tp!640310 () Bool)

(declare-fun b!2108205 () Bool)

(declare-fun tp!640309 () Bool)

(assert (=> b!2108205 (= e!1340314 (and tp!640309 (inv!30860 (_2!13074 (_1!13078 (h!28716 (zeroValue!2526 (v!27859 (underlying!4731 (v!27860 (underlying!4732 (cache!2562 cacheDown!688)))))))))) e!1340313 tp_is_empty!9379 setRes!13939 tp!640310))))

(declare-fun condSetEmpty!13939 () Bool)

(assert (=> b!2108205 (= condSetEmpty!13939 (= (_2!13078 (h!28716 (zeroValue!2526 (v!27859 (underlying!4731 (v!27860 (underlying!4732 (cache!2562 cacheDown!688)))))))) ((as const (Array Context!2302 Bool)) false)))))

(assert (= b!2108205 b!2108204))

(assert (= (and b!2108205 condSetEmpty!13939) setIsEmpty!13939))

(assert (= (and b!2108205 (not condSetEmpty!13939)) setNonEmpty!13939))

(assert (= setNonEmpty!13939 b!2108203))

(assert (= (and b!2108004 ((_ is Cons!23315) (zeroValue!2526 (v!27859 (underlying!4731 (v!27860 (underlying!4732 (cache!2562 cacheDown!688)))))))) b!2108205))

(declare-fun m!2565969 () Bool)

(assert (=> setNonEmpty!13939 m!2565969))

(declare-fun m!2565971 () Bool)

(assert (=> b!2108205 m!2565971))

(declare-fun setIsEmpty!13940 () Bool)

(declare-fun setRes!13940 () Bool)

(assert (=> setIsEmpty!13940 setRes!13940))

(declare-fun e!1340317 () Bool)

(assert (=> b!2108004 (= tp!640210 e!1340317)))

(declare-fun b!2108206 () Bool)

(declare-fun e!1340315 () Bool)

(declare-fun tp!640316 () Bool)

(assert (=> b!2108206 (= e!1340315 tp!640316)))

(declare-fun setNonEmpty!13940 () Bool)

(declare-fun setElem!13940 () Context!2302)

(declare-fun tp!640313 () Bool)

(assert (=> setNonEmpty!13940 (= setRes!13940 (and tp!640313 (inv!30860 setElem!13940) e!1340315))))

(declare-fun setRest!13940 () (InoxSet Context!2302))

(assert (=> setNonEmpty!13940 (= (_2!13078 (h!28716 (minValue!2526 (v!27859 (underlying!4731 (v!27860 (underlying!4732 (cache!2562 cacheDown!688)))))))) ((_ map or) (store ((as const (Array Context!2302 Bool)) false) setElem!13940 true) setRest!13940))))

(declare-fun b!2108207 () Bool)

(declare-fun e!1340316 () Bool)

(declare-fun tp!640312 () Bool)

(assert (=> b!2108207 (= e!1340316 tp!640312)))

(declare-fun tp!640314 () Bool)

(declare-fun tp!640315 () Bool)

(declare-fun b!2108208 () Bool)

(assert (=> b!2108208 (= e!1340317 (and tp!640314 (inv!30860 (_2!13074 (_1!13078 (h!28716 (minValue!2526 (v!27859 (underlying!4731 (v!27860 (underlying!4732 (cache!2562 cacheDown!688)))))))))) e!1340316 tp_is_empty!9379 setRes!13940 tp!640315))))

(declare-fun condSetEmpty!13940 () Bool)

(assert (=> b!2108208 (= condSetEmpty!13940 (= (_2!13078 (h!28716 (minValue!2526 (v!27859 (underlying!4731 (v!27860 (underlying!4732 (cache!2562 cacheDown!688)))))))) ((as const (Array Context!2302 Bool)) false)))))

(assert (= b!2108208 b!2108207))

(assert (= (and b!2108208 condSetEmpty!13940) setIsEmpty!13940))

(assert (= (and b!2108208 (not condSetEmpty!13940)) setNonEmpty!13940))

(assert (= setNonEmpty!13940 b!2108206))

(assert (= (and b!2108004 ((_ is Cons!23315) (minValue!2526 (v!27859 (underlying!4731 (v!27860 (underlying!4732 (cache!2562 cacheDown!688)))))))) b!2108208))

(declare-fun m!2565973 () Bool)

(assert (=> setNonEmpty!13940 m!2565973))

(declare-fun m!2565975 () Bool)

(assert (=> b!2108208 m!2565975))

(declare-fun setIsEmpty!13941 () Bool)

(declare-fun setRes!13941 () Bool)

(assert (=> setIsEmpty!13941 setRes!13941))

(declare-fun e!1340320 () Bool)

(assert (=> b!2107995 (= tp!640197 e!1340320)))

(declare-fun b!2108209 () Bool)

(declare-fun e!1340318 () Bool)

(declare-fun tp!640321 () Bool)

(assert (=> b!2108209 (= e!1340318 tp!640321)))

(declare-fun setElem!13941 () Context!2302)

(declare-fun tp!640318 () Bool)

(declare-fun setNonEmpty!13941 () Bool)

(assert (=> setNonEmpty!13941 (= setRes!13941 (and tp!640318 (inv!30860 setElem!13941) e!1340318))))

(declare-fun setRest!13941 () (InoxSet Context!2302))

(assert (=> setNonEmpty!13941 (= (_2!13078 (h!28716 mapDefault!10961)) ((_ map or) (store ((as const (Array Context!2302 Bool)) false) setElem!13941 true) setRest!13941))))

(declare-fun b!2108210 () Bool)

(declare-fun e!1340319 () Bool)

(declare-fun tp!640317 () Bool)

(assert (=> b!2108210 (= e!1340319 tp!640317)))

(declare-fun tp!640319 () Bool)

(declare-fun b!2108211 () Bool)

(declare-fun tp!640320 () Bool)

(assert (=> b!2108211 (= e!1340320 (and tp!640319 (inv!30860 (_2!13074 (_1!13078 (h!28716 mapDefault!10961)))) e!1340319 tp_is_empty!9379 setRes!13941 tp!640320))))

(declare-fun condSetEmpty!13941 () Bool)

(assert (=> b!2108211 (= condSetEmpty!13941 (= (_2!13078 (h!28716 mapDefault!10961)) ((as const (Array Context!2302 Bool)) false)))))

(assert (= b!2108211 b!2108210))

(assert (= (and b!2108211 condSetEmpty!13941) setIsEmpty!13941))

(assert (= (and b!2108211 (not condSetEmpty!13941)) setNonEmpty!13941))

(assert (= setNonEmpty!13941 b!2108209))

(assert (= (and b!2107995 ((_ is Cons!23315) mapDefault!10961)) b!2108211))

(declare-fun m!2565977 () Bool)

(assert (=> setNonEmpty!13941 m!2565977))

(declare-fun m!2565979 () Bool)

(assert (=> b!2108211 m!2565979))

(declare-fun e!1340321 () Bool)

(assert (=> b!2108011 (= tp!640214 e!1340321)))

(declare-fun e!1340323 () Bool)

(declare-fun tp!640324 () Bool)

(declare-fun setRes!13942 () Bool)

(declare-fun b!2108212 () Bool)

(assert (=> b!2108212 (= e!1340321 (and (inv!30860 (_1!13075 (_1!13076 (h!28713 (zeroValue!2525 (v!27857 (underlying!4729 (v!27858 (underlying!4730 (cache!2563 cacheUp!675)))))))))) e!1340323 tp_is_empty!9379 setRes!13942 tp!640324))))

(declare-fun condSetEmpty!13942 () Bool)

(assert (=> b!2108212 (= condSetEmpty!13942 (= (_2!13076 (h!28713 (zeroValue!2525 (v!27857 (underlying!4729 (v!27858 (underlying!4730 (cache!2563 cacheUp!675)))))))) ((as const (Array Context!2302 Bool)) false)))))

(declare-fun setElem!13942 () Context!2302)

(declare-fun e!1340322 () Bool)

(declare-fun setNonEmpty!13942 () Bool)

(declare-fun tp!640322 () Bool)

(assert (=> setNonEmpty!13942 (= setRes!13942 (and tp!640322 (inv!30860 setElem!13942) e!1340322))))

(declare-fun setRest!13942 () (InoxSet Context!2302))

(assert (=> setNonEmpty!13942 (= (_2!13076 (h!28713 (zeroValue!2525 (v!27857 (underlying!4729 (v!27858 (underlying!4730 (cache!2563 cacheUp!675)))))))) ((_ map or) (store ((as const (Array Context!2302 Bool)) false) setElem!13942 true) setRest!13942))))

(declare-fun setIsEmpty!13942 () Bool)

(assert (=> setIsEmpty!13942 setRes!13942))

(declare-fun b!2108213 () Bool)

(declare-fun tp!640323 () Bool)

(assert (=> b!2108213 (= e!1340322 tp!640323)))

(declare-fun b!2108214 () Bool)

(declare-fun tp!640325 () Bool)

(assert (=> b!2108214 (= e!1340323 tp!640325)))

(assert (= b!2108212 b!2108214))

(assert (= (and b!2108212 condSetEmpty!13942) setIsEmpty!13942))

(assert (= (and b!2108212 (not condSetEmpty!13942)) setNonEmpty!13942))

(assert (= setNonEmpty!13942 b!2108213))

(assert (= (and b!2108011 ((_ is Cons!23312) (zeroValue!2525 (v!27857 (underlying!4729 (v!27858 (underlying!4730 (cache!2563 cacheUp!675)))))))) b!2108212))

(declare-fun m!2565981 () Bool)

(assert (=> b!2108212 m!2565981))

(declare-fun m!2565983 () Bool)

(assert (=> setNonEmpty!13942 m!2565983))

(declare-fun e!1340324 () Bool)

(assert (=> b!2108011 (= tp!640205 e!1340324)))

(declare-fun e!1340326 () Bool)

(declare-fun tp!640328 () Bool)

(declare-fun setRes!13943 () Bool)

(declare-fun b!2108215 () Bool)

(assert (=> b!2108215 (= e!1340324 (and (inv!30860 (_1!13075 (_1!13076 (h!28713 (minValue!2525 (v!27857 (underlying!4729 (v!27858 (underlying!4730 (cache!2563 cacheUp!675)))))))))) e!1340326 tp_is_empty!9379 setRes!13943 tp!640328))))

(declare-fun condSetEmpty!13943 () Bool)

(assert (=> b!2108215 (= condSetEmpty!13943 (= (_2!13076 (h!28713 (minValue!2525 (v!27857 (underlying!4729 (v!27858 (underlying!4730 (cache!2563 cacheUp!675)))))))) ((as const (Array Context!2302 Bool)) false)))))

(declare-fun tp!640326 () Bool)

(declare-fun e!1340325 () Bool)

(declare-fun setElem!13943 () Context!2302)

(declare-fun setNonEmpty!13943 () Bool)

(assert (=> setNonEmpty!13943 (= setRes!13943 (and tp!640326 (inv!30860 setElem!13943) e!1340325))))

(declare-fun setRest!13943 () (InoxSet Context!2302))

(assert (=> setNonEmpty!13943 (= (_2!13076 (h!28713 (minValue!2525 (v!27857 (underlying!4729 (v!27858 (underlying!4730 (cache!2563 cacheUp!675)))))))) ((_ map or) (store ((as const (Array Context!2302 Bool)) false) setElem!13943 true) setRest!13943))))

(declare-fun setIsEmpty!13943 () Bool)

(assert (=> setIsEmpty!13943 setRes!13943))

(declare-fun b!2108216 () Bool)

(declare-fun tp!640327 () Bool)

(assert (=> b!2108216 (= e!1340325 tp!640327)))

(declare-fun b!2108217 () Bool)

(declare-fun tp!640329 () Bool)

(assert (=> b!2108217 (= e!1340326 tp!640329)))

(assert (= b!2108215 b!2108217))

(assert (= (and b!2108215 condSetEmpty!13943) setIsEmpty!13943))

(assert (= (and b!2108215 (not condSetEmpty!13943)) setNonEmpty!13943))

(assert (= setNonEmpty!13943 b!2108216))

(assert (= (and b!2108011 ((_ is Cons!23312) (minValue!2525 (v!27857 (underlying!4729 (v!27858 (underlying!4730 (cache!2563 cacheUp!675)))))))) b!2108215))

(declare-fun m!2565985 () Bool)

(assert (=> b!2108215 m!2565985))

(declare-fun m!2565987 () Bool)

(assert (=> setNonEmpty!13943 m!2565987))

(declare-fun setNonEmpty!13948 () Bool)

(declare-fun tp!640350 () Bool)

(declare-fun setElem!13949 () Context!2302)

(declare-fun e!1340343 () Bool)

(declare-fun setRes!13948 () Bool)

(assert (=> setNonEmpty!13948 (= setRes!13948 (and tp!640350 (inv!30860 setElem!13949) e!1340343))))

(declare-fun mapDefault!10969 () List!23396)

(declare-fun setRest!13949 () (InoxSet Context!2302))

(assert (=> setNonEmpty!13948 (= (_2!13076 (h!28713 mapDefault!10969)) ((_ map or) (store ((as const (Array Context!2302 Bool)) false) setElem!13949 true) setRest!13949))))

(declare-fun mapIsEmpty!10969 () Bool)

(declare-fun mapRes!10969 () Bool)

(assert (=> mapIsEmpty!10969 mapRes!10969))

(declare-fun mapValue!10969 () List!23396)

(declare-fun setRes!13949 () Bool)

(declare-fun e!1340344 () Bool)

(declare-fun b!2108232 () Bool)

(declare-fun e!1340341 () Bool)

(declare-fun tp!640352 () Bool)

(assert (=> b!2108232 (= e!1340344 (and (inv!30860 (_1!13075 (_1!13076 (h!28713 mapValue!10969)))) e!1340341 tp_is_empty!9379 setRes!13949 tp!640352))))

(declare-fun condSetEmpty!13949 () Bool)

(assert (=> b!2108232 (= condSetEmpty!13949 (= (_2!13076 (h!28713 mapValue!10969)) ((as const (Array Context!2302 Bool)) false)))))

(declare-fun b!2108233 () Bool)

(declare-fun tp!640355 () Bool)

(assert (=> b!2108233 (= e!1340343 tp!640355)))

(declare-fun b!2108234 () Bool)

(declare-fun tp!640354 () Bool)

(assert (=> b!2108234 (= e!1340341 tp!640354)))

(declare-fun tp!640348 () Bool)

(declare-fun e!1340340 () Bool)

(declare-fun b!2108235 () Bool)

(declare-fun e!1340339 () Bool)

(assert (=> b!2108235 (= e!1340339 (and (inv!30860 (_1!13075 (_1!13076 (h!28713 mapDefault!10969)))) e!1340340 tp_is_empty!9379 setRes!13948 tp!640348))))

(declare-fun condSetEmpty!13948 () Bool)

(assert (=> b!2108235 (= condSetEmpty!13948 (= (_2!13076 (h!28713 mapDefault!10969)) ((as const (Array Context!2302 Bool)) false)))))

(declare-fun setNonEmpty!13949 () Bool)

(declare-fun tp!640351 () Bool)

(declare-fun e!1340342 () Bool)

(declare-fun setElem!13948 () Context!2302)

(assert (=> setNonEmpty!13949 (= setRes!13949 (and tp!640351 (inv!30860 setElem!13948) e!1340342))))

(declare-fun setRest!13948 () (InoxSet Context!2302))

(assert (=> setNonEmpty!13949 (= (_2!13076 (h!28713 mapValue!10969)) ((_ map or) (store ((as const (Array Context!2302 Bool)) false) setElem!13948 true) setRest!13948))))

(declare-fun setIsEmpty!13948 () Bool)

(assert (=> setIsEmpty!13948 setRes!13949))

(declare-fun b!2108236 () Bool)

(declare-fun tp!640356 () Bool)

(assert (=> b!2108236 (= e!1340340 tp!640356)))

(declare-fun mapNonEmpty!10969 () Bool)

(declare-fun tp!640349 () Bool)

(assert (=> mapNonEmpty!10969 (= mapRes!10969 (and tp!640349 e!1340344))))

(declare-fun mapKey!10969 () (_ BitVec 32))

(declare-fun mapRest!10969 () (Array (_ BitVec 32) List!23396))

(assert (=> mapNonEmpty!10969 (= mapRest!10961 (store mapRest!10969 mapKey!10969 mapValue!10969))))

(declare-fun setIsEmpty!13949 () Bool)

(assert (=> setIsEmpty!13949 setRes!13948))

(declare-fun b!2108237 () Bool)

(declare-fun tp!640353 () Bool)

(assert (=> b!2108237 (= e!1340342 tp!640353)))

(declare-fun condMapEmpty!10969 () Bool)

(assert (=> mapNonEmpty!10962 (= condMapEmpty!10969 (= mapRest!10961 ((as const (Array (_ BitVec 32) List!23396)) mapDefault!10969)))))

(assert (=> mapNonEmpty!10962 (= tp!640195 (and e!1340339 mapRes!10969))))

(assert (= (and mapNonEmpty!10962 condMapEmpty!10969) mapIsEmpty!10969))

(assert (= (and mapNonEmpty!10962 (not condMapEmpty!10969)) mapNonEmpty!10969))

(assert (= b!2108232 b!2108234))

(assert (= (and b!2108232 condSetEmpty!13949) setIsEmpty!13948))

(assert (= (and b!2108232 (not condSetEmpty!13949)) setNonEmpty!13949))

(assert (= setNonEmpty!13949 b!2108237))

(assert (= (and mapNonEmpty!10969 ((_ is Cons!23312) mapValue!10969)) b!2108232))

(assert (= b!2108235 b!2108236))

(assert (= (and b!2108235 condSetEmpty!13948) setIsEmpty!13949))

(assert (= (and b!2108235 (not condSetEmpty!13948)) setNonEmpty!13948))

(assert (= setNonEmpty!13948 b!2108233))

(assert (= (and mapNonEmpty!10962 ((_ is Cons!23312) mapDefault!10969)) b!2108235))

(declare-fun m!2565989 () Bool)

(assert (=> b!2108235 m!2565989))

(declare-fun m!2565991 () Bool)

(assert (=> b!2108232 m!2565991))

(declare-fun m!2565993 () Bool)

(assert (=> setNonEmpty!13948 m!2565993))

(declare-fun m!2565995 () Bool)

(assert (=> setNonEmpty!13949 m!2565995))

(declare-fun m!2565997 () Bool)

(assert (=> mapNonEmpty!10969 m!2565997))

(declare-fun e!1340345 () Bool)

(assert (=> mapNonEmpty!10962 (= tp!640211 e!1340345)))

(declare-fun e!1340347 () Bool)

(declare-fun tp!640359 () Bool)

(declare-fun setRes!13950 () Bool)

(declare-fun b!2108238 () Bool)

(assert (=> b!2108238 (= e!1340345 (and (inv!30860 (_1!13075 (_1!13076 (h!28713 mapValue!10960)))) e!1340347 tp_is_empty!9379 setRes!13950 tp!640359))))

(declare-fun condSetEmpty!13950 () Bool)

(assert (=> b!2108238 (= condSetEmpty!13950 (= (_2!13076 (h!28713 mapValue!10960)) ((as const (Array Context!2302 Bool)) false)))))

(declare-fun tp!640357 () Bool)

(declare-fun setNonEmpty!13950 () Bool)

(declare-fun e!1340346 () Bool)

(declare-fun setElem!13950 () Context!2302)

(assert (=> setNonEmpty!13950 (= setRes!13950 (and tp!640357 (inv!30860 setElem!13950) e!1340346))))

(declare-fun setRest!13950 () (InoxSet Context!2302))

(assert (=> setNonEmpty!13950 (= (_2!13076 (h!28713 mapValue!10960)) ((_ map or) (store ((as const (Array Context!2302 Bool)) false) setElem!13950 true) setRest!13950))))

(declare-fun setIsEmpty!13950 () Bool)

(assert (=> setIsEmpty!13950 setRes!13950))

(declare-fun b!2108239 () Bool)

(declare-fun tp!640358 () Bool)

(assert (=> b!2108239 (= e!1340346 tp!640358)))

(declare-fun b!2108240 () Bool)

(declare-fun tp!640360 () Bool)

(assert (=> b!2108240 (= e!1340347 tp!640360)))

(assert (= b!2108238 b!2108240))

(assert (= (and b!2108238 condSetEmpty!13950) setIsEmpty!13950))

(assert (= (and b!2108238 (not condSetEmpty!13950)) setNonEmpty!13950))

(assert (= setNonEmpty!13950 b!2108239))

(assert (= (and mapNonEmpty!10962 ((_ is Cons!23312) mapValue!10960)) b!2108238))

(declare-fun m!2565999 () Bool)

(assert (=> b!2108238 m!2565999))

(declare-fun m!2566001 () Bool)

(assert (=> setNonEmpty!13950 m!2566001))

(declare-fun b!2108252 () Bool)

(declare-fun e!1340350 () Bool)

(declare-fun tp!640375 () Bool)

(declare-fun tp!640374 () Bool)

(assert (=> b!2108252 (= e!1340350 (and tp!640375 tp!640374))))

(assert (=> b!2108032 (= tp!640203 e!1340350)))

(declare-fun b!2108251 () Bool)

(assert (=> b!2108251 (= e!1340350 tp_is_empty!9379)))

(declare-fun b!2108253 () Bool)

(declare-fun tp!640373 () Bool)

(assert (=> b!2108253 (= e!1340350 tp!640373)))

(declare-fun b!2108254 () Bool)

(declare-fun tp!640371 () Bool)

(declare-fun tp!640372 () Bool)

(assert (=> b!2108254 (= e!1340350 (and tp!640371 tp!640372))))

(assert (= (and b!2108032 ((_ is ElementMatch!5581) (regex!4148 (rule!6461 (_1!13077 (v!27856 (_1!13079 err!4129))))))) b!2108251))

(assert (= (and b!2108032 ((_ is Concat!9865) (regex!4148 (rule!6461 (_1!13077 (v!27856 (_1!13079 err!4129))))))) b!2108252))

(assert (= (and b!2108032 ((_ is Star!5581) (regex!4148 (rule!6461 (_1!13077 (v!27856 (_1!13079 err!4129))))))) b!2108253))

(assert (= (and b!2108032 ((_ is Union!5581) (regex!4148 (rule!6461 (_1!13077 (v!27856 (_1!13079 err!4129))))))) b!2108254))

(declare-fun setIsEmpty!13951 () Bool)

(declare-fun setRes!13951 () Bool)

(assert (=> setIsEmpty!13951 setRes!13951))

(declare-fun e!1340353 () Bool)

(assert (=> b!2107996 (= tp!640220 e!1340353)))

(declare-fun b!2108255 () Bool)

(declare-fun e!1340351 () Bool)

(declare-fun tp!640380 () Bool)

(assert (=> b!2108255 (= e!1340351 tp!640380)))

(declare-fun setElem!13951 () Context!2302)

(declare-fun tp!640377 () Bool)

(declare-fun setNonEmpty!13951 () Bool)

(assert (=> setNonEmpty!13951 (= setRes!13951 (and tp!640377 (inv!30860 setElem!13951) e!1340351))))

(declare-fun setRest!13951 () (InoxSet Context!2302))

(assert (=> setNonEmpty!13951 (= (_2!13078 (h!28716 (zeroValue!2526 (v!27859 (underlying!4731 (v!27860 (underlying!4732 (cache!2562 (_3!1770 err!4129))))))))) ((_ map or) (store ((as const (Array Context!2302 Bool)) false) setElem!13951 true) setRest!13951))))

(declare-fun b!2108256 () Bool)

(declare-fun e!1340352 () Bool)

(declare-fun tp!640376 () Bool)

(assert (=> b!2108256 (= e!1340352 tp!640376)))

(declare-fun tp!640378 () Bool)

(declare-fun b!2108257 () Bool)

(declare-fun tp!640379 () Bool)

(assert (=> b!2108257 (= e!1340353 (and tp!640378 (inv!30860 (_2!13074 (_1!13078 (h!28716 (zeroValue!2526 (v!27859 (underlying!4731 (v!27860 (underlying!4732 (cache!2562 (_3!1770 err!4129))))))))))) e!1340352 tp_is_empty!9379 setRes!13951 tp!640379))))

(declare-fun condSetEmpty!13951 () Bool)

(assert (=> b!2108257 (= condSetEmpty!13951 (= (_2!13078 (h!28716 (zeroValue!2526 (v!27859 (underlying!4731 (v!27860 (underlying!4732 (cache!2562 (_3!1770 err!4129))))))))) ((as const (Array Context!2302 Bool)) false)))))

(assert (= b!2108257 b!2108256))

(assert (= (and b!2108257 condSetEmpty!13951) setIsEmpty!13951))

(assert (= (and b!2108257 (not condSetEmpty!13951)) setNonEmpty!13951))

(assert (= setNonEmpty!13951 b!2108255))

(assert (= (and b!2107996 ((_ is Cons!23315) (zeroValue!2526 (v!27859 (underlying!4731 (v!27860 (underlying!4732 (cache!2562 (_3!1770 err!4129))))))))) b!2108257))

(declare-fun m!2566003 () Bool)

(assert (=> setNonEmpty!13951 m!2566003))

(declare-fun m!2566005 () Bool)

(assert (=> b!2108257 m!2566005))

(declare-fun setIsEmpty!13952 () Bool)

(declare-fun setRes!13952 () Bool)

(assert (=> setIsEmpty!13952 setRes!13952))

(declare-fun e!1340356 () Bool)

(assert (=> b!2107996 (= tp!640226 e!1340356)))

(declare-fun b!2108258 () Bool)

(declare-fun e!1340354 () Bool)

(declare-fun tp!640385 () Bool)

(assert (=> b!2108258 (= e!1340354 tp!640385)))

(declare-fun setNonEmpty!13952 () Bool)

(declare-fun tp!640382 () Bool)

(declare-fun setElem!13952 () Context!2302)

(assert (=> setNonEmpty!13952 (= setRes!13952 (and tp!640382 (inv!30860 setElem!13952) e!1340354))))

(declare-fun setRest!13952 () (InoxSet Context!2302))

(assert (=> setNonEmpty!13952 (= (_2!13078 (h!28716 (minValue!2526 (v!27859 (underlying!4731 (v!27860 (underlying!4732 (cache!2562 (_3!1770 err!4129))))))))) ((_ map or) (store ((as const (Array Context!2302 Bool)) false) setElem!13952 true) setRest!13952))))

(declare-fun b!2108259 () Bool)

(declare-fun e!1340355 () Bool)

(declare-fun tp!640381 () Bool)

(assert (=> b!2108259 (= e!1340355 tp!640381)))

(declare-fun b!2108260 () Bool)

(declare-fun tp!640384 () Bool)

(declare-fun tp!640383 () Bool)

(assert (=> b!2108260 (= e!1340356 (and tp!640383 (inv!30860 (_2!13074 (_1!13078 (h!28716 (minValue!2526 (v!27859 (underlying!4731 (v!27860 (underlying!4732 (cache!2562 (_3!1770 err!4129))))))))))) e!1340355 tp_is_empty!9379 setRes!13952 tp!640384))))

(declare-fun condSetEmpty!13952 () Bool)

(assert (=> b!2108260 (= condSetEmpty!13952 (= (_2!13078 (h!28716 (minValue!2526 (v!27859 (underlying!4731 (v!27860 (underlying!4732 (cache!2562 (_3!1770 err!4129))))))))) ((as const (Array Context!2302 Bool)) false)))))

(assert (= b!2108260 b!2108259))

(assert (= (and b!2108260 condSetEmpty!13952) setIsEmpty!13952))

(assert (= (and b!2108260 (not condSetEmpty!13952)) setNonEmpty!13952))

(assert (= setNonEmpty!13952 b!2108258))

(assert (= (and b!2107996 ((_ is Cons!23315) (minValue!2526 (v!27859 (underlying!4731 (v!27860 (underlying!4732 (cache!2562 (_3!1770 err!4129))))))))) b!2108260))

(declare-fun m!2566007 () Bool)

(assert (=> setNonEmpty!13952 m!2566007))

(declare-fun m!2566009 () Bool)

(assert (=> b!2108260 m!2566009))

(declare-fun e!1340357 () Bool)

(assert (=> b!2108041 (= tp!640217 e!1340357)))

(declare-fun e!1340359 () Bool)

(declare-fun tp!640388 () Bool)

(declare-fun setRes!13953 () Bool)

(declare-fun b!2108261 () Bool)

(assert (=> b!2108261 (= e!1340357 (and (inv!30860 (_1!13075 (_1!13076 (h!28713 mapDefault!10962)))) e!1340359 tp_is_empty!9379 setRes!13953 tp!640388))))

(declare-fun condSetEmpty!13953 () Bool)

(assert (=> b!2108261 (= condSetEmpty!13953 (= (_2!13076 (h!28713 mapDefault!10962)) ((as const (Array Context!2302 Bool)) false)))))

(declare-fun setElem!13953 () Context!2302)

(declare-fun setNonEmpty!13953 () Bool)

(declare-fun e!1340358 () Bool)

(declare-fun tp!640386 () Bool)

(assert (=> setNonEmpty!13953 (= setRes!13953 (and tp!640386 (inv!30860 setElem!13953) e!1340358))))

(declare-fun setRest!13953 () (InoxSet Context!2302))

(assert (=> setNonEmpty!13953 (= (_2!13076 (h!28713 mapDefault!10962)) ((_ map or) (store ((as const (Array Context!2302 Bool)) false) setElem!13953 true) setRest!13953))))

(declare-fun setIsEmpty!13953 () Bool)

(assert (=> setIsEmpty!13953 setRes!13953))

(declare-fun b!2108262 () Bool)

(declare-fun tp!640387 () Bool)

(assert (=> b!2108262 (= e!1340358 tp!640387)))

(declare-fun b!2108263 () Bool)

(declare-fun tp!640389 () Bool)

(assert (=> b!2108263 (= e!1340359 tp!640389)))

(assert (= b!2108261 b!2108263))

(assert (= (and b!2108261 condSetEmpty!13953) setIsEmpty!13953))

(assert (= (and b!2108261 (not condSetEmpty!13953)) setNonEmpty!13953))

(assert (= setNonEmpty!13953 b!2108262))

(assert (= (and b!2108041 ((_ is Cons!23312) mapDefault!10962)) b!2108261))

(declare-fun m!2566011 () Bool)

(assert (=> b!2108261 m!2566011))

(declare-fun m!2566013 () Bool)

(assert (=> setNonEmpty!13953 m!2566013))

(declare-fun b!2108274 () Bool)

(declare-fun b_free!60717 () Bool)

(declare-fun b_next!61421 () Bool)

(assert (=> b!2108274 (= b_free!60717 (not b_next!61421))))

(declare-fun tp!640399 () Bool)

(declare-fun b_and!170283 () Bool)

(assert (=> b!2108274 (= tp!640399 b_and!170283)))

(declare-fun b_free!60719 () Bool)

(declare-fun b_next!61423 () Bool)

(assert (=> b!2108274 (= b_free!60719 (not b_next!61423))))

(declare-fun tb!132271 () Bool)

(declare-fun t!195899 () Bool)

(assert (=> (and b!2108274 (= (toChars!5718 (transformation!4148 (h!28717 (t!195893 rulesArg!349)))) (toChars!5718 (transformation!4148 (rule!6461 (_1!13077 (v!27856 (_1!13079 err!4129))))))) t!195899) tb!132271))

(declare-fun result!158562 () Bool)

(assert (= result!158562 result!158540))

(assert (=> b!2108064 t!195899))

(declare-fun b_and!170285 () Bool)

(declare-fun tp!640400 () Bool)

(assert (=> b!2108274 (= tp!640400 (and (=> t!195899 result!158562) b_and!170285))))

(declare-fun e!1340371 () Bool)

(assert (=> b!2108274 (= e!1340371 (and tp!640399 tp!640400))))

(declare-fun e!1340370 () Bool)

(declare-fun tp!640398 () Bool)

(declare-fun b!2108273 () Bool)

(assert (=> b!2108273 (= e!1340370 (and tp!640398 (inv!30850 (tag!4638 (h!28717 (t!195893 rulesArg!349)))) (inv!30854 (transformation!4148 (h!28717 (t!195893 rulesArg!349)))) e!1340371))))

(declare-fun b!2108272 () Bool)

(declare-fun e!1340369 () Bool)

(declare-fun tp!640401 () Bool)

(assert (=> b!2108272 (= e!1340369 (and e!1340370 tp!640401))))

(assert (=> b!2108002 (= tp!640204 e!1340369)))

(assert (= b!2108273 b!2108274))

(assert (= b!2108272 b!2108273))

(assert (= (and b!2108002 ((_ is Cons!23316) (t!195893 rulesArg!349))) b!2108272))

(declare-fun m!2566015 () Bool)

(assert (=> b!2108273 m!2566015))

(declare-fun m!2566017 () Bool)

(assert (=> b!2108273 m!2566017))

(declare-fun setIsEmpty!13954 () Bool)

(declare-fun setRes!13954 () Bool)

(assert (=> setIsEmpty!13954 setRes!13954))

(declare-fun e!1340374 () Bool)

(assert (=> b!2108020 (= tp!640189 e!1340374)))

(declare-fun b!2108275 () Bool)

(declare-fun e!1340372 () Bool)

(declare-fun tp!640406 () Bool)

(assert (=> b!2108275 (= e!1340372 tp!640406)))

(declare-fun setElem!13954 () Context!2302)

(declare-fun tp!640403 () Bool)

(declare-fun setNonEmpty!13954 () Bool)

(assert (=> setNonEmpty!13954 (= setRes!13954 (and tp!640403 (inv!30860 setElem!13954) e!1340372))))

(declare-fun setRest!13954 () (InoxSet Context!2302))

(assert (=> setNonEmpty!13954 (= (_2!13078 (h!28716 mapDefault!10960)) ((_ map or) (store ((as const (Array Context!2302 Bool)) false) setElem!13954 true) setRest!13954))))

(declare-fun b!2108276 () Bool)

(declare-fun e!1340373 () Bool)

(declare-fun tp!640402 () Bool)

(assert (=> b!2108276 (= e!1340373 tp!640402)))

(declare-fun tp!640404 () Bool)

(declare-fun b!2108277 () Bool)

(declare-fun tp!640405 () Bool)

(assert (=> b!2108277 (= e!1340374 (and tp!640404 (inv!30860 (_2!13074 (_1!13078 (h!28716 mapDefault!10960)))) e!1340373 tp_is_empty!9379 setRes!13954 tp!640405))))

(declare-fun condSetEmpty!13954 () Bool)

(assert (=> b!2108277 (= condSetEmpty!13954 (= (_2!13078 (h!28716 mapDefault!10960)) ((as const (Array Context!2302 Bool)) false)))))

(assert (= b!2108277 b!2108276))

(assert (= (and b!2108277 condSetEmpty!13954) setIsEmpty!13954))

(assert (= (and b!2108277 (not condSetEmpty!13954)) setNonEmpty!13954))

(assert (= setNonEmpty!13954 b!2108275))

(assert (= (and b!2108020 ((_ is Cons!23315) mapDefault!10960)) b!2108277))

(declare-fun m!2566019 () Bool)

(assert (=> setNonEmpty!13954 m!2566019))

(declare-fun m!2566021 () Bool)

(assert (=> b!2108277 m!2566021))

(declare-fun tp!640409 () Bool)

(declare-fun b!2108278 () Bool)

(declare-fun e!1340376 () Bool)

(declare-fun tp!640408 () Bool)

(assert (=> b!2108278 (= e!1340376 (and (inv!30851 (left!18167 (c!338957 (_2!13077 (v!27856 (_1!13079 err!4129)))))) tp!640409 (inv!30851 (right!18497 (c!338957 (_2!13077 (v!27856 (_1!13079 err!4129)))))) tp!640408))))

(declare-fun b!2108280 () Bool)

(declare-fun e!1340375 () Bool)

(declare-fun tp!640407 () Bool)

(assert (=> b!2108280 (= e!1340375 tp!640407)))

(declare-fun b!2108279 () Bool)

(assert (=> b!2108279 (= e!1340376 (and (inv!30859 (xs!10670 (c!338957 (_2!13077 (v!27856 (_1!13079 err!4129)))))) e!1340375))))

(assert (=> b!2108010 (= tp!640221 (and (inv!30851 (c!338957 (_2!13077 (v!27856 (_1!13079 err!4129))))) e!1340376))))

(assert (= (and b!2108010 ((_ is Node!7728) (c!338957 (_2!13077 (v!27856 (_1!13079 err!4129)))))) b!2108278))

(assert (= b!2108279 b!2108280))

(assert (= (and b!2108010 ((_ is Leaf!11286) (c!338957 (_2!13077 (v!27856 (_1!13079 err!4129)))))) b!2108279))

(declare-fun m!2566023 () Bool)

(assert (=> b!2108278 m!2566023))

(declare-fun m!2566025 () Bool)

(assert (=> b!2108278 m!2566025))

(declare-fun m!2566027 () Bool)

(assert (=> b!2108279 m!2566027))

(assert (=> b!2108010 m!2565833))

(declare-fun setRes!13955 () Bool)

(declare-fun tp!640413 () Bool)

(declare-fun e!1340381 () Bool)

(declare-fun setNonEmpty!13955 () Bool)

(declare-fun setElem!13956 () Context!2302)

(assert (=> setNonEmpty!13955 (= setRes!13955 (and tp!640413 (inv!30860 setElem!13956) e!1340381))))

(declare-fun mapDefault!10970 () List!23399)

(declare-fun setRest!13955 () (InoxSet Context!2302))

(assert (=> setNonEmpty!13955 (= (_2!13078 (h!28716 mapDefault!10970)) ((_ map or) (store ((as const (Array Context!2302 Bool)) false) setElem!13956 true) setRest!13955))))

(declare-fun b!2108281 () Bool)

(declare-fun tp!640410 () Bool)

(assert (=> b!2108281 (= e!1340381 tp!640410)))

(declare-fun mapIsEmpty!10970 () Bool)

(declare-fun mapRes!10970 () Bool)

(assert (=> mapIsEmpty!10970 mapRes!10970))

(declare-fun setIsEmpty!13955 () Bool)

(assert (=> setIsEmpty!13955 setRes!13955))

(declare-fun b!2108282 () Bool)

(declare-fun e!1340382 () Bool)

(declare-fun tp!640415 () Bool)

(assert (=> b!2108282 (= e!1340382 tp!640415)))

(declare-fun b!2108283 () Bool)

(declare-fun e!1340378 () Bool)

(declare-fun tp!640417 () Bool)

(assert (=> b!2108283 (= e!1340378 tp!640417)))

(declare-fun e!1340377 () Bool)

(declare-fun b!2108284 () Bool)

(declare-fun tp!640419 () Bool)

(declare-fun tp!640414 () Bool)

(assert (=> b!2108284 (= e!1340377 (and tp!640419 (inv!30860 (_2!13074 (_1!13078 (h!28716 mapDefault!10970)))) e!1340382 tp_is_empty!9379 setRes!13955 tp!640414))))

(declare-fun condSetEmpty!13955 () Bool)

(assert (=> b!2108284 (= condSetEmpty!13955 (= (_2!13078 (h!28716 mapDefault!10970)) ((as const (Array Context!2302 Bool)) false)))))

(declare-fun e!1340380 () Bool)

(declare-fun setElem!13955 () Context!2302)

(declare-fun setRes!13956 () Bool)

(declare-fun setNonEmpty!13956 () Bool)

(declare-fun tp!640412 () Bool)

(assert (=> setNonEmpty!13956 (= setRes!13956 (and tp!640412 (inv!30860 setElem!13955) e!1340380))))

(declare-fun mapValue!10970 () List!23399)

(declare-fun setRest!13956 () (InoxSet Context!2302))

(assert (=> setNonEmpty!13956 (= (_2!13078 (h!28716 mapValue!10970)) ((_ map or) (store ((as const (Array Context!2302 Bool)) false) setElem!13955 true) setRest!13956))))

(declare-fun condMapEmpty!10970 () Bool)

(assert (=> mapNonEmpty!10963 (= condMapEmpty!10970 (= mapRest!10962 ((as const (Array (_ BitVec 32) List!23399)) mapDefault!10970)))))

(assert (=> mapNonEmpty!10963 (= tp!640192 (and e!1340377 mapRes!10970))))

(declare-fun b!2108285 () Bool)

(declare-fun tp!640418 () Bool)

(assert (=> b!2108285 (= e!1340380 tp!640418)))

(declare-fun e!1340379 () Bool)

(declare-fun tp!640416 () Bool)

(declare-fun b!2108286 () Bool)

(declare-fun tp!640411 () Bool)

(assert (=> b!2108286 (= e!1340379 (and tp!640411 (inv!30860 (_2!13074 (_1!13078 (h!28716 mapValue!10970)))) e!1340378 tp_is_empty!9379 setRes!13956 tp!640416))))

(declare-fun condSetEmpty!13956 () Bool)

(assert (=> b!2108286 (= condSetEmpty!13956 (= (_2!13078 (h!28716 mapValue!10970)) ((as const (Array Context!2302 Bool)) false)))))

(declare-fun setIsEmpty!13956 () Bool)

(assert (=> setIsEmpty!13956 setRes!13956))

(declare-fun mapNonEmpty!10970 () Bool)

(declare-fun tp!640420 () Bool)

(assert (=> mapNonEmpty!10970 (= mapRes!10970 (and tp!640420 e!1340379))))

(declare-fun mapRest!10970 () (Array (_ BitVec 32) List!23399))

(declare-fun mapKey!10970 () (_ BitVec 32))

(assert (=> mapNonEmpty!10970 (= mapRest!10962 (store mapRest!10970 mapKey!10970 mapValue!10970))))

(assert (= (and mapNonEmpty!10963 condMapEmpty!10970) mapIsEmpty!10970))

(assert (= (and mapNonEmpty!10963 (not condMapEmpty!10970)) mapNonEmpty!10970))

(assert (= b!2108286 b!2108283))

(assert (= (and b!2108286 condSetEmpty!13956) setIsEmpty!13956))

(assert (= (and b!2108286 (not condSetEmpty!13956)) setNonEmpty!13956))

(assert (= setNonEmpty!13956 b!2108285))

(assert (= (and mapNonEmpty!10970 ((_ is Cons!23315) mapValue!10970)) b!2108286))

(assert (= b!2108284 b!2108282))

(assert (= (and b!2108284 condSetEmpty!13955) setIsEmpty!13955))

(assert (= (and b!2108284 (not condSetEmpty!13955)) setNonEmpty!13955))

(assert (= setNonEmpty!13955 b!2108281))

(assert (= (and mapNonEmpty!10963 ((_ is Cons!23315) mapDefault!10970)) b!2108284))

(declare-fun m!2566029 () Bool)

(assert (=> setNonEmpty!13955 m!2566029))

(declare-fun m!2566031 () Bool)

(assert (=> setNonEmpty!13956 m!2566031))

(declare-fun m!2566033 () Bool)

(assert (=> b!2108286 m!2566033))

(declare-fun m!2566035 () Bool)

(assert (=> b!2108284 m!2566035))

(declare-fun m!2566037 () Bool)

(assert (=> mapNonEmpty!10970 m!2566037))

(declare-fun setIsEmpty!13957 () Bool)

(declare-fun setRes!13957 () Bool)

(assert (=> setIsEmpty!13957 setRes!13957))

(declare-fun e!1340385 () Bool)

(assert (=> mapNonEmpty!10963 (= tp!640213 e!1340385)))

(declare-fun b!2108287 () Bool)

(declare-fun e!1340383 () Bool)

(declare-fun tp!640425 () Bool)

(assert (=> b!2108287 (= e!1340383 tp!640425)))

(declare-fun setElem!13957 () Context!2302)

(declare-fun setNonEmpty!13957 () Bool)

(declare-fun tp!640422 () Bool)

(assert (=> setNonEmpty!13957 (= setRes!13957 (and tp!640422 (inv!30860 setElem!13957) e!1340383))))

(declare-fun setRest!13957 () (InoxSet Context!2302))

(assert (=> setNonEmpty!13957 (= (_2!13078 (h!28716 mapValue!10961)) ((_ map or) (store ((as const (Array Context!2302 Bool)) false) setElem!13957 true) setRest!13957))))

(declare-fun b!2108288 () Bool)

(declare-fun e!1340384 () Bool)

(declare-fun tp!640421 () Bool)

(assert (=> b!2108288 (= e!1340384 tp!640421)))

(declare-fun tp!640423 () Bool)

(declare-fun b!2108289 () Bool)

(declare-fun tp!640424 () Bool)

(assert (=> b!2108289 (= e!1340385 (and tp!640423 (inv!30860 (_2!13074 (_1!13078 (h!28716 mapValue!10961)))) e!1340384 tp_is_empty!9379 setRes!13957 tp!640424))))

(declare-fun condSetEmpty!13957 () Bool)

(assert (=> b!2108289 (= condSetEmpty!13957 (= (_2!13078 (h!28716 mapValue!10961)) ((as const (Array Context!2302 Bool)) false)))))

(assert (= b!2108289 b!2108288))

(assert (= (and b!2108289 condSetEmpty!13957) setIsEmpty!13957))

(assert (= (and b!2108289 (not condSetEmpty!13957)) setNonEmpty!13957))

(assert (= setNonEmpty!13957 b!2108287))

(assert (= (and mapNonEmpty!10963 ((_ is Cons!23315) mapValue!10961)) b!2108289))

(declare-fun m!2566039 () Bool)

(assert (=> setNonEmpty!13957 m!2566039))

(declare-fun m!2566041 () Bool)

(assert (=> b!2108289 m!2566041))

(declare-fun setNonEmpty!13958 () Bool)

(declare-fun setRes!13958 () Bool)

(declare-fun tp!640428 () Bool)

(declare-fun e!1340390 () Bool)

(declare-fun setElem!13959 () Context!2302)

(assert (=> setNonEmpty!13958 (= setRes!13958 (and tp!640428 (inv!30860 setElem!13959) e!1340390))))

(declare-fun mapDefault!10971 () List!23396)

(declare-fun setRest!13959 () (InoxSet Context!2302))

(assert (=> setNonEmpty!13958 (= (_2!13076 (h!28713 mapDefault!10971)) ((_ map or) (store ((as const (Array Context!2302 Bool)) false) setElem!13959 true) setRest!13959))))

(declare-fun mapIsEmpty!10971 () Bool)

(declare-fun mapRes!10971 () Bool)

(assert (=> mapIsEmpty!10971 mapRes!10971))

(declare-fun mapValue!10971 () List!23396)

(declare-fun e!1340388 () Bool)

(declare-fun setRes!13959 () Bool)

(declare-fun b!2108290 () Bool)

(declare-fun e!1340391 () Bool)

(declare-fun tp!640430 () Bool)

(assert (=> b!2108290 (= e!1340391 (and (inv!30860 (_1!13075 (_1!13076 (h!28713 mapValue!10971)))) e!1340388 tp_is_empty!9379 setRes!13959 tp!640430))))

(declare-fun condSetEmpty!13959 () Bool)

(assert (=> b!2108290 (= condSetEmpty!13959 (= (_2!13076 (h!28713 mapValue!10971)) ((as const (Array Context!2302 Bool)) false)))))

(declare-fun b!2108291 () Bool)

(declare-fun tp!640433 () Bool)

(assert (=> b!2108291 (= e!1340390 tp!640433)))

(declare-fun b!2108292 () Bool)

(declare-fun tp!640432 () Bool)

(assert (=> b!2108292 (= e!1340388 tp!640432)))

(declare-fun e!1340387 () Bool)

(declare-fun b!2108293 () Bool)

(declare-fun tp!640426 () Bool)

(declare-fun e!1340386 () Bool)

(assert (=> b!2108293 (= e!1340386 (and (inv!30860 (_1!13075 (_1!13076 (h!28713 mapDefault!10971)))) e!1340387 tp_is_empty!9379 setRes!13958 tp!640426))))

(declare-fun condSetEmpty!13958 () Bool)

(assert (=> b!2108293 (= condSetEmpty!13958 (= (_2!13076 (h!28713 mapDefault!10971)) ((as const (Array Context!2302 Bool)) false)))))

(declare-fun tp!640429 () Bool)

(declare-fun setElem!13958 () Context!2302)

(declare-fun setNonEmpty!13959 () Bool)

(declare-fun e!1340389 () Bool)

(assert (=> setNonEmpty!13959 (= setRes!13959 (and tp!640429 (inv!30860 setElem!13958) e!1340389))))

(declare-fun setRest!13958 () (InoxSet Context!2302))

(assert (=> setNonEmpty!13959 (= (_2!13076 (h!28713 mapValue!10971)) ((_ map or) (store ((as const (Array Context!2302 Bool)) false) setElem!13958 true) setRest!13958))))

(declare-fun setIsEmpty!13958 () Bool)

(assert (=> setIsEmpty!13958 setRes!13959))

(declare-fun b!2108294 () Bool)

(declare-fun tp!640434 () Bool)

(assert (=> b!2108294 (= e!1340387 tp!640434)))

(declare-fun mapNonEmpty!10971 () Bool)

(declare-fun tp!640427 () Bool)

(assert (=> mapNonEmpty!10971 (= mapRes!10971 (and tp!640427 e!1340391))))

(declare-fun mapRest!10971 () (Array (_ BitVec 32) List!23396))

(declare-fun mapKey!10971 () (_ BitVec 32))

(assert (=> mapNonEmpty!10971 (= mapRest!10960 (store mapRest!10971 mapKey!10971 mapValue!10971))))

(declare-fun setIsEmpty!13959 () Bool)

(assert (=> setIsEmpty!13959 setRes!13958))

(declare-fun b!2108295 () Bool)

(declare-fun tp!640431 () Bool)

(assert (=> b!2108295 (= e!1340389 tp!640431)))

(declare-fun condMapEmpty!10971 () Bool)

(assert (=> mapNonEmpty!10961 (= condMapEmpty!10971 (= mapRest!10960 ((as const (Array (_ BitVec 32) List!23396)) mapDefault!10971)))))

(assert (=> mapNonEmpty!10961 (= tp!640191 (and e!1340386 mapRes!10971))))

(assert (= (and mapNonEmpty!10961 condMapEmpty!10971) mapIsEmpty!10971))

(assert (= (and mapNonEmpty!10961 (not condMapEmpty!10971)) mapNonEmpty!10971))

(assert (= b!2108290 b!2108292))

(assert (= (and b!2108290 condSetEmpty!13959) setIsEmpty!13958))

(assert (= (and b!2108290 (not condSetEmpty!13959)) setNonEmpty!13959))

(assert (= setNonEmpty!13959 b!2108295))

(assert (= (and mapNonEmpty!10971 ((_ is Cons!23312) mapValue!10971)) b!2108290))

(assert (= b!2108293 b!2108294))

(assert (= (and b!2108293 condSetEmpty!13958) setIsEmpty!13959))

(assert (= (and b!2108293 (not condSetEmpty!13958)) setNonEmpty!13958))

(assert (= setNonEmpty!13958 b!2108291))

(assert (= (and mapNonEmpty!10961 ((_ is Cons!23312) mapDefault!10971)) b!2108293))

(declare-fun m!2566043 () Bool)

(assert (=> b!2108293 m!2566043))

(declare-fun m!2566045 () Bool)

(assert (=> b!2108290 m!2566045))

(declare-fun m!2566047 () Bool)

(assert (=> setNonEmpty!13958 m!2566047))

(declare-fun m!2566049 () Bool)

(assert (=> setNonEmpty!13959 m!2566049))

(declare-fun m!2566051 () Bool)

(assert (=> mapNonEmpty!10971 m!2566051))

(declare-fun e!1340392 () Bool)

(assert (=> mapNonEmpty!10961 (= tp!640223 e!1340392)))

(declare-fun tp!640437 () Bool)

(declare-fun e!1340394 () Bool)

(declare-fun setRes!13960 () Bool)

(declare-fun b!2108296 () Bool)

(assert (=> b!2108296 (= e!1340392 (and (inv!30860 (_1!13075 (_1!13076 (h!28713 mapValue!10962)))) e!1340394 tp_is_empty!9379 setRes!13960 tp!640437))))

(declare-fun condSetEmpty!13960 () Bool)

(assert (=> b!2108296 (= condSetEmpty!13960 (= (_2!13076 (h!28713 mapValue!10962)) ((as const (Array Context!2302 Bool)) false)))))

(declare-fun tp!640435 () Bool)

(declare-fun setElem!13960 () Context!2302)

(declare-fun setNonEmpty!13960 () Bool)

(declare-fun e!1340393 () Bool)

(assert (=> setNonEmpty!13960 (= setRes!13960 (and tp!640435 (inv!30860 setElem!13960) e!1340393))))

(declare-fun setRest!13960 () (InoxSet Context!2302))

(assert (=> setNonEmpty!13960 (= (_2!13076 (h!28713 mapValue!10962)) ((_ map or) (store ((as const (Array Context!2302 Bool)) false) setElem!13960 true) setRest!13960))))

(declare-fun setIsEmpty!13960 () Bool)

(assert (=> setIsEmpty!13960 setRes!13960))

(declare-fun b!2108297 () Bool)

(declare-fun tp!640436 () Bool)

(assert (=> b!2108297 (= e!1340393 tp!640436)))

(declare-fun b!2108298 () Bool)

(declare-fun tp!640438 () Bool)

(assert (=> b!2108298 (= e!1340394 tp!640438)))

(assert (= b!2108296 b!2108298))

(assert (= (and b!2108296 condSetEmpty!13960) setIsEmpty!13960))

(assert (= (and b!2108296 (not condSetEmpty!13960)) setNonEmpty!13960))

(assert (= setNonEmpty!13960 b!2108297))

(assert (= (and mapNonEmpty!10961 ((_ is Cons!23312) mapValue!10962)) b!2108296))

(declare-fun m!2566053 () Bool)

(assert (=> b!2108296 m!2566053))

(declare-fun m!2566055 () Bool)

(assert (=> setNonEmpty!13960 m!2566055))

(declare-fun b!2108299 () Bool)

(declare-fun e!1340396 () Bool)

(declare-fun tp!640440 () Bool)

(declare-fun tp!640441 () Bool)

(assert (=> b!2108299 (= e!1340396 (and (inv!30851 (left!18167 (c!338957 totalInput!482))) tp!640441 (inv!30851 (right!18497 (c!338957 totalInput!482))) tp!640440))))

(declare-fun b!2108301 () Bool)

(declare-fun e!1340395 () Bool)

(declare-fun tp!640439 () Bool)

(assert (=> b!2108301 (= e!1340395 tp!640439)))

(declare-fun b!2108300 () Bool)

(assert (=> b!2108300 (= e!1340396 (and (inv!30859 (xs!10670 (c!338957 totalInput!482))) e!1340395))))

(assert (=> b!2108015 (= tp!640194 (and (inv!30851 (c!338957 totalInput!482)) e!1340396))))

(assert (= (and b!2108015 ((_ is Node!7728) (c!338957 totalInput!482))) b!2108299))

(assert (= b!2108300 b!2108301))

(assert (= (and b!2108015 ((_ is Leaf!11286) (c!338957 totalInput!482))) b!2108300))

(declare-fun m!2566057 () Bool)

(assert (=> b!2108299 m!2566057))

(declare-fun m!2566059 () Bool)

(assert (=> b!2108299 m!2566059))

(declare-fun m!2566061 () Bool)

(assert (=> b!2108300 m!2566061))

(assert (=> b!2108015 m!2565763))

(declare-fun b!2108303 () Bool)

(declare-fun e!1340397 () Bool)

(declare-fun tp!640446 () Bool)

(declare-fun tp!640445 () Bool)

(assert (=> b!2108303 (= e!1340397 (and tp!640446 tp!640445))))

(assert (=> b!2108028 (= tp!640206 e!1340397)))

(declare-fun b!2108302 () Bool)

(assert (=> b!2108302 (= e!1340397 tp_is_empty!9379)))

(declare-fun b!2108304 () Bool)

(declare-fun tp!640444 () Bool)

(assert (=> b!2108304 (= e!1340397 tp!640444)))

(declare-fun b!2108305 () Bool)

(declare-fun tp!640442 () Bool)

(declare-fun tp!640443 () Bool)

(assert (=> b!2108305 (= e!1340397 (and tp!640442 tp!640443))))

(assert (= (and b!2108028 ((_ is ElementMatch!5581) (regex!4148 (h!28717 rulesArg!349)))) b!2108302))

(assert (= (and b!2108028 ((_ is Concat!9865) (regex!4148 (h!28717 rulesArg!349)))) b!2108303))

(assert (= (and b!2108028 ((_ is Star!5581) (regex!4148 (h!28717 rulesArg!349)))) b!2108304))

(assert (= (and b!2108028 ((_ is Union!5581) (regex!4148 (h!28717 rulesArg!349)))) b!2108305))

(declare-fun e!1340398 () Bool)

(assert (=> b!2108027 (= tp!640225 e!1340398)))

(declare-fun e!1340400 () Bool)

(declare-fun b!2108306 () Bool)

(declare-fun setRes!13961 () Bool)

(declare-fun tp!640449 () Bool)

(assert (=> b!2108306 (= e!1340398 (and (inv!30860 (_1!13075 (_1!13076 (h!28713 mapDefault!10963)))) e!1340400 tp_is_empty!9379 setRes!13961 tp!640449))))

(declare-fun condSetEmpty!13961 () Bool)

(assert (=> b!2108306 (= condSetEmpty!13961 (= (_2!13076 (h!28713 mapDefault!10963)) ((as const (Array Context!2302 Bool)) false)))))

(declare-fun setElem!13961 () Context!2302)

(declare-fun setNonEmpty!13961 () Bool)

(declare-fun e!1340399 () Bool)

(declare-fun tp!640447 () Bool)

(assert (=> setNonEmpty!13961 (= setRes!13961 (and tp!640447 (inv!30860 setElem!13961) e!1340399))))

(declare-fun setRest!13961 () (InoxSet Context!2302))

(assert (=> setNonEmpty!13961 (= (_2!13076 (h!28713 mapDefault!10963)) ((_ map or) (store ((as const (Array Context!2302 Bool)) false) setElem!13961 true) setRest!13961))))

(declare-fun setIsEmpty!13961 () Bool)

(assert (=> setIsEmpty!13961 setRes!13961))

(declare-fun b!2108307 () Bool)

(declare-fun tp!640448 () Bool)

(assert (=> b!2108307 (= e!1340399 tp!640448)))

(declare-fun b!2108308 () Bool)

(declare-fun tp!640450 () Bool)

(assert (=> b!2108308 (= e!1340400 tp!640450)))

(assert (= b!2108306 b!2108308))

(assert (= (and b!2108306 condSetEmpty!13961) setIsEmpty!13961))

(assert (= (and b!2108306 (not condSetEmpty!13961)) setNonEmpty!13961))

(assert (= setNonEmpty!13961 b!2108307))

(assert (= (and b!2108027 ((_ is Cons!23312) mapDefault!10963)) b!2108306))

(declare-fun m!2566063 () Bool)

(assert (=> b!2108306 m!2566063))

(declare-fun m!2566065 () Bool)

(assert (=> setNonEmpty!13961 m!2566065))

(declare-fun b_lambda!70349 () Bool)

(assert (= b_lambda!70347 (or (and b!2108023 b_free!60695 (= (toChars!5718 (transformation!4148 (h!28717 rulesArg!349))) (toChars!5718 (transformation!4148 (rule!6461 (_1!13077 (v!27856 (_1!13079 err!4129)))))))) (and b!2108037 b_free!60699) (and b!2108274 b_free!60719 (= (toChars!5718 (transformation!4148 (h!28717 (t!195893 rulesArg!349)))) (toChars!5718 (transformation!4148 (rule!6461 (_1!13077 (v!27856 (_1!13079 err!4129)))))))) b_lambda!70349)))

(check-sat (not b!2108103) (not b!2108133) b_and!170281 (not b!2108137) (not b!2108015) (not b!2108297) (not b!2108306) (not b!2108010) (not d!642000) (not b!2108296) (not b!2108239) (not setNonEmpty!13928) b_and!170277 (not b!2108293) (not tb!132267) (not b!2108208) (not b!2108205) (not b!2108209) (not b!2108131) (not setNonEmpty!13948) (not b!2108273) (not setNonEmpty!13954) (not b!2108211) (not b!2108303) (not b!2108196) tp_is_empty!9379 (not b!2108150) (not b!2108275) (not b_next!61411) (not b!2108276) (not b_next!61401) (not setNonEmpty!13959) (not b_next!61419) (not b!2108206) (not b!2108294) (not b!2108207) (not b!2108204) (not d!642010) b_and!170267 (not b!2108108) (not b_next!61403) (not b!2108238) (not setNonEmpty!13960) (not b!2108135) (not b!2108217) (not b!2108203) (not b!2108281) (not b_next!61417) (not b!2108104) (not b_next!61407) (not b_next!61405) (not b!2108214) (not setNonEmpty!13942) (not d!642002) b_and!170263 (not b_next!61423) (not mapNonEmpty!10970) (not b!2108216) (not b!2108215) (not setNonEmpty!13955) (not b!2108065) (not b!2108164) (not setNonEmpty!13939) (not d!641982) (not b!2108278) (not b!2108286) (not b!2108283) (not d!642006) (not setNonEmpty!13952) (not b!2108285) (not d!642036) (not b!2108140) (not b!2108304) (not setNonEmpty!13934) (not b!2108237) (not b!2108277) (not mapNonEmpty!10969) (not b!2108075) (not b!2108054) (not b!2108263) (not setNonEmpty!13949) (not b!2108299) (not b!2108255) (not b!2108279) (not b!2108253) (not d!641984) (not b!2108089) (not b!2108301) (not b!2108184) (not b!2108059) (not b!2108130) (not b!2108202) (not d!642028) (not mapNonEmpty!10966) (not b!2108287) b_and!170285 (not b!2108235) (not b!2108186) (not b!2108272) (not setNonEmpty!13941) (not b!2108091) (not b!2108165) b_and!170275 (not b!2108125) (not b!2108161) (not b!2108141) (not b!2108105) (not d!641998) (not b!2108064) (not b_next!61399) b_and!170273 (not b_next!61409) (not b!2108236) (not b!2108288) (not b!2108070) (not b!2108151) (not b!2108252) (not b!2108213) (not b!2108300) (not setNonEmpty!13935) (not setNonEmpty!13929) (not b!2108210) (not setNonEmpty!13940) b_and!170283 (not setNonEmpty!13938) (not b!2108056) (not b!2108290) (not b!2108138) (not b!2108212) (not b!2108185) b_and!170255 b_and!170279 (not d!642030) (not b!2108262) (not b_next!61421) (not b!2108305) (not b!2108129) (not b!2108256) (not b_next!61397) (not b!2108257) (not b!2108197) (not b!2108047) (not b!2108163) (not setNonEmpty!13956) (not d!642020) (not b!2108234) (not b!2108258) (not d!642050) (not b!2108240) (not mapNonEmpty!10971) (not b!2108134) (not b_next!61415) (not b!2108127) (not b!2108132) (not b!2108183) (not b!2108233) (not b!2108076) (not b!2108232) (not b!2108152) (not b!2108292) (not setNonEmpty!13958) (not b!2108260) (not b!2108126) (not b_next!61413) (not b!2108282) (not b_lambda!70349) (not setNonEmpty!13961) (not b!2108298) (not b!2108295) (not setNonEmpty!13953) (not d!642044) (not b!2108166) b_and!170271 (not b!2108259) (not bm!128396) (not b!2108261) (not setNonEmpty!13950) (not b!2108195) (not d!641996) (not b!2108308) b_and!170265 (not b!2108044) (not b!2108291) (not b!2108307) b_and!170269 (not b!2108162) (not setNonEmpty!13957) (not setNonEmpty!13951) (not b!2107998) (not setNonEmpty!13943) (not b!2108284) (not b!2108280) (not b!2108181) (not b!2108182) (not b!2108093) (not d!642004) (not d!642008) b_and!170259 (not b!2108289) (not b!2108254))
(check-sat b_and!170281 b_and!170277 (not b_next!61411) b_and!170267 (not b_next!61403) (not b_next!61405) b_and!170285 b_and!170275 b_and!170283 (not b_next!61397) (not b_next!61415) (not b_next!61413) b_and!170271 b_and!170259 (not b_next!61401) (not b_next!61419) (not b_next!61417) (not b_next!61407) b_and!170263 (not b_next!61423) (not b_next!61399) b_and!170273 (not b_next!61409) (not b_next!61421) b_and!170255 b_and!170279 b_and!170265 b_and!170269)
