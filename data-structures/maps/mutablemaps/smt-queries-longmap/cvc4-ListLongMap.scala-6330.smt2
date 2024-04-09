; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81606 () Bool)

(assert start!81606)

(declare-fun b!952847 () Bool)

(declare-fun b_free!18305 () Bool)

(declare-fun b_next!18305 () Bool)

(assert (=> b!952847 (= b_free!18305 (not b_next!18305))))

(declare-fun tp!63543 () Bool)

(declare-fun b_and!29807 () Bool)

(assert (=> b!952847 (= tp!63543 b_and!29807)))

(declare-fun b!952840 () Bool)

(declare-fun res!638336 () Bool)

(declare-fun e!536685 () Bool)

(assert (=> b!952840 (=> (not res!638336) (not e!536685))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((V!32715 0))(
  ( (V!32716 (val!10457 Int)) )
))
(declare-datatypes ((ValueCell!9925 0))(
  ( (ValueCellFull!9925 (v!13010 V!32715)) (EmptyCell!9925) )
))
(declare-datatypes ((array!57686 0))(
  ( (array!57687 (arr!27729 (Array (_ BitVec 32) ValueCell!9925)) (size!28209 (_ BitVec 32))) )
))
(declare-datatypes ((array!57688 0))(
  ( (array!57689 (arr!27730 (Array (_ BitVec 32) (_ BitVec 64))) (size!28210 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5000 0))(
  ( (LongMapFixedSize!5001 (defaultEntry!5835 Int) (mask!27689 (_ BitVec 32)) (extraKeys!5567 (_ BitVec 32)) (zeroValue!5671 V!32715) (minValue!5671 V!32715) (_size!2555 (_ BitVec 32)) (_keys!10790 array!57688) (_values!5858 array!57686) (_vacant!2555 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!5000)

(declare-datatypes ((SeekEntryResult!9153 0))(
  ( (MissingZero!9153 (index!38982 (_ BitVec 32))) (Found!9153 (index!38983 (_ BitVec 32))) (Intermediate!9153 (undefined!9965 Bool) (index!38984 (_ BitVec 32)) (x!81960 (_ BitVec 32))) (Undefined!9153) (MissingVacant!9153 (index!38985 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57688 (_ BitVec 32)) SeekEntryResult!9153)

(assert (=> b!952840 (= res!638336 (not (is-Found!9153 (seekEntry!0 key!756 (_keys!10790 thiss!1141) (mask!27689 thiss!1141)))))))

(declare-fun b!952841 () Bool)

(declare-fun e!536687 () Bool)

(declare-fun e!536686 () Bool)

(declare-fun mapRes!33163 () Bool)

(assert (=> b!952841 (= e!536687 (and e!536686 mapRes!33163))))

(declare-fun condMapEmpty!33163 () Bool)

(declare-fun mapDefault!33163 () ValueCell!9925)

