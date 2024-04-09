; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39764 () Bool)

(assert start!39764)

(declare-fun b_free!10023 () Bool)

(declare-fun b_next!10023 () Bool)

(assert (=> start!39764 (= b_free!10023 (not b_next!10023))))

(declare-fun tp!35598 () Bool)

(declare-fun b_and!17723 () Bool)

(assert (=> start!39764 (= tp!35598 b_and!17723)))

(declare-fun b!427848 () Bool)

(declare-fun res!251147 () Bool)

(declare-fun e!253614 () Bool)

(assert (=> b!427848 (=> (not res!251147) (not e!253614))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!427848 (= res!251147 (validMask!0 mask!1025))))

(declare-fun b!427849 () Bool)

(declare-fun res!251148 () Bool)

(assert (=> b!427849 (=> (not res!251148) (not e!253614))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!427849 (= res!251148 (validKeyInArray!0 k0!794))))

(declare-fun b!427850 () Bool)

(declare-fun res!251146 () Bool)

(assert (=> b!427850 (=> (not res!251146) (not e!253614))))

(declare-datatypes ((array!26169 0))(
  ( (array!26170 (arr!12531 (Array (_ BitVec 32) (_ BitVec 64))) (size!12883 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26169)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16005 0))(
  ( (V!16006 (val!5632 Int)) )
))
(declare-datatypes ((ValueCell!5244 0))(
  ( (ValueCellFull!5244 (v!7875 V!16005)) (EmptyCell!5244) )
))
(declare-datatypes ((array!26171 0))(
  ( (array!26172 (arr!12532 (Array (_ BitVec 32) ValueCell!5244)) (size!12884 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26171)

(assert (=> b!427850 (= res!251146 (and (= (size!12884 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12883 _keys!709) (size!12884 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!251155 () Bool)

(assert (=> start!39764 (=> (not res!251155) (not e!253614))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39764 (= res!251155 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12883 _keys!709))))))

(assert (=> start!39764 e!253614))

(declare-fun tp_is_empty!11175 () Bool)

(assert (=> start!39764 tp_is_empty!11175))

(assert (=> start!39764 tp!35598))

(assert (=> start!39764 true))

(declare-fun e!253617 () Bool)

(declare-fun array_inv!9120 (array!26171) Bool)

(assert (=> start!39764 (and (array_inv!9120 _values!549) e!253617)))

(declare-fun array_inv!9121 (array!26169) Bool)

(assert (=> start!39764 (array_inv!9121 _keys!709)))

(declare-fun b!427851 () Bool)

(declare-fun res!251152 () Bool)

(assert (=> b!427851 (=> (not res!251152) (not e!253614))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!427851 (= res!251152 (or (= (select (arr!12531 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12531 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!427852 () Bool)

(declare-fun res!251154 () Bool)

(declare-fun e!253615 () Bool)

(assert (=> b!427852 (=> (not res!251154) (not e!253615))))

(assert (=> b!427852 (= res!251154 (bvsle from!863 i!563))))

(declare-fun b!427853 () Bool)

(declare-fun e!253616 () Bool)

(assert (=> b!427853 (= e!253616 tp_is_empty!11175)))

(declare-fun b!427854 () Bool)

(declare-fun res!251157 () Bool)

(assert (=> b!427854 (=> (not res!251157) (not e!253614))))

(declare-datatypes ((List!7396 0))(
  ( (Nil!7393) (Cons!7392 (h!8248 (_ BitVec 64)) (t!12876 List!7396)) )
))
(declare-fun arrayNoDuplicates!0 (array!26169 (_ BitVec 32) List!7396) Bool)

(assert (=> b!427854 (= res!251157 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7393))))

(declare-fun b!427855 () Bool)

(declare-fun e!253612 () Bool)

(assert (=> b!427855 (= e!253615 e!253612)))

(declare-fun res!251145 () Bool)

(assert (=> b!427855 (=> (not res!251145) (not e!253612))))

(assert (=> b!427855 (= res!251145 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((tuple2!7346 0))(
  ( (tuple2!7347 (_1!3683 (_ BitVec 64)) (_2!3683 V!16005)) )
))
(declare-datatypes ((List!7397 0))(
  ( (Nil!7394) (Cons!7393 (h!8249 tuple2!7346) (t!12877 List!7397)) )
))
(declare-datatypes ((ListLongMap!6273 0))(
  ( (ListLongMap!6274 (toList!3152 List!7397)) )
))
(declare-fun lt!195528 () ListLongMap!6273)

(declare-fun minValue!515 () V!16005)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!16005)

(declare-fun lt!195525 () array!26169)

(declare-fun lt!195527 () array!26171)

(declare-fun getCurrentListMapNoExtraKeys!1352 (array!26169 array!26171 (_ BitVec 32) (_ BitVec 32) V!16005 V!16005 (_ BitVec 32) Int) ListLongMap!6273)

(assert (=> b!427855 (= lt!195528 (getCurrentListMapNoExtraKeys!1352 lt!195525 lt!195527 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16005)

(assert (=> b!427855 (= lt!195527 (array!26172 (store (arr!12532 _values!549) i!563 (ValueCellFull!5244 v!412)) (size!12884 _values!549)))))

(declare-fun lt!195526 () ListLongMap!6273)

(assert (=> b!427855 (= lt!195526 (getCurrentListMapNoExtraKeys!1352 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!427856 () Bool)

(declare-fun e!253618 () Bool)

(assert (=> b!427856 (= e!253618 tp_is_empty!11175)))

(declare-fun b!427857 () Bool)

(declare-fun res!251144 () Bool)

(assert (=> b!427857 (=> (not res!251144) (not e!253614))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26169 (_ BitVec 32)) Bool)

(assert (=> b!427857 (= res!251144 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!427858 () Bool)

(declare-fun res!251149 () Bool)

(assert (=> b!427858 (=> (not res!251149) (not e!253615))))

(assert (=> b!427858 (= res!251149 (arrayNoDuplicates!0 lt!195525 #b00000000000000000000000000000000 Nil!7393))))

(declare-fun b!427859 () Bool)

(declare-fun e!253611 () Bool)

(assert (=> b!427859 (= e!253611 true)))

(declare-fun lt!195530 () ListLongMap!6273)

(declare-fun +!1305 (ListLongMap!6273 tuple2!7346) ListLongMap!6273)

(declare-fun get!6213 (ValueCell!5244 V!16005) V!16005)

(declare-fun dynLambda!752 (Int (_ BitVec 64)) V!16005)

(assert (=> b!427859 (= lt!195528 (+!1305 lt!195530 (tuple2!7347 (select (arr!12531 _keys!709) from!863) (get!6213 (select (arr!12532 _values!549) from!863) (dynLambda!752 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!427860 () Bool)

(assert (=> b!427860 (= e!253612 (not e!253611))))

(declare-fun res!251156 () Bool)

(assert (=> b!427860 (=> res!251156 e!253611)))

(assert (=> b!427860 (= res!251156 (not (validKeyInArray!0 (select (arr!12531 _keys!709) from!863))))))

(declare-fun lt!195529 () ListLongMap!6273)

(assert (=> b!427860 (= lt!195529 lt!195530)))

(declare-fun lt!195524 () ListLongMap!6273)

(assert (=> b!427860 (= lt!195530 (+!1305 lt!195524 (tuple2!7347 k0!794 v!412)))))

(assert (=> b!427860 (= lt!195529 (getCurrentListMapNoExtraKeys!1352 lt!195525 lt!195527 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!427860 (= lt!195524 (getCurrentListMapNoExtraKeys!1352 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!12511 0))(
  ( (Unit!12512) )
))
(declare-fun lt!195531 () Unit!12511)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!506 (array!26169 array!26171 (_ BitVec 32) (_ BitVec 32) V!16005 V!16005 (_ BitVec 32) (_ BitVec 64) V!16005 (_ BitVec 32) Int) Unit!12511)

(assert (=> b!427860 (= lt!195531 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!506 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!18384 () Bool)

(declare-fun mapRes!18384 () Bool)

(assert (=> mapIsEmpty!18384 mapRes!18384))

(declare-fun b!427861 () Bool)

(declare-fun res!251151 () Bool)

(assert (=> b!427861 (=> (not res!251151) (not e!253614))))

(declare-fun arrayContainsKey!0 (array!26169 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!427861 (= res!251151 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!427862 () Bool)

(declare-fun res!251150 () Bool)

(assert (=> b!427862 (=> (not res!251150) (not e!253614))))

(assert (=> b!427862 (= res!251150 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12883 _keys!709))))))

(declare-fun mapNonEmpty!18384 () Bool)

(declare-fun tp!35597 () Bool)

(assert (=> mapNonEmpty!18384 (= mapRes!18384 (and tp!35597 e!253618))))

(declare-fun mapRest!18384 () (Array (_ BitVec 32) ValueCell!5244))

(declare-fun mapKey!18384 () (_ BitVec 32))

(declare-fun mapValue!18384 () ValueCell!5244)

(assert (=> mapNonEmpty!18384 (= (arr!12532 _values!549) (store mapRest!18384 mapKey!18384 mapValue!18384))))

(declare-fun b!427863 () Bool)

(assert (=> b!427863 (= e!253614 e!253615)))

(declare-fun res!251153 () Bool)

(assert (=> b!427863 (=> (not res!251153) (not e!253615))))

(assert (=> b!427863 (= res!251153 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!195525 mask!1025))))

(assert (=> b!427863 (= lt!195525 (array!26170 (store (arr!12531 _keys!709) i!563 k0!794) (size!12883 _keys!709)))))

(declare-fun b!427864 () Bool)

(assert (=> b!427864 (= e!253617 (and e!253616 mapRes!18384))))

(declare-fun condMapEmpty!18384 () Bool)

(declare-fun mapDefault!18384 () ValueCell!5244)

(assert (=> b!427864 (= condMapEmpty!18384 (= (arr!12532 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5244)) mapDefault!18384)))))

(assert (= (and start!39764 res!251155) b!427848))

(assert (= (and b!427848 res!251147) b!427850))

(assert (= (and b!427850 res!251146) b!427857))

(assert (= (and b!427857 res!251144) b!427854))

(assert (= (and b!427854 res!251157) b!427862))

(assert (= (and b!427862 res!251150) b!427849))

(assert (= (and b!427849 res!251148) b!427851))

(assert (= (and b!427851 res!251152) b!427861))

(assert (= (and b!427861 res!251151) b!427863))

(assert (= (and b!427863 res!251153) b!427858))

(assert (= (and b!427858 res!251149) b!427852))

(assert (= (and b!427852 res!251154) b!427855))

(assert (= (and b!427855 res!251145) b!427860))

(assert (= (and b!427860 (not res!251156)) b!427859))

(assert (= (and b!427864 condMapEmpty!18384) mapIsEmpty!18384))

(assert (= (and b!427864 (not condMapEmpty!18384)) mapNonEmpty!18384))

(get-info :version)

(assert (= (and mapNonEmpty!18384 ((_ is ValueCellFull!5244) mapValue!18384)) b!427856))

(assert (= (and b!427864 ((_ is ValueCellFull!5244) mapDefault!18384)) b!427853))

(assert (= start!39764 b!427864))

(declare-fun b_lambda!9141 () Bool)

(assert (=> (not b_lambda!9141) (not b!427859)))

(declare-fun t!12875 () Bool)

(declare-fun tb!3437 () Bool)

(assert (=> (and start!39764 (= defaultEntry!557 defaultEntry!557) t!12875) tb!3437))

(declare-fun result!6393 () Bool)

(assert (=> tb!3437 (= result!6393 tp_is_empty!11175)))

(assert (=> b!427859 t!12875))

(declare-fun b_and!17725 () Bool)

(assert (= b_and!17723 (and (=> t!12875 result!6393) b_and!17725)))

(declare-fun m!416349 () Bool)

(assert (=> b!427861 m!416349))

(declare-fun m!416351 () Bool)

(assert (=> b!427857 m!416351))

(declare-fun m!416353 () Bool)

(assert (=> b!427855 m!416353))

(declare-fun m!416355 () Bool)

(assert (=> b!427855 m!416355))

(declare-fun m!416357 () Bool)

(assert (=> b!427855 m!416357))

(declare-fun m!416359 () Bool)

(assert (=> b!427854 m!416359))

(declare-fun m!416361 () Bool)

(assert (=> b!427858 m!416361))

(declare-fun m!416363 () Bool)

(assert (=> b!427848 m!416363))

(declare-fun m!416365 () Bool)

(assert (=> start!39764 m!416365))

(declare-fun m!416367 () Bool)

(assert (=> start!39764 m!416367))

(declare-fun m!416369 () Bool)

(assert (=> mapNonEmpty!18384 m!416369))

(declare-fun m!416371 () Bool)

(assert (=> b!427860 m!416371))

(declare-fun m!416373 () Bool)

(assert (=> b!427860 m!416373))

(declare-fun m!416375 () Bool)

(assert (=> b!427860 m!416375))

(declare-fun m!416377 () Bool)

(assert (=> b!427860 m!416377))

(assert (=> b!427860 m!416371))

(declare-fun m!416379 () Bool)

(assert (=> b!427860 m!416379))

(declare-fun m!416381 () Bool)

(assert (=> b!427860 m!416381))

(declare-fun m!416383 () Bool)

(assert (=> b!427849 m!416383))

(declare-fun m!416385 () Bool)

(assert (=> b!427851 m!416385))

(declare-fun m!416387 () Bool)

(assert (=> b!427863 m!416387))

(declare-fun m!416389 () Bool)

(assert (=> b!427863 m!416389))

(assert (=> b!427859 m!416371))

(declare-fun m!416391 () Bool)

(assert (=> b!427859 m!416391))

(declare-fun m!416393 () Bool)

(assert (=> b!427859 m!416393))

(declare-fun m!416395 () Bool)

(assert (=> b!427859 m!416395))

(assert (=> b!427859 m!416393))

(assert (=> b!427859 m!416391))

(declare-fun m!416397 () Bool)

(assert (=> b!427859 m!416397))

(check-sat (not b!427858) (not b!427863) (not b!427860) (not b!427855) (not b!427849) tp_is_empty!11175 (not b_lambda!9141) b_and!17725 (not b!427861) (not b_next!10023) (not b!427854) (not mapNonEmpty!18384) (not start!39764) (not b!427859) (not b!427857) (not b!427848))
(check-sat b_and!17725 (not b_next!10023))
