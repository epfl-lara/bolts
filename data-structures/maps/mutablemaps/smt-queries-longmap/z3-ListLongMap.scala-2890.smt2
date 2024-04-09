; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41492 () Bool)

(assert start!41492)

(declare-fun b_free!11151 () Bool)

(declare-fun b_next!11151 () Bool)

(assert (=> start!41492 (= b_free!11151 (not b_next!11151))))

(declare-fun tp!39451 () Bool)

(declare-fun b_and!19509 () Bool)

(assert (=> start!41492 (= tp!39451 b_and!19509)))

(declare-fun mapIsEmpty!20545 () Bool)

(declare-fun mapRes!20545 () Bool)

(assert (=> mapIsEmpty!20545 mapRes!20545))

(declare-fun b!463237 () Bool)

(declare-fun e!270471 () Bool)

(declare-fun tp_is_empty!12579 () Bool)

(assert (=> b!463237 (= e!270471 tp_is_empty!12579)))

(declare-fun mapNonEmpty!20545 () Bool)

(declare-fun tp!39450 () Bool)

(assert (=> mapNonEmpty!20545 (= mapRes!20545 (and tp!39450 e!270471))))

(declare-datatypes ((V!17877 0))(
  ( (V!17878 (val!6334 Int)) )
))
(declare-datatypes ((ValueCell!5946 0))(
  ( (ValueCellFull!5946 (v!8617 V!17877)) (EmptyCell!5946) )
))
(declare-fun mapRest!20545 () (Array (_ BitVec 32) ValueCell!5946))

(declare-fun mapValue!20545 () ValueCell!5946)

(declare-datatypes ((array!28919 0))(
  ( (array!28920 (arr!13888 (Array (_ BitVec 32) ValueCell!5946)) (size!14240 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28919)

(declare-fun mapKey!20545 () (_ BitVec 32))

(assert (=> mapNonEmpty!20545 (= (arr!13888 _values!833) (store mapRest!20545 mapKey!20545 mapValue!20545))))

(declare-fun res!277055 () Bool)

(declare-fun e!270472 () Bool)

(assert (=> start!41492 (=> (not res!277055) (not e!270472))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41492 (= res!277055 (validMask!0 mask!1365))))

(assert (=> start!41492 e!270472))

(assert (=> start!41492 tp_is_empty!12579))

(assert (=> start!41492 tp!39451))

(assert (=> start!41492 true))

(declare-datatypes ((array!28921 0))(
  ( (array!28922 (arr!13889 (Array (_ BitVec 32) (_ BitVec 64))) (size!14241 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28921)

(declare-fun array_inv!10020 (array!28921) Bool)

(assert (=> start!41492 (array_inv!10020 _keys!1025)))

(declare-fun e!270474 () Bool)

(declare-fun array_inv!10021 (array!28919) Bool)

(assert (=> start!41492 (and (array_inv!10021 _values!833) e!270474)))

(declare-fun b!463238 () Bool)

(declare-fun res!277053 () Bool)

(assert (=> b!463238 (=> (not res!277053) (not e!270472))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28921 (_ BitVec 32)) Bool)

(assert (=> b!463238 (= res!277053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!463239 () Bool)

(declare-fun e!270473 () Bool)

(assert (=> b!463239 (= e!270473 tp_is_empty!12579)))

(declare-fun b!463240 () Bool)

(assert (=> b!463240 (= e!270474 (and e!270473 mapRes!20545))))

(declare-fun condMapEmpty!20545 () Bool)

(declare-fun mapDefault!20545 () ValueCell!5946)

(assert (=> b!463240 (= condMapEmpty!20545 (= (arr!13888 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5946)) mapDefault!20545)))))

(declare-fun b!463241 () Bool)

(assert (=> b!463241 (= e!270472 false)))

(declare-fun zeroValue!794 () V!17877)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8274 0))(
  ( (tuple2!8275 (_1!4147 (_ BitVec 64)) (_2!4147 V!17877)) )
))
(declare-datatypes ((List!8399 0))(
  ( (Nil!8396) (Cons!8395 (h!9251 tuple2!8274) (t!14353 List!8399)) )
))
(declare-datatypes ((ListLongMap!7201 0))(
  ( (ListLongMap!7202 (toList!3616 List!8399)) )
))
(declare-fun lt!209339 () ListLongMap!7201)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!17877)

(declare-fun getCurrentListMapNoExtraKeys!1784 (array!28921 array!28919 (_ BitVec 32) (_ BitVec 32) V!17877 V!17877 (_ BitVec 32) Int) ListLongMap!7201)

(assert (=> b!463241 (= lt!209339 (getCurrentListMapNoExtraKeys!1784 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!209340 () ListLongMap!7201)

(declare-fun minValueBefore!38 () V!17877)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!463241 (= lt!209340 (getCurrentListMapNoExtraKeys!1784 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!463242 () Bool)

(declare-fun res!277054 () Bool)

(assert (=> b!463242 (=> (not res!277054) (not e!270472))))

(assert (=> b!463242 (= res!277054 (and (= (size!14240 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14241 _keys!1025) (size!14240 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!463243 () Bool)

(declare-fun res!277052 () Bool)

(assert (=> b!463243 (=> (not res!277052) (not e!270472))))

(declare-datatypes ((List!8400 0))(
  ( (Nil!8397) (Cons!8396 (h!9252 (_ BitVec 64)) (t!14354 List!8400)) )
))
(declare-fun arrayNoDuplicates!0 (array!28921 (_ BitVec 32) List!8400) Bool)

(assert (=> b!463243 (= res!277052 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8397))))

(assert (= (and start!41492 res!277055) b!463242))

(assert (= (and b!463242 res!277054) b!463238))

(assert (= (and b!463238 res!277053) b!463243))

(assert (= (and b!463243 res!277052) b!463241))

(assert (= (and b!463240 condMapEmpty!20545) mapIsEmpty!20545))

(assert (= (and b!463240 (not condMapEmpty!20545)) mapNonEmpty!20545))

(get-info :version)

(assert (= (and mapNonEmpty!20545 ((_ is ValueCellFull!5946) mapValue!20545)) b!463237))

(assert (= (and b!463240 ((_ is ValueCellFull!5946) mapDefault!20545)) b!463239))

(assert (= start!41492 b!463240))

(declare-fun m!445865 () Bool)

(assert (=> mapNonEmpty!20545 m!445865))

(declare-fun m!445867 () Bool)

(assert (=> b!463241 m!445867))

(declare-fun m!445869 () Bool)

(assert (=> b!463241 m!445869))

(declare-fun m!445871 () Bool)

(assert (=> start!41492 m!445871))

(declare-fun m!445873 () Bool)

(assert (=> start!41492 m!445873))

(declare-fun m!445875 () Bool)

(assert (=> start!41492 m!445875))

(declare-fun m!445877 () Bool)

(assert (=> b!463238 m!445877))

(declare-fun m!445879 () Bool)

(assert (=> b!463243 m!445879))

(check-sat (not b!463241) tp_is_empty!12579 b_and!19509 (not start!41492) (not b!463238) (not mapNonEmpty!20545) (not b!463243) (not b_next!11151))
(check-sat b_and!19509 (not b_next!11151))
