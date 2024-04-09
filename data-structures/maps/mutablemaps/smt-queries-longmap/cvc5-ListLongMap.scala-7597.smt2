; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95938 () Bool)

(assert start!95938)

(declare-fun b_free!22555 () Bool)

(declare-fun b_next!22555 () Bool)

(assert (=> start!95938 (= b_free!22555 (not b_next!22555))))

(declare-fun tp!79514 () Bool)

(declare-fun b_and!35803 () Bool)

(assert (=> start!95938 (= tp!79514 b_and!35803)))

(declare-fun res!724142 () Bool)

(declare-fun e!620368 () Bool)

(assert (=> start!95938 (=> (not res!724142) (not e!620368))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95938 (= res!724142 (validMask!0 mask!1414))))

(assert (=> start!95938 e!620368))

(assert (=> start!95938 tp!79514))

(assert (=> start!95938 true))

(declare-fun tp_is_empty!26557 () Bool)

(assert (=> start!95938 tp_is_empty!26557))

(declare-datatypes ((array!70010 0))(
  ( (array!70011 (arr!33675 (Array (_ BitVec 32) (_ BitVec 64))) (size!34212 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70010)

(declare-fun array_inv!25836 (array!70010) Bool)

(assert (=> start!95938 (array_inv!25836 _keys!1070)))

(declare-datatypes ((V!40537 0))(
  ( (V!40538 (val!13335 Int)) )
))
(declare-datatypes ((ValueCell!12569 0))(
  ( (ValueCellFull!12569 (v!15957 V!40537)) (EmptyCell!12569) )
))
(declare-datatypes ((array!70012 0))(
  ( (array!70013 (arr!33676 (Array (_ BitVec 32) ValueCell!12569)) (size!34213 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70012)

(declare-fun e!620367 () Bool)

(declare-fun array_inv!25837 (array!70012) Bool)

(assert (=> start!95938 (and (array_inv!25837 _values!874) e!620367)))

(declare-fun mapIsEmpty!41590 () Bool)

(declare-fun mapRes!41590 () Bool)

(assert (=> mapIsEmpty!41590 mapRes!41590))

(declare-fun b!1085891 () Bool)

(declare-fun e!620366 () Bool)

(assert (=> b!1085891 (= e!620367 (and e!620366 mapRes!41590))))

(declare-fun condMapEmpty!41590 () Bool)

(declare-fun mapDefault!41590 () ValueCell!12569)

