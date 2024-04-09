; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133482 () Bool)

(assert start!133482)

(declare-fun b!1560014 () Bool)

(declare-fun e!869282 () Bool)

(assert (=> b!1560014 (= e!869282 false)))

(declare-fun lt!670878 () Bool)

(declare-datatypes ((V!59585 0))(
  ( (V!59586 (val!19350 Int)) )
))
(declare-datatypes ((tuple2!25170 0))(
  ( (tuple2!25171 (_1!12595 (_ BitVec 64)) (_2!12595 V!59585)) )
))
(declare-datatypes ((List!36526 0))(
  ( (Nil!36523) (Cons!36522 (h!37969 tuple2!25170) (t!51266 List!36526)) )
))
(declare-datatypes ((ListLongMap!22617 0))(
  ( (ListLongMap!22618 (toList!11324 List!36526)) )
))
(declare-fun contains!10244 (ListLongMap!22617 (_ BitVec 64)) Bool)

(assert (=> b!1560014 (= lt!670878 (contains!10244 (ListLongMap!22618 Nil!36523) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1560015 () Bool)

(declare-fun e!869280 () Bool)

(declare-fun tp_is_empty!38533 () Bool)

(assert (=> b!1560015 (= e!869280 tp_is_empty!38533)))

(declare-fun res!1066867 () Bool)

(assert (=> start!133482 (=> (not res!1066867) (not e!869282))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133482 (= res!1066867 (validMask!0 mask!947))))

(assert (=> start!133482 e!869282))

(assert (=> start!133482 true))

(declare-datatypes ((array!103745 0))(
  ( (array!103746 (arr!50060 (Array (_ BitVec 32) (_ BitVec 64))) (size!50611 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103745)

(declare-fun array_inv!38837 (array!103745) Bool)

(assert (=> start!133482 (array_inv!38837 _keys!637)))

(declare-datatypes ((ValueCell!18236 0))(
  ( (ValueCellFull!18236 (v!22099 V!59585)) (EmptyCell!18236) )
))
(declare-datatypes ((array!103747 0))(
  ( (array!103748 (arr!50061 (Array (_ BitVec 32) ValueCell!18236)) (size!50612 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103747)

(declare-fun e!869278 () Bool)

(declare-fun array_inv!38838 (array!103747) Bool)

(assert (=> start!133482 (and (array_inv!38838 _values!487) e!869278)))

(declare-fun b!1560016 () Bool)

(declare-fun res!1066863 () Bool)

(assert (=> b!1560016 (=> (not res!1066863) (not e!869282))))

(assert (=> b!1560016 (= res!1066863 (not (contains!10244 (ListLongMap!22618 Nil!36523) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!59175 () Bool)

(declare-fun mapRes!59175 () Bool)

(assert (=> mapIsEmpty!59175 mapRes!59175))

(declare-fun b!1560017 () Bool)

(declare-fun res!1066866 () Bool)

(assert (=> b!1560017 (=> (not res!1066866) (not e!869282))))

(declare-datatypes ((List!36527 0))(
  ( (Nil!36524) (Cons!36523 (h!37970 (_ BitVec 64)) (t!51267 List!36527)) )
))
(declare-fun arrayNoDuplicates!0 (array!103745 (_ BitVec 32) List!36527) Bool)

(assert (=> b!1560017 (= res!1066866 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36524))))

(declare-fun b!1560018 () Bool)

(declare-fun res!1066865 () Bool)

(assert (=> b!1560018 (=> (not res!1066865) (not e!869282))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1560018 (= res!1066865 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50611 _keys!637)) (bvsge from!782 (size!50611 _keys!637))))))

(declare-fun b!1560019 () Bool)

(declare-fun res!1066868 () Bool)

(assert (=> b!1560019 (=> (not res!1066868) (not e!869282))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103745 (_ BitVec 32)) Bool)

(assert (=> b!1560019 (= res!1066868 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1560020 () Bool)

(assert (=> b!1560020 (= e!869278 (and e!869280 mapRes!59175))))

(declare-fun condMapEmpty!59175 () Bool)

(declare-fun mapDefault!59175 () ValueCell!18236)

