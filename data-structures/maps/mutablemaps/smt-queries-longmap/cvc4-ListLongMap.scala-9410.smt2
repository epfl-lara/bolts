; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112070 () Bool)

(assert start!112070)

(declare-fun b!1327268 () Bool)

(declare-fun e!756590 () Bool)

(declare-fun e!756588 () Bool)

(declare-fun mapRes!56227 () Bool)

(assert (=> b!1327268 (= e!756590 (and e!756588 mapRes!56227))))

(declare-fun condMapEmpty!56227 () Bool)

(declare-datatypes ((V!53605 0))(
  ( (V!53606 (val!18263 Int)) )
))
(declare-datatypes ((ValueCell!17290 0))(
  ( (ValueCellFull!17290 (v!20897 V!53605)) (EmptyCell!17290) )
))
(declare-datatypes ((array!89623 0))(
  ( (array!89624 (arr!43277 (Array (_ BitVec 32) ValueCell!17290)) (size!43828 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89623)

(declare-fun mapDefault!56227 () ValueCell!17290)

