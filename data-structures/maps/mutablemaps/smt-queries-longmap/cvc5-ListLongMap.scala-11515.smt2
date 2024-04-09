; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134096 () Bool)

(assert start!134096)

(declare-fun b_free!32191 () Bool)

(declare-fun b_next!32191 () Bool)

(assert (=> start!134096 (= b_free!32191 (not b_next!32191))))

(declare-fun tp!113892 () Bool)

(declare-fun b_and!51845 () Bool)

(assert (=> start!134096 (= tp!113892 b_and!51845)))

(declare-fun b!1566696 () Bool)

(declare-fun e!873321 () Bool)

(assert (=> b!1566696 (= e!873321 false)))

(declare-fun lt!672730 () Bool)

(declare-datatypes ((V!60169 0))(
  ( (V!60170 (val!19569 Int)) )
))
(declare-datatypes ((tuple2!25410 0))(
  ( (tuple2!25411 (_1!12715 (_ BitVec 64)) (_2!12715 V!60169)) )
))
(declare-datatypes ((List!36797 0))(
  ( (Nil!36794) (Cons!36793 (h!38241 tuple2!25410) (t!51708 List!36797)) )
))
(declare-datatypes ((ListLongMap!22857 0))(
  ( (ListLongMap!22858 (toList!11444 List!36797)) )
))
(declare-fun lt!672731 () ListLongMap!22857)

(declare-fun contains!10368 (ListLongMap!22857 (_ BitVec 64)) Bool)

(assert (=> b!1566696 (= lt!672730 (contains!10368 lt!672731 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1566697 () Bool)

(declare-fun e!873326 () Bool)

(declare-fun tp_is_empty!38971 () Bool)

(assert (=> b!1566697 (= e!873326 tp_is_empty!38971)))

(declare-fun b!1566698 () Bool)

(declare-fun res!1070865 () Bool)

(declare-fun e!873323 () Bool)

(assert (=> b!1566698 (=> (not res!1070865) (not e!873323))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!104605 0))(
  ( (array!104606 (arr!50483 (Array (_ BitVec 32) (_ BitVec 64))) (size!51034 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104605)

(declare-datatypes ((ValueCell!18455 0))(
  ( (ValueCellFull!18455 (v!22325 V!60169)) (EmptyCell!18455) )
))
(declare-datatypes ((array!104607 0))(
  ( (array!104608 (arr!50484 (Array (_ BitVec 32) ValueCell!18455)) (size!51035 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104607)

(assert (=> b!1566698 (= res!1070865 (and (= (size!51035 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!51034 _keys!637) (size!51035 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1566699 () Bool)

(declare-fun res!1070864 () Bool)

(assert (=> b!1566699 (=> (not res!1070864) (not e!873323))))

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1566699 (= res!1070864 (not (validKeyInArray!0 (select (arr!50483 _keys!637) from!782))))))

(declare-fun res!1070862 () Bool)

(assert (=> start!134096 (=> (not res!1070862) (not e!873323))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134096 (= res!1070862 (validMask!0 mask!947))))

(assert (=> start!134096 e!873323))

(assert (=> start!134096 tp!113892))

(assert (=> start!134096 tp_is_empty!38971))

(assert (=> start!134096 true))

(declare-fun array_inv!39143 (array!104605) Bool)

(assert (=> start!134096 (array_inv!39143 _keys!637)))

(declare-fun e!873322 () Bool)

(declare-fun array_inv!39144 (array!104607) Bool)

(assert (=> start!134096 (and (array_inv!39144 _values!487) e!873322)))

(declare-fun b!1566700 () Bool)

(assert (=> b!1566700 (= e!873323 e!873321)))

(declare-fun res!1070863 () Bool)

(assert (=> b!1566700 (=> (not res!1070863) (not e!873321))))

(assert (=> b!1566700 (= res!1070863 (not (contains!10368 lt!672731 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!60169)

(declare-fun minValue!453 () V!60169)

(declare-fun getCurrentListMapNoExtraKeys!6784 (array!104605 array!104607 (_ BitVec 32) (_ BitVec 32) V!60169 V!60169 (_ BitVec 32) Int) ListLongMap!22857)

(assert (=> b!1566700 (= lt!672731 (getCurrentListMapNoExtraKeys!6784 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun mapIsEmpty!59856 () Bool)

(declare-fun mapRes!59856 () Bool)

(assert (=> mapIsEmpty!59856 mapRes!59856))

(declare-fun mapNonEmpty!59856 () Bool)

(declare-fun tp!113893 () Bool)

(assert (=> mapNonEmpty!59856 (= mapRes!59856 (and tp!113893 e!873326))))

(declare-fun mapKey!59856 () (_ BitVec 32))

(declare-fun mapValue!59856 () ValueCell!18455)

(declare-fun mapRest!59856 () (Array (_ BitVec 32) ValueCell!18455))

(assert (=> mapNonEmpty!59856 (= (arr!50484 _values!487) (store mapRest!59856 mapKey!59856 mapValue!59856))))

(declare-fun b!1566701 () Bool)

(declare-fun e!873324 () Bool)

(assert (=> b!1566701 (= e!873322 (and e!873324 mapRes!59856))))

(declare-fun condMapEmpty!59856 () Bool)

(declare-fun mapDefault!59856 () ValueCell!18455)

