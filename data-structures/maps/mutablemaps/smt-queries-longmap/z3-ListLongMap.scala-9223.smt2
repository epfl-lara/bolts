; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110724 () Bool)

(assert start!110724)

(declare-fun b_free!29523 () Bool)

(declare-fun b_next!29523 () Bool)

(assert (=> start!110724 (= b_free!29523 (not b_next!29523))))

(declare-fun tp!103891 () Bool)

(declare-fun b_and!47741 () Bool)

(assert (=> start!110724 (= tp!103891 b_and!47741)))

(declare-fun b!1309658 () Bool)

(declare-fun res!869476 () Bool)

(declare-fun e!747257 () Bool)

(assert (=> b!1309658 (=> (not res!869476) (not e!747257))))

(declare-datatypes ((array!87463 0))(
  ( (array!87464 (arr!42207 (Array (_ BitVec 32) (_ BitVec 64))) (size!42758 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87463)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1309658 (= res!869476 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42758 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1309659 () Bool)

(assert (=> b!1309659 (= e!747257 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52107 0))(
  ( (V!52108 (val!17701 Int)) )
))
(declare-fun minValue!1296 () V!52107)

(declare-datatypes ((ValueCell!16728 0))(
  ( (ValueCellFull!16728 (v!20326 V!52107)) (EmptyCell!16728) )
))
(declare-datatypes ((array!87465 0))(
  ( (array!87466 (arr!42208 (Array (_ BitVec 32) ValueCell!16728)) (size!42759 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87465)

(declare-fun zeroValue!1296 () V!52107)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((tuple2!22966 0))(
  ( (tuple2!22967 (_1!11493 (_ BitVec 64)) (_2!11493 V!52107)) )
))
(declare-datatypes ((List!30132 0))(
  ( (Nil!30129) (Cons!30128 (h!31337 tuple2!22966) (t!43745 List!30132)) )
))
(declare-datatypes ((ListLongMap!20635 0))(
  ( (ListLongMap!20636 (toList!10333 List!30132)) )
))
(declare-fun contains!8419 (ListLongMap!20635 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5289 (array!87463 array!87465 (_ BitVec 32) (_ BitVec 32) V!52107 V!52107 (_ BitVec 32) Int) ListLongMap!20635)

(assert (=> b!1309659 (contains!8419 (getCurrentListMap!5289 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k0!1175)))

(declare-datatypes ((Unit!43256 0))(
  ( (Unit!43257) )
))
(declare-fun lt!585235 () Unit!43256)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!2 (array!87463 array!87465 (_ BitVec 32) (_ BitVec 32) V!52107 V!52107 (_ BitVec 64) (_ BitVec 32) Int) Unit!43256)

(assert (=> b!1309659 (= lt!585235 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!2 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k0!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1309660 () Bool)

(declare-fun e!747258 () Bool)

(declare-fun e!747259 () Bool)

(declare-fun mapRes!54508 () Bool)

(assert (=> b!1309660 (= e!747258 (and e!747259 mapRes!54508))))

(declare-fun condMapEmpty!54508 () Bool)

(declare-fun mapDefault!54508 () ValueCell!16728)

(assert (=> b!1309660 (= condMapEmpty!54508 (= (arr!42208 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16728)) mapDefault!54508)))))

(declare-fun b!1309661 () Bool)

(declare-fun res!869473 () Bool)

(assert (=> b!1309661 (=> (not res!869473) (not e!747257))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87463 (_ BitVec 32)) Bool)

(assert (=> b!1309661 (= res!869473 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapNonEmpty!54508 () Bool)

(declare-fun tp!103892 () Bool)

(declare-fun e!747260 () Bool)

(assert (=> mapNonEmpty!54508 (= mapRes!54508 (and tp!103892 e!747260))))

(declare-fun mapKey!54508 () (_ BitVec 32))

(declare-fun mapRest!54508 () (Array (_ BitVec 32) ValueCell!16728))

(declare-fun mapValue!54508 () ValueCell!16728)

(assert (=> mapNonEmpty!54508 (= (arr!42208 _values!1354) (store mapRest!54508 mapKey!54508 mapValue!54508))))

(declare-fun b!1309662 () Bool)

(declare-fun res!869474 () Bool)

(assert (=> b!1309662 (=> (not res!869474) (not e!747257))))

(assert (=> b!1309662 (= res!869474 (not (= (select (arr!42207 _keys!1628) from!2020) k0!1175)))))

(declare-fun b!1309663 () Bool)

(declare-fun res!869469 () Bool)

(assert (=> b!1309663 (=> (not res!869469) (not e!747257))))

(assert (=> b!1309663 (= res!869469 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!869471 () Bool)

(assert (=> start!110724 (=> (not res!869471) (not e!747257))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110724 (= res!869471 (validMask!0 mask!2040))))

(assert (=> start!110724 e!747257))

(assert (=> start!110724 tp!103891))

(declare-fun array_inv!31891 (array!87463) Bool)

(assert (=> start!110724 (array_inv!31891 _keys!1628)))

(assert (=> start!110724 true))

(declare-fun tp_is_empty!35253 () Bool)

(assert (=> start!110724 tp_is_empty!35253))

(declare-fun array_inv!31892 (array!87465) Bool)

(assert (=> start!110724 (and (array_inv!31892 _values!1354) e!747258)))

(declare-fun b!1309664 () Bool)

(assert (=> b!1309664 (= e!747260 tp_is_empty!35253)))

(declare-fun b!1309665 () Bool)

(declare-fun res!869475 () Bool)

(assert (=> b!1309665 (=> (not res!869475) (not e!747257))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1309665 (= res!869475 (validKeyInArray!0 (select (arr!42207 _keys!1628) from!2020)))))

(declare-fun mapIsEmpty!54508 () Bool)

(assert (=> mapIsEmpty!54508 mapRes!54508))

(declare-fun b!1309666 () Bool)

(declare-fun res!869477 () Bool)

(assert (=> b!1309666 (=> (not res!869477) (not e!747257))))

(assert (=> b!1309666 (= res!869477 (and (= (size!42759 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42758 _keys!1628) (size!42759 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1309667 () Bool)

(declare-fun res!869470 () Bool)

(assert (=> b!1309667 (=> (not res!869470) (not e!747257))))

(declare-datatypes ((List!30133 0))(
  ( (Nil!30130) (Cons!30129 (h!31338 (_ BitVec 64)) (t!43746 List!30133)) )
))
(declare-fun arrayNoDuplicates!0 (array!87463 (_ BitVec 32) List!30133) Bool)

(assert (=> b!1309667 (= res!869470 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30130))))

(declare-fun b!1309668 () Bool)

(declare-fun res!869472 () Bool)

(assert (=> b!1309668 (=> (not res!869472) (not e!747257))))

(assert (=> b!1309668 (= res!869472 (contains!8419 (getCurrentListMap!5289 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1309669 () Bool)

(assert (=> b!1309669 (= e!747259 tp_is_empty!35253)))

(assert (= (and start!110724 res!869471) b!1309666))

(assert (= (and b!1309666 res!869477) b!1309661))

(assert (= (and b!1309661 res!869473) b!1309667))

(assert (= (and b!1309667 res!869470) b!1309658))

(assert (= (and b!1309658 res!869476) b!1309668))

(assert (= (and b!1309668 res!869472) b!1309662))

(assert (= (and b!1309662 res!869474) b!1309665))

(assert (= (and b!1309665 res!869475) b!1309663))

(assert (= (and b!1309663 res!869469) b!1309659))

(assert (= (and b!1309660 condMapEmpty!54508) mapIsEmpty!54508))

(assert (= (and b!1309660 (not condMapEmpty!54508)) mapNonEmpty!54508))

(get-info :version)

(assert (= (and mapNonEmpty!54508 ((_ is ValueCellFull!16728) mapValue!54508)) b!1309664))

(assert (= (and b!1309660 ((_ is ValueCellFull!16728) mapDefault!54508)) b!1309669))

(assert (= start!110724 b!1309660))

(declare-fun m!1199669 () Bool)

(assert (=> mapNonEmpty!54508 m!1199669))

(declare-fun m!1199671 () Bool)

(assert (=> b!1309665 m!1199671))

(assert (=> b!1309665 m!1199671))

(declare-fun m!1199673 () Bool)

(assert (=> b!1309665 m!1199673))

(declare-fun m!1199675 () Bool)

(assert (=> b!1309668 m!1199675))

(assert (=> b!1309668 m!1199675))

(declare-fun m!1199677 () Bool)

(assert (=> b!1309668 m!1199677))

(declare-fun m!1199679 () Bool)

(assert (=> b!1309667 m!1199679))

(declare-fun m!1199681 () Bool)

(assert (=> b!1309659 m!1199681))

(assert (=> b!1309659 m!1199681))

(declare-fun m!1199683 () Bool)

(assert (=> b!1309659 m!1199683))

(declare-fun m!1199685 () Bool)

(assert (=> b!1309659 m!1199685))

(declare-fun m!1199687 () Bool)

(assert (=> b!1309661 m!1199687))

(declare-fun m!1199689 () Bool)

(assert (=> start!110724 m!1199689))

(declare-fun m!1199691 () Bool)

(assert (=> start!110724 m!1199691))

(declare-fun m!1199693 () Bool)

(assert (=> start!110724 m!1199693))

(assert (=> b!1309662 m!1199671))

(check-sat b_and!47741 (not b!1309667) (not b!1309661) (not b!1309665) (not mapNonEmpty!54508) (not b!1309659) (not b!1309668) tp_is_empty!35253 (not b_next!29523) (not start!110724))
(check-sat b_and!47741 (not b_next!29523))
