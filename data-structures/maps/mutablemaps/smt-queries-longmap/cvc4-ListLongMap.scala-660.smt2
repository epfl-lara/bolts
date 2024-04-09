; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16324 () Bool)

(assert start!16324)

(declare-fun b!162742 () Bool)

(declare-fun b_free!3773 () Bool)

(declare-fun b_next!3773 () Bool)

(assert (=> b!162742 (= b_free!3773 (not b_next!3773))))

(declare-fun tp!13888 () Bool)

(declare-fun b_and!10205 () Bool)

(assert (=> b!162742 (= tp!13888 b_and!10205)))

(declare-fun b!162740 () Bool)

(declare-fun res!77082 () Bool)

(declare-fun e!106764 () Bool)

(assert (=> b!162740 (=> (not res!77082) (not e!106764))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!162740 (= res!77082 (not (= key!828 (bvneg key!828))))))

(declare-fun b!162741 () Bool)

(declare-fun e!106768 () Bool)

(declare-fun e!106769 () Bool)

(declare-fun mapRes!6050 () Bool)

(assert (=> b!162741 (= e!106768 (and e!106769 mapRes!6050))))

(declare-fun condMapEmpty!6050 () Bool)

(declare-datatypes ((V!4413 0))(
  ( (V!4414 (val!1832 Int)) )
))
(declare-datatypes ((ValueCell!1444 0))(
  ( (ValueCellFull!1444 (v!3693 V!4413)) (EmptyCell!1444) )
))
(declare-datatypes ((array!6228 0))(
  ( (array!6229 (arr!2958 (Array (_ BitVec 32) (_ BitVec 64))) (size!3242 (_ BitVec 32))) )
))
(declare-datatypes ((array!6230 0))(
  ( (array!6231 (arr!2959 (Array (_ BitVec 32) ValueCell!1444)) (size!3243 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1796 0))(
  ( (LongMapFixedSize!1797 (defaultEntry!3340 Int) (mask!7972 (_ BitVec 32)) (extraKeys!3081 (_ BitVec 32)) (zeroValue!3183 V!4413) (minValue!3183 V!4413) (_size!947 (_ BitVec 32)) (_keys!5141 array!6228) (_values!3323 array!6230) (_vacant!947 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1796)

(declare-fun mapDefault!6050 () ValueCell!1444)

