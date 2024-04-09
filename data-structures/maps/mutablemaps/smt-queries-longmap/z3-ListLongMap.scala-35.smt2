; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!644 () Bool)

(assert start!644)

(declare-fun b_free!117 () Bool)

(declare-fun b_next!117 () Bool)

(assert (=> start!644 (= b_free!117 (not b_next!117))))

(declare-fun tp!569 () Bool)

(declare-fun b_and!255 () Bool)

(assert (=> start!644 (= tp!569 b_and!255)))

(declare-fun b!4162 () Bool)

(declare-fun res!5581 () Bool)

(declare-fun e!2179 () Bool)

(assert (=> b!4162 (=> (not res!5581) (not e!2179))))

(declare-datatypes ((array!323 0))(
  ( (array!324 (arr!154 (Array (_ BitVec 32) (_ BitVec 64))) (size!216 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!323)

(declare-datatypes ((List!97 0))(
  ( (Nil!94) (Cons!93 (h!659 (_ BitVec 64)) (t!2224 List!97)) )
))
(declare-fun arrayNoDuplicates!0 (array!323 (_ BitVec 32) List!97) Bool)

(assert (=> b!4162 (= res!5581 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!94))))

(declare-fun b!4163 () Bool)

(assert (=> b!4163 (= e!2179 false)))

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!437 0))(
  ( (V!438 (val!103 Int)) )
))
(declare-fun minValue!1434 () V!437)

(declare-fun lt!576 () Bool)

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!437)

(declare-datatypes ((ValueCell!81 0))(
  ( (ValueCellFull!81 (v!1190 V!437)) (EmptyCell!81) )
))
(declare-datatypes ((array!325 0))(
  ( (array!326 (arr!155 (Array (_ BitVec 32) ValueCell!81)) (size!217 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!325)

(declare-datatypes ((tuple2!92 0))(
  ( (tuple2!93 (_1!46 (_ BitVec 64)) (_2!46 V!437)) )
))
(declare-datatypes ((List!98 0))(
  ( (Nil!95) (Cons!94 (h!660 tuple2!92) (t!2225 List!98)) )
))
(declare-datatypes ((ListLongMap!97 0))(
  ( (ListLongMap!98 (toList!64 List!98)) )
))
(declare-fun contains!34 (ListLongMap!97 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!23 (array!323 array!325 (_ BitVec 32) (_ BitVec 32) V!437 V!437 (_ BitVec 32) Int) ListLongMap!97)

(assert (=> b!4163 (= lt!576 (contains!34 (getCurrentListMap!23 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun b!4164 () Bool)

(declare-fun res!5584 () Bool)

(assert (=> b!4164 (=> (not res!5584) (not e!2179))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!323 (_ BitVec 32)) Bool)

(assert (=> b!4164 (= res!5584 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!4165 () Bool)

(declare-fun e!2176 () Bool)

(declare-fun tp_is_empty!195 () Bool)

(assert (=> b!4165 (= e!2176 tp_is_empty!195)))

(declare-fun res!5582 () Bool)

(assert (=> start!644 (=> (not res!5582) (not e!2179))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!644 (= res!5582 (validMask!0 mask!2250))))

(assert (=> start!644 e!2179))

(assert (=> start!644 tp!569))

(assert (=> start!644 true))

(declare-fun e!2180 () Bool)

(declare-fun array_inv!107 (array!325) Bool)

(assert (=> start!644 (and (array_inv!107 _values!1492) e!2180)))

(assert (=> start!644 tp_is_empty!195))

(declare-fun array_inv!108 (array!323) Bool)

(assert (=> start!644 (array_inv!108 _keys!1806)))

(declare-fun b!4166 () Bool)

(declare-fun res!5583 () Bool)

(assert (=> b!4166 (=> (not res!5583) (not e!2179))))

(assert (=> b!4166 (= res!5583 (and (= (size!217 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!216 _keys!1806) (size!217 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!4167 () Bool)

(declare-fun e!2177 () Bool)

(assert (=> b!4167 (= e!2177 tp_is_empty!195)))

(declare-fun mapNonEmpty!251 () Bool)

(declare-fun mapRes!251 () Bool)

(declare-fun tp!568 () Bool)

(assert (=> mapNonEmpty!251 (= mapRes!251 (and tp!568 e!2176))))

(declare-fun mapRest!251 () (Array (_ BitVec 32) ValueCell!81))

(declare-fun mapKey!251 () (_ BitVec 32))

(declare-fun mapValue!251 () ValueCell!81)

(assert (=> mapNonEmpty!251 (= (arr!155 _values!1492) (store mapRest!251 mapKey!251 mapValue!251))))

(declare-fun mapIsEmpty!251 () Bool)

(assert (=> mapIsEmpty!251 mapRes!251))

(declare-fun b!4168 () Bool)

(assert (=> b!4168 (= e!2180 (and e!2177 mapRes!251))))

(declare-fun condMapEmpty!251 () Bool)

(declare-fun mapDefault!251 () ValueCell!81)

(assert (=> b!4168 (= condMapEmpty!251 (= (arr!155 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!81)) mapDefault!251)))))

(assert (= (and start!644 res!5582) b!4166))

(assert (= (and b!4166 res!5583) b!4164))

(assert (= (and b!4164 res!5584) b!4162))

(assert (= (and b!4162 res!5581) b!4163))

(assert (= (and b!4168 condMapEmpty!251) mapIsEmpty!251))

(assert (= (and b!4168 (not condMapEmpty!251)) mapNonEmpty!251))

(get-info :version)

(assert (= (and mapNonEmpty!251 ((_ is ValueCellFull!81) mapValue!251)) b!4165))

(assert (= (and b!4168 ((_ is ValueCellFull!81) mapDefault!251)) b!4167))

(assert (= start!644 b!4168))

(declare-fun m!2175 () Bool)

(assert (=> b!4162 m!2175))

(declare-fun m!2177 () Bool)

(assert (=> b!4163 m!2177))

(assert (=> b!4163 m!2177))

(declare-fun m!2179 () Bool)

(assert (=> b!4163 m!2179))

(declare-fun m!2181 () Bool)

(assert (=> start!644 m!2181))

(declare-fun m!2183 () Bool)

(assert (=> start!644 m!2183))

(declare-fun m!2185 () Bool)

(assert (=> start!644 m!2185))

(declare-fun m!2187 () Bool)

(assert (=> mapNonEmpty!251 m!2187))

(declare-fun m!2189 () Bool)

(assert (=> b!4164 m!2189))

(check-sat (not b!4162) b_and!255 (not mapNonEmpty!251) (not b_next!117) (not b!4164) (not start!644) tp_is_empty!195 (not b!4163))
(check-sat b_and!255 (not b_next!117))
