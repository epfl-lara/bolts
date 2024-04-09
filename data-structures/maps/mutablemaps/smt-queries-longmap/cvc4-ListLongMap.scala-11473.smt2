; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133672 () Bool)

(assert start!133672)

(declare-fun b_free!32057 () Bool)

(declare-fun b_next!32057 () Bool)

(assert (=> start!133672 (= b_free!32057 (not b_next!32057))))

(declare-fun tp!113295 () Bool)

(declare-fun b_and!51635 () Bool)

(assert (=> start!133672 (= tp!113295 b_and!51635)))

(declare-fun b!1562484 () Bool)

(declare-fun e!870715 () Bool)

(assert (=> b!1562484 (= e!870715 (not true))))

(declare-fun lt!671675 () Bool)

(declare-datatypes ((V!59837 0))(
  ( (V!59838 (val!19445 Int)) )
))
(declare-datatypes ((tuple2!25274 0))(
  ( (tuple2!25275 (_1!12647 (_ BitVec 64)) (_2!12647 V!59837)) )
))
(declare-datatypes ((List!36649 0))(
  ( (Nil!36646) (Cons!36645 (h!38092 tuple2!25274) (t!51503 List!36649)) )
))
(declare-datatypes ((ListLongMap!22721 0))(
  ( (ListLongMap!22722 (toList!11376 List!36649)) )
))
(declare-fun lt!671674 () ListLongMap!22721)

(declare-fun contains!10296 (ListLongMap!22721 (_ BitVec 64)) Bool)

(assert (=> b!1562484 (= lt!671675 (contains!10296 lt!671674 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1562484 (not (contains!10296 lt!671674 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!671672 () ListLongMap!22721)

(declare-fun lt!671676 () V!59837)

(declare-datatypes ((array!104111 0))(
  ( (array!104112 (arr!50243 (Array (_ BitVec 32) (_ BitVec 64))) (size!50794 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104111)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun +!5030 (ListLongMap!22721 tuple2!25274) ListLongMap!22721)

(assert (=> b!1562484 (= lt!671674 (+!5030 lt!671672 (tuple2!25275 (select (arr!50243 _keys!637) from!782) lt!671676)))))

(declare-datatypes ((Unit!51924 0))(
  ( (Unit!51925) )
))
(declare-fun lt!671673 () Unit!51924)

(declare-fun addStillNotContains!566 (ListLongMap!22721 (_ BitVec 64) V!59837 (_ BitVec 64)) Unit!51924)

(assert (=> b!1562484 (= lt!671673 (addStillNotContains!566 lt!671672 (select (arr!50243 _keys!637) from!782) lt!671676 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-datatypes ((ValueCell!18331 0))(
  ( (ValueCellFull!18331 (v!22194 V!59837)) (EmptyCell!18331) )
))
(declare-datatypes ((array!104113 0))(
  ( (array!104114 (arr!50244 (Array (_ BitVec 32) ValueCell!18331)) (size!50795 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104113)

(declare-fun get!26288 (ValueCell!18331 V!59837) V!59837)

(declare-fun dynLambda!3919 (Int (_ BitVec 64)) V!59837)

(assert (=> b!1562484 (= lt!671676 (get!26288 (select (arr!50244 _values!487) from!782) (dynLambda!3919 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59837)

(declare-fun zeroValue!453 () V!59837)

(declare-fun getCurrentListMapNoExtraKeys!6736 (array!104111 array!104113 (_ BitVec 32) (_ BitVec 32) V!59837 V!59837 (_ BitVec 32) Int) ListLongMap!22721)

(assert (=> b!1562484 (= lt!671672 (getCurrentListMapNoExtraKeys!6736 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1562485 () Bool)

(declare-fun res!1068371 () Bool)

(assert (=> b!1562485 (=> (not res!1068371) (not e!870715))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104111 (_ BitVec 32)) Bool)

(assert (=> b!1562485 (= res!1068371 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1562486 () Bool)

(declare-fun e!870716 () Bool)

(declare-fun tp_is_empty!38723 () Bool)

(assert (=> b!1562486 (= e!870716 tp_is_empty!38723)))

(declare-fun b!1562487 () Bool)

(declare-fun res!1068369 () Bool)

(assert (=> b!1562487 (=> (not res!1068369) (not e!870715))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1562487 (= res!1068369 (validKeyInArray!0 (select (arr!50243 _keys!637) from!782)))))

(declare-fun mapIsEmpty!59460 () Bool)

(declare-fun mapRes!59460 () Bool)

(assert (=> mapIsEmpty!59460 mapRes!59460))

(declare-fun res!1068366 () Bool)

(assert (=> start!133672 (=> (not res!1068366) (not e!870715))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133672 (= res!1068366 (validMask!0 mask!947))))

(assert (=> start!133672 e!870715))

(assert (=> start!133672 tp!113295))

(assert (=> start!133672 tp_is_empty!38723))

(assert (=> start!133672 true))

(declare-fun array_inv!38977 (array!104111) Bool)

(assert (=> start!133672 (array_inv!38977 _keys!637)))

(declare-fun e!870713 () Bool)

(declare-fun array_inv!38978 (array!104113) Bool)

(assert (=> start!133672 (and (array_inv!38978 _values!487) e!870713)))

(declare-fun mapNonEmpty!59460 () Bool)

(declare-fun tp!113296 () Bool)

(assert (=> mapNonEmpty!59460 (= mapRes!59460 (and tp!113296 e!870716))))

(declare-fun mapValue!59460 () ValueCell!18331)

(declare-fun mapKey!59460 () (_ BitVec 32))

(declare-fun mapRest!59460 () (Array (_ BitVec 32) ValueCell!18331))

(assert (=> mapNonEmpty!59460 (= (arr!50244 _values!487) (store mapRest!59460 mapKey!59460 mapValue!59460))))

(declare-fun b!1562488 () Bool)

(declare-fun res!1068368 () Bool)

(assert (=> b!1562488 (=> (not res!1068368) (not e!870715))))

(assert (=> b!1562488 (= res!1068368 (and (= (size!50795 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50794 _keys!637) (size!50795 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1562489 () Bool)

(declare-fun e!870714 () Bool)

(assert (=> b!1562489 (= e!870714 tp_is_empty!38723)))

(declare-fun b!1562490 () Bool)

(declare-fun res!1068367 () Bool)

(assert (=> b!1562490 (=> (not res!1068367) (not e!870715))))

(declare-datatypes ((List!36650 0))(
  ( (Nil!36647) (Cons!36646 (h!38093 (_ BitVec 64)) (t!51504 List!36650)) )
))
(declare-fun arrayNoDuplicates!0 (array!104111 (_ BitVec 32) List!36650) Bool)

(assert (=> b!1562490 (= res!1068367 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36647))))

(declare-fun b!1562491 () Bool)

(declare-fun res!1068370 () Bool)

(assert (=> b!1562491 (=> (not res!1068370) (not e!870715))))

(assert (=> b!1562491 (= res!1068370 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50794 _keys!637)) (bvslt from!782 (size!50794 _keys!637))))))

(declare-fun b!1562492 () Bool)

(assert (=> b!1562492 (= e!870713 (and e!870714 mapRes!59460))))

(declare-fun condMapEmpty!59460 () Bool)

(declare-fun mapDefault!59460 () ValueCell!18331)

