; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39046 () Bool)

(assert start!39046)

(declare-fun b_free!9305 () Bool)

(declare-fun b_next!9305 () Bool)

(assert (=> start!39046 (= b_free!9305 (not b_next!9305))))

(declare-fun tp!33443 () Bool)

(declare-fun b_and!16709 () Bool)

(assert (=> start!39046 (= tp!33443 b_and!16709)))

(declare-fun b!409272 () Bool)

(declare-fun res!237072 () Bool)

(declare-fun e!245510 () Bool)

(assert (=> b!409272 (=> (not res!237072) (not e!245510))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24767 0))(
  ( (array!24768 (arr!11830 (Array (_ BitVec 32) (_ BitVec 64))) (size!12182 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24767)

(assert (=> b!409272 (= res!237072 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12182 _keys!709))))))

(declare-fun b!409273 () Bool)

(declare-fun e!245512 () Bool)

(declare-fun tp_is_empty!10457 () Bool)

(assert (=> b!409273 (= e!245512 tp_is_empty!10457)))

(declare-fun b!409274 () Bool)

(declare-fun res!237076 () Bool)

(assert (=> b!409274 (=> (not res!237076) (not e!245510))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!409274 (= res!237076 (validKeyInArray!0 k!794))))

(declare-fun b!409275 () Bool)

(declare-fun res!237073 () Bool)

(assert (=> b!409275 (=> (not res!237073) (not e!245510))))

(declare-datatypes ((List!6829 0))(
  ( (Nil!6826) (Cons!6825 (h!7681 (_ BitVec 64)) (t!12011 List!6829)) )
))
(declare-fun arrayNoDuplicates!0 (array!24767 (_ BitVec 32) List!6829) Bool)

(assert (=> b!409275 (= res!237073 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6826))))

(declare-fun b!409276 () Bool)

(declare-fun res!237070 () Bool)

(assert (=> b!409276 (=> (not res!237070) (not e!245510))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24767 (_ BitVec 32)) Bool)

(assert (=> b!409276 (= res!237070 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!409277 () Bool)

(declare-fun res!237067 () Bool)

(assert (=> b!409277 (=> (not res!237067) (not e!245510))))

(assert (=> b!409277 (= res!237067 (or (= (select (arr!11830 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11830 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!409278 () Bool)

(declare-fun res!237069 () Bool)

(declare-fun e!245514 () Bool)

(assert (=> b!409278 (=> (not res!237069) (not e!245514))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!409278 (= res!237069 (bvsle from!863 i!563))))

(declare-fun b!409279 () Bool)

(declare-fun res!237068 () Bool)

(assert (=> b!409279 (=> (not res!237068) (not e!245514))))

(declare-fun lt!188913 () array!24767)

(assert (=> b!409279 (= res!237068 (arrayNoDuplicates!0 lt!188913 #b00000000000000000000000000000000 Nil!6826))))

(declare-fun b!409281 () Bool)

(assert (=> b!409281 (= e!245510 e!245514)))

(declare-fun res!237078 () Bool)

(assert (=> b!409281 (=> (not res!237078) (not e!245514))))

(assert (=> b!409281 (= res!237078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188913 mask!1025))))

(assert (=> b!409281 (= lt!188913 (array!24768 (store (arr!11830 _keys!709) i!563 k!794) (size!12182 _keys!709)))))

(declare-fun b!409282 () Bool)

(declare-fun e!245511 () Bool)

(assert (=> b!409282 (= e!245511 tp_is_empty!10457)))

(declare-fun mapIsEmpty!17307 () Bool)

(declare-fun mapRes!17307 () Bool)

(assert (=> mapIsEmpty!17307 mapRes!17307))

(declare-fun b!409283 () Bool)

(declare-fun res!237071 () Bool)

(assert (=> b!409283 (=> (not res!237071) (not e!245510))))

(declare-fun arrayContainsKey!0 (array!24767 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!409283 (= res!237071 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!409284 () Bool)

(declare-fun e!245513 () Bool)

(assert (=> b!409284 (= e!245513 (and e!245511 mapRes!17307))))

(declare-fun condMapEmpty!17307 () Bool)

(declare-datatypes ((V!15047 0))(
  ( (V!15048 (val!5273 Int)) )
))
(declare-datatypes ((ValueCell!4885 0))(
  ( (ValueCellFull!4885 (v!7516 V!15047)) (EmptyCell!4885) )
))
(declare-datatypes ((array!24769 0))(
  ( (array!24770 (arr!11831 (Array (_ BitVec 32) ValueCell!4885)) (size!12183 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24769)

(declare-fun mapDefault!17307 () ValueCell!4885)

