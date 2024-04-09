; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133442 () Bool)

(assert start!133442)

(declare-fun b!1559474 () Bool)

(declare-fun e!868982 () Bool)

(declare-fun tp_is_empty!38493 () Bool)

(assert (=> b!1559474 (= e!868982 tp_is_empty!38493)))

(declare-fun b!1559475 () Bool)

(declare-fun res!1066508 () Bool)

(declare-fun e!868981 () Bool)

(assert (=> b!1559475 (=> (not res!1066508) (not e!868981))))

(declare-fun from!782 () (_ BitVec 32))

(declare-datatypes ((array!103667 0))(
  ( (array!103668 (arr!50021 (Array (_ BitVec 32) (_ BitVec 64))) (size!50572 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103667)

(assert (=> b!1559475 (= res!1066508 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50572 _keys!637)) (bvsge from!782 (size!50572 _keys!637))))))

(declare-fun mapIsEmpty!59115 () Bool)

(declare-fun mapRes!59115 () Bool)

(assert (=> mapIsEmpty!59115 mapRes!59115))

(declare-fun mapNonEmpty!59115 () Bool)

(declare-fun tp!112771 () Bool)

(assert (=> mapNonEmpty!59115 (= mapRes!59115 (and tp!112771 e!868982))))

(declare-datatypes ((V!59531 0))(
  ( (V!59532 (val!19330 Int)) )
))
(declare-datatypes ((ValueCell!18216 0))(
  ( (ValueCellFull!18216 (v!22079 V!59531)) (EmptyCell!18216) )
))
(declare-fun mapValue!59115 () ValueCell!18216)

(declare-fun mapKey!59115 () (_ BitVec 32))

(declare-datatypes ((array!103669 0))(
  ( (array!103670 (arr!50022 (Array (_ BitVec 32) ValueCell!18216)) (size!50573 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103669)

(declare-fun mapRest!59115 () (Array (_ BitVec 32) ValueCell!18216))

(assert (=> mapNonEmpty!59115 (= (arr!50022 _values!487) (store mapRest!59115 mapKey!59115 mapValue!59115))))

(declare-fun b!1559476 () Bool)

(assert (=> b!1559476 (= e!868981 false)))

(declare-fun lt!670818 () Bool)

(declare-datatypes ((tuple2!25140 0))(
  ( (tuple2!25141 (_1!12580 (_ BitVec 64)) (_2!12580 V!59531)) )
))
(declare-datatypes ((List!36497 0))(
  ( (Nil!36494) (Cons!36493 (h!37940 tuple2!25140) (t!51237 List!36497)) )
))
(declare-datatypes ((ListLongMap!22587 0))(
  ( (ListLongMap!22588 (toList!11309 List!36497)) )
))
(declare-fun contains!10229 (ListLongMap!22587 (_ BitVec 64)) Bool)

(assert (=> b!1559476 (= lt!670818 (contains!10229 (ListLongMap!22588 Nil!36494) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1559477 () Bool)

(declare-fun res!1066507 () Bool)

(assert (=> b!1559477 (=> (not res!1066507) (not e!868981))))

(declare-datatypes ((List!36498 0))(
  ( (Nil!36495) (Cons!36494 (h!37941 (_ BitVec 64)) (t!51238 List!36498)) )
))
(declare-fun arrayNoDuplicates!0 (array!103667 (_ BitVec 32) List!36498) Bool)

(assert (=> b!1559477 (= res!1066507 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36495))))

(declare-fun b!1559478 () Bool)

(declare-fun e!868978 () Bool)

(declare-fun e!868980 () Bool)

(assert (=> b!1559478 (= e!868978 (and e!868980 mapRes!59115))))

(declare-fun condMapEmpty!59115 () Bool)

(declare-fun mapDefault!59115 () ValueCell!18216)

(assert (=> b!1559478 (= condMapEmpty!59115 (= (arr!50022 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18216)) mapDefault!59115)))))

(declare-fun b!1559480 () Bool)

(declare-fun res!1066506 () Bool)

(assert (=> b!1559480 (=> (not res!1066506) (not e!868981))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103667 (_ BitVec 32)) Bool)

(assert (=> b!1559480 (= res!1066506 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1559481 () Bool)

(declare-fun res!1066504 () Bool)

(assert (=> b!1559481 (=> (not res!1066504) (not e!868981))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1559481 (= res!1066504 (and (= (size!50573 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50572 _keys!637) (size!50573 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1559482 () Bool)

(declare-fun res!1066505 () Bool)

(assert (=> b!1559482 (=> (not res!1066505) (not e!868981))))

(assert (=> b!1559482 (= res!1066505 (not (contains!10229 (ListLongMap!22588 Nil!36494) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1559479 () Bool)

(assert (=> b!1559479 (= e!868980 tp_is_empty!38493)))

(declare-fun res!1066503 () Bool)

(assert (=> start!133442 (=> (not res!1066503) (not e!868981))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133442 (= res!1066503 (validMask!0 mask!947))))

(assert (=> start!133442 e!868981))

(assert (=> start!133442 true))

(declare-fun array_inv!38809 (array!103667) Bool)

(assert (=> start!133442 (array_inv!38809 _keys!637)))

(declare-fun array_inv!38810 (array!103669) Bool)

(assert (=> start!133442 (and (array_inv!38810 _values!487) e!868978)))

(assert (= (and start!133442 res!1066503) b!1559481))

(assert (= (and b!1559481 res!1066504) b!1559480))

(assert (= (and b!1559480 res!1066506) b!1559477))

(assert (= (and b!1559477 res!1066507) b!1559475))

(assert (= (and b!1559475 res!1066508) b!1559482))

(assert (= (and b!1559482 res!1066505) b!1559476))

(assert (= (and b!1559478 condMapEmpty!59115) mapIsEmpty!59115))

(assert (= (and b!1559478 (not condMapEmpty!59115)) mapNonEmpty!59115))

(get-info :version)

(assert (= (and mapNonEmpty!59115 ((_ is ValueCellFull!18216) mapValue!59115)) b!1559474))

(assert (= (and b!1559478 ((_ is ValueCellFull!18216) mapDefault!59115)) b!1559479))

(assert (= start!133442 b!1559478))

(declare-fun m!1435703 () Bool)

(assert (=> b!1559482 m!1435703))

(declare-fun m!1435705 () Bool)

(assert (=> start!133442 m!1435705))

(declare-fun m!1435707 () Bool)

(assert (=> start!133442 m!1435707))

(declare-fun m!1435709 () Bool)

(assert (=> start!133442 m!1435709))

(declare-fun m!1435711 () Bool)

(assert (=> b!1559480 m!1435711))

(declare-fun m!1435713 () Bool)

(assert (=> b!1559476 m!1435713))

(declare-fun m!1435715 () Bool)

(assert (=> mapNonEmpty!59115 m!1435715))

(declare-fun m!1435717 () Bool)

(assert (=> b!1559477 m!1435717))

(check-sat (not b!1559480) (not start!133442) (not b!1559482) (not b!1559477) (not mapNonEmpty!59115) (not b!1559476) tp_is_empty!38493)
(check-sat)
