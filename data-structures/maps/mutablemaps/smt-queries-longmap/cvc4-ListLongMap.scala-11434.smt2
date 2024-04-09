; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133426 () Bool)

(assert start!133426)

(declare-fun b!1559386 () Bool)

(declare-fun res!1066451 () Bool)

(declare-fun e!868921 () Bool)

(assert (=> b!1559386 (=> (not res!1066451) (not e!868921))))

(declare-datatypes ((array!103657 0))(
  ( (array!103658 (arr!50017 (Array (_ BitVec 32) (_ BitVec 64))) (size!50568 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103657)

(assert (=> b!1559386 (= res!1066451 (and (bvsle #b00000000000000000000000000000000 (size!50568 _keys!637)) (bvslt (size!50568 _keys!637) #b01111111111111111111111111111111)))))

(declare-fun mapNonEmpty!59106 () Bool)

(declare-fun mapRes!59106 () Bool)

(declare-fun tp!112762 () Bool)

(declare-fun e!868920 () Bool)

(assert (=> mapNonEmpty!59106 (= mapRes!59106 (and tp!112762 e!868920))))

(declare-datatypes ((V!59525 0))(
  ( (V!59526 (val!19328 Int)) )
))
(declare-datatypes ((ValueCell!18214 0))(
  ( (ValueCellFull!18214 (v!22076 V!59525)) (EmptyCell!18214) )
))
(declare-datatypes ((array!103659 0))(
  ( (array!103660 (arr!50018 (Array (_ BitVec 32) ValueCell!18214)) (size!50569 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103659)

(declare-fun mapValue!59106 () ValueCell!18214)

(declare-fun mapRest!59106 () (Array (_ BitVec 32) ValueCell!18214))

(declare-fun mapKey!59106 () (_ BitVec 32))

(assert (=> mapNonEmpty!59106 (= (arr!50018 _values!487) (store mapRest!59106 mapKey!59106 mapValue!59106))))

(declare-fun b!1559387 () Bool)

(declare-fun tp_is_empty!38489 () Bool)

(assert (=> b!1559387 (= e!868920 tp_is_empty!38489)))

(declare-fun b!1559388 () Bool)

(declare-fun res!1066449 () Bool)

(assert (=> b!1559388 (=> (not res!1066449) (not e!868921))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1559388 (= res!1066449 (and (= (size!50569 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50568 _keys!637) (size!50569 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1559390 () Bool)

(declare-fun res!1066447 () Bool)

(assert (=> b!1559390 (=> (not res!1066447) (not e!868921))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103657 (_ BitVec 32)) Bool)

(assert (=> b!1559390 (= res!1066447 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1559391 () Bool)

(declare-fun e!868919 () Bool)

(assert (=> b!1559391 (= e!868919 tp_is_empty!38489)))

(declare-fun b!1559392 () Bool)

(declare-fun e!868923 () Bool)

(declare-datatypes ((List!36494 0))(
  ( (Nil!36491) (Cons!36490 (h!37937 (_ BitVec 64)) (t!51234 List!36494)) )
))
(declare-fun contains!10227 (List!36494 (_ BitVec 64)) Bool)

(assert (=> b!1559392 (= e!868923 (contains!10227 Nil!36491 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1559393 () Bool)

(assert (=> b!1559393 (= e!868921 e!868923)))

(declare-fun res!1066452 () Bool)

(assert (=> b!1559393 (=> res!1066452 e!868923)))

(assert (=> b!1559393 (= res!1066452 (contains!10227 Nil!36491 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!59106 () Bool)

(assert (=> mapIsEmpty!59106 mapRes!59106))

(declare-fun b!1559394 () Bool)

(declare-fun res!1066450 () Bool)

(assert (=> b!1559394 (=> (not res!1066450) (not e!868921))))

(declare-fun noDuplicate!2678 (List!36494) Bool)

(assert (=> b!1559394 (= res!1066450 (noDuplicate!2678 Nil!36491))))

(declare-fun res!1066448 () Bool)

(assert (=> start!133426 (=> (not res!1066448) (not e!868921))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133426 (= res!1066448 (validMask!0 mask!947))))

(assert (=> start!133426 e!868921))

(assert (=> start!133426 true))

(declare-fun e!868922 () Bool)

(declare-fun array_inv!38805 (array!103659) Bool)

(assert (=> start!133426 (and (array_inv!38805 _values!487) e!868922)))

(declare-fun array_inv!38806 (array!103657) Bool)

(assert (=> start!133426 (array_inv!38806 _keys!637)))

(declare-fun b!1559389 () Bool)

(assert (=> b!1559389 (= e!868922 (and e!868919 mapRes!59106))))

(declare-fun condMapEmpty!59106 () Bool)

(declare-fun mapDefault!59106 () ValueCell!18214)

