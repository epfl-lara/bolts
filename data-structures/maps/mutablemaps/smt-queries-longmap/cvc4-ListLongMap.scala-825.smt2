; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20062 () Bool)

(assert start!20062)

(declare-fun b!196297 () Bool)

(declare-fun e!129277 () Bool)

(declare-fun e!129280 () Bool)

(declare-fun mapRes!7916 () Bool)

(assert (=> b!196297 (= e!129277 (and e!129280 mapRes!7916))))

(declare-fun condMapEmpty!7916 () Bool)

(declare-datatypes ((V!5733 0))(
  ( (V!5734 (val!2327 Int)) )
))
(declare-datatypes ((ValueCell!1939 0))(
  ( (ValueCellFull!1939 (v!4293 V!5733)) (EmptyCell!1939) )
))
(declare-datatypes ((array!8388 0))(
  ( (array!8389 (arr!3944 (Array (_ BitVec 32) ValueCell!1939)) (size!4269 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8388)

(declare-fun mapDefault!7916 () ValueCell!1939)

