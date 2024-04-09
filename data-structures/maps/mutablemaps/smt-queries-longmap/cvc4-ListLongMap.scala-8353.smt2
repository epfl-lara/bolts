; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101740 () Bool)

(assert start!101740)

(declare-fun b_free!26393 () Bool)

(declare-fun b_next!26393 () Bool)

(assert (=> start!101740 (= b_free!26393 (not b_next!26393))))

(declare-fun tp!92225 () Bool)

(declare-fun b_and!44057 () Bool)

(assert (=> start!101740 (= tp!92225 b_and!44057)))

(declare-fun b!1223496 () Bool)

(declare-fun res!813035 () Bool)

(declare-fun e!694923 () Bool)

(assert (=> b!1223496 (=> (not res!813035) (not e!694923))))

(declare-datatypes ((array!78952 0))(
  ( (array!78953 (arr!38099 (Array (_ BitVec 32) (_ BitVec 64))) (size!38636 (_ BitVec 32))) )
))
(declare-fun lt!556875 () array!78952)

(declare-datatypes ((List!27060 0))(
  ( (Nil!27057) (Cons!27056 (h!28265 (_ BitVec 64)) (t!40440 List!27060)) )
))
(declare-fun arrayNoDuplicates!0 (array!78952 (_ BitVec 32) List!27060) Bool)

(assert (=> b!1223496 (= res!813035 (arrayNoDuplicates!0 lt!556875 #b00000000000000000000000000000000 Nil!27057))))

(declare-fun b!1223497 () Bool)

(declare-fun e!694916 () Bool)

(assert (=> b!1223497 (= e!694916 true)))

(declare-fun e!694915 () Bool)

(assert (=> b!1223497 e!694915))

(declare-fun res!813023 () Bool)

(assert (=> b!1223497 (=> (not res!813023) (not e!694915))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun _keys!1208 () array!78952)

(assert (=> b!1223497 (= res!813023 (not (= (select (arr!38099 _keys!1208) from!1455) k!934)))))

(declare-datatypes ((Unit!40451 0))(
  ( (Unit!40452) )
))
(declare-fun lt!556884 () Unit!40451)

(declare-fun e!694917 () Unit!40451)

(assert (=> b!1223497 (= lt!556884 e!694917)))

(declare-fun c!120354 () Bool)

(assert (=> b!1223497 (= c!120354 (= (select (arr!38099 _keys!1208) from!1455) k!934))))

(declare-fun e!694922 () Bool)

(assert (=> b!1223497 e!694922))

(declare-fun res!813036 () Bool)

(assert (=> b!1223497 (=> (not res!813036) (not e!694922))))

(declare-datatypes ((V!46589 0))(
  ( (V!46590 (val!15605 Int)) )
))
(declare-datatypes ((tuple2!20248 0))(
  ( (tuple2!20249 (_1!10134 (_ BitVec 64)) (_2!10134 V!46589)) )
))
(declare-fun lt!556877 () tuple2!20248)

(declare-datatypes ((List!27061 0))(
  ( (Nil!27058) (Cons!27057 (h!28266 tuple2!20248) (t!40441 List!27061)) )
))
(declare-datatypes ((ListLongMap!18229 0))(
  ( (ListLongMap!18230 (toList!9130 List!27061)) )
))
(declare-fun lt!556878 () ListLongMap!18229)

(declare-fun lt!556874 () ListLongMap!18229)

(declare-fun +!4093 (ListLongMap!18229 tuple2!20248) ListLongMap!18229)

(assert (=> b!1223497 (= res!813036 (= lt!556878 (+!4093 lt!556874 lt!556877)))))

(declare-fun lt!556883 () V!46589)

(declare-datatypes ((ValueCell!14839 0))(
  ( (ValueCellFull!14839 (v!18268 V!46589)) (EmptyCell!14839) )
))
(declare-datatypes ((array!78954 0))(
  ( (array!78955 (arr!38100 (Array (_ BitVec 32) ValueCell!14839)) (size!38637 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78954)

(declare-fun get!19497 (ValueCell!14839 V!46589) V!46589)

(assert (=> b!1223497 (= lt!556877 (tuple2!20249 (select (arr!38099 _keys!1208) from!1455) (get!19497 (select (arr!38100 _values!996) from!1455) lt!556883)))))

(declare-fun mapIsEmpty!48544 () Bool)

(declare-fun mapRes!48544 () Bool)

(assert (=> mapIsEmpty!48544 mapRes!48544))

(declare-fun b!1223498 () Bool)

(declare-fun e!694912 () Bool)

(assert (=> b!1223498 (= e!694912 e!694923)))

(declare-fun res!813027 () Bool)

(assert (=> b!1223498 (=> (not res!813027) (not e!694923))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78952 (_ BitVec 32)) Bool)

(assert (=> b!1223498 (= res!813027 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!556875 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1223498 (= lt!556875 (array!78953 (store (arr!38099 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38636 _keys!1208)))))

(declare-fun b!1223499 () Bool)

(declare-fun e!694919 () Bool)

(declare-fun e!694911 () Bool)

(assert (=> b!1223499 (= e!694919 (and e!694911 mapRes!48544))))

(declare-fun condMapEmpty!48544 () Bool)

(declare-fun mapDefault!48544 () ValueCell!14839)

