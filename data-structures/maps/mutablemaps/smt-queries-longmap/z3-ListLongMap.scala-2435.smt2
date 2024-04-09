; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38420 () Bool)

(assert start!38420)

(declare-fun mapNonEmpty!16392 () Bool)

(declare-fun mapRes!16392 () Bool)

(declare-fun tp!32187 () Bool)

(declare-fun e!239668 () Bool)

(assert (=> mapNonEmpty!16392 (= mapRes!16392 (and tp!32187 e!239668))))

(declare-datatypes ((V!14237 0))(
  ( (V!14238 (val!4969 Int)) )
))
(declare-datatypes ((ValueCell!4581 0))(
  ( (ValueCellFull!4581 (v!7211 V!14237)) (EmptyCell!4581) )
))
(declare-fun mapValue!16392 () ValueCell!4581)

(declare-fun mapKey!16392 () (_ BitVec 32))

(declare-datatypes ((array!23585 0))(
  ( (array!23586 (arr!11240 (Array (_ BitVec 32) ValueCell!4581)) (size!11592 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23585)

(declare-fun mapRest!16392 () (Array (_ BitVec 32) ValueCell!4581))

(assert (=> mapNonEmpty!16392 (= (arr!11240 _values!549) (store mapRest!16392 mapKey!16392 mapValue!16392))))

(declare-fun b!396015 () Bool)

(declare-fun res!227216 () Bool)

(declare-fun e!239664 () Bool)

(assert (=> b!396015 (=> (not res!227216) (not e!239664))))

(declare-datatypes ((array!23587 0))(
  ( (array!23588 (arr!11241 (Array (_ BitVec 32) (_ BitVec 64))) (size!11593 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23587)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23587 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!396015 (= res!227216 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!396016 () Bool)

(declare-fun res!227222 () Bool)

(assert (=> b!396016 (=> (not res!227222) (not e!239664))))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23587 (_ BitVec 32)) Bool)

(assert (=> b!396016 (= res!227222 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!23588 (store (arr!11241 _keys!709) i!563 k0!794) (size!11593 _keys!709)) mask!1025))))

(declare-fun b!396017 () Bool)

(declare-fun e!239665 () Bool)

(declare-datatypes ((List!6488 0))(
  ( (Nil!6485) (Cons!6484 (h!7340 (_ BitVec 64)) (t!11670 List!6488)) )
))
(declare-fun contains!2485 (List!6488 (_ BitVec 64)) Bool)

(assert (=> b!396017 (= e!239665 (contains!2485 Nil!6485 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!396018 () Bool)

(declare-fun res!227227 () Bool)

(assert (=> b!396018 (=> (not res!227227) (not e!239664))))

(declare-fun noDuplicate!199 (List!6488) Bool)

(assert (=> b!396018 (= res!227227 (noDuplicate!199 Nil!6485))))

(declare-fun mapIsEmpty!16392 () Bool)

(assert (=> mapIsEmpty!16392 mapRes!16392))

(declare-fun b!396019 () Bool)

(declare-fun e!239666 () Bool)

(declare-fun e!239669 () Bool)

(assert (=> b!396019 (= e!239666 (and e!239669 mapRes!16392))))

(declare-fun condMapEmpty!16392 () Bool)

(declare-fun mapDefault!16392 () ValueCell!4581)

(assert (=> b!396019 (= condMapEmpty!16392 (= (arr!11240 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4581)) mapDefault!16392)))))

(declare-fun b!396020 () Bool)

(declare-fun res!227224 () Bool)

(assert (=> b!396020 (=> (not res!227224) (not e!239664))))

(assert (=> b!396020 (= res!227224 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!396021 () Bool)

(declare-fun res!227219 () Bool)

(assert (=> b!396021 (=> (not res!227219) (not e!239664))))

(assert (=> b!396021 (= res!227219 (or (= (select (arr!11241 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11241 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!396022 () Bool)

(declare-fun res!227225 () Bool)

(assert (=> b!396022 (=> (not res!227225) (not e!239664))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!396022 (= res!227225 (validKeyInArray!0 k0!794))))

(declare-fun res!227218 () Bool)

(assert (=> start!38420 (=> (not res!227218) (not e!239664))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38420 (= res!227218 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11593 _keys!709))))))

(assert (=> start!38420 e!239664))

(assert (=> start!38420 true))

(declare-fun array_inv!8230 (array!23585) Bool)

(assert (=> start!38420 (and (array_inv!8230 _values!549) e!239666)))

(declare-fun array_inv!8231 (array!23587) Bool)

(assert (=> start!38420 (array_inv!8231 _keys!709)))

(declare-fun b!396023 () Bool)

(declare-fun res!227223 () Bool)

(assert (=> b!396023 (=> (not res!227223) (not e!239664))))

(declare-fun arrayNoDuplicates!0 (array!23587 (_ BitVec 32) List!6488) Bool)

(assert (=> b!396023 (= res!227223 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6485))))

(declare-fun b!396024 () Bool)

(declare-fun res!227228 () Bool)

(assert (=> b!396024 (=> (not res!227228) (not e!239664))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!396024 (= res!227228 (validMask!0 mask!1025))))

(declare-fun b!396025 () Bool)

(declare-fun tp_is_empty!9849 () Bool)

(assert (=> b!396025 (= e!239668 tp_is_empty!9849)))

(declare-fun b!396026 () Bool)

(assert (=> b!396026 (= e!239664 e!239665)))

(declare-fun res!227220 () Bool)

(assert (=> b!396026 (=> res!227220 e!239665)))

(assert (=> b!396026 (= res!227220 (contains!2485 Nil!6485 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!396027 () Bool)

(declare-fun res!227217 () Bool)

(assert (=> b!396027 (=> (not res!227217) (not e!239664))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!396027 (= res!227217 (and (= (size!11592 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11593 _keys!709) (size!11592 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!396028 () Bool)

(declare-fun res!227226 () Bool)

(assert (=> b!396028 (=> (not res!227226) (not e!239664))))

(assert (=> b!396028 (= res!227226 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11593 _keys!709))))))

(declare-fun b!396029 () Bool)

(assert (=> b!396029 (= e!239669 tp_is_empty!9849)))

(declare-fun b!396030 () Bool)

(declare-fun res!227221 () Bool)

(assert (=> b!396030 (=> (not res!227221) (not e!239664))))

(assert (=> b!396030 (= res!227221 (and (bvsle #b00000000000000000000000000000000 (size!11593 _keys!709)) (bvslt (size!11593 _keys!709) #b01111111111111111111111111111111)))))

(assert (= (and start!38420 res!227218) b!396024))

(assert (= (and b!396024 res!227228) b!396027))

(assert (= (and b!396027 res!227217) b!396020))

(assert (= (and b!396020 res!227224) b!396023))

(assert (= (and b!396023 res!227223) b!396028))

(assert (= (and b!396028 res!227226) b!396022))

(assert (= (and b!396022 res!227225) b!396021))

(assert (= (and b!396021 res!227219) b!396015))

(assert (= (and b!396015 res!227216) b!396016))

(assert (= (and b!396016 res!227222) b!396030))

(assert (= (and b!396030 res!227221) b!396018))

(assert (= (and b!396018 res!227227) b!396026))

(assert (= (and b!396026 (not res!227220)) b!396017))

(assert (= (and b!396019 condMapEmpty!16392) mapIsEmpty!16392))

(assert (= (and b!396019 (not condMapEmpty!16392)) mapNonEmpty!16392))

(get-info :version)

(assert (= (and mapNonEmpty!16392 ((_ is ValueCellFull!4581) mapValue!16392)) b!396025))

(assert (= (and b!396019 ((_ is ValueCellFull!4581) mapDefault!16392)) b!396029))

(assert (= start!38420 b!396019))

(declare-fun m!391767 () Bool)

(assert (=> b!396024 m!391767))

(declare-fun m!391769 () Bool)

(assert (=> mapNonEmpty!16392 m!391769))

(declare-fun m!391771 () Bool)

(assert (=> b!396015 m!391771))

(declare-fun m!391773 () Bool)

(assert (=> start!38420 m!391773))

(declare-fun m!391775 () Bool)

(assert (=> start!38420 m!391775))

(declare-fun m!391777 () Bool)

(assert (=> b!396022 m!391777))

(declare-fun m!391779 () Bool)

(assert (=> b!396016 m!391779))

(declare-fun m!391781 () Bool)

(assert (=> b!396016 m!391781))

(declare-fun m!391783 () Bool)

(assert (=> b!396021 m!391783))

(declare-fun m!391785 () Bool)

(assert (=> b!396017 m!391785))

(declare-fun m!391787 () Bool)

(assert (=> b!396023 m!391787))

(declare-fun m!391789 () Bool)

(assert (=> b!396018 m!391789))

(declare-fun m!391791 () Bool)

(assert (=> b!396026 m!391791))

(declare-fun m!391793 () Bool)

(assert (=> b!396020 m!391793))

(check-sat (not b!396018) (not b!396026) (not b!396015) (not b!396016) tp_is_empty!9849 (not start!38420) (not b!396017) (not mapNonEmpty!16392) (not b!396020) (not b!396022) (not b!396024) (not b!396023))
(check-sat)
(get-model)

(declare-fun d!73267 () Bool)

(declare-fun lt!187082 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!202 (List!6488) (InoxSet (_ BitVec 64)))

(assert (=> d!73267 (= lt!187082 (select (content!202 Nil!6485) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!239693 () Bool)

(assert (=> d!73267 (= lt!187082 e!239693)))

(declare-fun res!227273 () Bool)

(assert (=> d!73267 (=> (not res!227273) (not e!239693))))

(assert (=> d!73267 (= res!227273 ((_ is Cons!6484) Nil!6485))))

(assert (=> d!73267 (= (contains!2485 Nil!6485 #b1000000000000000000000000000000000000000000000000000000000000000) lt!187082)))

(declare-fun b!396083 () Bool)

(declare-fun e!239692 () Bool)

(assert (=> b!396083 (= e!239693 e!239692)))

(declare-fun res!227272 () Bool)

(assert (=> b!396083 (=> res!227272 e!239692)))

(assert (=> b!396083 (= res!227272 (= (h!7340 Nil!6485) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!396084 () Bool)

(assert (=> b!396084 (= e!239692 (contains!2485 (t!11670 Nil!6485) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!73267 res!227273) b!396083))

(assert (= (and b!396083 (not res!227272)) b!396084))

(declare-fun m!391823 () Bool)

(assert (=> d!73267 m!391823))

(declare-fun m!391825 () Bool)

(assert (=> d!73267 m!391825))

(declare-fun m!391827 () Bool)

(assert (=> b!396084 m!391827))

(assert (=> b!396017 d!73267))

(declare-fun d!73269 () Bool)

(assert (=> d!73269 (= (validKeyInArray!0 k0!794) (and (not (= k0!794 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!794 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!396022 d!73269))

(declare-fun d!73271 () Bool)

(declare-fun res!227278 () Bool)

(declare-fun e!239698 () Bool)

(assert (=> d!73271 (=> res!227278 e!239698)))

(assert (=> d!73271 (= res!227278 ((_ is Nil!6485) Nil!6485))))

(assert (=> d!73271 (= (noDuplicate!199 Nil!6485) e!239698)))

(declare-fun b!396089 () Bool)

(declare-fun e!239699 () Bool)

(assert (=> b!396089 (= e!239698 e!239699)))

(declare-fun res!227279 () Bool)

(assert (=> b!396089 (=> (not res!227279) (not e!239699))))

(assert (=> b!396089 (= res!227279 (not (contains!2485 (t!11670 Nil!6485) (h!7340 Nil!6485))))))

(declare-fun b!396090 () Bool)

(assert (=> b!396090 (= e!239699 (noDuplicate!199 (t!11670 Nil!6485)))))

(assert (= (and d!73271 (not res!227278)) b!396089))

(assert (= (and b!396089 res!227279) b!396090))

(declare-fun m!391829 () Bool)

(assert (=> b!396089 m!391829))

(declare-fun m!391831 () Bool)

(assert (=> b!396090 m!391831))

(assert (=> b!396018 d!73271))

(declare-fun b!396101 () Bool)

(declare-fun e!239709 () Bool)

(declare-fun e!239708 () Bool)

(assert (=> b!396101 (= e!239709 e!239708)))

(declare-fun res!227287 () Bool)

(assert (=> b!396101 (=> (not res!227287) (not e!239708))))

(declare-fun e!239711 () Bool)

(assert (=> b!396101 (= res!227287 (not e!239711))))

(declare-fun res!227288 () Bool)

(assert (=> b!396101 (=> (not res!227288) (not e!239711))))

(assert (=> b!396101 (= res!227288 (validKeyInArray!0 (select (arr!11241 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun bm!27886 () Bool)

(declare-fun call!27889 () Bool)

(declare-fun c!54493 () Bool)

(assert (=> bm!27886 (= call!27889 (arrayNoDuplicates!0 _keys!709 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!54493 (Cons!6484 (select (arr!11241 _keys!709) #b00000000000000000000000000000000) Nil!6485) Nil!6485)))))

(declare-fun b!396102 () Bool)

(declare-fun e!239710 () Bool)

(assert (=> b!396102 (= e!239708 e!239710)))

(assert (=> b!396102 (= c!54493 (validKeyInArray!0 (select (arr!11241 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun b!396103 () Bool)

(assert (=> b!396103 (= e!239710 call!27889)))

(declare-fun d!73273 () Bool)

(declare-fun res!227286 () Bool)

(assert (=> d!73273 (=> res!227286 e!239709)))

(assert (=> d!73273 (= res!227286 (bvsge #b00000000000000000000000000000000 (size!11593 _keys!709)))))

(assert (=> d!73273 (= (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6485) e!239709)))

(declare-fun b!396104 () Bool)

(assert (=> b!396104 (= e!239710 call!27889)))

(declare-fun b!396105 () Bool)

(assert (=> b!396105 (= e!239711 (contains!2485 Nil!6485 (select (arr!11241 _keys!709) #b00000000000000000000000000000000)))))

(assert (= (and d!73273 (not res!227286)) b!396101))

(assert (= (and b!396101 res!227288) b!396105))

(assert (= (and b!396101 res!227287) b!396102))

(assert (= (and b!396102 c!54493) b!396104))

(assert (= (and b!396102 (not c!54493)) b!396103))

(assert (= (or b!396104 b!396103) bm!27886))

(declare-fun m!391833 () Bool)

(assert (=> b!396101 m!391833))

(assert (=> b!396101 m!391833))

(declare-fun m!391835 () Bool)

(assert (=> b!396101 m!391835))

(assert (=> bm!27886 m!391833))

(declare-fun m!391837 () Bool)

(assert (=> bm!27886 m!391837))

(assert (=> b!396102 m!391833))

(assert (=> b!396102 m!391833))

(assert (=> b!396102 m!391835))

(assert (=> b!396105 m!391833))

(assert (=> b!396105 m!391833))

(declare-fun m!391839 () Bool)

(assert (=> b!396105 m!391839))

(assert (=> b!396023 d!73273))

(declare-fun d!73275 () Bool)

(assert (=> d!73275 (= (validMask!0 mask!1025) (and (or (= mask!1025 #b00000000000000000000000000000111) (= mask!1025 #b00000000000000000000000000001111) (= mask!1025 #b00000000000000000000000000011111) (= mask!1025 #b00000000000000000000000000111111) (= mask!1025 #b00000000000000000000000001111111) (= mask!1025 #b00000000000000000000000011111111) (= mask!1025 #b00000000000000000000000111111111) (= mask!1025 #b00000000000000000000001111111111) (= mask!1025 #b00000000000000000000011111111111) (= mask!1025 #b00000000000000000000111111111111) (= mask!1025 #b00000000000000000001111111111111) (= mask!1025 #b00000000000000000011111111111111) (= mask!1025 #b00000000000000000111111111111111) (= mask!1025 #b00000000000000001111111111111111) (= mask!1025 #b00000000000000011111111111111111) (= mask!1025 #b00000000000000111111111111111111) (= mask!1025 #b00000000000001111111111111111111) (= mask!1025 #b00000000000011111111111111111111) (= mask!1025 #b00000000000111111111111111111111) (= mask!1025 #b00000000001111111111111111111111) (= mask!1025 #b00000000011111111111111111111111) (= mask!1025 #b00000000111111111111111111111111) (= mask!1025 #b00000001111111111111111111111111) (= mask!1025 #b00000011111111111111111111111111) (= mask!1025 #b00000111111111111111111111111111) (= mask!1025 #b00001111111111111111111111111111) (= mask!1025 #b00011111111111111111111111111111) (= mask!1025 #b00111111111111111111111111111111)) (bvsle mask!1025 #b00111111111111111111111111111111)))))

(assert (=> b!396024 d!73275))

(declare-fun d!73277 () Bool)

(assert (=> d!73277 (= (array_inv!8230 _values!549) (bvsge (size!11592 _values!549) #b00000000000000000000000000000000))))

(assert (=> start!38420 d!73277))

(declare-fun d!73279 () Bool)

(assert (=> d!73279 (= (array_inv!8231 _keys!709) (bvsge (size!11593 _keys!709) #b00000000000000000000000000000000))))

(assert (=> start!38420 d!73279))

(declare-fun d!73281 () Bool)

(declare-fun res!227293 () Bool)

(declare-fun e!239716 () Bool)

(assert (=> d!73281 (=> res!227293 e!239716)))

(assert (=> d!73281 (= res!227293 (= (select (arr!11241 _keys!709) #b00000000000000000000000000000000) k0!794))))

(assert (=> d!73281 (= (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000) e!239716)))

(declare-fun b!396110 () Bool)

(declare-fun e!239717 () Bool)

(assert (=> b!396110 (= e!239716 e!239717)))

(declare-fun res!227294 () Bool)

(assert (=> b!396110 (=> (not res!227294) (not e!239717))))

(assert (=> b!396110 (= res!227294 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!11593 _keys!709)))))

(declare-fun b!396111 () Bool)

(assert (=> b!396111 (= e!239717 (arrayContainsKey!0 _keys!709 k0!794 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!73281 (not res!227293)) b!396110))

(assert (= (and b!396110 res!227294) b!396111))

(assert (=> d!73281 m!391833))

(declare-fun m!391841 () Bool)

(assert (=> b!396111 m!391841))

(assert (=> b!396015 d!73281))

(declare-fun b!396120 () Bool)

(declare-fun e!239726 () Bool)

(declare-fun call!27892 () Bool)

(assert (=> b!396120 (= e!239726 call!27892)))

(declare-fun d!73283 () Bool)

(declare-fun res!227299 () Bool)

(declare-fun e!239724 () Bool)

(assert (=> d!73283 (=> res!227299 e!239724)))

(assert (=> d!73283 (= res!227299 (bvsge #b00000000000000000000000000000000 (size!11593 _keys!709)))))

(assert (=> d!73283 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025) e!239724)))

(declare-fun bm!27889 () Bool)

(assert (=> bm!27889 (= call!27892 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!709 mask!1025))))

(declare-fun b!396121 () Bool)

(declare-fun e!239725 () Bool)

(assert (=> b!396121 (= e!239725 call!27892)))

(declare-fun b!396122 () Bool)

(assert (=> b!396122 (= e!239725 e!239726)))

(declare-fun lt!187089 () (_ BitVec 64))

(assert (=> b!396122 (= lt!187089 (select (arr!11241 _keys!709) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!12033 0))(
  ( (Unit!12034) )
))
(declare-fun lt!187091 () Unit!12033)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!23587 (_ BitVec 64) (_ BitVec 32)) Unit!12033)

(assert (=> b!396122 (= lt!187091 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!709 lt!187089 #b00000000000000000000000000000000))))

(assert (=> b!396122 (arrayContainsKey!0 _keys!709 lt!187089 #b00000000000000000000000000000000)))

(declare-fun lt!187090 () Unit!12033)

(assert (=> b!396122 (= lt!187090 lt!187091)))

(declare-fun res!227300 () Bool)

(declare-datatypes ((SeekEntryResult!3514 0))(
  ( (MissingZero!3514 (index!16235 (_ BitVec 32))) (Found!3514 (index!16236 (_ BitVec 32))) (Intermediate!3514 (undefined!4326 Bool) (index!16237 (_ BitVec 32)) (x!38677 (_ BitVec 32))) (Undefined!3514) (MissingVacant!3514 (index!16238 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!23587 (_ BitVec 32)) SeekEntryResult!3514)

(assert (=> b!396122 (= res!227300 (= (seekEntryOrOpen!0 (select (arr!11241 _keys!709) #b00000000000000000000000000000000) _keys!709 mask!1025) (Found!3514 #b00000000000000000000000000000000)))))

(assert (=> b!396122 (=> (not res!227300) (not e!239726))))

(declare-fun b!396123 () Bool)

(assert (=> b!396123 (= e!239724 e!239725)))

(declare-fun c!54496 () Bool)

(assert (=> b!396123 (= c!54496 (validKeyInArray!0 (select (arr!11241 _keys!709) #b00000000000000000000000000000000)))))

(assert (= (and d!73283 (not res!227299)) b!396123))

(assert (= (and b!396123 c!54496) b!396122))

(assert (= (and b!396123 (not c!54496)) b!396121))

(assert (= (and b!396122 res!227300) b!396120))

(assert (= (or b!396120 b!396121) bm!27889))

(declare-fun m!391843 () Bool)

(assert (=> bm!27889 m!391843))

(assert (=> b!396122 m!391833))

(declare-fun m!391845 () Bool)

(assert (=> b!396122 m!391845))

(declare-fun m!391847 () Bool)

(assert (=> b!396122 m!391847))

(assert (=> b!396122 m!391833))

(declare-fun m!391849 () Bool)

(assert (=> b!396122 m!391849))

(assert (=> b!396123 m!391833))

(assert (=> b!396123 m!391833))

(assert (=> b!396123 m!391835))

(assert (=> b!396020 d!73283))

(declare-fun d!73285 () Bool)

(declare-fun lt!187092 () Bool)

(assert (=> d!73285 (= lt!187092 (select (content!202 Nil!6485) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!239728 () Bool)

(assert (=> d!73285 (= lt!187092 e!239728)))

(declare-fun res!227302 () Bool)

(assert (=> d!73285 (=> (not res!227302) (not e!239728))))

(assert (=> d!73285 (= res!227302 ((_ is Cons!6484) Nil!6485))))

(assert (=> d!73285 (= (contains!2485 Nil!6485 #b0000000000000000000000000000000000000000000000000000000000000000) lt!187092)))

(declare-fun b!396124 () Bool)

(declare-fun e!239727 () Bool)

(assert (=> b!396124 (= e!239728 e!239727)))

(declare-fun res!227301 () Bool)

(assert (=> b!396124 (=> res!227301 e!239727)))

(assert (=> b!396124 (= res!227301 (= (h!7340 Nil!6485) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!396125 () Bool)

(assert (=> b!396125 (= e!239727 (contains!2485 (t!11670 Nil!6485) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!73285 res!227302) b!396124))

(assert (= (and b!396124 (not res!227301)) b!396125))

(assert (=> d!73285 m!391823))

(declare-fun m!391851 () Bool)

(assert (=> d!73285 m!391851))

(declare-fun m!391853 () Bool)

(assert (=> b!396125 m!391853))

(assert (=> b!396026 d!73285))

(declare-fun b!396126 () Bool)

(declare-fun e!239731 () Bool)

(declare-fun call!27893 () Bool)

(assert (=> b!396126 (= e!239731 call!27893)))

(declare-fun d!73287 () Bool)

(declare-fun res!227303 () Bool)

(declare-fun e!239729 () Bool)

(assert (=> d!73287 (=> res!227303 e!239729)))

(assert (=> d!73287 (= res!227303 (bvsge #b00000000000000000000000000000000 (size!11593 (array!23588 (store (arr!11241 _keys!709) i!563 k0!794) (size!11593 _keys!709)))))))

(assert (=> d!73287 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!23588 (store (arr!11241 _keys!709) i!563 k0!794) (size!11593 _keys!709)) mask!1025) e!239729)))

(declare-fun bm!27890 () Bool)

(assert (=> bm!27890 (= call!27893 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!23588 (store (arr!11241 _keys!709) i!563 k0!794) (size!11593 _keys!709)) mask!1025))))

(declare-fun b!396127 () Bool)

(declare-fun e!239730 () Bool)

(assert (=> b!396127 (= e!239730 call!27893)))

(declare-fun b!396128 () Bool)

(assert (=> b!396128 (= e!239730 e!239731)))

(declare-fun lt!187093 () (_ BitVec 64))

(assert (=> b!396128 (= lt!187093 (select (arr!11241 (array!23588 (store (arr!11241 _keys!709) i!563 k0!794) (size!11593 _keys!709))) #b00000000000000000000000000000000))))

(declare-fun lt!187095 () Unit!12033)

(assert (=> b!396128 (= lt!187095 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!23588 (store (arr!11241 _keys!709) i!563 k0!794) (size!11593 _keys!709)) lt!187093 #b00000000000000000000000000000000))))

(assert (=> b!396128 (arrayContainsKey!0 (array!23588 (store (arr!11241 _keys!709) i!563 k0!794) (size!11593 _keys!709)) lt!187093 #b00000000000000000000000000000000)))

(declare-fun lt!187094 () Unit!12033)

(assert (=> b!396128 (= lt!187094 lt!187095)))

(declare-fun res!227304 () Bool)

(assert (=> b!396128 (= res!227304 (= (seekEntryOrOpen!0 (select (arr!11241 (array!23588 (store (arr!11241 _keys!709) i!563 k0!794) (size!11593 _keys!709))) #b00000000000000000000000000000000) (array!23588 (store (arr!11241 _keys!709) i!563 k0!794) (size!11593 _keys!709)) mask!1025) (Found!3514 #b00000000000000000000000000000000)))))

(assert (=> b!396128 (=> (not res!227304) (not e!239731))))

(declare-fun b!396129 () Bool)

(assert (=> b!396129 (= e!239729 e!239730)))

(declare-fun c!54497 () Bool)

(assert (=> b!396129 (= c!54497 (validKeyInArray!0 (select (arr!11241 (array!23588 (store (arr!11241 _keys!709) i!563 k0!794) (size!11593 _keys!709))) #b00000000000000000000000000000000)))))

(assert (= (and d!73287 (not res!227303)) b!396129))

(assert (= (and b!396129 c!54497) b!396128))

(assert (= (and b!396129 (not c!54497)) b!396127))

(assert (= (and b!396128 res!227304) b!396126))

(assert (= (or b!396126 b!396127) bm!27890))

(declare-fun m!391855 () Bool)

(assert (=> bm!27890 m!391855))

(declare-fun m!391857 () Bool)

(assert (=> b!396128 m!391857))

(declare-fun m!391859 () Bool)

(assert (=> b!396128 m!391859))

(declare-fun m!391861 () Bool)

(assert (=> b!396128 m!391861))

(assert (=> b!396128 m!391857))

(declare-fun m!391863 () Bool)

(assert (=> b!396128 m!391863))

(assert (=> b!396129 m!391857))

(assert (=> b!396129 m!391857))

(declare-fun m!391865 () Bool)

(assert (=> b!396129 m!391865))

(assert (=> b!396016 d!73287))

(declare-fun condMapEmpty!16398 () Bool)

(declare-fun mapDefault!16398 () ValueCell!4581)

(assert (=> mapNonEmpty!16392 (= condMapEmpty!16398 (= mapRest!16392 ((as const (Array (_ BitVec 32) ValueCell!4581)) mapDefault!16398)))))

(declare-fun e!239736 () Bool)

(declare-fun mapRes!16398 () Bool)

(assert (=> mapNonEmpty!16392 (= tp!32187 (and e!239736 mapRes!16398))))

(declare-fun b!396137 () Bool)

(assert (=> b!396137 (= e!239736 tp_is_empty!9849)))

(declare-fun mapIsEmpty!16398 () Bool)

(assert (=> mapIsEmpty!16398 mapRes!16398))

(declare-fun mapNonEmpty!16398 () Bool)

(declare-fun tp!32193 () Bool)

(declare-fun e!239737 () Bool)

(assert (=> mapNonEmpty!16398 (= mapRes!16398 (and tp!32193 e!239737))))

(declare-fun mapRest!16398 () (Array (_ BitVec 32) ValueCell!4581))

(declare-fun mapKey!16398 () (_ BitVec 32))

(declare-fun mapValue!16398 () ValueCell!4581)

(assert (=> mapNonEmpty!16398 (= mapRest!16392 (store mapRest!16398 mapKey!16398 mapValue!16398))))

(declare-fun b!396136 () Bool)

(assert (=> b!396136 (= e!239737 tp_is_empty!9849)))

(assert (= (and mapNonEmpty!16392 condMapEmpty!16398) mapIsEmpty!16398))

(assert (= (and mapNonEmpty!16392 (not condMapEmpty!16398)) mapNonEmpty!16398))

(assert (= (and mapNonEmpty!16398 ((_ is ValueCellFull!4581) mapValue!16398)) b!396136))

(assert (= (and mapNonEmpty!16392 ((_ is ValueCellFull!4581) mapDefault!16398)) b!396137))

(declare-fun m!391867 () Bool)

(assert (=> mapNonEmpty!16398 m!391867))

(check-sat (not bm!27886) (not b!396128) (not b!396101) (not mapNonEmpty!16398) (not bm!27890) (not b!396105) (not b!396102) (not b!396125) (not b!396129) (not b!396122) (not b!396111) (not d!73285) (not bm!27889) (not b!396089) (not d!73267) (not b!396084) (not b!396123) (not b!396090) tp_is_empty!9849)
(check-sat)
