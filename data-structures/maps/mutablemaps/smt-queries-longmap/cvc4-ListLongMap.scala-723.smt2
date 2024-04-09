; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16906 () Bool)

(assert start!16906)

(declare-fun b!170036 () Bool)

(declare-fun b_free!4181 () Bool)

(declare-fun b_next!4181 () Bool)

(assert (=> b!170036 (= b_free!4181 (not b_next!4181))))

(declare-fun tp!15156 () Bool)

(declare-fun b_and!10613 () Bool)

(assert (=> b!170036 (= tp!15156 b_and!10613)))

(declare-fun res!80849 () Bool)

(declare-fun e!112180 () Bool)

(assert (=> start!16906 (=> (not res!80849) (not e!112180))))

(declare-datatypes ((V!4917 0))(
  ( (V!4918 (val!2021 Int)) )
))
(declare-datatypes ((ValueCell!1633 0))(
  ( (ValueCellFull!1633 (v!3882 V!4917)) (EmptyCell!1633) )
))
(declare-datatypes ((array!7008 0))(
  ( (array!7009 (arr!3336 (Array (_ BitVec 32) (_ BitVec 64))) (size!3627 (_ BitVec 32))) )
))
(declare-datatypes ((array!7010 0))(
  ( (array!7011 (arr!3337 (Array (_ BitVec 32) ValueCell!1633)) (size!3628 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2174 0))(
  ( (LongMapFixedSize!2175 (defaultEntry!3529 Int) (mask!8330 (_ BitVec 32)) (extraKeys!3270 (_ BitVec 32)) (zeroValue!3372 V!4917) (minValue!3372 V!4917) (_size!1136 (_ BitVec 32)) (_keys!5357 array!7008) (_values!3512 array!7010) (_vacant!1136 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2174)

(declare-fun valid!926 (LongMapFixedSize!2174) Bool)

(assert (=> start!16906 (= res!80849 (valid!926 thiss!1248))))

(assert (=> start!16906 e!112180))

(declare-fun e!112175 () Bool)

(assert (=> start!16906 e!112175))

(assert (=> start!16906 true))

(declare-fun mapNonEmpty!6705 () Bool)

(declare-fun mapRes!6705 () Bool)

(declare-fun tp!15155 () Bool)

(declare-fun e!112177 () Bool)

(assert (=> mapNonEmpty!6705 (= mapRes!6705 (and tp!15155 e!112177))))

(declare-fun mapValue!6705 () ValueCell!1633)

(declare-fun mapKey!6705 () (_ BitVec 32))

(declare-fun mapRest!6705 () (Array (_ BitVec 32) ValueCell!1633))

(assert (=> mapNonEmpty!6705 (= (arr!3337 (_values!3512 thiss!1248)) (store mapRest!6705 mapKey!6705 mapValue!6705))))

(declare-fun b!170032 () Bool)

(declare-fun tp_is_empty!3953 () Bool)

(assert (=> b!170032 (= e!112177 tp_is_empty!3953)))

(declare-fun b!170033 () Bool)

(declare-fun e!112178 () Bool)

(declare-fun e!112176 () Bool)

(assert (=> b!170033 (= e!112178 (and e!112176 mapRes!6705))))

(declare-fun condMapEmpty!6705 () Bool)

(declare-fun mapDefault!6705 () ValueCell!1633)

