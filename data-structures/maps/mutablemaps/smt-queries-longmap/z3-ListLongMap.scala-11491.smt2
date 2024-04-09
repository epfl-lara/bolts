; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133778 () Bool)

(assert start!133778)

(declare-fun b_free!32109 () Bool)

(declare-fun b_next!32109 () Bool)

(assert (=> start!133778 (= b_free!32109 (not b_next!32109))))

(declare-fun tp!113532 () Bool)

(declare-fun b_and!51689 () Bool)

(assert (=> start!133778 (= tp!113532 b_and!51689)))

(declare-fun b!1563778 () Bool)

(declare-fun e!871584 () Bool)

(declare-fun e!871586 () Bool)

(assert (=> b!1563778 (= e!871584 e!871586)))

(declare-fun res!1069187 () Bool)

(assert (=> b!1563778 (=> (not res!1069187) (not e!871586))))

(declare-datatypes ((V!59979 0))(
  ( (V!59980 (val!19498 Int)) )
))
(declare-datatypes ((tuple2!25318 0))(
  ( (tuple2!25319 (_1!12669 (_ BitVec 64)) (_2!12669 V!59979)) )
))
(declare-datatypes ((List!36704 0))(
  ( (Nil!36701) (Cons!36700 (h!38147 tuple2!25318) (t!51558 List!36704)) )
))
(declare-datatypes ((ListLongMap!22765 0))(
  ( (ListLongMap!22766 (toList!11398 List!36704)) )
))
(declare-fun lt!671903 () ListLongMap!22765)

(declare-fun contains!10318 (ListLongMap!22765 (_ BitVec 64)) Bool)

