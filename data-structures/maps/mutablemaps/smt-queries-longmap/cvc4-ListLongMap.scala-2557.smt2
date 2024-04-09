; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39172 () Bool)

(assert start!39172)

(declare-fun b_free!9431 () Bool)

(declare-fun b_next!9431 () Bool)

(assert (=> start!39172 (= b_free!9431 (not b_next!9431))))

(declare-fun tp!33821 () Bool)

(declare-fun b_and!16835 () Bool)

(assert (=> start!39172 (= tp!33821 b_and!16835)))

(declare-fun b!412107 () Bool)

(declare-fun res!239342 () Bool)

(declare-fun e!246645 () Bool)

(assert (=> b!412107 (=> (not res!239342) (not e!246645))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!25007 0))(
  ( (array!25008 (arr!11950 (Array (_ BitVec 32) (_ BitVec 64))) (size!12302 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25007)

(assert (=> b!412107 (= res!239342 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12302 _keys!709))))))

(declare-fun b!412108 () Bool)

(declare-fun e!246644 () Bool)

(declare-fun tp_is_empty!10583 () Bool)

(assert (=> b!412108 (= e!246644 tp_is_empty!10583)))

(declare-fun b!412109 () Bool)

(declare-fun e!246648 () Bool)

(assert (=> b!412109 (= e!246648 tp_is_empty!10583)))

(declare-fun b!412110 () Bool)

(declare-fun res!239340 () Bool)

(declare-fun e!246647 () Bool)

(assert (=> b!412110 (=> (not res!239340) (not e!246647))))

(declare-fun lt!189415 () array!25007)

(declare-datatypes ((List!6909 0))(
  ( (Nil!6906) (Cons!6905 (h!7761 (_ BitVec 64)) (t!12091 List!6909)) )
))
(declare-fun arrayNoDuplicates!0 (array!25007 (_ BitVec 32) List!6909) Bool)

(assert (=> b!412110 (= res!239340 (arrayNoDuplicates!0 lt!189415 #b00000000000000000000000000000000 Nil!6906))))

(declare-fun b!412111 () Bool)

(declare-fun res!239341 () Bool)

(assert (=> b!412111 (=> (not res!239341) (not e!246645))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25007 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!412111 (= res!239341 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!17496 () Bool)

(declare-fun mapRes!17496 () Bool)

(assert (=> mapIsEmpty!17496 mapRes!17496))

(declare-fun b!412112 () Bool)

(declare-fun e!246649 () Bool)

(assert (=> b!412112 (= e!246649 (and e!246648 mapRes!17496))))

(declare-fun condMapEmpty!17496 () Bool)

(declare-datatypes ((V!15215 0))(
  ( (V!15216 (val!5336 Int)) )
))
(declare-datatypes ((ValueCell!4948 0))(
  ( (ValueCellFull!4948 (v!7579 V!15215)) (EmptyCell!4948) )
))
(declare-datatypes ((array!25009 0))(
  ( (array!25010 (arr!11951 (Array (_ BitVec 32) ValueCell!4948)) (size!12303 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25009)

(declare-fun mapDefault!17496 () ValueCell!4948)

