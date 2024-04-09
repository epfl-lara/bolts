; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133714 () Bool)

(assert start!133714)

(declare-fun b!1562867 () Bool)

(declare-fun res!1068559 () Bool)

(declare-fun e!871030 () Bool)

(assert (=> b!1562867 (=> (not res!1068559) (not e!871030))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!104193 0))(
  ( (array!104194 (arr!50284 (Array (_ BitVec 32) (_ BitVec 64))) (size!50835 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104193)

(declare-datatypes ((V!59893 0))(
  ( (V!59894 (val!19466 Int)) )
))
(declare-datatypes ((ValueCell!18352 0))(
  ( (ValueCellFull!18352 (v!22215 V!59893)) (EmptyCell!18352) )
))
(declare-datatypes ((array!104195 0))(
  ( (array!104196 (arr!50285 (Array (_ BitVec 32) ValueCell!18352)) (size!50836 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104195)

(assert (=> b!1562867 (= res!1068559 (and (= (size!50836 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50835 _keys!637) (size!50836 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1562868 () Bool)

(assert (=> b!1562868 (= e!871030 false)))

(declare-fun lt!671739 () Bool)

(declare-datatypes ((List!36662 0))(
  ( (Nil!36659) (Cons!36658 (h!38105 (_ BitVec 64)) (t!51516 List!36662)) )
))
(declare-fun arrayNoDuplicates!0 (array!104193 (_ BitVec 32) List!36662) Bool)

(assert (=> b!1562868 (= lt!671739 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36659))))

(declare-fun b!1562869 () Bool)

(declare-fun e!871027 () Bool)

(declare-fun e!871028 () Bool)

(declare-fun mapRes!59523 () Bool)

(assert (=> b!1562869 (= e!871027 (and e!871028 mapRes!59523))))

(declare-fun condMapEmpty!59523 () Bool)

(declare-fun mapDefault!59523 () ValueCell!18352)

