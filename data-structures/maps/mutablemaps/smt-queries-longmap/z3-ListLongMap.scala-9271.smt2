; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111012 () Bool)

(assert start!111012)

(declare-fun b_free!29811 () Bool)

(declare-fun b_next!29811 () Bool)

(assert (=> start!111012 (= b_free!29811 (not b_next!29811))))

(declare-fun tp!104755 () Bool)

(declare-fun b_and!48029 () Bool)

(assert (=> start!111012 (= tp!104755 b_and!48029)))

(declare-fun b!1313769 () Bool)

(declare-fun res!872286 () Bool)

(declare-fun e!749416 () Bool)

(assert (=> b!1313769 (=> (not res!872286) (not e!749416))))

(declare-datatypes ((array!88021 0))(
  ( (array!88022 (arr!42486 (Array (_ BitVec 32) (_ BitVec 64))) (size!43037 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88021)

(declare-datatypes ((List!30343 0))(
  ( (Nil!30340) (Cons!30339 (h!31548 (_ BitVec 64)) (t!43956 List!30343)) )
))
(declare-fun arrayNoDuplicates!0 (array!88021 (_ BitVec 32) List!30343) Bool)

(assert (=> b!1313769 (= res!872286 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30340))))

(declare-fun b!1313770 () Bool)

(declare-fun res!872285 () Bool)

(assert (=> b!1313770 (=> (not res!872285) (not e!749416))))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1313770 (= res!872285 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43037 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1313771 () Bool)

(declare-fun e!749419 () Bool)

(declare-fun tp_is_empty!35541 () Bool)

(assert (=> b!1313771 (= e!749419 tp_is_empty!35541)))

(declare-fun b!1313772 () Bool)

(declare-fun e!749418 () Bool)

(declare-fun e!749417 () Bool)

(declare-fun mapRes!54940 () Bool)

(assert (=> b!1313772 (= e!749418 (and e!749417 mapRes!54940))))

(declare-fun condMapEmpty!54940 () Bool)

(declare-datatypes ((V!52491 0))(
  ( (V!52492 (val!17845 Int)) )
))
(declare-datatypes ((ValueCell!16872 0))(
  ( (ValueCellFull!16872 (v!20470 V!52491)) (EmptyCell!16872) )
))
(declare-datatypes ((array!88023 0))(
  ( (array!88024 (arr!42487 (Array (_ BitVec 32) ValueCell!16872)) (size!43038 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88023)

(declare-fun mapDefault!54940 () ValueCell!16872)

(assert (=> b!1313772 (= condMapEmpty!54940 (= (arr!42487 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16872)) mapDefault!54940)))))

(declare-fun mapNonEmpty!54940 () Bool)

(declare-fun tp!104756 () Bool)

(assert (=> mapNonEmpty!54940 (= mapRes!54940 (and tp!104756 e!749419))))

(declare-fun mapRest!54940 () (Array (_ BitVec 32) ValueCell!16872))

(declare-fun mapKey!54940 () (_ BitVec 32))

(declare-fun mapValue!54940 () ValueCell!16872)

(assert (=> mapNonEmpty!54940 (= (arr!42487 _values!1354) (store mapRest!54940 mapKey!54940 mapValue!54940))))

(declare-fun res!872284 () Bool)

(assert (=> start!111012 (=> (not res!872284) (not e!749416))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111012 (= res!872284 (validMask!0 mask!2040))))

(assert (=> start!111012 e!749416))

(assert (=> start!111012 tp!104755))

(declare-fun array_inv!32071 (array!88021) Bool)

(assert (=> start!111012 (array_inv!32071 _keys!1628)))

(assert (=> start!111012 true))

(assert (=> start!111012 tp_is_empty!35541))

(declare-fun array_inv!32072 (array!88023) Bool)

(assert (=> start!111012 (and (array_inv!32072 _values!1354) e!749418)))

(declare-fun b!1313773 () Bool)

(assert (=> b!1313773 (= e!749417 tp_is_empty!35541)))

(declare-fun b!1313774 () Bool)

(assert (=> b!1313774 (= e!749416 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585658 () Bool)

(declare-fun minValue!1296 () V!52491)

(declare-fun zeroValue!1296 () V!52491)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((tuple2!23180 0))(
  ( (tuple2!23181 (_1!11600 (_ BitVec 64)) (_2!11600 V!52491)) )
))
(declare-datatypes ((List!30344 0))(
  ( (Nil!30341) (Cons!30340 (h!31549 tuple2!23180) (t!43957 List!30344)) )
))
(declare-datatypes ((ListLongMap!20849 0))(
  ( (ListLongMap!20850 (toList!10440 List!30344)) )
))
(declare-fun contains!8526 (ListLongMap!20849 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5396 (array!88021 array!88023 (_ BitVec 32) (_ BitVec 32) V!52491 V!52491 (_ BitVec 32) Int) ListLongMap!20849)

(assert (=> b!1313774 (= lt!585658 (contains!8526 (getCurrentListMap!5396 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1313775 () Bool)

(declare-fun res!872287 () Bool)

(assert (=> b!1313775 (=> (not res!872287) (not e!749416))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88021 (_ BitVec 32)) Bool)

(assert (=> b!1313775 (= res!872287 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1313776 () Bool)

(declare-fun res!872288 () Bool)

(assert (=> b!1313776 (=> (not res!872288) (not e!749416))))

(assert (=> b!1313776 (= res!872288 (and (= (size!43038 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43037 _keys!1628) (size!43038 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!54940 () Bool)

(assert (=> mapIsEmpty!54940 mapRes!54940))

(assert (= (and start!111012 res!872284) b!1313776))

(assert (= (and b!1313776 res!872288) b!1313775))

(assert (= (and b!1313775 res!872287) b!1313769))

(assert (= (and b!1313769 res!872286) b!1313770))

(assert (= (and b!1313770 res!872285) b!1313774))

(assert (= (and b!1313772 condMapEmpty!54940) mapIsEmpty!54940))

(assert (= (and b!1313772 (not condMapEmpty!54940)) mapNonEmpty!54940))

(get-info :version)

(assert (= (and mapNonEmpty!54940 ((_ is ValueCellFull!16872) mapValue!54940)) b!1313771))

(assert (= (and b!1313772 ((_ is ValueCellFull!16872) mapDefault!54940)) b!1313773))

(assert (= start!111012 b!1313772))

(declare-fun m!1202515 () Bool)

(assert (=> b!1313774 m!1202515))

(assert (=> b!1313774 m!1202515))

(declare-fun m!1202517 () Bool)

(assert (=> b!1313774 m!1202517))

(declare-fun m!1202519 () Bool)

(assert (=> b!1313769 m!1202519))

(declare-fun m!1202521 () Bool)

(assert (=> b!1313775 m!1202521))

(declare-fun m!1202523 () Bool)

(assert (=> start!111012 m!1202523))

(declare-fun m!1202525 () Bool)

(assert (=> start!111012 m!1202525))

(declare-fun m!1202527 () Bool)

(assert (=> start!111012 m!1202527))

(declare-fun m!1202529 () Bool)

(assert (=> mapNonEmpty!54940 m!1202529))

(check-sat (not b!1313769) (not b!1313775) tp_is_empty!35541 (not b_next!29811) b_and!48029 (not b!1313774) (not start!111012) (not mapNonEmpty!54940))
(check-sat b_and!48029 (not b_next!29811))
