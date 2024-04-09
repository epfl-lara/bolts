; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107162 () Bool)

(assert start!107162)

(declare-fun b_free!27631 () Bool)

(declare-fun b_next!27631 () Bool)

(assert (=> start!107162 (= b_free!27631 (not b_next!27631))))

(declare-fun tp!97121 () Bool)

(declare-fun b_and!45673 () Bool)

(assert (=> start!107162 (= tp!97121 b_and!45673)))

(declare-fun b!1270009 () Bool)

(declare-fun res!845246 () Bool)

(declare-fun e!723922 () Bool)

(assert (=> b!1270009 (=> (not res!845246) (not e!723922))))

(declare-datatypes ((array!82863 0))(
  ( (array!82864 (arr!39964 (Array (_ BitVec 32) (_ BitVec 64))) (size!40501 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82863)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82863 (_ BitVec 32)) Bool)

(assert (=> b!1270009 (= res!845246 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1270010 () Bool)

(declare-fun e!723920 () Bool)

(declare-fun tp_is_empty!32815 () Bool)

(assert (=> b!1270010 (= e!723920 tp_is_empty!32815)))

(declare-fun b!1270011 () Bool)

(declare-fun e!723919 () Bool)

(assert (=> b!1270011 (= e!723919 tp_is_empty!32815)))

(declare-fun b!1270012 () Bool)

(declare-fun res!845243 () Bool)

(assert (=> b!1270012 (=> (not res!845243) (not e!723922))))

(declare-datatypes ((List!28636 0))(
  ( (Nil!28633) (Cons!28632 (h!29841 (_ BitVec 64)) (t!42172 List!28636)) )
))
(declare-fun arrayNoDuplicates!0 (array!82863 (_ BitVec 32) List!28636) Bool)

(assert (=> b!1270012 (= res!845243 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28633))))

(declare-fun b!1270013 () Bool)

(declare-fun res!845245 () Bool)

(assert (=> b!1270013 (=> (not res!845245) (not e!723922))))

(declare-fun from!1698 () (_ BitVec 32))

(assert (=> b!1270013 (= res!845245 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40501 _keys!1364)) (bvslt from!1698 (size!40501 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun b!1270014 () Bool)

(assert (=> b!1270014 (= e!723922 (not true))))

(declare-datatypes ((V!48947 0))(
  ( (V!48948 (val!16482 Int)) )
))
(declare-datatypes ((ValueCell!15554 0))(
  ( (ValueCellFull!15554 (v!19117 V!48947)) (EmptyCell!15554) )
))
(declare-datatypes ((array!82865 0))(
  ( (array!82866 (arr!39965 (Array (_ BitVec 32) ValueCell!15554)) (size!40502 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82865)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun minValueAfter!52 () V!48947)

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun minValueBefore!52 () V!48947)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48947)

(declare-fun zeroValueBefore!52 () V!48947)

(declare-datatypes ((tuple2!21500 0))(
  ( (tuple2!21501 (_1!10760 (_ BitVec 64)) (_2!10760 V!48947)) )
))
(declare-datatypes ((List!28637 0))(
  ( (Nil!28634) (Cons!28633 (h!29842 tuple2!21500) (t!42173 List!28637)) )
))
(declare-datatypes ((ListLongMap!19241 0))(
  ( (ListLongMap!19242 (toList!9636 List!28637)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5944 (array!82863 array!82865 (_ BitVec 32) (_ BitVec 32) V!48947 V!48947 (_ BitVec 32) Int) ListLongMap!19241)

(assert (=> b!1270014 (= (getCurrentListMapNoExtraKeys!5944 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5944 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42244 0))(
  ( (Unit!42245) )
))
(declare-fun lt!574595 () Unit!42244)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1240 (array!82863 array!82865 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48947 V!48947 V!48947 V!48947 (_ BitVec 32) Int) Unit!42244)

(assert (=> b!1270014 (= lt!574595 (lemmaNoChangeToArrayThenSameMapNoExtras!1240 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun mapIsEmpty!50803 () Bool)

(declare-fun mapRes!50803 () Bool)

(assert (=> mapIsEmpty!50803 mapRes!50803))

(declare-fun res!845244 () Bool)

(assert (=> start!107162 (=> (not res!845244) (not e!723922))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107162 (= res!845244 (validMask!0 mask!1730))))

(assert (=> start!107162 e!723922))

(declare-fun e!723921 () Bool)

(declare-fun array_inv!30357 (array!82865) Bool)

(assert (=> start!107162 (and (array_inv!30357 _values!1134) e!723921)))

(assert (=> start!107162 true))

(declare-fun array_inv!30358 (array!82863) Bool)

(assert (=> start!107162 (array_inv!30358 _keys!1364)))

(assert (=> start!107162 tp_is_empty!32815))

(assert (=> start!107162 tp!97121))

(declare-fun b!1270015 () Bool)

(declare-fun res!845242 () Bool)

(assert (=> b!1270015 (=> (not res!845242) (not e!723922))))

(assert (=> b!1270015 (= res!845242 (and (= (size!40502 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40501 _keys!1364) (size!40502 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!50803 () Bool)

(declare-fun tp!97120 () Bool)

(assert (=> mapNonEmpty!50803 (= mapRes!50803 (and tp!97120 e!723920))))

(declare-fun mapRest!50803 () (Array (_ BitVec 32) ValueCell!15554))

(declare-fun mapValue!50803 () ValueCell!15554)

(declare-fun mapKey!50803 () (_ BitVec 32))

(assert (=> mapNonEmpty!50803 (= (arr!39965 _values!1134) (store mapRest!50803 mapKey!50803 mapValue!50803))))

(declare-fun b!1270016 () Bool)

(assert (=> b!1270016 (= e!723921 (and e!723919 mapRes!50803))))

(declare-fun condMapEmpty!50803 () Bool)

(declare-fun mapDefault!50803 () ValueCell!15554)

