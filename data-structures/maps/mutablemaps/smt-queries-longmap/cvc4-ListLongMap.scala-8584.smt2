; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104774 () Bool)

(assert start!104774)

(declare-fun b_free!26543 () Bool)

(declare-fun b_next!26543 () Bool)

(assert (=> start!104774 (= b_free!26543 (not b_next!26543))))

(declare-fun tp!93120 () Bool)

(declare-fun b_and!44321 () Bool)

(assert (=> start!104774 (= tp!93120 b_and!44321)))

(declare-fun b!1248493 () Bool)

(declare-fun res!833001 () Bool)

(declare-fun e!708507 () Bool)

(assert (=> b!1248493 (=> (not res!833001) (not e!708507))))

(declare-datatypes ((array!80559 0))(
  ( (array!80560 (arr!38842 (Array (_ BitVec 32) (_ BitVec 64))) (size!39379 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80559)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80559 (_ BitVec 32)) Bool)

(assert (=> b!1248493 (= res!833001 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun res!833004 () Bool)

(assert (=> start!104774 (=> (not res!833004) (not e!708507))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104774 (= res!833004 (validMask!0 mask!1466))))

(assert (=> start!104774 e!708507))

(assert (=> start!104774 true))

(assert (=> start!104774 tp!93120))

(declare-fun tp_is_empty!31445 () Bool)

(assert (=> start!104774 tp_is_empty!31445))

(declare-fun array_inv!29573 (array!80559) Bool)

(assert (=> start!104774 (array_inv!29573 _keys!1118)))

(declare-datatypes ((V!47291 0))(
  ( (V!47292 (val!15785 Int)) )
))
(declare-datatypes ((ValueCell!14959 0))(
  ( (ValueCellFull!14959 (v!18481 V!47291)) (EmptyCell!14959) )
))
(declare-datatypes ((array!80561 0))(
  ( (array!80562 (arr!38843 (Array (_ BitVec 32) ValueCell!14959)) (size!39380 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80561)

(declare-fun e!708504 () Bool)

(declare-fun array_inv!29574 (array!80561) Bool)

(assert (=> start!104774 (and (array_inv!29574 _values!914) e!708504)))

(declare-fun b!1248494 () Bool)

(declare-fun e!708503 () Bool)

(assert (=> b!1248494 (= e!708503 tp_is_empty!31445)))

(declare-fun mapIsEmpty!48928 () Bool)

(declare-fun mapRes!48928 () Bool)

(assert (=> mapIsEmpty!48928 mapRes!48928))

(declare-fun b!1248495 () Bool)

(assert (=> b!1248495 (= e!708504 (and e!708503 mapRes!48928))))

(declare-fun condMapEmpty!48928 () Bool)

(declare-fun mapDefault!48928 () ValueCell!14959)

