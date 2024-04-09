; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110688 () Bool)

(assert start!110688)

(declare-fun b_free!29487 () Bool)

(declare-fun b_next!29487 () Bool)

(assert (=> start!110688 (= b_free!29487 (not b_next!29487))))

(declare-fun tp!103783 () Bool)

(declare-fun b_and!47705 () Bool)

(assert (=> start!110688 (= tp!103783 b_and!47705)))

(declare-fun b!1309206 () Bool)

(declare-fun res!869180 () Bool)

(declare-fun e!746989 () Bool)

(assert (=> b!1309206 (=> (not res!869180) (not e!746989))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52059 0))(
  ( (V!52060 (val!17683 Int)) )
))
(declare-datatypes ((ValueCell!16710 0))(
  ( (ValueCellFull!16710 (v!20308 V!52059)) (EmptyCell!16710) )
))
(declare-datatypes ((array!87397 0))(
  ( (array!87398 (arr!42174 (Array (_ BitVec 32) ValueCell!16710)) (size!42725 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87397)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((array!87399 0))(
  ( (array!87400 (arr!42175 (Array (_ BitVec 32) (_ BitVec 64))) (size!42726 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87399)

(assert (=> b!1309206 (= res!869180 (and (= (size!42725 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42726 _keys!1628) (size!42725 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1309207 () Bool)

(declare-fun res!869179 () Bool)

(assert (=> b!1309207 (=> (not res!869179) (not e!746989))))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1309207 (= res!869179 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42726 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1309208 () Bool)

(declare-fun e!746986 () Bool)

(declare-fun tp_is_empty!35217 () Bool)

(assert (=> b!1309208 (= e!746986 tp_is_empty!35217)))

(declare-fun mapNonEmpty!54454 () Bool)

(declare-fun mapRes!54454 () Bool)

(declare-fun tp!103784 () Bool)

(assert (=> mapNonEmpty!54454 (= mapRes!54454 (and tp!103784 e!746986))))

(declare-fun mapKey!54454 () (_ BitVec 32))

(declare-fun mapRest!54454 () (Array (_ BitVec 32) ValueCell!16710))

(declare-fun mapValue!54454 () ValueCell!16710)

(assert (=> mapNonEmpty!54454 (= (arr!42174 _values!1354) (store mapRest!54454 mapKey!54454 mapValue!54454))))

(declare-fun res!869182 () Bool)

(assert (=> start!110688 (=> (not res!869182) (not e!746989))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110688 (= res!869182 (validMask!0 mask!2040))))

(assert (=> start!110688 e!746989))

(assert (=> start!110688 tp!103783))

(declare-fun array_inv!31873 (array!87399) Bool)

(assert (=> start!110688 (array_inv!31873 _keys!1628)))

(assert (=> start!110688 true))

(assert (=> start!110688 tp_is_empty!35217))

(declare-fun e!746990 () Bool)

(declare-fun array_inv!31874 (array!87397) Bool)

(assert (=> start!110688 (and (array_inv!31874 _values!1354) e!746990)))

(declare-fun b!1309209 () Bool)

(declare-fun e!746988 () Bool)

(assert (=> b!1309209 (= e!746988 tp_is_empty!35217)))

(declare-fun mapIsEmpty!54454 () Bool)

(assert (=> mapIsEmpty!54454 mapRes!54454))

(declare-fun b!1309210 () Bool)

(declare-fun res!869183 () Bool)

(assert (=> b!1309210 (=> (not res!869183) (not e!746989))))

(declare-datatypes ((List!30108 0))(
  ( (Nil!30105) (Cons!30104 (h!31313 (_ BitVec 64)) (t!43721 List!30108)) )
))
(declare-fun arrayNoDuplicates!0 (array!87399 (_ BitVec 32) List!30108) Bool)

(assert (=> b!1309210 (= res!869183 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30105))))

(declare-fun b!1309211 () Bool)

(declare-fun res!869181 () Bool)

(assert (=> b!1309211 (=> (not res!869181) (not e!746989))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87399 (_ BitVec 32)) Bool)

(assert (=> b!1309211 (= res!869181 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1309212 () Bool)

(assert (=> b!1309212 (= e!746989 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585181 () Bool)

(declare-fun minValue!1296 () V!52059)

(declare-fun zeroValue!1296 () V!52059)

(declare-datatypes ((tuple2!22938 0))(
  ( (tuple2!22939 (_1!11479 (_ BitVec 64)) (_2!11479 V!52059)) )
))
(declare-datatypes ((List!30109 0))(
  ( (Nil!30106) (Cons!30105 (h!31314 tuple2!22938) (t!43722 List!30109)) )
))
(declare-datatypes ((ListLongMap!20607 0))(
  ( (ListLongMap!20608 (toList!10319 List!30109)) )
))
(declare-fun contains!8405 (ListLongMap!20607 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5275 (array!87399 array!87397 (_ BitVec 32) (_ BitVec 32) V!52059 V!52059 (_ BitVec 32) Int) ListLongMap!20607)

(assert (=> b!1309212 (= lt!585181 (contains!8405 (getCurrentListMap!5275 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1309213 () Bool)

(assert (=> b!1309213 (= e!746990 (and e!746988 mapRes!54454))))

(declare-fun condMapEmpty!54454 () Bool)

(declare-fun mapDefault!54454 () ValueCell!16710)

(assert (=> b!1309213 (= condMapEmpty!54454 (= (arr!42174 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16710)) mapDefault!54454)))))

(assert (= (and start!110688 res!869182) b!1309206))

(assert (= (and b!1309206 res!869180) b!1309211))

(assert (= (and b!1309211 res!869181) b!1309210))

(assert (= (and b!1309210 res!869183) b!1309207))

(assert (= (and b!1309207 res!869179) b!1309212))

(assert (= (and b!1309213 condMapEmpty!54454) mapIsEmpty!54454))

(assert (= (and b!1309213 (not condMapEmpty!54454)) mapNonEmpty!54454))

(get-info :version)

(assert (= (and mapNonEmpty!54454 ((_ is ValueCellFull!16710) mapValue!54454)) b!1309208))

(assert (= (and b!1309213 ((_ is ValueCellFull!16710) mapDefault!54454)) b!1309209))

(assert (= start!110688 b!1309213))

(declare-fun m!1199371 () Bool)

(assert (=> mapNonEmpty!54454 m!1199371))

(declare-fun m!1199373 () Bool)

(assert (=> b!1309211 m!1199373))

(declare-fun m!1199375 () Bool)

(assert (=> b!1309210 m!1199375))

(declare-fun m!1199377 () Bool)

(assert (=> b!1309212 m!1199377))

(assert (=> b!1309212 m!1199377))

(declare-fun m!1199379 () Bool)

(assert (=> b!1309212 m!1199379))

(declare-fun m!1199381 () Bool)

(assert (=> start!110688 m!1199381))

(declare-fun m!1199383 () Bool)

(assert (=> start!110688 m!1199383))

(declare-fun m!1199385 () Bool)

(assert (=> start!110688 m!1199385))

(check-sat (not b!1309210) b_and!47705 (not b_next!29487) (not b!1309212) (not mapNonEmpty!54454) tp_is_empty!35217 (not b!1309211) (not start!110688))
(check-sat b_and!47705 (not b_next!29487))
