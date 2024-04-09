; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39090 () Bool)

(assert start!39090)

(declare-fun b_free!9349 () Bool)

(declare-fun b_next!9349 () Bool)

(assert (=> start!39090 (= b_free!9349 (not b_next!9349))))

(declare-fun tp!33576 () Bool)

(declare-fun b_and!16753 () Bool)

(assert (=> start!39090 (= tp!33576 b_and!16753)))

(declare-fun res!237861 () Bool)

(declare-fun e!245906 () Bool)

(assert (=> start!39090 (=> (not res!237861) (not e!245906))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!24851 0))(
  ( (array!24852 (arr!11872 (Array (_ BitVec 32) (_ BitVec 64))) (size!12224 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24851)

(assert (=> start!39090 (= res!237861 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12224 _keys!709))))))

(assert (=> start!39090 e!245906))

(declare-fun tp_is_empty!10501 () Bool)

(assert (=> start!39090 tp_is_empty!10501))

(assert (=> start!39090 tp!33576))

(assert (=> start!39090 true))

(declare-datatypes ((V!15107 0))(
  ( (V!15108 (val!5295 Int)) )
))
(declare-datatypes ((ValueCell!4907 0))(
  ( (ValueCellFull!4907 (v!7538 V!15107)) (EmptyCell!4907) )
))
(declare-datatypes ((array!24853 0))(
  ( (array!24854 (arr!11873 (Array (_ BitVec 32) ValueCell!4907)) (size!12225 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24853)

(declare-fun e!245911 () Bool)

(declare-fun array_inv!8668 (array!24853) Bool)

(assert (=> start!39090 (and (array_inv!8668 _values!549) e!245911)))

(declare-fun array_inv!8669 (array!24851) Bool)

(assert (=> start!39090 (array_inv!8669 _keys!709)))

(declare-fun b!410262 () Bool)

(declare-fun res!237863 () Bool)

(declare-fun e!245910 () Bool)

(assert (=> b!410262 (=> (not res!237863) (not e!245910))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!410262 (= res!237863 (bvsle from!863 i!563))))

(declare-fun b!410263 () Bool)

(assert (=> b!410263 (= e!245906 e!245910)))

(declare-fun res!237865 () Bool)

(assert (=> b!410263 (=> (not res!237865) (not e!245910))))

(declare-fun lt!189046 () array!24851)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24851 (_ BitVec 32)) Bool)

(assert (=> b!410263 (= res!237865 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189046 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!410263 (= lt!189046 (array!24852 (store (arr!11872 _keys!709) i!563 k!794) (size!12224 _keys!709)))))

(declare-fun mapNonEmpty!17373 () Bool)

(declare-fun mapRes!17373 () Bool)

(declare-fun tp!33575 () Bool)

(declare-fun e!245907 () Bool)

(assert (=> mapNonEmpty!17373 (= mapRes!17373 (and tp!33575 e!245907))))

(declare-fun mapKey!17373 () (_ BitVec 32))

(declare-fun mapValue!17373 () ValueCell!4907)

(declare-fun mapRest!17373 () (Array (_ BitVec 32) ValueCell!4907))

(assert (=> mapNonEmpty!17373 (= (arr!11873 _values!549) (store mapRest!17373 mapKey!17373 mapValue!17373))))

(declare-fun b!410264 () Bool)

(declare-fun e!245908 () Bool)

(assert (=> b!410264 (= e!245911 (and e!245908 mapRes!17373))))

(declare-fun condMapEmpty!17373 () Bool)

(declare-fun mapDefault!17373 () ValueCell!4907)

