; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97582 () Bool)

(assert start!97582)

(declare-fun b!1113860 () Bool)

(declare-fun res!743534 () Bool)

(declare-fun e!634938 () Bool)

(assert (=> b!1113860 (=> (not res!743534) (not e!634938))))

(declare-datatypes ((array!72406 0))(
  ( (array!72407 (arr!34852 (Array (_ BitVec 32) (_ BitVec 64))) (size!35389 (_ BitVec 32))) )
))
(declare-fun lt!496719 () array!72406)

(declare-datatypes ((List!24426 0))(
  ( (Nil!24423) (Cons!24422 (h!25631 (_ BitVec 64)) (t!34914 List!24426)) )
))
(declare-fun arrayNoDuplicates!0 (array!72406 (_ BitVec 32) List!24426) Bool)

(assert (=> b!1113860 (= res!743534 (arrayNoDuplicates!0 lt!496719 #b00000000000000000000000000000000 Nil!24423))))

(declare-fun b!1113861 () Bool)

(declare-fun res!743535 () Bool)

(declare-fun e!634939 () Bool)

(assert (=> b!1113861 (=> (not res!743535) (not e!634939))))

(declare-fun _keys!1208 () array!72406)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1113861 (= res!743535 (= (select (arr!34852 _keys!1208) i!673) k0!934))))

(declare-fun b!1113862 () Bool)

(assert (=> b!1113862 (= e!634939 e!634938)))

(declare-fun res!743541 () Bool)

(assert (=> b!1113862 (=> (not res!743541) (not e!634938))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72406 (_ BitVec 32)) Bool)

(assert (=> b!1113862 (= res!743541 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496719 mask!1564))))

(assert (=> b!1113862 (= lt!496719 (array!72407 (store (arr!34852 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35389 _keys!1208)))))

(declare-fun b!1113863 () Bool)

(declare-fun e!634942 () Bool)

(declare-fun tp_is_empty!27777 () Bool)

(assert (=> b!1113863 (= e!634942 tp_is_empty!27777)))

(declare-fun b!1113864 () Bool)

(declare-fun res!743532 () Bool)

(assert (=> b!1113864 (=> (not res!743532) (not e!634939))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1113864 (= res!743532 (validMask!0 mask!1564))))

(declare-fun b!1113865 () Bool)

(declare-fun e!634941 () Bool)

(assert (=> b!1113865 (= e!634941 tp_is_empty!27777)))

(declare-fun b!1113866 () Bool)

(declare-fun res!743540 () Bool)

(assert (=> b!1113866 (=> (not res!743540) (not e!634939))))

(assert (=> b!1113866 (= res!743540 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24423))))

(declare-fun b!1113867 () Bool)

(declare-fun e!634943 () Bool)

(declare-fun mapRes!43483 () Bool)

(assert (=> b!1113867 (= e!634943 (and e!634941 mapRes!43483))))

(declare-fun condMapEmpty!43483 () Bool)

(declare-datatypes ((V!42163 0))(
  ( (V!42164 (val!13945 Int)) )
))
(declare-datatypes ((ValueCell!13179 0))(
  ( (ValueCellFull!13179 (v!16579 V!42163)) (EmptyCell!13179) )
))
(declare-datatypes ((array!72408 0))(
  ( (array!72409 (arr!34853 (Array (_ BitVec 32) ValueCell!13179)) (size!35390 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72408)

(declare-fun mapDefault!43483 () ValueCell!13179)

(assert (=> b!1113867 (= condMapEmpty!43483 (= (arr!34853 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13179)) mapDefault!43483)))))

(declare-fun b!1113868 () Bool)

(declare-fun res!743538 () Bool)

(assert (=> b!1113868 (=> (not res!743538) (not e!634939))))

(assert (=> b!1113868 (= res!743538 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!43483 () Bool)

(assert (=> mapIsEmpty!43483 mapRes!43483))

(declare-fun res!743539 () Bool)

(assert (=> start!97582 (=> (not res!743539) (not e!634939))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97582 (= res!743539 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35389 _keys!1208))))))

(assert (=> start!97582 e!634939))

(declare-fun array_inv!26662 (array!72406) Bool)

(assert (=> start!97582 (array_inv!26662 _keys!1208)))

(assert (=> start!97582 true))

(declare-fun array_inv!26663 (array!72408) Bool)

(assert (=> start!97582 (and (array_inv!26663 _values!996) e!634943)))

(declare-fun b!1113859 () Bool)

(assert (=> b!1113859 (= e!634938 (not true))))

(declare-fun arrayContainsKey!0 (array!72406 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1113859 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36465 0))(
  ( (Unit!36466) )
))
(declare-fun lt!496718 () Unit!36465)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72406 (_ BitVec 64) (_ BitVec 32)) Unit!36465)

