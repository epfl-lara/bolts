; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40348 () Bool)

(assert start!40348)

(declare-fun mapIsEmpty!19233 () Bool)

(declare-fun mapRes!19233 () Bool)

(assert (=> mapIsEmpty!19233 mapRes!19233))

(declare-fun b!443000 () Bool)

(declare-fun res!262551 () Bool)

(declare-fun e!260678 () Bool)

(assert (=> b!443000 (=> (not res!262551) (not e!260678))))

(declare-datatypes ((array!27257 0))(
  ( (array!27258 (arr!13074 (Array (_ BitVec 32) (_ BitVec 64))) (size!13426 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27257)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16757 0))(
  ( (V!16758 (val!5914 Int)) )
))
(declare-datatypes ((ValueCell!5526 0))(
  ( (ValueCellFull!5526 (v!8161 V!16757)) (EmptyCell!5526) )
))
(declare-datatypes ((array!27259 0))(
  ( (array!27260 (arr!13075 (Array (_ BitVec 32) ValueCell!5526)) (size!13427 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27259)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!443000 (= res!262551 (and (= (size!13427 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13426 _keys!709) (size!13427 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!443001 () Bool)

(declare-fun res!262547 () Bool)

(assert (=> b!443001 (=> (not res!262547) (not e!260678))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!443001 (= res!262547 (validKeyInArray!0 k0!794))))

(declare-fun b!443002 () Bool)

(declare-fun e!260680 () Bool)

(declare-fun tp_is_empty!11739 () Bool)

(assert (=> b!443002 (= e!260680 tp_is_empty!11739)))

(declare-fun mapNonEmpty!19233 () Bool)

(declare-fun tp!37215 () Bool)

(declare-fun e!260681 () Bool)

(assert (=> mapNonEmpty!19233 (= mapRes!19233 (and tp!37215 e!260681))))

(declare-fun mapValue!19233 () ValueCell!5526)

(declare-fun mapRest!19233 () (Array (_ BitVec 32) ValueCell!5526))

(declare-fun mapKey!19233 () (_ BitVec 32))

(assert (=> mapNonEmpty!19233 (= (arr!13075 _values!549) (store mapRest!19233 mapKey!19233 mapValue!19233))))

(declare-fun b!443004 () Bool)

(declare-fun res!262550 () Bool)

(assert (=> b!443004 (=> (not res!262550) (not e!260678))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!443004 (= res!262550 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13426 _keys!709))))))

(declare-fun b!443005 () Bool)

(declare-fun res!262552 () Bool)

(assert (=> b!443005 (=> (not res!262552) (not e!260678))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!443005 (= res!262552 (validMask!0 mask!1025))))

(declare-fun b!443006 () Bool)

(declare-fun res!262556 () Bool)

(declare-fun e!260676 () Bool)

(assert (=> b!443006 (=> (not res!262556) (not e!260676))))

(declare-fun lt!203262 () array!27257)

(declare-datatypes ((List!7819 0))(
  ( (Nil!7816) (Cons!7815 (h!8671 (_ BitVec 64)) (t!13585 List!7819)) )
))
(declare-fun arrayNoDuplicates!0 (array!27257 (_ BitVec 32) List!7819) Bool)

(assert (=> b!443006 (= res!262556 (arrayNoDuplicates!0 lt!203262 #b00000000000000000000000000000000 Nil!7816))))

(declare-fun b!443007 () Bool)

(declare-fun e!260679 () Bool)

(assert (=> b!443007 (= e!260679 (and e!260680 mapRes!19233))))

(declare-fun condMapEmpty!19233 () Bool)

(declare-fun mapDefault!19233 () ValueCell!5526)

(assert (=> b!443007 (= condMapEmpty!19233 (= (arr!13075 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5526)) mapDefault!19233)))))

(declare-fun b!443003 () Bool)

(declare-fun res!262549 () Bool)

(assert (=> b!443003 (=> (not res!262549) (not e!260678))))

(assert (=> b!443003 (= res!262549 (or (= (select (arr!13074 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13074 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!262554 () Bool)

(assert (=> start!40348 (=> (not res!262554) (not e!260678))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40348 (= res!262554 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13426 _keys!709))))))

(assert (=> start!40348 e!260678))

(assert (=> start!40348 true))

(declare-fun array_inv!9480 (array!27259) Bool)

(assert (=> start!40348 (and (array_inv!9480 _values!549) e!260679)))

(declare-fun array_inv!9481 (array!27257) Bool)

(assert (=> start!40348 (array_inv!9481 _keys!709)))

(declare-fun b!443008 () Bool)

(assert (=> b!443008 (= e!260676 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!13426 _keys!709)) (bvslt (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!443009 () Bool)

(declare-fun res!262555 () Bool)

(assert (=> b!443009 (=> (not res!262555) (not e!260678))))

(assert (=> b!443009 (= res!262555 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7816))))

(declare-fun b!443010 () Bool)

(declare-fun res!262548 () Bool)

(assert (=> b!443010 (=> (not res!262548) (not e!260678))))

(declare-fun arrayContainsKey!0 (array!27257 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!443010 (= res!262548 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!443011 () Bool)

(assert (=> b!443011 (= e!260681 tp_is_empty!11739)))

(declare-fun b!443012 () Bool)

(assert (=> b!443012 (= e!260678 e!260676)))

(declare-fun res!262546 () Bool)

(assert (=> b!443012 (=> (not res!262546) (not e!260676))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27257 (_ BitVec 32)) Bool)

(assert (=> b!443012 (= res!262546 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203262 mask!1025))))

(assert (=> b!443012 (= lt!203262 (array!27258 (store (arr!13074 _keys!709) i!563 k0!794) (size!13426 _keys!709)))))

(declare-fun b!443013 () Bool)

(declare-fun res!262553 () Bool)

(assert (=> b!443013 (=> (not res!262553) (not e!260678))))

(assert (=> b!443013 (= res!262553 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(assert (= (and start!40348 res!262554) b!443005))

(assert (= (and b!443005 res!262552) b!443000))

(assert (= (and b!443000 res!262551) b!443013))

(assert (= (and b!443013 res!262553) b!443009))

(assert (= (and b!443009 res!262555) b!443004))

(assert (= (and b!443004 res!262550) b!443001))

(assert (= (and b!443001 res!262547) b!443003))

(assert (= (and b!443003 res!262549) b!443010))

(assert (= (and b!443010 res!262548) b!443012))

(assert (= (and b!443012 res!262546) b!443006))

(assert (= (and b!443006 res!262556) b!443008))

(assert (= (and b!443007 condMapEmpty!19233) mapIsEmpty!19233))

(assert (= (and b!443007 (not condMapEmpty!19233)) mapNonEmpty!19233))

(get-info :version)

(assert (= (and mapNonEmpty!19233 ((_ is ValueCellFull!5526) mapValue!19233)) b!443011))

(assert (= (and b!443007 ((_ is ValueCellFull!5526) mapDefault!19233)) b!443002))

(assert (= start!40348 b!443007))

(declare-fun m!429395 () Bool)

(assert (=> b!443012 m!429395))

(declare-fun m!429397 () Bool)

(assert (=> b!443012 m!429397))

(declare-fun m!429399 () Bool)

(assert (=> b!443010 m!429399))

(declare-fun m!429401 () Bool)

(assert (=> mapNonEmpty!19233 m!429401))

(declare-fun m!429403 () Bool)

(assert (=> b!443006 m!429403))

(declare-fun m!429405 () Bool)

(assert (=> start!40348 m!429405))

(declare-fun m!429407 () Bool)

(assert (=> start!40348 m!429407))

(declare-fun m!429409 () Bool)

(assert (=> b!443013 m!429409))

(declare-fun m!429411 () Bool)

(assert (=> b!443001 m!429411))

(declare-fun m!429413 () Bool)

(assert (=> b!443005 m!429413))

(declare-fun m!429415 () Bool)

(assert (=> b!443003 m!429415))

(declare-fun m!429417 () Bool)

(assert (=> b!443009 m!429417))

(check-sat (not start!40348) (not b!443001) (not b!443005) tp_is_empty!11739 (not b!443006) (not b!443010) (not mapNonEmpty!19233) (not b!443013) (not b!443012) (not b!443009))
(check-sat)
(get-model)

(declare-fun b!443066 () Bool)

(declare-fun e!260710 () Bool)

(declare-fun e!260709 () Bool)

(assert (=> b!443066 (= e!260710 e!260709)))

(declare-fun res!262597 () Bool)

(assert (=> b!443066 (=> (not res!262597) (not e!260709))))

(declare-fun e!260711 () Bool)

(assert (=> b!443066 (= res!262597 (not e!260711))))

(declare-fun res!262598 () Bool)

(assert (=> b!443066 (=> (not res!262598) (not e!260711))))

(assert (=> b!443066 (= res!262598 (validKeyInArray!0 (select (arr!13074 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun d!73951 () Bool)

(declare-fun res!262596 () Bool)

(assert (=> d!73951 (=> res!262596 e!260710)))

(assert (=> d!73951 (= res!262596 (bvsge #b00000000000000000000000000000000 (size!13426 _keys!709)))))

(assert (=> d!73951 (= (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7816) e!260710)))

(declare-fun b!443067 () Bool)

(declare-fun e!260708 () Bool)

(declare-fun call!29554 () Bool)

(assert (=> b!443067 (= e!260708 call!29554)))

(declare-fun bm!29551 () Bool)

(declare-fun c!55768 () Bool)

(assert (=> bm!29551 (= call!29554 (arrayNoDuplicates!0 _keys!709 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!55768 (Cons!7815 (select (arr!13074 _keys!709) #b00000000000000000000000000000000) Nil!7816) Nil!7816)))))

(declare-fun b!443068 () Bool)

(declare-fun contains!2490 (List!7819 (_ BitVec 64)) Bool)

(assert (=> b!443068 (= e!260711 (contains!2490 Nil!7816 (select (arr!13074 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun b!443069 () Bool)

(assert (=> b!443069 (= e!260708 call!29554)))

(declare-fun b!443070 () Bool)

(assert (=> b!443070 (= e!260709 e!260708)))

(assert (=> b!443070 (= c!55768 (validKeyInArray!0 (select (arr!13074 _keys!709) #b00000000000000000000000000000000)))))

(assert (= (and d!73951 (not res!262596)) b!443066))

(assert (= (and b!443066 res!262598) b!443068))

(assert (= (and b!443066 res!262597) b!443070))

(assert (= (and b!443070 c!55768) b!443069))

(assert (= (and b!443070 (not c!55768)) b!443067))

(assert (= (or b!443069 b!443067) bm!29551))

(declare-fun m!429443 () Bool)

(assert (=> b!443066 m!429443))

(assert (=> b!443066 m!429443))

(declare-fun m!429445 () Bool)

(assert (=> b!443066 m!429445))

(assert (=> bm!29551 m!429443))

(declare-fun m!429447 () Bool)

(assert (=> bm!29551 m!429447))

(assert (=> b!443068 m!429443))

(assert (=> b!443068 m!429443))

(declare-fun m!429449 () Bool)

(assert (=> b!443068 m!429449))

(assert (=> b!443070 m!429443))

(assert (=> b!443070 m!429443))

(assert (=> b!443070 m!429445))

(assert (=> b!443009 d!73951))

(declare-fun d!73953 () Bool)

(declare-fun res!262603 () Bool)

(declare-fun e!260716 () Bool)

(assert (=> d!73953 (=> res!262603 e!260716)))

(assert (=> d!73953 (= res!262603 (= (select (arr!13074 _keys!709) #b00000000000000000000000000000000) k0!794))))

(assert (=> d!73953 (= (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000) e!260716)))

(declare-fun b!443075 () Bool)

(declare-fun e!260717 () Bool)

(assert (=> b!443075 (= e!260716 e!260717)))

(declare-fun res!262604 () Bool)

(assert (=> b!443075 (=> (not res!262604) (not e!260717))))

(assert (=> b!443075 (= res!262604 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!13426 _keys!709)))))

(declare-fun b!443076 () Bool)

(assert (=> b!443076 (= e!260717 (arrayContainsKey!0 _keys!709 k0!794 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!73953 (not res!262603)) b!443075))

(assert (= (and b!443075 res!262604) b!443076))

(assert (=> d!73953 m!429443))

(declare-fun m!429451 () Bool)

(assert (=> b!443076 m!429451))

(assert (=> b!443010 d!73953))

(declare-fun d!73955 () Bool)

(assert (=> d!73955 (= (validMask!0 mask!1025) (and (or (= mask!1025 #b00000000000000000000000000000111) (= mask!1025 #b00000000000000000000000000001111) (= mask!1025 #b00000000000000000000000000011111) (= mask!1025 #b00000000000000000000000000111111) (= mask!1025 #b00000000000000000000000001111111) (= mask!1025 #b00000000000000000000000011111111) (= mask!1025 #b00000000000000000000000111111111) (= mask!1025 #b00000000000000000000001111111111) (= mask!1025 #b00000000000000000000011111111111) (= mask!1025 #b00000000000000000000111111111111) (= mask!1025 #b00000000000000000001111111111111) (= mask!1025 #b00000000000000000011111111111111) (= mask!1025 #b00000000000000000111111111111111) (= mask!1025 #b00000000000000001111111111111111) (= mask!1025 #b00000000000000011111111111111111) (= mask!1025 #b00000000000000111111111111111111) (= mask!1025 #b00000000000001111111111111111111) (= mask!1025 #b00000000000011111111111111111111) (= mask!1025 #b00000000000111111111111111111111) (= mask!1025 #b00000000001111111111111111111111) (= mask!1025 #b00000000011111111111111111111111) (= mask!1025 #b00000000111111111111111111111111) (= mask!1025 #b00000001111111111111111111111111) (= mask!1025 #b00000011111111111111111111111111) (= mask!1025 #b00000111111111111111111111111111) (= mask!1025 #b00001111111111111111111111111111) (= mask!1025 #b00011111111111111111111111111111) (= mask!1025 #b00111111111111111111111111111111)) (bvsle mask!1025 #b00111111111111111111111111111111)))))

(assert (=> b!443005 d!73955))

(declare-fun d!73957 () Bool)

(assert (=> d!73957 (= (validKeyInArray!0 k0!794) (and (not (= k0!794 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!794 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!443001 d!73957))

(declare-fun d!73959 () Bool)

(assert (=> d!73959 (= (array_inv!9480 _values!549) (bvsge (size!13427 _values!549) #b00000000000000000000000000000000))))

(assert (=> start!40348 d!73959))

(declare-fun d!73961 () Bool)

(assert (=> d!73961 (= (array_inv!9481 _keys!709) (bvsge (size!13426 _keys!709) #b00000000000000000000000000000000))))

(assert (=> start!40348 d!73961))

(declare-fun b!443077 () Bool)

(declare-fun e!260720 () Bool)

(declare-fun e!260719 () Bool)

(assert (=> b!443077 (= e!260720 e!260719)))

(declare-fun res!262606 () Bool)

(assert (=> b!443077 (=> (not res!262606) (not e!260719))))

(declare-fun e!260721 () Bool)

(assert (=> b!443077 (= res!262606 (not e!260721))))

(declare-fun res!262607 () Bool)

(assert (=> b!443077 (=> (not res!262607) (not e!260721))))

(assert (=> b!443077 (= res!262607 (validKeyInArray!0 (select (arr!13074 lt!203262) #b00000000000000000000000000000000)))))

(declare-fun d!73963 () Bool)

(declare-fun res!262605 () Bool)

(assert (=> d!73963 (=> res!262605 e!260720)))

(assert (=> d!73963 (= res!262605 (bvsge #b00000000000000000000000000000000 (size!13426 lt!203262)))))

(assert (=> d!73963 (= (arrayNoDuplicates!0 lt!203262 #b00000000000000000000000000000000 Nil!7816) e!260720)))

(declare-fun b!443078 () Bool)

(declare-fun e!260718 () Bool)

(declare-fun call!29555 () Bool)

(assert (=> b!443078 (= e!260718 call!29555)))

(declare-fun bm!29552 () Bool)

(declare-fun c!55769 () Bool)

(assert (=> bm!29552 (= call!29555 (arrayNoDuplicates!0 lt!203262 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!55769 (Cons!7815 (select (arr!13074 lt!203262) #b00000000000000000000000000000000) Nil!7816) Nil!7816)))))

(declare-fun b!443079 () Bool)

(assert (=> b!443079 (= e!260721 (contains!2490 Nil!7816 (select (arr!13074 lt!203262) #b00000000000000000000000000000000)))))

(declare-fun b!443080 () Bool)

(assert (=> b!443080 (= e!260718 call!29555)))

(declare-fun b!443081 () Bool)

(assert (=> b!443081 (= e!260719 e!260718)))

(assert (=> b!443081 (= c!55769 (validKeyInArray!0 (select (arr!13074 lt!203262) #b00000000000000000000000000000000)))))

(assert (= (and d!73963 (not res!262605)) b!443077))

(assert (= (and b!443077 res!262607) b!443079))

(assert (= (and b!443077 res!262606) b!443081))

(assert (= (and b!443081 c!55769) b!443080))

(assert (= (and b!443081 (not c!55769)) b!443078))

(assert (= (or b!443080 b!443078) bm!29552))

(declare-fun m!429453 () Bool)

(assert (=> b!443077 m!429453))

(assert (=> b!443077 m!429453))

(declare-fun m!429455 () Bool)

(assert (=> b!443077 m!429455))

(assert (=> bm!29552 m!429453))

(declare-fun m!429457 () Bool)

(assert (=> bm!29552 m!429457))

(assert (=> b!443079 m!429453))

(assert (=> b!443079 m!429453))

(declare-fun m!429459 () Bool)

(assert (=> b!443079 m!429459))

(assert (=> b!443081 m!429453))

(assert (=> b!443081 m!429453))

(assert (=> b!443081 m!429455))

(assert (=> b!443006 d!73963))

(declare-fun b!443090 () Bool)

(declare-fun e!260730 () Bool)

(declare-fun e!260729 () Bool)

(assert (=> b!443090 (= e!260730 e!260729)))

(declare-fun c!55772 () Bool)

(assert (=> b!443090 (= c!55772 (validKeyInArray!0 (select (arr!13074 lt!203262) #b00000000000000000000000000000000)))))

(declare-fun d!73965 () Bool)

(declare-fun res!262612 () Bool)

(assert (=> d!73965 (=> res!262612 e!260730)))

(assert (=> d!73965 (= res!262612 (bvsge #b00000000000000000000000000000000 (size!13426 lt!203262)))))

(assert (=> d!73965 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203262 mask!1025) e!260730)))

(declare-fun b!443091 () Bool)

(declare-fun e!260728 () Bool)

(declare-fun call!29558 () Bool)

(assert (=> b!443091 (= e!260728 call!29558)))

(declare-fun b!443092 () Bool)

(assert (=> b!443092 (= e!260729 call!29558)))

(declare-fun bm!29555 () Bool)

(assert (=> bm!29555 (= call!29558 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!203262 mask!1025))))

(declare-fun b!443093 () Bool)

(assert (=> b!443093 (= e!260729 e!260728)))

(declare-fun lt!203274 () (_ BitVec 64))

(assert (=> b!443093 (= lt!203274 (select (arr!13074 lt!203262) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!13097 0))(
  ( (Unit!13098) )
))
(declare-fun lt!203272 () Unit!13097)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!27257 (_ BitVec 64) (_ BitVec 32)) Unit!13097)

(assert (=> b!443093 (= lt!203272 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!203262 lt!203274 #b00000000000000000000000000000000))))

(assert (=> b!443093 (arrayContainsKey!0 lt!203262 lt!203274 #b00000000000000000000000000000000)))

(declare-fun lt!203273 () Unit!13097)

(assert (=> b!443093 (= lt!203273 lt!203272)))

(declare-fun res!262613 () Bool)

(declare-datatypes ((SeekEntryResult!3516 0))(
  ( (MissingZero!3516 (index!16243 (_ BitVec 32))) (Found!3516 (index!16244 (_ BitVec 32))) (Intermediate!3516 (undefined!4328 Bool) (index!16245 (_ BitVec 32)) (x!41794 (_ BitVec 32))) (Undefined!3516) (MissingVacant!3516 (index!16246 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!27257 (_ BitVec 32)) SeekEntryResult!3516)

(assert (=> b!443093 (= res!262613 (= (seekEntryOrOpen!0 (select (arr!13074 lt!203262) #b00000000000000000000000000000000) lt!203262 mask!1025) (Found!3516 #b00000000000000000000000000000000)))))

(assert (=> b!443093 (=> (not res!262613) (not e!260728))))

(assert (= (and d!73965 (not res!262612)) b!443090))

(assert (= (and b!443090 c!55772) b!443093))

(assert (= (and b!443090 (not c!55772)) b!443092))

(assert (= (and b!443093 res!262613) b!443091))

(assert (= (or b!443091 b!443092) bm!29555))

(assert (=> b!443090 m!429453))

(assert (=> b!443090 m!429453))

(assert (=> b!443090 m!429455))

(declare-fun m!429461 () Bool)

(assert (=> bm!29555 m!429461))

(assert (=> b!443093 m!429453))

(declare-fun m!429463 () Bool)

(assert (=> b!443093 m!429463))

(declare-fun m!429465 () Bool)

(assert (=> b!443093 m!429465))

(assert (=> b!443093 m!429453))

(declare-fun m!429467 () Bool)

(assert (=> b!443093 m!429467))

(assert (=> b!443012 d!73965))

(declare-fun b!443094 () Bool)

(declare-fun e!260733 () Bool)

(declare-fun e!260732 () Bool)

(assert (=> b!443094 (= e!260733 e!260732)))

(declare-fun c!55773 () Bool)

(assert (=> b!443094 (= c!55773 (validKeyInArray!0 (select (arr!13074 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun d!73967 () Bool)

(declare-fun res!262614 () Bool)

(assert (=> d!73967 (=> res!262614 e!260733)))

(assert (=> d!73967 (= res!262614 (bvsge #b00000000000000000000000000000000 (size!13426 _keys!709)))))

(assert (=> d!73967 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025) e!260733)))

(declare-fun b!443095 () Bool)

(declare-fun e!260731 () Bool)

(declare-fun call!29559 () Bool)

(assert (=> b!443095 (= e!260731 call!29559)))

(declare-fun b!443096 () Bool)

(assert (=> b!443096 (= e!260732 call!29559)))

(declare-fun bm!29556 () Bool)

(assert (=> bm!29556 (= call!29559 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!709 mask!1025))))

(declare-fun b!443097 () Bool)

(assert (=> b!443097 (= e!260732 e!260731)))

(declare-fun lt!203277 () (_ BitVec 64))

(assert (=> b!443097 (= lt!203277 (select (arr!13074 _keys!709) #b00000000000000000000000000000000))))

(declare-fun lt!203275 () Unit!13097)

(assert (=> b!443097 (= lt!203275 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!709 lt!203277 #b00000000000000000000000000000000))))

(assert (=> b!443097 (arrayContainsKey!0 _keys!709 lt!203277 #b00000000000000000000000000000000)))

(declare-fun lt!203276 () Unit!13097)

(assert (=> b!443097 (= lt!203276 lt!203275)))

(declare-fun res!262615 () Bool)

(assert (=> b!443097 (= res!262615 (= (seekEntryOrOpen!0 (select (arr!13074 _keys!709) #b00000000000000000000000000000000) _keys!709 mask!1025) (Found!3516 #b00000000000000000000000000000000)))))

(assert (=> b!443097 (=> (not res!262615) (not e!260731))))

(assert (= (and d!73967 (not res!262614)) b!443094))

(assert (= (and b!443094 c!55773) b!443097))

(assert (= (and b!443094 (not c!55773)) b!443096))

(assert (= (and b!443097 res!262615) b!443095))

(assert (= (or b!443095 b!443096) bm!29556))

(assert (=> b!443094 m!429443))

(assert (=> b!443094 m!429443))

(assert (=> b!443094 m!429445))

(declare-fun m!429469 () Bool)

(assert (=> bm!29556 m!429469))

(assert (=> b!443097 m!429443))

(declare-fun m!429471 () Bool)

(assert (=> b!443097 m!429471))

(declare-fun m!429473 () Bool)

(assert (=> b!443097 m!429473))

(assert (=> b!443097 m!429443))

(declare-fun m!429475 () Bool)

(assert (=> b!443097 m!429475))

(assert (=> b!443013 d!73967))

(declare-fun b!443105 () Bool)

(declare-fun e!260739 () Bool)

(assert (=> b!443105 (= e!260739 tp_is_empty!11739)))

(declare-fun mapIsEmpty!19239 () Bool)

(declare-fun mapRes!19239 () Bool)

(assert (=> mapIsEmpty!19239 mapRes!19239))

(declare-fun mapNonEmpty!19239 () Bool)

(declare-fun tp!37221 () Bool)

(declare-fun e!260738 () Bool)

(assert (=> mapNonEmpty!19239 (= mapRes!19239 (and tp!37221 e!260738))))

(declare-fun mapValue!19239 () ValueCell!5526)

(declare-fun mapKey!19239 () (_ BitVec 32))

(declare-fun mapRest!19239 () (Array (_ BitVec 32) ValueCell!5526))

(assert (=> mapNonEmpty!19239 (= mapRest!19233 (store mapRest!19239 mapKey!19239 mapValue!19239))))

(declare-fun b!443104 () Bool)

(assert (=> b!443104 (= e!260738 tp_is_empty!11739)))

(declare-fun condMapEmpty!19239 () Bool)

(declare-fun mapDefault!19239 () ValueCell!5526)

(assert (=> mapNonEmpty!19233 (= condMapEmpty!19239 (= mapRest!19233 ((as const (Array (_ BitVec 32) ValueCell!5526)) mapDefault!19239)))))

(assert (=> mapNonEmpty!19233 (= tp!37215 (and e!260739 mapRes!19239))))

(assert (= (and mapNonEmpty!19233 condMapEmpty!19239) mapIsEmpty!19239))

(assert (= (and mapNonEmpty!19233 (not condMapEmpty!19239)) mapNonEmpty!19239))

(assert (= (and mapNonEmpty!19239 ((_ is ValueCellFull!5526) mapValue!19239)) b!443104))

(assert (= (and mapNonEmpty!19233 ((_ is ValueCellFull!5526) mapDefault!19239)) b!443105))

(declare-fun m!429477 () Bool)

(assert (=> mapNonEmpty!19239 m!429477))

(check-sat (not b!443090) (not bm!29555) (not b!443076) (not b!443068) (not mapNonEmpty!19239) (not b!443094) (not b!443097) (not b!443079) (not bm!29556) (not b!443081) tp_is_empty!11739 (not bm!29551) (not b!443070) (not bm!29552) (not b!443066) (not b!443077) (not b!443093))
(check-sat)
