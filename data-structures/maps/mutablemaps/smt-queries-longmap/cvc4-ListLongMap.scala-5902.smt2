; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76344 () Bool)

(assert start!76344)

(declare-fun b!895493 () Bool)

(declare-fun b_free!15917 () Bool)

(declare-fun b_next!15917 () Bool)

(assert (=> b!895493 (= b_free!15917 (not b_next!15917))))

(declare-fun tp!55764 () Bool)

(declare-fun b_and!26227 () Bool)

(assert (=> b!895493 (= tp!55764 b_and!26227)))

(declare-fun mapNonEmpty!28966 () Bool)

(declare-fun mapRes!28966 () Bool)

(declare-fun tp!55765 () Bool)

(declare-fun e!500409 () Bool)

(assert (=> mapNonEmpty!28966 (= mapRes!28966 (and tp!55765 e!500409))))

(declare-datatypes ((array!52480 0))(
  ( (array!52481 (arr!25230 (Array (_ BitVec 32) (_ BitVec 64))) (size!25681 (_ BitVec 32))) )
))
(declare-datatypes ((V!29291 0))(
  ( (V!29292 (val!9173 Int)) )
))
(declare-datatypes ((ValueCell!8641 0))(
  ( (ValueCellFull!8641 (v!11660 V!29291)) (EmptyCell!8641) )
))
(declare-datatypes ((array!52482 0))(
  ( (array!52483 (arr!25231 (Array (_ BitVec 32) ValueCell!8641)) (size!25682 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4298 0))(
  ( (LongMapFixedSize!4299 (defaultEntry!5361 Int) (mask!25958 (_ BitVec 32)) (extraKeys!5057 (_ BitVec 32)) (zeroValue!5161 V!29291) (minValue!5161 V!29291) (_size!2204 (_ BitVec 32)) (_keys!10074 array!52480) (_values!5348 array!52482) (_vacant!2204 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4298)

(declare-fun mapValue!28966 () ValueCell!8641)

(declare-fun mapKey!28966 () (_ BitVec 32))

(declare-fun mapRest!28966 () (Array (_ BitVec 32) ValueCell!8641))

(assert (=> mapNonEmpty!28966 (= (arr!25231 (_values!5348 thiss!1181)) (store mapRest!28966 mapKey!28966 mapValue!28966))))

(declare-fun b!895492 () Bool)

(declare-fun e!500405 () Bool)

(declare-fun tp_is_empty!18245 () Bool)

(assert (=> b!895492 (= e!500405 tp_is_empty!18245)))

(declare-fun res!605818 () Bool)

(declare-fun e!500404 () Bool)

(assert (=> start!76344 (=> (not res!605818) (not e!500404))))

(declare-fun valid!1649 (LongMapFixedSize!4298) Bool)

(assert (=> start!76344 (= res!605818 (valid!1649 thiss!1181))))

(assert (=> start!76344 e!500404))

(declare-fun e!500410 () Bool)

(assert (=> start!76344 e!500410))

(assert (=> start!76344 true))

(declare-fun e!500408 () Bool)

(declare-fun array_inv!19786 (array!52480) Bool)

(declare-fun array_inv!19787 (array!52482) Bool)

(assert (=> b!895493 (= e!500410 (and tp!55764 tp_is_empty!18245 (array_inv!19786 (_keys!10074 thiss!1181)) (array_inv!19787 (_values!5348 thiss!1181)) e!500408))))

(declare-fun b!895494 () Bool)

(assert (=> b!895494 (= e!500408 (and e!500405 mapRes!28966))))

(declare-fun condMapEmpty!28966 () Bool)

(declare-fun mapDefault!28966 () ValueCell!8641)

