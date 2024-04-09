; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133686 () Bool)

(assert start!133686)

(declare-fun mapNonEmpty!59481 () Bool)

(declare-fun mapRes!59481 () Bool)

(declare-fun tp!113317 () Bool)

(declare-fun e!870821 () Bool)

(assert (=> mapNonEmpty!59481 (= mapRes!59481 (and tp!113317 e!870821))))

(declare-datatypes ((V!59857 0))(
  ( (V!59858 (val!19452 Int)) )
))
(declare-datatypes ((ValueCell!18338 0))(
  ( (ValueCellFull!18338 (v!22201 V!59857)) (EmptyCell!18338) )
))
(declare-fun mapValue!59481 () ValueCell!18338)

(declare-fun mapKey!59481 () (_ BitVec 32))

(declare-datatypes ((array!104137 0))(
  ( (array!104138 (arr!50256 (Array (_ BitVec 32) ValueCell!18338)) (size!50807 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104137)

(declare-fun mapRest!59481 () (Array (_ BitVec 32) ValueCell!18338))

(assert (=> mapNonEmpty!59481 (= (arr!50256 _values!487) (store mapRest!59481 mapKey!59481 mapValue!59481))))

(declare-fun res!1068432 () Bool)

(declare-fun e!870817 () Bool)

(assert (=> start!133686 (=> (not res!1068432) (not e!870817))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133686 (= res!1068432 (validMask!0 mask!947))))

(assert (=> start!133686 e!870817))

(assert (=> start!133686 true))

(declare-fun e!870819 () Bool)

(declare-fun array_inv!38989 (array!104137) Bool)

(assert (=> start!133686 (and (array_inv!38989 _values!487) e!870819)))

(declare-datatypes ((array!104139 0))(
  ( (array!104140 (arr!50257 (Array (_ BitVec 32) (_ BitVec 64))) (size!50808 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104139)

(declare-fun array_inv!38990 (array!104139) Bool)

(assert (=> start!133686 (array_inv!38990 _keys!637)))

(declare-fun b!1562615 () Bool)

(declare-fun e!870818 () Bool)

(declare-fun tp_is_empty!38737 () Bool)

(assert (=> b!1562615 (= e!870818 tp_is_empty!38737)))

(declare-fun b!1562616 () Bool)

(declare-fun res!1068433 () Bool)

(assert (=> b!1562616 (=> (not res!1068433) (not e!870817))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1562616 (= res!1068433 (and (= (size!50807 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50808 _keys!637) (size!50807 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1562617 () Bool)

(assert (=> b!1562617 (= e!870821 tp_is_empty!38737)))

(declare-fun b!1562618 () Bool)

(assert (=> b!1562618 (= e!870817 false)))

(declare-fun lt!671697 () Bool)

(declare-datatypes ((List!36654 0))(
  ( (Nil!36651) (Cons!36650 (h!38097 (_ BitVec 64)) (t!51508 List!36654)) )
))
(declare-fun arrayNoDuplicates!0 (array!104139 (_ BitVec 32) List!36654) Bool)

(assert (=> b!1562618 (= lt!671697 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36651))))

(declare-fun b!1562619 () Bool)

(assert (=> b!1562619 (= e!870819 (and e!870818 mapRes!59481))))

(declare-fun condMapEmpty!59481 () Bool)

(declare-fun mapDefault!59481 () ValueCell!18338)

