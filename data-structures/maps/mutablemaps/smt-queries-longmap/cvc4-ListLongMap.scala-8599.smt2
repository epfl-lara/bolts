; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104864 () Bool)

(assert start!104864)

(declare-fun b_free!26633 () Bool)

(declare-fun b_next!26633 () Bool)

(assert (=> start!104864 (= b_free!26633 (not b_next!26633))))

(declare-fun tp!93389 () Bool)

(declare-fun b_and!44411 () Bool)

(assert (=> start!104864 (= tp!93389 b_and!44411)))

(declare-fun b!1249438 () Bool)

(declare-fun res!833543 () Bool)

(declare-fun e!709178 () Bool)

(assert (=> b!1249438 (=> (not res!833543) (not e!709178))))

(declare-datatypes ((array!80727 0))(
  ( (array!80728 (arr!38926 (Array (_ BitVec 32) (_ BitVec 64))) (size!39463 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80727)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80727 (_ BitVec 32)) Bool)

(assert (=> b!1249438 (= res!833543 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1249439 () Bool)

(declare-fun e!709179 () Bool)

(declare-fun tp_is_empty!31535 () Bool)

(assert (=> b!1249439 (= e!709179 tp_is_empty!31535)))

(declare-fun b!1249440 () Bool)

(declare-fun res!833541 () Bool)

(assert (=> b!1249440 (=> (not res!833541) (not e!709178))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((V!47411 0))(
  ( (V!47412 (val!15830 Int)) )
))
(declare-datatypes ((ValueCell!15004 0))(
  ( (ValueCellFull!15004 (v!18526 V!47411)) (EmptyCell!15004) )
))
(declare-datatypes ((array!80729 0))(
  ( (array!80730 (arr!38927 (Array (_ BitVec 32) ValueCell!15004)) (size!39464 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80729)

(assert (=> b!1249440 (= res!833541 (and (= (size!39464 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39463 _keys!1118) (size!39464 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1249441 () Bool)

(declare-fun e!709182 () Bool)

(assert (=> b!1249441 (= e!709182 tp_is_empty!31535)))

(declare-fun mapNonEmpty!49063 () Bool)

(declare-fun mapRes!49063 () Bool)

(declare-fun tp!93390 () Bool)

(assert (=> mapNonEmpty!49063 (= mapRes!49063 (and tp!93390 e!709179))))

(declare-fun mapValue!49063 () ValueCell!15004)

(declare-fun mapKey!49063 () (_ BitVec 32))

(declare-fun mapRest!49063 () (Array (_ BitVec 32) ValueCell!15004))

(assert (=> mapNonEmpty!49063 (= (arr!38927 _values!914) (store mapRest!49063 mapKey!49063 mapValue!49063))))

(declare-fun b!1249442 () Bool)

(assert (=> b!1249442 (= e!709178 (not true))))

(declare-datatypes ((tuple2!20534 0))(
  ( (tuple2!20535 (_1!10277 (_ BitVec 64)) (_2!10277 V!47411)) )
))
(declare-datatypes ((List!27797 0))(
  ( (Nil!27794) (Cons!27793 (h!29002 tuple2!20534) (t!41275 List!27797)) )
))
(declare-datatypes ((ListLongMap!18419 0))(
  ( (ListLongMap!18420 (toList!9225 List!27797)) )
))
(declare-fun lt!563709 () ListLongMap!18419)

(declare-fun lt!563708 () ListLongMap!18419)

(assert (=> b!1249442 (= lt!563709 lt!563708)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47411)

(declare-fun zeroValue!871 () V!47411)

(declare-fun minValueBefore!43 () V!47411)

(declare-datatypes ((Unit!41433 0))(
  ( (Unit!41434) )
))
(declare-fun lt!563707 () Unit!41433)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!926 (array!80727 array!80729 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47411 V!47411 V!47411 V!47411 (_ BitVec 32) Int) Unit!41433)

(assert (=> b!1249442 (= lt!563707 (lemmaNoChangeToArrayThenSameMapNoExtras!926 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5608 (array!80727 array!80729 (_ BitVec 32) (_ BitVec 32) V!47411 V!47411 (_ BitVec 32) Int) ListLongMap!18419)

(assert (=> b!1249442 (= lt!563708 (getCurrentListMapNoExtraKeys!5608 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1249442 (= lt!563709 (getCurrentListMapNoExtraKeys!5608 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1249443 () Bool)

(declare-fun res!833544 () Bool)

(assert (=> b!1249443 (=> (not res!833544) (not e!709178))))

(declare-datatypes ((List!27798 0))(
  ( (Nil!27795) (Cons!27794 (h!29003 (_ BitVec 64)) (t!41276 List!27798)) )
))
(declare-fun arrayNoDuplicates!0 (array!80727 (_ BitVec 32) List!27798) Bool)

(assert (=> b!1249443 (= res!833544 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27795))))

(declare-fun b!1249444 () Bool)

(declare-fun e!709180 () Bool)

(assert (=> b!1249444 (= e!709180 (and e!709182 mapRes!49063))))

(declare-fun condMapEmpty!49063 () Bool)

(declare-fun mapDefault!49063 () ValueCell!15004)

