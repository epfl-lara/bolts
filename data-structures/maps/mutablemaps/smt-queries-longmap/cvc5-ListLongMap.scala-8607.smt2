; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104922 () Bool)

(assert start!104922)

(declare-fun b_free!26677 () Bool)

(declare-fun b_next!26677 () Bool)

(assert (=> start!104922 (= b_free!26677 (not b_next!26677))))

(declare-fun tp!93524 () Bool)

(declare-fun b_and!44463 () Bool)

(assert (=> start!104922 (= tp!93524 b_and!44463)))

(declare-fun b!1250034 () Bool)

(declare-fun res!833890 () Bool)

(declare-fun e!709614 () Bool)

(assert (=> b!1250034 (=> (not res!833890) (not e!709614))))

(declare-datatypes ((array!80811 0))(
  ( (array!80812 (arr!38967 (Array (_ BitVec 32) (_ BitVec 64))) (size!39504 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80811)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80811 (_ BitVec 32)) Bool)

(assert (=> b!1250034 (= res!833890 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1250035 () Bool)

(declare-fun e!709615 () Bool)

(declare-fun tp_is_empty!31579 () Bool)

(assert (=> b!1250035 (= e!709615 tp_is_empty!31579)))

(declare-fun b!1250036 () Bool)

(declare-fun e!709618 () Bool)

(assert (=> b!1250036 (= e!709618 tp_is_empty!31579)))

(declare-fun res!833887 () Bool)

(assert (=> start!104922 (=> (not res!833887) (not e!709614))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104922 (= res!833887 (validMask!0 mask!1466))))

(assert (=> start!104922 e!709614))

(assert (=> start!104922 true))

(assert (=> start!104922 tp!93524))

(assert (=> start!104922 tp_is_empty!31579))

(declare-fun array_inv!29659 (array!80811) Bool)

(assert (=> start!104922 (array_inv!29659 _keys!1118)))

(declare-datatypes ((V!47471 0))(
  ( (V!47472 (val!15852 Int)) )
))
(declare-datatypes ((ValueCell!15026 0))(
  ( (ValueCellFull!15026 (v!18548 V!47471)) (EmptyCell!15026) )
))
(declare-datatypes ((array!80813 0))(
  ( (array!80814 (arr!38968 (Array (_ BitVec 32) ValueCell!15026)) (size!39505 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80813)

(declare-fun e!709613 () Bool)

(declare-fun array_inv!29660 (array!80813) Bool)

(assert (=> start!104922 (and (array_inv!29660 _values!914) e!709613)))

(declare-fun b!1250037 () Bool)

(declare-fun e!709616 () Bool)

(declare-fun e!709617 () Bool)

(assert (=> b!1250037 (= e!709616 e!709617)))

(declare-fun res!833885 () Bool)

(assert (=> b!1250037 (=> res!833885 e!709617)))

(declare-datatypes ((tuple2!20566 0))(
  ( (tuple2!20567 (_1!10293 (_ BitVec 64)) (_2!10293 V!47471)) )
))
(declare-datatypes ((List!27826 0))(
  ( (Nil!27823) (Cons!27822 (h!29031 tuple2!20566) (t!41306 List!27826)) )
))
(declare-datatypes ((ListLongMap!18451 0))(
  ( (ListLongMap!18452 (toList!9241 List!27826)) )
))
(declare-fun lt!563998 () ListLongMap!18451)

(declare-fun contains!7497 (ListLongMap!18451 (_ BitVec 64)) Bool)

(assert (=> b!1250037 (= res!833885 (contains!7497 lt!563998 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47471)

(declare-fun minValueBefore!43 () V!47471)

(declare-fun defaultEntry!922 () Int)

(declare-fun getCurrentListMap!4463 (array!80811 array!80813 (_ BitVec 32) (_ BitVec 32) V!47471 V!47471 (_ BitVec 32) Int) ListLongMap!18451)

(assert (=> b!1250037 (= lt!563998 (getCurrentListMap!4463 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49132 () Bool)

(declare-fun mapRes!49132 () Bool)

(assert (=> mapIsEmpty!49132 mapRes!49132))

(declare-fun b!1250038 () Bool)

(assert (=> b!1250038 (= e!709614 (not e!709616))))

(declare-fun res!833889 () Bool)

(assert (=> b!1250038 (=> res!833889 e!709616)))

(assert (=> b!1250038 (= res!833889 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!563996 () ListLongMap!18451)

(declare-fun lt!563997 () ListLongMap!18451)

(assert (=> b!1250038 (= lt!563996 lt!563997)))

(declare-fun minValueAfter!43 () V!47471)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((Unit!41463 0))(
  ( (Unit!41464) )
))
(declare-fun lt!563995 () Unit!41463)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!941 (array!80811 array!80813 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47471 V!47471 V!47471 V!47471 (_ BitVec 32) Int) Unit!41463)

(assert (=> b!1250038 (= lt!563995 (lemmaNoChangeToArrayThenSameMapNoExtras!941 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5623 (array!80811 array!80813 (_ BitVec 32) (_ BitVec 32) V!47471 V!47471 (_ BitVec 32) Int) ListLongMap!18451)

(assert (=> b!1250038 (= lt!563997 (getCurrentListMapNoExtraKeys!5623 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1250038 (= lt!563996 (getCurrentListMapNoExtraKeys!5623 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1250039 () Bool)

(assert (=> b!1250039 (= e!709613 (and e!709618 mapRes!49132))))

(declare-fun condMapEmpty!49132 () Bool)

(declare-fun mapDefault!49132 () ValueCell!15026)

