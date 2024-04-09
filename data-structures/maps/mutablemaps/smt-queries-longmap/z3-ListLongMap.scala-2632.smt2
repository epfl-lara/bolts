; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39620 () Bool)

(assert start!39620)

(declare-fun b_free!9879 () Bool)

(declare-fun b_next!9879 () Bool)

(assert (=> start!39620 (= b_free!9879 (not b_next!9879))))

(declare-fun tp!35166 () Bool)

(declare-fun b_and!17553 () Bool)

(assert (=> start!39620 (= tp!35166 b_and!17553)))

(declare-fun mapIsEmpty!18168 () Bool)

(declare-fun mapRes!18168 () Bool)

(assert (=> mapIsEmpty!18168 mapRes!18168))

(declare-fun b!424329 () Bool)

(declare-fun res!248306 () Bool)

(declare-fun e!252067 () Bool)

(assert (=> b!424329 (=> (not res!248306) (not e!252067))))

(declare-datatypes ((array!25889 0))(
  ( (array!25890 (arr!12391 (Array (_ BitVec 32) (_ BitVec 64))) (size!12743 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25889)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25889 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!424329 (= res!248306 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!424330 () Bool)

(declare-fun res!248308 () Bool)

(assert (=> b!424330 (=> (not res!248308) (not e!252067))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25889 (_ BitVec 32)) Bool)

(assert (=> b!424330 (= res!248308 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!424331 () Bool)

(declare-fun res!248310 () Bool)

(assert (=> b!424331 (=> (not res!248310) (not e!252067))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15813 0))(
  ( (V!15814 (val!5560 Int)) )
))
(declare-datatypes ((ValueCell!5172 0))(
  ( (ValueCellFull!5172 (v!7803 V!15813)) (EmptyCell!5172) )
))
(declare-datatypes ((array!25891 0))(
  ( (array!25892 (arr!12392 (Array (_ BitVec 32) ValueCell!5172)) (size!12744 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25891)

(assert (=> b!424331 (= res!248310 (and (= (size!12744 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12743 _keys!709) (size!12744 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!424332 () Bool)

(declare-fun res!248300 () Bool)

(declare-fun e!252065 () Bool)

(assert (=> b!424332 (=> (not res!248300) (not e!252065))))

(declare-fun lt!194347 () array!25889)

(declare-datatypes ((List!7280 0))(
  ( (Nil!7277) (Cons!7276 (h!8132 (_ BitVec 64)) (t!12732 List!7280)) )
))
(declare-fun arrayNoDuplicates!0 (array!25889 (_ BitVec 32) List!7280) Bool)

(assert (=> b!424332 (= res!248300 (arrayNoDuplicates!0 lt!194347 #b00000000000000000000000000000000 Nil!7277))))

(declare-fun b!424333 () Bool)

(declare-fun e!252062 () Bool)

(declare-fun tp_is_empty!11031 () Bool)

(assert (=> b!424333 (= e!252062 tp_is_empty!11031)))

(declare-fun b!424334 () Bool)

(assert (=> b!424334 (= e!252067 e!252065)))

(declare-fun res!248303 () Bool)

(assert (=> b!424334 (=> (not res!248303) (not e!252065))))

(assert (=> b!424334 (= res!248303 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194347 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!424334 (= lt!194347 (array!25890 (store (arr!12391 _keys!709) i!563 k0!794) (size!12743 _keys!709)))))

(declare-fun b!424335 () Bool)

(assert (=> b!424335 (= e!252065 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!15813)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15813)

(declare-datatypes ((tuple2!7234 0))(
  ( (tuple2!7235 (_1!3627 (_ BitVec 64)) (_2!3627 V!15813)) )
))
(declare-datatypes ((List!7281 0))(
  ( (Nil!7278) (Cons!7277 (h!8133 tuple2!7234) (t!12733 List!7281)) )
))
(declare-datatypes ((ListLongMap!6161 0))(
  ( (ListLongMap!6162 (toList!3096 List!7281)) )
))
(declare-fun lt!194348 () ListLongMap!6161)

(declare-fun v!412 () V!15813)

(declare-fun getCurrentListMapNoExtraKeys!1297 (array!25889 array!25891 (_ BitVec 32) (_ BitVec 32) V!15813 V!15813 (_ BitVec 32) Int) ListLongMap!6161)

(assert (=> b!424335 (= lt!194348 (getCurrentListMapNoExtraKeys!1297 lt!194347 (array!25892 (store (arr!12392 _values!549) i!563 (ValueCellFull!5172 v!412)) (size!12744 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!194349 () ListLongMap!6161)

(assert (=> b!424335 (= lt!194349 (getCurrentListMapNoExtraKeys!1297 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!18168 () Bool)

(declare-fun tp!35165 () Bool)

(declare-fun e!252064 () Bool)

(assert (=> mapNonEmpty!18168 (= mapRes!18168 (and tp!35165 e!252064))))

(declare-fun mapKey!18168 () (_ BitVec 32))

(declare-fun mapValue!18168 () ValueCell!5172)

(declare-fun mapRest!18168 () (Array (_ BitVec 32) ValueCell!5172))

(assert (=> mapNonEmpty!18168 (= (arr!12392 _values!549) (store mapRest!18168 mapKey!18168 mapValue!18168))))

(declare-fun b!424336 () Bool)

(declare-fun res!248307 () Bool)

(assert (=> b!424336 (=> (not res!248307) (not e!252067))))

(assert (=> b!424336 (= res!248307 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12743 _keys!709))))))

(declare-fun b!424337 () Bool)

(declare-fun res!248305 () Bool)

(assert (=> b!424337 (=> (not res!248305) (not e!252067))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!424337 (= res!248305 (validKeyInArray!0 k0!794))))

(declare-fun b!424338 () Bool)

(declare-fun res!248299 () Bool)

(assert (=> b!424338 (=> (not res!248299) (not e!252067))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!424338 (= res!248299 (validMask!0 mask!1025))))

(declare-fun b!424339 () Bool)

(declare-fun res!248304 () Bool)

(assert (=> b!424339 (=> (not res!248304) (not e!252067))))

(assert (=> b!424339 (= res!248304 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7277))))

(declare-fun b!424340 () Bool)

(assert (=> b!424340 (= e!252064 tp_is_empty!11031)))

(declare-fun b!424341 () Bool)

(declare-fun res!248302 () Bool)

(assert (=> b!424341 (=> (not res!248302) (not e!252065))))

(assert (=> b!424341 (= res!248302 (bvsle from!863 i!563))))

(declare-fun res!248301 () Bool)

(assert (=> start!39620 (=> (not res!248301) (not e!252067))))

(assert (=> start!39620 (= res!248301 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12743 _keys!709))))))

(assert (=> start!39620 e!252067))

(assert (=> start!39620 tp_is_empty!11031))

(assert (=> start!39620 tp!35166))

(assert (=> start!39620 true))

(declare-fun e!252063 () Bool)

(declare-fun array_inv!9032 (array!25891) Bool)

(assert (=> start!39620 (and (array_inv!9032 _values!549) e!252063)))

(declare-fun array_inv!9033 (array!25889) Bool)

(assert (=> start!39620 (array_inv!9033 _keys!709)))

(declare-fun b!424342 () Bool)

(assert (=> b!424342 (= e!252063 (and e!252062 mapRes!18168))))

(declare-fun condMapEmpty!18168 () Bool)

(declare-fun mapDefault!18168 () ValueCell!5172)

(assert (=> b!424342 (= condMapEmpty!18168 (= (arr!12392 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5172)) mapDefault!18168)))))

(declare-fun b!424343 () Bool)

(declare-fun res!248309 () Bool)

(assert (=> b!424343 (=> (not res!248309) (not e!252067))))

(assert (=> b!424343 (= res!248309 (or (= (select (arr!12391 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12391 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!39620 res!248301) b!424338))

(assert (= (and b!424338 res!248299) b!424331))

(assert (= (and b!424331 res!248310) b!424330))

(assert (= (and b!424330 res!248308) b!424339))

(assert (= (and b!424339 res!248304) b!424336))

(assert (= (and b!424336 res!248307) b!424337))

(assert (= (and b!424337 res!248305) b!424343))

(assert (= (and b!424343 res!248309) b!424329))

(assert (= (and b!424329 res!248306) b!424334))

(assert (= (and b!424334 res!248303) b!424332))

(assert (= (and b!424332 res!248300) b!424341))

(assert (= (and b!424341 res!248302) b!424335))

(assert (= (and b!424342 condMapEmpty!18168) mapIsEmpty!18168))

(assert (= (and b!424342 (not condMapEmpty!18168)) mapNonEmpty!18168))

(get-info :version)

(assert (= (and mapNonEmpty!18168 ((_ is ValueCellFull!5172) mapValue!18168)) b!424340))

(assert (= (and b!424342 ((_ is ValueCellFull!5172) mapDefault!18168)) b!424333))

(assert (= start!39620 b!424342))

(declare-fun m!413485 () Bool)

(assert (=> b!424338 m!413485))

(declare-fun m!413487 () Bool)

(assert (=> mapNonEmpty!18168 m!413487))

(declare-fun m!413489 () Bool)

(assert (=> start!39620 m!413489))

(declare-fun m!413491 () Bool)

(assert (=> start!39620 m!413491))

(declare-fun m!413493 () Bool)

(assert (=> b!424332 m!413493))

(declare-fun m!413495 () Bool)

(assert (=> b!424335 m!413495))

(declare-fun m!413497 () Bool)

(assert (=> b!424335 m!413497))

(declare-fun m!413499 () Bool)

(assert (=> b!424335 m!413499))

(declare-fun m!413501 () Bool)

(assert (=> b!424334 m!413501))

(declare-fun m!413503 () Bool)

(assert (=> b!424334 m!413503))

(declare-fun m!413505 () Bool)

(assert (=> b!424337 m!413505))

(declare-fun m!413507 () Bool)

(assert (=> b!424330 m!413507))

(declare-fun m!413509 () Bool)

(assert (=> b!424343 m!413509))

(declare-fun m!413511 () Bool)

(assert (=> b!424329 m!413511))

(declare-fun m!413513 () Bool)

(assert (=> b!424339 m!413513))

(check-sat b_and!17553 (not b!424337) (not b!424334) (not mapNonEmpty!18168) (not b!424330) (not b!424329) (not b!424335) (not b!424339) tp_is_empty!11031 (not b_next!9879) (not b!424338) (not start!39620) (not b!424332))
(check-sat b_and!17553 (not b_next!9879))
