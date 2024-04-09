; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133772 () Bool)

(assert start!133772)

(declare-fun b_free!32103 () Bool)

(declare-fun b_next!32103 () Bool)

(assert (=> start!133772 (= b_free!32103 (not b_next!32103))))

(declare-fun tp!113514 () Bool)

(declare-fun b_and!51683 () Bool)

(assert (=> start!133772 (= tp!113514 b_and!51683)))

(declare-fun b!1563688 () Bool)

(declare-fun e!871532 () Bool)

(declare-fun e!871533 () Bool)

(assert (=> b!1563688 (= e!871532 e!871533)))

(declare-fun res!1069122 () Bool)

(assert (=> b!1563688 (=> (not res!1069122) (not e!871533))))

(declare-datatypes ((V!59971 0))(
  ( (V!59972 (val!19495 Int)) )
))
(declare-datatypes ((tuple2!25314 0))(
  ( (tuple2!25315 (_1!12667 (_ BitVec 64)) (_2!12667 V!59971)) )
))
(declare-datatypes ((List!36700 0))(
  ( (Nil!36697) (Cons!36696 (h!38143 tuple2!25314) (t!51554 List!36700)) )
))
(declare-datatypes ((ListLongMap!22761 0))(
  ( (ListLongMap!22762 (toList!11396 List!36700)) )
))
(declare-fun lt!671885 () ListLongMap!22761)

(declare-fun contains!10316 (ListLongMap!22761 (_ BitVec 64)) Bool)

