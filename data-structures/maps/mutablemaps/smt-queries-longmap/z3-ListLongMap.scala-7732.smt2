; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97158 () Bool)

(assert start!97158)

(declare-fun mapNonEmpty!42868 () Bool)

(declare-fun mapRes!42868 () Bool)

(declare-fun tp!81789 () Bool)

(declare-fun e!630550 () Bool)

(assert (=> mapNonEmpty!42868 (= mapRes!42868 (and tp!81789 e!630550))))

(declare-datatypes ((V!41619 0))(
  ( (V!41620 (val!13741 Int)) )
))
(declare-datatypes ((ValueCell!12975 0))(
  ( (ValueCellFull!12975 (v!16375 V!41619)) (EmptyCell!12975) )
))
(declare-fun mapValue!42868 () ValueCell!12975)

(declare-fun mapRest!42868 () (Array (_ BitVec 32) ValueCell!12975))

(declare-datatypes ((array!71614 0))(
  ( (array!71615 (arr!34457 (Array (_ BitVec 32) ValueCell!12975)) (size!34994 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71614)

(declare-fun mapKey!42868 () (_ BitVec 32))

(assert (=> mapNonEmpty!42868 (= (arr!34457 _values!996) (store mapRest!42868 mapKey!42868 mapValue!42868))))

(declare-fun b!1104618 () Bool)

(declare-fun e!630553 () Bool)

(declare-fun tp_is_empty!27369 () Bool)

(assert (=> b!1104618 (= e!630553 tp_is_empty!27369)))

(declare-fun b!1104619 () Bool)

(declare-fun res!737081 () Bool)

(declare-fun e!630551 () Bool)

(assert (=> b!1104619 (=> (not res!737081) (not e!630551))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1104619 (= res!737081 (validMask!0 mask!1564))))

(declare-fun b!1104620 () Bool)

(declare-fun res!737075 () Bool)

(assert (=> b!1104620 (=> (not res!737075) (not e!630551))))

(declare-datatypes ((array!71616 0))(
  ( (array!71617 (arr!34458 (Array (_ BitVec 32) (_ BitVec 64))) (size!34995 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71616)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1104620 (= res!737075 (= (select (arr!34458 _keys!1208) i!673) k0!934))))

(declare-fun b!1104621 () Bool)

(assert (=> b!1104621 (= e!630550 tp_is_empty!27369)))

(declare-fun b!1104622 () Bool)

(declare-fun e!630549 () Bool)

(assert (=> b!1104622 (= e!630551 e!630549)))

(declare-fun res!737082 () Bool)

(assert (=> b!1104622 (=> (not res!737082) (not e!630549))))

(declare-fun lt!495155 () array!71616)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71616 (_ BitVec 32)) Bool)

(assert (=> b!1104622 (= res!737082 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495155 mask!1564))))

(assert (=> b!1104622 (= lt!495155 (array!71617 (store (arr!34458 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34995 _keys!1208)))))

(declare-fun b!1104623 () Bool)

(declare-fun res!737076 () Bool)

(assert (=> b!1104623 (=> (not res!737076) (not e!630551))))

(assert (=> b!1104623 (= res!737076 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!34995 _keys!1208))))))

(declare-fun b!1104624 () Bool)

(declare-fun e!630548 () Bool)

(assert (=> b!1104624 (= e!630548 (and e!630553 mapRes!42868))))

(declare-fun condMapEmpty!42868 () Bool)

(declare-fun mapDefault!42868 () ValueCell!12975)

(assert (=> b!1104624 (= condMapEmpty!42868 (= (arr!34457 _values!996) ((as const (Array (_ BitVec 32) ValueCell!12975)) mapDefault!42868)))))

(declare-fun mapIsEmpty!42868 () Bool)

(assert (=> mapIsEmpty!42868 mapRes!42868))

(declare-fun b!1104625 () Bool)

(declare-fun res!737077 () Bool)

(assert (=> b!1104625 (=> (not res!737077) (not e!630551))))

(assert (=> b!1104625 (= res!737077 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1104626 () Bool)

(declare-fun res!737079 () Bool)

(assert (=> b!1104626 (=> (not res!737079) (not e!630551))))

(declare-datatypes ((List!24181 0))(
  ( (Nil!24178) (Cons!24177 (h!25386 (_ BitVec 64)) (t!34453 List!24181)) )
))
(declare-fun arrayNoDuplicates!0 (array!71616 (_ BitVec 32) List!24181) Bool)

(assert (=> b!1104626 (= res!737079 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24178))))

(declare-fun b!1104627 () Bool)

(assert (=> b!1104627 (= e!630549 false)))

(declare-fun lt!495156 () Bool)

(assert (=> b!1104627 (= lt!495156 (arrayNoDuplicates!0 lt!495155 #b00000000000000000000000000000000 Nil!24178))))

(declare-fun res!737078 () Bool)

(assert (=> start!97158 (=> (not res!737078) (not e!630551))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97158 (= res!737078 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34995 _keys!1208))))))

(assert (=> start!97158 e!630551))

(declare-fun array_inv!26390 (array!71616) Bool)

(assert (=> start!97158 (array_inv!26390 _keys!1208)))

(assert (=> start!97158 true))

(declare-fun array_inv!26391 (array!71614) Bool)

(assert (=> start!97158 (and (array_inv!26391 _values!996) e!630548)))

(declare-fun b!1104628 () Bool)

(declare-fun res!737080 () Bool)

(assert (=> b!1104628 (=> (not res!737080) (not e!630551))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1104628 (= res!737080 (validKeyInArray!0 k0!934))))

(declare-fun b!1104629 () Bool)

(declare-fun res!737083 () Bool)

(assert (=> b!1104629 (=> (not res!737083) (not e!630551))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1104629 (= res!737083 (and (= (size!34994 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34995 _keys!1208) (size!34994 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(assert (= (and start!97158 res!737078) b!1104619))

(assert (= (and b!1104619 res!737081) b!1104629))

(assert (= (and b!1104629 res!737083) b!1104625))

(assert (= (and b!1104625 res!737077) b!1104626))

(assert (= (and b!1104626 res!737079) b!1104623))

(assert (= (and b!1104623 res!737076) b!1104628))

(assert (= (and b!1104628 res!737080) b!1104620))

(assert (= (and b!1104620 res!737075) b!1104622))

(assert (= (and b!1104622 res!737082) b!1104627))

(assert (= (and b!1104624 condMapEmpty!42868) mapIsEmpty!42868))

(assert (= (and b!1104624 (not condMapEmpty!42868)) mapNonEmpty!42868))

(get-info :version)

(assert (= (and mapNonEmpty!42868 ((_ is ValueCellFull!12975) mapValue!42868)) b!1104621))

(assert (= (and b!1104624 ((_ is ValueCellFull!12975) mapDefault!42868)) b!1104618))

(assert (= start!97158 b!1104624))

(declare-fun m!1024413 () Bool)

(assert (=> b!1104628 m!1024413))

(declare-fun m!1024415 () Bool)

(assert (=> b!1104620 m!1024415))

(declare-fun m!1024417 () Bool)

(assert (=> b!1104625 m!1024417))

(declare-fun m!1024419 () Bool)

(assert (=> start!97158 m!1024419))

(declare-fun m!1024421 () Bool)

(assert (=> start!97158 m!1024421))

(declare-fun m!1024423 () Bool)

(assert (=> b!1104626 m!1024423))

(declare-fun m!1024425 () Bool)

(assert (=> mapNonEmpty!42868 m!1024425))

(declare-fun m!1024427 () Bool)

(assert (=> b!1104627 m!1024427))

(declare-fun m!1024429 () Bool)

(assert (=> b!1104619 m!1024429))

(declare-fun m!1024431 () Bool)

(assert (=> b!1104622 m!1024431))

(declare-fun m!1024433 () Bool)

(assert (=> b!1104622 m!1024433))

(check-sat (not b!1104619) (not b!1104627) (not b!1104625) (not b!1104628) (not b!1104626) (not start!97158) tp_is_empty!27369 (not mapNonEmpty!42868) (not b!1104622))
(check-sat)
