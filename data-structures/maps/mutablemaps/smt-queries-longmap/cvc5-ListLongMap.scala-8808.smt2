; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107108 () Bool)

(assert start!107108)

(declare-fun b_free!27577 () Bool)

(declare-fun b_next!27577 () Bool)

(assert (=> start!107108 (= b_free!27577 (not b_next!27577))))

(declare-fun tp!96959 () Bool)

(declare-fun b_and!45619 () Bool)

(assert (=> start!107108 (= tp!96959 b_and!45619)))

(declare-fun b!1269361 () Bool)

(declare-fun e!723515 () Bool)

(declare-fun tp_is_empty!32761 () Bool)

(assert (=> b!1269361 (= e!723515 tp_is_empty!32761)))

(declare-fun b!1269362 () Bool)

(declare-fun res!844838 () Bool)

(declare-fun e!723516 () Bool)

(assert (=> b!1269362 (=> (not res!844838) (not e!723516))))

(declare-datatypes ((V!48875 0))(
  ( (V!48876 (val!16455 Int)) )
))
(declare-datatypes ((ValueCell!15527 0))(
  ( (ValueCellFull!15527 (v!19090 V!48875)) (EmptyCell!15527) )
))
(declare-datatypes ((array!82757 0))(
  ( (array!82758 (arr!39911 (Array (_ BitVec 32) ValueCell!15527)) (size!40448 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82757)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82759 0))(
  ( (array!82760 (arr!39912 (Array (_ BitVec 32) (_ BitVec 64))) (size!40449 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82759)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1269362 (= res!844838 (and (= (size!40448 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40449 _keys!1364) (size!40448 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1269363 () Bool)

(declare-fun res!844841 () Bool)

(assert (=> b!1269363 (=> (not res!844841) (not e!723516))))

(declare-fun from!1698 () (_ BitVec 32))

(assert (=> b!1269363 (= res!844841 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40449 _keys!1364)) (bvslt from!1698 (size!40449 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun b!1269364 () Bool)

(assert (=> b!1269364 (= e!723516 (not true))))

(declare-fun minValueAfter!52 () V!48875)

(declare-fun minValueBefore!52 () V!48875)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48875)

(declare-fun zeroValueBefore!52 () V!48875)

(declare-datatypes ((tuple2!21462 0))(
  ( (tuple2!21463 (_1!10741 (_ BitVec 64)) (_2!10741 V!48875)) )
))
(declare-datatypes ((List!28600 0))(
  ( (Nil!28597) (Cons!28596 (h!29805 tuple2!21462) (t!42136 List!28600)) )
))
(declare-datatypes ((ListLongMap!19203 0))(
  ( (ListLongMap!19204 (toList!9617 List!28600)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5925 (array!82759 array!82757 (_ BitVec 32) (_ BitVec 32) V!48875 V!48875 (_ BitVec 32) Int) ListLongMap!19203)

(assert (=> b!1269364 (= (getCurrentListMapNoExtraKeys!5925 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5925 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42206 0))(
  ( (Unit!42207) )
))
(declare-fun lt!574514 () Unit!42206)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1221 (array!82759 array!82757 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48875 V!48875 V!48875 V!48875 (_ BitVec 32) Int) Unit!42206)

(assert (=> b!1269364 (= lt!574514 (lemmaNoChangeToArrayThenSameMapNoExtras!1221 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun b!1269365 () Bool)

(declare-fun e!723517 () Bool)

(declare-fun e!723514 () Bool)

(declare-fun mapRes!50722 () Bool)

(assert (=> b!1269365 (= e!723517 (and e!723514 mapRes!50722))))

(declare-fun condMapEmpty!50722 () Bool)

(declare-fun mapDefault!50722 () ValueCell!15527)

