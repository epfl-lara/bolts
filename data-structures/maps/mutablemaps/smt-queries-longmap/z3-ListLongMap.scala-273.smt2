; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4464 () Bool)

(assert start!4464)

(declare-fun b_free!1227 () Bool)

(declare-fun b_next!1227 () Bool)

(assert (=> start!4464 (= b_free!1227 (not b_next!1227))))

(declare-fun tp!5119 () Bool)

(declare-fun b_and!2051 () Bool)

(assert (=> start!4464 (= tp!5119 b_and!2051)))

(declare-fun b!34650 () Bool)

(declare-fun e!21953 () Bool)

(assert (=> b!34650 (= e!21953 false)))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!153 0))(
  ( (MissingZero!153 (index!2734 (_ BitVec 32))) (Found!153 (index!2735 (_ BitVec 32))) (Intermediate!153 (undefined!965 Bool) (index!2736 (_ BitVec 32)) (x!6939 (_ BitVec 32))) (Undefined!153) (MissingVacant!153 (index!2737 (_ BitVec 32))) )
))
(declare-fun lt!12808 () SeekEntryResult!153)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-datatypes ((array!2367 0))(
  ( (array!2368 (arr!1131 (Array (_ BitVec 32) (_ BitVec 64))) (size!1232 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2367)

(declare-fun seekEntry!0 ((_ BitVec 64) array!2367 (_ BitVec 32)) SeekEntryResult!153)

(assert (=> b!34650 (= lt!12808 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun b!34651 () Bool)

(declare-fun res!21018 () Bool)

(assert (=> b!34651 (=> (not res!21018) (not e!21953))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!34651 (= res!21018 (validKeyInArray!0 k0!1304))))

(declare-fun b!34652 () Bool)

(declare-fun res!21021 () Bool)

(assert (=> b!34652 (=> (not res!21021) (not e!21953))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1933 0))(
  ( (V!1934 (val!817 Int)) )
))
(declare-datatypes ((ValueCell!591 0))(
  ( (ValueCellFull!591 (v!1912 V!1933)) (EmptyCell!591) )
))
(declare-datatypes ((array!2369 0))(
  ( (array!2370 (arr!1132 (Array (_ BitVec 32) ValueCell!591)) (size!1233 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2369)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1933)

(declare-fun minValue!1443 () V!1933)

(declare-datatypes ((tuple2!1312 0))(
  ( (tuple2!1313 (_1!666 (_ BitVec 64)) (_2!666 V!1933)) )
))
(declare-datatypes ((List!916 0))(
  ( (Nil!913) (Cons!912 (h!1479 tuple2!1312) (t!3623 List!916)) )
))
(declare-datatypes ((ListLongMap!893 0))(
  ( (ListLongMap!894 (toList!462 List!916)) )
))
(declare-fun contains!405 (ListLongMap!893 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!283 (array!2367 array!2369 (_ BitVec 32) (_ BitVec 32) V!1933 V!1933 (_ BitVec 32) Int) ListLongMap!893)

(assert (=> b!34652 (= res!21021 (not (contains!405 (getCurrentListMap!283 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun res!21020 () Bool)

(assert (=> start!4464 (=> (not res!21020) (not e!21953))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4464 (= res!21020 (validMask!0 mask!2294))))

(assert (=> start!4464 e!21953))

(assert (=> start!4464 true))

(assert (=> start!4464 tp!5119))

(declare-fun e!21957 () Bool)

(declare-fun array_inv!751 (array!2369) Bool)

(assert (=> start!4464 (and (array_inv!751 _values!1501) e!21957)))

(declare-fun array_inv!752 (array!2367) Bool)

(assert (=> start!4464 (array_inv!752 _keys!1833)))

(declare-fun tp_is_empty!1581 () Bool)

(assert (=> start!4464 tp_is_empty!1581))

(declare-fun b!34653 () Bool)

(declare-fun e!21956 () Bool)

(declare-fun mapRes!1918 () Bool)

(assert (=> b!34653 (= e!21957 (and e!21956 mapRes!1918))))

(declare-fun condMapEmpty!1918 () Bool)

(declare-fun mapDefault!1918 () ValueCell!591)

(assert (=> b!34653 (= condMapEmpty!1918 (= (arr!1132 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!591)) mapDefault!1918)))))

(declare-fun b!34654 () Bool)

(declare-fun e!21955 () Bool)

(assert (=> b!34654 (= e!21955 tp_is_empty!1581)))

(declare-fun b!34655 () Bool)

(declare-fun res!21016 () Bool)

(assert (=> b!34655 (=> (not res!21016) (not e!21953))))

(declare-fun arrayContainsKey!0 (array!2367 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!34655 (= res!21016 (not (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000)))))

(declare-fun b!34656 () Bool)

(declare-fun res!21017 () Bool)

(assert (=> b!34656 (=> (not res!21017) (not e!21953))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2367 (_ BitVec 32)) Bool)

(assert (=> b!34656 (= res!21017 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapNonEmpty!1918 () Bool)

(declare-fun tp!5118 () Bool)

(assert (=> mapNonEmpty!1918 (= mapRes!1918 (and tp!5118 e!21955))))

(declare-fun mapKey!1918 () (_ BitVec 32))

(declare-fun mapValue!1918 () ValueCell!591)

(declare-fun mapRest!1918 () (Array (_ BitVec 32) ValueCell!591))

(assert (=> mapNonEmpty!1918 (= (arr!1132 _values!1501) (store mapRest!1918 mapKey!1918 mapValue!1918))))

(declare-fun b!34657 () Bool)

(declare-fun res!21019 () Bool)

(assert (=> b!34657 (=> (not res!21019) (not e!21953))))

(assert (=> b!34657 (= res!21019 (and (= (size!1233 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1232 _keys!1833) (size!1233 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!1918 () Bool)

(assert (=> mapIsEmpty!1918 mapRes!1918))

(declare-fun b!34658 () Bool)

(assert (=> b!34658 (= e!21956 tp_is_empty!1581)))

(declare-fun b!34659 () Bool)

(declare-fun res!21022 () Bool)

(assert (=> b!34659 (=> (not res!21022) (not e!21953))))

(declare-datatypes ((List!917 0))(
  ( (Nil!914) (Cons!913 (h!1480 (_ BitVec 64)) (t!3624 List!917)) )
))
(declare-fun arrayNoDuplicates!0 (array!2367 (_ BitVec 32) List!917) Bool)

(assert (=> b!34659 (= res!21022 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!914))))

(assert (= (and start!4464 res!21020) b!34657))

(assert (= (and b!34657 res!21019) b!34656))

(assert (= (and b!34656 res!21017) b!34659))

(assert (= (and b!34659 res!21022) b!34651))

(assert (= (and b!34651 res!21018) b!34652))

(assert (= (and b!34652 res!21021) b!34655))

(assert (= (and b!34655 res!21016) b!34650))

(assert (= (and b!34653 condMapEmpty!1918) mapIsEmpty!1918))

(assert (= (and b!34653 (not condMapEmpty!1918)) mapNonEmpty!1918))

(get-info :version)

(assert (= (and mapNonEmpty!1918 ((_ is ValueCellFull!591) mapValue!1918)) b!34654))

(assert (= (and b!34653 ((_ is ValueCellFull!591) mapDefault!1918)) b!34658))

(assert (= start!4464 b!34653))

(declare-fun m!27933 () Bool)

(assert (=> mapNonEmpty!1918 m!27933))

(declare-fun m!27935 () Bool)

(assert (=> b!34651 m!27935))

(declare-fun m!27937 () Bool)

(assert (=> b!34656 m!27937))

(declare-fun m!27939 () Bool)

(assert (=> b!34650 m!27939))

(declare-fun m!27941 () Bool)

(assert (=> b!34659 m!27941))

(declare-fun m!27943 () Bool)

(assert (=> start!4464 m!27943))

(declare-fun m!27945 () Bool)

(assert (=> start!4464 m!27945))

(declare-fun m!27947 () Bool)

(assert (=> start!4464 m!27947))

(declare-fun m!27949 () Bool)

(assert (=> b!34652 m!27949))

(assert (=> b!34652 m!27949))

(declare-fun m!27951 () Bool)

(assert (=> b!34652 m!27951))

(declare-fun m!27953 () Bool)

(assert (=> b!34655 m!27953))

(check-sat (not b_next!1227) b_and!2051 (not b!34656) (not mapNonEmpty!1918) (not b!34650) (not start!4464) (not b!34655) tp_is_empty!1581 (not b!34651) (not b!34659) (not b!34652))
(check-sat b_and!2051 (not b_next!1227))
