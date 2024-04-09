; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39670 () Bool)

(assert start!39670)

(declare-fun b_free!9929 () Bool)

(declare-fun b_next!9929 () Bool)

(assert (=> start!39670 (= b_free!9929 (not b_next!9929))))

(declare-fun tp!35316 () Bool)

(declare-fun b_and!17603 () Bool)

(assert (=> start!39670 (= tp!35316 b_and!17603)))

(declare-fun b!425516 () Bool)

(declare-fun res!249268 () Bool)

(declare-fun e!252578 () Bool)

(assert (=> b!425516 (=> (not res!249268) (not e!252578))))

(declare-datatypes ((array!25989 0))(
  ( (array!25990 (arr!12441 (Array (_ BitVec 32) (_ BitVec 64))) (size!12793 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25989)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25989 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!425516 (= res!249268 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!425517 () Bool)

(declare-fun e!252574 () Bool)

(declare-fun e!252577 () Bool)

(assert (=> b!425517 (= e!252574 e!252577)))

(declare-fun res!249267 () Bool)

(assert (=> b!425517 (=> (not res!249267) (not e!252577))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!425517 (= res!249267 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!15879 0))(
  ( (V!15880 (val!5585 Int)) )
))
(declare-datatypes ((tuple2!7276 0))(
  ( (tuple2!7277 (_1!3648 (_ BitVec 64)) (_2!3648 V!15879)) )
))
(declare-datatypes ((List!7321 0))(
  ( (Nil!7318) (Cons!7317 (h!8173 tuple2!7276) (t!12773 List!7321)) )
))
(declare-datatypes ((ListLongMap!6203 0))(
  ( (ListLongMap!6204 (toList!3117 List!7321)) )
))
(declare-fun lt!194700 () ListLongMap!6203)

(declare-fun minValue!515 () V!15879)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!194699 () array!25989)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5197 0))(
  ( (ValueCellFull!5197 (v!7828 V!15879)) (EmptyCell!5197) )
))
(declare-datatypes ((array!25991 0))(
  ( (array!25992 (arr!12442 (Array (_ BitVec 32) ValueCell!5197)) (size!12794 (_ BitVec 32))) )
))
(declare-fun lt!194697 () array!25991)

(declare-fun zeroValue!515 () V!15879)

(declare-fun getCurrentListMapNoExtraKeys!1318 (array!25989 array!25991 (_ BitVec 32) (_ BitVec 32) V!15879 V!15879 (_ BitVec 32) Int) ListLongMap!6203)

(assert (=> b!425517 (= lt!194700 (getCurrentListMapNoExtraKeys!1318 lt!194699 lt!194697 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!25991)

(declare-fun v!412 () V!15879)

(assert (=> b!425517 (= lt!194697 (array!25992 (store (arr!12442 _values!549) i!563 (ValueCellFull!5197 v!412)) (size!12794 _values!549)))))

(declare-fun lt!194696 () ListLongMap!6203)

(assert (=> b!425517 (= lt!194696 (getCurrentListMapNoExtraKeys!1318 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!425518 () Bool)

(declare-fun res!249270 () Bool)

(assert (=> b!425518 (=> (not res!249270) (not e!252578))))

(declare-datatypes ((List!7322 0))(
  ( (Nil!7319) (Cons!7318 (h!8174 (_ BitVec 64)) (t!12774 List!7322)) )
))
(declare-fun arrayNoDuplicates!0 (array!25989 (_ BitVec 32) List!7322) Bool)

(assert (=> b!425518 (= res!249270 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7319))))

(declare-fun b!425519 () Bool)

(declare-fun res!249266 () Bool)

(assert (=> b!425519 (=> (not res!249266) (not e!252574))))

(assert (=> b!425519 (= res!249266 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!18243 () Bool)

(declare-fun mapRes!18243 () Bool)

(declare-fun tp!35315 () Bool)

(declare-fun e!252576 () Bool)

(assert (=> mapNonEmpty!18243 (= mapRes!18243 (and tp!35315 e!252576))))

(declare-fun mapKey!18243 () (_ BitVec 32))

(declare-fun mapRest!18243 () (Array (_ BitVec 32) ValueCell!5197))

(declare-fun mapValue!18243 () ValueCell!5197)

(assert (=> mapNonEmpty!18243 (= (arr!12442 _values!549) (store mapRest!18243 mapKey!18243 mapValue!18243))))

(declare-fun b!425520 () Bool)

(declare-fun res!249273 () Bool)

(assert (=> b!425520 (=> (not res!249273) (not e!252578))))

(assert (=> b!425520 (= res!249273 (and (= (size!12794 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12793 _keys!709) (size!12794 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!425521 () Bool)

(declare-fun res!249271 () Bool)

(assert (=> b!425521 (=> (not res!249271) (not e!252574))))

(assert (=> b!425521 (= res!249271 (arrayNoDuplicates!0 lt!194699 #b00000000000000000000000000000000 Nil!7319))))

(declare-fun res!249263 () Bool)

(assert (=> start!39670 (=> (not res!249263) (not e!252578))))

(assert (=> start!39670 (= res!249263 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12793 _keys!709))))))

(assert (=> start!39670 e!252578))

(declare-fun tp_is_empty!11081 () Bool)

(assert (=> start!39670 tp_is_empty!11081))

(assert (=> start!39670 tp!35316))

(assert (=> start!39670 true))

(declare-fun e!252579 () Bool)

(declare-fun array_inv!9066 (array!25991) Bool)

(assert (=> start!39670 (and (array_inv!9066 _values!549) e!252579)))

(declare-fun array_inv!9067 (array!25989) Bool)

(assert (=> start!39670 (array_inv!9067 _keys!709)))

(declare-fun b!425522 () Bool)

(assert (=> b!425522 (= e!252576 tp_is_empty!11081)))

(declare-fun b!425523 () Bool)

(assert (=> b!425523 (= e!252577 (not true))))

(declare-fun +!1275 (ListLongMap!6203 tuple2!7276) ListLongMap!6203)

(assert (=> b!425523 (= (getCurrentListMapNoExtraKeys!1318 lt!194699 lt!194697 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1275 (getCurrentListMapNoExtraKeys!1318 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7277 k!794 v!412)))))

(declare-datatypes ((Unit!12453 0))(
  ( (Unit!12454) )
))
(declare-fun lt!194698 () Unit!12453)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!477 (array!25989 array!25991 (_ BitVec 32) (_ BitVec 32) V!15879 V!15879 (_ BitVec 32) (_ BitVec 64) V!15879 (_ BitVec 32) Int) Unit!12453)

(assert (=> b!425523 (= lt!194698 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!477 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!425524 () Bool)

(assert (=> b!425524 (= e!252578 e!252574)))

(declare-fun res!249265 () Bool)

(assert (=> b!425524 (=> (not res!249265) (not e!252574))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25989 (_ BitVec 32)) Bool)

(assert (=> b!425524 (= res!249265 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194699 mask!1025))))

(assert (=> b!425524 (= lt!194699 (array!25990 (store (arr!12441 _keys!709) i!563 k!794) (size!12793 _keys!709)))))

(declare-fun b!425525 () Bool)

(declare-fun res!249261 () Bool)

(assert (=> b!425525 (=> (not res!249261) (not e!252578))))

(assert (=> b!425525 (= res!249261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!425526 () Bool)

(declare-fun e!252575 () Bool)

(assert (=> b!425526 (= e!252579 (and e!252575 mapRes!18243))))

(declare-fun condMapEmpty!18243 () Bool)

(declare-fun mapDefault!18243 () ValueCell!5197)

