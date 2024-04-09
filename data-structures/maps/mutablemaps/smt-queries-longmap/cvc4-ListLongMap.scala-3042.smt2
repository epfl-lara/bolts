; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42688 () Bool)

(assert start!42688)

(declare-fun b_free!12065 () Bool)

(declare-fun b_next!12065 () Bool)

(assert (=> start!42688 (= b_free!12065 (not b_next!12065))))

(declare-fun tp!42244 () Bool)

(declare-fun b_and!20595 () Bool)

(assert (=> start!42688 (= tp!42244 b_and!20595)))

(declare-fun b!475852 () Bool)

(declare-fun res!284180 () Bool)

(declare-fun e!279479 () Bool)

(assert (=> b!475852 (=> (not res!284180) (not e!279479))))

(declare-datatypes ((array!30697 0))(
  ( (array!30698 (arr!14760 (Array (_ BitVec 32) (_ BitVec 64))) (size!15112 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30697)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30697 (_ BitVec 32)) Bool)

(assert (=> b!475852 (= res!284180 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!475853 () Bool)

(declare-fun e!279478 () Bool)

(assert (=> b!475853 (= e!279479 (not e!279478))))

(declare-fun res!284182 () Bool)

(assert (=> b!475853 (=> res!284182 e!279478)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!475853 (= res!284182 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!19095 0))(
  ( (V!19096 (val!6791 Int)) )
))
(declare-datatypes ((tuple2!8956 0))(
  ( (tuple2!8957 (_1!4488 (_ BitVec 64)) (_2!4488 V!19095)) )
))
(declare-datatypes ((List!9065 0))(
  ( (Nil!9062) (Cons!9061 (h!9917 tuple2!8956) (t!15053 List!9065)) )
))
(declare-datatypes ((ListLongMap!7883 0))(
  ( (ListLongMap!7884 (toList!3957 List!9065)) )
))
(declare-fun lt!216889 () ListLongMap!7883)

(declare-fun lt!216888 () ListLongMap!7883)

(assert (=> b!475853 (= lt!216889 lt!216888)))

(declare-fun minValueBefore!38 () V!19095)

(declare-datatypes ((Unit!13995 0))(
  ( (Unit!13996) )
))
(declare-fun lt!216890 () Unit!13995)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((ValueCell!6403 0))(
  ( (ValueCellFull!6403 (v!9082 V!19095)) (EmptyCell!6403) )
))
(declare-datatypes ((array!30699 0))(
  ( (array!30700 (arr!14761 (Array (_ BitVec 32) ValueCell!6403)) (size!15113 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30699)

(declare-fun zeroValue!794 () V!19095)

(declare-fun minValueAfter!38 () V!19095)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!281 (array!30697 array!30699 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!19095 V!19095 V!19095 V!19095 (_ BitVec 32) Int) Unit!13995)

(assert (=> b!475853 (= lt!216890 (lemmaNoChangeToArrayThenSameMapNoExtras!281 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2110 (array!30697 array!30699 (_ BitVec 32) (_ BitVec 32) V!19095 V!19095 (_ BitVec 32) Int) ListLongMap!7883)

(assert (=> b!475853 (= lt!216888 (getCurrentListMapNoExtraKeys!2110 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!475853 (= lt!216889 (getCurrentListMapNoExtraKeys!2110 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!475854 () Bool)

(declare-fun e!279475 () Bool)

(declare-fun tp_is_empty!13493 () Bool)

(assert (=> b!475854 (= e!279475 tp_is_empty!13493)))

(declare-fun mapNonEmpty!21967 () Bool)

(declare-fun mapRes!21967 () Bool)

(declare-fun tp!42243 () Bool)

(assert (=> mapNonEmpty!21967 (= mapRes!21967 (and tp!42243 e!279475))))

(declare-fun mapValue!21967 () ValueCell!6403)

(declare-fun mapRest!21967 () (Array (_ BitVec 32) ValueCell!6403))

(declare-fun mapKey!21967 () (_ BitVec 32))

(assert (=> mapNonEmpty!21967 (= (arr!14761 _values!833) (store mapRest!21967 mapKey!21967 mapValue!21967))))

(declare-fun res!284184 () Bool)

(assert (=> start!42688 (=> (not res!284184) (not e!279479))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42688 (= res!284184 (validMask!0 mask!1365))))

(assert (=> start!42688 e!279479))

(assert (=> start!42688 tp_is_empty!13493))

(assert (=> start!42688 tp!42244))

(assert (=> start!42688 true))

(declare-fun array_inv!10638 (array!30697) Bool)

(assert (=> start!42688 (array_inv!10638 _keys!1025)))

(declare-fun e!279476 () Bool)

(declare-fun array_inv!10639 (array!30699) Bool)

(assert (=> start!42688 (and (array_inv!10639 _values!833) e!279476)))

(declare-fun b!475855 () Bool)

(declare-fun e!279477 () Bool)

(assert (=> b!475855 (= e!279477 tp_is_empty!13493)))

(declare-fun b!475856 () Bool)

(declare-fun res!284181 () Bool)

(assert (=> b!475856 (=> (not res!284181) (not e!279479))))

(assert (=> b!475856 (= res!284181 (and (= (size!15113 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15112 _keys!1025) (size!15113 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!475857 () Bool)

(assert (=> b!475857 (= e!279476 (and e!279477 mapRes!21967))))

(declare-fun condMapEmpty!21967 () Bool)

(declare-fun mapDefault!21967 () ValueCell!6403)

