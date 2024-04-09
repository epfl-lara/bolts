; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33900 () Bool)

(assert start!33900)

(declare-fun b_free!7071 () Bool)

(declare-fun b_next!7071 () Bool)

(assert (=> start!33900 (= b_free!7071 (not b_next!7071))))

(declare-fun tp!24726 () Bool)

(declare-fun b_and!14275 () Bool)

(assert (=> start!33900 (= tp!24726 b_and!14275)))

(declare-fun mapIsEmpty!11940 () Bool)

(declare-fun mapRes!11940 () Bool)

(assert (=> mapIsEmpty!11940 mapRes!11940))

(declare-fun b!337288 () Bool)

(declare-fun e!206983 () Bool)

(declare-fun e!206984 () Bool)

(assert (=> b!337288 (= e!206983 e!206984)))

(declare-fun res!186390 () Bool)

(assert (=> b!337288 (=> (not res!186390) (not e!206984))))

(declare-datatypes ((SeekEntryResult!3227 0))(
  ( (MissingZero!3227 (index!15087 (_ BitVec 32))) (Found!3227 (index!15088 (_ BitVec 32))) (Intermediate!3227 (undefined!4039 Bool) (index!15089 (_ BitVec 32)) (x!33634 (_ BitVec 32))) (Undefined!3227) (MissingVacant!3227 (index!15090 (_ BitVec 32))) )
))
(declare-fun lt!160404 () SeekEntryResult!3227)

(get-info :version)

