; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35562 () Bool)

(assert start!35562)

(declare-fun b!356125 () Bool)

(declare-fun res!197655 () Bool)

(declare-fun e!218236 () Bool)

(assert (=> b!356125 (=> (not res!197655) (not e!218236))))

(declare-fun k0!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!356125 (= res!197655 (validKeyInArray!0 k0!1077))))

(declare-fun b!356126 () Bool)

(declare-fun res!197662 () Bool)

(assert (=> b!356126 (=> (not res!197662) (not e!218236))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((array!19553 0))(
  ( (array!19554 (arr!9267 (Array (_ BitVec 32) (_ BitVec 64))) (size!9619 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19553)

(assert (=> b!356126 (= res!197662 (not (= (select (arr!9267 _keys!1456) from!1805) k0!1077)))))

(declare-fun b!356127 () Bool)

(declare-fun res!197659 () Bool)

(assert (=> b!356127 (=> (not res!197659) (not e!218236))))

(declare-fun arrayContainsKey!0 (array!19553 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!356127 (= res!197659 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun mapIsEmpty!13518 () Bool)

(declare-fun mapRes!13518 () Bool)

(assert (=> mapIsEmpty!13518 mapRes!13518))

(declare-fun b!356128 () Bool)

(assert (=> b!356128 (= e!218236 (not true))))

(assert (=> b!356128 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-datatypes ((V!11653 0))(
  ( (V!11654 (val!4048 Int)) )
))
(declare-fun minValue!1150 () V!11653)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((ValueCell!3660 0))(
  ( (ValueCellFull!3660 (v!6238 V!11653)) (EmptyCell!3660) )
))
(declare-datatypes ((array!19555 0))(
  ( (array!19556 (arr!9268 (Array (_ BitVec 32) ValueCell!3660)) (size!9620 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19555)

(declare-datatypes ((Unit!10965 0))(
  ( (Unit!10966) )
))
(declare-fun lt!165886 () Unit!10965)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11653)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!3 (array!19553 array!19555 (_ BitVec 32) (_ BitVec 32) V!11653 V!11653 (_ BitVec 64) (_ BitVec 32)) Unit!10965)

(assert (=> b!356128 (= lt!165886 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!3 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(declare-fun b!356129 () Bool)

(declare-fun res!197657 () Bool)

(assert (=> b!356129 (=> (not res!197657) (not e!218236))))

(assert (=> b!356129 (= res!197657 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9619 _keys!1456))))))

(declare-fun b!356130 () Bool)

(declare-fun res!197661 () Bool)

(assert (=> b!356130 (=> (not res!197661) (not e!218236))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19553 (_ BitVec 32)) Bool)

(assert (=> b!356130 (= res!197661 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun mapNonEmpty!13518 () Bool)

(declare-fun tp!27495 () Bool)

(declare-fun e!218237 () Bool)

(assert (=> mapNonEmpty!13518 (= mapRes!13518 (and tp!27495 e!218237))))

(declare-fun mapValue!13518 () ValueCell!3660)

(declare-fun mapKey!13518 () (_ BitVec 32))

(declare-fun mapRest!13518 () (Array (_ BitVec 32) ValueCell!3660))

(assert (=> mapNonEmpty!13518 (= (arr!9268 _values!1208) (store mapRest!13518 mapKey!13518 mapValue!13518))))

(declare-fun b!356131 () Bool)

(declare-fun res!197656 () Bool)

(assert (=> b!356131 (=> (not res!197656) (not e!218236))))

(assert (=> b!356131 (= res!197656 (and (= (size!9620 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9619 _keys!1456) (size!9620 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!356132 () Bool)

(declare-fun e!218239 () Bool)

(declare-fun e!218238 () Bool)

(assert (=> b!356132 (= e!218239 (and e!218238 mapRes!13518))))

(declare-fun condMapEmpty!13518 () Bool)

(declare-fun mapDefault!13518 () ValueCell!3660)

(assert (=> b!356132 (= condMapEmpty!13518 (= (arr!9268 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3660)) mapDefault!13518)))))

(declare-fun b!356133 () Bool)

(declare-fun res!197658 () Bool)

(assert (=> b!356133 (=> (not res!197658) (not e!218236))))

(declare-datatypes ((List!5387 0))(
  ( (Nil!5384) (Cons!5383 (h!6239 (_ BitVec 64)) (t!10545 List!5387)) )
))
(declare-fun arrayNoDuplicates!0 (array!19553 (_ BitVec 32) List!5387) Bool)

(assert (=> b!356133 (= res!197658 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5384))))

(declare-fun b!356134 () Bool)

(declare-fun tp_is_empty!8007 () Bool)

(assert (=> b!356134 (= e!218237 tp_is_empty!8007)))

(declare-fun b!356135 () Bool)

(assert (=> b!356135 (= e!218238 tp_is_empty!8007)))

(declare-fun res!197660 () Bool)

(assert (=> start!35562 (=> (not res!197660) (not e!218236))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35562 (= res!197660 (validMask!0 mask!1842))))

(assert (=> start!35562 e!218236))

(assert (=> start!35562 tp_is_empty!8007))

(assert (=> start!35562 true))

(declare-fun array_inv!6822 (array!19553) Bool)

(assert (=> start!35562 (array_inv!6822 _keys!1456)))

(declare-fun array_inv!6823 (array!19555) Bool)

(assert (=> start!35562 (and (array_inv!6823 _values!1208) e!218239)))

(assert (= (and start!35562 res!197660) b!356131))

(assert (= (and b!356131 res!197656) b!356130))

(assert (= (and b!356130 res!197661) b!356133))

(assert (= (and b!356133 res!197658) b!356125))

(assert (= (and b!356125 res!197655) b!356129))

(assert (= (and b!356129 res!197657) b!356127))

(assert (= (and b!356127 res!197659) b!356126))

(assert (= (and b!356126 res!197662) b!356128))

(assert (= (and b!356132 condMapEmpty!13518) mapIsEmpty!13518))

(assert (= (and b!356132 (not condMapEmpty!13518)) mapNonEmpty!13518))

(get-info :version)

(assert (= (and mapNonEmpty!13518 ((_ is ValueCellFull!3660) mapValue!13518)) b!356134))

(assert (= (and b!356132 ((_ is ValueCellFull!3660) mapDefault!13518)) b!356135))

(assert (= start!35562 b!356132))

(declare-fun m!354601 () Bool)

(assert (=> b!356126 m!354601))

(declare-fun m!354603 () Bool)

(assert (=> b!356133 m!354603))

(declare-fun m!354605 () Bool)

(assert (=> b!356128 m!354605))

(declare-fun m!354607 () Bool)

(assert (=> b!356128 m!354607))

(declare-fun m!354609 () Bool)

(assert (=> b!356130 m!354609))

(declare-fun m!354611 () Bool)

(assert (=> b!356127 m!354611))

(declare-fun m!354613 () Bool)

(assert (=> start!35562 m!354613))

(declare-fun m!354615 () Bool)

(assert (=> start!35562 m!354615))

(declare-fun m!354617 () Bool)

(assert (=> start!35562 m!354617))

(declare-fun m!354619 () Bool)

(assert (=> b!356125 m!354619))

(declare-fun m!354621 () Bool)

(assert (=> mapNonEmpty!13518 m!354621))

(check-sat (not start!35562) (not b!356127) (not b!356133) (not b!356125) (not b!356130) tp_is_empty!8007 (not b!356128) (not mapNonEmpty!13518))
(check-sat)
