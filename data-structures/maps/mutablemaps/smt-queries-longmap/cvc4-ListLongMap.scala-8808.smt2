; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107112 () Bool)

(assert start!107112)

(declare-fun b_free!27581 () Bool)

(declare-fun b_next!27581 () Bool)

(assert (=> start!107112 (= b_free!27581 (not b_next!27581))))

(declare-fun tp!96971 () Bool)

(declare-fun b_and!45623 () Bool)

(assert (=> start!107112 (= tp!96971 b_and!45623)))

(declare-fun b!1269409 () Bool)

(declare-fun e!723546 () Bool)

(declare-fun tp_is_empty!32765 () Bool)

(assert (=> b!1269409 (= e!723546 tp_is_empty!32765)))

(declare-fun b!1269410 () Bool)

(declare-fun e!723547 () Bool)

(assert (=> b!1269410 (= e!723547 tp_is_empty!32765)))

(declare-fun b!1269411 () Bool)

(declare-fun res!844871 () Bool)

(declare-fun e!723545 () Bool)

(assert (=> b!1269411 (=> (not res!844871) (not e!723545))))

(declare-datatypes ((array!82765 0))(
  ( (array!82766 (arr!39915 (Array (_ BitVec 32) (_ BitVec 64))) (size!40452 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82765)

(declare-datatypes ((List!28603 0))(
  ( (Nil!28600) (Cons!28599 (h!29808 (_ BitVec 64)) (t!42139 List!28603)) )
))
(declare-fun arrayNoDuplicates!0 (array!82765 (_ BitVec 32) List!28603) Bool)

(assert (=> b!1269411 (= res!844871 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28600))))

(declare-fun b!1269412 () Bool)

(declare-fun res!844869 () Bool)

(assert (=> b!1269412 (=> (not res!844869) (not e!723545))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82765 (_ BitVec 32)) Bool)

(assert (=> b!1269412 (= res!844869 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun res!844870 () Bool)

(assert (=> start!107112 (=> (not res!844870) (not e!723545))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107112 (= res!844870 (validMask!0 mask!1730))))

(assert (=> start!107112 e!723545))

(declare-datatypes ((V!48879 0))(
  ( (V!48880 (val!16457 Int)) )
))
(declare-datatypes ((ValueCell!15529 0))(
  ( (ValueCellFull!15529 (v!19092 V!48879)) (EmptyCell!15529) )
))
(declare-datatypes ((array!82767 0))(
  ( (array!82768 (arr!39916 (Array (_ BitVec 32) ValueCell!15529)) (size!40453 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82767)

(declare-fun e!723548 () Bool)

(declare-fun array_inv!30329 (array!82767) Bool)

(assert (=> start!107112 (and (array_inv!30329 _values!1134) e!723548)))

(assert (=> start!107112 true))

(declare-fun array_inv!30330 (array!82765) Bool)

(assert (=> start!107112 (array_inv!30330 _keys!1364)))

(assert (=> start!107112 tp_is_empty!32765))

(assert (=> start!107112 tp!96971))

(declare-fun b!1269413 () Bool)

(declare-fun res!844867 () Bool)

(assert (=> b!1269413 (=> (not res!844867) (not e!723545))))

(declare-fun from!1698 () (_ BitVec 32))

(assert (=> b!1269413 (= res!844867 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40452 _keys!1364)) (bvslt from!1698 (size!40452 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!50728 () Bool)

(declare-fun mapRes!50728 () Bool)

(declare-fun tp!96970 () Bool)

(assert (=> mapNonEmpty!50728 (= mapRes!50728 (and tp!96970 e!723546))))

(declare-fun mapKey!50728 () (_ BitVec 32))

(declare-fun mapValue!50728 () ValueCell!15529)

(declare-fun mapRest!50728 () (Array (_ BitVec 32) ValueCell!15529))

(assert (=> mapNonEmpty!50728 (= (arr!39916 _values!1134) (store mapRest!50728 mapKey!50728 mapValue!50728))))

(declare-fun b!1269414 () Bool)

(assert (=> b!1269414 (= e!723545 (not true))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun minValueAfter!52 () V!48879)

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun minValueBefore!52 () V!48879)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48879)

(declare-fun zeroValueBefore!52 () V!48879)

(declare-datatypes ((tuple2!21466 0))(
  ( (tuple2!21467 (_1!10743 (_ BitVec 64)) (_2!10743 V!48879)) )
))
(declare-datatypes ((List!28604 0))(
  ( (Nil!28601) (Cons!28600 (h!29809 tuple2!21466) (t!42140 List!28604)) )
))
(declare-datatypes ((ListLongMap!19207 0))(
  ( (ListLongMap!19208 (toList!9619 List!28604)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5927 (array!82765 array!82767 (_ BitVec 32) (_ BitVec 32) V!48879 V!48879 (_ BitVec 32) Int) ListLongMap!19207)

(assert (=> b!1269414 (= (getCurrentListMapNoExtraKeys!5927 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5927 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42210 0))(
  ( (Unit!42211) )
))
(declare-fun lt!574520 () Unit!42210)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1223 (array!82765 array!82767 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48879 V!48879 V!48879 V!48879 (_ BitVec 32) Int) Unit!42210)

(assert (=> b!1269414 (= lt!574520 (lemmaNoChangeToArrayThenSameMapNoExtras!1223 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun b!1269415 () Bool)

(assert (=> b!1269415 (= e!723548 (and e!723547 mapRes!50728))))

(declare-fun condMapEmpty!50728 () Bool)

(declare-fun mapDefault!50728 () ValueCell!15529)

