; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34590 () Bool)

(assert start!34590)

(declare-fun b_free!7467 () Bool)

(declare-fun b_next!7467 () Bool)

(assert (=> start!34590 (= b_free!7467 (not b_next!7467))))

(declare-fun tp!25953 () Bool)

(declare-fun b_and!14697 () Bool)

(assert (=> start!34590 (= tp!25953 b_and!14697)))

(declare-fun b!345418 () Bool)

(declare-fun e!211721 () Bool)

(declare-fun tp_is_empty!7419 () Bool)

(assert (=> b!345418 (= e!211721 tp_is_empty!7419)))

(declare-fun b!345419 () Bool)

(declare-fun res!191156 () Bool)

(declare-fun e!211725 () Bool)

(assert (=> b!345419 (=> (not res!191156) (not e!211725))))

(declare-datatypes ((array!18393 0))(
  ( (array!18394 (arr!8708 (Array (_ BitVec 32) (_ BitVec 64))) (size!9060 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18393)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18393 (_ BitVec 32)) Bool)

(assert (=> b!345419 (= res!191156 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!345420 () Bool)

(declare-fun res!191155 () Bool)

(assert (=> b!345420 (=> (not res!191155) (not e!211725))))

(declare-datatypes ((V!10869 0))(
  ( (V!10870 (val!3754 Int)) )
))
(declare-datatypes ((ValueCell!3366 0))(
  ( (ValueCellFull!3366 (v!5928 V!10869)) (EmptyCell!3366) )
))
(declare-datatypes ((array!18395 0))(
  ( (array!18396 (arr!8709 (Array (_ BitVec 32) ValueCell!3366)) (size!9061 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18395)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!345420 (= res!191155 (and (= (size!9061 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9060 _keys!1895) (size!9061 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!12573 () Bool)

(declare-fun mapRes!12573 () Bool)

(assert (=> mapIsEmpty!12573 mapRes!12573))

(declare-fun b!345421 () Bool)

(declare-fun e!211724 () Bool)

(assert (=> b!345421 (= e!211724 (and e!211721 mapRes!12573))))

(declare-fun condMapEmpty!12573 () Bool)

(declare-fun mapDefault!12573 () ValueCell!3366)

(assert (=> b!345421 (= condMapEmpty!12573 (= (arr!8709 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3366)) mapDefault!12573)))))

(declare-fun res!191157 () Bool)

(assert (=> start!34590 (=> (not res!191157) (not e!211725))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34590 (= res!191157 (validMask!0 mask!2385))))

(assert (=> start!34590 e!211725))

(assert (=> start!34590 true))

(assert (=> start!34590 tp_is_empty!7419))

(assert (=> start!34590 tp!25953))

(declare-fun array_inv!6440 (array!18395) Bool)

(assert (=> start!34590 (and (array_inv!6440 _values!1525) e!211724)))

(declare-fun array_inv!6441 (array!18393) Bool)

(assert (=> start!34590 (array_inv!6441 _keys!1895)))

(declare-fun b!345422 () Bool)

(declare-fun res!191159 () Bool)

(assert (=> b!345422 (=> (not res!191159) (not e!211725))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!10869)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10869)

(declare-datatypes ((tuple2!5418 0))(
  ( (tuple2!5419 (_1!2719 (_ BitVec 64)) (_2!2719 V!10869)) )
))
(declare-datatypes ((List!5066 0))(
  ( (Nil!5063) (Cons!5062 (h!5918 tuple2!5418) (t!10194 List!5066)) )
))
(declare-datatypes ((ListLongMap!4345 0))(
  ( (ListLongMap!4346 (toList!2188 List!5066)) )
))
(declare-fun contains!2244 (ListLongMap!4345 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1708 (array!18393 array!18395 (_ BitVec 32) (_ BitVec 32) V!10869 V!10869 (_ BitVec 32) Int) ListLongMap!4345)

(assert (=> b!345422 (= res!191159 (not (contains!2244 (getCurrentListMap!1708 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!345423 () Bool)

(declare-fun res!191158 () Bool)

(assert (=> b!345423 (=> (not res!191158) (not e!211725))))

(declare-datatypes ((List!5067 0))(
  ( (Nil!5064) (Cons!5063 (h!5919 (_ BitVec 64)) (t!10195 List!5067)) )
))
(declare-fun arrayNoDuplicates!0 (array!18393 (_ BitVec 32) List!5067) Bool)

(assert (=> b!345423 (= res!191158 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5064))))

(declare-fun mapNonEmpty!12573 () Bool)

(declare-fun tp!25952 () Bool)

(declare-fun e!211723 () Bool)

(assert (=> mapNonEmpty!12573 (= mapRes!12573 (and tp!25952 e!211723))))

(declare-fun mapValue!12573 () ValueCell!3366)

(declare-fun mapRest!12573 () (Array (_ BitVec 32) ValueCell!3366))

(declare-fun mapKey!12573 () (_ BitVec 32))

(assert (=> mapNonEmpty!12573 (= (arr!8709 _values!1525) (store mapRest!12573 mapKey!12573 mapValue!12573))))

(declare-fun b!345424 () Bool)

(declare-datatypes ((SeekEntryResult!3353 0))(
  ( (MissingZero!3353 (index!15591 (_ BitVec 32))) (Found!3353 (index!15592 (_ BitVec 32))) (Intermediate!3353 (undefined!4165 Bool) (index!15593 (_ BitVec 32)) (x!34418 (_ BitVec 32))) (Undefined!3353) (MissingVacant!3353 (index!15594 (_ BitVec 32))) )
))
(declare-fun lt!162927 () SeekEntryResult!3353)

(get-info :version)

(assert (=> b!345424 (= e!211725 (and ((_ is Found!3353) lt!162927) (or (bvslt (index!15592 lt!162927) #b00000000000000000000000000000000) (bvsge (index!15592 lt!162927) (size!9060 _keys!1895)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18393 (_ BitVec 32)) SeekEntryResult!3353)

(assert (=> b!345424 (= lt!162927 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!345425 () Bool)

(declare-fun res!191154 () Bool)

(assert (=> b!345425 (=> (not res!191154) (not e!211725))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!345425 (= res!191154 (validKeyInArray!0 k0!1348))))

(declare-fun b!345426 () Bool)

(assert (=> b!345426 (= e!211723 tp_is_empty!7419)))

(assert (= (and start!34590 res!191157) b!345420))

(assert (= (and b!345420 res!191155) b!345419))

(assert (= (and b!345419 res!191156) b!345423))

(assert (= (and b!345423 res!191158) b!345425))

(assert (= (and b!345425 res!191154) b!345422))

(assert (= (and b!345422 res!191159) b!345424))

(assert (= (and b!345421 condMapEmpty!12573) mapIsEmpty!12573))

(assert (= (and b!345421 (not condMapEmpty!12573)) mapNonEmpty!12573))

(assert (= (and mapNonEmpty!12573 ((_ is ValueCellFull!3366) mapValue!12573)) b!345426))

(assert (= (and b!345421 ((_ is ValueCellFull!3366) mapDefault!12573)) b!345418))

(assert (= start!34590 b!345421))

(declare-fun m!346785 () Bool)

(assert (=> mapNonEmpty!12573 m!346785))

(declare-fun m!346787 () Bool)

(assert (=> b!345422 m!346787))

(assert (=> b!345422 m!346787))

(declare-fun m!346789 () Bool)

(assert (=> b!345422 m!346789))

(declare-fun m!346791 () Bool)

(assert (=> b!345419 m!346791))

(declare-fun m!346793 () Bool)

(assert (=> b!345425 m!346793))

(declare-fun m!346795 () Bool)

(assert (=> start!34590 m!346795))

(declare-fun m!346797 () Bool)

(assert (=> start!34590 m!346797))

(declare-fun m!346799 () Bool)

(assert (=> start!34590 m!346799))

(declare-fun m!346801 () Bool)

(assert (=> b!345423 m!346801))

(declare-fun m!346803 () Bool)

(assert (=> b!345424 m!346803))

(check-sat (not start!34590) (not b!345422) (not b!345423) (not b!345425) b_and!14697 (not mapNonEmpty!12573) (not b!345424) (not b!345419) tp_is_empty!7419 (not b_next!7467))
(check-sat b_and!14697 (not b_next!7467))
(get-model)

(declare-fun b!345462 () Bool)

(declare-fun e!211748 () Bool)

(declare-fun e!211749 () Bool)

(assert (=> b!345462 (= e!211748 e!211749)))

(declare-fun lt!162939 () (_ BitVec 64))

(assert (=> b!345462 (= lt!162939 (select (arr!8708 _keys!1895) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10732 0))(
  ( (Unit!10733) )
))
(declare-fun lt!162937 () Unit!10732)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18393 (_ BitVec 64) (_ BitVec 32)) Unit!10732)

(assert (=> b!345462 (= lt!162937 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!162939 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!18393 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!345462 (arrayContainsKey!0 _keys!1895 lt!162939 #b00000000000000000000000000000000)))

(declare-fun lt!162938 () Unit!10732)

(assert (=> b!345462 (= lt!162938 lt!162937)))

(declare-fun res!191182 () Bool)

(assert (=> b!345462 (= res!191182 (= (seekEntryOrOpen!0 (select (arr!8708 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3353 #b00000000000000000000000000000000)))))

(assert (=> b!345462 (=> (not res!191182) (not e!211749))))

(declare-fun b!345463 () Bool)

(declare-fun e!211747 () Bool)

(assert (=> b!345463 (= e!211747 e!211748)))

(declare-fun c!52952 () Bool)

(assert (=> b!345463 (= c!52952 (validKeyInArray!0 (select (arr!8708 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!345464 () Bool)

(declare-fun call!26726 () Bool)

(assert (=> b!345464 (= e!211749 call!26726)))

(declare-fun b!345465 () Bool)

(assert (=> b!345465 (= e!211748 call!26726)))

(declare-fun d!71029 () Bool)

(declare-fun res!191183 () Bool)

(assert (=> d!71029 (=> res!191183 e!211747)))

(assert (=> d!71029 (= res!191183 (bvsge #b00000000000000000000000000000000 (size!9060 _keys!1895)))))

(assert (=> d!71029 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!211747)))

(declare-fun bm!26723 () Bool)

(assert (=> bm!26723 (= call!26726 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(assert (= (and d!71029 (not res!191183)) b!345463))

(assert (= (and b!345463 c!52952) b!345462))

(assert (= (and b!345463 (not c!52952)) b!345465))

(assert (= (and b!345462 res!191182) b!345464))

(assert (= (or b!345464 b!345465) bm!26723))

(declare-fun m!346825 () Bool)

(assert (=> b!345462 m!346825))

(declare-fun m!346827 () Bool)

(assert (=> b!345462 m!346827))

(declare-fun m!346829 () Bool)

(assert (=> b!345462 m!346829))

(assert (=> b!345462 m!346825))

(declare-fun m!346831 () Bool)

(assert (=> b!345462 m!346831))

(assert (=> b!345463 m!346825))

(assert (=> b!345463 m!346825))

(declare-fun m!346833 () Bool)

(assert (=> b!345463 m!346833))

(declare-fun m!346835 () Bool)

(assert (=> bm!26723 m!346835))

(assert (=> b!345419 d!71029))

(declare-fun b!345476 () Bool)

(declare-fun e!211761 () Bool)

(declare-fun call!26729 () Bool)

(assert (=> b!345476 (= e!211761 call!26729)))

(declare-fun b!345477 () Bool)

(assert (=> b!345477 (= e!211761 call!26729)))

(declare-fun b!345478 () Bool)

(declare-fun e!211759 () Bool)

(declare-fun e!211758 () Bool)

(assert (=> b!345478 (= e!211759 e!211758)))

(declare-fun res!191190 () Bool)

(assert (=> b!345478 (=> (not res!191190) (not e!211758))))

(declare-fun e!211760 () Bool)

(assert (=> b!345478 (= res!191190 (not e!211760))))

(declare-fun res!191192 () Bool)

(assert (=> b!345478 (=> (not res!191192) (not e!211760))))

(assert (=> b!345478 (= res!191192 (validKeyInArray!0 (select (arr!8708 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!345479 () Bool)

(assert (=> b!345479 (= e!211758 e!211761)))

(declare-fun c!52955 () Bool)

(assert (=> b!345479 (= c!52955 (validKeyInArray!0 (select (arr!8708 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!345480 () Bool)

(declare-fun contains!2245 (List!5067 (_ BitVec 64)) Bool)

(assert (=> b!345480 (= e!211760 (contains!2245 Nil!5064 (select (arr!8708 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun bm!26726 () Bool)

(assert (=> bm!26726 (= call!26729 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!52955 (Cons!5063 (select (arr!8708 _keys!1895) #b00000000000000000000000000000000) Nil!5064) Nil!5064)))))

(declare-fun d!71031 () Bool)

(declare-fun res!191191 () Bool)

(assert (=> d!71031 (=> res!191191 e!211759)))

(assert (=> d!71031 (= res!191191 (bvsge #b00000000000000000000000000000000 (size!9060 _keys!1895)))))

(assert (=> d!71031 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5064) e!211759)))

(assert (= (and d!71031 (not res!191191)) b!345478))

(assert (= (and b!345478 res!191192) b!345480))

(assert (= (and b!345478 res!191190) b!345479))

(assert (= (and b!345479 c!52955) b!345476))

(assert (= (and b!345479 (not c!52955)) b!345477))

(assert (= (or b!345476 b!345477) bm!26726))

(assert (=> b!345478 m!346825))

(assert (=> b!345478 m!346825))

(assert (=> b!345478 m!346833))

(assert (=> b!345479 m!346825))

(assert (=> b!345479 m!346825))

(assert (=> b!345479 m!346833))

(assert (=> b!345480 m!346825))

(assert (=> b!345480 m!346825))

(declare-fun m!346837 () Bool)

(assert (=> b!345480 m!346837))

(assert (=> bm!26726 m!346825))

(declare-fun m!346839 () Bool)

(assert (=> bm!26726 m!346839))

(assert (=> b!345423 d!71031))

(declare-fun b!345494 () Bool)

(declare-fun c!52962 () Bool)

(declare-fun lt!162947 () (_ BitVec 64))

(assert (=> b!345494 (= c!52962 (= lt!162947 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!211769 () SeekEntryResult!3353)

(declare-fun e!211770 () SeekEntryResult!3353)

(assert (=> b!345494 (= e!211769 e!211770)))

(declare-fun b!345495 () Bool)

(declare-fun e!211768 () SeekEntryResult!3353)

(assert (=> b!345495 (= e!211768 Undefined!3353)))

(declare-fun b!345496 () Bool)

(declare-fun lt!162948 () SeekEntryResult!3353)

(assert (=> b!345496 (= e!211769 (Found!3353 (index!15593 lt!162948)))))

(declare-fun b!345497 () Bool)

(assert (=> b!345497 (= e!211768 e!211769)))

(assert (=> b!345497 (= lt!162947 (select (arr!8708 _keys!1895) (index!15593 lt!162948)))))

(declare-fun c!52963 () Bool)

(assert (=> b!345497 (= c!52963 (= lt!162947 k0!1348))))

(declare-fun b!345498 () Bool)

(assert (=> b!345498 (= e!211770 (MissingZero!3353 (index!15593 lt!162948)))))

(declare-fun d!71033 () Bool)

(declare-fun lt!162946 () SeekEntryResult!3353)

(assert (=> d!71033 (and (or ((_ is Undefined!3353) lt!162946) (not ((_ is Found!3353) lt!162946)) (and (bvsge (index!15592 lt!162946) #b00000000000000000000000000000000) (bvslt (index!15592 lt!162946) (size!9060 _keys!1895)))) (or ((_ is Undefined!3353) lt!162946) ((_ is Found!3353) lt!162946) (not ((_ is MissingZero!3353) lt!162946)) (and (bvsge (index!15591 lt!162946) #b00000000000000000000000000000000) (bvslt (index!15591 lt!162946) (size!9060 _keys!1895)))) (or ((_ is Undefined!3353) lt!162946) ((_ is Found!3353) lt!162946) ((_ is MissingZero!3353) lt!162946) (not ((_ is MissingVacant!3353) lt!162946)) (and (bvsge (index!15594 lt!162946) #b00000000000000000000000000000000) (bvslt (index!15594 lt!162946) (size!9060 _keys!1895)))) (or ((_ is Undefined!3353) lt!162946) (ite ((_ is Found!3353) lt!162946) (= (select (arr!8708 _keys!1895) (index!15592 lt!162946)) k0!1348) (ite ((_ is MissingZero!3353) lt!162946) (= (select (arr!8708 _keys!1895) (index!15591 lt!162946)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3353) lt!162946) (= (select (arr!8708 _keys!1895) (index!15594 lt!162946)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!71033 (= lt!162946 e!211768)))

(declare-fun c!52964 () Bool)

(assert (=> d!71033 (= c!52964 (and ((_ is Intermediate!3353) lt!162948) (undefined!4165 lt!162948)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18393 (_ BitVec 32)) SeekEntryResult!3353)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!71033 (= lt!162948 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!71033 (validMask!0 mask!2385)))

(assert (=> d!71033 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!162946)))

(declare-fun b!345493 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18393 (_ BitVec 32)) SeekEntryResult!3353)

(assert (=> b!345493 (= e!211770 (seekKeyOrZeroReturnVacant!0 (x!34418 lt!162948) (index!15593 lt!162948) (index!15593 lt!162948) k0!1348 _keys!1895 mask!2385))))

(assert (= (and d!71033 c!52964) b!345495))

(assert (= (and d!71033 (not c!52964)) b!345497))

(assert (= (and b!345497 c!52963) b!345496))

(assert (= (and b!345497 (not c!52963)) b!345494))

(assert (= (and b!345494 c!52962) b!345498))

(assert (= (and b!345494 (not c!52962)) b!345493))

(declare-fun m!346841 () Bool)

(assert (=> b!345497 m!346841))

(declare-fun m!346843 () Bool)

(assert (=> d!71033 m!346843))

(declare-fun m!346845 () Bool)

(assert (=> d!71033 m!346845))

(declare-fun m!346847 () Bool)

(assert (=> d!71033 m!346847))

(assert (=> d!71033 m!346847))

(declare-fun m!346849 () Bool)

(assert (=> d!71033 m!346849))

(declare-fun m!346851 () Bool)

(assert (=> d!71033 m!346851))

(assert (=> d!71033 m!346795))

(declare-fun m!346853 () Bool)

(assert (=> b!345493 m!346853))

(assert (=> b!345424 d!71033))

(declare-fun d!71035 () Bool)

(assert (=> d!71035 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!345425 d!71035))

(declare-fun d!71037 () Bool)

(declare-fun e!211776 () Bool)

(assert (=> d!71037 e!211776))

(declare-fun res!191195 () Bool)

(assert (=> d!71037 (=> res!191195 e!211776)))

(declare-fun lt!162959 () Bool)

(assert (=> d!71037 (= res!191195 (not lt!162959))))

(declare-fun lt!162957 () Bool)

(assert (=> d!71037 (= lt!162959 lt!162957)))

(declare-fun lt!162958 () Unit!10732)

(declare-fun e!211775 () Unit!10732)

(assert (=> d!71037 (= lt!162958 e!211775)))

(declare-fun c!52967 () Bool)

(assert (=> d!71037 (= c!52967 lt!162957)))

(declare-fun containsKey!331 (List!5066 (_ BitVec 64)) Bool)

(assert (=> d!71037 (= lt!162957 (containsKey!331 (toList!2188 (getCurrentListMap!1708 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!71037 (= (contains!2244 (getCurrentListMap!1708 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!162959)))

(declare-fun b!345505 () Bool)

(declare-fun lt!162960 () Unit!10732)

(assert (=> b!345505 (= e!211775 lt!162960)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!280 (List!5066 (_ BitVec 64)) Unit!10732)

(assert (=> b!345505 (= lt!162960 (lemmaContainsKeyImpliesGetValueByKeyDefined!280 (toList!2188 (getCurrentListMap!1708 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!345 0))(
  ( (Some!344 (v!5930 V!10869)) (None!343) )
))
(declare-fun isDefined!281 (Option!345) Bool)

(declare-fun getValueByKey!339 (List!5066 (_ BitVec 64)) Option!345)

(assert (=> b!345505 (isDefined!281 (getValueByKey!339 (toList!2188 (getCurrentListMap!1708 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!345506 () Bool)

(declare-fun Unit!10734 () Unit!10732)

(assert (=> b!345506 (= e!211775 Unit!10734)))

(declare-fun b!345507 () Bool)

(assert (=> b!345507 (= e!211776 (isDefined!281 (getValueByKey!339 (toList!2188 (getCurrentListMap!1708 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!71037 c!52967) b!345505))

(assert (= (and d!71037 (not c!52967)) b!345506))

(assert (= (and d!71037 (not res!191195)) b!345507))

(declare-fun m!346855 () Bool)

(assert (=> d!71037 m!346855))

(declare-fun m!346857 () Bool)

(assert (=> b!345505 m!346857))

(declare-fun m!346859 () Bool)

(assert (=> b!345505 m!346859))

(assert (=> b!345505 m!346859))

(declare-fun m!346861 () Bool)

(assert (=> b!345505 m!346861))

(assert (=> b!345507 m!346859))

(assert (=> b!345507 m!346859))

(assert (=> b!345507 m!346861))

(assert (=> b!345422 d!71037))

(declare-fun e!211813 () Bool)

(declare-fun b!345550 () Bool)

(declare-fun lt!163024 () ListLongMap!4345)

(declare-fun apply!282 (ListLongMap!4345 (_ BitVec 64)) V!10869)

(declare-fun get!4701 (ValueCell!3366 V!10869) V!10869)

(declare-fun dynLambda!620 (Int (_ BitVec 64)) V!10869)

(assert (=> b!345550 (= e!211813 (= (apply!282 lt!163024 (select (arr!8708 _keys!1895) #b00000000000000000000000000000000)) (get!4701 (select (arr!8709 _values!1525) #b00000000000000000000000000000000) (dynLambda!620 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!345550 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9061 _values!1525)))))

(assert (=> b!345550 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9060 _keys!1895)))))

(declare-fun b!345551 () Bool)

(declare-fun e!211803 () ListLongMap!4345)

(declare-fun call!26745 () ListLongMap!4345)

(declare-fun +!726 (ListLongMap!4345 tuple2!5418) ListLongMap!4345)

(assert (=> b!345551 (= e!211803 (+!726 call!26745 (tuple2!5419 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(declare-fun b!345552 () Bool)

(declare-fun e!211809 () Unit!10732)

(declare-fun lt!163022 () Unit!10732)

(assert (=> b!345552 (= e!211809 lt!163022)))

(declare-fun lt!163005 () ListLongMap!4345)

(declare-fun getCurrentListMapNoExtraKeys!601 (array!18393 array!18395 (_ BitVec 32) (_ BitVec 32) V!10869 V!10869 (_ BitVec 32) Int) ListLongMap!4345)

(assert (=> b!345552 (= lt!163005 (getCurrentListMapNoExtraKeys!601 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!163006 () (_ BitVec 64))

(assert (=> b!345552 (= lt!163006 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!163013 () (_ BitVec 64))

(assert (=> b!345552 (= lt!163013 (select (arr!8708 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!163011 () Unit!10732)

(declare-fun addStillContains!258 (ListLongMap!4345 (_ BitVec 64) V!10869 (_ BitVec 64)) Unit!10732)

(assert (=> b!345552 (= lt!163011 (addStillContains!258 lt!163005 lt!163006 zeroValue!1467 lt!163013))))

(assert (=> b!345552 (contains!2244 (+!726 lt!163005 (tuple2!5419 lt!163006 zeroValue!1467)) lt!163013)))

(declare-fun lt!163016 () Unit!10732)

(assert (=> b!345552 (= lt!163016 lt!163011)))

(declare-fun lt!163012 () ListLongMap!4345)

(assert (=> b!345552 (= lt!163012 (getCurrentListMapNoExtraKeys!601 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!163026 () (_ BitVec 64))

(assert (=> b!345552 (= lt!163026 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!163009 () (_ BitVec 64))

(assert (=> b!345552 (= lt!163009 (select (arr!8708 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!163019 () Unit!10732)

(declare-fun addApplyDifferent!258 (ListLongMap!4345 (_ BitVec 64) V!10869 (_ BitVec 64)) Unit!10732)

(assert (=> b!345552 (= lt!163019 (addApplyDifferent!258 lt!163012 lt!163026 minValue!1467 lt!163009))))

(assert (=> b!345552 (= (apply!282 (+!726 lt!163012 (tuple2!5419 lt!163026 minValue!1467)) lt!163009) (apply!282 lt!163012 lt!163009))))

(declare-fun lt!163007 () Unit!10732)

(assert (=> b!345552 (= lt!163007 lt!163019)))

(declare-fun lt!163025 () ListLongMap!4345)

(assert (=> b!345552 (= lt!163025 (getCurrentListMapNoExtraKeys!601 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!163020 () (_ BitVec 64))

(assert (=> b!345552 (= lt!163020 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!163010 () (_ BitVec 64))

(assert (=> b!345552 (= lt!163010 (select (arr!8708 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!163023 () Unit!10732)

(assert (=> b!345552 (= lt!163023 (addApplyDifferent!258 lt!163025 lt!163020 zeroValue!1467 lt!163010))))

(assert (=> b!345552 (= (apply!282 (+!726 lt!163025 (tuple2!5419 lt!163020 zeroValue!1467)) lt!163010) (apply!282 lt!163025 lt!163010))))

(declare-fun lt!163015 () Unit!10732)

(assert (=> b!345552 (= lt!163015 lt!163023)))

(declare-fun lt!163021 () ListLongMap!4345)

(assert (=> b!345552 (= lt!163021 (getCurrentListMapNoExtraKeys!601 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!163014 () (_ BitVec 64))

(assert (=> b!345552 (= lt!163014 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!163008 () (_ BitVec 64))

(assert (=> b!345552 (= lt!163008 (select (arr!8708 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!345552 (= lt!163022 (addApplyDifferent!258 lt!163021 lt!163014 minValue!1467 lt!163008))))

(assert (=> b!345552 (= (apply!282 (+!726 lt!163021 (tuple2!5419 lt!163014 minValue!1467)) lt!163008) (apply!282 lt!163021 lt!163008))))

(declare-fun b!345553 () Bool)

(declare-fun e!211810 () Bool)

(declare-fun e!211814 () Bool)

(assert (=> b!345553 (= e!211810 e!211814)))

(declare-fun res!191215 () Bool)

(declare-fun call!26747 () Bool)

(assert (=> b!345553 (= res!191215 call!26747)))

(assert (=> b!345553 (=> (not res!191215) (not e!211814))))

(declare-fun b!345554 () Bool)

(declare-fun e!211804 () Bool)

(assert (=> b!345554 (= e!211804 e!211813)))

(declare-fun res!191219 () Bool)

(assert (=> b!345554 (=> (not res!191219) (not e!211813))))

(assert (=> b!345554 (= res!191219 (contains!2244 lt!163024 (select (arr!8708 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!345554 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9060 _keys!1895)))))

(declare-fun b!345555 () Bool)

(declare-fun e!211811 () ListLongMap!4345)

(declare-fun call!26749 () ListLongMap!4345)

(assert (=> b!345555 (= e!211811 call!26749)))

(declare-fun b!345556 () Bool)

(declare-fun e!211815 () Bool)

(declare-fun e!211808 () Bool)

(assert (=> b!345556 (= e!211815 e!211808)))

(declare-fun res!191218 () Bool)

(declare-fun call!26750 () Bool)

(assert (=> b!345556 (= res!191218 call!26750)))

(assert (=> b!345556 (=> (not res!191218) (not e!211808))))

(declare-fun bm!26741 () Bool)

(declare-fun call!26746 () ListLongMap!4345)

(assert (=> bm!26741 (= call!26746 (getCurrentListMapNoExtraKeys!601 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun bm!26742 () Bool)

(assert (=> bm!26742 (= call!26747 (contains!2244 lt!163024 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!345557 () Bool)

(declare-fun res!191220 () Bool)

(declare-fun e!211807 () Bool)

(assert (=> b!345557 (=> (not res!191220) (not e!211807))))

(assert (=> b!345557 (= res!191220 e!211810)))

(declare-fun c!52980 () Bool)

(assert (=> b!345557 (= c!52980 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!345558 () Bool)

(assert (=> b!345558 (= e!211808 (= (apply!282 lt!163024 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun b!345559 () Bool)

(declare-fun e!211806 () Bool)

(assert (=> b!345559 (= e!211806 (validKeyInArray!0 (select (arr!8708 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!345560 () Bool)

(assert (=> b!345560 (= e!211814 (= (apply!282 lt!163024 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(declare-fun call!26748 () ListLongMap!4345)

(declare-fun bm!26744 () Bool)

(declare-fun c!52982 () Bool)

(declare-fun c!52985 () Bool)

(declare-fun call!26744 () ListLongMap!4345)

(assert (=> bm!26744 (= call!26745 (+!726 (ite c!52985 call!26746 (ite c!52982 call!26744 call!26748)) (ite (or c!52985 c!52982) (tuple2!5419 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5419 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun bm!26745 () Bool)

(assert (=> bm!26745 (= call!26749 call!26745)))

(declare-fun b!345561 () Bool)

(declare-fun c!52981 () Bool)

(assert (=> b!345561 (= c!52981 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!211805 () ListLongMap!4345)

(assert (=> b!345561 (= e!211811 e!211805)))

(declare-fun b!345562 () Bool)

(declare-fun res!191216 () Bool)

(assert (=> b!345562 (=> (not res!191216) (not e!211807))))

(assert (=> b!345562 (= res!191216 e!211804)))

(declare-fun res!191222 () Bool)

(assert (=> b!345562 (=> res!191222 e!211804)))

(declare-fun e!211812 () Bool)

(assert (=> b!345562 (= res!191222 (not e!211812))))

(declare-fun res!191221 () Bool)

(assert (=> b!345562 (=> (not res!191221) (not e!211812))))

(assert (=> b!345562 (= res!191221 (bvslt #b00000000000000000000000000000000 (size!9060 _keys!1895)))))

(declare-fun b!345563 () Bool)

(assert (=> b!345563 (= e!211805 call!26748)))

(declare-fun d!71039 () Bool)

(assert (=> d!71039 e!211807))

(declare-fun res!191214 () Bool)

(assert (=> d!71039 (=> (not res!191214) (not e!211807))))

(assert (=> d!71039 (= res!191214 (or (bvsge #b00000000000000000000000000000000 (size!9060 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9060 _keys!1895)))))))

(declare-fun lt!163018 () ListLongMap!4345)

(assert (=> d!71039 (= lt!163024 lt!163018)))

(declare-fun lt!163017 () Unit!10732)

(assert (=> d!71039 (= lt!163017 e!211809)))

(declare-fun c!52983 () Bool)

(assert (=> d!71039 (= c!52983 e!211806)))

(declare-fun res!191217 () Bool)

(assert (=> d!71039 (=> (not res!191217) (not e!211806))))

(assert (=> d!71039 (= res!191217 (bvslt #b00000000000000000000000000000000 (size!9060 _keys!1895)))))

(assert (=> d!71039 (= lt!163018 e!211803)))

(assert (=> d!71039 (= c!52985 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!71039 (validMask!0 mask!2385)))

(assert (=> d!71039 (= (getCurrentListMap!1708 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!163024)))

(declare-fun bm!26743 () Bool)

(assert (=> bm!26743 (= call!26750 (contains!2244 lt!163024 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!345564 () Bool)

(assert (=> b!345564 (= e!211812 (validKeyInArray!0 (select (arr!8708 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!345565 () Bool)

(assert (=> b!345565 (= e!211807 e!211815)))

(declare-fun c!52984 () Bool)

(assert (=> b!345565 (= c!52984 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!345566 () Bool)

(declare-fun Unit!10735 () Unit!10732)

(assert (=> b!345566 (= e!211809 Unit!10735)))

(declare-fun b!345567 () Bool)

(assert (=> b!345567 (= e!211815 (not call!26750))))

(declare-fun b!345568 () Bool)

(assert (=> b!345568 (= e!211810 (not call!26747))))

(declare-fun bm!26746 () Bool)

(assert (=> bm!26746 (= call!26744 call!26746)))

(declare-fun b!345569 () Bool)

(assert (=> b!345569 (= e!211803 e!211811)))

(assert (=> b!345569 (= c!52982 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!26747 () Bool)

(assert (=> bm!26747 (= call!26748 call!26744)))

(declare-fun b!345570 () Bool)

(assert (=> b!345570 (= e!211805 call!26749)))

(assert (= (and d!71039 c!52985) b!345551))

(assert (= (and d!71039 (not c!52985)) b!345569))

(assert (= (and b!345569 c!52982) b!345555))

(assert (= (and b!345569 (not c!52982)) b!345561))

(assert (= (and b!345561 c!52981) b!345570))

(assert (= (and b!345561 (not c!52981)) b!345563))

(assert (= (or b!345570 b!345563) bm!26747))

(assert (= (or b!345555 bm!26747) bm!26746))

(assert (= (or b!345555 b!345570) bm!26745))

(assert (= (or b!345551 bm!26746) bm!26741))

(assert (= (or b!345551 bm!26745) bm!26744))

(assert (= (and d!71039 res!191217) b!345559))

(assert (= (and d!71039 c!52983) b!345552))

(assert (= (and d!71039 (not c!52983)) b!345566))

(assert (= (and d!71039 res!191214) b!345562))

(assert (= (and b!345562 res!191221) b!345564))

(assert (= (and b!345562 (not res!191222)) b!345554))

(assert (= (and b!345554 res!191219) b!345550))

(assert (= (and b!345562 res!191216) b!345557))

(assert (= (and b!345557 c!52980) b!345553))

(assert (= (and b!345557 (not c!52980)) b!345568))

(assert (= (and b!345553 res!191215) b!345560))

(assert (= (or b!345553 b!345568) bm!26742))

(assert (= (and b!345557 res!191220) b!345565))

(assert (= (and b!345565 c!52984) b!345556))

(assert (= (and b!345565 (not c!52984)) b!345567))

(assert (= (and b!345556 res!191218) b!345558))

(assert (= (or b!345556 b!345567) bm!26743))

(declare-fun b_lambda!8497 () Bool)

(assert (=> (not b_lambda!8497) (not b!345550)))

(declare-fun t!10197 () Bool)

(declare-fun tb!3087 () Bool)

(assert (=> (and start!34590 (= defaultEntry!1528 defaultEntry!1528) t!10197) tb!3087))

(declare-fun result!5575 () Bool)

(assert (=> tb!3087 (= result!5575 tp_is_empty!7419)))

(assert (=> b!345550 t!10197))

(declare-fun b_and!14701 () Bool)

(assert (= b_and!14697 (and (=> t!10197 result!5575) b_and!14701)))

(declare-fun m!346863 () Bool)

(assert (=> b!345558 m!346863))

(declare-fun m!346865 () Bool)

(assert (=> bm!26742 m!346865))

(assert (=> b!345554 m!346825))

(assert (=> b!345554 m!346825))

(declare-fun m!346867 () Bool)

(assert (=> b!345554 m!346867))

(assert (=> b!345550 m!346825))

(declare-fun m!346869 () Bool)

(assert (=> b!345550 m!346869))

(declare-fun m!346871 () Bool)

(assert (=> b!345550 m!346871))

(declare-fun m!346873 () Bool)

(assert (=> b!345550 m!346873))

(assert (=> b!345550 m!346825))

(declare-fun m!346875 () Bool)

(assert (=> b!345550 m!346875))

(assert (=> b!345550 m!346869))

(assert (=> b!345550 m!346871))

(assert (=> d!71039 m!346795))

(declare-fun m!346877 () Bool)

(assert (=> bm!26743 m!346877))

(assert (=> b!345559 m!346825))

(assert (=> b!345559 m!346825))

(assert (=> b!345559 m!346833))

(declare-fun m!346879 () Bool)

(assert (=> b!345552 m!346879))

(declare-fun m!346881 () Bool)

(assert (=> b!345552 m!346881))

(declare-fun m!346883 () Bool)

(assert (=> b!345552 m!346883))

(declare-fun m!346885 () Bool)

(assert (=> b!345552 m!346885))

(declare-fun m!346887 () Bool)

(assert (=> b!345552 m!346887))

(declare-fun m!346889 () Bool)

(assert (=> b!345552 m!346889))

(declare-fun m!346891 () Bool)

(assert (=> b!345552 m!346891))

(declare-fun m!346893 () Bool)

(assert (=> b!345552 m!346893))

(declare-fun m!346895 () Bool)

(assert (=> b!345552 m!346895))

(declare-fun m!346897 () Bool)

(assert (=> b!345552 m!346897))

(assert (=> b!345552 m!346883))

(declare-fun m!346899 () Bool)

(assert (=> b!345552 m!346899))

(declare-fun m!346901 () Bool)

(assert (=> b!345552 m!346901))

(declare-fun m!346903 () Bool)

(assert (=> b!345552 m!346903))

(declare-fun m!346905 () Bool)

(assert (=> b!345552 m!346905))

(assert (=> b!345552 m!346893))

(assert (=> b!345552 m!346825))

(declare-fun m!346907 () Bool)

(assert (=> b!345552 m!346907))

(assert (=> b!345552 m!346889))

(assert (=> b!345552 m!346885))

(declare-fun m!346909 () Bool)

(assert (=> b!345552 m!346909))

(declare-fun m!346911 () Bool)

(assert (=> b!345560 m!346911))

(declare-fun m!346913 () Bool)

(assert (=> bm!26744 m!346913))

(declare-fun m!346915 () Bool)

(assert (=> b!345551 m!346915))

(assert (=> bm!26741 m!346901))

(assert (=> b!345564 m!346825))

(assert (=> b!345564 m!346825))

(assert (=> b!345564 m!346833))

(assert (=> b!345422 d!71039))

(declare-fun d!71041 () Bool)

(assert (=> d!71041 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!34590 d!71041))

(declare-fun d!71043 () Bool)

(assert (=> d!71043 (= (array_inv!6440 _values!1525) (bvsge (size!9061 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!34590 d!71043))

(declare-fun d!71045 () Bool)

(assert (=> d!71045 (= (array_inv!6441 _keys!1895) (bvsge (size!9060 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!34590 d!71045))

(declare-fun b!345580 () Bool)

(declare-fun e!211820 () Bool)

(assert (=> b!345580 (= e!211820 tp_is_empty!7419)))

(declare-fun b!345579 () Bool)

(declare-fun e!211821 () Bool)

(assert (=> b!345579 (= e!211821 tp_is_empty!7419)))

(declare-fun mapIsEmpty!12579 () Bool)

(declare-fun mapRes!12579 () Bool)

(assert (=> mapIsEmpty!12579 mapRes!12579))

(declare-fun condMapEmpty!12579 () Bool)

(declare-fun mapDefault!12579 () ValueCell!3366)

(assert (=> mapNonEmpty!12573 (= condMapEmpty!12579 (= mapRest!12573 ((as const (Array (_ BitVec 32) ValueCell!3366)) mapDefault!12579)))))

(assert (=> mapNonEmpty!12573 (= tp!25952 (and e!211820 mapRes!12579))))

(declare-fun mapNonEmpty!12579 () Bool)

(declare-fun tp!25962 () Bool)

(assert (=> mapNonEmpty!12579 (= mapRes!12579 (and tp!25962 e!211821))))

(declare-fun mapValue!12579 () ValueCell!3366)

(declare-fun mapKey!12579 () (_ BitVec 32))

(declare-fun mapRest!12579 () (Array (_ BitVec 32) ValueCell!3366))

(assert (=> mapNonEmpty!12579 (= mapRest!12573 (store mapRest!12579 mapKey!12579 mapValue!12579))))

(assert (= (and mapNonEmpty!12573 condMapEmpty!12579) mapIsEmpty!12579))

(assert (= (and mapNonEmpty!12573 (not condMapEmpty!12579)) mapNonEmpty!12579))

(assert (= (and mapNonEmpty!12579 ((_ is ValueCellFull!3366) mapValue!12579)) b!345579))

(assert (= (and mapNonEmpty!12573 ((_ is ValueCellFull!3366) mapDefault!12579)) b!345580))

(declare-fun m!346917 () Bool)

(assert (=> mapNonEmpty!12579 m!346917))

(declare-fun b_lambda!8499 () Bool)

(assert (= b_lambda!8497 (or (and start!34590 b_free!7467) b_lambda!8499)))

(check-sat (not bm!26743) (not bm!26723) (not b!345564) (not bm!26744) (not b!345559) (not mapNonEmpty!12579) (not b!345462) (not b!345560) (not b!345551) b_and!14701 (not b_lambda!8499) (not b!345558) (not bm!26742) tp_is_empty!7419 (not b_next!7467) (not bm!26726) (not b!345463) (not b!345552) (not d!71039) (not b!345478) (not b!345507) (not d!71033) (not b!345550) (not b!345505) (not bm!26741) (not d!71037) (not b!345554) (not b!345480) (not b!345479) (not b!345493))
(check-sat b_and!14701 (not b_next!7467))
