; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78826 () Bool)

(assert start!78826)

(declare-fun b_free!17011 () Bool)

(declare-fun b_next!17011 () Bool)

(assert (=> start!78826 (= b_free!17011 (not b_next!17011))))

(declare-fun tp!59474 () Bool)

(declare-fun b_and!27777 () Bool)

(assert (=> start!78826 (= tp!59474 b_and!27777)))

(declare-fun b!919655 () Bool)

(declare-fun res!620245 () Bool)

(declare-fun e!516224 () Bool)

(assert (=> b!919655 (=> (not res!620245) (not e!516224))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55030 0))(
  ( (array!55031 (arr!26456 (Array (_ BitVec 32) (_ BitVec 64))) (size!26916 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55030)

(assert (=> b!919655 (= res!620245 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26916 _keys!1487))))))

(declare-fun b!919656 () Bool)

(declare-fun res!620244 () Bool)

(declare-fun e!516223 () Bool)

(assert (=> b!919656 (=> (not res!620244) (not e!516223))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!919656 (= res!620244 (validKeyInArray!0 k!1099))))

(declare-fun b!919657 () Bool)

(declare-fun e!516228 () Bool)

(declare-fun e!516227 () Bool)

(declare-fun mapRes!31035 () Bool)

(assert (=> b!919657 (= e!516228 (and e!516227 mapRes!31035))))

(declare-fun condMapEmpty!31035 () Bool)

(declare-datatypes ((V!30991 0))(
  ( (V!30992 (val!9810 Int)) )
))
(declare-datatypes ((ValueCell!9278 0))(
  ( (ValueCellFull!9278 (v!12328 V!30991)) (EmptyCell!9278) )
))
(declare-datatypes ((array!55032 0))(
  ( (array!55033 (arr!26457 (Array (_ BitVec 32) ValueCell!9278)) (size!26917 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55032)

(declare-fun mapDefault!31035 () ValueCell!9278)

