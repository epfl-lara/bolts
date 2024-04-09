; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15596 () Bool)

(assert start!15596)

(declare-fun b!155074 () Bool)

(declare-fun b_free!3251 () Bool)

(declare-fun b_next!3251 () Bool)

(assert (=> b!155074 (= b_free!3251 (not b_next!3251))))

(declare-fun tp!12278 () Bool)

(declare-fun b_and!9683 () Bool)

(assert (=> b!155074 (= tp!12278 b_and!9683)))

(declare-fun res!73224 () Bool)

(declare-fun e!101315 () Bool)

(assert (=> start!15596 (=> (not res!73224) (not e!101315))))

(declare-datatypes ((V!3717 0))(
  ( (V!3718 (val!1571 Int)) )
))
(declare-datatypes ((ValueCell!1183 0))(
  ( (ValueCellFull!1183 (v!3432 V!3717)) (EmptyCell!1183) )
))
(declare-datatypes ((array!5158 0))(
  ( (array!5159 (arr!2436 (Array (_ BitVec 32) (_ BitVec 64))) (size!2714 (_ BitVec 32))) )
))
(declare-datatypes ((array!5160 0))(
  ( (array!5161 (arr!2437 (Array (_ BitVec 32) ValueCell!1183)) (size!2715 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1274 0))(
  ( (LongMapFixedSize!1275 (defaultEntry!3079 Int) (mask!7494 (_ BitVec 32)) (extraKeys!2820 (_ BitVec 32)) (zeroValue!2922 V!3717) (minValue!2922 V!3717) (_size!686 (_ BitVec 32)) (_keys!4854 array!5158) (_values!3062 array!5160) (_vacant!686 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1274)

(declare-fun valid!620 (LongMapFixedSize!1274) Bool)

(assert (=> start!15596 (= res!73224 (valid!620 thiss!1248))))

(assert (=> start!15596 e!101315))

(declare-fun e!101318 () Bool)

(assert (=> start!15596 e!101318))

(assert (=> start!15596 true))

(declare-fun b!155068 () Bool)

(declare-fun res!73227 () Bool)

(assert (=> b!155068 (=> (not res!73227) (not e!101315))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!155068 (= res!73227 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!5222 () Bool)

(declare-fun mapRes!5222 () Bool)

(assert (=> mapIsEmpty!5222 mapRes!5222))

(declare-fun b!155069 () Bool)

(declare-fun res!73228 () Bool)

(assert (=> b!155069 (=> (not res!73228) (not e!101315))))

(assert (=> b!155069 (= res!73228 (and (= (size!2715 (_values!3062 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7494 thiss!1248))) (= (size!2714 (_keys!4854 thiss!1248)) (size!2715 (_values!3062 thiss!1248))) (bvsge (mask!7494 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2820 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2820 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2820 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2820 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!2820 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!2820 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)) (not (= (bvand (bvor (extraKeys!2820 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!155070 () Bool)

(declare-fun res!73226 () Bool)

(assert (=> b!155070 (=> (not res!73226) (not e!101315))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5158 (_ BitVec 32)) Bool)

(assert (=> b!155070 (= res!73226 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4854 thiss!1248) (mask!7494 thiss!1248)))))

(declare-fun b!155071 () Bool)

(declare-fun res!73225 () Bool)

(assert (=> b!155071 (=> (not res!73225) (not e!101315))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!155071 (= res!73225 (validMask!0 (mask!7494 thiss!1248)))))

(declare-fun mapNonEmpty!5222 () Bool)

(declare-fun tp!12277 () Bool)

(declare-fun e!101317 () Bool)

(assert (=> mapNonEmpty!5222 (= mapRes!5222 (and tp!12277 e!101317))))

(declare-fun mapValue!5222 () ValueCell!1183)

(declare-fun mapKey!5222 () (_ BitVec 32))

(declare-fun mapRest!5222 () (Array (_ BitVec 32) ValueCell!1183))

(assert (=> mapNonEmpty!5222 (= (arr!2437 (_values!3062 thiss!1248)) (store mapRest!5222 mapKey!5222 mapValue!5222))))

(declare-fun b!155072 () Bool)

(declare-fun e!101314 () Bool)

(declare-fun tp_is_empty!3053 () Bool)

(assert (=> b!155072 (= e!101314 tp_is_empty!3053)))

(declare-fun b!155073 () Bool)

(assert (=> b!155073 (= e!101315 false)))

(declare-fun lt!81350 () Bool)

(declare-datatypes ((List!1833 0))(
  ( (Nil!1830) (Cons!1829 (h!2438 (_ BitVec 64)) (t!6643 List!1833)) )
))
(declare-fun arrayNoDuplicates!0 (array!5158 (_ BitVec 32) List!1833) Bool)

(assert (=> b!155073 (= lt!81350 (arrayNoDuplicates!0 (_keys!4854 thiss!1248) #b00000000000000000000000000000000 Nil!1830))))

(declare-fun e!101316 () Bool)

(declare-fun array_inv!1517 (array!5158) Bool)

(declare-fun array_inv!1518 (array!5160) Bool)

(assert (=> b!155074 (= e!101318 (and tp!12278 tp_is_empty!3053 (array_inv!1517 (_keys!4854 thiss!1248)) (array_inv!1518 (_values!3062 thiss!1248)) e!101316))))

(declare-fun b!155075 () Bool)

(assert (=> b!155075 (= e!101316 (and e!101314 mapRes!5222))))

(declare-fun condMapEmpty!5222 () Bool)

(declare-fun mapDefault!5222 () ValueCell!1183)

