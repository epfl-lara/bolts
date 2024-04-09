; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38624 () Bool)

(assert start!38624)

(declare-fun b_free!9153 () Bool)

(declare-fun b_next!9153 () Bool)

(assert (=> start!38624 (= b_free!9153 (not b_next!9153))))

(declare-fun tp!32582 () Bool)

(declare-fun b_and!16557 () Bool)

(assert (=> start!38624 (= tp!32582 b_and!16557)))

(declare-datatypes ((V!14485 0))(
  ( (V!14486 (val!5062 Int)) )
))
(declare-datatypes ((tuple2!6644 0))(
  ( (tuple2!6645 (_1!3332 (_ BitVec 64)) (_2!3332 V!14485)) )
))
(declare-datatypes ((List!6598 0))(
  ( (Nil!6595) (Cons!6594 (h!7450 tuple2!6644) (t!11780 List!6598)) )
))
(declare-datatypes ((ListLongMap!5571 0))(
  ( (ListLongMap!5572 (toList!2801 List!6598)) )
))
(declare-fun call!28120 () ListLongMap!5571)

(declare-fun b!400165 () Bool)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun e!241506 () Bool)

(declare-fun call!28121 () ListLongMap!5571)

(declare-fun v!412 () V!14485)

(declare-fun +!1089 (ListLongMap!5571 tuple2!6644) ListLongMap!5571)

(assert (=> b!400165 (= e!241506 (= call!28121 (+!1089 call!28120 (tuple2!6645 k0!794 v!412))))))

(declare-fun b!400166 () Bool)

(declare-fun e!241505 () Bool)

(declare-fun tp_is_empty!10035 () Bool)

(assert (=> b!400166 (= e!241505 tp_is_empty!10035)))

(declare-fun b!400167 () Bool)

(declare-fun res!230291 () Bool)

(declare-fun e!241503 () Bool)

(assert (=> b!400167 (=> (not res!230291) (not e!241503))))

