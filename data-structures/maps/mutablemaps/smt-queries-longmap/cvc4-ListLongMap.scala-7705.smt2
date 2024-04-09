; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96800 () Bool)

(assert start!96800)

(declare-fun b_free!23159 () Bool)

(declare-fun b_next!23159 () Bool)

(assert (=> start!96800 (= b_free!23159 (not b_next!23159))))

(declare-fun tp!81426 () Bool)

(declare-fun b_and!37097 () Bool)

(assert (=> start!96800 (= tp!81426 b_and!37097)))

(declare-fun mapNonEmpty!42595 () Bool)

(declare-fun mapRes!42595 () Bool)

(declare-fun tp!81425 () Bool)

(declare-fun e!628294 () Bool)

(assert (=> mapNonEmpty!42595 (= mapRes!42595 (and tp!81425 e!628294))))

(declare-datatypes ((V!41405 0))(
  ( (V!41406 (val!13661 Int)) )
))
(declare-datatypes ((ValueCell!12895 0))(
  ( (ValueCellFull!12895 (v!16290 V!41405)) (EmptyCell!12895) )
))
(declare-fun mapRest!42595 () (Array (_ BitVec 32) ValueCell!12895))

(declare-datatypes ((array!71286 0))(
  ( (array!71287 (arr!34304 (Array (_ BitVec 32) ValueCell!12895)) (size!34841 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71286)

(declare-fun mapKey!42595 () (_ BitVec 32))

(declare-fun mapValue!42595 () ValueCell!12895)

(assert (=> mapNonEmpty!42595 (= (arr!34304 _values!874) (store mapRest!42595 mapKey!42595 mapValue!42595))))

(declare-datatypes ((tuple2!17434 0))(
  ( (tuple2!17435 (_1!8727 (_ BitVec 64)) (_2!8727 V!41405)) )
))
(declare-datatypes ((List!24106 0))(
  ( (Nil!24103) (Cons!24102 (h!25311 tuple2!17434) (t!34318 List!24106)) )
))
(declare-datatypes ((ListLongMap!15415 0))(
  ( (ListLongMap!15416 (toList!7723 List!24106)) )
))
(declare-fun lt!493307 () ListLongMap!15415)

(declare-fun minValue!831 () V!41405)

(declare-fun lt!493301 () ListLongMap!15415)

(declare-fun e!628291 () Bool)

(declare-fun b!1100720 () Bool)

(declare-fun +!3356 (ListLongMap!15415 tuple2!17434) ListLongMap!15415)

(assert (=> b!1100720 (= e!628291 (= lt!493307 (+!3356 lt!493301 (tuple2!17435 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun mapIsEmpty!42595 () Bool)

(assert (=> mapIsEmpty!42595 mapRes!42595))

(declare-fun b!1100721 () Bool)

(declare-fun res!734621 () Bool)

(declare-fun e!628290 () Bool)

(assert (=> b!1100721 (=> (not res!734621) (not e!628290))))

(declare-datatypes ((array!71288 0))(
  ( (array!71289 (arr!34305 (Array (_ BitVec 32) (_ BitVec 64))) (size!34842 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71288)

(declare-datatypes ((List!24107 0))(
  ( (Nil!24104) (Cons!24103 (h!25312 (_ BitVec 64)) (t!34319 List!24107)) )
))
(declare-fun arrayNoDuplicates!0 (array!71288 (_ BitVec 32) List!24107) Bool)

(assert (=> b!1100721 (= res!734621 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24104))))

(declare-fun b!1100722 () Bool)

(declare-fun res!734619 () Bool)

(declare-fun e!628293 () Bool)

(assert (=> b!1100722 (=> (not res!734619) (not e!628293))))

(declare-fun lt!493304 () array!71288)

(assert (=> b!1100722 (= res!734619 (arrayNoDuplicates!0 lt!493304 #b00000000000000000000000000000000 Nil!24104))))

(declare-fun b!1100723 () Bool)

(declare-fun res!734624 () Bool)

(assert (=> b!1100723 (=> (not res!734624) (not e!628290))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1100723 (= res!734624 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34842 _keys!1070))))))

(declare-fun b!1100724 () Bool)

(declare-fun res!734618 () Bool)

(assert (=> b!1100724 (=> (not res!734618) (not e!628290))))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1100724 (= res!734618 (= (select (arr!34305 _keys!1070) i!650) k!904))))

(declare-fun b!1100725 () Bool)

(declare-fun res!734626 () Bool)

(assert (=> b!1100725 (=> (not res!734626) (not e!628290))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1100725 (= res!734626 (and (= (size!34841 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34842 _keys!1070) (size!34841 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1100726 () Bool)

(declare-fun e!628289 () Bool)

(declare-fun e!628292 () Bool)

(assert (=> b!1100726 (= e!628289 (and e!628292 mapRes!42595))))

(declare-fun condMapEmpty!42595 () Bool)

(declare-fun mapDefault!42595 () ValueCell!12895)

