; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77994 () Bool)

(assert start!77994)

(declare-fun b_free!16509 () Bool)

(declare-fun b_next!16509 () Bool)

(assert (=> start!77994 (= b_free!16509 (not b_next!16509))))

(declare-fun tp!57795 () Bool)

(declare-fun b_and!27097 () Bool)

(assert (=> start!77994 (= tp!57795 b_and!27097)))

(declare-fun mapIsEmpty!30109 () Bool)

(declare-fun mapRes!30109 () Bool)

(assert (=> mapIsEmpty!30109 mapRes!30109))

(declare-fun b!910082 () Bool)

(declare-fun e!510280 () Bool)

(declare-fun tp_is_empty!18927 () Bool)

(assert (=> b!910082 (= e!510280 tp_is_empty!18927)))

(declare-fun b!910083 () Bool)

(declare-fun res!614269 () Bool)

(declare-fun e!510278 () Bool)

(assert (=> b!910083 (=> (not res!614269) (not e!510278))))

(declare-datatypes ((V!30201 0))(
  ( (V!30202 (val!9514 Int)) )
))
(declare-datatypes ((ValueCell!8982 0))(
  ( (ValueCellFull!8982 (v!12022 V!30201)) (EmptyCell!8982) )
))
(declare-datatypes ((array!53868 0))(
  ( (array!53869 (arr!25887 (Array (_ BitVec 32) ValueCell!8982)) (size!26347 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53868)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!53870 0))(
  ( (array!53871 (arr!25888 (Array (_ BitVec 32) (_ BitVec 64))) (size!26348 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53870)

(assert (=> b!910083 (= res!614269 (and (= (size!26347 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26348 _keys!1386) (size!26347 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!30109 () Bool)

(declare-fun tp!57796 () Bool)

(declare-fun e!510281 () Bool)

(assert (=> mapNonEmpty!30109 (= mapRes!30109 (and tp!57796 e!510281))))

(declare-fun mapValue!30109 () ValueCell!8982)

(declare-fun mapKey!30109 () (_ BitVec 32))

(declare-fun mapRest!30109 () (Array (_ BitVec 32) ValueCell!8982))

(assert (=> mapNonEmpty!30109 (= (arr!25887 _values!1152) (store mapRest!30109 mapKey!30109 mapValue!30109))))

(declare-fun b!910084 () Bool)

(assert (=> b!910084 (= e!510278 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30201)

(declare-fun lt!410113 () Bool)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30201)

(declare-datatypes ((tuple2!12436 0))(
  ( (tuple2!12437 (_1!6228 (_ BitVec 64)) (_2!6228 V!30201)) )
))
(declare-datatypes ((List!18288 0))(
  ( (Nil!18285) (Cons!18284 (h!19430 tuple2!12436) (t!25879 List!18288)) )
))
(declare-datatypes ((ListLongMap!11147 0))(
  ( (ListLongMap!11148 (toList!5589 List!18288)) )
))
(declare-fun contains!4597 (ListLongMap!11147 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2819 (array!53870 array!53868 (_ BitVec 32) (_ BitVec 32) V!30201 V!30201 (_ BitVec 32) Int) ListLongMap!11147)

(assert (=> b!910084 (= lt!410113 (contains!4597 (getCurrentListMap!2819 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun res!614266 () Bool)

(assert (=> start!77994 (=> (not res!614266) (not e!510278))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77994 (= res!614266 (validMask!0 mask!1756))))

(assert (=> start!77994 e!510278))

(declare-fun e!510277 () Bool)

(declare-fun array_inv!20224 (array!53868) Bool)

(assert (=> start!77994 (and (array_inv!20224 _values!1152) e!510277)))

(assert (=> start!77994 tp!57795))

(assert (=> start!77994 true))

(assert (=> start!77994 tp_is_empty!18927))

(declare-fun array_inv!20225 (array!53870) Bool)

(assert (=> start!77994 (array_inv!20225 _keys!1386)))

(declare-fun b!910085 () Bool)

(declare-fun res!614268 () Bool)

(assert (=> b!910085 (=> (not res!614268) (not e!510278))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53870 (_ BitVec 32)) Bool)

(assert (=> b!910085 (= res!614268 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!910086 () Bool)

(assert (=> b!910086 (= e!510277 (and e!510280 mapRes!30109))))

(declare-fun condMapEmpty!30109 () Bool)

(declare-fun mapDefault!30109 () ValueCell!8982)

(assert (=> b!910086 (= condMapEmpty!30109 (= (arr!25887 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8982)) mapDefault!30109)))))

(declare-fun b!910087 () Bool)

(declare-fun res!614267 () Bool)

(assert (=> b!910087 (=> (not res!614267) (not e!510278))))

(declare-datatypes ((List!18289 0))(
  ( (Nil!18286) (Cons!18285 (h!19431 (_ BitVec 64)) (t!25880 List!18289)) )
))
(declare-fun arrayNoDuplicates!0 (array!53870 (_ BitVec 32) List!18289) Bool)

(assert (=> b!910087 (= res!614267 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18286))))

(declare-fun b!910088 () Bool)

(assert (=> b!910088 (= e!510281 tp_is_empty!18927)))

(assert (= (and start!77994 res!614266) b!910083))

(assert (= (and b!910083 res!614269) b!910085))

(assert (= (and b!910085 res!614268) b!910087))

(assert (= (and b!910087 res!614267) b!910084))

(assert (= (and b!910086 condMapEmpty!30109) mapIsEmpty!30109))

(assert (= (and b!910086 (not condMapEmpty!30109)) mapNonEmpty!30109))

(get-info :version)

(assert (= (and mapNonEmpty!30109 ((_ is ValueCellFull!8982) mapValue!30109)) b!910088))

(assert (= (and b!910086 ((_ is ValueCellFull!8982) mapDefault!30109)) b!910082))

(assert (= start!77994 b!910086))

(declare-fun m!845241 () Bool)

(assert (=> b!910087 m!845241))

(declare-fun m!845243 () Bool)

(assert (=> b!910084 m!845243))

(assert (=> b!910084 m!845243))

(declare-fun m!845245 () Bool)

(assert (=> b!910084 m!845245))

(declare-fun m!845247 () Bool)

(assert (=> b!910085 m!845247))

(declare-fun m!845249 () Bool)

(assert (=> start!77994 m!845249))

(declare-fun m!845251 () Bool)

(assert (=> start!77994 m!845251))

(declare-fun m!845253 () Bool)

(assert (=> start!77994 m!845253))

(declare-fun m!845255 () Bool)

(assert (=> mapNonEmpty!30109 m!845255))

(check-sat (not b!910087) (not start!77994) b_and!27097 (not b!910085) (not b_next!16509) (not b!910084) (not mapNonEmpty!30109) tp_is_empty!18927)
(check-sat b_and!27097 (not b_next!16509))
