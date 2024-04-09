; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113420 () Bool)

(assert start!113420)

(declare-fun b_free!31435 () Bool)

(declare-fun b_next!31435 () Bool)

(assert (=> start!113420 (= b_free!31435 (not b_next!31435))))

(declare-fun tp!110110 () Bool)

(declare-fun b_and!50733 () Bool)

(assert (=> start!113420 (= tp!110110 b_and!50733)))

(declare-fun b!1345861 () Bool)

(declare-fun e!765797 () Bool)

(declare-fun tp_is_empty!37435 () Bool)

(assert (=> b!1345861 (= e!765797 tp_is_empty!37435)))

(declare-fun res!893147 () Bool)

(declare-fun e!765796 () Bool)

(assert (=> start!113420 (=> (not res!893147) (not e!765796))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113420 (= res!893147 (validMask!0 mask!1977))))

(assert (=> start!113420 e!765796))

(assert (=> start!113420 tp_is_empty!37435))

(assert (=> start!113420 true))

(declare-datatypes ((array!91667 0))(
  ( (array!91668 (arr!44285 (Array (_ BitVec 32) (_ BitVec 64))) (size!44836 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91667)

(declare-fun array_inv!33287 (array!91667) Bool)

(assert (=> start!113420 (array_inv!33287 _keys!1571)))

(declare-datatypes ((V!55017 0))(
  ( (V!55018 (val!18792 Int)) )
))
(declare-datatypes ((ValueCell!17819 0))(
  ( (ValueCellFull!17819 (v!21438 V!55017)) (EmptyCell!17819) )
))
(declare-datatypes ((array!91669 0))(
  ( (array!91670 (arr!44286 (Array (_ BitVec 32) ValueCell!17819)) (size!44837 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91669)

(declare-fun e!765794 () Bool)

(declare-fun array_inv!33288 (array!91669) Bool)

(assert (=> start!113420 (and (array_inv!33288 _values!1303) e!765794)))

(assert (=> start!113420 tp!110110))

(declare-fun b!1345862 () Bool)

(declare-fun res!893149 () Bool)

(assert (=> b!1345862 (=> (not res!893149) (not e!765796))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91667 (_ BitVec 32)) Bool)

(assert (=> b!1345862 (= res!893149 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1345863 () Bool)

(declare-fun mapRes!57859 () Bool)

(assert (=> b!1345863 (= e!765794 (and e!765797 mapRes!57859))))

(declare-fun condMapEmpty!57859 () Bool)

(declare-fun mapDefault!57859 () ValueCell!17819)

