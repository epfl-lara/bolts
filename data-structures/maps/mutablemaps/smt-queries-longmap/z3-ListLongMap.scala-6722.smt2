; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84334 () Bool)

(assert start!84334)

(declare-fun b!986092 () Bool)

(declare-fun res!659901 () Bool)

(declare-fun e!555979 () Bool)

(assert (=> b!986092 (=> (not res!659901) (not e!555979))))

(declare-datatypes ((array!62173 0))(
  ( (array!62174 (arr!29940 (Array (_ BitVec 32) (_ BitVec 64))) (size!30420 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62173)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!986092 (= res!659901 (validKeyInArray!0 (select (arr!29940 _keys!1544) from!1932)))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun lt!437404 () Bool)

(declare-fun b!986093 () Bool)

(assert (=> b!986093 (= e!555979 (and (or lt!437404 (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (or lt!437404 (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (or (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not lt!437404)) (bvsgt from!1932 (size!30420 _keys!1544))))))

(assert (=> b!986093 (= lt!437404 (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!36692 () Bool)

(declare-fun mapRes!36692 () Bool)

(assert (=> mapIsEmpty!36692 mapRes!36692))

(declare-fun b!986094 () Bool)

(declare-fun e!555977 () Bool)

(declare-fun tp_is_empty!23109 () Bool)

(assert (=> b!986094 (= e!555977 tp_is_empty!23109)))

(declare-fun b!986095 () Bool)

(declare-fun res!659904 () Bool)

(assert (=> b!986095 (=> (not res!659904) (not e!555979))))

(assert (=> b!986095 (= res!659904 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30420 _keys!1544))))))

(declare-fun b!986096 () Bool)

(declare-fun res!659900 () Bool)

(assert (=> b!986096 (=> (not res!659900) (not e!555979))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62173 (_ BitVec 32)) Bool)

(assert (=> b!986096 (= res!659900 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun res!659902 () Bool)

(assert (=> start!84334 (=> (not res!659902) (not e!555979))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84334 (= res!659902 (validMask!0 mask!1948))))

(assert (=> start!84334 e!555979))

(assert (=> start!84334 true))

(declare-datatypes ((V!35795 0))(
  ( (V!35796 (val!11605 Int)) )
))
(declare-datatypes ((ValueCell!11073 0))(
  ( (ValueCellFull!11073 (v!14167 V!35795)) (EmptyCell!11073) )
))
(declare-datatypes ((array!62175 0))(
  ( (array!62176 (arr!29941 (Array (_ BitVec 32) ValueCell!11073)) (size!30421 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62175)

(declare-fun e!555980 () Bool)

(declare-fun array_inv!23005 (array!62175) Bool)

(assert (=> start!84334 (and (array_inv!23005 _values!1278) e!555980)))

(declare-fun array_inv!23006 (array!62173) Bool)

(assert (=> start!84334 (array_inv!23006 _keys!1544)))

(declare-fun b!986097 () Bool)

(assert (=> b!986097 (= e!555980 (and e!555977 mapRes!36692))))

(declare-fun condMapEmpty!36692 () Bool)

(declare-fun mapDefault!36692 () ValueCell!11073)

(assert (=> b!986097 (= condMapEmpty!36692 (= (arr!29941 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11073)) mapDefault!36692)))))

(declare-fun b!986098 () Bool)

(declare-fun e!555978 () Bool)

(assert (=> b!986098 (= e!555978 tp_is_empty!23109)))

(declare-fun b!986099 () Bool)

(declare-fun res!659899 () Bool)

(assert (=> b!986099 (=> (not res!659899) (not e!555979))))

(declare-datatypes ((List!20848 0))(
  ( (Nil!20845) (Cons!20844 (h!22006 (_ BitVec 64)) (t!29755 List!20848)) )
))
(declare-fun arrayNoDuplicates!0 (array!62173 (_ BitVec 32) List!20848) Bool)

(assert (=> b!986099 (= res!659899 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20845))))

(declare-fun b!986100 () Bool)

(declare-fun res!659903 () Bool)

(assert (=> b!986100 (=> (not res!659903) (not e!555979))))

(assert (=> b!986100 (= res!659903 (and (= (size!30421 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30420 _keys!1544) (size!30421 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!36692 () Bool)

(declare-fun tp!69548 () Bool)

(assert (=> mapNonEmpty!36692 (= mapRes!36692 (and tp!69548 e!555978))))

(declare-fun mapRest!36692 () (Array (_ BitVec 32) ValueCell!11073))

(declare-fun mapKey!36692 () (_ BitVec 32))

(declare-fun mapValue!36692 () ValueCell!11073)

(assert (=> mapNonEmpty!36692 (= (arr!29941 _values!1278) (store mapRest!36692 mapKey!36692 mapValue!36692))))

(assert (= (and start!84334 res!659902) b!986100))

(assert (= (and b!986100 res!659903) b!986096))

(assert (= (and b!986096 res!659900) b!986099))

(assert (= (and b!986099 res!659899) b!986095))

(assert (= (and b!986095 res!659904) b!986092))

(assert (= (and b!986092 res!659901) b!986093))

(assert (= (and b!986097 condMapEmpty!36692) mapIsEmpty!36692))

(assert (= (and b!986097 (not condMapEmpty!36692)) mapNonEmpty!36692))

(get-info :version)

(assert (= (and mapNonEmpty!36692 ((_ is ValueCellFull!11073) mapValue!36692)) b!986098))

(assert (= (and b!986097 ((_ is ValueCellFull!11073) mapDefault!36692)) b!986094))

(assert (= start!84334 b!986097))

(declare-fun m!913095 () Bool)

(assert (=> b!986092 m!913095))

(assert (=> b!986092 m!913095))

(declare-fun m!913097 () Bool)

(assert (=> b!986092 m!913097))

(declare-fun m!913099 () Bool)

(assert (=> mapNonEmpty!36692 m!913099))

(declare-fun m!913101 () Bool)

(assert (=> b!986099 m!913101))

(declare-fun m!913103 () Bool)

(assert (=> start!84334 m!913103))

(declare-fun m!913105 () Bool)

(assert (=> start!84334 m!913105))

(declare-fun m!913107 () Bool)

(assert (=> start!84334 m!913107))

(declare-fun m!913109 () Bool)

(assert (=> b!986096 m!913109))

(check-sat (not b!986096) tp_is_empty!23109 (not b!986099) (not mapNonEmpty!36692) (not start!84334) (not b!986092))
(check-sat)
