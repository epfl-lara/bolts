; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97570 () Bool)

(assert start!97570)

(declare-fun b!1113625 () Bool)

(declare-fun res!743359 () Bool)

(declare-fun e!634831 () Bool)

(assert (=> b!1113625 (=> (not res!743359) (not e!634831))))

(declare-datatypes ((array!72382 0))(
  ( (array!72383 (arr!34840 (Array (_ BitVec 32) (_ BitVec 64))) (size!35377 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72382)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1113625 (= res!743359 (= (select (arr!34840 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!43465 () Bool)

(declare-fun mapRes!43465 () Bool)

(assert (=> mapIsEmpty!43465 mapRes!43465))

(declare-fun b!1113626 () Bool)

(declare-fun res!743358 () Bool)

(assert (=> b!1113626 (=> (not res!743358) (not e!634831))))

(assert (=> b!1113626 (= res!743358 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35377 _keys!1208))))))

(declare-fun b!1113627 () Bool)

(declare-fun res!743352 () Bool)

(declare-fun e!634832 () Bool)

(assert (=> b!1113627 (=> (not res!743352) (not e!634832))))

(declare-fun lt!496683 () array!72382)

(declare-datatypes ((List!24422 0))(
  ( (Nil!24419) (Cons!24418 (h!25627 (_ BitVec 64)) (t!34910 List!24422)) )
))
(declare-fun arrayNoDuplicates!0 (array!72382 (_ BitVec 32) List!24422) Bool)

(assert (=> b!1113627 (= res!743352 (arrayNoDuplicates!0 lt!496683 #b00000000000000000000000000000000 Nil!24419))))

(declare-fun b!1113628 () Bool)

(declare-fun res!743354 () Bool)

(assert (=> b!1113628 (=> (not res!743354) (not e!634831))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42147 0))(
  ( (V!42148 (val!13939 Int)) )
))
(declare-datatypes ((ValueCell!13173 0))(
  ( (ValueCellFull!13173 (v!16573 V!42147)) (EmptyCell!13173) )
))
(declare-datatypes ((array!72384 0))(
  ( (array!72385 (arr!34841 (Array (_ BitVec 32) ValueCell!13173)) (size!35378 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72384)

(assert (=> b!1113628 (= res!743354 (and (= (size!35378 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35377 _keys!1208) (size!35378 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1113630 () Bool)

(declare-fun res!743357 () Bool)

(assert (=> b!1113630 (=> (not res!743357) (not e!634831))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1113630 (= res!743357 (validKeyInArray!0 k0!934))))

(declare-fun b!1113631 () Bool)

(declare-fun e!634830 () Bool)

(declare-fun e!634834 () Bool)

(assert (=> b!1113631 (= e!634830 (and e!634834 mapRes!43465))))

(declare-fun condMapEmpty!43465 () Bool)

(declare-fun mapDefault!43465 () ValueCell!13173)

(assert (=> b!1113631 (= condMapEmpty!43465 (= (arr!34841 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13173)) mapDefault!43465)))))

(declare-fun b!1113632 () Bool)

(declare-fun tp_is_empty!27765 () Bool)

(assert (=> b!1113632 (= e!634834 tp_is_empty!27765)))

(declare-fun b!1113633 () Bool)

(declare-fun e!634833 () Bool)

(assert (=> b!1113633 (= e!634833 tp_is_empty!27765)))

(declare-fun b!1113634 () Bool)

(assert (=> b!1113634 (= e!634831 e!634832)))

(declare-fun res!743361 () Bool)

(assert (=> b!1113634 (=> (not res!743361) (not e!634832))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72382 (_ BitVec 32)) Bool)

(assert (=> b!1113634 (= res!743361 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496683 mask!1564))))

(assert (=> b!1113634 (= lt!496683 (array!72383 (store (arr!34840 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35377 _keys!1208)))))

(declare-fun b!1113635 () Bool)

(declare-fun res!743355 () Bool)

(assert (=> b!1113635 (=> (not res!743355) (not e!634831))))

(assert (=> b!1113635 (= res!743355 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24419))))

(declare-fun b!1113629 () Bool)

(declare-fun res!743353 () Bool)

(assert (=> b!1113629 (=> (not res!743353) (not e!634831))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1113629 (= res!743353 (validMask!0 mask!1564))))

(declare-fun res!743360 () Bool)

(assert (=> start!97570 (=> (not res!743360) (not e!634831))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97570 (= res!743360 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35377 _keys!1208))))))

(assert (=> start!97570 e!634831))

(declare-fun array_inv!26652 (array!72382) Bool)

(assert (=> start!97570 (array_inv!26652 _keys!1208)))

(assert (=> start!97570 true))

(declare-fun array_inv!26653 (array!72384) Bool)

(assert (=> start!97570 (and (array_inv!26653 _values!996) e!634830)))

(declare-fun b!1113636 () Bool)

(assert (=> b!1113636 (= e!634832 (not true))))

(declare-fun arrayContainsKey!0 (array!72382 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1113636 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36455 0))(
  ( (Unit!36456) )
))
(declare-fun lt!496682 () Unit!36455)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72382 (_ BitVec 64) (_ BitVec 32)) Unit!36455)

(assert (=> b!1113636 (= lt!496682 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1113637 () Bool)

(declare-fun res!743356 () Bool)

(assert (=> b!1113637 (=> (not res!743356) (not e!634831))))

(assert (=> b!1113637 (= res!743356 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!43465 () Bool)

(declare-fun tp!82710 () Bool)

(assert (=> mapNonEmpty!43465 (= mapRes!43465 (and tp!82710 e!634833))))

(declare-fun mapValue!43465 () ValueCell!13173)

(declare-fun mapKey!43465 () (_ BitVec 32))

(declare-fun mapRest!43465 () (Array (_ BitVec 32) ValueCell!13173))

(assert (=> mapNonEmpty!43465 (= (arr!34841 _values!996) (store mapRest!43465 mapKey!43465 mapValue!43465))))

(assert (= (and start!97570 res!743360) b!1113629))

(assert (= (and b!1113629 res!743353) b!1113628))

(assert (= (and b!1113628 res!743354) b!1113637))

(assert (= (and b!1113637 res!743356) b!1113635))

(assert (= (and b!1113635 res!743355) b!1113626))

(assert (= (and b!1113626 res!743358) b!1113630))

(assert (= (and b!1113630 res!743357) b!1113625))

(assert (= (and b!1113625 res!743359) b!1113634))

(assert (= (and b!1113634 res!743361) b!1113627))

(assert (= (and b!1113627 res!743352) b!1113636))

(assert (= (and b!1113631 condMapEmpty!43465) mapIsEmpty!43465))

(assert (= (and b!1113631 (not condMapEmpty!43465)) mapNonEmpty!43465))

(get-info :version)

(assert (= (and mapNonEmpty!43465 ((_ is ValueCellFull!13173) mapValue!43465)) b!1113633))

(assert (= (and b!1113631 ((_ is ValueCellFull!13173) mapDefault!43465)) b!1113632))

(assert (= start!97570 b!1113631))

(declare-fun m!1030875 () Bool)

(assert (=> start!97570 m!1030875))

(declare-fun m!1030877 () Bool)

(assert (=> start!97570 m!1030877))

(declare-fun m!1030879 () Bool)

(assert (=> b!1113629 m!1030879))

(declare-fun m!1030881 () Bool)

(assert (=> b!1113630 m!1030881))

(declare-fun m!1030883 () Bool)

(assert (=> mapNonEmpty!43465 m!1030883))

(declare-fun m!1030885 () Bool)

(assert (=> b!1113635 m!1030885))

(declare-fun m!1030887 () Bool)

(assert (=> b!1113636 m!1030887))

(declare-fun m!1030889 () Bool)

(assert (=> b!1113636 m!1030889))

(declare-fun m!1030891 () Bool)

(assert (=> b!1113637 m!1030891))

(declare-fun m!1030893 () Bool)

(assert (=> b!1113625 m!1030893))

(declare-fun m!1030895 () Bool)

(assert (=> b!1113627 m!1030895))

(declare-fun m!1030897 () Bool)

(assert (=> b!1113634 m!1030897))

(declare-fun m!1030899 () Bool)

(assert (=> b!1113634 m!1030899))

(check-sat (not b!1113637) (not start!97570) tp_is_empty!27765 (not b!1113629) (not mapNonEmpty!43465) (not b!1113627) (not b!1113630) (not b!1113636) (not b!1113635) (not b!1113634))
(check-sat)
