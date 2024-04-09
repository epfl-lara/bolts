; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17004 () Bool)

(assert start!17004)

(declare-fun b!170750 () Bool)

(declare-fun b_free!4229 () Bool)

(declare-fun b_next!4229 () Bool)

(assert (=> b!170750 (= b_free!4229 (not b_next!4229))))

(declare-fun tp!15314 () Bool)

(declare-fun b_and!10661 () Bool)

(assert (=> b!170750 (= tp!15314 b_and!10661)))

(declare-fun b!170747 () Bool)

(declare-fun e!112716 () Bool)

(declare-datatypes ((V!4981 0))(
  ( (V!4982 (val!2045 Int)) )
))
(declare-datatypes ((ValueCell!1657 0))(
  ( (ValueCellFull!1657 (v!3906 V!4981)) (EmptyCell!1657) )
))
(declare-datatypes ((array!7112 0))(
  ( (array!7113 (arr!3384 (Array (_ BitVec 32) (_ BitVec 64))) (size!3677 (_ BitVec 32))) )
))
(declare-datatypes ((array!7114 0))(
  ( (array!7115 (arr!3385 (Array (_ BitVec 32) ValueCell!1657)) (size!3678 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2222 0))(
  ( (LongMapFixedSize!2223 (defaultEntry!3553 Int) (mask!8377 (_ BitVec 32)) (extraKeys!3294 (_ BitVec 32)) (zeroValue!3396 V!4981) (minValue!3396 V!4981) (_size!1160 (_ BitVec 32)) (_keys!5384 array!7112) (_values!3536 array!7114) (_vacant!1160 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2222)

(declare-datatypes ((List!2211 0))(
  ( (Nil!2208) (Cons!2207 (h!2824 (_ BitVec 64)) (t!7021 List!2211)) )
))
(declare-fun arrayNoDuplicates!0 (array!7112 (_ BitVec 32) List!2211) Bool)

(assert (=> b!170747 (= e!112716 (not (arrayNoDuplicates!0 (_keys!5384 thiss!1248) #b00000000000000000000000000000000 Nil!2208)))))

(declare-fun b!170748 () Bool)

(declare-fun e!112717 () Bool)

(declare-fun tp_is_empty!4001 () Bool)

(assert (=> b!170748 (= e!112717 tp_is_empty!4001)))

(declare-fun b!170749 () Bool)

(declare-fun res!81186 () Bool)

(assert (=> b!170749 (=> (not res!81186) (not e!112716))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7112 (_ BitVec 32)) Bool)

(assert (=> b!170749 (= res!81186 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5384 thiss!1248) (mask!8377 thiss!1248)))))

(declare-fun e!112720 () Bool)

(declare-fun e!112721 () Bool)

(declare-fun array_inv!2155 (array!7112) Bool)

(declare-fun array_inv!2156 (array!7114) Bool)

(assert (=> b!170750 (= e!112721 (and tp!15314 tp_is_empty!4001 (array_inv!2155 (_keys!5384 thiss!1248)) (array_inv!2156 (_values!3536 thiss!1248)) e!112720))))

(declare-fun b!170751 () Bool)

(declare-fun e!112718 () Bool)

(assert (=> b!170751 (= e!112718 tp_is_empty!4001)))

(declare-fun b!170752 () Bool)

(declare-fun mapRes!6791 () Bool)

(assert (=> b!170752 (= e!112720 (and e!112717 mapRes!6791))))

(declare-fun condMapEmpty!6791 () Bool)

(declare-fun mapDefault!6791 () ValueCell!1657)

