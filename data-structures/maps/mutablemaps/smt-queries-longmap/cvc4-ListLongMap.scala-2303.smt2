; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37292 () Bool)

(assert start!37292)

(declare-fun b_free!8411 () Bool)

(declare-fun b_next!8411 () Bool)

(assert (=> start!37292 (= b_free!8411 (not b_next!8411))))

(declare-fun tp!29948 () Bool)

(declare-fun b_and!15671 () Bool)

(assert (=> start!37292 (= tp!29948 b_and!15671)))

(declare-fun mapNonEmpty!15153 () Bool)

(declare-fun mapRes!15153 () Bool)

(declare-fun tp!29949 () Bool)

(declare-fun e!229820 () Bool)

(assert (=> mapNonEmpty!15153 (= mapRes!15153 (and tp!29949 e!229820))))

(declare-datatypes ((V!13183 0))(
  ( (V!13184 (val!4574 Int)) )
))
(declare-datatypes ((ValueCell!4186 0))(
  ( (ValueCellFull!4186 (v!6767 V!13183)) (EmptyCell!4186) )
))
(declare-datatypes ((array!22017 0))(
  ( (array!22018 (arr!10474 (Array (_ BitVec 32) ValueCell!4186)) (size!10826 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22017)

(declare-fun mapKey!15153 () (_ BitVec 32))

(declare-fun mapValue!15153 () ValueCell!4186)

(declare-fun mapRest!15153 () (Array (_ BitVec 32) ValueCell!4186))

(assert (=> mapNonEmpty!15153 (= (arr!10474 _values!506) (store mapRest!15153 mapKey!15153 mapValue!15153))))

(declare-fun b!377496 () Bool)

(declare-fun res!213707 () Bool)

(declare-fun e!229822 () Bool)

(assert (=> b!377496 (=> (not res!213707) (not e!229822))))

(declare-datatypes ((array!22019 0))(
  ( (array!22020 (arr!10475 (Array (_ BitVec 32) (_ BitVec 64))) (size!10827 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22019)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22019 (_ BitVec 32)) Bool)

(assert (=> b!377496 (= res!213707 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!377497 () Bool)

(declare-fun res!213709 () Bool)

(declare-fun e!229826 () Bool)

(assert (=> b!377497 (=> (not res!213709) (not e!229826))))

(declare-fun lt!175679 () array!22019)

(declare-datatypes ((List!5945 0))(
  ( (Nil!5942) (Cons!5941 (h!6797 (_ BitVec 64)) (t!11103 List!5945)) )
))
(declare-fun arrayNoDuplicates!0 (array!22019 (_ BitVec 32) List!5945) Bool)

(assert (=> b!377497 (= res!213709 (arrayNoDuplicates!0 lt!175679 #b00000000000000000000000000000000 Nil!5942))))

(declare-fun b!377498 () Bool)

(assert (=> b!377498 (= e!229822 e!229826)))

(declare-fun res!213704 () Bool)

(assert (=> b!377498 (=> (not res!213704) (not e!229826))))

(assert (=> b!377498 (= res!213704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!175679 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!377498 (= lt!175679 (array!22020 (store (arr!10475 _keys!658) i!548 k!778) (size!10827 _keys!658)))))

(declare-fun b!377499 () Bool)

(declare-fun e!229823 () Bool)

(declare-fun e!229827 () Bool)

(assert (=> b!377499 (= e!229823 (and e!229827 mapRes!15153))))

(declare-fun condMapEmpty!15153 () Bool)

(declare-fun mapDefault!15153 () ValueCell!4186)

