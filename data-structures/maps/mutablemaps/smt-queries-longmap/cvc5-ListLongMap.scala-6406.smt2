; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82260 () Bool)

(assert start!82260)

(declare-fun b_free!18505 () Bool)

(declare-fun b_next!18505 () Bool)

(assert (=> start!82260 (= b_free!18505 (not b_next!18505))))

(declare-fun tp!64476 () Bool)

(declare-fun b_and!30011 () Bool)

(assert (=> start!82260 (= tp!64476 b_and!30011)))

(declare-fun b!958346 () Bool)

(declare-fun e!540304 () Bool)

(declare-fun e!540307 () Bool)

(declare-fun mapRes!33796 () Bool)

(assert (=> b!958346 (= e!540304 (and e!540307 mapRes!33796))))

(declare-fun condMapEmpty!33796 () Bool)

(declare-datatypes ((V!33265 0))(
  ( (V!33266 (val!10656 Int)) )
))
(declare-datatypes ((ValueCell!10124 0))(
  ( (ValueCellFull!10124 (v!13213 V!33265)) (EmptyCell!10124) )
))
(declare-datatypes ((array!58539 0))(
  ( (array!58540 (arr!28139 (Array (_ BitVec 32) ValueCell!10124)) (size!28619 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58539)

(declare-fun mapDefault!33796 () ValueCell!10124)

