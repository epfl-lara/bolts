; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133738 () Bool)

(assert start!133738)

(declare-fun b_free!32069 () Bool)

(declare-fun b_next!32069 () Bool)

(assert (=> start!133738 (= b_free!32069 (not b_next!32069))))

(declare-fun tp!113412 () Bool)

(declare-fun b_and!51649 () Bool)

(assert (=> start!133738 (= tp!113412 b_and!51649)))

(declare-fun b!1563178 () Bool)

(declare-fun res!1068761 () Bool)

(declare-fun e!871227 () Bool)

(assert (=> b!1563178 (=> (not res!1068761) (not e!871227))))

(declare-datatypes ((array!104239 0))(
  ( (array!104240 (arr!50307 (Array (_ BitVec 32) (_ BitVec 64))) (size!50858 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104239)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104239 (_ BitVec 32)) Bool)

(assert (=> b!1563178 (= res!1068761 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1563179 () Bool)

(declare-fun e!871226 () Bool)

(declare-fun tp_is_empty!38789 () Bool)

(assert (=> b!1563179 (= e!871226 tp_is_empty!38789)))

(declare-fun b!1563180 () Bool)

(declare-fun res!1068763 () Bool)

(assert (=> b!1563180 (=> (not res!1068763) (not e!871227))))

(declare-datatypes ((List!36674 0))(
  ( (Nil!36671) (Cons!36670 (h!38117 (_ BitVec 64)) (t!51528 List!36674)) )
))
(declare-fun arrayNoDuplicates!0 (array!104239 (_ BitVec 32) List!36674) Bool)

(assert (=> b!1563180 (= res!1068763 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36671))))

(declare-fun b!1563181 () Bool)

(declare-fun e!871224 () Bool)

(assert (=> b!1563181 (= e!871227 e!871224)))

(declare-fun res!1068767 () Bool)

(assert (=> b!1563181 (=> (not res!1068767) (not e!871224))))

(declare-datatypes ((V!59925 0))(
  ( (V!59926 (val!19478 Int)) )
))
(declare-datatypes ((tuple2!25286 0))(
  ( (tuple2!25287 (_1!12653 (_ BitVec 64)) (_2!12653 V!59925)) )
))
(declare-datatypes ((List!36675 0))(
  ( (Nil!36672) (Cons!36671 (h!38118 tuple2!25286) (t!51529 List!36675)) )
))
(declare-datatypes ((ListLongMap!22733 0))(
  ( (ListLongMap!22734 (toList!11382 List!36675)) )
))
(declare-fun lt!671784 () ListLongMap!22733)

(declare-fun contains!10302 (ListLongMap!22733 (_ BitVec 64)) Bool)

(assert (=> b!1563181 (= res!1068767 (not (contains!10302 lt!671784 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!59925)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59925)

(declare-datatypes ((ValueCell!18364 0))(
  ( (ValueCellFull!18364 (v!22227 V!59925)) (EmptyCell!18364) )
))
(declare-datatypes ((array!104241 0))(
  ( (array!104242 (arr!50308 (Array (_ BitVec 32) ValueCell!18364)) (size!50859 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104241)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6741 (array!104239 array!104241 (_ BitVec 32) (_ BitVec 32) V!59925 V!59925 (_ BitVec 32) Int) ListLongMap!22733)

(assert (=> b!1563181 (= lt!671784 (getCurrentListMapNoExtraKeys!6741 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun mapNonEmpty!59559 () Bool)

(declare-fun mapRes!59559 () Bool)

(declare-fun tp!113413 () Bool)

(assert (=> mapNonEmpty!59559 (= mapRes!59559 (and tp!113413 e!871226))))

(declare-fun mapKey!59559 () (_ BitVec 32))

(declare-fun mapValue!59559 () ValueCell!18364)

(declare-fun mapRest!59559 () (Array (_ BitVec 32) ValueCell!18364))

(assert (=> mapNonEmpty!59559 (= (arr!50308 _values!487) (store mapRest!59559 mapKey!59559 mapValue!59559))))

(declare-fun mapIsEmpty!59559 () Bool)

(assert (=> mapIsEmpty!59559 mapRes!59559))

(declare-fun b!1563182 () Bool)

(assert (=> b!1563182 (= e!871224 false)))

(declare-fun lt!671783 () Bool)

(assert (=> b!1563182 (= lt!671783 (contains!10302 lt!671784 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1563183 () Bool)

(declare-fun res!1068762 () Bool)

(assert (=> b!1563183 (=> (not res!1068762) (not e!871227))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1563183 (= res!1068762 (not (validKeyInArray!0 (select (arr!50307 _keys!637) from!782))))))

(declare-fun res!1068766 () Bool)

(assert (=> start!133738 (=> (not res!1068766) (not e!871227))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133738 (= res!1068766 (validMask!0 mask!947))))

(assert (=> start!133738 e!871227))

(assert (=> start!133738 tp!113412))

(assert (=> start!133738 tp_is_empty!38789))

(assert (=> start!133738 true))

(declare-fun array_inv!39025 (array!104239) Bool)

(assert (=> start!133738 (array_inv!39025 _keys!637)))

(declare-fun e!871228 () Bool)

(declare-fun array_inv!39026 (array!104241) Bool)

(assert (=> start!133738 (and (array_inv!39026 _values!487) e!871228)))

(declare-fun b!1563184 () Bool)

(declare-fun res!1068765 () Bool)

(assert (=> b!1563184 (=> (not res!1068765) (not e!871227))))

(assert (=> b!1563184 (= res!1068765 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50858 _keys!637)) (bvslt from!782 (size!50858 _keys!637))))))

(declare-fun b!1563185 () Bool)

(declare-fun res!1068764 () Bool)

(assert (=> b!1563185 (=> (not res!1068764) (not e!871227))))

(assert (=> b!1563185 (= res!1068764 (and (= (size!50859 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50858 _keys!637) (size!50859 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1563186 () Bool)

(declare-fun e!871225 () Bool)

(assert (=> b!1563186 (= e!871225 tp_is_empty!38789)))

(declare-fun b!1563187 () Bool)

(assert (=> b!1563187 (= e!871228 (and e!871225 mapRes!59559))))

(declare-fun condMapEmpty!59559 () Bool)

(declare-fun mapDefault!59559 () ValueCell!18364)

