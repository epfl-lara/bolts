; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79154 () Bool)

(assert start!79154)

(declare-fun b_free!17339 () Bool)

(declare-fun b_next!17339 () Bool)

(assert (=> start!79154 (= b_free!17339 (not b_next!17339))))

(declare-fun tp!60458 () Bool)

(declare-fun b_and!28423 () Bool)

(assert (=> start!79154 (= tp!60458 b_and!28423)))

(declare-fun b!928578 () Bool)

(declare-fun res!625415 () Bool)

(declare-fun e!521427 () Bool)

(assert (=> b!928578 (=> (not res!625415) (not e!521427))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55670 0))(
  ( (array!55671 (arr!26776 (Array (_ BitVec 32) (_ BitVec 64))) (size!27236 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55670)

(assert (=> b!928578 (= res!625415 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27236 _keys!1487))))))

(declare-fun mapIsEmpty!31527 () Bool)

(declare-fun mapRes!31527 () Bool)

(assert (=> mapIsEmpty!31527 mapRes!31527))

(declare-fun b!928579 () Bool)

(declare-fun res!625410 () Bool)

(assert (=> b!928579 (=> (not res!625410) (not e!521427))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55670 (_ BitVec 32)) Bool)

(assert (=> b!928579 (= res!625410 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!928580 () Bool)

(declare-fun res!625411 () Bool)

(assert (=> b!928580 (=> (not res!625411) (not e!521427))))

(declare-datatypes ((List!18962 0))(
  ( (Nil!18959) (Cons!18958 (h!20104 (_ BitVec 64)) (t!27027 List!18962)) )
))
(declare-fun arrayNoDuplicates!0 (array!55670 (_ BitVec 32) List!18962) Bool)

(assert (=> b!928580 (= res!625411 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18959))))

(declare-fun b!928581 () Bool)

(declare-fun res!625412 () Bool)

(assert (=> b!928581 (=> (not res!625412) (not e!521427))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31427 0))(
  ( (V!31428 (val!9974 Int)) )
))
(declare-datatypes ((ValueCell!9442 0))(
  ( (ValueCellFull!9442 (v!12492 V!31427)) (EmptyCell!9442) )
))
(declare-datatypes ((array!55672 0))(
  ( (array!55673 (arr!26777 (Array (_ BitVec 32) ValueCell!9442)) (size!27237 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55672)

(assert (=> b!928581 (= res!625412 (and (= (size!27237 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27236 _keys!1487) (size!27237 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!928582 () Bool)

(declare-fun e!521423 () Bool)

(declare-fun e!521426 () Bool)

(assert (=> b!928582 (= e!521423 (and e!521426 mapRes!31527))))

(declare-fun condMapEmpty!31527 () Bool)

(declare-fun mapDefault!31527 () ValueCell!9442)

