; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133506 () Bool)

(assert start!133506)

(declare-fun b!1560305 () Bool)

(declare-fun e!869462 () Bool)

(declare-fun tp_is_empty!38557 () Bool)

(assert (=> b!1560305 (= e!869462 tp_is_empty!38557)))

(declare-fun mapIsEmpty!59211 () Bool)

(declare-fun mapRes!59211 () Bool)

(assert (=> mapIsEmpty!59211 mapRes!59211))

(declare-fun b!1560306 () Bool)

(declare-fun res!1067048 () Bool)

(declare-fun e!869458 () Bool)

(assert (=> b!1560306 (=> (not res!1067048) (not e!869458))))

(declare-datatypes ((array!103789 0))(
  ( (array!103790 (arr!50082 (Array (_ BitVec 32) (_ BitVec 64))) (size!50633 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103789)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103789 (_ BitVec 32)) Bool)

(assert (=> b!1560306 (= res!1067048 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1560307 () Bool)

(assert (=> b!1560307 (= e!869458 false)))

(declare-fun lt!670914 () Bool)

(declare-datatypes ((List!36543 0))(
  ( (Nil!36540) (Cons!36539 (h!37986 (_ BitVec 64)) (t!51283 List!36543)) )
))
(declare-fun arrayNoDuplicates!0 (array!103789 (_ BitVec 32) List!36543) Bool)

(assert (=> b!1560307 (= lt!670914 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36540))))

(declare-fun res!1067047 () Bool)

(assert (=> start!133506 (=> (not res!1067047) (not e!869458))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133506 (= res!1067047 (validMask!0 mask!947))))

(assert (=> start!133506 e!869458))

(assert (=> start!133506 true))

(declare-datatypes ((V!59617 0))(
  ( (V!59618 (val!19362 Int)) )
))
(declare-datatypes ((ValueCell!18248 0))(
  ( (ValueCellFull!18248 (v!22111 V!59617)) (EmptyCell!18248) )
))
(declare-datatypes ((array!103791 0))(
  ( (array!103792 (arr!50083 (Array (_ BitVec 32) ValueCell!18248)) (size!50634 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103791)

(declare-fun e!869461 () Bool)

(declare-fun array_inv!38853 (array!103791) Bool)

(assert (=> start!133506 (and (array_inv!38853 _values!487) e!869461)))

(declare-fun array_inv!38854 (array!103789) Bool)

(assert (=> start!133506 (array_inv!38854 _keys!637)))

(declare-fun b!1560308 () Bool)

(declare-fun res!1067046 () Bool)

(assert (=> b!1560308 (=> (not res!1067046) (not e!869458))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1560308 (= res!1067046 (and (= (size!50634 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50633 _keys!637) (size!50634 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1560309 () Bool)

(declare-fun e!869460 () Bool)

(assert (=> b!1560309 (= e!869460 tp_is_empty!38557)))

(declare-fun b!1560310 () Bool)

(assert (=> b!1560310 (= e!869461 (and e!869462 mapRes!59211))))

(declare-fun condMapEmpty!59211 () Bool)

(declare-fun mapDefault!59211 () ValueCell!18248)

