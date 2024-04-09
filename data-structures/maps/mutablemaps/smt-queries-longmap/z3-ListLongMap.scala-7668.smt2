; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96366 () Bool)

(assert start!96366)

(declare-fun b!1094729 () Bool)

(declare-fun e!625046 () Bool)

(assert (=> b!1094729 (= e!625046 false)))

(declare-fun lt!489679 () Bool)

(declare-datatypes ((array!70838 0))(
  ( (array!70839 (arr!34089 (Array (_ BitVec 32) (_ BitVec 64))) (size!34626 (_ BitVec 32))) )
))
(declare-fun lt!489680 () array!70838)

(declare-datatypes ((List!23946 0))(
  ( (Nil!23943) (Cons!23942 (h!25151 (_ BitVec 64)) (t!33960 List!23946)) )
))
(declare-fun arrayNoDuplicates!0 (array!70838 (_ BitVec 32) List!23946) Bool)

(assert (=> b!1094729 (= lt!489679 (arrayNoDuplicates!0 lt!489680 #b00000000000000000000000000000000 Nil!23943))))

(declare-fun b!1094730 () Bool)

(declare-fun e!625047 () Bool)

(assert (=> b!1094730 (= e!625047 e!625046)))

(declare-fun res!730654 () Bool)

(assert (=> b!1094730 (=> (not res!730654) (not e!625046))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70838 (_ BitVec 32)) Bool)

(assert (=> b!1094730 (= res!730654 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489680 mask!1414))))

(declare-fun _keys!1070 () array!70838)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1094730 (= lt!489680 (array!70839 (store (arr!34089 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34626 _keys!1070)))))

(declare-fun b!1094731 () Bool)

(declare-fun res!730648 () Bool)

(assert (=> b!1094731 (=> (not res!730648) (not e!625047))))

(assert (=> b!1094731 (= res!730648 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1094732 () Bool)

(declare-fun res!730651 () Bool)

(assert (=> b!1094732 (=> (not res!730651) (not e!625047))))

(assert (=> b!1094732 (= res!730651 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34626 _keys!1070))))))

(declare-fun b!1094733 () Bool)

(declare-fun e!625048 () Bool)

(declare-fun tp_is_empty!26985 () Bool)

(assert (=> b!1094733 (= e!625048 tp_is_empty!26985)))

(declare-fun mapNonEmpty!42232 () Bool)

(declare-fun mapRes!42232 () Bool)

(declare-fun tp!80748 () Bool)

(declare-fun e!625051 () Bool)

(assert (=> mapNonEmpty!42232 (= mapRes!42232 (and tp!80748 e!625051))))

(declare-datatypes ((V!41107 0))(
  ( (V!41108 (val!13549 Int)) )
))
(declare-datatypes ((ValueCell!12783 0))(
  ( (ValueCellFull!12783 (v!16171 V!41107)) (EmptyCell!12783) )
))
(declare-datatypes ((array!70840 0))(
  ( (array!70841 (arr!34090 (Array (_ BitVec 32) ValueCell!12783)) (size!34627 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70840)

(declare-fun mapRest!42232 () (Array (_ BitVec 32) ValueCell!12783))

(declare-fun mapKey!42232 () (_ BitVec 32))

(declare-fun mapValue!42232 () ValueCell!12783)

(assert (=> mapNonEmpty!42232 (= (arr!34090 _values!874) (store mapRest!42232 mapKey!42232 mapValue!42232))))

(declare-fun mapIsEmpty!42232 () Bool)

(assert (=> mapIsEmpty!42232 mapRes!42232))

(declare-fun b!1094734 () Bool)

(declare-fun res!730652 () Bool)

(assert (=> b!1094734 (=> (not res!730652) (not e!625047))))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1094734 (= res!730652 (= (select (arr!34089 _keys!1070) i!650) k0!904))))

(declare-fun b!1094735 () Bool)

(declare-fun res!730650 () Bool)

(assert (=> b!1094735 (=> (not res!730650) (not e!625047))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1094735 (= res!730650 (and (= (size!34627 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34626 _keys!1070) (size!34627 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1094736 () Bool)

(declare-fun e!625049 () Bool)

(assert (=> b!1094736 (= e!625049 (and e!625048 mapRes!42232))))

(declare-fun condMapEmpty!42232 () Bool)

(declare-fun mapDefault!42232 () ValueCell!12783)

(assert (=> b!1094736 (= condMapEmpty!42232 (= (arr!34090 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12783)) mapDefault!42232)))))

(declare-fun b!1094737 () Bool)

(declare-fun res!730655 () Bool)

(assert (=> b!1094737 (=> (not res!730655) (not e!625047))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1094737 (= res!730655 (validKeyInArray!0 k0!904))))

(declare-fun b!1094738 () Bool)

(declare-fun res!730649 () Bool)

(assert (=> b!1094738 (=> (not res!730649) (not e!625047))))

(assert (=> b!1094738 (= res!730649 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23943))))

(declare-fun b!1094739 () Bool)

(assert (=> b!1094739 (= e!625051 tp_is_empty!26985)))

(declare-fun res!730653 () Bool)

(assert (=> start!96366 (=> (not res!730653) (not e!625047))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96366 (= res!730653 (validMask!0 mask!1414))))

(assert (=> start!96366 e!625047))

(assert (=> start!96366 true))

(declare-fun array_inv!26120 (array!70838) Bool)

(assert (=> start!96366 (array_inv!26120 _keys!1070)))

(declare-fun array_inv!26121 (array!70840) Bool)

(assert (=> start!96366 (and (array_inv!26121 _values!874) e!625049)))

(assert (= (and start!96366 res!730653) b!1094735))

(assert (= (and b!1094735 res!730650) b!1094731))

(assert (= (and b!1094731 res!730648) b!1094738))

(assert (= (and b!1094738 res!730649) b!1094732))

(assert (= (and b!1094732 res!730651) b!1094737))

(assert (= (and b!1094737 res!730655) b!1094734))

(assert (= (and b!1094734 res!730652) b!1094730))

(assert (= (and b!1094730 res!730654) b!1094729))

(assert (= (and b!1094736 condMapEmpty!42232) mapIsEmpty!42232))

(assert (= (and b!1094736 (not condMapEmpty!42232)) mapNonEmpty!42232))

(get-info :version)

(assert (= (and mapNonEmpty!42232 ((_ is ValueCellFull!12783) mapValue!42232)) b!1094739))

(assert (= (and b!1094736 ((_ is ValueCellFull!12783) mapDefault!42232)) b!1094733))

(assert (= start!96366 b!1094736))

(declare-fun m!1014691 () Bool)

(assert (=> b!1094738 m!1014691))

(declare-fun m!1014693 () Bool)

(assert (=> b!1094729 m!1014693))

(declare-fun m!1014695 () Bool)

(assert (=> mapNonEmpty!42232 m!1014695))

(declare-fun m!1014697 () Bool)

(assert (=> b!1094730 m!1014697))

(declare-fun m!1014699 () Bool)

(assert (=> b!1094730 m!1014699))

(declare-fun m!1014701 () Bool)

(assert (=> b!1094737 m!1014701))

(declare-fun m!1014703 () Bool)

(assert (=> b!1094731 m!1014703))

(declare-fun m!1014705 () Bool)

(assert (=> b!1094734 m!1014705))

(declare-fun m!1014707 () Bool)

(assert (=> start!96366 m!1014707))

(declare-fun m!1014709 () Bool)

(assert (=> start!96366 m!1014709))

(declare-fun m!1014711 () Bool)

(assert (=> start!96366 m!1014711))

(check-sat (not b!1094738) (not mapNonEmpty!42232) (not b!1094731) tp_is_empty!26985 (not start!96366) (not b!1094730) (not b!1094729) (not b!1094737))
(check-sat)
