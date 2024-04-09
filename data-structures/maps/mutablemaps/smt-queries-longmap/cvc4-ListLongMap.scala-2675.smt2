; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39880 () Bool)

(assert start!39880)

(declare-fun b_free!10139 () Bool)

(declare-fun b_next!10139 () Bool)

(assert (=> start!39880 (= b_free!10139 (not b_next!10139))))

(declare-fun tp!35945 () Bool)

(declare-fun b_and!17955 () Bool)

(assert (=> start!39880 (= tp!35945 b_and!17955)))

(declare-fun b!431315 () Bool)

(declare-fun e!255238 () Bool)

(declare-fun e!255237 () Bool)

(assert (=> b!431315 (= e!255238 e!255237)))

(declare-fun res!253655 () Bool)

(assert (=> b!431315 (=> res!253655 e!255237)))

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((array!26395 0))(
  ( (array!26396 (arr!12644 (Array (_ BitVec 32) (_ BitVec 64))) (size!12996 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26395)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!431315 (= res!253655 (= k!794 (select (arr!12644 _keys!709) from!863)))))

(assert (=> b!431315 (not (= (select (arr!12644 _keys!709) from!863) k!794))))

(declare-datatypes ((Unit!12683 0))(
  ( (Unit!12684) )
))
(declare-fun lt!197597 () Unit!12683)

(declare-fun e!255236 () Unit!12683)

(assert (=> b!431315 (= lt!197597 e!255236)))

(declare-fun c!55469 () Bool)

(assert (=> b!431315 (= c!55469 (= (select (arr!12644 _keys!709) from!863) k!794))))

(declare-datatypes ((V!16159 0))(
  ( (V!16160 (val!5690 Int)) )
))
(declare-datatypes ((tuple2!7438 0))(
  ( (tuple2!7439 (_1!3729 (_ BitVec 64)) (_2!3729 V!16159)) )
))
(declare-datatypes ((List!7490 0))(
  ( (Nil!7487) (Cons!7486 (h!8342 tuple2!7438) (t!13086 List!7490)) )
))
(declare-datatypes ((ListLongMap!6365 0))(
  ( (ListLongMap!6366 (toList!3198 List!7490)) )
))
(declare-fun lt!197594 () ListLongMap!6365)

(declare-fun lt!197600 () ListLongMap!6365)

(assert (=> b!431315 (= lt!197594 lt!197600)))

(declare-fun lt!197603 () ListLongMap!6365)

(declare-fun lt!197606 () tuple2!7438)

(declare-fun +!1346 (ListLongMap!6365 tuple2!7438) ListLongMap!6365)

(assert (=> b!431315 (= lt!197600 (+!1346 lt!197603 lt!197606))))

(declare-fun lt!197604 () V!16159)

(assert (=> b!431315 (= lt!197606 (tuple2!7439 (select (arr!12644 _keys!709) from!863) lt!197604))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5302 0))(
  ( (ValueCellFull!5302 (v!7933 V!16159)) (EmptyCell!5302) )
))
(declare-datatypes ((array!26397 0))(
  ( (array!26398 (arr!12645 (Array (_ BitVec 32) ValueCell!5302)) (size!12997 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26397)

(declare-fun get!6285 (ValueCell!5302 V!16159) V!16159)

(declare-fun dynLambda!786 (Int (_ BitVec 64)) V!16159)

(assert (=> b!431315 (= lt!197604 (get!6285 (select (arr!12645 _values!549) from!863) (dynLambda!786 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!18558 () Bool)

(declare-fun mapRes!18558 () Bool)

(declare-fun tp!35946 () Bool)

(declare-fun e!255241 () Bool)

(assert (=> mapNonEmpty!18558 (= mapRes!18558 (and tp!35946 e!255241))))

(declare-fun mapRest!18558 () (Array (_ BitVec 32) ValueCell!5302))

(declare-fun mapValue!18558 () ValueCell!5302)

(declare-fun mapKey!18558 () (_ BitVec 32))

(assert (=> mapNonEmpty!18558 (= (arr!12645 _values!549) (store mapRest!18558 mapKey!18558 mapValue!18558))))

(declare-fun b!431316 () Bool)

(declare-fun Unit!12685 () Unit!12683)

(assert (=> b!431316 (= e!255236 Unit!12685)))

(declare-fun b!431317 () Bool)

(declare-fun res!253665 () Bool)

(declare-fun e!255242 () Bool)

(assert (=> b!431317 (=> (not res!253665) (not e!255242))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!431317 (= res!253665 (bvsle from!863 i!563))))

(declare-fun b!431318 () Bool)

(declare-fun e!255235 () Bool)

(declare-fun tp_is_empty!11291 () Bool)

(assert (=> b!431318 (= e!255235 tp_is_empty!11291)))

(declare-fun b!431319 () Bool)

(declare-fun res!253652 () Bool)

(declare-fun e!255239 () Bool)

(assert (=> b!431319 (=> (not res!253652) (not e!255239))))

(declare-fun arrayContainsKey!0 (array!26395 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!431319 (= res!253652 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!431320 () Bool)

(declare-fun e!255240 () Bool)

(assert (=> b!431320 (= e!255242 e!255240)))

(declare-fun res!253654 () Bool)

(assert (=> b!431320 (=> (not res!253654) (not e!255240))))

(assert (=> b!431320 (= res!253654 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!197596 () array!26397)

(declare-fun minValue!515 () V!16159)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!197601 () array!26395)

(declare-fun zeroValue!515 () V!16159)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1392 (array!26395 array!26397 (_ BitVec 32) (_ BitVec 32) V!16159 V!16159 (_ BitVec 32) Int) ListLongMap!6365)

(assert (=> b!431320 (= lt!197594 (getCurrentListMapNoExtraKeys!1392 lt!197601 lt!197596 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16159)

(assert (=> b!431320 (= lt!197596 (array!26398 (store (arr!12645 _values!549) i!563 (ValueCellFull!5302 v!412)) (size!12997 _values!549)))))

(declare-fun lt!197598 () ListLongMap!6365)

(assert (=> b!431320 (= lt!197598 (getCurrentListMapNoExtraKeys!1392 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!431321 () Bool)

(declare-fun res!253661 () Bool)

(assert (=> b!431321 (=> (not res!253661) (not e!255239))))

(assert (=> b!431321 (= res!253661 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12996 _keys!709))))))

(declare-fun b!431322 () Bool)

(declare-fun res!253662 () Bool)

(assert (=> b!431322 (=> (not res!253662) (not e!255239))))

(assert (=> b!431322 (= res!253662 (and (= (size!12997 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12996 _keys!709) (size!12997 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!431323 () Bool)

(assert (=> b!431323 (= e!255239 e!255242)))

(declare-fun res!253660 () Bool)

(assert (=> b!431323 (=> (not res!253660) (not e!255242))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26395 (_ BitVec 32)) Bool)

(assert (=> b!431323 (= res!253660 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!197601 mask!1025))))

(assert (=> b!431323 (= lt!197601 (array!26396 (store (arr!12644 _keys!709) i!563 k!794) (size!12996 _keys!709)))))

(declare-fun b!431324 () Bool)

(declare-fun res!253663 () Bool)

(assert (=> b!431324 (=> (not res!253663) (not e!255242))))

(declare-datatypes ((List!7491 0))(
  ( (Nil!7488) (Cons!7487 (h!8343 (_ BitVec 64)) (t!13087 List!7491)) )
))
(declare-fun arrayNoDuplicates!0 (array!26395 (_ BitVec 32) List!7491) Bool)

(assert (=> b!431324 (= res!253663 (arrayNoDuplicates!0 lt!197601 #b00000000000000000000000000000000 Nil!7488))))

(declare-fun b!431325 () Bool)

(declare-fun res!253659 () Bool)

(assert (=> b!431325 (=> (not res!253659) (not e!255239))))

(assert (=> b!431325 (= res!253659 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7488))))

(declare-fun b!431326 () Bool)

(declare-fun res!253656 () Bool)

(assert (=> b!431326 (=> (not res!253656) (not e!255239))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!431326 (= res!253656 (validKeyInArray!0 k!794))))

(declare-fun b!431327 () Bool)

(assert (=> b!431327 (= e!255237 true)))

(declare-fun lt!197593 () tuple2!7438)

(declare-fun lt!197599 () ListLongMap!6365)

(assert (=> b!431327 (= lt!197600 (+!1346 (+!1346 lt!197599 lt!197606) lt!197593))))

(declare-fun lt!197607 () Unit!12683)

(declare-fun addCommutativeForDiffKeys!361 (ListLongMap!6365 (_ BitVec 64) V!16159 (_ BitVec 64) V!16159) Unit!12683)

(assert (=> b!431327 (= lt!197607 (addCommutativeForDiffKeys!361 lt!197599 k!794 v!412 (select (arr!12644 _keys!709) from!863) lt!197604))))

(declare-fun res!253664 () Bool)

(assert (=> start!39880 (=> (not res!253664) (not e!255239))))

(assert (=> start!39880 (= res!253664 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12996 _keys!709))))))

(assert (=> start!39880 e!255239))

(assert (=> start!39880 tp_is_empty!11291))

(assert (=> start!39880 tp!35945))

(assert (=> start!39880 true))

(declare-fun e!255244 () Bool)

(declare-fun array_inv!9194 (array!26397) Bool)

(assert (=> start!39880 (and (array_inv!9194 _values!549) e!255244)))

(declare-fun array_inv!9195 (array!26395) Bool)

(assert (=> start!39880 (array_inv!9195 _keys!709)))

(declare-fun mapIsEmpty!18558 () Bool)

(assert (=> mapIsEmpty!18558 mapRes!18558))

(declare-fun b!431328 () Bool)

(declare-fun res!253651 () Bool)

(assert (=> b!431328 (=> (not res!253651) (not e!255239))))

(assert (=> b!431328 (= res!253651 (or (= (select (arr!12644 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12644 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!431329 () Bool)

(assert (=> b!431329 (= e!255244 (and e!255235 mapRes!18558))))

(declare-fun condMapEmpty!18558 () Bool)

(declare-fun mapDefault!18558 () ValueCell!5302)

