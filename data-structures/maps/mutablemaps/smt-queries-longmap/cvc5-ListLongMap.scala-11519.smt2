; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134120 () Bool)

(assert start!134120)

(declare-fun b_free!32215 () Bool)

(declare-fun b_next!32215 () Bool)

(assert (=> start!134120 (= b_free!32215 (not b_next!32215))))

(declare-fun tp!113965 () Bool)

(declare-fun b_and!51869 () Bool)

(assert (=> start!134120 (= tp!113965 b_and!51869)))

(declare-fun b!1567058 () Bool)

(declare-fun e!873540 () Bool)

(declare-datatypes ((array!104651 0))(
  ( (array!104652 (arr!50506 (Array (_ BitVec 32) (_ BitVec 64))) (size!51057 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104651)

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1567058 (= e!873540 (bvsge (bvsub (size!51057 _keys!637) from!782) (bvsub (bvadd #b00000000000000000000000000000001 (size!51057 _keys!637)) from!782)))))

(declare-fun b!1567059 () Bool)

(declare-fun e!873537 () Bool)

(declare-fun tp_is_empty!38995 () Bool)

(assert (=> b!1567059 (= e!873537 tp_is_empty!38995)))

(declare-fun b!1567060 () Bool)

(declare-fun res!1071116 () Bool)

(declare-fun e!873541 () Bool)

(assert (=> b!1567060 (=> (not res!1071116) (not e!873541))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((V!60201 0))(
  ( (V!60202 (val!19581 Int)) )
))
(declare-datatypes ((ValueCell!18467 0))(
  ( (ValueCellFull!18467 (v!22337 V!60201)) (EmptyCell!18467) )
))
(declare-datatypes ((array!104653 0))(
  ( (array!104654 (arr!50507 (Array (_ BitVec 32) ValueCell!18467)) (size!51058 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104653)

(assert (=> b!1567060 (= res!1071116 (and (= (size!51058 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!51057 _keys!637) (size!51058 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!59892 () Bool)

(declare-fun mapRes!59892 () Bool)

(declare-fun tp!113964 () Bool)

(declare-fun e!873539 () Bool)

(assert (=> mapNonEmpty!59892 (= mapRes!59892 (and tp!113964 e!873539))))

(declare-fun mapKey!59892 () (_ BitVec 32))

(declare-fun mapValue!59892 () ValueCell!18467)

(declare-fun mapRest!59892 () (Array (_ BitVec 32) ValueCell!18467))

(assert (=> mapNonEmpty!59892 (= (arr!50507 _values!487) (store mapRest!59892 mapKey!59892 mapValue!59892))))

(declare-fun b!1567061 () Bool)

(declare-fun res!1071122 () Bool)

(assert (=> b!1567061 (=> (not res!1071122) (not e!873541))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104651 (_ BitVec 32)) Bool)

(assert (=> b!1567061 (= res!1071122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1567062 () Bool)

(declare-fun res!1071117 () Bool)

(assert (=> b!1567062 (=> (not res!1071117) (not e!873541))))

(declare-datatypes ((List!36816 0))(
  ( (Nil!36813) (Cons!36812 (h!38260 (_ BitVec 64)) (t!51727 List!36816)) )
))
(declare-fun arrayNoDuplicates!0 (array!104651 (_ BitVec 32) List!36816) Bool)

(assert (=> b!1567062 (= res!1071117 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36813))))

(declare-fun b!1567063 () Bool)

(declare-fun res!1071118 () Bool)

(assert (=> b!1567063 (=> (not res!1071118) (not e!873540))))

(declare-datatypes ((tuple2!25432 0))(
  ( (tuple2!25433 (_1!12726 (_ BitVec 64)) (_2!12726 V!60201)) )
))
(declare-datatypes ((List!36817 0))(
  ( (Nil!36814) (Cons!36813 (h!38261 tuple2!25432) (t!51728 List!36817)) )
))
(declare-datatypes ((ListLongMap!22879 0))(
  ( (ListLongMap!22880 (toList!11455 List!36817)) )
))
(declare-fun lt!672800 () ListLongMap!22879)

(declare-fun contains!10379 (ListLongMap!22879 (_ BitVec 64)) Bool)

(assert (=> b!1567063 (= res!1071118 (not (contains!10379 lt!672800 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1567064 () Bool)

(declare-fun e!873538 () Bool)

(assert (=> b!1567064 (= e!873538 (and e!873537 mapRes!59892))))

(declare-fun condMapEmpty!59892 () Bool)

(declare-fun mapDefault!59892 () ValueCell!18467)

