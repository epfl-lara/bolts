; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17300 () Bool)

(assert start!17300)

(declare-fun b!173275 () Bool)

(declare-fun b_free!4313 () Bool)

(declare-fun b_next!4313 () Bool)

(assert (=> b!173275 (= b_free!4313 (not b_next!4313))))

(declare-fun tp!15602 () Bool)

(declare-fun b_and!10771 () Bool)

(assert (=> b!173275 (= tp!15602 b_and!10771)))

(declare-fun b!173269 () Bool)

(declare-fun res!82291 () Bool)

(declare-fun e!114486 () Bool)

(assert (=> b!173269 (=> (not res!82291) (not e!114486))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!173269 (= res!82291 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!6954 () Bool)

(declare-fun mapRes!6954 () Bool)

(assert (=> mapIsEmpty!6954 mapRes!6954))

(declare-fun b!173270 () Bool)

(declare-fun e!114480 () Bool)

(assert (=> b!173270 (= e!114486 (not e!114480))))

(declare-fun res!82290 () Bool)

(assert (=> b!173270 (=> (not res!82290) (not e!114480))))

(declare-datatypes ((V!5093 0))(
  ( (V!5094 (val!2087 Int)) )
))
(declare-datatypes ((ValueCell!1699 0))(
  ( (ValueCellFull!1699 (v!3951 V!5093)) (EmptyCell!1699) )
))
(declare-datatypes ((array!7300 0))(
  ( (array!7301 (arr!3468 (Array (_ BitVec 32) (_ BitVec 64))) (size!3767 (_ BitVec 32))) )
))
(declare-datatypes ((array!7302 0))(
  ( (array!7303 (arr!3469 (Array (_ BitVec 32) ValueCell!1699)) (size!3768 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2306 0))(
  ( (LongMapFixedSize!2307 (defaultEntry!3599 Int) (mask!8471 (_ BitVec 32)) (extraKeys!3338 (_ BitVec 32)) (zeroValue!3440 V!5093) (minValue!3442 V!5093) (_size!1202 (_ BitVec 32)) (_keys!5440 array!7300) (_values!3582 array!7302) (_vacant!1202 (_ BitVec 32))) )
))
(declare-fun lt!85760 () LongMapFixedSize!2306)

(declare-fun valid!966 (LongMapFixedSize!2306) Bool)

(assert (=> b!173270 (= res!82290 (valid!966 lt!85760))))

(declare-fun thiss!1248 () LongMapFixedSize!2306)

(declare-fun v!309 () V!5093)

(assert (=> b!173270 (= lt!85760 (LongMapFixedSize!2307 (defaultEntry!3599 thiss!1248) (mask!8471 thiss!1248) (bvor (extraKeys!3338 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3440 thiss!1248) v!309 (_size!1202 thiss!1248) (_keys!5440 thiss!1248) (_values!3582 thiss!1248) (_vacant!1202 thiss!1248)))))

(declare-datatypes ((tuple2!3238 0))(
  ( (tuple2!3239 (_1!1629 (_ BitVec 64)) (_2!1629 V!5093)) )
))
(declare-datatypes ((List!2227 0))(
  ( (Nil!2224) (Cons!2223 (h!2840 tuple2!3238) (t!7042 List!2227)) )
))
(declare-datatypes ((ListLongMap!2179 0))(
  ( (ListLongMap!2180 (toList!1105 List!2227)) )
))
(declare-fun +!242 (ListLongMap!2179 tuple2!3238) ListLongMap!2179)

(declare-fun getCurrentListMap!752 (array!7300 array!7302 (_ BitVec 32) (_ BitVec 32) V!5093 V!5093 (_ BitVec 32) Int) ListLongMap!2179)

(assert (=> b!173270 (= (+!242 (getCurrentListMap!752 (_keys!5440 thiss!1248) (_values!3582 thiss!1248) (mask!8471 thiss!1248) (extraKeys!3338 thiss!1248) (zeroValue!3440 thiss!1248) (minValue!3442 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3599 thiss!1248)) (tuple2!3239 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (getCurrentListMap!752 (_keys!5440 thiss!1248) (_values!3582 thiss!1248) (mask!8471 thiss!1248) (bvor (extraKeys!3338 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3440 thiss!1248) v!309 #b00000000000000000000000000000000 (defaultEntry!3599 thiss!1248)))))

(declare-datatypes ((Unit!5313 0))(
  ( (Unit!5314) )
))
(declare-fun lt!85759 () Unit!5313)

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!85 (array!7300 array!7302 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!5093 V!5093 V!5093 Int) Unit!5313)

(assert (=> b!173270 (= lt!85759 (lemmaChangeLongMinValueKeyThenAddPairToListMap!85 (_keys!5440 thiss!1248) (_values!3582 thiss!1248) (mask!8471 thiss!1248) (extraKeys!3338 thiss!1248) (bvor (extraKeys!3338 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3440 thiss!1248) (minValue!3442 thiss!1248) v!309 (defaultEntry!3599 thiss!1248)))))

(declare-fun b!173271 () Bool)

(declare-fun e!114481 () Bool)

(declare-fun e!114483 () Bool)

(assert (=> b!173271 (= e!114481 (and e!114483 mapRes!6954))))

(declare-fun condMapEmpty!6954 () Bool)

(declare-fun mapDefault!6954 () ValueCell!1699)

