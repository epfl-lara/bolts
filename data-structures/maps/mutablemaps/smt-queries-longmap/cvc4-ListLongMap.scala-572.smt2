; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15590 () Bool)

(assert start!15590)

(declare-fun b!154995 () Bool)

(declare-fun b_free!3245 () Bool)

(declare-fun b_next!3245 () Bool)

(assert (=> b!154995 (= b_free!3245 (not b_next!3245))))

(declare-fun tp!12260 () Bool)

(declare-fun b_and!9677 () Bool)

(assert (=> b!154995 (= tp!12260 b_and!9677)))

(declare-fun b!154988 () Bool)

(declare-fun res!73182 () Bool)

(declare-fun e!101261 () Bool)

(assert (=> b!154988 (=> (not res!73182) (not e!101261))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!154988 (= res!73182 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!154989 () Bool)

(declare-fun e!101262 () Bool)

(declare-fun tp_is_empty!3047 () Bool)

(assert (=> b!154989 (= e!101262 tp_is_empty!3047)))

(declare-fun b!154990 () Bool)

(declare-fun res!73181 () Bool)

(assert (=> b!154990 (=> (not res!73181) (not e!101261))))

(declare-datatypes ((V!3709 0))(
  ( (V!3710 (val!1568 Int)) )
))
(declare-datatypes ((ValueCell!1180 0))(
  ( (ValueCellFull!1180 (v!3429 V!3709)) (EmptyCell!1180) )
))
(declare-datatypes ((array!5146 0))(
  ( (array!5147 (arr!2430 (Array (_ BitVec 32) (_ BitVec 64))) (size!2708 (_ BitVec 32))) )
))
(declare-datatypes ((array!5148 0))(
  ( (array!5149 (arr!2431 (Array (_ BitVec 32) ValueCell!1180)) (size!2709 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1268 0))(
  ( (LongMapFixedSize!1269 (defaultEntry!3076 Int) (mask!7489 (_ BitVec 32)) (extraKeys!2817 (_ BitVec 32)) (zeroValue!2919 V!3709) (minValue!2919 V!3709) (_size!683 (_ BitVec 32)) (_keys!4851 array!5146) (_values!3059 array!5148) (_vacant!683 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1268)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5146 (_ BitVec 32)) Bool)

(assert (=> b!154990 (= res!73181 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4851 thiss!1248) (mask!7489 thiss!1248)))))

(declare-fun b!154991 () Bool)

(declare-fun e!101263 () Bool)

(assert (=> b!154991 (= e!101263 tp_is_empty!3047)))

(declare-fun mapNonEmpty!5213 () Bool)

(declare-fun mapRes!5213 () Bool)

(declare-fun tp!12259 () Bool)

(assert (=> mapNonEmpty!5213 (= mapRes!5213 (and tp!12259 e!101262))))

(declare-fun mapKey!5213 () (_ BitVec 32))

(declare-fun mapValue!5213 () ValueCell!1180)

(declare-fun mapRest!5213 () (Array (_ BitVec 32) ValueCell!1180))

(assert (=> mapNonEmpty!5213 (= (arr!2431 (_values!3059 thiss!1248)) (store mapRest!5213 mapKey!5213 mapValue!5213))))

(declare-fun mapIsEmpty!5213 () Bool)

(assert (=> mapIsEmpty!5213 mapRes!5213))

(declare-fun b!154992 () Bool)

(declare-fun res!73183 () Bool)

(assert (=> b!154992 (=> (not res!73183) (not e!101261))))

(assert (=> b!154992 (= res!73183 (and (= (size!2709 (_values!3059 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7489 thiss!1248))) (= (size!2708 (_keys!4851 thiss!1248)) (size!2709 (_values!3059 thiss!1248))) (bvsge (mask!7489 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2817 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2817 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2817 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2817 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!2817 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!2817 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)) (not (= (bvand (bvor (extraKeys!2817 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!154993 () Bool)

(declare-fun e!101264 () Bool)

(assert (=> b!154993 (= e!101264 (and e!101263 mapRes!5213))))

(declare-fun condMapEmpty!5213 () Bool)

(declare-fun mapDefault!5213 () ValueCell!1180)

