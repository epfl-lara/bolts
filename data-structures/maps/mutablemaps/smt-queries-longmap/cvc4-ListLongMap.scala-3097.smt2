; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43534 () Bool)

(assert start!43534)

(declare-fun b_free!12305 () Bool)

(declare-fun b_next!12305 () Bool)

(assert (=> start!43534 (= b_free!12305 (not b_next!12305))))

(declare-fun tp!43197 () Bool)

(declare-fun b_and!21083 () Bool)

(assert (=> start!43534 (= tp!43197 b_and!21083)))

(declare-fun b!482063 () Bool)

(declare-fun e!283683 () Bool)

(declare-fun e!283686 () Bool)

(declare-fun mapRes!22435 () Bool)

(assert (=> b!482063 (= e!283683 (and e!283686 mapRes!22435))))

(declare-fun condMapEmpty!22435 () Bool)

(declare-datatypes ((V!19493 0))(
  ( (V!19494 (val!6956 Int)) )
))
(declare-datatypes ((ValueCell!6547 0))(
  ( (ValueCellFull!6547 (v!9245 V!19493)) (EmptyCell!6547) )
))
(declare-datatypes ((array!31265 0))(
  ( (array!31266 (arr!15032 (Array (_ BitVec 32) ValueCell!6547)) (size!15390 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31265)

(declare-fun mapDefault!22435 () ValueCell!6547)