(assert (=> b!1563778 (= res!1069187 (not (contains!10318 lt!671903 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!59979)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59979)

(declare-datatypes ((array!104319 0))(
  ( (array!104320 (arr!50347 (Array (_ BitVec 32) (_ BitVec 64))) (size!50898 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104319)

(declare-fun from!782 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18384 0))(
  ( (ValueCellFull!18384 (v!22247 V!59979)) (EmptyCell!18384) )
))
(declare-datatypes ((array!104321 0))(
  ( (array!104322 (arr!50348 (Array (_ BitVec 32) ValueCell!18384)) (size!50899 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104321)

(declare-fun getCurrentListMapNoExtraKeys!6755 (array!104319 array!104321 (_ BitVec 32) (_ BitVec 32) V!59979 V!59979 (_ BitVec 32) Int) ListLongMap!22765)

(assert (=> b!1563778 (= lt!671903 (getCurrentListMapNoExtraKeys!6755 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun mapNonEmpty!59619 () Bool)

(declare-fun mapRes!59619 () Bool)

(declare-fun tp!113533 () Bool)

(declare-fun e!871587 () Bool)

(assert (=> mapNonEmpty!59619 (= mapRes!59619 (and tp!113533 e!871587))))

(declare-fun mapKey!59619 () (_ BitVec 32))

(declare-fun mapRest!59619 () (Array (_ BitVec 32) ValueCell!18384))

(declare-fun mapValue!59619 () ValueCell!18384)

(assert (=> mapNonEmpty!59619 (= (arr!50348 _values!487) (store mapRest!59619 mapKey!59619 mapValue!59619))))

(declare-fun b!1563779 () Bool)

(declare-fun res!1069182 () Bool)

(assert (=> b!1563779 (=> (not res!1069182) (not e!871584))))

(assert (=> b!1563779 (= res!1069182 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50898 _keys!637)) (bvslt from!782 (size!50898 _keys!637))))))

(declare-fun b!1563780 () Bool)

(declare-fun res!1069185 () Bool)

(assert (=> b!1563780 (=> (not res!1069185) (not e!871584))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1563780 (= res!1069185 (not (validKeyInArray!0 (select (arr!50347 _keys!637) from!782))))))

(declare-fun b!1563781 () Bool)

(assert (=> b!1563781 (= e!871586 false)))

(declare-fun lt!671904 () Bool)

(assert (=> b!1563781 (= lt!671904 (contains!10318 lt!671903 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!1069181 () Bool)

(assert (=> start!133778 (=> (not res!1069181) (not e!871584))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133778 (= res!1069181 (validMask!0 mask!947))))

(assert (=> start!133778 e!871584))

(assert (=> start!133778 tp!113532))

(declare-fun tp_is_empty!38829 () Bool)

(assert (=> start!133778 tp_is_empty!38829))

(assert (=> start!133778 true))

(declare-fun array_inv!39057 (array!104319) Bool)

(assert (=> start!133778 (array_inv!39057 _keys!637)))

(declare-fun e!871585 () Bool)

(declare-fun array_inv!39058 (array!104321) Bool)

(assert (=> start!133778 (and (array_inv!39058 _values!487) e!871585)))

(declare-fun b!1563782 () Bool)

(declare-fun res!1069184 () Bool)

(assert (=> b!1563782 (=> (not res!1069184) (not e!871584))))

(assert (=> b!1563782 (= res!1069184 (and (= (size!50899 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50898 _keys!637) (size!50899 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!59619 () Bool)

(assert (=> mapIsEmpty!59619 mapRes!59619))

(declare-fun b!1563783 () Bool)

(declare-fun res!1069186 () Bool)

(assert (=> b!1563783 (=> (not res!1069186) (not e!871584))))

(declare-datatypes ((List!36705 0))(
  ( (Nil!36702) (Cons!36701 (h!38148 (_ BitVec 64)) (t!51559 List!36705)) )
))
(declare-fun arrayNoDuplicates!0 (array!104319 (_ BitVec 32) List!36705) Bool)

(assert (=> b!1563783 (= res!1069186 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36702))))

(declare-fun b!1563784 () Bool)

(declare-fun res!1069183 () Bool)

(assert (=> b!1563784 (=> (not res!1069183) (not e!871584))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104319 (_ BitVec 32)) Bool)

(assert (=> b!1563784 (= res!1069183 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1563785 () Bool)

(declare-fun e!871588 () Bool)

(assert (=> b!1563785 (= e!871588 tp_is_empty!38829)))

(declare-fun b!1563786 () Bool)

(assert (=> b!1563786 (= e!871585 (and e!871588 mapRes!59619))))

(declare-fun condMapEmpty!59619 () Bool)

(declare-fun mapDefault!59619 () ValueCell!18384)

(assert (=> b!1563786 (= condMapEmpty!59619 (= (arr!50348 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18384)) mapDefault!59619)))))

(declare-fun b!1563787 () Bool)

(assert (=> b!1563787 (= e!871587 tp_is_empty!38829)))

(assert (= (and start!133778 res!1069181) b!1563782))

(assert (= (and b!1563782 res!1069184) b!1563784))

(assert (= (and b!1563784 res!1069183) b!1563783))

(assert (= (and b!1563783 res!1069186) b!1563779))

(assert (= (and b!1563779 res!1069182) b!1563780))

(assert (= (and b!1563780 res!1069185) b!1563778))

(assert (= (and b!1563778 res!1069187) b!1563781))

(assert (= (and b!1563786 condMapEmpty!59619) mapIsEmpty!59619))

(assert (= (and b!1563786 (not condMapEmpty!59619)) mapNonEmpty!59619))

(get-info :version)

(assert (= (and mapNonEmpty!59619 ((_ is ValueCellFull!18384) mapValue!59619)) b!1563787))

(assert (= (and b!1563786 ((_ is ValueCellFull!18384) mapDefault!59619)) b!1563785))

(assert (= start!133778 b!1563786))

(declare-fun m!1439225 () Bool)

(assert (=> mapNonEmpty!59619 m!1439225))

(declare-fun m!1439227 () Bool)

(assert (=> start!133778 m!1439227))

(declare-fun m!1439229 () Bool)

(assert (=> start!133778 m!1439229))

(declare-fun m!1439231 () Bool)

(assert (=> start!133778 m!1439231))

(declare-fun m!1439233 () Bool)

(assert (=> b!1563778 m!1439233))

(declare-fun m!1439235 () Bool)

(assert (=> b!1563778 m!1439235))

(declare-fun m!1439237 () Bool)

(assert (=> b!1563780 m!1439237))

(assert (=> b!1563780 m!1439237))

(declare-fun m!1439239 () Bool)

(assert (=> b!1563780 m!1439239))

(declare-fun m!1439241 () Bool)

(assert (=> b!1563781 m!1439241))

(declare-fun m!1439243 () Bool)

(assert (=> b!1563783 m!1439243))

(declare-fun m!1439245 () Bool)

(assert (=> b!1563784 m!1439245))

(check-sat b_and!51689 (not b!1563781) (not b!1563778) (not b!1563783) (not b!1563784) (not mapNonEmpty!59619) (not b_next!32109) (not b!1563780) (not start!133778) tp_is_empty!38829)
(check-sat b_and!51689 (not b_next!32109))
