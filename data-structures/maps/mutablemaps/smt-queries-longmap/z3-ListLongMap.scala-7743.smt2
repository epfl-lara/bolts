; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97240 () Bool)

(assert start!97240)

(declare-fun mapNonEmpty!42970 () Bool)

(declare-fun mapRes!42970 () Bool)

(declare-fun tp!81891 () Bool)

(declare-fun e!631185 () Bool)

(assert (=> mapNonEmpty!42970 (= mapRes!42970 (and tp!81891 e!631185))))

(declare-fun mapKey!42970 () (_ BitVec 32))

(declare-datatypes ((V!41707 0))(
  ( (V!41708 (val!13774 Int)) )
))
(declare-datatypes ((ValueCell!13008 0))(
  ( (ValueCellFull!13008 (v!16408 V!41707)) (EmptyCell!13008) )
))
(declare-datatypes ((array!71742 0))(
  ( (array!71743 (arr!34520 (Array (_ BitVec 32) ValueCell!13008)) (size!35057 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71742)

(declare-fun mapRest!42970 () (Array (_ BitVec 32) ValueCell!13008))

(declare-fun mapValue!42970 () ValueCell!13008)

(assert (=> mapNonEmpty!42970 (= (arr!34520 _values!996) (store mapRest!42970 mapKey!42970 mapValue!42970))))

(declare-fun b!1105942 () Bool)

(declare-fun res!738082 () Bool)

(declare-fun e!631186 () Bool)

(assert (=> b!1105942 (=> (not res!738082) (not e!631186))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1105942 (= res!738082 (validMask!0 mask!1564))))

(declare-fun b!1105943 () Bool)

(declare-fun res!738079 () Bool)

(declare-fun e!631183 () Bool)

(assert (=> b!1105943 (=> (not res!738079) (not e!631183))))

(declare-datatypes ((array!71744 0))(
  ( (array!71745 (arr!34521 (Array (_ BitVec 32) (_ BitVec 64))) (size!35058 (_ BitVec 32))) )
))
(declare-fun lt!495368 () array!71744)

(declare-datatypes ((List!24205 0))(
  ( (Nil!24202) (Cons!24201 (h!25410 (_ BitVec 64)) (t!34477 List!24205)) )
))
(declare-fun arrayNoDuplicates!0 (array!71744 (_ BitVec 32) List!24205) Bool)

(assert (=> b!1105943 (= res!738079 (arrayNoDuplicates!0 lt!495368 #b00000000000000000000000000000000 Nil!24202))))

(declare-fun res!738086 () Bool)

(assert (=> start!97240 (=> (not res!738086) (not e!631186))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun _keys!1208 () array!71744)

(assert (=> start!97240 (= res!738086 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35058 _keys!1208))))))

(assert (=> start!97240 e!631186))

(declare-fun array_inv!26428 (array!71744) Bool)

(assert (=> start!97240 (array_inv!26428 _keys!1208)))

(assert (=> start!97240 true))

(declare-fun e!631184 () Bool)

(declare-fun array_inv!26429 (array!71742) Bool)

(assert (=> start!97240 (and (array_inv!26429 _values!996) e!631184)))

(declare-fun b!1105944 () Bool)

(assert (=> b!1105944 (= e!631183 (not true))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!71744 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1105944 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!36229 0))(
  ( (Unit!36230) )
))
(declare-fun lt!495369 () Unit!36229)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71744 (_ BitVec 64) (_ BitVec 32)) Unit!36229)

(assert (=> b!1105944 (= lt!495369 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1105945 () Bool)

(declare-fun res!738078 () Bool)

(assert (=> b!1105945 (=> (not res!738078) (not e!631186))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71744 (_ BitVec 32)) Bool)

(assert (=> b!1105945 (= res!738078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1105946 () Bool)

(declare-fun e!631187 () Bool)

(declare-fun tp_is_empty!27435 () Bool)

(assert (=> b!1105946 (= e!631187 tp_is_empty!27435)))

(declare-fun b!1105947 () Bool)

(assert (=> b!1105947 (= e!631185 tp_is_empty!27435)))

(declare-fun b!1105948 () Bool)

(declare-fun res!738081 () Bool)

(assert (=> b!1105948 (=> (not res!738081) (not e!631186))))

(assert (=> b!1105948 (= res!738081 (= (select (arr!34521 _keys!1208) i!673) k0!934))))

(declare-fun b!1105949 () Bool)

(declare-fun res!738085 () Bool)

(assert (=> b!1105949 (=> (not res!738085) (not e!631186))))

(assert (=> b!1105949 (= res!738085 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35058 _keys!1208))))))

(declare-fun b!1105950 () Bool)

(assert (=> b!1105950 (= e!631186 e!631183)))

(declare-fun res!738084 () Bool)

(assert (=> b!1105950 (=> (not res!738084) (not e!631183))))

(assert (=> b!1105950 (= res!738084 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495368 mask!1564))))

(assert (=> b!1105950 (= lt!495368 (array!71745 (store (arr!34521 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35058 _keys!1208)))))

(declare-fun b!1105951 () Bool)

(declare-fun res!738083 () Bool)

(assert (=> b!1105951 (=> (not res!738083) (not e!631186))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1105951 (= res!738083 (and (= (size!35057 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35058 _keys!1208) (size!35057 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1105952 () Bool)

(assert (=> b!1105952 (= e!631184 (and e!631187 mapRes!42970))))

(declare-fun condMapEmpty!42970 () Bool)

(declare-fun mapDefault!42970 () ValueCell!13008)

(assert (=> b!1105952 (= condMapEmpty!42970 (= (arr!34520 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13008)) mapDefault!42970)))))

(declare-fun b!1105953 () Bool)

(declare-fun res!738087 () Bool)

(assert (=> b!1105953 (=> (not res!738087) (not e!631186))))

(assert (=> b!1105953 (= res!738087 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24202))))

(declare-fun mapIsEmpty!42970 () Bool)

(assert (=> mapIsEmpty!42970 mapRes!42970))

(declare-fun b!1105954 () Bool)

(declare-fun res!738080 () Bool)

(assert (=> b!1105954 (=> (not res!738080) (not e!631186))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1105954 (= res!738080 (validKeyInArray!0 k0!934))))

(assert (= (and start!97240 res!738086) b!1105942))

(assert (= (and b!1105942 res!738082) b!1105951))

(assert (= (and b!1105951 res!738083) b!1105945))

(assert (= (and b!1105945 res!738078) b!1105953))

(assert (= (and b!1105953 res!738087) b!1105949))

(assert (= (and b!1105949 res!738085) b!1105954))

(assert (= (and b!1105954 res!738080) b!1105948))

(assert (= (and b!1105948 res!738081) b!1105950))

(assert (= (and b!1105950 res!738084) b!1105943))

(assert (= (and b!1105943 res!738079) b!1105944))

(assert (= (and b!1105952 condMapEmpty!42970) mapIsEmpty!42970))

(assert (= (and b!1105952 (not condMapEmpty!42970)) mapNonEmpty!42970))

(get-info :version)

(assert (= (and mapNonEmpty!42970 ((_ is ValueCellFull!13008) mapValue!42970)) b!1105947))

(assert (= (and b!1105952 ((_ is ValueCellFull!13008) mapDefault!42970)) b!1105946))

(assert (= start!97240 b!1105952))

(declare-fun m!1025289 () Bool)

(assert (=> b!1105943 m!1025289))

(declare-fun m!1025291 () Bool)

(assert (=> b!1105944 m!1025291))

(declare-fun m!1025293 () Bool)

(assert (=> b!1105944 m!1025293))

(declare-fun m!1025295 () Bool)

(assert (=> b!1105945 m!1025295))

(declare-fun m!1025297 () Bool)

(assert (=> b!1105948 m!1025297))

(declare-fun m!1025299 () Bool)

(assert (=> mapNonEmpty!42970 m!1025299))

(declare-fun m!1025301 () Bool)

(assert (=> b!1105953 m!1025301))

(declare-fun m!1025303 () Bool)

(assert (=> start!97240 m!1025303))

(declare-fun m!1025305 () Bool)

(assert (=> start!97240 m!1025305))

(declare-fun m!1025307 () Bool)

(assert (=> b!1105950 m!1025307))

(declare-fun m!1025309 () Bool)

(assert (=> b!1105950 m!1025309))

(declare-fun m!1025311 () Bool)

(assert (=> b!1105954 m!1025311))

(declare-fun m!1025313 () Bool)

(assert (=> b!1105942 m!1025313))

(check-sat (not start!97240) (not mapNonEmpty!42970) (not b!1105942) (not b!1105953) (not b!1105944) (not b!1105945) tp_is_empty!27435 (not b!1105950) (not b!1105954) (not b!1105943))
(check-sat)
