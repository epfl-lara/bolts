; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112308 () Bool)

(assert start!112308)

(declare-fun b_free!30667 () Bool)

(declare-fun b_next!30667 () Bool)

(assert (=> start!112308 (= b_free!30667 (not b_next!30667))))

(declare-fun tp!107639 () Bool)

(declare-fun b_and!49399 () Bool)

(assert (=> start!112308 (= tp!107639 b_and!49399)))

(declare-fun b!1330134 () Bool)

(declare-fun res!882681 () Bool)

(declare-fun e!758176 () Bool)

(assert (=> b!1330134 (=> (not res!882681) (not e!758176))))

(declare-datatypes ((array!90009 0))(
  ( (array!90010 (arr!43466 (Array (_ BitVec 32) (_ BitVec 64))) (size!44017 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90009)

(declare-datatypes ((List!30983 0))(
  ( (Nil!30980) (Cons!30979 (h!32188 (_ BitVec 64)) (t!45070 List!30983)) )
))
(declare-fun arrayNoDuplicates!0 (array!90009 (_ BitVec 32) List!30983) Bool)

(assert (=> b!1330134 (= res!882681 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30980))))

(declare-fun b!1330135 () Bool)

(declare-fun res!882682 () Bool)

(assert (=> b!1330135 (=> (not res!882682) (not e!758176))))

(declare-datatypes ((V!53873 0))(
  ( (V!53874 (val!18363 Int)) )
))
(declare-datatypes ((ValueCell!17390 0))(
  ( (ValueCellFull!17390 (v!20998 V!53873)) (EmptyCell!17390) )
))
(declare-datatypes ((array!90011 0))(
  ( (array!90012 (arr!43467 (Array (_ BitVec 32) ValueCell!17390)) (size!44018 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90011)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1330135 (= res!882682 (and (= (size!44018 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44017 _keys!1590) (size!44018 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!56539 () Bool)

(declare-fun mapRes!56539 () Bool)

(assert (=> mapIsEmpty!56539 mapRes!56539))

(declare-fun b!1330136 () Bool)

(declare-fun res!882683 () Bool)

(assert (=> b!1330136 (=> (not res!882683) (not e!758176))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90009 (_ BitVec 32)) Bool)

(assert (=> b!1330136 (= res!882683 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1330137 () Bool)

(declare-fun res!882689 () Bool)

(assert (=> b!1330137 (=> (not res!882689) (not e!758176))))

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun from!1980 () (_ BitVec 32))

(assert (=> b!1330137 (= res!882689 (not (= (select (arr!43466 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1330138 () Bool)

(declare-fun res!882685 () Bool)

(assert (=> b!1330138 (=> (not res!882685) (not e!758176))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!53873)

(declare-fun zeroValue!1262 () V!53873)

(declare-datatypes ((tuple2!23794 0))(
  ( (tuple2!23795 (_1!11907 (_ BitVec 64)) (_2!11907 V!53873)) )
))
(declare-datatypes ((List!30984 0))(
  ( (Nil!30981) (Cons!30980 (h!32189 tuple2!23794) (t!45071 List!30984)) )
))
(declare-datatypes ((ListLongMap!21463 0))(
  ( (ListLongMap!21464 (toList!10747 List!30984)) )
))
(declare-fun contains!8847 (ListLongMap!21463 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5677 (array!90009 array!90011 (_ BitVec 32) (_ BitVec 32) V!53873 V!53873 (_ BitVec 32) Int) ListLongMap!21463)

(assert (=> b!1330138 (= res!882685 (contains!8847 (getCurrentListMap!5677 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun mapNonEmpty!56539 () Bool)

(declare-fun tp!107638 () Bool)

(declare-fun e!758178 () Bool)

(assert (=> mapNonEmpty!56539 (= mapRes!56539 (and tp!107638 e!758178))))

(declare-fun mapValue!56539 () ValueCell!17390)

(declare-fun mapKey!56539 () (_ BitVec 32))

(declare-fun mapRest!56539 () (Array (_ BitVec 32) ValueCell!17390))

(assert (=> mapNonEmpty!56539 (= (arr!43467 _values!1320) (store mapRest!56539 mapKey!56539 mapValue!56539))))

(declare-fun b!1330139 () Bool)

(declare-fun res!882684 () Bool)

(assert (=> b!1330139 (=> (not res!882684) (not e!758176))))

(assert (=> b!1330139 (= res!882684 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44017 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1330140 () Bool)

(declare-fun tp_is_empty!36577 () Bool)

(assert (=> b!1330140 (= e!758178 tp_is_empty!36577)))

(declare-fun b!1330141 () Bool)

(declare-fun res!882687 () Bool)

(assert (=> b!1330141 (=> (not res!882687) (not e!758176))))

(assert (=> b!1330141 (= res!882687 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!882686 () Bool)

(assert (=> start!112308 (=> (not res!882686) (not e!758176))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112308 (= res!882686 (validMask!0 mask!1998))))

(assert (=> start!112308 e!758176))

(declare-fun e!758177 () Bool)

(declare-fun array_inv!32747 (array!90011) Bool)

(assert (=> start!112308 (and (array_inv!32747 _values!1320) e!758177)))

(assert (=> start!112308 true))

(declare-fun array_inv!32748 (array!90009) Bool)

(assert (=> start!112308 (array_inv!32748 _keys!1590)))

(assert (=> start!112308 tp!107639))

(assert (=> start!112308 tp_is_empty!36577))

(declare-fun b!1330142 () Bool)

(declare-fun e!758179 () Bool)

(assert (=> b!1330142 (= e!758179 tp_is_empty!36577)))

(declare-fun b!1330143 () Bool)

(assert (=> b!1330143 (= e!758177 (and e!758179 mapRes!56539))))

(declare-fun condMapEmpty!56539 () Bool)

(declare-fun mapDefault!56539 () ValueCell!17390)

