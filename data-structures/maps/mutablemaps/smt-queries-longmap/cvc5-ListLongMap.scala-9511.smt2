; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112920 () Bool)

(assert start!112920)

(declare-fun mapNonEmpty!57160 () Bool)

(declare-fun mapRes!57160 () Bool)

(declare-fun tp!108860 () Bool)

(declare-fun e!762201 () Bool)

(assert (=> mapNonEmpty!57160 (= mapRes!57160 (and tp!108860 e!762201))))

(declare-fun mapKey!57160 () (_ BitVec 32))

(declare-datatypes ((V!54409 0))(
  ( (V!54410 (val!18564 Int)) )
))
(declare-datatypes ((ValueCell!17591 0))(
  ( (ValueCellFull!17591 (v!21209 V!54409)) (EmptyCell!17591) )
))
(declare-fun mapRest!57160 () (Array (_ BitVec 32) ValueCell!17591))

(declare-datatypes ((array!90795 0))(
  ( (array!90796 (arr!43854 (Array (_ BitVec 32) ValueCell!17591)) (size!44405 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90795)

(declare-fun mapValue!57160 () ValueCell!17591)

(assert (=> mapNonEmpty!57160 (= (arr!43854 _values!1303) (store mapRest!57160 mapKey!57160 mapValue!57160))))

(declare-fun mapIsEmpty!57160 () Bool)

(assert (=> mapIsEmpty!57160 mapRes!57160))

(declare-fun b!1338512 () Bool)

(declare-fun e!762200 () Bool)

(declare-fun tp_is_empty!36979 () Bool)

(assert (=> b!1338512 (= e!762200 tp_is_empty!36979)))

(declare-fun res!888171 () Bool)

(declare-fun e!762197 () Bool)

(assert (=> start!112920 (=> (not res!888171) (not e!762197))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112920 (= res!888171 (validMask!0 mask!1977))))

(assert (=> start!112920 e!762197))

(assert (=> start!112920 true))

(declare-fun e!762199 () Bool)

(declare-fun array_inv!32997 (array!90795) Bool)

(assert (=> start!112920 (and (array_inv!32997 _values!1303) e!762199)))

(declare-datatypes ((array!90797 0))(
  ( (array!90798 (arr!43855 (Array (_ BitVec 32) (_ BitVec 64))) (size!44406 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90797)

(declare-fun array_inv!32998 (array!90797) Bool)

(assert (=> start!112920 (array_inv!32998 _keys!1571)))

(declare-fun b!1338513 () Bool)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1338513 (= e!762197 (and (= (size!44405 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44406 _keys!1571) (size!44405 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011) (not (= (size!44406 _keys!1571) (bvadd #b00000000000000000000000000000001 mask!1977)))))))

(declare-fun b!1338514 () Bool)

(assert (=> b!1338514 (= e!762201 tp_is_empty!36979)))

(declare-fun b!1338515 () Bool)

(assert (=> b!1338515 (= e!762199 (and e!762200 mapRes!57160))))

(declare-fun condMapEmpty!57160 () Bool)

(declare-fun mapDefault!57160 () ValueCell!17591)

