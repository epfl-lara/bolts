; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97008 () Bool)

(assert start!97008)

(declare-fun b!1103162 () Bool)

(declare-fun res!736078 () Bool)

(declare-fun e!629747 () Bool)

(assert (=> b!1103162 (=> (not res!736078) (not e!629747))))

(declare-datatypes ((array!71454 0))(
  ( (array!71455 (arr!34383 (Array (_ BitVec 32) (_ BitVec 64))) (size!34920 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71454)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71454 (_ BitVec 32)) Bool)

(assert (=> b!1103162 (= res!736078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!42733 () Bool)

(declare-fun mapRes!42733 () Bool)

(assert (=> mapIsEmpty!42733 mapRes!42733))

(declare-fun b!1103163 () Bool)

(declare-fun e!629750 () Bool)

(declare-fun e!629751 () Bool)

(assert (=> b!1103163 (= e!629750 (and e!629751 mapRes!42733))))

(declare-fun condMapEmpty!42733 () Bool)

(declare-datatypes ((V!41515 0))(
  ( (V!41516 (val!13702 Int)) )
))
(declare-datatypes ((ValueCell!12936 0))(
  ( (ValueCellFull!12936 (v!16334 V!41515)) (EmptyCell!12936) )
))
(declare-datatypes ((array!71456 0))(
  ( (array!71457 (arr!34384 (Array (_ BitVec 32) ValueCell!12936)) (size!34921 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71456)

(declare-fun mapDefault!42733 () ValueCell!12936)

(assert (=> b!1103163 (= condMapEmpty!42733 (= (arr!34384 _values!996) ((as const (Array (_ BitVec 32) ValueCell!12936)) mapDefault!42733)))))

(declare-fun b!1103164 () Bool)

(declare-fun res!736077 () Bool)

(assert (=> b!1103164 (=> (not res!736077) (not e!629747))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1103164 (= res!736077 (validMask!0 mask!1564))))

(declare-fun b!1103161 () Bool)

(declare-fun e!629748 () Bool)

(declare-fun tp_is_empty!27291 () Bool)

(assert (=> b!1103161 (= e!629748 tp_is_empty!27291)))

(declare-fun res!736080 () Bool)

(assert (=> start!97008 (=> (not res!736080) (not e!629747))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97008 (= res!736080 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34920 _keys!1208))))))

(assert (=> start!97008 e!629747))

(declare-fun array_inv!26336 (array!71454) Bool)

(assert (=> start!97008 (array_inv!26336 _keys!1208)))

(assert (=> start!97008 true))

(declare-fun array_inv!26337 (array!71456) Bool)

(assert (=> start!97008 (and (array_inv!26337 _values!996) e!629750)))

(declare-fun b!1103165 () Bool)

(declare-fun res!736079 () Bool)

(assert (=> b!1103165 (=> (not res!736079) (not e!629747))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1103165 (= res!736079 (and (= (size!34921 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34920 _keys!1208) (size!34921 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!42733 () Bool)

(declare-fun tp!81654 () Bool)

(assert (=> mapNonEmpty!42733 (= mapRes!42733 (and tp!81654 e!629748))))

(declare-fun mapRest!42733 () (Array (_ BitVec 32) ValueCell!12936))

(declare-fun mapKey!42733 () (_ BitVec 32))

(declare-fun mapValue!42733 () ValueCell!12936)

(assert (=> mapNonEmpty!42733 (= (arr!34384 _values!996) (store mapRest!42733 mapKey!42733 mapValue!42733))))

(declare-fun b!1103166 () Bool)

(assert (=> b!1103166 (= e!629747 (and (bvsle #b00000000000000000000000000000000 (size!34920 _keys!1208)) (bvsge (size!34920 _keys!1208) #b01111111111111111111111111111111)))))

(declare-fun b!1103167 () Bool)

(assert (=> b!1103167 (= e!629751 tp_is_empty!27291)))

(assert (= (and start!97008 res!736080) b!1103164))

(assert (= (and b!1103164 res!736077) b!1103165))

(assert (= (and b!1103165 res!736079) b!1103162))

(assert (= (and b!1103162 res!736078) b!1103166))

(assert (= (and b!1103163 condMapEmpty!42733) mapIsEmpty!42733))

(assert (= (and b!1103163 (not condMapEmpty!42733)) mapNonEmpty!42733))

(get-info :version)

(assert (= (and mapNonEmpty!42733 ((_ is ValueCellFull!12936) mapValue!42733)) b!1103161))

(assert (= (and b!1103163 ((_ is ValueCellFull!12936) mapDefault!42733)) b!1103167))

(assert (= start!97008 b!1103163))

(declare-fun m!1023555 () Bool)

(assert (=> b!1103162 m!1023555))

(declare-fun m!1023557 () Bool)

(assert (=> b!1103164 m!1023557))

(declare-fun m!1023559 () Bool)

(assert (=> start!97008 m!1023559))

(declare-fun m!1023561 () Bool)

(assert (=> start!97008 m!1023561))

(declare-fun m!1023563 () Bool)

(assert (=> mapNonEmpty!42733 m!1023563))

(check-sat (not b!1103164) tp_is_empty!27291 (not b!1103162) (not mapNonEmpty!42733) (not start!97008))
(check-sat)
(get-model)

(declare-fun d!130755 () Bool)

(assert (=> d!130755 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1103164 d!130755))

(declare-fun b!1103197 () Bool)

(declare-fun e!629775 () Bool)

(declare-fun call!46320 () Bool)

(assert (=> b!1103197 (= e!629775 call!46320)))

(declare-fun b!1103198 () Bool)

(declare-fun e!629773 () Bool)

(declare-fun e!629774 () Bool)

(assert (=> b!1103198 (= e!629773 e!629774)))

(declare-fun c!108921 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1103198 (= c!108921 (validKeyInArray!0 (select (arr!34383 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun bm!46317 () Bool)

(assert (=> bm!46317 (= call!46320 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(declare-fun b!1103199 () Bool)

(assert (=> b!1103199 (= e!629774 e!629775)))

(declare-fun lt!495028 () (_ BitVec 64))

(assert (=> b!1103199 (= lt!495028 (select (arr!34383 _keys!1208) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!36173 0))(
  ( (Unit!36174) )
))
(declare-fun lt!495027 () Unit!36173)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71454 (_ BitVec 64) (_ BitVec 32)) Unit!36173)

(assert (=> b!1103199 (= lt!495027 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!495028 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!71454 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1103199 (arrayContainsKey!0 _keys!1208 lt!495028 #b00000000000000000000000000000000)))

(declare-fun lt!495026 () Unit!36173)

(assert (=> b!1103199 (= lt!495026 lt!495027)))

(declare-fun res!736098 () Bool)

(declare-datatypes ((SeekEntryResult!9915 0))(
  ( (MissingZero!9915 (index!42030 (_ BitVec 32))) (Found!9915 (index!42031 (_ BitVec 32))) (Intermediate!9915 (undefined!10727 Bool) (index!42032 (_ BitVec 32)) (x!99219 (_ BitVec 32))) (Undefined!9915) (MissingVacant!9915 (index!42033 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!71454 (_ BitVec 32)) SeekEntryResult!9915)

(assert (=> b!1103199 (= res!736098 (= (seekEntryOrOpen!0 (select (arr!34383 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9915 #b00000000000000000000000000000000)))))

(assert (=> b!1103199 (=> (not res!736098) (not e!629775))))

(declare-fun b!1103200 () Bool)

(assert (=> b!1103200 (= e!629774 call!46320)))

(declare-fun d!130757 () Bool)

(declare-fun res!736097 () Bool)

(assert (=> d!130757 (=> res!736097 e!629773)))

(assert (=> d!130757 (= res!736097 (bvsge #b00000000000000000000000000000000 (size!34920 _keys!1208)))))

(assert (=> d!130757 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!629773)))

(assert (= (and d!130757 (not res!736097)) b!1103198))

(assert (= (and b!1103198 c!108921) b!1103199))

(assert (= (and b!1103198 (not c!108921)) b!1103200))

(assert (= (and b!1103199 res!736098) b!1103197))

(assert (= (or b!1103197 b!1103200) bm!46317))

(declare-fun m!1023575 () Bool)

(assert (=> b!1103198 m!1023575))

(assert (=> b!1103198 m!1023575))

(declare-fun m!1023577 () Bool)

(assert (=> b!1103198 m!1023577))

(declare-fun m!1023579 () Bool)

(assert (=> bm!46317 m!1023579))

(assert (=> b!1103199 m!1023575))

(declare-fun m!1023581 () Bool)

(assert (=> b!1103199 m!1023581))

(declare-fun m!1023583 () Bool)

(assert (=> b!1103199 m!1023583))

(assert (=> b!1103199 m!1023575))

(declare-fun m!1023585 () Bool)

(assert (=> b!1103199 m!1023585))

(assert (=> b!1103162 d!130757))

(declare-fun d!130759 () Bool)

(assert (=> d!130759 (= (array_inv!26336 _keys!1208) (bvsge (size!34920 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!97008 d!130759))

(declare-fun d!130761 () Bool)

(assert (=> d!130761 (= (array_inv!26337 _values!996) (bvsge (size!34921 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!97008 d!130761))

(declare-fun condMapEmpty!42739 () Bool)

(declare-fun mapDefault!42739 () ValueCell!12936)

(assert (=> mapNonEmpty!42733 (= condMapEmpty!42739 (= mapRest!42733 ((as const (Array (_ BitVec 32) ValueCell!12936)) mapDefault!42739)))))

(declare-fun e!629780 () Bool)

(declare-fun mapRes!42739 () Bool)

(assert (=> mapNonEmpty!42733 (= tp!81654 (and e!629780 mapRes!42739))))

(declare-fun b!1103207 () Bool)

(declare-fun e!629781 () Bool)

(assert (=> b!1103207 (= e!629781 tp_is_empty!27291)))

(declare-fun mapNonEmpty!42739 () Bool)

(declare-fun tp!81660 () Bool)

(assert (=> mapNonEmpty!42739 (= mapRes!42739 (and tp!81660 e!629781))))

(declare-fun mapValue!42739 () ValueCell!12936)

(declare-fun mapKey!42739 () (_ BitVec 32))

(declare-fun mapRest!42739 () (Array (_ BitVec 32) ValueCell!12936))

(assert (=> mapNonEmpty!42739 (= mapRest!42733 (store mapRest!42739 mapKey!42739 mapValue!42739))))

(declare-fun mapIsEmpty!42739 () Bool)

(assert (=> mapIsEmpty!42739 mapRes!42739))

(declare-fun b!1103208 () Bool)

(assert (=> b!1103208 (= e!629780 tp_is_empty!27291)))

(assert (= (and mapNonEmpty!42733 condMapEmpty!42739) mapIsEmpty!42739))

(assert (= (and mapNonEmpty!42733 (not condMapEmpty!42739)) mapNonEmpty!42739))

(assert (= (and mapNonEmpty!42739 ((_ is ValueCellFull!12936) mapValue!42739)) b!1103207))

(assert (= (and mapNonEmpty!42733 ((_ is ValueCellFull!12936) mapDefault!42739)) b!1103208))

(declare-fun m!1023587 () Bool)

(assert (=> mapNonEmpty!42739 m!1023587))

(check-sat (not b!1103198) (not mapNonEmpty!42739) tp_is_empty!27291 (not b!1103199) (not bm!46317))
(check-sat)
