; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113450 () Bool)

(assert start!113450)

(declare-fun b_free!31465 () Bool)

(declare-fun b_next!31465 () Bool)

(assert (=> start!113450 (= b_free!31465 (not b_next!31465))))

(declare-fun tp!110201 () Bool)

(declare-fun b_and!50763 () Bool)

(assert (=> start!113450 (= tp!110201 b_and!50763)))

(declare-fun b!1346221 () Bool)

(declare-fun e!766018 () Bool)

(declare-fun e!766021 () Bool)

(declare-fun mapRes!57904 () Bool)

(assert (=> b!1346221 (= e!766018 (and e!766021 mapRes!57904))))

(declare-fun condMapEmpty!57904 () Bool)

(declare-datatypes ((V!55057 0))(
  ( (V!55058 (val!18807 Int)) )
))
(declare-datatypes ((ValueCell!17834 0))(
  ( (ValueCellFull!17834 (v!21453 V!55057)) (EmptyCell!17834) )
))
(declare-datatypes ((array!91725 0))(
  ( (array!91726 (arr!44314 (Array (_ BitVec 32) ValueCell!17834)) (size!44865 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91725)

(declare-fun mapDefault!57904 () ValueCell!17834)

