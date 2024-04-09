; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41628 () Bool)

(assert start!41628)

(declare-fun b_free!11273 () Bool)

(declare-fun b_next!11273 () Bool)

(assert (=> start!41628 (= b_free!11273 (not b_next!11273))))

(declare-fun tp!39820 () Bool)

(declare-fun b_and!19639 () Bool)

(assert (=> start!41628 (= tp!39820 b_and!19639)))

(declare-fun b!464603 () Bool)

(declare-fun e!271443 () Bool)

(declare-fun tp_is_empty!12701 () Bool)

(assert (=> b!464603 (= e!271443 tp_is_empty!12701)))

(declare-fun mapIsEmpty!20731 () Bool)

(declare-fun mapRes!20731 () Bool)

(assert (=> mapIsEmpty!20731 mapRes!20731))

(declare-fun b!464604 () Bool)

(declare-fun e!271442 () Bool)

(assert (=> b!464604 (= e!271442 (not true))))

(declare-datatypes ((V!18039 0))(
  ( (V!18040 (val!6395 Int)) )
))
(declare-datatypes ((tuple2!8356 0))(
  ( (tuple2!8357 (_1!4188 (_ BitVec 64)) (_2!4188 V!18039)) )
))
(declare-datatypes ((List!8484 0))(
  ( (Nil!8481) (Cons!8480 (h!9336 tuple2!8356) (t!14440 List!8484)) )
))
(declare-datatypes ((ListLongMap!7283 0))(
  ( (ListLongMap!7284 (toList!3657 List!8484)) )
))
(declare-fun lt!209834 () ListLongMap!7283)

(declare-fun lt!209836 () ListLongMap!7283)

(assert (=> b!464604 (= lt!209834 lt!209836)))

(declare-fun minValueBefore!38 () V!18039)

(declare-fun zeroValue!794 () V!18039)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13435 0))(
  ( (Unit!13436) )
))
(declare-fun lt!209835 () Unit!13435)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29151 0))(
  ( (array!29152 (arr!14003 (Array (_ BitVec 32) (_ BitVec 64))) (size!14355 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29151)

(declare-datatypes ((ValueCell!6007 0))(
  ( (ValueCellFull!6007 (v!8678 V!18039)) (EmptyCell!6007) )
))
(declare-datatypes ((array!29153 0))(
  ( (array!29154 (arr!14004 (Array (_ BitVec 32) ValueCell!6007)) (size!14356 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29153)

(declare-fun minValueAfter!38 () V!18039)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!20 (array!29151 array!29153 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18039 V!18039 V!18039 V!18039 (_ BitVec 32) Int) Unit!13435)

(assert (=> b!464604 (= lt!209835 (lemmaNoChangeToArrayThenSameMapNoExtras!20 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1825 (array!29151 array!29153 (_ BitVec 32) (_ BitVec 32) V!18039 V!18039 (_ BitVec 32) Int) ListLongMap!7283)

(assert (=> b!464604 (= lt!209836 (getCurrentListMapNoExtraKeys!1825 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!464604 (= lt!209834 (getCurrentListMapNoExtraKeys!1825 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!464605 () Bool)

(declare-fun res!277815 () Bool)

(assert (=> b!464605 (=> (not res!277815) (not e!271442))))

(declare-datatypes ((List!8485 0))(
  ( (Nil!8482) (Cons!8481 (h!9337 (_ BitVec 64)) (t!14441 List!8485)) )
))
(declare-fun arrayNoDuplicates!0 (array!29151 (_ BitVec 32) List!8485) Bool)

(assert (=> b!464605 (= res!277815 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8482))))

(declare-fun b!464606 () Bool)

(declare-fun res!277817 () Bool)

(assert (=> b!464606 (=> (not res!277817) (not e!271442))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29151 (_ BitVec 32)) Bool)

(assert (=> b!464606 (= res!277817 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!20731 () Bool)

(declare-fun tp!39819 () Bool)

(declare-fun e!271445 () Bool)

(assert (=> mapNonEmpty!20731 (= mapRes!20731 (and tp!39819 e!271445))))

(declare-fun mapRest!20731 () (Array (_ BitVec 32) ValueCell!6007))

(declare-fun mapValue!20731 () ValueCell!6007)

(declare-fun mapKey!20731 () (_ BitVec 32))

(assert (=> mapNonEmpty!20731 (= (arr!14004 _values!833) (store mapRest!20731 mapKey!20731 mapValue!20731))))

(declare-fun res!277816 () Bool)

(assert (=> start!41628 (=> (not res!277816) (not e!271442))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41628 (= res!277816 (validMask!0 mask!1365))))

(assert (=> start!41628 e!271442))

(assert (=> start!41628 tp_is_empty!12701))

(assert (=> start!41628 tp!39820))

(assert (=> start!41628 true))

(declare-fun array_inv!10092 (array!29151) Bool)

(assert (=> start!41628 (array_inv!10092 _keys!1025)))

(declare-fun e!271444 () Bool)

(declare-fun array_inv!10093 (array!29153) Bool)

(assert (=> start!41628 (and (array_inv!10093 _values!833) e!271444)))

(declare-fun b!464607 () Bool)

(declare-fun res!277818 () Bool)

(assert (=> b!464607 (=> (not res!277818) (not e!271442))))

(assert (=> b!464607 (= res!277818 (and (= (size!14356 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14355 _keys!1025) (size!14356 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!464608 () Bool)

(assert (=> b!464608 (= e!271444 (and e!271443 mapRes!20731))))

(declare-fun condMapEmpty!20731 () Bool)

(declare-fun mapDefault!20731 () ValueCell!6007)

