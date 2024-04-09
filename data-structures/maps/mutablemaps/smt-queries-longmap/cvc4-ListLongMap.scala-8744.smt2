; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106106 () Bool)

(assert start!106106)

(declare-fun b_free!27503 () Bool)

(declare-fun b_next!27503 () Bool)

(assert (=> start!106106 (= b_free!27503 (not b_next!27503))))

(declare-fun tp!96059 () Bool)

(declare-fun b_and!45487 () Bool)

(assert (=> start!106106 (= tp!96059 b_and!45487)))

(declare-fun b!1262992 () Bool)

(declare-fun res!841424 () Bool)

(declare-fun e!719052 () Bool)

(assert (=> b!1262992 (=> (not res!841424) (not e!719052))))

(declare-datatypes ((array!82415 0))(
  ( (array!82416 (arr!39750 (Array (_ BitVec 32) (_ BitVec 64))) (size!40287 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82415)

(declare-datatypes ((List!28420 0))(
  ( (Nil!28417) (Cons!28416 (h!29625 (_ BitVec 64)) (t!41938 List!28420)) )
))
(declare-fun arrayNoDuplicates!0 (array!82415 (_ BitVec 32) List!28420) Bool)

(assert (=> b!1262992 (= res!841424 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28417))))

(declare-fun res!841423 () Bool)

(assert (=> start!106106 (=> (not res!841423) (not e!719052))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106106 (= res!841423 (validMask!0 mask!1466))))

(assert (=> start!106106 e!719052))

(assert (=> start!106106 true))

(assert (=> start!106106 tp!96059))

(declare-fun tp_is_empty!32405 () Bool)

(assert (=> start!106106 tp_is_empty!32405))

(declare-fun array_inv!30213 (array!82415) Bool)

(assert (=> start!106106 (array_inv!30213 _keys!1118)))

(declare-datatypes ((V!48571 0))(
  ( (V!48572 (val!16265 Int)) )
))
(declare-datatypes ((ValueCell!15439 0))(
  ( (ValueCellFull!15439 (v!18974 V!48571)) (EmptyCell!15439) )
))
(declare-datatypes ((array!82417 0))(
  ( (array!82418 (arr!39751 (Array (_ BitVec 32) ValueCell!15439)) (size!40288 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82417)

(declare-fun e!719057 () Bool)

(declare-fun array_inv!30214 (array!82417) Bool)

(assert (=> start!106106 (and (array_inv!30214 _values!914) e!719057)))

(declare-fun b!1262993 () Bool)

(declare-fun e!719055 () Bool)

(assert (=> b!1262993 (= e!719052 (not e!719055))))

(declare-fun res!841426 () Bool)

(assert (=> b!1262993 (=> res!841426 e!719055)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1262993 (= res!841426 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!21200 0))(
  ( (tuple2!21201 (_1!10610 (_ BitVec 64)) (_2!10610 V!48571)) )
))
(declare-datatypes ((List!28421 0))(
  ( (Nil!28418) (Cons!28417 (h!29626 tuple2!21200) (t!41939 List!28421)) )
))
(declare-datatypes ((ListLongMap!19085 0))(
  ( (ListLongMap!19086 (toList!9558 List!28421)) )
))
(declare-fun lt!572672 () ListLongMap!19085)

(declare-fun lt!572671 () ListLongMap!19085)

(assert (=> b!1262993 (= lt!572672 lt!572671)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!42053 0))(
  ( (Unit!42054) )
))
(declare-fun lt!572673 () Unit!42053)

(declare-fun minValueAfter!43 () V!48571)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48571)

(declare-fun minValueBefore!43 () V!48571)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1194 (array!82415 array!82417 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48571 V!48571 V!48571 V!48571 (_ BitVec 32) Int) Unit!42053)

(assert (=> b!1262993 (= lt!572673 (lemmaNoChangeToArrayThenSameMapNoExtras!1194 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5898 (array!82415 array!82417 (_ BitVec 32) (_ BitVec 32) V!48571 V!48571 (_ BitVec 32) Int) ListLongMap!19085)

(assert (=> b!1262993 (= lt!572671 (getCurrentListMapNoExtraKeys!5898 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1262993 (= lt!572672 (getCurrentListMapNoExtraKeys!5898 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!50428 () Bool)

(declare-fun mapRes!50428 () Bool)

(assert (=> mapIsEmpty!50428 mapRes!50428))

(declare-fun b!1262994 () Bool)

(declare-fun e!719053 () Bool)

(assert (=> b!1262994 (= e!719053 tp_is_empty!32405)))

(declare-fun mapNonEmpty!50428 () Bool)

(declare-fun tp!96060 () Bool)

(declare-fun e!719054 () Bool)

(assert (=> mapNonEmpty!50428 (= mapRes!50428 (and tp!96060 e!719054))))

(declare-fun mapRest!50428 () (Array (_ BitVec 32) ValueCell!15439))

(declare-fun mapValue!50428 () ValueCell!15439)

(declare-fun mapKey!50428 () (_ BitVec 32))

(assert (=> mapNonEmpty!50428 (= (arr!39751 _values!914) (store mapRest!50428 mapKey!50428 mapValue!50428))))

(declare-fun b!1262995 () Bool)

(assert (=> b!1262995 (= e!719057 (and e!719053 mapRes!50428))))

(declare-fun condMapEmpty!50428 () Bool)

(declare-fun mapDefault!50428 () ValueCell!15439)

