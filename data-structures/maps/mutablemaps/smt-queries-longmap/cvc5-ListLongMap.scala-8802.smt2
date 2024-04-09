; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107072 () Bool)

(assert start!107072)

(declare-fun b_free!27541 () Bool)

(declare-fun b_next!27541 () Bool)

(assert (=> start!107072 (= b_free!27541 (not b_next!27541))))

(declare-fun tp!96850 () Bool)

(declare-fun b_and!45583 () Bool)

(assert (=> start!107072 (= tp!96850 b_and!45583)))

(declare-fun b!1268930 () Bool)

(declare-fun res!844567 () Bool)

(declare-fun e!723244 () Bool)

(assert (=> b!1268930 (=> (not res!844567) (not e!723244))))

(declare-datatypes ((array!82693 0))(
  ( (array!82694 (arr!39879 (Array (_ BitVec 32) (_ BitVec 64))) (size!40416 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82693)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82693 (_ BitVec 32)) Bool)

(assert (=> b!1268930 (= res!844567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1268931 () Bool)

(assert (=> b!1268931 (= e!723244 (not true))))

(declare-datatypes ((V!48827 0))(
  ( (V!48828 (val!16437 Int)) )
))
(declare-datatypes ((ValueCell!15509 0))(
  ( (ValueCellFull!15509 (v!19072 V!48827)) (EmptyCell!15509) )
))
(declare-datatypes ((array!82695 0))(
  ( (array!82696 (arr!39880 (Array (_ BitVec 32) ValueCell!15509)) (size!40417 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82695)

(declare-fun from!1698 () (_ BitVec 32))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun minValueBefore!52 () V!48827)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48827)

(declare-fun zeroValueBefore!52 () V!48827)

(declare-fun minValueAfter!52 () V!48827)

(declare-datatypes ((tuple2!21440 0))(
  ( (tuple2!21441 (_1!10730 (_ BitVec 64)) (_2!10730 V!48827)) )
))
(declare-datatypes ((List!28579 0))(
  ( (Nil!28576) (Cons!28575 (h!29784 tuple2!21440) (t!42115 List!28579)) )
))
(declare-datatypes ((ListLongMap!19181 0))(
  ( (ListLongMap!19182 (toList!9606 List!28579)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5914 (array!82693 array!82695 (_ BitVec 32) (_ BitVec 32) V!48827 V!48827 (_ BitVec 32) Int) ListLongMap!19181)

(assert (=> b!1268931 (= (getCurrentListMapNoExtraKeys!5914 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5914 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42184 0))(
  ( (Unit!42185) )
))
(declare-fun lt!574460 () Unit!42184)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1210 (array!82693 array!82695 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48827 V!48827 V!48827 V!48827 (_ BitVec 32) Int) Unit!42184)

(assert (=> b!1268931 (= lt!574460 (lemmaNoChangeToArrayThenSameMapNoExtras!1210 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun b!1268932 () Bool)

(declare-fun res!844569 () Bool)

(assert (=> b!1268932 (=> (not res!844569) (not e!723244))))

(assert (=> b!1268932 (= res!844569 (and (= (size!40417 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40416 _keys!1364) (size!40417 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun res!844570 () Bool)

(assert (=> start!107072 (=> (not res!844570) (not e!723244))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107072 (= res!844570 (validMask!0 mask!1730))))

(assert (=> start!107072 e!723244))

(declare-fun e!723246 () Bool)

(declare-fun array_inv!30303 (array!82695) Bool)

(assert (=> start!107072 (and (array_inv!30303 _values!1134) e!723246)))

(assert (=> start!107072 true))

(declare-fun array_inv!30304 (array!82693) Bool)

(assert (=> start!107072 (array_inv!30304 _keys!1364)))

(declare-fun tp_is_empty!32725 () Bool)

(assert (=> start!107072 tp_is_empty!32725))

(assert (=> start!107072 tp!96850))

(declare-fun b!1268929 () Bool)

(declare-fun e!723247 () Bool)

(declare-fun mapRes!50668 () Bool)

(assert (=> b!1268929 (= e!723246 (and e!723247 mapRes!50668))))

(declare-fun condMapEmpty!50668 () Bool)

(declare-fun mapDefault!50668 () ValueCell!15509)

