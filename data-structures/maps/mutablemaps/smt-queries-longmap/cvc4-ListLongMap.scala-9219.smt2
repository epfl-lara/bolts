; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110702 () Bool)

(assert start!110702)

(declare-fun b_free!29501 () Bool)

(declare-fun b_next!29501 () Bool)

(assert (=> start!110702 (= b_free!29501 (not b_next!29501))))

(declare-fun tp!103825 () Bool)

(declare-fun b_and!47719 () Bool)

(assert (=> start!110702 (= tp!103825 b_and!47719)))

(declare-fun b!1309374 () Bool)

(declare-fun e!747091 () Bool)

(declare-fun e!747094 () Bool)

(declare-fun mapRes!54475 () Bool)

(assert (=> b!1309374 (= e!747091 (and e!747094 mapRes!54475))))

(declare-fun condMapEmpty!54475 () Bool)

(declare-datatypes ((V!52077 0))(
  ( (V!52078 (val!17690 Int)) )
))
(declare-datatypes ((ValueCell!16717 0))(
  ( (ValueCellFull!16717 (v!20315 V!52077)) (EmptyCell!16717) )
))
(declare-datatypes ((array!87423 0))(
  ( (array!87424 (arr!42187 (Array (_ BitVec 32) ValueCell!16717)) (size!42738 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87423)

(declare-fun mapDefault!54475 () ValueCell!16717)

