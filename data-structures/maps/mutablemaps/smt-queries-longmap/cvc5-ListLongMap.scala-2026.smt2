; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35282 () Bool)

(assert start!35282)

(declare-fun b!353310 () Bool)

(declare-fun e!216399 () Bool)

(declare-datatypes ((array!19105 0))(
  ( (array!19106 (arr!9048 (Array (_ BitVec 32) (_ BitVec 64))) (size!9400 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19105)

(assert (=> b!353310 (= e!216399 (bvsgt #b00000000000000000000000000000000 (size!9400 _keys!1456)))))

(declare-fun b!353311 () Bool)

(declare-fun e!216396 () Bool)

(declare-fun tp_is_empty!7777 () Bool)

(assert (=> b!353311 (= e!216396 tp_is_empty!7777)))

(declare-fun mapIsEmpty!13158 () Bool)

(declare-fun mapRes!13158 () Bool)

(assert (=> mapIsEmpty!13158 mapRes!13158))

(declare-fun b!353312 () Bool)

(declare-fun res!195951 () Bool)

(assert (=> b!353312 (=> (not res!195951) (not e!216399))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19105 (_ BitVec 32)) Bool)

(assert (=> b!353312 (= res!195951 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun res!195952 () Bool)

(assert (=> start!35282 (=> (not res!195952) (not e!216399))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35282 (= res!195952 (validMask!0 mask!1842))))

(assert (=> start!35282 e!216399))

(assert (=> start!35282 true))

(declare-datatypes ((V!11347 0))(
  ( (V!11348 (val!3933 Int)) )
))
(declare-datatypes ((ValueCell!3545 0))(
  ( (ValueCellFull!3545 (v!6122 V!11347)) (EmptyCell!3545) )
))
(declare-datatypes ((array!19107 0))(
  ( (array!19108 (arr!9049 (Array (_ BitVec 32) ValueCell!3545)) (size!9401 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19107)

(declare-fun e!216398 () Bool)

(declare-fun array_inv!6664 (array!19107) Bool)

(assert (=> start!35282 (and (array_inv!6664 _values!1208) e!216398)))

(declare-fun array_inv!6665 (array!19105) Bool)

(assert (=> start!35282 (array_inv!6665 _keys!1456)))

(declare-fun b!353313 () Bool)

(assert (=> b!353313 (= e!216398 (and e!216396 mapRes!13158))))

(declare-fun condMapEmpty!13158 () Bool)

(declare-fun mapDefault!13158 () ValueCell!3545)

