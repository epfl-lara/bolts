; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75876 () Bool)

(assert start!75876)

(declare-fun b!892350 () Bool)

(declare-fun b_free!15819 () Bool)

(declare-fun b_next!15819 () Bool)

(assert (=> b!892350 (= b_free!15819 (not b_next!15819))))

(declare-fun tp!55427 () Bool)

(declare-fun b_and!26079 () Bool)

(assert (=> b!892350 (= tp!55427 b_and!26079)))

(declare-fun b!892345 () Bool)

(declare-fun e!498182 () Bool)

(declare-datatypes ((SeekEntryResult!8841 0))(
  ( (MissingZero!8841 (index!37734 (_ BitVec 32))) (Found!8841 (index!37735 (_ BitVec 32))) (Intermediate!8841 (undefined!9653 Bool) (index!37736 (_ BitVec 32)) (x!75838 (_ BitVec 32))) (Undefined!8841) (MissingVacant!8841 (index!37737 (_ BitVec 32))) )
))
(declare-fun lt!403159 () SeekEntryResult!8841)

(declare-datatypes ((array!52260 0))(
  ( (array!52261 (arr!25132 (Array (_ BitVec 32) (_ BitVec 64))) (size!25577 (_ BitVec 32))) )
))
(declare-datatypes ((V!29161 0))(
  ( (V!29162 (val!9124 Int)) )
))
(declare-datatypes ((ValueCell!8592 0))(
  ( (ValueCellFull!8592 (v!11596 V!29161)) (EmptyCell!8592) )
))
(declare-datatypes ((array!52262 0))(
  ( (array!52263 (arr!25133 (Array (_ BitVec 32) ValueCell!8592)) (size!25578 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4200 0))(
  ( (LongMapFixedSize!4201 (defaultEntry!5297 Int) (mask!25803 (_ BitVec 32)) (extraKeys!4991 (_ BitVec 32)) (zeroValue!5095 V!29161) (minValue!5095 V!29161) (_size!2155 (_ BitVec 32)) (_keys!9976 array!52260) (_values!5282 array!52262) (_vacant!2155 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4200)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!892345 (= e!498182 (inRange!0 (index!37735 lt!403159) (mask!25803 thiss!1181)))))

(declare-fun b!892346 () Bool)

(declare-fun e!498184 () Bool)

(declare-fun call!39521 () V!29161)

(assert (=> b!892346 (= e!498184 (= call!39521 (zeroValue!5095 thiss!1181)))))

(declare-fun bm!39518 () Bool)

(declare-datatypes ((tuple2!12018 0))(
  ( (tuple2!12019 (_1!6019 (_ BitVec 64)) (_2!6019 V!29161)) )
))
(declare-datatypes ((List!17865 0))(
  ( (Nil!17862) (Cons!17861 (h!18992 tuple2!12018) (t!25176 List!17865)) )
))
(declare-datatypes ((ListLongMap!10729 0))(
  ( (ListLongMap!10730 (toList!5380 List!17865)) )
))
(declare-fun lt!403156 () ListLongMap!10729)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun apply!400 (ListLongMap!10729 (_ BitVec 64)) V!29161)

(assert (=> bm!39518 (= call!39521 (apply!400 lt!403156 key!785))))

(declare-fun res!604663 () Bool)

(declare-fun e!498177 () Bool)

(assert (=> start!75876 (=> (not res!604663) (not e!498177))))

(declare-fun valid!1612 (LongMapFixedSize!4200) Bool)

(assert (=> start!75876 (= res!604663 (valid!1612 thiss!1181))))

(assert (=> start!75876 e!498177))

(declare-fun e!498183 () Bool)

(assert (=> start!75876 e!498183))

(assert (=> start!75876 true))

(declare-fun mapNonEmpty!28775 () Bool)

(declare-fun mapRes!28775 () Bool)

(declare-fun tp!55426 () Bool)

(declare-fun e!498186 () Bool)

(assert (=> mapNonEmpty!28775 (= mapRes!28775 (and tp!55426 e!498186))))

(declare-fun mapKey!28775 () (_ BitVec 32))

(declare-fun mapValue!28775 () ValueCell!8592)

(declare-fun mapRest!28775 () (Array (_ BitVec 32) ValueCell!8592))

(assert (=> mapNonEmpty!28775 (= (arr!25133 (_values!5282 thiss!1181)) (store mapRest!28775 mapKey!28775 mapValue!28775))))

(declare-fun b!892347 () Bool)

(declare-fun e!498179 () Bool)

(declare-fun call!39522 () V!29161)

(assert (=> b!892347 (= e!498179 (= call!39522 (minValue!5095 thiss!1181)))))

(declare-fun b!892348 () Bool)

(declare-fun e!498188 () Bool)

(declare-fun tp_is_empty!18147 () Bool)

(assert (=> b!892348 (= e!498188 tp_is_empty!18147)))

(declare-fun bm!39519 () Bool)

(assert (=> bm!39519 (= call!39522 call!39521)))

(declare-fun b!892349 () Bool)

(declare-fun e!498178 () Bool)

(assert (=> b!892349 (= e!498178 (and e!498188 mapRes!28775))))

(declare-fun condMapEmpty!28775 () Bool)

(declare-fun mapDefault!28775 () ValueCell!8592)

(assert (=> b!892349 (= condMapEmpty!28775 (= (arr!25133 (_values!5282 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8592)) mapDefault!28775)))))

(declare-fun array_inv!19716 (array!52260) Bool)

(declare-fun array_inv!19717 (array!52262) Bool)

(assert (=> b!892350 (= e!498183 (and tp!55427 tp_is_empty!18147 (array_inv!19716 (_keys!9976 thiss!1181)) (array_inv!19717 (_values!5282 thiss!1181)) e!498178))))

(declare-fun b!892351 () Bool)

(declare-fun res!604665 () Bool)

(assert (=> b!892351 (=> (not res!604665) (not e!498179))))

(assert (=> b!892351 (= res!604665 (not (= (bvand (extraKeys!4991 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!498180 () Bool)

(assert (=> b!892351 (= e!498180 e!498179)))

(declare-fun b!892352 () Bool)

(declare-fun e!498181 () Bool)

(assert (=> b!892352 (= e!498181 e!498184)))

(declare-fun res!604664 () Bool)

(assert (=> b!892352 (= res!604664 (not (= (bvand (extraKeys!4991 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!892352 (=> (not res!604664) (not e!498184))))

(declare-fun b!892353 () Bool)

(assert (=> b!892353 (= e!498186 tp_is_empty!18147)))

(declare-fun b!892354 () Bool)

(declare-fun e!498187 () Bool)

(assert (=> b!892354 (= e!498177 (not e!498187))))

(declare-fun res!604667 () Bool)

(assert (=> b!892354 (=> res!604667 e!498187)))

(get-info :version)

(assert (=> b!892354 (= res!604667 (not ((_ is Found!8841) lt!403159)))))

(assert (=> b!892354 e!498182))

(declare-fun res!604666 () Bool)

(assert (=> b!892354 (=> res!604666 e!498182)))

(assert (=> b!892354 (= res!604666 (not ((_ is Found!8841) lt!403159)))))

(declare-datatypes ((Unit!30363 0))(
  ( (Unit!30364) )
))
(declare-fun lt!403160 () Unit!30363)

(declare-fun lemmaSeekEntryGivesInRangeIndex!56 (array!52260 array!52262 (_ BitVec 32) (_ BitVec 32) V!29161 V!29161 (_ BitVec 64)) Unit!30363)

(assert (=> b!892354 (= lt!403160 (lemmaSeekEntryGivesInRangeIndex!56 (_keys!9976 thiss!1181) (_values!5282 thiss!1181) (mask!25803 thiss!1181) (extraKeys!4991 thiss!1181) (zeroValue!5095 thiss!1181) (minValue!5095 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52260 (_ BitVec 32)) SeekEntryResult!8841)

(assert (=> b!892354 (= lt!403159 (seekEntry!0 key!785 (_keys!9976 thiss!1181) (mask!25803 thiss!1181)))))

(declare-fun b!892355 () Bool)

(assert (=> b!892355 (= e!498187 true)))

(assert (=> b!892355 e!498181))

(declare-fun c!93875 () Bool)

(assert (=> b!892355 (= c!93875 (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!403161 () Unit!30363)

(declare-fun lemmaKeyInListMapThenSameValueInArray!4 (array!52260 array!52262 (_ BitVec 32) (_ BitVec 32) V!29161 V!29161 (_ BitVec 64) (_ BitVec 32) Int) Unit!30363)

(assert (=> b!892355 (= lt!403161 (lemmaKeyInListMapThenSameValueInArray!4 (_keys!9976 thiss!1181) (_values!5282 thiss!1181) (mask!25803 thiss!1181) (extraKeys!4991 thiss!1181) (zeroValue!5095 thiss!1181) (minValue!5095 thiss!1181) key!785 (index!37735 lt!403159) (defaultEntry!5297 thiss!1181)))))

(declare-fun contains!4357 (ListLongMap!10729 (_ BitVec 64)) Bool)

(assert (=> b!892355 (contains!4357 lt!403156 (select (arr!25132 (_keys!9976 thiss!1181)) (index!37735 lt!403159)))))

(declare-fun getCurrentListMap!2631 (array!52260 array!52262 (_ BitVec 32) (_ BitVec 32) V!29161 V!29161 (_ BitVec 32) Int) ListLongMap!10729)

(assert (=> b!892355 (= lt!403156 (getCurrentListMap!2631 (_keys!9976 thiss!1181) (_values!5282 thiss!1181) (mask!25803 thiss!1181) (extraKeys!4991 thiss!1181) (zeroValue!5095 thiss!1181) (minValue!5095 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5297 thiss!1181)))))

(declare-fun lt!403157 () Unit!30363)

(declare-fun lemmaValidKeyInArrayIsInListMap!224 (array!52260 array!52262 (_ BitVec 32) (_ BitVec 32) V!29161 V!29161 (_ BitVec 32) Int) Unit!30363)

(assert (=> b!892355 (= lt!403157 (lemmaValidKeyInArrayIsInListMap!224 (_keys!9976 thiss!1181) (_values!5282 thiss!1181) (mask!25803 thiss!1181) (extraKeys!4991 thiss!1181) (zeroValue!5095 thiss!1181) (minValue!5095 thiss!1181) (index!37735 lt!403159) (defaultEntry!5297 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52260 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!892355 (arrayContainsKey!0 (_keys!9976 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!403158 () Unit!30363)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52260 (_ BitVec 64) (_ BitVec 32)) Unit!30363)

(assert (=> b!892355 (= lt!403158 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9976 thiss!1181) key!785 (index!37735 lt!403159)))))

(declare-fun b!892356 () Bool)

(assert (=> b!892356 (= e!498181 e!498180)))

(declare-fun c!93874 () Bool)

(assert (=> b!892356 (= c!93874 (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!892357 () Bool)

(declare-fun res!604668 () Bool)

(assert (=> b!892357 (=> (not res!604668) (not e!498177))))

(assert (=> b!892357 (= res!604668 (not (= key!785 (bvneg key!785))))))

(declare-fun mapIsEmpty!28775 () Bool)

(assert (=> mapIsEmpty!28775 mapRes!28775))

(declare-fun b!892358 () Bool)

(declare-fun get!13235 (ValueCell!8592 V!29161) V!29161)

(declare-fun dynLambda!1288 (Int (_ BitVec 64)) V!29161)

(assert (=> b!892358 (= e!498180 (= call!39522 (get!13235 (select (arr!25133 (_values!5282 thiss!1181)) (index!37735 lt!403159)) (dynLambda!1288 (defaultEntry!5297 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!75876 res!604663) b!892357))

(assert (= (and b!892357 res!604668) b!892354))

(assert (= (and b!892354 (not res!604666)) b!892345))

(assert (= (and b!892354 (not res!604667)) b!892355))

(assert (= (and b!892355 c!93875) b!892352))

(assert (= (and b!892355 (not c!93875)) b!892356))

(assert (= (and b!892352 res!604664) b!892346))

(assert (= (and b!892356 c!93874) b!892351))

(assert (= (and b!892356 (not c!93874)) b!892358))

(assert (= (and b!892351 res!604665) b!892347))

(assert (= (or b!892347 b!892358) bm!39519))

(assert (= (or b!892346 bm!39519) bm!39518))

(assert (= (and b!892349 condMapEmpty!28775) mapIsEmpty!28775))

(assert (= (and b!892349 (not condMapEmpty!28775)) mapNonEmpty!28775))

(assert (= (and mapNonEmpty!28775 ((_ is ValueCellFull!8592) mapValue!28775)) b!892353))

(assert (= (and b!892349 ((_ is ValueCellFull!8592) mapDefault!28775)) b!892348))

(assert (= b!892350 b!892349))

(assert (= start!75876 b!892350))

(declare-fun b_lambda!12915 () Bool)

(assert (=> (not b_lambda!12915) (not b!892358)))

(declare-fun t!25175 () Bool)

(declare-fun tb!5161 () Bool)

(assert (=> (and b!892350 (= (defaultEntry!5297 thiss!1181) (defaultEntry!5297 thiss!1181)) t!25175) tb!5161))

(declare-fun result!10025 () Bool)

(assert (=> tb!5161 (= result!10025 tp_is_empty!18147)))

(assert (=> b!892358 t!25175))

(declare-fun b_and!26081 () Bool)

(assert (= b_and!26079 (and (=> t!25175 result!10025) b_and!26081)))

(declare-fun m!830695 () Bool)

(assert (=> bm!39518 m!830695))

(declare-fun m!830697 () Bool)

(assert (=> start!75876 m!830697))

(declare-fun m!830699 () Bool)

(assert (=> b!892345 m!830699))

(declare-fun m!830701 () Bool)

(assert (=> b!892350 m!830701))

(declare-fun m!830703 () Bool)

(assert (=> b!892350 m!830703))

(declare-fun m!830705 () Bool)

(assert (=> b!892358 m!830705))

(declare-fun m!830707 () Bool)

(assert (=> b!892358 m!830707))

(assert (=> b!892358 m!830705))

(assert (=> b!892358 m!830707))

(declare-fun m!830709 () Bool)

(assert (=> b!892358 m!830709))

(declare-fun m!830711 () Bool)

(assert (=> mapNonEmpty!28775 m!830711))

(declare-fun m!830713 () Bool)

(assert (=> b!892354 m!830713))

(declare-fun m!830715 () Bool)

(assert (=> b!892354 m!830715))

(declare-fun m!830717 () Bool)

(assert (=> b!892355 m!830717))

(declare-fun m!830719 () Bool)

(assert (=> b!892355 m!830719))

(declare-fun m!830721 () Bool)

(assert (=> b!892355 m!830721))

(declare-fun m!830723 () Bool)

(assert (=> b!892355 m!830723))

(assert (=> b!892355 m!830721))

(declare-fun m!830725 () Bool)

(assert (=> b!892355 m!830725))

(declare-fun m!830727 () Bool)

(assert (=> b!892355 m!830727))

(declare-fun m!830729 () Bool)

(assert (=> b!892355 m!830729))

(check-sat (not b_lambda!12915) (not start!75876) (not b!892345) (not bm!39518) (not b!892350) (not b_next!15819) (not b!892354) tp_is_empty!18147 (not mapNonEmpty!28775) (not b!892358) b_and!26081 (not b!892355))
(check-sat b_and!26081 (not b_next!15819))
