; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105292 () Bool)

(assert start!105292)

(declare-fun b_free!26951 () Bool)

(declare-fun b_next!26951 () Bool)

(assert (=> start!105292 (= b_free!26951 (not b_next!26951))))

(declare-fun tp!94361 () Bool)

(declare-fun b_and!44787 () Bool)

(assert (=> start!105292 (= tp!94361 b_and!44787)))

(declare-fun b!1254123 () Bool)

(declare-fun e!712617 () Bool)

(declare-fun e!712620 () Bool)

(declare-fun mapRes!49558 () Bool)

(assert (=> b!1254123 (= e!712617 (and e!712620 mapRes!49558))))

(declare-fun condMapEmpty!49558 () Bool)

(declare-datatypes ((V!47835 0))(
  ( (V!47836 (val!15989 Int)) )
))
(declare-datatypes ((ValueCell!15163 0))(
  ( (ValueCellFull!15163 (v!18688 V!47835)) (EmptyCell!15163) )
))
(declare-datatypes ((array!81343 0))(
  ( (array!81344 (arr!39228 (Array (_ BitVec 32) ValueCell!15163)) (size!39765 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81343)

(declare-fun mapDefault!49558 () ValueCell!15163)

