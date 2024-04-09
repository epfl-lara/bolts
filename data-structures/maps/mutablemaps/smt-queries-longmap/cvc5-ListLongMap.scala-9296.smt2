; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111160 () Bool)

(assert start!111160)

(declare-fun b_free!29959 () Bool)

(declare-fun b_next!29959 () Bool)

(assert (=> start!111160 (= b_free!29959 (not b_next!29959))))

(declare-fun tp!105200 () Bool)

(declare-fun b_and!48177 () Bool)

(assert (=> start!111160 (= tp!105200 b_and!48177)))

(declare-fun b!1315617 () Bool)

(declare-fun e!750528 () Bool)

(declare-fun e!750530 () Bool)

(declare-fun mapRes!55162 () Bool)

(assert (=> b!1315617 (= e!750528 (and e!750530 mapRes!55162))))

(declare-fun condMapEmpty!55162 () Bool)

(declare-datatypes ((V!52689 0))(
  ( (V!52690 (val!17919 Int)) )
))
(declare-datatypes ((ValueCell!16946 0))(
  ( (ValueCellFull!16946 (v!20544 V!52689)) (EmptyCell!16946) )
))
(declare-datatypes ((array!88301 0))(
  ( (array!88302 (arr!42626 (Array (_ BitVec 32) ValueCell!16946)) (size!43177 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88301)

(declare-fun mapDefault!55162 () ValueCell!16946)

