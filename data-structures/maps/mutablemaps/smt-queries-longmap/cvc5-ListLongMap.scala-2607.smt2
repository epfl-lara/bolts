; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39468 () Bool)

(assert start!39468)

(declare-fun b_free!9727 () Bool)

(declare-fun b_next!9727 () Bool)

(assert (=> start!39468 (= b_free!9727 (not b_next!9727))))

(declare-fun tp!34710 () Bool)

(declare-fun b_and!17347 () Bool)

(assert (=> start!39468 (= tp!34710 b_and!17347)))

(declare-fun b!420539 () Bool)

(declare-fun res!245411 () Bool)

(declare-fun e!250460 () Bool)

(assert (=> b!420539 (=> (not res!245411) (not e!250460))))

(declare-datatypes ((array!25585 0))(
  ( (array!25586 (arr!12239 (Array (_ BitVec 32) (_ BitVec 64))) (size!12591 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25585)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!420539 (= res!245411 (or (= (select (arr!12239 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12239 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!420540 () Bool)

(declare-fun res!245406 () Bool)

(assert (=> b!420540 (=> (not res!245406) (not e!250460))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25585 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!420540 (= res!245406 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!420541 () Bool)

(declare-datatypes ((V!15611 0))(
  ( (V!15612 (val!5484 Int)) )
))
(declare-datatypes ((tuple2!7114 0))(
  ( (tuple2!7115 (_1!3567 (_ BitVec 64)) (_2!3567 V!15611)) )
))
(declare-datatypes ((List!7158 0))(
  ( (Nil!7155) (Cons!7154 (h!8010 tuple2!7114) (t!12558 List!7158)) )
))
(declare-datatypes ((ListLongMap!6041 0))(
  ( (ListLongMap!6042 (toList!3036 List!7158)) )
))
(declare-fun call!29357 () ListLongMap!6041)

(declare-fun e!250459 () Bool)

(declare-fun v!412 () V!15611)

(declare-fun call!29356 () ListLongMap!6041)

(declare-fun +!1241 (ListLongMap!6041 tuple2!7114) ListLongMap!6041)

(assert (=> b!420541 (= e!250459 (= call!29357 (+!1241 call!29356 (tuple2!7115 k!794 v!412))))))

(declare-fun b!420542 () Bool)

(declare-fun e!250463 () Bool)

(declare-fun e!250465 () Bool)

(assert (=> b!420542 (= e!250463 e!250465)))

(declare-fun res!245409 () Bool)

(assert (=> b!420542 (=> (not res!245409) (not e!250465))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!420542 (= res!245409 (= from!863 i!563))))

(declare-fun minValue!515 () V!15611)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5096 0))(
  ( (ValueCellFull!5096 (v!7727 V!15611)) (EmptyCell!5096) )
))
(declare-datatypes ((array!25587 0))(
  ( (array!25588 (arr!12240 (Array (_ BitVec 32) ValueCell!5096)) (size!12592 (_ BitVec 32))) )
))
(declare-fun lt!193035 () array!25587)

(declare-fun zeroValue!515 () V!15611)

(declare-fun lt!193034 () ListLongMap!6041)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!193038 () array!25585)

(declare-fun getCurrentListMapNoExtraKeys!1237 (array!25585 array!25587 (_ BitVec 32) (_ BitVec 32) V!15611 V!15611 (_ BitVec 32) Int) ListLongMap!6041)

(assert (=> b!420542 (= lt!193034 (getCurrentListMapNoExtraKeys!1237 lt!193038 lt!193035 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!25587)

(assert (=> b!420542 (= lt!193035 (array!25588 (store (arr!12240 _values!549) i!563 (ValueCellFull!5096 v!412)) (size!12592 _values!549)))))

(declare-fun lt!193041 () ListLongMap!6041)

(assert (=> b!420542 (= lt!193041 (getCurrentListMapNoExtraKeys!1237 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!420543 () Bool)

(declare-fun e!250457 () Bool)

(assert (=> b!420543 (= e!250465 (not e!250457))))

(declare-fun res!245413 () Bool)

(assert (=> b!420543 (=> res!245413 e!250457)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!420543 (= res!245413 (validKeyInArray!0 (select (arr!12239 _keys!709) from!863)))))

(assert (=> b!420543 e!250459))

(declare-fun c!55229 () Bool)

(assert (=> b!420543 (= c!55229 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12381 0))(
  ( (Unit!12382) )
))
(declare-fun lt!193032 () Unit!12381)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!445 (array!25585 array!25587 (_ BitVec 32) (_ BitVec 32) V!15611 V!15611 (_ BitVec 32) (_ BitVec 64) V!15611 (_ BitVec 32) Int) Unit!12381)

(assert (=> b!420543 (= lt!193032 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!445 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!420544 () Bool)

(declare-fun res!245418 () Bool)

(assert (=> b!420544 (=> (not res!245418) (not e!250463))))

(declare-datatypes ((List!7159 0))(
  ( (Nil!7156) (Cons!7155 (h!8011 (_ BitVec 64)) (t!12559 List!7159)) )
))
(declare-fun arrayNoDuplicates!0 (array!25585 (_ BitVec 32) List!7159) Bool)

(assert (=> b!420544 (= res!245418 (arrayNoDuplicates!0 lt!193038 #b00000000000000000000000000000000 Nil!7156))))

(declare-fun b!420546 () Bool)

(declare-fun e!250462 () Bool)

(declare-fun tp_is_empty!10879 () Bool)

(assert (=> b!420546 (= e!250462 tp_is_empty!10879)))

(declare-fun b!420547 () Bool)

(declare-fun e!250458 () Bool)

(assert (=> b!420547 (= e!250458 tp_is_empty!10879)))

(declare-fun b!420548 () Bool)

(declare-fun res!245408 () Bool)

(assert (=> b!420548 (=> (not res!245408) (not e!250460))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25585 (_ BitVec 32)) Bool)

(assert (=> b!420548 (= res!245408 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!420549 () Bool)

(declare-fun res!245416 () Bool)

(assert (=> b!420549 (=> (not res!245416) (not e!250460))))

(assert (=> b!420549 (= res!245416 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7156))))

(declare-fun b!420550 () Bool)

(assert (=> b!420550 (= e!250459 (= call!29356 call!29357))))

(declare-fun b!420551 () Bool)

(assert (=> b!420551 (= e!250460 e!250463)))

(declare-fun res!245405 () Bool)

(assert (=> b!420551 (=> (not res!245405) (not e!250463))))

(assert (=> b!420551 (= res!245405 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!193038 mask!1025))))

(assert (=> b!420551 (= lt!193038 (array!25586 (store (arr!12239 _keys!709) i!563 k!794) (size!12591 _keys!709)))))

(declare-fun b!420552 () Bool)

(declare-fun e!250461 () Bool)

(declare-fun mapRes!17940 () Bool)

(assert (=> b!420552 (= e!250461 (and e!250458 mapRes!17940))))

(declare-fun condMapEmpty!17940 () Bool)

(declare-fun mapDefault!17940 () ValueCell!5096)

