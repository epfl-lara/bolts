; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1040 () Bool)

(assert start!1040)

(declare-fun b_free!369 () Bool)

(declare-fun b_next!369 () Bool)

(assert (=> start!1040 (= b_free!369 (not b_next!369))))

(declare-fun tp!1345 () Bool)

(declare-fun b_and!521 () Bool)

(assert (=> start!1040 (= tp!1345 b_and!521)))

(declare-fun b!9159 () Bool)

(declare-fun e!5228 () Bool)

(declare-fun tp_is_empty!447 () Bool)

(assert (=> b!9159 (= e!5228 tp_is_empty!447)))

(declare-fun mapNonEmpty!650 () Bool)

(declare-fun mapRes!650 () Bool)

(declare-fun tp!1346 () Bool)

(assert (=> mapNonEmpty!650 (= mapRes!650 (and tp!1346 e!5228))))

(declare-datatypes ((V!773 0))(
  ( (V!774 (val!229 Int)) )
))
(declare-datatypes ((ValueCell!207 0))(
  ( (ValueCellFull!207 (v!1323 V!773)) (EmptyCell!207) )
))
(declare-fun mapValue!650 () ValueCell!207)

(declare-datatypes ((array!817 0))(
  ( (array!818 (arr!394 (Array (_ BitVec 32) ValueCell!207)) (size!456 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!817)

(declare-fun mapKey!650 () (_ BitVec 32))

(declare-fun mapRest!650 () (Array (_ BitVec 32) ValueCell!207))

(assert (=> mapNonEmpty!650 (= (arr!394 _values!1492) (store mapRest!650 mapKey!650 mapValue!650))))

(declare-fun res!8359 () Bool)

(declare-fun e!5230 () Bool)

(assert (=> start!1040 (=> (not res!8359) (not e!5230))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!1040 (= res!8359 (validMask!0 mask!2250))))

(assert (=> start!1040 e!5230))

(assert (=> start!1040 tp!1345))

(assert (=> start!1040 true))

(declare-fun e!5227 () Bool)

(declare-fun array_inv!283 (array!817) Bool)

(assert (=> start!1040 (and (array_inv!283 _values!1492) e!5227)))

(assert (=> start!1040 tp_is_empty!447))

(declare-datatypes ((array!819 0))(
  ( (array!820 (arr!395 (Array (_ BitVec 32) (_ BitVec 64))) (size!457 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!819)

(declare-fun array_inv!284 (array!819) Bool)

(assert (=> start!1040 (array_inv!284 _keys!1806)))

(declare-fun b!9160 () Bool)

(declare-fun e!5226 () Bool)

(assert (=> b!9160 (= e!5226 true)))

(declare-fun lt!1989 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!819 (_ BitVec 32)) Bool)

(assert (=> b!9160 (arrayForallSeekEntryOrOpenFound!0 lt!1989 _keys!1806 mask!2250)))

(declare-datatypes ((Unit!185 0))(
  ( (Unit!186) )
))
(declare-fun lt!1987 () Unit!185)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!819 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!185)

(assert (=> b!9160 (= lt!1987 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!1989))))

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!819 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!9160 (= lt!1989 (arrayScanForKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!9161 () Bool)

(declare-fun e!5229 () Bool)

(assert (=> b!9161 (= e!5229 tp_is_empty!447)))

(declare-fun mapIsEmpty!650 () Bool)

(assert (=> mapIsEmpty!650 mapRes!650))

(declare-fun b!9162 () Bool)

(declare-fun e!5231 () Bool)

(declare-fun arrayContainsKey!0 (array!819 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!9162 (= e!5231 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!9163 () Bool)

(declare-fun res!8358 () Bool)

(assert (=> b!9163 (=> (not res!8358) (not e!5230))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!9163 (= res!8358 (validKeyInArray!0 k0!1278))))

(declare-fun b!9164 () Bool)

(assert (=> b!9164 (= e!5230 (not e!5226))))

(declare-fun res!8362 () Bool)

(assert (=> b!9164 (=> res!8362 e!5226)))

(assert (=> b!9164 (= res!8362 (not (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000)))))

(assert (=> b!9164 e!5231))

(declare-fun c!701 () Bool)

(assert (=> b!9164 (= c!701 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!773)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!773)

(declare-fun lt!1988 () Unit!185)

(declare-fun lemmaKeyInListMapIsInArray!69 (array!819 array!817 (_ BitVec 32) (_ BitVec 32) V!773 V!773 (_ BitVec 64) Int) Unit!185)

(assert (=> b!9164 (= lt!1988 (lemmaKeyInListMapIsInArray!69 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(declare-fun b!9165 () Bool)

(assert (=> b!9165 (= e!5227 (and e!5229 mapRes!650))))

(declare-fun condMapEmpty!650 () Bool)

(declare-fun mapDefault!650 () ValueCell!207)

(assert (=> b!9165 (= condMapEmpty!650 (= (arr!394 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!207)) mapDefault!650)))))

(declare-fun b!9166 () Bool)

(declare-fun res!8360 () Bool)

(assert (=> b!9166 (=> (not res!8360) (not e!5230))))

(assert (=> b!9166 (= res!8360 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!9167 () Bool)

(assert (=> b!9167 (= e!5231 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!9168 () Bool)

(declare-fun res!8357 () Bool)

(assert (=> b!9168 (=> (not res!8357) (not e!5230))))

(assert (=> b!9168 (= res!8357 (and (= (size!456 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!457 _keys!1806) (size!456 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!9169 () Bool)

(declare-fun res!8356 () Bool)

(assert (=> b!9169 (=> (not res!8356) (not e!5230))))

(declare-datatypes ((tuple2!244 0))(
  ( (tuple2!245 (_1!122 (_ BitVec 64)) (_2!122 V!773)) )
))
(declare-datatypes ((List!269 0))(
  ( (Nil!266) (Cons!265 (h!831 tuple2!244) (t!2410 List!269)) )
))
(declare-datatypes ((ListLongMap!249 0))(
  ( (ListLongMap!250 (toList!140 List!269)) )
))
(declare-fun contains!117 (ListLongMap!249 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!99 (array!819 array!817 (_ BitVec 32) (_ BitVec 32) V!773 V!773 (_ BitVec 32) Int) ListLongMap!249)

(assert (=> b!9169 (= res!8356 (contains!117 (getCurrentListMap!99 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun b!9170 () Bool)

(declare-fun res!8361 () Bool)

(assert (=> b!9170 (=> (not res!8361) (not e!5230))))

(declare-datatypes ((List!270 0))(
  ( (Nil!267) (Cons!266 (h!832 (_ BitVec 64)) (t!2411 List!270)) )
))
(declare-fun arrayNoDuplicates!0 (array!819 (_ BitVec 32) List!270) Bool)

(assert (=> b!9170 (= res!8361 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!267))))

(assert (= (and start!1040 res!8359) b!9168))

(assert (= (and b!9168 res!8357) b!9166))

(assert (= (and b!9166 res!8360) b!9170))

(assert (= (and b!9170 res!8361) b!9169))

(assert (= (and b!9169 res!8356) b!9163))

(assert (= (and b!9163 res!8358) b!9164))

(assert (= (and b!9164 c!701) b!9162))

(assert (= (and b!9164 (not c!701)) b!9167))

(assert (= (and b!9164 (not res!8362)) b!9160))

(assert (= (and b!9165 condMapEmpty!650) mapIsEmpty!650))

(assert (= (and b!9165 (not condMapEmpty!650)) mapNonEmpty!650))

(get-info :version)

(assert (= (and mapNonEmpty!650 ((_ is ValueCellFull!207) mapValue!650)) b!9159))

(assert (= (and b!9165 ((_ is ValueCellFull!207) mapDefault!650)) b!9161))

(assert (= start!1040 b!9165))

(declare-fun m!5717 () Bool)

(assert (=> mapNonEmpty!650 m!5717))

(declare-fun m!5719 () Bool)

(assert (=> b!9160 m!5719))

(declare-fun m!5721 () Bool)

(assert (=> b!9160 m!5721))

(declare-fun m!5723 () Bool)

(assert (=> b!9160 m!5723))

(declare-fun m!5725 () Bool)

(assert (=> b!9166 m!5725))

(declare-fun m!5727 () Bool)

(assert (=> b!9164 m!5727))

(declare-fun m!5729 () Bool)

(assert (=> b!9164 m!5729))

(declare-fun m!5731 () Bool)

(assert (=> b!9169 m!5731))

(assert (=> b!9169 m!5731))

(declare-fun m!5733 () Bool)

(assert (=> b!9169 m!5733))

(assert (=> b!9162 m!5727))

(declare-fun m!5735 () Bool)

(assert (=> b!9163 m!5735))

(declare-fun m!5737 () Bool)

(assert (=> start!1040 m!5737))

(declare-fun m!5739 () Bool)

(assert (=> start!1040 m!5739))

(declare-fun m!5741 () Bool)

(assert (=> start!1040 m!5741))

(declare-fun m!5743 () Bool)

(assert (=> b!9170 m!5743))

(check-sat b_and!521 (not b!9162) (not b!9163) (not mapNonEmpty!650) (not b_next!369) tp_is_empty!447 (not start!1040) (not b!9166) (not b!9160) (not b!9164) (not b!9169) (not b!9170))
(check-sat b_and!521 (not b_next!369))
