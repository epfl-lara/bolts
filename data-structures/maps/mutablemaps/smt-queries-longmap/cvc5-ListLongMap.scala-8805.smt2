; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107090 () Bool)

(assert start!107090)

(declare-fun b_free!27559 () Bool)

(declare-fun b_next!27559 () Bool)

(assert (=> start!107090 (= b_free!27559 (not b_next!27559))))

(declare-fun tp!96905 () Bool)

(declare-fun b_and!45601 () Bool)

(assert (=> start!107090 (= tp!96905 b_and!45601)))

(declare-fun b!1269145 () Bool)

(declare-fun res!844703 () Bool)

(declare-fun e!723380 () Bool)

(assert (=> b!1269145 (=> (not res!844703) (not e!723380))))

(declare-fun from!1698 () (_ BitVec 32))

(declare-datatypes ((array!82729 0))(
  ( (array!82730 (arr!39897 (Array (_ BitVec 32) (_ BitVec 64))) (size!40434 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82729)

(assert (=> b!1269145 (= res!844703 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40434 _keys!1364)) (bvslt from!1698 (size!40434 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun res!844705 () Bool)

(assert (=> start!107090 (=> (not res!844705) (not e!723380))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107090 (= res!844705 (validMask!0 mask!1730))))

(assert (=> start!107090 e!723380))

(declare-datatypes ((V!48851 0))(
  ( (V!48852 (val!16446 Int)) )
))
(declare-datatypes ((ValueCell!15518 0))(
  ( (ValueCellFull!15518 (v!19081 V!48851)) (EmptyCell!15518) )
))
(declare-datatypes ((array!82731 0))(
  ( (array!82732 (arr!39898 (Array (_ BitVec 32) ValueCell!15518)) (size!40435 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82731)

(declare-fun e!723382 () Bool)

(declare-fun array_inv!30317 (array!82731) Bool)

(assert (=> start!107090 (and (array_inv!30317 _values!1134) e!723382)))

(assert (=> start!107090 true))

(declare-fun array_inv!30318 (array!82729) Bool)

(assert (=> start!107090 (array_inv!30318 _keys!1364)))

(declare-fun tp_is_empty!32743 () Bool)

(assert (=> start!107090 tp_is_empty!32743))

(assert (=> start!107090 tp!96905))

(declare-fun mapNonEmpty!50695 () Bool)

(declare-fun mapRes!50695 () Bool)

(declare-fun tp!96904 () Bool)

(declare-fun e!723381 () Bool)

(assert (=> mapNonEmpty!50695 (= mapRes!50695 (and tp!96904 e!723381))))

(declare-fun mapKey!50695 () (_ BitVec 32))

(declare-fun mapValue!50695 () ValueCell!15518)

(declare-fun mapRest!50695 () (Array (_ BitVec 32) ValueCell!15518))

(assert (=> mapNonEmpty!50695 (= (arr!39898 _values!1134) (store mapRest!50695 mapKey!50695 mapValue!50695))))

(declare-fun b!1269146 () Bool)

(assert (=> b!1269146 (= e!723381 tp_is_empty!32743)))

(declare-fun b!1269147 () Bool)

(declare-fun res!844704 () Bool)

(assert (=> b!1269147 (=> (not res!844704) (not e!723380))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82729 (_ BitVec 32)) Bool)

(assert (=> b!1269147 (= res!844704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapIsEmpty!50695 () Bool)

(assert (=> mapIsEmpty!50695 mapRes!50695))

(declare-fun b!1269148 () Bool)

(declare-fun res!844706 () Bool)

(assert (=> b!1269148 (=> (not res!844706) (not e!723380))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1269148 (= res!844706 (and (= (size!40435 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40434 _keys!1364) (size!40435 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1269149 () Bool)

(declare-fun e!723379 () Bool)

(assert (=> b!1269149 (= e!723379 tp_is_empty!32743)))

(declare-fun b!1269150 () Bool)

(declare-fun res!844702 () Bool)

(assert (=> b!1269150 (=> (not res!844702) (not e!723380))))

(declare-datatypes ((List!28592 0))(
  ( (Nil!28589) (Cons!28588 (h!29797 (_ BitVec 64)) (t!42128 List!28592)) )
))
(declare-fun arrayNoDuplicates!0 (array!82729 (_ BitVec 32) List!28592) Bool)

(assert (=> b!1269150 (= res!844702 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28589))))

(declare-fun b!1269151 () Bool)

(assert (=> b!1269151 (= e!723380 (not true))))

(declare-fun minValueAfter!52 () V!48851)

(declare-fun minValueBefore!52 () V!48851)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48851)

(declare-fun zeroValueBefore!52 () V!48851)

(declare-datatypes ((tuple2!21454 0))(
  ( (tuple2!21455 (_1!10737 (_ BitVec 64)) (_2!10737 V!48851)) )
))
(declare-datatypes ((List!28593 0))(
  ( (Nil!28590) (Cons!28589 (h!29798 tuple2!21454) (t!42129 List!28593)) )
))
(declare-datatypes ((ListLongMap!19195 0))(
  ( (ListLongMap!19196 (toList!9613 List!28593)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5921 (array!82729 array!82731 (_ BitVec 32) (_ BitVec 32) V!48851 V!48851 (_ BitVec 32) Int) ListLongMap!19195)

(assert (=> b!1269151 (= (getCurrentListMapNoExtraKeys!5921 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5921 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42198 0))(
  ( (Unit!42199) )
))
(declare-fun lt!574487 () Unit!42198)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1217 (array!82729 array!82731 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48851 V!48851 V!48851 V!48851 (_ BitVec 32) Int) Unit!42198)

(assert (=> b!1269151 (= lt!574487 (lemmaNoChangeToArrayThenSameMapNoExtras!1217 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun b!1269152 () Bool)

(assert (=> b!1269152 (= e!723382 (and e!723379 mapRes!50695))))

(declare-fun condMapEmpty!50695 () Bool)

(declare-fun mapDefault!50695 () ValueCell!15518)

