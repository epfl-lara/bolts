; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133460 () Bool)

(assert start!133460)

(declare-fun res!1066666 () Bool)

(declare-fun e!869113 () Bool)

(assert (=> start!133460 (=> (not res!1066666) (not e!869113))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133460 (= res!1066666 (validMask!0 mask!947))))

(assert (=> start!133460 e!869113))

(assert (=> start!133460 true))

(declare-datatypes ((array!103701 0))(
  ( (array!103702 (arr!50038 (Array (_ BitVec 32) (_ BitVec 64))) (size!50589 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103701)

(declare-fun array_inv!38817 (array!103701) Bool)

(assert (=> start!133460 (array_inv!38817 _keys!637)))

(declare-datatypes ((V!59555 0))(
  ( (V!59556 (val!19339 Int)) )
))
(declare-datatypes ((ValueCell!18225 0))(
  ( (ValueCellFull!18225 (v!22088 V!59555)) (EmptyCell!18225) )
))
(declare-datatypes ((array!103703 0))(
  ( (array!103704 (arr!50039 (Array (_ BitVec 32) ValueCell!18225)) (size!50590 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103703)

(declare-fun e!869114 () Bool)

(declare-fun array_inv!38818 (array!103703) Bool)

(assert (=> start!133460 (and (array_inv!38818 _values!487) e!869114)))

(declare-fun mapIsEmpty!59142 () Bool)

(declare-fun mapRes!59142 () Bool)

(assert (=> mapIsEmpty!59142 mapRes!59142))

(declare-fun b!1559717 () Bool)

(declare-fun e!869117 () Bool)

(assert (=> b!1559717 (= e!869114 (and e!869117 mapRes!59142))))

(declare-fun condMapEmpty!59142 () Bool)

(declare-fun mapDefault!59142 () ValueCell!18225)

(assert (=> b!1559717 (= condMapEmpty!59142 (= (arr!50039 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18225)) mapDefault!59142)))))

(declare-fun b!1559718 () Bool)

(declare-fun res!1066665 () Bool)

(assert (=> b!1559718 (=> (not res!1066665) (not e!869113))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103701 (_ BitVec 32)) Bool)

(assert (=> b!1559718 (= res!1066665 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1559719 () Bool)

(declare-fun res!1066668 () Bool)

(assert (=> b!1559719 (=> (not res!1066668) (not e!869113))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1559719 (= res!1066668 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50589 _keys!637)) (bvsge from!782 (size!50589 _keys!637))))))

(declare-fun b!1559720 () Bool)

(declare-fun tp_is_empty!38511 () Bool)

(assert (=> b!1559720 (= e!869117 tp_is_empty!38511)))

(declare-fun b!1559721 () Bool)

(declare-fun res!1066669 () Bool)

(assert (=> b!1559721 (=> (not res!1066669) (not e!869113))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1559721 (= res!1066669 (and (= (size!50590 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50589 _keys!637) (size!50590 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1559722 () Bool)

(declare-fun res!1066670 () Bool)

(assert (=> b!1559722 (=> (not res!1066670) (not e!869113))))

(declare-datatypes ((List!36509 0))(
  ( (Nil!36506) (Cons!36505 (h!37952 (_ BitVec 64)) (t!51249 List!36509)) )
))
(declare-fun arrayNoDuplicates!0 (array!103701 (_ BitVec 32) List!36509) Bool)

(assert (=> b!1559722 (= res!1066670 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36506))))

(declare-fun b!1559723 () Bool)

(assert (=> b!1559723 (= e!869113 false)))

(declare-fun lt!670845 () Bool)

(declare-datatypes ((tuple2!25152 0))(
  ( (tuple2!25153 (_1!12586 (_ BitVec 64)) (_2!12586 V!59555)) )
))
(declare-datatypes ((List!36510 0))(
  ( (Nil!36507) (Cons!36506 (h!37953 tuple2!25152) (t!51250 List!36510)) )
))
(declare-datatypes ((ListLongMap!22599 0))(
  ( (ListLongMap!22600 (toList!11315 List!36510)) )
))
(declare-fun contains!10235 (ListLongMap!22599 (_ BitVec 64)) Bool)

(assert (=> b!1559723 (= lt!670845 (contains!10235 (ListLongMap!22600 Nil!36507) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!59142 () Bool)

(declare-fun tp!112798 () Bool)

(declare-fun e!869115 () Bool)

(assert (=> mapNonEmpty!59142 (= mapRes!59142 (and tp!112798 e!869115))))

(declare-fun mapRest!59142 () (Array (_ BitVec 32) ValueCell!18225))

(declare-fun mapValue!59142 () ValueCell!18225)

(declare-fun mapKey!59142 () (_ BitVec 32))

(assert (=> mapNonEmpty!59142 (= (arr!50039 _values!487) (store mapRest!59142 mapKey!59142 mapValue!59142))))

(declare-fun b!1559724 () Bool)

(declare-fun res!1066667 () Bool)

(assert (=> b!1559724 (=> (not res!1066667) (not e!869113))))

(assert (=> b!1559724 (= res!1066667 (not (contains!10235 (ListLongMap!22600 Nil!36507) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1559725 () Bool)

(assert (=> b!1559725 (= e!869115 tp_is_empty!38511)))

(assert (= (and start!133460 res!1066666) b!1559721))

(assert (= (and b!1559721 res!1066669) b!1559718))

(assert (= (and b!1559718 res!1066665) b!1559722))

(assert (= (and b!1559722 res!1066670) b!1559719))

(assert (= (and b!1559719 res!1066668) b!1559724))

(assert (= (and b!1559724 res!1066667) b!1559723))

(assert (= (and b!1559717 condMapEmpty!59142) mapIsEmpty!59142))

(assert (= (and b!1559717 (not condMapEmpty!59142)) mapNonEmpty!59142))

(get-info :version)

(assert (= (and mapNonEmpty!59142 ((_ is ValueCellFull!18225) mapValue!59142)) b!1559725))

(assert (= (and b!1559717 ((_ is ValueCellFull!18225) mapDefault!59142)) b!1559720))

(assert (= start!133460 b!1559717))

(declare-fun m!1435847 () Bool)

(assert (=> b!1559723 m!1435847))

(declare-fun m!1435849 () Bool)

(assert (=> b!1559722 m!1435849))

(declare-fun m!1435851 () Bool)

(assert (=> b!1559718 m!1435851))

(declare-fun m!1435853 () Bool)

(assert (=> mapNonEmpty!59142 m!1435853))

(declare-fun m!1435855 () Bool)

(assert (=> start!133460 m!1435855))

(declare-fun m!1435857 () Bool)

(assert (=> start!133460 m!1435857))

(declare-fun m!1435859 () Bool)

(assert (=> start!133460 m!1435859))

(declare-fun m!1435861 () Bool)

(assert (=> b!1559724 m!1435861))

(check-sat (not mapNonEmpty!59142) (not b!1559724) (not b!1559718) (not start!133460) (not b!1559722) tp_is_empty!38511 (not b!1559723))
(check-sat)
