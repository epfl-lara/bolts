; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81936 () Bool)

(assert start!81936)

(declare-fun b_free!18403 () Bool)

(declare-fun b_next!18403 () Bool)

(assert (=> start!81936 (= b_free!18403 (not b_next!18403))))

(declare-fun tp!63910 () Bool)

(declare-fun b_and!29907 () Bool)

(assert (=> start!81936 (= tp!63910 b_and!29907)))

(declare-fun b!955197 () Bool)

(declare-fun res!639767 () Bool)

(declare-fun e!538159 () Bool)

(assert (=> b!955197 (=> (not res!639767) (not e!538159))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((array!58019 0))(
  ( (array!58020 (arr!27885 (Array (_ BitVec 32) (_ BitVec 64))) (size!28365 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58019)

(declare-datatypes ((V!32913 0))(
  ( (V!32914 (val!10524 Int)) )
))
(declare-datatypes ((ValueCell!9992 0))(
  ( (ValueCellFull!9992 (v!13079 V!32913)) (EmptyCell!9992) )
))
(declare-datatypes ((array!58021 0))(
  ( (array!58022 (arr!27886 (Array (_ BitVec 32) ValueCell!9992)) (size!28366 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58021)

(declare-fun mask!1823 () (_ BitVec 32))

(assert (=> b!955197 (= res!639767 (and (= (size!28366 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28365 _keys!1441) (size!28366 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!33382 () Bool)

(declare-fun mapRes!33382 () Bool)

(declare-fun tp!63909 () Bool)

(declare-fun e!538161 () Bool)

(assert (=> mapNonEmpty!33382 (= mapRes!33382 (and tp!63909 e!538161))))

(declare-fun mapValue!33382 () ValueCell!9992)

(declare-fun mapKey!33382 () (_ BitVec 32))

(declare-fun mapRest!33382 () (Array (_ BitVec 32) ValueCell!9992))

(assert (=> mapNonEmpty!33382 (= (arr!27886 _values!1197) (store mapRest!33382 mapKey!33382 mapValue!33382))))

(declare-fun b!955198 () Bool)

(declare-fun e!538157 () Bool)

(declare-fun e!538158 () Bool)

(assert (=> b!955198 (= e!538157 (and e!538158 mapRes!33382))))

(declare-fun condMapEmpty!33382 () Bool)

(declare-fun mapDefault!33382 () ValueCell!9992)

