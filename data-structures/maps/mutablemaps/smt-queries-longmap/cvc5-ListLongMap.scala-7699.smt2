; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96708 () Bool)

(assert start!96708)

(declare-fun b_free!23119 () Bool)

(declare-fun b_next!23119 () Bool)

(assert (=> start!96708 (= b_free!23119 (not b_next!23119))))

(declare-fun tp!81300 () Bool)

(declare-fun b_and!36989 () Bool)

(assert (=> start!96708 (= tp!81300 b_and!36989)))

(declare-fun b!1099446 () Bool)

(declare-datatypes ((V!41353 0))(
  ( (V!41354 (val!13641 Int)) )
))
(declare-datatypes ((tuple2!17402 0))(
  ( (tuple2!17403 (_1!8711 (_ BitVec 64)) (_2!8711 V!41353)) )
))
(declare-datatypes ((List!24077 0))(
  ( (Nil!24074) (Cons!24073 (h!25282 tuple2!17402) (t!34249 List!24077)) )
))
(declare-datatypes ((ListLongMap!15383 0))(
  ( (ListLongMap!15384 (toList!7707 List!24077)) )
))
(declare-fun lt!492318 () ListLongMap!15383)

(declare-fun lt!492327 () tuple2!17402)

(declare-fun e!627563 () Bool)

(declare-fun lt!492325 () ListLongMap!15383)

(declare-fun +!3342 (ListLongMap!15383 tuple2!17402) ListLongMap!15383)

(assert (=> b!1099446 (= e!627563 (= lt!492325 (+!3342 lt!492318 lt!492327)))))

(declare-fun lt!492322 () ListLongMap!15383)

(declare-fun lt!492320 () ListLongMap!15383)

(assert (=> b!1099446 (= lt!492322 (+!3342 lt!492320 lt!492327))))

(declare-fun zeroValue!831 () V!41353)

(assert (=> b!1099446 (= lt!492327 (tuple2!17403 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1099447 () Bool)

(declare-fun res!733785 () Bool)

(declare-fun e!627568 () Bool)

(assert (=> b!1099447 (=> (not res!733785) (not e!627568))))

(declare-datatypes ((array!71208 0))(
  ( (array!71209 (arr!34267 (Array (_ BitVec 32) (_ BitVec 64))) (size!34804 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71208)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1099447 (= res!733785 (= (select (arr!34267 _keys!1070) i!650) k!904))))

(declare-fun mapNonEmpty!42529 () Bool)

(declare-fun mapRes!42529 () Bool)

(declare-fun tp!81299 () Bool)

(declare-fun e!627569 () Bool)

(assert (=> mapNonEmpty!42529 (= mapRes!42529 (and tp!81299 e!627569))))

(declare-datatypes ((ValueCell!12875 0))(
  ( (ValueCellFull!12875 (v!16268 V!41353)) (EmptyCell!12875) )
))
(declare-fun mapValue!42529 () ValueCell!12875)

(declare-datatypes ((array!71210 0))(
  ( (array!71211 (arr!34268 (Array (_ BitVec 32) ValueCell!12875)) (size!34805 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71210)

(declare-fun mapKey!42529 () (_ BitVec 32))

(declare-fun mapRest!42529 () (Array (_ BitVec 32) ValueCell!12875))

(assert (=> mapNonEmpty!42529 (= (arr!34268 _values!874) (store mapRest!42529 mapKey!42529 mapValue!42529))))

(declare-fun b!1099449 () Bool)

(declare-fun e!627566 () Bool)

(assert (=> b!1099449 (= e!627568 e!627566)))

(declare-fun res!733786 () Bool)

(assert (=> b!1099449 (=> (not res!733786) (not e!627566))))

(declare-fun lt!492323 () array!71208)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71208 (_ BitVec 32)) Bool)

(assert (=> b!1099449 (= res!733786 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!492323 mask!1414))))

(assert (=> b!1099449 (= lt!492323 (array!71209 (store (arr!34267 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34804 _keys!1070)))))

(declare-fun b!1099450 () Bool)

(declare-fun res!733789 () Bool)

(assert (=> b!1099450 (=> (not res!733789) (not e!627568))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1099450 (= res!733789 (and (= (size!34805 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34804 _keys!1070) (size!34805 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1099451 () Bool)

(declare-fun res!733787 () Bool)

(assert (=> b!1099451 (=> (not res!733787) (not e!627568))))

(declare-datatypes ((List!24078 0))(
  ( (Nil!24075) (Cons!24074 (h!25283 (_ BitVec 64)) (t!34250 List!24078)) )
))
(declare-fun arrayNoDuplicates!0 (array!71208 (_ BitVec 32) List!24078) Bool)

(assert (=> b!1099451 (= res!733787 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24075))))

(declare-fun mapIsEmpty!42529 () Bool)

(assert (=> mapIsEmpty!42529 mapRes!42529))

(declare-fun b!1099452 () Bool)

(declare-fun e!627565 () Bool)

(declare-fun e!627567 () Bool)

(assert (=> b!1099452 (= e!627565 (and e!627567 mapRes!42529))))

(declare-fun condMapEmpty!42529 () Bool)

(declare-fun mapDefault!42529 () ValueCell!12875)

