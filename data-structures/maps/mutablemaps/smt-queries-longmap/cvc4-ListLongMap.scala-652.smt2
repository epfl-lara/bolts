; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16276 () Bool)

(assert start!16276)

(declare-fun b!162221 () Bool)

(declare-fun b_free!3725 () Bool)

(declare-fun b_next!3725 () Bool)

(assert (=> b!162221 (= b_free!3725 (not b_next!3725))))

(declare-fun tp!13744 () Bool)

(declare-fun b_and!10157 () Bool)

(assert (=> b!162221 (= tp!13744 b_and!10157)))

(declare-fun b!162219 () Bool)

(declare-fun e!106263 () Bool)

(declare-fun tp_is_empty!3527 () Bool)

(assert (=> b!162219 (= e!106263 tp_is_empty!3527)))

(declare-fun res!76849 () Bool)

(declare-fun e!106262 () Bool)

(assert (=> start!16276 (=> (not res!76849) (not e!106262))))

(declare-datatypes ((V!4349 0))(
  ( (V!4350 (val!1808 Int)) )
))
(declare-datatypes ((ValueCell!1420 0))(
  ( (ValueCellFull!1420 (v!3669 V!4349)) (EmptyCell!1420) )
))
(declare-datatypes ((array!6132 0))(
  ( (array!6133 (arr!2910 (Array (_ BitVec 32) (_ BitVec 64))) (size!3194 (_ BitVec 32))) )
))
(declare-datatypes ((array!6134 0))(
  ( (array!6135 (arr!2911 (Array (_ BitVec 32) ValueCell!1420)) (size!3195 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1748 0))(
  ( (LongMapFixedSize!1749 (defaultEntry!3316 Int) (mask!7932 (_ BitVec 32)) (extraKeys!3057 (_ BitVec 32)) (zeroValue!3159 V!4349) (minValue!3159 V!4349) (_size!923 (_ BitVec 32)) (_keys!5117 array!6132) (_values!3299 array!6134) (_vacant!923 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1748)

(declare-fun valid!784 (LongMapFixedSize!1748) Bool)

(assert (=> start!16276 (= res!76849 (valid!784 thiss!1248))))

(assert (=> start!16276 e!106262))

(declare-fun e!106261 () Bool)

(assert (=> start!16276 e!106261))

(assert (=> start!16276 true))

(declare-fun b!162220 () Bool)

(declare-fun e!106265 () Bool)

(declare-fun e!106264 () Bool)

(declare-fun mapRes!5978 () Bool)

(assert (=> b!162220 (= e!106265 (and e!106264 mapRes!5978))))

(declare-fun condMapEmpty!5978 () Bool)

(declare-fun mapDefault!5978 () ValueCell!1420)

