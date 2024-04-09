; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107172 () Bool)

(assert start!107172)

(declare-fun b_free!27641 () Bool)

(declare-fun b_next!27641 () Bool)

(assert (=> start!107172 (= b_free!27641 (not b_next!27641))))

(declare-fun tp!97150 () Bool)

(declare-fun b_and!45683 () Bool)

(assert (=> start!107172 (= tp!97150 b_and!45683)))

(declare-fun mapIsEmpty!50818 () Bool)

(declare-fun mapRes!50818 () Bool)

(assert (=> mapIsEmpty!50818 mapRes!50818))

(declare-fun b!1270129 () Bool)

(declare-fun res!845321 () Bool)

(declare-fun e!723998 () Bool)

(assert (=> b!1270129 (=> (not res!845321) (not e!723998))))

(declare-datatypes ((V!48959 0))(
  ( (V!48960 (val!16487 Int)) )
))
(declare-datatypes ((ValueCell!15559 0))(
  ( (ValueCellFull!15559 (v!19122 V!48959)) (EmptyCell!15559) )
))
(declare-datatypes ((array!82883 0))(
  ( (array!82884 (arr!39974 (Array (_ BitVec 32) ValueCell!15559)) (size!40511 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82883)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82885 0))(
  ( (array!82886 (arr!39975 (Array (_ BitVec 32) (_ BitVec 64))) (size!40512 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82885)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1270129 (= res!845321 (and (= (size!40511 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40512 _keys!1364) (size!40511 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun res!845319 () Bool)

(assert (=> start!107172 (=> (not res!845319) (not e!723998))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107172 (= res!845319 (validMask!0 mask!1730))))

(assert (=> start!107172 e!723998))

(declare-fun e!723994 () Bool)

(declare-fun array_inv!30363 (array!82883) Bool)

(assert (=> start!107172 (and (array_inv!30363 _values!1134) e!723994)))

(assert (=> start!107172 true))

(declare-fun array_inv!30364 (array!82885) Bool)

(assert (=> start!107172 (array_inv!30364 _keys!1364)))

(declare-fun tp_is_empty!32825 () Bool)

(assert (=> start!107172 tp_is_empty!32825))

(assert (=> start!107172 tp!97150))

(declare-fun b!1270130 () Bool)

(declare-fun e!723995 () Bool)

(assert (=> b!1270130 (= e!723995 tp_is_empty!32825)))

(declare-fun b!1270131 () Bool)

(assert (=> b!1270131 (= e!723998 (not true))))

(declare-fun from!1698 () (_ BitVec 32))

(declare-fun minValueAfter!52 () V!48959)

(declare-fun minValueBefore!52 () V!48959)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48959)

(declare-fun zeroValueBefore!52 () V!48959)

(declare-datatypes ((tuple2!21506 0))(
  ( (tuple2!21507 (_1!10763 (_ BitVec 64)) (_2!10763 V!48959)) )
))
(declare-datatypes ((List!28643 0))(
  ( (Nil!28640) (Cons!28639 (h!29848 tuple2!21506) (t!42179 List!28643)) )
))
(declare-datatypes ((ListLongMap!19247 0))(
  ( (ListLongMap!19248 (toList!9639 List!28643)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5947 (array!82885 array!82883 (_ BitVec 32) (_ BitVec 32) V!48959 V!48959 (_ BitVec 32) Int) ListLongMap!19247)

(assert (=> b!1270131 (= (getCurrentListMapNoExtraKeys!5947 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5947 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42250 0))(
  ( (Unit!42251) )
))
(declare-fun lt!574610 () Unit!42250)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1243 (array!82885 array!82883 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48959 V!48959 V!48959 V!48959 (_ BitVec 32) Int) Unit!42250)

(assert (=> b!1270131 (= lt!574610 (lemmaNoChangeToArrayThenSameMapNoExtras!1243 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun b!1270132 () Bool)

(declare-fun res!845320 () Bool)

(assert (=> b!1270132 (=> (not res!845320) (not e!723998))))

(assert (=> b!1270132 (= res!845320 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40512 _keys!1364)) (bvslt from!1698 (size!40512 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun b!1270133 () Bool)

(declare-fun res!845317 () Bool)

(assert (=> b!1270133 (=> (not res!845317) (not e!723998))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82885 (_ BitVec 32)) Bool)

(assert (=> b!1270133 (= res!845317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapNonEmpty!50818 () Bool)

(declare-fun tp!97151 () Bool)

(assert (=> mapNonEmpty!50818 (= mapRes!50818 (and tp!97151 e!723995))))

(declare-fun mapRest!50818 () (Array (_ BitVec 32) ValueCell!15559))

(declare-fun mapKey!50818 () (_ BitVec 32))

(declare-fun mapValue!50818 () ValueCell!15559)

(assert (=> mapNonEmpty!50818 (= (arr!39974 _values!1134) (store mapRest!50818 mapKey!50818 mapValue!50818))))

(declare-fun b!1270134 () Bool)

(declare-fun e!723997 () Bool)

(assert (=> b!1270134 (= e!723994 (and e!723997 mapRes!50818))))

(declare-fun condMapEmpty!50818 () Bool)

(declare-fun mapDefault!50818 () ValueCell!15559)

