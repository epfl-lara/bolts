; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72960 () Bool)

(assert start!72960)

(declare-fun b_free!13847 () Bool)

(declare-fun b_next!13847 () Bool)

(assert (=> start!72960 (= b_free!13847 (not b_next!13847))))

(declare-fun tp!49045 () Bool)

(declare-fun b_and!22951 () Bool)

(assert (=> start!72960 (= tp!49045 b_and!22951)))

(declare-fun b!846709 () Bool)

(declare-fun res!575388 () Bool)

(declare-fun e!472559 () Bool)

(assert (=> b!846709 (=> (not res!575388) (not e!472559))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!846709 (= res!575388 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!25574 () Bool)

(declare-fun mapRes!25574 () Bool)

(declare-fun tp!49046 () Bool)

(declare-fun e!472558 () Bool)

(assert (=> mapNonEmpty!25574 (= mapRes!25574 (and tp!49046 e!472558))))

(declare-fun mapKey!25574 () (_ BitVec 32))

(declare-datatypes ((V!26357 0))(
  ( (V!26358 (val!8039 Int)) )
))
(declare-datatypes ((ValueCell!7552 0))(
  ( (ValueCellFull!7552 (v!10460 V!26357)) (EmptyCell!7552) )
))
(declare-fun mapRest!25574 () (Array (_ BitVec 32) ValueCell!7552))

(declare-fun mapValue!25574 () ValueCell!7552)

(declare-datatypes ((array!48164 0))(
  ( (array!48165 (arr!23109 (Array (_ BitVec 32) ValueCell!7552)) (size!23550 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48164)

(assert (=> mapNonEmpty!25574 (= (arr!23109 _values!688) (store mapRest!25574 mapKey!25574 mapValue!25574))))

(declare-fun b!846710 () Bool)

(declare-fun res!575387 () Bool)

(assert (=> b!846710 (=> (not res!575387) (not e!472559))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!846710 (= res!575387 (validKeyInArray!0 k!854))))

(declare-fun b!846711 () Bool)

(declare-fun res!575394 () Bool)

(assert (=> b!846711 (=> (not res!575394) (not e!472559))))

(declare-datatypes ((array!48166 0))(
  ( (array!48167 (arr!23110 (Array (_ BitVec 32) (_ BitVec 64))) (size!23551 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48166)

(declare-datatypes ((List!16431 0))(
  ( (Nil!16428) (Cons!16427 (h!17558 (_ BitVec 64)) (t!22810 List!16431)) )
))
(declare-fun arrayNoDuplicates!0 (array!48166 (_ BitVec 32) List!16431) Bool)

(assert (=> b!846711 (= res!575394 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16428))))

(declare-fun b!846712 () Bool)

(declare-fun res!575391 () Bool)

(assert (=> b!846712 (=> (not res!575391) (not e!472559))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!846712 (= res!575391 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23551 _keys!868))))))

(declare-fun b!846713 () Bool)

(declare-fun res!575392 () Bool)

(assert (=> b!846713 (=> (not res!575392) (not e!472559))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48166 (_ BitVec 32)) Bool)

(assert (=> b!846713 (= res!575392 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!25574 () Bool)

(assert (=> mapIsEmpty!25574 mapRes!25574))

(declare-fun b!846714 () Bool)

(declare-fun e!472556 () Bool)

(declare-fun e!472560 () Bool)

(assert (=> b!846714 (= e!472556 (and e!472560 mapRes!25574))))

(declare-fun condMapEmpty!25574 () Bool)

(declare-fun mapDefault!25574 () ValueCell!7552)

