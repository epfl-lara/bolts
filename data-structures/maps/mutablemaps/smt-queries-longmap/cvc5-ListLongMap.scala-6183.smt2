; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79234 () Bool)

(assert start!79234)

(declare-fun b_free!17419 () Bool)

(declare-fun b_next!17419 () Bool)

(assert (=> start!79234 (= b_free!17419 (not b_next!17419))))

(declare-fun tp!60699 () Bool)

(declare-fun b_and!28503 () Bool)

(assert (=> start!79234 (= tp!60699 b_and!28503)))

(declare-fun mapIsEmpty!31647 () Bool)

(declare-fun mapRes!31647 () Bool)

(assert (=> mapIsEmpty!31647 mapRes!31647))

(declare-fun b!929780 () Bool)

(declare-fun res!626251 () Bool)

(declare-fun e!522144 () Bool)

(assert (=> b!929780 (=> (not res!626251) (not e!522144))))

(declare-datatypes ((array!55824 0))(
  ( (array!55825 (arr!26853 (Array (_ BitVec 32) (_ BitVec 64))) (size!27313 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55824)

(declare-datatypes ((List!19022 0))(
  ( (Nil!19019) (Cons!19018 (h!20164 (_ BitVec 64)) (t!27087 List!19022)) )
))
(declare-fun arrayNoDuplicates!0 (array!55824 (_ BitVec 32) List!19022) Bool)

(assert (=> b!929780 (= res!626251 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19019))))

(declare-fun b!929781 () Bool)

(declare-fun res!626257 () Bool)

(assert (=> b!929781 (=> (not res!626257) (not e!522144))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!929781 (= res!626257 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27313 _keys!1487))))))

(declare-fun b!929782 () Bool)

(declare-fun res!626253 () Bool)

(assert (=> b!929782 (=> (not res!626253) (not e!522144))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31535 0))(
  ( (V!31536 (val!10014 Int)) )
))
(declare-datatypes ((ValueCell!9482 0))(
  ( (ValueCellFull!9482 (v!12532 V!31535)) (EmptyCell!9482) )
))
(declare-datatypes ((array!55826 0))(
  ( (array!55827 (arr!26854 (Array (_ BitVec 32) ValueCell!9482)) (size!27314 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55826)

(assert (=> b!929782 (= res!626253 (and (= (size!27314 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27313 _keys!1487) (size!27314 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!929783 () Bool)

(declare-fun e!522146 () Bool)

(declare-fun e!522143 () Bool)

(assert (=> b!929783 (= e!522146 (and e!522143 mapRes!31647))))

(declare-fun condMapEmpty!31647 () Bool)

(declare-fun mapDefault!31647 () ValueCell!9482)

