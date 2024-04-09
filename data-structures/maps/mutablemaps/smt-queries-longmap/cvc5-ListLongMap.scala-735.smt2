; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17158 () Bool)

(assert start!17158)

(declare-fun b!172264 () Bool)

(declare-fun b_free!4249 () Bool)

(declare-fun b_next!4249 () Bool)

(assert (=> b!172264 (= b_free!4249 (not b_next!4249))))

(declare-fun tp!15390 () Bool)

(declare-fun b_and!10707 () Bool)

(assert (=> b!172264 (= tp!15390 b_and!10707)))

(declare-fun b!172262 () Bool)

(declare-fun res!81813 () Bool)

(declare-fun e!113710 () Bool)

(assert (=> b!172262 (=> (not res!81813) (not e!113710))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!172262 (= res!81813 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!172263 () Bool)

(declare-fun e!113713 () Bool)

(declare-fun tp_is_empty!4021 () Bool)

(assert (=> b!172263 (= e!113713 tp_is_empty!4021)))

(declare-fun mapIsEmpty!6837 () Bool)

(declare-fun mapRes!6837 () Bool)

(assert (=> mapIsEmpty!6837 mapRes!6837))

(declare-fun mapNonEmpty!6837 () Bool)

(declare-fun tp!15389 () Bool)

(declare-fun e!113712 () Bool)

(assert (=> mapNonEmpty!6837 (= mapRes!6837 (and tp!15389 e!113712))))

(declare-fun mapKey!6837 () (_ BitVec 32))

(declare-datatypes ((V!5009 0))(
  ( (V!5010 (val!2055 Int)) )
))
(declare-datatypes ((ValueCell!1667 0))(
  ( (ValueCellFull!1667 (v!3919 V!5009)) (EmptyCell!1667) )
))
(declare-fun mapRest!6837 () (Array (_ BitVec 32) ValueCell!1667))

(declare-datatypes ((array!7160 0))(
  ( (array!7161 (arr!3404 (Array (_ BitVec 32) (_ BitVec 64))) (size!3700 (_ BitVec 32))) )
))
(declare-datatypes ((array!7162 0))(
  ( (array!7163 (arr!3405 (Array (_ BitVec 32) ValueCell!1667)) (size!3701 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2242 0))(
  ( (LongMapFixedSize!2243 (defaultEntry!3567 Int) (mask!8408 (_ BitVec 32)) (extraKeys!3306 (_ BitVec 32)) (zeroValue!3408 V!5009) (minValue!3410 V!5009) (_size!1170 (_ BitVec 32)) (_keys!5403 array!7160) (_values!3550 array!7162) (_vacant!1170 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2242)

(declare-fun mapValue!6837 () ValueCell!1667)

(assert (=> mapNonEmpty!6837 (= (arr!3405 (_values!3550 thiss!1248)) (store mapRest!6837 mapKey!6837 mapValue!6837))))

(declare-fun e!113711 () Bool)

(declare-fun e!113709 () Bool)

(declare-fun array_inv!2171 (array!7160) Bool)

(declare-fun array_inv!2172 (array!7162) Bool)

(assert (=> b!172264 (= e!113711 (and tp!15390 tp_is_empty!4021 (array_inv!2171 (_keys!5403 thiss!1248)) (array_inv!2172 (_values!3550 thiss!1248)) e!113709))))

(declare-fun b!172265 () Bool)

(assert (=> b!172265 (= e!113712 tp_is_empty!4021)))

(declare-fun b!172266 () Bool)

(declare-fun res!81812 () Bool)

(assert (=> b!172266 (=> (not res!81812) (not e!113710))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!172266 (= res!81812 (validMask!0 (mask!8408 thiss!1248)))))

(declare-fun res!81811 () Bool)

(assert (=> start!17158 (=> (not res!81811) (not e!113710))))

(declare-fun valid!944 (LongMapFixedSize!2242) Bool)

(assert (=> start!17158 (= res!81811 (valid!944 thiss!1248))))

(assert (=> start!17158 e!113710))

(assert (=> start!17158 e!113711))

(assert (=> start!17158 true))

(declare-fun b!172267 () Bool)

(assert (=> b!172267 (= e!113709 (and e!113713 mapRes!6837))))

(declare-fun condMapEmpty!6837 () Bool)

(declare-fun mapDefault!6837 () ValueCell!1667)

