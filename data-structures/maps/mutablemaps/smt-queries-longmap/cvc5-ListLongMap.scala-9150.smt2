; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109796 () Bool)

(assert start!109796)

(declare-fun b_free!29173 () Bool)

(declare-fun b_next!29173 () Bool)

(assert (=> start!109796 (= b_free!29173 (not b_next!29173))))

(declare-fun tp!102651 () Bool)

(declare-fun b_and!47291 () Bool)

(assert (=> start!109796 (= tp!102651 b_and!47291)))

(declare-fun b!1300016 () Bool)

(declare-fun res!863992 () Bool)

(declare-fun e!741626 () Bool)

(assert (=> b!1300016 (=> (not res!863992) (not e!741626))))

(declare-datatypes ((array!86599 0))(
  ( (array!86600 (arr!41792 (Array (_ BitVec 32) (_ BitVec 64))) (size!42343 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86599)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86599 (_ BitVec 32)) Bool)

(assert (=> b!1300016 (= res!863992 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1300017 () Bool)

(declare-fun res!863991 () Bool)

(assert (=> b!1300017 (=> (not res!863991) (not e!741626))))

(declare-datatypes ((List!29854 0))(
  ( (Nil!29851) (Cons!29850 (h!31059 (_ BitVec 64)) (t!43433 List!29854)) )
))
(declare-fun arrayNoDuplicates!0 (array!86599 (_ BitVec 32) List!29854) Bool)

(assert (=> b!1300017 (= res!863991 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29851))))

(declare-fun b!1300019 () Bool)

(declare-fun res!863984 () Bool)

(assert (=> b!1300019 (=> (not res!863984) (not e!741626))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1300019 (= res!863984 (validKeyInArray!0 (select (arr!41792 _keys!1741) from!2144)))))

(declare-fun b!1300020 () Bool)

(declare-fun e!741627 () Bool)

(declare-fun e!741625 () Bool)

(declare-fun mapRes!53792 () Bool)

(assert (=> b!1300020 (= e!741627 (and e!741625 mapRes!53792))))

(declare-fun condMapEmpty!53792 () Bool)

(declare-datatypes ((V!51521 0))(
  ( (V!51522 (val!17481 Int)) )
))
(declare-datatypes ((ValueCell!16508 0))(
  ( (ValueCellFull!16508 (v!20086 V!51521)) (EmptyCell!16508) )
))
(declare-datatypes ((array!86601 0))(
  ( (array!86602 (arr!41793 (Array (_ BitVec 32) ValueCell!16508)) (size!42344 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86601)

(declare-fun mapDefault!53792 () ValueCell!16508)

