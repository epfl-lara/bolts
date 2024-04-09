; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16902 () Bool)

(assert start!16902)

(declare-fun b!169995 () Bool)

(declare-fun b_free!4177 () Bool)

(declare-fun b_next!4177 () Bool)

(assert (=> b!169995 (= b_free!4177 (not b_next!4177))))

(declare-fun tp!15143 () Bool)

(declare-fun b_and!10609 () Bool)

(assert (=> b!169995 (= tp!15143 b_and!10609)))

(declare-fun res!80831 () Bool)

(declare-fun e!112140 () Bool)

(assert (=> start!16902 (=> (not res!80831) (not e!112140))))

(declare-datatypes ((V!4913 0))(
  ( (V!4914 (val!2019 Int)) )
))
(declare-datatypes ((ValueCell!1631 0))(
  ( (ValueCellFull!1631 (v!3880 V!4913)) (EmptyCell!1631) )
))
(declare-datatypes ((array!7000 0))(
  ( (array!7001 (arr!3332 (Array (_ BitVec 32) (_ BitVec 64))) (size!3623 (_ BitVec 32))) )
))
(declare-datatypes ((array!7002 0))(
  ( (array!7003 (arr!3333 (Array (_ BitVec 32) ValueCell!1631)) (size!3624 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2170 0))(
  ( (LongMapFixedSize!2171 (defaultEntry!3527 Int) (mask!8328 (_ BitVec 32)) (extraKeys!3268 (_ BitVec 32)) (zeroValue!3370 V!4913) (minValue!3370 V!4913) (_size!1134 (_ BitVec 32)) (_keys!5355 array!7000) (_values!3510 array!7002) (_vacant!1134 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2170)

(declare-fun valid!924 (LongMapFixedSize!2170) Bool)

(assert (=> start!16902 (= res!80831 (valid!924 thiss!1248))))

(assert (=> start!16902 e!112140))

(declare-fun e!112142 () Bool)

(assert (=> start!16902 e!112142))

(assert (=> start!16902 true))

(declare-fun b!169990 () Bool)

(declare-fun e!112139 () Bool)

(declare-fun tp_is_empty!3949 () Bool)

(assert (=> b!169990 (= e!112139 tp_is_empty!3949)))

(declare-fun b!169991 () Bool)

(declare-fun res!80830 () Bool)

(assert (=> b!169991 (=> (not res!80830) (not e!112140))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!169991 (= res!80830 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!6699 () Bool)

(declare-fun mapRes!6699 () Bool)

(assert (=> mapIsEmpty!6699 mapRes!6699))

(declare-fun mapNonEmpty!6699 () Bool)

(declare-fun tp!15144 () Bool)

(declare-fun e!112141 () Bool)

(assert (=> mapNonEmpty!6699 (= mapRes!6699 (and tp!15144 e!112141))))

(declare-fun mapValue!6699 () ValueCell!1631)

(declare-fun mapKey!6699 () (_ BitVec 32))

(declare-fun mapRest!6699 () (Array (_ BitVec 32) ValueCell!1631))

(assert (=> mapNonEmpty!6699 (= (arr!3333 (_values!3510 thiss!1248)) (store mapRest!6699 mapKey!6699 mapValue!6699))))

(declare-fun b!169992 () Bool)

(declare-fun e!112144 () Bool)

(assert (=> b!169992 (= e!112144 (and e!112139 mapRes!6699))))

(declare-fun condMapEmpty!6699 () Bool)

(declare-fun mapDefault!6699 () ValueCell!1631)

