; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33840 () Bool)

(assert start!33840)

(declare-fun b_free!7011 () Bool)

(declare-fun b_next!7011 () Bool)

(assert (=> start!33840 (= b_free!7011 (not b_next!7011))))

(declare-fun tp!24545 () Bool)

(declare-fun b_and!14215 () Bool)

(assert (=> start!33840 (= tp!24545 b_and!14215)))

(declare-fun b!336306 () Bool)

(declare-fun res!185678 () Bool)

(declare-fun e!206447 () Bool)

(assert (=> b!336306 (=> (not res!185678) (not e!206447))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!336306 (= res!185678 (validKeyInArray!0 k0!1348))))

(declare-fun b!336307 () Bool)

(assert (=> b!336307 (= e!206447 false)))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((array!17505 0))(
  ( (array!17506 (arr!8277 (Array (_ BitVec 32) (_ BitVec 64))) (size!8629 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17505)

(declare-datatypes ((SeekEntryResult!3209 0))(
  ( (MissingZero!3209 (index!15015 (_ BitVec 32))) (Found!3209 (index!15016 (_ BitVec 32))) (Intermediate!3209 (undefined!4021 Bool) (index!15017 (_ BitVec 32)) (x!33536 (_ BitVec 32))) (Undefined!3209) (MissingVacant!3209 (index!15018 (_ BitVec 32))) )
))
(declare-fun lt!160227 () SeekEntryResult!3209)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17505 (_ BitVec 32)) SeekEntryResult!3209)

(assert (=> b!336307 (= lt!160227 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun res!185677 () Bool)

(assert (=> start!33840 (=> (not res!185677) (not e!206447))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33840 (= res!185677 (validMask!0 mask!2385))))

(assert (=> start!33840 e!206447))

(assert (=> start!33840 true))

(declare-fun tp_is_empty!6963 () Bool)

(assert (=> start!33840 tp_is_empty!6963))

(assert (=> start!33840 tp!24545))

(declare-datatypes ((V!10261 0))(
  ( (V!10262 (val!3526 Int)) )
))
(declare-datatypes ((ValueCell!3138 0))(
  ( (ValueCellFull!3138 (v!5687 V!10261)) (EmptyCell!3138) )
))
(declare-datatypes ((array!17507 0))(
  ( (array!17508 (arr!8278 (Array (_ BitVec 32) ValueCell!3138)) (size!8630 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17507)

(declare-fun e!206444 () Bool)

(declare-fun array_inv!6134 (array!17507) Bool)

(assert (=> start!33840 (and (array_inv!6134 _values!1525) e!206444)))

(declare-fun array_inv!6135 (array!17505) Bool)

(assert (=> start!33840 (array_inv!6135 _keys!1895)))

(declare-fun b!336308 () Bool)

(declare-fun res!185680 () Bool)

(assert (=> b!336308 (=> (not res!185680) (not e!206447))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!336308 (= res!185680 (and (= (size!8630 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8629 _keys!1895) (size!8630 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!336309 () Bool)

(declare-fun res!185676 () Bool)

(assert (=> b!336309 (=> (not res!185676) (not e!206447))))

(declare-datatypes ((List!4761 0))(
  ( (Nil!4758) (Cons!4757 (h!5613 (_ BitVec 64)) (t!9863 List!4761)) )
))
(declare-fun arrayNoDuplicates!0 (array!17505 (_ BitVec 32) List!4761) Bool)

(assert (=> b!336309 (= res!185676 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4758))))

(declare-fun mapNonEmpty!11850 () Bool)

(declare-fun mapRes!11850 () Bool)

(declare-fun tp!24546 () Bool)

(declare-fun e!206448 () Bool)

(assert (=> mapNonEmpty!11850 (= mapRes!11850 (and tp!24546 e!206448))))

(declare-fun mapValue!11850 () ValueCell!3138)

(declare-fun mapKey!11850 () (_ BitVec 32))

(declare-fun mapRest!11850 () (Array (_ BitVec 32) ValueCell!3138))

(assert (=> mapNonEmpty!11850 (= (arr!8278 _values!1525) (store mapRest!11850 mapKey!11850 mapValue!11850))))

(declare-fun b!336310 () Bool)

(assert (=> b!336310 (= e!206448 tp_is_empty!6963)))

(declare-fun b!336311 () Bool)

(declare-fun res!185681 () Bool)

(assert (=> b!336311 (=> (not res!185681) (not e!206447))))

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10261)

(declare-fun zeroValue!1467 () V!10261)

(declare-datatypes ((tuple2!5122 0))(
  ( (tuple2!5123 (_1!2571 (_ BitVec 64)) (_2!2571 V!10261)) )
))
(declare-datatypes ((List!4762 0))(
  ( (Nil!4759) (Cons!4758 (h!5614 tuple2!5122) (t!9864 List!4762)) )
))
(declare-datatypes ((ListLongMap!4049 0))(
  ( (ListLongMap!4050 (toList!2040 List!4762)) )
))
(declare-fun contains!2083 (ListLongMap!4049 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1560 (array!17505 array!17507 (_ BitVec 32) (_ BitVec 32) V!10261 V!10261 (_ BitVec 32) Int) ListLongMap!4049)

(assert (=> b!336311 (= res!185681 (not (contains!2083 (getCurrentListMap!1560 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!336312 () Bool)

(declare-fun e!206445 () Bool)

(assert (=> b!336312 (= e!206444 (and e!206445 mapRes!11850))))

(declare-fun condMapEmpty!11850 () Bool)

(declare-fun mapDefault!11850 () ValueCell!3138)

(assert (=> b!336312 (= condMapEmpty!11850 (= (arr!8278 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3138)) mapDefault!11850)))))

(declare-fun mapIsEmpty!11850 () Bool)

(assert (=> mapIsEmpty!11850 mapRes!11850))

(declare-fun b!336313 () Bool)

(assert (=> b!336313 (= e!206445 tp_is_empty!6963)))

(declare-fun b!336314 () Bool)

(declare-fun res!185679 () Bool)

(assert (=> b!336314 (=> (not res!185679) (not e!206447))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17505 (_ BitVec 32)) Bool)

(assert (=> b!336314 (= res!185679 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(assert (= (and start!33840 res!185677) b!336308))

(assert (= (and b!336308 res!185680) b!336314))

(assert (= (and b!336314 res!185679) b!336309))

(assert (= (and b!336309 res!185676) b!336306))

(assert (= (and b!336306 res!185678) b!336311))

(assert (= (and b!336311 res!185681) b!336307))

(assert (= (and b!336312 condMapEmpty!11850) mapIsEmpty!11850))

(assert (= (and b!336312 (not condMapEmpty!11850)) mapNonEmpty!11850))

(get-info :version)

(assert (= (and mapNonEmpty!11850 ((_ is ValueCellFull!3138) mapValue!11850)) b!336310))

(assert (= (and b!336312 ((_ is ValueCellFull!3138) mapDefault!11850)) b!336313))

(assert (= start!33840 b!336312))

(declare-fun m!340131 () Bool)

(assert (=> b!336306 m!340131))

(declare-fun m!340133 () Bool)

(assert (=> start!33840 m!340133))

(declare-fun m!340135 () Bool)

(assert (=> start!33840 m!340135))

(declare-fun m!340137 () Bool)

(assert (=> start!33840 m!340137))

(declare-fun m!340139 () Bool)

(assert (=> b!336314 m!340139))

(declare-fun m!340141 () Bool)

(assert (=> b!336311 m!340141))

(assert (=> b!336311 m!340141))

(declare-fun m!340143 () Bool)

(assert (=> b!336311 m!340143))

(declare-fun m!340145 () Bool)

(assert (=> b!336307 m!340145))

(declare-fun m!340147 () Bool)

(assert (=> b!336309 m!340147))

(declare-fun m!340149 () Bool)

(assert (=> mapNonEmpty!11850 m!340149))

(check-sat (not b!336309) (not b!336311) (not b!336306) (not b_next!7011) (not start!33840) (not mapNonEmpty!11850) tp_is_empty!6963 (not b!336307) b_and!14215 (not b!336314))
(check-sat b_and!14215 (not b_next!7011))
