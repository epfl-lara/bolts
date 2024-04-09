; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89288 () Bool)

(assert start!89288)

(declare-fun b!1023359 () Bool)

(declare-fun b_free!20293 () Bool)

(declare-fun b_next!20293 () Bool)

(assert (=> b!1023359 (= b_free!20293 (not b_next!20293))))

(declare-fun tp!71915 () Bool)

(declare-fun b_and!32533 () Bool)

(assert (=> b!1023359 (= tp!71915 b_and!32533)))

(declare-fun b!1023356 () Bool)

(declare-fun res!685471 () Bool)

(declare-fun e!576684 () Bool)

(assert (=> b!1023356 (=> (not res!685471) (not e!576684))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1023356 (= res!685471 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1023357 () Bool)

(declare-fun e!576680 () Bool)

(declare-fun e!576683 () Bool)

(declare-fun mapRes!37437 () Bool)

(assert (=> b!1023357 (= e!576680 (and e!576683 mapRes!37437))))

(declare-fun condMapEmpty!37437 () Bool)

(declare-datatypes ((V!36891 0))(
  ( (V!36892 (val!12057 Int)) )
))
(declare-datatypes ((ValueCell!11303 0))(
  ( (ValueCellFull!11303 (v!14627 V!36891)) (EmptyCell!11303) )
))
(declare-datatypes ((array!64054 0))(
  ( (array!64055 (arr!30835 (Array (_ BitVec 32) (_ BitVec 64))) (size!31347 (_ BitVec 32))) )
))
(declare-datatypes ((array!64056 0))(
  ( (array!64057 (arr!30836 (Array (_ BitVec 32) ValueCell!11303)) (size!31348 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5200 0))(
  ( (LongMapFixedSize!5201 (defaultEntry!5952 Int) (mask!29568 (_ BitVec 32)) (extraKeys!5684 (_ BitVec 32)) (zeroValue!5788 V!36891) (minValue!5788 V!36891) (_size!2655 (_ BitVec 32)) (_keys!11094 array!64054) (_values!5975 array!64056) (_vacant!2655 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5200)

(declare-fun mapDefault!37437 () ValueCell!11303)

