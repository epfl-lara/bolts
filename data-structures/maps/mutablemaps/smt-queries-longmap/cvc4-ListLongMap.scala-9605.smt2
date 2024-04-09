; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113590 () Bool)

(assert start!113590)

(declare-fun b_free!31547 () Bool)

(declare-fun b_next!31547 () Bool)

(assert (=> start!113590 (= b_free!31547 (not b_next!31547))))

(declare-fun tp!110450 () Bool)

(declare-fun b_and!50893 () Bool)

(assert (=> start!113590 (= tp!110450 b_and!50893)))

(declare-fun b!1347934 () Bool)

(declare-fun e!766880 () Bool)

(declare-fun e!766876 () Bool)

(declare-fun mapRes!58031 () Bool)

(assert (=> b!1347934 (= e!766880 (and e!766876 mapRes!58031))))

(declare-fun condMapEmpty!58031 () Bool)

(declare-datatypes ((V!55165 0))(
  ( (V!55166 (val!18848 Int)) )
))
(declare-datatypes ((ValueCell!17875 0))(
  ( (ValueCellFull!17875 (v!21497 V!55165)) (EmptyCell!17875) )
))
(declare-datatypes ((array!91885 0))(
  ( (array!91886 (arr!44393 (Array (_ BitVec 32) ValueCell!17875)) (size!44944 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91885)

(declare-fun mapDefault!58031 () ValueCell!17875)

