; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33990 () Bool)

(assert start!33990)

(declare-fun b_free!7113 () Bool)

(declare-fun b_next!7113 () Bool)

(assert (=> start!33990 (= b_free!7113 (not b_next!7113))))

(declare-fun tp!24858 () Bool)

(declare-fun b_and!14321 () Bool)

(assert (=> start!33990 (= tp!24858 b_and!14321)))

(declare-fun b!338309 () Bool)

(declare-fun res!186944 () Bool)

(declare-fun e!207592 () Bool)

(assert (=> b!338309 (=> (not res!186944) (not e!207592))))

(declare-datatypes ((array!17697 0))(
  ( (array!17698 (arr!8371 (Array (_ BitVec 32) (_ BitVec 64))) (size!8723 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17697)

(declare-datatypes ((List!4824 0))(
  ( (Nil!4821) (Cons!4820 (h!5676 (_ BitVec 64)) (t!9930 List!4824)) )
))
(declare-fun arrayNoDuplicates!0 (array!17697 (_ BitVec 32) List!4824) Bool)

(assert (=> b!338309 (= res!186944 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4821))))

(declare-fun mapNonEmpty!12009 () Bool)

(declare-fun mapRes!12009 () Bool)

(declare-fun tp!24857 () Bool)

(declare-fun e!207588 () Bool)

(assert (=> mapNonEmpty!12009 (= mapRes!12009 (and tp!24857 e!207588))))

(declare-datatypes ((V!10397 0))(
  ( (V!10398 (val!3577 Int)) )
))
(declare-datatypes ((ValueCell!3189 0))(
  ( (ValueCellFull!3189 (v!5740 V!10397)) (EmptyCell!3189) )
))
(declare-fun mapRest!12009 () (Array (_ BitVec 32) ValueCell!3189))

(declare-fun mapKey!12009 () (_ BitVec 32))

(declare-datatypes ((array!17699 0))(
  ( (array!17700 (arr!8372 (Array (_ BitVec 32) ValueCell!3189)) (size!8724 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17699)

(declare-fun mapValue!12009 () ValueCell!3189)

(assert (=> mapNonEmpty!12009 (= (arr!8372 _values!1525) (store mapRest!12009 mapKey!12009 mapValue!12009))))

(declare-fun b!338310 () Bool)

(declare-fun res!186946 () Bool)

(assert (=> b!338310 (=> (not res!186946) (not e!207592))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17697 (_ BitVec 32)) Bool)

(assert (=> b!338310 (= res!186946 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!338311 () Bool)

(declare-fun e!207593 () Bool)

(declare-fun e!207589 () Bool)

(assert (=> b!338311 (= e!207593 (and e!207589 mapRes!12009))))

(declare-fun condMapEmpty!12009 () Bool)

(declare-fun mapDefault!12009 () ValueCell!3189)

(assert (=> b!338311 (= condMapEmpty!12009 (= (arr!8372 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3189)) mapDefault!12009)))))

(declare-fun b!338312 () Bool)

(declare-fun lt!160788 () Bool)

(declare-fun e!207590 () Bool)

(assert (=> b!338312 (= e!207590 (and (not lt!160788) (not (= (size!8723 _keys!1895) (bvadd #b00000000000000000000000000000001 mask!2385)))))))

(declare-datatypes ((Unit!10500 0))(
  ( (Unit!10501) )
))
(declare-fun lt!160789 () Unit!10500)

(declare-fun e!207591 () Unit!10500)

(assert (=> b!338312 (= lt!160789 e!207591)))

(declare-fun c!52352 () Bool)

(assert (=> b!338312 (= c!52352 lt!160788)))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17697 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!338312 (= lt!160788 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!338313 () Bool)

(declare-fun Unit!10502 () Unit!10500)

(assert (=> b!338313 (= e!207591 Unit!10502)))

(declare-fun b!338314 () Bool)

(declare-fun Unit!10503 () Unit!10500)

(assert (=> b!338314 (= e!207591 Unit!10503)))

(declare-fun zeroValue!1467 () V!10397)

(declare-fun defaultEntry!1528 () Int)

(declare-fun lt!160791 () Unit!10500)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10397)

(declare-fun lemmaArrayContainsKeyThenInListMap!270 (array!17697 array!17699 (_ BitVec 32) (_ BitVec 32) V!10397 V!10397 (_ BitVec 64) (_ BitVec 32) Int) Unit!10500)

(declare-fun arrayScanForKey!0 (array!17697 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!338314 (= lt!160791 (lemmaArrayContainsKeyThenInListMap!270 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!338314 false))

(declare-fun b!338315 () Bool)

(declare-fun tp_is_empty!7065 () Bool)

(assert (=> b!338315 (= e!207589 tp_is_empty!7065)))

(declare-fun mapIsEmpty!12009 () Bool)

(assert (=> mapIsEmpty!12009 mapRes!12009))

(declare-fun b!338316 () Bool)

(assert (=> b!338316 (= e!207592 e!207590)))

(declare-fun res!186948 () Bool)

(assert (=> b!338316 (=> (not res!186948) (not e!207590))))

(declare-datatypes ((SeekEntryResult!3237 0))(
  ( (MissingZero!3237 (index!15127 (_ BitVec 32))) (Found!3237 (index!15128 (_ BitVec 32))) (Intermediate!3237 (undefined!4049 Bool) (index!15129 (_ BitVec 32)) (x!33720 (_ BitVec 32))) (Undefined!3237) (MissingVacant!3237 (index!15130 (_ BitVec 32))) )
))
(declare-fun lt!160790 () SeekEntryResult!3237)

(get-info :version)

(assert (=> b!338316 (= res!186948 (and (not ((_ is Found!3237) lt!160790)) ((_ is MissingZero!3237) lt!160790)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17697 (_ BitVec 32)) SeekEntryResult!3237)

(assert (=> b!338316 (= lt!160790 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!338317 () Bool)

(assert (=> b!338317 (= e!207588 tp_is_empty!7065)))

(declare-fun b!338318 () Bool)

(declare-fun res!186950 () Bool)

(assert (=> b!338318 (=> (not res!186950) (not e!207592))))

(declare-datatypes ((tuple2!5184 0))(
  ( (tuple2!5185 (_1!2602 (_ BitVec 64)) (_2!2602 V!10397)) )
))
(declare-datatypes ((List!4825 0))(
  ( (Nil!4822) (Cons!4821 (h!5677 tuple2!5184) (t!9931 List!4825)) )
))
(declare-datatypes ((ListLongMap!4111 0))(
  ( (ListLongMap!4112 (toList!2071 List!4825)) )
))
(declare-fun contains!2116 (ListLongMap!4111 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1591 (array!17697 array!17699 (_ BitVec 32) (_ BitVec 32) V!10397 V!10397 (_ BitVec 32) Int) ListLongMap!4111)

(assert (=> b!338318 (= res!186950 (not (contains!2116 (getCurrentListMap!1591 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!338319 () Bool)

(declare-fun res!186949 () Bool)

(assert (=> b!338319 (=> (not res!186949) (not e!207592))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!338319 (= res!186949 (validKeyInArray!0 k0!1348))))

(declare-fun b!338320 () Bool)

(declare-fun res!186945 () Bool)

(assert (=> b!338320 (=> (not res!186945) (not e!207592))))

(assert (=> b!338320 (= res!186945 (and (= (size!8724 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8723 _keys!1895) (size!8724 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun res!186947 () Bool)

(assert (=> start!33990 (=> (not res!186947) (not e!207592))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33990 (= res!186947 (validMask!0 mask!2385))))

(assert (=> start!33990 e!207592))

(assert (=> start!33990 true))

(assert (=> start!33990 tp_is_empty!7065))

(assert (=> start!33990 tp!24858))

(declare-fun array_inv!6198 (array!17699) Bool)

(assert (=> start!33990 (and (array_inv!6198 _values!1525) e!207593)))

(declare-fun array_inv!6199 (array!17697) Bool)

(assert (=> start!33990 (array_inv!6199 _keys!1895)))

(assert (= (and start!33990 res!186947) b!338320))

(assert (= (and b!338320 res!186945) b!338310))

(assert (= (and b!338310 res!186946) b!338309))

(assert (= (and b!338309 res!186944) b!338319))

(assert (= (and b!338319 res!186949) b!338318))

(assert (= (and b!338318 res!186950) b!338316))

(assert (= (and b!338316 res!186948) b!338312))

(assert (= (and b!338312 c!52352) b!338314))

(assert (= (and b!338312 (not c!52352)) b!338313))

(assert (= (and b!338311 condMapEmpty!12009) mapIsEmpty!12009))

(assert (= (and b!338311 (not condMapEmpty!12009)) mapNonEmpty!12009))

(assert (= (and mapNonEmpty!12009 ((_ is ValueCellFull!3189) mapValue!12009)) b!338317))

(assert (= (and b!338311 ((_ is ValueCellFull!3189) mapDefault!12009)) b!338315))

(assert (= start!33990 b!338311))

(declare-fun m!341583 () Bool)

(assert (=> b!338309 m!341583))

(declare-fun m!341585 () Bool)

(assert (=> b!338310 m!341585))

(declare-fun m!341587 () Bool)

(assert (=> b!338319 m!341587))

(declare-fun m!341589 () Bool)

(assert (=> b!338318 m!341589))

(assert (=> b!338318 m!341589))

(declare-fun m!341591 () Bool)

(assert (=> b!338318 m!341591))

(declare-fun m!341593 () Bool)

(assert (=> start!33990 m!341593))

(declare-fun m!341595 () Bool)

(assert (=> start!33990 m!341595))

(declare-fun m!341597 () Bool)

(assert (=> start!33990 m!341597))

(declare-fun m!341599 () Bool)

(assert (=> b!338316 m!341599))

(declare-fun m!341601 () Bool)

(assert (=> b!338314 m!341601))

(assert (=> b!338314 m!341601))

(declare-fun m!341603 () Bool)

(assert (=> b!338314 m!341603))

(declare-fun m!341605 () Bool)

(assert (=> mapNonEmpty!12009 m!341605))

(declare-fun m!341607 () Bool)

(assert (=> b!338312 m!341607))

(check-sat tp_is_empty!7065 (not b!338319) b_and!14321 (not start!33990) (not b!338314) (not mapNonEmpty!12009) (not b!338310) (not b!338318) (not b!338316) (not b!338312) (not b!338309) (not b_next!7113))
(check-sat b_and!14321 (not b_next!7113))
