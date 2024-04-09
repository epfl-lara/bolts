; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90882 () Bool)

(assert start!90882)

(declare-fun b!1038396 () Bool)

(declare-fun b_free!20945 () Bool)

(declare-fun b_next!20945 () Bool)

(assert (=> b!1038396 (= b_free!20945 (not b_next!20945))))

(declare-fun tp!73996 () Bool)

(declare-fun b_and!33495 () Bool)

(assert (=> b!1038396 (= tp!73996 b_and!33495)))

(declare-fun b!1038395 () Bool)

(declare-fun e!587598 () Bool)

(declare-fun tp_is_empty!24665 () Bool)

(assert (=> b!1038395 (= e!587598 tp_is_empty!24665)))

(declare-fun e!587593 () Bool)

(declare-fun e!587597 () Bool)

(declare-datatypes ((V!37759 0))(
  ( (V!37760 (val!12383 Int)) )
))
(declare-datatypes ((ValueCell!11629 0))(
  ( (ValueCellFull!11629 (v!14970 V!37759)) (EmptyCell!11629) )
))
(declare-datatypes ((array!65428 0))(
  ( (array!65429 (arr!31487 (Array (_ BitVec 32) (_ BitVec 64))) (size!32018 (_ BitVec 32))) )
))
(declare-datatypes ((array!65430 0))(
  ( (array!65431 (arr!31488 (Array (_ BitVec 32) ValueCell!11629)) (size!32019 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5852 0))(
  ( (LongMapFixedSize!5853 (defaultEntry!6308 Int) (mask!30241 (_ BitVec 32)) (extraKeys!6036 (_ BitVec 32)) (zeroValue!6142 V!37759) (minValue!6142 V!37759) (_size!2981 (_ BitVec 32)) (_keys!11506 array!65428) (_values!6331 array!65430) (_vacant!2981 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5852)

(declare-fun array_inv!24185 (array!65428) Bool)

(declare-fun array_inv!24186 (array!65430) Bool)

(assert (=> b!1038396 (= e!587593 (and tp!73996 tp_is_empty!24665 (array_inv!24185 (_keys!11506 thiss!1427)) (array_inv!24186 (_values!6331 thiss!1427)) e!587597))))

(declare-fun res!692791 () Bool)

(declare-fun e!587596 () Bool)

(assert (=> start!90882 (=> (not res!692791) (not e!587596))))

(declare-fun valid!2155 (LongMapFixedSize!5852) Bool)

(assert (=> start!90882 (= res!692791 (valid!2155 thiss!1427))))

(assert (=> start!90882 e!587596))

(assert (=> start!90882 e!587593))

(assert (=> start!90882 true))

(declare-fun b!1038397 () Bool)

(declare-fun e!587594 () Bool)

(assert (=> b!1038397 (= e!587594 tp_is_empty!24665)))

(declare-fun mapNonEmpty!38541 () Bool)

(declare-fun mapRes!38541 () Bool)

(declare-fun tp!73997 () Bool)

(assert (=> mapNonEmpty!38541 (= mapRes!38541 (and tp!73997 e!587598))))

(declare-fun mapKey!38541 () (_ BitVec 32))

(declare-fun mapValue!38541 () ValueCell!11629)

(declare-fun mapRest!38541 () (Array (_ BitVec 32) ValueCell!11629))

(assert (=> mapNonEmpty!38541 (= (arr!31488 (_values!6331 thiss!1427)) (store mapRest!38541 mapKey!38541 mapValue!38541))))

(declare-fun b!1038398 () Bool)

(declare-fun e!587592 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1038398 (= e!587592 (not (validMask!0 (mask!30241 thiss!1427))))))

(declare-fun lt!457723 () array!65428)

(declare-datatypes ((List!22059 0))(
  ( (Nil!22056) (Cons!22055 (h!23258 (_ BitVec 64)) (t!31280 List!22059)) )
))
(declare-fun arrayNoDuplicates!0 (array!65428 (_ BitVec 32) List!22059) Bool)

(assert (=> b!1038398 (arrayNoDuplicates!0 lt!457723 #b00000000000000000000000000000000 Nil!22056)))

(declare-datatypes ((Unit!33968 0))(
  ( (Unit!33969) )
))
(declare-fun lt!457724 () Unit!33968)

(declare-datatypes ((SeekEntryResult!9769 0))(
  ( (MissingZero!9769 (index!41446 (_ BitVec 32))) (Found!9769 (index!41447 (_ BitVec 32))) (Intermediate!9769 (undefined!10581 Bool) (index!41448 (_ BitVec 32)) (x!92651 (_ BitVec 32))) (Undefined!9769) (MissingVacant!9769 (index!41449 (_ BitVec 32))) )
))
(declare-fun lt!457721 () SeekEntryResult!9769)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65428 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22059) Unit!33968)

(assert (=> b!1038398 (= lt!457724 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11506 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41447 lt!457721) #b00000000000000000000000000000000 Nil!22056))))

(declare-fun arrayCountValidKeys!0 (array!65428 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1038398 (= (arrayCountValidKeys!0 lt!457723 #b00000000000000000000000000000000 (size!32018 (_keys!11506 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11506 thiss!1427) #b00000000000000000000000000000000 (size!32018 (_keys!11506 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1038398 (= lt!457723 (array!65429 (store (arr!31487 (_keys!11506 thiss!1427)) (index!41447 lt!457721) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32018 (_keys!11506 thiss!1427))))))

(declare-fun lt!457722 () Unit!33968)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65428 (_ BitVec 32) (_ BitVec 64)) Unit!33968)

(assert (=> b!1038398 (= lt!457722 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11506 thiss!1427) (index!41447 lt!457721) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1038399 () Bool)

(assert (=> b!1038399 (= e!587597 (and e!587594 mapRes!38541))))

(declare-fun condMapEmpty!38541 () Bool)

(declare-fun mapDefault!38541 () ValueCell!11629)

