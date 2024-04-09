; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90846 () Bool)

(assert start!90846)

(declare-fun b!1038030 () Bool)

(declare-fun b_free!20927 () Bool)

(declare-fun b_next!20927 () Bool)

(assert (=> b!1038030 (= b_free!20927 (not b_next!20927))))

(declare-fun tp!73940 () Bool)

(declare-fun b_and!33477 () Bool)

(assert (=> b!1038030 (= tp!73940 b_and!33477)))

(declare-fun b!1038020 () Bool)

(declare-fun res!692573 () Bool)

(declare-fun e!587327 () Bool)

(assert (=> b!1038020 (=> res!692573 e!587327)))

(declare-datatypes ((List!22050 0))(
  ( (Nil!22047) (Cons!22046 (h!23249 (_ BitVec 64)) (t!31271 List!22050)) )
))
(declare-fun contains!6055 (List!22050 (_ BitVec 64)) Bool)

(assert (=> b!1038020 (= res!692573 (contains!6055 Nil!22047 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1038021 () Bool)

(declare-fun e!587329 () Bool)

(assert (=> b!1038021 (= e!587329 (not e!587327))))

(declare-fun res!692576 () Bool)

(assert (=> b!1038021 (=> res!692576 e!587327)))

(declare-datatypes ((V!37735 0))(
  ( (V!37736 (val!12374 Int)) )
))
(declare-datatypes ((ValueCell!11620 0))(
  ( (ValueCellFull!11620 (v!14960 V!37735)) (EmptyCell!11620) )
))
(declare-datatypes ((array!65390 0))(
  ( (array!65391 (arr!31469 (Array (_ BitVec 32) (_ BitVec 64))) (size!32000 (_ BitVec 32))) )
))
(declare-datatypes ((array!65392 0))(
  ( (array!65393 (arr!31470 (Array (_ BitVec 32) ValueCell!11620)) (size!32001 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5834 0))(
  ( (LongMapFixedSize!5835 (defaultEntry!6299 Int) (mask!30225 (_ BitVec 32)) (extraKeys!6027 (_ BitVec 32)) (zeroValue!6133 V!37735) (minValue!6133 V!37735) (_size!2972 (_ BitVec 32)) (_keys!11496 array!65390) (_values!6322 array!65392) (_vacant!2972 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5834)

(assert (=> b!1038021 (= res!692576 (or (bvsge (size!32000 (_keys!11496 thiss!1427)) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!32000 (_keys!11496 thiss!1427)))))))

(declare-datatypes ((SeekEntryResult!9760 0))(
  ( (MissingZero!9760 (index!41410 (_ BitVec 32))) (Found!9760 (index!41411 (_ BitVec 32))) (Intermediate!9760 (undefined!10572 Bool) (index!41412 (_ BitVec 32)) (x!92610 (_ BitVec 32))) (Undefined!9760) (MissingVacant!9760 (index!41413 (_ BitVec 32))) )
))
(declare-fun lt!457628 () SeekEntryResult!9760)

(declare-fun arrayCountValidKeys!0 (array!65390 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1038021 (= (arrayCountValidKeys!0 (array!65391 (store (arr!31469 (_keys!11496 thiss!1427)) (index!41411 lt!457628) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32000 (_keys!11496 thiss!1427))) #b00000000000000000000000000000000 (size!32000 (_keys!11496 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11496 thiss!1427) #b00000000000000000000000000000000 (size!32000 (_keys!11496 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33952 0))(
  ( (Unit!33953) )
))
(declare-fun lt!457629 () Unit!33952)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65390 (_ BitVec 32) (_ BitVec 64)) Unit!33952)

(assert (=> b!1038021 (= lt!457629 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11496 thiss!1427) (index!41411 lt!457628) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1038022 () Bool)

(declare-fun res!692570 () Bool)

(declare-fun e!587330 () Bool)

(assert (=> b!1038022 (=> (not res!692570) (not e!587330))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1038022 (= res!692570 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1038023 () Bool)

(assert (=> b!1038023 (= e!587327 true)))

(declare-fun lt!457627 () Bool)

(declare-fun arrayNoDuplicates!0 (array!65390 (_ BitVec 32) List!22050) Bool)

(assert (=> b!1038023 (= lt!457627 (arrayNoDuplicates!0 (_keys!11496 thiss!1427) #b00000000000000000000000000000000 Nil!22047))))

(declare-fun mapNonEmpty!38511 () Bool)

(declare-fun mapRes!38511 () Bool)

(declare-fun tp!73939 () Bool)

(declare-fun e!587333 () Bool)

(assert (=> mapNonEmpty!38511 (= mapRes!38511 (and tp!73939 e!587333))))

(declare-fun mapValue!38511 () ValueCell!11620)

(declare-fun mapRest!38511 () (Array (_ BitVec 32) ValueCell!11620))

(declare-fun mapKey!38511 () (_ BitVec 32))

(assert (=> mapNonEmpty!38511 (= (arr!31470 (_values!6322 thiss!1427)) (store mapRest!38511 mapKey!38511 mapValue!38511))))

(declare-fun b!1038024 () Bool)

(declare-fun e!587331 () Bool)

(declare-fun tp_is_empty!24647 () Bool)

(assert (=> b!1038024 (= e!587331 tp_is_empty!24647)))

(declare-fun b!1038025 () Bool)

(declare-fun res!692575 () Bool)

(assert (=> b!1038025 (=> res!692575 e!587327)))

(declare-fun noDuplicate!1498 (List!22050) Bool)

(assert (=> b!1038025 (= res!692575 (not (noDuplicate!1498 Nil!22047)))))

(declare-fun b!1038026 () Bool)

(declare-fun res!692572 () Bool)

(assert (=> b!1038026 (=> res!692572 e!587327)))

(assert (=> b!1038026 (= res!692572 (contains!6055 Nil!22047 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1038027 () Bool)

(assert (=> b!1038027 (= e!587330 e!587329)))

(declare-fun res!692574 () Bool)

(assert (=> b!1038027 (=> (not res!692574) (not e!587329))))

(assert (=> b!1038027 (= res!692574 (is-Found!9760 lt!457628))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65390 (_ BitVec 32)) SeekEntryResult!9760)

(assert (=> b!1038027 (= lt!457628 (seekEntry!0 key!909 (_keys!11496 thiss!1427) (mask!30225 thiss!1427)))))

(declare-fun b!1038028 () Bool)

(assert (=> b!1038028 (= e!587333 tp_is_empty!24647)))

(declare-fun b!1038029 () Bool)

(declare-fun e!587332 () Bool)

(assert (=> b!1038029 (= e!587332 (and e!587331 mapRes!38511))))

(declare-fun condMapEmpty!38511 () Bool)

(declare-fun mapDefault!38511 () ValueCell!11620)

