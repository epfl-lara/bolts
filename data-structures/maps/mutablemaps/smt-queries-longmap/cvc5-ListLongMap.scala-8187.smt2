; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100024 () Bool)

(assert start!100024)

(declare-fun b_free!25567 () Bool)

(declare-fun b_next!25567 () Bool)

(assert (=> start!100024 (= b_free!25567 (not b_next!25567))))

(declare-fun tp!89415 () Bool)

(declare-fun b_and!42015 () Bool)

(assert (=> start!100024 (= tp!89415 b_and!42015)))

(declare-fun b!1190934 () Bool)

(declare-fun e!677051 () Bool)

(declare-fun e!677053 () Bool)

(assert (=> b!1190934 (= e!677051 e!677053)))

(declare-fun res!792188 () Bool)

(assert (=> b!1190934 (=> (not res!792188) (not e!677053))))

(declare-datatypes ((array!76960 0))(
  ( (array!76961 (arr!37126 (Array (_ BitVec 32) (_ BitVec 64))) (size!37663 (_ BitVec 32))) )
))
(declare-fun lt!541610 () array!76960)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76960 (_ BitVec 32)) Bool)

(assert (=> b!1190934 (= res!792188 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541610 mask!1564))))

(declare-fun _keys!1208 () array!76960)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1190934 (= lt!541610 (array!76961 (store (arr!37126 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37663 _keys!1208)))))

(declare-fun b!1190935 () Bool)

(declare-fun res!792192 () Bool)

(assert (=> b!1190935 (=> (not res!792192) (not e!677051))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1190935 (= res!792192 (= (select (arr!37126 _keys!1208) i!673) k!934))))

(declare-fun b!1190936 () Bool)

(declare-fun e!677049 () Bool)

(assert (=> b!1190936 (= e!677053 (not e!677049))))

(declare-fun res!792196 () Bool)

(assert (=> b!1190936 (=> res!792196 e!677049)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1190936 (= res!792196 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76960 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1190936 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39454 0))(
  ( (Unit!39455) )
))
(declare-fun lt!541612 () Unit!39454)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76960 (_ BitVec 64) (_ BitVec 32)) Unit!39454)

(assert (=> b!1190936 (= lt!541612 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun res!792195 () Bool)

(assert (=> start!100024 (=> (not res!792195) (not e!677051))))

(assert (=> start!100024 (= res!792195 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37663 _keys!1208))))))

(assert (=> start!100024 e!677051))

(declare-fun tp_is_empty!30097 () Bool)

(assert (=> start!100024 tp_is_empty!30097))

(declare-fun array_inv!28212 (array!76960) Bool)

(assert (=> start!100024 (array_inv!28212 _keys!1208)))

(assert (=> start!100024 true))

(assert (=> start!100024 tp!89415))

(declare-datatypes ((V!45257 0))(
  ( (V!45258 (val!15105 Int)) )
))
(declare-datatypes ((ValueCell!14339 0))(
  ( (ValueCellFull!14339 (v!17744 V!45257)) (EmptyCell!14339) )
))
(declare-datatypes ((array!76962 0))(
  ( (array!76963 (arr!37127 (Array (_ BitVec 32) ValueCell!14339)) (size!37664 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76962)

(declare-fun e!677047 () Bool)

(declare-fun array_inv!28213 (array!76962) Bool)

(assert (=> start!100024 (and (array_inv!28213 _values!996) e!677047)))

(declare-fun b!1190937 () Bool)

(declare-fun res!792187 () Bool)

(assert (=> b!1190937 (=> (not res!792187) (not e!677051))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1190937 (= res!792187 (and (= (size!37664 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37663 _keys!1208) (size!37664 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1190938 () Bool)

(declare-fun e!677050 () Bool)

(declare-fun mapRes!46973 () Bool)

(assert (=> b!1190938 (= e!677047 (and e!677050 mapRes!46973))))

(declare-fun condMapEmpty!46973 () Bool)

(declare-fun mapDefault!46973 () ValueCell!14339)

