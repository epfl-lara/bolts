; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112176 () Bool)

(assert start!112176)

(declare-fun b!1328018 () Bool)

(declare-fun e!757186 () Bool)

(declare-fun e!757187 () Bool)

(declare-fun mapRes!56341 () Bool)

(assert (=> b!1328018 (= e!757186 (and e!757187 mapRes!56341))))

(declare-fun condMapEmpty!56341 () Bool)

(declare-datatypes ((V!53697 0))(
  ( (V!53698 (val!18297 Int)) )
))
(declare-datatypes ((ValueCell!17324 0))(
  ( (ValueCellFull!17324 (v!20932 V!53697)) (EmptyCell!17324) )
))
(declare-datatypes ((array!89755 0))(
  ( (array!89756 (arr!43339 (Array (_ BitVec 32) ValueCell!17324)) (size!43890 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89755)

(declare-fun mapDefault!56341 () ValueCell!17324)

