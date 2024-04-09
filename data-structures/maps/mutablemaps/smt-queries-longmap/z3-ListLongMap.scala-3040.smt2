; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42654 () Bool)

(assert start!42654)

(declare-fun b_free!12051 () Bool)

(declare-fun b_next!12051 () Bool)

(assert (=> start!42654 (= b_free!12051 (not b_next!12051))))

(declare-fun tp!42199 () Bool)

(declare-fun b_and!20569 () Bool)

(assert (=> start!42654 (= tp!42199 b_and!20569)))

(declare-fun b!475503 () Bool)

(declare-fun e!279236 () Bool)

(declare-fun e!279239 () Bool)

(declare-fun mapRes!21943 () Bool)

(assert (=> b!475503 (= e!279236 (and e!279239 mapRes!21943))))

(declare-fun condMapEmpty!21943 () Bool)

(declare-datatypes ((V!19077 0))(
  ( (V!19078 (val!6784 Int)) )
))
(declare-datatypes ((ValueCell!6396 0))(
  ( (ValueCellFull!6396 (v!9074 V!19077)) (EmptyCell!6396) )
))
(declare-datatypes ((array!30669 0))(
  ( (array!30670 (arr!14747 (Array (_ BitVec 32) ValueCell!6396)) (size!15099 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30669)

(declare-fun mapDefault!21943 () ValueCell!6396)

(assert (=> b!475503 (= condMapEmpty!21943 (= (arr!14747 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6396)) mapDefault!21943)))))

(declare-fun b!475504 () Bool)

(declare-fun e!279237 () Bool)

(assert (=> b!475504 (= e!279237 true)))

(declare-fun zeroValue!794 () V!19077)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8944 0))(
  ( (tuple2!8945 (_1!4482 (_ BitVec 64)) (_2!4482 V!19077)) )
))
(declare-datatypes ((List!9055 0))(
  ( (Nil!9052) (Cons!9051 (h!9907 tuple2!8944) (t!15041 List!9055)) )
))
(declare-datatypes ((ListLongMap!7871 0))(
  ( (ListLongMap!7872 (toList!3951 List!9055)) )
))
(declare-fun lt!216639 () ListLongMap!7871)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30671 0))(
  ( (array!30672 (arr!14748 (Array (_ BitVec 32) (_ BitVec 64))) (size!15100 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30671)

(declare-fun minValueAfter!38 () V!19077)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2266 (array!30671 array!30669 (_ BitVec 32) (_ BitVec 32) V!19077 V!19077 (_ BitVec 32) Int) ListLongMap!7871)

(assert (=> b!475504 (= lt!216639 (getCurrentListMap!2266 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!19077)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun lt!216638 () ListLongMap!7871)

(declare-fun +!1730 (ListLongMap!7871 tuple2!8944) ListLongMap!7871)

(assert (=> b!475504 (= lt!216638 (+!1730 (getCurrentListMap!2266 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8945 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun res!283996 () Bool)

(declare-fun e!279241 () Bool)

(assert (=> start!42654 (=> (not res!283996) (not e!279241))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42654 (= res!283996 (validMask!0 mask!1365))))

(assert (=> start!42654 e!279241))

(declare-fun tp_is_empty!13479 () Bool)

(assert (=> start!42654 tp_is_empty!13479))

(assert (=> start!42654 tp!42199))

(assert (=> start!42654 true))

(declare-fun array_inv!10626 (array!30671) Bool)

(assert (=> start!42654 (array_inv!10626 _keys!1025)))

(declare-fun array_inv!10627 (array!30669) Bool)

(assert (=> start!42654 (and (array_inv!10627 _values!833) e!279236)))

(declare-fun b!475505 () Bool)

(declare-fun res!283999 () Bool)

(assert (=> b!475505 (=> (not res!283999) (not e!279241))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30671 (_ BitVec 32)) Bool)

(assert (=> b!475505 (= res!283999 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!475506 () Bool)

(assert (=> b!475506 (= e!279241 (not e!279237))))

(declare-fun res!283997 () Bool)

(assert (=> b!475506 (=> res!283997 e!279237)))

(assert (=> b!475506 (= res!283997 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!216637 () ListLongMap!7871)

(declare-fun lt!216635 () ListLongMap!7871)

(assert (=> b!475506 (= lt!216637 lt!216635)))

(declare-datatypes ((Unit!13981 0))(
  ( (Unit!13982) )
))
(declare-fun lt!216636 () Unit!13981)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!275 (array!30671 array!30669 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!19077 V!19077 V!19077 V!19077 (_ BitVec 32) Int) Unit!13981)

(assert (=> b!475506 (= lt!216636 (lemmaNoChangeToArrayThenSameMapNoExtras!275 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2104 (array!30671 array!30669 (_ BitVec 32) (_ BitVec 32) V!19077 V!19077 (_ BitVec 32) Int) ListLongMap!7871)

(assert (=> b!475506 (= lt!216635 (getCurrentListMapNoExtraKeys!2104 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!475506 (= lt!216637 (getCurrentListMapNoExtraKeys!2104 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!475507 () Bool)

(declare-fun res!283998 () Bool)

(assert (=> b!475507 (=> (not res!283998) (not e!279241))))

(assert (=> b!475507 (= res!283998 (and (= (size!15099 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15100 _keys!1025) (size!15099 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!21943 () Bool)

(declare-fun tp!42198 () Bool)

(declare-fun e!279240 () Bool)

(assert (=> mapNonEmpty!21943 (= mapRes!21943 (and tp!42198 e!279240))))

(declare-fun mapValue!21943 () ValueCell!6396)

(declare-fun mapKey!21943 () (_ BitVec 32))

(declare-fun mapRest!21943 () (Array (_ BitVec 32) ValueCell!6396))

(assert (=> mapNonEmpty!21943 (= (arr!14747 _values!833) (store mapRest!21943 mapKey!21943 mapValue!21943))))

(declare-fun b!475508 () Bool)

(assert (=> b!475508 (= e!279239 tp_is_empty!13479)))

(declare-fun b!475509 () Bool)

(declare-fun res!284000 () Bool)

(assert (=> b!475509 (=> (not res!284000) (not e!279241))))

(declare-datatypes ((List!9056 0))(
  ( (Nil!9053) (Cons!9052 (h!9908 (_ BitVec 64)) (t!15042 List!9056)) )
))
(declare-fun arrayNoDuplicates!0 (array!30671 (_ BitVec 32) List!9056) Bool)

(assert (=> b!475509 (= res!284000 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9053))))

(declare-fun b!475510 () Bool)

(assert (=> b!475510 (= e!279240 tp_is_empty!13479)))

(declare-fun mapIsEmpty!21943 () Bool)

(assert (=> mapIsEmpty!21943 mapRes!21943))

(assert (= (and start!42654 res!283996) b!475507))

(assert (= (and b!475507 res!283998) b!475505))

(assert (= (and b!475505 res!283999) b!475509))

(assert (= (and b!475509 res!284000) b!475506))

(assert (= (and b!475506 (not res!283997)) b!475504))

(assert (= (and b!475503 condMapEmpty!21943) mapIsEmpty!21943))

(assert (= (and b!475503 (not condMapEmpty!21943)) mapNonEmpty!21943))

(get-info :version)

(assert (= (and mapNonEmpty!21943 ((_ is ValueCellFull!6396) mapValue!21943)) b!475510))

(assert (= (and b!475503 ((_ is ValueCellFull!6396) mapDefault!21943)) b!475508))

(assert (= start!42654 b!475503))

(declare-fun m!457713 () Bool)

(assert (=> mapNonEmpty!21943 m!457713))

(declare-fun m!457715 () Bool)

(assert (=> start!42654 m!457715))

(declare-fun m!457717 () Bool)

(assert (=> start!42654 m!457717))

(declare-fun m!457719 () Bool)

(assert (=> start!42654 m!457719))

(declare-fun m!457721 () Bool)

(assert (=> b!475509 m!457721))

(declare-fun m!457723 () Bool)

(assert (=> b!475506 m!457723))

(declare-fun m!457725 () Bool)

(assert (=> b!475506 m!457725))

(declare-fun m!457727 () Bool)

(assert (=> b!475506 m!457727))

(declare-fun m!457729 () Bool)

(assert (=> b!475504 m!457729))

(declare-fun m!457731 () Bool)

(assert (=> b!475504 m!457731))

(assert (=> b!475504 m!457731))

(declare-fun m!457733 () Bool)

(assert (=> b!475504 m!457733))

(declare-fun m!457735 () Bool)

(assert (=> b!475505 m!457735))

(check-sat tp_is_empty!13479 (not b_next!12051) (not b!475509) (not b!475506) b_and!20569 (not b!475505) (not mapNonEmpty!21943) (not start!42654) (not b!475504))
(check-sat b_and!20569 (not b_next!12051))
