; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15592 () Bool)

(assert start!15592)

(declare-fun b!155016 () Bool)

(declare-fun b_free!3247 () Bool)

(declare-fun b_next!3247 () Bool)

(assert (=> b!155016 (= b_free!3247 (not b_next!3247))))

(declare-fun tp!12266 () Bool)

(declare-fun b_and!9679 () Bool)

(assert (=> b!155016 (= tp!12266 b_and!9679)))

(declare-fun res!73196 () Bool)

(declare-fun e!101281 () Bool)

(assert (=> start!15592 (=> (not res!73196) (not e!101281))))

(declare-datatypes ((V!3713 0))(
  ( (V!3714 (val!1569 Int)) )
))
(declare-datatypes ((ValueCell!1181 0))(
  ( (ValueCellFull!1181 (v!3430 V!3713)) (EmptyCell!1181) )
))
(declare-datatypes ((array!5150 0))(
  ( (array!5151 (arr!2432 (Array (_ BitVec 32) (_ BitVec 64))) (size!2710 (_ BitVec 32))) )
))
(declare-datatypes ((array!5152 0))(
  ( (array!5153 (arr!2433 (Array (_ BitVec 32) ValueCell!1181)) (size!2711 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1270 0))(
  ( (LongMapFixedSize!1271 (defaultEntry!3077 Int) (mask!7492 (_ BitVec 32)) (extraKeys!2818 (_ BitVec 32)) (zeroValue!2920 V!3713) (minValue!2920 V!3713) (_size!684 (_ BitVec 32)) (_keys!4852 array!5150) (_values!3060 array!5152) (_vacant!684 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1270)

(declare-fun valid!618 (LongMapFixedSize!1270) Bool)

(assert (=> start!15592 (= res!73196 (valid!618 thiss!1248))))

(assert (=> start!15592 e!101281))

(declare-fun e!101279 () Bool)

(assert (=> start!15592 e!101279))

(assert (=> start!15592 true))

(declare-fun mapIsEmpty!5216 () Bool)

(declare-fun mapRes!5216 () Bool)

(assert (=> mapIsEmpty!5216 mapRes!5216))

(declare-fun b!155014 () Bool)

(declare-fun res!73198 () Bool)

(assert (=> b!155014 (=> (not res!73198) (not e!101281))))

(assert (=> b!155014 (= res!73198 (and (= (size!2711 (_values!3060 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7492 thiss!1248))) (= (size!2710 (_keys!4852 thiss!1248)) (size!2711 (_values!3060 thiss!1248))) (bvsge (mask!7492 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2818 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2818 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2818 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2818 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!2818 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!2818 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)) (not (= (bvand (bvor (extraKeys!2818 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!155015 () Bool)

(declare-fun e!101277 () Bool)

(declare-fun tp_is_empty!3049 () Bool)

(assert (=> b!155015 (= e!101277 tp_is_empty!3049)))

(declare-fun e!101280 () Bool)

(declare-fun array_inv!1513 (array!5150) Bool)

(declare-fun array_inv!1514 (array!5152) Bool)

(assert (=> b!155016 (= e!101279 (and tp!12266 tp_is_empty!3049 (array_inv!1513 (_keys!4852 thiss!1248)) (array_inv!1514 (_values!3060 thiss!1248)) e!101280))))

(declare-fun b!155017 () Bool)

(assert (=> b!155017 (= e!101281 false)))

(declare-fun lt!81344 () Bool)

(declare-datatypes ((List!1831 0))(
  ( (Nil!1828) (Cons!1827 (h!2436 (_ BitVec 64)) (t!6641 List!1831)) )
))
(declare-fun arrayNoDuplicates!0 (array!5150 (_ BitVec 32) List!1831) Bool)

(assert (=> b!155017 (= lt!81344 (arrayNoDuplicates!0 (_keys!4852 thiss!1248) #b00000000000000000000000000000000 Nil!1828))))

(declare-fun b!155018 () Bool)

(declare-fun e!101282 () Bool)

(assert (=> b!155018 (= e!101282 tp_is_empty!3049)))

(declare-fun b!155019 () Bool)

(assert (=> b!155019 (= e!101280 (and e!101277 mapRes!5216))))

(declare-fun condMapEmpty!5216 () Bool)

(declare-fun mapDefault!5216 () ValueCell!1181)

