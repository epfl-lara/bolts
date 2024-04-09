; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37378 () Bool)

(assert start!37378)

(declare-fun b_free!8497 () Bool)

(declare-fun b_next!8497 () Bool)

(assert (=> start!37378 (= b_free!8497 (not b_next!8497))))

(declare-fun tp!30207 () Bool)

(declare-fun b_and!15757 () Bool)

(assert (=> start!37378 (= tp!30207 b_and!15757)))

(declare-fun b!379440 () Bool)

(declare-fun res!215266 () Bool)

(declare-fun e!230852 () Bool)

(assert (=> b!379440 (=> (not res!215266) (not e!230852))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22187 0))(
  ( (array!22188 (arr!10559 (Array (_ BitVec 32) (_ BitVec 64))) (size!10911 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22187)

(assert (=> b!379440 (= res!215266 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10911 _keys!658))))))

(declare-fun b!379441 () Bool)

(declare-fun res!215260 () Bool)

(assert (=> b!379441 (=> (not res!215260) (not e!230852))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!379441 (= res!215260 (validKeyInArray!0 k!778))))

(declare-fun mapNonEmpty!15282 () Bool)

(declare-fun mapRes!15282 () Bool)

(declare-fun tp!30206 () Bool)

(declare-fun e!230857 () Bool)

(assert (=> mapNonEmpty!15282 (= mapRes!15282 (and tp!30206 e!230857))))

(declare-datatypes ((V!13299 0))(
  ( (V!13300 (val!4617 Int)) )
))
(declare-datatypes ((ValueCell!4229 0))(
  ( (ValueCellFull!4229 (v!6810 V!13299)) (EmptyCell!4229) )
))
(declare-fun mapRest!15282 () (Array (_ BitVec 32) ValueCell!4229))

(declare-datatypes ((array!22189 0))(
  ( (array!22190 (arr!10560 (Array (_ BitVec 32) ValueCell!4229)) (size!10912 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22189)

(declare-fun mapKey!15282 () (_ BitVec 32))

(declare-fun mapValue!15282 () ValueCell!4229)

(assert (=> mapNonEmpty!15282 (= (arr!10560 _values!506) (store mapRest!15282 mapKey!15282 mapValue!15282))))

(declare-fun b!379442 () Bool)

(declare-fun e!230858 () Bool)

(declare-fun e!230856 () Bool)

(assert (=> b!379442 (= e!230858 (and e!230856 mapRes!15282))))

(declare-fun condMapEmpty!15282 () Bool)

(declare-fun mapDefault!15282 () ValueCell!4229)

