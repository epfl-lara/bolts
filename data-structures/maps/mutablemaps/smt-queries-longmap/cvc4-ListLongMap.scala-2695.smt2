; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40000 () Bool)

(assert start!40000)

(declare-fun b_free!10259 () Bool)

(declare-fun b_next!10259 () Bool)

(assert (=> start!40000 (= b_free!10259 (not b_next!10259))))

(declare-fun tp!36306 () Bool)

(declare-fun b_and!18195 () Bool)

(assert (=> start!40000 (= tp!36306 b_and!18195)))

(declare-fun b!435035 () Bool)

(declare-fun res!256357 () Bool)

(declare-fun e!257041 () Bool)

(assert (=> b!435035 (=> (not res!256357) (not e!257041))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!435035 (= res!256357 (validMask!0 mask!1025))))

(declare-fun b!435036 () Bool)

(declare-fun e!257044 () Bool)

(declare-fun e!257040 () Bool)

(declare-fun mapRes!18738 () Bool)

(assert (=> b!435036 (= e!257044 (and e!257040 mapRes!18738))))

(declare-fun condMapEmpty!18738 () Bool)

(declare-datatypes ((V!16319 0))(
  ( (V!16320 (val!5750 Int)) )
))
(declare-datatypes ((ValueCell!5362 0))(
  ( (ValueCellFull!5362 (v!7993 V!16319)) (EmptyCell!5362) )
))
(declare-datatypes ((array!26627 0))(
  ( (array!26628 (arr!12760 (Array (_ BitVec 32) ValueCell!5362)) (size!13112 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26627)

(declare-fun mapDefault!18738 () ValueCell!5362)

