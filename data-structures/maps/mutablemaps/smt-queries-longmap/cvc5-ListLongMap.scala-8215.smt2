; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100218 () Bool)

(assert start!100218)

(declare-fun b!1194621 () Bool)

(declare-fun res!794938 () Bool)

(declare-fun e!678948 () Bool)

(assert (=> b!1194621 (=> (not res!794938) (not e!678948))))

(declare-datatypes ((array!77294 0))(
  ( (array!77295 (arr!37291 (Array (_ BitVec 32) (_ BitVec 64))) (size!37828 (_ BitVec 32))) )
))
(declare-fun lt!542750 () array!77294)

(declare-datatypes ((List!26424 0))(
  ( (Nil!26421) (Cons!26420 (h!27629 (_ BitVec 64)) (t!39102 List!26424)) )
))
(declare-fun arrayNoDuplicates!0 (array!77294 (_ BitVec 32) List!26424) Bool)

(assert (=> b!1194621 (= res!794938 (arrayNoDuplicates!0 lt!542750 #b00000000000000000000000000000000 Nil!26421))))

(declare-fun res!794943 () Bool)

(declare-fun e!678945 () Bool)

(assert (=> start!100218 (=> (not res!794943) (not e!678945))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun _keys!1208 () array!77294)

(assert (=> start!100218 (= res!794943 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37828 _keys!1208))))))

(assert (=> start!100218 e!678945))

(declare-fun array_inv!28328 (array!77294) Bool)

(assert (=> start!100218 (array_inv!28328 _keys!1208)))

(assert (=> start!100218 true))

(declare-datatypes ((V!45481 0))(
  ( (V!45482 (val!15189 Int)) )
))
(declare-datatypes ((ValueCell!14423 0))(
  ( (ValueCellFull!14423 (v!17828 V!45481)) (EmptyCell!14423) )
))
(declare-datatypes ((array!77296 0))(
  ( (array!77297 (arr!37292 (Array (_ BitVec 32) ValueCell!14423)) (size!37829 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77296)

(declare-fun e!678947 () Bool)

(declare-fun array_inv!28329 (array!77296) Bool)

(assert (=> start!100218 (and (array_inv!28329 _values!996) e!678947)))

(declare-fun b!1194622 () Bool)

(declare-fun e!678943 () Bool)

(declare-fun mapRes!47231 () Bool)

(assert (=> b!1194622 (= e!678947 (and e!678943 mapRes!47231))))

(declare-fun condMapEmpty!47231 () Bool)

(declare-fun mapDefault!47231 () ValueCell!14423)

