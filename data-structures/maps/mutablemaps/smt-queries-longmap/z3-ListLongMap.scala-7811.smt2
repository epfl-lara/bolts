; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97648 () Bool)

(assert start!97648)

(declare-fun b!1115146 () Bool)

(declare-fun res!744524 () Bool)

(declare-fun e!635533 () Bool)

(assert (=> b!1115146 (=> (not res!744524) (not e!635533))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1115146 (= res!744524 (validMask!0 mask!1564))))

(declare-fun b!1115147 () Bool)

(declare-fun res!744527 () Bool)

(assert (=> b!1115147 (=> (not res!744527) (not e!635533))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1115147 (= res!744527 (validKeyInArray!0 k0!934))))

(declare-fun b!1115148 () Bool)

(declare-fun res!744531 () Bool)

(assert (=> b!1115148 (=> (not res!744531) (not e!635533))))

(declare-datatypes ((array!72530 0))(
  ( (array!72531 (arr!34914 (Array (_ BitVec 32) (_ BitVec 64))) (size!35451 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72530)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1115148 (= res!744531 (= (select (arr!34914 _keys!1208) i!673) k0!934))))

(declare-fun b!1115149 () Bool)

(declare-fun e!635536 () Bool)

(assert (=> b!1115149 (= e!635533 e!635536)))

(declare-fun res!744528 () Bool)

(assert (=> b!1115149 (=> (not res!744528) (not e!635536))))

(declare-fun lt!496916 () array!72530)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72530 (_ BitVec 32)) Bool)

(assert (=> b!1115149 (= res!744528 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496916 mask!1564))))

(assert (=> b!1115149 (= lt!496916 (array!72531 (store (arr!34914 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35451 _keys!1208)))))

(declare-fun b!1115150 () Bool)

(declare-fun e!635532 () Bool)

(declare-fun tp_is_empty!27843 () Bool)

(assert (=> b!1115150 (= e!635532 tp_is_empty!27843)))

(declare-fun mapIsEmpty!43582 () Bool)

(declare-fun mapRes!43582 () Bool)

(assert (=> mapIsEmpty!43582 mapRes!43582))

(declare-fun mapNonEmpty!43582 () Bool)

(declare-fun tp!82827 () Bool)

(declare-fun e!635535 () Bool)

(assert (=> mapNonEmpty!43582 (= mapRes!43582 (and tp!82827 e!635535))))

(declare-fun mapKey!43582 () (_ BitVec 32))

(declare-datatypes ((V!42251 0))(
  ( (V!42252 (val!13978 Int)) )
))
(declare-datatypes ((ValueCell!13212 0))(
  ( (ValueCellFull!13212 (v!16612 V!42251)) (EmptyCell!13212) )
))
(declare-fun mapRest!43582 () (Array (_ BitVec 32) ValueCell!13212))

(declare-fun mapValue!43582 () ValueCell!13212)

(declare-datatypes ((array!72532 0))(
  ( (array!72533 (arr!34915 (Array (_ BitVec 32) ValueCell!13212)) (size!35452 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72532)

(assert (=> mapNonEmpty!43582 (= (arr!34915 _values!996) (store mapRest!43582 mapKey!43582 mapValue!43582))))

(declare-fun b!1115151 () Bool)

(declare-fun res!744530 () Bool)

(assert (=> b!1115151 (=> (not res!744530) (not e!635533))))

(declare-datatypes ((List!24449 0))(
  ( (Nil!24446) (Cons!24445 (h!25654 (_ BitVec 64)) (t!34937 List!24449)) )
))
(declare-fun arrayNoDuplicates!0 (array!72530 (_ BitVec 32) List!24449) Bool)

(assert (=> b!1115151 (= res!744530 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24446))))

(declare-fun b!1115152 () Bool)

(declare-fun res!744522 () Bool)

(assert (=> b!1115152 (=> (not res!744522) (not e!635533))))

(assert (=> b!1115152 (= res!744522 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35451 _keys!1208))))))

(declare-fun res!744525 () Bool)

(assert (=> start!97648 (=> (not res!744525) (not e!635533))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97648 (= res!744525 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35451 _keys!1208))))))

(assert (=> start!97648 e!635533))

(declare-fun array_inv!26704 (array!72530) Bool)

(assert (=> start!97648 (array_inv!26704 _keys!1208)))

(assert (=> start!97648 true))

(declare-fun e!635534 () Bool)

