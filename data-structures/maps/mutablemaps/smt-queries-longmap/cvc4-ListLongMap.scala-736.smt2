; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17184 () Bool)

(assert start!17184)

(declare-fun b!172439 () Bool)

(declare-fun b_free!4259 () Bool)

(declare-fun b_next!4259 () Bool)

(assert (=> b!172439 (= b_free!4259 (not b_next!4259))))

(declare-fun tp!15424 () Bool)

(declare-fun b_and!10717 () Bool)

(assert (=> b!172439 (= tp!15424 b_and!10717)))

(declare-fun b!172437 () Bool)

(declare-fun res!81892 () Bool)

(declare-fun e!113843 () Bool)

(assert (=> b!172437 (=> (not res!81892) (not e!113843))))

(declare-datatypes ((V!5021 0))(
  ( (V!5022 (val!2060 Int)) )
))
(declare-datatypes ((ValueCell!1672 0))(
  ( (ValueCellFull!1672 (v!3924 V!5021)) (EmptyCell!1672) )
))
(declare-datatypes ((array!7182 0))(
  ( (array!7183 (arr!3414 (Array (_ BitVec 32) (_ BitVec 64))) (size!3711 (_ BitVec 32))) )
))
(declare-datatypes ((array!7184 0))(
  ( (array!7185 (arr!3415 (Array (_ BitVec 32) ValueCell!1672)) (size!3712 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2252 0))(
  ( (LongMapFixedSize!2253 (defaultEntry!3572 Int) (mask!8417 (_ BitVec 32)) (extraKeys!3311 (_ BitVec 32)) (zeroValue!3413 V!5021) (minValue!3415 V!5021) (_size!1175 (_ BitVec 32)) (_keys!5409 array!7182) (_values!3555 array!7184) (_vacant!1175 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2252)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!172437 (= res!81892 (validMask!0 (mask!8417 thiss!1248)))))

(declare-fun mapIsEmpty!6856 () Bool)

(declare-fun mapRes!6856 () Bool)

(assert (=> mapIsEmpty!6856 mapRes!6856))

(declare-fun res!81894 () Bool)

(assert (=> start!17184 (=> (not res!81894) (not e!113843))))

(declare-fun valid!948 (LongMapFixedSize!2252) Bool)

(assert (=> start!17184 (= res!81894 (valid!948 thiss!1248))))

(assert (=> start!17184 e!113843))

(declare-fun e!113841 () Bool)

(assert (=> start!17184 e!113841))

(assert (=> start!17184 true))

(declare-fun b!172438 () Bool)

(assert (=> b!172438 (= e!113843 (and (= (size!3712 (_values!3555 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8417 thiss!1248))) (= (size!3711 (_keys!5409 thiss!1248)) (size!3712 (_values!3555 thiss!1248))) (bvslt (mask!8417 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!6856 () Bool)

(declare-fun tp!15423 () Bool)

(declare-fun e!113839 () Bool)

(assert (=> mapNonEmpty!6856 (= mapRes!6856 (and tp!15423 e!113839))))

(declare-fun mapValue!6856 () ValueCell!1672)

(declare-fun mapRest!6856 () (Array (_ BitVec 32) ValueCell!1672))

(declare-fun mapKey!6856 () (_ BitVec 32))

(assert (=> mapNonEmpty!6856 (= (arr!3415 (_values!3555 thiss!1248)) (store mapRest!6856 mapKey!6856 mapValue!6856))))

(declare-fun e!113840 () Bool)

(declare-fun tp_is_empty!4031 () Bool)

(declare-fun array_inv!2177 (array!7182) Bool)

(declare-fun array_inv!2178 (array!7184) Bool)

(assert (=> b!172439 (= e!113841 (and tp!15424 tp_is_empty!4031 (array_inv!2177 (_keys!5409 thiss!1248)) (array_inv!2178 (_values!3555 thiss!1248)) e!113840))))

(declare-fun b!172440 () Bool)

(assert (=> b!172440 (= e!113839 tp_is_empty!4031)))

(declare-fun b!172441 () Bool)

(declare-fun e!113842 () Bool)

(assert (=> b!172441 (= e!113840 (and e!113842 mapRes!6856))))

(declare-fun condMapEmpty!6856 () Bool)

(declare-fun mapDefault!6856 () ValueCell!1672)

