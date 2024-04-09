; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42264 () Bool)

(assert start!42264)

(declare-fun b_free!11761 () Bool)

(declare-fun b_next!11761 () Bool)

(assert (=> start!42264 (= b_free!11761 (not b_next!11761))))

(declare-fun tp!41310 () Bool)

(declare-fun b_and!20217 () Bool)

(assert (=> start!42264 (= tp!41310 b_and!20217)))

(declare-fun b!471346 () Bool)

(declare-fun e!276264 () Bool)

(declare-fun tp_is_empty!13189 () Bool)

(assert (=> b!471346 (= e!276264 tp_is_empty!13189)))

(declare-fun b!471347 () Bool)

(declare-fun res!281651 () Bool)

(declare-fun e!276267 () Bool)

(assert (=> b!471347 (=> (not res!281651) (not e!276267))))

(declare-datatypes ((array!30105 0))(
  ( (array!30106 (arr!14471 (Array (_ BitVec 32) (_ BitVec 64))) (size!14823 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30105)

(declare-datatypes ((List!8837 0))(
  ( (Nil!8834) (Cons!8833 (h!9689 (_ BitVec 64)) (t!14811 List!8837)) )
))
(declare-fun arrayNoDuplicates!0 (array!30105 (_ BitVec 32) List!8837) Bool)

(assert (=> b!471347 (= res!281651 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8834))))

(declare-fun b!471348 () Bool)

(declare-fun res!281649 () Bool)

(assert (=> b!471348 (=> (not res!281649) (not e!276267))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((V!18691 0))(
  ( (V!18692 (val!6639 Int)) )
))
(declare-datatypes ((ValueCell!6251 0))(
  ( (ValueCellFull!6251 (v!8926 V!18691)) (EmptyCell!6251) )
))
(declare-datatypes ((array!30107 0))(
  ( (array!30108 (arr!14472 (Array (_ BitVec 32) ValueCell!6251)) (size!14824 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30107)

(assert (=> b!471348 (= res!281649 (and (= (size!14824 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14823 _keys!1025) (size!14824 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!21490 () Bool)

(declare-fun mapRes!21490 () Bool)

(assert (=> mapIsEmpty!21490 mapRes!21490))

(declare-fun b!471349 () Bool)

(assert (=> b!471349 (= e!276267 (not true))))

(declare-datatypes ((tuple2!8718 0))(
  ( (tuple2!8719 (_1!4369 (_ BitVec 64)) (_2!4369 V!18691)) )
))
(declare-datatypes ((List!8838 0))(
  ( (Nil!8835) (Cons!8834 (h!9690 tuple2!8718) (t!14812 List!8838)) )
))
(declare-datatypes ((ListLongMap!7645 0))(
  ( (ListLongMap!7646 (toList!3838 List!8838)) )
))
(declare-fun lt!213896 () ListLongMap!7645)

(declare-fun lt!213897 () ListLongMap!7645)

(assert (=> b!471349 (= lt!213896 lt!213897)))

(declare-fun minValueBefore!38 () V!18691)

(declare-fun zeroValue!794 () V!18691)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13802 0))(
  ( (Unit!13803) )
))
(declare-fun lt!213895 () Unit!13802)

(declare-fun minValueAfter!38 () V!18691)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!195 (array!30105 array!30107 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18691 V!18691 V!18691 V!18691 (_ BitVec 32) Int) Unit!13802)

(assert (=> b!471349 (= lt!213895 (lemmaNoChangeToArrayThenSameMapNoExtras!195 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2000 (array!30105 array!30107 (_ BitVec 32) (_ BitVec 32) V!18691 V!18691 (_ BitVec 32) Int) ListLongMap!7645)

(assert (=> b!471349 (= lt!213897 (getCurrentListMapNoExtraKeys!2000 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471349 (= lt!213896 (getCurrentListMapNoExtraKeys!2000 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!281648 () Bool)

(assert (=> start!42264 (=> (not res!281648) (not e!276267))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42264 (= res!281648 (validMask!0 mask!1365))))

(assert (=> start!42264 e!276267))

(assert (=> start!42264 tp_is_empty!13189))

(assert (=> start!42264 tp!41310))

(assert (=> start!42264 true))

(declare-fun array_inv!10440 (array!30105) Bool)

(assert (=> start!42264 (array_inv!10440 _keys!1025)))

(declare-fun e!276266 () Bool)

(declare-fun array_inv!10441 (array!30107) Bool)

(assert (=> start!42264 (and (array_inv!10441 _values!833) e!276266)))

(declare-fun b!471350 () Bool)

(assert (=> b!471350 (= e!276266 (and e!276264 mapRes!21490))))

(declare-fun condMapEmpty!21490 () Bool)

(declare-fun mapDefault!21490 () ValueCell!6251)

