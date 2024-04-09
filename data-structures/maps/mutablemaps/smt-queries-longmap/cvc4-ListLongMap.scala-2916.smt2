; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41664 () Bool)

(assert start!41664)

(declare-fun b_free!11309 () Bool)

(declare-fun b_next!11309 () Bool)

(assert (=> start!41664 (= b_free!11309 (not b_next!11309))))

(declare-fun tp!39928 () Bool)

(declare-fun b_and!19675 () Bool)

(assert (=> start!41664 (= tp!39928 b_and!19675)))

(declare-fun b!464981 () Bool)

(declare-fun res!278031 () Bool)

(declare-fun e!271715 () Bool)

(assert (=> b!464981 (=> (not res!278031) (not e!271715))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29215 0))(
  ( (array!29216 (arr!14035 (Array (_ BitVec 32) (_ BitVec 64))) (size!14387 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29215)

(declare-datatypes ((V!18087 0))(
  ( (V!18088 (val!6413 Int)) )
))
(declare-datatypes ((ValueCell!6025 0))(
  ( (ValueCellFull!6025 (v!8696 V!18087)) (EmptyCell!6025) )
))
(declare-datatypes ((array!29217 0))(
  ( (array!29218 (arr!14036 (Array (_ BitVec 32) ValueCell!6025)) (size!14388 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29217)

(assert (=> b!464981 (= res!278031 (and (= (size!14388 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14387 _keys!1025) (size!14388 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!464982 () Bool)

(declare-fun res!278033 () Bool)

(assert (=> b!464982 (=> (not res!278033) (not e!271715))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29215 (_ BitVec 32)) Bool)

(assert (=> b!464982 (= res!278033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!20785 () Bool)

(declare-fun mapRes!20785 () Bool)

(declare-fun tp!39927 () Bool)

(declare-fun e!271711 () Bool)

(assert (=> mapNonEmpty!20785 (= mapRes!20785 (and tp!39927 e!271711))))

(declare-fun mapRest!20785 () (Array (_ BitVec 32) ValueCell!6025))

(declare-fun mapValue!20785 () ValueCell!6025)

(declare-fun mapKey!20785 () (_ BitVec 32))

(assert (=> mapNonEmpty!20785 (= (arr!14036 _values!833) (store mapRest!20785 mapKey!20785 mapValue!20785))))

(declare-fun b!464983 () Bool)

(declare-fun e!271712 () Bool)

(declare-fun tp_is_empty!12737 () Bool)

(assert (=> b!464983 (= e!271712 tp_is_empty!12737)))

(declare-fun res!278032 () Bool)

(assert (=> start!41664 (=> (not res!278032) (not e!271715))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41664 (= res!278032 (validMask!0 mask!1365))))

(assert (=> start!41664 e!271715))

(assert (=> start!41664 tp_is_empty!12737))

(assert (=> start!41664 tp!39928))

(assert (=> start!41664 true))

(declare-fun array_inv!10120 (array!29215) Bool)

(assert (=> start!41664 (array_inv!10120 _keys!1025)))

(declare-fun e!271713 () Bool)

(declare-fun array_inv!10121 (array!29217) Bool)

(assert (=> start!41664 (and (array_inv!10121 _values!833) e!271713)))

(declare-fun b!464984 () Bool)

(assert (=> b!464984 (= e!271715 (not true))))

(declare-datatypes ((tuple2!8384 0))(
  ( (tuple2!8385 (_1!4202 (_ BitVec 64)) (_2!4202 V!18087)) )
))
(declare-datatypes ((List!8508 0))(
  ( (Nil!8505) (Cons!8504 (h!9360 tuple2!8384) (t!14464 List!8508)) )
))
(declare-datatypes ((ListLongMap!7311 0))(
  ( (ListLongMap!7312 (toList!3671 List!8508)) )
))
(declare-fun lt!209996 () ListLongMap!7311)

(declare-fun lt!209997 () ListLongMap!7311)

(assert (=> b!464984 (= lt!209996 lt!209997)))

(declare-datatypes ((Unit!13463 0))(
  ( (Unit!13464) )
))
(declare-fun lt!209998 () Unit!13463)

(declare-fun minValueBefore!38 () V!18087)

(declare-fun zeroValue!794 () V!18087)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18087)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!34 (array!29215 array!29217 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18087 V!18087 V!18087 V!18087 (_ BitVec 32) Int) Unit!13463)

(assert (=> b!464984 (= lt!209998 (lemmaNoChangeToArrayThenSameMapNoExtras!34 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1839 (array!29215 array!29217 (_ BitVec 32) (_ BitVec 32) V!18087 V!18087 (_ BitVec 32) Int) ListLongMap!7311)

(assert (=> b!464984 (= lt!209997 (getCurrentListMapNoExtraKeys!1839 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!464984 (= lt!209996 (getCurrentListMapNoExtraKeys!1839 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!20785 () Bool)

(assert (=> mapIsEmpty!20785 mapRes!20785))

(declare-fun b!464985 () Bool)

(declare-fun res!278034 () Bool)

(assert (=> b!464985 (=> (not res!278034) (not e!271715))))

(declare-datatypes ((List!8509 0))(
  ( (Nil!8506) (Cons!8505 (h!9361 (_ BitVec 64)) (t!14465 List!8509)) )
))
(declare-fun arrayNoDuplicates!0 (array!29215 (_ BitVec 32) List!8509) Bool)

(assert (=> b!464985 (= res!278034 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8506))))

(declare-fun b!464986 () Bool)

(assert (=> b!464986 (= e!271711 tp_is_empty!12737)))

(declare-fun b!464987 () Bool)

(assert (=> b!464987 (= e!271713 (and e!271712 mapRes!20785))))

(declare-fun condMapEmpty!20785 () Bool)

(declare-fun mapDefault!20785 () ValueCell!6025)

