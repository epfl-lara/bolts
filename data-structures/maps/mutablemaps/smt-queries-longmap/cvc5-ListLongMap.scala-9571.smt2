; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113324 () Bool)

(assert start!113324)

(declare-fun b_free!31339 () Bool)

(declare-fun b_next!31339 () Bool)

(assert (=> start!113324 (= b_free!31339 (not b_next!31339))))

(declare-fun tp!109822 () Bool)

(declare-fun b_and!50571 () Bool)

(assert (=> start!113324 (= tp!109822 b_and!50571)))

(declare-fun b!1344058 () Bool)

(declare-fun e!764992 () Bool)

(declare-fun tp_is_empty!37339 () Bool)

(assert (=> b!1344058 (= e!764992 tp_is_empty!37339)))

(declare-fun b!1344059 () Bool)

(declare-fun res!891841 () Bool)

(declare-fun e!764995 () Bool)

(assert (=> b!1344059 (=> (not res!891841) (not e!764995))))

(declare-datatypes ((array!91477 0))(
  ( (array!91478 (arr!44190 (Array (_ BitVec 32) (_ BitVec 64))) (size!44741 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91477)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91477 (_ BitVec 32)) Bool)

(assert (=> b!1344059 (= res!891841 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1344060 () Bool)

(declare-fun res!891845 () Bool)

(assert (=> b!1344060 (=> (not res!891845) (not e!764995))))

(declare-datatypes ((List!31476 0))(
  ( (Nil!31473) (Cons!31472 (h!32681 (_ BitVec 64)) (t!46007 List!31476)) )
))
(declare-fun arrayNoDuplicates!0 (array!91477 (_ BitVec 32) List!31476) Bool)

(assert (=> b!1344060 (= res!891845 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31473))))

(declare-fun mapNonEmpty!57715 () Bool)

(declare-fun mapRes!57715 () Bool)

(declare-fun tp!109823 () Bool)

(declare-fun e!764993 () Bool)

(assert (=> mapNonEmpty!57715 (= mapRes!57715 (and tp!109823 e!764993))))

(declare-fun mapKey!57715 () (_ BitVec 32))

(declare-datatypes ((V!54889 0))(
  ( (V!54890 (val!18744 Int)) )
))
(declare-datatypes ((ValueCell!17771 0))(
  ( (ValueCellFull!17771 (v!21390 V!54889)) (EmptyCell!17771) )
))
(declare-fun mapRest!57715 () (Array (_ BitVec 32) ValueCell!17771))

(declare-datatypes ((array!91479 0))(
  ( (array!91480 (arr!44191 (Array (_ BitVec 32) ValueCell!17771)) (size!44742 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91479)

(declare-fun mapValue!57715 () ValueCell!17771)

(assert (=> mapNonEmpty!57715 (= (arr!44191 _values!1303) (store mapRest!57715 mapKey!57715 mapValue!57715))))

(declare-fun b!1344061 () Bool)

(declare-fun e!764996 () Bool)

(assert (=> b!1344061 (= e!764996 (and e!764992 mapRes!57715))))

(declare-fun condMapEmpty!57715 () Bool)

(declare-fun mapDefault!57715 () ValueCell!17771)

