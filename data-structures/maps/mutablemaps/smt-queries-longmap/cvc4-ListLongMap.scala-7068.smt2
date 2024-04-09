; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89502 () Bool)

(assert start!89502)

(declare-fun b!1025945 () Bool)

(declare-fun b_free!20465 () Bool)

(declare-fun b_next!20465 () Bool)

(assert (=> b!1025945 (= b_free!20465 (not b_next!20465))))

(declare-fun tp!72441 () Bool)

(declare-fun b_and!32729 () Bool)

(assert (=> b!1025945 (= tp!72441 b_and!32729)))

(declare-fun b!1025941 () Bool)

(declare-fun e!578648 () Bool)

(assert (=> b!1025941 (= e!578648 true)))

(declare-fun lt!451209 () Bool)

(declare-datatypes ((V!37119 0))(
  ( (V!37120 (val!12143 Int)) )
))
(declare-datatypes ((ValueCell!11389 0))(
  ( (ValueCellFull!11389 (v!14713 V!37119)) (EmptyCell!11389) )
))
(declare-datatypes ((array!64404 0))(
  ( (array!64405 (arr!31007 (Array (_ BitVec 32) (_ BitVec 64))) (size!31521 (_ BitVec 32))) )
))
(declare-datatypes ((array!64406 0))(
  ( (array!64407 (arr!31008 (Array (_ BitVec 32) ValueCell!11389)) (size!31522 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5372 0))(
  ( (LongMapFixedSize!5373 (defaultEntry!6038 Int) (mask!29715 (_ BitVec 32)) (extraKeys!5770 (_ BitVec 32)) (zeroValue!5874 V!37119) (minValue!5874 V!37119) (_size!2741 (_ BitVec 32)) (_keys!11182 array!64404) (_values!6061 array!64406) (_vacant!2741 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5372)

(declare-datatypes ((List!21874 0))(
  ( (Nil!21871) (Cons!21870 (h!23068 (_ BitVec 64)) (t!30943 List!21874)) )
))
(declare-fun arrayNoDuplicates!0 (array!64404 (_ BitVec 32) List!21874) Bool)

(assert (=> b!1025941 (= lt!451209 (arrayNoDuplicates!0 (_keys!11182 thiss!1427) #b00000000000000000000000000000000 Nil!21871))))

(declare-fun b!1025942 () Bool)

(declare-fun e!578646 () Bool)

(declare-fun e!578642 () Bool)

(assert (=> b!1025942 (= e!578646 e!578642)))

(declare-fun res!686923 () Bool)

(assert (=> b!1025942 (=> (not res!686923) (not e!578642))))

(declare-datatypes ((SeekEntryResult!9621 0))(
  ( (MissingZero!9621 (index!40854 (_ BitVec 32))) (Found!9621 (index!40855 (_ BitVec 32))) (Intermediate!9621 (undefined!10433 Bool) (index!40856 (_ BitVec 32)) (x!91230 (_ BitVec 32))) (Undefined!9621) (MissingVacant!9621 (index!40857 (_ BitVec 32))) )
))
(declare-fun lt!451212 () SeekEntryResult!9621)

(assert (=> b!1025942 (= res!686923 (is-Found!9621 lt!451212))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64404 (_ BitVec 32)) SeekEntryResult!9621)

(assert (=> b!1025942 (= lt!451212 (seekEntry!0 key!909 (_keys!11182 thiss!1427) (mask!29715 thiss!1427)))))

(declare-fun b!1025943 () Bool)

(declare-fun e!578645 () Bool)

(declare-fun tp_is_empty!24185 () Bool)

(assert (=> b!1025943 (= e!578645 tp_is_empty!24185)))

(declare-fun b!1025944 () Bool)

(assert (=> b!1025944 (= e!578642 (not e!578648))))

(declare-fun res!686922 () Bool)

(assert (=> b!1025944 (=> res!686922 e!578648)))

(assert (=> b!1025944 (= res!686922 (or (bvslt (index!40855 lt!451212) #b00000000000000000000000000000000) (bvsge (index!40855 lt!451212) (size!31521 (_keys!11182 thiss!1427))) (bvsge (size!31521 (_keys!11182 thiss!1427)) #b01111111111111111111111111111111)))))

(declare-fun lt!451210 () array!64404)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64404 (_ BitVec 32)) Bool)

(assert (=> b!1025944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!451210 (mask!29715 thiss!1427))))

(declare-datatypes ((Unit!33380 0))(
  ( (Unit!33381) )
))
(declare-fun lt!451211 () Unit!33380)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64404 (_ BitVec 32) (_ BitVec 32)) Unit!33380)

(assert (=> b!1025944 (= lt!451211 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11182 thiss!1427) (index!40855 lt!451212) (mask!29715 thiss!1427)))))

(assert (=> b!1025944 (arrayNoDuplicates!0 lt!451210 #b00000000000000000000000000000000 Nil!21871)))

(declare-fun lt!451208 () Unit!33380)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64404 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21874) Unit!33380)

(assert (=> b!1025944 (= lt!451208 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11182 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40855 lt!451212) #b00000000000000000000000000000000 Nil!21871))))

(declare-fun arrayCountValidKeys!0 (array!64404 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1025944 (= (arrayCountValidKeys!0 lt!451210 #b00000000000000000000000000000000 (size!31521 (_keys!11182 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11182 thiss!1427) #b00000000000000000000000000000000 (size!31521 (_keys!11182 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1025944 (= lt!451210 (array!64405 (store (arr!31007 (_keys!11182 thiss!1427)) (index!40855 lt!451212) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31521 (_keys!11182 thiss!1427))))))

(declare-fun lt!451213 () Unit!33380)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64404 (_ BitVec 32) (_ BitVec 64)) Unit!33380)

(assert (=> b!1025944 (= lt!451213 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11182 thiss!1427) (index!40855 lt!451212) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!686925 () Bool)

(assert (=> start!89502 (=> (not res!686925) (not e!578646))))

(declare-fun valid!1992 (LongMapFixedSize!5372) Bool)

(assert (=> start!89502 (= res!686925 (valid!1992 thiss!1427))))

(assert (=> start!89502 e!578646))

(declare-fun e!578641 () Bool)

(assert (=> start!89502 e!578641))

(assert (=> start!89502 true))

(declare-fun mapIsEmpty!37706 () Bool)

(declare-fun mapRes!37706 () Bool)

(assert (=> mapIsEmpty!37706 mapRes!37706))

(declare-fun e!578643 () Bool)

(declare-fun array_inv!23867 (array!64404) Bool)

(declare-fun array_inv!23868 (array!64406) Bool)

(assert (=> b!1025945 (= e!578641 (and tp!72441 tp_is_empty!24185 (array_inv!23867 (_keys!11182 thiss!1427)) (array_inv!23868 (_values!6061 thiss!1427)) e!578643))))

(declare-fun mapNonEmpty!37706 () Bool)

(declare-fun tp!72442 () Bool)

(declare-fun e!578644 () Bool)

(assert (=> mapNonEmpty!37706 (= mapRes!37706 (and tp!72442 e!578644))))

(declare-fun mapRest!37706 () (Array (_ BitVec 32) ValueCell!11389))

(declare-fun mapKey!37706 () (_ BitVec 32))

(declare-fun mapValue!37706 () ValueCell!11389)

(assert (=> mapNonEmpty!37706 (= (arr!31008 (_values!6061 thiss!1427)) (store mapRest!37706 mapKey!37706 mapValue!37706))))

(declare-fun b!1025946 () Bool)

(assert (=> b!1025946 (= e!578644 tp_is_empty!24185)))

(declare-fun b!1025947 () Bool)

(declare-fun res!686924 () Bool)

(assert (=> b!1025947 (=> (not res!686924) (not e!578646))))

(assert (=> b!1025947 (= res!686924 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1025948 () Bool)

(assert (=> b!1025948 (= e!578643 (and e!578645 mapRes!37706))))

(declare-fun condMapEmpty!37706 () Bool)

(declare-fun mapDefault!37706 () ValueCell!11389)

