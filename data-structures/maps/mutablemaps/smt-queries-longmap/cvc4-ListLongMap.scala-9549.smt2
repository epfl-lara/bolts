; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113196 () Bool)

(assert start!113196)

(declare-fun b_free!31211 () Bool)

(declare-fun b_next!31211 () Bool)

(assert (=> start!113196 (= b_free!31211 (not b_next!31211))))

(declare-fun tp!109439 () Bool)

(declare-fun b_and!50339 () Bool)

(assert (=> start!113196 (= tp!109439 b_and!50339)))

(declare-fun b!1341802 () Bool)

(declare-fun res!890268 () Bool)

(declare-fun e!764033 () Bool)

(assert (=> b!1341802 (=> (not res!890268) (not e!764033))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1341802 (= res!890268 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!57523 () Bool)

(declare-fun mapRes!57523 () Bool)

(assert (=> mapIsEmpty!57523 mapRes!57523))

(declare-fun b!1341803 () Bool)

(declare-fun res!890273 () Bool)

(assert (=> b!1341803 (=> (not res!890273) (not e!764033))))

(declare-datatypes ((array!91231 0))(
  ( (array!91232 (arr!44067 (Array (_ BitVec 32) (_ BitVec 64))) (size!44618 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91231)

(declare-datatypes ((List!31384 0))(
  ( (Nil!31381) (Cons!31380 (h!32589 (_ BitVec 64)) (t!45813 List!31384)) )
))
(declare-fun arrayNoDuplicates!0 (array!91231 (_ BitVec 32) List!31384) Bool)

(assert (=> b!1341803 (= res!890273 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31381))))

(declare-fun b!1341804 () Bool)

(declare-fun e!764032 () Bool)

(declare-fun tp_is_empty!37211 () Bool)

(assert (=> b!1341804 (= e!764032 tp_is_empty!37211)))

(declare-fun b!1341805 () Bool)

(declare-fun res!890269 () Bool)

(assert (=> b!1341805 (=> (not res!890269) (not e!764033))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1341805 (= res!890269 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44618 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1341806 () Bool)

(declare-fun res!890272 () Bool)

(assert (=> b!1341806 (=> (not res!890272) (not e!764033))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91231 (_ BitVec 32)) Bool)

(assert (=> b!1341806 (= res!890272 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun res!890265 () Bool)

(assert (=> start!113196 (=> (not res!890265) (not e!764033))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113196 (= res!890265 (validMask!0 mask!1977))))

(assert (=> start!113196 e!764033))

(assert (=> start!113196 tp_is_empty!37211))

(assert (=> start!113196 true))

(declare-fun array_inv!33137 (array!91231) Bool)

(assert (=> start!113196 (array_inv!33137 _keys!1571)))

(declare-datatypes ((V!54717 0))(
  ( (V!54718 (val!18680 Int)) )
))
(declare-datatypes ((ValueCell!17707 0))(
  ( (ValueCellFull!17707 (v!21326 V!54717)) (EmptyCell!17707) )
))
(declare-datatypes ((array!91233 0))(
  ( (array!91234 (arr!44068 (Array (_ BitVec 32) ValueCell!17707)) (size!44619 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91233)

(declare-fun e!764036 () Bool)

(declare-fun array_inv!33138 (array!91233) Bool)

(assert (=> start!113196 (and (array_inv!33138 _values!1303) e!764036)))

(assert (=> start!113196 tp!109439))

(declare-fun mapNonEmpty!57523 () Bool)

(declare-fun tp!109438 () Bool)

(declare-fun e!764035 () Bool)

(assert (=> mapNonEmpty!57523 (= mapRes!57523 (and tp!109438 e!764035))))

(declare-fun mapKey!57523 () (_ BitVec 32))

(declare-fun mapRest!57523 () (Array (_ BitVec 32) ValueCell!17707))

(declare-fun mapValue!57523 () ValueCell!17707)

(assert (=> mapNonEmpty!57523 (= (arr!44068 _values!1303) (store mapRest!57523 mapKey!57523 mapValue!57523))))

(declare-fun b!1341807 () Bool)

(assert (=> b!1341807 (= e!764033 (not true))))

(declare-datatypes ((tuple2!24204 0))(
  ( (tuple2!24205 (_1!12112 (_ BitVec 64)) (_2!12112 V!54717)) )
))
(declare-datatypes ((List!31385 0))(
  ( (Nil!31382) (Cons!31381 (h!32590 tuple2!24204) (t!45814 List!31385)) )
))
(declare-datatypes ((ListLongMap!21873 0))(
  ( (ListLongMap!21874 (toList!10952 List!31385)) )
))
(declare-fun lt!594204 () ListLongMap!21873)

(declare-fun contains!9064 (ListLongMap!21873 (_ BitVec 64)) Bool)

(assert (=> b!1341807 (contains!9064 lt!594204 k!1142)))

(declare-fun lt!594202 () V!54717)

(declare-datatypes ((Unit!43979 0))(
  ( (Unit!43980) )
))
(declare-fun lt!594203 () Unit!43979)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!349 ((_ BitVec 64) (_ BitVec 64) V!54717 ListLongMap!21873) Unit!43979)

(assert (=> b!1341807 (= lt!594203 (lemmaInListMapAfterAddingDiffThenInBefore!349 k!1142 (select (arr!44067 _keys!1571) from!1960) lt!594202 lt!594204))))

(declare-fun lt!594201 () ListLongMap!21873)

(assert (=> b!1341807 (contains!9064 lt!594201 k!1142)))

(declare-fun lt!594205 () Unit!43979)

(declare-fun zeroValue!1245 () V!54717)

(assert (=> b!1341807 (= lt!594205 (lemmaInListMapAfterAddingDiffThenInBefore!349 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594201))))

(declare-fun +!4757 (ListLongMap!21873 tuple2!24204) ListLongMap!21873)

(assert (=> b!1341807 (= lt!594201 (+!4757 lt!594204 (tuple2!24205 (select (arr!44067 _keys!1571) from!1960) lt!594202)))))

(declare-fun defaultEntry!1306 () Int)

(declare-fun get!22288 (ValueCell!17707 V!54717) V!54717)

(declare-fun dynLambda!3794 (Int (_ BitVec 64)) V!54717)

(assert (=> b!1341807 (= lt!594202 (get!22288 (select (arr!44068 _values!1303) from!1960) (dynLambda!3794 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1245 () V!54717)

(declare-fun getCurrentListMapNoExtraKeys!6480 (array!91231 array!91233 (_ BitVec 32) (_ BitVec 32) V!54717 V!54717 (_ BitVec 32) Int) ListLongMap!21873)

(assert (=> b!1341807 (= lt!594204 (getCurrentListMapNoExtraKeys!6480 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1341808 () Bool)

(declare-fun res!890270 () Bool)

(assert (=> b!1341808 (=> (not res!890270) (not e!764033))))

(assert (=> b!1341808 (= res!890270 (and (= (size!44619 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44618 _keys!1571) (size!44619 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1341809 () Bool)

(assert (=> b!1341809 (= e!764035 tp_is_empty!37211)))

(declare-fun b!1341810 () Bool)

(declare-fun res!890267 () Bool)

(assert (=> b!1341810 (=> (not res!890267) (not e!764033))))

(declare-fun getCurrentListMap!5852 (array!91231 array!91233 (_ BitVec 32) (_ BitVec 32) V!54717 V!54717 (_ BitVec 32) Int) ListLongMap!21873)

(assert (=> b!1341810 (= res!890267 (contains!9064 (getCurrentListMap!5852 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1341811 () Bool)

(assert (=> b!1341811 (= e!764036 (and e!764032 mapRes!57523))))

(declare-fun condMapEmpty!57523 () Bool)

(declare-fun mapDefault!57523 () ValueCell!17707)

