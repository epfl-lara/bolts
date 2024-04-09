; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113424 () Bool)

(assert start!113424)

(declare-fun b_free!31439 () Bool)

(declare-fun b_next!31439 () Bool)

(assert (=> start!113424 (= b_free!31439 (not b_next!31439))))

(declare-fun tp!110122 () Bool)

(declare-fun b_and!50737 () Bool)

(assert (=> start!113424 (= tp!110122 b_and!50737)))

(declare-fun b!1345909 () Bool)

(declare-fun e!765824 () Bool)

(declare-fun tp_is_empty!37439 () Bool)

(assert (=> b!1345909 (= e!765824 tp_is_empty!37439)))

(declare-fun mapIsEmpty!57865 () Bool)

(declare-fun mapRes!57865 () Bool)

(assert (=> mapIsEmpty!57865 mapRes!57865))

(declare-fun b!1345910 () Bool)

(declare-fun e!765827 () Bool)

(assert (=> b!1345910 (= e!765827 tp_is_empty!37439)))

(declare-fun b!1345911 () Bool)

(declare-fun res!893179 () Bool)

(declare-fun e!765823 () Bool)

(assert (=> b!1345911 (=> (not res!893179) (not e!765823))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((array!91675 0))(
  ( (array!91676 (arr!44289 (Array (_ BitVec 32) (_ BitVec 64))) (size!44840 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91675)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1345911 (= res!893179 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44840 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1345912 () Bool)

(declare-fun res!893176 () Bool)

(assert (=> b!1345912 (=> (not res!893176) (not e!765823))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91675 (_ BitVec 32)) Bool)

(assert (=> b!1345912 (= res!893176 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1345913 () Bool)

(declare-fun res!893180 () Bool)

(assert (=> b!1345913 (=> (not res!893180) (not e!765823))))

(declare-datatypes ((List!31540 0))(
  ( (Nil!31537) (Cons!31536 (h!32745 (_ BitVec 64)) (t!46137 List!31540)) )
))
(declare-fun arrayNoDuplicates!0 (array!91675 (_ BitVec 32) List!31540) Bool)

(assert (=> b!1345913 (= res!893180 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31537))))

(declare-fun b!1345914 () Bool)

(declare-fun e!765825 () Bool)

(assert (=> b!1345914 (= e!765825 (and e!765827 mapRes!57865))))

(declare-fun condMapEmpty!57865 () Bool)

(declare-datatypes ((V!55021 0))(
  ( (V!55022 (val!18794 Int)) )
))
(declare-datatypes ((ValueCell!17821 0))(
  ( (ValueCellFull!17821 (v!21440 V!55021)) (EmptyCell!17821) )
))
(declare-datatypes ((array!91677 0))(
  ( (array!91678 (arr!44290 (Array (_ BitVec 32) ValueCell!17821)) (size!44841 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91677)

(declare-fun mapDefault!57865 () ValueCell!17821)

