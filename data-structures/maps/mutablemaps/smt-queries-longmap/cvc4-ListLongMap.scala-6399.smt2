; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82222 () Bool)

(assert start!82222)

(declare-fun b_free!18467 () Bool)

(declare-fun b_next!18467 () Bool)

(assert (=> start!82222 (= b_free!18467 (not b_next!18467))))

(declare-fun tp!64362 () Bool)

(declare-fun b_and!29973 () Bool)

(assert (=> start!82222 (= tp!64362 b_and!29973)))

(declare-fun b!957833 () Bool)

(declare-fun res!641259 () Bool)

(declare-fun e!540023 () Bool)

(assert (=> b!957833 (=> (not res!641259) (not e!540023))))

(declare-datatypes ((array!58463 0))(
  ( (array!58464 (arr!28101 (Array (_ BitVec 32) (_ BitVec 64))) (size!28581 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58463)

(declare-datatypes ((List!19667 0))(
  ( (Nil!19664) (Cons!19663 (h!20825 (_ BitVec 64)) (t!28038 List!19667)) )
))
(declare-fun arrayNoDuplicates!0 (array!58463 (_ BitVec 32) List!19667) Bool)

(assert (=> b!957833 (= res!641259 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19664))))

(declare-fun res!641257 () Bool)

(assert (=> start!82222 (=> (not res!641257) (not e!540023))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82222 (= res!641257 (validMask!0 mask!2088))))

(assert (=> start!82222 e!540023))

(assert (=> start!82222 true))

(declare-fun tp_is_empty!21173 () Bool)

(assert (=> start!82222 tp_is_empty!21173))

(declare-fun array_inv!21741 (array!58463) Bool)

(assert (=> start!82222 (array_inv!21741 _keys!1668)))

(declare-datatypes ((V!33213 0))(
  ( (V!33214 (val!10637 Int)) )
))
(declare-datatypes ((ValueCell!10105 0))(
  ( (ValueCellFull!10105 (v!13194 V!33213)) (EmptyCell!10105) )
))
(declare-datatypes ((array!58465 0))(
  ( (array!58466 (arr!28102 (Array (_ BitVec 32) ValueCell!10105)) (size!28582 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58465)

(declare-fun e!540022 () Bool)

(declare-fun array_inv!21742 (array!58465) Bool)

(assert (=> start!82222 (and (array_inv!21742 _values!1386) e!540022)))

(assert (=> start!82222 tp!64362))

(declare-fun b!957834 () Bool)

(declare-fun e!540020 () Bool)

(declare-fun mapRes!33739 () Bool)

(assert (=> b!957834 (= e!540022 (and e!540020 mapRes!33739))))

(declare-fun condMapEmpty!33739 () Bool)

(declare-fun mapDefault!33739 () ValueCell!10105)

