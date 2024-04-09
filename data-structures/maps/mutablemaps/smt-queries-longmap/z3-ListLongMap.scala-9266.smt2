; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110982 () Bool)

(assert start!110982)

(declare-fun b_free!29781 () Bool)

(declare-fun b_next!29781 () Bool)

(assert (=> start!110982 (= b_free!29781 (not b_next!29781))))

(declare-fun tp!104665 () Bool)

(declare-fun b_and!47999 () Bool)

(assert (=> start!110982 (= tp!104665 b_and!47999)))

(declare-fun mapIsEmpty!54895 () Bool)

(declare-fun mapRes!54895 () Bool)

(assert (=> mapIsEmpty!54895 mapRes!54895))

(declare-fun b!1313409 () Bool)

(declare-fun e!749191 () Bool)

(declare-fun tp_is_empty!35511 () Bool)

(assert (=> b!1313409 (= e!749191 tp_is_empty!35511)))

(declare-fun b!1313410 () Bool)

(declare-fun res!872059 () Bool)

(declare-fun e!749195 () Bool)

(assert (=> b!1313410 (=> (not res!872059) (not e!749195))))

(declare-datatypes ((array!87965 0))(
  ( (array!87966 (arr!42458 (Array (_ BitVec 32) (_ BitVec 64))) (size!43009 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87965)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52451 0))(
  ( (V!52452 (val!17830 Int)) )
))
(declare-datatypes ((ValueCell!16857 0))(
  ( (ValueCellFull!16857 (v!20455 V!52451)) (EmptyCell!16857) )
))
(declare-datatypes ((array!87967 0))(
  ( (array!87968 (arr!42459 (Array (_ BitVec 32) ValueCell!16857)) (size!43010 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87967)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1313410 (= res!872059 (and (= (size!43010 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43009 _keys!1628) (size!43010 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!54895 () Bool)

(declare-fun tp!104666 () Bool)

(declare-fun e!749194 () Bool)

(assert (=> mapNonEmpty!54895 (= mapRes!54895 (and tp!104666 e!749194))))

(declare-fun mapKey!54895 () (_ BitVec 32))

(declare-fun mapValue!54895 () ValueCell!16857)

(declare-fun mapRest!54895 () (Array (_ BitVec 32) ValueCell!16857))

(assert (=> mapNonEmpty!54895 (= (arr!42459 _values!1354) (store mapRest!54895 mapKey!54895 mapValue!54895))))

(declare-fun b!1313411 () Bool)

(assert (=> b!1313411 (= e!749194 tp_is_empty!35511)))

(declare-fun res!872060 () Bool)

(assert (=> start!110982 (=> (not res!872060) (not e!749195))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110982 (= res!872060 (validMask!0 mask!2040))))

(assert (=> start!110982 e!749195))

(assert (=> start!110982 tp!104665))

(declare-fun array_inv!32055 (array!87965) Bool)

(assert (=> start!110982 (array_inv!32055 _keys!1628)))

(assert (=> start!110982 true))

(assert (=> start!110982 tp_is_empty!35511))

(declare-fun e!749193 () Bool)

(declare-fun array_inv!32056 (array!87967) Bool)

(assert (=> start!110982 (and (array_inv!32056 _values!1354) e!749193)))

(declare-fun b!1313412 () Bool)

(declare-fun res!872061 () Bool)

(assert (=> b!1313412 (=> (not res!872061) (not e!749195))))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1313412 (= res!872061 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43009 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1313413 () Bool)

(assert (=> b!1313413 (= e!749195 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52451)

(declare-fun lt!585613 () Bool)

(declare-fun zeroValue!1296 () V!52451)

(declare-datatypes ((tuple2!23158 0))(
  ( (tuple2!23159 (_1!11589 (_ BitVec 64)) (_2!11589 V!52451)) )
))
(declare-datatypes ((List!30321 0))(
  ( (Nil!30318) (Cons!30317 (h!31526 tuple2!23158) (t!43934 List!30321)) )
))
(declare-datatypes ((ListLongMap!20827 0))(
  ( (ListLongMap!20828 (toList!10429 List!30321)) )
))
(declare-fun contains!8515 (ListLongMap!20827 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5385 (array!87965 array!87967 (_ BitVec 32) (_ BitVec 32) V!52451 V!52451 (_ BitVec 32) Int) ListLongMap!20827)

(assert (=> b!1313413 (= lt!585613 (contains!8515 (getCurrentListMap!5385 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1313414 () Bool)

(declare-fun res!872062 () Bool)

(assert (=> b!1313414 (=> (not res!872062) (not e!749195))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87965 (_ BitVec 32)) Bool)

(assert (=> b!1313414 (= res!872062 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1313415 () Bool)

(assert (=> b!1313415 (= e!749193 (and e!749191 mapRes!54895))))

(declare-fun condMapEmpty!54895 () Bool)

(declare-fun mapDefault!54895 () ValueCell!16857)

(assert (=> b!1313415 (= condMapEmpty!54895 (= (arr!42459 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16857)) mapDefault!54895)))))

(declare-fun b!1313416 () Bool)

(declare-fun res!872063 () Bool)

(assert (=> b!1313416 (=> (not res!872063) (not e!749195))))

(declare-datatypes ((List!30322 0))(
  ( (Nil!30319) (Cons!30318 (h!31527 (_ BitVec 64)) (t!43935 List!30322)) )
))
(declare-fun arrayNoDuplicates!0 (array!87965 (_ BitVec 32) List!30322) Bool)

(assert (=> b!1313416 (= res!872063 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30319))))

(assert (= (and start!110982 res!872060) b!1313410))

(assert (= (and b!1313410 res!872059) b!1313414))

(assert (= (and b!1313414 res!872062) b!1313416))

(assert (= (and b!1313416 res!872063) b!1313412))

(assert (= (and b!1313412 res!872061) b!1313413))

(assert (= (and b!1313415 condMapEmpty!54895) mapIsEmpty!54895))

(assert (= (and b!1313415 (not condMapEmpty!54895)) mapNonEmpty!54895))

(get-info :version)

(assert (= (and mapNonEmpty!54895 ((_ is ValueCellFull!16857) mapValue!54895)) b!1313411))

(assert (= (and b!1313415 ((_ is ValueCellFull!16857) mapDefault!54895)) b!1313409))

(assert (= start!110982 b!1313415))

(declare-fun m!1202275 () Bool)

(assert (=> mapNonEmpty!54895 m!1202275))

(declare-fun m!1202277 () Bool)

(assert (=> b!1313416 m!1202277))

(declare-fun m!1202279 () Bool)

(assert (=> b!1313413 m!1202279))

(assert (=> b!1313413 m!1202279))

(declare-fun m!1202281 () Bool)

(assert (=> b!1313413 m!1202281))

(declare-fun m!1202283 () Bool)

(assert (=> start!110982 m!1202283))

(declare-fun m!1202285 () Bool)

(assert (=> start!110982 m!1202285))

(declare-fun m!1202287 () Bool)

(assert (=> start!110982 m!1202287))

(declare-fun m!1202289 () Bool)

(assert (=> b!1313414 m!1202289))

(check-sat (not start!110982) (not b!1313416) b_and!47999 (not b!1313413) (not b!1313414) tp_is_empty!35511 (not mapNonEmpty!54895) (not b_next!29781))
(check-sat b_and!47999 (not b_next!29781))
