; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70304 () Bool)

(assert start!70304)

(declare-fun b_free!12655 () Bool)

(declare-fun b_next!12655 () Bool)

(assert (=> start!70304 (= b_free!12655 (not b_next!12655))))

(declare-fun tp!44689 () Bool)

(declare-fun b_and!21473 () Bool)

(assert (=> start!70304 (= tp!44689 b_and!21473)))

(declare-fun b!816328 () Bool)

(declare-fun res!557443 () Bool)

(declare-fun e!452859 () Bool)

(assert (=> b!816328 (=> (not res!557443) (not e!452859))))

(declare-datatypes ((array!44910 0))(
  ( (array!44911 (arr!21508 (Array (_ BitVec 32) (_ BitVec 64))) (size!21929 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44910)

(declare-datatypes ((List!15371 0))(
  ( (Nil!15368) (Cons!15367 (h!16496 (_ BitVec 64)) (t!21702 List!15371)) )
))
(declare-fun arrayNoDuplicates!0 (array!44910 (_ BitVec 32) List!15371) Bool)

(assert (=> b!816328 (= res!557443 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15368))))

(declare-fun b!816329 () Bool)

(declare-fun e!452862 () Bool)

(declare-fun e!452861 () Bool)

(declare-fun mapRes!23137 () Bool)

(assert (=> b!816329 (= e!452862 (and e!452861 mapRes!23137))))

(declare-fun condMapEmpty!23137 () Bool)

(declare-datatypes ((V!24155 0))(
  ( (V!24156 (val!7230 Int)) )
))
(declare-datatypes ((ValueCell!6767 0))(
  ( (ValueCellFull!6767 (v!9654 V!24155)) (EmptyCell!6767) )
))
(declare-datatypes ((array!44912 0))(
  ( (array!44913 (arr!21509 (Array (_ BitVec 32) ValueCell!6767)) (size!21930 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44912)

(declare-fun mapDefault!23137 () ValueCell!6767)

