; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107088 () Bool)

(assert start!107088)

(declare-fun b_free!27557 () Bool)

(declare-fun b_next!27557 () Bool)

(assert (=> start!107088 (= b_free!27557 (not b_next!27557))))

(declare-fun tp!96898 () Bool)

(declare-fun b_and!45599 () Bool)

(assert (=> start!107088 (= tp!96898 b_and!45599)))

(declare-fun b!1269121 () Bool)

(declare-fun e!723366 () Bool)

(declare-fun tp_is_empty!32741 () Bool)

(assert (=> b!1269121 (= e!723366 tp_is_empty!32741)))

(declare-fun b!1269122 () Bool)

(declare-fun e!723365 () Bool)

(assert (=> b!1269122 (= e!723365 (not true))))

(declare-datatypes ((V!48847 0))(
  ( (V!48848 (val!16445 Int)) )
))
(declare-datatypes ((ValueCell!15517 0))(
  ( (ValueCellFull!15517 (v!19080 V!48847)) (EmptyCell!15517) )
))
(declare-datatypes ((array!82725 0))(
  ( (array!82726 (arr!39895 (Array (_ BitVec 32) ValueCell!15517)) (size!40432 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82725)

(declare-fun from!1698 () (_ BitVec 32))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82727 0))(
  ( (array!82728 (arr!39896 (Array (_ BitVec 32) (_ BitVec 64))) (size!40433 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82727)

(declare-fun minValueAfter!52 () V!48847)

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun minValueBefore!52 () V!48847)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48847)

(declare-fun zeroValueBefore!52 () V!48847)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-datatypes ((tuple2!21452 0))(
  ( (tuple2!21453 (_1!10736 (_ BitVec 64)) (_2!10736 V!48847)) )
))
(declare-datatypes ((List!28590 0))(
  ( (Nil!28587) (Cons!28586 (h!29795 tuple2!21452) (t!42126 List!28590)) )
))
(declare-datatypes ((ListLongMap!19193 0))(
  ( (ListLongMap!19194 (toList!9612 List!28590)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5920 (array!82727 array!82725 (_ BitVec 32) (_ BitVec 32) V!48847 V!48847 (_ BitVec 32) Int) ListLongMap!19193)

(assert (=> b!1269122 (= (getCurrentListMapNoExtraKeys!5920 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5920 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42196 0))(
  ( (Unit!42197) )
))
(declare-fun lt!574484 () Unit!42196)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1216 (array!82727 array!82725 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48847 V!48847 V!48847 V!48847 (_ BitVec 32) Int) Unit!42196)

(assert (=> b!1269122 (= lt!574484 (lemmaNoChangeToArrayThenSameMapNoExtras!1216 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun mapIsEmpty!50692 () Bool)

(declare-fun mapRes!50692 () Bool)

(assert (=> mapIsEmpty!50692 mapRes!50692))

(declare-fun mapNonEmpty!50692 () Bool)

(declare-fun tp!96899 () Bool)

(assert (=> mapNonEmpty!50692 (= mapRes!50692 (and tp!96899 e!723366))))

(declare-fun mapRest!50692 () (Array (_ BitVec 32) ValueCell!15517))

(declare-fun mapValue!50692 () ValueCell!15517)

(declare-fun mapKey!50692 () (_ BitVec 32))

(assert (=> mapNonEmpty!50692 (= (arr!39895 _values!1134) (store mapRest!50692 mapKey!50692 mapValue!50692))))

(declare-fun b!1269123 () Bool)

(declare-fun res!844687 () Bool)

(assert (=> b!1269123 (=> (not res!844687) (not e!723365))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82727 (_ BitVec 32)) Bool)

(assert (=> b!1269123 (= res!844687 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1269124 () Bool)

(declare-fun res!844689 () Bool)

(assert (=> b!1269124 (=> (not res!844689) (not e!723365))))

(assert (=> b!1269124 (= res!844689 (and (= (size!40432 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40433 _keys!1364) (size!40432 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1269125 () Bool)

(declare-fun res!844688 () Bool)

(assert (=> b!1269125 (=> (not res!844688) (not e!723365))))

(declare-datatypes ((List!28591 0))(
  ( (Nil!28588) (Cons!28587 (h!29796 (_ BitVec 64)) (t!42127 List!28591)) )
))
(declare-fun arrayNoDuplicates!0 (array!82727 (_ BitVec 32) List!28591) Bool)

(assert (=> b!1269125 (= res!844688 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28588))))

(declare-fun res!844691 () Bool)

(assert (=> start!107088 (=> (not res!844691) (not e!723365))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107088 (= res!844691 (validMask!0 mask!1730))))

(assert (=> start!107088 e!723365))

(declare-fun e!723368 () Bool)

(declare-fun array_inv!30315 (array!82725) Bool)

(assert (=> start!107088 (and (array_inv!30315 _values!1134) e!723368)))

(assert (=> start!107088 true))

(declare-fun array_inv!30316 (array!82727) Bool)

(assert (=> start!107088 (array_inv!30316 _keys!1364)))

(assert (=> start!107088 tp_is_empty!32741))

(assert (=> start!107088 tp!96898))

(declare-fun b!1269126 () Bool)

(declare-fun res!844690 () Bool)

(assert (=> b!1269126 (=> (not res!844690) (not e!723365))))

(assert (=> b!1269126 (= res!844690 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40433 _keys!1364)) (bvslt from!1698 (size!40433 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun b!1269127 () Bool)

(declare-fun e!723364 () Bool)

(assert (=> b!1269127 (= e!723368 (and e!723364 mapRes!50692))))

(declare-fun condMapEmpty!50692 () Bool)

(declare-fun mapDefault!50692 () ValueCell!15517)

