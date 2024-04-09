; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80822 () Bool)

(assert start!80822)

(declare-fun b!947065 () Bool)

(declare-fun b_free!18167 () Bool)

(declare-fun b_next!18167 () Bool)

(assert (=> b!947065 (= b_free!18167 (not b_next!18167))))

(declare-fun tp!63058 () Bool)

(declare-fun b_and!29607 () Bool)

(assert (=> b!947065 (= tp!63058 b_and!29607)))

(declare-fun b!947056 () Bool)

(declare-fun e!533040 () Bool)

(declare-fun e!533046 () Bool)

(declare-fun mapRes!32884 () Bool)

(assert (=> b!947056 (= e!533040 (and e!533046 mapRes!32884))))

(declare-fun condMapEmpty!32884 () Bool)

(declare-datatypes ((V!32531 0))(
  ( (V!32532 (val!10388 Int)) )
))
(declare-datatypes ((ValueCell!9856 0))(
  ( (ValueCellFull!9856 (v!12922 V!32531)) (EmptyCell!9856) )
))
(declare-datatypes ((array!57366 0))(
  ( (array!57367 (arr!27591 (Array (_ BitVec 32) ValueCell!9856)) (size!28065 (_ BitVec 32))) )
))
(declare-datatypes ((array!57368 0))(
  ( (array!57369 (arr!27592 (Array (_ BitVec 32) (_ BitVec 64))) (size!28066 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4862 0))(
  ( (LongMapFixedSize!4863 (defaultEntry!5728 Int) (mask!27451 (_ BitVec 32)) (extraKeys!5460 (_ BitVec 32)) (zeroValue!5564 V!32531) (minValue!5564 V!32531) (_size!2486 (_ BitVec 32)) (_keys!10631 array!57368) (_values!5751 array!57366) (_vacant!2486 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4862)

(declare-fun mapDefault!32884 () ValueCell!9856)

