; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95534 () Bool)

(assert start!95534)

(declare-fun b!1078434 () Bool)

(declare-fun e!616659 () Bool)

(declare-fun tp_is_empty!26169 () Bool)

(assert (=> b!1078434 (= e!616659 tp_is_empty!26169)))

(declare-fun b!1078435 () Bool)

(declare-fun e!616656 () Bool)

(declare-fun mapRes!41005 () Bool)

(assert (=> b!1078435 (= e!616656 (and e!616659 mapRes!41005))))

(declare-fun condMapEmpty!41005 () Bool)

(declare-datatypes ((V!40019 0))(
  ( (V!40020 (val!13141 Int)) )
))
(declare-datatypes ((ValueCell!12375 0))(
  ( (ValueCellFull!12375 (v!15763 V!40019)) (EmptyCell!12375) )
))
(declare-datatypes ((array!69252 0))(
  ( (array!69253 (arr!33297 (Array (_ BitVec 32) ValueCell!12375)) (size!33834 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69252)

(declare-fun mapDefault!41005 () ValueCell!12375)

(assert (=> b!1078435 (= condMapEmpty!41005 (= (arr!33297 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12375)) mapDefault!41005)))))

(declare-fun mapNonEmpty!41005 () Bool)

(declare-fun tp!78468 () Bool)

(declare-fun e!616654 () Bool)

(assert (=> mapNonEmpty!41005 (= mapRes!41005 (and tp!78468 e!616654))))

(declare-fun mapKey!41005 () (_ BitVec 32))

(declare-fun mapValue!41005 () ValueCell!12375)

(declare-fun mapRest!41005 () (Array (_ BitVec 32) ValueCell!12375))

(assert (=> mapNonEmpty!41005 (= (arr!33297 _values!874) (store mapRest!41005 mapKey!41005 mapValue!41005))))

(declare-fun b!1078436 () Bool)

(declare-fun e!616658 () Bool)

(assert (=> b!1078436 (= e!616658 false)))

(declare-fun lt!478622 () Bool)

(declare-datatypes ((array!69254 0))(
  ( (array!69255 (arr!33298 (Array (_ BitVec 32) (_ BitVec 64))) (size!33835 (_ BitVec 32))) )
))
(declare-fun lt!478621 () array!69254)

(declare-datatypes ((List!23354 0))(
  ( (Nil!23351) (Cons!23350 (h!24559 (_ BitVec 64)) (t!32720 List!23354)) )
))
(declare-fun arrayNoDuplicates!0 (array!69254 (_ BitVec 32) List!23354) Bool)

(assert (=> b!1078436 (= lt!478622 (arrayNoDuplicates!0 lt!478621 #b00000000000000000000000000000000 Nil!23351))))

(declare-fun b!1078437 () Bool)

(declare-fun res!718700 () Bool)

(declare-fun e!616657 () Bool)

(assert (=> b!1078437 (=> (not res!718700) (not e!616657))))

(declare-fun _keys!1070 () array!69254)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69254 (_ BitVec 32)) Bool)

(assert (=> b!1078437 (= res!718700 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1078438 () Bool)

(declare-fun res!718698 () Bool)

(assert (=> b!1078438 (=> (not res!718698) (not e!616657))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1078438 (= res!718698 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33835 _keys!1070))))))

(declare-fun b!1078439 () Bool)

(declare-fun res!718703 () Bool)

(assert (=> b!1078439 (=> (not res!718703) (not e!616657))))

(assert (=> b!1078439 (= res!718703 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23351))))

(declare-fun res!718702 () Bool)

(assert (=> start!95534 (=> (not res!718702) (not e!616657))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95534 (= res!718702 (validMask!0 mask!1414))))

(assert (=> start!95534 e!616657))

(assert (=> start!95534 true))

(declare-fun array_inv!25586 (array!69254) Bool)

(assert (=> start!95534 (array_inv!25586 _keys!1070)))

(declare-fun array_inv!25587 (array!69252) Bool)

(assert (=> start!95534 (and (array_inv!25587 _values!874) e!616656)))

(declare-fun b!1078440 () Bool)

(declare-fun res!718704 () Bool)

(assert (=> b!1078440 (=> (not res!718704) (not e!616657))))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1078440 (= res!718704 (= (select (arr!33298 _keys!1070) i!650) k0!904))))

(declare-fun b!1078441 () Bool)

(assert (=> b!1078441 (= e!616657 e!616658)))

(declare-fun res!718697 () Bool)

(assert (=> b!1078441 (=> (not res!718697) (not e!616658))))

(assert (=> b!1078441 (= res!718697 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478621 mask!1414))))

(assert (=> b!1078441 (= lt!478621 (array!69255 (store (arr!33298 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33835 _keys!1070)))))

(declare-fun b!1078442 () Bool)

(assert (=> b!1078442 (= e!616654 tp_is_empty!26169)))

(declare-fun mapIsEmpty!41005 () Bool)

(assert (=> mapIsEmpty!41005 mapRes!41005))

(declare-fun b!1078443 () Bool)

(declare-fun res!718699 () Bool)

(assert (=> b!1078443 (=> (not res!718699) (not e!616657))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1078443 (= res!718699 (and (= (size!33834 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33835 _keys!1070) (size!33834 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1078444 () Bool)

(declare-fun res!718701 () Bool)

(assert (=> b!1078444 (=> (not res!718701) (not e!616657))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1078444 (= res!718701 (validKeyInArray!0 k0!904))))

(assert (= (and start!95534 res!718702) b!1078443))

(assert (= (and b!1078443 res!718699) b!1078437))

(assert (= (and b!1078437 res!718700) b!1078439))

(assert (= (and b!1078439 res!718703) b!1078438))

(assert (= (and b!1078438 res!718698) b!1078444))

(assert (= (and b!1078444 res!718701) b!1078440))

(assert (= (and b!1078440 res!718704) b!1078441))

(assert (= (and b!1078441 res!718697) b!1078436))

(assert (= (and b!1078435 condMapEmpty!41005) mapIsEmpty!41005))

(assert (= (and b!1078435 (not condMapEmpty!41005)) mapNonEmpty!41005))

(get-info :version)

(assert (= (and mapNonEmpty!41005 ((_ is ValueCellFull!12375) mapValue!41005)) b!1078442))

(assert (= (and b!1078435 ((_ is ValueCellFull!12375) mapDefault!41005)) b!1078434))

(assert (= start!95534 b!1078435))

(declare-fun m!997055 () Bool)

(assert (=> mapNonEmpty!41005 m!997055))

(declare-fun m!997057 () Bool)

(assert (=> b!1078436 m!997057))

(declare-fun m!997059 () Bool)

(assert (=> start!95534 m!997059))

(declare-fun m!997061 () Bool)

(assert (=> start!95534 m!997061))

(declare-fun m!997063 () Bool)

(assert (=> start!95534 m!997063))

(declare-fun m!997065 () Bool)

(assert (=> b!1078439 m!997065))

(declare-fun m!997067 () Bool)

(assert (=> b!1078440 m!997067))

(declare-fun m!997069 () Bool)

(assert (=> b!1078437 m!997069))

(declare-fun m!997071 () Bool)

(assert (=> b!1078441 m!997071))

(declare-fun m!997073 () Bool)

(assert (=> b!1078441 m!997073))

(declare-fun m!997075 () Bool)

(assert (=> b!1078444 m!997075))

(check-sat (not start!95534) (not b!1078441) (not mapNonEmpty!41005) tp_is_empty!26169 (not b!1078437) (not b!1078439) (not b!1078436) (not b!1078444))
(check-sat)
