; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111060 () Bool)

(assert start!111060)

(declare-fun b_free!29859 () Bool)

(declare-fun b_next!29859 () Bool)

(assert (=> start!111060 (= b_free!29859 (not b_next!29859))))

(declare-fun tp!104900 () Bool)

(declare-fun b_and!48077 () Bool)

(assert (=> start!111060 (= tp!104900 b_and!48077)))

(declare-fun res!872683 () Bool)

(declare-fun e!749778 () Bool)

(assert (=> start!111060 (=> (not res!872683) (not e!749778))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111060 (= res!872683 (validMask!0 mask!2040))))

(assert (=> start!111060 e!749778))

(assert (=> start!111060 tp!104900))

(declare-datatypes ((array!88111 0))(
  ( (array!88112 (arr!42531 (Array (_ BitVec 32) (_ BitVec 64))) (size!43082 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88111)

(declare-fun array_inv!32103 (array!88111) Bool)

(assert (=> start!111060 (array_inv!32103 _keys!1628)))

(assert (=> start!111060 true))

(declare-fun tp_is_empty!35589 () Bool)

(assert (=> start!111060 tp_is_empty!35589))

(declare-datatypes ((V!52555 0))(
  ( (V!52556 (val!17869 Int)) )
))
(declare-datatypes ((ValueCell!16896 0))(
  ( (ValueCellFull!16896 (v!20494 V!52555)) (EmptyCell!16896) )
))
(declare-datatypes ((array!88113 0))(
  ( (array!88114 (arr!42532 (Array (_ BitVec 32) ValueCell!16896)) (size!43083 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88113)

(declare-fun e!749780 () Bool)

(declare-fun array_inv!32104 (array!88113) Bool)

(assert (=> start!111060 (and (array_inv!32104 _values!1354) e!749780)))

(declare-fun b!1314381 () Bool)

(declare-fun e!749779 () Bool)

(assert (=> b!1314381 (= e!749779 tp_is_empty!35589)))

(declare-fun b!1314382 () Bool)

(declare-fun res!872682 () Bool)

(assert (=> b!1314382 (=> (not res!872682) (not e!749778))))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1314382 (= res!872682 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43082 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1314383 () Bool)

(declare-fun res!872680 () Bool)

(assert (=> b!1314383 (=> (not res!872680) (not e!749778))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88111 (_ BitVec 32)) Bool)

(assert (=> b!1314383 (= res!872680 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapIsEmpty!55012 () Bool)

(declare-fun mapRes!55012 () Bool)

(assert (=> mapIsEmpty!55012 mapRes!55012))

(declare-fun b!1314384 () Bool)

(declare-fun res!872684 () Bool)

(assert (=> b!1314384 (=> (not res!872684) (not e!749778))))

(declare-datatypes ((List!30374 0))(
  ( (Nil!30371) (Cons!30370 (h!31579 (_ BitVec 64)) (t!43987 List!30374)) )
))
(declare-fun arrayNoDuplicates!0 (array!88111 (_ BitVec 32) List!30374) Bool)

(assert (=> b!1314384 (= res!872684 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30371))))

(declare-fun b!1314385 () Bool)

(declare-fun res!872681 () Bool)

(assert (=> b!1314385 (=> (not res!872681) (not e!749778))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1314385 (= res!872681 (and (= (size!43083 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43082 _keys!1628) (size!43083 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1314386 () Bool)

(assert (=> b!1314386 (= e!749780 (and e!749779 mapRes!55012))))

(declare-fun condMapEmpty!55012 () Bool)

(declare-fun mapDefault!55012 () ValueCell!16896)

(assert (=> b!1314386 (= condMapEmpty!55012 (= (arr!42532 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16896)) mapDefault!55012)))))

(declare-fun b!1314387 () Bool)

(assert (=> b!1314387 (= e!749778 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585730 () Bool)

(declare-fun minValue!1296 () V!52555)

(declare-fun zeroValue!1296 () V!52555)

(declare-datatypes ((tuple2!23210 0))(
  ( (tuple2!23211 (_1!11615 (_ BitVec 64)) (_2!11615 V!52555)) )
))
(declare-datatypes ((List!30375 0))(
  ( (Nil!30372) (Cons!30371 (h!31580 tuple2!23210) (t!43988 List!30375)) )
))
(declare-datatypes ((ListLongMap!20879 0))(
  ( (ListLongMap!20880 (toList!10455 List!30375)) )
))
(declare-fun contains!8541 (ListLongMap!20879 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5411 (array!88111 array!88113 (_ BitVec 32) (_ BitVec 32) V!52555 V!52555 (_ BitVec 32) Int) ListLongMap!20879)

(assert (=> b!1314387 (= lt!585730 (contains!8541 (getCurrentListMap!5411 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun mapNonEmpty!55012 () Bool)

(declare-fun tp!104899 () Bool)

(declare-fun e!749777 () Bool)

(assert (=> mapNonEmpty!55012 (= mapRes!55012 (and tp!104899 e!749777))))

(declare-fun mapKey!55012 () (_ BitVec 32))

(declare-fun mapValue!55012 () ValueCell!16896)

(declare-fun mapRest!55012 () (Array (_ BitVec 32) ValueCell!16896))

(assert (=> mapNonEmpty!55012 (= (arr!42532 _values!1354) (store mapRest!55012 mapKey!55012 mapValue!55012))))

(declare-fun b!1314388 () Bool)

(assert (=> b!1314388 (= e!749777 tp_is_empty!35589)))

(assert (= (and start!111060 res!872683) b!1314385))

(assert (= (and b!1314385 res!872681) b!1314383))

(assert (= (and b!1314383 res!872680) b!1314384))

(assert (= (and b!1314384 res!872684) b!1314382))

(assert (= (and b!1314382 res!872682) b!1314387))

(assert (= (and b!1314386 condMapEmpty!55012) mapIsEmpty!55012))

(assert (= (and b!1314386 (not condMapEmpty!55012)) mapNonEmpty!55012))

(get-info :version)

(assert (= (and mapNonEmpty!55012 ((_ is ValueCellFull!16896) mapValue!55012)) b!1314388))

(assert (= (and b!1314386 ((_ is ValueCellFull!16896) mapDefault!55012)) b!1314381))

(assert (= start!111060 b!1314386))

(declare-fun m!1202929 () Bool)

(assert (=> b!1314383 m!1202929))

(declare-fun m!1202931 () Bool)

(assert (=> mapNonEmpty!55012 m!1202931))

(declare-fun m!1202933 () Bool)

(assert (=> b!1314384 m!1202933))

(declare-fun m!1202935 () Bool)

(assert (=> start!111060 m!1202935))

(declare-fun m!1202937 () Bool)

(assert (=> start!111060 m!1202937))

(declare-fun m!1202939 () Bool)

(assert (=> start!111060 m!1202939))

(declare-fun m!1202941 () Bool)

(assert (=> b!1314387 m!1202941))

(assert (=> b!1314387 m!1202941))

(declare-fun m!1202943 () Bool)

(assert (=> b!1314387 m!1202943))

(check-sat (not mapNonEmpty!55012) tp_is_empty!35589 (not b_next!29859) (not b!1314383) b_and!48077 (not b!1314384) (not b!1314387) (not start!111060))
(check-sat b_and!48077 (not b_next!29859))
