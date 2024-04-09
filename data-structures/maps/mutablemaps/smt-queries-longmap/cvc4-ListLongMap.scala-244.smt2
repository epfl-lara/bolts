; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4148 () Bool)

(assert start!4148)

(declare-fun b_free!1055 () Bool)

(declare-fun b_next!1055 () Bool)

(assert (=> start!4148 (= b_free!1055 (not b_next!1055))))

(declare-fun tp!4584 () Bool)

(declare-fun b_and!1867 () Bool)

(assert (=> start!4148 (= tp!4584 b_and!1867)))

(declare-fun res!18922 () Bool)

(declare-fun e!19996 () Bool)

(assert (=> start!4148 (=> (not res!18922) (not e!19996))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4148 (= res!18922 (validMask!0 mask!2294))))

(assert (=> start!4148 e!19996))

(assert (=> start!4148 true))

(assert (=> start!4148 tp!4584))

(declare-datatypes ((V!1703 0))(
  ( (V!1704 (val!731 Int)) )
))
(declare-datatypes ((ValueCell!505 0))(
  ( (ValueCellFull!505 (v!1820 V!1703)) (EmptyCell!505) )
))
(declare-datatypes ((array!2025 0))(
  ( (array!2026 (arr!966 (Array (_ BitVec 32) ValueCell!505)) (size!1067 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2025)

(declare-fun e!19992 () Bool)

(declare-fun array_inv!643 (array!2025) Bool)

(assert (=> start!4148 (and (array_inv!643 _values!1501) e!19992)))

(declare-datatypes ((array!2027 0))(
  ( (array!2028 (arr!967 (Array (_ BitVec 32) (_ BitVec 64))) (size!1068 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2027)

(declare-fun array_inv!644 (array!2027) Bool)

(assert (=> start!4148 (array_inv!644 _keys!1833)))

(declare-fun tp_is_empty!1409 () Bool)

(assert (=> start!4148 tp_is_empty!1409))

(declare-fun b!31280 () Bool)

(declare-fun e!19994 () Bool)

(assert (=> b!31280 (= e!19994 tp_is_empty!1409)))

(declare-fun b!31281 () Bool)

(assert (=> b!31281 (= e!19996 false)))

(declare-fun k!1304 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!128 0))(
  ( (MissingZero!128 (index!2634 (_ BitVec 32))) (Found!128 (index!2635 (_ BitVec 32))) (Intermediate!128 (undefined!940 Bool) (index!2636 (_ BitVec 32)) (x!6622 (_ BitVec 32))) (Undefined!128) (MissingVacant!128 (index!2637 (_ BitVec 32))) )
))
(declare-fun lt!11553 () SeekEntryResult!128)

(declare-fun seekEntry!0 ((_ BitVec 64) array!2027 (_ BitVec 32)) SeekEntryResult!128)

(assert (=> b!31281 (= lt!11553 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!31282 () Bool)

(declare-fun res!18926 () Bool)

(assert (=> b!31282 (=> (not res!18926) (not e!19996))))

(declare-datatypes ((List!792 0))(
  ( (Nil!789) (Cons!788 (h!1355 (_ BitVec 64)) (t!3487 List!792)) )
))
(declare-fun arrayNoDuplicates!0 (array!2027 (_ BitVec 32) List!792) Bool)

(assert (=> b!31282 (= res!18926 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!789))))

(declare-fun b!31283 () Bool)

(declare-fun e!19993 () Bool)

(declare-fun mapRes!1642 () Bool)

(assert (=> b!31283 (= e!19992 (and e!19993 mapRes!1642))))

(declare-fun condMapEmpty!1642 () Bool)

(declare-fun mapDefault!1642 () ValueCell!505)

