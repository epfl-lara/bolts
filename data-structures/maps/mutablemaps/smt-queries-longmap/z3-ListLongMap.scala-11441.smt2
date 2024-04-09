; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133478 () Bool)

(assert start!133478)

(declare-fun res!1066828 () Bool)

(declare-fun e!869248 () Bool)

(assert (=> start!133478 (=> (not res!1066828) (not e!869248))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133478 (= res!1066828 (validMask!0 mask!947))))

(assert (=> start!133478 e!869248))

(assert (=> start!133478 true))

(declare-datatypes ((array!103737 0))(
  ( (array!103738 (arr!50056 (Array (_ BitVec 32) (_ BitVec 64))) (size!50607 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103737)

(declare-fun array_inv!38833 (array!103737) Bool)

(assert (=> start!133478 (array_inv!38833 _keys!637)))

(declare-datatypes ((V!59579 0))(
  ( (V!59580 (val!19348 Int)) )
))
(declare-datatypes ((ValueCell!18234 0))(
  ( (ValueCellFull!18234 (v!22097 V!59579)) (EmptyCell!18234) )
))
(declare-datatypes ((array!103739 0))(
  ( (array!103740 (arr!50057 (Array (_ BitVec 32) ValueCell!18234)) (size!50608 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103739)

(declare-fun e!869252 () Bool)

(declare-fun array_inv!38834 (array!103739) Bool)

(assert (=> start!133478 (and (array_inv!38834 _values!487) e!869252)))

(declare-fun b!1559960 () Bool)

(declare-fun e!869251 () Bool)

(declare-fun tp_is_empty!38529 () Bool)

(assert (=> b!1559960 (= e!869251 tp_is_empty!38529)))

(declare-fun b!1559961 () Bool)

(declare-fun res!1066831 () Bool)

(assert (=> b!1559961 (=> (not res!1066831) (not e!869248))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1559961 (= res!1066831 (and (= (size!50608 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50607 _keys!637) (size!50608 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1559962 () Bool)

(assert (=> b!1559962 (= e!869248 false)))

(declare-fun lt!670872 () Bool)

(declare-datatypes ((tuple2!25168 0))(
  ( (tuple2!25169 (_1!12594 (_ BitVec 64)) (_2!12594 V!59579)) )
))
(declare-datatypes ((List!36524 0))(
  ( (Nil!36521) (Cons!36520 (h!37967 tuple2!25168) (t!51264 List!36524)) )
))
(declare-datatypes ((ListLongMap!22615 0))(
  ( (ListLongMap!22616 (toList!11323 List!36524)) )
))
(declare-fun contains!10243 (ListLongMap!22615 (_ BitVec 64)) Bool)

(assert (=> b!1559962 (= lt!670872 (contains!10243 (ListLongMap!22616 Nil!36521) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1559963 () Bool)

(declare-fun res!1066827 () Bool)

(assert (=> b!1559963 (=> (not res!1066827) (not e!869248))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1559963 (= res!1066827 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50607 _keys!637)) (bvsge from!782 (size!50607 _keys!637))))))

(declare-fun b!1559964 () Bool)

(declare-fun res!1066829 () Bool)

(assert (=> b!1559964 (=> (not res!1066829) (not e!869248))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103737 (_ BitVec 32)) Bool)

(assert (=> b!1559964 (= res!1066829 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun mapNonEmpty!59169 () Bool)

(declare-fun mapRes!59169 () Bool)

(declare-fun tp!112825 () Bool)

(assert (=> mapNonEmpty!59169 (= mapRes!59169 (and tp!112825 e!869251))))

(declare-fun mapValue!59169 () ValueCell!18234)

(declare-fun mapKey!59169 () (_ BitVec 32))

(declare-fun mapRest!59169 () (Array (_ BitVec 32) ValueCell!18234))

(assert (=> mapNonEmpty!59169 (= (arr!50057 _values!487) (store mapRest!59169 mapKey!59169 mapValue!59169))))

(declare-fun mapIsEmpty!59169 () Bool)

(assert (=> mapIsEmpty!59169 mapRes!59169))

(declare-fun b!1559965 () Bool)

(declare-fun res!1066830 () Bool)

(assert (=> b!1559965 (=> (not res!1066830) (not e!869248))))

(declare-datatypes ((List!36525 0))(
  ( (Nil!36522) (Cons!36521 (h!37968 (_ BitVec 64)) (t!51265 List!36525)) )
))
(declare-fun arrayNoDuplicates!0 (array!103737 (_ BitVec 32) List!36525) Bool)

(assert (=> b!1559965 (= res!1066830 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36522))))

(declare-fun b!1559966 () Bool)

(declare-fun res!1066832 () Bool)

(assert (=> b!1559966 (=> (not res!1066832) (not e!869248))))

(assert (=> b!1559966 (= res!1066832 (not (contains!10243 (ListLongMap!22616 Nil!36521) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1559967 () Bool)

(declare-fun e!869249 () Bool)

(assert (=> b!1559967 (= e!869249 tp_is_empty!38529)))

(declare-fun b!1559968 () Bool)

(assert (=> b!1559968 (= e!869252 (and e!869249 mapRes!59169))))

(declare-fun condMapEmpty!59169 () Bool)

(declare-fun mapDefault!59169 () ValueCell!18234)

(assert (=> b!1559968 (= condMapEmpty!59169 (= (arr!50057 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18234)) mapDefault!59169)))))

(assert (= (and start!133478 res!1066828) b!1559961))

(assert (= (and b!1559961 res!1066831) b!1559964))

(assert (= (and b!1559964 res!1066829) b!1559965))

(assert (= (and b!1559965 res!1066830) b!1559963))

(assert (= (and b!1559963 res!1066827) b!1559966))

(assert (= (and b!1559966 res!1066832) b!1559962))

(assert (= (and b!1559968 condMapEmpty!59169) mapIsEmpty!59169))

(assert (= (and b!1559968 (not condMapEmpty!59169)) mapNonEmpty!59169))

(get-info :version)

(assert (= (and mapNonEmpty!59169 ((_ is ValueCellFull!18234) mapValue!59169)) b!1559960))

(assert (= (and b!1559968 ((_ is ValueCellFull!18234) mapDefault!59169)) b!1559967))

(assert (= start!133478 b!1559968))

(declare-fun m!1435991 () Bool)

(assert (=> start!133478 m!1435991))

(declare-fun m!1435993 () Bool)

(assert (=> start!133478 m!1435993))

(declare-fun m!1435995 () Bool)

(assert (=> start!133478 m!1435995))

(declare-fun m!1435997 () Bool)

(assert (=> b!1559965 m!1435997))

(declare-fun m!1435999 () Bool)

(assert (=> mapNonEmpty!59169 m!1435999))

(declare-fun m!1436001 () Bool)

(assert (=> b!1559966 m!1436001))

(declare-fun m!1436003 () Bool)

(assert (=> b!1559964 m!1436003))

(declare-fun m!1436005 () Bool)

(assert (=> b!1559962 m!1436005))

(check-sat (not b!1559962) (not b!1559965) (not start!133478) (not b!1559964) (not mapNonEmpty!59169) (not b!1559966) tp_is_empty!38529)
(check-sat)
