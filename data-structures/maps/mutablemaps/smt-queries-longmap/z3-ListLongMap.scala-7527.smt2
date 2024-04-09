; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95462 () Bool)

(assert start!95462)

(declare-fun b!1077766 () Bool)

(declare-fun e!616287 () Bool)

(declare-fun e!616288 () Bool)

(declare-fun mapRes!40951 () Bool)

(assert (=> b!1077766 (= e!616287 (and e!616288 mapRes!40951))))

(declare-fun condMapEmpty!40951 () Bool)

(declare-datatypes ((V!39979 0))(
  ( (V!39980 (val!13126 Int)) )
))
(declare-datatypes ((ValueCell!12360 0))(
  ( (ValueCellFull!12360 (v!15747 V!39979)) (EmptyCell!12360) )
))
(declare-datatypes ((array!69188 0))(
  ( (array!69189 (arr!33268 (Array (_ BitVec 32) ValueCell!12360)) (size!33805 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69188)

(declare-fun mapDefault!40951 () ValueCell!12360)

(assert (=> b!1077766 (= condMapEmpty!40951 (= (arr!33268 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12360)) mapDefault!40951)))))

(declare-fun res!718236 () Bool)

(declare-fun e!616289 () Bool)

(assert (=> start!95462 (=> (not res!718236) (not e!616289))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95462 (= res!718236 (validMask!0 mask!1414))))

(assert (=> start!95462 e!616289))

(assert (=> start!95462 true))

(declare-datatypes ((array!69190 0))(
  ( (array!69191 (arr!33269 (Array (_ BitVec 32) (_ BitVec 64))) (size!33806 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69190)

(declare-fun array_inv!25568 (array!69190) Bool)

(assert (=> start!95462 (array_inv!25568 _keys!1070)))

(declare-fun array_inv!25569 (array!69188) Bool)

(assert (=> start!95462 (and (array_inv!25569 _values!874) e!616287)))

(declare-fun b!1077767 () Bool)

(declare-fun res!718237 () Bool)

(assert (=> b!1077767 (=> (not res!718237) (not e!616289))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1077767 (= res!718237 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33806 _keys!1070))))))

(declare-fun b!1077768 () Bool)

(assert (=> b!1077768 (= e!616289 (and (bvsle #b00000000000000000000000000000000 (size!33806 _keys!1070)) (bvsge (size!33806 _keys!1070) #b01111111111111111111111111111111)))))

(declare-fun b!1077769 () Bool)

(declare-fun res!718233 () Bool)

(assert (=> b!1077769 (=> (not res!718233) (not e!616289))))

(declare-datatypes ((List!23344 0))(
  ( (Nil!23341) (Cons!23340 (h!24549 (_ BitVec 64)) (t!32710 List!23344)) )
))
(declare-fun arrayNoDuplicates!0 (array!69190 (_ BitVec 32) List!23344) Bool)

(assert (=> b!1077769 (= res!718233 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23341))))

(declare-fun b!1077770 () Bool)

(declare-fun res!718235 () Bool)

(assert (=> b!1077770 (=> (not res!718235) (not e!616289))))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1077770 (= res!718235 (= (select (arr!33269 _keys!1070) i!650) k0!904))))

(declare-fun b!1077771 () Bool)

(declare-fun res!718234 () Bool)

(assert (=> b!1077771 (=> (not res!718234) (not e!616289))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1077771 (= res!718234 (validKeyInArray!0 k0!904))))

(declare-fun mapNonEmpty!40951 () Bool)

(declare-fun tp!78414 () Bool)

(declare-fun e!616290 () Bool)

(assert (=> mapNonEmpty!40951 (= mapRes!40951 (and tp!78414 e!616290))))

(declare-fun mapValue!40951 () ValueCell!12360)

(declare-fun mapKey!40951 () (_ BitVec 32))

(declare-fun mapRest!40951 () (Array (_ BitVec 32) ValueCell!12360))

(assert (=> mapNonEmpty!40951 (= (arr!33268 _values!874) (store mapRest!40951 mapKey!40951 mapValue!40951))))

(declare-fun b!1077772 () Bool)

(declare-fun tp_is_empty!26139 () Bool)

(assert (=> b!1077772 (= e!616288 tp_is_empty!26139)))

(declare-fun b!1077773 () Bool)

(declare-fun res!718232 () Bool)

(assert (=> b!1077773 (=> (not res!718232) (not e!616289))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69190 (_ BitVec 32)) Bool)

(assert (=> b!1077773 (= res!718232 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1077774 () Bool)

(declare-fun res!718231 () Bool)

(assert (=> b!1077774 (=> (not res!718231) (not e!616289))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1077774 (= res!718231 (and (= (size!33805 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33806 _keys!1070) (size!33805 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1077775 () Bool)

(assert (=> b!1077775 (= e!616290 tp_is_empty!26139)))

(declare-fun b!1077776 () Bool)

(declare-fun res!718230 () Bool)

(assert (=> b!1077776 (=> (not res!718230) (not e!616289))))

(assert (=> b!1077776 (= res!718230 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!69191 (store (arr!33269 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33806 _keys!1070)) mask!1414))))

(declare-fun mapIsEmpty!40951 () Bool)

(assert (=> mapIsEmpty!40951 mapRes!40951))

(assert (= (and start!95462 res!718236) b!1077774))

(assert (= (and b!1077774 res!718231) b!1077773))

(assert (= (and b!1077773 res!718232) b!1077769))

(assert (= (and b!1077769 res!718233) b!1077767))

(assert (= (and b!1077767 res!718237) b!1077771))

(assert (= (and b!1077771 res!718234) b!1077770))

(assert (= (and b!1077770 res!718235) b!1077776))

(assert (= (and b!1077776 res!718230) b!1077768))

(assert (= (and b!1077766 condMapEmpty!40951) mapIsEmpty!40951))

(assert (= (and b!1077766 (not condMapEmpty!40951)) mapNonEmpty!40951))

(get-info :version)

(assert (= (and mapNonEmpty!40951 ((_ is ValueCellFull!12360) mapValue!40951)) b!1077775))

(assert (= (and b!1077766 ((_ is ValueCellFull!12360) mapDefault!40951)) b!1077772))

(assert (= start!95462 b!1077766))

(declare-fun m!996609 () Bool)

(assert (=> b!1077769 m!996609))

(declare-fun m!996611 () Bool)

(assert (=> b!1077770 m!996611))

(declare-fun m!996613 () Bool)

(assert (=> b!1077773 m!996613))

(declare-fun m!996615 () Bool)

(assert (=> start!95462 m!996615))

(declare-fun m!996617 () Bool)

(assert (=> start!95462 m!996617))

(declare-fun m!996619 () Bool)

(assert (=> start!95462 m!996619))

(declare-fun m!996621 () Bool)

(assert (=> b!1077771 m!996621))

(declare-fun m!996623 () Bool)

(assert (=> mapNonEmpty!40951 m!996623))

(declare-fun m!996625 () Bool)

(assert (=> b!1077776 m!996625))

(declare-fun m!996627 () Bool)

(assert (=> b!1077776 m!996627))

(check-sat (not b!1077773) (not b!1077776) (not start!95462) tp_is_empty!26139 (not b!1077771) (not mapNonEmpty!40951) (not b!1077769))
(check-sat)
(get-model)

(declare-fun d!129815 () Bool)

(assert (=> d!129815 (= (validKeyInArray!0 k0!904) (and (not (= k0!904 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!904 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1077771 d!129815))

(declare-fun bm!45720 () Bool)

(declare-fun call!45723 () Bool)

(assert (=> bm!45720 (= call!45723 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1070 mask!1414))))

(declare-fun b!1077818 () Bool)

(declare-fun e!616314 () Bool)

(assert (=> b!1077818 (= e!616314 call!45723)))

(declare-fun b!1077819 () Bool)

(declare-fun e!616315 () Bool)

(assert (=> b!1077819 (= e!616315 e!616314)))

(declare-fun lt!478542 () (_ BitVec 64))

(assert (=> b!1077819 (= lt!478542 (select (arr!33269 _keys!1070) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!35407 0))(
  ( (Unit!35408) )
))
(declare-fun lt!478543 () Unit!35407)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69190 (_ BitVec 64) (_ BitVec 32)) Unit!35407)

(assert (=> b!1077819 (= lt!478543 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 lt!478542 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!69190 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1077819 (arrayContainsKey!0 _keys!1070 lt!478542 #b00000000000000000000000000000000)))

(declare-fun lt!478541 () Unit!35407)

(assert (=> b!1077819 (= lt!478541 lt!478543)))

(declare-fun res!718267 () Bool)

(declare-datatypes ((SeekEntryResult!9897 0))(
  ( (MissingZero!9897 (index!41958 (_ BitVec 32))) (Found!9897 (index!41959 (_ BitVec 32))) (Intermediate!9897 (undefined!10709 Bool) (index!41960 (_ BitVec 32)) (x!96615 (_ BitVec 32))) (Undefined!9897) (MissingVacant!9897 (index!41961 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!69190 (_ BitVec 32)) SeekEntryResult!9897)

(assert (=> b!1077819 (= res!718267 (= (seekEntryOrOpen!0 (select (arr!33269 _keys!1070) #b00000000000000000000000000000000) _keys!1070 mask!1414) (Found!9897 #b00000000000000000000000000000000)))))

(assert (=> b!1077819 (=> (not res!718267) (not e!616314))))

(declare-fun b!1077820 () Bool)

(declare-fun e!616313 () Bool)

(assert (=> b!1077820 (= e!616313 e!616315)))

(declare-fun c!108264 () Bool)

(assert (=> b!1077820 (= c!108264 (validKeyInArray!0 (select (arr!33269 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1077821 () Bool)

(assert (=> b!1077821 (= e!616315 call!45723)))

(declare-fun d!129817 () Bool)

(declare-fun res!718266 () Bool)

(assert (=> d!129817 (=> res!718266 e!616313)))

(assert (=> d!129817 (= res!718266 (bvsge #b00000000000000000000000000000000 (size!33806 _keys!1070)))))

(assert (=> d!129817 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414) e!616313)))

(assert (= (and d!129817 (not res!718266)) b!1077820))

(assert (= (and b!1077820 c!108264) b!1077819))

(assert (= (and b!1077820 (not c!108264)) b!1077821))

(assert (= (and b!1077819 res!718267) b!1077818))

(assert (= (or b!1077818 b!1077821) bm!45720))

(declare-fun m!996649 () Bool)

(assert (=> bm!45720 m!996649))

(declare-fun m!996651 () Bool)

(assert (=> b!1077819 m!996651))

(declare-fun m!996653 () Bool)

(assert (=> b!1077819 m!996653))

(declare-fun m!996655 () Bool)

(assert (=> b!1077819 m!996655))

(assert (=> b!1077819 m!996651))

(declare-fun m!996657 () Bool)

(assert (=> b!1077819 m!996657))

(assert (=> b!1077820 m!996651))

(assert (=> b!1077820 m!996651))

(declare-fun m!996659 () Bool)

(assert (=> b!1077820 m!996659))

(assert (=> b!1077773 d!129817))

(declare-fun b!1077832 () Bool)

(declare-fun e!616327 () Bool)

(declare-fun call!45726 () Bool)

(assert (=> b!1077832 (= e!616327 call!45726)))

(declare-fun d!129819 () Bool)

(declare-fun res!718275 () Bool)

(declare-fun e!616324 () Bool)

(assert (=> d!129819 (=> res!718275 e!616324)))

(assert (=> d!129819 (= res!718275 (bvsge #b00000000000000000000000000000000 (size!33806 _keys!1070)))))

(assert (=> d!129819 (= (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23341) e!616324)))

(declare-fun b!1077833 () Bool)

(declare-fun e!616326 () Bool)

(assert (=> b!1077833 (= e!616324 e!616326)))

(declare-fun res!718274 () Bool)

(assert (=> b!1077833 (=> (not res!718274) (not e!616326))))

(declare-fun e!616325 () Bool)

(assert (=> b!1077833 (= res!718274 (not e!616325))))

(declare-fun res!718276 () Bool)

(assert (=> b!1077833 (=> (not res!718276) (not e!616325))))

(assert (=> b!1077833 (= res!718276 (validKeyInArray!0 (select (arr!33269 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1077834 () Bool)

(assert (=> b!1077834 (= e!616326 e!616327)))

(declare-fun c!108267 () Bool)

(assert (=> b!1077834 (= c!108267 (validKeyInArray!0 (select (arr!33269 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1077835 () Bool)

(declare-fun contains!6384 (List!23344 (_ BitVec 64)) Bool)

(assert (=> b!1077835 (= e!616325 (contains!6384 Nil!23341 (select (arr!33269 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun bm!45723 () Bool)

(assert (=> bm!45723 (= call!45726 (arrayNoDuplicates!0 _keys!1070 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108267 (Cons!23340 (select (arr!33269 _keys!1070) #b00000000000000000000000000000000) Nil!23341) Nil!23341)))))

(declare-fun b!1077836 () Bool)

(assert (=> b!1077836 (= e!616327 call!45726)))

(assert (= (and d!129819 (not res!718275)) b!1077833))

(assert (= (and b!1077833 res!718276) b!1077835))

(assert (= (and b!1077833 res!718274) b!1077834))

(assert (= (and b!1077834 c!108267) b!1077832))

(assert (= (and b!1077834 (not c!108267)) b!1077836))

(assert (= (or b!1077832 b!1077836) bm!45723))

(assert (=> b!1077833 m!996651))

(assert (=> b!1077833 m!996651))

(assert (=> b!1077833 m!996659))

(assert (=> b!1077834 m!996651))

(assert (=> b!1077834 m!996651))

(assert (=> b!1077834 m!996659))

(assert (=> b!1077835 m!996651))

(assert (=> b!1077835 m!996651))

(declare-fun m!996661 () Bool)

(assert (=> b!1077835 m!996661))

(assert (=> bm!45723 m!996651))

(declare-fun m!996663 () Bool)

(assert (=> bm!45723 m!996663))

(assert (=> b!1077769 d!129819))

(declare-fun d!129821 () Bool)

(assert (=> d!129821 (= (validMask!0 mask!1414) (and (or (= mask!1414 #b00000000000000000000000000000111) (= mask!1414 #b00000000000000000000000000001111) (= mask!1414 #b00000000000000000000000000011111) (= mask!1414 #b00000000000000000000000000111111) (= mask!1414 #b00000000000000000000000001111111) (= mask!1414 #b00000000000000000000000011111111) (= mask!1414 #b00000000000000000000000111111111) (= mask!1414 #b00000000000000000000001111111111) (= mask!1414 #b00000000000000000000011111111111) (= mask!1414 #b00000000000000000000111111111111) (= mask!1414 #b00000000000000000001111111111111) (= mask!1414 #b00000000000000000011111111111111) (= mask!1414 #b00000000000000000111111111111111) (= mask!1414 #b00000000000000001111111111111111) (= mask!1414 #b00000000000000011111111111111111) (= mask!1414 #b00000000000000111111111111111111) (= mask!1414 #b00000000000001111111111111111111) (= mask!1414 #b00000000000011111111111111111111) (= mask!1414 #b00000000000111111111111111111111) (= mask!1414 #b00000000001111111111111111111111) (= mask!1414 #b00000000011111111111111111111111) (= mask!1414 #b00000000111111111111111111111111) (= mask!1414 #b00000001111111111111111111111111) (= mask!1414 #b00000011111111111111111111111111) (= mask!1414 #b00000111111111111111111111111111) (= mask!1414 #b00001111111111111111111111111111) (= mask!1414 #b00011111111111111111111111111111) (= mask!1414 #b00111111111111111111111111111111)) (bvsle mask!1414 #b00111111111111111111111111111111)))))

(assert (=> start!95462 d!129821))

(declare-fun d!129823 () Bool)

(assert (=> d!129823 (= (array_inv!25568 _keys!1070) (bvsge (size!33806 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> start!95462 d!129823))

(declare-fun d!129825 () Bool)

(assert (=> d!129825 (= (array_inv!25569 _values!874) (bvsge (size!33805 _values!874) #b00000000000000000000000000000000))))

(assert (=> start!95462 d!129825))

(declare-fun call!45727 () Bool)

(declare-fun bm!45724 () Bool)

(assert (=> bm!45724 (= call!45727 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!69191 (store (arr!33269 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33806 _keys!1070)) mask!1414))))

(declare-fun b!1077837 () Bool)

(declare-fun e!616329 () Bool)

(assert (=> b!1077837 (= e!616329 call!45727)))

(declare-fun b!1077838 () Bool)

(declare-fun e!616330 () Bool)

(assert (=> b!1077838 (= e!616330 e!616329)))

(declare-fun lt!478545 () (_ BitVec 64))

(assert (=> b!1077838 (= lt!478545 (select (arr!33269 (array!69191 (store (arr!33269 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33806 _keys!1070))) #b00000000000000000000000000000000))))

(declare-fun lt!478546 () Unit!35407)

(assert (=> b!1077838 (= lt!478546 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69191 (store (arr!33269 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33806 _keys!1070)) lt!478545 #b00000000000000000000000000000000))))

(assert (=> b!1077838 (arrayContainsKey!0 (array!69191 (store (arr!33269 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33806 _keys!1070)) lt!478545 #b00000000000000000000000000000000)))

(declare-fun lt!478544 () Unit!35407)

(assert (=> b!1077838 (= lt!478544 lt!478546)))

(declare-fun res!718278 () Bool)

(assert (=> b!1077838 (= res!718278 (= (seekEntryOrOpen!0 (select (arr!33269 (array!69191 (store (arr!33269 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33806 _keys!1070))) #b00000000000000000000000000000000) (array!69191 (store (arr!33269 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33806 _keys!1070)) mask!1414) (Found!9897 #b00000000000000000000000000000000)))))

(assert (=> b!1077838 (=> (not res!718278) (not e!616329))))

(declare-fun b!1077839 () Bool)

(declare-fun e!616328 () Bool)

(assert (=> b!1077839 (= e!616328 e!616330)))

(declare-fun c!108268 () Bool)

(assert (=> b!1077839 (= c!108268 (validKeyInArray!0 (select (arr!33269 (array!69191 (store (arr!33269 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33806 _keys!1070))) #b00000000000000000000000000000000)))))

(declare-fun b!1077840 () Bool)

(assert (=> b!1077840 (= e!616330 call!45727)))

(declare-fun d!129827 () Bool)

(declare-fun res!718277 () Bool)

(assert (=> d!129827 (=> res!718277 e!616328)))

(assert (=> d!129827 (= res!718277 (bvsge #b00000000000000000000000000000000 (size!33806 (array!69191 (store (arr!33269 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33806 _keys!1070)))))))

(assert (=> d!129827 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!69191 (store (arr!33269 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33806 _keys!1070)) mask!1414) e!616328)))

(assert (= (and d!129827 (not res!718277)) b!1077839))

(assert (= (and b!1077839 c!108268) b!1077838))

(assert (= (and b!1077839 (not c!108268)) b!1077840))

(assert (= (and b!1077838 res!718278) b!1077837))

(assert (= (or b!1077837 b!1077840) bm!45724))

(declare-fun m!996665 () Bool)

(assert (=> bm!45724 m!996665))

(declare-fun m!996667 () Bool)

(assert (=> b!1077838 m!996667))

(declare-fun m!996669 () Bool)

(assert (=> b!1077838 m!996669))

(declare-fun m!996671 () Bool)

(assert (=> b!1077838 m!996671))

(assert (=> b!1077838 m!996667))

(declare-fun m!996673 () Bool)

(assert (=> b!1077838 m!996673))

(assert (=> b!1077839 m!996667))

(assert (=> b!1077839 m!996667))

(declare-fun m!996675 () Bool)

(assert (=> b!1077839 m!996675))

(assert (=> b!1077776 d!129827))

(declare-fun b!1077847 () Bool)

(declare-fun e!616335 () Bool)

(assert (=> b!1077847 (= e!616335 tp_is_empty!26139)))

(declare-fun condMapEmpty!40957 () Bool)

(declare-fun mapDefault!40957 () ValueCell!12360)

(assert (=> mapNonEmpty!40951 (= condMapEmpty!40957 (= mapRest!40951 ((as const (Array (_ BitVec 32) ValueCell!12360)) mapDefault!40957)))))

(declare-fun e!616336 () Bool)

(declare-fun mapRes!40957 () Bool)

(assert (=> mapNonEmpty!40951 (= tp!78414 (and e!616336 mapRes!40957))))

(declare-fun mapIsEmpty!40957 () Bool)

(assert (=> mapIsEmpty!40957 mapRes!40957))

(declare-fun mapNonEmpty!40957 () Bool)

(declare-fun tp!78420 () Bool)

(assert (=> mapNonEmpty!40957 (= mapRes!40957 (and tp!78420 e!616335))))

(declare-fun mapKey!40957 () (_ BitVec 32))

(declare-fun mapRest!40957 () (Array (_ BitVec 32) ValueCell!12360))

(declare-fun mapValue!40957 () ValueCell!12360)

(assert (=> mapNonEmpty!40957 (= mapRest!40951 (store mapRest!40957 mapKey!40957 mapValue!40957))))

(declare-fun b!1077848 () Bool)

(assert (=> b!1077848 (= e!616336 tp_is_empty!26139)))

(assert (= (and mapNonEmpty!40951 condMapEmpty!40957) mapIsEmpty!40957))

(assert (= (and mapNonEmpty!40951 (not condMapEmpty!40957)) mapNonEmpty!40957))

(assert (= (and mapNonEmpty!40957 ((_ is ValueCellFull!12360) mapValue!40957)) b!1077847))

(assert (= (and mapNonEmpty!40951 ((_ is ValueCellFull!12360) mapDefault!40957)) b!1077848))

(declare-fun m!996677 () Bool)

(assert (=> mapNonEmpty!40957 m!996677))

(check-sat (not bm!45720) (not bm!45723) (not b!1077833) (not b!1077834) tp_is_empty!26139 (not mapNonEmpty!40957) (not b!1077820) (not b!1077838) (not b!1077819) (not bm!45724) (not b!1077835) (not b!1077839))
(check-sat)
