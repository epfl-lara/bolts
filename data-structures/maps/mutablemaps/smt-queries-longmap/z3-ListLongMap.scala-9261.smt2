; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110952 () Bool)

(assert start!110952)

(declare-fun b_free!29751 () Bool)

(declare-fun b_next!29751 () Bool)

(assert (=> start!110952 (= b_free!29751 (not b_next!29751))))

(declare-fun tp!104575 () Bool)

(declare-fun b_and!47969 () Bool)

(assert (=> start!110952 (= tp!104575 b_and!47969)))

(declare-fun mapNonEmpty!54850 () Bool)

(declare-fun mapRes!54850 () Bool)

(declare-fun tp!104576 () Bool)

(declare-fun e!748968 () Bool)

(assert (=> mapNonEmpty!54850 (= mapRes!54850 (and tp!104576 e!748968))))

(declare-datatypes ((V!52411 0))(
  ( (V!52412 (val!17815 Int)) )
))
(declare-datatypes ((ValueCell!16842 0))(
  ( (ValueCellFull!16842 (v!20440 V!52411)) (EmptyCell!16842) )
))
(declare-fun mapRest!54850 () (Array (_ BitVec 32) ValueCell!16842))

(declare-fun mapValue!54850 () ValueCell!16842)

(declare-fun mapKey!54850 () (_ BitVec 32))

