; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90106 () Bool)

(assert start!90106)

(declare-fun b!1031641 () Bool)

(declare-fun b_free!20677 () Bool)

(declare-fun b_next!20677 () Bool)

(assert (=> b!1031641 (= b_free!20677 (not b_next!20677))))

(declare-fun tp!73102 () Bool)

(declare-fun b_and!33139 () Bool)

(assert (=> b!1031641 (= tp!73102 b_and!33139)))

(declare-fun b!1031640 () Bool)

(declare-fun e!582755 () Bool)

(declare-fun e!582753 () Bool)

(assert (=> b!1031640 (= e!582755 e!582753)))

(declare-fun res!689848 () Bool)

(assert (=> b!1031640 (=> (not res!689848) (not e!582753))))

(declare-datatypes ((SeekEntryResult!9705 0))(
  ( (MissingZero!9705 (index!41190 (_ BitVec 32))) (Found!9705 (index!41191 (_ BitVec 32))) (Intermediate!9705 (undefined!10517 Bool) (index!41192 (_ BitVec 32)) (x!91878 (_ BitVec 32))) (Undefined!9705) (MissingVacant!9705 (index!41193 (_ BitVec 32))) )
))
(declare-fun lt!455572 () SeekEntryResult!9705)

(assert (=> b!1031640 (= res!689848 (is-Found!9705 lt!455572))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!37403 0))(
  ( (V!37404 (val!12249 Int)) )
))
(declare-datatypes ((ValueCell!11495 0))(
  ( (ValueCellFull!11495 (v!14827 V!37403)) (EmptyCell!11495) )
))
(declare-datatypes ((array!64842 0))(
  ( (array!64843 (arr!31219 (Array (_ BitVec 32) (_ BitVec 64))) (size!31737 (_ BitVec 32))) )
))
(declare-datatypes ((array!64844 0))(
  ( (array!64845 (arr!31220 (Array (_ BitVec 32) ValueCell!11495)) (size!31738 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5584 0))(
  ( (LongMapFixedSize!5585 (defaultEntry!6166 Int) (mask!29963 (_ BitVec 32)) (extraKeys!5898 (_ BitVec 32)) (zeroValue!6002 V!37403) (minValue!6002 V!37403) (_size!2847 (_ BitVec 32)) (_keys!11336 array!64842) (_values!6189 array!64844) (_vacant!2847 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5584)

(declare-fun seekEntry!0 ((_ BitVec 64) array!64842 (_ BitVec 32)) SeekEntryResult!9705)

(assert (=> b!1031640 (= lt!455572 (seekEntry!0 key!909 (_keys!11336 thiss!1427) (mask!29963 thiss!1427)))))

(declare-fun e!582751 () Bool)

(declare-fun e!582749 () Bool)

(declare-fun tp_is_empty!24397 () Bool)

(declare-fun array_inv!24007 (array!64842) Bool)

(declare-fun array_inv!24008 (array!64844) Bool)

(assert (=> b!1031641 (= e!582749 (and tp!73102 tp_is_empty!24397 (array_inv!24007 (_keys!11336 thiss!1427)) (array_inv!24008 (_values!6189 thiss!1427)) e!582751))))

(declare-fun b!1031642 () Bool)

(declare-fun e!582750 () Bool)

(assert (=> b!1031642 (= e!582750 false)))

(declare-fun b!1031643 () Bool)

(declare-datatypes ((Unit!33736 0))(
  ( (Unit!33737) )
))
(declare-fun e!582754 () Unit!33736)

(declare-fun Unit!33738 () Unit!33736)

(assert (=> b!1031643 (= e!582754 Unit!33738)))

(declare-fun lt!455569 () Unit!33736)

(declare-datatypes ((tuple2!15788 0))(
  ( (tuple2!15789 (_1!7904 Unit!33736) (_2!7904 LongMapFixedSize!5584)) )
))
(declare-fun lt!455564 () tuple2!15788)

(declare-fun lemmaKeyInListMapIsInArray!349 (array!64842 array!64844 (_ BitVec 32) (_ BitVec 32) V!37403 V!37403 (_ BitVec 64) Int) Unit!33736)

(assert (=> b!1031643 (= lt!455569 (lemmaKeyInListMapIsInArray!349 (_keys!11336 (_2!7904 lt!455564)) (_values!6189 (_2!7904 lt!455564)) (mask!29963 (_2!7904 lt!455564)) (extraKeys!5898 (_2!7904 lt!455564)) (zeroValue!6002 (_2!7904 lt!455564)) (minValue!6002 (_2!7904 lt!455564)) key!909 (defaultEntry!6166 (_2!7904 lt!455564))))))

(declare-fun c!104182 () Bool)

(assert (=> b!1031643 (= c!104182 (and (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!909 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!689849 () Bool)

(declare-fun e!582756 () Bool)

(assert (=> b!1031643 (= res!689849 e!582756)))

(assert (=> b!1031643 (=> (not res!689849) (not e!582750))))

(assert (=> b!1031643 e!582750))

(declare-fun mapIsEmpty!38049 () Bool)

(declare-fun mapRes!38049 () Bool)

(assert (=> mapIsEmpty!38049 mapRes!38049))

(declare-fun b!1031644 () Bool)

(declare-fun e!582757 () Bool)

(assert (=> b!1031644 (= e!582757 tp_is_empty!24397)))

(declare-fun b!1031645 () Bool)

(assert (=> b!1031645 (= e!582751 (and e!582757 mapRes!38049))))

(declare-fun condMapEmpty!38049 () Bool)

(declare-fun mapDefault!38049 () ValueCell!11495)

