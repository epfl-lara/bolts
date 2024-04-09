; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75712 () Bool)

(assert start!75712)

(declare-fun b!889700 () Bool)

(declare-fun b_free!15655 () Bool)

(declare-fun b_next!15655 () Bool)

(assert (=> b!889700 (= b_free!15655 (not b_next!15655))))

(declare-fun tp!54934 () Bool)

(declare-fun b_and!25913 () Bool)

(assert (=> b!889700 (= tp!54934 b_and!25913)))

(declare-fun b!889699 () Bool)

(declare-fun res!603024 () Bool)

(declare-fun e!496052 () Bool)

(assert (=> b!889699 (=> (not res!603024) (not e!496052))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!889699 (= res!603024 (not (= key!785 (bvneg key!785))))))

(declare-fun e!496056 () Bool)

(declare-fun e!496055 () Bool)

(declare-datatypes ((array!51932 0))(
  ( (array!51933 (arr!24968 (Array (_ BitVec 32) (_ BitVec 64))) (size!25413 (_ BitVec 32))) )
))
(declare-datatypes ((V!28943 0))(
  ( (V!28944 (val!9042 Int)) )
))
(declare-datatypes ((ValueCell!8510 0))(
  ( (ValueCellFull!8510 (v!11514 V!28943)) (EmptyCell!8510) )
))
(declare-datatypes ((array!51934 0))(
  ( (array!51935 (arr!24969 (Array (_ BitVec 32) ValueCell!8510)) (size!25414 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4036 0))(
  ( (LongMapFixedSize!4037 (defaultEntry!5215 Int) (mask!25667 (_ BitVec 32)) (extraKeys!4909 (_ BitVec 32)) (zeroValue!5013 V!28943) (minValue!5013 V!28943) (_size!2073 (_ BitVec 32)) (_keys!9894 array!51932) (_values!5200 array!51934) (_vacant!2073 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4036)

(declare-fun tp_is_empty!17983 () Bool)

(declare-fun array_inv!19608 (array!51932) Bool)

(declare-fun array_inv!19609 (array!51934) Bool)

(assert (=> b!889700 (= e!496056 (and tp!54934 tp_is_empty!17983 (array_inv!19608 (_keys!9894 thiss!1181)) (array_inv!19609 (_values!5200 thiss!1181)) e!496055))))

(declare-fun b!889701 () Bool)

(declare-fun res!603026 () Bool)

(declare-fun e!496054 () Bool)

(assert (=> b!889701 (=> (not res!603026) (not e!496054))))

(assert (=> b!889701 (= res!603026 (and (= (size!25414 (_values!5200 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25667 thiss!1181))) (= (size!25413 (_keys!9894 thiss!1181)) (size!25414 (_values!5200 thiss!1181))) (bvsge (mask!25667 thiss!1181) #b00000000000000000000000000000000) (bvsge (extraKeys!4909 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!4909 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!889702 () Bool)

(declare-fun e!496053 () Bool)

(assert (=> b!889702 (= e!496053 tp_is_empty!17983)))

(declare-fun b!889703 () Bool)

(declare-fun e!496057 () Bool)

(assert (=> b!889703 (= e!496057 tp_is_empty!17983)))

(declare-fun b!889704 () Bool)

(declare-fun res!603025 () Bool)

(assert (=> b!889704 (=> (not res!603025) (not e!496054))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51932 (_ BitVec 32)) Bool)

(assert (=> b!889704 (= res!603025 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9894 thiss!1181) (mask!25667 thiss!1181)))))

(declare-fun b!889705 () Bool)

(assert (=> b!889705 (= e!496052 e!496054)))

(declare-fun res!603023 () Bool)

(assert (=> b!889705 (=> (not res!603023) (not e!496054))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!889705 (= res!603023 (validMask!0 (mask!25667 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8773 0))(
  ( (MissingZero!8773 (index!37462 (_ BitVec 32))) (Found!8773 (index!37463 (_ BitVec 32))) (Intermediate!8773 (undefined!9585 Bool) (index!37464 (_ BitVec 32)) (x!75550 (_ BitVec 32))) (Undefined!8773) (MissingVacant!8773 (index!37465 (_ BitVec 32))) )
))
(declare-fun lt!402069 () SeekEntryResult!8773)

(declare-fun seekEntry!0 ((_ BitVec 64) array!51932 (_ BitVec 32)) SeekEntryResult!8773)

(assert (=> b!889705 (= lt!402069 (seekEntry!0 key!785 (_keys!9894 thiss!1181) (mask!25667 thiss!1181)))))

(declare-fun res!603027 () Bool)

(assert (=> start!75712 (=> (not res!603027) (not e!496052))))

(declare-fun valid!1559 (LongMapFixedSize!4036) Bool)

(assert (=> start!75712 (= res!603027 (valid!1559 thiss!1181))))

(assert (=> start!75712 e!496052))

(assert (=> start!75712 e!496056))

(assert (=> start!75712 true))

(declare-fun b!889706 () Bool)

(assert (=> b!889706 (= e!496054 false)))

(declare-fun lt!402068 () Bool)

(declare-datatypes ((List!17796 0))(
  ( (Nil!17793) (Cons!17792 (h!18923 (_ BitVec 64)) (t!25103 List!17796)) )
))
(declare-fun arrayNoDuplicates!0 (array!51932 (_ BitVec 32) List!17796) Bool)

(assert (=> b!889706 (= lt!402068 (arrayNoDuplicates!0 (_keys!9894 thiss!1181) #b00000000000000000000000000000000 Nil!17793))))

(declare-fun mapIsEmpty!28529 () Bool)

(declare-fun mapRes!28529 () Bool)

(assert (=> mapIsEmpty!28529 mapRes!28529))

(declare-fun mapNonEmpty!28529 () Bool)

(declare-fun tp!54935 () Bool)

(assert (=> mapNonEmpty!28529 (= mapRes!28529 (and tp!54935 e!496053))))

(declare-fun mapKey!28529 () (_ BitVec 32))

(declare-fun mapValue!28529 () ValueCell!8510)

(declare-fun mapRest!28529 () (Array (_ BitVec 32) ValueCell!8510))

(assert (=> mapNonEmpty!28529 (= (arr!24969 (_values!5200 thiss!1181)) (store mapRest!28529 mapKey!28529 mapValue!28529))))

(declare-fun b!889707 () Bool)

(assert (=> b!889707 (= e!496055 (and e!496057 mapRes!28529))))

(declare-fun condMapEmpty!28529 () Bool)

(declare-fun mapDefault!28529 () ValueCell!8510)

