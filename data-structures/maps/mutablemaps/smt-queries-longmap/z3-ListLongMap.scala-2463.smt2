; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38606 () Bool)

(assert start!38606)

(declare-fun b_free!9135 () Bool)

(declare-fun b_next!9135 () Bool)

(assert (=> start!38606 (= b_free!9135 (not b_next!9135))))

(declare-fun tp!32528 () Bool)

(declare-fun b_and!16539 () Bool)

(assert (=> start!38606 (= tp!32528 b_and!16539)))

(declare-fun mapNonEmpty!16647 () Bool)

(declare-fun mapRes!16647 () Bool)

(declare-fun tp!32529 () Bool)

(declare-fun e!241313 () Bool)

(assert (=> mapNonEmpty!16647 (= mapRes!16647 (and tp!32529 e!241313))))

(declare-datatypes ((V!14461 0))(
  ( (V!14462 (val!5053 Int)) )
))
(declare-datatypes ((ValueCell!4665 0))(
  ( (ValueCellFull!4665 (v!7296 V!14461)) (EmptyCell!4665) )
))
(declare-fun mapValue!16647 () ValueCell!4665)

(declare-datatypes ((array!23913 0))(
  ( (array!23914 (arr!11403 (Array (_ BitVec 32) ValueCell!4665)) (size!11755 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23913)

(declare-fun mapKey!16647 () (_ BitVec 32))

(declare-fun mapRest!16647 () (Array (_ BitVec 32) ValueCell!4665))

(assert (=> mapNonEmpty!16647 (= (arr!11403 _values!549) (store mapRest!16647 mapKey!16647 mapValue!16647))))

(declare-fun b!399706 () Bool)

(declare-fun e!241312 () Bool)

(assert (=> b!399706 (= e!241312 (not true))))

(declare-fun e!241316 () Bool)

(assert (=> b!399706 e!241316))

(declare-fun c!54584 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!399706 (= c!54584 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!14461)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((Unit!12069 0))(
  ( (Unit!12070) )
))
(declare-fun lt!187593 () Unit!12069)

(declare-fun zeroValue!515 () V!14461)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun v!412 () V!14461)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!23915 0))(
  ( (array!23916 (arr!11404 (Array (_ BitVec 32) (_ BitVec 64))) (size!11756 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23915)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!297 (array!23915 array!23913 (_ BitVec 32) (_ BitVec 32) V!14461 V!14461 (_ BitVec 32) (_ BitVec 64) V!14461 (_ BitVec 32) Int) Unit!12069)

(assert (=> b!399706 (= lt!187593 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!297 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!399707 () Bool)

(declare-fun res!229964 () Bool)

(declare-fun e!241315 () Bool)

(assert (=> b!399707 (=> (not res!229964) (not e!241315))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!399707 (= res!229964 (validKeyInArray!0 k0!794))))

(declare-fun b!399708 () Bool)

(declare-fun e!241317 () Bool)

(declare-fun tp_is_empty!10017 () Bool)

(assert (=> b!399708 (= e!241317 tp_is_empty!10017)))

(declare-fun bm!28063 () Bool)

(declare-fun lt!187592 () array!23915)

(declare-datatypes ((tuple2!6628 0))(
  ( (tuple2!6629 (_1!3324 (_ BitVec 64)) (_2!3324 V!14461)) )
))
(declare-datatypes ((List!6582 0))(
  ( (Nil!6579) (Cons!6578 (h!7434 tuple2!6628) (t!11764 List!6582)) )
))
(declare-datatypes ((ListLongMap!5555 0))(
  ( (ListLongMap!5556 (toList!2793 List!6582)) )
))
(declare-fun call!28067 () ListLongMap!5555)

(declare-fun getCurrentListMapNoExtraKeys!1009 (array!23915 array!23913 (_ BitVec 32) (_ BitVec 32) V!14461 V!14461 (_ BitVec 32) Int) ListLongMap!5555)

(assert (=> bm!28063 (= call!28067 (getCurrentListMapNoExtraKeys!1009 (ite c!54584 _keys!709 lt!187592) (ite c!54584 _values!549 (array!23914 (store (arr!11403 _values!549) i!563 (ValueCellFull!4665 v!412)) (size!11755 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!28064 () Bool)

(declare-fun call!28066 () ListLongMap!5555)

(assert (=> bm!28064 (= call!28066 (getCurrentListMapNoExtraKeys!1009 (ite c!54584 lt!187592 _keys!709) (ite c!54584 (array!23914 (store (arr!11403 _values!549) i!563 (ValueCellFull!4665 v!412)) (size!11755 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!229960 () Bool)

(assert (=> start!38606 (=> (not res!229960) (not e!241315))))

(assert (=> start!38606 (= res!229960 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11756 _keys!709))))))

(assert (=> start!38606 e!241315))

(assert (=> start!38606 tp_is_empty!10017))

(assert (=> start!38606 tp!32528))

(assert (=> start!38606 true))

(declare-fun e!241318 () Bool)

(declare-fun array_inv!8344 (array!23913) Bool)

(assert (=> start!38606 (and (array_inv!8344 _values!549) e!241318)))

(declare-fun array_inv!8345 (array!23915) Bool)

(assert (=> start!38606 (array_inv!8345 _keys!709)))

(declare-fun b!399709 () Bool)

(declare-fun res!229967 () Bool)

(assert (=> b!399709 (=> (not res!229967) (not e!241315))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23915 (_ BitVec 32)) Bool)

(assert (=> b!399709 (= res!229967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!399710 () Bool)

(assert (=> b!399710 (= e!241316 (= call!28067 call!28066))))

(declare-fun b!399711 () Bool)

(declare-fun res!229957 () Bool)

(assert (=> b!399711 (=> (not res!229957) (not e!241315))))

(assert (=> b!399711 (= res!229957 (and (= (size!11755 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11756 _keys!709) (size!11755 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!399712 () Bool)

(declare-fun res!229966 () Bool)

(assert (=> b!399712 (=> (not res!229966) (not e!241312))))

(assert (=> b!399712 (= res!229966 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11756 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!399713 () Bool)

(assert (=> b!399713 (= e!241313 tp_is_empty!10017)))

(declare-fun b!399714 () Bool)

(assert (=> b!399714 (= e!241315 e!241312)))

(declare-fun res!229965 () Bool)

(assert (=> b!399714 (=> (not res!229965) (not e!241312))))

(assert (=> b!399714 (= res!229965 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187592 mask!1025))))

(assert (=> b!399714 (= lt!187592 (array!23916 (store (arr!11404 _keys!709) i!563 k0!794) (size!11756 _keys!709)))))

(declare-fun b!399715 () Bool)

(declare-fun res!229968 () Bool)

(assert (=> b!399715 (=> (not res!229968) (not e!241315))))

(assert (=> b!399715 (= res!229968 (or (= (select (arr!11404 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11404 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!16647 () Bool)

(assert (=> mapIsEmpty!16647 mapRes!16647))

(declare-fun b!399716 () Bool)

(declare-fun res!229962 () Bool)

(assert (=> b!399716 (=> (not res!229962) (not e!241312))))

(declare-datatypes ((List!6583 0))(
  ( (Nil!6580) (Cons!6579 (h!7435 (_ BitVec 64)) (t!11765 List!6583)) )
))
(declare-fun arrayNoDuplicates!0 (array!23915 (_ BitVec 32) List!6583) Bool)

(assert (=> b!399716 (= res!229962 (arrayNoDuplicates!0 lt!187592 #b00000000000000000000000000000000 Nil!6580))))

(declare-fun b!399717 () Bool)

(assert (=> b!399717 (= e!241318 (and e!241317 mapRes!16647))))

(declare-fun condMapEmpty!16647 () Bool)

(declare-fun mapDefault!16647 () ValueCell!4665)

(assert (=> b!399717 (= condMapEmpty!16647 (= (arr!11403 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4665)) mapDefault!16647)))))

(declare-fun b!399718 () Bool)

(declare-fun res!229959 () Bool)

(assert (=> b!399718 (=> (not res!229959) (not e!241315))))

(assert (=> b!399718 (= res!229959 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11756 _keys!709))))))

(declare-fun b!399719 () Bool)

(declare-fun res!229958 () Bool)

(assert (=> b!399719 (=> (not res!229958) (not e!241315))))

(declare-fun arrayContainsKey!0 (array!23915 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!399719 (= res!229958 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!399720 () Bool)

(declare-fun res!229963 () Bool)

(assert (=> b!399720 (=> (not res!229963) (not e!241315))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!399720 (= res!229963 (validMask!0 mask!1025))))

(declare-fun b!399721 () Bool)

(declare-fun res!229961 () Bool)

(assert (=> b!399721 (=> (not res!229961) (not e!241315))))

(assert (=> b!399721 (= res!229961 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6580))))

(declare-fun b!399722 () Bool)

(declare-fun +!1084 (ListLongMap!5555 tuple2!6628) ListLongMap!5555)

(assert (=> b!399722 (= e!241316 (= call!28066 (+!1084 call!28067 (tuple2!6629 k0!794 v!412))))))

(assert (= (and start!38606 res!229960) b!399720))

(assert (= (and b!399720 res!229963) b!399711))

(assert (= (and b!399711 res!229957) b!399709))

(assert (= (and b!399709 res!229967) b!399721))

(assert (= (and b!399721 res!229961) b!399718))

(assert (= (and b!399718 res!229959) b!399707))

(assert (= (and b!399707 res!229964) b!399715))

(assert (= (and b!399715 res!229968) b!399719))

(assert (= (and b!399719 res!229958) b!399714))

(assert (= (and b!399714 res!229965) b!399716))

(assert (= (and b!399716 res!229962) b!399712))

(assert (= (and b!399712 res!229966) b!399706))

(assert (= (and b!399706 c!54584) b!399722))

(assert (= (and b!399706 (not c!54584)) b!399710))

(assert (= (or b!399722 b!399710) bm!28064))

(assert (= (or b!399722 b!399710) bm!28063))

(assert (= (and b!399717 condMapEmpty!16647) mapIsEmpty!16647))

(assert (= (and b!399717 (not condMapEmpty!16647)) mapNonEmpty!16647))

(get-info :version)

(assert (= (and mapNonEmpty!16647 ((_ is ValueCellFull!4665) mapValue!16647)) b!399713))

(assert (= (and b!399717 ((_ is ValueCellFull!4665) mapDefault!16647)) b!399708))

(assert (= start!38606 b!399717))

(declare-fun m!394117 () Bool)

(assert (=> b!399719 m!394117))

(declare-fun m!394119 () Bool)

(assert (=> b!399716 m!394119))

(declare-fun m!394121 () Bool)

(assert (=> b!399720 m!394121))

(declare-fun m!394123 () Bool)

(assert (=> b!399714 m!394123))

(declare-fun m!394125 () Bool)

(assert (=> b!399714 m!394125))

(declare-fun m!394127 () Bool)

(assert (=> bm!28064 m!394127))

(declare-fun m!394129 () Bool)

(assert (=> bm!28064 m!394129))

(declare-fun m!394131 () Bool)

(assert (=> mapNonEmpty!16647 m!394131))

(declare-fun m!394133 () Bool)

(assert (=> b!399707 m!394133))

(declare-fun m!394135 () Bool)

(assert (=> b!399715 m!394135))

(declare-fun m!394137 () Bool)

(assert (=> b!399722 m!394137))

(declare-fun m!394139 () Bool)

(assert (=> b!399706 m!394139))

(assert (=> bm!28063 m!394127))

(declare-fun m!394141 () Bool)

(assert (=> bm!28063 m!394141))

(declare-fun m!394143 () Bool)

(assert (=> start!38606 m!394143))

(declare-fun m!394145 () Bool)

(assert (=> start!38606 m!394145))

(declare-fun m!394147 () Bool)

(assert (=> b!399709 m!394147))

(declare-fun m!394149 () Bool)

(assert (=> b!399721 m!394149))

(check-sat (not b!399722) (not b!399709) (not b!399721) (not bm!28063) (not b_next!9135) (not b!399714) (not b!399707) (not start!38606) (not b!399716) b_and!16539 (not mapNonEmpty!16647) (not b!399720) (not bm!28064) (not b!399706) tp_is_empty!10017 (not b!399719))
(check-sat b_and!16539 (not b_next!9135))
