; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110092 () Bool)

(assert start!110092)

(declare-fun b_free!29255 () Bool)

(declare-fun b_next!29255 () Bool)

(assert (=> start!110092 (= b_free!29255 (not b_next!29255))))

(declare-fun tp!102916 () Bool)

(declare-fun b_and!47429 () Bool)

(assert (=> start!110092 (= tp!102916 b_and!47429)))

(declare-fun b!1303230 () Bool)

(declare-fun res!865665 () Bool)

(declare-fun e!743391 () Bool)

(assert (=> b!1303230 (=> (not res!865665) (not e!743391))))

(declare-datatypes ((array!86767 0))(
  ( (array!86768 (arr!41870 (Array (_ BitVec 32) (_ BitVec 64))) (size!42421 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86767)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1303230 (= res!865665 (not (validKeyInArray!0 (select (arr!41870 _keys!1741) from!2144))))))

(declare-fun b!1303231 () Bool)

(declare-fun res!865663 () Bool)

(assert (=> b!1303231 (=> (not res!865663) (not e!743391))))

(assert (=> b!1303231 (= res!865663 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42421 _keys!1741))))))

(declare-fun b!1303232 () Bool)

(declare-fun e!743388 () Bool)

(declare-fun e!743390 () Bool)

(declare-fun mapRes!53935 () Bool)

(assert (=> b!1303232 (= e!743388 (and e!743390 mapRes!53935))))

(declare-fun condMapEmpty!53935 () Bool)

(declare-datatypes ((V!51629 0))(
  ( (V!51630 (val!17522 Int)) )
))
(declare-datatypes ((ValueCell!16549 0))(
  ( (ValueCellFull!16549 (v!20136 V!51629)) (EmptyCell!16549) )
))
(declare-datatypes ((array!86769 0))(
  ( (array!86770 (arr!41871 (Array (_ BitVec 32) ValueCell!16549)) (size!42422 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86769)

(declare-fun mapDefault!53935 () ValueCell!16549)

