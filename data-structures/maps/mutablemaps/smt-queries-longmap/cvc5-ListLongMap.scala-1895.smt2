; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33868 () Bool)

(assert start!33868)

(declare-fun b_free!7039 () Bool)

(declare-fun b_next!7039 () Bool)

(assert (=> start!33868 (= b_free!7039 (not b_next!7039))))

(declare-fun tp!24630 () Bool)

(declare-fun b_and!14243 () Bool)

(assert (=> start!33868 (= tp!24630 b_and!14243)))

(declare-fun mapIsEmpty!11892 () Bool)

(declare-fun mapRes!11892 () Bool)

(assert (=> mapIsEmpty!11892 mapRes!11892))

(declare-fun b!336760 () Bool)

(declare-fun res!186009 () Bool)

(declare-fun e!206695 () Bool)

(assert (=> b!336760 (=> (not res!186009) (not e!206695))))

(declare-datatypes ((array!17559 0))(
  ( (array!17560 (arr!8304 (Array (_ BitVec 32) (_ BitVec 64))) (size!8656 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17559)

(declare-datatypes ((List!4785 0))(
  ( (Nil!4782) (Cons!4781 (h!5637 (_ BitVec 64)) (t!9887 List!4785)) )
))
(declare-fun arrayNoDuplicates!0 (array!17559 (_ BitVec 32) List!4785) Bool)

(assert (=> b!336760 (= res!186009 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4782))))

(declare-fun b!336761 () Bool)

(declare-fun e!206696 () Bool)

(declare-fun tp_is_empty!6991 () Bool)

(assert (=> b!336761 (= e!206696 tp_is_empty!6991)))

(declare-fun b!336762 () Bool)

(declare-fun e!206692 () Bool)

(assert (=> b!336762 (= e!206692 (and e!206696 mapRes!11892))))

(declare-fun condMapEmpty!11892 () Bool)

(declare-datatypes ((V!10299 0))(
  ( (V!10300 (val!3540 Int)) )
))
(declare-datatypes ((ValueCell!3152 0))(
  ( (ValueCellFull!3152 (v!5701 V!10299)) (EmptyCell!3152) )
))
(declare-datatypes ((array!17561 0))(
  ( (array!17562 (arr!8305 (Array (_ BitVec 32) ValueCell!3152)) (size!8657 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17561)

(declare-fun mapDefault!11892 () ValueCell!3152)