(declare-datatypes ((array!23947 0))(
  ( (array!23948 (arr!11420 (Array (_ BitVec 32) (_ BitVec 64))) (size!11772 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23947)

(declare-fun arrayContainsKey!0 (array!23947 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!400167 (= res!230291 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun minValue!515 () V!14485)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun bm!28117 () Bool)

(declare-datatypes ((ValueCell!4674 0))(
  ( (ValueCellFull!4674 (v!7305 V!14485)) (EmptyCell!4674) )
))
(declare-datatypes ((array!23949 0))(
  ( (array!23950 (arr!11421 (Array (_ BitVec 32) ValueCell!4674)) (size!11773 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23949)

(declare-fun c!54611 () Bool)

(declare-fun zeroValue!515 () V!14485)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lt!187646 () array!23947)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1017 (array!23947 array!23949 (_ BitVec 32) (_ BitVec 32) V!14485 V!14485 (_ BitVec 32) Int) ListLongMap!5571)

(assert (=> bm!28117 (= call!28120 (getCurrentListMapNoExtraKeys!1017 (ite c!54611 _keys!709 lt!187646) (ite c!54611 _values!549 (array!23950 (store (arr!11421 _values!549) i!563 (ValueCellFull!4674 v!412)) (size!11773 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!400168 () Bool)

(assert (=> b!400168 (= e!241506 (= call!28120 call!28121))))

(declare-fun b!400169 () Bool)

(declare-fun res!230288 () Bool)

(assert (=> b!400169 (=> (not res!230288) (not e!241503))))

(assert (=> b!400169 (= res!230288 (and (= (size!11773 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11772 _keys!709) (size!11773 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!400170 () Bool)

(declare-fun res!230289 () Bool)

(declare-fun e!241501 () Bool)

(assert (=> b!400170 (=> (not res!230289) (not e!241501))))

(assert (=> b!400170 (= res!230289 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11772 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!400171 () Bool)

(declare-fun res!230290 () Bool)

(assert (=> b!400171 (=> (not res!230290) (not e!241503))))

(assert (=> b!400171 (= res!230290 (or (= (select (arr!11420 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11420 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!400173 () Bool)

(declare-fun res!230282 () Bool)

(assert (=> b!400173 (=> (not res!230282) (not e!241503))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!400173 (= res!230282 (validMask!0 mask!1025))))

(declare-fun bm!28118 () Bool)

(assert (=> bm!28118 (= call!28121 (getCurrentListMapNoExtraKeys!1017 (ite c!54611 lt!187646 _keys!709) (ite c!54611 (array!23950 (store (arr!11421 _values!549) i!563 (ValueCellFull!4674 v!412)) (size!11773 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!400174 () Bool)

(assert (=> b!400174 (= e!241501 (not true))))

(assert (=> b!400174 e!241506))

(assert (=> b!400174 (= c!54611 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12081 0))(
  ( (Unit!12082) )
))
(declare-fun lt!187647 () Unit!12081)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!303 (array!23947 array!23949 (_ BitVec 32) (_ BitVec 32) V!14485 V!14485 (_ BitVec 32) (_ BitVec 64) V!14485 (_ BitVec 32) Int) Unit!12081)

(assert (=> b!400174 (= lt!187647 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!303 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!16674 () Bool)

(declare-fun mapRes!16674 () Bool)

(assert (=> mapIsEmpty!16674 mapRes!16674))

(declare-fun b!400175 () Bool)

(declare-fun res!230287 () Bool)

(assert (=> b!400175 (=> (not res!230287) (not e!241503))))

(declare-datatypes ((List!6599 0))(
  ( (Nil!6596) (Cons!6595 (h!7451 (_ BitVec 64)) (t!11781 List!6599)) )
))
(declare-fun arrayNoDuplicates!0 (array!23947 (_ BitVec 32) List!6599) Bool)

(assert (=> b!400175 (= res!230287 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6596))))

(declare-fun mapNonEmpty!16674 () Bool)

(declare-fun tp!32583 () Bool)

(declare-fun e!241507 () Bool)

(assert (=> mapNonEmpty!16674 (= mapRes!16674 (and tp!32583 e!241507))))

(declare-fun mapValue!16674 () ValueCell!4674)

(declare-fun mapRest!16674 () (Array (_ BitVec 32) ValueCell!4674))

(declare-fun mapKey!16674 () (_ BitVec 32))

(assert (=> mapNonEmpty!16674 (= (arr!11421 _values!549) (store mapRest!16674 mapKey!16674 mapValue!16674))))

(declare-fun b!400176 () Bool)

(assert (=> b!400176 (= e!241503 e!241501)))

(declare-fun res!230292 () Bool)

(assert (=> b!400176 (=> (not res!230292) (not e!241501))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23947 (_ BitVec 32)) Bool)

(assert (=> b!400176 (= res!230292 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187646 mask!1025))))

(assert (=> b!400176 (= lt!187646 (array!23948 (store (arr!11420 _keys!709) i!563 k0!794) (size!11772 _keys!709)))))

(declare-fun b!400177 () Bool)

(assert (=> b!400177 (= e!241507 tp_is_empty!10035)))

(declare-fun b!400178 () Bool)

(declare-fun res!230285 () Bool)

(assert (=> b!400178 (=> (not res!230285) (not e!241503))))

(assert (=> b!400178 (= res!230285 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!400179 () Bool)

(declare-fun res!230281 () Bool)

(assert (=> b!400179 (=> (not res!230281) (not e!241503))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!400179 (= res!230281 (validKeyInArray!0 k0!794))))

(declare-fun res!230286 () Bool)

(assert (=> start!38624 (=> (not res!230286) (not e!241503))))

(assert (=> start!38624 (= res!230286 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11772 _keys!709))))))

(assert (=> start!38624 e!241503))

(assert (=> start!38624 tp_is_empty!10035))

(assert (=> start!38624 tp!32582))

(assert (=> start!38624 true))

(declare-fun e!241502 () Bool)

(declare-fun array_inv!8360 (array!23949) Bool)

(assert (=> start!38624 (and (array_inv!8360 _values!549) e!241502)))

(declare-fun array_inv!8361 (array!23947) Bool)

(assert (=> start!38624 (array_inv!8361 _keys!709)))

(declare-fun b!400172 () Bool)

(assert (=> b!400172 (= e!241502 (and e!241505 mapRes!16674))))

(declare-fun condMapEmpty!16674 () Bool)

(declare-fun mapDefault!16674 () ValueCell!4674)

(assert (=> b!400172 (= condMapEmpty!16674 (= (arr!11421 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4674)) mapDefault!16674)))))

(declare-fun b!400180 () Bool)

(declare-fun res!230283 () Bool)

(assert (=> b!400180 (=> (not res!230283) (not e!241503))))

(assert (=> b!400180 (= res!230283 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11772 _keys!709))))))

(declare-fun b!400181 () Bool)

(declare-fun res!230284 () Bool)

(assert (=> b!400181 (=> (not res!230284) (not e!241501))))

(assert (=> b!400181 (= res!230284 (arrayNoDuplicates!0 lt!187646 #b00000000000000000000000000000000 Nil!6596))))

(assert (= (and start!38624 res!230286) b!400173))

(assert (= (and b!400173 res!230282) b!400169))

(assert (= (and b!400169 res!230288) b!400178))

(assert (= (and b!400178 res!230285) b!400175))

(assert (= (and b!400175 res!230287) b!400180))

(assert (= (and b!400180 res!230283) b!400179))

(assert (= (and b!400179 res!230281) b!400171))

(assert (= (and b!400171 res!230290) b!400167))

(assert (= (and b!400167 res!230291) b!400176))

(assert (= (and b!400176 res!230292) b!400181))

(assert (= (and b!400181 res!230284) b!400170))

(assert (= (and b!400170 res!230289) b!400174))

(assert (= (and b!400174 c!54611) b!400165))

(assert (= (and b!400174 (not c!54611)) b!400168))

(assert (= (or b!400165 b!400168) bm!28118))

(assert (= (or b!400165 b!400168) bm!28117))

(assert (= (and b!400172 condMapEmpty!16674) mapIsEmpty!16674))

(assert (= (and b!400172 (not condMapEmpty!16674)) mapNonEmpty!16674))

(get-info :version)

(assert (= (and mapNonEmpty!16674 ((_ is ValueCellFull!4674) mapValue!16674)) b!400177))

(assert (= (and b!400172 ((_ is ValueCellFull!4674) mapDefault!16674)) b!400166))

(assert (= start!38624 b!400172))

(declare-fun m!394423 () Bool)

(assert (=> mapNonEmpty!16674 m!394423))

(declare-fun m!394425 () Bool)

(assert (=> b!400181 m!394425))

(declare-fun m!394427 () Bool)

(assert (=> b!400178 m!394427))

(declare-fun m!394429 () Bool)

(assert (=> b!400171 m!394429))

(declare-fun m!394431 () Bool)

(assert (=> b!400176 m!394431))

(declare-fun m!394433 () Bool)

(assert (=> b!400176 m!394433))

(declare-fun m!394435 () Bool)

(assert (=> start!38624 m!394435))

(declare-fun m!394437 () Bool)

(assert (=> start!38624 m!394437))

(declare-fun m!394439 () Bool)

(assert (=> b!400174 m!394439))

(declare-fun m!394441 () Bool)

(assert (=> b!400179 m!394441))

(declare-fun m!394443 () Bool)

(assert (=> b!400167 m!394443))

(declare-fun m!394445 () Bool)

(assert (=> b!400175 m!394445))

(declare-fun m!394447 () Bool)

(assert (=> b!400165 m!394447))

(declare-fun m!394449 () Bool)

(assert (=> bm!28117 m!394449))

(declare-fun m!394451 () Bool)

(assert (=> bm!28117 m!394451))

(assert (=> bm!28118 m!394449))

(declare-fun m!394453 () Bool)

(assert (=> bm!28118 m!394453))

(declare-fun m!394455 () Bool)

(assert (=> b!400173 m!394455))

(check-sat (not b!400176) (not b!400175) (not bm!28118) (not b!400174) (not b!400178) (not b!400165) (not b!400167) (not b!400181) (not bm!28117) (not mapNonEmpty!16674) (not start!38624) (not b_next!9153) b_and!16557 tp_is_empty!10035 (not b!400179) (not b!400173))
(check-sat b_and!16557 (not b_next!9153))
