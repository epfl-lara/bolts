; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110526 () Bool)

(assert start!110526)

(declare-fun b_free!29325 () Bool)

(declare-fun b_next!29325 () Bool)

(assert (=> start!110526 (= b_free!29325 (not b_next!29325))))

(declare-fun tp!103297 () Bool)

(declare-fun b_and!47543 () Bool)

(assert (=> start!110526 (= tp!103297 b_and!47543)))

(declare-fun b!1306938 () Bool)

(declare-fun res!867643 () Bool)

(declare-fun e!745773 () Bool)

(assert (=> b!1306938 (=> (not res!867643) (not e!745773))))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((array!87091 0))(
  ( (array!87092 (arr!42021 (Array (_ BitVec 32) (_ BitVec 64))) (size!42572 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87091)

(assert (=> b!1306938 (= res!867643 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42572 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1306939 () Bool)

(declare-fun res!867640 () Bool)

(assert (=> b!1306939 (=> (not res!867640) (not e!745773))))

(declare-datatypes ((List!29996 0))(
  ( (Nil!29993) (Cons!29992 (h!31201 (_ BitVec 64)) (t!43609 List!29996)) )
))
(declare-fun arrayNoDuplicates!0 (array!87091 (_ BitVec 32) List!29996) Bool)

(assert (=> b!1306939 (= res!867640 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!29993))))

(declare-fun b!1306940 () Bool)

(declare-fun e!745771 () Bool)

(declare-fun tp_is_empty!35055 () Bool)

(assert (=> b!1306940 (= e!745771 tp_is_empty!35055)))

(declare-fun mapNonEmpty!54211 () Bool)

(declare-fun mapRes!54211 () Bool)

(declare-fun tp!103298 () Bool)

(assert (=> mapNonEmpty!54211 (= mapRes!54211 (and tp!103298 e!745771))))

(declare-datatypes ((V!51843 0))(
  ( (V!51844 (val!17602 Int)) )
))
(declare-datatypes ((ValueCell!16629 0))(
  ( (ValueCellFull!16629 (v!20227 V!51843)) (EmptyCell!16629) )
))
(declare-fun mapRest!54211 () (Array (_ BitVec 32) ValueCell!16629))

(declare-fun mapValue!54211 () ValueCell!16629)

(declare-fun mapKey!54211 () (_ BitVec 32))

(declare-datatypes ((array!87093 0))(
  ( (array!87094 (arr!42022 (Array (_ BitVec 32) ValueCell!16629)) (size!42573 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87093)

(assert (=> mapNonEmpty!54211 (= (arr!42022 _values!1354) (store mapRest!54211 mapKey!54211 mapValue!54211))))

(declare-fun b!1306941 () Bool)

(declare-fun e!745774 () Bool)

(assert (=> b!1306941 (= e!745774 tp_is_empty!35055)))

(declare-fun mapIsEmpty!54211 () Bool)

(assert (=> mapIsEmpty!54211 mapRes!54211))

(declare-fun res!867641 () Bool)

(assert (=> start!110526 (=> (not res!867641) (not e!745773))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110526 (= res!867641 (validMask!0 mask!2040))))

(assert (=> start!110526 e!745773))

(assert (=> start!110526 tp!103297))

(declare-fun array_inv!31769 (array!87091) Bool)

(assert (=> start!110526 (array_inv!31769 _keys!1628)))

(assert (=> start!110526 true))

(assert (=> start!110526 tp_is_empty!35055))

(declare-fun e!745775 () Bool)

(declare-fun array_inv!31770 (array!87093) Bool)

(assert (=> start!110526 (and (array_inv!31770 _values!1354) e!745775)))

(declare-fun b!1306942 () Bool)

(assert (=> b!1306942 (= e!745775 (and e!745774 mapRes!54211))))

(declare-fun condMapEmpty!54211 () Bool)

(declare-fun mapDefault!54211 () ValueCell!16629)

(assert (=> b!1306942 (= condMapEmpty!54211 (= (arr!42022 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16629)) mapDefault!54211)))))

(declare-fun b!1306943 () Bool)

(declare-fun res!867644 () Bool)

(assert (=> b!1306943 (=> (not res!867644) (not e!745773))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1306943 (= res!867644 (and (= (size!42573 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42572 _keys!1628) (size!42573 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1306944 () Bool)

(declare-fun res!867642 () Bool)

(assert (=> b!1306944 (=> (not res!867642) (not e!745773))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87091 (_ BitVec 32)) Bool)

(assert (=> b!1306944 (= res!867642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1306945 () Bool)

(assert (=> b!1306945 (= e!745773 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!584938 () Bool)

(declare-fun minValue!1296 () V!51843)

(declare-fun zeroValue!1296 () V!51843)

(declare-datatypes ((tuple2!22826 0))(
  ( (tuple2!22827 (_1!11423 (_ BitVec 64)) (_2!11423 V!51843)) )
))
(declare-datatypes ((List!29997 0))(
  ( (Nil!29994) (Cons!29993 (h!31202 tuple2!22826) (t!43610 List!29997)) )
))
(declare-datatypes ((ListLongMap!20495 0))(
  ( (ListLongMap!20496 (toList!10263 List!29997)) )
))
(declare-fun contains!8349 (ListLongMap!20495 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5219 (array!87091 array!87093 (_ BitVec 32) (_ BitVec 32) V!51843 V!51843 (_ BitVec 32) Int) ListLongMap!20495)

(assert (=> b!1306945 (= lt!584938 (contains!8349 (getCurrentListMap!5219 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(assert (= (and start!110526 res!867641) b!1306943))

(assert (= (and b!1306943 res!867644) b!1306944))

(assert (= (and b!1306944 res!867642) b!1306939))

(assert (= (and b!1306939 res!867640) b!1306938))

(assert (= (and b!1306938 res!867643) b!1306945))

(assert (= (and b!1306942 condMapEmpty!54211) mapIsEmpty!54211))

(assert (= (and b!1306942 (not condMapEmpty!54211)) mapNonEmpty!54211))

(get-info :version)

(assert (= (and mapNonEmpty!54211 ((_ is ValueCellFull!16629) mapValue!54211)) b!1306940))

(assert (= (and b!1306942 ((_ is ValueCellFull!16629) mapDefault!54211)) b!1306941))

(assert (= start!110526 b!1306942))

(declare-fun m!1197805 () Bool)

(assert (=> b!1306945 m!1197805))

(assert (=> b!1306945 m!1197805))

(declare-fun m!1197807 () Bool)

(assert (=> b!1306945 m!1197807))

(declare-fun m!1197809 () Bool)

(assert (=> b!1306944 m!1197809))

(declare-fun m!1197811 () Bool)

(assert (=> start!110526 m!1197811))

(declare-fun m!1197813 () Bool)

(assert (=> start!110526 m!1197813))

(declare-fun m!1197815 () Bool)

(assert (=> start!110526 m!1197815))

(declare-fun m!1197817 () Bool)

(assert (=> b!1306939 m!1197817))

(declare-fun m!1197819 () Bool)

(assert (=> mapNonEmpty!54211 m!1197819))

(check-sat (not b!1306939) b_and!47543 (not b!1306944) (not mapNonEmpty!54211) (not start!110526) (not b_next!29325) tp_is_empty!35055 (not b!1306945))
(check-sat b_and!47543 (not b_next!29325))
