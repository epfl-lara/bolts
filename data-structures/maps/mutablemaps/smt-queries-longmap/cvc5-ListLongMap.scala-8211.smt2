; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100168 () Bool)

(assert start!100168)

(declare-fun b!1194066 () Bool)

(declare-fun res!794537 () Bool)

(declare-fun e!678655 () Bool)

(assert (=> b!1194066 (=> (not res!794537) (not e!678655))))

(declare-datatypes ((array!77244 0))(
  ( (array!77245 (arr!37268 (Array (_ BitVec 32) (_ BitVec 64))) (size!37805 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77244)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1194066 (= res!794537 (= (select (arr!37268 _keys!1208) i!673) k!934))))

(declare-fun b!1194067 () Bool)

(declare-fun res!794545 () Bool)

(assert (=> b!1194067 (=> (not res!794545) (not e!678655))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77244 (_ BitVec 32)) Bool)

(assert (=> b!1194067 (= res!794545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1194068 () Bool)

(declare-fun res!794539 () Bool)

(assert (=> b!1194068 (=> (not res!794539) (not e!678655))))

(declare-datatypes ((List!26414 0))(
  ( (Nil!26411) (Cons!26410 (h!27619 (_ BitVec 64)) (t!39092 List!26414)) )
))
(declare-fun arrayNoDuplicates!0 (array!77244 (_ BitVec 32) List!26414) Bool)

(assert (=> b!1194068 (= res!794539 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26411))))

(declare-fun b!1194069 () Bool)

(declare-fun e!678657 () Bool)

(declare-fun tp_is_empty!30241 () Bool)

(assert (=> b!1194069 (= e!678657 tp_is_empty!30241)))

(declare-fun b!1194071 () Bool)

(declare-fun res!794544 () Bool)

(assert (=> b!1194071 (=> (not res!794544) (not e!678655))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!45449 0))(
  ( (V!45450 (val!15177 Int)) )
))
(declare-datatypes ((ValueCell!14411 0))(
  ( (ValueCellFull!14411 (v!17816 V!45449)) (EmptyCell!14411) )
))
(declare-datatypes ((array!77246 0))(
  ( (array!77247 (arr!37269 (Array (_ BitVec 32) ValueCell!14411)) (size!37806 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77246)

(assert (=> b!1194071 (= res!794544 (and (= (size!37806 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37805 _keys!1208) (size!37806 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1194072 () Bool)

(declare-fun res!794538 () Bool)

(assert (=> b!1194072 (=> (not res!794538) (not e!678655))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1194072 (= res!794538 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!47189 () Bool)

(declare-fun mapRes!47189 () Bool)

(assert (=> mapIsEmpty!47189 mapRes!47189))

(declare-fun b!1194073 () Bool)

(declare-fun res!794540 () Bool)

(assert (=> b!1194073 (=> (not res!794540) (not e!678655))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1194073 (= res!794540 (validKeyInArray!0 k!934))))

(declare-fun b!1194074 () Bool)

(declare-fun e!678653 () Bool)

(assert (=> b!1194074 (= e!678653 (and e!678657 mapRes!47189))))

(declare-fun condMapEmpty!47189 () Bool)

(declare-fun mapDefault!47189 () ValueCell!14411)

