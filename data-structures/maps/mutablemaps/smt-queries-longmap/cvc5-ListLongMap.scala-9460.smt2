; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112404 () Bool)

(assert start!112404)

(declare-fun b_free!30763 () Bool)

(declare-fun b_next!30763 () Bool)

(assert (=> start!112404 (= b_free!30763 (not b_next!30763))))

(declare-fun tp!107927 () Bool)

(declare-fun b_and!49591 () Bool)

(assert (=> start!112404 (= tp!107927 b_and!49591)))

(declare-fun mapNonEmpty!56683 () Bool)

(declare-fun mapRes!56683 () Bool)

(declare-fun tp!107926 () Bool)

(declare-fun e!758896 () Bool)

(assert (=> mapNonEmpty!56683 (= mapRes!56683 (and tp!107926 e!758896))))

(declare-datatypes ((V!54001 0))(
  ( (V!54002 (val!18411 Int)) )
))
(declare-datatypes ((ValueCell!17438 0))(
  ( (ValueCellFull!17438 (v!21046 V!54001)) (EmptyCell!17438) )
))
(declare-fun mapRest!56683 () (Array (_ BitVec 32) ValueCell!17438))

(declare-fun mapKey!56683 () (_ BitVec 32))

(declare-datatypes ((array!90195 0))(
  ( (array!90196 (arr!43559 (Array (_ BitVec 32) ValueCell!17438)) (size!44110 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90195)

(declare-fun mapValue!56683 () ValueCell!17438)

(assert (=> mapNonEmpty!56683 (= (arr!43559 _values!1320) (store mapRest!56683 mapKey!56683 mapValue!56683))))

(declare-fun b!1331958 () Bool)

(declare-fun e!758898 () Bool)

(declare-fun tp_is_empty!36673 () Bool)

(assert (=> b!1331958 (= e!758898 tp_is_empty!36673)))

(declare-fun b!1331959 () Bool)

(declare-fun res!883985 () Bool)

(declare-fun e!758895 () Bool)

(assert (=> b!1331959 (=> (not res!883985) (not e!758895))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((array!90197 0))(
  ( (array!90198 (arr!43560 (Array (_ BitVec 32) (_ BitVec 64))) (size!44111 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90197)

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1331959 (= res!883985 (not (= (select (arr!43560 _keys!1590) from!1980) k!1153)))))

(declare-fun res!883983 () Bool)

(assert (=> start!112404 (=> (not res!883983) (not e!758895))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112404 (= res!883983 (validMask!0 mask!1998))))

(assert (=> start!112404 e!758895))

(declare-fun e!758897 () Bool)

(declare-fun array_inv!32807 (array!90195) Bool)

(assert (=> start!112404 (and (array_inv!32807 _values!1320) e!758897)))

(assert (=> start!112404 true))

(declare-fun array_inv!32808 (array!90197) Bool)

(assert (=> start!112404 (array_inv!32808 _keys!1590)))

(assert (=> start!112404 tp!107927))

(assert (=> start!112404 tp_is_empty!36673))

(declare-fun b!1331960 () Bool)

(declare-fun res!883981 () Bool)

(assert (=> b!1331960 (=> (not res!883981) (not e!758895))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90197 (_ BitVec 32)) Bool)

(assert (=> b!1331960 (= res!883981 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1331961 () Bool)

(assert (=> b!1331961 (= e!758896 tp_is_empty!36673)))

(declare-fun b!1331962 () Bool)

(declare-fun res!883984 () Bool)

(assert (=> b!1331962 (=> (not res!883984) (not e!758895))))

(declare-datatypes ((List!31052 0))(
  ( (Nil!31049) (Cons!31048 (h!32257 (_ BitVec 64)) (t!45235 List!31052)) )
))
(declare-fun arrayNoDuplicates!0 (array!90197 (_ BitVec 32) List!31052) Bool)

(assert (=> b!1331962 (= res!883984 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31049))))

(declare-fun b!1331963 () Bool)

(assert (=> b!1331963 (= e!758895 (not true))))

(declare-datatypes ((tuple2!23872 0))(
  ( (tuple2!23873 (_1!11946 (_ BitVec 64)) (_2!11946 V!54001)) )
))
(declare-datatypes ((List!31053 0))(
  ( (Nil!31050) (Cons!31049 (h!32258 tuple2!23872) (t!45236 List!31053)) )
))
(declare-datatypes ((ListLongMap!21541 0))(
  ( (ListLongMap!21542 (toList!10786 List!31053)) )
))
(declare-fun lt!591763 () ListLongMap!21541)

(declare-fun minValue!1262 () V!54001)

(declare-fun contains!8886 (ListLongMap!21541 (_ BitVec 64)) Bool)

(declare-fun +!4674 (ListLongMap!21541 tuple2!23872) ListLongMap!21541)

(assert (=> b!1331963 (contains!8886 (+!4674 lt!591763 (tuple2!23873 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) k!1153)))

(declare-datatypes ((Unit!43775 0))(
  ( (Unit!43776) )
))
(declare-fun lt!591761 () Unit!43775)

(declare-fun addStillContains!1184 (ListLongMap!21541 (_ BitVec 64) V!54001 (_ BitVec 64)) Unit!43775)

(assert (=> b!1331963 (= lt!591761 (addStillContains!1184 lt!591763 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 k!1153))))

(assert (=> b!1331963 (contains!8886 lt!591763 k!1153)))

(declare-fun lt!591764 () V!54001)

(declare-fun lt!591759 () Unit!43775)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!279 ((_ BitVec 64) (_ BitVec 64) V!54001 ListLongMap!21541) Unit!43775)

(assert (=> b!1331963 (= lt!591759 (lemmaInListMapAfterAddingDiffThenInBefore!279 k!1153 (select (arr!43560 _keys!1590) from!1980) lt!591764 lt!591763))))

(declare-fun lt!591760 () ListLongMap!21541)

(assert (=> b!1331963 (contains!8886 lt!591760 k!1153)))

(declare-fun lt!591762 () Unit!43775)

(assert (=> b!1331963 (= lt!591762 (lemmaInListMapAfterAddingDiffThenInBefore!279 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591760))))

(assert (=> b!1331963 (= lt!591760 (+!4674 lt!591763 (tuple2!23873 (select (arr!43560 _keys!1590) from!1980) lt!591764)))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun get!22014 (ValueCell!17438 V!54001) V!54001)

(declare-fun dynLambda!3711 (Int (_ BitVec 64)) V!54001)

(assert (=> b!1331963 (= lt!591764 (get!22014 (select (arr!43559 _values!1320) from!1980) (dynLambda!3711 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun zeroValue!1262 () V!54001)

(declare-fun getCurrentListMapNoExtraKeys!6392 (array!90197 array!90195 (_ BitVec 32) (_ BitVec 32) V!54001 V!54001 (_ BitVec 32) Int) ListLongMap!21541)

(assert (=> b!1331963 (= lt!591763 (getCurrentListMapNoExtraKeys!6392 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1331964 () Bool)

(declare-fun res!883982 () Bool)

(assert (=> b!1331964 (=> (not res!883982) (not e!758895))))

(assert (=> b!1331964 (= res!883982 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44111 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1331965 () Bool)

(declare-fun res!883980 () Bool)

(assert (=> b!1331965 (=> (not res!883980) (not e!758895))))

(assert (=> b!1331965 (= res!883980 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1331966 () Bool)

(declare-fun res!883978 () Bool)

(assert (=> b!1331966 (=> (not res!883978) (not e!758895))))

(assert (=> b!1331966 (= res!883978 (and (= (size!44110 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44111 _keys!1590) (size!44110 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1331967 () Bool)

(declare-fun res!883977 () Bool)

(assert (=> b!1331967 (=> (not res!883977) (not e!758895))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1331967 (= res!883977 (validKeyInArray!0 (select (arr!43560 _keys!1590) from!1980)))))

(declare-fun mapIsEmpty!56683 () Bool)

(assert (=> mapIsEmpty!56683 mapRes!56683))

(declare-fun b!1331968 () Bool)

(declare-fun res!883979 () Bool)

(assert (=> b!1331968 (=> (not res!883979) (not e!758895))))

(declare-fun getCurrentListMap!5709 (array!90197 array!90195 (_ BitVec 32) (_ BitVec 32) V!54001 V!54001 (_ BitVec 32) Int) ListLongMap!21541)

(assert (=> b!1331968 (= res!883979 (contains!8886 (getCurrentListMap!5709 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1331969 () Bool)

(assert (=> b!1331969 (= e!758897 (and e!758898 mapRes!56683))))

(declare-fun condMapEmpty!56683 () Bool)

(declare-fun mapDefault!56683 () ValueCell!17438)

