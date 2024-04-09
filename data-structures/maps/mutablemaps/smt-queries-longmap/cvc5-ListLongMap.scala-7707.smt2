; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96834 () Bool)

(assert start!96834)

(declare-fun b_free!23167 () Bool)

(declare-fun b_next!23167 () Bool)

(assert (=> start!96834 (= b_free!23167 (not b_next!23167))))

(declare-fun tp!81453 () Bool)

(declare-fun b_and!37127 () Bool)

(assert (=> start!96834 (= tp!81453 b_and!37127)))

(declare-datatypes ((V!41417 0))(
  ( (V!41418 (val!13665 Int)) )
))
(declare-datatypes ((tuple2!17442 0))(
  ( (tuple2!17443 (_1!8731 (_ BitVec 64)) (_2!8731 V!41417)) )
))
(declare-datatypes ((List!24114 0))(
  ( (Nil!24111) (Cons!24110 (h!25319 tuple2!17442) (t!34334 List!24114)) )
))
(declare-datatypes ((ListLongMap!15423 0))(
  ( (ListLongMap!15424 (toList!7727 List!24114)) )
))
(declare-fun lt!493576 () ListLongMap!15423)

(declare-fun lt!493569 () tuple2!17442)

(declare-fun e!628508 () Bool)

(declare-fun lt!493578 () ListLongMap!15423)

(declare-fun b!1101083 () Bool)

(declare-fun +!3359 (ListLongMap!15423 tuple2!17442) ListLongMap!15423)

(assert (=> b!1101083 (= e!628508 (= lt!493578 (+!3359 lt!493576 lt!493569)))))

(declare-fun e!628505 () Bool)

(assert (=> b!1101083 e!628505))

(declare-fun res!734832 () Bool)

(assert (=> b!1101083 (=> (not res!734832) (not e!628505))))

(declare-fun lt!493577 () ListLongMap!15423)

(declare-fun lt!493575 () ListLongMap!15423)

(assert (=> b!1101083 (= res!734832 (= lt!493577 (+!3359 lt!493575 lt!493569)))))

(declare-fun minValue!831 () V!41417)

(assert (=> b!1101083 (= lt!493569 (tuple2!17443 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun res!734834 () Bool)

(declare-fun e!628510 () Bool)

(assert (=> start!96834 (=> (not res!734834) (not e!628510))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96834 (= res!734834 (validMask!0 mask!1414))))

(assert (=> start!96834 e!628510))

(assert (=> start!96834 tp!81453))

(assert (=> start!96834 true))

(declare-fun tp_is_empty!27217 () Bool)

(assert (=> start!96834 tp_is_empty!27217))

(declare-datatypes ((array!71304 0))(
  ( (array!71305 (arr!34312 (Array (_ BitVec 32) (_ BitVec 64))) (size!34849 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71304)

(declare-fun array_inv!26286 (array!71304) Bool)

(assert (=> start!96834 (array_inv!26286 _keys!1070)))

(declare-datatypes ((ValueCell!12899 0))(
  ( (ValueCellFull!12899 (v!16295 V!41417)) (EmptyCell!12899) )
))
(declare-datatypes ((array!71306 0))(
  ( (array!71307 (arr!34313 (Array (_ BitVec 32) ValueCell!12899)) (size!34850 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71306)

(declare-fun e!628509 () Bool)

(declare-fun array_inv!26287 (array!71306) Bool)

(assert (=> start!96834 (and (array_inv!26287 _values!874) e!628509)))

(declare-fun mapNonEmpty!42610 () Bool)

(declare-fun mapRes!42610 () Bool)

(declare-fun tp!81452 () Bool)

(declare-fun e!628506 () Bool)

(assert (=> mapNonEmpty!42610 (= mapRes!42610 (and tp!81452 e!628506))))

(declare-fun mapKey!42610 () (_ BitVec 32))

(declare-fun mapRest!42610 () (Array (_ BitVec 32) ValueCell!12899))

(declare-fun mapValue!42610 () ValueCell!12899)

(assert (=> mapNonEmpty!42610 (= (arr!34313 _values!874) (store mapRest!42610 mapKey!42610 mapValue!42610))))

(declare-fun b!1101084 () Bool)

(assert (=> b!1101084 (= e!628506 tp_is_empty!27217)))

(declare-fun b!1101085 () Bool)

(declare-fun e!628511 () Bool)

(assert (=> b!1101085 (= e!628509 (and e!628511 mapRes!42610))))

(declare-fun condMapEmpty!42610 () Bool)

(declare-fun mapDefault!42610 () ValueCell!12899)

