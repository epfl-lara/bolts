; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36976 () Bool)

(assert start!36976)

(declare-fun b_free!8095 () Bool)

(declare-fun b_next!8095 () Bool)

(assert (=> start!36976 (= b_free!8095 (not b_next!8095))))

(declare-fun tp!29000 () Bool)

(declare-fun b_and!15355 () Bool)

(assert (=> start!36976 (= tp!29000 b_and!15355)))

(declare-fun b!370698 () Bool)

(declare-fun e!226359 () Bool)

(declare-fun e!226362 () Bool)

(declare-fun mapRes!14679 () Bool)

(assert (=> b!370698 (= e!226359 (and e!226362 mapRes!14679))))

(declare-fun condMapEmpty!14679 () Bool)

(declare-datatypes ((V!12763 0))(
  ( (V!12764 (val!4416 Int)) )
))
(declare-datatypes ((ValueCell!4028 0))(
  ( (ValueCellFull!4028 (v!6609 V!12763)) (EmptyCell!4028) )
))
(declare-datatypes ((array!21403 0))(
  ( (array!21404 (arr!10167 (Array (_ BitVec 32) ValueCell!4028)) (size!10519 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21403)

(declare-fun mapDefault!14679 () ValueCell!4028)

