; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84066 () Bool)

(assert start!84066)

(declare-fun b_free!19793 () Bool)

(declare-fun b_next!19793 () Bool)

(assert (=> start!84066 (= b_free!19793 (not b_next!19793))))

(declare-fun tp!68903 () Bool)

(declare-fun b_and!31687 () Bool)

(assert (=> start!84066 (= tp!68903 b_and!31687)))

(declare-fun b!982269 () Bool)

(declare-fun e!553732 () Bool)

(declare-fun e!553731 () Bool)

(declare-fun mapRes!36290 () Bool)

(assert (=> b!982269 (= e!553732 (and e!553731 mapRes!36290))))

(declare-fun condMapEmpty!36290 () Bool)

(declare-datatypes ((V!35437 0))(
  ( (V!35438 (val!11471 Int)) )
))
(declare-datatypes ((ValueCell!10939 0))(
  ( (ValueCellFull!10939 (v!14033 V!35437)) (EmptyCell!10939) )
))
(declare-datatypes ((array!61669 0))(
  ( (array!61670 (arr!29688 (Array (_ BitVec 32) ValueCell!10939)) (size!30168 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61669)

(declare-fun mapDefault!36290 () ValueCell!10939)

