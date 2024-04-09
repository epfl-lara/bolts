; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99580 () Bool)

(assert start!99580)

(declare-fun b_free!25123 () Bool)

(declare-fun b_next!25123 () Bool)

(assert (=> start!99580 (= b_free!25123 (not b_next!25123))))

(declare-fun tp!88083 () Bool)

(declare-fun b_and!41127 () Bool)

(assert (=> start!99580 (= tp!88083 b_and!41127)))

(declare-datatypes ((V!44665 0))(
  ( (V!44666 (val!14883 Int)) )
))
(declare-datatypes ((tuple2!19162 0))(
  ( (tuple2!19163 (_1!9591 (_ BitVec 64)) (_2!9591 V!44665)) )
))
(declare-fun lt!531894 () tuple2!19162)

(declare-datatypes ((List!25928 0))(
  ( (Nil!25925) (Cons!25924 (h!27133 tuple2!19162) (t!38050 List!25928)) )
))
(declare-datatypes ((ListLongMap!17143 0))(
  ( (ListLongMap!17144 (toList!8587 List!25928)) )
))
(declare-fun lt!531892 () ListLongMap!17143)

(declare-fun e!669589 () Bool)

(declare-fun lt!531882 () ListLongMap!17143)

(declare-fun b!1177776 () Bool)

(declare-fun +!3809 (ListLongMap!17143 tuple2!19162) ListLongMap!17143)

(assert (=> b!1177776 (= e!669589 (= lt!531892 (+!3809 lt!531882 lt!531894)))))

(declare-fun b!1177777 () Bool)

(declare-fun e!669581 () Bool)

(declare-fun e!669578 () Bool)

(declare-fun mapRes!46307 () Bool)

(assert (=> b!1177777 (= e!669581 (and e!669578 mapRes!46307))))

(declare-fun condMapEmpty!46307 () Bool)

(declare-datatypes ((ValueCell!14117 0))(
  ( (ValueCellFull!14117 (v!17522 V!44665)) (EmptyCell!14117) )
))
(declare-datatypes ((array!76080 0))(
  ( (array!76081 (arr!36686 (Array (_ BitVec 32) ValueCell!14117)) (size!37223 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76080)

(declare-fun mapDefault!46307 () ValueCell!14117)

