; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17260 () Bool)

(assert start!17260)

(declare-fun b!172973 () Bool)

(declare-fun b_free!4295 () Bool)

(declare-fun b_next!4295 () Bool)

(assert (=> b!172973 (= b_free!4295 (not b_next!4295))))

(declare-fun tp!15543 () Bool)

(declare-fun b_and!10753 () Bool)

(assert (=> b!172973 (= tp!15543 b_and!10753)))

(declare-fun b!172972 () Bool)

(declare-fun e!114254 () Bool)

(declare-fun tp_is_empty!4067 () Bool)

(assert (=> b!172972 (= e!114254 tp_is_empty!4067)))

(declare-fun res!82137 () Bool)

(declare-fun e!114259 () Bool)

(assert (=> start!17260 (=> (not res!82137) (not e!114259))))

(declare-datatypes ((V!5069 0))(
  ( (V!5070 (val!2078 Int)) )
))
(declare-datatypes ((ValueCell!1690 0))(
  ( (ValueCellFull!1690 (v!3942 V!5069)) (EmptyCell!1690) )
))
(declare-datatypes ((array!7260 0))(
  ( (array!7261 (arr!3450 (Array (_ BitVec 32) (_ BitVec 64))) (size!3749 (_ BitVec 32))) )
))
(declare-datatypes ((array!7262 0))(
  ( (array!7263 (arr!3451 (Array (_ BitVec 32) ValueCell!1690)) (size!3750 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2288 0))(
  ( (LongMapFixedSize!2289 (defaultEntry!3590 Int) (mask!8452 (_ BitVec 32)) (extraKeys!3329 (_ BitVec 32)) (zeroValue!3431 V!5069) (minValue!3433 V!5069) (_size!1193 (_ BitVec 32)) (_keys!5429 array!7260) (_values!3573 array!7262) (_vacant!1193 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2288)

(declare-fun valid!961 (LongMapFixedSize!2288) Bool)

(assert (=> start!17260 (= res!82137 (valid!961 thiss!1248))))

(assert (=> start!17260 e!114259))

(declare-fun e!114255 () Bool)

(assert (=> start!17260 e!114255))

(assert (=> start!17260 true))

(declare-fun e!114257 () Bool)

(declare-fun array_inv!2197 (array!7260) Bool)

(declare-fun array_inv!2198 (array!7262) Bool)

(assert (=> b!172973 (= e!114255 (and tp!15543 tp_is_empty!4067 (array_inv!2197 (_keys!5429 thiss!1248)) (array_inv!2198 (_values!3573 thiss!1248)) e!114257))))

(declare-fun b!172974 () Bool)

(declare-fun e!114256 () Bool)

(assert (=> b!172974 (= e!114256 tp_is_empty!4067)))

(declare-fun b!172975 () Bool)

(declare-fun mapRes!6921 () Bool)

(assert (=> b!172975 (= e!114257 (and e!114256 mapRes!6921))))

(declare-fun condMapEmpty!6921 () Bool)

(declare-fun mapDefault!6921 () ValueCell!1690)

