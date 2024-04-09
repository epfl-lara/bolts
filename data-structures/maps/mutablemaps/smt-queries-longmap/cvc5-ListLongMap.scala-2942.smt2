; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41866 () Bool)

(assert start!41866)

(declare-fun b_free!11461 () Bool)

(declare-fun b_next!11461 () Bool)

(assert (=> start!41866 (= b_free!11461 (not b_next!11461))))

(declare-fun tp!40392 () Bool)

(declare-fun b_and!19859 () Bool)

(assert (=> start!41866 (= tp!40392 b_and!19859)))

(declare-fun res!279303 () Bool)

(declare-fun e!273292 () Bool)

(assert (=> start!41866 (=> (not res!279303) (not e!273292))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41866 (= res!279303 (validMask!0 mask!1365))))

(assert (=> start!41866 e!273292))

(declare-fun tp_is_empty!12889 () Bool)

(assert (=> start!41866 tp_is_empty!12889))

(assert (=> start!41866 tp!40392))

(assert (=> start!41866 true))

(declare-datatypes ((array!29513 0))(
  ( (array!29514 (arr!14181 (Array (_ BitVec 32) (_ BitVec 64))) (size!14533 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29513)

(declare-fun array_inv!10226 (array!29513) Bool)

(assert (=> start!41866 (array_inv!10226 _keys!1025)))

(declare-datatypes ((V!18291 0))(
  ( (V!18292 (val!6489 Int)) )
))
(declare-datatypes ((ValueCell!6101 0))(
  ( (ValueCellFull!6101 (v!8774 V!18291)) (EmptyCell!6101) )
))
(declare-datatypes ((array!29515 0))(
  ( (array!29516 (arr!14182 (Array (_ BitVec 32) ValueCell!6101)) (size!14534 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29515)

(declare-fun e!273289 () Bool)

(declare-fun array_inv!10227 (array!29515) Bool)

(assert (=> start!41866 (and (array_inv!10227 _values!833) e!273289)))

(declare-fun b!467192 () Bool)

(declare-fun res!279301 () Bool)

(assert (=> b!467192 (=> (not res!279301) (not e!273292))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!467192 (= res!279301 (and (= (size!14534 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14533 _keys!1025) (size!14534 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!467193 () Bool)

(declare-fun res!279302 () Bool)

(assert (=> b!467193 (=> (not res!279302) (not e!273292))))

(declare-datatypes ((List!8621 0))(
  ( (Nil!8618) (Cons!8617 (h!9473 (_ BitVec 64)) (t!14583 List!8621)) )
))
(declare-fun arrayNoDuplicates!0 (array!29513 (_ BitVec 32) List!8621) Bool)

(assert (=> b!467193 (= res!279302 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8618))))

(declare-fun b!467194 () Bool)

(assert (=> b!467194 (= e!273292 (not true))))

(declare-datatypes ((tuple2!8508 0))(
  ( (tuple2!8509 (_1!4264 (_ BitVec 64)) (_2!4264 V!18291)) )
))
(declare-datatypes ((List!8622 0))(
  ( (Nil!8619) (Cons!8618 (h!9474 tuple2!8508) (t!14584 List!8622)) )
))
(declare-datatypes ((ListLongMap!7435 0))(
  ( (ListLongMap!7436 (toList!3733 List!8622)) )
))
(declare-fun lt!211289 () ListLongMap!7435)

(declare-fun lt!211288 () ListLongMap!7435)

(assert (=> b!467194 (= lt!211289 lt!211288)))

(declare-datatypes ((Unit!13587 0))(
  ( (Unit!13588) )
))
(declare-fun lt!211290 () Unit!13587)

(declare-fun minValueBefore!38 () V!18291)

(declare-fun zeroValue!794 () V!18291)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18291)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!94 (array!29513 array!29515 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18291 V!18291 V!18291 V!18291 (_ BitVec 32) Int) Unit!13587)

(assert (=> b!467194 (= lt!211290 (lemmaNoChangeToArrayThenSameMapNoExtras!94 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1899 (array!29513 array!29515 (_ BitVec 32) (_ BitVec 32) V!18291 V!18291 (_ BitVec 32) Int) ListLongMap!7435)

(assert (=> b!467194 (= lt!211288 (getCurrentListMapNoExtraKeys!1899 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!467194 (= lt!211289 (getCurrentListMapNoExtraKeys!1899 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!467195 () Bool)

(declare-fun e!273288 () Bool)

(declare-fun mapRes!21022 () Bool)

(assert (=> b!467195 (= e!273289 (and e!273288 mapRes!21022))))

(declare-fun condMapEmpty!21022 () Bool)

(declare-fun mapDefault!21022 () ValueCell!6101)

