; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42414 () Bool)

(assert start!42414)

(declare-fun b_free!11881 () Bool)

(declare-fun b_next!11881 () Bool)

(assert (=> start!42414 (= b_free!11881 (not b_next!11881))))

(declare-fun tp!41676 () Bool)

(declare-fun b_and!20355 () Bool)

(assert (=> start!42414 (= tp!41676 b_and!20355)))

(declare-fun b!472950 () Bool)

(declare-fun e!277423 () Bool)

(declare-fun e!277424 () Bool)

(declare-fun mapRes!21676 () Bool)

(assert (=> b!472950 (= e!277423 (and e!277424 mapRes!21676))))

(declare-fun condMapEmpty!21676 () Bool)

(declare-datatypes ((V!18851 0))(
  ( (V!18852 (val!6699 Int)) )
))
(declare-datatypes ((ValueCell!6311 0))(
  ( (ValueCellFull!6311 (v!8986 V!18851)) (EmptyCell!6311) )
))
(declare-datatypes ((array!30341 0))(
  ( (array!30342 (arr!14587 (Array (_ BitVec 32) ValueCell!6311)) (size!14939 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30341)

(declare-fun mapDefault!21676 () ValueCell!6311)

