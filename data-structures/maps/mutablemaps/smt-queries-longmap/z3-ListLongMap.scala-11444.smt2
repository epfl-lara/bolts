; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133496 () Bool)

(assert start!133496)

(declare-fun b!1560203 () Bool)

(declare-fun res!1066993 () Bool)

(declare-fun e!869384 () Bool)

(assert (=> b!1560203 (=> (not res!1066993) (not e!869384))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!103771 0))(
  ( (array!103772 (arr!50073 (Array (_ BitVec 32) (_ BitVec 64))) (size!50624 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103771)

(declare-datatypes ((V!59603 0))(
  ( (V!59604 (val!19357 Int)) )
))
(declare-datatypes ((ValueCell!18243 0))(
  ( (ValueCellFull!18243 (v!22106 V!59603)) (EmptyCell!18243) )
))
(declare-datatypes ((array!103773 0))(
  ( (array!103774 (arr!50074 (Array (_ BitVec 32) ValueCell!18243)) (size!50625 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103773)

(assert (=> b!1560203 (= res!1066993 (and (= (size!50625 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50624 _keys!637) (size!50625 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1560204 () Bool)

(declare-fun res!1066989 () Bool)

(assert (=> b!1560204 (=> (not res!1066989) (not e!869384))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1560204 (= res!1066989 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50624 _keys!637)) (bvsge from!782 (size!50624 _keys!637))))))

(declare-fun mapNonEmpty!59196 () Bool)

(declare-fun mapRes!59196 () Bool)

(declare-fun tp!112852 () Bool)

(declare-fun e!869386 () Bool)

(assert (=> mapNonEmpty!59196 (= mapRes!59196 (and tp!112852 e!869386))))

(declare-fun mapKey!59196 () (_ BitVec 32))

(declare-fun mapRest!59196 () (Array (_ BitVec 32) ValueCell!18243))

(declare-fun mapValue!59196 () ValueCell!18243)

(assert (=> mapNonEmpty!59196 (= (arr!50074 _values!487) (store mapRest!59196 mapKey!59196 mapValue!59196))))

(declare-fun b!1560205 () Bool)

(declare-fun tp_is_empty!38547 () Bool)

(assert (=> b!1560205 (= e!869386 tp_is_empty!38547)))

(declare-fun b!1560206 () Bool)

(declare-fun res!1066994 () Bool)

(assert (=> b!1560206 (=> (not res!1066994) (not e!869384))))

(declare-datatypes ((tuple2!25180 0))(
  ( (tuple2!25181 (_1!12600 (_ BitVec 64)) (_2!12600 V!59603)) )
))
(declare-datatypes ((List!36537 0))(
  ( (Nil!36534) (Cons!36533 (h!37980 tuple2!25180) (t!51277 List!36537)) )
))
(declare-datatypes ((ListLongMap!22627 0))(
  ( (ListLongMap!22628 (toList!11329 List!36537)) )
))
(declare-fun contains!10249 (ListLongMap!22627 (_ BitVec 64)) Bool)

(assert (=> b!1560206 (= res!1066994 (not (contains!10249 (ListLongMap!22628 Nil!36534) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1066992 () Bool)

(assert (=> start!133496 (=> (not res!1066992) (not e!869384))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133496 (= res!1066992 (validMask!0 mask!947))))

(assert (=> start!133496 e!869384))

(assert (=> start!133496 true))

(declare-fun array_inv!38845 (array!103771) Bool)

(assert (=> start!133496 (array_inv!38845 _keys!637)))

(declare-fun e!869383 () Bool)

(declare-fun array_inv!38846 (array!103773) Bool)

(assert (=> start!133496 (and (array_inv!38846 _values!487) e!869383)))

(declare-fun b!1560207 () Bool)

(declare-fun e!869387 () Bool)

(assert (=> b!1560207 (= e!869387 tp_is_empty!38547)))

(declare-fun b!1560208 () Bool)

(declare-fun res!1066991 () Bool)

(assert (=> b!1560208 (=> (not res!1066991) (not e!869384))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103771 (_ BitVec 32)) Bool)

(assert (=> b!1560208 (= res!1066991 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1560209 () Bool)

(assert (=> b!1560209 (= e!869384 false)))

(declare-fun lt!670899 () Bool)

(assert (=> b!1560209 (= lt!670899 (contains!10249 (ListLongMap!22628 Nil!36534) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1560210 () Bool)

(declare-fun res!1066990 () Bool)

(assert (=> b!1560210 (=> (not res!1066990) (not e!869384))))

(declare-datatypes ((List!36538 0))(
  ( (Nil!36535) (Cons!36534 (h!37981 (_ BitVec 64)) (t!51278 List!36538)) )
))
(declare-fun arrayNoDuplicates!0 (array!103771 (_ BitVec 32) List!36538) Bool)

(assert (=> b!1560210 (= res!1066990 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36535))))

(declare-fun mapIsEmpty!59196 () Bool)

(assert (=> mapIsEmpty!59196 mapRes!59196))

(declare-fun b!1560211 () Bool)

(assert (=> b!1560211 (= e!869383 (and e!869387 mapRes!59196))))

(declare-fun condMapEmpty!59196 () Bool)

(declare-fun mapDefault!59196 () ValueCell!18243)

(assert (=> b!1560211 (= condMapEmpty!59196 (= (arr!50074 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18243)) mapDefault!59196)))))

(assert (= (and start!133496 res!1066992) b!1560203))

(assert (= (and b!1560203 res!1066993) b!1560208))

(assert (= (and b!1560208 res!1066991) b!1560210))

(assert (= (and b!1560210 res!1066990) b!1560204))

(assert (= (and b!1560204 res!1066989) b!1560206))

(assert (= (and b!1560206 res!1066994) b!1560209))

(assert (= (and b!1560211 condMapEmpty!59196) mapIsEmpty!59196))

(assert (= (and b!1560211 (not condMapEmpty!59196)) mapNonEmpty!59196))

(get-info :version)

(assert (= (and mapNonEmpty!59196 ((_ is ValueCellFull!18243) mapValue!59196)) b!1560205))

(assert (= (and b!1560211 ((_ is ValueCellFull!18243) mapDefault!59196)) b!1560207))

(assert (= start!133496 b!1560211))

(declare-fun m!1436135 () Bool)

(assert (=> b!1560208 m!1436135))

(declare-fun m!1436137 () Bool)

(assert (=> b!1560209 m!1436137))

(declare-fun m!1436139 () Bool)

(assert (=> b!1560206 m!1436139))

(declare-fun m!1436141 () Bool)

(assert (=> mapNonEmpty!59196 m!1436141))

(declare-fun m!1436143 () Bool)

(assert (=> b!1560210 m!1436143))

(declare-fun m!1436145 () Bool)

(assert (=> start!133496 m!1436145))

(declare-fun m!1436147 () Bool)

(assert (=> start!133496 m!1436147))

(declare-fun m!1436149 () Bool)

(assert (=> start!133496 m!1436149))

(check-sat (not b!1560206) (not b!1560210) (not b!1560208) (not b!1560209) (not mapNonEmpty!59196) tp_is_empty!38547 (not start!133496))
(check-sat)
