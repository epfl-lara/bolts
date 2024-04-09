; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4152 () Bool)

(assert start!4152)

(declare-fun b_free!1059 () Bool)

(declare-fun b_next!1059 () Bool)

(assert (=> start!4152 (= b_free!1059 (not b_next!1059))))

(declare-fun tp!4596 () Bool)

(declare-fun b_and!1871 () Bool)

(assert (=> start!4152 (= tp!4596 b_and!1871)))

(declare-fun b!31330 () Bool)

(declare-fun e!20024 () Bool)

(declare-fun tp_is_empty!1413 () Bool)

(assert (=> b!31330 (= e!20024 tp_is_empty!1413)))

(declare-fun res!18958 () Bool)

(declare-fun e!20025 () Bool)

(assert (=> start!4152 (=> (not res!18958) (not e!20025))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4152 (= res!18958 (validMask!0 mask!2294))))

(assert (=> start!4152 e!20025))

(assert (=> start!4152 true))

(assert (=> start!4152 tp!4596))

(declare-datatypes ((V!1709 0))(
  ( (V!1710 (val!733 Int)) )
))
(declare-datatypes ((ValueCell!507 0))(
  ( (ValueCellFull!507 (v!1822 V!1709)) (EmptyCell!507) )
))
(declare-datatypes ((array!2033 0))(
  ( (array!2034 (arr!970 (Array (_ BitVec 32) ValueCell!507)) (size!1071 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2033)

(declare-fun e!20022 () Bool)

(declare-fun array_inv!647 (array!2033) Bool)

(assert (=> start!4152 (and (array_inv!647 _values!1501) e!20022)))

(declare-datatypes ((array!2035 0))(
  ( (array!2036 (arr!971 (Array (_ BitVec 32) (_ BitVec 64))) (size!1072 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2035)

(declare-fun array_inv!648 (array!2035) Bool)

(assert (=> start!4152 (array_inv!648 _keys!1833)))

(assert (=> start!4152 tp_is_empty!1413))

(declare-fun mapNonEmpty!1648 () Bool)

(declare-fun mapRes!1648 () Bool)

(declare-fun tp!4597 () Bool)

(assert (=> mapNonEmpty!1648 (= mapRes!1648 (and tp!4597 e!20024))))

(declare-fun mapKey!1648 () (_ BitVec 32))

(declare-fun mapRest!1648 () (Array (_ BitVec 32) ValueCell!507))

(declare-fun mapValue!1648 () ValueCell!507)

(assert (=> mapNonEmpty!1648 (= (arr!970 _values!1501) (store mapRest!1648 mapKey!1648 mapValue!1648))))

(declare-fun b!31331 () Bool)

(declare-fun e!20023 () Bool)

(assert (=> b!31331 (= e!20022 (and e!20023 mapRes!1648))))

(declare-fun condMapEmpty!1648 () Bool)

(declare-fun mapDefault!1648 () ValueCell!507)

(assert (=> b!31331 (= condMapEmpty!1648 (= (arr!970 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!507)) mapDefault!1648)))))

(declare-fun b!31332 () Bool)

(declare-fun res!18957 () Bool)

(assert (=> b!31332 (=> (not res!18957) (not e!20025))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2035 (_ BitVec 32)) Bool)

(assert (=> b!31332 (= res!18957 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!31333 () Bool)

(declare-fun res!18956 () Bool)

(assert (=> b!31333 (=> (not res!18956) (not e!20025))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!31333 (= res!18956 (and (= (size!1071 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1072 _keys!1833) (size!1071 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!1648 () Bool)

(assert (=> mapIsEmpty!1648 mapRes!1648))

(declare-fun b!31334 () Bool)

(assert (=> b!31334 (= e!20025 false)))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun defaultEntry!1504 () Int)

(declare-fun lt!11559 () Bool)

(declare-fun zeroValue!1443 () V!1709)

(declare-fun minValue!1443 () V!1709)

(declare-datatypes ((tuple2!1192 0))(
  ( (tuple2!1193 (_1!606 (_ BitVec 64)) (_2!606 V!1709)) )
))
(declare-datatypes ((List!795 0))(
  ( (Nil!792) (Cons!791 (h!1358 tuple2!1192) (t!3490 List!795)) )
))
(declare-datatypes ((ListLongMap!773 0))(
  ( (ListLongMap!774 (toList!402 List!795)) )
))
(declare-fun contains!339 (ListLongMap!773 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!227 (array!2035 array!2033 (_ BitVec 32) (_ BitVec 32) V!1709 V!1709 (_ BitVec 32) Int) ListLongMap!773)

(assert (=> b!31334 (= lt!11559 (contains!339 (getCurrentListMap!227 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304))))

(declare-fun b!31335 () Bool)

(assert (=> b!31335 (= e!20023 tp_is_empty!1413)))

(declare-fun b!31336 () Bool)

(declare-fun res!18954 () Bool)

(assert (=> b!31336 (=> (not res!18954) (not e!20025))))

(declare-datatypes ((List!796 0))(
  ( (Nil!793) (Cons!792 (h!1359 (_ BitVec 64)) (t!3491 List!796)) )
))
(declare-fun arrayNoDuplicates!0 (array!2035 (_ BitVec 32) List!796) Bool)

(assert (=> b!31336 (= res!18954 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!793))))

(declare-fun b!31337 () Bool)

(declare-fun res!18955 () Bool)

(assert (=> b!31337 (=> (not res!18955) (not e!20025))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!31337 (= res!18955 (validKeyInArray!0 k0!1304))))

(assert (= (and start!4152 res!18958) b!31333))

(assert (= (and b!31333 res!18956) b!31332))

(assert (= (and b!31332 res!18957) b!31336))

(assert (= (and b!31336 res!18954) b!31337))

(assert (= (and b!31337 res!18955) b!31334))

(assert (= (and b!31331 condMapEmpty!1648) mapIsEmpty!1648))

(assert (= (and b!31331 (not condMapEmpty!1648)) mapNonEmpty!1648))

(get-info :version)

(assert (= (and mapNonEmpty!1648 ((_ is ValueCellFull!507) mapValue!1648)) b!31330))

(assert (= (and b!31331 ((_ is ValueCellFull!507) mapDefault!1648)) b!31335))

(assert (= start!4152 b!31331))

(declare-fun m!25149 () Bool)

(assert (=> b!31334 m!25149))

(assert (=> b!31334 m!25149))

(declare-fun m!25151 () Bool)

(assert (=> b!31334 m!25151))

(declare-fun m!25153 () Bool)

(assert (=> b!31337 m!25153))

(declare-fun m!25155 () Bool)

(assert (=> mapNonEmpty!1648 m!25155))

(declare-fun m!25157 () Bool)

(assert (=> b!31332 m!25157))

(declare-fun m!25159 () Bool)

(assert (=> start!4152 m!25159))

(declare-fun m!25161 () Bool)

(assert (=> start!4152 m!25161))

(declare-fun m!25163 () Bool)

(assert (=> start!4152 m!25163))

(declare-fun m!25165 () Bool)

(assert (=> b!31336 m!25165))

(check-sat (not start!4152) (not mapNonEmpty!1648) (not b_next!1059) (not b!31332) (not b!31337) b_and!1871 (not b!31334) tp_is_empty!1413 (not b!31336))
(check-sat b_and!1871 (not b_next!1059))
