; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15074 () Bool)

(assert start!15074)

(declare-fun b!144775 () Bool)

(declare-fun b_free!3061 () Bool)

(declare-fun b_next!3061 () Bool)

(assert (=> b!144775 (= b_free!3061 (not b_next!3061))))

(declare-fun tp!11677 () Bool)

(declare-fun b_and!9037 () Bool)

(assert (=> b!144775 (= tp!11677 b_and!9037)))

(declare-fun b!144783 () Bool)

(declare-fun b_free!3063 () Bool)

(declare-fun b_next!3063 () Bool)

(assert (=> b!144783 (= b_free!3063 (not b_next!3063))))

(declare-fun tp!11675 () Bool)

(declare-fun b_and!9039 () Bool)

(assert (=> b!144783 (= tp!11675 b_and!9039)))

(declare-fun b!144773 () Bool)

(declare-fun res!68943 () Bool)

(declare-fun e!94345 () Bool)

(assert (=> b!144773 (=> res!68943 e!94345)))

(declare-datatypes ((List!1775 0))(
  ( (Nil!1772) (Cons!1771 (h!2379 (_ BitVec 64)) (t!6424 List!1775)) )
))
(declare-fun lt!76078 () List!1775)

(declare-fun noDuplicate!54 (List!1775) Bool)

(assert (=> b!144773 (= res!68943 (not (noDuplicate!54 lt!76078)))))

(declare-fun b!144774 () Bool)

(declare-fun res!68940 () Bool)

(declare-fun e!94349 () Bool)

(assert (=> b!144774 (=> (not res!68940) (not e!94349))))

(declare-datatypes ((V!3577 0))(
  ( (V!3578 (val!1518 Int)) )
))
(declare-datatypes ((array!4934 0))(
  ( (array!4935 (arr!2330 (Array (_ BitVec 32) (_ BitVec 64))) (size!2605 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1130 0))(
  ( (ValueCellFull!1130 (v!3317 V!3577)) (EmptyCell!1130) )
))
(declare-datatypes ((array!4936 0))(
  ( (array!4937 (arr!2331 (Array (_ BitVec 32) ValueCell!1130)) (size!2606 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1168 0))(
  ( (LongMapFixedSize!1169 (defaultEntry!2988 Int) (mask!7352 (_ BitVec 32)) (extraKeys!2735 (_ BitVec 32)) (zeroValue!2834 V!3577) (minValue!2834 V!3577) (_size!633 (_ BitVec 32)) (_keys!4755 array!4934) (_values!2971 array!4936) (_vacant!633 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1168)

(declare-fun valid!566 (LongMapFixedSize!1168) Bool)

(assert (=> b!144774 (= res!68940 (valid!566 newMap!16))))

(declare-fun mapNonEmpty!4903 () Bool)

(declare-fun mapRes!4904 () Bool)

(declare-fun tp!11678 () Bool)

(declare-fun e!94348 () Bool)

(assert (=> mapNonEmpty!4903 (= mapRes!4904 (and tp!11678 e!94348))))

(declare-datatypes ((Cell!954 0))(
  ( (Cell!955 (v!3318 LongMapFixedSize!1168)) )
))
(declare-datatypes ((LongMap!954 0))(
  ( (LongMap!955 (underlying!488 Cell!954)) )
))
(declare-fun thiss!992 () LongMap!954)

(declare-fun mapKey!4903 () (_ BitVec 32))

(declare-fun mapValue!4904 () ValueCell!1130)

(declare-fun mapRest!4903 () (Array (_ BitVec 32) ValueCell!1130))

(assert (=> mapNonEmpty!4903 (= (arr!2331 (_values!2971 (v!3318 (underlying!488 thiss!992)))) (store mapRest!4903 mapKey!4903 mapValue!4904))))

(declare-fun tp_is_empty!2947 () Bool)

(declare-fun e!94346 () Bool)

(declare-fun e!94342 () Bool)

(declare-fun array_inv!1443 (array!4934) Bool)

(declare-fun array_inv!1444 (array!4936) Bool)

(assert (=> b!144775 (= e!94346 (and tp!11677 tp_is_empty!2947 (array_inv!1443 (_keys!4755 (v!3318 (underlying!488 thiss!992)))) (array_inv!1444 (_values!2971 (v!3318 (underlying!488 thiss!992)))) e!94342))))

(declare-fun mapNonEmpty!4904 () Bool)

(declare-fun mapRes!4903 () Bool)

(declare-fun tp!11676 () Bool)

(declare-fun e!94343 () Bool)

(assert (=> mapNonEmpty!4904 (= mapRes!4903 (and tp!11676 e!94343))))

(declare-fun mapKey!4904 () (_ BitVec 32))

(declare-fun mapValue!4903 () ValueCell!1130)

(declare-fun mapRest!4904 () (Array (_ BitVec 32) ValueCell!1130))

(assert (=> mapNonEmpty!4904 (= (arr!2331 (_values!2971 newMap!16)) (store mapRest!4904 mapKey!4904 mapValue!4903))))

(declare-fun b!144776 () Bool)

(declare-fun e!94353 () Bool)

(assert (=> b!144776 (= e!94342 (and e!94353 mapRes!4904))))

(declare-fun condMapEmpty!4904 () Bool)

(declare-fun mapDefault!4903 () ValueCell!1130)

