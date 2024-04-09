; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33978 () Bool)

(assert start!33978)

(declare-fun b_free!7101 () Bool)

(declare-fun b_next!7101 () Bool)

(assert (=> start!33978 (= b_free!7101 (not b_next!7101))))

(declare-fun tp!24822 () Bool)

(declare-fun b_and!14309 () Bool)

(assert (=> start!33978 (= tp!24822 b_and!14309)))

(declare-fun b!338093 () Bool)

(declare-datatypes ((Unit!10479 0))(
  ( (Unit!10480) )
))
(declare-fun e!207468 () Unit!10479)

(declare-fun Unit!10481 () Unit!10479)

(assert (=> b!338093 (= e!207468 Unit!10481)))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((V!10381 0))(
  ( (V!10382 (val!3571 Int)) )
))
(declare-fun zeroValue!1467 () V!10381)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3183 0))(
  ( (ValueCellFull!3183 (v!5734 V!10381)) (EmptyCell!3183) )
))
(declare-datatypes ((array!17673 0))(
  ( (array!17674 (arr!8359 (Array (_ BitVec 32) ValueCell!3183)) (size!8711 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17673)

(declare-datatypes ((array!17675 0))(
  ( (array!17676 (arr!8360 (Array (_ BitVec 32) (_ BitVec 64))) (size!8712 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17675)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun lt!160730 () Unit!10479)

(declare-fun minValue!1467 () V!10381)

(declare-fun lemmaArrayContainsKeyThenInListMap!266 (array!17675 array!17673 (_ BitVec 32) (_ BitVec 32) V!10381 V!10381 (_ BitVec 64) (_ BitVec 32) Int) Unit!10479)

(declare-fun arrayScanForKey!0 (array!17675 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!338093 (= lt!160730 (lemmaArrayContainsKeyThenInListMap!266 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!338093 false))

(declare-fun b!338094 () Bool)

(declare-fun e!207462 () Bool)

(declare-fun tp_is_empty!7053 () Bool)

(assert (=> b!338094 (= e!207462 tp_is_empty!7053)))

(declare-fun mapNonEmpty!11991 () Bool)

(declare-fun mapRes!11991 () Bool)

(declare-fun tp!24821 () Bool)

(declare-fun e!207467 () Bool)

(assert (=> mapNonEmpty!11991 (= mapRes!11991 (and tp!24821 e!207467))))

(declare-fun mapRest!11991 () (Array (_ BitVec 32) ValueCell!3183))

(declare-fun mapKey!11991 () (_ BitVec 32))

(declare-fun mapValue!11991 () ValueCell!3183)

(assert (=> mapNonEmpty!11991 (= (arr!8359 _values!1525) (store mapRest!11991 mapKey!11991 mapValue!11991))))

(declare-fun b!338095 () Bool)

(declare-fun Unit!10482 () Unit!10479)

(assert (=> b!338095 (= e!207468 Unit!10482)))

(declare-fun b!338096 () Bool)

(assert (=> b!338096 (= e!207467 tp_is_empty!7053)))

(declare-fun b!338097 () Bool)

(declare-fun e!207463 () Bool)

(declare-fun e!207464 () Bool)

(assert (=> b!338097 (= e!207463 e!207464)))

(declare-fun res!186821 () Bool)

(assert (=> b!338097 (=> (not res!186821) (not e!207464))))

(declare-datatypes ((SeekEntryResult!3233 0))(
  ( (MissingZero!3233 (index!15111 (_ BitVec 32))) (Found!3233 (index!15112 (_ BitVec 32))) (Intermediate!3233 (undefined!4045 Bool) (index!15113 (_ BitVec 32)) (x!33700 (_ BitVec 32))) (Undefined!3233) (MissingVacant!3233 (index!15114 (_ BitVec 32))) )
))
(declare-fun lt!160729 () SeekEntryResult!3233)

(get-info :version)

(assert (=> b!338097 (= res!186821 (and (not ((_ is Found!3233) lt!160729)) ((_ is MissingZero!3233) lt!160729)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17675 (_ BitVec 32)) SeekEntryResult!3233)

(assert (=> b!338097 (= lt!160729 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!338099 () Bool)

(declare-fun res!186822 () Bool)

(assert (=> b!338099 (=> (not res!186822) (not e!207463))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!338099 (= res!186822 (validKeyInArray!0 k0!1348))))

(declare-fun b!338100 () Bool)

(declare-fun res!186820 () Bool)

(assert (=> b!338100 (=> (not res!186820) (not e!207463))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17675 (_ BitVec 32)) Bool)

(assert (=> b!338100 (= res!186820 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!338101 () Bool)

(declare-fun res!186818 () Bool)

(assert (=> b!338101 (=> (not res!186818) (not e!207463))))

(declare-datatypes ((List!4817 0))(
  ( (Nil!4814) (Cons!4813 (h!5669 (_ BitVec 64)) (t!9923 List!4817)) )
))
(declare-fun arrayNoDuplicates!0 (array!17675 (_ BitVec 32) List!4817) Bool)

(assert (=> b!338101 (= res!186818 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4814))))

(declare-fun b!338102 () Bool)

(assert (=> b!338102 (= e!207464 false)))

(declare-fun lt!160731 () Unit!10479)

(assert (=> b!338102 (= lt!160731 e!207468)))

(declare-fun c!52334 () Bool)

(declare-fun arrayContainsKey!0 (array!17675 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!338102 (= c!52334 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!11991 () Bool)

(assert (=> mapIsEmpty!11991 mapRes!11991))

(declare-fun b!338103 () Bool)

(declare-fun res!186824 () Bool)

(assert (=> b!338103 (=> (not res!186824) (not e!207463))))

(assert (=> b!338103 (= res!186824 (and (= (size!8711 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8712 _keys!1895) (size!8711 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!338104 () Bool)

(declare-fun e!207465 () Bool)

(assert (=> b!338104 (= e!207465 (and e!207462 mapRes!11991))))

(declare-fun condMapEmpty!11991 () Bool)

(declare-fun mapDefault!11991 () ValueCell!3183)

(assert (=> b!338104 (= condMapEmpty!11991 (= (arr!8359 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3183)) mapDefault!11991)))))

(declare-fun b!338098 () Bool)

(declare-fun res!186823 () Bool)

(assert (=> b!338098 (=> (not res!186823) (not e!207463))))

(declare-datatypes ((tuple2!5178 0))(
  ( (tuple2!5179 (_1!2599 (_ BitVec 64)) (_2!2599 V!10381)) )
))
(declare-datatypes ((List!4818 0))(
  ( (Nil!4815) (Cons!4814 (h!5670 tuple2!5178) (t!9924 List!4818)) )
))
(declare-datatypes ((ListLongMap!4105 0))(
  ( (ListLongMap!4106 (toList!2068 List!4818)) )
))
(declare-fun contains!2113 (ListLongMap!4105 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1588 (array!17675 array!17673 (_ BitVec 32) (_ BitVec 32) V!10381 V!10381 (_ BitVec 32) Int) ListLongMap!4105)

(assert (=> b!338098 (= res!186823 (not (contains!2113 (getCurrentListMap!1588 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun res!186819 () Bool)

(assert (=> start!33978 (=> (not res!186819) (not e!207463))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33978 (= res!186819 (validMask!0 mask!2385))))

(assert (=> start!33978 e!207463))

(assert (=> start!33978 true))

(assert (=> start!33978 tp_is_empty!7053))

(assert (=> start!33978 tp!24822))

(declare-fun array_inv!6190 (array!17673) Bool)

(assert (=> start!33978 (and (array_inv!6190 _values!1525) e!207465)))

(declare-fun array_inv!6191 (array!17675) Bool)

(assert (=> start!33978 (array_inv!6191 _keys!1895)))

(assert (= (and start!33978 res!186819) b!338103))

(assert (= (and b!338103 res!186824) b!338100))

(assert (= (and b!338100 res!186820) b!338101))

(assert (= (and b!338101 res!186818) b!338099))

(assert (= (and b!338099 res!186822) b!338098))

(assert (= (and b!338098 res!186823) b!338097))

(assert (= (and b!338097 res!186821) b!338102))

(assert (= (and b!338102 c!52334) b!338093))

(assert (= (and b!338102 (not c!52334)) b!338095))

(assert (= (and b!338104 condMapEmpty!11991) mapIsEmpty!11991))

(assert (= (and b!338104 (not condMapEmpty!11991)) mapNonEmpty!11991))

(assert (= (and mapNonEmpty!11991 ((_ is ValueCellFull!3183) mapValue!11991)) b!338096))

(assert (= (and b!338104 ((_ is ValueCellFull!3183) mapDefault!11991)) b!338094))

(assert (= start!33978 b!338104))

(declare-fun m!341427 () Bool)

(assert (=> b!338101 m!341427))

(declare-fun m!341429 () Bool)

(assert (=> b!338102 m!341429))

(declare-fun m!341431 () Bool)

(assert (=> b!338093 m!341431))

(assert (=> b!338093 m!341431))

(declare-fun m!341433 () Bool)

(assert (=> b!338093 m!341433))

(declare-fun m!341435 () Bool)

(assert (=> mapNonEmpty!11991 m!341435))

(declare-fun m!341437 () Bool)

(assert (=> b!338100 m!341437))

(declare-fun m!341439 () Bool)

(assert (=> b!338097 m!341439))

(declare-fun m!341441 () Bool)

(assert (=> b!338098 m!341441))

(assert (=> b!338098 m!341441))

(declare-fun m!341443 () Bool)

(assert (=> b!338098 m!341443))

(declare-fun m!341445 () Bool)

(assert (=> b!338099 m!341445))

(declare-fun m!341447 () Bool)

(assert (=> start!33978 m!341447))

(declare-fun m!341449 () Bool)

(assert (=> start!33978 m!341449))

(declare-fun m!341451 () Bool)

(assert (=> start!33978 m!341451))

(check-sat (not start!33978) (not b!338097) (not b!338098) (not b!338100) (not mapNonEmpty!11991) (not b!338099) (not b!338093) b_and!14309 (not b_next!7101) tp_is_empty!7053 (not b!338102) (not b!338101))
(check-sat b_and!14309 (not b_next!7101))
