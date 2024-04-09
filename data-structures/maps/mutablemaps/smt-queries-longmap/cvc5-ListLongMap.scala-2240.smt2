; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36910 () Bool)

(assert start!36910)

(declare-fun b_free!8029 () Bool)

(declare-fun b_next!8029 () Bool)

(assert (=> start!36910 (= b_free!8029 (not b_next!8029))))

(declare-fun tp!28803 () Bool)

(declare-fun b_and!15289 () Bool)

(assert (=> start!36910 (= tp!28803 b_and!15289)))

(declare-fun b!369410 () Bool)

(declare-fun res!207343 () Bool)

(declare-fun e!225768 () Bool)

(assert (=> b!369410 (=> (not res!207343) (not e!225768))))

(declare-datatypes ((array!21277 0))(
  ( (array!21278 (arr!10104 (Array (_ BitVec 32) (_ BitVec 64))) (size!10456 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21277)

(declare-datatypes ((List!5667 0))(
  ( (Nil!5664) (Cons!5663 (h!6519 (_ BitVec 64)) (t!10825 List!5667)) )
))
(declare-fun arrayNoDuplicates!0 (array!21277 (_ BitVec 32) List!5667) Bool)

(assert (=> b!369410 (= res!207343 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5664))))

(declare-fun b!369411 () Bool)

(declare-fun res!207341 () Bool)

(assert (=> b!369411 (=> (not res!207341) (not e!225768))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21277 (_ BitVec 32)) Bool)

(assert (=> b!369411 (= res!207341 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun res!207337 () Bool)

(assert (=> start!36910 (=> (not res!207337) (not e!225768))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36910 (= res!207337 (validMask!0 mask!970))))

(assert (=> start!36910 e!225768))

(declare-datatypes ((V!12675 0))(
  ( (V!12676 (val!4383 Int)) )
))
(declare-datatypes ((ValueCell!3995 0))(
  ( (ValueCellFull!3995 (v!6576 V!12675)) (EmptyCell!3995) )
))
(declare-datatypes ((array!21279 0))(
  ( (array!21280 (arr!10105 (Array (_ BitVec 32) ValueCell!3995)) (size!10457 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21279)

(declare-fun e!225767 () Bool)

(declare-fun array_inv!7466 (array!21279) Bool)

(assert (=> start!36910 (and (array_inv!7466 _values!506) e!225767)))

(assert (=> start!36910 tp!28803))

(assert (=> start!36910 true))

(declare-fun tp_is_empty!8677 () Bool)

(assert (=> start!36910 tp_is_empty!8677))

(declare-fun array_inv!7467 (array!21277) Bool)

(assert (=> start!36910 (array_inv!7467 _keys!658)))

(declare-fun b!369412 () Bool)

(declare-fun e!225764 () Bool)

(assert (=> b!369412 (= e!225764 false)))

(declare-fun zeroValue!472 () V!12675)

(declare-fun lt!169738 () array!21277)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!12675)

(declare-datatypes ((tuple2!5806 0))(
  ( (tuple2!5807 (_1!2913 (_ BitVec 64)) (_2!2913 V!12675)) )
))
(declare-datatypes ((List!5668 0))(
  ( (Nil!5665) (Cons!5664 (h!6520 tuple2!5806) (t!10826 List!5668)) )
))
(declare-datatypes ((ListLongMap!4733 0))(
  ( (ListLongMap!4734 (toList!2382 List!5668)) )
))
(declare-fun lt!169736 () ListLongMap!4733)

(declare-fun defaultEntry!514 () Int)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun minValue!472 () V!12675)

(declare-fun getCurrentListMapNoExtraKeys!650 (array!21277 array!21279 (_ BitVec 32) (_ BitVec 32) V!12675 V!12675 (_ BitVec 32) Int) ListLongMap!4733)

(assert (=> b!369412 (= lt!169736 (getCurrentListMapNoExtraKeys!650 lt!169738 (array!21280 (store (arr!10105 _values!506) i!548 (ValueCellFull!3995 v!373)) (size!10457 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!169737 () ListLongMap!4733)

(assert (=> b!369412 (= lt!169737 (getCurrentListMapNoExtraKeys!650 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapNonEmpty!14580 () Bool)

(declare-fun mapRes!14580 () Bool)

(declare-fun tp!28802 () Bool)

(declare-fun e!225765 () Bool)

(assert (=> mapNonEmpty!14580 (= mapRes!14580 (and tp!28802 e!225765))))

(declare-fun mapRest!14580 () (Array (_ BitVec 32) ValueCell!3995))

(declare-fun mapKey!14580 () (_ BitVec 32))

(declare-fun mapValue!14580 () ValueCell!3995)

(assert (=> mapNonEmpty!14580 (= (arr!10105 _values!506) (store mapRest!14580 mapKey!14580 mapValue!14580))))

(declare-fun b!369413 () Bool)

(assert (=> b!369413 (= e!225765 tp_is_empty!8677)))

(declare-fun b!369414 () Bool)

(declare-fun e!225766 () Bool)

(assert (=> b!369414 (= e!225766 tp_is_empty!8677)))

(declare-fun b!369415 () Bool)

(assert (=> b!369415 (= e!225768 e!225764)))

(declare-fun res!207339 () Bool)

(assert (=> b!369415 (=> (not res!207339) (not e!225764))))

(assert (=> b!369415 (= res!207339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169738 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!369415 (= lt!169738 (array!21278 (store (arr!10104 _keys!658) i!548 k!778) (size!10456 _keys!658)))))

(declare-fun b!369416 () Bool)

(declare-fun res!207335 () Bool)

(assert (=> b!369416 (=> (not res!207335) (not e!225768))))

(assert (=> b!369416 (= res!207335 (and (= (size!10457 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10456 _keys!658) (size!10457 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!369417 () Bool)

(declare-fun res!207338 () Bool)

(assert (=> b!369417 (=> (not res!207338) (not e!225768))))

(assert (=> b!369417 (= res!207338 (or (= (select (arr!10104 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10104 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!369418 () Bool)

(declare-fun res!207340 () Bool)

(assert (=> b!369418 (=> (not res!207340) (not e!225768))))

(assert (=> b!369418 (= res!207340 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10456 _keys!658))))))

(declare-fun b!369419 () Bool)

(declare-fun res!207336 () Bool)

(assert (=> b!369419 (=> (not res!207336) (not e!225768))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!369419 (= res!207336 (validKeyInArray!0 k!778))))

(declare-fun b!369420 () Bool)

(declare-fun res!207344 () Bool)

(assert (=> b!369420 (=> (not res!207344) (not e!225764))))

(assert (=> b!369420 (= res!207344 (arrayNoDuplicates!0 lt!169738 #b00000000000000000000000000000000 Nil!5664))))

(declare-fun b!369421 () Bool)

(assert (=> b!369421 (= e!225767 (and e!225766 mapRes!14580))))

(declare-fun condMapEmpty!14580 () Bool)

(declare-fun mapDefault!14580 () ValueCell!3995)

