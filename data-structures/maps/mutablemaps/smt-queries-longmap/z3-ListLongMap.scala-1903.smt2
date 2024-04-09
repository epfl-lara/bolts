; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33918 () Bool)

(assert start!33918)

(declare-fun b_free!7089 () Bool)

(declare-fun b_next!7089 () Bool)

(assert (=> start!33918 (= b_free!7089 (not b_next!7089))))

(declare-fun tp!24780 () Bool)

(declare-fun b_and!14293 () Bool)

(assert (=> start!33918 (= tp!24780 b_and!14293)))

(declare-fun b!337599 () Bool)

(declare-fun e!207160 () Bool)

(declare-fun tp_is_empty!7041 () Bool)

(assert (=> b!337599 (= e!207160 tp_is_empty!7041)))

(declare-fun b!337600 () Bool)

(declare-datatypes ((Unit!10461 0))(
  ( (Unit!10462) )
))
(declare-fun e!207158 () Unit!10461)

(declare-fun Unit!10463 () Unit!10461)

(assert (=> b!337600 (= e!207158 Unit!10463)))

(declare-fun b!337601 () Bool)

(declare-fun e!207157 () Bool)

(assert (=> b!337601 (= e!207157 tp_is_empty!7041)))

(declare-fun res!186593 () Bool)

(declare-fun e!207156 () Bool)

(assert (=> start!33918 (=> (not res!186593) (not e!207156))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33918 (= res!186593 (validMask!0 mask!2385))))

(assert (=> start!33918 e!207156))

(assert (=> start!33918 true))

(assert (=> start!33918 tp_is_empty!7041))

(assert (=> start!33918 tp!24780))

