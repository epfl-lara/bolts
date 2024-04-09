; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111702 () Bool)

(assert start!111702)

(declare-fun b_free!30323 () Bool)

(declare-fun b_next!30323 () Bool)

(assert (=> start!111702 (= b_free!30323 (not b_next!30323))))

(declare-fun tp!106445 () Bool)

(declare-fun b_and!48815 () Bool)

(assert (=> start!111702 (= tp!106445 b_and!48815)))

(declare-fun b!1322769 () Bool)

(declare-fun res!878078 () Bool)

(declare-fun e!754236 () Bool)

(assert (=> b!1322769 (=> (not res!878078) (not e!754236))))

(declare-datatypes ((array!89163 0))(
  ( (array!89164 (arr!43051 (Array (_ BitVec 32) (_ BitVec 64))) (size!43602 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89163)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53293 0))(
  ( (V!53294 (val!18146 Int)) )
))
(declare-datatypes ((ValueCell!17173 0))(
  ( (ValueCellFull!17173 (v!20774 V!53293)) (EmptyCell!17173) )
))
(declare-datatypes ((array!89165 0))(
  ( (array!89166 (arr!43052 (Array (_ BitVec 32) ValueCell!17173)) (size!43603 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89165)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1322769 (= res!878078 (and (= (size!43603 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43602 _keys!1609) (size!43603 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1322770 () Bool)

(declare-fun res!878079 () Bool)

(assert (=> b!1322770 (=> (not res!878079) (not e!754236))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89163 (_ BitVec 32)) Bool)

(assert (=> b!1322770 (= res!878079 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1322771 () Bool)

(declare-fun e!754235 () Bool)

(declare-fun e!754234 () Bool)

(declare-fun mapRes!55862 () Bool)

(assert (=> b!1322771 (= e!754235 (and e!754234 mapRes!55862))))

(declare-fun condMapEmpty!55862 () Bool)

(declare-fun mapDefault!55862 () ValueCell!17173)

