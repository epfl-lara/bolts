; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39498 () Bool)

(assert start!39498)

(declare-fun b_free!9757 () Bool)

(declare-fun b_next!9757 () Bool)

(assert (=> start!39498 (= b_free!9757 (not b_next!9757))))

(declare-fun tp!34800 () Bool)

(declare-fun b_and!17407 () Bool)

(assert (=> start!39498 (= tp!34800 b_and!17407)))

(declare-fun b!421424 () Bool)

(declare-fun res!246038 () Bool)

(declare-fun e!250867 () Bool)

(assert (=> b!421424 (=> (not res!246038) (not e!250867))))

(declare-datatypes ((array!25645 0))(
  ( (array!25646 (arr!12269 (Array (_ BitVec 32) (_ BitVec 64))) (size!12621 (_ BitVec 32))) )
))
(declare-fun lt!193531 () array!25645)

(declare-datatypes ((List!7182 0))(
  ( (Nil!7179) (Cons!7178 (h!8034 (_ BitVec 64)) (t!12612 List!7182)) )
))
(declare-fun arrayNoDuplicates!0 (array!25645 (_ BitVec 32) List!7182) Bool)

(assert (=> b!421424 (= res!246038 (arrayNoDuplicates!0 lt!193531 #b00000000000000000000000000000000 Nil!7179))))

(declare-datatypes ((V!15651 0))(
  ( (V!15652 (val!5499 Int)) )
))
(declare-fun minValue!515 () V!15651)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5111 0))(
  ( (ValueCellFull!5111 (v!7742 V!15651)) (EmptyCell!5111) )
))
(declare-datatypes ((array!25647 0))(
  ( (array!25648 (arr!12270 (Array (_ BitVec 32) ValueCell!5111)) (size!12622 (_ BitVec 32))) )
))
(declare-fun lt!193529 () array!25647)

(declare-fun _values!549 () array!25647)

(declare-fun zeroValue!515 () V!15651)

(declare-datatypes ((tuple2!7140 0))(
  ( (tuple2!7141 (_1!3580 (_ BitVec 64)) (_2!3580 V!15651)) )
))
(declare-datatypes ((List!7183 0))(
  ( (Nil!7180) (Cons!7179 (h!8035 tuple2!7140) (t!12613 List!7183)) )
))
(declare-datatypes ((ListLongMap!6067 0))(
  ( (ListLongMap!6068 (toList!3049 List!7183)) )
))
(declare-fun call!29447 () ListLongMap!6067)

(declare-fun _keys!709 () array!25645)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun c!55274 () Bool)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun bm!29443 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1250 (array!25645 array!25647 (_ BitVec 32) (_ BitVec 32) V!15651 V!15651 (_ BitVec 32) Int) ListLongMap!6067)

(assert (=> bm!29443 (= call!29447 (getCurrentListMapNoExtraKeys!1250 (ite c!55274 lt!193531 _keys!709) (ite c!55274 lt!193529 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421425 () Bool)

(declare-fun e!250869 () Bool)

(assert (=> b!421425 (= e!250867 e!250869)))

(declare-fun res!246044 () Bool)

(assert (=> b!421425 (=> (not res!246044) (not e!250869))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!421425 (= res!246044 (= from!863 i!563))))

(declare-fun lt!193532 () ListLongMap!6067)

(assert (=> b!421425 (= lt!193532 (getCurrentListMapNoExtraKeys!1250 lt!193531 lt!193529 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15651)

(assert (=> b!421425 (= lt!193529 (array!25648 (store (arr!12270 _values!549) i!563 (ValueCellFull!5111 v!412)) (size!12622 _values!549)))))

(declare-fun lt!193528 () ListLongMap!6067)

(assert (=> b!421425 (= lt!193528 (getCurrentListMapNoExtraKeys!1250 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!421426 () Bool)

(declare-fun res!246048 () Bool)

(declare-fun e!250870 () Bool)

(assert (=> b!421426 (=> (not res!246048) (not e!250870))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25645 (_ BitVec 32)) Bool)

(assert (=> b!421426 (= res!246048 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!421427 () Bool)

(declare-fun res!246040 () Bool)

(assert (=> b!421427 (=> (not res!246040) (not e!250867))))

(assert (=> b!421427 (= res!246040 (bvsle from!863 i!563))))

(declare-fun b!421428 () Bool)

(declare-fun e!250865 () Bool)

(assert (=> b!421428 (= e!250869 (not e!250865))))

(declare-fun res!246046 () Bool)

(assert (=> b!421428 (=> res!246046 e!250865)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!421428 (= res!246046 (validKeyInArray!0 (select (arr!12269 _keys!709) from!863)))))

(declare-fun e!250864 () Bool)

(assert (=> b!421428 e!250864))

(assert (=> b!421428 (= c!55274 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12405 0))(
  ( (Unit!12406) )
))
(declare-fun lt!193526 () Unit!12405)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!455 (array!25645 array!25647 (_ BitVec 32) (_ BitVec 32) V!15651 V!15651 (_ BitVec 32) (_ BitVec 64) V!15651 (_ BitVec 32) Int) Unit!12405)

(assert (=> b!421428 (= lt!193526 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!455 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!17985 () Bool)

(declare-fun mapRes!17985 () Bool)

(assert (=> mapIsEmpty!17985 mapRes!17985))

(declare-fun b!421429 () Bool)

(assert (=> b!421429 (= e!250870 e!250867)))

(declare-fun res!246043 () Bool)

(assert (=> b!421429 (=> (not res!246043) (not e!250867))))

(assert (=> b!421429 (= res!246043 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!193531 mask!1025))))

(assert (=> b!421429 (= lt!193531 (array!25646 (store (arr!12269 _keys!709) i!563 k!794) (size!12621 _keys!709)))))

(declare-fun b!421430 () Bool)

(declare-fun res!246036 () Bool)

(assert (=> b!421430 (=> (not res!246036) (not e!250870))))

(declare-fun arrayContainsKey!0 (array!25645 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!421430 (= res!246036 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!421431 () Bool)

(declare-fun res!246042 () Bool)

(assert (=> b!421431 (=> (not res!246042) (not e!250870))))

(assert (=> b!421431 (= res!246042 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12621 _keys!709))))))

(declare-fun b!421432 () Bool)

(declare-fun e!250868 () Bool)

(declare-fun tp_is_empty!10909 () Bool)

(assert (=> b!421432 (= e!250868 tp_is_empty!10909)))

(declare-fun b!421433 () Bool)

(declare-fun e!250863 () Bool)

(assert (=> b!421433 (= e!250863 tp_is_empty!10909)))

(declare-fun b!421434 () Bool)

(declare-fun e!250862 () Bool)

(assert (=> b!421434 (= e!250862 (and e!250868 mapRes!17985))))

(declare-fun condMapEmpty!17985 () Bool)

(declare-fun mapDefault!17985 () ValueCell!5111)

