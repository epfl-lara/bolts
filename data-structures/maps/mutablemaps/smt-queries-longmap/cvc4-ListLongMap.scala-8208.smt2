; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100154 () Bool)

(assert start!100154)

(declare-fun b!1193828 () Bool)

(declare-fun e!678537 () Bool)

(assert (=> b!1193828 (= e!678537 false)))

(declare-fun lt!542640 () Bool)

(declare-datatypes ((array!77216 0))(
  ( (array!77217 (arr!37254 (Array (_ BitVec 32) (_ BitVec 64))) (size!37791 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77216)

(declare-datatypes ((List!26407 0))(
  ( (Nil!26404) (Cons!26403 (h!27612 (_ BitVec 64)) (t!39085 List!26407)) )
))
(declare-fun arrayNoDuplicates!0 (array!77216 (_ BitVec 32) List!26407) Bool)

(assert (=> b!1193828 (= lt!542640 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26404))))

(declare-fun b!1193829 () Bool)

(declare-fun e!678539 () Bool)

(declare-fun tp_is_empty!30227 () Bool)

(assert (=> b!1193829 (= e!678539 tp_is_empty!30227)))

(declare-fun mapNonEmpty!47168 () Bool)

(declare-fun mapRes!47168 () Bool)

(declare-fun tp!89779 () Bool)

(assert (=> mapNonEmpty!47168 (= mapRes!47168 (and tp!89779 e!678539))))

(declare-datatypes ((V!45429 0))(
  ( (V!45430 (val!15170 Int)) )
))
(declare-datatypes ((ValueCell!14404 0))(
  ( (ValueCellFull!14404 (v!17809 V!45429)) (EmptyCell!14404) )
))
(declare-datatypes ((array!77218 0))(
  ( (array!77219 (arr!37255 (Array (_ BitVec 32) ValueCell!14404)) (size!37792 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77218)

(declare-fun mapRest!47168 () (Array (_ BitVec 32) ValueCell!14404))

(declare-fun mapKey!47168 () (_ BitVec 32))

(declare-fun mapValue!47168 () ValueCell!14404)

(assert (=> mapNonEmpty!47168 (= (arr!37255 _values!996) (store mapRest!47168 mapKey!47168 mapValue!47168))))

(declare-fun res!794363 () Bool)

(assert (=> start!100154 (=> (not res!794363) (not e!678537))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100154 (= res!794363 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37791 _keys!1208))))))

(assert (=> start!100154 e!678537))

(declare-fun array_inv!28300 (array!77216) Bool)

(assert (=> start!100154 (array_inv!28300 _keys!1208)))

(assert (=> start!100154 true))

(declare-fun e!678540 () Bool)

(declare-fun array_inv!28301 (array!77218) Bool)

(assert (=> start!100154 (and (array_inv!28301 _values!996) e!678540)))

(declare-fun mapIsEmpty!47168 () Bool)

(assert (=> mapIsEmpty!47168 mapRes!47168))

(declare-fun b!1193830 () Bool)

(declare-fun res!794362 () Bool)

(assert (=> b!1193830 (=> (not res!794362) (not e!678537))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77216 (_ BitVec 32)) Bool)

(assert (=> b!1193830 (= res!794362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1193831 () Bool)

(declare-fun e!678541 () Bool)

(assert (=> b!1193831 (= e!678540 (and e!678541 mapRes!47168))))

(declare-fun condMapEmpty!47168 () Bool)

(declare-fun mapDefault!47168 () ValueCell!14404)

