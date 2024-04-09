; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105884 () Bool)

(assert start!105884)

(declare-fun b_free!27389 () Bool)

(declare-fun b_next!27389 () Bool)

(assert (=> start!105884 (= b_free!27389 (not b_next!27389))))

(declare-fun tp!95699 () Bool)

(declare-fun b_and!45307 () Bool)

(assert (=> start!105884 (= tp!95699 b_and!45307)))

(declare-fun b!1260734 () Bool)

(declare-fun e!717490 () Bool)

(declare-fun tp_is_empty!32291 () Bool)

(assert (=> b!1260734 (= e!717490 tp_is_empty!32291)))

(declare-fun res!840247 () Bool)

(declare-fun e!717489 () Bool)

(assert (=> start!105884 (=> (not res!840247) (not e!717489))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105884 (= res!840247 (validMask!0 mask!1466))))

(assert (=> start!105884 e!717489))

(assert (=> start!105884 true))

(assert (=> start!105884 tp!95699))

(assert (=> start!105884 tp_is_empty!32291))

(declare-datatypes ((array!82187 0))(
  ( (array!82188 (arr!39642 (Array (_ BitVec 32) (_ BitVec 64))) (size!40179 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82187)

(declare-fun array_inv!30131 (array!82187) Bool)

(assert (=> start!105884 (array_inv!30131 _keys!1118)))

(declare-datatypes ((V!48419 0))(
  ( (V!48420 (val!16208 Int)) )
))
(declare-datatypes ((ValueCell!15382 0))(
  ( (ValueCellFull!15382 (v!18912 V!48419)) (EmptyCell!15382) )
))
(declare-datatypes ((array!82189 0))(
  ( (array!82190 (arr!39643 (Array (_ BitVec 32) ValueCell!15382)) (size!40180 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82189)

(declare-fun e!717487 () Bool)

(declare-fun array_inv!30132 (array!82189) Bool)

(assert (=> start!105884 (and (array_inv!30132 _values!914) e!717487)))

(declare-fun b!1260735 () Bool)

(declare-fun res!840250 () Bool)

(assert (=> b!1260735 (=> (not res!840250) (not e!717489))))

(declare-datatypes ((List!28339 0))(
  ( (Nil!28336) (Cons!28335 (h!29544 (_ BitVec 64)) (t!41845 List!28339)) )
))
(declare-fun arrayNoDuplicates!0 (array!82187 (_ BitVec 32) List!28339) Bool)

(assert (=> b!1260735 (= res!840250 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28336))))

(declare-fun b!1260736 () Bool)

(declare-fun res!840248 () Bool)

(assert (=> b!1260736 (=> (not res!840248) (not e!717489))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82187 (_ BitVec 32)) Bool)

(assert (=> b!1260736 (= res!840248 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1260737 () Bool)

(assert (=> b!1260737 (= e!717489 (not true))))

(declare-datatypes ((tuple2!21118 0))(
  ( (tuple2!21119 (_1!10569 (_ BitVec 64)) (_2!10569 V!48419)) )
))
(declare-datatypes ((List!28340 0))(
  ( (Nil!28337) (Cons!28336 (h!29545 tuple2!21118) (t!41846 List!28340)) )
))
(declare-datatypes ((ListLongMap!19003 0))(
  ( (ListLongMap!19004 (toList!9517 List!28340)) )
))
(declare-fun lt!571389 () ListLongMap!19003)

(declare-fun lt!571391 () ListLongMap!19003)

(assert (=> b!1260737 (= lt!571389 lt!571391)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!42003 0))(
  ( (Unit!42004) )
))
(declare-fun lt!571390 () Unit!42003)

(declare-fun minValueAfter!43 () V!48419)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48419)

(declare-fun minValueBefore!43 () V!48419)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1176 (array!82187 array!82189 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48419 V!48419 V!48419 V!48419 (_ BitVec 32) Int) Unit!42003)

(assert (=> b!1260737 (= lt!571390 (lemmaNoChangeToArrayThenSameMapNoExtras!1176 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5858 (array!82187 array!82189 (_ BitVec 32) (_ BitVec 32) V!48419 V!48419 (_ BitVec 32) Int) ListLongMap!19003)

(assert (=> b!1260737 (= lt!571391 (getCurrentListMapNoExtraKeys!5858 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1260737 (= lt!571389 (getCurrentListMapNoExtraKeys!5858 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!50239 () Bool)

(declare-fun mapRes!50239 () Bool)

(assert (=> mapIsEmpty!50239 mapRes!50239))

(declare-fun b!1260738 () Bool)

(declare-fun res!840249 () Bool)

(assert (=> b!1260738 (=> (not res!840249) (not e!717489))))

(assert (=> b!1260738 (= res!840249 (and (= (size!40180 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40179 _keys!1118) (size!40180 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!50239 () Bool)

(declare-fun tp!95700 () Bool)

(declare-fun e!717486 () Bool)

(assert (=> mapNonEmpty!50239 (= mapRes!50239 (and tp!95700 e!717486))))

(declare-fun mapValue!50239 () ValueCell!15382)

(declare-fun mapKey!50239 () (_ BitVec 32))

(declare-fun mapRest!50239 () (Array (_ BitVec 32) ValueCell!15382))

(assert (=> mapNonEmpty!50239 (= (arr!39643 _values!914) (store mapRest!50239 mapKey!50239 mapValue!50239))))

(declare-fun b!1260739 () Bool)

(assert (=> b!1260739 (= e!717486 tp_is_empty!32291)))

(declare-fun b!1260740 () Bool)

(assert (=> b!1260740 (= e!717487 (and e!717490 mapRes!50239))))

(declare-fun condMapEmpty!50239 () Bool)

(declare-fun mapDefault!50239 () ValueCell!15382)

