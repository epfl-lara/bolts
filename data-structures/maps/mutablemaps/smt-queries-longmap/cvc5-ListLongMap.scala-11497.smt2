; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133822 () Bool)

(assert start!133822)

(declare-fun mapIsEmpty!59673 () Bool)

(declare-fun mapRes!59673 () Bool)

(assert (=> mapIsEmpty!59673 mapRes!59673))

(declare-fun b!1564276 () Bool)

(declare-fun res!1069509 () Bool)

(declare-fun e!871881 () Bool)

(assert (=> b!1564276 (=> (not res!1069509) (not e!871881))))

(declare-fun from!782 () (_ BitVec 32))

(declare-datatypes ((array!104383 0))(
  ( (array!104384 (arr!50378 (Array (_ BitVec 32) (_ BitVec 64))) (size!50929 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104383)

(assert (=> b!1564276 (= res!1069509 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50929 _keys!637)) (bvsge from!782 (size!50929 _keys!637))))))

(declare-fun b!1564277 () Bool)

(assert (=> b!1564277 (= e!871881 false)))

(declare-fun lt!671958 () Bool)

(declare-datatypes ((V!60025 0))(
  ( (V!60026 (val!19515 Int)) )
))
(declare-datatypes ((tuple2!25340 0))(
  ( (tuple2!25341 (_1!12680 (_ BitVec 64)) (_2!12680 V!60025)) )
))
(declare-datatypes ((List!36726 0))(
  ( (Nil!36723) (Cons!36722 (h!38169 tuple2!25340) (t!51580 List!36726)) )
))
(declare-datatypes ((ListLongMap!22787 0))(
  ( (ListLongMap!22788 (toList!11409 List!36726)) )
))
(declare-fun contains!10330 (ListLongMap!22787 (_ BitVec 64)) Bool)

(assert (=> b!1564277 (= lt!671958 (contains!10330 (ListLongMap!22788 Nil!36723) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1564278 () Bool)

(declare-fun e!871882 () Bool)

(declare-fun tp_is_empty!38863 () Bool)

(assert (=> b!1564278 (= e!871882 tp_is_empty!38863)))

(declare-fun b!1564279 () Bool)

(declare-fun res!1069508 () Bool)

(assert (=> b!1564279 (=> (not res!1069508) (not e!871881))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104383 (_ BitVec 32)) Bool)

(assert (=> b!1564279 (= res!1069508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1564280 () Bool)

(declare-fun res!1069507 () Bool)

(assert (=> b!1564280 (=> (not res!1069507) (not e!871881))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18401 0))(
  ( (ValueCellFull!18401 (v!22264 V!60025)) (EmptyCell!18401) )
))
(declare-datatypes ((array!104385 0))(
  ( (array!104386 (arr!50379 (Array (_ BitVec 32) ValueCell!18401)) (size!50930 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104385)

(assert (=> b!1564280 (= res!1069507 (and (= (size!50930 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50929 _keys!637) (size!50930 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!59673 () Bool)

(declare-fun tp!113599 () Bool)

(assert (=> mapNonEmpty!59673 (= mapRes!59673 (and tp!113599 e!871882))))

(declare-fun mapKey!59673 () (_ BitVec 32))

(declare-fun mapRest!59673 () (Array (_ BitVec 32) ValueCell!18401))

(declare-fun mapValue!59673 () ValueCell!18401)

(assert (=> mapNonEmpty!59673 (= (arr!50379 _values!487) (store mapRest!59673 mapKey!59673 mapValue!59673))))

(declare-fun b!1564282 () Bool)

(declare-fun res!1069510 () Bool)

(assert (=> b!1564282 (=> (not res!1069510) (not e!871881))))

(assert (=> b!1564282 (= res!1069510 (not (contains!10330 (ListLongMap!22788 Nil!36723) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1564283 () Bool)

(declare-fun res!1069511 () Bool)

(assert (=> b!1564283 (=> (not res!1069511) (not e!871881))))

(declare-datatypes ((List!36727 0))(
  ( (Nil!36724) (Cons!36723 (h!38170 (_ BitVec 64)) (t!51581 List!36727)) )
))
(declare-fun arrayNoDuplicates!0 (array!104383 (_ BitVec 32) List!36727) Bool)

(assert (=> b!1564283 (= res!1069511 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36724))))

(declare-fun b!1564284 () Bool)

(declare-fun e!871879 () Bool)

(assert (=> b!1564284 (= e!871879 tp_is_empty!38863)))

(declare-fun res!1069506 () Bool)

(assert (=> start!133822 (=> (not res!1069506) (not e!871881))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133822 (= res!1069506 (validMask!0 mask!947))))

(assert (=> start!133822 e!871881))

(assert (=> start!133822 true))

(declare-fun array_inv!39077 (array!104383) Bool)

(assert (=> start!133822 (array_inv!39077 _keys!637)))

(declare-fun e!871883 () Bool)

(declare-fun array_inv!39078 (array!104385) Bool)

(assert (=> start!133822 (and (array_inv!39078 _values!487) e!871883)))

(declare-fun b!1564281 () Bool)

(assert (=> b!1564281 (= e!871883 (and e!871879 mapRes!59673))))

(declare-fun condMapEmpty!59673 () Bool)

(declare-fun mapDefault!59673 () ValueCell!18401)

