; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96374 () Bool)

(assert start!96374)

(declare-fun b!1094869 () Bool)

(declare-fun res!730755 () Bool)

(declare-fun e!625118 () Bool)

(assert (=> b!1094869 (=> (not res!730755) (not e!625118))))

(declare-datatypes ((array!70852 0))(
  ( (array!70853 (arr!34096 (Array (_ BitVec 32) (_ BitVec 64))) (size!34633 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70852)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1094869 (= res!730755 (= (select (arr!34096 _keys!1070) i!650) k!904))))

(declare-fun mapNonEmpty!42244 () Bool)

(declare-fun mapRes!42244 () Bool)

(declare-fun tp!80760 () Bool)

(declare-fun e!625119 () Bool)

(assert (=> mapNonEmpty!42244 (= mapRes!42244 (and tp!80760 e!625119))))

(declare-datatypes ((V!41117 0))(
  ( (V!41118 (val!13553 Int)) )
))
(declare-datatypes ((ValueCell!12787 0))(
  ( (ValueCellFull!12787 (v!16175 V!41117)) (EmptyCell!12787) )
))
(declare-fun mapValue!42244 () ValueCell!12787)

(declare-fun mapKey!42244 () (_ BitVec 32))

(declare-datatypes ((array!70854 0))(
  ( (array!70855 (arr!34097 (Array (_ BitVec 32) ValueCell!12787)) (size!34634 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70854)

(declare-fun mapRest!42244 () (Array (_ BitVec 32) ValueCell!12787))

(assert (=> mapNonEmpty!42244 (= (arr!34097 _values!874) (store mapRest!42244 mapKey!42244 mapValue!42244))))

(declare-fun b!1094870 () Bool)

(declare-fun e!625120 () Bool)

(declare-fun tp_is_empty!26993 () Bool)

(assert (=> b!1094870 (= e!625120 tp_is_empty!26993)))

(declare-fun b!1094871 () Bool)

(declare-fun res!730754 () Bool)

(assert (=> b!1094871 (=> (not res!730754) (not e!625118))))

(assert (=> b!1094871 (= res!730754 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34633 _keys!1070))))))

(declare-fun b!1094872 () Bool)

(declare-fun e!625121 () Bool)

(assert (=> b!1094872 (= e!625118 e!625121)))

(declare-fun res!730753 () Bool)

(assert (=> b!1094872 (=> (not res!730753) (not e!625121))))

(declare-fun lt!489695 () array!70852)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70852 (_ BitVec 32)) Bool)

(assert (=> b!1094872 (= res!730753 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489695 mask!1414))))

(assert (=> b!1094872 (= lt!489695 (array!70853 (store (arr!34096 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34633 _keys!1070)))))

(declare-fun b!1094873 () Bool)

(assert (=> b!1094873 (= e!625121 (bvsge (size!34633 _keys!1070) #b01111111111111111111111111111111))))

(declare-fun mapIsEmpty!42244 () Bool)

(assert (=> mapIsEmpty!42244 mapRes!42244))

(declare-fun b!1094874 () Bool)

(declare-fun res!730756 () Bool)

(assert (=> b!1094874 (=> (not res!730756) (not e!625118))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1094874 (= res!730756 (validKeyInArray!0 k!904))))

(declare-fun b!1094875 () Bool)

(declare-fun res!730759 () Bool)

(assert (=> b!1094875 (=> (not res!730759) (not e!625121))))

(declare-datatypes ((List!23949 0))(
  ( (Nil!23946) (Cons!23945 (h!25154 (_ BitVec 64)) (t!33963 List!23949)) )
))
(declare-fun arrayNoDuplicates!0 (array!70852 (_ BitVec 32) List!23949) Bool)

(assert (=> b!1094875 (= res!730759 (arrayNoDuplicates!0 lt!489695 #b00000000000000000000000000000000 Nil!23946))))

(declare-fun b!1094876 () Bool)

(declare-fun res!730752 () Bool)

(assert (=> b!1094876 (=> (not res!730752) (not e!625118))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1094876 (= res!730752 (and (= (size!34634 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34633 _keys!1070) (size!34634 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun res!730757 () Bool)

(assert (=> start!96374 (=> (not res!730757) (not e!625118))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96374 (= res!730757 (validMask!0 mask!1414))))

(assert (=> start!96374 e!625118))

(assert (=> start!96374 true))

(declare-fun array_inv!26126 (array!70852) Bool)

(assert (=> start!96374 (array_inv!26126 _keys!1070)))

(declare-fun e!625123 () Bool)

(declare-fun array_inv!26127 (array!70854) Bool)

(assert (=> start!96374 (and (array_inv!26127 _values!874) e!625123)))

(declare-fun b!1094877 () Bool)

(assert (=> b!1094877 (= e!625119 tp_is_empty!26993)))

(declare-fun b!1094878 () Bool)

(declare-fun res!730758 () Bool)

(assert (=> b!1094878 (=> (not res!730758) (not e!625118))))

(assert (=> b!1094878 (= res!730758 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1094879 () Bool)

(declare-fun res!730760 () Bool)

(assert (=> b!1094879 (=> (not res!730760) (not e!625118))))

(assert (=> b!1094879 (= res!730760 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23946))))

(declare-fun b!1094880 () Bool)

(assert (=> b!1094880 (= e!625123 (and e!625120 mapRes!42244))))

(declare-fun condMapEmpty!42244 () Bool)

(declare-fun mapDefault!42244 () ValueCell!12787)

