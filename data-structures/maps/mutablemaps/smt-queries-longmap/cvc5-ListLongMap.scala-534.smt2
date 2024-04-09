; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13444 () Bool)

(assert start!13444)

(declare-fun b!123176 () Bool)

(declare-fun b_free!2797 () Bool)

(declare-fun b_next!2797 () Bool)

(assert (=> b!123176 (= b_free!2797 (not b_next!2797))))

(declare-fun tp!10778 () Bool)

(declare-fun b_and!7573 () Bool)

(assert (=> b!123176 (= tp!10778 b_and!7573)))

(declare-fun b!123173 () Bool)

(declare-fun b_free!2799 () Bool)

(declare-fun b_next!2799 () Bool)

(assert (=> b!123173 (= b_free!2799 (not b_next!2799))))

(declare-fun tp!10777 () Bool)

(declare-fun b_and!7575 () Bool)

(assert (=> b!123173 (= tp!10777 b_and!7575)))

(declare-fun b!123172 () Bool)

(declare-fun res!59844 () Bool)

(declare-fun e!80473 () Bool)

(assert (=> b!123172 (=> (not res!59844) (not e!80473))))

(declare-datatypes ((V!3401 0))(
  ( (V!3402 (val!1452 Int)) )
))
(declare-datatypes ((array!4640 0))(
  ( (array!4641 (arr!2198 (Array (_ BitVec 32) (_ BitVec 64))) (size!2460 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1064 0))(
  ( (ValueCellFull!1064 (v!3080 V!3401)) (EmptyCell!1064) )
))
(declare-datatypes ((array!4642 0))(
  ( (array!4643 (arr!2199 (Array (_ BitVec 32) ValueCell!1064)) (size!2461 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1036 0))(
  ( (LongMapFixedSize!1037 (defaultEntry!2751 Int) (mask!6987 (_ BitVec 32)) (extraKeys!2536 (_ BitVec 32)) (zeroValue!2616 V!3401) (minValue!2616 V!3401) (_size!567 (_ BitVec 32)) (_keys!4478 array!4640) (_values!2734 array!4642) (_vacant!567 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1036)

(declare-datatypes ((Cell!828 0))(
  ( (Cell!829 (v!3081 LongMapFixedSize!1036)) )
))
(declare-datatypes ((LongMap!828 0))(
  ( (LongMap!829 (underlying!425 Cell!828)) )
))
(declare-fun thiss!992 () LongMap!828)

(assert (=> b!123172 (= res!59844 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6987 newMap!16)) (_size!567 (v!3081 (underlying!425 thiss!992)))))))

(declare-fun e!80474 () Bool)

(declare-fun tp_is_empty!2815 () Bool)

(declare-fun e!80477 () Bool)

(declare-fun array_inv!1341 (array!4640) Bool)

(declare-fun array_inv!1342 (array!4642) Bool)

(assert (=> b!123173 (= e!80474 (and tp!10777 tp_is_empty!2815 (array_inv!1341 (_keys!4478 newMap!16)) (array_inv!1342 (_values!2734 newMap!16)) e!80477))))

(declare-fun b!123174 () Bool)

(declare-fun e!80468 () Bool)

(assert (=> b!123174 (= e!80468 tp_is_empty!2815)))

(declare-fun b!123175 () Bool)

(declare-fun e!80478 () Bool)

(assert (=> b!123175 (= e!80478 tp_is_empty!2815)))

(declare-fun e!80476 () Bool)

(declare-fun e!80479 () Bool)

(assert (=> b!123176 (= e!80479 (and tp!10778 tp_is_empty!2815 (array_inv!1341 (_keys!4478 (v!3081 (underlying!425 thiss!992)))) (array_inv!1342 (_values!2734 (v!3081 (underlying!425 thiss!992)))) e!80476))))

(declare-fun res!59842 () Bool)

(assert (=> start!13444 (=> (not res!59842) (not e!80473))))

(declare-fun valid!488 (LongMap!828) Bool)

(assert (=> start!13444 (= res!59842 (valid!488 thiss!992))))

(assert (=> start!13444 e!80473))

(declare-fun e!80472 () Bool)

(assert (=> start!13444 e!80472))

(assert (=> start!13444 true))

(assert (=> start!13444 e!80474))

(declare-fun b!123177 () Bool)

(declare-fun e!80469 () Bool)

(assert (=> b!123177 (= e!80469 tp_is_empty!2815)))

(declare-fun b!123178 () Bool)

(declare-fun mapRes!4401 () Bool)

(assert (=> b!123178 (= e!80477 (and e!80469 mapRes!4401))))

(declare-fun condMapEmpty!4402 () Bool)

(declare-fun mapDefault!4401 () ValueCell!1064)

