; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70316 () Bool)

(assert start!70316)

(declare-fun b_free!12667 () Bool)

(declare-fun b_next!12667 () Bool)

(assert (=> start!70316 (= b_free!12667 (not b_next!12667))))

(declare-fun tp!44724 () Bool)

(declare-fun b_and!21485 () Bool)

(assert (=> start!70316 (= tp!44724 b_and!21485)))

(declare-fun b!816472 () Bool)

(declare-fun e!452970 () Bool)

(declare-fun e!452965 () Bool)

(declare-fun mapRes!23155 () Bool)

(assert (=> b!816472 (= e!452970 (and e!452965 mapRes!23155))))

(declare-fun condMapEmpty!23155 () Bool)

(declare-datatypes ((V!24171 0))(
  ( (V!24172 (val!7236 Int)) )
))
(declare-datatypes ((ValueCell!6773 0))(
  ( (ValueCellFull!6773 (v!9660 V!24171)) (EmptyCell!6773) )
))
(declare-datatypes ((array!44934 0))(
  ( (array!44935 (arr!21520 (Array (_ BitVec 32) ValueCell!6773)) (size!21941 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44934)

(declare-fun mapDefault!23155 () ValueCell!6773)

