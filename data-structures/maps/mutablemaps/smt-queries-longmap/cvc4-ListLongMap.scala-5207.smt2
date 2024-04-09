; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70302 () Bool)

(assert start!70302)

(declare-fun b_free!12653 () Bool)

(declare-fun b_next!12653 () Bool)

(assert (=> start!70302 (= b_free!12653 (not b_next!12653))))

(declare-fun tp!44682 () Bool)

(declare-fun b_and!21471 () Bool)

(assert (=> start!70302 (= tp!44682 b_and!21471)))

(declare-fun b!816304 () Bool)

(declare-fun res!557431 () Bool)

(declare-fun e!452840 () Bool)

(assert (=> b!816304 (=> (not res!557431) (not e!452840))))

(declare-datatypes ((array!44906 0))(
  ( (array!44907 (arr!21506 (Array (_ BitVec 32) (_ BitVec 64))) (size!21927 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44906)

(declare-datatypes ((List!15370 0))(
  ( (Nil!15367) (Cons!15366 (h!16495 (_ BitVec 64)) (t!21701 List!15370)) )
))
(declare-fun arrayNoDuplicates!0 (array!44906 (_ BitVec 32) List!15370) Bool)

(assert (=> b!816304 (= res!557431 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15367))))

(declare-fun b!816305 () Bool)

(declare-fun res!557429 () Bool)

(assert (=> b!816305 (=> (not res!557429) (not e!452840))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44906 (_ BitVec 32)) Bool)

(assert (=> b!816305 (= res!557429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!816306 () Bool)

(declare-fun e!452839 () Bool)

(declare-fun e!452844 () Bool)

(declare-fun mapRes!23134 () Bool)

(assert (=> b!816306 (= e!452839 (and e!452844 mapRes!23134))))

(declare-fun condMapEmpty!23134 () Bool)

(declare-datatypes ((V!24151 0))(
  ( (V!24152 (val!7229 Int)) )
))
(declare-datatypes ((ValueCell!6766 0))(
  ( (ValueCellFull!6766 (v!9653 V!24151)) (EmptyCell!6766) )
))
(declare-datatypes ((array!44908 0))(
  ( (array!44909 (arr!21507 (Array (_ BitVec 32) ValueCell!6766)) (size!21928 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44908)

(declare-fun mapDefault!23134 () ValueCell!6766)

