; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33912 () Bool)

(assert start!33912)

(declare-fun b_free!7083 () Bool)

(declare-fun b_next!7083 () Bool)

(assert (=> start!33912 (= b_free!7083 (not b_next!7083))))

(declare-fun tp!24762 () Bool)

(declare-fun b_and!14287 () Bool)

(assert (=> start!33912 (= tp!24762 b_and!14287)))

(declare-fun b!337491 () Bool)

(declare-datatypes ((Unit!10457 0))(
  ( (Unit!10458) )
))
(declare-fun e!207097 () Unit!10457)

(declare-fun Unit!10459 () Unit!10457)

(assert (=> b!337491 (= e!207097 Unit!10459)))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun lt!160444 () Unit!10457)

(declare-datatypes ((V!10357 0))(
  ( (V!10358 (val!3562 Int)) )
))
(declare-fun zeroValue!1467 () V!10357)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3174 0))(
  ( (ValueCellFull!3174 (v!5723 V!10357)) (EmptyCell!3174) )
))
(declare-datatypes ((array!17637 0))(
  ( (array!17638 (arr!8343 (Array (_ BitVec 32) ValueCell!3174)) (size!8695 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17637)

(declare-datatypes ((array!17639 0))(
  ( (array!17640 (arr!8344 (Array (_ BitVec 32) (_ BitVec 64))) (size!8696 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17639)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10357)

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!263 (array!17639 array!17637 (_ BitVec 32) (_ BitVec 32) V!10357 V!10357 (_ BitVec 64) (_ BitVec 32) Int) Unit!10457)

(declare-fun arrayScanForKey!0 (array!17639 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!337491 (= lt!160444 (lemmaArrayContainsKeyThenInListMap!263 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!337491 false))

(declare-fun b!337492 () Bool)

(declare-fun res!186532 () Bool)

(declare-fun e!207098 () Bool)

(assert (=> b!337492 (=> (not res!186532) (not e!207098))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!337492 (= res!186532 (validKeyInArray!0 k0!1348))))

(declare-fun b!337493 () Bool)

(declare-fun Unit!10460 () Unit!10457)

(assert (=> b!337493 (= e!207097 Unit!10460)))

(declare-fun res!186529 () Bool)

(assert (=> start!33912 (=> (not res!186529) (not e!207098))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33912 (= res!186529 (validMask!0 mask!2385))))

(assert (=> start!33912 e!207098))

(assert (=> start!33912 true))

(declare-fun tp_is_empty!7035 () Bool)

(assert (=> start!33912 tp_is_empty!7035))

(assert (=> start!33912 tp!24762))

(declare-fun e!207099 () Bool)

(declare-fun array_inv!6180 (array!17637) Bool)

(assert (=> start!33912 (and (array_inv!6180 _values!1525) e!207099)))

(declare-fun array_inv!6181 (array!17639) Bool)

(assert (=> start!33912 (array_inv!6181 _keys!1895)))

(declare-fun b!337494 () Bool)

(declare-fun e!207096 () Bool)

(assert (=> b!337494 (= e!207098 e!207096)))

(declare-fun res!186531 () Bool)

(assert (=> b!337494 (=> (not res!186531) (not e!207096))))

(declare-datatypes ((SeekEntryResult!3230 0))(
  ( (MissingZero!3230 (index!15099 (_ BitVec 32))) (Found!3230 (index!15100 (_ BitVec 32))) (Intermediate!3230 (undefined!4042 Bool) (index!15101 (_ BitVec 32)) (x!33653 (_ BitVec 32))) (Undefined!3230) (MissingVacant!3230 (index!15102 (_ BitVec 32))) )
))
(declare-fun lt!160446 () SeekEntryResult!3230)

(get-info :version)

(assert (=> b!337494 (= res!186531 (and (not ((_ is Found!3230) lt!160446)) ((_ is MissingZero!3230) lt!160446)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17639 (_ BitVec 32)) SeekEntryResult!3230)

(assert (=> b!337494 (= lt!160446 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!337495 () Bool)

(assert (=> b!337495 (= e!207096 false)))

(declare-fun lt!160445 () Unit!10457)

(assert (=> b!337495 (= lt!160445 e!207097)))

(declare-fun c!52229 () Bool)

(declare-fun arrayContainsKey!0 (array!17639 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!337495 (= c!52229 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!337496 () Bool)

(declare-fun res!186527 () Bool)

(assert (=> b!337496 (=> (not res!186527) (not e!207098))))

(assert (=> b!337496 (= res!186527 (and (= (size!8695 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8696 _keys!1895) (size!8695 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!11958 () Bool)

(declare-fun mapRes!11958 () Bool)

(assert (=> mapIsEmpty!11958 mapRes!11958))

(declare-fun b!337497 () Bool)

(declare-fun res!186533 () Bool)

(assert (=> b!337497 (=> (not res!186533) (not e!207098))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17639 (_ BitVec 32)) Bool)

(assert (=> b!337497 (= res!186533 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!11958 () Bool)

(declare-fun tp!24761 () Bool)

(declare-fun e!207095 () Bool)

(assert (=> mapNonEmpty!11958 (= mapRes!11958 (and tp!24761 e!207095))))

(declare-fun mapKey!11958 () (_ BitVec 32))

(declare-fun mapValue!11958 () ValueCell!3174)

(declare-fun mapRest!11958 () (Array (_ BitVec 32) ValueCell!3174))

(assert (=> mapNonEmpty!11958 (= (arr!8343 _values!1525) (store mapRest!11958 mapKey!11958 mapValue!11958))))

(declare-fun b!337498 () Bool)

(assert (=> b!337498 (= e!207095 tp_is_empty!7035)))

(declare-fun b!337499 () Bool)

(declare-fun e!207094 () Bool)

(assert (=> b!337499 (= e!207099 (and e!207094 mapRes!11958))))

(declare-fun condMapEmpty!11958 () Bool)

(declare-fun mapDefault!11958 () ValueCell!3174)

(assert (=> b!337499 (= condMapEmpty!11958 (= (arr!8343 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3174)) mapDefault!11958)))))

(declare-fun b!337500 () Bool)

(assert (=> b!337500 (= e!207094 tp_is_empty!7035)))

(declare-fun b!337501 () Bool)

(declare-fun res!186528 () Bool)

(assert (=> b!337501 (=> (not res!186528) (not e!207098))))

(declare-datatypes ((List!4808 0))(
  ( (Nil!4805) (Cons!4804 (h!5660 (_ BitVec 64)) (t!9910 List!4808)) )
))
(declare-fun arrayNoDuplicates!0 (array!17639 (_ BitVec 32) List!4808) Bool)

(assert (=> b!337501 (= res!186528 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4805))))

(declare-fun b!337502 () Bool)

(declare-fun res!186530 () Bool)

(assert (=> b!337502 (=> (not res!186530) (not e!207098))))

(declare-datatypes ((tuple2!5168 0))(
  ( (tuple2!5169 (_1!2594 (_ BitVec 64)) (_2!2594 V!10357)) )
))
(declare-datatypes ((List!4809 0))(
  ( (Nil!4806) (Cons!4805 (h!5661 tuple2!5168) (t!9911 List!4809)) )
))
(declare-datatypes ((ListLongMap!4095 0))(
  ( (ListLongMap!4096 (toList!2063 List!4809)) )
))
(declare-fun contains!2106 (ListLongMap!4095 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1583 (array!17639 array!17637 (_ BitVec 32) (_ BitVec 32) V!10357 V!10357 (_ BitVec 32) Int) ListLongMap!4095)

(assert (=> b!337502 (= res!186530 (not (contains!2106 (getCurrentListMap!1583 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(assert (= (and start!33912 res!186529) b!337496))

(assert (= (and b!337496 res!186527) b!337497))

(assert (= (and b!337497 res!186533) b!337501))

(assert (= (and b!337501 res!186528) b!337492))

(assert (= (and b!337492 res!186532) b!337502))

(assert (= (and b!337502 res!186530) b!337494))

(assert (= (and b!337494 res!186531) b!337495))

(assert (= (and b!337495 c!52229) b!337491))

(assert (= (and b!337495 (not c!52229)) b!337493))

(assert (= (and b!337499 condMapEmpty!11958) mapIsEmpty!11958))

(assert (= (and b!337499 (not condMapEmpty!11958)) mapNonEmpty!11958))

(assert (= (and mapNonEmpty!11958 ((_ is ValueCellFull!3174) mapValue!11958)) b!337498))

(assert (= (and b!337499 ((_ is ValueCellFull!3174) mapDefault!11958)) b!337500))

(assert (= start!33912 b!337499))

(declare-fun m!340989 () Bool)

(assert (=> b!337501 m!340989))

(declare-fun m!340991 () Bool)

(assert (=> start!33912 m!340991))

(declare-fun m!340993 () Bool)

(assert (=> start!33912 m!340993))

(declare-fun m!340995 () Bool)

(assert (=> start!33912 m!340995))

(declare-fun m!340997 () Bool)

(assert (=> b!337491 m!340997))

(assert (=> b!337491 m!340997))

(declare-fun m!340999 () Bool)

(assert (=> b!337491 m!340999))

(declare-fun m!341001 () Bool)

(assert (=> b!337502 m!341001))

(assert (=> b!337502 m!341001))

(declare-fun m!341003 () Bool)

(assert (=> b!337502 m!341003))

(declare-fun m!341005 () Bool)

(assert (=> mapNonEmpty!11958 m!341005))

(declare-fun m!341007 () Bool)

(assert (=> b!337495 m!341007))

(declare-fun m!341009 () Bool)

(assert (=> b!337494 m!341009))

(declare-fun m!341011 () Bool)

(assert (=> b!337492 m!341011))

(declare-fun m!341013 () Bool)

(assert (=> b!337497 m!341013))

(check-sat (not b!337494) (not mapNonEmpty!11958) (not b!337495) b_and!14287 (not b!337491) tp_is_empty!7035 (not start!33912) (not b!337492) (not b!337502) (not b!337501) (not b!337497) (not b_next!7083))
(check-sat b_and!14287 (not b_next!7083))
