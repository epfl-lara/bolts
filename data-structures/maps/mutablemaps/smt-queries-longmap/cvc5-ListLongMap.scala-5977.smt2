; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77716 () Bool)

(assert start!77716)

(declare-fun b_free!16273 () Bool)

(declare-fun b_next!16273 () Bool)

(assert (=> start!77716 (= b_free!16273 (not b_next!16273))))

(declare-fun tp!57082 () Bool)

(declare-fun b_and!26717 () Bool)

(assert (=> start!77716 (= tp!57082 b_and!26717)))

(declare-fun b!905957 () Bool)

(declare-fun e!507723 () Bool)

(declare-fun tp_is_empty!18691 () Bool)

(assert (=> b!905957 (= e!507723 tp_is_empty!18691)))

(declare-fun mapIsEmpty!29749 () Bool)

(declare-fun mapRes!29749 () Bool)

(assert (=> mapIsEmpty!29749 mapRes!29749))

(declare-fun b!905958 () Bool)

(declare-fun res!611495 () Bool)

(declare-fun e!507718 () Bool)

(assert (=> b!905958 (=> (not res!611495) (not e!507718))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!905958 (= res!611495 (inRange!0 i!717 mask!1756))))

(declare-fun b!905959 () Bool)

(declare-fun e!507722 () Bool)

(declare-fun e!507721 () Bool)

(assert (=> b!905959 (= e!507722 (and e!507721 mapRes!29749))))

(declare-fun condMapEmpty!29749 () Bool)

(declare-datatypes ((V!29887 0))(
  ( (V!29888 (val!9396 Int)) )
))
(declare-datatypes ((ValueCell!8864 0))(
  ( (ValueCellFull!8864 (v!11901 V!29887)) (EmptyCell!8864) )
))
(declare-datatypes ((array!53412 0))(
  ( (array!53413 (arr!25661 (Array (_ BitVec 32) ValueCell!8864)) (size!26121 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53412)

(declare-fun mapDefault!29749 () ValueCell!8864)

