; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17220 () Bool)

(assert start!17220)

(declare-fun b!172651 () Bool)

(declare-fun b_free!4271 () Bool)

(declare-fun b_next!4271 () Bool)

(assert (=> b!172651 (= b_free!4271 (not b_next!4271))))

(declare-fun tp!15466 () Bool)

(declare-fun b_and!10729 () Bool)

(assert (=> b!172651 (= tp!15466 b_and!10729)))

(declare-fun mapNonEmpty!6881 () Bool)

(declare-fun mapRes!6881 () Bool)

(declare-fun tp!15467 () Bool)

(declare-fun e!114000 () Bool)

(assert (=> mapNonEmpty!6881 (= mapRes!6881 (and tp!15467 e!114000))))

(declare-datatypes ((V!5037 0))(
  ( (V!5038 (val!2066 Int)) )
))
(declare-datatypes ((ValueCell!1678 0))(
  ( (ValueCellFull!1678 (v!3930 V!5037)) (EmptyCell!1678) )
))
(declare-fun mapValue!6881 () ValueCell!1678)

(declare-fun mapRest!6881 () (Array (_ BitVec 32) ValueCell!1678))

(declare-fun mapKey!6881 () (_ BitVec 32))

(declare-datatypes ((array!7210 0))(
  ( (array!7211 (arr!3426 (Array (_ BitVec 32) (_ BitVec 64))) (size!3724 (_ BitVec 32))) )
))
(declare-datatypes ((array!7212 0))(
  ( (array!7213 (arr!3427 (Array (_ BitVec 32) ValueCell!1678)) (size!3725 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2264 0))(
  ( (LongMapFixedSize!2265 (defaultEntry!3578 Int) (mask!8430 (_ BitVec 32)) (extraKeys!3317 (_ BitVec 32)) (zeroValue!3419 V!5037) (minValue!3421 V!5037) (_size!1181 (_ BitVec 32)) (_keys!5416 array!7210) (_values!3561 array!7212) (_vacant!1181 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2264)

(assert (=> mapNonEmpty!6881 (= (arr!3427 (_values!3561 thiss!1248)) (store mapRest!6881 mapKey!6881 mapValue!6881))))

(declare-fun b!172650 () Bool)

(declare-fun res!81991 () Bool)

(declare-fun e!114002 () Bool)

(assert (=> b!172650 (=> (not res!81991) (not e!114002))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!172650 (= res!81991 (validMask!0 (mask!8430 thiss!1248)))))

(declare-fun res!81992 () Bool)

(assert (=> start!17220 (=> (not res!81992) (not e!114002))))

(declare-fun valid!951 (LongMapFixedSize!2264) Bool)

(assert (=> start!17220 (= res!81992 (valid!951 thiss!1248))))

(assert (=> start!17220 e!114002))

(declare-fun e!114001 () Bool)

(assert (=> start!17220 e!114001))

(assert (=> start!17220 true))

(declare-fun e!113999 () Bool)

(declare-fun tp_is_empty!4043 () Bool)

(declare-fun array_inv!2185 (array!7210) Bool)

(declare-fun array_inv!2186 (array!7212) Bool)

(assert (=> b!172651 (= e!114001 (and tp!15466 tp_is_empty!4043 (array_inv!2185 (_keys!5416 thiss!1248)) (array_inv!2186 (_values!3561 thiss!1248)) e!113999))))

(declare-fun b!172652 () Bool)

(declare-fun e!113997 () Bool)

(assert (=> b!172652 (= e!113997 tp_is_empty!4043)))

(declare-fun b!172653 () Bool)

(declare-fun res!81993 () Bool)

(assert (=> b!172653 (=> (not res!81993) (not e!114002))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!172653 (= res!81993 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!172654 () Bool)

(assert (=> b!172654 (= e!114002 (and (= (size!3725 (_values!3561 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8430 thiss!1248))) (= (size!3724 (_keys!5416 thiss!1248)) (size!3725 (_values!3561 thiss!1248))) (bvsge (mask!8430 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3317 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3317 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!6881 () Bool)

(assert (=> mapIsEmpty!6881 mapRes!6881))

(declare-fun b!172655 () Bool)

(assert (=> b!172655 (= e!114000 tp_is_empty!4043)))

(declare-fun b!172656 () Bool)

(assert (=> b!172656 (= e!113999 (and e!113997 mapRes!6881))))

(declare-fun condMapEmpty!6881 () Bool)

(declare-fun mapDefault!6881 () ValueCell!1678)

