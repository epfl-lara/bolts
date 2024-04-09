; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76364 () Bool)

(assert start!76364)

(declare-fun b!895646 () Bool)

(declare-fun b_free!15923 () Bool)

(declare-fun b_next!15923 () Bool)

(assert (=> b!895646 (= b_free!15923 (not b_next!15923))))

(declare-fun tp!55785 () Bool)

(declare-fun b_and!26233 () Bool)

(assert (=> b!895646 (= tp!55785 b_and!26233)))

(declare-fun res!605897 () Bool)

(declare-fun e!500510 () Bool)

(assert (=> start!76364 (=> (not res!605897) (not e!500510))))

(declare-datatypes ((array!52494 0))(
  ( (array!52495 (arr!25236 (Array (_ BitVec 32) (_ BitVec 64))) (size!25687 (_ BitVec 32))) )
))
(declare-datatypes ((V!29299 0))(
  ( (V!29300 (val!9176 Int)) )
))
(declare-datatypes ((ValueCell!8644 0))(
  ( (ValueCellFull!8644 (v!11663 V!29299)) (EmptyCell!8644) )
))
(declare-datatypes ((array!52496 0))(
  ( (array!52497 (arr!25237 (Array (_ BitVec 32) ValueCell!8644)) (size!25688 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4304 0))(
  ( (LongMapFixedSize!4305 (defaultEntry!5364 Int) (mask!25966 (_ BitVec 32)) (extraKeys!5060 (_ BitVec 32)) (zeroValue!5164 V!29299) (minValue!5164 V!29299) (_size!2207 (_ BitVec 32)) (_keys!10079 array!52494) (_values!5351 array!52496) (_vacant!2207 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4304)

(declare-fun valid!1651 (LongMapFixedSize!4304) Bool)

(assert (=> start!76364 (= res!605897 (valid!1651 thiss!1181))))

(assert (=> start!76364 e!500510))

(declare-fun e!500507 () Bool)

(assert (=> start!76364 e!500507))

(assert (=> start!76364 true))

(declare-fun b!895643 () Bool)

(declare-fun e!500509 () Bool)

(declare-fun e!500511 () Bool)

(declare-fun mapRes!28978 () Bool)

(assert (=> b!895643 (= e!500509 (and e!500511 mapRes!28978))))

(declare-fun condMapEmpty!28978 () Bool)

(declare-fun mapDefault!28978 () ValueCell!8644)

