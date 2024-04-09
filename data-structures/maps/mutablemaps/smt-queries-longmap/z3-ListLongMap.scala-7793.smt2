; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97540 () Bool)

(assert start!97540)

(declare-fun mapIsEmpty!43420 () Bool)

(declare-fun mapRes!43420 () Bool)

(assert (=> mapIsEmpty!43420 mapRes!43420))

(declare-fun b!1113040 () Bool)

(declare-fun res!742905 () Bool)

(declare-fun e!634563 () Bool)

(assert (=> b!1113040 (=> (not res!742905) (not e!634563))))

(declare-datatypes ((array!72326 0))(
  ( (array!72327 (arr!34812 (Array (_ BitVec 32) (_ BitVec 64))) (size!35349 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72326)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72326 (_ BitVec 32)) Bool)

(assert (=> b!1113040 (= res!742905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1113041 () Bool)

(declare-fun e!634560 () Bool)

(declare-fun e!634564 () Bool)

(assert (=> b!1113041 (= e!634560 (and e!634564 mapRes!43420))))

(declare-fun condMapEmpty!43420 () Bool)

(declare-datatypes ((V!42107 0))(
  ( (V!42108 (val!13924 Int)) )
))
(declare-datatypes ((ValueCell!13158 0))(
  ( (ValueCellFull!13158 (v!16558 V!42107)) (EmptyCell!13158) )
))
(declare-datatypes ((array!72328 0))(
  ( (array!72329 (arr!34813 (Array (_ BitVec 32) ValueCell!13158)) (size!35350 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72328)

(declare-fun mapDefault!43420 () ValueCell!13158)

(assert (=> b!1113041 (= condMapEmpty!43420 (= (arr!34813 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13158)) mapDefault!43420)))))

(declare-fun b!1113042 () Bool)

(declare-fun tp_is_empty!27735 () Bool)

(assert (=> b!1113042 (= e!634564 tp_is_empty!27735)))

(declare-fun mapNonEmpty!43420 () Bool)

(declare-fun tp!82665 () Bool)

(declare-fun e!634561 () Bool)

(assert (=> mapNonEmpty!43420 (= mapRes!43420 (and tp!82665 e!634561))))

(declare-fun mapRest!43420 () (Array (_ BitVec 32) ValueCell!13158))

(declare-fun mapValue!43420 () ValueCell!13158)

(declare-fun mapKey!43420 () (_ BitVec 32))

(assert (=> mapNonEmpty!43420 (= (arr!34813 _values!996) (store mapRest!43420 mapKey!43420 mapValue!43420))))

(declare-fun b!1113043 () Bool)

(declare-fun res!742909 () Bool)

(declare-fun e!634562 () Bool)

(assert (=> b!1113043 (=> (not res!742909) (not e!634562))))

(declare-fun lt!496593 () array!72326)

(declare-datatypes ((List!24411 0))(
  ( (Nil!24408) (Cons!24407 (h!25616 (_ BitVec 64)) (t!34899 List!24411)) )
))
(declare-fun arrayNoDuplicates!0 (array!72326 (_ BitVec 32) List!24411) Bool)

(assert (=> b!1113043 (= res!742909 (arrayNoDuplicates!0 lt!496593 #b00000000000000000000000000000000 Nil!24408))))

(declare-fun res!742910 () Bool)

(assert (=> start!97540 (=> (not res!742910) (not e!634563))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97540 (= res!742910 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35349 _keys!1208))))))

(assert (=> start!97540 e!634563))

(declare-fun array_inv!26640 (array!72326) Bool)

(assert (=> start!97540 (array_inv!26640 _keys!1208)))

(assert (=> start!97540 true))

(declare-fun array_inv!26641 (array!72328) Bool)

(assert (=> start!97540 (and (array_inv!26641 _values!996) e!634560)))

(declare-fun b!1113044 () Bool)

(declare-fun res!742902 () Bool)

(assert (=> b!1113044 (=> (not res!742902) (not e!634563))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1113044 (= res!742902 (and (= (size!35350 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35349 _keys!1208) (size!35350 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1113045 () Bool)

(assert (=> b!1113045 (= e!634561 tp_is_empty!27735)))

(declare-fun b!1113046 () Bool)

(declare-fun res!742903 () Bool)

(assert (=> b!1113046 (=> (not res!742903) (not e!634563))))

(assert (=> b!1113046 (= res!742903 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24408))))

(declare-fun b!1113047 () Bool)

(declare-fun res!742907 () Bool)

(assert (=> b!1113047 (=> (not res!742907) (not e!634563))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1113047 (= res!742907 (= (select (arr!34812 _keys!1208) i!673) k0!934))))

(declare-fun b!1113048 () Bool)

(declare-fun res!742911 () Bool)

(assert (=> b!1113048 (=> (not res!742911) (not e!634563))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1113048 (= res!742911 (validKeyInArray!0 k0!934))))

(declare-fun b!1113049 () Bool)

(assert (=> b!1113049 (= e!634562 (not true))))

(declare-fun arrayContainsKey!0 (array!72326 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1113049 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36435 0))(
  ( (Unit!36436) )
))
(declare-fun lt!496592 () Unit!36435)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72326 (_ BitVec 64) (_ BitVec 32)) Unit!36435)

(assert (=> b!1113049 (= lt!496592 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1113050 () Bool)

(declare-fun res!742904 () Bool)

(assert (=> b!1113050 (=> (not res!742904) (not e!634563))))

(assert (=> b!1113050 (= res!742904 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35349 _keys!1208))))))

(declare-fun b!1113051 () Bool)

(declare-fun res!742908 () Bool)

(assert (=> b!1113051 (=> (not res!742908) (not e!634563))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1113051 (= res!742908 (validMask!0 mask!1564))))

(declare-fun b!1113052 () Bool)

(assert (=> b!1113052 (= e!634563 e!634562)))

(declare-fun res!742906 () Bool)

(assert (=> b!1113052 (=> (not res!742906) (not e!634562))))

(assert (=> b!1113052 (= res!742906 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496593 mask!1564))))

(assert (=> b!1113052 (= lt!496593 (array!72327 (store (arr!34812 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35349 _keys!1208)))))

(assert (= (and start!97540 res!742910) b!1113051))

(assert (= (and b!1113051 res!742908) b!1113044))

(assert (= (and b!1113044 res!742902) b!1113040))

(assert (= (and b!1113040 res!742905) b!1113046))

(assert (= (and b!1113046 res!742903) b!1113050))

(assert (= (and b!1113050 res!742904) b!1113048))

(assert (= (and b!1113048 res!742911) b!1113047))

(assert (= (and b!1113047 res!742907) b!1113052))

(assert (= (and b!1113052 res!742906) b!1113043))

(assert (= (and b!1113043 res!742909) b!1113049))

(assert (= (and b!1113041 condMapEmpty!43420) mapIsEmpty!43420))

(assert (= (and b!1113041 (not condMapEmpty!43420)) mapNonEmpty!43420))

(get-info :version)

(assert (= (and mapNonEmpty!43420 ((_ is ValueCellFull!13158) mapValue!43420)) b!1113045))

(assert (= (and b!1113041 ((_ is ValueCellFull!13158) mapDefault!43420)) b!1113042))

(assert (= start!97540 b!1113041))

(declare-fun m!1030485 () Bool)

(assert (=> start!97540 m!1030485))

(declare-fun m!1030487 () Bool)

(assert (=> start!97540 m!1030487))

(declare-fun m!1030489 () Bool)

(assert (=> b!1113051 m!1030489))

(declare-fun m!1030491 () Bool)

(assert (=> b!1113049 m!1030491))

(declare-fun m!1030493 () Bool)

(assert (=> b!1113049 m!1030493))

(declare-fun m!1030495 () Bool)

(assert (=> b!1113052 m!1030495))

(declare-fun m!1030497 () Bool)

(assert (=> b!1113052 m!1030497))

(declare-fun m!1030499 () Bool)

(assert (=> b!1113040 m!1030499))

(declare-fun m!1030501 () Bool)

(assert (=> b!1113047 m!1030501))

(declare-fun m!1030503 () Bool)

(assert (=> b!1113048 m!1030503))

(declare-fun m!1030505 () Bool)

(assert (=> mapNonEmpty!43420 m!1030505))

(declare-fun m!1030507 () Bool)

(assert (=> b!1113046 m!1030507))

(declare-fun m!1030509 () Bool)

(assert (=> b!1113043 m!1030509))

(check-sat (not start!97540) (not mapNonEmpty!43420) (not b!1113052) (not b!1113043) (not b!1113049) (not b!1113046) (not b!1113040) (not b!1113051) tp_is_empty!27735 (not b!1113048))
(check-sat)
