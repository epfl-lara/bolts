; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111048 () Bool)

(assert start!111048)

(declare-fun b_free!29847 () Bool)

(declare-fun b_next!29847 () Bool)

(assert (=> start!111048 (= b_free!29847 (not b_next!29847))))

(declare-fun tp!104863 () Bool)

(declare-fun b_and!48065 () Bool)

(assert (=> start!111048 (= tp!104863 b_and!48065)))

(declare-fun b!1314237 () Bool)

(declare-fun e!749688 () Bool)

(assert (=> b!1314237 (= e!749688 false)))

(declare-fun lt!585712 () Bool)

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!88089 0))(
  ( (array!88090 (arr!42520 (Array (_ BitVec 32) (_ BitVec 64))) (size!43071 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88089)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-datatypes ((V!52539 0))(
  ( (V!52540 (val!17863 Int)) )
))
(declare-fun minValue!1296 () V!52539)

(declare-datatypes ((ValueCell!16890 0))(
  ( (ValueCellFull!16890 (v!20488 V!52539)) (EmptyCell!16890) )
))
(declare-datatypes ((array!88091 0))(
  ( (array!88092 (arr!42521 (Array (_ BitVec 32) ValueCell!16890)) (size!43072 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88091)

(declare-fun zeroValue!1296 () V!52539)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23202 0))(
  ( (tuple2!23203 (_1!11611 (_ BitVec 64)) (_2!11611 V!52539)) )
))
(declare-datatypes ((List!30365 0))(
  ( (Nil!30362) (Cons!30361 (h!31570 tuple2!23202) (t!43978 List!30365)) )
))
(declare-datatypes ((ListLongMap!20871 0))(
  ( (ListLongMap!20872 (toList!10451 List!30365)) )
))
(declare-fun contains!8537 (ListLongMap!20871 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5407 (array!88089 array!88091 (_ BitVec 32) (_ BitVec 32) V!52539 V!52539 (_ BitVec 32) Int) ListLongMap!20871)

(assert (=> b!1314237 (= lt!585712 (contains!8537 (getCurrentListMap!5407 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1314238 () Bool)

(declare-fun res!872591 () Bool)

(assert (=> b!1314238 (=> (not res!872591) (not e!749688))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88089 (_ BitVec 32)) Bool)

(assert (=> b!1314238 (= res!872591 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1314239 () Bool)

(declare-fun res!872592 () Bool)

(assert (=> b!1314239 (=> (not res!872592) (not e!749688))))

(assert (=> b!1314239 (= res!872592 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43071 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1314240 () Bool)

(declare-fun res!872590 () Bool)

(assert (=> b!1314240 (=> (not res!872590) (not e!749688))))

(declare-datatypes ((List!30366 0))(
  ( (Nil!30363) (Cons!30362 (h!31571 (_ BitVec 64)) (t!43979 List!30366)) )
))
(declare-fun arrayNoDuplicates!0 (array!88089 (_ BitVec 32) List!30366) Bool)

(assert (=> b!1314240 (= res!872590 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30363))))

(declare-fun b!1314241 () Bool)

(declare-fun e!749687 () Bool)

(declare-fun e!749690 () Bool)

(declare-fun mapRes!54994 () Bool)

(assert (=> b!1314241 (= e!749687 (and e!749690 mapRes!54994))))

(declare-fun condMapEmpty!54994 () Bool)

(declare-fun mapDefault!54994 () ValueCell!16890)

(assert (=> b!1314241 (= condMapEmpty!54994 (= (arr!42521 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16890)) mapDefault!54994)))))

(declare-fun mapNonEmpty!54994 () Bool)

(declare-fun tp!104864 () Bool)

(declare-fun e!749689 () Bool)

(assert (=> mapNonEmpty!54994 (= mapRes!54994 (and tp!104864 e!749689))))

(declare-fun mapKey!54994 () (_ BitVec 32))

(declare-fun mapValue!54994 () ValueCell!16890)

(declare-fun mapRest!54994 () (Array (_ BitVec 32) ValueCell!16890))

(assert (=> mapNonEmpty!54994 (= (arr!42521 _values!1354) (store mapRest!54994 mapKey!54994 mapValue!54994))))

(declare-fun b!1314242 () Bool)

(declare-fun tp_is_empty!35577 () Bool)

(assert (=> b!1314242 (= e!749690 tp_is_empty!35577)))

(declare-fun b!1314243 () Bool)

(declare-fun res!872593 () Bool)

(assert (=> b!1314243 (=> (not res!872593) (not e!749688))))

(assert (=> b!1314243 (= res!872593 (and (= (size!43072 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43071 _keys!1628) (size!43072 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1314244 () Bool)

(assert (=> b!1314244 (= e!749689 tp_is_empty!35577)))

(declare-fun mapIsEmpty!54994 () Bool)

(assert (=> mapIsEmpty!54994 mapRes!54994))

(declare-fun res!872594 () Bool)

(assert (=> start!111048 (=> (not res!872594) (not e!749688))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111048 (= res!872594 (validMask!0 mask!2040))))

(assert (=> start!111048 e!749688))

(assert (=> start!111048 tp!104863))

(declare-fun array_inv!32095 (array!88089) Bool)

(assert (=> start!111048 (array_inv!32095 _keys!1628)))

(assert (=> start!111048 true))

(assert (=> start!111048 tp_is_empty!35577))

(declare-fun array_inv!32096 (array!88091) Bool)

(assert (=> start!111048 (and (array_inv!32096 _values!1354) e!749687)))

(assert (= (and start!111048 res!872594) b!1314243))

(assert (= (and b!1314243 res!872593) b!1314238))

(assert (= (and b!1314238 res!872591) b!1314240))

(assert (= (and b!1314240 res!872590) b!1314239))

(assert (= (and b!1314239 res!872592) b!1314237))

(assert (= (and b!1314241 condMapEmpty!54994) mapIsEmpty!54994))

(assert (= (and b!1314241 (not condMapEmpty!54994)) mapNonEmpty!54994))

(get-info :version)

(assert (= (and mapNonEmpty!54994 ((_ is ValueCellFull!16890) mapValue!54994)) b!1314244))

(assert (= (and b!1314241 ((_ is ValueCellFull!16890) mapDefault!54994)) b!1314242))

(assert (= start!111048 b!1314241))

(declare-fun m!1202833 () Bool)

(assert (=> b!1314240 m!1202833))

(declare-fun m!1202835 () Bool)

(assert (=> mapNonEmpty!54994 m!1202835))

(declare-fun m!1202837 () Bool)

(assert (=> start!111048 m!1202837))

(declare-fun m!1202839 () Bool)

(assert (=> start!111048 m!1202839))

(declare-fun m!1202841 () Bool)

(assert (=> start!111048 m!1202841))

(declare-fun m!1202843 () Bool)

(assert (=> b!1314238 m!1202843))

(declare-fun m!1202845 () Bool)

(assert (=> b!1314237 m!1202845))

(assert (=> b!1314237 m!1202845))

(declare-fun m!1202847 () Bool)

(assert (=> b!1314237 m!1202847))

(check-sat tp_is_empty!35577 (not b_next!29847) (not b!1314240) (not b!1314238) (not b!1314237) (not mapNonEmpty!54994) (not start!111048) b_and!48065)
(check-sat b_and!48065 (not b_next!29847))
