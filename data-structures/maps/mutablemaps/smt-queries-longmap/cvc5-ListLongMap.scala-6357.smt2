; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81906 () Bool)

(assert start!81906)

(declare-fun b_free!18373 () Bool)

(declare-fun b_next!18373 () Bool)

(assert (=> start!81906 (= b_free!18373 (not b_next!18373))))

(declare-fun tp!63820 () Bool)

(declare-fun b_and!29877 () Bool)

(assert (=> start!81906 (= tp!63820 b_and!29877)))

(declare-fun b!954763 () Bool)

(declare-fun res!639466 () Bool)

(declare-fun e!537934 () Bool)

(assert (=> b!954763 (=> (not res!639466) (not e!537934))))

(declare-datatypes ((array!57959 0))(
  ( (array!57960 (arr!27855 (Array (_ BitVec 32) (_ BitVec 64))) (size!28335 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57959)

(declare-fun i!735 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!954763 (= res!639466 (validKeyInArray!0 (select (arr!27855 _keys!1441) i!735)))))

(declare-fun b!954764 () Bool)

(declare-fun e!537932 () Bool)

(declare-fun e!537935 () Bool)

(declare-fun mapRes!33337 () Bool)

(assert (=> b!954764 (= e!537932 (and e!537935 mapRes!33337))))

(declare-fun condMapEmpty!33337 () Bool)

(declare-datatypes ((V!32873 0))(
  ( (V!32874 (val!10509 Int)) )
))
(declare-datatypes ((ValueCell!9977 0))(
  ( (ValueCellFull!9977 (v!13064 V!32873)) (EmptyCell!9977) )
))
(declare-datatypes ((array!57961 0))(
  ( (array!57962 (arr!27856 (Array (_ BitVec 32) ValueCell!9977)) (size!28336 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57961)

(declare-fun mapDefault!33337 () ValueCell!9977)

