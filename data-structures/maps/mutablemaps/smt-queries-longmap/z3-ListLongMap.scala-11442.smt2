; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133484 () Bool)

(assert start!133484)

(declare-fun b!1560041 () Bool)

(declare-fun e!869293 () Bool)

(assert (=> b!1560041 (= e!869293 false)))

(declare-fun lt!670881 () Bool)

(declare-datatypes ((V!59587 0))(
  ( (V!59588 (val!19351 Int)) )
))
(declare-datatypes ((tuple2!25172 0))(
  ( (tuple2!25173 (_1!12596 (_ BitVec 64)) (_2!12596 V!59587)) )
))
(declare-datatypes ((List!36528 0))(
  ( (Nil!36525) (Cons!36524 (h!37971 tuple2!25172) (t!51268 List!36528)) )
))
(declare-datatypes ((ListLongMap!22619 0))(
  ( (ListLongMap!22620 (toList!11325 List!36528)) )
))
(declare-fun contains!10245 (ListLongMap!22619 (_ BitVec 64)) Bool)

(assert (=> b!1560041 (= lt!670881 (contains!10245 (ListLongMap!22620 Nil!36525) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1560042 () Bool)

(declare-fun e!869296 () Bool)

(declare-fun e!869294 () Bool)

(declare-fun mapRes!59178 () Bool)

(assert (=> b!1560042 (= e!869296 (and e!869294 mapRes!59178))))

(declare-fun condMapEmpty!59178 () Bool)

(declare-datatypes ((ValueCell!18237 0))(
  ( (ValueCellFull!18237 (v!22100 V!59587)) (EmptyCell!18237) )
))
(declare-datatypes ((array!103749 0))(
  ( (array!103750 (arr!50062 (Array (_ BitVec 32) ValueCell!18237)) (size!50613 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103749)

(declare-fun mapDefault!59178 () ValueCell!18237)

(assert (=> b!1560042 (= condMapEmpty!59178 (= (arr!50062 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18237)) mapDefault!59178)))))

(declare-fun b!1560043 () Bool)

(declare-fun res!1066886 () Bool)

(assert (=> b!1560043 (=> (not res!1066886) (not e!869293))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!103751 0))(
  ( (array!103752 (arr!50063 (Array (_ BitVec 32) (_ BitVec 64))) (size!50614 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103751)

(assert (=> b!1560043 (= res!1066886 (and (= (size!50613 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50614 _keys!637) (size!50613 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!59178 () Bool)

(declare-fun tp!112834 () Bool)

(declare-fun e!869297 () Bool)

(assert (=> mapNonEmpty!59178 (= mapRes!59178 (and tp!112834 e!869297))))

(declare-fun mapKey!59178 () (_ BitVec 32))

(declare-fun mapValue!59178 () ValueCell!18237)

(declare-fun mapRest!59178 () (Array (_ BitVec 32) ValueCell!18237))

(assert (=> mapNonEmpty!59178 (= (arr!50062 _values!487) (store mapRest!59178 mapKey!59178 mapValue!59178))))

(declare-fun b!1560044 () Bool)

(declare-fun res!1066881 () Bool)

(assert (=> b!1560044 (=> (not res!1066881) (not e!869293))))

(assert (=> b!1560044 (= res!1066881 (not (contains!10245 (ListLongMap!22620 Nil!36525) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1066882 () Bool)

(assert (=> start!133484 (=> (not res!1066882) (not e!869293))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133484 (= res!1066882 (validMask!0 mask!947))))

(assert (=> start!133484 e!869293))

(assert (=> start!133484 true))

(declare-fun array_inv!38839 (array!103751) Bool)

(assert (=> start!133484 (array_inv!38839 _keys!637)))

(declare-fun array_inv!38840 (array!103749) Bool)

(assert (=> start!133484 (and (array_inv!38840 _values!487) e!869296)))

(declare-fun b!1560045 () Bool)

(declare-fun res!1066884 () Bool)

(assert (=> b!1560045 (=> (not res!1066884) (not e!869293))))

(declare-datatypes ((List!36529 0))(
  ( (Nil!36526) (Cons!36525 (h!37972 (_ BitVec 64)) (t!51269 List!36529)) )
))
(declare-fun arrayNoDuplicates!0 (array!103751 (_ BitVec 32) List!36529) Bool)

(assert (=> b!1560045 (= res!1066884 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36526))))

(declare-fun b!1560046 () Bool)

(declare-fun tp_is_empty!38535 () Bool)

(assert (=> b!1560046 (= e!869294 tp_is_empty!38535)))

(declare-fun b!1560047 () Bool)

(assert (=> b!1560047 (= e!869297 tp_is_empty!38535)))

(declare-fun mapIsEmpty!59178 () Bool)

(assert (=> mapIsEmpty!59178 mapRes!59178))

(declare-fun b!1560048 () Bool)

(declare-fun res!1066883 () Bool)

(assert (=> b!1560048 (=> (not res!1066883) (not e!869293))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103751 (_ BitVec 32)) Bool)

(assert (=> b!1560048 (= res!1066883 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1560049 () Bool)

(declare-fun res!1066885 () Bool)

(assert (=> b!1560049 (=> (not res!1066885) (not e!869293))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1560049 (= res!1066885 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50614 _keys!637)) (bvsge from!782 (size!50614 _keys!637))))))

(assert (= (and start!133484 res!1066882) b!1560043))

(assert (= (and b!1560043 res!1066886) b!1560048))

(assert (= (and b!1560048 res!1066883) b!1560045))

(assert (= (and b!1560045 res!1066884) b!1560049))

(assert (= (and b!1560049 res!1066885) b!1560044))

(assert (= (and b!1560044 res!1066881) b!1560041))

(assert (= (and b!1560042 condMapEmpty!59178) mapIsEmpty!59178))

(assert (= (and b!1560042 (not condMapEmpty!59178)) mapNonEmpty!59178))

(get-info :version)

(assert (= (and mapNonEmpty!59178 ((_ is ValueCellFull!18237) mapValue!59178)) b!1560047))

(assert (= (and b!1560042 ((_ is ValueCellFull!18237) mapDefault!59178)) b!1560046))

(assert (= start!133484 b!1560042))

(declare-fun m!1436039 () Bool)

(assert (=> b!1560041 m!1436039))

(declare-fun m!1436041 () Bool)

(assert (=> mapNonEmpty!59178 m!1436041))

(declare-fun m!1436043 () Bool)

(assert (=> start!133484 m!1436043))

(declare-fun m!1436045 () Bool)

(assert (=> start!133484 m!1436045))

(declare-fun m!1436047 () Bool)

(assert (=> start!133484 m!1436047))

(declare-fun m!1436049 () Bool)

(assert (=> b!1560048 m!1436049))

(declare-fun m!1436051 () Bool)

(assert (=> b!1560044 m!1436051))

(declare-fun m!1436053 () Bool)

(assert (=> b!1560045 m!1436053))

(check-sat (not start!133484) (not mapNonEmpty!59178) (not b!1560045) (not b!1560048) (not b!1560041) (not b!1560044) tp_is_empty!38535)
(check-sat)
