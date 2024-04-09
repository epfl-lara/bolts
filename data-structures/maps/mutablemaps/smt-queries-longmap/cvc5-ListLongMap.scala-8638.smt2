; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105166 () Bool)

(assert start!105166)

(declare-fun b_free!26863 () Bool)

(declare-fun b_next!26863 () Bool)

(assert (=> start!105166 (= b_free!26863 (not b_next!26863))))

(declare-fun tp!94091 () Bool)

(declare-fun b_and!44677 () Bool)

(assert (=> start!105166 (= tp!94091 b_and!44677)))

(declare-fun mapIsEmpty!49420 () Bool)

(declare-fun mapRes!49420 () Bool)

(assert (=> mapIsEmpty!49420 mapRes!49420))

(declare-fun b!1252726 () Bool)

(declare-fun res!835497 () Bool)

(declare-fun e!711607 () Bool)

(assert (=> b!1252726 (=> (not res!835497) (not e!711607))))

(declare-datatypes ((array!81171 0))(
  ( (array!81172 (arr!39144 (Array (_ BitVec 32) (_ BitVec 64))) (size!39681 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81171)

(declare-datatypes ((List!27963 0))(
  ( (Nil!27960) (Cons!27959 (h!29168 (_ BitVec 64)) (t!41449 List!27963)) )
))
(declare-fun arrayNoDuplicates!0 (array!81171 (_ BitVec 32) List!27963) Bool)

(assert (=> b!1252726 (= res!835497 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27960))))

(declare-fun res!835496 () Bool)

(assert (=> start!105166 (=> (not res!835496) (not e!711607))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105166 (= res!835496 (validMask!0 mask!1466))))

(assert (=> start!105166 e!711607))

(assert (=> start!105166 true))

(assert (=> start!105166 tp!94091))

(declare-fun tp_is_empty!31765 () Bool)

(assert (=> start!105166 tp_is_empty!31765))

(declare-fun array_inv!29785 (array!81171) Bool)

(assert (=> start!105166 (array_inv!29785 _keys!1118)))

(declare-datatypes ((V!47719 0))(
  ( (V!47720 (val!15945 Int)) )
))
(declare-datatypes ((ValueCell!15119 0))(
  ( (ValueCellFull!15119 (v!18643 V!47719)) (EmptyCell!15119) )
))
(declare-datatypes ((array!81173 0))(
  ( (array!81174 (arr!39145 (Array (_ BitVec 32) ValueCell!15119)) (size!39682 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81173)

(declare-fun e!711602 () Bool)

(declare-fun array_inv!29786 (array!81173) Bool)

(assert (=> start!105166 (and (array_inv!29786 _values!914) e!711602)))

(declare-fun b!1252727 () Bool)

(declare-fun e!711605 () Bool)

(assert (=> b!1252727 (= e!711607 (not e!711605))))

(declare-fun res!835494 () Bool)

(assert (=> b!1252727 (=> res!835494 e!711605)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1252727 (= res!835494 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!20716 0))(
  ( (tuple2!20717 (_1!10368 (_ BitVec 64)) (_2!10368 V!47719)) )
))
(declare-datatypes ((List!27964 0))(
  ( (Nil!27961) (Cons!27960 (h!29169 tuple2!20716) (t!41450 List!27964)) )
))
(declare-datatypes ((ListLongMap!18601 0))(
  ( (ListLongMap!18602 (toList!9316 List!27964)) )
))
(declare-fun lt!565459 () ListLongMap!18601)

(declare-fun lt!565462 () ListLongMap!18601)

(assert (=> b!1252727 (= lt!565459 lt!565462)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41605 0))(
  ( (Unit!41606) )
))
(declare-fun lt!565460 () Unit!41605)

(declare-fun minValueAfter!43 () V!47719)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47719)

(declare-fun minValueBefore!43 () V!47719)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1005 (array!81171 array!81173 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47719 V!47719 V!47719 V!47719 (_ BitVec 32) Int) Unit!41605)

(assert (=> b!1252727 (= lt!565460 (lemmaNoChangeToArrayThenSameMapNoExtras!1005 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5687 (array!81171 array!81173 (_ BitVec 32) (_ BitVec 32) V!47719 V!47719 (_ BitVec 32) Int) ListLongMap!18601)

(assert (=> b!1252727 (= lt!565462 (getCurrentListMapNoExtraKeys!5687 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1252727 (= lt!565459 (getCurrentListMapNoExtraKeys!5687 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252728 () Bool)

(declare-fun e!711606 () Bool)

(assert (=> b!1252728 (= e!711606 tp_is_empty!31765)))

(declare-fun mapNonEmpty!49420 () Bool)

(declare-fun tp!94092 () Bool)

(assert (=> mapNonEmpty!49420 (= mapRes!49420 (and tp!94092 e!711606))))

(declare-fun mapValue!49420 () ValueCell!15119)

(declare-fun mapRest!49420 () (Array (_ BitVec 32) ValueCell!15119))

(declare-fun mapKey!49420 () (_ BitVec 32))

(assert (=> mapNonEmpty!49420 (= (arr!39145 _values!914) (store mapRest!49420 mapKey!49420 mapValue!49420))))

(declare-fun b!1252729 () Bool)

(declare-fun res!835495 () Bool)

(assert (=> b!1252729 (=> (not res!835495) (not e!711607))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81171 (_ BitVec 32)) Bool)

(assert (=> b!1252729 (= res!835495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1252730 () Bool)

(declare-fun e!711603 () Bool)

(assert (=> b!1252730 (= e!711602 (and e!711603 mapRes!49420))))

(declare-fun condMapEmpty!49420 () Bool)

(declare-fun mapDefault!49420 () ValueCell!15119)

