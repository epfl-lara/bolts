; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133556 () Bool)

(assert start!133556)

(declare-fun b_free!31941 () Bool)

(declare-fun b_next!31941 () Bool)

(assert (=> start!133556 (= b_free!31941 (not b_next!31941))))

(declare-fun tp!112948 () Bool)

(declare-fun b_and!51407 () Bool)

(assert (=> start!133556 (= tp!112948 b_and!51407)))

(declare-fun b!1560797 () Bool)

(declare-fun e!869833 () Bool)

(declare-fun e!869835 () Bool)

(declare-fun mapRes!59286 () Bool)

(assert (=> b!1560797 (= e!869833 (and e!869835 mapRes!59286))))

(declare-fun condMapEmpty!59286 () Bool)

(declare-datatypes ((V!59683 0))(
  ( (V!59684 (val!19387 Int)) )
))
(declare-datatypes ((ValueCell!18273 0))(
  ( (ValueCellFull!18273 (v!22136 V!59683)) (EmptyCell!18273) )
))
(declare-datatypes ((array!103885 0))(
  ( (array!103886 (arr!50130 (Array (_ BitVec 32) ValueCell!18273)) (size!50681 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103885)

(declare-fun mapDefault!59286 () ValueCell!18273)

(assert (=> b!1560797 (= condMapEmpty!59286 (= (arr!50130 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18273)) mapDefault!59286)))))

(declare-fun b!1560798 () Bool)

(declare-fun e!869837 () Bool)

(assert (=> b!1560798 (= e!869837 false)))

(declare-fun zeroValue!453 () V!59683)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59683)

(declare-datatypes ((array!103887 0))(
  ( (array!103888 (arr!50131 (Array (_ BitVec 32) (_ BitVec 64))) (size!50682 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103887)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun defaultEntry!495 () Int)

(declare-fun lt!670980 () Bool)

(declare-datatypes ((tuple2!25184 0))(
  ( (tuple2!25185 (_1!12602 (_ BitVec 64)) (_2!12602 V!59683)) )
))
(declare-datatypes ((List!36561 0))(
  ( (Nil!36558) (Cons!36557 (h!38004 tuple2!25184) (t!51301 List!36561)) )
))
(declare-datatypes ((ListLongMap!22631 0))(
  ( (ListLongMap!22632 (toList!11331 List!36561)) )
))
(declare-fun contains!10251 (ListLongMap!22631 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!6692 (array!103887 array!103885 (_ BitVec 32) (_ BitVec 32) V!59683 V!59683 (_ BitVec 32) Int) ListLongMap!22631)

(assert (=> b!1560798 (= lt!670980 (contains!10251 (getCurrentListMapNoExtraKeys!6692 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1560799 () Bool)

(declare-fun res!1067316 () Bool)

(assert (=> b!1560799 (=> (not res!1067316) (not e!869837))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1560799 (= res!1067316 (validKeyInArray!0 (select (arr!50131 _keys!637) from!782)))))

(declare-fun b!1560800 () Bool)

(declare-fun e!869834 () Bool)

(declare-fun tp_is_empty!38607 () Bool)

(assert (=> b!1560800 (= e!869834 tp_is_empty!38607)))

(declare-fun b!1560801 () Bool)

(declare-fun res!1067317 () Bool)

(assert (=> b!1560801 (=> (not res!1067317) (not e!869837))))

(assert (=> b!1560801 (= res!1067317 (and (= (size!50681 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50682 _keys!637) (size!50681 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun res!1067318 () Bool)

(assert (=> start!133556 (=> (not res!1067318) (not e!869837))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133556 (= res!1067318 (validMask!0 mask!947))))

(assert (=> start!133556 e!869837))

(assert (=> start!133556 tp!112948))

(assert (=> start!133556 tp_is_empty!38607))

(assert (=> start!133556 true))

(declare-fun array_inv!38893 (array!103887) Bool)

(assert (=> start!133556 (array_inv!38893 _keys!637)))

(declare-fun array_inv!38894 (array!103885) Bool)

(assert (=> start!133556 (and (array_inv!38894 _values!487) e!869833)))

(declare-fun b!1560802 () Bool)

(assert (=> b!1560802 (= e!869835 tp_is_empty!38607)))

(declare-fun mapIsEmpty!59286 () Bool)

(assert (=> mapIsEmpty!59286 mapRes!59286))

(declare-fun mapNonEmpty!59286 () Bool)

(declare-fun tp!112947 () Bool)

(assert (=> mapNonEmpty!59286 (= mapRes!59286 (and tp!112947 e!869834))))

(declare-fun mapValue!59286 () ValueCell!18273)

(declare-fun mapKey!59286 () (_ BitVec 32))

(declare-fun mapRest!59286 () (Array (_ BitVec 32) ValueCell!18273))

(assert (=> mapNonEmpty!59286 (= (arr!50130 _values!487) (store mapRest!59286 mapKey!59286 mapValue!59286))))

(declare-fun b!1560803 () Bool)

(declare-fun res!1067314 () Bool)

(assert (=> b!1560803 (=> (not res!1067314) (not e!869837))))

(declare-datatypes ((List!36562 0))(
  ( (Nil!36559) (Cons!36558 (h!38005 (_ BitVec 64)) (t!51302 List!36562)) )
))
(declare-fun arrayNoDuplicates!0 (array!103887 (_ BitVec 32) List!36562) Bool)

(assert (=> b!1560803 (= res!1067314 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36559))))

(declare-fun b!1560804 () Bool)

(declare-fun res!1067315 () Bool)

(assert (=> b!1560804 (=> (not res!1067315) (not e!869837))))

(assert (=> b!1560804 (= res!1067315 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50682 _keys!637)) (bvslt from!782 (size!50682 _keys!637))))))

(declare-fun b!1560805 () Bool)

(declare-fun res!1067313 () Bool)

(assert (=> b!1560805 (=> (not res!1067313) (not e!869837))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103887 (_ BitVec 32)) Bool)

(assert (=> b!1560805 (= res!1067313 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(assert (= (and start!133556 res!1067318) b!1560801))

(assert (= (and b!1560801 res!1067317) b!1560805))

(assert (= (and b!1560805 res!1067313) b!1560803))

(assert (= (and b!1560803 res!1067314) b!1560804))

(assert (= (and b!1560804 res!1067315) b!1560799))

(assert (= (and b!1560799 res!1067316) b!1560798))

(assert (= (and b!1560797 condMapEmpty!59286) mapIsEmpty!59286))

(assert (= (and b!1560797 (not condMapEmpty!59286)) mapNonEmpty!59286))

(get-info :version)

(assert (= (and mapNonEmpty!59286 ((_ is ValueCellFull!18273) mapValue!59286)) b!1560800))

(assert (= (and b!1560797 ((_ is ValueCellFull!18273) mapDefault!59286)) b!1560802))

(assert (= start!133556 b!1560797))

(declare-fun m!1436523 () Bool)

(assert (=> b!1560803 m!1436523))

(declare-fun m!1436525 () Bool)

(assert (=> start!133556 m!1436525))

(declare-fun m!1436527 () Bool)

(assert (=> start!133556 m!1436527))

(declare-fun m!1436529 () Bool)

(assert (=> start!133556 m!1436529))

(declare-fun m!1436531 () Bool)

(assert (=> b!1560799 m!1436531))

(assert (=> b!1560799 m!1436531))

(declare-fun m!1436533 () Bool)

(assert (=> b!1560799 m!1436533))

(declare-fun m!1436535 () Bool)

(assert (=> b!1560805 m!1436535))

(declare-fun m!1436537 () Bool)

(assert (=> b!1560798 m!1436537))

(assert (=> b!1560798 m!1436537))

(declare-fun m!1436539 () Bool)

(assert (=> b!1560798 m!1436539))

(declare-fun m!1436541 () Bool)

(assert (=> mapNonEmpty!59286 m!1436541))

(check-sat (not b!1560803) (not b_next!31941) (not b!1560799) (not start!133556) b_and!51407 (not b!1560798) (not b!1560805) tp_is_empty!38607 (not mapNonEmpty!59286))
(check-sat b_and!51407 (not b_next!31941))
