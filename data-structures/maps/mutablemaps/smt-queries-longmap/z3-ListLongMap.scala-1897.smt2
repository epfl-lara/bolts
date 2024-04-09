; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33882 () Bool)

(assert start!33882)

(declare-fun b_free!7053 () Bool)

(declare-fun b_next!7053 () Bool)

(assert (=> start!33882 (= b_free!7053 (not b_next!7053))))

(declare-fun tp!24671 () Bool)

(declare-fun b_and!14257 () Bool)

(assert (=> start!33882 (= tp!24671 b_and!14257)))

(declare-fun b!336991 () Bool)

(declare-fun e!206821 () Bool)

(declare-fun tp_is_empty!7005 () Bool)

(assert (=> b!336991 (= e!206821 tp_is_empty!7005)))

(declare-fun b!336992 () Bool)

(declare-fun res!186172 () Bool)

(declare-fun e!206823 () Bool)

(assert (=> b!336992 (=> (not res!186172) (not e!206823))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10317 0))(
  ( (V!10318 (val!3547 Int)) )
))
(declare-datatypes ((ValueCell!3159 0))(
  ( (ValueCellFull!3159 (v!5708 V!10317)) (EmptyCell!3159) )
))
(declare-datatypes ((array!17587 0))(
  ( (array!17588 (arr!8318 (Array (_ BitVec 32) ValueCell!3159)) (size!8670 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17587)

(declare-datatypes ((array!17589 0))(
  ( (array!17590 (arr!8319 (Array (_ BitVec 32) (_ BitVec 64))) (size!8671 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17589)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!336992 (= res!186172 (and (= (size!8670 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8671 _keys!1895) (size!8670 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!336993 () Bool)

(declare-fun e!206822 () Bool)

(assert (=> b!336993 (= e!206822 false)))

(declare-fun lt!160350 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!17589 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!336993 (= lt!160350 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!336994 () Bool)

(declare-fun e!206820 () Bool)

(declare-fun e!206819 () Bool)

(declare-fun mapRes!11913 () Bool)

(assert (=> b!336994 (= e!206820 (and e!206819 mapRes!11913))))

(declare-fun condMapEmpty!11913 () Bool)

(declare-fun mapDefault!11913 () ValueCell!3159)

(assert (=> b!336994 (= condMapEmpty!11913 (= (arr!8318 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3159)) mapDefault!11913)))))

(declare-fun b!336995 () Bool)

(assert (=> b!336995 (= e!206819 tp_is_empty!7005)))

(declare-fun b!336996 () Bool)

(declare-fun res!186175 () Bool)

(assert (=> b!336996 (=> (not res!186175) (not e!206823))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!336996 (= res!186175 (validKeyInArray!0 k0!1348))))

(declare-fun b!336997 () Bool)

(declare-fun res!186173 () Bool)

(assert (=> b!336997 (=> (not res!186173) (not e!206822))))

(declare-fun arrayContainsKey!0 (array!17589 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!336997 (= res!186173 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!11913 () Bool)

(assert (=> mapIsEmpty!11913 mapRes!11913))

(declare-fun mapNonEmpty!11913 () Bool)

(declare-fun tp!24672 () Bool)

(assert (=> mapNonEmpty!11913 (= mapRes!11913 (and tp!24672 e!206821))))

(declare-fun mapKey!11913 () (_ BitVec 32))

(declare-fun mapValue!11913 () ValueCell!3159)

(declare-fun mapRest!11913 () (Array (_ BitVec 32) ValueCell!3159))

(assert (=> mapNonEmpty!11913 (= (arr!8318 _values!1525) (store mapRest!11913 mapKey!11913 mapValue!11913))))

(declare-fun b!336998 () Bool)

(declare-fun res!186176 () Bool)

(assert (=> b!336998 (=> (not res!186176) (not e!206823))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17589 (_ BitVec 32)) Bool)

(assert (=> b!336998 (= res!186176 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!336999 () Bool)

(declare-fun res!186178 () Bool)

(assert (=> b!336999 (=> (not res!186178) (not e!206823))))

(declare-datatypes ((List!4795 0))(
  ( (Nil!4792) (Cons!4791 (h!5647 (_ BitVec 64)) (t!9897 List!4795)) )
))
(declare-fun arrayNoDuplicates!0 (array!17589 (_ BitVec 32) List!4795) Bool)

(assert (=> b!336999 (= res!186178 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4792))))

(declare-fun b!337000 () Bool)

(assert (=> b!337000 (= e!206823 e!206822)))

(declare-fun res!186177 () Bool)

(assert (=> b!337000 (=> (not res!186177) (not e!206822))))

(declare-datatypes ((SeekEntryResult!3221 0))(
  ( (MissingZero!3221 (index!15063 (_ BitVec 32))) (Found!3221 (index!15064 (_ BitVec 32))) (Intermediate!3221 (undefined!4033 Bool) (index!15065 (_ BitVec 32)) (x!33604 (_ BitVec 32))) (Undefined!3221) (MissingVacant!3221 (index!15066 (_ BitVec 32))) )
))
(declare-fun lt!160349 () SeekEntryResult!3221)

(get-info :version)

(assert (=> b!337000 (= res!186177 (and (not ((_ is Found!3221) lt!160349)) ((_ is MissingZero!3221) lt!160349)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17589 (_ BitVec 32)) SeekEntryResult!3221)

(assert (=> b!337000 (= lt!160349 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun res!186179 () Bool)

(assert (=> start!33882 (=> (not res!186179) (not e!206823))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33882 (= res!186179 (validMask!0 mask!2385))))

(assert (=> start!33882 e!206823))

(assert (=> start!33882 true))

(assert (=> start!33882 tp_is_empty!7005))

(assert (=> start!33882 tp!24671))

(declare-fun array_inv!6166 (array!17587) Bool)

(assert (=> start!33882 (and (array_inv!6166 _values!1525) e!206820)))

(declare-fun array_inv!6167 (array!17589) Bool)

(assert (=> start!33882 (array_inv!6167 _keys!1895)))

(declare-fun b!337001 () Bool)

(declare-fun res!186174 () Bool)

(assert (=> b!337001 (=> (not res!186174) (not e!206823))))

(declare-fun zeroValue!1467 () V!10317)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10317)

(declare-datatypes ((tuple2!5156 0))(
  ( (tuple2!5157 (_1!2588 (_ BitVec 64)) (_2!2588 V!10317)) )
))
(declare-datatypes ((List!4796 0))(
  ( (Nil!4793) (Cons!4792 (h!5648 tuple2!5156) (t!9898 List!4796)) )
))
(declare-datatypes ((ListLongMap!4083 0))(
  ( (ListLongMap!4084 (toList!2057 List!4796)) )
))
(declare-fun contains!2100 (ListLongMap!4083 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1577 (array!17589 array!17587 (_ BitVec 32) (_ BitVec 32) V!10317 V!10317 (_ BitVec 32) Int) ListLongMap!4083)

(assert (=> b!337001 (= res!186174 (not (contains!2100 (getCurrentListMap!1577 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(assert (= (and start!33882 res!186179) b!336992))

(assert (= (and b!336992 res!186172) b!336998))

(assert (= (and b!336998 res!186176) b!336999))

(assert (= (and b!336999 res!186178) b!336996))

(assert (= (and b!336996 res!186175) b!337001))

(assert (= (and b!337001 res!186174) b!337000))

(assert (= (and b!337000 res!186177) b!336997))

(assert (= (and b!336997 res!186173) b!336993))

(assert (= (and b!336994 condMapEmpty!11913) mapIsEmpty!11913))

(assert (= (and b!336994 (not condMapEmpty!11913)) mapNonEmpty!11913))

(assert (= (and mapNonEmpty!11913 ((_ is ValueCellFull!3159) mapValue!11913)) b!336991))

(assert (= (and b!336994 ((_ is ValueCellFull!3159) mapDefault!11913)) b!336995))

(assert (= start!33882 b!336994))

(declare-fun m!340627 () Bool)

(assert (=> b!336998 m!340627))

(declare-fun m!340629 () Bool)

(assert (=> b!336999 m!340629))

(declare-fun m!340631 () Bool)

(assert (=> b!336997 m!340631))

(declare-fun m!340633 () Bool)

(assert (=> mapNonEmpty!11913 m!340633))

(declare-fun m!340635 () Bool)

(assert (=> b!337001 m!340635))

(assert (=> b!337001 m!340635))

(declare-fun m!340637 () Bool)

(assert (=> b!337001 m!340637))

(declare-fun m!340639 () Bool)

(assert (=> b!336996 m!340639))

(declare-fun m!340641 () Bool)

(assert (=> b!337000 m!340641))

(declare-fun m!340643 () Bool)

(assert (=> b!336993 m!340643))

(declare-fun m!340645 () Bool)

(assert (=> start!33882 m!340645))

(declare-fun m!340647 () Bool)

(assert (=> start!33882 m!340647))

(declare-fun m!340649 () Bool)

(assert (=> start!33882 m!340649))

(check-sat (not b!337000) (not b_next!7053) (not b!336999) (not b!336996) (not b!336998) (not b!336997) tp_is_empty!7005 (not mapNonEmpty!11913) (not b!337001) (not b!336993) b_and!14257 (not start!33882))
(check-sat b_and!14257 (not b_next!7053))
