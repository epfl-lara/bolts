; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100514 () Bool)

(assert start!100514)

(declare-fun b_free!25801 () Bool)

(declare-fun b_next!25801 () Bool)

(assert (=> start!100514 (= b_free!25801 (not b_next!25801))))

(declare-fun tp!90393 () Bool)

(declare-fun b_and!42503 () Bool)

(assert (=> start!100514 (= tp!90393 b_and!42503)))

(declare-fun b!1199960 () Bool)

(declare-fun e!681530 () Bool)

(declare-fun e!681527 () Bool)

(declare-fun mapRes!47600 () Bool)

(assert (=> b!1199960 (= e!681530 (and e!681527 mapRes!47600))))

(declare-fun condMapEmpty!47600 () Bool)

(declare-datatypes ((V!45801 0))(
  ( (V!45802 (val!15309 Int)) )
))
(declare-datatypes ((ValueCell!14543 0))(
  ( (ValueCellFull!14543 (v!17948 V!45801)) (EmptyCell!14543) )
))
(declare-datatypes ((array!77766 0))(
  ( (array!77767 (arr!37524 (Array (_ BitVec 32) ValueCell!14543)) (size!38061 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77766)

(declare-fun mapDefault!47600 () ValueCell!14543)

