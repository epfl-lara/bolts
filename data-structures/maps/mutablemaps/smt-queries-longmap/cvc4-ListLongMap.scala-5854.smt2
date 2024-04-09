; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75686 () Bool)

(assert start!75686)

(declare-fun b!889355 () Bool)

(declare-fun b_free!15629 () Bool)

(declare-fun b_next!15629 () Bool)

(assert (=> b!889355 (= b_free!15629 (not b_next!15629))))

(declare-fun tp!54856 () Bool)

(declare-fun b_and!25887 () Bool)

(assert (=> b!889355 (= tp!54856 b_and!25887)))

(declare-fun b!889348 () Bool)

(declare-fun e!495782 () Bool)

(declare-fun tp_is_empty!17957 () Bool)

(assert (=> b!889348 (= e!495782 tp_is_empty!17957)))

(declare-fun b!889349 () Bool)

(declare-fun res!602832 () Bool)

(declare-fun e!495779 () Bool)

(assert (=> b!889349 (=> (not res!602832) (not e!495779))))

(declare-datatypes ((array!51880 0))(
  ( (array!51881 (arr!24942 (Array (_ BitVec 32) (_ BitVec 64))) (size!25387 (_ BitVec 32))) )
))
(declare-datatypes ((V!28907 0))(
  ( (V!28908 (val!9029 Int)) )
))
(declare-datatypes ((ValueCell!8497 0))(
  ( (ValueCellFull!8497 (v!11501 V!28907)) (EmptyCell!8497) )
))
(declare-datatypes ((array!51882 0))(
  ( (array!51883 (arr!24943 (Array (_ BitVec 32) ValueCell!8497)) (size!25388 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4010 0))(
  ( (LongMapFixedSize!4011 (defaultEntry!5202 Int) (mask!25644 (_ BitVec 32)) (extraKeys!4896 (_ BitVec 32)) (zeroValue!5000 V!28907) (minValue!5000 V!28907) (_size!2060 (_ BitVec 32)) (_keys!9881 array!51880) (_values!5187 array!51882) (_vacant!2060 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4010)

(assert (=> b!889349 (= res!602832 (and (= (size!25388 (_values!5187 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25644 thiss!1181))) (= (size!25387 (_keys!9881 thiss!1181)) (size!25388 (_values!5187 thiss!1181))) (bvsge (mask!25644 thiss!1181) #b00000000000000000000000000000000) (bvsge (extraKeys!4896 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!4896 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!889350 () Bool)

(declare-fun res!602828 () Bool)

(assert (=> b!889350 (=> (not res!602828) (not e!495779))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51880 (_ BitVec 32)) Bool)

(assert (=> b!889350 (= res!602828 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9881 thiss!1181) (mask!25644 thiss!1181)))))

(declare-fun res!602830 () Bool)

(declare-fun e!495780 () Bool)

(assert (=> start!75686 (=> (not res!602830) (not e!495780))))

(declare-fun valid!1549 (LongMapFixedSize!4010) Bool)

(assert (=> start!75686 (= res!602830 (valid!1549 thiss!1181))))

(assert (=> start!75686 e!495780))

(declare-fun e!495781 () Bool)

(assert (=> start!75686 e!495781))

(assert (=> start!75686 true))

(declare-fun b!889351 () Bool)

(declare-fun res!602829 () Bool)

(assert (=> b!889351 (=> (not res!602829) (not e!495780))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!889351 (= res!602829 (not (= key!785 (bvneg key!785))))))

(declare-fun b!889352 () Bool)

(assert (=> b!889352 (= e!495779 false)))

(declare-fun lt!401990 () Bool)

(declare-datatypes ((List!17787 0))(
  ( (Nil!17784) (Cons!17783 (h!18914 (_ BitVec 64)) (t!25094 List!17787)) )
))
(declare-fun arrayNoDuplicates!0 (array!51880 (_ BitVec 32) List!17787) Bool)

(assert (=> b!889352 (= lt!401990 (arrayNoDuplicates!0 (_keys!9881 thiss!1181) #b00000000000000000000000000000000 Nil!17784))))

(declare-fun b!889353 () Bool)

(assert (=> b!889353 (= e!495780 e!495779)))

(declare-fun res!602831 () Bool)

(assert (=> b!889353 (=> (not res!602831) (not e!495779))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!889353 (= res!602831 (validMask!0 (mask!25644 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8765 0))(
  ( (MissingZero!8765 (index!37430 (_ BitVec 32))) (Found!8765 (index!37431 (_ BitVec 32))) (Intermediate!8765 (undefined!9577 Bool) (index!37432 (_ BitVec 32)) (x!75502 (_ BitVec 32))) (Undefined!8765) (MissingVacant!8765 (index!37433 (_ BitVec 32))) )
))
(declare-fun lt!401991 () SeekEntryResult!8765)

(declare-fun seekEntry!0 ((_ BitVec 64) array!51880 (_ BitVec 32)) SeekEntryResult!8765)

(assert (=> b!889353 (= lt!401991 (seekEntry!0 key!785 (_keys!9881 thiss!1181) (mask!25644 thiss!1181)))))

(declare-fun b!889354 () Bool)

(declare-fun e!495784 () Bool)

(declare-fun e!495783 () Bool)

(declare-fun mapRes!28490 () Bool)

(assert (=> b!889354 (= e!495784 (and e!495783 mapRes!28490))))

(declare-fun condMapEmpty!28490 () Bool)

(declare-fun mapDefault!28490 () ValueCell!8497)

