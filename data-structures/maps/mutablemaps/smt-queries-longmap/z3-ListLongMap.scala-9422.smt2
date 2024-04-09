; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112178 () Bool)

(assert start!112178)

(declare-fun b!1328039 () Bool)

(declare-fun res!881245 () Bool)

(declare-fun e!757202 () Bool)

(assert (=> b!1328039 (=> (not res!881245) (not e!757202))))

(declare-datatypes ((array!89757 0))(
  ( (array!89758 (arr!43340 (Array (_ BitVec 32) (_ BitVec 64))) (size!43891 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89757)

(declare-datatypes ((List!30889 0))(
  ( (Nil!30886) (Cons!30885 (h!32094 (_ BitVec 64)) (t!44902 List!30889)) )
))
(declare-fun arrayNoDuplicates!0 (array!89757 (_ BitVec 32) List!30889) Bool)

(assert (=> b!1328039 (= res!881245 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30886))))

(declare-fun res!881244 () Bool)

(assert (=> start!112178 (=> (not res!881244) (not e!757202))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112178 (= res!881244 (validMask!0 mask!1998))))

(assert (=> start!112178 e!757202))

(assert (=> start!112178 true))

(declare-datatypes ((V!53699 0))(
  ( (V!53700 (val!18298 Int)) )
))
(declare-datatypes ((ValueCell!17325 0))(
  ( (ValueCellFull!17325 (v!20933 V!53699)) (EmptyCell!17325) )
))
(declare-datatypes ((array!89759 0))(
  ( (array!89760 (arr!43341 (Array (_ BitVec 32) ValueCell!17325)) (size!43892 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89759)

(declare-fun e!757204 () Bool)

(declare-fun array_inv!32651 (array!89759) Bool)

(assert (=> start!112178 (and (array_inv!32651 _values!1320) e!757204)))

(declare-fun array_inv!32652 (array!89757) Bool)

(assert (=> start!112178 (array_inv!32652 _keys!1590)))

(declare-fun b!1328040 () Bool)

(declare-fun e!757200 () Bool)

(declare-fun tp_is_empty!36447 () Bool)

(assert (=> b!1328040 (= e!757200 tp_is_empty!36447)))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun b!1328041 () Bool)

(assert (=> b!1328041 (= e!757202 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43891 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsgt from!1980 (size!43891 _keys!1590))))))

(declare-fun mapIsEmpty!56344 () Bool)

(declare-fun mapRes!56344 () Bool)

(assert (=> mapIsEmpty!56344 mapRes!56344))

(declare-fun b!1328042 () Bool)

(declare-fun res!881243 () Bool)

(assert (=> b!1328042 (=> (not res!881243) (not e!757202))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89757 (_ BitVec 32)) Bool)

(assert (=> b!1328042 (= res!881243 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1328043 () Bool)

(declare-fun e!757201 () Bool)

(assert (=> b!1328043 (= e!757204 (and e!757201 mapRes!56344))))

(declare-fun condMapEmpty!56344 () Bool)

(declare-fun mapDefault!56344 () ValueCell!17325)

(assert (=> b!1328043 (= condMapEmpty!56344 (= (arr!43341 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17325)) mapDefault!56344)))))

(declare-fun b!1328044 () Bool)

(declare-fun res!881246 () Bool)

(assert (=> b!1328044 (=> (not res!881246) (not e!757202))))

(assert (=> b!1328044 (= res!881246 (and (= (size!43892 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43891 _keys!1590) (size!43892 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1328045 () Bool)

(assert (=> b!1328045 (= e!757201 tp_is_empty!36447)))

(declare-fun mapNonEmpty!56344 () Bool)

(declare-fun tp!107252 () Bool)

(assert (=> mapNonEmpty!56344 (= mapRes!56344 (and tp!107252 e!757200))))

(declare-fun mapValue!56344 () ValueCell!17325)

(declare-fun mapKey!56344 () (_ BitVec 32))

(declare-fun mapRest!56344 () (Array (_ BitVec 32) ValueCell!17325))

(assert (=> mapNonEmpty!56344 (= (arr!43341 _values!1320) (store mapRest!56344 mapKey!56344 mapValue!56344))))

(assert (= (and start!112178 res!881244) b!1328044))

(assert (= (and b!1328044 res!881246) b!1328042))

(assert (= (and b!1328042 res!881243) b!1328039))

(assert (= (and b!1328039 res!881245) b!1328041))

(assert (= (and b!1328043 condMapEmpty!56344) mapIsEmpty!56344))

(assert (= (and b!1328043 (not condMapEmpty!56344)) mapNonEmpty!56344))

(get-info :version)

(assert (= (and mapNonEmpty!56344 ((_ is ValueCellFull!17325) mapValue!56344)) b!1328040))

(assert (= (and b!1328043 ((_ is ValueCellFull!17325) mapDefault!56344)) b!1328045))

(assert (= start!112178 b!1328043))

(declare-fun m!1217157 () Bool)

(assert (=> b!1328039 m!1217157))

(declare-fun m!1217159 () Bool)

(assert (=> start!112178 m!1217159))

(declare-fun m!1217161 () Bool)

(assert (=> start!112178 m!1217161))

(declare-fun m!1217163 () Bool)

(assert (=> start!112178 m!1217163))

(declare-fun m!1217165 () Bool)

(assert (=> b!1328042 m!1217165))

(declare-fun m!1217167 () Bool)

(assert (=> mapNonEmpty!56344 m!1217167))

(check-sat (not b!1328042) tp_is_empty!36447 (not mapNonEmpty!56344) (not b!1328039) (not start!112178))
(check-sat)
