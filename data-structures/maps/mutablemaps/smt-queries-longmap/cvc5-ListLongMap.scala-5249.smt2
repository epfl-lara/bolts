; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70618 () Bool)

(assert start!70618)

(declare-fun b_free!12901 () Bool)

(declare-fun b_next!12901 () Bool)

(assert (=> start!70618 (= b_free!12901 (not b_next!12901))))

(declare-fun tp!45439 () Bool)

(declare-fun b_and!21761 () Bool)

(assert (=> start!70618 (= tp!45439 b_and!21761)))

(declare-fun b!819956 () Bool)

(declare-fun res!559620 () Bool)

(declare-fun e!455520 () Bool)

(assert (=> b!819956 (=> (not res!559620) (not e!455520))))

(declare-datatypes ((array!45386 0))(
  ( (array!45387 (arr!21742 (Array (_ BitVec 32) (_ BitVec 64))) (size!22163 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45386)

(declare-datatypes ((List!15553 0))(
  ( (Nil!15550) (Cons!15549 (h!16678 (_ BitVec 64)) (t!21892 List!15553)) )
))
(declare-fun arrayNoDuplicates!0 (array!45386 (_ BitVec 32) List!15553) Bool)

(assert (=> b!819956 (= res!559620 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15550))))

(declare-fun b!819957 () Bool)

(declare-fun e!455522 () Bool)

(declare-fun e!455519 () Bool)

(declare-fun mapRes!23518 () Bool)

(assert (=> b!819957 (= e!455522 (and e!455519 mapRes!23518))))

(declare-fun condMapEmpty!23518 () Bool)

(declare-datatypes ((V!24483 0))(
  ( (V!24484 (val!7353 Int)) )
))
(declare-datatypes ((ValueCell!6890 0))(
  ( (ValueCellFull!6890 (v!9779 V!24483)) (EmptyCell!6890) )
))
(declare-datatypes ((array!45388 0))(
  ( (array!45389 (arr!21743 (Array (_ BitVec 32) ValueCell!6890)) (size!22164 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45388)

(declare-fun mapDefault!23518 () ValueCell!6890)

