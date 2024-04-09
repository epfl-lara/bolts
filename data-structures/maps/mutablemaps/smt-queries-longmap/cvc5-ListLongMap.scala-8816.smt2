; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107156 () Bool)

(assert start!107156)

(declare-fun b_free!27625 () Bool)

(declare-fun b_next!27625 () Bool)

(assert (=> start!107156 (= b_free!27625 (not b_next!27625))))

(declare-fun tp!97103 () Bool)

(declare-fun b_and!45667 () Bool)

(assert (=> start!107156 (= tp!97103 b_and!45667)))

(declare-fun res!845200 () Bool)

(declare-fun e!723875 () Bool)

(assert (=> start!107156 (=> (not res!845200) (not e!723875))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107156 (= res!845200 (validMask!0 mask!1730))))

(assert (=> start!107156 e!723875))

(declare-datatypes ((V!48939 0))(
  ( (V!48940 (val!16479 Int)) )
))
(declare-datatypes ((ValueCell!15551 0))(
  ( (ValueCellFull!15551 (v!19114 V!48939)) (EmptyCell!15551) )
))
(declare-datatypes ((array!82851 0))(
  ( (array!82852 (arr!39958 (Array (_ BitVec 32) ValueCell!15551)) (size!40495 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82851)

(declare-fun e!723878 () Bool)

(declare-fun array_inv!30353 (array!82851) Bool)

(assert (=> start!107156 (and (array_inv!30353 _values!1134) e!723878)))

(assert (=> start!107156 true))

(declare-datatypes ((array!82853 0))(
  ( (array!82854 (arr!39959 (Array (_ BitVec 32) (_ BitVec 64))) (size!40496 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82853)

(declare-fun array_inv!30354 (array!82853) Bool)

(assert (=> start!107156 (array_inv!30354 _keys!1364)))

(declare-fun tp_is_empty!32809 () Bool)

(assert (=> start!107156 tp_is_empty!32809))

(assert (=> start!107156 tp!97103))

(declare-fun b!1269937 () Bool)

(assert (=> b!1269937 (= e!723875 (not true))))

(declare-fun from!1698 () (_ BitVec 32))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun minValueAfter!52 () V!48939)

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun minValueBefore!52 () V!48939)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48939)

(declare-fun zeroValueBefore!52 () V!48939)

(declare-datatypes ((tuple2!21494 0))(
  ( (tuple2!21495 (_1!10757 (_ BitVec 64)) (_2!10757 V!48939)) )
))
(declare-datatypes ((List!28630 0))(
  ( (Nil!28627) (Cons!28626 (h!29835 tuple2!21494) (t!42166 List!28630)) )
))
(declare-datatypes ((ListLongMap!19235 0))(
  ( (ListLongMap!19236 (toList!9633 List!28630)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5941 (array!82853 array!82851 (_ BitVec 32) (_ BitVec 32) V!48939 V!48939 (_ BitVec 32) Int) ListLongMap!19235)

(assert (=> b!1269937 (= (getCurrentListMapNoExtraKeys!5941 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5941 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42238 0))(
  ( (Unit!42239) )
))
(declare-fun lt!574586 () Unit!42238)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1237 (array!82853 array!82851 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48939 V!48939 V!48939 V!48939 (_ BitVec 32) Int) Unit!42238)

(assert (=> b!1269937 (= lt!574586 (lemmaNoChangeToArrayThenSameMapNoExtras!1237 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun b!1269938 () Bool)

(declare-fun e!723874 () Bool)

(assert (=> b!1269938 (= e!723874 tp_is_empty!32809)))

(declare-fun b!1269939 () Bool)

(declare-fun res!845197 () Bool)

(assert (=> b!1269939 (=> (not res!845197) (not e!723875))))

(declare-datatypes ((List!28631 0))(
  ( (Nil!28628) (Cons!28627 (h!29836 (_ BitVec 64)) (t!42167 List!28631)) )
))
(declare-fun arrayNoDuplicates!0 (array!82853 (_ BitVec 32) List!28631) Bool)

(assert (=> b!1269939 (= res!845197 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28628))))

(declare-fun b!1269940 () Bool)

(declare-fun res!845201 () Bool)

(assert (=> b!1269940 (=> (not res!845201) (not e!723875))))

(assert (=> b!1269940 (= res!845201 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40496 _keys!1364)) (bvslt from!1698 (size!40496 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun b!1269941 () Bool)

(declare-fun res!845199 () Bool)

(assert (=> b!1269941 (=> (not res!845199) (not e!723875))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82853 (_ BitVec 32)) Bool)

(assert (=> b!1269941 (= res!845199 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapIsEmpty!50794 () Bool)

(declare-fun mapRes!50794 () Bool)

(assert (=> mapIsEmpty!50794 mapRes!50794))

(declare-fun b!1269942 () Bool)

(declare-fun res!845198 () Bool)

(assert (=> b!1269942 (=> (not res!845198) (not e!723875))))

(assert (=> b!1269942 (= res!845198 (and (= (size!40495 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40496 _keys!1364) (size!40495 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1269943 () Bool)

(declare-fun e!723877 () Bool)

(assert (=> b!1269943 (= e!723877 tp_is_empty!32809)))

(declare-fun b!1269944 () Bool)

(assert (=> b!1269944 (= e!723878 (and e!723874 mapRes!50794))))

(declare-fun condMapEmpty!50794 () Bool)

(declare-fun mapDefault!50794 () ValueCell!15551)

