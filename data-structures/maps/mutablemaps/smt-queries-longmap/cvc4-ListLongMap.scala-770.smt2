; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18136 () Bool)

(assert start!18136)

(declare-fun b!180430 () Bool)

(declare-fun b_free!4463 () Bool)

(declare-fun b_next!4463 () Bool)

(assert (=> b!180430 (= b_free!4463 (not b_next!4463))))

(declare-fun tp!16126 () Bool)

(declare-fun b_and!11015 () Bool)

(assert (=> b!180430 (= tp!16126 b_and!11015)))

(declare-fun mapIsEmpty!7252 () Bool)

(declare-fun mapRes!7252 () Bool)

(assert (=> mapIsEmpty!7252 mapRes!7252))

(declare-fun mapNonEmpty!7252 () Bool)

(declare-fun tp!16125 () Bool)

(declare-fun e!118875 () Bool)

(assert (=> mapNonEmpty!7252 (= mapRes!7252 (and tp!16125 e!118875))))

(declare-datatypes ((V!5293 0))(
  ( (V!5294 (val!2162 Int)) )
))
(declare-datatypes ((ValueCell!1774 0))(
  ( (ValueCellFull!1774 (v!4051 V!5293)) (EmptyCell!1774) )
))
(declare-fun mapValue!7252 () ValueCell!1774)

(declare-fun mapRest!7252 () (Array (_ BitVec 32) ValueCell!1774))

(declare-datatypes ((array!7642 0))(
  ( (array!7643 (arr!3618 (Array (_ BitVec 32) (_ BitVec 64))) (size!3926 (_ BitVec 32))) )
))
(declare-datatypes ((array!7644 0))(
  ( (array!7645 (arr!3619 (Array (_ BitVec 32) ValueCell!1774)) (size!3927 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2456 0))(
  ( (LongMapFixedSize!2457 (defaultEntry!3704 Int) (mask!8705 (_ BitVec 32)) (extraKeys!3441 (_ BitVec 32)) (zeroValue!3545 V!5293) (minValue!3545 V!5293) (_size!1277 (_ BitVec 32)) (_keys!5597 array!7642) (_values!3687 array!7644) (_vacant!1277 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2456)

(declare-fun mapKey!7252 () (_ BitVec 32))

(assert (=> mapNonEmpty!7252 (= (arr!3619 (_values!3687 thiss!1248)) (store mapRest!7252 mapKey!7252 mapValue!7252))))

(declare-fun res!85479 () Bool)

(declare-fun e!118872 () Bool)

(assert (=> start!18136 (=> (not res!85479) (not e!118872))))

(declare-fun valid!1012 (LongMapFixedSize!2456) Bool)

(assert (=> start!18136 (= res!85479 (valid!1012 thiss!1248))))

(assert (=> start!18136 e!118872))

(declare-fun e!118876 () Bool)

(assert (=> start!18136 e!118876))

(assert (=> start!18136 true))

(declare-fun b!180427 () Bool)

(declare-fun res!85478 () Bool)

(assert (=> b!180427 (=> (not res!85478) (not e!118872))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!180427 (= res!85478 (not (= key!828 (bvneg key!828))))))

(declare-fun b!180428 () Bool)

(declare-fun e!118874 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!180428 (= e!118874 (not (validMask!0 (mask!8705 thiss!1248))))))

(declare-fun b!180429 () Bool)

(declare-fun e!118873 () Bool)

(declare-fun e!118871 () Bool)

(assert (=> b!180429 (= e!118873 (and e!118871 mapRes!7252))))

(declare-fun condMapEmpty!7252 () Bool)

(declare-fun mapDefault!7252 () ValueCell!1774)

