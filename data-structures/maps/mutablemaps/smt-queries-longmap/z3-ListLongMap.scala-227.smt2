; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4044 () Bool)

(assert start!4044)

(declare-fun b_free!951 () Bool)

(declare-fun b_next!951 () Bool)

(assert (=> start!4044 (= b_free!951 (not b_next!951))))

(declare-fun tp!4273 () Bool)

(declare-fun b_and!1763 () Bool)

(assert (=> start!4044 (= tp!4273 b_and!1763)))

(declare-fun b!29702 () Bool)

(declare-fun res!17817 () Bool)

(declare-fun e!19159 () Bool)

(assert (=> b!29702 (=> (not res!17817) (not e!19159))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-datatypes ((V!1565 0))(
  ( (V!1566 (val!679 Int)) )
))
(declare-datatypes ((ValueCell!453 0))(
  ( (ValueCellFull!453 (v!1768 V!1565)) (EmptyCell!453) )
))
(declare-datatypes ((array!1831 0))(
  ( (array!1832 (arr!869 (Array (_ BitVec 32) ValueCell!453)) (size!970 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1831)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1833 0))(
  ( (array!1834 (arr!870 (Array (_ BitVec 32) (_ BitVec 64))) (size!971 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1833)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1565)

(declare-fun minValue!1443 () V!1565)

(declare-datatypes ((tuple2!1114 0))(
  ( (tuple2!1115 (_1!567 (_ BitVec 64)) (_2!567 V!1565)) )
))
(declare-datatypes ((List!718 0))(
  ( (Nil!715) (Cons!714 (h!1281 tuple2!1114) (t!3413 List!718)) )
))
(declare-datatypes ((ListLongMap!695 0))(
  ( (ListLongMap!696 (toList!363 List!718)) )
))
(declare-fun contains!300 (ListLongMap!695 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!190 (array!1833 array!1831 (_ BitVec 32) (_ BitVec 32) V!1565 V!1565 (_ BitVec 32) Int) ListLongMap!695)

(assert (=> b!29702 (= res!17817 (not (contains!300 (getCurrentListMap!190 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!29703 () Bool)

(declare-fun res!17813 () Bool)

(assert (=> b!29703 (=> (not res!17813) (not e!19159))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!29703 (= res!17813 (validKeyInArray!0 k0!1304))))

(declare-fun b!29704 () Bool)

(declare-fun e!19161 () Bool)

(declare-fun tp_is_empty!1305 () Bool)

(assert (=> b!29704 (= e!19161 tp_is_empty!1305)))

(declare-fun mapNonEmpty!1486 () Bool)

(declare-fun mapRes!1486 () Bool)

(declare-fun tp!4272 () Bool)

(assert (=> mapNonEmpty!1486 (= mapRes!1486 (and tp!4272 e!19161))))

(declare-fun mapKey!1486 () (_ BitVec 32))

(declare-fun mapValue!1486 () ValueCell!453)

(declare-fun mapRest!1486 () (Array (_ BitVec 32) ValueCell!453))

(assert (=> mapNonEmpty!1486 (= (arr!869 _values!1501) (store mapRest!1486 mapKey!1486 mapValue!1486))))

(declare-fun b!29705 () Bool)

(assert (=> b!29705 (= e!19159 (not (= (size!971 _keys!1833) (bvadd #b00000000000000000000000000000001 mask!2294))))))

(declare-fun b!29706 () Bool)

(declare-fun res!17812 () Bool)

(assert (=> b!29706 (=> (not res!17812) (not e!19159))))

(assert (=> b!29706 (= res!17812 (and (= (size!970 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!971 _keys!1833) (size!970 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun res!17814 () Bool)

(assert (=> start!4044 (=> (not res!17814) (not e!19159))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4044 (= res!17814 (validMask!0 mask!2294))))

(assert (=> start!4044 e!19159))

(assert (=> start!4044 true))

(assert (=> start!4044 tp!4273))

(declare-fun e!19162 () Bool)

(declare-fun array_inv!585 (array!1831) Bool)

(assert (=> start!4044 (and (array_inv!585 _values!1501) e!19162)))

(declare-fun array_inv!586 (array!1833) Bool)

(assert (=> start!4044 (array_inv!586 _keys!1833)))

(assert (=> start!4044 tp_is_empty!1305))

(declare-fun b!29707 () Bool)

(declare-fun res!17815 () Bool)

(assert (=> b!29707 (=> (not res!17815) (not e!19159))))

(declare-datatypes ((List!719 0))(
  ( (Nil!716) (Cons!715 (h!1282 (_ BitVec 64)) (t!3414 List!719)) )
))
(declare-fun arrayNoDuplicates!0 (array!1833 (_ BitVec 32) List!719) Bool)

(assert (=> b!29707 (= res!17815 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!716))))

(declare-fun b!29708 () Bool)

(declare-fun res!17816 () Bool)

(assert (=> b!29708 (=> (not res!17816) (not e!19159))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1833 (_ BitVec 32)) Bool)

(assert (=> b!29708 (= res!17816 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!29709 () Bool)

(declare-fun res!17818 () Bool)

(assert (=> b!29709 (=> (not res!17818) (not e!19159))))

(declare-fun arrayContainsKey!0 (array!1833 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!29709 (= res!17818 (not (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000)))))

(declare-fun b!29710 () Bool)

(declare-fun e!19158 () Bool)

(assert (=> b!29710 (= e!19162 (and e!19158 mapRes!1486))))

(declare-fun condMapEmpty!1486 () Bool)

(declare-fun mapDefault!1486 () ValueCell!453)

(assert (=> b!29710 (= condMapEmpty!1486 (= (arr!869 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!453)) mapDefault!1486)))))

(declare-fun b!29711 () Bool)

(assert (=> b!29711 (= e!19158 tp_is_empty!1305)))

(declare-fun mapIsEmpty!1486 () Bool)

(assert (=> mapIsEmpty!1486 mapRes!1486))

(assert (= (and start!4044 res!17814) b!29706))

(assert (= (and b!29706 res!17812) b!29708))

(assert (= (and b!29708 res!17816) b!29707))

(assert (= (and b!29707 res!17815) b!29703))

(assert (= (and b!29703 res!17813) b!29702))

(assert (= (and b!29702 res!17817) b!29709))

(assert (= (and b!29709 res!17818) b!29705))

(assert (= (and b!29710 condMapEmpty!1486) mapIsEmpty!1486))

(assert (= (and b!29710 (not condMapEmpty!1486)) mapNonEmpty!1486))

(get-info :version)

(assert (= (and mapNonEmpty!1486 ((_ is ValueCellFull!453) mapValue!1486)) b!29704))

(assert (= (and b!29710 ((_ is ValueCellFull!453) mapDefault!1486)) b!29711))

(assert (= start!4044 b!29710))

(declare-fun m!23927 () Bool)

(assert (=> b!29702 m!23927))

(assert (=> b!29702 m!23927))

(declare-fun m!23929 () Bool)

(assert (=> b!29702 m!23929))

(declare-fun m!23931 () Bool)

(assert (=> b!29703 m!23931))

(declare-fun m!23933 () Bool)

(assert (=> b!29708 m!23933))

(declare-fun m!23935 () Bool)

(assert (=> b!29709 m!23935))

(declare-fun m!23937 () Bool)

(assert (=> start!4044 m!23937))

(declare-fun m!23939 () Bool)

(assert (=> start!4044 m!23939))

(declare-fun m!23941 () Bool)

(assert (=> start!4044 m!23941))

(declare-fun m!23943 () Bool)

(assert (=> b!29707 m!23943))

(declare-fun m!23945 () Bool)

(assert (=> mapNonEmpty!1486 m!23945))

(check-sat b_and!1763 (not b!29708) (not b!29703) tp_is_empty!1305 (not mapNonEmpty!1486) (not b!29707) (not start!4044) (not b!29709) (not b!29702) (not b_next!951))
(check-sat b_and!1763 (not b_next!951))
