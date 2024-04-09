; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39746 () Bool)

(assert start!39746)

(declare-fun b_free!10005 () Bool)

(declare-fun b_next!10005 () Bool)

(assert (=> start!39746 (= b_free!10005 (not b_next!10005))))

(declare-fun tp!35544 () Bool)

(declare-fun b_and!17687 () Bool)

(assert (=> start!39746 (= tp!35544 b_and!17687)))

(declare-fun b!427371 () Bool)

(declare-fun res!250776 () Bool)

(declare-fun e!253396 () Bool)

(assert (=> b!427371 (=> (not res!250776) (not e!253396))))

(declare-datatypes ((array!26133 0))(
  ( (array!26134 (arr!12513 (Array (_ BitVec 32) (_ BitVec 64))) (size!12865 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26133)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26133 (_ BitVec 32)) Bool)

(assert (=> b!427371 (= res!250776 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!427372 () Bool)

(declare-fun e!253401 () Bool)

(declare-fun e!253402 () Bool)

(assert (=> b!427372 (= e!253401 e!253402)))

(declare-fun res!250773 () Bool)

(assert (=> b!427372 (=> (not res!250773) (not e!253402))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!427372 (= res!250773 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!15981 0))(
  ( (V!15982 (val!5623 Int)) )
))
(declare-datatypes ((ValueCell!5235 0))(
  ( (ValueCellFull!5235 (v!7866 V!15981)) (EmptyCell!5235) )
))
(declare-datatypes ((array!26135 0))(
  ( (array!26136 (arr!12514 (Array (_ BitVec 32) ValueCell!5235)) (size!12866 (_ BitVec 32))) )
))
(declare-fun lt!195311 () array!26135)

(declare-fun minValue!515 () V!15981)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!7330 0))(
  ( (tuple2!7331 (_1!3675 (_ BitVec 64)) (_2!3675 V!15981)) )
))
(declare-datatypes ((List!7379 0))(
  ( (Nil!7376) (Cons!7375 (h!8231 tuple2!7330) (t!12841 List!7379)) )
))
(declare-datatypes ((ListLongMap!6257 0))(
  ( (ListLongMap!6258 (toList!3144 List!7379)) )
))
(declare-fun lt!195308 () ListLongMap!6257)

(declare-fun zeroValue!515 () V!15981)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!195312 () array!26133)

(declare-fun getCurrentListMapNoExtraKeys!1345 (array!26133 array!26135 (_ BitVec 32) (_ BitVec 32) V!15981 V!15981 (_ BitVec 32) Int) ListLongMap!6257)

