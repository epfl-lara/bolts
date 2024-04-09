; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101464 () Bool)

(assert start!101464)

(declare-fun b_free!26273 () Bool)

(declare-fun b_next!26273 () Bool)

(assert (=> start!101464 (= b_free!26273 (not b_next!26273))))

(declare-fun tp!91850 () Bool)

(declare-fun b_and!43727 () Bool)

(assert (=> start!101464 (= tp!91850 b_and!43727)))

(declare-fun res!809755 () Bool)

(declare-fun e!692174 () Bool)

(assert (=> start!101464 (=> (not res!809755) (not e!692174))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!78704 0))(
  ( (array!78705 (arr!37980 (Array (_ BitVec 32) (_ BitVec 64))) (size!38517 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78704)

(assert (=> start!101464 (= res!809755 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38517 _keys!1208))))))

(assert (=> start!101464 e!692174))

(declare-fun tp_is_empty!30977 () Bool)

(assert (=> start!101464 tp_is_empty!30977))

(declare-fun array_inv!28818 (array!78704) Bool)

(assert (=> start!101464 (array_inv!28818 _keys!1208)))

(assert (=> start!101464 true))

(assert (=> start!101464 tp!91850))

(declare-datatypes ((V!46429 0))(
  ( (V!46430 (val!15545 Int)) )
))
(declare-datatypes ((ValueCell!14779 0))(
  ( (ValueCellFull!14779 (v!18202 V!46429)) (EmptyCell!14779) )
))
(declare-datatypes ((array!78706 0))(
  ( (array!78707 (arr!37981 (Array (_ BitVec 32) ValueCell!14779)) (size!38518 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78706)

(declare-fun e!692175 () Bool)

(declare-fun array_inv!28819 (array!78706) Bool)

(assert (=> start!101464 (and (array_inv!28819 _values!996) e!692175)))

(declare-fun b!1219028 () Bool)

(declare-fun e!692181 () Bool)

(declare-fun e!692180 () Bool)

(assert (=> b!1219028 (= e!692181 e!692180)))

(declare-fun res!809761 () Bool)

(assert (=> b!1219028 (=> res!809761 e!692180)))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1219028 (= res!809761 (not (= (select (arr!37980 _keys!1208) from!1455) k!934)))))

(declare-fun e!692182 () Bool)

(assert (=> b!1219028 e!692182))

(declare-fun res!809750 () Bool)

(assert (=> b!1219028 (=> (not res!809750) (not e!692182))))

(declare-datatypes ((tuple2!20134 0))(
  ( (tuple2!20135 (_1!10077 (_ BitVec 64)) (_2!10077 V!46429)) )
))
(declare-datatypes ((List!26953 0))(
  ( (Nil!26950) (Cons!26949 (h!28158 tuple2!20134) (t!40213 List!26953)) )
))
(declare-datatypes ((ListLongMap!18115 0))(
  ( (ListLongMap!18116 (toList!9073 List!26953)) )
))
(declare-fun lt!554195 () ListLongMap!18115)

(declare-fun lt!554189 () ListLongMap!18115)

(declare-fun lt!554193 () V!46429)

(declare-fun +!4052 (ListLongMap!18115 tuple2!20134) ListLongMap!18115)

(declare-fun get!19406 (ValueCell!14779 V!46429) V!46429)

(assert (=> b!1219028 (= res!809750 (= lt!554195 (+!4052 lt!554189 (tuple2!20135 (select (arr!37980 _keys!1208) from!1455) (get!19406 (select (arr!37981 _values!996) from!1455) lt!554193)))))))

(declare-fun b!1219029 () Bool)

(declare-fun e!692172 () Bool)

(assert (=> b!1219029 (= e!692174 e!692172)))

(declare-fun res!809751 () Bool)

(assert (=> b!1219029 (=> (not res!809751) (not e!692172))))

(declare-fun lt!554190 () array!78704)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78704 (_ BitVec 32)) Bool)

(assert (=> b!1219029 (= res!809751 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!554190 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1219029 (= lt!554190 (array!78705 (store (arr!37980 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38517 _keys!1208)))))

(declare-fun e!692176 () Bool)

(declare-fun b!1219030 () Bool)

(declare-fun arrayContainsKey!0 (array!78704 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1219030 (= e!692176 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1219031 () Bool)

(declare-fun res!809762 () Bool)

(assert (=> b!1219031 (=> (not res!809762) (not e!692174))))

(assert (=> b!1219031 (= res!809762 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38517 _keys!1208))))))

(declare-fun mapIsEmpty!48349 () Bool)

(declare-fun mapRes!48349 () Bool)

(assert (=> mapIsEmpty!48349 mapRes!48349))

(declare-fun b!1219032 () Bool)

(declare-fun res!809760 () Bool)

(assert (=> b!1219032 (=> (not res!809760) (not e!692174))))

(assert (=> b!1219032 (= res!809760 (= (select (arr!37980 _keys!1208) i!673) k!934))))

(declare-fun b!1219033 () Bool)

(declare-fun res!809747 () Bool)

(assert (=> b!1219033 (=> (not res!809747) (not e!692172))))

(declare-datatypes ((List!26954 0))(
  ( (Nil!26951) (Cons!26950 (h!28159 (_ BitVec 64)) (t!40214 List!26954)) )
))
(declare-fun arrayNoDuplicates!0 (array!78704 (_ BitVec 32) List!26954) Bool)

(assert (=> b!1219033 (= res!809747 (arrayNoDuplicates!0 lt!554190 #b00000000000000000000000000000000 Nil!26951))))

(declare-fun b!1219034 () Bool)

(declare-fun res!809754 () Bool)

(assert (=> b!1219034 (=> (not res!809754) (not e!692174))))

(assert (=> b!1219034 (= res!809754 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1219035 () Bool)

(declare-fun res!809752 () Bool)

(assert (=> b!1219035 (=> (not res!809752) (not e!692174))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1219035 (= res!809752 (validMask!0 mask!1564))))

(declare-fun b!1219036 () Bool)

(declare-fun e!692179 () Bool)

(assert (=> b!1219036 (= e!692175 (and e!692179 mapRes!48349))))

(declare-fun condMapEmpty!48349 () Bool)

(declare-fun mapDefault!48349 () ValueCell!14779)

