; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100572 () Bool)

(assert start!100572)

(declare-fun b_free!25859 () Bool)

(declare-fun b_next!25859 () Bool)

(assert (=> start!100572 (= b_free!25859 (not b_next!25859))))

(declare-fun tp!90567 () Bool)

(declare-fun b_and!42619 () Bool)

(assert (=> start!100572 (= tp!90567 b_and!42619)))

(declare-datatypes ((V!45877 0))(
  ( (V!45878 (val!15338 Int)) )
))
(declare-fun zeroValue!944 () V!45877)

(declare-fun bm!57504 () Bool)

(declare-datatypes ((Unit!39758 0))(
  ( (Unit!39759) )
))
(declare-fun call!57511 () Unit!39758)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun minValue!944 () V!45877)

(declare-fun c!117501 () Bool)

(declare-datatypes ((tuple2!19784 0))(
  ( (tuple2!19785 (_1!9902 (_ BitVec 64)) (_2!9902 V!45877)) )
))
(declare-datatypes ((List!26616 0))(
  ( (Nil!26613) (Cons!26612 (h!27821 tuple2!19784) (t!39462 List!26616)) )
))
(declare-datatypes ((ListLongMap!17765 0))(
  ( (ListLongMap!17766 (toList!8898 List!26616)) )
))
(declare-fun lt!544528 () ListLongMap!17765)

(declare-fun c!117500 () Bool)

(declare-fun addStillContains!999 (ListLongMap!17765 (_ BitVec 64) V!45877 (_ BitVec 64)) Unit!39758)

(assert (=> bm!57504 (= call!57511 (addStillContains!999 lt!544528 (ite (or c!117500 c!117501) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!117500 c!117501) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1201612 () Bool)

(declare-fun res!799955 () Bool)

(declare-fun e!682397 () Bool)

(assert (=> b!1201612 (=> (not res!799955) (not e!682397))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1201612 (= res!799955 (validMask!0 mask!1564))))

(declare-fun res!799946 () Bool)

(assert (=> start!100572 (=> (not res!799946) (not e!682397))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77876 0))(
  ( (array!77877 (arr!37579 (Array (_ BitVec 32) (_ BitVec 64))) (size!38116 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77876)

(assert (=> start!100572 (= res!799946 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38116 _keys!1208))))))

(assert (=> start!100572 e!682397))

(declare-fun tp_is_empty!30563 () Bool)

(assert (=> start!100572 tp_is_empty!30563))

(declare-fun array_inv!28528 (array!77876) Bool)

(assert (=> start!100572 (array_inv!28528 _keys!1208)))

(assert (=> start!100572 true))

(assert (=> start!100572 tp!90567))

(declare-datatypes ((ValueCell!14572 0))(
  ( (ValueCellFull!14572 (v!17977 V!45877)) (EmptyCell!14572) )
))
(declare-datatypes ((array!77878 0))(
  ( (array!77879 (arr!37580 (Array (_ BitVec 32) ValueCell!14572)) (size!38117 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77878)

(declare-fun e!682389 () Bool)

(declare-fun array_inv!28529 (array!77878) Bool)

(assert (=> start!100572 (and (array_inv!28529 _values!996) e!682389)))

(declare-fun b!1201613 () Bool)

(declare-fun e!682401 () Bool)

(declare-fun mapRes!47687 () Bool)

(assert (=> b!1201613 (= e!682389 (and e!682401 mapRes!47687))))

(declare-fun condMapEmpty!47687 () Bool)

(declare-fun mapDefault!47687 () ValueCell!14572)

