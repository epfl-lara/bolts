; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111650 () Bool)

(assert start!111650)

(declare-fun b_free!30271 () Bool)

(declare-fun b_next!30271 () Bool)

(assert (=> start!111650 (= b_free!30271 (not b_next!30271))))

(declare-fun tp!106290 () Bool)

(declare-fun b_and!48711 () Bool)

(assert (=> start!111650 (= tp!106290 b_and!48711)))

(declare-fun b!1321859 () Bool)

(declare-fun res!877454 () Bool)

(declare-fun e!753844 () Bool)

(assert (=> b!1321859 (=> (not res!877454) (not e!753844))))

(declare-datatypes ((array!89065 0))(
  ( (array!89066 (arr!43002 (Array (_ BitVec 32) (_ BitVec 64))) (size!43553 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89065)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53225 0))(
  ( (V!53226 (val!18120 Int)) )
))
(declare-fun zeroValue!1279 () V!53225)

(declare-datatypes ((ValueCell!17147 0))(
  ( (ValueCellFull!17147 (v!20748 V!53225)) (EmptyCell!17147) )
))
(declare-datatypes ((array!89067 0))(
  ( (array!89068 (arr!43003 (Array (_ BitVec 32) ValueCell!17147)) (size!43554 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89067)

(declare-fun minValue!1279 () V!53225)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23502 0))(
  ( (tuple2!23503 (_1!11761 (_ BitVec 64)) (_2!11761 V!53225)) )
))
(declare-datatypes ((List!30679 0))(
  ( (Nil!30676) (Cons!30675 (h!31884 tuple2!23502) (t!44506 List!30679)) )
))
(declare-datatypes ((ListLongMap!21171 0))(
  ( (ListLongMap!21172 (toList!10601 List!30679)) )
))
(declare-fun contains!8692 (ListLongMap!21171 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5541 (array!89065 array!89067 (_ BitVec 32) (_ BitVec 32) V!53225 V!53225 (_ BitVec 32) Int) ListLongMap!21171)

(assert (=> b!1321859 (= res!877454 (contains!8692 (getCurrentListMap!5541 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1321860 () Bool)

(declare-fun e!753843 () Bool)

(declare-fun tp_is_empty!36091 () Bool)

(assert (=> b!1321860 (= e!753843 tp_is_empty!36091)))

(declare-fun b!1321862 () Bool)

(declare-fun res!877452 () Bool)

(assert (=> b!1321862 (=> (not res!877452) (not e!753844))))

(assert (=> b!1321862 (= res!877452 (and (= (size!43554 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43553 _keys!1609) (size!43554 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!55784 () Bool)

(declare-fun mapRes!55784 () Bool)

(assert (=> mapIsEmpty!55784 mapRes!55784))

(declare-fun mapNonEmpty!55784 () Bool)

(declare-fun tp!106289 () Bool)

(declare-fun e!753847 () Bool)

(assert (=> mapNonEmpty!55784 (= mapRes!55784 (and tp!106289 e!753847))))

(declare-fun mapRest!55784 () (Array (_ BitVec 32) ValueCell!17147))

(declare-fun mapKey!55784 () (_ BitVec 32))

(declare-fun mapValue!55784 () ValueCell!17147)

(assert (=> mapNonEmpty!55784 (= (arr!43003 _values!1337) (store mapRest!55784 mapKey!55784 mapValue!55784))))

(declare-fun b!1321863 () Bool)

(assert (=> b!1321863 (= e!753844 (not true))))

(declare-fun lt!587732 () ListLongMap!21171)

(declare-fun lt!587737 () tuple2!23502)

(declare-fun +!4554 (ListLongMap!21171 tuple2!23502) ListLongMap!21171)

(assert (=> b!1321863 (contains!8692 (+!4554 lt!587732 lt!587737) k!1164)))

(declare-datatypes ((Unit!43508 0))(
  ( (Unit!43509) )
))
(declare-fun lt!587733 () Unit!43508)

(declare-fun addStillContains!1135 (ListLongMap!21171 (_ BitVec 64) V!53225 (_ BitVec 64)) Unit!43508)

(assert (=> b!1321863 (= lt!587733 (addStillContains!1135 lt!587732 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k!1164))))

(assert (=> b!1321863 (contains!8692 lt!587732 k!1164)))

(declare-fun lt!587734 () Unit!43508)

(declare-fun lt!587730 () V!53225)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!169 ((_ BitVec 64) (_ BitVec 64) V!53225 ListLongMap!21171) Unit!43508)

(assert (=> b!1321863 (= lt!587734 (lemmaInListMapAfterAddingDiffThenInBefore!169 k!1164 (select (arr!43002 _keys!1609) from!2000) lt!587730 lt!587732))))

(declare-fun lt!587729 () ListLongMap!21171)

(assert (=> b!1321863 (contains!8692 lt!587729 k!1164)))

(declare-fun lt!587736 () Unit!43508)

(assert (=> b!1321863 (= lt!587736 (lemmaInListMapAfterAddingDiffThenInBefore!169 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!587729))))

(declare-fun lt!587735 () ListLongMap!21171)

(assert (=> b!1321863 (contains!8692 lt!587735 k!1164)))

(declare-fun lt!587731 () Unit!43508)

(assert (=> b!1321863 (= lt!587731 (lemmaInListMapAfterAddingDiffThenInBefore!169 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!587735))))

(assert (=> b!1321863 (= lt!587735 (+!4554 lt!587729 lt!587737))))

(assert (=> b!1321863 (= lt!587737 (tuple2!23503 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1321863 (= lt!587729 (+!4554 lt!587732 (tuple2!23503 (select (arr!43002 _keys!1609) from!2000) lt!587730)))))

(declare-fun get!21692 (ValueCell!17147 V!53225) V!53225)

(declare-fun dynLambda!3591 (Int (_ BitVec 64)) V!53225)

(assert (=> b!1321863 (= lt!587730 (get!21692 (select (arr!43003 _values!1337) from!2000) (dynLambda!3591 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6269 (array!89065 array!89067 (_ BitVec 32) (_ BitVec 32) V!53225 V!53225 (_ BitVec 32) Int) ListLongMap!21171)

(assert (=> b!1321863 (= lt!587732 (getCurrentListMapNoExtraKeys!6269 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1321864 () Bool)

(declare-fun res!877451 () Bool)

(assert (=> b!1321864 (=> (not res!877451) (not e!753844))))

(assert (=> b!1321864 (= res!877451 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43553 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1321865 () Bool)

(declare-fun res!877449 () Bool)

(assert (=> b!1321865 (=> (not res!877449) (not e!753844))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89065 (_ BitVec 32)) Bool)

(assert (=> b!1321865 (= res!877449 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1321866 () Bool)

(declare-fun res!877453 () Bool)

(assert (=> b!1321866 (=> (not res!877453) (not e!753844))))

(declare-datatypes ((List!30680 0))(
  ( (Nil!30677) (Cons!30676 (h!31885 (_ BitVec 64)) (t!44507 List!30680)) )
))
(declare-fun arrayNoDuplicates!0 (array!89065 (_ BitVec 32) List!30680) Bool)

(assert (=> b!1321866 (= res!877453 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30677))))

(declare-fun b!1321867 () Bool)

(declare-fun res!877450 () Bool)

(assert (=> b!1321867 (=> (not res!877450) (not e!753844))))

(assert (=> b!1321867 (= res!877450 (not (= (select (arr!43002 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1321868 () Bool)

(declare-fun e!753846 () Bool)

(assert (=> b!1321868 (= e!753846 (and e!753843 mapRes!55784))))

(declare-fun condMapEmpty!55784 () Bool)

(declare-fun mapDefault!55784 () ValueCell!17147)

