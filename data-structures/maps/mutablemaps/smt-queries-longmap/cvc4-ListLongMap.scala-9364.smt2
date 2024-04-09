; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111660 () Bool)

(assert start!111660)

(declare-fun b_free!30281 () Bool)

(declare-fun b_next!30281 () Bool)

(assert (=> start!111660 (= b_free!30281 (not b_next!30281))))

(declare-fun tp!106319 () Bool)

(declare-fun b_and!48731 () Bool)

(assert (=> start!111660 (= tp!106319 b_and!48731)))

(declare-fun b!1322034 () Bool)

(declare-fun e!753921 () Bool)

(declare-fun e!753918 () Bool)

(declare-fun mapRes!55799 () Bool)

(assert (=> b!1322034 (= e!753921 (and e!753918 mapRes!55799))))

(declare-fun condMapEmpty!55799 () Bool)

(declare-datatypes ((V!53237 0))(
  ( (V!53238 (val!18125 Int)) )
))
(declare-datatypes ((ValueCell!17152 0))(
  ( (ValueCellFull!17152 (v!20753 V!53237)) (EmptyCell!17152) )
))
(declare-datatypes ((array!89085 0))(
  ( (array!89086 (arr!43012 (Array (_ BitVec 32) ValueCell!17152)) (size!43563 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89085)

(declare-fun mapDefault!55799 () ValueCell!17152)

