; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80596 () Bool)

(assert start!80596)

(declare-fun b!945685 () Bool)

(declare-fun b_free!18115 () Bool)

(declare-fun b_next!18115 () Bool)

(assert (=> b!945685 (= b_free!18115 (not b_next!18115))))

(declare-fun tp!62874 () Bool)

(declare-fun b_and!29555 () Bool)

(assert (=> b!945685 (= tp!62874 b_and!29555)))

(declare-fun mapNonEmpty!32778 () Bool)

(declare-fun mapRes!32778 () Bool)

(declare-fun tp!62873 () Bool)

(declare-fun e!532003 () Bool)

(assert (=> mapNonEmpty!32778 (= mapRes!32778 (and tp!62873 e!532003))))

(declare-datatypes ((V!32463 0))(
  ( (V!32464 (val!10362 Int)) )
))
(declare-datatypes ((ValueCell!9830 0))(
  ( (ValueCellFull!9830 (v!12896 V!32463)) (EmptyCell!9830) )
))
(declare-fun mapValue!32778 () ValueCell!9830)

(declare-datatypes ((array!57246 0))(
  ( (array!57247 (arr!27539 (Array (_ BitVec 32) ValueCell!9830)) (size!28009 (_ BitVec 32))) )
))
(declare-datatypes ((array!57248 0))(
  ( (array!57249 (arr!27540 (Array (_ BitVec 32) (_ BitVec 64))) (size!28010 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4810 0))(
  ( (LongMapFixedSize!4811 (defaultEntry!5702 Int) (mask!27377 (_ BitVec 32)) (extraKeys!5434 (_ BitVec 32)) (zeroValue!5538 V!32463) (minValue!5538 V!32463) (_size!2460 (_ BitVec 32)) (_keys!10584 array!57248) (_values!5725 array!57246) (_vacant!2460 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4810)

(declare-fun mapRest!32778 () (Array (_ BitVec 32) ValueCell!9830))

(declare-fun mapKey!32778 () (_ BitVec 32))

(assert (=> mapNonEmpty!32778 (= (arr!27539 (_values!5725 thiss!1141)) (store mapRest!32778 mapKey!32778 mapValue!32778))))

(declare-fun b!945683 () Bool)

(declare-fun res!635131 () Bool)

(declare-fun e!532005 () Bool)

(assert (=> b!945683 (=> (not res!635131) (not e!532005))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!945683 (= res!635131 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!945684 () Bool)

(declare-fun e!532000 () Bool)

(assert (=> b!945684 (= e!532005 e!532000)))

(declare-fun res!635130 () Bool)

(assert (=> b!945684 (=> (not res!635130) (not e!532000))))

(declare-datatypes ((SeekEntryResult!9084 0))(
  ( (MissingZero!9084 (index!38706 (_ BitVec 32))) (Found!9084 (index!38707 (_ BitVec 32))) (Intermediate!9084 (undefined!9896 Bool) (index!38708 (_ BitVec 32)) (x!81281 (_ BitVec 32))) (Undefined!9084) (MissingVacant!9084 (index!38709 (_ BitVec 32))) )
))
(declare-fun lt!426065 () SeekEntryResult!9084)

(assert (=> b!945684 (= res!635130 (and (is-Found!9084 lt!426065) (bvsge (index!38707 lt!426065) #b00000000000000000000000000000000) (bvslt (index!38707 lt!426065) (size!28010 (_keys!10584 thiss!1141))) (bvslt (size!28010 (_keys!10584 thiss!1141)) #b01111111111111111111111111111111)))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57248 (_ BitVec 32)) SeekEntryResult!9084)

(assert (=> b!945684 (= lt!426065 (seekEntry!0 key!756 (_keys!10584 thiss!1141) (mask!27377 thiss!1141)))))

(declare-fun e!532002 () Bool)

(declare-fun tp_is_empty!20623 () Bool)

(declare-fun e!531999 () Bool)

(declare-fun array_inv!21340 (array!57248) Bool)

(declare-fun array_inv!21341 (array!57246) Bool)

(assert (=> b!945685 (= e!531999 (and tp!62874 tp_is_empty!20623 (array_inv!21340 (_keys!10584 thiss!1141)) (array_inv!21341 (_values!5725 thiss!1141)) e!532002))))

(declare-fun b!945686 () Bool)

(declare-fun arrayContainsKey!0 (array!57248 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!945686 (= e!532000 (not (arrayContainsKey!0 (_keys!10584 thiss!1141) key!756 (index!38707 lt!426065))))))

(declare-fun b!945687 () Bool)

(declare-fun e!532004 () Bool)

(assert (=> b!945687 (= e!532004 tp_is_empty!20623)))

(declare-fun b!945688 () Bool)

(assert (=> b!945688 (= e!532002 (and e!532004 mapRes!32778))))

(declare-fun condMapEmpty!32778 () Bool)

(declare-fun mapDefault!32778 () ValueCell!9830)

