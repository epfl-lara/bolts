; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107148 () Bool)

(assert start!107148)

(declare-fun b_free!27617 () Bool)

(declare-fun b_next!27617 () Bool)

(assert (=> start!107148 (= b_free!27617 (not b_next!27617))))

(declare-fun tp!97078 () Bool)

(declare-fun b_and!45659 () Bool)

(assert (=> start!107148 (= tp!97078 b_and!45659)))

(declare-fun b!1269841 () Bool)

(declare-fun e!723817 () Bool)

(assert (=> b!1269841 (= e!723817 (not true))))

(declare-datatypes ((V!48927 0))(
  ( (V!48928 (val!16475 Int)) )
))
(declare-datatypes ((ValueCell!15547 0))(
  ( (ValueCellFull!15547 (v!19110 V!48927)) (EmptyCell!15547) )
))
(declare-datatypes ((array!82835 0))(
  ( (array!82836 (arr!39950 (Array (_ BitVec 32) ValueCell!15547)) (size!40487 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82835)

(declare-fun from!1698 () (_ BitVec 32))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82837 0))(
  ( (array!82838 (arr!39951 (Array (_ BitVec 32) (_ BitVec 64))) (size!40488 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82837)

(declare-fun minValueAfter!52 () V!48927)

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun minValueBefore!52 () V!48927)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48927)

(declare-fun zeroValueBefore!52 () V!48927)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-datatypes ((tuple2!21486 0))(
  ( (tuple2!21487 (_1!10753 (_ BitVec 64)) (_2!10753 V!48927)) )
))
(declare-datatypes ((List!28623 0))(
  ( (Nil!28620) (Cons!28619 (h!29828 tuple2!21486) (t!42159 List!28623)) )
))
(declare-datatypes ((ListLongMap!19227 0))(
  ( (ListLongMap!19228 (toList!9629 List!28623)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5937 (array!82837 array!82835 (_ BitVec 32) (_ BitVec 32) V!48927 V!48927 (_ BitVec 32) Int) ListLongMap!19227)

(assert (=> b!1269841 (= (getCurrentListMapNoExtraKeys!5937 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5937 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42230 0))(
  ( (Unit!42231) )
))
(declare-fun lt!574574 () Unit!42230)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1233 (array!82837 array!82835 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48927 V!48927 V!48927 V!48927 (_ BitVec 32) Int) Unit!42230)

(assert (=> b!1269841 (= lt!574574 (lemmaNoChangeToArrayThenSameMapNoExtras!1233 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun mapNonEmpty!50782 () Bool)

(declare-fun mapRes!50782 () Bool)

(declare-fun tp!97079 () Bool)

(declare-fun e!723815 () Bool)

(assert (=> mapNonEmpty!50782 (= mapRes!50782 (and tp!97079 e!723815))))

(declare-fun mapRest!50782 () (Array (_ BitVec 32) ValueCell!15547))

(declare-fun mapKey!50782 () (_ BitVec 32))

(declare-fun mapValue!50782 () ValueCell!15547)

(assert (=> mapNonEmpty!50782 (= (arr!39950 _values!1134) (store mapRest!50782 mapKey!50782 mapValue!50782))))

(declare-fun b!1269842 () Bool)

(declare-fun res!845140 () Bool)

(assert (=> b!1269842 (=> (not res!845140) (not e!723817))))

(assert (=> b!1269842 (= res!845140 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40488 _keys!1364)) (bvslt from!1698 (size!40488 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun b!1269843 () Bool)

(declare-fun e!723814 () Bool)

(declare-fun tp_is_empty!32801 () Bool)

(assert (=> b!1269843 (= e!723814 tp_is_empty!32801)))

(declare-fun mapIsEmpty!50782 () Bool)

(assert (=> mapIsEmpty!50782 mapRes!50782))

(declare-fun b!1269844 () Bool)

(declare-fun res!845141 () Bool)

(assert (=> b!1269844 (=> (not res!845141) (not e!723817))))

(declare-datatypes ((List!28624 0))(
  ( (Nil!28621) (Cons!28620 (h!29829 (_ BitVec 64)) (t!42160 List!28624)) )
))
(declare-fun arrayNoDuplicates!0 (array!82837 (_ BitVec 32) List!28624) Bool)

(assert (=> b!1269844 (= res!845141 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28621))))

(declare-fun b!1269846 () Bool)

(assert (=> b!1269846 (= e!723815 tp_is_empty!32801)))

(declare-fun b!1269847 () Bool)

(declare-fun e!723818 () Bool)

(assert (=> b!1269847 (= e!723818 (and e!723814 mapRes!50782))))

(declare-fun condMapEmpty!50782 () Bool)

(declare-fun mapDefault!50782 () ValueCell!15547)

