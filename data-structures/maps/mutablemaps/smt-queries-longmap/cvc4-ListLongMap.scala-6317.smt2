; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81186 () Bool)

(assert start!81186)

(declare-fun b!949656 () Bool)

(declare-fun b_free!18227 () Bool)

(declare-fun b_next!18227 () Bool)

(assert (=> b!949656 (= b_free!18227 (not b_next!18227))))

(declare-fun tp!63271 () Bool)

(declare-fun b_and!29697 () Bool)

(assert (=> b!949656 (= tp!63271 b_and!29697)))

(declare-datatypes ((V!32611 0))(
  ( (V!32612 (val!10418 Int)) )
))
(declare-datatypes ((ValueCell!9886 0))(
  ( (ValueCellFull!9886 (v!12959 V!32611)) (EmptyCell!9886) )
))
(declare-datatypes ((array!57506 0))(
  ( (array!57507 (arr!27651 (Array (_ BitVec 32) ValueCell!9886)) (size!28129 (_ BitVec 32))) )
))
(declare-datatypes ((array!57508 0))(
  ( (array!57509 (arr!27652 (Array (_ BitVec 32) (_ BitVec 64))) (size!28130 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4922 0))(
  ( (LongMapFixedSize!4923 (defaultEntry!5770 Int) (mask!27551 (_ BitVec 32)) (extraKeys!5502 (_ BitVec 32)) (zeroValue!5606 V!32611) (minValue!5606 V!32611) (_size!2516 (_ BitVec 32)) (_keys!10698 array!57508) (_values!5793 array!57506) (_vacant!2516 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4922)

(declare-fun e!534681 () Bool)

(declare-fun tp_is_empty!20735 () Bool)

(declare-fun e!534682 () Bool)

(declare-fun array_inv!21408 (array!57508) Bool)

(declare-fun array_inv!21409 (array!57506) Bool)

(assert (=> b!949656 (= e!534682 (and tp!63271 tp_is_empty!20735 (array_inv!21408 (_keys!10698 thiss!1141)) (array_inv!21409 (_values!5793 thiss!1141)) e!534681))))

(declare-fun b!949657 () Bool)

(declare-fun res!636920 () Bool)

(declare-fun e!534679 () Bool)

(assert (=> b!949657 (=> (not res!636920) (not e!534679))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!949657 (= res!636920 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!949658 () Bool)

(declare-fun res!636917 () Bool)

(assert (=> b!949658 (=> (not res!636917) (not e!534679))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!949658 (= res!636917 (validMask!0 (mask!27551 thiss!1141)))))

(declare-fun b!949659 () Bool)

(declare-fun e!534678 () Bool)

(assert (=> b!949659 (= e!534678 tp_is_empty!20735)))

(declare-fun res!636918 () Bool)

(assert (=> start!81186 (=> (not res!636918) (not e!534679))))

(declare-fun valid!1848 (LongMapFixedSize!4922) Bool)

(assert (=> start!81186 (= res!636918 (valid!1848 thiss!1141))))

(assert (=> start!81186 e!534679))

(assert (=> start!81186 e!534682))

(assert (=> start!81186 true))

(declare-fun b!949660 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57508 (_ BitVec 32)) Bool)

(assert (=> b!949660 (= e!534679 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10698 thiss!1141) (mask!27551 thiss!1141))))))

(declare-fun b!949661 () Bool)

(declare-fun e!534683 () Bool)

(declare-fun mapRes!33008 () Bool)

(assert (=> b!949661 (= e!534681 (and e!534683 mapRes!33008))))

(declare-fun condMapEmpty!33008 () Bool)

(declare-fun mapDefault!33008 () ValueCell!9886)