(declare-datatypes ((array!87909 0))(
  ( (array!87910 (arr!42430 (Array (_ BitVec 32) ValueCell!16842)) (size!42981 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87909)

(assert (=> mapNonEmpty!54850 (= (arr!42430 _values!1354) (store mapRest!54850 mapKey!54850 mapValue!54850))))

(declare-fun res!871827 () Bool)

(declare-fun e!748970 () Bool)

(assert (=> start!110952 (=> (not res!871827) (not e!748970))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110952 (= res!871827 (validMask!0 mask!2040))))

(assert (=> start!110952 e!748970))

(assert (=> start!110952 tp!104575))

(declare-datatypes ((array!87911 0))(
  ( (array!87912 (arr!42431 (Array (_ BitVec 32) (_ BitVec 64))) (size!42982 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87911)

(declare-fun array_inv!32035 (array!87911) Bool)

(assert (=> start!110952 (array_inv!32035 _keys!1628)))

(assert (=> start!110952 true))

(declare-fun tp_is_empty!35481 () Bool)

(assert (=> start!110952 tp_is_empty!35481))

(declare-fun e!748966 () Bool)

(declare-fun array_inv!32036 (array!87909) Bool)

(assert (=> start!110952 (and (array_inv!32036 _values!1354) e!748966)))

(declare-fun b!1313037 () Bool)

(declare-fun res!871826 () Bool)

(assert (=> b!1313037 (=> (not res!871826) (not e!748970))))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1313037 (= res!871826 (not (= (select (arr!42431 _keys!1628) from!2020) k0!1175)))))

(declare-fun b!1313038 () Bool)

(assert (=> b!1313038 (= e!748970 (bvslt (bvadd #b00000000000000000000000000000001 from!2020) #b00000000000000000000000000000000))))

(declare-fun b!1313039 () Bool)

(declare-fun res!871824 () Bool)

(assert (=> b!1313039 (=> (not res!871824) (not e!748970))))

(declare-datatypes ((List!30300 0))(
  ( (Nil!30297) (Cons!30296 (h!31505 (_ BitVec 64)) (t!43913 List!30300)) )
))
(declare-fun arrayNoDuplicates!0 (array!87911 (_ BitVec 32) List!30300) Bool)

(assert (=> b!1313039 (= res!871824 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30297))))

(declare-fun b!1313040 () Bool)

(declare-fun res!871822 () Bool)

(assert (=> b!1313040 (=> (not res!871822) (not e!748970))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1313040 (= res!871822 (not (validKeyInArray!0 (select (arr!42431 _keys!1628) from!2020))))))

(declare-fun mapIsEmpty!54850 () Bool)

(assert (=> mapIsEmpty!54850 mapRes!54850))

(declare-fun b!1313041 () Bool)

(declare-fun res!871828 () Bool)

(assert (=> b!1313041 (=> (not res!871828) (not e!748970))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52411)

(declare-fun zeroValue!1296 () V!52411)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((tuple2!23140 0))(
  ( (tuple2!23141 (_1!11580 (_ BitVec 64)) (_2!11580 V!52411)) )
))
(declare-datatypes ((List!30301 0))(
  ( (Nil!30298) (Cons!30297 (h!31506 tuple2!23140) (t!43914 List!30301)) )
))
(declare-datatypes ((ListLongMap!20809 0))(
  ( (ListLongMap!20810 (toList!10420 List!30301)) )
))
(declare-fun contains!8506 (ListLongMap!20809 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5376 (array!87911 array!87909 (_ BitVec 32) (_ BitVec 32) V!52411 V!52411 (_ BitVec 32) Int) ListLongMap!20809)

(assert (=> b!1313041 (= res!871828 (contains!8506 (getCurrentListMap!5376 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1313042 () Bool)

(declare-fun res!871829 () Bool)

(assert (=> b!1313042 (=> (not res!871829) (not e!748970))))

(assert (=> b!1313042 (= res!871829 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42982 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1313043 () Bool)

(declare-fun res!871823 () Bool)

(assert (=> b!1313043 (=> (not res!871823) (not e!748970))))

(assert (=> b!1313043 (= res!871823 (and (= (size!42981 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42982 _keys!1628) (size!42981 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1313044 () Bool)

(declare-fun e!748967 () Bool)

(assert (=> b!1313044 (= e!748967 tp_is_empty!35481)))

(declare-fun b!1313045 () Bool)

(assert (=> b!1313045 (= e!748966 (and e!748967 mapRes!54850))))

(declare-fun condMapEmpty!54850 () Bool)

(declare-fun mapDefault!54850 () ValueCell!16842)

(assert (=> b!1313045 (= condMapEmpty!54850 (= (arr!42430 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16842)) mapDefault!54850)))))

(declare-fun b!1313046 () Bool)

(assert (=> b!1313046 (= e!748968 tp_is_empty!35481)))

(declare-fun b!1313047 () Bool)

(declare-fun res!871825 () Bool)

(assert (=> b!1313047 (=> (not res!871825) (not e!748970))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87911 (_ BitVec 32)) Bool)

(assert (=> b!1313047 (= res!871825 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(assert (= (and start!110952 res!871827) b!1313043))

(assert (= (and b!1313043 res!871823) b!1313047))

(assert (= (and b!1313047 res!871825) b!1313039))

(assert (= (and b!1313039 res!871824) b!1313042))

(assert (= (and b!1313042 res!871829) b!1313041))

(assert (= (and b!1313041 res!871828) b!1313037))

(assert (= (and b!1313037 res!871826) b!1313040))

(assert (= (and b!1313040 res!871822) b!1313038))

(assert (= (and b!1313045 condMapEmpty!54850) mapIsEmpty!54850))

(assert (= (and b!1313045 (not condMapEmpty!54850)) mapNonEmpty!54850))

(get-info :version)

(assert (= (and mapNonEmpty!54850 ((_ is ValueCellFull!16842) mapValue!54850)) b!1313046))

(assert (= (and b!1313045 ((_ is ValueCellFull!16842) mapDefault!54850)) b!1313044))

(assert (= start!110952 b!1313045))

(declare-fun m!1202027 () Bool)

(assert (=> b!1313039 m!1202027))

(declare-fun m!1202029 () Bool)

(assert (=> b!1313047 m!1202029))

(declare-fun m!1202031 () Bool)

(assert (=> start!110952 m!1202031))

(declare-fun m!1202033 () Bool)

(assert (=> start!110952 m!1202033))

(declare-fun m!1202035 () Bool)

(assert (=> start!110952 m!1202035))

(declare-fun m!1202037 () Bool)

(assert (=> mapNonEmpty!54850 m!1202037))

(declare-fun m!1202039 () Bool)

(assert (=> b!1313037 m!1202039))

(declare-fun m!1202041 () Bool)

(assert (=> b!1313041 m!1202041))

(assert (=> b!1313041 m!1202041))

(declare-fun m!1202043 () Bool)

(assert (=> b!1313041 m!1202043))

(assert (=> b!1313040 m!1202039))

(assert (=> b!1313040 m!1202039))

(declare-fun m!1202045 () Bool)

(assert (=> b!1313040 m!1202045))

(check-sat (not b!1313047) tp_is_empty!35481 (not mapNonEmpty!54850) (not b!1313039) (not b!1313041) (not start!110952) (not b_next!29751) (not b!1313040) b_and!47969)
(check-sat b_and!47969 (not b_next!29751))
