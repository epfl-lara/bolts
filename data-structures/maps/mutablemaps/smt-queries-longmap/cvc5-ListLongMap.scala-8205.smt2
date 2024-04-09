; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100132 () Bool)

(assert start!100132)

(declare-fun b_free!25669 () Bool)

(declare-fun b_next!25669 () Bool)

(assert (=> start!100132 (= b_free!25669 (not b_next!25669))))

(declare-fun tp!89730 () Bool)

(declare-fun b_and!42219 () Bool)

(assert (=> start!100132 (= tp!89730 b_and!42219)))

(declare-fun b!1193452 () Bool)

(declare-fun e!678329 () Bool)

(declare-fun tp_is_empty!30205 () Bool)

(assert (=> b!1193452 (= e!678329 tp_is_empty!30205)))

(declare-fun b!1193453 () Bool)

(declare-fun res!794122 () Bool)

(declare-fun e!678326 () Bool)

(assert (=> b!1193453 (=> (not res!794122) (not e!678326))))

(declare-datatypes ((array!77174 0))(
  ( (array!77175 (arr!37233 (Array (_ BitVec 32) (_ BitVec 64))) (size!37770 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77174)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77174 (_ BitVec 32)) Bool)

(assert (=> b!1193453 (= res!794122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1193454 () Bool)

(declare-fun e!678333 () Bool)

(declare-fun e!678331 () Bool)

(assert (=> b!1193454 (= e!678333 e!678331)))

(declare-fun res!794116 () Bool)

(assert (=> b!1193454 (=> res!794116 e!678331)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1193454 (= res!794116 (not (= from!1455 i!673)))))

(declare-datatypes ((V!45401 0))(
  ( (V!45402 (val!15159 Int)) )
))
(declare-fun zeroValue!944 () V!45401)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14393 0))(
  ( (ValueCellFull!14393 (v!17798 V!45401)) (EmptyCell!14393) )
))
(declare-datatypes ((array!77176 0))(
  ( (array!77177 (arr!37234 (Array (_ BitVec 32) ValueCell!14393)) (size!37771 (_ BitVec 32))) )
))
(declare-fun lt!542545 () array!77176)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19634 0))(
  ( (tuple2!19635 (_1!9827 (_ BitVec 64)) (_2!9827 V!45401)) )
))
(declare-datatypes ((List!26394 0))(
  ( (Nil!26391) (Cons!26390 (h!27599 tuple2!19634) (t!39062 List!26394)) )
))
(declare-datatypes ((ListLongMap!17615 0))(
  ( (ListLongMap!17616 (toList!8823 List!26394)) )
))
(declare-fun lt!542548 () ListLongMap!17615)

(declare-fun minValue!944 () V!45401)

(declare-fun lt!542547 () array!77174)

(declare-fun getCurrentListMapNoExtraKeys!5237 (array!77174 array!77176 (_ BitVec 32) (_ BitVec 32) V!45401 V!45401 (_ BitVec 32) Int) ListLongMap!17615)

(assert (=> b!1193454 (= lt!542548 (getCurrentListMapNoExtraKeys!5237 lt!542547 lt!542545 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!77176)

(declare-fun dynLambda!3175 (Int (_ BitVec 64)) V!45401)

(assert (=> b!1193454 (= lt!542545 (array!77177 (store (arr!37234 _values!996) i!673 (ValueCellFull!14393 (dynLambda!3175 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37771 _values!996)))))

(declare-fun lt!542546 () ListLongMap!17615)

(assert (=> b!1193454 (= lt!542546 (getCurrentListMapNoExtraKeys!5237 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!794117 () Bool)

(assert (=> start!100132 (=> (not res!794117) (not e!678326))))

(assert (=> start!100132 (= res!794117 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37770 _keys!1208))))))

(assert (=> start!100132 e!678326))

(assert (=> start!100132 tp_is_empty!30205))

(declare-fun array_inv!28284 (array!77174) Bool)

(assert (=> start!100132 (array_inv!28284 _keys!1208)))

(assert (=> start!100132 true))

(assert (=> start!100132 tp!89730))

(declare-fun e!678327 () Bool)

(declare-fun array_inv!28285 (array!77176) Bool)

(assert (=> start!100132 (and (array_inv!28285 _values!996) e!678327)))

(declare-fun b!1193455 () Bool)

(declare-fun mapRes!47135 () Bool)

(assert (=> b!1193455 (= e!678327 (and e!678329 mapRes!47135))))

(declare-fun condMapEmpty!47135 () Bool)

(declare-fun mapDefault!47135 () ValueCell!14393)

