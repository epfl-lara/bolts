; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70502 () Bool)

(assert start!70502)

(declare-fun b_free!12805 () Bool)

(declare-fun b_next!12805 () Bool)

(assert (=> start!70502 (= b_free!12805 (not b_next!12805))))

(declare-fun tp!45147 () Bool)

(declare-fun b_and!21653 () Bool)

(assert (=> start!70502 (= tp!45147 b_and!21653)))

(declare-fun b!818466 () Bool)

(declare-fun res!558663 () Bool)

(declare-fun e!454387 () Bool)

(assert (=> b!818466 (=> (not res!558663) (not e!454387))))

(declare-datatypes ((array!45202 0))(
  ( (array!45203 (arr!21651 (Array (_ BitVec 32) (_ BitVec 64))) (size!22072 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45202)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45202 (_ BitVec 32)) Bool)

(assert (=> b!818466 (= res!558663 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!818467 () Bool)

(declare-fun e!454393 () Bool)

(declare-fun e!454391 () Bool)

(declare-fun mapRes!23371 () Bool)

(assert (=> b!818467 (= e!454393 (and e!454391 mapRes!23371))))

(declare-fun condMapEmpty!23371 () Bool)

(declare-datatypes ((V!24355 0))(
  ( (V!24356 (val!7305 Int)) )
))
(declare-datatypes ((ValueCell!6842 0))(
  ( (ValueCellFull!6842 (v!9730 V!24355)) (EmptyCell!6842) )
))
(declare-datatypes ((array!45204 0))(
  ( (array!45205 (arr!21652 (Array (_ BitVec 32) ValueCell!6842)) (size!22073 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45204)

(declare-fun mapDefault!23371 () ValueCell!6842)

