; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36680 () Bool)

(assert start!36680)

(declare-fun res!204614 () Bool)

(declare-fun e!224036 () Bool)

(assert (=> start!36680 (=> (not res!204614) (not e!224036))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36680 (= res!204614 (validMask!0 mask!970))))

(assert (=> start!36680 e!224036))

(assert (=> start!36680 true))

(declare-datatypes ((V!12431 0))(
  ( (V!12432 (val!4292 Int)) )
))
(declare-datatypes ((ValueCell!3904 0))(
  ( (ValueCellFull!3904 (v!6484 V!12431)) (EmptyCell!3904) )
))
(declare-datatypes ((array!20919 0))(
  ( (array!20920 (arr!9928 (Array (_ BitVec 32) ValueCell!3904)) (size!10280 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20919)

(declare-fun e!224038 () Bool)

(declare-fun array_inv!7342 (array!20919) Bool)

(assert (=> start!36680 (and (array_inv!7342 _values!506) e!224038)))

(declare-datatypes ((array!20921 0))(
  ( (array!20922 (arr!9929 (Array (_ BitVec 32) (_ BitVec 64))) (size!10281 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20921)

(declare-fun array_inv!7343 (array!20921) Bool)

(assert (=> start!36680 (array_inv!7343 _keys!658)))

(declare-fun b!365803 () Bool)

(declare-fun e!224034 () Bool)

(declare-fun mapRes!14298 () Bool)

(assert (=> b!365803 (= e!224038 (and e!224034 mapRes!14298))))

(declare-fun condMapEmpty!14298 () Bool)

(declare-fun mapDefault!14298 () ValueCell!3904)

