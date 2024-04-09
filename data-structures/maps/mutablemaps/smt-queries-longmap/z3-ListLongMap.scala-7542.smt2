; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95610 () Bool)

(assert start!95610)

(declare-fun b!1079551 () Bool)

(declare-fun e!617237 () Bool)

(declare-fun tp_is_empty!26229 () Bool)

(assert (=> b!1079551 (= e!617237 tp_is_empty!26229)))

(declare-fun b!1079552 () Bool)

(declare-fun e!617239 () Bool)

(assert (=> b!1079552 (= e!617239 tp_is_empty!26229)))

(declare-fun b!1079553 () Bool)

(declare-fun res!719525 () Bool)

(declare-fun e!617236 () Bool)

(assert (=> b!1079553 (=> (not res!719525) (not e!617236))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!69368 0))(
  ( (array!69369 (arr!33354 (Array (_ BitVec 32) (_ BitVec 64))) (size!33891 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69368)

(declare-datatypes ((V!40099 0))(
  ( (V!40100 (val!13171 Int)) )
))
(declare-datatypes ((ValueCell!12405 0))(
  ( (ValueCellFull!12405 (v!15793 V!40099)) (EmptyCell!12405) )
))
(declare-datatypes ((array!69370 0))(
  ( (array!69371 (arr!33355 (Array (_ BitVec 32) ValueCell!12405)) (size!33892 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69370)

(assert (=> b!1079553 (= res!719525 (and (= (size!33892 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33891 _keys!1070) (size!33892 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun res!719523 () Bool)

(assert (=> start!95610 (=> (not res!719523) (not e!617236))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95610 (= res!719523 (validMask!0 mask!1414))))

(assert (=> start!95610 e!617236))

(assert (=> start!95610 true))

(declare-fun array_inv!25622 (array!69368) Bool)

(assert (=> start!95610 (array_inv!25622 _keys!1070)))

(declare-fun e!617234 () Bool)

(declare-fun array_inv!25623 (array!69370) Bool)

(assert (=> start!95610 (and (array_inv!25623 _values!874) e!617234)))

(declare-fun b!1079554 () Bool)

(declare-fun res!719526 () Bool)

(assert (=> b!1079554 (=> (not res!719526) (not e!617236))))

(declare-datatypes ((List!23379 0))(
  ( (Nil!23376) (Cons!23375 (h!24584 (_ BitVec 64)) (t!32745 List!23379)) )
))
(declare-fun arrayNoDuplicates!0 (array!69368 (_ BitVec 32) List!23379) Bool)

(assert (=> b!1079554 (= res!719526 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23376))))

(declare-fun b!1079555 () Bool)

(declare-fun res!719521 () Bool)

(assert (=> b!1079555 (=> (not res!719521) (not e!617236))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1079555 (= res!719521 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33891 _keys!1070))))))

(declare-fun b!1079556 () Bool)

(declare-fun mapRes!41098 () Bool)

(assert (=> b!1079556 (= e!617234 (and e!617237 mapRes!41098))))

(declare-fun condMapEmpty!41098 () Bool)

(declare-fun mapDefault!41098 () ValueCell!12405)

(assert (=> b!1079556 (= condMapEmpty!41098 (= (arr!33355 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12405)) mapDefault!41098)))))

(declare-fun b!1079557 () Bool)

(declare-fun e!617238 () Bool)

(assert (=> b!1079557 (= e!617236 e!617238)))

(declare-fun res!719527 () Bool)

(assert (=> b!1079557 (=> (not res!719527) (not e!617238))))

(declare-fun lt!478817 () array!69368)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69368 (_ BitVec 32)) Bool)

(assert (=> b!1079557 (= res!719527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478817 mask!1414))))

(assert (=> b!1079557 (= lt!478817 (array!69369 (store (arr!33354 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33891 _keys!1070)))))

(declare-fun mapIsEmpty!41098 () Bool)

(assert (=> mapIsEmpty!41098 mapRes!41098))

(declare-fun mapNonEmpty!41098 () Bool)

(declare-fun tp!78561 () Bool)

(assert (=> mapNonEmpty!41098 (= mapRes!41098 (and tp!78561 e!617239))))

(declare-fun mapValue!41098 () ValueCell!12405)

(declare-fun mapRest!41098 () (Array (_ BitVec 32) ValueCell!12405))

(declare-fun mapKey!41098 () (_ BitVec 32))

(assert (=> mapNonEmpty!41098 (= (arr!33355 _values!874) (store mapRest!41098 mapKey!41098 mapValue!41098))))

(declare-fun b!1079558 () Bool)

(declare-fun res!719520 () Bool)

(assert (=> b!1079558 (=> (not res!719520) (not e!617238))))

(assert (=> b!1079558 (= res!719520 (arrayNoDuplicates!0 lt!478817 #b00000000000000000000000000000000 Nil!23376))))

(declare-fun b!1079559 () Bool)

(declare-fun res!719524 () Bool)

(assert (=> b!1079559 (=> (not res!719524) (not e!617236))))

(assert (=> b!1079559 (= res!719524 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1079560 () Bool)

(declare-fun res!719522 () Bool)

(assert (=> b!1079560 (=> (not res!719522) (not e!617236))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1079560 (= res!719522 (validKeyInArray!0 k0!904))))

(declare-fun b!1079561 () Bool)

(declare-fun res!719528 () Bool)

(assert (=> b!1079561 (=> (not res!719528) (not e!617236))))

(assert (=> b!1079561 (= res!719528 (= (select (arr!33354 _keys!1070) i!650) k0!904))))

(declare-fun b!1079562 () Bool)

(assert (=> b!1079562 (= e!617238 (not true))))

(declare-fun arrayContainsKey!0 (array!69368 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1079562 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35443 0))(
  ( (Unit!35444) )
))
(declare-fun lt!478816 () Unit!35443)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69368 (_ BitVec 64) (_ BitVec 32)) Unit!35443)

(assert (=> b!1079562 (= lt!478816 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(assert (= (and start!95610 res!719523) b!1079553))

(assert (= (and b!1079553 res!719525) b!1079559))

(assert (= (and b!1079559 res!719524) b!1079554))

(assert (= (and b!1079554 res!719526) b!1079555))

(assert (= (and b!1079555 res!719521) b!1079560))

(assert (= (and b!1079560 res!719522) b!1079561))

(assert (= (and b!1079561 res!719528) b!1079557))

(assert (= (and b!1079557 res!719527) b!1079558))

(assert (= (and b!1079558 res!719520) b!1079562))

(assert (= (and b!1079556 condMapEmpty!41098) mapIsEmpty!41098))

(assert (= (and b!1079556 (not condMapEmpty!41098)) mapNonEmpty!41098))

(get-info :version)

(assert (= (and mapNonEmpty!41098 ((_ is ValueCellFull!12405) mapValue!41098)) b!1079552))

(assert (= (and b!1079556 ((_ is ValueCellFull!12405) mapDefault!41098)) b!1079551))

(assert (= start!95610 b!1079556))

(declare-fun m!997853 () Bool)

(assert (=> b!1079558 m!997853))

(declare-fun m!997855 () Bool)

(assert (=> start!95610 m!997855))

(declare-fun m!997857 () Bool)

(assert (=> start!95610 m!997857))

(declare-fun m!997859 () Bool)

(assert (=> start!95610 m!997859))

(declare-fun m!997861 () Bool)

(assert (=> b!1079554 m!997861))

(declare-fun m!997863 () Bool)

(assert (=> b!1079562 m!997863))

(declare-fun m!997865 () Bool)

(assert (=> b!1079562 m!997865))

(declare-fun m!997867 () Bool)

(assert (=> b!1079559 m!997867))

(declare-fun m!997869 () Bool)

(assert (=> b!1079557 m!997869))

(declare-fun m!997871 () Bool)

(assert (=> b!1079557 m!997871))

(declare-fun m!997873 () Bool)

(assert (=> b!1079561 m!997873))

(declare-fun m!997875 () Bool)

(assert (=> b!1079560 m!997875))

(declare-fun m!997877 () Bool)

(assert (=> mapNonEmpty!41098 m!997877))

(check-sat (not b!1079557) tp_is_empty!26229 (not b!1079559) (not b!1079558) (not start!95610) (not mapNonEmpty!41098) (not b!1079560) (not b!1079562) (not b!1079554))
(check-sat)