(declare-datatypes ((V!10365 0))(
  ( (V!10366 (val!3565 Int)) )
))
(declare-datatypes ((ValueCell!3177 0))(
  ( (ValueCellFull!3177 (v!5726 V!10365)) (EmptyCell!3177) )
))
(declare-datatypes ((array!17645 0))(
  ( (array!17646 (arr!8347 (Array (_ BitVec 32) ValueCell!3177)) (size!8699 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17645)

(declare-fun e!207159 () Bool)

(declare-fun array_inv!6182 (array!17645) Bool)

(assert (=> start!33918 (and (array_inv!6182 _values!1525) e!207159)))

(declare-datatypes ((array!17647 0))(
  ( (array!17648 (arr!8348 (Array (_ BitVec 32) (_ BitVec 64))) (size!8700 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17647)

(declare-fun array_inv!6183 (array!17647) Bool)

(assert (=> start!33918 (array_inv!6183 _keys!1895)))

(declare-fun b!337602 () Bool)

(declare-fun e!207161 () Bool)

(assert (=> b!337602 (= e!207156 e!207161)))

(declare-fun res!186595 () Bool)

(assert (=> b!337602 (=> (not res!186595) (not e!207161))))

(declare-datatypes ((SeekEntryResult!3231 0))(
  ( (MissingZero!3231 (index!15103 (_ BitVec 32))) (Found!3231 (index!15104 (_ BitVec 32))) (Intermediate!3231 (undefined!4043 Bool) (index!15105 (_ BitVec 32)) (x!33662 (_ BitVec 32))) (Undefined!3231) (MissingVacant!3231 (index!15106 (_ BitVec 32))) )
))
(declare-fun lt!160472 () SeekEntryResult!3231)

(get-info :version)

(assert (=> b!337602 (= res!186595 (and (not ((_ is Found!3231) lt!160472)) ((_ is MissingZero!3231) lt!160472)))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17647 (_ BitVec 32)) SeekEntryResult!3231)

(assert (=> b!337602 (= lt!160472 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!337603 () Bool)

(declare-fun res!186590 () Bool)

(assert (=> b!337603 (=> (not res!186590) (not e!207156))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17647 (_ BitVec 32)) Bool)

(assert (=> b!337603 (= res!186590 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!11967 () Bool)

(declare-fun mapRes!11967 () Bool)

(assert (=> mapIsEmpty!11967 mapRes!11967))

(declare-fun b!337604 () Bool)

(assert (=> b!337604 (= e!207159 (and e!207160 mapRes!11967))))

(declare-fun condMapEmpty!11967 () Bool)

(declare-fun mapDefault!11967 () ValueCell!3177)

(assert (=> b!337604 (= condMapEmpty!11967 (= (arr!8347 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3177)) mapDefault!11967)))))

(declare-fun b!337605 () Bool)

(assert (=> b!337605 (= e!207161 (bvsge #b00000000000000000000000000000000 (size!8700 _keys!1895)))))

(declare-fun lt!160471 () Unit!10461)

(assert (=> b!337605 (= lt!160471 e!207158)))

(declare-fun c!52238 () Bool)

(declare-fun arrayContainsKey!0 (array!17647 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!337605 (= c!52238 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!11967 () Bool)

(declare-fun tp!24779 () Bool)

(assert (=> mapNonEmpty!11967 (= mapRes!11967 (and tp!24779 e!207157))))

(declare-fun mapRest!11967 () (Array (_ BitVec 32) ValueCell!3177))

(declare-fun mapKey!11967 () (_ BitVec 32))

(declare-fun mapValue!11967 () ValueCell!3177)

(assert (=> mapNonEmpty!11967 (= (arr!8347 _values!1525) (store mapRest!11967 mapKey!11967 mapValue!11967))))

(declare-fun b!337606 () Bool)

(declare-fun Unit!10464 () Unit!10461)

(assert (=> b!337606 (= e!207158 Unit!10464)))

(declare-fun zeroValue!1467 () V!10365)

(declare-fun defaultEntry!1528 () Int)

(declare-fun lt!160473 () Unit!10461)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10365)

(declare-fun lemmaArrayContainsKeyThenInListMap!264 (array!17647 array!17645 (_ BitVec 32) (_ BitVec 32) V!10365 V!10365 (_ BitVec 64) (_ BitVec 32) Int) Unit!10461)

(declare-fun arrayScanForKey!0 (array!17647 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!337606 (= lt!160473 (lemmaArrayContainsKeyThenInListMap!264 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!337606 false))

(declare-fun b!337607 () Bool)

(declare-fun res!186596 () Bool)

(assert (=> b!337607 (=> (not res!186596) (not e!207156))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!337607 (= res!186596 (validKeyInArray!0 k0!1348))))

(declare-fun b!337608 () Bool)

(declare-fun res!186591 () Bool)

(assert (=> b!337608 (=> (not res!186591) (not e!207156))))

(declare-datatypes ((tuple2!5170 0))(
  ( (tuple2!5171 (_1!2595 (_ BitVec 64)) (_2!2595 V!10365)) )
))
(declare-datatypes ((List!4810 0))(
  ( (Nil!4807) (Cons!4806 (h!5662 tuple2!5170) (t!9912 List!4810)) )
))
(declare-datatypes ((ListLongMap!4097 0))(
  ( (ListLongMap!4098 (toList!2064 List!4810)) )
))
(declare-fun contains!2107 (ListLongMap!4097 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1584 (array!17647 array!17645 (_ BitVec 32) (_ BitVec 32) V!10365 V!10365 (_ BitVec 32) Int) ListLongMap!4097)

(assert (=> b!337608 (= res!186591 (not (contains!2107 (getCurrentListMap!1584 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!337609 () Bool)

(declare-fun res!186592 () Bool)

(assert (=> b!337609 (=> (not res!186592) (not e!207156))))

(assert (=> b!337609 (= res!186592 (and (= (size!8699 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8700 _keys!1895) (size!8699 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!337610 () Bool)

(declare-fun res!186594 () Bool)

(assert (=> b!337610 (=> (not res!186594) (not e!207156))))

(declare-datatypes ((List!4811 0))(
  ( (Nil!4808) (Cons!4807 (h!5663 (_ BitVec 64)) (t!9913 List!4811)) )
))
(declare-fun arrayNoDuplicates!0 (array!17647 (_ BitVec 32) List!4811) Bool)

(assert (=> b!337610 (= res!186594 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4808))))

(assert (= (and start!33918 res!186593) b!337609))

(assert (= (and b!337609 res!186592) b!337603))

(assert (= (and b!337603 res!186590) b!337610))

(assert (= (and b!337610 res!186594) b!337607))

(assert (= (and b!337607 res!186596) b!337608))

(assert (= (and b!337608 res!186591) b!337602))

(assert (= (and b!337602 res!186595) b!337605))

(assert (= (and b!337605 c!52238) b!337606))

(assert (= (and b!337605 (not c!52238)) b!337600))

(assert (= (and b!337604 condMapEmpty!11967) mapIsEmpty!11967))

(assert (= (and b!337604 (not condMapEmpty!11967)) mapNonEmpty!11967))

(assert (= (and mapNonEmpty!11967 ((_ is ValueCellFull!3177) mapValue!11967)) b!337601))

(assert (= (and b!337604 ((_ is ValueCellFull!3177) mapDefault!11967)) b!337599))

(assert (= start!33918 b!337604))

(declare-fun m!341067 () Bool)

(assert (=> b!337610 m!341067))

(declare-fun m!341069 () Bool)

(assert (=> b!337607 m!341069))

(declare-fun m!341071 () Bool)

(assert (=> start!33918 m!341071))

(declare-fun m!341073 () Bool)

(assert (=> start!33918 m!341073))

(declare-fun m!341075 () Bool)

(assert (=> start!33918 m!341075))

(declare-fun m!341077 () Bool)

(assert (=> b!337603 m!341077))

(declare-fun m!341079 () Bool)

(assert (=> b!337605 m!341079))

(declare-fun m!341081 () Bool)

(assert (=> b!337602 m!341081))

(declare-fun m!341083 () Bool)

(assert (=> b!337606 m!341083))

(assert (=> b!337606 m!341083))

(declare-fun m!341085 () Bool)

(assert (=> b!337606 m!341085))

(declare-fun m!341087 () Bool)

(assert (=> mapNonEmpty!11967 m!341087))

(declare-fun m!341089 () Bool)

(assert (=> b!337608 m!341089))

(assert (=> b!337608 m!341089))

(declare-fun m!341091 () Bool)

(assert (=> b!337608 m!341091))

(check-sat (not b!337607) (not b!337606) (not b!337603) (not b!337605) (not b!337608) (not start!33918) tp_is_empty!7041 (not mapNonEmpty!11967) (not b!337610) (not b!337602) b_and!14293 (not b_next!7089))
(check-sat b_and!14293 (not b_next!7089))
(get-model)

(declare-fun b!337659 () Bool)

(declare-fun c!52250 () Bool)

(declare-fun lt!160491 () (_ BitVec 64))

(assert (=> b!337659 (= c!52250 (= lt!160491 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!207191 () SeekEntryResult!3231)

(declare-fun e!207190 () SeekEntryResult!3231)

(assert (=> b!337659 (= e!207191 e!207190)))

(declare-fun b!337661 () Bool)

(declare-fun e!207192 () SeekEntryResult!3231)

(assert (=> b!337661 (= e!207192 Undefined!3231)))

(declare-fun b!337662 () Bool)

(declare-fun lt!160490 () SeekEntryResult!3231)

(assert (=> b!337662 (= e!207191 (Found!3231 (index!15105 lt!160490)))))

(declare-fun b!337663 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17647 (_ BitVec 32)) SeekEntryResult!3231)

(assert (=> b!337663 (= e!207190 (seekKeyOrZeroReturnVacant!0 (x!33662 lt!160490) (index!15105 lt!160490) (index!15105 lt!160490) k0!1348 _keys!1895 mask!2385))))

(declare-fun b!337664 () Bool)

(assert (=> b!337664 (= e!207192 e!207191)))

(assert (=> b!337664 (= lt!160491 (select (arr!8348 _keys!1895) (index!15105 lt!160490)))))

(declare-fun c!52249 () Bool)

(assert (=> b!337664 (= c!52249 (= lt!160491 k0!1348))))

(declare-fun b!337660 () Bool)

(assert (=> b!337660 (= e!207190 (MissingZero!3231 (index!15105 lt!160490)))))

(declare-fun d!70609 () Bool)

(declare-fun lt!160489 () SeekEntryResult!3231)

(assert (=> d!70609 (and (or ((_ is Undefined!3231) lt!160489) (not ((_ is Found!3231) lt!160489)) (and (bvsge (index!15104 lt!160489) #b00000000000000000000000000000000) (bvslt (index!15104 lt!160489) (size!8700 _keys!1895)))) (or ((_ is Undefined!3231) lt!160489) ((_ is Found!3231) lt!160489) (not ((_ is MissingZero!3231) lt!160489)) (and (bvsge (index!15103 lt!160489) #b00000000000000000000000000000000) (bvslt (index!15103 lt!160489) (size!8700 _keys!1895)))) (or ((_ is Undefined!3231) lt!160489) ((_ is Found!3231) lt!160489) ((_ is MissingZero!3231) lt!160489) (not ((_ is MissingVacant!3231) lt!160489)) (and (bvsge (index!15106 lt!160489) #b00000000000000000000000000000000) (bvslt (index!15106 lt!160489) (size!8700 _keys!1895)))) (or ((_ is Undefined!3231) lt!160489) (ite ((_ is Found!3231) lt!160489) (= (select (arr!8348 _keys!1895) (index!15104 lt!160489)) k0!1348) (ite ((_ is MissingZero!3231) lt!160489) (= (select (arr!8348 _keys!1895) (index!15103 lt!160489)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3231) lt!160489) (= (select (arr!8348 _keys!1895) (index!15106 lt!160489)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!70609 (= lt!160489 e!207192)))

(declare-fun c!52248 () Bool)

(assert (=> d!70609 (= c!52248 (and ((_ is Intermediate!3231) lt!160490) (undefined!4043 lt!160490)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17647 (_ BitVec 32)) SeekEntryResult!3231)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!70609 (= lt!160490 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!70609 (validMask!0 mask!2385)))

(assert (=> d!70609 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!160489)))

(assert (= (and d!70609 c!52248) b!337661))

(assert (= (and d!70609 (not c!52248)) b!337664))

(assert (= (and b!337664 c!52249) b!337662))

(assert (= (and b!337664 (not c!52249)) b!337659))

(assert (= (and b!337659 c!52250) b!337660))

(assert (= (and b!337659 (not c!52250)) b!337663))

(declare-fun m!341119 () Bool)

(assert (=> b!337663 m!341119))

(declare-fun m!341121 () Bool)

(assert (=> b!337664 m!341121))

(declare-fun m!341123 () Bool)

(assert (=> d!70609 m!341123))

(declare-fun m!341125 () Bool)

(assert (=> d!70609 m!341125))

(declare-fun m!341127 () Bool)

(assert (=> d!70609 m!341127))

(declare-fun m!341129 () Bool)

(assert (=> d!70609 m!341129))

(assert (=> d!70609 m!341127))

(declare-fun m!341131 () Bool)

(assert (=> d!70609 m!341131))

(assert (=> d!70609 m!341071))

(assert (=> b!337602 d!70609))

(declare-fun d!70611 () Bool)

(assert (=> d!70611 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!33918 d!70611))

(declare-fun d!70613 () Bool)

(assert (=> d!70613 (= (array_inv!6182 _values!1525) (bvsge (size!8699 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!33918 d!70613))

(declare-fun d!70615 () Bool)

(assert (=> d!70615 (= (array_inv!6183 _keys!1895) (bvsge (size!8700 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!33918 d!70615))

(declare-fun d!70617 () Bool)

(declare-fun res!186625 () Bool)

(declare-fun e!207204 () Bool)

(assert (=> d!70617 (=> res!186625 e!207204)))

(assert (=> d!70617 (= res!186625 (bvsge #b00000000000000000000000000000000 (size!8700 _keys!1895)))))

(assert (=> d!70617 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4808) e!207204)))

(declare-fun b!337675 () Bool)

(declare-fun e!207202 () Bool)

(declare-fun e!207203 () Bool)

(assert (=> b!337675 (= e!207202 e!207203)))

(declare-fun c!52253 () Bool)

(assert (=> b!337675 (= c!52253 (validKeyInArray!0 (select (arr!8348 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!337676 () Bool)

(assert (=> b!337676 (= e!207204 e!207202)))

(declare-fun res!186624 () Bool)

(assert (=> b!337676 (=> (not res!186624) (not e!207202))))

(declare-fun e!207201 () Bool)

(assert (=> b!337676 (= res!186624 (not e!207201))))

(declare-fun res!186626 () Bool)

(assert (=> b!337676 (=> (not res!186626) (not e!207201))))

(assert (=> b!337676 (= res!186626 (validKeyInArray!0 (select (arr!8348 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!337677 () Bool)

(declare-fun call!26375 () Bool)

(assert (=> b!337677 (= e!207203 call!26375)))

(declare-fun b!337678 () Bool)

(declare-fun contains!2108 (List!4811 (_ BitVec 64)) Bool)

(assert (=> b!337678 (= e!207201 (contains!2108 Nil!4808 (select (arr!8348 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!337679 () Bool)

(assert (=> b!337679 (= e!207203 call!26375)))

(declare-fun bm!26372 () Bool)

(assert (=> bm!26372 (= call!26375 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!52253 (Cons!4807 (select (arr!8348 _keys!1895) #b00000000000000000000000000000000) Nil!4808) Nil!4808)))))

(assert (= (and d!70617 (not res!186625)) b!337676))

(assert (= (and b!337676 res!186626) b!337678))

(assert (= (and b!337676 res!186624) b!337675))

(assert (= (and b!337675 c!52253) b!337679))

(assert (= (and b!337675 (not c!52253)) b!337677))

(assert (= (or b!337679 b!337677) bm!26372))

(declare-fun m!341133 () Bool)

(assert (=> b!337675 m!341133))

(assert (=> b!337675 m!341133))

(declare-fun m!341135 () Bool)

(assert (=> b!337675 m!341135))

(assert (=> b!337676 m!341133))

(assert (=> b!337676 m!341133))

(assert (=> b!337676 m!341135))

(assert (=> b!337678 m!341133))

(assert (=> b!337678 m!341133))

(declare-fun m!341137 () Bool)

(assert (=> b!337678 m!341137))

(assert (=> bm!26372 m!341133))

(declare-fun m!341139 () Bool)

(assert (=> bm!26372 m!341139))

(assert (=> b!337610 d!70617))

(declare-fun d!70619 () Bool)

(assert (=> d!70619 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!337607 d!70619))

(declare-fun d!70621 () Bool)

(assert (=> d!70621 (contains!2107 (getCurrentListMap!1584 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))

(declare-fun lt!160494 () Unit!10461)

(declare-fun choose!1306 (array!17647 array!17645 (_ BitVec 32) (_ BitVec 32) V!10365 V!10365 (_ BitVec 64) (_ BitVec 32) Int) Unit!10461)

(assert (=> d!70621 (= lt!160494 (choose!1306 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> d!70621 (validMask!0 mask!2385)))

(assert (=> d!70621 (= (lemmaArrayContainsKeyThenInListMap!264 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528) lt!160494)))

(declare-fun bs!11635 () Bool)

(assert (= bs!11635 d!70621))

(assert (=> bs!11635 m!341089))

(assert (=> bs!11635 m!341089))

(assert (=> bs!11635 m!341091))

(assert (=> bs!11635 m!341083))

(declare-fun m!341141 () Bool)

(assert (=> bs!11635 m!341141))

(assert (=> bs!11635 m!341071))

(assert (=> b!337606 d!70621))

(declare-fun d!70623 () Bool)

(declare-fun lt!160497 () (_ BitVec 32))

(assert (=> d!70623 (and (or (bvslt lt!160497 #b00000000000000000000000000000000) (bvsge lt!160497 (size!8700 _keys!1895)) (and (bvsge lt!160497 #b00000000000000000000000000000000) (bvslt lt!160497 (size!8700 _keys!1895)))) (bvsge lt!160497 #b00000000000000000000000000000000) (bvslt lt!160497 (size!8700 _keys!1895)) (= (select (arr!8348 _keys!1895) lt!160497) k0!1348))))

(declare-fun e!207207 () (_ BitVec 32))

(assert (=> d!70623 (= lt!160497 e!207207)))

(declare-fun c!52256 () Bool)

(assert (=> d!70623 (= c!52256 (= (select (arr!8348 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!70623 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8700 _keys!1895)) (bvslt (size!8700 _keys!1895) #b01111111111111111111111111111111))))

(assert (=> d!70623 (= (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) lt!160497)))

(declare-fun b!337684 () Bool)

(assert (=> b!337684 (= e!207207 #b00000000000000000000000000000000)))

(declare-fun b!337685 () Bool)

(assert (=> b!337685 (= e!207207 (arrayScanForKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!70623 c!52256) b!337684))

(assert (= (and d!70623 (not c!52256)) b!337685))

(declare-fun m!341143 () Bool)

(assert (=> d!70623 m!341143))

(assert (=> d!70623 m!341133))

(declare-fun m!341145 () Bool)

(assert (=> b!337685 m!341145))

(assert (=> b!337606 d!70623))

(declare-fun b!337695 () Bool)

(declare-fun e!207215 () Bool)

(declare-fun call!26378 () Bool)

(assert (=> b!337695 (= e!207215 call!26378)))

(declare-fun b!337696 () Bool)

(declare-fun e!207214 () Bool)

(assert (=> b!337696 (= e!207214 e!207215)))

(declare-fun lt!160505 () (_ BitVec 64))

(assert (=> b!337696 (= lt!160505 (select (arr!8348 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!160506 () Unit!10461)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17647 (_ BitVec 64) (_ BitVec 32)) Unit!10461)

(assert (=> b!337696 (= lt!160506 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!160505 #b00000000000000000000000000000000))))

(assert (=> b!337696 (arrayContainsKey!0 _keys!1895 lt!160505 #b00000000000000000000000000000000)))

(declare-fun lt!160504 () Unit!10461)

(assert (=> b!337696 (= lt!160504 lt!160506)))

(declare-fun res!186632 () Bool)

(assert (=> b!337696 (= res!186632 (= (seekEntryOrOpen!0 (select (arr!8348 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3231 #b00000000000000000000000000000000)))))

(assert (=> b!337696 (=> (not res!186632) (not e!207215))))

(declare-fun bm!26375 () Bool)

(assert (=> bm!26375 (= call!26378 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun b!337697 () Bool)

(assert (=> b!337697 (= e!207214 call!26378)))

(declare-fun b!337694 () Bool)

(declare-fun e!207216 () Bool)

(assert (=> b!337694 (= e!207216 e!207214)))

(declare-fun c!52259 () Bool)

(assert (=> b!337694 (= c!52259 (validKeyInArray!0 (select (arr!8348 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun d!70625 () Bool)

(declare-fun res!186631 () Bool)

(assert (=> d!70625 (=> res!186631 e!207216)))

(assert (=> d!70625 (= res!186631 (bvsge #b00000000000000000000000000000000 (size!8700 _keys!1895)))))

(assert (=> d!70625 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!207216)))

(assert (= (and d!70625 (not res!186631)) b!337694))

(assert (= (and b!337694 c!52259) b!337696))

(assert (= (and b!337694 (not c!52259)) b!337697))

(assert (= (and b!337696 res!186632) b!337695))

(assert (= (or b!337695 b!337697) bm!26375))

(assert (=> b!337696 m!341133))

(declare-fun m!341147 () Bool)

(assert (=> b!337696 m!341147))

(declare-fun m!341149 () Bool)

(assert (=> b!337696 m!341149))

(assert (=> b!337696 m!341133))

(declare-fun m!341151 () Bool)

(assert (=> b!337696 m!341151))

(declare-fun m!341153 () Bool)

(assert (=> bm!26375 m!341153))

(assert (=> b!337694 m!341133))

(assert (=> b!337694 m!341133))

(assert (=> b!337694 m!341135))

(assert (=> b!337603 d!70625))

(declare-fun d!70627 () Bool)

(declare-fun e!207222 () Bool)

(assert (=> d!70627 e!207222))

(declare-fun res!186635 () Bool)

(assert (=> d!70627 (=> res!186635 e!207222)))

(declare-fun lt!160517 () Bool)

(assert (=> d!70627 (= res!186635 (not lt!160517))))

(declare-fun lt!160515 () Bool)

(assert (=> d!70627 (= lt!160517 lt!160515)))

(declare-fun lt!160518 () Unit!10461)

(declare-fun e!207221 () Unit!10461)

(assert (=> d!70627 (= lt!160518 e!207221)))

(declare-fun c!52262 () Bool)

(assert (=> d!70627 (= c!52262 lt!160515)))

(declare-fun containsKey!318 (List!4810 (_ BitVec 64)) Bool)

(assert (=> d!70627 (= lt!160515 (containsKey!318 (toList!2064 (getCurrentListMap!1584 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!70627 (= (contains!2107 (getCurrentListMap!1584 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!160517)))

(declare-fun b!337704 () Bool)

(declare-fun lt!160516 () Unit!10461)

(assert (=> b!337704 (= e!207221 lt!160516)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!267 (List!4810 (_ BitVec 64)) Unit!10461)

(assert (=> b!337704 (= lt!160516 (lemmaContainsKeyImpliesGetValueByKeyDefined!267 (toList!2064 (getCurrentListMap!1584 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!332 0))(
  ( (Some!331 (v!5728 V!10365)) (None!330) )
))
(declare-fun isDefined!268 (Option!332) Bool)

(declare-fun getValueByKey!326 (List!4810 (_ BitVec 64)) Option!332)

(assert (=> b!337704 (isDefined!268 (getValueByKey!326 (toList!2064 (getCurrentListMap!1584 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!337705 () Bool)

(declare-fun Unit!10465 () Unit!10461)

(assert (=> b!337705 (= e!207221 Unit!10465)))

(declare-fun b!337706 () Bool)

(assert (=> b!337706 (= e!207222 (isDefined!268 (getValueByKey!326 (toList!2064 (getCurrentListMap!1584 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!70627 c!52262) b!337704))

(assert (= (and d!70627 (not c!52262)) b!337705))

(assert (= (and d!70627 (not res!186635)) b!337706))

(declare-fun m!341155 () Bool)

(assert (=> d!70627 m!341155))

(declare-fun m!341157 () Bool)

(assert (=> b!337704 m!341157))

(declare-fun m!341159 () Bool)

(assert (=> b!337704 m!341159))

(assert (=> b!337704 m!341159))

(declare-fun m!341161 () Bool)

(assert (=> b!337704 m!341161))

(assert (=> b!337706 m!341159))

(assert (=> b!337706 m!341159))

(assert (=> b!337706 m!341161))

(assert (=> b!337608 d!70627))

(declare-fun bm!26390 () Bool)

(declare-fun call!26398 () ListLongMap!4097)

(declare-fun call!26396 () ListLongMap!4097)

(assert (=> bm!26390 (= call!26398 call!26396)))

(declare-fun b!337749 () Bool)

(declare-fun e!207256 () ListLongMap!4097)

(declare-fun call!26395 () ListLongMap!4097)

(assert (=> b!337749 (= e!207256 call!26395)))

(declare-fun bm!26391 () Bool)

(declare-fun call!26394 () ListLongMap!4097)

(assert (=> bm!26391 (= call!26395 call!26394)))

(declare-fun b!337750 () Bool)

(declare-fun c!52280 () Bool)

(assert (=> b!337750 (= c!52280 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!207252 () ListLongMap!4097)

(assert (=> b!337750 (= e!207256 e!207252)))

(declare-fun b!337751 () Bool)

(assert (=> b!337751 (= e!207252 call!26395)))

(declare-fun b!337752 () Bool)

(declare-fun e!207261 () Bool)

(declare-fun e!207254 () Bool)

(assert (=> b!337752 (= e!207261 e!207254)))

(declare-fun res!186659 () Bool)

(declare-fun call!26399 () Bool)

(assert (=> b!337752 (= res!186659 call!26399)))

(assert (=> b!337752 (=> (not res!186659) (not e!207254))))

(declare-fun b!337753 () Bool)

(declare-fun e!207249 () Bool)

(assert (=> b!337753 (= e!207249 (validKeyInArray!0 (select (arr!8348 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!337754 () Bool)

(declare-fun res!186657 () Bool)

(declare-fun e!207251 () Bool)

(assert (=> b!337754 (=> (not res!186657) (not e!207251))))

(declare-fun e!207260 () Bool)

(assert (=> b!337754 (= res!186657 e!207260)))

(declare-fun res!186662 () Bool)

(assert (=> b!337754 (=> res!186662 e!207260)))

(declare-fun e!207257 () Bool)

(assert (=> b!337754 (= res!186662 (not e!207257))))

(declare-fun res!186655 () Bool)

(assert (=> b!337754 (=> (not res!186655) (not e!207257))))

(assert (=> b!337754 (= res!186655 (bvslt #b00000000000000000000000000000000 (size!8700 _keys!1895)))))

(declare-fun b!337755 () Bool)

(assert (=> b!337755 (= e!207261 (not call!26399))))

(declare-fun b!337756 () Bool)

(assert (=> b!337756 (= e!207252 call!26398)))

(declare-fun call!26397 () ListLongMap!4097)

(declare-fun c!52275 () Bool)

(declare-fun bm!26392 () Bool)

(declare-fun c!52279 () Bool)

(declare-fun +!713 (ListLongMap!4097 tuple2!5170) ListLongMap!4097)

(assert (=> bm!26392 (= call!26394 (+!713 (ite c!52275 call!26397 (ite c!52279 call!26396 call!26398)) (ite (or c!52275 c!52279) (tuple2!5171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun bm!26393 () Bool)

(declare-fun call!26393 () Bool)

(declare-fun lt!160571 () ListLongMap!4097)

(assert (=> bm!26393 (= call!26393 (contains!2107 lt!160571 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!337757 () Bool)

(declare-fun e!207253 () ListLongMap!4097)

(assert (=> b!337757 (= e!207253 e!207256)))

(assert (=> b!337757 (= c!52279 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!337758 () Bool)

(declare-fun e!207255 () Bool)

(declare-fun apply!269 (ListLongMap!4097 (_ BitVec 64)) V!10365)

(declare-fun get!4562 (ValueCell!3177 V!10365) V!10365)

(declare-fun dynLambda!607 (Int (_ BitVec 64)) V!10365)

(assert (=> b!337758 (= e!207255 (= (apply!269 lt!160571 (select (arr!8348 _keys!1895) #b00000000000000000000000000000000)) (get!4562 (select (arr!8347 _values!1525) #b00000000000000000000000000000000) (dynLambda!607 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!337758 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8699 _values!1525)))))

(assert (=> b!337758 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8700 _keys!1895)))))

(declare-fun b!337759 () Bool)

(declare-fun e!207250 () Bool)

(assert (=> b!337759 (= e!207250 (= (apply!269 lt!160571 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun bm!26394 () Bool)

(assert (=> bm!26394 (= call!26396 call!26397)))

(declare-fun b!337760 () Bool)

(declare-fun e!207258 () Bool)

(assert (=> b!337760 (= e!207251 e!207258)))

(declare-fun c!52276 () Bool)

(assert (=> b!337760 (= c!52276 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!337761 () Bool)

(declare-fun e!207259 () Unit!10461)

(declare-fun lt!160577 () Unit!10461)

(assert (=> b!337761 (= e!207259 lt!160577)))

(declare-fun lt!160567 () ListLongMap!4097)

(declare-fun getCurrentListMapNoExtraKeys!588 (array!17647 array!17645 (_ BitVec 32) (_ BitVec 32) V!10365 V!10365 (_ BitVec 32) Int) ListLongMap!4097)

(assert (=> b!337761 (= lt!160567 (getCurrentListMapNoExtraKeys!588 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!160563 () (_ BitVec 64))

(assert (=> b!337761 (= lt!160563 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!160584 () (_ BitVec 64))

(assert (=> b!337761 (= lt!160584 (select (arr!8348 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!160564 () Unit!10461)

(declare-fun addStillContains!245 (ListLongMap!4097 (_ BitVec 64) V!10365 (_ BitVec 64)) Unit!10461)

(assert (=> b!337761 (= lt!160564 (addStillContains!245 lt!160567 lt!160563 zeroValue!1467 lt!160584))))

(assert (=> b!337761 (contains!2107 (+!713 lt!160567 (tuple2!5171 lt!160563 zeroValue!1467)) lt!160584)))

(declare-fun lt!160575 () Unit!10461)

(assert (=> b!337761 (= lt!160575 lt!160564)))

(declare-fun lt!160579 () ListLongMap!4097)

(assert (=> b!337761 (= lt!160579 (getCurrentListMapNoExtraKeys!588 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!160572 () (_ BitVec 64))

(assert (=> b!337761 (= lt!160572 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!160576 () (_ BitVec 64))

(assert (=> b!337761 (= lt!160576 (select (arr!8348 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!160566 () Unit!10461)

(declare-fun addApplyDifferent!245 (ListLongMap!4097 (_ BitVec 64) V!10365 (_ BitVec 64)) Unit!10461)

(assert (=> b!337761 (= lt!160566 (addApplyDifferent!245 lt!160579 lt!160572 minValue!1467 lt!160576))))

(assert (=> b!337761 (= (apply!269 (+!713 lt!160579 (tuple2!5171 lt!160572 minValue!1467)) lt!160576) (apply!269 lt!160579 lt!160576))))

(declare-fun lt!160573 () Unit!10461)

(assert (=> b!337761 (= lt!160573 lt!160566)))

(declare-fun lt!160581 () ListLongMap!4097)

(assert (=> b!337761 (= lt!160581 (getCurrentListMapNoExtraKeys!588 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!160578 () (_ BitVec 64))

(assert (=> b!337761 (= lt!160578 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!160583 () (_ BitVec 64))

(assert (=> b!337761 (= lt!160583 (select (arr!8348 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!160569 () Unit!10461)

(assert (=> b!337761 (= lt!160569 (addApplyDifferent!245 lt!160581 lt!160578 zeroValue!1467 lt!160583))))

(assert (=> b!337761 (= (apply!269 (+!713 lt!160581 (tuple2!5171 lt!160578 zeroValue!1467)) lt!160583) (apply!269 lt!160581 lt!160583))))

(declare-fun lt!160574 () Unit!10461)

(assert (=> b!337761 (= lt!160574 lt!160569)))

(declare-fun lt!160565 () ListLongMap!4097)

(assert (=> b!337761 (= lt!160565 (getCurrentListMapNoExtraKeys!588 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!160580 () (_ BitVec 64))

(assert (=> b!337761 (= lt!160580 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!160568 () (_ BitVec 64))

(assert (=> b!337761 (= lt!160568 (select (arr!8348 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!337761 (= lt!160577 (addApplyDifferent!245 lt!160565 lt!160580 minValue!1467 lt!160568))))

(assert (=> b!337761 (= (apply!269 (+!713 lt!160565 (tuple2!5171 lt!160580 minValue!1467)) lt!160568) (apply!269 lt!160565 lt!160568))))

(declare-fun bm!26395 () Bool)

(assert (=> bm!26395 (= call!26399 (contains!2107 lt!160571 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!337762 () Bool)

(assert (=> b!337762 (= e!207253 (+!713 call!26394 (tuple2!5171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(declare-fun d!70629 () Bool)

(assert (=> d!70629 e!207251))

(declare-fun res!186661 () Bool)

(assert (=> d!70629 (=> (not res!186661) (not e!207251))))

(assert (=> d!70629 (= res!186661 (or (bvsge #b00000000000000000000000000000000 (size!8700 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8700 _keys!1895)))))))

(declare-fun lt!160582 () ListLongMap!4097)

(assert (=> d!70629 (= lt!160571 lt!160582)))

(declare-fun lt!160570 () Unit!10461)

(assert (=> d!70629 (= lt!160570 e!207259)))

(declare-fun c!52277 () Bool)

(assert (=> d!70629 (= c!52277 e!207249)))

(declare-fun res!186660 () Bool)

(assert (=> d!70629 (=> (not res!186660) (not e!207249))))

(assert (=> d!70629 (= res!186660 (bvslt #b00000000000000000000000000000000 (size!8700 _keys!1895)))))

(assert (=> d!70629 (= lt!160582 e!207253)))

(assert (=> d!70629 (= c!52275 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!70629 (validMask!0 mask!2385)))

(assert (=> d!70629 (= (getCurrentListMap!1584 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!160571)))

(declare-fun b!337763 () Bool)

(declare-fun res!186656 () Bool)

(assert (=> b!337763 (=> (not res!186656) (not e!207251))))

(assert (=> b!337763 (= res!186656 e!207261)))

(declare-fun c!52278 () Bool)

(assert (=> b!337763 (= c!52278 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!337764 () Bool)

(assert (=> b!337764 (= e!207257 (validKeyInArray!0 (select (arr!8348 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!337765 () Bool)

(declare-fun Unit!10466 () Unit!10461)

(assert (=> b!337765 (= e!207259 Unit!10466)))

(declare-fun b!337766 () Bool)

(assert (=> b!337766 (= e!207260 e!207255)))

(declare-fun res!186658 () Bool)

(assert (=> b!337766 (=> (not res!186658) (not e!207255))))

(assert (=> b!337766 (= res!186658 (contains!2107 lt!160571 (select (arr!8348 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!337766 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8700 _keys!1895)))))

(declare-fun b!337767 () Bool)

(assert (=> b!337767 (= e!207254 (= (apply!269 lt!160571 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(declare-fun b!337768 () Bool)

(assert (=> b!337768 (= e!207258 e!207250)))

(declare-fun res!186654 () Bool)

(assert (=> b!337768 (= res!186654 call!26393)))

(assert (=> b!337768 (=> (not res!186654) (not e!207250))))

(declare-fun b!337769 () Bool)

(assert (=> b!337769 (= e!207258 (not call!26393))))

(declare-fun bm!26396 () Bool)

(assert (=> bm!26396 (= call!26397 (getCurrentListMapNoExtraKeys!588 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(assert (= (and d!70629 c!52275) b!337762))

(assert (= (and d!70629 (not c!52275)) b!337757))

(assert (= (and b!337757 c!52279) b!337749))

(assert (= (and b!337757 (not c!52279)) b!337750))

(assert (= (and b!337750 c!52280) b!337751))

(assert (= (and b!337750 (not c!52280)) b!337756))

(assert (= (or b!337751 b!337756) bm!26390))

(assert (= (or b!337749 bm!26390) bm!26394))

(assert (= (or b!337749 b!337751) bm!26391))

(assert (= (or b!337762 bm!26394) bm!26396))

(assert (= (or b!337762 bm!26391) bm!26392))

(assert (= (and d!70629 res!186660) b!337753))

(assert (= (and d!70629 c!52277) b!337761))

(assert (= (and d!70629 (not c!52277)) b!337765))

(assert (= (and d!70629 res!186661) b!337754))

(assert (= (and b!337754 res!186655) b!337764))

(assert (= (and b!337754 (not res!186662)) b!337766))

(assert (= (and b!337766 res!186658) b!337758))

(assert (= (and b!337754 res!186657) b!337763))

(assert (= (and b!337763 c!52278) b!337752))

(assert (= (and b!337763 (not c!52278)) b!337755))

(assert (= (and b!337752 res!186659) b!337767))

(assert (= (or b!337752 b!337755) bm!26395))

(assert (= (and b!337763 res!186656) b!337760))

(assert (= (and b!337760 c!52276) b!337768))

(assert (= (and b!337760 (not c!52276)) b!337769))

(assert (= (and b!337768 res!186654) b!337759))

(assert (= (or b!337768 b!337769) bm!26393))

(declare-fun b_lambda!8445 () Bool)

(assert (=> (not b_lambda!8445) (not b!337758)))

(declare-fun t!9915 () Bool)

(declare-fun tb!3061 () Bool)

(assert (=> (and start!33918 (= defaultEntry!1528 defaultEntry!1528) t!9915) tb!3061))

(declare-fun result!5497 () Bool)

(assert (=> tb!3061 (= result!5497 tp_is_empty!7041)))

(assert (=> b!337758 t!9915))

(declare-fun b_and!14297 () Bool)

(assert (= b_and!14293 (and (=> t!9915 result!5497) b_and!14297)))

(declare-fun m!341163 () Bool)

(assert (=> b!337761 m!341163))

(declare-fun m!341165 () Bool)

(assert (=> b!337761 m!341165))

(declare-fun m!341167 () Bool)

(assert (=> b!337761 m!341167))

(declare-fun m!341169 () Bool)

(assert (=> b!337761 m!341169))

(assert (=> b!337761 m!341133))

(declare-fun m!341171 () Bool)

(assert (=> b!337761 m!341171))

(declare-fun m!341173 () Bool)

(assert (=> b!337761 m!341173))

(declare-fun m!341175 () Bool)

(assert (=> b!337761 m!341175))

(assert (=> b!337761 m!341165))

(declare-fun m!341177 () Bool)

(assert (=> b!337761 m!341177))

(declare-fun m!341179 () Bool)

(assert (=> b!337761 m!341179))

(declare-fun m!341181 () Bool)

(assert (=> b!337761 m!341181))

(declare-fun m!341183 () Bool)

(assert (=> b!337761 m!341183))

(declare-fun m!341185 () Bool)

(assert (=> b!337761 m!341185))

(assert (=> b!337761 m!341183))

(assert (=> b!337761 m!341169))

(declare-fun m!341187 () Bool)

(assert (=> b!337761 m!341187))

(declare-fun m!341189 () Bool)

(assert (=> b!337761 m!341189))

(declare-fun m!341191 () Bool)

(assert (=> b!337761 m!341191))

(assert (=> b!337761 m!341181))

(declare-fun m!341193 () Bool)

(assert (=> b!337761 m!341193))

(declare-fun m!341195 () Bool)

(assert (=> b!337758 m!341195))

(assert (=> b!337758 m!341133))

(declare-fun m!341197 () Bool)

(assert (=> b!337758 m!341197))

(assert (=> b!337758 m!341133))

(declare-fun m!341199 () Bool)

(assert (=> b!337758 m!341199))

(assert (=> b!337758 m!341199))

(assert (=> b!337758 m!341195))

(declare-fun m!341201 () Bool)

(assert (=> b!337758 m!341201))

(declare-fun m!341203 () Bool)

(assert (=> bm!26392 m!341203))

(assert (=> d!70629 m!341071))

(assert (=> b!337764 m!341133))

(assert (=> b!337764 m!341133))

(assert (=> b!337764 m!341135))

(declare-fun m!341205 () Bool)

(assert (=> b!337759 m!341205))

(declare-fun m!341207 () Bool)

(assert (=> b!337762 m!341207))

(declare-fun m!341209 () Bool)

(assert (=> bm!26395 m!341209))

(declare-fun m!341211 () Bool)

(assert (=> bm!26393 m!341211))

(assert (=> b!337766 m!341133))

(assert (=> b!337766 m!341133))

(declare-fun m!341213 () Bool)

(assert (=> b!337766 m!341213))

(assert (=> b!337753 m!341133))

(assert (=> b!337753 m!341133))

(assert (=> b!337753 m!341135))

(declare-fun m!341215 () Bool)

(assert (=> b!337767 m!341215))

(assert (=> bm!26396 m!341177))

(assert (=> b!337608 d!70629))

(declare-fun d!70631 () Bool)

(declare-fun res!186667 () Bool)

(declare-fun e!207266 () Bool)

(assert (=> d!70631 (=> res!186667 e!207266)))

(assert (=> d!70631 (= res!186667 (= (select (arr!8348 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!70631 (= (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) e!207266)))

(declare-fun b!337776 () Bool)

(declare-fun e!207267 () Bool)

(assert (=> b!337776 (= e!207266 e!207267)))

(declare-fun res!186668 () Bool)

(assert (=> b!337776 (=> (not res!186668) (not e!207267))))

(assert (=> b!337776 (= res!186668 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8700 _keys!1895)))))

(declare-fun b!337777 () Bool)

(assert (=> b!337777 (= e!207267 (arrayContainsKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!70631 (not res!186667)) b!337776))

(assert (= (and b!337776 res!186668) b!337777))

(assert (=> d!70631 m!341133))

(declare-fun m!341217 () Bool)

(assert (=> b!337777 m!341217))

(assert (=> b!337605 d!70631))

(declare-fun mapIsEmpty!11973 () Bool)

(declare-fun mapRes!11973 () Bool)

(assert (=> mapIsEmpty!11973 mapRes!11973))

(declare-fun b!337785 () Bool)

(declare-fun e!207273 () Bool)

(assert (=> b!337785 (= e!207273 tp_is_empty!7041)))

(declare-fun mapNonEmpty!11973 () Bool)

(declare-fun tp!24789 () Bool)

(declare-fun e!207272 () Bool)

(assert (=> mapNonEmpty!11973 (= mapRes!11973 (and tp!24789 e!207272))))

(declare-fun mapRest!11973 () (Array (_ BitVec 32) ValueCell!3177))

(declare-fun mapKey!11973 () (_ BitVec 32))

(declare-fun mapValue!11973 () ValueCell!3177)

(assert (=> mapNonEmpty!11973 (= mapRest!11967 (store mapRest!11973 mapKey!11973 mapValue!11973))))

(declare-fun condMapEmpty!11973 () Bool)

(declare-fun mapDefault!11973 () ValueCell!3177)

(assert (=> mapNonEmpty!11967 (= condMapEmpty!11973 (= mapRest!11967 ((as const (Array (_ BitVec 32) ValueCell!3177)) mapDefault!11973)))))

(assert (=> mapNonEmpty!11967 (= tp!24779 (and e!207273 mapRes!11973))))

(declare-fun b!337784 () Bool)

(assert (=> b!337784 (= e!207272 tp_is_empty!7041)))

(assert (= (and mapNonEmpty!11967 condMapEmpty!11973) mapIsEmpty!11973))

(assert (= (and mapNonEmpty!11967 (not condMapEmpty!11973)) mapNonEmpty!11973))

(assert (= (and mapNonEmpty!11973 ((_ is ValueCellFull!3177) mapValue!11973)) b!337784))

(assert (= (and mapNonEmpty!11967 ((_ is ValueCellFull!3177) mapDefault!11973)) b!337785))

(declare-fun m!341219 () Bool)

(assert (=> mapNonEmpty!11973 m!341219))

(declare-fun b_lambda!8447 () Bool)

(assert (= b_lambda!8445 (or (and start!33918 b_free!7089) b_lambda!8447)))

(check-sat (not b!337764) (not b!337759) (not b_lambda!8447) (not b!337676) (not d!70629) (not b!337706) (not bm!26396) (not mapNonEmpty!11973) (not b!337696) (not b!337762) (not b!337685) (not bm!26393) (not bm!26392) (not b!337675) (not b!337678) (not d!70609) (not bm!26372) (not bm!26375) (not bm!26395) (not b!337704) (not b!337777) (not b!337767) (not b!337766) b_and!14297 (not b!337758) (not b_next!7089) (not d!70627) (not b!337761) (not b!337753) (not b!337694) (not b!337663) (not d!70621) tp_is_empty!7041)
(check-sat b_and!14297 (not b_next!7089))
