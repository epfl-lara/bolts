; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83972 () Bool)

(assert start!83972)

(declare-fun b!980857 () Bool)

(declare-fun e!552937 () Bool)

(declare-fun e!552938 () Bool)

(declare-fun mapRes!36149 () Bool)

(assert (=> b!980857 (= e!552937 (and e!552938 mapRes!36149))))

(declare-fun condMapEmpty!36149 () Bool)

(declare-datatypes ((V!35313 0))(
  ( (V!35314 (val!11424 Int)) )
))
(declare-datatypes ((ValueCell!10892 0))(
  ( (ValueCellFull!10892 (v!13986 V!35313)) (EmptyCell!10892) )
))
(declare-datatypes ((array!61493 0))(
  ( (array!61494 (arr!29600 (Array (_ BitVec 32) ValueCell!10892)) (size!30080 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61493)

(declare-fun mapDefault!36149 () ValueCell!10892)

