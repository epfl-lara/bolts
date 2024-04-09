; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95722 () Bool)

(assert start!95722)

(declare-fun b_free!22339 () Bool)

(declare-fun b_next!22339 () Bool)

(assert (=> start!95722 (= b_free!22339 (not b_next!22339))))

(declare-fun tp!78867 () Bool)

(declare-fun b_and!35371 () Bool)

(assert (=> start!95722 (= tp!78867 b_and!35371)))

(declare-fun b!1081604 () Bool)

(declare-fun res!721040 () Bool)

(declare-fun e!618244 () Bool)

(assert (=> b!1081604 (=> (not res!721040) (not e!618244))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1081604 (= res!721040 (validKeyInArray!0 k!904))))

(declare-fun b!1081605 () Bool)

(declare-fun e!618245 () Bool)

(declare-fun tp_is_empty!26341 () Bool)

(assert (=> b!1081605 (= e!618245 tp_is_empty!26341)))

(declare-fun b!1081606 () Bool)

(declare-fun res!721037 () Bool)

(declare-fun e!618243 () Bool)

(assert (=> b!1081606 (=> (not res!721037) (not e!618243))))

(declare-datatypes ((array!69586 0))(
  ( (array!69587 (arr!33463 (Array (_ BitVec 32) (_ BitVec 64))) (size!34000 (_ BitVec 32))) )
))
(declare-fun lt!479346 () array!69586)

(declare-datatypes ((List!23457 0))(
  ( (Nil!23454) (Cons!23453 (h!24662 (_ BitVec 64)) (t!32861 List!23457)) )
))
(declare-fun arrayNoDuplicates!0 (array!69586 (_ BitVec 32) List!23457) Bool)

(assert (=> b!1081606 (= res!721037 (arrayNoDuplicates!0 lt!479346 #b00000000000000000000000000000000 Nil!23454))))

(declare-fun b!1081607 () Bool)

(assert (=> b!1081607 (= e!618244 e!618243)))

(declare-fun res!721039 () Bool)

(assert (=> b!1081607 (=> (not res!721039) (not e!618243))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69586 (_ BitVec 32)) Bool)

(assert (=> b!1081607 (= res!721039 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479346 mask!1414))))

(declare-fun _keys!1070 () array!69586)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1081607 (= lt!479346 (array!69587 (store (arr!33463 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34000 _keys!1070)))))

(declare-fun mapNonEmpty!41266 () Bool)

(declare-fun mapRes!41266 () Bool)

(declare-fun tp!78866 () Bool)

(declare-fun e!618247 () Bool)

(assert (=> mapNonEmpty!41266 (= mapRes!41266 (and tp!78866 e!618247))))

(declare-datatypes ((V!40249 0))(
  ( (V!40250 (val!13227 Int)) )
))
(declare-datatypes ((ValueCell!12461 0))(
  ( (ValueCellFull!12461 (v!15849 V!40249)) (EmptyCell!12461) )
))
(declare-fun mapRest!41266 () (Array (_ BitVec 32) ValueCell!12461))

(declare-datatypes ((array!69588 0))(
  ( (array!69589 (arr!33464 (Array (_ BitVec 32) ValueCell!12461)) (size!34001 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69588)

(declare-fun mapKey!41266 () (_ BitVec 32))

(declare-fun mapValue!41266 () ValueCell!12461)

(assert (=> mapNonEmpty!41266 (= (arr!33464 _values!874) (store mapRest!41266 mapKey!41266 mapValue!41266))))

(declare-fun b!1081608 () Bool)

(declare-fun res!721034 () Bool)

(assert (=> b!1081608 (=> (not res!721034) (not e!618244))))

(assert (=> b!1081608 (= res!721034 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23454))))

(declare-fun res!721033 () Bool)

(assert (=> start!95722 (=> (not res!721033) (not e!618244))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95722 (= res!721033 (validMask!0 mask!1414))))

(assert (=> start!95722 e!618244))

(assert (=> start!95722 tp!78867))

(assert (=> start!95722 true))

(assert (=> start!95722 tp_is_empty!26341))

(declare-fun array_inv!25692 (array!69586) Bool)

(assert (=> start!95722 (array_inv!25692 _keys!1070)))

(declare-fun e!618246 () Bool)

(declare-fun array_inv!25693 (array!69588) Bool)

(assert (=> start!95722 (and (array_inv!25693 _values!874) e!618246)))

(declare-fun b!1081603 () Bool)

(declare-fun res!721032 () Bool)

(assert (=> b!1081603 (=> (not res!721032) (not e!618244))))

(assert (=> b!1081603 (= res!721032 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1081609 () Bool)

(declare-fun res!721038 () Bool)

(assert (=> b!1081609 (=> (not res!721038) (not e!618244))))

(assert (=> b!1081609 (= res!721038 (= (select (arr!33463 _keys!1070) i!650) k!904))))

(declare-fun b!1081610 () Bool)

(declare-fun res!721035 () Bool)

(assert (=> b!1081610 (=> (not res!721035) (not e!618244))))

(assert (=> b!1081610 (= res!721035 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34000 _keys!1070))))))

(declare-fun b!1081611 () Bool)

(declare-fun res!721036 () Bool)

(assert (=> b!1081611 (=> (not res!721036) (not e!618244))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1081611 (= res!721036 (and (= (size!34001 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34000 _keys!1070) (size!34001 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!41266 () Bool)

(assert (=> mapIsEmpty!41266 mapRes!41266))

(declare-fun b!1081612 () Bool)

(assert (=> b!1081612 (= e!618246 (and e!618245 mapRes!41266))))

(declare-fun condMapEmpty!41266 () Bool)

(declare-fun mapDefault!41266 () ValueCell!12461)

