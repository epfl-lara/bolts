; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81930 () Bool)

(assert start!81930)

(declare-fun b_free!18397 () Bool)

(declare-fun b_next!18397 () Bool)

(assert (=> start!81930 (= b_free!18397 (not b_next!18397))))

(declare-fun tp!63892 () Bool)

(declare-fun b_and!29901 () Bool)

(assert (=> start!81930 (= tp!63892 b_and!29901)))

(declare-fun b!955107 () Bool)

(declare-fun res!639706 () Bool)

(declare-fun e!538112 () Bool)

(assert (=> b!955107 (=> (not res!639706) (not e!538112))))

(declare-datatypes ((array!58007 0))(
  ( (array!58008 (arr!27879 (Array (_ BitVec 32) (_ BitVec 64))) (size!28359 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58007)

(declare-fun i!735 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!955107 (= res!639706 (validKeyInArray!0 (select (arr!27879 _keys!1441) i!735)))))

(declare-fun b!955108 () Bool)

(declare-fun res!639700 () Bool)

(assert (=> b!955108 (=> (not res!639700) (not e!538112))))

(declare-datatypes ((List!19573 0))(
  ( (Nil!19570) (Cons!19569 (h!20731 (_ BitVec 64)) (t!27942 List!19573)) )
))
(declare-fun arrayNoDuplicates!0 (array!58007 (_ BitVec 32) List!19573) Bool)

(assert (=> b!955108 (= res!639700 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19570))))

(declare-fun b!955109 () Bool)

(declare-fun e!538114 () Bool)

(declare-fun e!538116 () Bool)

(declare-fun mapRes!33373 () Bool)

(assert (=> b!955109 (= e!538114 (and e!538116 mapRes!33373))))

(declare-fun condMapEmpty!33373 () Bool)

(declare-datatypes ((V!32905 0))(
  ( (V!32906 (val!10521 Int)) )
))
(declare-datatypes ((ValueCell!9989 0))(
  ( (ValueCellFull!9989 (v!13076 V!32905)) (EmptyCell!9989) )
))
(declare-datatypes ((array!58009 0))(
  ( (array!58010 (arr!27880 (Array (_ BitVec 32) ValueCell!9989)) (size!28360 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58009)

(declare-fun mapDefault!33373 () ValueCell!9989)

