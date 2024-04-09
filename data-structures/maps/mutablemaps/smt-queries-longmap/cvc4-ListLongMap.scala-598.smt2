; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15746 () Bool)

(assert start!15746)

(declare-fun b!156983 () Bool)

(declare-fun b_free!3401 () Bool)

(declare-fun b_next!3401 () Bool)

(assert (=> b!156983 (= b_free!3401 (not b_next!3401))))

(declare-fun tp!12727 () Bool)

(declare-fun b_and!9833 () Bool)

(assert (=> b!156983 (= tp!12727 b_and!9833)))

(declare-fun b!156976 () Bool)

(declare-fun e!102683 () Bool)

(assert (=> b!156976 (= e!102683 false)))

(declare-fun lt!81638 () Bool)

(declare-datatypes ((V!3917 0))(
  ( (V!3918 (val!1646 Int)) )
))
(declare-datatypes ((ValueCell!1258 0))(
  ( (ValueCellFull!1258 (v!3507 V!3917)) (EmptyCell!1258) )
))
(declare-datatypes ((array!5458 0))(
  ( (array!5459 (arr!2586 (Array (_ BitVec 32) (_ BitVec 64))) (size!2864 (_ BitVec 32))) )
))
(declare-datatypes ((array!5460 0))(
  ( (array!5461 (arr!2587 (Array (_ BitVec 32) ValueCell!1258)) (size!2865 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1424 0))(
  ( (LongMapFixedSize!1425 (defaultEntry!3154 Int) (mask!7619 (_ BitVec 32)) (extraKeys!2895 (_ BitVec 32)) (zeroValue!2997 V!3917) (minValue!2997 V!3917) (_size!761 (_ BitVec 32)) (_keys!4929 array!5458) (_values!3137 array!5460) (_vacant!761 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1424)

(declare-datatypes ((List!1883 0))(
  ( (Nil!1880) (Cons!1879 (h!2488 (_ BitVec 64)) (t!6693 List!1883)) )
))
(declare-fun arrayNoDuplicates!0 (array!5458 (_ BitVec 32) List!1883) Bool)

(assert (=> b!156976 (= lt!81638 (arrayNoDuplicates!0 (_keys!4929 thiss!1248) #b00000000000000000000000000000000 Nil!1880))))

(declare-fun b!156977 () Bool)

(declare-fun e!102684 () Bool)

(declare-fun e!102685 () Bool)

(declare-fun mapRes!5447 () Bool)

(assert (=> b!156977 (= e!102684 (and e!102685 mapRes!5447))))

(declare-fun condMapEmpty!5447 () Bool)

(declare-fun mapDefault!5447 () ValueCell!1258)

