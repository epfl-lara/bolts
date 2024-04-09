; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97722 () Bool)

(assert start!97722)

(declare-fun b!1116589 () Bool)

(declare-fun res!745641 () Bool)

(declare-fun e!636199 () Bool)

(assert (=> b!1116589 (=> (not res!745641) (not e!636199))))

(declare-datatypes ((array!72672 0))(
  ( (array!72673 (arr!34985 (Array (_ BitVec 32) (_ BitVec 64))) (size!35522 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72672)

(declare-datatypes ((List!24478 0))(
  ( (Nil!24475) (Cons!24474 (h!25683 (_ BitVec 64)) (t!34966 List!24478)) )
))
(declare-fun arrayNoDuplicates!0 (array!72672 (_ BitVec 32) List!24478) Bool)

(assert (=> b!1116589 (= res!745641 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24475))))

(declare-fun b!1116590 () Bool)

(declare-fun res!745640 () Bool)

(assert (=> b!1116590 (=> (not res!745640) (not e!636199))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1116590 (= res!745640 (= (select (arr!34985 _keys!1208) i!673) k!934))))

(declare-fun b!1116591 () Bool)

(declare-fun e!636203 () Bool)

(assert (=> b!1116591 (= e!636203 (not true))))

(declare-fun arrayContainsKey!0 (array!72672 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1116591 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36551 0))(
  ( (Unit!36552) )
))
(declare-fun lt!497139 () Unit!36551)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72672 (_ BitVec 64) (_ BitVec 32)) Unit!36551)

(assert (=> b!1116591 (= lt!497139 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1116592 () Bool)

(declare-fun e!636201 () Bool)

(declare-fun tp_is_empty!27917 () Bool)

(assert (=> b!1116592 (= e!636201 tp_is_empty!27917)))

(declare-fun res!745636 () Bool)

(assert (=> start!97722 (=> (not res!745636) (not e!636199))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97722 (= res!745636 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35522 _keys!1208))))))

(assert (=> start!97722 e!636199))

(declare-fun array_inv!26748 (array!72672) Bool)

(assert (=> start!97722 (array_inv!26748 _keys!1208)))

(assert (=> start!97722 true))

(declare-datatypes ((V!42349 0))(
  ( (V!42350 (val!14015 Int)) )
))
(declare-datatypes ((ValueCell!13249 0))(
  ( (ValueCellFull!13249 (v!16649 V!42349)) (EmptyCell!13249) )
))
(declare-datatypes ((array!72674 0))(
  ( (array!72675 (arr!34986 (Array (_ BitVec 32) ValueCell!13249)) (size!35523 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72674)

(declare-fun e!636198 () Bool)

(declare-fun array_inv!26749 (array!72674) Bool)

(assert (=> start!97722 (and (array_inv!26749 _values!996) e!636198)))

(declare-fun b!1116593 () Bool)

(assert (=> b!1116593 (= e!636199 e!636203)))

(declare-fun res!745637 () Bool)

(assert (=> b!1116593 (=> (not res!745637) (not e!636203))))

(declare-fun lt!497138 () array!72672)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72672 (_ BitVec 32)) Bool)

(assert (=> b!1116593 (= res!745637 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497138 mask!1564))))

(assert (=> b!1116593 (= lt!497138 (array!72673 (store (arr!34985 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35522 _keys!1208)))))

(declare-fun b!1116594 () Bool)

(declare-fun res!745639 () Bool)

(assert (=> b!1116594 (=> (not res!745639) (not e!636199))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1116594 (= res!745639 (and (= (size!35523 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35522 _keys!1208) (size!35523 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1116595 () Bool)

(declare-fun e!636202 () Bool)

(assert (=> b!1116595 (= e!636202 tp_is_empty!27917)))

(declare-fun b!1116596 () Bool)

(declare-fun res!745635 () Bool)

(assert (=> b!1116596 (=> (not res!745635) (not e!636199))))

(assert (=> b!1116596 (= res!745635 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1116597 () Bool)

(declare-fun res!745638 () Bool)

(assert (=> b!1116597 (=> (not res!745638) (not e!636199))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1116597 (= res!745638 (validMask!0 mask!1564))))

(declare-fun b!1116598 () Bool)

(declare-fun mapRes!43693 () Bool)

(assert (=> b!1116598 (= e!636198 (and e!636202 mapRes!43693))))

(declare-fun condMapEmpty!43693 () Bool)

(declare-fun mapDefault!43693 () ValueCell!13249)

