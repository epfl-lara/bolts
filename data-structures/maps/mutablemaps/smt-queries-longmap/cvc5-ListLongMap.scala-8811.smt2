; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107126 () Bool)

(assert start!107126)

(declare-fun b_free!27595 () Bool)

(declare-fun b_next!27595 () Bool)

(assert (=> start!107126 (= b_free!27595 (not b_next!27595))))

(declare-fun tp!97012 () Bool)

(declare-fun b_and!45637 () Bool)

(assert (=> start!107126 (= tp!97012 b_and!45637)))

(declare-fun mapIsEmpty!50749 () Bool)

(declare-fun mapRes!50749 () Bool)

(assert (=> mapIsEmpty!50749 mapRes!50749))

(declare-fun b!1269577 () Bool)

(declare-fun e!723652 () Bool)

(assert (=> b!1269577 (= e!723652 (not true))))

(declare-datatypes ((V!48899 0))(
  ( (V!48900 (val!16464 Int)) )
))
(declare-datatypes ((ValueCell!15536 0))(
  ( (ValueCellFull!15536 (v!19099 V!48899)) (EmptyCell!15536) )
))
(declare-datatypes ((array!82793 0))(
  ( (array!82794 (arr!39929 (Array (_ BitVec 32) ValueCell!15536)) (size!40466 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82793)

(declare-fun from!1698 () (_ BitVec 32))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82795 0))(
  ( (array!82796 (arr!39930 (Array (_ BitVec 32) (_ BitVec 64))) (size!40467 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82795)

(declare-fun minValueAfter!52 () V!48899)

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun minValueBefore!52 () V!48899)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48899)

(declare-fun zeroValueBefore!52 () V!48899)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-datatypes ((tuple2!21474 0))(
  ( (tuple2!21475 (_1!10747 (_ BitVec 64)) (_2!10747 V!48899)) )
))
(declare-datatypes ((List!28610 0))(
  ( (Nil!28607) (Cons!28606 (h!29815 tuple2!21474) (t!42146 List!28610)) )
))
(declare-datatypes ((ListLongMap!19215 0))(
  ( (ListLongMap!19216 (toList!9623 List!28610)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5931 (array!82795 array!82793 (_ BitVec 32) (_ BitVec 32) V!48899 V!48899 (_ BitVec 32) Int) ListLongMap!19215)

(assert (=> b!1269577 (= (getCurrentListMapNoExtraKeys!5931 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5931 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42218 0))(
  ( (Unit!42219) )
))
(declare-fun lt!574541 () Unit!42218)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1227 (array!82795 array!82793 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48899 V!48899 V!48899 V!48899 (_ BitVec 32) Int) Unit!42218)

(assert (=> b!1269577 (= lt!574541 (lemmaNoChangeToArrayThenSameMapNoExtras!1227 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun mapNonEmpty!50749 () Bool)

(declare-fun tp!97013 () Bool)

(declare-fun e!723651 () Bool)

(assert (=> mapNonEmpty!50749 (= mapRes!50749 (and tp!97013 e!723651))))

(declare-fun mapRest!50749 () (Array (_ BitVec 32) ValueCell!15536))

(declare-fun mapValue!50749 () ValueCell!15536)

(declare-fun mapKey!50749 () (_ BitVec 32))

(assert (=> mapNonEmpty!50749 (= (arr!39929 _values!1134) (store mapRest!50749 mapKey!50749 mapValue!50749))))

(declare-fun b!1269578 () Bool)

(declare-fun res!844972 () Bool)

(assert (=> b!1269578 (=> (not res!844972) (not e!723652))))

(assert (=> b!1269578 (= res!844972 (and (= (size!40466 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40467 _keys!1364) (size!40466 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1269579 () Bool)

(declare-fun res!844973 () Bool)

(assert (=> b!1269579 (=> (not res!844973) (not e!723652))))

(assert (=> b!1269579 (= res!844973 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40467 _keys!1364)) (bvslt from!1698 (size!40467 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun b!1269580 () Bool)

(declare-fun e!723649 () Bool)

(declare-fun tp_is_empty!32779 () Bool)

(assert (=> b!1269580 (= e!723649 tp_is_empty!32779)))

(declare-fun b!1269581 () Bool)

(assert (=> b!1269581 (= e!723651 tp_is_empty!32779)))

(declare-fun b!1269582 () Bool)

(declare-fun e!723650 () Bool)

(assert (=> b!1269582 (= e!723650 (and e!723649 mapRes!50749))))

(declare-fun condMapEmpty!50749 () Bool)

(declare-fun mapDefault!50749 () ValueCell!15536)

