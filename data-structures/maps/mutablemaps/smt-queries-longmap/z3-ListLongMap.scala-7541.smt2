; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95604 () Bool)

(assert start!95604)

(declare-fun mapIsEmpty!41089 () Bool)

(declare-fun mapRes!41089 () Bool)

(assert (=> mapIsEmpty!41089 mapRes!41089))

(declare-fun b!1079443 () Bool)

(declare-fun res!719445 () Bool)

(declare-fun e!617181 () Bool)

(assert (=> b!1079443 (=> (not res!719445) (not e!617181))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!69356 0))(
  ( (array!69357 (arr!33348 (Array (_ BitVec 32) (_ BitVec 64))) (size!33885 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69356)

(declare-datatypes ((V!40091 0))(
  ( (V!40092 (val!13168 Int)) )
))
(declare-datatypes ((ValueCell!12402 0))(
  ( (ValueCellFull!12402 (v!15790 V!40091)) (EmptyCell!12402) )
))
(declare-datatypes ((array!69358 0))(
  ( (array!69359 (arr!33349 (Array (_ BitVec 32) ValueCell!12402)) (size!33886 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69358)

(assert (=> b!1079443 (= res!719445 (and (= (size!33886 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33885 _keys!1070) (size!33886 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1079444 () Bool)

(declare-fun res!719441 () Bool)

(assert (=> b!1079444 (=> (not res!719441) (not e!617181))))

(declare-datatypes ((List!23377 0))(
  ( (Nil!23374) (Cons!23373 (h!24582 (_ BitVec 64)) (t!32743 List!23377)) )
))
(declare-fun arrayNoDuplicates!0 (array!69356 (_ BitVec 32) List!23377) Bool)

(assert (=> b!1079444 (= res!719441 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23374))))

(declare-fun b!1079445 () Bool)

(declare-fun e!617180 () Bool)

(assert (=> b!1079445 (= e!617181 e!617180)))

(declare-fun res!719442 () Bool)

(assert (=> b!1079445 (=> (not res!719442) (not e!617180))))

(declare-fun lt!478798 () array!69356)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69356 (_ BitVec 32)) Bool)

(assert (=> b!1079445 (= res!719442 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478798 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1079445 (= lt!478798 (array!69357 (store (arr!33348 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33885 _keys!1070)))))

(declare-fun b!1079446 () Bool)

(declare-fun e!617185 () Bool)

(declare-fun tp_is_empty!26223 () Bool)

(assert (=> b!1079446 (= e!617185 tp_is_empty!26223)))

(declare-fun b!1079447 () Bool)

(declare-fun res!719446 () Bool)

(assert (=> b!1079447 (=> (not res!719446) (not e!617180))))

(assert (=> b!1079447 (= res!719446 (arrayNoDuplicates!0 lt!478798 #b00000000000000000000000000000000 Nil!23374))))

(declare-fun b!1079448 () Bool)

(declare-fun res!719443 () Bool)

(assert (=> b!1079448 (=> (not res!719443) (not e!617181))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1079448 (= res!719443 (validKeyInArray!0 k0!904))))

(declare-fun res!719440 () Bool)

(assert (=> start!95604 (=> (not res!719440) (not e!617181))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95604 (= res!719440 (validMask!0 mask!1414))))

(assert (=> start!95604 e!617181))

(assert (=> start!95604 true))

(declare-fun array_inv!25620 (array!69356) Bool)

(assert (=> start!95604 (array_inv!25620 _keys!1070)))

(declare-fun e!617183 () Bool)

(declare-fun array_inv!25621 (array!69358) Bool)

(assert (=> start!95604 (and (array_inv!25621 _values!874) e!617183)))

(declare-fun b!1079449 () Bool)

(declare-fun res!719439 () Bool)

(assert (=> b!1079449 (=> (not res!719439) (not e!617181))))

(assert (=> b!1079449 (= res!719439 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33885 _keys!1070))))))

(declare-fun b!1079450 () Bool)

(assert (=> b!1079450 (= e!617180 (not true))))

(declare-fun arrayContainsKey!0 (array!69356 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1079450 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35439 0))(
  ( (Unit!35440) )
))
(declare-fun lt!478799 () Unit!35439)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69356 (_ BitVec 64) (_ BitVec 32)) Unit!35439)

(assert (=> b!1079450 (= lt!478799 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun mapNonEmpty!41089 () Bool)

(declare-fun tp!78552 () Bool)

(declare-fun e!617184 () Bool)

(assert (=> mapNonEmpty!41089 (= mapRes!41089 (and tp!78552 e!617184))))

(declare-fun mapValue!41089 () ValueCell!12402)

(declare-fun mapKey!41089 () (_ BitVec 32))

(declare-fun mapRest!41089 () (Array (_ BitVec 32) ValueCell!12402))

(assert (=> mapNonEmpty!41089 (= (arr!33349 _values!874) (store mapRest!41089 mapKey!41089 mapValue!41089))))

(declare-fun b!1079451 () Bool)

(declare-fun res!719447 () Bool)

(assert (=> b!1079451 (=> (not res!719447) (not e!617181))))

(assert (=> b!1079451 (= res!719447 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1079452 () Bool)

(assert (=> b!1079452 (= e!617184 tp_is_empty!26223)))

(declare-fun b!1079453 () Bool)

(assert (=> b!1079453 (= e!617183 (and e!617185 mapRes!41089))))

(declare-fun condMapEmpty!41089 () Bool)

(declare-fun mapDefault!41089 () ValueCell!12402)

(assert (=> b!1079453 (= condMapEmpty!41089 (= (arr!33349 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12402)) mapDefault!41089)))))

(declare-fun b!1079454 () Bool)

(declare-fun res!719444 () Bool)

(assert (=> b!1079454 (=> (not res!719444) (not e!617181))))

(assert (=> b!1079454 (= res!719444 (= (select (arr!33348 _keys!1070) i!650) k0!904))))

(assert (= (and start!95604 res!719440) b!1079443))

(assert (= (and b!1079443 res!719445) b!1079451))

(assert (= (and b!1079451 res!719447) b!1079444))

(assert (= (and b!1079444 res!719441) b!1079449))

(assert (= (and b!1079449 res!719439) b!1079448))

(assert (= (and b!1079448 res!719443) b!1079454))

(assert (= (and b!1079454 res!719444) b!1079445))

(assert (= (and b!1079445 res!719442) b!1079447))

(assert (= (and b!1079447 res!719446) b!1079450))

(assert (= (and b!1079453 condMapEmpty!41089) mapIsEmpty!41089))

(assert (= (and b!1079453 (not condMapEmpty!41089)) mapNonEmpty!41089))

(get-info :version)

(assert (= (and mapNonEmpty!41089 ((_ is ValueCellFull!12402) mapValue!41089)) b!1079452))

(assert (= (and b!1079453 ((_ is ValueCellFull!12402) mapDefault!41089)) b!1079446))

(assert (= start!95604 b!1079453))

(declare-fun m!997775 () Bool)

(assert (=> b!1079448 m!997775))

(declare-fun m!997777 () Bool)

(assert (=> b!1079450 m!997777))

(declare-fun m!997779 () Bool)

(assert (=> b!1079450 m!997779))

(declare-fun m!997781 () Bool)

(assert (=> b!1079444 m!997781))

(declare-fun m!997783 () Bool)

(assert (=> mapNonEmpty!41089 m!997783))

(declare-fun m!997785 () Bool)

(assert (=> b!1079447 m!997785))

(declare-fun m!997787 () Bool)

(assert (=> b!1079451 m!997787))

(declare-fun m!997789 () Bool)

(assert (=> start!95604 m!997789))

(declare-fun m!997791 () Bool)

(assert (=> start!95604 m!997791))

(declare-fun m!997793 () Bool)

(assert (=> start!95604 m!997793))

(declare-fun m!997795 () Bool)

(assert (=> b!1079454 m!997795))

(declare-fun m!997797 () Bool)

(assert (=> b!1079445 m!997797))

(declare-fun m!997799 () Bool)

(assert (=> b!1079445 m!997799))

(check-sat tp_is_empty!26223 (not b!1079448) (not b!1079444) (not b!1079447) (not b!1079450) (not start!95604) (not b!1079445) (not b!1079451) (not mapNonEmpty!41089))
(check-sat)
