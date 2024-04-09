; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111030 () Bool)

(assert start!111030)

(declare-fun b_free!29829 () Bool)

(declare-fun b_next!29829 () Bool)

(assert (=> start!111030 (= b_free!29829 (not b_next!29829))))

(declare-fun tp!104809 () Bool)

(declare-fun b_and!48047 () Bool)

(assert (=> start!111030 (= tp!104809 b_and!48047)))

(declare-fun mapIsEmpty!54967 () Bool)

(declare-fun mapRes!54967 () Bool)

(assert (=> mapIsEmpty!54967 mapRes!54967))

(declare-fun b!1313985 () Bool)

(declare-fun e!749555 () Bool)

(declare-fun tp_is_empty!35559 () Bool)

(assert (=> b!1313985 (= e!749555 tp_is_empty!35559)))

(declare-fun b!1313986 () Bool)

(declare-fun res!872420 () Bool)

(declare-fun e!749551 () Bool)

(assert (=> b!1313986 (=> (not res!872420) (not e!749551))))

(declare-datatypes ((array!88055 0))(
  ( (array!88056 (arr!42503 (Array (_ BitVec 32) (_ BitVec 64))) (size!43054 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88055)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1313986 (= res!872420 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43054 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1313987 () Bool)

(assert (=> b!1313987 (= e!749551 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52515 0))(
  ( (V!52516 (val!17854 Int)) )
))
(declare-fun minValue!1296 () V!52515)

(declare-datatypes ((ValueCell!16881 0))(
  ( (ValueCellFull!16881 (v!20479 V!52515)) (EmptyCell!16881) )
))
(declare-datatypes ((array!88057 0))(
  ( (array!88058 (arr!42504 (Array (_ BitVec 32) ValueCell!16881)) (size!43055 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88057)

(declare-fun zeroValue!1296 () V!52515)

(declare-fun lt!585685 () Bool)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((tuple2!23192 0))(
  ( (tuple2!23193 (_1!11606 (_ BitVec 64)) (_2!11606 V!52515)) )
))
(declare-datatypes ((List!30354 0))(
  ( (Nil!30351) (Cons!30350 (h!31559 tuple2!23192) (t!43967 List!30354)) )
))
(declare-datatypes ((ListLongMap!20861 0))(
  ( (ListLongMap!20862 (toList!10446 List!30354)) )
))
(declare-fun contains!8532 (ListLongMap!20861 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5402 (array!88055 array!88057 (_ BitVec 32) (_ BitVec 32) V!52515 V!52515 (_ BitVec 32) Int) ListLongMap!20861)

(assert (=> b!1313987 (= lt!585685 (contains!8532 (getCurrentListMap!5402 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun res!872422 () Bool)

(assert (=> start!111030 (=> (not res!872422) (not e!749551))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111030 (= res!872422 (validMask!0 mask!2040))))

(assert (=> start!111030 e!749551))

(assert (=> start!111030 tp!104809))

(declare-fun array_inv!32081 (array!88055) Bool)

(assert (=> start!111030 (array_inv!32081 _keys!1628)))

(assert (=> start!111030 true))

(assert (=> start!111030 tp_is_empty!35559))

(declare-fun e!749554 () Bool)

(declare-fun array_inv!32082 (array!88057) Bool)

(assert (=> start!111030 (and (array_inv!32082 _values!1354) e!749554)))

(declare-fun b!1313988 () Bool)

(assert (=> b!1313988 (= e!749554 (and e!749555 mapRes!54967))))

(declare-fun condMapEmpty!54967 () Bool)

(declare-fun mapDefault!54967 () ValueCell!16881)

(assert (=> b!1313988 (= condMapEmpty!54967 (= (arr!42504 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16881)) mapDefault!54967)))))

(declare-fun b!1313989 () Bool)

(declare-fun res!872423 () Bool)

(assert (=> b!1313989 (=> (not res!872423) (not e!749551))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88055 (_ BitVec 32)) Bool)

(assert (=> b!1313989 (= res!872423 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapNonEmpty!54967 () Bool)

(declare-fun tp!104810 () Bool)

(declare-fun e!749553 () Bool)

(assert (=> mapNonEmpty!54967 (= mapRes!54967 (and tp!104810 e!749553))))

(declare-fun mapRest!54967 () (Array (_ BitVec 32) ValueCell!16881))

(declare-fun mapValue!54967 () ValueCell!16881)

(declare-fun mapKey!54967 () (_ BitVec 32))

(assert (=> mapNonEmpty!54967 (= (arr!42504 _values!1354) (store mapRest!54967 mapKey!54967 mapValue!54967))))

(declare-fun b!1313990 () Bool)

(declare-fun res!872419 () Bool)

(assert (=> b!1313990 (=> (not res!872419) (not e!749551))))

(declare-datatypes ((List!30355 0))(
  ( (Nil!30352) (Cons!30351 (h!31560 (_ BitVec 64)) (t!43968 List!30355)) )
))
(declare-fun arrayNoDuplicates!0 (array!88055 (_ BitVec 32) List!30355) Bool)

(assert (=> b!1313990 (= res!872419 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30352))))

(declare-fun b!1313991 () Bool)

(assert (=> b!1313991 (= e!749553 tp_is_empty!35559)))

(declare-fun b!1313992 () Bool)

(declare-fun res!872421 () Bool)

(assert (=> b!1313992 (=> (not res!872421) (not e!749551))))

(assert (=> b!1313992 (= res!872421 (and (= (size!43055 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43054 _keys!1628) (size!43055 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(assert (= (and start!111030 res!872422) b!1313992))

(assert (= (and b!1313992 res!872421) b!1313989))

(assert (= (and b!1313989 res!872423) b!1313990))

(assert (= (and b!1313990 res!872419) b!1313986))

(assert (= (and b!1313986 res!872420) b!1313987))

(assert (= (and b!1313988 condMapEmpty!54967) mapIsEmpty!54967))

(assert (= (and b!1313988 (not condMapEmpty!54967)) mapNonEmpty!54967))

(get-info :version)

(assert (= (and mapNonEmpty!54967 ((_ is ValueCellFull!16881) mapValue!54967)) b!1313991))

(assert (= (and b!1313988 ((_ is ValueCellFull!16881) mapDefault!54967)) b!1313985))

(assert (= start!111030 b!1313988))

(declare-fun m!1202659 () Bool)

(assert (=> start!111030 m!1202659))

(declare-fun m!1202661 () Bool)

(assert (=> start!111030 m!1202661))

(declare-fun m!1202663 () Bool)

(assert (=> start!111030 m!1202663))

(declare-fun m!1202665 () Bool)

(assert (=> b!1313990 m!1202665))

(declare-fun m!1202667 () Bool)

(assert (=> mapNonEmpty!54967 m!1202667))

(declare-fun m!1202669 () Bool)

(assert (=> b!1313989 m!1202669))

(declare-fun m!1202671 () Bool)

(assert (=> b!1313987 m!1202671))

(assert (=> b!1313987 m!1202671))

(declare-fun m!1202673 () Bool)

(assert (=> b!1313987 m!1202673))

(check-sat (not b!1313989) (not b!1313987) b_and!48047 (not b_next!29829) (not start!111030) tp_is_empty!35559 (not b!1313990) (not mapNonEmpty!54967))
(check-sat b_and!48047 (not b_next!29829))
