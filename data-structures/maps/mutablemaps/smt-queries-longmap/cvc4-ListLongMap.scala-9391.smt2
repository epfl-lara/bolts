; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111822 () Bool)

(assert start!111822)

(declare-fun b_free!30443 () Bool)

(declare-fun b_next!30443 () Bool)

(assert (=> start!111822 (= b_free!30443 (not b_next!30443))))

(declare-fun tp!106806 () Bool)

(declare-fun b_and!48991 () Bool)

(assert (=> start!111822 (= tp!106806 b_and!48991)))

(declare-fun b!1324538 () Bool)

(declare-fun e!755135 () Bool)

(declare-fun tp_is_empty!36263 () Bool)

(assert (=> b!1324538 (= e!755135 tp_is_empty!36263)))

(declare-fun b!1324540 () Bool)

(declare-fun e!755137 () Bool)

(assert (=> b!1324540 (= e!755137 false)))

(declare-datatypes ((array!89395 0))(
  ( (array!89396 (arr!43167 (Array (_ BitVec 32) (_ BitVec 64))) (size!43718 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89395)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53453 0))(
  ( (V!53454 (val!18206 Int)) )
))
(declare-fun zeroValue!1279 () V!53453)

(declare-datatypes ((ValueCell!17233 0))(
  ( (ValueCellFull!17233 (v!20834 V!53453)) (EmptyCell!17233) )
))
(declare-datatypes ((array!89397 0))(
  ( (array!89398 (arr!43168 (Array (_ BitVec 32) ValueCell!17233)) (size!43719 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89397)

(declare-fun minValue!1279 () V!53453)

(declare-fun lt!589420 () Bool)

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(declare-datatypes ((tuple2!23628 0))(
  ( (tuple2!23629 (_1!11824 (_ BitVec 64)) (_2!11824 V!53453)) )
))
(declare-datatypes ((List!30799 0))(
  ( (Nil!30796) (Cons!30795 (h!32004 tuple2!23628) (t!44732 List!30799)) )
))
(declare-datatypes ((ListLongMap!21297 0))(
  ( (ListLongMap!21298 (toList!10664 List!30799)) )
))
(declare-fun contains!8755 (ListLongMap!21297 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5601 (array!89395 array!89397 (_ BitVec 32) (_ BitVec 32) V!53453 V!53453 (_ BitVec 32) Int) ListLongMap!21297)

(assert (=> b!1324540 (= lt!589420 (contains!8755 (getCurrentListMap!5601 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1324541 () Bool)

(declare-fun res!879247 () Bool)

(assert (=> b!1324541 (=> (not res!879247) (not e!755137))))

(declare-datatypes ((List!30800 0))(
  ( (Nil!30797) (Cons!30796 (h!32005 (_ BitVec 64)) (t!44733 List!30800)) )
))
(declare-fun arrayNoDuplicates!0 (array!89395 (_ BitVec 32) List!30800) Bool)

(assert (=> b!1324541 (= res!879247 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30797))))

(declare-fun mapIsEmpty!56042 () Bool)

(declare-fun mapRes!56042 () Bool)

(assert (=> mapIsEmpty!56042 mapRes!56042))

(declare-fun mapNonEmpty!56042 () Bool)

(declare-fun tp!106805 () Bool)

(assert (=> mapNonEmpty!56042 (= mapRes!56042 (and tp!106805 e!755135))))

(declare-fun mapValue!56042 () ValueCell!17233)

(declare-fun mapKey!56042 () (_ BitVec 32))

(declare-fun mapRest!56042 () (Array (_ BitVec 32) ValueCell!17233))

(assert (=> mapNonEmpty!56042 (= (arr!43168 _values!1337) (store mapRest!56042 mapKey!56042 mapValue!56042))))

(declare-fun b!1324542 () Bool)

(declare-fun e!755136 () Bool)

(assert (=> b!1324542 (= e!755136 tp_is_empty!36263)))

(declare-fun b!1324543 () Bool)

(declare-fun res!879246 () Bool)

(assert (=> b!1324543 (=> (not res!879246) (not e!755137))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89395 (_ BitVec 32)) Bool)

(assert (=> b!1324543 (= res!879246 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1324539 () Bool)

(declare-fun res!879249 () Bool)

(assert (=> b!1324539 (=> (not res!879249) (not e!755137))))

(assert (=> b!1324539 (= res!879249 (and (= (size!43719 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43718 _keys!1609) (size!43719 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun res!879248 () Bool)

(assert (=> start!111822 (=> (not res!879248) (not e!755137))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111822 (= res!879248 (validMask!0 mask!2019))))

(assert (=> start!111822 e!755137))

(declare-fun array_inv!32527 (array!89395) Bool)

(assert (=> start!111822 (array_inv!32527 _keys!1609)))

(assert (=> start!111822 true))

(assert (=> start!111822 tp_is_empty!36263))

(declare-fun e!755133 () Bool)

(declare-fun array_inv!32528 (array!89397) Bool)

(assert (=> start!111822 (and (array_inv!32528 _values!1337) e!755133)))

(assert (=> start!111822 tp!106806))

(declare-fun b!1324544 () Bool)

(declare-fun res!879250 () Bool)

(assert (=> b!1324544 (=> (not res!879250) (not e!755137))))

(assert (=> b!1324544 (= res!879250 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43718 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1324545 () Bool)

(assert (=> b!1324545 (= e!755133 (and e!755136 mapRes!56042))))

(declare-fun condMapEmpty!56042 () Bool)

(declare-fun mapDefault!56042 () ValueCell!17233)

