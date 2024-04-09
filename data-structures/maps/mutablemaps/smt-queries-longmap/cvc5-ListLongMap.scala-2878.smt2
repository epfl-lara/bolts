; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41396 () Bool)

(assert start!41396)

(declare-fun res!276584 () Bool)

(declare-fun e!269844 () Bool)

(assert (=> start!41396 (=> (not res!276584) (not e!269844))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41396 (= res!276584 (validMask!0 mask!1365))))

(assert (=> start!41396 e!269844))

(assert (=> start!41396 true))

(declare-datatypes ((array!28777 0))(
  ( (array!28778 (arr!13819 (Array (_ BitVec 32) (_ BitVec 64))) (size!14171 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28777)

(declare-fun array_inv!9974 (array!28777) Bool)

(assert (=> start!41396 (array_inv!9974 _keys!1025)))

(declare-datatypes ((V!17779 0))(
  ( (V!17780 (val!6297 Int)) )
))
(declare-datatypes ((ValueCell!5909 0))(
  ( (ValueCellFull!5909 (v!8580 V!17779)) (EmptyCell!5909) )
))
(declare-datatypes ((array!28779 0))(
  ( (array!28780 (arr!13820 (Array (_ BitVec 32) ValueCell!5909)) (size!14172 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28779)

(declare-fun e!269845 () Bool)

(declare-fun array_inv!9975 (array!28779) Bool)

(assert (=> start!41396 (and (array_inv!9975 _values!833) e!269845)))

(declare-fun b!462368 () Bool)

(declare-fun e!269843 () Bool)

(declare-fun tp_is_empty!12505 () Bool)

(assert (=> b!462368 (= e!269843 tp_is_empty!12505)))

(declare-fun b!462369 () Bool)

(declare-fun e!269841 () Bool)

(declare-fun mapRes!20428 () Bool)

(assert (=> b!462369 (= e!269845 (and e!269841 mapRes!20428))))

(declare-fun condMapEmpty!20428 () Bool)

(declare-fun mapDefault!20428 () ValueCell!5909)

