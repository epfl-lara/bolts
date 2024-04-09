; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20996 () Bool)

(assert start!20996)

(declare-fun b_free!5555 () Bool)

(declare-fun b_next!5555 () Bool)

(assert (=> start!20996 (= b_free!5555 (not b_next!5555))))

(declare-fun tp!19717 () Bool)

(declare-fun b_and!12367 () Bool)

(assert (=> start!20996 (= tp!19717 b_and!12367)))

(declare-fun b!210808 () Bool)

(declare-fun res!102909 () Bool)

(declare-fun e!137265 () Bool)

(assert (=> b!210808 (=> (not res!102909) (not e!137265))))

(declare-datatypes ((array!10034 0))(
  ( (array!10035 (arr!4763 (Array (_ BitVec 32) (_ BitVec 64))) (size!5088 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10034)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!210808 (= res!102909 (= (select (arr!4763 _keys!825) i!601) k!843))))

(declare-fun b!210809 () Bool)

(declare-fun e!137269 () Bool)

(declare-fun tp_is_empty!5417 () Bool)

(assert (=> b!210809 (= e!137269 tp_is_empty!5417)))

(declare-fun mapIsEmpty!9206 () Bool)

(declare-fun mapRes!9206 () Bool)

(assert (=> mapIsEmpty!9206 mapRes!9206))

(declare-fun b!210810 () Bool)

(declare-fun res!102905 () Bool)

(assert (=> b!210810 (=> (not res!102905) (not e!137265))))

(declare-datatypes ((List!3074 0))(
  ( (Nil!3071) (Cons!3070 (h!3712 (_ BitVec 64)) (t!8021 List!3074)) )
))
(declare-fun arrayNoDuplicates!0 (array!10034 (_ BitVec 32) List!3074) Bool)

(assert (=> b!210810 (= res!102905 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3071))))

(declare-fun b!210811 () Bool)

(declare-fun e!137263 () Bool)

(declare-datatypes ((V!6869 0))(
  ( (V!6870 (val!2753 Int)) )
))
(declare-datatypes ((ValueCell!2365 0))(
  ( (ValueCellFull!2365 (v!4735 V!6869)) (EmptyCell!2365) )
))
(declare-datatypes ((array!10036 0))(
  ( (array!10037 (arr!4764 (Array (_ BitVec 32) ValueCell!2365)) (size!5089 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10036)

(assert (=> b!210811 (= e!137263 (bvslt i!601 (size!5089 _values!649)))))

(declare-datatypes ((tuple2!4156 0))(
  ( (tuple2!4157 (_1!2088 (_ BitVec 64)) (_2!2088 V!6869)) )
))
(declare-fun lt!108252 () tuple2!4156)

(declare-fun lt!108250 () tuple2!4156)

(declare-datatypes ((List!3075 0))(
  ( (Nil!3072) (Cons!3071 (h!3713 tuple2!4156) (t!8022 List!3075)) )
))
(declare-datatypes ((ListLongMap!3083 0))(
  ( (ListLongMap!3084 (toList!1557 List!3075)) )
))
(declare-fun lt!108243 () ListLongMap!3083)

(declare-fun lt!108241 () ListLongMap!3083)

(declare-fun +!550 (ListLongMap!3083 tuple2!4156) ListLongMap!3083)

(assert (=> b!210811 (= (+!550 lt!108241 lt!108250) (+!550 lt!108243 lt!108252))))

(declare-fun lt!108244 () ListLongMap!3083)

(declare-fun minValue!615 () V!6869)

(declare-fun v!520 () V!6869)

(declare-datatypes ((Unit!6397 0))(
  ( (Unit!6398) )
))
(declare-fun lt!108249 () Unit!6397)

(declare-fun addCommutativeForDiffKeys!195 (ListLongMap!3083 (_ BitVec 64) V!6869 (_ BitVec 64) V!6869) Unit!6397)

(assert (=> b!210811 (= lt!108249 (addCommutativeForDiffKeys!195 lt!108244 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!210812 () Bool)

(declare-fun e!137266 () Bool)

(assert (=> b!210812 (= e!137266 e!137263)))

(declare-fun res!102907 () Bool)

(assert (=> b!210812 (=> res!102907 e!137263)))

(assert (=> b!210812 (= res!102907 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!108242 () ListLongMap!3083)

(assert (=> b!210812 (= lt!108242 lt!108241)))

(assert (=> b!210812 (= lt!108241 (+!550 lt!108244 lt!108252))))

(declare-fun lt!108240 () Unit!6397)

(declare-fun lt!108251 () ListLongMap!3083)

(declare-fun zeroValue!615 () V!6869)

(assert (=> b!210812 (= lt!108240 (addCommutativeForDiffKeys!195 lt!108251 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun lt!108253 () ListLongMap!3083)

(assert (=> b!210812 (= lt!108253 (+!550 lt!108242 lt!108250))))

(declare-fun lt!108247 () ListLongMap!3083)

(declare-fun lt!108245 () tuple2!4156)

(assert (=> b!210812 (= lt!108242 (+!550 lt!108247 lt!108245))))

(declare-fun lt!108248 () ListLongMap!3083)

(assert (=> b!210812 (= lt!108248 lt!108243)))

(assert (=> b!210812 (= lt!108243 (+!550 lt!108244 lt!108250))))

(assert (=> b!210812 (= lt!108244 (+!550 lt!108251 lt!108245))))

(declare-fun lt!108238 () ListLongMap!3083)

(assert (=> b!210812 (= lt!108253 (+!550 (+!550 lt!108238 lt!108245) lt!108250))))

(assert (=> b!210812 (= lt!108250 (tuple2!4157 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!210812 (= lt!108245 (tuple2!4157 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!210813 () Bool)

(declare-fun e!137264 () Bool)

(assert (=> b!210813 (= e!137264 tp_is_empty!5417)))

(declare-fun b!210814 () Bool)

(declare-fun res!102908 () Bool)

(assert (=> b!210814 (=> (not res!102908) (not e!137265))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!210814 (= res!102908 (and (= (size!5089 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5088 _keys!825) (size!5089 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!9206 () Bool)

(declare-fun tp!19718 () Bool)

(assert (=> mapNonEmpty!9206 (= mapRes!9206 (and tp!19718 e!137269))))

(declare-fun mapKey!9206 () (_ BitVec 32))

(declare-fun mapValue!9206 () ValueCell!2365)

(declare-fun mapRest!9206 () (Array (_ BitVec 32) ValueCell!2365))

(assert (=> mapNonEmpty!9206 (= (arr!4764 _values!649) (store mapRest!9206 mapKey!9206 mapValue!9206))))

(declare-fun res!102910 () Bool)

(assert (=> start!20996 (=> (not res!102910) (not e!137265))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20996 (= res!102910 (validMask!0 mask!1149))))

(assert (=> start!20996 e!137265))

(declare-fun e!137267 () Bool)

(declare-fun array_inv!3145 (array!10036) Bool)

(assert (=> start!20996 (and (array_inv!3145 _values!649) e!137267)))

(assert (=> start!20996 true))

(assert (=> start!20996 tp_is_empty!5417))

(declare-fun array_inv!3146 (array!10034) Bool)

(assert (=> start!20996 (array_inv!3146 _keys!825)))

(assert (=> start!20996 tp!19717))

(declare-fun b!210815 () Bool)

(declare-fun res!102906 () Bool)

(assert (=> b!210815 (=> (not res!102906) (not e!137265))))

(assert (=> b!210815 (= res!102906 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5088 _keys!825))))))

(declare-fun b!210816 () Bool)

(declare-fun res!102912 () Bool)

(assert (=> b!210816 (=> (not res!102912) (not e!137265))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!210816 (= res!102912 (validKeyInArray!0 k!843))))

(declare-fun b!210817 () Bool)

(assert (=> b!210817 (= e!137267 (and e!137264 mapRes!9206))))

(declare-fun condMapEmpty!9206 () Bool)

(declare-fun mapDefault!9206 () ValueCell!2365)

