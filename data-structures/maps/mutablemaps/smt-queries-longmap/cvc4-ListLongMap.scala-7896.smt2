; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98160 () Bool)

(assert start!98160)

(declare-fun b_free!23825 () Bool)

(declare-fun b_next!23825 () Bool)

(assert (=> start!98160 (= b_free!23825 (not b_next!23825))))

(declare-fun tp!84180 () Bool)

(declare-fun b_and!38455 () Bool)

(assert (=> start!98160 (= tp!84180 b_and!38455)))

(declare-fun res!753663 () Bool)

(declare-fun e!641865 () Bool)

(assert (=> start!98160 (=> (not res!753663) (not e!641865))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!73530 0))(
  ( (array!73531 (arr!35414 (Array (_ BitVec 32) (_ BitVec 64))) (size!35951 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73530)

(assert (=> start!98160 (= res!753663 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35951 _keys!1208))))))

(assert (=> start!98160 e!641865))

(declare-fun tp_is_empty!28355 () Bool)

(assert (=> start!98160 tp_is_empty!28355))

(declare-fun array_inv!27042 (array!73530) Bool)

(assert (=> start!98160 (array_inv!27042 _keys!1208)))

(assert (=> start!98160 true))

(assert (=> start!98160 tp!84180))

(declare-datatypes ((V!42933 0))(
  ( (V!42934 (val!14234 Int)) )
))
(declare-datatypes ((ValueCell!13468 0))(
  ( (ValueCellFull!13468 (v!16868 V!42933)) (EmptyCell!13468) )
))
(declare-datatypes ((array!73532 0))(
  ( (array!73533 (arr!35415 (Array (_ BitVec 32) ValueCell!13468)) (size!35952 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73532)

(declare-fun e!641866 () Bool)

(declare-fun array_inv!27043 (array!73532) Bool)

(assert (=> start!98160 (and (array_inv!27043 _values!996) e!641866)))

(declare-fun b!1127673 () Bool)

(declare-fun e!641868 () Bool)

(declare-fun mapRes!44350 () Bool)

(assert (=> b!1127673 (= e!641866 (and e!641868 mapRes!44350))))

(declare-fun condMapEmpty!44350 () Bool)

(declare-fun mapDefault!44350 () ValueCell!13468)

