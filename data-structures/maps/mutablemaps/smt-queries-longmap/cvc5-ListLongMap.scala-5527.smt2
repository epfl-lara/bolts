; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72974 () Bool)

(assert start!72974)

(declare-fun b_free!13861 () Bool)

(declare-fun b_next!13861 () Bool)

(assert (=> start!72974 (= b_free!13861 (not b_next!13861))))

(declare-fun tp!49087 () Bool)

(declare-fun b_and!22965 () Bool)

(assert (=> start!72974 (= tp!49087 b_and!22965)))

(declare-fun b!846940 () Bool)

(declare-fun e!472664 () Bool)

(declare-fun tp_is_empty!15997 () Bool)

(assert (=> b!846940 (= e!472664 tp_is_empty!15997)))

(declare-fun b!846941 () Bool)

(declare-fun e!472663 () Bool)

(assert (=> b!846941 (= e!472663 tp_is_empty!15997)))

(declare-fun b!846942 () Bool)

(declare-fun res!575558 () Bool)

(declare-fun e!472661 () Bool)

(assert (=> b!846942 (=> (not res!575558) (not e!472661))))

(declare-datatypes ((array!48190 0))(
  ( (array!48191 (arr!23122 (Array (_ BitVec 32) (_ BitVec 64))) (size!23563 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48190)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48190 (_ BitVec 32)) Bool)

(assert (=> b!846942 (= res!575558 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!25595 () Bool)

(declare-fun mapRes!25595 () Bool)

(assert (=> mapIsEmpty!25595 mapRes!25595))

(declare-fun b!846943 () Bool)

(declare-fun e!472662 () Bool)

(assert (=> b!846943 (= e!472662 (and e!472663 mapRes!25595))))

(declare-fun condMapEmpty!25595 () Bool)

(declare-datatypes ((V!26377 0))(
  ( (V!26378 (val!8046 Int)) )
))
(declare-datatypes ((ValueCell!7559 0))(
  ( (ValueCellFull!7559 (v!10467 V!26377)) (EmptyCell!7559) )
))
(declare-datatypes ((array!48192 0))(
  ( (array!48193 (arr!23123 (Array (_ BitVec 32) ValueCell!7559)) (size!23564 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48192)

(declare-fun mapDefault!25595 () ValueCell!7559)

