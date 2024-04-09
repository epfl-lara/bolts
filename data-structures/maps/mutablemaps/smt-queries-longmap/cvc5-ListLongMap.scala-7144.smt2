; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90818 () Bool)

(assert start!90818)

(declare-fun b!1037764 () Bool)

(declare-fun b_free!20917 () Bool)

(declare-fun b_next!20917 () Bool)

(assert (=> b!1037764 (= b_free!20917 (not b_next!20917))))

(declare-fun tp!73906 () Bool)

(declare-fun b_and!33467 () Bool)

(assert (=> b!1037764 (= tp!73906 b_and!33467)))

(declare-fun b!1037763 () Bool)

(declare-fun res!692426 () Bool)

(declare-fun e!587154 () Bool)

(assert (=> b!1037763 (=> (not res!692426) (not e!587154))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1037763 (= res!692426 (not (= key!909 (bvneg key!909))))))

(declare-fun tp_is_empty!24637 () Bool)

(declare-fun e!587153 () Bool)

(declare-fun e!587150 () Bool)

(declare-datatypes ((V!37723 0))(
  ( (V!37724 (val!12369 Int)) )
))
(declare-datatypes ((ValueCell!11615 0))(
  ( (ValueCellFull!11615 (v!14954 V!37723)) (EmptyCell!11615) )
))
(declare-datatypes ((array!65368 0))(
  ( (array!65369 (arr!31459 (Array (_ BitVec 32) (_ BitVec 64))) (size!31990 (_ BitVec 32))) )
))
(declare-datatypes ((array!65370 0))(
  ( (array!65371 (arr!31460 (Array (_ BitVec 32) ValueCell!11615)) (size!31991 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5824 0))(
  ( (LongMapFixedSize!5825 (defaultEntry!6294 Int) (mask!30217 (_ BitVec 32)) (extraKeys!6022 (_ BitVec 32)) (zeroValue!6128 V!37723) (minValue!6128 V!37723) (_size!2967 (_ BitVec 32)) (_keys!11490 array!65368) (_values!6317 array!65370) (_vacant!2967 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5824)

(declare-fun array_inv!24163 (array!65368) Bool)

(declare-fun array_inv!24164 (array!65370) Bool)

(assert (=> b!1037764 (= e!587153 (and tp!73906 tp_is_empty!24637 (array_inv!24163 (_keys!11490 thiss!1427)) (array_inv!24164 (_values!6317 thiss!1427)) e!587150))))

(declare-fun b!1037765 () Bool)

(declare-fun e!587148 () Bool)

(assert (=> b!1037765 (= e!587154 e!587148)))

(declare-fun res!692425 () Bool)

(assert (=> b!1037765 (=> (not res!692425) (not e!587148))))

(declare-datatypes ((SeekEntryResult!9756 0))(
  ( (MissingZero!9756 (index!41394 (_ BitVec 32))) (Found!9756 (index!41395 (_ BitVec 32))) (Intermediate!9756 (undefined!10568 Bool) (index!41396 (_ BitVec 32)) (x!92590 (_ BitVec 32))) (Undefined!9756) (MissingVacant!9756 (index!41397 (_ BitVec 32))) )
))
(declare-fun lt!457566 () SeekEntryResult!9756)

(assert (=> b!1037765 (= res!692425 (is-Found!9756 lt!457566))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65368 (_ BitVec 32)) SeekEntryResult!9756)

(assert (=> b!1037765 (= lt!457566 (seekEntry!0 key!909 (_keys!11490 thiss!1427) (mask!30217 thiss!1427)))))

(declare-fun b!1037766 () Bool)

(declare-fun res!692423 () Bool)

(declare-fun e!587155 () Bool)

(assert (=> b!1037766 (=> res!692423 e!587155)))

(declare-datatypes ((List!22045 0))(
  ( (Nil!22042) (Cons!22041 (h!23244 (_ BitVec 64)) (t!31266 List!22045)) )
))
(declare-fun contains!6050 (List!22045 (_ BitVec 64)) Bool)

(assert (=> b!1037766 (= res!692423 (contains!6050 Nil!22042 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1037767 () Bool)

(declare-fun res!692427 () Bool)

(assert (=> b!1037767 (=> res!692427 e!587155)))

(declare-fun noDuplicate!1494 (List!22045) Bool)

(assert (=> b!1037767 (= res!692427 (not (noDuplicate!1494 Nil!22042)))))

(declare-fun b!1037768 () Bool)

(assert (=> b!1037768 (= e!587148 (not e!587155))))

(declare-fun res!692421 () Bool)

(assert (=> b!1037768 (=> res!692421 e!587155)))

(assert (=> b!1037768 (= res!692421 (or (bvsge (size!31990 (_keys!11490 thiss!1427)) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!31990 (_keys!11490 thiss!1427)))))))

(declare-fun arrayCountValidKeys!0 (array!65368 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1037768 (= (arrayCountValidKeys!0 (array!65369 (store (arr!31459 (_keys!11490 thiss!1427)) (index!41395 lt!457566) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31990 (_keys!11490 thiss!1427))) #b00000000000000000000000000000000 (size!31990 (_keys!11490 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11490 thiss!1427) #b00000000000000000000000000000000 (size!31990 (_keys!11490 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33944 0))(
  ( (Unit!33945) )
))
(declare-fun lt!457567 () Unit!33944)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65368 (_ BitVec 32) (_ BitVec 64)) Unit!33944)

(assert (=> b!1037768 (= lt!457567 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11490 thiss!1427) (index!41395 lt!457566) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!38493 () Bool)

(declare-fun mapRes!38493 () Bool)

(declare-fun tp!73907 () Bool)

(declare-fun e!587152 () Bool)

(assert (=> mapNonEmpty!38493 (= mapRes!38493 (and tp!73907 e!587152))))

(declare-fun mapValue!38493 () ValueCell!11615)

(declare-fun mapRest!38493 () (Array (_ BitVec 32) ValueCell!11615))

(declare-fun mapKey!38493 () (_ BitVec 32))

(assert (=> mapNonEmpty!38493 (= (arr!31460 (_values!6317 thiss!1427)) (store mapRest!38493 mapKey!38493 mapValue!38493))))

(declare-fun b!1037769 () Bool)

(assert (=> b!1037769 (= e!587152 tp_is_empty!24637)))

(declare-fun b!1037770 () Bool)

(declare-fun arrayNoDuplicates!0 (array!65368 (_ BitVec 32) List!22045) Bool)

(assert (=> b!1037770 (= e!587155 (arrayNoDuplicates!0 (_keys!11490 thiss!1427) #b00000000000000000000000000000000 Nil!22042))))

(declare-fun mapIsEmpty!38493 () Bool)

(assert (=> mapIsEmpty!38493 mapRes!38493))

(declare-fun res!692422 () Bool)

(assert (=> start!90818 (=> (not res!692422) (not e!587154))))

(declare-fun valid!2147 (LongMapFixedSize!5824) Bool)

(assert (=> start!90818 (= res!692422 (valid!2147 thiss!1427))))

(assert (=> start!90818 e!587154))

(assert (=> start!90818 e!587153))

(assert (=> start!90818 true))

(declare-fun b!1037771 () Bool)

(declare-fun e!587149 () Bool)

(assert (=> b!1037771 (= e!587149 tp_is_empty!24637)))

(declare-fun b!1037772 () Bool)

(assert (=> b!1037772 (= e!587150 (and e!587149 mapRes!38493))))

(declare-fun condMapEmpty!38493 () Bool)

(declare-fun mapDefault!38493 () ValueCell!11615)

