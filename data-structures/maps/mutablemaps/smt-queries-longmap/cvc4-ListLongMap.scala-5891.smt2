; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75944 () Bool)

(assert start!75944)

(declare-fun b!893073 () Bool)

(declare-fun b_free!15851 () Bool)

(declare-fun b_next!15851 () Bool)

(assert (=> b!893073 (= b_free!15851 (not b_next!15851))))

(declare-fun tp!55525 () Bool)

(declare-fun b_and!26131 () Bool)

(assert (=> b!893073 (= tp!55525 b_and!26131)))

(declare-fun e!498763 () Bool)

(declare-datatypes ((array!52326 0))(
  ( (array!52327 (arr!25164 (Array (_ BitVec 32) (_ BitVec 64))) (size!25609 (_ BitVec 32))) )
))
(declare-datatypes ((V!29203 0))(
  ( (V!29204 (val!9140 Int)) )
))
(declare-datatypes ((ValueCell!8608 0))(
  ( (ValueCellFull!8608 (v!11617 V!29203)) (EmptyCell!8608) )
))
(declare-datatypes ((array!52328 0))(
  ( (array!52329 (arr!25165 (Array (_ BitVec 32) ValueCell!8608)) (size!25610 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4232 0))(
  ( (LongMapFixedSize!4233 (defaultEntry!5316 Int) (mask!25835 (_ BitVec 32)) (extraKeys!5011 (_ BitVec 32)) (zeroValue!5115 V!29203) (minValue!5115 V!29203) (_size!2171 (_ BitVec 32)) (_keys!9997 array!52326) (_values!5302 array!52328) (_vacant!2171 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4232)

(declare-fun e!498764 () Bool)

(declare-fun tp_is_empty!18179 () Bool)

(declare-fun array_inv!19738 (array!52326) Bool)

(declare-fun array_inv!19739 (array!52328) Bool)

(assert (=> b!893073 (= e!498764 (and tp!55525 tp_is_empty!18179 (array_inv!19738 (_keys!9997 thiss!1181)) (array_inv!19739 (_values!5302 thiss!1181)) e!498763))))

(declare-fun b!893074 () Bool)

(declare-fun res!604968 () Bool)

(declare-fun e!498766 () Bool)

(assert (=> b!893074 (=> (not res!604968) (not e!498766))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!893074 (= res!604968 (not (= key!785 (bvneg key!785))))))

(declare-fun mapNonEmpty!28826 () Bool)

(declare-fun mapRes!28826 () Bool)

(declare-fun tp!55526 () Bool)

(declare-fun e!498770 () Bool)

(assert (=> mapNonEmpty!28826 (= mapRes!28826 (and tp!55526 e!498770))))

(declare-fun mapValue!28826 () ValueCell!8608)

(declare-fun mapRest!28826 () (Array (_ BitVec 32) ValueCell!8608))

(declare-fun mapKey!28826 () (_ BitVec 32))

(assert (=> mapNonEmpty!28826 (= (arr!25165 (_values!5302 thiss!1181)) (store mapRest!28826 mapKey!28826 mapValue!28826))))

(declare-fun res!604967 () Bool)

(assert (=> start!75944 (=> (not res!604967) (not e!498766))))

(declare-fun valid!1625 (LongMapFixedSize!4232) Bool)

(assert (=> start!75944 (= res!604967 (valid!1625 thiss!1181))))

(assert (=> start!75944 e!498766))

(assert (=> start!75944 e!498764))

(assert (=> start!75944 true))

(declare-fun mapIsEmpty!28826 () Bool)

(assert (=> mapIsEmpty!28826 mapRes!28826))

(declare-fun b!893075 () Bool)

(declare-fun e!498768 () Bool)

(assert (=> b!893075 (= e!498763 (and e!498768 mapRes!28826))))

(declare-fun condMapEmpty!28826 () Bool)

(declare-fun mapDefault!28826 () ValueCell!8608)

