; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16284 () Bool)

(assert start!16284)

(declare-fun b!162293 () Bool)

(declare-fun b_free!3733 () Bool)

(declare-fun b_next!3733 () Bool)

(assert (=> b!162293 (= b_free!3733 (not b_next!3733))))

(declare-fun tp!13769 () Bool)

(declare-fun b_and!10165 () Bool)

(assert (=> b!162293 (= tp!13769 b_and!10165)))

(declare-fun b!162291 () Bool)

(declare-fun e!106335 () Bool)

(declare-fun tp_is_empty!3535 () Bool)

(assert (=> b!162291 (= e!106335 tp_is_empty!3535)))

(declare-fun b!162292 () Bool)

(declare-fun e!106333 () Bool)

(assert (=> b!162292 (= e!106333 tp_is_empty!3535)))

(declare-fun res!76874 () Bool)

(declare-fun e!106337 () Bool)

(assert (=> start!16284 (=> (not res!76874) (not e!106337))))

(declare-datatypes ((V!4361 0))(
  ( (V!4362 (val!1812 Int)) )
))
(declare-datatypes ((ValueCell!1424 0))(
  ( (ValueCellFull!1424 (v!3673 V!4361)) (EmptyCell!1424) )
))
(declare-datatypes ((array!6148 0))(
  ( (array!6149 (arr!2918 (Array (_ BitVec 32) (_ BitVec 64))) (size!3202 (_ BitVec 32))) )
))
(declare-datatypes ((array!6150 0))(
  ( (array!6151 (arr!2919 (Array (_ BitVec 32) ValueCell!1424)) (size!3203 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1756 0))(
  ( (LongMapFixedSize!1757 (defaultEntry!3320 Int) (mask!7940 (_ BitVec 32)) (extraKeys!3061 (_ BitVec 32)) (zeroValue!3163 V!4361) (minValue!3163 V!4361) (_size!927 (_ BitVec 32)) (_keys!5121 array!6148) (_values!3303 array!6150) (_vacant!927 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1756)

(declare-fun valid!786 (LongMapFixedSize!1756) Bool)

(assert (=> start!16284 (= res!76874 (valid!786 thiss!1248))))

(assert (=> start!16284 e!106337))

(declare-fun e!106334 () Bool)

(assert (=> start!16284 e!106334))

(assert (=> start!16284 true))

(declare-fun mapIsEmpty!5990 () Bool)

(declare-fun mapRes!5990 () Bool)

(assert (=> mapIsEmpty!5990 mapRes!5990))

(declare-fun mapNonEmpty!5990 () Bool)

(declare-fun tp!13768 () Bool)

(assert (=> mapNonEmpty!5990 (= mapRes!5990 (and tp!13768 e!106333))))

(declare-fun mapKey!5990 () (_ BitVec 32))

(declare-fun mapValue!5990 () ValueCell!1424)

(declare-fun mapRest!5990 () (Array (_ BitVec 32) ValueCell!1424))

(assert (=> mapNonEmpty!5990 (= (arr!2919 (_values!3303 thiss!1248)) (store mapRest!5990 mapKey!5990 mapValue!5990))))

(declare-fun e!106332 () Bool)

(declare-fun array_inv!1859 (array!6148) Bool)

(declare-fun array_inv!1860 (array!6150) Bool)

(assert (=> b!162293 (= e!106334 (and tp!13769 tp_is_empty!3535 (array_inv!1859 (_keys!5121 thiss!1248)) (array_inv!1860 (_values!3303 thiss!1248)) e!106332))))

(declare-fun b!162294 () Bool)

(assert (=> b!162294 (= e!106332 (and e!106335 mapRes!5990))))

(declare-fun condMapEmpty!5990 () Bool)

(declare-fun mapDefault!5990 () ValueCell!1424)

