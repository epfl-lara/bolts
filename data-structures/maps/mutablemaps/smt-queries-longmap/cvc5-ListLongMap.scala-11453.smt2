; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133548 () Bool)

(assert start!133548)

(declare-fun b!1560689 () Bool)

(declare-fun res!1067242 () Bool)

(declare-fun e!869774 () Bool)

(assert (=> b!1560689 (=> (not res!1067242) (not e!869774))))

(declare-fun from!782 () (_ BitVec 32))

(declare-datatypes ((array!103869 0))(
  ( (array!103870 (arr!50122 (Array (_ BitVec 32) (_ BitVec 64))) (size!50673 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103869)

(assert (=> b!1560689 (= res!1067242 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50673 _keys!637)) (bvslt from!782 (size!50673 _keys!637))))))

(declare-fun b!1560690 () Bool)

(declare-fun e!869776 () Bool)

(declare-fun tp_is_empty!38599 () Bool)

(assert (=> b!1560690 (= e!869776 tp_is_empty!38599)))

(declare-fun res!1067246 () Bool)

(assert (=> start!133548 (=> (not res!1067246) (not e!869774))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133548 (= res!1067246 (validMask!0 mask!947))))

(assert (=> start!133548 e!869774))

(assert (=> start!133548 true))

(declare-fun array_inv!38887 (array!103869) Bool)

(assert (=> start!133548 (array_inv!38887 _keys!637)))

(declare-datatypes ((V!59673 0))(
  ( (V!59674 (val!19383 Int)) )
))
(declare-datatypes ((ValueCell!18269 0))(
  ( (ValueCellFull!18269 (v!22132 V!59673)) (EmptyCell!18269) )
))
(declare-datatypes ((array!103871 0))(
  ( (array!103872 (arr!50123 (Array (_ BitVec 32) ValueCell!18269)) (size!50674 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103871)

(declare-fun e!869775 () Bool)

(declare-fun array_inv!38888 (array!103871) Bool)

(assert (=> start!133548 (and (array_inv!38888 _values!487) e!869775)))

(declare-fun b!1560691 () Bool)

(declare-fun res!1067244 () Bool)

(assert (=> b!1560691 (=> (not res!1067244) (not e!869774))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1560691 (= res!1067244 (and (= (size!50674 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50673 _keys!637) (size!50674 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1560692 () Bool)

(assert (=> b!1560692 (= e!869774 (bvslt (bvadd #b00000000000000000000000000000001 from!782) #b00000000000000000000000000000000))))

(declare-fun b!1560693 () Bool)

(declare-fun mapRes!59274 () Bool)

(assert (=> b!1560693 (= e!869775 (and e!869776 mapRes!59274))))

(declare-fun condMapEmpty!59274 () Bool)

(declare-fun mapDefault!59274 () ValueCell!18269)

