; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36738 () Bool)

(assert start!36738)

(declare-fun b!366412 () Bool)

(declare-fun e!224328 () Bool)

(declare-datatypes ((List!5569 0))(
  ( (Nil!5566) (Cons!5565 (h!6421 (_ BitVec 64)) (t!10727 List!5569)) )
))
(declare-fun contains!2439 (List!5569 (_ BitVec 64)) Bool)

(assert (=> b!366412 (= e!224328 (contains!2439 Nil!5566 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!366413 () Bool)

(declare-fun res!205058 () Bool)

(declare-fun e!224329 () Bool)

(assert (=> b!366413 (=> (not res!205058) (not e!224329))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!20973 0))(
  ( (array!20974 (arr!9953 (Array (_ BitVec 32) (_ BitVec 64))) (size!10305 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20973)

(assert (=> b!366413 (= res!205058 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10305 _keys!658))))))

(declare-fun b!366414 () Bool)

(declare-fun res!205053 () Bool)

(assert (=> b!366414 (=> (not res!205053) (not e!224329))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!366414 (= res!205053 (validKeyInArray!0 k0!778))))

(declare-fun mapNonEmpty!14346 () Bool)

(declare-fun mapRes!14346 () Bool)

(declare-fun tp!28422 () Bool)

(declare-fun e!224332 () Bool)

(assert (=> mapNonEmpty!14346 (= mapRes!14346 (and tp!28422 e!224332))))

(declare-datatypes ((V!12469 0))(
  ( (V!12470 (val!4306 Int)) )
))
(declare-datatypes ((ValueCell!3918 0))(
  ( (ValueCellFull!3918 (v!6498 V!12469)) (EmptyCell!3918) )
))
(declare-datatypes ((array!20975 0))(
  ( (array!20976 (arr!9954 (Array (_ BitVec 32) ValueCell!3918)) (size!10306 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20975)

(declare-fun mapRest!14346 () (Array (_ BitVec 32) ValueCell!3918))

(declare-fun mapKey!14346 () (_ BitVec 32))

(declare-fun mapValue!14346 () ValueCell!3918)

(assert (=> mapNonEmpty!14346 (= (arr!9954 _values!506) (store mapRest!14346 mapKey!14346 mapValue!14346))))

(declare-fun b!366415 () Bool)

(assert (=> b!366415 (= e!224329 e!224328)))

(declare-fun res!205052 () Bool)

(assert (=> b!366415 (=> res!205052 e!224328)))

(assert (=> b!366415 (= res!205052 (contains!2439 Nil!5566 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!366416 () Bool)

(declare-fun res!205061 () Bool)

(assert (=> b!366416 (=> (not res!205061) (not e!224329))))

(assert (=> b!366416 (= res!205061 (and (bvsle #b00000000000000000000000000000000 (size!10305 _keys!658)) (bvslt (size!10305 _keys!658) #b01111111111111111111111111111111)))))

(declare-fun b!366417 () Bool)

(declare-fun res!205062 () Bool)

(assert (=> b!366417 (=> (not res!205062) (not e!224329))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!366417 (= res!205062 (and (= (size!10306 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10305 _keys!658) (size!10306 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!366418 () Bool)

(declare-fun tp_is_empty!8523 () Bool)

(assert (=> b!366418 (= e!224332 tp_is_empty!8523)))

(declare-fun b!366419 () Bool)

(declare-fun res!205055 () Bool)

(assert (=> b!366419 (=> (not res!205055) (not e!224329))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20973 (_ BitVec 32)) Bool)

(assert (=> b!366419 (= res!205055 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapIsEmpty!14346 () Bool)

(assert (=> mapIsEmpty!14346 mapRes!14346))

(declare-fun res!205060 () Bool)

(assert (=> start!36738 (=> (not res!205060) (not e!224329))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36738 (= res!205060 (validMask!0 mask!970))))

(assert (=> start!36738 e!224329))

(assert (=> start!36738 true))

(declare-fun e!224327 () Bool)

(declare-fun array_inv!7362 (array!20975) Bool)

(assert (=> start!36738 (and (array_inv!7362 _values!506) e!224327)))

(declare-fun array_inv!7363 (array!20973) Bool)

(assert (=> start!36738 (array_inv!7363 _keys!658)))

(declare-fun b!366420 () Bool)

(declare-fun e!224331 () Bool)

(assert (=> b!366420 (= e!224331 tp_is_empty!8523)))

(declare-fun b!366421 () Bool)

(declare-fun res!205057 () Bool)

(assert (=> b!366421 (=> (not res!205057) (not e!224329))))

(declare-fun arrayContainsKey!0 (array!20973 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!366421 (= res!205057 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!366422 () Bool)

(assert (=> b!366422 (= e!224327 (and e!224331 mapRes!14346))))

(declare-fun condMapEmpty!14346 () Bool)

(declare-fun mapDefault!14346 () ValueCell!3918)

(assert (=> b!366422 (= condMapEmpty!14346 (= (arr!9954 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3918)) mapDefault!14346)))))

(declare-fun b!366423 () Bool)

(declare-fun res!205063 () Bool)

(assert (=> b!366423 (=> (not res!205063) (not e!224329))))

(declare-fun noDuplicate!191 (List!5569) Bool)

(assert (=> b!366423 (= res!205063 (noDuplicate!191 Nil!5566))))

(declare-fun b!366424 () Bool)

(declare-fun res!205056 () Bool)

(assert (=> b!366424 (=> (not res!205056) (not e!224329))))

(assert (=> b!366424 (= res!205056 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!20974 (store (arr!9953 _keys!658) i!548 k0!778) (size!10305 _keys!658)) mask!970))))

(declare-fun b!366425 () Bool)

(declare-fun res!205059 () Bool)

(assert (=> b!366425 (=> (not res!205059) (not e!224329))))

(declare-fun arrayNoDuplicates!0 (array!20973 (_ BitVec 32) List!5569) Bool)

(assert (=> b!366425 (= res!205059 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5566))))

(declare-fun b!366426 () Bool)

(declare-fun res!205054 () Bool)

(assert (=> b!366426 (=> (not res!205054) (not e!224329))))

(assert (=> b!366426 (= res!205054 (or (= (select (arr!9953 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!9953 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!36738 res!205060) b!366417))

(assert (= (and b!366417 res!205062) b!366419))

(assert (= (and b!366419 res!205055) b!366425))

(assert (= (and b!366425 res!205059) b!366413))

(assert (= (and b!366413 res!205058) b!366414))

(assert (= (and b!366414 res!205053) b!366426))

(assert (= (and b!366426 res!205054) b!366421))

(assert (= (and b!366421 res!205057) b!366424))

(assert (= (and b!366424 res!205056) b!366416))

(assert (= (and b!366416 res!205061) b!366423))

(assert (= (and b!366423 res!205063) b!366415))

(assert (= (and b!366415 (not res!205052)) b!366412))

(assert (= (and b!366422 condMapEmpty!14346) mapIsEmpty!14346))

(assert (= (and b!366422 (not condMapEmpty!14346)) mapNonEmpty!14346))

(get-info :version)

(assert (= (and mapNonEmpty!14346 ((_ is ValueCellFull!3918) mapValue!14346)) b!366418))

(assert (= (and b!366422 ((_ is ValueCellFull!3918) mapDefault!14346)) b!366420))

(assert (= start!36738 b!366422))

(declare-fun m!363707 () Bool)

(assert (=> b!366415 m!363707))

(declare-fun m!363709 () Bool)

(assert (=> start!36738 m!363709))

(declare-fun m!363711 () Bool)

(assert (=> start!36738 m!363711))

(declare-fun m!363713 () Bool)

(assert (=> start!36738 m!363713))

(declare-fun m!363715 () Bool)

(assert (=> b!366412 m!363715))

(declare-fun m!363717 () Bool)

(assert (=> b!366421 m!363717))

(declare-fun m!363719 () Bool)

(assert (=> b!366414 m!363719))

(declare-fun m!363721 () Bool)

(assert (=> mapNonEmpty!14346 m!363721))

(declare-fun m!363723 () Bool)

(assert (=> b!366425 m!363723))

(declare-fun m!363725 () Bool)

(assert (=> b!366426 m!363725))

(declare-fun m!363727 () Bool)

(assert (=> b!366424 m!363727))

(declare-fun m!363729 () Bool)

(assert (=> b!366424 m!363729))

(declare-fun m!363731 () Bool)

(assert (=> b!366419 m!363731))

(declare-fun m!363733 () Bool)

(assert (=> b!366423 m!363733))

(check-sat (not b!366425) (not mapNonEmpty!14346) (not b!366414) (not b!366412) (not b!366423) (not b!366415) (not b!366421) (not start!36738) (not b!366424) tp_is_empty!8523 (not b!366419))
(check-sat)
(get-model)

(declare-fun b!366482 () Bool)

(declare-fun e!224360 () Bool)

(assert (=> b!366482 (= e!224360 (contains!2439 Nil!5566 (select (arr!9953 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun bm!27298 () Bool)

(declare-fun call!27301 () Bool)

(declare-fun c!53845 () Bool)

(assert (=> bm!27298 (= call!27301 (arrayNoDuplicates!0 _keys!658 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!53845 (Cons!5565 (select (arr!9953 _keys!658) #b00000000000000000000000000000000) Nil!5566) Nil!5566)))))

(declare-fun b!366483 () Bool)

(declare-fun e!224361 () Bool)

(declare-fun e!224359 () Bool)

(assert (=> b!366483 (= e!224361 e!224359)))

(declare-fun res!205106 () Bool)

(assert (=> b!366483 (=> (not res!205106) (not e!224359))))

(assert (=> b!366483 (= res!205106 (not e!224360))))

(declare-fun res!205108 () Bool)

(assert (=> b!366483 (=> (not res!205108) (not e!224360))))

(assert (=> b!366483 (= res!205108 (validKeyInArray!0 (select (arr!9953 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!366484 () Bool)

(declare-fun e!224362 () Bool)

(assert (=> b!366484 (= e!224362 call!27301)))

(declare-fun d!72297 () Bool)

(declare-fun res!205107 () Bool)

(assert (=> d!72297 (=> res!205107 e!224361)))

(assert (=> d!72297 (= res!205107 (bvsge #b00000000000000000000000000000000 (size!10305 _keys!658)))))

(assert (=> d!72297 (= (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5566) e!224361)))

(declare-fun b!366485 () Bool)

(assert (=> b!366485 (= e!224362 call!27301)))

(declare-fun b!366486 () Bool)

(assert (=> b!366486 (= e!224359 e!224362)))

(assert (=> b!366486 (= c!53845 (validKeyInArray!0 (select (arr!9953 _keys!658) #b00000000000000000000000000000000)))))

(assert (= (and d!72297 (not res!205107)) b!366483))

(assert (= (and b!366483 res!205108) b!366482))

(assert (= (and b!366483 res!205106) b!366486))

(assert (= (and b!366486 c!53845) b!366484))

(assert (= (and b!366486 (not c!53845)) b!366485))

(assert (= (or b!366484 b!366485) bm!27298))

(declare-fun m!363763 () Bool)

(assert (=> b!366482 m!363763))

(assert (=> b!366482 m!363763))

(declare-fun m!363765 () Bool)

(assert (=> b!366482 m!363765))

(assert (=> bm!27298 m!363763))

(declare-fun m!363767 () Bool)

(assert (=> bm!27298 m!363767))

(assert (=> b!366483 m!363763))

(assert (=> b!366483 m!363763))

(declare-fun m!363769 () Bool)

(assert (=> b!366483 m!363769))

(assert (=> b!366486 m!363763))

(assert (=> b!366486 m!363763))

(assert (=> b!366486 m!363769))

(assert (=> b!366425 d!72297))

(declare-fun d!72299 () Bool)

(declare-fun lt!169212 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!200 (List!5569) (InoxSet (_ BitVec 64)))

(assert (=> d!72299 (= lt!169212 (select (content!200 Nil!5566) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!224368 () Bool)

(assert (=> d!72299 (= lt!169212 e!224368)))

(declare-fun res!205114 () Bool)

(assert (=> d!72299 (=> (not res!205114) (not e!224368))))

(assert (=> d!72299 (= res!205114 ((_ is Cons!5565) Nil!5566))))

(assert (=> d!72299 (= (contains!2439 Nil!5566 #b1000000000000000000000000000000000000000000000000000000000000000) lt!169212)))

(declare-fun b!366491 () Bool)

(declare-fun e!224367 () Bool)

(assert (=> b!366491 (= e!224368 e!224367)))

(declare-fun res!205113 () Bool)

(assert (=> b!366491 (=> res!205113 e!224367)))

(assert (=> b!366491 (= res!205113 (= (h!6421 Nil!5566) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!366492 () Bool)

(assert (=> b!366492 (= e!224367 (contains!2439 (t!10727 Nil!5566) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!72299 res!205114) b!366491))

(assert (= (and b!366491 (not res!205113)) b!366492))

(declare-fun m!363771 () Bool)

(assert (=> d!72299 m!363771))

(declare-fun m!363773 () Bool)

(assert (=> d!72299 m!363773))

(declare-fun m!363775 () Bool)

(assert (=> b!366492 m!363775))

(assert (=> b!366412 d!72299))

(declare-fun d!72301 () Bool)

(assert (=> d!72301 (= (validMask!0 mask!970) (and (or (= mask!970 #b00000000000000000000000000000111) (= mask!970 #b00000000000000000000000000001111) (= mask!970 #b00000000000000000000000000011111) (= mask!970 #b00000000000000000000000000111111) (= mask!970 #b00000000000000000000000001111111) (= mask!970 #b00000000000000000000000011111111) (= mask!970 #b00000000000000000000000111111111) (= mask!970 #b00000000000000000000001111111111) (= mask!970 #b00000000000000000000011111111111) (= mask!970 #b00000000000000000000111111111111) (= mask!970 #b00000000000000000001111111111111) (= mask!970 #b00000000000000000011111111111111) (= mask!970 #b00000000000000000111111111111111) (= mask!970 #b00000000000000001111111111111111) (= mask!970 #b00000000000000011111111111111111) (= mask!970 #b00000000000000111111111111111111) (= mask!970 #b00000000000001111111111111111111) (= mask!970 #b00000000000011111111111111111111) (= mask!970 #b00000000000111111111111111111111) (= mask!970 #b00000000001111111111111111111111) (= mask!970 #b00000000011111111111111111111111) (= mask!970 #b00000000111111111111111111111111) (= mask!970 #b00000001111111111111111111111111) (= mask!970 #b00000011111111111111111111111111) (= mask!970 #b00000111111111111111111111111111) (= mask!970 #b00001111111111111111111111111111) (= mask!970 #b00011111111111111111111111111111) (= mask!970 #b00111111111111111111111111111111)) (bvsle mask!970 #b00111111111111111111111111111111)))))

(assert (=> start!36738 d!72301))

(declare-fun d!72303 () Bool)

(assert (=> d!72303 (= (array_inv!7362 _values!506) (bvsge (size!10306 _values!506) #b00000000000000000000000000000000))))

(assert (=> start!36738 d!72303))

(declare-fun d!72305 () Bool)

(assert (=> d!72305 (= (array_inv!7363 _keys!658) (bvsge (size!10305 _keys!658) #b00000000000000000000000000000000))))

(assert (=> start!36738 d!72305))

(declare-fun d!72307 () Bool)

(declare-fun res!205119 () Bool)

(declare-fun e!224373 () Bool)

(assert (=> d!72307 (=> res!205119 e!224373)))

(assert (=> d!72307 (= res!205119 (= (select (arr!9953 _keys!658) #b00000000000000000000000000000000) k0!778))))

(assert (=> d!72307 (= (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000) e!224373)))

(declare-fun b!366497 () Bool)

(declare-fun e!224374 () Bool)

(assert (=> b!366497 (= e!224373 e!224374)))

(declare-fun res!205120 () Bool)

(assert (=> b!366497 (=> (not res!205120) (not e!224374))))

(assert (=> b!366497 (= res!205120 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!10305 _keys!658)))))

(declare-fun b!366498 () Bool)

(assert (=> b!366498 (= e!224374 (arrayContainsKey!0 _keys!658 k0!778 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!72307 (not res!205119)) b!366497))

(assert (= (and b!366497 res!205120) b!366498))

(assert (=> d!72307 m!363763))

(declare-fun m!363777 () Bool)

(assert (=> b!366498 m!363777))

(assert (=> b!366421 d!72307))

(declare-fun d!72309 () Bool)

(assert (=> d!72309 (= (validKeyInArray!0 k0!778) (and (not (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!366414 d!72309))

(declare-fun d!72311 () Bool)

(declare-fun res!205125 () Bool)

(declare-fun e!224379 () Bool)

(assert (=> d!72311 (=> res!205125 e!224379)))

(assert (=> d!72311 (= res!205125 ((_ is Nil!5566) Nil!5566))))

(assert (=> d!72311 (= (noDuplicate!191 Nil!5566) e!224379)))

(declare-fun b!366503 () Bool)

(declare-fun e!224380 () Bool)

(assert (=> b!366503 (= e!224379 e!224380)))

(declare-fun res!205126 () Bool)

(assert (=> b!366503 (=> (not res!205126) (not e!224380))))

(assert (=> b!366503 (= res!205126 (not (contains!2439 (t!10727 Nil!5566) (h!6421 Nil!5566))))))

(declare-fun b!366504 () Bool)

(assert (=> b!366504 (= e!224380 (noDuplicate!191 (t!10727 Nil!5566)))))

(assert (= (and d!72311 (not res!205125)) b!366503))

(assert (= (and b!366503 res!205126) b!366504))

(declare-fun m!363779 () Bool)

(assert (=> b!366503 m!363779))

(declare-fun m!363781 () Bool)

(assert (=> b!366504 m!363781))

(assert (=> b!366423 d!72311))

(declare-fun b!366513 () Bool)

(declare-fun e!224387 () Bool)

(declare-fun e!224389 () Bool)

(assert (=> b!366513 (= e!224387 e!224389)))

(declare-fun c!53848 () Bool)

(assert (=> b!366513 (= c!53848 (validKeyInArray!0 (select (arr!9953 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun d!72313 () Bool)

(declare-fun res!205131 () Bool)

(assert (=> d!72313 (=> res!205131 e!224387)))

(assert (=> d!72313 (= res!205131 (bvsge #b00000000000000000000000000000000 (size!10305 _keys!658)))))

(assert (=> d!72313 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970) e!224387)))

(declare-fun b!366514 () Bool)

(declare-fun call!27304 () Bool)

(assert (=> b!366514 (= e!224389 call!27304)))

(declare-fun b!366515 () Bool)

(declare-fun e!224388 () Bool)

(assert (=> b!366515 (= e!224388 call!27304)))

(declare-fun b!366516 () Bool)

(assert (=> b!366516 (= e!224389 e!224388)))

(declare-fun lt!169220 () (_ BitVec 64))

(assert (=> b!366516 (= lt!169220 (select (arr!9953 _keys!658) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!11385 0))(
  ( (Unit!11386) )
))
(declare-fun lt!169219 () Unit!11385)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!20973 (_ BitVec 64) (_ BitVec 32)) Unit!11385)

(assert (=> b!366516 (= lt!169219 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!658 lt!169220 #b00000000000000000000000000000000))))

(assert (=> b!366516 (arrayContainsKey!0 _keys!658 lt!169220 #b00000000000000000000000000000000)))

(declare-fun lt!169221 () Unit!11385)

(assert (=> b!366516 (= lt!169221 lt!169219)))

(declare-fun res!205132 () Bool)

(declare-datatypes ((SeekEntryResult!3495 0))(
  ( (MissingZero!3495 (index!16159 (_ BitVec 32))) (Found!3495 (index!16160 (_ BitVec 32))) (Intermediate!3495 (undefined!4307 Bool) (index!16161 (_ BitVec 32)) (x!36744 (_ BitVec 32))) (Undefined!3495) (MissingVacant!3495 (index!16162 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!20973 (_ BitVec 32)) SeekEntryResult!3495)

(assert (=> b!366516 (= res!205132 (= (seekEntryOrOpen!0 (select (arr!9953 _keys!658) #b00000000000000000000000000000000) _keys!658 mask!970) (Found!3495 #b00000000000000000000000000000000)))))

(assert (=> b!366516 (=> (not res!205132) (not e!224388))))

(declare-fun bm!27301 () Bool)

(assert (=> bm!27301 (= call!27304 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!658 mask!970))))

(assert (= (and d!72313 (not res!205131)) b!366513))

(assert (= (and b!366513 c!53848) b!366516))

(assert (= (and b!366513 (not c!53848)) b!366514))

(assert (= (and b!366516 res!205132) b!366515))

(assert (= (or b!366515 b!366514) bm!27301))

(assert (=> b!366513 m!363763))

(assert (=> b!366513 m!363763))

(assert (=> b!366513 m!363769))

(assert (=> b!366516 m!363763))

(declare-fun m!363783 () Bool)

(assert (=> b!366516 m!363783))

(declare-fun m!363785 () Bool)

(assert (=> b!366516 m!363785))

(assert (=> b!366516 m!363763))

(declare-fun m!363787 () Bool)

(assert (=> b!366516 m!363787))

(declare-fun m!363789 () Bool)

(assert (=> bm!27301 m!363789))

(assert (=> b!366419 d!72313))

(declare-fun b!366517 () Bool)

(declare-fun e!224390 () Bool)

(declare-fun e!224392 () Bool)

(assert (=> b!366517 (= e!224390 e!224392)))

(declare-fun c!53849 () Bool)

(assert (=> b!366517 (= c!53849 (validKeyInArray!0 (select (arr!9953 (array!20974 (store (arr!9953 _keys!658) i!548 k0!778) (size!10305 _keys!658))) #b00000000000000000000000000000000)))))

(declare-fun d!72315 () Bool)

(declare-fun res!205133 () Bool)

(assert (=> d!72315 (=> res!205133 e!224390)))

(assert (=> d!72315 (= res!205133 (bvsge #b00000000000000000000000000000000 (size!10305 (array!20974 (store (arr!9953 _keys!658) i!548 k0!778) (size!10305 _keys!658)))))))

(assert (=> d!72315 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!20974 (store (arr!9953 _keys!658) i!548 k0!778) (size!10305 _keys!658)) mask!970) e!224390)))

(declare-fun b!366518 () Bool)

(declare-fun call!27305 () Bool)

(assert (=> b!366518 (= e!224392 call!27305)))

(declare-fun b!366519 () Bool)

(declare-fun e!224391 () Bool)

(assert (=> b!366519 (= e!224391 call!27305)))

(declare-fun b!366520 () Bool)

(assert (=> b!366520 (= e!224392 e!224391)))

(declare-fun lt!169223 () (_ BitVec 64))

(assert (=> b!366520 (= lt!169223 (select (arr!9953 (array!20974 (store (arr!9953 _keys!658) i!548 k0!778) (size!10305 _keys!658))) #b00000000000000000000000000000000))))

(declare-fun lt!169222 () Unit!11385)

(assert (=> b!366520 (= lt!169222 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!20974 (store (arr!9953 _keys!658) i!548 k0!778) (size!10305 _keys!658)) lt!169223 #b00000000000000000000000000000000))))

(assert (=> b!366520 (arrayContainsKey!0 (array!20974 (store (arr!9953 _keys!658) i!548 k0!778) (size!10305 _keys!658)) lt!169223 #b00000000000000000000000000000000)))

(declare-fun lt!169224 () Unit!11385)

(assert (=> b!366520 (= lt!169224 lt!169222)))

(declare-fun res!205134 () Bool)

(assert (=> b!366520 (= res!205134 (= (seekEntryOrOpen!0 (select (arr!9953 (array!20974 (store (arr!9953 _keys!658) i!548 k0!778) (size!10305 _keys!658))) #b00000000000000000000000000000000) (array!20974 (store (arr!9953 _keys!658) i!548 k0!778) (size!10305 _keys!658)) mask!970) (Found!3495 #b00000000000000000000000000000000)))))

(assert (=> b!366520 (=> (not res!205134) (not e!224391))))

(declare-fun bm!27302 () Bool)

(assert (=> bm!27302 (= call!27305 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!20974 (store (arr!9953 _keys!658) i!548 k0!778) (size!10305 _keys!658)) mask!970))))

(assert (= (and d!72315 (not res!205133)) b!366517))

(assert (= (and b!366517 c!53849) b!366520))

(assert (= (and b!366517 (not c!53849)) b!366518))

(assert (= (and b!366520 res!205134) b!366519))

(assert (= (or b!366519 b!366518) bm!27302))

(declare-fun m!363791 () Bool)

(assert (=> b!366517 m!363791))

(assert (=> b!366517 m!363791))

(declare-fun m!363793 () Bool)

(assert (=> b!366517 m!363793))

(assert (=> b!366520 m!363791))

(declare-fun m!363795 () Bool)

(assert (=> b!366520 m!363795))

(declare-fun m!363797 () Bool)

(assert (=> b!366520 m!363797))

(assert (=> b!366520 m!363791))

(declare-fun m!363799 () Bool)

(assert (=> b!366520 m!363799))

(declare-fun m!363801 () Bool)

(assert (=> bm!27302 m!363801))

(assert (=> b!366424 d!72315))

(declare-fun d!72317 () Bool)

(declare-fun lt!169225 () Bool)

(assert (=> d!72317 (= lt!169225 (select (content!200 Nil!5566) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!224394 () Bool)

(assert (=> d!72317 (= lt!169225 e!224394)))

(declare-fun res!205136 () Bool)

(assert (=> d!72317 (=> (not res!205136) (not e!224394))))

(assert (=> d!72317 (= res!205136 ((_ is Cons!5565) Nil!5566))))

(assert (=> d!72317 (= (contains!2439 Nil!5566 #b0000000000000000000000000000000000000000000000000000000000000000) lt!169225)))

(declare-fun b!366521 () Bool)

(declare-fun e!224393 () Bool)

(assert (=> b!366521 (= e!224394 e!224393)))

(declare-fun res!205135 () Bool)

(assert (=> b!366521 (=> res!205135 e!224393)))

(assert (=> b!366521 (= res!205135 (= (h!6421 Nil!5566) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!366522 () Bool)

(assert (=> b!366522 (= e!224393 (contains!2439 (t!10727 Nil!5566) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!72317 res!205136) b!366521))

(assert (= (and b!366521 (not res!205135)) b!366522))

(assert (=> d!72317 m!363771))

(declare-fun m!363803 () Bool)

(assert (=> d!72317 m!363803))

(declare-fun m!363805 () Bool)

(assert (=> b!366522 m!363805))

(assert (=> b!366415 d!72317))

(declare-fun b!366529 () Bool)

(declare-fun e!224399 () Bool)

(assert (=> b!366529 (= e!224399 tp_is_empty!8523)))

(declare-fun mapIsEmpty!14352 () Bool)

(declare-fun mapRes!14352 () Bool)

(assert (=> mapIsEmpty!14352 mapRes!14352))

(declare-fun condMapEmpty!14352 () Bool)

(declare-fun mapDefault!14352 () ValueCell!3918)

(assert (=> mapNonEmpty!14346 (= condMapEmpty!14352 (= mapRest!14346 ((as const (Array (_ BitVec 32) ValueCell!3918)) mapDefault!14352)))))

(declare-fun e!224400 () Bool)

(assert (=> mapNonEmpty!14346 (= tp!28422 (and e!224400 mapRes!14352))))

(declare-fun mapNonEmpty!14352 () Bool)

(declare-fun tp!28428 () Bool)

(assert (=> mapNonEmpty!14352 (= mapRes!14352 (and tp!28428 e!224399))))

(declare-fun mapRest!14352 () (Array (_ BitVec 32) ValueCell!3918))

(declare-fun mapKey!14352 () (_ BitVec 32))

(declare-fun mapValue!14352 () ValueCell!3918)

(assert (=> mapNonEmpty!14352 (= mapRest!14346 (store mapRest!14352 mapKey!14352 mapValue!14352))))

(declare-fun b!366530 () Bool)

(assert (=> b!366530 (= e!224400 tp_is_empty!8523)))

(assert (= (and mapNonEmpty!14346 condMapEmpty!14352) mapIsEmpty!14352))

(assert (= (and mapNonEmpty!14346 (not condMapEmpty!14352)) mapNonEmpty!14352))

(assert (= (and mapNonEmpty!14352 ((_ is ValueCellFull!3918) mapValue!14352)) b!366529))

(assert (= (and mapNonEmpty!14346 ((_ is ValueCellFull!3918) mapDefault!14352)) b!366530))

(declare-fun m!363807 () Bool)

(assert (=> mapNonEmpty!14352 m!363807))

(check-sat (not d!72317) (not b!366503) (not b!366517) (not b!366520) (not b!366486) (not bm!27302) (not d!72299) (not b!366498) (not b!366513) (not b!366483) tp_is_empty!8523 (not mapNonEmpty!14352) (not b!366516) (not b!366504) (not bm!27301) (not b!366482) (not b!366522) (not bm!27298) (not b!366492))
(check-sat)
