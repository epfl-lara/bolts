; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4546 () Bool)

(assert start!4546)

(declare-fun b_free!1269 () Bool)

(declare-fun b_next!1269 () Bool)

(assert (=> start!4546 (= b_free!1269 (not b_next!1269))))

(declare-fun tp!5250 () Bool)

(declare-fun b_and!2097 () Bool)

(assert (=> start!4546 (= tp!5250 b_and!2097)))

(declare-fun b!35560 () Bool)

(declare-fun e!22462 () Bool)

(declare-fun e!22466 () Bool)

(declare-fun mapRes!1987 () Bool)

(assert (=> b!35560 (= e!22462 (and e!22466 mapRes!1987))))

(declare-fun condMapEmpty!1987 () Bool)

(declare-datatypes ((V!1989 0))(
  ( (V!1990 (val!838 Int)) )
))
(declare-datatypes ((ValueCell!612 0))(
  ( (ValueCellFull!612 (v!1935 V!1989)) (EmptyCell!612) )
))
(declare-datatypes ((array!2455 0))(
  ( (array!2456 (arr!1173 (Array (_ BitVec 32) ValueCell!612)) (size!1274 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2455)

(declare-fun mapDefault!1987 () ValueCell!612)

(assert (=> b!35560 (= condMapEmpty!1987 (= (arr!1173 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!612)) mapDefault!1987)))))

(declare-fun b!35561 () Bool)

(declare-fun res!21573 () Bool)

(declare-fun e!22461 () Bool)

(assert (=> b!35561 (=> (not res!21573) (not e!22461))))

(declare-datatypes ((array!2457 0))(
  ( (array!2458 (arr!1174 (Array (_ BitVec 32) (_ BitVec 64))) (size!1275 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2457)

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!2457 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!35561 (= res!21573 (not (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000)))))

(declare-fun b!35562 () Bool)

(declare-fun e!22464 () Bool)

(declare-fun tp_is_empty!1623 () Bool)

(assert (=> b!35562 (= e!22464 tp_is_empty!1623)))

(declare-fun mapNonEmpty!1987 () Bool)

(declare-fun tp!5251 () Bool)

(assert (=> mapNonEmpty!1987 (= mapRes!1987 (and tp!5251 e!22464))))

(declare-fun mapRest!1987 () (Array (_ BitVec 32) ValueCell!612))

(declare-fun mapValue!1987 () ValueCell!612)

(declare-fun mapKey!1987 () (_ BitVec 32))

(assert (=> mapNonEmpty!1987 (= (arr!1173 _values!1501) (store mapRest!1987 mapKey!1987 mapValue!1987))))

(declare-fun b!35563 () Bool)

(declare-fun res!21578 () Bool)

(declare-fun e!22463 () Bool)

(assert (=> b!35563 (=> (not res!21578) (not e!22463))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!35563 (= res!21578 (validKeyInArray!0 k0!1304))))

(declare-fun b!35564 () Bool)

(assert (=> b!35564 (= e!22466 tp_is_empty!1623)))

(declare-fun res!21579 () Bool)

(assert (=> start!4546 (=> (not res!21579) (not e!22463))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4546 (= res!21579 (validMask!0 mask!2294))))

(assert (=> start!4546 e!22463))

(assert (=> start!4546 true))

(assert (=> start!4546 tp!5250))

(declare-fun array_inv!775 (array!2455) Bool)

(assert (=> start!4546 (and (array_inv!775 _values!1501) e!22462)))

(declare-fun array_inv!776 (array!2457) Bool)

(assert (=> start!4546 (array_inv!776 _keys!1833)))

(assert (=> start!4546 tp_is_empty!1623))

(declare-fun b!35565 () Bool)

(declare-fun e!22467 () Bool)

(assert (=> b!35565 (= e!22461 e!22467)))

(declare-fun res!21577 () Bool)

(assert (=> b!35565 (=> (not res!21577) (not e!22467))))

(declare-datatypes ((SeekEntryResult!170 0))(
  ( (MissingZero!170 (index!2802 (_ BitVec 32))) (Found!170 (index!2803 (_ BitVec 32))) (Intermediate!170 (undefined!982 Bool) (index!2804 (_ BitVec 32)) (x!7032 (_ BitVec 32))) (Undefined!170) (MissingVacant!170 (index!2805 (_ BitVec 32))) )
))
(declare-fun lt!13079 () SeekEntryResult!170)

(get-info :version)

(assert (=> b!35565 (= res!21577 ((_ is Found!170) lt!13079))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!2457 (_ BitVec 32)) SeekEntryResult!170)

(assert (=> b!35565 (= lt!13079 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun b!35566 () Bool)

(declare-fun res!21580 () Bool)

(assert (=> b!35566 (=> (not res!21580) (not e!22463))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!35566 (= res!21580 (and (= (size!1274 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1275 _keys!1833) (size!1274 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!35567 () Bool)

(assert (=> b!35567 (= e!22467 (not false))))

(declare-datatypes ((tuple2!1344 0))(
  ( (tuple2!1345 (_1!682 (_ BitVec 64)) (_2!682 V!1989)) )
))
(declare-datatypes ((List!952 0))(
  ( (Nil!949) (Cons!948 (h!1515 tuple2!1344) (t!3663 List!952)) )
))
(declare-datatypes ((ListLongMap!925 0))(
  ( (ListLongMap!926 (toList!478 List!952)) )
))
(declare-fun lt!13080 () ListLongMap!925)

(declare-fun contains!423 (ListLongMap!925 (_ BitVec 64)) Bool)

(assert (=> b!35567 (contains!423 lt!13080 (select (arr!1174 _keys!1833) (index!2803 lt!13079)))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((Unit!783 0))(
  ( (Unit!784) )
))
(declare-fun lt!13081 () Unit!783)

(declare-fun zeroValue!1443 () V!1989)

(declare-fun minValue!1443 () V!1989)

(declare-fun lemmaValidKeyInArrayIsInListMap!69 (array!2457 array!2455 (_ BitVec 32) (_ BitVec 32) V!1989 V!1989 (_ BitVec 32) Int) Unit!783)

(assert (=> b!35567 (= lt!13081 (lemmaValidKeyInArrayIsInListMap!69 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 (index!2803 lt!13079) defaultEntry!1504))))

(declare-fun b!35568 () Bool)

(declare-fun res!21575 () Bool)

(assert (=> b!35568 (=> (not res!21575) (not e!22463))))

(declare-datatypes ((List!953 0))(
  ( (Nil!950) (Cons!949 (h!1516 (_ BitVec 64)) (t!3664 List!953)) )
))
(declare-fun arrayNoDuplicates!0 (array!2457 (_ BitVec 32) List!953) Bool)

(assert (=> b!35568 (= res!21575 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!950))))

(declare-fun b!35569 () Bool)

(assert (=> b!35569 (= e!22463 e!22461)))

(declare-fun res!21574 () Bool)

(assert (=> b!35569 (=> (not res!21574) (not e!22461))))

(assert (=> b!35569 (= res!21574 (not (contains!423 lt!13080 k0!1304)))))

(declare-fun getCurrentListMap!299 (array!2457 array!2455 (_ BitVec 32) (_ BitVec 32) V!1989 V!1989 (_ BitVec 32) Int) ListLongMap!925)

(assert (=> b!35569 (= lt!13080 (getCurrentListMap!299 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun mapIsEmpty!1987 () Bool)

(assert (=> mapIsEmpty!1987 mapRes!1987))

(declare-fun b!35570 () Bool)

(declare-fun res!21576 () Bool)

(assert (=> b!35570 (=> (not res!21576) (not e!22463))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2457 (_ BitVec 32)) Bool)

(assert (=> b!35570 (= res!21576 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(assert (= (and start!4546 res!21579) b!35566))

(assert (= (and b!35566 res!21580) b!35570))

(assert (= (and b!35570 res!21576) b!35568))

(assert (= (and b!35568 res!21575) b!35563))

(assert (= (and b!35563 res!21578) b!35569))

(assert (= (and b!35569 res!21574) b!35561))

(assert (= (and b!35561 res!21573) b!35565))

(assert (= (and b!35565 res!21577) b!35567))

(assert (= (and b!35560 condMapEmpty!1987) mapIsEmpty!1987))

(assert (= (and b!35560 (not condMapEmpty!1987)) mapNonEmpty!1987))

(assert (= (and mapNonEmpty!1987 ((_ is ValueCellFull!612) mapValue!1987)) b!35562))

(assert (= (and b!35560 ((_ is ValueCellFull!612) mapDefault!1987)) b!35564))

(assert (= start!4546 b!35560))

(declare-fun m!28597 () Bool)

(assert (=> start!4546 m!28597))

(declare-fun m!28599 () Bool)

(assert (=> start!4546 m!28599))

(declare-fun m!28601 () Bool)

(assert (=> start!4546 m!28601))

(declare-fun m!28603 () Bool)

(assert (=> b!35561 m!28603))

(declare-fun m!28605 () Bool)

(assert (=> b!35563 m!28605))

(declare-fun m!28607 () Bool)

(assert (=> b!35567 m!28607))

(assert (=> b!35567 m!28607))

(declare-fun m!28609 () Bool)

(assert (=> b!35567 m!28609))

(declare-fun m!28611 () Bool)

(assert (=> b!35567 m!28611))

(declare-fun m!28613 () Bool)

(assert (=> b!35565 m!28613))

(declare-fun m!28615 () Bool)

(assert (=> mapNonEmpty!1987 m!28615))

(declare-fun m!28617 () Bool)

(assert (=> b!35568 m!28617))

(declare-fun m!28619 () Bool)

(assert (=> b!35569 m!28619))

(declare-fun m!28621 () Bool)

(assert (=> b!35569 m!28621))

(declare-fun m!28623 () Bool)

(assert (=> b!35570 m!28623))

(check-sat (not b!35565) (not b!35567) (not b_next!1269) tp_is_empty!1623 (not b!35561) (not b!35569) (not mapNonEmpty!1987) b_and!2097 (not b!35563) (not b!35570) (not b!35568) (not start!4546))
(check-sat b_and!2097 (not b_next!1269))
(get-model)

(declare-fun d!5327 () Bool)

(declare-fun res!21609 () Bool)

(declare-fun e!22493 () Bool)

(assert (=> d!5327 (=> res!21609 e!22493)))

(assert (=> d!5327 (= res!21609 (= (select (arr!1174 _keys!1833) #b00000000000000000000000000000000) k0!1304))))

(assert (=> d!5327 (= (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000) e!22493)))

(declare-fun b!35608 () Bool)

(declare-fun e!22494 () Bool)

(assert (=> b!35608 (= e!22493 e!22494)))

(declare-fun res!21610 () Bool)

(assert (=> b!35608 (=> (not res!21610) (not e!22494))))

(assert (=> b!35608 (= res!21610 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1275 _keys!1833)))))

(declare-fun b!35609 () Bool)

(assert (=> b!35609 (= e!22494 (arrayContainsKey!0 _keys!1833 k0!1304 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!5327 (not res!21609)) b!35608))

(assert (= (and b!35608 res!21610) b!35609))

(declare-fun m!28653 () Bool)

(assert (=> d!5327 m!28653))

(declare-fun m!28655 () Bool)

(assert (=> b!35609 m!28655))

(assert (=> b!35561 d!5327))

(declare-fun b!35622 () Bool)

(declare-fun e!22503 () SeekEntryResult!170)

(declare-fun lt!13100 () SeekEntryResult!170)

(assert (=> b!35622 (= e!22503 (Found!170 (index!2804 lt!13100)))))

(declare-fun b!35623 () Bool)

(declare-fun e!22502 () SeekEntryResult!170)

(assert (=> b!35623 (= e!22502 (MissingZero!170 (index!2804 lt!13100)))))

(declare-fun b!35624 () Bool)

(declare-fun e!22501 () SeekEntryResult!170)

(assert (=> b!35624 (= e!22501 Undefined!170)))

(declare-fun d!5329 () Bool)

(declare-fun lt!13101 () SeekEntryResult!170)

(assert (=> d!5329 (and (or ((_ is MissingVacant!170) lt!13101) (not ((_ is Found!170) lt!13101)) (and (bvsge (index!2803 lt!13101) #b00000000000000000000000000000000) (bvslt (index!2803 lt!13101) (size!1275 _keys!1833)))) (not ((_ is MissingVacant!170) lt!13101)) (or (not ((_ is Found!170) lt!13101)) (= (select (arr!1174 _keys!1833) (index!2803 lt!13101)) k0!1304)))))

(assert (=> d!5329 (= lt!13101 e!22501)))

(declare-fun c!4051 () Bool)

(assert (=> d!5329 (= c!4051 (and ((_ is Intermediate!170) lt!13100) (undefined!982 lt!13100)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2457 (_ BitVec 32)) SeekEntryResult!170)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!5329 (= lt!13100 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1304 mask!2294) k0!1304 _keys!1833 mask!2294))))

(assert (=> d!5329 (validMask!0 mask!2294)))

(assert (=> d!5329 (= (seekEntry!0 k0!1304 _keys!1833 mask!2294) lt!13101)))

(declare-fun b!35625 () Bool)

(declare-fun c!4052 () Bool)

(declare-fun lt!13099 () (_ BitVec 64))

(assert (=> b!35625 (= c!4052 (= lt!13099 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!35625 (= e!22503 e!22502)))

(declare-fun b!35626 () Bool)

(declare-fun lt!13102 () SeekEntryResult!170)

(assert (=> b!35626 (= e!22502 (ite ((_ is MissingVacant!170) lt!13102) (MissingZero!170 (index!2805 lt!13102)) lt!13102))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2457 (_ BitVec 32)) SeekEntryResult!170)

(assert (=> b!35626 (= lt!13102 (seekKeyOrZeroReturnVacant!0 (x!7032 lt!13100) (index!2804 lt!13100) (index!2804 lt!13100) k0!1304 _keys!1833 mask!2294))))

(declare-fun b!35627 () Bool)

(assert (=> b!35627 (= e!22501 e!22503)))

(assert (=> b!35627 (= lt!13099 (select (arr!1174 _keys!1833) (index!2804 lt!13100)))))

(declare-fun c!4053 () Bool)

(assert (=> b!35627 (= c!4053 (= lt!13099 k0!1304))))

(assert (= (and d!5329 c!4051) b!35624))

(assert (= (and d!5329 (not c!4051)) b!35627))

(assert (= (and b!35627 c!4053) b!35622))

(assert (= (and b!35627 (not c!4053)) b!35625))

(assert (= (and b!35625 c!4052) b!35623))

(assert (= (and b!35625 (not c!4052)) b!35626))

(declare-fun m!28657 () Bool)

(assert (=> d!5329 m!28657))

(declare-fun m!28659 () Bool)

(assert (=> d!5329 m!28659))

(assert (=> d!5329 m!28659))

(declare-fun m!28661 () Bool)

(assert (=> d!5329 m!28661))

(assert (=> d!5329 m!28597))

(declare-fun m!28663 () Bool)

(assert (=> b!35626 m!28663))

(declare-fun m!28665 () Bool)

(assert (=> b!35627 m!28665))

(assert (=> b!35565 d!5329))

(declare-fun b!35636 () Bool)

(declare-fun e!22510 () Bool)

(declare-fun call!2808 () Bool)

(assert (=> b!35636 (= e!22510 call!2808)))

(declare-fun b!35638 () Bool)

(declare-fun e!22511 () Bool)

(assert (=> b!35638 (= e!22511 call!2808)))

(declare-fun b!35639 () Bool)

(assert (=> b!35639 (= e!22510 e!22511)))

(declare-fun lt!13110 () (_ BitVec 64))

(assert (=> b!35639 (= lt!13110 (select (arr!1174 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!13111 () Unit!783)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2457 (_ BitVec 64) (_ BitVec 32)) Unit!783)

(assert (=> b!35639 (= lt!13111 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1833 lt!13110 #b00000000000000000000000000000000))))

(assert (=> b!35639 (arrayContainsKey!0 _keys!1833 lt!13110 #b00000000000000000000000000000000)))

(declare-fun lt!13109 () Unit!783)

(assert (=> b!35639 (= lt!13109 lt!13111)))

(declare-fun res!21615 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2457 (_ BitVec 32)) SeekEntryResult!170)

(assert (=> b!35639 (= res!21615 (= (seekEntryOrOpen!0 (select (arr!1174 _keys!1833) #b00000000000000000000000000000000) _keys!1833 mask!2294) (Found!170 #b00000000000000000000000000000000)))))

(assert (=> b!35639 (=> (not res!21615) (not e!22511))))

(declare-fun bm!2805 () Bool)

(assert (=> bm!2805 (= call!2808 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1833 mask!2294))))

(declare-fun b!35637 () Bool)

(declare-fun e!22512 () Bool)

(assert (=> b!35637 (= e!22512 e!22510)))

(declare-fun c!4056 () Bool)

(assert (=> b!35637 (= c!4056 (validKeyInArray!0 (select (arr!1174 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun d!5331 () Bool)

(declare-fun res!21616 () Bool)

(assert (=> d!5331 (=> res!21616 e!22512)))

(assert (=> d!5331 (= res!21616 (bvsge #b00000000000000000000000000000000 (size!1275 _keys!1833)))))

(assert (=> d!5331 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294) e!22512)))

(assert (= (and d!5331 (not res!21616)) b!35637))

(assert (= (and b!35637 c!4056) b!35639))

(assert (= (and b!35637 (not c!4056)) b!35636))

(assert (= (and b!35639 res!21615) b!35638))

(assert (= (or b!35638 b!35636) bm!2805))

(assert (=> b!35639 m!28653))

(declare-fun m!28667 () Bool)

(assert (=> b!35639 m!28667))

(declare-fun m!28669 () Bool)

(assert (=> b!35639 m!28669))

(assert (=> b!35639 m!28653))

(declare-fun m!28671 () Bool)

(assert (=> b!35639 m!28671))

(declare-fun m!28673 () Bool)

(assert (=> bm!2805 m!28673))

(assert (=> b!35637 m!28653))

(assert (=> b!35637 m!28653))

(declare-fun m!28675 () Bool)

(assert (=> b!35637 m!28675))

(assert (=> b!35570 d!5331))

(declare-fun d!5333 () Bool)

(declare-fun e!22517 () Bool)

(assert (=> d!5333 e!22517))

(declare-fun res!21619 () Bool)

(assert (=> d!5333 (=> res!21619 e!22517)))

(declare-fun lt!13121 () Bool)

(assert (=> d!5333 (= res!21619 (not lt!13121))))

(declare-fun lt!13122 () Bool)

(assert (=> d!5333 (= lt!13121 lt!13122)))

(declare-fun lt!13120 () Unit!783)

(declare-fun e!22518 () Unit!783)

(assert (=> d!5333 (= lt!13120 e!22518)))

(declare-fun c!4059 () Bool)

(assert (=> d!5333 (= c!4059 lt!13122)))

(declare-fun containsKey!37 (List!952 (_ BitVec 64)) Bool)

(assert (=> d!5333 (= lt!13122 (containsKey!37 (toList!478 lt!13080) (select (arr!1174 _keys!1833) (index!2803 lt!13079))))))

(assert (=> d!5333 (= (contains!423 lt!13080 (select (arr!1174 _keys!1833) (index!2803 lt!13079))) lt!13121)))

(declare-fun b!35646 () Bool)

(declare-fun lt!13123 () Unit!783)

(assert (=> b!35646 (= e!22518 lt!13123)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!34 (List!952 (_ BitVec 64)) Unit!783)

(assert (=> b!35646 (= lt!13123 (lemmaContainsKeyImpliesGetValueByKeyDefined!34 (toList!478 lt!13080) (select (arr!1174 _keys!1833) (index!2803 lt!13079))))))

(declare-datatypes ((Option!79 0))(
  ( (Some!78 (v!1937 V!1989)) (None!77) )
))
(declare-fun isDefined!35 (Option!79) Bool)

(declare-fun getValueByKey!73 (List!952 (_ BitVec 64)) Option!79)

(assert (=> b!35646 (isDefined!35 (getValueByKey!73 (toList!478 lt!13080) (select (arr!1174 _keys!1833) (index!2803 lt!13079))))))

(declare-fun b!35647 () Bool)

(declare-fun Unit!785 () Unit!783)

(assert (=> b!35647 (= e!22518 Unit!785)))

(declare-fun b!35648 () Bool)

(assert (=> b!35648 (= e!22517 (isDefined!35 (getValueByKey!73 (toList!478 lt!13080) (select (arr!1174 _keys!1833) (index!2803 lt!13079)))))))

(assert (= (and d!5333 c!4059) b!35646))

(assert (= (and d!5333 (not c!4059)) b!35647))

(assert (= (and d!5333 (not res!21619)) b!35648))

(assert (=> d!5333 m!28607))

(declare-fun m!28677 () Bool)

(assert (=> d!5333 m!28677))

(assert (=> b!35646 m!28607))

(declare-fun m!28679 () Bool)

(assert (=> b!35646 m!28679))

(assert (=> b!35646 m!28607))

(declare-fun m!28681 () Bool)

(assert (=> b!35646 m!28681))

(assert (=> b!35646 m!28681))

(declare-fun m!28683 () Bool)

(assert (=> b!35646 m!28683))

(assert (=> b!35648 m!28607))

(assert (=> b!35648 m!28681))

(assert (=> b!35648 m!28681))

(assert (=> b!35648 m!28683))

(assert (=> b!35567 d!5333))

(declare-fun d!5335 () Bool)

(declare-fun e!22521 () Bool)

(assert (=> d!5335 e!22521))

(declare-fun res!21622 () Bool)

(assert (=> d!5335 (=> (not res!21622) (not e!22521))))

(assert (=> d!5335 (= res!21622 (and (bvsge (index!2803 lt!13079) #b00000000000000000000000000000000) (bvslt (index!2803 lt!13079) (size!1275 _keys!1833))))))

(declare-fun lt!13126 () Unit!783)

(declare-fun choose!223 (array!2457 array!2455 (_ BitVec 32) (_ BitVec 32) V!1989 V!1989 (_ BitVec 32) Int) Unit!783)

(assert (=> d!5335 (= lt!13126 (choose!223 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 (index!2803 lt!13079) defaultEntry!1504))))

(assert (=> d!5335 (validMask!0 mask!2294)))

(assert (=> d!5335 (= (lemmaValidKeyInArrayIsInListMap!69 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 (index!2803 lt!13079) defaultEntry!1504) lt!13126)))

(declare-fun b!35651 () Bool)

(assert (=> b!35651 (= e!22521 (contains!423 (getCurrentListMap!299 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) (select (arr!1174 _keys!1833) (index!2803 lt!13079))))))

(assert (= (and d!5335 res!21622) b!35651))

(declare-fun m!28685 () Bool)

(assert (=> d!5335 m!28685))

(assert (=> d!5335 m!28597))

(assert (=> b!35651 m!28621))

(assert (=> b!35651 m!28607))

(assert (=> b!35651 m!28621))

(assert (=> b!35651 m!28607))

(declare-fun m!28687 () Bool)

(assert (=> b!35651 m!28687))

(assert (=> b!35567 d!5335))

(declare-fun b!35662 () Bool)

(declare-fun e!22533 () Bool)

(declare-fun e!22530 () Bool)

(assert (=> b!35662 (= e!22533 e!22530)))

(declare-fun res!21630 () Bool)

(assert (=> b!35662 (=> (not res!21630) (not e!22530))))

(declare-fun e!22531 () Bool)

(assert (=> b!35662 (= res!21630 (not e!22531))))

(declare-fun res!21631 () Bool)

(assert (=> b!35662 (=> (not res!21631) (not e!22531))))

(assert (=> b!35662 (= res!21631 (validKeyInArray!0 (select (arr!1174 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!35663 () Bool)

(declare-fun e!22532 () Bool)

(assert (=> b!35663 (= e!22530 e!22532)))

(declare-fun c!4062 () Bool)

(assert (=> b!35663 (= c!4062 (validKeyInArray!0 (select (arr!1174 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!35664 () Bool)

(declare-fun call!2811 () Bool)

(assert (=> b!35664 (= e!22532 call!2811)))

(declare-fun b!35665 () Bool)

(declare-fun contains!425 (List!953 (_ BitVec 64)) Bool)

(assert (=> b!35665 (= e!22531 (contains!425 Nil!950 (select (arr!1174 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!35666 () Bool)

(assert (=> b!35666 (= e!22532 call!2811)))

(declare-fun bm!2808 () Bool)

(assert (=> bm!2808 (= call!2811 (arrayNoDuplicates!0 _keys!1833 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4062 (Cons!949 (select (arr!1174 _keys!1833) #b00000000000000000000000000000000) Nil!950) Nil!950)))))

(declare-fun d!5337 () Bool)

(declare-fun res!21629 () Bool)

(assert (=> d!5337 (=> res!21629 e!22533)))

(assert (=> d!5337 (= res!21629 (bvsge #b00000000000000000000000000000000 (size!1275 _keys!1833)))))

(assert (=> d!5337 (= (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!950) e!22533)))

(assert (= (and d!5337 (not res!21629)) b!35662))

(assert (= (and b!35662 res!21631) b!35665))

(assert (= (and b!35662 res!21630) b!35663))

(assert (= (and b!35663 c!4062) b!35666))

(assert (= (and b!35663 (not c!4062)) b!35664))

(assert (= (or b!35666 b!35664) bm!2808))

(assert (=> b!35662 m!28653))

(assert (=> b!35662 m!28653))

(assert (=> b!35662 m!28675))

(assert (=> b!35663 m!28653))

(assert (=> b!35663 m!28653))

(assert (=> b!35663 m!28675))

(assert (=> b!35665 m!28653))

(assert (=> b!35665 m!28653))

(declare-fun m!28689 () Bool)

(assert (=> b!35665 m!28689))

(assert (=> bm!2808 m!28653))

(declare-fun m!28691 () Bool)

(assert (=> bm!2808 m!28691))

(assert (=> b!35568 d!5337))

(declare-fun d!5339 () Bool)

(assert (=> d!5339 (= (validKeyInArray!0 k0!1304) (and (not (= k0!1304 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1304 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!35563 d!5339))

(declare-fun d!5341 () Bool)

(declare-fun e!22534 () Bool)

(assert (=> d!5341 e!22534))

(declare-fun res!21632 () Bool)

(assert (=> d!5341 (=> res!21632 e!22534)))

(declare-fun lt!13128 () Bool)

(assert (=> d!5341 (= res!21632 (not lt!13128))))

(declare-fun lt!13129 () Bool)

(assert (=> d!5341 (= lt!13128 lt!13129)))

(declare-fun lt!13127 () Unit!783)

(declare-fun e!22535 () Unit!783)

(assert (=> d!5341 (= lt!13127 e!22535)))

(declare-fun c!4063 () Bool)

(assert (=> d!5341 (= c!4063 lt!13129)))

(assert (=> d!5341 (= lt!13129 (containsKey!37 (toList!478 lt!13080) k0!1304))))

(assert (=> d!5341 (= (contains!423 lt!13080 k0!1304) lt!13128)))

(declare-fun b!35667 () Bool)

(declare-fun lt!13130 () Unit!783)

(assert (=> b!35667 (= e!22535 lt!13130)))

(assert (=> b!35667 (= lt!13130 (lemmaContainsKeyImpliesGetValueByKeyDefined!34 (toList!478 lt!13080) k0!1304))))

(assert (=> b!35667 (isDefined!35 (getValueByKey!73 (toList!478 lt!13080) k0!1304))))

(declare-fun b!35668 () Bool)

(declare-fun Unit!786 () Unit!783)

(assert (=> b!35668 (= e!22535 Unit!786)))

(declare-fun b!35669 () Bool)

(assert (=> b!35669 (= e!22534 (isDefined!35 (getValueByKey!73 (toList!478 lt!13080) k0!1304)))))

(assert (= (and d!5341 c!4063) b!35667))

(assert (= (and d!5341 (not c!4063)) b!35668))

(assert (= (and d!5341 (not res!21632)) b!35669))

(declare-fun m!28693 () Bool)

(assert (=> d!5341 m!28693))

(declare-fun m!28695 () Bool)

(assert (=> b!35667 m!28695))

(declare-fun m!28697 () Bool)

(assert (=> b!35667 m!28697))

(assert (=> b!35667 m!28697))

(declare-fun m!28699 () Bool)

(assert (=> b!35667 m!28699))

(assert (=> b!35669 m!28697))

(assert (=> b!35669 m!28697))

(assert (=> b!35669 m!28699))

(assert (=> b!35569 d!5341))

(declare-fun bm!2823 () Bool)

(declare-fun call!2826 () Bool)

(declare-fun lt!13190 () ListLongMap!925)

(assert (=> bm!2823 (= call!2826 (contains!423 lt!13190 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!5343 () Bool)

(declare-fun e!22568 () Bool)

(assert (=> d!5343 e!22568))

(declare-fun res!21653 () Bool)

(assert (=> d!5343 (=> (not res!21653) (not e!22568))))

(assert (=> d!5343 (= res!21653 (or (bvsge #b00000000000000000000000000000000 (size!1275 _keys!1833)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1275 _keys!1833)))))))

(declare-fun lt!13191 () ListLongMap!925)

(assert (=> d!5343 (= lt!13190 lt!13191)))

(declare-fun lt!13189 () Unit!783)

(declare-fun e!22573 () Unit!783)

(assert (=> d!5343 (= lt!13189 e!22573)))

(declare-fun c!4080 () Bool)

(declare-fun e!22566 () Bool)

(assert (=> d!5343 (= c!4080 e!22566)))

(declare-fun res!21651 () Bool)

(assert (=> d!5343 (=> (not res!21651) (not e!22566))))

(assert (=> d!5343 (= res!21651 (bvslt #b00000000000000000000000000000000 (size!1275 _keys!1833)))))

(declare-fun e!22562 () ListLongMap!925)

(assert (=> d!5343 (= lt!13191 e!22562)))

(declare-fun c!4081 () Bool)

(assert (=> d!5343 (= c!4081 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!5343 (validMask!0 mask!2294)))

(assert (=> d!5343 (= (getCurrentListMap!299 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) lt!13190)))

(declare-fun b!35712 () Bool)

(assert (=> b!35712 (= e!22566 (validKeyInArray!0 (select (arr!1174 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!35713 () Bool)

(declare-fun e!22567 () Bool)

(declare-fun apply!41 (ListLongMap!925 (_ BitVec 64)) V!1989)

(assert (=> b!35713 (= e!22567 (= (apply!41 lt!13190 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1443))))

(declare-fun b!35714 () Bool)

(declare-fun lt!13192 () Unit!783)

(assert (=> b!35714 (= e!22573 lt!13192)))

(declare-fun lt!13187 () ListLongMap!925)

(declare-fun getCurrentListMapNoExtraKeys!28 (array!2457 array!2455 (_ BitVec 32) (_ BitVec 32) V!1989 V!1989 (_ BitVec 32) Int) ListLongMap!925)

(assert (=> b!35714 (= lt!13187 (getCurrentListMapNoExtraKeys!28 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!13178 () (_ BitVec 64))

(assert (=> b!35714 (= lt!13178 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!13185 () (_ BitVec 64))

(assert (=> b!35714 (= lt!13185 (select (arr!1174 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!13186 () Unit!783)

(declare-fun addStillContains!26 (ListLongMap!925 (_ BitVec 64) V!1989 (_ BitVec 64)) Unit!783)

(assert (=> b!35714 (= lt!13186 (addStillContains!26 lt!13187 lt!13178 zeroValue!1443 lt!13185))))

(declare-fun +!59 (ListLongMap!925 tuple2!1344) ListLongMap!925)

(assert (=> b!35714 (contains!423 (+!59 lt!13187 (tuple2!1345 lt!13178 zeroValue!1443)) lt!13185)))

(declare-fun lt!13176 () Unit!783)

(assert (=> b!35714 (= lt!13176 lt!13186)))

(declare-fun lt!13194 () ListLongMap!925)

(assert (=> b!35714 (= lt!13194 (getCurrentListMapNoExtraKeys!28 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!13196 () (_ BitVec 64))

(assert (=> b!35714 (= lt!13196 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!13182 () (_ BitVec 64))

(assert (=> b!35714 (= lt!13182 (select (arr!1174 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!13195 () Unit!783)

(declare-fun addApplyDifferent!26 (ListLongMap!925 (_ BitVec 64) V!1989 (_ BitVec 64)) Unit!783)

(assert (=> b!35714 (= lt!13195 (addApplyDifferent!26 lt!13194 lt!13196 minValue!1443 lt!13182))))

(assert (=> b!35714 (= (apply!41 (+!59 lt!13194 (tuple2!1345 lt!13196 minValue!1443)) lt!13182) (apply!41 lt!13194 lt!13182))))

(declare-fun lt!13177 () Unit!783)

(assert (=> b!35714 (= lt!13177 lt!13195)))

(declare-fun lt!13179 () ListLongMap!925)

(assert (=> b!35714 (= lt!13179 (getCurrentListMapNoExtraKeys!28 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!13175 () (_ BitVec 64))

(assert (=> b!35714 (= lt!13175 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!13181 () (_ BitVec 64))

(assert (=> b!35714 (= lt!13181 (select (arr!1174 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!13184 () Unit!783)

(assert (=> b!35714 (= lt!13184 (addApplyDifferent!26 lt!13179 lt!13175 zeroValue!1443 lt!13181))))

(assert (=> b!35714 (= (apply!41 (+!59 lt!13179 (tuple2!1345 lt!13175 zeroValue!1443)) lt!13181) (apply!41 lt!13179 lt!13181))))

(declare-fun lt!13183 () Unit!783)

(assert (=> b!35714 (= lt!13183 lt!13184)))

(declare-fun lt!13193 () ListLongMap!925)

(assert (=> b!35714 (= lt!13193 (getCurrentListMapNoExtraKeys!28 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!13188 () (_ BitVec 64))

(assert (=> b!35714 (= lt!13188 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!13180 () (_ BitVec 64))

(assert (=> b!35714 (= lt!13180 (select (arr!1174 _keys!1833) #b00000000000000000000000000000000))))

(assert (=> b!35714 (= lt!13192 (addApplyDifferent!26 lt!13193 lt!13188 minValue!1443 lt!13180))))

(assert (=> b!35714 (= (apply!41 (+!59 lt!13193 (tuple2!1345 lt!13188 minValue!1443)) lt!13180) (apply!41 lt!13193 lt!13180))))

(declare-fun b!35715 () Bool)

(declare-fun e!22569 () Bool)

(declare-fun call!2827 () Bool)

(assert (=> b!35715 (= e!22569 (not call!2827))))

(declare-fun b!35716 () Bool)

(declare-fun e!22572 () Bool)

(assert (=> b!35716 (= e!22572 (= (apply!41 lt!13190 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1443))))

(declare-fun b!35717 () Bool)

(declare-fun res!21655 () Bool)

(assert (=> b!35717 (=> (not res!21655) (not e!22568))))

(declare-fun e!22563 () Bool)

(assert (=> b!35717 (= res!21655 e!22563)))

(declare-fun c!4077 () Bool)

(assert (=> b!35717 (= c!4077 (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!35718 () Bool)

(declare-fun e!22571 () Bool)

(assert (=> b!35718 (= e!22571 (validKeyInArray!0 (select (arr!1174 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!35719 () Bool)

(assert (=> b!35719 (= e!22569 e!22567)))

(declare-fun res!21659 () Bool)

(assert (=> b!35719 (= res!21659 call!2827)))

(assert (=> b!35719 (=> (not res!21659) (not e!22567))))

(declare-fun c!4076 () Bool)

(declare-fun call!2831 () ListLongMap!925)

(declare-fun call!2830 () ListLongMap!925)

(declare-fun bm!2824 () Bool)

(declare-fun call!2829 () ListLongMap!925)

(declare-fun call!2832 () ListLongMap!925)

(assert (=> bm!2824 (= call!2831 (+!59 (ite c!4081 call!2829 (ite c!4076 call!2832 call!2830)) (ite (or c!4081 c!4076) (tuple2!1345 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1443) (tuple2!1345 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443))))))

(declare-fun b!35720 () Bool)

(declare-fun e!22574 () ListLongMap!925)

(assert (=> b!35720 (= e!22562 e!22574)))

(assert (=> b!35720 (= c!4076 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!35721 () Bool)

(declare-fun Unit!787 () Unit!783)

(assert (=> b!35721 (= e!22573 Unit!787)))

(declare-fun bm!2825 () Bool)

(assert (=> bm!2825 (= call!2829 (getCurrentListMapNoExtraKeys!28 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!35722 () Bool)

(assert (=> b!35722 (= e!22563 e!22572)))

(declare-fun res!21656 () Bool)

(assert (=> b!35722 (= res!21656 call!2826)))

(assert (=> b!35722 (=> (not res!21656) (not e!22572))))

(declare-fun b!35723 () Bool)

(declare-fun call!2828 () ListLongMap!925)

(assert (=> b!35723 (= e!22574 call!2828)))

(declare-fun b!35724 () Bool)

(assert (=> b!35724 (= e!22562 (+!59 call!2831 (tuple2!1345 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443)))))

(declare-fun bm!2826 () Bool)

(assert (=> bm!2826 (= call!2832 call!2829)))

(declare-fun b!35725 () Bool)

(declare-fun e!22565 () Bool)

(declare-fun e!22570 () Bool)

(assert (=> b!35725 (= e!22565 e!22570)))

(declare-fun res!21658 () Bool)

(assert (=> b!35725 (=> (not res!21658) (not e!22570))))

(assert (=> b!35725 (= res!21658 (contains!423 lt!13190 (select (arr!1174 _keys!1833) #b00000000000000000000000000000000)))))

(assert (=> b!35725 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1275 _keys!1833)))))

(declare-fun b!35726 () Bool)

(declare-fun e!22564 () ListLongMap!925)

(assert (=> b!35726 (= e!22564 call!2830)))

(declare-fun b!35727 () Bool)

(assert (=> b!35727 (= e!22563 (not call!2826))))

(declare-fun bm!2827 () Bool)

(assert (=> bm!2827 (= call!2830 call!2832)))

(declare-fun b!35728 () Bool)

(assert (=> b!35728 (= e!22568 e!22569)))

(declare-fun c!4079 () Bool)

(assert (=> b!35728 (= c!4079 (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!35729 () Bool)

(declare-fun get!606 (ValueCell!612 V!1989) V!1989)

(declare-fun dynLambda!158 (Int (_ BitVec 64)) V!1989)

(assert (=> b!35729 (= e!22570 (= (apply!41 lt!13190 (select (arr!1174 _keys!1833) #b00000000000000000000000000000000)) (get!606 (select (arr!1173 _values!1501) #b00000000000000000000000000000000) (dynLambda!158 defaultEntry!1504 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!35729 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1274 _values!1501)))))

(assert (=> b!35729 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1275 _keys!1833)))))

(declare-fun bm!2828 () Bool)

(assert (=> bm!2828 (= call!2827 (contains!423 lt!13190 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!35730 () Bool)

(declare-fun c!4078 () Bool)

(assert (=> b!35730 (= c!4078 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!35730 (= e!22574 e!22564)))

(declare-fun b!35731 () Bool)

(declare-fun res!21652 () Bool)

(assert (=> b!35731 (=> (not res!21652) (not e!22568))))

(assert (=> b!35731 (= res!21652 e!22565)))

(declare-fun res!21657 () Bool)

(assert (=> b!35731 (=> res!21657 e!22565)))

(assert (=> b!35731 (= res!21657 (not e!22571))))

(declare-fun res!21654 () Bool)

(assert (=> b!35731 (=> (not res!21654) (not e!22571))))

(assert (=> b!35731 (= res!21654 (bvslt #b00000000000000000000000000000000 (size!1275 _keys!1833)))))

(declare-fun b!35732 () Bool)

(assert (=> b!35732 (= e!22564 call!2828)))

(declare-fun bm!2829 () Bool)

(assert (=> bm!2829 (= call!2828 call!2831)))

(assert (= (and d!5343 c!4081) b!35724))

(assert (= (and d!5343 (not c!4081)) b!35720))

(assert (= (and b!35720 c!4076) b!35723))

(assert (= (and b!35720 (not c!4076)) b!35730))

(assert (= (and b!35730 c!4078) b!35732))

(assert (= (and b!35730 (not c!4078)) b!35726))

(assert (= (or b!35732 b!35726) bm!2827))

(assert (= (or b!35723 bm!2827) bm!2826))

(assert (= (or b!35723 b!35732) bm!2829))

(assert (= (or b!35724 bm!2826) bm!2825))

(assert (= (or b!35724 bm!2829) bm!2824))

(assert (= (and d!5343 res!21651) b!35712))

(assert (= (and d!5343 c!4080) b!35714))

(assert (= (and d!5343 (not c!4080)) b!35721))

(assert (= (and d!5343 res!21653) b!35731))

(assert (= (and b!35731 res!21654) b!35718))

(assert (= (and b!35731 (not res!21657)) b!35725))

(assert (= (and b!35725 res!21658) b!35729))

(assert (= (and b!35731 res!21652) b!35717))

(assert (= (and b!35717 c!4077) b!35722))

(assert (= (and b!35717 (not c!4077)) b!35727))

(assert (= (and b!35722 res!21656) b!35716))

(assert (= (or b!35722 b!35727) bm!2823))

(assert (= (and b!35717 res!21655) b!35728))

(assert (= (and b!35728 c!4079) b!35719))

(assert (= (and b!35728 (not c!4079)) b!35715))

(assert (= (and b!35719 res!21659) b!35713))

(assert (= (or b!35719 b!35715) bm!2828))

(declare-fun b_lambda!1731 () Bool)

(assert (=> (not b_lambda!1731) (not b!35729)))

(declare-fun t!3667 () Bool)

(declare-fun tb!699 () Bool)

(assert (=> (and start!4546 (= defaultEntry!1504 defaultEntry!1504) t!3667) tb!699))

(declare-fun result!1203 () Bool)

(assert (=> tb!699 (= result!1203 tp_is_empty!1623)))

(assert (=> b!35729 t!3667))

(declare-fun b_and!2101 () Bool)

(assert (= b_and!2097 (and (=> t!3667 result!1203) b_and!2101)))

(declare-fun m!28701 () Bool)

(assert (=> bm!2824 m!28701))

(assert (=> b!35718 m!28653))

(assert (=> b!35718 m!28653))

(assert (=> b!35718 m!28675))

(assert (=> b!35725 m!28653))

(assert (=> b!35725 m!28653))

(declare-fun m!28703 () Bool)

(assert (=> b!35725 m!28703))

(declare-fun m!28705 () Bool)

(assert (=> bm!2828 m!28705))

(declare-fun m!28707 () Bool)

(assert (=> b!35713 m!28707))

(declare-fun m!28709 () Bool)

(assert (=> b!35714 m!28709))

(declare-fun m!28711 () Bool)

(assert (=> b!35714 m!28711))

(declare-fun m!28713 () Bool)

(assert (=> b!35714 m!28713))

(declare-fun m!28715 () Bool)

(assert (=> b!35714 m!28715))

(declare-fun m!28717 () Bool)

(assert (=> b!35714 m!28717))

(declare-fun m!28719 () Bool)

(assert (=> b!35714 m!28719))

(declare-fun m!28721 () Bool)

(assert (=> b!35714 m!28721))

(declare-fun m!28723 () Bool)

(assert (=> b!35714 m!28723))

(declare-fun m!28725 () Bool)

(assert (=> b!35714 m!28725))

(declare-fun m!28727 () Bool)

(assert (=> b!35714 m!28727))

(declare-fun m!28729 () Bool)

(assert (=> b!35714 m!28729))

(declare-fun m!28731 () Bool)

(assert (=> b!35714 m!28731))

(assert (=> b!35714 m!28715))

(declare-fun m!28733 () Bool)

(assert (=> b!35714 m!28733))

(assert (=> b!35714 m!28653))

(declare-fun m!28735 () Bool)

(assert (=> b!35714 m!28735))

(assert (=> b!35714 m!28727))

(assert (=> b!35714 m!28711))

(declare-fun m!28737 () Bool)

(assert (=> b!35714 m!28737))

(assert (=> b!35714 m!28725))

(declare-fun m!28739 () Bool)

(assert (=> b!35714 m!28739))

(declare-fun m!28741 () Bool)

(assert (=> b!35729 m!28741))

(declare-fun m!28743 () Bool)

(assert (=> b!35729 m!28743))

(declare-fun m!28745 () Bool)

(assert (=> b!35729 m!28745))

(assert (=> b!35729 m!28743))

(assert (=> b!35729 m!28653))

(assert (=> b!35729 m!28653))

(declare-fun m!28747 () Bool)

(assert (=> b!35729 m!28747))

(assert (=> b!35729 m!28741))

(assert (=> bm!2825 m!28733))

(assert (=> b!35712 m!28653))

(assert (=> b!35712 m!28653))

(assert (=> b!35712 m!28675))

(assert (=> d!5343 m!28597))

(declare-fun m!28749 () Bool)

(assert (=> bm!2823 m!28749))

(declare-fun m!28751 () Bool)

(assert (=> b!35716 m!28751))

(declare-fun m!28753 () Bool)

(assert (=> b!35724 m!28753))

(assert (=> b!35569 d!5343))

(declare-fun d!5345 () Bool)

(assert (=> d!5345 (= (validMask!0 mask!2294) (and (or (= mask!2294 #b00000000000000000000000000000111) (= mask!2294 #b00000000000000000000000000001111) (= mask!2294 #b00000000000000000000000000011111) (= mask!2294 #b00000000000000000000000000111111) (= mask!2294 #b00000000000000000000000001111111) (= mask!2294 #b00000000000000000000000011111111) (= mask!2294 #b00000000000000000000000111111111) (= mask!2294 #b00000000000000000000001111111111) (= mask!2294 #b00000000000000000000011111111111) (= mask!2294 #b00000000000000000000111111111111) (= mask!2294 #b00000000000000000001111111111111) (= mask!2294 #b00000000000000000011111111111111) (= mask!2294 #b00000000000000000111111111111111) (= mask!2294 #b00000000000000001111111111111111) (= mask!2294 #b00000000000000011111111111111111) (= mask!2294 #b00000000000000111111111111111111) (= mask!2294 #b00000000000001111111111111111111) (= mask!2294 #b00000000000011111111111111111111) (= mask!2294 #b00000000000111111111111111111111) (= mask!2294 #b00000000001111111111111111111111) (= mask!2294 #b00000000011111111111111111111111) (= mask!2294 #b00000000111111111111111111111111) (= mask!2294 #b00000001111111111111111111111111) (= mask!2294 #b00000011111111111111111111111111) (= mask!2294 #b00000111111111111111111111111111) (= mask!2294 #b00001111111111111111111111111111) (= mask!2294 #b00011111111111111111111111111111) (= mask!2294 #b00111111111111111111111111111111)) (bvsle mask!2294 #b00111111111111111111111111111111)))))

(assert (=> start!4546 d!5345))

(declare-fun d!5347 () Bool)

(assert (=> d!5347 (= (array_inv!775 _values!1501) (bvsge (size!1274 _values!1501) #b00000000000000000000000000000000))))

(assert (=> start!4546 d!5347))

(declare-fun d!5349 () Bool)

(assert (=> d!5349 (= (array_inv!776 _keys!1833) (bvsge (size!1275 _keys!1833) #b00000000000000000000000000000000))))

(assert (=> start!4546 d!5349))

(declare-fun b!35742 () Bool)

(declare-fun e!22580 () Bool)

(assert (=> b!35742 (= e!22580 tp_is_empty!1623)))

(declare-fun b!35741 () Bool)

(declare-fun e!22579 () Bool)

(assert (=> b!35741 (= e!22579 tp_is_empty!1623)))

(declare-fun condMapEmpty!1993 () Bool)

(declare-fun mapDefault!1993 () ValueCell!612)

(assert (=> mapNonEmpty!1987 (= condMapEmpty!1993 (= mapRest!1987 ((as const (Array (_ BitVec 32) ValueCell!612)) mapDefault!1993)))))

(declare-fun mapRes!1993 () Bool)

(assert (=> mapNonEmpty!1987 (= tp!5251 (and e!22580 mapRes!1993))))

(declare-fun mapNonEmpty!1993 () Bool)

(declare-fun tp!5260 () Bool)

(assert (=> mapNonEmpty!1993 (= mapRes!1993 (and tp!5260 e!22579))))

(declare-fun mapRest!1993 () (Array (_ BitVec 32) ValueCell!612))

(declare-fun mapValue!1993 () ValueCell!612)

(declare-fun mapKey!1993 () (_ BitVec 32))

(assert (=> mapNonEmpty!1993 (= mapRest!1987 (store mapRest!1993 mapKey!1993 mapValue!1993))))

(declare-fun mapIsEmpty!1993 () Bool)

(assert (=> mapIsEmpty!1993 mapRes!1993))

(assert (= (and mapNonEmpty!1987 condMapEmpty!1993) mapIsEmpty!1993))

(assert (= (and mapNonEmpty!1987 (not condMapEmpty!1993)) mapNonEmpty!1993))

(assert (= (and mapNonEmpty!1993 ((_ is ValueCellFull!612) mapValue!1993)) b!35741))

(assert (= (and mapNonEmpty!1987 ((_ is ValueCellFull!612) mapDefault!1993)) b!35742))

(declare-fun m!28755 () Bool)

(assert (=> mapNonEmpty!1993 m!28755))

(declare-fun b_lambda!1733 () Bool)

(assert (= b_lambda!1731 (or (and start!4546 b_free!1269) b_lambda!1733)))

(check-sat (not b_lambda!1733) (not b!35725) (not b!35665) (not bm!2808) (not bm!2828) (not bm!2823) (not d!5329) (not b!35712) (not b!35729) (not b!35667) (not b!35669) (not bm!2825) (not b!35639) (not b!35718) (not b!35714) (not b!35662) (not d!5343) (not b!35637) (not b!35713) b_and!2101 (not bm!2824) (not d!5335) (not b_next!1269) (not b!35716) (not b!35648) (not b!35626) (not b!35646) (not mapNonEmpty!1993) (not bm!2805) (not b!35609) tp_is_empty!1623 (not b!35651) (not d!5341) (not b!35724) (not d!5333) (not b!35663))
(check-sat b_and!2101 (not b_next!1269))
