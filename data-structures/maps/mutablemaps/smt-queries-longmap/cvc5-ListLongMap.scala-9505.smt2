; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112758 () Bool)

(assert start!112758)

(declare-fun b_free!31033 () Bool)

(declare-fun b_next!31033 () Bool)

(assert (=> start!112758 (= b_free!31033 (not b_next!31033))))

(declare-fun tp!108743 () Bool)

(declare-fun b_and!50021 () Bool)

(assert (=> start!112758 (= tp!108743 b_and!50021)))

(declare-fun b!1337019 () Bool)

(declare-fun e!761368 () Bool)

(declare-fun tp_is_empty!36943 () Bool)

(assert (=> b!1337019 (= e!761368 tp_is_empty!36943)))

(declare-fun b!1337020 () Bool)

(declare-fun res!887353 () Bool)

(declare-fun e!761367 () Bool)

(assert (=> b!1337020 (=> (not res!887353) (not e!761367))))

(declare-datatypes ((array!90719 0))(
  ( (array!90720 (arr!43819 (Array (_ BitVec 32) (_ BitVec 64))) (size!44370 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90719)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90719 (_ BitVec 32)) Bool)

(assert (=> b!1337020 (= res!887353 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1337021 () Bool)

(declare-fun res!887350 () Bool)

(assert (=> b!1337021 (=> (not res!887350) (not e!761367))))

(declare-datatypes ((List!31238 0))(
  ( (Nil!31235) (Cons!31234 (h!32443 (_ BitVec 64)) (t!45557 List!31238)) )
))
(declare-fun arrayNoDuplicates!0 (array!90719 (_ BitVec 32) List!31238) Bool)

(assert (=> b!1337021 (= res!887350 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31235))))

(declare-fun mapNonEmpty!57095 () Bool)

(declare-fun mapRes!57095 () Bool)

(declare-fun tp!108744 () Bool)

(assert (=> mapNonEmpty!57095 (= mapRes!57095 (and tp!108744 e!761368))))

(declare-datatypes ((V!54361 0))(
  ( (V!54362 (val!18546 Int)) )
))
(declare-datatypes ((ValueCell!17573 0))(
  ( (ValueCellFull!17573 (v!21185 V!54361)) (EmptyCell!17573) )
))
(declare-datatypes ((array!90721 0))(
  ( (array!90722 (arr!43820 (Array (_ BitVec 32) ValueCell!17573)) (size!44371 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90721)

(declare-fun mapValue!57095 () ValueCell!17573)

(declare-fun mapRest!57095 () (Array (_ BitVec 32) ValueCell!17573))

(declare-fun mapKey!57095 () (_ BitVec 32))

(assert (=> mapNonEmpty!57095 (= (arr!43820 _values!1320) (store mapRest!57095 mapKey!57095 mapValue!57095))))

(declare-fun res!887352 () Bool)

(assert (=> start!112758 (=> (not res!887352) (not e!761367))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112758 (= res!887352 (validMask!0 mask!1998))))

(assert (=> start!112758 e!761367))

(declare-fun e!761366 () Bool)

(declare-fun array_inv!32973 (array!90721) Bool)

(assert (=> start!112758 (and (array_inv!32973 _values!1320) e!761366)))

(assert (=> start!112758 true))

(declare-fun array_inv!32974 (array!90719) Bool)

(assert (=> start!112758 (array_inv!32974 _keys!1590)))

(assert (=> start!112758 tp!108743))

(assert (=> start!112758 tp_is_empty!36943))

(declare-fun b!1337022 () Bool)

(declare-fun e!761369 () Bool)

(assert (=> b!1337022 (= e!761366 (and e!761369 mapRes!57095))))

(declare-fun condMapEmpty!57095 () Bool)

(declare-fun mapDefault!57095 () ValueCell!17573)

