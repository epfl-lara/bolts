; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!954 () Bool)

(assert start!954)

(declare-fun b_free!327 () Bool)

(declare-fun b_next!327 () Bool)

(assert (=> start!954 (= b_free!327 (not b_next!327))))

(declare-fun tp!1213 () Bool)

(declare-fun b_and!475 () Bool)

(assert (=> start!954 (= tp!1213 b_and!475)))

(declare-fun b!8149 () Bool)

(declare-fun e!4619 () Bool)

(declare-fun e!4618 () Bool)

(declare-fun mapRes!581 () Bool)

(assert (=> b!8149 (= e!4619 (and e!4618 mapRes!581))))

(declare-fun condMapEmpty!581 () Bool)

(declare-datatypes ((V!717 0))(
  ( (V!718 (val!208 Int)) )
))
(declare-datatypes ((ValueCell!186 0))(
  ( (ValueCellFull!186 (v!1300 V!717)) (EmptyCell!186) )
))
(declare-datatypes ((array!735 0))(
  ( (array!736 (arr!355 (Array (_ BitVec 32) ValueCell!186)) (size!417 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!735)

(declare-fun mapDefault!581 () ValueCell!186)

(assert (=> b!8149 (= condMapEmpty!581 (= (arr!355 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!186)) mapDefault!581)))))

(declare-fun b!8150 () Bool)

(declare-fun e!4616 () Bool)

(declare-datatypes ((array!737 0))(
  ( (array!738 (arr!356 (Array (_ BitVec 32) (_ BitVec 64))) (size!418 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!737)

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!737 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!8150 (= e!4616 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!581 () Bool)

(declare-fun tp!1214 () Bool)

(declare-fun e!4622 () Bool)

(assert (=> mapNonEmpty!581 (= mapRes!581 (and tp!1214 e!4622))))

(declare-fun mapValue!581 () ValueCell!186)

(declare-fun mapRest!581 () (Array (_ BitVec 32) ValueCell!186))

(declare-fun mapKey!581 () (_ BitVec 32))

(assert (=> mapNonEmpty!581 (= (arr!355 _values!1492) (store mapRest!581 mapKey!581 mapValue!581))))

(declare-fun b!8151 () Bool)

(declare-fun tp_is_empty!405 () Bool)

(assert (=> b!8151 (= e!4618 tp_is_empty!405)))

(declare-fun b!8152 () Bool)

(declare-fun e!4621 () Bool)

(declare-fun e!4617 () Bool)

(assert (=> b!8152 (= e!4621 (not e!4617))))

(declare-fun res!7818 () Bool)

(assert (=> b!8152 (=> res!7818 e!4617)))

(assert (=> b!8152 (= res!7818 (not (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000)))))

(assert (=> b!8152 e!4616))

(declare-fun c!572 () Bool)

(assert (=> b!8152 (= c!572 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun minValue!1434 () V!717)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-datatypes ((Unit!149 0))(
  ( (Unit!150) )
))
(declare-fun lt!1644 () Unit!149)

(declare-fun zeroValue!1434 () V!717)

(declare-fun defaultEntry!1495 () Int)

(declare-fun lemmaKeyInListMapIsInArray!55 (array!737 array!735 (_ BitVec 32) (_ BitVec 32) V!717 V!717 (_ BitVec 64) Int) Unit!149)

(assert (=> b!8152 (= lt!1644 (lemmaKeyInListMapIsInArray!55 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(declare-fun b!8153 () Bool)

(declare-fun res!7819 () Bool)

(assert (=> b!8153 (=> (not res!7819) (not e!4621))))

(declare-datatypes ((List!244 0))(
  ( (Nil!241) (Cons!240 (h!806 (_ BitVec 64)) (t!2381 List!244)) )
))
(declare-fun arrayNoDuplicates!0 (array!737 (_ BitVec 32) List!244) Bool)

(assert (=> b!8153 (= res!7819 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!241))))

(declare-fun b!8154 () Bool)

(declare-fun res!7817 () Bool)

(assert (=> b!8154 (=> (not res!7817) (not e!4621))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!737 (_ BitVec 32)) Bool)

(assert (=> b!8154 (= res!7817 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!8155 () Bool)

(assert (=> b!8155 (= e!4617 (= (size!418 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250)))))

(declare-fun lt!1643 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!737 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!8155 (= lt!1643 (arrayScanForKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun res!7815 () Bool)

(assert (=> start!954 (=> (not res!7815) (not e!4621))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!954 (= res!7815 (validMask!0 mask!2250))))

(assert (=> start!954 e!4621))

(assert (=> start!954 tp!1213))

(assert (=> start!954 true))

(declare-fun array_inv!261 (array!735) Bool)

(assert (=> start!954 (and (array_inv!261 _values!1492) e!4619)))

(assert (=> start!954 tp_is_empty!405))

(declare-fun array_inv!262 (array!737) Bool)

(assert (=> start!954 (array_inv!262 _keys!1806)))

(declare-fun b!8156 () Bool)

(declare-fun res!7813 () Bool)

(assert (=> b!8156 (=> (not res!7813) (not e!4621))))

(declare-datatypes ((tuple2!220 0))(
  ( (tuple2!221 (_1!110 (_ BitVec 64)) (_2!110 V!717)) )
))
(declare-datatypes ((List!245 0))(
  ( (Nil!242) (Cons!241 (h!807 tuple2!220) (t!2382 List!245)) )
))
(declare-datatypes ((ListLongMap!225 0))(
  ( (ListLongMap!226 (toList!128 List!245)) )
))
(declare-fun contains!103 (ListLongMap!225 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!87 (array!737 array!735 (_ BitVec 32) (_ BitVec 32) V!717 V!717 (_ BitVec 32) Int) ListLongMap!225)

(assert (=> b!8156 (= res!7813 (contains!103 (getCurrentListMap!87 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun b!8157 () Bool)

(declare-fun res!7816 () Bool)

(assert (=> b!8157 (=> (not res!7816) (not e!4621))))

(assert (=> b!8157 (= res!7816 (and (= (size!417 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!418 _keys!1806) (size!417 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!8158 () Bool)

(declare-fun res!7814 () Bool)

(assert (=> b!8158 (=> (not res!7814) (not e!4621))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!8158 (= res!7814 (validKeyInArray!0 k0!1278))))

(declare-fun mapIsEmpty!581 () Bool)

(assert (=> mapIsEmpty!581 mapRes!581))

(declare-fun b!8159 () Bool)

(assert (=> b!8159 (= e!4622 tp_is_empty!405)))

(declare-fun b!8160 () Bool)

(assert (=> b!8160 (= e!4616 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!954 res!7815) b!8157))

(assert (= (and b!8157 res!7816) b!8154))

(assert (= (and b!8154 res!7817) b!8153))

(assert (= (and b!8153 res!7819) b!8156))

(assert (= (and b!8156 res!7813) b!8158))

(assert (= (and b!8158 res!7814) b!8152))

(assert (= (and b!8152 c!572) b!8150))

(assert (= (and b!8152 (not c!572)) b!8160))

(assert (= (and b!8152 (not res!7818)) b!8155))

(assert (= (and b!8149 condMapEmpty!581) mapIsEmpty!581))

(assert (= (and b!8149 (not condMapEmpty!581)) mapNonEmpty!581))

(get-info :version)

(assert (= (and mapNonEmpty!581 ((_ is ValueCellFull!186) mapValue!581)) b!8159))

(assert (= (and b!8149 ((_ is ValueCellFull!186) mapDefault!581)) b!8151))

(assert (= start!954 b!8149))

(declare-fun m!4997 () Bool)

(assert (=> b!8155 m!4997))

(declare-fun m!4999 () Bool)

(assert (=> b!8158 m!4999))

(declare-fun m!5001 () Bool)

(assert (=> b!8153 m!5001))

(declare-fun m!5003 () Bool)

(assert (=> start!954 m!5003))

(declare-fun m!5005 () Bool)

(assert (=> start!954 m!5005))

(declare-fun m!5007 () Bool)

(assert (=> start!954 m!5007))

(declare-fun m!5009 () Bool)

(assert (=> b!8156 m!5009))

(assert (=> b!8156 m!5009))

(declare-fun m!5011 () Bool)

(assert (=> b!8156 m!5011))

(declare-fun m!5013 () Bool)

(assert (=> mapNonEmpty!581 m!5013))

(declare-fun m!5015 () Bool)

(assert (=> b!8152 m!5015))

(declare-fun m!5017 () Bool)

(assert (=> b!8152 m!5017))

(assert (=> b!8150 m!5015))

(declare-fun m!5019 () Bool)

(assert (=> b!8154 m!5019))

(check-sat (not start!954) (not b!8154) (not b!8155) (not b!8152) tp_is_empty!405 (not b!8150) (not b!8153) b_and!475 (not mapNonEmpty!581) (not b_next!327) (not b!8158) (not b!8156))
(check-sat b_and!475 (not b_next!327))
