; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101296 () Bool)

(assert start!101296)

(declare-fun b_free!26183 () Bool)

(declare-fun b_next!26183 () Bool)

(assert (=> start!101296 (= b_free!26183 (not b_next!26183))))

(declare-fun tp!91571 () Bool)

(declare-fun b_and!43493 () Bool)

(assert (=> start!101296 (= tp!91571 b_and!43493)))

(declare-fun b!1216224 () Bool)

(declare-fun e!690551 () Bool)

(declare-fun tp_is_empty!30887 () Bool)

(assert (=> b!1216224 (= e!690551 tp_is_empty!30887)))

(declare-fun res!807694 () Bool)

(declare-fun e!690553 () Bool)

(assert (=> start!101296 (=> (not res!807694) (not e!690553))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!78522 0))(
  ( (array!78523 (arr!37892 (Array (_ BitVec 32) (_ BitVec 64))) (size!38429 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78522)

(assert (=> start!101296 (= res!807694 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38429 _keys!1208))))))

(assert (=> start!101296 e!690553))

(assert (=> start!101296 tp_is_empty!30887))

(declare-fun array_inv!28752 (array!78522) Bool)

(assert (=> start!101296 (array_inv!28752 _keys!1208)))

(assert (=> start!101296 true))

(assert (=> start!101296 tp!91571))

(declare-datatypes ((V!46309 0))(
  ( (V!46310 (val!15500 Int)) )
))
(declare-datatypes ((ValueCell!14734 0))(
  ( (ValueCellFull!14734 (v!18154 V!46309)) (EmptyCell!14734) )
))
(declare-datatypes ((array!78524 0))(
  ( (array!78525 (arr!37893 (Array (_ BitVec 32) ValueCell!14734)) (size!38430 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78524)

(declare-fun e!690555 () Bool)

(declare-fun array_inv!28753 (array!78524) Bool)

(assert (=> start!101296 (and (array_inv!28753 _values!996) e!690555)))

(declare-fun b!1216225 () Bool)

(declare-fun res!807690 () Bool)

(declare-fun e!690554 () Bool)

(assert (=> b!1216225 (=> (not res!807690) (not e!690554))))

(declare-fun lt!552791 () array!78522)

(declare-datatypes ((List!26886 0))(
  ( (Nil!26883) (Cons!26882 (h!28091 (_ BitVec 64)) (t!40056 List!26886)) )
))
(declare-fun arrayNoDuplicates!0 (array!78522 (_ BitVec 32) List!26886) Bool)

(assert (=> b!1216225 (= res!807690 (arrayNoDuplicates!0 lt!552791 #b00000000000000000000000000000000 Nil!26883))))

(declare-fun b!1216226 () Bool)

(declare-fun mapRes!48205 () Bool)

(assert (=> b!1216226 (= e!690555 (and e!690551 mapRes!48205))))

(declare-fun condMapEmpty!48205 () Bool)

(declare-fun mapDefault!48205 () ValueCell!14734)

