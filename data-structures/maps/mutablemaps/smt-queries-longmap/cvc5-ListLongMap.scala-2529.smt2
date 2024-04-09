; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39000 () Bool)

(assert start!39000)

(declare-fun b!408341 () Bool)

(declare-fun res!236350 () Bool)

(declare-fun e!245099 () Bool)

(assert (=> b!408341 (=> (not res!236350) (not e!245099))))

(declare-datatypes ((array!24677 0))(
  ( (array!24678 (arr!11785 (Array (_ BitVec 32) (_ BitVec 64))) (size!12137 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24677)

(declare-datatypes ((List!6808 0))(
  ( (Nil!6805) (Cons!6804 (h!7660 (_ BitVec 64)) (t!11990 List!6808)) )
))
(declare-fun arrayNoDuplicates!0 (array!24677 (_ BitVec 32) List!6808) Bool)

(assert (=> b!408341 (= res!236350 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6805))))

(declare-fun b!408342 () Bool)

(declare-fun res!236344 () Bool)

(assert (=> b!408342 (=> (not res!236344) (not e!245099))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!408342 (= res!236344 (or (= (select (arr!11785 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11785 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!408343 () Bool)

(declare-fun e!245100 () Bool)

(assert (=> b!408343 (= e!245099 e!245100)))

(declare-fun res!236348 () Bool)

(assert (=> b!408343 (=> (not res!236348) (not e!245100))))

(declare-fun lt!188775 () array!24677)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24677 (_ BitVec 32)) Bool)

(assert (=> b!408343 (= res!236348 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188775 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!408343 (= lt!188775 (array!24678 (store (arr!11785 _keys!709) i!563 k!794) (size!12137 _keys!709)))))

(declare-fun b!408344 () Bool)

(declare-fun e!245096 () Bool)

(declare-fun tp_is_empty!10411 () Bool)

(assert (=> b!408344 (= e!245096 tp_is_empty!10411)))

(declare-fun res!236346 () Bool)

(assert (=> start!39000 (=> (not res!236346) (not e!245099))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39000 (= res!236346 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12137 _keys!709))))))

(assert (=> start!39000 e!245099))

(assert (=> start!39000 true))

(declare-datatypes ((V!14987 0))(
  ( (V!14988 (val!5250 Int)) )
))
(declare-datatypes ((ValueCell!4862 0))(
  ( (ValueCellFull!4862 (v!7493 V!14987)) (EmptyCell!4862) )
))
(declare-datatypes ((array!24679 0))(
  ( (array!24680 (arr!11786 (Array (_ BitVec 32) ValueCell!4862)) (size!12138 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24679)

(declare-fun e!245097 () Bool)

(declare-fun array_inv!8608 (array!24679) Bool)

(assert (=> start!39000 (and (array_inv!8608 _values!549) e!245097)))

(declare-fun array_inv!8609 (array!24677) Bool)

(assert (=> start!39000 (array_inv!8609 _keys!709)))

(declare-fun b!408345 () Bool)

(declare-fun res!236347 () Bool)

(assert (=> b!408345 (=> (not res!236347) (not e!245099))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!408345 (= res!236347 (and (= (size!12138 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12137 _keys!709) (size!12138 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!408346 () Bool)

(declare-fun e!245101 () Bool)

(assert (=> b!408346 (= e!245101 tp_is_empty!10411)))

(declare-fun mapIsEmpty!17238 () Bool)

(declare-fun mapRes!17238 () Bool)

(assert (=> mapIsEmpty!17238 mapRes!17238))

(declare-fun b!408347 () Bool)

(declare-fun res!236343 () Bool)

(assert (=> b!408347 (=> (not res!236343) (not e!245099))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!408347 (= res!236343 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!17238 () Bool)

(declare-fun tp!33357 () Bool)

(assert (=> mapNonEmpty!17238 (= mapRes!17238 (and tp!33357 e!245101))))

(declare-fun mapKey!17238 () (_ BitVec 32))

(declare-fun mapValue!17238 () ValueCell!4862)

(declare-fun mapRest!17238 () (Array (_ BitVec 32) ValueCell!4862))

(assert (=> mapNonEmpty!17238 (= (arr!11786 _values!549) (store mapRest!17238 mapKey!17238 mapValue!17238))))

(declare-fun b!408348 () Bool)

(declare-fun res!236351 () Bool)

(assert (=> b!408348 (=> (not res!236351) (not e!245099))))

(assert (=> b!408348 (= res!236351 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!408349 () Bool)

(declare-fun res!236349 () Bool)

(assert (=> b!408349 (=> (not res!236349) (not e!245099))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!408349 (= res!236349 (validKeyInArray!0 k!794))))

(declare-fun b!408350 () Bool)

(assert (=> b!408350 (= e!245100 false)))

(declare-fun lt!188774 () Bool)

(assert (=> b!408350 (= lt!188774 (arrayNoDuplicates!0 lt!188775 #b00000000000000000000000000000000 Nil!6805))))

(declare-fun b!408351 () Bool)

(declare-fun res!236352 () Bool)

(assert (=> b!408351 (=> (not res!236352) (not e!245099))))

(declare-fun arrayContainsKey!0 (array!24677 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!408351 (= res!236352 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!408352 () Bool)

(assert (=> b!408352 (= e!245097 (and e!245096 mapRes!17238))))

(declare-fun condMapEmpty!17238 () Bool)

(declare-fun mapDefault!17238 () ValueCell!4862)

