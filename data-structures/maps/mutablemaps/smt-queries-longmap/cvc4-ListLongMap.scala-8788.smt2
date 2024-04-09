; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106962 () Bool)

(assert start!106962)

(declare-fun b!1268089 () Bool)

(declare-fun e!722574 () Bool)

(declare-datatypes ((array!82539 0))(
  ( (array!82540 (arr!39805 (Array (_ BitVec 32) (_ BitVec 64))) (size!40342 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82539)

(assert (=> b!1268089 (= e!722574 (and (bvsle #b00000000000000000000000000000000 (size!40342 _keys!1364)) (bvsge (size!40342 _keys!1364) #b01111111111111111111111111111111)))))

(declare-fun res!844129 () Bool)

(assert (=> start!106962 (=> (not res!844129) (not e!722574))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106962 (= res!844129 (validMask!0 mask!1730))))

(assert (=> start!106962 e!722574))

(declare-datatypes ((V!48719 0))(
  ( (V!48720 (val!16397 Int)) )
))
(declare-datatypes ((ValueCell!15469 0))(
  ( (ValueCellFull!15469 (v!19031 V!48719)) (EmptyCell!15469) )
))
(declare-datatypes ((array!82541 0))(
  ( (array!82542 (arr!39806 (Array (_ BitVec 32) ValueCell!15469)) (size!40343 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82541)

(declare-fun e!722572 () Bool)

(declare-fun array_inv!30249 (array!82541) Bool)

(assert (=> start!106962 (and (array_inv!30249 _values!1134) e!722572)))

(assert (=> start!106962 true))

(declare-fun array_inv!30250 (array!82539) Bool)

(assert (=> start!106962 (array_inv!30250 _keys!1364)))

(declare-fun b!1268090 () Bool)

(declare-fun e!722573 () Bool)

(declare-fun tp_is_empty!32645 () Bool)

(assert (=> b!1268090 (= e!722573 tp_is_empty!32645)))

(declare-fun b!1268091 () Bool)

(declare-fun e!722570 () Bool)

(declare-fun mapRes!50539 () Bool)

(assert (=> b!1268091 (= e!722572 (and e!722570 mapRes!50539))))

(declare-fun condMapEmpty!50539 () Bool)

(declare-fun mapDefault!50539 () ValueCell!15469)

