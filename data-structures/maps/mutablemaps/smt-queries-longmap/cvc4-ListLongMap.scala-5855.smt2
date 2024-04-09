; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75692 () Bool)

(assert start!75692)

(declare-fun b!889433 () Bool)

(declare-fun b_free!15635 () Bool)

(declare-fun b_next!15635 () Bool)

(assert (=> b!889433 (= b_free!15635 (not b_next!15635))))

(declare-fun tp!54875 () Bool)

(declare-fun b_and!25893 () Bool)

(assert (=> b!889433 (= tp!54875 b_and!25893)))

(declare-fun mapIsEmpty!28499 () Bool)

(declare-fun mapRes!28499 () Bool)

(assert (=> mapIsEmpty!28499 mapRes!28499))

(declare-fun res!602877 () Bool)

(declare-fun e!495844 () Bool)

(assert (=> start!75692 (=> (not res!602877) (not e!495844))))

(declare-datatypes ((array!51892 0))(
  ( (array!51893 (arr!24948 (Array (_ BitVec 32) (_ BitVec 64))) (size!25393 (_ BitVec 32))) )
))
(declare-datatypes ((V!28915 0))(
  ( (V!28916 (val!9032 Int)) )
))
(declare-datatypes ((ValueCell!8500 0))(
  ( (ValueCellFull!8500 (v!11504 V!28915)) (EmptyCell!8500) )
))
(declare-datatypes ((array!51894 0))(
  ( (array!51895 (arr!24949 (Array (_ BitVec 32) ValueCell!8500)) (size!25394 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4016 0))(
  ( (LongMapFixedSize!4017 (defaultEntry!5205 Int) (mask!25649 (_ BitVec 32)) (extraKeys!4899 (_ BitVec 32)) (zeroValue!5003 V!28915) (minValue!5003 V!28915) (_size!2063 (_ BitVec 32)) (_keys!9884 array!51892) (_values!5190 array!51894) (_vacant!2063 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4016)

(declare-fun valid!1551 (LongMapFixedSize!4016) Bool)

(assert (=> start!75692 (= res!602877 (valid!1551 thiss!1181))))

(assert (=> start!75692 e!495844))

(declare-fun e!495842 () Bool)

(assert (=> start!75692 e!495842))

(assert (=> start!75692 true))

(declare-fun b!889429 () Bool)

(declare-fun res!602874 () Bool)

(assert (=> b!889429 (=> (not res!602874) (not e!495844))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!889429 (= res!602874 (not (= key!785 (bvneg key!785))))))

(declare-fun b!889430 () Bool)

(declare-fun res!602876 () Bool)

(declare-fun e!495846 () Bool)

(assert (=> b!889430 (=> (not res!602876) (not e!495846))))

(assert (=> b!889430 (= res!602876 (and (= (size!25394 (_values!5190 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25649 thiss!1181))) (= (size!25393 (_keys!9884 thiss!1181)) (size!25394 (_values!5190 thiss!1181))) (bvsge (mask!25649 thiss!1181) #b00000000000000000000000000000000) (bvsge (extraKeys!4899 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!4899 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!889431 () Bool)

(assert (=> b!889431 (= e!495844 e!495846)))

(declare-fun res!602875 () Bool)

(assert (=> b!889431 (=> (not res!602875) (not e!495846))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!889431 (= res!602875 (validMask!0 (mask!25649 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8767 0))(
  ( (MissingZero!8767 (index!37438 (_ BitVec 32))) (Found!8767 (index!37439 (_ BitVec 32))) (Intermediate!8767 (undefined!9579 Bool) (index!37440 (_ BitVec 32)) (x!75512 (_ BitVec 32))) (Undefined!8767) (MissingVacant!8767 (index!37441 (_ BitVec 32))) )
))
(declare-fun lt!402008 () SeekEntryResult!8767)

(declare-fun seekEntry!0 ((_ BitVec 64) array!51892 (_ BitVec 32)) SeekEntryResult!8767)

(assert (=> b!889431 (= lt!402008 (seekEntry!0 key!785 (_keys!9884 thiss!1181) (mask!25649 thiss!1181)))))

(declare-fun b!889432 () Bool)

(declare-fun e!495847 () Bool)

(declare-fun tp_is_empty!17963 () Bool)

(assert (=> b!889432 (= e!495847 tp_is_empty!17963)))

(declare-fun e!495843 () Bool)

(declare-fun array_inv!19594 (array!51892) Bool)

(declare-fun array_inv!19595 (array!51894) Bool)

(assert (=> b!889433 (= e!495842 (and tp!54875 tp_is_empty!17963 (array_inv!19594 (_keys!9884 thiss!1181)) (array_inv!19595 (_values!5190 thiss!1181)) e!495843))))

(declare-fun b!889434 () Bool)

(assert (=> b!889434 (= e!495846 false)))

(declare-fun lt!402009 () Bool)

(declare-datatypes ((List!17789 0))(
  ( (Nil!17786) (Cons!17785 (h!18916 (_ BitVec 64)) (t!25096 List!17789)) )
))
(declare-fun arrayNoDuplicates!0 (array!51892 (_ BitVec 32) List!17789) Bool)

(assert (=> b!889434 (= lt!402009 (arrayNoDuplicates!0 (_keys!9884 thiss!1181) #b00000000000000000000000000000000 Nil!17786))))

(declare-fun b!889435 () Bool)

(declare-fun e!495848 () Bool)

(assert (=> b!889435 (= e!495843 (and e!495848 mapRes!28499))))

(declare-fun condMapEmpty!28499 () Bool)

(declare-fun mapDefault!28499 () ValueCell!8500)

