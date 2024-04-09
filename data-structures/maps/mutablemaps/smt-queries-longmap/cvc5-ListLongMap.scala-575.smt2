; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15604 () Bool)

(assert start!15604)

(declare-fun b!155181 () Bool)

(declare-fun b_free!3259 () Bool)

(declare-fun b_next!3259 () Bool)

(assert (=> b!155181 (= b_free!3259 (not b_next!3259))))

(declare-fun tp!12301 () Bool)

(declare-fun b_and!9691 () Bool)

(assert (=> b!155181 (= tp!12301 b_and!9691)))

(declare-fun b!155176 () Bool)

(declare-fun e!101386 () Bool)

(declare-fun tp_is_empty!3061 () Bool)

(assert (=> b!155176 (= e!101386 tp_is_empty!3061)))

(declare-fun b!155177 () Bool)

(declare-fun res!73287 () Bool)

(declare-fun e!101387 () Bool)

(assert (=> b!155177 (=> (not res!73287) (not e!101387))))

(declare-datatypes ((V!3729 0))(
  ( (V!3730 (val!1575 Int)) )
))
(declare-datatypes ((ValueCell!1187 0))(
  ( (ValueCellFull!1187 (v!3436 V!3729)) (EmptyCell!1187) )
))
(declare-datatypes ((array!5174 0))(
  ( (array!5175 (arr!2444 (Array (_ BitVec 32) (_ BitVec 64))) (size!2722 (_ BitVec 32))) )
))
(declare-datatypes ((array!5176 0))(
  ( (array!5177 (arr!2445 (Array (_ BitVec 32) ValueCell!1187)) (size!2723 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1282 0))(
  ( (LongMapFixedSize!1283 (defaultEntry!3083 Int) (mask!7502 (_ BitVec 32)) (extraKeys!2824 (_ BitVec 32)) (zeroValue!2926 V!3729) (minValue!2926 V!3729) (_size!690 (_ BitVec 32)) (_keys!4858 array!5174) (_values!3066 array!5176) (_vacant!690 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1282)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!155177 (= res!73287 (validMask!0 (mask!7502 thiss!1248)))))

(declare-fun b!155178 () Bool)

(declare-fun res!73284 () Bool)

(assert (=> b!155178 (=> (not res!73284) (not e!101387))))

(assert (=> b!155178 (= res!73284 (and (= (size!2723 (_values!3066 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7502 thiss!1248))) (= (size!2722 (_keys!4858 thiss!1248)) (size!2723 (_values!3066 thiss!1248))) (bvsge (mask!7502 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2824 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2824 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2824 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2824 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!2824 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!2824 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)) (not (= (bvand (bvor (extraKeys!2824 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!5234 () Bool)

(declare-fun mapRes!5234 () Bool)

(declare-fun tp!12302 () Bool)

(assert (=> mapNonEmpty!5234 (= mapRes!5234 (and tp!12302 e!101386))))

(declare-fun mapValue!5234 () ValueCell!1187)

(declare-fun mapRest!5234 () (Array (_ BitVec 32) ValueCell!1187))

(declare-fun mapKey!5234 () (_ BitVec 32))

(assert (=> mapNonEmpty!5234 (= (arr!2445 (_values!3066 thiss!1248)) (store mapRest!5234 mapKey!5234 mapValue!5234))))

(declare-fun mapIsEmpty!5234 () Bool)

(assert (=> mapIsEmpty!5234 mapRes!5234))

(declare-fun b!155180 () Bool)

(declare-fun res!73286 () Bool)

(assert (=> b!155180 (=> (not res!73286) (not e!101387))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!155180 (= res!73286 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!101390 () Bool)

(declare-fun e!101389 () Bool)

(declare-fun array_inv!1523 (array!5174) Bool)

(declare-fun array_inv!1524 (array!5176) Bool)

(assert (=> b!155181 (= e!101389 (and tp!12301 tp_is_empty!3061 (array_inv!1523 (_keys!4858 thiss!1248)) (array_inv!1524 (_values!3066 thiss!1248)) e!101390))))

(declare-fun b!155182 () Bool)

(declare-fun e!101388 () Bool)

(assert (=> b!155182 (= e!101388 tp_is_empty!3061)))

(declare-fun b!155183 () Bool)

(declare-fun res!73288 () Bool)

(assert (=> b!155183 (=> (not res!73288) (not e!101387))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5174 (_ BitVec 32)) Bool)

(assert (=> b!155183 (= res!73288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4858 thiss!1248) (mask!7502 thiss!1248)))))

(declare-fun b!155184 () Bool)

(assert (=> b!155184 (= e!101390 (and e!101388 mapRes!5234))))

(declare-fun condMapEmpty!5234 () Bool)

(declare-fun mapDefault!5234 () ValueCell!1187)

