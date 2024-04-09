; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100228 () Bool)

(assert start!100228)

(declare-fun b!1194816 () Bool)

(declare-fun res!795086 () Bool)

(declare-fun e!679034 () Bool)

(assert (=> b!1194816 (=> (not res!795086) (not e!679034))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1194816 (= res!795086 (validMask!0 mask!1564))))

(declare-fun b!1194817 () Bool)

(declare-fun e!679035 () Bool)

(assert (=> b!1194817 (= e!679034 e!679035)))

(declare-fun res!795090 () Bool)

(assert (=> b!1194817 (=> (not res!795090) (not e!679035))))

(declare-datatypes ((array!77312 0))(
  ( (array!77313 (arr!37300 (Array (_ BitVec 32) (_ BitVec 64))) (size!37837 (_ BitVec 32))) )
))
(declare-fun lt!542780 () array!77312)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77312 (_ BitVec 32)) Bool)

(assert (=> b!1194817 (= res!795090 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542780 mask!1564))))

(declare-fun _keys!1208 () array!77312)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1194817 (= lt!542780 (array!77313 (store (arr!37300 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37837 _keys!1208)))))

(declare-fun b!1194818 () Bool)

(declare-fun e!679037 () Bool)

(declare-fun tp_is_empty!30275 () Bool)

(assert (=> b!1194818 (= e!679037 tp_is_empty!30275)))

(declare-fun b!1194819 () Bool)

(declare-fun res!795089 () Bool)

(assert (=> b!1194819 (=> (not res!795089) (not e!679035))))

(declare-datatypes ((List!26428 0))(
  ( (Nil!26425) (Cons!26424 (h!27633 (_ BitVec 64)) (t!39106 List!26428)) )
))
(declare-fun arrayNoDuplicates!0 (array!77312 (_ BitVec 32) List!26428) Bool)

(assert (=> b!1194819 (= res!795089 (arrayNoDuplicates!0 lt!542780 #b00000000000000000000000000000000 Nil!26425))))

(declare-fun b!1194820 () Bool)

(declare-fun e!679036 () Bool)

(assert (=> b!1194820 (= e!679036 tp_is_empty!30275)))

(declare-fun b!1194821 () Bool)

(declare-fun res!795087 () Bool)

(assert (=> b!1194821 (=> (not res!795087) (not e!679034))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!45493 0))(
  ( (V!45494 (val!15194 Int)) )
))
(declare-datatypes ((ValueCell!14428 0))(
  ( (ValueCellFull!14428 (v!17833 V!45493)) (EmptyCell!14428) )
))
(declare-datatypes ((array!77314 0))(
  ( (array!77315 (arr!37301 (Array (_ BitVec 32) ValueCell!14428)) (size!37838 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77314)

(assert (=> b!1194821 (= res!795087 (and (= (size!37838 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37837 _keys!1208) (size!37838 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1194822 () Bool)

(declare-fun res!795091 () Bool)

(assert (=> b!1194822 (=> (not res!795091) (not e!679034))))

(assert (=> b!1194822 (= res!795091 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37837 _keys!1208))))))

(declare-fun b!1194823 () Bool)

(declare-fun res!795092 () Bool)

(assert (=> b!1194823 (=> (not res!795092) (not e!679034))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1194823 (= res!795092 (validKeyInArray!0 k!934))))

(declare-fun b!1194824 () Bool)

(declare-fun e!679033 () Bool)

(declare-fun mapRes!47246 () Bool)

(assert (=> b!1194824 (= e!679033 (and e!679037 mapRes!47246))))

(declare-fun condMapEmpty!47246 () Bool)

(declare-fun mapDefault!47246 () ValueCell!14428)

