; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3896 () Bool)

(assert start!3896)

(declare-fun b_free!803 () Bool)

(declare-fun b_next!803 () Bool)

(assert (=> start!3896 (= b_free!803 (not b_next!803))))

(declare-fun tp!3829 () Bool)

(declare-fun b_and!1615 () Bool)

(assert (=> start!3896 (= tp!3829 b_and!1615)))

(declare-fun b!27457 () Bool)

(declare-fun e!17890 () Bool)

(declare-fun tp_is_empty!1157 () Bool)

(assert (=> b!27457 (= e!17890 tp_is_empty!1157)))

(declare-fun b!27458 () Bool)

(declare-fun res!16235 () Bool)

(declare-fun e!17888 () Bool)

(assert (=> b!27458 (=> (not res!16235) (not e!17888))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!27458 (= res!16235 (validKeyInArray!0 k!1304))))

(declare-fun b!27459 () Bool)

(declare-fun e!17887 () Bool)

(declare-fun mapRes!1264 () Bool)

(assert (=> b!27459 (= e!17887 (and e!17890 mapRes!1264))))

(declare-fun condMapEmpty!1264 () Bool)

(declare-datatypes ((V!1367 0))(
  ( (V!1368 (val!605 Int)) )
))
(declare-datatypes ((ValueCell!379 0))(
  ( (ValueCellFull!379 (v!1694 V!1367)) (EmptyCell!379) )
))
(declare-datatypes ((array!1547 0))(
  ( (array!1548 (arr!727 (Array (_ BitVec 32) ValueCell!379)) (size!828 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1547)

(declare-fun mapDefault!1264 () ValueCell!379)

