; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78000 () Bool)

(assert start!78000)

(declare-fun b_free!16515 () Bool)

(declare-fun b_next!16515 () Bool)

(assert (=> start!78000 (= b_free!16515 (not b_next!16515))))

(declare-fun tp!57814 () Bool)

(declare-fun b_and!27103 () Bool)

(assert (=> start!78000 (= tp!57814 b_and!27103)))

(declare-fun b!910145 () Bool)

(declare-fun e!510323 () Bool)

(declare-fun tp_is_empty!18933 () Bool)

(assert (=> b!910145 (= e!510323 tp_is_empty!18933)))

(declare-fun mapIsEmpty!30118 () Bool)

(declare-fun mapRes!30118 () Bool)

(assert (=> mapIsEmpty!30118 mapRes!30118))

(declare-fun res!614302 () Bool)

(declare-fun e!510325 () Bool)

(assert (=> start!78000 (=> (not res!614302) (not e!510325))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78000 (= res!614302 (validMask!0 mask!1756))))

(assert (=> start!78000 e!510325))

(declare-datatypes ((V!30209 0))(
  ( (V!30210 (val!9517 Int)) )
))
(declare-datatypes ((ValueCell!8985 0))(
  ( (ValueCellFull!8985 (v!12025 V!30209)) (EmptyCell!8985) )
))
(declare-datatypes ((array!53880 0))(
  ( (array!53881 (arr!25893 (Array (_ BitVec 32) ValueCell!8985)) (size!26353 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53880)

(declare-fun e!510324 () Bool)

(declare-fun array_inv!20228 (array!53880) Bool)

(assert (=> start!78000 (and (array_inv!20228 _values!1152) e!510324)))

(assert (=> start!78000 tp!57814))

(assert (=> start!78000 true))

(assert (=> start!78000 tp_is_empty!18933))

(declare-datatypes ((array!53882 0))(
  ( (array!53883 (arr!25894 (Array (_ BitVec 32) (_ BitVec 64))) (size!26354 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53882)

(declare-fun array_inv!20229 (array!53882) Bool)

(assert (=> start!78000 (array_inv!20229 _keys!1386)))

(declare-fun b!910146 () Bool)

(declare-fun res!614303 () Bool)

(assert (=> b!910146 (=> (not res!614303) (not e!510325))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!910146 (= res!614303 (and (= (size!26353 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26354 _keys!1386) (size!26353 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!910147 () Bool)

(declare-fun res!614305 () Bool)

(assert (=> b!910147 (=> (not res!614305) (not e!510325))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53882 (_ BitVec 32)) Bool)

(assert (=> b!910147 (= res!614305 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!910148 () Bool)

(declare-fun e!510326 () Bool)

(assert (=> b!910148 (= e!510326 tp_is_empty!18933)))

(declare-fun mapNonEmpty!30118 () Bool)

(declare-fun tp!57813 () Bool)

(assert (=> mapNonEmpty!30118 (= mapRes!30118 (and tp!57813 e!510323))))

(declare-fun mapRest!30118 () (Array (_ BitVec 32) ValueCell!8985))

(declare-fun mapValue!30118 () ValueCell!8985)

(declare-fun mapKey!30118 () (_ BitVec 32))

(assert (=> mapNonEmpty!30118 (= (arr!25893 _values!1152) (store mapRest!30118 mapKey!30118 mapValue!30118))))

(declare-fun b!910149 () Bool)

(assert (=> b!910149 (= e!510325 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30209)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30209)

(declare-fun lt!410122 () Bool)

(declare-datatypes ((tuple2!12438 0))(
  ( (tuple2!12439 (_1!6229 (_ BitVec 64)) (_2!6229 V!30209)) )
))
(declare-datatypes ((List!18291 0))(
  ( (Nil!18288) (Cons!18287 (h!19433 tuple2!12438) (t!25882 List!18291)) )
))
(declare-datatypes ((ListLongMap!11149 0))(
  ( (ListLongMap!11150 (toList!5590 List!18291)) )
))
(declare-fun contains!4598 (ListLongMap!11149 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2820 (array!53882 array!53880 (_ BitVec 32) (_ BitVec 32) V!30209 V!30209 (_ BitVec 32) Int) ListLongMap!11149)

(assert (=> b!910149 (= lt!410122 (contains!4598 (getCurrentListMap!2820 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!910150 () Bool)

(assert (=> b!910150 (= e!510324 (and e!510326 mapRes!30118))))

(declare-fun condMapEmpty!30118 () Bool)

(declare-fun mapDefault!30118 () ValueCell!8985)

(assert (=> b!910150 (= condMapEmpty!30118 (= (arr!25893 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8985)) mapDefault!30118)))))

(declare-fun b!910151 () Bool)

(declare-fun res!614304 () Bool)

(assert (=> b!910151 (=> (not res!614304) (not e!510325))))

(declare-datatypes ((List!18292 0))(
  ( (Nil!18289) (Cons!18288 (h!19434 (_ BitVec 64)) (t!25883 List!18292)) )
))
(declare-fun arrayNoDuplicates!0 (array!53882 (_ BitVec 32) List!18292) Bool)

(assert (=> b!910151 (= res!614304 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18289))))

(assert (= (and start!78000 res!614302) b!910146))

(assert (= (and b!910146 res!614303) b!910147))

(assert (= (and b!910147 res!614305) b!910151))

(assert (= (and b!910151 res!614304) b!910149))

(assert (= (and b!910150 condMapEmpty!30118) mapIsEmpty!30118))

(assert (= (and b!910150 (not condMapEmpty!30118)) mapNonEmpty!30118))

(get-info :version)

(assert (= (and mapNonEmpty!30118 ((_ is ValueCellFull!8985) mapValue!30118)) b!910145))

(assert (= (and b!910150 ((_ is ValueCellFull!8985) mapDefault!30118)) b!910148))

(assert (= start!78000 b!910150))

(declare-fun m!845289 () Bool)

(assert (=> b!910151 m!845289))

(declare-fun m!845291 () Bool)

(assert (=> mapNonEmpty!30118 m!845291))

(declare-fun m!845293 () Bool)

(assert (=> start!78000 m!845293))

(declare-fun m!845295 () Bool)

(assert (=> start!78000 m!845295))

(declare-fun m!845297 () Bool)

(assert (=> start!78000 m!845297))

(declare-fun m!845299 () Bool)

(assert (=> b!910147 m!845299))

(declare-fun m!845301 () Bool)

(assert (=> b!910149 m!845301))

(assert (=> b!910149 m!845301))

(declare-fun m!845303 () Bool)

(assert (=> b!910149 m!845303))

(check-sat (not b!910147) (not b_next!16515) (not b!910151) (not b!910149) (not mapNonEmpty!30118) tp_is_empty!18933 (not start!78000) b_and!27103)
(check-sat b_and!27103 (not b_next!16515))
