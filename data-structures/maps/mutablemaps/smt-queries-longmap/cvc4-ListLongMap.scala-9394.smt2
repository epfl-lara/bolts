; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111840 () Bool)

(assert start!111840)

(declare-fun b_free!30461 () Bool)

(declare-fun b_next!30461 () Bool)

(assert (=> start!111840 (= b_free!30461 (not b_next!30461))))

(declare-fun tp!106859 () Bool)

(declare-fun b_and!49013 () Bool)

(assert (=> start!111840 (= tp!106859 b_and!49013)))

(declare-fun res!879462 () Bool)

(declare-fun e!755271 () Bool)

(assert (=> start!111840 (=> (not res!879462) (not e!755271))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111840 (= res!879462 (validMask!0 mask!2019))))

(assert (=> start!111840 e!755271))

(declare-datatypes ((array!89429 0))(
  ( (array!89430 (arr!43184 (Array (_ BitVec 32) (_ BitVec 64))) (size!43735 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89429)

(declare-fun array_inv!32539 (array!89429) Bool)

(assert (=> start!111840 (array_inv!32539 _keys!1609)))

(assert (=> start!111840 true))

(declare-fun tp_is_empty!36281 () Bool)

(assert (=> start!111840 tp_is_empty!36281))

(declare-datatypes ((V!53477 0))(
  ( (V!53478 (val!18215 Int)) )
))
(declare-datatypes ((ValueCell!17242 0))(
  ( (ValueCellFull!17242 (v!20843 V!53477)) (EmptyCell!17242) )
))
(declare-datatypes ((array!89431 0))(
  ( (array!89432 (arr!43185 (Array (_ BitVec 32) ValueCell!17242)) (size!43736 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89431)

(declare-fun e!755272 () Bool)

(declare-fun array_inv!32540 (array!89431) Bool)

(assert (=> start!111840 (and (array_inv!32540 _values!1337) e!755272)))

(assert (=> start!111840 tp!106859))

(declare-fun b!1324836 () Bool)

(declare-fun res!879464 () Bool)

(assert (=> b!1324836 (=> (not res!879464) (not e!755271))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89429 (_ BitVec 32)) Bool)

(assert (=> b!1324836 (= res!879464 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1324837 () Bool)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!53477)

(declare-fun minValue!1279 () V!53477)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23642 0))(
  ( (tuple2!23643 (_1!11831 (_ BitVec 64)) (_2!11831 V!53477)) )
))
(declare-datatypes ((List!30812 0))(
  ( (Nil!30809) (Cons!30808 (h!32017 tuple2!23642) (t!44751 List!30812)) )
))
(declare-datatypes ((ListLongMap!21311 0))(
  ( (ListLongMap!21312 (toList!10671 List!30812)) )
))
(declare-fun contains!8762 (ListLongMap!21311 (_ BitVec 64)) Bool)

(declare-fun +!4587 (ListLongMap!21311 tuple2!23642) ListLongMap!21311)

(declare-fun getCurrentListMapNoExtraKeys!6305 (array!89429 array!89431 (_ BitVec 32) (_ BitVec 32) V!53477 V!53477 (_ BitVec 32) Int) ListLongMap!21311)

(declare-fun get!21787 (ValueCell!17242 V!53477) V!53477)

(declare-fun dynLambda!3624 (Int (_ BitVec 64)) V!53477)

(assert (=> b!1324837 (= e!755271 (not (contains!8762 (+!4587 (+!4587 (+!4587 (getCurrentListMapNoExtraKeys!6305 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23643 (select (arr!43184 _keys!1609) from!2000) (get!21787 (select (arr!43185 _values!1337) from!2000) (dynLambda!3624 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23643 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23643 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) k!1164)))))

(declare-fun b!1324838 () Bool)

(declare-fun res!879460 () Bool)

(assert (=> b!1324838 (=> (not res!879460) (not e!755271))))

(assert (=> b!1324838 (= res!879460 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43735 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1324839 () Bool)

(declare-fun e!755268 () Bool)

(declare-fun mapRes!56069 () Bool)

(assert (=> b!1324839 (= e!755272 (and e!755268 mapRes!56069))))

(declare-fun condMapEmpty!56069 () Bool)

(declare-fun mapDefault!56069 () ValueCell!17242)

