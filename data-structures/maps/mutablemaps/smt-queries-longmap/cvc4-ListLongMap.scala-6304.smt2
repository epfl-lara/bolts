; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80728 () Bool)

(assert start!80728)

(declare-fun b!946483 () Bool)

(declare-fun b_free!18149 () Bool)

(declare-fun b_next!18149 () Bool)

(assert (=> b!946483 (= b_free!18149 (not b_next!18149))))

(declare-fun tp!62992 () Bool)

(declare-fun b_and!29589 () Bool)

(assert (=> b!946483 (= tp!62992 b_and!29589)))

(declare-fun b!946480 () Bool)

(declare-fun e!532632 () Bool)

(declare-fun e!532633 () Bool)

(assert (=> b!946480 (= e!532632 e!532633)))

(declare-fun res!635471 () Bool)

(assert (=> b!946480 (=> (not res!635471) (not e!532633))))

(declare-datatypes ((SeekEntryResult!9096 0))(
  ( (MissingZero!9096 (index!38754 (_ BitVec 32))) (Found!9096 (index!38755 (_ BitVec 32))) (Intermediate!9096 (undefined!9908 Bool) (index!38756 (_ BitVec 32)) (x!81391 (_ BitVec 32))) (Undefined!9096) (MissingVacant!9096 (index!38757 (_ BitVec 32))) )
))
(declare-fun lt!426292 () SeekEntryResult!9096)

(assert (=> b!946480 (= res!635471 (is-Found!9096 lt!426292))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((V!32507 0))(
  ( (V!32508 (val!10379 Int)) )
))
(declare-datatypes ((ValueCell!9847 0))(
  ( (ValueCellFull!9847 (v!12913 V!32507)) (EmptyCell!9847) )
))
(declare-datatypes ((array!57324 0))(
  ( (array!57325 (arr!27573 (Array (_ BitVec 32) ValueCell!9847)) (size!28045 (_ BitVec 32))) )
))
(declare-datatypes ((array!57326 0))(
  ( (array!57327 (arr!27574 (Array (_ BitVec 32) (_ BitVec 64))) (size!28046 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4844 0))(
  ( (LongMapFixedSize!4845 (defaultEntry!5719 Int) (mask!27421 (_ BitVec 32)) (extraKeys!5451 (_ BitVec 32)) (zeroValue!5555 V!32507) (minValue!5555 V!32507) (_size!2477 (_ BitVec 32)) (_keys!10612 array!57326) (_values!5742 array!57324) (_vacant!2477 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4844)

(declare-fun seekEntry!0 ((_ BitVec 64) array!57326 (_ BitVec 32)) SeekEntryResult!9096)

(assert (=> b!946480 (= lt!426292 (seekEntry!0 key!756 (_keys!10612 thiss!1141) (mask!27421 thiss!1141)))))

(declare-fun mapIsEmpty!32846 () Bool)

(declare-fun mapRes!32846 () Bool)

(assert (=> mapIsEmpty!32846 mapRes!32846))

(declare-fun b!946481 () Bool)

(declare-fun e!532628 () Bool)

(declare-fun e!532634 () Bool)

(assert (=> b!946481 (= e!532628 (and e!532634 mapRes!32846))))

(declare-fun condMapEmpty!32846 () Bool)

(declare-fun mapDefault!32846 () ValueCell!9847)

