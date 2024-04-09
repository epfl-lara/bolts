; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111054 () Bool)

(assert start!111054)

(declare-fun b_free!29853 () Bool)

(declare-fun b_next!29853 () Bool)

(assert (=> start!111054 (= b_free!29853 (not b_next!29853))))

(declare-fun tp!104882 () Bool)

(declare-fun b_and!48071 () Bool)

(assert (=> start!111054 (= tp!104882 b_and!48071)))

(declare-fun b!1314309 () Bool)

(declare-fun res!872635 () Bool)

(declare-fun e!749731 () Bool)

(assert (=> b!1314309 (=> (not res!872635) (not e!749731))))

(declare-datatypes ((array!88101 0))(
  ( (array!88102 (arr!42526 (Array (_ BitVec 32) (_ BitVec 64))) (size!43077 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88101)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1314309 (= res!872635 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43077 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1314310 () Bool)

(declare-fun e!749733 () Bool)

(declare-fun e!749734 () Bool)

(declare-fun mapRes!55003 () Bool)

(assert (=> b!1314310 (= e!749733 (and e!749734 mapRes!55003))))

(declare-fun condMapEmpty!55003 () Bool)

(declare-datatypes ((V!52547 0))(
  ( (V!52548 (val!17866 Int)) )
))
(declare-datatypes ((ValueCell!16893 0))(
  ( (ValueCellFull!16893 (v!20491 V!52547)) (EmptyCell!16893) )
))
(declare-datatypes ((array!88103 0))(
  ( (array!88104 (arr!42527 (Array (_ BitVec 32) ValueCell!16893)) (size!43078 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88103)

(declare-fun mapDefault!55003 () ValueCell!16893)

(assert (=> b!1314310 (= condMapEmpty!55003 (= (arr!42527 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16893)) mapDefault!55003)))))

(declare-fun b!1314311 () Bool)

(assert (=> b!1314311 (= e!749731 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52547)

(declare-fun zeroValue!1296 () V!52547)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun lt!585721 () Bool)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((tuple2!23208 0))(
  ( (tuple2!23209 (_1!11614 (_ BitVec 64)) (_2!11614 V!52547)) )
))
(declare-datatypes ((List!30371 0))(
  ( (Nil!30368) (Cons!30367 (h!31576 tuple2!23208) (t!43984 List!30371)) )
))
(declare-datatypes ((ListLongMap!20877 0))(
  ( (ListLongMap!20878 (toList!10454 List!30371)) )
))
(declare-fun contains!8540 (ListLongMap!20877 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5410 (array!88101 array!88103 (_ BitVec 32) (_ BitVec 32) V!52547 V!52547 (_ BitVec 32) Int) ListLongMap!20877)

(assert (=> b!1314311 (= lt!585721 (contains!8540 (getCurrentListMap!5410 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1314312 () Bool)

(declare-fun res!872637 () Bool)

(assert (=> b!1314312 (=> (not res!872637) (not e!749731))))

(declare-datatypes ((List!30372 0))(
  ( (Nil!30369) (Cons!30368 (h!31577 (_ BitVec 64)) (t!43985 List!30372)) )
))
(declare-fun arrayNoDuplicates!0 (array!88101 (_ BitVec 32) List!30372) Bool)

(assert (=> b!1314312 (= res!872637 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30369))))

(declare-fun b!1314313 () Bool)

(declare-fun e!749732 () Bool)

(declare-fun tp_is_empty!35583 () Bool)

(assert (=> b!1314313 (= e!749732 tp_is_empty!35583)))

(declare-fun mapNonEmpty!55003 () Bool)

(declare-fun tp!104881 () Bool)

(assert (=> mapNonEmpty!55003 (= mapRes!55003 (and tp!104881 e!749732))))

(declare-fun mapValue!55003 () ValueCell!16893)

(declare-fun mapRest!55003 () (Array (_ BitVec 32) ValueCell!16893))

(declare-fun mapKey!55003 () (_ BitVec 32))

(assert (=> mapNonEmpty!55003 (= (arr!42527 _values!1354) (store mapRest!55003 mapKey!55003 mapValue!55003))))

(declare-fun res!872636 () Bool)

(assert (=> start!111054 (=> (not res!872636) (not e!749731))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111054 (= res!872636 (validMask!0 mask!2040))))

(assert (=> start!111054 e!749731))

(assert (=> start!111054 tp!104882))

(declare-fun array_inv!32101 (array!88101) Bool)

(assert (=> start!111054 (array_inv!32101 _keys!1628)))

(assert (=> start!111054 true))

(assert (=> start!111054 tp_is_empty!35583))

(declare-fun array_inv!32102 (array!88103) Bool)

(assert (=> start!111054 (and (array_inv!32102 _values!1354) e!749733)))

(declare-fun b!1314314 () Bool)

(assert (=> b!1314314 (= e!749734 tp_is_empty!35583)))

(declare-fun b!1314315 () Bool)

(declare-fun res!872638 () Bool)

(assert (=> b!1314315 (=> (not res!872638) (not e!749731))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88101 (_ BitVec 32)) Bool)

(assert (=> b!1314315 (= res!872638 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapIsEmpty!55003 () Bool)

(assert (=> mapIsEmpty!55003 mapRes!55003))

(declare-fun b!1314316 () Bool)

(declare-fun res!872639 () Bool)

(assert (=> b!1314316 (=> (not res!872639) (not e!749731))))

(assert (=> b!1314316 (= res!872639 (and (= (size!43078 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43077 _keys!1628) (size!43078 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(assert (= (and start!111054 res!872636) b!1314316))

(assert (= (and b!1314316 res!872639) b!1314315))

(assert (= (and b!1314315 res!872638) b!1314312))

(assert (= (and b!1314312 res!872637) b!1314309))

(assert (= (and b!1314309 res!872635) b!1314311))

(assert (= (and b!1314310 condMapEmpty!55003) mapIsEmpty!55003))

(assert (= (and b!1314310 (not condMapEmpty!55003)) mapNonEmpty!55003))

(get-info :version)

(assert (= (and mapNonEmpty!55003 ((_ is ValueCellFull!16893) mapValue!55003)) b!1314313))

(assert (= (and b!1314310 ((_ is ValueCellFull!16893) mapDefault!55003)) b!1314314))

(assert (= start!111054 b!1314310))

(declare-fun m!1202881 () Bool)

(assert (=> b!1314315 m!1202881))

(declare-fun m!1202883 () Bool)

(assert (=> mapNonEmpty!55003 m!1202883))

(declare-fun m!1202885 () Bool)

(assert (=> b!1314312 m!1202885))

(declare-fun m!1202887 () Bool)

(assert (=> start!111054 m!1202887))

(declare-fun m!1202889 () Bool)

(assert (=> start!111054 m!1202889))

(declare-fun m!1202891 () Bool)

(assert (=> start!111054 m!1202891))

(declare-fun m!1202893 () Bool)

(assert (=> b!1314311 m!1202893))

(assert (=> b!1314311 m!1202893))

(declare-fun m!1202895 () Bool)

(assert (=> b!1314311 m!1202895))

(check-sat tp_is_empty!35583 b_and!48071 (not start!111054) (not b!1314312) (not b!1314315) (not b!1314311) (not mapNonEmpty!55003) (not b_next!29853))
(check-sat b_and!48071 (not b_next!29853))
