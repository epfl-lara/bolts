; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96364 () Bool)

(assert start!96364)

(declare-fun b!1094696 () Bool)

(declare-fun e!625032 () Bool)

(declare-fun tp_is_empty!26983 () Bool)

(assert (=> b!1094696 (= e!625032 tp_is_empty!26983)))

(declare-fun b!1094697 () Bool)

(declare-fun res!730631 () Bool)

(declare-fun e!625031 () Bool)

(assert (=> b!1094697 (=> (not res!730631) (not e!625031))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1094697 (= res!730631 (validKeyInArray!0 k!904))))

(declare-fun b!1094698 () Bool)

(declare-fun res!730627 () Bool)

(assert (=> b!1094698 (=> (not res!730627) (not e!625031))))

(declare-datatypes ((array!70834 0))(
  ( (array!70835 (arr!34087 (Array (_ BitVec 32) (_ BitVec 64))) (size!34624 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70834)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1094698 (= res!730627 (= (select (arr!34087 _keys!1070) i!650) k!904))))

(declare-fun b!1094700 () Bool)

(declare-fun res!730626 () Bool)

(assert (=> b!1094700 (=> (not res!730626) (not e!625031))))

(assert (=> b!1094700 (= res!730626 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34624 _keys!1070))))))

(declare-fun mapIsEmpty!42229 () Bool)

(declare-fun mapRes!42229 () Bool)

(assert (=> mapIsEmpty!42229 mapRes!42229))

(declare-fun b!1094701 () Bool)

(declare-fun res!730624 () Bool)

(assert (=> b!1094701 (=> (not res!730624) (not e!625031))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70834 (_ BitVec 32)) Bool)

(assert (=> b!1094701 (= res!730624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1094702 () Bool)

(declare-fun e!625029 () Bool)

(assert (=> b!1094702 (= e!625029 tp_is_empty!26983)))

(declare-fun b!1094703 () Bool)

(declare-fun res!730629 () Bool)

(assert (=> b!1094703 (=> (not res!730629) (not e!625031))))

(declare-datatypes ((List!23945 0))(
  ( (Nil!23942) (Cons!23941 (h!25150 (_ BitVec 64)) (t!33959 List!23945)) )
))
(declare-fun arrayNoDuplicates!0 (array!70834 (_ BitVec 32) List!23945) Bool)

(assert (=> b!1094703 (= res!730629 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23942))))

(declare-fun mapNonEmpty!42229 () Bool)

(declare-fun tp!80745 () Bool)

(assert (=> mapNonEmpty!42229 (= mapRes!42229 (and tp!80745 e!625032))))

(declare-datatypes ((V!41105 0))(
  ( (V!41106 (val!13548 Int)) )
))
(declare-datatypes ((ValueCell!12782 0))(
  ( (ValueCellFull!12782 (v!16170 V!41105)) (EmptyCell!12782) )
))
(declare-datatypes ((array!70836 0))(
  ( (array!70837 (arr!34088 (Array (_ BitVec 32) ValueCell!12782)) (size!34625 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70836)

(declare-fun mapKey!42229 () (_ BitVec 32))

(declare-fun mapValue!42229 () ValueCell!12782)

(declare-fun mapRest!42229 () (Array (_ BitVec 32) ValueCell!12782))

(assert (=> mapNonEmpty!42229 (= (arr!34088 _values!874) (store mapRest!42229 mapKey!42229 mapValue!42229))))

(declare-fun b!1094704 () Bool)

(declare-fun e!625033 () Bool)

(assert (=> b!1094704 (= e!625033 false)))

(declare-fun lt!489673 () Bool)

(declare-fun lt!489674 () array!70834)

(assert (=> b!1094704 (= lt!489673 (arrayNoDuplicates!0 lt!489674 #b00000000000000000000000000000000 Nil!23942))))

(declare-fun b!1094705 () Bool)

(assert (=> b!1094705 (= e!625031 e!625033)))

(declare-fun res!730625 () Bool)

(assert (=> b!1094705 (=> (not res!730625) (not e!625033))))

(assert (=> b!1094705 (= res!730625 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489674 mask!1414))))

(assert (=> b!1094705 (= lt!489674 (array!70835 (store (arr!34087 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34624 _keys!1070)))))

(declare-fun b!1094706 () Bool)

(declare-fun res!730628 () Bool)

(assert (=> b!1094706 (=> (not res!730628) (not e!625031))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1094706 (= res!730628 (and (= (size!34625 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34624 _keys!1070) (size!34625 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun res!730630 () Bool)

(assert (=> start!96364 (=> (not res!730630) (not e!625031))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96364 (= res!730630 (validMask!0 mask!1414))))

(assert (=> start!96364 e!625031))

(assert (=> start!96364 true))

(declare-fun array_inv!26118 (array!70834) Bool)

(assert (=> start!96364 (array_inv!26118 _keys!1070)))

(declare-fun e!625028 () Bool)

(declare-fun array_inv!26119 (array!70836) Bool)

(assert (=> start!96364 (and (array_inv!26119 _values!874) e!625028)))

(declare-fun b!1094699 () Bool)

(assert (=> b!1094699 (= e!625028 (and e!625029 mapRes!42229))))

(declare-fun condMapEmpty!42229 () Bool)

(declare-fun mapDefault!42229 () ValueCell!12782)

