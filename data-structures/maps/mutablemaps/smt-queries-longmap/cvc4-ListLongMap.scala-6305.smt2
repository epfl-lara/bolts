; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80764 () Bool)

(assert start!80764)

(declare-fun b!946695 () Bool)

(declare-fun b_free!18155 () Bool)

(declare-fun b_next!18155 () Bool)

(assert (=> b!946695 (= b_free!18155 (not b_next!18155))))

(declare-fun tp!63014 () Bool)

(declare-fun b_and!29595 () Bool)

(assert (=> b!946695 (= tp!63014 b_and!29595)))

(declare-fun b!946693 () Bool)

(declare-fun res!635561 () Bool)

(declare-fun e!532788 () Bool)

(assert (=> b!946693 (=> (not res!635561) (not e!532788))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!946693 (= res!635561 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!946694 () Bool)

(declare-fun e!532786 () Bool)

(declare-fun tp_is_empty!20663 () Bool)

(assert (=> b!946694 (= e!532786 tp_is_empty!20663)))

(declare-fun e!532782 () Bool)

(declare-datatypes ((V!32515 0))(
  ( (V!32516 (val!10382 Int)) )
))
(declare-datatypes ((ValueCell!9850 0))(
  ( (ValueCellFull!9850 (v!12916 V!32515)) (EmptyCell!9850) )
))
(declare-datatypes ((array!57338 0))(
  ( (array!57339 (arr!27579 (Array (_ BitVec 32) ValueCell!9850)) (size!28052 (_ BitVec 32))) )
))
(declare-datatypes ((array!57340 0))(
  ( (array!57341 (arr!27580 (Array (_ BitVec 32) (_ BitVec 64))) (size!28053 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4850 0))(
  ( (LongMapFixedSize!4851 (defaultEntry!5722 Int) (mask!27432 (_ BitVec 32)) (extraKeys!5454 (_ BitVec 32)) (zeroValue!5558 V!32515) (minValue!5558 V!32515) (_size!2480 (_ BitVec 32)) (_keys!10619 array!57340) (_values!5745 array!57338) (_vacant!2480 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4850)

(declare-fun e!532785 () Bool)

(declare-fun array_inv!21360 (array!57340) Bool)

(declare-fun array_inv!21361 (array!57338) Bool)

(assert (=> b!946695 (= e!532782 (and tp!63014 tp_is_empty!20663 (array_inv!21360 (_keys!10619 thiss!1141)) (array_inv!21361 (_values!5745 thiss!1141)) e!532785))))

(declare-fun b!946696 () Bool)

(declare-fun e!532783 () Bool)

(declare-fun e!532787 () Bool)

(assert (=> b!946696 (= e!532783 (not e!532787))))

(declare-fun res!635564 () Bool)

(assert (=> b!946696 (=> res!635564 e!532787)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!946696 (= res!635564 (not (validMask!0 (mask!27432 thiss!1141))))))

(declare-fun arrayContainsKey!0 (array!57340 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!946696 (arrayContainsKey!0 (_keys!10619 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((SeekEntryResult!9098 0))(
  ( (MissingZero!9098 (index!38762 (_ BitVec 32))) (Found!9098 (index!38763 (_ BitVec 32))) (Intermediate!9098 (undefined!9910 Bool) (index!38764 (_ BitVec 32)) (x!81418 (_ BitVec 32))) (Undefined!9098) (MissingVacant!9098 (index!38765 (_ BitVec 32))) )
))
(declare-fun lt!426356 () SeekEntryResult!9098)

(declare-datatypes ((Unit!31909 0))(
  ( (Unit!31910) )
))
(declare-fun lt!426355 () Unit!31909)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57340 (_ BitVec 64) (_ BitVec 32)) Unit!31909)

(assert (=> b!946696 (= lt!426355 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10619 thiss!1141) key!756 (index!38763 lt!426356)))))

(declare-fun b!946697 () Bool)

(assert (=> b!946697 (= e!532787 (or (not (= (size!28052 (_values!5745 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27432 thiss!1141)))) (not (= (size!28053 (_keys!10619 thiss!1141)) (size!28052 (_values!5745 thiss!1141)))) (bvslt (mask!27432 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5454 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5454 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!946698 () Bool)

(declare-fun e!532784 () Bool)

(declare-fun mapRes!32859 () Bool)

(assert (=> b!946698 (= e!532785 (and e!532784 mapRes!32859))))

(declare-fun condMapEmpty!32859 () Bool)

(declare-fun mapDefault!32859 () ValueCell!9850)

