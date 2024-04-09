; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35758 () Bool)

(assert start!35758)

(declare-fun b!358935 () Bool)

(declare-fun e!219791 () Bool)

(declare-fun e!219787 () Bool)

(declare-fun mapRes!13812 () Bool)

(assert (=> b!358935 (= e!219791 (and e!219787 mapRes!13812))))

(declare-fun condMapEmpty!13812 () Bool)

(declare-datatypes ((V!11915 0))(
  ( (V!11916 (val!4146 Int)) )
))
(declare-datatypes ((ValueCell!3758 0))(
  ( (ValueCellFull!3758 (v!6336 V!11915)) (EmptyCell!3758) )
))
(declare-datatypes ((array!19929 0))(
  ( (array!19930 (arr!9455 (Array (_ BitVec 32) ValueCell!3758)) (size!9807 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19929)

(declare-fun mapDefault!13812 () ValueCell!3758)

