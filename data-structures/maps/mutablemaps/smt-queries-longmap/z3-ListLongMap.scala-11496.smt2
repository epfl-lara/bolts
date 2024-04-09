; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133818 () Bool)

(assert start!133818)

(declare-fun b!1564222 () Bool)

(declare-fun e!871853 () Bool)

(assert (=> b!1564222 (= e!871853 false)))

(declare-fun lt!671952 () Bool)

(declare-datatypes ((V!60019 0))(
  ( (V!60020 (val!19513 Int)) )
))
(declare-datatypes ((tuple2!25336 0))(
  ( (tuple2!25337 (_1!12678 (_ BitVec 64)) (_2!12678 V!60019)) )
))
(declare-datatypes ((List!36723 0))(
  ( (Nil!36720) (Cons!36719 (h!38166 tuple2!25336) (t!51577 List!36723)) )
))
(declare-datatypes ((ListLongMap!22783 0))(
  ( (ListLongMap!22784 (toList!11407 List!36723)) )
))
(declare-fun contains!10328 (ListLongMap!22783 (_ BitVec 64)) Bool)

(assert (=> b!1564222 (= lt!671952 (contains!10328 (ListLongMap!22784 Nil!36720) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1564223 () Bool)

(declare-fun e!871849 () Bool)

(declare-fun tp_is_empty!38859 () Bool)

(assert (=> b!1564223 (= e!871849 tp_is_empty!38859)))

(declare-fun res!1069470 () Bool)

(assert (=> start!133818 (=> (not res!1069470) (not e!871853))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133818 (= res!1069470 (validMask!0 mask!947))))

(assert (=> start!133818 e!871853))

(assert (=> start!133818 true))

(declare-datatypes ((array!104375 0))(
  ( (array!104376 (arr!50374 (Array (_ BitVec 32) (_ BitVec 64))) (size!50925 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104375)

(declare-fun array_inv!39073 (array!104375) Bool)

(assert (=> start!133818 (array_inv!39073 _keys!637)))

(declare-datatypes ((ValueCell!18399 0))(
  ( (ValueCellFull!18399 (v!22262 V!60019)) (EmptyCell!18399) )
))
(declare-datatypes ((array!104377 0))(
  ( (array!104378 (arr!50375 (Array (_ BitVec 32) ValueCell!18399)) (size!50926 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104377)

(declare-fun e!871851 () Bool)

(declare-fun array_inv!39074 (array!104377) Bool)

(assert (=> start!133818 (and (array_inv!39074 _values!487) e!871851)))

(declare-fun b!1564224 () Bool)

(declare-fun res!1069472 () Bool)

(assert (=> b!1564224 (=> (not res!1069472) (not e!871853))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1564224 (= res!1069472 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50925 _keys!637)) (bvsge from!782 (size!50925 _keys!637))))))

(declare-fun b!1564225 () Bool)

(declare-fun res!1069475 () Bool)

(assert (=> b!1564225 (=> (not res!1069475) (not e!871853))))

(assert (=> b!1564225 (= res!1069475 (not (contains!10328 (ListLongMap!22784 Nil!36720) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1564226 () Bool)

(declare-fun e!871852 () Bool)

(assert (=> b!1564226 (= e!871852 tp_is_empty!38859)))

(declare-fun mapIsEmpty!59667 () Bool)

(declare-fun mapRes!59667 () Bool)

(assert (=> mapIsEmpty!59667 mapRes!59667))

(declare-fun mapNonEmpty!59667 () Bool)

(declare-fun tp!113593 () Bool)

(assert (=> mapNonEmpty!59667 (= mapRes!59667 (and tp!113593 e!871849))))

(declare-fun mapValue!59667 () ValueCell!18399)

(declare-fun mapKey!59667 () (_ BitVec 32))

(declare-fun mapRest!59667 () (Array (_ BitVec 32) ValueCell!18399))

(assert (=> mapNonEmpty!59667 (= (arr!50375 _values!487) (store mapRest!59667 mapKey!59667 mapValue!59667))))

(declare-fun b!1564227 () Bool)

(declare-fun res!1069474 () Bool)

(assert (=> b!1564227 (=> (not res!1069474) (not e!871853))))

(declare-datatypes ((List!36724 0))(
  ( (Nil!36721) (Cons!36720 (h!38167 (_ BitVec 64)) (t!51578 List!36724)) )
))
(declare-fun arrayNoDuplicates!0 (array!104375 (_ BitVec 32) List!36724) Bool)

(assert (=> b!1564227 (= res!1069474 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36721))))

(declare-fun b!1564228 () Bool)

(assert (=> b!1564228 (= e!871851 (and e!871852 mapRes!59667))))

(declare-fun condMapEmpty!59667 () Bool)

(declare-fun mapDefault!59667 () ValueCell!18399)

(assert (=> b!1564228 (= condMapEmpty!59667 (= (arr!50375 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18399)) mapDefault!59667)))))

(declare-fun b!1564229 () Bool)

(declare-fun res!1069473 () Bool)

(assert (=> b!1564229 (=> (not res!1069473) (not e!871853))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104375 (_ BitVec 32)) Bool)

(assert (=> b!1564229 (= res!1069473 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1564230 () Bool)

(declare-fun res!1069471 () Bool)

(assert (=> b!1564230 (=> (not res!1069471) (not e!871853))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1564230 (= res!1069471 (and (= (size!50926 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50925 _keys!637) (size!50926 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(assert (= (and start!133818 res!1069470) b!1564230))

(assert (= (and b!1564230 res!1069471) b!1564229))

(assert (= (and b!1564229 res!1069473) b!1564227))

(assert (= (and b!1564227 res!1069474) b!1564224))

(assert (= (and b!1564224 res!1069472) b!1564225))

(assert (= (and b!1564225 res!1069475) b!1564222))

(assert (= (and b!1564228 condMapEmpty!59667) mapIsEmpty!59667))

(assert (= (and b!1564228 (not condMapEmpty!59667)) mapNonEmpty!59667))

(get-info :version)

(assert (= (and mapNonEmpty!59667 ((_ is ValueCellFull!18399) mapValue!59667)) b!1564223))

(assert (= (and b!1564228 ((_ is ValueCellFull!18399) mapDefault!59667)) b!1564226))

(assert (= start!133818 b!1564228))

(declare-fun m!1439501 () Bool)

(assert (=> b!1564229 m!1439501))

(declare-fun m!1439503 () Bool)

(assert (=> b!1564227 m!1439503))

(declare-fun m!1439505 () Bool)

(assert (=> b!1564222 m!1439505))

(declare-fun m!1439507 () Bool)

(assert (=> start!133818 m!1439507))

(declare-fun m!1439509 () Bool)

(assert (=> start!133818 m!1439509))

(declare-fun m!1439511 () Bool)

(assert (=> start!133818 m!1439511))

(declare-fun m!1439513 () Bool)

(assert (=> b!1564225 m!1439513))

(declare-fun m!1439515 () Bool)

(assert (=> mapNonEmpty!59667 m!1439515))

(check-sat (not b!1564222) (not start!133818) tp_is_empty!38859 (not mapNonEmpty!59667) (not b!1564229) (not b!1564227) (not b!1564225))
(check-sat)
