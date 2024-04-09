; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133522 () Bool)

(assert start!133522)

(declare-fun mapIsEmpty!59235 () Bool)

(declare-fun mapRes!59235 () Bool)

(assert (=> mapIsEmpty!59235 mapRes!59235))

(declare-fun b!1560449 () Bool)

(declare-fun e!869582 () Bool)

(declare-fun tp_is_empty!38573 () Bool)

(assert (=> b!1560449 (= e!869582 tp_is_empty!38573)))

(declare-fun b!1560450 () Bool)

(declare-fun res!1067118 () Bool)

(declare-fun e!869580 () Bool)

(assert (=> b!1560450 (=> (not res!1067118) (not e!869580))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((V!59637 0))(
  ( (V!59638 (val!19370 Int)) )
))
(declare-datatypes ((ValueCell!18256 0))(
  ( (ValueCellFull!18256 (v!22119 V!59637)) (EmptyCell!18256) )
))
(declare-datatypes ((array!103821 0))(
  ( (array!103822 (arr!50098 (Array (_ BitVec 32) ValueCell!18256)) (size!50649 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103821)

(declare-datatypes ((array!103823 0))(
  ( (array!103824 (arr!50099 (Array (_ BitVec 32) (_ BitVec 64))) (size!50650 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103823)

(assert (=> b!1560450 (= res!1067118 (and (= (size!50649 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50650 _keys!637) (size!50649 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun res!1067120 () Bool)

(assert (=> start!133522 (=> (not res!1067120) (not e!869580))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133522 (= res!1067120 (validMask!0 mask!947))))

(assert (=> start!133522 e!869580))

(assert (=> start!133522 true))

(declare-fun e!869578 () Bool)

(declare-fun array_inv!38869 (array!103821) Bool)

(assert (=> start!133522 (and (array_inv!38869 _values!487) e!869578)))

(declare-fun array_inv!38870 (array!103823) Bool)

(assert (=> start!133522 (array_inv!38870 _keys!637)))

(declare-fun b!1560451 () Bool)

(declare-fun e!869581 () Bool)

(assert (=> b!1560451 (= e!869581 tp_is_empty!38573)))

(declare-fun b!1560452 () Bool)

(declare-fun res!1067119 () Bool)

(assert (=> b!1560452 (=> (not res!1067119) (not e!869580))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103823 (_ BitVec 32)) Bool)

(assert (=> b!1560452 (= res!1067119 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun mapNonEmpty!59235 () Bool)

(declare-fun tp!112891 () Bool)

(assert (=> mapNonEmpty!59235 (= mapRes!59235 (and tp!112891 e!869582))))

(declare-fun mapRest!59235 () (Array (_ BitVec 32) ValueCell!18256))

(declare-fun mapKey!59235 () (_ BitVec 32))

(declare-fun mapValue!59235 () ValueCell!18256)

(assert (=> mapNonEmpty!59235 (= (arr!50098 _values!487) (store mapRest!59235 mapKey!59235 mapValue!59235))))

(declare-fun b!1560453 () Bool)

(assert (=> b!1560453 (= e!869580 false)))

(declare-fun lt!670938 () Bool)

(declare-datatypes ((List!36549 0))(
  ( (Nil!36546) (Cons!36545 (h!37992 (_ BitVec 64)) (t!51289 List!36549)) )
))
(declare-fun arrayNoDuplicates!0 (array!103823 (_ BitVec 32) List!36549) Bool)

(assert (=> b!1560453 (= lt!670938 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36546))))

(declare-fun b!1560454 () Bool)

(assert (=> b!1560454 (= e!869578 (and e!869581 mapRes!59235))))

(declare-fun condMapEmpty!59235 () Bool)

(declare-fun mapDefault!59235 () ValueCell!18256)

