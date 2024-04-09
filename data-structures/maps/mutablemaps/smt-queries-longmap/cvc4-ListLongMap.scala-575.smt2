; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15608 () Bool)

(assert start!15608)

(declare-fun b!155230 () Bool)

(declare-fun b_free!3263 () Bool)

(declare-fun b_next!3263 () Bool)

(assert (=> b!155230 (= b_free!3263 (not b_next!3263))))

(declare-fun tp!12314 () Bool)

(declare-fun b_and!9695 () Bool)

(assert (=> b!155230 (= tp!12314 b_and!9695)))

(declare-fun res!73317 () Bool)

(declare-fun e!101422 () Bool)

(assert (=> start!15608 (=> (not res!73317) (not e!101422))))

(declare-datatypes ((V!3733 0))(
  ( (V!3734 (val!1577 Int)) )
))
(declare-datatypes ((ValueCell!1189 0))(
  ( (ValueCellFull!1189 (v!3438 V!3733)) (EmptyCell!1189) )
))
(declare-datatypes ((array!5182 0))(
  ( (array!5183 (arr!2448 (Array (_ BitVec 32) (_ BitVec 64))) (size!2726 (_ BitVec 32))) )
))
(declare-datatypes ((array!5184 0))(
  ( (array!5185 (arr!2449 (Array (_ BitVec 32) ValueCell!1189)) (size!2727 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1286 0))(
  ( (LongMapFixedSize!1287 (defaultEntry!3085 Int) (mask!7504 (_ BitVec 32)) (extraKeys!2826 (_ BitVec 32)) (zeroValue!2928 V!3733) (minValue!2928 V!3733) (_size!692 (_ BitVec 32)) (_keys!4860 array!5182) (_values!3068 array!5184) (_vacant!692 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1286)

(declare-fun valid!625 (LongMapFixedSize!1286) Bool)

(assert (=> start!15608 (= res!73317 (valid!625 thiss!1248))))

(assert (=> start!15608 e!101422))

(declare-fun e!101423 () Bool)

(assert (=> start!15608 e!101423))

(assert (=> start!15608 true))

(declare-fun mapNonEmpty!5240 () Bool)

(declare-fun mapRes!5240 () Bool)

(declare-fun tp!12313 () Bool)

(declare-fun e!101421 () Bool)

(assert (=> mapNonEmpty!5240 (= mapRes!5240 (and tp!12313 e!101421))))

(declare-fun mapValue!5240 () ValueCell!1189)

(declare-fun mapRest!5240 () (Array (_ BitVec 32) ValueCell!1189))

(declare-fun mapKey!5240 () (_ BitVec 32))

(assert (=> mapNonEmpty!5240 (= (arr!2449 (_values!3068 thiss!1248)) (store mapRest!5240 mapKey!5240 mapValue!5240))))

(declare-fun tp_is_empty!3065 () Bool)

(declare-fun e!101426 () Bool)

(declare-fun array_inv!1527 (array!5182) Bool)

(declare-fun array_inv!1528 (array!5184) Bool)

(assert (=> b!155230 (= e!101423 (and tp!12314 tp_is_empty!3065 (array_inv!1527 (_keys!4860 thiss!1248)) (array_inv!1528 (_values!3068 thiss!1248)) e!101426))))

(declare-fun b!155231 () Bool)

(declare-fun res!73318 () Bool)

(assert (=> b!155231 (=> (not res!73318) (not e!101422))))

(assert (=> b!155231 (= res!73318 (and (= (size!2727 (_values!3068 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7504 thiss!1248))) (= (size!2726 (_keys!4860 thiss!1248)) (size!2727 (_values!3068 thiss!1248))) (bvsge (mask!7504 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2826 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2826 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2826 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2826 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!2826 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!2826 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)) (not (= (bvand (bvor (extraKeys!2826 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!155232 () Bool)

(declare-fun res!73316 () Bool)

(assert (=> b!155232 (=> (not res!73316) (not e!101422))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!155232 (= res!73316 (validMask!0 (mask!7504 thiss!1248)))))

(declare-fun b!155233 () Bool)

(assert (=> b!155233 (= e!101422 false)))

(declare-fun lt!81368 () Bool)

(declare-datatypes ((List!1837 0))(
  ( (Nil!1834) (Cons!1833 (h!2442 (_ BitVec 64)) (t!6647 List!1837)) )
))
(declare-fun arrayNoDuplicates!0 (array!5182 (_ BitVec 32) List!1837) Bool)

(assert (=> b!155233 (= lt!81368 (arrayNoDuplicates!0 (_keys!4860 thiss!1248) #b00000000000000000000000000000000 Nil!1834))))

(declare-fun mapIsEmpty!5240 () Bool)

(assert (=> mapIsEmpty!5240 mapRes!5240))

(declare-fun b!155234 () Bool)

(declare-fun res!73315 () Bool)

(assert (=> b!155234 (=> (not res!73315) (not e!101422))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!155234 (= res!73315 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!155235 () Bool)

(declare-fun res!73314 () Bool)

(assert (=> b!155235 (=> (not res!73314) (not e!101422))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5182 (_ BitVec 32)) Bool)

(assert (=> b!155235 (= res!73314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4860 thiss!1248) (mask!7504 thiss!1248)))))

(declare-fun b!155236 () Bool)

(declare-fun e!101425 () Bool)

(assert (=> b!155236 (= e!101426 (and e!101425 mapRes!5240))))

(declare-fun condMapEmpty!5240 () Bool)

(declare-fun mapDefault!5240 () ValueCell!1189)

