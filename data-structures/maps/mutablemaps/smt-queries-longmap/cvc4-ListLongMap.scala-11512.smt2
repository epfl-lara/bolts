; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133992 () Bool)

(assert start!133992)

(declare-fun b_free!32183 () Bool)

(declare-fun b_next!32183 () Bool)

(assert (=> start!133992 (= b_free!32183 (not b_next!32183))))

(declare-fun tp!113852 () Bool)

(declare-fun b_and!51817 () Bool)

(assert (=> start!133992 (= tp!113852 b_and!51817)))

(declare-fun mapIsEmpty!59827 () Bool)

(declare-fun mapRes!59827 () Bool)

(assert (=> mapIsEmpty!59827 mapRes!59827))

(declare-fun b!1565914 () Bool)

(declare-fun e!872835 () Bool)

(declare-fun tp_is_empty!38957 () Bool)

(assert (=> b!1565914 (= e!872835 tp_is_empty!38957)))

(declare-fun b!1565915 () Bool)

(declare-fun res!1070495 () Bool)

(declare-fun e!872836 () Bool)

(assert (=> b!1565915 (=> (not res!1070495) (not e!872836))))

(declare-datatypes ((array!104573 0))(
  ( (array!104574 (arr!50469 (Array (_ BitVec 32) (_ BitVec 64))) (size!51020 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104573)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1565915 (= res!1070495 (validKeyInArray!0 (select (arr!50469 _keys!637) from!782)))))

(declare-fun mapNonEmpty!59827 () Bool)

(declare-fun tp!113851 () Bool)

(declare-fun e!872837 () Bool)

(assert (=> mapNonEmpty!59827 (= mapRes!59827 (and tp!113851 e!872837))))

(declare-fun mapKey!59827 () (_ BitVec 32))

(declare-datatypes ((V!60149 0))(
  ( (V!60150 (val!19562 Int)) )
))
(declare-datatypes ((ValueCell!18448 0))(
  ( (ValueCellFull!18448 (v!22315 V!60149)) (EmptyCell!18448) )
))
(declare-fun mapValue!59827 () ValueCell!18448)

(declare-fun mapRest!59827 () (Array (_ BitVec 32) ValueCell!18448))

(declare-datatypes ((array!104575 0))(
  ( (array!104576 (arr!50470 (Array (_ BitVec 32) ValueCell!18448)) (size!51021 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104575)

(assert (=> mapNonEmpty!59827 (= (arr!50470 _values!487) (store mapRest!59827 mapKey!59827 mapValue!59827))))

(declare-fun b!1565916 () Bool)

(declare-fun res!1070497 () Bool)

(assert (=> b!1565916 (=> (not res!1070497) (not e!872836))))

(declare-datatypes ((List!36790 0))(
  ( (Nil!36787) (Cons!36786 (h!38233 (_ BitVec 64)) (t!51694 List!36790)) )
))
(declare-fun arrayNoDuplicates!0 (array!104573 (_ BitVec 32) List!36790) Bool)

(assert (=> b!1565916 (= res!1070497 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36787))))

(declare-fun b!1565917 () Bool)

(declare-fun res!1070499 () Bool)

(assert (=> b!1565917 (=> (not res!1070499) (not e!872836))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104573 (_ BitVec 32)) Bool)

(assert (=> b!1565917 (= res!1070499 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1565918 () Bool)

(declare-fun res!1070498 () Bool)

(assert (=> b!1565918 (=> (not res!1070498) (not e!872836))))

(assert (=> b!1565918 (= res!1070498 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!51020 _keys!637)) (bvslt from!782 (size!51020 _keys!637))))))

(declare-fun b!1565919 () Bool)

(declare-fun e!872834 () Bool)

(assert (=> b!1565919 (= e!872834 (and e!872835 mapRes!59827))))

(declare-fun condMapEmpty!59827 () Bool)

(declare-fun mapDefault!59827 () ValueCell!18448)

