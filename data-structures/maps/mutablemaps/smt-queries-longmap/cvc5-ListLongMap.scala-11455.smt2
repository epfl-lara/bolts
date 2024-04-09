; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133560 () Bool)

(assert start!133560)

(declare-fun b_free!31945 () Bool)

(declare-fun b_next!31945 () Bool)

(assert (=> start!133560 (= b_free!31945 (not b_next!31945))))

(declare-fun tp!112960 () Bool)

(declare-fun b_and!51411 () Bool)

(assert (=> start!133560 (= tp!112960 b_and!51411)))

(declare-fun b!1560851 () Bool)

(declare-fun res!1067353 () Bool)

(declare-fun e!869863 () Bool)

(assert (=> b!1560851 (=> (not res!1067353) (not e!869863))))

(declare-fun from!782 () (_ BitVec 32))

(declare-datatypes ((array!103893 0))(
  ( (array!103894 (arr!50134 (Array (_ BitVec 32) (_ BitVec 64))) (size!50685 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103893)

(assert (=> b!1560851 (= res!1067353 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50685 _keys!637)) (bvslt from!782 (size!50685 _keys!637))))))

(declare-fun b!1560852 () Bool)

(declare-fun res!1067354 () Bool)

(assert (=> b!1560852 (=> (not res!1067354) (not e!869863))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1560852 (= res!1067354 (validKeyInArray!0 (select (arr!50134 _keys!637) from!782)))))

(declare-fun mapIsEmpty!59292 () Bool)

(declare-fun mapRes!59292 () Bool)

(assert (=> mapIsEmpty!59292 mapRes!59292))

(declare-fun b!1560853 () Bool)

(declare-fun res!1067350 () Bool)

(assert (=> b!1560853 (=> (not res!1067350) (not e!869863))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((V!59689 0))(
  ( (V!59690 (val!19389 Int)) )
))
(declare-datatypes ((ValueCell!18275 0))(
  ( (ValueCellFull!18275 (v!22138 V!59689)) (EmptyCell!18275) )
))
(declare-datatypes ((array!103895 0))(
  ( (array!103896 (arr!50135 (Array (_ BitVec 32) ValueCell!18275)) (size!50686 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103895)

(assert (=> b!1560853 (= res!1067350 (and (= (size!50686 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50685 _keys!637) (size!50686 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1560854 () Bool)

(declare-fun res!1067351 () Bool)

(assert (=> b!1560854 (=> (not res!1067351) (not e!869863))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103893 (_ BitVec 32)) Bool)

(assert (=> b!1560854 (= res!1067351 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun res!1067349 () Bool)

(assert (=> start!133560 (=> (not res!1067349) (not e!869863))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133560 (= res!1067349 (validMask!0 mask!947))))

(assert (=> start!133560 e!869863))

(assert (=> start!133560 tp!112960))

(declare-fun tp_is_empty!38611 () Bool)

(assert (=> start!133560 tp_is_empty!38611))

(assert (=> start!133560 true))

(declare-fun array_inv!38897 (array!103893) Bool)

(assert (=> start!133560 (array_inv!38897 _keys!637)))

(declare-fun e!869867 () Bool)

(declare-fun array_inv!38898 (array!103895) Bool)

(assert (=> start!133560 (and (array_inv!38898 _values!487) e!869867)))

(declare-fun b!1560855 () Bool)

(declare-fun e!869865 () Bool)

(assert (=> b!1560855 (= e!869867 (and e!869865 mapRes!59292))))

(declare-fun condMapEmpty!59292 () Bool)

(declare-fun mapDefault!59292 () ValueCell!18275)