(assert (=> b!337288 (= res!186390 (and (not ((_ is Found!3227) lt!160404)) ((_ is MissingZero!3227) lt!160404)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((array!17617 0))(
  ( (array!17618 (arr!8333 (Array (_ BitVec 32) (_ BitVec 64))) (size!8685 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17617)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17617 (_ BitVec 32)) SeekEntryResult!3227)

(assert (=> b!337288 (= lt!160404 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!337289 () Bool)

(declare-fun res!186394 () Bool)

(assert (=> b!337289 (=> (not res!186394) (not e!206983))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!337289 (= res!186394 (validKeyInArray!0 k0!1348))))

(declare-fun b!337290 () Bool)

(declare-fun e!206981 () Bool)

(declare-fun tp_is_empty!7023 () Bool)

(assert (=> b!337290 (= e!206981 tp_is_empty!7023)))

(declare-fun b!337291 () Bool)

(declare-fun res!186392 () Bool)

(assert (=> b!337291 (=> (not res!186392) (not e!206983))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17617 (_ BitVec 32)) Bool)

(assert (=> b!337291 (= res!186392 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!337292 () Bool)

(assert (=> b!337292 (= e!206984 false)))

(declare-fun lt!160403 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!17617 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!337292 (= lt!160403 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!11940 () Bool)

(declare-fun tp!24725 () Bool)

(declare-fun e!206982 () Bool)

(assert (=> mapNonEmpty!11940 (= mapRes!11940 (and tp!24725 e!206982))))

(declare-datatypes ((V!10341 0))(
  ( (V!10342 (val!3556 Int)) )
))
(declare-datatypes ((ValueCell!3168 0))(
  ( (ValueCellFull!3168 (v!5717 V!10341)) (EmptyCell!3168) )
))
(declare-fun mapRest!11940 () (Array (_ BitVec 32) ValueCell!3168))

(declare-fun mapKey!11940 () (_ BitVec 32))

(declare-datatypes ((array!17619 0))(
  ( (array!17620 (arr!8334 (Array (_ BitVec 32) ValueCell!3168)) (size!8686 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17619)

(declare-fun mapValue!11940 () ValueCell!3168)

(assert (=> mapNonEmpty!11940 (= (arr!8334 _values!1525) (store mapRest!11940 mapKey!11940 mapValue!11940))))

(declare-fun b!337293 () Bool)

(declare-fun res!186389 () Bool)

(assert (=> b!337293 (=> (not res!186389) (not e!206983))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!337293 (= res!186389 (and (= (size!8686 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8685 _keys!1895) (size!8686 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!337295 () Bool)

(declare-fun res!186393 () Bool)

(assert (=> b!337295 (=> (not res!186393) (not e!206984))))

(declare-fun arrayContainsKey!0 (array!17617 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!337295 (= res!186393 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!337296 () Bool)

(declare-fun res!186395 () Bool)

(assert (=> b!337296 (=> (not res!186395) (not e!206983))))

(declare-datatypes ((List!4803 0))(
  ( (Nil!4800) (Cons!4799 (h!5655 (_ BitVec 64)) (t!9905 List!4803)) )
))
(declare-fun arrayNoDuplicates!0 (array!17617 (_ BitVec 32) List!4803) Bool)

(assert (=> b!337296 (= res!186395 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4800))))

(declare-fun b!337297 () Bool)

(declare-fun e!206985 () Bool)

(assert (=> b!337297 (= e!206985 (and e!206981 mapRes!11940))))

(declare-fun condMapEmpty!11940 () Bool)

(declare-fun mapDefault!11940 () ValueCell!3168)

(assert (=> b!337297 (= condMapEmpty!11940 (= (arr!8334 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3168)) mapDefault!11940)))))

(declare-fun b!337298 () Bool)

(declare-fun res!186391 () Bool)

(assert (=> b!337298 (=> (not res!186391) (not e!206983))))

(declare-fun zeroValue!1467 () V!10341)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10341)

(declare-datatypes ((tuple2!5164 0))(
  ( (tuple2!5165 (_1!2592 (_ BitVec 64)) (_2!2592 V!10341)) )
))
(declare-datatypes ((List!4804 0))(
  ( (Nil!4801) (Cons!4800 (h!5656 tuple2!5164) (t!9906 List!4804)) )
))
(declare-datatypes ((ListLongMap!4091 0))(
  ( (ListLongMap!4092 (toList!2061 List!4804)) )
))
(declare-fun contains!2104 (ListLongMap!4091 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1581 (array!17617 array!17619 (_ BitVec 32) (_ BitVec 32) V!10341 V!10341 (_ BitVec 32) Int) ListLongMap!4091)

(assert (=> b!337298 (= res!186391 (not (contains!2104 (getCurrentListMap!1581 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!337294 () Bool)

(assert (=> b!337294 (= e!206982 tp_is_empty!7023)))

(declare-fun res!186388 () Bool)

(assert (=> start!33900 (=> (not res!186388) (not e!206983))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33900 (= res!186388 (validMask!0 mask!2385))))

(assert (=> start!33900 e!206983))

(assert (=> start!33900 true))

(assert (=> start!33900 tp_is_empty!7023))

(assert (=> start!33900 tp!24726))

(declare-fun array_inv!6174 (array!17619) Bool)

(assert (=> start!33900 (and (array_inv!6174 _values!1525) e!206985)))

(declare-fun array_inv!6175 (array!17617) Bool)

(assert (=> start!33900 (array_inv!6175 _keys!1895)))

(assert (= (and start!33900 res!186388) b!337293))

(assert (= (and b!337293 res!186389) b!337291))

(assert (= (and b!337291 res!186392) b!337296))

(assert (= (and b!337296 res!186395) b!337289))

(assert (= (and b!337289 res!186394) b!337298))

(assert (= (and b!337298 res!186391) b!337288))

(assert (= (and b!337288 res!186390) b!337295))

(assert (= (and b!337295 res!186393) b!337292))

(assert (= (and b!337297 condMapEmpty!11940) mapIsEmpty!11940))

(assert (= (and b!337297 (not condMapEmpty!11940)) mapNonEmpty!11940))

(assert (= (and mapNonEmpty!11940 ((_ is ValueCellFull!3168) mapValue!11940)) b!337294))

(assert (= (and b!337297 ((_ is ValueCellFull!3168) mapDefault!11940)) b!337290))

(assert (= start!33900 b!337297))

(declare-fun m!340843 () Bool)

(assert (=> b!337289 m!340843))

(declare-fun m!340845 () Bool)

(assert (=> start!33900 m!340845))

(declare-fun m!340847 () Bool)

(assert (=> start!33900 m!340847))

(declare-fun m!340849 () Bool)

(assert (=> start!33900 m!340849))

(declare-fun m!340851 () Bool)

(assert (=> mapNonEmpty!11940 m!340851))

(declare-fun m!340853 () Bool)

(assert (=> b!337296 m!340853))

(declare-fun m!340855 () Bool)

(assert (=> b!337295 m!340855))

(declare-fun m!340857 () Bool)

(assert (=> b!337291 m!340857))

(declare-fun m!340859 () Bool)

(assert (=> b!337288 m!340859))

(declare-fun m!340861 () Bool)

(assert (=> b!337292 m!340861))

(declare-fun m!340863 () Bool)

(assert (=> b!337298 m!340863))

(assert (=> b!337298 m!340863))

(declare-fun m!340865 () Bool)

(assert (=> b!337298 m!340865))

(check-sat (not b!337292) (not b!337291) (not b!337295) (not b!337298) b_and!14275 (not b_next!7071) (not start!33900) (not b!337289) (not b!337296) (not b!337288) tp_is_empty!7023 (not mapNonEmpty!11940))
(check-sat b_and!14275 (not b_next!7071))
