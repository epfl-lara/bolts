; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39328 () Bool)

(assert start!39328)

(declare-fun b_free!9587 () Bool)

(declare-fun b_next!9587 () Bool)

(assert (=> start!39328 (= b_free!9587 (not b_next!9587))))

(declare-fun tp!34290 () Bool)

(declare-fun b_and!17067 () Bool)

(assert (=> start!39328 (= tp!34290 b_and!17067)))

(declare-fun b!416409 () Bool)

(declare-fun e!248568 () Bool)

(declare-fun tp_is_empty!10739 () Bool)

(assert (=> b!416409 (= e!248568 tp_is_empty!10739)))

(declare-fun e!248572 () Bool)

(declare-fun b!416410 () Bool)

(declare-datatypes ((V!15423 0))(
  ( (V!15424 (val!5414 Int)) )
))
(declare-datatypes ((tuple2!6988 0))(
  ( (tuple2!6989 (_1!3504 (_ BitVec 64)) (_2!3504 V!15423)) )
))
(declare-datatypes ((List!7041 0))(
  ( (Nil!7038) (Cons!7037 (h!7893 tuple2!6988) (t!12301 List!7041)) )
))
(declare-datatypes ((ListLongMap!5915 0))(
  ( (ListLongMap!5916 (toList!2973 List!7041)) )
))
(declare-fun call!28936 () ListLongMap!5915)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!15423)

(declare-fun call!28937 () ListLongMap!5915)

(declare-fun +!1185 (ListLongMap!5915 tuple2!6988) ListLongMap!5915)

(assert (=> b!416410 (= e!248572 (= call!28937 (+!1185 call!28936 (tuple2!6989 k!794 v!412))))))

(declare-fun b!416412 () Bool)

(assert (=> b!416412 (= e!248572 (= call!28936 call!28937))))

(declare-fun b!416413 () Bool)

(declare-fun res!242473 () Bool)

(declare-fun e!248569 () Bool)

(assert (=> b!416413 (=> (not res!242473) (not e!248569))))

(declare-datatypes ((array!25313 0))(
  ( (array!25314 (arr!12103 (Array (_ BitVec 32) (_ BitVec 64))) (size!12455 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25313)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5026 0))(
  ( (ValueCellFull!5026 (v!7657 V!15423)) (EmptyCell!5026) )
))
(declare-datatypes ((array!25315 0))(
  ( (array!25316 (arr!12104 (Array (_ BitVec 32) ValueCell!5026)) (size!12456 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25315)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!416413 (= res!242473 (and (= (size!12456 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12455 _keys!709) (size!12456 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!416414 () Bool)

(declare-fun e!248575 () Bool)

(assert (=> b!416414 (= e!248569 e!248575)))

(declare-fun res!242474 () Bool)

(assert (=> b!416414 (=> (not res!242474) (not e!248575))))

(declare-fun lt!190731 () array!25313)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25313 (_ BitVec 32)) Bool)

(assert (=> b!416414 (= res!242474 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190731 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!416414 (= lt!190731 (array!25314 (store (arr!12103 _keys!709) i!563 k!794) (size!12455 _keys!709)))))

(declare-fun mapNonEmpty!17730 () Bool)

(declare-fun mapRes!17730 () Bool)

(declare-fun tp!34289 () Bool)

(assert (=> mapNonEmpty!17730 (= mapRes!17730 (and tp!34289 e!248568))))

(declare-fun mapValue!17730 () ValueCell!5026)

(declare-fun mapRest!17730 () (Array (_ BitVec 32) ValueCell!5026))

(declare-fun mapKey!17730 () (_ BitVec 32))

(assert (=> mapNonEmpty!17730 (= (arr!12104 _values!549) (store mapRest!17730 mapKey!17730 mapValue!17730))))

(declare-fun b!416415 () Bool)

(declare-fun res!242478 () Bool)

(assert (=> b!416415 (=> (not res!242478) (not e!248569))))

(declare-datatypes ((List!7042 0))(
  ( (Nil!7039) (Cons!7038 (h!7894 (_ BitVec 64)) (t!12302 List!7042)) )
))
(declare-fun arrayNoDuplicates!0 (array!25313 (_ BitVec 32) List!7042) Bool)

(assert (=> b!416415 (= res!242478 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7039))))

(declare-fun b!416416 () Bool)

(declare-fun e!248574 () Bool)

(declare-fun e!248567 () Bool)

(assert (=> b!416416 (= e!248574 (not e!248567))))

(declare-fun res!242465 () Bool)

(assert (=> b!416416 (=> res!242465 e!248567)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!416416 (= res!242465 (validKeyInArray!0 (select (arr!12103 _keys!709) from!863)))))

(assert (=> b!416416 e!248572))

(declare-fun c!55019 () Bool)

(assert (=> b!416416 (= c!55019 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!15423)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((Unit!12269 0))(
  ( (Unit!12270) )
))
(declare-fun lt!190727 () Unit!12269)

(declare-fun zeroValue!515 () V!15423)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!396 (array!25313 array!25315 (_ BitVec 32) (_ BitVec 32) V!15423 V!15423 (_ BitVec 32) (_ BitVec 64) V!15423 (_ BitVec 32) Int) Unit!12269)

(assert (=> b!416416 (= lt!190727 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!396 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416417 () Bool)

(declare-fun res!242476 () Bool)

(assert (=> b!416417 (=> (not res!242476) (not e!248569))))

(assert (=> b!416417 (= res!242476 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!416418 () Bool)

(declare-fun res!242471 () Bool)

(assert (=> b!416418 (=> (not res!242471) (not e!248575))))

(assert (=> b!416418 (= res!242471 (arrayNoDuplicates!0 lt!190731 #b00000000000000000000000000000000 Nil!7039))))

(declare-fun b!416419 () Bool)

(declare-fun res!242469 () Bool)

(assert (=> b!416419 (=> (not res!242469) (not e!248575))))

(assert (=> b!416419 (= res!242469 (bvsle from!863 i!563))))

(declare-fun b!416420 () Bool)

(declare-fun e!248571 () Bool)

(declare-fun e!248570 () Bool)

(assert (=> b!416420 (= e!248571 (and e!248570 mapRes!17730))))

(declare-fun condMapEmpty!17730 () Bool)

(declare-fun mapDefault!17730 () ValueCell!5026)

