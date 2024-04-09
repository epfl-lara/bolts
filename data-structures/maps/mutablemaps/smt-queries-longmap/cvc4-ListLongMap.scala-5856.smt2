; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75698 () Bool)

(assert start!75698)

(declare-fun b!889514 () Bool)

(declare-fun b_free!15641 () Bool)

(declare-fun b_next!15641 () Bool)

(assert (=> b!889514 (= b_free!15641 (not b_next!15641))))

(declare-fun tp!54892 () Bool)

(declare-fun b_and!25899 () Bool)

(assert (=> b!889514 (= tp!54892 b_and!25899)))

(declare-fun res!602922 () Bool)

(declare-fun e!495907 () Bool)

(assert (=> start!75698 (=> (not res!602922) (not e!495907))))

(declare-datatypes ((array!51904 0))(
  ( (array!51905 (arr!24954 (Array (_ BitVec 32) (_ BitVec 64))) (size!25399 (_ BitVec 32))) )
))
(declare-datatypes ((V!28923 0))(
  ( (V!28924 (val!9035 Int)) )
))
(declare-datatypes ((ValueCell!8503 0))(
  ( (ValueCellFull!8503 (v!11507 V!28923)) (EmptyCell!8503) )
))
(declare-datatypes ((array!51906 0))(
  ( (array!51907 (arr!24955 (Array (_ BitVec 32) ValueCell!8503)) (size!25400 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4022 0))(
  ( (LongMapFixedSize!4023 (defaultEntry!5208 Int) (mask!25654 (_ BitVec 32)) (extraKeys!4902 (_ BitVec 32)) (zeroValue!5006 V!28923) (minValue!5006 V!28923) (_size!2066 (_ BitVec 32)) (_keys!9887 array!51904) (_values!5193 array!51906) (_vacant!2066 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4022)

(declare-fun valid!1554 (LongMapFixedSize!4022) Bool)

(assert (=> start!75698 (= res!602922 (valid!1554 thiss!1181))))

(assert (=> start!75698 e!495907))

(declare-fun e!495909 () Bool)

(assert (=> start!75698 e!495909))

(assert (=> start!75698 true))

(declare-fun b!889510 () Bool)

(declare-fun res!602918 () Bool)

(declare-fun e!495908 () Bool)

(assert (=> b!889510 (=> (not res!602918) (not e!495908))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51904 (_ BitVec 32)) Bool)

(assert (=> b!889510 (= res!602918 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9887 thiss!1181) (mask!25654 thiss!1181)))))

(declare-fun b!889511 () Bool)

(assert (=> b!889511 (= e!495907 e!495908)))

(declare-fun res!602919 () Bool)

(assert (=> b!889511 (=> (not res!602919) (not e!495908))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!889511 (= res!602919 (validMask!0 (mask!25654 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8769 0))(
  ( (MissingZero!8769 (index!37446 (_ BitVec 32))) (Found!8769 (index!37447 (_ BitVec 32))) (Intermediate!8769 (undefined!9581 Bool) (index!37448 (_ BitVec 32)) (x!75522 (_ BitVec 32))) (Undefined!8769) (MissingVacant!8769 (index!37449 (_ BitVec 32))) )
))
(declare-fun lt!402027 () SeekEntryResult!8769)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!51904 (_ BitVec 32)) SeekEntryResult!8769)

(assert (=> b!889511 (= lt!402027 (seekEntry!0 key!785 (_keys!9887 thiss!1181) (mask!25654 thiss!1181)))))

(declare-fun b!889512 () Bool)

(declare-fun e!495910 () Bool)

(declare-fun tp_is_empty!17969 () Bool)

(assert (=> b!889512 (= e!495910 tp_is_empty!17969)))

(declare-fun b!889513 () Bool)

(assert (=> b!889513 (= e!495908 false)))

(declare-fun lt!402026 () Bool)

(declare-datatypes ((List!17791 0))(
  ( (Nil!17788) (Cons!17787 (h!18918 (_ BitVec 64)) (t!25098 List!17791)) )
))
(declare-fun arrayNoDuplicates!0 (array!51904 (_ BitVec 32) List!17791) Bool)

(assert (=> b!889513 (= lt!402026 (arrayNoDuplicates!0 (_keys!9887 thiss!1181) #b00000000000000000000000000000000 Nil!17788))))

(declare-fun e!495905 () Bool)

(declare-fun array_inv!19598 (array!51904) Bool)

(declare-fun array_inv!19599 (array!51906) Bool)

(assert (=> b!889514 (= e!495909 (and tp!54892 tp_is_empty!17969 (array_inv!19598 (_keys!9887 thiss!1181)) (array_inv!19599 (_values!5193 thiss!1181)) e!495905))))

(declare-fun b!889515 () Bool)

(declare-fun e!495906 () Bool)

(declare-fun mapRes!28508 () Bool)

(assert (=> b!889515 (= e!495905 (and e!495906 mapRes!28508))))

(declare-fun condMapEmpty!28508 () Bool)

(declare-fun mapDefault!28508 () ValueCell!8503)

