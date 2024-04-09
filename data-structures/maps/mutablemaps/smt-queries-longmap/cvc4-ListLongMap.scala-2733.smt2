; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40228 () Bool)

(assert start!40228)

(declare-fun b_free!10487 () Bool)

(declare-fun b_next!10487 () Bool)

(assert (=> start!40228 (= b_free!10487 (not b_next!10487))))

(declare-fun tp!36990 () Bool)

(declare-fun b_and!18473 () Bool)

(assert (=> start!40228 (= tp!36990 b_and!18473)))

(declare-fun b!440849 () Bool)

(declare-fun e!259653 () Bool)

(assert (=> b!440849 (= e!259653 (not true))))

(declare-datatypes ((V!16623 0))(
  ( (V!16624 (val!5864 Int)) )
))
(declare-fun minValue!515 () V!16623)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5476 0))(
  ( (ValueCellFull!5476 (v!8107 V!16623)) (EmptyCell!5476) )
))
(declare-datatypes ((array!27065 0))(
  ( (array!27066 (arr!12979 (Array (_ BitVec 32) ValueCell!5476)) (size!13331 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27065)

(declare-fun zeroValue!515 () V!16623)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lt!202734 () array!27065)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!27067 0))(
  ( (array!27068 (arr!12980 (Array (_ BitVec 32) (_ BitVec 64))) (size!13332 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27067)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!202733 () array!27067)

(declare-fun v!412 () V!16623)

(declare-datatypes ((tuple2!7720 0))(
  ( (tuple2!7721 (_1!3870 (_ BitVec 64)) (_2!3870 V!16623)) )
))
(declare-datatypes ((List!7762 0))(
  ( (Nil!7759) (Cons!7758 (h!8614 tuple2!7720) (t!13526 List!7762)) )
))
(declare-datatypes ((ListLongMap!6647 0))(
  ( (ListLongMap!6648 (toList!3339 List!7762)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1521 (array!27067 array!27065 (_ BitVec 32) (_ BitVec 32) V!16623 V!16623 (_ BitVec 32) Int) ListLongMap!6647)

(declare-fun +!1475 (ListLongMap!6647 tuple2!7720) ListLongMap!6647)

(assert (=> b!440849 (= (getCurrentListMapNoExtraKeys!1521 lt!202733 lt!202734 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1475 (getCurrentListMapNoExtraKeys!1521 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7721 k!794 v!412)))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((Unit!13065 0))(
  ( (Unit!13066) )
))
(declare-fun lt!202735 () Unit!13065)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!653 (array!27067 array!27065 (_ BitVec 32) (_ BitVec 32) V!16623 V!16623 (_ BitVec 32) (_ BitVec 64) V!16623 (_ BitVec 32) Int) Unit!13065)

(assert (=> b!440849 (= lt!202735 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!653 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!19080 () Bool)

(declare-fun mapRes!19080 () Bool)

(assert (=> mapIsEmpty!19080 mapRes!19080))

(declare-fun b!440850 () Bool)

(declare-fun res!260954 () Bool)

(declare-fun e!259651 () Bool)

(assert (=> b!440850 (=> (not res!260954) (not e!259651))))

(declare-fun arrayContainsKey!0 (array!27067 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!440850 (= res!260954 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!440851 () Bool)

(declare-fun res!260951 () Bool)

(assert (=> b!440851 (=> (not res!260951) (not e!259651))))

(assert (=> b!440851 (= res!260951 (and (= (size!13331 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13332 _keys!709) (size!13331 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!440852 () Bool)

(declare-fun e!259649 () Bool)

(assert (=> b!440852 (= e!259649 e!259653)))

(declare-fun res!260948 () Bool)

(assert (=> b!440852 (=> (not res!260948) (not e!259653))))

(assert (=> b!440852 (= res!260948 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!202737 () ListLongMap!6647)

(assert (=> b!440852 (= lt!202737 (getCurrentListMapNoExtraKeys!1521 lt!202733 lt!202734 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!440852 (= lt!202734 (array!27066 (store (arr!12979 _values!549) i!563 (ValueCellFull!5476 v!412)) (size!13331 _values!549)))))

(declare-fun lt!202736 () ListLongMap!6647)

(assert (=> b!440852 (= lt!202736 (getCurrentListMapNoExtraKeys!1521 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!440853 () Bool)

(declare-fun res!260943 () Bool)

(assert (=> b!440853 (=> (not res!260943) (not e!259651))))

(assert (=> b!440853 (= res!260943 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13332 _keys!709))))))

(declare-fun b!440854 () Bool)

(declare-fun res!260944 () Bool)

(assert (=> b!440854 (=> (not res!260944) (not e!259649))))

(assert (=> b!440854 (= res!260944 (bvsle from!863 i!563))))

(declare-fun b!440855 () Bool)

(declare-fun res!260955 () Bool)

(assert (=> b!440855 (=> (not res!260955) (not e!259651))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!440855 (= res!260955 (validKeyInArray!0 k!794))))

(declare-fun b!440856 () Bool)

(declare-fun res!260952 () Bool)

(assert (=> b!440856 (=> (not res!260952) (not e!259649))))

(declare-datatypes ((List!7763 0))(
  ( (Nil!7760) (Cons!7759 (h!8615 (_ BitVec 64)) (t!13527 List!7763)) )
))
(declare-fun arrayNoDuplicates!0 (array!27067 (_ BitVec 32) List!7763) Bool)

(assert (=> b!440856 (= res!260952 (arrayNoDuplicates!0 lt!202733 #b00000000000000000000000000000000 Nil!7760))))

(declare-fun b!440857 () Bool)

(assert (=> b!440857 (= e!259651 e!259649)))

(declare-fun res!260945 () Bool)

(assert (=> b!440857 (=> (not res!260945) (not e!259649))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27067 (_ BitVec 32)) Bool)

(assert (=> b!440857 (= res!260945 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202733 mask!1025))))

(assert (=> b!440857 (= lt!202733 (array!27068 (store (arr!12980 _keys!709) i!563 k!794) (size!13332 _keys!709)))))

(declare-fun res!260950 () Bool)

(assert (=> start!40228 (=> (not res!260950) (not e!259651))))

(assert (=> start!40228 (= res!260950 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13332 _keys!709))))))

(assert (=> start!40228 e!259651))

(declare-fun tp_is_empty!11639 () Bool)

(assert (=> start!40228 tp_is_empty!11639))

(assert (=> start!40228 tp!36990))

(assert (=> start!40228 true))

(declare-fun e!259652 () Bool)

(declare-fun array_inv!9410 (array!27065) Bool)

(assert (=> start!40228 (and (array_inv!9410 _values!549) e!259652)))

(declare-fun array_inv!9411 (array!27067) Bool)

(assert (=> start!40228 (array_inv!9411 _keys!709)))

(declare-fun b!440858 () Bool)

(declare-fun e!259650 () Bool)

(assert (=> b!440858 (= e!259652 (and e!259650 mapRes!19080))))

(declare-fun condMapEmpty!19080 () Bool)

(declare-fun mapDefault!19080 () ValueCell!5476)

