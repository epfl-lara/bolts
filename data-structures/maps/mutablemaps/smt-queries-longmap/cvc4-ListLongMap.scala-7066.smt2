; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89490 () Bool)

(assert start!89490)

(declare-fun b!1025797 () Bool)

(declare-fun b_free!20453 () Bool)

(declare-fun b_next!20453 () Bool)

(assert (=> b!1025797 (= b_free!20453 (not b_next!20453))))

(declare-fun tp!72406 () Bool)

(declare-fun b_and!32717 () Bool)

(assert (=> b!1025797 (= tp!72406 b_and!32717)))

(declare-fun b!1025794 () Bool)

(declare-fun e!578497 () Bool)

(declare-fun tp_is_empty!24173 () Bool)

(assert (=> b!1025794 (= e!578497 tp_is_empty!24173)))

(declare-fun b!1025795 () Bool)

(declare-fun res!686851 () Bool)

(declare-fun e!578502 () Bool)

(assert (=> b!1025795 (=> (not res!686851) (not e!578502))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1025795 (= res!686851 (not (= key!909 (bvneg key!909))))))

(declare-fun e!578498 () Bool)

(declare-datatypes ((V!37103 0))(
  ( (V!37104 (val!12137 Int)) )
))
(declare-datatypes ((ValueCell!11383 0))(
  ( (ValueCellFull!11383 (v!14707 V!37103)) (EmptyCell!11383) )
))
(declare-datatypes ((array!64380 0))(
  ( (array!64381 (arr!30995 (Array (_ BitVec 32) (_ BitVec 64))) (size!31509 (_ BitVec 32))) )
))
(declare-datatypes ((array!64382 0))(
  ( (array!64383 (arr!30996 (Array (_ BitVec 32) ValueCell!11383)) (size!31510 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5360 0))(
  ( (LongMapFixedSize!5361 (defaultEntry!6032 Int) (mask!29705 (_ BitVec 32)) (extraKeys!5764 (_ BitVec 32)) (zeroValue!5868 V!37103) (minValue!5868 V!37103) (_size!2735 (_ BitVec 32)) (_keys!11176 array!64380) (_values!6055 array!64382) (_vacant!2735 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5360)

(declare-fun e!578503 () Bool)

(declare-fun array_inv!23859 (array!64380) Bool)

(declare-fun array_inv!23860 (array!64382) Bool)

(assert (=> b!1025797 (= e!578503 (and tp!72406 tp_is_empty!24173 (array_inv!23859 (_keys!11176 thiss!1427)) (array_inv!23860 (_values!6055 thiss!1427)) e!578498))))

(declare-fun b!1025798 () Bool)

(declare-fun e!578499 () Bool)

(assert (=> b!1025798 (= e!578499 tp_is_empty!24173)))

(declare-fun b!1025799 () Bool)

(declare-fun e!578504 () Bool)

(declare-fun e!578501 () Bool)

(assert (=> b!1025799 (= e!578504 (not e!578501))))

(declare-fun res!686847 () Bool)

(assert (=> b!1025799 (=> res!686847 e!578501)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1025799 (= res!686847 (not (validMask!0 (mask!29705 thiss!1427))))))

(declare-fun lt!451103 () array!64380)

(declare-datatypes ((List!21869 0))(
  ( (Nil!21866) (Cons!21865 (h!23063 (_ BitVec 64)) (t!30938 List!21869)) )
))
(declare-fun arrayNoDuplicates!0 (array!64380 (_ BitVec 32) List!21869) Bool)

(assert (=> b!1025799 (arrayNoDuplicates!0 lt!451103 #b00000000000000000000000000000000 Nil!21866)))

(declare-datatypes ((Unit!33372 0))(
  ( (Unit!33373) )
))
(declare-fun lt!451105 () Unit!33372)

(declare-datatypes ((SeekEntryResult!9617 0))(
  ( (MissingZero!9617 (index!40838 (_ BitVec 32))) (Found!9617 (index!40839 (_ BitVec 32))) (Intermediate!9617 (undefined!10429 Bool) (index!40840 (_ BitVec 32)) (x!91210 (_ BitVec 32))) (Undefined!9617) (MissingVacant!9617 (index!40841 (_ BitVec 32))) )
))
(declare-fun lt!451104 () SeekEntryResult!9617)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64380 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21869) Unit!33372)

(assert (=> b!1025799 (= lt!451105 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11176 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40839 lt!451104) #b00000000000000000000000000000000 Nil!21866))))

(declare-fun arrayCountValidKeys!0 (array!64380 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1025799 (= (arrayCountValidKeys!0 lt!451103 #b00000000000000000000000000000000 (size!31509 (_keys!11176 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11176 thiss!1427) #b00000000000000000000000000000000 (size!31509 (_keys!11176 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1025799 (= lt!451103 (array!64381 (store (arr!30995 (_keys!11176 thiss!1427)) (index!40839 lt!451104) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31509 (_keys!11176 thiss!1427))))))

(declare-fun lt!451101 () Unit!33372)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64380 (_ BitVec 32) (_ BitVec 64)) Unit!33372)

(assert (=> b!1025799 (= lt!451101 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11176 thiss!1427) (index!40839 lt!451104) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!37688 () Bool)

(declare-fun mapRes!37688 () Bool)

(assert (=> mapIsEmpty!37688 mapRes!37688))

(declare-fun b!1025800 () Bool)

(assert (=> b!1025800 (= e!578498 (and e!578499 mapRes!37688))))

(declare-fun condMapEmpty!37688 () Bool)

(declare-fun mapDefault!37688 () ValueCell!11383)

