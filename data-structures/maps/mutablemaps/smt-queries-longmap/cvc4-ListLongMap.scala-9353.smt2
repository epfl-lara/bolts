; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111594 () Bool)

(assert start!111594)

(declare-fun b_free!30215 () Bool)

(declare-fun b_next!30215 () Bool)

(assert (=> start!111594 (= b_free!30215 (not b_next!30215))))

(declare-fun tp!106121 () Bool)

(declare-fun b_and!48599 () Bool)

(assert (=> start!111594 (= tp!106121 b_and!48599)))

(declare-fun b!1320879 () Bool)

(declare-fun res!876779 () Bool)

(declare-fun e!753427 () Bool)

(assert (=> b!1320879 (=> (not res!876779) (not e!753427))))

(declare-datatypes ((array!88963 0))(
  ( (array!88964 (arr!42951 (Array (_ BitVec 32) (_ BitVec 64))) (size!43502 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88963)

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53149 0))(
  ( (V!53150 (val!18092 Int)) )
))
(declare-fun zeroValue!1279 () V!53149)

(declare-datatypes ((ValueCell!17119 0))(
  ( (ValueCellFull!17119 (v!20720 V!53149)) (EmptyCell!17119) )
))
(declare-datatypes ((array!88965 0))(
  ( (array!88966 (arr!42952 (Array (_ BitVec 32) ValueCell!17119)) (size!43503 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88965)

(declare-fun minValue!1279 () V!53149)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23462 0))(
  ( (tuple2!23463 (_1!11741 (_ BitVec 64)) (_2!11741 V!53149)) )
))
(declare-datatypes ((List!30643 0))(
  ( (Nil!30640) (Cons!30639 (h!31848 tuple2!23462) (t!44414 List!30643)) )
))
(declare-datatypes ((ListLongMap!21131 0))(
  ( (ListLongMap!21132 (toList!10581 List!30643)) )
))
(declare-fun contains!8672 (ListLongMap!21131 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5524 (array!88963 array!88965 (_ BitVec 32) (_ BitVec 32) V!53149 V!53149 (_ BitVec 32) Int) ListLongMap!21131)

(assert (=> b!1320879 (= res!876779 (contains!8672 (getCurrentListMap!5524 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1320880 () Bool)

(declare-fun res!876784 () Bool)

(assert (=> b!1320880 (=> (not res!876784) (not e!753427))))

(assert (=> b!1320880 (= res!876784 (and (= (size!43503 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43502 _keys!1609) (size!43503 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1320881 () Bool)

(declare-fun res!876782 () Bool)

(assert (=> b!1320881 (=> (not res!876782) (not e!753427))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88963 (_ BitVec 32)) Bool)

(assert (=> b!1320881 (= res!876782 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1320882 () Bool)

(declare-fun e!753423 () Bool)

(declare-fun tp_is_empty!36035 () Bool)

(assert (=> b!1320882 (= e!753423 tp_is_empty!36035)))

(declare-fun b!1320883 () Bool)

(assert (=> b!1320883 (= e!753427 (not true))))

(declare-fun lt!587122 () ListLongMap!21131)

(assert (=> b!1320883 (contains!8672 lt!587122 k!1164)))

(declare-datatypes ((Unit!43470 0))(
  ( (Unit!43471) )
))
(declare-fun lt!587124 () Unit!43470)

(declare-fun lt!587119 () V!53149)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!150 ((_ BitVec 64) (_ BitVec 64) V!53149 ListLongMap!21131) Unit!43470)

(assert (=> b!1320883 (= lt!587124 (lemmaInListMapAfterAddingDiffThenInBefore!150 k!1164 (select (arr!42951 _keys!1609) from!2000) lt!587119 lt!587122))))

(declare-fun lt!587123 () ListLongMap!21131)

(assert (=> b!1320883 (contains!8672 lt!587123 k!1164)))

(declare-fun lt!587120 () Unit!43470)

(assert (=> b!1320883 (= lt!587120 (lemmaInListMapAfterAddingDiffThenInBefore!150 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!587123))))

(declare-fun lt!587125 () ListLongMap!21131)

(assert (=> b!1320883 (contains!8672 lt!587125 k!1164)))

(declare-fun lt!587121 () Unit!43470)

(assert (=> b!1320883 (= lt!587121 (lemmaInListMapAfterAddingDiffThenInBefore!150 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!587125))))

(declare-fun +!4535 (ListLongMap!21131 tuple2!23462) ListLongMap!21131)

(assert (=> b!1320883 (= lt!587125 (+!4535 lt!587123 (tuple2!23463 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(assert (=> b!1320883 (= lt!587123 (+!4535 lt!587122 (tuple2!23463 (select (arr!42951 _keys!1609) from!2000) lt!587119)))))

(declare-fun get!21653 (ValueCell!17119 V!53149) V!53149)

(declare-fun dynLambda!3572 (Int (_ BitVec 64)) V!53149)

(assert (=> b!1320883 (= lt!587119 (get!21653 (select (arr!42952 _values!1337) from!2000) (dynLambda!3572 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6250 (array!88963 array!88965 (_ BitVec 32) (_ BitVec 32) V!53149 V!53149 (_ BitVec 32) Int) ListLongMap!21131)

(assert (=> b!1320883 (= lt!587122 (getCurrentListMapNoExtraKeys!6250 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1320884 () Bool)

(declare-fun e!753424 () Bool)

(assert (=> b!1320884 (= e!753424 tp_is_empty!36035)))

(declare-fun b!1320885 () Bool)

(declare-fun res!876783 () Bool)

(assert (=> b!1320885 (=> (not res!876783) (not e!753427))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1320885 (= res!876783 (validKeyInArray!0 (select (arr!42951 _keys!1609) from!2000)))))

(declare-fun res!876778 () Bool)

(assert (=> start!111594 (=> (not res!876778) (not e!753427))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111594 (= res!876778 (validMask!0 mask!2019))))

(assert (=> start!111594 e!753427))

(declare-fun array_inv!32383 (array!88963) Bool)

(assert (=> start!111594 (array_inv!32383 _keys!1609)))

(assert (=> start!111594 true))

(assert (=> start!111594 tp_is_empty!36035))

(declare-fun e!753426 () Bool)

(declare-fun array_inv!32384 (array!88965) Bool)

(assert (=> start!111594 (and (array_inv!32384 _values!1337) e!753426)))

(assert (=> start!111594 tp!106121))

(declare-fun b!1320886 () Bool)

(declare-fun res!876777 () Bool)

(assert (=> b!1320886 (=> (not res!876777) (not e!753427))))

(assert (=> b!1320886 (= res!876777 (not (= (select (arr!42951 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1320887 () Bool)

(declare-fun res!876781 () Bool)

(assert (=> b!1320887 (=> (not res!876781) (not e!753427))))

(assert (=> b!1320887 (= res!876781 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43502 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1320888 () Bool)

(declare-fun res!876780 () Bool)

(assert (=> b!1320888 (=> (not res!876780) (not e!753427))))

(declare-datatypes ((List!30644 0))(
  ( (Nil!30641) (Cons!30640 (h!31849 (_ BitVec 64)) (t!44415 List!30644)) )
))
(declare-fun arrayNoDuplicates!0 (array!88963 (_ BitVec 32) List!30644) Bool)

(assert (=> b!1320888 (= res!876780 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30641))))

(declare-fun b!1320889 () Bool)

(declare-fun mapRes!55700 () Bool)

(assert (=> b!1320889 (= e!753426 (and e!753423 mapRes!55700))))

(declare-fun condMapEmpty!55700 () Bool)

(declare-fun mapDefault!55700 () ValueCell!17119)

