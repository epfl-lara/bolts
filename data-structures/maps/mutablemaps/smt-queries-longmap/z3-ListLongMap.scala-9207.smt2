; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110628 () Bool)

(assert start!110628)

(declare-fun b_free!29427 () Bool)

(declare-fun b_next!29427 () Bool)

(assert (=> start!110628 (= b_free!29427 (not b_next!29427))))

(declare-fun tp!103603 () Bool)

(declare-fun b_and!47645 () Bool)

(assert (=> start!110628 (= tp!103603 b_and!47645)))

(declare-fun b!1308362 () Bool)

(declare-fun e!746537 () Bool)

(declare-fun e!746540 () Bool)

(declare-fun mapRes!54364 () Bool)

(assert (=> b!1308362 (= e!746537 (and e!746540 mapRes!54364))))

(declare-fun condMapEmpty!54364 () Bool)

(declare-datatypes ((V!51979 0))(
  ( (V!51980 (val!17653 Int)) )
))
(declare-datatypes ((ValueCell!16680 0))(
  ( (ValueCellFull!16680 (v!20278 V!51979)) (EmptyCell!16680) )
))
(declare-datatypes ((array!87281 0))(
  ( (array!87282 (arr!42116 (Array (_ BitVec 32) ValueCell!16680)) (size!42667 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87281)

(declare-fun mapDefault!54364 () ValueCell!16680)

(assert (=> b!1308362 (= condMapEmpty!54364 (= (arr!42116 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16680)) mapDefault!54364)))))

(declare-fun b!1308363 () Bool)

(declare-fun tp_is_empty!35157 () Bool)

(assert (=> b!1308363 (= e!746540 tp_is_empty!35157)))

(declare-fun b!1308364 () Bool)

(declare-fun e!746538 () Bool)

(assert (=> b!1308364 (= e!746538 tp_is_empty!35157)))

(declare-fun b!1308365 () Bool)

(declare-fun res!868608 () Bool)

(declare-fun e!746536 () Bool)

(assert (=> b!1308365 (=> (not res!868608) (not e!746536))))

(declare-datatypes ((array!87283 0))(
  ( (array!87284 (arr!42117 (Array (_ BitVec 32) (_ BitVec 64))) (size!42668 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87283)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87283 (_ BitVec 32)) Bool)

(assert (=> b!1308365 (= res!868608 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1308366 () Bool)

(declare-fun res!868610 () Bool)

(assert (=> b!1308366 (=> (not res!868610) (not e!746536))))

(declare-datatypes ((List!30067 0))(
  ( (Nil!30064) (Cons!30063 (h!31272 (_ BitVec 64)) (t!43680 List!30067)) )
))
(declare-fun arrayNoDuplicates!0 (array!87283 (_ BitVec 32) List!30067) Bool)

(assert (=> b!1308366 (= res!868610 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30064))))

(declare-fun b!1308367 () Bool)

(declare-fun res!868613 () Bool)

(assert (=> b!1308367 (=> (not res!868613) (not e!746536))))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1308367 (= res!868613 (not (= (select (arr!42117 _keys!1628) from!2020) k0!1175)))))

(declare-fun b!1308368 () Bool)

(declare-fun res!868611 () Bool)

(assert (=> b!1308368 (=> (not res!868611) (not e!746536))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1308368 (= res!868611 (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!54364 () Bool)

(declare-fun tp!103604 () Bool)

(assert (=> mapNonEmpty!54364 (= mapRes!54364 (and tp!103604 e!746538))))

(declare-fun mapValue!54364 () ValueCell!16680)

(declare-fun mapRest!54364 () (Array (_ BitVec 32) ValueCell!16680))

(declare-fun mapKey!54364 () (_ BitVec 32))

(assert (=> mapNonEmpty!54364 (= (arr!42116 _values!1354) (store mapRest!54364 mapKey!54364 mapValue!54364))))

(declare-fun b!1308369 () Bool)

(declare-fun res!868606 () Bool)

(assert (=> b!1308369 (=> (not res!868606) (not e!746536))))

(assert (=> b!1308369 (= res!868606 (and (= (size!42667 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42668 _keys!1628) (size!42667 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1308370 () Bool)

(assert (=> b!1308370 (= e!746536 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!51979)

(declare-fun zeroValue!1296 () V!51979)

(declare-datatypes ((tuple2!22894 0))(
  ( (tuple2!22895 (_1!11457 (_ BitVec 64)) (_2!11457 V!51979)) )
))
(declare-datatypes ((List!30068 0))(
  ( (Nil!30065) (Cons!30064 (h!31273 tuple2!22894) (t!43681 List!30068)) )
))
(declare-datatypes ((ListLongMap!20563 0))(
  ( (ListLongMap!20564 (toList!10297 List!30068)) )
))
(declare-fun contains!8383 (ListLongMap!20563 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5253 (array!87283 array!87281 (_ BitVec 32) (_ BitVec 32) V!51979 V!51979 (_ BitVec 32) Int) ListLongMap!20563)

(assert (=> b!1308370 (contains!8383 (getCurrentListMap!5253 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k0!1175)))

(declare-datatypes ((Unit!43242 0))(
  ( (Unit!43243) )
))
(declare-fun lt!585091 () Unit!43242)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!11 (array!87283 array!87281 (_ BitVec 32) (_ BitVec 32) V!51979 V!51979 (_ BitVec 64) (_ BitVec 32) Int) Unit!43242)

(assert (=> b!1308370 (= lt!585091 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!11 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k0!1175 from!2020 defaultEntry!1357))))

(declare-fun res!868607 () Bool)

(assert (=> start!110628 (=> (not res!868607) (not e!746536))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110628 (= res!868607 (validMask!0 mask!2040))))

(assert (=> start!110628 e!746536))

(assert (=> start!110628 tp!103603))

(declare-fun array_inv!31833 (array!87283) Bool)

(assert (=> start!110628 (array_inv!31833 _keys!1628)))

(assert (=> start!110628 true))

(assert (=> start!110628 tp_is_empty!35157))

(declare-fun array_inv!31834 (array!87281) Bool)

(assert (=> start!110628 (and (array_inv!31834 _values!1354) e!746537)))

(declare-fun mapIsEmpty!54364 () Bool)

(assert (=> mapIsEmpty!54364 mapRes!54364))

(declare-fun b!1308371 () Bool)

(declare-fun res!868609 () Bool)

(assert (=> b!1308371 (=> (not res!868609) (not e!746536))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1308371 (= res!868609 (validKeyInArray!0 (select (arr!42117 _keys!1628) from!2020)))))

(declare-fun b!1308372 () Bool)

(declare-fun res!868612 () Bool)

(assert (=> b!1308372 (=> (not res!868612) (not e!746536))))

(assert (=> b!1308372 (= res!868612 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42668 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1308373 () Bool)

(declare-fun res!868605 () Bool)

(assert (=> b!1308373 (=> (not res!868605) (not e!746536))))

(assert (=> b!1308373 (= res!868605 (contains!8383 (getCurrentListMap!5253 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(assert (= (and start!110628 res!868607) b!1308369))

(assert (= (and b!1308369 res!868606) b!1308365))

(assert (= (and b!1308365 res!868608) b!1308366))

(assert (= (and b!1308366 res!868610) b!1308372))

(assert (= (and b!1308372 res!868612) b!1308373))

(assert (= (and b!1308373 res!868605) b!1308367))

(assert (= (and b!1308367 res!868613) b!1308371))

(assert (= (and b!1308371 res!868609) b!1308368))

(assert (= (and b!1308368 res!868611) b!1308370))

(assert (= (and b!1308362 condMapEmpty!54364) mapIsEmpty!54364))

(assert (= (and b!1308362 (not condMapEmpty!54364)) mapNonEmpty!54364))

(get-info :version)

(assert (= (and mapNonEmpty!54364 ((_ is ValueCellFull!16680) mapValue!54364)) b!1308364))

(assert (= (and b!1308362 ((_ is ValueCellFull!16680) mapDefault!54364)) b!1308363))

(assert (= start!110628 b!1308362))

(declare-fun m!1198781 () Bool)

(assert (=> b!1308367 m!1198781))

(declare-fun m!1198783 () Bool)

(assert (=> mapNonEmpty!54364 m!1198783))

(declare-fun m!1198785 () Bool)

(assert (=> start!110628 m!1198785))

(declare-fun m!1198787 () Bool)

(assert (=> start!110628 m!1198787))

(declare-fun m!1198789 () Bool)

(assert (=> start!110628 m!1198789))

(declare-fun m!1198791 () Bool)

(assert (=> b!1308373 m!1198791))

(assert (=> b!1308373 m!1198791))

(declare-fun m!1198793 () Bool)

(assert (=> b!1308373 m!1198793))

(assert (=> b!1308371 m!1198781))

(assert (=> b!1308371 m!1198781))

(declare-fun m!1198795 () Bool)

(assert (=> b!1308371 m!1198795))

(declare-fun m!1198797 () Bool)

(assert (=> b!1308370 m!1198797))

(assert (=> b!1308370 m!1198797))

(declare-fun m!1198799 () Bool)

(assert (=> b!1308370 m!1198799))

(declare-fun m!1198801 () Bool)

(assert (=> b!1308370 m!1198801))

(declare-fun m!1198803 () Bool)

(assert (=> b!1308366 m!1198803))

(declare-fun m!1198805 () Bool)

(assert (=> b!1308365 m!1198805))

(check-sat tp_is_empty!35157 (not b_next!29427) (not mapNonEmpty!54364) (not start!110628) (not b!1308365) (not b!1308366) (not b!1308370) (not b!1308373) b_and!47645 (not b!1308371))
(check-sat b_and!47645 (not b_next!29427))
