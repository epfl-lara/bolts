; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107054 () Bool)

(assert start!107054)

(declare-fun b!1268763 () Bool)

(declare-fun e!723109 () Bool)

(declare-fun tp_is_empty!32707 () Bool)

(assert (=> b!1268763 (= e!723109 tp_is_empty!32707)))

(declare-fun mapNonEmpty!50641 () Bool)

(declare-fun mapRes!50641 () Bool)

(declare-fun tp!96821 () Bool)

(assert (=> mapNonEmpty!50641 (= mapRes!50641 (and tp!96821 e!723109))))

(declare-datatypes ((V!48803 0))(
  ( (V!48804 (val!16428 Int)) )
))
(declare-datatypes ((ValueCell!15500 0))(
  ( (ValueCellFull!15500 (v!19063 V!48803)) (EmptyCell!15500) )
))
(declare-datatypes ((array!82657 0))(
  ( (array!82658 (arr!39861 (Array (_ BitVec 32) ValueCell!15500)) (size!40398 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82657)

(declare-fun mapValue!50641 () ValueCell!15500)

(declare-fun mapKey!50641 () (_ BitVec 32))

(declare-fun mapRest!50641 () (Array (_ BitVec 32) ValueCell!15500))

(assert (=> mapNonEmpty!50641 (= (arr!39861 _values!1134) (store mapRest!50641 mapKey!50641 mapValue!50641))))

(declare-fun b!1268764 () Bool)

(declare-fun res!844484 () Bool)

(declare-fun e!723110 () Bool)

(assert (=> b!1268764 (=> (not res!844484) (not e!723110))))

(declare-datatypes ((array!82659 0))(
  ( (array!82660 (arr!39862 (Array (_ BitVec 32) (_ BitVec 64))) (size!40399 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82659)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82659 (_ BitVec 32)) Bool)

(assert (=> b!1268764 (= res!844484 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun res!844482 () Bool)

(assert (=> start!107054 (=> (not res!844482) (not e!723110))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107054 (= res!844482 (validMask!0 mask!1730))))

(assert (=> start!107054 e!723110))

(declare-fun e!723113 () Bool)

(declare-fun array_inv!30289 (array!82657) Bool)

(assert (=> start!107054 (and (array_inv!30289 _values!1134) e!723113)))

(assert (=> start!107054 true))

(declare-fun array_inv!30290 (array!82659) Bool)

(assert (=> start!107054 (array_inv!30290 _keys!1364)))

(declare-fun b!1268765 () Bool)

(declare-fun res!844483 () Bool)

(assert (=> b!1268765 (=> (not res!844483) (not e!723110))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1268765 (= res!844483 (and (= (size!40398 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40399 _keys!1364) (size!40398 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1268766 () Bool)

(assert (=> b!1268766 (= e!723110 false)))

(declare-fun lt!574433 () Bool)

(declare-datatypes ((List!28571 0))(
  ( (Nil!28568) (Cons!28567 (h!29776 (_ BitVec 64)) (t!42107 List!28571)) )
))
(declare-fun arrayNoDuplicates!0 (array!82659 (_ BitVec 32) List!28571) Bool)

(assert (=> b!1268766 (= lt!574433 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28568))))

(declare-fun mapIsEmpty!50641 () Bool)

(assert (=> mapIsEmpty!50641 mapRes!50641))

(declare-fun b!1268767 () Bool)

(declare-fun e!723112 () Bool)

(assert (=> b!1268767 (= e!723112 tp_is_empty!32707)))

(declare-fun b!1268768 () Bool)

(assert (=> b!1268768 (= e!723113 (and e!723112 mapRes!50641))))

(declare-fun condMapEmpty!50641 () Bool)

(declare-fun mapDefault!50641 () ValueCell!15500)

