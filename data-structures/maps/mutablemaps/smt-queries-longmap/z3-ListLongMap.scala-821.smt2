; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20024 () Bool)

(assert start!20024)

(declare-fun b!196017 () Bool)

(declare-fun e!129051 () Bool)

(declare-fun tp_is_empty!4539 () Bool)

(assert (=> b!196017 (= e!129051 tp_is_empty!4539)))

(declare-fun mapNonEmpty!7874 () Bool)

(declare-fun mapRes!7874 () Bool)

(declare-fun tp!17162 () Bool)

(assert (=> mapNonEmpty!7874 (= mapRes!7874 (and tp!17162 e!129051))))

(declare-fun mapKey!7874 () (_ BitVec 32))

(declare-datatypes ((V!5699 0))(
  ( (V!5700 (val!2314 Int)) )
))
(declare-datatypes ((ValueCell!1926 0))(
  ( (ValueCellFull!1926 (v!4279 V!5699)) (EmptyCell!1926) )
))
(declare-datatypes ((array!8338 0))(
  ( (array!8339 (arr!3920 (Array (_ BitVec 32) ValueCell!1926)) (size!4245 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8338)

(declare-fun mapValue!7874 () ValueCell!1926)

(declare-fun mapRest!7874 () (Array (_ BitVec 32) ValueCell!1926))

(assert (=> mapNonEmpty!7874 (= (arr!3920 _values!649) (store mapRest!7874 mapKey!7874 mapValue!7874))))

(declare-fun mapIsEmpty!7874 () Bool)

(assert (=> mapIsEmpty!7874 mapRes!7874))

(declare-fun b!196018 () Bool)

(declare-fun e!129048 () Bool)

(assert (=> b!196018 (= e!129048 tp_is_empty!4539)))

(declare-fun b!196019 () Bool)

(declare-fun e!129052 () Bool)

(assert (=> b!196019 (= e!129052 (and e!129048 mapRes!7874))))

(declare-fun condMapEmpty!7874 () Bool)

(declare-fun mapDefault!7874 () ValueCell!1926)

(assert (=> b!196019 (= condMapEmpty!7874 (= (arr!3920 _values!649) ((as const (Array (_ BitVec 32) ValueCell!1926)) mapDefault!7874)))))

(declare-fun b!196020 () Bool)

(declare-fun res!92513 () Bool)

(declare-fun e!129053 () Bool)

(assert (=> b!196020 (=> (not res!92513) (not e!129053))))

(declare-datatypes ((array!8340 0))(
  ( (array!8341 (arr!3921 (Array (_ BitVec 32) (_ BitVec 64))) (size!4246 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8340)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!196020 (= res!92513 (and (= (size!4245 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4246 _keys!825) (size!4245 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!92514 () Bool)

(assert (=> start!20024 (=> (not res!92514) (not e!129053))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20024 (= res!92514 (validMask!0 mask!1149))))

(assert (=> start!20024 e!129053))

(assert (=> start!20024 true))

(declare-fun array_inv!2537 (array!8338) Bool)

(assert (=> start!20024 (and (array_inv!2537 _values!649) e!129052)))

(declare-fun array_inv!2538 (array!8340) Bool)

(assert (=> start!20024 (array_inv!2538 _keys!825)))

(declare-fun b!196021 () Bool)

(declare-fun e!129050 () Bool)

(assert (=> b!196021 (= e!129053 e!129050)))

(declare-fun res!92511 () Bool)

(assert (=> b!196021 (=> res!92511 e!129050)))

(declare-datatypes ((List!2479 0))(
  ( (Nil!2476) (Cons!2475 (h!3117 (_ BitVec 64)) (t!7418 List!2479)) )
))
(declare-fun contains!1386 (List!2479 (_ BitVec 64)) Bool)

(assert (=> b!196021 (= res!92511 (contains!1386 Nil!2476 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!196022 () Bool)

(declare-fun res!92515 () Bool)

(assert (=> b!196022 (=> (not res!92515) (not e!129053))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8340 (_ BitVec 32)) Bool)

(assert (=> b!196022 (= res!92515 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!196023 () Bool)

(declare-fun res!92512 () Bool)

(assert (=> b!196023 (=> (not res!92512) (not e!129053))))

(declare-fun noDuplicate!61 (List!2479) Bool)

(assert (=> b!196023 (= res!92512 (noDuplicate!61 Nil!2476))))

(declare-fun b!196024 () Bool)

(assert (=> b!196024 (= e!129050 (contains!1386 Nil!2476 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!196025 () Bool)

(declare-fun res!92516 () Bool)

(assert (=> b!196025 (=> (not res!92516) (not e!129053))))

(assert (=> b!196025 (= res!92516 (and (bvsle #b00000000000000000000000000000000 (size!4246 _keys!825)) (bvslt (size!4246 _keys!825) #b01111111111111111111111111111111)))))

(assert (= (and start!20024 res!92514) b!196020))

(assert (= (and b!196020 res!92513) b!196022))

(assert (= (and b!196022 res!92515) b!196025))

(assert (= (and b!196025 res!92516) b!196023))

(assert (= (and b!196023 res!92512) b!196021))

(assert (= (and b!196021 (not res!92511)) b!196024))

(assert (= (and b!196019 condMapEmpty!7874) mapIsEmpty!7874))

(assert (= (and b!196019 (not condMapEmpty!7874)) mapNonEmpty!7874))

(get-info :version)

(assert (= (and mapNonEmpty!7874 ((_ is ValueCellFull!1926) mapValue!7874)) b!196017))

(assert (= (and b!196019 ((_ is ValueCellFull!1926) mapDefault!7874)) b!196018))

(assert (= start!20024 b!196019))

(declare-fun m!223437 () Bool)

(assert (=> start!20024 m!223437))

(declare-fun m!223439 () Bool)

(assert (=> start!20024 m!223439))

(declare-fun m!223441 () Bool)

(assert (=> start!20024 m!223441))

(declare-fun m!223443 () Bool)

(assert (=> b!196023 m!223443))

(declare-fun m!223445 () Bool)

(assert (=> mapNonEmpty!7874 m!223445))

(declare-fun m!223447 () Bool)

(assert (=> b!196024 m!223447))

(declare-fun m!223449 () Bool)

(assert (=> b!196021 m!223449))

(declare-fun m!223451 () Bool)

(assert (=> b!196022 m!223451))

(check-sat (not mapNonEmpty!7874) (not start!20024) (not b!196024) (not b!196022) (not b!196021) (not b!196023) tp_is_empty!4539)
(check-sat)
(get-model)

(declare-fun d!57481 () Bool)

(declare-fun lt!97578 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!156 (List!2479) (InoxSet (_ BitVec 64)))

(assert (=> d!57481 (= lt!97578 (select (content!156 Nil!2476) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!129077 () Bool)

(assert (=> d!57481 (= lt!97578 e!129077)))

(declare-fun res!92540 () Bool)

(assert (=> d!57481 (=> (not res!92540) (not e!129077))))

(assert (=> d!57481 (= res!92540 ((_ is Cons!2475) Nil!2476))))

(assert (=> d!57481 (= (contains!1386 Nil!2476 #b0000000000000000000000000000000000000000000000000000000000000000) lt!97578)))

(declare-fun b!196057 () Bool)

(declare-fun e!129076 () Bool)

(assert (=> b!196057 (= e!129077 e!129076)))

(declare-fun res!92539 () Bool)

(assert (=> b!196057 (=> res!92539 e!129076)))

(assert (=> b!196057 (= res!92539 (= (h!3117 Nil!2476) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!196058 () Bool)

(assert (=> b!196058 (= e!129076 (contains!1386 (t!7418 Nil!2476) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!57481 res!92540) b!196057))

(assert (= (and b!196057 (not res!92539)) b!196058))

(declare-fun m!223469 () Bool)

(assert (=> d!57481 m!223469))

(declare-fun m!223471 () Bool)

(assert (=> d!57481 m!223471))

(declare-fun m!223473 () Bool)

(assert (=> b!196058 m!223473))

(assert (=> b!196021 d!57481))

(declare-fun d!57483 () Bool)

(declare-fun lt!97579 () Bool)

(assert (=> d!57483 (= lt!97579 (select (content!156 Nil!2476) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!129079 () Bool)

(assert (=> d!57483 (= lt!97579 e!129079)))

(declare-fun res!92542 () Bool)

(assert (=> d!57483 (=> (not res!92542) (not e!129079))))

(assert (=> d!57483 (= res!92542 ((_ is Cons!2475) Nil!2476))))

(assert (=> d!57483 (= (contains!1386 Nil!2476 #b1000000000000000000000000000000000000000000000000000000000000000) lt!97579)))

(declare-fun b!196059 () Bool)

(declare-fun e!129078 () Bool)

(assert (=> b!196059 (= e!129079 e!129078)))

(declare-fun res!92541 () Bool)

(assert (=> b!196059 (=> res!92541 e!129078)))

(assert (=> b!196059 (= res!92541 (= (h!3117 Nil!2476) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!196060 () Bool)

(assert (=> b!196060 (= e!129078 (contains!1386 (t!7418 Nil!2476) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!57483 res!92542) b!196059))

(assert (= (and b!196059 (not res!92541)) b!196060))

(assert (=> d!57483 m!223469))

(declare-fun m!223475 () Bool)

(assert (=> d!57483 m!223475))

(declare-fun m!223477 () Bool)

(assert (=> b!196060 m!223477))

(assert (=> b!196024 d!57483))

(declare-fun d!57485 () Bool)

(assert (=> d!57485 (= (validMask!0 mask!1149) (and (or (= mask!1149 #b00000000000000000000000000000111) (= mask!1149 #b00000000000000000000000000001111) (= mask!1149 #b00000000000000000000000000011111) (= mask!1149 #b00000000000000000000000000111111) (= mask!1149 #b00000000000000000000000001111111) (= mask!1149 #b00000000000000000000000011111111) (= mask!1149 #b00000000000000000000000111111111) (= mask!1149 #b00000000000000000000001111111111) (= mask!1149 #b00000000000000000000011111111111) (= mask!1149 #b00000000000000000000111111111111) (= mask!1149 #b00000000000000000001111111111111) (= mask!1149 #b00000000000000000011111111111111) (= mask!1149 #b00000000000000000111111111111111) (= mask!1149 #b00000000000000001111111111111111) (= mask!1149 #b00000000000000011111111111111111) (= mask!1149 #b00000000000000111111111111111111) (= mask!1149 #b00000000000001111111111111111111) (= mask!1149 #b00000000000011111111111111111111) (= mask!1149 #b00000000000111111111111111111111) (= mask!1149 #b00000000001111111111111111111111) (= mask!1149 #b00000000011111111111111111111111) (= mask!1149 #b00000000111111111111111111111111) (= mask!1149 #b00000001111111111111111111111111) (= mask!1149 #b00000011111111111111111111111111) (= mask!1149 #b00000111111111111111111111111111) (= mask!1149 #b00001111111111111111111111111111) (= mask!1149 #b00011111111111111111111111111111) (= mask!1149 #b00111111111111111111111111111111)) (bvsle mask!1149 #b00111111111111111111111111111111)))))

(assert (=> start!20024 d!57485))

(declare-fun d!57487 () Bool)

(assert (=> d!57487 (= (array_inv!2537 _values!649) (bvsge (size!4245 _values!649) #b00000000000000000000000000000000))))

(assert (=> start!20024 d!57487))

(declare-fun d!57489 () Bool)

(assert (=> d!57489 (= (array_inv!2538 _keys!825) (bvsge (size!4246 _keys!825) #b00000000000000000000000000000000))))

(assert (=> start!20024 d!57489))

(declare-fun d!57491 () Bool)

(declare-fun res!92547 () Bool)

(declare-fun e!129084 () Bool)

(assert (=> d!57491 (=> res!92547 e!129084)))

(assert (=> d!57491 (= res!92547 ((_ is Nil!2476) Nil!2476))))

(assert (=> d!57491 (= (noDuplicate!61 Nil!2476) e!129084)))

(declare-fun b!196065 () Bool)

(declare-fun e!129085 () Bool)

(assert (=> b!196065 (= e!129084 e!129085)))

(declare-fun res!92548 () Bool)

(assert (=> b!196065 (=> (not res!92548) (not e!129085))))

(assert (=> b!196065 (= res!92548 (not (contains!1386 (t!7418 Nil!2476) (h!3117 Nil!2476))))))

(declare-fun b!196066 () Bool)

(assert (=> b!196066 (= e!129085 (noDuplicate!61 (t!7418 Nil!2476)))))

(assert (= (and d!57491 (not res!92547)) b!196065))

(assert (= (and b!196065 res!92548) b!196066))

(declare-fun m!223479 () Bool)

(assert (=> b!196065 m!223479))

(declare-fun m!223481 () Bool)

(assert (=> b!196066 m!223481))

(assert (=> b!196023 d!57491))

(declare-fun b!196075 () Bool)

(declare-fun e!129094 () Bool)

(declare-fun call!19774 () Bool)

(assert (=> b!196075 (= e!129094 call!19774)))

(declare-fun d!57493 () Bool)

(declare-fun res!92553 () Bool)

(declare-fun e!129092 () Bool)

(assert (=> d!57493 (=> res!92553 e!129092)))

(assert (=> d!57493 (= res!92553 (bvsge #b00000000000000000000000000000000 (size!4246 _keys!825)))))

(assert (=> d!57493 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149) e!129092)))

(declare-fun b!196076 () Bool)

(declare-fun e!129093 () Bool)

(assert (=> b!196076 (= e!129092 e!129093)))

(declare-fun c!35416 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!196076 (= c!35416 (validKeyInArray!0 (select (arr!3921 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun bm!19771 () Bool)

(assert (=> bm!19771 (= call!19774 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!825 mask!1149))))

(declare-fun b!196077 () Bool)

(assert (=> b!196077 (= e!129093 e!129094)))

(declare-fun lt!97588 () (_ BitVec 64))

(assert (=> b!196077 (= lt!97588 (select (arr!3921 _keys!825) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5945 0))(
  ( (Unit!5946) )
))
(declare-fun lt!97587 () Unit!5945)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!8340 (_ BitVec 64) (_ BitVec 32)) Unit!5945)

(assert (=> b!196077 (= lt!97587 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!825 lt!97588 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!8340 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!196077 (arrayContainsKey!0 _keys!825 lt!97588 #b00000000000000000000000000000000)))

(declare-fun lt!97586 () Unit!5945)

(assert (=> b!196077 (= lt!97586 lt!97587)))

(declare-fun res!92554 () Bool)

(declare-datatypes ((SeekEntryResult!713 0))(
  ( (MissingZero!713 (index!5022 (_ BitVec 32))) (Found!713 (index!5023 (_ BitVec 32))) (Intermediate!713 (undefined!1525 Bool) (index!5024 (_ BitVec 32)) (x!20844 (_ BitVec 32))) (Undefined!713) (MissingVacant!713 (index!5025 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8340 (_ BitVec 32)) SeekEntryResult!713)

(assert (=> b!196077 (= res!92554 (= (seekEntryOrOpen!0 (select (arr!3921 _keys!825) #b00000000000000000000000000000000) _keys!825 mask!1149) (Found!713 #b00000000000000000000000000000000)))))

(assert (=> b!196077 (=> (not res!92554) (not e!129094))))

(declare-fun b!196078 () Bool)

(assert (=> b!196078 (= e!129093 call!19774)))

(assert (= (and d!57493 (not res!92553)) b!196076))

(assert (= (and b!196076 c!35416) b!196077))

(assert (= (and b!196076 (not c!35416)) b!196078))

(assert (= (and b!196077 res!92554) b!196075))

(assert (= (or b!196075 b!196078) bm!19771))

(declare-fun m!223483 () Bool)

(assert (=> b!196076 m!223483))

(assert (=> b!196076 m!223483))

(declare-fun m!223485 () Bool)

(assert (=> b!196076 m!223485))

(declare-fun m!223487 () Bool)

(assert (=> bm!19771 m!223487))

(assert (=> b!196077 m!223483))

(declare-fun m!223489 () Bool)

(assert (=> b!196077 m!223489))

(declare-fun m!223491 () Bool)

(assert (=> b!196077 m!223491))

(assert (=> b!196077 m!223483))

(declare-fun m!223493 () Bool)

(assert (=> b!196077 m!223493))

(assert (=> b!196022 d!57493))

(declare-fun b!196085 () Bool)

(declare-fun e!129100 () Bool)

(assert (=> b!196085 (= e!129100 tp_is_empty!4539)))

(declare-fun condMapEmpty!7880 () Bool)

(declare-fun mapDefault!7880 () ValueCell!1926)

(assert (=> mapNonEmpty!7874 (= condMapEmpty!7880 (= mapRest!7874 ((as const (Array (_ BitVec 32) ValueCell!1926)) mapDefault!7880)))))

(declare-fun e!129099 () Bool)

(declare-fun mapRes!7880 () Bool)

(assert (=> mapNonEmpty!7874 (= tp!17162 (and e!129099 mapRes!7880))))

(declare-fun b!196086 () Bool)

(assert (=> b!196086 (= e!129099 tp_is_empty!4539)))

(declare-fun mapNonEmpty!7880 () Bool)

(declare-fun tp!17168 () Bool)

(assert (=> mapNonEmpty!7880 (= mapRes!7880 (and tp!17168 e!129100))))

(declare-fun mapKey!7880 () (_ BitVec 32))

(declare-fun mapRest!7880 () (Array (_ BitVec 32) ValueCell!1926))

(declare-fun mapValue!7880 () ValueCell!1926)

(assert (=> mapNonEmpty!7880 (= mapRest!7874 (store mapRest!7880 mapKey!7880 mapValue!7880))))

(declare-fun mapIsEmpty!7880 () Bool)

(assert (=> mapIsEmpty!7880 mapRes!7880))

(assert (= (and mapNonEmpty!7874 condMapEmpty!7880) mapIsEmpty!7880))

(assert (= (and mapNonEmpty!7874 (not condMapEmpty!7880)) mapNonEmpty!7880))

(assert (= (and mapNonEmpty!7880 ((_ is ValueCellFull!1926) mapValue!7880)) b!196085))

(assert (= (and mapNonEmpty!7874 ((_ is ValueCellFull!1926) mapDefault!7880)) b!196086))

(declare-fun m!223495 () Bool)

(assert (=> mapNonEmpty!7880 m!223495))

(check-sat (not b!196058) (not b!196076) (not b!196060) (not mapNonEmpty!7880) (not b!196065) (not b!196066) (not d!57481) tp_is_empty!4539 (not b!196077) (not bm!19771) (not d!57483))
(check-sat)
