; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35598 () Bool)

(assert start!35598)

(declare-fun b!356720 () Bool)

(declare-fun res!198091 () Bool)

(declare-fun e!218506 () Bool)

(assert (=> b!356720 (=> (not res!198091) (not e!218506))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!19621 0))(
  ( (array!19622 (arr!9301 (Array (_ BitVec 32) (_ BitVec 64))) (size!9653 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19621)

(declare-datatypes ((V!11701 0))(
  ( (V!11702 (val!4066 Int)) )
))
(declare-datatypes ((ValueCell!3678 0))(
  ( (ValueCellFull!3678 (v!6256 V!11701)) (EmptyCell!3678) )
))
(declare-datatypes ((array!19623 0))(
  ( (array!19624 (arr!9302 (Array (_ BitVec 32) ValueCell!3678)) (size!9654 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19623)

(assert (=> b!356720 (= res!198091 (and (= (size!9654 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9653 _keys!1456) (size!9654 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!356721 () Bool)

(assert (=> b!356721 (= e!218506 (not true))))

(declare-fun k0!1077 () (_ BitVec 64))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!19621 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!356721 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun minValue!1150 () V!11701)

(declare-fun zeroValue!1150 () V!11701)

(declare-datatypes ((Unit!10991 0))(
  ( (Unit!10992) )
))
(declare-fun lt!165940 () Unit!10991)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!16 (array!19621 array!19623 (_ BitVec 32) (_ BitVec 32) V!11701 V!11701 (_ BitVec 64) (_ BitVec 32)) Unit!10991)

(assert (=> b!356721 (= lt!165940 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!16 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(declare-fun b!356722 () Bool)

(declare-fun res!198088 () Bool)

(assert (=> b!356722 (=> (not res!198088) (not e!218506))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!356722 (= res!198088 (validKeyInArray!0 k0!1077))))

(declare-fun mapIsEmpty!13572 () Bool)

(declare-fun mapRes!13572 () Bool)

(assert (=> mapIsEmpty!13572 mapRes!13572))

(declare-fun b!356723 () Bool)

(declare-fun res!198092 () Bool)

(assert (=> b!356723 (=> (not res!198092) (not e!218506))))

(assert (=> b!356723 (= res!198092 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9653 _keys!1456))))))

(declare-fun mapNonEmpty!13572 () Bool)

(declare-fun tp!27549 () Bool)

(declare-fun e!218509 () Bool)

(assert (=> mapNonEmpty!13572 (= mapRes!13572 (and tp!27549 e!218509))))

(declare-fun mapKey!13572 () (_ BitVec 32))

(declare-fun mapValue!13572 () ValueCell!3678)

(declare-fun mapRest!13572 () (Array (_ BitVec 32) ValueCell!3678))

(assert (=> mapNonEmpty!13572 (= (arr!9302 _values!1208) (store mapRest!13572 mapKey!13572 mapValue!13572))))

(declare-fun b!356724 () Bool)

(declare-fun res!198090 () Bool)

(assert (=> b!356724 (=> (not res!198090) (not e!218506))))

(assert (=> b!356724 (= res!198090 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun b!356725 () Bool)

(declare-fun e!218508 () Bool)

(declare-fun tp_is_empty!8043 () Bool)

(assert (=> b!356725 (= e!218508 tp_is_empty!8043)))

(declare-fun b!356726 () Bool)

(declare-fun res!198089 () Bool)

(assert (=> b!356726 (=> (not res!198089) (not e!218506))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19621 (_ BitVec 32)) Bool)

(assert (=> b!356726 (= res!198089 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!356727 () Bool)

(declare-fun e!218507 () Bool)

(assert (=> b!356727 (= e!218507 (and e!218508 mapRes!13572))))

(declare-fun condMapEmpty!13572 () Bool)

(declare-fun mapDefault!13572 () ValueCell!3678)

(assert (=> b!356727 (= condMapEmpty!13572 (= (arr!9302 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3678)) mapDefault!13572)))))

(declare-fun b!356719 () Bool)

(declare-fun res!198093 () Bool)

(assert (=> b!356719 (=> (not res!198093) (not e!218506))))

(assert (=> b!356719 (= res!198093 (not (= (select (arr!9301 _keys!1456) from!1805) k0!1077)))))

(declare-fun res!198087 () Bool)

(assert (=> start!35598 (=> (not res!198087) (not e!218506))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35598 (= res!198087 (validMask!0 mask!1842))))

(assert (=> start!35598 e!218506))

(assert (=> start!35598 tp_is_empty!8043))

(assert (=> start!35598 true))

(declare-fun array_inv!6848 (array!19621) Bool)

(assert (=> start!35598 (array_inv!6848 _keys!1456)))

(declare-fun array_inv!6849 (array!19623) Bool)

(assert (=> start!35598 (and (array_inv!6849 _values!1208) e!218507)))

(declare-fun b!356728 () Bool)

(declare-fun res!198094 () Bool)

(assert (=> b!356728 (=> (not res!198094) (not e!218506))))

(declare-datatypes ((List!5401 0))(
  ( (Nil!5398) (Cons!5397 (h!6253 (_ BitVec 64)) (t!10559 List!5401)) )
))
(declare-fun arrayNoDuplicates!0 (array!19621 (_ BitVec 32) List!5401) Bool)

(assert (=> b!356728 (= res!198094 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5398))))

(declare-fun b!356729 () Bool)

(assert (=> b!356729 (= e!218509 tp_is_empty!8043)))

(assert (= (and start!35598 res!198087) b!356720))

(assert (= (and b!356720 res!198091) b!356726))

(assert (= (and b!356726 res!198089) b!356728))

(assert (= (and b!356728 res!198094) b!356722))

(assert (= (and b!356722 res!198088) b!356723))

(assert (= (and b!356723 res!198092) b!356724))

(assert (= (and b!356724 res!198090) b!356719))

(assert (= (and b!356719 res!198093) b!356721))

(assert (= (and b!356727 condMapEmpty!13572) mapIsEmpty!13572))

(assert (= (and b!356727 (not condMapEmpty!13572)) mapNonEmpty!13572))

(get-info :version)

(assert (= (and mapNonEmpty!13572 ((_ is ValueCellFull!3678) mapValue!13572)) b!356729))

(assert (= (and b!356727 ((_ is ValueCellFull!3678) mapDefault!13572)) b!356725))

(assert (= start!35598 b!356727))

(declare-fun m!354997 () Bool)

(assert (=> mapNonEmpty!13572 m!354997))

(declare-fun m!354999 () Bool)

(assert (=> b!356728 m!354999))

(declare-fun m!355001 () Bool)

(assert (=> b!356726 m!355001))

(declare-fun m!355003 () Bool)

(assert (=> b!356721 m!355003))

(declare-fun m!355005 () Bool)

(assert (=> b!356721 m!355005))

(declare-fun m!355007 () Bool)

(assert (=> b!356719 m!355007))

(declare-fun m!355009 () Bool)

(assert (=> b!356722 m!355009))

(declare-fun m!355011 () Bool)

(assert (=> start!35598 m!355011))

(declare-fun m!355013 () Bool)

(assert (=> start!35598 m!355013))

(declare-fun m!355015 () Bool)

(assert (=> start!35598 m!355015))

(declare-fun m!355017 () Bool)

(assert (=> b!356724 m!355017))

(check-sat (not b!356721) (not b!356726) (not mapNonEmpty!13572) tp_is_empty!8043 (not start!35598) (not b!356728) (not b!356722) (not b!356724))
(check-sat)
