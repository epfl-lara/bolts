; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39222 () Bool)

(assert start!39222)

(declare-fun b_free!9481 () Bool)

(declare-fun b_next!9481 () Bool)

(assert (=> start!39222 (= b_free!9481 (not b_next!9481))))

(declare-fun tp!33971 () Bool)

(declare-fun b_and!16885 () Bool)

(assert (=> start!39222 (= tp!33971 b_and!16885)))

(declare-fun b!413346 () Bool)

(declare-fun res!240274 () Bool)

(declare-fun e!247175 () Bool)

(assert (=> b!413346 (=> (not res!240274) (not e!247175))))

(declare-datatypes ((array!25105 0))(
  ( (array!25106 (arr!11999 (Array (_ BitVec 32) (_ BitVec 64))) (size!12351 (_ BitVec 32))) )
))
(declare-fun lt!189719 () array!25105)

(declare-datatypes ((List!6951 0))(
  ( (Nil!6948) (Cons!6947 (h!7803 (_ BitVec 64)) (t!12133 List!6951)) )
))
(declare-fun arrayNoDuplicates!0 (array!25105 (_ BitVec 32) List!6951) Bool)

(assert (=> b!413346 (= res!240274 (arrayNoDuplicates!0 lt!189719 #b00000000000000000000000000000000 Nil!6948))))

(declare-fun b!413347 () Bool)

(declare-fun res!240284 () Bool)

(declare-fun e!247170 () Bool)

(assert (=> b!413347 (=> (not res!240284) (not e!247170))))

(declare-fun _keys!709 () array!25105)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15283 0))(
  ( (V!15284 (val!5361 Int)) )
))
(declare-datatypes ((ValueCell!4973 0))(
  ( (ValueCellFull!4973 (v!7604 V!15283)) (EmptyCell!4973) )
))
(declare-datatypes ((array!25107 0))(
  ( (array!25108 (arr!12000 (Array (_ BitVec 32) ValueCell!4973)) (size!12352 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25107)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!413347 (= res!240284 (and (= (size!12352 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12351 _keys!709) (size!12352 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!413348 () Bool)

(declare-fun e!247173 () Bool)

(declare-fun tp_is_empty!10633 () Bool)

(assert (=> b!413348 (= e!247173 tp_is_empty!10633)))

(declare-fun mapNonEmpty!17571 () Bool)

(declare-fun mapRes!17571 () Bool)

(declare-fun tp!33972 () Bool)

(assert (=> mapNonEmpty!17571 (= mapRes!17571 (and tp!33972 e!247173))))

(declare-fun mapKey!17571 () (_ BitVec 32))

(declare-fun mapRest!17571 () (Array (_ BitVec 32) ValueCell!4973))

(declare-fun mapValue!17571 () ValueCell!4973)

(assert (=> mapNonEmpty!17571 (= (arr!12000 _values!549) (store mapRest!17571 mapKey!17571 mapValue!17571))))

(declare-fun b!413349 () Bool)

(declare-fun res!240276 () Bool)

(assert (=> b!413349 (=> (not res!240276) (not e!247175))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!413349 (= res!240276 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!17571 () Bool)

(assert (=> mapIsEmpty!17571 mapRes!17571))

(declare-fun b!413350 () Bool)

(declare-fun res!240283 () Bool)

(assert (=> b!413350 (=> (not res!240283) (not e!247170))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25105 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!413350 (= res!240283 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!413351 () Bool)

(declare-fun res!240285 () Bool)

(assert (=> b!413351 (=> (not res!240285) (not e!247170))))

(assert (=> b!413351 (= res!240285 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12351 _keys!709))))))

(declare-fun b!413352 () Bool)

(declare-fun res!240282 () Bool)

(assert (=> b!413352 (=> (not res!240282) (not e!247170))))

(assert (=> b!413352 (= res!240282 (or (= (select (arr!11999 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11999 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!413353 () Bool)

(declare-fun res!240279 () Bool)

(assert (=> b!413353 (=> (not res!240279) (not e!247170))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!413353 (= res!240279 (validMask!0 mask!1025))))

(declare-fun res!240273 () Bool)

(assert (=> start!39222 (=> (not res!240273) (not e!247170))))

(assert (=> start!39222 (= res!240273 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12351 _keys!709))))))

(assert (=> start!39222 e!247170))

(assert (=> start!39222 tp_is_empty!10633))

(assert (=> start!39222 tp!33971))

(assert (=> start!39222 true))

(declare-fun e!247171 () Bool)

(declare-fun array_inv!8752 (array!25107) Bool)

(assert (=> start!39222 (and (array_inv!8752 _values!549) e!247171)))

(declare-fun array_inv!8753 (array!25105) Bool)

(assert (=> start!39222 (array_inv!8753 _keys!709)))

(declare-fun b!413354 () Bool)

(declare-fun e!247172 () Bool)

(declare-datatypes ((tuple2!6890 0))(
  ( (tuple2!6891 (_1!3455 (_ BitVec 64)) (_2!3455 V!15283)) )
))
(declare-datatypes ((List!6952 0))(
  ( (Nil!6949) (Cons!6948 (h!7804 tuple2!6890) (t!12134 List!6952)) )
))
(declare-datatypes ((ListLongMap!5817 0))(
  ( (ListLongMap!5818 (toList!2924 List!6952)) )
))
(declare-fun call!28618 () ListLongMap!5817)

(declare-fun call!28619 () ListLongMap!5817)

(assert (=> b!413354 (= e!247172 (= call!28618 call!28619))))

(declare-fun b!413355 () Bool)

(declare-fun res!240275 () Bool)

(assert (=> b!413355 (=> (not res!240275) (not e!247170))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25105 (_ BitVec 32)) Bool)

(assert (=> b!413355 (= res!240275 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!413356 () Bool)

(declare-fun v!412 () V!15283)

(declare-fun +!1146 (ListLongMap!5817 tuple2!6890) ListLongMap!5817)

(assert (=> b!413356 (= e!247172 (= call!28619 (+!1146 call!28618 (tuple2!6891 k!794 v!412))))))

(declare-fun c!54860 () Bool)

(declare-fun minValue!515 () V!15283)

(declare-fun defaultEntry!557 () Int)

(declare-fun bm!28615 () Bool)

(declare-fun zeroValue!515 () V!15283)

(declare-fun lt!189716 () array!25107)

(declare-fun getCurrentListMapNoExtraKeys!1133 (array!25105 array!25107 (_ BitVec 32) (_ BitVec 32) V!15283 V!15283 (_ BitVec 32) Int) ListLongMap!5817)

(assert (=> bm!28615 (= call!28618 (getCurrentListMapNoExtraKeys!1133 (ite c!54860 _keys!709 lt!189719) (ite c!54860 _values!549 lt!189716) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!413357 () Bool)

(declare-fun res!240281 () Bool)

(assert (=> b!413357 (=> (not res!240281) (not e!247170))))

(assert (=> b!413357 (= res!240281 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6948))))

(declare-fun bm!28616 () Bool)

(assert (=> bm!28616 (= call!28619 (getCurrentListMapNoExtraKeys!1133 (ite c!54860 lt!189719 _keys!709) (ite c!54860 lt!189716 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!413358 () Bool)

(declare-fun e!247176 () Bool)

(assert (=> b!413358 (= e!247176 (not true))))

(assert (=> b!413358 e!247172))

(assert (=> b!413358 (= c!54860 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12189 0))(
  ( (Unit!12190) )
))
(declare-fun lt!189718 () Unit!12189)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!357 (array!25105 array!25107 (_ BitVec 32) (_ BitVec 32) V!15283 V!15283 (_ BitVec 32) (_ BitVec 64) V!15283 (_ BitVec 32) Int) Unit!12189)

(assert (=> b!413358 (= lt!189718 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!357 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!413359 () Bool)

(assert (=> b!413359 (= e!247170 e!247175)))

(declare-fun res!240278 () Bool)

(assert (=> b!413359 (=> (not res!240278) (not e!247175))))

(assert (=> b!413359 (= res!240278 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189719 mask!1025))))

(assert (=> b!413359 (= lt!189719 (array!25106 (store (arr!11999 _keys!709) i!563 k!794) (size!12351 _keys!709)))))

(declare-fun b!413360 () Bool)

(declare-fun e!247177 () Bool)

(assert (=> b!413360 (= e!247177 tp_is_empty!10633)))

(declare-fun b!413361 () Bool)

(assert (=> b!413361 (= e!247175 e!247176)))

(declare-fun res!240277 () Bool)

(assert (=> b!413361 (=> (not res!240277) (not e!247176))))

(assert (=> b!413361 (= res!240277 (= from!863 i!563))))

(declare-fun lt!189720 () ListLongMap!5817)

(assert (=> b!413361 (= lt!189720 (getCurrentListMapNoExtraKeys!1133 lt!189719 lt!189716 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!413361 (= lt!189716 (array!25108 (store (arr!12000 _values!549) i!563 (ValueCellFull!4973 v!412)) (size!12352 _values!549)))))

(declare-fun lt!189717 () ListLongMap!5817)

(assert (=> b!413361 (= lt!189717 (getCurrentListMapNoExtraKeys!1133 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!413362 () Bool)

(assert (=> b!413362 (= e!247171 (and e!247177 mapRes!17571))))

(declare-fun condMapEmpty!17571 () Bool)

(declare-fun mapDefault!17571 () ValueCell!4973)

