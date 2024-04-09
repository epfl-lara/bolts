; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113468 () Bool)

(assert start!113468)

(declare-fun b_free!31483 () Bool)

(declare-fun b_next!31483 () Bool)

(assert (=> start!113468 (= b_free!31483 (not b_next!31483))))

(declare-fun tp!110255 () Bool)

(declare-fun b_and!50781 () Bool)

(assert (=> start!113468 (= tp!110255 b_and!50781)))

(declare-fun b!1346443 () Bool)

(declare-fun e!766156 () Bool)

(declare-fun e!766155 () Bool)

(declare-fun mapRes!57931 () Bool)

(assert (=> b!1346443 (= e!766156 (and e!766155 mapRes!57931))))

(declare-fun condMapEmpty!57931 () Bool)

(declare-datatypes ((V!55081 0))(
  ( (V!55082 (val!18816 Int)) )
))
(declare-datatypes ((ValueCell!17843 0))(
  ( (ValueCellFull!17843 (v!21462 V!55081)) (EmptyCell!17843) )
))
(declare-datatypes ((array!91757 0))(
  ( (array!91758 (arr!44330 (Array (_ BitVec 32) ValueCell!17843)) (size!44881 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91757)

(declare-fun mapDefault!57931 () ValueCell!17843)

