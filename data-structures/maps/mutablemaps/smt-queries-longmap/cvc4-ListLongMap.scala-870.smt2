; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20332 () Bool)

(assert start!20332)

(declare-fun b_free!4979 () Bool)

(declare-fun b_next!4979 () Bool)

(assert (=> start!20332 (= b_free!4979 (not b_next!4979))))

(declare-fun tp!17968 () Bool)

(declare-fun b_and!11743 () Bool)

(assert (=> start!20332 (= tp!17968 b_and!11743)))

(declare-fun mapIsEmpty!8321 () Bool)

(declare-fun mapRes!8321 () Bool)

(assert (=> mapIsEmpty!8321 mapRes!8321))

(declare-fun b!200214 () Bool)

(declare-fun res!95370 () Bool)

(declare-fun e!131317 () Bool)

(assert (=> b!200214 (=> (not res!95370) (not e!131317))))

(declare-datatypes ((V!6093 0))(
  ( (V!6094 (val!2462 Int)) )
))
(declare-datatypes ((tuple2!3716 0))(
  ( (tuple2!3717 (_1!1868 (_ BitVec 64)) (_2!1868 V!6093)) )
))
(declare-fun lt!98841 () tuple2!3716)

(declare-fun lt!98848 () tuple2!3716)

(declare-datatypes ((List!2657 0))(
  ( (Nil!2654) (Cons!2653 (h!3295 tuple2!3716) (t!7596 List!2657)) )
))
(declare-datatypes ((ListLongMap!2643 0))(
  ( (ListLongMap!2644 (toList!1337 List!2657)) )
))
(declare-fun lt!98842 () ListLongMap!2643)

(declare-fun lt!98843 () ListLongMap!2643)

(declare-fun +!354 (ListLongMap!2643 tuple2!3716) ListLongMap!2643)

(assert (=> b!200214 (= res!95370 (= lt!98842 (+!354 (+!354 lt!98843 lt!98848) lt!98841)))))

(declare-fun b!200215 () Bool)

(declare-fun e!131322 () Bool)

(declare-fun tp_is_empty!4835 () Bool)

(assert (=> b!200215 (= e!131322 tp_is_empty!4835)))

(declare-fun b!200216 () Bool)

(declare-fun res!95367 () Bool)

(declare-fun e!131319 () Bool)

(assert (=> b!200216 (=> (not res!95367) (not e!131319))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!200216 (= res!95367 (validKeyInArray!0 k!843))))

(declare-fun b!200217 () Bool)

(declare-fun e!131321 () Bool)

(declare-fun e!131318 () Bool)

(assert (=> b!200217 (= e!131321 (and e!131318 mapRes!8321))))

(declare-fun condMapEmpty!8321 () Bool)

(declare-datatypes ((ValueCell!2074 0))(
  ( (ValueCellFull!2074 (v!4428 V!6093)) (EmptyCell!2074) )
))
(declare-datatypes ((array!8904 0))(
  ( (array!8905 (arr!4202 (Array (_ BitVec 32) ValueCell!2074)) (size!4527 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8904)

(declare-fun mapDefault!8321 () ValueCell!2074)

