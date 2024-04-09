; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83960 () Bool)

(assert start!83960)

(declare-fun b!980749 () Bool)

(declare-fun e!552848 () Bool)

(declare-fun e!552849 () Bool)

(declare-fun mapRes!36131 () Bool)

(assert (=> b!980749 (= e!552848 (and e!552849 mapRes!36131))))

(declare-fun condMapEmpty!36131 () Bool)

(declare-datatypes ((V!35297 0))(
  ( (V!35298 (val!11418 Int)) )
))
(declare-datatypes ((ValueCell!10886 0))(
  ( (ValueCellFull!10886 (v!13980 V!35297)) (EmptyCell!10886) )
))
(declare-datatypes ((array!61475 0))(
  ( (array!61476 (arr!29591 (Array (_ BitVec 32) ValueCell!10886)) (size!30071 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61475)

(declare-fun mapDefault!36131 () ValueCell!10886)

