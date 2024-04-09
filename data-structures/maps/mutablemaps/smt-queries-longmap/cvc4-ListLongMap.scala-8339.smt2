; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101558 () Bool)

(assert start!101558)

(declare-fun b_free!26309 () Bool)

(declare-fun b_next!26309 () Bool)

(assert (=> start!101558 (= b_free!26309 (not b_next!26309))))

(declare-fun tp!91964 () Bool)

(declare-fun b_and!43835 () Bool)

(assert (=> start!101558 (= tp!91964 b_and!43835)))

(declare-fun b!1220389 () Bool)

(declare-fun e!693026 () Bool)

(declare-fun e!693027 () Bool)

(assert (=> b!1220389 (= e!693026 e!693027)))

(declare-fun res!810754 () Bool)

(assert (=> b!1220389 (=> res!810754 e!693027)))

(declare-datatypes ((array!78780 0))(
  ( (array!78781 (arr!38016 (Array (_ BitVec 32) (_ BitVec 64))) (size!38553 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78780)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1220389 (= res!810754 (not (= (select (arr!38016 _keys!1208) from!1455) k!934)))))

(declare-fun e!693025 () Bool)

(assert (=> b!1220389 e!693025))

(declare-fun res!810748 () Bool)

(assert (=> b!1220389 (=> (not res!810748) (not e!693025))))

(declare-datatypes ((V!46477 0))(
  ( (V!46478 (val!15563 Int)) )
))
(declare-datatypes ((tuple2!20170 0))(
  ( (tuple2!20171 (_1!10095 (_ BitVec 64)) (_2!10095 V!46477)) )
))
(declare-datatypes ((List!26988 0))(
  ( (Nil!26985) (Cons!26984 (h!28193 tuple2!20170) (t!40284 List!26988)) )
))
(declare-datatypes ((ListLongMap!18151 0))(
  ( (ListLongMap!18152 (toList!9091 List!26988)) )
))
(declare-fun lt!554955 () ListLongMap!18151)

(declare-fun lt!554959 () ListLongMap!18151)

(declare-datatypes ((ValueCell!14797 0))(
  ( (ValueCellFull!14797 (v!18222 V!46477)) (EmptyCell!14797) )
))
(declare-datatypes ((array!78782 0))(
  ( (array!78783 (arr!38017 (Array (_ BitVec 32) ValueCell!14797)) (size!38554 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78782)

(declare-fun lt!554965 () V!46477)

(declare-fun +!4066 (ListLongMap!18151 tuple2!20170) ListLongMap!18151)

(declare-fun get!19436 (ValueCell!14797 V!46477) V!46477)

(assert (=> b!1220389 (= res!810748 (= lt!554959 (+!4066 lt!554955 (tuple2!20171 (select (arr!38016 _keys!1208) from!1455) (get!19436 (select (arr!38017 _values!996) from!1455) lt!554965)))))))

(declare-fun b!1220390 () Bool)

(declare-fun e!693020 () Bool)

(declare-fun e!693022 () Bool)

(declare-fun mapRes!48409 () Bool)

(assert (=> b!1220390 (= e!693020 (and e!693022 mapRes!48409))))

(declare-fun condMapEmpty!48409 () Bool)

(declare-fun mapDefault!48409 () ValueCell!14797)

