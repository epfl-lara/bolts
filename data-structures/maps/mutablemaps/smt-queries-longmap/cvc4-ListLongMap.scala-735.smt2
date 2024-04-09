; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17162 () Bool)

(assert start!17162)

(declare-fun b!172310 () Bool)

(declare-fun b_free!4253 () Bool)

(declare-fun b_next!4253 () Bool)

(assert (=> b!172310 (= b_free!4253 (not b_next!4253))))

(declare-fun tp!15402 () Bool)

(declare-fun b_and!10711 () Bool)

(assert (=> b!172310 (= tp!15402 b_and!10711)))

(declare-fun b!172304 () Bool)

(declare-fun e!113748 () Bool)

(declare-datatypes ((V!5013 0))(
  ( (V!5014 (val!2057 Int)) )
))
(declare-datatypes ((ValueCell!1669 0))(
  ( (ValueCellFull!1669 (v!3921 V!5013)) (EmptyCell!1669) )
))
(declare-datatypes ((array!7168 0))(
  ( (array!7169 (arr!3408 (Array (_ BitVec 32) (_ BitVec 64))) (size!3704 (_ BitVec 32))) )
))
(declare-datatypes ((array!7170 0))(
  ( (array!7171 (arr!3409 (Array (_ BitVec 32) ValueCell!1669)) (size!3705 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2246 0))(
  ( (LongMapFixedSize!2247 (defaultEntry!3569 Int) (mask!8410 (_ BitVec 32)) (extraKeys!3308 (_ BitVec 32)) (zeroValue!3410 V!5013) (minValue!3412 V!5013) (_size!1172 (_ BitVec 32)) (_keys!5405 array!7168) (_values!3552 array!7170) (_vacant!1172 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2246)

(assert (=> b!172304 (= e!113748 (and (= (size!3705 (_values!3552 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8410 thiss!1248))) (not (= (size!3704 (_keys!5405 thiss!1248)) (size!3705 (_values!3552 thiss!1248))))))))

(declare-fun b!172305 () Bool)

(declare-fun e!113746 () Bool)

(declare-fun tp_is_empty!4025 () Bool)

(assert (=> b!172305 (= e!113746 tp_is_empty!4025)))

(declare-fun res!81829 () Bool)

(assert (=> start!17162 (=> (not res!81829) (not e!113748))))

(declare-fun valid!946 (LongMapFixedSize!2246) Bool)

(assert (=> start!17162 (= res!81829 (valid!946 thiss!1248))))

(assert (=> start!17162 e!113748))

(declare-fun e!113747 () Bool)

(assert (=> start!17162 e!113747))

(assert (=> start!17162 true))

(declare-fun b!172306 () Bool)

(declare-fun e!113749 () Bool)

(declare-fun mapRes!6843 () Bool)

(assert (=> b!172306 (= e!113749 (and e!113746 mapRes!6843))))

(declare-fun condMapEmpty!6843 () Bool)

(declare-fun mapDefault!6843 () ValueCell!1669)

