; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111338 () Bool)

(assert start!111338)

(declare-fun mapIsEmpty!55316 () Bool)

(declare-fun mapRes!55316 () Bool)

(assert (=> mapIsEmpty!55316 mapRes!55316))

(declare-fun b!1317058 () Bool)

(declare-fun e!751504 () Bool)

(assert (=> b!1317058 (= e!751504 false)))

(declare-fun lt!586255 () Bool)

(declare-datatypes ((array!88471 0))(
  ( (array!88472 (arr!42705 (Array (_ BitVec 32) (_ BitVec 64))) (size!43256 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88471)

(declare-datatypes ((List!30474 0))(
  ( (Nil!30471) (Cons!30470 (h!31679 (_ BitVec 64)) (t!44089 List!30474)) )
))
(declare-fun arrayNoDuplicates!0 (array!88471 (_ BitVec 32) List!30474) Bool)

(assert (=> b!1317058 (= lt!586255 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30471))))

(declare-fun b!1317059 () Bool)

(declare-fun res!874263 () Bool)

(assert (=> b!1317059 (=> (not res!874263) (not e!751504))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88471 (_ BitVec 32)) Bool)

(assert (=> b!1317059 (= res!874263 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1317060 () Bool)

(declare-fun e!751506 () Bool)

(declare-fun e!751503 () Bool)

(assert (=> b!1317060 (= e!751506 (and e!751503 mapRes!55316))))

(declare-fun condMapEmpty!55316 () Bool)

(declare-datatypes ((V!52809 0))(
  ( (V!52810 (val!17964 Int)) )
))
(declare-datatypes ((ValueCell!16991 0))(
  ( (ValueCellFull!16991 (v!20592 V!52809)) (EmptyCell!16991) )
))
(declare-datatypes ((array!88473 0))(
  ( (array!88474 (arr!42706 (Array (_ BitVec 32) ValueCell!16991)) (size!43257 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88473)

(declare-fun mapDefault!55316 () ValueCell!16991)

