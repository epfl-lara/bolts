; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105304 () Bool)

(assert start!105304)

(declare-fun b_free!26963 () Bool)

(declare-fun b_next!26963 () Bool)

(assert (=> start!105304 (= b_free!26963 (not b_next!26963))))

(declare-fun tp!94397 () Bool)

(declare-fun b_and!44799 () Bool)

(assert (=> start!105304 (= tp!94397 b_and!44799)))

(declare-fun b!1254267 () Bool)

(declare-fun res!836396 () Bool)

(declare-fun e!712728 () Bool)

(assert (=> b!1254267 (=> (not res!836396) (not e!712728))))

(declare-datatypes ((array!81365 0))(
  ( (array!81366 (arr!39239 (Array (_ BitVec 32) (_ BitVec 64))) (size!39776 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81365)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81365 (_ BitVec 32)) Bool)

(assert (=> b!1254267 (= res!836396 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1254268 () Bool)

(declare-fun res!836394 () Bool)

(assert (=> b!1254268 (=> (not res!836394) (not e!712728))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((V!47851 0))(
  ( (V!47852 (val!15995 Int)) )
))
(declare-datatypes ((ValueCell!15169 0))(
  ( (ValueCellFull!15169 (v!18694 V!47851)) (EmptyCell!15169) )
))
(declare-datatypes ((array!81367 0))(
  ( (array!81368 (arr!39240 (Array (_ BitVec 32) ValueCell!15169)) (size!39777 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81367)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1254268 (= res!836394 (and (= (size!39777 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39776 _keys!1118) (size!39777 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1254269 () Bool)

(declare-fun e!712729 () Bool)

(assert (=> b!1254269 (= e!712729 true)))

(declare-datatypes ((tuple2!20792 0))(
  ( (tuple2!20793 (_1!10406 (_ BitVec 64)) (_2!10406 V!47851)) )
))
(declare-datatypes ((List!28036 0))(
  ( (Nil!28033) (Cons!28032 (h!29241 tuple2!20792) (t!41526 List!28036)) )
))
(declare-datatypes ((ListLongMap!18677 0))(
  ( (ListLongMap!18678 (toList!9354 List!28036)) )
))
(declare-fun lt!566786 () ListLongMap!18677)

(declare-fun lt!566785 () ListLongMap!18677)

(declare-fun -!2063 (ListLongMap!18677 (_ BitVec 64)) ListLongMap!18677)

(assert (=> b!1254269 (= lt!566786 (-!2063 lt!566785 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!566792 () ListLongMap!18677)

(declare-fun lt!566789 () ListLongMap!18677)

(assert (=> b!1254269 (= (-!2063 lt!566792 #b1000000000000000000000000000000000000000000000000000000000000000) lt!566789)))

(declare-datatypes ((Unit!41680 0))(
  ( (Unit!41681) )
))
(declare-fun lt!566791 () Unit!41680)

(declare-fun minValueBefore!43 () V!47851)

(declare-fun addThenRemoveForNewKeyIsSame!323 (ListLongMap!18677 (_ BitVec 64) V!47851) Unit!41680)

(assert (=> b!1254269 (= lt!566791 (addThenRemoveForNewKeyIsSame!323 lt!566789 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!566787 () ListLongMap!18677)

(declare-fun lt!566788 () ListLongMap!18677)

(assert (=> b!1254269 (and (= lt!566785 lt!566792) (= lt!566788 lt!566787))))

(declare-fun +!4154 (ListLongMap!18677 tuple2!20792) ListLongMap!18677)

(assert (=> b!1254269 (= lt!566792 (+!4154 lt!566789 (tuple2!20793 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47851)

(declare-fun zeroValue!871 () V!47851)

(declare-fun getCurrentListMap!4541 (array!81365 array!81367 (_ BitVec 32) (_ BitVec 32) V!47851 V!47851 (_ BitVec 32) Int) ListLongMap!18677)

(assert (=> b!1254269 (= lt!566788 (getCurrentListMap!4541 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1254269 (= lt!566785 (getCurrentListMap!4541 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!49576 () Bool)

(declare-fun mapRes!49576 () Bool)

(declare-fun tp!94398 () Bool)

(declare-fun e!712724 () Bool)

(assert (=> mapNonEmpty!49576 (= mapRes!49576 (and tp!94398 e!712724))))

(declare-fun mapKey!49576 () (_ BitVec 32))

(declare-fun mapRest!49576 () (Array (_ BitVec 32) ValueCell!15169))

(declare-fun mapValue!49576 () ValueCell!15169)

(assert (=> mapNonEmpty!49576 (= (arr!39240 _values!914) (store mapRest!49576 mapKey!49576 mapValue!49576))))

(declare-fun b!1254270 () Bool)

(declare-fun e!712725 () Bool)

(declare-fun tp_is_empty!31865 () Bool)

(assert (=> b!1254270 (= e!712725 tp_is_empty!31865)))

(declare-fun res!836395 () Bool)

(assert (=> start!105304 (=> (not res!836395) (not e!712728))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105304 (= res!836395 (validMask!0 mask!1466))))

(assert (=> start!105304 e!712728))

(assert (=> start!105304 true))

(assert (=> start!105304 tp!94397))

(assert (=> start!105304 tp_is_empty!31865))

(declare-fun array_inv!29849 (array!81365) Bool)

(assert (=> start!105304 (array_inv!29849 _keys!1118)))

(declare-fun e!712727 () Bool)

(declare-fun array_inv!29850 (array!81367) Bool)

(assert (=> start!105304 (and (array_inv!29850 _values!914) e!712727)))

(declare-fun b!1254271 () Bool)

(assert (=> b!1254271 (= e!712727 (and e!712725 mapRes!49576))))

(declare-fun condMapEmpty!49576 () Bool)

(declare-fun mapDefault!49576 () ValueCell!15169)

