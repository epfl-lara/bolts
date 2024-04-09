; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39654 () Bool)

(assert start!39654)

(declare-fun b_free!9913 () Bool)

(declare-fun b_next!9913 () Bool)

(assert (=> start!39654 (= b_free!9913 (not b_next!9913))))

(declare-fun tp!35267 () Bool)

(declare-fun b_and!17587 () Bool)

(assert (=> start!39654 (= tp!35267 b_and!17587)))

(declare-fun b!425132 () Bool)

(declare-fun res!248953 () Bool)

(declare-fun e!252406 () Bool)

(assert (=> b!425132 (=> (not res!248953) (not e!252406))))

(declare-datatypes ((array!25957 0))(
  ( (array!25958 (arr!12425 (Array (_ BitVec 32) (_ BitVec 64))) (size!12777 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25957)

(declare-datatypes ((List!7308 0))(
  ( (Nil!7305) (Cons!7304 (h!8160 (_ BitVec 64)) (t!12760 List!7308)) )
))
(declare-fun arrayNoDuplicates!0 (array!25957 (_ BitVec 32) List!7308) Bool)

(assert (=> b!425132 (= res!248953 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7305))))

(declare-fun b!425133 () Bool)

(declare-fun res!248955 () Bool)

(assert (=> b!425133 (=> (not res!248955) (not e!252406))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25957 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!425133 (= res!248955 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!425134 () Bool)

(declare-fun res!248956 () Bool)

(assert (=> b!425134 (=> (not res!248956) (not e!252406))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25957 (_ BitVec 32)) Bool)

(assert (=> b!425134 (= res!248956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!425135 () Bool)

(declare-fun res!248957 () Bool)

(assert (=> b!425135 (=> (not res!248957) (not e!252406))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!425135 (= res!248957 (validMask!0 mask!1025))))

(declare-fun b!425136 () Bool)

(declare-fun e!252409 () Bool)

(declare-fun e!252412 () Bool)

(declare-fun mapRes!18219 () Bool)

(assert (=> b!425136 (= e!252409 (and e!252412 mapRes!18219))))

(declare-fun condMapEmpty!18219 () Bool)

(declare-datatypes ((V!15859 0))(
  ( (V!15860 (val!5577 Int)) )
))
(declare-datatypes ((ValueCell!5189 0))(
  ( (ValueCellFull!5189 (v!7820 V!15859)) (EmptyCell!5189) )
))
(declare-datatypes ((array!25959 0))(
  ( (array!25960 (arr!12426 (Array (_ BitVec 32) ValueCell!5189)) (size!12778 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25959)

(declare-fun mapDefault!18219 () ValueCell!5189)

