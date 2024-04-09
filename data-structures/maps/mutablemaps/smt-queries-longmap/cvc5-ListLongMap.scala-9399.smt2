; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111924 () Bool)

(assert start!111924)

(declare-fun b_free!30487 () Bool)

(declare-fun b_next!30487 () Bool)

(assert (=> start!111924 (= b_free!30487 (not b_next!30487))))

(declare-fun tp!106941 () Bool)

(declare-fun b_and!49079 () Bool)

(assert (=> start!111924 (= tp!106941 b_and!49079)))

(declare-fun b!1325702 () Bool)

(declare-fun e!755725 () Bool)

(assert (=> b!1325702 (= e!755725 (not true))))

(declare-datatypes ((V!53513 0))(
  ( (V!53514 (val!18228 Int)) )
))
(declare-datatypes ((tuple2!23664 0))(
  ( (tuple2!23665 (_1!11842 (_ BitVec 64)) (_2!11842 V!53513)) )
))
(declare-datatypes ((List!30832 0))(
  ( (Nil!30829) (Cons!30828 (h!32037 tuple2!23664) (t!44797 List!30832)) )
))
(declare-datatypes ((ListLongMap!21333 0))(
  ( (ListLongMap!21334 (toList!10682 List!30832)) )
))
(declare-fun lt!589777 () ListLongMap!21333)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun contains!8775 (ListLongMap!21333 (_ BitVec 64)) Bool)

(assert (=> b!1325702 (contains!8775 lt!589777 k!1164)))

(declare-fun minValue!1279 () V!53513)

(declare-datatypes ((Unit!43600 0))(
  ( (Unit!43601) )
))
(declare-fun lt!589776 () Unit!43600)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!207 ((_ BitVec 64) (_ BitVec 64) V!53513 ListLongMap!21333) Unit!43600)

(assert (=> b!1325702 (= lt!589776 (lemmaInListMapAfterAddingDiffThenInBefore!207 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!589777))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!53513)

(declare-datatypes ((ValueCell!17255 0))(
  ( (ValueCellFull!17255 (v!20859 V!53513)) (EmptyCell!17255) )
))
(declare-datatypes ((array!89483 0))(
  ( (array!89484 (arr!43210 (Array (_ BitVec 32) ValueCell!17255)) (size!43761 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89483)

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((array!89485 0))(
  ( (array!89486 (arr!43211 (Array (_ BitVec 32) (_ BitVec 64))) (size!43762 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89485)

(declare-fun +!4597 (ListLongMap!21333 tuple2!23664) ListLongMap!21333)

(declare-fun getCurrentListMapNoExtraKeys!6315 (array!89485 array!89483 (_ BitVec 32) (_ BitVec 32) V!53513 V!53513 (_ BitVec 32) Int) ListLongMap!21333)

(declare-fun get!21810 (ValueCell!17255 V!53513) V!53513)

(declare-fun dynLambda!3634 (Int (_ BitVec 64)) V!53513)

(assert (=> b!1325702 (= lt!589777 (+!4597 (+!4597 (getCurrentListMapNoExtraKeys!6315 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23665 (select (arr!43211 _keys!1609) from!2000) (get!21810 (select (arr!43210 _values!1337) from!2000) (dynLambda!3634 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23665 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun mapNonEmpty!56112 () Bool)

(declare-fun mapRes!56112 () Bool)

(declare-fun tp!106942 () Bool)

(declare-fun e!755724 () Bool)

(assert (=> mapNonEmpty!56112 (= mapRes!56112 (and tp!106942 e!755724))))

(declare-fun mapRest!56112 () (Array (_ BitVec 32) ValueCell!17255))

(declare-fun mapKey!56112 () (_ BitVec 32))

(declare-fun mapValue!56112 () ValueCell!17255)

(assert (=> mapNonEmpty!56112 (= (arr!43210 _values!1337) (store mapRest!56112 mapKey!56112 mapValue!56112))))

(declare-fun b!1325703 () Bool)

(declare-fun res!879943 () Bool)

(assert (=> b!1325703 (=> (not res!879943) (not e!755725))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89485 (_ BitVec 32)) Bool)

(assert (=> b!1325703 (= res!879943 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1325704 () Bool)

(declare-fun res!879947 () Bool)

(assert (=> b!1325704 (=> (not res!879947) (not e!755725))))

(declare-fun getCurrentListMap!5616 (array!89485 array!89483 (_ BitVec 32) (_ BitVec 32) V!53513 V!53513 (_ BitVec 32) Int) ListLongMap!21333)

(assert (=> b!1325704 (= res!879947 (contains!8775 (getCurrentListMap!5616 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun res!879948 () Bool)

(assert (=> start!111924 (=> (not res!879948) (not e!755725))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111924 (= res!879948 (validMask!0 mask!2019))))

(assert (=> start!111924 e!755725))

(declare-fun array_inv!32559 (array!89485) Bool)

(assert (=> start!111924 (array_inv!32559 _keys!1609)))

(assert (=> start!111924 true))

(declare-fun tp_is_empty!36307 () Bool)

(assert (=> start!111924 tp_is_empty!36307))

(declare-fun e!755721 () Bool)

(declare-fun array_inv!32560 (array!89483) Bool)

(assert (=> start!111924 (and (array_inv!32560 _values!1337) e!755721)))

(assert (=> start!111924 tp!106941))

(declare-fun b!1325705 () Bool)

(declare-fun res!879944 () Bool)

(assert (=> b!1325705 (=> (not res!879944) (not e!755725))))

(declare-datatypes ((List!30833 0))(
  ( (Nil!30830) (Cons!30829 (h!32038 (_ BitVec 64)) (t!44798 List!30833)) )
))
(declare-fun arrayNoDuplicates!0 (array!89485 (_ BitVec 32) List!30833) Bool)

(assert (=> b!1325705 (= res!879944 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30830))))

(declare-fun b!1325706 () Bool)

(declare-fun res!879946 () Bool)

(assert (=> b!1325706 (=> (not res!879946) (not e!755725))))

(assert (=> b!1325706 (= res!879946 (and (= (size!43761 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43762 _keys!1609) (size!43761 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1325707 () Bool)

(declare-fun e!755722 () Bool)

(assert (=> b!1325707 (= e!755721 (and e!755722 mapRes!56112))))

(declare-fun condMapEmpty!56112 () Bool)

(declare-fun mapDefault!56112 () ValueCell!17255)

