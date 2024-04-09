; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79052 () Bool)

(assert start!79052)

(declare-fun b_free!17237 () Bool)

(declare-fun b_next!17237 () Bool)

(assert (=> start!79052 (= b_free!17237 (not b_next!17237))))

(declare-fun tp!60153 () Bool)

(declare-fun b_and!28229 () Bool)

(assert (=> start!79052 (= tp!60153 b_and!28229)))

(declare-fun b!925613 () Bool)

(declare-datatypes ((Unit!31283 0))(
  ( (Unit!31284) )
))
(declare-fun e!519559 () Unit!31283)

(declare-fun Unit!31285 () Unit!31283)

(assert (=> b!925613 (= e!519559 Unit!31285)))

(declare-fun b!925614 () Bool)

(declare-fun e!519564 () Unit!31283)

(declare-fun Unit!31286 () Unit!31283)

(assert (=> b!925614 (= e!519564 Unit!31286)))

(declare-fun b!925615 () Bool)

(declare-fun e!519555 () Bool)

(declare-fun e!519561 () Bool)

(declare-fun mapRes!31374 () Bool)

(assert (=> b!925615 (= e!519555 (and e!519561 mapRes!31374))))

(declare-fun condMapEmpty!31374 () Bool)

(declare-datatypes ((V!31291 0))(
  ( (V!31292 (val!9923 Int)) )
))
(declare-datatypes ((ValueCell!9391 0))(
  ( (ValueCellFull!9391 (v!12441 V!31291)) (EmptyCell!9391) )
))
(declare-datatypes ((array!55472 0))(
  ( (array!55473 (arr!26677 (Array (_ BitVec 32) ValueCell!9391)) (size!27137 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55472)

(declare-fun mapDefault!31374 () ValueCell!9391)

