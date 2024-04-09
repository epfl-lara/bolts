; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4212 () Bool)

(assert start!4212)

(declare-fun b_free!1119 () Bool)

(declare-fun b_next!1119 () Bool)

(assert (=> start!4212 (= b_free!1119 (not b_next!1119))))

(declare-fun tp!4776 () Bool)

(declare-fun b_and!1931 () Bool)

(assert (=> start!4212 (= tp!4776 b_and!1931)))

(declare-fun b!32186 () Bool)

(declare-fun res!19546 () Bool)

(declare-fun e!20476 () Bool)

(assert (=> b!32186 (=> (not res!19546) (not e!20476))))

(declare-datatypes ((array!2151 0))(
  ( (array!2152 (arr!1029 (Array (_ BitVec 32) (_ BitVec 64))) (size!1130 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2151)

(declare-datatypes ((List!837 0))(
  ( (Nil!834) (Cons!833 (h!1400 (_ BitVec 64)) (t!3532 List!837)) )
))
(declare-fun arrayNoDuplicates!0 (array!2151 (_ BitVec 32) List!837) Bool)

(assert (=> b!32186 (= res!19546 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!834))))

(declare-fun b!32187 () Bool)

(declare-fun res!19542 () Bool)

(assert (=> b!32187 (=> (not res!19542) (not e!20476))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2151 (_ BitVec 32)) Bool)

(assert (=> b!32187 (= res!19542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!32188 () Bool)

(declare-fun e!20474 () Bool)

(declare-fun tp_is_empty!1473 () Bool)

(assert (=> b!32188 (= e!20474 tp_is_empty!1473)))

(declare-fun b!32189 () Bool)

(assert (=> b!32189 (= e!20476 false)))

(declare-fun lt!11649 () (_ BitVec 32))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!2151 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!32189 (= lt!11649 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun res!19543 () Bool)

(assert (=> start!4212 (=> (not res!19543) (not e!20476))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4212 (= res!19543 (validMask!0 mask!2294))))

(assert (=> start!4212 e!20476))

(assert (=> start!4212 true))

(assert (=> start!4212 tp!4776))

(declare-datatypes ((V!1789 0))(
  ( (V!1790 (val!763 Int)) )
))
(declare-datatypes ((ValueCell!537 0))(
  ( (ValueCellFull!537 (v!1852 V!1789)) (EmptyCell!537) )
))
(declare-datatypes ((array!2153 0))(
  ( (array!2154 (arr!1030 (Array (_ BitVec 32) ValueCell!537)) (size!1131 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2153)

(declare-fun e!20473 () Bool)

(declare-fun array_inv!683 (array!2153) Bool)

(assert (=> start!4212 (and (array_inv!683 _values!1501) e!20473)))

(declare-fun array_inv!684 (array!2151) Bool)

(assert (=> start!4212 (array_inv!684 _keys!1833)))

(assert (=> start!4212 tp_is_empty!1473))

(declare-fun b!32190 () Bool)

(declare-fun res!19541 () Bool)

(assert (=> b!32190 (=> (not res!19541) (not e!20476))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1789)

(declare-fun minValue!1443 () V!1789)

(declare-datatypes ((tuple2!1234 0))(
  ( (tuple2!1235 (_1!627 (_ BitVec 64)) (_2!627 V!1789)) )
))
(declare-datatypes ((List!838 0))(
  ( (Nil!835) (Cons!834 (h!1401 tuple2!1234) (t!3533 List!838)) )
))
(declare-datatypes ((ListLongMap!815 0))(
  ( (ListLongMap!816 (toList!423 List!838)) )
))
(declare-fun contains!360 (ListLongMap!815 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!248 (array!2151 array!2153 (_ BitVec 32) (_ BitVec 32) V!1789 V!1789 (_ BitVec 32) Int) ListLongMap!815)

(assert (=> b!32190 (= res!19541 (not (contains!360 (getCurrentListMap!248 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!32191 () Bool)

(declare-fun res!19544 () Bool)

(assert (=> b!32191 (=> (not res!19544) (not e!20476))))

(declare-fun arrayContainsKey!0 (array!2151 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!32191 (= res!19544 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!32192 () Bool)

(declare-fun e!20472 () Bool)

(declare-fun mapRes!1738 () Bool)

(assert (=> b!32192 (= e!20473 (and e!20472 mapRes!1738))))

(declare-fun condMapEmpty!1738 () Bool)

(declare-fun mapDefault!1738 () ValueCell!537)

(assert (=> b!32192 (= condMapEmpty!1738 (= (arr!1030 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!537)) mapDefault!1738)))))

(declare-fun b!32193 () Bool)

(assert (=> b!32193 (= e!20472 tp_is_empty!1473)))

(declare-fun b!32194 () Bool)

(declare-fun res!19540 () Bool)

(assert (=> b!32194 (=> (not res!19540) (not e!20476))))

(assert (=> b!32194 (= res!19540 (and (= (size!1131 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1130 _keys!1833) (size!1131 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!32195 () Bool)

(declare-fun res!19545 () Bool)

(assert (=> b!32195 (=> (not res!19545) (not e!20476))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!32195 (= res!19545 (validKeyInArray!0 k0!1304))))

(declare-fun mapNonEmpty!1738 () Bool)

(declare-fun tp!4777 () Bool)

(assert (=> mapNonEmpty!1738 (= mapRes!1738 (and tp!4777 e!20474))))

(declare-fun mapRest!1738 () (Array (_ BitVec 32) ValueCell!537))

(declare-fun mapValue!1738 () ValueCell!537)

(declare-fun mapKey!1738 () (_ BitVec 32))

(assert (=> mapNonEmpty!1738 (= (arr!1030 _values!1501) (store mapRest!1738 mapKey!1738 mapValue!1738))))

(declare-fun mapIsEmpty!1738 () Bool)

(assert (=> mapIsEmpty!1738 mapRes!1738))

(assert (= (and start!4212 res!19543) b!32194))

(assert (= (and b!32194 res!19540) b!32187))

(assert (= (and b!32187 res!19542) b!32186))

(assert (= (and b!32186 res!19546) b!32195))

(assert (= (and b!32195 res!19545) b!32190))

(assert (= (and b!32190 res!19541) b!32191))

(assert (= (and b!32191 res!19544) b!32189))

(assert (= (and b!32192 condMapEmpty!1738) mapIsEmpty!1738))

(assert (= (and b!32192 (not condMapEmpty!1738)) mapNonEmpty!1738))

(get-info :version)

(assert (= (and mapNonEmpty!1738 ((_ is ValueCellFull!537) mapValue!1738)) b!32188))

(assert (= (and b!32192 ((_ is ValueCellFull!537) mapDefault!1738)) b!32193))

(assert (= start!4212 b!32192))

(declare-fun m!25777 () Bool)

(assert (=> b!32186 m!25777))

(declare-fun m!25779 () Bool)

(assert (=> b!32189 m!25779))

(declare-fun m!25781 () Bool)

(assert (=> b!32191 m!25781))

(declare-fun m!25783 () Bool)

(assert (=> start!4212 m!25783))

(declare-fun m!25785 () Bool)

(assert (=> start!4212 m!25785))

(declare-fun m!25787 () Bool)

(assert (=> start!4212 m!25787))

(declare-fun m!25789 () Bool)

(assert (=> b!32190 m!25789))

(assert (=> b!32190 m!25789))

(declare-fun m!25791 () Bool)

(assert (=> b!32190 m!25791))

(declare-fun m!25793 () Bool)

(assert (=> mapNonEmpty!1738 m!25793))

(declare-fun m!25795 () Bool)

(assert (=> b!32187 m!25795))

(declare-fun m!25797 () Bool)

(assert (=> b!32195 m!25797))

(check-sat (not mapNonEmpty!1738) (not start!4212) (not b!32191) (not b!32195) (not b!32190) (not b!32187) tp_is_empty!1473 (not b!32189) b_and!1931 (not b_next!1119) (not b!32186))
(check-sat b_and!1931 (not b_next!1119))
