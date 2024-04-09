; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81924 () Bool)

(assert start!81924)

(declare-fun b_free!18391 () Bool)

(declare-fun b_next!18391 () Bool)

(assert (=> start!81924 (= b_free!18391 (not b_next!18391))))

(declare-fun tp!63873 () Bool)

(declare-fun b_and!29895 () Bool)

(assert (=> start!81924 (= tp!63873 b_and!29895)))

(declare-fun b!955017 () Bool)

(declare-fun res!639643 () Bool)

(declare-fun e!538069 () Bool)

(assert (=> b!955017 (=> (not res!639643) (not e!538069))))

(declare-fun i!735 () (_ BitVec 32))

(declare-datatypes ((array!57995 0))(
  ( (array!57996 (arr!27873 (Array (_ BitVec 32) (_ BitVec 64))) (size!28353 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57995)

(assert (=> b!955017 (= res!639643 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28353 _keys!1441))))))

(declare-fun b!955018 () Bool)

(declare-fun e!538067 () Bool)

(declare-fun e!538071 () Bool)

(declare-fun mapRes!33364 () Bool)

(assert (=> b!955018 (= e!538067 (and e!538071 mapRes!33364))))

(declare-fun condMapEmpty!33364 () Bool)

(declare-datatypes ((V!32897 0))(
  ( (V!32898 (val!10518 Int)) )
))
(declare-datatypes ((ValueCell!9986 0))(
  ( (ValueCellFull!9986 (v!13073 V!32897)) (EmptyCell!9986) )
))
(declare-datatypes ((array!57997 0))(
  ( (array!57998 (arr!27874 (Array (_ BitVec 32) ValueCell!9986)) (size!28354 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57997)

(declare-fun mapDefault!33364 () ValueCell!9986)

