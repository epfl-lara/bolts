; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109478 () Bool)

(assert start!109478)

(declare-fun b_free!28931 () Bool)

(declare-fun b_next!28931 () Bool)

(assert (=> start!109478 (= b_free!28931 (not b_next!28931))))

(declare-fun tp!101912 () Bool)

(declare-fun b_and!47031 () Bool)

(assert (=> start!109478 (= tp!101912 b_and!47031)))

(declare-fun b!1295782 () Bool)

(declare-fun e!739333 () Bool)

(declare-fun e!739331 () Bool)

(declare-fun mapRes!53417 () Bool)

(assert (=> b!1295782 (= e!739333 (and e!739331 mapRes!53417))))

(declare-fun condMapEmpty!53417 () Bool)

(declare-datatypes ((V!51197 0))(
  ( (V!51198 (val!17360 Int)) )
))
(declare-datatypes ((ValueCell!16387 0))(
  ( (ValueCellFull!16387 (v!19961 V!51197)) (EmptyCell!16387) )
))
(declare-datatypes ((array!86123 0))(
  ( (array!86124 (arr!41558 (Array (_ BitVec 32) ValueCell!16387)) (size!42109 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86123)

(declare-fun mapDefault!53417 () ValueCell!16387)

