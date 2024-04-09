; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16626 () Bool)

(assert start!16626)

(declare-fun b!165761 () Bool)

(declare-fun b_free!3919 () Bool)

(declare-fun b_next!3919 () Bool)

(assert (=> b!165761 (= b_free!3919 (not b_next!3919))))

(declare-fun tp!14358 () Bool)

(declare-fun b_and!10351 () Bool)

(assert (=> b!165761 (= tp!14358 b_and!10351)))

(declare-fun b!165756 () Bool)

(declare-fun e!108735 () Bool)

(assert (=> b!165756 (= e!108735 false)))

(declare-fun lt!83159 () Bool)

(declare-datatypes ((V!4609 0))(
  ( (V!4610 (val!1905 Int)) )
))
(declare-datatypes ((ValueCell!1517 0))(
  ( (ValueCellFull!1517 (v!3766 V!4609)) (EmptyCell!1517) )
))
(declare-datatypes ((array!6538 0))(
  ( (array!6539 (arr!3104 (Array (_ BitVec 32) (_ BitVec 64))) (size!3392 (_ BitVec 32))) )
))
(declare-datatypes ((array!6540 0))(
  ( (array!6541 (arr!3105 (Array (_ BitVec 32) ValueCell!1517)) (size!3393 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1942 0))(
  ( (LongMapFixedSize!1943 (defaultEntry!3413 Int) (mask!8132 (_ BitVec 32)) (extraKeys!3154 (_ BitVec 32)) (zeroValue!3256 V!4609) (minValue!3256 V!4609) (_size!1020 (_ BitVec 32)) (_keys!5238 array!6538) (_values!3396 array!6540) (_vacant!1020 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1942)

(declare-datatypes ((List!2089 0))(
  ( (Nil!2086) (Cons!2085 (h!2702 (_ BitVec 64)) (t!6899 List!2089)) )
))
(declare-fun arrayNoDuplicates!0 (array!6538 (_ BitVec 32) List!2089) Bool)

(assert (=> b!165756 (= lt!83159 (arrayNoDuplicates!0 (_keys!5238 thiss!1248) #b00000000000000000000000000000000 Nil!2086))))

(declare-fun b!165757 () Bool)

(declare-fun e!108733 () Bool)

(declare-fun tp_is_empty!3721 () Bool)

(assert (=> b!165757 (= e!108733 tp_is_empty!3721)))

(declare-fun mapIsEmpty!6300 () Bool)

(declare-fun mapRes!6300 () Bool)

(assert (=> mapIsEmpty!6300 mapRes!6300))

(declare-fun b!165758 () Bool)

(declare-fun e!108738 () Bool)

(assert (=> b!165758 (= e!108738 tp_is_empty!3721)))

(declare-fun res!78716 () Bool)

(declare-fun e!108734 () Bool)

(assert (=> start!16626 (=> (not res!78716) (not e!108734))))

(declare-fun valid!849 (LongMapFixedSize!1942) Bool)

(assert (=> start!16626 (= res!78716 (valid!849 thiss!1248))))

(assert (=> start!16626 e!108734))

(declare-fun e!108739 () Bool)

(assert (=> start!16626 e!108739))

(assert (=> start!16626 true))

(declare-fun b!165759 () Bool)

(declare-fun res!78715 () Bool)

(assert (=> b!165759 (=> (not res!78715) (not e!108735))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!165759 (= res!78715 (validMask!0 (mask!8132 thiss!1248)))))

(declare-fun b!165760 () Bool)

(declare-fun e!108736 () Bool)

(assert (=> b!165760 (= e!108736 (and e!108733 mapRes!6300))))

(declare-fun condMapEmpty!6300 () Bool)

(declare-fun mapDefault!6300 () ValueCell!1517)

