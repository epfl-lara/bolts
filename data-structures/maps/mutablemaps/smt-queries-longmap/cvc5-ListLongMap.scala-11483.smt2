; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133728 () Bool)

(assert start!133728)

(declare-fun b_free!32059 () Bool)

(declare-fun b_next!32059 () Bool)

(assert (=> start!133728 (= b_free!32059 (not b_next!32059))))

(declare-fun tp!113383 () Bool)

(declare-fun b_and!51639 () Bool)

(assert (=> start!133728 (= tp!113383 b_and!51639)))

(declare-fun b!1563028 () Bool)

(declare-fun e!871135 () Bool)

(declare-fun tp_is_empty!38779 () Bool)

(assert (=> b!1563028 (= e!871135 tp_is_empty!38779)))

(declare-fun mapNonEmpty!59544 () Bool)

(declare-fun mapRes!59544 () Bool)

(declare-fun tp!113382 () Bool)

(declare-fun e!871137 () Bool)

(assert (=> mapNonEmpty!59544 (= mapRes!59544 (and tp!113382 e!871137))))

(declare-fun mapKey!59544 () (_ BitVec 32))

(declare-datatypes ((V!59913 0))(
  ( (V!59914 (val!19473 Int)) )
))
(declare-datatypes ((ValueCell!18359 0))(
  ( (ValueCellFull!18359 (v!22222 V!59913)) (EmptyCell!18359) )
))
(declare-fun mapRest!59544 () (Array (_ BitVec 32) ValueCell!18359))

(declare-datatypes ((array!104219 0))(
  ( (array!104220 (arr!50297 (Array (_ BitVec 32) ValueCell!18359)) (size!50848 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104219)

(declare-fun mapValue!59544 () ValueCell!18359)

(assert (=> mapNonEmpty!59544 (= (arr!50297 _values!487) (store mapRest!59544 mapKey!59544 mapValue!59544))))

(declare-fun b!1563029 () Bool)

(declare-fun res!1068662 () Bool)

(declare-fun e!871136 () Bool)

(assert (=> b!1563029 (=> (not res!1068662) (not e!871136))))

(declare-datatypes ((array!104221 0))(
  ( (array!104222 (arr!50298 (Array (_ BitVec 32) (_ BitVec 64))) (size!50849 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104221)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1563029 (= res!1068662 (not (validKeyInArray!0 (select (arr!50298 _keys!637) from!782))))))

(declare-fun b!1563030 () Bool)

(declare-fun e!871134 () Bool)

(assert (=> b!1563030 (= e!871134 false)))

(declare-fun lt!671754 () Bool)

(declare-datatypes ((tuple2!25276 0))(
  ( (tuple2!25277 (_1!12648 (_ BitVec 64)) (_2!12648 V!59913)) )
))
(declare-datatypes ((List!36666 0))(
  ( (Nil!36663) (Cons!36662 (h!38109 tuple2!25276) (t!51520 List!36666)) )
))
(declare-datatypes ((ListLongMap!22723 0))(
  ( (ListLongMap!22724 (toList!11377 List!36666)) )
))
(declare-fun lt!671753 () ListLongMap!22723)

(declare-fun contains!10297 (ListLongMap!22723 (_ BitVec 64)) Bool)

(assert (=> b!1563030 (= lt!671754 (contains!10297 lt!671753 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1563031 () Bool)

(declare-fun e!871139 () Bool)

(assert (=> b!1563031 (= e!871139 (and e!871135 mapRes!59544))))

(declare-fun condMapEmpty!59544 () Bool)

(declare-fun mapDefault!59544 () ValueCell!18359)

