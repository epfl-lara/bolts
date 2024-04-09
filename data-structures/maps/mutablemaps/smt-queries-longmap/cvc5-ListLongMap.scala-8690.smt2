; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105596 () Bool)

(assert start!105596)

(declare-fun b_free!27175 () Bool)

(declare-fun b_next!27175 () Bool)

(assert (=> start!105596 (= b_free!27175 (not b_next!27175))))

(declare-fun tp!95045 () Bool)

(declare-fun b_and!45051 () Bool)

(assert (=> start!105596 (= tp!95045 b_and!45051)))

(declare-fun b!1257455 () Bool)

(declare-fun e!715071 () Bool)

(declare-fun e!715067 () Bool)

(declare-fun mapRes!49906 () Bool)

(assert (=> b!1257455 (= e!715071 (and e!715067 mapRes!49906))))

(declare-fun condMapEmpty!49906 () Bool)

(declare-datatypes ((V!48135 0))(
  ( (V!48136 (val!16101 Int)) )
))
(declare-datatypes ((ValueCell!15275 0))(
  ( (ValueCellFull!15275 (v!18803 V!48135)) (EmptyCell!15275) )
))
(declare-datatypes ((array!81787 0))(
  ( (array!81788 (arr!39446 (Array (_ BitVec 32) ValueCell!15275)) (size!39983 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81787)

(declare-fun mapDefault!49906 () ValueCell!15275)

