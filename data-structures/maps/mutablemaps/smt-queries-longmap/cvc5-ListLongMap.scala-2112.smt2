; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35848 () Bool)

(assert start!35848)

(declare-fun b!359980 () Bool)

(declare-fun res!200229 () Bool)

(declare-fun e!220463 () Bool)

(assert (=> b!359980 (=> (not res!200229) (not e!220463))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!20107 0))(
  ( (array!20108 (arr!9544 (Array (_ BitVec 32) (_ BitVec 64))) (size!9896 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20107)

(declare-datatypes ((V!12035 0))(
  ( (V!12036 (val!4191 Int)) )
))
(declare-datatypes ((ValueCell!3803 0))(
  ( (ValueCellFull!3803 (v!6381 V!12035)) (EmptyCell!3803) )
))
(declare-datatypes ((array!20109 0))(
  ( (array!20110 (arr!9545 (Array (_ BitVec 32) ValueCell!3803)) (size!9897 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20109)

(assert (=> b!359980 (= res!200229 (and (= (size!9897 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9896 _keys!1456) (size!9897 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!359981 () Bool)

(declare-fun e!220465 () Bool)

(declare-fun e!220466 () Bool)

(declare-fun mapRes!13947 () Bool)

(assert (=> b!359981 (= e!220465 (and e!220466 mapRes!13947))))

(declare-fun condMapEmpty!13947 () Bool)

(declare-fun mapDefault!13947 () ValueCell!3803)

