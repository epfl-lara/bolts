; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41946 () Bool)

(assert start!41946)

(declare-fun b_free!11527 () Bool)

(declare-fun b_next!11527 () Bool)

(assert (=> start!41946 (= b_free!11527 (not b_next!11527))))

(declare-fun tp!40593 () Bool)

(declare-fun b_and!19933 () Bool)

(assert (=> start!41946 (= tp!40593 b_and!19933)))

(declare-fun b!468035 () Bool)

(declare-fun e!273907 () Bool)

(declare-fun e!273908 () Bool)

(assert (=> b!468035 (= e!273907 (not e!273908))))

(declare-fun res!279795 () Bool)

(assert (=> b!468035 (=> res!279795 e!273908)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!468035 (= res!279795 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!18379 0))(
  ( (V!18380 (val!6522 Int)) )
))
(declare-datatypes ((tuple2!8548 0))(
  ( (tuple2!8549 (_1!4284 (_ BitVec 64)) (_2!4284 V!18379)) )
))
(declare-datatypes ((List!8668 0))(
  ( (Nil!8665) (Cons!8664 (h!9520 tuple2!8548) (t!14632 List!8668)) )
))
(declare-datatypes ((ListLongMap!7475 0))(
  ( (ListLongMap!7476 (toList!3753 List!8668)) )
))
(declare-fun lt!211692 () ListLongMap!7475)

(declare-fun lt!211690 () ListLongMap!7475)

(assert (=> b!468035 (= lt!211692 lt!211690)))

(declare-fun minValueBefore!38 () V!18379)

(declare-fun zeroValue!794 () V!18379)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13627 0))(
  ( (Unit!13628) )
))
(declare-fun lt!211693 () Unit!13627)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29641 0))(
  ( (array!29642 (arr!14244 (Array (_ BitVec 32) (_ BitVec 64))) (size!14596 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29641)

(declare-datatypes ((ValueCell!6134 0))(
  ( (ValueCellFull!6134 (v!8807 V!18379)) (EmptyCell!6134) )
))
(declare-datatypes ((array!29643 0))(
  ( (array!29644 (arr!14245 (Array (_ BitVec 32) ValueCell!6134)) (size!14597 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29643)

(declare-fun minValueAfter!38 () V!18379)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!114 (array!29641 array!29643 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18379 V!18379 V!18379 V!18379 (_ BitVec 32) Int) Unit!13627)

(assert (=> b!468035 (= lt!211693 (lemmaNoChangeToArrayThenSameMapNoExtras!114 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1919 (array!29641 array!29643 (_ BitVec 32) (_ BitVec 32) V!18379 V!18379 (_ BitVec 32) Int) ListLongMap!7475)

(assert (=> b!468035 (= lt!211690 (getCurrentListMapNoExtraKeys!1919 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!468035 (= lt!211692 (getCurrentListMapNoExtraKeys!1919 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21124 () Bool)

(declare-fun mapRes!21124 () Bool)

(assert (=> mapIsEmpty!21124 mapRes!21124))

(declare-fun b!468037 () Bool)

(assert (=> b!468037 (= e!273908 true)))

(declare-fun lt!211691 () ListLongMap!7475)

(declare-fun getCurrentListMap!2169 (array!29641 array!29643 (_ BitVec 32) (_ BitVec 32) V!18379 V!18379 (_ BitVec 32) Int) ListLongMap!7475)

(assert (=> b!468037 (= lt!211691 (getCurrentListMap!2169 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!468038 () Bool)

(declare-fun res!279792 () Bool)

(assert (=> b!468038 (=> (not res!279792) (not e!273907))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29641 (_ BitVec 32)) Bool)

(assert (=> b!468038 (= res!279792 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!21124 () Bool)

(declare-fun tp!40594 () Bool)

(declare-fun e!273905 () Bool)

(assert (=> mapNonEmpty!21124 (= mapRes!21124 (and tp!40594 e!273905))))

(declare-fun mapValue!21124 () ValueCell!6134)

(declare-fun mapRest!21124 () (Array (_ BitVec 32) ValueCell!6134))

(declare-fun mapKey!21124 () (_ BitVec 32))

(assert (=> mapNonEmpty!21124 (= (arr!14245 _values!833) (store mapRest!21124 mapKey!21124 mapValue!21124))))

(declare-fun b!468036 () Bool)

(declare-fun e!273904 () Bool)

(declare-fun tp_is_empty!12955 () Bool)

(assert (=> b!468036 (= e!273904 tp_is_empty!12955)))

(declare-fun res!279796 () Bool)

(assert (=> start!41946 (=> (not res!279796) (not e!273907))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41946 (= res!279796 (validMask!0 mask!1365))))

(assert (=> start!41946 e!273907))

(assert (=> start!41946 tp_is_empty!12955))

(assert (=> start!41946 tp!40593))

(assert (=> start!41946 true))

(declare-fun array_inv!10274 (array!29641) Bool)

(assert (=> start!41946 (array_inv!10274 _keys!1025)))

(declare-fun e!273903 () Bool)

(declare-fun array_inv!10275 (array!29643) Bool)

(assert (=> start!41946 (and (array_inv!10275 _values!833) e!273903)))

(declare-fun b!468039 () Bool)

(assert (=> b!468039 (= e!273905 tp_is_empty!12955)))

(declare-fun b!468040 () Bool)

(declare-fun res!279794 () Bool)

(assert (=> b!468040 (=> (not res!279794) (not e!273907))))

(assert (=> b!468040 (= res!279794 (and (= (size!14597 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14596 _keys!1025) (size!14597 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!468041 () Bool)

(declare-fun res!279793 () Bool)

(assert (=> b!468041 (=> (not res!279793) (not e!273907))))

(declare-datatypes ((List!8669 0))(
  ( (Nil!8666) (Cons!8665 (h!9521 (_ BitVec 64)) (t!14633 List!8669)) )
))
(declare-fun arrayNoDuplicates!0 (array!29641 (_ BitVec 32) List!8669) Bool)

(assert (=> b!468041 (= res!279793 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8666))))

(declare-fun b!468042 () Bool)

(assert (=> b!468042 (= e!273903 (and e!273904 mapRes!21124))))

(declare-fun condMapEmpty!21124 () Bool)

(declare-fun mapDefault!21124 () ValueCell!6134)

