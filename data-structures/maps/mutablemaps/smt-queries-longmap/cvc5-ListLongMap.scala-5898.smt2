; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76246 () Bool)

(assert start!76246)

(declare-fun b!894828 () Bool)

(declare-fun b_free!15889 () Bool)

(declare-fun b_next!15889 () Bool)

(assert (=> b!894828 (= b_free!15889 (not b_next!15889))))

(declare-fun tp!55667 () Bool)

(declare-fun b_and!26199 () Bool)

(assert (=> b!894828 (= tp!55667 b_and!26199)))

(declare-fun mapNonEmpty!28910 () Bool)

(declare-fun mapRes!28910 () Bool)

(declare-fun tp!55666 () Bool)

(declare-fun e!499917 () Bool)

(assert (=> mapNonEmpty!28910 (= mapRes!28910 (and tp!55666 e!499917))))

(declare-datatypes ((V!29255 0))(
  ( (V!29256 (val!9159 Int)) )
))
(declare-datatypes ((ValueCell!8627 0))(
  ( (ValueCellFull!8627 (v!11646 V!29255)) (EmptyCell!8627) )
))
(declare-fun mapRest!28910 () (Array (_ BitVec 32) ValueCell!8627))

(declare-fun mapKey!28910 () (_ BitVec 32))

(declare-datatypes ((array!52416 0))(
  ( (array!52417 (arr!25202 (Array (_ BitVec 32) (_ BitVec 64))) (size!25651 (_ BitVec 32))) )
))
(declare-datatypes ((array!52418 0))(
  ( (array!52419 (arr!25203 (Array (_ BitVec 32) ValueCell!8627)) (size!25652 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4270 0))(
  ( (LongMapFixedSize!4271 (defaultEntry!5347 Int) (mask!25919 (_ BitVec 32)) (extraKeys!5043 (_ BitVec 32)) (zeroValue!5147 V!29255) (minValue!5147 V!29255) (_size!2190 (_ BitVec 32)) (_keys!10049 array!52416) (_values!5334 array!52418) (_vacant!2190 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4270)

(declare-fun mapValue!28910 () ValueCell!8627)

(assert (=> mapNonEmpty!28910 (= (arr!25203 (_values!5334 thiss!1181)) (store mapRest!28910 mapKey!28910 mapValue!28910))))

(declare-fun b!894825 () Bool)

(declare-fun e!499918 () Bool)

(declare-fun e!499921 () Bool)

(assert (=> b!894825 (= e!499918 (and e!499921 mapRes!28910))))

(declare-fun condMapEmpty!28910 () Bool)

(declare-fun mapDefault!28910 () ValueCell!8627)

