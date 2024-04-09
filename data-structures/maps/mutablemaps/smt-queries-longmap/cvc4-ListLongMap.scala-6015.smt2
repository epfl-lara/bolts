; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77990 () Bool)

(assert start!77990)

(declare-fun b_free!16505 () Bool)

(declare-fun b_next!16505 () Bool)

(assert (=> start!77990 (= b_free!16505 (not b_next!16505))))

(declare-fun tp!57783 () Bool)

(declare-fun b_and!27093 () Bool)

(assert (=> start!77990 (= tp!57783 b_and!27093)))

(declare-fun b!910040 () Bool)

(declare-fun e!510250 () Bool)

(assert (=> b!910040 (= e!510250 false)))

(declare-datatypes ((V!30195 0))(
  ( (V!30196 (val!9512 Int)) )
))
(declare-datatypes ((ValueCell!8980 0))(
  ( (ValueCellFull!8980 (v!12020 V!30195)) (EmptyCell!8980) )
))
(declare-datatypes ((array!53860 0))(
  ( (array!53861 (arr!25883 (Array (_ BitVec 32) ValueCell!8980)) (size!26343 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53860)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30195)

(declare-datatypes ((array!53862 0))(
  ( (array!53863 (arr!25884 (Array (_ BitVec 32) (_ BitVec 64))) (size!26344 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53862)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun lt!410107 () Bool)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30195)

(declare-datatypes ((tuple2!12434 0))(
  ( (tuple2!12435 (_1!6227 (_ BitVec 64)) (_2!6227 V!30195)) )
))
(declare-datatypes ((List!18285 0))(
  ( (Nil!18282) (Cons!18281 (h!19427 tuple2!12434) (t!25876 List!18285)) )
))
(declare-datatypes ((ListLongMap!11145 0))(
  ( (ListLongMap!11146 (toList!5588 List!18285)) )
))
(declare-fun contains!4596 (ListLongMap!11145 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2818 (array!53862 array!53860 (_ BitVec 32) (_ BitVec 32) V!30195 V!30195 (_ BitVec 32) Int) ListLongMap!11145)

(assert (=> b!910040 (= lt!410107 (contains!4596 (getCurrentListMap!2818 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun res!614245 () Bool)

(assert (=> start!77990 (=> (not res!614245) (not e!510250))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77990 (= res!614245 (validMask!0 mask!1756))))

(assert (=> start!77990 e!510250))

(declare-fun e!510251 () Bool)

(declare-fun array_inv!20222 (array!53860) Bool)

(assert (=> start!77990 (and (array_inv!20222 _values!1152) e!510251)))

(assert (=> start!77990 tp!57783))

(assert (=> start!77990 true))

(declare-fun tp_is_empty!18923 () Bool)

(assert (=> start!77990 tp_is_empty!18923))

(declare-fun array_inv!20223 (array!53862) Bool)

(assert (=> start!77990 (array_inv!20223 _keys!1386)))

(declare-fun b!910041 () Bool)

(declare-fun res!614244 () Bool)

(assert (=> b!910041 (=> (not res!614244) (not e!510250))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53862 (_ BitVec 32)) Bool)

(assert (=> b!910041 (= res!614244 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!910042 () Bool)

(declare-fun e!510247 () Bool)

(assert (=> b!910042 (= e!510247 tp_is_empty!18923)))

(declare-fun mapIsEmpty!30103 () Bool)

(declare-fun mapRes!30103 () Bool)

(assert (=> mapIsEmpty!30103 mapRes!30103))

(declare-fun mapNonEmpty!30103 () Bool)

(declare-fun tp!57784 () Bool)

(declare-fun e!510248 () Bool)

(assert (=> mapNonEmpty!30103 (= mapRes!30103 (and tp!57784 e!510248))))

(declare-fun mapKey!30103 () (_ BitVec 32))

(declare-fun mapValue!30103 () ValueCell!8980)

(declare-fun mapRest!30103 () (Array (_ BitVec 32) ValueCell!8980))

(assert (=> mapNonEmpty!30103 (= (arr!25883 _values!1152) (store mapRest!30103 mapKey!30103 mapValue!30103))))

(declare-fun b!910043 () Bool)

(declare-fun res!614243 () Bool)

(assert (=> b!910043 (=> (not res!614243) (not e!510250))))

(declare-datatypes ((List!18286 0))(
  ( (Nil!18283) (Cons!18282 (h!19428 (_ BitVec 64)) (t!25877 List!18286)) )
))
(declare-fun arrayNoDuplicates!0 (array!53862 (_ BitVec 32) List!18286) Bool)

(assert (=> b!910043 (= res!614243 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18283))))

(declare-fun b!910044 () Bool)

(declare-fun res!614242 () Bool)

(assert (=> b!910044 (=> (not res!614242) (not e!510250))))

(assert (=> b!910044 (= res!614242 (and (= (size!26343 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26344 _keys!1386) (size!26343 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!910045 () Bool)

(assert (=> b!910045 (= e!510251 (and e!510247 mapRes!30103))))

(declare-fun condMapEmpty!30103 () Bool)

(declare-fun mapDefault!30103 () ValueCell!8980)

