; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133838 () Bool)

(assert start!133838)

(declare-fun mapIsEmpty!59697 () Bool)

(declare-fun mapRes!59697 () Bool)

(assert (=> mapIsEmpty!59697 mapRes!59697))

(declare-fun b!1564501 () Bool)

(declare-fun e!872010 () Bool)

(declare-datatypes ((V!60045 0))(
  ( (V!60046 (val!19523 Int)) )
))
(declare-datatypes ((tuple2!25356 0))(
  ( (tuple2!25357 (_1!12688 (_ BitVec 64)) (_2!12688 V!60045)) )
))
(declare-datatypes ((List!36740 0))(
  ( (Nil!36737) (Cons!36736 (h!38183 tuple2!25356) (t!51594 List!36740)) )
))
(declare-datatypes ((ListLongMap!22803 0))(
  ( (ListLongMap!22804 (toList!11417 List!36740)) )
))
(declare-fun isEmpty!1144 (ListLongMap!22803) Bool)

(assert (=> b!1564501 (= e!872010 (not (isEmpty!1144 (ListLongMap!22804 Nil!36737))))))

(declare-fun b!1564502 () Bool)

(declare-fun res!1069661 () Bool)

(declare-fun e!872012 () Bool)

(assert (=> b!1564502 (=> (not res!1069661) (not e!872012))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!104413 0))(
  ( (array!104414 (arr!50393 (Array (_ BitVec 32) (_ BitVec 64))) (size!50944 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104413)

(declare-datatypes ((ValueCell!18409 0))(
  ( (ValueCellFull!18409 (v!22272 V!60045)) (EmptyCell!18409) )
))
(declare-datatypes ((array!104415 0))(
  ( (array!104416 (arr!50394 (Array (_ BitVec 32) ValueCell!18409)) (size!50945 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104415)

(assert (=> b!1564502 (= res!1069661 (and (= (size!50945 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50944 _keys!637) (size!50945 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!59697 () Bool)

(declare-fun tp!113623 () Bool)

(declare-fun e!872008 () Bool)

(assert (=> mapNonEmpty!59697 (= mapRes!59697 (and tp!113623 e!872008))))

(declare-fun mapRest!59697 () (Array (_ BitVec 32) ValueCell!18409))

(declare-fun mapValue!59697 () ValueCell!18409)

(declare-fun mapKey!59697 () (_ BitVec 32))

(assert (=> mapNonEmpty!59697 (= (arr!50394 _values!487) (store mapRest!59697 mapKey!59697 mapValue!59697))))

(declare-fun b!1564503 () Bool)

(declare-fun e!872007 () Bool)

(declare-fun tp_is_empty!38879 () Bool)

(assert (=> b!1564503 (= e!872007 tp_is_empty!38879)))

(declare-fun b!1564504 () Bool)

(declare-fun res!1069663 () Bool)

(assert (=> b!1564504 (=> (not res!1069663) (not e!872012))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1564504 (= res!1069663 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50944 _keys!637)) (bvsge from!782 (size!50944 _keys!637))))))

(declare-fun b!1564505 () Bool)

(declare-fun res!1069659 () Bool)

(assert (=> b!1564505 (=> res!1069659 e!872010)))

(declare-fun contains!10338 (ListLongMap!22803 (_ BitVec 64)) Bool)

(assert (=> b!1564505 (= res!1069659 (contains!10338 (ListLongMap!22804 Nil!36737) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1564506 () Bool)

(declare-fun e!872011 () Bool)

(assert (=> b!1564506 (= e!872011 (and e!872007 mapRes!59697))))

(declare-fun condMapEmpty!59697 () Bool)

(declare-fun mapDefault!59697 () ValueCell!18409)

