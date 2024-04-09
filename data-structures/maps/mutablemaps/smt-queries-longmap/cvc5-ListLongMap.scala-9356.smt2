; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111608 () Bool)

(assert start!111608)

(declare-fun b_free!30229 () Bool)

(declare-fun b_next!30229 () Bool)

(assert (=> start!111608 (= b_free!30229 (not b_next!30229))))

(declare-fun tp!106163 () Bool)

(declare-fun b_and!48627 () Bool)

(assert (=> start!111608 (= tp!106163 b_and!48627)))

(declare-fun b!1321124 () Bool)

(declare-fun res!876946 () Bool)

(declare-fun e!753531 () Bool)

(assert (=> b!1321124 (=> (not res!876946) (not e!753531))))

(declare-datatypes ((array!88989 0))(
  ( (array!88990 (arr!42964 (Array (_ BitVec 32) (_ BitVec 64))) (size!43515 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88989)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1321124 (= res!876946 (validKeyInArray!0 (select (arr!42964 _keys!1609) from!2000)))))

(declare-fun b!1321125 () Bool)

(declare-fun res!876952 () Bool)

(assert (=> b!1321125 (=> (not res!876952) (not e!753531))))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1321125 (= res!876952 (not (= (select (arr!42964 _keys!1609) from!2000) k!1164)))))

(declare-fun res!876950 () Bool)

(assert (=> start!111608 (=> (not res!876950) (not e!753531))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111608 (= res!876950 (validMask!0 mask!2019))))

(assert (=> start!111608 e!753531))

(declare-fun array_inv!32393 (array!88989) Bool)

(assert (=> start!111608 (array_inv!32393 _keys!1609)))

(assert (=> start!111608 true))

(declare-fun tp_is_empty!36049 () Bool)

(assert (=> start!111608 tp_is_empty!36049))

