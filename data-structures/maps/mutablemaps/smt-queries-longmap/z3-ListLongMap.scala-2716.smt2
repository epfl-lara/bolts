; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40124 () Bool)

(assert start!40124)

(declare-fun b_free!10383 () Bool)

(declare-fun b_next!10383 () Bool)

(assert (=> start!40124 (= b_free!10383 (not b_next!10383))))

(declare-fun tp!36678 () Bool)

(declare-fun b_and!18369 () Bool)

(assert (=> start!40124 (= tp!36678 b_and!18369)))

(declare-fun b!438353 () Bool)

(declare-fun res!258917 () Bool)

(declare-fun e!258562 () Bool)

(assert (=> b!438353 (=> (not res!258917) (not e!258562))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!438353 (= res!258917 (bvsle from!863 i!563))))

(declare-fun b!438354 () Bool)

(declare-fun e!258559 () Bool)

(assert (=> b!438354 (= e!258559 (not true))))

(declare-datatypes ((V!16485 0))(
  ( (V!16486 (val!5812 Int)) )
))
(declare-datatypes ((ValueCell!5424 0))(
  ( (ValueCellFull!5424 (v!8055 V!16485)) (EmptyCell!5424) )
))
(declare-datatypes ((array!26863 0))(
  ( (array!26864 (arr!12878 (Array (_ BitVec 32) ValueCell!5424)) (size!13230 (_ BitVec 32))) )
))
(declare-fun lt!201954 () array!26863)

(declare-fun minValue!515 () V!16485)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun _values!549 () array!26863)

