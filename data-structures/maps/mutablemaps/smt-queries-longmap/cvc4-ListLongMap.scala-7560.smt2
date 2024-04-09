; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95720 () Bool)

(assert start!95720)

(declare-fun b_free!22337 () Bool)

(declare-fun b_next!22337 () Bool)

(assert (=> start!95720 (= b_free!22337 (not b_next!22337))))

(declare-fun tp!78860 () Bool)

(declare-fun b_and!35367 () Bool)

(assert (=> start!95720 (= tp!78860 b_and!35367)))

(declare-fun b!1081565 () Bool)

(declare-fun res!721009 () Bool)

(declare-fun e!618228 () Bool)

(assert (=> b!1081565 (=> (not res!721009) (not e!618228))))

(declare-datatypes ((array!69582 0))(
  ( (array!69583 (arr!33461 (Array (_ BitVec 32) (_ BitVec 64))) (size!33998 (_ BitVec 32))) )
))
(declare-fun lt!479336 () array!69582)

(declare-datatypes ((List!23456 0))(
  ( (Nil!23453) (Cons!23452 (h!24661 (_ BitVec 64)) (t!32858 List!23456)) )
))
(declare-fun arrayNoDuplicates!0 (array!69582 (_ BitVec 32) List!23456) Bool)

(assert (=> b!1081565 (= res!721009 (arrayNoDuplicates!0 lt!479336 #b00000000000000000000000000000000 Nil!23453))))

(declare-fun b!1081566 () Bool)

(declare-fun e!618229 () Bool)

(assert (=> b!1081566 (= e!618229 e!618228)))

(declare-fun res!721010 () Bool)

(assert (=> b!1081566 (=> (not res!721010) (not e!618228))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69582 (_ BitVec 32)) Bool)

(assert (=> b!1081566 (= res!721010 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479336 mask!1414))))

(declare-fun _keys!1070 () array!69582)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1081566 (= lt!479336 (array!69583 (store (arr!33461 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33998 _keys!1070)))))

(declare-fun res!721008 () Bool)

(assert (=> start!95720 (=> (not res!721008) (not e!618229))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95720 (= res!721008 (validMask!0 mask!1414))))

(assert (=> start!95720 e!618229))

(assert (=> start!95720 tp!78860))

(assert (=> start!95720 true))

(declare-fun tp_is_empty!26339 () Bool)

(assert (=> start!95720 tp_is_empty!26339))

(declare-fun array_inv!25690 (array!69582) Bool)

(assert (=> start!95720 (array_inv!25690 _keys!1070)))

(declare-datatypes ((V!40245 0))(
  ( (V!40246 (val!13226 Int)) )
))
(declare-datatypes ((ValueCell!12460 0))(
  ( (ValueCellFull!12460 (v!15848 V!40245)) (EmptyCell!12460) )
))
(declare-datatypes ((array!69584 0))(
  ( (array!69585 (arr!33462 (Array (_ BitVec 32) ValueCell!12460)) (size!33999 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69584)

(declare-fun e!618225 () Bool)

(declare-fun array_inv!25691 (array!69584) Bool)

(assert (=> start!95720 (and (array_inv!25691 _values!874) e!618225)))

(declare-fun b!1081567 () Bool)

(declare-fun e!618227 () Bool)

(declare-fun mapRes!41263 () Bool)

(assert (=> b!1081567 (= e!618225 (and e!618227 mapRes!41263))))

(declare-fun condMapEmpty!41263 () Bool)

(declare-fun mapDefault!41263 () ValueCell!12460)

