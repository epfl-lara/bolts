; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81070 () Bool)

(assert start!81070)

(declare-fun b!948826 () Bool)

(declare-fun b_free!18211 () Bool)

(declare-fun b_next!18211 () Bool)

(assert (=> b!948826 (= b_free!18211 (not b_next!18211))))

(declare-fun tp!63215 () Bool)

(declare-fun b_and!29669 () Bool)

(assert (=> b!948826 (= tp!63215 b_and!29669)))

(declare-fun b!948822 () Bool)

(declare-fun res!636543 () Bool)

(declare-fun e!534177 () Bool)

(assert (=> b!948822 (=> (not res!636543) (not e!534177))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((V!32591 0))(
  ( (V!32592 (val!10410 Int)) )
))
(declare-datatypes ((ValueCell!9878 0))(
  ( (ValueCellFull!9878 (v!12949 V!32591)) (EmptyCell!9878) )
))
(declare-datatypes ((array!57470 0))(
  ( (array!57471 (arr!27635 (Array (_ BitVec 32) ValueCell!9878)) (size!28111 (_ BitVec 32))) )
))
(declare-datatypes ((array!57472 0))(
  ( (array!57473 (arr!27636 (Array (_ BitVec 32) (_ BitVec 64))) (size!28112 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4906 0))(
  ( (LongMapFixedSize!4907 (defaultEntry!5758 Int) (mask!27523 (_ BitVec 32)) (extraKeys!5490 (_ BitVec 32)) (zeroValue!5594 V!32591) (minValue!5594 V!32591) (_size!2508 (_ BitVec 32)) (_keys!10678 array!57472) (_values!5781 array!57470) (_vacant!2508 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4906)

(declare-datatypes ((SeekEntryResult!9120 0))(
  ( (MissingZero!9120 (index!38850 (_ BitVec 32))) (Found!9120 (index!38851 (_ BitVec 32))) (Intermediate!9120 (undefined!9932 Bool) (index!38852 (_ BitVec 32)) (x!81635 (_ BitVec 32))) (Undefined!9120) (MissingVacant!9120 (index!38853 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57472 (_ BitVec 32)) SeekEntryResult!9120)

(assert (=> b!948822 (= res!636543 (not (is-Found!9120 (seekEntry!0 key!756 (_keys!10678 thiss!1141) (mask!27523 thiss!1141)))))))

(declare-fun b!948823 () Bool)

(assert (=> b!948823 (= e!534177 (and (= (size!28111 (_values!5781 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27523 thiss!1141))) (= (size!28112 (_keys!10678 thiss!1141)) (size!28111 (_values!5781 thiss!1141))) (bvsge (mask!27523 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5490 thiss!1141) #b00000000000000000000000000000000)))))

(declare-fun b!948824 () Bool)

(declare-fun e!534180 () Bool)

(declare-fun tp_is_empty!20719 () Bool)

(assert (=> b!948824 (= e!534180 tp_is_empty!20719)))

(declare-fun b!948825 () Bool)

(declare-fun e!534178 () Bool)

(declare-fun mapRes!32976 () Bool)

(assert (=> b!948825 (= e!534178 (and e!534180 mapRes!32976))))

(declare-fun condMapEmpty!32976 () Bool)

(declare-fun mapDefault!32976 () ValueCell!9878)