(assert (=> b!1113859 (= lt!496718 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapNonEmpty!43483 () Bool)

(declare-fun tp!82728 () Bool)

(assert (=> mapNonEmpty!43483 (= mapRes!43483 (and tp!82728 e!634942))))

(declare-fun mapKey!43483 () (_ BitVec 32))

(declare-fun mapValue!43483 () ValueCell!13179)

(declare-fun mapRest!43483 () (Array (_ BitVec 32) ValueCell!13179))

(assert (=> mapNonEmpty!43483 (= (arr!34853 _values!996) (store mapRest!43483 mapKey!43483 mapValue!43483))))

(declare-fun b!1113869 () Bool)

(declare-fun res!743533 () Bool)

(assert (=> b!1113869 (=> (not res!743533) (not e!634939))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1113869 (= res!743533 (and (= (size!35390 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35389 _keys!1208) (size!35390 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1113870 () Bool)

(declare-fun res!743536 () Bool)

(assert (=> b!1113870 (=> (not res!743536) (not e!634939))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1113870 (= res!743536 (validKeyInArray!0 k0!934))))

(declare-fun b!1113871 () Bool)

(declare-fun res!743537 () Bool)

(assert (=> b!1113871 (=> (not res!743537) (not e!634939))))

(assert (=> b!1113871 (= res!743537 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35389 _keys!1208))))))

(assert (= (and start!97582 res!743539) b!1113864))

(assert (= (and b!1113864 res!743532) b!1113869))

(assert (= (and b!1113869 res!743533) b!1113868))

(assert (= (and b!1113868 res!743538) b!1113866))

(assert (= (and b!1113866 res!743540) b!1113871))

(assert (= (and b!1113871 res!743537) b!1113870))

(assert (= (and b!1113870 res!743536) b!1113861))

(assert (= (and b!1113861 res!743535) b!1113862))

(assert (= (and b!1113862 res!743541) b!1113860))

(assert (= (and b!1113860 res!743534) b!1113859))

(assert (= (and b!1113867 condMapEmpty!43483) mapIsEmpty!43483))

(assert (= (and b!1113867 (not condMapEmpty!43483)) mapNonEmpty!43483))

(get-info :version)

(assert (= (and mapNonEmpty!43483 ((_ is ValueCellFull!13179) mapValue!43483)) b!1113863))

(assert (= (and b!1113867 ((_ is ValueCellFull!13179) mapDefault!43483)) b!1113865))

(assert (= start!97582 b!1113867))

(declare-fun m!1031031 () Bool)

(assert (=> b!1113862 m!1031031))

(declare-fun m!1031033 () Bool)

(assert (=> b!1113862 m!1031033))

(declare-fun m!1031035 () Bool)

(assert (=> b!1113861 m!1031035))

(declare-fun m!1031037 () Bool)

(assert (=> b!1113859 m!1031037))

(declare-fun m!1031039 () Bool)

(assert (=> b!1113859 m!1031039))

(declare-fun m!1031041 () Bool)

(assert (=> b!1113864 m!1031041))

(declare-fun m!1031043 () Bool)

(assert (=> mapNonEmpty!43483 m!1031043))

(declare-fun m!1031045 () Bool)

(assert (=> b!1113866 m!1031045))

(declare-fun m!1031047 () Bool)

(assert (=> b!1113870 m!1031047))

(declare-fun m!1031049 () Bool)

(assert (=> b!1113860 m!1031049))

(declare-fun m!1031051 () Bool)

(assert (=> start!97582 m!1031051))

(declare-fun m!1031053 () Bool)

(assert (=> start!97582 m!1031053))

(declare-fun m!1031055 () Bool)

(assert (=> b!1113868 m!1031055))

(check-sat (not b!1113868) (not mapNonEmpty!43483) (not start!97582) tp_is_empty!27777 (not b!1113870) (not b!1113864) (not b!1113866) (not b!1113859) (not b!1113862) (not b!1113860))
(check-sat)
