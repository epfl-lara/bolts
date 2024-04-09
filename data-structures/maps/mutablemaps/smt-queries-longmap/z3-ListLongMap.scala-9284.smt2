; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111090 () Bool)

(assert start!111090)

(declare-fun b_free!29889 () Bool)

(declare-fun b_next!29889 () Bool)

(assert (=> start!111090 (= b_free!29889 (not b_next!29889))))

(declare-fun tp!104990 () Bool)

(declare-fun b_and!48107 () Bool)

(assert (=> start!111090 (= tp!104990 b_and!48107)))

(declare-fun b!1314741 () Bool)

(declare-fun e!750005 () Bool)

(declare-fun e!750003 () Bool)

(declare-fun mapRes!55057 () Bool)

(assert (=> b!1314741 (= e!750005 (and e!750003 mapRes!55057))))

(declare-fun condMapEmpty!55057 () Bool)

(declare-datatypes ((V!52595 0))(
  ( (V!52596 (val!17884 Int)) )
))
(declare-datatypes ((ValueCell!16911 0))(
  ( (ValueCellFull!16911 (v!20509 V!52595)) (EmptyCell!16911) )
))
(declare-datatypes ((array!88169 0))(
  ( (array!88170 (arr!42560 (Array (_ BitVec 32) ValueCell!16911)) (size!43111 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88169)

(declare-fun mapDefault!55057 () ValueCell!16911)

(assert (=> b!1314741 (= condMapEmpty!55057 (= (arr!42560 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16911)) mapDefault!55057)))))

(declare-fun b!1314742 () Bool)

(declare-fun tp_is_empty!35619 () Bool)

(assert (=> b!1314742 (= e!750003 tp_is_empty!35619)))

(declare-fun b!1314743 () Bool)

(declare-fun e!750001 () Bool)

(assert (=> b!1314743 (= e!750001 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!88171 0))(
  ( (array!88172 (arr!42561 (Array (_ BitVec 32) (_ BitVec 64))) (size!43112 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88171)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun zeroValue!1296 () V!52595)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun lt!585775 () Bool)

(declare-fun minValue!1296 () V!52595)

(declare-datatypes ((tuple2!23228 0))(
  ( (tuple2!23229 (_1!11624 (_ BitVec 64)) (_2!11624 V!52595)) )
))
(declare-datatypes ((List!30392 0))(
  ( (Nil!30389) (Cons!30388 (h!31597 tuple2!23228) (t!44005 List!30392)) )
))
(declare-datatypes ((ListLongMap!20897 0))(
  ( (ListLongMap!20898 (toList!10464 List!30392)) )
))
(declare-fun contains!8550 (ListLongMap!20897 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5420 (array!88171 array!88169 (_ BitVec 32) (_ BitVec 32) V!52595 V!52595 (_ BitVec 32) Int) ListLongMap!20897)

(assert (=> b!1314743 (= lt!585775 (contains!8550 (getCurrentListMap!5420 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1314744 () Bool)

(declare-fun res!872906 () Bool)

(assert (=> b!1314744 (=> (not res!872906) (not e!750001))))

(assert (=> b!1314744 (= res!872906 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43112 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1314745 () Bool)

(declare-fun res!872908 () Bool)

(assert (=> b!1314745 (=> (not res!872908) (not e!750001))))

(assert (=> b!1314745 (= res!872908 (and (= (size!43111 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43112 _keys!1628) (size!43111 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!55057 () Bool)

(declare-fun tp!104989 () Bool)

(declare-fun e!750004 () Bool)

(assert (=> mapNonEmpty!55057 (= mapRes!55057 (and tp!104989 e!750004))))

(declare-fun mapRest!55057 () (Array (_ BitVec 32) ValueCell!16911))

(declare-fun mapKey!55057 () (_ BitVec 32))

(declare-fun mapValue!55057 () ValueCell!16911)

(assert (=> mapNonEmpty!55057 (= (arr!42560 _values!1354) (store mapRest!55057 mapKey!55057 mapValue!55057))))

(declare-fun res!872909 () Bool)

(assert (=> start!111090 (=> (not res!872909) (not e!750001))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111090 (= res!872909 (validMask!0 mask!2040))))

(assert (=> start!111090 e!750001))

(assert (=> start!111090 tp!104990))

(declare-fun array_inv!32119 (array!88171) Bool)

(assert (=> start!111090 (array_inv!32119 _keys!1628)))

(assert (=> start!111090 true))

(assert (=> start!111090 tp_is_empty!35619))

(declare-fun array_inv!32120 (array!88169) Bool)

(assert (=> start!111090 (and (array_inv!32120 _values!1354) e!750005)))

(declare-fun mapIsEmpty!55057 () Bool)

(assert (=> mapIsEmpty!55057 mapRes!55057))

(declare-fun b!1314746 () Bool)

(declare-fun res!872905 () Bool)

(assert (=> b!1314746 (=> (not res!872905) (not e!750001))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88171 (_ BitVec 32)) Bool)

(assert (=> b!1314746 (= res!872905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1314747 () Bool)

(declare-fun res!872907 () Bool)

(assert (=> b!1314747 (=> (not res!872907) (not e!750001))))

(declare-datatypes ((List!30393 0))(
  ( (Nil!30390) (Cons!30389 (h!31598 (_ BitVec 64)) (t!44006 List!30393)) )
))
(declare-fun arrayNoDuplicates!0 (array!88171 (_ BitVec 32) List!30393) Bool)

(assert (=> b!1314747 (= res!872907 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30390))))

(declare-fun b!1314748 () Bool)

(assert (=> b!1314748 (= e!750004 tp_is_empty!35619)))

(assert (= (and start!111090 res!872909) b!1314745))

(assert (= (and b!1314745 res!872908) b!1314746))

(assert (= (and b!1314746 res!872905) b!1314747))

(assert (= (and b!1314747 res!872907) b!1314744))

(assert (= (and b!1314744 res!872906) b!1314743))

(assert (= (and b!1314741 condMapEmpty!55057) mapIsEmpty!55057))

(assert (= (and b!1314741 (not condMapEmpty!55057)) mapNonEmpty!55057))

(get-info :version)

(assert (= (and mapNonEmpty!55057 ((_ is ValueCellFull!16911) mapValue!55057)) b!1314748))

(assert (= (and b!1314741 ((_ is ValueCellFull!16911) mapDefault!55057)) b!1314742))

(assert (= start!111090 b!1314741))

(declare-fun m!1203169 () Bool)

(assert (=> mapNonEmpty!55057 m!1203169))

(declare-fun m!1203171 () Bool)

(assert (=> b!1314746 m!1203171))

(declare-fun m!1203173 () Bool)

(assert (=> start!111090 m!1203173))

(declare-fun m!1203175 () Bool)

(assert (=> start!111090 m!1203175))

(declare-fun m!1203177 () Bool)

(assert (=> start!111090 m!1203177))

(declare-fun m!1203179 () Bool)

(assert (=> b!1314747 m!1203179))

(declare-fun m!1203181 () Bool)

(assert (=> b!1314743 m!1203181))

(assert (=> b!1314743 m!1203181))

(declare-fun m!1203183 () Bool)

(assert (=> b!1314743 m!1203183))

(check-sat (not b!1314746) (not b!1314743) b_and!48107 tp_is_empty!35619 (not start!111090) (not b_next!29889) (not mapNonEmpty!55057) (not b!1314747))
(check-sat b_and!48107 (not b_next!29889))