(assert (=> b!427372 (= lt!195308 (getCurrentListMapNoExtraKeys!1345 lt!195312 lt!195311 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!26135)

(declare-fun v!412 () V!15981)

(assert (=> b!427372 (= lt!195311 (array!26136 (store (arr!12514 _values!549) i!563 (ValueCellFull!5235 v!412)) (size!12866 _values!549)))))

(declare-fun lt!195309 () ListLongMap!6257)

(assert (=> b!427372 (= lt!195309 (getCurrentListMapNoExtraKeys!1345 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!427373 () Bool)

(declare-fun e!253395 () Bool)

(declare-fun e!253398 () Bool)

(declare-fun mapRes!18357 () Bool)

(assert (=> b!427373 (= e!253395 (and e!253398 mapRes!18357))))

(declare-fun condMapEmpty!18357 () Bool)

(declare-fun mapDefault!18357 () ValueCell!5235)

(assert (=> b!427373 (= condMapEmpty!18357 (= (arr!12514 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5235)) mapDefault!18357)))))

(declare-fun b!427374 () Bool)

(declare-fun res!250766 () Bool)

(assert (=> b!427374 (=> (not res!250766) (not e!253396))))

(assert (=> b!427374 (= res!250766 (or (= (select (arr!12513 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12513 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!427375 () Bool)

(declare-fun res!250774 () Bool)

(assert (=> b!427375 (=> (not res!250774) (not e!253396))))

(assert (=> b!427375 (= res!250774 (and (= (size!12866 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12865 _keys!709) (size!12866 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!18357 () Bool)

(assert (=> mapIsEmpty!18357 mapRes!18357))

(declare-fun b!427376 () Bool)

(declare-fun e!253400 () Bool)

(assert (=> b!427376 (= e!253402 (not e!253400))))

(declare-fun res!250768 () Bool)

(assert (=> b!427376 (=> res!250768 e!253400)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!427376 (= res!250768 (not (validKeyInArray!0 (select (arr!12513 _keys!709) from!863))))))

(declare-fun lt!195314 () ListLongMap!6257)

(declare-fun lt!195313 () ListLongMap!6257)

(assert (=> b!427376 (= lt!195314 lt!195313)))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun lt!195310 () ListLongMap!6257)

(declare-fun +!1297 (ListLongMap!6257 tuple2!7330) ListLongMap!6257)

(assert (=> b!427376 (= lt!195313 (+!1297 lt!195310 (tuple2!7331 k0!794 v!412)))))

(assert (=> b!427376 (= lt!195314 (getCurrentListMapNoExtraKeys!1345 lt!195312 lt!195311 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!427376 (= lt!195310 (getCurrentListMapNoExtraKeys!1345 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!12497 0))(
  ( (Unit!12498) )
))
(declare-fun lt!195315 () Unit!12497)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!499 (array!26133 array!26135 (_ BitVec 32) (_ BitVec 32) V!15981 V!15981 (_ BitVec 32) (_ BitVec 64) V!15981 (_ BitVec 32) Int) Unit!12497)

(assert (=> b!427376 (= lt!195315 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!499 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!427377 () Bool)

(assert (=> b!427377 (= e!253400 true)))

(declare-fun get!6200 (ValueCell!5235 V!15981) V!15981)

(declare-fun dynLambda!745 (Int (_ BitVec 64)) V!15981)

(assert (=> b!427377 (= lt!195308 (+!1297 lt!195313 (tuple2!7331 (select (arr!12513 _keys!709) from!863) (get!6200 (select (arr!12514 _values!549) from!863) (dynLambda!745 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!427378 () Bool)

(declare-fun res!250775 () Bool)

(assert (=> b!427378 (=> (not res!250775) (not e!253396))))

(assert (=> b!427378 (= res!250775 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12865 _keys!709))))))

(declare-fun b!427379 () Bool)

(declare-fun tp_is_empty!11157 () Bool)

(assert (=> b!427379 (= e!253398 tp_is_empty!11157)))

(declare-fun b!427380 () Bool)

(declare-fun res!250778 () Bool)

(assert (=> b!427380 (=> (not res!250778) (not e!253396))))

(assert (=> b!427380 (= res!250778 (validKeyInArray!0 k0!794))))

(declare-fun b!427381 () Bool)

(assert (=> b!427381 (= e!253396 e!253401)))

(declare-fun res!250770 () Bool)

(assert (=> b!427381 (=> (not res!250770) (not e!253401))))

(assert (=> b!427381 (= res!250770 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!195312 mask!1025))))

(assert (=> b!427381 (= lt!195312 (array!26134 (store (arr!12513 _keys!709) i!563 k0!794) (size!12865 _keys!709)))))

(declare-fun b!427382 () Bool)

(declare-fun res!250771 () Bool)

(assert (=> b!427382 (=> (not res!250771) (not e!253401))))

(assert (=> b!427382 (= res!250771 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!18357 () Bool)

(declare-fun tp!35543 () Bool)

(declare-fun e!253397 () Bool)

(assert (=> mapNonEmpty!18357 (= mapRes!18357 (and tp!35543 e!253397))))

(declare-fun mapKey!18357 () (_ BitVec 32))

(declare-fun mapValue!18357 () ValueCell!5235)

(declare-fun mapRest!18357 () (Array (_ BitVec 32) ValueCell!5235))

(assert (=> mapNonEmpty!18357 (= (arr!12514 _values!549) (store mapRest!18357 mapKey!18357 mapValue!18357))))

(declare-fun res!250769 () Bool)

(assert (=> start!39746 (=> (not res!250769) (not e!253396))))

(assert (=> start!39746 (= res!250769 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12865 _keys!709))))))

(assert (=> start!39746 e!253396))

(assert (=> start!39746 tp_is_empty!11157))

(assert (=> start!39746 tp!35544))

(assert (=> start!39746 true))

(declare-fun array_inv!9108 (array!26135) Bool)

(assert (=> start!39746 (and (array_inv!9108 _values!549) e!253395)))

(declare-fun array_inv!9109 (array!26133) Bool)

(assert (=> start!39746 (array_inv!9109 _keys!709)))

(declare-fun b!427383 () Bool)

(declare-fun res!250779 () Bool)

(assert (=> b!427383 (=> (not res!250779) (not e!253396))))

(declare-fun arrayContainsKey!0 (array!26133 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!427383 (= res!250779 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!427384 () Bool)

(declare-fun res!250772 () Bool)

(assert (=> b!427384 (=> (not res!250772) (not e!253396))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!427384 (= res!250772 (validMask!0 mask!1025))))

(declare-fun b!427385 () Bool)

(assert (=> b!427385 (= e!253397 tp_is_empty!11157)))

(declare-fun b!427386 () Bool)

(declare-fun res!250767 () Bool)

(assert (=> b!427386 (=> (not res!250767) (not e!253396))))

(declare-datatypes ((List!7380 0))(
  ( (Nil!7377) (Cons!7376 (h!8232 (_ BitVec 64)) (t!12842 List!7380)) )
))
(declare-fun arrayNoDuplicates!0 (array!26133 (_ BitVec 32) List!7380) Bool)

(assert (=> b!427386 (= res!250767 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7377))))

(declare-fun b!427387 () Bool)

(declare-fun res!250777 () Bool)

(assert (=> b!427387 (=> (not res!250777) (not e!253401))))

(assert (=> b!427387 (= res!250777 (arrayNoDuplicates!0 lt!195312 #b00000000000000000000000000000000 Nil!7377))))

(assert (= (and start!39746 res!250769) b!427384))

(assert (= (and b!427384 res!250772) b!427375))

(assert (= (and b!427375 res!250774) b!427371))

(assert (= (and b!427371 res!250776) b!427386))

(assert (= (and b!427386 res!250767) b!427378))

(assert (= (and b!427378 res!250775) b!427380))

(assert (= (and b!427380 res!250778) b!427374))

(assert (= (and b!427374 res!250766) b!427383))

(assert (= (and b!427383 res!250779) b!427381))

(assert (= (and b!427381 res!250770) b!427387))

(assert (= (and b!427387 res!250777) b!427382))

(assert (= (and b!427382 res!250771) b!427372))

(assert (= (and b!427372 res!250773) b!427376))

(assert (= (and b!427376 (not res!250768)) b!427377))

(assert (= (and b!427373 condMapEmpty!18357) mapIsEmpty!18357))

(assert (= (and b!427373 (not condMapEmpty!18357)) mapNonEmpty!18357))

(get-info :version)

(assert (= (and mapNonEmpty!18357 ((_ is ValueCellFull!5235) mapValue!18357)) b!427385))

(assert (= (and b!427373 ((_ is ValueCellFull!5235) mapDefault!18357)) b!427379))

(assert (= start!39746 b!427373))

(declare-fun b_lambda!9123 () Bool)

(assert (=> (not b_lambda!9123) (not b!427377)))

(declare-fun t!12840 () Bool)

(declare-fun tb!3419 () Bool)

(assert (=> (and start!39746 (= defaultEntry!557 defaultEntry!557) t!12840) tb!3419))

(declare-fun result!6357 () Bool)

(assert (=> tb!3419 (= result!6357 tp_is_empty!11157)))

(assert (=> b!427377 t!12840))

(declare-fun b_and!17689 () Bool)

(assert (= b_and!17687 (and (=> t!12840 result!6357) b_and!17689)))

(declare-fun m!415899 () Bool)

(assert (=> b!427377 m!415899))

(declare-fun m!415901 () Bool)

(assert (=> b!427377 m!415901))

(declare-fun m!415903 () Bool)

(assert (=> b!427377 m!415903))

(declare-fun m!415905 () Bool)

(assert (=> b!427377 m!415905))

(assert (=> b!427377 m!415905))

(assert (=> b!427377 m!415901))

(declare-fun m!415907 () Bool)

(assert (=> b!427377 m!415907))

(declare-fun m!415909 () Bool)

(assert (=> mapNonEmpty!18357 m!415909))

(declare-fun m!415911 () Bool)

(assert (=> b!427383 m!415911))

(declare-fun m!415913 () Bool)

(assert (=> b!427372 m!415913))

(declare-fun m!415915 () Bool)

(assert (=> b!427372 m!415915))

(declare-fun m!415917 () Bool)

(assert (=> b!427372 m!415917))

(declare-fun m!415919 () Bool)

(assert (=> b!427374 m!415919))

(declare-fun m!415921 () Bool)

(assert (=> b!427387 m!415921))

(declare-fun m!415923 () Bool)

(assert (=> b!427381 m!415923))

(declare-fun m!415925 () Bool)

(assert (=> b!427381 m!415925))

(assert (=> b!427376 m!415899))

(declare-fun m!415927 () Bool)

(assert (=> b!427376 m!415927))

(declare-fun m!415929 () Bool)

(assert (=> b!427376 m!415929))

(declare-fun m!415931 () Bool)

(assert (=> b!427376 m!415931))

(assert (=> b!427376 m!415899))

(declare-fun m!415933 () Bool)

(assert (=> b!427376 m!415933))

(declare-fun m!415935 () Bool)

(assert (=> b!427376 m!415935))

(declare-fun m!415937 () Bool)

(assert (=> start!39746 m!415937))

(declare-fun m!415939 () Bool)

(assert (=> start!39746 m!415939))

(declare-fun m!415941 () Bool)

(assert (=> b!427386 m!415941))

(declare-fun m!415943 () Bool)

(assert (=> b!427371 m!415943))

(declare-fun m!415945 () Bool)

(assert (=> b!427384 m!415945))

(declare-fun m!415947 () Bool)

(assert (=> b!427380 m!415947))

(check-sat (not b!427386) (not b!427387) (not b!427380) (not b_lambda!9123) (not b!427383) b_and!17689 (not b!427377) (not start!39746) (not b!427376) (not mapNonEmpty!18357) (not b!427381) tp_is_empty!11157 (not b_next!10005) (not b!427372) (not b!427371) (not b!427384))
(check-sat b_and!17689 (not b_next!10005))
