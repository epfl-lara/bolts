; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39400 () Bool)

(assert start!39400)

(declare-fun b_free!9659 () Bool)

(declare-fun b_next!9659 () Bool)

(assert (=> start!39400 (= b_free!9659 (not b_next!9659))))

(declare-fun tp!34506 () Bool)

(declare-fun b_and!17211 () Bool)

(assert (=> start!39400 (= tp!34506 b_and!17211)))

(declare-fun b!418533 () Bool)

(declare-fun e!249545 () Bool)

(declare-datatypes ((V!15519 0))(
  ( (V!15520 (val!5450 Int)) )
))
(declare-datatypes ((tuple2!7054 0))(
  ( (tuple2!7055 (_1!3537 (_ BitVec 64)) (_2!3537 V!15519)) )
))
(declare-datatypes ((List!7105 0))(
  ( (Nil!7102) (Cons!7101 (h!7957 tuple2!7054) (t!12437 List!7105)) )
))
(declare-datatypes ((ListLongMap!5981 0))(
  ( (ListLongMap!5982 (toList!3006 List!7105)) )
))
(declare-fun call!29152 () ListLongMap!5981)

(declare-fun call!29153 () ListLongMap!5981)

(assert (=> b!418533 (= e!249545 (= call!29152 call!29153))))

(declare-fun mapNonEmpty!17838 () Bool)

(declare-fun mapRes!17838 () Bool)

(declare-fun tp!34505 () Bool)

(declare-fun e!249547 () Bool)

(assert (=> mapNonEmpty!17838 (= mapRes!17838 (and tp!34505 e!249547))))

(declare-fun mapKey!17838 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5062 0))(
  ( (ValueCellFull!5062 (v!7693 V!15519)) (EmptyCell!5062) )
))
(declare-datatypes ((array!25453 0))(
  ( (array!25454 (arr!12173 (Array (_ BitVec 32) ValueCell!5062)) (size!12525 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25453)

(declare-fun mapRest!17838 () (Array (_ BitVec 32) ValueCell!5062))

(declare-fun mapValue!17838 () ValueCell!5062)

(assert (=> mapNonEmpty!17838 (= (arr!12173 _values!549) (store mapRest!17838 mapKey!17838 mapValue!17838))))

(declare-fun minValue!515 () V!15519)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15519)

(declare-fun lt!191913 () array!25453)

(declare-fun c!55127 () Bool)

(declare-datatypes ((array!25455 0))(
  ( (array!25456 (arr!12174 (Array (_ BitVec 32) (_ BitVec 64))) (size!12526 (_ BitVec 32))) )
))
(declare-fun lt!191916 () array!25455)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun _keys!709 () array!25455)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun bm!29149 () Bool)

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1209 (array!25455 array!25453 (_ BitVec 32) (_ BitVec 32) V!15519 V!15519 (_ BitVec 32) Int) ListLongMap!5981)

(assert (=> bm!29149 (= call!29152 (getCurrentListMapNoExtraKeys!1209 (ite c!55127 _keys!709 lt!191916) (ite c!55127 _values!549 lt!191913) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418534 () Bool)

(declare-fun res!243987 () Bool)

(declare-fun e!249542 () Bool)

(assert (=> b!418534 (=> (not res!243987) (not e!249542))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!418534 (= res!243987 (bvsle from!863 i!563))))

(declare-fun b!418535 () Bool)

(declare-fun e!249543 () Bool)

(assert (=> b!418535 (= e!249543 e!249542)))

(declare-fun res!243988 () Bool)

(assert (=> b!418535 (=> (not res!243988) (not e!249542))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25455 (_ BitVec 32)) Bool)

(assert (=> b!418535 (= res!243988 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!191916 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!418535 (= lt!191916 (array!25456 (store (arr!12174 _keys!709) i!563 k!794) (size!12526 _keys!709)))))

(declare-fun b!418536 () Bool)

(declare-fun res!243977 () Bool)

(assert (=> b!418536 (=> (not res!243977) (not e!249543))))

(declare-fun arrayContainsKey!0 (array!25455 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!418536 (= res!243977 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun res!243985 () Bool)

(assert (=> start!39400 (=> (not res!243985) (not e!249543))))

(assert (=> start!39400 (= res!243985 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12526 _keys!709))))))

(assert (=> start!39400 e!249543))

(declare-fun tp_is_empty!10811 () Bool)

(assert (=> start!39400 tp_is_empty!10811))

(assert (=> start!39400 tp!34506))

(assert (=> start!39400 true))

(declare-fun e!249544 () Bool)

(declare-fun array_inv!8878 (array!25453) Bool)

(assert (=> start!39400 (and (array_inv!8878 _values!549) e!249544)))

(declare-fun array_inv!8879 (array!25455) Bool)

(assert (=> start!39400 (array_inv!8879 _keys!709)))

(declare-fun b!418537 () Bool)

(assert (=> b!418537 (= e!249547 tp_is_empty!10811)))

(declare-fun bm!29150 () Bool)

(assert (=> bm!29150 (= call!29153 (getCurrentListMapNoExtraKeys!1209 (ite c!55127 lt!191916 _keys!709) (ite c!55127 lt!191913 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418538 () Bool)

(declare-fun e!249540 () Bool)

(declare-fun e!249546 () Bool)

(assert (=> b!418538 (= e!249540 (not e!249546))))

(declare-fun res!243981 () Bool)

(assert (=> b!418538 (=> res!243981 e!249546)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!418538 (= res!243981 (validKeyInArray!0 (select (arr!12174 _keys!709) from!863)))))

(assert (=> b!418538 e!249545))

(assert (=> b!418538 (= c!55127 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun v!412 () V!15519)

(declare-datatypes ((Unit!12331 0))(
  ( (Unit!12332) )
))
(declare-fun lt!191919 () Unit!12331)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!423 (array!25455 array!25453 (_ BitVec 32) (_ BitVec 32) V!15519 V!15519 (_ BitVec 32) (_ BitVec 64) V!15519 (_ BitVec 32) Int) Unit!12331)

(assert (=> b!418538 (= lt!191919 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!423 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418539 () Bool)

(assert (=> b!418539 (= e!249542 e!249540)))

(declare-fun res!243980 () Bool)

(assert (=> b!418539 (=> (not res!243980) (not e!249540))))

(assert (=> b!418539 (= res!243980 (= from!863 i!563))))

(declare-fun lt!191917 () ListLongMap!5981)

(assert (=> b!418539 (= lt!191917 (getCurrentListMapNoExtraKeys!1209 lt!191916 lt!191913 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!418539 (= lt!191913 (array!25454 (store (arr!12173 _values!549) i!563 (ValueCellFull!5062 v!412)) (size!12525 _values!549)))))

(declare-fun lt!191911 () ListLongMap!5981)

(assert (=> b!418539 (= lt!191911 (getCurrentListMapNoExtraKeys!1209 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!418540 () Bool)

(declare-fun e!249541 () Bool)

(assert (=> b!418540 (= e!249544 (and e!249541 mapRes!17838))))

(declare-fun condMapEmpty!17838 () Bool)

(declare-fun mapDefault!17838 () ValueCell!5062)

