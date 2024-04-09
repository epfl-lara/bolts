; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89334 () Bool)

(assert start!89334)

(declare-fun b!1023874 () Bool)

(declare-fun b_free!20339 () Bool)

(declare-fun b_next!20339 () Bool)

(assert (=> b!1023874 (= b_free!20339 (not b_next!20339))))

(declare-fun tp!72053 () Bool)

(declare-fun b_and!32603 () Bool)

(assert (=> b!1023874 (= tp!72053 b_and!32603)))

(declare-fun mapNonEmpty!37506 () Bool)

(declare-fun mapRes!37506 () Bool)

(declare-fun tp!72052 () Bool)

(declare-fun e!577099 () Bool)

(assert (=> mapNonEmpty!37506 (= mapRes!37506 (and tp!72052 e!577099))))

(declare-fun mapKey!37506 () (_ BitVec 32))

(declare-datatypes ((V!36951 0))(
  ( (V!36952 (val!12080 Int)) )
))
(declare-datatypes ((ValueCell!11326 0))(
  ( (ValueCellFull!11326 (v!14650 V!36951)) (EmptyCell!11326) )
))
(declare-fun mapValue!37506 () ValueCell!11326)

(declare-datatypes ((array!64146 0))(
  ( (array!64147 (arr!30881 (Array (_ BitVec 32) (_ BitVec 64))) (size!31393 (_ BitVec 32))) )
))
(declare-datatypes ((array!64148 0))(
  ( (array!64149 (arr!30882 (Array (_ BitVec 32) ValueCell!11326)) (size!31394 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5246 0))(
  ( (LongMapFixedSize!5247 (defaultEntry!5975 Int) (mask!29605 (_ BitVec 32)) (extraKeys!5707 (_ BitVec 32)) (zeroValue!5811 V!36951) (minValue!5811 V!36951) (_size!2678 (_ BitVec 32)) (_keys!11117 array!64146) (_values!5998 array!64148) (_vacant!2678 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5246)

(declare-fun mapRest!37506 () (Array (_ BitVec 32) ValueCell!11326))

(assert (=> mapNonEmpty!37506 (= (arr!30882 (_values!5998 thiss!1427)) (store mapRest!37506 mapKey!37506 mapValue!37506))))

(declare-fun b!1023869 () Bool)

(declare-fun res!685682 () Bool)

(declare-fun e!577095 () Bool)

(assert (=> b!1023869 (=> (not res!685682) (not e!577095))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1023869 (= res!685682 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1023870 () Bool)

(declare-fun e!577097 () Bool)

(declare-fun e!577096 () Bool)

(assert (=> b!1023870 (= e!577097 (and e!577096 mapRes!37506))))

(declare-fun condMapEmpty!37506 () Bool)

(declare-fun mapDefault!37506 () ValueCell!11326)

