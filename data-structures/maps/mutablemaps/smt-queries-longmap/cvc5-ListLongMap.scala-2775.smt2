; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40530 () Bool)

(assert start!40530)

(declare-fun b!446268 () Bool)

(declare-fun res!264954 () Bool)

(declare-fun e!262189 () Bool)

(assert (=> b!446268 (=> (not res!264954) (not e!262189))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!446268 (= res!264954 (validMask!0 mask!1025))))

(declare-fun b!446269 () Bool)

(declare-fun res!264961 () Bool)

(assert (=> b!446269 (=> (not res!264961) (not e!262189))))

(declare-datatypes ((array!27541 0))(
  ( (array!27542 (arr!13214 (Array (_ BitVec 32) (_ BitVec 64))) (size!13566 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27541)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27541 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!446269 (= res!264961 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!446270 () Bool)

(declare-fun e!262184 () Bool)

(declare-fun tp_is_empty!11887 () Bool)

(assert (=> b!446270 (= e!262184 tp_is_empty!11887)))

(declare-fun b!446271 () Bool)

(declare-fun res!264959 () Bool)

(assert (=> b!446271 (=> (not res!264959) (not e!262189))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27541 (_ BitVec 32)) Bool)

(assert (=> b!446271 (= res!264959 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!446272 () Bool)

(declare-fun e!262186 () Bool)

(assert (=> b!446272 (= e!262189 e!262186)))

(declare-fun res!264958 () Bool)

(assert (=> b!446272 (=> (not res!264958) (not e!262186))))

(declare-fun lt!203775 () array!27541)

(assert (=> b!446272 (= res!264958 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203775 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!446272 (= lt!203775 (array!27542 (store (arr!13214 _keys!709) i!563 k!794) (size!13566 _keys!709)))))

(declare-fun b!446273 () Bool)

(declare-fun e!262187 () Bool)

(declare-fun mapRes!19461 () Bool)

(assert (=> b!446273 (= e!262187 (and e!262184 mapRes!19461))))

(declare-fun condMapEmpty!19461 () Bool)

(declare-datatypes ((V!16955 0))(
  ( (V!16956 (val!5988 Int)) )
))
(declare-datatypes ((ValueCell!5600 0))(
  ( (ValueCellFull!5600 (v!8239 V!16955)) (EmptyCell!5600) )
))
(declare-datatypes ((array!27543 0))(
  ( (array!27544 (arr!13215 (Array (_ BitVec 32) ValueCell!5600)) (size!13567 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27543)

(declare-fun mapDefault!19461 () ValueCell!5600)

