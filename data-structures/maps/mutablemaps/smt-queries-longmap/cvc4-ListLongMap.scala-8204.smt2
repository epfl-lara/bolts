; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100130 () Bool)

(assert start!100130)

(declare-fun res!794079 () Bool)

(declare-fun e!678302 () Bool)

(assert (=> start!100130 (=> (not res!794079) (not e!678302))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77170 0))(
  ( (array!77171 (arr!37231 (Array (_ BitVec 32) (_ BitVec 64))) (size!37768 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77170)

(assert (=> start!100130 (= res!794079 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37768 _keys!1208))))))

(assert (=> start!100130 e!678302))

(declare-fun array_inv!28282 (array!77170) Bool)

(assert (=> start!100130 (array_inv!28282 _keys!1208)))

(assert (=> start!100130 true))

(declare-datatypes ((V!45397 0))(
  ( (V!45398 (val!15158 Int)) )
))
(declare-datatypes ((ValueCell!14392 0))(
  ( (ValueCellFull!14392 (v!17797 V!45397)) (EmptyCell!14392) )
))
(declare-datatypes ((array!77172 0))(
  ( (array!77173 (arr!37232 (Array (_ BitVec 32) ValueCell!14392)) (size!37769 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77172)

(declare-fun e!678306 () Bool)

(declare-fun array_inv!28283 (array!77172) Bool)

(assert (=> start!100130 (and (array_inv!28283 _values!996) e!678306)))

(declare-fun b!1193405 () Bool)

(declare-fun e!678303 () Bool)

(declare-fun tp_is_empty!30203 () Bool)

(assert (=> b!1193405 (= e!678303 tp_is_empty!30203)))

(declare-fun b!1193406 () Bool)

(declare-fun res!794080 () Bool)

(assert (=> b!1193406 (=> (not res!794080) (not e!678302))))

(declare-datatypes ((List!26393 0))(
  ( (Nil!26390) (Cons!26389 (h!27598 (_ BitVec 64)) (t!39059 List!26393)) )
))
(declare-fun arrayNoDuplicates!0 (array!77170 (_ BitVec 32) List!26393) Bool)

(assert (=> b!1193406 (= res!794080 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26390))))

(declare-fun b!1193407 () Bool)

(declare-fun e!678304 () Bool)

(assert (=> b!1193407 (= e!678304 tp_is_empty!30203)))

(declare-fun b!1193408 () Bool)

(declare-fun e!678307 () Bool)

(assert (=> b!1193408 (= e!678302 e!678307)))

(declare-fun res!794082 () Bool)

(assert (=> b!1193408 (=> (not res!794082) (not e!678307))))

(declare-fun lt!542531 () array!77170)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77170 (_ BitVec 32)) Bool)

(assert (=> b!1193408 (= res!794082 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542531 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1193408 (= lt!542531 (array!77171 (store (arr!37231 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37768 _keys!1208)))))

(declare-fun b!1193409 () Bool)

(declare-fun res!794078 () Bool)

(assert (=> b!1193409 (=> (not res!794078) (not e!678307))))

(assert (=> b!1193409 (= res!794078 (arrayNoDuplicates!0 lt!542531 #b00000000000000000000000000000000 Nil!26390))))

(declare-fun b!1193410 () Bool)

(declare-fun res!794085 () Bool)

(assert (=> b!1193410 (=> (not res!794085) (not e!678302))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1193410 (= res!794085 (= (select (arr!37231 _keys!1208) i!673) k!934))))

(declare-fun b!1193411 () Bool)

(declare-fun res!794083 () Bool)

(assert (=> b!1193411 (=> (not res!794083) (not e!678302))))

(assert (=> b!1193411 (= res!794083 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1193412 () Bool)

(declare-fun mapRes!47132 () Bool)

(assert (=> b!1193412 (= e!678306 (and e!678303 mapRes!47132))))

(declare-fun condMapEmpty!47132 () Bool)

(declare-fun mapDefault!47132 () ValueCell!14392)

