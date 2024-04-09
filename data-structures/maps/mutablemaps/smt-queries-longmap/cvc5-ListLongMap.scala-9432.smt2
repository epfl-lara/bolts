; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112236 () Bool)

(assert start!112236)

(declare-fun b_free!30595 () Bool)

(declare-fun b_next!30595 () Bool)

(assert (=> start!112236 (= b_free!30595 (not b_next!30595))))

(declare-fun tp!107423 () Bool)

(declare-fun b_and!49255 () Bool)

(assert (=> start!112236 (= tp!107423 b_and!49255)))

(declare-fun b!1328766 () Bool)

(declare-fun e!757638 () Bool)

(declare-fun tp_is_empty!36505 () Bool)

(assert (=> b!1328766 (= e!757638 tp_is_empty!36505)))

(declare-fun b!1328767 () Bool)

(declare-fun e!757635 () Bool)

(assert (=> b!1328767 (= e!757635 false)))

(declare-datatypes ((V!53777 0))(
  ( (V!53778 (val!18327 Int)) )
))
(declare-datatypes ((ValueCell!17354 0))(
  ( (ValueCellFull!17354 (v!20962 V!53777)) (EmptyCell!17354) )
))
(declare-datatypes ((array!89867 0))(
  ( (array!89868 (arr!43395 (Array (_ BitVec 32) ValueCell!17354)) (size!43946 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89867)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89869 0))(
  ( (array!89870 (arr!43396 (Array (_ BitVec 32) (_ BitVec 64))) (size!43947 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89869)

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun lt!590813 () Bool)

(declare-fun minValue!1262 () V!53777)

(declare-fun zeroValue!1262 () V!53777)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!23738 0))(
  ( (tuple2!23739 (_1!11879 (_ BitVec 64)) (_2!11879 V!53777)) )
))
(declare-datatypes ((List!30927 0))(
  ( (Nil!30924) (Cons!30923 (h!32132 tuple2!23738) (t!44942 List!30927)) )
))
(declare-datatypes ((ListLongMap!21407 0))(
  ( (ListLongMap!21408 (toList!10719 List!30927)) )
))
(declare-fun contains!8819 (ListLongMap!21407 (_ BitVec 64)) Bool)

(declare-fun +!4617 (ListLongMap!21407 tuple2!23738) ListLongMap!21407)

(declare-fun getCurrentListMapNoExtraKeys!6335 (array!89869 array!89867 (_ BitVec 32) (_ BitVec 32) V!53777 V!53777 (_ BitVec 32) Int) ListLongMap!21407)

(declare-fun get!21901 (ValueCell!17354 V!53777) V!53777)

(declare-fun dynLambda!3654 (Int (_ BitVec 64)) V!53777)

(assert (=> b!1328767 (= lt!590813 (contains!8819 (+!4617 (+!4617 (getCurrentListMapNoExtraKeys!6335 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!23739 (select (arr!43396 _keys!1590) from!1980) (get!21901 (select (arr!43395 _values!1320) from!1980) (dynLambda!3654 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23739 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) k!1153))))

(declare-fun b!1328768 () Bool)

(declare-fun e!757639 () Bool)

(assert (=> b!1328768 (= e!757639 tp_is_empty!36505)))

(declare-fun b!1328769 () Bool)

(declare-fun res!881713 () Bool)

(assert (=> b!1328769 (=> (not res!881713) (not e!757635))))

(assert (=> b!1328769 (= res!881713 (and (= (size!43946 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43947 _keys!1590) (size!43946 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1328770 () Bool)

(declare-fun res!881712 () Bool)

(assert (=> b!1328770 (=> (not res!881712) (not e!757635))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89869 (_ BitVec 32)) Bool)

(assert (=> b!1328770 (= res!881712 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1328771 () Bool)

(declare-fun res!881716 () Bool)

(assert (=> b!1328771 (=> (not res!881716) (not e!757635))))

(assert (=> b!1328771 (= res!881716 (not (= (select (arr!43396 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1328772 () Bool)

(declare-fun res!881714 () Bool)

(assert (=> b!1328772 (=> (not res!881714) (not e!757635))))

(assert (=> b!1328772 (= res!881714 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43947 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1328773 () Bool)

(declare-fun res!881715 () Bool)

(assert (=> b!1328773 (=> (not res!881715) (not e!757635))))

(declare-datatypes ((List!30928 0))(
  ( (Nil!30925) (Cons!30924 (h!32133 (_ BitVec 64)) (t!44943 List!30928)) )
))
(declare-fun arrayNoDuplicates!0 (array!89869 (_ BitVec 32) List!30928) Bool)

(assert (=> b!1328773 (= res!881715 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30925))))

(declare-fun mapIsEmpty!56431 () Bool)

(declare-fun mapRes!56431 () Bool)

(assert (=> mapIsEmpty!56431 mapRes!56431))

(declare-fun b!1328774 () Bool)

(declare-fun res!881711 () Bool)

(assert (=> b!1328774 (=> (not res!881711) (not e!757635))))

(declare-fun getCurrentListMap!5651 (array!89869 array!89867 (_ BitVec 32) (_ BitVec 32) V!53777 V!53777 (_ BitVec 32) Int) ListLongMap!21407)

(assert (=> b!1328774 (= res!881711 (contains!8819 (getCurrentListMap!5651 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun res!881710 () Bool)

(assert (=> start!112236 (=> (not res!881710) (not e!757635))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112236 (= res!881710 (validMask!0 mask!1998))))

(assert (=> start!112236 e!757635))

(declare-fun e!757637 () Bool)

(declare-fun array_inv!32695 (array!89867) Bool)

(assert (=> start!112236 (and (array_inv!32695 _values!1320) e!757637)))

(assert (=> start!112236 true))

(declare-fun array_inv!32696 (array!89869) Bool)

(assert (=> start!112236 (array_inv!32696 _keys!1590)))

(assert (=> start!112236 tp!107423))

(assert (=> start!112236 tp_is_empty!36505))

(declare-fun b!1328775 () Bool)

(declare-fun res!881717 () Bool)

(assert (=> b!1328775 (=> (not res!881717) (not e!757635))))

(assert (=> b!1328775 (= res!881717 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!56431 () Bool)

(declare-fun tp!107422 () Bool)

(assert (=> mapNonEmpty!56431 (= mapRes!56431 (and tp!107422 e!757639))))

(declare-fun mapRest!56431 () (Array (_ BitVec 32) ValueCell!17354))

(declare-fun mapKey!56431 () (_ BitVec 32))

(declare-fun mapValue!56431 () ValueCell!17354)

(assert (=> mapNonEmpty!56431 (= (arr!43395 _values!1320) (store mapRest!56431 mapKey!56431 mapValue!56431))))

(declare-fun b!1328776 () Bool)

(assert (=> b!1328776 (= e!757637 (and e!757638 mapRes!56431))))

(declare-fun condMapEmpty!56431 () Bool)

(declare-fun mapDefault!56431 () ValueCell!17354)

