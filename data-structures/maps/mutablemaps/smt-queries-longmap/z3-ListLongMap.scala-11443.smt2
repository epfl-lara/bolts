; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133490 () Bool)

(assert start!133490)

(declare-fun b!1560122 () Bool)

(declare-fun e!869339 () Bool)

(declare-fun e!869342 () Bool)

(declare-fun mapRes!59187 () Bool)

(assert (=> b!1560122 (= e!869339 (and e!869342 mapRes!59187))))

(declare-fun condMapEmpty!59187 () Bool)

(declare-datatypes ((V!59595 0))(
  ( (V!59596 (val!19354 Int)) )
))
(declare-datatypes ((ValueCell!18240 0))(
  ( (ValueCellFull!18240 (v!22103 V!59595)) (EmptyCell!18240) )
))
(declare-datatypes ((array!103759 0))(
  ( (array!103760 (arr!50067 (Array (_ BitVec 32) ValueCell!18240)) (size!50618 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103759)

(declare-fun mapDefault!59187 () ValueCell!18240)

(assert (=> b!1560122 (= condMapEmpty!59187 (= (arr!50067 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18240)) mapDefault!59187)))))

(declare-fun b!1560123 () Bool)

(declare-fun e!869340 () Bool)

(assert (=> b!1560123 (= e!869340 false)))

(declare-fun lt!670890 () Bool)

(declare-datatypes ((tuple2!25178 0))(
  ( (tuple2!25179 (_1!12599 (_ BitVec 64)) (_2!12599 V!59595)) )
))
(declare-datatypes ((List!36533 0))(
  ( (Nil!36530) (Cons!36529 (h!37976 tuple2!25178) (t!51273 List!36533)) )
))
(declare-datatypes ((ListLongMap!22625 0))(
  ( (ListLongMap!22626 (toList!11328 List!36533)) )
))
(declare-fun contains!10248 (ListLongMap!22625 (_ BitVec 64)) Bool)

(assert (=> b!1560123 (= lt!670890 (contains!10248 (ListLongMap!22626 Nil!36530) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1560124 () Bool)

(declare-fun e!869341 () Bool)

(declare-fun tp_is_empty!38541 () Bool)

(assert (=> b!1560124 (= e!869341 tp_is_empty!38541)))

(declare-fun b!1560125 () Bool)

(declare-fun res!1066940 () Bool)

(assert (=> b!1560125 (=> (not res!1066940) (not e!869340))))

(declare-datatypes ((array!103761 0))(
  ( (array!103762 (arr!50068 (Array (_ BitVec 32) (_ BitVec 64))) (size!50619 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103761)

(declare-datatypes ((List!36534 0))(
  ( (Nil!36531) (Cons!36530 (h!37977 (_ BitVec 64)) (t!51274 List!36534)) )
))
(declare-fun arrayNoDuplicates!0 (array!103761 (_ BitVec 32) List!36534) Bool)

(assert (=> b!1560125 (= res!1066940 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36531))))

(declare-fun b!1560126 () Bool)

(declare-fun res!1066936 () Bool)

(assert (=> b!1560126 (=> (not res!1066936) (not e!869340))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103761 (_ BitVec 32)) Bool)

(assert (=> b!1560126 (= res!1066936 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun mapIsEmpty!59187 () Bool)

(assert (=> mapIsEmpty!59187 mapRes!59187))

(declare-fun res!1066937 () Bool)

(assert (=> start!133490 (=> (not res!1066937) (not e!869340))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133490 (= res!1066937 (validMask!0 mask!947))))

(assert (=> start!133490 e!869340))

(assert (=> start!133490 true))

(declare-fun array_inv!38841 (array!103761) Bool)

(assert (=> start!133490 (array_inv!38841 _keys!637)))

(declare-fun array_inv!38842 (array!103759) Bool)

(assert (=> start!133490 (and (array_inv!38842 _values!487) e!869339)))

(declare-fun mapNonEmpty!59187 () Bool)

(declare-fun tp!112843 () Bool)

(assert (=> mapNonEmpty!59187 (= mapRes!59187 (and tp!112843 e!869341))))

(declare-fun mapValue!59187 () ValueCell!18240)

(declare-fun mapKey!59187 () (_ BitVec 32))

(declare-fun mapRest!59187 () (Array (_ BitVec 32) ValueCell!18240))

(assert (=> mapNonEmpty!59187 (= (arr!50067 _values!487) (store mapRest!59187 mapKey!59187 mapValue!59187))))

(declare-fun b!1560127 () Bool)

(assert (=> b!1560127 (= e!869342 tp_is_empty!38541)))

(declare-fun b!1560128 () Bool)

(declare-fun res!1066938 () Bool)

(assert (=> b!1560128 (=> (not res!1066938) (not e!869340))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1560128 (= res!1066938 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50619 _keys!637)) (bvsge from!782 (size!50619 _keys!637))))))

(declare-fun b!1560129 () Bool)

(declare-fun res!1066939 () Bool)

(assert (=> b!1560129 (=> (not res!1066939) (not e!869340))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1560129 (= res!1066939 (and (= (size!50618 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50619 _keys!637) (size!50618 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1560130 () Bool)

(declare-fun res!1066935 () Bool)

(assert (=> b!1560130 (=> (not res!1066935) (not e!869340))))

(assert (=> b!1560130 (= res!1066935 (not (contains!10248 (ListLongMap!22626 Nil!36530) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!133490 res!1066937) b!1560129))

(assert (= (and b!1560129 res!1066939) b!1560126))

(assert (= (and b!1560126 res!1066936) b!1560125))

(assert (= (and b!1560125 res!1066940) b!1560128))

(assert (= (and b!1560128 res!1066938) b!1560130))

(assert (= (and b!1560130 res!1066935) b!1560123))

(assert (= (and b!1560122 condMapEmpty!59187) mapIsEmpty!59187))

(assert (= (and b!1560122 (not condMapEmpty!59187)) mapNonEmpty!59187))

(get-info :version)

(assert (= (and mapNonEmpty!59187 ((_ is ValueCellFull!18240) mapValue!59187)) b!1560124))

(assert (= (and b!1560122 ((_ is ValueCellFull!18240) mapDefault!59187)) b!1560127))

(assert (= start!133490 b!1560122))

(declare-fun m!1436087 () Bool)

(assert (=> b!1560126 m!1436087))

(declare-fun m!1436089 () Bool)

(assert (=> b!1560130 m!1436089))

(declare-fun m!1436091 () Bool)

(assert (=> b!1560123 m!1436091))

(declare-fun m!1436093 () Bool)

(assert (=> b!1560125 m!1436093))

(declare-fun m!1436095 () Bool)

(assert (=> mapNonEmpty!59187 m!1436095))

(declare-fun m!1436097 () Bool)

(assert (=> start!133490 m!1436097))

(declare-fun m!1436099 () Bool)

(assert (=> start!133490 m!1436099))

(declare-fun m!1436101 () Bool)

(assert (=> start!133490 m!1436101))

(check-sat (not b!1560130) (not b!1560125) (not mapNonEmpty!59187) (not b!1560126) (not b!1560123) (not start!133490) tp_is_empty!38541)
(check-sat)
