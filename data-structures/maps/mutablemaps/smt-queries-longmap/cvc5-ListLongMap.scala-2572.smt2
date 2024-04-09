; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39258 () Bool)

(assert start!39258)

(declare-fun b_free!9517 () Bool)

(declare-fun b_next!9517 () Bool)

(assert (=> start!39258 (= b_free!9517 (not b_next!9517))))

(declare-fun tp!34079 () Bool)

(declare-fun b_and!16927 () Bool)

(assert (=> start!39258 (= tp!34079 b_and!16927)))

(declare-fun b!414344 () Bool)

(declare-fun res!241001 () Bool)

(declare-fun e!247629 () Bool)

(assert (=> b!414344 (=> (not res!241001) (not e!247629))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!414344 (= res!241001 (bvsle from!863 i!563))))

(declare-fun b!414345 () Bool)

(declare-fun e!247625 () Bool)

(declare-fun e!247630 () Bool)

(declare-fun mapRes!17625 () Bool)

(assert (=> b!414345 (= e!247625 (and e!247630 mapRes!17625))))

(declare-fun condMapEmpty!17625 () Bool)

(declare-datatypes ((V!15331 0))(
  ( (V!15332 (val!5379 Int)) )
))
(declare-datatypes ((ValueCell!4991 0))(
  ( (ValueCellFull!4991 (v!7622 V!15331)) (EmptyCell!4991) )
))
(declare-datatypes ((array!25177 0))(
  ( (array!25178 (arr!12035 (Array (_ BitVec 32) ValueCell!4991)) (size!12387 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25177)

(declare-fun mapDefault!17625 () ValueCell!4991)

