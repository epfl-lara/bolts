; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100328 () Bool)

(assert start!100328)

(declare-fun b!1196504 () Bool)

(declare-fun e!679829 () Bool)

(declare-fun e!679832 () Bool)

(assert (=> b!1196504 (= e!679829 e!679832)))

(declare-fun res!796375 () Bool)

(assert (=> b!1196504 (=> (not res!796375) (not e!679832))))

(declare-datatypes ((array!77478 0))(
  ( (array!77479 (arr!37382 (Array (_ BitVec 32) (_ BitVec 64))) (size!37919 (_ BitVec 32))) )
))
(declare-fun lt!543048 () array!77478)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77478 (_ BitVec 32)) Bool)

(assert (=> b!1196504 (= res!796375 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543048 mask!1564))))

(declare-fun _keys!1208 () array!77478)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1196504 (= lt!543048 (array!77479 (store (arr!37382 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37919 _keys!1208)))))

(declare-fun b!1196505 () Bool)

(declare-fun res!796381 () Bool)

(assert (=> b!1196505 (=> (not res!796381) (not e!679832))))

(declare-datatypes ((List!26463 0))(
  ( (Nil!26460) (Cons!26459 (h!27668 (_ BitVec 64)) (t!39141 List!26463)) )
))
(declare-fun arrayNoDuplicates!0 (array!77478 (_ BitVec 32) List!26463) Bool)

(assert (=> b!1196505 (= res!796381 (arrayNoDuplicates!0 lt!543048 #b00000000000000000000000000000000 Nil!26460))))

(declare-fun b!1196506 () Bool)

(declare-fun res!796379 () Bool)

(assert (=> b!1196506 (=> (not res!796379) (not e!679829))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!45605 0))(
  ( (V!45606 (val!15236 Int)) )
))
(declare-datatypes ((ValueCell!14470 0))(
  ( (ValueCellFull!14470 (v!17875 V!45605)) (EmptyCell!14470) )
))
(declare-datatypes ((array!77480 0))(
  ( (array!77481 (arr!37383 (Array (_ BitVec 32) ValueCell!14470)) (size!37920 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77480)

(assert (=> b!1196506 (= res!796379 (and (= (size!37920 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37919 _keys!1208) (size!37920 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1196507 () Bool)

(declare-fun res!796372 () Bool)

(assert (=> b!1196507 (=> (not res!796372) (not e!679829))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1196507 (= res!796372 (validKeyInArray!0 k!934))))

(declare-fun b!1196508 () Bool)

(declare-fun e!679830 () Bool)

(declare-fun e!679831 () Bool)

(declare-fun mapRes!47375 () Bool)

(assert (=> b!1196508 (= e!679830 (and e!679831 mapRes!47375))))

(declare-fun condMapEmpty!47375 () Bool)

(declare-fun mapDefault!47375 () ValueCell!14470)

