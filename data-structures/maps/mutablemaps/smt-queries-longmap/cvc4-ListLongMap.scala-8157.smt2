; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99848 () Bool)

(assert start!99848)

(declare-fun b_free!25391 () Bool)

(declare-fun b_next!25391 () Bool)

(assert (=> start!99848 (= b_free!25391 (not b_next!25391))))

(declare-fun tp!88888 () Bool)

(declare-fun b_and!41663 () Bool)

(assert (=> start!99848 (= tp!88888 b_and!41663)))

(declare-fun mapIsEmpty!46709 () Bool)

(declare-fun mapRes!46709 () Bool)

(assert (=> mapIsEmpty!46709 mapRes!46709))

(declare-fun b!1186343 () Bool)

(declare-fun e!674580 () Bool)

(declare-fun tp_is_empty!29921 () Bool)

(assert (=> b!1186343 (= e!674580 tp_is_empty!29921)))

(declare-fun res!788751 () Bool)

(declare-fun e!674578 () Bool)

(assert (=> start!99848 (=> (not res!788751) (not e!674578))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!76610 0))(
  ( (array!76611 (arr!36951 (Array (_ BitVec 32) (_ BitVec 64))) (size!37488 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76610)

(assert (=> start!99848 (= res!788751 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37488 _keys!1208))))))

(assert (=> start!99848 e!674578))

(assert (=> start!99848 tp_is_empty!29921))

(declare-fun array_inv!28078 (array!76610) Bool)

(assert (=> start!99848 (array_inv!28078 _keys!1208)))

(assert (=> start!99848 true))

(assert (=> start!99848 tp!88888))

(declare-datatypes ((V!45021 0))(
  ( (V!45022 (val!15017 Int)) )
))
(declare-datatypes ((ValueCell!14251 0))(
  ( (ValueCellFull!14251 (v!17656 V!45021)) (EmptyCell!14251) )
))
(declare-datatypes ((array!76612 0))(
  ( (array!76613 (arr!36952 (Array (_ BitVec 32) ValueCell!14251)) (size!37489 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76612)

(declare-fun e!674573 () Bool)

(declare-fun array_inv!28079 (array!76612) Bool)

(assert (=> start!99848 (and (array_inv!28079 _values!996) e!674573)))

(declare-fun b!1186344 () Bool)

(declare-fun e!674572 () Bool)

(assert (=> b!1186344 (= e!674578 e!674572)))

(declare-fun res!788749 () Bool)

(assert (=> b!1186344 (=> (not res!788749) (not e!674572))))

(declare-fun lt!538845 () array!76610)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76610 (_ BitVec 32)) Bool)

(assert (=> b!1186344 (= res!788749 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!538845 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1186344 (= lt!538845 (array!76611 (store (arr!36951 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37488 _keys!1208)))))

(declare-fun b!1186345 () Bool)

(declare-fun e!674579 () Bool)

(assert (=> b!1186345 (= e!674579 tp_is_empty!29921)))

(declare-fun b!1186346 () Bool)

(declare-fun res!788752 () Bool)

(assert (=> b!1186346 (=> (not res!788752) (not e!674578))))

(assert (=> b!1186346 (= res!788752 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1186347 () Bool)

(declare-fun res!788745 () Bool)

(assert (=> b!1186347 (=> (not res!788745) (not e!674578))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1186347 (= res!788745 (validKeyInArray!0 k!934))))

(declare-fun b!1186348 () Bool)

(declare-fun e!674577 () Bool)

(assert (=> b!1186348 (= e!674577 true)))

(declare-datatypes ((tuple2!19398 0))(
  ( (tuple2!19399 (_1!9709 (_ BitVec 64)) (_2!9709 V!45021)) )
))
(declare-datatypes ((List!26159 0))(
  ( (Nil!26156) (Cons!26155 (h!27364 tuple2!19398) (t!38549 List!26159)) )
))
(declare-datatypes ((ListLongMap!17379 0))(
  ( (ListLongMap!17380 (toList!8705 List!26159)) )
))
(declare-fun lt!538858 () ListLongMap!17379)

(declare-fun lt!538854 () ListLongMap!17379)

(declare-fun -!1690 (ListLongMap!17379 (_ BitVec 64)) ListLongMap!17379)

(assert (=> b!1186348 (= (-!1690 lt!538858 k!934) lt!538854)))

(declare-datatypes ((Unit!39248 0))(
  ( (Unit!39249) )
))
(declare-fun lt!538857 () Unit!39248)

(declare-fun lt!538853 () V!45021)

(declare-fun lt!538847 () ListLongMap!17379)

(declare-fun addRemoveCommutativeForDiffKeys!199 (ListLongMap!17379 (_ BitVec 64) V!45021 (_ BitVec 64)) Unit!39248)

(assert (=> b!1186348 (= lt!538857 (addRemoveCommutativeForDiffKeys!199 lt!538847 (select (arr!36951 _keys!1208) from!1455) lt!538853 k!934))))

(declare-fun lt!538846 () ListLongMap!17379)

(declare-fun lt!538849 () ListLongMap!17379)

(declare-fun lt!538859 () ListLongMap!17379)

(assert (=> b!1186348 (and (= lt!538859 lt!538858) (= lt!538849 lt!538846))))

(declare-fun lt!538851 () tuple2!19398)

(declare-fun +!3909 (ListLongMap!17379 tuple2!19398) ListLongMap!17379)

(assert (=> b!1186348 (= lt!538858 (+!3909 lt!538847 lt!538851))))

(assert (=> b!1186348 (not (= (select (arr!36951 _keys!1208) from!1455) k!934))))

(declare-fun lt!538843 () Unit!39248)

(declare-fun e!674581 () Unit!39248)

(assert (=> b!1186348 (= lt!538843 e!674581)))

(declare-fun c!117158 () Bool)

(assert (=> b!1186348 (= c!117158 (= (select (arr!36951 _keys!1208) from!1455) k!934))))

(declare-fun e!674570 () Bool)

(assert (=> b!1186348 e!674570))

(declare-fun res!788756 () Bool)

(assert (=> b!1186348 (=> (not res!788756) (not e!674570))))

(declare-fun lt!538856 () ListLongMap!17379)

(assert (=> b!1186348 (= res!788756 (= lt!538856 lt!538854))))

(assert (=> b!1186348 (= lt!538854 (+!3909 lt!538849 lt!538851))))

(assert (=> b!1186348 (= lt!538851 (tuple2!19399 (select (arr!36951 _keys!1208) from!1455) lt!538853))))

(declare-fun lt!538842 () V!45021)

(declare-fun get!18961 (ValueCell!14251 V!45021) V!45021)

(assert (=> b!1186348 (= lt!538853 (get!18961 (select (arr!36952 _values!996) from!1455) lt!538842))))

(declare-fun b!1186349 () Bool)

(declare-fun e!674575 () Bool)

(assert (=> b!1186349 (= e!674570 e!674575)))

(declare-fun res!788755 () Bool)

(assert (=> b!1186349 (=> res!788755 e!674575)))

(assert (=> b!1186349 (= res!788755 (not (= (select (arr!36951 _keys!1208) from!1455) k!934)))))

(declare-fun b!1186350 () Bool)

(assert (=> b!1186350 (= e!674573 (and e!674579 mapRes!46709))))

(declare-fun condMapEmpty!46709 () Bool)

(declare-fun mapDefault!46709 () ValueCell!14251)

