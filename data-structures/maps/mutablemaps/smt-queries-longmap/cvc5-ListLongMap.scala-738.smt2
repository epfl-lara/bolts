; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17216 () Bool)

(assert start!17216)

(declare-fun b!172612 () Bool)

(declare-fun b_free!4267 () Bool)

(declare-fun b_next!4267 () Bool)

(assert (=> b!172612 (= b_free!4267 (not b_next!4267))))

(declare-fun tp!15455 () Bool)

(declare-fun b_and!10725 () Bool)

(assert (=> b!172612 (= tp!15455 b_and!10725)))

(declare-fun mapIsEmpty!6875 () Bool)

(declare-fun mapRes!6875 () Bool)

(assert (=> mapIsEmpty!6875 mapRes!6875))

(declare-fun b!172608 () Bool)

(declare-fun res!81975 () Bool)

(declare-fun e!113961 () Bool)

(assert (=> b!172608 (=> (not res!81975) (not e!113961))))

(declare-datatypes ((V!5033 0))(
  ( (V!5034 (val!2064 Int)) )
))
(declare-datatypes ((ValueCell!1676 0))(
  ( (ValueCellFull!1676 (v!3928 V!5033)) (EmptyCell!1676) )
))
(declare-datatypes ((array!7202 0))(
  ( (array!7203 (arr!3422 (Array (_ BitVec 32) (_ BitVec 64))) (size!3720 (_ BitVec 32))) )
))
(declare-datatypes ((array!7204 0))(
  ( (array!7205 (arr!3423 (Array (_ BitVec 32) ValueCell!1676)) (size!3721 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2260 0))(
  ( (LongMapFixedSize!2261 (defaultEntry!3576 Int) (mask!8428 (_ BitVec 32)) (extraKeys!3315 (_ BitVec 32)) (zeroValue!3417 V!5033) (minValue!3419 V!5033) (_size!1179 (_ BitVec 32)) (_keys!5414 array!7202) (_values!3559 array!7204) (_vacant!1179 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2260)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!172608 (= res!81975 (validMask!0 (mask!8428 thiss!1248)))))

(declare-fun b!172609 () Bool)

(declare-fun res!81973 () Bool)

(assert (=> b!172609 (=> (not res!81973) (not e!113961))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!172609 (= res!81973 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!172610 () Bool)

(declare-fun e!113965 () Bool)

(declare-fun tp_is_empty!4039 () Bool)

(assert (=> b!172610 (= e!113965 tp_is_empty!4039)))

(declare-fun b!172611 () Bool)

(declare-fun e!113966 () Bool)

(assert (=> b!172611 (= e!113966 tp_is_empty!4039)))

(declare-fun e!113962 () Bool)

(declare-fun e!113964 () Bool)

(declare-fun array_inv!2181 (array!7202) Bool)

(declare-fun array_inv!2182 (array!7204) Bool)

(assert (=> b!172612 (= e!113964 (and tp!15455 tp_is_empty!4039 (array_inv!2181 (_keys!5414 thiss!1248)) (array_inv!2182 (_values!3559 thiss!1248)) e!113962))))

(declare-fun mapNonEmpty!6875 () Bool)

(declare-fun tp!15454 () Bool)

(assert (=> mapNonEmpty!6875 (= mapRes!6875 (and tp!15454 e!113966))))

(declare-fun mapKey!6875 () (_ BitVec 32))

(declare-fun mapValue!6875 () ValueCell!1676)

(declare-fun mapRest!6875 () (Array (_ BitVec 32) ValueCell!1676))

(assert (=> mapNonEmpty!6875 (= (arr!3423 (_values!3559 thiss!1248)) (store mapRest!6875 mapKey!6875 mapValue!6875))))

(declare-fun b!172614 () Bool)

(assert (=> b!172614 (= e!113961 (and (= (size!3721 (_values!3559 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8428 thiss!1248))) (= (size!3720 (_keys!5414 thiss!1248)) (size!3721 (_values!3559 thiss!1248))) (bvsge (mask!8428 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3315 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3315 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!172613 () Bool)

(assert (=> b!172613 (= e!113962 (and e!113965 mapRes!6875))))

(declare-fun condMapEmpty!6875 () Bool)

(declare-fun mapDefault!6875 () ValueCell!1676)