(declare-fun array_inv!26705 (array!72532) Bool)

(assert (=> start!97648 (and (array_inv!26705 _values!996) e!635534)))

(declare-fun b!1115153 () Bool)

(declare-fun res!744526 () Bool)

(assert (=> b!1115153 (=> (not res!744526) (not e!635536))))

(assert (=> b!1115153 (= res!744526 (arrayNoDuplicates!0 lt!496916 #b00000000000000000000000000000000 Nil!24446))))

(declare-fun b!1115154 () Bool)

(declare-fun res!744523 () Bool)

(assert (=> b!1115154 (=> (not res!744523) (not e!635533))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1115154 (= res!744523 (and (= (size!35452 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35451 _keys!1208) (size!35452 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1115155 () Bool)

(assert (=> b!1115155 (= e!635534 (and e!635532 mapRes!43582))))

(declare-fun condMapEmpty!43582 () Bool)

(declare-fun mapDefault!43582 () ValueCell!13212)

(assert (=> b!1115155 (= condMapEmpty!43582 (= (arr!34915 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13212)) mapDefault!43582)))))

(declare-fun b!1115156 () Bool)

(assert (=> b!1115156 (= e!635535 tp_is_empty!27843)))

(declare-fun b!1115157 () Bool)

(declare-fun res!744529 () Bool)

(assert (=> b!1115157 (=> (not res!744529) (not e!635533))))

(assert (=> b!1115157 (= res!744529 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1115158 () Bool)

(assert (=> b!1115158 (= e!635536 (not true))))

(declare-fun arrayContainsKey!0 (array!72530 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1115158 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36501 0))(
  ( (Unit!36502) )
))
(declare-fun lt!496917 () Unit!36501)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72530 (_ BitVec 64) (_ BitVec 32)) Unit!36501)

(assert (=> b!1115158 (= lt!496917 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!97648 res!744525) b!1115146))

(assert (= (and b!1115146 res!744524) b!1115154))

(assert (= (and b!1115154 res!744523) b!1115157))

(assert (= (and b!1115157 res!744529) b!1115151))

(assert (= (and b!1115151 res!744530) b!1115152))

(assert (= (and b!1115152 res!744522) b!1115147))

(assert (= (and b!1115147 res!744527) b!1115148))

(assert (= (and b!1115148 res!744531) b!1115149))

(assert (= (and b!1115149 res!744528) b!1115153))

(assert (= (and b!1115153 res!744526) b!1115158))

(assert (= (and b!1115155 condMapEmpty!43582) mapIsEmpty!43582))

(assert (= (and b!1115155 (not condMapEmpty!43582)) mapNonEmpty!43582))

(get-info :version)

(assert (= (and mapNonEmpty!43582 ((_ is ValueCellFull!13212) mapValue!43582)) b!1115156))

(assert (= (and b!1115155 ((_ is ValueCellFull!13212) mapDefault!43582)) b!1115150))

(assert (= start!97648 b!1115155))

(declare-fun m!1031889 () Bool)

(assert (=> start!97648 m!1031889))

(declare-fun m!1031891 () Bool)

(assert (=> start!97648 m!1031891))

(declare-fun m!1031893 () Bool)

(assert (=> b!1115146 m!1031893))

(declare-fun m!1031895 () Bool)

(assert (=> b!1115148 m!1031895))

(declare-fun m!1031897 () Bool)

(assert (=> b!1115151 m!1031897))

(declare-fun m!1031899 () Bool)

(assert (=> b!1115158 m!1031899))

(declare-fun m!1031901 () Bool)

(assert (=> b!1115158 m!1031901))

(declare-fun m!1031903 () Bool)

(assert (=> b!1115153 m!1031903))

(declare-fun m!1031905 () Bool)

(assert (=> b!1115149 m!1031905))

(declare-fun m!1031907 () Bool)

(assert (=> b!1115149 m!1031907))

(declare-fun m!1031909 () Bool)

(assert (=> b!1115147 m!1031909))

(declare-fun m!1031911 () Bool)

(assert (=> b!1115157 m!1031911))

(declare-fun m!1031913 () Bool)

(assert (=> mapNonEmpty!43582 m!1031913))

(check-sat (not b!1115153) tp_is_empty!27843 (not b!1115147) (not b!1115151) (not b!1115146) (not mapNonEmpty!43582) (not b!1115157) (not start!97648) (not b!1115149) (not b!1115158))
(check-sat)
