; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100294 () Bool)

(assert start!100294)

(declare-fun b!1195841 () Bool)

(declare-fun e!679523 () Bool)

(assert (=> b!1195841 (= e!679523 (not true))))

(declare-datatypes ((array!77412 0))(
  ( (array!77413 (arr!37349 (Array (_ BitVec 32) (_ BitVec 64))) (size!37886 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77412)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77412 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1195841 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39596 0))(
  ( (Unit!39597) )
))
(declare-fun lt!542946 () Unit!39596)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77412 (_ BitVec 64) (_ BitVec 32)) Unit!39596)

(assert (=> b!1195841 (= lt!542946 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1195842 () Bool)

(declare-fun res!795866 () Bool)

(assert (=> b!1195842 (=> (not res!795866) (not e!679523))))

(declare-fun lt!542945 () array!77412)

(declare-datatypes ((List!26450 0))(
  ( (Nil!26447) (Cons!26446 (h!27655 (_ BitVec 64)) (t!39128 List!26450)) )
))
(declare-fun arrayNoDuplicates!0 (array!77412 (_ BitVec 32) List!26450) Bool)

(assert (=> b!1195842 (= res!795866 (arrayNoDuplicates!0 lt!542945 #b00000000000000000000000000000000 Nil!26447))))

(declare-fun mapIsEmpty!47324 () Bool)

(declare-fun mapRes!47324 () Bool)

(assert (=> mapIsEmpty!47324 mapRes!47324))

(declare-fun b!1195843 () Bool)

(declare-fun res!795864 () Bool)

(declare-fun e!679525 () Bool)

(assert (=> b!1195843 (=> (not res!795864) (not e!679525))))

(assert (=> b!1195843 (= res!795864 (= (select (arr!37349 _keys!1208) i!673) k!934))))

(declare-fun b!1195844 () Bool)

(declare-fun res!795871 () Bool)

(assert (=> b!1195844 (=> (not res!795871) (not e!679525))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1195844 (= res!795871 (validKeyInArray!0 k!934))))

(declare-fun b!1195845 () Bool)

(assert (=> b!1195845 (= e!679525 e!679523)))

(declare-fun res!795868 () Bool)

(assert (=> b!1195845 (=> (not res!795868) (not e!679523))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77412 (_ BitVec 32)) Bool)

(assert (=> b!1195845 (= res!795868 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542945 mask!1564))))

(assert (=> b!1195845 (= lt!542945 (array!77413 (store (arr!37349 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37886 _keys!1208)))))

(declare-fun b!1195847 () Bool)

(declare-fun e!679527 () Bool)

(declare-fun tp_is_empty!30325 () Bool)

(assert (=> b!1195847 (= e!679527 tp_is_empty!30325)))

(declare-fun b!1195848 () Bool)

(declare-fun res!795867 () Bool)

(assert (=> b!1195848 (=> (not res!795867) (not e!679525))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1195848 (= res!795867 (validMask!0 mask!1564))))

(declare-fun b!1195849 () Bool)

(declare-fun res!795863 () Bool)

(assert (=> b!1195849 (=> (not res!795863) (not e!679525))))

(assert (=> b!1195849 (= res!795863 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26447))))

(declare-fun b!1195850 () Bool)

(declare-fun res!795869 () Bool)

(assert (=> b!1195850 (=> (not res!795869) (not e!679525))))

(assert (=> b!1195850 (= res!795869 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37886 _keys!1208))))))

(declare-fun res!795870 () Bool)

(assert (=> start!100294 (=> (not res!795870) (not e!679525))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100294 (= res!795870 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37886 _keys!1208))))))

(assert (=> start!100294 e!679525))

(declare-fun array_inv!28370 (array!77412) Bool)

(assert (=> start!100294 (array_inv!28370 _keys!1208)))

(assert (=> start!100294 true))

(declare-datatypes ((V!45561 0))(
  ( (V!45562 (val!15219 Int)) )
))
(declare-datatypes ((ValueCell!14453 0))(
  ( (ValueCellFull!14453 (v!17858 V!45561)) (EmptyCell!14453) )
))
(declare-datatypes ((array!77414 0))(
  ( (array!77415 (arr!37350 (Array (_ BitVec 32) ValueCell!14453)) (size!37887 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77414)

(declare-fun e!679528 () Bool)

(declare-fun array_inv!28371 (array!77414) Bool)

(assert (=> start!100294 (and (array_inv!28371 _values!996) e!679528)))

(declare-fun b!1195846 () Bool)

(declare-fun e!679524 () Bool)

(assert (=> b!1195846 (= e!679528 (and e!679524 mapRes!47324))))

(declare-fun condMapEmpty!47324 () Bool)

(declare-fun mapDefault!47324 () ValueCell!14453)

