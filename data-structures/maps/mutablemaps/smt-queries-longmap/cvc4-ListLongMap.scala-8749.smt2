; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106232 () Bool)

(assert start!106232)

(declare-fun b_free!27533 () Bool)

(declare-fun b_next!27533 () Bool)

(assert (=> start!106232 (= b_free!27533 (not b_next!27533))))

(declare-fun tp!96164 () Bool)

(declare-fun b_and!45575 () Bool)

(assert (=> start!106232 (= tp!96164 b_and!45575)))

(declare-fun b!1264275 () Bool)

(declare-fun e!719924 () Bool)

(declare-fun tp_is_empty!32435 () Bool)

(assert (=> b!1264275 (= e!719924 tp_is_empty!32435)))

(declare-fun b!1264276 () Bool)

(declare-datatypes ((V!48611 0))(
  ( (V!48612 (val!16280 Int)) )
))
(declare-datatypes ((tuple2!21228 0))(
  ( (tuple2!21229 (_1!10624 (_ BitVec 64)) (_2!10624 V!48611)) )
))
(declare-datatypes ((List!28445 0))(
  ( (Nil!28442) (Cons!28441 (h!29650 tuple2!21228) (t!41973 List!28445)) )
))
(declare-datatypes ((ListLongMap!19113 0))(
  ( (ListLongMap!19114 (toList!9572 List!28445)) )
))
(declare-fun lt!573644 () ListLongMap!19113)

(declare-fun lt!573645 () ListLongMap!19113)

(declare-fun e!719922 () Bool)

(declare-fun lt!573648 () tuple2!21228)

(declare-fun +!4236 (ListLongMap!19113 tuple2!21228) ListLongMap!19113)

(assert (=> b!1264276 (= e!719922 (= lt!573645 (+!4236 lt!573644 lt!573648)))))

(declare-fun mapIsEmpty!50488 () Bool)

(declare-fun mapRes!50488 () Bool)

(assert (=> mapIsEmpty!50488 mapRes!50488))

(declare-fun b!1264278 () Bool)

(declare-fun res!842059 () Bool)

(declare-fun e!719920 () Bool)

(assert (=> b!1264278 (=> (not res!842059) (not e!719920))))

(declare-datatypes ((array!82483 0))(
  ( (array!82484 (arr!39779 (Array (_ BitVec 32) (_ BitVec 64))) (size!40316 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82483)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82483 (_ BitVec 32)) Bool)

(assert (=> b!1264278 (= res!842059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1264279 () Bool)

(declare-fun e!719925 () Bool)

(declare-fun lt!573646 () ListLongMap!19113)

(declare-fun -!2151 (ListLongMap!19113 (_ BitVec 64)) ListLongMap!19113)

(assert (=> b!1264279 (= e!719925 (= (-!2151 lt!573646 #b1000000000000000000000000000000000000000000000000000000000000000) lt!573645))))

(declare-fun lt!573642 () ListLongMap!19113)

(declare-fun lt!573650 () ListLongMap!19113)

(assert (=> b!1264279 (= (-!2151 lt!573642 #b1000000000000000000000000000000000000000000000000000000000000000) lt!573650)))

(declare-datatypes ((Unit!42091 0))(
  ( (Unit!42092) )
))
(declare-fun lt!573649 () Unit!42091)

(declare-fun minValueBefore!43 () V!48611)

(declare-fun addThenRemoveForNewKeyIsSame!372 (ListLongMap!19113 (_ BitVec 64) V!48611) Unit!42091)

(assert (=> b!1264279 (= lt!573649 (addThenRemoveForNewKeyIsSame!372 lt!573650 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(assert (=> b!1264279 e!719922))

(declare-fun res!842058 () Bool)

(assert (=> b!1264279 (=> (not res!842058) (not e!719922))))

(assert (=> b!1264279 (= res!842058 (= lt!573646 lt!573642))))

(assert (=> b!1264279 (= lt!573642 (+!4236 lt!573650 (tuple2!21229 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun lt!573647 () ListLongMap!19113)

(assert (=> b!1264279 (= lt!573650 (+!4236 lt!573647 lt!573648))))

(declare-fun zeroValue!871 () V!48611)

(assert (=> b!1264279 (= lt!573648 (tuple2!21229 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48611)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((ValueCell!15454 0))(
  ( (ValueCellFull!15454 (v!18994 V!48611)) (EmptyCell!15454) )
))
(declare-datatypes ((array!82485 0))(
  ( (array!82486 (arr!39780 (Array (_ BitVec 32) ValueCell!15454)) (size!40317 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82485)

(declare-fun getCurrentListMap!4673 (array!82483 array!82485 (_ BitVec 32) (_ BitVec 32) V!48611 V!48611 (_ BitVec 32) Int) ListLongMap!19113)

(assert (=> b!1264279 (= lt!573645 (getCurrentListMap!4673 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1264279 (= lt!573646 (getCurrentListMap!4673 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!50488 () Bool)

(declare-fun tp!96165 () Bool)

(assert (=> mapNonEmpty!50488 (= mapRes!50488 (and tp!96165 e!719924))))

(declare-fun mapKey!50488 () (_ BitVec 32))

(declare-fun mapRest!50488 () (Array (_ BitVec 32) ValueCell!15454))

(declare-fun mapValue!50488 () ValueCell!15454)

(assert (=> mapNonEmpty!50488 (= (arr!39780 _values!914) (store mapRest!50488 mapKey!50488 mapValue!50488))))

(declare-fun b!1264280 () Bool)

(declare-fun e!719921 () Bool)

(declare-fun e!719926 () Bool)

(assert (=> b!1264280 (= e!719921 (and e!719926 mapRes!50488))))

(declare-fun condMapEmpty!50488 () Bool)

(declare-fun mapDefault!50488 () ValueCell!15454)

