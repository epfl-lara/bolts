; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105680 () Bool)

(assert start!105680)

(declare-fun b_free!27245 () Bool)

(declare-fun b_next!27245 () Bool)

(assert (=> start!105680 (= b_free!27245 (not b_next!27245))))

(declare-fun tp!95259 () Bool)

(declare-fun b_and!45129 () Bool)

(assert (=> start!105680 (= tp!95259 b_and!45129)))

(declare-fun b!1258319 () Bool)

(declare-fun e!715691 () Bool)

(declare-fun e!715696 () Bool)

(declare-fun mapRes!50014 () Bool)

(assert (=> b!1258319 (= e!715691 (and e!715696 mapRes!50014))))

(declare-fun condMapEmpty!50014 () Bool)

(declare-datatypes ((V!48227 0))(
  ( (V!48228 (val!16136 Int)) )
))
(declare-datatypes ((ValueCell!15310 0))(
  ( (ValueCellFull!15310 (v!18838 V!48227)) (EmptyCell!15310) )
))
(declare-datatypes ((array!81915 0))(
  ( (array!81916 (arr!39509 (Array (_ BitVec 32) ValueCell!15310)) (size!40046 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81915)

(declare-fun mapDefault!50014 () ValueCell!15310)

