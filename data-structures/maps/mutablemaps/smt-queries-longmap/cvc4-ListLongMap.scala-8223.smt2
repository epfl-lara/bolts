; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100286 () Bool)

(assert start!100286)

(declare-fun b!1195685 () Bool)

(declare-fun res!795743 () Bool)

(declare-fun e!679453 () Bool)

(assert (=> b!1195685 (=> (not res!795743) (not e!679453))))

(declare-datatypes ((array!77396 0))(
  ( (array!77397 (arr!37341 (Array (_ BitVec 32) (_ BitVec 64))) (size!37878 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77396)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!45549 0))(
  ( (V!45550 (val!15215 Int)) )
))
(declare-datatypes ((ValueCell!14449 0))(
  ( (ValueCellFull!14449 (v!17854 V!45549)) (EmptyCell!14449) )
))
(declare-datatypes ((array!77398 0))(
  ( (array!77399 (arr!37342 (Array (_ BitVec 32) ValueCell!14449)) (size!37879 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77398)

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1195685 (= res!795743 (and (= (size!37879 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37878 _keys!1208) (size!37879 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1195686 () Bool)

(declare-fun e!679452 () Bool)

(assert (=> b!1195686 (= e!679452 (not true))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77396 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1195686 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39588 0))(
  ( (Unit!39589) )
))
(declare-fun lt!542921 () Unit!39588)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77396 (_ BitVec 64) (_ BitVec 32)) Unit!39588)

(assert (=> b!1195686 (= lt!542921 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1195687 () Bool)

(declare-fun res!795747 () Bool)

(assert (=> b!1195687 (=> (not res!795747) (not e!679453))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1195687 (= res!795747 (validKeyInArray!0 k!934))))

(declare-fun b!1195689 () Bool)

(assert (=> b!1195689 (= e!679453 e!679452)))

(declare-fun res!795742 () Bool)

(assert (=> b!1195689 (=> (not res!795742) (not e!679452))))

(declare-fun lt!542922 () array!77396)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77396 (_ BitVec 32)) Bool)

(assert (=> b!1195689 (= res!795742 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542922 mask!1564))))

(assert (=> b!1195689 (= lt!542922 (array!77397 (store (arr!37341 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37878 _keys!1208)))))

(declare-fun b!1195690 () Bool)

(declare-fun res!795746 () Bool)

(assert (=> b!1195690 (=> (not res!795746) (not e!679453))))

(assert (=> b!1195690 (= res!795746 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37878 _keys!1208))))))

(declare-fun b!1195691 () Bool)

(declare-fun res!795744 () Bool)

(assert (=> b!1195691 (=> (not res!795744) (not e!679453))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1195691 (= res!795744 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!47312 () Bool)

(declare-fun mapRes!47312 () Bool)

(assert (=> mapIsEmpty!47312 mapRes!47312))

(declare-fun b!1195692 () Bool)

(declare-fun res!795751 () Bool)

(assert (=> b!1195692 (=> (not res!795751) (not e!679453))))

(assert (=> b!1195692 (= res!795751 (= (select (arr!37341 _keys!1208) i!673) k!934))))

(declare-fun b!1195693 () Bool)

(declare-fun e!679456 () Bool)

(declare-fun tp_is_empty!30317 () Bool)

(assert (=> b!1195693 (= e!679456 tp_is_empty!30317)))

(declare-fun b!1195694 () Bool)

(declare-fun e!679451 () Bool)

(assert (=> b!1195694 (= e!679451 tp_is_empty!30317)))

(declare-fun res!795750 () Bool)

(assert (=> start!100286 (=> (not res!795750) (not e!679453))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100286 (= res!795750 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37878 _keys!1208))))))

(assert (=> start!100286 e!679453))

(declare-fun array_inv!28362 (array!77396) Bool)

(assert (=> start!100286 (array_inv!28362 _keys!1208)))

(assert (=> start!100286 true))

(declare-fun e!679454 () Bool)

(declare-fun array_inv!28363 (array!77398) Bool)

(assert (=> start!100286 (and (array_inv!28363 _values!996) e!679454)))

(declare-fun b!1195688 () Bool)

(declare-fun res!795749 () Bool)

(assert (=> b!1195688 (=> (not res!795749) (not e!679453))))

(declare-datatypes ((List!26446 0))(
  ( (Nil!26443) (Cons!26442 (h!27651 (_ BitVec 64)) (t!39124 List!26446)) )
))
(declare-fun arrayNoDuplicates!0 (array!77396 (_ BitVec 32) List!26446) Bool)

(assert (=> b!1195688 (= res!795749 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26443))))

(declare-fun b!1195695 () Bool)

(declare-fun res!795748 () Bool)

(assert (=> b!1195695 (=> (not res!795748) (not e!679453))))

(assert (=> b!1195695 (= res!795748 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1195696 () Bool)

(declare-fun res!795745 () Bool)

(assert (=> b!1195696 (=> (not res!795745) (not e!679452))))

(assert (=> b!1195696 (= res!795745 (arrayNoDuplicates!0 lt!542922 #b00000000000000000000000000000000 Nil!26443))))

(declare-fun mapNonEmpty!47312 () Bool)

(declare-fun tp!89923 () Bool)

(assert (=> mapNonEmpty!47312 (= mapRes!47312 (and tp!89923 e!679456))))

(declare-fun mapRest!47312 () (Array (_ BitVec 32) ValueCell!14449))

(declare-fun mapValue!47312 () ValueCell!14449)

(declare-fun mapKey!47312 () (_ BitVec 32))

(assert (=> mapNonEmpty!47312 (= (arr!37342 _values!996) (store mapRest!47312 mapKey!47312 mapValue!47312))))

(declare-fun b!1195697 () Bool)

(assert (=> b!1195697 (= e!679454 (and e!679451 mapRes!47312))))

(declare-fun condMapEmpty!47312 () Bool)

(declare-fun mapDefault!47312 () ValueCell!14449)

