; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133552 () Bool)

(assert start!133552)

(declare-fun mapNonEmpty!59280 () Bool)

(declare-fun mapRes!59280 () Bool)

(declare-fun tp!112936 () Bool)

(declare-fun e!869805 () Bool)

(assert (=> mapNonEmpty!59280 (= mapRes!59280 (and tp!112936 e!869805))))

(declare-datatypes ((V!59677 0))(
  ( (V!59678 (val!19385 Int)) )
))
(declare-datatypes ((ValueCell!18271 0))(
  ( (ValueCellFull!18271 (v!22134 V!59677)) (EmptyCell!18271) )
))
(declare-fun mapValue!59280 () ValueCell!18271)

(declare-fun mapKey!59280 () (_ BitVec 32))

(declare-datatypes ((array!103877 0))(
  ( (array!103878 (arr!50126 (Array (_ BitVec 32) ValueCell!18271)) (size!50677 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103877)

(declare-fun mapRest!59280 () (Array (_ BitVec 32) ValueCell!18271))

(assert (=> mapNonEmpty!59280 (= (arr!50126 _values!487) (store mapRest!59280 mapKey!59280 mapValue!59280))))

(declare-fun b!1560743 () Bool)

(declare-fun e!869807 () Bool)

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1560743 (= e!869807 (bvslt (bvadd #b00000000000000000000000000000001 from!782) #b00000000000000000000000000000000))))

(declare-fun b!1560744 () Bool)

(declare-fun e!869806 () Bool)

(declare-fun tp_is_empty!38603 () Bool)

(assert (=> b!1560744 (= e!869806 tp_is_empty!38603)))

(declare-fun b!1560745 () Bool)

(declare-fun res!1067277 () Bool)

(assert (=> b!1560745 (=> (not res!1067277) (not e!869807))))

(declare-datatypes ((array!103879 0))(
  ( (array!103880 (arr!50127 (Array (_ BitVec 32) (_ BitVec 64))) (size!50678 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103879)

(assert (=> b!1560745 (= res!1067277 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50678 _keys!637)) (bvslt from!782 (size!50678 _keys!637))))))

(declare-fun b!1560746 () Bool)

(declare-fun e!869803 () Bool)

(assert (=> b!1560746 (= e!869803 (and e!869806 mapRes!59280))))

(declare-fun condMapEmpty!59280 () Bool)

(declare-fun mapDefault!59280 () ValueCell!18271)

