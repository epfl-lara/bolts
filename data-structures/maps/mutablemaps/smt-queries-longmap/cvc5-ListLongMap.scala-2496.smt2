; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38802 () Bool)

(assert start!38802)

(declare-fun b!404480 () Bool)

(declare-fun e!243314 () Bool)

(assert (=> b!404480 (= e!243314 false)))

(declare-fun lt!188180 () Bool)

(declare-datatypes ((array!24289 0))(
  ( (array!24290 (arr!11591 (Array (_ BitVec 32) (_ BitVec 64))) (size!11943 (_ BitVec 32))) )
))
(declare-fun lt!188181 () array!24289)

(declare-datatypes ((List!6725 0))(
  ( (Nil!6722) (Cons!6721 (h!7577 (_ BitVec 64)) (t!11907 List!6725)) )
))
(declare-fun arrayNoDuplicates!0 (array!24289 (_ BitVec 32) List!6725) Bool)

(assert (=> b!404480 (= lt!188180 (arrayNoDuplicates!0 lt!188181 #b00000000000000000000000000000000 Nil!6722))))

(declare-fun b!404481 () Bool)

(declare-fun res!233375 () Bool)

(declare-fun e!243319 () Bool)

(assert (=> b!404481 (=> (not res!233375) (not e!243319))))

(declare-fun _keys!709 () array!24289)

(assert (=> b!404481 (= res!233375 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6722))))

(declare-fun b!404482 () Bool)

(declare-fun res!233373 () Bool)

(assert (=> b!404482 (=> (not res!233373) (not e!243319))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14723 0))(
  ( (V!14724 (val!5151 Int)) )
))
(declare-datatypes ((ValueCell!4763 0))(
  ( (ValueCellFull!4763 (v!7394 V!14723)) (EmptyCell!4763) )
))
(declare-datatypes ((array!24291 0))(
  ( (array!24292 (arr!11592 (Array (_ BitVec 32) ValueCell!4763)) (size!11944 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24291)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!404482 (= res!233373 (and (= (size!11944 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11943 _keys!709) (size!11944 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!404483 () Bool)

(declare-fun e!243318 () Bool)

(declare-fun tp_is_empty!10213 () Bool)

(assert (=> b!404483 (= e!243318 tp_is_empty!10213)))

(declare-fun b!404484 () Bool)

(declare-fun res!233379 () Bool)

(assert (=> b!404484 (=> (not res!233379) (not e!243319))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24289 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!404484 (= res!233379 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!404485 () Bool)

(declare-fun res!233380 () Bool)

(assert (=> b!404485 (=> (not res!233380) (not e!243319))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!404485 (= res!233380 (validMask!0 mask!1025))))

(declare-fun b!404486 () Bool)

(declare-fun res!233382 () Bool)

(assert (=> b!404486 (=> (not res!233382) (not e!243319))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!404486 (= res!233382 (validKeyInArray!0 k!794))))

(declare-fun b!404487 () Bool)

(assert (=> b!404487 (= e!243319 e!243314)))

(declare-fun res!233376 () Bool)

(assert (=> b!404487 (=> (not res!233376) (not e!243314))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24289 (_ BitVec 32)) Bool)

(assert (=> b!404487 (= res!233376 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188181 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!404487 (= lt!188181 (array!24290 (store (arr!11591 _keys!709) i!563 k!794) (size!11943 _keys!709)))))

(declare-fun b!404488 () Bool)

(declare-fun res!233381 () Bool)

(assert (=> b!404488 (=> (not res!233381) (not e!243319))))

(assert (=> b!404488 (= res!233381 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!404489 () Bool)

(declare-fun res!233377 () Bool)

(assert (=> b!404489 (=> (not res!233377) (not e!243319))))

(assert (=> b!404489 (= res!233377 (or (= (select (arr!11591 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11591 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!404490 () Bool)

(declare-fun res!233374 () Bool)

(assert (=> b!404490 (=> (not res!233374) (not e!243319))))

(assert (=> b!404490 (= res!233374 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11943 _keys!709))))))

(declare-fun mapNonEmpty!16941 () Bool)

(declare-fun mapRes!16941 () Bool)

(declare-fun tp!33060 () Bool)

(assert (=> mapNonEmpty!16941 (= mapRes!16941 (and tp!33060 e!243318))))

(declare-fun mapRest!16941 () (Array (_ BitVec 32) ValueCell!4763))

(declare-fun mapKey!16941 () (_ BitVec 32))

(declare-fun mapValue!16941 () ValueCell!4763)

(assert (=> mapNonEmpty!16941 (= (arr!11592 _values!549) (store mapRest!16941 mapKey!16941 mapValue!16941))))

(declare-fun b!404491 () Bool)

(declare-fun e!243315 () Bool)

(assert (=> b!404491 (= e!243315 tp_is_empty!10213)))

(declare-fun b!404492 () Bool)

(declare-fun e!243317 () Bool)

(assert (=> b!404492 (= e!243317 (and e!243315 mapRes!16941))))

(declare-fun condMapEmpty!16941 () Bool)

(declare-fun mapDefault!16941 () ValueCell!4763)

