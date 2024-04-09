; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22656 () Bool)

(assert start!22656)

(declare-fun b!236500 () Bool)

(declare-fun b_free!6365 () Bool)

(declare-fun b_next!6365 () Bool)

(assert (=> b!236500 (= b_free!6365 (not b_next!6365))))

(declare-fun tp!22275 () Bool)

(declare-fun b_and!13323 () Bool)

(assert (=> b!236500 (= tp!22275 b_and!13323)))

(declare-fun mapIsEmpty!10548 () Bool)

(declare-fun mapRes!10548 () Bool)

(assert (=> mapIsEmpty!10548 mapRes!10548))

(declare-fun tp_is_empty!6227 () Bool)

(declare-datatypes ((V!7949 0))(
  ( (V!7950 (val!3158 Int)) )
))
(declare-datatypes ((ValueCell!2770 0))(
  ( (ValueCellFull!2770 (v!5185 V!7949)) (EmptyCell!2770) )
))
(declare-datatypes ((array!11718 0))(
  ( (array!11719 (arr!5567 (Array (_ BitVec 32) ValueCell!2770)) (size!5905 (_ BitVec 32))) )
))
(declare-datatypes ((array!11720 0))(
  ( (array!11721 (arr!5568 (Array (_ BitVec 32) (_ BitVec 64))) (size!5906 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3440 0))(
  ( (LongMapFixedSize!3441 (defaultEntry!4395 Int) (mask!10388 (_ BitVec 32)) (extraKeys!4132 (_ BitVec 32)) (zeroValue!4236 V!7949) (minValue!4236 V!7949) (_size!1769 (_ BitVec 32)) (_keys!6478 array!11720) (_values!4378 array!11718) (_vacant!1769 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3440)

(declare-fun e!153610 () Bool)

(declare-fun e!153608 () Bool)

(declare-fun array_inv!3663 (array!11720) Bool)

(declare-fun array_inv!3664 (array!11718) Bool)

(assert (=> b!236500 (= e!153608 (and tp!22275 tp_is_empty!6227 (array_inv!3663 (_keys!6478 thiss!1504)) (array_inv!3664 (_values!4378 thiss!1504)) e!153610))))

(declare-fun b!236501 () Bool)

(declare-fun e!153612 () Bool)

(declare-fun e!153613 () Bool)

(assert (=> b!236501 (= e!153612 e!153613)))

(declare-fun res!115982 () Bool)

(assert (=> b!236501 (=> (not res!115982) (not e!153613))))

(declare-datatypes ((SeekEntryResult!1013 0))(
  ( (MissingZero!1013 (index!6222 (_ BitVec 32))) (Found!1013 (index!6223 (_ BitVec 32))) (Intermediate!1013 (undefined!1825 Bool) (index!6224 (_ BitVec 32)) (x!23895 (_ BitVec 32))) (Undefined!1013) (MissingVacant!1013 (index!6225 (_ BitVec 32))) )
))
(declare-fun lt!119605 () SeekEntryResult!1013)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!236501 (= res!115982 (or (= lt!119605 (MissingZero!1013 index!297)) (= lt!119605 (MissingVacant!1013 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11720 (_ BitVec 32)) SeekEntryResult!1013)

(assert (=> b!236501 (= lt!119605 (seekEntryOrOpen!0 key!932 (_keys!6478 thiss!1504) (mask!10388 thiss!1504)))))

(declare-fun b!236502 () Bool)

(declare-fun e!153609 () Bool)

(assert (=> b!236502 (= e!153610 (and e!153609 mapRes!10548))))

(declare-fun condMapEmpty!10548 () Bool)

(declare-fun mapDefault!10548 () ValueCell!2770)

