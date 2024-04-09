; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92012 () Bool)

(assert start!92012)

(declare-fun b!1045865 () Bool)

(declare-fun b_free!21149 () Bool)

(declare-fun b_next!21149 () Bool)

(assert (=> b!1045865 (= b_free!21149 (not b_next!21149))))

(declare-fun tp!74710 () Bool)

(declare-fun b_and!33811 () Bool)

(assert (=> b!1045865 (= tp!74710 b_and!33811)))

(declare-fun b!1045860 () Bool)

(declare-fun e!592951 () Bool)

(declare-fun tp_is_empty!24869 () Bool)

(assert (=> b!1045860 (= e!592951 tp_is_empty!24869)))

(declare-fun res!696390 () Bool)

(declare-fun e!592950 () Bool)

(assert (=> start!92012 (=> (not res!696390) (not e!592950))))

(declare-datatypes ((V!38031 0))(
  ( (V!38032 (val!12485 Int)) )
))
(declare-datatypes ((ValueCell!11731 0))(
  ( (ValueCellFull!11731 (v!15083 V!38031)) (EmptyCell!11731) )
))
(declare-datatypes ((array!65900 0))(
  ( (array!65901 (arr!31691 (Array (_ BitVec 32) (_ BitVec 64))) (size!32227 (_ BitVec 32))) )
))
(declare-datatypes ((array!65902 0))(
  ( (array!65903 (arr!31692 (Array (_ BitVec 32) ValueCell!11731)) (size!32228 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6056 0))(
  ( (LongMapFixedSize!6057 (defaultEntry!6426 Int) (mask!30558 (_ BitVec 32)) (extraKeys!6154 (_ BitVec 32)) (zeroValue!6260 V!38031) (minValue!6260 V!38031) (_size!3083 (_ BitVec 32)) (_keys!11697 array!65900) (_values!6449 array!65902) (_vacant!3083 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!6056)

(declare-fun valid!2226 (LongMapFixedSize!6056) Bool)

(assert (=> start!92012 (= res!696390 (valid!2226 thiss!1427))))

(assert (=> start!92012 e!592950))

(declare-fun e!592948 () Bool)

(assert (=> start!92012 e!592948))

(assert (=> start!92012 true))

(declare-fun b!1045861 () Bool)

(declare-fun res!696392 () Bool)

(declare-fun e!592946 () Bool)

(assert (=> b!1045861 (=> res!696392 e!592946)))

(declare-datatypes ((Unit!34162 0))(
  ( (Unit!34163) )
))
(declare-datatypes ((tuple2!15904 0))(
  ( (tuple2!15905 (_1!7962 Unit!34162) (_2!7962 LongMapFixedSize!6056)) )
))
(declare-fun lt!461872 () tuple2!15904)

(assert (=> b!1045861 (= res!696392 (or (not (= (size!32228 (_values!6449 (_2!7962 lt!461872))) (bvadd #b00000000000000000000000000000001 (mask!30558 (_2!7962 lt!461872))))) (not (= (size!32227 (_keys!11697 (_2!7962 lt!461872))) (size!32228 (_values!6449 (_2!7962 lt!461872))))) (bvslt (mask!30558 (_2!7962 lt!461872)) #b00000000000000000000000000000000) (bvslt (extraKeys!6154 (_2!7962 lt!461872)) #b00000000000000000000000000000000) (bvsgt (extraKeys!6154 (_2!7962 lt!461872)) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!38948 () Bool)

(declare-fun mapRes!38948 () Bool)

(declare-fun tp!74709 () Bool)

(declare-fun e!592947 () Bool)

(assert (=> mapNonEmpty!38948 (= mapRes!38948 (and tp!74709 e!592947))))

(declare-fun mapRest!38948 () (Array (_ BitVec 32) ValueCell!11731))

(declare-fun mapKey!38948 () (_ BitVec 32))

(declare-fun mapValue!38948 () ValueCell!11731)

(assert (=> mapNonEmpty!38948 (= (arr!31692 (_values!6449 thiss!1427)) (store mapRest!38948 mapKey!38948 mapValue!38948))))

(declare-fun b!1045862 () Bool)

(declare-fun res!696393 () Bool)

(assert (=> b!1045862 (=> res!696393 e!592946)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1045862 (= res!696393 (not (validMask!0 (mask!30558 (_2!7962 lt!461872)))))))

(declare-fun b!1045863 () Bool)

(declare-fun e!592944 () Bool)

(assert (=> b!1045863 (= e!592944 (and e!592951 mapRes!38948))))

(declare-fun condMapEmpty!38948 () Bool)

(declare-fun mapDefault!38948 () ValueCell!11731)

