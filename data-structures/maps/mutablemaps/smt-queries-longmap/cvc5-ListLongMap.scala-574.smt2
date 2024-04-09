; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15598 () Bool)

(assert start!15598)

(declare-fun b!155103 () Bool)

(declare-fun b_free!3253 () Bool)

(declare-fun b_next!3253 () Bool)

(assert (=> b!155103 (= b_free!3253 (not b_next!3253))))

(declare-fun tp!12283 () Bool)

(declare-fun b_and!9685 () Bool)

(assert (=> b!155103 (= tp!12283 b_and!9685)))

(declare-fun b!155095 () Bool)

(declare-fun res!73239 () Bool)

(declare-fun e!101331 () Bool)

(assert (=> b!155095 (=> (not res!73239) (not e!101331))))

(declare-datatypes ((V!3721 0))(
  ( (V!3722 (val!1572 Int)) )
))
(declare-datatypes ((ValueCell!1184 0))(
  ( (ValueCellFull!1184 (v!3433 V!3721)) (EmptyCell!1184) )
))
(declare-datatypes ((array!5162 0))(
  ( (array!5163 (arr!2438 (Array (_ BitVec 32) (_ BitVec 64))) (size!2716 (_ BitVec 32))) )
))
(declare-datatypes ((array!5164 0))(
  ( (array!5165 (arr!2439 (Array (_ BitVec 32) ValueCell!1184)) (size!2717 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1276 0))(
  ( (LongMapFixedSize!1277 (defaultEntry!3080 Int) (mask!7497 (_ BitVec 32)) (extraKeys!2821 (_ BitVec 32)) (zeroValue!2923 V!3721) (minValue!2923 V!3721) (_size!687 (_ BitVec 32)) (_keys!4855 array!5162) (_values!3063 array!5164) (_vacant!687 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1276)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!155095 (= res!73239 (validMask!0 (mask!7497 thiss!1248)))))

(declare-fun b!155096 () Bool)

(assert (=> b!155096 (= e!101331 false)))

(declare-fun lt!81353 () Bool)

(declare-datatypes ((List!1834 0))(
  ( (Nil!1831) (Cons!1830 (h!2439 (_ BitVec 64)) (t!6644 List!1834)) )
))
(declare-fun arrayNoDuplicates!0 (array!5162 (_ BitVec 32) List!1834) Bool)

(assert (=> b!155096 (= lt!81353 (arrayNoDuplicates!0 (_keys!4855 thiss!1248) #b00000000000000000000000000000000 Nil!1831))))

(declare-fun mapIsEmpty!5225 () Bool)

(declare-fun mapRes!5225 () Bool)

(assert (=> mapIsEmpty!5225 mapRes!5225))

(declare-fun b!155097 () Bool)

(declare-fun e!101334 () Bool)

(declare-fun tp_is_empty!3055 () Bool)

(assert (=> b!155097 (= e!101334 tp_is_empty!3055)))

(declare-fun res!73240 () Bool)

(assert (=> start!15598 (=> (not res!73240) (not e!101331))))

(declare-fun valid!621 (LongMapFixedSize!1276) Bool)

(assert (=> start!15598 (= res!73240 (valid!621 thiss!1248))))

(assert (=> start!15598 e!101331))

(declare-fun e!101336 () Bool)

(assert (=> start!15598 e!101336))

(assert (=> start!15598 true))

(declare-fun b!155098 () Bool)

(declare-fun res!73242 () Bool)

(assert (=> b!155098 (=> (not res!73242) (not e!101331))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!155098 (= res!73242 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!155099 () Bool)

(declare-fun e!101332 () Bool)

(assert (=> b!155099 (= e!101332 (and e!101334 mapRes!5225))))

(declare-fun condMapEmpty!5225 () Bool)

(declare-fun mapDefault!5225 () ValueCell!1184)

