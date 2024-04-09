; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16810 () Bool)

(assert start!16810)

(declare-fun b!169148 () Bool)

(declare-fun b_free!4107 () Bool)

(declare-fun b_next!4107 () Bool)

(assert (=> b!169148 (= b_free!4107 (not b_next!4107))))

(declare-fun tp!14927 () Bool)

(declare-fun b_and!10539 () Bool)

(assert (=> b!169148 (= tp!14927 b_and!10539)))

(declare-fun b!169149 () Bool)

(declare-fun b_free!4109 () Bool)

(declare-fun b_next!4109 () Bool)

(assert (=> b!169149 (= b_free!4109 (not b_next!4109))))

(declare-fun tp!14928 () Bool)

(declare-fun b_and!10541 () Bool)

(assert (=> b!169149 (= tp!14928 b_and!10541)))

(declare-fun mapNonEmpty!6584 () Bool)

(declare-fun mapRes!6585 () Bool)

(declare-fun tp!14926 () Bool)

(declare-fun e!111383 () Bool)

(assert (=> mapNonEmpty!6584 (= mapRes!6585 (and tp!14926 e!111383))))

(declare-datatypes ((V!4853 0))(
  ( (V!4854 (val!1997 Int)) )
))
(declare-datatypes ((ValueCell!1609 0))(
  ( (ValueCellFull!1609 (v!3858 V!4853)) (EmptyCell!1609) )
))
(declare-fun mapValue!6584 () ValueCell!1609)

(declare-fun mapKey!6584 () (_ BitVec 32))

(declare-datatypes ((array!6906 0))(
  ( (array!6907 (arr!3288 (Array (_ BitVec 32) (_ BitVec 64))) (size!3576 (_ BitVec 32))) )
))
(declare-datatypes ((array!6908 0))(
  ( (array!6909 (arr!3289 (Array (_ BitVec 32) ValueCell!1609)) (size!3577 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2126 0))(
  ( (LongMapFixedSize!2127 (defaultEntry!3505 Int) (mask!8284 (_ BitVec 32)) (extraKeys!3246 (_ BitVec 32)) (zeroValue!3348 V!4853) (minValue!3348 V!4853) (_size!1112 (_ BitVec 32)) (_keys!5330 array!6906) (_values!3488 array!6908) (_vacant!1112 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2126)

(declare-fun mapRest!6585 () (Array (_ BitVec 32) ValueCell!1609))

(assert (=> mapNonEmpty!6584 (= (arr!3289 (_values!3488 thiss!1248)) (store mapRest!6585 mapKey!6584 mapValue!6584))))

(declare-fun b!169143 () Bool)

(declare-fun e!111384 () Bool)

(declare-fun e!111385 () Bool)

(declare-fun mapRes!6584 () Bool)

(assert (=> b!169143 (= e!111384 (and e!111385 mapRes!6584))))

(declare-fun condMapEmpty!6584 () Bool)

(declare-datatypes ((tuple2!3194 0))(
  ( (tuple2!3195 (_1!1607 Bool) (_2!1607 LongMapFixedSize!2126)) )
))
(declare-fun err!47 () tuple2!3194)

(declare-fun mapDefault!6584 () ValueCell!1609)

