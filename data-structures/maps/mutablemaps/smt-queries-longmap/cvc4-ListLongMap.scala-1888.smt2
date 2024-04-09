; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33792 () Bool)

(assert start!33792)

(declare-fun b_free!7001 () Bool)

(declare-fun b_next!7001 () Bool)

(assert (=> start!33792 (= b_free!7001 (not b_next!7001))))

(declare-fun tp!24509 () Bool)

(declare-fun b_and!14201 () Bool)

(assert (=> start!33792 (= tp!24509 b_and!14201)))

(declare-fun b!335893 () Bool)

(declare-fun res!185476 () Bool)

(declare-fun e!206196 () Bool)

(assert (=> b!335893 (=> (not res!185476) (not e!206196))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((V!10247 0))(
  ( (V!10248 (val!3521 Int)) )
))
(declare-datatypes ((ValueCell!3133 0))(
  ( (ValueCellFull!3133 (v!5680 V!10247)) (EmptyCell!3133) )
))
(declare-datatypes ((array!17485 0))(
  ( (array!17486 (arr!8269 (Array (_ BitVec 32) ValueCell!3133)) (size!8621 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17485)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10247)

(declare-fun zeroValue!1467 () V!10247)

(declare-datatypes ((array!17487 0))(
  ( (array!17488 (arr!8270 (Array (_ BitVec 32) (_ BitVec 64))) (size!8622 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17487)

(declare-datatypes ((tuple2!5116 0))(
  ( (tuple2!5117 (_1!2568 (_ BitVec 64)) (_2!2568 V!10247)) )
))
(declare-datatypes ((List!4756 0))(
  ( (Nil!4753) (Cons!4752 (h!5608 tuple2!5116) (t!9854 List!4756)) )
))
(declare-datatypes ((ListLongMap!4043 0))(
  ( (ListLongMap!4044 (toList!2037 List!4756)) )
))
(declare-fun contains!2078 (ListLongMap!4043 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1557 (array!17487 array!17485 (_ BitVec 32) (_ BitVec 32) V!10247 V!10247 (_ BitVec 32) Int) ListLongMap!4043)

(assert (=> b!335893 (= res!185476 (not (contains!2078 (getCurrentListMap!1557 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!335894 () Bool)

(declare-fun e!206194 () Bool)

(declare-fun e!206193 () Bool)

(declare-fun mapRes!11829 () Bool)

(assert (=> b!335894 (= e!206194 (and e!206193 mapRes!11829))))

(declare-fun condMapEmpty!11829 () Bool)

(declare-fun mapDefault!11829 () ValueCell!3133)

