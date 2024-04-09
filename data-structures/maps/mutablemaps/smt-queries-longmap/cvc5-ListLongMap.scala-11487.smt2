; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133752 () Bool)

(assert start!133752)

(declare-fun b_free!32083 () Bool)

(declare-fun b_next!32083 () Bool)

(assert (=> start!133752 (= b_free!32083 (not b_next!32083))))

(declare-fun tp!113454 () Bool)

(declare-fun b_and!51663 () Bool)

(assert (=> start!133752 (= tp!113454 b_and!51663)))

(declare-fun b!1563388 () Bool)

(declare-fun res!1068909 () Bool)

(declare-fun e!871350 () Bool)

(assert (=> b!1563388 (=> (not res!1068909) (not e!871350))))

(declare-datatypes ((array!104267 0))(
  ( (array!104268 (arr!50321 (Array (_ BitVec 32) (_ BitVec 64))) (size!50872 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104267)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104267 (_ BitVec 32)) Bool)

(assert (=> b!1563388 (= res!1068909 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1563389 () Bool)

(declare-fun res!1068910 () Bool)

(assert (=> b!1563389 (=> (not res!1068910) (not e!871350))))

(declare-datatypes ((List!36685 0))(
  ( (Nil!36682) (Cons!36681 (h!38128 (_ BitVec 64)) (t!51539 List!36685)) )
))
(declare-fun arrayNoDuplicates!0 (array!104267 (_ BitVec 32) List!36685) Bool)

(assert (=> b!1563389 (= res!1068910 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36682))))

(declare-fun b!1563390 () Bool)

(declare-fun res!1068911 () Bool)

(assert (=> b!1563390 (=> (not res!1068911) (not e!871350))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1563390 (= res!1068911 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50872 _keys!637)) (bvslt from!782 (size!50872 _keys!637))))))

(declare-fun b!1563391 () Bool)

(declare-fun res!1068913 () Bool)

(assert (=> b!1563391 (=> (not res!1068913) (not e!871350))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((V!59945 0))(
  ( (V!59946 (val!19485 Int)) )
))
(declare-datatypes ((ValueCell!18371 0))(
  ( (ValueCellFull!18371 (v!22234 V!59945)) (EmptyCell!18371) )
))
(declare-datatypes ((array!104269 0))(
  ( (array!104270 (arr!50322 (Array (_ BitVec 32) ValueCell!18371)) (size!50873 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104269)

(assert (=> b!1563391 (= res!1068913 (and (= (size!50873 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50872 _keys!637) (size!50873 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1563392 () Bool)

(declare-fun e!871354 () Bool)

(declare-fun tp_is_empty!38803 () Bool)

(assert (=> b!1563392 (= e!871354 tp_is_empty!38803)))

(declare-fun mapNonEmpty!59580 () Bool)

(declare-fun mapRes!59580 () Bool)

(declare-fun tp!113455 () Bool)

(assert (=> mapNonEmpty!59580 (= mapRes!59580 (and tp!113455 e!871354))))

(declare-fun mapValue!59580 () ValueCell!18371)

(declare-fun mapKey!59580 () (_ BitVec 32))

(declare-fun mapRest!59580 () (Array (_ BitVec 32) ValueCell!18371))

(assert (=> mapNonEmpty!59580 (= (arr!50322 _values!487) (store mapRest!59580 mapKey!59580 mapValue!59580))))

(declare-fun b!1563393 () Bool)

(declare-fun e!871355 () Bool)

(assert (=> b!1563393 (= e!871355 false)))

(declare-fun lt!671825 () Bool)

(declare-datatypes ((tuple2!25298 0))(
  ( (tuple2!25299 (_1!12659 (_ BitVec 64)) (_2!12659 V!59945)) )
))
(declare-datatypes ((List!36686 0))(
  ( (Nil!36683) (Cons!36682 (h!38129 tuple2!25298) (t!51540 List!36686)) )
))
(declare-datatypes ((ListLongMap!22745 0))(
  ( (ListLongMap!22746 (toList!11388 List!36686)) )
))
(declare-fun lt!671826 () ListLongMap!22745)

(declare-fun contains!10308 (ListLongMap!22745 (_ BitVec 64)) Bool)

(assert (=> b!1563393 (= lt!671825 (contains!10308 lt!671826 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1563394 () Bool)

(declare-fun e!871353 () Bool)

(declare-fun e!871352 () Bool)

(assert (=> b!1563394 (= e!871353 (and e!871352 mapRes!59580))))

(declare-fun condMapEmpty!59580 () Bool)

(declare-fun mapDefault!59580 () ValueCell!18371)

