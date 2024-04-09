; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75332 () Bool)

(assert start!75332)

(declare-fun b!886966 () Bool)

(declare-fun b_free!15503 () Bool)

(declare-fun b_next!15503 () Bool)

(assert (=> b!886966 (= b_free!15503 (not b_next!15503))))

(declare-fun tp!54444 () Bool)

(declare-fun b_and!25727 () Bool)

(assert (=> b!886966 (= tp!54444 b_and!25727)))

(declare-fun res!602075 () Bool)

(declare-fun e!493887 () Bool)

(assert (=> start!75332 (=> (not res!602075) (not e!493887))))

(declare-datatypes ((V!28739 0))(
  ( (V!28740 (val!8966 Int)) )
))
(declare-datatypes ((ValueCell!8434 0))(
  ( (ValueCellFull!8434 (v!11408 V!28739)) (EmptyCell!8434) )
))
(declare-datatypes ((array!51608 0))(
  ( (array!51609 (arr!24816 (Array (_ BitVec 32) ValueCell!8434)) (size!25257 (_ BitVec 32))) )
))
(declare-datatypes ((array!51610 0))(
  ( (array!51611 (arr!24817 (Array (_ BitVec 32) (_ BitVec 64))) (size!25258 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3884 0))(
  ( (LongMapFixedSize!3885 (defaultEntry!5130 Int) (mask!25514 (_ BitVec 32)) (extraKeys!4823 (_ BitVec 32)) (zeroValue!4927 V!28739) (minValue!4927 V!28739) (_size!1997 (_ BitVec 32)) (_keys!9801 array!51610) (_values!5114 array!51608) (_vacant!1997 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1038 0))(
  ( (Cell!1039 (v!11409 LongMapFixedSize!3884)) )
))
(declare-datatypes ((LongMap!1038 0))(
  ( (LongMap!1039 (underlying!530 Cell!1038)) )
))
(declare-fun thiss!833 () LongMap!1038)

(declare-fun valid!1504 (LongMap!1038) Bool)

(assert (=> start!75332 (= res!602075 (valid!1504 thiss!833))))

(assert (=> start!75332 e!493887))

(declare-fun e!493890 () Bool)

(assert (=> start!75332 e!493890))

(assert (=> start!75332 true))

(declare-fun mapNonEmpty!28266 () Bool)

(declare-fun mapRes!28266 () Bool)

(declare-fun tp!54443 () Bool)

(declare-fun e!493888 () Bool)

(assert (=> mapNonEmpty!28266 (= mapRes!28266 (and tp!54443 e!493888))))

(declare-fun mapValue!28266 () ValueCell!8434)

(declare-fun mapKey!28266 () (_ BitVec 32))

(declare-fun mapRest!28266 () (Array (_ BitVec 32) ValueCell!8434))

(assert (=> mapNonEmpty!28266 (= (arr!24816 (_values!5114 (v!11409 (underlying!530 thiss!833)))) (store mapRest!28266 mapKey!28266 mapValue!28266))))

(declare-fun b!886965 () Bool)

(declare-fun tp_is_empty!17831 () Bool)

(assert (=> b!886965 (= e!493888 tp_is_empty!17831)))

(declare-fun mapIsEmpty!28266 () Bool)

(assert (=> mapIsEmpty!28266 mapRes!28266))

(declare-fun e!493889 () Bool)

(declare-fun e!493891 () Bool)

(declare-fun array_inv!19512 (array!51610) Bool)

(declare-fun array_inv!19513 (array!51608) Bool)

(assert (=> b!886966 (= e!493891 (and tp!54444 tp_is_empty!17831 (array_inv!19512 (_keys!9801 (v!11409 (underlying!530 thiss!833)))) (array_inv!19513 (_values!5114 (v!11409 (underlying!530 thiss!833)))) e!493889))))

(declare-fun b!886967 () Bool)

(declare-fun e!493892 () Bool)

(assert (=> b!886967 (= e!493892 tp_is_empty!17831)))

(declare-fun b!886968 () Bool)

(declare-fun e!493886 () Bool)

(assert (=> b!886968 (= e!493886 e!493891)))

(declare-fun b!886969 () Bool)

(assert (=> b!886969 (= e!493889 (and e!493892 mapRes!28266))))

(declare-fun condMapEmpty!28266 () Bool)

(declare-fun mapDefault!28266 () ValueCell!8434)

