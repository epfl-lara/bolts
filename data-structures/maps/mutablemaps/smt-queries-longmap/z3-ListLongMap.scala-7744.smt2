; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97246 () Bool)

(assert start!97246)

(declare-fun b!1106059 () Bool)

(declare-fun e!631240 () Bool)

(assert (=> b!1106059 (= e!631240 (not true))))

(declare-datatypes ((array!71754 0))(
  ( (array!71755 (arr!34526 (Array (_ BitVec 32) (_ BitVec 64))) (size!35063 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71754)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!71754 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1106059 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!36233 0))(
  ( (Unit!36234) )
))
(declare-fun lt!495387 () Unit!36233)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71754 (_ BitVec 64) (_ BitVec 32)) Unit!36233)

(assert (=> b!1106059 (= lt!495387 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1106060 () Bool)

(declare-fun res!738177 () Bool)

(declare-fun e!631236 () Bool)

(assert (=> b!1106060 (=> (not res!738177) (not e!631236))))

(assert (=> b!1106060 (= res!738177 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35063 _keys!1208))))))

(declare-fun b!1106062 () Bool)

(declare-fun res!738173 () Bool)

(assert (=> b!1106062 (=> (not res!738173) (not e!631236))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71754 (_ BitVec 32)) Bool)

(assert (=> b!1106062 (= res!738173 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1106063 () Bool)

(declare-fun e!631237 () Bool)

(declare-fun tp_is_empty!27441 () Bool)

(assert (=> b!1106063 (= e!631237 tp_is_empty!27441)))

(declare-fun b!1106064 () Bool)

(declare-fun res!738171 () Bool)

(assert (=> b!1106064 (=> (not res!738171) (not e!631240))))

(declare-fun lt!495386 () array!71754)

(declare-datatypes ((List!24208 0))(
  ( (Nil!24205) (Cons!24204 (h!25413 (_ BitVec 64)) (t!34480 List!24208)) )
))
(declare-fun arrayNoDuplicates!0 (array!71754 (_ BitVec 32) List!24208) Bool)

(assert (=> b!1106064 (= res!738171 (arrayNoDuplicates!0 lt!495386 #b00000000000000000000000000000000 Nil!24205))))

(declare-fun b!1106065 () Bool)

(declare-fun res!738174 () Bool)

(assert (=> b!1106065 (=> (not res!738174) (not e!631236))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1106065 (= res!738174 (validKeyInArray!0 k0!934))))

(declare-fun b!1106066 () Bool)

(declare-fun res!738169 () Bool)

(assert (=> b!1106066 (=> (not res!738169) (not e!631236))))

(assert (=> b!1106066 (= res!738169 (= (select (arr!34526 _keys!1208) i!673) k0!934))))

(declare-fun b!1106067 () Bool)

(declare-fun e!631241 () Bool)

(declare-fun e!631239 () Bool)

(declare-fun mapRes!42979 () Bool)

(assert (=> b!1106067 (= e!631241 (and e!631239 mapRes!42979))))

(declare-fun condMapEmpty!42979 () Bool)

(declare-datatypes ((V!41715 0))(
  ( (V!41716 (val!13777 Int)) )
))
(declare-datatypes ((ValueCell!13011 0))(
  ( (ValueCellFull!13011 (v!16411 V!41715)) (EmptyCell!13011) )
))
(declare-datatypes ((array!71756 0))(
  ( (array!71757 (arr!34527 (Array (_ BitVec 32) ValueCell!13011)) (size!35064 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71756)

(declare-fun mapDefault!42979 () ValueCell!13011)

(assert (=> b!1106067 (= condMapEmpty!42979 (= (arr!34527 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13011)) mapDefault!42979)))))

(declare-fun b!1106068 () Bool)

(assert (=> b!1106068 (= e!631239 tp_is_empty!27441)))

(declare-fun mapNonEmpty!42979 () Bool)

(declare-fun tp!81900 () Bool)

(assert (=> mapNonEmpty!42979 (= mapRes!42979 (and tp!81900 e!631237))))

(declare-fun mapValue!42979 () ValueCell!13011)

(declare-fun mapRest!42979 () (Array (_ BitVec 32) ValueCell!13011))

(declare-fun mapKey!42979 () (_ BitVec 32))

(assert (=> mapNonEmpty!42979 (= (arr!34527 _values!996) (store mapRest!42979 mapKey!42979 mapValue!42979))))

(declare-fun b!1106069 () Bool)

(assert (=> b!1106069 (= e!631236 e!631240)))

(declare-fun res!738170 () Bool)

(assert (=> b!1106069 (=> (not res!738170) (not e!631240))))

(assert (=> b!1106069 (= res!738170 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495386 mask!1564))))

(assert (=> b!1106069 (= lt!495386 (array!71755 (store (arr!34526 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35063 _keys!1208)))))

(declare-fun b!1106061 () Bool)

(declare-fun res!738175 () Bool)

(assert (=> b!1106061 (=> (not res!738175) (not e!631236))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1106061 (= res!738175 (validMask!0 mask!1564))))

(declare-fun res!738168 () Bool)

(assert (=> start!97246 (=> (not res!738168) (not e!631236))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97246 (= res!738168 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35063 _keys!1208))))))

(assert (=> start!97246 e!631236))

(declare-fun array_inv!26434 (array!71754) Bool)

(assert (=> start!97246 (array_inv!26434 _keys!1208)))

(assert (=> start!97246 true))

(declare-fun array_inv!26435 (array!71756) Bool)

(assert (=> start!97246 (and (array_inv!26435 _values!996) e!631241)))

(declare-fun b!1106070 () Bool)

(declare-fun res!738172 () Bool)

(assert (=> b!1106070 (=> (not res!738172) (not e!631236))))

(assert (=> b!1106070 (= res!738172 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24205))))

(declare-fun mapIsEmpty!42979 () Bool)

(assert (=> mapIsEmpty!42979 mapRes!42979))

(declare-fun b!1106071 () Bool)

(declare-fun res!738176 () Bool)

(assert (=> b!1106071 (=> (not res!738176) (not e!631236))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1106071 (= res!738176 (and (= (size!35064 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35063 _keys!1208) (size!35064 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(assert (= (and start!97246 res!738168) b!1106061))

(assert (= (and b!1106061 res!738175) b!1106071))

(assert (= (and b!1106071 res!738176) b!1106062))

(assert (= (and b!1106062 res!738173) b!1106070))

(assert (= (and b!1106070 res!738172) b!1106060))

(assert (= (and b!1106060 res!738177) b!1106065))

(assert (= (and b!1106065 res!738174) b!1106066))

(assert (= (and b!1106066 res!738169) b!1106069))

(assert (= (and b!1106069 res!738170) b!1106064))

(assert (= (and b!1106064 res!738171) b!1106059))

(assert (= (and b!1106067 condMapEmpty!42979) mapIsEmpty!42979))

(assert (= (and b!1106067 (not condMapEmpty!42979)) mapNonEmpty!42979))

(get-info :version)

(assert (= (and mapNonEmpty!42979 ((_ is ValueCellFull!13011) mapValue!42979)) b!1106063))

(assert (= (and b!1106067 ((_ is ValueCellFull!13011) mapDefault!42979)) b!1106068))

(assert (= start!97246 b!1106067))

(declare-fun m!1025367 () Bool)

(assert (=> mapNonEmpty!42979 m!1025367))

(declare-fun m!1025369 () Bool)

(assert (=> b!1106061 m!1025369))

(declare-fun m!1025371 () Bool)

(assert (=> b!1106070 m!1025371))

(declare-fun m!1025373 () Bool)

(assert (=> start!97246 m!1025373))

(declare-fun m!1025375 () Bool)

(assert (=> start!97246 m!1025375))

(declare-fun m!1025377 () Bool)

(assert (=> b!1106059 m!1025377))

(declare-fun m!1025379 () Bool)

(assert (=> b!1106059 m!1025379))

(declare-fun m!1025381 () Bool)

(assert (=> b!1106069 m!1025381))

(declare-fun m!1025383 () Bool)

(assert (=> b!1106069 m!1025383))

(declare-fun m!1025385 () Bool)

(assert (=> b!1106065 m!1025385))

(declare-fun m!1025387 () Bool)

(assert (=> b!1106066 m!1025387))

(declare-fun m!1025389 () Bool)

(assert (=> b!1106062 m!1025389))

(declare-fun m!1025391 () Bool)

(assert (=> b!1106064 m!1025391))

(check-sat (not start!97246) (not b!1106059) (not b!1106061) (not b!1106065) tp_is_empty!27441 (not b!1106064) (not b!1106069) (not mapNonEmpty!42979) (not b!1106070) (not b!1106062))
(check-sat)
