; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97270 () Bool)

(assert start!97270)

(declare-fun mapIsEmpty!43015 () Bool)

(declare-fun mapRes!43015 () Bool)

(assert (=> mapIsEmpty!43015 mapRes!43015))

(declare-fun mapNonEmpty!43015 () Bool)

(declare-fun tp!81936 () Bool)

(declare-fun e!631452 () Bool)

(assert (=> mapNonEmpty!43015 (= mapRes!43015 (and tp!81936 e!631452))))

(declare-datatypes ((V!41747 0))(
  ( (V!41748 (val!13789 Int)) )
))
(declare-datatypes ((ValueCell!13023 0))(
  ( (ValueCellFull!13023 (v!16423 V!41747)) (EmptyCell!13023) )
))
(declare-fun mapValue!43015 () ValueCell!13023)

(declare-fun mapRest!43015 () (Array (_ BitVec 32) ValueCell!13023))

(declare-fun mapKey!43015 () (_ BitVec 32))

(declare-datatypes ((array!71800 0))(
  ( (array!71801 (arr!34549 (Array (_ BitVec 32) ValueCell!13023)) (size!35086 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71800)

(assert (=> mapNonEmpty!43015 (= (arr!34549 _values!996) (store mapRest!43015 mapKey!43015 mapValue!43015))))

(declare-fun b!1106527 () Bool)

(declare-fun res!738529 () Bool)

(declare-fun e!631456 () Bool)

(assert (=> b!1106527 (=> (not res!738529) (not e!631456))))

(declare-datatypes ((array!71802 0))(
  ( (array!71803 (arr!34550 (Array (_ BitVec 32) (_ BitVec 64))) (size!35087 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71802)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1106527 (= res!738529 (= (select (arr!34550 _keys!1208) i!673) k0!934))))

(declare-fun b!1106528 () Bool)

(declare-fun e!631454 () Bool)

(declare-fun tp_is_empty!27465 () Bool)

(assert (=> b!1106528 (= e!631454 tp_is_empty!27465)))

(declare-fun b!1106529 () Bool)

(declare-fun e!631455 () Bool)

(assert (=> b!1106529 (= e!631455 (and e!631454 mapRes!43015))))

(declare-fun condMapEmpty!43015 () Bool)

(declare-fun mapDefault!43015 () ValueCell!13023)

(assert (=> b!1106529 (= condMapEmpty!43015 (= (arr!34549 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13023)) mapDefault!43015)))))

(declare-fun b!1106530 () Bool)

(declare-fun e!631457 () Bool)

(assert (=> b!1106530 (= e!631456 e!631457)))

(declare-fun res!738530 () Bool)

(assert (=> b!1106530 (=> (not res!738530) (not e!631457))))

(declare-fun lt!495458 () array!71802)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71802 (_ BitVec 32)) Bool)

(assert (=> b!1106530 (= res!738530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495458 mask!1564))))

(assert (=> b!1106530 (= lt!495458 (array!71803 (store (arr!34550 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35087 _keys!1208)))))

(declare-fun b!1106531 () Bool)

(declare-fun res!738533 () Bool)

(assert (=> b!1106531 (=> (not res!738533) (not e!631456))))

(declare-datatypes ((List!24219 0))(
  ( (Nil!24216) (Cons!24215 (h!25424 (_ BitVec 64)) (t!34491 List!24219)) )
))
(declare-fun arrayNoDuplicates!0 (array!71802 (_ BitVec 32) List!24219) Bool)

(assert (=> b!1106531 (= res!738533 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24216))))

(declare-fun b!1106532 () Bool)

(declare-fun res!738532 () Bool)

(assert (=> b!1106532 (=> (not res!738532) (not e!631456))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1106532 (= res!738532 (and (= (size!35086 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35087 _keys!1208) (size!35086 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1106533 () Bool)

(declare-fun res!738528 () Bool)

(assert (=> b!1106533 (=> (not res!738528) (not e!631456))))

(assert (=> b!1106533 (= res!738528 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35087 _keys!1208))))))

(declare-fun b!1106534 () Bool)

(declare-fun res!738531 () Bool)

(assert (=> b!1106534 (=> (not res!738531) (not e!631457))))

(assert (=> b!1106534 (= res!738531 (arrayNoDuplicates!0 lt!495458 #b00000000000000000000000000000000 Nil!24216))))

(declare-fun res!738534 () Bool)

(assert (=> start!97270 (=> (not res!738534) (not e!631456))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97270 (= res!738534 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35087 _keys!1208))))))

(assert (=> start!97270 e!631456))

(declare-fun array_inv!26450 (array!71802) Bool)

(assert (=> start!97270 (array_inv!26450 _keys!1208)))

(assert (=> start!97270 true))

(declare-fun array_inv!26451 (array!71800) Bool)

(assert (=> start!97270 (and (array_inv!26451 _values!996) e!631455)))

(declare-fun b!1106535 () Bool)

(declare-fun res!738537 () Bool)

(assert (=> b!1106535 (=> (not res!738537) (not e!631456))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1106535 (= res!738537 (validKeyInArray!0 k0!934))))

(declare-fun b!1106536 () Bool)

(assert (=> b!1106536 (= e!631452 tp_is_empty!27465)))

(declare-fun b!1106537 () Bool)

(declare-fun res!738536 () Bool)

(assert (=> b!1106537 (=> (not res!738536) (not e!631456))))

(assert (=> b!1106537 (= res!738536 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1106538 () Bool)

(declare-fun res!738535 () Bool)

(assert (=> b!1106538 (=> (not res!738535) (not e!631456))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1106538 (= res!738535 (validMask!0 mask!1564))))

(declare-fun b!1106539 () Bool)

(assert (=> b!1106539 (= e!631457 (not true))))

(declare-fun arrayContainsKey!0 (array!71802 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1106539 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36253 0))(
  ( (Unit!36254) )
))
(declare-fun lt!495459 () Unit!36253)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71802 (_ BitVec 64) (_ BitVec 32)) Unit!36253)

(assert (=> b!1106539 (= lt!495459 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!97270 res!738534) b!1106538))

(assert (= (and b!1106538 res!738535) b!1106532))

(assert (= (and b!1106532 res!738532) b!1106537))

(assert (= (and b!1106537 res!738536) b!1106531))

(assert (= (and b!1106531 res!738533) b!1106533))

(assert (= (and b!1106533 res!738528) b!1106535))

(assert (= (and b!1106535 res!738537) b!1106527))

(assert (= (and b!1106527 res!738529) b!1106530))

(assert (= (and b!1106530 res!738530) b!1106534))

(assert (= (and b!1106534 res!738531) b!1106539))

(assert (= (and b!1106529 condMapEmpty!43015) mapIsEmpty!43015))

(assert (= (and b!1106529 (not condMapEmpty!43015)) mapNonEmpty!43015))

(get-info :version)

(assert (= (and mapNonEmpty!43015 ((_ is ValueCellFull!13023) mapValue!43015)) b!1106536))

(assert (= (and b!1106529 ((_ is ValueCellFull!13023) mapDefault!43015)) b!1106528))

(assert (= start!97270 b!1106529))

(declare-fun m!1025679 () Bool)

(assert (=> b!1106534 m!1025679))

(declare-fun m!1025681 () Bool)

(assert (=> b!1106535 m!1025681))

(declare-fun m!1025683 () Bool)

(assert (=> b!1106531 m!1025683))

(declare-fun m!1025685 () Bool)

(assert (=> mapNonEmpty!43015 m!1025685))

(declare-fun m!1025687 () Bool)

(assert (=> b!1106530 m!1025687))

(declare-fun m!1025689 () Bool)

(assert (=> b!1106530 m!1025689))

(declare-fun m!1025691 () Bool)

(assert (=> start!97270 m!1025691))

(declare-fun m!1025693 () Bool)

(assert (=> start!97270 m!1025693))

(declare-fun m!1025695 () Bool)

(assert (=> b!1106527 m!1025695))

(declare-fun m!1025697 () Bool)

(assert (=> b!1106537 m!1025697))

(declare-fun m!1025699 () Bool)

(assert (=> b!1106538 m!1025699))

(declare-fun m!1025701 () Bool)

(assert (=> b!1106539 m!1025701))

(declare-fun m!1025703 () Bool)

(assert (=> b!1106539 m!1025703))

(check-sat (not b!1106539) (not b!1106538) (not b!1106534) (not start!97270) (not b!1106537) (not mapNonEmpty!43015) (not b!1106535) (not b!1106530) tp_is_empty!27465 (not b!1106531))
(check-sat)