(declare-datatypes ((V!53169 0))(
  ( (V!53170 (val!18099 Int)) )
))
(declare-datatypes ((ValueCell!17126 0))(
  ( (ValueCellFull!17126 (v!20727 V!53169)) (EmptyCell!17126) )
))
(declare-datatypes ((array!88991 0))(
  ( (array!88992 (arr!42965 (Array (_ BitVec 32) ValueCell!17126)) (size!43516 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88991)

(declare-fun e!753532 () Bool)

(declare-fun array_inv!32394 (array!88991) Bool)

(assert (=> start!111608 (and (array_inv!32394 _values!1337) e!753532)))

(assert (=> start!111608 tp!106163))

(declare-fun b!1321126 () Bool)

(declare-fun res!876949 () Bool)

(assert (=> b!1321126 (=> (not res!876949) (not e!753531))))

(declare-datatypes ((List!30653 0))(
  ( (Nil!30650) (Cons!30649 (h!31858 (_ BitVec 64)) (t!44438 List!30653)) )
))
(declare-fun arrayNoDuplicates!0 (array!88989 (_ BitVec 32) List!30653) Bool)

(assert (=> b!1321126 (= res!876949 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30650))))

(declare-fun mapNonEmpty!55721 () Bool)

(declare-fun mapRes!55721 () Bool)

(declare-fun tp!106164 () Bool)

(declare-fun e!753528 () Bool)

(assert (=> mapNonEmpty!55721 (= mapRes!55721 (and tp!106164 e!753528))))

(declare-fun mapValue!55721 () ValueCell!17126)

(declare-fun mapRest!55721 () (Array (_ BitVec 32) ValueCell!17126))

(declare-fun mapKey!55721 () (_ BitVec 32))

(assert (=> mapNonEmpty!55721 (= (arr!42965 _values!1337) (store mapRest!55721 mapKey!55721 mapValue!55721))))

(declare-fun b!1321127 () Bool)

(declare-fun e!753529 () Bool)

(assert (=> b!1321127 (= e!753529 tp_is_empty!36049)))

(declare-fun b!1321128 () Bool)

(declare-fun res!876948 () Bool)

(assert (=> b!1321128 (=> (not res!876948) (not e!753531))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(assert (=> b!1321128 (= res!876948 (and (= (size!43516 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43515 _keys!1609) (size!43516 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1321129 () Bool)

(declare-fun res!876951 () Bool)

(assert (=> b!1321129 (=> (not res!876951) (not e!753531))))

(assert (=> b!1321129 (= res!876951 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43515 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1321130 () Bool)

(assert (=> b!1321130 (= e!753531 (not true))))

(declare-datatypes ((tuple2!23472 0))(
  ( (tuple2!23473 (_1!11746 (_ BitVec 64)) (_2!11746 V!53169)) )
))
(declare-datatypes ((List!30654 0))(
  ( (Nil!30651) (Cons!30650 (h!31859 tuple2!23472) (t!44439 List!30654)) )
))
(declare-datatypes ((ListLongMap!21141 0))(
  ( (ListLongMap!21142 (toList!10586 List!30654)) )
))
(declare-fun lt!587270 () ListLongMap!21141)

(declare-fun contains!8677 (ListLongMap!21141 (_ BitVec 64)) Bool)

(assert (=> b!1321130 (contains!8677 lt!587270 k!1164)))

(declare-fun lt!587267 () V!53169)

(declare-datatypes ((Unit!43480 0))(
  ( (Unit!43481) )
))
(declare-fun lt!587266 () Unit!43480)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!155 ((_ BitVec 64) (_ BitVec 64) V!53169 ListLongMap!21141) Unit!43480)

(assert (=> b!1321130 (= lt!587266 (lemmaInListMapAfterAddingDiffThenInBefore!155 k!1164 (select (arr!42964 _keys!1609) from!2000) lt!587267 lt!587270))))

(declare-fun lt!587271 () ListLongMap!21141)

(assert (=> b!1321130 (contains!8677 lt!587271 k!1164)))

(declare-fun zeroValue!1279 () V!53169)

(declare-fun lt!587268 () Unit!43480)

(assert (=> b!1321130 (= lt!587268 (lemmaInListMapAfterAddingDiffThenInBefore!155 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!587271))))

(declare-fun lt!587269 () ListLongMap!21141)

(assert (=> b!1321130 (contains!8677 lt!587269 k!1164)))

(declare-fun minValue!1279 () V!53169)

(declare-fun lt!587272 () Unit!43480)

(assert (=> b!1321130 (= lt!587272 (lemmaInListMapAfterAddingDiffThenInBefore!155 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!587269))))

(declare-fun +!4540 (ListLongMap!21141 tuple2!23472) ListLongMap!21141)

(assert (=> b!1321130 (= lt!587269 (+!4540 lt!587271 (tuple2!23473 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(assert (=> b!1321130 (= lt!587271 (+!4540 lt!587270 (tuple2!23473 (select (arr!42964 _keys!1609) from!2000) lt!587267)))))

(declare-fun defaultEntry!1340 () Int)

(declare-fun get!21664 (ValueCell!17126 V!53169) V!53169)

(declare-fun dynLambda!3577 (Int (_ BitVec 64)) V!53169)

(assert (=> b!1321130 (= lt!587267 (get!21664 (select (arr!42965 _values!1337) from!2000) (dynLambda!3577 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6255 (array!88989 array!88991 (_ BitVec 32) (_ BitVec 32) V!53169 V!53169 (_ BitVec 32) Int) ListLongMap!21141)

(assert (=> b!1321130 (= lt!587270 (getCurrentListMapNoExtraKeys!6255 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1321131 () Bool)

(assert (=> b!1321131 (= e!753528 tp_is_empty!36049)))

(declare-fun b!1321132 () Bool)

(declare-fun res!876945 () Bool)

(assert (=> b!1321132 (=> (not res!876945) (not e!753531))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88989 (_ BitVec 32)) Bool)

(assert (=> b!1321132 (= res!876945 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1321133 () Bool)

(assert (=> b!1321133 (= e!753532 (and e!753529 mapRes!55721))))

(declare-fun condMapEmpty!55721 () Bool)

(declare-fun mapDefault!55721 () ValueCell!17126)

