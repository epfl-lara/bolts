; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89426 () Bool)

(assert start!89426)

(declare-fun b!1024748 () Bool)

(declare-fun b_free!20389 () Bool)

(declare-fun b_next!20389 () Bool)

(assert (=> b!1024748 (= b_free!20389 (not b_next!20389))))

(declare-fun tp!72214 () Bool)

(declare-fun b_and!32653 () Bool)

(assert (=> b!1024748 (= tp!72214 b_and!32653)))

(declare-fun b!1024738 () Bool)

(declare-fun e!577735 () Bool)

(declare-fun e!577736 () Bool)

(assert (=> b!1024738 (= e!577735 (not e!577736))))

(declare-fun res!686180 () Bool)

(assert (=> b!1024738 (=> res!686180 e!577736)))

(declare-datatypes ((V!37019 0))(
  ( (V!37020 (val!12105 Int)) )
))
(declare-datatypes ((ValueCell!11351 0))(
  ( (ValueCellFull!11351 (v!14675 V!37019)) (EmptyCell!11351) )
))
(declare-datatypes ((array!64252 0))(
  ( (array!64253 (arr!30931 (Array (_ BitVec 32) (_ BitVec 64))) (size!31445 (_ BitVec 32))) )
))
(declare-datatypes ((array!64254 0))(
  ( (array!64255 (arr!30932 (Array (_ BitVec 32) ValueCell!11351)) (size!31446 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5296 0))(
  ( (LongMapFixedSize!5297 (defaultEntry!6000 Int) (mask!29653 (_ BitVec 32)) (extraKeys!5732 (_ BitVec 32)) (zeroValue!5836 V!37019) (minValue!5836 V!37019) (_size!2703 (_ BitVec 32)) (_keys!11144 array!64252) (_values!6023 array!64254) (_vacant!2703 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5296)

(assert (=> b!1024738 (= res!686180 (or (bvsge (size!31445 (_keys!11144 thiss!1427)) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!31445 (_keys!11144 thiss!1427)))))))

(declare-datatypes ((SeekEntryResult!9592 0))(
  ( (MissingZero!9592 (index!40738 (_ BitVec 32))) (Found!9592 (index!40739 (_ BitVec 32))) (Intermediate!9592 (undefined!10404 Bool) (index!40740 (_ BitVec 32)) (x!91105 (_ BitVec 32))) (Undefined!9592) (MissingVacant!9592 (index!40741 (_ BitVec 32))) )
))
(declare-fun lt!450690 () SeekEntryResult!9592)

(declare-fun arrayCountValidKeys!0 (array!64252 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1024738 (= (arrayCountValidKeys!0 (array!64253 (store (arr!30931 (_keys!11144 thiss!1427)) (index!40739 lt!450690) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31445 (_keys!11144 thiss!1427))) #b00000000000000000000000000000000 (size!31445 (_keys!11144 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11144 thiss!1427) #b00000000000000000000000000000000 (size!31445 (_keys!11144 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33330 0))(
  ( (Unit!33331) )
))
(declare-fun lt!450691 () Unit!33330)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64252 (_ BitVec 32) (_ BitVec 64)) Unit!33330)

(assert (=> b!1024738 (= lt!450691 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11144 thiss!1427) (index!40739 lt!450690) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!686179 () Bool)

(declare-fun e!577734 () Bool)

(assert (=> start!89426 (=> (not res!686179) (not e!577734))))

(declare-fun valid!1967 (LongMapFixedSize!5296) Bool)

(assert (=> start!89426 (= res!686179 (valid!1967 thiss!1427))))

(assert (=> start!89426 e!577734))

(declare-fun e!577733 () Bool)

(assert (=> start!89426 e!577733))

(assert (=> start!89426 true))

(declare-fun mapNonEmpty!37592 () Bool)

(declare-fun mapRes!37592 () Bool)

(declare-fun tp!72213 () Bool)

(declare-fun e!577729 () Bool)

(assert (=> mapNonEmpty!37592 (= mapRes!37592 (and tp!72213 e!577729))))

(declare-fun mapRest!37592 () (Array (_ BitVec 32) ValueCell!11351))

(declare-fun mapValue!37592 () ValueCell!11351)

(declare-fun mapKey!37592 () (_ BitVec 32))

(assert (=> mapNonEmpty!37592 (= (arr!30932 (_values!6023 thiss!1427)) (store mapRest!37592 mapKey!37592 mapValue!37592))))

(declare-fun b!1024739 () Bool)

(declare-fun res!686177 () Bool)

(assert (=> b!1024739 (=> res!686177 e!577736)))

(declare-datatypes ((List!21842 0))(
  ( (Nil!21839) (Cons!21838 (h!23036 (_ BitVec 64)) (t!30911 List!21842)) )
))
(declare-fun contains!5970 (List!21842 (_ BitVec 64)) Bool)

(assert (=> b!1024739 (= res!686177 (contains!5970 Nil!21839 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024740 () Bool)

(assert (=> b!1024740 (= e!577736 true)))

(declare-fun lt!450689 () Bool)

(declare-fun arrayNoDuplicates!0 (array!64252 (_ BitVec 32) List!21842) Bool)

(assert (=> b!1024740 (= lt!450689 (arrayNoDuplicates!0 (_keys!11144 thiss!1427) #b00000000000000000000000000000000 Nil!21839))))

(declare-fun b!1024741 () Bool)

(declare-fun res!686181 () Bool)

(assert (=> b!1024741 (=> res!686181 e!577736)))

(assert (=> b!1024741 (= res!686181 (contains!5970 Nil!21839 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024742 () Bool)

(declare-fun res!686178 () Bool)

(assert (=> b!1024742 (=> res!686178 e!577736)))

(declare-fun noDuplicate!1480 (List!21842) Bool)

(assert (=> b!1024742 (= res!686178 (not (noDuplicate!1480 Nil!21839)))))

(declare-fun mapIsEmpty!37592 () Bool)

(assert (=> mapIsEmpty!37592 mapRes!37592))

(declare-fun b!1024743 () Bool)

(declare-fun e!577730 () Bool)

(declare-fun e!577732 () Bool)

(assert (=> b!1024743 (= e!577730 (and e!577732 mapRes!37592))))

(declare-fun condMapEmpty!37592 () Bool)

(declare-fun mapDefault!37592 () ValueCell!11351)

