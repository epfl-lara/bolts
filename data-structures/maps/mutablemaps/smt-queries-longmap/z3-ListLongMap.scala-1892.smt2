; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33852 () Bool)

(assert start!33852)

(declare-fun b_free!7023 () Bool)

(declare-fun b_next!7023 () Bool)

(assert (=> start!33852 (= b_free!7023 (not b_next!7023))))

(declare-fun tp!24582 () Bool)

(declare-fun b_and!14227 () Bool)

(assert (=> start!33852 (= tp!24582 b_and!14227)))

(declare-fun b!336496 () Bool)

(declare-fun e!206551 () Bool)

(declare-fun tp_is_empty!6975 () Bool)

(assert (=> b!336496 (= e!206551 tp_is_empty!6975)))

(declare-fun b!336497 () Bool)

(declare-fun res!185816 () Bool)

(declare-fun e!206549 () Bool)

(assert (=> b!336497 (=> (not res!185816) (not e!206549))))

(declare-datatypes ((array!17529 0))(
  ( (array!17530 (arr!8289 (Array (_ BitVec 32) (_ BitVec 64))) (size!8641 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17529)

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17529 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!336497 (= res!185816 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!336499 () Bool)

(declare-fun e!206550 () Bool)

(assert (=> b!336499 (= e!206550 tp_is_empty!6975)))

(declare-fun b!336500 () Bool)

(declare-fun res!185813 () Bool)

(declare-fun e!206552 () Bool)

(assert (=> b!336500 (=> (not res!185813) (not e!206552))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!336500 (= res!185813 (validKeyInArray!0 k0!1348))))

(declare-fun b!336501 () Bool)

(assert (=> b!336501 (= e!206552 e!206549)))

(declare-fun res!185817 () Bool)

(assert (=> b!336501 (=> (not res!185817) (not e!206549))))

(declare-datatypes ((SeekEntryResult!3213 0))(
  ( (MissingZero!3213 (index!15031 (_ BitVec 32))) (Found!3213 (index!15032 (_ BitVec 32))) (Intermediate!3213 (undefined!4025 Bool) (index!15033 (_ BitVec 32)) (x!33556 (_ BitVec 32))) (Undefined!3213) (MissingVacant!3213 (index!15034 (_ BitVec 32))) )
))
(declare-fun lt!160259 () SeekEntryResult!3213)

(get-info :version)

(assert (=> b!336501 (= res!185817 (and (not ((_ is Found!3213) lt!160259)) ((_ is MissingZero!3213) lt!160259)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17529 (_ BitVec 32)) SeekEntryResult!3213)

(assert (=> b!336501 (= lt!160259 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!336502 () Bool)

(assert (=> b!336502 (= e!206549 false)))

(declare-fun lt!160260 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!17529 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!336502 (= lt!160260 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!11868 () Bool)

(declare-fun mapRes!11868 () Bool)

(declare-fun tp!24581 () Bool)

(assert (=> mapNonEmpty!11868 (= mapRes!11868 (and tp!24581 e!206551))))

(declare-fun mapKey!11868 () (_ BitVec 32))

(declare-datatypes ((V!10277 0))(
  ( (V!10278 (val!3532 Int)) )
))
(declare-datatypes ((ValueCell!3144 0))(
  ( (ValueCellFull!3144 (v!5693 V!10277)) (EmptyCell!3144) )
))
(declare-fun mapRest!11868 () (Array (_ BitVec 32) ValueCell!3144))

(declare-datatypes ((array!17531 0))(
  ( (array!17532 (arr!8290 (Array (_ BitVec 32) ValueCell!3144)) (size!8642 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17531)

(declare-fun mapValue!11868 () ValueCell!3144)

(assert (=> mapNonEmpty!11868 (= (arr!8290 _values!1525) (store mapRest!11868 mapKey!11868 mapValue!11868))))

(declare-fun b!336503 () Bool)

(declare-fun e!206553 () Bool)

(assert (=> b!336503 (= e!206553 (and e!206550 mapRes!11868))))

(declare-fun condMapEmpty!11868 () Bool)

(declare-fun mapDefault!11868 () ValueCell!3144)

(assert (=> b!336503 (= condMapEmpty!11868 (= (arr!8290 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3144)) mapDefault!11868)))))

(declare-fun b!336504 () Bool)

(declare-fun res!185818 () Bool)

(assert (=> b!336504 (=> (not res!185818) (not e!206552))))

(declare-fun zeroValue!1467 () V!10277)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10277)

(declare-datatypes ((tuple2!5134 0))(
  ( (tuple2!5135 (_1!2577 (_ BitVec 64)) (_2!2577 V!10277)) )
))
(declare-datatypes ((List!4771 0))(
  ( (Nil!4768) (Cons!4767 (h!5623 tuple2!5134) (t!9873 List!4771)) )
))
(declare-datatypes ((ListLongMap!4061 0))(
  ( (ListLongMap!4062 (toList!2046 List!4771)) )
))
(declare-fun contains!2089 (ListLongMap!4061 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1566 (array!17529 array!17531 (_ BitVec 32) (_ BitVec 32) V!10277 V!10277 (_ BitVec 32) Int) ListLongMap!4061)

(assert (=> b!336504 (= res!185818 (not (contains!2089 (getCurrentListMap!1566 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!336505 () Bool)

(declare-fun res!185812 () Bool)

(assert (=> b!336505 (=> (not res!185812) (not e!206552))))

(assert (=> b!336505 (= res!185812 (and (= (size!8642 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8641 _keys!1895) (size!8642 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun res!185815 () Bool)

(assert (=> start!33852 (=> (not res!185815) (not e!206552))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33852 (= res!185815 (validMask!0 mask!2385))))

(assert (=> start!33852 e!206552))

(assert (=> start!33852 true))

(assert (=> start!33852 tp_is_empty!6975))

(assert (=> start!33852 tp!24582))

(declare-fun array_inv!6146 (array!17531) Bool)

(assert (=> start!33852 (and (array_inv!6146 _values!1525) e!206553)))

(declare-fun array_inv!6147 (array!17529) Bool)

(assert (=> start!33852 (array_inv!6147 _keys!1895)))

(declare-fun b!336498 () Bool)

(declare-fun res!185819 () Bool)

(assert (=> b!336498 (=> (not res!185819) (not e!206552))))

(declare-datatypes ((List!4772 0))(
  ( (Nil!4769) (Cons!4768 (h!5624 (_ BitVec 64)) (t!9874 List!4772)) )
))
(declare-fun arrayNoDuplicates!0 (array!17529 (_ BitVec 32) List!4772) Bool)

(assert (=> b!336498 (= res!185819 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4769))))

(declare-fun mapIsEmpty!11868 () Bool)

(assert (=> mapIsEmpty!11868 mapRes!11868))

(declare-fun b!336506 () Bool)

(declare-fun res!185814 () Bool)

(assert (=> b!336506 (=> (not res!185814) (not e!206552))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17529 (_ BitVec 32)) Bool)

(assert (=> b!336506 (= res!185814 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(assert (= (and start!33852 res!185815) b!336505))

(assert (= (and b!336505 res!185812) b!336506))

(assert (= (and b!336506 res!185814) b!336498))

(assert (= (and b!336498 res!185819) b!336500))

(assert (= (and b!336500 res!185813) b!336504))

(assert (= (and b!336504 res!185818) b!336501))

(assert (= (and b!336501 res!185817) b!336497))

(assert (= (and b!336497 res!185816) b!336502))

(assert (= (and b!336503 condMapEmpty!11868) mapIsEmpty!11868))

(assert (= (and b!336503 (not condMapEmpty!11868)) mapNonEmpty!11868))

(assert (= (and mapNonEmpty!11868 ((_ is ValueCellFull!3144) mapValue!11868)) b!336496))

(assert (= (and b!336503 ((_ is ValueCellFull!3144) mapDefault!11868)) b!336499))

(assert (= start!33852 b!336503))

(declare-fun m!340267 () Bool)

(assert (=> start!33852 m!340267))

(declare-fun m!340269 () Bool)

(assert (=> start!33852 m!340269))

(declare-fun m!340271 () Bool)

(assert (=> start!33852 m!340271))

(declare-fun m!340273 () Bool)

(assert (=> b!336501 m!340273))

(declare-fun m!340275 () Bool)

(assert (=> b!336504 m!340275))

(assert (=> b!336504 m!340275))

(declare-fun m!340277 () Bool)

(assert (=> b!336504 m!340277))

(declare-fun m!340279 () Bool)

(assert (=> b!336497 m!340279))

(declare-fun m!340281 () Bool)

(assert (=> b!336500 m!340281))

(declare-fun m!340283 () Bool)

(assert (=> mapNonEmpty!11868 m!340283))

(declare-fun m!340285 () Bool)

(assert (=> b!336506 m!340285))

(declare-fun m!340287 () Bool)

(assert (=> b!336498 m!340287))

(declare-fun m!340289 () Bool)

(assert (=> b!336502 m!340289))

(check-sat (not b_next!7023) (not b!336502) (not b!336497) (not b!336504) (not b!336500) (not b!336506) (not mapNonEmpty!11868) (not start!33852) tp_is_empty!6975 (not b!336498) (not b!336501) b_and!14227)
(check-sat b_and!14227 (not b_next!7023))
