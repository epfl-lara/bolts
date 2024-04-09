; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96354 () Bool)

(assert start!96354)

(declare-fun b!1094535 () Bool)

(declare-fun e!624942 () Bool)

(declare-fun tp_is_empty!26973 () Bool)

(assert (=> b!1094535 (= e!624942 tp_is_empty!26973)))

(declare-fun b!1094536 () Bool)

(declare-fun e!624946 () Bool)

(declare-fun e!624944 () Bool)

(declare-fun mapRes!42214 () Bool)

(assert (=> b!1094536 (= e!624946 (and e!624944 mapRes!42214))))

(declare-fun condMapEmpty!42214 () Bool)

(declare-datatypes ((V!41091 0))(
  ( (V!41092 (val!13543 Int)) )
))
(declare-datatypes ((ValueCell!12777 0))(
  ( (ValueCellFull!12777 (v!16165 V!41091)) (EmptyCell!12777) )
))
(declare-datatypes ((array!70814 0))(
  ( (array!70815 (arr!34077 (Array (_ BitVec 32) ValueCell!12777)) (size!34614 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70814)

(declare-fun mapDefault!42214 () ValueCell!12777)

(assert (=> b!1094536 (= condMapEmpty!42214 (= (arr!34077 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12777)) mapDefault!42214)))))

(declare-fun b!1094537 () Bool)

(declare-fun e!624943 () Bool)

(assert (=> b!1094537 (= e!624943 false)))

(declare-datatypes ((array!70816 0))(
  ( (array!70817 (arr!34078 (Array (_ BitVec 32) (_ BitVec 64))) (size!34615 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70816)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun lt!489647 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70816 (_ BitVec 32)) Bool)

(assert (=> b!1094537 (= lt!489647 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!70817 (store (arr!34078 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34615 _keys!1070)) mask!1414))))

(declare-fun b!1094538 () Bool)

(declare-fun res!730512 () Bool)

(assert (=> b!1094538 (=> (not res!730512) (not e!624943))))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1094538 (= res!730512 (= (select (arr!34078 _keys!1070) i!650) k0!904))))

(declare-fun res!730511 () Bool)

(assert (=> start!96354 (=> (not res!730511) (not e!624943))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96354 (= res!730511 (validMask!0 mask!1414))))

(assert (=> start!96354 e!624943))

(assert (=> start!96354 true))

(declare-fun array_inv!26112 (array!70816) Bool)

(assert (=> start!96354 (array_inv!26112 _keys!1070)))

(declare-fun array_inv!26113 (array!70814) Bool)

(assert (=> start!96354 (and (array_inv!26113 _values!874) e!624946)))

(declare-fun mapNonEmpty!42214 () Bool)

(declare-fun tp!80730 () Bool)

(assert (=> mapNonEmpty!42214 (= mapRes!42214 (and tp!80730 e!624942))))

(declare-fun mapRest!42214 () (Array (_ BitVec 32) ValueCell!12777))

(declare-fun mapValue!42214 () ValueCell!12777)

(declare-fun mapKey!42214 () (_ BitVec 32))

(assert (=> mapNonEmpty!42214 (= (arr!34077 _values!874) (store mapRest!42214 mapKey!42214 mapValue!42214))))

(declare-fun b!1094539 () Bool)

(declare-fun res!730509 () Bool)

(assert (=> b!1094539 (=> (not res!730509) (not e!624943))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1094539 (= res!730509 (and (= (size!34614 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34615 _keys!1070) (size!34614 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1094540 () Bool)

(declare-fun res!730510 () Bool)

(assert (=> b!1094540 (=> (not res!730510) (not e!624943))))

(declare-datatypes ((List!23940 0))(
  ( (Nil!23937) (Cons!23936 (h!25145 (_ BitVec 64)) (t!33954 List!23940)) )
))
(declare-fun arrayNoDuplicates!0 (array!70816 (_ BitVec 32) List!23940) Bool)

(assert (=> b!1094540 (= res!730510 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23937))))

(declare-fun b!1094541 () Bool)

(declare-fun res!730514 () Bool)

(assert (=> b!1094541 (=> (not res!730514) (not e!624943))))

(assert (=> b!1094541 (= res!730514 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34615 _keys!1070))))))

(declare-fun b!1094542 () Bool)

(declare-fun res!730513 () Bool)

(assert (=> b!1094542 (=> (not res!730513) (not e!624943))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1094542 (= res!730513 (validKeyInArray!0 k0!904))))

(declare-fun b!1094543 () Bool)

(declare-fun res!730508 () Bool)

(assert (=> b!1094543 (=> (not res!730508) (not e!624943))))

(assert (=> b!1094543 (= res!730508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapIsEmpty!42214 () Bool)

(assert (=> mapIsEmpty!42214 mapRes!42214))

(declare-fun b!1094544 () Bool)

(assert (=> b!1094544 (= e!624944 tp_is_empty!26973)))

(assert (= (and start!96354 res!730511) b!1094539))

(assert (= (and b!1094539 res!730509) b!1094543))

(assert (= (and b!1094543 res!730508) b!1094540))

(assert (= (and b!1094540 res!730510) b!1094541))

(assert (= (and b!1094541 res!730514) b!1094542))

(assert (= (and b!1094542 res!730513) b!1094538))

(assert (= (and b!1094538 res!730512) b!1094537))

(assert (= (and b!1094536 condMapEmpty!42214) mapIsEmpty!42214))

(assert (= (and b!1094536 (not condMapEmpty!42214)) mapNonEmpty!42214))

(get-info :version)

(assert (= (and mapNonEmpty!42214 ((_ is ValueCellFull!12777) mapValue!42214)) b!1094535))

(assert (= (and b!1094536 ((_ is ValueCellFull!12777) mapDefault!42214)) b!1094544))

(assert (= start!96354 b!1094536))

(declare-fun m!1014563 () Bool)

(assert (=> b!1094537 m!1014563))

(declare-fun m!1014565 () Bool)

(assert (=> b!1094537 m!1014565))

(declare-fun m!1014567 () Bool)

(assert (=> b!1094538 m!1014567))

(declare-fun m!1014569 () Bool)

(assert (=> b!1094543 m!1014569))

(declare-fun m!1014571 () Bool)

(assert (=> b!1094542 m!1014571))

(declare-fun m!1014573 () Bool)

(assert (=> b!1094540 m!1014573))

(declare-fun m!1014575 () Bool)

(assert (=> mapNonEmpty!42214 m!1014575))

(declare-fun m!1014577 () Bool)

(assert (=> start!96354 m!1014577))

(declare-fun m!1014579 () Bool)

(assert (=> start!96354 m!1014579))

(declare-fun m!1014581 () Bool)

(assert (=> start!96354 m!1014581))

(check-sat (not b!1094543) (not start!96354) (not b!1094542) (not b!1094537) (not mapNonEmpty!42214) tp_is_empty!26973 (not b!1094540))
(check-sat)
