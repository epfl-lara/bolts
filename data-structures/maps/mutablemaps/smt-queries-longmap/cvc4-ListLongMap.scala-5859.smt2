; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75716 () Bool)

(assert start!75716)

(declare-fun b!889760 () Bool)

(declare-fun b_free!15659 () Bool)

(declare-fun b_next!15659 () Bool)

(assert (=> b!889760 (= b_free!15659 (not b_next!15659))))

(declare-fun tp!54946 () Bool)

(declare-fun b_and!25917 () Bool)

(assert (=> b!889760 (= tp!54946 b_and!25917)))

(declare-fun b!889753 () Bool)

(declare-fun e!496100 () Bool)

(declare-fun tp_is_empty!17987 () Bool)

(assert (=> b!889753 (= e!496100 tp_is_empty!17987)))

(declare-fun b!889754 () Bool)

(declare-fun res!603055 () Bool)

(declare-fun e!496096 () Bool)

(assert (=> b!889754 (=> (not res!603055) (not e!496096))))

(declare-datatypes ((array!51940 0))(
  ( (array!51941 (arr!24972 (Array (_ BitVec 32) (_ BitVec 64))) (size!25417 (_ BitVec 32))) )
))
(declare-datatypes ((V!28947 0))(
  ( (V!28948 (val!9044 Int)) )
))
(declare-datatypes ((ValueCell!8512 0))(
  ( (ValueCellFull!8512 (v!11516 V!28947)) (EmptyCell!8512) )
))
(declare-datatypes ((array!51942 0))(
  ( (array!51943 (arr!24973 (Array (_ BitVec 32) ValueCell!8512)) (size!25418 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4040 0))(
  ( (LongMapFixedSize!4041 (defaultEntry!5217 Int) (mask!25669 (_ BitVec 32)) (extraKeys!4911 (_ BitVec 32)) (zeroValue!5015 V!28947) (minValue!5015 V!28947) (_size!2075 (_ BitVec 32)) (_keys!9896 array!51940) (_values!5202 array!51942) (_vacant!2075 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4040)

(assert (=> b!889754 (= res!603055 (and (= (size!25418 (_values!5202 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25669 thiss!1181))) (= (size!25417 (_keys!9896 thiss!1181)) (size!25418 (_values!5202 thiss!1181))) (bvsge (mask!25669 thiss!1181) #b00000000000000000000000000000000) (bvsge (extraKeys!4911 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!4911 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!889755 () Bool)

(declare-fun e!496095 () Bool)

(assert (=> b!889755 (= e!496095 e!496096)))

(declare-fun res!603056 () Bool)

(assert (=> b!889755 (=> (not res!603056) (not e!496096))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!889755 (= res!603056 (validMask!0 (mask!25669 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8775 0))(
  ( (MissingZero!8775 (index!37470 (_ BitVec 32))) (Found!8775 (index!37471 (_ BitVec 32))) (Intermediate!8775 (undefined!9587 Bool) (index!37472 (_ BitVec 32)) (x!75552 (_ BitVec 32))) (Undefined!8775) (MissingVacant!8775 (index!37473 (_ BitVec 32))) )
))
(declare-fun lt!402080 () SeekEntryResult!8775)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!51940 (_ BitVec 32)) SeekEntryResult!8775)

(assert (=> b!889755 (= lt!402080 (seekEntry!0 key!785 (_keys!9896 thiss!1181) (mask!25669 thiss!1181)))))

(declare-fun b!889757 () Bool)

(declare-fun e!496094 () Bool)

(declare-fun e!496097 () Bool)

(declare-fun mapRes!28535 () Bool)

(assert (=> b!889757 (= e!496094 (and e!496097 mapRes!28535))))

(declare-fun condMapEmpty!28535 () Bool)

(declare-fun mapDefault!28535 () ValueCell!8512)

