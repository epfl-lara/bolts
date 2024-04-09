; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133504 () Bool)

(assert start!133504)

(declare-fun b!1560287 () Bool)

(declare-fun res!1067037 () Bool)

(declare-fun e!869443 () Bool)

(assert (=> b!1560287 (=> (not res!1067037) (not e!869443))))

(declare-datatypes ((array!103785 0))(
  ( (array!103786 (arr!50080 (Array (_ BitVec 32) (_ BitVec 64))) (size!50631 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103785)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103785 (_ BitVec 32)) Bool)

(assert (=> b!1560287 (= res!1067037 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun res!1067039 () Bool)

(assert (=> start!133504 (=> (not res!1067039) (not e!869443))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133504 (= res!1067039 (validMask!0 mask!947))))

(assert (=> start!133504 e!869443))

(assert (=> start!133504 true))

(declare-datatypes ((V!59613 0))(
  ( (V!59614 (val!19361 Int)) )
))
(declare-datatypes ((ValueCell!18247 0))(
  ( (ValueCellFull!18247 (v!22110 V!59613)) (EmptyCell!18247) )
))
(declare-datatypes ((array!103787 0))(
  ( (array!103788 (arr!50081 (Array (_ BitVec 32) ValueCell!18247)) (size!50632 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103787)

(declare-fun e!869447 () Bool)

(declare-fun array_inv!38851 (array!103787) Bool)

(assert (=> start!133504 (and (array_inv!38851 _values!487) e!869447)))

(declare-fun array_inv!38852 (array!103785) Bool)

(assert (=> start!133504 (array_inv!38852 _keys!637)))

(declare-fun b!1560288 () Bool)

(declare-fun e!869445 () Bool)

(declare-fun tp_is_empty!38555 () Bool)

(assert (=> b!1560288 (= e!869445 tp_is_empty!38555)))

(declare-fun mapIsEmpty!59208 () Bool)

(declare-fun mapRes!59208 () Bool)

(assert (=> mapIsEmpty!59208 mapRes!59208))

(declare-fun b!1560289 () Bool)

(declare-fun e!869446 () Bool)

(assert (=> b!1560289 (= e!869446 tp_is_empty!38555)))

(declare-fun b!1560290 () Bool)

(assert (=> b!1560290 (= e!869443 false)))

(declare-fun lt!670911 () Bool)

(declare-datatypes ((List!36542 0))(
  ( (Nil!36539) (Cons!36538 (h!37985 (_ BitVec 64)) (t!51282 List!36542)) )
))
(declare-fun arrayNoDuplicates!0 (array!103785 (_ BitVec 32) List!36542) Bool)

(assert (=> b!1560290 (= lt!670911 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36539))))

(declare-fun b!1560291 () Bool)

(assert (=> b!1560291 (= e!869447 (and e!869446 mapRes!59208))))

(declare-fun condMapEmpty!59208 () Bool)

(declare-fun mapDefault!59208 () ValueCell!18247)

