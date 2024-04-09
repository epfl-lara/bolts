; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83338 () Bool)

(assert start!83338)

(declare-fun b_free!19303 () Bool)

(declare-fun b_next!19303 () Bool)

(assert (=> start!83338 (= b_free!19303 (not b_next!19303))))

(declare-fun tp!67188 () Bool)

(declare-fun b_and!30845 () Bool)

(assert (=> start!83338 (= tp!67188 b_and!30845)))

(declare-fun b!972291 () Bool)

(declare-fun e!548079 () Bool)

(declare-fun e!548074 () Bool)

(declare-fun mapRes!35311 () Bool)

(assert (=> b!972291 (= e!548079 (and e!548074 mapRes!35311))))

(declare-fun condMapEmpty!35311 () Bool)

(declare-datatypes ((V!34585 0))(
  ( (V!34586 (val!11151 Int)) )
))
(declare-datatypes ((ValueCell!10619 0))(
  ( (ValueCellFull!10619 (v!13710 V!34585)) (EmptyCell!10619) )
))
(declare-datatypes ((array!60431 0))(
  ( (array!60432 (arr!29075 (Array (_ BitVec 32) ValueCell!10619)) (size!29555 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60431)

(declare-fun mapDefault!35311 () ValueCell!10619)

