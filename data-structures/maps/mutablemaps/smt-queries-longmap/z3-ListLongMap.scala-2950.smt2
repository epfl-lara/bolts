; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41930 () Bool)

(assert start!41930)

(declare-fun b_free!11511 () Bool)

(declare-fun b_next!11511 () Bool)

(assert (=> start!41930 (= b_free!11511 (not b_next!11511))))

(declare-fun tp!40545 () Bool)

(declare-fun b_and!19917 () Bool)

(assert (=> start!41930 (= tp!40545 b_and!19917)))

(declare-fun b!467843 () Bool)

(declare-fun res!279675 () Bool)

(declare-fun e!273759 () Bool)

(assert (=> b!467843 (=> (not res!279675) (not e!273759))))

(declare-datatypes ((array!29611 0))(
  ( (array!29612 (arr!14229 (Array (_ BitVec 32) (_ BitVec 64))) (size!14581 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29611)

(declare-datatypes ((List!8657 0))(
  ( (Nil!8654) (Cons!8653 (h!9509 (_ BitVec 64)) (t!14621 List!8657)) )
))
(declare-fun arrayNoDuplicates!0 (array!29611 (_ BitVec 32) List!8657) Bool)

(assert (=> b!467843 (= res!279675 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8654))))

(declare-fun res!279673 () Bool)

(assert (=> start!41930 (=> (not res!279673) (not e!273759))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41930 (= res!279673 (validMask!0 mask!1365))))

(assert (=> start!41930 e!273759))

(declare-fun tp_is_empty!12939 () Bool)

(assert (=> start!41930 tp_is_empty!12939))

(assert (=> start!41930 tp!40545))

(assert (=> start!41930 true))

(declare-fun array_inv!10264 (array!29611) Bool)

(assert (=> start!41930 (array_inv!10264 _keys!1025)))

(declare-datatypes ((V!18357 0))(
  ( (V!18358 (val!6514 Int)) )
))
(declare-datatypes ((ValueCell!6126 0))(
  ( (ValueCellFull!6126 (v!8799 V!18357)) (EmptyCell!6126) )
))
(declare-datatypes ((array!29613 0))(
  ( (array!29614 (arr!14230 (Array (_ BitVec 32) ValueCell!6126)) (size!14582 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29613)

(declare-fun e!273763 () Bool)

(declare-fun array_inv!10265 (array!29613) Bool)

(assert (=> start!41930 (and (array_inv!10265 _values!833) e!273763)))

(declare-fun b!467844 () Bool)

(declare-fun e!273762 () Bool)

(assert (=> b!467844 (= e!273762 true)))

(declare-fun minValueBefore!38 () V!18357)

(declare-datatypes ((tuple2!8538 0))(
  ( (tuple2!8539 (_1!4279 (_ BitVec 64)) (_2!4279 V!18357)) )
))
(declare-datatypes ((List!8658 0))(
  ( (Nil!8655) (Cons!8654 (h!9510 tuple2!8538) (t!14622 List!8658)) )
))
(declare-datatypes ((ListLongMap!7465 0))(
  ( (ListLongMap!7466 (toList!3748 List!8658)) )
))
(declare-fun lt!211597 () ListLongMap!7465)

(declare-fun zeroValue!794 () V!18357)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun getCurrentListMap!2166 (array!29611 array!29613 (_ BitVec 32) (_ BitVec 32) V!18357 V!18357 (_ BitVec 32) Int) ListLongMap!7465)

(assert (=> b!467844 (= lt!211597 (getCurrentListMap!2166 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21100 () Bool)

(declare-fun mapRes!21100 () Bool)

(assert (=> mapIsEmpty!21100 mapRes!21100))

(declare-fun b!467845 () Bool)

(declare-fun e!273761 () Bool)

(assert (=> b!467845 (= e!273761 tp_is_empty!12939)))

(declare-fun b!467846 () Bool)

(assert (=> b!467846 (= e!273759 (not e!273762))))

(declare-fun res!279672 () Bool)

(assert (=> b!467846 (=> res!279672 e!273762)))

(assert (=> b!467846 (= res!279672 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!211594 () ListLongMap!7465)

(declare-fun lt!211596 () ListLongMap!7465)

(assert (=> b!467846 (= lt!211594 lt!211596)))

(declare-datatypes ((Unit!13617 0))(
  ( (Unit!13618) )
))
(declare-fun lt!211595 () Unit!13617)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18357)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!109 (array!29611 array!29613 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18357 V!18357 V!18357 V!18357 (_ BitVec 32) Int) Unit!13617)

(assert (=> b!467846 (= lt!211595 (lemmaNoChangeToArrayThenSameMapNoExtras!109 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1914 (array!29611 array!29613 (_ BitVec 32) (_ BitVec 32) V!18357 V!18357 (_ BitVec 32) Int) ListLongMap!7465)

(assert (=> b!467846 (= lt!211596 (getCurrentListMapNoExtraKeys!1914 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!467846 (= lt!211594 (getCurrentListMapNoExtraKeys!1914 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!467847 () Bool)

(declare-fun res!279674 () Bool)

(assert (=> b!467847 (=> (not res!279674) (not e!273759))))

(assert (=> b!467847 (= res!279674 (and (= (size!14582 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14581 _keys!1025) (size!14582 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!467848 () Bool)

(declare-fun e!273764 () Bool)

(assert (=> b!467848 (= e!273764 tp_is_empty!12939)))

(declare-fun mapNonEmpty!21100 () Bool)

(declare-fun tp!40546 () Bool)

(assert (=> mapNonEmpty!21100 (= mapRes!21100 (and tp!40546 e!273761))))

(declare-fun mapKey!21100 () (_ BitVec 32))

(declare-fun mapValue!21100 () ValueCell!6126)

(declare-fun mapRest!21100 () (Array (_ BitVec 32) ValueCell!6126))

(assert (=> mapNonEmpty!21100 (= (arr!14230 _values!833) (store mapRest!21100 mapKey!21100 mapValue!21100))))

(declare-fun b!467849 () Bool)

(assert (=> b!467849 (= e!273763 (and e!273764 mapRes!21100))))

(declare-fun condMapEmpty!21100 () Bool)

(declare-fun mapDefault!21100 () ValueCell!6126)

(assert (=> b!467849 (= condMapEmpty!21100 (= (arr!14230 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6126)) mapDefault!21100)))))

(declare-fun b!467850 () Bool)

(declare-fun res!279676 () Bool)

(assert (=> b!467850 (=> (not res!279676) (not e!273759))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29611 (_ BitVec 32)) Bool)

(assert (=> b!467850 (= res!279676 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(assert (= (and start!41930 res!279673) b!467847))

(assert (= (and b!467847 res!279674) b!467850))

(assert (= (and b!467850 res!279676) b!467843))

(assert (= (and b!467843 res!279675) b!467846))

(assert (= (and b!467846 (not res!279672)) b!467844))

(assert (= (and b!467849 condMapEmpty!21100) mapIsEmpty!21100))

(assert (= (and b!467849 (not condMapEmpty!21100)) mapNonEmpty!21100))

(get-info :version)

(assert (= (and mapNonEmpty!21100 ((_ is ValueCellFull!6126) mapValue!21100)) b!467845))

(assert (= (and b!467849 ((_ is ValueCellFull!6126) mapDefault!21100)) b!467848))

(assert (= start!41930 b!467849))

(declare-fun m!449929 () Bool)

(assert (=> b!467846 m!449929))

(declare-fun m!449931 () Bool)

(assert (=> b!467846 m!449931))

(declare-fun m!449933 () Bool)

(assert (=> b!467846 m!449933))

(declare-fun m!449935 () Bool)

(assert (=> start!41930 m!449935))

(declare-fun m!449937 () Bool)

(assert (=> start!41930 m!449937))

(declare-fun m!449939 () Bool)

(assert (=> start!41930 m!449939))

(declare-fun m!449941 () Bool)

(assert (=> mapNonEmpty!21100 m!449941))

(declare-fun m!449943 () Bool)

(assert (=> b!467843 m!449943))

(declare-fun m!449945 () Bool)

(assert (=> b!467850 m!449945))

(declare-fun m!449947 () Bool)

(assert (=> b!467844 m!449947))

(check-sat (not b!467844) (not b!467846) b_and!19917 (not start!41930) (not mapNonEmpty!21100) (not b!467843) (not b!467850) tp_is_empty!12939 (not b_next!11511))
(check-sat b_and!19917 (not b_next!11511))
