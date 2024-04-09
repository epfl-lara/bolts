; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133440 () Bool)

(assert start!133440)

(declare-fun res!1066489 () Bool)

(declare-fun e!868965 () Bool)

(assert (=> start!133440 (=> (not res!1066489) (not e!868965))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133440 (= res!1066489 (validMask!0 mask!947))))

(assert (=> start!133440 e!868965))

(assert (=> start!133440 true))

(declare-datatypes ((array!103663 0))(
  ( (array!103664 (arr!50019 (Array (_ BitVec 32) (_ BitVec 64))) (size!50570 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103663)

(declare-fun array_inv!38807 (array!103663) Bool)

(assert (=> start!133440 (array_inv!38807 _keys!637)))

(declare-datatypes ((V!59529 0))(
  ( (V!59530 (val!19329 Int)) )
))
(declare-datatypes ((ValueCell!18215 0))(
  ( (ValueCellFull!18215 (v!22078 V!59529)) (EmptyCell!18215) )
))
(declare-datatypes ((array!103665 0))(
  ( (array!103666 (arr!50020 (Array (_ BitVec 32) ValueCell!18215)) (size!50571 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103665)

(declare-fun e!868964 () Bool)

(declare-fun array_inv!38808 (array!103665) Bool)

(assert (=> start!133440 (and (array_inv!38808 _values!487) e!868964)))

(declare-fun b!1559447 () Bool)

(declare-fun res!1066490 () Bool)

(assert (=> b!1559447 (=> (not res!1066490) (not e!868965))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1559447 (= res!1066490 (and (= (size!50571 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50570 _keys!637) (size!50571 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1559448 () Bool)

(declare-fun res!1066486 () Bool)

(assert (=> b!1559448 (=> (not res!1066486) (not e!868965))))

(declare-datatypes ((List!36495 0))(
  ( (Nil!36492) (Cons!36491 (h!37938 (_ BitVec 64)) (t!51235 List!36495)) )
))
(declare-fun arrayNoDuplicates!0 (array!103663 (_ BitVec 32) List!36495) Bool)

(assert (=> b!1559448 (= res!1066486 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36492))))

(declare-fun b!1559449 () Bool)

(declare-fun e!868967 () Bool)

(declare-fun tp_is_empty!38491 () Bool)

(assert (=> b!1559449 (= e!868967 tp_is_empty!38491)))

(declare-fun b!1559450 () Bool)

(declare-fun res!1066485 () Bool)

(assert (=> b!1559450 (=> (not res!1066485) (not e!868965))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103663 (_ BitVec 32)) Bool)

(assert (=> b!1559450 (= res!1066485 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1559451 () Bool)

(assert (=> b!1559451 (= e!868965 false)))

(declare-fun lt!670815 () Bool)

(declare-datatypes ((tuple2!25138 0))(
  ( (tuple2!25139 (_1!12579 (_ BitVec 64)) (_2!12579 V!59529)) )
))
(declare-datatypes ((List!36496 0))(
  ( (Nil!36493) (Cons!36492 (h!37939 tuple2!25138) (t!51236 List!36496)) )
))
(declare-datatypes ((ListLongMap!22585 0))(
  ( (ListLongMap!22586 (toList!11308 List!36496)) )
))
(declare-fun contains!10228 (ListLongMap!22585 (_ BitVec 64)) Bool)

(assert (=> b!1559451 (= lt!670815 (contains!10228 (ListLongMap!22586 Nil!36493) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!59112 () Bool)

(declare-fun mapRes!59112 () Bool)

(assert (=> mapIsEmpty!59112 mapRes!59112))

(declare-fun b!1559452 () Bool)

(declare-fun e!868963 () Bool)

(assert (=> b!1559452 (= e!868964 (and e!868963 mapRes!59112))))

(declare-fun condMapEmpty!59112 () Bool)

(declare-fun mapDefault!59112 () ValueCell!18215)

