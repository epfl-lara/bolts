; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113426 () Bool)

(assert start!113426)

(declare-fun b_free!31441 () Bool)

(declare-fun b_next!31441 () Bool)

(assert (=> start!113426 (= b_free!31441 (not b_next!31441))))

(declare-fun tp!110128 () Bool)

(declare-fun b_and!50739 () Bool)

(assert (=> start!113426 (= tp!110128 b_and!50739)))

(declare-fun b!1345933 () Bool)

(declare-fun res!893192 () Bool)

(declare-fun e!765839 () Bool)

(assert (=> b!1345933 (=> (not res!893192) (not e!765839))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91679 0))(
  ( (array!91680 (arr!44291 (Array (_ BitVec 32) (_ BitVec 64))) (size!44842 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91679)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!55025 0))(
  ( (V!55026 (val!18795 Int)) )
))
(declare-datatypes ((ValueCell!17822 0))(
  ( (ValueCellFull!17822 (v!21441 V!55025)) (EmptyCell!17822) )
))
(declare-datatypes ((array!91681 0))(
  ( (array!91682 (arr!44292 (Array (_ BitVec 32) ValueCell!17822)) (size!44843 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91681)

(assert (=> b!1345933 (= res!893192 (and (= (size!44843 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44842 _keys!1571) (size!44843 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1345934 () Bool)

(declare-fun e!765838 () Bool)

(declare-fun e!765841 () Bool)

(declare-fun mapRes!57868 () Bool)

(assert (=> b!1345934 (= e!765838 (and e!765841 mapRes!57868))))

(declare-fun condMapEmpty!57868 () Bool)

(declare-fun mapDefault!57868 () ValueCell!17822)

