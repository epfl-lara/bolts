; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75700 () Bool)

(assert start!75700)

(declare-fun b!889538 () Bool)

(declare-fun b_free!15643 () Bool)

(declare-fun b_next!15643 () Bool)

(assert (=> b!889538 (= b_free!15643 (not b_next!15643))))

(declare-fun tp!54899 () Bool)

(declare-fun b_and!25901 () Bool)

(assert (=> b!889538 (= tp!54899 b_and!25901)))

(declare-fun res!602936 () Bool)

(declare-fun e!495927 () Bool)

(assert (=> start!75700 (=> (not res!602936) (not e!495927))))

(declare-datatypes ((array!51908 0))(
  ( (array!51909 (arr!24956 (Array (_ BitVec 32) (_ BitVec 64))) (size!25401 (_ BitVec 32))) )
))
(declare-datatypes ((V!28927 0))(
  ( (V!28928 (val!9036 Int)) )
))
(declare-datatypes ((ValueCell!8504 0))(
  ( (ValueCellFull!8504 (v!11508 V!28927)) (EmptyCell!8504) )
))
(declare-datatypes ((array!51910 0))(
  ( (array!51911 (arr!24957 (Array (_ BitVec 32) ValueCell!8504)) (size!25402 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4024 0))(
  ( (LongMapFixedSize!4025 (defaultEntry!5209 Int) (mask!25657 (_ BitVec 32)) (extraKeys!4903 (_ BitVec 32)) (zeroValue!5007 V!28927) (minValue!5007 V!28927) (_size!2067 (_ BitVec 32)) (_keys!9888 array!51908) (_values!5194 array!51910) (_vacant!2067 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4024)

(declare-fun valid!1555 (LongMapFixedSize!4024) Bool)

(assert (=> start!75700 (= res!602936 (valid!1555 thiss!1181))))

(assert (=> start!75700 e!495927))

(declare-fun e!495931 () Bool)

(assert (=> start!75700 e!495931))

(assert (=> start!75700 true))

(declare-fun b!889537 () Bool)

(declare-fun e!495932 () Bool)

(assert (=> b!889537 (= e!495927 e!495932)))

(declare-fun res!602937 () Bool)

(assert (=> b!889537 (=> (not res!602937) (not e!495932))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!889537 (= res!602937 (validMask!0 (mask!25657 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8770 0))(
  ( (MissingZero!8770 (index!37450 (_ BitVec 32))) (Found!8770 (index!37451 (_ BitVec 32))) (Intermediate!8770 (undefined!9582 Bool) (index!37452 (_ BitVec 32)) (x!75531 (_ BitVec 32))) (Undefined!8770) (MissingVacant!8770 (index!37453 (_ BitVec 32))) )
))
(declare-fun lt!402032 () SeekEntryResult!8770)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!51908 (_ BitVec 32)) SeekEntryResult!8770)

(assert (=> b!889537 (= lt!402032 (seekEntry!0 key!785 (_keys!9888 thiss!1181) (mask!25657 thiss!1181)))))

(declare-fun tp_is_empty!17971 () Bool)

(declare-fun e!495928 () Bool)

(declare-fun array_inv!19600 (array!51908) Bool)

(declare-fun array_inv!19601 (array!51910) Bool)

(assert (=> b!889538 (= e!495931 (and tp!54899 tp_is_empty!17971 (array_inv!19600 (_keys!9888 thiss!1181)) (array_inv!19601 (_values!5194 thiss!1181)) e!495928))))

(declare-fun b!889539 () Bool)

(declare-fun e!495926 () Bool)

(declare-fun mapRes!28511 () Bool)

(assert (=> b!889539 (= e!495928 (and e!495926 mapRes!28511))))

(declare-fun condMapEmpty!28511 () Bool)

(declare-fun mapDefault!28511 () ValueCell!8504)

