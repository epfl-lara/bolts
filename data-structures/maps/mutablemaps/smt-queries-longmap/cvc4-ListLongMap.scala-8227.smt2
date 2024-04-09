; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100310 () Bool)

(assert start!100310)

(declare-fun b!1196153 () Bool)

(declare-fun res!796102 () Bool)

(declare-fun e!679672 () Bool)

(assert (=> b!1196153 (=> (not res!796102) (not e!679672))))

(declare-datatypes ((array!77444 0))(
  ( (array!77445 (arr!37365 (Array (_ BitVec 32) (_ BitVec 64))) (size!37902 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77444)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45581 0))(
  ( (V!45582 (val!15227 Int)) )
))
(declare-datatypes ((ValueCell!14461 0))(
  ( (ValueCellFull!14461 (v!17866 V!45581)) (EmptyCell!14461) )
))
(declare-datatypes ((array!77446 0))(
  ( (array!77447 (arr!37366 (Array (_ BitVec 32) ValueCell!14461)) (size!37903 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77446)

(assert (=> b!1196153 (= res!796102 (and (= (size!37903 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37902 _keys!1208) (size!37903 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1196154 () Bool)

(declare-fun res!796108 () Bool)

(assert (=> b!1196154 (=> (not res!796108) (not e!679672))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77444 (_ BitVec 32)) Bool)

(assert (=> b!1196154 (= res!796108 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1196155 () Bool)

(declare-fun e!679671 () Bool)

(assert (=> b!1196155 (= e!679671 (not true))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77444 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1196155 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39608 0))(
  ( (Unit!39609) )
))
(declare-fun lt!542994 () Unit!39608)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77444 (_ BitVec 64) (_ BitVec 32)) Unit!39608)

(assert (=> b!1196155 (= lt!542994 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1196157 () Bool)

(assert (=> b!1196157 (= e!679672 e!679671)))

(declare-fun res!796109 () Bool)

(assert (=> b!1196157 (=> (not res!796109) (not e!679671))))

(declare-fun lt!542993 () array!77444)

(assert (=> b!1196157 (= res!796109 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542993 mask!1564))))

(assert (=> b!1196157 (= lt!542993 (array!77445 (store (arr!37365 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37902 _keys!1208)))))

(declare-fun b!1196158 () Bool)

(declare-fun e!679669 () Bool)

(declare-fun tp_is_empty!30341 () Bool)

(assert (=> b!1196158 (= e!679669 tp_is_empty!30341)))

(declare-fun b!1196159 () Bool)

(declare-fun res!796107 () Bool)

(assert (=> b!1196159 (=> (not res!796107) (not e!679672))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1196159 (= res!796107 (validMask!0 mask!1564))))

(declare-fun b!1196160 () Bool)

(declare-fun e!679667 () Bool)

(assert (=> b!1196160 (= e!679667 tp_is_empty!30341)))

(declare-fun b!1196161 () Bool)

(declare-fun res!796104 () Bool)

(assert (=> b!1196161 (=> (not res!796104) (not e!679671))))

(declare-datatypes ((List!26456 0))(
  ( (Nil!26453) (Cons!26452 (h!27661 (_ BitVec 64)) (t!39134 List!26456)) )
))
(declare-fun arrayNoDuplicates!0 (array!77444 (_ BitVec 32) List!26456) Bool)

(assert (=> b!1196161 (= res!796104 (arrayNoDuplicates!0 lt!542993 #b00000000000000000000000000000000 Nil!26453))))

(declare-fun b!1196162 () Bool)

(declare-fun res!796103 () Bool)

(assert (=> b!1196162 (=> (not res!796103) (not e!679672))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1196162 (= res!796103 (validKeyInArray!0 k!934))))

(declare-fun b!1196163 () Bool)

(declare-fun res!796105 () Bool)

(assert (=> b!1196163 (=> (not res!796105) (not e!679672))))

(assert (=> b!1196163 (= res!796105 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37902 _keys!1208))))))

(declare-fun res!796110 () Bool)

(assert (=> start!100310 (=> (not res!796110) (not e!679672))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100310 (= res!796110 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37902 _keys!1208))))))

(assert (=> start!100310 e!679672))

(declare-fun array_inv!28382 (array!77444) Bool)

(assert (=> start!100310 (array_inv!28382 _keys!1208)))

(assert (=> start!100310 true))

(declare-fun e!679668 () Bool)

(declare-fun array_inv!28383 (array!77446) Bool)

(assert (=> start!100310 (and (array_inv!28383 _values!996) e!679668)))

(declare-fun b!1196156 () Bool)

(declare-fun mapRes!47348 () Bool)

(assert (=> b!1196156 (= e!679668 (and e!679669 mapRes!47348))))

(declare-fun condMapEmpty!47348 () Bool)

(declare-fun mapDefault!47348 () ValueCell!14461)

