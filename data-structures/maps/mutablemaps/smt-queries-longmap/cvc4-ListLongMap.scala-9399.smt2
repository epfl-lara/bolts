; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111928 () Bool)

(assert start!111928)

(declare-fun b_free!30491 () Bool)

(declare-fun b_next!30491 () Bool)

(assert (=> start!111928 (= b_free!30491 (not b_next!30491))))

(declare-fun tp!106954 () Bool)

(declare-fun b_and!49087 () Bool)

(assert (=> start!111928 (= tp!106954 b_and!49087)))

(declare-fun b!1325772 () Bool)

(declare-fun res!879995 () Bool)

(declare-fun e!755754 () Bool)

(assert (=> b!1325772 (=> (not res!879995) (not e!755754))))

(declare-datatypes ((array!89491 0))(
  ( (array!89492 (arr!43214 (Array (_ BitVec 32) (_ BitVec 64))) (size!43765 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89491)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89491 (_ BitVec 32)) Bool)

(assert (=> b!1325772 (= res!879995 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1325773 () Bool)

(declare-fun e!755753 () Bool)

(declare-fun e!755755 () Bool)

(declare-fun mapRes!56118 () Bool)

(assert (=> b!1325773 (= e!755753 (and e!755755 mapRes!56118))))

(declare-fun condMapEmpty!56118 () Bool)

(declare-datatypes ((V!53517 0))(
  ( (V!53518 (val!18230 Int)) )
))
(declare-datatypes ((ValueCell!17257 0))(
  ( (ValueCellFull!17257 (v!20861 V!53517)) (EmptyCell!17257) )
))
(declare-datatypes ((array!89493 0))(
  ( (array!89494 (arr!43215 (Array (_ BitVec 32) ValueCell!17257)) (size!43766 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89493)

(declare-fun mapDefault!56118 () ValueCell!17257)