(declare-fun zeroValue!515 () V!16485)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!26865 0))(
  ( (array!26866 (arr!12879 (Array (_ BitVec 32) (_ BitVec 64))) (size!13231 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26865)

(declare-fun lt!201957 () array!26865)

(declare-fun v!412 () V!16485)

(declare-datatypes ((tuple2!7638 0))(
  ( (tuple2!7639 (_1!3829 (_ BitVec 64)) (_2!3829 V!16485)) )
))
(declare-datatypes ((List!7681 0))(
  ( (Nil!7678) (Cons!7677 (h!8533 tuple2!7638) (t!13445 List!7681)) )
))
(declare-datatypes ((ListLongMap!6565 0))(
  ( (ListLongMap!6566 (toList!3298 List!7681)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1480 (array!26865 array!26863 (_ BitVec 32) (_ BitVec 32) V!16485 V!16485 (_ BitVec 32) Int) ListLongMap!6565)

(declare-fun +!1439 (ListLongMap!6565 tuple2!7638) ListLongMap!6565)

(assert (=> b!438354 (= (getCurrentListMapNoExtraKeys!1480 lt!201957 lt!201954 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1439 (getCurrentListMapNoExtraKeys!1480 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7639 k0!794 v!412)))))

(declare-datatypes ((Unit!12993 0))(
  ( (Unit!12994) )
))
(declare-fun lt!201953 () Unit!12993)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!617 (array!26865 array!26863 (_ BitVec 32) (_ BitVec 32) V!16485 V!16485 (_ BitVec 32) (_ BitVec 64) V!16485 (_ BitVec 32) Int) Unit!12993)

(assert (=> b!438354 (= lt!201953 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!617 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!438355 () Bool)

(declare-fun e!258558 () Bool)

(declare-fun tp_is_empty!11535 () Bool)

(assert (=> b!438355 (= e!258558 tp_is_empty!11535)))

(declare-fun b!438356 () Bool)

(declare-fun res!258918 () Bool)

(declare-fun e!258561 () Bool)

(assert (=> b!438356 (=> (not res!258918) (not e!258561))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!438356 (= res!258918 (validKeyInArray!0 k0!794))))

(declare-fun res!258923 () Bool)

(assert (=> start!40124 (=> (not res!258923) (not e!258561))))

(assert (=> start!40124 (= res!258923 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13231 _keys!709))))))

(assert (=> start!40124 e!258561))

(assert (=> start!40124 tp_is_empty!11535))

(assert (=> start!40124 tp!36678))

(assert (=> start!40124 true))

(declare-fun e!258556 () Bool)

(declare-fun array_inv!9348 (array!26863) Bool)

(assert (=> start!40124 (and (array_inv!9348 _values!549) e!258556)))

(declare-fun array_inv!9349 (array!26865) Bool)

(assert (=> start!40124 (array_inv!9349 _keys!709)))

(declare-fun b!438357 () Bool)

(declare-fun res!258919 () Bool)

(assert (=> b!438357 (=> (not res!258919) (not e!258561))))

(assert (=> b!438357 (= res!258919 (or (= (select (arr!12879 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12879 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!438358 () Bool)

(declare-fun res!258926 () Bool)

(assert (=> b!438358 (=> (not res!258926) (not e!258561))))

(assert (=> b!438358 (= res!258926 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13231 _keys!709))))))

(declare-fun b!438359 () Bool)

(declare-fun res!258925 () Bool)

(assert (=> b!438359 (=> (not res!258925) (not e!258561))))

(assert (=> b!438359 (= res!258925 (and (= (size!13230 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13231 _keys!709) (size!13230 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!438360 () Bool)

(declare-fun res!258921 () Bool)

(assert (=> b!438360 (=> (not res!258921) (not e!258561))))

(declare-fun arrayContainsKey!0 (array!26865 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!438360 (= res!258921 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!18924 () Bool)

(declare-fun mapRes!18924 () Bool)

(assert (=> mapIsEmpty!18924 mapRes!18924))

(declare-fun b!438361 () Bool)

(declare-fun res!258916 () Bool)

(assert (=> b!438361 (=> (not res!258916) (not e!258561))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!438361 (= res!258916 (validMask!0 mask!1025))))

(declare-fun b!438362 () Bool)

(assert (=> b!438362 (= e!258562 e!258559)))

(declare-fun res!258915 () Bool)

(assert (=> b!438362 (=> (not res!258915) (not e!258559))))

(assert (=> b!438362 (= res!258915 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!201956 () ListLongMap!6565)

(assert (=> b!438362 (= lt!201956 (getCurrentListMapNoExtraKeys!1480 lt!201957 lt!201954 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!438362 (= lt!201954 (array!26864 (store (arr!12878 _values!549) i!563 (ValueCellFull!5424 v!412)) (size!13230 _values!549)))))

(declare-fun lt!201955 () ListLongMap!6565)

(assert (=> b!438362 (= lt!201955 (getCurrentListMapNoExtraKeys!1480 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!438363 () Bool)

(declare-fun res!258920 () Bool)

(assert (=> b!438363 (=> (not res!258920) (not e!258561))))

(declare-datatypes ((List!7682 0))(
  ( (Nil!7679) (Cons!7678 (h!8534 (_ BitVec 64)) (t!13446 List!7682)) )
))
(declare-fun arrayNoDuplicates!0 (array!26865 (_ BitVec 32) List!7682) Bool)

(assert (=> b!438363 (= res!258920 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7679))))

(declare-fun mapNonEmpty!18924 () Bool)

(declare-fun tp!36677 () Bool)

(assert (=> mapNonEmpty!18924 (= mapRes!18924 (and tp!36677 e!258558))))

(declare-fun mapValue!18924 () ValueCell!5424)

(declare-fun mapKey!18924 () (_ BitVec 32))

(declare-fun mapRest!18924 () (Array (_ BitVec 32) ValueCell!5424))

(assert (=> mapNonEmpty!18924 (= (arr!12878 _values!549) (store mapRest!18924 mapKey!18924 mapValue!18924))))

(declare-fun b!438364 () Bool)

(declare-fun e!258560 () Bool)

(assert (=> b!438364 (= e!258556 (and e!258560 mapRes!18924))))

(declare-fun condMapEmpty!18924 () Bool)

(declare-fun mapDefault!18924 () ValueCell!5424)

(assert (=> b!438364 (= condMapEmpty!18924 (= (arr!12878 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5424)) mapDefault!18924)))))

(declare-fun b!438365 () Bool)

(assert (=> b!438365 (= e!258561 e!258562)))

(declare-fun res!258922 () Bool)

(assert (=> b!438365 (=> (not res!258922) (not e!258562))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26865 (_ BitVec 32)) Bool)

(assert (=> b!438365 (= res!258922 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!201957 mask!1025))))

(assert (=> b!438365 (= lt!201957 (array!26866 (store (arr!12879 _keys!709) i!563 k0!794) (size!13231 _keys!709)))))

(declare-fun b!438366 () Bool)

(assert (=> b!438366 (= e!258560 tp_is_empty!11535)))

(declare-fun b!438367 () Bool)

(declare-fun res!258927 () Bool)

(assert (=> b!438367 (=> (not res!258927) (not e!258561))))

(assert (=> b!438367 (= res!258927 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!438368 () Bool)

(declare-fun res!258924 () Bool)

(assert (=> b!438368 (=> (not res!258924) (not e!258562))))

(assert (=> b!438368 (= res!258924 (arrayNoDuplicates!0 lt!201957 #b00000000000000000000000000000000 Nil!7679))))

(assert (= (and start!40124 res!258923) b!438361))

(assert (= (and b!438361 res!258916) b!438359))

(assert (= (and b!438359 res!258925) b!438367))

(assert (= (and b!438367 res!258927) b!438363))

(assert (= (and b!438363 res!258920) b!438358))

(assert (= (and b!438358 res!258926) b!438356))

(assert (= (and b!438356 res!258918) b!438357))

(assert (= (and b!438357 res!258919) b!438360))

(assert (= (and b!438360 res!258921) b!438365))

(assert (= (and b!438365 res!258922) b!438368))

(assert (= (and b!438368 res!258924) b!438353))

(assert (= (and b!438353 res!258917) b!438362))

(assert (= (and b!438362 res!258915) b!438354))

(assert (= (and b!438364 condMapEmpty!18924) mapIsEmpty!18924))

(assert (= (and b!438364 (not condMapEmpty!18924)) mapNonEmpty!18924))

(get-info :version)

(assert (= (and mapNonEmpty!18924 ((_ is ValueCellFull!5424) mapValue!18924)) b!438355))

(assert (= (and b!438364 ((_ is ValueCellFull!5424) mapDefault!18924)) b!438366))

(assert (= start!40124 b!438364))

(declare-fun m!425829 () Bool)

(assert (=> mapNonEmpty!18924 m!425829))

(declare-fun m!425831 () Bool)

(assert (=> b!438356 m!425831))

(declare-fun m!425833 () Bool)

(assert (=> start!40124 m!425833))

(declare-fun m!425835 () Bool)

(assert (=> start!40124 m!425835))

(declare-fun m!425837 () Bool)

(assert (=> b!438360 m!425837))

(declare-fun m!425839 () Bool)

(assert (=> b!438361 m!425839))

(declare-fun m!425841 () Bool)

(assert (=> b!438365 m!425841))

(declare-fun m!425843 () Bool)

(assert (=> b!438365 m!425843))

(declare-fun m!425845 () Bool)

(assert (=> b!438362 m!425845))

(declare-fun m!425847 () Bool)

(assert (=> b!438362 m!425847))

(declare-fun m!425849 () Bool)

(assert (=> b!438362 m!425849))

(declare-fun m!425851 () Bool)

(assert (=> b!438357 m!425851))

(declare-fun m!425853 () Bool)

(assert (=> b!438368 m!425853))

(declare-fun m!425855 () Bool)

(assert (=> b!438367 m!425855))

(declare-fun m!425857 () Bool)

(assert (=> b!438354 m!425857))

(declare-fun m!425859 () Bool)

(assert (=> b!438354 m!425859))

(assert (=> b!438354 m!425859))

(declare-fun m!425861 () Bool)

(assert (=> b!438354 m!425861))

(declare-fun m!425863 () Bool)

(assert (=> b!438354 m!425863))

(declare-fun m!425865 () Bool)

(assert (=> b!438363 m!425865))

(check-sat (not mapNonEmpty!18924) (not b!438368) (not b!438365) (not b!438361) (not b!438362) (not b!438356) tp_is_empty!11535 (not b!438354) (not b!438363) (not start!40124) b_and!18369 (not b!438360) (not b_next!10383) (not b!438367))
(check-sat b_and!18369 (not b_next!10383))
