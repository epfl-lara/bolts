; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82680 () Bool)

(assert start!82680)

(declare-fun b_free!18785 () Bool)

(declare-fun b_next!18785 () Bool)

(assert (=> start!82680 (= b_free!18785 (not b_next!18785))))

(declare-fun tp!65475 () Bool)

(declare-fun b_and!30291 () Bool)

(assert (=> start!82680 (= tp!65475 b_and!30291)))

(declare-fun b!963375 () Bool)

(declare-fun e!543223 () Bool)

(declare-fun e!543221 () Bool)

(declare-fun mapRes!34375 () Bool)

(assert (=> b!963375 (= e!543223 (and e!543221 mapRes!34375))))

(declare-fun condMapEmpty!34375 () Bool)

(declare-datatypes ((V!33765 0))(
  ( (V!33766 (val!10844 Int)) )
))
(declare-datatypes ((ValueCell!10312 0))(
  ( (ValueCellFull!10312 (v!13402 V!33765)) (EmptyCell!10312) )
))
(declare-datatypes ((array!59251 0))(
  ( (array!59252 (arr!28490 (Array (_ BitVec 32) ValueCell!10312)) (size!28970 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59251)

(declare-fun mapDefault!34375 () ValueCell!10312)