(assert (=> b!1563688 (= res!1069122 (not (contains!10316 lt!671885 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!59971)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59971)

(declare-datatypes ((array!104307 0))(
  ( (array!104308 (arr!50341 (Array (_ BitVec 32) (_ BitVec 64))) (size!50892 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104307)

(declare-datatypes ((ValueCell!18381 0))(
  ( (ValueCellFull!18381 (v!22244 V!59971)) (EmptyCell!18381) )
))
(declare-datatypes ((array!104309 0))(
  ( (array!104310 (arr!50342 (Array (_ BitVec 32) ValueCell!18381)) (size!50893 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104309)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6753 (array!104307 array!104309 (_ BitVec 32) (_ BitVec 32) V!59971 V!59971 (_ BitVec 32) Int) ListLongMap!22761)

(assert (=> b!1563688 (= lt!671885 (getCurrentListMapNoExtraKeys!6753 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun mapNonEmpty!59610 () Bool)

(declare-fun mapRes!59610 () Bool)

(declare-fun tp!113515 () Bool)

(declare-fun e!871531 () Bool)

(assert (=> mapNonEmpty!59610 (= mapRes!59610 (and tp!113515 e!871531))))

(declare-fun mapKey!59610 () (_ BitVec 32))

(declare-fun mapRest!59610 () (Array (_ BitVec 32) ValueCell!18381))

(declare-fun mapValue!59610 () ValueCell!18381)

(assert (=> mapNonEmpty!59610 (= (arr!50342 _values!487) (store mapRest!59610 mapKey!59610 mapValue!59610))))

(declare-fun b!1563689 () Bool)

(declare-fun res!1069124 () Bool)

(assert (=> b!1563689 (=> (not res!1069124) (not e!871532))))

(assert (=> b!1563689 (= res!1069124 (and (= (size!50893 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50892 _keys!637) (size!50893 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1563690 () Bool)

(declare-fun res!1069118 () Bool)

(assert (=> b!1563690 (=> (not res!1069118) (not e!871532))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1563690 (= res!1069118 (not (validKeyInArray!0 (select (arr!50341 _keys!637) from!782))))))

(declare-fun b!1563691 () Bool)

(declare-fun tp_is_empty!38823 () Bool)

(assert (=> b!1563691 (= e!871531 tp_is_empty!38823)))

(declare-fun b!1563693 () Bool)

(declare-fun res!1069123 () Bool)

(assert (=> b!1563693 (=> (not res!1069123) (not e!871532))))

(declare-datatypes ((List!36701 0))(
  ( (Nil!36698) (Cons!36697 (h!38144 (_ BitVec 64)) (t!51555 List!36701)) )
))
(declare-fun arrayNoDuplicates!0 (array!104307 (_ BitVec 32) List!36701) Bool)

(assert (=> b!1563693 (= res!1069123 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36698))))

(declare-fun b!1563694 () Bool)

(declare-fun res!1069120 () Bool)

(assert (=> b!1563694 (=> (not res!1069120) (not e!871532))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104307 (_ BitVec 32)) Bool)

(assert (=> b!1563694 (= res!1069120 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1563695 () Bool)

(assert (=> b!1563695 (= e!871533 false)))

(declare-fun lt!671886 () Bool)

(assert (=> b!1563695 (= lt!671886 (contains!10316 lt!671885 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!59610 () Bool)

(assert (=> mapIsEmpty!59610 mapRes!59610))

(declare-fun res!1069119 () Bool)

(assert (=> start!133772 (=> (not res!1069119) (not e!871532))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133772 (= res!1069119 (validMask!0 mask!947))))

(assert (=> start!133772 e!871532))

(assert (=> start!133772 tp!113514))

(assert (=> start!133772 tp_is_empty!38823))

(assert (=> start!133772 true))

(declare-fun array_inv!39053 (array!104307) Bool)

(assert (=> start!133772 (array_inv!39053 _keys!637)))

(declare-fun e!871530 () Bool)

(declare-fun array_inv!39054 (array!104309) Bool)

(assert (=> start!133772 (and (array_inv!39054 _values!487) e!871530)))

(declare-fun b!1563692 () Bool)

(declare-fun e!871534 () Bool)

(assert (=> b!1563692 (= e!871534 tp_is_empty!38823)))

(declare-fun b!1563696 () Bool)

(assert (=> b!1563696 (= e!871530 (and e!871534 mapRes!59610))))

(declare-fun condMapEmpty!59610 () Bool)

(declare-fun mapDefault!59610 () ValueCell!18381)

(assert (=> b!1563696 (= condMapEmpty!59610 (= (arr!50342 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18381)) mapDefault!59610)))))

(declare-fun b!1563697 () Bool)

(declare-fun res!1069121 () Bool)

(assert (=> b!1563697 (=> (not res!1069121) (not e!871532))))

(assert (=> b!1563697 (= res!1069121 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50892 _keys!637)) (bvslt from!782 (size!50892 _keys!637))))))

(assert (= (and start!133772 res!1069119) b!1563689))

(assert (= (and b!1563689 res!1069124) b!1563694))

(assert (= (and b!1563694 res!1069120) b!1563693))

(assert (= (and b!1563693 res!1069123) b!1563697))

(assert (= (and b!1563697 res!1069121) b!1563690))

(assert (= (and b!1563690 res!1069118) b!1563688))

(assert (= (and b!1563688 res!1069122) b!1563695))

(assert (= (and b!1563696 condMapEmpty!59610) mapIsEmpty!59610))

(assert (= (and b!1563696 (not condMapEmpty!59610)) mapNonEmpty!59610))

(get-info :version)

(assert (= (and mapNonEmpty!59610 ((_ is ValueCellFull!18381) mapValue!59610)) b!1563691))

(assert (= (and b!1563696 ((_ is ValueCellFull!18381) mapDefault!59610)) b!1563692))

(assert (= start!133772 b!1563696))

(declare-fun m!1439159 () Bool)

(assert (=> b!1563693 m!1439159))

(declare-fun m!1439161 () Bool)

(assert (=> b!1563690 m!1439161))

(assert (=> b!1563690 m!1439161))

(declare-fun m!1439163 () Bool)

(assert (=> b!1563690 m!1439163))

(declare-fun m!1439165 () Bool)

(assert (=> b!1563694 m!1439165))

(declare-fun m!1439167 () Bool)

(assert (=> b!1563695 m!1439167))

(declare-fun m!1439169 () Bool)

(assert (=> b!1563688 m!1439169))

(declare-fun m!1439171 () Bool)

(assert (=> b!1563688 m!1439171))

(declare-fun m!1439173 () Bool)

(assert (=> mapNonEmpty!59610 m!1439173))

(declare-fun m!1439175 () Bool)

(assert (=> start!133772 m!1439175))

(declare-fun m!1439177 () Bool)

(assert (=> start!133772 m!1439177))

(declare-fun m!1439179 () Bool)

(assert (=> start!133772 m!1439179))

(check-sat (not b!1563693) (not b!1563694) tp_is_empty!38823 (not b_next!32103) b_and!51683 (not b!1563688) (not b!1563690) (not mapNonEmpty!59610) (not b!1563695) (not start!133772))
(check-sat b_and!51683 (not b_next!32103))
