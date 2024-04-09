; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112272 () Bool)

(assert start!112272)

(declare-fun b_free!30631 () Bool)

(declare-fun b_next!30631 () Bool)

(assert (=> start!112272 (= b_free!30631 (not b_next!30631))))

(declare-fun tp!107530 () Bool)

(declare-fun b_and!49327 () Bool)

(assert (=> start!112272 (= tp!107530 b_and!49327)))

(declare-fun mapIsEmpty!56485 () Bool)

(declare-fun mapRes!56485 () Bool)

(assert (=> mapIsEmpty!56485 mapRes!56485))

(declare-fun b!1329450 () Bool)

(declare-fun e!757909 () Bool)

(declare-fun tp_is_empty!36541 () Bool)

(assert (=> b!1329450 (= e!757909 tp_is_empty!36541)))

(declare-fun mapNonEmpty!56485 () Bool)

(declare-fun tp!107531 () Bool)

(declare-fun e!757906 () Bool)

(assert (=> mapNonEmpty!56485 (= mapRes!56485 (and tp!107531 e!757906))))

(declare-datatypes ((V!53825 0))(
  ( (V!53826 (val!18345 Int)) )
))
(declare-datatypes ((ValueCell!17372 0))(
  ( (ValueCellFull!17372 (v!20980 V!53825)) (EmptyCell!17372) )
))
(declare-fun mapValue!56485 () ValueCell!17372)

(declare-datatypes ((array!89937 0))(
  ( (array!89938 (arr!43430 (Array (_ BitVec 32) ValueCell!17372)) (size!43981 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89937)

(declare-fun mapKey!56485 () (_ BitVec 32))

(declare-fun mapRest!56485 () (Array (_ BitVec 32) ValueCell!17372))

(assert (=> mapNonEmpty!56485 (= (arr!43430 _values!1320) (store mapRest!56485 mapKey!56485 mapValue!56485))))

(declare-fun b!1329451 () Bool)

(declare-fun res!882201 () Bool)

(declare-fun e!757908 () Bool)

(assert (=> b!1329451 (=> (not res!882201) (not e!757908))))

(declare-datatypes ((array!89939 0))(
  ( (array!89940 (arr!43431 (Array (_ BitVec 32) (_ BitVec 64))) (size!43982 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89939)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1329451 (= res!882201 (validKeyInArray!0 (select (arr!43431 _keys!1590) from!1980)))))

(declare-fun b!1329452 () Bool)

(assert (=> b!1329452 (= e!757908 (not true))))

(declare-datatypes ((tuple2!23764 0))(
  ( (tuple2!23765 (_1!11892 (_ BitVec 64)) (_2!11892 V!53825)) )
))
(declare-datatypes ((List!30954 0))(
  ( (Nil!30951) (Cons!30950 (h!32159 tuple2!23764) (t!45005 List!30954)) )
))
(declare-datatypes ((ListLongMap!21433 0))(
  ( (ListLongMap!21434 (toList!10732 List!30954)) )
))
(declare-fun lt!590906 () ListLongMap!21433)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun contains!8832 (ListLongMap!21433 (_ BitVec 64)) Bool)

(assert (=> b!1329452 (contains!8832 lt!590906 k!1153)))

(declare-datatypes ((Unit!43683 0))(
  ( (Unit!43684) )
))
(declare-fun lt!590905 () Unit!43683)

(declare-fun minValue!1262 () V!53825)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!233 ((_ BitVec 64) (_ BitVec 64) V!53825 ListLongMap!21433) Unit!43683)

(assert (=> b!1329452 (= lt!590905 (lemmaInListMapAfterAddingDiffThenInBefore!233 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!590906))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun zeroValue!1262 () V!53825)

(declare-fun +!4628 (ListLongMap!21433 tuple2!23764) ListLongMap!21433)

(declare-fun getCurrentListMapNoExtraKeys!6346 (array!89939 array!89937 (_ BitVec 32) (_ BitVec 32) V!53825 V!53825 (_ BitVec 32) Int) ListLongMap!21433)

(declare-fun get!21924 (ValueCell!17372 V!53825) V!53825)

(declare-fun dynLambda!3665 (Int (_ BitVec 64)) V!53825)

(assert (=> b!1329452 (= lt!590906 (+!4628 (getCurrentListMapNoExtraKeys!6346 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!23765 (select (arr!43431 _keys!1590) from!1980) (get!21924 (select (arr!43430 _values!1320) from!1980) (dynLambda!3665 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1329453 () Bool)

(declare-fun res!882202 () Bool)

(assert (=> b!1329453 (=> (not res!882202) (not e!757908))))

(declare-fun getCurrentListMap!5664 (array!89939 array!89937 (_ BitVec 32) (_ BitVec 32) V!53825 V!53825 (_ BitVec 32) Int) ListLongMap!21433)

(assert (=> b!1329453 (= res!882202 (contains!8832 (getCurrentListMap!5664 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1329454 () Bool)

(declare-fun res!882197 () Bool)

(assert (=> b!1329454 (=> (not res!882197) (not e!757908))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89939 (_ BitVec 32)) Bool)

(assert (=> b!1329454 (= res!882197 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1329455 () Bool)

(assert (=> b!1329455 (= e!757906 tp_is_empty!36541)))

(declare-fun b!1329456 () Bool)

(declare-fun res!882198 () Bool)

(assert (=> b!1329456 (=> (not res!882198) (not e!757908))))

(assert (=> b!1329456 (= res!882198 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43982 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1329457 () Bool)

(declare-fun res!882200 () Bool)

(assert (=> b!1329457 (=> (not res!882200) (not e!757908))))

(assert (=> b!1329457 (= res!882200 (not (= (select (arr!43431 _keys!1590) from!1980) k!1153)))))

(declare-fun res!882203 () Bool)

(assert (=> start!112272 (=> (not res!882203) (not e!757908))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112272 (= res!882203 (validMask!0 mask!1998))))

(assert (=> start!112272 e!757908))

(declare-fun e!757907 () Bool)

(declare-fun array_inv!32717 (array!89937) Bool)

(assert (=> start!112272 (and (array_inv!32717 _values!1320) e!757907)))

(assert (=> start!112272 true))

(declare-fun array_inv!32718 (array!89939) Bool)

(assert (=> start!112272 (array_inv!32718 _keys!1590)))

(assert (=> start!112272 tp!107530))

(assert (=> start!112272 tp_is_empty!36541))

(declare-fun b!1329458 () Bool)

(declare-fun res!882196 () Bool)

(assert (=> b!1329458 (=> (not res!882196) (not e!757908))))

(assert (=> b!1329458 (= res!882196 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1329459 () Bool)

(declare-fun res!882199 () Bool)

(assert (=> b!1329459 (=> (not res!882199) (not e!757908))))

(assert (=> b!1329459 (= res!882199 (and (= (size!43981 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43982 _keys!1590) (size!43981 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1329460 () Bool)

(assert (=> b!1329460 (= e!757907 (and e!757909 mapRes!56485))))

(declare-fun condMapEmpty!56485 () Bool)

(declare-fun mapDefault!56485 () ValueCell!17372)

