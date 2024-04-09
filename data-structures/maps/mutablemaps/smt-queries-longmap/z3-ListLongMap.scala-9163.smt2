; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110090 () Bool)

(assert start!110090)

(declare-fun b_free!29253 () Bool)

(declare-fun b_next!29253 () Bool)

(assert (=> start!110090 (= b_free!29253 (not b_next!29253))))

(declare-fun tp!102910 () Bool)

(declare-fun b_and!47427 () Bool)

(assert (=> start!110090 (= tp!102910 b_and!47427)))

(declare-fun b!1303194 () Bool)

(declare-fun res!865631 () Bool)

(declare-fun e!743373 () Bool)

(assert (=> b!1303194 (=> (not res!865631) (not e!743373))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!51627 0))(
  ( (V!51628 (val!17521 Int)) )
))
(declare-datatypes ((ValueCell!16548 0))(
  ( (ValueCellFull!16548 (v!20135 V!51627)) (EmptyCell!16548) )
))
(declare-datatypes ((array!86763 0))(
  ( (array!86764 (arr!41868 (Array (_ BitVec 32) ValueCell!16548)) (size!42419 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86763)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86765 0))(
  ( (array!86766 (arr!41869 (Array (_ BitVec 32) (_ BitVec 64))) (size!42420 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86765)

(assert (=> b!1303194 (= res!865631 (and (= (size!42419 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42420 _keys!1741) (size!42419 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1303195 () Bool)

(declare-fun res!865639 () Bool)

(assert (=> b!1303195 (=> (not res!865639) (not e!743373))))

(declare-datatypes ((List!29914 0))(
  ( (Nil!29911) (Cons!29910 (h!31119 (_ BitVec 64)) (t!43515 List!29914)) )
))
(declare-fun arrayNoDuplicates!0 (array!86765 (_ BitVec 32) List!29914) Bool)

(assert (=> b!1303195 (= res!865639 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29911))))

(declare-fun res!865638 () Bool)

(assert (=> start!110090 (=> (not res!865638) (not e!743373))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110090 (= res!865638 (validMask!0 mask!2175))))

(assert (=> start!110090 e!743373))

(declare-fun tp_is_empty!34893 () Bool)

(assert (=> start!110090 tp_is_empty!34893))

(assert (=> start!110090 true))

(declare-fun e!743371 () Bool)

(declare-fun array_inv!31665 (array!86763) Bool)

(assert (=> start!110090 (and (array_inv!31665 _values!1445) e!743371)))

(declare-fun array_inv!31666 (array!86765) Bool)

(assert (=> start!110090 (array_inv!31666 _keys!1741)))

(assert (=> start!110090 tp!102910))

(declare-fun b!1303196 () Bool)

(declare-fun res!865636 () Bool)

(assert (=> b!1303196 (=> (not res!865636) (not e!743373))))

(declare-fun minValue!1387 () V!51627)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun zeroValue!1387 () V!51627)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22762 0))(
  ( (tuple2!22763 (_1!11391 (_ BitVec 64)) (_2!11391 V!51627)) )
))
(declare-datatypes ((List!29915 0))(
  ( (Nil!29912) (Cons!29911 (h!31120 tuple2!22762) (t!43516 List!29915)) )
))
(declare-datatypes ((ListLongMap!20431 0))(
  ( (ListLongMap!20432 (toList!10231 List!29915)) )
))
(declare-fun contains!8302 (ListLongMap!20431 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5193 (array!86765 array!86763 (_ BitVec 32) (_ BitVec 32) V!51627 V!51627 (_ BitVec 32) Int) ListLongMap!20431)

(assert (=> b!1303196 (= res!865636 (contains!8302 (getCurrentListMap!5193 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1303197 () Bool)

(declare-fun e!743370 () Bool)

(assert (=> b!1303197 (= e!743373 (not e!743370))))

(declare-fun res!865637 () Bool)

(assert (=> b!1303197 (=> res!865637 e!743370)))

(assert (=> b!1303197 (= res!865637 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1303197 (not (contains!8302 (ListLongMap!20432 Nil!29912) k0!1205))))

(declare-datatypes ((Unit!43094 0))(
  ( (Unit!43095) )
))
(declare-fun lt!583140 () Unit!43094)

(declare-fun emptyContainsNothing!219 ((_ BitVec 64)) Unit!43094)

(assert (=> b!1303197 (= lt!583140 (emptyContainsNothing!219 k0!1205))))

(declare-fun b!1303198 () Bool)

(declare-fun e!743374 () Bool)

(declare-fun mapRes!53932 () Bool)

(assert (=> b!1303198 (= e!743371 (and e!743374 mapRes!53932))))

(declare-fun condMapEmpty!53932 () Bool)

(declare-fun mapDefault!53932 () ValueCell!16548)

(assert (=> b!1303198 (= condMapEmpty!53932 (= (arr!41868 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16548)) mapDefault!53932)))))

(declare-fun b!1303199 () Bool)

(assert (=> b!1303199 (= e!743374 tp_is_empty!34893)))

(declare-fun mapIsEmpty!53932 () Bool)

(assert (=> mapIsEmpty!53932 mapRes!53932))

(declare-fun b!1303200 () Bool)

(assert (=> b!1303200 (= e!743370 true)))

(declare-fun lt!583144 () ListLongMap!20431)

(declare-fun lt!583142 () Bool)

(declare-fun lt!583146 () tuple2!22762)

(declare-fun +!4451 (ListLongMap!20431 tuple2!22762) ListLongMap!20431)

(assert (=> b!1303200 (= lt!583142 (contains!8302 (+!4451 lt!583144 lt!583146) k0!1205))))

(declare-fun lt!583143 () ListLongMap!20431)

(assert (=> b!1303200 (not (contains!8302 (+!4451 lt!583143 lt!583146) k0!1205))))

(assert (=> b!1303200 (= lt!583146 (tuple2!22763 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))

(declare-fun lt!583141 () Unit!43094)

(declare-fun addStillNotContains!475 (ListLongMap!20431 (_ BitVec 64) V!51627 (_ BitVec 64)) Unit!43094)

(assert (=> b!1303200 (= lt!583141 (addStillNotContains!475 lt!583143 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(assert (=> b!1303200 (not (contains!8302 lt!583144 k0!1205))))

(assert (=> b!1303200 (= lt!583144 (+!4451 lt!583143 (tuple2!22763 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!583145 () Unit!43094)

(assert (=> b!1303200 (= lt!583145 (addStillNotContains!475 lt!583143 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6165 (array!86765 array!86763 (_ BitVec 32) (_ BitVec 32) V!51627 V!51627 (_ BitVec 32) Int) ListLongMap!20431)

(assert (=> b!1303200 (= lt!583143 (getCurrentListMapNoExtraKeys!6165 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1303201 () Bool)

(declare-fun res!865633 () Bool)

(assert (=> b!1303201 (=> (not res!865633) (not e!743373))))

(assert (=> b!1303201 (= res!865633 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42420 _keys!1741))))))

(declare-fun b!1303202 () Bool)

(declare-fun res!865634 () Bool)

(assert (=> b!1303202 (=> (not res!865634) (not e!743373))))

(assert (=> b!1303202 (= res!865634 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42420 _keys!1741))))))

(declare-fun b!1303203 () Bool)

(declare-fun res!865635 () Bool)

(assert (=> b!1303203 (=> (not res!865635) (not e!743373))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1303203 (= res!865635 (not (validKeyInArray!0 (select (arr!41869 _keys!1741) from!2144))))))

(declare-fun mapNonEmpty!53932 () Bool)

(declare-fun tp!102911 () Bool)

(declare-fun e!743372 () Bool)

(assert (=> mapNonEmpty!53932 (= mapRes!53932 (and tp!102911 e!743372))))

(declare-fun mapValue!53932 () ValueCell!16548)

(declare-fun mapRest!53932 () (Array (_ BitVec 32) ValueCell!16548))

(declare-fun mapKey!53932 () (_ BitVec 32))

(assert (=> mapNonEmpty!53932 (= (arr!41868 _values!1445) (store mapRest!53932 mapKey!53932 mapValue!53932))))

(declare-fun b!1303204 () Bool)

(declare-fun res!865632 () Bool)

(assert (=> b!1303204 (=> (not res!865632) (not e!743373))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86765 (_ BitVec 32)) Bool)

(assert (=> b!1303204 (= res!865632 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1303205 () Bool)

(assert (=> b!1303205 (= e!743372 tp_is_empty!34893)))

(assert (= (and start!110090 res!865638) b!1303194))

(assert (= (and b!1303194 res!865631) b!1303204))

(assert (= (and b!1303204 res!865632) b!1303195))

(assert (= (and b!1303195 res!865639) b!1303202))

(assert (= (and b!1303202 res!865634) b!1303196))

(assert (= (and b!1303196 res!865636) b!1303201))

(assert (= (and b!1303201 res!865633) b!1303203))

(assert (= (and b!1303203 res!865635) b!1303197))

(assert (= (and b!1303197 (not res!865637)) b!1303200))

(assert (= (and b!1303198 condMapEmpty!53932) mapIsEmpty!53932))

(assert (= (and b!1303198 (not condMapEmpty!53932)) mapNonEmpty!53932))

(get-info :version)

(assert (= (and mapNonEmpty!53932 ((_ is ValueCellFull!16548) mapValue!53932)) b!1303205))

(assert (= (and b!1303198 ((_ is ValueCellFull!16548) mapDefault!53932)) b!1303199))

(assert (= start!110090 b!1303198))

(declare-fun m!1194117 () Bool)

(assert (=> b!1303204 m!1194117))

(declare-fun m!1194119 () Bool)

(assert (=> b!1303195 m!1194119))

(declare-fun m!1194121 () Bool)

(assert (=> mapNonEmpty!53932 m!1194121))

(declare-fun m!1194123 () Bool)

(assert (=> b!1303196 m!1194123))

(assert (=> b!1303196 m!1194123))

(declare-fun m!1194125 () Bool)

(assert (=> b!1303196 m!1194125))

(declare-fun m!1194127 () Bool)

(assert (=> b!1303203 m!1194127))

(assert (=> b!1303203 m!1194127))

(declare-fun m!1194129 () Bool)

(assert (=> b!1303203 m!1194129))

(declare-fun m!1194131 () Bool)

(assert (=> start!110090 m!1194131))

(declare-fun m!1194133 () Bool)

(assert (=> start!110090 m!1194133))

(declare-fun m!1194135 () Bool)

(assert (=> start!110090 m!1194135))

(declare-fun m!1194137 () Bool)

(assert (=> b!1303200 m!1194137))

(declare-fun m!1194139 () Bool)

(assert (=> b!1303200 m!1194139))

(declare-fun m!1194141 () Bool)

(assert (=> b!1303200 m!1194141))

(declare-fun m!1194143 () Bool)

(assert (=> b!1303200 m!1194143))

(declare-fun m!1194145 () Bool)

(assert (=> b!1303200 m!1194145))

(declare-fun m!1194147 () Bool)

(assert (=> b!1303200 m!1194147))

(declare-fun m!1194149 () Bool)

(assert (=> b!1303200 m!1194149))

(assert (=> b!1303200 m!1194145))

(declare-fun m!1194151 () Bool)

(assert (=> b!1303200 m!1194151))

(declare-fun m!1194153 () Bool)

(assert (=> b!1303200 m!1194153))

(assert (=> b!1303200 m!1194141))

(declare-fun m!1194155 () Bool)

(assert (=> b!1303197 m!1194155))

(declare-fun m!1194157 () Bool)

(assert (=> b!1303197 m!1194157))

(check-sat (not start!110090) (not b!1303203) (not b!1303204) tp_is_empty!34893 (not b!1303197) (not b_next!29253) (not mapNonEmpty!53932) (not b!1303200) (not b!1303196) (not b!1303195) b_and!47427)
(check-sat b_and!47427 (not b_next!29253))
