; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113412 () Bool)

(assert start!113412)

(declare-fun b_free!31427 () Bool)

(declare-fun b_next!31427 () Bool)

(assert (=> start!113412 (= b_free!31427 (not b_next!31427))))

(declare-fun tp!110086 () Bool)

(declare-fun b_and!50717 () Bool)

(assert (=> start!113412 (= tp!110086 b_and!50717)))

(declare-fun b!1345697 () Bool)

(declare-fun res!893028 () Bool)

(declare-fun e!765728 () Bool)

(assert (=> b!1345697 (=> (not res!893028) (not e!765728))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1345697 (= res!893028 (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1345698 () Bool)

(declare-fun res!893035 () Bool)

(declare-fun e!765725 () Bool)

(assert (=> b!1345698 (=> (not res!893035) (not e!765725))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((array!91651 0))(
  ( (array!91652 (arr!44277 (Array (_ BitVec 32) (_ BitVec 64))) (size!44828 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91651)

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1345698 (= res!893035 (not (= k!1142 (select (arr!44277 _keys!1571) from!1960))))))

(declare-fun b!1345699 () Bool)

(declare-fun e!765727 () Bool)

(declare-fun e!765724 () Bool)

(declare-fun mapRes!57847 () Bool)

(assert (=> b!1345699 (= e!765727 (and e!765724 mapRes!57847))))

(declare-fun condMapEmpty!57847 () Bool)

(declare-datatypes ((V!55005 0))(
  ( (V!55006 (val!18788 Int)) )
))
(declare-datatypes ((ValueCell!17815 0))(
  ( (ValueCellFull!17815 (v!21434 V!55005)) (EmptyCell!17815) )
))
(declare-datatypes ((array!91653 0))(
  ( (array!91654 (arr!44278 (Array (_ BitVec 32) ValueCell!17815)) (size!44829 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91653)

(declare-fun mapDefault!57847 () ValueCell!17815)

