; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33858 () Bool)

(assert start!33858)

(declare-fun b_free!7029 () Bool)

(declare-fun b_next!7029 () Bool)

(assert (=> start!33858 (= b_free!7029 (not b_next!7029))))

(declare-fun tp!24599 () Bool)

(declare-fun b_and!14233 () Bool)

(assert (=> start!33858 (= tp!24599 b_and!14233)))

(declare-fun b!336595 () Bool)

(declare-fun res!185887 () Bool)

(declare-fun e!206606 () Bool)

(assert (=> b!336595 (=> (not res!185887) (not e!206606))))

(declare-datatypes ((array!17539 0))(
  ( (array!17540 (arr!8294 (Array (_ BitVec 32) (_ BitVec 64))) (size!8646 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17539)

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17539 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!336595 (= res!185887 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!336596 () Bool)

(declare-fun res!185891 () Bool)

(declare-fun e!206607 () Bool)

(assert (=> b!336596 (=> (not res!185891) (not e!206607))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10285 0))(
  ( (V!10286 (val!3535 Int)) )
))
(declare-datatypes ((ValueCell!3147 0))(
  ( (ValueCellFull!3147 (v!5696 V!10285)) (EmptyCell!3147) )
))
(declare-datatypes ((array!17541 0))(
  ( (array!17542 (arr!8295 (Array (_ BitVec 32) ValueCell!3147)) (size!8647 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17541)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!336596 (= res!185891 (and (= (size!8647 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8646 _keys!1895) (size!8647 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!336597 () Bool)

(declare-fun res!185889 () Bool)

(assert (=> b!336597 (=> (not res!185889) (not e!206607))))

(declare-fun zeroValue!1467 () V!10285)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10285)

(declare-datatypes ((tuple2!5138 0))(
  ( (tuple2!5139 (_1!2579 (_ BitVec 64)) (_2!2579 V!10285)) )
))
(declare-datatypes ((List!4775 0))(
  ( (Nil!4772) (Cons!4771 (h!5627 tuple2!5138) (t!9877 List!4775)) )
))
(declare-datatypes ((ListLongMap!4065 0))(
  ( (ListLongMap!4066 (toList!2048 List!4775)) )
))
(declare-fun contains!2091 (ListLongMap!4065 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1568 (array!17539 array!17541 (_ BitVec 32) (_ BitVec 32) V!10285 V!10285 (_ BitVec 32) Int) ListLongMap!4065)

(assert (=> b!336597 (= res!185889 (not (contains!2091 (getCurrentListMap!1568 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!336598 () Bool)

(assert (=> b!336598 (= e!206606 false)))

(declare-fun lt!160277 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!17539 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!336598 (= lt!160277 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!11877 () Bool)

(declare-fun mapRes!11877 () Bool)

(declare-fun tp!24600 () Bool)

(declare-fun e!206602 () Bool)

(assert (=> mapNonEmpty!11877 (= mapRes!11877 (and tp!24600 e!206602))))

(declare-fun mapRest!11877 () (Array (_ BitVec 32) ValueCell!3147))

(declare-fun mapKey!11877 () (_ BitVec 32))

(declare-fun mapValue!11877 () ValueCell!3147)

(assert (=> mapNonEmpty!11877 (= (arr!8295 _values!1525) (store mapRest!11877 mapKey!11877 mapValue!11877))))

(declare-fun b!336599 () Bool)

(assert (=> b!336599 (= e!206607 e!206606)))

(declare-fun res!185885 () Bool)

(assert (=> b!336599 (=> (not res!185885) (not e!206606))))

(declare-datatypes ((SeekEntryResult!3215 0))(
  ( (MissingZero!3215 (index!15039 (_ BitVec 32))) (Found!3215 (index!15040 (_ BitVec 32))) (Intermediate!3215 (undefined!4027 Bool) (index!15041 (_ BitVec 32)) (x!33566 (_ BitVec 32))) (Undefined!3215) (MissingVacant!3215 (index!15042 (_ BitVec 32))) )
))
(declare-fun lt!160278 () SeekEntryResult!3215)

(get-info :version)

(assert (=> b!336599 (= res!185885 (and (not ((_ is Found!3215) lt!160278)) ((_ is MissingZero!3215) lt!160278)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17539 (_ BitVec 32)) SeekEntryResult!3215)

(assert (=> b!336599 (= lt!160278 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!336601 () Bool)

(declare-fun tp_is_empty!6981 () Bool)

(assert (=> b!336601 (= e!206602 tp_is_empty!6981)))

(declare-fun mapIsEmpty!11877 () Bool)

(assert (=> mapIsEmpty!11877 mapRes!11877))

(declare-fun res!185888 () Bool)

(assert (=> start!33858 (=> (not res!185888) (not e!206607))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33858 (= res!185888 (validMask!0 mask!2385))))

(assert (=> start!33858 e!206607))

(assert (=> start!33858 true))

(assert (=> start!33858 tp_is_empty!6981))

(assert (=> start!33858 tp!24599))

(declare-fun e!206605 () Bool)

(declare-fun array_inv!6150 (array!17541) Bool)

(assert (=> start!33858 (and (array_inv!6150 _values!1525) e!206605)))

(declare-fun array_inv!6151 (array!17539) Bool)

(assert (=> start!33858 (array_inv!6151 _keys!1895)))

(declare-fun b!336600 () Bool)

(declare-fun res!185884 () Bool)

(assert (=> b!336600 (=> (not res!185884) (not e!206607))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!336600 (= res!185884 (validKeyInArray!0 k0!1348))))

(declare-fun b!336602 () Bool)

(declare-fun res!185886 () Bool)

(assert (=> b!336602 (=> (not res!185886) (not e!206607))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17539 (_ BitVec 32)) Bool)

(assert (=> b!336602 (= res!185886 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!336603 () Bool)

(declare-fun res!185890 () Bool)

(assert (=> b!336603 (=> (not res!185890) (not e!206607))))

(declare-datatypes ((List!4776 0))(
  ( (Nil!4773) (Cons!4772 (h!5628 (_ BitVec 64)) (t!9878 List!4776)) )
))
(declare-fun arrayNoDuplicates!0 (array!17539 (_ BitVec 32) List!4776) Bool)

(assert (=> b!336603 (= res!185890 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4773))))

(declare-fun b!336604 () Bool)

(declare-fun e!206603 () Bool)

(assert (=> b!336604 (= e!206603 tp_is_empty!6981)))

(declare-fun b!336605 () Bool)

(assert (=> b!336605 (= e!206605 (and e!206603 mapRes!11877))))

(declare-fun condMapEmpty!11877 () Bool)

(declare-fun mapDefault!11877 () ValueCell!3147)

(assert (=> b!336605 (= condMapEmpty!11877 (= (arr!8295 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3147)) mapDefault!11877)))))

(assert (= (and start!33858 res!185888) b!336596))

(assert (= (and b!336596 res!185891) b!336602))

(assert (= (and b!336602 res!185886) b!336603))

(assert (= (and b!336603 res!185890) b!336600))

(assert (= (and b!336600 res!185884) b!336597))

(assert (= (and b!336597 res!185889) b!336599))

(assert (= (and b!336599 res!185885) b!336595))

(assert (= (and b!336595 res!185887) b!336598))

(assert (= (and b!336605 condMapEmpty!11877) mapIsEmpty!11877))

(assert (= (and b!336605 (not condMapEmpty!11877)) mapNonEmpty!11877))

(assert (= (and mapNonEmpty!11877 ((_ is ValueCellFull!3147) mapValue!11877)) b!336601))

(assert (= (and b!336605 ((_ is ValueCellFull!3147) mapDefault!11877)) b!336604))

(assert (= start!33858 b!336605))

(declare-fun m!340339 () Bool)

(assert (=> b!336603 m!340339))

(declare-fun m!340341 () Bool)

(assert (=> mapNonEmpty!11877 m!340341))

(declare-fun m!340343 () Bool)

(assert (=> b!336600 m!340343))

(declare-fun m!340345 () Bool)

(assert (=> b!336597 m!340345))

(assert (=> b!336597 m!340345))

(declare-fun m!340347 () Bool)

(assert (=> b!336597 m!340347))

(declare-fun m!340349 () Bool)

(assert (=> b!336602 m!340349))

(declare-fun m!340351 () Bool)

(assert (=> b!336595 m!340351))

(declare-fun m!340353 () Bool)

(assert (=> start!33858 m!340353))

(declare-fun m!340355 () Bool)

(assert (=> start!33858 m!340355))

(declare-fun m!340357 () Bool)

(assert (=> start!33858 m!340357))

(declare-fun m!340359 () Bool)

(assert (=> b!336599 m!340359))

(declare-fun m!340361 () Bool)

(assert (=> b!336598 m!340361))

(check-sat (not b!336600) tp_is_empty!6981 (not b!336598) (not b!336599) (not b!336597) (not start!33858) (not b!336603) (not b!336602) (not b_next!7029) (not b!336595) (not mapNonEmpty!11877) b_and!14233)
(check-sat b_and!14233 (not b_next!7029))
