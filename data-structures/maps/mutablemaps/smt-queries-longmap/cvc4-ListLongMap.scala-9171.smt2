; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110292 () Bool)

(assert start!110292)

(declare-fun b_free!29303 () Bool)

(declare-fun b_next!29303 () Bool)

(assert (=> start!110292 (= b_free!29303 (not b_next!29303))))

(declare-fun tp!103074 () Bool)

(declare-fun b_and!47509 () Bool)

(assert (=> start!110292 (= tp!103074 b_and!47509)))

(declare-fun b!1305034 () Bool)

(declare-fun e!744436 () Bool)

(declare-fun tp_is_empty!34943 () Bool)

(assert (=> b!1305034 (= e!744436 tp_is_empty!34943)))

(declare-fun b!1305035 () Bool)

(declare-fun e!744441 () Bool)

(declare-fun mapRes!54021 () Bool)

(assert (=> b!1305035 (= e!744441 (and e!744436 mapRes!54021))))

(declare-fun condMapEmpty!54021 () Bool)

(declare-datatypes ((V!51693 0))(
  ( (V!51694 (val!17546 Int)) )
))
(declare-datatypes ((ValueCell!16573 0))(
  ( (ValueCellFull!16573 (v!20166 V!51693)) (EmptyCell!16573) )
))
(declare-datatypes ((array!86869 0))(
  ( (array!86870 (arr!41917 (Array (_ BitVec 32) ValueCell!16573)) (size!42468 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86869)

(declare-fun mapDefault!54021 () ValueCell!16573)

