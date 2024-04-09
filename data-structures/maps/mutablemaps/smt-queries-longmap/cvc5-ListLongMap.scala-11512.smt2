; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133988 () Bool)

(assert start!133988)

(declare-fun b_free!32179 () Bool)

(declare-fun b_next!32179 () Bool)

(assert (=> start!133988 (= b_free!32179 (not b_next!32179))))

(declare-fun tp!113840 () Bool)

(declare-fun b_and!51809 () Bool)

(assert (=> start!133988 (= tp!113840 b_and!51809)))

(declare-fun b!1565856 () Bool)

(declare-fun res!1070463 () Bool)

(declare-fun e!872805 () Bool)

(assert (=> b!1565856 (=> (not res!1070463) (not e!872805))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!104565 0))(
  ( (array!104566 (arr!50465 (Array (_ BitVec 32) (_ BitVec 64))) (size!51016 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104565)

(declare-datatypes ((V!60145 0))(
  ( (V!60146 (val!19560 Int)) )
))
(declare-datatypes ((ValueCell!18446 0))(
  ( (ValueCellFull!18446 (v!22313 V!60145)) (EmptyCell!18446) )
))
(declare-datatypes ((array!104567 0))(
  ( (array!104568 (arr!50466 (Array (_ BitVec 32) ValueCell!18446)) (size!51017 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104567)

(assert (=> b!1565856 (= res!1070463 (and (= (size!51017 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!51016 _keys!637) (size!51017 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1565857 () Bool)

(declare-fun res!1070458 () Bool)

(assert (=> b!1565857 (=> (not res!1070458) (not e!872805))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104565 (_ BitVec 32)) Bool)

(assert (=> b!1565857 (= res!1070458 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun mapIsEmpty!59821 () Bool)

(declare-fun mapRes!59821 () Bool)

(assert (=> mapIsEmpty!59821 mapRes!59821))

(declare-fun b!1565858 () Bool)

(declare-fun e!872806 () Bool)

(declare-fun tp_is_empty!38953 () Bool)

(assert (=> b!1565858 (= e!872806 tp_is_empty!38953)))

(declare-fun mapNonEmpty!59821 () Bool)

(declare-fun tp!113839 () Bool)

(assert (=> mapNonEmpty!59821 (= mapRes!59821 (and tp!113839 e!872806))))

(declare-fun mapValue!59821 () ValueCell!18446)

(declare-fun mapRest!59821 () (Array (_ BitVec 32) ValueCell!18446))

(declare-fun mapKey!59821 () (_ BitVec 32))

(assert (=> mapNonEmpty!59821 (= (arr!50466 _values!487) (store mapRest!59821 mapKey!59821 mapValue!59821))))

(declare-fun b!1565859 () Bool)

(assert (=> b!1565859 (= e!872805 (not true))))

(declare-fun lt!672421 () Bool)

(declare-datatypes ((tuple2!25400 0))(
  ( (tuple2!25401 (_1!12710 (_ BitVec 64)) (_2!12710 V!60145)) )
))
(declare-datatypes ((List!36786 0))(
  ( (Nil!36783) (Cons!36782 (h!38229 tuple2!25400) (t!51686 List!36786)) )
))
(declare-datatypes ((ListLongMap!22847 0))(
  ( (ListLongMap!22848 (toList!11439 List!36786)) )
))
(declare-fun lt!672422 () ListLongMap!22847)

(declare-fun contains!10360 (ListLongMap!22847 (_ BitVec 64)) Bool)

(assert (=> b!1565859 (= lt!672421 (contains!10360 lt!672422 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1565859 (not (contains!10360 lt!672422 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!672419 () ListLongMap!22847)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun lt!672420 () V!60145)

(declare-fun +!5046 (ListLongMap!22847 tuple2!25400) ListLongMap!22847)

(assert (=> b!1565859 (= lt!672422 (+!5046 lt!672419 (tuple2!25401 (select (arr!50465 _keys!637) from!782) lt!672420)))))

(declare-datatypes ((Unit!51966 0))(
  ( (Unit!51967) )
))
(declare-fun lt!672418 () Unit!51966)

(declare-fun addStillNotContains!582 (ListLongMap!22847 (_ BitVec 64) V!60145 (_ BitVec 64)) Unit!51966)

(assert (=> b!1565859 (= lt!672418 (addStillNotContains!582 lt!672419 (select (arr!50465 _keys!637) from!782) lt!672420 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26384 (ValueCell!18446 V!60145) V!60145)

(declare-fun dynLambda!3935 (Int (_ BitVec 64)) V!60145)

(assert (=> b!1565859 (= lt!672420 (get!26384 (select (arr!50466 _values!487) from!782) (dynLambda!3935 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!60145)

(declare-fun minValue!453 () V!60145)

(declare-fun getCurrentListMapNoExtraKeys!6779 (array!104565 array!104567 (_ BitVec 32) (_ BitVec 32) V!60145 V!60145 (_ BitVec 32) Int) ListLongMap!22847)

(assert (=> b!1565859 (= lt!672419 (getCurrentListMapNoExtraKeys!6779 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun res!1070460 () Bool)

(assert (=> start!133988 (=> (not res!1070460) (not e!872805))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133988 (= res!1070460 (validMask!0 mask!947))))

(assert (=> start!133988 e!872805))

(assert (=> start!133988 tp!113840))

(assert (=> start!133988 tp_is_empty!38953))

(assert (=> start!133988 true))

(declare-fun array_inv!39131 (array!104565) Bool)

(assert (=> start!133988 (array_inv!39131 _keys!637)))

(declare-fun e!872807 () Bool)

(declare-fun array_inv!39132 (array!104567) Bool)

(assert (=> start!133988 (and (array_inv!39132 _values!487) e!872807)))

(declare-fun b!1565860 () Bool)

(declare-fun res!1070461 () Bool)

(assert (=> b!1565860 (=> (not res!1070461) (not e!872805))))

(declare-datatypes ((List!36787 0))(
  ( (Nil!36784) (Cons!36783 (h!38230 (_ BitVec 64)) (t!51687 List!36787)) )
))
(declare-fun arrayNoDuplicates!0 (array!104565 (_ BitVec 32) List!36787) Bool)

(assert (=> b!1565860 (= res!1070461 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36784))))

(declare-fun b!1565861 () Bool)

(declare-fun e!872803 () Bool)

(assert (=> b!1565861 (= e!872807 (and e!872803 mapRes!59821))))

(declare-fun condMapEmpty!59821 () Bool)

(declare-fun mapDefault!59821 () ValueCell!18446)

