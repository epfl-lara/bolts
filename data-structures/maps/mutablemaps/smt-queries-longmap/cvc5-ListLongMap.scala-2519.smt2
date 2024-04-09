; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38940 () Bool)

(assert start!38940)

(declare-fun b!407171 () Bool)

(declare-fun res!235452 () Bool)

(declare-fun e!244559 () Bool)

(assert (=> b!407171 (=> (not res!235452) (not e!244559))))

(declare-datatypes ((array!24557 0))(
  ( (array!24558 (arr!11725 (Array (_ BitVec 32) (_ BitVec 64))) (size!12077 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24557)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!407171 (= res!235452 (or (= (select (arr!11725 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11725 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!17148 () Bool)

(declare-fun mapRes!17148 () Bool)

(assert (=> mapIsEmpty!17148 mapRes!17148))

(declare-fun b!407172 () Bool)

(declare-fun res!235443 () Bool)

(assert (=> b!407172 (=> (not res!235443) (not e!244559))))

(assert (=> b!407172 (= res!235443 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12077 _keys!709))))))

(declare-fun mapNonEmpty!17148 () Bool)

(declare-fun tp!33267 () Bool)

(declare-fun e!244556 () Bool)

(assert (=> mapNonEmpty!17148 (= mapRes!17148 (and tp!33267 e!244556))))

(declare-datatypes ((V!14907 0))(
  ( (V!14908 (val!5220 Int)) )
))
(declare-datatypes ((ValueCell!4832 0))(
  ( (ValueCellFull!4832 (v!7463 V!14907)) (EmptyCell!4832) )
))
(declare-fun mapValue!17148 () ValueCell!4832)

(declare-datatypes ((array!24559 0))(
  ( (array!24560 (arr!11726 (Array (_ BitVec 32) ValueCell!4832)) (size!12078 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24559)

(declare-fun mapRest!17148 () (Array (_ BitVec 32) ValueCell!4832))

(declare-fun mapKey!17148 () (_ BitVec 32))

(assert (=> mapNonEmpty!17148 (= (arr!11726 _values!549) (store mapRest!17148 mapKey!17148 mapValue!17148))))

(declare-fun b!407173 () Bool)

(declare-fun e!244557 () Bool)

(declare-fun tp_is_empty!10351 () Bool)

(assert (=> b!407173 (= e!244557 tp_is_empty!10351)))

(declare-fun b!407174 () Bool)

(assert (=> b!407174 (= e!244556 tp_is_empty!10351)))

(declare-fun b!407175 () Bool)

(declare-fun e!244561 () Bool)

(assert (=> b!407175 (= e!244561 false)))

(declare-fun lt!188595 () Bool)

(declare-fun lt!188594 () array!24557)

(declare-datatypes ((List!6781 0))(
  ( (Nil!6778) (Cons!6777 (h!7633 (_ BitVec 64)) (t!11963 List!6781)) )
))
(declare-fun arrayNoDuplicates!0 (array!24557 (_ BitVec 32) List!6781) Bool)

(assert (=> b!407175 (= lt!188595 (arrayNoDuplicates!0 lt!188594 #b00000000000000000000000000000000 Nil!6778))))

(declare-fun b!407176 () Bool)

(declare-fun res!235445 () Bool)

(assert (=> b!407176 (=> (not res!235445) (not e!244559))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24557 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!407176 (= res!235445 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!407177 () Bool)

(declare-fun res!235451 () Bool)

(assert (=> b!407177 (=> (not res!235451) (not e!244559))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24557 (_ BitVec 32)) Bool)

(assert (=> b!407177 (= res!235451 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!407178 () Bool)

(declare-fun res!235448 () Bool)

(assert (=> b!407178 (=> (not res!235448) (not e!244559))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!407178 (= res!235448 (validMask!0 mask!1025))))

(declare-fun b!407179 () Bool)

(declare-fun e!244560 () Bool)

(assert (=> b!407179 (= e!244560 (and e!244557 mapRes!17148))))

(declare-fun condMapEmpty!17148 () Bool)

(declare-fun mapDefault!17148 () ValueCell!4832)

