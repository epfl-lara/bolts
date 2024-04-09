; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133760 () Bool)

(assert start!133760)

(declare-fun b_free!32091 () Bool)

(declare-fun b_next!32091 () Bool)

(assert (=> start!133760 (= b_free!32091 (not b_next!32091))))

(declare-fun tp!113479 () Bool)

(declare-fun b_and!51671 () Bool)

(assert (=> start!133760 (= tp!113479 b_and!51671)))

(declare-fun b!1563508 () Bool)

(declare-fun res!1068994 () Bool)

(declare-fun e!871427 () Bool)

(assert (=> b!1563508 (=> (not res!1068994) (not e!871427))))

(declare-datatypes ((array!104283 0))(
  ( (array!104284 (arr!50329 (Array (_ BitVec 32) (_ BitVec 64))) (size!50880 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104283)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1563508 (= res!1068994 (not (validKeyInArray!0 (select (arr!50329 _keys!637) from!782))))))

(declare-fun b!1563509 () Bool)

(declare-fun e!871425 () Bool)

(assert (=> b!1563509 (= e!871425 false)))

(declare-fun lt!671850 () Bool)

(declare-datatypes ((V!59955 0))(
  ( (V!59956 (val!19489 Int)) )
))
(declare-datatypes ((tuple2!25306 0))(
  ( (tuple2!25307 (_1!12663 (_ BitVec 64)) (_2!12663 V!59955)) )
))
(declare-datatypes ((List!36691 0))(
  ( (Nil!36688) (Cons!36687 (h!38134 tuple2!25306) (t!51545 List!36691)) )
))
(declare-datatypes ((ListLongMap!22753 0))(
  ( (ListLongMap!22754 (toList!11392 List!36691)) )
))
(declare-fun lt!671849 () ListLongMap!22753)

(declare-fun contains!10312 (ListLongMap!22753 (_ BitVec 64)) Bool)

(assert (=> b!1563509 (= lt!671850 (contains!10312 lt!671849 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1563510 () Bool)

(declare-fun res!1068998 () Bool)

(assert (=> b!1563510 (=> (not res!1068998) (not e!871427))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104283 (_ BitVec 32)) Bool)

(assert (=> b!1563510 (= res!1068998 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun res!1068996 () Bool)

(assert (=> start!133760 (=> (not res!1068996) (not e!871427))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133760 (= res!1068996 (validMask!0 mask!947))))

(assert (=> start!133760 e!871427))

(assert (=> start!133760 tp!113479))

(declare-fun tp_is_empty!38811 () Bool)

(assert (=> start!133760 tp_is_empty!38811))

(assert (=> start!133760 true))

(declare-fun array_inv!39041 (array!104283) Bool)

(assert (=> start!133760 (array_inv!39041 _keys!637)))

(declare-datatypes ((ValueCell!18375 0))(
  ( (ValueCellFull!18375 (v!22238 V!59955)) (EmptyCell!18375) )
))
(declare-datatypes ((array!104285 0))(
  ( (array!104286 (arr!50330 (Array (_ BitVec 32) ValueCell!18375)) (size!50881 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104285)

(declare-fun e!871423 () Bool)

(declare-fun array_inv!39042 (array!104285) Bool)

(assert (=> start!133760 (and (array_inv!39042 _values!487) e!871423)))

(declare-fun b!1563511 () Bool)

(declare-fun e!871426 () Bool)

(assert (=> b!1563511 (= e!871426 tp_is_empty!38811)))

(declare-fun b!1563512 () Bool)

(declare-fun res!1068997 () Bool)

(assert (=> b!1563512 (=> (not res!1068997) (not e!871427))))

(assert (=> b!1563512 (= res!1068997 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50880 _keys!637)) (bvslt from!782 (size!50880 _keys!637))))))

(declare-fun b!1563513 () Bool)

(assert (=> b!1563513 (= e!871427 e!871425)))

(declare-fun res!1068993 () Bool)

(assert (=> b!1563513 (=> (not res!1068993) (not e!871425))))

(assert (=> b!1563513 (= res!1068993 (not (contains!10312 lt!671849 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!59955)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59955)

(declare-fun getCurrentListMapNoExtraKeys!6749 (array!104283 array!104285 (_ BitVec 32) (_ BitVec 32) V!59955 V!59955 (_ BitVec 32) Int) ListLongMap!22753)

(assert (=> b!1563513 (= lt!671849 (getCurrentListMapNoExtraKeys!6749 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun mapNonEmpty!59592 () Bool)

(declare-fun mapRes!59592 () Bool)

(declare-fun tp!113478 () Bool)

(assert (=> mapNonEmpty!59592 (= mapRes!59592 (and tp!113478 e!871426))))

(declare-fun mapValue!59592 () ValueCell!18375)

(declare-fun mapRest!59592 () (Array (_ BitVec 32) ValueCell!18375))

(declare-fun mapKey!59592 () (_ BitVec 32))

(assert (=> mapNonEmpty!59592 (= (arr!50330 _values!487) (store mapRest!59592 mapKey!59592 mapValue!59592))))

(declare-fun mapIsEmpty!59592 () Bool)

(assert (=> mapIsEmpty!59592 mapRes!59592))

(declare-fun b!1563514 () Bool)

(declare-fun res!1068992 () Bool)

(assert (=> b!1563514 (=> (not res!1068992) (not e!871427))))

(declare-datatypes ((List!36692 0))(
  ( (Nil!36689) (Cons!36688 (h!38135 (_ BitVec 64)) (t!51546 List!36692)) )
))
(declare-fun arrayNoDuplicates!0 (array!104283 (_ BitVec 32) List!36692) Bool)

(assert (=> b!1563514 (= res!1068992 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36689))))

(declare-fun b!1563515 () Bool)

(declare-fun res!1068995 () Bool)

(assert (=> b!1563515 (=> (not res!1068995) (not e!871427))))

(assert (=> b!1563515 (= res!1068995 (and (= (size!50881 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50880 _keys!637) (size!50881 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1563516 () Bool)

(declare-fun e!871424 () Bool)

(assert (=> b!1563516 (= e!871424 tp_is_empty!38811)))

(declare-fun b!1563517 () Bool)

(assert (=> b!1563517 (= e!871423 (and e!871424 mapRes!59592))))

(declare-fun condMapEmpty!59592 () Bool)

(declare-fun mapDefault!59592 () ValueCell!18375)

(assert (=> b!1563517 (= condMapEmpty!59592 (= (arr!50330 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18375)) mapDefault!59592)))))

(assert (= (and start!133760 res!1068996) b!1563515))

(assert (= (and b!1563515 res!1068995) b!1563510))

(assert (= (and b!1563510 res!1068998) b!1563514))

(assert (= (and b!1563514 res!1068992) b!1563512))

(assert (= (and b!1563512 res!1068997) b!1563508))

(assert (= (and b!1563508 res!1068994) b!1563513))

(assert (= (and b!1563513 res!1068993) b!1563509))

(assert (= (and b!1563517 condMapEmpty!59592) mapIsEmpty!59592))

(assert (= (and b!1563517 (not condMapEmpty!59592)) mapNonEmpty!59592))

(get-info :version)

(assert (= (and mapNonEmpty!59592 ((_ is ValueCellFull!18375) mapValue!59592)) b!1563511))

(assert (= (and b!1563517 ((_ is ValueCellFull!18375) mapDefault!59592)) b!1563516))

(assert (= start!133760 b!1563517))

(declare-fun m!1439027 () Bool)

(assert (=> b!1563508 m!1439027))

(assert (=> b!1563508 m!1439027))

(declare-fun m!1439029 () Bool)

(assert (=> b!1563508 m!1439029))

(declare-fun m!1439031 () Bool)

(assert (=> start!133760 m!1439031))

(declare-fun m!1439033 () Bool)

(assert (=> start!133760 m!1439033))

(declare-fun m!1439035 () Bool)

(assert (=> start!133760 m!1439035))

(declare-fun m!1439037 () Bool)

(assert (=> mapNonEmpty!59592 m!1439037))

(declare-fun m!1439039 () Bool)

(assert (=> b!1563514 m!1439039))

(declare-fun m!1439041 () Bool)

(assert (=> b!1563510 m!1439041))

(declare-fun m!1439043 () Bool)

(assert (=> b!1563513 m!1439043))

(declare-fun m!1439045 () Bool)

(assert (=> b!1563513 m!1439045))

(declare-fun m!1439047 () Bool)

(assert (=> b!1563509 m!1439047))

(check-sat (not start!133760) (not mapNonEmpty!59592) tp_is_empty!38811 b_and!51671 (not b_next!32091) (not b!1563513) (not b!1563514) (not b!1563509) (not b!1563508) (not b!1563510))
(check-sat b_and!51671 (not b_next!32091))
