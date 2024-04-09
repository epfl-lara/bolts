; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105686 () Bool)

(assert start!105686)

(declare-fun b_free!27251 () Bool)

(declare-fun b_next!27251 () Bool)

(assert (=> start!105686 (= b_free!27251 (not b_next!27251))))

(declare-fun tp!95276 () Bool)

(declare-fun b_and!45135 () Bool)

(assert (=> start!105686 (= tp!95276 b_and!45135)))

(declare-fun b!1258391 () Bool)

(declare-fun e!715748 () Bool)

(declare-fun tp_is_empty!32153 () Bool)

(assert (=> b!1258391 (= e!715748 tp_is_empty!32153)))

(declare-fun res!838822 () Bool)

(declare-fun e!715746 () Bool)

(assert (=> start!105686 (=> (not res!838822) (not e!715746))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105686 (= res!838822 (validMask!0 mask!1466))))

(assert (=> start!105686 e!715746))

(assert (=> start!105686 true))

(assert (=> start!105686 tp!95276))

(assert (=> start!105686 tp_is_empty!32153))

(declare-datatypes ((array!81923 0))(
  ( (array!81924 (arr!39513 (Array (_ BitVec 32) (_ BitVec 64))) (size!40050 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81923)

(declare-fun array_inv!30043 (array!81923) Bool)

(assert (=> start!105686 (array_inv!30043 _keys!1118)))

(declare-datatypes ((V!48235 0))(
  ( (V!48236 (val!16139 Int)) )
))
(declare-datatypes ((ValueCell!15313 0))(
  ( (ValueCellFull!15313 (v!18841 V!48235)) (EmptyCell!15313) )
))
(declare-datatypes ((array!81925 0))(
  ( (array!81926 (arr!39514 (Array (_ BitVec 32) ValueCell!15313)) (size!40051 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81925)

(declare-fun e!715747 () Bool)

(declare-fun array_inv!30044 (array!81925) Bool)

(assert (=> start!105686 (and (array_inv!30044 _values!914) e!715747)))

(declare-fun b!1258392 () Bool)

(declare-fun e!715749 () Bool)

(assert (=> b!1258392 (= e!715749 true)))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun minValueBefore!43 () V!48235)

(declare-fun zeroValue!871 () V!48235)

(declare-datatypes ((tuple2!21010 0))(
  ( (tuple2!21011 (_1!10515 (_ BitVec 64)) (_2!10515 V!48235)) )
))
(declare-datatypes ((List!28242 0))(
  ( (Nil!28239) (Cons!28238 (h!29447 tuple2!21010) (t!41742 List!28242)) )
))
(declare-datatypes ((ListLongMap!18895 0))(
  ( (ListLongMap!18896 (toList!9463 List!28242)) )
))
(declare-fun lt!569166 () ListLongMap!18895)

(declare-fun getCurrentListMap!4603 (array!81923 array!81925 (_ BitVec 32) (_ BitVec 32) V!48235 V!48235 (_ BitVec 32) Int) ListLongMap!18895)

(assert (=> b!1258392 (= lt!569166 (getCurrentListMap!4603 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1258393 () Bool)

(declare-fun res!838819 () Bool)

(assert (=> b!1258393 (=> (not res!838819) (not e!715746))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81923 (_ BitVec 32)) Bool)

(assert (=> b!1258393 (= res!838819 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!50023 () Bool)

(declare-fun mapRes!50023 () Bool)

(declare-fun tp!95277 () Bool)

(declare-fun e!715750 () Bool)

(assert (=> mapNonEmpty!50023 (= mapRes!50023 (and tp!95277 e!715750))))

(declare-fun mapValue!50023 () ValueCell!15313)

(declare-fun mapKey!50023 () (_ BitVec 32))

(declare-fun mapRest!50023 () (Array (_ BitVec 32) ValueCell!15313))

(assert (=> mapNonEmpty!50023 (= (arr!39514 _values!914) (store mapRest!50023 mapKey!50023 mapValue!50023))))

(declare-fun b!1258394 () Bool)

(assert (=> b!1258394 (= e!715750 tp_is_empty!32153)))

(declare-fun b!1258395 () Bool)

(declare-fun res!838823 () Bool)

(assert (=> b!1258395 (=> (not res!838823) (not e!715746))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1258395 (= res!838823 (and (= (size!40051 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40050 _keys!1118) (size!40051 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!50023 () Bool)

(assert (=> mapIsEmpty!50023 mapRes!50023))

(declare-fun b!1258396 () Bool)

(declare-fun res!838820 () Bool)

(assert (=> b!1258396 (=> (not res!838820) (not e!715746))))

(declare-datatypes ((List!28243 0))(
  ( (Nil!28240) (Cons!28239 (h!29448 (_ BitVec 64)) (t!41743 List!28243)) )
))
(declare-fun arrayNoDuplicates!0 (array!81923 (_ BitVec 32) List!28243) Bool)

(assert (=> b!1258396 (= res!838820 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28240))))

(declare-fun b!1258397 () Bool)

(assert (=> b!1258397 (= e!715747 (and e!715748 mapRes!50023))))

(declare-fun condMapEmpty!50023 () Bool)

(declare-fun mapDefault!50023 () ValueCell!15313)

