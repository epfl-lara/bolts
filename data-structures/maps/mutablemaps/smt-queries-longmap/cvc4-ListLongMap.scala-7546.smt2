; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95636 () Bool)

(assert start!95636)

(declare-fun b_free!22253 () Bool)

(declare-fun b_next!22253 () Bool)

(assert (=> start!95636 (= b_free!22253 (not b_next!22253))))

(declare-fun tp!78609 () Bool)

(declare-fun b_and!35249 () Bool)

(assert (=> start!95636 (= tp!78609 b_and!35249)))

(declare-fun b!1080019 () Bool)

(declare-fun e!617472 () Bool)

(assert (=> b!1080019 (= e!617472 (not true))))

(declare-datatypes ((V!40133 0))(
  ( (V!40134 (val!13184 Int)) )
))
(declare-fun minValue!831 () V!40133)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!40133)

(declare-datatypes ((tuple2!16768 0))(
  ( (tuple2!16769 (_1!8394 (_ BitVec 64)) (_2!8394 V!40133)) )
))
(declare-datatypes ((List!23390 0))(
  ( (Nil!23387) (Cons!23386 (h!24595 tuple2!16768) (t!32756 List!23390)) )
))
(declare-datatypes ((ListLongMap!14749 0))(
  ( (ListLongMap!14750 (toList!7390 List!23390)) )
))
(declare-fun lt!478903 () ListLongMap!14749)

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((array!69416 0))(
  ( (array!69417 (arr!33378 (Array (_ BitVec 32) (_ BitVec 64))) (size!33915 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69416)

(declare-datatypes ((ValueCell!12418 0))(
  ( (ValueCellFull!12418 (v!15806 V!40133)) (EmptyCell!12418) )
))
(declare-datatypes ((array!69418 0))(
  ( (array!69419 (arr!33379 (Array (_ BitVec 32) ValueCell!12418)) (size!33916 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69418)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3901 (array!69416 array!69418 (_ BitVec 32) (_ BitVec 32) V!40133 V!40133 (_ BitVec 32) Int) ListLongMap!14749)

(assert (=> b!1080019 (= lt!478903 (getCurrentListMapNoExtraKeys!3901 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!69416 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1080019 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35459 0))(
  ( (Unit!35460) )
))
(declare-fun lt!478904 () Unit!35459)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69416 (_ BitVec 64) (_ BitVec 32)) Unit!35459)

(assert (=> b!1080019 (= lt!478904 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1080020 () Bool)

(declare-fun e!617468 () Bool)

(assert (=> b!1080020 (= e!617468 e!617472)))

(declare-fun res!719874 () Bool)

(assert (=> b!1080020 (=> (not res!719874) (not e!617472))))

(declare-fun lt!478902 () array!69416)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69416 (_ BitVec 32)) Bool)

(assert (=> b!1080020 (= res!719874 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478902 mask!1414))))

(assert (=> b!1080020 (= lt!478902 (array!69417 (store (arr!33378 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33915 _keys!1070)))))

(declare-fun b!1080021 () Bool)

(declare-fun e!617469 () Bool)

(declare-fun e!617470 () Bool)

(declare-fun mapRes!41137 () Bool)

(assert (=> b!1080021 (= e!617469 (and e!617470 mapRes!41137))))

(declare-fun condMapEmpty!41137 () Bool)

(declare-fun mapDefault!41137 () ValueCell!12418)

