; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4478 () Bool)

(assert start!4478)

(declare-fun b_free!1241 () Bool)

(declare-fun b_next!1241 () Bool)

(assert (=> start!4478 (= b_free!1241 (not b_next!1241))))

(declare-fun tp!5160 () Bool)

(declare-fun b_and!2065 () Bool)

(assert (=> start!4478 (= tp!5160 b_and!2065)))

(declare-fun b!34860 () Bool)

(declare-fun res!21168 () Bool)

(declare-fun e!22060 () Bool)

(assert (=> b!34860 (=> (not res!21168) (not e!22060))))

(declare-datatypes ((array!2395 0))(
  ( (array!2396 (arr!1145 (Array (_ BitVec 32) (_ BitVec 64))) (size!1246 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2395)

(declare-datatypes ((List!929 0))(
  ( (Nil!926) (Cons!925 (h!1492 (_ BitVec 64)) (t!3636 List!929)) )
))
(declare-fun arrayNoDuplicates!0 (array!2395 (_ BitVec 32) List!929) Bool)

(assert (=> b!34860 (= res!21168 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!926))))

(declare-fun b!34861 () Bool)

(declare-fun res!21166 () Bool)

(assert (=> b!34861 (=> (not res!21166) (not e!22060))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2395 (_ BitVec 32)) Bool)

(assert (=> b!34861 (= res!21166 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!34862 () Bool)

(declare-fun e!22061 () Bool)

(declare-fun e!22062 () Bool)

(declare-fun mapRes!1939 () Bool)

(assert (=> b!34862 (= e!22061 (and e!22062 mapRes!1939))))

(declare-fun condMapEmpty!1939 () Bool)

(declare-datatypes ((V!1951 0))(
  ( (V!1952 (val!824 Int)) )
))
(declare-datatypes ((ValueCell!598 0))(
  ( (ValueCellFull!598 (v!1919 V!1951)) (EmptyCell!598) )
))
(declare-datatypes ((array!2397 0))(
  ( (array!2398 (arr!1146 (Array (_ BitVec 32) ValueCell!598)) (size!1247 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2397)

(declare-fun mapDefault!1939 () ValueCell!598)

