; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18284 () Bool)

(assert start!18284)

(declare-fun b!181530 () Bool)

(declare-fun b_free!4483 () Bool)

(declare-fun b_next!4483 () Bool)

(assert (=> b!181530 (= b_free!4483 (not b_next!4483))))

(declare-fun tp!16200 () Bool)

(declare-fun b_and!11051 () Bool)

(assert (=> b!181530 (= tp!16200 b_and!11051)))

(declare-fun mapNonEmpty!7296 () Bool)

(declare-fun mapRes!7296 () Bool)

(declare-fun tp!16199 () Bool)

(declare-fun e!119566 () Bool)

(assert (=> mapNonEmpty!7296 (= mapRes!7296 (and tp!16199 e!119566))))

(declare-fun mapKey!7296 () (_ BitVec 32))

(declare-datatypes ((V!5321 0))(
  ( (V!5322 (val!2172 Int)) )
))
(declare-datatypes ((ValueCell!1784 0))(
  ( (ValueCellFull!1784 (v!4065 V!5321)) (EmptyCell!1784) )
))
(declare-fun mapValue!7296 () ValueCell!1784)

(declare-fun mapRest!7296 () (Array (_ BitVec 32) ValueCell!1784))

(declare-datatypes ((array!7690 0))(
  ( (array!7691 (arr!3638 (Array (_ BitVec 32) (_ BitVec 64))) (size!3948 (_ BitVec 32))) )
))
(declare-datatypes ((array!7692 0))(
  ( (array!7693 (arr!3639 (Array (_ BitVec 32) ValueCell!1784)) (size!3949 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2476 0))(
  ( (LongMapFixedSize!2477 (defaultEntry!3720 Int) (mask!8745 (_ BitVec 32)) (extraKeys!3457 (_ BitVec 32)) (zeroValue!3561 V!5321) (minValue!3561 V!5321) (_size!1287 (_ BitVec 32)) (_keys!5623 array!7690) (_values!3703 array!7692) (_vacant!1287 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2476)

(assert (=> mapNonEmpty!7296 (= (arr!3639 (_values!3703 thiss!1248)) (store mapRest!7296 mapKey!7296 mapValue!7296))))

(declare-fun b!181524 () Bool)

(declare-fun tp_is_empty!4255 () Bool)

(assert (=> b!181524 (= e!119566 tp_is_empty!4255)))

(declare-fun b!181525 () Bool)

(declare-fun e!119565 () Bool)

(assert (=> b!181525 (= e!119565 tp_is_empty!4255)))

(declare-fun b!181526 () Bool)

(declare-fun res!85948 () Bool)

(declare-fun e!119567 () Bool)

(assert (=> b!181526 (=> (not res!85948) (not e!119567))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3384 0))(
  ( (tuple2!3385 (_1!1702 (_ BitVec 64)) (_2!1702 V!5321)) )
))
(declare-datatypes ((List!2329 0))(
  ( (Nil!2326) (Cons!2325 (h!2952 tuple2!3384) (t!7193 List!2329)) )
))
(declare-datatypes ((ListLongMap!2315 0))(
  ( (ListLongMap!2316 (toList!1173 List!2329)) )
))
(declare-fun contains!1247 (ListLongMap!2315 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!816 (array!7690 array!7692 (_ BitVec 32) (_ BitVec 32) V!5321 V!5321 (_ BitVec 32) Int) ListLongMap!2315)

(assert (=> b!181526 (= res!85948 (contains!1247 (getCurrentListMap!816 (_keys!5623 thiss!1248) (_values!3703 thiss!1248) (mask!8745 thiss!1248) (extraKeys!3457 thiss!1248) (zeroValue!3561 thiss!1248) (minValue!3561 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3720 thiss!1248)) key!828))))

(declare-fun b!181527 () Bool)

(declare-fun e!119571 () Bool)

(assert (=> b!181527 (= e!119571 (and e!119565 mapRes!7296))))

(declare-fun condMapEmpty!7296 () Bool)

(declare-fun mapDefault!7296 () ValueCell!1784)

