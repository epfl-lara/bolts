; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97572 () Bool)

(assert start!97572)

(declare-fun b!1113664 () Bool)

(declare-fun e!634849 () Bool)

(declare-fun e!634852 () Bool)

(assert (=> b!1113664 (= e!634849 e!634852)))

(declare-fun res!743387 () Bool)

(assert (=> b!1113664 (=> (not res!743387) (not e!634852))))

(declare-datatypes ((array!72386 0))(
  ( (array!72387 (arr!34842 (Array (_ BitVec 32) (_ BitVec 64))) (size!35379 (_ BitVec 32))) )
))
(declare-fun lt!496689 () array!72386)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72386 (_ BitVec 32)) Bool)

(assert (=> b!1113664 (= res!743387 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496689 mask!1564))))

(declare-fun _keys!1208 () array!72386)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1113664 (= lt!496689 (array!72387 (store (arr!34842 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35379 _keys!1208)))))

(declare-fun b!1113665 () Bool)

(assert (=> b!1113665 (= e!634852 (not true))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72386 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1113665 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36457 0))(
  ( (Unit!36458) )
))
(declare-fun lt!496688 () Unit!36457)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72386 (_ BitVec 64) (_ BitVec 32)) Unit!36457)

(assert (=> b!1113665 (= lt!496688 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1113666 () Bool)

(declare-fun res!743382 () Bool)

(assert (=> b!1113666 (=> (not res!743382) (not e!634849))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1113666 (= res!743382 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!43468 () Bool)

(declare-fun mapRes!43468 () Bool)

(declare-fun tp!82713 () Bool)

(declare-fun e!634850 () Bool)

(assert (=> mapNonEmpty!43468 (= mapRes!43468 (and tp!82713 e!634850))))

(declare-fun mapKey!43468 () (_ BitVec 32))

(declare-datatypes ((V!42149 0))(
  ( (V!42150 (val!13940 Int)) )
))
(declare-datatypes ((ValueCell!13174 0))(
  ( (ValueCellFull!13174 (v!16574 V!42149)) (EmptyCell!13174) )
))
(declare-fun mapRest!43468 () (Array (_ BitVec 32) ValueCell!13174))

(declare-datatypes ((array!72388 0))(
  ( (array!72389 (arr!34843 (Array (_ BitVec 32) ValueCell!13174)) (size!35380 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72388)

(declare-fun mapValue!43468 () ValueCell!13174)

(assert (=> mapNonEmpty!43468 (= (arr!34843 _values!996) (store mapRest!43468 mapKey!43468 mapValue!43468))))

(declare-fun b!1113668 () Bool)

(declare-fun e!634853 () Bool)

(declare-fun e!634848 () Bool)

(assert (=> b!1113668 (= e!634853 (and e!634848 mapRes!43468))))

(declare-fun condMapEmpty!43468 () Bool)

(declare-fun mapDefault!43468 () ValueCell!13174)

