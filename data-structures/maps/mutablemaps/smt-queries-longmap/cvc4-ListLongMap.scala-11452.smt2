; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133546 () Bool)

(assert start!133546)

(declare-fun b!1560665 () Bool)

(declare-fun e!869759 () Bool)

(declare-fun tp_is_empty!38597 () Bool)

(assert (=> b!1560665 (= e!869759 tp_is_empty!38597)))

(declare-fun mapIsEmpty!59271 () Bool)

(declare-fun mapRes!59271 () Bool)

(assert (=> mapIsEmpty!59271 mapRes!59271))

(declare-fun b!1560666 () Bool)

(declare-fun res!1067228 () Bool)

(declare-fun e!869758 () Bool)

(assert (=> b!1560666 (=> (not res!1067228) (not e!869758))))

(declare-datatypes ((array!103865 0))(
  ( (array!103866 (arr!50120 (Array (_ BitVec 32) (_ BitVec 64))) (size!50671 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103865)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103865 (_ BitVec 32)) Bool)

(assert (=> b!1560666 (= res!1067228 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1560667 () Bool)

(declare-fun res!1067227 () Bool)

(assert (=> b!1560667 (=> (not res!1067227) (not e!869758))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((V!59669 0))(
  ( (V!59670 (val!19382 Int)) )
))
(declare-datatypes ((ValueCell!18268 0))(
  ( (ValueCellFull!18268 (v!22131 V!59669)) (EmptyCell!18268) )
))
(declare-datatypes ((array!103867 0))(
  ( (array!103868 (arr!50121 (Array (_ BitVec 32) ValueCell!18268)) (size!50672 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103867)

(assert (=> b!1560667 (= res!1067227 (and (= (size!50672 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50671 _keys!637) (size!50672 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1560668 () Bool)

(assert (=> b!1560668 (= e!869758 false)))

(declare-fun lt!670974 () Bool)

(declare-datatypes ((List!36558 0))(
  ( (Nil!36555) (Cons!36554 (h!38001 (_ BitVec 64)) (t!51298 List!36558)) )
))
(declare-fun arrayNoDuplicates!0 (array!103865 (_ BitVec 32) List!36558) Bool)

(assert (=> b!1560668 (= lt!670974 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36555))))

(declare-fun res!1067226 () Bool)

(assert (=> start!133546 (=> (not res!1067226) (not e!869758))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133546 (= res!1067226 (validMask!0 mask!947))))

(assert (=> start!133546 e!869758))

(assert (=> start!133546 true))

(declare-fun e!869761 () Bool)

(declare-fun array_inv!38885 (array!103867) Bool)

(assert (=> start!133546 (and (array_inv!38885 _values!487) e!869761)))

(declare-fun array_inv!38886 (array!103865) Bool)

(assert (=> start!133546 (array_inv!38886 _keys!637)))

(declare-fun b!1560669 () Bool)

(declare-fun e!869760 () Bool)

(assert (=> b!1560669 (= e!869761 (and e!869760 mapRes!59271))))

(declare-fun condMapEmpty!59271 () Bool)

(declare-fun mapDefault!59271 () ValueCell!18268)

