; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97738 () Bool)

(assert start!97738)

(declare-fun b!1116901 () Bool)

(declare-fun res!745877 () Bool)

(declare-fun e!636344 () Bool)

(assert (=> b!1116901 (=> (not res!745877) (not e!636344))))

(declare-datatypes ((array!72704 0))(
  ( (array!72705 (arr!35001 (Array (_ BitVec 32) (_ BitVec 64))) (size!35538 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72704)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1116901 (= res!745877 (= (select (arr!35001 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!43717 () Bool)

(declare-fun mapRes!43717 () Bool)

(assert (=> mapIsEmpty!43717 mapRes!43717))

(declare-fun b!1116902 () Bool)

(declare-fun e!636343 () Bool)

(assert (=> b!1116902 (= e!636344 e!636343)))

(declare-fun res!745879 () Bool)

(assert (=> b!1116902 (=> (not res!745879) (not e!636343))))

(declare-fun lt!497187 () array!72704)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72704 (_ BitVec 32)) Bool)

(assert (=> b!1116902 (= res!745879 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497187 mask!1564))))

(assert (=> b!1116902 (= lt!497187 (array!72705 (store (arr!35001 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35538 _keys!1208)))))

(declare-fun b!1116903 () Bool)

(declare-fun res!745872 () Bool)

(assert (=> b!1116903 (=> (not res!745872) (not e!636344))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1116903 (= res!745872 (validKeyInArray!0 k0!934))))

(declare-fun b!1116904 () Bool)

(declare-fun e!636347 () Bool)

(declare-fun e!636342 () Bool)

(assert (=> b!1116904 (= e!636347 (and e!636342 mapRes!43717))))

(declare-fun condMapEmpty!43717 () Bool)

(declare-datatypes ((V!42371 0))(
  ( (V!42372 (val!14023 Int)) )
))
(declare-datatypes ((ValueCell!13257 0))(
  ( (ValueCellFull!13257 (v!16657 V!42371)) (EmptyCell!13257) )
))
(declare-datatypes ((array!72706 0))(
  ( (array!72707 (arr!35002 (Array (_ BitVec 32) ValueCell!13257)) (size!35539 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72706)

(declare-fun mapDefault!43717 () ValueCell!13257)

(assert (=> b!1116904 (= condMapEmpty!43717 (= (arr!35002 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13257)) mapDefault!43717)))))

(declare-fun b!1116905 () Bool)

(declare-fun tp_is_empty!27933 () Bool)

(assert (=> b!1116905 (= e!636342 tp_is_empty!27933)))

(declare-fun b!1116906 () Bool)

(declare-fun e!636345 () Bool)

(assert (=> b!1116906 (= e!636345 tp_is_empty!27933)))

(declare-fun b!1116908 () Bool)

(declare-fun res!745881 () Bool)

(assert (=> b!1116908 (=> (not res!745881) (not e!636344))))

(assert (=> b!1116908 (= res!745881 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1116909 () Bool)

(declare-fun res!745875 () Bool)

(assert (=> b!1116909 (=> (not res!745875) (not e!636344))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1116909 (= res!745875 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!43717 () Bool)

(declare-fun tp!82962 () Bool)

(assert (=> mapNonEmpty!43717 (= mapRes!43717 (and tp!82962 e!636345))))

(declare-fun mapKey!43717 () (_ BitVec 32))

(declare-fun mapValue!43717 () ValueCell!13257)

(declare-fun mapRest!43717 () (Array (_ BitVec 32) ValueCell!13257))

(assert (=> mapNonEmpty!43717 (= (arr!35002 _values!996) (store mapRest!43717 mapKey!43717 mapValue!43717))))

(declare-fun b!1116910 () Bool)

(assert (=> b!1116910 (= e!636343 (not true))))

(declare-fun arrayContainsKey!0 (array!72704 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1116910 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36561 0))(
  ( (Unit!36562) )
))
(declare-fun lt!497186 () Unit!36561)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72704 (_ BitVec 64) (_ BitVec 32)) Unit!36561)

(assert (=> b!1116910 (= lt!497186 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1116911 () Bool)

(declare-fun res!745878 () Bool)

(assert (=> b!1116911 (=> (not res!745878) (not e!636344))))

(assert (=> b!1116911 (= res!745878 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35538 _keys!1208))))))

(declare-fun b!1116907 () Bool)

(declare-fun res!745873 () Bool)

(assert (=> b!1116907 (=> (not res!745873) (not e!636344))))

(declare-datatypes ((List!24483 0))(
  ( (Nil!24480) (Cons!24479 (h!25688 (_ BitVec 64)) (t!34971 List!24483)) )
))
(declare-fun arrayNoDuplicates!0 (array!72704 (_ BitVec 32) List!24483) Bool)

(assert (=> b!1116907 (= res!745873 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24480))))

(declare-fun res!745876 () Bool)

(assert (=> start!97738 (=> (not res!745876) (not e!636344))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97738 (= res!745876 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35538 _keys!1208))))))

(assert (=> start!97738 e!636344))

(declare-fun array_inv!26760 (array!72704) Bool)

(assert (=> start!97738 (array_inv!26760 _keys!1208)))

(assert (=> start!97738 true))

(declare-fun array_inv!26761 (array!72706) Bool)

(assert (=> start!97738 (and (array_inv!26761 _values!996) e!636347)))

(declare-fun b!1116912 () Bool)

(declare-fun res!745874 () Bool)

(assert (=> b!1116912 (=> (not res!745874) (not e!636344))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1116912 (= res!745874 (and (= (size!35539 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35538 _keys!1208) (size!35539 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1116913 () Bool)

(declare-fun res!745880 () Bool)

(assert (=> b!1116913 (=> (not res!745880) (not e!636343))))

(assert (=> b!1116913 (= res!745880 (arrayNoDuplicates!0 lt!497187 #b00000000000000000000000000000000 Nil!24480))))

(assert (= (and start!97738 res!745876) b!1116909))

(assert (= (and b!1116909 res!745875) b!1116912))

(assert (= (and b!1116912 res!745874) b!1116908))

(assert (= (and b!1116908 res!745881) b!1116907))

(assert (= (and b!1116907 res!745873) b!1116911))

(assert (= (and b!1116911 res!745878) b!1116903))

(assert (= (and b!1116903 res!745872) b!1116901))

(assert (= (and b!1116901 res!745877) b!1116902))

(assert (= (and b!1116902 res!745879) b!1116913))

(assert (= (and b!1116913 res!745880) b!1116910))

(assert (= (and b!1116904 condMapEmpty!43717) mapIsEmpty!43717))

(assert (= (and b!1116904 (not condMapEmpty!43717)) mapNonEmpty!43717))

(get-info :version)

(assert (= (and mapNonEmpty!43717 ((_ is ValueCellFull!13257) mapValue!43717)) b!1116906))

(assert (= (and b!1116904 ((_ is ValueCellFull!13257) mapDefault!43717)) b!1116905))

(assert (= start!97738 b!1116904))

(declare-fun m!1033059 () Bool)

(assert (=> b!1116902 m!1033059))

(declare-fun m!1033061 () Bool)

(assert (=> b!1116902 m!1033061))

(declare-fun m!1033063 () Bool)

(assert (=> b!1116903 m!1033063))

(declare-fun m!1033065 () Bool)

(assert (=> b!1116913 m!1033065))

(declare-fun m!1033067 () Bool)

(assert (=> start!97738 m!1033067))

(declare-fun m!1033069 () Bool)

(assert (=> start!97738 m!1033069))

(declare-fun m!1033071 () Bool)

(assert (=> b!1116908 m!1033071))

(declare-fun m!1033073 () Bool)

(assert (=> b!1116907 m!1033073))

(declare-fun m!1033075 () Bool)

(assert (=> b!1116910 m!1033075))

(declare-fun m!1033077 () Bool)

(assert (=> b!1116910 m!1033077))

(declare-fun m!1033079 () Bool)

(assert (=> b!1116901 m!1033079))

(declare-fun m!1033081 () Bool)

(assert (=> b!1116909 m!1033081))

(declare-fun m!1033083 () Bool)

(assert (=> mapNonEmpty!43717 m!1033083))

(check-sat (not start!97738) tp_is_empty!27933 (not mapNonEmpty!43717) (not b!1116908) (not b!1116913) (not b!1116902) (not b!1116910) (not b!1116909) (not b!1116903) (not b!1116907))
(check-sat)
