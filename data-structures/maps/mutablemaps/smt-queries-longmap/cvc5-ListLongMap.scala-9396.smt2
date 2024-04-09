; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111906 () Bool)

(assert start!111906)

(declare-fun b_free!30469 () Bool)

(declare-fun b_next!30469 () Bool)

(assert (=> start!111906 (= b_free!30469 (not b_next!30469))))

(declare-fun tp!106887 () Bool)

(declare-fun b_and!49043 () Bool)

(assert (=> start!111906 (= tp!106887 b_and!49043)))

(declare-fun b!1325387 () Bool)

(declare-fun res!879726 () Bool)

(declare-fun e!755588 () Bool)

(assert (=> b!1325387 (=> (not res!879726) (not e!755588))))

(declare-datatypes ((array!89447 0))(
  ( (array!89448 (arr!43192 (Array (_ BitVec 32) (_ BitVec 64))) (size!43743 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89447)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1325387 (= res!879726 (validKeyInArray!0 (select (arr!43192 _keys!1609) from!2000)))))

(declare-fun b!1325388 () Bool)

(declare-fun res!879728 () Bool)

(assert (=> b!1325388 (=> (not res!879728) (not e!755588))))

(declare-datatypes ((List!30818 0))(
  ( (Nil!30815) (Cons!30814 (h!32023 (_ BitVec 64)) (t!44765 List!30818)) )
))
(declare-fun arrayNoDuplicates!0 (array!89447 (_ BitVec 32) List!30818) Bool)

(assert (=> b!1325388 (= res!879728 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30815))))

(declare-fun b!1325389 () Bool)

(declare-fun res!879727 () Bool)

(assert (=> b!1325389 (=> (not res!879727) (not e!755588))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89447 (_ BitVec 32)) Bool)

(assert (=> b!1325389 (= res!879727 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1325390 () Bool)

(declare-fun res!879732 () Bool)

(assert (=> b!1325390 (=> (not res!879732) (not e!755588))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1325390 (= res!879732 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43743 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!56085 () Bool)

(declare-fun mapRes!56085 () Bool)

(assert (=> mapIsEmpty!56085 mapRes!56085))

(declare-fun b!1325391 () Bool)

(assert (=> b!1325391 (= e!755588 (not true))))

(declare-datatypes ((V!53489 0))(
  ( (V!53490 (val!18219 Int)) )
))
(declare-datatypes ((tuple2!23650 0))(
  ( (tuple2!23651 (_1!11835 (_ BitVec 64)) (_2!11835 V!53489)) )
))
(declare-datatypes ((List!30819 0))(
  ( (Nil!30816) (Cons!30815 (h!32024 tuple2!23650) (t!44766 List!30819)) )
))
(declare-datatypes ((ListLongMap!21319 0))(
  ( (ListLongMap!21320 (toList!10675 List!30819)) )
))
(declare-fun lt!589723 () ListLongMap!21319)

(declare-fun contains!8768 (ListLongMap!21319 (_ BitVec 64)) Bool)

(assert (=> b!1325391 (contains!8768 lt!589723 k!1164)))

(declare-fun minValue!1279 () V!53489)

(declare-datatypes ((Unit!43588 0))(
  ( (Unit!43589) )
))
(declare-fun lt!589722 () Unit!43588)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!201 ((_ BitVec 64) (_ BitVec 64) V!53489 ListLongMap!21319) Unit!43588)

(assert (=> b!1325391 (= lt!589722 (lemmaInListMapAfterAddingDiffThenInBefore!201 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!589723))))

(declare-fun zeroValue!1279 () V!53489)

(declare-datatypes ((ValueCell!17246 0))(
  ( (ValueCellFull!17246 (v!20850 V!53489)) (EmptyCell!17246) )
))
(declare-datatypes ((array!89449 0))(
  ( (array!89450 (arr!43193 (Array (_ BitVec 32) ValueCell!17246)) (size!43744 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89449)

(declare-fun defaultEntry!1340 () Int)

(declare-fun +!4591 (ListLongMap!21319 tuple2!23650) ListLongMap!21319)

(declare-fun getCurrentListMapNoExtraKeys!6309 (array!89447 array!89449 (_ BitVec 32) (_ BitVec 32) V!53489 V!53489 (_ BitVec 32) Int) ListLongMap!21319)

(declare-fun get!21798 (ValueCell!17246 V!53489) V!53489)

(declare-fun dynLambda!3628 (Int (_ BitVec 64)) V!53489)

(assert (=> b!1325391 (= lt!589723 (+!4591 (+!4591 (getCurrentListMapNoExtraKeys!6309 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23651 (select (arr!43192 _keys!1609) from!2000) (get!21798 (select (arr!43193 _values!1337) from!2000) (dynLambda!3628 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23651 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun b!1325392 () Bool)

(declare-fun e!755586 () Bool)

(declare-fun tp_is_empty!36289 () Bool)

(assert (=> b!1325392 (= e!755586 tp_is_empty!36289)))

(declare-fun res!879729 () Bool)

(assert (=> start!111906 (=> (not res!879729) (not e!755588))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111906 (= res!879729 (validMask!0 mask!2019))))

(assert (=> start!111906 e!755588))

(declare-fun array_inv!32547 (array!89447) Bool)

(assert (=> start!111906 (array_inv!32547 _keys!1609)))

(assert (=> start!111906 true))

(assert (=> start!111906 tp_is_empty!36289))

(declare-fun e!755587 () Bool)

(declare-fun array_inv!32548 (array!89449) Bool)

(assert (=> start!111906 (and (array_inv!32548 _values!1337) e!755587)))

(assert (=> start!111906 tp!106887))

(declare-fun b!1325393 () Bool)

(declare-fun res!879725 () Bool)

(assert (=> b!1325393 (=> (not res!879725) (not e!755588))))

(declare-fun getCurrentListMap!5609 (array!89447 array!89449 (_ BitVec 32) (_ BitVec 32) V!53489 V!53489 (_ BitVec 32) Int) ListLongMap!21319)

(assert (=> b!1325393 (= res!879725 (contains!8768 (getCurrentListMap!5609 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1325394 () Bool)

(declare-fun res!879730 () Bool)

(assert (=> b!1325394 (=> (not res!879730) (not e!755588))))

(assert (=> b!1325394 (= res!879730 (not (= (select (arr!43192 _keys!1609) from!2000) k!1164)))))

(declare-fun mapNonEmpty!56085 () Bool)

(declare-fun tp!106888 () Bool)

(declare-fun e!755589 () Bool)

(assert (=> mapNonEmpty!56085 (= mapRes!56085 (and tp!106888 e!755589))))

(declare-fun mapValue!56085 () ValueCell!17246)

(declare-fun mapKey!56085 () (_ BitVec 32))

(declare-fun mapRest!56085 () (Array (_ BitVec 32) ValueCell!17246))

(assert (=> mapNonEmpty!56085 (= (arr!43193 _values!1337) (store mapRest!56085 mapKey!56085 mapValue!56085))))

(declare-fun b!1325395 () Bool)

(assert (=> b!1325395 (= e!755587 (and e!755586 mapRes!56085))))

(declare-fun condMapEmpty!56085 () Bool)

(declare-fun mapDefault!56085 () ValueCell!17246)

