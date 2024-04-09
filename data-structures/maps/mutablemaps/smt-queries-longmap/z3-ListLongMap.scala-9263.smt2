; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110964 () Bool)

(assert start!110964)

(declare-fun b_free!29763 () Bool)

(declare-fun b_next!29763 () Bool)

(assert (=> start!110964 (= b_free!29763 (not b_next!29763))))

(declare-fun tp!104612 () Bool)

(declare-fun b_and!47981 () Bool)

(assert (=> start!110964 (= tp!104612 b_and!47981)))

(declare-fun mapIsEmpty!54868 () Bool)

(declare-fun mapRes!54868 () Bool)

(assert (=> mapIsEmpty!54868 mapRes!54868))

(declare-fun b!1313193 () Bool)

(declare-fun e!749056 () Bool)

(declare-fun e!749060 () Bool)

(assert (=> b!1313193 (= e!749056 (and e!749060 mapRes!54868))))

(declare-fun condMapEmpty!54868 () Bool)

(declare-datatypes ((V!52427 0))(
  ( (V!52428 (val!17821 Int)) )
))
(declare-datatypes ((ValueCell!16848 0))(
  ( (ValueCellFull!16848 (v!20446 V!52427)) (EmptyCell!16848) )
))
(declare-datatypes ((array!87933 0))(
  ( (array!87934 (arr!42442 (Array (_ BitVec 32) ValueCell!16848)) (size!42993 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87933)

(declare-fun mapDefault!54868 () ValueCell!16848)

(assert (=> b!1313193 (= condMapEmpty!54868 (= (arr!42442 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16848)) mapDefault!54868)))))

(declare-fun b!1313194 () Bool)

(declare-fun res!871928 () Bool)

(declare-fun e!749057 () Bool)

(assert (=> b!1313194 (=> (not res!871928) (not e!749057))))

(declare-datatypes ((array!87935 0))(
  ( (array!87936 (arr!42443 (Array (_ BitVec 32) (_ BitVec 64))) (size!42994 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87935)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87935 (_ BitVec 32)) Bool)

(assert (=> b!1313194 (= res!871928 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1313195 () Bool)

(declare-fun res!871926 () Bool)

(assert (=> b!1313195 (=> (not res!871926) (not e!749057))))

(declare-datatypes ((List!30311 0))(
  ( (Nil!30308) (Cons!30307 (h!31516 (_ BitVec 64)) (t!43924 List!30311)) )
))
(declare-fun arrayNoDuplicates!0 (array!87935 (_ BitVec 32) List!30311) Bool)

(assert (=> b!1313195 (= res!871926 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30308))))

(declare-fun b!1313196 () Bool)

(assert (=> b!1313196 (= e!749057 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52427)

(declare-fun zeroValue!1296 () V!52427)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun lt!585586 () Bool)

(declare-datatypes ((tuple2!23150 0))(
  ( (tuple2!23151 (_1!11585 (_ BitVec 64)) (_2!11585 V!52427)) )
))
(declare-datatypes ((List!30312 0))(
  ( (Nil!30309) (Cons!30308 (h!31517 tuple2!23150) (t!43925 List!30312)) )
))
(declare-datatypes ((ListLongMap!20819 0))(
  ( (ListLongMap!20820 (toList!10425 List!30312)) )
))
(declare-fun contains!8511 (ListLongMap!20819 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5381 (array!87935 array!87933 (_ BitVec 32) (_ BitVec 32) V!52427 V!52427 (_ BitVec 32) Int) ListLongMap!20819)

(assert (=> b!1313196 (= lt!585586 (contains!8511 (getCurrentListMap!5381 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun mapNonEmpty!54868 () Bool)

(declare-fun tp!104611 () Bool)

(declare-fun e!749059 () Bool)

(assert (=> mapNonEmpty!54868 (= mapRes!54868 (and tp!104611 e!749059))))

(declare-fun mapKey!54868 () (_ BitVec 32))

(declare-fun mapRest!54868 () (Array (_ BitVec 32) ValueCell!16848))

(declare-fun mapValue!54868 () ValueCell!16848)

(assert (=> mapNonEmpty!54868 (= (arr!42442 _values!1354) (store mapRest!54868 mapKey!54868 mapValue!54868))))

(declare-fun b!1313197 () Bool)

(declare-fun res!871927 () Bool)

(assert (=> b!1313197 (=> (not res!871927) (not e!749057))))

(assert (=> b!1313197 (= res!871927 (and (= (size!42993 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42994 _keys!1628) (size!42993 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun res!871925 () Bool)

(assert (=> start!110964 (=> (not res!871925) (not e!749057))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110964 (= res!871925 (validMask!0 mask!2040))))

(assert (=> start!110964 e!749057))

(assert (=> start!110964 tp!104612))

(declare-fun array_inv!32043 (array!87935) Bool)

(assert (=> start!110964 (array_inv!32043 _keys!1628)))

(assert (=> start!110964 true))

(declare-fun tp_is_empty!35493 () Bool)

(assert (=> start!110964 tp_is_empty!35493))

(declare-fun array_inv!32044 (array!87933) Bool)

(assert (=> start!110964 (and (array_inv!32044 _values!1354) e!749056)))

(declare-fun b!1313198 () Bool)

(declare-fun res!871924 () Bool)

(assert (=> b!1313198 (=> (not res!871924) (not e!749057))))

(assert (=> b!1313198 (= res!871924 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42994 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1313199 () Bool)

(assert (=> b!1313199 (= e!749059 tp_is_empty!35493)))

(declare-fun b!1313200 () Bool)

(assert (=> b!1313200 (= e!749060 tp_is_empty!35493)))

(assert (= (and start!110964 res!871925) b!1313197))

(assert (= (and b!1313197 res!871927) b!1313194))

(assert (= (and b!1313194 res!871928) b!1313195))

(assert (= (and b!1313195 res!871926) b!1313198))

(assert (= (and b!1313198 res!871924) b!1313196))

(assert (= (and b!1313193 condMapEmpty!54868) mapIsEmpty!54868))

(assert (= (and b!1313193 (not condMapEmpty!54868)) mapNonEmpty!54868))

(get-info :version)

(assert (= (and mapNonEmpty!54868 ((_ is ValueCellFull!16848) mapValue!54868)) b!1313199))

(assert (= (and b!1313193 ((_ is ValueCellFull!16848) mapDefault!54868)) b!1313200))

(assert (= start!110964 b!1313193))

(declare-fun m!1202131 () Bool)

(assert (=> mapNonEmpty!54868 m!1202131))

(declare-fun m!1202133 () Bool)

(assert (=> start!110964 m!1202133))

(declare-fun m!1202135 () Bool)

(assert (=> start!110964 m!1202135))

(declare-fun m!1202137 () Bool)

(assert (=> start!110964 m!1202137))

(declare-fun m!1202139 () Bool)

(assert (=> b!1313194 m!1202139))

(declare-fun m!1202141 () Bool)

(assert (=> b!1313195 m!1202141))

(declare-fun m!1202143 () Bool)

(assert (=> b!1313196 m!1202143))

(assert (=> b!1313196 m!1202143))

(declare-fun m!1202145 () Bool)

(assert (=> b!1313196 m!1202145))

(check-sat (not b_next!29763) (not b!1313195) (not mapNonEmpty!54868) tp_is_empty!35493 b_and!47981 (not b!1313194) (not start!110964) (not b!1313196))
(check-sat b_and!47981 (not b_next!29763))
