; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99926 () Bool)

(assert start!99926)

(declare-fun b_free!25469 () Bool)

(declare-fun b_next!25469 () Bool)

(assert (=> start!99926 (= b_free!25469 (not b_next!25469))))

(declare-fun tp!89121 () Bool)

(declare-fun b_and!41819 () Bool)

(assert (=> start!99926 (= tp!89121 b_and!41819)))

(declare-fun b!1188631 () Bool)

(declare-fun res!790428 () Bool)

(declare-fun e!675875 () Bool)

(assert (=> b!1188631 (=> (not res!790428) (not e!675875))))

(declare-datatypes ((array!76766 0))(
  ( (array!76767 (arr!37029 (Array (_ BitVec 32) (_ BitVec 64))) (size!37566 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76766)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76766 (_ BitVec 32)) Bool)

(assert (=> b!1188631 (= res!790428 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1188632 () Bool)

(declare-fun e!675870 () Bool)

(declare-fun e!675871 () Bool)

(assert (=> b!1188632 (= e!675870 (not e!675871))))

(declare-fun res!790422 () Bool)

(assert (=> b!1188632 (=> res!790422 e!675871)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1188632 (= res!790422 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76766 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1188632 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39366 0))(
  ( (Unit!39367) )
))
(declare-fun lt!540731 () Unit!39366)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76766 (_ BitVec 64) (_ BitVec 32)) Unit!39366)

(assert (=> b!1188632 (= lt!540731 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun res!790425 () Bool)

(assert (=> start!99926 (=> (not res!790425) (not e!675875))))

(assert (=> start!99926 (= res!790425 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37566 _keys!1208))))))

(assert (=> start!99926 e!675875))

(declare-fun tp_is_empty!29999 () Bool)

(assert (=> start!99926 tp_is_empty!29999))

(declare-fun array_inv!28140 (array!76766) Bool)

(assert (=> start!99926 (array_inv!28140 _keys!1208)))

(assert (=> start!99926 true))

(assert (=> start!99926 tp!89121))

(declare-datatypes ((V!45125 0))(
  ( (V!45126 (val!15056 Int)) )
))
(declare-datatypes ((ValueCell!14290 0))(
  ( (ValueCellFull!14290 (v!17695 V!45125)) (EmptyCell!14290) )
))
(declare-datatypes ((array!76768 0))(
  ( (array!76769 (arr!37030 (Array (_ BitVec 32) ValueCell!14290)) (size!37567 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76768)

(declare-fun e!675872 () Bool)

(declare-fun array_inv!28141 (array!76768) Bool)

(assert (=> start!99926 (and (array_inv!28141 _values!996) e!675872)))

(declare-fun b!1188633 () Bool)

(declare-fun e!675873 () Bool)

(assert (=> b!1188633 (= e!675873 tp_is_empty!29999)))

(declare-fun b!1188634 () Bool)

(declare-fun e!675877 () Bool)

(assert (=> b!1188634 (= e!675877 tp_is_empty!29999)))

(declare-fun b!1188635 () Bool)

(declare-fun mapRes!46826 () Bool)

(assert (=> b!1188635 (= e!675872 (and e!675877 mapRes!46826))))

(declare-fun condMapEmpty!46826 () Bool)

(declare-fun mapDefault!46826 () ValueCell!14290)

