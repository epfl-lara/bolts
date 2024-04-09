; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81898 () Bool)

(assert start!81898)

(declare-fun b_free!18365 () Bool)

(declare-fun b_next!18365 () Bool)

(assert (=> start!81898 (= b_free!18365 (not b_next!18365))))

(declare-fun tp!63795 () Bool)

(declare-fun b_and!29869 () Bool)

(assert (=> start!81898 (= tp!63795 b_and!29869)))

(declare-fun b!954655 () Bool)

(declare-fun res!639397 () Bool)

(declare-fun e!537873 () Bool)

(assert (=> b!954655 (=> (not res!639397) (not e!537873))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((array!57943 0))(
  ( (array!57944 (arr!27847 (Array (_ BitVec 32) (_ BitVec 64))) (size!28327 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57943)

(declare-datatypes ((V!32861 0))(
  ( (V!32862 (val!10505 Int)) )
))
(declare-datatypes ((ValueCell!9973 0))(
  ( (ValueCellFull!9973 (v!13060 V!32861)) (EmptyCell!9973) )
))
(declare-datatypes ((array!57945 0))(
  ( (array!57946 (arr!27848 (Array (_ BitVec 32) ValueCell!9973)) (size!28328 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57945)

(declare-fun mask!1823 () (_ BitVec 32))

(assert (=> b!954655 (= res!639397 (and (= (size!28328 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28327 _keys!1441) (size!28328 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!954657 () Bool)

(declare-fun res!639396 () Bool)

(assert (=> b!954657 (=> (not res!639396) (not e!537873))))

(declare-fun i!735 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!954657 (= res!639396 (validKeyInArray!0 (select (arr!27847 _keys!1441) i!735)))))

(declare-fun mapNonEmpty!33325 () Bool)

(declare-fun mapRes!33325 () Bool)

(declare-fun tp!63796 () Bool)

(declare-fun e!537874 () Bool)

(assert (=> mapNonEmpty!33325 (= mapRes!33325 (and tp!63796 e!537874))))

(declare-fun mapValue!33325 () ValueCell!9973)

(declare-fun mapKey!33325 () (_ BitVec 32))

(declare-fun mapRest!33325 () (Array (_ BitVec 32) ValueCell!9973))

(assert (=> mapNonEmpty!33325 (= (arr!27848 _values!1197) (store mapRest!33325 mapKey!33325 mapValue!33325))))

(declare-fun b!954658 () Bool)

(declare-fun e!537875 () Bool)

(declare-fun e!537876 () Bool)

(assert (=> b!954658 (= e!537875 (and e!537876 mapRes!33325))))

(declare-fun condMapEmpty!33325 () Bool)

(declare-fun mapDefault!33325 () ValueCell!9973)

