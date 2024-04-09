; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112240 () Bool)

(assert start!112240)

(declare-fun b_free!30599 () Bool)

(declare-fun b_next!30599 () Bool)

(assert (=> start!112240 (= b_free!30599 (not b_next!30599))))

(declare-fun tp!107434 () Bool)

(declare-fun b_and!49263 () Bool)

(assert (=> start!112240 (= tp!107434 b_and!49263)))

(declare-fun b!1328842 () Bool)

(declare-fun res!881767 () Bool)

(declare-fun e!757665 () Bool)

(assert (=> b!1328842 (=> (not res!881767) (not e!757665))))

(declare-datatypes ((V!53781 0))(
  ( (V!53782 (val!18329 Int)) )
))
(declare-datatypes ((ValueCell!17356 0))(
  ( (ValueCellFull!17356 (v!20964 V!53781)) (EmptyCell!17356) )
))
(declare-datatypes ((array!89875 0))(
  ( (array!89876 (arr!43399 (Array (_ BitVec 32) ValueCell!17356)) (size!43950 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89875)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89877 0))(
  ( (array!89878 (arr!43400 (Array (_ BitVec 32) (_ BitVec 64))) (size!43951 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89877)

(assert (=> b!1328842 (= res!881767 (and (= (size!43950 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43951 _keys!1590) (size!43950 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1328843 () Bool)

(declare-fun res!881764 () Bool)

(assert (=> b!1328843 (=> (not res!881764) (not e!757665))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89877 (_ BitVec 32)) Bool)

(assert (=> b!1328843 (= res!881764 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1328844 () Bool)

(declare-fun res!881768 () Bool)

(assert (=> b!1328844 (=> (not res!881768) (not e!757665))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!53781)

(declare-fun zeroValue!1262 () V!53781)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!23742 0))(
  ( (tuple2!23743 (_1!11881 (_ BitVec 64)) (_2!11881 V!53781)) )
))
(declare-datatypes ((List!30931 0))(
  ( (Nil!30928) (Cons!30927 (h!32136 tuple2!23742) (t!44950 List!30931)) )
))
(declare-datatypes ((ListLongMap!21411 0))(
  ( (ListLongMap!21412 (toList!10721 List!30931)) )
))
(declare-fun contains!8821 (ListLongMap!21411 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5653 (array!89877 array!89875 (_ BitVec 32) (_ BitVec 32) V!53781 V!53781 (_ BitVec 32) Int) ListLongMap!21411)

(assert (=> b!1328844 (= res!881768 (contains!8821 (getCurrentListMap!5653 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1328845 () Bool)

(declare-fun e!757669 () Bool)

(declare-fun tp_is_empty!36509 () Bool)

(assert (=> b!1328845 (= e!757669 tp_is_empty!36509)))

(declare-fun b!1328846 () Bool)

(declare-fun res!881765 () Bool)

(assert (=> b!1328846 (=> (not res!881765) (not e!757665))))

(assert (=> b!1328846 (= res!881765 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43951 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1328847 () Bool)

(declare-fun e!757666 () Bool)

(assert (=> b!1328847 (= e!757666 tp_is_empty!36509)))

(declare-fun b!1328848 () Bool)

(declare-fun res!881770 () Bool)

(assert (=> b!1328848 (=> (not res!881770) (not e!757665))))

(declare-datatypes ((List!30932 0))(
  ( (Nil!30929) (Cons!30928 (h!32137 (_ BitVec 64)) (t!44951 List!30932)) )
))
(declare-fun arrayNoDuplicates!0 (array!89877 (_ BitVec 32) List!30932) Bool)

(assert (=> b!1328848 (= res!881770 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30929))))

(declare-fun mapNonEmpty!56437 () Bool)

(declare-fun mapRes!56437 () Bool)

(declare-fun tp!107435 () Bool)

(assert (=> mapNonEmpty!56437 (= mapRes!56437 (and tp!107435 e!757666))))

(declare-fun mapRest!56437 () (Array (_ BitVec 32) ValueCell!17356))

(declare-fun mapValue!56437 () ValueCell!17356)

(declare-fun mapKey!56437 () (_ BitVec 32))

(assert (=> mapNonEmpty!56437 (= (arr!43399 _values!1320) (store mapRest!56437 mapKey!56437 mapValue!56437))))

(declare-fun b!1328849 () Bool)

(assert (=> b!1328849 (= e!757665 false)))

(declare-fun lt!590819 () Bool)

(declare-fun +!4619 (ListLongMap!21411 tuple2!23742) ListLongMap!21411)

(declare-fun getCurrentListMapNoExtraKeys!6337 (array!89877 array!89875 (_ BitVec 32) (_ BitVec 32) V!53781 V!53781 (_ BitVec 32) Int) ListLongMap!21411)

(declare-fun get!21903 (ValueCell!17356 V!53781) V!53781)

(declare-fun dynLambda!3656 (Int (_ BitVec 64)) V!53781)

(assert (=> b!1328849 (= lt!590819 (contains!8821 (+!4619 (+!4619 (getCurrentListMapNoExtraKeys!6337 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!23743 (select (arr!43400 _keys!1590) from!1980) (get!21903 (select (arr!43399 _values!1320) from!1980) (dynLambda!3656 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23743 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) k!1153))))

(declare-fun b!1328850 () Bool)

(declare-fun res!881769 () Bool)

(assert (=> b!1328850 (=> (not res!881769) (not e!757665))))

(assert (=> b!1328850 (= res!881769 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!56437 () Bool)

(assert (=> mapIsEmpty!56437 mapRes!56437))

(declare-fun b!1328852 () Bool)

(declare-fun res!881771 () Bool)

(assert (=> b!1328852 (=> (not res!881771) (not e!757665))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1328852 (= res!881771 (validKeyInArray!0 (select (arr!43400 _keys!1590) from!1980)))))

(declare-fun b!1328853 () Bool)

(declare-fun e!757667 () Bool)

(assert (=> b!1328853 (= e!757667 (and e!757669 mapRes!56437))))

(declare-fun condMapEmpty!56437 () Bool)

(declare-fun mapDefault!56437 () ValueCell!17356)

