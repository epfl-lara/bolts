; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133554 () Bool)

(assert start!133554)

(declare-fun b_free!31939 () Bool)

(declare-fun b_next!31939 () Bool)

(assert (=> start!133554 (= b_free!31939 (not b_next!31939))))

(declare-fun tp!112942 () Bool)

(declare-fun b_and!51405 () Bool)

(assert (=> start!133554 (= tp!112942 b_and!51405)))

(declare-fun b!1560770 () Bool)

(declare-fun res!1067296 () Bool)

(declare-fun e!869818 () Bool)

(assert (=> b!1560770 (=> (not res!1067296) (not e!869818))))

(declare-datatypes ((array!103881 0))(
  ( (array!103882 (arr!50128 (Array (_ BitVec 32) (_ BitVec 64))) (size!50679 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103881)

(declare-datatypes ((List!36560 0))(
  ( (Nil!36557) (Cons!36556 (h!38003 (_ BitVec 64)) (t!51300 List!36560)) )
))
(declare-fun arrayNoDuplicates!0 (array!103881 (_ BitVec 32) List!36560) Bool)

(assert (=> b!1560770 (= res!1067296 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36557))))

(declare-fun b!1560771 () Bool)

(declare-fun res!1067300 () Bool)

(assert (=> b!1560771 (=> (not res!1067300) (not e!869818))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((V!59681 0))(
  ( (V!59682 (val!19386 Int)) )
))
(declare-datatypes ((ValueCell!18272 0))(
  ( (ValueCellFull!18272 (v!22135 V!59681)) (EmptyCell!18272) )
))
(declare-datatypes ((array!103883 0))(
  ( (array!103884 (arr!50129 (Array (_ BitVec 32) ValueCell!18272)) (size!50680 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103883)

(assert (=> b!1560771 (= res!1067300 (and (= (size!50680 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50679 _keys!637) (size!50680 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun res!1067299 () Bool)

(assert (=> start!133554 (=> (not res!1067299) (not e!869818))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133554 (= res!1067299 (validMask!0 mask!947))))

(assert (=> start!133554 e!869818))

(assert (=> start!133554 tp!112942))

(declare-fun tp_is_empty!38605 () Bool)

(assert (=> start!133554 tp_is_empty!38605))

(assert (=> start!133554 true))

(declare-fun array_inv!38891 (array!103881) Bool)

(assert (=> start!133554 (array_inv!38891 _keys!637)))

(declare-fun e!869819 () Bool)

(declare-fun array_inv!38892 (array!103883) Bool)

(assert (=> start!133554 (and (array_inv!38892 _values!487) e!869819)))

(declare-fun b!1560772 () Bool)

(declare-fun res!1067298 () Bool)

(assert (=> b!1560772 (=> (not res!1067298) (not e!869818))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1560772 (= res!1067298 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50679 _keys!637)) (bvslt from!782 (size!50679 _keys!637))))))

(declare-fun b!1560773 () Bool)

(declare-fun e!869821 () Bool)

(declare-fun mapRes!59283 () Bool)

(assert (=> b!1560773 (= e!869819 (and e!869821 mapRes!59283))))

(declare-fun condMapEmpty!59283 () Bool)

(declare-fun mapDefault!59283 () ValueCell!18272)

