; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7392 () Bool)

(assert start!7392)

(declare-fun b!47419 () Bool)

(declare-fun res!27572 () Bool)

(declare-fun e!30362 () Bool)

(assert (=> b!47419 (=> (not res!27572) (not e!30362))))

(declare-datatypes ((List!1275 0))(
  ( (Nil!1272) (Cons!1271 (h!1851 (_ BitVec 64)) (t!4311 List!1275)) )
))
(declare-fun noDuplicate!36 (List!1275) Bool)

(assert (=> b!47419 (= res!27572 (noDuplicate!36 Nil!1272))))

(declare-fun b!47420 () Bool)

(declare-fun res!27573 () Bool)

(assert (=> b!47420 (=> (not res!27573) (not e!30362))))

(declare-datatypes ((array!3124 0))(
  ( (array!3125 (arr!1497 (Array (_ BitVec 32) (_ BitVec 64))) (size!1719 (_ BitVec 32))) )
))
(declare-fun _keys!1940 () array!3124)

(declare-fun mask!2458 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3124 (_ BitVec 32)) Bool)

(assert (=> b!47420 (= res!27573 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1940 mask!2458))))

(declare-fun b!47421 () Bool)

(declare-fun e!30363 () Bool)

(declare-fun tp_is_empty!2029 () Bool)

(assert (=> b!47421 (= e!30363 tp_is_empty!2029)))

(declare-fun b!47422 () Bool)

(declare-fun res!27575 () Bool)

(assert (=> b!47422 (=> (not res!27575) (not e!30362))))

(declare-fun extraKeys!1471 () (_ BitVec 32))

(declare-datatypes ((V!2439 0))(
  ( (V!2440 (val!1053 Int)) )
))
(declare-datatypes ((ValueCell!725 0))(
  ( (ValueCellFull!725 (v!2112 V!2439)) (EmptyCell!725) )
))
(declare-datatypes ((array!3126 0))(
  ( (array!3127 (arr!1498 (Array (_ BitVec 32) ValueCell!725)) (size!1720 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3126)

(assert (=> b!47422 (= res!27575 (and (= (size!1720 _values!1550) (bvadd #b00000000000000000000000000000001 mask!2458)) (= (size!1719 _keys!1940) (size!1720 _values!1550)) (bvsge mask!2458 #b00000000000000000000000000000000) (bvsge extraKeys!1471 #b00000000000000000000000000000000) (bvsle extraKeys!1471 #b00000000000000000000000000000011)))))

(declare-fun b!47423 () Bool)

(declare-fun res!27574 () Bool)

(assert (=> b!47423 (=> (not res!27574) (not e!30362))))

(assert (=> b!47423 (= res!27574 (and (bvsle #b00000000000000000000000000000000 (size!1719 _keys!1940)) (bvslt (size!1719 _keys!1940) #b01111111111111111111111111111111)))))

(declare-fun b!47424 () Bool)

(declare-fun e!30360 () Bool)

(assert (=> b!47424 (= e!30360 tp_is_empty!2029)))

(declare-fun mapIsEmpty!2084 () Bool)

(declare-fun mapRes!2084 () Bool)

(assert (=> mapIsEmpty!2084 mapRes!2084))

(declare-fun b!47425 () Bool)

(declare-fun e!30365 () Bool)

(declare-fun contains!586 (List!1275 (_ BitVec 64)) Bool)

(assert (=> b!47425 (= e!30365 (contains!586 Nil!1272 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!27576 () Bool)

(assert (=> start!7392 (=> (not res!27576) (not e!30362))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7392 (= res!27576 (validMask!0 mask!2458))))

(assert (=> start!7392 e!30362))

(assert (=> start!7392 true))

(declare-fun e!30361 () Bool)

(declare-fun array_inv!856 (array!3126) Bool)

(assert (=> start!7392 (and (array_inv!856 _values!1550) e!30361)))

(declare-fun array_inv!857 (array!3124) Bool)

(assert (=> start!7392 (array_inv!857 _keys!1940)))

(declare-fun b!47426 () Bool)

(assert (=> b!47426 (= e!30361 (and e!30363 mapRes!2084))))

(declare-fun condMapEmpty!2084 () Bool)

(declare-fun mapDefault!2084 () ValueCell!725)

