; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34852 () Bool)

(assert start!34852)

(declare-fun b_free!7629 () Bool)

(declare-fun b_next!7629 () Bool)

(assert (=> start!34852 (= b_free!7629 (not b_next!7629))))

(declare-fun tp!26454 () Bool)

(declare-fun b_and!14869 () Bool)

(assert (=> start!34852 (= tp!26454 b_and!14869)))

(declare-fun b!348735 () Bool)

(declare-fun e!213642 () Bool)

(assert (=> b!348735 (= e!213642 false)))

(declare-fun lt!163928 () (_ BitVec 32))

(declare-datatypes ((array!18715 0))(
  ( (array!18716 (arr!8864 (Array (_ BitVec 32) (_ BitVec 64))) (size!9216 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18715)

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!18715 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!348735 (= lt!163928 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!348736 () Bool)

(declare-fun res!193333 () Bool)

(declare-fun e!213645 () Bool)

(assert (=> b!348736 (=> (not res!193333) (not e!213645))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18715 (_ BitVec 32)) Bool)

(assert (=> b!348736 (= res!193333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!348737 () Bool)

(declare-fun res!193339 () Bool)

(assert (=> b!348737 (=> (not res!193339) (not e!213645))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!348737 (= res!193339 (validKeyInArray!0 k0!1348))))

(declare-fun b!348738 () Bool)

(declare-fun res!193336 () Bool)

(assert (=> b!348738 (=> (not res!193336) (not e!213645))))

(declare-datatypes ((List!5179 0))(
  ( (Nil!5176) (Cons!5175 (h!6031 (_ BitVec 64)) (t!10317 List!5179)) )
))
(declare-fun arrayNoDuplicates!0 (array!18715 (_ BitVec 32) List!5179) Bool)

(assert (=> b!348738 (= res!193336 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5176))))

(declare-fun b!348739 () Bool)

(declare-fun e!213643 () Bool)

(declare-fun e!213644 () Bool)

(declare-fun mapRes!12831 () Bool)

(assert (=> b!348739 (= e!213643 (and e!213644 mapRes!12831))))

(declare-fun condMapEmpty!12831 () Bool)

(declare-datatypes ((V!11085 0))(
  ( (V!11086 (val!3835 Int)) )
))
(declare-datatypes ((ValueCell!3447 0))(
  ( (ValueCellFull!3447 (v!6014 V!11085)) (EmptyCell!3447) )
))
(declare-datatypes ((array!18717 0))(
  ( (array!18718 (arr!8865 (Array (_ BitVec 32) ValueCell!3447)) (size!9217 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18717)

(declare-fun mapDefault!12831 () ValueCell!3447)

(assert (=> b!348739 (= condMapEmpty!12831 (= (arr!8865 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3447)) mapDefault!12831)))))

(declare-fun b!348740 () Bool)

(declare-fun res!193335 () Bool)

(assert (=> b!348740 (=> (not res!193335) (not e!213642))))

(declare-fun arrayContainsKey!0 (array!18715 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!348740 (= res!193335 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!348741 () Bool)

(assert (=> b!348741 (= e!213645 e!213642)))

(declare-fun res!193334 () Bool)

(assert (=> b!348741 (=> (not res!193334) (not e!213642))))

(declare-datatypes ((SeekEntryResult!3414 0))(
  ( (MissingZero!3414 (index!15835 (_ BitVec 32))) (Found!3414 (index!15836 (_ BitVec 32))) (Intermediate!3414 (undefined!4226 Bool) (index!15837 (_ BitVec 32)) (x!34745 (_ BitVec 32))) (Undefined!3414) (MissingVacant!3414 (index!15838 (_ BitVec 32))) )
))
(declare-fun lt!163929 () SeekEntryResult!3414)

(get-info :version)

(assert (=> b!348741 (= res!193334 (and (not ((_ is Found!3414) lt!163929)) ((_ is MissingZero!3414) lt!163929)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18715 (_ BitVec 32)) SeekEntryResult!3414)

(assert (=> b!348741 (= lt!163929 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!12831 () Bool)

(declare-fun tp!26453 () Bool)

(declare-fun e!213647 () Bool)

(assert (=> mapNonEmpty!12831 (= mapRes!12831 (and tp!26453 e!213647))))

(declare-fun mapRest!12831 () (Array (_ BitVec 32) ValueCell!3447))

(declare-fun mapValue!12831 () ValueCell!3447)

(declare-fun mapKey!12831 () (_ BitVec 32))

(assert (=> mapNonEmpty!12831 (= (arr!8865 _values!1525) (store mapRest!12831 mapKey!12831 mapValue!12831))))

(declare-fun res!193338 () Bool)

(assert (=> start!34852 (=> (not res!193338) (not e!213645))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34852 (= res!193338 (validMask!0 mask!2385))))

(assert (=> start!34852 e!213645))

(assert (=> start!34852 true))

(declare-fun tp_is_empty!7581 () Bool)

(assert (=> start!34852 tp_is_empty!7581))

(assert (=> start!34852 tp!26454))

(declare-fun array_inv!6538 (array!18717) Bool)

(assert (=> start!34852 (and (array_inv!6538 _values!1525) e!213643)))

(declare-fun array_inv!6539 (array!18715) Bool)

(assert (=> start!34852 (array_inv!6539 _keys!1895)))

(declare-fun mapIsEmpty!12831 () Bool)

(assert (=> mapIsEmpty!12831 mapRes!12831))

(declare-fun b!348742 () Bool)

(declare-fun res!193332 () Bool)

(assert (=> b!348742 (=> (not res!193332) (not e!213645))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!348742 (= res!193332 (and (= (size!9217 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9216 _keys!1895) (size!9217 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!348743 () Bool)

(assert (=> b!348743 (= e!213644 tp_is_empty!7581)))

(declare-fun b!348744 () Bool)

(declare-fun res!193337 () Bool)

(assert (=> b!348744 (=> (not res!193337) (not e!213645))))

(declare-fun zeroValue!1467 () V!11085)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!11085)

(declare-datatypes ((tuple2!5538 0))(
  ( (tuple2!5539 (_1!2779 (_ BitVec 64)) (_2!2779 V!11085)) )
))
(declare-datatypes ((List!5180 0))(
  ( (Nil!5177) (Cons!5176 (h!6032 tuple2!5538) (t!10318 List!5180)) )
))
(declare-datatypes ((ListLongMap!4465 0))(
  ( (ListLongMap!4466 (toList!2248 List!5180)) )
))
(declare-fun contains!2309 (ListLongMap!4465 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1765 (array!18715 array!18717 (_ BitVec 32) (_ BitVec 32) V!11085 V!11085 (_ BitVec 32) Int) ListLongMap!4465)

(assert (=> b!348744 (= res!193337 (not (contains!2309 (getCurrentListMap!1765 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!348745 () Bool)

(assert (=> b!348745 (= e!213647 tp_is_empty!7581)))

(assert (= (and start!34852 res!193338) b!348742))

(assert (= (and b!348742 res!193332) b!348736))

(assert (= (and b!348736 res!193333) b!348738))

(assert (= (and b!348738 res!193336) b!348737))

(assert (= (and b!348737 res!193339) b!348744))

(assert (= (and b!348744 res!193337) b!348741))

(assert (= (and b!348741 res!193334) b!348740))

(assert (= (and b!348740 res!193335) b!348735))

(assert (= (and b!348739 condMapEmpty!12831) mapIsEmpty!12831))

(assert (= (and b!348739 (not condMapEmpty!12831)) mapNonEmpty!12831))

(assert (= (and mapNonEmpty!12831 ((_ is ValueCellFull!3447) mapValue!12831)) b!348745))

(assert (= (and b!348739 ((_ is ValueCellFull!3447) mapDefault!12831)) b!348743))

(assert (= start!34852 b!348739))

(declare-fun m!349413 () Bool)

(assert (=> b!348740 m!349413))

(declare-fun m!349415 () Bool)

(assert (=> start!34852 m!349415))

(declare-fun m!349417 () Bool)

(assert (=> start!34852 m!349417))

(declare-fun m!349419 () Bool)

(assert (=> start!34852 m!349419))

(declare-fun m!349421 () Bool)

(assert (=> b!348741 m!349421))

(declare-fun m!349423 () Bool)

(assert (=> b!348744 m!349423))

(assert (=> b!348744 m!349423))

(declare-fun m!349425 () Bool)

(assert (=> b!348744 m!349425))

(declare-fun m!349427 () Bool)

(assert (=> b!348738 m!349427))

(declare-fun m!349429 () Bool)

(assert (=> mapNonEmpty!12831 m!349429))

(declare-fun m!349431 () Bool)

(assert (=> b!348737 m!349431))

(declare-fun m!349433 () Bool)

(assert (=> b!348735 m!349433))

(declare-fun m!349435 () Bool)

(assert (=> b!348736 m!349435))

(check-sat (not b!348737) (not b!348744) b_and!14869 (not b!348741) (not b_next!7629) tp_is_empty!7581 (not b!348738) (not b!348740) (not mapNonEmpty!12831) (not start!34852) (not b!348735) (not b!348736))
(check-sat b_and!14869 (not b_next!7629))
