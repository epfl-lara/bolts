; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39024 () Bool)

(assert start!39024)

(declare-fun b!408809 () Bool)

(declare-fun res!236704 () Bool)

(declare-fun e!245316 () Bool)

(assert (=> b!408809 (=> (not res!236704) (not e!245316))))

(declare-datatypes ((array!24723 0))(
  ( (array!24724 (arr!11808 (Array (_ BitVec 32) (_ BitVec 64))) (size!12160 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24723)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15019 0))(
  ( (V!15020 (val!5262 Int)) )
))
(declare-datatypes ((ValueCell!4874 0))(
  ( (ValueCellFull!4874 (v!7505 V!15019)) (EmptyCell!4874) )
))
(declare-datatypes ((array!24725 0))(
  ( (array!24726 (arr!11809 (Array (_ BitVec 32) ValueCell!4874)) (size!12161 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24725)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!408809 (= res!236704 (and (= (size!12161 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12160 _keys!709) (size!12161 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!408810 () Bool)

(declare-fun e!245317 () Bool)

(declare-fun tp_is_empty!10435 () Bool)

(assert (=> b!408810 (= e!245317 tp_is_empty!10435)))

(declare-fun mapNonEmpty!17274 () Bool)

(declare-fun mapRes!17274 () Bool)

(declare-fun tp!33393 () Bool)

(declare-fun e!245315 () Bool)

(assert (=> mapNonEmpty!17274 (= mapRes!17274 (and tp!33393 e!245315))))

(declare-fun mapKey!17274 () (_ BitVec 32))

(declare-fun mapRest!17274 () (Array (_ BitVec 32) ValueCell!4874))

(declare-fun mapValue!17274 () ValueCell!4874)

(assert (=> mapNonEmpty!17274 (= (arr!11809 _values!549) (store mapRest!17274 mapKey!17274 mapValue!17274))))

(declare-fun b!408811 () Bool)

(declare-fun e!245312 () Bool)

(assert (=> b!408811 (= e!245312 (and e!245317 mapRes!17274))))

(declare-fun condMapEmpty!17274 () Bool)

(declare-fun mapDefault!17274 () ValueCell!4874)

