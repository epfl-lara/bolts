; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41838 () Bool)

(assert start!41838)

(declare-fun b_free!11433 () Bool)

(declare-fun b_next!11433 () Bool)

(assert (=> start!41838 (= b_free!11433 (not b_next!11433))))

(declare-fun tp!40309 () Bool)

(declare-fun b_and!19831 () Bool)

(assert (=> start!41838 (= tp!40309 b_and!19831)))

(declare-fun res!279134 () Bool)

(declare-fun e!273082 () Bool)

(assert (=> start!41838 (=> (not res!279134) (not e!273082))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41838 (= res!279134 (validMask!0 mask!1365))))

(assert (=> start!41838 e!273082))

(declare-fun tp_is_empty!12861 () Bool)

(assert (=> start!41838 tp_is_empty!12861))

(assert (=> start!41838 tp!40309))

(assert (=> start!41838 true))

(declare-datatypes ((array!29459 0))(
  ( (array!29460 (arr!14154 (Array (_ BitVec 32) (_ BitVec 64))) (size!14506 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29459)

(declare-fun array_inv!10202 (array!29459) Bool)

(assert (=> start!41838 (array_inv!10202 _keys!1025)))

(declare-datatypes ((V!18253 0))(
  ( (V!18254 (val!6475 Int)) )
))
(declare-datatypes ((ValueCell!6087 0))(
  ( (ValueCellFull!6087 (v!8760 V!18253)) (EmptyCell!6087) )
))
(declare-datatypes ((array!29461 0))(
  ( (array!29462 (arr!14155 (Array (_ BitVec 32) ValueCell!6087)) (size!14507 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29461)

(declare-fun e!273079 () Bool)

(declare-fun array_inv!10203 (array!29461) Bool)

(assert (=> start!41838 (and (array_inv!10203 _values!833) e!273079)))

(declare-fun b!466898 () Bool)

(declare-fun e!273081 () Bool)

(declare-fun mapRes!20980 () Bool)

(assert (=> b!466898 (= e!273079 (and e!273081 mapRes!20980))))

(declare-fun condMapEmpty!20980 () Bool)

(declare-fun mapDefault!20980 () ValueCell!6087)

(assert (=> b!466898 (= condMapEmpty!20980 (= (arr!14155 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6087)) mapDefault!20980)))))

(declare-fun b!466899 () Bool)

(assert (=> b!466899 (= e!273082 (not true))))

(declare-datatypes ((tuple2!8484 0))(
  ( (tuple2!8485 (_1!4252 (_ BitVec 64)) (_2!4252 V!18253)) )
))
(declare-datatypes ((List!8601 0))(
  ( (Nil!8598) (Cons!8597 (h!9453 tuple2!8484) (t!14563 List!8601)) )
))
(declare-datatypes ((ListLongMap!7411 0))(
  ( (ListLongMap!7412 (toList!3721 List!8601)) )
))
(declare-fun lt!211162 () ListLongMap!7411)

(declare-fun lt!211163 () ListLongMap!7411)

(assert (=> b!466899 (= lt!211162 lt!211163)))

(declare-fun minValueBefore!38 () V!18253)

(declare-fun zeroValue!794 () V!18253)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((Unit!13563 0))(
  ( (Unit!13564) )
))
(declare-fun lt!211164 () Unit!13563)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18253)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!82 (array!29459 array!29461 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18253 V!18253 V!18253 V!18253 (_ BitVec 32) Int) Unit!13563)

(assert (=> b!466899 (= lt!211164 (lemmaNoChangeToArrayThenSameMapNoExtras!82 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1887 (array!29459 array!29461 (_ BitVec 32) (_ BitVec 32) V!18253 V!18253 (_ BitVec 32) Int) ListLongMap!7411)

(assert (=> b!466899 (= lt!211163 (getCurrentListMapNoExtraKeys!1887 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!466899 (= lt!211162 (getCurrentListMapNoExtraKeys!1887 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!466900 () Bool)

(declare-fun res!279135 () Bool)

(assert (=> b!466900 (=> (not res!279135) (not e!273082))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29459 (_ BitVec 32)) Bool)

(assert (=> b!466900 (= res!279135 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!466901 () Bool)

(declare-fun e!273078 () Bool)

(assert (=> b!466901 (= e!273078 tp_is_empty!12861)))

(declare-fun b!466902 () Bool)

(declare-fun res!279133 () Bool)

(assert (=> b!466902 (=> (not res!279133) (not e!273082))))

(assert (=> b!466902 (= res!279133 (and (= (size!14507 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14506 _keys!1025) (size!14507 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!20980 () Bool)

(assert (=> mapIsEmpty!20980 mapRes!20980))

(declare-fun b!466903 () Bool)

(declare-fun res!279132 () Bool)

(assert (=> b!466903 (=> (not res!279132) (not e!273082))))

(declare-datatypes ((List!8602 0))(
  ( (Nil!8599) (Cons!8598 (h!9454 (_ BitVec 64)) (t!14564 List!8602)) )
))
(declare-fun arrayNoDuplicates!0 (array!29459 (_ BitVec 32) List!8602) Bool)

(assert (=> b!466903 (= res!279132 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8599))))

(declare-fun mapNonEmpty!20980 () Bool)

(declare-fun tp!40308 () Bool)

(assert (=> mapNonEmpty!20980 (= mapRes!20980 (and tp!40308 e!273078))))

(declare-fun mapRest!20980 () (Array (_ BitVec 32) ValueCell!6087))

(declare-fun mapKey!20980 () (_ BitVec 32))

(declare-fun mapValue!20980 () ValueCell!6087)

(assert (=> mapNonEmpty!20980 (= (arr!14155 _values!833) (store mapRest!20980 mapKey!20980 mapValue!20980))))

(declare-fun b!466904 () Bool)

(assert (=> b!466904 (= e!273081 tp_is_empty!12861)))

(assert (= (and start!41838 res!279134) b!466902))

(assert (= (and b!466902 res!279133) b!466900))

(assert (= (and b!466900 res!279135) b!466903))

(assert (= (and b!466903 res!279132) b!466899))

(assert (= (and b!466898 condMapEmpty!20980) mapIsEmpty!20980))

(assert (= (and b!466898 (not condMapEmpty!20980)) mapNonEmpty!20980))

(get-info :version)

(assert (= (and mapNonEmpty!20980 ((_ is ValueCellFull!6087) mapValue!20980)) b!466901))

(assert (= (and b!466898 ((_ is ValueCellFull!6087) mapDefault!20980)) b!466904))

(assert (= start!41838 b!466898))

(declare-fun m!449135 () Bool)

(assert (=> b!466900 m!449135))

(declare-fun m!449137 () Bool)

(assert (=> b!466903 m!449137))

(declare-fun m!449139 () Bool)

(assert (=> start!41838 m!449139))

(declare-fun m!449141 () Bool)

(assert (=> start!41838 m!449141))

(declare-fun m!449143 () Bool)

(assert (=> start!41838 m!449143))

(declare-fun m!449145 () Bool)

(assert (=> mapNonEmpty!20980 m!449145))

(declare-fun m!449147 () Bool)

(assert (=> b!466899 m!449147))

(declare-fun m!449149 () Bool)

(assert (=> b!466899 m!449149))

(declare-fun m!449151 () Bool)

(assert (=> b!466899 m!449151))

(check-sat (not mapNonEmpty!20980) (not b!466899) (not start!41838) (not b_next!11433) tp_is_empty!12861 (not b!466903) b_and!19831 (not b!466900))
(check-sat b_and!19831 (not b_next!11433))
