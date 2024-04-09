; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96342 () Bool)

(assert start!96342)

(declare-fun b!1094407 () Bool)

(declare-fun e!624853 () Bool)

(declare-fun tp_is_empty!26961 () Bool)

(assert (=> b!1094407 (= e!624853 tp_is_empty!26961)))

(declare-fun b!1094408 () Bool)

(declare-fun e!624852 () Bool)

(assert (=> b!1094408 (= e!624852 tp_is_empty!26961)))

(declare-fun b!1094409 () Bool)

(declare-fun e!624854 () Bool)

(declare-fun mapRes!42196 () Bool)

(assert (=> b!1094409 (= e!624854 (and e!624853 mapRes!42196))))

(declare-fun condMapEmpty!42196 () Bool)

(declare-datatypes ((V!41075 0))(
  ( (V!41076 (val!13537 Int)) )
))
(declare-datatypes ((ValueCell!12771 0))(
  ( (ValueCellFull!12771 (v!16159 V!41075)) (EmptyCell!12771) )
))
(declare-datatypes ((array!70792 0))(
  ( (array!70793 (arr!34066 (Array (_ BitVec 32) ValueCell!12771)) (size!34603 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70792)

(declare-fun mapDefault!42196 () ValueCell!12771)

(assert (=> b!1094409 (= condMapEmpty!42196 (= (arr!34066 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12771)) mapDefault!42196)))))

(declare-fun b!1094410 () Bool)

(declare-fun res!730435 () Bool)

(declare-fun e!624856 () Bool)

(assert (=> b!1094410 (=> (not res!730435) (not e!624856))))

(declare-datatypes ((array!70794 0))(
  ( (array!70795 (arr!34067 (Array (_ BitVec 32) (_ BitVec 64))) (size!34604 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70794)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70794 (_ BitVec 32)) Bool)

(assert (=> b!1094410 (= res!730435 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapNonEmpty!42196 () Bool)

(declare-fun tp!80712 () Bool)

(assert (=> mapNonEmpty!42196 (= mapRes!42196 (and tp!80712 e!624852))))

(declare-fun mapRest!42196 () (Array (_ BitVec 32) ValueCell!12771))

(declare-fun mapKey!42196 () (_ BitVec 32))

(declare-fun mapValue!42196 () ValueCell!12771)

(assert (=> mapNonEmpty!42196 (= (arr!34066 _values!874) (store mapRest!42196 mapKey!42196 mapValue!42196))))

(declare-fun mapIsEmpty!42196 () Bool)

(assert (=> mapIsEmpty!42196 mapRes!42196))

(declare-fun b!1094411 () Bool)

(declare-fun res!730434 () Bool)

(assert (=> b!1094411 (=> (not res!730434) (not e!624856))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1094411 (= res!730434 (and (= (size!34603 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34604 _keys!1070) (size!34603 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun res!730436 () Bool)

(assert (=> start!96342 (=> (not res!730436) (not e!624856))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96342 (= res!730436 (validMask!0 mask!1414))))

(assert (=> start!96342 e!624856))

(assert (=> start!96342 true))

(declare-fun array_inv!26104 (array!70792) Bool)

(assert (=> start!96342 (and (array_inv!26104 _values!874) e!624854)))

(declare-fun array_inv!26105 (array!70794) Bool)

(assert (=> start!96342 (array_inv!26105 _keys!1070)))

(declare-fun b!1094412 () Bool)

(assert (=> b!1094412 (= e!624856 false)))

(declare-fun lt!489629 () Bool)

(declare-datatypes ((List!23936 0))(
  ( (Nil!23933) (Cons!23932 (h!25141 (_ BitVec 64)) (t!33950 List!23936)) )
))
(declare-fun arrayNoDuplicates!0 (array!70794 (_ BitVec 32) List!23936) Bool)

(assert (=> b!1094412 (= lt!489629 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23933))))

(assert (= (and start!96342 res!730436) b!1094411))

(assert (= (and b!1094411 res!730434) b!1094410))

(assert (= (and b!1094410 res!730435) b!1094412))

(assert (= (and b!1094409 condMapEmpty!42196) mapIsEmpty!42196))

(assert (= (and b!1094409 (not condMapEmpty!42196)) mapNonEmpty!42196))

(get-info :version)

(assert (= (and mapNonEmpty!42196 ((_ is ValueCellFull!12771) mapValue!42196)) b!1094408))

(assert (= (and b!1094409 ((_ is ValueCellFull!12771) mapDefault!42196)) b!1094407))

(assert (= start!96342 b!1094409))

(declare-fun m!1014483 () Bool)

(assert (=> b!1094410 m!1014483))

(declare-fun m!1014485 () Bool)

(assert (=> mapNonEmpty!42196 m!1014485))

(declare-fun m!1014487 () Bool)

(assert (=> start!96342 m!1014487))

(declare-fun m!1014489 () Bool)

(assert (=> start!96342 m!1014489))

(declare-fun m!1014491 () Bool)

(assert (=> start!96342 m!1014491))

(declare-fun m!1014493 () Bool)

(assert (=> b!1094412 m!1014493))

(check-sat (not start!96342) (not b!1094412) tp_is_empty!26961 (not b!1094410) (not mapNonEmpty!42196))
(check-sat)
