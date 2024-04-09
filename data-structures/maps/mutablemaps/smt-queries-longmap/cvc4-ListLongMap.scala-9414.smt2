; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112132 () Bool)

(assert start!112132)

(declare-fun b!1327620 () Bool)

(declare-fun e!756857 () Bool)

(declare-fun e!756858 () Bool)

(declare-fun mapRes!56275 () Bool)

(assert (=> b!1327620 (= e!756857 (and e!756858 mapRes!56275))))

(declare-fun condMapEmpty!56275 () Bool)

(declare-datatypes ((V!53637 0))(
  ( (V!53638 (val!18275 Int)) )
))
(declare-datatypes ((ValueCell!17302 0))(
  ( (ValueCellFull!17302 (v!20910 V!53637)) (EmptyCell!17302) )
))
(declare-datatypes ((array!89669 0))(
  ( (array!89670 (arr!43296 (Array (_ BitVec 32) ValueCell!17302)) (size!43847 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89669)

(declare-fun mapDefault!56275 () ValueCell!17302)

