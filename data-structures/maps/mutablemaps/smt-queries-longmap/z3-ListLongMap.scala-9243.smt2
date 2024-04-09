; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110844 () Bool)

(assert start!110844)

(declare-fun b_free!29643 () Bool)

(declare-fun b_next!29643 () Bool)

(assert (=> start!110844 (= b_free!29643 (not b_next!29643))))

(declare-fun tp!104252 () Bool)

(declare-fun b_and!47861 () Bool)

(assert (=> start!110844 (= tp!104252 b_and!47861)))

(declare-fun b!1311402 () Bool)

(declare-fun e!748160 () Bool)

(assert (=> b!1311402 (= e!748160 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87697 0))(
  ( (array!87698 (arr!42324 (Array (_ BitVec 32) (_ BitVec 64))) (size!42875 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87697)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-datatypes ((V!52267 0))(
  ( (V!52268 (val!17761 Int)) )
))
(declare-fun minValue!1296 () V!52267)

(declare-datatypes ((ValueCell!16788 0))(
  ( (ValueCellFull!16788 (v!20386 V!52267)) (EmptyCell!16788) )
))
(declare-datatypes ((array!87699 0))(
  ( (array!87700 (arr!42325 (Array (_ BitVec 32) ValueCell!16788)) (size!42876 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87699)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun lt!585415 () Bool)

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun zeroValue!1296 () V!52267)

(declare-datatypes ((tuple2!23058 0))(
  ( (tuple2!23059 (_1!11539 (_ BitVec 64)) (_2!11539 V!52267)) )
))
(declare-datatypes ((List!30222 0))(
  ( (Nil!30219) (Cons!30218 (h!31427 tuple2!23058) (t!43835 List!30222)) )
))
(declare-datatypes ((ListLongMap!20727 0))(
  ( (ListLongMap!20728 (toList!10379 List!30222)) )
))
(declare-fun contains!8465 (ListLongMap!20727 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5335 (array!87697 array!87699 (_ BitVec 32) (_ BitVec 32) V!52267 V!52267 (_ BitVec 32) Int) ListLongMap!20727)

(assert (=> b!1311402 (= lt!585415 (contains!8465 (getCurrentListMap!5335 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1311403 () Bool)

(declare-fun res!870675 () Bool)

(assert (=> b!1311403 (=> (not res!870675) (not e!748160))))

(assert (=> b!1311403 (= res!870675 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42875 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1311404 () Bool)

(declare-fun res!870676 () Bool)

(assert (=> b!1311404 (=> (not res!870676) (not e!748160))))

(assert (=> b!1311404 (= res!870676 (and (= (size!42876 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42875 _keys!1628) (size!42876 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1311405 () Bool)

(declare-fun e!748156 () Bool)

(declare-fun e!748159 () Bool)

(declare-fun mapRes!54688 () Bool)

(assert (=> b!1311405 (= e!748156 (and e!748159 mapRes!54688))))

(declare-fun condMapEmpty!54688 () Bool)

(declare-fun mapDefault!54688 () ValueCell!16788)

(assert (=> b!1311405 (= condMapEmpty!54688 (= (arr!42325 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16788)) mapDefault!54688)))))

(declare-fun b!1311406 () Bool)

(declare-fun res!870673 () Bool)

(assert (=> b!1311406 (=> (not res!870673) (not e!748160))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87697 (_ BitVec 32)) Bool)

(assert (=> b!1311406 (= res!870673 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1311407 () Bool)

(declare-fun tp_is_empty!35373 () Bool)

(assert (=> b!1311407 (= e!748159 tp_is_empty!35373)))

(declare-fun mapIsEmpty!54688 () Bool)

(assert (=> mapIsEmpty!54688 mapRes!54688))

(declare-fun res!870677 () Bool)

(assert (=> start!110844 (=> (not res!870677) (not e!748160))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110844 (= res!870677 (validMask!0 mask!2040))))

(assert (=> start!110844 e!748160))

(assert (=> start!110844 tp!104252))

(declare-fun array_inv!31967 (array!87697) Bool)

(assert (=> start!110844 (array_inv!31967 _keys!1628)))

(assert (=> start!110844 true))

(assert (=> start!110844 tp_is_empty!35373))

(declare-fun array_inv!31968 (array!87699) Bool)

(assert (=> start!110844 (and (array_inv!31968 _values!1354) e!748156)))

(declare-fun b!1311408 () Bool)

(declare-fun res!870674 () Bool)

(assert (=> b!1311408 (=> (not res!870674) (not e!748160))))

(declare-datatypes ((List!30223 0))(
  ( (Nil!30220) (Cons!30219 (h!31428 (_ BitVec 64)) (t!43836 List!30223)) )
))
(declare-fun arrayNoDuplicates!0 (array!87697 (_ BitVec 32) List!30223) Bool)

(assert (=> b!1311408 (= res!870674 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30220))))

(declare-fun b!1311409 () Bool)

(declare-fun e!748158 () Bool)

(assert (=> b!1311409 (= e!748158 tp_is_empty!35373)))

(declare-fun mapNonEmpty!54688 () Bool)

(declare-fun tp!104251 () Bool)

(assert (=> mapNonEmpty!54688 (= mapRes!54688 (and tp!104251 e!748158))))

(declare-fun mapRest!54688 () (Array (_ BitVec 32) ValueCell!16788))

(declare-fun mapValue!54688 () ValueCell!16788)

(declare-fun mapKey!54688 () (_ BitVec 32))

(assert (=> mapNonEmpty!54688 (= (arr!42325 _values!1354) (store mapRest!54688 mapKey!54688 mapValue!54688))))

(assert (= (and start!110844 res!870677) b!1311404))

(assert (= (and b!1311404 res!870676) b!1311406))

(assert (= (and b!1311406 res!870673) b!1311408))

(assert (= (and b!1311408 res!870674) b!1311403))

(assert (= (and b!1311403 res!870675) b!1311402))

(assert (= (and b!1311405 condMapEmpty!54688) mapIsEmpty!54688))

(assert (= (and b!1311405 (not condMapEmpty!54688)) mapNonEmpty!54688))

(get-info :version)

(assert (= (and mapNonEmpty!54688 ((_ is ValueCellFull!16788) mapValue!54688)) b!1311409))

(assert (= (and b!1311405 ((_ is ValueCellFull!16788) mapDefault!54688)) b!1311407))

(assert (= start!110844 b!1311405))

(declare-fun m!1200889 () Bool)

(assert (=> b!1311406 m!1200889))

(declare-fun m!1200891 () Bool)

(assert (=> b!1311408 m!1200891))

(declare-fun m!1200893 () Bool)

(assert (=> b!1311402 m!1200893))

(assert (=> b!1311402 m!1200893))

(declare-fun m!1200895 () Bool)

(assert (=> b!1311402 m!1200895))

(declare-fun m!1200897 () Bool)

(assert (=> mapNonEmpty!54688 m!1200897))

(declare-fun m!1200899 () Bool)

(assert (=> start!110844 m!1200899))

(declare-fun m!1200901 () Bool)

(assert (=> start!110844 m!1200901))

(declare-fun m!1200903 () Bool)

(assert (=> start!110844 m!1200903))

(check-sat b_and!47861 (not mapNonEmpty!54688) tp_is_empty!35373 (not start!110844) (not b!1311408) (not b!1311402) (not b!1311406) (not b_next!29643))
(check-sat b_and!47861 (not b_next!29643))
