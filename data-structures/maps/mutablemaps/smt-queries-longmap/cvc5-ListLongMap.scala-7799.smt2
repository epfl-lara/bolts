; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97574 () Bool)

(assert start!97574)

(declare-fun b!1113703 () Bool)

(declare-fun res!743421 () Bool)

(declare-fun e!634871 () Bool)

(assert (=> b!1113703 (=> (not res!743421) (not e!634871))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!72390 0))(
  ( (array!72391 (arr!34844 (Array (_ BitVec 32) (_ BitVec 64))) (size!35381 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72390)

(assert (=> b!1113703 (= res!743421 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35381 _keys!1208))))))

(declare-fun b!1113704 () Bool)

(declare-fun res!743415 () Bool)

(assert (=> b!1113704 (=> (not res!743415) (not e!634871))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42153 0))(
  ( (V!42154 (val!13941 Int)) )
))
(declare-datatypes ((ValueCell!13175 0))(
  ( (ValueCellFull!13175 (v!16575 V!42153)) (EmptyCell!13175) )
))
(declare-datatypes ((array!72392 0))(
  ( (array!72393 (arr!34845 (Array (_ BitVec 32) ValueCell!13175)) (size!35382 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72392)

(assert (=> b!1113704 (= res!743415 (and (= (size!35382 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35381 _keys!1208) (size!35382 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!43471 () Bool)

(declare-fun mapRes!43471 () Bool)

(assert (=> mapIsEmpty!43471 mapRes!43471))

(declare-fun b!1113705 () Bool)

(declare-fun e!634868 () Bool)

(assert (=> b!1113705 (= e!634871 e!634868)))

(declare-fun res!743419 () Bool)

(assert (=> b!1113705 (=> (not res!743419) (not e!634868))))

(declare-fun lt!496695 () array!72390)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72390 (_ BitVec 32)) Bool)

(assert (=> b!1113705 (= res!743419 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496695 mask!1564))))

(assert (=> b!1113705 (= lt!496695 (array!72391 (store (arr!34844 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35381 _keys!1208)))))

(declare-fun b!1113706 () Bool)

(declare-fun res!743417 () Bool)

(assert (=> b!1113706 (=> (not res!743417) (not e!634871))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1113706 (= res!743417 (validMask!0 mask!1564))))

(declare-fun res!743413 () Bool)

(assert (=> start!97574 (=> (not res!743413) (not e!634871))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97574 (= res!743413 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35381 _keys!1208))))))

(assert (=> start!97574 e!634871))

(declare-fun array_inv!26654 (array!72390) Bool)

(assert (=> start!97574 (array_inv!26654 _keys!1208)))

(assert (=> start!97574 true))

(declare-fun e!634869 () Bool)

(declare-fun array_inv!26655 (array!72392) Bool)

(assert (=> start!97574 (and (array_inv!26655 _values!996) e!634869)))

(declare-fun b!1113707 () Bool)

(declare-fun e!634866 () Bool)

(assert (=> b!1113707 (= e!634869 (and e!634866 mapRes!43471))))

(declare-fun condMapEmpty!43471 () Bool)

(declare-fun mapDefault!43471 () ValueCell!13175)

