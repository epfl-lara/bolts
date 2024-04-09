; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42190 () Bool)

(assert start!42190)

(declare-fun b_free!11701 () Bool)

(declare-fun b_next!11701 () Bool)

(assert (=> start!42190 (= b_free!11701 (not b_next!11701))))

(declare-fun tp!41128 () Bool)

(declare-fun b_and!20149 () Bool)

(assert (=> start!42190 (= tp!41128 b_and!20149)))

(declare-fun b!470631 () Bool)

(declare-fun res!281257 () Bool)

(declare-fun e!275761 () Bool)

(assert (=> b!470631 (=> (not res!281257) (not e!275761))))

(declare-datatypes ((array!29987 0))(
  ( (array!29988 (arr!14413 (Array (_ BitVec 32) (_ BitVec 64))) (size!14765 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29987)

(declare-datatypes ((List!8796 0))(
  ( (Nil!8793) (Cons!8792 (h!9648 (_ BitVec 64)) (t!14768 List!8796)) )
))
(declare-fun arrayNoDuplicates!0 (array!29987 (_ BitVec 32) List!8796) Bool)

(assert (=> b!470631 (= res!281257 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8793))))

(declare-fun res!281260 () Bool)

(assert (=> start!42190 (=> (not res!281260) (not e!275761))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42190 (= res!281260 (validMask!0 mask!1365))))

(assert (=> start!42190 e!275761))

(declare-fun tp_is_empty!13129 () Bool)

(assert (=> start!42190 tp_is_empty!13129))

(assert (=> start!42190 tp!41128))

(assert (=> start!42190 true))

(declare-fun array_inv!10402 (array!29987) Bool)

(assert (=> start!42190 (array_inv!10402 _keys!1025)))

(declare-datatypes ((V!18611 0))(
  ( (V!18612 (val!6609 Int)) )
))
(declare-datatypes ((ValueCell!6221 0))(
  ( (ValueCellFull!6221 (v!8896 V!18611)) (EmptyCell!6221) )
))
(declare-datatypes ((array!29989 0))(
  ( (array!29990 (arr!14414 (Array (_ BitVec 32) ValueCell!6221)) (size!14766 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29989)

(declare-fun e!275763 () Bool)

(declare-fun array_inv!10403 (array!29989) Bool)

(assert (=> start!42190 (and (array_inv!10403 _values!833) e!275763)))

(declare-fun b!470632 () Bool)

(declare-fun e!275759 () Bool)

(assert (=> b!470632 (= e!275759 tp_is_empty!13129)))

(declare-fun b!470633 () Bool)

(declare-fun mapRes!21397 () Bool)

(assert (=> b!470633 (= e!275763 (and e!275759 mapRes!21397))))

(declare-fun condMapEmpty!21397 () Bool)

(declare-fun mapDefault!21397 () ValueCell!6221)

