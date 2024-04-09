; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84332 () Bool)

(assert start!84332)

(declare-fun b!986065 () Bool)

(declare-fun res!659881 () Bool)

(declare-fun e!555965 () Bool)

(assert (=> b!986065 (=> (not res!659881) (not e!555965))))

(declare-datatypes ((array!62169 0))(
  ( (array!62170 (arr!29938 (Array (_ BitVec 32) (_ BitVec 64))) (size!30418 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62169)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!986065 (= res!659881 (validKeyInArray!0 (select (arr!29938 _keys!1544) from!1932)))))

(declare-fun b!986066 () Bool)

(declare-fun e!555961 () Bool)

(declare-fun e!555962 () Bool)

(declare-fun mapRes!36689 () Bool)

(assert (=> b!986066 (= e!555961 (and e!555962 mapRes!36689))))

(declare-fun condMapEmpty!36689 () Bool)

(declare-datatypes ((V!35793 0))(
  ( (V!35794 (val!11604 Int)) )
))
(declare-datatypes ((ValueCell!11072 0))(
  ( (ValueCellFull!11072 (v!14166 V!35793)) (EmptyCell!11072) )
))
(declare-datatypes ((array!62171 0))(
  ( (array!62172 (arr!29939 (Array (_ BitVec 32) ValueCell!11072)) (size!30419 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62171)

(declare-fun mapDefault!36689 () ValueCell!11072)

