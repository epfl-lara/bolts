; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39936 () Bool)

(assert start!39936)

(declare-fun b_free!10195 () Bool)

(declare-fun b_next!10195 () Bool)

(assert (=> start!39936 (= b_free!10195 (not b_next!10195))))

(declare-fun tp!36113 () Bool)

(declare-fun b_and!18067 () Bool)

(assert (=> start!39936 (= tp!36113 b_and!18067)))

(declare-fun res!254917 () Bool)

(declare-fun e!256083 () Bool)

(assert (=> start!39936 (=> (not res!254917) (not e!256083))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!26503 0))(
  ( (array!26504 (arr!12698 (Array (_ BitVec 32) (_ BitVec 64))) (size!13050 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26503)

(assert (=> start!39936 (= res!254917 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13050 _keys!709))))))

(assert (=> start!39936 e!256083))

(declare-fun tp_is_empty!11347 () Bool)

(assert (=> start!39936 tp_is_empty!11347))

(assert (=> start!39936 tp!36113))

(assert (=> start!39936 true))

(declare-datatypes ((V!16235 0))(
  ( (V!16236 (val!5718 Int)) )
))
(declare-datatypes ((ValueCell!5330 0))(
  ( (ValueCellFull!5330 (v!7961 V!16235)) (EmptyCell!5330) )
))
(declare-datatypes ((array!26505 0))(
  ( (array!26506 (arr!12699 (Array (_ BitVec 32) ValueCell!5330)) (size!13051 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26505)

(declare-fun e!256084 () Bool)

(declare-fun array_inv!9232 (array!26505) Bool)

(assert (=> start!39936 (and (array_inv!9232 _values!549) e!256084)))

(declare-fun array_inv!9233 (array!26503) Bool)

(assert (=> start!39936 (array_inv!9233 _keys!709)))

(declare-fun b!433051 () Bool)

(declare-datatypes ((Unit!12771 0))(
  ( (Unit!12772) )
))
(declare-fun e!256078 () Unit!12771)

(declare-fun Unit!12773 () Unit!12771)

(assert (=> b!433051 (= e!256078 Unit!12773)))

(declare-fun lt!198858 () Unit!12771)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26503 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12771)

(assert (=> b!433051 (= lt!198858 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!433051 false))

(declare-fun b!433052 () Bool)

(declare-fun res!254921 () Bool)

(assert (=> b!433052 (=> (not res!254921) (not e!256083))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!433052 (= res!254921 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13050 _keys!709))))))

(declare-fun b!433053 () Bool)

(declare-fun e!256079 () Bool)

(declare-fun e!256082 () Bool)

(assert (=> b!433053 (= e!256079 e!256082)))

(declare-fun res!254915 () Bool)

(assert (=> b!433053 (=> (not res!254915) (not e!256082))))

(assert (=> b!433053 (= res!254915 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!198862 () array!26503)

(declare-fun minValue!515 () V!16235)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16235)

(declare-datatypes ((tuple2!7488 0))(
  ( (tuple2!7489 (_1!3754 (_ BitVec 64)) (_2!3754 V!16235)) )
))
(declare-datatypes ((List!7537 0))(
  ( (Nil!7534) (Cons!7533 (h!8389 tuple2!7488) (t!13189 List!7537)) )
))
(declare-datatypes ((ListLongMap!6415 0))(
  ( (ListLongMap!6416 (toList!3223 List!7537)) )
))
(declare-fun lt!198854 () ListLongMap!6415)

(declare-fun lt!198856 () array!26505)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1413 (array!26503 array!26505 (_ BitVec 32) (_ BitVec 32) V!16235 V!16235 (_ BitVec 32) Int) ListLongMap!6415)

(assert (=> b!433053 (= lt!198854 (getCurrentListMapNoExtraKeys!1413 lt!198862 lt!198856 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16235)

(assert (=> b!433053 (= lt!198856 (array!26506 (store (arr!12699 _values!549) i!563 (ValueCellFull!5330 v!412)) (size!13051 _values!549)))))

(declare-fun lt!198865 () ListLongMap!6415)

(assert (=> b!433053 (= lt!198865 (getCurrentListMapNoExtraKeys!1413 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!433054 () Bool)

(declare-fun e!256076 () Bool)

(assert (=> b!433054 (= e!256076 tp_is_empty!11347)))

(declare-fun b!433055 () Bool)

(declare-fun res!254916 () Bool)

(assert (=> b!433055 (=> (not res!254916) (not e!256083))))

(assert (=> b!433055 (= res!254916 (or (= (select (arr!12698 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12698 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!433056 () Bool)

(declare-fun res!254919 () Bool)

(assert (=> b!433056 (=> (not res!254919) (not e!256083))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26503 (_ BitVec 32)) Bool)

(assert (=> b!433056 (= res!254919 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!433057 () Bool)

(declare-fun Unit!12774 () Unit!12771)

(assert (=> b!433057 (= e!256078 Unit!12774)))

(declare-fun b!433058 () Bool)

(assert (=> b!433058 (= e!256083 e!256079)))

(declare-fun res!254912 () Bool)

(assert (=> b!433058 (=> (not res!254912) (not e!256079))))

(assert (=> b!433058 (= res!254912 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!198862 mask!1025))))

(assert (=> b!433058 (= lt!198862 (array!26504 (store (arr!12698 _keys!709) i!563 k!794) (size!13050 _keys!709)))))

(declare-fun b!433059 () Bool)

(declare-fun e!256077 () Bool)

(declare-fun e!256075 () Bool)

(assert (=> b!433059 (= e!256077 e!256075)))

(declare-fun res!254924 () Bool)

(assert (=> b!433059 (=> res!254924 e!256075)))

(assert (=> b!433059 (= res!254924 (= k!794 (select (arr!12698 _keys!709) from!863)))))

(assert (=> b!433059 (not (= (select (arr!12698 _keys!709) from!863) k!794))))

(declare-fun lt!198861 () Unit!12771)

(assert (=> b!433059 (= lt!198861 e!256078)))

(declare-fun c!55553 () Bool)

(assert (=> b!433059 (= c!55553 (= (select (arr!12698 _keys!709) from!863) k!794))))

(declare-fun lt!198867 () ListLongMap!6415)

(assert (=> b!433059 (= lt!198854 lt!198867)))

(declare-fun lt!198855 () ListLongMap!6415)

(declare-fun lt!198860 () tuple2!7488)

(declare-fun +!1369 (ListLongMap!6415 tuple2!7488) ListLongMap!6415)

(assert (=> b!433059 (= lt!198867 (+!1369 lt!198855 lt!198860))))

(declare-fun lt!198853 () V!16235)

(assert (=> b!433059 (= lt!198860 (tuple2!7489 (select (arr!12698 _keys!709) from!863) lt!198853))))

(declare-fun get!6322 (ValueCell!5330 V!16235) V!16235)

(declare-fun dynLambda!803 (Int (_ BitVec 64)) V!16235)

(assert (=> b!433059 (= lt!198853 (get!6322 (select (arr!12699 _values!549) from!863) (dynLambda!803 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!433060 () Bool)

(declare-fun res!254918 () Bool)

(assert (=> b!433060 (=> (not res!254918) (not e!256083))))

(declare-fun arrayContainsKey!0 (array!26503 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!433060 (= res!254918 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!433061 () Bool)

(declare-fun res!254920 () Bool)

(assert (=> b!433061 (=> (not res!254920) (not e!256083))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!433061 (= res!254920 (validKeyInArray!0 k!794))))

(declare-fun b!433062 () Bool)

(assert (=> b!433062 (= e!256082 (not e!256077))))

(declare-fun res!254923 () Bool)

(assert (=> b!433062 (=> res!254923 e!256077)))

(assert (=> b!433062 (= res!254923 (not (validKeyInArray!0 (select (arr!12698 _keys!709) from!863))))))

(declare-fun lt!198866 () ListLongMap!6415)

(assert (=> b!433062 (= lt!198866 lt!198855)))

(declare-fun lt!198859 () ListLongMap!6415)

(declare-fun lt!198857 () tuple2!7488)

(assert (=> b!433062 (= lt!198855 (+!1369 lt!198859 lt!198857))))

(assert (=> b!433062 (= lt!198866 (getCurrentListMapNoExtraKeys!1413 lt!198862 lt!198856 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!433062 (= lt!198857 (tuple2!7489 k!794 v!412))))

(assert (=> b!433062 (= lt!198859 (getCurrentListMapNoExtraKeys!1413 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!198864 () Unit!12771)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!557 (array!26503 array!26505 (_ BitVec 32) (_ BitVec 32) V!16235 V!16235 (_ BitVec 32) (_ BitVec 64) V!16235 (_ BitVec 32) Int) Unit!12771)

(assert (=> b!433062 (= lt!198864 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!557 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!433063 () Bool)

(declare-fun e!256080 () Bool)

(assert (=> b!433063 (= e!256080 tp_is_empty!11347)))

(declare-fun b!433064 () Bool)

(declare-fun res!254911 () Bool)

(assert (=> b!433064 (=> (not res!254911) (not e!256083))))

(assert (=> b!433064 (= res!254911 (and (= (size!13051 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13050 _keys!709) (size!13051 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!18642 () Bool)

(declare-fun mapRes!18642 () Bool)

(assert (=> mapIsEmpty!18642 mapRes!18642))

(declare-fun b!433065 () Bool)

(declare-fun res!254914 () Bool)

(assert (=> b!433065 (=> (not res!254914) (not e!256083))))

(declare-datatypes ((List!7538 0))(
  ( (Nil!7535) (Cons!7534 (h!8390 (_ BitVec 64)) (t!13190 List!7538)) )
))
(declare-fun arrayNoDuplicates!0 (array!26503 (_ BitVec 32) List!7538) Bool)

(assert (=> b!433065 (= res!254914 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7535))))

(declare-fun b!433066 () Bool)

(declare-fun res!254913 () Bool)

(assert (=> b!433066 (=> (not res!254913) (not e!256079))))

(assert (=> b!433066 (= res!254913 (arrayNoDuplicates!0 lt!198862 #b00000000000000000000000000000000 Nil!7535))))

(declare-fun b!433067 () Bool)

(assert (=> b!433067 (= e!256075 true)))

(assert (=> b!433067 (= lt!198867 (+!1369 (+!1369 lt!198859 lt!198860) lt!198857))))

(declare-fun lt!198863 () Unit!12771)

(declare-fun addCommutativeForDiffKeys!379 (ListLongMap!6415 (_ BitVec 64) V!16235 (_ BitVec 64) V!16235) Unit!12771)

(assert (=> b!433067 (= lt!198863 (addCommutativeForDiffKeys!379 lt!198859 k!794 v!412 (select (arr!12698 _keys!709) from!863) lt!198853))))

(declare-fun mapNonEmpty!18642 () Bool)

(declare-fun tp!36114 () Bool)

(assert (=> mapNonEmpty!18642 (= mapRes!18642 (and tp!36114 e!256076))))

(declare-fun mapRest!18642 () (Array (_ BitVec 32) ValueCell!5330))

(declare-fun mapKey!18642 () (_ BitVec 32))

(declare-fun mapValue!18642 () ValueCell!5330)

(assert (=> mapNonEmpty!18642 (= (arr!12699 _values!549) (store mapRest!18642 mapKey!18642 mapValue!18642))))

(declare-fun b!433068 () Bool)

(assert (=> b!433068 (= e!256084 (and e!256080 mapRes!18642))))

(declare-fun condMapEmpty!18642 () Bool)

(declare-fun mapDefault!18642 () ValueCell!5330)

