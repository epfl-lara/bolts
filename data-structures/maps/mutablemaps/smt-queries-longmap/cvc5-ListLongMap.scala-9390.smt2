; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111812 () Bool)

(assert start!111812)

(declare-fun b_free!30433 () Bool)

(declare-fun b_next!30433 () Bool)

(assert (=> start!111812 (= b_free!30433 (not b_next!30433))))

(declare-fun tp!106776 () Bool)

(declare-fun b_and!48981 () Bool)

(assert (=> start!111812 (= tp!106776 b_and!48981)))

(declare-fun b!1324418 () Bool)

(declare-fun res!879172 () Bool)

(declare-fun e!755061 () Bool)

(assert (=> b!1324418 (=> (not res!879172) (not e!755061))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(declare-datatypes ((array!89375 0))(
  ( (array!89376 (arr!43157 (Array (_ BitVec 32) (_ BitVec 64))) (size!43708 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89375)

(assert (=> b!1324418 (= res!879172 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43708 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1324420 () Bool)

(declare-fun res!879173 () Bool)

(assert (=> b!1324420 (=> (not res!879173) (not e!755061))))

(declare-datatypes ((V!53441 0))(
  ( (V!53442 (val!18201 Int)) )
))
(declare-datatypes ((ValueCell!17228 0))(
  ( (ValueCellFull!17228 (v!20829 V!53441)) (EmptyCell!17228) )
))
(declare-datatypes ((array!89377 0))(
  ( (array!89378 (arr!43158 (Array (_ BitVec 32) ValueCell!17228)) (size!43709 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89377)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1324420 (= res!879173 (and (= (size!43709 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43708 _keys!1609) (size!43709 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1324421 () Bool)

(declare-fun res!879174 () Bool)

(assert (=> b!1324421 (=> (not res!879174) (not e!755061))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89375 (_ BitVec 32)) Bool)

(assert (=> b!1324421 (= res!879174 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1324422 () Bool)

(declare-fun res!879175 () Bool)

(assert (=> b!1324422 (=> (not res!879175) (not e!755061))))

(declare-datatypes ((List!30792 0))(
  ( (Nil!30789) (Cons!30788 (h!31997 (_ BitVec 64)) (t!44725 List!30792)) )
))
(declare-fun arrayNoDuplicates!0 (array!89375 (_ BitVec 32) List!30792) Bool)

(assert (=> b!1324422 (= res!879175 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30789))))

(declare-fun mapIsEmpty!56027 () Bool)

(declare-fun mapRes!56027 () Bool)

(assert (=> mapIsEmpty!56027 mapRes!56027))

(declare-fun b!1324423 () Bool)

(declare-fun e!755059 () Bool)

(declare-fun tp_is_empty!36253 () Bool)

(assert (=> b!1324423 (= e!755059 tp_is_empty!36253)))

(declare-fun b!1324424 () Bool)

(assert (=> b!1324424 (= e!755061 false)))

(declare-fun zeroValue!1279 () V!53441)

(declare-fun minValue!1279 () V!53441)

(declare-fun defaultEntry!1340 () Int)

(declare-fun lt!589405 () Bool)

(declare-datatypes ((tuple2!23620 0))(
  ( (tuple2!23621 (_1!11820 (_ BitVec 64)) (_2!11820 V!53441)) )
))
(declare-datatypes ((List!30793 0))(
  ( (Nil!30790) (Cons!30789 (h!31998 tuple2!23620) (t!44726 List!30793)) )
))
(declare-datatypes ((ListLongMap!21289 0))(
  ( (ListLongMap!21290 (toList!10660 List!30793)) )
))
(declare-fun contains!8751 (ListLongMap!21289 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5597 (array!89375 array!89377 (_ BitVec 32) (_ BitVec 32) V!53441 V!53441 (_ BitVec 32) Int) ListLongMap!21289)

(assert (=> b!1324424 (= lt!589405 (contains!8751 (getCurrentListMap!5597 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1324425 () Bool)

(declare-fun e!755060 () Bool)

(assert (=> b!1324425 (= e!755060 tp_is_empty!36253)))

(declare-fun mapNonEmpty!56027 () Bool)

(declare-fun tp!106775 () Bool)

(assert (=> mapNonEmpty!56027 (= mapRes!56027 (and tp!106775 e!755059))))

(declare-fun mapKey!56027 () (_ BitVec 32))

(declare-fun mapRest!56027 () (Array (_ BitVec 32) ValueCell!17228))

(declare-fun mapValue!56027 () ValueCell!17228)

(assert (=> mapNonEmpty!56027 (= (arr!43158 _values!1337) (store mapRest!56027 mapKey!56027 mapValue!56027))))

(declare-fun b!1324419 () Bool)

(declare-fun e!755062 () Bool)

(assert (=> b!1324419 (= e!755062 (and e!755060 mapRes!56027))))

(declare-fun condMapEmpty!56027 () Bool)

(declare-fun mapDefault!56027 () ValueCell!17228)

