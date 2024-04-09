; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98166 () Bool)

(assert start!98166)

(declare-fun b_free!23831 () Bool)

(declare-fun b_next!23831 () Bool)

(assert (=> start!98166 (= b_free!23831 (not b_next!23831))))

(declare-fun tp!84197 () Bool)

(declare-fun b_and!38467 () Bool)

(assert (=> start!98166 (= tp!84197 b_and!38467)))

(declare-fun b!1127841 () Bool)

(declare-fun res!753775 () Bool)

(declare-fun e!641959 () Bool)

(assert (=> b!1127841 (=> (not res!753775) (not e!641959))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!73542 0))(
  ( (array!73543 (arr!35420 (Array (_ BitVec 32) (_ BitVec 64))) (size!35957 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73542)

(assert (=> b!1127841 (= res!753775 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35957 _keys!1208))))))

(declare-fun b!1127842 () Bool)

(declare-fun e!641956 () Bool)

(assert (=> b!1127842 (= e!641959 e!641956)))

(declare-fun res!753780 () Bool)

(assert (=> b!1127842 (=> (not res!753780) (not e!641956))))

(declare-fun lt!500726 () array!73542)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73542 (_ BitVec 32)) Bool)

(assert (=> b!1127842 (= res!753780 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500726 mask!1564))))

(assert (=> b!1127842 (= lt!500726 (array!73543 (store (arr!35420 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35957 _keys!1208)))))

(declare-fun b!1127843 () Bool)

(declare-fun res!753781 () Bool)

(assert (=> b!1127843 (=> (not res!753781) (not e!641959))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1127843 (= res!753781 (= (select (arr!35420 _keys!1208) i!673) k!934))))

(declare-fun b!1127844 () Bool)

(declare-fun e!641963 () Bool)

(declare-datatypes ((V!42941 0))(
  ( (V!42942 (val!14237 Int)) )
))
(declare-datatypes ((tuple2!18000 0))(
  ( (tuple2!18001 (_1!9010 (_ BitVec 64)) (_2!9010 V!42941)) )
))
(declare-datatypes ((List!24825 0))(
  ( (Nil!24822) (Cons!24821 (h!26030 tuple2!18000) (t!35655 List!24825)) )
))
(declare-datatypes ((ListLongMap!15981 0))(
  ( (ListLongMap!15982 (toList!8006 List!24825)) )
))
(declare-fun call!47777 () ListLongMap!15981)

(declare-fun call!47776 () ListLongMap!15981)

(declare-fun -!1142 (ListLongMap!15981 (_ BitVec 64)) ListLongMap!15981)

(assert (=> b!1127844 (= e!641963 (= call!47777 (-!1142 call!47776 k!934)))))

(declare-fun b!1127845 () Bool)

(declare-fun e!641957 () Bool)

(assert (=> b!1127845 (= e!641956 (not e!641957))))

(declare-fun res!753783 () Bool)

(assert (=> b!1127845 (=> res!753783 e!641957)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1127845 (= res!753783 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73542 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1127845 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36899 0))(
  ( (Unit!36900) )
))
(declare-fun lt!500729 () Unit!36899)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73542 (_ BitVec 64) (_ BitVec 32)) Unit!36899)

(assert (=> b!1127845 (= lt!500729 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1127846 () Bool)

(declare-fun res!753782 () Bool)

(assert (=> b!1127846 (=> (not res!753782) (not e!641956))))

(declare-datatypes ((List!24826 0))(
  ( (Nil!24823) (Cons!24822 (h!26031 (_ BitVec 64)) (t!35656 List!24826)) )
))
(declare-fun arrayNoDuplicates!0 (array!73542 (_ BitVec 32) List!24826) Bool)

(assert (=> b!1127846 (= res!753782 (arrayNoDuplicates!0 lt!500726 #b00000000000000000000000000000000 Nil!24823))))

(declare-fun b!1127847 () Bool)

(declare-fun e!641954 () Bool)

(declare-fun tp_is_empty!28361 () Bool)

(assert (=> b!1127847 (= e!641954 tp_is_empty!28361)))

(declare-fun b!1127848 () Bool)

(declare-fun e!641962 () Bool)

(declare-fun mapRes!44359 () Bool)

(assert (=> b!1127848 (= e!641962 (and e!641954 mapRes!44359))))

(declare-fun condMapEmpty!44359 () Bool)

(declare-datatypes ((ValueCell!13471 0))(
  ( (ValueCellFull!13471 (v!16871 V!42941)) (EmptyCell!13471) )
))
(declare-datatypes ((array!73544 0))(
  ( (array!73545 (arr!35421 (Array (_ BitVec 32) ValueCell!13471)) (size!35958 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73544)

(declare-fun mapDefault!44359 () ValueCell!13471)

