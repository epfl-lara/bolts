; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80556 () Bool)

(assert start!80556)

(declare-fun b!945441 () Bool)

(declare-fun b_free!18107 () Bool)

(declare-fun b_next!18107 () Bool)

(assert (=> b!945441 (= b_free!18107 (not b_next!18107))))

(declare-fun tp!62843 () Bool)

(declare-fun b_and!29547 () Bool)

(assert (=> b!945441 (= tp!62843 b_and!29547)))

(declare-fun mapIsEmpty!32759 () Bool)

(declare-fun mapRes!32759 () Bool)

(assert (=> mapIsEmpty!32759 mapRes!32759))

(declare-datatypes ((V!32451 0))(
  ( (V!32452 (val!10358 Int)) )
))
(declare-datatypes ((ValueCell!9826 0))(
  ( (ValueCellFull!9826 (v!12892 V!32451)) (EmptyCell!9826) )
))
(declare-datatypes ((array!57226 0))(
  ( (array!57227 (arr!27531 (Array (_ BitVec 32) ValueCell!9826)) (size!28000 (_ BitVec 32))) )
))
(declare-datatypes ((array!57228 0))(
  ( (array!57229 (arr!27532 (Array (_ BitVec 32) (_ BitVec 64))) (size!28001 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4802 0))(
  ( (LongMapFixedSize!4803 (defaultEntry!5698 Int) (mask!27362 (_ BitVec 32)) (extraKeys!5430 (_ BitVec 32)) (zeroValue!5534 V!32451) (minValue!5534 V!32451) (_size!2456 (_ BitVec 32)) (_keys!10575 array!57228) (_values!5721 array!57226) (_vacant!2456 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4802)

(declare-fun e!531836 () Bool)

(declare-fun e!531838 () Bool)

(declare-fun tp_is_empty!20615 () Bool)

(declare-fun array_inv!21334 (array!57228) Bool)

(declare-fun array_inv!21335 (array!57226) Bool)

(assert (=> b!945441 (= e!531836 (and tp!62843 tp_is_empty!20615 (array_inv!21334 (_keys!10575 thiss!1141)) (array_inv!21335 (_values!5721 thiss!1141)) e!531838))))

(declare-fun res!635049 () Bool)

(declare-fun e!531833 () Bool)

(assert (=> start!80556 (=> (not res!635049) (not e!531833))))

(declare-fun valid!1810 (LongMapFixedSize!4802) Bool)

(assert (=> start!80556 (= res!635049 (valid!1810 thiss!1141))))

(assert (=> start!80556 e!531833))

(assert (=> start!80556 e!531836))

(assert (=> start!80556 true))

(declare-fun b!945442 () Bool)

(declare-fun e!531834 () Bool)

(assert (=> b!945442 (= e!531838 (and e!531834 mapRes!32759))))

(declare-fun condMapEmpty!32759 () Bool)

(declare-fun mapDefault!32759 () ValueCell!9826)

