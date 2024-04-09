; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101230 () Bool)

(assert start!101230)

(declare-fun b_free!26117 () Bool)

(declare-fun b_next!26117 () Bool)

(assert (=> start!101230 (= b_free!26117 (not b_next!26117))))

(declare-fun tp!91373 () Bool)

(declare-fun b_and!43361 () Bool)

(assert (=> start!101230 (= tp!91373 b_and!43361)))

(declare-fun b!1214772 () Bool)

(declare-fun e!689861 () Bool)

(declare-fun tp_is_empty!30821 () Bool)

(assert (=> b!1214772 (= e!689861 tp_is_empty!30821)))

(declare-fun b!1214773 () Bool)

(declare-fun res!806606 () Bool)

(declare-fun e!689856 () Bool)

(assert (=> b!1214773 (=> (not res!806606) (not e!689856))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1214773 (= res!806606 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!48106 () Bool)

(declare-fun mapRes!48106 () Bool)

(declare-fun tp!91374 () Bool)

(declare-fun e!689858 () Bool)

(assert (=> mapNonEmpty!48106 (= mapRes!48106 (and tp!91374 e!689858))))

(declare-datatypes ((V!46221 0))(
  ( (V!46222 (val!15467 Int)) )
))
(declare-datatypes ((ValueCell!14701 0))(
  ( (ValueCellFull!14701 (v!18121 V!46221)) (EmptyCell!14701) )
))
(declare-fun mapRest!48106 () (Array (_ BitVec 32) ValueCell!14701))

(declare-fun mapValue!48106 () ValueCell!14701)

(declare-datatypes ((array!78400 0))(
  ( (array!78401 (arr!37831 (Array (_ BitVec 32) ValueCell!14701)) (size!38368 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78400)

(declare-fun mapKey!48106 () (_ BitVec 32))

(assert (=> mapNonEmpty!48106 (= (arr!37831 _values!996) (store mapRest!48106 mapKey!48106 mapValue!48106))))

(declare-fun b!1214774 () Bool)

(declare-fun e!689860 () Bool)

(assert (=> b!1214774 (= e!689860 (and e!689861 mapRes!48106))))

(declare-fun condMapEmpty!48106 () Bool)

(declare-fun mapDefault!48106 () ValueCell!14701)

