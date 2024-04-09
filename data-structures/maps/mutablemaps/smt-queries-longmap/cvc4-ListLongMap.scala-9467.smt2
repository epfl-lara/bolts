; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112450 () Bool)

(assert start!112450)

(declare-fun b_free!30809 () Bool)

(declare-fun b_next!30809 () Bool)

(assert (=> start!112450 (= b_free!30809 (not b_next!30809))))

(declare-fun tp!108065 () Bool)

(declare-fun b_and!49661 () Bool)

(assert (=> start!112450 (= tp!108065 b_and!49661)))

(declare-fun b!1332670 () Bool)

(declare-fun res!884461 () Bool)

(declare-fun e!759242 () Bool)

(assert (=> b!1332670 (=> (not res!884461) (not e!759242))))

(declare-datatypes ((array!90285 0))(
  ( (array!90286 (arr!43604 (Array (_ BitVec 32) (_ BitVec 64))) (size!44155 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90285)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90285 (_ BitVec 32)) Bool)

(assert (=> b!1332670 (= res!884461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1332671 () Bool)

(declare-fun res!884460 () Bool)

(assert (=> b!1332671 (=> (not res!884460) (not e!759242))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1332671 (= res!884460 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44155 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1332672 () Bool)

(declare-fun res!884459 () Bool)

(assert (=> b!1332672 (=> (not res!884459) (not e!759242))))

(declare-datatypes ((List!31088 0))(
  ( (Nil!31085) (Cons!31084 (h!32293 (_ BitVec 64)) (t!45293 List!31088)) )
))
(declare-fun arrayNoDuplicates!0 (array!90285 (_ BitVec 32) List!31088) Bool)

(assert (=> b!1332672 (= res!884459 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31085))))

(declare-fun mapNonEmpty!56752 () Bool)

(declare-fun mapRes!56752 () Bool)

(declare-fun tp!108064 () Bool)

(declare-fun e!759244 () Bool)

(assert (=> mapNonEmpty!56752 (= mapRes!56752 (and tp!108064 e!759244))))

(declare-datatypes ((V!54061 0))(
  ( (V!54062 (val!18434 Int)) )
))
(declare-datatypes ((ValueCell!17461 0))(
  ( (ValueCellFull!17461 (v!21069 V!54061)) (EmptyCell!17461) )
))
(declare-datatypes ((array!90287 0))(
  ( (array!90288 (arr!43605 (Array (_ BitVec 32) ValueCell!17461)) (size!44156 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90287)

(declare-fun mapKey!56752 () (_ BitVec 32))

(declare-fun mapValue!56752 () ValueCell!17461)

(declare-fun mapRest!56752 () (Array (_ BitVec 32) ValueCell!17461))

(assert (=> mapNonEmpty!56752 (= (arr!43605 _values!1320) (store mapRest!56752 mapKey!56752 mapValue!56752))))

(declare-fun b!1332673 () Bool)

(declare-fun res!884462 () Bool)

(assert (=> b!1332673 (=> (not res!884462) (not e!759242))))

(assert (=> b!1332673 (= res!884462 (and (= (size!44156 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44155 _keys!1590) (size!44156 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1332674 () Bool)

(declare-fun tp_is_empty!36719 () Bool)

(assert (=> b!1332674 (= e!759244 tp_is_empty!36719)))

(declare-fun b!1332675 () Bool)

(assert (=> b!1332675 (= e!759242 false)))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54061)

(declare-fun zeroValue!1262 () V!54061)

(declare-fun lt!591998 () Bool)

(declare-datatypes ((tuple2!23910 0))(
  ( (tuple2!23911 (_1!11965 (_ BitVec 64)) (_2!11965 V!54061)) )
))
(declare-datatypes ((List!31089 0))(
  ( (Nil!31086) (Cons!31085 (h!32294 tuple2!23910) (t!45294 List!31089)) )
))
(declare-datatypes ((ListLongMap!21579 0))(
  ( (ListLongMap!21580 (toList!10805 List!31089)) )
))
(declare-fun contains!8905 (ListLongMap!21579 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5726 (array!90285 array!90287 (_ BitVec 32) (_ BitVec 32) V!54061 V!54061 (_ BitVec 32) Int) ListLongMap!21579)

(assert (=> b!1332675 (= lt!591998 (contains!8905 (getCurrentListMap!5726 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun mapIsEmpty!56752 () Bool)

(assert (=> mapIsEmpty!56752 mapRes!56752))

(declare-fun res!884458 () Bool)

(assert (=> start!112450 (=> (not res!884458) (not e!759242))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112450 (= res!884458 (validMask!0 mask!1998))))

(assert (=> start!112450 e!759242))

(declare-fun e!759240 () Bool)

(declare-fun array_inv!32833 (array!90287) Bool)

(assert (=> start!112450 (and (array_inv!32833 _values!1320) e!759240)))

(assert (=> start!112450 true))

(declare-fun array_inv!32834 (array!90285) Bool)

(assert (=> start!112450 (array_inv!32834 _keys!1590)))

(assert (=> start!112450 tp!108065))

(assert (=> start!112450 tp_is_empty!36719))

(declare-fun b!1332676 () Bool)

(declare-fun e!759243 () Bool)

(assert (=> b!1332676 (= e!759243 tp_is_empty!36719)))

(declare-fun b!1332677 () Bool)

(assert (=> b!1332677 (= e!759240 (and e!759243 mapRes!56752))))

(declare-fun condMapEmpty!56752 () Bool)

(declare-fun mapDefault!56752 () ValueCell!17461)

