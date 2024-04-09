; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111784 () Bool)

(assert start!111784)

(declare-fun b_free!30405 () Bool)

(declare-fun b_next!30405 () Bool)

(assert (=> start!111784 (= b_free!30405 (not b_next!30405))))

(declare-fun tp!106692 () Bool)

(declare-fun b_and!48953 () Bool)

(assert (=> start!111784 (= tp!106692 b_and!48953)))

(declare-fun b!1324055 () Bool)

(declare-fun e!754852 () Bool)

(declare-fun tp_is_empty!36225 () Bool)

(assert (=> b!1324055 (= e!754852 tp_is_empty!36225)))

(declare-fun b!1324056 () Bool)

(declare-fun e!754848 () Bool)

(declare-fun mapRes!55985 () Bool)

(assert (=> b!1324056 (= e!754848 (and e!754852 mapRes!55985))))

(declare-fun condMapEmpty!55985 () Bool)

(declare-datatypes ((V!53403 0))(
  ( (V!53404 (val!18187 Int)) )
))
(declare-datatypes ((ValueCell!17214 0))(
  ( (ValueCellFull!17214 (v!20815 V!53403)) (EmptyCell!17214) )
))
(declare-datatypes ((array!89319 0))(
  ( (array!89320 (arr!43129 (Array (_ BitVec 32) ValueCell!17214)) (size!43680 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89319)

(declare-fun mapDefault!55985 () ValueCell!17214)

(assert (=> b!1324056 (= condMapEmpty!55985 (= (arr!43129 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17214)) mapDefault!55985)))))

(declare-fun b!1324057 () Bool)

(declare-fun res!878934 () Bool)

(declare-fun e!754851 () Bool)

(assert (=> b!1324057 (=> (not res!878934) (not e!754851))))

(declare-datatypes ((array!89321 0))(
  ( (array!89322 (arr!43130 (Array (_ BitVec 32) (_ BitVec 64))) (size!43681 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89321)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89321 (_ BitVec 32)) Bool)

(assert (=> b!1324057 (= res!878934 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun mapNonEmpty!55985 () Bool)

(declare-fun tp!106691 () Bool)

(declare-fun e!754850 () Bool)

(assert (=> mapNonEmpty!55985 (= mapRes!55985 (and tp!106691 e!754850))))

(declare-fun mapValue!55985 () ValueCell!17214)

(declare-fun mapRest!55985 () (Array (_ BitVec 32) ValueCell!17214))

(declare-fun mapKey!55985 () (_ BitVec 32))

(assert (=> mapNonEmpty!55985 (= (arr!43129 _values!1337) (store mapRest!55985 mapKey!55985 mapValue!55985))))

(declare-fun b!1324059 () Bool)

(declare-fun res!878935 () Bool)

(assert (=> b!1324059 (=> (not res!878935) (not e!754851))))

(declare-datatypes ((List!30770 0))(
  ( (Nil!30767) (Cons!30766 (h!31975 (_ BitVec 64)) (t!44703 List!30770)) )
))
(declare-fun arrayNoDuplicates!0 (array!89321 (_ BitVec 32) List!30770) Bool)

(assert (=> b!1324059 (= res!878935 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30767))))

(declare-fun b!1324060 () Bool)

(assert (=> b!1324060 (= e!754851 false)))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!53403)

(declare-fun minValue!1279 () V!53403)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun lt!589372 () Bool)

(declare-datatypes ((tuple2!23596 0))(
  ( (tuple2!23597 (_1!11808 (_ BitVec 64)) (_2!11808 V!53403)) )
))
(declare-datatypes ((List!30771 0))(
  ( (Nil!30768) (Cons!30767 (h!31976 tuple2!23596) (t!44704 List!30771)) )
))
(declare-datatypes ((ListLongMap!21265 0))(
  ( (ListLongMap!21266 (toList!10648 List!30771)) )
))
(declare-fun contains!8739 (ListLongMap!21265 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5585 (array!89321 array!89319 (_ BitVec 32) (_ BitVec 32) V!53403 V!53403 (_ BitVec 32) Int) ListLongMap!21265)

(assert (=> b!1324060 (= lt!589372 (contains!8739 (getCurrentListMap!5585 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1324061 () Bool)

(declare-fun res!878936 () Bool)

(assert (=> b!1324061 (=> (not res!878936) (not e!754851))))

(assert (=> b!1324061 (= res!878936 (and (= (size!43680 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43681 _keys!1609) (size!43680 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun res!878938 () Bool)

(assert (=> start!111784 (=> (not res!878938) (not e!754851))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111784 (= res!878938 (validMask!0 mask!2019))))

(assert (=> start!111784 e!754851))

(declare-fun array_inv!32507 (array!89321) Bool)

(assert (=> start!111784 (array_inv!32507 _keys!1609)))

(assert (=> start!111784 true))

(assert (=> start!111784 tp_is_empty!36225))

(declare-fun array_inv!32508 (array!89319) Bool)

(assert (=> start!111784 (and (array_inv!32508 _values!1337) e!754848)))

(assert (=> start!111784 tp!106692))

(declare-fun b!1324058 () Bool)

(assert (=> b!1324058 (= e!754850 tp_is_empty!36225)))

(declare-fun mapIsEmpty!55985 () Bool)

(assert (=> mapIsEmpty!55985 mapRes!55985))

(declare-fun b!1324062 () Bool)

(declare-fun res!878937 () Bool)

(assert (=> b!1324062 (=> (not res!878937) (not e!754851))))

(assert (=> b!1324062 (= res!878937 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43681 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!111784 res!878938) b!1324061))

(assert (= (and b!1324061 res!878936) b!1324057))

(assert (= (and b!1324057 res!878934) b!1324059))

(assert (= (and b!1324059 res!878935) b!1324062))

(assert (= (and b!1324062 res!878937) b!1324060))

(assert (= (and b!1324056 condMapEmpty!55985) mapIsEmpty!55985))

(assert (= (and b!1324056 (not condMapEmpty!55985)) mapNonEmpty!55985))

(get-info :version)

(assert (= (and mapNonEmpty!55985 ((_ is ValueCellFull!17214) mapValue!55985)) b!1324058))

(assert (= (and b!1324056 ((_ is ValueCellFull!17214) mapDefault!55985)) b!1324055))

(assert (= start!111784 b!1324056))

(declare-fun m!1213051 () Bool)

(assert (=> b!1324057 m!1213051))

(declare-fun m!1213053 () Bool)

(assert (=> start!111784 m!1213053))

(declare-fun m!1213055 () Bool)

(assert (=> start!111784 m!1213055))

(declare-fun m!1213057 () Bool)

(assert (=> start!111784 m!1213057))

(declare-fun m!1213059 () Bool)

(assert (=> b!1324060 m!1213059))

(assert (=> b!1324060 m!1213059))

(declare-fun m!1213061 () Bool)

(assert (=> b!1324060 m!1213061))

(declare-fun m!1213063 () Bool)

(assert (=> mapNonEmpty!55985 m!1213063))

(declare-fun m!1213065 () Bool)

(assert (=> b!1324059 m!1213065))

(check-sat (not b!1324059) (not start!111784) (not b_next!30405) (not b!1324060) (not b!1324057) b_and!48953 tp_is_empty!36225 (not mapNonEmpty!55985))
(check-sat b_and!48953 (not b_next!30405))
