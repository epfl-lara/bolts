; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15656 () Bool)

(assert start!15656)

(declare-fun b!155836 () Bool)

(declare-fun b_free!3311 () Bool)

(declare-fun b_next!3311 () Bool)

(assert (=> b!155836 (= b_free!3311 (not b_next!3311))))

(declare-fun tp!12458 () Bool)

(declare-fun b_and!9743 () Bool)

(assert (=> b!155836 (= tp!12458 b_and!9743)))

(declare-fun mapNonEmpty!5312 () Bool)

(declare-fun mapRes!5312 () Bool)

(declare-fun tp!12457 () Bool)

(declare-fun e!101861 () Bool)

(assert (=> mapNonEmpty!5312 (= mapRes!5312 (and tp!12457 e!101861))))

(declare-datatypes ((V!3797 0))(
  ( (V!3798 (val!1601 Int)) )
))
(declare-datatypes ((ValueCell!1213 0))(
  ( (ValueCellFull!1213 (v!3462 V!3797)) (EmptyCell!1213) )
))
(declare-fun mapValue!5312 () ValueCell!1213)

(declare-fun mapKey!5312 () (_ BitVec 32))

(declare-fun mapRest!5312 () (Array (_ BitVec 32) ValueCell!1213))

(declare-datatypes ((array!5278 0))(
  ( (array!5279 (arr!2496 (Array (_ BitVec 32) (_ BitVec 64))) (size!2774 (_ BitVec 32))) )
))
(declare-datatypes ((array!5280 0))(
  ( (array!5281 (arr!2497 (Array (_ BitVec 32) ValueCell!1213)) (size!2775 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1334 0))(
  ( (LongMapFixedSize!1335 (defaultEntry!3109 Int) (mask!7544 (_ BitVec 32)) (extraKeys!2850 (_ BitVec 32)) (zeroValue!2952 V!3797) (minValue!2952 V!3797) (_size!716 (_ BitVec 32)) (_keys!4884 array!5278) (_values!3092 array!5280) (_vacant!716 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1334)

(assert (=> mapNonEmpty!5312 (= (arr!2497 (_values!3092 thiss!1248)) (store mapRest!5312 mapKey!5312 mapValue!5312))))

(declare-fun b!155835 () Bool)

(declare-fun e!101863 () Bool)

(declare-fun tp_is_empty!3113 () Bool)

(assert (=> b!155835 (= e!101863 tp_is_empty!3113)))

(declare-fun b!155837 () Bool)

(declare-fun e!101864 () Bool)

(declare-fun e!101862 () Bool)

(assert (=> b!155837 (= e!101864 (not e!101862))))

(declare-fun res!73633 () Bool)

(assert (=> b!155837 (=> res!73633 e!101862)))

(declare-fun lt!81467 () LongMapFixedSize!1334)

(declare-fun valid!644 (LongMapFixedSize!1334) Bool)

(assert (=> b!155837 (= res!73633 (not (valid!644 lt!81467)))))

(declare-fun v!309 () V!3797)

(assert (=> b!155837 (= lt!81467 (LongMapFixedSize!1335 (defaultEntry!3109 thiss!1248) (mask!7544 thiss!1248) (bvor (extraKeys!2850 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!2952 thiss!1248) (_size!716 thiss!1248) (_keys!4884 thiss!1248) (_values!3092 thiss!1248) (_vacant!716 thiss!1248)))))

(declare-datatypes ((tuple2!2818 0))(
  ( (tuple2!2819 (_1!1419 (_ BitVec 64)) (_2!1419 V!3797)) )
))
(declare-datatypes ((List!1854 0))(
  ( (Nil!1851) (Cons!1850 (h!2459 tuple2!2818) (t!6664 List!1854)) )
))
(declare-datatypes ((ListLongMap!1827 0))(
  ( (ListLongMap!1828 (toList!929 List!1854)) )
))
(declare-fun +!193 (ListLongMap!1827 tuple2!2818) ListLongMap!1827)

(declare-fun getCurrentListMap!590 (array!5278 array!5280 (_ BitVec 32) (_ BitVec 32) V!3797 V!3797 (_ BitVec 32) Int) ListLongMap!1827)

(assert (=> b!155837 (= (+!193 (getCurrentListMap!590 (_keys!4884 thiss!1248) (_values!3092 thiss!1248) (mask!7544 thiss!1248) (extraKeys!2850 thiss!1248) (zeroValue!2952 thiss!1248) (minValue!2952 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3109 thiss!1248)) (tuple2!2819 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (getCurrentListMap!590 (_keys!4884 thiss!1248) (_values!3092 thiss!1248) (mask!7544 thiss!1248) (bvor (extraKeys!2850 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!2952 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3109 thiss!1248)))))

(declare-datatypes ((Unit!4938 0))(
  ( (Unit!4939) )
))
(declare-fun lt!81465 () Unit!4938)

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!77 (array!5278 array!5280 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3797 V!3797 V!3797 Int) Unit!4938)

(assert (=> b!155837 (= lt!81465 (lemmaChangeZeroKeyThenAddPairToListMap!77 (_keys!4884 thiss!1248) (_values!3092 thiss!1248) (mask!7544 thiss!1248) (extraKeys!2850 thiss!1248) (bvor (extraKeys!2850 thiss!1248) #b00000000000000000000000000000001) (zeroValue!2952 thiss!1248) v!309 (minValue!2952 thiss!1248) (defaultEntry!3109 thiss!1248)))))

(declare-fun b!155838 () Bool)

(assert (=> b!155838 (= e!101861 tp_is_empty!3113)))

(declare-fun b!155839 () Bool)

(declare-fun e!101866 () Bool)

(assert (=> b!155839 (= e!101866 (and e!101863 mapRes!5312))))

(declare-fun condMapEmpty!5312 () Bool)

(declare-fun mapDefault!5312 () ValueCell!1213)

