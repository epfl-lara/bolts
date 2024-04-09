; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40148 () Bool)

(assert start!40148)

(declare-fun b_free!10407 () Bool)

(declare-fun b_next!10407 () Bool)

(assert (=> start!40148 (= b_free!10407 (not b_next!10407))))

(declare-fun tp!36750 () Bool)

(declare-fun b_and!18393 () Bool)

(assert (=> start!40148 (= tp!36750 b_and!18393)))

(declare-fun b!438929 () Bool)

(declare-fun res!259389 () Bool)

(declare-fun e!258811 () Bool)

(assert (=> b!438929 (=> (not res!259389) (not e!258811))))

(declare-datatypes ((array!26911 0))(
  ( (array!26912 (arr!12902 (Array (_ BitVec 32) (_ BitVec 64))) (size!13254 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26911)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26911 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!438929 (= res!259389 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun res!259393 () Bool)

(assert (=> start!40148 (=> (not res!259393) (not e!258811))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40148 (= res!259393 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13254 _keys!709))))))

(assert (=> start!40148 e!258811))

(declare-fun tp_is_empty!11559 () Bool)

(assert (=> start!40148 tp_is_empty!11559))

(assert (=> start!40148 tp!36750))

(assert (=> start!40148 true))

(declare-datatypes ((V!16517 0))(
  ( (V!16518 (val!5824 Int)) )
))
(declare-datatypes ((ValueCell!5436 0))(
  ( (ValueCellFull!5436 (v!8067 V!16517)) (EmptyCell!5436) )
))
(declare-datatypes ((array!26913 0))(
  ( (array!26914 (arr!12903 (Array (_ BitVec 32) ValueCell!5436)) (size!13255 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26913)

(declare-fun e!258810 () Bool)

(declare-fun array_inv!9362 (array!26913) Bool)

(assert (=> start!40148 (and (array_inv!9362 _values!549) e!258810)))

(declare-fun array_inv!9363 (array!26911) Bool)

(assert (=> start!40148 (array_inv!9363 _keys!709)))

(declare-fun b!438930 () Bool)

(declare-fun e!258808 () Bool)

(assert (=> b!438930 (= e!258808 tp_is_empty!11559)))

(declare-fun b!438931 () Bool)

(declare-fun e!258813 () Bool)

(assert (=> b!438931 (= e!258813 (not true))))

(declare-fun minValue!515 () V!16517)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!16517)

(declare-fun v!412 () V!16517)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!202137 () array!26913)

(declare-fun lt!202136 () array!26911)

(declare-datatypes ((tuple2!7656 0))(
  ( (tuple2!7657 (_1!3838 (_ BitVec 64)) (_2!3838 V!16517)) )
))
(declare-datatypes ((List!7699 0))(
  ( (Nil!7696) (Cons!7695 (h!8551 tuple2!7656) (t!13463 List!7699)) )
))
(declare-datatypes ((ListLongMap!6583 0))(
  ( (ListLongMap!6584 (toList!3307 List!7699)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1489 (array!26911 array!26913 (_ BitVec 32) (_ BitVec 32) V!16517 V!16517 (_ BitVec 32) Int) ListLongMap!6583)

(declare-fun +!1446 (ListLongMap!6583 tuple2!7656) ListLongMap!6583)

(assert (=> b!438931 (= (getCurrentListMapNoExtraKeys!1489 lt!202136 lt!202137 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1446 (getCurrentListMapNoExtraKeys!1489 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7657 k0!794 v!412)))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((Unit!13007 0))(
  ( (Unit!13008) )
))
(declare-fun lt!202135 () Unit!13007)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!624 (array!26911 array!26913 (_ BitVec 32) (_ BitVec 32) V!16517 V!16517 (_ BitVec 32) (_ BitVec 64) V!16517 (_ BitVec 32) Int) Unit!13007)

(assert (=> b!438931 (= lt!202135 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!624 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!438932 () Bool)

(declare-fun res!259386 () Bool)

(declare-fun e!258809 () Bool)

(assert (=> b!438932 (=> (not res!259386) (not e!258809))))

(assert (=> b!438932 (= res!259386 (bvsle from!863 i!563))))

(declare-fun b!438933 () Bool)

(declare-fun res!259383 () Bool)

(assert (=> b!438933 (=> (not res!259383) (not e!258811))))

(declare-datatypes ((List!7700 0))(
  ( (Nil!7697) (Cons!7696 (h!8552 (_ BitVec 64)) (t!13464 List!7700)) )
))
(declare-fun arrayNoDuplicates!0 (array!26911 (_ BitVec 32) List!7700) Bool)

(assert (=> b!438933 (= res!259383 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7697))))

(declare-fun b!438934 () Bool)

(assert (=> b!438934 (= e!258809 e!258813)))

(declare-fun res!259384 () Bool)

(assert (=> b!438934 (=> (not res!259384) (not e!258813))))

(assert (=> b!438934 (= res!259384 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!202134 () ListLongMap!6583)

(assert (=> b!438934 (= lt!202134 (getCurrentListMapNoExtraKeys!1489 lt!202136 lt!202137 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!438934 (= lt!202137 (array!26914 (store (arr!12903 _values!549) i!563 (ValueCellFull!5436 v!412)) (size!13255 _values!549)))))

(declare-fun lt!202133 () ListLongMap!6583)

(assert (=> b!438934 (= lt!202133 (getCurrentListMapNoExtraKeys!1489 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!438935 () Bool)

(declare-fun e!258814 () Bool)

(declare-fun mapRes!18960 () Bool)

(assert (=> b!438935 (= e!258810 (and e!258814 mapRes!18960))))

(declare-fun condMapEmpty!18960 () Bool)

(declare-fun mapDefault!18960 () ValueCell!5436)

(assert (=> b!438935 (= condMapEmpty!18960 (= (arr!12903 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5436)) mapDefault!18960)))))

(declare-fun b!438936 () Bool)

(declare-fun res!259387 () Bool)

(assert (=> b!438936 (=> (not res!259387) (not e!258811))))

(assert (=> b!438936 (= res!259387 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13254 _keys!709))))))

(declare-fun b!438937 () Bool)

(declare-fun res!259392 () Bool)

(assert (=> b!438937 (=> (not res!259392) (not e!258811))))

(assert (=> b!438937 (= res!259392 (or (= (select (arr!12902 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12902 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!438938 () Bool)

(assert (=> b!438938 (= e!258811 e!258809)))

(declare-fun res!259388 () Bool)

(assert (=> b!438938 (=> (not res!259388) (not e!258809))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26911 (_ BitVec 32)) Bool)

(assert (=> b!438938 (= res!259388 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202136 mask!1025))))

(assert (=> b!438938 (= lt!202136 (array!26912 (store (arr!12902 _keys!709) i!563 k0!794) (size!13254 _keys!709)))))

(declare-fun b!438939 () Bool)

(declare-fun res!259394 () Bool)

(assert (=> b!438939 (=> (not res!259394) (not e!258811))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!438939 (= res!259394 (validKeyInArray!0 k0!794))))

(declare-fun mapIsEmpty!18960 () Bool)

(assert (=> mapIsEmpty!18960 mapRes!18960))

(declare-fun b!438940 () Bool)

(assert (=> b!438940 (= e!258814 tp_is_empty!11559)))

(declare-fun b!438941 () Bool)

(declare-fun res!259385 () Bool)

(assert (=> b!438941 (=> (not res!259385) (not e!258811))))

(assert (=> b!438941 (= res!259385 (and (= (size!13255 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13254 _keys!709) (size!13255 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!18960 () Bool)

(declare-fun tp!36749 () Bool)

(assert (=> mapNonEmpty!18960 (= mapRes!18960 (and tp!36749 e!258808))))

(declare-fun mapKey!18960 () (_ BitVec 32))

(declare-fun mapRest!18960 () (Array (_ BitVec 32) ValueCell!5436))

(declare-fun mapValue!18960 () ValueCell!5436)

(assert (=> mapNonEmpty!18960 (= (arr!12903 _values!549) (store mapRest!18960 mapKey!18960 mapValue!18960))))

(declare-fun b!438942 () Bool)

(declare-fun res!259390 () Bool)

(assert (=> b!438942 (=> (not res!259390) (not e!258811))))

(assert (=> b!438942 (= res!259390 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!438943 () Bool)

(declare-fun res!259395 () Bool)

(assert (=> b!438943 (=> (not res!259395) (not e!258809))))

(assert (=> b!438943 (= res!259395 (arrayNoDuplicates!0 lt!202136 #b00000000000000000000000000000000 Nil!7697))))

(declare-fun b!438944 () Bool)

(declare-fun res!259391 () Bool)

(assert (=> b!438944 (=> (not res!259391) (not e!258811))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!438944 (= res!259391 (validMask!0 mask!1025))))

(assert (= (and start!40148 res!259393) b!438944))

(assert (= (and b!438944 res!259391) b!438941))

(assert (= (and b!438941 res!259385) b!438942))

(assert (= (and b!438942 res!259390) b!438933))

(assert (= (and b!438933 res!259383) b!438936))

(assert (= (and b!438936 res!259387) b!438939))

(assert (= (and b!438939 res!259394) b!438937))

(assert (= (and b!438937 res!259392) b!438929))

(assert (= (and b!438929 res!259389) b!438938))

(assert (= (and b!438938 res!259388) b!438943))

(assert (= (and b!438943 res!259395) b!438932))

(assert (= (and b!438932 res!259386) b!438934))

(assert (= (and b!438934 res!259384) b!438931))

(assert (= (and b!438935 condMapEmpty!18960) mapIsEmpty!18960))

(assert (= (and b!438935 (not condMapEmpty!18960)) mapNonEmpty!18960))

(get-info :version)

(assert (= (and mapNonEmpty!18960 ((_ is ValueCellFull!5436) mapValue!18960)) b!438930))

(assert (= (and b!438935 ((_ is ValueCellFull!5436) mapDefault!18960)) b!438940))

(assert (= start!40148 b!438935))

(declare-fun m!426285 () Bool)

(assert (=> b!438931 m!426285))

(declare-fun m!426287 () Bool)

(assert (=> b!438931 m!426287))

(assert (=> b!438931 m!426287))

(declare-fun m!426289 () Bool)

(assert (=> b!438931 m!426289))

(declare-fun m!426291 () Bool)

(assert (=> b!438931 m!426291))

(declare-fun m!426293 () Bool)

(assert (=> b!438934 m!426293))

(declare-fun m!426295 () Bool)

(assert (=> b!438934 m!426295))

(declare-fun m!426297 () Bool)

(assert (=> b!438934 m!426297))

(declare-fun m!426299 () Bool)

(assert (=> b!438933 m!426299))

(declare-fun m!426301 () Bool)

(assert (=> b!438943 m!426301))

(declare-fun m!426303 () Bool)

(assert (=> b!438944 m!426303))

(declare-fun m!426305 () Bool)

(assert (=> start!40148 m!426305))

(declare-fun m!426307 () Bool)

(assert (=> start!40148 m!426307))

(declare-fun m!426309 () Bool)

(assert (=> b!438937 m!426309))

(declare-fun m!426311 () Bool)

(assert (=> b!438939 m!426311))

(declare-fun m!426313 () Bool)

(assert (=> b!438938 m!426313))

(declare-fun m!426315 () Bool)

(assert (=> b!438938 m!426315))

(declare-fun m!426317 () Bool)

(assert (=> b!438929 m!426317))

(declare-fun m!426319 () Bool)

(assert (=> mapNonEmpty!18960 m!426319))

(declare-fun m!426321 () Bool)

(assert (=> b!438942 m!426321))

(check-sat (not b!438934) (not b!438929) (not b!438938) (not b_next!10407) (not start!40148) (not b!438933) (not b!438944) (not mapNonEmpty!18960) (not b!438931) (not b!438943) (not b!438942) (not b!438939) tp_is_empty!11559 b_and!18393)
(check-sat b_and!18393 (not b_next!10407))
