; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79982 () Bool)

(assert start!79982)

(declare-fun b!939806 () Bool)

(declare-fun b_free!17809 () Bool)

(declare-fun b_next!17809 () Bool)

(assert (=> b!939806 (= b_free!17809 (not b_next!17809))))

(declare-fun tp!61902 () Bool)

(declare-fun b_and!29239 () Bool)

(assert (=> b!939806 (= tp!61902 b_and!29239)))

(declare-fun mapIsEmpty!32266 () Bool)

(declare-fun mapRes!32266 () Bool)

(assert (=> mapIsEmpty!32266 mapRes!32266))

(declare-fun res!632126 () Bool)

(declare-fun e!528013 () Bool)

(assert (=> start!79982 (=> (not res!632126) (not e!528013))))

(declare-datatypes ((V!32055 0))(
  ( (V!32056 (val!10209 Int)) )
))
(declare-datatypes ((ValueCell!9677 0))(
  ( (ValueCellFull!9677 (v!12740 V!32055)) (EmptyCell!9677) )
))
(declare-datatypes ((array!56604 0))(
  ( (array!56605 (arr!27233 (Array (_ BitVec 32) ValueCell!9677)) (size!27695 (_ BitVec 32))) )
))
(declare-datatypes ((array!56606 0))(
  ( (array!56607 (arr!27234 (Array (_ BitVec 32) (_ BitVec 64))) (size!27696 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4504 0))(
  ( (LongMapFixedSize!4505 (defaultEntry!5543 Int) (mask!27063 (_ BitVec 32)) (extraKeys!5275 (_ BitVec 32)) (zeroValue!5379 V!32055) (minValue!5379 V!32055) (_size!2307 (_ BitVec 32)) (_keys!10389 array!56606) (_values!5566 array!56604) (_vacant!2307 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4504)

(declare-fun valid!1712 (LongMapFixedSize!4504) Bool)

(assert (=> start!79982 (= res!632126 (valid!1712 thiss!1141))))

(assert (=> start!79982 e!528013))

(declare-fun e!528016 () Bool)

(assert (=> start!79982 e!528016))

(assert (=> start!79982 true))

(declare-fun b!939802 () Bool)

(assert (=> b!939802 (= e!528013 false)))

(declare-datatypes ((SeekEntryResult!8972 0))(
  ( (MissingZero!8972 (index!38258 (_ BitVec 32))) (Found!8972 (index!38259 (_ BitVec 32))) (Intermediate!8972 (undefined!9784 Bool) (index!38260 (_ BitVec 32)) (x!80570 (_ BitVec 32))) (Undefined!8972) (MissingVacant!8972 (index!38261 (_ BitVec 32))) )
))
(declare-fun lt!424536 () SeekEntryResult!8972)

(declare-fun key!756 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!56606 (_ BitVec 32)) SeekEntryResult!8972)

(assert (=> b!939802 (= lt!424536 (seekEntry!0 key!756 (_keys!10389 thiss!1141) (mask!27063 thiss!1141)))))

(declare-fun b!939803 () Bool)

(declare-fun e!528015 () Bool)

(declare-fun tp_is_empty!20317 () Bool)

(assert (=> b!939803 (= e!528015 tp_is_empty!20317)))

(declare-fun b!939804 () Bool)

(declare-fun e!528017 () Bool)

(assert (=> b!939804 (= e!528017 tp_is_empty!20317)))

(declare-fun b!939805 () Bool)

(declare-fun e!528014 () Bool)

(assert (=> b!939805 (= e!528014 (and e!528017 mapRes!32266))))

(declare-fun condMapEmpty!32266 () Bool)

(declare-fun mapDefault!32266 () ValueCell!9677)

