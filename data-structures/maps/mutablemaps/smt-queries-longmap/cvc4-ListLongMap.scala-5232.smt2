; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70484 () Bool)

(assert start!70484)

(declare-fun b_free!12803 () Bool)

(declare-fun b_next!12803 () Bool)

(assert (=> start!70484 (= b_free!12803 (not b_next!12803))))

(declare-fun tp!45138 () Bool)

(declare-fun b_and!21641 () Bool)

(assert (=> start!70484 (= tp!45138 b_and!21641)))

(declare-fun b!818292 () Bool)

(declare-fun e!454276 () Bool)

(declare-fun e!454277 () Bool)

(declare-fun mapRes!23365 () Bool)

(assert (=> b!818292 (= e!454276 (and e!454277 mapRes!23365))))

(declare-fun condMapEmpty!23365 () Bool)

(declare-datatypes ((V!24351 0))(
  ( (V!24352 (val!7304 Int)) )
))
(declare-datatypes ((ValueCell!6841 0))(
  ( (ValueCellFull!6841 (v!9729 V!24351)) (EmptyCell!6841) )
))
(declare-datatypes ((array!45198 0))(
  ( (array!45199 (arr!21650 (Array (_ BitVec 32) ValueCell!6841)) (size!22071 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45198)

(declare-fun mapDefault!23365 () ValueCell!6841)

