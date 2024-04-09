; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107178 () Bool)

(assert start!107178)

(declare-fun b_free!27647 () Bool)

(declare-fun b_next!27647 () Bool)

(assert (=> start!107178 (= b_free!27647 (not b_next!27647))))

(declare-fun tp!97169 () Bool)

(declare-fun b_and!45689 () Bool)

(assert (=> start!107178 (= tp!97169 b_and!45689)))

(declare-fun mapNonEmpty!50827 () Bool)

(declare-fun mapRes!50827 () Bool)

(declare-fun tp!97168 () Bool)

(declare-fun e!724040 () Bool)

(assert (=> mapNonEmpty!50827 (= mapRes!50827 (and tp!97168 e!724040))))

(declare-datatypes ((V!48967 0))(
  ( (V!48968 (val!16490 Int)) )
))
(declare-datatypes ((ValueCell!15562 0))(
  ( (ValueCellFull!15562 (v!19125 V!48967)) (EmptyCell!15562) )
))
(declare-datatypes ((array!82893 0))(
  ( (array!82894 (arr!39979 (Array (_ BitVec 32) ValueCell!15562)) (size!40516 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82893)

(declare-fun mapValue!50827 () ValueCell!15562)

(declare-fun mapRest!50827 () (Array (_ BitVec 32) ValueCell!15562))

(declare-fun mapKey!50827 () (_ BitVec 32))

(assert (=> mapNonEmpty!50827 (= (arr!39979 _values!1134) (store mapRest!50827 mapKey!50827 mapValue!50827))))

(declare-fun b!1270201 () Bool)

(declare-fun e!724042 () Bool)

(declare-fun tp_is_empty!32831 () Bool)

(assert (=> b!1270201 (= e!724042 tp_is_empty!32831)))

(declare-fun b!1270202 () Bool)

(declare-fun res!845362 () Bool)

(declare-fun e!724039 () Bool)

(assert (=> b!1270202 (=> (not res!845362) (not e!724039))))

(declare-fun from!1698 () (_ BitVec 32))

(declare-datatypes ((array!82895 0))(
  ( (array!82896 (arr!39980 (Array (_ BitVec 32) (_ BitVec 64))) (size!40517 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82895)

(assert (=> b!1270202 (= res!845362 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40517 _keys!1364)) (bvslt from!1698 (size!40517 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun b!1270204 () Bool)

(assert (=> b!1270204 (= e!724040 tp_is_empty!32831)))

(declare-fun b!1270205 () Bool)

(assert (=> b!1270205 (= e!724039 (not true))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun minValueAfter!52 () V!48967)

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun minValueBefore!52 () V!48967)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48967)

(declare-fun zeroValueBefore!52 () V!48967)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-datatypes ((tuple2!21510 0))(
  ( (tuple2!21511 (_1!10765 (_ BitVec 64)) (_2!10765 V!48967)) )
))
(declare-datatypes ((List!28646 0))(
  ( (Nil!28643) (Cons!28642 (h!29851 tuple2!21510) (t!42182 List!28646)) )
))
(declare-datatypes ((ListLongMap!19251 0))(
  ( (ListLongMap!19252 (toList!9641 List!28646)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5949 (array!82895 array!82893 (_ BitVec 32) (_ BitVec 32) V!48967 V!48967 (_ BitVec 32) Int) ListLongMap!19251)

(assert (=> b!1270205 (= (getCurrentListMapNoExtraKeys!5949 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5949 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42254 0))(
  ( (Unit!42255) )
))
(declare-fun lt!574619 () Unit!42254)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1245 (array!82895 array!82893 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48967 V!48967 V!48967 V!48967 (_ BitVec 32) Int) Unit!42254)

(assert (=> b!1270205 (= lt!574619 (lemmaNoChangeToArrayThenSameMapNoExtras!1245 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun b!1270206 () Bool)

(declare-fun res!845365 () Bool)

(assert (=> b!1270206 (=> (not res!845365) (not e!724039))))

(declare-datatypes ((List!28647 0))(
  ( (Nil!28644) (Cons!28643 (h!29852 (_ BitVec 64)) (t!42183 List!28647)) )
))
(declare-fun arrayNoDuplicates!0 (array!82895 (_ BitVec 32) List!28647) Bool)

(assert (=> b!1270206 (= res!845365 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28644))))

(declare-fun mapIsEmpty!50827 () Bool)

(assert (=> mapIsEmpty!50827 mapRes!50827))

(declare-fun b!1270207 () Bool)

(declare-fun res!845363 () Bool)

(assert (=> b!1270207 (=> (not res!845363) (not e!724039))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82895 (_ BitVec 32)) Bool)

(assert (=> b!1270207 (= res!845363 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1270208 () Bool)

(declare-fun res!845366 () Bool)

(assert (=> b!1270208 (=> (not res!845366) (not e!724039))))

(assert (=> b!1270208 (= res!845366 (and (= (size!40516 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40517 _keys!1364) (size!40516 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1270203 () Bool)

(declare-fun e!724041 () Bool)

(assert (=> b!1270203 (= e!724041 (and e!724042 mapRes!50827))))

(declare-fun condMapEmpty!50827 () Bool)

(declare-fun mapDefault!50827 () ValueCell!15562)

