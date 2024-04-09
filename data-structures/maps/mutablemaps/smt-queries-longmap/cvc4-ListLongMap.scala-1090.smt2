; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22252 () Bool)

(assert start!22252)

(declare-fun b!233321 () Bool)

(declare-fun b_free!6293 () Bool)

(declare-fun b_next!6293 () Bool)

(assert (=> b!233321 (= b_free!6293 (not b_next!6293))))

(declare-fun tp!22023 () Bool)

(declare-fun b_and!13211 () Bool)

(assert (=> b!233321 (= tp!22023 b_and!13211)))

(declare-fun b!233320 () Bool)

(declare-fun res!114530 () Bool)

(declare-fun e!151582 () Bool)

(assert (=> b!233320 (=> (not res!114530) (not e!151582))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!233320 (= res!114530 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!151585 () Bool)

(declare-fun tp_is_empty!6155 () Bool)

(declare-fun e!151586 () Bool)

(declare-datatypes ((V!7853 0))(
  ( (V!7854 (val!3122 Int)) )
))
(declare-datatypes ((ValueCell!2734 0))(
  ( (ValueCellFull!2734 (v!5139 V!7853)) (EmptyCell!2734) )
))
(declare-datatypes ((array!11554 0))(
  ( (array!11555 (arr!5495 (Array (_ BitVec 32) ValueCell!2734)) (size!5828 (_ BitVec 32))) )
))
(declare-datatypes ((array!11556 0))(
  ( (array!11557 (arr!5496 (Array (_ BitVec 32) (_ BitVec 64))) (size!5829 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3368 0))(
  ( (LongMapFixedSize!3369 (defaultEntry!4344 Int) (mask!10270 (_ BitVec 32)) (extraKeys!4081 (_ BitVec 32)) (zeroValue!4185 V!7853) (minValue!4185 V!7853) (_size!1733 (_ BitVec 32)) (_keys!6399 array!11556) (_values!4327 array!11554) (_vacant!1733 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3368)

(declare-fun array_inv!3611 (array!11556) Bool)

(declare-fun array_inv!3612 (array!11554) Bool)

(assert (=> b!233321 (= e!151585 (and tp!22023 tp_is_empty!6155 (array_inv!3611 (_keys!6399 thiss!1504)) (array_inv!3612 (_values!4327 thiss!1504)) e!151586))))

(declare-fun b!233323 () Bool)

(declare-fun e!151588 () Bool)

(assert (=> b!233323 (= e!151588 (not (= (size!5828 (_values!4327 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10270 thiss!1504)))))))

(declare-fun b!233324 () Bool)

(declare-fun e!151587 () Bool)

(assert (=> b!233324 (= e!151587 tp_is_empty!6155)))

(declare-fun b!233325 () Bool)

(declare-fun res!114528 () Bool)

(assert (=> b!233325 (=> (not res!114528) (not e!151588))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!233325 (= res!114528 (validMask!0 (mask!10270 thiss!1504)))))

(declare-fun mapNonEmpty!10405 () Bool)

(declare-fun mapRes!10405 () Bool)

(declare-fun tp!22024 () Bool)

(assert (=> mapNonEmpty!10405 (= mapRes!10405 (and tp!22024 e!151587))))

(declare-fun mapKey!10405 () (_ BitVec 32))

(declare-fun mapRest!10405 () (Array (_ BitVec 32) ValueCell!2734))

(declare-fun mapValue!10405 () ValueCell!2734)

(assert (=> mapNonEmpty!10405 (= (arr!5495 (_values!4327 thiss!1504)) (store mapRest!10405 mapKey!10405 mapValue!10405))))

(declare-fun b!233326 () Bool)

(declare-fun e!151584 () Bool)

(assert (=> b!233326 (= e!151584 tp_is_empty!6155)))

(declare-fun b!233327 () Bool)

(assert (=> b!233327 (= e!151586 (and e!151584 mapRes!10405))))

(declare-fun condMapEmpty!10405 () Bool)

(declare-fun mapDefault!10405 () ValueCell!2734)

