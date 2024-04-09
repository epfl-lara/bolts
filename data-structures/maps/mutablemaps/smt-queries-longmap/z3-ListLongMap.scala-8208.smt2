; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100152 () Bool)

(assert start!100152)

(declare-fun res!794352 () Bool)

(declare-fun e!678524 () Bool)

(assert (=> start!100152 (=> (not res!794352) (not e!678524))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77212 0))(
  ( (array!77213 (arr!37252 (Array (_ BitVec 32) (_ BitVec 64))) (size!37789 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77212)

(assert (=> start!100152 (= res!794352 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37789 _keys!1208))))))

(assert (=> start!100152 e!678524))

(declare-fun array_inv!28298 (array!77212) Bool)

(assert (=> start!100152 (array_inv!28298 _keys!1208)))

(assert (=> start!100152 true))

(declare-datatypes ((V!45427 0))(
  ( (V!45428 (val!15169 Int)) )
))
(declare-datatypes ((ValueCell!14403 0))(
  ( (ValueCellFull!14403 (v!17808 V!45427)) (EmptyCell!14403) )
))
(declare-datatypes ((array!77214 0))(
  ( (array!77215 (arr!37253 (Array (_ BitVec 32) ValueCell!14403)) (size!37790 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77214)

(declare-fun e!678525 () Bool)

(declare-fun array_inv!28299 (array!77214) Bool)

(assert (=> start!100152 (and (array_inv!28299 _values!996) e!678525)))

(declare-fun mapNonEmpty!47165 () Bool)

(declare-fun mapRes!47165 () Bool)

(declare-fun tp!89776 () Bool)

(declare-fun e!678522 () Bool)

(assert (=> mapNonEmpty!47165 (= mapRes!47165 (and tp!89776 e!678522))))

(declare-fun mapValue!47165 () ValueCell!14403)

(declare-fun mapRest!47165 () (Array (_ BitVec 32) ValueCell!14403))

(declare-fun mapKey!47165 () (_ BitVec 32))

(assert (=> mapNonEmpty!47165 (= (arr!37253 _values!996) (store mapRest!47165 mapKey!47165 mapValue!47165))))

(declare-fun b!1193807 () Bool)

(declare-fun res!794350 () Bool)

(assert (=> b!1193807 (=> (not res!794350) (not e!678524))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1193807 (= res!794350 (validMask!0 mask!1564))))

(declare-fun b!1193808 () Bool)

(assert (=> b!1193808 (= e!678524 false)))

(declare-fun lt!542637 () Bool)

(declare-datatypes ((List!26406 0))(
  ( (Nil!26403) (Cons!26402 (h!27611 (_ BitVec 64)) (t!39084 List!26406)) )
))
(declare-fun arrayNoDuplicates!0 (array!77212 (_ BitVec 32) List!26406) Bool)

(assert (=> b!1193808 (= lt!542637 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26403))))

(declare-fun b!1193809 () Bool)

(declare-fun res!794351 () Bool)

(assert (=> b!1193809 (=> (not res!794351) (not e!678524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77212 (_ BitVec 32)) Bool)

(assert (=> b!1193809 (= res!794351 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1193810 () Bool)

(declare-fun e!678526 () Bool)

(assert (=> b!1193810 (= e!678525 (and e!678526 mapRes!47165))))

(declare-fun condMapEmpty!47165 () Bool)

(declare-fun mapDefault!47165 () ValueCell!14403)

(assert (=> b!1193810 (= condMapEmpty!47165 (= (arr!37253 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14403)) mapDefault!47165)))))

(declare-fun b!1193811 () Bool)

(declare-fun res!794353 () Bool)

(assert (=> b!1193811 (=> (not res!794353) (not e!678524))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1193811 (= res!794353 (and (= (size!37790 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37789 _keys!1208) (size!37790 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1193812 () Bool)

(declare-fun tp_is_empty!30225 () Bool)

(assert (=> b!1193812 (= e!678526 tp_is_empty!30225)))

(declare-fun b!1193813 () Bool)

(assert (=> b!1193813 (= e!678522 tp_is_empty!30225)))

(declare-fun mapIsEmpty!47165 () Bool)

(assert (=> mapIsEmpty!47165 mapRes!47165))

(assert (= (and start!100152 res!794352) b!1193807))

(assert (= (and b!1193807 res!794350) b!1193811))

(assert (= (and b!1193811 res!794353) b!1193809))

(assert (= (and b!1193809 res!794351) b!1193808))

(assert (= (and b!1193810 condMapEmpty!47165) mapIsEmpty!47165))

(assert (= (and b!1193810 (not condMapEmpty!47165)) mapNonEmpty!47165))

(get-info :version)

(assert (= (and mapNonEmpty!47165 ((_ is ValueCellFull!14403) mapValue!47165)) b!1193813))

(assert (= (and b!1193810 ((_ is ValueCellFull!14403) mapDefault!47165)) b!1193812))

(assert (= start!100152 b!1193810))

(declare-fun m!1102001 () Bool)

(assert (=> start!100152 m!1102001))

(declare-fun m!1102003 () Bool)

(assert (=> start!100152 m!1102003))

(declare-fun m!1102005 () Bool)

(assert (=> b!1193808 m!1102005))

(declare-fun m!1102007 () Bool)

(assert (=> b!1193807 m!1102007))

(declare-fun m!1102009 () Bool)

(assert (=> mapNonEmpty!47165 m!1102009))

(declare-fun m!1102011 () Bool)

(assert (=> b!1193809 m!1102011))

(check-sat (not mapNonEmpty!47165) (not start!100152) tp_is_empty!30225 (not b!1193808) (not b!1193809) (not b!1193807))
(check-sat)
