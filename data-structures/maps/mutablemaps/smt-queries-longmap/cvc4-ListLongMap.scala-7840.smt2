; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97824 () Bool)

(assert start!97824)

(declare-fun b_free!23489 () Bool)

(declare-fun b_next!23489 () Bool)

(assert (=> start!97824 (= b_free!23489 (not b_next!23489))))

(declare-fun tp!83172 () Bool)

(declare-fun b_and!37785 () Bool)

(assert (=> start!97824 (= tp!83172 b_and!37785)))

(declare-fun b!1118658 () Bool)

(declare-fun e!637201 () Bool)

(declare-fun e!637199 () Bool)

(assert (=> b!1118658 (= e!637201 e!637199)))

(declare-fun res!747242 () Bool)

(assert (=> b!1118658 (=> (not res!747242) (not e!637199))))

(declare-datatypes ((array!72866 0))(
  ( (array!72867 (arr!35082 (Array (_ BitVec 32) (_ BitVec 64))) (size!35619 (_ BitVec 32))) )
))
(declare-fun lt!497525 () array!72866)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72866 (_ BitVec 32)) Bool)

(assert (=> b!1118658 (= res!747242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497525 mask!1564))))

(declare-fun _keys!1208 () array!72866)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1118658 (= lt!497525 (array!72867 (store (arr!35082 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35619 _keys!1208)))))

(declare-fun b!1118659 () Bool)

(declare-fun res!747250 () Bool)

(assert (=> b!1118659 (=> (not res!747250) (not e!637201))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1118659 (= res!747250 (= (select (arr!35082 _keys!1208) i!673) k!934))))

(declare-fun b!1118660 () Bool)

(declare-fun e!637202 () Bool)

(declare-fun e!637198 () Bool)

(declare-fun mapRes!43846 () Bool)

(assert (=> b!1118660 (= e!637202 (and e!637198 mapRes!43846))))

(declare-fun condMapEmpty!43846 () Bool)

(declare-datatypes ((V!42485 0))(
  ( (V!42486 (val!14066 Int)) )
))
(declare-datatypes ((ValueCell!13300 0))(
  ( (ValueCellFull!13300 (v!16700 V!42485)) (EmptyCell!13300) )
))
(declare-datatypes ((array!72868 0))(
  ( (array!72869 (arr!35083 (Array (_ BitVec 32) ValueCell!13300)) (size!35620 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72868)

(declare-fun mapDefault!43846 () ValueCell!13300)

