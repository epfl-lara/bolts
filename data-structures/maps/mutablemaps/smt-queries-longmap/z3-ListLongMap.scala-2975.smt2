; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42136 () Bool)

(assert start!42136)

(declare-fun b_free!11661 () Bool)

(declare-fun b_next!11661 () Bool)

(assert (=> start!42136 (= b_free!11661 (not b_next!11661))))

(declare-fun tp!41005 () Bool)

(declare-fun b_and!20101 () Bool)

(assert (=> start!42136 (= tp!41005 b_and!20101)))

(declare-fun b!470126 () Bool)

(declare-fun e!275405 () Bool)

(declare-fun e!275408 () Bool)

(declare-fun mapRes!21334 () Bool)

(assert (=> b!470126 (= e!275405 (and e!275408 mapRes!21334))))

(declare-fun condMapEmpty!21334 () Bool)

(declare-datatypes ((V!18557 0))(
  ( (V!18558 (val!6589 Int)) )
))
(declare-datatypes ((ValueCell!6201 0))(
  ( (ValueCellFull!6201 (v!8876 V!18557)) (EmptyCell!6201) )
))
(declare-datatypes ((array!29909 0))(
  ( (array!29910 (arr!14375 (Array (_ BitVec 32) ValueCell!6201)) (size!14727 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29909)

(declare-fun mapDefault!21334 () ValueCell!6201)

(assert (=> b!470126 (= condMapEmpty!21334 (= (arr!14375 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6201)) mapDefault!21334)))))

(declare-fun b!470127 () Bool)

(declare-fun res!280989 () Bool)

(declare-fun e!275406 () Bool)

(assert (=> b!470127 (=> (not res!280989) (not e!275406))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29911 0))(
  ( (array!29912 (arr!14376 (Array (_ BitVec 32) (_ BitVec 64))) (size!14728 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29911)

(assert (=> b!470127 (= res!280989 (and (= (size!14727 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14728 _keys!1025) (size!14727 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!470128 () Bool)

(declare-fun res!280988 () Bool)

(assert (=> b!470128 (=> (not res!280988) (not e!275406))))

(declare-datatypes ((List!8767 0))(
  ( (Nil!8764) (Cons!8763 (h!9619 (_ BitVec 64)) (t!14737 List!8767)) )
))
(declare-fun arrayNoDuplicates!0 (array!29911 (_ BitVec 32) List!8767) Bool)

(assert (=> b!470128 (= res!280988 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8764))))

(declare-fun b!470129 () Bool)

(declare-fun e!275407 () Bool)

(declare-fun tp_is_empty!13089 () Bool)

(assert (=> b!470129 (= e!275407 tp_is_empty!13089)))

(declare-fun mapNonEmpty!21334 () Bool)

(declare-fun tp!41004 () Bool)

(assert (=> mapNonEmpty!21334 (= mapRes!21334 (and tp!41004 e!275407))))

(declare-fun mapRest!21334 () (Array (_ BitVec 32) ValueCell!6201))

(declare-fun mapValue!21334 () ValueCell!6201)

(declare-fun mapKey!21334 () (_ BitVec 32))

(assert (=> mapNonEmpty!21334 (= (arr!14375 _values!833) (store mapRest!21334 mapKey!21334 mapValue!21334))))

(declare-fun res!280987 () Bool)

(assert (=> start!42136 (=> (not res!280987) (not e!275406))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42136 (= res!280987 (validMask!0 mask!1365))))

(assert (=> start!42136 e!275406))

(assert (=> start!42136 tp_is_empty!13089))

(assert (=> start!42136 tp!41005))

(assert (=> start!42136 true))

(declare-fun array_inv!10368 (array!29911) Bool)

(assert (=> start!42136 (array_inv!10368 _keys!1025)))

(declare-fun array_inv!10369 (array!29909) Bool)

(assert (=> start!42136 (and (array_inv!10369 _values!833) e!275405)))

(declare-fun mapIsEmpty!21334 () Bool)

(assert (=> mapIsEmpty!21334 mapRes!21334))

(declare-fun b!470130 () Bool)

(assert (=> b!470130 (= e!275408 tp_is_empty!13089)))

(declare-fun b!470131 () Bool)

(assert (=> b!470131 (= e!275406 (not true))))

(declare-datatypes ((tuple2!8646 0))(
  ( (tuple2!8647 (_1!4333 (_ BitVec 64)) (_2!4333 V!18557)) )
))
(declare-datatypes ((List!8768 0))(
  ( (Nil!8765) (Cons!8764 (h!9620 tuple2!8646) (t!14738 List!8768)) )
))
(declare-datatypes ((ListLongMap!7573 0))(
  ( (ListLongMap!7574 (toList!3802 List!8768)) )
))
(declare-fun lt!213367 () ListLongMap!7573)

(declare-fun lt!213366 () ListLongMap!7573)

(assert (=> b!470131 (= lt!213367 lt!213366)))

(declare-fun minValueBefore!38 () V!18557)

(declare-fun zeroValue!794 () V!18557)

(declare-datatypes ((Unit!13730 0))(
  ( (Unit!13731) )
))
(declare-fun lt!213365 () Unit!13730)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18557)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!159 (array!29911 array!29909 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18557 V!18557 V!18557 V!18557 (_ BitVec 32) Int) Unit!13730)

(assert (=> b!470131 (= lt!213365 (lemmaNoChangeToArrayThenSameMapNoExtras!159 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1964 (array!29911 array!29909 (_ BitVec 32) (_ BitVec 32) V!18557 V!18557 (_ BitVec 32) Int) ListLongMap!7573)

(assert (=> b!470131 (= lt!213366 (getCurrentListMapNoExtraKeys!1964 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!470131 (= lt!213367 (getCurrentListMapNoExtraKeys!1964 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!470132 () Bool)

(declare-fun res!280986 () Bool)

(assert (=> b!470132 (=> (not res!280986) (not e!275406))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29911 (_ BitVec 32)) Bool)

(assert (=> b!470132 (= res!280986 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(assert (= (and start!42136 res!280987) b!470127))

(assert (= (and b!470127 res!280989) b!470132))

(assert (= (and b!470132 res!280986) b!470128))

(assert (= (and b!470128 res!280988) b!470131))

(assert (= (and b!470126 condMapEmpty!21334) mapIsEmpty!21334))

(assert (= (and b!470126 (not condMapEmpty!21334)) mapNonEmpty!21334))

(get-info :version)

(assert (= (and mapNonEmpty!21334 ((_ is ValueCellFull!6201) mapValue!21334)) b!470129))

(assert (= (and b!470126 ((_ is ValueCellFull!6201) mapDefault!21334)) b!470130))

(assert (= start!42136 b!470126))

(declare-fun m!452467 () Bool)

(assert (=> mapNonEmpty!21334 m!452467))

(declare-fun m!452469 () Bool)

(assert (=> b!470131 m!452469))

(declare-fun m!452471 () Bool)

(assert (=> b!470131 m!452471))

(declare-fun m!452473 () Bool)

(assert (=> b!470131 m!452473))

(declare-fun m!452475 () Bool)

(assert (=> start!42136 m!452475))

(declare-fun m!452477 () Bool)

(assert (=> start!42136 m!452477))

(declare-fun m!452479 () Bool)

(assert (=> start!42136 m!452479))

(declare-fun m!452481 () Bool)

(assert (=> b!470132 m!452481))

(declare-fun m!452483 () Bool)

(assert (=> b!470128 m!452483))

(check-sat (not b!470128) (not b_next!11661) b_and!20101 (not b!470131) (not mapNonEmpty!21334) tp_is_empty!13089 (not start!42136) (not b!470132))
(check-sat b_and!20101 (not b_next!11661))
