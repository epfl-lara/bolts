; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38600 () Bool)

(assert start!38600)

(declare-fun b_free!9129 () Bool)

(declare-fun b_next!9129 () Bool)

(assert (=> start!38600 (= b_free!9129 (not b_next!9129))))

(declare-fun tp!32511 () Bool)

(declare-fun b_and!16533 () Bool)

(assert (=> start!38600 (= tp!32511 b_and!16533)))

(declare-fun b!399553 () Bool)

(declare-fun res!229852 () Bool)

(declare-fun e!241253 () Bool)

(assert (=> b!399553 (=> (not res!229852) (not e!241253))))

(declare-datatypes ((array!23901 0))(
  ( (array!23902 (arr!11397 (Array (_ BitVec 32) (_ BitVec 64))) (size!11749 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23901)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23901 (_ BitVec 32)) Bool)

(assert (=> b!399553 (= res!229852 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!399554 () Bool)

(declare-fun res!229850 () Bool)

(assert (=> b!399554 (=> (not res!229850) (not e!241253))))

(declare-datatypes ((List!6576 0))(
  ( (Nil!6573) (Cons!6572 (h!7428 (_ BitVec 64)) (t!11758 List!6576)) )
))
(declare-fun arrayNoDuplicates!0 (array!23901 (_ BitVec 32) List!6576) Bool)

(assert (=> b!399554 (= res!229850 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6573))))

(declare-fun mapNonEmpty!16638 () Bool)

(declare-fun mapRes!16638 () Bool)

(declare-fun tp!32510 () Bool)

(declare-fun e!241252 () Bool)

(assert (=> mapNonEmpty!16638 (= mapRes!16638 (and tp!32510 e!241252))))

(declare-datatypes ((V!14453 0))(
  ( (V!14454 (val!5050 Int)) )
))
(declare-datatypes ((ValueCell!4662 0))(
  ( (ValueCellFull!4662 (v!7293 V!14453)) (EmptyCell!4662) )
))
(declare-fun mapRest!16638 () (Array (_ BitVec 32) ValueCell!4662))

(declare-fun mapValue!16638 () ValueCell!4662)

(declare-datatypes ((array!23903 0))(
  ( (array!23904 (arr!11398 (Array (_ BitVec 32) ValueCell!4662)) (size!11750 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23903)

(declare-fun mapKey!16638 () (_ BitVec 32))

(assert (=> mapNonEmpty!16638 (= (arr!11398 _values!549) (store mapRest!16638 mapKey!16638 mapValue!16638))))

(declare-fun b!399555 () Bool)

(declare-fun res!229857 () Bool)

(assert (=> b!399555 (=> (not res!229857) (not e!241253))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23901 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!399555 (= res!229857 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!399556 () Bool)

(declare-fun res!229858 () Bool)

(declare-fun e!241249 () Bool)

(assert (=> b!399556 (=> (not res!229858) (not e!241249))))

(declare-fun lt!187574 () array!23901)

(assert (=> b!399556 (= res!229858 (arrayNoDuplicates!0 lt!187574 #b00000000000000000000000000000000 Nil!6573))))

(declare-fun bm!28045 () Bool)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!6622 0))(
  ( (tuple2!6623 (_1!3321 (_ BitVec 64)) (_2!3321 V!14453)) )
))
(declare-datatypes ((List!6577 0))(
  ( (Nil!6574) (Cons!6573 (h!7429 tuple2!6622) (t!11759 List!6577)) )
))
(declare-datatypes ((ListLongMap!5549 0))(
  ( (ListLongMap!5550 (toList!2790 List!6577)) )
))
(declare-fun call!28049 () ListLongMap!5549)

(declare-fun zeroValue!515 () V!14453)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun v!412 () V!14453)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!14453)

(declare-fun c!54575 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1006 (array!23901 array!23903 (_ BitVec 32) (_ BitVec 32) V!14453 V!14453 (_ BitVec 32) Int) ListLongMap!5549)

(assert (=> bm!28045 (= call!28049 (getCurrentListMapNoExtraKeys!1006 (ite c!54575 lt!187574 _keys!709) (ite c!54575 (array!23904 (store (arr!11398 _values!549) i!563 (ValueCellFull!4662 v!412)) (size!11750 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!399557 () Bool)

(declare-fun tp_is_empty!10011 () Bool)

(assert (=> b!399557 (= e!241252 tp_is_empty!10011)))

(declare-fun b!399558 () Bool)

(declare-fun res!229856 () Bool)

(assert (=> b!399558 (=> (not res!229856) (not e!241253))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!399558 (= res!229856 (validKeyInArray!0 k0!794))))

(declare-fun b!399559 () Bool)

(declare-fun e!241255 () Bool)

(declare-fun e!241254 () Bool)

(assert (=> b!399559 (= e!241255 (and e!241254 mapRes!16638))))

(declare-fun condMapEmpty!16638 () Bool)

(declare-fun mapDefault!16638 () ValueCell!4662)

(assert (=> b!399559 (= condMapEmpty!16638 (= (arr!11398 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4662)) mapDefault!16638)))))

(declare-fun e!241250 () Bool)

(declare-fun b!399560 () Bool)

(declare-fun call!28048 () ListLongMap!5549)

(declare-fun +!1082 (ListLongMap!5549 tuple2!6622) ListLongMap!5549)

(assert (=> b!399560 (= e!241250 (= call!28049 (+!1082 call!28048 (tuple2!6623 k0!794 v!412))))))

(declare-fun bm!28046 () Bool)

(assert (=> bm!28046 (= call!28048 (getCurrentListMapNoExtraKeys!1006 (ite c!54575 _keys!709 lt!187574) (ite c!54575 _values!549 (array!23904 (store (arr!11398 _values!549) i!563 (ValueCellFull!4662 v!412)) (size!11750 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!399562 () Bool)

(assert (=> b!399562 (= e!241249 (not true))))

(assert (=> b!399562 e!241250))

(assert (=> b!399562 (= c!54575 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12067 0))(
  ( (Unit!12068) )
))
(declare-fun lt!187575 () Unit!12067)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!296 (array!23901 array!23903 (_ BitVec 32) (_ BitVec 32) V!14453 V!14453 (_ BitVec 32) (_ BitVec 64) V!14453 (_ BitVec 32) Int) Unit!12067)

(assert (=> b!399562 (= lt!187575 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!296 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!399563 () Bool)

(declare-fun res!229854 () Bool)

(assert (=> b!399563 (=> (not res!229854) (not e!241249))))

(assert (=> b!399563 (= res!229854 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11749 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!399564 () Bool)

(declare-fun res!229853 () Bool)

(assert (=> b!399564 (=> (not res!229853) (not e!241253))))

(assert (=> b!399564 (= res!229853 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11749 _keys!709))))))

(declare-fun b!399565 () Bool)

(declare-fun res!229851 () Bool)

(assert (=> b!399565 (=> (not res!229851) (not e!241253))))

(assert (=> b!399565 (= res!229851 (or (= (select (arr!11397 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11397 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!16638 () Bool)

(assert (=> mapIsEmpty!16638 mapRes!16638))

(declare-fun b!399566 () Bool)

(declare-fun res!229860 () Bool)

(assert (=> b!399566 (=> (not res!229860) (not e!241253))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!399566 (= res!229860 (validMask!0 mask!1025))))

(declare-fun b!399567 () Bool)

(assert (=> b!399567 (= e!241253 e!241249)))

(declare-fun res!229855 () Bool)

(assert (=> b!399567 (=> (not res!229855) (not e!241249))))

(assert (=> b!399567 (= res!229855 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187574 mask!1025))))

(assert (=> b!399567 (= lt!187574 (array!23902 (store (arr!11397 _keys!709) i!563 k0!794) (size!11749 _keys!709)))))

(declare-fun b!399568 () Bool)

(assert (=> b!399568 (= e!241250 (= call!28048 call!28049))))

(declare-fun b!399569 () Bool)

(declare-fun res!229849 () Bool)

(assert (=> b!399569 (=> (not res!229849) (not e!241253))))

(assert (=> b!399569 (= res!229849 (and (= (size!11750 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11749 _keys!709) (size!11750 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!399561 () Bool)

(assert (=> b!399561 (= e!241254 tp_is_empty!10011)))

(declare-fun res!229859 () Bool)

(assert (=> start!38600 (=> (not res!229859) (not e!241253))))

(assert (=> start!38600 (= res!229859 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11749 _keys!709))))))

(assert (=> start!38600 e!241253))

(assert (=> start!38600 tp_is_empty!10011))

(assert (=> start!38600 tp!32511))

(assert (=> start!38600 true))

(declare-fun array_inv!8340 (array!23903) Bool)

(assert (=> start!38600 (and (array_inv!8340 _values!549) e!241255)))

(declare-fun array_inv!8341 (array!23901) Bool)

(assert (=> start!38600 (array_inv!8341 _keys!709)))

(assert (= (and start!38600 res!229859) b!399566))

(assert (= (and b!399566 res!229860) b!399569))

(assert (= (and b!399569 res!229849) b!399553))

(assert (= (and b!399553 res!229852) b!399554))

(assert (= (and b!399554 res!229850) b!399564))

(assert (= (and b!399564 res!229853) b!399558))

(assert (= (and b!399558 res!229856) b!399565))

(assert (= (and b!399565 res!229851) b!399555))

(assert (= (and b!399555 res!229857) b!399567))

(assert (= (and b!399567 res!229855) b!399556))

(assert (= (and b!399556 res!229858) b!399563))

(assert (= (and b!399563 res!229854) b!399562))

(assert (= (and b!399562 c!54575) b!399560))

(assert (= (and b!399562 (not c!54575)) b!399568))

(assert (= (or b!399560 b!399568) bm!28045))

(assert (= (or b!399560 b!399568) bm!28046))

(assert (= (and b!399559 condMapEmpty!16638) mapIsEmpty!16638))

(assert (= (and b!399559 (not condMapEmpty!16638)) mapNonEmpty!16638))

(get-info :version)

(assert (= (and mapNonEmpty!16638 ((_ is ValueCellFull!4662) mapValue!16638)) b!399557))

(assert (= (and b!399559 ((_ is ValueCellFull!4662) mapDefault!16638)) b!399561))

(assert (= start!38600 b!399559))

(declare-fun m!394015 () Bool)

(assert (=> b!399558 m!394015))

(declare-fun m!394017 () Bool)

(assert (=> bm!28045 m!394017))

(declare-fun m!394019 () Bool)

(assert (=> bm!28045 m!394019))

(declare-fun m!394021 () Bool)

(assert (=> mapNonEmpty!16638 m!394021))

(declare-fun m!394023 () Bool)

(assert (=> b!399566 m!394023))

(declare-fun m!394025 () Bool)

(assert (=> b!399560 m!394025))

(declare-fun m!394027 () Bool)

(assert (=> b!399562 m!394027))

(declare-fun m!394029 () Bool)

(assert (=> start!38600 m!394029))

(declare-fun m!394031 () Bool)

(assert (=> start!38600 m!394031))

(declare-fun m!394033 () Bool)

(assert (=> b!399553 m!394033))

(declare-fun m!394035 () Bool)

(assert (=> b!399554 m!394035))

(declare-fun m!394037 () Bool)

(assert (=> b!399556 m!394037))

(declare-fun m!394039 () Bool)

(assert (=> b!399565 m!394039))

(declare-fun m!394041 () Bool)

(assert (=> b!399555 m!394041))

(declare-fun m!394043 () Bool)

(assert (=> b!399567 m!394043))

(declare-fun m!394045 () Bool)

(assert (=> b!399567 m!394045))

(assert (=> bm!28046 m!394017))

(declare-fun m!394047 () Bool)

(assert (=> bm!28046 m!394047))

(check-sat tp_is_empty!10011 (not mapNonEmpty!16638) (not bm!28046) (not start!38600) (not b!399566) (not b_next!9129) (not b!399556) b_and!16533 (not b!399555) (not b!399567) (not b!399554) (not b!399558) (not bm!28045) (not b!399562) (not b!399560) (not b!399553))
(check-sat b_and!16533 (not b_next!9129))
