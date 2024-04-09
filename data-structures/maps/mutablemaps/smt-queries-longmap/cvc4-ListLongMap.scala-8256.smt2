; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100524 () Bool)

(assert start!100524)

(declare-fun b_free!25811 () Bool)

(declare-fun b_next!25811 () Bool)

(assert (=> start!100524 (= b_free!25811 (not b_next!25811))))

(declare-fun tp!90423 () Bool)

(declare-fun b_and!42523 () Bool)

(assert (=> start!100524 (= tp!90423 b_and!42523)))

(declare-fun b!1200180 () Bool)

(declare-fun res!799008 () Bool)

(declare-fun e!681633 () Bool)

(assert (=> b!1200180 (=> (not res!799008) (not e!681633))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!77784 0))(
  ( (array!77785 (arr!37533 (Array (_ BitVec 32) (_ BitVec 64))) (size!38070 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77784)

(assert (=> b!1200180 (= res!799008 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38070 _keys!1208))))))

(declare-fun b!1200181 () Bool)

(declare-fun e!681635 () Bool)

(declare-fun tp_is_empty!30515 () Bool)

(assert (=> b!1200181 (= e!681635 tp_is_empty!30515)))

(declare-fun b!1200182 () Bool)

(declare-fun res!799006 () Bool)

(assert (=> b!1200182 (=> (not res!799006) (not e!681633))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45813 0))(
  ( (V!45814 (val!15314 Int)) )
))
(declare-datatypes ((ValueCell!14548 0))(
  ( (ValueCellFull!14548 (v!17953 V!45813)) (EmptyCell!14548) )
))
(declare-datatypes ((array!77786 0))(
  ( (array!77787 (arr!37534 (Array (_ BitVec 32) ValueCell!14548)) (size!38071 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77786)

(assert (=> b!1200182 (= res!799006 (and (= (size!38071 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38070 _keys!1208) (size!38071 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1200183 () Bool)

(declare-fun e!681631 () Bool)

(declare-fun e!681632 () Bool)

(declare-fun mapRes!47615 () Bool)

(assert (=> b!1200183 (= e!681631 (and e!681632 mapRes!47615))))

(declare-fun condMapEmpty!47615 () Bool)

(declare-fun mapDefault!47615 () ValueCell!14548)

