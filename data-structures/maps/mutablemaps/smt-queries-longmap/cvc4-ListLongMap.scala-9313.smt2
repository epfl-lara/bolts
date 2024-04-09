; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111354 () Bool)

(assert start!111354)

(declare-fun b!1317202 () Bool)

(declare-fun e!751623 () Bool)

(assert (=> b!1317202 (= e!751623 false)))

(declare-fun lt!586279 () Bool)

(declare-datatypes ((array!88501 0))(
  ( (array!88502 (arr!42720 (Array (_ BitVec 32) (_ BitVec 64))) (size!43271 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88501)

(declare-datatypes ((List!30480 0))(
  ( (Nil!30477) (Cons!30476 (h!31685 (_ BitVec 64)) (t!44095 List!30480)) )
))
(declare-fun arrayNoDuplicates!0 (array!88501 (_ BitVec 32) List!30480) Bool)

(assert (=> b!1317202 (= lt!586279 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30477))))

(declare-fun mapIsEmpty!55340 () Bool)

(declare-fun mapRes!55340 () Bool)

(assert (=> mapIsEmpty!55340 mapRes!55340))

(declare-fun b!1317203 () Bool)

(declare-fun e!751626 () Bool)

(declare-fun e!751624 () Bool)

(assert (=> b!1317203 (= e!751626 (and e!751624 mapRes!55340))))

(declare-fun condMapEmpty!55340 () Bool)

(declare-datatypes ((V!52829 0))(
  ( (V!52830 (val!17972 Int)) )
))
(declare-datatypes ((ValueCell!16999 0))(
  ( (ValueCellFull!16999 (v!20600 V!52829)) (EmptyCell!16999) )
))
(declare-datatypes ((array!88503 0))(
  ( (array!88504 (arr!42721 (Array (_ BitVec 32) ValueCell!16999)) (size!43272 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88503)

(declare-fun mapDefault!55340 () ValueCell!16999)

