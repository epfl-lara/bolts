; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70046 () Bool)

(assert start!70046)

(declare-fun b_free!12443 () Bool)

(declare-fun b_next!12443 () Bool)

(assert (=> start!70046 (= b_free!12443 (not b_next!12443))))

(declare-fun tp!44043 () Bool)

(declare-fun b_and!21233 () Bool)

(assert (=> start!70046 (= tp!44043 b_and!21233)))

(declare-fun b!813647 () Bool)

(declare-fun e!450950 () Bool)

(declare-fun tp_is_empty!14153 () Bool)

(assert (=> b!813647 (= e!450950 tp_is_empty!14153)))

(declare-fun b!813648 () Bool)

(declare-fun res!555929 () Bool)

(declare-fun e!450946 () Bool)

(assert (=> b!813648 (=> (not res!555929) (not e!450946))))

(declare-datatypes ((array!44496 0))(
  ( (array!44497 (arr!21304 (Array (_ BitVec 32) (_ BitVec 64))) (size!21725 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44496)

(declare-datatypes ((List!15213 0))(
  ( (Nil!15210) (Cons!15209 (h!16338 (_ BitVec 64)) (t!21538 List!15213)) )
))
(declare-fun arrayNoDuplicates!0 (array!44496 (_ BitVec 32) List!15213) Bool)

(assert (=> b!813648 (= res!555929 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15210))))

(declare-fun res!555926 () Bool)

(assert (=> start!70046 (=> (not res!555926) (not e!450946))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70046 (= res!555926 (validMask!0 mask!1312))))

(assert (=> start!70046 e!450946))

(assert (=> start!70046 tp_is_empty!14153))

(declare-fun array_inv!17039 (array!44496) Bool)

(assert (=> start!70046 (array_inv!17039 _keys!976)))

(assert (=> start!70046 true))

(declare-datatypes ((V!23871 0))(
  ( (V!23872 (val!7124 Int)) )
))
(declare-datatypes ((ValueCell!6661 0))(
  ( (ValueCellFull!6661 (v!9547 V!23871)) (EmptyCell!6661) )
))
(declare-datatypes ((array!44498 0))(
  ( (array!44499 (arr!21305 (Array (_ BitVec 32) ValueCell!6661)) (size!21726 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44498)

(declare-fun e!450947 () Bool)

(declare-fun array_inv!17040 (array!44498) Bool)

(assert (=> start!70046 (and (array_inv!17040 _values!788) e!450947)))

(assert (=> start!70046 tp!44043))

(declare-fun b!813649 () Bool)

(declare-fun e!450948 () Bool)

(assert (=> b!813649 (= e!450948 tp_is_empty!14153)))

(declare-fun b!813650 () Bool)

(declare-fun mapRes!22810 () Bool)

(assert (=> b!813650 (= e!450947 (and e!450948 mapRes!22810))))

(declare-fun condMapEmpty!22810 () Bool)

(declare-fun mapDefault!22810 () ValueCell!6661)

