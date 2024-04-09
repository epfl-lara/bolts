; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133392 () Bool)

(assert start!133392)

(declare-fun res!1066325 () Bool)

(declare-fun e!868756 () Bool)

(assert (=> start!133392 (=> (not res!1066325) (not e!868756))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133392 (= res!1066325 (validMask!0 mask!947))))

(assert (=> start!133392 e!868756))

(assert (=> start!133392 true))

(declare-datatypes ((V!59505 0))(
  ( (V!59506 (val!19320 Int)) )
))
(declare-datatypes ((ValueCell!18206 0))(
  ( (ValueCellFull!18206 (v!22068 V!59505)) (EmptyCell!18206) )
))
(declare-datatypes ((array!103625 0))(
  ( (array!103626 (arr!50003 (Array (_ BitVec 32) ValueCell!18206)) (size!50554 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103625)

(declare-fun e!868757 () Bool)

(declare-fun array_inv!38793 (array!103625) Bool)

(assert (=> start!133392 (and (array_inv!38793 _values!487) e!868757)))

(declare-datatypes ((array!103627 0))(
  ( (array!103628 (arr!50004 (Array (_ BitVec 32) (_ BitVec 64))) (size!50555 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103627)

(declare-fun array_inv!38794 (array!103627) Bool)

(assert (=> start!133392 (array_inv!38794 _keys!637)))

(declare-fun b!1559163 () Bool)

(assert (=> b!1559163 (= e!868756 (and (bvsle #b00000000000000000000000000000000 (size!50555 _keys!637)) (bvsge (size!50555 _keys!637) #b01111111111111111111111111111111)))))

(declare-fun b!1559164 () Bool)

(declare-fun e!868755 () Bool)

(declare-fun tp_is_empty!38473 () Bool)

(assert (=> b!1559164 (= e!868755 tp_is_empty!38473)))

(declare-fun mapIsEmpty!59076 () Bool)

(declare-fun mapRes!59076 () Bool)

(assert (=> mapIsEmpty!59076 mapRes!59076))

(declare-fun b!1559165 () Bool)

(declare-fun res!1066326 () Bool)

(assert (=> b!1559165 (=> (not res!1066326) (not e!868756))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1559165 (= res!1066326 (and (= (size!50554 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50555 _keys!637) (size!50554 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1559166 () Bool)

(declare-fun res!1066324 () Bool)

(assert (=> b!1559166 (=> (not res!1066324) (not e!868756))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103627 (_ BitVec 32)) Bool)

(assert (=> b!1559166 (= res!1066324 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1559167 () Bool)

(declare-fun e!868754 () Bool)

(assert (=> b!1559167 (= e!868754 tp_is_empty!38473)))

(declare-fun mapNonEmpty!59076 () Bool)

(declare-fun tp!112732 () Bool)

(assert (=> mapNonEmpty!59076 (= mapRes!59076 (and tp!112732 e!868754))))

(declare-fun mapValue!59076 () ValueCell!18206)

(declare-fun mapKey!59076 () (_ BitVec 32))

(declare-fun mapRest!59076 () (Array (_ BitVec 32) ValueCell!18206))

(assert (=> mapNonEmpty!59076 (= (arr!50003 _values!487) (store mapRest!59076 mapKey!59076 mapValue!59076))))

(declare-fun b!1559168 () Bool)

(assert (=> b!1559168 (= e!868757 (and e!868755 mapRes!59076))))

(declare-fun condMapEmpty!59076 () Bool)

(declare-fun mapDefault!59076 () ValueCell!18206)

